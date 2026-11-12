; SHA-256 ca88fbeb6a28cf0f7578aad540ae07108dce31a02aa5b60edebba95da8808549
; P800 SDNN · XTDK LLVM 19 · 1637 / 1637 words decoded
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
0000b4  9f8ecefe  addli sp, sp, -160
0000b8  9f100000  addli r1, zero, 1
0000bc  80330002  core_id r7
0000c0  1f8fce00  addli r30, sp, 96
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7900300  beq r7, zero, 36
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
000218  cb53110a  ble.s r2, r1, 5364
00021c  33110128  sext_int2long r[3:4], r2
000220  9f020008  addli r5, zero, 1024
000224  1f2d0000  addli r26, zero, 2
000228  1f350000  addli r10, zero, 3
00022c  9f362000  addli r13, zero, 19
000230  9f1d0000  addli r27, zero, 1
000234  2b0c4000  lui r24, 1024
000238  ab0c807f  lui r25, 522240
00023c  73382ffa  store.d r[3:4], -80(r30)
000240  b3910028  sext_int2long r[4:5], r1
000244  ab20373d  lui r1, 250738
000248  2b414c3f  lui r2, 259268
00024c  33880228  zext_int2long r[17:18], r5
000250  9b903071  ori r1, r1, 1811
000254  73340ffd  store.d r[17:18], -56(r30)
000258  e74a1ffe  storeli.w r1, -84(r30)
00025c  9b10a122  ori r1, r2, 554
000260  2b710000  lui r2, 7
000264  e70a1ffe  storeli.w r1, -88(r30)
000268  ab800300  lui r1, 56
00026c  9b903084  ori r1, r1, 2115
000270  674a1ffe  storeli.w r1, -92(r30)
000274  9b10f1ff  ori r1, r2, 4095
000278  2bf17f00  lui r2, 2047
00027c  674e1ffe  storeli.w r1, -28(r30)
000280  abf07f7f  lui r1, 522239
000284  9b90f0ff  ori r1, r1, 4095
000288  674f1ffe  storeli.w r1, -12(r30)
00028c  9b10f1ff  ori r1, r2, 4095
000290  674d1ffe  storeli.w r1, -44(r30)
000294  b3000028  zext_int2long r[2:3], zero
000298  733c1ffa  store.d r[2:3], -72(r30)
00029c  abf0ff7f  lui r1, 524287
0002a0  9b9bf0ff  ori r23, r1, 4095
0002a4  5b0a0000  j 80
0002a8  9f701000  addli r1, zero, 15
0002ac  00200100  mfence { sm }
0002b0  80330002  core_id r7
0002b4  9f362000  addli r13, zero, 19
0002b8  9f1d0000  addli r27, zero, 1
0002bc  1f350000  addli r10, zero, 3
0002c0  7d800000  xsignal r1, 0
0002c4  9f103000  addli r1, zero, 25
0002c8  7d800000  xsignal r1, 0
0002cc  9f204000  addli r1, zero, 34
0002d0  7d800000  xsignal r1, 0
0002d4  9f404000  addli r1, zero, 36
0002d8  7d800000  xsignal r1, 0
0002dc  eb510ffc  load.d r[4:5], -64(r30)
0002e0  6b588ffc  load.d r[17:18], -56(r30)
0002e4  eb500ffb  load.d r[2:3], -80(r30)
0002e8  a7910100  addli.d r[4:5], r[4:5], 1
0002ec  93b01104  setlt.sl r1, r[4:5], r[2:3]
0002f0  37f0000a  beq r1, zero, 5148
0002f4  e3006f00  loadli.w r1,  48(r30)
0002f8  63415f00  loadli.w r2,  44(r30)
0002fc  9f021000  addli r5, zero, 8
000300  73303ffc  store.d r[4:5], -64(r30)
000304  8b901130  div.s r1, r3, r1
000308  8b902030  div.s r1, r1, r2
00030c  b3900028  sext_int2long r[2:3], r1
000310  97b25002  sll.d r[6:7], r[2:3], r5
000314  9f600000  addli r1, zero, 6
000318  73345ffe  store.d r[6:7], -24(r30)
00031c  b7e91300  beq r7, r1, 632
000320  3b9ab301  bneq r7, r27, 644
000324  1f4c0000  addli r24, zero, 4
000328  9f530000  addli r7, zero, 5
00032c  eb510f00  load.d r[4:5], 0(r30)
000330  97b0b203  sll.d r[2:3], r[6:7], r27
000334  9f750000  addli r11, zero, 7
000338  1f171000  addli r14, zero, 9
00033c  1f391000  addli r18, zero, 11
000340  1f5e1000  addli r28, zero, 13
000344  9f661000  addli r13, zero, 14
000348  1f761000  addli r12, zero, 15
00034c  9f142000  addli r9, zero, 17
000350  9f272000  addli r15, zero, 18
000354  9f422000  addli r5, zero, 20
000358  1f5a2000  addli r20, zero, 21
00035c  1f6b2000  addli r22, zero, 22
000360  9f3a3000  addli r21, zero, 27
000364  9f493000  addli r19, zero, 28
000368  1f030001  addli r6, zero, 128
00036c  1f040000  addli r8, zero, 0
000370  7d100c00  xwait r24, 0
000374  1d800300  lock zero, r7
000378  15000014  dma_cfg zero, zero, zero, 10
00037c  8ba01110  add.ul r[2:3], r[4:5], r[2:3]
000380  9f610000  addli r3, zero, 6
000384  1f021000  addli r4, zero, 8
000388  1500b015  dma_cfg zero, zero, r27, 10
00038c  1500a015  dma_cfg zero, zero, r26, 10
000390  1f7d2000  addli r26, zero, 23
000394  1500a014  dma_cfg zero, zero, r10, 10
000398  1f052000  addli r10, zero, 16
00039c  15008015  dma_cfg zero, zero, r24, 10
0003a0  15007014  dma_cfg zero, zero, r7, 10
0003a4  15003014  dma_cfg zero, zero, r3, 10
0003a8  9f211000  addli r3, zero, 10
0003ac  1500b014  dma_cfg zero, zero, r11, 10
0003b0  15004014  dma_cfg zero, zero, r4, 10
0003b4  1500e014  dma_cfg zero, zero, r14, 10
0003b8  15003014  dma_cfg zero, zero, r3, 10
0003bc  9f411000  addli r3, zero, 12
0003c0  15002015  dma_cfg zero, zero, r18, 10
0003c4  15003014  dma_cfg zero, zero, r3, 10
0003c8  9f312000  addli r3, zero, 19
0003cc  1500c015  dma_cfg zero, zero, r28, 10
0003d0  1500d014  dma_cfg zero, zero, r13, 10
0003d4  1500c014  dma_cfg zero, zero, r12, 10
0003d8  1500a014  dma_cfg zero, zero, r10, 10
0003dc  15009014  dma_cfg zero, zero, r9, 10
0003e0  1500f014  dma_cfg zero, zero, r15, 10
0003e4  15003014  dma_cfg zero, zero, r3, 10
0003e8  9f013000  addli r3, zero, 24
0003ec  15005014  dma_cfg zero, zero, r5, 10
0003f0  9f020008  addli r5, zero, 1024
0003f4  15004015  dma_cfg zero, zero, r20, 10
0003f8  15006015  dma_cfg zero, zero, r22, 10
0003fc  1500a015  dma_cfg zero, zero, r26, 10
000400  15003014  dma_cfg zero, zero, r3, 10
000404  9f113000  addli r3, zero, 25
000408  15003014  dma_cfg zero, zero, r3, 10
00040c  9f213000  addli r3, zero, 26
000410  15003014  dma_cfg zero, zero, r3, 10
000414  9f513000  addli r3, zero, 29
000418  15005015  dma_cfg zero, zero, r21, 10
00041c  15003015  dma_cfg zero, zero, r19, 10
000420  15003014  dma_cfg zero, zero, r3, 10
000424  9f613000  addli r3, zero, 30
000428  15003014  dma_cfg zero, zero, r3, 10
00042c  9f713000  addli r3, zero, 31
000430  15003014  dma_cfg zero, zero, r3, 10
000434  9f018000  addli r3, zero, 64
000438  958d0d00  dma_cfg r27, r27, zero, 0
00043c  950d0002  dma_cfg r27, zero, zero, 1
000440  15000004  dma_cfg zero, zero, zero, 2
000444  15003006  dma_cfg zero, zero, r3, 3
000448  15034008  dma_cfg r6, zero, r4, 4
00044c  9502b00b  dma_cfg r5, zero, r27, 5
000450  15000010  dma_cfg zero, zero, zero, 8
000454  35000000  dma_run zero
000458  1500b00b  dma_cfg zero, zero, r27, 5
00045c  15000010  dma_cfg zero, zero, zero, 8
000460  1d900300  unlock r7
000464  1d000c00  lock zero, r24
000468  958d0d00  dma_cfg r27, r27, zero, 0
00046c  15000104  dma_cfg zero, r2, zero, 2
000470  95813006  dma_cfg r3, r1, r3, 3
000474  9f000004  addli r1, zero, 512
000478  1f411000  addli r2, zero, 12
00047c  15834108  dma_cfg r6, r3, r4, 4
000480  9582b00b  dma_cfg r5, r1, r27, 5
000484  9f200000  addli r1, zero, 2
000488  15000010  dma_cfg zero, zero, zero, 8
00048c  35000000  dma_run zero
000490  1500b00b  dma_cfg zero, zero, r27, 5
000494  15000010  dma_cfg zero, zero, zero, 8
000498  1d100c00  unlock r24
00049c  1d800300  lock zero, r7
0004a0  15000014  dma_cfg zero, zero, zero, 10
0004a4  1500b015  dma_cfg zero, zero, r27, 10
0004a8  15001014  dma_cfg zero, zero, r1, 10
0004ac  9f300000  addli r1, zero, 3
0004b0  15001014  dma_cfg zero, zero, r1, 10
0004b4  9f600000  addli r1, zero, 6
0004b8  15008015  dma_cfg zero, zero, r24, 10
0004bc  2b0c4000  lui r24, 1024
0004c0  15007014  dma_cfg zero, zero, r7, 10
0004c4  15001014  dma_cfg zero, zero, r1, 10
0004c8  9f201000  addli r1, zero, 10
0004cc  1500b014  dma_cfg zero, zero, r11, 10
0004d0  15004014  dma_cfg zero, zero, r4, 10
0004d4  1500e014  dma_cfg zero, zero, r14, 10
0004d8  15001014  dma_cfg zero, zero, r1, 10
0004dc  9f402000  addli r1, zero, 20
0004e0  15002015  dma_cfg zero, zero, r18, 10
0004e4  15002014  dma_cfg zero, zero, r2, 10
0004e8  1f312000  addli r2, zero, 19
0004ec  1500c015  dma_cfg zero, zero, r28, 10
0004f0  1500d014  dma_cfg zero, zero, r13, 10
0004f4  9f362000  addli r13, zero, 19
0004f8  1500c014  dma_cfg zero, zero, r12, 10
0004fc  1500a014  dma_cfg zero, zero, r10, 10
000500  1f050400  addli r10, r8, 0
000504  15009014  dma_cfg zero, zero, r9, 10
000508  1500f014  dma_cfg zero, zero, r15, 10
00050c  15002014  dma_cfg zero, zero, r2, 10
000510  15001014  dma_cfg zero, zero, r1, 10
000514  9f003000  addli r1, zero, 24
000518  15004015  dma_cfg zero, zero, r20, 10
00051c  15006015  dma_cfg zero, zero, r22, 10
000520  1500a015  dma_cfg zero, zero, r26, 10
000524  1f2d0000  addli r26, zero, 2
000528  15001014  dma_cfg zero, zero, r1, 10
00052c  9f103000  addli r1, zero, 25
000530  15001014  dma_cfg zero, zero, r1, 10
000534  9f203000  addli r1, zero, 26
000538  15001014  dma_cfg zero, zero, r1, 10
00053c  9f503000  addli r1, zero, 29
000540  15005015  dma_cfg zero, zero, r21, 10
000544  15003015  dma_cfg zero, zero, r19, 10
000548  15001014  dma_cfg zero, zero, r1, 10
00054c  9f603000  addli r1, zero, 30
000550  15001014  dma_cfg zero, zero, r1, 10
000554  9f703000  addli r1, zero, 31
000558  15001014  dma_cfg zero, zero, r1, 10
00055c  958d0d00  dma_cfg r27, r27, zero, 0
000560  950d0002  dma_cfg r27, zero, zero, 1
000564  15000004  dma_cfg zero, zero, zero, 2
000568  15003006  dma_cfg zero, zero, r3, 3
00056c  15034008  dma_cfg r6, zero, r4, 4
000570  9502b00b  dma_cfg r5, zero, r27, 5
000574  eb528ffe  load.d r[6:7], -24(r30)
000578  15000010  dma_cfg zero, zero, zero, 8
00057c  35000000  dma_run zero
000580  1500b00b  dma_cfg zero, zero, r27, 5
000584  15000010  dma_cfg zero, zero, zero, 8
000588  1d900300  unlock r7
00058c  7d000d00  xsignal r26, 0
000590  5b030000  j 24
000594  1f150000  addli r10, zero, 1
000598  9f600000  addli r1, zero, 6
00059c  7d900000  xwait r1, 0
0005a0  5b010000  j 8
0005a4  1f050000  addli r10, zero, 0
0005a8  8f900271  mod.sl r[2:3], r[6:7], r[17:18]
0005ac  9f211000  addli r3, zero, 10
0005b0  a7f0f009  addli.d r[2:3], r[2:3], 1279
0005b4  17ca3002  srl.d r[21:22], r[2:3], r3
0005b8  eb508ffb  load.d r[2:3], -72(r30)
0005bc  93201a00  seteq.d r1, r[21:22], r[2:3]
0005c0  1f010002  addli r2, zero, 256
0005c4  33090128  zext_int2long r[19:20], r2
0005c8  733c2fff  store.d r[19:20], -8(r30)
0005cc  3bac0000  bneq r1, zero, 776
0005d0  eb518ffb  load.d r[4:5], -72(r30)
0005d4  33870d28  zext_int2long r[15:16], r27
0005d8  733c4ffd  store.d r[21:22], -40(r30)
0005dc  db020000  j 20
0005e0  93204705  setlt.ul r1, r[15:16], r[21:22]
0005e4  8ba13510  add.ul r[4:5], r[12:13], r[4:5]
0005e8  33070d28  zext_int2long r[15:16], r26
0005ec  b7ab0000  beq r1, zero, 744
0005f0  8ba05110  add.ul r[2:3], r[4:5], r[6:7]
0005f4  8b353918  sub.sl r[12:13], r[19:20], r[4:5]
0005f8  8f900071  mod.sl r[2:3], r[2:3], r[17:18]
0005fc  8b331818  sub.sl r[8:9], r[17:18], r[2:3]
000600  8ba57540  min.ul r[12:13], r[12:13], r[8:9]
000604  377f05fe  beq r10, zero, -36
000608  9f5a0000  addli r21, zero, 5
00060c  97b8b003  sll.d r[18:19], r[2:3], r27
000610  9bb32100  slli r7, r3, 2
000614  1f310000  addli r2, zero, 3
000618  1f430000  addli r6, zero, 4
00061c  9f690000  addli r19, zero, 6
000620  1f581000  addli r16, zero, 13
000624  1f7e1000  addli r28, zero, 15
000628  1f3a2000  addli r20, zero, 19
00062c  1f4b2000  addli r22, zero, 20
000630  1f7c3000  addli r24, zero, 31
000634  9f040001  addli r9, zero, 128
000638  9f028000  addli r5, zero, 64
00063c  1d800a00  lock zero, r21
000640  9f800308  addli r1, r7, 1024
000644  eb538f00  load.d r[8:9], 8(r30)
000648  15000014  dma_cfg zero, zero, zero, 10
00064c  1500b015  dma_cfg zero, zero, r27, 10
000650  9f7d0000  addli r27, zero, 7
000654  8b969038  mod.s r13, r1, r9
000658  1500a015  dma_cfg zero, zero, r26, 10
00065c  8ba31311  add.ul r[8:9], r[8:9], r[18:19]
000660  1f091000  addli r18, zero, 8
000664  1f1d0000  addli r26, zero, 1
000668  9bb81500  slli r17, r11, 1
00066c  15002014  dma_cfg zero, zero, r2, 10
000670  1f111000  addli r2, zero, 9
000674  15006014  dma_cfg zero, zero, r6, 10
000678  15005015  dma_cfg zero, zero, r21, 10
00067c  15003015  dma_cfg zero, zero, r19, 10
000680  1500b015  dma_cfg zero, zero, r27, 10
000684  15002015  dma_cfg zero, zero, r18, 10
000688  15002014  dma_cfg zero, zero, r2, 10
00068c  1f211000  addli r2, zero, 10
000690  15002014  dma_cfg zero, zero, r2, 10
000694  1f311000  addli r2, zero, 11
000698  15002014  dma_cfg zero, zero, r2, 10
00069c  1f411000  addli r2, zero, 12
0006a0  15002014  dma_cfg zero, zero, r2, 10
0006a4  1f611000  addli r2, zero, 14
0006a8  15000015  dma_cfg zero, zero, r16, 10
0006ac  15002014  dma_cfg zero, zero, r2, 10
0006b0  1f012000  addli r2, zero, 16
0006b4  1500c015  dma_cfg zero, zero, r28, 10
0006b8  15002014  dma_cfg zero, zero, r2, 10
0006bc  1f112000  addli r2, zero, 17
0006c0  15002014  dma_cfg zero, zero, r2, 10
0006c4  1f212000  addli r2, zero, 18
0006c8  15002014  dma_cfg zero, zero, r2, 10
0006cc  1f512000  addli r2, zero, 21
0006d0  15004015  dma_cfg zero, zero, r20, 10
0006d4  15006015  dma_cfg zero, zero, r22, 10
0006d8  15002014  dma_cfg zero, zero, r2, 10
0006dc  1f612000  addli r2, zero, 22
0006e0  15002014  dma_cfg zero, zero, r2, 10
0006e4  1f712000  addli r2, zero, 23
0006e8  15002014  dma_cfg zero, zero, r2, 10
0006ec  1f013000  addli r2, zero, 24
0006f0  15002014  dma_cfg zero, zero, r2, 10
0006f4  1f113000  addli r2, zero, 25
0006f8  15002014  dma_cfg zero, zero, r2, 10
0006fc  1f213000  addli r2, zero, 26
000700  15002014  dma_cfg zero, zero, r2, 10
000704  1f313000  addli r2, zero, 27
000708  15002014  dma_cfg zero, zero, r2, 10
00070c  1f413000  addli r2, zero, 28
000710  15002014  dma_cfg zero, zero, r2, 10
000714  1f513000  addli r2, zero, 29
000718  15002014  dma_cfg zero, zero, r2, 10
00071c  1f613000  addli r2, zero, 30
000720  15002014  dma_cfg zero, zero, r2, 10
000724  1f010008  addli r2, zero, 1024
000728  15008015  dma_cfg zero, zero, r24, 10
00072c  150d0d00  dma_cfg r26, r26, zero, 0
000730  150d0002  dma_cfg r26, zero, zero, 1
000734  15000004  dma_cfg zero, zero, zero, 2
000738  15015006  dma_cfg r2, zero, r5, 3
00073c  95042009  dma_cfg r9, zero, r18, 4
000740  1501a00b  dma_cfg r2, zero, r26, 5
000744  1bc11600  srli r2, r13, 1
000748  15000010  dma_cfg zero, zero, zero, 8
00074c  35000000  dma_run zero
000750  1500a00b  dma_cfg zero, zero, r26, 5
000754  15000010  dma_cfg zero, zero, zero, 8
000758  0b912018  sub.s r2, r1, r2
00075c  8b90d018  sub.s r1, r1, r13
000760  9f360000  addli r13, zero, 3
000764  1d900a00  unlock r21
000768  1d000300  lock zero, r6
00076c  1f018100  addli r2, r2, 64
000770  150d0d00  dma_cfg r26, r26, zero, 0
000774  15000404  dma_cfg zero, r8, zero, 2
000778  15815306  dma_cfg r2, r7, r5, 3
00077c  2bf4ff7f  lui r8, 524287
000780  1bb12500  slli r2, r11, 2
000784  9ff33500  addli r7, r11, 31
000788  1b1404f8  ori r8, r8, 3968
00078c  9bc35300  srli r7, r7, 5
000790  17048100  and r8, r2, r8
000794  1b81e803  andi r2, r17, 62
000798  95847208  dma_cfg r9, r5, r7, 4
00079c  17142400  or r8, r8, r2
0007a0  1584a80b  dma_cfg r8, r17, r26, 5
0007a4  15002010  dma_cfg zero, zero, r2, 8
0007a8  35000000  dma_run zero
0007ac  1500a00b  dma_cfg zero, zero, r26, 5
0007b0  15000010  dma_cfg zero, zero, zero, 8
0007b4  1d100300  unlock r6
0007b8  1d800a00  lock zero, r21
0007bc  15000014  dma_cfg zero, zero, zero, 10
0007c0  1500a015  dma_cfg zero, zero, r26, 10
0007c4  1f2d0000  addli r26, zero, 2
0007c8  1500a015  dma_cfg zero, zero, r26, 10
0007cc  1500d014  dma_cfg zero, zero, r13, 10
0007d0  9f362000  addli r13, zero, 19
0007d4  15006014  dma_cfg zero, zero, r6, 10
0007d8  1f131000  addli r6, zero, 9
0007dc  15005015  dma_cfg zero, zero, r21, 10
0007e0  15003015  dma_cfg zero, zero, r19, 10
0007e4  1500b015  dma_cfg zero, zero, r27, 10
0007e8  9f1d0000  addli r27, zero, 1
0007ec  15002015  dma_cfg zero, zero, r18, 10
0007f0  15006014  dma_cfg zero, zero, r6, 10
0007f4  1f231000  addli r6, zero, 10
0007f8  15006014  dma_cfg zero, zero, r6, 10
0007fc  1f331000  addli r6, zero, 11
000800  6b598fff  load.d r[19:20], -8(r30)
000804  15006014  dma_cfg zero, zero, r6, 10
000808  1f431000  addli r6, zero, 12
00080c  15006014  dma_cfg zero, zero, r6, 10
000810  1f631000  addli r6, zero, 14
000814  15000015  dma_cfg zero, zero, r16, 10
000818  15006014  dma_cfg zero, zero, r6, 10
00081c  1f032000  addli r6, zero, 16
000820  1500c015  dma_cfg zero, zero, r28, 10
000824  15006014  dma_cfg zero, zero, r6, 10
000828  1f132000  addli r6, zero, 17
00082c  15006014  dma_cfg zero, zero, r6, 10
000830  1f232000  addli r6, zero, 18
000834  15006014  dma_cfg zero, zero, r6, 10
000838  1f532000  addli r6, zero, 21
00083c  6b588ffc  load.d r[17:18], -56(r30)
000840  15004015  dma_cfg zero, zero, r20, 10
000844  15006015  dma_cfg zero, zero, r22, 10
000848  15006014  dma_cfg zero, zero, r6, 10
00084c  1f632000  addli r6, zero, 22
000850  15006014  dma_cfg zero, zero, r6, 10
000854  1f732000  addli r6, zero, 23
000858  15006014  dma_cfg zero, zero, r6, 10
00085c  1f033000  addli r6, zero, 24
000860  15006014  dma_cfg zero, zero, r6, 10
000864  1f133000  addli r6, zero, 25
000868  15006014  dma_cfg zero, zero, r6, 10
00086c  1f233000  addli r6, zero, 26
000870  15006014  dma_cfg zero, zero, r6, 10
000874  1f333000  addli r6, zero, 27
000878  15006014  dma_cfg zero, zero, r6, 10
00087c  1f433000  addli r6, zero, 28
000880  15006014  dma_cfg zero, zero, r6, 10
000884  1f533000  addli r6, zero, 29
000888  15006014  dma_cfg zero, zero, r6, 10
00088c  1f633000  addli r6, zero, 30
000890  15006014  dma_cfg zero, zero, r6, 10
000894  15008015  dma_cfg zero, zero, r24, 10
000898  2b0c4000  lui r24, 1024
00089c  958d0d00  dma_cfg r27, r27, zero, 0
0008a0  950d0002  dma_cfg r27, zero, zero, 1
0008a4  15000004  dma_cfg zero, zero, zero, 2
0008a8  95005006  dma_cfg r1, zero, r5, 3
0008ac  eb528ffe  load.d r[6:7], -24(r30)
0008b0  95047008  dma_cfg r9, zero, r7, 4
0008b4  1504b00b  dma_cfg r8, zero, r27, 5
0008b8  15002010  dma_cfg zero, zero, r2, 8
0008bc  35000000  dma_run zero
0008c0  1500b00b  dma_cfg zero, zero, r27, 5
0008c4  15000010  dma_cfg zero, zero, zero, 8
0008c8  1d900a00  unlock r21
0008cc  6b5a8ffd  load.d r[21:22], -40(r30)
0008d0  5ba2ffff  j -752
0008d4  37300500  beq r10, zero, 12
0008d8  9f500000  addli r1, zero, 5
0008dc  7d800000  xsignal r1, 0
0008e0  80330002  core_id r7
0008e4  9f500000  addli r1, zero, 5
0008e8  1f350000  addli r10, zero, 3
0008ec  b7fc1304  beq r7, r1, 2876
0008f0  bba6a306  bneq r7, r10, 3496
0008f4  9f401000  addli r1, zero, 12
0008f8  7d100500  xwait r10, 0
0008fc  b3040028  zext_int2long r[10:11], zero
000900  7d900000  xwait r1, 0
000904  3d000000  xfence
000908  00a00300  mfence { lm, sm, gm }
00090c  5b0b0000  j 88
000910  9f411820  addli r3, r16, 4108
000914  9f420820  addli r5, r16, 4100
000918  a7841400  addli.d r[10:11], r[10:11], 8
00091c  9f000820  addli r1, r16, 4096
000920  1f022820  addli r4, r16, 4112
000924  73e0a101  stores.w r26, 0(r3)
000928  9f011820  addli r3, r16, 4104
00092c  73e07000  stores.w r7, 0(r1)
000930  9f003820  addli r1, r16, 4120
000934  1f2d0000  addli r26, zero, 2
000938  73602200  stores.w r2, 0(r4)
00093c  73e0f100  stores.w r15, 0(r3)
000940  e301dfff  loadli.w r3,  -24(r30)
000944  73e08000  stores.w r8, 0(r1)
000948  73e03200  stores.w r3, 0(r5)
00094c  93a23403  setneq.d r5, r[10:11], r[20:21]
000950  9f413820  addli r3, r16, 4124
000954  73e06100  stores.w r6, 0(r3)
000958  9f412820  addli r3, r16, 4116
00095c  73e06101  stores.w r22, 0(r3)
000960  b7c80200  beq r5, zero, 560
000964  1bb82400  slli r16, r9, 2
000968  6f42c800  loads.w r4, 12(r16)
00096c  ef450800  loads.w r11, 0(r16)
000970  6f464800  loads.w r12, 4(r16)
000974  ef428800  loads.w r5, 8(r16)
000978  ef480801  loads.w r17, 16(r16)
00097c  6f474801  loads.w r14, 20(r16)
000980  6f438801  loads.w r6, 24(r16)
000984  ef41c801  loads.w r3, 28(r16)
000988  97007201  and r1, r4, r23
00098c  13811c04  setlt.u r2, r25, r1
000990  3b300100  bneq r2, zero, 12
000994  1f0d0200  addli r26, r4, 0
000998  5b010000  j 8
00099c  171d8201  or r26, r4, r24
0009a0  978d7201  and r27, r5, r23
0009a4  1381bc05  setlt.u r2, r25, r27
0009a8  3b300100  bneq r2, zero, 12
0009ac  9f870200  addli r15, r5, 0
0009b0  5b010000  j 8
0009b4  97978201  or r15, r5, r24
0009b8  97097601  and r19, r12, r23
0009bc  13813c05  setlt.u r2, r25, r19
0009c0  3b300100  bneq r2, zero, 12
0009c4  e70ecffe  storeli.w r12, -24(r30)
0009c8  db010000  j 12
0009cc  17118601  or r2, r12, r24
0009d0  e70e2ffe  storeli.w r2, -24(r30)
0009d4  97867501  and r13, r11, r23
0009d8  1381dc04  setlt.u r2, r25, r13
0009dc  3b300100  bneq r2, zero, 12
0009e0  9f830500  addli r7, r11, 0
0009e4  5b010000  j 8
0009e8  97938501  or r7, r11, r24
0009ec  178e7101  and r28, r3, r23
0009f0  1381cc05  setlt.u r2, r25, r28
0009f4  3b300100  bneq r2, zero, 12
0009f8  e70d3ffe  storeli.w r3, -40(r30)
0009fc  db010000  j 12
000a00  17918101  or r2, r3, r24
000a04  e70d2ffe  storeli.w r2, -40(r30)
000a08  170a7301  and r20, r6, r23
000a0c  13814c05  setlt.u r2, r25, r20
000a10  3b300100  bneq r2, zero, 12
000a14  1f040300  addli r8, r6, 0
000a18  5b010000  j 8
000a1c  17148301  or r8, r6, r24
000a20  17097701  and r18, r14, r23
000a24  13812c05  setlt.u r2, r25, r18
000a28  3b300100  bneq r2, zero, 12
000a2c  1f0b0700  addli r22, r14, 0
000a30  5b010000  j 8
000a34  171b8701  or r22, r14, r24
000a38  978a7801  and r21, r17, r23
000a3c  13815c05  setlt.u r2, r25, r21
000a40  3b300100  bneq r2, zero, 12
000a44  1f810800  addli r2, r17, 0
000a48  5b010000  j 8
000a4c  17918801  or r2, r17, r24
000a50  634cefff  loadli.w r24,  -12(r30)
000a54  9306dc04  setlt.u r13, r24, r13
000a58  bb800600  bneq r13, zero, 32
000a5c  9bc30501  srli r7, r11, 16
000a60  9b831300  andi r7, r7, 1
000a64  8b937510  add.s r7, r11, r7
000a68  e345cfff  loadli.w r11,  -28(r30)
000a6c  8b93b310  add.s r7, r7, r11
000a70  ab05ffff  lui r11, 1048560
000a74  9783b300  and r7, r7, r11
000a78  e346efff  loadli.w r13,  -12(r30)
000a7c  93853605  setlt.u r11, r13, r19
000a80  bb900500  bneq r11, zero, 36
000a84  9b450601  srli r11, r12, 16
000a88  9b851500  andi r11, r11, 1
000a8c  8b15b610  add.s r11, r12, r11
000a90  6346cfff  loadli.w r12,  -28(r30)
000a94  8b95c510  add.s r11, r11, r12
000a98  2b06ffff  lui r12, 1048560
000a9c  9785c500  and r11, r11, r12
000aa0  e70ebffe  storeli.w r11, -24(r30)
000aa4  9385b605  setlt.u r11, r13, r27
000aa8  e34dcfff  loadli.w r27,  -28(r30)
000aac  2b0c4000  lui r24, 1024
000ab0  37f20500  beq r11, zero, 156
000ab4  93801604  setlt.u r1, r13, r1
000ab8  b7d20000  beq r1, zero, 180
000abc  93805605  setlt.u r1, r13, r21
000ac0  3bf00000  bneq r1, zero, 28
000ac4  9bc00801  srli r1, r17, 16
000ac8  2b01ffff  lui r2, 1048560
000acc  9b801000  andi r1, r1, 1
000ad0  8b901810  add.s r1, r17, r1
000ad4  8b90b011  add.s r1, r1, r27
000ad8  17812000  and r2, r1, r2
000adc  93802605  setlt.u r1, r13, r18
000ae0  e34aafff  loadli.w r21,  -44(r30)
000ae4  3bf00000  bneq r1, zero, 28
000ae8  9b400701  srli r1, r14, 16
000aec  2b02ffff  lui r4, 1048560
000af0  9b801000  andi r1, r1, 1
000af4  8b101710  add.s r1, r14, r1
000af8  8b90b011  add.s r1, r1, r27
000afc  178b4000  and r22, r1, r4
000b00  93804605  setlt.u r1, r13, r20
000b04  3bf00000  bneq r1, zero, 28
000b08  9b400301  srli r1, r6, 16
000b0c  2b02ffff  lui r4, 1048560
000b10  9b801000  andi r1, r1, 1
000b14  8b101310  add.s r1, r6, r1
000b18  8b90b011  add.s r1, r1, r27
000b1c  17844000  and r8, r1, r4
000b20  9380c605  setlt.u r1, r13, r28
000b24  eb598fff  load.d r[20:21], -8(r30)
000b28  6303bfff  loadli.w r6,  -40(r30)
000b2c  bb9700fe  bneq r1, zero, -540
000b30  9bc00101  srli r1, r3, 16
000b34  9b801000  andi r1, r1, 1
000b38  8b901110  add.s r1, r3, r1
000b3c  ab01ffff  lui r3, 1048560
000b40  8b90b011  add.s r1, r1, r27
000b44  17833000  and r6, r1, r3
000b48  5bb9ffff  j -568
000b4c  9bc50201  srli r11, r5, 16
000b50  9b851500  andi r11, r11, 1
000b54  8b92b210  add.s r5, r5, r11
000b58  ab05ffff  lui r11, 1048560
000b5c  8b92b211  add.s r5, r5, r27
000b60  9787b200  and r15, r5, r11
000b64  93801604  setlt.u r1, r13, r1
000b68  3bdd00fe  bneq r1, zero, -172
000b6c  9b400201  srli r1, r4, 16
000b70  9b801000  andi r1, r1, 1
000b74  8b101210  add.s r1, r4, r1
000b78  2b02ffff  lui r4, 1048560
000b7c  8b90b011  add.s r1, r1, r27
000b80  178d4000  and r26, r1, r4
000b84  93805605  setlt.u r1, r13, r21
000b88  b7fc00fe  beq r1, zero, -196
000b8c  5beaffff  j -176
000b90  9f400000  addli r1, zero, 4
000b94  00200100  mfence { sm }
000b98  b3010028  zext_int2long r[4:5], zero
000b9c  7d800000  xsignal r1, 0
000ba0  9f101000  addli r1, zero, 9
000ba4  7d800000  xsignal r1, 0
000ba8  9f201000  addli r1, zero, 10
000bac  7d800000  xsignal r1, 0
000bb0  9f501000  addli r1, zero, 13
000bb4  7d800000  xsignal r1, 0
000bb8  9f700000  addli r1, zero, 7
000bbc  7d800000  xsignal r1, 0
000bc0  9f001000  addli r1, zero, 8
000bc4  7d900000  xwait r1, 0
000bc8  9f002000  addli r1, zero, 16
000bcc  7d900000  xwait r1, 0
000bd0  9f202000  addli r1, zero, 18
000bd4  7d900000  xwait r1, 0
000bd8  9f203000  addli r1, zero, 26
000bdc  7d900000  xwait r1, 0
000be0  3d000000  xfence
000be4  00a00300  mfence { lm, sm, gm }
000be8  5b060000  j 48
000bec  a7c10100  addli.d r[4:5], r[4:5], 4
000bf0  9fc01210  addli r1, r5, 2060
000bf4  1f840210  addli r8, r5, 2048
000bf8  13a13103  setneq.d r2, r[4:5], r[20:21]
000bfc  73e07000  stores.w r7, 0(r1)
000c00  9f801210  addli r1, r5, 2056
000c04  9fc20210  addli r5, r5, 2052
000c08  73606400  stores.w r6, 0(r8)
000c0c  73e09000  stores.w r9, 0(r1)
000c10  73e0a200  stores.w r10, 0(r5)
000c14  37650100  beq r2, zero, 344
000c18  9bb22100  slli r5, r3, 2
000c1c  1f831230  addli r6, r5, 6152
000c20  9f800230  addli r1, r5, 6144
000c24  1fc10230  addli r2, r5, 6148
000c28  1f841220  addli r8, r5, 4104
000c2c  1fc61238  addli r12, r5, 7180
000c30  ef440300  loads.w r9, 0(r6)
000c34  1f830220  addli r6, r5, 4096
000c38  efc30000  loads.w r7, 0(r1)
000c3c  9fc01230  addli r1, r5, 6156
000c40  6f450100  loads.w r10, 0(r2)
000c44  ef450400  loads.w r11, 0(r8)
000c48  6f430300  loads.w r6, 0(r6)
000c4c  6fc10000  loads.w r2, 0(r1)
000c50  9fc00220  addli r1, r5, 4100
000c54  efc60000  loads.w r13, 0(r1)
000c58  9fc01220  addli r1, r5, 4108
000c5c  6fc40000  loads.w r8, 0(r1)
000c60  ef400600  loads.w r1, 0(r12)
000c64  1f861238  addli r12, r5, 7176
000c68  6f460600  loads.w r12, 0(r12)
000c6c  97837301  and r7, r7, r23
000c70  17037301  and r6, r6, r23
000c74  93879301  seteq r15, r7, r25
000c78  13890300  seteq r18, r7, zero
000c7c  13080300  seteq r16, r6, zero
000c80  93089301  seteq r17, r6, r25
000c84  0b836348  max.u r6, r7, r6
000c88  9fc30238  addli r7, r5, 7172
000c8c  6fc70300  loads.w r14, 0(r7)
000c90  13836c04  setlt.u r6, r25, r6
000c94  97830701  and r7, r15, r16
000c98  97071901  and r15, r18, r17
000c9c  9793f300  or r7, r7, r15
000ca0  97177300  or r15, r6, r7
000ca4  ab03c07f  lui r7, 523264
000ca8  2b03c07f  lui r6, 523264
000cac  3bb00700  bneq r15, zero, 12
000cb0  1f830238  addli r6, r5, 7168
000cb4  6f430300  loads.w r6, 0(r6)
000cb8  17057501  and r10, r10, r23
000cbc  97867601  and r13, r13, r23
000cc0  93079501  seteq r15, r10, r25
000cc4  13090500  seteq r18, r10, zero
000cc8  13880600  seteq r16, r13, zero
000ccc  93889601  seteq r17, r13, r25
000cd0  0b05d548  max.u r10, r10, r13
000cd4  1385ac04  setlt.u r10, r25, r10
000cd8  97860701  and r13, r15, r16
000cdc  97071901  and r15, r18, r17
000ce0  9796f600  or r13, r13, r15
000ce4  9716d500  or r13, r10, r13
000ce8  2b05c07f  lui r10, 523264
000cec  3ba00600  bneq r13, zero, 8
000cf0  1f050700  addli r10, r14, 0
000cf4  97847401  and r9, r9, r23
000cf8  97857501  and r11, r11, r23
000cfc  93869401  seteq r13, r9, r25
000d00  13880400  seteq r16, r9, zero
000d04  13870500  seteq r14, r11, zero
000d08  93879501  seteq r15, r11, r25
000d0c  8b84b448  max.u r9, r9, r11
000d10  93849c04  setlt.u r9, r25, r9
000d14  9785e600  and r11, r13, r14
000d18  9706f800  and r13, r16, r15
000d1c  9795d500  or r11, r11, r13
000d20  9795b400  or r11, r9, r11
000d24  ab04c07f  lui r9, 523264
000d28  3ba00500  bneq r11, zero, 8
000d2c  9f040600  addli r9, r12, 0
000d30  17017101  and r2, r2, r23
000d34  17047401  and r8, r8, r23
000d38  93059101  seteq r11, r2, r25
000d3c  13070100  seteq r14, r2, zero
000d40  13060400  seteq r12, r8, zero
000d44  93069401  seteq r13, r8, r25
000d48  0b018148  max.u r2, r2, r8
000d4c  13812c04  setlt.u r2, r25, r2
000d50  1784c500  and r8, r11, r12
000d54  9705d700  and r11, r14, r13
000d58  1714b400  or r8, r8, r11
000d5c  17118100  or r2, r2, r8
000d60  3b3a01fe  bneq r2, zero, -372
000d64  9f830000  addli r7, r1, 0
000d68  dbd0ffff  j -380
000d6c  9f301000  addli r1, zero, 11
000d70  00200100  mfence { sm }
000d74  ab070080  lui r15, 524288
000d78  2b088041  lui r16, 268288
000d7c  7d800000  xsignal r1, 0
000d80  9f102000  addli r1, zero, 17
000d84  7d800000  xsignal r1, 0
000d88  9f302000  addli r1, zero, 19
000d8c  7d800000  xsignal r1, 0
000d90  9f402000  addli r1, zero, 20
000d94  7d800000  xsignal r1, 0
000d98  9f303000  addli r1, zero, 27
000d9c  7d900000  xwait r1, 0
000da0  9f703000  addli r1, zero, 31
000da4  7d900000  xwait r1, 0
000da8  3d000000  xfence
000dac  b3000028  zext_int2long r[2:3], zero
000db0  00a00300  mfence { lm, sm, gm }
000db4  9bb12000  slli r3, r1, 2
000db8  a7801000  addli.d r[2:3], r[2:3], 8
000dbc  1f821140  addli r4, r3, 8200
000dc0  9f820140  addli r5, r3, 8192
000dc4  1f843140  addli r8, r3, 8216
000dc8  93a63003  setneq.d r13, r[2:3], r[20:21]
000dcc  1f870118  addli r14, r3, 3072
000dd0  6f530200  loads.d r[7:8], 0(r4)
000dd4  1f822140  addli r4, r3, 8208
000dd8  efd40200  loads.d r[10:11], 0(r5)
000ddc  ef550400  loads.d r[12:13], 0(r8)
000de0  1f841118  addli r8, r3, 3080
000de4  6f520200  loads.d r[5:6], 0(r4)
000de8  73706400  stores.d r[7:8], 0(r8)
000dec  1f832118  addli r6, r3, 3088
000df0  9f813118  addli r3, r3, 3096
000df4  73709700  stores.d r[10:11], 0(r14)
000df8  73f0b100  stores.d r[12:13], 0(r3)
000dfc  73704300  stores.d r[5:6], 0(r6)
000e00  bbde06fe  bneq r13, zero, -76
000e04  9f403000  addli r1, zero, 28
000e08  00200100  mfence { sm }
000e0c  1f513000  addli r2, zero, 29
000e10  b3010028  zext_int2long r[4:5], zero
000e14  7d800000  xsignal r1, 0
000e18  9f502000  addli r1, zero, 21
000e1c  7d000100  xsignal r2, 0
000e20  7d900000  xwait r1, 0
000e24  7d100100  xwait r2, 0
000e28  3d000000  xfence
000e2c  00a00300  mfence { lm, sm, gm }
000e30  5b0a0000  j 80
000e34  9fc61210  addli r13, r5, 2060
000e38  a7811100  addli.d r[4:5], r[4:5], 8
000e3c  9f830210  addli r7, r5, 2048
000e40  1f872210  addli r14, r5, 2064
000e44  73e0a600  stores.w r10, 0(r13)
000e48  1f851210  addli r10, r5, 2056
000e4c  9fc60210  addli r13, r5, 2052
000e50  73e06300  stores.w r6, 0(r7)
000e54  73602700  stores.w r2, 0(r14)
000e58  7360b500  stores.w r11, 0(r10)
000e5c  93a53103  setneq.d r11, r[4:5], r[20:21]
000e60  1fc53210  addli r10, r5, 2076
000e64  73e0c600  stores.w r12, 0(r13)
000e68  73601500  stores.w r1, 0(r10)
000e6c  9f803210  addli r1, r5, 2072
000e70  9fc22210  addli r5, r5, 2068
000e74  73e09000  stores.w r9, 0(r1)
000e78  73e08200  stores.w r8, 0(r5)
000e7c  b7b30500  beq r11, zero, 236
000e80  9bb22100  slli r5, r3, 2
000e84  9f800218  addli r1, r5, 3072
000e88  1fc11218  addli r2, r5, 3084
000e8c  1fc42218  addli r8, r5, 3092
000e90  9f832218  addli r7, r5, 3088
000e94  6fc30000  loads.w r6, 0(r1)
000e98  6f450100  loads.w r10, 0(r2)
000e9c  1f811218  addli r2, r5, 3080
000ea0  9fc00218  addli r1, r5, 3076
000ea4  6f440400  loads.w r8, 0(r8)
000ea8  ef450100  loads.w r11, 0(r2)
000eac  1fc13218  addli r2, r5, 3100
000eb0  6fc60000  loads.w r12, 0(r1)
000eb4  ef400100  loads.w r1, 0(r2)
000eb8  1f813218  addli r2, r5, 3096
000ebc  ef440100  loads.w r9, 0(r2)
000ec0  6fc10300  loads.w r2, 0(r7)
000ec4  97037301  and r7, r6, r23
000ec8  93037804  setlt.u r7, r16, r7
000ecc  37b00300  beq r7, zero, 12
000ed0  1703f300  and r6, r6, r15
000ed4  17130301  or r6, r6, r16
000ed8  97037601  and r7, r12, r23
000edc  93037804  setlt.u r7, r16, r7
000ee0  37b00300  beq r7, zero, 12
000ee4  9703f600  and r7, r12, r15
000ee8  17960301  or r12, r7, r16
000eec  97837501  and r7, r11, r23
000ef0  93037804  setlt.u r7, r16, r7
000ef4  37b00300  beq r7, zero, 12
000ef8  9783f500  and r7, r11, r15
000efc  97950301  or r11, r7, r16
000f00  97037501  and r7, r10, r23
000f04  93037804  setlt.u r7, r16, r7
000f08  37b00300  beq r7, zero, 12
000f0c  9703f500  and r7, r10, r15
000f10  17950301  or r10, r7, r16
000f14  97037101  and r7, r2, r23
000f18  93037804  setlt.u r7, r16, r7
000f1c  37b00300  beq r7, zero, 12
000f20  1701f100  and r2, r2, r15
000f24  17110101  or r2, r2, r16
000f28  97037401  and r7, r8, r23
000f2c  93037804  setlt.u r7, r16, r7
000f30  37b00300  beq r7, zero, 12
000f34  9703f400  and r7, r8, r15
000f38  17940301  or r8, r7, r16
000f3c  97837401  and r7, r9, r23
000f40  93037804  setlt.u r7, r16, r7
000f44  37b00300  beq r7, zero, 12
000f48  9783f400  and r7, r9, r15
000f4c  97940301  or r9, r7, r16
000f50  97837001  and r7, r1, r23
000f54  93037804  setlt.u r7, r16, r7
000f58  37fb03fe  beq r7, zero, -292
000f5c  9780f000  and r1, r1, r15
000f60  97900001  or r1, r1, r16
000f64  5bdaffff  j -304
000f68  9f602000  addli r1, zero, 22
000f6c  00200100  mfence { sm }
000f70  1f613000  addli r2, zero, 30
000f74  b3020028  zext_int2long r[6:7], zero
000f78  7d800000  xsignal r1, 0
000f7c  9f702000  addli r1, zero, 23
000f80  7d000100  xsignal r2, 0
000f84  7d900000  xwait r1, 0
000f88  9f204000  addli r1, zero, 34
000f8c  7d100100  xwait r2, 0
000f90  7d900000  xwait r1, 0
000f94  3d000000  xfence
000f98  00a00300  mfence { lm, sm, gm }
000f9c  db0a0000  j 84
000fa0  9fc60148  addli r13, r3, 9220
000fa4  1fc11148  addli r2, r3, 9228
000fa8  a7821200  addli.d r[6:7], r[6:7], 8
000fac  9f800148  addli r1, r3, 9216
000fb0  9f832148  addli r7, r3, 9232
000fb4  73e0c600  stores.w r12, 0(r13)
000fb8  6b568fff  load.d r[13:14], -8(r30)
000fbc  7360e100  stores.w r14, 0(r2)
000fc0  1f811148  addli r2, r3, 9224
000fc4  73e0f000  stores.w r15, 0(r1)
000fc8  9f803148  addli r1, r3, 9240
000fcc  73e09300  stores.w r9, 0(r7)
000fd0  73608100  stores.w r8, 0(r2)
000fd4  1fc13148  addli r2, r3, 9244
000fd8  73e0b000  stores.w r11, 0(r1)
000fdc  13a4c200  seteq.d r8, r[6:7], r[13:14]
000fe0  73604100  stores.w r4, 0(r2)
000fe4  1fc12148  addli r2, r3, 9236
000fe8  7360a100  stores.w r10, 0(r2)
000fec  bb550400  bneq r8, zero, 372
000ff0  9bb12200  slli r3, r5, 2
000ff4  9f800118  addli r1, r3, 3072
000ff8  1fc20118  addli r4, r3, 3076
000ffc  1f812118  addli r2, r3, 3088
001000  1fc53110  addli r10, r3, 2076
001004  9f842110  addli r9, r3, 2064
001008  1f841110  addli r8, r3, 2056
00100c  9fc92110  addli r19, r3, 2068
001010  efc70000  loads.w r15, 0(r1)
001014  6f490200  loads.w r18, 0(r4)
001018  1fc21118  addli r4, r3, 3084
00101c  9f801118  addli r1, r3, 3080
001020  ef430100  loads.w r7, 0(r2)
001024  6f440400  loads.w r8, 0(r8)
001028  efc40400  loads.w r9, 0(r9)
00102c  6f480200  loads.w r16, 0(r4)
001030  1fc23118  addli r4, r3, 3100
001034  efc80000  loads.w r17, 0(r1)
001038  9fc02118  addli r1, r3, 3092
00103c  ef460200  loads.w r13, 0(r4)
001040  1fc21110  addli r4, r3, 2060
001044  6fc10000  loads.w r2, 0(r1)
001048  9f803118  addli r1, r3, 3096
00104c  6f470200  loads.w r14, 0(r4)
001050  1fc20110  addli r4, r3, 2052
001054  efc00000  loads.w r1, 0(r1)
001058  6f460200  loads.w r12, 0(r4)
00105c  6f420500  loads.w r4, 0(r10)
001060  1f853110  addli r10, r3, 2072
001064  ef450500  loads.w r11, 0(r10)
001068  6fc50900  loads.w r10, 0(r19)
00106c  97899701  and r19, r15, r25
001070  178a5701  and r20, r15, r21
001074  93899901  seteq r19, r19, r25
001078  130a0a02  setneq r20, r20, zero
00107c  97894901  and r19, r19, r20
001080  3bc00900  bneq r19, zero, 16
001084  9f870110  addli r15, r3, 2048
001088  efc70700  loads.w r15, 0(r15)
00108c  5b010000  j 8
001090  97978701  or r15, r15, r24
001094  97099901  and r19, r18, r25
001098  170a5901  and r20, r18, r21
00109c  93899901  seteq r19, r19, r25
0010a0  130a0a02  setneq r20, r20, zero
0010a4  97894901  and r19, r19, r20
0010a8  37a00900  beq r19, zero, 8
0010ac  17168901  or r12, r18, r24
0010b0  17899801  and r18, r17, r25
0010b4  97895801  and r19, r17, r21
0010b8  13099901  seteq r18, r18, r25
0010bc  93890902  setneq r19, r19, zero
0010c0  17093901  and r18, r18, r19
0010c4  37200900  beq r18, zero, 8
0010c8  17948801  or r8, r17, r24
0010cc  97089801  and r17, r16, r25
0010d0  17095801  and r18, r16, r21
0010d4  e349efff  loadli.w r19,  -12(r30)
0010d8  93889801  seteq r17, r17, r25
0010dc  13090902  setneq r18, r18, zero
0010e0  97882801  and r17, r17, r18
0010e4  37a00800  beq r17, zero, 8
0010e8  17178801  or r14, r16, r24
0010ec  17889301  and r16, r7, r25
0010f0  97885301  and r17, r7, r21
0010f4  13089801  seteq r16, r16, r25
0010f8  93880802  setneq r17, r17, zero
0010fc  17081801  and r16, r16, r17
001100  37200800  beq r16, zero, 8
001104  97948301  or r9, r7, r24
001108  97039101  and r7, r2, r25
00110c  17085101  and r16, r2, r21
001110  93839301  seteq r7, r7, r25
001114  13080802  setneq r16, r16, zero
001118  97830301  and r7, r7, r16
00111c  37a00300  beq r7, zero, 8
001120  17158101  or r10, r2, r24
001124  17819001  and r2, r1, r25
001128  97835001  and r7, r1, r21
00112c  13019101  seteq r2, r2, r25
001130  93830302  setneq r7, r7, zero
001134  17017100  and r2, r2, r7
001138  37200100  beq r2, zero, 8
00113c  97958001  or r11, r1, r24
001140  97809601  and r1, r13, r25
001144  17815601  and r2, r13, r21
001148  93809001  seteq r1, r1, r25
00114c  13010102  setneq r2, r2, zero
001150  97802000  and r1, r1, r2
001154  37b900fe  beq r1, zero, -436
001158  17928601  or r4, r13, r24
00115c  dbc8ffff  j -444
001160  1f013000  addli r2, zero, 24
001164  9f703000  addli r1, zero, 31
001168  00200100  mfence { sm }
00116c  b3040028  zext_int2long r[10:11], zero
001170  7d000100  xsignal r2, 0
001174  7d800000  xsignal r1, 0
001178  9f004000  addli r1, zero, 32
00117c  7d800000  xsignal r1, 0
001180  9f601000  addli r1, zero, 14
001184  7d900000  xwait r1, 0
001188  9f104000  addli r1, zero, 33
00118c  7d100100  xwait r2, 0
001190  7d900000  xwait r1, 0
001194  9f304000  addli r1, zero, 35
001198  7d900000  xwait r1, 0
00119c  3d000000  xfence
0011a0  00a00300  mfence { lm, sm, gm }
0011a4  db060000  j 52
0011a8  6b518fff  load.d r[3:4], -8(r30)
0011ac  a7c40400  addli.d r[10:11], r[10:11], 4
0011b0  9f401810  addli r1, r16, 2060
0011b4  1f420810  addli r4, r16, 2052
0011b8  73e05000  stores.w r5, 0(r1)
0011bc  9f001810  addli r1, r16, 2056
0011c0  73608200  stores.w r8, 0(r4)
0011c4  13a12402  setneq.d r2, r[10:11], r[3:4]
0011c8  9f010810  addli r3, r16, 2048
0011cc  73e06000  stores.w r6, 0(r1)
0011d0  73e0b100  stores.w r11, 0(r3)
0011d4  375301f8  beq r2, zero, -3884
0011d8  1bb82400  slli r16, r9, 2
0011dc  9f011828  addli r3, r16, 5128
0011e0  9f000828  addli r1, r16, 5120
0011e4  9f020848  addli r5, r16, 9216
0011e8  9f031848  addli r7, r16, 9224
0011ec  9f451850  addli r11, r16, 10252
0011f0  1f410828  addli r2, r16, 5124
0011f4  6fc20100  loads.w r4, 0(r3)
0011f8  9f411828  addli r3, r16, 5132
0011fc  efc00000  loads.w r1, 0(r1)
001200  6fc40300  loads.w r8, 0(r7)
001204  6f410100  loads.w r2, 0(r2)
001208  6fc30100  loads.w r6, 0(r3)
00120c  efc10200  loads.w r3, 0(r5)
001210  9f420848  addli r5, r16, 9220
001214  6fc60200  loads.w r12, 0(r5)
001218  9f421848  addli r5, r16, 9228
00121c  efc30200  loads.w r7, 0(r5)
001220  efc20500  loads.w r5, 0(r11)
001224  9f051850  addli r11, r16, 10248
001228  efc50500  loads.w r11, 0(r11)
00122c  97807001  and r1, r1, r23
001230  97817101  and r3, r3, r23
001234  13879001  seteq r14, r1, r25
001238  13890000  seteq r18, r1, zero
00123c  8b803048  max.u r1, r1, r3
001240  93870100  seteq r15, r3, zero
001244  93889101  seteq r17, r3, r25
001248  9f410850  addli r3, r16, 10244
00124c  efc60100  loads.w r13, 0(r3)
001250  93801c04  setlt.u r1, r25, r1
001254  9701f700  and r3, r14, r15
001258  17071901  and r14, r18, r17
00125c  9791e100  or r3, r3, r14
001260  17973000  or r14, r1, r3
001264  ab01c07f  lui r3, 523264
001268  ab00c07f  lui r1, 523264
00126c  3b300700  bneq r14, zero, 12
001270  9f000850  addli r1, r16, 10240
001274  efc00000  loads.w r1, 0(r1)
001278  17017101  and r2, r2, r23
00127c  17067601  and r12, r12, r23
001280  13079101  seteq r14, r2, r25
001284  13090100  seteq r18, r2, zero
001288  93070600  seteq r15, r12, zero
00128c  93089601  seteq r17, r12, r25
001290  0b01c148  max.u r2, r2, r12
001294  13812c04  setlt.u r2, r25, r2
001298  1706f700  and r12, r14, r15
00129c  17071901  and r14, r18, r17
0012a0  1716e600  or r12, r12, r14
0012a4  1716c100  or r12, r2, r12
0012a8  2b01c07f  lui r2, 523264
0012ac  3b200600  bneq r12, zero, 8
0012b0  1f810600  addli r2, r13, 0
0012b4  17027201  and r4, r4, r23
0012b8  17047401  and r8, r8, r23
0012bc  13069201  seteq r12, r4, r25
0012c0  93070200  seteq r15, r4, zero
0012c4  93060400  seteq r13, r8, zero
0012c8  13079401  seteq r14, r8, r25
0012cc  0b028248  max.u r4, r4, r8
0012d0  13824c04  setlt.u r4, r25, r4
0012d4  1704d600  and r8, r12, r13
0012d8  1786e700  and r12, r15, r14
0012dc  1714c400  or r8, r8, r12
0012e0  17148200  or r8, r4, r8
0012e4  2b02c07f  lui r4, 523264
0012e8  3b200400  bneq r8, zero, 8
0012ec  1f820500  addli r4, r11, 0
0012f0  17037301  and r6, r6, r23
0012f4  97837301  and r7, r7, r23
0012f8  13049301  seteq r8, r6, r25
0012fc  93060300  seteq r13, r6, zero
001300  93850300  seteq r11, r7, zero
001304  13869301  seteq r12, r7, r25
001308  0b037348  max.u r6, r6, r7
00130c  13836c04  setlt.u r6, r25, r6
001310  9703b400  and r7, r8, r11
001314  1784c600  and r8, r13, r12
001318  97938300  or r7, r7, r8
00131c  17137300  or r6, r6, r7
001320  3b200300  bneq r6, zero, 8
001324  9f810200  addli r3, r5, 0
001328  97837101  and r7, r3, r23
00132c  93827c04  setlt.u r5, r25, r7
001330  3bb00200  bneq r5, zero, 12
001334  9f820100  addli r5, r3, 0
001338  5b010000  j 8
00133c  97928101  or r5, r3, r24
001340  17067201  and r12, r4, r23
001344  1383cc04  setlt.u r6, r25, r12
001348  3b300300  bneq r6, zero, 12
00134c  1f030200  addli r6, r4, 0
001350  5b010000  j 8
001354  17138201  or r6, r4, r24
001358  97067101  and r13, r2, r23
00135c  1384dc04  setlt.u r8, r25, r13
001360  3b300400  bneq r8, zero, 12
001364  1f040100  addli r8, r2, 0
001368  5b010000  j 8
00136c  17148101  or r8, r2, r24
001370  17877001  and r14, r1, r23
001374  9385ec04  setlt.u r11, r25, r14
001378  3bd00500  bneq r11, zero, 20
00137c  9f850000  addli r11, r1, 0
001380  1387e904  setlt.u r14, r19, r14
001384  37500700  beq r14, zero, 20
001388  5b050000  j 40
00138c  97958001  or r11, r1, r24
001390  1387e904  setlt.u r14, r19, r14
001394  3b700700  bneq r14, zero, 28
001398  9bc50001  srli r11, r1, 16
00139c  9b851500  andi r11, r11, 1
0013a0  8b90b010  add.s r1, r1, r11
0013a4  ab05ffff  lui r11, 1048560
0013a8  8b90b011  add.s r1, r1, r27
0013ac  9785b000  and r11, r1, r11
0013b0  9380d904  setlt.u r1, r19, r13
0013b4  37e00000  beq r1, zero, 24
0013b8  9380c904  setlt.u r1, r19, r12
0013bc  b7c00000  beq r1, zero, 48
0013c0  93807904  setlt.u r1, r19, r7
0013c4  bb9700fe  bneq r1, zero, -540
0013c8  db080000  j 68
0013cc  9b400101  srli r1, r2, 16
0013d0  9b801000  andi r1, r1, 1
0013d4  8b101110  add.s r1, r2, r1
0013d8  2b01ffff  lui r2, 1048560
0013dc  8b90b011  add.s r1, r1, r27
0013e0  17842000  and r8, r1, r2
0013e4  9380c904  setlt.u r1, r19, r12
0013e8  3bef00fe  bneq r1, zero, -40
0013ec  9b400201  srli r1, r4, 16
0013f0  2b01ffff  lui r2, 1048560
0013f4  9b801000  andi r1, r1, 1
0013f8  8b101210  add.s r1, r4, r1
0013fc  8b90b011  add.s r1, r1, r27
001400  17832000  and r6, r1, r2
001404  93807904  setlt.u r1, r19, r7
001408  bb8600fe  bneq r1, zero, -608
00140c  9bc00101  srli r1, r3, 16
001410  2b01ffff  lui r2, 1048560
001414  9b801000  andi r1, r1, 1
001418  8b901110  add.s r1, r3, r1
00141c  8b90b011  add.s r1, r1, r27
001420  97822000  and r5, r1, r2
001424  dbb0ffff  j -636
001428  9f500000  addli r1, zero, 5
00142c  7d100d00  xwait r26, 0
001430  ab01803f  lui r3, 260096
001434  1f723000  addli r4, zero, 31
001438  1f010008  addli r2, zero, 1024
00143c  ab02003f  lui r5, 258048
001440  1f030020  addli r6, zero, 4096
001444  1f040030  addli r8, zero, 6144
001448  9f442000  addli r9, zero, 20
00144c  7d900000  xwait r1, 0
001450  1d000d00  lock zero, r26
001454  9f001000  addli r1, zero, 8
001458  0d000002  ew_cfg zero, zero, zero, 1
00145c  8d910100  ewcoeff_cfg r3, r3, zero, 0
001460  0d000204  ew_cfg zero, r4, zero, 2
001464  8d000006  ew_cfg r1, zero, zero, 3
001468  8d801026  ew_cfg r1, r1, r1, 19
00146c  2d002000  dsmadd zero, zero, r2, 0
001470  1f610000  addli r2, zero, 6
001474  0d000026  ew_cfg zero, zero, zero, 19
001478  1d100d00  unlock r26
00147c  7d000500  xsignal r10, 0
001480  7d000100  xsignal r2, 0
001484  1f710000  addli r2, zero, 7
001488  7d100100  xwait r2, 0
00148c  1f711000  addli r2, zero, 15
001490  7d100100  xwait r2, 0
001494  1d000d00  lock zero, r26
001498  1f010028  addli r2, zero, 5120
00149c  0d000002  ew_cfg zero, zero, zero, 1
0014a0  8d120000  ewcoeff_cfg r5, zero, zero, 0
0014a4  0d000204  ew_cfg zero, r4, zero, 2
0014a8  8d000006  ew_cfg r1, zero, zero, 3
0014ac  8d800026  ew_cfg r1, r1, zero, 19
0014b0  4d516300  hp_ssmul r2, r6, r6, 0
0014b4  1f611000  addli r2, zero, 14
0014b8  0d000026  ew_cfg zero, zero, zero, 19
0014bc  1d100d00  unlock r26
0014c0  7d000100  xsignal r2, 0
0014c4  1f111000  addli r2, zero, 9
0014c8  7d100100  xwait r2, 0
0014cc  1f112000  addli r2, zero, 17
0014d0  7d100100  xwait r2, 0
0014d4  1d000d00  lock zero, r26
0014d8  1f211000  addli r2, zero, 10
0014dc  0d000002  ew_cfg zero, zero, zero, 1
0014e0  0d103000  ewcoeff_cfg zero, zero, r3, 0
0014e4  0d000204  ew_cfg zero, r4, zero, 2
0014e8  8d000006  ew_cfg r1, zero, zero, 3
0014ec  8d801026  ew_cfg r1, r1, r1, 19
0014f0  2d146300  dsmul r8, r6, r6, 0
0014f4  0d000026  ew_cfg zero, zero, zero, 19
0014f8  1d100d00  unlock r26
0014fc  7d100100  xwait r2, 0
001500  7d900600  xwait r13, 0
001504  1d000d00  lock zero, r26
001508  1f010038  addli r2, zero, 7168
00150c  0d000002  ew_cfg zero, zero, zero, 1
001510  0d103000  ewcoeff_cfg zero, zero, r3, 0
001514  0d000204  ew_cfg zero, r4, zero, 2
001518  8d000006  ew_cfg r1, zero, zero, 3
00151c  8d801026  ew_cfg r1, r1, r1, 19
001520  2d116400  dsmul r2, r8, r6, 0
001524  1f012000  addli r2, zero, 16
001528  1f040010  addli r8, zero, 2048
00152c  0d000026  ew_cfg zero, zero, zero, 19
001530  1d100d00  unlock r26
001534  7d800000  xsignal r1, 0
001538  7d000100  xsignal r2, 0
00153c  1f212000  addli r2, zero, 18
001540  7d000100  xsignal r2, 0
001544  1f311000  addli r2, zero, 11
001548  7d100100  xwait r2, 0
00154c  1f413000  addli r2, zero, 28
001550  7d900400  xwait r9, 0
001554  9f040040  addli r9, zero, 8192
001558  7d100100  xwait r2, 0
00155c  1d000d00  lock zero, r26
001560  0d000002  ew_cfg zero, zero, zero, 1
001564  63415fff  loadli.w r2,  -84(r30)
001568  8d110100  ewcoeff_cfg r3, r2, zero, 0
00156c  1f512000  addli r2, zero, 21
001570  0d000204  ew_cfg zero, r4, zero, 2
001574  8d000006  ew_cfg r1, zero, zero, 3
001578  8d801026  ew_cfg r1, r1, r1, 19
00157c  ad048300  dsmadd r9, r6, r8, 0
001580  0d000026  ew_cfg zero, zero, zero, 19
001584  1d100d00  unlock r26
001588  7d000100  xsignal r2, 0
00158c  1d000d00  lock zero, r26
001590  0d000002  ew_cfg zero, zero, zero, 1
001594  63015fff  loadli.w r2,  -88(r30)
001598  0d110000  ewcoeff_cfg r2, zero, zero, 0
00159c  1f313000  addli r2, zero, 27
0015a0  0d000204  ew_cfg zero, r4, zero, 2
0015a4  8d000006  ew_cfg r1, zero, zero, 3
0015a8  8d800026  ew_cfg r1, r1, zero, 19
0015ac  cdd49400  hp_ssmul r9, r9, r9, 0
0015b0  9f440000  addli r9, zero, 4
0015b4  0d000026  ew_cfg zero, zero, zero, 19
0015b8  1d100d00  unlock r26
0015bc  7d000100  xsignal r2, 0
0015c0  1f612000  addli r2, zero, 22
0015c4  7d100100  xwait r2, 0
0015c8  1d000d00  lock zero, r26
0015cc  0d000002  ew_cfg zero, zero, zero, 1
0015d0  0d000204  ew_cfg zero, r4, zero, 2
0015d4  8d000006  ew_cfg r1, zero, zero, 3
0015d8  8d800026  ew_cfg r1, r1, zero, 19
0015dc  0d050014  ew_cfg r10, zero, zero, 10
0015e0  63414fff  loadli.w r2,  -92(r30)
0015e4  0d8d2d16  ew_cfg r26, r27, r2, 11
0015e8  2bc17f41  lui r2, 268284
0015ec  0d00001a  ew_cfg zero, zero, zero, 13
0015f0  0d80241c  ew_cfg zero, r9, r2, 14
0015f4  1f712000  addli r2, zero, 23
0015f8  0d00001e  ew_cfg zero, zero, zero, 15
0015fc  4d240400  sslut r8, r8, 0
001600  0d000014  ew_cfg zero, zero, zero, 10
001604  0d000026  ew_cfg zero, zero, zero, 19
001608  1d100d00  unlock r26
00160c  7d000100  xsignal r2, 0
001610  1f014000  addli r2, zero, 32
001614  7d100100  xwait r2, 0
001618  1d000d00  lock zero, r26
00161c  1f010048  addli r2, zero, 9216
001620  0d000002  ew_cfg zero, zero, zero, 1
001624  8d113000  ewcoeff_cfg r3, zero, r3, 0
001628  9f511000  addli r3, zero, 13
00162c  0d000204  ew_cfg zero, r4, zero, 2
001630  8d000006  ew_cfg r1, zero, zero, 3
001634  8d800026  ew_cfg r1, r1, zero, 19
001638  2d012100  dsmadd r2, r2, r2, 0
00163c  0d000026  ew_cfg zero, zero, zero, 19
001640  1d100d00  unlock r26
001644  7d900100  xwait r3, 0
001648  9f414000  addli r3, zero, 36
00164c  7d900100  xwait r3, 0
001650  1d000d00  lock zero, r26
001654  0d000002  ew_cfg zero, zero, zero, 1
001658  0d105000  ewcoeff_cfg zero, zero, r5, 0
00165c  0d000204  ew_cfg zero, r4, zero, 2
001660  8d000006  ew_cfg r1, zero, zero, 3
001664  8d801026  ew_cfg r1, r1, r1, 19
001668  9f000050  addli r1, zero, 10240
00166c  ad102300  dsmul r1, r6, r2, 0
001670  9f401000  addli r1, zero, 12
001674  0d000026  ew_cfg zero, zero, zero, 19
001678  1d100d00  unlock r26
00167c  7d800000  xsignal r1, 0
001680  9f104000  addli r1, zero, 33
001684  7d800000  xsignal r1, 0
001688  9f304000  addli r1, zero, 35
00168c  7d800000  xsignal r1, 0
001690  eb510ffc  load.d r[4:5], -64(r30)
001694  5b8afdff  j -5040
001698  eb510ffc  load.d r[4:5], -64(r30)
00169c  3ba103f6  bneq r7, zero, -5048
0016a0  97b0b203  sll.d r[2:3], r[6:7], r27
0016a4  9f123000  addli r5, zero, 25
0016a8  1f048010  addli r8, zero, 2112
0016ac  7d900200  xwait r5, 0
0016b0  eb520f01  load.d r[6:7], 16(r30)
0016b4  8ba01210  add.ul r[2:3], r[6:7], r[2:3]
0016b8  9f520000  addli r5, zero, 5
0016bc  1f038000  addli r6, zero, 64
0016c0  1d800200  lock zero, r5
0016c4  958d0d00  dma_cfg r27, r27, zero, 0
0016c8  15800d02  dma_cfg zero, r27, zero, 1
0016cc  15010004  dma_cfg r2, zero, zero, 2
0016d0  95006406  dma_cfg r1, r8, r6, 3
0016d4  9f001000  addli r1, zero, 8
0016d8  1f010001  addli r2, zero, 128
0016dc  15031108  dma_cfg r6, r2, r1, 4
0016e0  9f000008  addli r1, zero, 1024
0016e4  1f010004  addli r2, zero, 512
0016e8  1581b00b  dma_cfg r2, r1, r27, 5
0016ec  9f203000  addli r1, zero, 26
0016f0  15000010  dma_cfg zero, zero, zero, 8
0016f4  35000000  dma_run zero
0016f8  1500b00b  dma_cfg zero, zero, r27, 5
0016fc  15000010  dma_cfg zero, zero, zero, 8
001700  1d900200  unlock r5
001704  7d800000  xsignal r1, 0
001708  db7bfdff  j -5156
00170c  7d000000  xsignal zero, 0
001710  bbe00300  bneq r7, zero, 56
001714  9f200000  addli r1, zero, 2
001718  7d100000  xwait zero, 0
00171c  7d100000  xwait zero, 0
001720  7d100000  xwait zero, 0
001724  7d100000  xwait zero, 0
001728  7d100000  xwait zero, 0
00172c  7d100000  xwait zero, 0
001730  7d100000  xwait zero, 0
001734  7d100000  xwait zero, 0
001738  1d800000  lock zero, r1
00173c  0d000020  ew_cfg zero, zero, zero, 16
001740  1d900000  unlock r1
001744  7d400000  xsignal_mode_cfg zero
001748  9f8ece00  addli sp, sp, 96
00174c  00a00300  mfence { lm, sm, gm }
001750  00100000  exit
001754  00100000  exit
001758  00100000  exit
00175c  00100000  exit
001760  00100000  exit
001764  00100000  exit
001768  00100000  exit
00176c  00100000  exit
001770  00100000  exit
001774  00100000  exit
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
