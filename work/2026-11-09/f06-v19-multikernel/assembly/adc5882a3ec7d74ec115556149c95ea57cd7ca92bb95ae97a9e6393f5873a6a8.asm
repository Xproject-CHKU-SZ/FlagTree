; SHA-256 adc5882a3ec7d74ec115556149c95ea57cd7ca92bb95ae97a9e6393f5873a6a8
; P800 SDNN · XTDK LLVM 19 · 2662 / 2662 words decoded
; bound names: triton_unk_fused_0
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
0000b4  9f8e6efe  addli sp, sp, -208
0000b8  9f100000  addli r1, zero, 1
0000bc  00310002  core_id r2
0000c0  00350002  core_id r10
0000c4  1f8f2e01  addli r30, sp, 144
0000c8  7dc00000  xsignal_mode_cfg r1
0000cc  37600100  beq r2, zero, 24
0000d0  abf0ffff  lui r1, 1048575
0000d4  9b90f0ff  ori r1, r1, 4095
0000d8  80a10004  csr_set csr3, r1
0000dc  00d00100  sync_group
0000e0  5b1d0000  j 232
0000e4  1f210000  addli r2, zero, 2
0000e8  fdd00000  uni_sram_cfg r1, r1
0000ec  abf1ffff  lui r3, 1048575
0000f0  1d000100  lock zero, r2
0000f4  8d000020  ew_cfg r1, zero, zero, 16
0000f8  9b90f1ff  ori r1, r3, 4095
0000fc  1d100100  unlock r2
000100  1f510000  addli r2, zero, 5
000104  80a10004  csr_set csr3, r1
000108  9f301000  addli r1, zero, 11
00010c  00d00100  sync_group
000110  7d800000  xsignal r1, 0
000114  7d800000  xsignal r1, 0
000118  7d800000  xsignal r1, 0
00011c  7d800000  xsignal r1, 0
000120  7d800000  xsignal r1, 0
000124  7d000100  xsignal r2, 0
000128  7d000100  xsignal r2, 0
00012c  7d000100  xsignal r2, 0
000130  7d000100  xsignal r2, 0
000134  7d000100  xsignal r2, 0
000138  9f300000  addli r1, zero, 3
00013c  1f111000  addli r2, zero, 9
000140  7d800000  xsignal r1, 0
000144  7d800000  xsignal r1, 0
000148  7d800000  xsignal r1, 0
00014c  7d800000  xsignal r1, 0
000150  7d800000  xsignal r1, 0
000154  7d000100  xsignal r2, 0
000158  7d000100  xsignal r2, 0
00015c  7d000100  xsignal r2, 0
000160  7d000100  xsignal r2, 0
000164  7d000100  xsignal r2, 0
000168  9f700000  addli r1, zero, 7
00016c  1f312000  addli r2, zero, 19
000170  7d800000  xsignal r1, 0
000174  7d800000  xsignal r1, 0
000178  7d800000  xsignal r1, 0
00017c  7d800000  xsignal r1, 0
000180  7d800000  xsignal r1, 0
000184  7d000100  xsignal r2, 0
000188  7d000100  xsignal r2, 0
00018c  7d000100  xsignal r2, 0
000190  7d000100  xsignal r2, 0
000194  7d000100  xsignal r2, 0
000198  9f002000  addli r1, zero, 16
00019c  1f611000  addli r2, zero, 14
0001a0  7d800000  xsignal r1, 0
0001a4  7d800000  xsignal r1, 0
0001a8  7d800000  xsignal r1, 0
0001ac  7d800000  xsignal r1, 0
0001b0  7d800000  xsignal r1, 0
0001b4  7d000100  xsignal r2, 0
0001b8  7d000100  xsignal r2, 0
0001bc  7d000100  xsignal r2, 0
0001c0  7d000100  xsignal r2, 0
0001c4  7d000100  xsignal r2, 0
0001c8  e3004f00  loadli.w r1,  32(r30)
0001cc  63414f00  loadli.w r2,  36(r30)
0001d0  00d20002  load_param_i r4, 1
0001d4  e3015f00  loadli.w r3,  40(r30)
0001d8  8b101120  mul.s r1, r2, r1
0001dc  1f010200  addli r2, r4, 0
0001e0  0b913050  fmac.s r2, r1, r3
0001e4  8b913020  mul.s r3, r1, r3
0001e8  1f71f1ff  addli r2, r2, -1
0001ec  0b114130  div.s r2, r2, r4
0001f0  00520002  load_param_i r4, 0
0001f4  8b104120  mul.s r1, r2, r4
0001f8  0b114150  fmac.s r2, r2, r4
0001fc  0b113140  min.s r2, r2, r3
000200  4b441112  ble.s r2, r1, 9488
000204  33110128  sext_int2long r[3:4], r2
000208  33930028  sext_int2long r[7:8], r1
00020c  abf0ff7f  lui r1, 524287
000210  2bf27f7f  lui r4, 522239
000214  1f068000  addli r12, zero, 64
000218  9f170000  addli r15, zero, 1
00021c  1f780000  addli r16, zero, 7
000220  9f581000  addli r17, zero, 13
000224  1f390000  addli r18, zero, 3
000228  9f4b0000  addli r23, zero, 4
00022c  1f2c0000  addli r24, zero, 2
000230  1f670000  addli r14, zero, 6
000234  2b0b4000  lui r22, 1024
000238  2b0a807f  lui r20, 522240
00023c  ab0affff  lui r21, 1048560
000240  9f050000  addli r11, zero, 0
000244  73382ff6  store.d r[3:4], -144(r30)
000248  2b710000  lui r2, 7
00024c  9b90f0ff  ori r1, r1, 4095
000250  9b16f2ff  ori r13, r4, 4095
000254  9b11f1ff  ori r3, r2, 4095
000258  5b0a0000  j 80
00025c  1f611000  addli r2, zero, 14
000260  00350002  core_id r10
000264  1f068000  addli r12, zero, 64
000268  9f170000  addli r15, zero, 1
00026c  1f780000  addli r16, zero, 7
000270  9f581000  addli r17, zero, 13
000274  9f4b0000  addli r23, zero, 4
000278  1f2c0000  addli r24, zero, 2
00027c  7d000100  xsignal r2, 0
000280  1f112000  addli r2, zero, 17
000284  7d000100  xsignal r2, 0
000288  6b538ff9  load.d r[7:8], -104(r30)
00028c  6b520ff7  load.d r[5:6], -144(r30)
000290  e3054fff  loadli.w r11,  -96(r30)
000294  1f670000  addli r14, zero, 6
000298  27130300  addli.d r[7:8], r[7:8], 1
00029c  9f950500  addli r11, r11, 1
0002a0  13314304  setlt.sl r2, r[7:8], r[5:6]
0002a4  b7310112  beq r2, zero, 9324
0002a8  63015f00  loadli.w r2,  40(r30)
0002ac  63424f00  loadli.w r4,  36(r30)
0002b0  733c6ff8  store.d r[7:8], -104(r30)
0002b4  1f540000  addli r8, zero, 5
0002b8  670abffe  storeli.w r11, -96(r30)
0002bc  0b948538  mod.s r8, r11, r8
0002c0  0b112330  div.s r2, r6, r2
0002c4  9f031000  addli r7, zero, 8
0002c8  670b8ffe  storeli.w r8, -80(r30)
0002cc  8b124130  div.s r5, r2, r4
0002d0  0b93c230  div.s r6, r5, r12
0002d4  1b313300  slli r2, r6, 3
0002d8  0b922718  sub.s r4, r15, r2
0002dc  8b137240  min.s r7, r4, r7
0002e0  0b927238  mod.s r4, r5, r7
0002e4  0b112210  add.s r2, r4, r2
0002e8  1b32e400  slli r4, r8, 14
0002ec  b3040128  zext_int2long r[10:11], r2
0002f0  e7472ffe  storeli.w r2, -132(r30)
0002f4  2b810200  lui r2, 40
0002f8  0b142210  add.s r8, r4, r2
0002fc  00310002  core_id r2
000300  73309ff8  store.d r[10:11], -128(r30)
000304  3b3af100  bneq r2, r15, 652
000308  eb5c0f00  load.d r[26:27], 0(r30)
00030c  97b41403  sll.d r[10:11], r[10:11], r17
000310  7d100900  xwait r18, 0
000314  8ba49c10  add.ul r[10:11], r[26:27], r[10:11]
000318  3ff4bb00  blt.s r23, r11, 284
00031c  1f510000  addli r2, zero, 5
000320  9f051000  addli r11, zero, 8
000324  1d000100  lock zero, r2
000328  15000014  dma_cfg zero, zero, zero, 10
00032c  1500f014  dma_cfg zero, zero, r15, 10
000330  15008015  dma_cfg zero, zero, r24, 10
000334  15002015  dma_cfg zero, zero, r18, 10
000338  15007015  dma_cfg zero, zero, r23, 10
00033c  15002014  dma_cfg zero, zero, r2, 10
000340  1500e014  dma_cfg zero, zero, r14, 10
000344  15000015  dma_cfg zero, zero, r16, 10
000348  1500b014  dma_cfg zero, zero, r11, 10
00034c  9f151000  addli r11, zero, 9
000350  1500b014  dma_cfg zero, zero, r11, 10
000354  9f251000  addli r11, zero, 10
000358  1500b014  dma_cfg zero, zero, r11, 10
00035c  9f351000  addli r11, zero, 11
000360  1500b014  dma_cfg zero, zero, r11, 10
000364  9f451000  addli r11, zero, 12
000368  1500b014  dma_cfg zero, zero, r11, 10
00036c  9f651000  addli r11, zero, 14
000370  15001015  dma_cfg zero, zero, r17, 10
000374  1500b014  dma_cfg zero, zero, r11, 10
000378  9f751000  addli r11, zero, 15
00037c  1500b014  dma_cfg zero, zero, r11, 10
000380  9f052000  addli r11, zero, 16
000384  1500b014  dma_cfg zero, zero, r11, 10
000388  9f152000  addli r11, zero, 17
00038c  1500b014  dma_cfg zero, zero, r11, 10
000390  9f252000  addli r11, zero, 18
000394  1500b014  dma_cfg zero, zero, r11, 10
000398  9f352000  addli r11, zero, 19
00039c  1500b014  dma_cfg zero, zero, r11, 10
0003a0  9f452000  addli r11, zero, 20
0003a4  1500b014  dma_cfg zero, zero, r11, 10
0003a8  9f552000  addli r11, zero, 21
0003ac  1500b014  dma_cfg zero, zero, r11, 10
0003b0  9f652000  addli r11, zero, 22
0003b4  1500b014  dma_cfg zero, zero, r11, 10
0003b8  9f752000  addli r11, zero, 23
0003bc  1500b014  dma_cfg zero, zero, r11, 10
0003c0  9f053000  addli r11, zero, 24
0003c4  1500b014  dma_cfg zero, zero, r11, 10
0003c8  9f153000  addli r11, zero, 25
0003cc  1500b014  dma_cfg zero, zero, r11, 10
0003d0  9f253000  addli r11, zero, 26
0003d4  1500b014  dma_cfg zero, zero, r11, 10
0003d8  9f353000  addli r11, zero, 27
0003dc  1500b014  dma_cfg zero, zero, r11, 10
0003e0  9f453000  addli r11, zero, 28
0003e4  1500b014  dma_cfg zero, zero, r11, 10
0003e8  9f553000  addli r11, zero, 29
0003ec  1500b014  dma_cfg zero, zero, r11, 10
0003f0  9f653000  addli r11, zero, 30
0003f4  1500b014  dma_cfg zero, zero, r11, 10
0003f8  9f753000  addli r11, zero, 31
0003fc  1500b014  dma_cfg zero, zero, r11, 10
000400  9f050001  addli r11, zero, 128
000404  95870700  dma_cfg r15, r15, zero, 0
000408  95070002  dma_cfg r15, zero, zero, 1
00040c  15000004  dma_cfg zero, zero, zero, 2
000410  1504c006  dma_cfg r8, zero, r12, 3
000414  95058009  dma_cfg r11, zero, r24, 4
000418  9f050002  addli r11, zero, 256
00041c  9505c00a  dma_cfg r11, zero, r12, 5
000420  15000010  dma_cfg zero, zero, zero, 8
000424  35000000  dma_run zero
000428  1500f00a  dma_cfg zero, zero, r15, 5
00042c  15000010  dma_cfg zero, zero, zero, 8
000430  1d100100  unlock r2
000434  2b810200  lui r2, 40
000438  674a0ffe  storeli.w zero, -92(r30)
00043c  9f050002  addli r11, zero, 256
000440  1d800b00  lock zero, r23
000444  1b110104  ori r2, r2, 64
000448  95870700  dma_cfg r15, r15, zero, 0
00044c  15000504  dma_cfg zero, r10, zero, 2
000450  0b112210  add.s r2, r4, r2
000454  1581c406  dma_cfg r2, r9, r12, 3
000458  1f050001  addli r10, zero, 128
00045c  1f510000  addli r2, zero, 5
000460  9f041000  addli r9, zero, 8
000464  15058609  dma_cfg r10, r12, r24, 4
000468  9505c50a  dma_cfg r11, r10, r12, 5
00046c  15000010  dma_cfg zero, zero, zero, 8
000470  35000000  dma_run zero
000474  1500f00a  dma_cfg zero, zero, r15, 5
000478  15000010  dma_cfg zero, zero, zero, 8
00047c  1d900b00  unlock r23
000480  1d000100  lock zero, r2
000484  15000014  dma_cfg zero, zero, zero, 10
000488  1500f014  dma_cfg zero, zero, r15, 10
00048c  15008015  dma_cfg zero, zero, r24, 10
000490  15002015  dma_cfg zero, zero, r18, 10
000494  15007015  dma_cfg zero, zero, r23, 10
000498  15002014  dma_cfg zero, zero, r2, 10
00049c  1500e014  dma_cfg zero, zero, r14, 10
0004a0  15000015  dma_cfg zero, zero, r16, 10
0004a4  15009014  dma_cfg zero, zero, r9, 10
0004a8  9f141000  addli r9, zero, 9
0004ac  15009014  dma_cfg zero, zero, r9, 10
0004b0  9f241000  addli r9, zero, 10
0004b4  15009014  dma_cfg zero, zero, r9, 10
0004b8  9f341000  addli r9, zero, 11
0004bc  15009014  dma_cfg zero, zero, r9, 10
0004c0  9f441000  addli r9, zero, 12
0004c4  15009014  dma_cfg zero, zero, r9, 10
0004c8  9f641000  addli r9, zero, 14
0004cc  15001015  dma_cfg zero, zero, r17, 10
0004d0  15009014  dma_cfg zero, zero, r9, 10
0004d4  9f741000  addli r9, zero, 15
0004d8  15009014  dma_cfg zero, zero, r9, 10
0004dc  9f042000  addli r9, zero, 16
0004e0  15009014  dma_cfg zero, zero, r9, 10
0004e4  9f142000  addli r9, zero, 17
0004e8  15009014  dma_cfg zero, zero, r9, 10
0004ec  9f242000  addli r9, zero, 18
0004f0  15009014  dma_cfg zero, zero, r9, 10
0004f4  9f342000  addli r9, zero, 19
0004f8  15009014  dma_cfg zero, zero, r9, 10
0004fc  9f442000  addli r9, zero, 20
000500  15009014  dma_cfg zero, zero, r9, 10
000504  9f542000  addli r9, zero, 21
000508  15009014  dma_cfg zero, zero, r9, 10
00050c  9f642000  addli r9, zero, 22
000510  15009014  dma_cfg zero, zero, r9, 10
000514  9f742000  addli r9, zero, 23
000518  15009014  dma_cfg zero, zero, r9, 10
00051c  9f043000  addli r9, zero, 24
000520  15009014  dma_cfg zero, zero, r9, 10
000524  9f143000  addli r9, zero, 25
000528  15009014  dma_cfg zero, zero, r9, 10
00052c  9f243000  addli r9, zero, 26
000530  15009014  dma_cfg zero, zero, r9, 10
000534  9f343000  addli r9, zero, 27
000538  15009014  dma_cfg zero, zero, r9, 10
00053c  9f443000  addli r9, zero, 28
000540  15009014  dma_cfg zero, zero, r9, 10
000544  9f543000  addli r9, zero, 29
000548  15009014  dma_cfg zero, zero, r9, 10
00054c  9f643000  addli r9, zero, 30
000550  15009014  dma_cfg zero, zero, r9, 10
000554  9f743000  addli r9, zero, 31
000558  15009014  dma_cfg zero, zero, r9, 10
00055c  95870700  dma_cfg r15, r15, zero, 0
000560  95070002  dma_cfg r15, zero, zero, 1
000564  15000004  dma_cfg zero, zero, zero, 2
000568  1504c006  dma_cfg r8, zero, r12, 3
00056c  15058009  dma_cfg r10, zero, r24, 4
000570  9505c00a  dma_cfg r11, zero, r12, 5
000574  15000010  dma_cfg zero, zero, zero, 8
000578  35000000  dma_run zero
00057c  1500f00a  dma_cfg zero, zero, r15, 5
000580  15000010  dma_cfg zero, zero, zero, 8
000584  1d100100  unlock r2
000588  7d000c00  xsignal r24, 0
00058c  5b090000  j 72
000590  3b018101  bneq r2, r24, 64
000594  1f510000  addli r2, zero, 5
000598  7d100c00  xwait r24, 0
00059c  7d100100  xwait r2, 0
0005a0  1d000000  lock zero, zero
0005a4  1f110000  addli r2, zero, 1
0005a8  010c0000  ds_cfg r24, zero, 0
0005ac  01060002  ds_cfg r12, zero, 1
0005b0  0106001c  ds_cfg r12, zero, 14
0005b4  0106001a  ds_cfg r12, zero, 13
0005b8  2112c402  shuffle_batch r4, r8, r12, 1
0005bc  1d100000  unlock zero
0005c0  7d000900  xsignal r18, 0
0005c4  674a2ffe  storeli.w r2, -92(r30)
0005c8  7d800b00  xsignal r23, 0
0005cc  5b010000  j 8
0005d0  674a0ffe  storeli.w zero, -92(r30)
0005d4  1b316300  slli r2, r6, 6
0005d8  1f640000  addli r8, zero, 6
0005dc  0b912218  sub.s r2, r5, r2
0005e0  0b117130  div.s r2, r2, r7
0005e4  b3020128  zext_int2long r[6:7], r2
0005e8  67092ffe  storeli.w r2, -112(r30)
0005ec  63016fff  loadli.w r2,  -80(r30)
0005f0  17b30203  sll.d r[7:8], r[6:7], r16
0005f4  1b37f100  slli r14, r2, 15
0005f8  2bc10300  lui r2, 60
0005fc  9734f302  sll.d r[10:11], r[7:8], r15
000600  00330002  core_id r6
000604  8b122710  add.s r5, r14, r2
000608  73349ff8  store.d r[10:11], -120(r30)
00060c  3b7a8300  bneq r6, r8, 668
000610  6b538f00  load.d r[7:8], 8(r30)
000614  7d100800  xwait r16, 0
000618  63014fff  loadli.w r2,  -96(r30)
00061c  0b239310  add.ul r[7:8], r[7:8], r[10:11]
000620  bf842b00  blt.s r23, r2, 288
000624  1f510000  addli r2, zero, 5
000628  1f620000  addli r4, zero, 6
00062c  1d000100  lock zero, r2
000630  15000014  dma_cfg zero, zero, zero, 10
000634  1500f014  dma_cfg zero, zero, r15, 10
000638  15008015  dma_cfg zero, zero, r24, 10
00063c  15002015  dma_cfg zero, zero, r18, 10
000640  15007015  dma_cfg zero, zero, r23, 10
000644  15002014  dma_cfg zero, zero, r2, 10
000648  15004014  dma_cfg zero, zero, r4, 10
00064c  1f021000  addli r4, zero, 8
000650  15000015  dma_cfg zero, zero, r16, 10
000654  15004014  dma_cfg zero, zero, r4, 10
000658  1f121000  addli r4, zero, 9
00065c  15004014  dma_cfg zero, zero, r4, 10
000660  1f221000  addli r4, zero, 10
000664  15004014  dma_cfg zero, zero, r4, 10
000668  1f321000  addli r4, zero, 11
00066c  15004014  dma_cfg zero, zero, r4, 10
000670  1f421000  addli r4, zero, 12
000674  15004014  dma_cfg zero, zero, r4, 10
000678  1f621000  addli r4, zero, 14
00067c  15001015  dma_cfg zero, zero, r17, 10
000680  15004014  dma_cfg zero, zero, r4, 10
000684  1f721000  addli r4, zero, 15
000688  15004014  dma_cfg zero, zero, r4, 10
00068c  1f022000  addli r4, zero, 16
000690  15004014  dma_cfg zero, zero, r4, 10
000694  1f122000  addli r4, zero, 17
000698  15004014  dma_cfg zero, zero, r4, 10
00069c  1f222000  addli r4, zero, 18
0006a0  15004014  dma_cfg zero, zero, r4, 10
0006a4  1f322000  addli r4, zero, 19
0006a8  15004014  dma_cfg zero, zero, r4, 10
0006ac  1f422000  addli r4, zero, 20
0006b0  15004014  dma_cfg zero, zero, r4, 10
0006b4  1f522000  addli r4, zero, 21
0006b8  15004014  dma_cfg zero, zero, r4, 10
0006bc  1f622000  addli r4, zero, 22
0006c0  15004014  dma_cfg zero, zero, r4, 10
0006c4  1f722000  addli r4, zero, 23
0006c8  15004014  dma_cfg zero, zero, r4, 10
0006cc  1f023000  addli r4, zero, 24
0006d0  15004014  dma_cfg zero, zero, r4, 10
0006d4  1f123000  addli r4, zero, 25
0006d8  15004014  dma_cfg zero, zero, r4, 10
0006dc  1f223000  addli r4, zero, 26
0006e0  15004014  dma_cfg zero, zero, r4, 10
0006e4  1f323000  addli r4, zero, 27
0006e8  15004014  dma_cfg zero, zero, r4, 10
0006ec  1f423000  addli r4, zero, 28
0006f0  15004014  dma_cfg zero, zero, r4, 10
0006f4  1f523000  addli r4, zero, 29
0006f8  15004014  dma_cfg zero, zero, r4, 10
0006fc  1f623000  addli r4, zero, 30
000700  15004014  dma_cfg zero, zero, r4, 10
000704  1f723000  addli r4, zero, 31
000708  15004014  dma_cfg zero, zero, r4, 10
00070c  1f020001  addli r4, zero, 128
000710  95870700  dma_cfg r15, r15, zero, 0
000714  95070002  dma_cfg r15, zero, zero, 1
000718  15000004  dma_cfg zero, zero, zero, 2
00071c  9502c006  dma_cfg r5, zero, r12, 3
000720  15027009  dma_cfg r4, zero, r23, 4
000724  1f020004  addli r4, zero, 512
000728  1502c00a  dma_cfg r4, zero, r12, 5
00072c  15000010  dma_cfg zero, zero, zero, 8
000730  35000000  dma_run zero
000734  1500f00a  dma_cfg zero, zero, r15, 5
000738  15000010  dma_cfg zero, zero, zero, 8
00073c  1d100100  unlock r2
000740  2bc10300  lui r2, 60
000744  e70a0ffe  storeli.w zero, -88(r30)
000748  e74a0ffe  storeli.w zero, -84(r30)
00074c  1f040004  addli r8, zero, 512
000750  1f021000  addli r4, zero, 8
000754  1d800b00  lock zero, r23
000758  1b110104  ori r2, r2, 64
00075c  95870700  dma_cfg r15, r15, zero, 0
000760  15800304  dma_cfg zero, r7, zero, 2
000764  0b112710  add.s r2, r14, r2
000768  1501c306  dma_cfg r2, r6, r12, 3
00076c  9f030001  addli r7, zero, 128
000770  1f010010  addli r2, zero, 2048
000774  1f630000  addli r6, zero, 6
000778  95037609  dma_cfg r7, r12, r23, 4
00077c  1504c10a  dma_cfg r8, r2, r12, 5
000780  1f510000  addli r2, zero, 5
000784  15000010  dma_cfg zero, zero, zero, 8
000788  35000000  dma_run zero
00078c  1500f00a  dma_cfg zero, zero, r15, 5
000790  15000010  dma_cfg zero, zero, zero, 8
000794  1d900b00  unlock r23
000798  1d000100  lock zero, r2
00079c  15000014  dma_cfg zero, zero, zero, 10
0007a0  1500f014  dma_cfg zero, zero, r15, 10
0007a4  15008015  dma_cfg zero, zero, r24, 10
0007a8  15002015  dma_cfg zero, zero, r18, 10
0007ac  15007015  dma_cfg zero, zero, r23, 10
0007b0  15002014  dma_cfg zero, zero, r2, 10
0007b4  15006014  dma_cfg zero, zero, r6, 10
0007b8  15000015  dma_cfg zero, zero, r16, 10
0007bc  15004014  dma_cfg zero, zero, r4, 10
0007c0  1f121000  addli r4, zero, 9
0007c4  15004014  dma_cfg zero, zero, r4, 10
0007c8  1f221000  addli r4, zero, 10
0007cc  15004014  dma_cfg zero, zero, r4, 10
0007d0  1f321000  addli r4, zero, 11
0007d4  15004014  dma_cfg zero, zero, r4, 10
0007d8  1f421000  addli r4, zero, 12
0007dc  15004014  dma_cfg zero, zero, r4, 10
0007e0  1f621000  addli r4, zero, 14
0007e4  15001015  dma_cfg zero, zero, r17, 10
0007e8  15004014  dma_cfg zero, zero, r4, 10
0007ec  1f721000  addli r4, zero, 15
0007f0  15004014  dma_cfg zero, zero, r4, 10
0007f4  1f022000  addli r4, zero, 16
0007f8  15004014  dma_cfg zero, zero, r4, 10
0007fc  1f122000  addli r4, zero, 17
000800  15004014  dma_cfg zero, zero, r4, 10
000804  1f222000  addli r4, zero, 18
000808  15004014  dma_cfg zero, zero, r4, 10
00080c  1f322000  addli r4, zero, 19
000810  15004014  dma_cfg zero, zero, r4, 10
000814  1f422000  addli r4, zero, 20
000818  15004014  dma_cfg zero, zero, r4, 10
00081c  1f522000  addli r4, zero, 21
000820  15004014  dma_cfg zero, zero, r4, 10
000824  1f622000  addli r4, zero, 22
000828  15004014  dma_cfg zero, zero, r4, 10
00082c  1f722000  addli r4, zero, 23
000830  15004014  dma_cfg zero, zero, r4, 10
000834  1f023000  addli r4, zero, 24
000838  15004014  dma_cfg zero, zero, r4, 10
00083c  1f123000  addli r4, zero, 25
000840  15004014  dma_cfg zero, zero, r4, 10
000844  1f223000  addli r4, zero, 26
000848  15004014  dma_cfg zero, zero, r4, 10
00084c  1f323000  addli r4, zero, 27
000850  15004014  dma_cfg zero, zero, r4, 10
000854  1f423000  addli r4, zero, 28
000858  15004014  dma_cfg zero, zero, r4, 10
00085c  1f523000  addli r4, zero, 29
000860  15004014  dma_cfg zero, zero, r4, 10
000864  1f623000  addli r4, zero, 30
000868  15004014  dma_cfg zero, zero, r4, 10
00086c  1f723000  addli r4, zero, 31
000870  15004014  dma_cfg zero, zero, r4, 10
000874  95870700  dma_cfg r15, r15, zero, 0
000878  95070002  dma_cfg r15, zero, zero, 1
00087c  15000004  dma_cfg zero, zero, zero, 2
000880  9502c006  dma_cfg r5, zero, r12, 3
000884  95037009  dma_cfg r7, zero, r23, 4
000888  1504c00a  dma_cfg r8, zero, r12, 5
00088c  15000010  dma_cfg zero, zero, zero, 8
000890  35000000  dma_run zero
000894  1500f00a  dma_cfg zero, zero, r15, 5
000898  15000010  dma_cfg zero, zero, zero, 8
00089c  1d100100  unlock r2
0008a0  7d000300  xsignal r6, 0
0008a4  5b1b0000  j 216
0008a8  37717301  beq r6, r23, 92
0008ac  3b49030f  bneq r6, r16, 7760
0008b0  1f610000  addli r2, zero, 6
0008b4  e70a0ffe  storeli.w zero, -88(r30)
0008b8  7d100100  xwait r2, 0
0008bc  1f111000  addli r2, zero, 9
0008c0  7d100100  xwait r2, 0
0008c4  1d000000  lock zero, zero
0008c8  1f010001  addli r2, zero, 128
0008cc  010c0000  ds_cfg r24, zero, 0
0008d0  01010002  ds_cfg r2, zero, 1
0008d4  0106001c  ds_cfg r12, zero, 14
0008d8  0101001a  ds_cfg r2, zero, 13
0008dc  1f110000  addli r2, zero, 1
0008e0  4187c204  shuffle_coa r14, r5, r12, 2
0008e4  1d100000  unlock zero
0008e8  7d000800  xsignal r16, 0
0008ec  e74a2ffe  storeli.w r2, -84(r30)
0008f0  1f011000  addli r2, zero, 8
0008f4  7d000100  xsignal r2, 0
0008f8  2b850000  lui r10, 8
0008fc  37322301  beq r6, r18, 140
000900  5b130000  j 152
000904  1f011000  addli r2, zero, 8
000908  7d900b00  xwait r23, 0
00090c  1f030000  addli r6, zero, 0
000910  9f120000  addli r5, zero, 1
000914  9f331000  addli r7, zero, 11
000918  7d100100  xwait r2, 0
00091c  1f110000  addli r2, zero, 1
000920  7d900300  xwait r7, 0
000924  9b33e300  slli r7, r6, 14
000928  1b338300  slli r6, r6, 8
00092c  1d000100  lock zero, r2
000930  0906c600  mm_cfg r12, r12, r12, 0
000934  9793e300  or r7, r7, r14
000938  1713e300  or r6, r6, r14
00093c  898b2b04  mm_cfg r23, r23, r2, 2
000940  29037210  mm r6, r4, r7, 8
000944  9b831200  andi r7, r5, 1
000948  1f130000  addli r6, zero, 1
00094c  9f020000  addli r5, zero, 0
000950  1d100100  unlock r2
000954  3bcf03fe  bneq r7, zero, -48
000958  1f510000  addli r2, zero, 5
00095c  e74a0ffe  storeli.w zero, -84(r30)
000960  7d000100  xsignal r2, 0
000964  1f111000  addli r2, zero, 9
000968  7d000100  xsignal r2, 0
00096c  1f110000  addli r2, zero, 1
000970  e70a2ffe  storeli.w r2, -88(r30)
000974  1f211000  addli r2, zero, 10
000978  7d000100  xsignal r2, 0
00097c  00330002  core_id r6
000980  2b850000  lui r10, 8
000984  3b502301  bneq r6, r18, 20
000988  1f211000  addli r2, zero, 10
00098c  7d100100  xwait r2, 0
000990  1f611000  addli r2, zero, 14
000994  7d100100  xwait r2, 0
000998  2bc10800  lui r2, 140
00099c  3d000000  xfence
0009a0  1f020001  addli r4, zero, 128
0009a4  00a00300  mfence { lm, sm, gm }
0009a8  1b1101a0  ori r2, r2, 2560
0009ac  33020228  zext_int2long r[5:6], r4
0009b0  0b1c2710  add.s r24, r14, r2
0009b4  1f71f001  addli r2, zero, 255
0009b8  80220104  csr_set csr5, r2
0009bc  1f710000  addli r2, zero, 7
0009c0  b3030128  zext_int2long r[8:9], r2
0009c4  733c7ffa  store.d r[8:9], -72(r30)
0009c8  00e00200  sync_core
0009cc  bb650300  bneq r6, zero, 376
0009d0  3d000000  xfence
0009d4  33030028  zext_int2long r[7:8], zero
0009d8  00a00300  mfence { lm, sm, gm }
0009dc  73386ffe  store.d r[7:8], -16(r30)
0009e0  5b030000  j 24
0009e4  6b538ffb  load.d r[7:8], -72(r30)
0009e8  6b548fff  load.d r[9:10], -8(r30)
0009ec  13216404  setlt.ul r2, r[9:10], r[7:8]
0009f0  27130400  addli.d r[7:8], r[9:10], 1
0009f4  37150100  beq r2, zero, 324
0009f8  1f710000  addli r2, zero, 7
0009fc  eb570fff  load.d r[16:17], -16(r30)
000a00  733c6ffe  store.d r[7:8], -8(r30)
000a04  17352302  sll.d r[11:12], r[7:8], r2
000a08  db040000  j 36
000a0c  a7c70700  addli.d r[16:17], r[16:17], 4
000a10  0b141c11  add.s r8, r24, r17
000a14  93a34702  setneq.d r7, r[16:17], r[5:6]
000a18  73662400  stores.w r2, 12(r8)
000a1c  73647401  stores.w r23, 8(r8)
000a20  7362a401  stores.w r26, 4(r8)
000a24  73606400  stores.w r6, 0(r8)
000a28  b7fe03fe  beq r7, zero, -68
000a2c  0ba3a710  add.ul r[7:8], r[16:17], r[11:12]
000a30  9b382300  slli r17, r6, 2
000a34  0b111711  add.s r2, r14, r17
000a38  6f49c100  loads.w r18, 12(r2)
000a3c  6f4e0100  loads.w r28, 0(r2)
000a40  ef4d4100  loads.w r27, 4(r2)
000a44  ef4c8100  loads.w r25, 8(r2)
000a48  97091900  and r19, r18, r1
000a4c  13013a05  setlt.u r2, r20, r19
000a50  3b300100  bneq r2, zero, 12
000a54  1f010900  addli r2, r18, 0
000a58  5b010000  j 8
000a5c  17116901  or r2, r18, r22
000a60  17861c00  and r12, r25, r1
000a64  1303ca04  setlt.u r6, r20, r12
000a68  3b300300  bneq r6, zero, 12
000a6c  9f8b0c00  addli r23, r25, 0
000a70  5b010000  j 8
000a74  979b6c01  or r23, r25, r22
000a78  97831d00  and r7, r27, r1
000a7c  13037a04  setlt.u r6, r20, r7
000a80  3b300300  bneq r6, zero, 12
000a84  1f8d0d00  addli r26, r27, 0
000a88  5b010000  j 8
000a8c  179d6d01  or r26, r27, r22
000a90  17041e00  and r8, r28, r1
000a94  13038a04  setlt.u r6, r20, r8
000a98  3b500300  bneq r6, zero, 20
000a9c  1f030e00  addli r6, r28, 0
000aa0  13848604  setlt.u r8, r13, r8
000aa4  37500400  beq r8, zero, 20
000aa8  db040000  j 36
000aac  17136e01  or r6, r28, r22
000ab0  13848604  setlt.u r8, r13, r8
000ab4  3b600400  bneq r8, zero, 24
000ab8  1b430e01  srli r6, r28, 16
000abc  1b031300  andi r6, r6, 1
000ac0  0b136e10  add.s r6, r28, r6
000ac4  0b133310  add.s r6, r6, r3
000ac8  17035301  and r6, r6, r21
000acc  93837604  setlt.u r7, r13, r7
000ad0  bbb00300  bneq r7, zero, 44
000ad4  9bc30d01  srli r7, r27, 16
000ad8  9b831300  andi r7, r7, 1
000adc  8b937d10  add.s r7, r27, r7
000ae0  8b933310  add.s r7, r7, r3
000ae4  178d5301  and r26, r7, r21
000ae8  9383c604  setlt.u r7, r13, r12
000aec  37e00300  beq r7, zero, 24
000af0  93833605  setlt.u r7, r13, r19
000af4  3bec03fe  bneq r7, zero, -232
000af8  5b050000  j 40
000afc  9383c604  setlt.u r7, r13, r12
000b00  bbcf03fe  bneq r7, zero, -16
000b04  9bc30c01  srli r7, r25, 16
000b08  9b831300  andi r7, r7, 1
000b0c  8b937c10  add.s r7, r25, r7
000b10  8b933310  add.s r7, r7, r3
000b14  978b5301  and r23, r7, r21
000b18  93833605  setlt.u r7, r13, r19
000b1c  bbcb03fe  bneq r7, zero, -272
000b20  1b410901  srli r2, r18, 16
000b24  1b011100  andi r2, r2, 1
000b28  0b112910  add.s r2, r18, r2
000b2c  0b113110  add.s r2, r2, r3
000b30  17015101  and r2, r2, r21
000b34  5bdbffff  j -296
000b38  00330002  core_id r6
000b3c  2b850000  lui r10, 8
000b40  00200100  mfence { sm }
000b44  1f711000  addli r2, zero, 15
000b48  b3030128  zext_int2long r[8:9], r2
000b4c  1f110000  addli r2, zero, 1
000b50  733c7ffe  store.d r[8:9], -8(r30)
000b54  bb652300  bneq r6, r2, 376
000b58  1f011000  addli r2, zero, 8
000b5c  3d000000  xfence
000b60  00a00300  mfence { lm, sm, gm }
000b64  33030128  zext_int2long r[7:8], r2
000b68  5b030000  j 24
000b6c  6b538fff  load.d r[7:8], -8(r30)
000b70  6b540fff  load.d r[9:10], -16(r30)
000b74  13216404  setlt.ul r2, r[9:10], r[7:8]
000b78  27130400  addli.d r[7:8], r[9:10], 1
000b7c  37150100  beq r2, zero, 324
000b80  1f710000  addli r2, zero, 7
000b84  33050028  zext_int2long r[11:12], zero
000b88  73386ffe  store.d r[7:8], -16(r30)
000b8c  17342302  sll.d r[9:10], r[7:8], r2
000b90  db040000  j 36
000b94  27450500  addli.d r[11:12], r[11:12], 4
000b98  8b13fc10  add.s r7, r24, r15
000b9c  13234502  setneq.d r6, r[11:12], r[5:6]
000ba0  73e62300  stores.w r2, 12(r7)
000ba4  73e42301  stores.w r18, 8(r7)
000ba8  73e27301  stores.w r23, 4(r7)
000bac  73e0a301  stores.w r26, 0(r7)
000bb0  b77e03fe  beq r6, zero, -68
000bb4  0b238510  add.ul r[7:8], r[11:12], r[9:10]
000bb8  9b372300  slli r15, r6, 2
000bbc  0b11f710  add.s r2, r14, r15
000bc0  6f48c100  loads.w r16, 12(r2)
000bc4  ef4d0100  loads.w r27, 0(r2)
000bc8  ef4c4100  loads.w r25, 4(r2)
000bcc  ef498100  loads.w r19, 8(r2)
000bd0  97081800  and r17, r16, r1
000bd4  13011a05  setlt.u r2, r20, r17
000bd8  3b300100  bneq r2, zero, 12
000bdc  1f010800  addli r2, r16, 0
000be0  5b010000  j 8
000be4  17116801  or r2, r16, r22
000be8  17861900  and r12, r19, r1
000bec  1303ca04  setlt.u r6, r20, r12
000bf0  3b300300  bneq r6, zero, 12
000bf4  1f890900  addli r18, r19, 0
000bf8  5b010000  j 8
000bfc  17996901  or r18, r19, r22
000c00  178e1c00  and r28, r25, r1
000c04  1303ca05  setlt.u r6, r20, r28
000c08  3b300300  bneq r6, zero, 12
000c0c  9f8b0c00  addli r23, r25, 0
000c10  5b010000  j 8
000c14  979b6c01  or r23, r25, r22
000c18  17831d00  and r6, r27, r1
000c1c  93036a04  setlt.u r7, r20, r6
000c20  3bd00300  bneq r7, zero, 20
000c24  1f8d0d00  addli r26, r27, 0
000c28  13836604  setlt.u r6, r13, r6
000c2c  37500300  beq r6, zero, 20
000c30  db040000  j 36
000c34  179d6d01  or r26, r27, r22
000c38  13836604  setlt.u r6, r13, r6
000c3c  3b600300  bneq r6, zero, 24
000c40  1bc30d01  srli r6, r27, 16
000c44  1b031300  andi r6, r6, 1
000c48  0b936d10  add.s r6, r27, r6
000c4c  0b133310  add.s r6, r6, r3
000c50  170d5301  and r26, r6, r21
000c54  1383c605  setlt.u r6, r13, r28
000c58  bb300300  bneq r6, zero, 44
000c5c  1bc30c01  srli r6, r25, 16
000c60  1b031300  andi r6, r6, 1
000c64  0b936c10  add.s r6, r25, r6
000c68  0b133310  add.s r6, r6, r3
000c6c  970b5301  and r23, r6, r21
000c70  1383c604  setlt.u r6, r13, r12
000c74  37600300  beq r6, zero, 24
000c78  13831605  setlt.u r6, r13, r17
000c7c  3b6c03fe  bneq r6, zero, -232
000c80  5b050000  j 40
000c84  1383c604  setlt.u r6, r13, r12
000c88  bb4f03fe  bneq r6, zero, -16
000c8c  1bc30901  srli r6, r19, 16
000c90  1b031300  andi r6, r6, 1
000c94  0b936910  add.s r6, r19, r6
000c98  0b133310  add.s r6, r6, r3
000c9c  17095301  and r18, r6, r21
000ca0  13831605  setlt.u r6, r13, r17
000ca4  bb4b03fe  bneq r6, zero, -272
000ca8  1b410801  srli r2, r16, 16
000cac  1b011100  andi r2, r2, 1
000cb0  0b112810  add.s r2, r16, r2
000cb4  0b113110  add.s r2, r2, r3
000cb8  17015101  and r2, r2, r21
000cbc  5bdbffff  j -296
000cc0  00330002  core_id r6
000cc4  2b850000  lui r10, 8
000cc8  00200100  mfence { sm }
000ccc  1f712000  addli r2, zero, 23
000cd0  b3030128  zext_int2long r[8:9], r2
000cd4  63414fff  loadli.w r2,  -92(r30)
000cd8  73387ffe  store.d r[8:9], -16(r30)
000cdc  b7650100  beq r2, zero, 376
000ce0  1f012000  addli r2, zero, 16
000ce4  3d000000  xfence
000ce8  00a00300  mfence { lm, sm, gm }
000cec  33030128  zext_int2long r[7:8], r2
000cf0  5b030000  j 24
000cf4  6b530fff  load.d r[7:8], -16(r30)
000cf8  6b548ffe  load.d r[9:10], -24(r30)
000cfc  13216404  setlt.ul r2, r[9:10], r[7:8]
000d00  27130400  addli.d r[7:8], r[9:10], 1
000d04  37150100  beq r2, zero, 324
000d08  1f710000  addli r2, zero, 7
000d0c  33050028  zext_int2long r[11:12], zero
000d10  73346ffe  store.d r[7:8], -24(r30)
000d14  17342302  sll.d r[9:10], r[7:8], r2
000d18  db040000  j 36
000d1c  27450500  addli.d r[11:12], r[11:12], 4
000d20  8b13fc10  add.s r7, r24, r15
000d24  13234502  setneq.d r6, r[11:12], r[5:6]
000d28  73e62300  stores.w r2, 12(r7)
000d2c  73e42301  stores.w r18, 8(r7)
000d30  73e27301  stores.w r23, 4(r7)
000d34  73e0a301  stores.w r26, 0(r7)
000d38  b77e03fe  beq r6, zero, -68
000d3c  0b238510  add.ul r[7:8], r[11:12], r[9:10]
000d40  9b372300  slli r15, r6, 2
000d44  0b11f710  add.s r2, r14, r15
000d48  6f48c100  loads.w r16, 12(r2)
000d4c  ef4d0100  loads.w r27, 0(r2)
000d50  ef4c4100  loads.w r25, 4(r2)
000d54  ef498100  loads.w r19, 8(r2)
000d58  97081800  and r17, r16, r1
000d5c  13011a05  setlt.u r2, r20, r17
000d60  3b300100  bneq r2, zero, 12
000d64  1f010800  addli r2, r16, 0
000d68  5b010000  j 8
000d6c  17116801  or r2, r16, r22
000d70  17861900  and r12, r19, r1
000d74  1303ca04  setlt.u r6, r20, r12
000d78  3b300300  bneq r6, zero, 12
000d7c  1f890900  addli r18, r19, 0
000d80  5b010000  j 8
000d84  17996901  or r18, r19, r22
000d88  178e1c00  and r28, r25, r1
000d8c  1303ca05  setlt.u r6, r20, r28
000d90  3b300300  bneq r6, zero, 12
000d94  9f8b0c00  addli r23, r25, 0
000d98  5b010000  j 8
000d9c  979b6c01  or r23, r25, r22
000da0  17831d00  and r6, r27, r1
000da4  93036a04  setlt.u r7, r20, r6
000da8  3bd00300  bneq r7, zero, 20
000dac  1f8d0d00  addli r26, r27, 0
000db0  13836604  setlt.u r6, r13, r6
000db4  37500300  beq r6, zero, 20
000db8  db040000  j 36
000dbc  179d6d01  or r26, r27, r22
000dc0  13836604  setlt.u r6, r13, r6
000dc4  3b600300  bneq r6, zero, 24
000dc8  1bc30d01  srli r6, r27, 16
000dcc  1b031300  andi r6, r6, 1
000dd0  0b936d10  add.s r6, r27, r6
000dd4  0b133310  add.s r6, r6, r3
000dd8  170d5301  and r26, r6, r21
000ddc  1383c605  setlt.u r6, r13, r28
000de0  bb300300  bneq r6, zero, 44
000de4  1bc30c01  srli r6, r25, 16
000de8  1b031300  andi r6, r6, 1
000dec  0b936c10  add.s r6, r25, r6
000df0  0b133310  add.s r6, r6, r3
000df4  970b5301  and r23, r6, r21
000df8  1383c604  setlt.u r6, r13, r12
000dfc  37600300  beq r6, zero, 24
000e00  13831605  setlt.u r6, r13, r17
000e04  3b6c03fe  bneq r6, zero, -232
000e08  5b050000  j 40
000e0c  1383c604  setlt.u r6, r13, r12
000e10  bb4f03fe  bneq r6, zero, -16
000e14  1bc30901  srli r6, r19, 16
000e18  1b031300  andi r6, r6, 1
000e1c  0b936910  add.s r6, r19, r6
000e20  0b133310  add.s r6, r6, r3
000e24  17095301  and r18, r6, r21
000e28  13831605  setlt.u r6, r13, r17
000e2c  bb4b03fe  bneq r6, zero, -272
000e30  1b410801  srli r2, r16, 16
000e34  1b011100  andi r2, r2, 1
000e38  0b112810  add.s r2, r16, r2
000e3c  0b113110  add.s r2, r2, r3
000e40  17015101  and r2, r2, r21
000e44  5bdbffff  j -296
000e48  00330002  core_id r6
000e4c  2b850000  lui r10, 8
000e50  00200100  mfence { sm }
000e54  1f713000  addli r2, zero, 31
000e58  b3030128  zext_int2long r[8:9], r2
000e5c  1f310000  addli r2, zero, 3
000e60  73347ffe  store.d r[8:9], -24(r30)
000e64  bb652300  bneq r6, r2, 376
000e68  1f013000  addli r2, zero, 24
000e6c  3d000000  xfence
000e70  00a00300  mfence { lm, sm, gm }
000e74  33030128  zext_int2long r[7:8], r2
000e78  5b030000  j 24
000e7c  6b538ffe  load.d r[7:8], -24(r30)
000e80  6b540ffe  load.d r[9:10], -32(r30)
000e84  13216404  setlt.ul r2, r[9:10], r[7:8]
000e88  27130400  addli.d r[7:8], r[9:10], 1
000e8c  37150100  beq r2, zero, 324
000e90  1f710000  addli r2, zero, 7
000e94  33050028  zext_int2long r[11:12], zero
000e98  73306ffe  store.d r[7:8], -32(r30)
000e9c  17342302  sll.d r[9:10], r[7:8], r2
000ea0  db040000  j 36
000ea4  27450500  addli.d r[11:12], r[11:12], 4
000ea8  8b13fc10  add.s r7, r24, r15
000eac  13234502  setneq.d r6, r[11:12], r[5:6]
000eb0  73e62300  stores.w r2, 12(r7)
000eb4  73e42301  stores.w r18, 8(r7)
000eb8  73e27301  stores.w r23, 4(r7)
000ebc  73e0a301  stores.w r26, 0(r7)
000ec0  b77e03fe  beq r6, zero, -68
000ec4  0b238510  add.ul r[7:8], r[11:12], r[9:10]
000ec8  9b372300  slli r15, r6, 2
000ecc  0b11f710  add.s r2, r14, r15
000ed0  6f48c100  loads.w r16, 12(r2)
000ed4  ef4d0100  loads.w r27, 0(r2)
000ed8  ef4c4100  loads.w r25, 4(r2)
000edc  ef498100  loads.w r19, 8(r2)
000ee0  97081800  and r17, r16, r1
000ee4  13011a05  setlt.u r2, r20, r17
000ee8  3b300100  bneq r2, zero, 12
000eec  1f010800  addli r2, r16, 0
000ef0  5b010000  j 8
000ef4  17116801  or r2, r16, r22
000ef8  17861900  and r12, r19, r1
000efc  1303ca04  setlt.u r6, r20, r12
000f00  3b300300  bneq r6, zero, 12
000f04  1f890900  addli r18, r19, 0
000f08  5b010000  j 8
000f0c  17996901  or r18, r19, r22
000f10  178e1c00  and r28, r25, r1
000f14  1303ca05  setlt.u r6, r20, r28
000f18  3b300300  bneq r6, zero, 12
000f1c  9f8b0c00  addli r23, r25, 0
000f20  5b010000  j 8
000f24  979b6c01  or r23, r25, r22
000f28  17831d00  and r6, r27, r1
000f2c  93036a04  setlt.u r7, r20, r6
000f30  3bd00300  bneq r7, zero, 20
000f34  1f8d0d00  addli r26, r27, 0
000f38  13836604  setlt.u r6, r13, r6
000f3c  37500300  beq r6, zero, 20
000f40  db040000  j 36
000f44  179d6d01  or r26, r27, r22
000f48  13836604  setlt.u r6, r13, r6
000f4c  3b600300  bneq r6, zero, 24
000f50  1bc30d01  srli r6, r27, 16
000f54  1b031300  andi r6, r6, 1
000f58  0b936d10  add.s r6, r27, r6
000f5c  0b133310  add.s r6, r6, r3
000f60  170d5301  and r26, r6, r21
000f64  1383c605  setlt.u r6, r13, r28
000f68  bb300300  bneq r6, zero, 44
000f6c  1bc30c01  srli r6, r25, 16
000f70  1b031300  andi r6, r6, 1
000f74  0b936c10  add.s r6, r25, r6
000f78  0b133310  add.s r6, r6, r3
000f7c  970b5301  and r23, r6, r21
000f80  1383c604  setlt.u r6, r13, r12
000f84  37600300  beq r6, zero, 24
000f88  13831605  setlt.u r6, r13, r17
000f8c  3b6c03fe  bneq r6, zero, -232
000f90  5b050000  j 40
000f94  1383c604  setlt.u r6, r13, r12
000f98  bb4f03fe  bneq r6, zero, -16
000f9c  1bc30901  srli r6, r19, 16
000fa0  1b031300  andi r6, r6, 1
000fa4  0b936910  add.s r6, r19, r6
000fa8  0b133310  add.s r6, r6, r3
000fac  17095301  and r18, r6, r21
000fb0  13831605  setlt.u r6, r13, r17
000fb4  bb4b03fe  bneq r6, zero, -272
000fb8  1b410801  srli r2, r16, 16
000fbc  1b011100  andi r2, r2, 1
000fc0  0b112810  add.s r2, r16, r2
000fc4  0b113110  add.s r2, r2, r3
000fc8  17015101  and r2, r2, r21
000fcc  5bdbffff  j -296
000fd0  00330002  core_id r6
000fd4  2b850000  lui r10, 8
000fd8  00200100  mfence { sm }
000fdc  1f714000  addli r2, zero, 39
000fe0  b3030128  zext_int2long r[8:9], r2
000fe4  63015fff  loadli.w r2,  -88(r30)
000fe8  73307ffe  store.d r[8:9], -32(r30)
000fec  b7650100  beq r2, zero, 376
000ff0  1f014000  addli r2, zero, 32
000ff4  3d000000  xfence
000ff8  00a00300  mfence { lm, sm, gm }
000ffc  33030128  zext_int2long r[7:8], r2
001000  5b030000  j 24
001004  6b530ffe  load.d r[7:8], -32(r30)
001008  6b548ffd  load.d r[9:10], -40(r30)
00100c  13216404  setlt.ul r2, r[9:10], r[7:8]
001010  27130400  addli.d r[7:8], r[9:10], 1
001014  37150100  beq r2, zero, 324
001018  1f710000  addli r2, zero, 7
00101c  b3070028  zext_int2long r[16:17], zero
001020  733c6ffc  store.d r[7:8], -40(r30)
001024  17352302  sll.d r[11:12], r[7:8], r2
001028  db040000  j 36
00102c  a7c70700  addli.d r[16:17], r[16:17], 4
001030  8b138c10  add.s r7, r24, r8
001034  13a34702  setneq.d r6, r[16:17], r[5:6]
001038  73e62300  stores.w r2, 12(r7)
00103c  73e42301  stores.w r18, 8(r7)
001040  73e27301  stores.w r23, 4(r7)
001044  73e0a301  stores.w r26, 0(r7)
001048  b77e03fe  beq r6, zero, -68
00104c  0ba3a710  add.ul r[7:8], r[16:17], r[11:12]
001050  1b342300  slli r8, r6, 2
001054  0b118710  add.s r2, r14, r8
001058  ef44c100  loads.w r9, 12(r2)
00105c  ef4d0100  loads.w r27, 0(r2)
001060  ef4c4100  loads.w r25, 4(r2)
001064  ef498100  loads.w r19, 8(r2)
001068  97881400  and r17, r9, r1
00106c  13011a05  setlt.u r2, r20, r17
001070  3b300100  bneq r2, zero, 12
001074  1f810400  addli r2, r9, 0
001078  5b010000  j 8
00107c  17916401  or r2, r9, r22
001080  17861900  and r12, r19, r1
001084  1303ca04  setlt.u r6, r20, r12
001088  3b300300  bneq r6, zero, 12
00108c  1f890900  addli r18, r19, 0
001090  5b010000  j 8
001094  17996901  or r18, r19, r22
001098  178e1c00  and r28, r25, r1
00109c  1303ca05  setlt.u r6, r20, r28
0010a0  3b300300  bneq r6, zero, 12
0010a4  9f8b0c00  addli r23, r25, 0
0010a8  5b010000  j 8
0010ac  979b6c01  or r23, r25, r22
0010b0  17831d00  and r6, r27, r1
0010b4  93036a04  setlt.u r7, r20, r6
0010b8  3bd00300  bneq r7, zero, 20
0010bc  1f8d0d00  addli r26, r27, 0
0010c0  13836604  setlt.u r6, r13, r6
0010c4  37500300  beq r6, zero, 20
0010c8  db040000  j 36
0010cc  179d6d01  or r26, r27, r22
0010d0  13836604  setlt.u r6, r13, r6
0010d4  3b600300  bneq r6, zero, 24
0010d8  1bc30d01  srli r6, r27, 16
0010dc  1b031300  andi r6, r6, 1
0010e0  0b936d10  add.s r6, r27, r6
0010e4  0b133310  add.s r6, r6, r3
0010e8  170d5301  and r26, r6, r21
0010ec  1383c605  setlt.u r6, r13, r28
0010f0  bb300300  bneq r6, zero, 44
0010f4  1bc30c01  srli r6, r25, 16
0010f8  1b031300  andi r6, r6, 1
0010fc  0b936c10  add.s r6, r25, r6
001100  0b133310  add.s r6, r6, r3
001104  970b5301  and r23, r6, r21
001108  1383c604  setlt.u r6, r13, r12
00110c  37600300  beq r6, zero, 24
001110  13831605  setlt.u r6, r13, r17
001114  3b6c03fe  bneq r6, zero, -232
001118  5b050000  j 40
00111c  1383c604  setlt.u r6, r13, r12
001120  bb4f03fe  bneq r6, zero, -16
001124  1bc30901  srli r6, r19, 16
001128  1b031300  andi r6, r6, 1
00112c  0b936910  add.s r6, r19, r6
001130  0b133310  add.s r6, r6, r3
001134  17095301  and r18, r6, r21
001138  13831605  setlt.u r6, r13, r17
00113c  bb4b03fe  bneq r6, zero, -272
001140  1bc10401  srli r2, r9, 16
001144  1b011100  andi r2, r2, 1
001148  0b912410  add.s r2, r9, r2
00114c  0b113110  add.s r2, r2, r3
001150  17015101  and r2, r2, r21
001154  5bdbffff  j -296
001158  00330002  core_id r6
00115c  2b850000  lui r10, 8
001160  00200100  mfence { sm }
001164  1f715000  addli r2, zero, 47
001168  b3030128  zext_int2long r[8:9], r2
00116c  1f510000  addli r2, zero, 5
001170  733c7ffc  store.d r[8:9], -40(r30)
001174  bb652300  bneq r6, r2, 376
001178  1f015000  addli r2, zero, 40
00117c  3d000000  xfence
001180  00a00300  mfence { lm, sm, gm }
001184  33030128  zext_int2long r[7:8], r2
001188  5b030000  j 24
00118c  6b538ffd  load.d r[7:8], -40(r30)
001190  6b540ffd  load.d r[9:10], -48(r30)
001194  13216404  setlt.ul r2, r[9:10], r[7:8]
001198  27130400  addli.d r[7:8], r[9:10], 1
00119c  37150100  beq r2, zero, 324
0011a0  1f710000  addli r2, zero, 7
0011a4  b3070028  zext_int2long r[16:17], zero
0011a8  73386ffc  store.d r[7:8], -48(r30)
0011ac  97382302  sll.d r[18:19], r[7:8], r2
0011b0  db040000  j 36
0011b4  a7c70700  addli.d r[16:17], r[16:17], 4
0011b8  0b148c10  add.s r8, r24, r8
0011bc  13a34702  setneq.d r6, r[16:17], r[5:6]
0011c0  73662400  stores.w r2, 12(r8)
0011c4  73647400  stores.w r7, 8(r8)
0011c8  73627401  stores.w r23, 4(r8)
0011cc  7360a401  stores.w r26, 0(r8)
0011d0  b77e03fe  beq r6, zero, -68
0011d4  0ba31711  add.ul r[7:8], r[16:17], r[18:19]
0011d8  1b342300  slli r8, r6, 2
0011dc  0b118710  add.s r2, r14, r8
0011e0  ef44c100  loads.w r9, 12(r2)
0011e4  ef4d0100  loads.w r27, 0(r2)
0011e8  ef4c4100  loads.w r25, 4(r2)
0011ec  ef498100  loads.w r19, 8(r2)
0011f0  17831400  and r6, r9, r1
0011f4  13016a04  setlt.u r2, r20, r6
0011f8  3b300100  bneq r2, zero, 12
0011fc  1f810400  addli r2, r9, 0
001200  5b010000  j 8
001204  17916401  or r2, r9, r22
001208  17861900  and r12, r19, r1
00120c  9303ca04  setlt.u r7, r20, r12
001210  3bb00300  bneq r7, zero, 12
001214  9f830900  addli r7, r19, 0
001218  5b010000  j 8
00121c  97936901  or r7, r19, r22
001220  178e1c00  and r28, r25, r1
001224  1305ca05  setlt.u r10, r20, r28
001228  3b300500  bneq r10, zero, 12
00122c  9f8b0c00  addli r23, r25, 0
001230  5b010000  j 8
001234  979b6c01  or r23, r25, r22
001238  17851d00  and r10, r27, r1
00123c  9305aa04  setlt.u r11, r20, r10
001240  3bd00500  bneq r11, zero, 20
001244  1f8d0d00  addli r26, r27, 0
001248  1385a604  setlt.u r10, r13, r10
00124c  37500500  beq r10, zero, 20
001250  db040000  j 36
001254  179d6d01  or r26, r27, r22
001258  1385a604  setlt.u r10, r13, r10
00125c  3b600500  bneq r10, zero, 24
001260  1bc50d01  srli r10, r27, 16
001264  1b051500  andi r10, r10, 1
001268  0b95ad10  add.s r10, r27, r10
00126c  0b153510  add.s r10, r10, r3
001270  170d5501  and r26, r10, r21
001274  1385c605  setlt.u r10, r13, r28
001278  bb300500  bneq r10, zero, 44
00127c  1bc50c01  srli r10, r25, 16
001280  1b051500  andi r10, r10, 1
001284  0b95ac10  add.s r10, r25, r10
001288  0b153510  add.s r10, r10, r3
00128c  970b5501  and r23, r10, r21
001290  1385c604  setlt.u r10, r13, r12
001294  37600500  beq r10, zero, 24
001298  13836604  setlt.u r6, r13, r6
00129c  3b6c03fe  bneq r6, zero, -232
0012a0  5b050000  j 40
0012a4  1385c604  setlt.u r10, r13, r12
0012a8  bb4f05fe  bneq r10, zero, -16
0012ac  9bc30901  srli r7, r19, 16
0012b0  9b831300  andi r7, r7, 1
0012b4  8b937910  add.s r7, r19, r7
0012b8  8b933310  add.s r7, r7, r3
0012bc  97835301  and r7, r7, r21
0012c0  13836604  setlt.u r6, r13, r6
0012c4  bb4b03fe  bneq r6, zero, -272
0012c8  1bc10401  srli r2, r9, 16
0012cc  1b011100  andi r2, r2, 1
0012d0  0b912410  add.s r2, r9, r2
0012d4  0b113110  add.s r2, r2, r3
0012d8  17015101  and r2, r2, r21
0012dc  5bdbffff  j -296
0012e0  00330002  core_id r6
0012e4  2b850000  lui r10, 8
0012e8  00200100  mfence { sm }
0012ec  1f716000  addli r2, zero, 55
0012f0  b3030128  zext_int2long r[8:9], r2
0012f4  1f610000  addli r2, zero, 6
0012f8  73387ffc  store.d r[8:9], -48(r30)
0012fc  bb552300  bneq r6, r2, 372
001300  1f016000  addli r2, zero, 48
001304  3d000000  xfence
001308  00a00300  mfence { lm, sm, gm }
00130c  33030128  zext_int2long r[7:8], r2
001310  5b030000  j 24
001314  6b530ffd  load.d r[7:8], -48(r30)
001318  6b548ffc  load.d r[9:10], -56(r30)
00131c  13216404  setlt.ul r2, r[9:10], r[7:8]
001320  27130400  addli.d r[7:8], r[9:10], 1
001324  37150100  beq r2, zero, 324
001328  1f710000  addli r2, zero, 7
00132c  b3070028  zext_int2long r[16:17], zero
001330  73346ffc  store.d r[7:8], -56(r30)
001334  973c2302  sll.d r[26:27], r[7:8], r2
001338  db040000  j 36
00133c  a7c70700  addli.d r[16:17], r[16:17], 4
001340  0b148c10  add.s r8, r24, r8
001344  13a34702  setneq.d r6, r[16:17], r[5:6]
001348  73662400  stores.w r2, 12(r8)
00134c  73647400  stores.w r7, 8(r8)
001350  7362b400  stores.w r11, 4(r8)
001354  73607401  stores.w r23, 0(r8)
001358  b77e03fe  beq r6, zero, -68
00135c  0ba39711  add.ul r[7:8], r[16:17], r[26:27]
001360  1b342300  slli r8, r6, 2
001364  0b118710  add.s r2, r14, r8
001368  ef44c100  loads.w r9, 12(r2)
00136c  ef4d0100  loads.w r27, 0(r2)
001370  ef494100  loads.w r19, 4(r2)
001374  6f458100  loads.w r10, 8(r2)
001378  17831400  and r6, r9, r1
00137c  13016a04  setlt.u r2, r20, r6
001380  3b300100  bneq r2, zero, 12
001384  1f810400  addli r2, r9, 0
001388  5b010000  j 8
00138c  17916401  or r2, r9, r22
001390  17061500  and r12, r10, r1
001394  9303ca04  setlt.u r7, r20, r12
001398  3bb00300  bneq r7, zero, 12
00139c  9f030500  addli r7, r10, 0
0013a0  5b010000  j 8
0013a4  97136501  or r7, r10, r22
0013a8  178e1900  and r28, r19, r1
0013ac  9305ca05  setlt.u r11, r20, r28
0013b0  3bb00500  bneq r11, zero, 12
0013b4  9f850900  addli r11, r19, 0
0013b8  5b010000  j 8
0013bc  97956901  or r11, r19, r22
0013c0  97881d00  and r17, r27, r1
0013c4  13091a05  setlt.u r18, r20, r17
0013c8  3b500900  bneq r18, zero, 20
0013cc  9f8b0d00  addli r23, r27, 0
0013d0  93881605  setlt.u r17, r13, r17
0013d4  37d00800  beq r17, zero, 20
0013d8  db040000  j 36
0013dc  979b6d01  or r23, r27, r22
0013e0  93881605  setlt.u r17, r13, r17
0013e4  3be00800  bneq r17, zero, 24
0013e8  9bc80d01  srli r17, r27, 16
0013ec  9b881800  andi r17, r17, 1
0013f0  8b981d11  add.s r17, r27, r17
0013f4  8b983810  add.s r17, r17, r3
0013f8  978b5801  and r23, r17, r21
0013fc  9388c605  setlt.u r17, r13, r28
001400  bbb00800  bneq r17, zero, 44
001404  9bc50901  srli r11, r19, 16
001408  9b851500  andi r11, r11, 1
00140c  8b95b910  add.s r11, r19, r11
001410  8b953510  add.s r11, r11, r3
001414  97855501  and r11, r11, r21
001418  1386c604  setlt.u r12, r13, r12
00141c  37600600  beq r12, zero, 24
001420  13836604  setlt.u r6, r13, r6
001424  3b6c03fe  bneq r6, zero, -232
001428  5b050000  j 40
00142c  1386c604  setlt.u r12, r13, r12
001430  bb4f06fe  bneq r12, zero, -16
001434  9b430501  srli r7, r10, 16
001438  9b831300  andi r7, r7, 1
00143c  8b137510  add.s r7, r10, r7
001440  8b933310  add.s r7, r7, r3
001444  97835301  and r7, r7, r21
001448  13836604  setlt.u r6, r13, r6
00144c  bb4b03fe  bneq r6, zero, -272
001450  1bc10401  srli r2, r9, 16
001454  1b011100  andi r2, r2, 1
001458  0b912410  add.s r2, r9, r2
00145c  0b113110  add.s r2, r2, r3
001460  17015101  and r2, r2, r21
001464  5bdbffff  j -296
001468  2b850000  lui r10, 8
00146c  00200100  mfence { sm }
001470  1f717000  addli r2, zero, 63
001474  33030128  zext_int2long r[7:8], r2
001478  63415fff  loadli.w r2,  -84(r30)
00147c  73346ffc  store.d r[7:8], -56(r30)
001480  b7550100  beq r2, zero, 372
001484  1f017000  addli r2, zero, 56
001488  3d000000  xfence
00148c  00a00300  mfence { lm, sm, gm }
001490  33030128  zext_int2long r[7:8], r2
001494  5b030000  j 24
001498  6b538ffc  load.d r[7:8], -56(r30)
00149c  6b540ffc  load.d r[9:10], -64(r30)
0014a0  13216404  setlt.ul r2, r[9:10], r[7:8]
0014a4  27130400  addli.d r[7:8], r[9:10], 1
0014a8  37150100  beq r2, zero, 324
0014ac  1f710000  addli r2, zero, 7
0014b0  b3070028  zext_int2long r[16:17], zero
0014b4  73306ffc  store.d r[7:8], -64(r30)
0014b8  973c2302  sll.d r[26:27], r[7:8], r2
0014bc  db040000  j 36
0014c0  a7c70700  addli.d r[16:17], r[16:17], 4
0014c4  0b148c10  add.s r8, r24, r8
0014c8  13a34702  setneq.d r6, r[16:17], r[5:6]
0014cc  73662400  stores.w r2, 12(r8)
0014d0  73647400  stores.w r7, 8(r8)
0014d4  7362b400  stores.w r11, 4(r8)
0014d8  73602401  stores.w r18, 0(r8)
0014dc  b77e03fe  beq r6, zero, -68
0014e0  0ba39711  add.ul r[7:8], r[16:17], r[26:27]
0014e4  1b342300  slli r8, r6, 2
0014e8  0b118710  add.s r2, r14, r8
0014ec  ef44c100  loads.w r9, 12(r2)
0014f0  ef490100  loads.w r19, 0(r2)
0014f4  ef484100  loads.w r17, 4(r2)
0014f8  6f458100  loads.w r10, 8(r2)
0014fc  17831400  and r6, r9, r1
001500  13016a04  setlt.u r2, r20, r6
001504  3b300100  bneq r2, zero, 12
001508  1f810400  addli r2, r9, 0
00150c  5b010000  j 8
001510  17916401  or r2, r9, r22
001514  17061500  and r12, r10, r1
001518  9303ca04  setlt.u r7, r20, r12
00151c  3bb00300  bneq r7, zero, 12
001520  9f030500  addli r7, r10, 0
001524  5b010000  j 8
001528  97136501  or r7, r10, r22
00152c  978b1800  and r23, r17, r1
001530  93057a05  setlt.u r11, r20, r23
001534  3bb00500  bneq r11, zero, 12
001538  9f850800  addli r11, r17, 0
00153c  5b010000  j 8
001540  97956801  or r11, r17, r22
001544  978d1900  and r27, r19, r1
001548  1309ba05  setlt.u r18, r20, r27
00154c  3b500900  bneq r18, zero, 20
001550  1f890900  addli r18, r19, 0
001554  938db605  setlt.u r27, r13, r27
001558  37d00d00  beq r27, zero, 20
00155c  db040000  j 36
001560  17996901  or r18, r19, r22
001564  938db605  setlt.u r27, r13, r27
001568  3be00d00  bneq r27, zero, 24
00156c  1bc90901  srli r18, r19, 16
001570  1b091900  andi r18, r18, 1
001574  0b992911  add.s r18, r19, r18
001578  0b193910  add.s r18, r18, r3
00157c  17095901  and r18, r18, r21
001580  93897605  setlt.u r19, r13, r23
001584  bbb00900  bneq r19, zero, 44
001588  9bc50801  srli r11, r17, 16
00158c  9b851500  andi r11, r11, 1
001590  8b95b810  add.s r11, r17, r11
001594  8b953510  add.s r11, r11, r3
001598  97855501  and r11, r11, r21
00159c  1386c604  setlt.u r12, r13, r12
0015a0  37600600  beq r12, zero, 24
0015a4  13836604  setlt.u r6, r13, r6
0015a8  3b6c03fe  bneq r6, zero, -232
0015ac  5b050000  j 40
0015b0  1386c604  setlt.u r12, r13, r12
0015b4  bb4f06fe  bneq r12, zero, -16
0015b8  9b430501  srli r7, r10, 16
0015bc  9b831300  andi r7, r7, 1
0015c0  8b137510  add.s r7, r10, r7
0015c4  8b933310  add.s r7, r7, r3
0015c8  97835301  and r7, r7, r21
0015cc  13836604  setlt.u r6, r13, r6
0015d0  bb4b03fe  bneq r6, zero, -272
0015d4  1bc10401  srli r2, r9, 16
0015d8  1b011100  andi r2, r2, 1
0015dc  0b912410  add.s r2, r9, r2
0015e0  0b113110  add.s r2, r2, r3
0015e4  17015101  and r2, r2, r21
0015e8  5bdbffff  j -296
0015ec  2b850000  lui r10, 8
0015f0  00200100  mfence { sm }
0015f4  63012fff  loadli.w r2,  -112(r30)
0015f8  1f030007  addli r6, zero, 896
0015fc  33030328  zext_int2long r[7:8], r6
001600  1b317100  slli r2, r2, 7
001604  33040128  zext_int2long r[9:10], r2
001608  1f71f001  addli r2, zero, 255
00160c  0b236440  min.ul r[7:8], r[9:10], r[7:8]
001610  80220104  csr_set csr5, r2
001614  1f310000  addli r2, zero, 3
001618  00e00200  sync_core
00161c  27030301  addli.d r[7:8], r[7:8], 128
001620  0b238348  max.ul r[7:8], r[7:8], r[9:10]
001624  0b338318  sub.sl r[7:8], r[7:8], r[9:10]
001628  8b274340  min.ul r[16:17], r[7:8], r[5:6]
00162c  80330002  core_id r7
001630  7338fff8  store.d r[16:17], -112(r30)
001634  bba02300  bneq r7, r2, 40
001638  1f311000  addli r2, zero, 11
00163c  7d000100  xsignal r2, 0
001640  1f411000  addli r2, zero, 12
001644  7d000100  xsignal r2, 0
001648  1f511000  addli r2, zero, 13
00164c  7d100100  xwait r2, 0
001650  1f312000  addli r2, zero, 19
001654  7d100100  xwait r2, 0
001658  db6b0000  j 860
00165c  63016fff  loadli.w r2,  -80(r30)
001660  2bc30800  lui r6, 140
001664  1b319100  slli r2, r2, 9
001668  8b196110  add.s r19, r2, r6
00166c  1f130000  addli r6, zero, 1
001670  3bfb6300  bneq r7, r6, 732
001674  6b530f01  load.d r[7:8], 16(r30)
001678  6b548ff8  load.d r[9:10], -120(r30)
00167c  1f062000  addli r12, zero, 16
001680  9f450000  addli r11, zero, 4
001684  7d100600  xwait r12, 0
001688  0b238310  add.ul r[7:8], r[7:8], r[9:10]
00168c  63044fff  loadli.w r8,  -96(r30)
001690  bfd48500  blt.s r11, r8, 308
001694  1f540000  addli r8, zero, 5
001698  1f150000  addli r10, zero, 1
00169c  9f240000  addli r9, zero, 2
0016a0  1d000400  lock zero, r8
0016a4  15000014  dma_cfg zero, zero, zero, 10
0016a8  1500a014  dma_cfg zero, zero, r10, 10
0016ac  15009014  dma_cfg zero, zero, r9, 10
0016b0  9f340000  addli r9, zero, 3
0016b4  15009014  dma_cfg zero, zero, r9, 10
0016b8  9f640000  addli r9, zero, 6
0016bc  1500b014  dma_cfg zero, zero, r11, 10
0016c0  15008014  dma_cfg zero, zero, r8, 10
0016c4  15009014  dma_cfg zero, zero, r9, 10
0016c8  9f740000  addli r9, zero, 7
0016cc  15009014  dma_cfg zero, zero, r9, 10
0016d0  9f041000  addli r9, zero, 8
0016d4  15009014  dma_cfg zero, zero, r9, 10
0016d8  9f141000  addli r9, zero, 9
0016dc  15009014  dma_cfg zero, zero, r9, 10
0016e0  9f241000  addli r9, zero, 10
0016e4  15009014  dma_cfg zero, zero, r9, 10
0016e8  9f341000  addli r9, zero, 11
0016ec  15009014  dma_cfg zero, zero, r9, 10
0016f0  9f441000  addli r9, zero, 12
0016f4  15009014  dma_cfg zero, zero, r9, 10
0016f8  9f541000  addli r9, zero, 13
0016fc  15009014  dma_cfg zero, zero, r9, 10
001700  9f641000  addli r9, zero, 14
001704  15009014  dma_cfg zero, zero, r9, 10
001708  9f741000  addli r9, zero, 15
00170c  15009014  dma_cfg zero, zero, r9, 10
001710  9f142000  addli r9, zero, 17
001714  1500c014  dma_cfg zero, zero, r12, 10
001718  15009014  dma_cfg zero, zero, r9, 10
00171c  9f242000  addli r9, zero, 18
001720  15009014  dma_cfg zero, zero, r9, 10
001724  9f342000  addli r9, zero, 19
001728  15009014  dma_cfg zero, zero, r9, 10
00172c  9f442000  addli r9, zero, 20
001730  15009014  dma_cfg zero, zero, r9, 10
001734  9f542000  addli r9, zero, 21
001738  15009014  dma_cfg zero, zero, r9, 10
00173c  9f642000  addli r9, zero, 22
001740  15009014  dma_cfg zero, zero, r9, 10
001744  9f742000  addli r9, zero, 23
001748  15009014  dma_cfg zero, zero, r9, 10
00174c  9f043000  addli r9, zero, 24
001750  15009014  dma_cfg zero, zero, r9, 10
001754  9f143000  addli r9, zero, 25
001758  15009014  dma_cfg zero, zero, r9, 10
00175c  9f243000  addli r9, zero, 26
001760  15009014  dma_cfg zero, zero, r9, 10
001764  9f343000  addli r9, zero, 27
001768  15009014  dma_cfg zero, zero, r9, 10
00176c  9f443000  addli r9, zero, 28
001770  15009014  dma_cfg zero, zero, r9, 10
001774  9f543000  addli r9, zero, 29
001778  15009014  dma_cfg zero, zero, r9, 10
00177c  9f643000  addli r9, zero, 30
001780  15009014  dma_cfg zero, zero, r9, 10
001784  9f743000  addli r9, zero, 31
001788  15009014  dma_cfg zero, zero, r9, 10
00178c  9f048000  addli r9, zero, 64
001790  15050500  dma_cfg r10, r10, zero, 0
001794  15050002  dma_cfg r10, zero, zero, 1
001798  15000004  dma_cfg zero, zero, zero, 2
00179c  95099006  dma_cfg r19, zero, r9, 3
0017a0  9f040001  addli r9, zero, 128
0017a4  9504b008  dma_cfg r9, zero, r11, 4
0017a8  9f040004  addli r9, zero, 512
0017ac  9504a00a  dma_cfg r9, zero, r10, 5
0017b0  15000010  dma_cfg zero, zero, zero, 8
0017b4  35000000  dma_run zero
0017b8  1500a00a  dma_cfg zero, zero, r10, 5
0017bc  15000010  dma_cfg zero, zero, zero, 8
0017c0  1d100400  unlock r8
0017c4  2bc40800  lui r8, 140
0017c8  1f150000  addli r10, zero, 1
0017cc  1d800500  lock zero, r11
0017d0  9f048000  addli r9, zero, 64
0017d4  1b140404  ori r8, r8, 64
0017d8  15050500  dma_cfg r10, r10, zero, 0
0017dc  15800304  dma_cfg zero, r7, zero, 2
0017e0  0b118110  add.s r2, r2, r8
0017e4  1ff43700  addli r8, r15, 31
0017e8  15019306  dma_cfg r2, r6, r9, 3
0017ec  1bb31700  slli r6, r15, 1
0017f0  1b415400  srli r2, r8, 5
0017f4  9f070001  addli r15, zero, 128
0017f8  9f030002  addli r7, zero, 256
0017fc  1f080004  addli r16, zero, 512
001800  1f240000  addli r8, zero, 2
001804  95872408  dma_cfg r15, r9, r2, 4
001808  1b03e303  andi r6, r6, 62
00180c  1588a30a  dma_cfg r16, r7, r10, 5
001810  9f530000  addli r7, zero, 5
001814  15006010  dma_cfg zero, zero, r6, 8
001818  35000000  dma_run zero
00181c  1500a00a  dma_cfg zero, zero, r10, 5
001820  15000010  dma_cfg zero, zero, zero, 8
001824  1d900500  unlock r11
001828  1d800300  lock zero, r7
00182c  15000014  dma_cfg zero, zero, zero, 10
001830  1500a014  dma_cfg zero, zero, r10, 10
001834  15008014  dma_cfg zero, zero, r8, 10
001838  1f340000  addli r8, zero, 3
00183c  15008014  dma_cfg zero, zero, r8, 10
001840  1f640000  addli r8, zero, 6
001844  1500b014  dma_cfg zero, zero, r11, 10
001848  9f152000  addli r11, zero, 17
00184c  15007014  dma_cfg zero, zero, r7, 10
001850  15008014  dma_cfg zero, zero, r8, 10
001854  1f740000  addli r8, zero, 7
001858  15008014  dma_cfg zero, zero, r8, 10
00185c  1f041000  addli r8, zero, 8
001860  15008014  dma_cfg zero, zero, r8, 10
001864  1f141000  addli r8, zero, 9
001868  15008014  dma_cfg zero, zero, r8, 10
00186c  1f241000  addli r8, zero, 10
001870  15008014  dma_cfg zero, zero, r8, 10
001874  1f341000  addli r8, zero, 11
001878  15008014  dma_cfg zero, zero, r8, 10
00187c  1f441000  addli r8, zero, 12
001880  15008014  dma_cfg zero, zero, r8, 10
001884  1f541000  addli r8, zero, 13
001888  15008014  dma_cfg zero, zero, r8, 10
00188c  1f641000  addli r8, zero, 14
001890  15008014  dma_cfg zero, zero, r8, 10
001894  1f741000  addli r8, zero, 15
001898  15008014  dma_cfg zero, zero, r8, 10
00189c  1500c014  dma_cfg zero, zero, r12, 10
0018a0  1500b014  dma_cfg zero, zero, r11, 10
0018a4  9f252000  addli r11, zero, 18
0018a8  1500b014  dma_cfg zero, zero, r11, 10
0018ac  9f352000  addli r11, zero, 19
0018b0  1500b014  dma_cfg zero, zero, r11, 10
0018b4  9f452000  addli r11, zero, 20
0018b8  1500b014  dma_cfg zero, zero, r11, 10
0018bc  9f552000  addli r11, zero, 21
0018c0  1500b014  dma_cfg zero, zero, r11, 10
0018c4  9f652000  addli r11, zero, 22
0018c8  1500b014  dma_cfg zero, zero, r11, 10
0018cc  9f752000  addli r11, zero, 23
0018d0  1500b014  dma_cfg zero, zero, r11, 10
0018d4  9f053000  addli r11, zero, 24
0018d8  1500b014  dma_cfg zero, zero, r11, 10
0018dc  9f153000  addli r11, zero, 25
0018e0  1500b014  dma_cfg zero, zero, r11, 10
0018e4  9f253000  addli r11, zero, 26
0018e8  1500b014  dma_cfg zero, zero, r11, 10
0018ec  9f353000  addli r11, zero, 27
0018f0  1500b014  dma_cfg zero, zero, r11, 10
0018f4  9f453000  addli r11, zero, 28
0018f8  1500b014  dma_cfg zero, zero, r11, 10
0018fc  9f553000  addli r11, zero, 29
001900  1500b014  dma_cfg zero, zero, r11, 10
001904  9f653000  addli r11, zero, 30
001908  1500b014  dma_cfg zero, zero, r11, 10
00190c  9f753000  addli r11, zero, 31
001910  1500b014  dma_cfg zero, zero, r11, 10
001914  15050500  dma_cfg r10, r10, zero, 0
001918  15050002  dma_cfg r10, zero, zero, 1
00191c  15000004  dma_cfg zero, zero, zero, 2
001920  95099006  dma_cfg r19, zero, r9, 3
001924  95072008  dma_cfg r15, zero, r2, 4
001928  1508a00a  dma_cfg r16, zero, r10, 5
00192c  15006010  dma_cfg zero, zero, r6, 8
001930  35000000  dma_run zero
001934  1500a00a  dma_cfg zero, zero, r10, 5
001938  15000010  dma_cfg zero, zero, zero, 8
00193c  1d900300  unlock r7
001940  7d000400  xsignal r8, 0
001944  80330002  core_id r7
001948  db0d0000  j 108
00194c  1f510000  addli r2, zero, 5
001950  bb912300  bneq r7, r2, 100
001954  1f431000  addli r6, zero, 12
001958  1f010000  addli r2, zero, 0
00195c  7d100300  xwait r6, 0
001960  1f731000  addli r6, zero, 15
001964  7d100300  xwait r6, 0
001968  1f230000  addli r6, zero, 2
00196c  1d000300  lock zero, r6
001970  2b03803f  lui r6, 260096
001974  0d000002  ew_cfg zero, zero, zero, 1
001978  0d130300  ewcoeff_cfg r6, r6, zero, 0
00197c  1f73f000  addli r6, zero, 127
001980  0d000304  ew_cfg zero, r6, zero, 2
001984  1f130000  addli r6, zero, 1
001988  0d030006  ew_cfg r6, zero, zero, 3
00198c  0b132c10  add.s r6, r24, r2
001990  1f010104  addli r2, r2, 512
001994  2d033301  dsmadd r6, r6, r19, 0
001998  bb5fa1fe  bneq r2, r10, -12
00199c  1f210000  addli r2, zero, 2
0019a0  1d100100  unlock r2
0019a4  1f511000  addli r2, zero, 13
0019a8  7d000100  xsignal r2, 0
0019ac  1f012000  addli r2, zero, 16
0019b0  7d000100  xsignal r2, 0
0019b4  2b410600  lui r2, 100
0019b8  3d000000  xfence
0019bc  00a00300  mfence { lm, sm, gm }
0019c0  8b192710  add.s r19, r14, r2
0019c4  1f71f001  addli r2, zero, 255
0019c8  80220104  csr_set csr5, r2
0019cc  00e00200  sync_core
0019d0  37a20302  beq r7, zero, 1160
0019d4  1f110000  addli r2, zero, 1
0019d8  bbe72302  bneq r7, r2, 1528
0019dc  1f011000  addli r2, zero, 8
0019e0  3d000000  xfence
0019e4  00a00300  mfence { lm, sm, gm }
0019e8  33030128  zext_int2long r[7:8], r2
0019ec  5b030000  j 24
0019f0  6b538fff  load.d r[7:8], -8(r30)
0019f4  6b540ffc  load.d r[9:10], -64(r30)
0019f8  13216404  setlt.ul r2, r[9:10], r[7:8]
0019fc  27130400  addli.d r[7:8], r[9:10], 1
001a00  37150100  beq r2, zero, 324
001a04  1f710000  addli r2, zero, 7
001a08  b3070028  zext_int2long r[16:17], zero
001a0c  73306ffc  store.d r[7:8], -64(r30)
001a10  973c2302  sll.d r[26:27], r[7:8], r2
001a14  db040000  j 36
001a18  a7c70700  addli.d r[16:17], r[16:17], 4
001a1c  8b938910  add.s r7, r19, r8
001a20  13a14702  setneq.d r2, r[16:17], r[5:6]
001a24  73e66300  stores.w r6, 12(r7)
001a28  73e49300  stores.w r9, 8(r7)
001a2c  73e2b300  stores.w r11, 4(r7)
001a30  73e0c300  stores.w r12, 0(r7)
001a34  b77e01fe  beq r2, zero, -68
001a38  0ba39711  add.ul r[7:8], r[16:17], r[26:27]
001a3c  1b342300  slli r8, r6, 2
001a40  0b138c10  add.s r6, r24, r8
001a44  6f41c300  loads.w r2, 12(r6)
001a48  ef4b0300  loads.w r23, 0(r6)
001a4c  ef484300  loads.w r17, 4(r6)
001a50  6f458300  loads.w r10, 8(r6)
001a54  97031100  and r7, r2, r1
001a58  13037a04  setlt.u r6, r20, r7
001a5c  3b300300  bneq r6, zero, 12
001a60  1f030100  addli r6, r2, 0
001a64  5b010000  j 8
001a68  17136101  or r6, r2, r22
001a6c  17091500  and r18, r10, r1
001a70  93042a05  setlt.u r9, r20, r18
001a74  3bb00400  bneq r9, zero, 12
001a78  9f040500  addli r9, r10, 0
001a7c  5b010000  j 8
001a80  97146501  or r9, r10, r22
001a84  978d1800  and r27, r17, r1
001a88  9305ba05  setlt.u r11, r20, r27
001a8c  3bb00500  bneq r11, zero, 12
001a90  9f850800  addli r11, r17, 0
001a94  5b010000  j 8
001a98  97956801  or r11, r17, r22
001a9c  178e1b00  and r28, r23, r1
001aa0  1306ca05  setlt.u r12, r20, r28
001aa4  3b500600  bneq r12, zero, 20
001aa8  1f860b00  addli r12, r23, 0
001aac  138ec605  setlt.u r28, r13, r28
001ab0  37500e00  beq r28, zero, 20
001ab4  db040000  j 36
001ab8  17966b01  or r12, r23, r22
001abc  138ec605  setlt.u r28, r13, r28
001ac0  3b600e00  bneq r28, zero, 24
001ac4  1bc60b01  srli r12, r23, 16
001ac8  1b061600  andi r12, r12, 1
001acc  0b96cb10  add.s r12, r23, r12
001ad0  0b163610  add.s r12, r12, r3
001ad4  17065601  and r12, r12, r21
001ad8  938bb605  setlt.u r23, r13, r27
001adc  bbb00b00  bneq r23, zero, 44
001ae0  9bc50801  srli r11, r17, 16
001ae4  9b851500  andi r11, r11, 1
001ae8  8b95b810  add.s r11, r17, r11
001aec  8b953510  add.s r11, r11, r3
001af0  97855501  and r11, r11, r21
001af4  93882605  setlt.u r17, r13, r18
001af8  37e00800  beq r17, zero, 24
001afc  93837604  setlt.u r7, r13, r7
001b00  3bec03fe  bneq r7, zero, -232
001b04  5b050000  j 40
001b08  93882605  setlt.u r17, r13, r18
001b0c  bbcf08fe  bneq r17, zero, -16
001b10  9b440501  srli r9, r10, 16
001b14  9b841400  andi r9, r9, 1
001b18  8b149510  add.s r9, r10, r9
001b1c  8b943410  add.s r9, r9, r3
001b20  97845401  and r9, r9, r21
001b24  93837604  setlt.u r7, r13, r7
001b28  bbcb03fe  bneq r7, zero, -272
001b2c  1b430101  srli r6, r2, 16
001b30  1b031300  andi r6, r6, 1
001b34  0b116110  add.s r2, r2, r6
001b38  0b113110  add.s r2, r2, r3
001b3c  17035101  and r6, r2, r21
001b40  5bdbffff  j -296
001b44  80330002  core_id r7
001b48  00200100  mfence { sm }
001b4c  63414fff  loadli.w r2,  -92(r30)
001b50  3b220102  bneq r2, zero, 1160
001b54  1f310000  addli r2, zero, 3
001b58  bbe72302  bneq r7, r2, 1528
001b5c  1f013000  addli r2, zero, 24
001b60  3d000000  xfence
001b64  00a00300  mfence { lm, sm, gm }
001b68  33030128  zext_int2long r[7:8], r2
001b6c  5b030000  j 24
001b70  6b538ffe  load.d r[7:8], -24(r30)
001b74  6b548fff  load.d r[9:10], -8(r30)
001b78  13216404  setlt.ul r2, r[9:10], r[7:8]
001b7c  27130400  addli.d r[7:8], r[9:10], 1
001b80  37150100  beq r2, zero, 324
001b84  1f710000  addli r2, zero, 7
001b88  b3070028  zext_int2long r[16:17], zero
001b8c  733c6ffe  store.d r[7:8], -8(r30)
001b90  973d2302  sll.d r[28:29], r[7:8], r2
001b94  db040000  j 36
001b98  a7c70700  addli.d r[16:17], r[16:17], 4
001b9c  8b938910  add.s r7, r19, r8
001ba0  13a14702  setneq.d r2, r[16:17], r[5:6]
001ba4  73e66300  stores.w r6, 12(r7)
001ba8  73e49300  stores.w r9, 8(r7)
001bac  73e2b300  stores.w r11, 4(r7)
001bb0  73e0c300  stores.w r12, 0(r7)
001bb4  b77e01fe  beq r2, zero, -68
001bb8  0ba3b711  add.ul r[7:8], r[16:17], r[28:29]
001bbc  1b342300  slli r8, r6, 2
001bc0  0b138c10  add.s r6, r24, r8
001bc4  6f41c300  loads.w r2, 12(r6)
001bc8  ef4b0300  loads.w r23, 0(r6)
001bcc  ef484300  loads.w r17, 4(r6)
001bd0  6f458300  loads.w r10, 8(r6)
001bd4  97031100  and r7, r2, r1
001bd8  13037a04  setlt.u r6, r20, r7
001bdc  3b300300  bneq r6, zero, 12
001be0  1f030100  addli r6, r2, 0
001be4  5b010000  j 8
001be8  17136101  or r6, r2, r22
001bec  17091500  and r18, r10, r1
001bf0  93042a05  setlt.u r9, r20, r18
001bf4  3bb00400  bneq r9, zero, 12
001bf8  9f040500  addli r9, r10, 0
001bfc  5b010000  j 8
001c00  97146501  or r9, r10, r22
001c04  978c1800  and r25, r17, r1
001c08  93059a05  setlt.u r11, r20, r25
001c0c  3bb00500  bneq r11, zero, 12
001c10  9f850800  addli r11, r17, 0
001c14  5b010000  j 8
001c18  97956801  or r11, r17, r22
001c1c  178d1b00  and r26, r23, r1
001c20  1306aa05  setlt.u r12, r20, r26
001c24  3b500600  bneq r12, zero, 20
001c28  1f860b00  addli r12, r23, 0
001c2c  138da605  setlt.u r26, r13, r26
001c30  37500d00  beq r26, zero, 20
001c34  db040000  j 36
001c38  17966b01  or r12, r23, r22
001c3c  138da605  setlt.u r26, r13, r26
001c40  3b600d00  bneq r26, zero, 24
001c44  1bc60b01  srli r12, r23, 16
001c48  1b061600  andi r12, r12, 1
001c4c  0b96cb10  add.s r12, r23, r12
001c50  0b163610  add.s r12, r12, r3
001c54  17065601  and r12, r12, r21
001c58  938b9605  setlt.u r23, r13, r25
001c5c  bbb00b00  bneq r23, zero, 44
001c60  9bc50801  srli r11, r17, 16
001c64  9b851500  andi r11, r11, 1
001c68  8b95b810  add.s r11, r17, r11
001c6c  8b953510  add.s r11, r11, r3
001c70  97855501  and r11, r11, r21
001c74  93882605  setlt.u r17, r13, r18
001c78  37e00800  beq r17, zero, 24
001c7c  93837604  setlt.u r7, r13, r7
001c80  3bec03fe  bneq r7, zero, -232
001c84  5b050000  j 40
001c88  93882605  setlt.u r17, r13, r18
001c8c  bbcf08fe  bneq r17, zero, -16
001c90  9b440501  srli r9, r10, 16
001c94  9b841400  andi r9, r9, 1
001c98  8b149510  add.s r9, r10, r9
001c9c  8b943410  add.s r9, r9, r3
001ca0  97845401  and r9, r9, r21
001ca4  93837604  setlt.u r7, r13, r7
001ca8  bbcb03fe  bneq r7, zero, -272
001cac  1b430101  srli r6, r2, 16
001cb0  1b031300  andi r6, r6, 1
001cb4  0b116110  add.s r2, r2, r6
001cb8  0b113110  add.s r2, r2, r3
001cbc  17035101  and r6, r2, r21
001cc0  5bdbffff  j -296
001cc4  80330002  core_id r7
001cc8  00200100  mfence { sm }
001ccc  63015fff  loadli.w r2,  -88(r30)
001cd0  3b220102  bneq r2, zero, 1160
001cd4  1f510000  addli r2, zero, 5
001cd8  bbe72302  bneq r7, r2, 1528
001cdc  1f015000  addli r2, zero, 40
001ce0  3d000000  xfence
001ce4  00a00300  mfence { lm, sm, gm }
001ce8  33030128  zext_int2long r[7:8], r2
001cec  5b030000  j 24
001cf0  6b538ffd  load.d r[7:8], -40(r30)
001cf4  6b548fff  load.d r[9:10], -8(r30)
001cf8  13216404  setlt.ul r2, r[9:10], r[7:8]
001cfc  27130400  addli.d r[7:8], r[9:10], 1
001d00  37150100  beq r2, zero, 324
001d04  1f710000  addli r2, zero, 7
001d08  b30c0028  zext_int2long r[26:27], zero
001d0c  733c6ffe  store.d r[7:8], -8(r30)
001d10  97372302  sll.d r[16:17], r[7:8], r2
001d14  db040000  j 36
001d18  a7cc0c00  addli.d r[26:27], r[26:27], 4
001d1c  8b937911  add.s r7, r19, r23
001d20  13a14c02  setneq.d r2, r[26:27], r[5:6]
001d24  73e66300  stores.w r6, 12(r7)
001d28  73e4a300  stores.w r10, 8(r7)
001d2c  73e21301  stores.w r17, 4(r7)
001d30  73e0c300  stores.w r12, 0(r7)
001d34  b77e01fe  beq r2, zero, -68
001d38  0ba3fc10  add.ul r[7:8], r[26:27], r[16:17]
001d3c  9b3b2300  slli r23, r6, 2
001d40  0b137c11  add.s r6, r24, r23
001d44  6f41c300  loads.w r2, 12(r6)
001d48  6f4e0300  loads.w r28, 0(r6)
001d4c  6f494300  loads.w r18, 4(r6)
001d50  ef458300  loads.w r11, 8(r6)
001d54  97031100  and r7, r2, r1
001d58  13037a04  setlt.u r6, r20, r7
001d5c  3b300300  bneq r6, zero, 12
001d60  1f030100  addli r6, r2, 0
001d64  5b010000  j 8
001d68  17136101  or r6, r2, r22
001d6c  978d1500  and r27, r11, r1
001d70  1304ba05  setlt.u r8, r20, r27
001d74  3b300400  bneq r8, zero, 12
001d78  1f850500  addli r10, r11, 0
001d7c  5b010000  j 8
001d80  17956501  or r10, r11, r22
001d84  17041900  and r8, r18, r1
001d88  93048a04  setlt.u r9, r20, r8
001d8c  3bb00400  bneq r9, zero, 12
001d90  9f080900  addli r17, r18, 0
001d94  5b010000  j 8
001d98  97186901  or r17, r18, r22
001d9c  97041e00  and r9, r28, r1
001da0  13069a04  setlt.u r12, r20, r9
001da4  3b500600  bneq r12, zero, 20
001da8  1f060e00  addli r12, r28, 0
001dac  93849604  setlt.u r9, r13, r9
001db0  37d00400  beq r9, zero, 20
001db4  db040000  j 36
001db8  17166e01  or r12, r28, r22
001dbc  93849604  setlt.u r9, r13, r9
001dc0  3be00400  bneq r9, zero, 24
001dc4  9b440e01  srli r9, r28, 16
001dc8  9b841400  andi r9, r9, 1
001dcc  8b149e10  add.s r9, r28, r9
001dd0  8b943410  add.s r9, r9, r3
001dd4  17865401  and r12, r9, r21
001dd8  13848604  setlt.u r8, r13, r8
001ddc  bb300400  bneq r8, zero, 44
001de0  1b440901  srli r8, r18, 16
001de4  1b041400  andi r8, r8, 1
001de8  0b148910  add.s r8, r18, r8
001dec  0b143410  add.s r8, r8, r3
001df0  97085401  and r17, r8, r21
001df4  1384b605  setlt.u r8, r13, r27
001df8  37600400  beq r8, zero, 24
001dfc  93837604  setlt.u r7, r13, r7
001e00  3bec03fe  bneq r7, zero, -232
001e04  5b050000  j 40
001e08  1384b605  setlt.u r8, r13, r27
001e0c  bb4f04fe  bneq r8, zero, -16
001e10  1bc40501  srli r8, r11, 16
001e14  1b041400  andi r8, r8, 1
001e18  0b948510  add.s r8, r11, r8
001e1c  0b143410  add.s r8, r8, r3
001e20  17055401  and r10, r8, r21
001e24  93837604  setlt.u r7, r13, r7
001e28  bbcb03fe  bneq r7, zero, -272
001e2c  1b430101  srli r6, r2, 16
001e30  1b031300  andi r6, r6, 1
001e34  0b116110  add.s r2, r2, r6
001e38  0b113110  add.s r2, r2, r3
001e3c  17035101  and r6, r2, r21
001e40  5bdbffff  j -296
001e44  80330002  core_id r7
001e48  00200100  mfence { sm }
001e4c  1f610000  addli r2, zero, 6
001e50  bbe72302  bneq r7, r2, 1528
001e54  db900000  j 1156
001e58  3d000000  xfence
001e5c  33030028  zext_int2long r[7:8], zero
001e60  00a00300  mfence { lm, sm, gm }
001e64  73386ffa  store.d r[7:8], -80(r30)
001e68  5b030000  j 24
001e6c  6b538ffb  load.d r[7:8], -72(r30)
001e70  6b540ffc  load.d r[9:10], -64(r30)
001e74  13216404  setlt.ul r2, r[9:10], r[7:8]
001e78  27130400  addli.d r[7:8], r[9:10], 1
001e7c  37150100  beq r2, zero, 324
001e80  1f710000  addli r2, zero, 7
001e84  eb5c0ffb  load.d r[26:27], -80(r30)
001e88  73306ffc  store.d r[7:8], -64(r30)
001e8c  97372302  sll.d r[16:17], r[7:8], r2
001e90  db040000  j 36
001e94  a7cc0c00  addli.d r[26:27], r[26:27], 4
001e98  8b937911  add.s r7, r19, r23
001e9c  13a14c02  setneq.d r2, r[26:27], r[5:6]
001ea0  73e66300  stores.w r6, 12(r7)
001ea4  73e4a300  stores.w r10, 8(r7)
001ea8  73e21301  stores.w r17, 4(r7)
001eac  73e0c300  stores.w r12, 0(r7)
001eb0  b77e01fe  beq r2, zero, -68
001eb4  0ba3fc10  add.ul r[7:8], r[26:27], r[16:17]
001eb8  9b3b2300  slli r23, r6, 2
001ebc  0b137c11  add.s r6, r24, r23
001ec0  6f41c300  loads.w r2, 12(r6)
001ec4  ef440300  loads.w r9, 0(r6)
001ec8  6f494300  loads.w r18, 4(r6)
001ecc  ef458300  loads.w r11, 8(r6)
001ed0  97031100  and r7, r2, r1
001ed4  13037a04  setlt.u r6, r20, r7
001ed8  3b300300  bneq r6, zero, 12
001edc  1f030100  addli r6, r2, 0
001ee0  5b010000  j 8
001ee4  17136101  or r6, r2, r22
001ee8  17841500  and r8, r11, r1
001eec  13058a04  setlt.u r10, r20, r8
001ef0  3b300500  bneq r10, zero, 12
001ef4  1f850500  addli r10, r11, 0
001ef8  5b010000  j 8
001efc  17956501  or r10, r11, r22
001f00  970d1900  and r27, r18, r1
001f04  1306ba05  setlt.u r12, r20, r27
001f08  3b300600  bneq r12, zero, 12
001f0c  9f080900  addli r17, r18, 0
001f10  5b010000  j 8
001f14  97186901  or r17, r18, r22
001f18  178e1400  and r28, r9, r1
001f1c  1306ca05  setlt.u r12, r20, r28
001f20  3b500600  bneq r12, zero, 20
001f24  1f860400  addli r12, r9, 0
001f28  138ec605  setlt.u r28, r13, r28
001f2c  37500e00  beq r28, zero, 20
001f30  db040000  j 36
001f34  17966401  or r12, r9, r22
001f38  138ec605  setlt.u r28, r13, r28
001f3c  3b600e00  bneq r28, zero, 24
001f40  1bc60401  srli r12, r9, 16
001f44  1b061600  andi r12, r12, 1
001f48  8b94c410  add.s r9, r9, r12
001f4c  8b943410  add.s r9, r9, r3
001f50  17865401  and r12, r9, r21
001f54  9384b605  setlt.u r9, r13, r27
001f58  bbb00400  bneq r9, zero, 44
001f5c  9b440901  srli r9, r18, 16
001f60  9b841400  andi r9, r9, 1
001f64  8b149910  add.s r9, r18, r9
001f68  8b943410  add.s r9, r9, r3
001f6c  97885401  and r17, r9, r21
001f70  13848604  setlt.u r8, r13, r8
001f74  37600400  beq r8, zero, 24
001f78  93837604  setlt.u r7, r13, r7
001f7c  3bec03fe  bneq r7, zero, -232
001f80  5b050000  j 40
001f84  13848604  setlt.u r8, r13, r8
001f88  bb4f04fe  bneq r8, zero, -16
001f8c  1bc40501  srli r8, r11, 16
001f90  1b041400  andi r8, r8, 1
001f94  0b948510  add.s r8, r11, r8
001f98  0b143410  add.s r8, r8, r3
001f9c  17055401  and r10, r8, r21
001fa0  93837604  setlt.u r7, r13, r7
001fa4  bbcb03fe  bneq r7, zero, -272
001fa8  1b430101  srli r6, r2, 16
001fac  1b031300  andi r6, r6, 1
001fb0  0b116110  add.s r2, r2, r6
001fb4  0b113110  add.s r2, r2, r3
001fb8  17035101  and r6, r2, r21
001fbc  5bdbffff  j -296
001fc0  80330002  core_id r7
001fc4  00200100  mfence { sm }
001fc8  1f110000  addli r2, zero, 1
001fcc  37c823fc  beq r7, r2, -1520
001fd0  63414fff  loadli.w r2,  -92(r30)
001fd4  370e01fc  beq r2, zero, -1152
001fd8  1f012000  addli r2, zero, 16
001fdc  3d000000  xfence
001fe0  00a00300  mfence { lm, sm, gm }
001fe4  33030128  zext_int2long r[7:8], r2
001fe8  5b030000  j 24
001fec  6b530fff  load.d r[7:8], -16(r30)
001ff0  6b548fff  load.d r[9:10], -8(r30)
001ff4  13216404  setlt.ul r2, r[9:10], r[7:8]
001ff8  27130400  addli.d r[7:8], r[9:10], 1
001ffc  37150100  beq r2, zero, 324
002000  1f710000  addli r2, zero, 7
002004  b3070028  zext_int2long r[16:17], zero
002008  733c6ffe  store.d r[7:8], -8(r30)
00200c  973c2302  sll.d r[26:27], r[7:8], r2
002010  db040000  j 36
002014  a7c70700  addli.d r[16:17], r[16:17], 4
002018  8b938910  add.s r7, r19, r8
00201c  13a14702  setneq.d r2, r[16:17], r[5:6]
002020  73e66300  stores.w r6, 12(r7)
002024  73e49300  stores.w r9, 8(r7)
002028  73e2b300  stores.w r11, 4(r7)
00202c  73e0c300  stores.w r12, 0(r7)
002030  b77e01fe  beq r2, zero, -68
002034  0ba39711  add.ul r[7:8], r[16:17], r[26:27]
002038  1b342300  slli r8, r6, 2
00203c  0b138c10  add.s r6, r24, r8
002040  6f41c300  loads.w r2, 12(r6)
002044  ef4b0300  loads.w r23, 0(r6)
002048  ef484300  loads.w r17, 4(r6)
00204c  6f458300  loads.w r10, 8(r6)
002050  97031100  and r7, r2, r1
002054  13037a04  setlt.u r6, r20, r7
002058  3b300300  bneq r6, zero, 12
00205c  1f030100  addli r6, r2, 0
002060  5b010000  j 8
002064  17136101  or r6, r2, r22
002068  17091500  and r18, r10, r1
00206c  93042a05  setlt.u r9, r20, r18
002070  3bb00400  bneq r9, zero, 12
002074  9f040500  addli r9, r10, 0
002078  5b010000  j 8
00207c  97146501  or r9, r10, r22
002080  978d1800  and r27, r17, r1
002084  9305ba05  setlt.u r11, r20, r27
002088  3bb00500  bneq r11, zero, 12
00208c  9f850800  addli r11, r17, 0
002090  5b010000  j 8
002094  97956801  or r11, r17, r22
002098  178e1b00  and r28, r23, r1
00209c  1306ca05  setlt.u r12, r20, r28
0020a0  3b500600  bneq r12, zero, 20
0020a4  1f860b00  addli r12, r23, 0
0020a8  138ec605  setlt.u r28, r13, r28
0020ac  37500e00  beq r28, zero, 20
0020b0  db040000  j 36
0020b4  17966b01  or r12, r23, r22
0020b8  138ec605  setlt.u r28, r13, r28
0020bc  3b600e00  bneq r28, zero, 24
0020c0  1bc60b01  srli r12, r23, 16
0020c4  1b061600  andi r12, r12, 1
0020c8  0b96cb10  add.s r12, r23, r12
0020cc  0b163610  add.s r12, r12, r3
0020d0  17065601  and r12, r12, r21
0020d4  938bb605  setlt.u r23, r13, r27
0020d8  bbb00b00  bneq r23, zero, 44
0020dc  9bc50801  srli r11, r17, 16
0020e0  9b851500  andi r11, r11, 1
0020e4  8b95b810  add.s r11, r17, r11
0020e8  8b953510  add.s r11, r11, r3
0020ec  97855501  and r11, r11, r21
0020f0  93882605  setlt.u r17, r13, r18
0020f4  37e00800  beq r17, zero, 24
0020f8  93837604  setlt.u r7, r13, r7
0020fc  3bec03fe  bneq r7, zero, -232
002100  5b050000  j 40
002104  93882605  setlt.u r17, r13, r18
002108  bbcf08fe  bneq r17, zero, -16
00210c  9b440501  srli r9, r10, 16
002110  9b841400  andi r9, r9, 1
002114  8b149510  add.s r9, r10, r9
002118  8b943410  add.s r9, r9, r3
00211c  97845401  and r9, r9, r21
002120  93837604  setlt.u r7, r13, r7
002124  bbcb03fe  bneq r7, zero, -272
002128  1b430101  srli r6, r2, 16
00212c  1b031300  andi r6, r6, 1
002130  0b116110  add.s r2, r2, r6
002134  0b113110  add.s r2, r2, r3
002138  17035101  and r6, r2, r21
00213c  5bdbffff  j -296
002140  80330002  core_id r7
002144  00200100  mfence { sm }
002148  1f310000  addli r2, zero, 3
00214c  37c823fc  beq r7, r2, -1520
002150  63015fff  loadli.w r2,  -88(r30)
002154  370e01fc  beq r2, zero, -1152
002158  1f014000  addli r2, zero, 32
00215c  3d000000  xfence
002160  00a00300  mfence { lm, sm, gm }
002164  33030128  zext_int2long r[7:8], r2
002168  5b030000  j 24
00216c  6b530ffe  load.d r[7:8], -32(r30)
002170  6b548fff  load.d r[9:10], -8(r30)
002174  13216404  setlt.ul r2, r[9:10], r[7:8]
002178  27130400  addli.d r[7:8], r[9:10], 1
00217c  37150100  beq r2, zero, 324
002180  1f710000  addli r2, zero, 7
002184  b30d0028  zext_int2long r[28:29], zero
002188  733c6ffe  store.d r[7:8], -8(r30)
00218c  973c2302  sll.d r[26:27], r[7:8], r2
002190  db040000  j 36
002194  a7cd0d00  addli.d r[28:29], r[28:29], 4
002198  8b938910  add.s r7, r19, r8
00219c  13a14d02  setneq.d r2, r[28:29], r[5:6]
0021a0  73e66300  stores.w r6, 12(r7)
0021a4  73e49300  stores.w r9, 8(r7)
0021a8  73e2b300  stores.w r11, 4(r7)
0021ac  73e0c300  stores.w r12, 0(r7)
0021b0  b77e01fe  beq r2, zero, -68
0021b4  0ba39d11  add.ul r[7:8], r[28:29], r[26:27]
0021b8  1b342300  slli r8, r6, 2
0021bc  0b138c10  add.s r6, r24, r8
0021c0  6f41c300  loads.w r2, 12(r6)
0021c4  ef4b0300  loads.w r23, 0(r6)
0021c8  ef484300  loads.w r17, 4(r6)
0021cc  6f458300  loads.w r10, 8(r6)
0021d0  97031100  and r7, r2, r1
0021d4  13037a04  setlt.u r6, r20, r7
0021d8  3b300300  bneq r6, zero, 12
0021dc  1f030100  addli r6, r2, 0
0021e0  5b010000  j 8
0021e4  17136101  or r6, r2, r22
0021e8  17091500  and r18, r10, r1
0021ec  93042a05  setlt.u r9, r20, r18
0021f0  3bb00400  bneq r9, zero, 12
0021f4  9f040500  addli r9, r10, 0
0021f8  5b010000  j 8
0021fc  97146501  or r9, r10, r22
002200  97871800  and r15, r17, r1
002204  9305fa04  setlt.u r11, r20, r15
002208  3bb00500  bneq r11, zero, 12
00220c  9f850800  addli r11, r17, 0
002210  5b010000  j 8
002214  97956801  or r11, r17, r22
002218  17881b00  and r16, r23, r1
00221c  13060a05  setlt.u r12, r20, r16
002220  3b500600  bneq r12, zero, 20
002224  1f860b00  addli r12, r23, 0
002228  13880605  setlt.u r16, r13, r16
00222c  37500800  beq r16, zero, 20
002230  db040000  j 36
002234  17966b01  or r12, r23, r22
002238  13880605  setlt.u r16, r13, r16
00223c  3b600800  bneq r16, zero, 24
002240  1bc60b01  srli r12, r23, 16
002244  1b061600  andi r12, r12, 1
002248  0b96cb10  add.s r12, r23, r12
00224c  0b163610  add.s r12, r12, r3
002250  17065601  and r12, r12, r21
002254  9387f604  setlt.u r15, r13, r15
002258  bbb00700  bneq r15, zero, 44
00225c  9bc50801  srli r11, r17, 16
002260  9b851500  andi r11, r11, 1
002264  8b95b810  add.s r11, r17, r11
002268  8b953510  add.s r11, r11, r3
00226c  97855501  and r11, r11, r21
002270  93872605  setlt.u r15, r13, r18
002274  37e00700  beq r15, zero, 24
002278  93837604  setlt.u r7, r13, r7
00227c  3bec03fe  bneq r7, zero, -232
002280  5b050000  j 40
002284  93872605  setlt.u r15, r13, r18
002288  bbcf07fe  bneq r15, zero, -16
00228c  9b440501  srli r9, r10, 16
002290  9b841400  andi r9, r9, 1
002294  8b149510  add.s r9, r10, r9
002298  8b943410  add.s r9, r9, r3
00229c  97845401  and r9, r9, r21
0022a0  93837604  setlt.u r7, r13, r7
0022a4  bbcb03fe  bneq r7, zero, -272
0022a8  1b430101  srli r6, r2, 16
0022ac  1b031300  andi r6, r6, 1
0022b0  0b116110  add.s r2, r2, r6
0022b4  0b113110  add.s r2, r2, r3
0022b8  17035101  and r6, r2, r21
0022bc  5bdbffff  j -296
0022c0  80330002  core_id r7
0022c4  00200100  mfence { sm }
0022c8  1f510000  addli r2, zero, 5
0022cc  37c823fc  beq r7, r2, -1520
0022d0  1f610000  addli r2, zero, 6
0022d4  bbd52300  bneq r7, r2, 372
0022d8  1f016000  addli r2, zero, 48
0022dc  3d000000  xfence
0022e0  00a00300  mfence { lm, sm, gm }
0022e4  33030128  zext_int2long r[7:8], r2
0022e8  5b030000  j 24
0022ec  6b530ffd  load.d r[7:8], -48(r30)
0022f0  6b548fff  load.d r[9:10], -8(r30)
0022f4  13216404  setlt.ul r2, r[9:10], r[7:8]
0022f8  27130400  addli.d r[7:8], r[9:10], 1
0022fc  37150100  beq r2, zero, 324
002300  1f710000  addli r2, zero, 7
002304  b3070028  zext_int2long r[16:17], zero
002308  733c6ffe  store.d r[7:8], -8(r30)
00230c  17342302  sll.d r[9:10], r[7:8], r2
002310  db040000  j 36
002314  a7c70700  addli.d r[16:17], r[16:17], 4
002318  0b937911  add.s r6, r19, r23
00231c  13a14702  setneq.d r2, r[16:17], r[5:6]
002320  73669301  stores.w r25, 12(r6)
002324  7364a300  stores.w r10, 8(r6)
002328  73621301  stores.w r17, 4(r6)
00232c  7360c300  stores.w r12, 0(r6)
002330  b77e01fe  beq r2, zero, -68
002334  0ba38710  add.ul r[7:8], r[16:17], r[9:10]
002338  9b3b2300  slli r23, r6, 2
00233c  0b137c11  add.s r6, r24, r23
002340  6f41c300  loads.w r2, 12(r6)
002344  6f4e0300  loads.w r28, 0(r6)
002348  6f494300  loads.w r18, 4(r6)
00234c  ef458300  loads.w r11, 8(r6)
002350  170d1100  and r26, r2, r1
002354  1303aa05  setlt.u r6, r20, r26
002358  3b300300  bneq r6, zero, 12
00235c  9f0c0100  addli r25, r2, 0
002360  5b010000  j 8
002364  971c6101  or r25, r2, r22
002368  978d1500  and r27, r11, r1
00236c  1303ba05  setlt.u r6, r20, r27
002370  3b300300  bneq r6, zero, 12
002374  1f850500  addli r10, r11, 0
002378  5b010000  j 8
00237c  17956501  or r10, r11, r22
002380  17031900  and r6, r18, r1
002384  93036a04  setlt.u r7, r20, r6
002388  3bb00300  bneq r7, zero, 12
00238c  9f080900  addli r17, r18, 0
002390  5b010000  j 8
002394  97186901  or r17, r18, r22
002398  97031e00  and r7, r28, r1
00239c  13067a04  setlt.u r12, r20, r7
0023a0  3b500600  bneq r12, zero, 20
0023a4  1f060e00  addli r12, r28, 0
0023a8  93837604  setlt.u r7, r13, r7
0023ac  37d00300  beq r7, zero, 20
0023b0  db040000  j 36
0023b4  17166e01  or r12, r28, r22
0023b8  93837604  setlt.u r7, r13, r7
0023bc  3be00300  bneq r7, zero, 24
0023c0  9b430e01  srli r7, r28, 16
0023c4  9b831300  andi r7, r7, 1
0023c8  8b137e10  add.s r7, r28, r7
0023cc  8b933310  add.s r7, r7, r3
0023d0  17865301  and r12, r7, r21
0023d4  13836604  setlt.u r6, r13, r6
0023d8  bb300300  bneq r6, zero, 44
0023dc  1b430901  srli r6, r18, 16
0023e0  1b031300  andi r6, r6, 1
0023e4  0b136910  add.s r6, r18, r6
0023e8  0b133310  add.s r6, r6, r3
0023ec  97085301  and r17, r6, r21
0023f0  1383b605  setlt.u r6, r13, r27
0023f4  37600300  beq r6, zero, 24
0023f8  1383a605  setlt.u r6, r13, r26
0023fc  3b6c03fe  bneq r6, zero, -232
002400  5b050000  j 40
002404  1383b605  setlt.u r6, r13, r27
002408  bb4f03fe  bneq r6, zero, -16
00240c  1bc30501  srli r6, r11, 16
002410  1b031300  andi r6, r6, 1
002414  0b936510  add.s r6, r11, r6
002418  0b133310  add.s r6, r6, r3
00241c  17055301  and r10, r6, r21
002420  1383a605  setlt.u r6, r13, r26
002424  bb4b03fe  bneq r6, zero, -272
002428  1b430101  srli r6, r2, 16
00242c  1b031300  andi r6, r6, 1
002430  0b116110  add.s r2, r2, r6
002434  0b113110  add.s r2, r2, r3
002438  970c5101  and r25, r2, r21
00243c  5bdbffff  j -296
002440  80330002  core_id r7
002444  00200100  mfence { sm }
002448  63415fff  loadli.w r2,  -84(r30)
00244c  33040028  zext_int2long r[9:10], zero
002450  73388ffe  store.d r[9:10], -16(r30)
002454  b7550100  beq r2, zero, 372
002458  1f017000  addli r2, zero, 56
00245c  3d000000  xfence
002460  00a00300  mfence { lm, sm, gm }
002464  33030128  zext_int2long r[7:8], r2
002468  5b030000  j 24
00246c  6b538ffc  load.d r[7:8], -56(r30)
002470  6b548fff  load.d r[9:10], -8(r30)
002474  13216404  setlt.ul r2, r[9:10], r[7:8]
002478  27130400  addli.d r[7:8], r[9:10], 1
00247c  37150100  beq r2, zero, 324
002480  1f710000  addli r2, zero, 7
002484  eb570fff  load.d r[16:17], -16(r30)
002488  733c6ffe  store.d r[7:8], -8(r30)
00248c  17352302  sll.d r[11:12], r[7:8], r2
002490  db040000  j 36
002494  a7c70700  addli.d r[16:17], r[16:17], 4
002498  0b937911  add.s r6, r19, r23
00249c  13a14702  setneq.d r2, r[16:17], r[5:6]
0024a0  73669301  stores.w r25, 12(r6)
0024a4  7364b301  stores.w r27, 8(r6)
0024a8  73621301  stores.w r17, 4(r6)
0024ac  7360c300  stores.w r12, 0(r6)
0024b0  b77e01fe  beq r2, zero, -68
0024b4  0ba3a710  add.ul r[7:8], r[16:17], r[11:12]
0024b8  9b3b2300  slli r23, r6, 2
0024bc  0b137c11  add.s r6, r24, r23
0024c0  6f41c300  loads.w r2, 12(r6)
0024c4  ef430300  loads.w r7, 0(r6)
0024c8  6f494300  loads.w r18, 4(r6)
0024cc  6f4e8300  loads.w r28, 8(r6)
0024d0  170d1100  and r26, r2, r1
0024d4  1303aa05  setlt.u r6, r20, r26
0024d8  3b300300  bneq r6, zero, 12
0024dc  9f0c0100  addli r25, r2, 0
0024e0  5b010000  j 8
0024e4  971c6101  or r25, r2, r22
0024e8  17031e00  and r6, r28, r1
0024ec  13046a04  setlt.u r8, r20, r6
0024f0  3b300400  bneq r8, zero, 12
0024f4  9f0d0e00  addli r27, r28, 0
0024f8  5b010000  j 8
0024fc  971d6e01  or r27, r28, r22
002500  17041900  and r8, r18, r1
002504  93048a04  setlt.u r9, r20, r8
002508  3bb00400  bneq r9, zero, 12
00250c  9f080900  addli r17, r18, 0
002510  5b010000  j 8
002514  97186901  or r17, r18, r22
002518  97841300  and r9, r7, r1
00251c  13069a04  setlt.u r12, r20, r9
002520  3b500600  bneq r12, zero, 20
002524  1f860300  addli r12, r7, 0
002528  93849604  setlt.u r9, r13, r9
00252c  37d00400  beq r9, zero, 20
002530  db040000  j 36
002534  17966301  or r12, r7, r22
002538  93849604  setlt.u r9, r13, r9
00253c  3be00400  bneq r9, zero, 24
002540  9bc40301  srli r9, r7, 16
002544  9b841400  andi r9, r9, 1
002548  8b939310  add.s r7, r7, r9
00254c  8b933310  add.s r7, r7, r3
002550  17865301  and r12, r7, r21
002554  93838604  setlt.u r7, r13, r8
002558  bbb00300  bneq r7, zero, 44
00255c  9b430901  srli r7, r18, 16
002560  9b831300  andi r7, r7, 1
002564  8b137910  add.s r7, r18, r7
002568  8b933310  add.s r7, r7, r3
00256c  97885301  and r17, r7, r21
002570  13836604  setlt.u r6, r13, r6
002574  37600300  beq r6, zero, 24
002578  1383a605  setlt.u r6, r13, r26
00257c  3b6c03fe  bneq r6, zero, -232
002580  5b050000  j 40
002584  13836604  setlt.u r6, r13, r6
002588  bb4f03fe  bneq r6, zero, -16
00258c  1b430e01  srli r6, r28, 16
002590  1b031300  andi r6, r6, 1
002594  0b136e10  add.s r6, r28, r6
002598  0b133310  add.s r6, r6, r3
00259c  970d5301  and r27, r6, r21
0025a0  1383a605  setlt.u r6, r13, r26
0025a4  bb4b03fe  bneq r6, zero, -272
0025a8  1b430101  srli r6, r2, 16
0025ac  1b031300  andi r6, r6, 1
0025b0  0b116110  add.s r2, r2, r6
0025b4  0b113110  add.s r2, r2, r3
0025b8  970c5101  and r25, r2, r21
0025bc  5bdbffff  j -296
0025c0  80330002  core_id r7
0025c4  00200100  mfence { sm }
0025c8  1f71f001  addli r2, zero, 255
0025cc  1f390000  addli r18, zero, 3
0025d0  80220104  csr_set csr5, r2
0025d4  00e00200  sync_core
0025d8  379223ef  beq r7, r18, -9084
0025dc  1f510000  addli r2, zero, 5
0025e0  1f068000  addli r12, zero, 64
0025e4  9f170000  addli r15, zero, 1
0025e8  1f780000  addli r16, zero, 7
0025ec  9f581000  addli r17, zero, 13
0025f0  9f4b0000  addli r23, zero, 4
0025f4  1f2c0000  addli r24, zero, 2
0025f8  00350002  core_id r10
0025fc  3ba12300  bneq r7, r2, 72
002600  1f112000  addli r2, zero, 17
002604  7d100100  xwait r2, 0
002608  1d000c00  lock zero, r24
00260c  2b01803f  lui r2, 260096
002610  8d070014  ew_cfg r15, zero, zero, 10
002614  0d000002  ew_cfg zero, zero, zero, 1
002618  0d110000  ewcoeff_cfg r2, zero, zero, 0
00261c  1f71f00f  addli r2, zero, 2047
002620  0d000104  ew_cfg zero, r2, zero, 2
002624  1f212000  addli r2, zero, 18
002628  8d0b0006  ew_cfg r23, zero, zero, 3
00262c  8d8b0b26  ew_cfg r23, r23, zero, 19
002630  ad893901  dsmadd r19, r19, r19, 0
002634  0d000014  ew_cfg zero, zero, zero, 10
002638  0d000026  ew_cfg zero, zero, zero, 19
00263c  1d100c00  unlock r24
002640  db88fbff  j -9148
002644  3b9103ee  bneq r7, zero, -9148
002648  6341fffe  loadli.w r2,  -132(r30)
00264c  6b540ff8  load.d r[9:10], -128(r30)
002650  eb5c8f01  load.d r[26:27], 24(r30)
002654  9f550000  addli r11, zero, 5
002658  6b530fff  load.d r[7:8], -16(r30)
00265c  1b316100  slli r2, r2, 6
002660  33120128  sext_int2long r[5:6], r2
002664  1f112000  addli r2, zero, 17
002668  17342402  sll.d r[9:10], r[9:10], r2
00266c  1f212000  addli r2, zero, 18
002670  0b336240  min.sl r[7:8], r[5:6], r[7:8]
002674  7d100100  xwait r2, 0
002678  1d800500  lock zero, r11
00267c  0ba48c10  add.ul r[9:10], r[26:27], r[9:10]
002680  27038300  addli.d r[7:8], r[7:8], 64
002684  2b410600  lui r2, 100
002688  eb5c8ff8  load.d r[26:27], -120(r30)
00268c  95870700  dma_cfg r15, r15, zero, 0
002690  15800702  dma_cfg zero, r15, zero, 1
002694  0b334348  max.sl r[7:8], r[7:8], r[5:6]
002698  1b110104  ori r2, r2, 64
00269c  0b249411  add.ul r[9:10], r[9:10], r[26:27]
0026a0  0b324318  sub.sl r[5:6], r[7:8], r[5:6]
0026a4  33030628  zext_int2long r[7:8], r12
0026a8  0b112710  add.s r2, r14, r2
0026ac  95040004  dma_cfg r9, zero, zero, 2
0026b0  0b326240  min.sl r[5:6], r[5:6], r[7:8]
0026b4  9f030001  addli r7, zero, 128
0026b8  eb5c0ff9  load.d r[26:27], -112(r30)
0026bc  1504c106  dma_cfg r8, r2, r12, 3
0026c0  1ff33c00  addli r6, r25, 31
0026c4  1b415300  srli r2, r6, 5
0026c8  1bb31c00  slli r6, r25, 1
0026cc  15862308  dma_cfg r12, r7, r2, 4
0026d0  1b01e303  andi r2, r6, 62
0026d4  1f030004  addli r6, zero, 512
0026d8  9f030010  addli r7, zero, 2048
0026dc  9503430a  dma_cfg r7, r6, r4, 5
0026e0  15002010  dma_cfg zero, zero, r2, 8
0026e4  35000000  dma_run zero
0026e8  1500f00a  dma_cfg zero, zero, r15, 5
0026ec  1f312000  addli r2, zero, 19
0026f0  15000010  dma_cfg zero, zero, zero, 8
0026f4  1d900500  unlock r11
0026f8  db71fbff  j -9332
0026fc  e70a0ffe  storeli.w zero, -88(r30)
002700  e74a0ffe  storeli.w zero, -84(r30)
002704  2b850000  lui r10, 8
002708  370a23f1  beq r6, r18, -7552
00270c  db51fcff  j -7540
002710  7d000000  xsignal zero, 0
002714  bb600500  bneq r10, zero, 56
002718  9f200000  addli r1, zero, 2
00271c  7d100000  xwait zero, 0
002720  7d100000  xwait zero, 0
002724  7d100000  xwait zero, 0
002728  7d100000  xwait zero, 0
00272c  7d100000  xwait zero, 0
002730  7d100000  xwait zero, 0
002734  7d100000  xwait zero, 0
002738  7d100000  xwait zero, 0
00273c  1d800000  lock zero, r1
002740  0d000020  ew_cfg zero, zero, zero, 16
002744  1d900000  unlock r1
002748  7d400000  xsignal_mode_cfg zero
00274c  9f8e2e01  addli sp, sp, 144
002750  00a00300  mfence { lm, sm, gm }
002754  00100000  exit
002758  00100000  exit
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
