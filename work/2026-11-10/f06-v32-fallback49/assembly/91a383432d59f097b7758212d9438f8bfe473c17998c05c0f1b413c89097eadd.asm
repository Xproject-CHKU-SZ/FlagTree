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
00005c  9f495000  addli r19, zero, 44
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
0000bc  80380002  core_id r17
0000c0  1f8f5e01  addli r30, sp, 168
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37e00800  beq r17, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5b150000  j 168
0000e0  1f210000  addli r2, zero, 2
0000e4  fdd00000  uni_sram_cfg r1, r1
0000e8  abf1ffff  lui r3, 1048575
0000ec  1d000100  lock zero, r2
0000f0  8d000020  ew_cfg r1, zero, zero, 16
0000f4  9b90f1ff  ori r1, r3, 4095
0000f8  1d100100  unlock r2
0000fc  1f510000  addli r2, zero, 5
000100  80a10004  csr_set csr3, r1
000104  9f301000  addli r1, zero, 11
000108  00d00100  sync_group
00010c  7d800000  xsignal r1, 0
000110  7d800000  xsignal r1, 0
000114  7d800000  xsignal r1, 0
000118  7d000100  xsignal r2, 0
00011c  7d000100  xsignal r2, 0
000120  7d000100  xsignal r2, 0
000124  9f300000  addli r1, zero, 3
000128  1f111000  addli r2, zero, 9
00012c  7d800000  xsignal r1, 0
000130  7d800000  xsignal r1, 0
000134  7d800000  xsignal r1, 0
000138  7d000100  xsignal r2, 0
00013c  7d000100  xsignal r2, 0
000140  7d000100  xsignal r2, 0
000144  9f700000  addli r1, zero, 7
000148  1f212000  addli r2, zero, 18
00014c  7d800000  xsignal r1, 0
000150  7d800000  xsignal r1, 0
000154  7d800000  xsignal r1, 0
000158  7d000100  xsignal r2, 0
00015c  7d000100  xsignal r2, 0
000160  7d000100  xsignal r2, 0
000164  9f002000  addli r1, zero, 16
000168  1f611000  addli r2, zero, 14
00016c  7d800000  xsignal r1, 0
000170  7d800000  xsignal r1, 0
000174  7d800000  xsignal r1, 0
000178  7d000100  xsignal r2, 0
00017c  7d000100  xsignal r2, 0
000180  7d000100  xsignal r2, 0
000184  e3004f00  loadli.w r1,  32(r30)
000188  63414f00  loadli.w r2,  36(r30)
00018c  00d20002  load_param_i r4, 1
000190  e3015f00  loadli.w r3,  40(r30)
000194  8b101120  mul.s r1, r2, r1
000198  1f010200  addli r2, r4, 0
00019c  0b913050  fmac.s r2, r1, r3
0001a0  8b913020  mul.s r3, r1, r3
0001a4  1f71f1ff  addli r2, r2, -1
0001a8  0b114130  div.s r2, r2, r4
0001ac  00520002  load_param_i r4, 0
0001b0  8b104120  mul.s r1, r2, r4
0001b4  0b114150  fmac.s r2, r2, r4
0001b8  0b113140  min.s r2, r2, r3
0001bc  4b751112  ble.s r2, r1, 9564
0001c0  33110128  sext_int2long r[3:4], r2
0001c4  9f360000  addli r13, zero, 3
0001c8  1f770000  addli r14, zero, 7
0001cc  ab0d4000  lui r27, 1024
0001d0  2b09807f  lui r18, 522240
0001d4  2b05ffff  lui r10, 1048560
0001d8  73342ff6  store.d r[3:4], -152(r30)
0001dc  b3910028  sext_int2long r[4:5], r1
0001e0  1f71f00f  addli r2, zero, 2047
0001e4  ab00feff  lui r1, 1048544
0001e8  73301ff6  store.d r[2:3], -160(r30)
0001ec  abf0ff7f  lui r1, 524287
0001f0  2bf17f7f  lui r2, 522239
0001f4  9b97f0ff  ori r15, r1, 4095
0001f8  ab700000  lui r1, 7
0001fc  9b19f1ff  ori r19, r2, 4095
000200  1b98f0ff  ori r16, r1, 4095
000204  b3000028  zext_int2long r[2:3], zero
000208  733c1ff4  store.d r[2:3], -168(r30)
00020c  1f010000  addli r2, zero, 0
000210  db060000  j 52
000214  9f601000  addli r1, zero, 14
000218  1f770000  addli r14, zero, 7
00021c  7d800000  xsignal r1, 0
000220  9f102000  addli r1, zero, 17
000224  7d800000  xsignal r1, 0
000228  eb510ff9  load.d r[4:5], -112(r30)
00022c  eb508ff6  load.d r[2:3], -152(r30)
000230  a7910100  addli.d r[4:5], r[4:5], 1
000234  93b01104  setlt.sl r1, r[4:5], r[2:3]
000238  63414fff  loadli.w r2,  -92(r30)
00023c  1f110100  addli r2, r2, 1
000240  37e30012  beq r1, zero, 9432
000244  e3005f00  loadli.w r1,  40(r30)
000248  674a2ffe  storeli.w r2, -92(r30)
00024c  63414f00  loadli.w r2,  36(r30)
000250  73383ff8  store.d r[4:5], -112(r30)
000254  9f021000  addli r5, zero, 8
000258  8b901130  div.s r1, r3, r1
00025c  1f024000  addli r4, zero, 32
000260  0b912030  div.s r2, r1, r2
000264  9f000001  addli r1, zero, 128
000268  8b111130  div.s r3, r2, r1
00026c  9bb03100  slli r1, r3, 3
000270  0b121218  sub.s r4, r4, r1
000274  8b125240  min.s r5, r4, r5
000278  0b125138  mod.s r4, r2, r5
00027c  0b121210  add.s r4, r4, r1
000280  9f703000  addli r1, zero, 31
000284  93804004  setlt.u r1, r1, r4
000288  33030228  zext_int2long r[7:8], r4
00028c  67474ffe  storeli.w r4, -140(r30)
000290  1f421000  addli r4, zero, 12
000294  73306ff8  store.d r[7:8], -128(r30)
000298  97334302  sll.d r[8:9], r[7:8], r4
00029c  3bb00000  bneq r1, zero, 12
0002a0  eb558ff5  load.d r[12:13], -168(r30)
0002a4  db010000  j 12
0002a8  eb550ff6  load.d r[12:13], -160(r30)
0002ac  9785b302  and.d r[12:13], r[8:9], r[12:13]
0002b0  634b4fff  loadli.w r22,  -92(r30)
0002b4  1f02800f  addli r4, zero, 1984
0002b8  1f6a0000  addli r20, zero, 6
0002bc  b30b0228  zext_int2long r[24:25], r4
0002c0  2b820100  lui r4, 24
0002c4  8b10db38  mod.s r1, r22, r13
0002c8  73347ffb  store.d r[24:25], -88(r30)
0002cc  670b1ffe  storeli.w r1, -80(r30)
0002d0  9bb0e000  slli r1, r1, 14
0002d4  0b934010  add.s r6, r1, r4
0002d8  3bbb4801  bneq r17, r20, 716
0002dc  8bb3b318  sub.sl r[8:9], r[8:9], r[12:13]
0002e0  eb560ff8  load.d r[14:15], -128(r30)
0002e4  9f5a1000  addli r21, zero, 13
0002e8  97d34303  sra.d r[8:9], r[8:9], r20
0002ec  97b65603  sll.d r[14:15], r[14:15], r21
0002f0  8bb57341  min.sl r[12:13], r[8:9], r[24:25]
0002f4  8bb57518  sub.sl r[12:13], r[12:13], r[8:9]
0002f8  eb530f00  load.d r[8:9], 0(r30)
0002fc  0ba4d310  add.ul r[9:10], r[8:9], r[14:15]
000300  9f360000  addli r13, zero, 3
000304  9f838500  addli r7, r11, 64
000308  1f770000  addli r14, zero, 7
00030c  9f250000  addli r11, zero, 2
000310  7d900600  xwait r13, 0
000314  bfa46501  blt.s r11, r22, 296
000318  1f560000  addli r12, zero, 5
00031c  1f1b0000  addli r22, zero, 1
000320  1f420000  addli r4, zero, 4
000324  9f0b8000  addli r23, zero, 64
000328  1d000600  lock zero, r12
00032c  15000014  dma_cfg zero, zero, zero, 10
000330  15006015  dma_cfg zero, zero, r22, 10
000334  1500b014  dma_cfg zero, zero, r11, 10
000338  1500d014  dma_cfg zero, zero, r13, 10
00033c  15004014  dma_cfg zero, zero, r4, 10
000340  1f021000  addli r4, zero, 8
000344  1500c014  dma_cfg zero, zero, r12, 10
000348  15004015  dma_cfg zero, zero, r20, 10
00034c  1500e014  dma_cfg zero, zero, r14, 10
000350  15004014  dma_cfg zero, zero, r4, 10
000354  1f121000  addli r4, zero, 9
000358  15004014  dma_cfg zero, zero, r4, 10
00035c  1f221000  addli r4, zero, 10
000360  15004014  dma_cfg zero, zero, r4, 10
000364  1f321000  addli r4, zero, 11
000368  15004014  dma_cfg zero, zero, r4, 10
00036c  1f421000  addli r4, zero, 12
000370  15004014  dma_cfg zero, zero, r4, 10
000374  1f621000  addli r4, zero, 14
000378  15005015  dma_cfg zero, zero, r21, 10
00037c  15004014  dma_cfg zero, zero, r4, 10
000380  1f721000  addli r4, zero, 15
000384  15004014  dma_cfg zero, zero, r4, 10
000388  1f022000  addli r4, zero, 16
00038c  15004014  dma_cfg zero, zero, r4, 10
000390  1f122000  addli r4, zero, 17
000394  15004014  dma_cfg zero, zero, r4, 10
000398  1f222000  addli r4, zero, 18
00039c  15004014  dma_cfg zero, zero, r4, 10
0003a0  1f322000  addli r4, zero, 19
0003a4  15004014  dma_cfg zero, zero, r4, 10
0003a8  1f422000  addli r4, zero, 20
0003ac  15004014  dma_cfg zero, zero, r4, 10
0003b0  1f522000  addli r4, zero, 21
0003b4  15004014  dma_cfg zero, zero, r4, 10
0003b8  1f622000  addli r4, zero, 22
0003bc  15004014  dma_cfg zero, zero, r4, 10
0003c0  1f722000  addli r4, zero, 23
0003c4  15004014  dma_cfg zero, zero, r4, 10
0003c8  1f023000  addli r4, zero, 24
0003cc  15004014  dma_cfg zero, zero, r4, 10
0003d0  1f123000  addli r4, zero, 25
0003d4  15004014  dma_cfg zero, zero, r4, 10
0003d8  1f223000  addli r4, zero, 26
0003dc  15004014  dma_cfg zero, zero, r4, 10
0003e0  1f323000  addli r4, zero, 27
0003e4  15004014  dma_cfg zero, zero, r4, 10
0003e8  1f423000  addli r4, zero, 28
0003ec  15004014  dma_cfg zero, zero, r4, 10
0003f0  1f523000  addli r4, zero, 29
0003f4  15004014  dma_cfg zero, zero, r4, 10
0003f8  1f623000  addli r4, zero, 30
0003fc  15004014  dma_cfg zero, zero, r4, 10
000400  1f723000  addli r4, zero, 31
000404  15004014  dma_cfg zero, zero, r4, 10
000408  1f020001  addli r4, zero, 128
00040c  150b0b00  dma_cfg r22, r22, zero, 0
000410  150b0002  dma_cfg r22, zero, zero, 1
000414  15000004  dma_cfg zero, zero, zero, 2
000418  15037007  dma_cfg r6, zero, r23, 3
00041c  1502b008  dma_cfg r4, zero, r11, 4
000420  1f020002  addli r4, zero, 256
000424  1502700b  dma_cfg r4, zero, r23, 5
000428  15000010  dma_cfg zero, zero, zero, 8
00042c  35000000  dma_run zero
000430  1500600b  dma_cfg zero, zero, r22, 5
000434  15000010  dma_cfg zero, zero, zero, 8
000438  1d100600  unlock r12
00043c  2b820100  lui r4, 24
000440  1f4b0000  addli r22, zero, 4
000444  e7090ffe  storeli.w zero, -104(r30)
000448  1f160000  addli r12, zero, 1
00044c  9f0b8000  addli r23, zero, 64
000450  1f0c0002  addli r24, zero, 256
000454  1b120204  ori r4, r4, 64
000458  1d000b00  lock zero, r22
00045c  15060600  dma_cfg r12, r12, zero, 0
000460  0b924010  add.s r4, r1, r4
000464  15800404  dma_cfg zero, r9, zero, 2
000468  15027407  dma_cfg r4, r8, r23, 3
00046c  1f020001  addli r4, zero, 128
000470  9f540000  addli r9, zero, 5
000474  1f041000  addli r8, zero, 8
000478  1582bb08  dma_cfg r4, r23, r11, 4
00047c  150c720a  dma_cfg r24, r4, r7, 5
000480  15000010  dma_cfg zero, zero, zero, 8
000484  35000000  dma_run zero
000488  1500c00a  dma_cfg zero, zero, r12, 5
00048c  15000010  dma_cfg zero, zero, zero, 8
000490  1d100b00  unlock r22
000494  1d800400  lock zero, r9
000498  15000014  dma_cfg zero, zero, zero, 10
00049c  1500c014  dma_cfg zero, zero, r12, 10
0004a0  1500b014  dma_cfg zero, zero, r11, 10
0004a4  1500d014  dma_cfg zero, zero, r13, 10
0004a8  15006015  dma_cfg zero, zero, r22, 10
0004ac  15009014  dma_cfg zero, zero, r9, 10
0004b0  15004015  dma_cfg zero, zero, r20, 10
0004b4  1500e014  dma_cfg zero, zero, r14, 10
0004b8  15008014  dma_cfg zero, zero, r8, 10
0004bc  1f141000  addli r8, zero, 9
0004c0  15008014  dma_cfg zero, zero, r8, 10
0004c4  1f241000  addli r8, zero, 10
0004c8  15008014  dma_cfg zero, zero, r8, 10
0004cc  1f341000  addli r8, zero, 11
0004d0  15008014  dma_cfg zero, zero, r8, 10
0004d4  1f441000  addli r8, zero, 12
0004d8  15008014  dma_cfg zero, zero, r8, 10
0004dc  1f641000  addli r8, zero, 14
0004e0  15005015  dma_cfg zero, zero, r21, 10
0004e4  15008014  dma_cfg zero, zero, r8, 10
0004e8  1f741000  addli r8, zero, 15
0004ec  15008014  dma_cfg zero, zero, r8, 10
0004f0  1f042000  addli r8, zero, 16
0004f4  15008014  dma_cfg zero, zero, r8, 10
0004f8  1f142000  addli r8, zero, 17
0004fc  15008014  dma_cfg zero, zero, r8, 10
000500  1f242000  addli r8, zero, 18
000504  15008014  dma_cfg zero, zero, r8, 10
000508  1f342000  addli r8, zero, 19
00050c  15008014  dma_cfg zero, zero, r8, 10
000510  1f442000  addli r8, zero, 20
000514  15008014  dma_cfg zero, zero, r8, 10
000518  1f542000  addli r8, zero, 21
00051c  15008014  dma_cfg zero, zero, r8, 10
000520  1f642000  addli r8, zero, 22
000524  15008014  dma_cfg zero, zero, r8, 10
000528  1f742000  addli r8, zero, 23
00052c  15008014  dma_cfg zero, zero, r8, 10
000530  1f043000  addli r8, zero, 24
000534  15008014  dma_cfg zero, zero, r8, 10
000538  1f143000  addli r8, zero, 25
00053c  15008014  dma_cfg zero, zero, r8, 10
000540  1f243000  addli r8, zero, 26
000544  15008014  dma_cfg zero, zero, r8, 10
000548  1f343000  addli r8, zero, 27
00054c  15008014  dma_cfg zero, zero, r8, 10
000550  1f443000  addli r8, zero, 28
000554  15008014  dma_cfg zero, zero, r8, 10
000558  1f543000  addli r8, zero, 29
00055c  15008014  dma_cfg zero, zero, r8, 10
000560  1f643000  addli r8, zero, 30
000564  15008014  dma_cfg zero, zero, r8, 10
000568  1f743000  addli r8, zero, 31
00056c  15008014  dma_cfg zero, zero, r8, 10
000570  15060600  dma_cfg r12, r12, zero, 0
000574  15060002  dma_cfg r12, zero, zero, 1
000578  15000004  dma_cfg zero, zero, zero, 2
00057c  15037007  dma_cfg r6, zero, r23, 3
000580  1502b008  dma_cfg r4, zero, r11, 4
000584  150c700a  dma_cfg r24, zero, r7, 5
000588  15000010  dma_cfg zero, zero, zero, 8
00058c  35000000  dma_run zero
000590  1500c00a  dma_cfg zero, zero, r12, 5
000594  15000010  dma_cfg zero, zero, zero, 8
000598  1d900400  unlock r9
00059c  7d800500  xsignal r11, 0
0005a0  5b0b0000  j 88
0005a4  1f220000  addli r4, zero, 2
0005a8  3ba14800  bneq r17, r4, 72
0005ac  9f530000  addli r7, zero, 5
0005b0  7d100200  xwait r4, 0
0005b4  7d900300  xwait r7, 0
0005b8  1d000000  lock zero, zero
0005bc  01020000  ds_cfg r4, zero, 0
0005c0  1f028000  addli r4, zero, 64
0005c4  01020002  ds_cfg r4, zero, 1
0005c8  0102001c  ds_cfg r4, zero, 14
0005cc  0102001a  ds_cfg r4, zero, 13
0005d0  a1104302  shuffle_batch r1, r6, r4, 1
0005d4  1f120000  addli r4, zero, 1
0005d8  1d100000  unlock zero
0005dc  7d800600  xsignal r13, 0
0005e0  e7094ffe  storeli.w r4, -104(r30)
0005e4  1f420000  addli r4, zero, 4
0005e8  7d000200  xsignal r4, 0
0005ec  5b010000  j 8
0005f0  e7090ffe  storeli.w zero, -104(r30)
0005f4  1f160000  addli r12, zero, 1
0005f8  9bb17100  slli r3, r3, 7
0005fc  0b113118  sub.s r2, r2, r3
000600  0b115130  div.s r2, r2, r5
000604  33020128  zext_int2long r[5:6], r2
000608  e7082ffe  storeli.w r2, -120(r30)
00060c  63016fff  loadli.w r2,  -80(r30)
000610  1732e202  sll.d r[5:6], r[5:6], r14
000614  9b31f100  slli r3, r2, 15
000618  2b410200  lui r2, 36
00061c  1733c202  sll.d r[7:8], r[5:6], r12
000620  0b912110  add.s r2, r3, r2
000624  733c6ff6  store.d r[7:8], -136(r30)
000628  3bcbc800  bneq r17, r12, 720
00062c  6b528f00  load.d r[5:6], 8(r30)
000630  7d100700  xwait r14, 0
000634  e3404fff  loadli.w r1,  -92(r30)
000638  0b226210  add.ul r[5:6], r[5:6], r[7:8]
00063c  1f230000  addli r6, zero, 2
000640  bf441300  blt.s r6, r1, 304
000644  9f530000  addli r7, zero, 5
000648  1f140000  addli r8, zero, 1
00064c  9f440000  addli r9, zero, 4
000650  9f600000  addli r1, zero, 6
000654  9f058000  addli r11, zero, 64
000658  1d800300  lock zero, r7
00065c  15000014  dma_cfg zero, zero, zero, 10
000660  15008014  dma_cfg zero, zero, r8, 10
000664  15006014  dma_cfg zero, zero, r6, 10
000668  1500d014  dma_cfg zero, zero, r13, 10
00066c  15009014  dma_cfg zero, zero, r9, 10
000670  15007014  dma_cfg zero, zero, r7, 10
000674  15001014  dma_cfg zero, zero, r1, 10
000678  9f001000  addli r1, zero, 8
00067c  1500e014  dma_cfg zero, zero, r14, 10
000680  15001014  dma_cfg zero, zero, r1, 10
000684  9f101000  addli r1, zero, 9
000688  15001014  dma_cfg zero, zero, r1, 10
00068c  9f201000  addli r1, zero, 10
000690  15001014  dma_cfg zero, zero, r1, 10
000694  9f301000  addli r1, zero, 11
000698  15001014  dma_cfg zero, zero, r1, 10
00069c  9f401000  addli r1, zero, 12
0006a0  15001014  dma_cfg zero, zero, r1, 10
0006a4  9f501000  addli r1, zero, 13
0006a8  15001014  dma_cfg zero, zero, r1, 10
0006ac  9f601000  addli r1, zero, 14
0006b0  15001014  dma_cfg zero, zero, r1, 10
0006b4  9f701000  addli r1, zero, 15
0006b8  15001014  dma_cfg zero, zero, r1, 10
0006bc  9f002000  addli r1, zero, 16
0006c0  15001014  dma_cfg zero, zero, r1, 10
0006c4  9f102000  addli r1, zero, 17
0006c8  15001014  dma_cfg zero, zero, r1, 10
0006cc  9f202000  addli r1, zero, 18
0006d0  15001014  dma_cfg zero, zero, r1, 10
0006d4  9f302000  addli r1, zero, 19
0006d8  15001014  dma_cfg zero, zero, r1, 10
0006dc  9f402000  addli r1, zero, 20
0006e0  15001014  dma_cfg zero, zero, r1, 10
0006e4  9f502000  addli r1, zero, 21
0006e8  15001014  dma_cfg zero, zero, r1, 10
0006ec  9f602000  addli r1, zero, 22
0006f0  15001014  dma_cfg zero, zero, r1, 10
0006f4  9f702000  addli r1, zero, 23
0006f8  15001014  dma_cfg zero, zero, r1, 10
0006fc  9f003000  addli r1, zero, 24
000700  15001014  dma_cfg zero, zero, r1, 10
000704  9f103000  addli r1, zero, 25
000708  15001014  dma_cfg zero, zero, r1, 10
00070c  9f203000  addli r1, zero, 26
000710  15001014  dma_cfg zero, zero, r1, 10
000714  9f303000  addli r1, zero, 27
000718  15001014  dma_cfg zero, zero, r1, 10
00071c  9f403000  addli r1, zero, 28
000720  15001014  dma_cfg zero, zero, r1, 10
000724  9f503000  addli r1, zero, 29
000728  15001014  dma_cfg zero, zero, r1, 10
00072c  9f603000  addli r1, zero, 30
000730  15001014  dma_cfg zero, zero, r1, 10
000734  9f703000  addli r1, zero, 31
000738  15001014  dma_cfg zero, zero, r1, 10
00073c  9f000001  addli r1, zero, 128
000740  15040400  dma_cfg r8, r8, zero, 0
000744  15040002  dma_cfg r8, zero, zero, 1
000748  15000004  dma_cfg zero, zero, zero, 2
00074c  1501b006  dma_cfg r2, zero, r11, 3
000750  95009008  dma_cfg r1, zero, r9, 4
000754  9f000004  addli r1, zero, 512
000758  9500b00a  dma_cfg r1, zero, r11, 5
00075c  15000010  dma_cfg zero, zero, zero, 8
000760  35000000  dma_run zero
000764  1500800a  dma_cfg zero, zero, r8, 5
000768  15000010  dma_cfg zero, zero, zero, 8
00076c  1d900300  unlock r7
000770  ab400200  lui r1, 36
000774  9f440000  addli r9, zero, 4
000778  e7490ffe  storeli.w zero, -100(r30)
00077c  670a0ffe  storeli.w zero, -96(r30)
000780  1f140000  addli r8, zero, 1
000784  9f038000  addli r7, zero, 64
000788  9f050004  addli r11, zero, 512
00078c  9b900004  ori r1, r1, 64
000790  1d800400  lock zero, r9
000794  15040400  dma_cfg r8, r8, zero, 0
000798  8b901110  add.s r1, r3, r1
00079c  15800204  dma_cfg zero, r5, zero, 2
0007a0  95007206  dma_cfg r1, r4, r7, 3
0007a4  9f000001  addli r1, zero, 128
0007a8  1f020020  addli r4, zero, 4096
0007ac  9f620000  addli r5, zero, 6
0007b0  95809308  dma_cfg r1, r7, r9, 4
0007b4  9505720a  dma_cfg r11, r4, r7, 5
0007b8  9f530000  addli r7, zero, 5
0007bc  1f021000  addli r4, zero, 8
0007c0  15000010  dma_cfg zero, zero, zero, 8
0007c4  35000000  dma_run zero
0007c8  1500800a  dma_cfg zero, zero, r8, 5
0007cc  15000010  dma_cfg zero, zero, zero, 8
0007d0  1d900400  unlock r9
0007d4  1d800300  lock zero, r7
0007d8  15000014  dma_cfg zero, zero, zero, 10
0007dc  15008014  dma_cfg zero, zero, r8, 10
0007e0  1f440000  addli r8, zero, 4
0007e4  15006014  dma_cfg zero, zero, r6, 10
0007e8  1f130000  addli r6, zero, 1
0007ec  1500d014  dma_cfg zero, zero, r13, 10
0007f0  15009014  dma_cfg zero, zero, r9, 10
0007f4  9f048000  addli r9, zero, 64
0007f8  15007014  dma_cfg zero, zero, r7, 10
0007fc  15005014  dma_cfg zero, zero, r5, 10
000800  1500e014  dma_cfg zero, zero, r14, 10
000804  15004014  dma_cfg zero, zero, r4, 10
000808  1f121000  addli r4, zero, 9
00080c  15004014  dma_cfg zero, zero, r4, 10
000810  1f221000  addli r4, zero, 10
000814  15004014  dma_cfg zero, zero, r4, 10
000818  1f321000  addli r4, zero, 11
00081c  15004014  dma_cfg zero, zero, r4, 10
000820  1f421000  addli r4, zero, 12
000824  15004014  dma_cfg zero, zero, r4, 10
000828  1f521000  addli r4, zero, 13
00082c  15004014  dma_cfg zero, zero, r4, 10
000830  1f621000  addli r4, zero, 14
000834  15004014  dma_cfg zero, zero, r4, 10
000838  1f721000  addli r4, zero, 15
00083c  15004014  dma_cfg zero, zero, r4, 10
000840  1f022000  addli r4, zero, 16
000844  15004014  dma_cfg zero, zero, r4, 10
000848  1f122000  addli r4, zero, 17
00084c  15004014  dma_cfg zero, zero, r4, 10
000850  1f222000  addli r4, zero, 18
000854  15004014  dma_cfg zero, zero, r4, 10
000858  1f322000  addli r4, zero, 19
00085c  15004014  dma_cfg zero, zero, r4, 10
000860  1f422000  addli r4, zero, 20
000864  15004014  dma_cfg zero, zero, r4, 10
000868  1f522000  addli r4, zero, 21
00086c  15004014  dma_cfg zero, zero, r4, 10
000870  1f622000  addli r4, zero, 22
000874  15004014  dma_cfg zero, zero, r4, 10
000878  1f722000  addli r4, zero, 23
00087c  15004014  dma_cfg zero, zero, r4, 10
000880  1f023000  addli r4, zero, 24
000884  15004014  dma_cfg zero, zero, r4, 10
000888  1f123000  addli r4, zero, 25
00088c  15004014  dma_cfg zero, zero, r4, 10
000890  1f223000  addli r4, zero, 26
000894  15004014  dma_cfg zero, zero, r4, 10
000898  1f323000  addli r4, zero, 27
00089c  15004014  dma_cfg zero, zero, r4, 10
0008a0  1f423000  addli r4, zero, 28
0008a4  15004014  dma_cfg zero, zero, r4, 10
0008a8  1f523000  addli r4, zero, 29
0008ac  15004014  dma_cfg zero, zero, r4, 10
0008b0  1f623000  addli r4, zero, 30
0008b4  15004014  dma_cfg zero, zero, r4, 10
0008b8  1f723000  addli r4, zero, 31
0008bc  15004014  dma_cfg zero, zero, r4, 10
0008c0  15030300  dma_cfg r6, r6, zero, 0
0008c4  15030002  dma_cfg r6, zero, zero, 1
0008c8  15000004  dma_cfg zero, zero, zero, 2
0008cc  15019006  dma_cfg r2, zero, r9, 3
0008d0  95008008  dma_cfg r1, zero, r8, 4
0008d4  9505900a  dma_cfg r11, zero, r9, 5
0008d8  15000010  dma_cfg zero, zero, zero, 8
0008dc  35000000  dma_run zero
0008e0  1500600a  dma_cfg zero, zero, r6, 5
0008e4  15000010  dma_cfg zero, zero, zero, 8
0008e8  1d900300  unlock r7
0008ec  7d800200  xsignal r5, 0
0008f0  b7a3d800  beq r17, r13, 232
0008f4  db1e0000  j 244
0008f8  1f220000  addli r4, zero, 2
0008fc  9f420000  addli r5, zero, 4
000900  37d15800  beq r17, r5, 84
000904  3b98e80e  bneq r17, r14, 7684
000908  9f600000  addli r1, zero, 6
00090c  e7490ffe  storeli.w zero, -100(r30)
000910  7d900000  xwait r1, 0
000914  9f101000  addli r1, zero, 9
000918  7d900000  xwait r1, 0
00091c  1d000000  lock zero, zero
000920  9f000001  addli r1, zero, 128
000924  01020000  ds_cfg r4, zero, 0
000928  1f028000  addli r4, zero, 64
00092c  81000002  ds_cfg r1, zero, 1
000930  0102001c  ds_cfg r4, zero, 14
000934  8100001a  ds_cfg r1, zero, 13
000938  9f100000  addli r1, zero, 1
00093c  c1014104  shuffle_coa r3, r2, r4, 2
000940  1d100000  unlock zero
000944  7d000700  xsignal r14, 0
000948  670a1ffe  storeli.w r1, -96(r30)
00094c  9f001000  addli r1, zero, 8
000950  5b100000  j 128
000954  9f430000  addli r7, zero, 4
000958  1f011000  addli r2, zero, 8
00095c  9f020000  addli r5, zero, 0
000960  1f120000  addli r4, zero, 1
000964  1f331000  addli r6, zero, 11
000968  1f048000  addli r8, zero, 64
00096c  7d900300  xwait r7, 0
000970  7d100100  xwait r2, 0
000974  1f110000  addli r2, zero, 1
000978  7d100300  xwait r6, 0
00097c  1bb3e200  slli r6, r5, 14
000980  9bb28200  slli r5, r5, 8
000984  1d000100  lock zero, r2
000988  09048400  mm_cfg r8, r8, r8, 0
00098c  17133300  or r6, r6, r3
000990  97923200  or r5, r5, r3
000994  89832304  mm_cfg r7, r7, r2, 2
000998  a9826010  mm r5, r1, r6, 8
00099c  1b031200  andi r6, r4, 1
0009a0  9f120000  addli r5, zero, 1
0009a4  1f020000  addli r4, zero, 0
0009a8  1d100100  unlock r2
0009ac  3b4f03fe  bneq r6, zero, -48
0009b0  9f500000  addli r1, zero, 5
0009b4  670a0ffe  storeli.w zero, -96(r30)
0009b8  7d800000  xsignal r1, 0
0009bc  9f101000  addli r1, zero, 9
0009c0  7d800000  xsignal r1, 0
0009c4  9f100000  addli r1, zero, 1
0009c8  e7491ffe  storeli.w r1, -100(r30)
0009cc  9f201000  addli r1, zero, 10
0009d0  7d800000  xsignal r1, 0
0009d4  3bd0d800  bneq r17, r13, 20
0009d8  9f201000  addli r1, zero, 10
0009dc  7d900000  xwait r1, 0
0009e0  9f601000  addli r1, zero, 14
0009e4  7d900000  xwait r1, 0
0009e8  ab400500  lui r1, 84
0009ec  3d000000  xfence
0009f0  1f010001  addli r2, zero, 128
0009f4  00a00300  mfence { lm, sm, gm }
0009f8  9b900060  ori r1, r1, 1536
0009fc  b3060128  zext_int2long r[14:15], r2
000a00  8b921110  add.s r5, r3, r1
000a04  9f70f001  addli r1, zero, 255
000a08  80a20004  csr_set csr5, r1
000a0c  9f700000  addli r1, zero, 7
000a10  b3800028  zext_int2long r[2:3], r1
000a14  733c1ffa  store.d r[2:3], -72(r30)
000a18  00e00200  sync_core
000a1c  bbe50800  bneq r17, zero, 376
000a20  b3000028  zext_int2long r[2:3], zero
000a24  3d000000  xfence
000a28  00a00300  mfence { lm, sm, gm }
000a2c  27830000  addli.d r[7:8], r[2:3], 0
000a30  73381ffe  store.d r[2:3], -16(r30)
000a34  5b030000  j 24
000a38  eb508ffb  load.d r[2:3], -72(r30)
000a3c  6b538fff  load.d r[7:8], -8(r30)
000a40  93201304  setlt.ul r1, r[7:8], r[2:3]
000a44  27130300  addli.d r[7:8], r[7:8], 1
000a48  37950000  beq r1, zero, 324
000a4c  9f700000  addli r1, zero, 7
000a50  6b5a0fff  load.d r[21:22], -16(r30)
000a54  733c6ffe  store.d r[7:8], -8(r30)
000a58  17341302  sll.d r[9:10], r[7:8], r1
000a5c  db040000  j 36
000a60  274a0a00  addli.d r[21:22], r[21:22], 4
000a64  0b926211  add.s r4, r5, r22
000a68  1321da02  setneq.d r2, r[21:22], r[14:15]
000a6c  73667201  stores.w r23, 12(r4)
000a70  73648201  stores.w r24, 8(r4)
000a74  7362a201  stores.w r26, 4(r4)
000a78  73601200  stores.w r1, 0(r4)
000a7c  b77e01fe  beq r2, zero, -68
000a80  8b208a10  add.ul r[2:3], r[21:22], r[9:10]
000a84  1bbb2000  slli r22, r1, 2
000a88  8b906111  add.s r1, r3, r22
000a8c  efc8c000  loads.w r17, 12(r1)
000a90  efc50000  loads.w r11, 0(r1)
000a94  6fce4000  loads.w r28, 4(r1)
000a98  efcc8000  loads.w r25, 8(r1)
000a9c  1782f800  and r4, r17, r15
000aa0  93004904  setlt.u r1, r18, r4
000aa4  3bb00000  bneq r1, zero, 12
000aa8  9f8b0800  addli r23, r17, 0
000aac  5b010000  j 8
000ab0  979bb801  or r23, r17, r27
000ab4  1786fc00  and r12, r25, r15
000ab8  9300c904  setlt.u r1, r18, r12
000abc  3bb00000  bneq r1, zero, 12
000ac0  1f8c0c00  addli r24, r25, 0
000ac4  5b010000  j 8
000ac8  179cbc01  or r24, r25, r27
000acc  1701fe00  and r2, r28, r15
000ad0  93002904  setlt.u r1, r18, r2
000ad4  3bb00000  bneq r1, zero, 12
000ad8  1f0d0e00  addli r26, r28, 0
000adc  5b010000  j 8
000ae0  171dbe01  or r26, r28, r27
000ae4  1783f500  and r6, r11, r15
000ae8  93006904  setlt.u r1, r18, r6
000aec  3bd00000  bneq r1, zero, 20
000af0  9f800500  addli r1, r11, 0
000af4  13836904  setlt.u r6, r19, r6
000af8  37500300  beq r6, zero, 20
000afc  db040000  j 36
000b00  9790b501  or r1, r11, r27
000b04  13836904  setlt.u r6, r19, r6
000b08  3b600300  bneq r6, zero, 24
000b0c  9bc00501  srli r1, r11, 16
000b10  9b801000  andi r1, r1, 1
000b14  8b901510  add.s r1, r11, r1
000b18  8b900011  add.s r1, r1, r16
000b1c  9780a000  and r1, r1, r10
000b20  13812904  setlt.u r2, r19, r2
000b24  37600100  beq r2, zero, 24
000b28  1381c904  setlt.u r2, r19, r12
000b2c  b7300100  beq r2, zero, 44
000b30  13814904  setlt.u r2, r19, r4
000b34  bb3c01fe  bneq r2, zero, -212
000b38  db070000  j 60
000b3c  1b410e01  srli r2, r28, 16
000b40  1b011100  andi r2, r2, 1
000b44  0b112e10  add.s r2, r28, r2
000b48  0b110111  add.s r2, r2, r16
000b4c  170da100  and r26, r2, r10
000b50  1381c904  setlt.u r2, r19, r12
000b54  3b7f01fe  bneq r2, zero, -36
000b58  1bc10c01  srli r2, r25, 16
000b5c  1b011100  andi r2, r2, 1
000b60  0b912c10  add.s r2, r25, r2
000b64  0b110111  add.s r2, r2, r16
000b68  170ca100  and r24, r2, r10
000b6c  13814904  setlt.u r2, r19, r4
000b70  bb4b01fe  bneq r2, zero, -272
000b74  1bc10801  srli r2, r17, 16
000b78  1b011100  andi r2, r2, 1
000b7c  0b912810  add.s r2, r17, r2
000b80  0b110111  add.s r2, r2, r16
000b84  970ba100  and r23, r2, r10
000b88  5bdbffff  j -296
000b8c  80380002  core_id r17
000b90  00200100  mfence { sm }
000b94  9f701000  addli r1, zero, 15
000b98  b3800028  zext_int2long r[2:3], r1
000b9c  733c1ffe  store.d r[2:3], -8(r30)
000ba0  9f100000  addli r1, zero, 1
000ba4  bbd51800  bneq r17, r1, 372
000ba8  9f001000  addli r1, zero, 8
000bac  3d000000  xfence
000bb0  00a00300  mfence { lm, sm, gm }
000bb4  33830028  zext_int2long r[7:8], r1
000bb8  5b030000  j 24
000bbc  eb508fff  load.d r[2:3], -8(r30)
000bc0  6b530fff  load.d r[7:8], -16(r30)
000bc4  93201304  setlt.ul r1, r[7:8], r[2:3]
000bc8  27130300  addli.d r[7:8], r[7:8], 1
000bcc  37950000  beq r1, zero, 324
000bd0  9f700000  addli r1, zero, 7
000bd4  73386ffe  store.d r[7:8], -16(r30)
000bd8  33040028  zext_int2long r[9:10], zero
000bdc  17331302  sll.d r[7:8], r[7:8], r1
000be0  db040000  j 36
000be4  27440400  addli.d r[9:10], r[9:10], 4
000be8  0b914211  add.s r2, r5, r20
000bec  9320d402  setneq.d r1, r[9:10], r[14:15]
000bf0  73665101  stores.w r21, 12(r2)
000bf4  73646101  stores.w r22, 8(r2)
000bf8  73628101  stores.w r24, 4(r2)
000bfc  7360b100  stores.w r11, 0(r2)
000c00  b7fe00fe  beq r1, zero, -68
000c04  8b206410  add.ul r[2:3], r[9:10], r[7:8]
000c08  1bba2000  slli r20, r1, 2
000c0c  8b904111  add.s r1, r3, r20
000c10  efc8c000  loads.w r17, 12(r1)
000c14  6fcd0000  loads.w r26, 0(r1)
000c18  efcc4000  loads.w r25, 4(r1)
000c1c  efcb8000  loads.w r23, 8(r1)
000c20  1782f800  and r4, r17, r15
000c24  93004904  setlt.u r1, r18, r4
000c28  3bb00000  bneq r1, zero, 12
000c2c  9f8a0800  addli r21, r17, 0
000c30  5b010000  j 8
000c34  979ab801  or r21, r17, r27
000c38  1786fb00  and r12, r23, r15
000c3c  9300c904  setlt.u r1, r18, r12
000c40  3bb00000  bneq r1, zero, 12
000c44  1f8b0b00  addli r22, r23, 0
000c48  5b010000  j 8
000c4c  179bbb01  or r22, r23, r27
000c50  178efc00  and r28, r25, r15
000c54  9300c905  setlt.u r1, r18, r28
000c58  3bb00000  bneq r1, zero, 12
000c5c  1f8c0c00  addli r24, r25, 0
000c60  5b010000  j 8
000c64  179cbc01  or r24, r25, r27
000c68  9700fd00  and r1, r26, r15
000c6c  13011904  setlt.u r2, r18, r1
000c70  3b500100  bneq r2, zero, 20
000c74  9f050d00  addli r11, r26, 0
000c78  93801904  setlt.u r1, r19, r1
000c7c  37d00000  beq r1, zero, 20
000c80  db040000  j 36
000c84  9715bd01  or r11, r26, r27
000c88  93801904  setlt.u r1, r19, r1
000c8c  3be00000  bneq r1, zero, 24
000c90  9b400d01  srli r1, r26, 16
000c94  9b801000  andi r1, r1, 1
000c98  8b101d10  add.s r1, r26, r1
000c9c  8b900011  add.s r1, r1, r16
000ca0  9785a000  and r11, r1, r10
000ca4  9380c905  setlt.u r1, r19, r28
000ca8  37e00000  beq r1, zero, 24
000cac  9380c904  setlt.u r1, r19, r12
000cb0  b7b00000  beq r1, zero, 44
000cb4  93804904  setlt.u r1, r19, r4
000cb8  bbbc00fe  bneq r1, zero, -212
000cbc  db070000  j 60
000cc0  9bc00c01  srli r1, r25, 16
000cc4  9b801000  andi r1, r1, 1
000cc8  8b901c10  add.s r1, r25, r1
000ccc  8b900011  add.s r1, r1, r16
000cd0  178ca000  and r24, r1, r10
000cd4  9380c904  setlt.u r1, r19, r12
000cd8  3bff00fe  bneq r1, zero, -36
000cdc  9bc00b01  srli r1, r23, 16
000ce0  9b801000  andi r1, r1, 1
000ce4  8b901b10  add.s r1, r23, r1
000ce8  8b900011  add.s r1, r1, r16
000cec  178ba000  and r22, r1, r10
000cf0  93804904  setlt.u r1, r19, r4
000cf4  bbcb00fe  bneq r1, zero, -272
000cf8  9bc00801  srli r1, r17, 16
000cfc  9b801000  andi r1, r1, 1
000d00  8b901810  add.s r1, r17, r1
000d04  8b900011  add.s r1, r1, r16
000d08  978aa000  and r21, r1, r10
000d0c  5bdbffff  j -296
000d10  80380002  core_id r17
000d14  00200100  mfence { sm }
000d18  9f702000  addli r1, zero, 23
000d1c  b3800028  zext_int2long r[2:3], r1
000d20  73381ffe  store.d r[2:3], -16(r30)
000d24  e3003fff  loadli.w r1,  -104(r30)
000d28  b7d50000  beq r1, zero, 372
000d2c  9f002000  addli r1, zero, 16
000d30  3d000000  xfence
000d34  00a00300  mfence { lm, sm, gm }
000d38  33830028  zext_int2long r[7:8], r1
000d3c  5b030000  j 24
000d40  eb500fff  load.d r[2:3], -16(r30)
000d44  6b538ffe  load.d r[7:8], -24(r30)
000d48  93201304  setlt.ul r1, r[7:8], r[2:3]
000d4c  27130300  addli.d r[7:8], r[7:8], 1
000d50  37950000  beq r1, zero, 324
000d54  9f700000  addli r1, zero, 7
000d58  73346ffe  store.d r[7:8], -24(r30)
000d5c  33040028  zext_int2long r[9:10], zero
000d60  17331302  sll.d r[7:8], r[7:8], r1
000d64  db040000  j 36
000d68  27440400  addli.d r[9:10], r[9:10], 4
000d6c  0b914211  add.s r2, r5, r20
000d70  9320d402  setneq.d r1, r[9:10], r[14:15]
000d74  73665101  stores.w r21, 12(r2)
000d78  73646101  stores.w r22, 8(r2)
000d7c  73628101  stores.w r24, 4(r2)
000d80  7360b100  stores.w r11, 0(r2)
000d84  b7fe00fe  beq r1, zero, -68
000d88  8b206410  add.ul r[2:3], r[9:10], r[7:8]
000d8c  1bba2000  slli r20, r1, 2
000d90  8b904111  add.s r1, r3, r20
000d94  efc8c000  loads.w r17, 12(r1)
000d98  6fcd0000  loads.w r26, 0(r1)
000d9c  efcc4000  loads.w r25, 4(r1)
000da0  efcb8000  loads.w r23, 8(r1)
000da4  1782f800  and r4, r17, r15
000da8  93004904  setlt.u r1, r18, r4
000dac  3bb00000  bneq r1, zero, 12
000db0  9f8a0800  addli r21, r17, 0
000db4  5b010000  j 8
000db8  979ab801  or r21, r17, r27
000dbc  1786fb00  and r12, r23, r15
000dc0  9300c904  setlt.u r1, r18, r12
000dc4  3bb00000  bneq r1, zero, 12
000dc8  1f8b0b00  addli r22, r23, 0
000dcc  5b010000  j 8
000dd0  179bbb01  or r22, r23, r27
000dd4  178efc00  and r28, r25, r15
000dd8  9300c905  setlt.u r1, r18, r28
000ddc  3bb00000  bneq r1, zero, 12
000de0  1f8c0c00  addli r24, r25, 0
000de4  5b010000  j 8
000de8  179cbc01  or r24, r25, r27
000dec  9700fd00  and r1, r26, r15
000df0  13011904  setlt.u r2, r18, r1
000df4  3b500100  bneq r2, zero, 20
000df8  9f050d00  addli r11, r26, 0
000dfc  93801904  setlt.u r1, r19, r1
000e00  37d00000  beq r1, zero, 20
000e04  db040000  j 36
000e08  9715bd01  or r11, r26, r27
000e0c  93801904  setlt.u r1, r19, r1
000e10  3be00000  bneq r1, zero, 24
000e14  9b400d01  srli r1, r26, 16
000e18  9b801000  andi r1, r1, 1
000e1c  8b101d10  add.s r1, r26, r1
000e20  8b900011  add.s r1, r1, r16
000e24  9785a000  and r11, r1, r10
000e28  9380c905  setlt.u r1, r19, r28
000e2c  37e00000  beq r1, zero, 24
000e30  9380c904  setlt.u r1, r19, r12
000e34  b7b00000  beq r1, zero, 44
000e38  93804904  setlt.u r1, r19, r4
000e3c  bbbc00fe  bneq r1, zero, -212
000e40  db070000  j 60
000e44  9bc00c01  srli r1, r25, 16
000e48  9b801000  andi r1, r1, 1
000e4c  8b901c10  add.s r1, r25, r1
000e50  8b900011  add.s r1, r1, r16
000e54  178ca000  and r24, r1, r10
000e58  9380c904  setlt.u r1, r19, r12
000e5c  3bff00fe  bneq r1, zero, -36
000e60  9bc00b01  srli r1, r23, 16
000e64  9b801000  andi r1, r1, 1
000e68  8b901b10  add.s r1, r23, r1
000e6c  8b900011  add.s r1, r1, r16
000e70  178ba000  and r22, r1, r10
000e74  93804904  setlt.u r1, r19, r4
000e78  bbcb00fe  bneq r1, zero, -272
000e7c  9bc00801  srli r1, r17, 16
000e80  9b801000  andi r1, r1, 1
000e84  8b901810  add.s r1, r17, r1
000e88  8b900011  add.s r1, r1, r16
000e8c  978aa000  and r21, r1, r10
000e90  5bdbffff  j -296
000e94  80380002  core_id r17
000e98  00200100  mfence { sm }
000e9c  9f703000  addli r1, zero, 31
000ea0  b3800028  zext_int2long r[2:3], r1
000ea4  73341ffe  store.d r[2:3], -24(r30)
000ea8  9f300000  addli r1, zero, 3
000eac  bbd51800  bneq r17, r1, 372
000eb0  9f003000  addli r1, zero, 24
000eb4  3d000000  xfence
000eb8  00a00300  mfence { lm, sm, gm }
000ebc  33830028  zext_int2long r[7:8], r1
000ec0  5b030000  j 24
000ec4  eb508ffe  load.d r[2:3], -24(r30)
000ec8  6b530ffe  load.d r[7:8], -32(r30)
000ecc  93201304  setlt.ul r1, r[7:8], r[2:3]
000ed0  27130300  addli.d r[7:8], r[7:8], 1
000ed4  37950000  beq r1, zero, 324
000ed8  9f700000  addli r1, zero, 7
000edc  73306ffe  store.d r[7:8], -32(r30)
000ee0  33040028  zext_int2long r[9:10], zero
000ee4  17331302  sll.d r[7:8], r[7:8], r1
000ee8  db040000  j 36
000eec  27440400  addli.d r[9:10], r[9:10], 4
000ef0  0b914211  add.s r2, r5, r20
000ef4  9320d402  setneq.d r1, r[9:10], r[14:15]
000ef8  73665101  stores.w r21, 12(r2)
000efc  73646101  stores.w r22, 8(r2)
000f00  73628101  stores.w r24, 4(r2)
000f04  7360b100  stores.w r11, 0(r2)
000f08  b7fe00fe  beq r1, zero, -68
000f0c  8b206410  add.ul r[2:3], r[9:10], r[7:8]
000f10  1bba2000  slli r20, r1, 2
000f14  8b904111  add.s r1, r3, r20
000f18  efc8c000  loads.w r17, 12(r1)
000f1c  6fcd0000  loads.w r26, 0(r1)
000f20  efcc4000  loads.w r25, 4(r1)
000f24  efcb8000  loads.w r23, 8(r1)
000f28  1782f800  and r4, r17, r15
000f2c  93004904  setlt.u r1, r18, r4
000f30  3bb00000  bneq r1, zero, 12
000f34  9f8a0800  addli r21, r17, 0
000f38  5b010000  j 8
000f3c  979ab801  or r21, r17, r27
000f40  1786fb00  and r12, r23, r15
000f44  9300c904  setlt.u r1, r18, r12
000f48  3bb00000  bneq r1, zero, 12
000f4c  1f8b0b00  addli r22, r23, 0
000f50  5b010000  j 8
000f54  179bbb01  or r22, r23, r27
000f58  178efc00  and r28, r25, r15
000f5c  9300c905  setlt.u r1, r18, r28
000f60  3bb00000  bneq r1, zero, 12
000f64  1f8c0c00  addli r24, r25, 0
000f68  5b010000  j 8
000f6c  179cbc01  or r24, r25, r27
000f70  9700fd00  and r1, r26, r15
000f74  13011904  setlt.u r2, r18, r1
000f78  3b500100  bneq r2, zero, 20
000f7c  9f050d00  addli r11, r26, 0
000f80  93801904  setlt.u r1, r19, r1
000f84  37d00000  beq r1, zero, 20
000f88  db040000  j 36
000f8c  9715bd01  or r11, r26, r27
000f90  93801904  setlt.u r1, r19, r1
000f94  3be00000  bneq r1, zero, 24
000f98  9b400d01  srli r1, r26, 16
000f9c  9b801000  andi r1, r1, 1
000fa0  8b101d10  add.s r1, r26, r1
000fa4  8b900011  add.s r1, r1, r16
000fa8  9785a000  and r11, r1, r10
000fac  9380c905  setlt.u r1, r19, r28
000fb0  37e00000  beq r1, zero, 24
000fb4  9380c904  setlt.u r1, r19, r12
000fb8  b7b00000  beq r1, zero, 44
000fbc  93804904  setlt.u r1, r19, r4
000fc0  bbbc00fe  bneq r1, zero, -212
000fc4  db070000  j 60
000fc8  9bc00c01  srli r1, r25, 16
000fcc  9b801000  andi r1, r1, 1
000fd0  8b901c10  add.s r1, r25, r1
000fd4  8b900011  add.s r1, r1, r16
000fd8  178ca000  and r24, r1, r10
000fdc  9380c904  setlt.u r1, r19, r12
000fe0  3bff00fe  bneq r1, zero, -36
000fe4  9bc00b01  srli r1, r23, 16
000fe8  9b801000  andi r1, r1, 1
000fec  8b901b10  add.s r1, r23, r1
000ff0  8b900011  add.s r1, r1, r16
000ff4  178ba000  and r22, r1, r10
000ff8  93804904  setlt.u r1, r19, r4
000ffc  bbcb00fe  bneq r1, zero, -272
001000  9bc00801  srli r1, r17, 16
001004  9b801000  andi r1, r1, 1
001008  8b901810  add.s r1, r17, r1
00100c  8b900011  add.s r1, r1, r16
001010  978aa000  and r21, r1, r10
001014  5bdbffff  j -296
001018  80380002  core_id r17
00101c  00200100  mfence { sm }
001020  9f704000  addli r1, zero, 39
001024  b3800028  zext_int2long r[2:3], r1
001028  73301ffe  store.d r[2:3], -32(r30)
00102c  e3403fff  loadli.w r1,  -100(r30)
001030  b7d50000  beq r1, zero, 372
001034  9f004000  addli r1, zero, 32
001038  3d000000  xfence
00103c  00a00300  mfence { lm, sm, gm }
001040  33830028  zext_int2long r[7:8], r1
001044  5b030000  j 24
001048  eb500ffe  load.d r[2:3], -32(r30)
00104c  6b538ffd  load.d r[7:8], -40(r30)
001050  93201304  setlt.ul r1, r[7:8], r[2:3]
001054  27130300  addli.d r[7:8], r[7:8], 1
001058  37950000  beq r1, zero, 324
00105c  9f700000  addli r1, zero, 7
001060  733c6ffc  store.d r[7:8], -40(r30)
001064  17341302  sll.d r[9:10], r[7:8], r1
001068  33030028  zext_int2long r[7:8], zero
00106c  db040000  j 36
001070  27430300  addli.d r[7:8], r[7:8], 4
001074  0b914211  add.s r2, r5, r20
001078  9320d302  setneq.d r1, r[7:8], r[14:15]
00107c  73665101  stores.w r21, 12(r2)
001080  73646101  stores.w r22, 8(r2)
001084  73628101  stores.w r24, 4(r2)
001088  7360b100  stores.w r11, 0(r2)
00108c  b7fe00fe  beq r1, zero, -68
001090  8b208310  add.ul r[2:3], r[7:8], r[9:10]
001094  1bba2000  slli r20, r1, 2
001098  8b904111  add.s r1, r3, r20
00109c  efc8c000  loads.w r17, 12(r1)
0010a0  6fcd0000  loads.w r26, 0(r1)
0010a4  efcc4000  loads.w r25, 4(r1)
0010a8  efcb8000  loads.w r23, 8(r1)
0010ac  1782f800  and r4, r17, r15
0010b0  93004904  setlt.u r1, r18, r4
0010b4  3bb00000  bneq r1, zero, 12
0010b8  9f8a0800  addli r21, r17, 0
0010bc  5b010000  j 8
0010c0  979ab801  or r21, r17, r27
0010c4  1786fb00  and r12, r23, r15
0010c8  9300c904  setlt.u r1, r18, r12
0010cc  3bb00000  bneq r1, zero, 12
0010d0  1f8b0b00  addli r22, r23, 0
0010d4  5b010000  j 8
0010d8  179bbb01  or r22, r23, r27
0010dc  178efc00  and r28, r25, r15
0010e0  9300c905  setlt.u r1, r18, r28
0010e4  3bb00000  bneq r1, zero, 12
0010e8  1f8c0c00  addli r24, r25, 0
0010ec  5b010000  j 8
0010f0  179cbc01  or r24, r25, r27
0010f4  9700fd00  and r1, r26, r15
0010f8  13011904  setlt.u r2, r18, r1
0010fc  3b500100  bneq r2, zero, 20
001100  9f050d00  addli r11, r26, 0
001104  93801904  setlt.u r1, r19, r1
001108  37d00000  beq r1, zero, 20
00110c  db040000  j 36
001110  9715bd01  or r11, r26, r27
001114  93801904  setlt.u r1, r19, r1
001118  3be00000  bneq r1, zero, 24
00111c  9b400d01  srli r1, r26, 16
001120  9b801000  andi r1, r1, 1
001124  8b101d10  add.s r1, r26, r1
001128  8b900011  add.s r1, r1, r16
00112c  9785a000  and r11, r1, r10
001130  9380c905  setlt.u r1, r19, r28
001134  37e00000  beq r1, zero, 24
001138  9380c904  setlt.u r1, r19, r12
00113c  b7b00000  beq r1, zero, 44
001140  93804904  setlt.u r1, r19, r4
001144  bbbc00fe  bneq r1, zero, -212
001148  db070000  j 60
00114c  9bc00c01  srli r1, r25, 16
001150  9b801000  andi r1, r1, 1
001154  8b901c10  add.s r1, r25, r1
001158  8b900011  add.s r1, r1, r16
00115c  178ca000  and r24, r1, r10
001160  9380c904  setlt.u r1, r19, r12
001164  3bff00fe  bneq r1, zero, -36
001168  9bc00b01  srli r1, r23, 16
00116c  9b801000  andi r1, r1, 1
001170  8b901b10  add.s r1, r23, r1
001174  8b900011  add.s r1, r1, r16
001178  178ba000  and r22, r1, r10
00117c  93804904  setlt.u r1, r19, r4
001180  bbcb00fe  bneq r1, zero, -272
001184  9bc00801  srli r1, r17, 16
001188  9b801000  andi r1, r1, 1
00118c  8b901810  add.s r1, r17, r1
001190  8b900011  add.s r1, r1, r16
001194  978aa000  and r21, r1, r10
001198  5bdbffff  j -296
00119c  80380002  core_id r17
0011a0  00200100  mfence { sm }
0011a4  9f705000  addli r1, zero, 47
0011a8  b3800028  zext_int2long r[2:3], r1
0011ac  733c1ffc  store.d r[2:3], -40(r30)
0011b0  9f500000  addli r1, zero, 5
0011b4  bbd51800  bneq r17, r1, 372
0011b8  9f005000  addli r1, zero, 40
0011bc  3d000000  xfence
0011c0  00a00300  mfence { lm, sm, gm }
0011c4  33830028  zext_int2long r[7:8], r1
0011c8  5b030000  j 24
0011cc  eb508ffd  load.d r[2:3], -40(r30)
0011d0  6b530ffd  load.d r[7:8], -48(r30)
0011d4  93201304  setlt.ul r1, r[7:8], r[2:3]
0011d8  27130300  addli.d r[7:8], r[7:8], 1
0011dc  37950000  beq r1, zero, 324
0011e0  9f700000  addli r1, zero, 7
0011e4  73386ffc  store.d r[7:8], -48(r30)
0011e8  173a1302  sll.d r[21:22], r[7:8], r1
0011ec  33030028  zext_int2long r[7:8], zero
0011f0  db040000  j 36
0011f4  27430300  addli.d r[7:8], r[7:8], 4
0011f8  8b901210  add.s r1, r5, r1
0011fc  1321d302  setneq.d r2, r[7:8], r[14:15]
001200  73e61001  stores.w r17, 12(r1)
001204  73e46001  stores.w r22, 8(r1)
001208  73e28001  stores.w r24, 4(r1)
00120c  73e0b000  stores.w r11, 0(r1)
001210  b77e01fe  beq r2, zero, -68
001214  8b204311  add.ul r[2:3], r[7:8], r[21:22]
001218  9bb02000  slli r1, r1, 2
00121c  0b921110  add.s r4, r3, r1
001220  6f41c200  loads.w r2, 12(r4)
001224  6f4d0200  loads.w r26, 0(r4)
001228  ef4c4200  loads.w r25, 4(r4)
00122c  ef4b8200  loads.w r23, 8(r4)
001230  1702f100  and r4, r2, r15
001234  13044904  setlt.u r8, r18, r4
001238  3b300400  bneq r8, zero, 12
00123c  9f080100  addli r17, r2, 0
001240  5b010000  j 8
001244  9718b101  or r17, r2, r27
001248  1786fb00  and r12, r23, r15
00124c  1304c904  setlt.u r8, r18, r12
001250  3b300400  bneq r8, zero, 12
001254  1f8b0b00  addli r22, r23, 0
001258  5b010000  j 8
00125c  179bbb01  or r22, r23, r27
001260  178efc00  and r28, r25, r15
001264  1304c905  setlt.u r8, r18, r28
001268  3b300400  bneq r8, zero, 12
00126c  1f8c0c00  addli r24, r25, 0
001270  5b010000  j 8
001274  179cbc01  or r24, r25, r27
001278  1704fd00  and r8, r26, r15
00127c  93048904  setlt.u r9, r18, r8
001280  3bd00400  bneq r9, zero, 20
001284  9f050d00  addli r11, r26, 0
001288  13848904  setlt.u r8, r19, r8
00128c  37500400  beq r8, zero, 20
001290  db040000  j 36
001294  9715bd01  or r11, r26, r27
001298  13848904  setlt.u r8, r19, r8
00129c  3b600400  bneq r8, zero, 24
0012a0  1b440d01  srli r8, r26, 16
0012a4  1b041400  andi r8, r8, 1
0012a8  0b148d10  add.s r8, r26, r8
0012ac  0b140411  add.s r8, r8, r16
0012b0  9705a400  and r11, r8, r10
0012b4  1384c905  setlt.u r8, r19, r28
0012b8  37600400  beq r8, zero, 24
0012bc  1384c904  setlt.u r8, r19, r12
0012c0  b7300400  beq r8, zero, 44
0012c4  13824904  setlt.u r4, r19, r4
0012c8  bb3c02fe  bneq r4, zero, -212
0012cc  db070000  j 60
0012d0  1bc40c01  srli r8, r25, 16
0012d4  1b041400  andi r8, r8, 1
0012d8  0b948c10  add.s r8, r25, r8
0012dc  0b140411  add.s r8, r8, r16
0012e0  170ca400  and r24, r8, r10
0012e4  1384c904  setlt.u r8, r19, r12
0012e8  3b7f04fe  bneq r8, zero, -36
0012ec  1bc40b01  srli r8, r23, 16
0012f0  1b041400  andi r8, r8, 1
0012f4  0b948b10  add.s r8, r23, r8
0012f8  0b140411  add.s r8, r8, r16
0012fc  170ba400  and r22, r8, r10
001300  13824904  setlt.u r4, r19, r4
001304  bb4b02fe  bneq r4, zero, -272
001308  1b420101  srli r4, r2, 16
00130c  1b021200  andi r4, r4, 1
001310  0b114110  add.s r2, r2, r4
001314  0b110111  add.s r2, r2, r16
001318  9708a100  and r17, r2, r10
00131c  5bdbffff  j -296
001320  80380002  core_id r17
001324  00200100  mfence { sm }
001328  9f706000  addli r1, zero, 55
00132c  b3800028  zext_int2long r[2:3], r1
001330  73381ffc  store.d r[2:3], -48(r30)
001334  9f600000  addli r1, zero, 6
001338  bbd51800  bneq r17, r1, 372
00133c  9f006000  addli r1, zero, 48
001340  3d000000  xfence
001344  00a00300  mfence { lm, sm, gm }
001348  33830028  zext_int2long r[7:8], r1
00134c  5b030000  j 24
001350  eb500ffd  load.d r[2:3], -48(r30)
001354  6b538ffc  load.d r[7:8], -56(r30)
001358  93201304  setlt.ul r1, r[7:8], r[2:3]
00135c  27130300  addli.d r[7:8], r[7:8], 1
001360  37950000  beq r1, zero, 324
001364  9f700000  addli r1, zero, 7
001368  73346ffc  store.d r[7:8], -56(r30)
00136c  173b1302  sll.d r[23:24], r[7:8], r1
001370  33030028  zext_int2long r[7:8], zero
001374  db040000  j 36
001378  27430300  addli.d r[7:8], r[7:8], 4
00137c  8b901210  add.s r1, r5, r1
001380  1321d302  setneq.d r2, r[7:8], r[14:15]
001384  73e61001  stores.w r17, 12(r1)
001388  73e48001  stores.w r24, 8(r1)
00138c  73e25001  stores.w r21, 4(r1)
001390  73e0b000  stores.w r11, 0(r1)
001394  b77e01fe  beq r2, zero, -68
001398  8b206311  add.ul r[2:3], r[7:8], r[23:24]
00139c  9bb02000  slli r1, r1, 2
0013a0  0b921110  add.s r4, r3, r1
0013a4  6f41c200  loads.w r2, 12(r4)
0013a8  6f4d0200  loads.w r26, 0(r4)
0013ac  ef4c4200  loads.w r25, 4(r4)
0013b0  6f4a8200  loads.w r20, 8(r4)
0013b4  1702f100  and r4, r2, r15
0013b8  13044904  setlt.u r8, r18, r4
0013bc  3b300400  bneq r8, zero, 12
0013c0  9f080100  addli r17, r2, 0
0013c4  5b010000  j 8
0013c8  9718b101  or r17, r2, r27
0013cc  1706fa00  and r12, r20, r15
0013d0  1304c904  setlt.u r8, r18, r12
0013d4  3b300400  bneq r8, zero, 12
0013d8  1f0c0a00  addli r24, r20, 0
0013dc  5b010000  j 8
0013e0  171cba01  or r24, r20, r27
0013e4  178efc00  and r28, r25, r15
0013e8  1304c905  setlt.u r8, r18, r28
0013ec  3b300400  bneq r8, zero, 12
0013f0  9f8a0c00  addli r21, r25, 0
0013f4  5b010000  j 8
0013f8  979abc01  or r21, r25, r27
0013fc  1704fd00  and r8, r26, r15
001400  93048904  setlt.u r9, r18, r8
001404  3bd00400  bneq r9, zero, 20
001408  9f050d00  addli r11, r26, 0
00140c  13848904  setlt.u r8, r19, r8
001410  37500400  beq r8, zero, 20
001414  db040000  j 36
001418  9715bd01  or r11, r26, r27
00141c  13848904  setlt.u r8, r19, r8
001420  3b600400  bneq r8, zero, 24
001424  1b440d01  srli r8, r26, 16
001428  1b041400  andi r8, r8, 1
00142c  0b148d10  add.s r8, r26, r8
001430  0b140411  add.s r8, r8, r16
001434  9705a400  and r11, r8, r10
001438  1384c905  setlt.u r8, r19, r28
00143c  37600400  beq r8, zero, 24
001440  1384c904  setlt.u r8, r19, r12
001444  b7300400  beq r8, zero, 44
001448  13824904  setlt.u r4, r19, r4
00144c  bb3c02fe  bneq r4, zero, -212
001450  db070000  j 60
001454  1bc40c01  srli r8, r25, 16
001458  1b041400  andi r8, r8, 1
00145c  0b948c10  add.s r8, r25, r8
001460  0b140411  add.s r8, r8, r16
001464  970aa400  and r21, r8, r10
001468  1384c904  setlt.u r8, r19, r12
00146c  3b7f04fe  bneq r8, zero, -36
001470  1b440a01  srli r8, r20, 16
001474  1b041400  andi r8, r8, 1
001478  0b148a10  add.s r8, r20, r8
00147c  0b140411  add.s r8, r8, r16
001480  170ca400  and r24, r8, r10
001484  13824904  setlt.u r4, r19, r4
001488  bb4b02fe  bneq r4, zero, -272
00148c  1b420101  srli r4, r2, 16
001490  1b021200  andi r4, r4, 1
001494  0b114110  add.s r2, r2, r4
001498  0b110111  add.s r2, r2, r16
00149c  9708a100  and r17, r2, r10
0014a0  5bdbffff  j -296
0014a4  80380002  core_id r17
0014a8  00200100  mfence { sm }
0014ac  9f707000  addli r1, zero, 63
0014b0  b3800028  zext_int2long r[2:3], r1
0014b4  73341ffc  store.d r[2:3], -56(r30)
0014b8  e3004fff  loadli.w r1,  -96(r30)
0014bc  b7d50000  beq r1, zero, 372
0014c0  9f007000  addli r1, zero, 56
0014c4  3d000000  xfence
0014c8  00a00300  mfence { lm, sm, gm }
0014cc  33830028  zext_int2long r[7:8], r1
0014d0  5b030000  j 24
0014d4  eb508ffc  load.d r[2:3], -56(r30)
0014d8  6b530ffc  load.d r[7:8], -64(r30)
0014dc  93201304  setlt.ul r1, r[7:8], r[2:3]
0014e0  27130300  addli.d r[7:8], r[7:8], 1
0014e4  37950000  beq r1, zero, 324
0014e8  9f700000  addli r1, zero, 7
0014ec  73306ffc  store.d r[7:8], -64(r30)
0014f0  173b1302  sll.d r[23:24], r[7:8], r1
0014f4  33030028  zext_int2long r[7:8], zero
0014f8  db040000  j 36
0014fc  27430300  addli.d r[7:8], r[7:8], 4
001500  8b901210  add.s r1, r5, r1
001504  1321d302  setneq.d r2, r[7:8], r[14:15]
001508  73e61001  stores.w r17, 12(r1)
00150c  73e4a001  stores.w r26, 8(r1)
001510  73e25001  stores.w r21, 4(r1)
001514  73e09000  stores.w r9, 0(r1)
001518  b77e01fe  beq r2, zero, -68
00151c  8b206311  add.ul r[2:3], r[7:8], r[23:24]
001520  9bb02000  slli r1, r1, 2
001524  0b921110  add.s r4, r3, r1
001528  6f41c200  loads.w r2, 12(r4)
00152c  6f460200  loads.w r12, 0(r4)
001530  6f444200  loads.w r8, 4(r4)
001534  6f4a8200  loads.w r20, 8(r4)
001538  1702f100  and r4, r2, r15
00153c  93044904  setlt.u r9, r18, r4
001540  3bb00400  bneq r9, zero, 12
001544  9f080100  addli r17, r2, 0
001548  5b010000  j 8
00154c  9718b101  or r17, r2, r27
001550  9705fa00  and r11, r20, r15
001554  9304b904  setlt.u r9, r18, r11
001558  3bb00400  bneq r9, zero, 12
00155c  1f0d0a00  addli r26, r20, 0
001560  5b010000  j 8
001564  171dba01  or r26, r20, r27
001568  170ef400  and r28, r8, r15
00156c  9304c905  setlt.u r9, r18, r28
001570  3bb00400  bneq r9, zero, 12
001574  9f0a0400  addli r21, r8, 0
001578  5b010000  j 8
00157c  971ab401  or r21, r8, r27
001580  170cf600  and r24, r12, r15
001584  93048905  setlt.u r9, r18, r24
001588  3bd00400  bneq r9, zero, 20
00158c  9f040600  addli r9, r12, 0
001590  138c8905  setlt.u r24, r19, r24
001594  37500c00  beq r24, zero, 20
001598  db040000  j 36
00159c  9714b601  or r9, r12, r27
0015a0  138c8905  setlt.u r24, r19, r24
0015a4  3b600c00  bneq r24, zero, 24
0015a8  9b440601  srli r9, r12, 16
0015ac  9b841400  andi r9, r9, 1
0015b0  8b149610  add.s r9, r12, r9
0015b4  8b940411  add.s r9, r9, r16
0015b8  9784a400  and r9, r9, r10
0015bc  1386c905  setlt.u r12, r19, r28
0015c0  37600600  beq r12, zero, 24
0015c4  1384b904  setlt.u r8, r19, r11
0015c8  b7300400  beq r8, zero, 44
0015cc  13824904  setlt.u r4, r19, r4
0015d0  bb3c02fe  bneq r4, zero, -212
0015d4  db070000  j 60
0015d8  1b460401  srli r12, r8, 16
0015dc  1b061600  andi r12, r12, 1
0015e0  0b14c410  add.s r8, r8, r12
0015e4  0b140411  add.s r8, r8, r16
0015e8  970aa400  and r21, r8, r10
0015ec  1384b904  setlt.u r8, r19, r11
0015f0  3b7f04fe  bneq r8, zero, -36
0015f4  1b440a01  srli r8, r20, 16
0015f8  1b041400  andi r8, r8, 1
0015fc  0b148a10  add.s r8, r20, r8
001600  0b140411  add.s r8, r8, r16
001604  170da400  and r26, r8, r10
001608  13824904  setlt.u r4, r19, r4
00160c  bb4b02fe  bneq r4, zero, -272
001610  1b420101  srli r4, r2, 16
001614  1b021200  andi r4, r4, 1
001618  0b114110  add.s r2, r2, r4
00161c  0b110111  add.s r2, r2, r16
001620  9708a100  and r17, r2, r10
001624  5bdbffff  j -296
001628  80380002  core_id r17
00162c  00200100  mfence { sm }
001630  e3001fff  loadli.w r1,  -120(r30)
001634  1f01000f  addli r2, zero, 1920
001638  33030128  zext_int2long r[7:8], r2
00163c  9bb07000  slli r1, r1, 7
001640  b3800028  zext_int2long r[2:3], r1
001644  0ba36040  min.ul r[7:8], r[2:3], r[7:8]
001648  27030301  addli.d r[7:8], r[7:8], 128
00164c  0b231348  max.ul r[7:8], r[7:8], r[2:3]
001650  8b301318  sub.sl r[2:3], r[7:8], r[2:3]
001654  8ba0d040  min.ul r[2:3], r[2:3], r[14:15]
001658  73341ff8  store.d r[2:3], -120(r30)
00165c  9f70f001  addli r1, zero, 255
001660  80a20004  csr_set csr5, r1
001664  9f300000  addli r1, zero, 3
001668  00e00200  sync_core
00166c  bbb01800  bneq r17, r1, 44
001670  9f301000  addli r1, zero, 11
001674  7d800000  xsignal r1, 0
001678  9f401000  addli r1, zero, 12
00167c  7d800000  xsignal r1, 0
001680  9f501000  addli r1, zero, 13
001684  7d900000  xwait r1, 0
001688  9f202000  addli r1, zero, 18
00168c  7d900000  xwait r1, 0
001690  6b538ffa  load.d r[7:8], -88(r30)
001694  5b6d0000  j 872
001698  e3006fff  loadli.w r1,  -80(r30)
00169c  2b410500  lui r2, 84
0016a0  9bb09000  slli r1, r1, 9
0016a4  8b952010  add.s r11, r1, r2
0016a8  1f610000  addli r2, zero, 6
0016ac  bb8b2800  bneq r17, r2, 736
0016b0  6b530f01  load.d r[7:8], 16(r30)
0016b4  6b548ff7  load.d r[9:10], -136(r30)
0016b8  1f0a2000  addli r20, zero, 16
0016bc  1f220000  addli r4, zero, 2
0016c0  7d100a00  xwait r20, 0
0016c4  63414fff  loadli.w r2,  -92(r30)
0016c8  0b238310  add.ul r[7:8], r[7:8], r[9:10]
0016cc  bf542200  blt.s r4, r2, 308
0016d0  1f540000  addli r8, zero, 5
0016d4  9f140000  addli r9, zero, 1
0016d8  1f310000  addli r2, zero, 3
0016dc  1f460000  addli r12, zero, 4
0016e0  1d000400  lock zero, r8
0016e4  15000014  dma_cfg zero, zero, zero, 10
0016e8  15009014  dma_cfg zero, zero, r9, 10
0016ec  15004014  dma_cfg zero, zero, r4, 10
0016f0  15002014  dma_cfg zero, zero, r2, 10
0016f4  1f610000  addli r2, zero, 6
0016f8  1500c014  dma_cfg zero, zero, r12, 10
0016fc  15008014  dma_cfg zero, zero, r8, 10
001700  15002014  dma_cfg zero, zero, r2, 10
001704  1f710000  addli r2, zero, 7
001708  15002014  dma_cfg zero, zero, r2, 10
00170c  1f011000  addli r2, zero, 8
001710  15002014  dma_cfg zero, zero, r2, 10
001714  1f111000  addli r2, zero, 9
001718  15002014  dma_cfg zero, zero, r2, 10
00171c  1f211000  addli r2, zero, 10
001720  15002014  dma_cfg zero, zero, r2, 10
001724  1f311000  addli r2, zero, 11
001728  15002014  dma_cfg zero, zero, r2, 10
00172c  1f411000  addli r2, zero, 12
001730  15002014  dma_cfg zero, zero, r2, 10
001734  1f511000  addli r2, zero, 13
001738  15002014  dma_cfg zero, zero, r2, 10
00173c  1f611000  addli r2, zero, 14
001740  15002014  dma_cfg zero, zero, r2, 10
001744  1f711000  addli r2, zero, 15
001748  15002014  dma_cfg zero, zero, r2, 10
00174c  1f112000  addli r2, zero, 17
001750  15004015  dma_cfg zero, zero, r20, 10
001754  15002014  dma_cfg zero, zero, r2, 10
001758  1f212000  addli r2, zero, 18
00175c  15002014  dma_cfg zero, zero, r2, 10
001760  1f312000  addli r2, zero, 19
001764  15002014  dma_cfg zero, zero, r2, 10
001768  1f412000  addli r2, zero, 20
00176c  15002014  dma_cfg zero, zero, r2, 10
001770  1f512000  addli r2, zero, 21
001774  15002014  dma_cfg zero, zero, r2, 10
001778  1f612000  addli r2, zero, 22
00177c  15002014  dma_cfg zero, zero, r2, 10
001780  1f712000  addli r2, zero, 23
001784  15002014  dma_cfg zero, zero, r2, 10
001788  1f013000  addli r2, zero, 24
00178c  15002014  dma_cfg zero, zero, r2, 10
001790  1f113000  addli r2, zero, 25
001794  15002014  dma_cfg zero, zero, r2, 10
001798  1f213000  addli r2, zero, 26
00179c  15002014  dma_cfg zero, zero, r2, 10
0017a0  1f313000  addli r2, zero, 27
0017a4  15002014  dma_cfg zero, zero, r2, 10
0017a8  1f413000  addli r2, zero, 28
0017ac  15002014  dma_cfg zero, zero, r2, 10
0017b0  1f513000  addli r2, zero, 29
0017b4  15002014  dma_cfg zero, zero, r2, 10
0017b8  1f613000  addli r2, zero, 30
0017bc  15002014  dma_cfg zero, zero, r2, 10
0017c0  1f713000  addli r2, zero, 31
0017c4  15002014  dma_cfg zero, zero, r2, 10
0017c8  1f018000  addli r2, zero, 64
0017cc  95840400  dma_cfg r9, r9, zero, 0
0017d0  95040002  dma_cfg r9, zero, zero, 1
0017d4  15000004  dma_cfg zero, zero, zero, 2
0017d8  95052006  dma_cfg r11, zero, r2, 3
0017dc  1f010001  addli r2, zero, 128
0017e0  1501c008  dma_cfg r2, zero, r12, 4
0017e4  1f010004  addli r2, zero, 512
0017e8  1501900a  dma_cfg r2, zero, r9, 5
0017ec  15000010  dma_cfg zero, zero, zero, 8
0017f0  35000000  dma_run zero
0017f4  1500900a  dma_cfg zero, zero, r9, 5
0017f8  15000010  dma_cfg zero, zero, zero, 8
0017fc  1d100400  unlock r8
001800  9f440000  addli r9, zero, 4
001804  1f140000  addli r8, zero, 1
001808  2b410500  lui r2, 84
00180c  1f068000  addli r12, zero, 64
001810  1d800400  lock zero, r9
001814  1b110104  ori r2, r2, 64
001818  15040400  dma_cfg r8, r8, zero, 0
00181c  15800304  dma_cfg zero, r7, zero, 2
001820  8b902010  add.s r1, r1, r2
001824  eb5a8ff8  load.d r[22:23], -120(r30)
001828  9500c306  dma_cfg r1, r6, r12, 3
00182c  1f030001  addli r6, zero, 128
001830  9f030002  addli r7, zero, 256
001834  1ff13a00  addli r2, r21, 31
001838  9b405100  srli r1, r2, 5
00183c  1bb11a00  slli r2, r21, 1
001840  9f0a0004  addli r21, zero, 512
001844  15031608  dma_cfg r6, r12, r1, 4
001848  1b01e103  andi r2, r2, 62
00184c  958a830a  dma_cfg r21, r7, r8, 5
001850  9f530000  addli r7, zero, 5
001854  15002010  dma_cfg zero, zero, r2, 8
001858  35000000  dma_run zero
00185c  1500800a  dma_cfg zero, zero, r8, 5
001860  15000010  dma_cfg zero, zero, zero, 8
001864  1d900400  unlock r9
001868  1d800300  lock zero, r7
00186c  15000014  dma_cfg zero, zero, zero, 10
001870  15008014  dma_cfg zero, zero, r8, 10
001874  15004014  dma_cfg zero, zero, r4, 10
001878  1f320000  addli r4, zero, 3
00187c  15004014  dma_cfg zero, zero, r4, 10
001880  1f620000  addli r4, zero, 6
001884  15009014  dma_cfg zero, zero, r9, 10
001888  9f741000  addli r9, zero, 15
00188c  15007014  dma_cfg zero, zero, r7, 10
001890  15004014  dma_cfg zero, zero, r4, 10
001894  1f720000  addli r4, zero, 7
001898  15004014  dma_cfg zero, zero, r4, 10
00189c  1f021000  addli r4, zero, 8
0018a0  15004014  dma_cfg zero, zero, r4, 10
0018a4  1f121000  addli r4, zero, 9
0018a8  15004014  dma_cfg zero, zero, r4, 10
0018ac  1f221000  addli r4, zero, 10
0018b0  15004014  dma_cfg zero, zero, r4, 10
0018b4  1f321000  addli r4, zero, 11
0018b8  15004014  dma_cfg zero, zero, r4, 10
0018bc  1f421000  addli r4, zero, 12
0018c0  15004014  dma_cfg zero, zero, r4, 10
0018c4  1f521000  addli r4, zero, 13
0018c8  15004014  dma_cfg zero, zero, r4, 10
0018cc  1f621000  addli r4, zero, 14
0018d0  15004014  dma_cfg zero, zero, r4, 10
0018d4  1f122000  addli r4, zero, 17
0018d8  15009014  dma_cfg zero, zero, r9, 10
0018dc  15004015  dma_cfg zero, zero, r20, 10
0018e0  15004014  dma_cfg zero, zero, r4, 10
0018e4  1f222000  addli r4, zero, 18
0018e8  15004014  dma_cfg zero, zero, r4, 10
0018ec  1f322000  addli r4, zero, 19
0018f0  15004014  dma_cfg zero, zero, r4, 10
0018f4  1f422000  addli r4, zero, 20
0018f8  15004014  dma_cfg zero, zero, r4, 10
0018fc  1f522000  addli r4, zero, 21
001900  15004014  dma_cfg zero, zero, r4, 10
001904  1f622000  addli r4, zero, 22
001908  15004014  dma_cfg zero, zero, r4, 10
00190c  1f722000  addli r4, zero, 23
001910  15004014  dma_cfg zero, zero, r4, 10
001914  1f023000  addli r4, zero, 24
001918  15004014  dma_cfg zero, zero, r4, 10
00191c  1f123000  addli r4, zero, 25
001920  15004014  dma_cfg zero, zero, r4, 10
001924  1f223000  addli r4, zero, 26
001928  15004014  dma_cfg zero, zero, r4, 10
00192c  1f323000  addli r4, zero, 27
001930  15004014  dma_cfg zero, zero, r4, 10
001934  1f423000  addli r4, zero, 28
001938  15004014  dma_cfg zero, zero, r4, 10
00193c  1f523000  addli r4, zero, 29
001940  15004014  dma_cfg zero, zero, r4, 10
001944  1f623000  addli r4, zero, 30
001948  15004014  dma_cfg zero, zero, r4, 10
00194c  1f723000  addli r4, zero, 31
001950  15004014  dma_cfg zero, zero, r4, 10
001954  15040400  dma_cfg r8, r8, zero, 0
001958  15040002  dma_cfg r8, zero, zero, 1
00195c  15000004  dma_cfg zero, zero, zero, 2
001960  9505c006  dma_cfg r11, zero, r12, 3
001964  15031008  dma_cfg r6, zero, r1, 4
001968  950a800a  dma_cfg r21, zero, r8, 5
00196c  15002010  dma_cfg zero, zero, r2, 8
001970  35000000  dma_run zero
001974  1500800a  dma_cfg zero, zero, r8, 5
001978  15000010  dma_cfg zero, zero, zero, 8
00197c  1d900300  unlock r7
001980  7d800400  xsignal r9, 0
001984  6b538ffa  load.d r[7:8], -88(r30)
001988  db0e0000  j 116
00198c  6b538ffa  load.d r[7:8], -88(r30)
001990  9f500000  addli r1, zero, 5
001994  2b820000  lui r4, 8
001998  bb911800  bneq r17, r1, 100
00199c  1f411000  addli r2, zero, 12
0019a0  9f000000  addli r1, zero, 0
0019a4  7d100100  xwait r2, 0
0019a8  1f711000  addli r2, zero, 15
0019ac  7d100100  xwait r2, 0
0019b0  1f210000  addli r2, zero, 2
0019b4  1d000100  lock zero, r2
0019b8  2b01803f  lui r2, 260096
0019bc  0d000002  ew_cfg zero, zero, zero, 1
0019c0  0d110100  ewcoeff_cfg r2, r2, zero, 0
0019c4  1f71f000  addli r2, zero, 127
0019c8  0d000104  ew_cfg zero, r2, zero, 2
0019cc  1f110000  addli r2, zero, 1
0019d0  0d010006  ew_cfg r2, zero, zero, 3
0019d4  0b911210  add.s r2, r5, r1
0019d8  9f800004  addli r1, r1, 512
0019dc  2d01b100  dsmadd r2, r2, r11, 0
0019e0  bbdf40fe  bneq r1, r4, -12
0019e4  9f200000  addli r1, zero, 2
0019e8  1d900000  unlock r1
0019ec  9f501000  addli r1, zero, 13
0019f0  7d800000  xsignal r1, 0
0019f4  9f002000  addli r1, zero, 16
0019f8  7d800000  xsignal r1, 0
0019fc  abc00300  lui r1, 60
001a00  3d000000  xfence
001a04  00a00300  mfence { lm, sm, gm }
001a08  8b951110  add.s r11, r3, r1
001a0c  9f70f001  addli r1, zero, 255
001a10  80a20004  csr_set csr5, r1
001a14  00e00200  sync_core
001a18  37810800  beq r17, zero, 64
001a1c  9f100000  addli r1, zero, 1
001a20  b7e61800  beq r17, r1, 440
001a24  e3003fff  loadli.w r1,  -104(r30)
001a28  bbbc0000  bneq r1, zero, 812
001a2c  9f300000  addli r1, zero, 3
001a30  b7821802  beq r17, r1, 1184
001a34  e3403fff  loadli.w r1,  -100(r30)
001a38  3bd80002  bneq r1, zero, 1556
001a3c  9f500000  addli r1, zero, 5
001a40  37ae1802  beq r17, r1, 1928
001a44  9f600000  addli r1, zero, 6
001a48  b7f31804  beq r17, r1, 2300
001a4c  e3004fff  loadli.w r1,  -96(r30)
001a50  bbc90004  bneq r1, zero, 2672
001a54  5b7c0100  j 3040
001a58  b3000028  zext_int2long r[2:3], zero
001a5c  3d000000  xfence
001a60  00a00300  mfence { lm, sm, gm }
001a64  27830000  addli.d r[7:8], r[2:3], 0
001a68  73381ffa  store.d r[2:3], -80(r30)
001a6c  5b030000  j 24
001a70  eb508ffb  load.d r[2:3], -72(r30)
001a74  6b530ffc  load.d r[7:8], -64(r30)
001a78  93201304  setlt.ul r1, r[7:8], r[2:3]
001a7c  27130300  addli.d r[7:8], r[7:8], 1
001a80  37950000  beq r1, zero, 324
001a84  9f700000  addli r1, zero, 7
001a88  6b5b0ffb  load.d r[23:24], -80(r30)
001a8c  73306ffc  store.d r[7:8], -64(r30)
001a90  17331302  sll.d r[7:8], r[7:8], r1
001a94  db040000  j 36
001a98  274b0b00  addli.d r[23:24], r[23:24], 4
001a9c  0b911511  add.s r2, r11, r17
001aa0  9320db02  setneq.d r1, r[23:24], r[14:15]
001aa4  73664100  stores.w r4, 12(r2)
001aa8  73644101  stores.w r20, 8(r2)
001aac  73628100  stores.w r8, 4(r2)
001ab0  7360c100  stores.w r12, 0(r2)
001ab4  b7fe00fe  beq r1, zero, -68
001ab8  8b206b10  add.ul r[2:3], r[23:24], r[7:8]
001abc  9bb82000  slli r17, r1, 2
001ac0  8b901211  add.s r1, r5, r17
001ac4  6fcdc000  loads.w r26, 12(r1)
001ac8  6fc10000  loads.w r2, 0(r1)
001acc  efc44000  loads.w r9, 4(r1)
001ad0  efca8000  loads.w r21, 8(r1)
001ad4  170efd00  and r28, r26, r15
001ad8  9300c905  setlt.u r1, r18, r28
001adc  3bb00000  bneq r1, zero, 12
001ae0  1f020d00  addli r4, r26, 0
001ae4  5b010000  j 8
001ae8  1712bd01  or r4, r26, r27
001aec  9780fa00  and r1, r21, r15
001af0  13041904  setlt.u r8, r18, r1
001af4  3b300400  bneq r8, zero, 12
001af8  1f8a0a00  addli r20, r21, 0
001afc  5b010000  j 8
001b00  179aba01  or r20, r21, r27
001b04  178cf400  and r24, r9, r15
001b08  13048905  setlt.u r8, r18, r24
001b0c  3b300400  bneq r8, zero, 12
001b10  1f840400  addli r8, r9, 0
001b14  5b010000  j 8
001b18  1794b401  or r8, r9, r27
001b1c  970cf100  and r25, r2, r15
001b20  13069905  setlt.u r12, r18, r25
001b24  3b500600  bneq r12, zero, 20
001b28  1f060100  addli r12, r2, 0
001b2c  938c9905  setlt.u r25, r19, r25
001b30  37d00c00  beq r25, zero, 20
001b34  db040000  j 36
001b38  1716b101  or r12, r2, r27
001b3c  938c9905  setlt.u r25, r19, r25
001b40  3be00c00  bneq r25, zero, 24
001b44  1b460101  srli r12, r2, 16
001b48  1b061600  andi r12, r12, 1
001b4c  0b11c110  add.s r2, r2, r12
001b50  0b110111  add.s r2, r2, r16
001b54  1706a100  and r12, r2, r10
001b58  13818905  setlt.u r2, r19, r24
001b5c  37600100  beq r2, zero, 24
001b60  93801904  setlt.u r1, r19, r1
001b64  b7b00000  beq r1, zero, 44
001b68  9380c905  setlt.u r1, r19, r28
001b6c  bbbc00fe  bneq r1, zero, -212
001b70  db070000  j 60
001b74  1bc10401  srli r2, r9, 16
001b78  1b011100  andi r2, r2, 1
001b7c  0b912410  add.s r2, r9, r2
001b80  0b110111  add.s r2, r2, r16
001b84  1704a100  and r8, r2, r10
001b88  93801904  setlt.u r1, r19, r1
001b8c  3bff00fe  bneq r1, zero, -36
001b90  9bc00a01  srli r1, r21, 16
001b94  9b801000  andi r1, r1, 1
001b98  8b901a10  add.s r1, r21, r1
001b9c  8b900011  add.s r1, r1, r16
001ba0  178aa000  and r20, r1, r10
001ba4  9380c905  setlt.u r1, r19, r28
001ba8  bbcb00fe  bneq r1, zero, -272
001bac  9b400d01  srli r1, r26, 16
001bb0  9b801000  andi r1, r1, 1
001bb4  8b101d10  add.s r1, r26, r1
001bb8  8b900011  add.s r1, r1, r16
001bbc  1782a000  and r4, r1, r10
001bc0  5bdbffff  j -296
001bc4  00200100  mfence { sm }
001bc8  80380002  core_id r17
001bcc  6b538ffa  load.d r[7:8], -88(r30)
001bd0  9f100000  addli r1, zero, 1
001bd4  3bc918fe  bneq r17, r1, -432
001bd8  9f001000  addli r1, zero, 8
001bdc  3d000000  xfence
001be0  00a00300  mfence { lm, sm, gm }
001be4  33830028  zext_int2long r[7:8], r1
001be8  5b030000  j 24
001bec  eb508fff  load.d r[2:3], -8(r30)
001bf0  6b530ffc  load.d r[7:8], -64(r30)
001bf4  93201304  setlt.ul r1, r[7:8], r[2:3]
001bf8  27130300  addli.d r[7:8], r[7:8], 1
001bfc  37950000  beq r1, zero, 324
001c00  9f700000  addli r1, zero, 7
001c04  73306ffc  store.d r[7:8], -64(r30)
001c08  173b1302  sll.d r[23:24], r[7:8], r1
001c0c  33030028  zext_int2long r[7:8], zero
001c10  db040000  j 36
001c14  27430300  addli.d r[7:8], r[7:8], 4
001c18  8b901510  add.s r1, r11, r1
001c1c  1321d302  setneq.d r2, r[7:8], r[14:15]
001c20  73e64000  stores.w r4, 12(r1)
001c24  73e44001  stores.w r20, 8(r1)
001c28  73e28000  stores.w r8, 4(r1)
001c2c  73e0c000  stores.w r12, 0(r1)
001c30  b77e01fe  beq r2, zero, -68
001c34  8b206311  add.ul r[2:3], r[7:8], r[23:24]
001c38  9bb02000  slli r1, r1, 2
001c3c  0b921210  add.s r4, r5, r1
001c40  6f41c200  loads.w r2, 12(r4)
001c44  6f4e0200  loads.w r28, 0(r4)
001c48  ef444200  loads.w r9, 4(r4)
001c4c  ef4a8200  loads.w r21, 8(r4)
001c50  9708f100  and r17, r2, r15
001c54  13021905  setlt.u r4, r18, r17
001c58  3b300200  bneq r4, zero, 12
001c5c  1f020100  addli r4, r2, 0
001c60  5b010000  j 8
001c64  1712b101  or r4, r2, r27
001c68  178dfa00  and r26, r21, r15
001c6c  1304a905  setlt.u r8, r18, r26
001c70  3b300400  bneq r8, zero, 12
001c74  1f8a0a00  addli r20, r21, 0
001c78  5b010000  j 8
001c7c  179aba01  or r20, r21, r27
001c80  178cf400  and r24, r9, r15
001c84  13048905  setlt.u r8, r18, r24
001c88  3b300400  bneq r8, zero, 12
001c8c  1f840400  addli r8, r9, 0
001c90  5b010000  j 8
001c94  1794b401  or r8, r9, r27
001c98  970cfe00  and r25, r28, r15
001c9c  13069905  setlt.u r12, r18, r25
001ca0  3b500600  bneq r12, zero, 20
001ca4  1f060e00  addli r12, r28, 0
001ca8  938c9905  setlt.u r25, r19, r25
001cac  37d00c00  beq r25, zero, 20
001cb0  db040000  j 36
001cb4  1716be01  or r12, r28, r27
001cb8  938c9905  setlt.u r25, r19, r25
001cbc  3be00c00  bneq r25, zero, 24
001cc0  1b460e01  srli r12, r28, 16
001cc4  1b061600  andi r12, r12, 1
001cc8  0b16ce10  add.s r12, r28, r12
001ccc  0b160611  add.s r12, r12, r16
001cd0  1706a600  and r12, r12, r10
001cd4  138c8905  setlt.u r24, r19, r24
001cd8  37600c00  beq r24, zero, 24
001cdc  9384a905  setlt.u r9, r19, r26
001ce0  b7b00400  beq r9, zero, 44
001ce4  93841905  setlt.u r9, r19, r17
001ce8  bbbc04fe  bneq r9, zero, -212
001cec  db070000  j 60
001cf0  1bc40401  srli r8, r9, 16
001cf4  1b041400  andi r8, r8, 1
001cf8  0b948410  add.s r8, r9, r8
001cfc  0b140411  add.s r8, r8, r16
001d00  1704a400  and r8, r8, r10
001d04  9384a905  setlt.u r9, r19, r26
001d08  3bff04fe  bneq r9, zero, -36
001d0c  9bc40a01  srli r9, r21, 16
001d10  9b841400  andi r9, r9, 1
001d14  8b949a10  add.s r9, r21, r9
001d18  8b940411  add.s r9, r9, r16
001d1c  178aa400  and r20, r9, r10
001d20  93841905  setlt.u r9, r19, r17
001d24  bbcb04fe  bneq r9, zero, -272
001d28  1b420101  srli r4, r2, 16
001d2c  1b021200  andi r4, r4, 1
001d30  0b114110  add.s r2, r2, r4
001d34  0b110111  add.s r2, r2, r16
001d38  1702a100  and r4, r2, r10
001d3c  5bdbffff  j -296
001d40  00200100  mfence { sm }
001d44  80380002  core_id r17
001d48  6b538ffa  load.d r[7:8], -88(r30)
001d4c  e3003fff  loadli.w r1,  -104(r30)
001d50  37f300fe  beq r1, zero, -804
001d54  9f002000  addli r1, zero, 16
001d58  3d000000  xfence
001d5c  00a00300  mfence { lm, sm, gm }
001d60  33830028  zext_int2long r[7:8], r1
001d64  5b030000  j 24
001d68  eb500fff  load.d r[2:3], -16(r30)
001d6c  6b538fff  load.d r[7:8], -8(r30)
001d70  93201304  setlt.ul r1, r[7:8], r[2:3]
001d74  27130300  addli.d r[7:8], r[7:8], 1
001d78  37950000  beq r1, zero, 324
001d7c  9f700000  addli r1, zero, 7
001d80  733c6ffe  store.d r[7:8], -8(r30)
001d84  173b1302  sll.d r[23:24], r[7:8], r1
001d88  33030028  zext_int2long r[7:8], zero
001d8c  db040000  j 36
001d90  27430300  addli.d r[7:8], r[7:8], 4
001d94  8b901510  add.s r1, r11, r1
001d98  1321d302  setneq.d r2, r[7:8], r[14:15]
001d9c  73e64000  stores.w r4, 12(r1)
001da0  73e44001  stores.w r20, 8(r1)
001da4  73e28000  stores.w r8, 4(r1)
001da8  73e0c000  stores.w r12, 0(r1)
001dac  b77e01fe  beq r2, zero, -68
001db0  8b206311  add.ul r[2:3], r[7:8], r[23:24]
001db4  9bb02000  slli r1, r1, 2
001db8  0b921210  add.s r4, r5, r1
001dbc  6f41c200  loads.w r2, 12(r4)
001dc0  6f4e0200  loads.w r28, 0(r4)
001dc4  ef444200  loads.w r9, 4(r4)
001dc8  ef4a8200  loads.w r21, 8(r4)
001dcc  9708f100  and r17, r2, r15
001dd0  13021905  setlt.u r4, r18, r17
001dd4  3b300200  bneq r4, zero, 12
001dd8  1f020100  addli r4, r2, 0
001ddc  5b010000  j 8
001de0  1712b101  or r4, r2, r27
001de4  178dfa00  and r26, r21, r15
001de8  1304a905  setlt.u r8, r18, r26
001dec  3b300400  bneq r8, zero, 12
001df0  1f8a0a00  addli r20, r21, 0
001df4  5b010000  j 8
001df8  179aba01  or r20, r21, r27
001dfc  178cf400  and r24, r9, r15
001e00  13048905  setlt.u r8, r18, r24
001e04  3b300400  bneq r8, zero, 12
001e08  1f840400  addli r8, r9, 0
001e0c  5b010000  j 8
001e10  1794b401  or r8, r9, r27
001e14  970cfe00  and r25, r28, r15
001e18  13069905  setlt.u r12, r18, r25
001e1c  3b500600  bneq r12, zero, 20
001e20  1f060e00  addli r12, r28, 0
001e24  938c9905  setlt.u r25, r19, r25
001e28  37d00c00  beq r25, zero, 20
001e2c  db040000  j 36
001e30  1716be01  or r12, r28, r27
001e34  938c9905  setlt.u r25, r19, r25
001e38  3be00c00  bneq r25, zero, 24
001e3c  1b460e01  srli r12, r28, 16
001e40  1b061600  andi r12, r12, 1
001e44  0b16ce10  add.s r12, r28, r12
001e48  0b160611  add.s r12, r12, r16
001e4c  1706a600  and r12, r12, r10
001e50  138c8905  setlt.u r24, r19, r24
001e54  37600c00  beq r24, zero, 24
001e58  9384a905  setlt.u r9, r19, r26
001e5c  b7b00400  beq r9, zero, 44
001e60  93841905  setlt.u r9, r19, r17
001e64  bbbc04fe  bneq r9, zero, -212
001e68  db070000  j 60
001e6c  1bc40401  srli r8, r9, 16
001e70  1b041400  andi r8, r8, 1
001e74  0b948410  add.s r8, r9, r8
001e78  0b140411  add.s r8, r8, r16
001e7c  1704a400  and r8, r8, r10
001e80  9384a905  setlt.u r9, r19, r26
001e84  3bff04fe  bneq r9, zero, -36
001e88  9bc40a01  srli r9, r21, 16
001e8c  9b841400  andi r9, r9, 1
001e90  8b949a10  add.s r9, r21, r9
001e94  8b940411  add.s r9, r9, r16
001e98  178aa400  and r20, r9, r10
001e9c  93841905  setlt.u r9, r19, r17
001ea0  bbcb04fe  bneq r9, zero, -272
001ea4  1b420101  srli r4, r2, 16
001ea8  1b021200  andi r4, r4, 1
001eac  0b114110  add.s r2, r2, r4
001eb0  0b110111  add.s r2, r2, r16
001eb4  1702a100  and r4, r2, r10
001eb8  5bdbffff  j -296
001ebc  00200100  mfence { sm }
001ec0  80380002  core_id r17
001ec4  6b538ffa  load.d r[7:8], -88(r30)
001ec8  9f300000  addli r1, zero, 3
001ecc  bbad18fc  bneq r17, r1, -1176
001ed0  9f003000  addli r1, zero, 24
001ed4  3d000000  xfence
001ed8  00a00300  mfence { lm, sm, gm }
001edc  33830028  zext_int2long r[7:8], r1
001ee0  5b030000  j 24
001ee4  eb508ffe  load.d r[2:3], -24(r30)
001ee8  6b538fff  load.d r[7:8], -8(r30)
001eec  93201304  setlt.ul r1, r[7:8], r[2:3]
001ef0  27130300  addli.d r[7:8], r[7:8], 1
001ef4  37950000  beq r1, zero, 324
001ef8  9f700000  addli r1, zero, 7
001efc  733c6ffe  store.d r[7:8], -8(r30)
001f00  173b1302  sll.d r[23:24], r[7:8], r1
001f04  33030028  zext_int2long r[7:8], zero
001f08  db040000  j 36
001f0c  27430300  addli.d r[7:8], r[7:8], 4
001f10  8b901510  add.s r1, r11, r1
001f14  1321d302  setneq.d r2, r[7:8], r[14:15]
001f18  73e64000  stores.w r4, 12(r1)
001f1c  73e44001  stores.w r20, 8(r1)
001f20  73e28000  stores.w r8, 4(r1)
001f24  73e0c000  stores.w r12, 0(r1)
001f28  b77e01fe  beq r2, zero, -68
001f2c  8b206311  add.ul r[2:3], r[7:8], r[23:24]
001f30  9bb02000  slli r1, r1, 2
001f34  0b921210  add.s r4, r5, r1
001f38  6f41c200  loads.w r2, 12(r4)
001f3c  6f4e0200  loads.w r28, 0(r4)
001f40  ef444200  loads.w r9, 4(r4)
001f44  ef4a8200  loads.w r21, 8(r4)
001f48  9708f100  and r17, r2, r15
001f4c  13021905  setlt.u r4, r18, r17
001f50  3b300200  bneq r4, zero, 12
001f54  1f020100  addli r4, r2, 0
001f58  5b010000  j 8
001f5c  1712b101  or r4, r2, r27
001f60  178dfa00  and r26, r21, r15
001f64  1304a905  setlt.u r8, r18, r26
001f68  3b300400  bneq r8, zero, 12
001f6c  1f8a0a00  addli r20, r21, 0
001f70  5b010000  j 8
001f74  179aba01  or r20, r21, r27
001f78  178cf400  and r24, r9, r15
001f7c  13048905  setlt.u r8, r18, r24
001f80  3b300400  bneq r8, zero, 12
001f84  1f840400  addli r8, r9, 0
001f88  5b010000  j 8
001f8c  1794b401  or r8, r9, r27
001f90  970cfe00  and r25, r28, r15
001f94  13069905  setlt.u r12, r18, r25
001f98  3b500600  bneq r12, zero, 20
001f9c  1f060e00  addli r12, r28, 0
001fa0  938c9905  setlt.u r25, r19, r25
001fa4  37d00c00  beq r25, zero, 20
001fa8  db040000  j 36
001fac  1716be01  or r12, r28, r27
001fb0  938c9905  setlt.u r25, r19, r25
001fb4  3be00c00  bneq r25, zero, 24
001fb8  1b460e01  srli r12, r28, 16
001fbc  1b061600  andi r12, r12, 1
001fc0  0b16ce10  add.s r12, r28, r12
001fc4  0b160611  add.s r12, r12, r16
001fc8  1706a600  and r12, r12, r10
001fcc  138c8905  setlt.u r24, r19, r24
001fd0  37600c00  beq r24, zero, 24
001fd4  9384a905  setlt.u r9, r19, r26
001fd8  b7b00400  beq r9, zero, 44
001fdc  93841905  setlt.u r9, r19, r17
001fe0  bbbc04fe  bneq r9, zero, -212
001fe4  db070000  j 60
001fe8  1bc40401  srli r8, r9, 16
001fec  1b041400  andi r8, r8, 1
001ff0  0b948410  add.s r8, r9, r8
001ff4  0b140411  add.s r8, r8, r16
001ff8  1704a400  and r8, r8, r10
001ffc  9384a905  setlt.u r9, r19, r26
002000  3bff04fe  bneq r9, zero, -36
002004  9bc40a01  srli r9, r21, 16
002008  9b841400  andi r9, r9, 1
00200c  8b949a10  add.s r9, r21, r9
002010  8b940411  add.s r9, r9, r16
002014  178aa400  and r20, r9, r10
002018  93841905  setlt.u r9, r19, r17
00201c  bbcb04fe  bneq r9, zero, -272
002020  1b420101  srli r4, r2, 16
002024  1b021200  andi r4, r4, 1
002028  0b114110  add.s r2, r2, r4
00202c  0b110111  add.s r2, r2, r16
002030  1702a100  and r4, r2, r10
002034  5bdbffff  j -296
002038  00200100  mfence { sm }
00203c  80380002  core_id r17
002040  6b538ffa  load.d r[7:8], -88(r30)
002044  e3403fff  loadli.w r1,  -100(r30)
002048  b7d700fc  beq r1, zero, -1548
00204c  9f004000  addli r1, zero, 32
002050  3d000000  xfence
002054  00a00300  mfence { lm, sm, gm }
002058  33830028  zext_int2long r[7:8], r1
00205c  5b030000  j 24
002060  eb500ffe  load.d r[2:3], -32(r30)
002064  6b538fff  load.d r[7:8], -8(r30)
002068  93201304  setlt.ul r1, r[7:8], r[2:3]
00206c  27130300  addli.d r[7:8], r[7:8], 1
002070  37950000  beq r1, zero, 324
002074  9f700000  addli r1, zero, 7
002078  733c6ffe  store.d r[7:8], -8(r30)
00207c  173c1302  sll.d r[25:26], r[7:8], r1
002080  33030028  zext_int2long r[7:8], zero
002084  db040000  j 36
002088  27430300  addli.d r[7:8], r[7:8], 4
00208c  8b901510  add.s r1, r11, r1
002090  1321d302  setneq.d r2, r[7:8], r[14:15]
002094  73e64000  stores.w r4, 12(r1)
002098  73e44001  stores.w r20, 8(r1)
00209c  73e28000  stores.w r8, 4(r1)
0020a0  73e0c000  stores.w r12, 0(r1)
0020a4  b77e01fe  beq r2, zero, -68
0020a8  8b208311  add.ul r[2:3], r[7:8], r[25:26]
0020ac  9bb02000  slli r1, r1, 2
0020b0  0b921210  add.s r4, r5, r1
0020b4  6f41c200  loads.w r2, 12(r4)
0020b8  6f4e0200  loads.w r28, 0(r4)
0020bc  ef444200  loads.w r9, 4(r4)
0020c0  ef4a8200  loads.w r21, 8(r4)
0020c4  9708f100  and r17, r2, r15
0020c8  13021905  setlt.u r4, r18, r17
0020cc  3b300200  bneq r4, zero, 12
0020d0  1f020100  addli r4, r2, 0
0020d4  5b010000  j 8
0020d8  1712b101  or r4, r2, r27
0020dc  178dfa00  and r26, r21, r15
0020e0  1304a905  setlt.u r8, r18, r26
0020e4  3b300400  bneq r8, zero, 12
0020e8  1f8a0a00  addli r20, r21, 0
0020ec  5b010000  j 8
0020f0  179aba01  or r20, r21, r27
0020f4  178bf400  and r22, r9, r15
0020f8  13046905  setlt.u r8, r18, r22
0020fc  3b300400  bneq r8, zero, 12
002100  1f840400  addli r8, r9, 0
002104  5b010000  j 8
002108  1794b401  or r8, r9, r27
00210c  970bfe00  and r23, r28, r15
002110  13067905  setlt.u r12, r18, r23
002114  3b500600  bneq r12, zero, 20
002118  1f060e00  addli r12, r28, 0
00211c  938b7905  setlt.u r23, r19, r23
002120  37d00b00  beq r23, zero, 20
002124  db040000  j 36
002128  1716be01  or r12, r28, r27
00212c  938b7905  setlt.u r23, r19, r23
002130  3be00b00  bneq r23, zero, 24
002134  1b460e01  srli r12, r28, 16
002138  1b061600  andi r12, r12, 1
00213c  0b16ce10  add.s r12, r28, r12
002140  0b160611  add.s r12, r12, r16
002144  1706a600  and r12, r12, r10
002148  138b6905  setlt.u r22, r19, r22
00214c  37600b00  beq r22, zero, 24
002150  9384a905  setlt.u r9, r19, r26
002154  b7b00400  beq r9, zero, 44
002158  93841905  setlt.u r9, r19, r17
00215c  bbbc04fe  bneq r9, zero, -212
002160  db070000  j 60
002164  1bc40401  srli r8, r9, 16
002168  1b041400  andi r8, r8, 1
00216c  0b948410  add.s r8, r9, r8
002170  0b140411  add.s r8, r8, r16
002174  1704a400  and r8, r8, r10
002178  9384a905  setlt.u r9, r19, r26
00217c  3bff04fe  bneq r9, zero, -36
002180  9bc40a01  srli r9, r21, 16
002184  9b841400  andi r9, r9, 1
002188  8b949a10  add.s r9, r21, r9
00218c  8b940411  add.s r9, r9, r16
002190  178aa400  and r20, r9, r10
002194  93841905  setlt.u r9, r19, r17
002198  bbcb04fe  bneq r9, zero, -272
00219c  1b420101  srli r4, r2, 16
0021a0  1b021200  andi r4, r4, 1
0021a4  0b114110  add.s r2, r2, r4
0021a8  0b110111  add.s r2, r2, r16
0021ac  1702a100  and r4, r2, r10
0021b0  5bdbffff  j -296
0021b4  00200100  mfence { sm }
0021b8  80380002  core_id r17
0021bc  6b538ffa  load.d r[7:8], -88(r30)
0021c0  9f500000  addli r1, zero, 5
0021c4  3b8218fc  bneq r17, r1, -1920
0021c8  9f005000  addli r1, zero, 40
0021cc  3d000000  xfence
0021d0  00a00300  mfence { lm, sm, gm }
0021d4  33830028  zext_int2long r[7:8], r1
0021d8  5b030000  j 24
0021dc  eb508ffd  load.d r[2:3], -40(r30)
0021e0  6b538fff  load.d r[7:8], -8(r30)
0021e4  93201304  setlt.ul r1, r[7:8], r[2:3]
0021e8  27130300  addli.d r[7:8], r[7:8], 1
0021ec  37950000  beq r1, zero, 324
0021f0  9f700000  addli r1, zero, 7
0021f4  330c0028  zext_int2long r[25:26], zero
0021f8  733c6ffe  store.d r[7:8], -8(r30)
0021fc  173b1302  sll.d r[23:24], r[7:8], r1
002200  db040000  j 36
002204  274c0c00  addli.d r[25:26], r[25:26], 4
002208  8b901510  add.s r1, r11, r1
00220c  1321dc02  setneq.d r2, r[25:26], r[14:15]
002210  73e64000  stores.w r4, 12(r1)
002214  73e44001  stores.w r20, 8(r1)
002218  73e28000  stores.w r8, 4(r1)
00221c  73e0c000  stores.w r12, 0(r1)
002220  b77e01fe  beq r2, zero, -68
002224  8b206c11  add.ul r[2:3], r[25:26], r[23:24]
002228  9bb02000  slli r1, r1, 2
00222c  0b921210  add.s r4, r5, r1
002230  6f41c200  loads.w r2, 12(r4)
002234  6f4e0200  loads.w r28, 0(r4)
002238  ef444200  loads.w r9, 4(r4)
00223c  ef4a8200  loads.w r21, 8(r4)
002240  9708f100  and r17, r2, r15
002244  13021905  setlt.u r4, r18, r17
002248  3b300200  bneq r4, zero, 12
00224c  1f020100  addli r4, r2, 0
002250  5b010000  j 8
002254  1712b101  or r4, r2, r27
002258  178dfa00  and r26, r21, r15
00225c  1303a905  setlt.u r6, r18, r26
002260  3b300300  bneq r6, zero, 12
002264  1f8a0a00  addli r20, r21, 0
002268  5b010000  j 8
00226c  179aba01  or r20, r21, r27
002270  1783f400  and r6, r9, r15
002274  93036904  setlt.u r7, r18, r6
002278  3bb00300  bneq r7, zero, 12
00227c  1f840400  addli r8, r9, 0
002280  5b010000  j 8
002284  1794b401  or r8, r9, r27
002288  9703fe00  and r7, r28, r15
00228c  13067904  setlt.u r12, r18, r7
002290  3b500600  bneq r12, zero, 20
002294  1f060e00  addli r12, r28, 0
002298  93837904  setlt.u r7, r19, r7
00229c  37d00300  beq r7, zero, 20
0022a0  db040000  j 36
0022a4  1716be01  or r12, r28, r27
0022a8  93837904  setlt.u r7, r19, r7
0022ac  3be00300  bneq r7, zero, 24
0022b0  9b430e01  srli r7, r28, 16
0022b4  9b831300  andi r7, r7, 1
0022b8  8b137e10  add.s r7, r28, r7
0022bc  8b930311  add.s r7, r7, r16
0022c0  1786a300  and r12, r7, r10
0022c4  13836904  setlt.u r6, r19, r6
0022c8  37600300  beq r6, zero, 24
0022cc  1383a905  setlt.u r6, r19, r26
0022d0  b7300300  beq r6, zero, 44
0022d4  13831905  setlt.u r6, r19, r17
0022d8  bb3c03fe  bneq r6, zero, -212
0022dc  db070000  j 60
0022e0  1bc30401  srli r6, r9, 16
0022e4  1b031300  andi r6, r6, 1
0022e8  0b936410  add.s r6, r9, r6
0022ec  0b130311  add.s r6, r6, r16
0022f0  1704a300  and r8, r6, r10
0022f4  1383a905  setlt.u r6, r19, r26
0022f8  3b7f03fe  bneq r6, zero, -36
0022fc  1bc30a01  srli r6, r21, 16
002300  1b031300  andi r6, r6, 1
002304  0b936a10  add.s r6, r21, r6
002308  0b130311  add.s r6, r6, r16
00230c  170aa300  and r20, r6, r10
002310  13831905  setlt.u r6, r19, r17
002314  bb4b03fe  bneq r6, zero, -272
002318  1b420101  srli r4, r2, 16
00231c  1b021200  andi r4, r4, 1
002320  0b114110  add.s r2, r2, r4
002324  0b110111  add.s r2, r2, r16
002328  1702a100  and r4, r2, r10
00232c  5bdbffff  j -296
002330  00200100  mfence { sm }
002334  80380002  core_id r17
002338  6b538ffa  load.d r[7:8], -88(r30)
00233c  9f600000  addli r1, zero, 6
002340  3bbc18fa  bneq r17, r1, -2292
002344  9f006000  addli r1, zero, 48
002348  3d000000  xfence
00234c  00a00300  mfence { lm, sm, gm }
002350  33830028  zext_int2long r[7:8], r1
002354  5b030000  j 24
002358  eb500ffd  load.d r[2:3], -48(r30)
00235c  6b538fff  load.d r[7:8], -8(r30)
002360  93201304  setlt.ul r1, r[7:8], r[2:3]
002364  27130300  addli.d r[7:8], r[7:8], 1
002368  37950000  beq r1, zero, 324
00236c  9f700000  addli r1, zero, 7
002370  733c6ffe  store.d r[7:8], -8(r30)
002374  330b0028  zext_int2long r[23:24], zero
002378  17331302  sll.d r[7:8], r[7:8], r1
00237c  db040000  j 36
002380  274b0b00  addli.d r[23:24], r[23:24], 4
002384  0b911511  add.s r2, r11, r17
002388  9320db02  setneq.d r1, r[23:24], r[14:15]
00238c  73664100  stores.w r4, 12(r2)
002390  73644101  stores.w r20, 8(r2)
002394  73628100  stores.w r8, 4(r2)
002398  7360c100  stores.w r12, 0(r2)
00239c  b7fe00fe  beq r1, zero, -68
0023a0  8b206b10  add.ul r[2:3], r[23:24], r[7:8]
0023a4  9bb82000  slli r17, r1, 2
0023a8  8b901211  add.s r1, r5, r17
0023ac  6fccc000  loads.w r24, 12(r1)
0023b0  6fce0000  loads.w r28, 0(r1)
0023b4  efc44000  loads.w r9, 4(r1)
0023b8  efca8000  loads.w r21, 8(r1)
0023bc  970cfc00  and r25, r24, r15
0023c0  93009905  setlt.u r1, r18, r25
0023c4  3bb00000  bneq r1, zero, 12
0023c8  1f020c00  addli r4, r24, 0
0023cc  5b010000  j 8
0023d0  1712bc01  or r4, r24, r27
0023d4  178dfa00  and r26, r21, r15
0023d8  9300a905  setlt.u r1, r18, r26
0023dc  3bb00000  bneq r1, zero, 12
0023e0  1f8a0a00  addli r20, r21, 0
0023e4  5b010000  j 8
0023e8  179aba01  or r20, r21, r27
0023ec  9780f400  and r1, r9, r15
0023f0  13011904  setlt.u r2, r18, r1
0023f4  3b300100  bneq r2, zero, 12
0023f8  1f840400  addli r8, r9, 0
0023fc  5b010000  j 8
002400  1794b401  or r8, r9, r27
002404  1701fe00  and r2, r28, r15
002408  13062904  setlt.u r12, r18, r2
00240c  3b500600  bneq r12, zero, 20
002410  1f060e00  addli r12, r28, 0
002414  13812904  setlt.u r2, r19, r2
002418  37500100  beq r2, zero, 20
00241c  db040000  j 36
002420  1716be01  or r12, r28, r27
002424  13812904  setlt.u r2, r19, r2
002428  3b600100  bneq r2, zero, 24
00242c  1b410e01  srli r2, r28, 16
002430  1b011100  andi r2, r2, 1
002434  0b112e10  add.s r2, r28, r2
002438  0b110111  add.s r2, r2, r16
00243c  1706a100  and r12, r2, r10
002440  93801904  setlt.u r1, r19, r1
002444  37e00000  beq r1, zero, 24
002448  9380a905  setlt.u r1, r19, r26
00244c  b7b00000  beq r1, zero, 44
002450  93809905  setlt.u r1, r19, r25
002454  bbbc00fe  bneq r1, zero, -212
002458  db070000  j 60
00245c  9bc00401  srli r1, r9, 16
002460  9b801000  andi r1, r1, 1
002464  8b901410  add.s r1, r9, r1
002468  8b900011  add.s r1, r1, r16
00246c  1784a000  and r8, r1, r10
002470  9380a905  setlt.u r1, r19, r26
002474  3bff00fe  bneq r1, zero, -36
002478  9bc00a01  srli r1, r21, 16
00247c  9b801000  andi r1, r1, 1
002480  8b901a10  add.s r1, r21, r1
002484  8b900011  add.s r1, r1, r16
002488  178aa000  and r20, r1, r10
00248c  93809905  setlt.u r1, r19, r25
002490  bbcb00fe  bneq r1, zero, -272
002494  9b400c01  srli r1, r24, 16
002498  9b801000  andi r1, r1, 1
00249c  8b101c10  add.s r1, r24, r1
0024a0  8b900011  add.s r1, r1, r16
0024a4  1782a000  and r4, r1, r10
0024a8  5bdbffff  j -296
0024ac  00200100  mfence { sm }
0024b0  80380002  core_id r17
0024b4  6b538ffa  load.d r[7:8], -88(r30)
0024b8  e3004fff  loadli.w r1,  -96(r30)
0024bc  b7e50000  beq r1, zero, 376
0024c0  9f007000  addli r1, zero, 56
0024c4  3d000000  xfence
0024c8  00a00300  mfence { lm, sm, gm }
0024cc  33830028  zext_int2long r[7:8], r1
0024d0  5b030000  j 24
0024d4  eb508ffc  load.d r[2:3], -56(r30)
0024d8  6b538fff  load.d r[7:8], -8(r30)
0024dc  93201304  setlt.ul r1, r[7:8], r[2:3]
0024e0  27130300  addli.d r[7:8], r[7:8], 1
0024e4  37950000  beq r1, zero, 324
0024e8  9f700000  addli r1, zero, 7
0024ec  733c6ffe  store.d r[7:8], -8(r30)
0024f0  330a0028  zext_int2long r[21:22], zero
0024f4  17331302  sll.d r[7:8], r[7:8], r1
0024f8  db040000  j 36
0024fc  274a0a00  addli.d r[21:22], r[21:22], 4
002500  0b911511  add.s r2, r11, r17
002504  9320da02  setneq.d r1, r[21:22], r[14:15]
002508  73664100  stores.w r4, 12(r2)
00250c  73648101  stores.w r24, 8(r2)
002510  73628100  stores.w r8, 4(r2)
002514  7360c100  stores.w r12, 0(r2)
002518  b7fe00fe  beq r1, zero, -68
00251c  8b206a10  add.ul r[2:3], r[21:22], r[7:8]
002520  9bb82000  slli r17, r1, 2
002524  8b901211  add.s r1, r5, r17
002528  6fcbc000  loads.w r22, 12(r1)
00252c  6fce0000  loads.w r28, 0(r1)
002530  efc44000  loads.w r9, 4(r1)
002534  efcc8000  loads.w r25, 8(r1)
002538  970bfb00  and r23, r22, r15
00253c  93007905  setlt.u r1, r18, r23
002540  3bb00000  bneq r1, zero, 12
002544  1f020b00  addli r4, r22, 0
002548  5b010000  j 8
00254c  1712bb01  or r4, r22, r27
002550  178dfc00  and r26, r25, r15
002554  9300a905  setlt.u r1, r18, r26
002558  3bb00000  bneq r1, zero, 12
00255c  1f8c0c00  addli r24, r25, 0
002560  5b010000  j 8
002564  179cbc01  or r24, r25, r27
002568  9780f400  and r1, r9, r15
00256c  13011904  setlt.u r2, r18, r1
002570  3b300100  bneq r2, zero, 12
002574  1f840400  addli r8, r9, 0
002578  5b010000  j 8
00257c  1794b401  or r8, r9, r27
002580  1701fe00  and r2, r28, r15
002584  13062904  setlt.u r12, r18, r2
002588  3b500600  bneq r12, zero, 20
00258c  1f060e00  addli r12, r28, 0
002590  13812904  setlt.u r2, r19, r2
002594  37500100  beq r2, zero, 20
002598  db040000  j 36
00259c  1716be01  or r12, r28, r27
0025a0  13812904  setlt.u r2, r19, r2
0025a4  3b600100  bneq r2, zero, 24
0025a8  1b410e01  srli r2, r28, 16
0025ac  1b011100  andi r2, r2, 1
0025b0  0b112e10  add.s r2, r28, r2
0025b4  0b110111  add.s r2, r2, r16
0025b8  1706a100  and r12, r2, r10
0025bc  93801904  setlt.u r1, r19, r1
0025c0  37e00000  beq r1, zero, 24
0025c4  9380a905  setlt.u r1, r19, r26
0025c8  b7b00000  beq r1, zero, 44
0025cc  93807905  setlt.u r1, r19, r23
0025d0  bbbc00fe  bneq r1, zero, -212
0025d4  db070000  j 60
0025d8  9bc00401  srli r1, r9, 16
0025dc  9b801000  andi r1, r1, 1
0025e0  8b901410  add.s r1, r9, r1
0025e4  8b900011  add.s r1, r1, r16
0025e8  1784a000  and r8, r1, r10
0025ec  9380a905  setlt.u r1, r19, r26
0025f0  3bff00fe  bneq r1, zero, -36
0025f4  9bc00c01  srli r1, r25, 16
0025f8  9b801000  andi r1, r1, 1
0025fc  8b901c10  add.s r1, r25, r1
002600  8b900011  add.s r1, r1, r16
002604  178ca000  and r24, r1, r10
002608  93807905  setlt.u r1, r19, r23
00260c  bbcb00fe  bneq r1, zero, -272
002610  9b400b01  srli r1, r22, 16
002614  9b801000  andi r1, r1, 1
002618  8b101b10  add.s r1, r22, r1
00261c  8b900011  add.s r1, r1, r16
002620  1782a000  and r4, r1, r10
002624  5bdbffff  j -296
002628  00200100  mfence { sm }
00262c  80380002  core_id r17
002630  6b538ffa  load.d r[7:8], -88(r30)
002634  9f70f001  addli r1, zero, 255
002638  9f360000  addli r13, zero, 3
00263c  80a20004  csr_set csr5, r1
002640  00e00200  sync_core
002644  37cfd8ec  beq r17, r13, -9264
002648  1f770000  addli r14, zero, 7
00264c  3bff08ec  bneq r17, zero, -9252
002650  e340effe  loadli.w r1,  -140(r30)
002654  1f142000  addli r8, zero, 17
002658  9f252000  addli r11, zero, 18
00265c  1f068000  addli r12, zero, 64
002660  9bb06000  slli r1, r1, 6
002664  b3900028  sext_int2long r[2:3], r1
002668  0bb26040  min.sl r[5:6], r[2:3], r[7:8]
00266c  6b530ff8  load.d r[7:8], -128(r30)
002670  7d100400  xwait r8, 0
002674  6b548f01  load.d r[9:10], 24(r30)
002678  27028200  addli.d r[5:6], r[5:6], 64
00267c  1733b302  sll.d r[7:8], r[7:8], r11
002680  0b321248  max.sl r[5:6], r[5:6], r[2:3]
002684  0b236410  add.ul r[7:8], r[9:10], r[7:8]
002688  1f540000  addli r8, zero, 5
00268c  9f140000  addli r9, zero, 1
002690  8b301218  sub.sl r[2:3], r[5:6], r[2:3]
002694  33020628  zext_int2long r[5:6], r12
002698  1d000400  lock zero, r8
00269c  6b5a8ff7  load.d r[21:22], -136(r30)
0026a0  95840400  dma_cfg r9, r9, zero, 0
0026a4  8bb04040  min.sl r[2:3], r[2:3], r[5:6]
0026a8  2bc20300  lui r4, 60
0026ac  9f020001  addli r5, zero, 128
0026b0  15800402  dma_cfg zero, r9, zero, 1
0026b4  1b120204  ori r4, r4, 64
0026b8  0b234311  add.ul r[7:8], r[7:8], r[21:22]
0026bc  8b914110  add.s r3, r3, r4
0026c0  95030004  dma_cfg r7, zero, zero, 2
0026c4  6b5a8ff8  load.d r[21:22], -120(r30)
0026c8  1583c106  dma_cfg r6, r3, r12, 3
0026cc  1f723a00  addli r4, r20, 31
0026d0  9b415200  srli r3, r4, 5
0026d4  1b321a00  slli r4, r20, 1
0026d8  15863208  dma_cfg r12, r5, r3, 4
0026dc  9b01e203  andi r3, r4, 62
0026e0  1f020004  addli r4, zero, 512
0026e4  9f020020  addli r5, zero, 4096
0026e8  9502120a  dma_cfg r5, r4, r1, 5
0026ec  15003010  dma_cfg zero, zero, r3, 8
0026f0  35000000  dma_run zero
0026f4  1500900a  dma_cfg zero, zero, r9, 5
0026f8  15000010  dma_cfg zero, zero, zero, 8
0026fc  1d100400  unlock r8
002700  7d800500  xsignal r11, 0
002704  db64fbff  j -9436
002708  e7490ffe  storeli.w zero, -100(r30)
00270c  670a0ffe  storeli.w zero, -96(r30)
002710  37abd8f0  beq r17, r13, -7480
002714  db5afcff  j -7468
002718  7d000000  xsignal zero, 0
00271c  bbe00800  bneq r17, zero, 56
002720  9f200000  addli r1, zero, 2
002724  7d100000  xwait zero, 0
002728  7d100000  xwait zero, 0
00272c  7d100000  xwait zero, 0
002730  7d100000  xwait zero, 0
002734  7d100000  xwait zero, 0
002738  7d100000  xwait zero, 0
00273c  7d100000  xwait zero, 0
002740  7d100000  xwait zero, 0
002744  1d800000  lock zero, r1
002748  0d000020  ew_cfg zero, zero, zero, 16
00274c  1d900000  unlock r1
002750  7d400000  xsignal_mode_cfg zero
002754  9f8e5e01  addli sp, sp, 168
002758  00a00300  mfence { lm, sm, gm }
00275c  00100000  exit
002760  00100000  exit
002764  00100000  exit
002768  00100000  exit
00276c  00100000  exit
002770  00100000  exit
002774  00100000  exit
002778  00100000  exit
00277c  00100000  exit
002780  00100000  exit
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
