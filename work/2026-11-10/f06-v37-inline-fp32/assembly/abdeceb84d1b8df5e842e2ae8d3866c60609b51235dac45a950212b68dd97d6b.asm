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
0000b8  1f8f2e02  addli r30, sp, 272
0000bc  9f100000  addli r1, zero, 1
0000c0  80330002  core_id r7
0000c4  630c6f00  loadli.w r24,  48(r30)
0000c8  7dc00000  xsignal_mode_cfg r1
0000cc  b7900300  beq r7, zero, 36
0000d0  2bf1ffff  lui r2, 1048575
0000d4  7d900000  xwait r1, 0
0000d8  7d900000  xwait r1, 0
0000dc  7d100000  xwait zero, 0
0000e0  9b10f1ff  ori r1, r2, 4095
0000e4  80a10004  csr_set csr3, r1
0000e8  00d00100  sync_group
0000ec  5b260000  j 304
0000f0  1f220000  addli r4, zero, 2
0000f4  fdd00000  uni_sram_cfg r1, r1
0000f8  9f420000  addli r5, zero, 4
0000fc  6b510f02  load.d r[3:4], 32(r30)
000100  1f030020  addli r6, zero, 4096
000104  1d000200  lock zero, r4
000108  8d000020  ew_cfg r1, zero, zero, 16
00010c  1d100200  unlock r4
000110  1d800200  lock zero, r5
000114  15000000  dma_cfg zero, zero, zero, 0
000118  15800104  dma_cfg zero, r3, zero, 2
00011c  15006106  dma_cfg zero, r2, r6, 3
000120  1f014000  addli r2, zero, 32
000124  9f010008  addli r3, zero, 1024
000128  15001008  dma_cfg zero, zero, r1, 4
00012c  35000000  dma_run zero
000130  1d900200  unlock r5
000134  7d800000  xsignal r1, 0
000138  7d900000  xwait r1, 0
00013c  1d000000  lock zero, zero
000140  01020000  ds_cfg r4, zero, 0
000144  01000002  ds_cfg zero, zero, 1
000148  01000016  ds_cfg zero, zero, 11
00014c  0101001a  ds_cfg r2, zero, 13
000150  1f610000  addli r2, zero, 6
000154  8101001c  ds_cfg r3, zero, 14
000158  21133008  shuffle_batch r6, zero, r3, 4
00015c  1d100000  unlock zero
000160  7d800000  xsignal r1, 0
000164  7d900000  xwait r1, 0
000168  1d000200  lock zero, r4
00016c  ab100100  lui r1, 17
000170  0d200300  ewtable_cfg r6, 0
000174  0da00002  ewtable_cfg r1, 1
000178  abf0ffff  lui r1, 1048575
00017c  1d100200  unlock r4
000180  7d000000  xsignal zero, 0
000184  7d100000  xwait zero, 0
000188  9b90f0ff  ori r1, r1, 4095
00018c  80a10004  csr_set csr3, r1
000190  9f300000  addli r1, zero, 3
000194  00d00100  sync_group
000198  7d800000  xsignal r1, 0
00019c  9f001000  addli r1, zero, 8
0001a0  7d800200  xsignal r5, 0
0001a4  7d800000  xsignal r1, 0
0001a8  7d000100  xsignal r2, 0
0001ac  9f401000  addli r1, zero, 12
0001b0  1f211000  addli r2, zero, 10
0001b4  7d800000  xsignal r1, 0
0001b8  7d000100  xsignal r2, 0
0001bc  9f601000  addli r1, zero, 14
0001c0  1f414000  addli r2, zero, 36
0001c4  7d800000  xsignal r1, 0
0001c8  7d000100  xsignal r2, 0
0001cc  9f002000  addli r1, zero, 16
0001d0  1f212000  addli r2, zero, 18
0001d4  7d800000  xsignal r1, 0
0001d8  7d000100  xsignal r2, 0
0001dc  9f502000  addli r1, zero, 21
0001e0  1f113000  addli r2, zero, 25
0001e4  7d800000  xsignal r1, 0
0001e8  7d000100  xsignal r2, 0
0001ec  9f203000  addli r1, zero, 26
0001f0  1f413000  addli r2, zero, 28
0001f4  7d800000  xsignal r1, 0
0001f8  7d000100  xsignal r2, 0
0001fc  9f603000  addli r1, zero, 30
000200  1f714000  addli r2, zero, 39
000204  7d800000  xsignal r1, 0
000208  7d000100  xsignal r2, 0
00020c  9f205000  addli r1, zero, 42
000210  1f415000  addli r2, zero, 44
000214  7d800000  xsignal r1, 0
000218  7d000100  xsignal r2, 0
00021c  e3005f00  loadli.w r1,  40(r30)
000220  63415f00  loadli.w r2,  44(r30)
000224  00d20002  load_param_i r4, 1
000228  e3016f00  loadli.w r3,  48(r30)
00022c  8b101120  mul.s r1, r2, r1
000230  1f010200  addli r2, r4, 0
000234  0b913050  fmac.s r2, r1, r3
000238  8b913020  mul.s r3, r1, r3
00023c  1f71f1ff  addli r2, r2, -1
000240  0b114130  div.s r2, r2, r4
000244  00520002  load_param_i r4, 0
000248  8b104120  mul.s r1, r2, r4
00024c  0b114150  fmac.s r2, r2, r4
000250  0b113140  min.s r2, r2, r3
000254  cb0c1118  ble.s r2, r1, 13088
000258  33940028  sext_int2long r[9:10], r1
00025c  ab000100  lui r1, 16
000260  33110128  sext_int2long r[3:4], r2
000264  1f727000  addli r4, zero, 63
000268  9f670000  addli r15, zero, 6
00026c  2bc50000  lui r10, 12
000270  9b900010  ori r1, r1, 256
000274  733c2ff0  store.d r[3:4], -232(r30)
000278  2b01353f  lui r2, 258896
00027c  67411ffe  storeli.w r1, -236(r30)
000280  ab400100  lui r1, 20
000284  9b900010  ori r1, r1, 256
000288  e70e1ffe  storeli.w r1, -24(r30)
00028c  9b10314f  ori r1, r2, 1267
000290  2bb1a73e  lui r2, 256635
000294  e7401ffe  storeli.w r1, -244(r30)
000298  ab800100  lui r1, 24
00029c  9b900010  ori r1, r1, 256
0002a0  e7451ffe  storeli.w r1, -164(r30)
0002a4  9b1051a0  ori r1, r2, 2565
0002a8  2b01babf  lui r2, 785312
0002ac  e7001ffe  storeli.w r1, -248(r30)
0002b0  abc00100  lui r1, 28
0002b4  9b900010  ori r1, r1, 256
0002b8  e7051ffe  storeli.w r1, -168(r30)
0002bc  9b10310e  ori r1, r2, 227
0002c0  2bf1b53f  lui r2, 260959
0002c4  67401ffe  storeli.w r1, -252(r30)
0002c8  abd0873f  lui r1, 260221
0002cc  9b9020c2  ori r1, r1, 3106
0002d0  67001ffe  storeli.w r1, -256(r30)
0002d4  9b10310e  ori r1, r2, 227
0002d8  2b71823e  lui r2, 256039
0002dc  e74f1ffc  storeli.w r1, -260(r30)
0002e0  aba091be  lui r1, 780570
0002e4  9b90e098  ori r1, r1, 2446
0002e8  e70f1ffc  storeli.w r1, -264(r30)
0002ec  9b106190  ori r1, r2, 2310
0002f0  2b810800  lui r2, 136
0002f4  674f1ffc  storeli.w r1, -268(r30)
0002f8  ab800200  lui r1, 40
0002fc  9b900010  ori r1, r1, 256
000300  67011ffe  storeli.w r1, -240(r30)
000304  9b1081b4  ori r1, r2, 2888
000308  2b010300  lui r2, 48
00030c  670f1ffc  storeli.w r1, -272(r30)
000310  abc00200  lui r1, 44
000314  9b900010  ori r1, r1, 256
000318  67451ffe  storeli.w r1, -172(r30)
00031c  9b100110  ori r1, r2, 256
000320  2bf1ff7f  lui r2, 524287
000324  670f1ffe  storeli.w r1, -16(r30)
000328  ab400300  lui r1, 52
00032c  9b1cf1ff  ori r25, r2, 4095
000330  2b01807f  lui r2, 522240
000334  9b900010  ori r1, r1, 256
000338  674e1ffe  storeli.w r1, -28(r30)
00033c  5b080000  j 64
000340  9f202000  addli r1, zero, 18
000344  7d800000  xsignal r1, 0
000348  9f304000  addli r1, zero, 35
00034c  7d800000  xsignal r1, 0
000350  9f205000  addli r1, zero, 42
000354  7d800000  xsignal r1, 0
000358  9f405000  addli r1, zero, 44
00035c  7d800000  xsignal r1, 0
000360  6b540ff3  load.d r[9:10], -208(r30)
000364  eb518ff1  load.d r[4:5], -232(r30)
000368  27140400  addli.d r[9:10], r[9:10], 1
00036c  2bc50000  lui r10, 12
000370  93303404  setlt.sl r1, r[9:10], r[4:5]
000374  1f727000  addli r4, zero, 63
000378  b7f70018  beq r1, zero, 12796
00037c  9b110510  ori r3, r10, 256
000380  8b108431  div.s r1, r8, r24
000384  73388ff2  store.d r[9:10], -208(r30)
000388  33040228  zext_int2long r[9:10], r4
00038c  e74f3ffe  storeli.w r3, -4(r30)
000390  9b11c510  ori r3, r10, 268
000394  73348ff4  store.d r[9:10], -184(r30)
000398  e74e3ffe  storeli.w r3, -20(r30)
00039c  e3415f00  loadli.w r3,  44(r30)
0003a0  0b933030  div.s r6, r1, r3
0003a4  8b903038  mod.s r1, r1, r3
0003a8  9b118510  ori r3, r10, 264
0003ac  e70f3ffe  storeli.w r3, -8(r30)
0003b0  9b114510  ori r3, r10, 260
0003b4  1f058000  addli r10, zero, 64
0003b8  b3050528  zext_int2long r[12:13], r10
0003bc  674f3ffe  storeli.w r3, -12(r30)
0003c0  33140328  sext_int2long r[9:10], r6
0003c4  73348ff2  store.d r[9:10], -216(r30)
0003c8  33940028  sext_int2long r[9:10], r1
0003cc  9f500000  addli r1, zero, 5
0003d0  bbc4130c  bneq r7, r1, 6448
0003d4  9f310000  addli r3, zero, 3
0003d8  1f430000  addli r6, zero, 4
0003dc  1734f402  sll.d r[9:10], r[9:10], r15
0003e0  9f000000  addli r1, zero, 0
0003e4  7d900100  xwait r3, 0
0003e8  9f210000  addli r3, zero, 2
0003ec  1d800100  lock zero, r3
0003f0  0d000002  ew_cfg zero, zero, zero, 1
0003f4  0d100000  ewcoeff_cfg zero, zero, zero, 0
0003f8  0d000204  ew_cfg zero, r4, zero, 2
0003fc  0d050006  ew_cfg r10, zero, zero, 3
000400  4d300000  ssaux zero, 0
000404  1d900100  unlock r3
000408  7d800100  xsignal r3, 0
00040c  7d100300  xwait r6, 0
000410  1d800100  lock zero, r3
000414  2b03803f  lui r6, 260096
000418  0d000002  ew_cfg zero, zero, zero, 1
00041c  0d130000  ewcoeff_cfg r6, zero, zero, 0
000420  0d000204  ew_cfg zero, r4, zero, 2
000424  0d050006  ew_cfg r10, zero, zero, 3
000428  2b450000  lui r10, 4
00042c  4d350000  ssaux r10, 0
000430  1d900100  unlock r3
000434  73308ff2  store.d r[9:10], -224(r30)
000438  1f541000  addli r8, zero, 13
00043c  7d100400  xwait r8, 0
000440  1f741000  addli r8, zero, 15
000444  7d100400  xwait r8, 0
000448  1d800100  lock zero, r3
00044c  ab410000  lui r3, 4
000450  0d000002  ew_cfg zero, zero, zero, 1
000454  0d130300  ewcoeff_cfg r6, r6, zero, 0
000458  0d000204  ew_cfg zero, r4, zero, 2
00045c  1f120000  addli r4, zero, 1
000460  0d020006  ew_cfg r4, zero, zero, 3
000464  2bc20000  lui r4, 12
000468  e3442ffe  loadli.w r9,  -236(r30)
00046c  0b939010  add.s r6, r1, r9
000470  9f800002  addli r1, r1, 256
000474  2d034300  dsmadd r6, r6, r4, 0
000478  bbdf30fe  bneq r1, r3, -12
00047c  1f220000  addli r4, zero, 2
000480  9f601000  addli r1, zero, 14
000484  674c0ffe  storeli.w zero, -60(r30)
000488  e70c0ffe  storeli.w zero, -56(r30)
00048c  670c0ffe  storeli.w zero, -64(r30)
000490  e74c0ffe  storeli.w zero, -52(r30)
000494  2b07003f  lui r14, 258048
000498  1f78f00f  addli r16, zero, 2047
00049c  1f233000  addli r6, zero, 26
0004a0  2b04803f  lui r8, 260096
0004a4  ab080200  lui r17, 32
0004a8  9f160000  addli r13, zero, 1
0004ac  1f793000  addli r18, zero, 31
0004b0  ab590000  lui r19, 5
0004b4  9f0a0000  addli r21, zero, 0
0004b8  1f0a0000  addli r20, zero, 0
0004bc  1d100200  unlock r4
0004c0  7d800000  xsignal r1, 0
0004c4  9f202000  addli r1, zero, 18
0004c8  7d900000  xwait r1, 0
0004cc  1d000200  lock zero, r4
0004d0  0d000002  ew_cfg zero, zero, zero, 1
0004d4  0d170000  ewcoeff_cfg r14, zero, zero, 0
0004d8  0d000804  ew_cfg zero, r16, zero, 2
0004dc  0d020006  ew_cfg r4, zero, zero, 3
0004e0  0d020226  ew_cfg r4, r4, zero, 19
0004e4  e300dfff  loadli.w r1,  -24(r30)
0004e8  cdd09400  hp_ssmul r1, r9, r9, 0
0004ec  9f102000  addli r1, zero, 17
0004f0  0d000026  ew_cfg zero, zero, zero, 19
0004f4  1d100200  unlock r4
0004f8  7d800000  xsignal r1, 0
0004fc  9f502000  addli r1, zero, 21
000500  7d900000  xwait r1, 0
000504  1d000200  lock zero, r4
000508  0d000002  ew_cfg zero, zero, zero, 1
00050c  e3401ffe  loadli.w r1,  -244(r30)
000510  8d100000  ewcoeff_cfg r1, zero, zero, 0
000514  0d000804  ew_cfg zero, r16, zero, 2
000518  0d020006  ew_cfg r4, zero, zero, 3
00051c  0d020226  ew_cfg r4, r4, zero, 19
000520  e340bffe  loadli.w r1,  -164(r30)
000524  cdd09400  hp_ssmul r1, r9, r9, 0
000528  9f302000  addli r1, zero, 19
00052c  0d000026  ew_cfg zero, zero, zero, 19
000530  1d100200  unlock r4
000534  7d800000  xsignal r1, 0
000538  9f602000  addli r1, zero, 22
00053c  7d900000  xwait r1, 0
000540  7d100300  xwait r6, 0
000544  1d000200  lock zero, r4
000548  0d000002  ew_cfg zero, zero, zero, 1
00054c  e3001ffe  loadli.w r1,  -248(r30)
000550  8d108000  ewcoeff_cfg r1, zero, r8, 0
000554  9b900810  ori r1, r17, 256
000558  0d000804  ew_cfg zero, r16, zero, 2
00055c  0d020006  ew_cfg r4, zero, zero, 3
000560  0d020226  ew_cfg r4, r4, zero, 19
000564  6305bffe  loadli.w r10,  -168(r30)
000568  ad00a500  dsmadd r1, r10, r10, 0
00056c  0d000026  ew_cfg zero, zero, zero, 19
000570  1d100200  unlock r4
000574  1d000200  lock zero, r4
000578  0d000002  ew_cfg zero, zero, zero, 1
00057c  0d140000  ewcoeff_cfg r8, zero, zero, 0
000580  8d060006  ew_cfg r13, zero, zero, 3
000584  0d020226  ew_cfg r4, r4, zero, 19
000588  0d000904  ew_cfg zero, r18, zero, 2
00058c  8d300008  ewcoeff_nlf_cfg r1, 4
000590  9b900818  ori r1, r17, 384
000594  0d000904  ew_cfg zero, r18, zero, 2
000598  cdd13100  hp_ssmul r3, r3, r3, 0
00059c  0d000904  ew_cfg zero, r18, zero, 2
0005a0  8d300008  ewcoeff_nlf_cfg r1, 4
0005a4  9b900108  ori r1, r3, 128
0005a8  0d000904  ew_cfg zero, r18, zero, 2
0005ac  cdd01000  hp_ssmul r1, r1, r1, 0
0005b0  9b900820  ori r1, r17, 512
0005b4  0d000026  ew_cfg zero, zero, zero, 19
0005b8  1d100200  unlock r4
0005bc  1d000200  lock zero, r4
0005c0  0d000002  ew_cfg zero, zero, zero, 1
0005c4  0d140000  ewcoeff_cfg r8, zero, zero, 0
0005c8  8d060006  ew_cfg r13, zero, zero, 3
0005cc  0d020226  ew_cfg r4, r4, zero, 19
0005d0  0d000904  ew_cfg zero, r18, zero, 2
0005d4  8d300008  ewcoeff_nlf_cfg r1, 4
0005d8  9b900110  ori r1, r3, 256
0005dc  0d000904  ew_cfg zero, r18, zero, 2
0005e0  cdd01000  hp_ssmul r1, r1, r1, 0
0005e4  9b900828  ori r1, r17, 640
0005e8  0d000904  ew_cfg zero, r18, zero, 2
0005ec  8d300008  ewcoeff_nlf_cfg r1, 4
0005f0  9b900118  ori r1, r3, 384
0005f4  0d000904  ew_cfg zero, r18, zero, 2
0005f8  cdd01000  hp_ssmul r1, r1, r1, 0
0005fc  9b900830  ori r1, r17, 768
000600  0d000026  ew_cfg zero, zero, zero, 19
000604  1d100200  unlock r4
000608  1d000200  lock zero, r4
00060c  0d000002  ew_cfg zero, zero, zero, 1
000610  0d140000  ewcoeff_cfg r8, zero, zero, 0
000614  8d060006  ew_cfg r13, zero, zero, 3
000618  0d020226  ew_cfg r4, r4, zero, 19
00061c  0d000904  ew_cfg zero, r18, zero, 2
000620  8d300008  ewcoeff_nlf_cfg r1, 4
000624  9b900120  ori r1, r3, 512
000628  0d000904  ew_cfg zero, r18, zero, 2
00062c  cdd01000  hp_ssmul r1, r1, r1, 0
000630  9b900838  ori r1, r17, 896
000634  0d000904  ew_cfg zero, r18, zero, 2
000638  8d300008  ewcoeff_nlf_cfg r1, 4
00063c  9b900128  ori r1, r3, 640
000640  0d000904  ew_cfg zero, r18, zero, 2
000644  cdd01000  hp_ssmul r1, r1, r1, 0
000648  9b900840  ori r1, r17, 1024
00064c  0d000026  ew_cfg zero, zero, zero, 19
000650  1d100200  unlock r4
000654  1d000200  lock zero, r4
000658  0d000002  ew_cfg zero, zero, zero, 1
00065c  0d140000  ewcoeff_cfg r8, zero, zero, 0
000660  8d060006  ew_cfg r13, zero, zero, 3
000664  0d020226  ew_cfg r4, r4, zero, 19
000668  0d000904  ew_cfg zero, r18, zero, 2
00066c  8d300008  ewcoeff_nlf_cfg r1, 4
000670  9b900130  ori r1, r3, 768
000674  0d000904  ew_cfg zero, r18, zero, 2
000678  cdd01000  hp_ssmul r1, r1, r1, 0
00067c  9b900848  ori r1, r17, 1152
000680  0d000904  ew_cfg zero, r18, zero, 2
000684  8d300008  ewcoeff_nlf_cfg r1, 4
000688  9b900138  ori r1, r3, 896
00068c  0d000904  ew_cfg zero, r18, zero, 2
000690  cdd01000  hp_ssmul r1, r1, r1, 0
000694  9b900850  ori r1, r17, 1280
000698  0d000026  ew_cfg zero, zero, zero, 19
00069c  1d100200  unlock r4
0006a0  1d000200  lock zero, r4
0006a4  0d000002  ew_cfg zero, zero, zero, 1
0006a8  0d140000  ewcoeff_cfg r8, zero, zero, 0
0006ac  8d060006  ew_cfg r13, zero, zero, 3
0006b0  0d020226  ew_cfg r4, r4, zero, 19
0006b4  0d000904  ew_cfg zero, r18, zero, 2
0006b8  8d300008  ewcoeff_nlf_cfg r1, 4
0006bc  9b900140  ori r1, r3, 1024
0006c0  0d000904  ew_cfg zero, r18, zero, 2
0006c4  cdd01000  hp_ssmul r1, r1, r1, 0
0006c8  9b900858  ori r1, r17, 1408
0006cc  0d000904  ew_cfg zero, r18, zero, 2
0006d0  8d300008  ewcoeff_nlf_cfg r1, 4
0006d4  9b900148  ori r1, r3, 1152
0006d8  0d000904  ew_cfg zero, r18, zero, 2
0006dc  cdd01000  hp_ssmul r1, r1, r1, 0
0006e0  9b900860  ori r1, r17, 1536
0006e4  0d000026  ew_cfg zero, zero, zero, 19
0006e8  1d100200  unlock r4
0006ec  1d000200  lock zero, r4
0006f0  0d000002  ew_cfg zero, zero, zero, 1
0006f4  0d140000  ewcoeff_cfg r8, zero, zero, 0
0006f8  8d060006  ew_cfg r13, zero, zero, 3
0006fc  0d020226  ew_cfg r4, r4, zero, 19
000700  0d000904  ew_cfg zero, r18, zero, 2
000704  8d300008  ewcoeff_nlf_cfg r1, 4
000708  9b900150  ori r1, r3, 1280
00070c  0d000904  ew_cfg zero, r18, zero, 2
000710  cdd01000  hp_ssmul r1, r1, r1, 0
000714  9b900868  ori r1, r17, 1664
000718  0d000904  ew_cfg zero, r18, zero, 2
00071c  8d300008  ewcoeff_nlf_cfg r1, 4
000720  9b900158  ori r1, r3, 1408
000724  0d000904  ew_cfg zero, r18, zero, 2
000728  cdd01000  hp_ssmul r1, r1, r1, 0
00072c  9b900870  ori r1, r17, 1792
000730  0d000026  ew_cfg zero, zero, zero, 19
000734  1d100200  unlock r4
000738  1d000200  lock zero, r4
00073c  0d000002  ew_cfg zero, zero, zero, 1
000740  0d140000  ewcoeff_cfg r8, zero, zero, 0
000744  8d060006  ew_cfg r13, zero, zero, 3
000748  0d020226  ew_cfg r4, r4, zero, 19
00074c  0d000904  ew_cfg zero, r18, zero, 2
000750  8d300008  ewcoeff_nlf_cfg r1, 4
000754  9b900160  ori r1, r3, 1536
000758  0d000904  ew_cfg zero, r18, zero, 2
00075c  cdd01000  hp_ssmul r1, r1, r1, 0
000760  9b900878  ori r1, r17, 1920
000764  0d000904  ew_cfg zero, r18, zero, 2
000768  8d300008  ewcoeff_nlf_cfg r1, 4
00076c  9b900168  ori r1, r3, 1664
000770  0d000904  ew_cfg zero, r18, zero, 2
000774  cdd01000  hp_ssmul r1, r1, r1, 0
000778  9b900880  ori r1, r17, 2048
00077c  0d000026  ew_cfg zero, zero, zero, 19
000780  1d100200  unlock r4
000784  1d000200  lock zero, r4
000788  0d000002  ew_cfg zero, zero, zero, 1
00078c  0d140000  ewcoeff_cfg r8, zero, zero, 0
000790  8d060006  ew_cfg r13, zero, zero, 3
000794  0d020226  ew_cfg r4, r4, zero, 19
000798  0d000904  ew_cfg zero, r18, zero, 2
00079c  8d300008  ewcoeff_nlf_cfg r1, 4
0007a0  9b900170  ori r1, r3, 1792
0007a4  0d000904  ew_cfg zero, r18, zero, 2
0007a8  cdd01000  hp_ssmul r1, r1, r1, 0
0007ac  9b900888  ori r1, r17, 2176
0007b0  0d000904  ew_cfg zero, r18, zero, 2
0007b4  8d300008  ewcoeff_nlf_cfg r1, 4
0007b8  9b900178  ori r1, r3, 1920
0007bc  0d000904  ew_cfg zero, r18, zero, 2
0007c0  cdd01000  hp_ssmul r1, r1, r1, 0
0007c4  9b900890  ori r1, r17, 2304
0007c8  0d000026  ew_cfg zero, zero, zero, 19
0007cc  1d100200  unlock r4
0007d0  1d000200  lock zero, r4
0007d4  0d000002  ew_cfg zero, zero, zero, 1
0007d8  0d140000  ewcoeff_cfg r8, zero, zero, 0
0007dc  8d060006  ew_cfg r13, zero, zero, 3
0007e0  0d020226  ew_cfg r4, r4, zero, 19
0007e4  0d000904  ew_cfg zero, r18, zero, 2
0007e8  8d300008  ewcoeff_nlf_cfg r1, 4
0007ec  9b900180  ori r1, r3, 2048
0007f0  0d000904  ew_cfg zero, r18, zero, 2
0007f4  cdd01000  hp_ssmul r1, r1, r1, 0
0007f8  9b900898  ori r1, r17, 2432
0007fc  0d000904  ew_cfg zero, r18, zero, 2
000800  8d300008  ewcoeff_nlf_cfg r1, 4
000804  9b900188  ori r1, r3, 2176
000808  0d000904  ew_cfg zero, r18, zero, 2
00080c  cdd01000  hp_ssmul r1, r1, r1, 0
000810  9b9008a0  ori r1, r17, 2560
000814  0d000026  ew_cfg zero, zero, zero, 19
000818  1d100200  unlock r4
00081c  1d000200  lock zero, r4
000820  0d000002  ew_cfg zero, zero, zero, 1
000824  0d140000  ewcoeff_cfg r8, zero, zero, 0
000828  8d060006  ew_cfg r13, zero, zero, 3
00082c  0d020226  ew_cfg r4, r4, zero, 19
000830  0d000904  ew_cfg zero, r18, zero, 2
000834  8d300008  ewcoeff_nlf_cfg r1, 4
000838  9b900190  ori r1, r3, 2304
00083c  0d000904  ew_cfg zero, r18, zero, 2
000840  cdd01000  hp_ssmul r1, r1, r1, 0
000844  9b9008a8  ori r1, r17, 2688
000848  0d000904  ew_cfg zero, r18, zero, 2
00084c  8d300008  ewcoeff_nlf_cfg r1, 4
000850  9b900198  ori r1, r3, 2432
000854  0d000904  ew_cfg zero, r18, zero, 2
000858  cdd01000  hp_ssmul r1, r1, r1, 0
00085c  9b9008b0  ori r1, r17, 2816
000860  0d000026  ew_cfg zero, zero, zero, 19
000864  1d100200  unlock r4
000868  1d000200  lock zero, r4
00086c  0d000002  ew_cfg zero, zero, zero, 1
000870  0d140000  ewcoeff_cfg r8, zero, zero, 0
000874  8d060006  ew_cfg r13, zero, zero, 3
000878  0d020226  ew_cfg r4, r4, zero, 19
00087c  0d000904  ew_cfg zero, r18, zero, 2
000880  8d300008  ewcoeff_nlf_cfg r1, 4
000884  9b9001a0  ori r1, r3, 2560
000888  0d000904  ew_cfg zero, r18, zero, 2
00088c  cdd01000  hp_ssmul r1, r1, r1, 0
000890  9b9008b8  ori r1, r17, 2944
000894  0d000904  ew_cfg zero, r18, zero, 2
000898  8d300008  ewcoeff_nlf_cfg r1, 4
00089c  9b9001a8  ori r1, r3, 2688
0008a0  0d000904  ew_cfg zero, r18, zero, 2
0008a4  cdd01000  hp_ssmul r1, r1, r1, 0
0008a8  9b9008c0  ori r1, r17, 3072
0008ac  0d000026  ew_cfg zero, zero, zero, 19
0008b0  1d100200  unlock r4
0008b4  1d000200  lock zero, r4
0008b8  0d000002  ew_cfg zero, zero, zero, 1
0008bc  0d140000  ewcoeff_cfg r8, zero, zero, 0
0008c0  8d060006  ew_cfg r13, zero, zero, 3
0008c4  0d020226  ew_cfg r4, r4, zero, 19
0008c8  0d000904  ew_cfg zero, r18, zero, 2
0008cc  8d300008  ewcoeff_nlf_cfg r1, 4
0008d0  9b9001b0  ori r1, r3, 2816
0008d4  0d000904  ew_cfg zero, r18, zero, 2
0008d8  cdd01000  hp_ssmul r1, r1, r1, 0
0008dc  9b9008c8  ori r1, r17, 3200
0008e0  0d000904  ew_cfg zero, r18, zero, 2
0008e4  8d300008  ewcoeff_nlf_cfg r1, 4
0008e8  9b9001b8  ori r1, r3, 2944
0008ec  0d000904  ew_cfg zero, r18, zero, 2
0008f0  cdd01000  hp_ssmul r1, r1, r1, 0
0008f4  9b9008d0  ori r1, r17, 3328
0008f8  0d000026  ew_cfg zero, zero, zero, 19
0008fc  1d100200  unlock r4
000900  1d000200  lock zero, r4
000904  0d000002  ew_cfg zero, zero, zero, 1
000908  0d140000  ewcoeff_cfg r8, zero, zero, 0
00090c  8d060006  ew_cfg r13, zero, zero, 3
000910  0d020226  ew_cfg r4, r4, zero, 19
000914  0d000904  ew_cfg zero, r18, zero, 2
000918  8d300008  ewcoeff_nlf_cfg r1, 4
00091c  9b9001c0  ori r1, r3, 3072
000920  0d000904  ew_cfg zero, r18, zero, 2
000924  cdd01000  hp_ssmul r1, r1, r1, 0
000928  9b9008d8  ori r1, r17, 3456
00092c  0d000904  ew_cfg zero, r18, zero, 2
000930  8d300008  ewcoeff_nlf_cfg r1, 4
000934  9b9001c8  ori r1, r3, 3200
000938  0d000904  ew_cfg zero, r18, zero, 2
00093c  cdd01000  hp_ssmul r1, r1, r1, 0
000940  9b9008e0  ori r1, r17, 3584
000944  0d000026  ew_cfg zero, zero, zero, 19
000948  1d100200  unlock r4
00094c  1d000200  lock zero, r4
000950  0d000002  ew_cfg zero, zero, zero, 1
000954  0d140000  ewcoeff_cfg r8, zero, zero, 0
000958  8d060006  ew_cfg r13, zero, zero, 3
00095c  0d020226  ew_cfg r4, r4, zero, 19
000960  0d000904  ew_cfg zero, r18, zero, 2
000964  8d300008  ewcoeff_nlf_cfg r1, 4
000968  9b9001d0  ori r1, r3, 3328
00096c  0d000904  ew_cfg zero, r18, zero, 2
000970  cdd01000  hp_ssmul r1, r1, r1, 0
000974  9b9008e8  ori r1, r17, 3712
000978  0d000904  ew_cfg zero, r18, zero, 2
00097c  8d300008  ewcoeff_nlf_cfg r1, 4
000980  9b9001d8  ori r1, r3, 3456
000984  0d000904  ew_cfg zero, r18, zero, 2
000988  cdd01000  hp_ssmul r1, r1, r1, 0
00098c  9b9008f0  ori r1, r17, 3840
000990  0d000026  ew_cfg zero, zero, zero, 19
000994  1d100200  unlock r4
000998  1d000200  lock zero, r4
00099c  0d000002  ew_cfg zero, zero, zero, 1
0009a0  0d140000  ewcoeff_cfg r8, zero, zero, 0
0009a4  8d060006  ew_cfg r13, zero, zero, 3
0009a8  0d020226  ew_cfg r4, r4, zero, 19
0009ac  0d000904  ew_cfg zero, r18, zero, 2
0009b0  8d300008  ewcoeff_nlf_cfg r1, 4
0009b4  9b9001e0  ori r1, r3, 3584
0009b8  0d000904  ew_cfg zero, r18, zero, 2
0009bc  cdd01000  hp_ssmul r1, r1, r1, 0
0009c0  9b9008f8  ori r1, r17, 3968
0009c4  ab180200  lui r17, 33
0009c8  0d000904  ew_cfg zero, r18, zero, 2
0009cc  8d300008  ewcoeff_nlf_cfg r1, 4
0009d0  9b9001e8  ori r1, r3, 3712
0009d4  0d000904  ew_cfg zero, r18, zero, 2
0009d8  cdd01000  hp_ssmul r1, r1, r1, 0
0009dc  9b9001f0  ori r1, r3, 3840
0009e0  0d000026  ew_cfg zero, zero, zero, 19
0009e4  1d100200  unlock r4
0009e8  1d000200  lock zero, r4
0009ec  0d000002  ew_cfg zero, zero, zero, 1
0009f0  0d140000  ewcoeff_cfg r8, zero, zero, 0
0009f4  8d060006  ew_cfg r13, zero, zero, 3
0009f8  0d020226  ew_cfg r4, r4, zero, 19
0009fc  0d000904  ew_cfg zero, r18, zero, 2
000a00  8d380008  ewcoeff_nlf_cfg r17, 4
000a04  0d000904  ew_cfg zero, r18, zero, 2
000a08  cdd01000  hp_ssmul r1, r1, r1, 0
000a0c  9b900808  ori r1, r17, 128
000a10  0d000904  ew_cfg zero, r18, zero, 2
000a14  8d300008  ewcoeff_nlf_cfg r1, 4
000a18  9b9001f8  ori r1, r3, 3968
000a1c  0d000904  ew_cfg zero, r18, zero, 2
000a20  cdd01000  hp_ssmul r1, r1, r1, 0
000a24  9b900810  ori r1, r17, 256
000a28  0d000026  ew_cfg zero, zero, zero, 19
000a2c  1d100200  unlock r4
000a30  1d000200  lock zero, r4
000a34  0d000002  ew_cfg zero, zero, zero, 1
000a38  0d140000  ewcoeff_cfg r8, zero, zero, 0
000a3c  8d060006  ew_cfg r13, zero, zero, 3
000a40  0d020226  ew_cfg r4, r4, zero, 19
000a44  0d000904  ew_cfg zero, r18, zero, 2
000a48  8d300008  ewcoeff_nlf_cfg r1, 4
000a4c  9b900818  ori r1, r17, 384
000a50  0d000904  ew_cfg zero, r18, zero, 2
000a54  cdd93901  hp_ssmul r19, r19, r19, 0
000a58  0d000904  ew_cfg zero, r18, zero, 2
000a5c  8d300008  ewcoeff_nlf_cfg r1, 4
000a60  9b900908  ori r1, r19, 128
000a64  0d000904  ew_cfg zero, r18, zero, 2
000a68  cdd01000  hp_ssmul r1, r1, r1, 0
000a6c  9b900820  ori r1, r17, 512
000a70  0d000026  ew_cfg zero, zero, zero, 19
000a74  1d100200  unlock r4
000a78  1d000200  lock zero, r4
000a7c  0d000002  ew_cfg zero, zero, zero, 1
000a80  0d140000  ewcoeff_cfg r8, zero, zero, 0
000a84  8d060006  ew_cfg r13, zero, zero, 3
000a88  0d020226  ew_cfg r4, r4, zero, 19
000a8c  0d000904  ew_cfg zero, r18, zero, 2
000a90  8d300008  ewcoeff_nlf_cfg r1, 4
000a94  9b900910  ori r1, r19, 256
000a98  0d000904  ew_cfg zero, r18, zero, 2
000a9c  cdd01000  hp_ssmul r1, r1, r1, 0
000aa0  9b900828  ori r1, r17, 640
000aa4  0d000904  ew_cfg zero, r18, zero, 2
000aa8  8d300008  ewcoeff_nlf_cfg r1, 4
000aac  9b900918  ori r1, r19, 384
000ab0  0d000904  ew_cfg zero, r18, zero, 2
000ab4  cdd01000  hp_ssmul r1, r1, r1, 0
000ab8  9b900830  ori r1, r17, 768
000abc  0d000026  ew_cfg zero, zero, zero, 19
000ac0  1d100200  unlock r4
000ac4  1d000200  lock zero, r4
000ac8  0d000002  ew_cfg zero, zero, zero, 1
000acc  0d140000  ewcoeff_cfg r8, zero, zero, 0
000ad0  8d060006  ew_cfg r13, zero, zero, 3
000ad4  0d020226  ew_cfg r4, r4, zero, 19
000ad8  0d000904  ew_cfg zero, r18, zero, 2
000adc  8d300008  ewcoeff_nlf_cfg r1, 4
000ae0  9b900920  ori r1, r19, 512
000ae4  0d000904  ew_cfg zero, r18, zero, 2
000ae8  cdd01000  hp_ssmul r1, r1, r1, 0
000aec  9b900838  ori r1, r17, 896
000af0  0d000904  ew_cfg zero, r18, zero, 2
000af4  8d300008  ewcoeff_nlf_cfg r1, 4
000af8  9b900928  ori r1, r19, 640
000afc  0d000904  ew_cfg zero, r18, zero, 2
000b00  cdd01000  hp_ssmul r1, r1, r1, 0
000b04  9b900840  ori r1, r17, 1024
000b08  0d000026  ew_cfg zero, zero, zero, 19
000b0c  1d100200  unlock r4
000b10  1d000200  lock zero, r4
000b14  0d000002  ew_cfg zero, zero, zero, 1
000b18  0d140000  ewcoeff_cfg r8, zero, zero, 0
000b1c  8d060006  ew_cfg r13, zero, zero, 3
000b20  0d020226  ew_cfg r4, r4, zero, 19
000b24  0d000904  ew_cfg zero, r18, zero, 2
000b28  8d300008  ewcoeff_nlf_cfg r1, 4
000b2c  9b900930  ori r1, r19, 768
000b30  0d000904  ew_cfg zero, r18, zero, 2
000b34  cdd01000  hp_ssmul r1, r1, r1, 0
000b38  9b900848  ori r1, r17, 1152
000b3c  0d000904  ew_cfg zero, r18, zero, 2
000b40  8d300008  ewcoeff_nlf_cfg r1, 4
000b44  9b900938  ori r1, r19, 896
000b48  0d000904  ew_cfg zero, r18, zero, 2
000b4c  cdd01000  hp_ssmul r1, r1, r1, 0
000b50  9b900850  ori r1, r17, 1280
000b54  0d000026  ew_cfg zero, zero, zero, 19
000b58  1d100200  unlock r4
000b5c  1d000200  lock zero, r4
000b60  0d000002  ew_cfg zero, zero, zero, 1
000b64  0d140000  ewcoeff_cfg r8, zero, zero, 0
000b68  8d060006  ew_cfg r13, zero, zero, 3
000b6c  0d020226  ew_cfg r4, r4, zero, 19
000b70  0d000904  ew_cfg zero, r18, zero, 2
000b74  8d300008  ewcoeff_nlf_cfg r1, 4
000b78  9b900940  ori r1, r19, 1024
000b7c  0d000904  ew_cfg zero, r18, zero, 2
000b80  cdd01000  hp_ssmul r1, r1, r1, 0
000b84  9b900858  ori r1, r17, 1408
000b88  0d000904  ew_cfg zero, r18, zero, 2
000b8c  8d300008  ewcoeff_nlf_cfg r1, 4
000b90  9b900948  ori r1, r19, 1152
000b94  0d000904  ew_cfg zero, r18, zero, 2
000b98  cdd01000  hp_ssmul r1, r1, r1, 0
000b9c  9b900860  ori r1, r17, 1536
000ba0  0d000026  ew_cfg zero, zero, zero, 19
000ba4  1d100200  unlock r4
000ba8  1d000200  lock zero, r4
000bac  0d000002  ew_cfg zero, zero, zero, 1
000bb0  0d140000  ewcoeff_cfg r8, zero, zero, 0
000bb4  8d060006  ew_cfg r13, zero, zero, 3
000bb8  0d020226  ew_cfg r4, r4, zero, 19
000bbc  0d000904  ew_cfg zero, r18, zero, 2
000bc0  8d300008  ewcoeff_nlf_cfg r1, 4
000bc4  9b900950  ori r1, r19, 1280
000bc8  0d000904  ew_cfg zero, r18, zero, 2
000bcc  cdd01000  hp_ssmul r1, r1, r1, 0
000bd0  9b900868  ori r1, r17, 1664
000bd4  0d000904  ew_cfg zero, r18, zero, 2
000bd8  8d300008  ewcoeff_nlf_cfg r1, 4
000bdc  9b900958  ori r1, r19, 1408
000be0  0d000904  ew_cfg zero, r18, zero, 2
000be4  cdd01000  hp_ssmul r1, r1, r1, 0
000be8  9b900870  ori r1, r17, 1792
000bec  0d000026  ew_cfg zero, zero, zero, 19
000bf0  1d100200  unlock r4
000bf4  1d000200  lock zero, r4
000bf8  0d000002  ew_cfg zero, zero, zero, 1
000bfc  0d140000  ewcoeff_cfg r8, zero, zero, 0
000c00  8d060006  ew_cfg r13, zero, zero, 3
000c04  0d020226  ew_cfg r4, r4, zero, 19
000c08  0d000904  ew_cfg zero, r18, zero, 2
000c0c  8d300008  ewcoeff_nlf_cfg r1, 4
000c10  9b900960  ori r1, r19, 1536
000c14  0d000904  ew_cfg zero, r18, zero, 2
000c18  cdd01000  hp_ssmul r1, r1, r1, 0
000c1c  9b900878  ori r1, r17, 1920
000c20  0d000904  ew_cfg zero, r18, zero, 2
000c24  8d300008  ewcoeff_nlf_cfg r1, 4
000c28  9b900968  ori r1, r19, 1664
000c2c  0d000904  ew_cfg zero, r18, zero, 2
000c30  cdd01000  hp_ssmul r1, r1, r1, 0
000c34  9b900880  ori r1, r17, 2048
000c38  0d000026  ew_cfg zero, zero, zero, 19
000c3c  1d100200  unlock r4
000c40  1d000200  lock zero, r4
000c44  0d000002  ew_cfg zero, zero, zero, 1
000c48  0d140000  ewcoeff_cfg r8, zero, zero, 0
000c4c  8d060006  ew_cfg r13, zero, zero, 3
000c50  0d020226  ew_cfg r4, r4, zero, 19
000c54  0d000904  ew_cfg zero, r18, zero, 2
000c58  8d300008  ewcoeff_nlf_cfg r1, 4
000c5c  9b900970  ori r1, r19, 1792
000c60  0d000904  ew_cfg zero, r18, zero, 2
000c64  cdd01000  hp_ssmul r1, r1, r1, 0
000c68  9b900888  ori r1, r17, 2176
000c6c  0d000904  ew_cfg zero, r18, zero, 2
000c70  8d300008  ewcoeff_nlf_cfg r1, 4
000c74  9b900978  ori r1, r19, 1920
000c78  0d000904  ew_cfg zero, r18, zero, 2
000c7c  cdd01000  hp_ssmul r1, r1, r1, 0
000c80  9b900890  ori r1, r17, 2304
000c84  0d000026  ew_cfg zero, zero, zero, 19
000c88  1d100200  unlock r4
000c8c  1d000200  lock zero, r4
000c90  0d000002  ew_cfg zero, zero, zero, 1
000c94  0d140000  ewcoeff_cfg r8, zero, zero, 0
000c98  8d060006  ew_cfg r13, zero, zero, 3
000c9c  0d020226  ew_cfg r4, r4, zero, 19
000ca0  0d000904  ew_cfg zero, r18, zero, 2
000ca4  8d300008  ewcoeff_nlf_cfg r1, 4
000ca8  9b900980  ori r1, r19, 2048
000cac  0d000904  ew_cfg zero, r18, zero, 2
000cb0  cdd01000  hp_ssmul r1, r1, r1, 0
000cb4  9b900898  ori r1, r17, 2432
000cb8  0d000904  ew_cfg zero, r18, zero, 2
000cbc  8d300008  ewcoeff_nlf_cfg r1, 4
000cc0  9b900988  ori r1, r19, 2176
000cc4  0d000904  ew_cfg zero, r18, zero, 2
000cc8  cdd01000  hp_ssmul r1, r1, r1, 0
000ccc  9b9008a0  ori r1, r17, 2560
000cd0  0d000026  ew_cfg zero, zero, zero, 19
000cd4  1d100200  unlock r4
000cd8  1d000200  lock zero, r4
000cdc  0d000002  ew_cfg zero, zero, zero, 1
000ce0  0d140000  ewcoeff_cfg r8, zero, zero, 0
000ce4  8d060006  ew_cfg r13, zero, zero, 3
000ce8  0d020226  ew_cfg r4, r4, zero, 19
000cec  0d000904  ew_cfg zero, r18, zero, 2
000cf0  8d300008  ewcoeff_nlf_cfg r1, 4
000cf4  9b900990  ori r1, r19, 2304
000cf8  0d000904  ew_cfg zero, r18, zero, 2
000cfc  cdd01000  hp_ssmul r1, r1, r1, 0
000d00  9b9008a8  ori r1, r17, 2688
000d04  0d000904  ew_cfg zero, r18, zero, 2
000d08  8d300008  ewcoeff_nlf_cfg r1, 4
000d0c  9b900998  ori r1, r19, 2432
000d10  0d000904  ew_cfg zero, r18, zero, 2
000d14  cdd01000  hp_ssmul r1, r1, r1, 0
000d18  9b9008b0  ori r1, r17, 2816
000d1c  0d000026  ew_cfg zero, zero, zero, 19
000d20  1d100200  unlock r4
000d24  1d000200  lock zero, r4
000d28  0d000002  ew_cfg zero, zero, zero, 1
000d2c  0d140000  ewcoeff_cfg r8, zero, zero, 0
000d30  8d060006  ew_cfg r13, zero, zero, 3
000d34  0d020226  ew_cfg r4, r4, zero, 19
000d38  0d000904  ew_cfg zero, r18, zero, 2
000d3c  8d300008  ewcoeff_nlf_cfg r1, 4
000d40  9b9009a0  ori r1, r19, 2560
000d44  0d000904  ew_cfg zero, r18, zero, 2
000d48  cdd01000  hp_ssmul r1, r1, r1, 0
000d4c  9b9008b8  ori r1, r17, 2944
000d50  0d000904  ew_cfg zero, r18, zero, 2
000d54  8d300008  ewcoeff_nlf_cfg r1, 4
000d58  9b9009a8  ori r1, r19, 2688
000d5c  0d000904  ew_cfg zero, r18, zero, 2
000d60  cdd01000  hp_ssmul r1, r1, r1, 0
000d64  9b9008c0  ori r1, r17, 3072
000d68  0d000026  ew_cfg zero, zero, zero, 19
000d6c  1d100200  unlock r4
000d70  1d000200  lock zero, r4
000d74  0d000002  ew_cfg zero, zero, zero, 1
000d78  0d140000  ewcoeff_cfg r8, zero, zero, 0
000d7c  8d060006  ew_cfg r13, zero, zero, 3
000d80  0d020226  ew_cfg r4, r4, zero, 19
000d84  0d000904  ew_cfg zero, r18, zero, 2
000d88  8d300008  ewcoeff_nlf_cfg r1, 4
000d8c  9b9009b0  ori r1, r19, 2816
000d90  0d000904  ew_cfg zero, r18, zero, 2
000d94  cdd01000  hp_ssmul r1, r1, r1, 0
000d98  9b9008c8  ori r1, r17, 3200
000d9c  0d000904  ew_cfg zero, r18, zero, 2
000da0  8d300008  ewcoeff_nlf_cfg r1, 4
000da4  9b9009b8  ori r1, r19, 2944
000da8  0d000904  ew_cfg zero, r18, zero, 2
000dac  cdd01000  hp_ssmul r1, r1, r1, 0
000db0  9b9008d0  ori r1, r17, 3328
000db4  0d000026  ew_cfg zero, zero, zero, 19
000db8  1d100200  unlock r4
000dbc  1d000200  lock zero, r4
000dc0  0d000002  ew_cfg zero, zero, zero, 1
000dc4  0d140000  ewcoeff_cfg r8, zero, zero, 0
000dc8  8d060006  ew_cfg r13, zero, zero, 3
000dcc  0d020226  ew_cfg r4, r4, zero, 19
000dd0  0d000904  ew_cfg zero, r18, zero, 2
000dd4  8d300008  ewcoeff_nlf_cfg r1, 4
000dd8  9b9009c0  ori r1, r19, 3072
000ddc  0d000904  ew_cfg zero, r18, zero, 2
000de0  cdd01000  hp_ssmul r1, r1, r1, 0
000de4  9b9008d8  ori r1, r17, 3456
000de8  0d000904  ew_cfg zero, r18, zero, 2
000dec  8d300008  ewcoeff_nlf_cfg r1, 4
000df0  9b9009c8  ori r1, r19, 3200
000df4  0d000904  ew_cfg zero, r18, zero, 2
000df8  cdd01000  hp_ssmul r1, r1, r1, 0
000dfc  9b9008e0  ori r1, r17, 3584
000e00  0d000026  ew_cfg zero, zero, zero, 19
000e04  1d100200  unlock r4
000e08  1d000200  lock zero, r4
000e0c  0d000002  ew_cfg zero, zero, zero, 1
000e10  0d140000  ewcoeff_cfg r8, zero, zero, 0
000e14  8d060006  ew_cfg r13, zero, zero, 3
000e18  0d020226  ew_cfg r4, r4, zero, 19
000e1c  0d000904  ew_cfg zero, r18, zero, 2
000e20  8d300008  ewcoeff_nlf_cfg r1, 4
000e24  9b9009d0  ori r1, r19, 3328
000e28  0d000904  ew_cfg zero, r18, zero, 2
000e2c  cdd01000  hp_ssmul r1, r1, r1, 0
000e30  9b9008e8  ori r1, r17, 3712
000e34  0d000904  ew_cfg zero, r18, zero, 2
000e38  8d300008  ewcoeff_nlf_cfg r1, 4
000e3c  9b9009d8  ori r1, r19, 3456
000e40  0d000904  ew_cfg zero, r18, zero, 2
000e44  cdd01000  hp_ssmul r1, r1, r1, 0
000e48  9b9008f0  ori r1, r17, 3840
000e4c  0d000026  ew_cfg zero, zero, zero, 19
000e50  1d100200  unlock r4
000e54  1d000200  lock zero, r4
000e58  0d000002  ew_cfg zero, zero, zero, 1
000e5c  0d140000  ewcoeff_cfg r8, zero, zero, 0
000e60  8d060006  ew_cfg r13, zero, zero, 3
000e64  0d020226  ew_cfg r4, r4, zero, 19
000e68  0d000904  ew_cfg zero, r18, zero, 2
000e6c  8d300008  ewcoeff_nlf_cfg r1, 4
000e70  9b9009e0  ori r1, r19, 3584
000e74  0d000904  ew_cfg zero, r18, zero, 2
000e78  cdd01000  hp_ssmul r1, r1, r1, 0
000e7c  9b9008f8  ori r1, r17, 3968
000e80  ab280200  lui r17, 34
000e84  0d000904  ew_cfg zero, r18, zero, 2
000e88  8d300008  ewcoeff_nlf_cfg r1, 4
000e8c  9b9009e8  ori r1, r19, 3712
000e90  0d000904  ew_cfg zero, r18, zero, 2
000e94  cdd01000  hp_ssmul r1, r1, r1, 0
000e98  9b9009f0  ori r1, r19, 3840
000e9c  0d000026  ew_cfg zero, zero, zero, 19
000ea0  1d100200  unlock r4
000ea4  1d000200  lock zero, r4
000ea8  0d000002  ew_cfg zero, zero, zero, 1
000eac  0d140000  ewcoeff_cfg r8, zero, zero, 0
000eb0  8d060006  ew_cfg r13, zero, zero, 3
000eb4  0d020226  ew_cfg r4, r4, zero, 19
000eb8  0d000904  ew_cfg zero, r18, zero, 2
000ebc  8d380008  ewcoeff_nlf_cfg r17, 4
000ec0  0d000904  ew_cfg zero, r18, zero, 2
000ec4  cdd01000  hp_ssmul r1, r1, r1, 0
000ec8  9b900808  ori r1, r17, 128
000ecc  0d000904  ew_cfg zero, r18, zero, 2
000ed0  8d300008  ewcoeff_nlf_cfg r1, 4
000ed4  9b9009f8  ori r1, r19, 3968
000ed8  ab690000  lui r19, 6
000edc  0d000904  ew_cfg zero, r18, zero, 2
000ee0  cdd01000  hp_ssmul r1, r1, r1, 0
000ee4  9b900810  ori r1, r17, 256
000ee8  0d000026  ew_cfg zero, zero, zero, 19
000eec  1d100200  unlock r4
000ef0  1d000200  lock zero, r4
000ef4  0d000002  ew_cfg zero, zero, zero, 1
000ef8  0d140000  ewcoeff_cfg r8, zero, zero, 0
000efc  8d060006  ew_cfg r13, zero, zero, 3
000f00  0d020226  ew_cfg r4, r4, zero, 19
000f04  0d000904  ew_cfg zero, r18, zero, 2
000f08  8d300008  ewcoeff_nlf_cfg r1, 4
000f0c  9b900818  ori r1, r17, 384
000f10  0d000904  ew_cfg zero, r18, zero, 2
000f14  cdd93901  hp_ssmul r19, r19, r19, 0
000f18  0d000904  ew_cfg zero, r18, zero, 2
000f1c  8d300008  ewcoeff_nlf_cfg r1, 4
000f20  9b900908  ori r1, r19, 128
000f24  0d000904  ew_cfg zero, r18, zero, 2
000f28  cdd01000  hp_ssmul r1, r1, r1, 0
000f2c  9b900820  ori r1, r17, 512
000f30  0d000026  ew_cfg zero, zero, zero, 19
000f34  1d100200  unlock r4
000f38  1d000200  lock zero, r4
000f3c  0d000002  ew_cfg zero, zero, zero, 1
000f40  0d140000  ewcoeff_cfg r8, zero, zero, 0
000f44  8d060006  ew_cfg r13, zero, zero, 3
000f48  0d020226  ew_cfg r4, r4, zero, 19
000f4c  0d000904  ew_cfg zero, r18, zero, 2
000f50  8d300008  ewcoeff_nlf_cfg r1, 4
000f54  9b900910  ori r1, r19, 256
000f58  0d000904  ew_cfg zero, r18, zero, 2
000f5c  cdd01000  hp_ssmul r1, r1, r1, 0
000f60  9b900828  ori r1, r17, 640
000f64  0d000904  ew_cfg zero, r18, zero, 2
000f68  8d300008  ewcoeff_nlf_cfg r1, 4
000f6c  9b900918  ori r1, r19, 384
000f70  0d000904  ew_cfg zero, r18, zero, 2
000f74  cdd01000  hp_ssmul r1, r1, r1, 0
000f78  9b900830  ori r1, r17, 768
000f7c  0d000026  ew_cfg zero, zero, zero, 19
000f80  1d100200  unlock r4
000f84  1d000200  lock zero, r4
000f88  0d000002  ew_cfg zero, zero, zero, 1
000f8c  0d140000  ewcoeff_cfg r8, zero, zero, 0
000f90  8d060006  ew_cfg r13, zero, zero, 3
000f94  0d020226  ew_cfg r4, r4, zero, 19
000f98  0d000904  ew_cfg zero, r18, zero, 2
000f9c  8d300008  ewcoeff_nlf_cfg r1, 4
000fa0  9b900920  ori r1, r19, 512
000fa4  0d000904  ew_cfg zero, r18, zero, 2
000fa8  cdd01000  hp_ssmul r1, r1, r1, 0
000fac  9b900838  ori r1, r17, 896
000fb0  0d000904  ew_cfg zero, r18, zero, 2
000fb4  8d300008  ewcoeff_nlf_cfg r1, 4
000fb8  9b900928  ori r1, r19, 640
000fbc  0d000904  ew_cfg zero, r18, zero, 2
000fc0  cdd01000  hp_ssmul r1, r1, r1, 0
000fc4  9b900840  ori r1, r17, 1024
000fc8  0d000026  ew_cfg zero, zero, zero, 19
000fcc  1d100200  unlock r4
000fd0  1d000200  lock zero, r4
000fd4  0d000002  ew_cfg zero, zero, zero, 1
000fd8  0d140000  ewcoeff_cfg r8, zero, zero, 0
000fdc  8d060006  ew_cfg r13, zero, zero, 3
000fe0  0d020226  ew_cfg r4, r4, zero, 19
000fe4  0d000904  ew_cfg zero, r18, zero, 2
000fe8  8d300008  ewcoeff_nlf_cfg r1, 4
000fec  9b900930  ori r1, r19, 768
000ff0  0d000904  ew_cfg zero, r18, zero, 2
000ff4  cdd01000  hp_ssmul r1, r1, r1, 0
000ff8  9b900848  ori r1, r17, 1152
000ffc  0d000904  ew_cfg zero, r18, zero, 2
001000  8d300008  ewcoeff_nlf_cfg r1, 4
001004  9b900938  ori r1, r19, 896
001008  0d000904  ew_cfg zero, r18, zero, 2
00100c  cdd01000  hp_ssmul r1, r1, r1, 0
001010  9b900850  ori r1, r17, 1280
001014  0d000026  ew_cfg zero, zero, zero, 19
001018  1d100200  unlock r4
00101c  1d000200  lock zero, r4
001020  0d000002  ew_cfg zero, zero, zero, 1
001024  0d140000  ewcoeff_cfg r8, zero, zero, 0
001028  8d060006  ew_cfg r13, zero, zero, 3
00102c  0d020226  ew_cfg r4, r4, zero, 19
001030  0d000904  ew_cfg zero, r18, zero, 2
001034  8d300008  ewcoeff_nlf_cfg r1, 4
001038  9b900940  ori r1, r19, 1024
00103c  0d000904  ew_cfg zero, r18, zero, 2
001040  cdd01000  hp_ssmul r1, r1, r1, 0
001044  9b900858  ori r1, r17, 1408
001048  0d000904  ew_cfg zero, r18, zero, 2
00104c  8d300008  ewcoeff_nlf_cfg r1, 4
001050  9b900948  ori r1, r19, 1152
001054  0d000904  ew_cfg zero, r18, zero, 2
001058  cdd01000  hp_ssmul r1, r1, r1, 0
00105c  9b900860  ori r1, r17, 1536
001060  0d000026  ew_cfg zero, zero, zero, 19
001064  1d100200  unlock r4
001068  1d000200  lock zero, r4
00106c  0d000002  ew_cfg zero, zero, zero, 1
001070  0d140000  ewcoeff_cfg r8, zero, zero, 0
001074  8d060006  ew_cfg r13, zero, zero, 3
001078  0d020226  ew_cfg r4, r4, zero, 19
00107c  0d000904  ew_cfg zero, r18, zero, 2
001080  8d300008  ewcoeff_nlf_cfg r1, 4
001084  9b900950  ori r1, r19, 1280
001088  0d000904  ew_cfg zero, r18, zero, 2
00108c  cdd01000  hp_ssmul r1, r1, r1, 0
001090  9b900868  ori r1, r17, 1664
001094  0d000904  ew_cfg zero, r18, zero, 2
001098  8d300008  ewcoeff_nlf_cfg r1, 4
00109c  9b900958  ori r1, r19, 1408
0010a0  0d000904  ew_cfg zero, r18, zero, 2
0010a4  cdd01000  hp_ssmul r1, r1, r1, 0
0010a8  9b900870  ori r1, r17, 1792
0010ac  0d000026  ew_cfg zero, zero, zero, 19
0010b0  1d100200  unlock r4
0010b4  1d000200  lock zero, r4
0010b8  0d000002  ew_cfg zero, zero, zero, 1
0010bc  0d140000  ewcoeff_cfg r8, zero, zero, 0
0010c0  8d060006  ew_cfg r13, zero, zero, 3
0010c4  0d020226  ew_cfg r4, r4, zero, 19
0010c8  0d000904  ew_cfg zero, r18, zero, 2
0010cc  8d300008  ewcoeff_nlf_cfg r1, 4
0010d0  9b900960  ori r1, r19, 1536
0010d4  0d000904  ew_cfg zero, r18, zero, 2
0010d8  cdd01000  hp_ssmul r1, r1, r1, 0
0010dc  9b900878  ori r1, r17, 1920
0010e0  0d000904  ew_cfg zero, r18, zero, 2
0010e4  8d300008  ewcoeff_nlf_cfg r1, 4
0010e8  9b900968  ori r1, r19, 1664
0010ec  0d000904  ew_cfg zero, r18, zero, 2
0010f0  cdd01000  hp_ssmul r1, r1, r1, 0
0010f4  9b900880  ori r1, r17, 2048
0010f8  0d000026  ew_cfg zero, zero, zero, 19
0010fc  1d100200  unlock r4
001100  1d000200  lock zero, r4
001104  0d000002  ew_cfg zero, zero, zero, 1
001108  0d140000  ewcoeff_cfg r8, zero, zero, 0
00110c  8d060006  ew_cfg r13, zero, zero, 3
001110  0d020226  ew_cfg r4, r4, zero, 19
001114  0d000904  ew_cfg zero, r18, zero, 2
001118  8d300008  ewcoeff_nlf_cfg r1, 4
00111c  9b900970  ori r1, r19, 1792
001120  0d000904  ew_cfg zero, r18, zero, 2
001124  cdd01000  hp_ssmul r1, r1, r1, 0
001128  9b900888  ori r1, r17, 2176
00112c  0d000904  ew_cfg zero, r18, zero, 2
001130  8d300008  ewcoeff_nlf_cfg r1, 4
001134  9b900978  ori r1, r19, 1920
001138  0d000904  ew_cfg zero, r18, zero, 2
00113c  cdd01000  hp_ssmul r1, r1, r1, 0
001140  9b900890  ori r1, r17, 2304
001144  0d000026  ew_cfg zero, zero, zero, 19
001148  1d100200  unlock r4
00114c  1d000200  lock zero, r4
001150  0d000002  ew_cfg zero, zero, zero, 1
001154  0d140000  ewcoeff_cfg r8, zero, zero, 0
001158  8d060006  ew_cfg r13, zero, zero, 3
00115c  0d020226  ew_cfg r4, r4, zero, 19
001160  0d000904  ew_cfg zero, r18, zero, 2
001164  8d300008  ewcoeff_nlf_cfg r1, 4
001168  9b900980  ori r1, r19, 2048
00116c  0d000904  ew_cfg zero, r18, zero, 2
001170  cdd01000  hp_ssmul r1, r1, r1, 0
001174  9b900898  ori r1, r17, 2432
001178  0d000904  ew_cfg zero, r18, zero, 2
00117c  8d300008  ewcoeff_nlf_cfg r1, 4
001180  9b900988  ori r1, r19, 2176
001184  0d000904  ew_cfg zero, r18, zero, 2
001188  cdd01000  hp_ssmul r1, r1, r1, 0
00118c  9b9008a0  ori r1, r17, 2560
001190  0d000026  ew_cfg zero, zero, zero, 19
001194  1d100200  unlock r4
001198  1d000200  lock zero, r4
00119c  0d000002  ew_cfg zero, zero, zero, 1
0011a0  0d140000  ewcoeff_cfg r8, zero, zero, 0
0011a4  8d060006  ew_cfg r13, zero, zero, 3
0011a8  0d020226  ew_cfg r4, r4, zero, 19
0011ac  0d000904  ew_cfg zero, r18, zero, 2
0011b0  8d300008  ewcoeff_nlf_cfg r1, 4
0011b4  9b900990  ori r1, r19, 2304
0011b8  0d000904  ew_cfg zero, r18, zero, 2
0011bc  cdd01000  hp_ssmul r1, r1, r1, 0
0011c0  9b9008a8  ori r1, r17, 2688
0011c4  0d000904  ew_cfg zero, r18, zero, 2
0011c8  8d300008  ewcoeff_nlf_cfg r1, 4
0011cc  9b900998  ori r1, r19, 2432
0011d0  0d000904  ew_cfg zero, r18, zero, 2
0011d4  cdd01000  hp_ssmul r1, r1, r1, 0
0011d8  9b9008b0  ori r1, r17, 2816
0011dc  0d000026  ew_cfg zero, zero, zero, 19
0011e0  1d100200  unlock r4
0011e4  1d000200  lock zero, r4
0011e8  0d000002  ew_cfg zero, zero, zero, 1
0011ec  0d140000  ewcoeff_cfg r8, zero, zero, 0
0011f0  8d060006  ew_cfg r13, zero, zero, 3
0011f4  0d020226  ew_cfg r4, r4, zero, 19
0011f8  0d000904  ew_cfg zero, r18, zero, 2
0011fc  8d300008  ewcoeff_nlf_cfg r1, 4
001200  9b9009a0  ori r1, r19, 2560
001204  0d000904  ew_cfg zero, r18, zero, 2
001208  cdd01000  hp_ssmul r1, r1, r1, 0
00120c  9b9008b8  ori r1, r17, 2944
001210  0d000904  ew_cfg zero, r18, zero, 2
001214  8d300008  ewcoeff_nlf_cfg r1, 4
001218  9b9009a8  ori r1, r19, 2688
00121c  0d000904  ew_cfg zero, r18, zero, 2
001220  cdd01000  hp_ssmul r1, r1, r1, 0
001224  9b9008c0  ori r1, r17, 3072
001228  0d000026  ew_cfg zero, zero, zero, 19
00122c  1d100200  unlock r4
001230  1d000200  lock zero, r4
001234  0d000002  ew_cfg zero, zero, zero, 1
001238  0d140000  ewcoeff_cfg r8, zero, zero, 0
00123c  8d060006  ew_cfg r13, zero, zero, 3
001240  0d020226  ew_cfg r4, r4, zero, 19
001244  0d000904  ew_cfg zero, r18, zero, 2
001248  8d300008  ewcoeff_nlf_cfg r1, 4
00124c  9b9009b0  ori r1, r19, 2816
001250  0d000904  ew_cfg zero, r18, zero, 2
001254  cdd01000  hp_ssmul r1, r1, r1, 0
001258  9b9008c8  ori r1, r17, 3200
00125c  0d000904  ew_cfg zero, r18, zero, 2
001260  8d300008  ewcoeff_nlf_cfg r1, 4
001264  9b9009b8  ori r1, r19, 2944
001268  0d000904  ew_cfg zero, r18, zero, 2
00126c  cdd01000  hp_ssmul r1, r1, r1, 0
001270  9b9008d0  ori r1, r17, 3328
001274  0d000026  ew_cfg zero, zero, zero, 19
001278  1d100200  unlock r4
00127c  1d000200  lock zero, r4
001280  0d000002  ew_cfg zero, zero, zero, 1
001284  0d140000  ewcoeff_cfg r8, zero, zero, 0
001288  8d060006  ew_cfg r13, zero, zero, 3
00128c  0d020226  ew_cfg r4, r4, zero, 19
001290  0d000904  ew_cfg zero, r18, zero, 2
001294  8d300008  ewcoeff_nlf_cfg r1, 4
001298  9b9009c0  ori r1, r19, 3072
00129c  0d000904  ew_cfg zero, r18, zero, 2
0012a0  cdd01000  hp_ssmul r1, r1, r1, 0
0012a4  9b9008d8  ori r1, r17, 3456
0012a8  0d000904  ew_cfg zero, r18, zero, 2
0012ac  8d300008  ewcoeff_nlf_cfg r1, 4
0012b0  9b9009c8  ori r1, r19, 3200
0012b4  0d000904  ew_cfg zero, r18, zero, 2
0012b8  cdd01000  hp_ssmul r1, r1, r1, 0
0012bc  9b9008e0  ori r1, r17, 3584
0012c0  0d000026  ew_cfg zero, zero, zero, 19
0012c4  1d100200  unlock r4
0012c8  1d000200  lock zero, r4
0012cc  0d000002  ew_cfg zero, zero, zero, 1
0012d0  0d140000  ewcoeff_cfg r8, zero, zero, 0
0012d4  8d060006  ew_cfg r13, zero, zero, 3
0012d8  0d020226  ew_cfg r4, r4, zero, 19
0012dc  0d000904  ew_cfg zero, r18, zero, 2
0012e0  8d300008  ewcoeff_nlf_cfg r1, 4
0012e4  9b9009d0  ori r1, r19, 3328
0012e8  0d000904  ew_cfg zero, r18, zero, 2
0012ec  cdd01000  hp_ssmul r1, r1, r1, 0
0012f0  9b9008e8  ori r1, r17, 3712
0012f4  0d000904  ew_cfg zero, r18, zero, 2
0012f8  8d300008  ewcoeff_nlf_cfg r1, 4
0012fc  9b9009d8  ori r1, r19, 3456
001300  0d000904  ew_cfg zero, r18, zero, 2
001304  cdd01000  hp_ssmul r1, r1, r1, 0
001308  9b9008f0  ori r1, r17, 3840
00130c  0d000026  ew_cfg zero, zero, zero, 19
001310  1d100200  unlock r4
001314  1d000200  lock zero, r4
001318  0d000002  ew_cfg zero, zero, zero, 1
00131c  0d140000  ewcoeff_cfg r8, zero, zero, 0
001320  8d060006  ew_cfg r13, zero, zero, 3
001324  0d020226  ew_cfg r4, r4, zero, 19
001328  0d000904  ew_cfg zero, r18, zero, 2
00132c  8d300008  ewcoeff_nlf_cfg r1, 4
001330  9b9009e0  ori r1, r19, 3584
001334  0d000904  ew_cfg zero, r18, zero, 2
001338  cdd01000  hp_ssmul r1, r1, r1, 0
00133c  9b9008f8  ori r1, r17, 3968
001340  ab380200  lui r17, 35
001344  0d000904  ew_cfg zero, r18, zero, 2
001348  8d300008  ewcoeff_nlf_cfg r1, 4
00134c  9b9009e8  ori r1, r19, 3712
001350  0d000904  ew_cfg zero, r18, zero, 2
001354  cdd01000  hp_ssmul r1, r1, r1, 0
001358  9b9009f0  ori r1, r19, 3840
00135c  0d000026  ew_cfg zero, zero, zero, 19
001360  1d100200  unlock r4
001364  1d000200  lock zero, r4
001368  0d000002  ew_cfg zero, zero, zero, 1
00136c  0d140000  ewcoeff_cfg r8, zero, zero, 0
001370  8d060006  ew_cfg r13, zero, zero, 3
001374  0d020226  ew_cfg r4, r4, zero, 19
001378  0d000904  ew_cfg zero, r18, zero, 2
00137c  8d380008  ewcoeff_nlf_cfg r17, 4
001380  0d000904  ew_cfg zero, r18, zero, 2
001384  cdd01000  hp_ssmul r1, r1, r1, 0
001388  9b900808  ori r1, r17, 128
00138c  0d000904  ew_cfg zero, r18, zero, 2
001390  8d300008  ewcoeff_nlf_cfg r1, 4
001394  9b9009f8  ori r1, r19, 3968
001398  ab790000  lui r19, 7
00139c  0d000904  ew_cfg zero, r18, zero, 2
0013a0  cdd01000  hp_ssmul r1, r1, r1, 0
0013a4  9b900810  ori r1, r17, 256
0013a8  0d000026  ew_cfg zero, zero, zero, 19
0013ac  1d100200  unlock r4
0013b0  1d000200  lock zero, r4
0013b4  0d000002  ew_cfg zero, zero, zero, 1
0013b8  0d140000  ewcoeff_cfg r8, zero, zero, 0
0013bc  8d060006  ew_cfg r13, zero, zero, 3
0013c0  0d020226  ew_cfg r4, r4, zero, 19
0013c4  0d000904  ew_cfg zero, r18, zero, 2
0013c8  8d300008  ewcoeff_nlf_cfg r1, 4
0013cc  9b900818  ori r1, r17, 384
0013d0  0d000904  ew_cfg zero, r18, zero, 2
0013d4  cdd93901  hp_ssmul r19, r19, r19, 0
0013d8  0d000904  ew_cfg zero, r18, zero, 2
0013dc  8d300008  ewcoeff_nlf_cfg r1, 4
0013e0  9b900908  ori r1, r19, 128
0013e4  0d000904  ew_cfg zero, r18, zero, 2
0013e8  cdd01000  hp_ssmul r1, r1, r1, 0
0013ec  9b900820  ori r1, r17, 512
0013f0  0d000026  ew_cfg zero, zero, zero, 19
0013f4  1d100200  unlock r4
0013f8  1d000200  lock zero, r4
0013fc  0d000002  ew_cfg zero, zero, zero, 1
001400  0d140000  ewcoeff_cfg r8, zero, zero, 0
001404  8d060006  ew_cfg r13, zero, zero, 3
001408  0d020226  ew_cfg r4, r4, zero, 19
00140c  0d000904  ew_cfg zero, r18, zero, 2
001410  8d300008  ewcoeff_nlf_cfg r1, 4
001414  9b900910  ori r1, r19, 256
001418  0d000904  ew_cfg zero, r18, zero, 2
00141c  cdd01000  hp_ssmul r1, r1, r1, 0
001420  9b900828  ori r1, r17, 640
001424  0d000904  ew_cfg zero, r18, zero, 2
001428  8d300008  ewcoeff_nlf_cfg r1, 4
00142c  9b900918  ori r1, r19, 384
001430  0d000904  ew_cfg zero, r18, zero, 2
001434  cdd01000  hp_ssmul r1, r1, r1, 0
001438  9b900830  ori r1, r17, 768
00143c  0d000026  ew_cfg zero, zero, zero, 19
001440  1d100200  unlock r4
001444  1d000200  lock zero, r4
001448  0d000002  ew_cfg zero, zero, zero, 1
00144c  0d140000  ewcoeff_cfg r8, zero, zero, 0
001450  8d060006  ew_cfg r13, zero, zero, 3
001454  0d020226  ew_cfg r4, r4, zero, 19
001458  0d000904  ew_cfg zero, r18, zero, 2
00145c  8d300008  ewcoeff_nlf_cfg r1, 4
001460  9b900920  ori r1, r19, 512
001464  0d000904  ew_cfg zero, r18, zero, 2
001468  cdd01000  hp_ssmul r1, r1, r1, 0
00146c  9b900838  ori r1, r17, 896
001470  0d000904  ew_cfg zero, r18, zero, 2
001474  8d300008  ewcoeff_nlf_cfg r1, 4
001478  9b900928  ori r1, r19, 640
00147c  0d000904  ew_cfg zero, r18, zero, 2
001480  cdd01000  hp_ssmul r1, r1, r1, 0
001484  9b900840  ori r1, r17, 1024
001488  0d000026  ew_cfg zero, zero, zero, 19
00148c  1d100200  unlock r4
001490  1d000200  lock zero, r4
001494  0d000002  ew_cfg zero, zero, zero, 1
001498  0d140000  ewcoeff_cfg r8, zero, zero, 0
00149c  8d060006  ew_cfg r13, zero, zero, 3
0014a0  0d020226  ew_cfg r4, r4, zero, 19
0014a4  0d000904  ew_cfg zero, r18, zero, 2
0014a8  8d300008  ewcoeff_nlf_cfg r1, 4
0014ac  9b900930  ori r1, r19, 768
0014b0  0d000904  ew_cfg zero, r18, zero, 2
0014b4  cdd01000  hp_ssmul r1, r1, r1, 0
0014b8  9b900848  ori r1, r17, 1152
0014bc  0d000904  ew_cfg zero, r18, zero, 2
0014c0  8d300008  ewcoeff_nlf_cfg r1, 4
0014c4  9b900938  ori r1, r19, 896
0014c8  0d000904  ew_cfg zero, r18, zero, 2
0014cc  cdd01000  hp_ssmul r1, r1, r1, 0
0014d0  9b900850  ori r1, r17, 1280
0014d4  0d000026  ew_cfg zero, zero, zero, 19
0014d8  1d100200  unlock r4
0014dc  1d000200  lock zero, r4
0014e0  0d000002  ew_cfg zero, zero, zero, 1
0014e4  0d140000  ewcoeff_cfg r8, zero, zero, 0
0014e8  8d060006  ew_cfg r13, zero, zero, 3
0014ec  0d020226  ew_cfg r4, r4, zero, 19
0014f0  0d000904  ew_cfg zero, r18, zero, 2
0014f4  8d300008  ewcoeff_nlf_cfg r1, 4
0014f8  9b900940  ori r1, r19, 1024
0014fc  0d000904  ew_cfg zero, r18, zero, 2
001500  cdd01000  hp_ssmul r1, r1, r1, 0
001504  9b900858  ori r1, r17, 1408
001508  0d000904  ew_cfg zero, r18, zero, 2
00150c  8d300008  ewcoeff_nlf_cfg r1, 4
001510  9b900948  ori r1, r19, 1152
001514  0d000904  ew_cfg zero, r18, zero, 2
001518  cdd01000  hp_ssmul r1, r1, r1, 0
00151c  9b900860  ori r1, r17, 1536
001520  0d000026  ew_cfg zero, zero, zero, 19
001524  1d100200  unlock r4
001528  1d000200  lock zero, r4
00152c  0d000002  ew_cfg zero, zero, zero, 1
001530  0d140000  ewcoeff_cfg r8, zero, zero, 0
001534  8d060006  ew_cfg r13, zero, zero, 3
001538  0d020226  ew_cfg r4, r4, zero, 19
00153c  0d000904  ew_cfg zero, r18, zero, 2
001540  8d300008  ewcoeff_nlf_cfg r1, 4
001544  9b900950  ori r1, r19, 1280
001548  0d000904  ew_cfg zero, r18, zero, 2
00154c  cdd01000  hp_ssmul r1, r1, r1, 0
001550  9b900868  ori r1, r17, 1664
001554  0d000904  ew_cfg zero, r18, zero, 2
001558  8d300008  ewcoeff_nlf_cfg r1, 4
00155c  9b900958  ori r1, r19, 1408
001560  0d000904  ew_cfg zero, r18, zero, 2
001564  cdd01000  hp_ssmul r1, r1, r1, 0
001568  9b900870  ori r1, r17, 1792
00156c  0d000026  ew_cfg zero, zero, zero, 19
001570  1d100200  unlock r4
001574  1d000200  lock zero, r4
001578  0d000002  ew_cfg zero, zero, zero, 1
00157c  0d140000  ewcoeff_cfg r8, zero, zero, 0
001580  8d060006  ew_cfg r13, zero, zero, 3
001584  0d020226  ew_cfg r4, r4, zero, 19
001588  0d000904  ew_cfg zero, r18, zero, 2
00158c  8d300008  ewcoeff_nlf_cfg r1, 4
001590  9b900960  ori r1, r19, 1536
001594  0d000904  ew_cfg zero, r18, zero, 2
001598  cdd01000  hp_ssmul r1, r1, r1, 0
00159c  9b900878  ori r1, r17, 1920
0015a0  0d000904  ew_cfg zero, r18, zero, 2
0015a4  8d300008  ewcoeff_nlf_cfg r1, 4
0015a8  9b900968  ori r1, r19, 1664
0015ac  0d000904  ew_cfg zero, r18, zero, 2
0015b0  cdd01000  hp_ssmul r1, r1, r1, 0
0015b4  9b900880  ori r1, r17, 2048
0015b8  0d000026  ew_cfg zero, zero, zero, 19
0015bc  1d100200  unlock r4
0015c0  1d000200  lock zero, r4
0015c4  0d000002  ew_cfg zero, zero, zero, 1
0015c8  0d140000  ewcoeff_cfg r8, zero, zero, 0
0015cc  8d060006  ew_cfg r13, zero, zero, 3
0015d0  0d020226  ew_cfg r4, r4, zero, 19
0015d4  0d000904  ew_cfg zero, r18, zero, 2
0015d8  8d300008  ewcoeff_nlf_cfg r1, 4
0015dc  9b900970  ori r1, r19, 1792
0015e0  0d000904  ew_cfg zero, r18, zero, 2
0015e4  cdd01000  hp_ssmul r1, r1, r1, 0
0015e8  9b900888  ori r1, r17, 2176
0015ec  0d000904  ew_cfg zero, r18, zero, 2
0015f0  8d300008  ewcoeff_nlf_cfg r1, 4
0015f4  9b900978  ori r1, r19, 1920
0015f8  0d000904  ew_cfg zero, r18, zero, 2
0015fc  cdd01000  hp_ssmul r1, r1, r1, 0
001600  9b900890  ori r1, r17, 2304
001604  0d000026  ew_cfg zero, zero, zero, 19
001608  1d100200  unlock r4
00160c  1d000200  lock zero, r4
001610  0d000002  ew_cfg zero, zero, zero, 1
001614  0d140000  ewcoeff_cfg r8, zero, zero, 0
001618  8d060006  ew_cfg r13, zero, zero, 3
00161c  0d020226  ew_cfg r4, r4, zero, 19
001620  0d000904  ew_cfg zero, r18, zero, 2
001624  8d300008  ewcoeff_nlf_cfg r1, 4
001628  9b900980  ori r1, r19, 2048
00162c  0d000904  ew_cfg zero, r18, zero, 2
001630  cdd01000  hp_ssmul r1, r1, r1, 0
001634  9b900898  ori r1, r17, 2432
001638  0d000904  ew_cfg zero, r18, zero, 2
00163c  8d300008  ewcoeff_nlf_cfg r1, 4
001640  9b900988  ori r1, r19, 2176
001644  0d000904  ew_cfg zero, r18, zero, 2
001648  cdd01000  hp_ssmul r1, r1, r1, 0
00164c  9b9008a0  ori r1, r17, 2560
001650  0d000026  ew_cfg zero, zero, zero, 19
001654  1d100200  unlock r4
001658  1d000200  lock zero, r4
00165c  0d000002  ew_cfg zero, zero, zero, 1
001660  0d140000  ewcoeff_cfg r8, zero, zero, 0
001664  8d060006  ew_cfg r13, zero, zero, 3
001668  0d020226  ew_cfg r4, r4, zero, 19
00166c  0d000904  ew_cfg zero, r18, zero, 2
001670  8d300008  ewcoeff_nlf_cfg r1, 4
001674  9b900990  ori r1, r19, 2304
001678  0d000904  ew_cfg zero, r18, zero, 2
00167c  cdd01000  hp_ssmul r1, r1, r1, 0
001680  9b9008a8  ori r1, r17, 2688
001684  0d000904  ew_cfg zero, r18, zero, 2
001688  8d300008  ewcoeff_nlf_cfg r1, 4
00168c  9b900998  ori r1, r19, 2432
001690  0d000904  ew_cfg zero, r18, zero, 2
001694  cdd01000  hp_ssmul r1, r1, r1, 0
001698  9b9008b0  ori r1, r17, 2816
00169c  0d000026  ew_cfg zero, zero, zero, 19
0016a0  1d100200  unlock r4
0016a4  1d000200  lock zero, r4
0016a8  0d000002  ew_cfg zero, zero, zero, 1
0016ac  0d140000  ewcoeff_cfg r8, zero, zero, 0
0016b0  8d060006  ew_cfg r13, zero, zero, 3
0016b4  0d020226  ew_cfg r4, r4, zero, 19
0016b8  0d000904  ew_cfg zero, r18, zero, 2
0016bc  8d300008  ewcoeff_nlf_cfg r1, 4
0016c0  9b9009a0  ori r1, r19, 2560
0016c4  0d000904  ew_cfg zero, r18, zero, 2
0016c8  cdd01000  hp_ssmul r1, r1, r1, 0
0016cc  9b9008b8  ori r1, r17, 2944
0016d0  0d000904  ew_cfg zero, r18, zero, 2
0016d4  8d300008  ewcoeff_nlf_cfg r1, 4
0016d8  9b9009a8  ori r1, r19, 2688
0016dc  0d000904  ew_cfg zero, r18, zero, 2
0016e0  cdd01000  hp_ssmul r1, r1, r1, 0
0016e4  9b9008c0  ori r1, r17, 3072
0016e8  0d000026  ew_cfg zero, zero, zero, 19
0016ec  1d100200  unlock r4
0016f0  1d000200  lock zero, r4
0016f4  0d000002  ew_cfg zero, zero, zero, 1
0016f8  0d140000  ewcoeff_cfg r8, zero, zero, 0
0016fc  8d060006  ew_cfg r13, zero, zero, 3
001700  0d020226  ew_cfg r4, r4, zero, 19
001704  0d000904  ew_cfg zero, r18, zero, 2
001708  8d300008  ewcoeff_nlf_cfg r1, 4
00170c  9b9009b0  ori r1, r19, 2816
001710  0d000904  ew_cfg zero, r18, zero, 2
001714  cdd01000  hp_ssmul r1, r1, r1, 0
001718  9b9008c8  ori r1, r17, 3200
00171c  0d000904  ew_cfg zero, r18, zero, 2
001720  8d300008  ewcoeff_nlf_cfg r1, 4
001724  9b9009b8  ori r1, r19, 2944
001728  0d000904  ew_cfg zero, r18, zero, 2
00172c  cdd01000  hp_ssmul r1, r1, r1, 0
001730  9b9008d0  ori r1, r17, 3328
001734  0d000026  ew_cfg zero, zero, zero, 19
001738  1d100200  unlock r4
00173c  1d000200  lock zero, r4
001740  0d000002  ew_cfg zero, zero, zero, 1
001744  0d140000  ewcoeff_cfg r8, zero, zero, 0
001748  8d060006  ew_cfg r13, zero, zero, 3
00174c  0d020226  ew_cfg r4, r4, zero, 19
001750  0d000904  ew_cfg zero, r18, zero, 2
001754  8d300008  ewcoeff_nlf_cfg r1, 4
001758  9b9009c0  ori r1, r19, 3072
00175c  0d000904  ew_cfg zero, r18, zero, 2
001760  cdd01000  hp_ssmul r1, r1, r1, 0
001764  9b9008d8  ori r1, r17, 3456
001768  0d000904  ew_cfg zero, r18, zero, 2
00176c  8d300008  ewcoeff_nlf_cfg r1, 4
001770  9b9009c8  ori r1, r19, 3200
001774  0d000904  ew_cfg zero, r18, zero, 2
001778  cdd01000  hp_ssmul r1, r1, r1, 0
00177c  9b9008e0  ori r1, r17, 3584
001780  0d000026  ew_cfg zero, zero, zero, 19
001784  1d100200  unlock r4
001788  1d000200  lock zero, r4
00178c  0d000002  ew_cfg zero, zero, zero, 1
001790  0d140000  ewcoeff_cfg r8, zero, zero, 0
001794  8d060006  ew_cfg r13, zero, zero, 3
001798  0d020226  ew_cfg r4, r4, zero, 19
00179c  0d000904  ew_cfg zero, r18, zero, 2
0017a0  8d300008  ewcoeff_nlf_cfg r1, 4
0017a4  9b9009d0  ori r1, r19, 3328
0017a8  0d000904  ew_cfg zero, r18, zero, 2
0017ac  cdd01000  hp_ssmul r1, r1, r1, 0
0017b0  9b9008e8  ori r1, r17, 3712
0017b4  0d000904  ew_cfg zero, r18, zero, 2
0017b8  8d300008  ewcoeff_nlf_cfg r1, 4
0017bc  9b9009d8  ori r1, r19, 3456
0017c0  0d000904  ew_cfg zero, r18, zero, 2
0017c4  cdd01000  hp_ssmul r1, r1, r1, 0
0017c8  9b9008f0  ori r1, r17, 3840
0017cc  0d000026  ew_cfg zero, zero, zero, 19
0017d0  1d100200  unlock r4
0017d4  1d000200  lock zero, r4
0017d8  0d000002  ew_cfg zero, zero, zero, 1
0017dc  0d140000  ewcoeff_cfg r8, zero, zero, 0
0017e0  8d060006  ew_cfg r13, zero, zero, 3
0017e4  0d020226  ew_cfg r4, r4, zero, 19
0017e8  0d000904  ew_cfg zero, r18, zero, 2
0017ec  8d300008  ewcoeff_nlf_cfg r1, 4
0017f0  9b9009e0  ori r1, r19, 3584
0017f4  0d000904  ew_cfg zero, r18, zero, 2
0017f8  cdd01000  hp_ssmul r1, r1, r1, 0
0017fc  9b9008f8  ori r1, r17, 3968
001800  ab480200  lui r17, 36
001804  0d000904  ew_cfg zero, r18, zero, 2
001808  8d300008  ewcoeff_nlf_cfg r1, 4
00180c  9b9009e8  ori r1, r19, 3712
001810  0d000904  ew_cfg zero, r18, zero, 2
001814  cdd01000  hp_ssmul r1, r1, r1, 0
001818  9b9009f0  ori r1, r19, 3840
00181c  0d000026  ew_cfg zero, zero, zero, 19
001820  1d100200  unlock r4
001824  1d000200  lock zero, r4
001828  0d000002  ew_cfg zero, zero, zero, 1
00182c  0d140000  ewcoeff_cfg r8, zero, zero, 0
001830  8d060006  ew_cfg r13, zero, zero, 3
001834  0d020226  ew_cfg r4, r4, zero, 19
001838  0d000904  ew_cfg zero, r18, zero, 2
00183c  8d380008  ewcoeff_nlf_cfg r17, 4
001840  0d000904  ew_cfg zero, r18, zero, 2
001844  cdd01000  hp_ssmul r1, r1, r1, 0
001848  9b900808  ori r1, r17, 128
00184c  0d000904  ew_cfg zero, r18, zero, 2
001850  8d300008  ewcoeff_nlf_cfg r1, 4
001854  9b9009f8  ori r1, r19, 3968
001858  0d000904  ew_cfg zero, r18, zero, 2
00185c  cdd01000  hp_ssmul r1, r1, r1, 0
001860  9f403000  addli r1, zero, 28
001864  0d000026  ew_cfg zero, zero, zero, 19
001868  1d100200  unlock r4
00186c  7d000300  xsignal r6, 0
001870  7d900000  xwait r1, 0
001874  1d000200  lock zero, r4
001878  0d000002  ew_cfg zero, zero, zero, 1
00187c  e3400ffe  loadli.w r1,  -252(r30)
001880  63030ffe  loadli.w r6,  -256(r30)
001884  0d131000  ewcoeff_cfg r6, zero, r1, 0
001888  9b900810  ori r1, r17, 256
00188c  0d000804  ew_cfg zero, r16, zero, 2
001890  0d020006  ew_cfg r4, zero, zero, 3
001894  0d020226  ew_cfg r4, r4, zero, 19
001898  ad803100  dsmadd r1, r3, r3, 0
00189c  0d000026  ew_cfg zero, zero, zero, 19
0018a0  1d100200  unlock r4
0018a4  1d000200  lock zero, r4
0018a8  0d000002  ew_cfg zero, zero, zero, 1
0018ac  0d108000  ewcoeff_cfg zero, zero, r8, 0
0018b0  0d000804  ew_cfg zero, r16, zero, 2
0018b4  0d020006  ew_cfg r4, zero, zero, 3
0018b8  0d024226  ew_cfg r4, r4, r4, 19
0018bc  ad903000  dsmul r1, r1, r3, 0
0018c0  0d000026  ew_cfg zero, zero, zero, 19
0018c4  1d100200  unlock r4
0018c8  1d000200  lock zero, r4
0018cc  0d000002  ew_cfg zero, zero, zero, 1
0018d0  6343fffd  loadli.w r6,  -260(r30)
0018d4  0d146000  ewcoeff_cfg r8, zero, r6, 0
0018d8  0d000804  ew_cfg zero, r16, zero, 2
0018dc  0d020006  ew_cfg r4, zero, zero, 3
0018e0  0d020226  ew_cfg r4, r4, zero, 19
0018e4  ad801000  dsmadd r1, r1, r1, 0
0018e8  0d000026  ew_cfg zero, zero, zero, 19
0018ec  1d100200  unlock r4
0018f0  1d000200  lock zero, r4
0018f4  0d000002  ew_cfg zero, zero, zero, 1
0018f8  0d108000  ewcoeff_cfg zero, zero, r8, 0
0018fc  0d000804  ew_cfg zero, r16, zero, 2
001900  0d020006  ew_cfg r4, zero, zero, 3
001904  0d024226  ew_cfg r4, r4, r4, 19
001908  ad903000  dsmul r1, r1, r3, 0
00190c  0d000026  ew_cfg zero, zero, zero, 19
001910  1d100200  unlock r4
001914  1d000200  lock zero, r4
001918  0d000002  ew_cfg zero, zero, zero, 1
00191c  6303fffd  loadli.w r6,  -264(r30)
001920  0d146000  ewcoeff_cfg r8, zero, r6, 0
001924  0d000804  ew_cfg zero, r16, zero, 2
001928  0d020006  ew_cfg r4, zero, zero, 3
00192c  0d020226  ew_cfg r4, r4, zero, 19
001930  ad801000  dsmadd r1, r1, r1, 0
001934  0d000026  ew_cfg zero, zero, zero, 19
001938  1d100200  unlock r4
00193c  1d000200  lock zero, r4
001940  0d000002  ew_cfg zero, zero, zero, 1
001944  0d108000  ewcoeff_cfg zero, zero, r8, 0
001948  0d000804  ew_cfg zero, r16, zero, 2
00194c  0d020006  ew_cfg r4, zero, zero, 3
001950  0d024226  ew_cfg r4, r4, r4, 19
001954  ad903000  dsmul r1, r1, r3, 0
001958  0d000026  ew_cfg zero, zero, zero, 19
00195c  1d100200  unlock r4
001960  1d000200  lock zero, r4
001964  0d000002  ew_cfg zero, zero, zero, 1
001968  6343effd  loadli.w r6,  -268(r30)
00196c  0d146000  ewcoeff_cfg r8, zero, r6, 0
001970  1f430000  addli r6, zero, 4
001974  0d000804  ew_cfg zero, r16, zero, 2
001978  0d020006  ew_cfg r4, zero, zero, 3
00197c  0d020226  ew_cfg r4, r4, zero, 19
001980  ad801000  dsmadd r1, r1, r1, 0
001984  0d000026  ew_cfg zero, zero, zero, 19
001988  1d100200  unlock r4
00198c  1d000200  lock zero, r4
001990  0d000002  ew_cfg zero, zero, zero, 1
001994  0d108000  ewcoeff_cfg zero, zero, r8, 0
001998  0d000804  ew_cfg zero, r16, zero, 2
00199c  0d020006  ew_cfg r4, zero, zero, 3
0019a0  0d024226  ew_cfg r4, r4, r4, 19
0019a4  ad903000  dsmul r1, r1, r3, 0
0019a8  9f013000  addli r3, zero, 24
0019ac  0d000026  ew_cfg zero, zero, zero, 19
0019b0  1d100200  unlock r4
0019b4  7d000300  xsignal r6, 0
0019b8  7d900100  xwait r3, 0
0019bc  9f613000  addli r3, zero, 30
0019c0  7d900100  xwait r3, 0
0019c4  1d000200  lock zero, r4
0019c8  0d000002  ew_cfg zero, zero, zero, 1
0019cc  0d108000  ewcoeff_cfg zero, zero, r8, 0
0019d0  0d000804  ew_cfg zero, r16, zero, 2
0019d4  0d020006  ew_cfg r4, zero, zero, 3
0019d8  0d024226  ew_cfg r4, r4, r4, 19
0019dc  e3012ffe  loadli.w r3,  -240(r30)
0019e0  ad11a500  dsmul r3, r10, r10, 0
0019e4  9f712000  addli r3, zero, 23
0019e8  0d000026  ew_cfg zero, zero, zero, 19
0019ec  1d100200  unlock r4
0019f0  7d800100  xsignal r3, 0
0019f4  9f513000  addli r3, zero, 29
0019f8  7d800100  xsignal r3, 0
0019fc  7d100900  xwait r18, 0
001a00  1d000200  lock zero, r4
001a04  9f011000  addli r3, zero, 8
001a08  0d000002  ew_cfg zero, zero, zero, 1
001a0c  0d108000  ewcoeff_cfg zero, zero, r8, 0
001a10  8d060024  ew_cfg r13, zero, zero, 18
001a14  8d010014  ew_cfg r3, zero, zero, 10
001a18  e301effd  loadli.w r3,  -272(r30)
001a1c  0d823616  ew_cfg r4, r13, r3, 11
001a20  9f310000  addli r3, zero, 3
001a24  0d00301a  ew_cfg zero, zero, r3, 13
001a28  abc17fc1  lui r3, 792572
001a2c  8d01031c  ew_cfg r3, r6, zero, 14
001a30  0d00001e  ew_cfg zero, zero, zero, 15
001a34  0d000804  ew_cfg zero, r16, zero, 2
001a38  0d020006  ew_cfg r4, zero, zero, 3
001a3c  0d024226  ew_cfg r4, r4, r4, 19
001a40  e341ffff  loadli.w r3,  -4(r30)
001a44  ad901100  dsmul r1, r3, r1, 0
001a48  9f303000  addli r1, zero, 27
001a4c  0d000014  ew_cfg zero, zero, zero, 10
001a50  0d000024  ew_cfg zero, zero, zero, 18
001a54  0d000026  ew_cfg zero, zero, zero, 19
001a58  1d100200  unlock r4
001a5c  7d800000  xsignal r1, 0
001a60  9f104000  addli r1, zero, 33
001a64  7d900000  xwait r1, 0
001a68  9f504000  addli r1, zero, 37
001a6c  7d900000  xwait r1, 0
001a70  1d000200  lock zero, r4
001a74  ab0080bf  lui r1, 784384
001a78  0d000002  ew_cfg zero, zero, zero, 1
001a7c  8d100000  ewcoeff_cfg r1, zero, zero, 0
001a80  0d000804  ew_cfg zero, r16, zero, 2
001a84  0d020006  ew_cfg r4, zero, zero, 3
001a88  0d020226  ew_cfg r4, r4, zero, 19
001a8c  e340affe  loadli.w r1,  -172(r30)
001a90  ad811000  dsmadd r3, r1, r1, 0
001a94  9f004000  addli r1, zero, 32
001a98  9f415000  addli r3, zero, 44
001a9c  0d000026  ew_cfg zero, zero, zero, 19
001aa0  1d100200  unlock r4
001aa4  7d800000  xsignal r1, 0
001aa8  9f604000  addli r1, zero, 38
001aac  7d800000  xsignal r1, 0
001ab0  9f005000  addli r1, zero, 40
001ab4  7d900000  xwait r1, 0
001ab8  1d000200  lock zero, r4
001abc  0d000002  ew_cfg zero, zero, zero, 1
001ac0  0d148000  ewcoeff_cfg r8, zero, r8, 0
001ac4  0d000804  ew_cfg zero, r16, zero, 2
001ac8  0d020006  ew_cfg r4, zero, zero, 3
001acc  0d020226  ew_cfg r4, r4, zero, 19
001ad0  e300efff  loadli.w r1,  -16(r30)
001ad4  ad801000  dsmadd r1, r1, r1, 0
001ad8  0d000026  ew_cfg zero, zero, zero, 19
001adc  1d100200  unlock r4
001ae0  7d900100  xwait r3, 0
001ae4  1d000200  lock zero, r4
001ae8  0d000002  ew_cfg zero, zero, zero, 1
001aec  0d10e000  ewcoeff_cfg zero, zero, r14, 0
001af0  0d000804  ew_cfg zero, r16, zero, 2
001af4  0d020006  ew_cfg r4, zero, zero, 3
001af8  0d024226  ew_cfg r4, r4, r4, 19
001afc  e341cfff  loadli.w r3,  -28(r30)
001b00  ad911400  dsmul r3, r9, r1, 0
001b04  9f002000  addli r1, zero, 16
001b08  0d000026  ew_cfg zero, zero, zero, 19
001b0c  1d100200  unlock r4
001b10  7d800000  xsignal r1, 0
001b14  9f105000  addli r1, zero, 41
001b18  7d800000  xsignal r1, 0
001b1c  9f305000  addli r1, zero, 43
001b20  7d800000  xsignal r1, 0
001b24  3d000000  xfence
001b28  9f70f001  addli r1, zero, 255
001b2c  00a00300  mfence { lm, sm, gm }
001b30  80a20004  csr_set csr5, r1
001b34  00e00200  sync_core
001b38  37870306  beq r7, zero, 3520
001b3c  37fe0a06  beq r21, zero, 3996
001b40  9f001000  addli r1, zero, 8
001b44  3d000000  xfence
001b48  1f0c0a00  addli r24, r20, 0
001b4c  00a00300  mfence { lm, sm, gm }
001b50  b3810028  zext_int2long r[4:5], r1
001b54  5b040000  j 32
001b58  9f701000  addli r1, zero, 15
001b5c  eb528ffd  load.d r[6:7], -40(r30)
001b60  9f670000  addli r15, zero, 6
001b64  b3810028  zext_int2long r[4:5], r1
001b68  93a03204  setlt.ul r1, r[6:7], r[4:5]
001b6c  a7910200  addli.d r[4:5], r[6:7], 1
001b70  37870004  beq r1, zero, 2496
001b74  97b6f102  sll.d r[14:15], r[4:5], r15
001b78  b3070028  zext_int2long r[16:17], zero
001b7c  733c3ffc  store.d r[4:5], -40(r30)
001b80  5b080000  j 64
001b84  e341dfff  loadli.w r3,  -20(r30)
001b88  a7c70700  addli.d r[16:17], r[16:17], 4
001b8c  e342ffff  loadli.w r5,  -4(r30)
001b90  e343efff  loadli.w r7,  -12(r30)
001b94  13a2b702  setneq.d r4, r[16:17], r[12:13]
001b98  8b913010  add.s r3, r1, r3
001b9c  0b935010  add.s r6, r1, r5
001ba0  73e01101  stores.w r17, 0(r3)
001ba4  e301ffff  loadli.w r3,  -8(r30)
001ba8  7360a300  stores.w r10, 0(r6)
001bac  8b913010  add.s r3, r1, r3
001bb0  8b907010  add.s r1, r1, r7
001bb4  73e07101  stores.w r23, 0(r3)
001bb8  73e04001  stores.w r20, 0(r1)
001bbc  377e02fe  beq r4, zero, -100
001bc0  8ba1d710  add.ul r[4:5], r[16:17], r[14:15]
001bc4  6343cfff  loadli.w r6,  -28(r30)
001bc8  9bb02100  slli r1, r3, 2
001bcc  e301dfff  loadli.w r3,  -24(r30)
001bd0  6302efff  loadli.w r4,  -16(r30)
001bd4  0b9e6010  add.s r28, r1, r6
001bd8  8b913010  add.s r3, r1, r3
001bdc  0b924010  add.s r4, r1, r4
001be0  6f43ce00  loads.w r6, 12(r28)
001be4  ef4a8e00  loads.w r21, 8(r28)
001be8  efc30100  loads.w r7, 0(r3)
001bec  6f440200  loads.w r8, 0(r4)
001bf0  6fca4100  loads.w r20, 4(r3)
001bf4  efcb8100  loads.w r23, 8(r3)
001bf8  6fc9c100  loads.w r18, 12(r3)
001bfc  ef4d4200  loads.w r27, 4(r4)
001c00  6f4d8200  loads.w r26, 8(r4)
001c04  ef49c200  loads.w r19, 12(r4)
001c08  97819301  and r3, r7, r25
001c0c  17029401  and r4, r8, r25
001c10  6f444e00  loads.w r8, 4(r28)
001c14  93832100  seteq r7, r3, r2
001c18  93880100  seteq r17, r3, zero
001c1c  93040200  seteq r9, r4, zero
001c20  13052200  seteq r10, r4, r2
001c24  8b814148  max.u r3, r3, r4
001c28  93013104  setlt.u r3, r2, r3
001c2c  17829300  and r4, r7, r9
001c30  9783a800  and r7, r17, r10
001c34  ab08c07f  lui r17, 523264
001c38  2b05c07f  lui r10, 523264
001c3c  17127200  or r4, r4, r7
001c40  97914100  or r3, r3, r4
001c44  3ba00100  bneq r3, zero, 8
001c48  6f450e00  loads.w r10, 0(r28)
001c4c  97019a01  and r3, r20, r25
001c50  17829d01  and r4, r27, r25
001c54  93832100  seteq r7, r3, r2
001c58  138b0100  seteq r22, r3, zero
001c5c  93040200  seteq r9, r4, zero
001c60  130a2200  seteq r20, r4, r2
001c64  8b814148  max.u r3, r3, r4
001c68  93013104  setlt.u r3, r2, r3
001c6c  17829300  and r4, r7, r9
001c70  97034b01  and r7, r22, r20
001c74  2b0ac07f  lui r20, 523264
001c78  17127200  or r4, r4, r7
001c7c  97914100  or r3, r3, r4
001c80  3ba00100  bneq r3, zero, 8
001c84  1f0a0400  addli r20, r8, 0
001c88  97819b01  and r3, r23, r25
001c8c  17029d01  and r4, r26, r25
001c90  ab0bc07f  lui r23, 523264
001c94  93832100  seteq r7, r3, r2
001c98  138b0100  seteq r22, r3, zero
001c9c  13040200  seteq r8, r4, zero
001ca0  93042200  seteq r9, r4, r2
001ca4  8b814148  max.u r3, r3, r4
001ca8  93013104  setlt.u r3, r2, r3
001cac  17828300  and r4, r7, r8
001cb0  97039b00  and r7, r22, r9
001cb4  17127200  or r4, r4, r7
001cb8  97914100  or r3, r3, r4
001cbc  3ba00100  bneq r3, zero, 8
001cc0  9f8b0a00  addli r23, r21, 0
001cc4  97019901  and r3, r18, r25
001cc8  17829901  and r4, r19, r25
001ccc  93832100  seteq r7, r3, r2
001cd0  13890100  seteq r18, r3, zero
001cd4  13040200  seteq r8, r4, zero
001cd8  93042200  seteq r9, r4, r2
001cdc  8b814148  max.u r3, r3, r4
001ce0  93013104  setlt.u r3, r2, r3
001ce4  17828300  and r4, r7, r8
001ce8  97039900  and r7, r18, r9
001cec  17127200  or r4, r4, r7
001cf0  97914100  or r3, r3, r4
001cf4  3bca01fe  bneq r3, zero, -368
001cf8  9f080300  addli r17, r6, 0
001cfc  5bd1ffff  j -376
001d00  9736f402  sll.d r[14:15], r[9:10], r15
001d04  9f018000  addli r3, zero, 64
001d08  9f0a0000  addli r21, zero, 0
001d0c  9f300000  addli r1, zero, 3
001d10  7330dff2  store.d r[14:15], -224(r30)
001d14  3f96700a  blt.s r1, r7, 5508
001d18  9f100000  addli r1, zero, 1
001d1c  b7f7130a  beq r7, r1, 5628
001d20  9f200000  addli r1, zero, 2
001d24  37bd130a  beq r7, r1, 5964
001d28  9f300000  addli r1, zero, 3
001d2c  bbda130a  bneq r7, r1, 5812
001d30  9f302000  addli r1, zero, 19
001d34  33040028  zext_int2long r[9:10], zero
001d38  7d900000  xwait r1, 0
001d3c  9f103000  addli r1, zero, 25
001d40  a7060400  addli.d r[14:15], r[9:10], 0
001d44  7d900000  xwait r1, 0
001d48  3d000000  xfence
001d4c  00a00300  mfence { lm, sm, gm }
001d50  e341bffe  loadli.w r3,  -164(r30)
001d54  e303bffe  loadli.w r7,  -168(r30)
001d58  9f600000  addli r1, zero, 6
001d5c  a7080400  addli.d r[18:19], r[9:10], 0
001d60  97b71602  sll.d r[16:17], r[14:15], r1
001d64  8ba9f810  add.ul r[20:21], r[18:19], r[16:17]
001d68  a7881800  addli.d r[18:19], r[18:19], 8
001d6c  9bb02900  slli r1, r19, 2
001d70  13a3b802  setneq.d r6, r[18:19], r[12:13]
001d74  0b953010  add.s r10, r1, r3
001d78  8b907010  add.s r1, r1, r7
001d7c  ef49c500  loads.w r19, 12(r10)
001d80  6f4a0500  loads.w r20, 0(r10)
001d84  ef4a4500  loads.w r21, 4(r10)
001d88  ef4b8500  loads.w r23, 8(r10)
001d8c  6f4d0501  loads.w r26, 16(r10)
001d90  ef4d4501  loads.w r27, 20(r10)
001d94  6f4e8501  loads.w r28, 24(r10)
001d98  6f45c501  loads.w r10, 28(r10)
001d9c  8be90960  abs.f r19, r19
001da0  0b650560  abs.f r10, r10
001da4  73e63001  stores.w r19, 12(r1)
001da8  8b690a60  abs.f r19, r20
001dac  0bea0a60  abs.f r20, r21
001db0  8bea0b60  abs.f r21, r23
001db4  8b6b0d60  abs.f r23, r26
001db8  0bed0d60  abs.f r26, r27
001dbc  8b6d0e60  abs.f r27, r28
001dc0  73eea000  stores.w r10, 28(r1)
001dc4  73e45001  stores.w r21, 8(r1)
001dc8  73e24001  stores.w r20, 4(r1)
001dcc  73e03001  stores.w r19, 0(r1)
001dd0  73ecb001  stores.w r27, 24(r1)
001dd4  73eaa001  stores.w r26, 20(r1)
001dd8  73e87001  stores.w r23, 16(r1)
001ddc  3b2e03fe  bneq r6, zero, -120
001de0  eb578ff4  load.d r[16:17], -184(r30)
001de4  93a0f604  setlt.ul r1, r[14:15], r[16:17]
001de8  a7960600  addli.d r[14:15], r[14:15], 1
001dec  9f670000  addli r15, zero, 6
001df0  bbad00fe  bneq r1, zero, -152
001df4  1f442000  addli r8, zero, 20
001df8  9f003000  addli r1, zero, 24
001dfc  00200100  mfence { sm }
001e00  9f210000  addli r3, zero, 2
001e04  2b0380bf  lui r6, 784384
001e08  1f72f00f  addli r4, zero, 2047
001e0c  7d000400  xsignal r8, 0
001e10  7d800000  xsignal r1, 0
001e14  9f602000  addli r1, zero, 22
001e18  7d800000  xsignal r1, 0
001e1c  9f503000  addli r1, zero, 29
001e20  7d900000  xwait r1, 0
001e24  9f404000  addli r1, zero, 36
001e28  7d900000  xwait r1, 0
001e2c  1d800100  lock zero, r3
001e30  0d000002  ew_cfg zero, zero, zero, 1
001e34  0d130000  ewcoeff_cfg r6, zero, zero, 0
001e38  0d000204  ew_cfg zero, r4, zero, 2
001e3c  8d010006  ew_cfg r3, zero, zero, 3
001e40  8d810126  ew_cfg r3, r3, zero, 19
001e44  e3002ffe  loadli.w r1,  -240(r30)
001e48  e342ffff  loadli.w r5,  -4(r30)
001e4c  ad821000  dsmadd r5, r1, r1, 0
001e50  9f603000  addli r1, zero, 30
001e54  0d000026  ew_cfg zero, zero, zero, 19
001e58  1d900100  unlock r3
001e5c  7d800000  xsignal r1, 0
001e60  9f104000  addli r1, zero, 33
001e64  7d800000  xsignal r1, 0
001e68  9f703000  addli r1, zero, 31
001e6c  7d800000  xsignal r1, 0
001e70  9f303000  addli r1, zero, 27
001e74  7d900000  xwait r1, 0
001e78  9f704000  addli r1, zero, 39
001e7c  7d900000  xwait r1, 0
001e80  1d800100  lock zero, r3
001e84  ab00803f  lui r1, 260096
001e88  0d000002  ew_cfg zero, zero, zero, 1
001e8c  0d131000  ewcoeff_cfg r6, zero, r1, 0
001e90  ab400200  lui r1, 36
001e94  0d000204  ew_cfg zero, r4, zero, 2
001e98  8d010006  ew_cfg r3, zero, zero, 3
001e9c  9b900010  ori r1, r1, 256
001ea0  8d810126  ew_cfg r3, r3, zero, 19
001ea4  6342affe  loadli.w r4,  -172(r30)
001ea8  2d821000  dsmadd r4, r1, r1, 0
001eac  9f403000  addli r1, zero, 28
001eb0  0d000026  ew_cfg zero, zero, zero, 19
001eb4  1d900100  unlock r3
001eb8  7d800000  xsignal r1, 0
001ebc  9f504000  addli r1, zero, 37
001ec0  7d800000  xsignal r1, 0
001ec4  9f702000  addli r1, zero, 23
001ec8  7d900100  xwait r3, 0
001ecc  7d100400  xwait r8, 0
001ed0  b3010028  zext_int2long r[4:5], zero
001ed4  7d900000  xwait r1, 0
001ed8  9f004000  addli r1, zero, 32
001edc  7d900000  xwait r1, 0
001ee0  9f604000  addli r1, zero, 38
001ee4  7d900000  xwait r1, 0
001ee8  9f205000  addli r1, zero, 42
001eec  7d900000  xwait r1, 0
001ef0  3d000000  xfence
001ef4  00a00300  mfence { lm, sm, gm }
001ef8  733c3ff2  store.d r[4:5], -200(r30)
001efc  db030000  j 28
001f00  eb518ff4  load.d r[4:5], -184(r30)
001f04  6b540ff4  load.d r[9:10], -192(r30)
001f08  9f670000  addli r15, zero, 6
001f0c  93203404  setlt.ul r1, r[9:10], r[4:5]
001f10  a7110400  addli.d r[4:5], r[9:10], 1
001f14  b793000a  beq r1, zero, 5348
001f18  6b5d8ff3  load.d r[27:28], -200(r30)
001f1c  73303ff4  store.d r[4:5], -192(r30)
001f20  97b1f102  sll.d r[4:5], r[4:5], r15
001f24  73303ff6  store.d r[4:5], -160(r30)
001f28  5b0a0000  j 80
001f2c  e300efff  loadli.w r1,  -16(r30)
001f30  6302afff  loadli.w r4,  -48(r30)
001f34  270d1d00  addli.d r[27:28], r[27:28], 8
001f38  9321bd02  setneq.d r3, r[27:28], r[12:13]
001f3c  8b901710  add.s r1, r15, r1
001f40  73e44000  stores.w r4, 8(r1)
001f44  6302bfff  loadli.w r4,  -40(r30)
001f48  73e69000  stores.w r9, 12(r1)
001f4c  73e05000  stores.w r5, 0(r1)
001f50  73e24000  stores.w r4, 4(r1)
001f54  63028fff  loadli.w r4,  -64(r30)
001f58  73ee4000  stores.w r4, 28(r1)
001f5c  63428fff  loadli.w r4,  -60(r30)
001f60  73ec4000  stores.w r4, 24(r1)
001f64  63029fff  loadli.w r4,  -56(r30)
001f68  73ea4000  stores.w r4, 20(r1)
001f6c  63429fff  loadli.w r4,  -52(r30)
001f70  73e84000  stores.w r4, 16(r1)
001f74  37be01fe  beq r3, zero, -116
001f78  eb510ff6  load.d r[4:5], -160(r30)
001f7c  0b243d10  add.ul r[9:10], r[27:28], r[4:5]
001f80  e341bffe  loadli.w r3,  -164(r30)
001f84  2bc20000  lui r4, 12
001f88  9b372400  slli r15, r8, 2
001f8c  8b907710  add.s r1, r15, r7
001f90  0b943710  add.s r8, r15, r3
001f94  6fc7c700  loads.w r14, 12(r15)
001f98  e343ffff  loadli.w r7,  -4(r30)
001f9c  6fc88700  loads.w r16, 8(r15)
001fa0  efc84700  loads.w r17, 4(r15)
001fa4  6fca0700  loads.w r20, 0(r15)
001fa8  6fc98701  loads.w r18, 24(r15)
001fac  efc18000  loads.w r3, 8(r1)
001fb0  6fc50000  loads.w r10, 0(r1)
001fb4  efc44000  loads.w r9, 4(r1)
001fb8  ef42c400  loads.w r5, 12(r8)
001fbc  6f430400  loads.w r6, 0(r8)
001fc0  9b467701  srli r13, r14, 23
001fc4  67493ffe  storeli.w r3, -108(r30)
001fc8  efc1c000  loads.w r3, 12(r1)
001fcc  e74b5ffe  storeli.w r5, -68(r30)
001fd0  e7493ffe  storeli.w r3, -100(r30)
001fd4  efc10001  loads.w r3, 16(r1)
001fd8  674a3ffe  storeli.w r3, -92(r30)
001fdc  efc14001  loads.w r3, 20(r1)
001fe0  e74a3ffe  storeli.w r3, -84(r30)
001fe4  efc18001  loads.w r3, 24(r1)
001fe8  efc0c001  loads.w r1, 28(r1)
001fec  e70b1ffe  storeli.w r1, -72(r30)
001ff0  9b309700  slli r1, r14, 9
001ff4  674b3ffe  storeli.w r3, -76(r30)
001ff8  938b0000  seteq r23, r1, zero
001ffc  9b80f60f  andi r1, r13, 255
002000  9bb69200  slli r13, r5, 9
002004  1bfcf00f  setlti r24, r1, 255
002008  9bc07201  srli r1, r5, 23
00200c  138b0600  seteq r22, r13, zero
002010  9b81f00f  andi r3, r1, 255
002014  ef408400  loads.w r1, 8(r8)
002018  9bf1f10f  setlti r3, r3, 255
00201c  97916101  or r3, r3, r22
002020  670d1ffe  storeli.w r1, -48(r30)
002024  ef404400  loads.w r1, 4(r8)
002028  e70d1ffe  storeli.w r1, -40(r30)
00202c  ef40c401  loads.w r1, 28(r8)
002030  670c1ffe  storeli.w r1, -64(r30)
002034  ef408401  loads.w r1, 24(r8)
002038  674c1ffe  storeli.w r1, -60(r30)
00203c  ef404401  loads.w r1, 20(r8)
002040  e70c1ffe  storeli.w r1, -56(r30)
002044  ef400401  loads.w r1, 16(r8)
002048  0b947710  add.s r8, r15, r7
00204c  e343efff  loadli.w r7,  -12(r30)
002050  8b967710  add.s r13, r15, r7
002054  ef430400  loads.w r7, 0(r8)
002058  e74c1ffe  storeli.w r1, -52(r30)
00205c  9b100211  ori r1, r4, 272
002060  8b901710  add.s r1, r15, r1
002064  67487ffe  storeli.w r7, -124(r30)
002068  efc30600  loads.w r7, 0(r13)
00206c  9b164211  ori r13, r4, 276
002070  efc00000  loads.w r1, 0(r1)
002074  e7087ffe  storeli.w r7, -120(r30)
002078  e303ffff  loadli.w r7,  -8(r30)
00207c  e7091ffe  storeli.w r1, -104(r30)
002080  0b947710  add.s r8, r15, r7
002084  ef430400  loads.w r7, 0(r8)
002088  0b94d710  add.s r8, r15, r13
00208c  efc6c701  loads.w r13, 28(r15)
002090  ef400400  loads.w r1, 0(r8)
002094  1b14c211  ori r8, r4, 284
002098  0b948710  add.s r8, r15, r8
00209c  67097ffe  storeli.w r7, -112(r30)
0020a0  93e3e204  setlt.f r7, r5, r14
0020a4  670a1ffe  storeli.w r1, -96(r30)
0020a8  9b108211  ori r1, r4, 280
0020ac  6342affe  loadli.w r4,  -172(r30)
0020b0  8b901710  add.s r1, r15, r1
0020b4  8b9a4710  add.s r21, r15, r4
0020b8  efc00000  loads.w r1, 0(r1)
0020bc  6fc20a00  loads.w r4, 0(r21)
0020c0  efc94a00  loads.w r19, 4(r21)
0020c4  6fce8a00  loads.w r28, 8(r21)
0020c8  e70a1ffe  storeli.w r1, -88(r30)
0020cc  ef400400  loads.w r1, 0(r8)
0020d0  6fc40701  loads.w r8, 16(r15)
0020d4  67084ffe  storeli.w r4, -128(r30)
0020d8  6fc20a01  loads.w r4, 16(r21)
0020dc  670b1ffe  storeli.w r1, -80(r30)
0020e0  efc04701  loads.w r1, 20(r15)
0020e4  67074ffe  storeli.w r4, -144(r30)
0020e8  6fc24a01  loads.w r4, 20(r21)
0020ec  e7464ffe  storeli.w r4, -148(r30)
0020f0  6fc28a01  loads.w r4, 24(r21)
0020f4  e7064ffe  storeli.w r4, -152(r30)
0020f8  6fc2ca01  loads.w r4, 28(r21)
0020fc  e7074ffe  storeli.w r4, -136(r30)
002100  17127c01  or r4, r24, r23
002104  97814100  and r3, r3, r4
002108  e7484ffe  storeli.w r4, -116(r30)
00210c  97813300  and r3, r7, r3
002110  3bb00100  bneq r3, zero, 12
002114  efc1ca00  loads.w r3, 12(r21)
002118  5b020000  j 16
00211c  e341dfff  loadli.w r3,  -20(r30)
002120  8b913710  add.s r3, r15, r3
002124  efc10100  loads.w r3, 0(r3)
002128  6302afff  loadli.w r4,  -48(r30)
00212c  67473ffe  storeli.w r3, -140(r30)
002130  9b319800  slli r3, r16, 9
002134  9b437801  srli r7, r16, 23
002138  9f020300  addli r5, r6, 0
00213c  93810100  seteq r3, r3, zero
002140  9b83f30f  andi r7, r7, 255
002144  9b3a9200  slli r21, r4, 9
002148  1b4b7201  srli r22, r4, 23
00214c  936b0205  setlt.f r23, r4, r16
002150  9bf3f30f  setlti r7, r7, 255
002154  938a0a00  seteq r21, r21, zero
002158  1b0bfb0f  andi r22, r22, 255
00215c  1b7bfb0f  setlti r22, r22, 255
002160  17923300  or r4, r7, r3
002164  e7474ffe  storeli.w r4, -132(r30)
002168  97115b01  or r3, r22, r21
00216c  97814100  and r3, r3, r4
002170  97813b00  and r3, r23, r3
002174  3ba00100  bneq r3, zero, 8
002178  6709cfff  storeli.w r28, -112(r30)
00217c  6302bfff  loadli.w r4,  -40(r30)
002180  9bb19800  slli r3, r17, 9
002184  9bc37801  srli r7, r17, 23
002188  93810100  seteq r3, r3, zero
00218c  9b83f30f  andi r7, r7, 255
002190  9b3a9200  slli r21, r4, 9
002194  1b4b7201  srli r22, r4, 23
002198  136c1205  setlt.f r24, r4, r17
00219c  9bf3f30f  setlti r7, r7, 255
0021a0  938a0a00  seteq r21, r21, zero
0021a4  1b0bfb0f  andi r22, r22, 255
0021a8  1b7bfb0f  setlti r22, r22, 255
0021ac  979b3300  or r23, r7, r3
0021b0  97115b01  or r3, r22, r21
0021b4  97817101  and r3, r3, r23
0021b8  97013c00  and r3, r24, r3
0021bc  3ba00100  bneq r3, zero, 8
0021c0  e7083fff  storeli.w r19, -120(r30)
0021c4  9b319a00  slli r3, r20, 9
0021c8  9bb99200  slli r19, r5, 9
0021cc  9b437a01  srli r7, r20, 23
0021d0  13eb4205  setlt.f r22, r5, r20
0021d4  938a0900  seteq r21, r19, zero
0021d8  93810100  seteq r3, r3, zero
0021dc  9bc97201  srli r19, r5, 23
0021e0  9b83f30f  andi r7, r7, 255
0021e4  9b89f90f  andi r19, r19, 255
0021e8  9bf3f30f  setlti r7, r7, 255
0021ec  1bfcf90f  setlti r24, r19, 255
0021f0  97993300  or r19, r7, r3
0021f4  97115c01  or r3, r24, r21
0021f8  97813101  and r3, r3, r19
0021fc  97013b00  and r3, r22, r3
002200  3bb00100  bneq r3, zero, 12
002204  e3010fff  loadli.w r3,  -128(r30)
002208  67483ffe  storeli.w r3, -124(r30)
00220c  63028fff  loadli.w r4,  -64(r30)
002210  9bb19600  slli r3, r13, 9
002214  9bc37601  srli r7, r13, 23
002218  93810100  seteq r3, r3, zero
00221c  9b83f30f  andi r7, r7, 255
002220  9b3a9200  slli r21, r4, 9
002224  1b4b7201  srli r22, r4, 23
002228  136cd204  setlt.f r24, r4, r13
00222c  9bf3f30f  setlti r7, r7, 255
002230  938a0a00  seteq r21, r21, zero
002234  1b0bfb0f  andi r22, r22, 255
002238  1b7bfb0f  setlti r22, r22, 255
00223c  17923300  or r4, r7, r3
002240  67084ffe  storeli.w r4, -128(r30)
002244  97115b01  or r3, r22, r21
002248  97814100  and r3, r3, r4
00224c  97013c00  and r3, r24, r3
002250  3bb00100  bneq r3, zero, 12
002254  e301fffe  loadli.w r3,  -136(r30)
002258  670b3ffe  storeli.w r3, -80(r30)
00225c  63428fff  loadli.w r4,  -60(r30)
002260  9b319900  slli r3, r18, 9
002264  9b437901  srli r7, r18, 23
002268  93810100  seteq r3, r3, zero
00226c  9b83f30f  andi r7, r7, 255
002270  9b3a9200  slli r21, r4, 9
002274  1b4b7201  srli r22, r4, 23
002278  136c2205  setlt.f r24, r4, r18
00227c  9bf3f30f  setlti r7, r7, 255
002280  938a0a00  seteq r21, r21, zero
002284  1b0bfb0f  andi r22, r22, 255
002288  1b7bfb0f  setlti r22, r22, 255
00228c  17923300  or r4, r7, r3
002290  e7074ffe  storeli.w r4, -136(r30)
002294  97115b01  or r3, r22, r21
002298  97814100  and r3, r3, r4
00229c  97013c00  and r3, r24, r3
0022a0  3bb00100  bneq r3, zero, 12
0022a4  e301dffe  loadli.w r3,  -152(r30)
0022a8  e70a3ffe  storeli.w r3, -88(r30)
0022ac  63029fff  loadli.w r4,  -56(r30)
0022b0  9bb19000  slli r3, r1, 9
0022b4  9bc37001  srli r7, r1, 23
0022b8  93810100  seteq r3, r3, zero
0022bc  9b83f30f  andi r7, r7, 255
0022c0  9b3a9200  slli r21, r4, 9
0022c4  1b4b7201  srli r22, r4, 23
0022c8  136c1204  setlt.f r24, r4, r1
0022cc  9bf3f30f  setlti r7, r7, 255
0022d0  938a0a00  seteq r21, r21, zero
0022d4  1b0bfb0f  andi r22, r22, 255
0022d8  1b7bfb0f  setlti r22, r22, 255
0022dc  179e3300  or r28, r7, r3
0022e0  97115b01  or r3, r22, r21
0022e4  9781c101  and r3, r3, r28
0022e8  97013c00  and r3, r24, r3
0022ec  3bb00100  bneq r3, zero, 12
0022f0  e341dffe  loadli.w r3,  -148(r30)
0022f4  670a3ffe  storeli.w r3, -96(r30)
0022f8  63429fff  loadli.w r4,  -52(r30)
0022fc  9b319400  slli r3, r8, 9
002300  9b437401  srli r7, r8, 23
002304  93810100  seteq r3, r3, zero
002308  9b83f30f  andi r7, r7, 255
00230c  9b3a9200  slli r21, r4, 9
002310  136c8204  setlt.f r24, r4, r8
002314  9bf3f30f  setlti r7, r7, 255
002318  138b0a00  seteq r22, r21, zero
00231c  9b4a7201  srli r21, r4, 23
002320  9b8afa0f  andi r21, r21, 255
002324  1bf2fa0f  setlti r4, r21, 255
002328  979a3300  or r21, r7, r3
00232c  97116201  or r3, r4, r22
002330  97815101  and r3, r3, r21
002334  97013c00  and r3, r24, r3
002338  3bb00100  bneq r3, zero, 12
00233c  e301effe  loadli.w r3,  -144(r30)
002340  e7093ffe  storeli.w r3, -104(r30)
002344  9b319500  slli r3, r10, 9
002348  1b427501  srli r4, r10, 23
00234c  9363aa06  setle.f r7, r20, r10
002350  13654507  setle.f r10, r10, r20
002354  93810100  seteq r3, r3, zero
002358  1b02f20f  andi r4, r4, 255
00235c  1b72f20f  setlti r4, r4, 255
002360  97113200  or r3, r4, r3
002364  17027500  and r4, r10, r7
002368  97813101  and r3, r3, r19
00236c  97013200  and r3, r4, r3
002370  3ba00100  bneq r3, zero, 8
002374  e3420fff  loadli.w r5,  -124(r30)
002378  9bb19400  slli r3, r9, 9
00237c  1bc27401  srli r4, r9, 23
002380  93e39806  setle.f r7, r17, r9
002384  93e41407  setle.f r9, r9, r17
002388  93810100  seteq r3, r3, zero
00238c  1b02f20f  andi r4, r4, 255
002390  1b72f20f  setlti r4, r4, 255
002394  97113200  or r3, r4, r3
002398  17827400  and r4, r9, r7
00239c  97817101  and r3, r3, r23
0023a0  97013200  and r3, r4, r3
0023a4  3bb00100  bneq r3, zero, 12
0023a8  e3011fff  loadli.w r3,  -120(r30)
0023ac  e70d3ffe  storeli.w r3, -40(r30)
0023b0  63432fff  loadli.w r6,  -108(r30)
0023b4  e3447fff  loadli.w r9,  -68(r30)
0023b8  9b319300  slli r3, r6, 9
0023bc  1b427301  srli r4, r6, 23
0023c0  93636806  setle.f r7, r16, r6
0023c4  13630307  setle.f r6, r6, r16
0023c8  93810100  seteq r3, r3, zero
0023cc  1b02f20f  andi r4, r4, 255
0023d0  1b72f20f  setlti r4, r4, 255
0023d4  97113200  or r3, r4, r3
0023d8  17027300  and r4, r6, r7
0023dc  6343fffe  loadli.w r6,  -132(r30)
0023e0  97816100  and r3, r3, r6
0023e4  97013200  and r3, r4, r3
0023e8  3bb00100  bneq r3, zero, 12
0023ec  e3012fff  loadli.w r3,  -112(r30)
0023f0  670d3ffe  storeli.w r3, -48(r30)
0023f4  e3433fff  loadli.w r7,  -100(r30)
0023f8  9bb19300  slli r3, r7, 9
0023fc  1bc27301  srli r4, r7, 23
002400  13637706  setle.f r6, r14, r7
002404  93e3e306  setle.f r7, r7, r14
002408  93810100  seteq r3, r3, zero
00240c  1b02f20f  andi r4, r4, 255
002410  1b72f20f  setlti r4, r4, 255
002414  97113200  or r3, r4, r3
002418  17826300  and r4, r7, r6
00241c  63431fff  loadli.w r6,  -116(r30)
002420  97816100  and r3, r3, r6
002424  97013200  and r3, r4, r3
002428  3ba00100  bneq r3, zero, 8
00242c  e344effe  loadli.w r9,  -140(r30)
002430  e3434fff  loadli.w r7,  -92(r30)
002434  9bb19300  slli r3, r7, 9
002438  1bc27301  srli r4, r7, 23
00243c  13637406  setle.f r6, r8, r7
002440  93e38306  setle.f r7, r7, r8
002444  93810100  seteq r3, r3, zero
002448  1b02f20f  andi r4, r4, 255
00244c  1b72f20f  setlti r4, r4, 255
002450  97113200  or r3, r4, r3
002454  17826300  and r4, r7, r6
002458  97815101  and r3, r3, r21
00245c  97013200  and r3, r4, r3
002460  3bb00100  bneq r3, zero, 12
002464  e3013fff  loadli.w r3,  -104(r30)
002468  e74c3ffe  storeli.w r3, -52(r30)
00246c  e3435fff  loadli.w r7,  -84(r30)
002470  9bb19300  slli r3, r7, 9
002474  1bc27301  srli r4, r7, 23
002478  13e37006  setle.f r6, r1, r7
00247c  93e01306  setle.f r1, r7, r1
002480  e303bffe  loadli.w r7,  -168(r30)
002484  93810100  seteq r3, r3, zero
002488  1b02f20f  andi r4, r4, 255
00248c  1b72f20f  setlti r4, r4, 255
002490  97806000  and r1, r1, r6
002494  97113200  or r3, r4, r3
002498  9781c101  and r3, r3, r28
00249c  97803000  and r1, r1, r3
0024a0  3bb00000  bneq r1, zero, 12
0024a4  e3004fff  loadli.w r1,  -96(r30)
0024a8  e70c1ffe  storeli.w r1, -56(r30)
0024ac  63436fff  loadli.w r6,  -76(r30)
0024b0  9b309300  slli r1, r6, 9
0024b4  9b417301  srli r3, r6, 23
0024b8  13626906  setle.f r4, r18, r6
0024bc  13632307  setle.f r6, r6, r18
0024c0  93800000  seteq r1, r1, zero
0024c4  9b81f10f  andi r3, r3, 255
0024c8  9bf1f10f  setlti r3, r3, 255
0024cc  97901100  or r1, r3, r1
0024d0  97014300  and r3, r6, r4
0024d4  6302fffe  loadli.w r4,  -136(r30)
0024d8  97804000  and r1, r1, r4
0024dc  97801100  and r1, r3, r1
0024e0  3bb00000  bneq r1, zero, 12
0024e4  e3005fff  loadli.w r1,  -88(r30)
0024e8  674c1ffe  storeli.w r1, -60(r30)
0024ec  63037fff  loadli.w r6,  -72(r30)
0024f0  9b309300  slli r1, r6, 9
0024f4  9b417301  srli r3, r6, 23
0024f8  13e26606  setle.f r4, r13, r6
0024fc  1363d306  setle.f r6, r6, r13
002500  93800000  seteq r1, r1, zero
002504  9b81f10f  andi r3, r3, 255
002508  9bf1f10f  setlti r3, r3, 255
00250c  97901100  or r1, r3, r1
002510  97014300  and r3, r6, r4
002514  63020fff  loadli.w r4,  -128(r30)
002518  97804000  and r1, r1, r4
00251c  97801100  and r1, r3, r1
002520  3bb800fc  bneq r1, zero, -1524
002524  e3006fff  loadli.w r1,  -80(r30)
002528  670c1ffe  storeli.w r1, -64(r30)
00252c  5b40ffff  j -1536
002530  1f0a0c00  addli r20, r24, 0
002534  630c6f00  loadli.w r24,  48(r30)
002538  80330002  core_id r7
00253c  00200100  mfence { sm }
002540  3b760a02  bneq r20, zero, 1436
002544  e3409fff  loadli.w r1,  -52(r30)
002548  b78d0002  beq r1, zero, 1888
00254c  9f003000  addli r1, zero, 24
002550  3d000000  xfence
002554  00a00300  mfence { lm, sm, gm }
002558  b3810028  zext_int2long r[4:5], r1
00255c  5b040000  j 32
002560  9f703000  addli r1, zero, 31
002564  eb528ffd  load.d r[6:7], -40(r30)
002568  9f670000  addli r15, zero, 6
00256c  b3810028  zext_int2long r[4:5], r1
002570  93a03204  setlt.ul r1, r[6:7], r[4:5]
002574  a7910200  addli.d r[4:5], r[6:7], 1
002578  37c60000  beq r1, zero, 400
00257c  97b6f102  sll.d r[14:15], r[4:5], r15
002580  b3070028  zext_int2long r[16:17], zero
002584  733c3ffc  store.d r[4:5], -40(r30)
002588  5b080000  j 64
00258c  e341dfff  loadli.w r3,  -20(r30)
002590  a7c70700  addli.d r[16:17], r[16:17], 4
002594  e342ffff  loadli.w r5,  -4(r30)
002598  e343efff  loadli.w r7,  -12(r30)
00259c  13a2b702  setneq.d r4, r[16:17], r[12:13]
0025a0  8b913010  add.s r3, r1, r3
0025a4  0b935010  add.s r6, r1, r5
0025a8  73e01101  stores.w r17, 0(r3)
0025ac  e301ffff  loadli.w r3,  -8(r30)
0025b0  7360a300  stores.w r10, 0(r6)
0025b4  8b913010  add.s r3, r1, r3
0025b8  8b907010  add.s r1, r1, r7
0025bc  73e07101  stores.w r23, 0(r3)
0025c0  73e04001  stores.w r20, 0(r1)
0025c4  377e02fe  beq r4, zero, -100
0025c8  8ba1d710  add.ul r[4:5], r[16:17], r[14:15]
0025cc  6343cfff  loadli.w r6,  -28(r30)
0025d0  9bb02100  slli r1, r3, 2
0025d4  e301dfff  loadli.w r3,  -24(r30)
0025d8  6302efff  loadli.w r4,  -16(r30)
0025dc  0b9e6010  add.s r28, r1, r6
0025e0  8b913010  add.s r3, r1, r3
0025e4  0b924010  add.s r4, r1, r4
0025e8  6f43ce00  loads.w r6, 12(r28)
0025ec  ef4a8e00  loads.w r21, 8(r28)
0025f0  efc30100  loads.w r7, 0(r3)
0025f4  6f440200  loads.w r8, 0(r4)
0025f8  6fca4100  loads.w r20, 4(r3)
0025fc  efcb8100  loads.w r23, 8(r3)
002600  6fc9c100  loads.w r18, 12(r3)
002604  ef4d4200  loads.w r27, 4(r4)
002608  6f4d8200  loads.w r26, 8(r4)
00260c  ef49c200  loads.w r19, 12(r4)
002610  97819301  and r3, r7, r25
002614  17029401  and r4, r8, r25
002618  6f444e00  loads.w r8, 4(r28)
00261c  93832100  seteq r7, r3, r2
002620  93880100  seteq r17, r3, zero
002624  93040200  seteq r9, r4, zero
002628  13052200  seteq r10, r4, r2
00262c  8b814148  max.u r3, r3, r4
002630  93013104  setlt.u r3, r2, r3
002634  17829300  and r4, r7, r9
002638  9783a800  and r7, r17, r10
00263c  ab08c07f  lui r17, 523264
002640  2b05c07f  lui r10, 523264
002644  17127200  or r4, r4, r7
002648  97914100  or r3, r3, r4
00264c  3ba00100  bneq r3, zero, 8
002650  6f450e00  loads.w r10, 0(r28)
002654  97019a01  and r3, r20, r25
002658  17829d01  and r4, r27, r25
00265c  93832100  seteq r7, r3, r2
002660  138b0100  seteq r22, r3, zero
002664  93040200  seteq r9, r4, zero
002668  130a2200  seteq r20, r4, r2
00266c  8b814148  max.u r3, r3, r4
002670  93013104  setlt.u r3, r2, r3
002674  17829300  and r4, r7, r9
002678  97034b01  and r7, r22, r20
00267c  2b0ac07f  lui r20, 523264
002680  17127200  or r4, r4, r7
002684  97914100  or r3, r3, r4
002688  3ba00100  bneq r3, zero, 8
00268c  1f0a0400  addli r20, r8, 0
002690  97819b01  and r3, r23, r25
002694  17029d01  and r4, r26, r25
002698  ab0bc07f  lui r23, 523264
00269c  93832100  seteq r7, r3, r2
0026a0  138b0100  seteq r22, r3, zero
0026a4  13040200  seteq r8, r4, zero
0026a8  93042200  seteq r9, r4, r2
0026ac  8b814148  max.u r3, r3, r4
0026b0  93013104  setlt.u r3, r2, r3
0026b4  17828300  and r4, r7, r8
0026b8  97039b00  and r7, r22, r9
0026bc  17127200  or r4, r4, r7
0026c0  97914100  or r3, r3, r4
0026c4  3ba00100  bneq r3, zero, 8
0026c8  9f8b0a00  addli r23, r21, 0
0026cc  97019901  and r3, r18, r25
0026d0  17829901  and r4, r19, r25
0026d4  93832100  seteq r7, r3, r2
0026d8  13890100  seteq r18, r3, zero
0026dc  13040200  seteq r8, r4, zero
0026e0  93042200  seteq r9, r4, r2
0026e4  8b814148  max.u r3, r3, r4
0026e8  93013104  setlt.u r3, r2, r3
0026ec  17828300  and r4, r7, r8
0026f0  97039900  and r7, r18, r9
0026f4  17127200  or r4, r4, r7
0026f8  97914100  or r3, r3, r4
0026fc  3bca01fe  bneq r3, zero, -368
002700  9f080300  addli r17, r6, 0
002704  5bd1ffff  j -376
002708  80330002  core_id r7
00270c  00200100  mfence { sm }
002710  e3008fff  loadli.w r1,  -64(r30)
002714  3bf60002  bneq r1, zero, 1436
002718  9f500000  addli r1, zero, 5
00271c  bb8d1302  bneq r7, r1, 1888
002720  9f005000  addli r1, zero, 40
002724  3d000000  xfence
002728  00a00300  mfence { lm, sm, gm }
00272c  b3810028  zext_int2long r[4:5], r1
002730  5b040000  j 32
002734  9f705000  addli r1, zero, 47
002738  eb528ffd  load.d r[6:7], -40(r30)
00273c  9f670000  addli r15, zero, 6
002740  b3810028  zext_int2long r[4:5], r1
002744  93a03204  setlt.ul r1, r[6:7], r[4:5]
002748  a7910200  addli.d r[4:5], r[6:7], 1
00274c  37c60000  beq r1, zero, 400
002750  97b6f102  sll.d r[14:15], r[4:5], r15
002754  b3070028  zext_int2long r[16:17], zero
002758  733c3ffc  store.d r[4:5], -40(r30)
00275c  5b080000  j 64
002760  e341dfff  loadli.w r3,  -20(r30)
002764  a7c70700  addli.d r[16:17], r[16:17], 4
002768  e342ffff  loadli.w r5,  -4(r30)
00276c  e343efff  loadli.w r7,  -12(r30)
002770  13a2b702  setneq.d r4, r[16:17], r[12:13]
002774  8b913010  add.s r3, r1, r3
002778  0b935010  add.s r6, r1, r5
00277c  73e01101  stores.w r17, 0(r3)
002780  e301ffff  loadli.w r3,  -8(r30)
002784  7360a300  stores.w r10, 0(r6)
002788  8b913010  add.s r3, r1, r3
00278c  8b907010  add.s r1, r1, r7
002790  73e07101  stores.w r23, 0(r3)
002794  73e04001  stores.w r20, 0(r1)
002798  377e02fe  beq r4, zero, -100
00279c  8ba1d710  add.ul r[4:5], r[16:17], r[14:15]
0027a0  6343cfff  loadli.w r6,  -28(r30)
0027a4  9bb02100  slli r1, r3, 2
0027a8  e301dfff  loadli.w r3,  -24(r30)
0027ac  6302efff  loadli.w r4,  -16(r30)
0027b0  0b9e6010  add.s r28, r1, r6
0027b4  8b913010  add.s r3, r1, r3
0027b8  0b924010  add.s r4, r1, r4
0027bc  6f43ce00  loads.w r6, 12(r28)
0027c0  ef4a8e00  loads.w r21, 8(r28)
0027c4  efc30100  loads.w r7, 0(r3)
0027c8  6f440200  loads.w r8, 0(r4)
0027cc  6fca4100  loads.w r20, 4(r3)
0027d0  efcb8100  loads.w r23, 8(r3)
0027d4  6fc9c100  loads.w r18, 12(r3)
0027d8  ef4d4200  loads.w r27, 4(r4)
0027dc  6f4d8200  loads.w r26, 8(r4)
0027e0  ef49c200  loads.w r19, 12(r4)
0027e4  97819301  and r3, r7, r25
0027e8  17029401  and r4, r8, r25
0027ec  6f444e00  loads.w r8, 4(r28)
0027f0  93832100  seteq r7, r3, r2
0027f4  93880100  seteq r17, r3, zero
0027f8  93040200  seteq r9, r4, zero
0027fc  13052200  seteq r10, r4, r2
002800  8b814148  max.u r3, r3, r4
002804  93013104  setlt.u r3, r2, r3
002808  17829300  and r4, r7, r9
00280c  9783a800  and r7, r17, r10
002810  ab08c07f  lui r17, 523264
002814  2b05c07f  lui r10, 523264
002818  17127200  or r4, r4, r7
00281c  97914100  or r3, r3, r4
002820  3ba00100  bneq r3, zero, 8
002824  6f450e00  loads.w r10, 0(r28)
002828  97019a01  and r3, r20, r25
00282c  17829d01  and r4, r27, r25
002830  93832100  seteq r7, r3, r2
002834  138b0100  seteq r22, r3, zero
002838  93040200  seteq r9, r4, zero
00283c  130a2200  seteq r20, r4, r2
002840  8b814148  max.u r3, r3, r4
002844  93013104  setlt.u r3, r2, r3
002848  17829300  and r4, r7, r9
00284c  97034b01  and r7, r22, r20
002850  2b0ac07f  lui r20, 523264
002854  17127200  or r4, r4, r7
002858  97914100  or r3, r3, r4
00285c  3ba00100  bneq r3, zero, 8
002860  1f0a0400  addli r20, r8, 0
002864  97819b01  and r3, r23, r25
002868  17029d01  and r4, r26, r25
00286c  ab0bc07f  lui r23, 523264
002870  93832100  seteq r7, r3, r2
002874  138b0100  seteq r22, r3, zero
002878  13040200  seteq r8, r4, zero
00287c  93042200  seteq r9, r4, r2
002880  8b814148  max.u r3, r3, r4
002884  93013104  setlt.u r3, r2, r3
002888  17828300  and r4, r7, r8
00288c  97039b00  and r7, r22, r9
002890  17127200  or r4, r4, r7
002894  97914100  or r3, r3, r4
002898  3ba00100  bneq r3, zero, 8
00289c  9f8b0a00  addli r23, r21, 0
0028a0  97019901  and r3, r18, r25
0028a4  17829901  and r4, r19, r25
0028a8  93832100  seteq r7, r3, r2
0028ac  13890100  seteq r18, r3, zero
0028b0  13040200  seteq r8, r4, zero
0028b4  93042200  seteq r9, r4, r2
0028b8  8b814148  max.u r3, r3, r4
0028bc  93013104  setlt.u r3, r2, r3
0028c0  17828300  and r4, r7, r8
0028c4  97039900  and r7, r18, r9
0028c8  17127200  or r4, r4, r7
0028cc  97914100  or r3, r3, r4
0028d0  3bca01fe  bneq r3, zero, -368
0028d4  9f080300  addli r17, r6, 0
0028d8  5bd1ffff  j -376
0028dc  80330002  core_id r7
0028e0  00200100  mfence { sm }
0028e4  e3408fff  loadli.w r1,  -60(r30)
0028e8  3bf60002  bneq r1, zero, 1436
0028ec  e3009fff  loadli.w r1,  -56(r30)
0028f0  bb8d0002  bneq r1, zero, 1888
0028f4  db230100  j 2332
0028f8  3d000000  xfence
0028fc  1f8c0a00  addli r24, r21, 0
002900  1f0b0a00  addli r22, r20, 0
002904  b3010028  zext_int2long r[4:5], zero
002908  00a00300  mfence { lm, sm, gm }
00290c  73383ffc  store.d r[4:5], -48(r30)
002910  5b040000  j 32
002914  9f700000  addli r1, zero, 7
002918  eb528ffd  load.d r[6:7], -40(r30)
00291c  9f670000  addli r15, zero, 6
002920  b3810028  zext_int2long r[4:5], r1
002924  93a03204  setlt.ul r1, r[6:7], r[4:5]
002928  a7910200  addli.d r[4:5], r[6:7], 1
00292c  37d60000  beq r1, zero, 404
002930  9f600000  addli r1, zero, 6
002934  eb580ffd  load.d r[18:19], -48(r30)
002938  733c3ffc  store.d r[4:5], -40(r30)
00293c  97b71102  sll.d r[16:17], r[4:5], r1
002940  5b080000  j 64
002944  e341dfff  loadli.w r3,  -20(r30)
002948  a7c80800  addli.d r[18:19], r[18:19], 4
00294c  e342ffff  loadli.w r5,  -4(r30)
002950  e343efff  loadli.w r7,  -12(r30)
002954  13a2b802  setneq.d r4, r[18:19], r[12:13]
002958  8b913010  add.s r3, r1, r3
00295c  0b935010  add.s r6, r1, r5
002960  73e03101  stores.w r19, 0(r3)
002964  e301ffff  loadli.w r3,  -8(r30)
002968  7360a300  stores.w r10, 0(r6)
00296c  8b913010  add.s r3, r1, r3
002970  8b907010  add.s r1, r1, r7
002974  73e0b101  stores.w r27, 0(r3)
002978  73e07001  stores.w r23, 0(r1)
00297c  376e02fe  beq r4, zero, -104
002980  8ba1f810  add.ul r[4:5], r[18:19], r[16:17]
002984  6343cfff  loadli.w r6,  -28(r30)
002988  9bb02100  slli r1, r3, 2
00298c  e301dfff  loadli.w r3,  -24(r30)
002990  6302efff  loadli.w r4,  -16(r30)
002994  8b946010  add.s r9, r1, r6
002998  8b913010  add.s r3, r1, r3
00299c  0b924010  add.s r4, r1, r4
0029a0  6fc3c400  loads.w r6, 12(r9)
0029a4  6fcd8400  loads.w r26, 8(r9)
0029a8  efc64400  loads.w r13, 4(r9)
0029ac  efc30100  loads.w r7, 0(r3)
0029b0  6f450200  loads.w r10, 0(r4)
0029b4  efcb4100  loads.w r23, 4(r3)
0029b8  efcd8100  loads.w r27, 8(r3)
0029bc  6fcac100  loads.w r20, 12(r3)
0029c0  6f444200  loads.w r8, 4(r4)
0029c4  6f4e8200  loads.w r28, 8(r4)
0029c8  ef4ac200  loads.w r21, 12(r4)
0029cc  97819301  and r3, r7, r25
0029d0  17029501  and r4, r10, r25
0029d4  93832100  seteq r7, r3, r2
0029d8  93890100  seteq r19, r3, zero
0029dc  13050200  seteq r10, r4, zero
0029e0  13072200  seteq r14, r4, r2
0029e4  8b814148  max.u r3, r3, r4
0029e8  93013104  setlt.u r3, r2, r3
0029ec  1782a300  and r4, r7, r10
0029f0  9783e900  and r7, r19, r14
0029f4  ab09c07f  lui r19, 523264
0029f8  2b05c07f  lui r10, 523264
0029fc  17127200  or r4, r4, r7
002a00  97914100  or r3, r3, r4
002a04  3ba00100  bneq r3, zero, 8
002a08  6fc50400  loads.w r10, 0(r9)
002a0c  97819b01  and r3, r23, r25
002a10  17029401  and r4, r8, r25
002a14  ab0bc07f  lui r23, 523264
002a18  93832100  seteq r7, r3, r2
002a1c  13870100  seteq r14, r3, zero
002a20  13040200  seteq r8, r4, zero
002a24  93042200  seteq r9, r4, r2
002a28  8b814148  max.u r3, r3, r4
002a2c  93013104  setlt.u r3, r2, r3
002a30  17828300  and r4, r7, r8
002a34  97039700  and r7, r14, r9
002a38  17127200  or r4, r4, r7
002a3c  97914100  or r3, r3, r4
002a40  3ba00100  bneq r3, zero, 8
002a44  9f8b0600  addli r23, r13, 0
002a48  97819d01  and r3, r27, r25
002a4c  17029e01  and r4, r28, r25
002a50  ab0dc07f  lui r27, 523264
002a54  93832100  seteq r7, r3, r2
002a58  93860100  seteq r13, r3, zero
002a5c  13040200  seteq r8, r4, zero
002a60  93042200  seteq r9, r4, r2
002a64  8b814148  max.u r3, r3, r4
002a68  93013104  setlt.u r3, r2, r3
002a6c  17828300  and r4, r7, r8
002a70  97839600  and r7, r13, r9
002a74  17127200  or r4, r4, r7
002a78  97914100  or r3, r3, r4
002a7c  3ba00100  bneq r3, zero, 8
002a80  9f0d0d00  addli r27, r26, 0
002a84  97019a01  and r3, r20, r25
002a88  17829a01  and r4, r21, r25
002a8c  93832100  seteq r7, r3, r2
002a90  93860100  seteq r13, r3, zero
002a94  13040200  seteq r8, r4, zero
002a98  93042200  seteq r9, r4, r2
002a9c  8b814148  max.u r3, r3, r4
002aa0  93013104  setlt.u r3, r2, r3
002aa4  17828300  and r4, r7, r8
002aa8  97839600  and r7, r13, r9
002aac  17127200  or r4, r4, r7
002ab0  97914100  or r3, r3, r4
002ab4  3bca01fe  bneq r3, zero, -368
002ab8  9f090300  addli r19, r6, 0
002abc  5bd1ffff  j -376
002ac0  9f0a0c00  addli r21, r24, 0
002ac4  630c6f00  loadli.w r24,  48(r30)
002ac8  80330002  core_id r7
002acc  1f0a0b00  addli r20, r22, 0
002ad0  00200100  mfence { sm }
002ad4  bbb10af8  bneq r21, zero, -3988
002ad8  b7390afc  beq r20, zero, -1428
002adc  9f002000  addli r1, zero, 16
002ae0  3d000000  xfence
002ae4  00a00300  mfence { lm, sm, gm }
002ae8  b3810028  zext_int2long r[4:5], r1
002aec  5b040000  j 32
002af0  9f702000  addli r1, zero, 23
002af4  eb528ffd  load.d r[6:7], -40(r30)
002af8  9f670000  addli r15, zero, 6
002afc  b3810028  zext_int2long r[4:5], r1
002b00  93a03204  setlt.ul r1, r[6:7], r[4:5]
002b04  a7910200  addli.d r[4:5], r[6:7], 1
002b08  37c60000  beq r1, zero, 400
002b0c  97b6f102  sll.d r[14:15], r[4:5], r15
002b10  b3070028  zext_int2long r[16:17], zero
002b14  733c3ffc  store.d r[4:5], -40(r30)
002b18  5b080000  j 64
002b1c  e341dfff  loadli.w r3,  -20(r30)
002b20  a7c70700  addli.d r[16:17], r[16:17], 4
002b24  e342ffff  loadli.w r5,  -4(r30)
002b28  e343efff  loadli.w r7,  -12(r30)
002b2c  13a2b702  setneq.d r4, r[16:17], r[12:13]
002b30  8b913010  add.s r3, r1, r3
002b34  0b935010  add.s r6, r1, r5
002b38  73e01101  stores.w r17, 0(r3)
002b3c  e301ffff  loadli.w r3,  -8(r30)
002b40  7360a300  stores.w r10, 0(r6)
002b44  8b913010  add.s r3, r1, r3
002b48  8b907010  add.s r1, r1, r7
002b4c  73e07101  stores.w r23, 0(r3)
002b50  73e04001  stores.w r20, 0(r1)
002b54  377e02fe  beq r4, zero, -100
002b58  8ba1d710  add.ul r[4:5], r[16:17], r[14:15]
002b5c  6343cfff  loadli.w r6,  -28(r30)
002b60  9bb02100  slli r1, r3, 2
002b64  e301dfff  loadli.w r3,  -24(r30)
002b68  6302efff  loadli.w r4,  -16(r30)
002b6c  0b9e6010  add.s r28, r1, r6
002b70  8b913010  add.s r3, r1, r3
002b74  0b924010  add.s r4, r1, r4
002b78  6f43ce00  loads.w r6, 12(r28)
002b7c  ef4a8e00  loads.w r21, 8(r28)
002b80  efc30100  loads.w r7, 0(r3)
002b84  6f440200  loads.w r8, 0(r4)
002b88  6fca4100  loads.w r20, 4(r3)
002b8c  efcb8100  loads.w r23, 8(r3)
002b90  6fc9c100  loads.w r18, 12(r3)
002b94  ef4d4200  loads.w r27, 4(r4)
002b98  6f4d8200  loads.w r26, 8(r4)
002b9c  ef49c200  loads.w r19, 12(r4)
002ba0  97819301  and r3, r7, r25
002ba4  17029401  and r4, r8, r25
002ba8  6f444e00  loads.w r8, 4(r28)
002bac  93832100  seteq r7, r3, r2
002bb0  93880100  seteq r17, r3, zero
002bb4  93040200  seteq r9, r4, zero
002bb8  13052200  seteq r10, r4, r2
002bbc  8b814148  max.u r3, r3, r4
002bc0  93013104  setlt.u r3, r2, r3
002bc4  17829300  and r4, r7, r9
002bc8  9783a800  and r7, r17, r10
002bcc  ab08c07f  lui r17, 523264
002bd0  2b05c07f  lui r10, 523264
002bd4  17127200  or r4, r4, r7
002bd8  97914100  or r3, r3, r4
002bdc  3ba00100  bneq r3, zero, 8
002be0  6f450e00  loads.w r10, 0(r28)
002be4  97019a01  and r3, r20, r25
002be8  17829d01  and r4, r27, r25
002bec  93832100  seteq r7, r3, r2
002bf0  138b0100  seteq r22, r3, zero
002bf4  93040200  seteq r9, r4, zero
002bf8  130a2200  seteq r20, r4, r2
002bfc  8b814148  max.u r3, r3, r4
002c00  93013104  setlt.u r3, r2, r3
002c04  17829300  and r4, r7, r9
002c08  97034b01  and r7, r22, r20
002c0c  2b0ac07f  lui r20, 523264
002c10  17127200  or r4, r4, r7
002c14  97914100  or r3, r3, r4
002c18  3ba00100  bneq r3, zero, 8
002c1c  1f0a0400  addli r20, r8, 0
002c20  97819b01  and r3, r23, r25
002c24  17029d01  and r4, r26, r25
002c28  ab0bc07f  lui r23, 523264
002c2c  93832100  seteq r7, r3, r2
002c30  138b0100  seteq r22, r3, zero
002c34  13040200  seteq r8, r4, zero
002c38  93042200  seteq r9, r4, r2
002c3c  8b814148  max.u r3, r3, r4
002c40  93013104  setlt.u r3, r2, r3
002c44  17828300  and r4, r7, r8
002c48  97039b00  and r7, r22, r9
002c4c  17127200  or r4, r4, r7
002c50  97914100  or r3, r3, r4
002c54  3ba00100  bneq r3, zero, 8
002c58  9f8b0a00  addli r23, r21, 0
002c5c  97019901  and r3, r18, r25
002c60  17829901  and r4, r19, r25
002c64  93832100  seteq r7, r3, r2
002c68  13890100  seteq r18, r3, zero
002c6c  13040200  seteq r8, r4, zero
002c70  93042200  seteq r9, r4, r2
002c74  8b814148  max.u r3, r3, r4
002c78  93013104  setlt.u r3, r2, r3
002c7c  17828300  and r4, r7, r8
002c80  97039900  and r7, r18, r9
002c84  17127200  or r4, r4, r7
002c88  97914100  or r3, r3, r4
002c8c  3bca01fe  bneq r3, zero, -368
002c90  9f080300  addli r17, r6, 0
002c94  5bd1ffff  j -376
002c98  80330002  core_id r7
002c9c  00200100  mfence { sm }
002ca0  e3409fff  loadli.w r1,  -52(r30)
002ca4  bba200fc  bneq r1, zero, -1880
002ca8  e3008fff  loadli.w r1,  -64(r30)
002cac  b7b900fc  beq r1, zero, -1428
002cb0  9f004000  addli r1, zero, 32
002cb4  3d000000  xfence
002cb8  00a00300  mfence { lm, sm, gm }
002cbc  b3810028  zext_int2long r[4:5], r1
002cc0  5b040000  j 32
002cc4  9f704000  addli r1, zero, 39
002cc8  eb528ffd  load.d r[6:7], -40(r30)
002ccc  9f670000  addli r15, zero, 6
002cd0  b3810028  zext_int2long r[4:5], r1
002cd4  93a03204  setlt.ul r1, r[6:7], r[4:5]
002cd8  a7910200  addli.d r[4:5], r[6:7], 1
002cdc  37c60000  beq r1, zero, 400
002ce0  97b6f102  sll.d r[14:15], r[4:5], r15
002ce4  b3070028  zext_int2long r[16:17], zero
002ce8  733c3ffc  store.d r[4:5], -40(r30)
002cec  5b080000  j 64
002cf0  e341dfff  loadli.w r3,  -20(r30)
002cf4  a7c70700  addli.d r[16:17], r[16:17], 4
002cf8  e342ffff  loadli.w r5,  -4(r30)
002cfc  e343efff  loadli.w r7,  -12(r30)
002d00  13a2b702  setneq.d r4, r[16:17], r[12:13]
002d04  8b913010  add.s r3, r1, r3
002d08  0b935010  add.s r6, r1, r5
002d0c  73e01101  stores.w r17, 0(r3)
002d10  e301ffff  loadli.w r3,  -8(r30)
002d14  7360a300  stores.w r10, 0(r6)
002d18  8b913010  add.s r3, r1, r3
002d1c  8b907010  add.s r1, r1, r7
002d20  73e07101  stores.w r23, 0(r3)
002d24  73e04001  stores.w r20, 0(r1)
002d28  377e02fe  beq r4, zero, -100
002d2c  8ba1d710  add.ul r[4:5], r[16:17], r[14:15]
002d30  6343cfff  loadli.w r6,  -28(r30)
002d34  9bb02100  slli r1, r3, 2
002d38  e301dfff  loadli.w r3,  -24(r30)
002d3c  6302efff  loadli.w r4,  -16(r30)
002d40  0b9e6010  add.s r28, r1, r6
002d44  8b913010  add.s r3, r1, r3
002d48  0b924010  add.s r4, r1, r4
002d4c  6f43ce00  loads.w r6, 12(r28)
002d50  ef4a8e00  loads.w r21, 8(r28)
002d54  efc30100  loads.w r7, 0(r3)
002d58  6f440200  loads.w r8, 0(r4)
002d5c  6fca4100  loads.w r20, 4(r3)
002d60  efcb8100  loads.w r23, 8(r3)
002d64  6fc9c100  loads.w r18, 12(r3)
002d68  ef4d4200  loads.w r27, 4(r4)
002d6c  6f4d8200  loads.w r26, 8(r4)
002d70  ef49c200  loads.w r19, 12(r4)
002d74  97819301  and r3, r7, r25
002d78  17029401  and r4, r8, r25
002d7c  6f444e00  loads.w r8, 4(r28)
002d80  93832100  seteq r7, r3, r2
002d84  93880100  seteq r17, r3, zero
002d88  93040200  seteq r9, r4, zero
002d8c  13052200  seteq r10, r4, r2
002d90  8b814148  max.u r3, r3, r4
002d94  93013104  setlt.u r3, r2, r3
002d98  17829300  and r4, r7, r9
002d9c  9783a800  and r7, r17, r10
002da0  ab08c07f  lui r17, 523264
002da4  2b05c07f  lui r10, 523264
002da8  17127200  or r4, r4, r7
002dac  97914100  or r3, r3, r4
002db0  3ba00100  bneq r3, zero, 8
002db4  6f450e00  loads.w r10, 0(r28)
002db8  97019a01  and r3, r20, r25
002dbc  17829d01  and r4, r27, r25
002dc0  93832100  seteq r7, r3, r2
002dc4  138b0100  seteq r22, r3, zero
002dc8  93040200  seteq r9, r4, zero
002dcc  130a2200  seteq r20, r4, r2
002dd0  8b814148  max.u r3, r3, r4
002dd4  93013104  setlt.u r3, r2, r3
002dd8  17829300  and r4, r7, r9
002ddc  97034b01  and r7, r22, r20
002de0  2b0ac07f  lui r20, 523264
002de4  17127200  or r4, r4, r7
002de8  97914100  or r3, r3, r4
002dec  3ba00100  bneq r3, zero, 8
002df0  1f0a0400  addli r20, r8, 0
002df4  97819b01  and r3, r23, r25
002df8  17029d01  and r4, r26, r25
002dfc  ab0bc07f  lui r23, 523264
002e00  93832100  seteq r7, r3, r2
002e04  138b0100  seteq r22, r3, zero
002e08  13040200  seteq r8, r4, zero
002e0c  93042200  seteq r9, r4, r2
002e10  8b814148  max.u r3, r3, r4
002e14  93013104  setlt.u r3, r2, r3
002e18  17828300  and r4, r7, r8
002e1c  97039b00  and r7, r22, r9
002e20  17127200  or r4, r4, r7
002e24  97914100  or r3, r3, r4
002e28  3ba00100  bneq r3, zero, 8
002e2c  9f8b0a00  addli r23, r21, 0
002e30  97019901  and r3, r18, r25
002e34  17829901  and r4, r19, r25
002e38  93832100  seteq r7, r3, r2
002e3c  13890100  seteq r18, r3, zero
002e40  13040200  seteq r8, r4, zero
002e44  93042200  seteq r9, r4, r2
002e48  8b814148  max.u r3, r3, r4
002e4c  93013104  setlt.u r3, r2, r3
002e50  17828300  and r4, r7, r8
002e54  97039900  and r7, r18, r9
002e58  17127200  or r4, r4, r7
002e5c  97914100  or r3, r3, r4
002e60  3bca01fe  bneq r3, zero, -368
002e64  9f080300  addli r17, r6, 0
002e68  5bd1ffff  j -376
002e6c  80330002  core_id r7
002e70  00200100  mfence { sm }
002e74  9f500000  addli r1, zero, 5
002e78  b7a213fc  beq r7, r1, -1880
002e7c  e3408fff  loadli.w r1,  -60(r30)
002e80  b7b900fc  beq r1, zero, -1428
002e84  9f006000  addli r1, zero, 48
002e88  3d000000  xfence
002e8c  00a00300  mfence { lm, sm, gm }
002e90  b3810028  zext_int2long r[4:5], r1
002e94  5b040000  j 32
002e98  9f706000  addli r1, zero, 55
002e9c  eb528ffd  load.d r[6:7], -40(r30)
002ea0  9f670000  addli r15, zero, 6
002ea4  b3810028  zext_int2long r[4:5], r1
002ea8  93a03204  setlt.ul r1, r[6:7], r[4:5]
002eac  a7910200  addli.d r[4:5], r[6:7], 1
002eb0  37c60000  beq r1, zero, 400
002eb4  97b6f102  sll.d r[14:15], r[4:5], r15
002eb8  b3070028  zext_int2long r[16:17], zero
002ebc  733c3ffc  store.d r[4:5], -40(r30)
002ec0  5b080000  j 64
002ec4  e341dfff  loadli.w r3,  -20(r30)
002ec8  a7c70700  addli.d r[16:17], r[16:17], 4
002ecc  e342ffff  loadli.w r5,  -4(r30)
002ed0  e343efff  loadli.w r7,  -12(r30)
002ed4  13a2b702  setneq.d r4, r[16:17], r[12:13]
002ed8  8b913010  add.s r3, r1, r3
002edc  0b935010  add.s r6, r1, r5
002ee0  73e01101  stores.w r17, 0(r3)
002ee4  e301ffff  loadli.w r3,  -8(r30)
002ee8  7360a300  stores.w r10, 0(r6)
002eec  8b913010  add.s r3, r1, r3
002ef0  8b907010  add.s r1, r1, r7
002ef4  73e07101  stores.w r23, 0(r3)
002ef8  73e04001  stores.w r20, 0(r1)
002efc  377e02fe  beq r4, zero, -100
002f00  8ba1d710  add.ul r[4:5], r[16:17], r[14:15]
002f04  6343cfff  loadli.w r6,  -28(r30)
002f08  9bb02100  slli r1, r3, 2
002f0c  e301dfff  loadli.w r3,  -24(r30)
002f10  6302efff  loadli.w r4,  -16(r30)
002f14  0b9e6010  add.s r28, r1, r6
002f18  8b913010  add.s r3, r1, r3
002f1c  0b924010  add.s r4, r1, r4
002f20  6f43ce00  loads.w r6, 12(r28)
002f24  ef4a8e00  loads.w r21, 8(r28)
002f28  efc30100  loads.w r7, 0(r3)
002f2c  6f440200  loads.w r8, 0(r4)
002f30  6fca4100  loads.w r20, 4(r3)
002f34  efcb8100  loads.w r23, 8(r3)
002f38  6fc9c100  loads.w r18, 12(r3)
002f3c  ef4d4200  loads.w r27, 4(r4)
002f40  6f4d8200  loads.w r26, 8(r4)
002f44  ef49c200  loads.w r19, 12(r4)
002f48  97819301  and r3, r7, r25
002f4c  17029401  and r4, r8, r25
002f50  6f444e00  loads.w r8, 4(r28)
002f54  93832100  seteq r7, r3, r2
002f58  93880100  seteq r17, r3, zero
002f5c  93040200  seteq r9, r4, zero
002f60  13052200  seteq r10, r4, r2
002f64  8b814148  max.u r3, r3, r4
002f68  93013104  setlt.u r3, r2, r3
002f6c  17829300  and r4, r7, r9
002f70  9783a800  and r7, r17, r10
002f74  ab08c07f  lui r17, 523264
002f78  2b05c07f  lui r10, 523264
002f7c  17127200  or r4, r4, r7
002f80  97914100  or r3, r3, r4
002f84  3ba00100  bneq r3, zero, 8
002f88  6f450e00  loads.w r10, 0(r28)
002f8c  97019a01  and r3, r20, r25
002f90  17829d01  and r4, r27, r25
002f94  93832100  seteq r7, r3, r2
002f98  138b0100  seteq r22, r3, zero
002f9c  93040200  seteq r9, r4, zero
002fa0  130a2200  seteq r20, r4, r2
002fa4  8b814148  max.u r3, r3, r4
002fa8  93013104  setlt.u r3, r2, r3
002fac  17829300  and r4, r7, r9
002fb0  97034b01  and r7, r22, r20
002fb4  2b0ac07f  lui r20, 523264
002fb8  17127200  or r4, r4, r7
002fbc  97914100  or r3, r3, r4
002fc0  3ba00100  bneq r3, zero, 8
002fc4  1f0a0400  addli r20, r8, 0
002fc8  97819b01  and r3, r23, r25
002fcc  17029d01  and r4, r26, r25
002fd0  ab0bc07f  lui r23, 523264
002fd4  93832100  seteq r7, r3, r2
002fd8  138b0100  seteq r22, r3, zero
002fdc  13040200  seteq r8, r4, zero
002fe0  93042200  seteq r9, r4, r2
002fe4  8b814148  max.u r3, r3, r4
002fe8  93013104  setlt.u r3, r2, r3
002fec  17828300  and r4, r7, r8
002ff0  97039b00  and r7, r22, r9
002ff4  17127200  or r4, r4, r7
002ff8  97914100  or r3, r3, r4
002ffc  3ba00100  bneq r3, zero, 8
003000  9f8b0a00  addli r23, r21, 0
003004  97019901  and r3, r18, r25
003008  17829901  and r4, r19, r25
00300c  93832100  seteq r7, r3, r2
003010  13890100  seteq r18, r3, zero
003014  13040200  seteq r8, r4, zero
003018  93042200  seteq r9, r4, r2
00301c  8b814148  max.u r3, r3, r4
003020  93013104  setlt.u r3, r2, r3
003024  17828300  and r4, r7, r8
003028  97039900  and r7, r18, r9
00302c  17127200  or r4, r4, r7
003030  97914100  or r3, r3, r4
003034  3bca01fe  bneq r3, zero, -368
003038  9f080300  addli r17, r6, 0
00303c  5bd1ffff  j -376
003040  80330002  core_id r7
003044  00200100  mfence { sm }
003048  e3009fff  loadli.w r1,  -56(r30)
00304c  37970000  beq r1, zero, 452
003050  9f007000  addli r1, zero, 56
003054  3d000000  xfence
003058  00a00300  mfence { lm, sm, gm }
00305c  b3810028  zext_int2long r[4:5], r1
003060  db030000  j 28
003064  eb518ff4  load.d r[4:5], -184(r30)
003068  eb528ffd  load.d r[6:7], -40(r30)
00306c  9f670000  addli r15, zero, 6
003070  93a03204  setlt.ul r1, r[6:7], r[4:5]
003074  a7910200  addli.d r[4:5], r[6:7], 1
003078  37c60000  beq r1, zero, 400
00307c  97b6f102  sll.d r[14:15], r[4:5], r15
003080  b3070028  zext_int2long r[16:17], zero
003084  733c3ffc  store.d r[4:5], -40(r30)
003088  5b080000  j 64
00308c  e341dfff  loadli.w r3,  -20(r30)
003090  a7c70700  addli.d r[16:17], r[16:17], 4
003094  e342ffff  loadli.w r5,  -4(r30)
003098  e343efff  loadli.w r7,  -12(r30)
00309c  13a2b702  setneq.d r4, r[16:17], r[12:13]
0030a0  8b913010  add.s r3, r1, r3
0030a4  0b935010  add.s r6, r1, r5
0030a8  73e01101  stores.w r17, 0(r3)
0030ac  e301ffff  loadli.w r3,  -8(r30)
0030b0  7360a300  stores.w r10, 0(r6)
0030b4  8b913010  add.s r3, r1, r3
0030b8  8b907010  add.s r1, r1, r7
0030bc  73e07101  stores.w r23, 0(r3)
0030c0  73e04001  stores.w r20, 0(r1)
0030c4  b70e02fe  beq r4, zero, -96
0030c8  8ba1d710  add.ul r[4:5], r[16:17], r[14:15]
0030cc  6343cfff  loadli.w r6,  -28(r30)
0030d0  9bb02100  slli r1, r3, 2
0030d4  e301dfff  loadli.w r3,  -24(r30)
0030d8  6302efff  loadli.w r4,  -16(r30)
0030dc  0b9e6010  add.s r28, r1, r6
0030e0  8b913010  add.s r3, r1, r3
0030e4  0b924010  add.s r4, r1, r4
0030e8  6f43ce00  loads.w r6, 12(r28)
0030ec  ef4a8e00  loads.w r21, 8(r28)
0030f0  efc30100  loads.w r7, 0(r3)
0030f4  6f440200  loads.w r8, 0(r4)
0030f8  6fca4100  loads.w r20, 4(r3)
0030fc  efcb8100  loads.w r23, 8(r3)
003100  6fc9c100  loads.w r18, 12(r3)
003104  ef4d4200  loads.w r27, 4(r4)
003108  6f4d8200  loads.w r26, 8(r4)
00310c  ef49c200  loads.w r19, 12(r4)
003110  97819301  and r3, r7, r25
003114  17029401  and r4, r8, r25
003118  6f444e00  loads.w r8, 4(r28)
00311c  93832100  seteq r7, r3, r2
003120  93880100  seteq r17, r3, zero
003124  93040200  seteq r9, r4, zero
003128  13052200  seteq r10, r4, r2
00312c  8b814148  max.u r3, r3, r4
003130  93013104  setlt.u r3, r2, r3
003134  17829300  and r4, r7, r9
003138  9783a800  and r7, r17, r10
00313c  ab08c07f  lui r17, 523264
003140  2b05c07f  lui r10, 523264
003144  17127200  or r4, r4, r7
003148  97914100  or r3, r3, r4
00314c  3ba00100  bneq r3, zero, 8
003150  6f450e00  loads.w r10, 0(r28)
003154  97019a01  and r3, r20, r25
003158  17829d01  and r4, r27, r25
00315c  93832100  seteq r7, r3, r2
003160  138b0100  seteq r22, r3, zero
003164  93040200  seteq r9, r4, zero
003168  130a2200  seteq r20, r4, r2
00316c  8b814148  max.u r3, r3, r4
003170  93013104  setlt.u r3, r2, r3
003174  17829300  and r4, r7, r9
003178  97034b01  and r7, r22, r20
00317c  2b0ac07f  lui r20, 523264
003180  17127200  or r4, r4, r7
003184  97914100  or r3, r3, r4
003188  3ba00100  bneq r3, zero, 8
00318c  1f0a0400  addli r20, r8, 0
003190  97819b01  and r3, r23, r25
003194  17029d01  and r4, r26, r25
003198  ab0bc07f  lui r23, 523264
00319c  93832100  seteq r7, r3, r2
0031a0  138b0100  seteq r22, r3, zero
0031a4  13040200  seteq r8, r4, zero
0031a8  93042200  seteq r9, r4, r2
0031ac  8b814148  max.u r3, r3, r4
0031b0  93013104  setlt.u r3, r2, r3
0031b4  17828300  and r4, r7, r8
0031b8  97039b00  and r7, r22, r9
0031bc  17127200  or r4, r4, r7
0031c0  97914100  or r3, r3, r4
0031c4  3ba00100  bneq r3, zero, 8
0031c8  9f8b0a00  addli r23, r21, 0
0031cc  97019901  and r3, r18, r25
0031d0  17829901  and r4, r19, r25
0031d4  93832100  seteq r7, r3, r2
0031d8  13890100  seteq r18, r3, zero
0031dc  13040200  seteq r8, r4, zero
0031e0  93042200  seteq r9, r4, r2
0031e4  8b814148  max.u r3, r3, r4
0031e8  93013104  setlt.u r3, r2, r3
0031ec  17828300  and r4, r7, r8
0031f0  97039900  and r7, r18, r9
0031f4  17127200  or r4, r4, r7
0031f8  97914100  or r3, r3, r4
0031fc  3bca01fe  bneq r3, zero, -368
003200  9f080300  addli r17, r6, 0
003204  5bd1ffff  j -376
003208  80330002  core_id r7
00320c  00200100  mfence { sm }
003210  9f70f001  addli r1, zero, 255
003214  80a20004  csr_set csr5, r1
003218  00e00200  sync_core
00321c  e3409fff  loadli.w r1,  -52(r30)
003220  bb8400e8  bneq r1, zero, -12000
003224  6b540ff3  load.d r[9:10], -208(r30)
003228  1f058000  addli r10, zero, 64
00322c  bbe403e8  bneq r7, zero, -11976
003230  eb518ff2  load.d r[4:5], -216(r30)
003234  eb550ff2  load.d r[12:13], -224(r30)
003238  9f202000  addli r1, zero, 18
00323c  9f160000  addli r13, zero, 1
003240  1f030002  addli r6, zero, 256
003244  97b11102  sll.d r[4:5], r[4:5], r1
003248  17b8d502  sll.d r[17:18], r[12:13], r13
00324c  eb558f01  load.d r[12:13], 24(r30)
003250  9f304000  addli r1, zero, 35
003254  7d900000  xwait r1, 0
003258  9f500000  addli r1, zero, 5
00325c  8ba13510  add.ul r[4:5], r[12:13], r[4:5]
003260  1d800000  lock zero, r1
003264  95060000  dma_cfg r13, zero, zero, 0
003268  8ba10111  add.ul r[4:5], r[4:5], r[17:18]
00326c  15800602  dma_cfg zero, r13, zero, 1
003270  15020004  dma_cfg r4, zero, zero, 2
003274  e342ffff  loadli.w r5,  -4(r30)
003278  95816206  dma_cfg r3, r5, r6, 3
00327c  9f010020  addli r3, zero, 4096
003280  9501a308  dma_cfg r3, r6, r10, 4
003284  35000000  dma_run zero
003288  1d900000  unlock r1
00328c  9f404000  addli r1, zero, 36
003290  7d800000  xsignal r1, 0
003294  5b1afaff  j -12080
003298  63422ffe  loadli.w r4,  -236(r30)
00329c  9f400000  addli r1, zero, 4
0032a0  2bc50000  lui r10, 12
0032a4  37d31300  beq r7, r1, 212
0032a8  b798f300  beq r7, r15, 548
0032ac  9f700000  addli r1, zero, 7
0032b0  bbc41300  bneq r7, r1, 304
0032b4  9f101000  addli r1, zero, 9
0032b8  674c0ffe  storeli.w zero, -60(r30)
0032bc  670c0ffe  storeli.w zero, -64(r30)
0032c0  e74c0ffe  storeli.w zero, -52(r30)
0032c4  aba10000  lui r3, 10
0032c8  9f0a0000  addli r21, zero, 0
0032cc  1f0a0000  addli r20, zero, 0
0032d0  7d900000  xwait r1, 0
0032d4  9f401000  addli r1, zero, 12
0032d8  7d900000  xwait r1, 0
0032dc  9f300000  addli r1, zero, 3
0032e0  1d000000  lock zero, zero
0032e4  81000000  ds_cfg r1, zero, 0
0032e8  9f008000  addli r1, zero, 64
0032ec  81000002  ds_cfg r1, zero, 1
0032f0  8100001c  ds_cfg r1, zero, 14
0032f4  8100001a  ds_cfg r1, zero, 13
0032f8  41801104  shuffle_coa zero, r3, r1, 2
0032fc  9f201000  addli r1, zero, 10
003300  1d100000  unlock zero
003304  7d800000  xsignal r1, 0
003308  9f100000  addli r1, zero, 1
00330c  e70c1ffe  storeli.w r1, -56(r30)
003310  9f301000  addli r1, zero, 11
003314  db01fdff  j -6132
003318  9f1a0000  addli r21, zero, 1
00331c  9f201000  addli r1, zero, 10
003320  674c0ffe  storeli.w zero, -60(r30)
003324  e70c0ffe  storeli.w zero, -56(r30)
003328  670c0ffe  storeli.w zero, -64(r30)
00332c  e74c0ffe  storeli.w zero, -52(r30)
003330  1f030001  addli r6, zero, 128
003334  2ba20000  lui r4, 10
003338  1f0a0000  addli r20, zero, 0
00333c  17b45603  sll.d r[9:10], r[14:15], r21
003340  eb568f00  load.d r[14:15], 8(r30)
003344  7d900000  xwait r1, 0
003348  9f400000  addli r1, zero, 4
00334c  1d800000  lock zero, r1
003350  0ba48610  add.ul r[9:10], r[14:15], r[9:10]
003354  958a0a00  dma_cfg r21, r21, zero, 0
003358  15800404  dma_cfg zero, r9, zero, 2
00335c  15026406  dma_cfg r4, r8, r6, 3
003360  1f020020  addli r4, zero, 4096
003364  15033208  dma_cfg r6, r4, r3, 4
003368  35000000  dma_run zero
00336c  1d900000  unlock r1
003370  9f101000  addli r1, zero, 9
003374  dbf5fcff  j -6228
003378  9f700000  addli r1, zero, 7
00337c  674c0ffe  storeli.w zero, -60(r30)
003380  e70c0ffe  storeli.w zero, -56(r30)
003384  e74c0ffe  storeli.w zero, -52(r30)
003388  1f130000  addli r6, zero, 1
00338c  9f0a0000  addli r21, zero, 0
003390  1f0a0000  addli r20, zero, 0
003394  7d900000  xwait r1, 0
003398  9f301000  addli r1, zero, 11
00339c  7d900000  xwait r1, 0
0033a0  9f002000  addli r1, zero, 16
0033a4  7d900000  xwait r1, 0
0033a8  1d000300  lock zero, r6
0033ac  9f200000  addli r1, zero, 2
0033b0  89813100  mm_cfg r3, r3, r3, 0
0033b4  89806004  mm_cfg r1, r1, r6, 2
0033b8  9f100000  addli r1, zero, 1
0033bc  2902000a  mm r4, zero, zero, 5
0033c0  670c1ffe  storeli.w r1, -64(r30)
0033c4  9f001000  addli r1, zero, 8
0033c8  1d100300  unlock r6
0033cc  7d800000  xsignal r1, 0
0033d0  9f401000  addli r1, zero, 12
0033d4  7d800000  xsignal r1, 0
0033d8  9f701000  addli r1, zero, 15
0033dc  dbe8fcff  j -6332
0033e0  674c5fff  storeli.w r21, -60(r30)
0033e4  1f8a0a00  addli r20, r21, 0
0033e8  e70c5fff  storeli.w r21, -56(r30)
0033ec  670c5fff  storeli.w r21, -64(r30)
0033f0  e74c5fff  storeli.w r21, -52(r30)
0033f4  5be6fcff  j -6352
0033f8  9f300000  addli r1, zero, 3
0033fc  674c0ffe  storeli.w zero, -60(r30)
003400  e70c0ffe  storeli.w zero, -56(r30)
003404  670c0ffe  storeli.w zero, -64(r30)
003408  9f214000  addli r3, zero, 34
00340c  630c6f00  loadli.w r24,  48(r30)
003410  9f0a0000  addli r21, zero, 0
003414  1f0a0000  addli r20, zero, 0
003418  80330002  core_id r7
00341c  00200100  mfence { sm }
003420  7d800000  xsignal r1, 0
003424  9f502000  addli r1, zero, 21
003428  7d800000  xsignal r1, 0
00342c  9f103000  addli r1, zero, 25
003430  7d800000  xsignal r1, 0
003434  9f704000  addli r1, zero, 39
003438  7d800100  xsignal r3, 0
00343c  7d800000  xsignal r1, 0
003440  9f005000  addli r1, zero, 40
003444  7d800000  xsignal r1, 0
003448  9f102000  addli r1, zero, 17
00344c  7d900000  xwait r1, 0
003450  9f105000  addli r1, zero, 41
003454  7d900100  xwait r3, 0
003458  7d900000  xwait r1, 0
00345c  9f100000  addli r1, zero, 1
003460  e74c1ffe  storeli.w r1, -52(r30)
003464  9f305000  addli r1, zero, 43
003468  7d900000  xwait r1, 0
00346c  5bd7fcff  j -6472
003470  9f500000  addli r1, zero, 5
003474  674c0ffe  storeli.w zero, -60(r30)
003478  e70c0ffe  storeli.w zero, -56(r30)
00347c  670c0ffe  storeli.w zero, -64(r30)
003480  e74c0ffe  storeli.w zero, -52(r30)
003484  ab810000  lui r3, 8
003488  9f0a0000  addli r21, zero, 0
00348c  1f1a0000  addli r20, zero, 1
003490  7d900000  xwait r1, 0
003494  9f001000  addli r1, zero, 8
003498  7d900000  xwait r1, 0
00349c  9f300000  addli r1, zero, 3
0034a0  1d000000  lock zero, zero
0034a4  81000000  ds_cfg r1, zero, 0
0034a8  9f008000  addli r1, zero, 64
0034ac  81000002  ds_cfg r1, zero, 1
0034b0  8100001c  ds_cfg r1, zero, 14
0034b4  8100001a  ds_cfg r1, zero, 13
0034b8  21901102  shuffle_batch zero, r3, r1, 1
0034bc  9f700000  addli r1, zero, 7
0034c0  1d100000  unlock zero
0034c4  7d800700  xsignal r15, 0
0034c8  5bcbfcff  j -6568
0034cc  6b548ff2  load.d r[9:10], -216(r30)
0034d0  1f531000  addli r6, zero, 13
0034d4  a7880600  addli.d r[18:19], r[14:15], 0
0034d8  eb560f00  load.d r[14:15], 0(r30)
0034dc  1f420000  addli r4, zero, 4
0034e0  9f190000  addli r19, zero, 1
0034e4  e70c0ffe  storeli.w zero, -56(r30)
0034e8  670c0ffe  storeli.w zero, -64(r30)
0034ec  e74c0ffe  storeli.w zero, -52(r30)
0034f0  7d900700  xwait r15, 0
0034f4  1f080001  addli r16, zero, 128
0034f8  ab800000  lui r1, 8
0034fc  9f0a0000  addli r21, zero, 0
003500  1f0a0000  addli r20, zero, 0
003504  1d000200  lock zero, r4
003508  17346402  sll.d r[9:10], r[9:10], r6
00350c  95890900  dma_cfg r19, r19, zero, 0
003510  0ba48610  add.ul r[9:10], r[14:15], r[9:10]
003514  eb560f01  load.d r[14:15], 16(r30)
003518  15800404  dma_cfg zero, r9, zero, 2
00351c  95000407  dma_cfg r1, r8, r16, 3
003520  9f500000  addli r1, zero, 5
003524  17b43803  sll.d r[9:10], r[18:19], r19
003528  15083808  dma_cfg r16, r16, r3, 4
00352c  35000000  dma_run zero
003530  1d100200  unlock r4
003534  9f110000  addli r3, zero, 1
003538  7d800000  xsignal r1, 0
00353c  9f601000  addli r1, zero, 14
003540  0ba48610  add.ul r[9:10], r[14:15], r[9:10]
003544  7d900000  xwait r1, 0
003548  1d000200  lock zero, r4
00354c  9f000002  addli r1, zero, 256
003550  15800900  dma_cfg zero, r19, zero, 0
003554  15800404  dma_cfg zero, r9, zero, 2
003558  15050407  dma_cfg r10, r8, r16, 3
00355c  674c3ffe  storeli.w r3, -60(r30)
003560  95003809  dma_cfg r1, r16, r19, 4
003564  35000000  dma_run zero
003568  1d100200  unlock r4
00356c  7d000300  xsignal r6, 0
003570  dbb6fcff  j -6732
003574  7d000000  xsignal zero, 0
003578  bbe00300  bneq r7, zero, 56
00357c  9f200000  addli r1, zero, 2
003580  7d100000  xwait zero, 0
003584  7d100000  xwait zero, 0
003588  7d100000  xwait zero, 0
00358c  7d100000  xwait zero, 0
003590  7d100000  xwait zero, 0
003594  7d100000  xwait zero, 0
003598  7d100000  xwait zero, 0
00359c  7d100000  xwait zero, 0
0035a0  1d800000  lock zero, r1
0035a4  0d000020  ew_cfg zero, zero, zero, 16
0035a8  1d900000  unlock r1
0035ac  7d400000  xsignal_mode_cfg zero
0035b0  9f8e2e02  addli sp, sp, 272
0035b4  00a00300  mfence { lm, sm, gm }
0035b8  00100000  exit
0035bc  00100000  exit
0035c0  00100000  exit
0035c4  00100000  exit
0035c8  00100000  exit
0035cc  00100000  exit
0035d0  00100000  exit
0035d4  00100000  exit
0035d8  00100000  exit
0035dc  00100000  exit
0035e0  00100000  exit
0035e4  00100000  exit
0035e8  00100000  exit
0035ec  00100000  exit
0035f0  00100000  exit
0035f4  00100000  exit
0035f8  00100000  exit
0035fc  00100000  exit
003600  00100000  exit
003604  00100000  exit
003608  00100000  exit
00360c  00100000  exit
003610  00100000  exit
003614  00100000  exit
003618  00100000  exit
00361c  00100000  exit
003620  00100000  exit
003624  00100000  exit
003628  00100000  exit
00362c  00100000  exit
003630  00100000  exit
003634  00100000  exit
003638  00100000  exit
00363c  00100000  exit
003640  00100000  exit
003644  00100000  exit
003648  00100000  exit
00364c  00100000  exit
003650  00100000  exit
003654  00100000  exit
003658  00100000  exit
00365c  00100000  exit
003660  00100000  exit
003664  00100000  exit
003668  00100000  exit
00366c  00100000  exit
003670  00100000  exit
003674  00100000  exit
003678  00100000  exit
00367c  00100000  exit
003680  00100000  exit
003684  00100000  exit
003688  00100000  exit
00368c  00100000  exit
003690  00100000  exit
003694  00100000  exit
003698  00100000  exit
00369c  00100000  exit
0036a0  00100000  exit
0036a4  00100000  exit
0036a8  00100000  exit
0036ac  00100000  exit
0036b0  00100000  exit
0036b4  00100000  exit
0036b8  00100000  exit
0036bc  00100000  exit
0036c0  00100000  exit
0036c4  00100000  exit
0036c8  00100000  exit
0036cc  00100000  exit
0036d0  00100000  exit
0036d4  00100000  exit
0036d8  00100000  exit
0036dc  00100000  exit
0036e0  00100000  exit
0036e4  00100000  exit
0036e8  00100000  exit
0036ec  00100000  exit
0036f0  00100000  exit
0036f4  00100000  exit
0036f8  00100000  exit
0036fc  00100000  exit
003700  00100000  exit
003704  00100000  exit
003708  00100000  exit
00370c  00100000  exit
003710  00100000  exit
003714  00100000  exit
003718  00100000  exit
00371c  00100000  exit
003720  00100000  exit
003724  00100000  exit
003728  00100000  exit
00372c  00100000  exit
003730  00100000  exit
003734  00100000  exit
003738  00100000  exit
00373c  00100000  exit
003740  00100000  exit
003744  00100000  exit
003748  00100000  exit
00374c  00100000  exit
003750  00100000  exit
003754  00100000  exit
003758  00100000  exit
00375c  00100000  exit
003760  00100000  exit
003764  00100000  exit
003768  00100000  exit
00376c  00100000  exit
003770  00100000  exit
003774  00100000  exit
003778  00100000  exit
00377c  00100000  exit
003780  00100000  exit
003784  00100000  exit
003788  00100000  exit
00378c  00100000  exit
003790  00100000  exit
003794  00100000  exit
003798  00100000  exit
00379c  00100000  exit
0037a0  00100000  exit
0037a4  00100000  exit
0037a8  00100000  exit
0037ac  00100000  exit
0037b0  00100000  exit
0037b4  00100000  exit
0037b8  00100000  exit
0037bc  00100000  exit
0037c0  00100000  exit
0037c4  00100000  exit
0037c8  00100000  exit
0037cc  00100000  exit
0037d0  00100000  exit
0037d4  00100000  exit
0037d8  00100000  exit
0037dc  00100000  exit
0037e0  00100000  exit
0037e4  00100000  exit
0037e8  00100000  exit
0037ec  00100000  exit
0037f0  00100000  exit
0037f4  00100000  exit
0037f8  00100000  exit
