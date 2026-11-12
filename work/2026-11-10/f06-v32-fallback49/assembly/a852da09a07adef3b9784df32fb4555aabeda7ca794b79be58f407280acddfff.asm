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
0000b4  9f8edefe  addli sp, sp, -152
0000b8  9f100000  addli r1, zero, 1
0000bc  00360002  core_id r12
0000c0  1f8fbe00  addli r30, sp, 88
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600600  beq r12, zero, 24
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
00019c  cb52110a  ble.s r2, r1, 5300
0001a0  33110128  sext_int2long r[3:4], r2
0001a4  b3920028  sext_int2long r[6:7], r1
0001a8  abf0ff7f  lui r1, 524287
0001ac  9f360000  addli r13, zero, 3
0001b0  1f098000  addli r18, zero, 64
0001b4  1f1a0000  addli r20, zero, 1
0001b8  9f0a1000  addli r21, zero, 8
0001bc  9f730000  addli r7, zero, 7
0001c0  1f5b1000  addli r22, zero, 13
0001c4  1f2c0000  addli r24, zero, 2
0001c8  1f4d0000  addli r26, zero, 4
0001cc  ab094000  lui r19, 1024
0001d0  ab0c807f  lui r25, 522240
0001d4  2b02ffff  lui r4, 1048560
0001d8  73342ffa  store.d r[3:4], -88(r30)
0001dc  9b9bf0ff  ori r23, r1, 4095
0001e0  ab700000  lui r1, 7
0001e4  2bf17f7f  lui r2, 522239
0001e8  9f010000  addli r3, zero, 0
0001ec  9b9df0ff  ori r27, r1, 4095
0001f0  1b1ef1ff  ori r28, r2, 4095
0001f4  5b090000  j 72
0001f8  9f301000  addli r1, zero, 11
0001fc  1f098000  addli r18, zero, 64
000200  1f1a0000  addli r20, zero, 1
000204  9f0a1000  addli r21, zero, 8
000208  1f5b1000  addli r22, zero, 13
00020c  1f2c0000  addli r24, zero, 2
000210  1f4d0000  addli r26, zero, 4
000214  7d800000  xsignal r1, 0
000218  9f401000  addli r1, zero, 12
00021c  7d800000  xsignal r1, 0
000220  eb520ffe  load.d r[6:7], -32(r30)
000224  eb508ffa  load.d r[2:3], -88(r30)
000228  e341dfff  loadli.w r3,  -20(r30)
00022c  a7920200  addli.d r[6:7], r[6:7], 1
000230  9f910100  addli r3, r3, 1
000234  93b01204  setlt.sl r1, r[6:7], r[2:3]
000238  37e0000a  beq r1, zero, 5144
00023c  e3004f00  loadli.w r1,  32(r30)
000240  63413f00  loadli.w r2,  28(r30)
000244  0b98d138  mod.s r16, r3, r13
000248  73305ffe  store.d r[6:7], -32(r30)
00024c  e74e3ffe  storeli.w r3, -20(r30)
000250  8b901230  div.s r1, r5, r1
000254  1b37e800  slli r14, r16, 14
000258  8b952030  div.s r11, r1, r2
00025c  8b972531  div.s r15, r11, r18
000260  9bb03700  slli r1, r15, 3
000264  0b111a18  sub.s r2, r20, r1
000268  8b185141  min.s r17, r2, r21
00026c  0b911539  mod.s r2, r11, r17
000270  8b101110  add.s r1, r2, r1
000274  b3820028  zext_int2long r[6:7], r1
000278  674c1ffe  storeli.w r1, -60(r30)
00027c  ab800100  lui r1, 24
000280  0b111710  add.s r2, r14, r1
000284  9f600000  addli r1, zero, 6
000288  73345ffc  store.d r[6:7], -56(r30)
00028c  3b3a1600  bneq r12, r1, 652
000290  6b540f00  load.d r[9:10], 0(r30)
000294  97b26203  sll.d r[6:7], r[6:7], r22
000298  7d900600  xwait r13, 0
00029c  8b225410  add.ul r[6:7], r[9:10], r[6:7]
0002a0  3f743c00  blt.s r24, r3, 284
0002a4  9f510000  addli r3, zero, 5
0002a8  9f600000  addli r1, zero, 6
0002ac  1d800100  lock zero, r3
0002b0  15000014  dma_cfg zero, zero, zero, 10
0002b4  15004015  dma_cfg zero, zero, r20, 10
0002b8  15008015  dma_cfg zero, zero, r24, 10
0002bc  1500d014  dma_cfg zero, zero, r13, 10
0002c0  1500a015  dma_cfg zero, zero, r26, 10
0002c4  15003014  dma_cfg zero, zero, r3, 10
0002c8  15001014  dma_cfg zero, zero, r1, 10
0002cc  9f101000  addli r1, zero, 9
0002d0  15007014  dma_cfg zero, zero, r7, 10
0002d4  15005015  dma_cfg zero, zero, r21, 10
0002d8  15001014  dma_cfg zero, zero, r1, 10
0002dc  9f201000  addli r1, zero, 10
0002e0  15001014  dma_cfg zero, zero, r1, 10
0002e4  9f301000  addli r1, zero, 11
0002e8  15001014  dma_cfg zero, zero, r1, 10
0002ec  9f401000  addli r1, zero, 12
0002f0  15001014  dma_cfg zero, zero, r1, 10
0002f4  9f601000  addli r1, zero, 14
0002f8  15006015  dma_cfg zero, zero, r22, 10
0002fc  15001014  dma_cfg zero, zero, r1, 10
000300  9f701000  addli r1, zero, 15
000304  15001014  dma_cfg zero, zero, r1, 10
000308  9f002000  addli r1, zero, 16
00030c  15001014  dma_cfg zero, zero, r1, 10
000310  9f102000  addli r1, zero, 17
000314  15001014  dma_cfg zero, zero, r1, 10
000318  9f202000  addli r1, zero, 18
00031c  15001014  dma_cfg zero, zero, r1, 10
000320  9f302000  addli r1, zero, 19
000324  15001014  dma_cfg zero, zero, r1, 10
000328  9f402000  addli r1, zero, 20
00032c  15001014  dma_cfg zero, zero, r1, 10
000330  9f502000  addli r1, zero, 21
000334  15001014  dma_cfg zero, zero, r1, 10
000338  9f602000  addli r1, zero, 22
00033c  15001014  dma_cfg zero, zero, r1, 10
000340  9f702000  addli r1, zero, 23
000344  15001014  dma_cfg zero, zero, r1, 10
000348  9f003000  addli r1, zero, 24
00034c  15001014  dma_cfg zero, zero, r1, 10
000350  9f103000  addli r1, zero, 25
000354  15001014  dma_cfg zero, zero, r1, 10
000358  9f203000  addli r1, zero, 26
00035c  15001014  dma_cfg zero, zero, r1, 10
000360  9f303000  addli r1, zero, 27
000364  15001014  dma_cfg zero, zero, r1, 10
000368  9f403000  addli r1, zero, 28
00036c  15001014  dma_cfg zero, zero, r1, 10
000370  9f503000  addli r1, zero, 29
000374  15001014  dma_cfg zero, zero, r1, 10
000378  9f603000  addli r1, zero, 30
00037c  15001014  dma_cfg zero, zero, r1, 10
000380  9f703000  addli r1, zero, 31
000384  15001014  dma_cfg zero, zero, r1, 10
000388  9f000001  addli r1, zero, 128
00038c  150a0a00  dma_cfg r20, r20, zero, 0
000390  150a0002  dma_cfg r20, zero, zero, 1
000394  15000004  dma_cfg zero, zero, zero, 2
000398  15012007  dma_cfg r2, zero, r18, 3
00039c  95008009  dma_cfg r1, zero, r24, 4
0003a0  9f000002  addli r1, zero, 256
0003a4  9500200b  dma_cfg r1, zero, r18, 5
0003a8  15000010  dma_cfg zero, zero, zero, 8
0003ac  35000000  dma_run zero
0003b0  1500400b  dma_cfg zero, zero, r20, 5
0003b4  15000010  dma_cfg zero, zero, zero, 8
0003b8  1d900100  unlock r3
0003bc  ab800100  lui r1, 24
0003c0  674d0ffe  storeli.w zero, -44(r30)
0003c4  9f510000  addli r3, zero, 5
0003c8  1d000d00  lock zero, r26
0003cc  9b900004  ori r1, r1, 64
0003d0  150a0a00  dma_cfg r20, r20, zero, 0
0003d4  15000304  dma_cfg zero, r6, zero, 2
0003d8  8b101710  add.s r1, r14, r1
0003dc  95802207  dma_cfg r1, r5, r18, 3
0003e0  1f030001  addli r6, zero, 128
0003e4  9f020002  addli r5, zero, 256
0003e8  9f600000  addli r1, zero, 6
0003ec  15038909  dma_cfg r6, r18, r24, 4
0003f0  9502230b  dma_cfg r5, r6, r18, 5
0003f4  15000010  dma_cfg zero, zero, zero, 8
0003f8  35000000  dma_run zero
0003fc  1500400b  dma_cfg zero, zero, r20, 5
000400  15000010  dma_cfg zero, zero, zero, 8
000404  1d100d00  unlock r26
000408  1d800100  lock zero, r3
00040c  15000014  dma_cfg zero, zero, zero, 10
000410  15004015  dma_cfg zero, zero, r20, 10
000414  15008015  dma_cfg zero, zero, r24, 10
000418  1500d014  dma_cfg zero, zero, r13, 10
00041c  1500a015  dma_cfg zero, zero, r26, 10
000420  15003014  dma_cfg zero, zero, r3, 10
000424  15001014  dma_cfg zero, zero, r1, 10
000428  9f101000  addli r1, zero, 9
00042c  15007014  dma_cfg zero, zero, r7, 10
000430  15005015  dma_cfg zero, zero, r21, 10
000434  15001014  dma_cfg zero, zero, r1, 10
000438  9f201000  addli r1, zero, 10
00043c  15001014  dma_cfg zero, zero, r1, 10
000440  9f301000  addli r1, zero, 11
000444  15001014  dma_cfg zero, zero, r1, 10
000448  9f401000  addli r1, zero, 12
00044c  15001014  dma_cfg zero, zero, r1, 10
000450  9f601000  addli r1, zero, 14
000454  15006015  dma_cfg zero, zero, r22, 10
000458  15001014  dma_cfg zero, zero, r1, 10
00045c  9f701000  addli r1, zero, 15
000460  15001014  dma_cfg zero, zero, r1, 10
000464  9f002000  addli r1, zero, 16
000468  15001014  dma_cfg zero, zero, r1, 10
00046c  9f102000  addli r1, zero, 17
000470  15001014  dma_cfg zero, zero, r1, 10
000474  9f202000  addli r1, zero, 18
000478  15001014  dma_cfg zero, zero, r1, 10
00047c  9f302000  addli r1, zero, 19
000480  15001014  dma_cfg zero, zero, r1, 10
000484  9f402000  addli r1, zero, 20
000488  15001014  dma_cfg zero, zero, r1, 10
00048c  9f502000  addli r1, zero, 21
000490  15001014  dma_cfg zero, zero, r1, 10
000494  9f602000  addli r1, zero, 22
000498  15001014  dma_cfg zero, zero, r1, 10
00049c  9f702000  addli r1, zero, 23
0004a0  15001014  dma_cfg zero, zero, r1, 10
0004a4  9f003000  addli r1, zero, 24
0004a8  15001014  dma_cfg zero, zero, r1, 10
0004ac  9f103000  addli r1, zero, 25
0004b0  15001014  dma_cfg zero, zero, r1, 10
0004b4  9f203000  addli r1, zero, 26
0004b8  15001014  dma_cfg zero, zero, r1, 10
0004bc  9f303000  addli r1, zero, 27
0004c0  15001014  dma_cfg zero, zero, r1, 10
0004c4  9f403000  addli r1, zero, 28
0004c8  15001014  dma_cfg zero, zero, r1, 10
0004cc  9f503000  addli r1, zero, 29
0004d0  15001014  dma_cfg zero, zero, r1, 10
0004d4  9f603000  addli r1, zero, 30
0004d8  15001014  dma_cfg zero, zero, r1, 10
0004dc  9f703000  addli r1, zero, 31
0004e0  15001014  dma_cfg zero, zero, r1, 10
0004e4  150a0a00  dma_cfg r20, r20, zero, 0
0004e8  150a0002  dma_cfg r20, zero, zero, 1
0004ec  15000004  dma_cfg zero, zero, zero, 2
0004f0  15012007  dma_cfg r2, zero, r18, 3
0004f4  15038009  dma_cfg r6, zero, r24, 4
0004f8  9502200b  dma_cfg r5, zero, r18, 5
0004fc  15000010  dma_cfg zero, zero, zero, 8
000500  35000000  dma_run zero
000504  1500400b  dma_cfg zero, zero, r20, 5
000508  15000010  dma_cfg zero, zero, zero, 8
00050c  1d900100  unlock r3
000510  7d000c00  xsignal r24, 0
000514  db090000  j 76
000518  3b018601  bneq r12, r24, 64
00051c  9f500000  addli r1, zero, 5
000520  7d100c00  xwait r24, 0
000524  7d900000  xwait r1, 0
000528  1d000000  lock zero, zero
00052c  9f100000  addli r1, zero, 1
000530  010c0000  ds_cfg r24, zero, 0
000534  01090002  ds_cfg r18, zero, 1
000538  0109001c  ds_cfg r18, zero, 14
00053c  0109001a  ds_cfg r18, zero, 13
000540  21172103  shuffle_batch r14, r2, r18, 1
000544  1d100000  unlock zero
000548  7d800600  xsignal r13, 0
00054c  674d1ffe  storeli.w r1, -44(r30)
000550  7d000d00  xsignal r26, 0
000554  5b010000  j 8
000558  674d0ffe  storeli.w zero, -44(r30)
00055c  1f030001  addli r6, zero, 128
000560  9bb06700  slli r1, r15, 6
000564  ab410200  lui r3, 36
000568  8b901518  sub.s r1, r11, r1
00056c  9b35f800  slli r11, r16, 15
000570  8b971031  div.s r15, r1, r17
000574  0b943510  add.s r8, r11, r3
000578  b3800728  zext_int2long r[2:3], r15
00057c  674bfffe  storeli.w r15, -76(r30)
000580  97b07002  sll.d r[2:3], r[2:3], r7
000584  97b44003  sll.d r[10:11], r[2:3], r20
000588  733c9ffa  store.d r[10:11], -72(r30)
00058c  3b4a4601  bneq r12, r20, 656
000590  eb508f00  load.d r[2:3], 8(r30)
000594  7d900300  xwait r7, 0
000598  e341dfff  loadli.w r3,  -20(r30)
00059c  8ba09010  add.ul r[2:3], r[2:3], r[10:11]
0005a0  3f643c00  blt.s r24, r3, 280
0005a4  9f520000  addli r5, zero, 5
0005a8  9f610000  addli r3, zero, 6
0005ac  1d800200  lock zero, r5
0005b0  15000014  dma_cfg zero, zero, zero, 10
0005b4  15004015  dma_cfg zero, zero, r20, 10
0005b8  15008015  dma_cfg zero, zero, r24, 10
0005bc  1500d014  dma_cfg zero, zero, r13, 10
0005c0  1500a015  dma_cfg zero, zero, r26, 10
0005c4  15005014  dma_cfg zero, zero, r5, 10
0005c8  15003014  dma_cfg zero, zero, r3, 10
0005cc  9f111000  addli r3, zero, 9
0005d0  15007014  dma_cfg zero, zero, r7, 10
0005d4  15005015  dma_cfg zero, zero, r21, 10
0005d8  15003014  dma_cfg zero, zero, r3, 10
0005dc  9f211000  addli r3, zero, 10
0005e0  15003014  dma_cfg zero, zero, r3, 10
0005e4  9f311000  addli r3, zero, 11
0005e8  15003014  dma_cfg zero, zero, r3, 10
0005ec  9f411000  addli r3, zero, 12
0005f0  15003014  dma_cfg zero, zero, r3, 10
0005f4  9f611000  addli r3, zero, 14
0005f8  15006015  dma_cfg zero, zero, r22, 10
0005fc  15003014  dma_cfg zero, zero, r3, 10
000600  9f711000  addli r3, zero, 15
000604  15003014  dma_cfg zero, zero, r3, 10
000608  9f012000  addli r3, zero, 16
00060c  15003014  dma_cfg zero, zero, r3, 10
000610  9f112000  addli r3, zero, 17
000614  15003014  dma_cfg zero, zero, r3, 10
000618  9f212000  addli r3, zero, 18
00061c  15003014  dma_cfg zero, zero, r3, 10
000620  9f312000  addli r3, zero, 19
000624  15003014  dma_cfg zero, zero, r3, 10
000628  9f412000  addli r3, zero, 20
00062c  15003014  dma_cfg zero, zero, r3, 10
000630  9f512000  addli r3, zero, 21
000634  15003014  dma_cfg zero, zero, r3, 10
000638  9f612000  addli r3, zero, 22
00063c  15003014  dma_cfg zero, zero, r3, 10
000640  9f712000  addli r3, zero, 23
000644  15003014  dma_cfg zero, zero, r3, 10
000648  9f013000  addli r3, zero, 24
00064c  15003014  dma_cfg zero, zero, r3, 10
000650  9f113000  addli r3, zero, 25
000654  15003014  dma_cfg zero, zero, r3, 10
000658  9f213000  addli r3, zero, 26
00065c  15003014  dma_cfg zero, zero, r3, 10
000660  9f313000  addli r3, zero, 27
000664  15003014  dma_cfg zero, zero, r3, 10
000668  9f413000  addli r3, zero, 28
00066c  15003014  dma_cfg zero, zero, r3, 10
000670  9f513000  addli r3, zero, 29
000674  15003014  dma_cfg zero, zero, r3, 10
000678  9f613000  addli r3, zero, 30
00067c  15003014  dma_cfg zero, zero, r3, 10
000680  9f713000  addli r3, zero, 31
000684  15003014  dma_cfg zero, zero, r3, 10
000688  9f010004  addli r3, zero, 512
00068c  150a0a00  dma_cfg r20, r20, zero, 0
000690  150a0002  dma_cfg r20, zero, zero, 1
000694  15000004  dma_cfg zero, zero, zero, 2
000698  15042007  dma_cfg r8, zero, r18, 3
00069c  1503a009  dma_cfg r6, zero, r26, 4
0006a0  9501200b  dma_cfg r3, zero, r18, 5
0006a4  15000010  dma_cfg zero, zero, zero, 8
0006a8  35000000  dma_run zero
0006ac  1500400b  dma_cfg zero, zero, r20, 5
0006b0  15000010  dma_cfg zero, zero, zero, 8
0006b4  1d900200  unlock r5
0006b8  ab410200  lui r3, 36
0006bc  e74d0ffe  storeli.w zero, -36(r30)
0006c0  e70d0ffe  storeli.w zero, -40(r30)
0006c4  9f020004  addli r5, zero, 512
0006c8  9f180000  addli r17, zero, 1
0006cc  1d000d00  lock zero, r26
0006d0  9b910104  ori r3, r3, 64
0006d4  150a0a00  dma_cfg r20, r20, zero, 0
0006d8  15000104  dma_cfg zero, r2, zero, 2
0006dc  8b913510  add.s r3, r11, r3
0006e0  95812007  dma_cfg r3, r1, r18, 3
0006e4  9f000010  addli r1, zero, 2048
0006e8  1f510000  addli r2, zero, 5
0006ec  9f111000  addli r3, zero, 9
0006f0  1503a909  dma_cfg r6, r18, r26, 4
0006f4  9582200b  dma_cfg r5, r1, r18, 5
0006f8  9f600000  addli r1, zero, 6
0006fc  15000010  dma_cfg zero, zero, zero, 8
000700  35000000  dma_run zero
000704  1500400b  dma_cfg zero, zero, r20, 5
000708  15000010  dma_cfg zero, zero, zero, 8
00070c  1d100d00  unlock r26
000710  1d000100  lock zero, r2
000714  15000014  dma_cfg zero, zero, zero, 10
000718  15004015  dma_cfg zero, zero, r20, 10
00071c  15008015  dma_cfg zero, zero, r24, 10
000720  1500d014  dma_cfg zero, zero, r13, 10
000724  1500a015  dma_cfg zero, zero, r26, 10
000728  15002014  dma_cfg zero, zero, r2, 10
00072c  15001014  dma_cfg zero, zero, r1, 10
000730  15007014  dma_cfg zero, zero, r7, 10
000734  15005015  dma_cfg zero, zero, r21, 10
000738  15003014  dma_cfg zero, zero, r3, 10
00073c  9f211000  addli r3, zero, 10
000740  15003014  dma_cfg zero, zero, r3, 10
000744  9f311000  addli r3, zero, 11
000748  15003014  dma_cfg zero, zero, r3, 10
00074c  9f411000  addli r3, zero, 12
000750  15003014  dma_cfg zero, zero, r3, 10
000754  9f611000  addli r3, zero, 14
000758  15006015  dma_cfg zero, zero, r22, 10
00075c  15003014  dma_cfg zero, zero, r3, 10
000760  9f711000  addli r3, zero, 15
000764  15003014  dma_cfg zero, zero, r3, 10
000768  9f012000  addli r3, zero, 16
00076c  15003014  dma_cfg zero, zero, r3, 10
000770  9f112000  addli r3, zero, 17
000774  15003014  dma_cfg zero, zero, r3, 10
000778  9f212000  addli r3, zero, 18
00077c  15003014  dma_cfg zero, zero, r3, 10
000780  9f312000  addli r3, zero, 19
000784  15003014  dma_cfg zero, zero, r3, 10
000788  9f412000  addli r3, zero, 20
00078c  15003014  dma_cfg zero, zero, r3, 10
000790  9f512000  addli r3, zero, 21
000794  15003014  dma_cfg zero, zero, r3, 10
000798  9f612000  addli r3, zero, 22
00079c  15003014  dma_cfg zero, zero, r3, 10
0007a0  9f712000  addli r3, zero, 23
0007a4  15003014  dma_cfg zero, zero, r3, 10
0007a8  9f013000  addli r3, zero, 24
0007ac  15003014  dma_cfg zero, zero, r3, 10
0007b0  9f113000  addli r3, zero, 25
0007b4  15003014  dma_cfg zero, zero, r3, 10
0007b8  9f213000  addli r3, zero, 26
0007bc  15003014  dma_cfg zero, zero, r3, 10
0007c0  9f313000  addli r3, zero, 27
0007c4  15003014  dma_cfg zero, zero, r3, 10
0007c8  9f413000  addli r3, zero, 28
0007cc  15003014  dma_cfg zero, zero, r3, 10
0007d0  9f513000  addli r3, zero, 29
0007d4  15003014  dma_cfg zero, zero, r3, 10
0007d8  9f613000  addli r3, zero, 30
0007dc  15003014  dma_cfg zero, zero, r3, 10
0007e0  9f713000  addli r3, zero, 31
0007e4  15003014  dma_cfg zero, zero, r3, 10
0007e8  150a0a00  dma_cfg r20, r20, zero, 0
0007ec  150a0002  dma_cfg r20, zero, zero, 1
0007f0  15000004  dma_cfg zero, zero, zero, 2
0007f4  15042007  dma_cfg r8, zero, r18, 3
0007f8  1503a009  dma_cfg r6, zero, r26, 4
0007fc  9502200b  dma_cfg r5, zero, r18, 5
000800  15000010  dma_cfg zero, zero, zero, 8
000804  35000000  dma_run zero
000808  1500400b  dma_cfg zero, zero, r20, 5
00080c  15000010  dma_cfg zero, zero, zero, 8
000810  1d100100  unlock r2
000814  7d800000  xsignal r1, 0
000818  db1e0000  j 244
00081c  3741a601  beq r12, r26, 80
000820  9f180000  addli r17, zero, 1
000824  3b137600  bneq r12, r7, 196
000828  9f600000  addli r1, zero, 6
00082c  e70d0ffe  storeli.w zero, -40(r30)
000830  7d900000  xwait r1, 0
000834  9f101000  addli r1, zero, 9
000838  7d900000  xwait r1, 0
00083c  1d000000  lock zero, zero
000840  9f100000  addli r1, zero, 1
000844  010c0000  ds_cfg r24, zero, 0
000848  01030002  ds_cfg r6, zero, 1
00084c  0109001c  ds_cfg r18, zero, 14
000850  0103001a  ds_cfg r6, zero, 13
000854  c1052405  shuffle_coa r11, r8, r18, 2
000858  1d100000  unlock zero
00085c  7d800300  xsignal r7, 0
000860  e74d1ffe  storeli.w r1, -36(r30)
000864  7d800a00  xsignal r21, 0
000868  db140000  j 164
00086c  9f010000  addli r3, zero, 0
000870  9f100000  addli r1, zero, 1
000874  1f110000  addli r2, zero, 1
000878  9f321000  addli r5, zero, 11
00087c  7d100d00  xwait r26, 0
000880  7d900a00  xwait r21, 0
000884  7d900200  xwait r5, 0
000888  9bb2e100  slli r5, r3, 14
00088c  9bb18100  slli r3, r3, 8
000890  1d800000  lock zero, r1
000894  09092901  mm_cfg r18, r18, r18, 0
000898  9792b200  or r5, r5, r11
00089c  9791b100  or r3, r3, r11
0008a0  090d1d04  mm_cfg r26, r26, r1, 2
0008a4  a9015710  mm r3, r14, r5, 8
0008a8  9b021100  andi r5, r2, 1
0008ac  9f110000  addli r3, zero, 1
0008b0  1f010000  addli r2, zero, 0
0008b4  1d900000  unlock r1
0008b8  3bcf02fe  bneq r5, zero, -48
0008bc  9f500000  addli r1, zero, 5
0008c0  e74d0ffe  storeli.w zero, -36(r30)
0008c4  9f180000  addli r17, zero, 1
0008c8  7d800000  xsignal r1, 0
0008cc  9f101000  addli r1, zero, 9
0008d0  7d800000  xsignal r1, 0
0008d4  9f100000  addli r1, zero, 1
0008d8  e70d1ffe  storeli.w r1, -40(r30)
0008dc  9f201000  addli r1, zero, 10
0008e0  7d800000  xsignal r1, 0
0008e4  5b050000  j 40
0008e8  3b70d600  bneq r12, r13, 28
0008ec  9f201000  addli r1, zero, 10
0008f0  e74d0ffe  storeli.w zero, -36(r30)
0008f4  e70d0ffe  storeli.w zero, -40(r30)
0008f8  7d900000  xwait r1, 0
0008fc  7d100b00  xwait r22, 0
000900  db010000  j 12
000904  e74d0ffe  storeli.w zero, -36(r30)
000908  e70d0ffe  storeli.w zero, -40(r30)
00090c  abc00300  lui r1, 60
000910  3d000000  xfence
000914  33070328  zext_int2long r[15:16], r6
000918  00a00300  mfence { lm, sm, gm }
00091c  0b9d1510  add.s r26, r11, r1
000920  9f70f001  addli r1, zero, 255
000924  80a20004  csr_set csr5, r1
000928  00e00200  sync_core
00092c  b7500600  beq r12, zero, 52
000930  b7361601  beq r12, r17, 428
000934  e340afff  loadli.w r1,  -44(r30)
000938  bb8c0000  bneq r1, zero, 800
00093c  9f300000  addli r1, zero, 3
000940  37521602  beq r12, r1, 1172
000944  e300bfff  loadli.w r1,  -40(r30)
000948  3ba80002  bneq r1, zero, 1544
00094c  9f500000  addli r1, zero, 5
000950  b77d1602  beq r12, r1, 1916
000954  9f600000  addli r1, zero, 6
000958  b7431604  beq r12, r1, 2288
00095c  5b4c0100  j 2656
000960  b3000028  zext_int2long r[2:3], zero
000964  3d000000  xfence
000968  00a00300  mfence { lm, sm, gm }
00096c  73381ffe  store.d r[2:3], -16(r30)
000970  27810000  addli.d r[3:4], r[2:3], 0
000974  db030000  j 28
000978  9f730000  addli r7, zero, 7
00097c  eb528fff  load.d r[6:7], -8(r30)
000980  b3800328  zext_int2long r[2:3], r7
000984  93a01204  setlt.ul r1, r[6:7], r[2:3]
000988  27910200  addli.d r[3:4], r[6:7], 1
00098c  37950000  beq r1, zero, 324
000990  9f700000  addli r1, zero, 7
000994  6b540fff  load.d r[9:10], -16(r30)
000998  733c2ffe  store.d r[3:4], -8(r30)
00099c  17331102  sll.d r[7:8], r[3:4], r1
0009a0  db040000  j 36
0009a4  27440400  addli.d r[9:10], r[9:10], 4
0009a8  8b122d11  add.s r5, r26, r18
0009ac  9321e402  setneq.d r3, r[9:10], r[15:16]
0009b0  73e6a200  stores.w r10, 12(r5)
0009b4  73e46201  stores.w r22, 8(r5)
0009b8  73e21200  stores.w r1, 4(r5)
0009bc  73e02200  stores.w r2, 0(r5)
0009c0  b7ee01fe  beq r3, zero, -72
0009c4  8b206410  add.ul r[2:3], r[9:10], r[7:8]
0009c8  1bb92000  slli r18, r1, 2
0009cc  8b902511  add.s r1, r11, r18
0009d0  efc2c000  loads.w r5, 12(r1)
0009d4  efc60000  loads.w r13, 0(r1)
0009d8  6fcc4000  loads.w r24, 4(r1)
0009dc  efca8000  loads.w r21, 8(r1)
0009e0  178a7201  and r20, r5, r23
0009e4  93804c05  setlt.u r1, r25, r20
0009e8  3bb00000  bneq r1, zero, 12
0009ec  1f850200  addli r10, r5, 0
0009f0  5b010000  j 8
0009f4  17953201  or r10, r5, r19
0009f8  17867a01  and r12, r21, r23
0009fc  9380cc04  setlt.u r1, r25, r12
000a00  3bb00000  bneq r1, zero, 12
000a04  1f8b0a00  addli r22, r21, 0
000a08  5b010000  j 8
000a0c  179b3a01  or r22, r21, r19
000a10  97017c01  and r3, r24, r23
000a14  93803c04  setlt.u r1, r25, r3
000a18  3bb00000  bneq r1, zero, 12
000a1c  9f000c00  addli r1, r24, 0
000a20  5b010000  j 8
000a24  97103c01  or r1, r24, r19
000a28  17887601  and r16, r13, r23
000a2c  13810c05  setlt.u r2, r25, r16
000a30  3b500100  bneq r2, zero, 20
000a34  1f810600  addli r2, r13, 0
000a38  13080e05  setlt.u r16, r28, r16
000a3c  37500800  beq r16, zero, 20
000a40  db040000  j 36
000a44  17913601  or r2, r13, r19
000a48  13080e05  setlt.u r16, r28, r16
000a4c  3b600800  bneq r16, zero, 24
000a50  1bc10601  srli r2, r13, 16
000a54  1b011100  andi r2, r2, 1
000a58  0b912610  add.s r2, r13, r2
000a5c  0b11b111  add.s r2, r2, r27
000a60  17014100  and r2, r2, r4
000a64  93013e04  setlt.u r3, r28, r3
000a68  37e00100  beq r3, zero, 24
000a6c  9301ce04  setlt.u r3, r28, r12
000a70  b7b00100  beq r3, zero, 44
000a74  93014e05  setlt.u r3, r28, r20
000a78  bbbc01fe  bneq r3, zero, -212
000a7c  db070000  j 60
000a80  9b400c01  srli r1, r24, 16
000a84  9b801000  andi r1, r1, 1
000a88  8b101c10  add.s r1, r24, r1
000a8c  8b90b011  add.s r1, r1, r27
000a90  97804000  and r1, r1, r4
000a94  9301ce04  setlt.u r3, r28, r12
000a98  3bff01fe  bneq r3, zero, -36
000a9c  9bc10a01  srli r3, r21, 16
000aa0  9b811100  andi r3, r3, 1
000aa4  8b913a10  add.s r3, r21, r3
000aa8  8b91b111  add.s r3, r3, r27
000aac  178b4100  and r22, r3, r4
000ab0  93014e05  setlt.u r3, r28, r20
000ab4  bbcb01fe  bneq r3, zero, -272
000ab8  9bc10201  srli r3, r5, 16
000abc  9b811100  andi r3, r3, 1
000ac0  8b913210  add.s r3, r5, r3
000ac4  8b91b111  add.s r3, r3, r27
000ac8  17854100  and r10, r3, r4
000acc  5bdbffff  j -296
000ad0  00360002  core_id r12
000ad4  00200100  mfence { sm }
000ad8  3b7916ff  bneq r12, r17, -420
000adc  9f001000  addli r1, zero, 8
000ae0  3d000000  xfence
000ae4  00a00300  mfence { lm, sm, gm }
000ae8  33810028  zext_int2long r[3:4], r1
000aec  5b040000  j 32
000af0  9f701000  addli r1, zero, 15
000af4  eb528fff  load.d r[6:7], -8(r30)
000af8  9f730000  addli r7, zero, 7
000afc  b3800028  zext_int2long r[2:3], r1
000b00  93a01204  setlt.ul r1, r[6:7], r[2:3]
000b04  27910200  addli.d r[3:4], r[6:7], 1
000b08  37850000  beq r1, zero, 320
000b0c  17347102  sll.d r[9:10], r[3:4], r7
000b10  33030028  zext_int2long r[7:8], zero
000b14  733c2ffe  store.d r[3:4], -8(r30)
000b18  db040000  j 36
000b1c  27430300  addli.d r[7:8], r[7:8], 4
000b20  0b112d10  add.s r2, r26, r2
000b24  9320e302  setneq.d r1, r[7:8], r[15:16]
000b28  73665100  stores.w r5, 12(r2)
000b2c  73642101  stores.w r18, 8(r2)
000b30  73625101  stores.w r21, 4(r2)
000b34  7360d100  stores.w r13, 0(r2)
000b38  b7ee00fe  beq r1, zero, -72
000b3c  8b208310  add.ul r[2:3], r[7:8], r[9:10]
000b40  1bb12000  slli r2, r1, 2
000b44  8b922510  add.s r5, r11, r2
000b48  efc1c200  loads.w r3, 12(r5)
000b4c  6fcb0200  loads.w r22, 0(r5)
000b50  efc04200  loads.w r1, 4(r5)
000b54  6fca8200  loads.w r20, 8(r5)
000b58  17857101  and r10, r3, r23
000b5c  9382ac04  setlt.u r5, r25, r10
000b60  3bb00200  bneq r5, zero, 12
000b64  9f820100  addli r5, r3, 0
000b68  5b010000  j 8
000b6c  97923101  or r5, r3, r19
000b70  17067a01  and r12, r20, r23
000b74  9386cc04  setlt.u r13, r25, r12
000b78  3bb00600  bneq r13, zero, 12
000b7c  1f090a00  addli r18, r20, 0
000b80  5b010000  j 8
000b84  17193a01  or r18, r20, r19
000b88  178c7001  and r24, r1, r23
000b8c  93868c05  setlt.u r13, r25, r24
000b90  3bb00600  bneq r13, zero, 12
000b94  9f8a0000  addli r21, r1, 0
000b98  5b010000  j 8
000b9c  979a3001  or r21, r1, r19
000ba0  17087b01  and r16, r22, r23
000ba4  93860c05  setlt.u r13, r25, r16
000ba8  3bd00600  bneq r13, zero, 20
000bac  9f060b00  addli r13, r22, 0
000bb0  13080e05  setlt.u r16, r28, r16
000bb4  37500800  beq r16, zero, 20
000bb8  db040000  j 36
000bbc  97163b01  or r13, r22, r19
000bc0  13080e05  setlt.u r16, r28, r16
000bc4  3b600800  bneq r16, zero, 24
000bc8  9b460b01  srli r13, r22, 16
000bcc  9b861600  andi r13, r13, 1
000bd0  8b16db10  add.s r13, r22, r13
000bd4  8b96b611  add.s r13, r13, r27
000bd8  97864600  and r13, r13, r4
000bdc  13088e05  setlt.u r16, r28, r24
000be0  37600800  beq r16, zero, 24
000be4  9300ce04  setlt.u r1, r28, r12
000be8  b7b00000  beq r1, zero, 44
000bec  9300ae04  setlt.u r1, r28, r10
000bf0  bbbc00fe  bneq r1, zero, -212
000bf4  db070000  j 60
000bf8  1bc80001  srli r16, r1, 16
000bfc  1b081800  andi r16, r16, 1
000c00  8b900011  add.s r1, r1, r16
000c04  8b90b011  add.s r1, r1, r27
000c08  978a4000  and r21, r1, r4
000c0c  9300ce04  setlt.u r1, r28, r12
000c10  3bff00fe  bneq r1, zero, -36
000c14  9b400a01  srli r1, r20, 16
000c18  9b801000  andi r1, r1, 1
000c1c  8b101a10  add.s r1, r20, r1
000c20  8b90b011  add.s r1, r1, r27
000c24  17894000  and r18, r1, r4
000c28  9300ae04  setlt.u r1, r28, r10
000c2c  bbcb00fe  bneq r1, zero, -272
000c30  9bc00101  srli r1, r3, 16
000c34  9b801000  andi r1, r1, 1
000c38  8b901110  add.s r1, r3, r1
000c3c  8b90b011  add.s r1, r1, r27
000c40  97824000  and r5, r1, r4
000c44  5bdbffff  j -296
000c48  00360002  core_id r12
000c4c  00200100  mfence { sm }
000c50  e340afff  loadli.w r1,  -44(r30)
000c54  b7a300fe  beq r1, zero, -792
000c58  9f002000  addli r1, zero, 16
000c5c  3d000000  xfence
000c60  00a00300  mfence { lm, sm, gm }
000c64  33810028  zext_int2long r[3:4], r1
000c68  5b040000  j 32
000c6c  9f702000  addli r1, zero, 23
000c70  eb528fff  load.d r[6:7], -8(r30)
000c74  9f730000  addli r7, zero, 7
000c78  b3800028  zext_int2long r[2:3], r1
000c7c  93a01204  setlt.ul r1, r[6:7], r[2:3]
000c80  27910200  addli.d r[3:4], r[6:7], 1
000c84  37850000  beq r1, zero, 320
000c88  17347102  sll.d r[9:10], r[3:4], r7
000c8c  33030028  zext_int2long r[7:8], zero
000c90  733c2ffe  store.d r[3:4], -8(r30)
000c94  db040000  j 36
000c98  27430300  addli.d r[7:8], r[7:8], 4
000c9c  0b112d10  add.s r2, r26, r2
000ca0  9320e302  setneq.d r1, r[7:8], r[15:16]
000ca4  73665100  stores.w r5, 12(r2)
000ca8  73642101  stores.w r18, 8(r2)
000cac  73625101  stores.w r21, 4(r2)
000cb0  7360d100  stores.w r13, 0(r2)
000cb4  b7ee00fe  beq r1, zero, -72
000cb8  8b208310  add.ul r[2:3], r[7:8], r[9:10]
000cbc  1bb12000  slli r2, r1, 2
000cc0  8b922510  add.s r5, r11, r2
000cc4  efc1c200  loads.w r3, 12(r5)
000cc8  6fcb0200  loads.w r22, 0(r5)
000ccc  efc04200  loads.w r1, 4(r5)
000cd0  6fca8200  loads.w r20, 8(r5)
000cd4  17857101  and r10, r3, r23
000cd8  9382ac04  setlt.u r5, r25, r10
000cdc  3bb00200  bneq r5, zero, 12
000ce0  9f820100  addli r5, r3, 0
000ce4  5b010000  j 8
000ce8  97923101  or r5, r3, r19
000cec  17067a01  and r12, r20, r23
000cf0  9386cc04  setlt.u r13, r25, r12
000cf4  3bb00600  bneq r13, zero, 12
000cf8  1f090a00  addli r18, r20, 0
000cfc  5b010000  j 8
000d00  17193a01  or r18, r20, r19
000d04  178c7001  and r24, r1, r23
000d08  93868c05  setlt.u r13, r25, r24
000d0c  3bb00600  bneq r13, zero, 12
000d10  9f8a0000  addli r21, r1, 0
000d14  5b010000  j 8
000d18  979a3001  or r21, r1, r19
000d1c  17087b01  and r16, r22, r23
000d20  93860c05  setlt.u r13, r25, r16
000d24  3bd00600  bneq r13, zero, 20
000d28  9f060b00  addli r13, r22, 0
000d2c  13080e05  setlt.u r16, r28, r16
000d30  37500800  beq r16, zero, 20
000d34  db040000  j 36
000d38  97163b01  or r13, r22, r19
000d3c  13080e05  setlt.u r16, r28, r16
000d40  3b600800  bneq r16, zero, 24
000d44  9b460b01  srli r13, r22, 16
000d48  9b861600  andi r13, r13, 1
000d4c  8b16db10  add.s r13, r22, r13
000d50  8b96b611  add.s r13, r13, r27
000d54  97864600  and r13, r13, r4
000d58  13088e05  setlt.u r16, r28, r24
000d5c  37600800  beq r16, zero, 24
000d60  9300ce04  setlt.u r1, r28, r12
000d64  b7b00000  beq r1, zero, 44
000d68  9300ae04  setlt.u r1, r28, r10
000d6c  bbbc00fe  bneq r1, zero, -212
000d70  db070000  j 60
000d74  1bc80001  srli r16, r1, 16
000d78  1b081800  andi r16, r16, 1
000d7c  8b900011  add.s r1, r1, r16
000d80  8b90b011  add.s r1, r1, r27
000d84  978a4000  and r21, r1, r4
000d88  9300ce04  setlt.u r1, r28, r12
000d8c  3bff00fe  bneq r1, zero, -36
000d90  9b400a01  srli r1, r20, 16
000d94  9b801000  andi r1, r1, 1
000d98  8b101a10  add.s r1, r20, r1
000d9c  8b90b011  add.s r1, r1, r27
000da0  17894000  and r18, r1, r4
000da4  9300ae04  setlt.u r1, r28, r10
000da8  bbcb00fe  bneq r1, zero, -272
000dac  9bc00101  srli r1, r3, 16
000db0  9b801000  andi r1, r1, 1
000db4  8b901110  add.s r1, r3, r1
000db8  8b90b011  add.s r1, r1, r27
000dbc  97824000  and r5, r1, r4
000dc0  5bdbffff  j -296
000dc4  00360002  core_id r12
000dc8  00200100  mfence { sm }
000dcc  9f300000  addli r1, zero, 3
000dd0  bb5d16fc  bneq r12, r1, -1164
000dd4  9f003000  addli r1, zero, 24
000dd8  3d000000  xfence
000ddc  00a00300  mfence { lm, sm, gm }
000de0  33810028  zext_int2long r[3:4], r1
000de4  5b040000  j 32
000de8  9f703000  addli r1, zero, 31
000dec  eb528fff  load.d r[6:7], -8(r30)
000df0  9f730000  addli r7, zero, 7
000df4  b3800028  zext_int2long r[2:3], r1
000df8  93a01204  setlt.ul r1, r[6:7], r[2:3]
000dfc  27910200  addli.d r[3:4], r[6:7], 1
000e00  37850000  beq r1, zero, 320
000e04  17347102  sll.d r[9:10], r[3:4], r7
000e08  33030028  zext_int2long r[7:8], zero
000e0c  733c2ffe  store.d r[3:4], -8(r30)
000e10  db040000  j 36
000e14  27430300  addli.d r[7:8], r[7:8], 4
000e18  0b112d10  add.s r2, r26, r2
000e1c  9320e302  setneq.d r1, r[7:8], r[15:16]
000e20  73665100  stores.w r5, 12(r2)
000e24  73642101  stores.w r18, 8(r2)
000e28  73625101  stores.w r21, 4(r2)
000e2c  7360d100  stores.w r13, 0(r2)
000e30  b7ee00fe  beq r1, zero, -72
000e34  8b208310  add.ul r[2:3], r[7:8], r[9:10]
000e38  1bb12000  slli r2, r1, 2
000e3c  8b922510  add.s r5, r11, r2
000e40  efc1c200  loads.w r3, 12(r5)
000e44  6fcb0200  loads.w r22, 0(r5)
000e48  efc04200  loads.w r1, 4(r5)
000e4c  6fca8200  loads.w r20, 8(r5)
000e50  17857101  and r10, r3, r23
000e54  9382ac04  setlt.u r5, r25, r10
000e58  3bb00200  bneq r5, zero, 12
000e5c  9f820100  addli r5, r3, 0
000e60  5b010000  j 8
000e64  97923101  or r5, r3, r19
000e68  17067a01  and r12, r20, r23
000e6c  9386cc04  setlt.u r13, r25, r12
000e70  3bb00600  bneq r13, zero, 12
000e74  1f090a00  addli r18, r20, 0
000e78  5b010000  j 8
000e7c  17193a01  or r18, r20, r19
000e80  178c7001  and r24, r1, r23
000e84  93868c05  setlt.u r13, r25, r24
000e88  3bb00600  bneq r13, zero, 12
000e8c  9f8a0000  addli r21, r1, 0
000e90  5b010000  j 8
000e94  979a3001  or r21, r1, r19
000e98  17087b01  and r16, r22, r23
000e9c  93860c05  setlt.u r13, r25, r16
000ea0  3bd00600  bneq r13, zero, 20
000ea4  9f060b00  addli r13, r22, 0
000ea8  13080e05  setlt.u r16, r28, r16
000eac  37500800  beq r16, zero, 20
000eb0  db040000  j 36
000eb4  97163b01  or r13, r22, r19
000eb8  13080e05  setlt.u r16, r28, r16
000ebc  3b600800  bneq r16, zero, 24
000ec0  9b460b01  srli r13, r22, 16
000ec4  9b861600  andi r13, r13, 1
000ec8  8b16db10  add.s r13, r22, r13
000ecc  8b96b611  add.s r13, r13, r27
000ed0  97864600  and r13, r13, r4
000ed4  13088e05  setlt.u r16, r28, r24
000ed8  37600800  beq r16, zero, 24
000edc  9300ce04  setlt.u r1, r28, r12
000ee0  b7b00000  beq r1, zero, 44
000ee4  9300ae04  setlt.u r1, r28, r10
000ee8  bbbc00fe  bneq r1, zero, -212
000eec  db070000  j 60
000ef0  1bc80001  srli r16, r1, 16
000ef4  1b081800  andi r16, r16, 1
000ef8  8b900011  add.s r1, r1, r16
000efc  8b90b011  add.s r1, r1, r27
000f00  978a4000  and r21, r1, r4
000f04  9300ce04  setlt.u r1, r28, r12
000f08  3bff00fe  bneq r1, zero, -36
000f0c  9b400a01  srli r1, r20, 16
000f10  9b801000  andi r1, r1, 1
000f14  8b101a10  add.s r1, r20, r1
000f18  8b90b011  add.s r1, r1, r27
000f1c  17894000  and r18, r1, r4
000f20  9300ae04  setlt.u r1, r28, r10
000f24  bbcb00fe  bneq r1, zero, -272
000f28  9bc00101  srli r1, r3, 16
000f2c  9b801000  andi r1, r1, 1
000f30  8b901110  add.s r1, r3, r1
000f34  8b90b011  add.s r1, r1, r27
000f38  97824000  and r5, r1, r4
000f3c  5bdbffff  j -296
000f40  00360002  core_id r12
000f44  00200100  mfence { sm }
000f48  e300bfff  loadli.w r1,  -40(r30)
000f4c  378800fc  beq r1, zero, -1536
000f50  9f004000  addli r1, zero, 32
000f54  3d000000  xfence
000f58  00a00300  mfence { lm, sm, gm }
000f5c  33810028  zext_int2long r[3:4], r1
000f60  5b040000  j 32
000f64  9f704000  addli r1, zero, 39
000f68  eb528fff  load.d r[6:7], -8(r30)
000f6c  9f730000  addli r7, zero, 7
000f70  b3800028  zext_int2long r[2:3], r1
000f74  93a01204  setlt.ul r1, r[6:7], r[2:3]
000f78  27910200  addli.d r[3:4], r[6:7], 1
000f7c  37850000  beq r1, zero, 320
000f80  17347102  sll.d r[9:10], r[3:4], r7
000f84  33030028  zext_int2long r[7:8], zero
000f88  733c2ffe  store.d r[3:4], -8(r30)
000f8c  db040000  j 36
000f90  27430300  addli.d r[7:8], r[7:8], 4
000f94  0b112d10  add.s r2, r26, r2
000f98  9320e302  setneq.d r1, r[7:8], r[15:16]
000f9c  73665100  stores.w r5, 12(r2)
000fa0  73642101  stores.w r18, 8(r2)
000fa4  73625101  stores.w r21, 4(r2)
000fa8  7360d100  stores.w r13, 0(r2)
000fac  b7ee00fe  beq r1, zero, -72
000fb0  8b208310  add.ul r[2:3], r[7:8], r[9:10]
000fb4  1bb12000  slli r2, r1, 2
000fb8  8b922510  add.s r5, r11, r2
000fbc  efc1c200  loads.w r3, 12(r5)
000fc0  6fcb0200  loads.w r22, 0(r5)
000fc4  efc04200  loads.w r1, 4(r5)
000fc8  6fca8200  loads.w r20, 8(r5)
000fcc  17857101  and r10, r3, r23
000fd0  9382ac04  setlt.u r5, r25, r10
000fd4  3bb00200  bneq r5, zero, 12
000fd8  9f820100  addli r5, r3, 0
000fdc  5b010000  j 8
000fe0  97923101  or r5, r3, r19
000fe4  17067a01  and r12, r20, r23
000fe8  9386cc04  setlt.u r13, r25, r12
000fec  3bb00600  bneq r13, zero, 12
000ff0  1f090a00  addli r18, r20, 0
000ff4  5b010000  j 8
000ff8  17193a01  or r18, r20, r19
000ffc  178c7001  and r24, r1, r23
001000  93868c05  setlt.u r13, r25, r24
001004  3bb00600  bneq r13, zero, 12
001008  9f8a0000  addli r21, r1, 0
00100c  5b010000  j 8
001010  979a3001  or r21, r1, r19
001014  17087b01  and r16, r22, r23
001018  93860c05  setlt.u r13, r25, r16
00101c  3bd00600  bneq r13, zero, 20
001020  9f060b00  addli r13, r22, 0
001024  13080e05  setlt.u r16, r28, r16
001028  37500800  beq r16, zero, 20
00102c  db040000  j 36
001030  97163b01  or r13, r22, r19
001034  13080e05  setlt.u r16, r28, r16
001038  3b600800  bneq r16, zero, 24
00103c  9b460b01  srli r13, r22, 16
001040  9b861600  andi r13, r13, 1
001044  8b16db10  add.s r13, r22, r13
001048  8b96b611  add.s r13, r13, r27
00104c  97864600  and r13, r13, r4
001050  13088e05  setlt.u r16, r28, r24
001054  37600800  beq r16, zero, 24
001058  9300ce04  setlt.u r1, r28, r12
00105c  b7b00000  beq r1, zero, 44
001060  9300ae04  setlt.u r1, r28, r10
001064  bbbc00fe  bneq r1, zero, -212
001068  db070000  j 60
00106c  1bc80001  srli r16, r1, 16
001070  1b081800  andi r16, r16, 1
001074  8b900011  add.s r1, r1, r16
001078  8b90b011  add.s r1, r1, r27
00107c  978a4000  and r21, r1, r4
001080  9300ce04  setlt.u r1, r28, r12
001084  3bff00fe  bneq r1, zero, -36
001088  9b400a01  srli r1, r20, 16
00108c  9b801000  andi r1, r1, 1
001090  8b101a10  add.s r1, r20, r1
001094  8b90b011  add.s r1, r1, r27
001098  17894000  and r18, r1, r4
00109c  9300ae04  setlt.u r1, r28, r10
0010a0  bbcb00fe  bneq r1, zero, -272
0010a4  9bc00101  srli r1, r3, 16
0010a8  9b801000  andi r1, r1, 1
0010ac  8b901110  add.s r1, r3, r1
0010b0  8b90b011  add.s r1, r1, r27
0010b4  97824000  and r5, r1, r4
0010b8  5bdbffff  j -296
0010bc  00360002  core_id r12
0010c0  00200100  mfence { sm }
0010c4  9f500000  addli r1, zero, 5
0010c8  3b3216fc  bneq r12, r1, -1908
0010cc  9f005000  addli r1, zero, 40
0010d0  3d000000  xfence
0010d4  00a00300  mfence { lm, sm, gm }
0010d8  33810028  zext_int2long r[3:4], r1
0010dc  5b040000  j 32
0010e0  9f705000  addli r1, zero, 47
0010e4  eb528fff  load.d r[6:7], -8(r30)
0010e8  9f730000  addli r7, zero, 7
0010ec  b3800028  zext_int2long r[2:3], r1
0010f0  93a01204  setlt.ul r1, r[6:7], r[2:3]
0010f4  27910200  addli.d r[3:4], r[6:7], 1
0010f8  37850000  beq r1, zero, 320
0010fc  17347102  sll.d r[9:10], r[3:4], r7
001100  33030028  zext_int2long r[7:8], zero
001104  733c2ffe  store.d r[3:4], -8(r30)
001108  db040000  j 36
00110c  27430300  addli.d r[7:8], r[7:8], 4
001110  0b112d10  add.s r2, r26, r2
001114  9320e302  setneq.d r1, r[7:8], r[15:16]
001118  73665100  stores.w r5, 12(r2)
00111c  73642101  stores.w r18, 8(r2)
001120  73625101  stores.w r21, 4(r2)
001124  7360d100  stores.w r13, 0(r2)
001128  b7ee00fe  beq r1, zero, -72
00112c  8b208310  add.ul r[2:3], r[7:8], r[9:10]
001130  1bb12000  slli r2, r1, 2
001134  8b922510  add.s r5, r11, r2
001138  efc1c200  loads.w r3, 12(r5)
00113c  6fcb0200  loads.w r22, 0(r5)
001140  efc04200  loads.w r1, 4(r5)
001144  6fca8200  loads.w r20, 8(r5)
001148  17857101  and r10, r3, r23
00114c  9382ac04  setlt.u r5, r25, r10
001150  3bb00200  bneq r5, zero, 12
001154  9f820100  addli r5, r3, 0
001158  5b010000  j 8
00115c  97923101  or r5, r3, r19
001160  17067a01  and r12, r20, r23
001164  9386cc04  setlt.u r13, r25, r12
001168  3bb00600  bneq r13, zero, 12
00116c  1f090a00  addli r18, r20, 0
001170  5b010000  j 8
001174  17193a01  or r18, r20, r19
001178  178c7001  and r24, r1, r23
00117c  93868c05  setlt.u r13, r25, r24
001180  3bb00600  bneq r13, zero, 12
001184  9f8a0000  addli r21, r1, 0
001188  5b010000  j 8
00118c  979a3001  or r21, r1, r19
001190  17087b01  and r16, r22, r23
001194  93860c05  setlt.u r13, r25, r16
001198  3bd00600  bneq r13, zero, 20
00119c  9f060b00  addli r13, r22, 0
0011a0  13080e05  setlt.u r16, r28, r16
0011a4  37500800  beq r16, zero, 20
0011a8  db040000  j 36
0011ac  97163b01  or r13, r22, r19
0011b0  13080e05  setlt.u r16, r28, r16
0011b4  3b600800  bneq r16, zero, 24
0011b8  9b460b01  srli r13, r22, 16
0011bc  9b861600  andi r13, r13, 1
0011c0  8b16db10  add.s r13, r22, r13
0011c4  8b96b611  add.s r13, r13, r27
0011c8  97864600  and r13, r13, r4
0011cc  13088e05  setlt.u r16, r28, r24
0011d0  37600800  beq r16, zero, 24
0011d4  9300ce04  setlt.u r1, r28, r12
0011d8  b7b00000  beq r1, zero, 44
0011dc  9300ae04  setlt.u r1, r28, r10
0011e0  bbbc00fe  bneq r1, zero, -212
0011e4  db070000  j 60
0011e8  1bc80001  srli r16, r1, 16
0011ec  1b081800  andi r16, r16, 1
0011f0  8b900011  add.s r1, r1, r16
0011f4  8b90b011  add.s r1, r1, r27
0011f8  978a4000  and r21, r1, r4
0011fc  9300ce04  setlt.u r1, r28, r12
001200  3bff00fe  bneq r1, zero, -36
001204  9b400a01  srli r1, r20, 16
001208  9b801000  andi r1, r1, 1
00120c  8b101a10  add.s r1, r20, r1
001210  8b90b011  add.s r1, r1, r27
001214  17894000  and r18, r1, r4
001218  9300ae04  setlt.u r1, r28, r10
00121c  bbcb00fe  bneq r1, zero, -272
001220  9bc00101  srli r1, r3, 16
001224  9b801000  andi r1, r1, 1
001228  8b901110  add.s r1, r3, r1
00122c  8b90b011  add.s r1, r1, r27
001230  97824000  and r5, r1, r4
001234  5bdbffff  j -296
001238  00360002  core_id r12
00123c  00200100  mfence { sm }
001240  9f600000  addli r1, zero, 6
001244  bb651600  bneq r12, r1, 376
001248  9f006000  addli r1, zero, 48
00124c  3d000000  xfence
001250  00a00300  mfence { lm, sm, gm }
001254  33810028  zext_int2long r[3:4], r1
001258  5b040000  j 32
00125c  9f706000  addli r1, zero, 55
001260  eb528fff  load.d r[6:7], -8(r30)
001264  9f730000  addli r7, zero, 7
001268  b3800028  zext_int2long r[2:3], r1
00126c  93a01204  setlt.ul r1, r[6:7], r[2:3]
001270  27910200  addli.d r[3:4], r[6:7], 1
001274  37850000  beq r1, zero, 320
001278  17347102  sll.d r[9:10], r[3:4], r7
00127c  33030028  zext_int2long r[7:8], zero
001280  733c2ffe  store.d r[3:4], -8(r30)
001284  db040000  j 36
001288  27430300  addli.d r[7:8], r[7:8], 4
00128c  0b112d10  add.s r2, r26, r2
001290  9320e302  setneq.d r1, r[7:8], r[15:16]
001294  73665100  stores.w r5, 12(r2)
001298  73642101  stores.w r18, 8(r2)
00129c  73625101  stores.w r21, 4(r2)
0012a0  7360d100  stores.w r13, 0(r2)
0012a4  b7ee00fe  beq r1, zero, -72
0012a8  8b208310  add.ul r[2:3], r[7:8], r[9:10]
0012ac  1bb12000  slli r2, r1, 2
0012b0  8b922510  add.s r5, r11, r2
0012b4  efc1c200  loads.w r3, 12(r5)
0012b8  6fcb0200  loads.w r22, 0(r5)
0012bc  efc04200  loads.w r1, 4(r5)
0012c0  6fca8200  loads.w r20, 8(r5)
0012c4  17857101  and r10, r3, r23
0012c8  9382ac04  setlt.u r5, r25, r10
0012cc  3bb00200  bneq r5, zero, 12
0012d0  9f820100  addli r5, r3, 0
0012d4  5b010000  j 8
0012d8  97923101  or r5, r3, r19
0012dc  17067a01  and r12, r20, r23
0012e0  9386cc04  setlt.u r13, r25, r12
0012e4  3bb00600  bneq r13, zero, 12
0012e8  1f090a00  addli r18, r20, 0
0012ec  5b010000  j 8
0012f0  17193a01  or r18, r20, r19
0012f4  178c7001  and r24, r1, r23
0012f8  93868c05  setlt.u r13, r25, r24
0012fc  3bb00600  bneq r13, zero, 12
001300  9f8a0000  addli r21, r1, 0
001304  5b010000  j 8
001308  979a3001  or r21, r1, r19
00130c  17087b01  and r16, r22, r23
001310  93860c05  setlt.u r13, r25, r16
001314  3bd00600  bneq r13, zero, 20
001318  9f060b00  addli r13, r22, 0
00131c  13080e05  setlt.u r16, r28, r16
001320  37500800  beq r16, zero, 20
001324  db040000  j 36
001328  97163b01  or r13, r22, r19
00132c  13080e05  setlt.u r16, r28, r16
001330  3b600800  bneq r16, zero, 24
001334  9b460b01  srli r13, r22, 16
001338  9b861600  andi r13, r13, 1
00133c  8b16db10  add.s r13, r22, r13
001340  8b96b611  add.s r13, r13, r27
001344  97864600  and r13, r13, r4
001348  13088e05  setlt.u r16, r28, r24
00134c  37600800  beq r16, zero, 24
001350  9300ce04  setlt.u r1, r28, r12
001354  b7b00000  beq r1, zero, 44
001358  9300ae04  setlt.u r1, r28, r10
00135c  bbbc00fe  bneq r1, zero, -212
001360  db070000  j 60
001364  1bc80001  srli r16, r1, 16
001368  1b081800  andi r16, r16, 1
00136c  8b900011  add.s r1, r1, r16
001370  8b90b011  add.s r1, r1, r27
001374  978a4000  and r21, r1, r4
001378  9300ce04  setlt.u r1, r28, r12
00137c  3bff00fe  bneq r1, zero, -36
001380  9b400a01  srli r1, r20, 16
001384  9b801000  andi r1, r1, 1
001388  8b101a10  add.s r1, r20, r1
00138c  8b90b011  add.s r1, r1, r27
001390  17894000  and r18, r1, r4
001394  9300ae04  setlt.u r1, r28, r10
001398  bbcb00fe  bneq r1, zero, -272
00139c  9bc00101  srli r1, r3, 16
0013a0  9b801000  andi r1, r1, 1
0013a4  8b901110  add.s r1, r3, r1
0013a8  8b90b011  add.s r1, r1, r27
0013ac  97824000  and r5, r1, r4
0013b0  5bdbffff  j -296
0013b4  00360002  core_id r12
0013b8  00200100  mfence { sm }
0013bc  b3000028  zext_int2long r[2:3], zero
0013c0  73381ffe  store.d r[2:3], -16(r30)
0013c4  e340bfff  loadli.w r1,  -36(r30)
0013c8  b7f50000  beq r1, zero, 380
0013cc  9f007000  addli r1, zero, 56
0013d0  3d000000  xfence
0013d4  00a00300  mfence { lm, sm, gm }
0013d8  33810028  zext_int2long r[3:4], r1
0013dc  5b040000  j 32
0013e0  9f707000  addli r1, zero, 63
0013e4  eb528fff  load.d r[6:7], -8(r30)
0013e8  9f730000  addli r7, zero, 7
0013ec  b3800028  zext_int2long r[2:3], r1
0013f0  93a01204  setlt.ul r1, r[6:7], r[2:3]
0013f4  27910200  addli.d r[3:4], r[6:7], 1
0013f8  37950000  beq r1, zero, 324
0013fc  9f700000  addli r1, zero, 7
001400  733c2ffe  store.d r[3:4], -8(r30)
001404  17331102  sll.d r[7:8], r[3:4], r1
001408  6b510fff  load.d r[3:4], -16(r30)
00140c  db040000  j 36
001410  27410100  addli.d r[3:4], r[3:4], 4
001414  8b122d11  add.s r5, r26, r18
001418  9320e102  setneq.d r1, r[3:4], r[15:16]
00141c  73e6a200  stores.w r10, 12(r5)
001420  73e45201  stores.w r21, 8(r5)
001424  73e28201  stores.w r24, 4(r5)
001428  73e00201  stores.w r16, 0(r5)
00142c  b7de00fe  beq r1, zero, -76
001430  0b246110  add.ul r[9:10], r[3:4], r[7:8]
001434  1b392400  slli r18, r8, 2
001438  0b942511  add.s r8, r11, r18
00143c  ef42c400  loads.w r5, 12(r8)
001440  ef460400  loads.w r13, 0(r8)
001444  ef404400  loads.w r1, 4(r8)
001448  6f4b8400  loads.w r22, 8(r8)
00144c  178a7201  and r20, r5, r23
001450  13844c05  setlt.u r8, r25, r20
001454  3b300400  bneq r8, zero, 12
001458  1f850200  addli r10, r5, 0
00145c  5b010000  j 8
001460  17953201  or r10, r5, r19
001464  17067b01  and r12, r22, r23
001468  1384cc04  setlt.u r8, r25, r12
00146c  3b300400  bneq r8, zero, 12
001470  9f0a0b00  addli r21, r22, 0
001474  5b010000  j 8
001478  971a3b01  or r21, r22, r19
00147c  97887001  and r17, r1, r23
001480  13841c05  setlt.u r8, r25, r17
001484  3b300400  bneq r8, zero, 12
001488  1f8c0000  addli r24, r1, 0
00148c  5b010000  j 8
001490  179c3001  or r24, r1, r19
001494  17847601  and r8, r13, r23
001498  93848c04  setlt.u r9, r25, r8
00149c  3bd00400  bneq r9, zero, 20
0014a0  1f880600  addli r16, r13, 0
0014a4  13048e04  setlt.u r8, r28, r8
0014a8  37500400  beq r8, zero, 20
0014ac  db040000  j 36
0014b0  17983601  or r16, r13, r19
0014b4  13048e04  setlt.u r8, r28, r8
0014b8  3b600400  bneq r8, zero, 24
0014bc  1bc40601  srli r8, r13, 16
0014c0  1b041400  andi r8, r8, 1
0014c4  0b948610  add.s r8, r13, r8
0014c8  0b14b411  add.s r8, r8, r27
0014cc  17084400  and r16, r8, r4
0014d0  13041e05  setlt.u r8, r28, r17
0014d4  37600400  beq r8, zero, 24
0014d8  9300ce04  setlt.u r1, r28, r12
0014dc  b7b00000  beq r1, zero, 44
0014e0  93004e05  setlt.u r1, r28, r20
0014e4  bbbc00fe  bneq r1, zero, -212
0014e8  db070000  j 60
0014ec  1bc40001  srli r8, r1, 16
0014f0  1b041400  andi r8, r8, 1
0014f4  8b908010  add.s r1, r1, r8
0014f8  8b90b011  add.s r1, r1, r27
0014fc  178c4000  and r24, r1, r4
001500  9300ce04  setlt.u r1, r28, r12
001504  3bff00fe  bneq r1, zero, -36
001508  9b400b01  srli r1, r22, 16
00150c  9b801000  andi r1, r1, 1
001510  8b101b10  add.s r1, r22, r1
001514  8b90b011  add.s r1, r1, r27
001518  978a4000  and r21, r1, r4
00151c  93004e05  setlt.u r1, r28, r20
001520  bbcb00fe  bneq r1, zero, -272
001524  9bc00201  srli r1, r5, 16
001528  9b801000  andi r1, r1, 1
00152c  8b901210  add.s r1, r5, r1
001530  8b90b011  add.s r1, r1, r27
001534  17854000  and r10, r1, r4
001538  5bdbffff  j -296
00153c  00360002  core_id r12
001540  00200100  mfence { sm }
001544  9f70f001  addli r1, zero, 255
001548  9f360000  addli r13, zero, 3
00154c  80a20004  csr_set csr5, r1
001550  00e00200  sync_core
001554  b712d6f6  beq r12, r13, -4956
001558  1f098000  addli r18, zero, 64
00155c  1f1a0000  addli r20, zero, 1
001560  9f0a1000  addli r21, zero, 8
001564  1f5b1000  addli r22, zero, 13
001568  1f2c0000  addli r24, zero, 2
00156c  1f4d0000  addli r26, zero, 4
001570  bb4206f6  bneq r12, zero, -4944
001574  e3406fff  loadli.w r1,  -76(r30)
001578  1f010007  addli r2, zero, 896
00157c  eb540fff  load.d r[10:11], -16(r30)
001580  33010128  zext_int2long r[3:4], r2
001584  9bb07000  slli r1, r1, 7
001588  b3820028  zext_int2long r[6:7], r1
00158c  e3408fff  loadli.w r1,  -60(r30)
001590  0ba12240  min.ul r[3:4], r[6:7], r[3:4]
001594  9bb06000  slli r1, r1, 6
001598  b3930028  sext_int2long r[8:9], r1
00159c  a7000101  addli.d r[2:3], r[3:4], 128
0015a0  9f112000  addli r3, zero, 17
0015a4  8bb49340  min.sl r[10:11], r[8:9], r[10:11]
0015a8  8ba05048  max.ul r[2:3], r[2:3], r[6:7]
0015ac  a7848400  addli.d r[10:11], r[10:11], 64
0015b0  8bb05018  sub.sl r[2:3], r[2:3], r[6:7]
0015b4  8bb27448  max.sl r[6:7], r[10:11], r[8:9]
0015b8  8ba0e040  min.ul r[2:3], r[2:3], r[15:16]
0015bc  b3040928  zext_int2long r[10:11], r18
0015c0  6b570f01  load.d r[15:16], 16(r30)
0015c4  8bb27218  sub.sl r[6:7], r[6:7], r[8:9]
0015c8  eb538ffc  load.d r[8:9], -56(r30)
0015cc  8bb29240  min.sl r[6:7], r[6:7], r[10:11]
0015d0  eb548ffb  load.d r[10:11], -72(r30)
0015d4  97b33302  sll.d r[8:9], r[8:9], r3
0015d8  9f411000  addli r3, zero, 12
0015dc  8b237710  add.ul r[8:9], r[15:16], r[8:9]
0015e0  7d900100  xwait r3, 0
0015e4  abc10300  lui r3, 60
0015e8  8ba39310  add.ul r[8:9], r[8:9], r[10:11]
0015ec  1f550000  addli r10, zero, 5
0015f0  9b910104  ori r3, r3, 64
0015f4  9ff43000  addli r9, r1, 31
0015f8  9bb01000  slli r1, r1, 1
0015fc  1f010001  addli r2, zero, 128
001600  1d000500  lock zero, r10
001604  8b913510  add.s r3, r11, r3
001608  9b80e003  andi r1, r1, 62
00160c  150a0a00  dma_cfg r20, r20, zero, 0
001610  15000a02  dma_cfg zero, r20, zero, 1
001614  15040004  dma_cfg r8, zero, zero, 2
001618  95832107  dma_cfg r7, r3, r18, 3
00161c  9bc15400  srli r3, r9, 5
001620  9f730000  addli r7, zero, 7
001624  15093108  dma_cfg r18, r2, r3, 4
001628  1f010004  addli r2, zero, 512
00162c  9f010010  addli r3, zero, 2048
001630  9501510a  dma_cfg r3, r2, r5, 5
001634  15001010  dma_cfg zero, zero, r1, 8
001638  35000000  dma_run zero
00163c  1500400b  dma_cfg zero, zero, r20, 5
001640  15000010  dma_cfg zero, zero, zero, 8
001644  1d100500  unlock r10
001648  7d000b00  xsignal r22, 0
00164c  db7afdff  j -5164
001650  7d000000  xsignal zero, 0
001654  bb600600  bneq r12, zero, 56
001658  9f200000  addli r1, zero, 2
00165c  7d100000  xwait zero, 0
001660  7d100000  xwait zero, 0
001664  7d100000  xwait zero, 0
001668  7d100000  xwait zero, 0
00166c  7d100000  xwait zero, 0
001670  7d100000  xwait zero, 0
001674  7d100000  xwait zero, 0
001678  7d100000  xwait zero, 0
00167c  1d800000  lock zero, r1
001680  0d000020  ew_cfg zero, zero, zero, 16
001684  1d900000  unlock r1
001688  7d400000  xsignal_mode_cfg zero
00168c  9f8ebe00  addli sp, sp, 88
001690  00a00300  mfence { lm, sm, gm }
001694  00100000  exit
001698  00100000  exit
00169c  00100000  exit
0016a0  00100000  exit
0016a4  00100000  exit
0016a8  00100000  exit
0016ac  00100000  exit
0016b0  00100000  exit
0016b4  00100000  exit
0016b8  00100000  exit
0016bc  00100000  exit
0016c0  00100000  exit
0016c4  00100000  exit
0016c8  00100000  exit
0016cc  00100000  exit
0016d0  00100000  exit
0016d4  00100000  exit
0016d8  00100000  exit
0016dc  00100000  exit
0016e0  00100000  exit
0016e4  00100000  exit
0016e8  00100000  exit
0016ec  00100000  exit
0016f0  00100000  exit
0016f4  00100000  exit
0016f8  00100000  exit
0016fc  00100000  exit
001700  00100000  exit
001704  00100000  exit
001708  00100000  exit
00170c  00100000  exit
001710  00100000  exit
001714  00100000  exit
001718  00100000  exit
00171c  00100000  exit
001720  00100000  exit
001724  00100000  exit
001728  00100000  exit
00172c  00100000  exit
001730  00100000  exit
001734  00100000  exit
001738  00100000  exit
00173c  00100000  exit
001740  00100000  exit
001744  00100000  exit
001748  00100000  exit
00174c  00100000  exit
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
