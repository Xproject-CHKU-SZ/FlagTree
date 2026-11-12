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
0000b4  9f8e2efe  addli sp, sp, -240
0000b8  9f100000  addli r1, zero, 1
0000bc  00310002  core_id r2
0000c0  00360002  core_id r12
0000c4  1f8f6e01  addli r30, sp, 176
0000c8  7dc00000  xsignal_mode_cfg r1
0000cc  b7100100  beq r2, zero, 36
0000d0  2bf1ffff  lui r2, 1048575
0000d4  7d900000  xwait r1, 0
0000d8  7d900000  xwait r1, 0
0000dc  7d100000  xwait zero, 0
0000e0  9b10f1ff  ori r1, r2, 4095
0000e4  80a10004  csr_set csr3, r1
0000e8  00d00100  sync_group
0000ec  db280000  j 324
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
000150  1f510000  addli r2, zero, 5
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
000190  9f301000  addli r1, zero, 11
000194  00d00100  sync_group
000198  7d800000  xsignal r1, 0
00019c  7d800000  xsignal r1, 0
0001a0  7d800000  xsignal r1, 0
0001a4  7d000100  xsignal r2, 0
0001a8  7d000100  xsignal r2, 0
0001ac  7d000100  xsignal r2, 0
0001b0  9f300000  addli r1, zero, 3
0001b4  1f111000  addli r2, zero, 9
0001b8  7d800000  xsignal r1, 0
0001bc  7d800000  xsignal r1, 0
0001c0  7d800000  xsignal r1, 0
0001c4  7d000100  xsignal r2, 0
0001c8  7d000100  xsignal r2, 0
0001cc  7d000100  xsignal r2, 0
0001d0  9f700000  addli r1, zero, 7
0001d4  1f612000  addli r2, zero, 22
0001d8  7d800000  xsignal r1, 0
0001dc  7d800000  xsignal r1, 0
0001e0  7d800000  xsignal r1, 0
0001e4  7d000100  xsignal r2, 0
0001e8  7d000100  xsignal r2, 0
0001ec  7d000100  xsignal r2, 0
0001f0  9f002000  addli r1, zero, 16
0001f4  1f611000  addli r2, zero, 14
0001f8  7d800000  xsignal r1, 0
0001fc  7d800000  xsignal r1, 0
000200  7d800000  xsignal r1, 0
000204  7d000100  xsignal r2, 0
000208  7d000100  xsignal r2, 0
00020c  7d000100  xsignal r2, 0
000210  9f003000  addli r1, zero, 24
000214  1f113000  addli r2, zero, 25
000218  7d800000  xsignal r1, 0
00021c  7d800000  xsignal r1, 0
000220  7d800000  xsignal r1, 0
000224  7d000100  xsignal r2, 0
000228  7d000100  xsignal r2, 0
00022c  7d000100  xsignal r2, 0
000230  e3005f00  loadli.w r1,  40(r30)
000234  63415f00  loadli.w r2,  44(r30)
000238  00d20002  load_param_i r4, 1
00023c  e3016f00  loadli.w r3,  48(r30)
000240  8b101120  mul.s r1, r2, r1
000244  1f010200  addli r2, r4, 0
000248  0b913050  fmac.s r2, r1, r3
00024c  8b913020  mul.s r3, r1, r3
000250  1f71f1ff  addli r2, r2, -1
000254  0b114130  div.s r2, r2, r4
000258  00520002  load_param_i r4, 0
00025c  8b104120  mul.s r1, r2, r4
000260  0b114150  fmac.s r2, r2, r4
000264  0b113140  min.s r2, r2, r3
000268  cb0d111a  ble.s r2, r1, 14176
00026c  33110128  sext_int2long r[3:4], r2
000270  2b820d00  lui r4, 216
000274  33940028  sext_int2long r[9:10], r1
000278  abf0ff7f  lui r1, 524287
00027c  9f360000  addli r13, zero, 3
000280  1f078000  addli r14, zero, 64
000284  9f170000  addli r15, zero, 1
000288  1f780000  addli r16, zero, 7
00028c  9f581000  addli r17, zero, 13
000290  1f290000  addli r18, zero, 2
000294  1f4a0000  addli r20, zero, 4
000298  9f0a2000  addli r21, zero, 16
00029c  ab0d4000  lui r27, 1024
0002a0  ab02ffff  lui r5, 1048560
0002a4  9f090000  addli r19, zero, 0
0002a8  73302ff6  store.d r[3:4], -160(r30)
0002ac  2bf17f7f  lui r2, 522239
0002b0  1b9ef0ff  ori r28, r1, 4095
0002b4  ab700000  lui r1, 7
0002b8  9b11f1ff  ori r3, r2, 4095
0002bc  2bc10600  lui r2, 108
0002c0  9b90f0ff  ori r1, r1, 4095
0002c4  1b110160  ori r2, r2, 1536
0002c8  e7452ffe  storeli.w r2, -164(r30)
0002cc  1b11d2b4  ori r2, r4, 2893
0002d0  2bf27fff  lui r4, 1046527
0002d4  e7052ffe  storeli.w r2, -168(r30)
0002d8  2b410800  lui r2, 132
0002dc  1b110160  ori r2, r2, 1536
0002e0  67452ffe  storeli.w r2, -172(r30)
0002e4  1b11f2ff  ori r2, r4, 4095
0002e8  2b02807f  lui r4, 522240
0002ec  67052ffe  storeli.w r2, -176(r30)
0002f0  db090000  j 76
0002f4  1f512000  addli r2, zero, 21
0002f8  1f078000  addli r14, zero, 64
0002fc  9f170000  addli r15, zero, 1
000300  1f780000  addli r16, zero, 7
000304  9f581000  addli r17, zero, 13
000308  1f290000  addli r18, zero, 2
00030c  1f4a0000  addli r20, zero, 4
000310  9f0a2000  addli r21, zero, 16
000314  7d000100  xsignal r2, 0
000318  1f013000  addli r2, zero, 24
00031c  7d000100  xsignal r2, 0
000320  e3491fff  loadli.w r19,  -116(r30)
000324  6b540ff8  load.d r[9:10], -128(r30)
000328  6b530ff6  load.d r[7:8], -160(r30)
00032c  9f990900  addli r19, r19, 1
000330  27140400  addli.d r[9:10], r[9:10], 1
000334  13316404  setlt.sl r2, r[9:10], r[7:8]
000338  374a011a  beq r2, zero, 13968
00033c  63016f00  loadli.w r2,  48(r30)
000340  63435f00  loadli.w r6,  44(r30)
000344  73308ff8  store.d r[9:10], -128(r30)
000348  0b95d938  mod.s r10, r19, r13
00034c  9f650000  addli r11, zero, 6
000350  e7483fff  storeli.w r19, -116(r30)
000354  0b112430  div.s r2, r8, r2
000358  9f041000  addli r9, zero, 8
00035c  e70aaffe  storeli.w r10, -88(r30)
000360  0b116130  div.s r2, r2, r6
000364  8b13e130  div.s r7, r2, r14
000368  1bb33300  slli r6, r7, 3
00036c  0b946718  sub.s r8, r15, r6
000370  0b149440  min.s r8, r8, r9
000374  8b148138  mod.s r9, r2, r8
000378  8b946410  add.s r9, r9, r6
00037c  1b33e500  slli r6, r10, 14
000380  00350002  core_id r10
000384  338b0428  zext_int2long r[23:24], r9
000388  e7469ffe  storeli.w r9, -148(r30)
00038c  ab840100  lui r9, 24
000390  8b149310  add.s r9, r6, r9
000394  73306ffb  store.d r[23:24], -96(r30)
000398  3b4ab500  bneq r10, r11, 656
00039c  17351b03  sll.d r[11:12], r[23:24], r17
0003a0  6b5b0f00  load.d r[23:24], 0(r30)
0003a4  7d900600  xwait r13, 0
0003a8  0b25ab10  add.ul r[11:12], r[23:24], r[11:12]
0003ac  3f743901  blt.s r18, r19, 284
0003b0  9f590000  addli r19, zero, 5
0003b4  1f660000  addli r12, zero, 6
0003b8  1d800900  lock zero, r19
0003bc  15000014  dma_cfg zero, zero, zero, 10
0003c0  1500f014  dma_cfg zero, zero, r15, 10
0003c4  15002015  dma_cfg zero, zero, r18, 10
0003c8  1500d014  dma_cfg zero, zero, r13, 10
0003cc  15004015  dma_cfg zero, zero, r20, 10
0003d0  15003015  dma_cfg zero, zero, r19, 10
0003d4  1500c014  dma_cfg zero, zero, r12, 10
0003d8  1f061000  addli r12, zero, 8
0003dc  15000015  dma_cfg zero, zero, r16, 10
0003e0  1500c014  dma_cfg zero, zero, r12, 10
0003e4  1f161000  addli r12, zero, 9
0003e8  1500c014  dma_cfg zero, zero, r12, 10
0003ec  1f261000  addli r12, zero, 10
0003f0  1500c014  dma_cfg zero, zero, r12, 10
0003f4  1f361000  addli r12, zero, 11
0003f8  1500c014  dma_cfg zero, zero, r12, 10
0003fc  1f461000  addli r12, zero, 12
000400  1500c014  dma_cfg zero, zero, r12, 10
000404  1f661000  addli r12, zero, 14
000408  15001015  dma_cfg zero, zero, r17, 10
00040c  1500c014  dma_cfg zero, zero, r12, 10
000410  1f761000  addli r12, zero, 15
000414  1500c014  dma_cfg zero, zero, r12, 10
000418  1f162000  addli r12, zero, 17
00041c  15005015  dma_cfg zero, zero, r21, 10
000420  1500c014  dma_cfg zero, zero, r12, 10
000424  1f262000  addli r12, zero, 18
000428  1500c014  dma_cfg zero, zero, r12, 10
00042c  1f362000  addli r12, zero, 19
000430  1500c014  dma_cfg zero, zero, r12, 10
000434  1f462000  addli r12, zero, 20
000438  1500c014  dma_cfg zero, zero, r12, 10
00043c  1f562000  addli r12, zero, 21
000440  1500c014  dma_cfg zero, zero, r12, 10
000444  1f662000  addli r12, zero, 22
000448  1500c014  dma_cfg zero, zero, r12, 10
00044c  1f762000  addli r12, zero, 23
000450  1500c014  dma_cfg zero, zero, r12, 10
000454  1f063000  addli r12, zero, 24
000458  1500c014  dma_cfg zero, zero, r12, 10
00045c  1f163000  addli r12, zero, 25
000460  1500c014  dma_cfg zero, zero, r12, 10
000464  1f263000  addli r12, zero, 26
000468  1500c014  dma_cfg zero, zero, r12, 10
00046c  1f363000  addli r12, zero, 27
000470  1500c014  dma_cfg zero, zero, r12, 10
000474  1f463000  addli r12, zero, 28
000478  1500c014  dma_cfg zero, zero, r12, 10
00047c  1f563000  addli r12, zero, 29
000480  1500c014  dma_cfg zero, zero, r12, 10
000484  1f663000  addli r12, zero, 30
000488  1500c014  dma_cfg zero, zero, r12, 10
00048c  1f763000  addli r12, zero, 31
000490  1500c014  dma_cfg zero, zero, r12, 10
000494  1f060001  addli r12, zero, 128
000498  95870700  dma_cfg r15, r15, zero, 0
00049c  95070002  dma_cfg r15, zero, zero, 1
0004a0  15000004  dma_cfg zero, zero, zero, 2
0004a4  9504e006  dma_cfg r9, zero, r14, 3
0004a8  15062009  dma_cfg r12, zero, r18, 4
0004ac  1f060002  addli r12, zero, 256
0004b0  1506e00a  dma_cfg r12, zero, r14, 5
0004b4  15000010  dma_cfg zero, zero, zero, 8
0004b8  35000000  dma_run zero
0004bc  1500f00a  dma_cfg zero, zero, r15, 5
0004c0  15000010  dma_cfg zero, zero, zero, 8
0004c4  1d900900  unlock r19
0004c8  2b860100  lui r12, 24
0004cc  67090ffe  storeli.w zero, -112(r30)
0004d0  9f090002  addli r19, zero, 256
0004d4  1d000a00  lock zero, r20
0004d8  1b160604  ori r12, r12, 64
0004dc  95870700  dma_cfg r15, r15, zero, 0
0004e0  15800504  dma_cfg zero, r11, zero, 2
0004e4  0b16c310  add.s r12, r6, r12
0004e8  1506e506  dma_cfg r12, r10, r14, 3
0004ec  1f060001  addli r12, zero, 128
0004f0  9f550000  addli r11, zero, 5
0004f4  1f650000  addli r10, zero, 6
0004f8  15062709  dma_cfg r12, r14, r18, 4
0004fc  9509e60a  dma_cfg r19, r12, r14, 5
000500  15000010  dma_cfg zero, zero, zero, 8
000504  35000000  dma_run zero
000508  1500f00a  dma_cfg zero, zero, r15, 5
00050c  15000010  dma_cfg zero, zero, zero, 8
000510  1d100a00  unlock r20
000514  1d800500  lock zero, r11
000518  15000014  dma_cfg zero, zero, zero, 10
00051c  1500f014  dma_cfg zero, zero, r15, 10
000520  15002015  dma_cfg zero, zero, r18, 10
000524  1500d014  dma_cfg zero, zero, r13, 10
000528  15004015  dma_cfg zero, zero, r20, 10
00052c  1500b014  dma_cfg zero, zero, r11, 10
000530  1500a014  dma_cfg zero, zero, r10, 10
000534  1f051000  addli r10, zero, 8
000538  15000015  dma_cfg zero, zero, r16, 10
00053c  1500a014  dma_cfg zero, zero, r10, 10
000540  1f151000  addli r10, zero, 9
000544  1500a014  dma_cfg zero, zero, r10, 10
000548  1f251000  addli r10, zero, 10
00054c  1500a014  dma_cfg zero, zero, r10, 10
000550  1f351000  addli r10, zero, 11
000554  1500a014  dma_cfg zero, zero, r10, 10
000558  1f451000  addli r10, zero, 12
00055c  1500a014  dma_cfg zero, zero, r10, 10
000560  1f651000  addli r10, zero, 14
000564  15001015  dma_cfg zero, zero, r17, 10
000568  1500a014  dma_cfg zero, zero, r10, 10
00056c  1f751000  addli r10, zero, 15
000570  1500a014  dma_cfg zero, zero, r10, 10
000574  1f152000  addli r10, zero, 17
000578  15005015  dma_cfg zero, zero, r21, 10
00057c  1500a014  dma_cfg zero, zero, r10, 10
000580  1f252000  addli r10, zero, 18
000584  1500a014  dma_cfg zero, zero, r10, 10
000588  1f352000  addli r10, zero, 19
00058c  1500a014  dma_cfg zero, zero, r10, 10
000590  1f452000  addli r10, zero, 20
000594  1500a014  dma_cfg zero, zero, r10, 10
000598  1f552000  addli r10, zero, 21
00059c  1500a014  dma_cfg zero, zero, r10, 10
0005a0  1f652000  addli r10, zero, 22
0005a4  1500a014  dma_cfg zero, zero, r10, 10
0005a8  1f752000  addli r10, zero, 23
0005ac  1500a014  dma_cfg zero, zero, r10, 10
0005b0  1f053000  addli r10, zero, 24
0005b4  1500a014  dma_cfg zero, zero, r10, 10
0005b8  1f153000  addli r10, zero, 25
0005bc  1500a014  dma_cfg zero, zero, r10, 10
0005c0  1f253000  addli r10, zero, 26
0005c4  1500a014  dma_cfg zero, zero, r10, 10
0005c8  1f353000  addli r10, zero, 27
0005cc  1500a014  dma_cfg zero, zero, r10, 10
0005d0  1f453000  addli r10, zero, 28
0005d4  1500a014  dma_cfg zero, zero, r10, 10
0005d8  1f553000  addli r10, zero, 29
0005dc  1500a014  dma_cfg zero, zero, r10, 10
0005e0  1f653000  addli r10, zero, 30
0005e4  1500a014  dma_cfg zero, zero, r10, 10
0005e8  1f753000  addli r10, zero, 31
0005ec  1500a014  dma_cfg zero, zero, r10, 10
0005f0  95870700  dma_cfg r15, r15, zero, 0
0005f4  95070002  dma_cfg r15, zero, zero, 1
0005f8  15000004  dma_cfg zero, zero, zero, 2
0005fc  9504e006  dma_cfg r9, zero, r14, 3
000600  15062009  dma_cfg r12, zero, r18, 4
000604  9509e00a  dma_cfg r19, zero, r14, 5
000608  15000010  dma_cfg zero, zero, zero, 8
00060c  35000000  dma_run zero
000610  1500f00a  dma_cfg zero, zero, r15, 5
000614  15000010  dma_cfg zero, zero, zero, 8
000618  1d900500  unlock r11
00061c  7d000900  xsignal r18, 0
000620  e3491fff  loadli.w r19,  -116(r30)
000624  5b090000  j 72
000628  3b012501  bneq r10, r18, 64
00062c  1f550000  addli r10, zero, 5
000630  7d100900  xwait r18, 0
000634  7d100500  xwait r10, 0
000638  1d000000  lock zero, zero
00063c  01090000  ds_cfg r18, zero, 0
000640  01070002  ds_cfg r14, zero, 1
000644  0107001c  ds_cfg r14, zero, 14
000648  0107001a  ds_cfg r14, zero, 13
00064c  2193e402  shuffle_batch r6, r9, r14, 1
000650  9f140000  addli r9, zero, 1
000654  1d100000  unlock zero
000658  7d800600  xsignal r13, 0
00065c  67099ffe  storeli.w r9, -112(r30)
000660  7d000a00  xsignal r20, 0
000664  5b010000  j 8
000668  67090ffe  storeli.w zero, -112(r30)
00066c  9bb36300  slli r7, r7, 6
000670  6b550ffa  load.d r[11:12], -96(r30)
000674  0b117118  sub.s r2, r2, r7
000678  0b118130  div.s r2, r2, r8
00067c  b3030128  zext_int2long r[8:9], r2
000680  e7492ffe  storeli.w r2, -100(r30)
000684  63015fff  loadli.w r2,  -88(r30)
000688  97b30303  sll.d r[8:9], r[8:9], r16
00068c  9b34f100  slli r9, r2, 15
000690  2b410200  lui r2, 36
000694  97b3f302  sll.d r[8:9], r[8:9], r15
000698  e74f9ffe  storeli.w r9, -4(r30)
00069c  0b912410  add.s r2, r9, r2
0006a0  80340002  core_id r9
0006a4  733c7ff6  store.d r[8:9], -136(r30)
0006a8  bb8af400  bneq r9, r15, 672
0006ac  27850300  addli.d r[11:12], r[8:9], 0
0006b0  6b538f00  load.d r[7:8], 8(r30)
0006b4  7d100800  xwait r16, 0
0006b8  0b23a310  add.ul r[7:8], r[7:8], r[11:12]
0006bc  3f743901  blt.s r18, r19, 284
0006c0  1f550000  addli r10, zero, 5
0006c4  1f640000  addli r8, zero, 6
0006c8  1d000500  lock zero, r10
0006cc  15000014  dma_cfg zero, zero, zero, 10
0006d0  1500f014  dma_cfg zero, zero, r15, 10
0006d4  15002015  dma_cfg zero, zero, r18, 10
0006d8  1500d014  dma_cfg zero, zero, r13, 10
0006dc  15004015  dma_cfg zero, zero, r20, 10
0006e0  1500a014  dma_cfg zero, zero, r10, 10
0006e4  15008014  dma_cfg zero, zero, r8, 10
0006e8  1f041000  addli r8, zero, 8
0006ec  15000015  dma_cfg zero, zero, r16, 10
0006f0  15008014  dma_cfg zero, zero, r8, 10
0006f4  1f141000  addli r8, zero, 9
0006f8  15008014  dma_cfg zero, zero, r8, 10
0006fc  1f241000  addli r8, zero, 10
000700  15008014  dma_cfg zero, zero, r8, 10
000704  1f341000  addli r8, zero, 11
000708  15008014  dma_cfg zero, zero, r8, 10
00070c  1f441000  addli r8, zero, 12
000710  15008014  dma_cfg zero, zero, r8, 10
000714  1f641000  addli r8, zero, 14
000718  15001015  dma_cfg zero, zero, r17, 10
00071c  15008014  dma_cfg zero, zero, r8, 10
000720  1f741000  addli r8, zero, 15
000724  15008014  dma_cfg zero, zero, r8, 10
000728  1f142000  addli r8, zero, 17
00072c  15005015  dma_cfg zero, zero, r21, 10
000730  15008014  dma_cfg zero, zero, r8, 10
000734  1f242000  addli r8, zero, 18
000738  15008014  dma_cfg zero, zero, r8, 10
00073c  1f342000  addli r8, zero, 19
000740  15008014  dma_cfg zero, zero, r8, 10
000744  1f442000  addli r8, zero, 20
000748  15008014  dma_cfg zero, zero, r8, 10
00074c  1f542000  addli r8, zero, 21
000750  15008014  dma_cfg zero, zero, r8, 10
000754  1f642000  addli r8, zero, 22
000758  15008014  dma_cfg zero, zero, r8, 10
00075c  1f742000  addli r8, zero, 23
000760  15008014  dma_cfg zero, zero, r8, 10
000764  1f043000  addli r8, zero, 24
000768  15008014  dma_cfg zero, zero, r8, 10
00076c  1f143000  addli r8, zero, 25
000770  15008014  dma_cfg zero, zero, r8, 10
000774  1f243000  addli r8, zero, 26
000778  15008014  dma_cfg zero, zero, r8, 10
00077c  1f343000  addli r8, zero, 27
000780  15008014  dma_cfg zero, zero, r8, 10
000784  1f443000  addli r8, zero, 28
000788  15008014  dma_cfg zero, zero, r8, 10
00078c  1f543000  addli r8, zero, 29
000790  15008014  dma_cfg zero, zero, r8, 10
000794  1f643000  addli r8, zero, 30
000798  15008014  dma_cfg zero, zero, r8, 10
00079c  1f743000  addli r8, zero, 31
0007a0  15008014  dma_cfg zero, zero, r8, 10
0007a4  1f040001  addli r8, zero, 128
0007a8  95870700  dma_cfg r15, r15, zero, 0
0007ac  95070002  dma_cfg r15, zero, zero, 1
0007b0  15000004  dma_cfg zero, zero, zero, 2
0007b4  1501e006  dma_cfg r2, zero, r14, 3
0007b8  15044009  dma_cfg r8, zero, r20, 4
0007bc  1f040004  addli r8, zero, 512
0007c0  1504e00a  dma_cfg r8, zero, r14, 5
0007c4  15000010  dma_cfg zero, zero, zero, 8
0007c8  35000000  dma_run zero
0007cc  1500f00a  dma_cfg zero, zero, r15, 5
0007d0  15000010  dma_cfg zero, zero, zero, 8
0007d4  1d100500  unlock r10
0007d8  67490ffe  storeli.w zero, -108(r30)
0007dc  e7090ffe  storeli.w zero, -104(r30)
0007e0  2b440200  lui r8, 36
0007e4  1f050001  addli r10, zero, 128
0007e8  9f050004  addli r11, zero, 512
0007ec  1d000a00  lock zero, r20
0007f0  95870700  dma_cfg r15, r15, zero, 0
0007f4  1b140404  ori r8, r8, 64
0007f8  6346ffff  loadli.w r12,  -4(r30)
0007fc  15800304  dma_cfg zero, r7, zero, 2
000800  0b148610  add.s r8, r12, r8
000804  1504e306  dma_cfg r8, r6, r14, 3
000808  1f030010  addli r6, zero, 2048
00080c  1f540000  addli r8, zero, 5
000810  9f630000  addli r7, zero, 6
000814  15054709  dma_cfg r10, r14, r20, 4
000818  9505e30a  dma_cfg r11, r6, r14, 5
00081c  1f031000  addli r6, zero, 8
000820  15000010  dma_cfg zero, zero, zero, 8
000824  35000000  dma_run zero
000828  1500f00a  dma_cfg zero, zero, r15, 5
00082c  15000010  dma_cfg zero, zero, zero, 8
000830  1d100a00  unlock r20
000834  1d000400  lock zero, r8
000838  15000014  dma_cfg zero, zero, zero, 10
00083c  1500f014  dma_cfg zero, zero, r15, 10
000840  15002015  dma_cfg zero, zero, r18, 10
000844  1500d014  dma_cfg zero, zero, r13, 10
000848  15004015  dma_cfg zero, zero, r20, 10
00084c  15008014  dma_cfg zero, zero, r8, 10
000850  15007014  dma_cfg zero, zero, r7, 10
000854  15000015  dma_cfg zero, zero, r16, 10
000858  15006014  dma_cfg zero, zero, r6, 10
00085c  1f131000  addli r6, zero, 9
000860  15006014  dma_cfg zero, zero, r6, 10
000864  1f231000  addli r6, zero, 10
000868  15006014  dma_cfg zero, zero, r6, 10
00086c  1f331000  addli r6, zero, 11
000870  15006014  dma_cfg zero, zero, r6, 10
000874  1f431000  addli r6, zero, 12
000878  15006014  dma_cfg zero, zero, r6, 10
00087c  1f631000  addli r6, zero, 14
000880  15001015  dma_cfg zero, zero, r17, 10
000884  15006014  dma_cfg zero, zero, r6, 10
000888  1f731000  addli r6, zero, 15
00088c  15006014  dma_cfg zero, zero, r6, 10
000890  1f132000  addli r6, zero, 17
000894  15005015  dma_cfg zero, zero, r21, 10
000898  15006014  dma_cfg zero, zero, r6, 10
00089c  1f232000  addli r6, zero, 18
0008a0  15006014  dma_cfg zero, zero, r6, 10
0008a4  1f332000  addli r6, zero, 19
0008a8  15006014  dma_cfg zero, zero, r6, 10
0008ac  1f432000  addli r6, zero, 20
0008b0  15006014  dma_cfg zero, zero, r6, 10
0008b4  1f532000  addli r6, zero, 21
0008b8  15006014  dma_cfg zero, zero, r6, 10
0008bc  1f632000  addli r6, zero, 22
0008c0  15006014  dma_cfg zero, zero, r6, 10
0008c4  1f732000  addli r6, zero, 23
0008c8  15006014  dma_cfg zero, zero, r6, 10
0008cc  1f033000  addli r6, zero, 24
0008d0  15006014  dma_cfg zero, zero, r6, 10
0008d4  1f133000  addli r6, zero, 25
0008d8  15006014  dma_cfg zero, zero, r6, 10
0008dc  1f233000  addli r6, zero, 26
0008e0  15006014  dma_cfg zero, zero, r6, 10
0008e4  1f333000  addli r6, zero, 27
0008e8  15006014  dma_cfg zero, zero, r6, 10
0008ec  1f433000  addli r6, zero, 28
0008f0  15006014  dma_cfg zero, zero, r6, 10
0008f4  1f533000  addli r6, zero, 29
0008f8  15006014  dma_cfg zero, zero, r6, 10
0008fc  1f633000  addli r6, zero, 30
000900  15006014  dma_cfg zero, zero, r6, 10
000904  1f733000  addli r6, zero, 31
000908  15006014  dma_cfg zero, zero, r6, 10
00090c  95870700  dma_cfg r15, r15, zero, 0
000910  95070002  dma_cfg r15, zero, zero, 1
000914  15000004  dma_cfg zero, zero, zero, 2
000918  1501e006  dma_cfg r2, zero, r14, 3
00091c  15054009  dma_cfg r10, zero, r20, 4
000920  9505e00a  dma_cfg r11, zero, r14, 5
000924  15000010  dma_cfg zero, zero, zero, 8
000928  35000000  dma_run zero
00092c  1500f00a  dma_cfg zero, zero, r15, 5
000930  15000010  dma_cfg zero, zero, zero, 8
000934  1d100400  unlock r8
000938  7d800300  xsignal r7, 0
00093c  6b550ffa  load.d r[11:12], -96(r30)
000940  b7a3d400  beq r9, r13, 232
000944  db1e0000  j 244
000948  37f14401  beq r9, r20, 92
00094c  6346ffff  loadli.w r12,  -4(r30)
000950  bba10419  bneq r9, r16, 12392
000954  1f630000  addli r6, zero, 6
000958  67490ffe  storeli.w zero, -108(r30)
00095c  7d100300  xwait r6, 0
000960  1f131000  addli r6, zero, 9
000964  7d100300  xwait r6, 0
000968  1d000000  lock zero, zero
00096c  1f030001  addli r6, zero, 128
000970  01090000  ds_cfg r18, zero, 0
000974  01030002  ds_cfg r6, zero, 1
000978  0107001c  ds_cfg r14, zero, 14
00097c  0103001a  ds_cfg r6, zero, 13
000980  4106e104  shuffle_coa r12, r2, r14, 2
000984  1f110000  addli r2, zero, 1
000988  1d100000  unlock zero
00098c  7d000800  xsignal r16, 0
000990  e7092ffe  storeli.w r2, -104(r30)
000994  1f011000  addli r2, zero, 8
000998  7d000100  xsignal r2, 0
00099c  37b2d400  beq r9, r13, 140
0009a0  5b130000  j 152
0009a4  1f011000  addli r2, zero, 8
0009a8  9f341000  addli r9, zero, 11
0009ac  7d100a00  xwait r20, 0
0009b0  1f040000  addli r8, zero, 0
0009b4  9f130000  addli r7, zero, 1
0009b8  7d100100  xwait r2, 0
0009bc  7d900400  xwait r9, 0
0009c0  6346ffff  loadli.w r12,  -4(r30)
0009c4  1f110000  addli r2, zero, 1
0009c8  9b34e400  slli r9, r8, 14
0009cc  1b348400  slli r8, r8, 8
0009d0  1d000100  lock zero, r2
0009d4  0907e700  mm_cfg r14, r14, r14, 0
0009d8  9794c400  or r9, r9, r12
0009dc  1714c400  or r8, r8, r12
0009e0  090a2a04  mm_cfg r20, r20, r2, 2
0009e4  29049310  mm r8, r6, r9, 8
0009e8  9b841300  andi r9, r7, 1
0009ec  1f140000  addli r8, zero, 1
0009f0  9f030000  addli r7, zero, 0
0009f4  1d100100  unlock r2
0009f8  3bcf04fe  bneq r9, zero, -48
0009fc  1f510000  addli r2, zero, 5
000a00  e7090ffe  storeli.w zero, -104(r30)
000a04  80340002  core_id r9
000a08  7d000100  xsignal r2, 0
000a0c  1f111000  addli r2, zero, 9
000a10  7d000100  xsignal r2, 0
000a14  1f110000  addli r2, zero, 1
000a18  67492ffe  storeli.w r2, -108(r30)
000a1c  1f211000  addli r2, zero, 10
000a20  7d000100  xsignal r2, 0
000a24  3bd0d400  bneq r9, r13, 20
000a28  1f211000  addli r2, zero, 10
000a2c  7d100100  xwait r2, 0
000a30  1f611000  addli r2, zero, 14
000a34  7d100100  xwait r2, 0
000a38  2b410500  lui r2, 84
000a3c  3d000000  xfence
000a40  1f030001  addli r6, zero, 128
000a44  00a00300  mfence { lm, sm, gm }
000a48  1b110160  ori r2, r2, 1536
000a4c  330a0328  zext_int2long r[21:22], r6
000a50  8b192610  add.s r19, r12, r2
000a54  1f71f001  addli r2, zero, 255
000a58  80220104  csr_set csr5, r2
000a5c  1f710000  addli r2, zero, 7
000a60  33030128  zext_int2long r[7:8], r2
000a64  73386ffa  store.d r[7:8], -80(r30)
000a68  00e00200  sync_core
000a6c  bbd50400  bneq r9, zero, 372
000a70  3d000000  xfence
000a74  33040028  zext_int2long r[9:10], zero
000a78  00a00300  mfence { lm, sm, gm }
000a7c  73388ffe  store.d r[9:10], -16(r30)
000a80  db020000  j 20
000a84  6b530ffb  load.d r[7:8], -80(r30)
000a88  13216404  setlt.ul r2, r[9:10], r[7:8]
000a8c  27140400  addli.d r[9:10], r[9:10], 1
000a90  37150100  beq r2, zero, 324
000a94  1f710000  addli r2, zero, 7
000a98  6b580fff  load.d r[17:18], -16(r30)
000a9c  17352402  sll.d r[11:12], r[9:10], r2
000aa0  db040000  j 36
000aa4  27480800  addli.d r[17:18], r[17:18], 4
000aa8  0b912910  add.s r2, r19, r2
000aac  93234803  setneq.d r7, r[17:18], r[21:22]
000ab0  73666101  stores.w r22, 12(r2)
000ab4  73648101  stores.w r24, 8(r2)
000ab8  7362c100  stores.w r12, 4(r2)
000abc  73606100  stores.w r6, 0(r2)
000ac0  379f03fe  beq r7, zero, -60
000ac4  0b23a810  add.ul r[7:8], r[17:18], r[11:12]
000ac8  1b312300  slli r2, r6, 2
000acc  6343ffff  loadli.w r6,  -4(r30)
000ad0  0b132310  add.s r6, r6, r2
000ad4  6f49c300  loads.w r18, 12(r6)
000ad8  ef470300  loads.w r15, 0(r6)
000adc  6f4d4300  loads.w r26, 4(r6)
000ae0  ef4c8300  loads.w r25, 8(r6)
000ae4  970bc901  and r23, r18, r28
000ae8  13037205  setlt.u r6, r4, r23
000aec  3b300300  bneq r6, zero, 12
000af0  1f0b0900  addli r22, r18, 0
000af4  5b010000  j 8
000af8  171bb901  or r22, r18, r27
000afc  9786cc01  and r13, r25, r28
000b00  1303d204  setlt.u r6, r4, r13
000b04  3b300300  bneq r6, zero, 12
000b08  1f8c0c00  addli r24, r25, 0
000b0c  5b010000  j 8
000b10  179cbc01  or r24, r25, r27
000b14  9703cd01  and r7, r26, r28
000b18  13037204  setlt.u r6, r4, r7
000b1c  3b300300  bneq r6, zero, 12
000b20  1f060d00  addli r12, r26, 0
000b24  5b010000  j 8
000b28  1716bd01  or r12, r26, r27
000b2c  1787c701  and r14, r15, r28
000b30  1303e204  setlt.u r6, r4, r14
000b34  3b500300  bneq r6, zero, 20
000b38  1f830700  addli r6, r15, 0
000b3c  1387e104  setlt.u r14, r3, r14
000b40  37500700  beq r14, zero, 20
000b44  db040000  j 36
000b48  1793b701  or r6, r15, r27
000b4c  1387e104  setlt.u r14, r3, r14
000b50  3b600700  bneq r14, zero, 24
000b54  1bc30701  srli r6, r15, 16
000b58  1b031300  andi r6, r6, 1
000b5c  0b936710  add.s r6, r15, r6
000b60  0b131310  add.s r6, r6, r1
000b64  17035300  and r6, r6, r5
000b68  93837104  setlt.u r7, r3, r7
000b6c  37e00300  beq r7, zero, 24
000b70  9383d104  setlt.u r7, r3, r13
000b74  b7b00300  beq r7, zero, 44
000b78  93837105  setlt.u r7, r3, r23
000b7c  bbac03fe  bneq r7, zero, -216
000b80  db070000  j 60
000b84  9b430d01  srli r7, r26, 16
000b88  9b831300  andi r7, r7, 1
000b8c  8b137d10  add.s r7, r26, r7
000b90  8b931310  add.s r7, r7, r1
000b94  17865300  and r12, r7, r5
000b98  9383d104  setlt.u r7, r3, r13
000b9c  3bff03fe  bneq r7, zero, -36
000ba0  9bc30c01  srli r7, r25, 16
000ba4  9b831300  andi r7, r7, 1
000ba8  8b937c10  add.s r7, r25, r7
000bac  8b931310  add.s r7, r7, r1
000bb0  178c5300  and r24, r7, r5
000bb4  93837105  setlt.u r7, r3, r23
000bb8  bbbb03fe  bneq r7, zero, -276
000bbc  9b430901  srli r7, r18, 16
000bc0  9b831300  andi r7, r7, 1
000bc4  8b137910  add.s r7, r18, r7
000bc8  8b931310  add.s r7, r7, r1
000bcc  178b5300  and r22, r7, r5
000bd0  dbdaffff  j -300
000bd4  00200100  mfence { sm }
000bd8  80340002  core_id r9
000bdc  6b550ffa  load.d r[11:12], -96(r30)
000be0  1f711000  addli r2, zero, 15
000be4  33030128  zext_int2long r[7:8], r2
000be8  1f110000  addli r2, zero, 1
000bec  733c6ffa  store.d r[7:8], -72(r30)
000bf0  bbd52400  bneq r9, r2, 372
000bf4  1f011000  addli r2, zero, 8
000bf8  3d000000  xfence
000bfc  00a00300  mfence { lm, sm, gm }
000c00  33030128  zext_int2long r[7:8], r2
000c04  db020000  j 20
000c08  6b548ffb  load.d r[9:10], -72(r30)
000c0c  13218304  setlt.ul r2, r[7:8], r[9:10]
000c10  27130300  addli.d r[7:8], r[7:8], 1
000c14  37150100  beq r2, zero, 324
000c18  1f710000  addli r2, zero, 7
000c1c  33080028  zext_int2long r[17:18], zero
000c20  17342302  sll.d r[9:10], r[7:8], r2
000c24  db040000  j 36
000c28  27480800  addli.d r[17:18], r[17:18], 4
000c2c  0b912910  add.s r2, r19, r2
000c30  93254803  setneq.d r11, r[17:18], r[21:22]
000c34  73666101  stores.w r22, 12(r2)
000c38  73648101  stores.w r24, 8(r2)
000c3c  7362a100  stores.w r10, 4(r2)
000c40  7360c100  stores.w r12, 0(r2)
000c44  379f05fe  beq r11, zero, -60
000c48  0b258810  add.ul r[11:12], r[17:18], r[9:10]
000c4c  1b312500  slli r2, r10, 2
000c50  6345ffff  loadli.w r10,  -4(r30)
000c54  0b152510  add.s r10, r10, r2
000c58  6f49c500  loads.w r18, 12(r10)
000c5c  ef470500  loads.w r15, 0(r10)
000c60  ef454500  loads.w r11, 4(r10)
000c64  ef4c8500  loads.w r25, 8(r10)
000c68  970bc901  and r23, r18, r28
000c6c  13057205  setlt.u r10, r4, r23
000c70  3b300500  bneq r10, zero, 12
000c74  1f0b0900  addli r22, r18, 0
000c78  5b010000  j 8
000c7c  171bb901  or r22, r18, r27
000c80  9786cc01  and r13, r25, r28
000c84  1305d204  setlt.u r10, r4, r13
000c88  3b300500  bneq r10, zero, 12
000c8c  1f8c0c00  addli r24, r25, 0
000c90  5b010000  j 8
000c94  179cbc01  or r24, r25, r27
000c98  1787c501  and r14, r11, r28
000c9c  1305e204  setlt.u r10, r4, r14
000ca0  3b300500  bneq r10, zero, 12
000ca4  1f850500  addli r10, r11, 0
000ca8  5b010000  j 8
000cac  1795b501  or r10, r11, r27
000cb0  178dc701  and r26, r15, r28
000cb4  1306a205  setlt.u r12, r4, r26
000cb8  3b500600  bneq r12, zero, 20
000cbc  1f860700  addli r12, r15, 0
000cc0  138da105  setlt.u r26, r3, r26
000cc4  37500d00  beq r26, zero, 20
000cc8  db040000  j 36
000ccc  1796b701  or r12, r15, r27
000cd0  138da105  setlt.u r26, r3, r26
000cd4  3b600d00  bneq r26, zero, 24
000cd8  1bc60701  srli r12, r15, 16
000cdc  1b061600  andi r12, r12, 1
000ce0  0b96c710  add.s r12, r15, r12
000ce4  0b161610  add.s r12, r12, r1
000ce8  17065600  and r12, r12, r5
000cec  1387e104  setlt.u r14, r3, r14
000cf0  37600700  beq r14, zero, 24
000cf4  9385d104  setlt.u r11, r3, r13
000cf8  b7b00500  beq r11, zero, 44
000cfc  93857105  setlt.u r11, r3, r23
000d00  bbac05fe  bneq r11, zero, -216
000d04  db070000  j 60
000d08  1bc50501  srli r10, r11, 16
000d0c  1b051500  andi r10, r10, 1
000d10  0b95a510  add.s r10, r11, r10
000d14  0b151510  add.s r10, r10, r1
000d18  17055500  and r10, r10, r5
000d1c  9385d104  setlt.u r11, r3, r13
000d20  3bff05fe  bneq r11, zero, -36
000d24  9bc50c01  srli r11, r25, 16
000d28  9b851500  andi r11, r11, 1
000d2c  8b95bc10  add.s r11, r25, r11
000d30  8b951510  add.s r11, r11, r1
000d34  178c5500  and r24, r11, r5
000d38  93857105  setlt.u r11, r3, r23
000d3c  bbbb05fe  bneq r11, zero, -276
000d40  9b450901  srli r11, r18, 16
000d44  9b851500  andi r11, r11, 1
000d48  8b15b910  add.s r11, r18, r11
000d4c  8b951510  add.s r11, r11, r1
000d50  178b5500  and r22, r11, r5
000d54  dbdaffff  j -300
000d58  00200100  mfence { sm }
000d5c  80340002  core_id r9
000d60  6b550ffa  load.d r[11:12], -96(r30)
000d64  1f712000  addli r2, zero, 23
000d68  33030128  zext_int2long r[7:8], r2
000d6c  63012fff  loadli.w r2,  -112(r30)
000d70  73306ffc  store.d r[7:8], -64(r30)
000d74  b7550100  beq r2, zero, 372
000d78  1f012000  addli r2, zero, 16
000d7c  3d000000  xfence
000d80  00a00300  mfence { lm, sm, gm }
000d84  33030128  zext_int2long r[7:8], r2
000d88  db020000  j 20
000d8c  6b540ffc  load.d r[9:10], -64(r30)
000d90  13218304  setlt.ul r2, r[7:8], r[9:10]
000d94  27130300  addli.d r[7:8], r[7:8], 1
000d98  37150100  beq r2, zero, 324
000d9c  1f710000  addli r2, zero, 7
000da0  33080028  zext_int2long r[17:18], zero
000da4  17342302  sll.d r[9:10], r[7:8], r2
000da8  db040000  j 36
000dac  27480800  addli.d r[17:18], r[17:18], 4
000db0  0b912910  add.s r2, r19, r2
000db4  93254803  setneq.d r11, r[17:18], r[21:22]
000db8  73668101  stores.w r24, 12(r2)
000dbc  73647101  stores.w r23, 8(r2)
000dc0  7362a100  stores.w r10, 4(r2)
000dc4  7360c100  stores.w r12, 0(r2)
000dc8  379f05fe  beq r11, zero, -60
000dcc  0b258810  add.ul r[11:12], r[17:18], r[9:10]
000dd0  1b312500  slli r2, r10, 2
000dd4  6345ffff  loadli.w r10,  -4(r30)
000dd8  0b152510  add.s r10, r10, r2
000ddc  6f49c500  loads.w r18, 12(r10)
000de0  ef470500  loads.w r15, 0(r10)
000de4  ef454500  loads.w r11, 4(r10)
000de8  ef4c8500  loads.w r25, 8(r10)
000dec  170bc901  and r22, r18, r28
000df0  13056205  setlt.u r10, r4, r22
000df4  3b300500  bneq r10, zero, 12
000df8  1f0c0900  addli r24, r18, 0
000dfc  5b010000  j 8
000e00  171cb901  or r24, r18, r27
000e04  9786cc01  and r13, r25, r28
000e08  1305d204  setlt.u r10, r4, r13
000e0c  3b300500  bneq r10, zero, 12
000e10  9f8b0c00  addli r23, r25, 0
000e14  5b010000  j 8
000e18  979bbc01  or r23, r25, r27
000e1c  1787c501  and r14, r11, r28
000e20  1305e204  setlt.u r10, r4, r14
000e24  3b300500  bneq r10, zero, 12
000e28  1f850500  addli r10, r11, 0
000e2c  5b010000  j 8
000e30  1795b501  or r10, r11, r27
000e34  178dc701  and r26, r15, r28
000e38  1306a205  setlt.u r12, r4, r26
000e3c  3b500600  bneq r12, zero, 20
000e40  1f860700  addli r12, r15, 0
000e44  138da105  setlt.u r26, r3, r26
000e48  37500d00  beq r26, zero, 20
000e4c  db040000  j 36
000e50  1796b701  or r12, r15, r27
000e54  138da105  setlt.u r26, r3, r26
000e58  3b600d00  bneq r26, zero, 24
000e5c  1bc60701  srli r12, r15, 16
000e60  1b061600  andi r12, r12, 1
000e64  0b96c710  add.s r12, r15, r12
000e68  0b161610  add.s r12, r12, r1
000e6c  17065600  and r12, r12, r5
000e70  1387e104  setlt.u r14, r3, r14
000e74  37600700  beq r14, zero, 24
000e78  9385d104  setlt.u r11, r3, r13
000e7c  b7b00500  beq r11, zero, 44
000e80  93856105  setlt.u r11, r3, r22
000e84  bbac05fe  bneq r11, zero, -216
000e88  db070000  j 60
000e8c  1bc50501  srli r10, r11, 16
000e90  1b051500  andi r10, r10, 1
000e94  0b95a510  add.s r10, r11, r10
000e98  0b151510  add.s r10, r10, r1
000e9c  17055500  and r10, r10, r5
000ea0  9385d104  setlt.u r11, r3, r13
000ea4  3bff05fe  bneq r11, zero, -36
000ea8  9bc50c01  srli r11, r25, 16
000eac  9b851500  andi r11, r11, 1
000eb0  8b95bc10  add.s r11, r25, r11
000eb4  8b951510  add.s r11, r11, r1
000eb8  978b5500  and r23, r11, r5
000ebc  93856105  setlt.u r11, r3, r22
000ec0  bbbb05fe  bneq r11, zero, -276
000ec4  9b450901  srli r11, r18, 16
000ec8  9b851500  andi r11, r11, 1
000ecc  8b15b910  add.s r11, r18, r11
000ed0  8b951510  add.s r11, r11, r1
000ed4  178c5500  and r24, r11, r5
000ed8  dbdaffff  j -300
000edc  00200100  mfence { sm }
000ee0  80340002  core_id r9
000ee4  6b550ffa  load.d r[11:12], -96(r30)
000ee8  1f713000  addli r2, zero, 31
000eec  33030128  zext_int2long r[7:8], r2
000ef0  1f310000  addli r2, zero, 3
000ef4  73346ffc  store.d r[7:8], -56(r30)
000ef8  bbd52400  bneq r9, r2, 372
000efc  1f013000  addli r2, zero, 24
000f00  3d000000  xfence
000f04  00a00300  mfence { lm, sm, gm }
000f08  33040128  zext_int2long r[9:10], r2
000f0c  db020000  j 20
000f10  6b538ffc  load.d r[7:8], -56(r30)
000f14  13216404  setlt.ul r2, r[9:10], r[7:8]
000f18  27140400  addli.d r[9:10], r[9:10], 1
000f1c  37150100  beq r2, zero, 324
000f20  1f710000  addli r2, zero, 7
000f24  330c0028  zext_int2long r[25:26], zero
000f28  17382402  sll.d r[17:18], r[9:10], r2
000f2c  db040000  j 36
000f30  274c0c00  addli.d r[25:26], r[25:26], 4
000f34  0b912910  add.s r2, r19, r2
000f38  13234c03  setneq.d r6, r[25:26], r[21:22]
000f3c  73667100  stores.w r7, 12(r2)
000f40  73646101  stores.w r22, 8(r2)
000f44  7362a100  stores.w r10, 4(r2)
000f48  7360c100  stores.w r12, 0(r2)
000f4c  371f03fe  beq r6, zero, -60
000f50  0b230c11  add.ul r[7:8], r[25:26], r[17:18]
000f54  1b312300  slli r2, r6, 2
000f58  6343ffff  loadli.w r6,  -4(r30)
000f5c  8b132310  add.s r7, r6, r2
000f60  6fc3c300  loads.w r6, 12(r7)
000f64  efc70300  loads.w r15, 0(r7)
000f68  efc54300  loads.w r11, 4(r7)
000f6c  efcb8300  loads.w r23, 8(r7)
000f70  1709c301  and r18, r6, r28
000f74  93032205  setlt.u r7, r4, r18
000f78  3bb00300  bneq r7, zero, 12
000f7c  9f030300  addli r7, r6, 0
000f80  5b010000  j 8
000f84  9713b301  or r7, r6, r27
000f88  9786cb01  and r13, r23, r28
000f8c  1305d204  setlt.u r10, r4, r13
000f90  3b300500  bneq r10, zero, 12
000f94  1f8b0b00  addli r22, r23, 0
000f98  5b010000  j 8
000f9c  179bbb01  or r22, r23, r27
000fa0  1787c501  and r14, r11, r28
000fa4  1305e204  setlt.u r10, r4, r14
000fa8  3b300500  bneq r10, zero, 12
000fac  1f850500  addli r10, r11, 0
000fb0  5b010000  j 8
000fb4  1795b501  or r10, r11, r27
000fb8  178dc701  and r26, r15, r28
000fbc  1306a205  setlt.u r12, r4, r26
000fc0  3b500600  bneq r12, zero, 20
000fc4  1f860700  addli r12, r15, 0
000fc8  138da105  setlt.u r26, r3, r26
000fcc  37500d00  beq r26, zero, 20
000fd0  db040000  j 36
000fd4  1796b701  or r12, r15, r27
000fd8  138da105  setlt.u r26, r3, r26
000fdc  3b600d00  bneq r26, zero, 24
000fe0  1bc60701  srli r12, r15, 16
000fe4  1b061600  andi r12, r12, 1
000fe8  0b96c710  add.s r12, r15, r12
000fec  0b161610  add.s r12, r12, r1
000ff0  17065600  and r12, r12, r5
000ff4  1387e104  setlt.u r14, r3, r14
000ff8  37600700  beq r14, zero, 24
000ffc  9385d104  setlt.u r11, r3, r13
001000  b7b00500  beq r11, zero, 44
001004  93852105  setlt.u r11, r3, r18
001008  bbac05fe  bneq r11, zero, -216
00100c  db070000  j 60
001010  1bc50501  srli r10, r11, 16
001014  1b051500  andi r10, r10, 1
001018  0b95a510  add.s r10, r11, r10
00101c  0b151510  add.s r10, r10, r1
001020  17055500  and r10, r10, r5
001024  9385d104  setlt.u r11, r3, r13
001028  3bff05fe  bneq r11, zero, -36
00102c  9bc50b01  srli r11, r23, 16
001030  9b851500  andi r11, r11, 1
001034  8b95bb10  add.s r11, r23, r11
001038  8b951510  add.s r11, r11, r1
00103c  178b5500  and r22, r11, r5
001040  93852105  setlt.u r11, r3, r18
001044  bbbb05fe  bneq r11, zero, -276
001048  9b430301  srli r7, r6, 16
00104c  9b831300  andi r7, r7, 1
001050  0b137310  add.s r6, r6, r7
001054  0b131310  add.s r6, r6, r1
001058  97035300  and r7, r6, r5
00105c  dbdaffff  j -300
001060  00200100  mfence { sm }
001064  80340002  core_id r9
001068  6b550ffa  load.d r[11:12], -96(r30)
00106c  1f714000  addli r2, zero, 39
001070  33030128  zext_int2long r[7:8], r2
001074  63412fff  loadli.w r2,  -108(r30)
001078  73386ffc  store.d r[7:8], -48(r30)
00107c  b7550100  beq r2, zero, 372
001080  1f014000  addli r2, zero, 32
001084  3d000000  xfence
001088  00a00300  mfence { lm, sm, gm }
00108c  33080128  zext_int2long r[17:18], r2
001090  db020000  j 20
001094  6b530ffd  load.d r[7:8], -48(r30)
001098  13216804  setlt.ul r2, r[17:18], r[7:8]
00109c  27180800  addli.d r[17:18], r[17:18], 1
0010a0  37150100  beq r2, zero, 324
0010a4  1f710000  addli r2, zero, 7
0010a8  33040028  zext_int2long r[9:10], zero
0010ac  173c2802  sll.d r[25:26], r[17:18], r2
0010b0  db040000  j 36
0010b4  27440400  addli.d r[9:10], r[9:10], 4
0010b8  0b912910  add.s r2, r19, r2
0010bc  13234403  setneq.d r6, r[9:10], r[21:22]
0010c0  73667100  stores.w r7, 12(r2)
0010c4  73646101  stores.w r22, 8(r2)
0010c8  7362a100  stores.w r10, 4(r2)
0010cc  7360c100  stores.w r12, 0(r2)
0010d0  371f03fe  beq r6, zero, -60
0010d4  0b238411  add.ul r[7:8], r[9:10], r[25:26]
0010d8  1b312300  slli r2, r6, 2
0010dc  6343ffff  loadli.w r6,  -4(r30)
0010e0  8b132310  add.s r7, r6, r2
0010e4  6fc3c300  loads.w r6, 12(r7)
0010e8  efc70300  loads.w r15, 0(r7)
0010ec  efc54300  loads.w r11, 4(r7)
0010f0  efcb8300  loads.w r23, 8(r7)
0010f4  1709c301  and r18, r6, r28
0010f8  93032205  setlt.u r7, r4, r18
0010fc  3bb00300  bneq r7, zero, 12
001100  9f030300  addli r7, r6, 0
001104  5b010000  j 8
001108  9713b301  or r7, r6, r27
00110c  9786cb01  and r13, r23, r28
001110  1305d204  setlt.u r10, r4, r13
001114  3b300500  bneq r10, zero, 12
001118  1f8b0b00  addli r22, r23, 0
00111c  5b010000  j 8
001120  179bbb01  or r22, r23, r27
001124  1787c501  and r14, r11, r28
001128  1305e204  setlt.u r10, r4, r14
00112c  3b300500  bneq r10, zero, 12
001130  1f850500  addli r10, r11, 0
001134  5b010000  j 8
001138  1795b501  or r10, r11, r27
00113c  178dc701  and r26, r15, r28
001140  1306a205  setlt.u r12, r4, r26
001144  3b500600  bneq r12, zero, 20
001148  1f860700  addli r12, r15, 0
00114c  138da105  setlt.u r26, r3, r26
001150  37500d00  beq r26, zero, 20
001154  db040000  j 36
001158  1796b701  or r12, r15, r27
00115c  138da105  setlt.u r26, r3, r26
001160  3b600d00  bneq r26, zero, 24
001164  1bc60701  srli r12, r15, 16
001168  1b061600  andi r12, r12, 1
00116c  0b96c710  add.s r12, r15, r12
001170  0b161610  add.s r12, r12, r1
001174  17065600  and r12, r12, r5
001178  1387e104  setlt.u r14, r3, r14
00117c  37600700  beq r14, zero, 24
001180  9385d104  setlt.u r11, r3, r13
001184  b7b00500  beq r11, zero, 44
001188  93852105  setlt.u r11, r3, r18
00118c  bbac05fe  bneq r11, zero, -216
001190  db070000  j 60
001194  1bc50501  srli r10, r11, 16
001198  1b051500  andi r10, r10, 1
00119c  0b95a510  add.s r10, r11, r10
0011a0  0b151510  add.s r10, r10, r1
0011a4  17055500  and r10, r10, r5
0011a8  9385d104  setlt.u r11, r3, r13
0011ac  3bff05fe  bneq r11, zero, -36
0011b0  9bc50b01  srli r11, r23, 16
0011b4  9b851500  andi r11, r11, 1
0011b8  8b95bb10  add.s r11, r23, r11
0011bc  8b951510  add.s r11, r11, r1
0011c0  178b5500  and r22, r11, r5
0011c4  93852105  setlt.u r11, r3, r18
0011c8  bbbb05fe  bneq r11, zero, -276
0011cc  9b430301  srli r7, r6, 16
0011d0  9b831300  andi r7, r7, 1
0011d4  0b137310  add.s r6, r6, r7
0011d8  0b131310  add.s r6, r6, r1
0011dc  97035300  and r7, r6, r5
0011e0  dbdaffff  j -300
0011e4  00200100  mfence { sm }
0011e8  80340002  core_id r9
0011ec  6b550ffa  load.d r[11:12], -96(r30)
0011f0  1f715000  addli r2, zero, 47
0011f4  33030128  zext_int2long r[7:8], r2
0011f8  1f510000  addli r2, zero, 5
0011fc  733c6ffc  store.d r[7:8], -40(r30)
001200  bbd52400  bneq r9, r2, 372
001204  1f015000  addli r2, zero, 40
001208  3d000000  xfence
00120c  00a00300  mfence { lm, sm, gm }
001210  33080128  zext_int2long r[17:18], r2
001214  db020000  j 20
001218  6b538ffd  load.d r[7:8], -40(r30)
00121c  13216804  setlt.ul r2, r[17:18], r[7:8]
001220  27180800  addli.d r[17:18], r[17:18], 1
001224  37150100  beq r2, zero, 324
001228  1f710000  addli r2, zero, 7
00122c  33040028  zext_int2long r[9:10], zero
001230  173c2802  sll.d r[25:26], r[17:18], r2
001234  db040000  j 36
001238  27440400  addli.d r[9:10], r[9:10], 4
00123c  0b912910  add.s r2, r19, r2
001240  13234403  setneq.d r6, r[9:10], r[21:22]
001244  73667100  stores.w r7, 12(r2)
001248  73646101  stores.w r22, 8(r2)
00124c  7362a100  stores.w r10, 4(r2)
001250  7360c100  stores.w r12, 0(r2)
001254  371f03fe  beq r6, zero, -60
001258  0b238411  add.ul r[7:8], r[9:10], r[25:26]
00125c  1b312300  slli r2, r6, 2
001260  6343ffff  loadli.w r6,  -4(r30)
001264  8b132310  add.s r7, r6, r2
001268  6fc3c300  loads.w r6, 12(r7)
00126c  efc70300  loads.w r15, 0(r7)
001270  efc54300  loads.w r11, 4(r7)
001274  efcb8300  loads.w r23, 8(r7)
001278  1709c301  and r18, r6, r28
00127c  93032205  setlt.u r7, r4, r18
001280  3bb00300  bneq r7, zero, 12
001284  9f030300  addli r7, r6, 0
001288  5b010000  j 8
00128c  9713b301  or r7, r6, r27
001290  9786cb01  and r13, r23, r28
001294  1305d204  setlt.u r10, r4, r13
001298  3b300500  bneq r10, zero, 12
00129c  1f8b0b00  addli r22, r23, 0
0012a0  5b010000  j 8
0012a4  179bbb01  or r22, r23, r27
0012a8  1787c501  and r14, r11, r28
0012ac  1305e204  setlt.u r10, r4, r14
0012b0  3b300500  bneq r10, zero, 12
0012b4  1f850500  addli r10, r11, 0
0012b8  5b010000  j 8
0012bc  1795b501  or r10, r11, r27
0012c0  178dc701  and r26, r15, r28
0012c4  1306a205  setlt.u r12, r4, r26
0012c8  3b500600  bneq r12, zero, 20
0012cc  1f860700  addli r12, r15, 0
0012d0  138da105  setlt.u r26, r3, r26
0012d4  37500d00  beq r26, zero, 20
0012d8  db040000  j 36
0012dc  1796b701  or r12, r15, r27
0012e0  138da105  setlt.u r26, r3, r26
0012e4  3b600d00  bneq r26, zero, 24
0012e8  1bc60701  srli r12, r15, 16
0012ec  1b061600  andi r12, r12, 1
0012f0  0b96c710  add.s r12, r15, r12
0012f4  0b161610  add.s r12, r12, r1
0012f8  17065600  and r12, r12, r5
0012fc  1387e104  setlt.u r14, r3, r14
001300  37600700  beq r14, zero, 24
001304  9385d104  setlt.u r11, r3, r13
001308  b7b00500  beq r11, zero, 44
00130c  93852105  setlt.u r11, r3, r18
001310  bbac05fe  bneq r11, zero, -216
001314  db070000  j 60
001318  1bc50501  srli r10, r11, 16
00131c  1b051500  andi r10, r10, 1
001320  0b95a510  add.s r10, r11, r10
001324  0b151510  add.s r10, r10, r1
001328  17055500  and r10, r10, r5
00132c  9385d104  setlt.u r11, r3, r13
001330  3bff05fe  bneq r11, zero, -36
001334  9bc50b01  srli r11, r23, 16
001338  9b851500  andi r11, r11, 1
00133c  8b95bb10  add.s r11, r23, r11
001340  8b951510  add.s r11, r11, r1
001344  178b5500  and r22, r11, r5
001348  93852105  setlt.u r11, r3, r18
00134c  bbbb05fe  bneq r11, zero, -276
001350  9b430301  srli r7, r6, 16
001354  9b831300  andi r7, r7, 1
001358  0b137310  add.s r6, r6, r7
00135c  0b131310  add.s r6, r6, r1
001360  97035300  and r7, r6, r5
001364  dbdaffff  j -300
001368  00200100  mfence { sm }
00136c  80340002  core_id r9
001370  6b550ffa  load.d r[11:12], -96(r30)
001374  1f716000  addli r2, zero, 55
001378  33030128  zext_int2long r[7:8], r2
00137c  1f610000  addli r2, zero, 6
001380  73306ffe  store.d r[7:8], -32(r30)
001384  bbc52400  bneq r9, r2, 368
001388  1f016000  addli r2, zero, 48
00138c  3d000000  xfence
001390  00a00300  mfence { lm, sm, gm }
001394  33080128  zext_int2long r[17:18], r2
001398  db020000  j 20
00139c  6b530ffe  load.d r[7:8], -32(r30)
0013a0  13216804  setlt.ul r2, r[17:18], r[7:8]
0013a4  27180800  addli.d r[17:18], r[17:18], 1
0013a8  37150100  beq r2, zero, 324
0013ac  1f710000  addli r2, zero, 7
0013b0  33040028  zext_int2long r[9:10], zero
0013b4  173c2802  sll.d r[25:26], r[17:18], r2
0013b8  db040000  j 36
0013bc  27440400  addli.d r[9:10], r[9:10], 4
0013c0  0b912910  add.s r2, r19, r2
0013c4  13234403  setneq.d r6, r[9:10], r[21:22]
0013c8  73667100  stores.w r7, 12(r2)
0013cc  73646101  stores.w r22, 8(r2)
0013d0  7362a100  stores.w r10, 4(r2)
0013d4  7360c100  stores.w r12, 0(r2)
0013d8  371f03fe  beq r6, zero, -60
0013dc  0b238411  add.ul r[7:8], r[9:10], r[25:26]
0013e0  1b312300  slli r2, r6, 2
0013e4  6343ffff  loadli.w r6,  -4(r30)
0013e8  8b132310  add.s r7, r6, r2
0013ec  6fc3c300  loads.w r6, 12(r7)
0013f0  efc70300  loads.w r15, 0(r7)
0013f4  efc54300  loads.w r11, 4(r7)
0013f8  efcb8300  loads.w r23, 8(r7)
0013fc  1709c301  and r18, r6, r28
001400  93032205  setlt.u r7, r4, r18
001404  3bb00300  bneq r7, zero, 12
001408  9f030300  addli r7, r6, 0
00140c  5b010000  j 8
001410  9713b301  or r7, r6, r27
001414  9786cb01  and r13, r23, r28
001418  1305d204  setlt.u r10, r4, r13
00141c  3b300500  bneq r10, zero, 12
001420  1f8b0b00  addli r22, r23, 0
001424  5b010000  j 8
001428  179bbb01  or r22, r23, r27
00142c  1787c501  and r14, r11, r28
001430  1305e204  setlt.u r10, r4, r14
001434  3b300500  bneq r10, zero, 12
001438  1f850500  addli r10, r11, 0
00143c  5b010000  j 8
001440  1795b501  or r10, r11, r27
001444  178dc701  and r26, r15, r28
001448  1306a205  setlt.u r12, r4, r26
00144c  3b500600  bneq r12, zero, 20
001450  1f860700  addli r12, r15, 0
001454  138da105  setlt.u r26, r3, r26
001458  37500d00  beq r26, zero, 20
00145c  db040000  j 36
001460  1796b701  or r12, r15, r27
001464  138da105  setlt.u r26, r3, r26
001468  3b600d00  bneq r26, zero, 24
00146c  1bc60701  srli r12, r15, 16
001470  1b061600  andi r12, r12, 1
001474  0b96c710  add.s r12, r15, r12
001478  0b161610  add.s r12, r12, r1
00147c  17065600  and r12, r12, r5
001480  1387e104  setlt.u r14, r3, r14
001484  37600700  beq r14, zero, 24
001488  9385d104  setlt.u r11, r3, r13
00148c  b7b00500  beq r11, zero, 44
001490  93852105  setlt.u r11, r3, r18
001494  bbac05fe  bneq r11, zero, -216
001498  db070000  j 60
00149c  1bc50501  srli r10, r11, 16
0014a0  1b051500  andi r10, r10, 1
0014a4  0b95a510  add.s r10, r11, r10
0014a8  0b151510  add.s r10, r10, r1
0014ac  17055500  and r10, r10, r5
0014b0  9385d104  setlt.u r11, r3, r13
0014b4  3bff05fe  bneq r11, zero, -36
0014b8  9bc50b01  srli r11, r23, 16
0014bc  9b851500  andi r11, r11, 1
0014c0  8b95bb10  add.s r11, r23, r11
0014c4  8b951510  add.s r11, r11, r1
0014c8  178b5500  and r22, r11, r5
0014cc  93852105  setlt.u r11, r3, r18
0014d0  bbbb05fe  bneq r11, zero, -276
0014d4  9b430301  srli r7, r6, 16
0014d8  9b831300  andi r7, r7, 1
0014dc  0b137310  add.s r6, r6, r7
0014e0  0b131310  add.s r6, r6, r1
0014e4  97035300  and r7, r6, r5
0014e8  dbdaffff  j -300
0014ec  00200100  mfence { sm }
0014f0  6b550ffa  load.d r[11:12], -96(r30)
0014f4  1f717000  addli r2, zero, 63
0014f8  33030128  zext_int2long r[7:8], r2
0014fc  63013fff  loadli.w r2,  -104(r30)
001500  73346ffe  store.d r[7:8], -24(r30)
001504  b7450100  beq r2, zero, 368
001508  1f017000  addli r2, zero, 56
00150c  3d000000  xfence
001510  00a00300  mfence { lm, sm, gm }
001514  33080128  zext_int2long r[17:18], r2
001518  db020000  j 20
00151c  6b538ffe  load.d r[7:8], -24(r30)
001520  13216804  setlt.ul r2, r[17:18], r[7:8]
001524  27180800  addli.d r[17:18], r[17:18], 1
001528  37150100  beq r2, zero, 324
00152c  1f710000  addli r2, zero, 7
001530  33040028  zext_int2long r[9:10], zero
001534  173c2802  sll.d r[25:26], r[17:18], r2
001538  db040000  j 36
00153c  27440400  addli.d r[9:10], r[9:10], 4
001540  0b912910  add.s r2, r19, r2
001544  13234403  setneq.d r6, r[9:10], r[21:22]
001548  73667100  stores.w r7, 12(r2)
00154c  73646101  stores.w r22, 8(r2)
001550  7362a100  stores.w r10, 4(r2)
001554  7360c100  stores.w r12, 0(r2)
001558  371f03fe  beq r6, zero, -60
00155c  0b238411  add.ul r[7:8], r[9:10], r[25:26]
001560  1b312300  slli r2, r6, 2
001564  6343ffff  loadli.w r6,  -4(r30)
001568  8b132310  add.s r7, r6, r2
00156c  6fc3c300  loads.w r6, 12(r7)
001570  efc70300  loads.w r15, 0(r7)
001574  efc54300  loads.w r11, 4(r7)
001578  efcb8300  loads.w r23, 8(r7)
00157c  1709c301  and r18, r6, r28
001580  93032205  setlt.u r7, r4, r18
001584  3bb00300  bneq r7, zero, 12
001588  9f030300  addli r7, r6, 0
00158c  5b010000  j 8
001590  9713b301  or r7, r6, r27
001594  9786cb01  and r13, r23, r28
001598  1305d204  setlt.u r10, r4, r13
00159c  3b300500  bneq r10, zero, 12
0015a0  1f8b0b00  addli r22, r23, 0
0015a4  5b010000  j 8
0015a8  179bbb01  or r22, r23, r27
0015ac  1787c501  and r14, r11, r28
0015b0  1305e204  setlt.u r10, r4, r14
0015b4  3b300500  bneq r10, zero, 12
0015b8  1f850500  addli r10, r11, 0
0015bc  5b010000  j 8
0015c0  1795b501  or r10, r11, r27
0015c4  178dc701  and r26, r15, r28
0015c8  1306a205  setlt.u r12, r4, r26
0015cc  3b500600  bneq r12, zero, 20
0015d0  1f860700  addli r12, r15, 0
0015d4  138da105  setlt.u r26, r3, r26
0015d8  37500d00  beq r26, zero, 20
0015dc  db040000  j 36
0015e0  1796b701  or r12, r15, r27
0015e4  138da105  setlt.u r26, r3, r26
0015e8  3b600d00  bneq r26, zero, 24
0015ec  1bc60701  srli r12, r15, 16
0015f0  1b061600  andi r12, r12, 1
0015f4  0b96c710  add.s r12, r15, r12
0015f8  0b161610  add.s r12, r12, r1
0015fc  17065600  and r12, r12, r5
001600  1387e104  setlt.u r14, r3, r14
001604  37600700  beq r14, zero, 24
001608  9385d104  setlt.u r11, r3, r13
00160c  b7b00500  beq r11, zero, 44
001610  93852105  setlt.u r11, r3, r18
001614  bbac05fe  bneq r11, zero, -216
001618  db070000  j 60
00161c  1bc50501  srli r10, r11, 16
001620  1b051500  andi r10, r10, 1
001624  0b95a510  add.s r10, r11, r10
001628  0b151510  add.s r10, r10, r1
00162c  17055500  and r10, r10, r5
001630  9385d104  setlt.u r11, r3, r13
001634  3bff05fe  bneq r11, zero, -36
001638  9bc50b01  srli r11, r23, 16
00163c  9b851500  andi r11, r11, 1
001640  8b95bb10  add.s r11, r23, r11
001644  8b951510  add.s r11, r11, r1
001648  178b5500  and r22, r11, r5
00164c  93852105  setlt.u r11, r3, r18
001650  bbbb05fe  bneq r11, zero, -276
001654  9b430301  srli r7, r6, 16
001658  9b831300  andi r7, r7, 1
00165c  0b137310  add.s r6, r6, r7
001660  0b131310  add.s r6, r6, r1
001664  97035300  and r7, r6, r5
001668  dbdaffff  j -300
00166c  00200100  mfence { sm }
001670  6b550ffa  load.d r[11:12], -96(r30)
001674  63413fff  loadli.w r2,  -100(r30)
001678  1f030007  addli r6, zero, 896
00167c  33030328  zext_int2long r[7:8], r6
001680  1b317100  slli r2, r2, 7
001684  33040128  zext_int2long r[9:10], r2
001688  1f71f001  addli r2, zero, 255
00168c  0b236440  min.ul r[7:8], r[9:10], r[7:8]
001690  27030301  addli.d r[7:8], r[7:8], 128
001694  0b238348  max.ul r[7:8], r[7:8], r[9:10]
001698  0b338318  sub.sl r[7:8], r[7:8], r[9:10]
00169c  80340002  core_id r9
0016a0  0b234341  min.ul r[7:8], r[7:8], r[21:22]
0016a4  73386ff6  store.d r[7:8], -144(r30)
0016a8  80220104  csr_set csr5, r2
0016ac  1f310000  addli r2, zero, 3
0016b0  00e00200  sync_core
0016b4  bba02400  bneq r9, r2, 40
0016b8  1f311000  addli r2, zero, 11
0016bc  7d000100  xsignal r2, 0
0016c0  1f411000  addli r2, zero, 12
0016c4  7d000100  xsignal r2, 0
0016c8  1f511000  addli r2, zero, 13
0016cc  7d100100  xwait r2, 0
0016d0  1f612000  addli r2, zero, 22
0016d4  7d100100  xwait r2, 0
0016d8  5b6d0000  j 872
0016dc  63015fff  loadli.w r2,  -88(r30)
0016e0  9f630000  addli r7, zero, 6
0016e4  1b339100  slli r6, r2, 9
0016e8  2b410500  lui r2, 84
0016ec  0b112310  add.s r2, r6, r2
0016f0  bb9b7400  bneq r9, r7, 740
0016f4  eb530f01  load.d r[8:9], 16(r30)
0016f8  eb548ff7  load.d r[10:11], -136(r30)
0016fc  1f072000  addli r14, zero, 16
001700  1f260000  addli r12, zero, 2
001704  7d100700  xwait r14, 0
001708  8ba39310  add.ul r[8:9], r[8:9], r[10:11]
00170c  e3441fff  loadli.w r9,  -116(r30)
001710  bf549600  blt.s r12, r9, 308
001714  9f550000  addli r11, zero, 5
001718  1f150000  addli r10, zero, 1
00171c  9f340000  addli r9, zero, 3
001720  9f460000  addli r13, zero, 4
001724  1d800500  lock zero, r11
001728  15000014  dma_cfg zero, zero, zero, 10
00172c  1500a014  dma_cfg zero, zero, r10, 10
001730  1500c014  dma_cfg zero, zero, r12, 10
001734  15009014  dma_cfg zero, zero, r9, 10
001738  9f640000  addli r9, zero, 6
00173c  1500d014  dma_cfg zero, zero, r13, 10
001740  1500b014  dma_cfg zero, zero, r11, 10
001744  15009014  dma_cfg zero, zero, r9, 10
001748  9f740000  addli r9, zero, 7
00174c  15009014  dma_cfg zero, zero, r9, 10
001750  9f041000  addli r9, zero, 8
001754  15009014  dma_cfg zero, zero, r9, 10
001758  9f141000  addli r9, zero, 9
00175c  15009014  dma_cfg zero, zero, r9, 10
001760  9f241000  addli r9, zero, 10
001764  15009014  dma_cfg zero, zero, r9, 10
001768  9f341000  addli r9, zero, 11
00176c  15009014  dma_cfg zero, zero, r9, 10
001770  9f441000  addli r9, zero, 12
001774  15009014  dma_cfg zero, zero, r9, 10
001778  9f541000  addli r9, zero, 13
00177c  15009014  dma_cfg zero, zero, r9, 10
001780  9f641000  addli r9, zero, 14
001784  15009014  dma_cfg zero, zero, r9, 10
001788  9f741000  addli r9, zero, 15
00178c  15009014  dma_cfg zero, zero, r9, 10
001790  9f142000  addli r9, zero, 17
001794  1500e014  dma_cfg zero, zero, r14, 10
001798  15009014  dma_cfg zero, zero, r9, 10
00179c  9f242000  addli r9, zero, 18
0017a0  15009014  dma_cfg zero, zero, r9, 10
0017a4  9f342000  addli r9, zero, 19
0017a8  15009014  dma_cfg zero, zero, r9, 10
0017ac  9f442000  addli r9, zero, 20
0017b0  15009014  dma_cfg zero, zero, r9, 10
0017b4  9f542000  addli r9, zero, 21
0017b8  15009014  dma_cfg zero, zero, r9, 10
0017bc  9f642000  addli r9, zero, 22
0017c0  15009014  dma_cfg zero, zero, r9, 10
0017c4  9f742000  addli r9, zero, 23
0017c8  15009014  dma_cfg zero, zero, r9, 10
0017cc  9f043000  addli r9, zero, 24
0017d0  15009014  dma_cfg zero, zero, r9, 10
0017d4  9f143000  addli r9, zero, 25
0017d8  15009014  dma_cfg zero, zero, r9, 10
0017dc  9f243000  addli r9, zero, 26
0017e0  15009014  dma_cfg zero, zero, r9, 10
0017e4  9f343000  addli r9, zero, 27
0017e8  15009014  dma_cfg zero, zero, r9, 10
0017ec  9f443000  addli r9, zero, 28
0017f0  15009014  dma_cfg zero, zero, r9, 10
0017f4  9f543000  addli r9, zero, 29
0017f8  15009014  dma_cfg zero, zero, r9, 10
0017fc  9f643000  addli r9, zero, 30
001800  15009014  dma_cfg zero, zero, r9, 10
001804  9f743000  addli r9, zero, 31
001808  15009014  dma_cfg zero, zero, r9, 10
00180c  9f048000  addli r9, zero, 64
001810  15050500  dma_cfg r10, r10, zero, 0
001814  15050002  dma_cfg r10, zero, zero, 1
001818  15000004  dma_cfg zero, zero, zero, 2
00181c  15019006  dma_cfg r2, zero, r9, 3
001820  9f040001  addli r9, zero, 128
001824  9504d008  dma_cfg r9, zero, r13, 4
001828  9f040004  addli r9, zero, 512
00182c  9504a00a  dma_cfg r9, zero, r10, 5
001830  15000010  dma_cfg zero, zero, zero, 8
001834  35000000  dma_run zero
001838  1500a00a  dma_cfg zero, zero, r10, 5
00183c  15000010  dma_cfg zero, zero, zero, 8
001840  1d900500  unlock r11
001844  9f460000  addli r13, zero, 4
001848  9f150000  addli r11, zero, 1
00184c  ab440500  lui r9, 84
001850  1f058000  addli r10, zero, 64
001854  1d800600  lock zero, r13
001858  9b940404  ori r9, r9, 64
00185c  95850500  dma_cfg r11, r11, zero, 0
001860  15000404  dma_cfg zero, r8, zero, 2
001864  0b139310  add.s r6, r6, r9
001868  eb570ff7  load.d r[16:17], -144(r30)
00186c  1583a306  dma_cfg r6, r7, r10, 3
001870  1f040002  addli r8, zero, 256
001874  9ff43700  addli r9, r15, 31
001878  9bb31700  slli r7, r15, 1
00187c  9f070001  addli r15, zero, 128
001880  1f080004  addli r16, zero, 512
001884  1bc35400  srli r6, r9, 5
001888  9b83e303  andi r7, r7, 62
00188c  9f540000  addli r9, zero, 5
001890  95076508  dma_cfg r15, r10, r6, 4
001894  1508b40a  dma_cfg r16, r8, r11, 5
001898  1f340000  addli r8, zero, 3
00189c  15007010  dma_cfg zero, zero, r7, 8
0018a0  35000000  dma_run zero
0018a4  1500b00a  dma_cfg zero, zero, r11, 5
0018a8  15000010  dma_cfg zero, zero, zero, 8
0018ac  1d900600  unlock r13
0018b0  1d800400  lock zero, r9
0018b4  15000014  dma_cfg zero, zero, zero, 10
0018b8  1500b014  dma_cfg zero, zero, r11, 10
0018bc  1500c014  dma_cfg zero, zero, r12, 10
0018c0  1f162000  addli r12, zero, 17
0018c4  15008014  dma_cfg zero, zero, r8, 10
0018c8  1f640000  addli r8, zero, 6
0018cc  1500d014  dma_cfg zero, zero, r13, 10
0018d0  15009014  dma_cfg zero, zero, r9, 10
0018d4  15008014  dma_cfg zero, zero, r8, 10
0018d8  1f740000  addli r8, zero, 7
0018dc  15008014  dma_cfg zero, zero, r8, 10
0018e0  1f041000  addli r8, zero, 8
0018e4  15008014  dma_cfg zero, zero, r8, 10
0018e8  1f141000  addli r8, zero, 9
0018ec  15008014  dma_cfg zero, zero, r8, 10
0018f0  1f241000  addli r8, zero, 10
0018f4  15008014  dma_cfg zero, zero, r8, 10
0018f8  1f341000  addli r8, zero, 11
0018fc  15008014  dma_cfg zero, zero, r8, 10
001900  1f441000  addli r8, zero, 12
001904  15008014  dma_cfg zero, zero, r8, 10
001908  1f541000  addli r8, zero, 13
00190c  15008014  dma_cfg zero, zero, r8, 10
001910  1f641000  addli r8, zero, 14
001914  15008014  dma_cfg zero, zero, r8, 10
001918  1f741000  addli r8, zero, 15
00191c  15008014  dma_cfg zero, zero, r8, 10
001920  1500e014  dma_cfg zero, zero, r14, 10
001924  1500c014  dma_cfg zero, zero, r12, 10
001928  1f262000  addli r12, zero, 18
00192c  1500c014  dma_cfg zero, zero, r12, 10
001930  1f362000  addli r12, zero, 19
001934  1500c014  dma_cfg zero, zero, r12, 10
001938  1f462000  addli r12, zero, 20
00193c  1500c014  dma_cfg zero, zero, r12, 10
001940  1f562000  addli r12, zero, 21
001944  1500c014  dma_cfg zero, zero, r12, 10
001948  1f662000  addli r12, zero, 22
00194c  1500c014  dma_cfg zero, zero, r12, 10
001950  1f762000  addli r12, zero, 23
001954  1500c014  dma_cfg zero, zero, r12, 10
001958  1f063000  addli r12, zero, 24
00195c  1500c014  dma_cfg zero, zero, r12, 10
001960  1f163000  addli r12, zero, 25
001964  1500c014  dma_cfg zero, zero, r12, 10
001968  1f263000  addli r12, zero, 26
00196c  1500c014  dma_cfg zero, zero, r12, 10
001970  1f363000  addli r12, zero, 27
001974  1500c014  dma_cfg zero, zero, r12, 10
001978  1f463000  addli r12, zero, 28
00197c  1500c014  dma_cfg zero, zero, r12, 10
001980  1f563000  addli r12, zero, 29
001984  1500c014  dma_cfg zero, zero, r12, 10
001988  1f663000  addli r12, zero, 30
00198c  1500c014  dma_cfg zero, zero, r12, 10
001990  1f763000  addli r12, zero, 31
001994  1500c014  dma_cfg zero, zero, r12, 10
001998  95850500  dma_cfg r11, r11, zero, 0
00199c  95050002  dma_cfg r11, zero, zero, 1
0019a0  15000004  dma_cfg zero, zero, zero, 2
0019a4  1501a006  dma_cfg r2, zero, r10, 3
0019a8  95076008  dma_cfg r15, zero, r6, 4
0019ac  1508b00a  dma_cfg r16, zero, r11, 5
0019b0  15007010  dma_cfg zero, zero, r7, 8
0019b4  35000000  dma_run zero
0019b8  1500b00a  dma_cfg zero, zero, r11, 5
0019bc  15000010  dma_cfg zero, zero, zero, 8
0019c0  1d900400  unlock r9
0019c4  7d000400  xsignal r8, 0
0019c8  6b550ffa  load.d r[11:12], -96(r30)
0019cc  80340002  core_id r9
0019d0  5b0e0000  j 112
0019d4  1f530000  addli r6, zero, 5
0019d8  2b840000  lui r8, 8
0019dc  bb916400  bneq r9, r6, 100
0019e0  9f431000  addli r7, zero, 12
0019e4  1f030000  addli r6, zero, 0
0019e8  7d900300  xwait r7, 0
0019ec  9f731000  addli r7, zero, 15
0019f0  7d900300  xwait r7, 0
0019f4  9f230000  addli r7, zero, 2
0019f8  1d800300  lock zero, r7
0019fc  ab03803f  lui r7, 260096
001a00  0d000002  ew_cfg zero, zero, zero, 1
001a04  8d930300  ewcoeff_cfg r7, r7, zero, 0
001a08  9f73f000  addli r7, zero, 127
001a0c  0d800304  ew_cfg zero, r7, zero, 2
001a10  9f130000  addli r7, zero, 1
001a14  8d030006  ew_cfg r7, zero, zero, 3
001a18  8b936910  add.s r7, r19, r6
001a1c  1f030304  addli r6, r6, 512
001a20  ad832300  dsmadd r7, r7, r2, 0
001a24  bb5f83fe  bneq r6, r8, -12
001a28  1f210000  addli r2, zero, 2
001a2c  1d100100  unlock r2
001a30  1f511000  addli r2, zero, 13
001a34  7d000100  xsignal r2, 0
001a38  1f012000  addli r2, zero, 16
001a3c  7d000100  xsignal r2, 0
001a40  6343ffff  loadli.w r6,  -4(r30)
001a44  2bc10300  lui r2, 60
001a48  3d000000  xfence
001a4c  00a00300  mfence { lm, sm, gm }
001a50  8b162310  add.s r13, r6, r2
001a54  1f71f001  addli r2, zero, 255
001a58  80220104  csr_set csr5, r2
001a5c  00e00200  sync_core
001a60  37810400  beq r9, zero, 64
001a64  1f110000  addli r2, zero, 1
001a68  b7d62400  beq r9, r2, 436
001a6c  63012fff  loadli.w r2,  -112(r30)
001a70  bb2c0100  bneq r2, zero, 808
001a74  1f310000  addli r2, zero, 3
001a78  37f22402  beq r9, r2, 1180
001a7c  63412fff  loadli.w r2,  -108(r30)
001a80  3b480102  bneq r2, zero, 1552
001a84  1f510000  addli r2, zero, 5
001a88  379e2402  beq r9, r2, 1924
001a8c  1f610000  addli r2, zero, 6
001a90  b7e32404  beq r9, r2, 2296
001a94  63013fff  loadli.w r2,  -104(r30)
001a98  bb390104  bneq r2, zero, 2668
001a9c  db7b0100  j 3036
001aa0  3d000000  xfence
001aa4  33030028  zext_int2long r[7:8], zero
001aa8  00a00300  mfence { lm, sm, gm }
001aac  73346ffa  store.d r[7:8], -88(r30)
001ab0  5b030000  j 24
001ab4  6b530ffb  load.d r[7:8], -80(r30)
001ab8  6b540fff  load.d r[9:10], -16(r30)
001abc  13216404  setlt.ul r2, r[9:10], r[7:8]
001ac0  27130400  addli.d r[7:8], r[9:10], 1
001ac4  37150100  beq r2, zero, 324
001ac8  1f710000  addli r2, zero, 7
001acc  6b548ffa  load.d r[9:10], -88(r30)
001ad0  73386ffe  store.d r[7:8], -16(r30)
001ad4  173c2302  sll.d r[25:26], r[7:8], r2
001ad8  db040000  j 36
001adc  27440400  addli.d r[9:10], r[9:10], 4
001ae0  0b912610  add.s r2, r13, r2
001ae4  13234403  setneq.d r6, r[9:10], r[21:22]
001ae8  73667100  stores.w r7, 12(r2)
001aec  73647101  stores.w r23, 8(r2)
001af0  7362a100  stores.w r10, 4(r2)
001af4  7360c100  stores.w r12, 0(r2)
001af8  b77e03fe  beq r6, zero, -68
001afc  0b238411  add.ul r[7:8], r[9:10], r[25:26]
001b00  1b312300  slli r2, r6, 2
001b04  8b932910  add.s r7, r19, r2
001b08  6fc3c300  loads.w r6, 12(r7)
001b0c  6fc80300  loads.w r16, 0(r7)
001b10  efc54300  loads.w r11, 4(r7)
001b14  6fcd8300  loads.w r26, 8(r7)
001b18  170bc301  and r22, r6, r28
001b1c  93036205  setlt.u r7, r4, r22
001b20  3bb00300  bneq r7, zero, 12
001b24  9f030300  addli r7, r6, 0
001b28  5b010000  j 8
001b2c  9713b301  or r7, r6, r27
001b30  9707cd01  and r15, r26, r28
001b34  1305f204  setlt.u r10, r4, r15
001b38  3b300500  bneq r10, zero, 12
001b3c  9f0b0d00  addli r23, r26, 0
001b40  5b010000  j 8
001b44  971bbd01  or r23, r26, r27
001b48  1787c501  and r14, r11, r28
001b4c  1305e204  setlt.u r10, r4, r14
001b50  3b300500  bneq r10, zero, 12
001b54  1f850500  addli r10, r11, 0
001b58  5b010000  j 8
001b5c  1795b501  or r10, r11, r27
001b60  9708c801  and r17, r16, r28
001b64  13061205  setlt.u r12, r4, r17
001b68  3b500600  bneq r12, zero, 20
001b6c  1f060800  addli r12, r16, 0
001b70  93881105  setlt.u r17, r3, r17
001b74  37d00800  beq r17, zero, 20
001b78  db040000  j 36
001b7c  1716b801  or r12, r16, r27
001b80  93881105  setlt.u r17, r3, r17
001b84  3be00800  bneq r17, zero, 24
001b88  1b460801  srli r12, r16, 16
001b8c  1b061600  andi r12, r12, 1
001b90  0b16c810  add.s r12, r16, r12
001b94  0b161610  add.s r12, r12, r1
001b98  17065600  and r12, r12, r5
001b9c  1387e104  setlt.u r14, r3, r14
001ba0  37600700  beq r14, zero, 24
001ba4  9385f104  setlt.u r11, r3, r15
001ba8  b7b00500  beq r11, zero, 44
001bac  93856105  setlt.u r11, r3, r22
001bb0  bbbc05fe  bneq r11, zero, -212
001bb4  db070000  j 60
001bb8  1bc50501  srli r10, r11, 16
001bbc  1b051500  andi r10, r10, 1
001bc0  0b95a510  add.s r10, r11, r10
001bc4  0b151510  add.s r10, r10, r1
001bc8  17055500  and r10, r10, r5
001bcc  9385f104  setlt.u r11, r3, r15
001bd0  3bff05fe  bneq r11, zero, -36
001bd4  9b450d01  srli r11, r26, 16
001bd8  9b851500  andi r11, r11, 1
001bdc  8b15bd10  add.s r11, r26, r11
001be0  8b951510  add.s r11, r11, r1
001be4  978b5500  and r23, r11, r5
001be8  93856105  setlt.u r11, r3, r22
001bec  bbcb05fe  bneq r11, zero, -272
001bf0  9b430301  srli r7, r6, 16
001bf4  9b831300  andi r7, r7, 1
001bf8  0b137310  add.s r6, r6, r7
001bfc  0b131310  add.s r6, r6, r1
001c00  97035300  and r7, r6, r5
001c04  5bdbffff  j -296
001c08  00200100  mfence { sm }
001c0c  80340002  core_id r9
001c10  6b550ffa  load.d r[11:12], -96(r30)
001c14  1f110000  addli r2, zero, 1
001c18  3bd924fe  bneq r9, r2, -428
001c1c  1f011000  addli r2, zero, 8
001c20  3d000000  xfence
001c24  00a00300  mfence { lm, sm, gm }
001c28  33030128  zext_int2long r[7:8], r2
001c2c  5b030000  j 24
001c30  6b538ffb  load.d r[7:8], -72(r30)
001c34  6b540fff  load.d r[9:10], -16(r30)
001c38  13216404  setlt.ul r2, r[9:10], r[7:8]
001c3c  27130400  addli.d r[7:8], r[9:10], 1
001c40  37150100  beq r2, zero, 324
001c44  1f710000  addli r2, zero, 7
001c48  33040028  zext_int2long r[9:10], zero
001c4c  73386ffe  store.d r[7:8], -16(r30)
001c50  97382302  sll.d r[18:19], r[7:8], r2
001c54  db040000  j 36
001c58  27440400  addli.d r[9:10], r[9:10], 4
001c5c  0b912610  add.s r2, r13, r2
001c60  13234403  setneq.d r6, r[9:10], r[21:22]
001c64  73667100  stores.w r7, 12(r2)
001c68  73647101  stores.w r23, 8(r2)
001c6c  7362a100  stores.w r10, 4(r2)
001c70  7360c100  stores.w r12, 0(r2)
001c74  b77e03fe  beq r6, zero, -68
001c78  0b231411  add.ul r[7:8], r[9:10], r[18:19]
001c7c  1b312300  slli r2, r6, 2
001c80  8b932910  add.s r7, r19, r2
001c84  6fc3c300  loads.w r6, 12(r7)
001c88  6fcd0300  loads.w r26, 0(r7)
001c8c  efc54300  loads.w r11, 4(r7)
001c90  6fcc8300  loads.w r24, 8(r7)
001c94  170bc301  and r22, r6, r28
001c98  93036205  setlt.u r7, r4, r22
001c9c  3bb00300  bneq r7, zero, 12
001ca0  9f030300  addli r7, r6, 0
001ca4  5b010000  j 8
001ca8  9713b301  or r7, r6, r27
001cac  970ccc01  and r25, r24, r28
001cb0  13059205  setlt.u r10, r4, r25
001cb4  3b300500  bneq r10, zero, 12
001cb8  9f0b0c00  addli r23, r24, 0
001cbc  5b010000  j 8
001cc0  971bbc01  or r23, r24, r27
001cc4  1787c501  and r14, r11, r28
001cc8  1305e204  setlt.u r10, r4, r14
001ccc  3b300500  bneq r10, zero, 12
001cd0  1f850500  addli r10, r11, 0
001cd4  5b010000  j 8
001cd8  1795b501  or r10, r11, r27
001cdc  9707cd01  and r15, r26, r28
001ce0  1306f204  setlt.u r12, r4, r15
001ce4  3b500600  bneq r12, zero, 20
001ce8  1f060d00  addli r12, r26, 0
001cec  9387f104  setlt.u r15, r3, r15
001cf0  37d00700  beq r15, zero, 20
001cf4  db040000  j 36
001cf8  1716bd01  or r12, r26, r27
001cfc  9387f104  setlt.u r15, r3, r15
001d00  3be00700  bneq r15, zero, 24
001d04  1b460d01  srli r12, r26, 16
001d08  1b061600  andi r12, r12, 1
001d0c  0b16cd10  add.s r12, r26, r12
001d10  0b161610  add.s r12, r12, r1
001d14  17065600  and r12, r12, r5
001d18  1387e104  setlt.u r14, r3, r14
001d1c  37600700  beq r14, zero, 24
001d20  93859105  setlt.u r11, r3, r25
001d24  b7b00500  beq r11, zero, 44
001d28  93856105  setlt.u r11, r3, r22
001d2c  bbbc05fe  bneq r11, zero, -212
001d30  db070000  j 60
001d34  1bc50501  srli r10, r11, 16
001d38  1b051500  andi r10, r10, 1
001d3c  0b95a510  add.s r10, r11, r10
001d40  0b151510  add.s r10, r10, r1
001d44  17055500  and r10, r10, r5
001d48  93859105  setlt.u r11, r3, r25
001d4c  3bff05fe  bneq r11, zero, -36
001d50  9b450c01  srli r11, r24, 16
001d54  9b851500  andi r11, r11, 1
001d58  8b15bc10  add.s r11, r24, r11
001d5c  8b951510  add.s r11, r11, r1
001d60  978b5500  and r23, r11, r5
001d64  93856105  setlt.u r11, r3, r22
001d68  bbcb05fe  bneq r11, zero, -272
001d6c  9b430301  srli r7, r6, 16
001d70  9b831300  andi r7, r7, 1
001d74  0b137310  add.s r6, r6, r7
001d78  0b131310  add.s r6, r6, r1
001d7c  97035300  and r7, r6, r5
001d80  5bdbffff  j -296
001d84  00200100  mfence { sm }
001d88  80340002  core_id r9
001d8c  6b550ffa  load.d r[11:12], -96(r30)
001d90  63012fff  loadli.w r2,  -112(r30)
001d94  b70301fe  beq r2, zero, -800
001d98  1f012000  addli r2, zero, 16
001d9c  3d000000  xfence
001da0  00a00300  mfence { lm, sm, gm }
001da4  33030128  zext_int2long r[7:8], r2
001da8  5b030000  j 24
001dac  6b530ffc  load.d r[7:8], -64(r30)
001db0  6b540fff  load.d r[9:10], -16(r30)
001db4  13216404  setlt.ul r2, r[9:10], r[7:8]
001db8  27130400  addli.d r[7:8], r[9:10], 1
001dbc  37150100  beq r2, zero, 324
001dc0  1f710000  addli r2, zero, 7
001dc4  33040028  zext_int2long r[9:10], zero
001dc8  73386ffe  store.d r[7:8], -16(r30)
001dcc  97382302  sll.d r[18:19], r[7:8], r2
001dd0  db040000  j 36
001dd4  27440400  addli.d r[9:10], r[9:10], 4
001dd8  0b912610  add.s r2, r13, r2
001ddc  13234403  setneq.d r6, r[9:10], r[21:22]
001de0  73667100  stores.w r7, 12(r2)
001de4  73647101  stores.w r23, 8(r2)
001de8  7362a100  stores.w r10, 4(r2)
001dec  7360c100  stores.w r12, 0(r2)
001df0  b77e03fe  beq r6, zero, -68
001df4  0b231411  add.ul r[7:8], r[9:10], r[18:19]
001df8  1b312300  slli r2, r6, 2
001dfc  8b932910  add.s r7, r19, r2
001e00  6fc3c300  loads.w r6, 12(r7)
001e04  6fcd0300  loads.w r26, 0(r7)
001e08  efc54300  loads.w r11, 4(r7)
001e0c  6fcc8300  loads.w r24, 8(r7)
001e10  170bc301  and r22, r6, r28
001e14  93036205  setlt.u r7, r4, r22
001e18  3bb00300  bneq r7, zero, 12
001e1c  9f030300  addli r7, r6, 0
001e20  5b010000  j 8
001e24  9713b301  or r7, r6, r27
001e28  970ccc01  and r25, r24, r28
001e2c  13059205  setlt.u r10, r4, r25
001e30  3b300500  bneq r10, zero, 12
001e34  9f0b0c00  addli r23, r24, 0
001e38  5b010000  j 8
001e3c  971bbc01  or r23, r24, r27
001e40  1787c501  and r14, r11, r28
001e44  1305e204  setlt.u r10, r4, r14
001e48  3b300500  bneq r10, zero, 12
001e4c  1f850500  addli r10, r11, 0
001e50  5b010000  j 8
001e54  1795b501  or r10, r11, r27
001e58  9707cd01  and r15, r26, r28
001e5c  1306f204  setlt.u r12, r4, r15
001e60  3b500600  bneq r12, zero, 20
001e64  1f060d00  addli r12, r26, 0
001e68  9387f104  setlt.u r15, r3, r15
001e6c  37d00700  beq r15, zero, 20
001e70  db040000  j 36
001e74  1716bd01  or r12, r26, r27
001e78  9387f104  setlt.u r15, r3, r15
001e7c  3be00700  bneq r15, zero, 24
001e80  1b460d01  srli r12, r26, 16
001e84  1b061600  andi r12, r12, 1
001e88  0b16cd10  add.s r12, r26, r12
001e8c  0b161610  add.s r12, r12, r1
001e90  17065600  and r12, r12, r5
001e94  1387e104  setlt.u r14, r3, r14
001e98  37600700  beq r14, zero, 24
001e9c  93859105  setlt.u r11, r3, r25
001ea0  b7b00500  beq r11, zero, 44
001ea4  93856105  setlt.u r11, r3, r22
001ea8  bbbc05fe  bneq r11, zero, -212
001eac  db070000  j 60
001eb0  1bc50501  srli r10, r11, 16
001eb4  1b051500  andi r10, r10, 1
001eb8  0b95a510  add.s r10, r11, r10
001ebc  0b151510  add.s r10, r10, r1
001ec0  17055500  and r10, r10, r5
001ec4  93859105  setlt.u r11, r3, r25
001ec8  3bff05fe  bneq r11, zero, -36
001ecc  9b450c01  srli r11, r24, 16
001ed0  9b851500  andi r11, r11, 1
001ed4  8b15bc10  add.s r11, r24, r11
001ed8  8b951510  add.s r11, r11, r1
001edc  978b5500  and r23, r11, r5
001ee0  93856105  setlt.u r11, r3, r22
001ee4  bbcb05fe  bneq r11, zero, -272
001ee8  9b430301  srli r7, r6, 16
001eec  9b831300  andi r7, r7, 1
001ef0  0b137310  add.s r6, r6, r7
001ef4  0b131310  add.s r6, r6, r1
001ef8  97035300  and r7, r6, r5
001efc  5bdbffff  j -296
001f00  00200100  mfence { sm }
001f04  80340002  core_id r9
001f08  6b550ffa  load.d r[11:12], -96(r30)
001f0c  1f310000  addli r2, zero, 3
001f10  bbbd24fc  bneq r9, r2, -1172
001f14  1f013000  addli r2, zero, 24
001f18  3d000000  xfence
001f1c  00a00300  mfence { lm, sm, gm }
001f20  33030128  zext_int2long r[7:8], r2
001f24  5b030000  j 24
001f28  6b538ffc  load.d r[7:8], -56(r30)
001f2c  6b540fff  load.d r[9:10], -16(r30)
001f30  13216404  setlt.ul r2, r[9:10], r[7:8]
001f34  27130400  addli.d r[7:8], r[9:10], 1
001f38  37150100  beq r2, zero, 324
001f3c  1f710000  addli r2, zero, 7
001f40  33040028  zext_int2long r[9:10], zero
001f44  73386ffe  store.d r[7:8], -16(r30)
001f48  97382302  sll.d r[18:19], r[7:8], r2
001f4c  db040000  j 36
001f50  27440400  addli.d r[9:10], r[9:10], 4
001f54  0b912610  add.s r2, r13, r2
001f58  13234403  setneq.d r6, r[9:10], r[21:22]
001f5c  73667100  stores.w r7, 12(r2)
001f60  73647101  stores.w r23, 8(r2)
001f64  7362a100  stores.w r10, 4(r2)
001f68  7360c100  stores.w r12, 0(r2)
001f6c  b77e03fe  beq r6, zero, -68
001f70  0b231411  add.ul r[7:8], r[9:10], r[18:19]
001f74  1b312300  slli r2, r6, 2
001f78  8b932910  add.s r7, r19, r2
001f7c  6fc3c300  loads.w r6, 12(r7)
001f80  6fcd0300  loads.w r26, 0(r7)
001f84  efc54300  loads.w r11, 4(r7)
001f88  6fcc8300  loads.w r24, 8(r7)
001f8c  170bc301  and r22, r6, r28
001f90  93036205  setlt.u r7, r4, r22
001f94  3bb00300  bneq r7, zero, 12
001f98  9f030300  addli r7, r6, 0
001f9c  5b010000  j 8
001fa0  9713b301  or r7, r6, r27
001fa4  970ccc01  and r25, r24, r28
001fa8  13059205  setlt.u r10, r4, r25
001fac  3b300500  bneq r10, zero, 12
001fb0  9f0b0c00  addli r23, r24, 0
001fb4  5b010000  j 8
001fb8  971bbc01  or r23, r24, r27
001fbc  1787c501  and r14, r11, r28
001fc0  1305e204  setlt.u r10, r4, r14
001fc4  3b300500  bneq r10, zero, 12
001fc8  1f850500  addli r10, r11, 0
001fcc  5b010000  j 8
001fd0  1795b501  or r10, r11, r27
001fd4  9707cd01  and r15, r26, r28
001fd8  1306f204  setlt.u r12, r4, r15
001fdc  3b500600  bneq r12, zero, 20
001fe0  1f060d00  addli r12, r26, 0
001fe4  9387f104  setlt.u r15, r3, r15
001fe8  37d00700  beq r15, zero, 20
001fec  db040000  j 36
001ff0  1716bd01  or r12, r26, r27
001ff4  9387f104  setlt.u r15, r3, r15
001ff8  3be00700  bneq r15, zero, 24
001ffc  1b460d01  srli r12, r26, 16
002000  1b061600  andi r12, r12, 1
002004  0b16cd10  add.s r12, r26, r12
002008  0b161610  add.s r12, r12, r1
00200c  17065600  and r12, r12, r5
002010  1387e104  setlt.u r14, r3, r14
002014  37600700  beq r14, zero, 24
002018  93859105  setlt.u r11, r3, r25
00201c  b7b00500  beq r11, zero, 44
002020  93856105  setlt.u r11, r3, r22
002024  bbbc05fe  bneq r11, zero, -212
002028  db070000  j 60
00202c  1bc50501  srli r10, r11, 16
002030  1b051500  andi r10, r10, 1
002034  0b95a510  add.s r10, r11, r10
002038  0b151510  add.s r10, r10, r1
00203c  17055500  and r10, r10, r5
002040  93859105  setlt.u r11, r3, r25
002044  3bff05fe  bneq r11, zero, -36
002048  9b450c01  srli r11, r24, 16
00204c  9b851500  andi r11, r11, 1
002050  8b15bc10  add.s r11, r24, r11
002054  8b951510  add.s r11, r11, r1
002058  978b5500  and r23, r11, r5
00205c  93856105  setlt.u r11, r3, r22
002060  bbcb05fe  bneq r11, zero, -272
002064  9b430301  srli r7, r6, 16
002068  9b831300  andi r7, r7, 1
00206c  0b137310  add.s r6, r6, r7
002070  0b131310  add.s r6, r6, r1
002074  97035300  and r7, r6, r5
002078  5bdbffff  j -296
00207c  00200100  mfence { sm }
002080  80340002  core_id r9
002084  6b550ffa  load.d r[11:12], -96(r30)
002088  63412fff  loadli.w r2,  -108(r30)
00208c  b76701fc  beq r2, zero, -1544
002090  1f014000  addli r2, zero, 32
002094  3d000000  xfence
002098  00a00300  mfence { lm, sm, gm }
00209c  33030128  zext_int2long r[7:8], r2
0020a0  5b030000  j 24
0020a4  6b530ffd  load.d r[7:8], -48(r30)
0020a8  6b540fff  load.d r[9:10], -16(r30)
0020ac  13216404  setlt.ul r2, r[9:10], r[7:8]
0020b0  27130400  addli.d r[7:8], r[9:10], 1
0020b4  37150100  beq r2, zero, 324
0020b8  1f710000  addli r2, zero, 7
0020bc  33040028  zext_int2long r[9:10], zero
0020c0  73386ffe  store.d r[7:8], -16(r30)
0020c4  97382302  sll.d r[18:19], r[7:8], r2
0020c8  db040000  j 36
0020cc  27440400  addli.d r[9:10], r[9:10], 4
0020d0  0b912610  add.s r2, r13, r2
0020d4  13234403  setneq.d r6, r[9:10], r[21:22]
0020d8  73667100  stores.w r7, 12(r2)
0020dc  73647101  stores.w r23, 8(r2)
0020e0  7362a100  stores.w r10, 4(r2)
0020e4  7360c100  stores.w r12, 0(r2)
0020e8  b77e03fe  beq r6, zero, -68
0020ec  0b231411  add.ul r[7:8], r[9:10], r[18:19]
0020f0  1b312300  slli r2, r6, 2
0020f4  8b932910  add.s r7, r19, r2
0020f8  6fc3c300  loads.w r6, 12(r7)
0020fc  6fcd0300  loads.w r26, 0(r7)
002100  efc54300  loads.w r11, 4(r7)
002104  6fcc8300  loads.w r24, 8(r7)
002108  170bc301  and r22, r6, r28
00210c  93036205  setlt.u r7, r4, r22
002110  3bb00300  bneq r7, zero, 12
002114  9f030300  addli r7, r6, 0
002118  5b010000  j 8
00211c  9713b301  or r7, r6, r27
002120  970ccc01  and r25, r24, r28
002124  13059205  setlt.u r10, r4, r25
002128  3b300500  bneq r10, zero, 12
00212c  9f0b0c00  addli r23, r24, 0
002130  5b010000  j 8
002134  971bbc01  or r23, r24, r27
002138  1787c501  and r14, r11, r28
00213c  1305e204  setlt.u r10, r4, r14
002140  3b300500  bneq r10, zero, 12
002144  1f850500  addli r10, r11, 0
002148  5b010000  j 8
00214c  1795b501  or r10, r11, r27
002150  9707cd01  and r15, r26, r28
002154  1306f204  setlt.u r12, r4, r15
002158  3b500600  bneq r12, zero, 20
00215c  1f060d00  addli r12, r26, 0
002160  9387f104  setlt.u r15, r3, r15
002164  37d00700  beq r15, zero, 20
002168  db040000  j 36
00216c  1716bd01  or r12, r26, r27
002170  9387f104  setlt.u r15, r3, r15
002174  3be00700  bneq r15, zero, 24
002178  1b460d01  srli r12, r26, 16
00217c  1b061600  andi r12, r12, 1
002180  0b16cd10  add.s r12, r26, r12
002184  0b161610  add.s r12, r12, r1
002188  17065600  and r12, r12, r5
00218c  1387e104  setlt.u r14, r3, r14
002190  37600700  beq r14, zero, 24
002194  93859105  setlt.u r11, r3, r25
002198  b7b00500  beq r11, zero, 44
00219c  93856105  setlt.u r11, r3, r22
0021a0  bbbc05fe  bneq r11, zero, -212
0021a4  db070000  j 60
0021a8  1bc50501  srli r10, r11, 16
0021ac  1b051500  andi r10, r10, 1
0021b0  0b95a510  add.s r10, r11, r10
0021b4  0b151510  add.s r10, r10, r1
0021b8  17055500  and r10, r10, r5
0021bc  93859105  setlt.u r11, r3, r25
0021c0  3bff05fe  bneq r11, zero, -36
0021c4  9b450c01  srli r11, r24, 16
0021c8  9b851500  andi r11, r11, 1
0021cc  8b15bc10  add.s r11, r24, r11
0021d0  8b951510  add.s r11, r11, r1
0021d4  978b5500  and r23, r11, r5
0021d8  93856105  setlt.u r11, r3, r22
0021dc  bbcb05fe  bneq r11, zero, -272
0021e0  9b430301  srli r7, r6, 16
0021e4  9b831300  andi r7, r7, 1
0021e8  0b137310  add.s r6, r6, r7
0021ec  0b131310  add.s r6, r6, r1
0021f0  97035300  and r7, r6, r5
0021f4  5bdbffff  j -296
0021f8  00200100  mfence { sm }
0021fc  80340002  core_id r9
002200  6b550ffa  load.d r[11:12], -96(r30)
002204  1f510000  addli r2, zero, 5
002208  3b9224fc  bneq r9, r2, -1916
00220c  1f015000  addli r2, zero, 40
002210  3d000000  xfence
002214  00a00300  mfence { lm, sm, gm }
002218  33030128  zext_int2long r[7:8], r2
00221c  5b030000  j 24
002220  6b538ffd  load.d r[7:8], -40(r30)
002224  6b540fff  load.d r[9:10], -16(r30)
002228  13216404  setlt.ul r2, r[9:10], r[7:8]
00222c  27130400  addli.d r[7:8], r[9:10], 1
002230  37150100  beq r2, zero, 324
002234  1f710000  addli r2, zero, 7
002238  33040028  zext_int2long r[9:10], zero
00223c  73386ffe  store.d r[7:8], -16(r30)
002240  97382302  sll.d r[18:19], r[7:8], r2
002244  db040000  j 36
002248  27440400  addli.d r[9:10], r[9:10], 4
00224c  0b912610  add.s r2, r13, r2
002250  13234403  setneq.d r6, r[9:10], r[21:22]
002254  73667100  stores.w r7, 12(r2)
002258  73647101  stores.w r23, 8(r2)
00225c  7362a100  stores.w r10, 4(r2)
002260  7360c100  stores.w r12, 0(r2)
002264  b77e03fe  beq r6, zero, -68
002268  0b231411  add.ul r[7:8], r[9:10], r[18:19]
00226c  1b312300  slli r2, r6, 2
002270  8b932910  add.s r7, r19, r2
002274  6fc3c300  loads.w r6, 12(r7)
002278  6fcd0300  loads.w r26, 0(r7)
00227c  efc54300  loads.w r11, 4(r7)
002280  6fcc8300  loads.w r24, 8(r7)
002284  170bc301  and r22, r6, r28
002288  93036205  setlt.u r7, r4, r22
00228c  3bb00300  bneq r7, zero, 12
002290  9f030300  addli r7, r6, 0
002294  5b010000  j 8
002298  9713b301  or r7, r6, r27
00229c  970ccc01  and r25, r24, r28
0022a0  13059205  setlt.u r10, r4, r25
0022a4  3b300500  bneq r10, zero, 12
0022a8  9f0b0c00  addli r23, r24, 0
0022ac  5b010000  j 8
0022b0  971bbc01  or r23, r24, r27
0022b4  1787c501  and r14, r11, r28
0022b8  1305e204  setlt.u r10, r4, r14
0022bc  3b300500  bneq r10, zero, 12
0022c0  1f850500  addli r10, r11, 0
0022c4  5b010000  j 8
0022c8  1795b501  or r10, r11, r27
0022cc  9707cd01  and r15, r26, r28
0022d0  1306f204  setlt.u r12, r4, r15
0022d4  3b500600  bneq r12, zero, 20
0022d8  1f060d00  addli r12, r26, 0
0022dc  9387f104  setlt.u r15, r3, r15
0022e0  37d00700  beq r15, zero, 20
0022e4  db040000  j 36
0022e8  1716bd01  or r12, r26, r27
0022ec  9387f104  setlt.u r15, r3, r15
0022f0  3be00700  bneq r15, zero, 24
0022f4  1b460d01  srli r12, r26, 16
0022f8  1b061600  andi r12, r12, 1
0022fc  0b16cd10  add.s r12, r26, r12
002300  0b161610  add.s r12, r12, r1
002304  17065600  and r12, r12, r5
002308  1387e104  setlt.u r14, r3, r14
00230c  37600700  beq r14, zero, 24
002310  93859105  setlt.u r11, r3, r25
002314  b7b00500  beq r11, zero, 44
002318  93856105  setlt.u r11, r3, r22
00231c  bbbc05fe  bneq r11, zero, -212
002320  db070000  j 60
002324  1bc50501  srli r10, r11, 16
002328  1b051500  andi r10, r10, 1
00232c  0b95a510  add.s r10, r11, r10
002330  0b151510  add.s r10, r10, r1
002334  17055500  and r10, r10, r5
002338  93859105  setlt.u r11, r3, r25
00233c  3bff05fe  bneq r11, zero, -36
002340  9b450c01  srli r11, r24, 16
002344  9b851500  andi r11, r11, 1
002348  8b15bc10  add.s r11, r24, r11
00234c  8b951510  add.s r11, r11, r1
002350  978b5500  and r23, r11, r5
002354  93856105  setlt.u r11, r3, r22
002358  bbcb05fe  bneq r11, zero, -272
00235c  9b430301  srli r7, r6, 16
002360  9b831300  andi r7, r7, 1
002364  0b137310  add.s r6, r6, r7
002368  0b131310  add.s r6, r6, r1
00236c  97035300  and r7, r6, r5
002370  5bdbffff  j -296
002374  00200100  mfence { sm }
002378  80340002  core_id r9
00237c  6b550ffa  load.d r[11:12], -96(r30)
002380  1f610000  addli r2, zero, 6
002384  3bcc24fa  bneq r9, r2, -2288
002388  1f016000  addli r2, zero, 48
00238c  3d000000  xfence
002390  00a00300  mfence { lm, sm, gm }
002394  33030128  zext_int2long r[7:8], r2
002398  5b030000  j 24
00239c  6b530ffe  load.d r[7:8], -32(r30)
0023a0  6b540fff  load.d r[9:10], -16(r30)
0023a4  13216404  setlt.ul r2, r[9:10], r[7:8]
0023a8  27130400  addli.d r[7:8], r[9:10], 1
0023ac  37150100  beq r2, zero, 324
0023b0  1f710000  addli r2, zero, 7
0023b4  33040028  zext_int2long r[9:10], zero
0023b8  73386ffe  store.d r[7:8], -16(r30)
0023bc  97382302  sll.d r[18:19], r[7:8], r2
0023c0  db040000  j 36
0023c4  27440400  addli.d r[9:10], r[9:10], 4
0023c8  0b912610  add.s r2, r13, r2
0023cc  13234403  setneq.d r6, r[9:10], r[21:22]
0023d0  73667100  stores.w r7, 12(r2)
0023d4  73647101  stores.w r23, 8(r2)
0023d8  7362a100  stores.w r10, 4(r2)
0023dc  7360c100  stores.w r12, 0(r2)
0023e0  b77e03fe  beq r6, zero, -68
0023e4  0b231411  add.ul r[7:8], r[9:10], r[18:19]
0023e8  1b312300  slli r2, r6, 2
0023ec  8b932910  add.s r7, r19, r2
0023f0  6fc3c300  loads.w r6, 12(r7)
0023f4  6fcd0300  loads.w r26, 0(r7)
0023f8  efc54300  loads.w r11, 4(r7)
0023fc  6fcc8300  loads.w r24, 8(r7)
002400  170bc301  and r22, r6, r28
002404  93036205  setlt.u r7, r4, r22
002408  3bb00300  bneq r7, zero, 12
00240c  9f030300  addli r7, r6, 0
002410  5b010000  j 8
002414  9713b301  or r7, r6, r27
002418  970ccc01  and r25, r24, r28
00241c  13059205  setlt.u r10, r4, r25
002420  3b300500  bneq r10, zero, 12
002424  9f0b0c00  addli r23, r24, 0
002428  5b010000  j 8
00242c  971bbc01  or r23, r24, r27
002430  1787c501  and r14, r11, r28
002434  1305e204  setlt.u r10, r4, r14
002438  3b300500  bneq r10, zero, 12
00243c  1f850500  addli r10, r11, 0
002440  5b010000  j 8
002444  1795b501  or r10, r11, r27
002448  9707cd01  and r15, r26, r28
00244c  1306f204  setlt.u r12, r4, r15
002450  3b500600  bneq r12, zero, 20
002454  1f060d00  addli r12, r26, 0
002458  9387f104  setlt.u r15, r3, r15
00245c  37d00700  beq r15, zero, 20
002460  db040000  j 36
002464  1716bd01  or r12, r26, r27
002468  9387f104  setlt.u r15, r3, r15
00246c  3be00700  bneq r15, zero, 24
002470  1b460d01  srli r12, r26, 16
002474  1b061600  andi r12, r12, 1
002478  0b16cd10  add.s r12, r26, r12
00247c  0b161610  add.s r12, r12, r1
002480  17065600  and r12, r12, r5
002484  1387e104  setlt.u r14, r3, r14
002488  37600700  beq r14, zero, 24
00248c  93859105  setlt.u r11, r3, r25
002490  b7b00500  beq r11, zero, 44
002494  93856105  setlt.u r11, r3, r22
002498  bbbc05fe  bneq r11, zero, -212
00249c  db070000  j 60
0024a0  1bc50501  srli r10, r11, 16
0024a4  1b051500  andi r10, r10, 1
0024a8  0b95a510  add.s r10, r11, r10
0024ac  0b151510  add.s r10, r10, r1
0024b0  17055500  and r10, r10, r5
0024b4  93859105  setlt.u r11, r3, r25
0024b8  3bff05fe  bneq r11, zero, -36
0024bc  9b450c01  srli r11, r24, 16
0024c0  9b851500  andi r11, r11, 1
0024c4  8b15bc10  add.s r11, r24, r11
0024c8  8b951510  add.s r11, r11, r1
0024cc  978b5500  and r23, r11, r5
0024d0  93856105  setlt.u r11, r3, r22
0024d4  bbcb05fe  bneq r11, zero, -272
0024d8  9b430301  srli r7, r6, 16
0024dc  9b831300  andi r7, r7, 1
0024e0  0b137310  add.s r6, r6, r7
0024e4  0b131310  add.s r6, r6, r1
0024e8  97035300  and r7, r6, r5
0024ec  5bdbffff  j -296
0024f0  00200100  mfence { sm }
0024f4  80340002  core_id r9
0024f8  6b550ffa  load.d r[11:12], -96(r30)
0024fc  63013fff  loadli.w r2,  -104(r30)
002500  b7650100  beq r2, zero, 376
002504  1f017000  addli r2, zero, 56
002508  3d000000  xfence
00250c  00a00300  mfence { lm, sm, gm }
002510  33030128  zext_int2long r[7:8], r2
002514  5b030000  j 24
002518  6b538ffe  load.d r[7:8], -24(r30)
00251c  6b540fff  load.d r[9:10], -16(r30)
002520  13216404  setlt.ul r2, r[9:10], r[7:8]
002524  27130400  addli.d r[7:8], r[9:10], 1
002528  37150100  beq r2, zero, 324
00252c  1f710000  addli r2, zero, 7
002530  33040028  zext_int2long r[9:10], zero
002534  73386ffe  store.d r[7:8], -16(r30)
002538  97382302  sll.d r[18:19], r[7:8], r2
00253c  db040000  j 36
002540  27440400  addli.d r[9:10], r[9:10], 4
002544  0b912610  add.s r2, r13, r2
002548  13234403  setneq.d r6, r[9:10], r[21:22]
00254c  73667100  stores.w r7, 12(r2)
002550  73647101  stores.w r23, 8(r2)
002554  7362a100  stores.w r10, 4(r2)
002558  7360c100  stores.w r12, 0(r2)
00255c  b77e03fe  beq r6, zero, -68
002560  0b231411  add.ul r[7:8], r[9:10], r[18:19]
002564  1b312300  slli r2, r6, 2
002568  8b932910  add.s r7, r19, r2
00256c  6fc3c300  loads.w r6, 12(r7)
002570  6fcd0300  loads.w r26, 0(r7)
002574  efc54300  loads.w r11, 4(r7)
002578  6fcc8300  loads.w r24, 8(r7)
00257c  170bc301  and r22, r6, r28
002580  93036205  setlt.u r7, r4, r22
002584  3bb00300  bneq r7, zero, 12
002588  9f030300  addli r7, r6, 0
00258c  5b010000  j 8
002590  9713b301  or r7, r6, r27
002594  970ccc01  and r25, r24, r28
002598  13059205  setlt.u r10, r4, r25
00259c  3b300500  bneq r10, zero, 12
0025a0  9f0b0c00  addli r23, r24, 0
0025a4  5b010000  j 8
0025a8  971bbc01  or r23, r24, r27
0025ac  1787c501  and r14, r11, r28
0025b0  1305e204  setlt.u r10, r4, r14
0025b4  3b300500  bneq r10, zero, 12
0025b8  1f850500  addli r10, r11, 0
0025bc  5b010000  j 8
0025c0  1795b501  or r10, r11, r27
0025c4  9707cd01  and r15, r26, r28
0025c8  1306f204  setlt.u r12, r4, r15
0025cc  3b500600  bneq r12, zero, 20
0025d0  1f060d00  addli r12, r26, 0
0025d4  9387f104  setlt.u r15, r3, r15
0025d8  37d00700  beq r15, zero, 20
0025dc  db040000  j 36
0025e0  1716bd01  or r12, r26, r27
0025e4  9387f104  setlt.u r15, r3, r15
0025e8  3be00700  bneq r15, zero, 24
0025ec  1b460d01  srli r12, r26, 16
0025f0  1b061600  andi r12, r12, 1
0025f4  0b16cd10  add.s r12, r26, r12
0025f8  0b161610  add.s r12, r12, r1
0025fc  17065600  and r12, r12, r5
002600  1387e104  setlt.u r14, r3, r14
002604  37600700  beq r14, zero, 24
002608  93859105  setlt.u r11, r3, r25
00260c  b7b00500  beq r11, zero, 44
002610  93856105  setlt.u r11, r3, r22
002614  bbbc05fe  bneq r11, zero, -212
002618  db070000  j 60
00261c  1bc50501  srli r10, r11, 16
002620  1b051500  andi r10, r10, 1
002624  0b95a510  add.s r10, r11, r10
002628  0b151510  add.s r10, r10, r1
00262c  17055500  and r10, r10, r5
002630  93859105  setlt.u r11, r3, r25
002634  3bff05fe  bneq r11, zero, -36
002638  9b450c01  srli r11, r24, 16
00263c  9b851500  andi r11, r11, 1
002640  8b15bc10  add.s r11, r24, r11
002644  8b951510  add.s r11, r11, r1
002648  978b5500  and r23, r11, r5
00264c  93856105  setlt.u r11, r3, r22
002650  bbcb05fe  bneq r11, zero, -272
002654  9b430301  srli r7, r6, 16
002658  9b831300  andi r7, r7, 1
00265c  0b137310  add.s r6, r6, r7
002660  0b131310  add.s r6, r6, r1
002664  97035300  and r7, r6, r5
002668  5bdbffff  j -296
00266c  00200100  mfence { sm }
002670  80340002  core_id r9
002674  6b550ffa  load.d r[11:12], -96(r30)
002678  1f71f001  addli r2, zero, 255
00267c  80220104  csr_set csr5, r2
002680  1f310000  addli r2, zero, 3
002684  00e00200  sync_core
002688  3b912400  bneq r9, r2, 68
00268c  1f611000  addli r2, zero, 14
002690  7d000100  xsignal r2, 0
002694  1f312000  addli r2, zero, 19
002698  7d000100  xsignal r2, 0
00269c  1f412000  addli r2, zero, 20
0026a0  7d000100  xsignal r2, 0
0026a4  1f112000  addli r2, zero, 17
0026a8  7d000100  xsignal r2, 0
0026ac  6341bffe  loadli.w r2,  -164(r30)
0026b0  6343ffff  loadli.w r6,  -4(r30)
0026b4  8b192310  add.s r19, r6, r2
0026b8  1f212000  addli r2, zero, 18
0026bc  7d100100  xwait r2, 0
0026c0  1f712000  addli r2, zero, 23
0026c4  7d100100  xwait r2, 0
0026c8  5b330000  j 408
0026cc  6341bffe  loadli.w r2,  -164(r30)
0026d0  6347ffff  loadli.w r14,  -4(r30)
0026d4  8b192710  add.s r19, r14, r2
0026d8  1f510000  addli r2, zero, 5
0026dc  3b962400  bneq r9, r2, 388
0026e0  1f112000  addli r2, zero, 17
0026e4  1f240000  addli r8, zero, 2
0026e8  1f450000  addli r10, zero, 4
0026ec  9f130000  addli r7, zero, 1
0026f0  ab0500c1  lui r11, 790528
0026f4  1f030000  addli r6, zero, 0
0026f8  2b860000  lui r12, 8
0026fc  7d100100  xwait r2, 0
002700  1f013000  addli r2, zero, 24
002704  7d100100  xwait r2, 0
002708  1d000400  lock zero, r8
00270c  1f71f00f  addli r2, zero, 2047
002710  0d000002  ew_cfg zero, zero, zero, 1
002714  0d000104  ew_cfg zero, r2, zero, 2
002718  1f511000  addli r2, zero, 13
00271c  0d050006  ew_cfg r10, zero, zero, 3
002720  0d050526  ew_cfg r10, r10, zero, 19
002724  0d010014  ew_cfg r2, zero, zero, 10
002728  6301bffe  loadli.w r2,  -168(r30)
00272c  0d842316  ew_cfg r8, r7, r2, 11
002730  1f310000  addli r2, zero, 3
002734  0d00201a  ew_cfg zero, zero, r2, 13
002738  2b81ff40  lui r2, 266232
00273c  8d05251c  ew_cfg r11, r10, r2, 14
002740  2b01803f  lui r2, 260096
002744  1f352000  addli r10, zero, 19
002748  0d00011e  ew_cfg zero, r2, zero, 15
00274c  cda90600  sslut r19, r13, 0
002750  0d000014  ew_cfg zero, zero, zero, 10
002754  0d000026  ew_cfg zero, zero, zero, 19
002758  1d100400  unlock r8
00275c  6341affe  loadli.w r2,  -172(r30)
002760  7d100500  xwait r10, 0
002764  1f153000  addli r10, zero, 25
002768  7d100500  xwait r10, 0
00276c  1d000400  lock zero, r8
002770  1f74f000  addli r8, zero, 127
002774  0d000002  ew_cfg zero, zero, zero, 1
002778  0b112710  add.s r2, r14, r2
00277c  0d000404  ew_cfg zero, r8, zero, 2
002780  8d030006  ew_cfg r7, zero, zero, 3
002784  e303affe  loadli.w r7,  -176(r30)
002788  8d130000  ewcoeff_cfg r7, zero, zero, 0
00278c  8b136110  add.s r7, r2, r6
002790  0b946610  add.s r8, r13, r6
002794  1f030304  addli r6, r6, 512
002798  ad238400  dscmpnsel r7, r8, r8, 0
00279c  bb4fc3fe  bneq r6, r12, -16
0027a0  9f230000  addli r7, zero, 2
0027a4  1f030000  addli r6, zero, 0
0027a8  2b840000  lui r8, 8
0027ac  1d900300  unlock r7
0027b0  1d800300  lock zero, r7
0027b4  9f73f000  addli r7, zero, 127
0027b8  0d000002  ew_cfg zero, zero, zero, 1
0027bc  0d800304  ew_cfg zero, r7, zero, 2
0027c0  9f130000  addli r7, zero, 1
0027c4  8d030006  ew_cfg r7, zero, zero, 3
0027c8  8d110000  ewcoeff_cfg r3, zero, zero, 0
0027cc  8b136110  add.s r7, r2, r6
0027d0  1f030304  addli r6, r6, 512
0027d4  ada37308  dscmpnsel r7, r7, r7, 4
0027d8  bb5f83fe  bneq r6, r8, -12
0027dc  1f230000  addli r6, zero, 2
0027e0  9f432000  addli r7, zero, 20
0027e4  2b05803f  lui r10, 260096
0027e8  1f74f00f  addli r8, zero, 2047
0027ec  1d100300  unlock r6
0027f0  7d900300  xwait r7, 0
0027f4  1d000300  lock zero, r6
0027f8  ab0380bf  lui r7, 784384
0027fc  0d000002  ew_cfg zero, zero, zero, 1
002800  0d950300  ewcoeff_cfg r10, r7, zero, 0
002804  9f430000  addli r7, zero, 4
002808  0d000404  ew_cfg zero, r8, zero, 2
00280c  8d030006  ew_cfg r7, zero, zero, 3
002810  8d837326  ew_cfg r7, r7, r7, 19
002814  ad862600  dsmadd r13, r13, r2, 0
002818  1f113000  addli r2, zero, 25
00281c  0d000026  ew_cfg zero, zero, zero, 19
002820  1d100300  unlock r6
002824  7d000100  xsignal r2, 0
002828  1d000300  lock zero, r6
00282c  1f212000  addli r2, zero, 18
002830  0d000002  ew_cfg zero, zero, zero, 1
002834  0d150500  ewcoeff_cfg r10, r10, zero, 0
002838  0d000404  ew_cfg zero, r8, zero, 2
00283c  8d030006  ew_cfg r7, zero, zero, 3
002840  8d837326  ew_cfg r7, r7, r7, 19
002844  ad89d900  dsmadd r19, r19, r13, 0
002848  0d000026  ew_cfg zero, zero, zero, 19
00284c  1d100300  unlock r6
002850  7d000100  xsignal r2, 0
002854  1f712000  addli r2, zero, 23
002858  7d000100  xsignal r2, 0
00285c  6b550ffa  load.d r[11:12], -96(r30)
002860  1f71f001  addli r2, zero, 255
002864  3d000000  xfence
002868  00a00300  mfence { lm, sm, gm }
00286c  80220104  csr_set csr5, r2
002870  0b913619  sub.s r2, r13, r19
002874  e7492ffe  storeli.w r2, -100(r30)
002878  1f71f000  addli r2, zero, 127
00287c  33030128  zext_int2long r[7:8], r2
002880  73386ffe  store.d r[7:8], -16(r30)
002884  00e00200  sync_core
002888  b7e00400  beq r9, zero, 56
00288c  1f110000  addli r2, zero, 1
002890  b7a82400  beq r9, r2, 552
002894  63012fff  loadli.w r2,  -112(r30)
002898  3b700102  bneq r2, zero, 1052
00289c  1f310000  addli r2, zero, 3
0028a0  37d82402  beq r9, r2, 1556
0028a4  63412fff  loadli.w r2,  -108(r30)
0028a8  3b400104  bneq r2, zero, 2064
0028ac  1f510000  addli r2, zero, 5
0028b0  37b82404  beq r9, r2, 2572
0028b4  1f610000  addli r2, zero, 6
0028b8  37a02406  beq r9, r2, 3080
0028bc  5bc00100  j 3584
0028c0  63433fff  loadli.w r6,  -100(r30)
0028c4  1f012000  addli r2, zero, 16
0028c8  3d000000  xfence
0028cc  00a00300  mfence { lm, sm, gm }
0028d0  13082304  setlt.u r16, r6, r2
0028d4  33030028  zext_int2long r[7:8], zero
0028d8  5b030000  j 24
0028dc  6b530ffb  load.d r[7:8], -80(r30)
0028e0  6b548ffa  load.d r[9:10], -88(r30)
0028e4  13216404  setlt.ul r2, r[9:10], r[7:8]
0028e8  27130400  addli.d r[7:8], r[9:10], 1
0028ec  b7660100  beq r2, zero, 440
0028f0  1f710000  addli r2, zero, 7
0028f4  73346ffa  store.d r[7:8], -88(r30)
0028f8  97382302  sll.d r[18:19], r[7:8], r2
0028fc  b7510800  beq r16, zero, 116
002900  33030028  zext_int2long r[7:8], zero
002904  db030000  j 28
002908  eb540fff  load.d r[10:11], -16(r30)
00290c  0b912610  add.s r2, r13, r2
002910  73608100  stores.w r8, 0(r2)
002914  93249304  setlt.ul r9, r[7:8], r[10:11]
002918  27130300  addli.d r[7:8], r[7:8], 1
00291c  378f04fe  beq r9, zero, -64
002920  0b241311  add.ul r[9:10], r[7:8], r[18:19]
002924  1b312400  slli r2, r8, 2
002928  0b942910  add.s r8, r19, r2
00292c  ef440400  loads.w r9, 0(r8)
002930  1785c401  and r10, r9, r28
002934  1304a204  setlt.u r8, r4, r10
002938  3b500400  bneq r8, zero, 20
00293c  1f840400  addli r8, r9, 0
002940  1385a104  setlt.u r10, r3, r10
002944  3b1f05fe  bneq r10, zero, -60
002948  5b020000  j 16
00294c  1794b401  or r8, r9, r27
002950  1385a104  setlt.u r10, r3, r10
002954  bb5e05fe  bneq r10, zero, -76
002958  1bc40401  srli r8, r9, 16
00295c  1b041400  andi r8, r8, 1
002960  0b948410  add.s r8, r9, r8
002964  0b141410  add.s r8, r8, r1
002968  17045400  and r8, r8, r5
00296c  dbf3ffff  j -100
002970  33040028  zext_int2long r[9:10], zero
002974  db040000  j 36
002978  27440400  addli.d r[9:10], r[9:10], 4
00297c  8b93a611  add.s r7, r13, r26
002980  13214401  seteq.d r2, r[9:10], r[21:22]
002984  73e66300  stores.w r6, 12(r7)
002988  73e47301  stores.w r23, 8(r7)
00298c  73e28301  stores.w r24, 4(r7)
002990  73e0c300  stores.w r12, 0(r7)
002994  3b2d01fe  bneq r2, zero, -184
002998  0b231411  add.ul r[7:8], r[9:10], r[18:19]
00299c  1b3d2300  slli r26, r6, 2
0029a0  0b96a911  add.s r12, r19, r26
0029a4  ef43c600  loads.w r7, 12(r12)
0029a8  178bc301  and r22, r7, r28
0029ac  13016205  setlt.u r2, r4, r22
0029b0  3b300100  bneq r2, zero, 12
0029b4  1f830300  addli r6, r7, 0
0029b8  5b010000  j 8
0029bc  1793b301  or r6, r7, r27
0029c0  ef458600  loads.w r11, 8(r12)
0029c4  1781c501  and r2, r11, r28
0029c8  13052204  setlt.u r10, r4, r2
0029cc  3b300500  bneq r10, zero, 12
0029d0  9f8b0500  addli r23, r11, 0
0029d4  5b010000  j 8
0029d8  979bb501  or r23, r11, r27
0029dc  6f454600  loads.w r10, 4(r12)
0029e0  970cc501  and r25, r10, r28
0029e4  13079205  setlt.u r14, r4, r25
0029e8  3b300700  bneq r14, zero, 12
0029ec  1f0c0500  addli r24, r10, 0
0029f0  5b010000  j 8
0029f4  171cb501  or r24, r10, r27
0029f8  6f470600  loads.w r14, 0(r12)
0029fc  9707c701  and r15, r14, r28
002a00  1306f204  setlt.u r12, r4, r15
002a04  3b500600  bneq r12, zero, 20
002a08  1f060700  addli r12, r14, 0
002a0c  9387f104  setlt.u r15, r3, r15
002a10  37d00700  beq r15, zero, 20
002a14  db040000  j 36
002a18  1716b701  or r12, r14, r27
002a1c  9387f104  setlt.u r15, r3, r15
002a20  3be00700  bneq r15, zero, 24
002a24  1b460701  srli r12, r14, 16
002a28  1b061600  andi r12, r12, 1
002a2c  0b16c710  add.s r12, r14, r12
002a30  0b161610  add.s r12, r12, r1
002a34  17065600  and r12, r12, r5
002a38  13879105  setlt.u r14, r3, r25
002a3c  37600700  beq r14, zero, 24
002a40  13812104  setlt.u r2, r3, r2
002a44  b7300100  beq r2, zero, 44
002a48  13816105  setlt.u r2, r3, r22
002a4c  bb3c01fe  bneq r2, zero, -212
002a50  db070000  j 60
002a54  1b470501  srli r14, r10, 16
002a58  1b071700  andi r14, r14, 1
002a5c  0b15e510  add.s r10, r10, r14
002a60  0b151510  add.s r10, r10, r1
002a64  170c5500  and r24, r10, r5
002a68  13812104  setlt.u r2, r3, r2
002a6c  3b7f01fe  bneq r2, zero, -36
002a70  1bc10501  srli r2, r11, 16
002a74  1b011100  andi r2, r2, 1
002a78  0b912510  add.s r2, r11, r2
002a7c  0b111110  add.s r2, r2, r1
002a80  970b5100  and r23, r2, r5
002a84  13816105  setlt.u r2, r3, r22
002a88  bb4b01fe  bneq r2, zero, -272
002a8c  1bc10301  srli r2, r7, 16
002a90  1b011100  andi r2, r2, 1
002a94  0b912310  add.s r2, r7, r2
002a98  0b111110  add.s r2, r2, r1
002a9c  17035100  and r6, r2, r5
002aa0  5bdbffff  j -296
002aa4  00200100  mfence { sm }
002aa8  80340002  core_id r9
002aac  6b550ffa  load.d r[11:12], -96(r30)
002ab0  1f110000  addli r2, zero, 1
002ab4  bb8724fe  bneq r9, r2, -544
002ab8  63433fff  loadli.w r6,  -100(r30)
002abc  1f012000  addli r2, zero, 16
002ac0  3d000000  xfence
002ac4  00a00300  mfence { lm, sm, gm }
002ac8  13082304  setlt.u r16, r6, r2
002acc  1f011000  addli r2, zero, 8
002ad0  33030128  zext_int2long r[7:8], r2
002ad4  5b030000  j 24
002ad8  6b538ffb  load.d r[7:8], -72(r30)
002adc  6b540ffb  load.d r[9:10], -80(r30)
002ae0  13216404  setlt.ul r2, r[9:10], r[7:8]
002ae4  27130400  addli.d r[7:8], r[9:10], 1
002ae8  b7660100  beq r2, zero, 440
002aec  1f710000  addli r2, zero, 7
002af0  73386ffa  store.d r[7:8], -80(r30)
002af4  97382302  sll.d r[18:19], r[7:8], r2
002af8  b7510800  beq r16, zero, 116
002afc  33030028  zext_int2long r[7:8], zero
002b00  db030000  j 28
002b04  eb540fff  load.d r[10:11], -16(r30)
002b08  0b912610  add.s r2, r13, r2
002b0c  73608100  stores.w r8, 0(r2)
002b10  93249304  setlt.ul r9, r[7:8], r[10:11]
002b14  27130300  addli.d r[7:8], r[7:8], 1
002b18  378f04fe  beq r9, zero, -64
002b1c  0b241311  add.ul r[9:10], r[7:8], r[18:19]
002b20  1b312400  slli r2, r8, 2
002b24  0b942910  add.s r8, r19, r2
002b28  ef440400  loads.w r9, 0(r8)
002b2c  1785c401  and r10, r9, r28
002b30  1304a204  setlt.u r8, r4, r10
002b34  3b500400  bneq r8, zero, 20
002b38  1f840400  addli r8, r9, 0
002b3c  1385a104  setlt.u r10, r3, r10
002b40  3b1f05fe  bneq r10, zero, -60
002b44  5b020000  j 16
002b48  1794b401  or r8, r9, r27
002b4c  1385a104  setlt.u r10, r3, r10
002b50  bb5e05fe  bneq r10, zero, -76
002b54  1bc40401  srli r8, r9, 16
002b58  1b041400  andi r8, r8, 1
002b5c  0b948410  add.s r8, r9, r8
002b60  0b141410  add.s r8, r8, r1
002b64  17045400  and r8, r8, r5
002b68  dbf3ffff  j -100
002b6c  33040028  zext_int2long r[9:10], zero
002b70  db040000  j 36
002b74  27440400  addli.d r[9:10], r[9:10], 4
002b78  8b93a611  add.s r7, r13, r26
002b7c  13214401  seteq.d r2, r[9:10], r[21:22]
002b80  73e66300  stores.w r6, 12(r7)
002b84  73e47301  stores.w r23, 8(r7)
002b88  73e28301  stores.w r24, 4(r7)
002b8c  73e0c300  stores.w r12, 0(r7)
002b90  3b2d01fe  bneq r2, zero, -184
002b94  0b231411  add.ul r[7:8], r[9:10], r[18:19]
002b98  1b3d2300  slli r26, r6, 2
002b9c  0b96a911  add.s r12, r19, r26
002ba0  ef43c600  loads.w r7, 12(r12)
002ba4  178bc301  and r22, r7, r28
002ba8  13016205  setlt.u r2, r4, r22
002bac  3b300100  bneq r2, zero, 12
002bb0  1f830300  addli r6, r7, 0
002bb4  5b010000  j 8
002bb8  1793b301  or r6, r7, r27
002bbc  ef458600  loads.w r11, 8(r12)
002bc0  1781c501  and r2, r11, r28
002bc4  13052204  setlt.u r10, r4, r2
002bc8  3b300500  bneq r10, zero, 12
002bcc  9f8b0500  addli r23, r11, 0
002bd0  5b010000  j 8
002bd4  979bb501  or r23, r11, r27
002bd8  6f454600  loads.w r10, 4(r12)
002bdc  970cc501  and r25, r10, r28
002be0  13079205  setlt.u r14, r4, r25
002be4  3b300700  bneq r14, zero, 12
002be8  1f0c0500  addli r24, r10, 0
002bec  5b010000  j 8
002bf0  171cb501  or r24, r10, r27
002bf4  6f470600  loads.w r14, 0(r12)
002bf8  9707c701  and r15, r14, r28
002bfc  1306f204  setlt.u r12, r4, r15
002c00  3b500600  bneq r12, zero, 20
002c04  1f060700  addli r12, r14, 0
002c08  9387f104  setlt.u r15, r3, r15
002c0c  37d00700  beq r15, zero, 20
002c10  db040000  j 36
002c14  1716b701  or r12, r14, r27
002c18  9387f104  setlt.u r15, r3, r15
002c1c  3be00700  bneq r15, zero, 24
002c20  1b460701  srli r12, r14, 16
002c24  1b061600  andi r12, r12, 1
002c28  0b16c710  add.s r12, r14, r12
002c2c  0b161610  add.s r12, r12, r1
002c30  17065600  and r12, r12, r5
002c34  13879105  setlt.u r14, r3, r25
002c38  37600700  beq r14, zero, 24
002c3c  13812104  setlt.u r2, r3, r2
002c40  b7300100  beq r2, zero, 44
002c44  13816105  setlt.u r2, r3, r22
002c48  bb3c01fe  bneq r2, zero, -212
002c4c  db070000  j 60
002c50  1b470501  srli r14, r10, 16
002c54  1b071700  andi r14, r14, 1
002c58  0b15e510  add.s r10, r10, r14
002c5c  0b151510  add.s r10, r10, r1
002c60  170c5500  and r24, r10, r5
002c64  13812104  setlt.u r2, r3, r2
002c68  3b7f01fe  bneq r2, zero, -36
002c6c  1bc10501  srli r2, r11, 16
002c70  1b011100  andi r2, r2, 1
002c74  0b912510  add.s r2, r11, r2
002c78  0b111110  add.s r2, r2, r1
002c7c  970b5100  and r23, r2, r5
002c80  13816105  setlt.u r2, r3, r22
002c84  bb4b01fe  bneq r2, zero, -272
002c88  1bc10301  srli r2, r7, 16
002c8c  1b011100  andi r2, r2, 1
002c90  0b912310  add.s r2, r7, r2
002c94  0b111110  add.s r2, r2, r1
002c98  17035100  and r6, r2, r5
002c9c  5bdbffff  j -296
002ca0  00200100  mfence { sm }
002ca4  80340002  core_id r9
002ca8  6b550ffa  load.d r[11:12], -96(r30)
002cac  63012fff  loadli.w r2,  -112(r30)
002cb0  b73f01fc  beq r2, zero, -1044
002cb4  63433fff  loadli.w r6,  -100(r30)
002cb8  1f012000  addli r2, zero, 16
002cbc  13032304  setlt.u r6, r6, r2
002cc0  670b6ffe  storeli.w r6, -80(r30)
002cc4  33030128  zext_int2long r[7:8], r2
002cc8  3d000000  xfence
002ccc  00a00300  mfence { lm, sm, gm }
002cd0  5b030000  j 24
002cd4  6b530ffc  load.d r[7:8], -64(r30)
002cd8  6b548ffb  load.d r[9:10], -72(r30)
002cdc  13216404  setlt.ul r2, r[9:10], r[7:8]
002ce0  27130400  addli.d r[7:8], r[9:10], 1
002ce4  b7760100  beq r2, zero, 444
002ce8  1f710000  addli r2, zero, 7
002cec  733c6ffa  store.d r[7:8], -72(r30)
002cf0  97382302  sll.d r[18:19], r[7:8], r2
002cf4  63016fff  loadli.w r2,  -80(r30)
002cf8  b7510100  beq r2, zero, 116
002cfc  33030028  zext_int2long r[7:8], zero
002d00  db030000  j 28
002d04  eb540fff  load.d r[10:11], -16(r30)
002d08  0b912610  add.s r2, r13, r2
002d0c  73608100  stores.w r8, 0(r2)
002d10  93249304  setlt.ul r9, r[7:8], r[10:11]
002d14  27130300  addli.d r[7:8], r[7:8], 1
002d18  b7fe04fe  beq r9, zero, -68
002d1c  0b241311  add.ul r[9:10], r[7:8], r[18:19]
002d20  1b312400  slli r2, r8, 2
002d24  0b942910  add.s r8, r19, r2
002d28  ef440400  loads.w r9, 0(r8)
002d2c  1785c401  and r10, r9, r28
002d30  1304a204  setlt.u r8, r4, r10
002d34  3b500400  bneq r8, zero, 20
002d38  1f840400  addli r8, r9, 0
002d3c  1385a104  setlt.u r10, r3, r10
002d40  3b1f05fe  bneq r10, zero, -60
002d44  5b020000  j 16
002d48  1794b401  or r8, r9, r27
002d4c  1385a104  setlt.u r10, r3, r10
002d50  bb5e05fe  bneq r10, zero, -76
002d54  1bc40401  srli r8, r9, 16
002d58  1b041400  andi r8, r8, 1
002d5c  0b948410  add.s r8, r9, r8
002d60  0b141410  add.s r8, r8, r1
002d64  17045400  and r8, r8, r5
002d68  dbf3ffff  j -100
002d6c  33040028  zext_int2long r[9:10], zero
002d70  db040000  j 36
002d74  27440400  addli.d r[9:10], r[9:10], 4
002d78  8b938611  add.s r7, r13, r24
002d7c  13214401  seteq.d r2, r[9:10], r[21:22]
002d80  73e66300  stores.w r6, 12(r7)
002d84  73e47301  stores.w r23, 8(r7)
002d88  73e2a300  stores.w r10, 4(r7)
002d8c  73e0a301  stores.w r26, 0(r7)
002d90  3b1d01fe  bneq r2, zero, -188
002d94  0b231411  add.ul r[7:8], r[9:10], r[18:19]
002d98  1b3c2300  slli r24, r6, 2
002d9c  8b958911  add.s r11, r19, r24
002da0  efc3c500  loads.w r7, 12(r11)
002da4  178bc301  and r22, r7, r28
002da8  13016205  setlt.u r2, r4, r22
002dac  3b300100  bneq r2, zero, 12
002db0  1f830300  addli r6, r7, 0
002db4  5b010000  j 8
002db8  1793b301  or r6, r7, r27
002dbc  6fc68500  loads.w r12, 8(r11)
002dc0  1701c601  and r2, r12, r28
002dc4  13052204  setlt.u r10, r4, r2
002dc8  3b300500  bneq r10, zero, 12
002dcc  9f0b0600  addli r23, r12, 0
002dd0  5b010000  j 8
002dd4  971bb601  or r23, r12, r27
002dd8  efcc4500  loads.w r25, 4(r11)
002ddc  1787cc01  and r14, r25, r28
002de0  1305e204  setlt.u r10, r4, r14
002de4  3b300500  bneq r10, zero, 12
002de8  1f850c00  addli r10, r25, 0
002dec  5b010000  j 8
002df0  1795bc01  or r10, r25, r27
002df4  efc50500  loads.w r11, 0(r11)
002df8  9787c501  and r15, r11, r28
002dfc  1308f204  setlt.u r16, r4, r15
002e00  3b500800  bneq r16, zero, 20
002e04  1f8d0500  addli r26, r11, 0
002e08  9387f104  setlt.u r15, r3, r15
002e0c  37d00700  beq r15, zero, 20
002e10  db040000  j 36
002e14  179db501  or r26, r11, r27
002e18  9387f104  setlt.u r15, r3, r15
002e1c  3be00700  bneq r15, zero, 24
002e20  9bc70501  srli r15, r11, 16
002e24  9b871700  andi r15, r15, 1
002e28  8b95f510  add.s r11, r11, r15
002e2c  8b951510  add.s r11, r11, r1
002e30  178d5500  and r26, r11, r5
002e34  9385e104  setlt.u r11, r3, r14
002e38  37e00500  beq r11, zero, 24
002e3c  13812104  setlt.u r2, r3, r2
002e40  b7300100  beq r2, zero, 44
002e44  13816105  setlt.u r2, r3, r22
002e48  bb3c01fe  bneq r2, zero, -212
002e4c  db070000  j 60
002e50  1bc50c01  srli r10, r25, 16
002e54  1b051500  andi r10, r10, 1
002e58  0b95ac10  add.s r10, r25, r10
002e5c  0b151510  add.s r10, r10, r1
002e60  17055500  and r10, r10, r5
002e64  13812104  setlt.u r2, r3, r2
002e68  3b7f01fe  bneq r2, zero, -36
002e6c  1b410601  srli r2, r12, 16
002e70  1b011100  andi r2, r2, 1
002e74  0b112610  add.s r2, r12, r2
002e78  0b111110  add.s r2, r2, r1
002e7c  970b5100  and r23, r2, r5
002e80  13816105  setlt.u r2, r3, r22
002e84  bb4b01fe  bneq r2, zero, -272
002e88  1bc10301  srli r2, r7, 16
002e8c  1b011100  andi r2, r2, 1
002e90  0b912310  add.s r2, r7, r2
002e94  0b111110  add.s r2, r2, r1
002e98  17035100  and r6, r2, r5
002e9c  5bdbffff  j -296
002ea0  00200100  mfence { sm }
002ea4  80340002  core_id r9
002ea8  6b550ffa  load.d r[11:12], -96(r30)
002eac  1f310000  addli r2, zero, 3
002eb0  bbd724fc  bneq r9, r2, -1548
002eb4  63433fff  loadli.w r6,  -100(r30)
002eb8  1f012000  addli r2, zero, 16
002ebc  13012304  setlt.u r2, r6, r2
002ec0  e70b2ffe  storeli.w r2, -72(r30)
002ec4  1f013000  addli r2, zero, 24
002ec8  3d000000  xfence
002ecc  33030128  zext_int2long r[7:8], r2
002ed0  00a00300  mfence { lm, sm, gm }
002ed4  5b030000  j 24
002ed8  6b538ffc  load.d r[7:8], -56(r30)
002edc  6b540ffc  load.d r[9:10], -64(r30)
002ee0  13216404  setlt.ul r2, r[9:10], r[7:8]
002ee4  27130400  addli.d r[7:8], r[9:10], 1
002ee8  b7760100  beq r2, zero, 444
002eec  1f710000  addli r2, zero, 7
002ef0  73306ffc  store.d r[7:8], -64(r30)
002ef4  97382302  sll.d r[18:19], r[7:8], r2
002ef8  63017fff  loadli.w r2,  -72(r30)
002efc  b7510100  beq r2, zero, 116
002f00  33030028  zext_int2long r[7:8], zero
002f04  db030000  j 28
002f08  eb540fff  load.d r[10:11], -16(r30)
002f0c  0b912610  add.s r2, r13, r2
002f10  73608100  stores.w r8, 0(r2)
002f14  93249304  setlt.ul r9, r[7:8], r[10:11]
002f18  27130300  addli.d r[7:8], r[7:8], 1
002f1c  b7fe04fe  beq r9, zero, -68
002f20  0b241311  add.ul r[9:10], r[7:8], r[18:19]
002f24  1b312400  slli r2, r8, 2
002f28  0b942910  add.s r8, r19, r2
002f2c  ef440400  loads.w r9, 0(r8)
002f30  1785c401  and r10, r9, r28
002f34  1304a204  setlt.u r8, r4, r10
002f38  3b500400  bneq r8, zero, 20
002f3c  1f840400  addli r8, r9, 0
002f40  1385a104  setlt.u r10, r3, r10
002f44  3b1f05fe  bneq r10, zero, -60
002f48  5b020000  j 16
002f4c  1794b401  or r8, r9, r27
002f50  1385a104  setlt.u r10, r3, r10
002f54  bb5e05fe  bneq r10, zero, -76
002f58  1bc40401  srli r8, r9, 16
002f5c  1b041400  andi r8, r8, 1
002f60  0b948410  add.s r8, r9, r8
002f64  0b141410  add.s r8, r8, r1
002f68  17045400  and r8, r8, r5
002f6c  dbf3ffff  j -100
002f70  33040028  zext_int2long r[9:10], zero
002f74  db040000  j 36
002f78  27440400  addli.d r[9:10], r[9:10], 4
002f7c  8b936611  add.s r7, r13, r22
002f80  13214401  seteq.d r2, r[9:10], r[21:22]
002f84  73e66300  stores.w r6, 12(r7)
002f88  73e48301  stores.w r24, 8(r7)
002f8c  73e2a300  stores.w r10, 4(r7)
002f90  73e0a301  stores.w r26, 0(r7)
002f94  3b1d01fe  bneq r2, zero, -188
002f98  0b231411  add.ul r[7:8], r[9:10], r[18:19]
002f9c  1b3b2300  slli r22, r6, 2
002fa0  8b956911  add.s r11, r19, r22
002fa4  efc3c500  loads.w r7, 12(r11)
002fa8  978bc301  and r23, r7, r28
002fac  13017205  setlt.u r2, r4, r23
002fb0  3b300100  bneq r2, zero, 12
002fb4  1f830300  addli r6, r7, 0
002fb8  5b010000  j 8
002fbc  1793b301  or r6, r7, r27
002fc0  6fc68500  loads.w r12, 8(r11)
002fc4  1701c601  and r2, r12, r28
002fc8  13052204  setlt.u r10, r4, r2
002fcc  3b300500  bneq r10, zero, 12
002fd0  1f0c0600  addli r24, r12, 0
002fd4  5b010000  j 8
002fd8  171cb601  or r24, r12, r27
002fdc  efcc4500  loads.w r25, 4(r11)
002fe0  1787cc01  and r14, r25, r28
002fe4  1305e204  setlt.u r10, r4, r14
002fe8  3b300500  bneq r10, zero, 12
002fec  1f850c00  addli r10, r25, 0
002ff0  5b010000  j 8
002ff4  1795bc01  or r10, r25, r27
002ff8  efc50500  loads.w r11, 0(r11)
002ffc  9787c501  and r15, r11, r28
003000  1308f204  setlt.u r16, r4, r15
003004  3b500800  bneq r16, zero, 20
003008  1f8d0500  addli r26, r11, 0
00300c  9387f104  setlt.u r15, r3, r15
003010  37d00700  beq r15, zero, 20
003014  db040000  j 36
003018  179db501  or r26, r11, r27
00301c  9387f104  setlt.u r15, r3, r15
003020  3be00700  bneq r15, zero, 24
003024  9bc70501  srli r15, r11, 16
003028  9b871700  andi r15, r15, 1
00302c  8b95f510  add.s r11, r11, r15
003030  8b951510  add.s r11, r11, r1
003034  178d5500  and r26, r11, r5
003038  9385e104  setlt.u r11, r3, r14
00303c  37e00500  beq r11, zero, 24
003040  13812104  setlt.u r2, r3, r2
003044  b7300100  beq r2, zero, 44
003048  13817105  setlt.u r2, r3, r23
00304c  bb3c01fe  bneq r2, zero, -212
003050  db070000  j 60
003054  1bc50c01  srli r10, r25, 16
003058  1b051500  andi r10, r10, 1
00305c  0b95ac10  add.s r10, r25, r10
003060  0b151510  add.s r10, r10, r1
003064  17055500  and r10, r10, r5
003068  13812104  setlt.u r2, r3, r2
00306c  3b7f01fe  bneq r2, zero, -36
003070  1b410601  srli r2, r12, 16
003074  1b011100  andi r2, r2, 1
003078  0b112610  add.s r2, r12, r2
00307c  0b111110  add.s r2, r2, r1
003080  170c5100  and r24, r2, r5
003084  13817105  setlt.u r2, r3, r23
003088  bb4b01fe  bneq r2, zero, -272
00308c  1bc10301  srli r2, r7, 16
003090  1b011100  andi r2, r2, 1
003094  0b912310  add.s r2, r7, r2
003098  0b111110  add.s r2, r2, r1
00309c  17035100  and r6, r2, r5
0030a0  5bdbffff  j -296
0030a4  00200100  mfence { sm }
0030a8  80340002  core_id r9
0030ac  6b550ffa  load.d r[11:12], -96(r30)
0030b0  63412fff  loadli.w r2,  -108(r30)
0030b4  b76f01fa  beq r2, zero, -2056
0030b8  63433fff  loadli.w r6,  -100(r30)
0030bc  1f012000  addli r2, zero, 16
0030c0  13012304  setlt.u r2, r6, r2
0030c4  670c2ffe  storeli.w r2, -64(r30)
0030c8  1f014000  addli r2, zero, 32
0030cc  3d000000  xfence
0030d0  33030128  zext_int2long r[7:8], r2
0030d4  00a00300  mfence { lm, sm, gm }
0030d8  5b030000  j 24
0030dc  6b530ffd  load.d r[7:8], -48(r30)
0030e0  6b548ffc  load.d r[9:10], -56(r30)
0030e4  13216404  setlt.ul r2, r[9:10], r[7:8]
0030e8  27130400  addli.d r[7:8], r[9:10], 1
0030ec  b7760100  beq r2, zero, 444
0030f0  1f710000  addli r2, zero, 7
0030f4  73346ffc  store.d r[7:8], -56(r30)
0030f8  17352302  sll.d r[11:12], r[7:8], r2
0030fc  63018fff  loadli.w r2,  -64(r30)
003100  b7510100  beq r2, zero, 116
003104  33030028  zext_int2long r[7:8], zero
003108  db030000  j 28
00310c  6b570fff  load.d r[15:16], -16(r30)
003110  0b912610  add.s r2, r13, r2
003114  73608100  stores.w r8, 0(r2)
003118  9324e304  setlt.ul r9, r[7:8], r[15:16]
00311c  27130300  addli.d r[7:8], r[7:8], 1
003120  b7fe04fe  beq r9, zero, -68
003124  0b24a310  add.ul r[9:10], r[7:8], r[11:12]
003128  1b312400  slli r2, r8, 2
00312c  0b942910  add.s r8, r19, r2
003130  ef440400  loads.w r9, 0(r8)
003134  1786c401  and r12, r9, r28
003138  1304c204  setlt.u r8, r4, r12
00313c  3b500400  bneq r8, zero, 20
003140  1f840400  addli r8, r9, 0
003144  1386c104  setlt.u r12, r3, r12
003148  3b1f06fe  bneq r12, zero, -60
00314c  5b020000  j 16
003150  1794b401  or r8, r9, r27
003154  1386c104  setlt.u r12, r3, r12
003158  bb5e06fe  bneq r12, zero, -76
00315c  1bc40401  srli r8, r9, 16
003160  1b041400  andi r8, r8, 1
003164  0b948410  add.s r8, r9, r8
003168  0b141410  add.s r8, r8, r1
00316c  17045400  and r8, r8, r5
003170  dbf3ffff  j -100
003174  33040028  zext_int2long r[9:10], zero
003178  db040000  j 36
00317c  27440400  addli.d r[9:10], r[9:10], 4
003180  8b931611  add.s r7, r13, r17
003184  13214401  seteq.d r2, r[9:10], r[21:22]
003188  73e62301  stores.w r18, 12(r7)
00318c  73e48301  stores.w r24, 8(r7)
003190  73e26300  stores.w r6, 4(r7)
003194  73e0a301  stores.w r26, 0(r7)
003198  3b1d01fe  bneq r2, zero, -188
00319c  0b23a410  add.ul r[7:8], r[9:10], r[11:12]
0031a0  9b382300  slli r17, r6, 2
0031a4  8b931911  add.s r7, r19, r17
0031a8  6fcbc300  loads.w r22, 12(r7)
0031ac  970bcb01  and r23, r22, r28
0031b0  13017205  setlt.u r2, r4, r23
0031b4  3b300100  bneq r2, zero, 12
0031b8  1f090b00  addli r18, r22, 0
0031bc  5b010000  j 8
0031c0  1719bb01  or r18, r22, r27
0031c4  6fc68300  loads.w r12, 8(r7)
0031c8  1701c601  and r2, r12, r28
0031cc  13032204  setlt.u r6, r4, r2
0031d0  3b300300  bneq r6, zero, 12
0031d4  1f0c0600  addli r24, r12, 0
0031d8  5b010000  j 8
0031dc  171cb601  or r24, r12, r27
0031e0  efcc4300  loads.w r25, 4(r7)
0031e4  1787cc01  and r14, r25, r28
0031e8  1303e204  setlt.u r6, r4, r14
0031ec  3b300300  bneq r6, zero, 12
0031f0  1f830c00  addli r6, r25, 0
0031f4  5b010000  j 8
0031f8  1793bc01  or r6, r25, r27
0031fc  efc30300  loads.w r7, 0(r7)
003200  9787c301  and r15, r7, r28
003204  1308f204  setlt.u r16, r4, r15
003208  3b500800  bneq r16, zero, 20
00320c  1f8d0300  addli r26, r7, 0
003210  9387f104  setlt.u r15, r3, r15
003214  37d00700  beq r15, zero, 20
003218  db040000  j 36
00321c  179db301  or r26, r7, r27
003220  9387f104  setlt.u r15, r3, r15
003224  3be00700  bneq r15, zero, 24
003228  9bc70301  srli r15, r7, 16
00322c  9b871700  andi r15, r15, 1
003230  8b93f310  add.s r7, r7, r15
003234  8b931310  add.s r7, r7, r1
003238  178d5300  and r26, r7, r5
00323c  9383e104  setlt.u r7, r3, r14
003240  37e00300  beq r7, zero, 24
003244  13812104  setlt.u r2, r3, r2
003248  b7300100  beq r2, zero, 44
00324c  13817105  setlt.u r2, r3, r23
003250  bb3c01fe  bneq r2, zero, -212
003254  db070000  j 60
003258  1bc30c01  srli r6, r25, 16
00325c  1b031300  andi r6, r6, 1
003260  0b936c10  add.s r6, r25, r6
003264  0b131310  add.s r6, r6, r1
003268  17035300  and r6, r6, r5
00326c  13812104  setlt.u r2, r3, r2
003270  3b7f01fe  bneq r2, zero, -36
003274  1b410601  srli r2, r12, 16
003278  1b011100  andi r2, r2, 1
00327c  0b112610  add.s r2, r12, r2
003280  0b111110  add.s r2, r2, r1
003284  170c5100  and r24, r2, r5
003288  13817105  setlt.u r2, r3, r23
00328c  bb4b01fe  bneq r2, zero, -272
003290  1b410b01  srli r2, r22, 16
003294  1b011100  andi r2, r2, 1
003298  0b112b10  add.s r2, r22, r2
00329c  0b111110  add.s r2, r2, r1
0032a0  17095100  and r18, r2, r5
0032a4  5bdbffff  j -296
0032a8  00200100  mfence { sm }
0032ac  80340002  core_id r9
0032b0  6b550ffa  load.d r[11:12], -96(r30)
0032b4  1f510000  addli r2, zero, 5
0032b8  bbf724fa  bneq r9, r2, -2564
0032bc  63433fff  loadli.w r6,  -100(r30)
0032c0  1f012000  addli r2, zero, 16
0032c4  13012304  setlt.u r2, r6, r2
0032c8  e70c2ffe  storeli.w r2, -56(r30)
0032cc  1f015000  addli r2, zero, 40
0032d0  3d000000  xfence
0032d4  33030128  zext_int2long r[7:8], r2
0032d8  00a00300  mfence { lm, sm, gm }
0032dc  5b030000  j 24
0032e0  6b538ffd  load.d r[7:8], -40(r30)
0032e4  6b540ffd  load.d r[9:10], -48(r30)
0032e8  13216404  setlt.ul r2, r[9:10], r[7:8]
0032ec  27130400  addli.d r[7:8], r[9:10], 1
0032f0  b7760100  beq r2, zero, 444
0032f4  1f710000  addli r2, zero, 7
0032f8  73386ffc  store.d r[7:8], -48(r30)
0032fc  17342302  sll.d r[9:10], r[7:8], r2
003300  63019fff  loadli.w r2,  -56(r30)
003304  b7510100  beq r2, zero, 116
003308  33030028  zext_int2long r[7:8], zero
00330c  db030000  j 28
003310  eb550fff  load.d r[12:13], -16(r30)
003314  0b912610  add.s r2, r13, r2
003318  7360a100  stores.w r10, 0(r2)
00331c  9325b304  setlt.ul r11, r[7:8], r[12:13]
003320  27130300  addli.d r[7:8], r[7:8], 1
003324  b7fe05fe  beq r11, zero, -68
003328  0b258310  add.ul r[11:12], r[7:8], r[9:10]
00332c  1b312500  slli r2, r10, 2
003330  0b952910  add.s r10, r19, r2
003334  ef450500  loads.w r11, 0(r10)
003338  1786c501  and r12, r11, r28
00333c  1305c204  setlt.u r10, r4, r12
003340  3b500500  bneq r10, zero, 20
003344  1f850500  addli r10, r11, 0
003348  1386c104  setlt.u r12, r3, r12
00334c  3b1f06fe  bneq r12, zero, -60
003350  5b020000  j 16
003354  1795b501  or r10, r11, r27
003358  1386c104  setlt.u r12, r3, r12
00335c  bb5e06fe  bneq r12, zero, -76
003360  1bc50501  srli r10, r11, 16
003364  1b051500  andi r10, r10, 1
003368  0b95a510  add.s r10, r11, r10
00336c  0b151510  add.s r10, r10, r1
003370  17055500  and r10, r10, r5
003374  dbf3ffff  j -100
003378  33050028  zext_int2long r[11:12], zero
00337c  db040000  j 36
003380  27450500  addli.d r[11:12], r[11:12], 4
003384  8b931611  add.s r7, r13, r17
003388  13214501  seteq.d r2, r[11:12], r[21:22]
00338c  73e62301  stores.w r18, 12(r7)
003390  73e48301  stores.w r24, 8(r7)
003394  73e26300  stores.w r6, 4(r7)
003398  73e0a301  stores.w r26, 0(r7)
00339c  3b1d01fe  bneq r2, zero, -188
0033a0  0b238510  add.ul r[7:8], r[11:12], r[9:10]
0033a4  9b382300  slli r17, r6, 2
0033a8  8b931911  add.s r7, r19, r17
0033ac  6fcbc300  loads.w r22, 12(r7)
0033b0  970bcb01  and r23, r22, r28
0033b4  13017205  setlt.u r2, r4, r23
0033b8  3b300100  bneq r2, zero, 12
0033bc  1f090b00  addli r18, r22, 0
0033c0  5b010000  j 8
0033c4  1719bb01  or r18, r22, r27
0033c8  6fc68300  loads.w r12, 8(r7)
0033cc  1701c601  and r2, r12, r28
0033d0  13032204  setlt.u r6, r4, r2
0033d4  3b300300  bneq r6, zero, 12
0033d8  1f0c0600  addli r24, r12, 0
0033dc  5b010000  j 8
0033e0  171cb601  or r24, r12, r27
0033e4  efcc4300  loads.w r25, 4(r7)
0033e8  1787cc01  and r14, r25, r28
0033ec  1303e204  setlt.u r6, r4, r14
0033f0  3b300300  bneq r6, zero, 12
0033f4  1f830c00  addli r6, r25, 0
0033f8  5b010000  j 8
0033fc  1793bc01  or r6, r25, r27
003400  efc30300  loads.w r7, 0(r7)
003404  9787c301  and r15, r7, r28
003408  1308f204  setlt.u r16, r4, r15
00340c  3b500800  bneq r16, zero, 20
003410  1f8d0300  addli r26, r7, 0
003414  9387f104  setlt.u r15, r3, r15
003418  37d00700  beq r15, zero, 20
00341c  db040000  j 36
003420  179db301  or r26, r7, r27
003424  9387f104  setlt.u r15, r3, r15
003428  3be00700  bneq r15, zero, 24
00342c  9bc70301  srli r15, r7, 16
003430  9b871700  andi r15, r15, 1
003434  8b93f310  add.s r7, r7, r15
003438  8b931310  add.s r7, r7, r1
00343c  178d5300  and r26, r7, r5
003440  9383e104  setlt.u r7, r3, r14
003444  37e00300  beq r7, zero, 24
003448  13812104  setlt.u r2, r3, r2
00344c  b7300100  beq r2, zero, 44
003450  13817105  setlt.u r2, r3, r23
003454  bb3c01fe  bneq r2, zero, -212
003458  db070000  j 60
00345c  1bc30c01  srli r6, r25, 16
003460  1b031300  andi r6, r6, 1
003464  0b936c10  add.s r6, r25, r6
003468  0b131310  add.s r6, r6, r1
00346c  17035300  and r6, r6, r5
003470  13812104  setlt.u r2, r3, r2
003474  3b7f01fe  bneq r2, zero, -36
003478  1b410601  srli r2, r12, 16
00347c  1b011100  andi r2, r2, 1
003480  0b112610  add.s r2, r12, r2
003484  0b111110  add.s r2, r2, r1
003488  170c5100  and r24, r2, r5
00348c  13817105  setlt.u r2, r3, r23
003490  bb4b01fe  bneq r2, zero, -272
003494  1b410b01  srli r2, r22, 16
003498  1b011100  andi r2, r2, 1
00349c  0b112b10  add.s r2, r22, r2
0034a0  0b111110  add.s r2, r2, r1
0034a4  17095100  and r18, r2, r5
0034a8  5bdbffff  j -296
0034ac  00200100  mfence { sm }
0034b0  80340002  core_id r9
0034b4  6b550ffa  load.d r[11:12], -96(r30)
0034b8  1f610000  addli r2, zero, 6
0034bc  3b882400  bneq r9, r2, 512
0034c0  63433fff  loadli.w r6,  -100(r30)
0034c4  1f012000  addli r2, zero, 16
0034c8  13012304  setlt.u r2, r6, r2
0034cc  670d2ffe  storeli.w r2, -48(r30)
0034d0  1f016000  addli r2, zero, 48
0034d4  3d000000  xfence
0034d8  33030128  zext_int2long r[7:8], r2
0034dc  00a00300  mfence { lm, sm, gm }
0034e0  5b030000  j 24
0034e4  6b530ffe  load.d r[7:8], -32(r30)
0034e8  6b548ffd  load.d r[9:10], -40(r30)
0034ec  13216404  setlt.ul r2, r[9:10], r[7:8]
0034f0  27130400  addli.d r[7:8], r[9:10], 1
0034f4  b7760100  beq r2, zero, 444
0034f8  1f710000  addli r2, zero, 7
0034fc  733c6ffc  store.d r[7:8], -40(r30)
003500  17342302  sll.d r[9:10], r[7:8], r2
003504  6301afff  loadli.w r2,  -48(r30)
003508  b7510100  beq r2, zero, 116
00350c  33030028  zext_int2long r[7:8], zero
003510  db030000  j 28
003514  eb550fff  load.d r[12:13], -16(r30)
003518  0b912610  add.s r2, r13, r2
00351c  7360a100  stores.w r10, 0(r2)
003520  9325b304  setlt.ul r11, r[7:8], r[12:13]
003524  27130300  addli.d r[7:8], r[7:8], 1
003528  b7fe05fe  beq r11, zero, -68
00352c  0b258310  add.ul r[11:12], r[7:8], r[9:10]
003530  1b312500  slli r2, r10, 2
003534  0b952910  add.s r10, r19, r2
003538  ef450500  loads.w r11, 0(r10)
00353c  1786c501  and r12, r11, r28
003540  1305c204  setlt.u r10, r4, r12
003544  3b500500  bneq r10, zero, 20
003548  1f850500  addli r10, r11, 0
00354c  1386c104  setlt.u r12, r3, r12
003550  3b1f06fe  bneq r12, zero, -60
003554  5b020000  j 16
003558  1795b501  or r10, r11, r27
00355c  1386c104  setlt.u r12, r3, r12
003560  bb5e06fe  bneq r12, zero, -76
003564  1bc50501  srli r10, r11, 16
003568  1b051500  andi r10, r10, 1
00356c  0b95a510  add.s r10, r11, r10
003570  0b151510  add.s r10, r10, r1
003574  17055500  and r10, r10, r5
003578  dbf3ffff  j -100
00357c  33050028  zext_int2long r[11:12], zero
003580  db040000  j 36
003584  27450500  addli.d r[11:12], r[11:12], 4
003588  8b931611  add.s r7, r13, r17
00358c  13214501  seteq.d r2, r[11:12], r[21:22]
003590  73e62301  stores.w r18, 12(r7)
003594  73e48301  stores.w r24, 8(r7)
003598  73e26300  stores.w r6, 4(r7)
00359c  73e0a301  stores.w r26, 0(r7)
0035a0  3b1d01fe  bneq r2, zero, -188
0035a4  0b238510  add.ul r[7:8], r[11:12], r[9:10]
0035a8  9b382300  slli r17, r6, 2
0035ac  8b931911  add.s r7, r19, r17
0035b0  6fcbc300  loads.w r22, 12(r7)
0035b4  970bcb01  and r23, r22, r28
0035b8  13017205  setlt.u r2, r4, r23
0035bc  3b300100  bneq r2, zero, 12
0035c0  1f090b00  addli r18, r22, 0
0035c4  5b010000  j 8
0035c8  1719bb01  or r18, r22, r27
0035cc  6fc68300  loads.w r12, 8(r7)
0035d0  1701c601  and r2, r12, r28
0035d4  13032204  setlt.u r6, r4, r2
0035d8  3b300300  bneq r6, zero, 12
0035dc  1f0c0600  addli r24, r12, 0
0035e0  5b010000  j 8
0035e4  171cb601  or r24, r12, r27
0035e8  efcc4300  loads.w r25, 4(r7)
0035ec  1787cc01  and r14, r25, r28
0035f0  1303e204  setlt.u r6, r4, r14
0035f4  3b300300  bneq r6, zero, 12
0035f8  1f830c00  addli r6, r25, 0
0035fc  5b010000  j 8
003600  1793bc01  or r6, r25, r27
003604  efc30300  loads.w r7, 0(r7)
003608  9787c301  and r15, r7, r28
00360c  1308f204  setlt.u r16, r4, r15
003610  3b500800  bneq r16, zero, 20
003614  1f8d0300  addli r26, r7, 0
003618  9387f104  setlt.u r15, r3, r15
00361c  37d00700  beq r15, zero, 20
003620  db040000  j 36
003624  179db301  or r26, r7, r27
003628  9387f104  setlt.u r15, r3, r15
00362c  3be00700  bneq r15, zero, 24
003630  9bc70301  srli r15, r7, 16
003634  9b871700  andi r15, r15, 1
003638  8b93f310  add.s r7, r7, r15
00363c  8b931310  add.s r7, r7, r1
003640  178d5300  and r26, r7, r5
003644  9383e104  setlt.u r7, r3, r14
003648  37e00300  beq r7, zero, 24
00364c  13812104  setlt.u r2, r3, r2
003650  b7300100  beq r2, zero, 44
003654  13817105  setlt.u r2, r3, r23
003658  bb3c01fe  bneq r2, zero, -212
00365c  db070000  j 60
003660  1bc30c01  srli r6, r25, 16
003664  1b031300  andi r6, r6, 1
003668  0b936c10  add.s r6, r25, r6
00366c  0b131310  add.s r6, r6, r1
003670  17035300  and r6, r6, r5
003674  13812104  setlt.u r2, r3, r2
003678  3b7f01fe  bneq r2, zero, -36
00367c  1b410601  srli r2, r12, 16
003680  1b011100  andi r2, r2, 1
003684  0b112610  add.s r2, r12, r2
003688  0b111110  add.s r2, r2, r1
00368c  170c5100  and r24, r2, r5
003690  13817105  setlt.u r2, r3, r23
003694  bb4b01fe  bneq r2, zero, -272
003698  1b410b01  srli r2, r22, 16
00369c  1b011100  andi r2, r2, 1
0036a0  0b112b10  add.s r2, r22, r2
0036a4  0b111110  add.s r2, r2, r1
0036a8  17095100  and r18, r2, r5
0036ac  5bdbffff  j -296
0036b0  00200100  mfence { sm }
0036b4  80340002  core_id r9
0036b8  6b550ffa  load.d r[11:12], -96(r30)
0036bc  63013fff  loadli.w r2,  -104(r30)
0036c0  33030028  zext_int2long r[7:8], zero
0036c4  733c6ffc  store.d r[7:8], -40(r30)
0036c8  b7670100  beq r2, zero, 504
0036cc  63433fff  loadli.w r6,  -100(r30)
0036d0  1f012000  addli r2, zero, 16
0036d4  3d000000  xfence
0036d8  00a00300  mfence { lm, sm, gm }
0036dc  13082304  setlt.u r16, r6, r2
0036e0  1f017000  addli r2, zero, 56
0036e4  33030128  zext_int2long r[7:8], r2
0036e8  5b030000  j 24
0036ec  6b538ffe  load.d r[7:8], -24(r30)
0036f0  6b540ffe  load.d r[9:10], -32(r30)
0036f4  13216404  setlt.ul r2, r[9:10], r[7:8]
0036f8  27130400  addli.d r[7:8], r[9:10], 1
0036fc  b7660100  beq r2, zero, 440
003700  1f710000  addli r2, zero, 7
003704  73306ffe  store.d r[7:8], -32(r30)
003708  17352302  sll.d r[11:12], r[7:8], r2
00370c  b7510800  beq r16, zero, 116
003710  33030028  zext_int2long r[7:8], zero
003714  db030000  j 28
003718  6b570fff  load.d r[15:16], -16(r30)
00371c  0b912610  add.s r2, r13, r2
003720  73608100  stores.w r8, 0(r2)
003724  9324e304  setlt.ul r9, r[7:8], r[15:16]
003728  27130300  addli.d r[7:8], r[7:8], 1
00372c  378f04fe  beq r9, zero, -64
003730  0b24a310  add.ul r[9:10], r[7:8], r[11:12]
003734  1b312400  slli r2, r8, 2
003738  0b942910  add.s r8, r19, r2
00373c  ef440400  loads.w r9, 0(r8)
003740  1786c401  and r12, r9, r28
003744  1304c204  setlt.u r8, r4, r12
003748  3b500400  bneq r8, zero, 20
00374c  1f840400  addli r8, r9, 0
003750  1386c104  setlt.u r12, r3, r12
003754  3b1f06fe  bneq r12, zero, -60
003758  5b020000  j 16
00375c  1794b401  or r8, r9, r27
003760  1386c104  setlt.u r12, r3, r12
003764  bb5e06fe  bneq r12, zero, -76
003768  1bc40401  srli r8, r9, 16
00376c  1b041400  andi r8, r8, 1
003770  0b948410  add.s r8, r9, r8
003774  0b141410  add.s r8, r8, r1
003778  17045400  and r8, r8, r5
00377c  dbf3ffff  j -100
003780  eb588ffd  load.d r[18:19], -40(r30)
003784  db040000  j 36
003788  a7c80800  addli.d r[18:19], r[18:19], 4
00378c  8b946611  add.s r9, r13, r22
003790  13a14801  seteq.d r2, r[18:19], r[21:22]
003794  73e67401  stores.w r23, 12(r9)
003798  73e46400  stores.w r6, 8(r9)
00379c  73e28400  stores.w r8, 4(r9)
0037a0  73e07400  stores.w r7, 0(r9)
0037a4  3b2d01fe  bneq r2, zero, -184
0037a8  0ba3a810  add.ul r[7:8], r[18:19], r[11:12]
0037ac  1b3b2300  slli r22, r6, 2
0037b0  8b936911  add.s r7, r19, r22
0037b4  6fccc300  loads.w r24, 12(r7)
0037b8  970ccc01  and r25, r24, r28
0037bc  13019205  setlt.u r2, r4, r25
0037c0  3b300100  bneq r2, zero, 12
0037c4  9f0b0c00  addli r23, r24, 0
0037c8  5b010000  j 8
0037cc  971bbc01  or r23, r24, r27
0037d0  6fcd8300  loads.w r26, 8(r7)
0037d4  1701cd01  and r2, r26, r28
0037d8  13032204  setlt.u r6, r4, r2
0037dc  3b300300  bneq r6, zero, 12
0037e0  1f030d00  addli r6, r26, 0
0037e4  5b010000  j 8
0037e8  1713bd01  or r6, r26, r27
0037ec  6fc64300  loads.w r12, 4(r7)
0037f0  9704c601  and r9, r12, r28
0037f4  13049204  setlt.u r8, r4, r9
0037f8  3b300400  bneq r8, zero, 12
0037fc  1f040600  addli r8, r12, 0
003800  5b010000  j 8
003804  1714b601  or r8, r12, r27
003808  6fc70300  loads.w r14, 0(r7)
00380c  9707c701  and r15, r14, r28
003810  9303f204  setlt.u r7, r4, r15
003814  3bd00300  bneq r7, zero, 20
003818  9f030700  addli r7, r14, 0
00381c  9387f104  setlt.u r15, r3, r15
003820  37d00700  beq r15, zero, 20
003824  db040000  j 36
003828  9713b701  or r7, r14, r27
00382c  9387f104  setlt.u r15, r3, r15
003830  3be00700  bneq r15, zero, 24
003834  9b430701  srli r7, r14, 16
003838  9b831300  andi r7, r7, 1
00383c  8b137710  add.s r7, r14, r7
003840  8b931310  add.s r7, r7, r1
003844  97835300  and r7, r7, r5
003848  93849104  setlt.u r9, r3, r9
00384c  37e00400  beq r9, zero, 24
003850  13812104  setlt.u r2, r3, r2
003854  b7300100  beq r2, zero, 44
003858  13819105  setlt.u r2, r3, r25
00385c  bb3c01fe  bneq r2, zero, -212
003860  db070000  j 60
003864  1b440601  srli r8, r12, 16
003868  1b041400  andi r8, r8, 1
00386c  0b148610  add.s r8, r12, r8
003870  0b141410  add.s r8, r8, r1
003874  17045400  and r8, r8, r5
003878  13812104  setlt.u r2, r3, r2
00387c  3b7f01fe  bneq r2, zero, -36
003880  1b410d01  srli r2, r26, 16
003884  1b011100  andi r2, r2, 1
003888  0b112d10  add.s r2, r26, r2
00388c  0b111110  add.s r2, r2, r1
003890  17035100  and r6, r2, r5
003894  13819105  setlt.u r2, r3, r25
003898  bb4b01fe  bneq r2, zero, -272
00389c  1b410c01  srli r2, r24, 16
0038a0  1b011100  andi r2, r2, 1
0038a4  0b112c10  add.s r2, r24, r2
0038a8  0b111110  add.s r2, r2, r1
0038ac  970b5100  and r23, r2, r5
0038b0  5bdbffff  j -296
0038b4  00200100  mfence { sm }
0038b8  80340002  core_id r9
0038bc  6b550ffa  load.d r[11:12], -96(r30)
0038c0  1f71f001  addli r2, zero, 255
0038c4  00360002  core_id r12
0038c8  9f360000  addli r13, zero, 3
0038cc  80220104  csr_set csr5, r2
0038d0  00e00200  sync_core
0038d4  b788d4e4  beq r9, r13, -13792
0038d8  e3491fff  loadli.w r19,  -116(r30)
0038dc  1f078000  addli r14, zero, 64
0038e0  9f170000  addli r15, zero, 1
0038e4  1f780000  addli r16, zero, 7
0038e8  9f581000  addli r17, zero, 13
0038ec  1f290000  addli r18, zero, 2
0038f0  1f4a0000  addli r20, zero, 4
0038f4  9f0a2000  addli r21, zero, 16
0038f8  bbb804e4  bneq r9, zero, -13780
0038fc  6341dffe  loadli.w r2,  -148(r30)
003900  6b548ffd  load.d r[9:10], -40(r30)
003904  6b5b8f01  load.d r[23:24], 24(r30)
003908  9f590000  addli r19, zero, 5
00390c  1b316100  slli r2, r2, 6
003910  33130128  sext_int2long r[7:8], r2
003914  1f112000  addli r2, zero, 17
003918  17352502  sll.d r[11:12], r[11:12], r2
00391c  1f512000  addli r2, zero, 21
003920  0b348340  min.sl r[9:10], r[7:8], r[9:10]
003924  7d100100  xwait r2, 0
003928  1d800900  lock zero, r19
00392c  27048400  addli.d r[9:10], r[9:10], 64
003930  0b25ab10  add.ul r[11:12], r[23:24], r[11:12]
003934  2bc10300  lui r2, 60
003938  6b5b8ff7  load.d r[23:24], -136(r30)
00393c  95870700  dma_cfg r15, r15, zero, 0
003940  0b346448  max.sl r[9:10], r[9:10], r[7:8]
003944  15800702  dma_cfg zero, r15, zero, 1
003948  1b110104  ori r2, r2, 64
00394c  0b256511  add.ul r[11:12], r[11:12], r[23:24]
003950  0b336418  sub.sl r[7:8], r[9:10], r[7:8]
003954  33040728  zext_int2long r[9:10], r14
003958  95050004  dma_cfg r11, zero, zero, 2
00395c  0b338340  min.sl r[7:8], r[7:8], r[9:10]
003960  9f040001  addli r9, zero, 128
003964  6344ffff  loadli.w r8,  -4(r30)
003968  6b5b0ff7  load.d r[23:24], -144(r30)
00396c  0b112410  add.s r2, r8, r2
003970  1f743b00  addli r8, r22, 31
003974  1505e106  dma_cfg r10, r2, r14, 3
003978  1b415400  srli r2, r8, 5
00397c  1b341b00  slli r8, r22, 1
003980  15872408  dma_cfg r14, r9, r2, 4
003984  1b01e403  andi r2, r8, 62
003988  1f040004  addli r8, zero, 512
00398c  9f040010  addli r9, zero, 2048
003990  9504640a  dma_cfg r9, r8, r6, 5
003994  15002010  dma_cfg zero, zero, r2, 8
003998  35000000  dma_run zero
00399c  1500f00a  dma_cfg zero, zero, r15, 5
0039a0  1f612000  addli r2, zero, 22
0039a4  15000010  dma_cfg zero, zero, zero, 8
0039a8  1d900900  unlock r19
0039ac  e3491fff  loadli.w r19,  -116(r30)
0039b0  7d000100  xsignal r2, 0
0039b4  5b2ef9ff  j -13968
0039b8  67490ffe  storeli.w zero, -108(r30)
0039bc  e7090ffe  storeli.w zero, -104(r30)
0039c0  b7a1d4e8  beq r9, r13, -12184
0039c4  db0efaff  j -12172
0039c8  7d000000  xsignal zero, 0
0039cc  bb600600  bneq r12, zero, 56
0039d0  9f200000  addli r1, zero, 2
0039d4  7d100000  xwait zero, 0
0039d8  7d100000  xwait zero, 0
0039dc  7d100000  xwait zero, 0
0039e0  7d100000  xwait zero, 0
0039e4  7d100000  xwait zero, 0
0039e8  7d100000  xwait zero, 0
0039ec  7d100000  xwait zero, 0
0039f0  7d100000  xwait zero, 0
0039f4  1d800000  lock zero, r1
0039f8  0d000020  ew_cfg zero, zero, zero, 16
0039fc  1d900000  unlock r1
003a00  7d400000  xsignal_mode_cfg zero
003a04  9f8e6e01  addli sp, sp, 176
003a08  00a00300  mfence { lm, sm, gm }
003a0c  00100000  exit
003a10  00100000  exit
003a14  00100000  exit
003a18  00100000  exit
003a1c  00100000  exit
003a20  00100000  exit
003a24  00100000  exit
003a28  00100000  exit
003a2c  00100000  exit
003a30  00100000  exit
003a34  00100000  exit
003a38  00100000  exit
003a3c  00100000  exit
003a40  00100000  exit
003a44  00100000  exit
003a48  00100000  exit
003a4c  00100000  exit
003a50  00100000  exit
003a54  00100000  exit
003a58  00100000  exit
003a5c  00100000  exit
003a60  00100000  exit
003a64  00100000  exit
003a68  00100000  exit
003a6c  00100000  exit
003a70  00100000  exit
003a74  00100000  exit
003a78  00100000  exit
003a7c  00100000  exit
003a80  00100000  exit
003a84  00100000  exit
003a88  00100000  exit
003a8c  00100000  exit
003a90  00100000  exit
003a94  00100000  exit
003a98  00100000  exit
003a9c  00100000  exit
003aa0  00100000  exit
003aa4  00100000  exit
003aa8  00100000  exit
003aac  00100000  exit
003ab0  00100000  exit
003ab4  00100000  exit
003ab8  00100000  exit
003abc  00100000  exit
003ac0  00100000  exit
003ac4  00100000  exit
003ac8  00100000  exit
003acc  00100000  exit
003ad0  00100000  exit
003ad4  00100000  exit
003ad8  00100000  exit
003adc  00100000  exit
003ae0  00100000  exit
003ae4  00100000  exit
003ae8  00100000  exit
003aec  00100000  exit
003af0  00100000  exit
003af4  00100000  exit
003af8  00100000  exit
003afc  00100000  exit
003b00  00100000  exit
003b04  00100000  exit
003b08  00100000  exit
003b0c  00100000  exit
003b10  00100000  exit
003b14  00100000  exit
003b18  00100000  exit
003b1c  00100000  exit
003b20  00100000  exit
003b24  00100000  exit
003b28  00100000  exit
003b2c  00100000  exit
003b30  00100000  exit
003b34  00100000  exit
003b38  00100000  exit
003b3c  00100000  exit
003b40  00100000  exit
003b44  00100000  exit
003b48  00100000  exit
003b4c  00100000  exit
003b50  00100000  exit
003b54  00100000  exit
003b58  00100000  exit
003b5c  00100000  exit
003b60  00100000  exit
003b64  00100000  exit
003b68  00100000  exit
003b6c  00100000  exit
003b70  00100000  exit
003b74  00100000  exit
003b78  00100000  exit
003b7c  00100000  exit
003b80  00100000  exit
003b84  00100000  exit
003b88  00100000  exit
003b8c  00100000  exit
003b90  00100000  exit
003b94  00100000  exit
003b98  00100000  exit
003b9c  00100000  exit
003ba0  00100000  exit
003ba4  00100000  exit
003ba8  00100000  exit
003bac  00100000  exit
003bb0  00100000  exit
003bb4  00100000  exit
003bb8  00100000  exit
003bbc  00100000  exit
003bc0  00100000  exit
003bc4  00100000  exit
003bc8  00100000  exit
003bcc  00100000  exit
003bd0  00100000  exit
003bd4  00100000  exit
003bd8  00100000  exit
003bdc  00100000  exit
003be0  00100000  exit
003be4  00100000  exit
003be8  00100000  exit
003bec  00100000  exit
003bf0  00100000  exit
003bf4  00100000  exit
003bf8  00100000  exit
003bfc  00100000  exit
003c00  00100000  exit
003c04  00100000  exit
003c08  00100000  exit
003c0c  00100000  exit
003c10  00100000  exit
003c14  00100000  exit
003c18  00100000  exit
003c1c  00100000  exit
003c20  00100000  exit
003c24  00100000  exit
003c28  00100000  exit
003c2c  00100000  exit
003c30  00100000  exit
003c34  00100000  exit
003c38  00100000  exit
003c3c  00100000  exit
003c40  00100000  exit
003c44  00100000  exit
003c48  00100000  exit
003c4c  00100000  exit
