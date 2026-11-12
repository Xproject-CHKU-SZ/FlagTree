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
00005c  9f494000  addli r19, zero, 36
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
0000b4  9f8eaefe  addli sp, sp, -176
0000b8  9f100000  addli r1, zero, 1
0000bc  00380002  core_id r16
0000c0  1f8fee00  addli r30, sp, 112
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600800  beq r16, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5b110000  j 136
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
000148  1f511000  addli r2, zero, 13
00014c  7d800000  xsignal r1, 0
000150  7d800000  xsignal r1, 0
000154  7d800000  xsignal r1, 0
000158  7d000100  xsignal r2, 0
00015c  7d000100  xsignal r2, 0
000160  7d000100  xsignal r2, 0
000164  e3003f00  loadli.w r1,  24(r30)
000168  63413f00  loadli.w r2,  28(r30)
00016c  00d20002  load_param_i r4, 1
000170  e3014f00  loadli.w r3,  32(r30)
000174  8b101120  mul.s r1, r2, r1
000178  1f010200  addli r2, r4, 0
00017c  0b913050  fmac.s r2, r1, r3
000180  8b913020  mul.s r3, r1, r3
000184  1f71f1ff  addli r2, r2, -1
000188  0b114130  div.s r2, r2, r4
00018c  00520002  load_param_i r4, 0
000190  8b104120  mul.s r1, r2, r4
000194  0b114150  fmac.s r2, r2, r4
000198  0b113140  min.s r2, r2, r3
00019c  4b66110a  ble.s r2, r1, 5528
0001a0  33110128  sext_int2long r[3:4], r2
0001a4  33930028  sext_int2long r[7:8], r1
0001a8  1f390000  addli r18, zero, 3
0001ac  9f7a0000  addli r21, zero, 7
0001b0  ab0b4000  lui r23, 1024
0001b4  2b02807f  lui r4, 522240
0001b8  ab02ffff  lui r5, 1048560
0001bc  9f050000  addli r11, zero, 0
0001c0  73302ffa  store.d r[3:4], -96(r30)
0001c4  1f71f00f  addli r2, zero, 2047
0001c8  ab80ffff  lui r1, 1048568
0001cc  733c1ff8  store.d r[2:3], -104(r30)
0001d0  abf0ff7f  lui r1, 524287
0001d4  2bf17f7f  lui r2, 522239
0001d8  9b96f0ff  ori r13, r1, 4095
0001dc  ab700000  lui r1, 7
0001e0  9b18f1ff  ori r17, r2, 4095
0001e4  1b97f0ff  ori r14, r1, 4095
0001e8  b3000028  zext_int2long r[2:3], zero
0001ec  73381ff8  store.d r[2:3], -112(r30)
0001f0  5b060000  j 48
0001f4  9f301000  addli r1, zero, 11
0001f8  7d800000  xsignal r1, 0
0001fc  9f401000  addli r1, zero, 12
000200  7d800000  xsignal r1, 0
000204  6b538ffd  load.d r[7:8], -40(r30)
000208  eb500ffa  load.d r[2:3], -96(r30)
00020c  e345cfff  loadli.w r11,  -28(r30)
000210  27130300  addli.d r[7:8], r[7:8], 1
000214  9f950500  addli r11, r11, 1
000218  93301304  setlt.sl r1, r[7:8], r[2:3]
00021c  37e4000a  beq r1, zero, 5400
000220  e3004f00  loadli.w r1,  32(r30)
000224  63413f00  loadli.w r2,  28(r30)
000228  9f011000  addli r3, zero, 8
00022c  733c6ffc  store.d r[7:8], -40(r30)
000230  8b101330  div.s r1, r6, r1
000234  0b952030  div.s r10, r1, r2
000238  9f008000  addli r1, zero, 64
00023c  8b171530  div.s r15, r10, r1
000240  9bb03700  slli r1, r15, 3
000244  0b911118  sub.s r2, r3, r1
000248  8b193140  min.s r19, r2, r3
00024c  0b113539  mod.s r2, r10, r19
000250  0b111110  add.s r2, r2, r1
000254  93802a04  setlt.u r1, r21, r2
000258  e74b2ffe  storeli.w r2, -68(r30)
00025c  b30a0128  zext_int2long r[22:23], r2
000260  1f411000  addli r2, zero, 12
000264  17b32a02  sll.d r[7:8], r[22:23], r2
000268  3bb00000  bneq r1, zero, 12
00026c  6b540ff9  load.d r[9:10], -112(r30)
000270  db010000  j 12
000274  eb508ff9  load.d r[2:3], -104(r30)
000278  17041302  and.d r[9:10], r[7:8], r[2:3]
00027c  1f8c0500  addli r24, r11, 0
000280  1f018003  addli r2, zero, 448
000284  9f610000  addli r3, zero, 6
000288  73305ffd  store.d r[22:23], -64(r30)
00028c  0b1a2c39  mod.s r20, r24, r18
000290  b30c0128  zext_int2long r[26:27], r2
000294  2b810100  lui r2, 24
000298  674e8fff  storeli.w r24, -28(r30)
00029c  73349fff  store.d r[26:27], -24(r30)
0002a0  9b30ea00  slli r1, r20, 14
0002a4  0b912010  add.s r2, r1, r2
0002a8  3b5b3800  bneq r16, r3, 724
0002ac  0b338318  sub.sl r[7:8], r[7:8], r[9:10]
0002b0  1f581000  addli r16, zero, 13
0002b4  1f390000  addli r18, zero, 3
0002b8  17533302  sra.d r[7:8], r[7:8], r3
0002bc  97b50a03  sll.d r[12:13], r[22:23], r16
0002c0  7d100900  xwait r18, 0
0002c4  0b349341  min.sl r[9:10], r[7:8], r[26:27]
0002c8  8b3a6418  sub.sl r[22:23], r[9:10], r[7:8]
0002cc  6b530f00  load.d r[7:8], 0(r30)
0002d0  8b23b310  add.ul r[8:9], r[7:8], r[12:13]
0002d4  1f838a00  addli r6, r21, 64
0002d8  9f7a0000  addli r21, zero, 7
0002dc  9f650000  addli r11, zero, 6
0002e0  1f260000  addli r12, zero, 2
0002e4  bf248601  blt.s r12, r24, 296
0002e8  9f540000  addli r9, zero, 5
0002ec  1f1b0000  addli r22, zero, 1
0002f0  9f410000  addli r3, zero, 4
0002f4  1f0c0001  addli r24, zero, 128
0002f8  1d800400  lock zero, r9
0002fc  15000014  dma_cfg zero, zero, zero, 10
000300  15006015  dma_cfg zero, zero, r22, 10
000304  1500c014  dma_cfg zero, zero, r12, 10
000308  15002015  dma_cfg zero, zero, r18, 10
00030c  15003014  dma_cfg zero, zero, r3, 10
000310  9f011000  addli r3, zero, 8
000314  15009014  dma_cfg zero, zero, r9, 10
000318  1500b014  dma_cfg zero, zero, r11, 10
00031c  15005015  dma_cfg zero, zero, r21, 10
000320  15003014  dma_cfg zero, zero, r3, 10
000324  9f111000  addli r3, zero, 9
000328  15003014  dma_cfg zero, zero, r3, 10
00032c  9f211000  addli r3, zero, 10
000330  15003014  dma_cfg zero, zero, r3, 10
000334  9f311000  addli r3, zero, 11
000338  15003014  dma_cfg zero, zero, r3, 10
00033c  9f411000  addli r3, zero, 12
000340  15003014  dma_cfg zero, zero, r3, 10
000344  9f611000  addli r3, zero, 14
000348  15000015  dma_cfg zero, zero, r16, 10
00034c  15003014  dma_cfg zero, zero, r3, 10
000350  9f711000  addli r3, zero, 15
000354  15003014  dma_cfg zero, zero, r3, 10
000358  9f012000  addli r3, zero, 16
00035c  15003014  dma_cfg zero, zero, r3, 10
000360  9f112000  addli r3, zero, 17
000364  15003014  dma_cfg zero, zero, r3, 10
000368  9f212000  addli r3, zero, 18
00036c  15003014  dma_cfg zero, zero, r3, 10
000370  9f312000  addli r3, zero, 19
000374  15003014  dma_cfg zero, zero, r3, 10
000378  9f412000  addli r3, zero, 20
00037c  15003014  dma_cfg zero, zero, r3, 10
000380  9f512000  addli r3, zero, 21
000384  15003014  dma_cfg zero, zero, r3, 10
000388  9f612000  addli r3, zero, 22
00038c  15003014  dma_cfg zero, zero, r3, 10
000390  9f712000  addli r3, zero, 23
000394  15003014  dma_cfg zero, zero, r3, 10
000398  9f013000  addli r3, zero, 24
00039c  15003014  dma_cfg zero, zero, r3, 10
0003a0  9f113000  addli r3, zero, 25
0003a4  15003014  dma_cfg zero, zero, r3, 10
0003a8  9f213000  addli r3, zero, 26
0003ac  15003014  dma_cfg zero, zero, r3, 10
0003b0  9f313000  addli r3, zero, 27
0003b4  15003014  dma_cfg zero, zero, r3, 10
0003b8  9f413000  addli r3, zero, 28
0003bc  15003014  dma_cfg zero, zero, r3, 10
0003c0  9f513000  addli r3, zero, 29
0003c4  15003014  dma_cfg zero, zero, r3, 10
0003c8  9f613000  addli r3, zero, 30
0003cc  15003014  dma_cfg zero, zero, r3, 10
0003d0  9f713000  addli r3, zero, 31
0003d4  15003014  dma_cfg zero, zero, r3, 10
0003d8  9f018000  addli r3, zero, 64
0003dc  150b0b00  dma_cfg r22, r22, zero, 0
0003e0  150b0002  dma_cfg r22, zero, zero, 1
0003e4  15000004  dma_cfg zero, zero, zero, 2
0003e8  15013006  dma_cfg r2, zero, r3, 3
0003ec  150cc008  dma_cfg r24, zero, r12, 4
0003f0  1f0c0002  addli r24, zero, 256
0003f4  150c300a  dma_cfg r24, zero, r3, 5
0003f8  15000010  dma_cfg zero, zero, zero, 8
0003fc  35000000  dma_run zero
000400  1500600b  dma_cfg zero, zero, r22, 5
000404  15000010  dma_cfg zero, zero, zero, 8
000408  1d900400  unlock r9
00040c  ab810100  lui r3, 24
000410  1f4c0000  addli r24, zero, 4
000414  e74c0ffe  storeli.w zero, -52(r30)
000418  1f1b0000  addli r22, zero, 1
00041c  9f048000  addli r9, zero, 64
000420  9f0c0002  addli r25, zero, 256
000424  9b910104  ori r3, r3, 64
000428  1d000c00  lock zero, r24
00042c  150b0b00  dma_cfg r22, r22, zero, 0
000430  8b913010  add.s r3, r1, r3
000434  15000404  dma_cfg zero, r8, zero, 2
000438  95819306  dma_cfg r3, r7, r9, 3
00043c  1f040001  addli r8, zero, 128
000440  9f530000  addli r7, zero, 5
000444  9f011000  addli r3, zero, 8
000448  1584c408  dma_cfg r8, r9, r12, 4
00044c  950c640a  dma_cfg r25, r8, r6, 5
000450  15000010  dma_cfg zero, zero, zero, 8
000454  35000000  dma_run zero
000458  1500600b  dma_cfg zero, zero, r22, 5
00045c  15000010  dma_cfg zero, zero, zero, 8
000460  1d100c00  unlock r24
000464  1d800300  lock zero, r7
000468  15000014  dma_cfg zero, zero, zero, 10
00046c  15006015  dma_cfg zero, zero, r22, 10
000470  1500c014  dma_cfg zero, zero, r12, 10
000474  15002015  dma_cfg zero, zero, r18, 10
000478  15008015  dma_cfg zero, zero, r24, 10
00047c  15007014  dma_cfg zero, zero, r7, 10
000480  1500b014  dma_cfg zero, zero, r11, 10
000484  15005015  dma_cfg zero, zero, r21, 10
000488  15003014  dma_cfg zero, zero, r3, 10
00048c  9f111000  addli r3, zero, 9
000490  15003014  dma_cfg zero, zero, r3, 10
000494  9f211000  addli r3, zero, 10
000498  15003014  dma_cfg zero, zero, r3, 10
00049c  9f311000  addli r3, zero, 11
0004a0  15003014  dma_cfg zero, zero, r3, 10
0004a4  9f411000  addli r3, zero, 12
0004a8  15003014  dma_cfg zero, zero, r3, 10
0004ac  9f611000  addli r3, zero, 14
0004b0  15000015  dma_cfg zero, zero, r16, 10
0004b4  00380002  core_id r16
0004b8  15003014  dma_cfg zero, zero, r3, 10
0004bc  9f711000  addli r3, zero, 15
0004c0  15003014  dma_cfg zero, zero, r3, 10
0004c4  9f012000  addli r3, zero, 16
0004c8  15003014  dma_cfg zero, zero, r3, 10
0004cc  9f112000  addli r3, zero, 17
0004d0  15003014  dma_cfg zero, zero, r3, 10
0004d4  9f212000  addli r3, zero, 18
0004d8  15003014  dma_cfg zero, zero, r3, 10
0004dc  9f312000  addli r3, zero, 19
0004e0  15003014  dma_cfg zero, zero, r3, 10
0004e4  9f412000  addli r3, zero, 20
0004e8  15003014  dma_cfg zero, zero, r3, 10
0004ec  9f512000  addli r3, zero, 21
0004f0  15003014  dma_cfg zero, zero, r3, 10
0004f4  9f612000  addli r3, zero, 22
0004f8  15003014  dma_cfg zero, zero, r3, 10
0004fc  9f712000  addli r3, zero, 23
000500  15003014  dma_cfg zero, zero, r3, 10
000504  9f013000  addli r3, zero, 24
000508  15003014  dma_cfg zero, zero, r3, 10
00050c  9f113000  addli r3, zero, 25
000510  15003014  dma_cfg zero, zero, r3, 10
000514  9f213000  addli r3, zero, 26
000518  15003014  dma_cfg zero, zero, r3, 10
00051c  9f313000  addli r3, zero, 27
000520  15003014  dma_cfg zero, zero, r3, 10
000524  9f413000  addli r3, zero, 28
000528  15003014  dma_cfg zero, zero, r3, 10
00052c  9f513000  addli r3, zero, 29
000530  15003014  dma_cfg zero, zero, r3, 10
000534  9f613000  addli r3, zero, 30
000538  15003014  dma_cfg zero, zero, r3, 10
00053c  9f713000  addli r3, zero, 31
000540  15003014  dma_cfg zero, zero, r3, 10
000544  150b0b00  dma_cfg r22, r22, zero, 0
000548  150b0002  dma_cfg r22, zero, zero, 1
00054c  15000004  dma_cfg zero, zero, zero, 2
000550  15019006  dma_cfg r2, zero, r9, 3
000554  1504c008  dma_cfg r8, zero, r12, 4
000558  950c600a  dma_cfg r25, zero, r6, 5
00055c  15000010  dma_cfg zero, zero, zero, 8
000560  35000000  dma_run zero
000564  1500600b  dma_cfg zero, zero, r22, 5
000568  15000010  dma_cfg zero, zero, zero, 8
00056c  1d900300  unlock r7
000570  7d000600  xsignal r12, 0
000574  eb5c8ffe  load.d r[26:27], -24(r30)
000578  db0b0000  j 92
00057c  9f210000  addli r3, zero, 2
000580  3b213800  bneq r16, r3, 72
000584  1f530000  addli r6, zero, 5
000588  7d900100  xwait r3, 0
00058c  7d100300  xwait r6, 0
000590  1d000000  lock zero, zero
000594  81010000  ds_cfg r3, zero, 0
000598  9f018000  addli r3, zero, 64
00059c  81010002  ds_cfg r3, zero, 1
0005a0  8101001c  ds_cfg r3, zero, 14
0005a4  8101001a  ds_cfg r3, zero, 13
0005a8  a1103102  shuffle_batch r1, r2, r3, 1
0005ac  1f110000  addli r2, zero, 1
0005b0  1d100000  unlock zero
0005b4  7d000900  xsignal r18, 0
0005b8  e74c2ffe  storeli.w r2, -52(r30)
0005bc  1f410000  addli r2, zero, 4
0005c0  7d000100  xsignal r2, 0
0005c4  5b010000  j 8
0005c8  e74c0ffe  storeli.w zero, -52(r30)
0005cc  9f7a0000  addli r21, zero, 7
0005d0  1f1b0000  addli r22, zero, 1
0005d4  1bb16700  slli r2, r15, 6
0005d8  9f150000  addli r11, zero, 1
0005dc  0b112518  sub.s r2, r10, r2
0005e0  1b35fa00  slli r10, r20, 15
0005e4  0b163131  div.s r12, r2, r19
0005e8  33010628  zext_int2long r[3:4], r12
0005ec  e74acffe  storeli.w r12, -84(r30)
0005f0  17335103  sll.d r[7:8], r[3:4], r21
0005f4  2b410200  lui r2, 36
0005f8  97396303  sll.d r[20:21], r[7:8], r22
0005fc  0b112510  add.s r2, r10, r2
000600  73383ffb  store.d r[20:21], -80(r30)
000604  bb3ab800  bneq r16, r11, 684
000608  6b538f00  load.d r[7:8], 8(r30)
00060c  7d900a00  xwait r21, 0
000610  e340cfff  loadli.w r1,  -28(r30)
000614  9f018000  addli r3, zero, 64
000618  1f240000  addli r8, zero, 2
00061c  1f460000  addli r12, zero, 4
000620  9f070001  addli r15, zero, 128
000624  0b233311  add.ul r[7:8], r[7:8], r[20:21]
000628  bf041400  blt.s r8, r1, 288
00062c  9f540000  addli r9, zero, 5
000630  9f600000  addli r1, zero, 6
000634  1d800400  lock zero, r9
000638  15000014  dma_cfg zero, zero, zero, 10
00063c  1500b014  dma_cfg zero, zero, r11, 10
000640  15008014  dma_cfg zero, zero, r8, 10
000644  15002015  dma_cfg zero, zero, r18, 10
000648  1500c014  dma_cfg zero, zero, r12, 10
00064c  15009014  dma_cfg zero, zero, r9, 10
000650  15001014  dma_cfg zero, zero, r1, 10
000654  9f001000  addli r1, zero, 8
000658  15005015  dma_cfg zero, zero, r21, 10
00065c  15001014  dma_cfg zero, zero, r1, 10
000660  9f101000  addli r1, zero, 9
000664  15001014  dma_cfg zero, zero, r1, 10
000668  9f201000  addli r1, zero, 10
00066c  15001014  dma_cfg zero, zero, r1, 10
000670  9f301000  addli r1, zero, 11
000674  15001014  dma_cfg zero, zero, r1, 10
000678  9f401000  addli r1, zero, 12
00067c  15001014  dma_cfg zero, zero, r1, 10
000680  9f501000  addli r1, zero, 13
000684  15001014  dma_cfg zero, zero, r1, 10
000688  9f601000  addli r1, zero, 14
00068c  15001014  dma_cfg zero, zero, r1, 10
000690  9f701000  addli r1, zero, 15
000694  15001014  dma_cfg zero, zero, r1, 10
000698  9f002000  addli r1, zero, 16
00069c  15001014  dma_cfg zero, zero, r1, 10
0006a0  9f102000  addli r1, zero, 17
0006a4  15001014  dma_cfg zero, zero, r1, 10
0006a8  9f202000  addli r1, zero, 18
0006ac  15001014  dma_cfg zero, zero, r1, 10
0006b0  9f302000  addli r1, zero, 19
0006b4  15001014  dma_cfg zero, zero, r1, 10
0006b8  9f402000  addli r1, zero, 20
0006bc  15001014  dma_cfg zero, zero, r1, 10
0006c0  9f502000  addli r1, zero, 21
0006c4  15001014  dma_cfg zero, zero, r1, 10
0006c8  9f602000  addli r1, zero, 22
0006cc  15001014  dma_cfg zero, zero, r1, 10
0006d0  9f702000  addli r1, zero, 23
0006d4  15001014  dma_cfg zero, zero, r1, 10
0006d8  9f003000  addli r1, zero, 24
0006dc  15001014  dma_cfg zero, zero, r1, 10
0006e0  9f103000  addli r1, zero, 25
0006e4  15001014  dma_cfg zero, zero, r1, 10
0006e8  9f203000  addli r1, zero, 26
0006ec  15001014  dma_cfg zero, zero, r1, 10
0006f0  9f303000  addli r1, zero, 27
0006f4  15001014  dma_cfg zero, zero, r1, 10
0006f8  9f403000  addli r1, zero, 28
0006fc  15001014  dma_cfg zero, zero, r1, 10
000700  9f503000  addli r1, zero, 29
000704  15001014  dma_cfg zero, zero, r1, 10
000708  9f603000  addli r1, zero, 30
00070c  15001014  dma_cfg zero, zero, r1, 10
000710  9f703000  addli r1, zero, 31
000714  15001014  dma_cfg zero, zero, r1, 10
000718  9f000004  addli r1, zero, 512
00071c  95850500  dma_cfg r11, r11, zero, 0
000720  95050002  dma_cfg r11, zero, zero, 1
000724  15000004  dma_cfg zero, zero, zero, 2
000728  15013006  dma_cfg r2, zero, r3, 3
00072c  9507c008  dma_cfg r15, zero, r12, 4
000730  9500300a  dma_cfg r1, zero, r3, 5
000734  15000010  dma_cfg zero, zero, zero, 8
000738  35000000  dma_run zero
00073c  1500b00a  dma_cfg zero, zero, r11, 5
000740  15000010  dma_cfg zero, zero, zero, 8
000744  1d900400  unlock r9
000748  ab400200  lui r1, 36
00074c  674d0ffe  storeli.w zero, -44(r30)
000750  670d0ffe  storeli.w zero, -48(r30)
000754  9f040004  addli r9, zero, 512
000758  1d000600  lock zero, r12
00075c  9b900004  ori r1, r1, 64
000760  95850500  dma_cfg r11, r11, zero, 0
000764  15800304  dma_cfg zero, r7, zero, 2
000768  8b101510  add.s r1, r10, r1
00076c  95003306  dma_cfg r1, r6, r3, 3
000770  9f000010  addli r1, zero, 2048
000774  9f530000  addli r7, zero, 5
000778  1f630000  addli r6, zero, 6
00077c  9587c108  dma_cfg r15, r3, r12, 4
000780  9584300a  dma_cfg r9, r1, r3, 5
000784  9f001000  addli r1, zero, 8
000788  15000010  dma_cfg zero, zero, zero, 8
00078c  35000000  dma_run zero
000790  1500b00a  dma_cfg zero, zero, r11, 5
000794  15000010  dma_cfg zero, zero, zero, 8
000798  1d100600  unlock r12
00079c  1d800300  lock zero, r7
0007a0  15000014  dma_cfg zero, zero, zero, 10
0007a4  1500b014  dma_cfg zero, zero, r11, 10
0007a8  15008014  dma_cfg zero, zero, r8, 10
0007ac  15002015  dma_cfg zero, zero, r18, 10
0007b0  1500c014  dma_cfg zero, zero, r12, 10
0007b4  15007014  dma_cfg zero, zero, r7, 10
0007b8  15006014  dma_cfg zero, zero, r6, 10
0007bc  15005015  dma_cfg zero, zero, r21, 10
0007c0  15001014  dma_cfg zero, zero, r1, 10
0007c4  9f101000  addli r1, zero, 9
0007c8  15001014  dma_cfg zero, zero, r1, 10
0007cc  9f201000  addli r1, zero, 10
0007d0  15001014  dma_cfg zero, zero, r1, 10
0007d4  9f301000  addli r1, zero, 11
0007d8  15001014  dma_cfg zero, zero, r1, 10
0007dc  9f401000  addli r1, zero, 12
0007e0  15001014  dma_cfg zero, zero, r1, 10
0007e4  9f501000  addli r1, zero, 13
0007e8  15001014  dma_cfg zero, zero, r1, 10
0007ec  9f601000  addli r1, zero, 14
0007f0  15001014  dma_cfg zero, zero, r1, 10
0007f4  9f701000  addli r1, zero, 15
0007f8  15001014  dma_cfg zero, zero, r1, 10
0007fc  9f002000  addli r1, zero, 16
000800  15001014  dma_cfg zero, zero, r1, 10
000804  9f102000  addli r1, zero, 17
000808  15001014  dma_cfg zero, zero, r1, 10
00080c  9f202000  addli r1, zero, 18
000810  15001014  dma_cfg zero, zero, r1, 10
000814  9f302000  addli r1, zero, 19
000818  15001014  dma_cfg zero, zero, r1, 10
00081c  9f402000  addli r1, zero, 20
000820  15001014  dma_cfg zero, zero, r1, 10
000824  9f502000  addli r1, zero, 21
000828  15001014  dma_cfg zero, zero, r1, 10
00082c  9f602000  addli r1, zero, 22
000830  15001014  dma_cfg zero, zero, r1, 10
000834  9f702000  addli r1, zero, 23
000838  15001014  dma_cfg zero, zero, r1, 10
00083c  9f003000  addli r1, zero, 24
000840  15001014  dma_cfg zero, zero, r1, 10
000844  9f103000  addli r1, zero, 25
000848  15001014  dma_cfg zero, zero, r1, 10
00084c  9f203000  addli r1, zero, 26
000850  15001014  dma_cfg zero, zero, r1, 10
000854  9f303000  addli r1, zero, 27
000858  15001014  dma_cfg zero, zero, r1, 10
00085c  9f403000  addli r1, zero, 28
000860  15001014  dma_cfg zero, zero, r1, 10
000864  9f503000  addli r1, zero, 29
000868  15001014  dma_cfg zero, zero, r1, 10
00086c  9f603000  addli r1, zero, 30
000870  15001014  dma_cfg zero, zero, r1, 10
000874  9f703000  addli r1, zero, 31
000878  15001014  dma_cfg zero, zero, r1, 10
00087c  95850500  dma_cfg r11, r11, zero, 0
000880  95050002  dma_cfg r11, zero, zero, 1
000884  15000004  dma_cfg zero, zero, zero, 2
000888  15013006  dma_cfg r2, zero, r3, 3
00088c  9507c008  dma_cfg r15, zero, r12, 4
000890  9504300a  dma_cfg r9, zero, r3, 5
000894  15000010  dma_cfg zero, zero, zero, 8
000898  35000000  dma_run zero
00089c  1500b00a  dma_cfg zero, zero, r11, 5
0008a0  15000010  dma_cfg zero, zero, zero, 8
0008a4  1d900300  unlock r7
0008a8  7d000300  xsignal r6, 0
0008ac  5b210000  j 264
0008b0  1f048000  addli r8, zero, 64
0008b4  9f210000  addli r3, zero, 2
0008b8  9f440000  addli r9, zero, 4
0008bc  1f030001  addli r6, zero, 128
0008c0  37419800  beq r16, r9, 80
0008c4  3b235801  bneq r16, r21, 200
0008c8  9f600000  addli r1, zero, 6
0008cc  670d0ffe  storeli.w zero, -48(r30)
0008d0  7d900000  xwait r1, 0
0008d4  9f101000  addli r1, zero, 9
0008d8  7d900000  xwait r1, 0
0008dc  1d000000  lock zero, zero
0008e0  9f100000  addli r1, zero, 1
0008e4  81010000  ds_cfg r3, zero, 0
0008e8  01030002  ds_cfg r6, zero, 1
0008ec  0104001c  ds_cfg r8, zero, 14
0008f0  0103001a  ds_cfg r6, zero, 13
0008f4  41058104  shuffle_coa r10, r2, r8, 2
0008f8  1d100000  unlock zero
0008fc  7d800a00  xsignal r21, 0
000900  674d1ffe  storeli.w r1, -44(r30)
000904  9f001000  addli r1, zero, 8
000908  7d800000  xsignal r1, 0
00090c  5b150000  j 168
000910  1f011000  addli r2, zero, 8
000914  7d900400  xwait r9, 0
000918  1f030000  addli r6, zero, 0
00091c  9f110000  addli r3, zero, 1
000920  9f331000  addli r7, zero, 11
000924  7d100100  xwait r2, 0
000928  1f110000  addli r2, zero, 1
00092c  7d900300  xwait r7, 0
000930  9b33e300  slli r7, r6, 14
000934  1b338300  slli r6, r6, 8
000938  1d000100  lock zero, r2
00093c  09048400  mm_cfg r8, r8, r8, 0
000940  9793a300  or r7, r7, r10
000944  1713a300  or r6, r6, r10
000948  89842404  mm_cfg r9, r9, r2, 2
00094c  29837010  mm r6, r1, r7, 8
000950  9b831100  andi r7, r3, 1
000954  1f130000  addli r6, zero, 1
000958  9f010000  addli r3, zero, 0
00095c  1d100100  unlock r2
000960  3bcf03fe  bneq r7, zero, -48
000964  9f500000  addli r1, zero, 5
000968  674d0ffe  storeli.w zero, -44(r30)
00096c  7d800000  xsignal r1, 0
000970  9f101000  addli r1, zero, 9
000974  7d800000  xsignal r1, 0
000978  9f100000  addli r1, zero, 1
00097c  670d1ffe  storeli.w r1, -48(r30)
000980  9f201000  addli r1, zero, 10
000984  7d800000  xsignal r1, 0
000988  db050000  j 44
00098c  bb002801  bneq r16, r18, 32
000990  9f201000  addli r1, zero, 10
000994  674d0ffe  storeli.w zero, -44(r30)
000998  670d0ffe  storeli.w zero, -48(r30)
00099c  7d900000  xwait r1, 0
0009a0  9f501000  addli r1, zero, 13
0009a4  7d900000  xwait r1, 0
0009a8  db010000  j 12
0009ac  674d0ffe  storeli.w zero, -44(r30)
0009b0  670d0ffe  storeli.w zero, -48(r30)
0009b4  abc00300  lui r1, 60
0009b8  3d000000  xfence
0009bc  00a00300  mfence { lm, sm, gm }
0009c0  8b171510  add.s r15, r10, r1
0009c4  9f70f001  addli r1, zero, 255
0009c8  80a20004  csr_set csr5, r1
0009cc  9f000001  addli r1, zero, 128
0009d0  00e00200  sync_core
0009d4  b3890028  zext_int2long r[20:21], r1
0009d8  b7700800  beq r16, zero, 60
0009dc  9f100000  addli r1, zero, 1
0009e0  b7661800  beq r16, r1, 440
0009e4  e3409fff  loadli.w r1,  -52(r30)
0009e8  bbec0000  bneq r1, zero, 824
0009ec  b7622803  beq r16, r18, 1208
0009f0  e300afff  loadli.w r1,  -48(r30)
0009f4  bbe80002  bneq r1, zero, 1592
0009f8  9f500000  addli r1, zero, 5
0009fc  b76e1802  beq r16, r1, 1976
000a00  9f600000  addli r1, zero, 6
000a04  b7641804  beq r16, r1, 2360
000a08  e340afff  loadli.w r1,  -44(r30)
000a0c  bbea0004  bneq r1, zero, 2744
000a10  db860100  j 3124
000a14  b3000028  zext_int2long r[2:3], zero
000a18  3d000000  xfence
000a1c  00a00300  mfence { lm, sm, gm }
000a20  73381ffe  store.d r[2:3], -16(r30)
000a24  27810000  addli.d r[3:4], r[2:3], 0
000a28  db030000  j 28
000a2c  9f7a0000  addli r21, zero, 7
000a30  6b538fff  load.d r[7:8], -8(r30)
000a34  b3800a28  zext_int2long r[2:3], r21
000a38  93201304  setlt.ul r1, r[7:8], r[2:3]
000a3c  27110300  addli.d r[3:4], r[7:8], 1
000a40  37850000  beq r1, zero, 320
000a44  17345103  sll.d r[9:10], r[3:4], r21
000a48  eb5a0fff  load.d r[22:23], -16(r30)
000a4c  733c2ffe  store.d r[3:4], -8(r30)
000a50  db040000  j 36
000a54  a7ca0a00  addli.d r[22:23], r[22:23], 4
000a58  0b91c710  add.s r2, r15, r12
000a5c  93a03a03  setneq.d r1, r[22:23], r[20:21]
000a60  73663100  stores.w r3, 12(r2)
000a64  73642101  stores.w r18, 8(r2)
000a68  7362a101  stores.w r26, 4(r2)
000a6c  73606100  stores.w r6, 0(r2)
000a70  b7fe00fe  beq r1, zero, -68
000a74  8ba08a10  add.ul r[2:3], r[22:23], r[9:10]
000a78  1bb62000  slli r12, r1, 2
000a7c  8b10c510  add.s r1, r10, r12
000a80  6fcec000  loads.w r28, 12(r1)
000a84  6fc80000  loads.w r16, 0(r1)
000a88  efcd4000  loads.w r27, 4(r1)
000a8c  efcc8000  loads.w r25, 8(r1)
000a90  170cde00  and r24, r28, r13
000a94  93008205  setlt.u r1, r4, r24
000a98  3bb00000  bneq r1, zero, 12
000a9c  9f010e00  addli r3, r28, 0
000aa0  5b010000  j 8
000aa4  97117e01  or r3, r28, r23
000aa8  9785dc00  and r11, r25, r13
000aac  9300b204  setlt.u r1, r4, r11
000ab0  3bb00000  bneq r1, zero, 12
000ab4  1f890c00  addli r18, r25, 0
000ab8  5b010000  j 8
000abc  17997c01  or r18, r25, r23
000ac0  9783dd00  and r7, r27, r13
000ac4  93007204  setlt.u r1, r4, r7
000ac8  3bb00000  bneq r1, zero, 12
000acc  1f8d0d00  addli r26, r27, 0
000ad0  5b010000  j 8
000ad4  179d7d01  or r26, r27, r23
000ad8  9700d800  and r1, r16, r13
000adc  13011204  setlt.u r2, r4, r1
000ae0  3b500100  bneq r2, zero, 20
000ae4  1f030800  addli r6, r16, 0
000ae8  93801804  setlt.u r1, r17, r1
000aec  37d00000  beq r1, zero, 20
000af0  db040000  j 36
000af4  17137801  or r6, r16, r23
000af8  93801804  setlt.u r1, r17, r1
000afc  3be00000  bneq r1, zero, 24
000b00  9b400801  srli r1, r16, 16
000b04  9b801000  andi r1, r1, 1
000b08  8b101810  add.s r1, r16, r1
000b0c  8b90e010  add.s r1, r1, r14
000b10  17835000  and r6, r1, r5
000b14  93807804  setlt.u r1, r17, r7
000b18  37e00000  beq r1, zero, 24
000b1c  9380b804  setlt.u r1, r17, r11
000b20  b7b00000  beq r1, zero, 44
000b24  93808805  setlt.u r1, r17, r24
000b28  bbbc00fe  bneq r1, zero, -212
000b2c  db070000  j 60
000b30  9bc00d01  srli r1, r27, 16
000b34  9b801000  andi r1, r1, 1
000b38  8b901d10  add.s r1, r27, r1
000b3c  8b90e010  add.s r1, r1, r14
000b40  178d5000  and r26, r1, r5
000b44  9380b804  setlt.u r1, r17, r11
000b48  3bff00fe  bneq r1, zero, -36
000b4c  9bc00c01  srli r1, r25, 16
000b50  9b801000  andi r1, r1, 1
000b54  8b901c10  add.s r1, r25, r1
000b58  8b90e010  add.s r1, r1, r14
000b5c  17895000  and r18, r1, r5
000b60  93808805  setlt.u r1, r17, r24
000b64  bbcb00fe  bneq r1, zero, -272
000b68  9b400e01  srli r1, r28, 16
000b6c  9b801000  andi r1, r1, 1
000b70  8b101e10  add.s r1, r28, r1
000b74  8b90e010  add.s r1, r1, r14
000b78  97815000  and r3, r1, r5
000b7c  5bdbffff  j -296
000b80  00200100  mfence { sm }
000b84  00380002  core_id r16
000b88  1f390000  addli r18, zero, 3
000b8c  eb5c8ffe  load.d r[26:27], -24(r30)
000b90  9f100000  addli r1, zero, 1
000b94  3b4918fe  bneq r16, r1, -432
000b98  9f001000  addli r1, zero, 8
000b9c  3d000000  xfence
000ba0  00a00300  mfence { lm, sm, gm }
000ba4  33810028  zext_int2long r[3:4], r1
000ba8  5b040000  j 32
000bac  9f701000  addli r1, zero, 15
000bb0  6b538fff  load.d r[7:8], -8(r30)
000bb4  9f7a0000  addli r21, zero, 7
000bb8  b3800028  zext_int2long r[2:3], r1
000bbc  93201304  setlt.ul r1, r[7:8], r[2:3]
000bc0  27110300  addli.d r[3:4], r[7:8], 1
000bc4  37950000  beq r1, zero, 324
000bc8  9f700000  addli r1, zero, 7
000bcc  33040028  zext_int2long r[9:10], zero
000bd0  733c2ffe  store.d r[3:4], -8(r30)
000bd4  973a1102  sll.d r[22:23], r[3:4], r1
000bd8  db040000  j 36
000bdc  27440400  addli.d r[9:10], r[9:10], 4
000be0  0b916710  add.s r2, r15, r6
000be4  93203403  setneq.d r1, r[9:10], r[20:21]
000be8  73663100  stores.w r3, 12(r2)
000bec  73648101  stores.w r24, 8(r2)
000bf0  73629101  stores.w r25, 4(r2)
000bf4  73600101  stores.w r16, 0(r2)
000bf8  b7de00fe  beq r1, zero, -76
000bfc  8b205411  add.ul r[2:3], r[9:10], r[22:23]
000c00  1bb32000  slli r6, r1, 2
000c04  8b106510  add.s r1, r10, r6
000c08  efc3c000  loads.w r7, 12(r1)
000c0c  efcd0000  loads.w r27, 0(r1)
000c10  6fcd4000  loads.w r26, 4(r1)
000c14  6fc98000  loads.w r18, 8(r1)
000c18  1786d300  and r12, r7, r13
000c1c  9300c204  setlt.u r1, r4, r12
000c20  3bb00000  bneq r1, zero, 12
000c24  9f810300  addli r3, r7, 0
000c28  5b010000  j 8
000c2c  97917301  or r3, r7, r23
000c30  9705d900  and r11, r18, r13
000c34  9300b204  setlt.u r1, r4, r11
000c38  3bb00000  bneq r1, zero, 12
000c3c  1f0c0900  addli r24, r18, 0
000c40  5b010000  j 8
000c44  171c7901  or r24, r18, r23
000c48  170edd00  and r28, r26, r13
000c4c  9300c205  setlt.u r1, r4, r28
000c50  3bb00000  bneq r1, zero, 12
000c54  9f0c0d00  addli r25, r26, 0
000c58  5b010000  j 8
000c5c  971c7d01  or r25, r26, r23
000c60  9780dd00  and r1, r27, r13
000c64  13011204  setlt.u r2, r4, r1
000c68  3b500100  bneq r2, zero, 20
000c6c  1f880d00  addli r16, r27, 0
000c70  93801804  setlt.u r1, r17, r1
000c74  37d00000  beq r1, zero, 20
000c78  db040000  j 36
000c7c  17987d01  or r16, r27, r23
000c80  93801804  setlt.u r1, r17, r1
000c84  3be00000  bneq r1, zero, 24
000c88  9bc00d01  srli r1, r27, 16
000c8c  9b801000  andi r1, r1, 1
000c90  8b901d10  add.s r1, r27, r1
000c94  8b90e010  add.s r1, r1, r14
000c98  17885000  and r16, r1, r5
000c9c  9380c805  setlt.u r1, r17, r28
000ca0  37e00000  beq r1, zero, 24
000ca4  9380b804  setlt.u r1, r17, r11
000ca8  b7b00000  beq r1, zero, 44
000cac  9380c804  setlt.u r1, r17, r12
000cb0  bbbc00fe  bneq r1, zero, -212
000cb4  db070000  j 60
000cb8  9b400d01  srli r1, r26, 16
000cbc  9b801000  andi r1, r1, 1
000cc0  8b101d10  add.s r1, r26, r1
000cc4  8b90e010  add.s r1, r1, r14
000cc8  978c5000  and r25, r1, r5
000ccc  9380b804  setlt.u r1, r17, r11
000cd0  3bff00fe  bneq r1, zero, -36
000cd4  9b400901  srli r1, r18, 16
000cd8  9b801000  andi r1, r1, 1
000cdc  8b101910  add.s r1, r18, r1
000ce0  8b90e010  add.s r1, r1, r14
000ce4  178c5000  and r24, r1, r5
000ce8  9380c804  setlt.u r1, r17, r12
000cec  bbcb00fe  bneq r1, zero, -272
000cf0  9bc00301  srli r1, r7, 16
000cf4  9b801000  andi r1, r1, 1
000cf8  8b901310  add.s r1, r7, r1
000cfc  8b90e010  add.s r1, r1, r14
000d00  97815000  and r3, r1, r5
000d04  5bdbffff  j -296
000d08  00200100  mfence { sm }
000d0c  00380002  core_id r16
000d10  1f390000  addli r18, zero, 3
000d14  eb5c8ffe  load.d r[26:27], -24(r30)
000d18  e3409fff  loadli.w r1,  -52(r30)
000d1c  37c300fe  beq r1, zero, -816
000d20  9f002000  addli r1, zero, 16
000d24  3d000000  xfence
000d28  00a00300  mfence { lm, sm, gm }
000d2c  33810028  zext_int2long r[3:4], r1
000d30  5b040000  j 32
000d34  9f702000  addli r1, zero, 23
000d38  6b538fff  load.d r[7:8], -8(r30)
000d3c  9f7a0000  addli r21, zero, 7
000d40  b3800028  zext_int2long r[2:3], r1
000d44  93201304  setlt.ul r1, r[7:8], r[2:3]
000d48  27110300  addli.d r[3:4], r[7:8], 1
000d4c  37950000  beq r1, zero, 324
000d50  9f700000  addli r1, zero, 7
000d54  33040028  zext_int2long r[9:10], zero
000d58  733c2ffe  store.d r[3:4], -8(r30)
000d5c  973a1102  sll.d r[22:23], r[3:4], r1
000d60  db040000  j 36
000d64  27440400  addli.d r[9:10], r[9:10], 4
000d68  0b916710  add.s r2, r15, r6
000d6c  93203403  setneq.d r1, r[9:10], r[20:21]
000d70  73663100  stores.w r3, 12(r2)
000d74  73648101  stores.w r24, 8(r2)
000d78  73629101  stores.w r25, 4(r2)
000d7c  73600101  stores.w r16, 0(r2)
000d80  b7de00fe  beq r1, zero, -76
000d84  8b205411  add.ul r[2:3], r[9:10], r[22:23]
000d88  1bb32000  slli r6, r1, 2
000d8c  8b106510  add.s r1, r10, r6
000d90  efc3c000  loads.w r7, 12(r1)
000d94  efcd0000  loads.w r27, 0(r1)
000d98  6fcd4000  loads.w r26, 4(r1)
000d9c  6fc98000  loads.w r18, 8(r1)
000da0  1786d300  and r12, r7, r13
000da4  9300c204  setlt.u r1, r4, r12
000da8  3bb00000  bneq r1, zero, 12
000dac  9f810300  addli r3, r7, 0
000db0  5b010000  j 8
000db4  97917301  or r3, r7, r23
000db8  9705d900  and r11, r18, r13
000dbc  9300b204  setlt.u r1, r4, r11
000dc0  3bb00000  bneq r1, zero, 12
000dc4  1f0c0900  addli r24, r18, 0
000dc8  5b010000  j 8
000dcc  171c7901  or r24, r18, r23
000dd0  170edd00  and r28, r26, r13
000dd4  9300c205  setlt.u r1, r4, r28
000dd8  3bb00000  bneq r1, zero, 12
000ddc  9f0c0d00  addli r25, r26, 0
000de0  5b010000  j 8
000de4  971c7d01  or r25, r26, r23
000de8  9780dd00  and r1, r27, r13
000dec  13011204  setlt.u r2, r4, r1
000df0  3b500100  bneq r2, zero, 20
000df4  1f880d00  addli r16, r27, 0
000df8  93801804  setlt.u r1, r17, r1
000dfc  37d00000  beq r1, zero, 20
000e00  db040000  j 36
000e04  17987d01  or r16, r27, r23
000e08  93801804  setlt.u r1, r17, r1
000e0c  3be00000  bneq r1, zero, 24
000e10  9bc00d01  srli r1, r27, 16
000e14  9b801000  andi r1, r1, 1
000e18  8b901d10  add.s r1, r27, r1
000e1c  8b90e010  add.s r1, r1, r14
000e20  17885000  and r16, r1, r5
000e24  9380c805  setlt.u r1, r17, r28
000e28  37e00000  beq r1, zero, 24
000e2c  9380b804  setlt.u r1, r17, r11
000e30  b7b00000  beq r1, zero, 44
000e34  9380c804  setlt.u r1, r17, r12
000e38  bbbc00fe  bneq r1, zero, -212
000e3c  db070000  j 60
000e40  9b400d01  srli r1, r26, 16
000e44  9b801000  andi r1, r1, 1
000e48  8b101d10  add.s r1, r26, r1
000e4c  8b90e010  add.s r1, r1, r14
000e50  978c5000  and r25, r1, r5
000e54  9380b804  setlt.u r1, r17, r11
000e58  3bff00fe  bneq r1, zero, -36
000e5c  9b400901  srli r1, r18, 16
000e60  9b801000  andi r1, r1, 1
000e64  8b101910  add.s r1, r18, r1
000e68  8b90e010  add.s r1, r1, r14
000e6c  178c5000  and r24, r1, r5
000e70  9380c804  setlt.u r1, r17, r12
000e74  bbcb00fe  bneq r1, zero, -272
000e78  9bc00301  srli r1, r7, 16
000e7c  9b801000  andi r1, r1, 1
000e80  8b901310  add.s r1, r7, r1
000e84  8b90e010  add.s r1, r1, r14
000e88  97815000  and r3, r1, r5
000e8c  5bdbffff  j -296
000e90  00200100  mfence { sm }
000e94  00380002  core_id r16
000e98  1f390000  addli r18, zero, 3
000e9c  eb5c8ffe  load.d r[26:27], -24(r30)
000ea0  3b4d28fd  bneq r16, r18, -1200
000ea4  9f003000  addli r1, zero, 24
000ea8  3d000000  xfence
000eac  00a00300  mfence { lm, sm, gm }
000eb0  33810028  zext_int2long r[3:4], r1
000eb4  5b040000  j 32
000eb8  9f703000  addli r1, zero, 31
000ebc  6b538fff  load.d r[7:8], -8(r30)
000ec0  9f7a0000  addli r21, zero, 7
000ec4  b3800028  zext_int2long r[2:3], r1
000ec8  93201304  setlt.ul r1, r[7:8], r[2:3]
000ecc  27110300  addli.d r[3:4], r[7:8], 1
000ed0  37950000  beq r1, zero, 324
000ed4  9f700000  addli r1, zero, 7
000ed8  33040028  zext_int2long r[9:10], zero
000edc  733c2ffe  store.d r[3:4], -8(r30)
000ee0  973a1102  sll.d r[22:23], r[3:4], r1
000ee4  db040000  j 36
000ee8  27440400  addli.d r[9:10], r[9:10], 4
000eec  0b916710  add.s r2, r15, r6
000ef0  93203403  setneq.d r1, r[9:10], r[20:21]
000ef4  73663100  stores.w r3, 12(r2)
000ef8  73648101  stores.w r24, 8(r2)
000efc  73629101  stores.w r25, 4(r2)
000f00  73600101  stores.w r16, 0(r2)
000f04  b7de00fe  beq r1, zero, -76
000f08  8b205411  add.ul r[2:3], r[9:10], r[22:23]
000f0c  1bb32000  slli r6, r1, 2
000f10  8b106510  add.s r1, r10, r6
000f14  efc3c000  loads.w r7, 12(r1)
000f18  efcd0000  loads.w r27, 0(r1)
000f1c  6fcd4000  loads.w r26, 4(r1)
000f20  6fc98000  loads.w r18, 8(r1)
000f24  1786d300  and r12, r7, r13
000f28  9300c204  setlt.u r1, r4, r12
000f2c  3bb00000  bneq r1, zero, 12
000f30  9f810300  addli r3, r7, 0
000f34  5b010000  j 8
000f38  97917301  or r3, r7, r23
000f3c  9705d900  and r11, r18, r13
000f40  9300b204  setlt.u r1, r4, r11
000f44  3bb00000  bneq r1, zero, 12
000f48  1f0c0900  addli r24, r18, 0
000f4c  5b010000  j 8
000f50  171c7901  or r24, r18, r23
000f54  170edd00  and r28, r26, r13
000f58  9300c205  setlt.u r1, r4, r28
000f5c  3bb00000  bneq r1, zero, 12
000f60  9f0c0d00  addli r25, r26, 0
000f64  5b010000  j 8
000f68  971c7d01  or r25, r26, r23
000f6c  9780dd00  and r1, r27, r13
000f70  13011204  setlt.u r2, r4, r1
000f74  3b500100  bneq r2, zero, 20
000f78  1f880d00  addli r16, r27, 0
000f7c  93801804  setlt.u r1, r17, r1
000f80  37d00000  beq r1, zero, 20
000f84  db040000  j 36
000f88  17987d01  or r16, r27, r23
000f8c  93801804  setlt.u r1, r17, r1
000f90  3be00000  bneq r1, zero, 24
000f94  9bc00d01  srli r1, r27, 16
000f98  9b801000  andi r1, r1, 1
000f9c  8b901d10  add.s r1, r27, r1
000fa0  8b90e010  add.s r1, r1, r14
000fa4  17885000  and r16, r1, r5
000fa8  9380c805  setlt.u r1, r17, r28
000fac  37e00000  beq r1, zero, 24
000fb0  9380b804  setlt.u r1, r17, r11
000fb4  b7b00000  beq r1, zero, 44
000fb8  9380c804  setlt.u r1, r17, r12
000fbc  bbbc00fe  bneq r1, zero, -212
000fc0  db070000  j 60
000fc4  9b400d01  srli r1, r26, 16
000fc8  9b801000  andi r1, r1, 1
000fcc  8b101d10  add.s r1, r26, r1
000fd0  8b90e010  add.s r1, r1, r14
000fd4  978c5000  and r25, r1, r5
000fd8  9380b804  setlt.u r1, r17, r11
000fdc  3bff00fe  bneq r1, zero, -36
000fe0  9b400901  srli r1, r18, 16
000fe4  9b801000  andi r1, r1, 1
000fe8  8b101910  add.s r1, r18, r1
000fec  8b90e010  add.s r1, r1, r14
000ff0  178c5000  and r24, r1, r5
000ff4  9380c804  setlt.u r1, r17, r12
000ff8  bbcb00fe  bneq r1, zero, -272
000ffc  9bc00301  srli r1, r7, 16
001000  9b801000  andi r1, r1, 1
001004  8b901310  add.s r1, r7, r1
001008  8b90e010  add.s r1, r1, r14
00100c  97815000  and r3, r1, r5
001010  5bdbffff  j -296
001014  00200100  mfence { sm }
001018  00380002  core_id r16
00101c  1f390000  addli r18, zero, 3
001020  eb5c8ffe  load.d r[26:27], -24(r30)
001024  e300afff  loadli.w r1,  -48(r30)
001028  37c700fc  beq r1, zero, -1584
00102c  9f004000  addli r1, zero, 32
001030  3d000000  xfence
001034  00a00300  mfence { lm, sm, gm }
001038  33810028  zext_int2long r[3:4], r1
00103c  5b040000  j 32
001040  9f704000  addli r1, zero, 39
001044  6b538fff  load.d r[7:8], -8(r30)
001048  9f7a0000  addli r21, zero, 7
00104c  b3800028  zext_int2long r[2:3], r1
001050  93201304  setlt.ul r1, r[7:8], r[2:3]
001054  27110300  addli.d r[3:4], r[7:8], 1
001058  37950000  beq r1, zero, 324
00105c  9f700000  addli r1, zero, 7
001060  33040028  zext_int2long r[9:10], zero
001064  733c2ffe  store.d r[3:4], -8(r30)
001068  973a1102  sll.d r[22:23], r[3:4], r1
00106c  db040000  j 36
001070  27440400  addli.d r[9:10], r[9:10], 4
001074  0b916710  add.s r2, r15, r6
001078  93203403  setneq.d r1, r[9:10], r[20:21]
00107c  73663100  stores.w r3, 12(r2)
001080  73648101  stores.w r24, 8(r2)
001084  73629101  stores.w r25, 4(r2)
001088  73600101  stores.w r16, 0(r2)
00108c  b7de00fe  beq r1, zero, -76
001090  8b205411  add.ul r[2:3], r[9:10], r[22:23]
001094  1bb32000  slli r6, r1, 2
001098  8b106510  add.s r1, r10, r6
00109c  efc3c000  loads.w r7, 12(r1)
0010a0  efcd0000  loads.w r27, 0(r1)
0010a4  6fcd4000  loads.w r26, 4(r1)
0010a8  6fc98000  loads.w r18, 8(r1)
0010ac  1786d300  and r12, r7, r13
0010b0  9300c204  setlt.u r1, r4, r12
0010b4  3bb00000  bneq r1, zero, 12
0010b8  9f810300  addli r3, r7, 0
0010bc  5b010000  j 8
0010c0  97917301  or r3, r7, r23
0010c4  9705d900  and r11, r18, r13
0010c8  9300b204  setlt.u r1, r4, r11
0010cc  3bb00000  bneq r1, zero, 12
0010d0  1f0c0900  addli r24, r18, 0
0010d4  5b010000  j 8
0010d8  171c7901  or r24, r18, r23
0010dc  170edd00  and r28, r26, r13
0010e0  9300c205  setlt.u r1, r4, r28
0010e4  3bb00000  bneq r1, zero, 12
0010e8  9f0c0d00  addli r25, r26, 0
0010ec  5b010000  j 8
0010f0  971c7d01  or r25, r26, r23
0010f4  9780dd00  and r1, r27, r13
0010f8  13011204  setlt.u r2, r4, r1
0010fc  3b500100  bneq r2, zero, 20
001100  1f880d00  addli r16, r27, 0
001104  93801804  setlt.u r1, r17, r1
001108  37d00000  beq r1, zero, 20
00110c  db040000  j 36
001110  17987d01  or r16, r27, r23
001114  93801804  setlt.u r1, r17, r1
001118  3be00000  bneq r1, zero, 24
00111c  9bc00d01  srli r1, r27, 16
001120  9b801000  andi r1, r1, 1
001124  8b901d10  add.s r1, r27, r1
001128  8b90e010  add.s r1, r1, r14
00112c  17885000  and r16, r1, r5
001130  9380c805  setlt.u r1, r17, r28
001134  37e00000  beq r1, zero, 24
001138  9380b804  setlt.u r1, r17, r11
00113c  b7b00000  beq r1, zero, 44
001140  9380c804  setlt.u r1, r17, r12
001144  bbbc00fe  bneq r1, zero, -212
001148  db070000  j 60
00114c  9b400d01  srli r1, r26, 16
001150  9b801000  andi r1, r1, 1
001154  8b101d10  add.s r1, r26, r1
001158  8b90e010  add.s r1, r1, r14
00115c  978c5000  and r25, r1, r5
001160  9380b804  setlt.u r1, r17, r11
001164  3bff00fe  bneq r1, zero, -36
001168  9b400901  srli r1, r18, 16
00116c  9b801000  andi r1, r1, 1
001170  8b101910  add.s r1, r18, r1
001174  8b90e010  add.s r1, r1, r14
001178  178c5000  and r24, r1, r5
00117c  9380c804  setlt.u r1, r17, r12
001180  bbcb00fe  bneq r1, zero, -272
001184  9bc00301  srli r1, r7, 16
001188  9b801000  andi r1, r1, 1
00118c  8b901310  add.s r1, r7, r1
001190  8b90e010  add.s r1, r1, r14
001194  97815000  and r3, r1, r5
001198  5bdbffff  j -296
00119c  00200100  mfence { sm }
0011a0  00380002  core_id r16
0011a4  1f390000  addli r18, zero, 3
0011a8  eb5c8ffe  load.d r[26:27], -24(r30)
0011ac  9f500000  addli r1, zero, 5
0011b0  3b4118fc  bneq r16, r1, -1968
0011b4  9f005000  addli r1, zero, 40
0011b8  3d000000  xfence
0011bc  00a00300  mfence { lm, sm, gm }
0011c0  33810028  zext_int2long r[3:4], r1
0011c4  5b040000  j 32
0011c8  9f705000  addli r1, zero, 47
0011cc  6b538fff  load.d r[7:8], -8(r30)
0011d0  9f7a0000  addli r21, zero, 7
0011d4  b3800028  zext_int2long r[2:3], r1
0011d8  93201304  setlt.ul r1, r[7:8], r[2:3]
0011dc  27110300  addli.d r[3:4], r[7:8], 1
0011e0  37950000  beq r1, zero, 324
0011e4  9f700000  addli r1, zero, 7
0011e8  33040028  zext_int2long r[9:10], zero
0011ec  733c2ffe  store.d r[3:4], -8(r30)
0011f0  973a1102  sll.d r[22:23], r[3:4], r1
0011f4  db040000  j 36
0011f8  27440400  addli.d r[9:10], r[9:10], 4
0011fc  0b916710  add.s r2, r15, r6
001200  93203403  setneq.d r1, r[9:10], r[20:21]
001204  73663100  stores.w r3, 12(r2)
001208  73648101  stores.w r24, 8(r2)
00120c  73629101  stores.w r25, 4(r2)
001210  73600101  stores.w r16, 0(r2)
001214  b7de00fe  beq r1, zero, -76
001218  8b205411  add.ul r[2:3], r[9:10], r[22:23]
00121c  1bb32000  slli r6, r1, 2
001220  8b106510  add.s r1, r10, r6
001224  efc3c000  loads.w r7, 12(r1)
001228  efcd0000  loads.w r27, 0(r1)
00122c  6fcd4000  loads.w r26, 4(r1)
001230  6fc98000  loads.w r18, 8(r1)
001234  1786d300  and r12, r7, r13
001238  9300c204  setlt.u r1, r4, r12
00123c  3bb00000  bneq r1, zero, 12
001240  9f810300  addli r3, r7, 0
001244  5b010000  j 8
001248  97917301  or r3, r7, r23
00124c  9705d900  and r11, r18, r13
001250  9300b204  setlt.u r1, r4, r11
001254  3bb00000  bneq r1, zero, 12
001258  1f0c0900  addli r24, r18, 0
00125c  5b010000  j 8
001260  171c7901  or r24, r18, r23
001264  170edd00  and r28, r26, r13
001268  9300c205  setlt.u r1, r4, r28
00126c  3bb00000  bneq r1, zero, 12
001270  9f0c0d00  addli r25, r26, 0
001274  5b010000  j 8
001278  971c7d01  or r25, r26, r23
00127c  9780dd00  and r1, r27, r13
001280  13011204  setlt.u r2, r4, r1
001284  3b500100  bneq r2, zero, 20
001288  1f880d00  addli r16, r27, 0
00128c  93801804  setlt.u r1, r17, r1
001290  37d00000  beq r1, zero, 20
001294  db040000  j 36
001298  17987d01  or r16, r27, r23
00129c  93801804  setlt.u r1, r17, r1
0012a0  3be00000  bneq r1, zero, 24
0012a4  9bc00d01  srli r1, r27, 16
0012a8  9b801000  andi r1, r1, 1
0012ac  8b901d10  add.s r1, r27, r1
0012b0  8b90e010  add.s r1, r1, r14
0012b4  17885000  and r16, r1, r5
0012b8  9380c805  setlt.u r1, r17, r28
0012bc  37e00000  beq r1, zero, 24
0012c0  9380b804  setlt.u r1, r17, r11
0012c4  b7b00000  beq r1, zero, 44
0012c8  9380c804  setlt.u r1, r17, r12
0012cc  bbbc00fe  bneq r1, zero, -212
0012d0  db070000  j 60
0012d4  9b400d01  srli r1, r26, 16
0012d8  9b801000  andi r1, r1, 1
0012dc  8b101d10  add.s r1, r26, r1
0012e0  8b90e010  add.s r1, r1, r14
0012e4  978c5000  and r25, r1, r5
0012e8  9380b804  setlt.u r1, r17, r11
0012ec  3bff00fe  bneq r1, zero, -36
0012f0  9b400901  srli r1, r18, 16
0012f4  9b801000  andi r1, r1, 1
0012f8  8b101910  add.s r1, r18, r1
0012fc  8b90e010  add.s r1, r1, r14
001300  178c5000  and r24, r1, r5
001304  9380c804  setlt.u r1, r17, r12
001308  bbcb00fe  bneq r1, zero, -272
00130c  9bc00301  srli r1, r7, 16
001310  9b801000  andi r1, r1, 1
001314  8b901310  add.s r1, r7, r1
001318  8b90e010  add.s r1, r1, r14
00131c  97815000  and r3, r1, r5
001320  5bdbffff  j -296
001324  00200100  mfence { sm }
001328  00380002  core_id r16
00132c  1f390000  addli r18, zero, 3
001330  eb5c8ffe  load.d r[26:27], -24(r30)
001334  9f600000  addli r1, zero, 6
001338  3b4b18fa  bneq r16, r1, -2352
00133c  9f006000  addli r1, zero, 48
001340  3d000000  xfence
001344  00a00300  mfence { lm, sm, gm }
001348  33810028  zext_int2long r[3:4], r1
00134c  5b040000  j 32
001350  9f706000  addli r1, zero, 55
001354  6b538fff  load.d r[7:8], -8(r30)
001358  9f7a0000  addli r21, zero, 7
00135c  b3800028  zext_int2long r[2:3], r1
001360  93201304  setlt.ul r1, r[7:8], r[2:3]
001364  27110300  addli.d r[3:4], r[7:8], 1
001368  37950000  beq r1, zero, 324
00136c  9f700000  addli r1, zero, 7
001370  33040028  zext_int2long r[9:10], zero
001374  733c2ffe  store.d r[3:4], -8(r30)
001378  973a1102  sll.d r[22:23], r[3:4], r1
00137c  db040000  j 36
001380  27440400  addli.d r[9:10], r[9:10], 4
001384  0b916710  add.s r2, r15, r6
001388  93203403  setneq.d r1, r[9:10], r[20:21]
00138c  73663100  stores.w r3, 12(r2)
001390  73648101  stores.w r24, 8(r2)
001394  73629101  stores.w r25, 4(r2)
001398  73600101  stores.w r16, 0(r2)
00139c  b7de00fe  beq r1, zero, -76
0013a0  8b205411  add.ul r[2:3], r[9:10], r[22:23]
0013a4  1bb32000  slli r6, r1, 2
0013a8  8b106510  add.s r1, r10, r6
0013ac  efc3c000  loads.w r7, 12(r1)
0013b0  efcd0000  loads.w r27, 0(r1)
0013b4  6fcd4000  loads.w r26, 4(r1)
0013b8  6fc98000  loads.w r18, 8(r1)
0013bc  1786d300  and r12, r7, r13
0013c0  9300c204  setlt.u r1, r4, r12
0013c4  3bb00000  bneq r1, zero, 12
0013c8  9f810300  addli r3, r7, 0
0013cc  5b010000  j 8
0013d0  97917301  or r3, r7, r23
0013d4  9705d900  and r11, r18, r13
0013d8  9300b204  setlt.u r1, r4, r11
0013dc  3bb00000  bneq r1, zero, 12
0013e0  1f0c0900  addli r24, r18, 0
0013e4  5b010000  j 8
0013e8  171c7901  or r24, r18, r23
0013ec  170edd00  and r28, r26, r13
0013f0  9300c205  setlt.u r1, r4, r28
0013f4  3bb00000  bneq r1, zero, 12
0013f8  9f0c0d00  addli r25, r26, 0
0013fc  5b010000  j 8
001400  971c7d01  or r25, r26, r23
001404  9780dd00  and r1, r27, r13
001408  13011204  setlt.u r2, r4, r1
00140c  3b500100  bneq r2, zero, 20
001410  1f880d00  addli r16, r27, 0
001414  93801804  setlt.u r1, r17, r1
001418  37d00000  beq r1, zero, 20
00141c  db040000  j 36
001420  17987d01  or r16, r27, r23
001424  93801804  setlt.u r1, r17, r1
001428  3be00000  bneq r1, zero, 24
00142c  9bc00d01  srli r1, r27, 16
001430  9b801000  andi r1, r1, 1
001434  8b901d10  add.s r1, r27, r1
001438  8b90e010  add.s r1, r1, r14
00143c  17885000  and r16, r1, r5
001440  9380c805  setlt.u r1, r17, r28
001444  37e00000  beq r1, zero, 24
001448  9380b804  setlt.u r1, r17, r11
00144c  b7b00000  beq r1, zero, 44
001450  9380c804  setlt.u r1, r17, r12
001454  bbbc00fe  bneq r1, zero, -212
001458  db070000  j 60
00145c  9b400d01  srli r1, r26, 16
001460  9b801000  andi r1, r1, 1
001464  8b101d10  add.s r1, r26, r1
001468  8b90e010  add.s r1, r1, r14
00146c  978c5000  and r25, r1, r5
001470  9380b804  setlt.u r1, r17, r11
001474  3bff00fe  bneq r1, zero, -36
001478  9b400901  srli r1, r18, 16
00147c  9b801000  andi r1, r1, 1
001480  8b101910  add.s r1, r18, r1
001484  8b90e010  add.s r1, r1, r14
001488  178c5000  and r24, r1, r5
00148c  9380c804  setlt.u r1, r17, r12
001490  bbcb00fe  bneq r1, zero, -272
001494  9bc00301  srli r1, r7, 16
001498  9b801000  andi r1, r1, 1
00149c  8b901310  add.s r1, r7, r1
0014a0  8b90e010  add.s r1, r1, r14
0014a4  97815000  and r3, r1, r5
0014a8  5bdbffff  j -296
0014ac  00200100  mfence { sm }
0014b0  00380002  core_id r16
0014b4  1f390000  addli r18, zero, 3
0014b8  eb5c8ffe  load.d r[26:27], -24(r30)
0014bc  e340afff  loadli.w r1,  -44(r30)
0014c0  37960000  beq r1, zero, 388
0014c4  9f007000  addli r1, zero, 56
0014c8  3d000000  xfence
0014cc  00a00300  mfence { lm, sm, gm }
0014d0  33810028  zext_int2long r[3:4], r1
0014d4  5b040000  j 32
0014d8  9f707000  addli r1, zero, 63
0014dc  6b538fff  load.d r[7:8], -8(r30)
0014e0  9f7a0000  addli r21, zero, 7
0014e4  b3800028  zext_int2long r[2:3], r1
0014e8  93201304  setlt.ul r1, r[7:8], r[2:3]
0014ec  27110300  addli.d r[3:4], r[7:8], 1
0014f0  37950000  beq r1, zero, 324
0014f4  9f700000  addli r1, zero, 7
0014f8  33040028  zext_int2long r[9:10], zero
0014fc  733c2ffe  store.d r[3:4], -8(r30)
001500  973a1102  sll.d r[22:23], r[3:4], r1
001504  db040000  j 36
001508  27440400  addli.d r[9:10], r[9:10], 4
00150c  0b916710  add.s r2, r15, r6
001510  93203403  setneq.d r1, r[9:10], r[20:21]
001514  73663100  stores.w r3, 12(r2)
001518  73648101  stores.w r24, 8(r2)
00151c  73629101  stores.w r25, 4(r2)
001520  73600101  stores.w r16, 0(r2)
001524  b7de00fe  beq r1, zero, -76
001528  8b205411  add.ul r[2:3], r[9:10], r[22:23]
00152c  1bb32000  slli r6, r1, 2
001530  8b106510  add.s r1, r10, r6
001534  efc3c000  loads.w r7, 12(r1)
001538  efcd0000  loads.w r27, 0(r1)
00153c  6fcd4000  loads.w r26, 4(r1)
001540  6fc98000  loads.w r18, 8(r1)
001544  1786d300  and r12, r7, r13
001548  9300c204  setlt.u r1, r4, r12
00154c  3bb00000  bneq r1, zero, 12
001550  9f810300  addli r3, r7, 0
001554  5b010000  j 8
001558  97917301  or r3, r7, r23
00155c  9705d900  and r11, r18, r13
001560  9300b204  setlt.u r1, r4, r11
001564  3bb00000  bneq r1, zero, 12
001568  1f0c0900  addli r24, r18, 0
00156c  5b010000  j 8
001570  171c7901  or r24, r18, r23
001574  170edd00  and r28, r26, r13
001578  9300c205  setlt.u r1, r4, r28
00157c  3bb00000  bneq r1, zero, 12
001580  9f0c0d00  addli r25, r26, 0
001584  5b010000  j 8
001588  971c7d01  or r25, r26, r23
00158c  9780dd00  and r1, r27, r13
001590  13011204  setlt.u r2, r4, r1
001594  3b500100  bneq r2, zero, 20
001598  1f880d00  addli r16, r27, 0
00159c  93801804  setlt.u r1, r17, r1
0015a0  37d00000  beq r1, zero, 20
0015a4  db040000  j 36
0015a8  17987d01  or r16, r27, r23
0015ac  93801804  setlt.u r1, r17, r1
0015b0  3be00000  bneq r1, zero, 24
0015b4  9bc00d01  srli r1, r27, 16
0015b8  9b801000  andi r1, r1, 1
0015bc  8b901d10  add.s r1, r27, r1
0015c0  8b90e010  add.s r1, r1, r14
0015c4  17885000  and r16, r1, r5
0015c8  9380c805  setlt.u r1, r17, r28
0015cc  37e00000  beq r1, zero, 24
0015d0  9380b804  setlt.u r1, r17, r11
0015d4  b7b00000  beq r1, zero, 44
0015d8  9380c804  setlt.u r1, r17, r12
0015dc  bbbc00fe  bneq r1, zero, -212
0015e0  db070000  j 60
0015e4  9b400d01  srli r1, r26, 16
0015e8  9b801000  andi r1, r1, 1
0015ec  8b101d10  add.s r1, r26, r1
0015f0  8b90e010  add.s r1, r1, r14
0015f4  978c5000  and r25, r1, r5
0015f8  9380b804  setlt.u r1, r17, r11
0015fc  3bff00fe  bneq r1, zero, -36
001600  9b400901  srli r1, r18, 16
001604  9b801000  andi r1, r1, 1
001608  8b101910  add.s r1, r18, r1
00160c  8b90e010  add.s r1, r1, r14
001610  178c5000  and r24, r1, r5
001614  9380c804  setlt.u r1, r17, r12
001618  bbcb00fe  bneq r1, zero, -272
00161c  9bc00301  srli r1, r7, 16
001620  9b801000  andi r1, r1, 1
001624  8b901310  add.s r1, r7, r1
001628  8b90e010  add.s r1, r1, r14
00162c  97815000  and r3, r1, r5
001630  5bdbffff  j -296
001634  00200100  mfence { sm }
001638  00380002  core_id r16
00163c  1f390000  addli r18, zero, 3
001640  eb5c8ffe  load.d r[26:27], -24(r30)
001644  9f70f001  addli r1, zero, 255
001648  80a20004  csr_set csr5, r1
00164c  00e00200  sync_core
001650  b71e28f5  beq r16, r18, -5212
001654  9f078000  addli r15, zero, 64
001658  bb3e08f4  bneq r16, zero, -5204
00165c  e3405fff  loadli.w r1,  -84(r30)
001660  1f010007  addli r2, zero, 896
001664  33010128  zext_int2long r[3:4], r2
001668  9bb07000  slli r1, r1, 7
00166c  33830028  zext_int2long r[7:8], r1
001670  e3407fff  loadli.w r1,  -68(r30)
001674  0b212340  min.ul r[3:4], r[7:8], r[3:4]
001678  9bb06000  slli r1, r1, 6
00167c  33940028  sext_int2long r[9:10], r1
001680  a7000101  addli.d r[2:3], r[3:4], 128
001684  9f112000  addli r3, zero, 17
001688  8b359441  min.sl r[12:13], r[9:10], r[26:27]
00168c  8ba06048  max.ul r[2:3], r[2:3], r[7:8]
001690  a7858500  addli.d r[12:13], r[12:13], 64
001694  8bb06018  sub.sl r[2:3], r[2:3], r[7:8]
001698  0bb38548  max.sl r[7:8], r[12:13], r[9:10]
00169c  8ba03041  min.ul r[2:3], r[2:3], r[20:21]
0016a0  b3850728  zext_int2long r[12:13], r15
0016a4  eb590f01  load.d r[20:21], 16(r30)
0016a8  0b338318  sub.sl r[7:8], r[7:8], r[9:10]
0016ac  6b540ffc  load.d r[9:10], -64(r30)
0016b0  0b33b340  min.sl r[7:8], r[7:8], r[12:13]
0016b4  eb550ffb  load.d r[12:13], -80(r30)
0016b8  17343402  sll.d r[9:10], r[9:10], r3
0016bc  9f411000  addli r3, zero, 12
0016c0  0ba48910  add.ul r[9:10], r[20:21], r[9:10]
0016c4  7d900100  xwait r3, 0
0016c8  abc10300  lui r3, 60
0016cc  0b24b410  add.ul r[9:10], r[9:10], r[12:13]
0016d0  9f550000  addli r11, zero, 5
0016d4  1f160000  addli r12, zero, 1
0016d8  9b910104  ori r3, r3, 64
0016dc  1d800500  lock zero, r11
0016e0  8b113510  add.s r3, r10, r3
0016e4  1ff53000  addli r10, r1, 31
0016e8  9bb01000  slli r1, r1, 1
0016ec  1f010001  addli r2, zero, 128
0016f0  15060600  dma_cfg r12, r12, zero, 0
0016f4  15000602  dma_cfg zero, r12, zero, 1
0016f8  9b80e003  andi r1, r1, 62
0016fc  95040004  dma_cfg r9, zero, zero, 2
001700  1584f106  dma_cfg r8, r3, r15, 3
001704  9b415500  srli r3, r10, 5
001708  95073108  dma_cfg r15, r2, r3, 4
00170c  1f010004  addli r2, zero, 512
001710  9f010010  addli r3, zero, 2048
001714  9501610a  dma_cfg r3, r2, r6, 5
001718  15001010  dma_cfg zero, zero, r1, 8
00171c  35000000  dma_run zero
001720  1500c00a  dma_cfg zero, zero, r12, 5
001724  9f501000  addli r1, zero, 13
001728  15000010  dma_cfg zero, zero, zero, 8
00172c  1d900500  unlock r11
001730  5b5afdff  j -5424
001734  7d000000  xsignal zero, 0
001738  bb600800  bneq r16, zero, 56
00173c  9f200000  addli r1, zero, 2
001740  7d100000  xwait zero, 0
001744  7d100000  xwait zero, 0
001748  7d100000  xwait zero, 0
00174c  7d100000  xwait zero, 0
001750  7d100000  xwait zero, 0
001754  7d100000  xwait zero, 0
001758  7d100000  xwait zero, 0
00175c  7d100000  xwait zero, 0
001760  1d800000  lock zero, r1
001764  0d000020  ew_cfg zero, zero, zero, 16
001768  1d900000  unlock r1
00176c  7d400000  xsignal_mode_cfg zero
001770  9f8eee00  addli sp, sp, 112
001774  00a00300  mfence { lm, sm, gm }
001778  00100000  exit
00177c  00100000  exit
001780  00100000  exit
001784  00100000  exit
001788  00100000  exit
00178c  00100000  exit
001790  00100000  exit
001794  00100000  exit
001798  00100000  exit
00179c  00100000  exit
0017a0  00100000  exit
0017a4  00100000  exit
0017a8  00100000  exit
0017ac  00100000  exit
0017b0  00100000  exit
0017b4  00100000  exit
0017b8  00100000  exit
0017bc  00100000  exit
0017c0  00100000  exit
0017c4  00100000  exit
0017c8  00100000  exit
0017cc  00100000  exit
0017d0  00100000  exit
0017d4  00100000  exit
0017d8  00100000  exit
0017dc  00100000  exit
0017e0  00100000  exit
0017e4  00100000  exit
0017e8  00100000  exit
0017ec  00100000  exit
0017f0  00100000  exit
0017f4  00100000  exit
0017f8  00100000  exit
0017fc  00100000  exit
001800  00100000  exit
001804  00100000  exit
001808  00100000  exit
00180c  00100000  exit
001810  00100000  exit
001814  00100000  exit
001818  00100000  exit
00181c  00100000  exit
001820  00100000  exit
001824  00100000  exit
001828  00100000  exit
00182c  00100000  exit
001830  00100000  exit
001834  00100000  exit
001838  00100000  exit
00183c  00100000  exit
001840  00100000  exit
001844  00100000  exit
001848  00100000  exit
00184c  00100000  exit
001850  00100000  exit
001854  00100000  exit
001858  00100000  exit
00185c  00100000  exit
001860  00100000  exit
001864  00100000  exit
001868  00100000  exit
00186c  00100000  exit
001870  00100000  exit
001874  00100000  exit
001878  00100000  exit
00187c  00100000  exit
001880  00100000  exit
001884  00100000  exit
001888  00100000  exit
00188c  00100000  exit
001890  00100000  exit
001894  00100000  exit
001898  00100000  exit
00189c  00100000  exit
0018a0  00100000  exit
0018a4  00100000  exit
0018a8  00100000  exit
0018ac  00100000  exit
0018b0  00100000  exit
0018b4  00100000  exit
0018b8  00100000  exit
0018bc  00100000  exit
0018c0  00100000  exit
0018c4  00100000  exit
0018c8  00100000  exit
0018cc  00100000  exit
0018d0  00100000  exit
0018d4  00100000  exit
0018d8  00100000  exit
0018dc  00100000  exit
0018e0  00100000  exit
0018e4  00100000  exit
0018e8  00100000  exit
0018ec  00100000  exit
0018f0  00100000  exit
0018f4  00100000  exit
0018f8  00100000  exit
0018fc  00100000  exit
001900  00100000  exit
001904  00100000  exit
001908  00100000  exit
00190c  00100000  exit
001910  00100000  exit
001914  00100000  exit
001918  00100000  exit
00191c  00100000  exit
001920  00100000  exit
001924  00100000  exit
001928  00100000  exit
00192c  00100000  exit
001930  00100000  exit
001934  00100000  exit
001938  00100000  exit
00193c  00100000  exit
001940  00100000  exit
001944  00100000  exit
001948  00100000  exit
00194c  00100000  exit
001950  00100000  exit
001954  00100000  exit
001958  00100000  exit
00195c  00100000  exit
001960  00100000  exit
001964  00100000  exit
001968  00100000  exit
00196c  00100000  exit
001970  00100000  exit
001974  00100000  exit
001978  00100000  exit
00197c  00100000  exit
001980  00100000  exit
001984  00100000  exit
001988  00100000  exit
00198c  00100000  exit
001990  00100000  exit
001994  00100000  exit
001998  00100000  exit
00199c  00100000  exit
0019a0  00100000  exit
0019a4  00100000  exit
0019a8  00100000  exit
0019ac  00100000  exit
0019b0  00100000  exit
0019b4  00100000  exit
0019b8  00100000  exit
