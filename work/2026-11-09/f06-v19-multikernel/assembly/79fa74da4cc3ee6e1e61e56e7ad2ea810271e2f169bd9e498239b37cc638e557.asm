; SHA-256 79fa74da4cc3ee6e1e61e56e7ad2ea810271e2f169bd9e498239b37cc638e557
; P800 SDNN · XTDK LLVM 19 · 1671 / 1671 words decoded
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
0000b4  9f8edefe  addli sp, sp, -152
0000b8  9f100000  addli r1, zero, 1
0000bc  00340002  core_id r8
0000c0  1f8fbe00  addli r30, sp, 88
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7100400  beq r8, zero, 36
0000cc  2bf1ffff  lui r2, 1048575
0000d0  7d900000  xwait r1, 0
0000d4  7d900000  xwait r1, 0
0000d8  7d100000  xwait zero, 0
0000dc  9b10f1ff  ori r1, r2, 4095
0000e0  80a10004  csr_set csr3, r1
0000e4  00d00100  sync_group
0000e8  5b1f0000  j 248
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
00014c  1f213000  addli r2, zero, 26
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
00018c  9f600000  addli r1, zero, 6
000190  00d00100  sync_group
000194  7d800200  xsignal r5, 0
000198  7d800000  xsignal r1, 0
00019c  7d000100  xsignal r2, 0
0001a0  9f703000  addli r1, zero, 31
0001a4  1f411000  addli r2, zero, 12
0001a8  7d800000  xsignal r1, 0
0001ac  7d000100  xsignal r2, 0
0001b0  9f701000  addli r1, zero, 15
0001b4  1f112000  addli r2, zero, 17
0001b8  7d800000  xsignal r1, 0
0001bc  7d000100  xsignal r2, 0
0001c0  9f302000  addli r1, zero, 19
0001c4  1f413000  addli r2, zero, 28
0001c8  7d800000  xsignal r1, 0
0001cc  7d000100  xsignal r2, 0
0001d0  9f204000  addli r1, zero, 34
0001d4  1f414000  addli r2, zero, 36
0001d8  7d800000  xsignal r1, 0
0001dc  7d000100  xsignal r2, 0
0001e0  e3005f00  loadli.w r1,  40(r30)
0001e4  63415f00  loadli.w r2,  44(r30)
0001e8  00d20002  load_param_i r4, 1
0001ec  e3016f00  loadli.w r3,  48(r30)
0001f0  8b101120  mul.s r1, r2, r1
0001f4  1f010200  addli r2, r4, 0
0001f8  0b913050  fmac.s r2, r1, r3
0001fc  8b913020  mul.s r3, r1, r3
000200  1f71f1ff  addli r2, r2, -1
000204  0b114130  div.s r2, r2, r4
000208  00520002  load_param_i r4, 0
00020c  8b104120  mul.s r1, r2, r4
000210  0b114150  fmac.s r2, r2, r4
000214  0b113140  min.s r2, r2, r3
000218  cb75110a  ble.s r2, r1, 5500
00021c  33110128  sext_int2long r[3:4], r2
000220  9f020008  addli r5, zero, 1024
000224  9f270000  addli r15, zero, 2
000228  9f360000  addli r13, zero, 3
00022c  9f1b2000  addli r23, zero, 17
000230  ab480000  lui r17, 4
000234  9f190000  addli r19, zero, 1
000238  2b054000  lui r10, 1024
00023c  ab0d807f  lui r27, 522240
000240  733c2ffa  store.d r[3:4], -72(r30)
000244  b3910028  sext_int2long r[4:5], r1
000248  ab20373d  lui r1, 250738
00024c  2b414c3f  lui r2, 259268
000250  b38c0228  zext_int2long r[26:27], r5
000254  9b903071  ori r1, r1, 1811
000258  73389ffd  store.d r[26:27], -48(r30)
00025c  674b1ffe  storeli.w r1, -76(r30)
000260  9b10a122  ori r1, r2, 554
000264  2b710000  lui r2, 7
000268  670b1ffe  storeli.w r1, -80(r30)
00026c  ab800300  lui r1, 56
000270  9b903084  ori r1, r1, 2115
000274  e74a1ffe  storeli.w r1, -84(r30)
000278  9b10f1ff  ori r1, r2, 4095
00027c  2bf17f00  lui r2, 2047
000280  670e1ffe  storeli.w r1, -32(r30)
000284  abf07f7f  lui r1, 522239
000288  9b90f0ff  ori r1, r1, 4095
00028c  674f1ffe  storeli.w r1, -12(r30)
000290  9b10f1ff  ori r1, r2, 4095
000294  e70d1ffe  storeli.w r1, -40(r30)
000298  b3000028  zext_int2long r[2:3], zero
00029c  73301ffc  store.d r[2:3], -64(r30)
0002a0  abf0ff7f  lui r1, 524287
0002a4  1b9ef0ff  ori r28, r1, 4095
0002a8  db0b0000  j 92
0002ac  9f701000  addli r1, zero, 15
0002b0  00200100  mfence { sm }
0002b4  ab480000  lui r17, 4
0002b8  00340002  core_id r8
0002bc  9f360000  addli r13, zero, 3
0002c0  9f1b2000  addli r23, zero, 17
0002c4  9f190000  addli r19, zero, 1
0002c8  2b054000  lui r10, 1024
0002cc  9f270000  addli r15, zero, 2
0002d0  7d800000  xsignal r1, 0
0002d4  9f103000  addli r1, zero, 25
0002d8  7d800000  xsignal r1, 0
0002dc  9f204000  addli r1, zero, 34
0002e0  7d800000  xsignal r1, 0
0002e4  9f404000  addli r1, zero, 36
0002e8  7d800000  xsignal r1, 0
0002ec  eb518ffc  load.d r[4:5], -56(r30)
0002f0  eb5c0ffd  load.d r[26:27], -48(r30)
0002f4  eb508ffb  load.d r[2:3], -72(r30)
0002f8  a7910100  addli.d r[4:5], r[4:5], 1
0002fc  93b01104  setlt.sl r1, r[4:5], r[2:3]
000300  37d2000a  beq r1, zero, 5268
000304  e3006f00  loadli.w r1,  48(r30)
000308  63415f00  loadli.w r2,  44(r30)
00030c  9f121000  addli r5, zero, 9
000310  73343ffc  store.d r[4:5], -56(r30)
000314  8b901130  div.s r1, r3, r1
000318  8b902030  div.s r1, r1, r2
00031c  b3900028  sext_int2long r[2:3], r1
000320  17b35002  sll.d r[7:8], r[2:3], r5
000324  9f600000  addli r1, zero, 6
000328  73346ffe  store.d r[7:8], -24(r30)
00032c  370a1400  beq r8, r1, 640
000330  3b3a3401  bneq r8, r19, 652
000334  9f420000  addli r5, zero, 4
000338  1f540000  addli r8, zero, 5
00033c  e70f0ffe  storeli.w zero, -8(r30)
000340  eb510f00  load.d r[4:5], 0(r30)
000344  97303303  sll.d r[2:3], r[7:8], r19
000348  1f770000  addli r14, zero, 7
00034c  1f081000  addli r16, zero, 8
000350  9f1b1000  addli r23, zero, 9
000354  1f3a1000  addli r20, zero, 11
000358  9f052000  addli r11, zero, 16
00035c  9f4a2000  addli r21, zero, 20
000360  1f592000  addli r18, zero, 21
000364  1f033000  addli r6, zero, 24
000368  9f133000  addli r7, zero, 25
00036c  1f3c3000  addli r24, zero, 27
000370  1f4b3000  addli r22, zero, 28
000374  9f743000  addli r9, zero, 31
000378  1f150000  addli r10, zero, 1
00037c  1f060010  addli r12, zero, 2048
000380  7d900200  xwait r5, 0
000384  1d000400  lock zero, r8
000388  15000014  dma_cfg zero, zero, zero, 10
00038c  8ba01110  add.ul r[2:3], r[4:5], r[2:3]
000390  9f610000  addli r3, zero, 6
000394  1f020001  addli r4, zero, 128
000398  15003015  dma_cfg zero, zero, r19, 10
00039c  9f292000  addli r19, zero, 18
0003a0  1500f014  dma_cfg zero, zero, r15, 10
0003a4  9f771000  addli r15, zero, 15
0003a8  1500d014  dma_cfg zero, zero, r13, 10
0003ac  15005014  dma_cfg zero, zero, r5, 10
0003b0  15008014  dma_cfg zero, zero, r8, 10
0003b4  15003014  dma_cfg zero, zero, r3, 10
0003b8  9f211000  addli r3, zero, 10
0003bc  1500e014  dma_cfg zero, zero, r14, 10
0003c0  15000015  dma_cfg zero, zero, r16, 10
0003c4  15007015  dma_cfg zero, zero, r23, 10
0003c8  15003014  dma_cfg zero, zero, r3, 10
0003cc  9f411000  addli r3, zero, 12
0003d0  15004015  dma_cfg zero, zero, r20, 10
0003d4  15003014  dma_cfg zero, zero, r3, 10
0003d8  9f511000  addli r3, zero, 13
0003dc  15003014  dma_cfg zero, zero, r3, 10
0003e0  9f611000  addli r3, zero, 14
0003e4  15003014  dma_cfg zero, zero, r3, 10
0003e8  9f112000  addli r3, zero, 17
0003ec  1500f014  dma_cfg zero, zero, r15, 10
0003f0  1500b014  dma_cfg zero, zero, r11, 10
0003f4  15003014  dma_cfg zero, zero, r3, 10
0003f8  9f312000  addli r3, zero, 19
0003fc  15003015  dma_cfg zero, zero, r19, 10
000400  15003014  dma_cfg zero, zero, r3, 10
000404  9f612000  addli r3, zero, 22
000408  15005015  dma_cfg zero, zero, r21, 10
00040c  15002015  dma_cfg zero, zero, r18, 10
000410  15003014  dma_cfg zero, zero, r3, 10
000414  9f712000  addli r3, zero, 23
000418  15003014  dma_cfg zero, zero, r3, 10
00041c  9f213000  addli r3, zero, 26
000420  15006014  dma_cfg zero, zero, r6, 10
000424  15007014  dma_cfg zero, zero, r7, 10
000428  15003014  dma_cfg zero, zero, r3, 10
00042c  9f513000  addli r3, zero, 29
000430  15008015  dma_cfg zero, zero, r24, 10
000434  15006015  dma_cfg zero, zero, r22, 10
000438  15003014  dma_cfg zero, zero, r3, 10
00043c  9f613000  addli r3, zero, 30
000440  15003014  dma_cfg zero, zero, r3, 10
000444  9f018000  addli r3, zero, 64
000448  15009014  dma_cfg zero, zero, r9, 10
00044c  15050500  dma_cfg r10, r10, zero, 0
000450  15050002  dma_cfg r10, zero, zero, 1
000454  15000004  dma_cfg zero, zero, zero, 2
000458  15003006  dma_cfg zero, zero, r3, 3
00045c  1502b008  dma_cfg r4, zero, r11, 4
000460  1506a00a  dma_cfg r12, zero, r10, 5
000464  15000010  dma_cfg zero, zero, zero, 8
000468  35000000  dma_run zero
00046c  1500a00a  dma_cfg zero, zero, r10, 5
000470  15000010  dma_cfg zero, zero, zero, 8
000474  1d100400  unlock r8
000478  1d800200  lock zero, r5
00047c  15050500  dma_cfg r10, r10, zero, 0
000480  15000104  dma_cfg zero, r2, zero, 2
000484  95813006  dma_cfg r3, r1, r3, 3
000488  9f000008  addli r1, zero, 1024
00048c  1582b108  dma_cfg r4, r3, r11, 4
000490  1586a00a  dma_cfg r12, r1, r10, 5
000494  9f200000  addli r1, zero, 2
000498  15000010  dma_cfg zero, zero, zero, 8
00049c  35000000  dma_run zero
0004a0  1500a00a  dma_cfg zero, zero, r10, 5
0004a4  15000010  dma_cfg zero, zero, zero, 8
0004a8  1d900200  unlock r5
0004ac  1d000400  lock zero, r8
0004b0  15000014  dma_cfg zero, zero, zero, 10
0004b4  1500a014  dma_cfg zero, zero, r10, 10
0004b8  2b054000  lui r10, 1024
0004bc  15001014  dma_cfg zero, zero, r1, 10
0004c0  9f600000  addli r1, zero, 6
0004c4  1500d014  dma_cfg zero, zero, r13, 10
0004c8  15005014  dma_cfg zero, zero, r5, 10
0004cc  15008014  dma_cfg zero, zero, r8, 10
0004d0  15001014  dma_cfg zero, zero, r1, 10
0004d4  9f201000  addli r1, zero, 10
0004d8  1500e014  dma_cfg zero, zero, r14, 10
0004dc  15000015  dma_cfg zero, zero, r16, 10
0004e0  15007015  dma_cfg zero, zero, r23, 10
0004e4  9f1b2000  addli r23, zero, 17
0004e8  15001014  dma_cfg zero, zero, r1, 10
0004ec  9f401000  addli r1, zero, 12
0004f0  15004015  dma_cfg zero, zero, r20, 10
0004f4  15001014  dma_cfg zero, zero, r1, 10
0004f8  9f501000  addli r1, zero, 13
0004fc  15001014  dma_cfg zero, zero, r1, 10
000500  9f601000  addli r1, zero, 14
000504  15001014  dma_cfg zero, zero, r1, 10
000508  9f102000  addli r1, zero, 17
00050c  1500f014  dma_cfg zero, zero, r15, 10
000510  9f270000  addli r15, zero, 2
000514  1500b014  dma_cfg zero, zero, r11, 10
000518  15001014  dma_cfg zero, zero, r1, 10
00051c  9f302000  addli r1, zero, 19
000520  15003015  dma_cfg zero, zero, r19, 10
000524  9f190000  addli r19, zero, 1
000528  15001014  dma_cfg zero, zero, r1, 10
00052c  9f602000  addli r1, zero, 22
000530  15005015  dma_cfg zero, zero, r21, 10
000534  15002015  dma_cfg zero, zero, r18, 10
000538  15001014  dma_cfg zero, zero, r1, 10
00053c  9f702000  addli r1, zero, 23
000540  15001014  dma_cfg zero, zero, r1, 10
000544  9f203000  addli r1, zero, 26
000548  15006014  dma_cfg zero, zero, r6, 10
00054c  15007014  dma_cfg zero, zero, r7, 10
000550  6b538ffe  load.d r[7:8], -24(r30)
000554  15001014  dma_cfg zero, zero, r1, 10
000558  9f503000  addli r1, zero, 29
00055c  15008015  dma_cfg zero, zero, r24, 10
000560  15006015  dma_cfg zero, zero, r22, 10
000564  6308ffff  loadli.w r16,  -8(r30)
000568  15001014  dma_cfg zero, zero, r1, 10
00056c  9f603000  addli r1, zero, 30
000570  15001014  dma_cfg zero, zero, r1, 10
000574  15009014  dma_cfg zero, zero, r9, 10
000578  95890900  dma_cfg r19, r19, zero, 0
00057c  95090002  dma_cfg r19, zero, zero, 1
000580  15000004  dma_cfg zero, zero, zero, 2
000584  15003006  dma_cfg zero, zero, r3, 3
000588  1502b008  dma_cfg r4, zero, r11, 4
00058c  1506300b  dma_cfg r12, zero, r19, 5
000590  15000010  dma_cfg zero, zero, zero, 8
000594  35000000  dma_run zero
000598  1500300b  dma_cfg zero, zero, r19, 5
00059c  15000010  dma_cfg zero, zero, zero, 8
0005a0  1d100400  unlock r8
0005a4  7d800700  xsignal r15, 0
0005a8  5b030000  j 24
0005ac  1f180000  addli r16, zero, 1
0005b0  9f600000  addli r1, zero, 6
0005b4  7d900000  xwait r1, 0
0005b8  5b010000  j 8
0005bc  1f080000  addli r16, zero, 0
0005c0  8f109371  mod.sl r[2:3], r[7:8], r[26:27]
0005c4  9f211000  addli r3, zero, 10
0005c8  a7f0f00b  addli.d r[2:3], r[2:3], 1535
0005cc  97c13002  srl.d r[4:5], r[2:3], r3
0005d0  eb500ffc  load.d r[2:3], -64(r30)
0005d4  733c3ffe  store.d r[4:5], -8(r30)
0005d8  93a01100  seteq.d r1, r[4:5], r[2:3]
0005dc  1f010004  addli r2, zero, 512
0005e0  330a0128  zext_int2long r[21:22], r2
0005e4  3bec0000  bneq r1, zero, 792
0005e8  6b520ffc  load.d r[5:6], -64(r30)
0005ec  b3860928  zext_int2long r[14:15], r19
0005f0  5b030000  j 24
0005f4  6b548fff  load.d r[9:10], -8(r30)
0005f8  0ba24010  add.ul r[5:6], r[2:3], r[5:6]
0005fc  93a18604  setlt.ul r3, r[14:15], r[9:10]
000600  b3860728  zext_int2long r[14:15], r15
000604  b7eb0100  beq r3, zero, 760
000608  8b206210  add.ul r[2:3], r[5:6], r[7:8]
00060c  8b354a18  sub.sl r[12:13], r[21:22], r[5:6]
000610  0f949071  mod.sl r[9:10], r[2:3], r[26:27]
000614  8bb08c18  sub.sl r[2:3], r[26:27], r[9:10]
000618  8ba01540  min.ul r[2:3], r[12:13], r[2:3]
00061c  376f08fe  beq r16, zero, -40
000620  1f5c0000  addli r24, zero, 5
000624  6b538f00  load.d r[7:8], 8(r30)
000628  17343403  sll.d r[9:10], r[9:10], r19
00062c  1f3d0000  addli r26, zero, 3
000630  9f0c1000  addli r25, zero, 8
000634  9f2b1000  addli r23, zero, 10
000638  9f082000  addli r17, zero, 16
00063c  1f1b2000  addli r22, zero, 17
000640  9b312200  slli r3, r4, 2
000644  1f150000  addli r10, zero, 1
000648  9f050010  addli r11, zero, 2048
00064c  1bb91000  slli r18, r1, 1
000650  1d000c00  lock zero, r24
000654  9f810110  addli r3, r3, 2048
000658  15000014  dma_cfg zero, zero, zero, 10
00065c  0b248310  add.ul r[9:10], r[7:8], r[9:10]
000660  9f430000  addli r7, zero, 4
000664  1f630000  addli r6, zero, 6
000668  15003015  dma_cfg zero, zero, r19, 10
00066c  a7090a00  addli.d r[20:21], r[21:22], 0
000670  9f1a1000  addli r21, zero, 9
000674  1500f014  dma_cfg zero, zero, r15, 10
000678  9f070001  addli r15, zero, 128
00067c  1500a015  dma_cfg zero, zero, r26, 10
000680  15007014  dma_cfg zero, zero, r7, 10
000684  0b96f138  mod.s r12, r3, r15
000688  15008015  dma_cfg zero, zero, r24, 10
00068c  15006014  dma_cfg zero, zero, r6, 10
000690  1f730000  addli r6, zero, 7
000694  15006014  dma_cfg zero, zero, r6, 10
000698  1f331000  addli r6, zero, 11
00069c  15009015  dma_cfg zero, zero, r25, 10
0006a0  15005015  dma_cfg zero, zero, r21, 10
0006a4  15007015  dma_cfg zero, zero, r23, 10
0006a8  15006014  dma_cfg zero, zero, r6, 10
0006ac  1f431000  addli r6, zero, 12
0006b0  15006014  dma_cfg zero, zero, r6, 10
0006b4  1f531000  addli r6, zero, 13
0006b8  15006014  dma_cfg zero, zero, r6, 10
0006bc  1f631000  addli r6, zero, 14
0006c0  15006014  dma_cfg zero, zero, r6, 10
0006c4  1f731000  addli r6, zero, 15
0006c8  15006014  dma_cfg zero, zero, r6, 10
0006cc  1f232000  addli r6, zero, 18
0006d0  15001015  dma_cfg zero, zero, r17, 10
0006d4  15006015  dma_cfg zero, zero, r22, 10
0006d8  15006014  dma_cfg zero, zero, r6, 10
0006dc  1f332000  addli r6, zero, 19
0006e0  15006014  dma_cfg zero, zero, r6, 10
0006e4  1f432000  addli r6, zero, 20
0006e8  15006014  dma_cfg zero, zero, r6, 10
0006ec  1f532000  addli r6, zero, 21
0006f0  15006014  dma_cfg zero, zero, r6, 10
0006f4  1f632000  addli r6, zero, 22
0006f8  15006014  dma_cfg zero, zero, r6, 10
0006fc  1f732000  addli r6, zero, 23
000700  15006014  dma_cfg zero, zero, r6, 10
000704  1f033000  addli r6, zero, 24
000708  15006014  dma_cfg zero, zero, r6, 10
00070c  1f133000  addli r6, zero, 25
000710  15006014  dma_cfg zero, zero, r6, 10
000714  1f233000  addli r6, zero, 26
000718  15006014  dma_cfg zero, zero, r6, 10
00071c  1f333000  addli r6, zero, 27
000720  15006014  dma_cfg zero, zero, r6, 10
000724  1f433000  addli r6, zero, 28
000728  15006014  dma_cfg zero, zero, r6, 10
00072c  1f533000  addli r6, zero, 29
000730  15006014  dma_cfg zero, zero, r6, 10
000734  1f633000  addli r6, zero, 30
000738  15006014  dma_cfg zero, zero, r6, 10
00073c  1f733000  addli r6, zero, 31
000740  15006014  dma_cfg zero, zero, r6, 10
000744  1f038000  addli r6, zero, 64
000748  15050500  dma_cfg r10, r10, zero, 0
00074c  15050002  dma_cfg r10, zero, zero, 1
000750  15000004  dma_cfg zero, zero, zero, 2
000754  95056006  dma_cfg r11, zero, r6, 3
000758  95071009  dma_cfg r15, zero, r17, 4
00075c  9505a00a  dma_cfg r11, zero, r10, 5
000760  9b451600  srli r11, r12, 1
000764  15000010  dma_cfg zero, zero, zero, 8
000768  35000000  dma_run zero
00076c  1500a00a  dma_cfg zero, zero, r10, 5
000770  15000010  dma_cfg zero, zero, zero, 8
000774  8b95b118  sub.s r11, r3, r11
000778  8b91c118  sub.s r3, r3, r12
00077c  1f260000  addli r12, zero, 2
000780  1d100c00  unlock r24
000784  1d800300  lock zero, r7
000788  9f858500  addli r11, r11, 64
00078c  15050500  dma_cfg r10, r10, zero, 0
000790  15800404  dma_cfg zero, r9, zero, 2
000794  95056406  dma_cfg r11, r8, r6, 3
000798  abf5ff7f  lui r11, 524287
00079c  1bb42000  slli r8, r1, 2
0007a0  9ff43000  addli r9, r1, 31
0007a4  9b9505f8  ori r11, r11, 3968
0007a8  9bc45400  srli r9, r9, 5
0007ac  9705b400  and r11, r8, r11
0007b0  1b04e903  andi r8, r18, 62
0007b4  95079308  dma_cfg r15, r6, r9, 4
0007b8  97958500  or r11, r11, r8
0007bc  9505a90a  dma_cfg r11, r18, r10, 5
0007c0  15008010  dma_cfg zero, zero, r8, 8
0007c4  35000000  dma_run zero
0007c8  1500a00a  dma_cfg zero, zero, r10, 5
0007cc  15000010  dma_cfg zero, zero, zero, 8
0007d0  1d900300  unlock r7
0007d4  1d000c00  lock zero, r24
0007d8  15000014  dma_cfg zero, zero, zero, 10
0007dc  1500a014  dma_cfg zero, zero, r10, 10
0007e0  2b054000  lui r10, 1024
0007e4  1500c014  dma_cfg zero, zero, r12, 10
0007e8  1500a015  dma_cfg zero, zero, r26, 10
0007ec  15007014  dma_cfg zero, zero, r7, 10
0007f0  9f630000  addli r7, zero, 6
0007f4  15008015  dma_cfg zero, zero, r24, 10
0007f8  15007014  dma_cfg zero, zero, r7, 10
0007fc  9f730000  addli r7, zero, 7
000800  15007014  dma_cfg zero, zero, r7, 10
000804  9f331000  addli r7, zero, 11
000808  15009015  dma_cfg zero, zero, r25, 10
00080c  15005015  dma_cfg zero, zero, r21, 10
000810  278a0900  addli.d r[21:22], r[20:21], 0
000814  9f190000  addli r19, zero, 1
000818  15007015  dma_cfg zero, zero, r23, 10
00081c  9f1b2000  addli r23, zero, 17
000820  eb5c0ffd  load.d r[26:27], -48(r30)
000824  15007014  dma_cfg zero, zero, r7, 10
000828  9f431000  addli r7, zero, 12
00082c  15007014  dma_cfg zero, zero, r7, 10
000830  9f531000  addli r7, zero, 13
000834  15007014  dma_cfg zero, zero, r7, 10
000838  9f631000  addli r7, zero, 14
00083c  15007014  dma_cfg zero, zero, r7, 10
000840  9f731000  addli r7, zero, 15
000844  15007014  dma_cfg zero, zero, r7, 10
000848  9f232000  addli r7, zero, 18
00084c  15001015  dma_cfg zero, zero, r17, 10
000850  ab480000  lui r17, 4
000854  15006015  dma_cfg zero, zero, r22, 10
000858  15007014  dma_cfg zero, zero, r7, 10
00085c  9f332000  addli r7, zero, 19
000860  15007014  dma_cfg zero, zero, r7, 10
000864  9f432000  addli r7, zero, 20
000868  15007014  dma_cfg zero, zero, r7, 10
00086c  9f532000  addli r7, zero, 21
000870  15007014  dma_cfg zero, zero, r7, 10
000874  9f632000  addli r7, zero, 22
000878  15007014  dma_cfg zero, zero, r7, 10
00087c  9f732000  addli r7, zero, 23
000880  15007014  dma_cfg zero, zero, r7, 10
000884  9f033000  addli r7, zero, 24
000888  15007014  dma_cfg zero, zero, r7, 10
00088c  9f133000  addli r7, zero, 25
000890  15007014  dma_cfg zero, zero, r7, 10
000894  9f233000  addli r7, zero, 26
000898  15007014  dma_cfg zero, zero, r7, 10
00089c  9f333000  addli r7, zero, 27
0008a0  15007014  dma_cfg zero, zero, r7, 10
0008a4  9f433000  addli r7, zero, 28
0008a8  15007014  dma_cfg zero, zero, r7, 10
0008ac  9f533000  addli r7, zero, 29
0008b0  15007014  dma_cfg zero, zero, r7, 10
0008b4  9f633000  addli r7, zero, 30
0008b8  15007014  dma_cfg zero, zero, r7, 10
0008bc  9f733000  addli r7, zero, 31
0008c0  15007014  dma_cfg zero, zero, r7, 10
0008c4  95890900  dma_cfg r19, r19, zero, 0
0008c8  95090002  dma_cfg r19, zero, zero, 1
0008cc  15000004  dma_cfg zero, zero, zero, 2
0008d0  95016006  dma_cfg r3, zero, r6, 3
0008d4  6b538ffe  load.d r[7:8], -24(r30)
0008d8  95079008  dma_cfg r15, zero, r9, 4
0008dc  9f270000  addli r15, zero, 2
0008e0  9505300b  dma_cfg r11, zero, r19, 5
0008e4  15008010  dma_cfg zero, zero, r8, 8
0008e8  35000000  dma_run zero
0008ec  1500300b  dma_cfg zero, zero, r19, 5
0008f0  15000010  dma_cfg zero, zero, zero, 8
0008f4  1d100c00  unlock r24
0008f8  db9fffff  j -772
0008fc  37300800  beq r16, zero, 12
000900  9f500000  addli r1, zero, 5
000904  7d800000  xsignal r1, 0
000908  9b950880  ori r11, r17, 2048
00090c  00340002  core_id r8
000910  9f500000  addli r1, zero, 5
000914  9f360000  addli r13, zero, 3
000918  376e1404  beq r8, r1, 2968
00091c  3b18d406  bneq r8, r13, 3588
000920  9f401000  addli r1, zero, 12
000924  e74dbffe  storeli.w r11, -36(r30)
000928  733c4fff  store.d r[21:22], -8(r30)
00092c  7d900600  xwait r13, 0
000930  33030028  zext_int2long r[7:8], zero
000934  7d900000  xwait r1, 0
000938  3d000000  xfence
00093c  00a00300  mfence { lm, sm, gm }
000940  db0b0000  j 92
000944  eb568fff  load.d r[14:15], -8(r30)
000948  9f440240  addli r9, r4, 8196
00094c  27031300  addli.d r[7:8], r[7:8], 8
000950  1f411240  addli r2, r4, 8204
000954  9f000240  addli r1, r4, 8192
000958  9f022240  addli r5, r4, 8208
00095c  73e06401  stores.w r22, 0(r9)
000960  e304dfff  loadli.w r9,  -24(r30)
000964  73603101  stores.w r19, 0(r2)
000968  1f011240  addli r2, r4, 8200
00096c  73e08200  stores.w r8, 0(r5)
000970  9321d302  setneq.d r3, r[7:8], r[14:15]
000974  73605101  stores.w r21, 0(r2)
000978  1f413240  addli r2, r4, 8220
00097c  73e09000  stores.w r9, 0(r1)
000980  9f003240  addli r1, r4, 8216
000984  7360b100  stores.w r11, 0(r2)
000988  1f412240  addli r2, r4, 8212
00098c  73e0a000  stores.w r10, 0(r1)
000990  2b054000  lui r10, 1024
000994  7360c100  stores.w r12, 0(r2)
000998  b7f80100  beq r3, zero, 572
00099c  1b322300  slli r4, r6, 2
0009a0  6f41c200  loads.w r2, 12(r4)
0009a4  6f470200  loads.w r14, 0(r4)
0009a8  ef474200  loads.w r15, 4(r4)
0009ac  ef428200  loads.w r5, 8(r4)
0009b0  6f4a0201  loads.w r20, 16(r4)
0009b4  6f484201  loads.w r16, 20(r4)
0009b8  ef468201  loads.w r13, 24(r4)
0009bc  ef40c201  loads.w r1, 28(r4)
0009c0  9704c101  and r9, r2, r28
0009c4  93819d04  setlt.u r3, r27, r9
0009c8  3bb00100  bneq r3, zero, 12
0009cc  9f090100  addli r19, r2, 0
0009d0  5b010000  j 8
0009d4  9719a100  or r19, r2, r10
0009d8  978bc201  and r23, r5, r28
0009dc  93817d05  setlt.u r3, r27, r23
0009e0  3bb00100  bneq r3, zero, 12
0009e4  9f8a0200  addli r21, r5, 0
0009e8  5b010000  j 8
0009ec  979aa200  or r21, r5, r10
0009f0  978cc701  and r25, r15, r28
0009f4  13849d05  setlt.u r8, r27, r25
0009f8  3b300400  bneq r8, zero, 12
0009fc  1f8b0700  addli r22, r15, 0
000a00  5b010000  j 8
000a04  179ba700  or r22, r15, r10
000a08  1709c701  and r18, r14, r28
000a0c  13842d05  setlt.u r8, r27, r18
000a10  3b300400  bneq r8, zero, 12
000a14  e70eeffe  storeli.w r14, -24(r30)
000a18  db010000  j 12
000a1c  9711a700  or r3, r14, r10
000a20  e70e3ffe  storeli.w r3, -24(r30)
000a24  9788c001  and r17, r1, r28
000a28  13841d05  setlt.u r8, r27, r17
000a2c  3b300400  bneq r8, zero, 12
000a30  674e1ffe  storeli.w r1, -28(r30)
000a34  db010000  j 12
000a38  9791a000  or r3, r1, r10
000a3c  674e3ffe  storeli.w r3, -28(r30)
000a40  9785c601  and r11, r13, r28
000a44  ab014000  lui r3, 1024
000a48  1384bd04  setlt.u r8, r27, r11
000a4c  3b300400  bneq r8, zero, 12
000a50  1f850600  addli r10, r13, 0
000a54  db010000  j 12
000a58  2b044000  lui r8, 1024
000a5c  17958600  or r10, r13, r8
000a60  170cc801  and r24, r16, r28
000a64  13848d05  setlt.u r8, r27, r24
000a68  3b300400  bneq r8, zero, 12
000a6c  1f060800  addli r12, r16, 0
000a70  5b010000  j 8
000a74  17163800  or r12, r16, r3
000a78  170dca01  and r26, r20, r28
000a7c  1384ad05  setlt.u r8, r27, r26
000a80  3b300400  bneq r8, zero, 12
000a84  1f040a00  addli r8, r20, 0
000a88  5b010000  j 8
000a8c  17143a00  or r8, r20, r3
000a90  e341efff  loadli.w r3,  -12(r30)
000a94  13892105  setlt.u r18, r3, r18
000a98  bb100900  bneq r18, zero, 36
000a9c  1b490701  srli r18, r14, 16
000aa0  ab01ffff  lui r3, 1048560
000aa4  1b091900  andi r18, r18, 1
000aa8  0b172711  add.s r14, r14, r18
000aac  6309cfff  loadli.w r18,  -32(r30)
000ab0  0b172711  add.s r14, r14, r18
000ab4  97013700  and r3, r14, r3
000ab8  e70e3ffe  storeli.w r3, -24(r30)
000abc  6347efff  loadli.w r14,  -12(r30)
000ac0  13079705  setlt.u r14, r14, r25
000ac4  e30ccfff  loadli.w r25,  -32(r30)
000ac8  3b700700  bneq r14, zero, 28
000acc  1bc70701  srli r14, r15, 16
000ad0  ab01ffff  lui r3, 1048560
000ad4  1b071700  andi r14, r14, 1
000ad8  0b97e710  add.s r14, r15, r14
000adc  0b179711  add.s r14, r14, r25
000ae0  170b3700  and r22, r14, r3
000ae4  e341efff  loadli.w r3,  -12(r30)
000ae8  13877105  setlt.u r14, r3, r23
000aec  9f8b0100  addli r23, r3, 0
000af0  b7020700  beq r14, zero, 160
000af4  93829b04  setlt.u r5, r23, r9
000af8  b7e20200  beq r5, zero, 184
000afc  1381ab05  setlt.u r2, r23, r26
000b00  3b700100  bneq r2, zero, 28
000b04  1b410a01  srli r2, r20, 16
000b08  ab01ffff  lui r3, 1048560
000b0c  1b011100  andi r2, r2, 1
000b10  0b112a10  add.s r2, r20, r2
000b14  0b119111  add.s r2, r2, r25
000b18  17043100  and r8, r2, r3
000b1c  13818b05  setlt.u r2, r23, r24
000b20  2b4d0000  lui r26, 4
000b24  3b700100  bneq r2, zero, 28
000b28  1b410801  srli r2, r16, 16
000b2c  ab01ffff  lui r3, 1048560
000b30  1b011100  andi r2, r2, 1
000b34  0b112810  add.s r2, r16, r2
000b38  0b119111  add.s r2, r2, r25
000b3c  17063100  and r12, r2, r3
000b40  1381bb04  setlt.u r2, r23, r11
000b44  630cbfff  loadli.w r24,  -40(r30)
000b48  2b0a0080  lui r20, 524288
000b4c  3b700100  bneq r2, zero, 28
000b50  1bc10601  srli r2, r13, 16
000b54  ab01ffff  lui r3, 1048560
000b58  1b011100  andi r2, r2, 1
000b5c  0b912610  add.s r2, r13, r2
000b60  0b119111  add.s r2, r2, r25
000b64  17053100  and r10, r2, r3
000b68  13811b05  setlt.u r2, r23, r17
000b6c  e345cfff  loadli.w r11,  -28(r30)
000b70  3b5701fe  bneq r2, zero, -556
000b74  1bc10001  srli r2, r1, 16
000b78  1b011100  andi r2, r2, 1
000b7c  8b902010  add.s r1, r1, r2
000b80  2b01ffff  lui r2, 1048560
000b84  8b909011  add.s r1, r1, r25
000b88  97852000  and r11, r1, r2
000b8c  5bb7ffff  j -584
000b90  9bc10201  srli r3, r5, 16
000b94  9b811100  andi r3, r3, 1
000b98  8b913210  add.s r3, r5, r3
000b9c  ab02ffff  lui r5, 1048560
000ba0  8b919111  add.s r3, r3, r25
000ba4  978a5100  and r21, r3, r5
000ba8  93829b04  setlt.u r5, r23, r9
000bac  3bcd02fe  bneq r5, zero, -176
000bb0  9b420101  srli r5, r2, 16
000bb4  ab01ffff  lui r3, 1048560
000bb8  9b821200  andi r5, r5, 1
000bbc  0b115110  add.s r2, r2, r5
000bc0  0b119111  add.s r2, r2, r25
000bc4  97093100  and r19, r2, r3
000bc8  1381ab05  setlt.u r2, r23, r26
000bcc  b76c01fe  beq r2, zero, -200
000bd0  dbe9ffff  j -180
000bd4  9f400000  addli r1, zero, 4
000bd8  00200100  mfence { sm }
000bdc  7d800000  xsignal r1, 0
000be0  9f101000  addli r1, zero, 9
000be4  7d800000  xsignal r1, 0
000be8  9f201000  addli r1, zero, 10
000bec  7d800000  xsignal r1, 0
000bf0  9f501000  addli r1, zero, 13
000bf4  7d800000  xsignal r1, 0
000bf8  9f700000  addli r1, zero, 7
000bfc  7d800000  xsignal r1, 0
000c00  9f001000  addli r1, zero, 8
000c04  7d900000  xwait r1, 0
000c08  9f002000  addli r1, zero, 16
000c0c  7d900000  xwait r1, 0
000c10  9f202000  addli r1, zero, 18
000c14  7d900000  xwait r1, 0
000c18  9f203000  addli r1, zero, 26
000c1c  7d900000  xwait r1, 0
000c20  3d000000  xfence
000c24  b3000028  zext_int2long r[2:3], zero
000c28  00a00300  mfence { lm, sm, gm }
000c2c  eb5a8fff  load.d r[22:23], -8(r30)
000c30  5b060000  j 48
000c34  a7c00000  addli.d r[2:3], r[2:3], 4
000c38  9f411220  addli r3, r4, 4108
000c3c  1f040220  addli r8, r4, 4096
000c40  93a25003  setneq.d r5, r[2:3], r[22:23]
000c44  73e07100  stores.w r7, 0(r3)
000c48  9f011220  addli r3, r4, 4104
000c4c  1f420220  addli r4, r4, 4100
000c50  73606400  stores.w r6, 0(r8)
000c54  73e09100  stores.w r9, 0(r3)
000c58  7360b200  stores.w r11, 0(r4)
000c5c  37e50200  beq r5, zero, 344
000c60  1bb22000  slli r4, r1, 2
000c64  1f031260  addli r6, r4, 12296
000c68  9f010260  addli r3, r4, 12288
000c6c  9f420260  addli r5, r4, 12292
000c70  1f041240  addli r8, r4, 8200
000c74  9f461270  addli r13, r4, 14348
000c78  ef440300  loads.w r9, 0(r6)
000c7c  1f030240  addli r6, r4, 8192
000c80  efc30100  loads.w r7, 0(r3)
000c84  9f411260  addli r3, r4, 12300
000c88  efc50200  loads.w r11, 0(r5)
000c8c  6f460400  loads.w r12, 0(r8)
000c90  6f430300  loads.w r6, 0(r6)
000c94  efc20100  loads.w r5, 0(r3)
000c98  9f410240  addli r3, r4, 8196
000c9c  6fc70100  loads.w r14, 0(r3)
000ca0  9f411240  addli r3, r4, 8204
000ca4  6fc40100  loads.w r8, 0(r3)
000ca8  efc10600  loads.w r3, 0(r13)
000cac  9f061270  addli r13, r4, 14344
000cb0  efc60600  loads.w r13, 0(r13)
000cb4  9783c301  and r7, r7, r28
000cb8  1703c301  and r6, r6, r28
000cbc  1388b301  seteq r16, r7, r27
000cc0  93890300  seteq r19, r7, zero
000cc4  93080300  seteq r17, r6, zero
000cc8  1309b301  seteq r18, r6, r27
000ccc  0b836348  max.u r6, r7, r6
000cd0  9f430270  addli r7, r4, 14340
000cd4  efc70300  loads.w r15, 0(r7)
000cd8  13836d04  setlt.u r6, r27, r6
000cdc  97031801  and r7, r16, r17
000ce0  17882901  and r16, r19, r18
000ce4  97930301  or r7, r7, r16
000ce8  17187300  or r16, r6, r7
000cec  ab03c07f  lui r7, 523264
000cf0  2b03c07f  lui r6, 523264
000cf4  3b300800  bneq r16, zero, 12
000cf8  1f030270  addli r6, r4, 14336
000cfc  6f430300  loads.w r6, 0(r6)
000d00  9785c501  and r11, r11, r28
000d04  1707c701  and r14, r14, r28
000d08  1388b501  seteq r16, r11, r27
000d0c  93890500  seteq r19, r11, zero
000d10  93080700  seteq r17, r14, zero
000d14  1309b701  seteq r18, r14, r27
000d18  8b85e548  max.u r11, r11, r14
000d1c  9385bd04  setlt.u r11, r27, r11
000d20  17071801  and r14, r16, r17
000d24  17882901  and r16, r19, r18
000d28  17170701  or r14, r14, r16
000d2c  1797e500  or r14, r11, r14
000d30  ab05c07f  lui r11, 523264
000d34  3b200700  bneq r14, zero, 8
000d38  9f850700  addli r11, r15, 0
000d3c  9784c401  and r9, r9, r28
000d40  1706c601  and r12, r12, r28
000d44  1387b401  seteq r14, r9, r27
000d48  93880400  seteq r17, r9, zero
000d4c  93070600  seteq r15, r12, zero
000d50  1308b601  seteq r16, r12, r27
000d54  8b84c448  max.u r9, r9, r12
000d58  93849d04  setlt.u r9, r27, r9
000d5c  1706f700  and r12, r14, r15
000d60  17870801  and r14, r17, r16
000d64  1716e600  or r12, r12, r14
000d68  1796c400  or r12, r9, r12
000d6c  ab04c07f  lui r9, 523264
000d70  3b200600  bneq r12, zero, 8
000d74  9f840600  addli r9, r13, 0
000d78  9782c201  and r5, r5, r28
000d7c  1704c401  and r8, r8, r28
000d80  1386b201  seteq r12, r5, r27
000d84  93870200  seteq r15, r5, zero
000d88  93060400  seteq r13, r8, zero
000d8c  1307b401  seteq r14, r8, r27
000d90  8b828248  max.u r5, r5, r8
000d94  93825d04  setlt.u r5, r27, r5
000d98  1704d600  and r8, r12, r13
000d9c  1786e700  and r12, r15, r14
000da0  1714c400  or r8, r8, r12
000da4  97928200  or r5, r5, r8
000da8  3bba02fe  bneq r5, zero, -372
000dac  9f830100  addli r7, r3, 0
000db0  dbd0ffff  j -380
000db4  9f301000  addli r1, zero, 11
000db8  00200100  mfence { sm }
000dbc  2b088041  lui r16, 268288
000dc0  7d800000  xsignal r1, 0
000dc4  9f102000  addli r1, zero, 17
000dc8  7d800000  xsignal r1, 0
000dcc  9f302000  addli r1, zero, 19
000dd0  7d800000  xsignal r1, 0
000dd4  9f402000  addli r1, zero, 20
000dd8  7d800000  xsignal r1, 0
000ddc  9f303000  addli r1, zero, 27
000de0  7d900000  xwait r1, 0
000de4  9f703000  addli r1, zero, 31
000de8  7d900000  xwait r1, 0
000dec  3d000000  xfence
000df0  b3000028  zext_int2long r[2:3], zero
000df4  00a00300  mfence { lm, sm, gm }
000df8  9bb12000  slli r3, r1, 2
000dfc  1b128d00  ori r4, r26, 8
000e00  1b130d01  ori r6, r26, 16
000e04  a7801000  addli.d r[2:3], r[2:3], 8
000e08  0b924110  add.s r4, r3, r4
000e0c  8b92a111  add.s r5, r3, r26
000e10  0b936110  add.s r6, r3, r6
000e14  93a45003  setneq.d r9, r[2:3], r[22:23]
000e18  9f870130  addli r15, r3, 6144
000e1c  ef530200  loads.d r[8:9], 0(r4)
000e20  1b128d01  ori r4, r26, 24
000e24  ef560300  loads.d r[14:15], 0(r6)
000e28  efd50200  loads.d r[12:13], 0(r5)
000e2c  1f831130  addli r6, r3, 6152
000e30  0b924110  add.s r4, r3, r4
000e34  6f520200  loads.d r[5:6], 0(r4)
000e38  73707300  stores.d r[8:9], 0(r6)
000e3c  1f832130  addli r6, r3, 6160
000e40  9f813130  addli r3, r3, 6168
000e44  73f0b700  stores.d r[12:13], 0(r15)
000e48  7370d300  stores.d r[14:15], 0(r6)
000e4c  73f04100  stores.d r[5:6], 0(r3)
000e50  bbae04fe  bneq r9, zero, -88
000e54  9f403000  addli r1, zero, 28
000e58  00200100  mfence { sm }
000e5c  1f513000  addli r2, zero, 29
000e60  7d800000  xsignal r1, 0
000e64  9f502000  addli r1, zero, 21
000e68  7d000100  xsignal r2, 0
000e6c  7d900000  xwait r1, 0
000e70  7d100100  xwait r2, 0
000e74  3d000000  xfence
000e78  b3000028  zext_int2long r[2:3], zero
000e7c  00a00300  mfence { lm, sm, gm }
000e80  5b0a0000  j 80
000e84  1f471220  addli r14, r4, 4108
000e88  a7801000  addli.d r[2:3], r[2:3], 8
000e8c  9f050220  addli r11, r4, 4096
000e90  9f072220  addli r15, r4, 4112
000e94  73609700  stores.w r9, 0(r14)
000e98  9f041220  addli r9, r4, 4104
000e9c  1f470220  addli r14, r4, 4100
000ea0  73e05500  stores.w r5, 0(r11)
000ea4  9f023220  addli r5, r4, 4120
000ea8  73e03700  stores.w r3, 0(r15)
000eac  73e0c400  stores.w r12, 0(r9)
000eb0  13a65003  setneq.d r12, r[2:3], r[22:23]
000eb4  9f443220  addli r9, r4, 4124
000eb8  1f422220  addli r4, r4, 4116
000ebc  7360d700  stores.w r13, 0(r14)
000ec0  73e08200  stores.w r8, 0(r5)
000ec4  73e06400  stores.w r6, 0(r9)
000ec8  73607200  stores.w r7, 0(r4)
000ecc  b7330600  beq r12, zero, 236
000ed0  1bb22000  slli r4, r1, 2
000ed4  9f421230  addli r5, r4, 6156
000ed8  9f010230  addli r3, r4, 6144
000edc  1f031230  addli r6, r4, 6152
000ee0  9f432230  addli r7, r4, 6164
000ee4  9f052230  addli r11, r4, 6160
000ee8  efc40200  loads.w r9, 0(r5)
000eec  efc20100  loads.w r5, 0(r3)
000ef0  9f410230  addli r3, r4, 6148
000ef4  6f460300  loads.w r12, 0(r6)
000ef8  1f433230  addli r6, r4, 6172
000efc  efc30300  loads.w r7, 0(r7)
000f00  efc60100  loads.w r13, 0(r3)
000f04  9f013230  addli r3, r4, 6168
000f08  6f430300  loads.w r6, 0(r6)
000f0c  6fc40100  loads.w r8, 0(r3)
000f10  efc10500  loads.w r3, 0(r11)
000f14  9785c201  and r11, r5, r28
000f18  9305b804  setlt.u r11, r16, r11
000f1c  37b00500  beq r11, zero, 12
000f20  97824201  and r5, r5, r20
000f24  97920201  or r5, r5, r16
000f28  9785c601  and r11, r13, r28
000f2c  9305b804  setlt.u r11, r16, r11
000f30  37b00500  beq r11, zero, 12
000f34  97854601  and r11, r13, r20
000f38  97960501  or r13, r11, r16
000f3c  9705c601  and r11, r12, r28
000f40  9305b804  setlt.u r11, r16, r11
000f44  37b00500  beq r11, zero, 12
000f48  97054601  and r11, r12, r20
000f4c  17960501  or r12, r11, r16
000f50  9785c401  and r11, r9, r28
000f54  9305b804  setlt.u r11, r16, r11
000f58  37b00500  beq r11, zero, 12
000f5c  97844401  and r9, r9, r20
000f60  97940401  or r9, r9, r16
000f64  9785c101  and r11, r3, r28
000f68  9305b804  setlt.u r11, r16, r11
000f6c  37b00500  beq r11, zero, 12
000f70  97814101  and r3, r3, r20
000f74  97910101  or r3, r3, r16
000f78  9785c301  and r11, r7, r28
000f7c  9305b804  setlt.u r11, r16, r11
000f80  37b00500  beq r11, zero, 12
000f84  97834301  and r7, r7, r20
000f88  97930301  or r7, r7, r16
000f8c  9705c401  and r11, r8, r28
000f90  9305b804  setlt.u r11, r16, r11
000f94  37b00500  beq r11, zero, 12
000f98  17044401  and r8, r8, r20
000f9c  17140401  or r8, r8, r16
000fa0  9705c301  and r11, r6, r28
000fa4  9305b804  setlt.u r11, r16, r11
000fa8  37fb05fe  beq r11, zero, -292
000fac  17034301  and r6, r6, r20
000fb0  17130301  or r6, r6, r16
000fb4  5bdaffff  j -304
000fb8  9f602000  addli r1, zero, 22
000fbc  00200100  mfence { sm }
000fc0  1f613000  addli r2, zero, 30
000fc4  b3070028  zext_int2long r[16:17], zero
000fc8  7d800000  xsignal r1, 0
000fcc  9f702000  addli r1, zero, 23
000fd0  7d000100  xsignal r2, 0
000fd4  7d900000  xwait r1, 0
000fd8  9f204000  addli r1, zero, 34
000fdc  7d100100  xwait r2, 0
000fe0  7d900000  xwait r1, 0
000fe4  3d000000  xfence
000fe8  00a00300  mfence { lm, sm, gm }
000fec  db0e0000  j 116
000ff0  1b13cd80  ori r6, r26, 2060
000ff4  9b138d80  ori r7, r26, 2056
000ff8  a7871700  addli.d r[16:17], r[16:17], 8
000ffc  8b116b10  add.s r3, r22, r6
001000  0b147b10  add.s r8, r22, r7
001004  73604400  stores.w r4, 0(r8)
001008  73e04101  stores.w r20, 0(r3)
00100c  e341bfff  loadli.w r3,  -36(r30)
001010  1b124d80  ori r4, r26, 2052
001014  1b140d81  ori r8, r26, 2064
001018  8b144b10  add.s r9, r22, r4
00101c  0b148b10  add.s r8, r22, r8
001020  8b113b10  add.s r3, r22, r3
001024  73e0e400  stores.w r14, 0(r9)
001028  9b14cd81  ori r9, r26, 2076
00102c  73601400  stores.w r1, 0(r8)
001030  73e0c100  stores.w r12, 0(r3)
001034  eb558fff  load.d r[12:13], -8(r30)
001038  8b119b10  add.s r3, r22, r9
00103c  9b148d81  ori r9, r26, 2072
001040  73e0d100  stores.w r13, 0(r3)
001044  93a1b700  seteq.d r3, r[16:17], r[12:13]
001048  9b154d81  ori r11, r26, 2068
00104c  8b149b10  add.s r9, r22, r9
001050  8b15bb10  add.s r11, r22, r11
001054  73e05400  stores.w r5, 0(r9)
001058  73e02500  stores.w r2, 0(r11)
00105c  bbc50100  bneq r3, zero, 368
001060  1bbb2700  slli r22, r15, 2
001064  9f000b30  addli r1, r22, 6144
001068  1f012b30  addli r2, r22, 6160
00106c  9f410b30  addli r3, r22, 6148
001070  1f021b20  addli r4, r22, 4104
001074  9f423b20  addli r5, r22, 4124
001078  1f492b20  addli r18, r22, 4116
00107c  6fc60000  loads.w r12, 0(r1)
001080  9f001b30  addli r1, r22, 6152
001084  6f440100  loads.w r8, 0(r2)
001088  1f413b30  addli r2, r22, 6172
00108c  efc80100  loads.w r17, 0(r3)
001090  9f411b30  addli r3, r22, 6156
001094  6f420200  loads.w r4, 0(r4)
001098  efc60200  loads.w r13, 0(r5)
00109c  efc50000  loads.w r11, 0(r1)
0010a0  9f402b30  addli r1, r22, 6164
0010a4  6f430100  loads.w r6, 0(r2)
0010a8  1f411b20  addli r2, r22, 4108
0010ac  efc40100  loads.w r9, 0(r3)
0010b0  efc30000  loads.w r7, 0(r1)
0010b4  9f003b30  addli r1, r22, 6168
0010b8  6f4a0100  loads.w r20, 0(r2)
0010bc  1f410b20  addli r2, r22, 4100
0010c0  efc10000  loads.w r3, 0(r1)
0010c4  9f002b20  addli r1, r22, 4112
0010c8  6f470100  loads.w r14, 0(r2)
0010cc  1f013b20  addli r2, r22, 4120
0010d0  ef420100  loads.w r5, 0(r2)
0010d4  6f410900  loads.w r2, 0(r18)
0010d8  efc00000  loads.w r1, 0(r1)
0010dc  1709b601  and r18, r12, r27
0010e0  97098601  and r19, r12, r24
0010e4  1309b901  seteq r18, r18, r27
0010e8  93890902  setneq r19, r19, zero
0010ec  17093901  and r18, r18, r19
0010f0  3b400900  bneq r18, zero, 16
0010f4  1f060b20  addli r12, r22, 4096
0010f8  6f460600  loads.w r12, 0(r12)
0010fc  5b010000  j 8
001100  1716a600  or r12, r12, r10
001104  1789b801  and r18, r17, r27
001108  97898801  and r19, r17, r24
00110c  1309b901  seteq r18, r18, r27
001110  93890902  setneq r19, r19, zero
001114  17093901  and r18, r18, r19
001118  37200900  beq r18, zero, 8
00111c  1797a800  or r14, r17, r10
001120  9788b501  and r17, r11, r27
001124  17898501  and r18, r11, r24
001128  9388b801  seteq r17, r17, r27
00112c  13090902  setneq r18, r18, zero
001130  97882801  and r17, r17, r18
001134  37a00800  beq r17, zero, 8
001138  1792a500  or r4, r11, r10
00113c  9785b401  and r11, r9, r27
001140  97888401  and r17, r9, r24
001144  9385b501  seteq r11, r11, r27
001148  93880802  setneq r17, r17, zero
00114c  97851501  and r11, r11, r17
001150  37a00500  beq r11, zero, 8
001154  179aa400  or r20, r9, r10
001158  9704b401  and r9, r8, r27
00115c  97058401  and r11, r8, r24
001160  9384b401  seteq r9, r9, r27
001164  93850502  setneq r11, r11, zero
001168  9784b400  and r9, r9, r11
00116c  37a00400  beq r9, zero, 8
001170  9710a400  or r1, r8, r10
001174  1784b301  and r8, r7, r27
001178  97848301  and r9, r7, r24
00117c  1304b401  seteq r8, r8, r27
001180  93840402  setneq r9, r9, zero
001184  17049400  and r8, r8, r9
001188  37200400  beq r8, zero, 8
00118c  1791a300  or r2, r7, r10
001190  9783b101  and r7, r3, r27
001194  17848101  and r8, r3, r24
001198  9383b301  seteq r7, r7, r27
00119c  13040402  setneq r8, r8, zero
0011a0  97838300  and r7, r7, r8
0011a4  37a00300  beq r7, zero, 8
0011a8  9792a100  or r5, r3, r10
0011ac  9701b301  and r3, r6, r27
0011b0  97038301  and r7, r6, r24
0011b4  9381b101  seteq r3, r3, r27
0011b8  93830302  setneq r7, r7, zero
0011bc  97817100  and r3, r3, r7
0011c0  b7c801fe  beq r3, zero, -464
0011c4  9716a300  or r13, r6, r10
0011c8  5bc5ffff  j -472
0011cc  1f013000  addli r2, zero, 24
0011d0  9f703000  addli r1, zero, 31
0011d4  00200100  mfence { sm }
0011d8  b3070028  zext_int2long r[16:17], zero
0011dc  7d000100  xsignal r2, 0
0011e0  7d800000  xsignal r1, 0
0011e4  9f004000  addli r1, zero, 32
0011e8  7d800000  xsignal r1, 0
0011ec  9f601000  addli r1, zero, 14
0011f0  7d900000  xwait r1, 0
0011f4  9f104000  addli r1, zero, 33
0011f8  7d100100  xwait r2, 0
0011fc  7d900000  xwait r1, 0
001200  9f304000  addli r1, zero, 35
001204  7d900000  xwait r1, 0
001208  3d000000  xfence
00120c  00a00300  mfence { lm, sm, gm }
001210  634cbfff  loadli.w r24,  -36(r30)
001214  db060000  j 52
001218  6b518fff  load.d r[3:4], -8(r30)
00121c  a7c70700  addli.d r[16:17], r[16:17], 4
001220  9f401b20  addli r1, r22, 4108
001224  9f420b20  addli r5, r22, 4100
001228  73e08000  stores.w r8, 0(r1)
00122c  9f001b20  addli r1, r22, 4104
001230  73e0c200  stores.w r12, 0(r5)
001234  13a12702  setneq.d r2, r[16:17], r[3:4]
001238  9f010b20  addli r3, r22, 4096
00123c  73e09000  stores.w r9, 0(r1)
001240  73e0d100  stores.w r13, 0(r3)
001244  b72101f8  beq r2, zero, -3992
001248  1bbb2700  slli r22, r15, 2
00124c  2b550000  lui r10, 5
001250  1f410b50  addli r2, r22, 10244
001254  9f000b50  addli r1, r22, 10240
001258  0b148b11  add.s r8, r22, r24
00125c  8b157b10  add.s r11, r22, r7
001260  9b16c500  ori r13, r10, 12
001264  9b184500  ori r17, r10, 4
001268  9f021b50  addli r5, r22, 10248
00126c  ef410100  loads.w r3, 0(r2)
001270  1f411b50  addli r2, r22, 10252
001274  efc00000  loads.w r1, 0(r1)
001278  6fc60500  loads.w r12, 0(r11)
00127c  8b181b11  add.s r17, r22, r17
001280  efc20200  loads.w r5, 0(r5)
001284  ef440100  loads.w r9, 0(r2)
001288  6f410400  loads.w r2, 0(r8)
00128c  0b144b10  add.s r8, r22, r4
001290  efc80800  loads.w r17, 0(r17)
001294  6f470400  loads.w r14, 0(r8)
001298  0b146b10  add.s r8, r22, r6
00129c  ef450400  loads.w r11, 0(r8)
0012a0  0b14db10  add.s r8, r22, r13
0012a4  9b168500  ori r13, r10, 8
0012a8  8b16db10  add.s r13, r22, r13
0012ac  6f440400  loads.w r8, 0(r8)
0012b0  efc60600  loads.w r13, 0(r13)
0012b4  9780c001  and r1, r1, r28
0012b8  1701c101  and r2, r2, r28
0012bc  1389b001  seteq r18, r1, r27
0012c0  93090100  seteq r19, r2, zero
0012c4  130ab101  seteq r20, r2, r27
0012c8  0b812048  max.u r2, r1, r2
0012cc  93800000  seteq r1, r1, zero
0012d0  13812d04  setlt.u r2, r27, r2
0012d4  17093901  and r18, r18, r19
0012d8  97804001  and r1, r1, r20
0012dc  97101900  or r1, r18, r1
0012e0  17191100  or r18, r2, r1
0012e4  ab00c07f  lui r1, 523264
0012e8  2b01c07f  lui r2, 523264
0012ec  3b400900  bneq r18, zero, 16
0012f0  2b510000  lui r2, 5
0012f4  0b112b10  add.s r2, r22, r2
0012f8  6f410100  loads.w r2, 0(r2)
0012fc  9781c101  and r3, r3, r28
001300  1707c701  and r14, r14, r28
001304  1389b101  seteq r18, r3, r27
001308  938a0100  seteq r21, r3, zero
00130c  93090700  seteq r19, r14, zero
001310  130ab701  seteq r20, r14, r27
001314  8b81e148  max.u r3, r3, r14
001318  93813d04  setlt.u r3, r27, r3
00131c  17073901  and r14, r18, r19
001320  17894a01  and r18, r21, r20
001324  17172701  or r14, r14, r18
001328  1797e100  or r14, r3, r14
00132c  ab01c07f  lui r3, 523264
001330  3b200700  bneq r14, zero, 8
001334  9f810800  addli r3, r17, 0
001338  9782c201  and r5, r5, r28
00133c  1706c601  and r12, r12, r28
001340  2b054000  lui r10, 1024
001344  1387b201  seteq r14, r5, r27
001348  93890200  seteq r19, r5, zero
00134c  93080600  seteq r17, r12, zero
001350  1309b601  seteq r18, r12, r27
001354  8b82c248  max.u r5, r5, r12
001358  93825d04  setlt.u r5, r27, r5
00135c  17061701  and r12, r14, r17
001360  17872901  and r14, r19, r18
001364  1716e600  or r12, r12, r14
001368  1796c200  or r12, r5, r12
00136c  ab02c07f  lui r5, 523264
001370  3b200600  bneq r12, zero, 8
001374  9f820600  addli r5, r13, 0
001378  9784c401  and r9, r9, r28
00137c  9785c501  and r11, r11, r28
001380  1386b401  seteq r12, r9, r27
001384  93880400  seteq r17, r9, zero
001388  93860500  seteq r13, r11, zero
00138c  1387b501  seteq r14, r11, r27
001390  8b84b448  max.u r9, r9, r11
001394  93849d04  setlt.u r9, r27, r9
001398  9705d600  and r11, r12, r13
00139c  1786e800  and r12, r17, r14
0013a0  9795c500  or r11, r11, r12
0013a4  9794b400  or r9, r9, r11
0013a8  3ba00400  bneq r9, zero, 8
0013ac  9f000400  addli r1, r8, 0
0013b0  9785c001  and r11, r1, r28
0013b4  1384bd04  setlt.u r8, r27, r11
0013b8  3b300400  bneq r8, zero, 12
0013bc  1f840000  addli r8, r1, 0
0013c0  5b010000  j 8
0013c4  1794a000  or r8, r1, r10
0013c8  1787c201  and r14, r5, r28
0013cc  9384ed04  setlt.u r9, r27, r14
0013d0  3bb00400  bneq r9, zero, 12
0013d4  9f840200  addli r9, r5, 0
0013d8  5b010000  j 8
0013dc  9794a200  or r9, r5, r10
0013e0  9788c101  and r17, r3, r28
0013e4  13861d05  setlt.u r12, r27, r17
0013e8  3b300600  bneq r12, zero, 12
0013ec  1f860100  addli r12, r3, 0
0013f0  5b010000  j 8
0013f4  1796a100  or r12, r3, r10
0013f8  1709c101  and r18, r2, r28
0013fc  93862d05  setlt.u r13, r27, r18
001400  3bd00600  bneq r13, zero, 20
001404  9f060100  addli r13, r2, 0
001408  13892b05  setlt.u r18, r23, r18
00140c  37500900  beq r18, zero, 20
001410  5b050000  j 40
001414  9716a100  or r13, r2, r10
001418  13892b05  setlt.u r18, r23, r18
00141c  3b700900  bneq r18, zero, 28
001420  9b460101  srli r13, r2, 16
001424  2b05ffff  lui r10, 1048560
001428  9b861600  andi r13, r13, 1
00142c  0b11d110  add.s r2, r2, r13
001430  0b119111  add.s r2, r2, r25
001434  9706a100  and r13, r2, r10
001438  13811b05  setlt.u r2, r23, r17
00143c  37600100  beq r2, zero, 24
001440  1381eb04  setlt.u r2, r23, r14
001444  b7400100  beq r2, zero, 48
001448  1381bb04  setlt.u r2, r23, r11
00144c  3b3701fe  bneq r2, zero, -564
001450  db080000  j 68
001454  1bc10101  srli r2, r3, 16
001458  1b011100  andi r2, r2, 1
00145c  0b912110  add.s r2, r3, r2
001460  ab01ffff  lui r3, 1048560
001464  0b119111  add.s r2, r2, r25
001468  17063100  and r12, r2, r3
00146c  1381eb04  setlt.u r2, r23, r14
001470  3b6f01fe  bneq r2, zero, -40
001474  1bc10201  srli r2, r5, 16
001478  ab01ffff  lui r3, 1048560
00147c  1b011100  andi r2, r2, 1
001480  0b912210  add.s r2, r5, r2
001484  0b119111  add.s r2, r2, r25
001488  97043100  and r9, r2, r3
00148c  1381bb04  setlt.u r2, r23, r11
001490  3b2601fe  bneq r2, zero, -632
001494  1bc10001  srli r2, r1, 16
001498  1b011100  andi r2, r2, 1
00149c  8b902010  add.s r1, r1, r2
0014a0  2b01ffff  lui r2, 1048560
0014a4  8b909011  add.s r1, r1, r25
0014a8  17842000  and r8, r1, r2
0014ac  dbadffff  j -660
0014b0  9f500000  addli r1, zero, 5
0014b4  7d900700  xwait r15, 0
0014b8  2b01803f  lui r2, 260096
0014bc  9f713000  addli r3, zero, 31
0014c0  1f022000  addli r4, zero, 16
0014c4  ab02003f  lui r5, 258048
0014c8  1f030040  addli r6, zero, 8192
0014cc  9f040060  addli r9, zero, 12288
0014d0  9f030020  addli r7, zero, 4096
0014d4  ab480000  lui r17, 4
0014d8  7d900000  xwait r1, 0
0014dc  1d800700  lock zero, r15
0014e0  9f000010  addli r1, zero, 2048
0014e4  0d000002  ew_cfg zero, zero, zero, 1
0014e8  0d110100  ewcoeff_cfg r2, r2, zero, 0
0014ec  0d800104  ew_cfg zero, r3, zero, 2
0014f0  0d020006  ew_cfg r4, zero, zero, 3
0014f4  0d024226  ew_cfg r4, r4, r4, 19
0014f8  2d001000  dsmadd zero, zero, r1, 0
0014fc  9f600000  addli r1, zero, 6
001500  0d000026  ew_cfg zero, zero, zero, 19
001504  1d900700  unlock r15
001508  7d800600  xsignal r13, 0
00150c  7d800000  xsignal r1, 0
001510  9f700000  addli r1, zero, 7
001514  7d900000  xwait r1, 0
001518  9f701000  addli r1, zero, 15
00151c  7d900000  xwait r1, 0
001520  1d800700  lock zero, r15
001524  9f000050  addli r1, zero, 10240
001528  0d000002  ew_cfg zero, zero, zero, 1
00152c  8d120000  ewcoeff_cfg r5, zero, zero, 0
001530  0d800104  ew_cfg zero, r3, zero, 2
001534  0d020006  ew_cfg r4, zero, zero, 3
001538  0d020226  ew_cfg r4, r4, zero, 19
00153c  cd506300  hp_ssmul r1, r6, r6, 0
001540  9f601000  addli r1, zero, 14
001544  0d000026  ew_cfg zero, zero, zero, 19
001548  1d900700  unlock r15
00154c  7d800000  xsignal r1, 0
001550  9f101000  addli r1, zero, 9
001554  7d900000  xwait r1, 0
001558  7d900b00  xwait r23, 0
00155c  1d800700  lock zero, r15
001560  9f201000  addli r1, zero, 10
001564  0d000002  ew_cfg zero, zero, zero, 1
001568  0d102000  ewcoeff_cfg zero, zero, r2, 0
00156c  0d800104  ew_cfg zero, r3, zero, 2
001570  0d020006  ew_cfg r4, zero, zero, 3
001574  0d024226  ew_cfg r4, r4, r4, 19
001578  ad146300  dsmul r9, r6, r6, 0
00157c  0d000026  ew_cfg zero, zero, zero, 19
001580  1d900700  unlock r15
001584  7d900000  xwait r1, 0
001588  9f302000  addli r1, zero, 19
00158c  7d900000  xwait r1, 0
001590  1d800700  lock zero, r15
001594  9f000070  addli r1, zero, 14336
001598  0d000002  ew_cfg zero, zero, zero, 1
00159c  0d102000  ewcoeff_cfg zero, zero, r2, 0
0015a0  0d800104  ew_cfg zero, r3, zero, 2
0015a4  0d020006  ew_cfg r4, zero, zero, 3
0015a8  0d024226  ew_cfg r4, r4, r4, 19
0015ac  ad906400  dsmul r1, r9, r6, 0
0015b0  9f001000  addli r1, zero, 8
0015b4  ab440000  lui r9, 4
0015b8  0d000026  ew_cfg zero, zero, zero, 19
0015bc  1d900700  unlock r15
0015c0  7d800000  xsignal r1, 0
0015c4  9f202000  addli r1, zero, 18
0015c8  7d000200  xsignal r4, 0
0015cc  7d800000  xsignal r1, 0
0015d0  9f301000  addli r1, zero, 11
0015d4  7d900000  xwait r1, 0
0015d8  9f402000  addli r1, zero, 20
0015dc  7d900000  xwait r1, 0
0015e0  9f403000  addli r1, zero, 28
0015e4  7d900000  xwait r1, 0
0015e8  1d800700  lock zero, r15
0015ec  0d000002  ew_cfg zero, zero, zero, 1
0015f0  e3406fff  loadli.w r1,  -76(r30)
0015f4  0d910000  ewcoeff_cfg r2, r1, zero, 0
0015f8  9f502000  addli r1, zero, 21
0015fc  0d800104  ew_cfg zero, r3, zero, 2
001600  0d020006  ew_cfg r4, zero, zero, 3
001604  0d024226  ew_cfg r4, r4, r4, 19
001608  ad047300  dsmadd r9, r6, r7, 0
00160c  0d000026  ew_cfg zero, zero, zero, 19
001610  1d900700  unlock r15
001614  7d800000  xsignal r1, 0
001618  1d800700  lock zero, r15
00161c  0d000002  ew_cfg zero, zero, zero, 1
001620  e3006fff  loadli.w r1,  -80(r30)
001624  8d100000  ewcoeff_cfg r1, zero, zero, 0
001628  9f303000  addli r1, zero, 27
00162c  0d800104  ew_cfg zero, r3, zero, 2
001630  0d020006  ew_cfg r4, zero, zero, 3
001634  0d020226  ew_cfg r4, r4, zero, 19
001638  cdd49400  hp_ssmul r9, r9, r9, 0
00163c  9f440000  addli r9, zero, 4
001640  0d000026  ew_cfg zero, zero, zero, 19
001644  1d900700  unlock r15
001648  7d800000  xsignal r1, 0
00164c  9f602000  addli r1, zero, 22
001650  7d900000  xwait r1, 0
001654  1d800700  lock zero, r15
001658  0d000002  ew_cfg zero, zero, zero, 1
00165c  0d800104  ew_cfg zero, r3, zero, 2
001660  0d020006  ew_cfg r4, zero, zero, 3
001664  0d020226  ew_cfg r4, r4, zero, 19
001668  8d060014  ew_cfg r13, zero, zero, 10
00166c  e3405fff  loadli.w r1,  -84(r30)
001670  8d871916  ew_cfg r15, r19, r1, 11
001674  abc07f41  lui r1, 268284
001678  0d00001a  ew_cfg zero, zero, zero, 13
00167c  0d80141c  ew_cfg zero, r9, r1, 14
001680  9f702000  addli r1, zero, 23
001684  0d00001e  ew_cfg zero, zero, zero, 15
001688  cda30300  sslut r7, r7, 0
00168c  0d000014  ew_cfg zero, zero, zero, 10
001690  0d000026  ew_cfg zero, zero, zero, 19
001694  1d900700  unlock r15
001698  7d800000  xsignal r1, 0
00169c  9f004000  addli r1, zero, 32
0016a0  7d900000  xwait r1, 0
0016a4  1d800700  lock zero, r15
0016a8  9f501000  addli r1, zero, 13
0016ac  0d000002  ew_cfg zero, zero, zero, 1
0016b0  0d112000  ewcoeff_cfg r2, zero, r2, 0
0016b4  0d800104  ew_cfg zero, r3, zero, 2
0016b8  0d020006  ew_cfg r4, zero, zero, 3
0016bc  0d020226  ew_cfg r4, r4, zero, 19
0016c0  ad85b500  dsmadd r11, r11, r11, 0
0016c4  0d000026  ew_cfg zero, zero, zero, 19
0016c8  1d900700  unlock r15
0016cc  7d900000  xwait r1, 0
0016d0  9f404000  addli r1, zero, 36
0016d4  7d900000  xwait r1, 0
0016d8  1d800700  lock zero, r15
0016dc  ab500000  lui r1, 5
0016e0  0d000002  ew_cfg zero, zero, zero, 1
0016e4  0d105000  ewcoeff_cfg zero, zero, r5, 0
0016e8  0d800104  ew_cfg zero, r3, zero, 2
0016ec  0d020006  ew_cfg r4, zero, zero, 3
0016f0  0d024226  ew_cfg r4, r4, r4, 19
0016f4  ad10b300  dsmul r1, r6, r11, 0
0016f8  9f401000  addli r1, zero, 12
0016fc  0d000026  ew_cfg zero, zero, zero, 19
001700  1d900700  unlock r15
001704  7d800000  xsignal r1, 0
001708  9f104000  addli r1, zero, 33
00170c  7d800000  xsignal r1, 0
001710  9f304000  addli r1, zero, 35
001714  7d800000  xsignal r1, 0
001718  eb518ffc  load.d r[4:5], -56(r30)
00171c  5b7bfdff  j -5160
001720  eb518ffc  load.d r[4:5], -56(r30)
001724  3b4f04f4  bneq r8, zero, -5168
001728  9f123000  addli r5, zero, 25
00172c  97303303  sll.d r[2:3], r[7:8], r19
001730  9f038020  addli r7, zero, 4160
001734  7d900200  xwait r5, 0
001738  eb520f01  load.d r[6:7], 16(r30)
00173c  8ba01210  add.ul r[2:3], r[6:7], r[2:3]
001740  9f520000  addli r5, zero, 5
001744  1f038000  addli r6, zero, 64
001748  1d800200  lock zero, r5
00174c  95890900  dma_cfg r19, r19, zero, 0
001750  15800902  dma_cfg zero, r19, zero, 1
001754  15010004  dma_cfg r2, zero, zero, 2
001758  95806306  dma_cfg r1, r7, r6, 3
00175c  9f002000  addli r1, zero, 16
001760  1f010001  addli r2, zero, 128
001764  15031108  dma_cfg r6, r2, r1, 4
001768  9f000008  addli r1, zero, 1024
00176c  1f010010  addli r2, zero, 2048
001770  9500310b  dma_cfg r1, r2, r19, 5
001774  9f203000  addli r1, zero, 26
001778  15000010  dma_cfg zero, zero, zero, 8
00177c  35000000  dma_run zero
001780  1500300b  dma_cfg zero, zero, r19, 5
001784  15000010  dma_cfg zero, zero, zero, 8
001788  1d900200  unlock r5
00178c  7d800000  xsignal r1, 0
001790  db6cfdff  j -5276
001794  7d000000  xsignal zero, 0
001798  bb600400  bneq r8, zero, 56
00179c  9f200000  addli r1, zero, 2
0017a0  7d100000  xwait zero, 0
0017a4  7d100000  xwait zero, 0
0017a8  7d100000  xwait zero, 0
0017ac  7d100000  xwait zero, 0
0017b0  7d100000  xwait zero, 0
0017b4  7d100000  xwait zero, 0
0017b8  7d100000  xwait zero, 0
0017bc  7d100000  xwait zero, 0
0017c0  1d800000  lock zero, r1
0017c4  0d000020  ew_cfg zero, zero, zero, 16
0017c8  1d900000  unlock r1
0017cc  7d400000  xsignal_mode_cfg zero
0017d0  9f8ebe00  addli sp, sp, 88
0017d4  00a00300  mfence { lm, sm, gm }
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
0019bc  00100000  exit
0019c0  00100000  exit
0019c4  00100000  exit
0019c8  00100000  exit
0019cc  00100000  exit
0019d0  00100000  exit
0019d4  00100000  exit
0019d8  00100000  exit
0019dc  00100000  exit
0019e0  00100000  exit
0019e4  00100000  exit
0019e8  00100000  exit
0019ec  00100000  exit
0019f0  00100000  exit
0019f4  00100000  exit
0019f8  00100000  exit
0019fc  00100000  exit
001a00  00100000  exit
001a04  00100000  exit
001a08  00100000  exit
001a0c  00100000  exit
001a10  00100000  exit
001a14  00100000  exit
001a18  00100000  exit
