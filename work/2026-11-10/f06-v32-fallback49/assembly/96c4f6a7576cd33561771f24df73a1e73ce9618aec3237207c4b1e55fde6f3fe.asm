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
0000b4  9f8ebefe  addli sp, sp, -168
0000b8  9f100000  addli r1, zero, 1
0000bc  80340002  core_id r9
0000c0  1f8fde00  addli r30, sp, 104
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37e00400  beq r9, zero, 24
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
00019c  cb06110c  ble.s r2, r1, 6560
0001a0  33110128  sext_int2long r[3:4], r2
0001a4  b39a0028  sext_int2long r[22:23], r1
0001a8  9f3b0000  addli r23, zero, 3
0001ac  ab0c807f  lui r25, 522240
0001b0  2b0affff  lui r20, 1048560
0001b4  1f050000  addli r10, zero, 0
0001b8  73342ffa  store.d r[3:4], -88(r30)
0001bc  1f71f01f  addli r2, zero, 4095
0001c0  9f010001  addli r3, zero, 128
0001c4  ab00feff  lui r1, 1048544
0001c8  73301ffa  store.d r[2:3], -96(r30)
0001cc  abf0ff7f  lui r1, 524287
0001d0  2bf17f7f  lui r2, 522239
0001d4  9b97f0ff  ori r15, r1, 4095
0001d8  ab700000  lui r1, 7
0001dc  9b19f1ff  ori r19, r2, 4095
0001e0  1b98f0ff  ori r16, r1, 4095
0001e4  b3000028  zext_int2long r[2:3], zero
0001e8  733c1ff8  store.d r[2:3], -104(r30)
0001ec  db060000  j 52
0001f0  9f301000  addli r1, zero, 11
0001f4  7d800000  xsignal r1, 0
0001f8  9f401000  addli r1, zero, 12
0001fc  7d800000  xsignal r1, 0
000200  eb5a0ffe  load.d r[22:23], -32(r30)
000204  eb508ffa  load.d r[2:3], -88(r30)
000208  a79a0a00  addli.d r[22:23], r[22:23], 1
00020c  6345dfff  loadli.w r10,  -20(r30)
000210  9f010001  addli r3, zero, 128
000214  93b01a04  setlt.sl r1, r[22:23], r[2:3]
000218  1f150500  addli r10, r10, 1
00021c  b784000c  beq r1, zero, 6432
000220  e3004f00  loadli.w r1,  32(r30)
000224  63413f00  loadli.w r2,  28(r30)
000228  1f021000  addli r4, zero, 8
00022c  8b901a30  div.s r1, r21, r1
000230  0b942030  div.s r8, r1, r2
000234  1f012000  addli r2, zero, 16
000238  8b103430  div.s r1, r8, r3
00023c  9bb13000  slli r3, r1, 3
000240  0b113118  sub.s r2, r2, r3
000244  0b114140  min.s r2, r2, r4
000248  0b122438  mod.s r4, r8, r2
00024c  0b123210  add.s r4, r4, r3
000250  9f711000  addli r3, zero, 15
000254  93824104  setlt.u r5, r3, r4
000258  b3060228  zext_int2long r[14:15], r4
00025c  9f511000  addli r3, zero, 13
000260  674c4ffe  storeli.w r4, -60(r30)
000264  97b13602  sll.d r[4:5], r[14:15], r3
000268  3bc00200  bneq r5, zero, 16
00026c  eb558ff9  load.d r[12:13], -104(r30)
000270  9f720000  addli r5, zero, 7
000274  5b020000  j 16
000278  6b530ffa  load.d r[7:8], -96(r30)
00027c  9f720000  addli r5, zero, 7
000280  97856102  and.d r[12:13], r[4:5], r[7:8]
000284  0b137539  mod.s r6, r10, r23
000288  9f03000f  addli r7, zero, 1920
00028c  9f0d0500  addli r27, r10, 0
000290  1f6c0000  addli r24, zero, 6
000294  7334dffc  store.d r[14:15], -56(r30)
000298  b3880328  zext_int2long r[18:19], r7
00029c  ab030300  lui r7, 48
0002a0  e74ebfff  storeli.w r27, -20(r30)
0002a4  73381fff  store.d r[18:19], -16(r30)
0002a8  1b35f300  slli r10, r6, 15
0002ac  8b137510  add.s r7, r10, r7
0002b0  3b9b8401  bneq r9, r24, 708
0002b4  8bb1b118  sub.sl r[4:5], r[4:5], r[12:13]
0002b8  1f6d1000  addli r26, zero, 14
0002bc  7d900b00  xwait r23, 0
0002c0  97d18103  sra.d r[4:5], r[4:5], r24
0002c4  97b6a603  sll.d r[14:15], r[14:15], r26
0002c8  8bb51141  min.sl r[12:13], r[4:5], r[18:19]
0002cc  8bb13518  sub.sl r[4:5], r[12:13], r[4:5]
0002d0  eb550f00  load.d r[12:13], 0(r30)
0002d4  1f820101  addli r4, r3, 128
0002d8  8ba8d510  add.ul r[18:19], r[12:13], r[14:15]
0002dc  9f050001  addli r11, zero, 128
0002e0  1f260000  addli r12, zero, 2
0002e4  bf14b601  blt.s r12, r27, 292
0002e8  9f560000  addli r13, zero, 5
0002ec  1f170000  addli r14, zero, 1
0002f0  9f410000  addli r3, zero, 4
0002f4  1d800600  lock zero, r13
0002f8  15000014  dma_cfg zero, zero, zero, 10
0002fc  1500e014  dma_cfg zero, zero, r14, 10
000300  1500c014  dma_cfg zero, zero, r12, 10
000304  15007015  dma_cfg zero, zero, r23, 10
000308  15003014  dma_cfg zero, zero, r3, 10
00030c  9f011000  addli r3, zero, 8
000310  1500d014  dma_cfg zero, zero, r13, 10
000314  15008015  dma_cfg zero, zero, r24, 10
000318  15005014  dma_cfg zero, zero, r5, 10
00031c  15003014  dma_cfg zero, zero, r3, 10
000320  9f111000  addli r3, zero, 9
000324  15003014  dma_cfg zero, zero, r3, 10
000328  9f211000  addli r3, zero, 10
00032c  15003014  dma_cfg zero, zero, r3, 10
000330  9f311000  addli r3, zero, 11
000334  15003014  dma_cfg zero, zero, r3, 10
000338  9f411000  addli r3, zero, 12
00033c  15003014  dma_cfg zero, zero, r3, 10
000340  9f511000  addli r3, zero, 13
000344  15003014  dma_cfg zero, zero, r3, 10
000348  9f711000  addli r3, zero, 15
00034c  1500a015  dma_cfg zero, zero, r26, 10
000350  15003014  dma_cfg zero, zero, r3, 10
000354  9f012000  addli r3, zero, 16
000358  15003014  dma_cfg zero, zero, r3, 10
00035c  9f112000  addli r3, zero, 17
000360  15003014  dma_cfg zero, zero, r3, 10
000364  9f212000  addli r3, zero, 18
000368  15003014  dma_cfg zero, zero, r3, 10
00036c  9f312000  addli r3, zero, 19
000370  15003014  dma_cfg zero, zero, r3, 10
000374  9f412000  addli r3, zero, 20
000378  15003014  dma_cfg zero, zero, r3, 10
00037c  9f512000  addli r3, zero, 21
000380  15003014  dma_cfg zero, zero, r3, 10
000384  9f612000  addli r3, zero, 22
000388  15003014  dma_cfg zero, zero, r3, 10
00038c  9f712000  addli r3, zero, 23
000390  15003014  dma_cfg zero, zero, r3, 10
000394  9f013000  addli r3, zero, 24
000398  15003014  dma_cfg zero, zero, r3, 10
00039c  9f113000  addli r3, zero, 25
0003a0  15003014  dma_cfg zero, zero, r3, 10
0003a4  9f213000  addli r3, zero, 26
0003a8  15003014  dma_cfg zero, zero, r3, 10
0003ac  9f313000  addli r3, zero, 27
0003b0  15003014  dma_cfg zero, zero, r3, 10
0003b4  9f413000  addli r3, zero, 28
0003b8  15003014  dma_cfg zero, zero, r3, 10
0003bc  9f513000  addli r3, zero, 29
0003c0  15003014  dma_cfg zero, zero, r3, 10
0003c4  9f613000  addli r3, zero, 30
0003c8  15003014  dma_cfg zero, zero, r3, 10
0003cc  9f713000  addli r3, zero, 31
0003d0  15003014  dma_cfg zero, zero, r3, 10
0003d4  9f018000  addli r3, zero, 64
0003d8  15070700  dma_cfg r14, r14, zero, 0
0003dc  15070002  dma_cfg r14, zero, zero, 1
0003e0  15000004  dma_cfg zero, zero, zero, 2
0003e4  95033006  dma_cfg r7, zero, r3, 3
0003e8  9f010002  addli r3, zero, 256
0003ec  9505c008  dma_cfg r11, zero, r12, 4
0003f0  9501b00a  dma_cfg r3, zero, r11, 5
0003f4  15000010  dma_cfg zero, zero, zero, 8
0003f8  35000000  dma_run zero
0003fc  1500e00a  dma_cfg zero, zero, r14, 5
000400  15000010  dma_cfg zero, zero, zero, 8
000404  1d900600  unlock r13
000408  ab010300  lui r3, 48
00040c  9f420000  addli r5, zero, 4
000410  674d0ffe  storeli.w zero, -44(r30)
000414  1f170000  addli r14, zero, 1
000418  9f0d8000  addli r27, zero, 64
00041c  9f560000  addli r13, zero, 5
000420  9b910104  ori r3, r3, 64
000424  1d800200  lock zero, r5
000428  15070700  dma_cfg r14, r14, zero, 0
00042c  8b113510  add.s r3, r10, r3
000430  15000904  dma_cfg zero, r18, zero, 2
000434  9581b807  dma_cfg r3, r17, r27, 3
000438  9f080002  addli r17, zero, 256
00043c  9f011000  addli r3, zero, 8
000440  9585cd08  dma_cfg r11, r27, r12, 4
000444  9588450a  dma_cfg r17, r11, r4, 5
000448  15000010  dma_cfg zero, zero, zero, 8
00044c  35000000  dma_run zero
000450  1500e00a  dma_cfg zero, zero, r14, 5
000454  15000010  dma_cfg zero, zero, zero, 8
000458  1d900200  unlock r5
00045c  1d800600  lock zero, r13
000460  15000014  dma_cfg zero, zero, zero, 10
000464  1500e014  dma_cfg zero, zero, r14, 10
000468  1500c014  dma_cfg zero, zero, r12, 10
00046c  15007015  dma_cfg zero, zero, r23, 10
000470  15005014  dma_cfg zero, zero, r5, 10
000474  9f720000  addli r5, zero, 7
000478  1500d014  dma_cfg zero, zero, r13, 10
00047c  15008015  dma_cfg zero, zero, r24, 10
000480  15005014  dma_cfg zero, zero, r5, 10
000484  15003014  dma_cfg zero, zero, r3, 10
000488  9f111000  addli r3, zero, 9
00048c  15003014  dma_cfg zero, zero, r3, 10
000490  9f211000  addli r3, zero, 10
000494  15003014  dma_cfg zero, zero, r3, 10
000498  9f311000  addli r3, zero, 11
00049c  15003014  dma_cfg zero, zero, r3, 10
0004a0  9f411000  addli r3, zero, 12
0004a4  15003014  dma_cfg zero, zero, r3, 10
0004a8  9f511000  addli r3, zero, 13
0004ac  15003014  dma_cfg zero, zero, r3, 10
0004b0  9f711000  addli r3, zero, 15
0004b4  1500a015  dma_cfg zero, zero, r26, 10
0004b8  15003014  dma_cfg zero, zero, r3, 10
0004bc  9f012000  addli r3, zero, 16
0004c0  15003014  dma_cfg zero, zero, r3, 10
0004c4  9f112000  addli r3, zero, 17
0004c8  15003014  dma_cfg zero, zero, r3, 10
0004cc  9f212000  addli r3, zero, 18
0004d0  15003014  dma_cfg zero, zero, r3, 10
0004d4  9f312000  addli r3, zero, 19
0004d8  15003014  dma_cfg zero, zero, r3, 10
0004dc  9f412000  addli r3, zero, 20
0004e0  15003014  dma_cfg zero, zero, r3, 10
0004e4  9f512000  addli r3, zero, 21
0004e8  15003014  dma_cfg zero, zero, r3, 10
0004ec  9f612000  addli r3, zero, 22
0004f0  15003014  dma_cfg zero, zero, r3, 10
0004f4  9f712000  addli r3, zero, 23
0004f8  15003014  dma_cfg zero, zero, r3, 10
0004fc  9f013000  addli r3, zero, 24
000500  15003014  dma_cfg zero, zero, r3, 10
000504  9f113000  addli r3, zero, 25
000508  15003014  dma_cfg zero, zero, r3, 10
00050c  9f213000  addli r3, zero, 26
000510  15003014  dma_cfg zero, zero, r3, 10
000514  9f313000  addli r3, zero, 27
000518  15003014  dma_cfg zero, zero, r3, 10
00051c  9f413000  addli r3, zero, 28
000520  15003014  dma_cfg zero, zero, r3, 10
000524  9f513000  addli r3, zero, 29
000528  15003014  dma_cfg zero, zero, r3, 10
00052c  9f613000  addli r3, zero, 30
000530  15003014  dma_cfg zero, zero, r3, 10
000534  9f713000  addli r3, zero, 31
000538  15003014  dma_cfg zero, zero, r3, 10
00053c  15070700  dma_cfg r14, r14, zero, 0
000540  15070002  dma_cfg r14, zero, zero, 1
000544  15000004  dma_cfg zero, zero, zero, 2
000548  9503b007  dma_cfg r7, zero, r27, 3
00054c  9505c008  dma_cfg r11, zero, r12, 4
000550  9508400a  dma_cfg r17, zero, r4, 5
000554  1f220000  addli r4, zero, 2
000558  15000010  dma_cfg zero, zero, zero, 8
00055c  35000000  dma_run zero
000560  1500e00a  dma_cfg zero, zero, r14, 5
000564  15000010  dma_cfg zero, zero, zero, 8
000568  1d900600  unlock r13
00056c  7d000600  xsignal r12, 0
000570  db0d0000  j 108
000574  9f210000  addli r3, zero, 2
000578  3bc13400  bneq r9, r3, 80
00057c  1f520000  addli r4, zero, 5
000580  7d900100  xwait r3, 0
000584  9f050001  addli r11, zero, 128
000588  7d100200  xwait r4, 0
00058c  1d000000  lock zero, zero
000590  1f220000  addli r4, zero, 2
000594  81010000  ds_cfg r3, zero, 0
000598  9f018000  addli r3, zero, 64
00059c  81010002  ds_cfg r3, zero, 1
0005a0  8101001c  ds_cfg r3, zero, 14
0005a4  8105001a  ds_cfg r11, zero, 13
0005a8  21953302  shuffle_batch r10, r7, r3, 1
0005ac  9f110000  addli r3, zero, 1
0005b0  1d100000  unlock zero
0005b4  7d800b00  xsignal r23, 0
0005b8  674d3ffe  storeli.w r3, -44(r30)
0005bc  9f410000  addli r3, zero, 4
0005c0  7d800100  xsignal r3, 0
0005c4  5b020000  j 16
0005c8  1f220000  addli r4, zero, 2
0005cc  674d0ffe  storeli.w zero, -44(r30)
0005d0  9f050001  addli r11, zero, 128
0005d4  9f720000  addli r5, zero, 7
0005d8  1f170000  addli r14, zero, 1
0005dc  9bb07000  slli r1, r1, 7
0005e0  73305fff  store.d r[22:23], -32(r30)
0005e4  8b101418  sub.s r1, r8, r1
0005e8  1b340301  slli r8, r6, 16
0005ec  8b902030  div.s r1, r1, r2
0005f0  674b1ffe  storeli.w r1, -76(r30)
0005f4  b3800028  zext_int2long r[2:3], r1
0005f8  17b15002  sll.d r[3:4], r[2:3], r5
0005fc  ab800400  lui r1, 72
000600  1733e102  sll.d r[7:8], r[3:4], r14
000604  8b101510  add.s r1, r10, r1
000608  9f710000  addli r3, zero, 7
00060c  733c6ffa  store.d r[7:8], -72(r30)
000610  bbeae400  bneq r9, r14, 696
000614  6b528f00  load.d r[5:6], 8(r30)
000618  7d900100  xwait r3, 0
00061c  6341dfff  loadli.w r2,  -20(r30)
000620  0b226210  add.ul r[5:6], r[5:6], r[7:8]
000624  1f230000  addli r6, zero, 2
000628  bf342300  blt.s r6, r2, 300
00062c  9f530000  addli r7, zero, 5
000630  1f160000  addli r12, zero, 1
000634  9f460000  addli r13, zero, 4
000638  1f610000  addli r2, zero, 6
00063c  1d800300  lock zero, r7
000640  15000014  dma_cfg zero, zero, zero, 10
000644  1500c014  dma_cfg zero, zero, r12, 10
000648  15006014  dma_cfg zero, zero, r6, 10
00064c  15007015  dma_cfg zero, zero, r23, 10
000650  1500d014  dma_cfg zero, zero, r13, 10
000654  15007014  dma_cfg zero, zero, r7, 10
000658  15002014  dma_cfg zero, zero, r2, 10
00065c  1f011000  addli r2, zero, 8
000660  15003014  dma_cfg zero, zero, r3, 10
000664  15002014  dma_cfg zero, zero, r2, 10
000668  1f111000  addli r2, zero, 9
00066c  15002014  dma_cfg zero, zero, r2, 10
000670  1f211000  addli r2, zero, 10
000674  15002014  dma_cfg zero, zero, r2, 10
000678  1f311000  addli r2, zero, 11
00067c  15002014  dma_cfg zero, zero, r2, 10
000680  1f411000  addli r2, zero, 12
000684  15002014  dma_cfg zero, zero, r2, 10
000688  1f511000  addli r2, zero, 13
00068c  15002014  dma_cfg zero, zero, r2, 10
000690  1f611000  addli r2, zero, 14
000694  15002014  dma_cfg zero, zero, r2, 10
000698  1f711000  addli r2, zero, 15
00069c  15002014  dma_cfg zero, zero, r2, 10
0006a0  1f012000  addli r2, zero, 16
0006a4  15002014  dma_cfg zero, zero, r2, 10
0006a8  1f112000  addli r2, zero, 17
0006ac  15002014  dma_cfg zero, zero, r2, 10
0006b0  1f212000  addli r2, zero, 18
0006b4  15002014  dma_cfg zero, zero, r2, 10
0006b8  1f312000  addli r2, zero, 19
0006bc  15002014  dma_cfg zero, zero, r2, 10
0006c0  1f412000  addli r2, zero, 20
0006c4  15002014  dma_cfg zero, zero, r2, 10
0006c8  1f512000  addli r2, zero, 21
0006cc  15002014  dma_cfg zero, zero, r2, 10
0006d0  1f612000  addli r2, zero, 22
0006d4  15002014  dma_cfg zero, zero, r2, 10
0006d8  1f712000  addli r2, zero, 23
0006dc  15002014  dma_cfg zero, zero, r2, 10
0006e0  1f013000  addli r2, zero, 24
0006e4  15002014  dma_cfg zero, zero, r2, 10
0006e8  1f113000  addli r2, zero, 25
0006ec  15002014  dma_cfg zero, zero, r2, 10
0006f0  1f213000  addli r2, zero, 26
0006f4  15002014  dma_cfg zero, zero, r2, 10
0006f8  1f313000  addli r2, zero, 27
0006fc  15002014  dma_cfg zero, zero, r2, 10
000700  1f413000  addli r2, zero, 28
000704  15002014  dma_cfg zero, zero, r2, 10
000708  1f513000  addli r2, zero, 29
00070c  15002014  dma_cfg zero, zero, r2, 10
000710  1f613000  addli r2, zero, 30
000714  15002014  dma_cfg zero, zero, r2, 10
000718  1f713000  addli r2, zero, 31
00071c  15002014  dma_cfg zero, zero, r2, 10
000720  1f018000  addli r2, zero, 64
000724  15060600  dma_cfg r12, r12, zero, 0
000728  15060002  dma_cfg r12, zero, zero, 1
00072c  15000004  dma_cfg zero, zero, zero, 2
000730  95002006  dma_cfg r1, zero, r2, 3
000734  9505d008  dma_cfg r11, zero, r13, 4
000738  9f060004  addli r13, zero, 512
00073c  9506200a  dma_cfg r13, zero, r2, 5
000740  15000010  dma_cfg zero, zero, zero, 8
000744  35000000  dma_run zero
000748  1500c00a  dma_cfg zero, zero, r12, 5
00074c  15000010  dma_cfg zero, zero, zero, 8
000750  1d900300  unlock r7
000754  2b810400  lui r2, 72
000758  e74d0ffe  storeli.w zero, -36(r30)
00075c  e70d0ffe  storeli.w zero, -40(r30)
000760  9f130000  addli r7, zero, 1
000764  1f068000  addli r12, zero, 64
000768  9f060004  addli r13, zero, 512
00076c  1b110104  ori r2, r2, 64
000770  0b112510  add.s r2, r10, r2
000774  1f450000  addli r10, zero, 4
000778  1d000500  lock zero, r10
00077c  95830300  dma_cfg r7, r7, zero, 0
000780  15800204  dma_cfg zero, r5, zero, 2
000784  1501c206  dma_cfg r2, r4, r12, 3
000788  1f010020  addli r2, zero, 4096
00078c  9f520000  addli r5, zero, 5
000790  1f620000  addli r4, zero, 6
000794  9505a608  dma_cfg r11, r12, r10, 4
000798  9506c10a  dma_cfg r13, r2, r12, 5
00079c  1f011000  addli r2, zero, 8
0007a0  15000010  dma_cfg zero, zero, zero, 8
0007a4  35000000  dma_run zero
0007a8  1500700a  dma_cfg zero, zero, r7, 5
0007ac  15000010  dma_cfg zero, zero, zero, 8
0007b0  1d100500  unlock r10
0007b4  1d800200  lock zero, r5
0007b8  15000014  dma_cfg zero, zero, zero, 10
0007bc  15007014  dma_cfg zero, zero, r7, 10
0007c0  15006014  dma_cfg zero, zero, r6, 10
0007c4  15007015  dma_cfg zero, zero, r23, 10
0007c8  1500a014  dma_cfg zero, zero, r10, 10
0007cc  15005014  dma_cfg zero, zero, r5, 10
0007d0  15004014  dma_cfg zero, zero, r4, 10
0007d4  15003014  dma_cfg zero, zero, r3, 10
0007d8  15002014  dma_cfg zero, zero, r2, 10
0007dc  1f111000  addli r2, zero, 9
0007e0  15002014  dma_cfg zero, zero, r2, 10
0007e4  1f211000  addli r2, zero, 10
0007e8  15002014  dma_cfg zero, zero, r2, 10
0007ec  1f311000  addli r2, zero, 11
0007f0  15002014  dma_cfg zero, zero, r2, 10
0007f4  1f411000  addli r2, zero, 12
0007f8  15002014  dma_cfg zero, zero, r2, 10
0007fc  1f511000  addli r2, zero, 13
000800  15002014  dma_cfg zero, zero, r2, 10
000804  1f611000  addli r2, zero, 14
000808  15002014  dma_cfg zero, zero, r2, 10
00080c  1f711000  addli r2, zero, 15
000810  15002014  dma_cfg zero, zero, r2, 10
000814  1f012000  addli r2, zero, 16
000818  15002014  dma_cfg zero, zero, r2, 10
00081c  1f112000  addli r2, zero, 17
000820  15002014  dma_cfg zero, zero, r2, 10
000824  1f212000  addli r2, zero, 18
000828  15002014  dma_cfg zero, zero, r2, 10
00082c  1f312000  addli r2, zero, 19
000830  15002014  dma_cfg zero, zero, r2, 10
000834  1f412000  addli r2, zero, 20
000838  15002014  dma_cfg zero, zero, r2, 10
00083c  1f512000  addli r2, zero, 21
000840  15002014  dma_cfg zero, zero, r2, 10
000844  1f612000  addli r2, zero, 22
000848  15002014  dma_cfg zero, zero, r2, 10
00084c  1f712000  addli r2, zero, 23
000850  15002014  dma_cfg zero, zero, r2, 10
000854  1f013000  addli r2, zero, 24
000858  15002014  dma_cfg zero, zero, r2, 10
00085c  1f113000  addli r2, zero, 25
000860  15002014  dma_cfg zero, zero, r2, 10
000864  1f213000  addli r2, zero, 26
000868  15002014  dma_cfg zero, zero, r2, 10
00086c  1f313000  addli r2, zero, 27
000870  15002014  dma_cfg zero, zero, r2, 10
000874  1f413000  addli r2, zero, 28
000878  15002014  dma_cfg zero, zero, r2, 10
00087c  1f513000  addli r2, zero, 29
000880  15002014  dma_cfg zero, zero, r2, 10
000884  1f613000  addli r2, zero, 30
000888  15002014  dma_cfg zero, zero, r2, 10
00088c  1f713000  addli r2, zero, 31
000890  15002014  dma_cfg zero, zero, r2, 10
000894  95830300  dma_cfg r7, r7, zero, 0
000898  95030002  dma_cfg r7, zero, zero, 1
00089c  15000004  dma_cfg zero, zero, zero, 2
0008a0  9500c006  dma_cfg r1, zero, r12, 3
0008a4  9505a008  dma_cfg r11, zero, r10, 4
0008a8  9506c00a  dma_cfg r13, zero, r12, 5
0008ac  15000010  dma_cfg zero, zero, zero, 8
0008b0  35000000  dma_run zero
0008b4  1500700a  dma_cfg zero, zero, r7, 5
0008b8  15000010  dma_cfg zero, zero, zero, 8
0008bc  1d900200  unlock r5
0008c0  7d000200  xsignal r4, 0
0008c4  5b210000  j 264
0008c8  1f410000  addli r2, zero, 4
0008cc  37d12400  beq r9, r2, 84
0008d0  3bd33400  bneq r9, r3, 212
0008d4  1f610000  addli r2, zero, 6
0008d8  e70d0ffe  storeli.w zero, -40(r30)
0008dc  7d100100  xwait r2, 0
0008e0  1f111000  addli r2, zero, 9
0008e4  7d100100  xwait r2, 0
0008e8  1d000000  lock zero, zero
0008ec  1f018000  addli r2, zero, 64
0008f0  01020000  ds_cfg r4, zero, 0
0008f4  81050002  ds_cfg r11, zero, 1
0008f8  0101001c  ds_cfg r2, zero, 14
0008fc  8105001a  ds_cfg r11, zero, 13
000900  41852004  shuffle_coa r10, r1, r2, 2
000904  9f100000  addli r1, zero, 1
000908  1d100000  unlock zero
00090c  7d800100  xsignal r3, 0
000910  e74d1ffe  storeli.w r1, -36(r30)
000914  9f001000  addli r1, zero, 8
000918  7d800000  xsignal r1, 0
00091c  5b160000  j 176
000920  9f420000  addli r5, zero, 4
000924  9f001000  addli r1, zero, 8
000928  9f010000  addli r3, zero, 0
00092c  1f110000  addli r2, zero, 1
000930  1f321000  addli r4, zero, 11
000934  1f038000  addli r6, zero, 64
000938  7d900200  xwait r5, 0
00093c  7d900000  xwait r1, 0
000940  9f100000  addli r1, zero, 1
000944  7d100200  xwait r4, 0
000948  1bb2e100  slli r4, r3, 14
00094c  9bb18100  slli r3, r3, 8
000950  1d800000  lock zero, r1
000954  0903b300  mm_cfg r6, r6, r11, 0
000958  1712a200  or r4, r4, r10
00095c  97918100  or r3, r3, r8
000960  89821204  mm_cfg r5, r5, r1, 2
000964  a9014510  mm r3, r10, r4, 8
000968  1b021100  andi r4, r2, 1
00096c  9f110000  addli r3, zero, 1
000970  1f010000  addli r2, zero, 0
000974  1d900000  unlock r1
000978  3b4f02fe  bneq r4, zero, -48
00097c  9f500000  addli r1, zero, 5
000980  e74d0ffe  storeli.w zero, -36(r30)
000984  7d800000  xsignal r1, 0
000988  9f101000  addli r1, zero, 9
00098c  7d800000  xsignal r1, 0
000990  9f100000  addli r1, zero, 1
000994  e70d1ffe  storeli.w r1, -40(r30)
000998  9f201000  addli r1, zero, 10
00099c  7d800000  xsignal r1, 0
0009a0  db050000  j 44
0009a4  bb807401  bneq r9, r23, 32
0009a8  9f201000  addli r1, zero, 10
0009ac  e74d0ffe  storeli.w zero, -36(r30)
0009b0  e70d0ffe  storeli.w zero, -40(r30)
0009b4  7d900000  xwait r1, 0
0009b8  9f501000  addli r1, zero, 13
0009bc  7d900000  xwait r1, 0
0009c0  db010000  j 12
0009c4  e74d0ffe  storeli.w zero, -36(r30)
0009c8  e70d0ffe  storeli.w zero, -40(r30)
0009cc  ab000600  lui r1, 96
0009d0  eb510fff  load.d r[4:5], -16(r30)
0009d4  3d000000  xfence
0009d8  00a00300  mfence { lm, sm, gm }
0009dc  8b1a1410  add.s r21, r8, r1
0009e0  9f70f001  addli r1, zero, 255
0009e4  80a20004  csr_set csr5, r1
0009e8  9f000001  addli r1, zero, 128
0009ec  00e00200  sync_core
0009f0  33850028  zext_int2long r[11:12], r1
0009f4  9f70f000  addli r1, zero, 127
0009f8  338b0028  zext_int2long r[23:24], r1
0009fc  37810400  beq r9, zero, 64
000a00  9f100000  addli r1, zero, 1
000a04  b7e81400  beq r9, r1, 568
000a08  e340afff  loadli.w r1,  -44(r30)
000a0c  bbd00002  bneq r1, zero, 1076
000a10  9f300000  addli r1, zero, 3
000a14  b7c81402  beq r9, r1, 1584
000a18  e300bfff  loadli.w r1,  -40(r30)
000a1c  bbb00004  bneq r1, zero, 2092
000a20  9f500000  addli r1, zero, 5
000a24  b7a81404  beq r9, r1, 2600
000a28  9f600000  addli r1, zero, 6
000a2c  b7901406  beq r9, r1, 3108
000a30  e340bfff  loadli.w r1,  -36(r30)
000a34  bb880006  bneq r1, zero, 3616
000a38  5b020200  j 4112
000a3c  3d000000  xfence
000a40  33010028  zext_int2long r[3:4], zero
000a44  00a00300  mfence { lm, sm, gm }
000a48  db030000  j 28
000a4c  9f701000  addli r1, zero, 15
000a50  eb518fff  load.d r[4:5], -8(r30)
000a54  b3800028  zext_int2long r[2:3], r1
000a58  93a01104  setlt.ul r1, r[4:5], r[2:3]
000a5c  27910100  addli.d r[3:4], r[4:5], 1
000a60  37a70000  beq r1, zero, 456
000a64  9f700000  addli r1, zero, 7
000a68  733c2ffe  store.d r[3:4], -8(r30)
000a6c  17331102  sll.d r[7:8], r[3:4], r1
000a70  bbd18a00  bneq r21, r8, 116
000a74  b3010028  zext_int2long r[4:5], zero
000a78  5b030000  j 24
000a7c  93a26105  setlt.ul r5, r[4:5], r[23:24]
000a80  8b901a10  add.s r1, r21, r1
000a84  a7910100  addli.d r[4:5], r[4:5], 1
000a88  73e02000  stores.w r2, 0(r1)
000a8c  378f02fe  beq r5, zero, -64
000a90  8ba06110  add.ul r[2:3], r[4:5], r[7:8]
000a94  9bb02000  slli r1, r1, 2
000a98  0b111410  add.s r2, r8, r1
000a9c  ef420100  loads.w r5, 0(r2)
000aa0  9784f200  and r9, r5, r15
000aa4  13819c04  setlt.u r2, r25, r9
000aa8  3b500100  bneq r2, zero, 20
000aac  1f810200  addli r2, r5, 0
000ab0  93849904  setlt.u r9, r19, r9
000ab4  3baf04fe  bneq r9, zero, -56
000ab8  db020000  j 20
000abc  2b014000  lui r2, 1024
000ac0  17912200  or r2, r5, r2
000ac4  93849904  setlt.u r9, r19, r9
000ac8  bbde04fe  bneq r9, zero, -76
000acc  1bc10201  srli r2, r5, 16
000ad0  1b011100  andi r2, r2, 1
000ad4  0b912210  add.s r2, r5, r2
000ad8  0b110111  add.s r2, r2, r16
000adc  17014101  and r2, r2, r20
000ae0  dbf3ffff  j -100
000ae4  33020028  zext_int2long r[5:6], zero
000ae8  db040000  j 36
000aec  27420200  addli.d r[5:6], r[5:6], 4
000af0  0b918a11  add.s r2, r21, r24
000af4  9320a200  seteq.d r1, r[5:6], r[11:12]
000af8  73661101  stores.w r17, 12(r2)
000afc  7364c101  stores.w r28, 8(r2)
000b00  7362c100  stores.w r12, 4(r2)
000b04  7360d100  stores.w r13, 0(r2)
000b08  3b9d00fe  bneq r1, zero, -188
000b0c  8b206210  add.ul r[2:3], r[5:6], r[7:8]
000b10  1bbc2000  slli r24, r1, 2
000b14  8b168411  add.s r13, r8, r24
000b18  6fc7c600  loads.w r14, 12(r13)
000b1c  9704f700  and r9, r14, r15
000b20  93809c04  setlt.u r1, r25, r9
000b24  3bb00000  bneq r1, zero, 12
000b28  9f080700  addli r17, r14, 0
000b2c  db010000  j 12
000b30  ab004000  lui r1, 1024
000b34  97181700  or r17, r14, r1
000b38  6fc98600  loads.w r18, 8(r13)
000b3c  9701f900  and r3, r18, r15
000b40  93803c04  setlt.u r1, r25, r3
000b44  3bb00000  bneq r1, zero, 12
000b48  1f0e0900  addli r28, r18, 0
000b4c  db010000  j 12
000b50  ab004000  lui r1, 1024
000b54  171e1900  or r28, r18, r1
000b58  efcd4600  loads.w r27, 4(r13)
000b5c  9780fd00  and r1, r27, r15
000b60  13811c04  setlt.u r2, r25, r1
000b64  3b300100  bneq r2, zero, 12
000b68  1f860d00  addli r12, r27, 0
000b6c  db010000  j 12
000b70  2b014000  lui r2, 1024
000b74  17962d00  or r12, r27, r2
000b78  6fc10600  loads.w r2, 0(r13)
000b7c  170df100  and r26, r2, r15
000b80  9386ac05  setlt.u r13, r25, r26
000b84  3bd00600  bneq r13, zero, 20
000b88  9f060100  addli r13, r2, 0
000b8c  138da905  setlt.u r26, r19, r26
000b90  37600d00  beq r26, zero, 24
000b94  5b050000  j 40
000b98  ab064000  lui r13, 1024
000b9c  9716d100  or r13, r2, r13
000ba0  138da905  setlt.u r26, r19, r26
000ba4  3b600d00  bneq r26, zero, 24
000ba8  9b460101  srli r13, r2, 16
000bac  9b861600  andi r13, r13, 1
000bb0  0b11d110  add.s r2, r2, r13
000bb4  0b110111  add.s r2, r2, r16
000bb8  97064101  and r13, r2, r20
000bbc  93801904  setlt.u r1, r19, r1
000bc0  37e00000  beq r1, zero, 24
000bc4  93803904  setlt.u r1, r19, r3
000bc8  b7b00000  beq r1, zero, 44
000bcc  93809904  setlt.u r1, r19, r9
000bd0  3bfc00fe  bneq r1, zero, -228
000bd4  db070000  j 60
000bd8  9bc00d01  srli r1, r27, 16
000bdc  9b801000  andi r1, r1, 1
000be0  8b901d10  add.s r1, r27, r1
000be4  8b900011  add.s r1, r1, r16
000be8  17864001  and r12, r1, r20
000bec  93803904  setlt.u r1, r19, r3
000bf0  3bff00fe  bneq r1, zero, -36
000bf4  9b400901  srli r1, r18, 16
000bf8  9b801000  andi r1, r1, 1
000bfc  8b101910  add.s r1, r18, r1
000c00  8b900011  add.s r1, r1, r16
000c04  178e4001  and r28, r1, r20
000c08  93809904  setlt.u r1, r19, r9
000c0c  bb8b00fe  bneq r1, zero, -288
000c10  9b400701  srli r1, r14, 16
000c14  9b801000  andi r1, r1, 1
000c18  8b101710  add.s r1, r14, r1
000c1c  8b900011  add.s r1, r1, r16
000c20  97884001  and r17, r1, r20
000c24  5bd9ffff  j -312
000c28  00200100  mfence { sm }
000c2c  80340002  core_id r9
000c30  eb510fff  load.d r[4:5], -16(r30)
000c34  9f100000  addli r1, zero, 1
000c38  3bc714fe  bneq r9, r1, -560
000c3c  9f002000  addli r1, zero, 16
000c40  3d000000  xfence
000c44  00a00300  mfence { lm, sm, gm }
000c48  33810028  zext_int2long r[3:4], r1
000c4c  db030000  j 28
000c50  9f703000  addli r1, zero, 31
000c54  eb518fff  load.d r[4:5], -8(r30)
000c58  b3800028  zext_int2long r[2:3], r1
000c5c  93a01104  setlt.ul r1, r[4:5], r[2:3]
000c60  27910100  addli.d r[3:4], r[4:5], 1
000c64  37a70000  beq r1, zero, 456
000c68  9f700000  addli r1, zero, 7
000c6c  733c2ffe  store.d r[3:4], -8(r30)
000c70  17331102  sll.d r[7:8], r[3:4], r1
000c74  bbd18a00  bneq r21, r8, 116
000c78  b3010028  zext_int2long r[4:5], zero
000c7c  5b030000  j 24
000c80  93a26105  setlt.ul r5, r[4:5], r[23:24]
000c84  8b901a10  add.s r1, r21, r1
000c88  a7910100  addli.d r[4:5], r[4:5], 1
000c8c  73e02000  stores.w r2, 0(r1)
000c90  378f02fe  beq r5, zero, -64
000c94  8ba06110  add.ul r[2:3], r[4:5], r[7:8]
000c98  9bb02000  slli r1, r1, 2
000c9c  0b111410  add.s r2, r8, r1
000ca0  ef420100  loads.w r5, 0(r2)
000ca4  9784f200  and r9, r5, r15
000ca8  13819c04  setlt.u r2, r25, r9
000cac  3b500100  bneq r2, zero, 20
000cb0  1f810200  addli r2, r5, 0
000cb4  93849904  setlt.u r9, r19, r9
000cb8  3baf04fe  bneq r9, zero, -56
000cbc  db020000  j 20
000cc0  2b014000  lui r2, 1024
000cc4  17912200  or r2, r5, r2
000cc8  93849904  setlt.u r9, r19, r9
000ccc  bbde04fe  bneq r9, zero, -76
000cd0  1bc10201  srli r2, r5, 16
000cd4  1b011100  andi r2, r2, 1
000cd8  0b912210  add.s r2, r5, r2
000cdc  0b110111  add.s r2, r2, r16
000ce0  17014101  and r2, r2, r20
000ce4  dbf3ffff  j -100
000ce8  33020028  zext_int2long r[5:6], zero
000cec  db040000  j 36
000cf0  27420200  addli.d r[5:6], r[5:6], 4
000cf4  0b918a11  add.s r2, r21, r24
000cf8  9320a200  seteq.d r1, r[5:6], r[11:12]
000cfc  7366e100  stores.w r14, 12(r2)
000d00  73642101  stores.w r18, 8(r2)
000d04  7362b101  stores.w r27, 4(r2)
000d08  7360d100  stores.w r13, 0(r2)
000d0c  3b9d00fe  bneq r1, zero, -188
000d10  8b206210  add.ul r[2:3], r[5:6], r[7:8]
000d14  1bbc2000  slli r24, r1, 2
000d18  8b168411  add.s r13, r8, r24
000d1c  efc8c600  loads.w r17, 12(r13)
000d20  9784f800  and r9, r17, r15
000d24  93809c04  setlt.u r1, r25, r9
000d28  3bb00000  bneq r1, zero, 12
000d2c  1f870800  addli r14, r17, 0
000d30  db010000  j 12
000d34  ab004000  lui r1, 1024
000d38  17971800  or r14, r17, r1
000d3c  6fce8600  loads.w r28, 8(r13)
000d40  9701fe00  and r3, r28, r15
000d44  93803c04  setlt.u r1, r25, r3
000d48  3bb00000  bneq r1, zero, 12
000d4c  1f090e00  addli r18, r28, 0
000d50  db010000  j 12
000d54  ab004000  lui r1, 1024
000d58  17191e00  or r18, r28, r1
000d5c  6fc64600  loads.w r12, 4(r13)
000d60  9700f600  and r1, r12, r15
000d64  13811c04  setlt.u r2, r25, r1
000d68  3b300100  bneq r2, zero, 12
000d6c  9f0d0600  addli r27, r12, 0
000d70  db010000  j 12
000d74  2b014000  lui r2, 1024
000d78  971d2600  or r27, r12, r2
000d7c  6fc10600  loads.w r2, 0(r13)
000d80  170df100  and r26, r2, r15
000d84  9386ac05  setlt.u r13, r25, r26
000d88  3b810600  bneq r13, zero, 64
000d8c  9f060100  addli r13, r2, 0
000d90  138da905  setlt.u r26, r19, r26
000d94  3b600d00  bneq r26, zero, 24
000d98  9b460101  srli r13, r2, 16
000d9c  9b861600  andi r13, r13, 1
000da0  0b11d110  add.s r2, r2, r13
000da4  0b110111  add.s r2, r2, r16
000da8  97064101  and r13, r2, r20
000dac  93801904  setlt.u r1, r19, r1
000db0  b7b00000  beq r1, zero, 44
000db4  93803904  setlt.u r1, r19, r3
000db8  37810000  beq r1, zero, 64
000dbc  93809904  setlt.u r1, r19, r9
000dc0  bbcc00fe  bneq r1, zero, -208
000dc4  5b0a0000  j 80
000dc8  ab064000  lui r13, 1024
000dcc  9716d100  or r13, r2, r13
000dd0  138da905  setlt.u r26, r19, r26
000dd4  371f0dfe  beq r26, zero, -60
000dd8  dbfaffff  j -44
000ddc  9b400601  srli r1, r12, 16
000de0  9b801000  andi r1, r1, 1
000de4  8b101610  add.s r1, r12, r1
000de8  8b900011  add.s r1, r1, r16
000dec  978d4001  and r27, r1, r20
000df0  93803904  setlt.u r1, r19, r3
000df4  3baf00fe  bneq r1, zero, -56
000df8  9b400e01  srli r1, r28, 16
000dfc  9b801000  andi r1, r1, 1
000e00  8b101e10  add.s r1, r28, r1
000e04  8b900011  add.s r1, r1, r16
000e08  17894001  and r18, r1, r20
000e0c  93809904  setlt.u r1, r19, r9
000e10  bb8b00fe  bneq r1, zero, -288
000e14  9bc00801  srli r1, r17, 16
000e18  9b801000  andi r1, r1, 1
000e1c  8b901810  add.s r1, r17, r1
000e20  8b900011  add.s r1, r1, r16
000e24  17874001  and r14, r1, r20
000e28  5bd9ffff  j -312
000e2c  00200100  mfence { sm }
000e30  80340002  core_id r9
000e34  eb510fff  load.d r[4:5], -16(r30)
000e38  e340afff  loadli.w r1,  -44(r30)
000e3c  37df00fc  beq r1, zero, -1068
000e40  9f004000  addli r1, zero, 32
000e44  3d000000  xfence
000e48  00a00300  mfence { lm, sm, gm }
000e4c  33810028  zext_int2long r[3:4], r1
000e50  db030000  j 28
000e54  9f705000  addli r1, zero, 47
000e58  eb518fff  load.d r[4:5], -8(r30)
000e5c  b3800028  zext_int2long r[2:3], r1
000e60  93a01104  setlt.ul r1, r[4:5], r[2:3]
000e64  27910100  addli.d r[3:4], r[4:5], 1
000e68  37a70000  beq r1, zero, 456
000e6c  9f700000  addli r1, zero, 7
000e70  733c2ffe  store.d r[3:4], -8(r30)
000e74  17331102  sll.d r[7:8], r[3:4], r1
000e78  bbd18a00  bneq r21, r8, 116
000e7c  b3010028  zext_int2long r[4:5], zero
000e80  5b030000  j 24
000e84  93a26105  setlt.ul r5, r[4:5], r[23:24]
000e88  8b901a10  add.s r1, r21, r1
000e8c  a7910100  addli.d r[4:5], r[4:5], 1
000e90  73e02000  stores.w r2, 0(r1)
000e94  378f02fe  beq r5, zero, -64
000e98  8ba06110  add.ul r[2:3], r[4:5], r[7:8]
000e9c  9bb02000  slli r1, r1, 2
000ea0  0b111410  add.s r2, r8, r1
000ea4  ef420100  loads.w r5, 0(r2)
000ea8  9784f200  and r9, r5, r15
000eac  13819c04  setlt.u r2, r25, r9
000eb0  3b500100  bneq r2, zero, 20
000eb4  1f810200  addli r2, r5, 0
000eb8  93849904  setlt.u r9, r19, r9
000ebc  3baf04fe  bneq r9, zero, -56
000ec0  db020000  j 20
000ec4  2b014000  lui r2, 1024
000ec8  17912200  or r2, r5, r2
000ecc  93849904  setlt.u r9, r19, r9
000ed0  bbde04fe  bneq r9, zero, -76
000ed4  1bc10201  srli r2, r5, 16
000ed8  1b011100  andi r2, r2, 1
000edc  0b912210  add.s r2, r5, r2
000ee0  0b110111  add.s r2, r2, r16
000ee4  17014101  and r2, r2, r20
000ee8  dbf3ffff  j -100
000eec  33020028  zext_int2long r[5:6], zero
000ef0  db040000  j 36
000ef4  27420200  addli.d r[5:6], r[5:6], 4
000ef8  0b918a11  add.s r2, r21, r24
000efc  9320a200  seteq.d r1, r[5:6], r[11:12]
000f00  7366e100  stores.w r14, 12(r2)
000f04  73642101  stores.w r18, 8(r2)
000f08  7362b101  stores.w r27, 4(r2)
000f0c  7360d100  stores.w r13, 0(r2)
000f10  3b9d00fe  bneq r1, zero, -188
000f14  8b206210  add.ul r[2:3], r[5:6], r[7:8]
000f18  1bbc2000  slli r24, r1, 2
000f1c  8b168411  add.s r13, r8, r24
000f20  efc8c600  loads.w r17, 12(r13)
000f24  9784f800  and r9, r17, r15
000f28  93809c04  setlt.u r1, r25, r9
000f2c  3bb00000  bneq r1, zero, 12
000f30  1f870800  addli r14, r17, 0
000f34  db010000  j 12
000f38  ab004000  lui r1, 1024
000f3c  17971800  or r14, r17, r1
000f40  6fce8600  loads.w r28, 8(r13)
000f44  9701fe00  and r3, r28, r15
000f48  93803c04  setlt.u r1, r25, r3
000f4c  3bb00000  bneq r1, zero, 12
000f50  1f090e00  addli r18, r28, 0
000f54  db010000  j 12
000f58  ab004000  lui r1, 1024
000f5c  17191e00  or r18, r28, r1
000f60  6fc64600  loads.w r12, 4(r13)
000f64  9700f600  and r1, r12, r15
000f68  13811c04  setlt.u r2, r25, r1
000f6c  3b300100  bneq r2, zero, 12
000f70  9f0d0600  addli r27, r12, 0
000f74  db010000  j 12
000f78  2b014000  lui r2, 1024
000f7c  971d2600  or r27, r12, r2
000f80  6fc10600  loads.w r2, 0(r13)
000f84  170df100  and r26, r2, r15
000f88  9386ac05  setlt.u r13, r25, r26
000f8c  3b810600  bneq r13, zero, 64
000f90  9f060100  addli r13, r2, 0
000f94  138da905  setlt.u r26, r19, r26
000f98  3b600d00  bneq r26, zero, 24
000f9c  9b460101  srli r13, r2, 16
000fa0  9b861600  andi r13, r13, 1
000fa4  0b11d110  add.s r2, r2, r13
000fa8  0b110111  add.s r2, r2, r16
000fac  97064101  and r13, r2, r20
000fb0  93801904  setlt.u r1, r19, r1
000fb4  b7b00000  beq r1, zero, 44
000fb8  93803904  setlt.u r1, r19, r3
000fbc  37810000  beq r1, zero, 64
000fc0  93809904  setlt.u r1, r19, r9
000fc4  bbcc00fe  bneq r1, zero, -208
000fc8  5b0a0000  j 80
000fcc  ab064000  lui r13, 1024
000fd0  9716d100  or r13, r2, r13
000fd4  138da905  setlt.u r26, r19, r26
000fd8  371f0dfe  beq r26, zero, -60
000fdc  dbfaffff  j -44
000fe0  9b400601  srli r1, r12, 16
000fe4  9b801000  andi r1, r1, 1
000fe8  8b101610  add.s r1, r12, r1
000fec  8b900011  add.s r1, r1, r16
000ff0  978d4001  and r27, r1, r20
000ff4  93803904  setlt.u r1, r19, r3
000ff8  3baf00fe  bneq r1, zero, -56
000ffc  9b400e01  srli r1, r28, 16
001000  9b801000  andi r1, r1, 1
001004  8b101e10  add.s r1, r28, r1
001008  8b900011  add.s r1, r1, r16
00100c  17894001  and r18, r1, r20
001010  93809904  setlt.u r1, r19, r9
001014  bb8b00fe  bneq r1, zero, -288
001018  9bc00801  srli r1, r17, 16
00101c  9b801000  andi r1, r1, 1
001020  8b901810  add.s r1, r17, r1
001024  8b900011  add.s r1, r1, r16
001028  17874001  and r14, r1, r20
00102c  5bd9ffff  j -312
001030  00200100  mfence { sm }
001034  80340002  core_id r9
001038  eb510fff  load.d r[4:5], -16(r30)
00103c  9f300000  addli r1, zero, 3
001040  3be714fc  bneq r9, r1, -1576
001044  9f006000  addli r1, zero, 48
001048  3d000000  xfence
00104c  00a00300  mfence { lm, sm, gm }
001050  33810028  zext_int2long r[3:4], r1
001054  db030000  j 28
001058  9f707000  addli r1, zero, 63
00105c  eb518fff  load.d r[4:5], -8(r30)
001060  b3800028  zext_int2long r[2:3], r1
001064  93a01104  setlt.ul r1, r[4:5], r[2:3]
001068  27910100  addli.d r[3:4], r[4:5], 1
00106c  37a70000  beq r1, zero, 456
001070  9f700000  addli r1, zero, 7
001074  733c2ffe  store.d r[3:4], -8(r30)
001078  17331102  sll.d r[7:8], r[3:4], r1
00107c  bbd18a00  bneq r21, r8, 116
001080  b3010028  zext_int2long r[4:5], zero
001084  5b030000  j 24
001088  93a26105  setlt.ul r5, r[4:5], r[23:24]
00108c  8b901a10  add.s r1, r21, r1
001090  a7910100  addli.d r[4:5], r[4:5], 1
001094  73e02000  stores.w r2, 0(r1)
001098  378f02fe  beq r5, zero, -64
00109c  8ba06110  add.ul r[2:3], r[4:5], r[7:8]
0010a0  9bb02000  slli r1, r1, 2
0010a4  0b111410  add.s r2, r8, r1
0010a8  ef420100  loads.w r5, 0(r2)
0010ac  9784f200  and r9, r5, r15
0010b0  13819c04  setlt.u r2, r25, r9
0010b4  3b500100  bneq r2, zero, 20
0010b8  1f810200  addli r2, r5, 0
0010bc  93849904  setlt.u r9, r19, r9
0010c0  3baf04fe  bneq r9, zero, -56
0010c4  db020000  j 20
0010c8  2b014000  lui r2, 1024
0010cc  17912200  or r2, r5, r2
0010d0  93849904  setlt.u r9, r19, r9
0010d4  bbde04fe  bneq r9, zero, -76
0010d8  1bc10201  srli r2, r5, 16
0010dc  1b011100  andi r2, r2, 1
0010e0  0b912210  add.s r2, r5, r2
0010e4  0b110111  add.s r2, r2, r16
0010e8  17014101  and r2, r2, r20
0010ec  dbf3ffff  j -100
0010f0  33020028  zext_int2long r[5:6], zero
0010f4  db040000  j 36
0010f8  27420200  addli.d r[5:6], r[5:6], 4
0010fc  0b918a11  add.s r2, r21, r24
001100  9320a200  seteq.d r1, r[5:6], r[11:12]
001104  7366e100  stores.w r14, 12(r2)
001108  73642101  stores.w r18, 8(r2)
00110c  7362b101  stores.w r27, 4(r2)
001110  7360d100  stores.w r13, 0(r2)
001114  3b9d00fe  bneq r1, zero, -188
001118  8b206210  add.ul r[2:3], r[5:6], r[7:8]
00111c  1bbc2000  slli r24, r1, 2
001120  8b168411  add.s r13, r8, r24
001124  efc8c600  loads.w r17, 12(r13)
001128  9784f800  and r9, r17, r15
00112c  93809c04  setlt.u r1, r25, r9
001130  3bb00000  bneq r1, zero, 12
001134  1f870800  addli r14, r17, 0
001138  db010000  j 12
00113c  ab004000  lui r1, 1024
001140  17971800  or r14, r17, r1
001144  6fce8600  loads.w r28, 8(r13)
001148  9701fe00  and r3, r28, r15
00114c  93803c04  setlt.u r1, r25, r3
001150  3bb00000  bneq r1, zero, 12
001154  1f090e00  addli r18, r28, 0
001158  db010000  j 12
00115c  ab004000  lui r1, 1024
001160  17191e00  or r18, r28, r1
001164  6fc64600  loads.w r12, 4(r13)
001168  9700f600  and r1, r12, r15
00116c  13811c04  setlt.u r2, r25, r1
001170  3b300100  bneq r2, zero, 12
001174  9f0d0600  addli r27, r12, 0
001178  db010000  j 12
00117c  2b014000  lui r2, 1024
001180  971d2600  or r27, r12, r2
001184  6fc10600  loads.w r2, 0(r13)
001188  170df100  and r26, r2, r15
00118c  9386ac05  setlt.u r13, r25, r26
001190  3b810600  bneq r13, zero, 64
001194  9f060100  addli r13, r2, 0
001198  138da905  setlt.u r26, r19, r26
00119c  3b600d00  bneq r26, zero, 24
0011a0  9b460101  srli r13, r2, 16
0011a4  9b861600  andi r13, r13, 1
0011a8  0b11d110  add.s r2, r2, r13
0011ac  0b110111  add.s r2, r2, r16
0011b0  97064101  and r13, r2, r20
0011b4  93801904  setlt.u r1, r19, r1
0011b8  b7b00000  beq r1, zero, 44
0011bc  93803904  setlt.u r1, r19, r3
0011c0  37810000  beq r1, zero, 64
0011c4  93809904  setlt.u r1, r19, r9
0011c8  bbcc00fe  bneq r1, zero, -208
0011cc  5b0a0000  j 80
0011d0  ab064000  lui r13, 1024
0011d4  9716d100  or r13, r2, r13
0011d8  138da905  setlt.u r26, r19, r26
0011dc  371f0dfe  beq r26, zero, -60
0011e0  dbfaffff  j -44
0011e4  9b400601  srli r1, r12, 16
0011e8  9b801000  andi r1, r1, 1
0011ec  8b101610  add.s r1, r12, r1
0011f0  8b900011  add.s r1, r1, r16
0011f4  978d4001  and r27, r1, r20
0011f8  93803904  setlt.u r1, r19, r3
0011fc  3baf00fe  bneq r1, zero, -56
001200  9b400e01  srli r1, r28, 16
001204  9b801000  andi r1, r1, 1
001208  8b101e10  add.s r1, r28, r1
00120c  8b900011  add.s r1, r1, r16
001210  17894001  and r18, r1, r20
001214  93809904  setlt.u r1, r19, r9
001218  bb8b00fe  bneq r1, zero, -288
00121c  9bc00801  srli r1, r17, 16
001220  9b801000  andi r1, r1, 1
001224  8b901810  add.s r1, r17, r1
001228  8b900011  add.s r1, r1, r16
00122c  17874001  and r14, r1, r20
001230  5bd9ffff  j -312
001234  00200100  mfence { sm }
001238  80340002  core_id r9
00123c  eb510fff  load.d r[4:5], -16(r30)
001240  e300bfff  loadli.w r1,  -40(r30)
001244  37ff00fa  beq r1, zero, -2084
001248  9f008000  addli r1, zero, 64
00124c  3d000000  xfence
001250  00a00300  mfence { lm, sm, gm }
001254  33810028  zext_int2long r[3:4], r1
001258  db030000  j 28
00125c  9f709000  addli r1, zero, 79
001260  eb518fff  load.d r[4:5], -8(r30)
001264  b3800028  zext_int2long r[2:3], r1
001268  93a01104  setlt.ul r1, r[4:5], r[2:3]
00126c  27910100  addli.d r[3:4], r[4:5], 1
001270  37a70000  beq r1, zero, 456
001274  9f700000  addli r1, zero, 7
001278  733c2ffe  store.d r[3:4], -8(r30)
00127c  17331102  sll.d r[7:8], r[3:4], r1
001280  bbd18a00  bneq r21, r8, 116
001284  b3010028  zext_int2long r[4:5], zero
001288  5b030000  j 24
00128c  93a26105  setlt.ul r5, r[4:5], r[23:24]
001290  8b901a10  add.s r1, r21, r1
001294  a7910100  addli.d r[4:5], r[4:5], 1
001298  73e02000  stores.w r2, 0(r1)
00129c  378f02fe  beq r5, zero, -64
0012a0  8ba06110  add.ul r[2:3], r[4:5], r[7:8]
0012a4  9bb02000  slli r1, r1, 2
0012a8  0b111410  add.s r2, r8, r1
0012ac  ef420100  loads.w r5, 0(r2)
0012b0  9784f200  and r9, r5, r15
0012b4  13819c04  setlt.u r2, r25, r9
0012b8  3b500100  bneq r2, zero, 20
0012bc  1f810200  addli r2, r5, 0
0012c0  93849904  setlt.u r9, r19, r9
0012c4  3baf04fe  bneq r9, zero, -56
0012c8  db020000  j 20
0012cc  2b014000  lui r2, 1024
0012d0  17912200  or r2, r5, r2
0012d4  93849904  setlt.u r9, r19, r9
0012d8  bbde04fe  bneq r9, zero, -76
0012dc  1bc10201  srli r2, r5, 16
0012e0  1b011100  andi r2, r2, 1
0012e4  0b912210  add.s r2, r5, r2
0012e8  0b110111  add.s r2, r2, r16
0012ec  17014101  and r2, r2, r20
0012f0  dbf3ffff  j -100
0012f4  33020028  zext_int2long r[5:6], zero
0012f8  db040000  j 36
0012fc  27420200  addli.d r[5:6], r[5:6], 4
001300  0b918a11  add.s r2, r21, r24
001304  9320a200  seteq.d r1, r[5:6], r[11:12]
001308  7366e100  stores.w r14, 12(r2)
00130c  73642101  stores.w r18, 8(r2)
001310  7362b101  stores.w r27, 4(r2)
001314  7360d100  stores.w r13, 0(r2)
001318  3b9d00fe  bneq r1, zero, -188
00131c  8b206210  add.ul r[2:3], r[5:6], r[7:8]
001320  1bbc2000  slli r24, r1, 2
001324  8b168411  add.s r13, r8, r24
001328  efc8c600  loads.w r17, 12(r13)
00132c  9784f800  and r9, r17, r15
001330  93809c04  setlt.u r1, r25, r9
001334  3bb00000  bneq r1, zero, 12
001338  1f870800  addli r14, r17, 0
00133c  db010000  j 12
001340  ab004000  lui r1, 1024
001344  17971800  or r14, r17, r1
001348  6fce8600  loads.w r28, 8(r13)
00134c  9701fe00  and r3, r28, r15
001350  93803c04  setlt.u r1, r25, r3
001354  3bb00000  bneq r1, zero, 12
001358  1f090e00  addli r18, r28, 0
00135c  db010000  j 12
001360  ab004000  lui r1, 1024
001364  17191e00  or r18, r28, r1
001368  6fc64600  loads.w r12, 4(r13)
00136c  9700f600  and r1, r12, r15
001370  13811c04  setlt.u r2, r25, r1
001374  3b300100  bneq r2, zero, 12
001378  9f0d0600  addli r27, r12, 0
00137c  db010000  j 12
001380  2b014000  lui r2, 1024
001384  971d2600  or r27, r12, r2
001388  6fc10600  loads.w r2, 0(r13)
00138c  170df100  and r26, r2, r15
001390  9386ac05  setlt.u r13, r25, r26
001394  3b810600  bneq r13, zero, 64
001398  9f060100  addli r13, r2, 0
00139c  138da905  setlt.u r26, r19, r26
0013a0  3b600d00  bneq r26, zero, 24
0013a4  9b460101  srli r13, r2, 16
0013a8  9b861600  andi r13, r13, 1
0013ac  0b11d110  add.s r2, r2, r13
0013b0  0b110111  add.s r2, r2, r16
0013b4  97064101  and r13, r2, r20
0013b8  93801904  setlt.u r1, r19, r1
0013bc  b7b00000  beq r1, zero, 44
0013c0  93803904  setlt.u r1, r19, r3
0013c4  37810000  beq r1, zero, 64
0013c8  93809904  setlt.u r1, r19, r9
0013cc  bbcc00fe  bneq r1, zero, -208
0013d0  5b0a0000  j 80
0013d4  ab064000  lui r13, 1024
0013d8  9716d100  or r13, r2, r13
0013dc  138da905  setlt.u r26, r19, r26
0013e0  371f0dfe  beq r26, zero, -60
0013e4  dbfaffff  j -44
0013e8  9b400601  srli r1, r12, 16
0013ec  9b801000  andi r1, r1, 1
0013f0  8b101610  add.s r1, r12, r1
0013f4  8b900011  add.s r1, r1, r16
0013f8  978d4001  and r27, r1, r20
0013fc  93803904  setlt.u r1, r19, r3
001400  3baf00fe  bneq r1, zero, -56
001404  9b400e01  srli r1, r28, 16
001408  9b801000  andi r1, r1, 1
00140c  8b101e10  add.s r1, r28, r1
001410  8b900011  add.s r1, r1, r16
001414  17894001  and r18, r1, r20
001418  93809904  setlt.u r1, r19, r9
00141c  bb8b00fe  bneq r1, zero, -288
001420  9bc00801  srli r1, r17, 16
001424  9b801000  andi r1, r1, 1
001428  8b901810  add.s r1, r17, r1
00142c  8b900011  add.s r1, r1, r16
001430  17874001  and r14, r1, r20
001434  5bd9ffff  j -312
001438  00200100  mfence { sm }
00143c  80340002  core_id r9
001440  eb510fff  load.d r[4:5], -16(r30)
001444  9f500000  addli r1, zero, 5
001448  bb8714fa  bneq r9, r1, -2592
00144c  9f00a000  addli r1, zero, 80
001450  3d000000  xfence
001454  00a00300  mfence { lm, sm, gm }
001458  33810028  zext_int2long r[3:4], r1
00145c  db030000  j 28
001460  9f70b000  addli r1, zero, 95
001464  eb518fff  load.d r[4:5], -8(r30)
001468  b3800028  zext_int2long r[2:3], r1
00146c  93a01104  setlt.ul r1, r[4:5], r[2:3]
001470  27910100  addli.d r[3:4], r[4:5], 1
001474  37a70000  beq r1, zero, 456
001478  9f700000  addli r1, zero, 7
00147c  733c2ffe  store.d r[3:4], -8(r30)
001480  17331102  sll.d r[7:8], r[3:4], r1
001484  bbd18a00  bneq r21, r8, 116
001488  b3010028  zext_int2long r[4:5], zero
00148c  5b030000  j 24
001490  93a26105  setlt.ul r5, r[4:5], r[23:24]
001494  8b901a10  add.s r1, r21, r1
001498  a7910100  addli.d r[4:5], r[4:5], 1
00149c  73e02000  stores.w r2, 0(r1)
0014a0  378f02fe  beq r5, zero, -64
0014a4  8ba06110  add.ul r[2:3], r[4:5], r[7:8]
0014a8  9bb02000  slli r1, r1, 2
0014ac  0b111410  add.s r2, r8, r1
0014b0  ef420100  loads.w r5, 0(r2)
0014b4  9784f200  and r9, r5, r15
0014b8  13819c04  setlt.u r2, r25, r9
0014bc  3b500100  bneq r2, zero, 20
0014c0  1f810200  addli r2, r5, 0
0014c4  93849904  setlt.u r9, r19, r9
0014c8  3baf04fe  bneq r9, zero, -56
0014cc  db020000  j 20
0014d0  2b014000  lui r2, 1024
0014d4  17912200  or r2, r5, r2
0014d8  93849904  setlt.u r9, r19, r9
0014dc  bbde04fe  bneq r9, zero, -76
0014e0  1bc10201  srli r2, r5, 16
0014e4  1b011100  andi r2, r2, 1
0014e8  0b912210  add.s r2, r5, r2
0014ec  0b110111  add.s r2, r2, r16
0014f0  17014101  and r2, r2, r20
0014f4  dbf3ffff  j -100
0014f8  33020028  zext_int2long r[5:6], zero
0014fc  db040000  j 36
001500  27420200  addli.d r[5:6], r[5:6], 4
001504  0b918a11  add.s r2, r21, r24
001508  9320a200  seteq.d r1, r[5:6], r[11:12]
00150c  7366e100  stores.w r14, 12(r2)
001510  73642101  stores.w r18, 8(r2)
001514  7362b101  stores.w r27, 4(r2)
001518  7360d100  stores.w r13, 0(r2)
00151c  3b9d00fe  bneq r1, zero, -188
001520  8b206210  add.ul r[2:3], r[5:6], r[7:8]
001524  1bbc2000  slli r24, r1, 2
001528  8b168411  add.s r13, r8, r24
00152c  efc8c600  loads.w r17, 12(r13)
001530  9784f800  and r9, r17, r15
001534  93809c04  setlt.u r1, r25, r9
001538  3bb00000  bneq r1, zero, 12
00153c  1f870800  addli r14, r17, 0
001540  db010000  j 12
001544  ab004000  lui r1, 1024
001548  17971800  or r14, r17, r1
00154c  6fce8600  loads.w r28, 8(r13)
001550  9701fe00  and r3, r28, r15
001554  93803c04  setlt.u r1, r25, r3
001558  3bb00000  bneq r1, zero, 12
00155c  1f090e00  addli r18, r28, 0
001560  db010000  j 12
001564  ab004000  lui r1, 1024
001568  17191e00  or r18, r28, r1
00156c  6fc64600  loads.w r12, 4(r13)
001570  9700f600  and r1, r12, r15
001574  13811c04  setlt.u r2, r25, r1
001578  3b300100  bneq r2, zero, 12
00157c  9f0d0600  addli r27, r12, 0
001580  db010000  j 12
001584  2b014000  lui r2, 1024
001588  971d2600  or r27, r12, r2
00158c  6fc10600  loads.w r2, 0(r13)
001590  170df100  and r26, r2, r15
001594  9386ac05  setlt.u r13, r25, r26
001598  3b810600  bneq r13, zero, 64
00159c  9f060100  addli r13, r2, 0
0015a0  138da905  setlt.u r26, r19, r26
0015a4  3b600d00  bneq r26, zero, 24
0015a8  9b460101  srli r13, r2, 16
0015ac  9b861600  andi r13, r13, 1
0015b0  0b11d110  add.s r2, r2, r13
0015b4  0b110111  add.s r2, r2, r16
0015b8  97064101  and r13, r2, r20
0015bc  93801904  setlt.u r1, r19, r1
0015c0  b7b00000  beq r1, zero, 44
0015c4  93803904  setlt.u r1, r19, r3
0015c8  37810000  beq r1, zero, 64
0015cc  93809904  setlt.u r1, r19, r9
0015d0  bbcc00fe  bneq r1, zero, -208
0015d4  5b0a0000  j 80
0015d8  ab064000  lui r13, 1024
0015dc  9716d100  or r13, r2, r13
0015e0  138da905  setlt.u r26, r19, r26
0015e4  371f0dfe  beq r26, zero, -60
0015e8  dbfaffff  j -44
0015ec  9b400601  srli r1, r12, 16
0015f0  9b801000  andi r1, r1, 1
0015f4  8b101610  add.s r1, r12, r1
0015f8  8b900011  add.s r1, r1, r16
0015fc  978d4001  and r27, r1, r20
001600  93803904  setlt.u r1, r19, r3
001604  3baf00fe  bneq r1, zero, -56
001608  9b400e01  srli r1, r28, 16
00160c  9b801000  andi r1, r1, 1
001610  8b101e10  add.s r1, r28, r1
001614  8b900011  add.s r1, r1, r16
001618  17894001  and r18, r1, r20
00161c  93809904  setlt.u r1, r19, r9
001620  bb8b00fe  bneq r1, zero, -288
001624  9bc00801  srli r1, r17, 16
001628  9b801000  andi r1, r1, 1
00162c  8b901810  add.s r1, r17, r1
001630  8b900011  add.s r1, r1, r16
001634  17874001  and r14, r1, r20
001638  5bd9ffff  j -312
00163c  00200100  mfence { sm }
001640  80340002  core_id r9
001644  eb510fff  load.d r[4:5], -16(r30)
001648  9f600000  addli r1, zero, 6
00164c  bb9f14f8  bneq r9, r1, -3100
001650  9f00c000  addli r1, zero, 96
001654  3d000000  xfence
001658  00a00300  mfence { lm, sm, gm }
00165c  33810028  zext_int2long r[3:4], r1
001660  db030000  j 28
001664  9f70d000  addli r1, zero, 111
001668  eb518fff  load.d r[4:5], -8(r30)
00166c  b3800028  zext_int2long r[2:3], r1
001670  93a01104  setlt.ul r1, r[4:5], r[2:3]
001674  27910100  addli.d r[3:4], r[4:5], 1
001678  37a70000  beq r1, zero, 456
00167c  9f700000  addli r1, zero, 7
001680  733c2ffe  store.d r[3:4], -8(r30)
001684  17331102  sll.d r[7:8], r[3:4], r1
001688  bbd18a00  bneq r21, r8, 116
00168c  b3010028  zext_int2long r[4:5], zero
001690  5b030000  j 24
001694  93a26105  setlt.ul r5, r[4:5], r[23:24]
001698  8b901a10  add.s r1, r21, r1
00169c  a7910100  addli.d r[4:5], r[4:5], 1
0016a0  73e02000  stores.w r2, 0(r1)
0016a4  378f02fe  beq r5, zero, -64
0016a8  8ba06110  add.ul r[2:3], r[4:5], r[7:8]
0016ac  9bb02000  slli r1, r1, 2
0016b0  0b111410  add.s r2, r8, r1
0016b4  ef420100  loads.w r5, 0(r2)
0016b8  9784f200  and r9, r5, r15
0016bc  13819c04  setlt.u r2, r25, r9
0016c0  3b500100  bneq r2, zero, 20
0016c4  1f810200  addli r2, r5, 0
0016c8  93849904  setlt.u r9, r19, r9
0016cc  3baf04fe  bneq r9, zero, -56
0016d0  db020000  j 20
0016d4  2b014000  lui r2, 1024
0016d8  17912200  or r2, r5, r2
0016dc  93849904  setlt.u r9, r19, r9
0016e0  bbde04fe  bneq r9, zero, -76
0016e4  1bc10201  srli r2, r5, 16
0016e8  1b011100  andi r2, r2, 1
0016ec  0b912210  add.s r2, r5, r2
0016f0  0b110111  add.s r2, r2, r16
0016f4  17014101  and r2, r2, r20
0016f8  dbf3ffff  j -100
0016fc  33020028  zext_int2long r[5:6], zero
001700  db040000  j 36
001704  27420200  addli.d r[5:6], r[5:6], 4
001708  0b918a11  add.s r2, r21, r24
00170c  9320a200  seteq.d r1, r[5:6], r[11:12]
001710  7366e100  stores.w r14, 12(r2)
001714  73642101  stores.w r18, 8(r2)
001718  7362b101  stores.w r27, 4(r2)
00171c  7360d100  stores.w r13, 0(r2)
001720  3b9d00fe  bneq r1, zero, -188
001724  8b206210  add.ul r[2:3], r[5:6], r[7:8]
001728  1bbc2000  slli r24, r1, 2
00172c  8b168411  add.s r13, r8, r24
001730  efc8c600  loads.w r17, 12(r13)
001734  9784f800  and r9, r17, r15
001738  93809c04  setlt.u r1, r25, r9
00173c  3bb00000  bneq r1, zero, 12
001740  1f870800  addli r14, r17, 0
001744  db010000  j 12
001748  ab004000  lui r1, 1024
00174c  17971800  or r14, r17, r1
001750  6fce8600  loads.w r28, 8(r13)
001754  9701fe00  and r3, r28, r15
001758  93803c04  setlt.u r1, r25, r3
00175c  3bb00000  bneq r1, zero, 12
001760  1f090e00  addli r18, r28, 0
001764  db010000  j 12
001768  ab004000  lui r1, 1024
00176c  17191e00  or r18, r28, r1
001770  6fc64600  loads.w r12, 4(r13)
001774  9700f600  and r1, r12, r15
001778  13811c04  setlt.u r2, r25, r1
00177c  3b300100  bneq r2, zero, 12
001780  9f0d0600  addli r27, r12, 0
001784  db010000  j 12
001788  2b014000  lui r2, 1024
00178c  971d2600  or r27, r12, r2
001790  6fc10600  loads.w r2, 0(r13)
001794  170df100  and r26, r2, r15
001798  9386ac05  setlt.u r13, r25, r26
00179c  3b810600  bneq r13, zero, 64
0017a0  9f060100  addli r13, r2, 0
0017a4  138da905  setlt.u r26, r19, r26
0017a8  3b600d00  bneq r26, zero, 24
0017ac  9b460101  srli r13, r2, 16
0017b0  9b861600  andi r13, r13, 1
0017b4  0b11d110  add.s r2, r2, r13
0017b8  0b110111  add.s r2, r2, r16
0017bc  97064101  and r13, r2, r20
0017c0  93801904  setlt.u r1, r19, r1
0017c4  b7b00000  beq r1, zero, 44
0017c8  93803904  setlt.u r1, r19, r3
0017cc  37810000  beq r1, zero, 64
0017d0  93809904  setlt.u r1, r19, r9
0017d4  bbcc00fe  bneq r1, zero, -208
0017d8  5b0a0000  j 80
0017dc  ab064000  lui r13, 1024
0017e0  9716d100  or r13, r2, r13
0017e4  138da905  setlt.u r26, r19, r26
0017e8  371f0dfe  beq r26, zero, -60
0017ec  dbfaffff  j -44
0017f0  9b400601  srli r1, r12, 16
0017f4  9b801000  andi r1, r1, 1
0017f8  8b101610  add.s r1, r12, r1
0017fc  8b900011  add.s r1, r1, r16
001800  978d4001  and r27, r1, r20
001804  93803904  setlt.u r1, r19, r3
001808  3baf00fe  bneq r1, zero, -56
00180c  9b400e01  srli r1, r28, 16
001810  9b801000  andi r1, r1, 1
001814  8b101e10  add.s r1, r28, r1
001818  8b900011  add.s r1, r1, r16
00181c  17894001  and r18, r1, r20
001820  93809904  setlt.u r1, r19, r9
001824  bb8b00fe  bneq r1, zero, -288
001828  9bc00801  srli r1, r17, 16
00182c  9b801000  andi r1, r1, 1
001830  8b901810  add.s r1, r17, r1
001834  8b900011  add.s r1, r1, r16
001838  17874001  and r14, r1, r20
00183c  5bd9ffff  j -312
001840  00200100  mfence { sm }
001844  80340002  core_id r9
001848  eb510fff  load.d r[4:5], -16(r30)
00184c  e340bfff  loadli.w r1,  -36(r30)
001850  b7e70000  beq r1, zero, 504
001854  9f00e000  addli r1, zero, 112
001858  3d000000  xfence
00185c  00a00300  mfence { lm, sm, gm }
001860  33810028  zext_int2long r[3:4], r1
001864  db020000  j 20
001868  6b518fff  load.d r[3:4], -8(r30)
00186c  93206105  setlt.ul r1, r[3:4], r[23:24]
001870  27110100  addli.d r[3:4], r[3:4], 1
001874  37a70000  beq r1, zero, 456
001878  9f700000  addli r1, zero, 7
00187c  733c2ffe  store.d r[3:4], -8(r30)
001880  17331102  sll.d r[7:8], r[3:4], r1
001884  bbd18a00  bneq r21, r8, 116
001888  b3010028  zext_int2long r[4:5], zero
00188c  5b030000  j 24
001890  93a26105  setlt.ul r5, r[4:5], r[23:24]
001894  8b901a10  add.s r1, r21, r1
001898  a7910100  addli.d r[4:5], r[4:5], 1
00189c  73e02000  stores.w r2, 0(r1)
0018a0  37af02fe  beq r5, zero, -56
0018a4  8ba06110  add.ul r[2:3], r[4:5], r[7:8]
0018a8  9bb02000  slli r1, r1, 2
0018ac  0b111410  add.s r2, r8, r1
0018b0  ef420100  loads.w r5, 0(r2)
0018b4  9784f200  and r9, r5, r15
0018b8  13819c04  setlt.u r2, r25, r9
0018bc  3b500100  bneq r2, zero, 20
0018c0  1f810200  addli r2, r5, 0
0018c4  93849904  setlt.u r9, r19, r9
0018c8  3baf04fe  bneq r9, zero, -56
0018cc  db020000  j 20
0018d0  2b014000  lui r2, 1024
0018d4  17912200  or r2, r5, r2
0018d8  93849904  setlt.u r9, r19, r9
0018dc  bbde04fe  bneq r9, zero, -76
0018e0  1bc10201  srli r2, r5, 16
0018e4  1b011100  andi r2, r2, 1
0018e8  0b912210  add.s r2, r5, r2
0018ec  0b110111  add.s r2, r2, r16
0018f0  17014101  and r2, r2, r20
0018f4  dbf3ffff  j -100
0018f8  33020028  zext_int2long r[5:6], zero
0018fc  db040000  j 36
001900  27420200  addli.d r[5:6], r[5:6], 4
001904  0b918a11  add.s r2, r21, r24
001908  9320a200  seteq.d r1, r[5:6], r[11:12]
00190c  7366e100  stores.w r14, 12(r2)
001910  73642101  stores.w r18, 8(r2)
001914  7362b101  stores.w r27, 4(r2)
001918  7360d100  stores.w r13, 0(r2)
00191c  3bbd00fe  bneq r1, zero, -180
001920  8b206210  add.ul r[2:3], r[5:6], r[7:8]
001924  1bbc2000  slli r24, r1, 2
001928  8b168411  add.s r13, r8, r24
00192c  efc8c600  loads.w r17, 12(r13)
001930  9784f800  and r9, r17, r15
001934  93809c04  setlt.u r1, r25, r9
001938  3bb00000  bneq r1, zero, 12
00193c  1f870800  addli r14, r17, 0
001940  db010000  j 12
001944  ab004000  lui r1, 1024
001948  17971800  or r14, r17, r1
00194c  6fce8600  loads.w r28, 8(r13)
001950  9701fe00  and r3, r28, r15
001954  93803c04  setlt.u r1, r25, r3
001958  3bb00000  bneq r1, zero, 12
00195c  1f090e00  addli r18, r28, 0
001960  db010000  j 12
001964  ab004000  lui r1, 1024
001968  17191e00  or r18, r28, r1
00196c  6fc64600  loads.w r12, 4(r13)
001970  9700f600  and r1, r12, r15
001974  13811c04  setlt.u r2, r25, r1
001978  3b300100  bneq r2, zero, 12
00197c  9f0d0600  addli r27, r12, 0
001980  db010000  j 12
001984  2b014000  lui r2, 1024
001988  971d2600  or r27, r12, r2
00198c  6fc10600  loads.w r2, 0(r13)
001990  170df100  and r26, r2, r15
001994  9386ac05  setlt.u r13, r25, r26
001998  3b810600  bneq r13, zero, 64
00199c  9f060100  addli r13, r2, 0
0019a0  138da905  setlt.u r26, r19, r26
0019a4  3b600d00  bneq r26, zero, 24
0019a8  9b460101  srli r13, r2, 16
0019ac  9b861600  andi r13, r13, 1
0019b0  0b11d110  add.s r2, r2, r13
0019b4  0b110111  add.s r2, r2, r16
0019b8  97064101  and r13, r2, r20
0019bc  93801904  setlt.u r1, r19, r1
0019c0  b7b00000  beq r1, zero, 44
0019c4  93803904  setlt.u r1, r19, r3
0019c8  37810000  beq r1, zero, 64
0019cc  93809904  setlt.u r1, r19, r9
0019d0  bbcc00fe  bneq r1, zero, -208
0019d4  5b0a0000  j 80
0019d8  ab064000  lui r13, 1024
0019dc  9716d100  or r13, r2, r13
0019e0  138da905  setlt.u r26, r19, r26
0019e4  371f0dfe  beq r26, zero, -60
0019e8  dbfaffff  j -44
0019ec  9b400601  srli r1, r12, 16
0019f0  9b801000  andi r1, r1, 1
0019f4  8b101610  add.s r1, r12, r1
0019f8  8b900011  add.s r1, r1, r16
0019fc  978d4001  and r27, r1, r20
001a00  93803904  setlt.u r1, r19, r3
001a04  3baf00fe  bneq r1, zero, -56
001a08  9b400e01  srli r1, r28, 16
001a0c  9b801000  andi r1, r1, 1
001a10  8b101e10  add.s r1, r28, r1
001a14  8b900011  add.s r1, r1, r16
001a18  17894001  and r18, r1, r20
001a1c  93809904  setlt.u r1, r19, r9
001a20  bb8b00fe  bneq r1, zero, -288
001a24  9bc00801  srli r1, r17, 16
001a28  9b801000  andi r1, r1, 1
001a2c  8b901810  add.s r1, r17, r1
001a30  8b900011  add.s r1, r1, r16
001a34  17874001  and r14, r1, r20
001a38  5bd9ffff  j -312
001a3c  00200100  mfence { sm }
001a40  80340002  core_id r9
001a44  eb510fff  load.d r[4:5], -16(r30)
001a48  9f70f001  addli r1, zero, 255
001a4c  9f3b0000  addli r23, zero, 3
001a50  80a20004  csr_set csr5, r1
001a54  00e00200  sync_core
001a58  37ee74f3  beq r9, r23, -6248
001a5c  eb5a0ffe  load.d r[22:23], -32(r30)
001a60  bb9e04f2  bneq r9, zero, -6236
001a64  e3406fff  loadli.w r1,  -76(r30)
001a68  e3428fff  loadli.w r5,  -60(r30)
001a6c  27860100  addli.d r[13:14], r[4:5], 0
001a70  9f332000  addli r7, zero, 19
001a74  9bb07000  slli r1, r1, 7
001a78  9bb27200  slli r5, r5, 7
001a7c  b3800028  zext_int2long r[2:3], r1
001a80  b3920228  sext_int2long r[6:7], r5
001a84  8ba1c040  min.ul r[4:5], r[2:3], r[13:14]
001a88  0bb6c240  min.sl r[13:14], r[6:7], r[13:14]
001a8c  a7810101  addli.d r[4:5], r[4:5], 128
001a90  8ba11148  max.ul r[4:5], r[4:5], r[2:3]
001a94  8bb01118  sub.sl r[2:3], r[4:5], r[2:3]
001a98  a7010601  addli.d r[4:5], r[13:14], 128
001a9c  6b568ffc  load.d r[13:14], -56(r30)
001aa0  8bb15148  max.sl r[4:5], r[4:5], r[6:7]
001aa4  8ba0a040  min.ul r[2:3], r[2:3], r[11:12]
001aa8  17367602  sll.d r[13:14], r[13:14], r7
001aac  9f431000  addli r7, zero, 12
001ab0  8bb15118  sub.sl r[4:5], r[4:5], r[6:7]
001ab4  eb520f01  load.d r[6:7], 16(r30)
001ab8  8bb1a140  min.sl r[4:5], r[4:5], r[11:12]
001abc  6b558ffb  load.d r[11:12], -72(r30)
001ac0  7d900300  xwait r7, 0
001ac4  ab030600  lui r7, 96
001ac8  8ba2c210  add.ul r[6:7], r[6:7], r[13:14]
001acc  1f068000  addli r12, zero, 64
001ad0  9b930304  ori r7, r7, 64
001ad4  8ba2a210  add.ul r[6:7], r[6:7], r[11:12]
001ad8  1f550000  addli r10, zero, 5
001adc  9f150000  addli r11, zero, 1
001ae0  8b137410  add.s r7, r8, r7
001ae4  1ff43000  addli r8, r1, 31
001ae8  9bb01000  slli r1, r1, 1
001aec  1f010001  addli r2, zero, 128
001af0  1d000500  lock zero, r10
001af4  95850500  dma_cfg r11, r11, zero, 0
001af8  9b80e003  andi r1, r1, 62
001afc  15800502  dma_cfg zero, r11, zero, 1
001b00  15030004  dma_cfg r6, zero, zero, 2
001b04  9582c306  dma_cfg r5, r7, r12, 3
001b08  9b425400  srli r5, r8, 5
001b0c  15065108  dma_cfg r12, r2, r5, 4
001b10  1f010004  addli r2, zero, 512
001b14  9f020020  addli r5, zero, 4096
001b18  9502310a  dma_cfg r5, r2, r3, 5
001b1c  15001010  dma_cfg zero, zero, r1, 8
001b20  35000000  dma_run zero
001b24  1500b00a  dma_cfg zero, zero, r11, 5
001b28  9f501000  addli r1, zero, 13
001b2c  15000010  dma_cfg zero, zero, zero, 8
001b30  1d100500  unlock r10
001b34  7d800000  xsignal r1, 0
001b38  dbd9fcff  j -6452
001b3c  7d000000  xsignal zero, 0
001b40  bbe00400  bneq r9, zero, 56
001b44  9f200000  addli r1, zero, 2
001b48  7d100000  xwait zero, 0
001b4c  7d100000  xwait zero, 0
001b50  7d100000  xwait zero, 0
001b54  7d100000  xwait zero, 0
001b58  7d100000  xwait zero, 0
001b5c  7d100000  xwait zero, 0
001b60  7d100000  xwait zero, 0
001b64  7d100000  xwait zero, 0
001b68  1d800000  lock zero, r1
001b6c  0d000020  ew_cfg zero, zero, zero, 16
001b70  1d900000  unlock r1
001b74  7d400000  xsignal_mode_cfg zero
001b78  9f8ede00  addli sp, sp, 104
001b7c  00a00300  mfence { lm, sm, gm }
001b80  00100000  exit
001b84  00100000  exit
001b88  00100000  exit
001b8c  00100000  exit
001b90  00100000  exit
001b94  00100000  exit
001b98  00100000  exit
001b9c  00100000  exit
001ba0  00100000  exit
001ba4  00100000  exit
001ba8  00100000  exit
001bac  00100000  exit
001bb0  00100000  exit
001bb4  00100000  exit
001bb8  00100000  exit
001bbc  00100000  exit
001bc0  00100000  exit
001bc4  00100000  exit
001bc8  00100000  exit
001bcc  00100000  exit
001bd0  00100000  exit
001bd4  00100000  exit
001bd8  00100000  exit
001bdc  00100000  exit
001be0  00100000  exit
001be4  00100000  exit
001be8  00100000  exit
001bec  00100000  exit
001bf0  00100000  exit
001bf4  00100000  exit
001bf8  00100000  exit
001bfc  00100000  exit
001c00  00100000  exit
001c04  00100000  exit
001c08  00100000  exit
001c0c  00100000  exit
001c10  00100000  exit
001c14  00100000  exit
001c18  00100000  exit
001c1c  00100000  exit
001c20  00100000  exit
001c24  00100000  exit
001c28  00100000  exit
001c2c  00100000  exit
001c30  00100000  exit
001c34  00100000  exit
001c38  00100000  exit
001c3c  00100000  exit
001c40  00100000  exit
001c44  00100000  exit
001c48  00100000  exit
001c4c  00100000  exit
001c50  00100000  exit
001c54  00100000  exit
001c58  00100000  exit
001c5c  00100000  exit
001c60  00100000  exit
001c64  00100000  exit
001c68  00100000  exit
001c6c  00100000  exit
001c70  00100000  exit
001c74  00100000  exit
001c78  00100000  exit
001c7c  00100000  exit
001c80  00100000  exit
001c84  00100000  exit
001c88  00100000  exit
001c8c  00100000  exit
001c90  00100000  exit
001c94  00100000  exit
001c98  00100000  exit
001c9c  00100000  exit
001ca0  00100000  exit
001ca4  00100000  exit
001ca8  00100000  exit
001cac  00100000  exit
001cb0  00100000  exit
001cb4  00100000  exit
001cb8  00100000  exit
001cbc  00100000  exit
001cc0  00100000  exit
001cc4  00100000  exit
001cc8  00100000  exit
001ccc  00100000  exit
001cd0  00100000  exit
001cd4  00100000  exit
001cd8  00100000  exit
001cdc  00100000  exit
001ce0  00100000  exit
001ce4  00100000  exit
001ce8  00100000  exit
001cec  00100000  exit
001cf0  00100000  exit
001cf4  00100000  exit
001cf8  00100000  exit
001cfc  00100000  exit
001d00  00100000  exit
001d04  00100000  exit
001d08  00100000  exit
001d0c  00100000  exit
001d10  00100000  exit
001d14  00100000  exit
001d18  00100000  exit
001d1c  00100000  exit
001d20  00100000  exit
001d24  00100000  exit
001d28  00100000  exit
001d2c  00100000  exit
001d30  00100000  exit
001d34  00100000  exit
001d38  00100000  exit
001d3c  00100000  exit
001d40  00100000  exit
001d44  00100000  exit
001d48  00100000  exit
001d4c  00100000  exit
001d50  00100000  exit
001d54  00100000  exit
001d58  00100000  exit
001d5c  00100000  exit
001d60  00100000  exit
001d64  00100000  exit
001d68  00100000  exit
001d6c  00100000  exit
001d70  00100000  exit
001d74  00100000  exit
001d78  00100000  exit
001d7c  00100000  exit
001d80  00100000  exit
001d84  00100000  exit
001d88  00100000  exit
001d8c  00100000  exit
001d90  00100000  exit
001d94  00100000  exit
001d98  00100000  exit
001d9c  00100000  exit
001da0  00100000  exit
001da4  00100000  exit
001da8  00100000  exit
001dac  00100000  exit
001db0  00100000  exit
001db4  00100000  exit
001db8  00100000  exit
001dbc  00100000  exit
001dc0  00100000  exit
