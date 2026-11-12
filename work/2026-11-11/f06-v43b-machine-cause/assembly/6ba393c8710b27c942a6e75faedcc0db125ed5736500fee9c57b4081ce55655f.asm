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
0000b4  9f8e2eff  addli sp, sp, -112
0000b8  9f100000  addli r1, zero, 1
0000bc  803a0002  core_id r21
0000c0  1f8f6e00  addli r30, sp, 48
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37e00a00  beq r21, zero, 24
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
0000fc  1f310000  addli r2, zero, 3
000100  80a10004  csr_set csr3, r1
000104  9f500000  addli r1, zero, 5
000108  00d00100  sync_group
00010c  7d800000  xsignal r1, 0
000110  7d800000  xsignal r1, 0
000114  7d800000  xsignal r1, 0
000118  7d000100  xsignal r2, 0
00011c  7d000100  xsignal r2, 0
000120  7d000100  xsignal r2, 0
000124  9f101000  addli r1, zero, 9
000128  1f710000  addli r2, zero, 7
00012c  7d800000  xsignal r1, 0
000130  7d800000  xsignal r1, 0
000134  7d800000  xsignal r1, 0
000138  7d000100  xsignal r2, 0
00013c  7d000100  xsignal r2, 0
000140  7d000100  xsignal r2, 0
000144  9f301000  addli r1, zero, 11
000148  1f611000  addli r2, zero, 14
00014c  7d800000  xsignal r1, 0
000150  7d800000  xsignal r1, 0
000154  7d800000  xsignal r1, 0
000158  7d000100  xsignal r2, 0
00015c  7d000100  xsignal r2, 0
000160  7d000100  xsignal r2, 0
000164  e3004f00  loadli.w r1,  32(r30)
000168  63414f00  loadli.w r2,  36(r30)
00016c  00d20002  load_param_i r4, 1
000170  e3015f00  loadli.w r3,  40(r30)
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
00019c  4b491104  ble.s r2, r1, 2640
0001a0  33110128  sext_int2long r[3:4], r2
0001a4  9f080000  addli r17, zero, 0
0001a8  9f020000  addli r5, zero, 0
0001ac  33940028  sext_int2long r[9:10], r1
0001b0  1f058000  addli r10, zero, 64
0001b4  9f051000  addli r11, zero, 8
0001b8  9f063000  addli r13, zero, 24
0001bc  1f3c0000  addli r24, zero, 3
0001c0  1f2b0000  addli r22, zero, 2
0001c4  9f090001  addli r19, zero, 128
0001c8  1f4a0000  addli r20, zero, 4
0001cc  1f1d0000  addli r26, zero, 1
0001d0  ab0d0200  lui r27, 32
0001d4  9f070008  addli r15, zero, 1024
0001d8  1f622000  addli r4, zero, 22
0001dc  9f0b0000  addli r23, zero, 0
0001e0  733c2ffc  store.d r[3:4], -40(r30)
0001e4  db030000  j 28
0001e8  37e30a04  beq r21, zero, 2264
0001ec  eb508ffd  load.d r[2:3], -40(r30)
0001f0  27140400  addli.d r[9:10], r[9:10], 1
0001f4  9f9b0b00  addli r23, r23, 1
0001f8  93301404  setlt.sl r1, r[9:10], r[2:3]
0001fc  b7c70004  beq r1, zero, 2544
000200  e3005f00  loadli.w r1,  40(r30)
000204  63414f00  loadli.w r2,  36(r30)
000208  1f780000  addli r16, zero, 7
00020c  9f6c0000  addli r25, zero, 6
000210  1f492000  addli r18, zero, 20
000214  1f073000  addli r14, zero, 24
000218  8b101430  div.s r1, r8, r1
00021c  8b902030  div.s r1, r1, r2
000220  0b91a030  div.s r2, r1, r10
000224  0b93b038  mod.s r6, r1, r11
000228  9b316100  slli r3, r2, 6
00022c  1b313100  slli r2, r2, 3
000230  8b913018  sub.s r3, r1, r3
000234  8b908b39  mod.s r1, r23, r24
000238  0b116110  add.s r2, r2, r6
00023c  9bb18101  slli r3, r3, 24
000240  97d1d100  sra r3, r3, r13
000244  8b91b130  div.s r3, r3, r11
000248  1bbef000  slli r28, r1, 15
00024c  33860128  zext_int2long r[13:14], r3
000250  8b918839  mod.s r3, r17, r24
000254  e74f3ffe  storeli.w r3, -4(r30)
000258  9f017000  addli r3, zero, 56
00025c  17333602  sll.d r[7:8], r[13:14], r3
000260  17533302  sra.d r[7:8], r[7:8], r3
000264  33110128  sext_int2long r[3:4], r2
000268  73382ffe  store.d r[3:4], -16(r30)
00026c  2b810400  lui r2, 72
000270  1736b302  sll.d r[13:14], r[7:8], r11
000274  9b1101c0  ori r3, r2, 3072
000278  7330cffe  store.d r[13:14], -32(r30)
00027c  37946a03  beq r21, r22, 1284
000280  1f330000  addli r6, zero, 3
000284  e74e3ffe  storeli.w r3, -20(r30)
000288  1731a603  sll.d r[3:4], r[13:14], r26
00028c  9f631000  addli r7, zero, 14
000290  0b9c6238  mod.s r24, r5, r6
000294  bb869a03  bneq r21, r25, 1440
000298  670d5ffe  storeli.w r5, -48(r30)
00029c  6b520fff  load.d r[5:6], -16(r30)
0002a0  674d1fff  storeli.w r17, -44(r30)
0002a4  9f6a2000  addli r21, zero, 22
0002a8  9f481000  addli r17, zero, 12
0002ac  7d100300  xwait r6, 0
0002b0  17367202  sll.d r[13:14], r[5:6], r7
0002b4  6b520f00  load.d r[5:6], 0(r30)
0002b8  0b26c210  add.ul r[13:14], r[5:6], r[13:14]
0002bc  9f022000  addli r5, zero, 16
0002c0  1f122000  addli r4, zero, 17
0002c4  3f047b01  blt.s r22, r23, 256
0002c8  9f530000  addli r7, zero, 5
0002cc  9f101000  addli r1, zero, 9
0002d0  1d800300  lock zero, r7
0002d4  15000014  dma_cfg zero, zero, zero, 10
0002d8  1500a015  dma_cfg zero, zero, r26, 10
0002dc  15006015  dma_cfg zero, zero, r22, 10
0002e0  15006014  dma_cfg zero, zero, r6, 10
0002e4  15004015  dma_cfg zero, zero, r20, 10
0002e8  15007014  dma_cfg zero, zero, r7, 10
0002ec  15009015  dma_cfg zero, zero, r25, 10
0002f0  15000015  dma_cfg zero, zero, r16, 10
0002f4  1500b014  dma_cfg zero, zero, r11, 10
0002f8  15001014  dma_cfg zero, zero, r1, 10
0002fc  9f201000  addli r1, zero, 10
000300  15001014  dma_cfg zero, zero, r1, 10
000304  9f301000  addli r1, zero, 11
000308  15001014  dma_cfg zero, zero, r1, 10
00030c  9f501000  addli r1, zero, 13
000310  15001015  dma_cfg zero, zero, r17, 10
000314  15001014  dma_cfg zero, zero, r1, 10
000318  9f601000  addli r1, zero, 14
00031c  15001014  dma_cfg zero, zero, r1, 10
000320  9f701000  addli r1, zero, 15
000324  15001014  dma_cfg zero, zero, r1, 10
000328  9f202000  addli r1, zero, 18
00032c  15005014  dma_cfg zero, zero, r5, 10
000330  15004014  dma_cfg zero, zero, r4, 10
000334  15001014  dma_cfg zero, zero, r1, 10
000338  9f302000  addli r1, zero, 19
00033c  15001014  dma_cfg zero, zero, r1, 10
000340  9f502000  addli r1, zero, 21
000344  15002015  dma_cfg zero, zero, r18, 10
000348  15001014  dma_cfg zero, zero, r1, 10
00034c  9f702000  addli r1, zero, 23
000350  15005015  dma_cfg zero, zero, r21, 10
000354  15001014  dma_cfg zero, zero, r1, 10
000358  9f103000  addli r1, zero, 25
00035c  1500e014  dma_cfg zero, zero, r14, 10
000360  15001014  dma_cfg zero, zero, r1, 10
000364  9f203000  addli r1, zero, 26
000368  15001014  dma_cfg zero, zero, r1, 10
00036c  9f303000  addli r1, zero, 27
000370  15001014  dma_cfg zero, zero, r1, 10
000374  9f403000  addli r1, zero, 28
000378  15001014  dma_cfg zero, zero, r1, 10
00037c  9f503000  addli r1, zero, 29
000380  15001014  dma_cfg zero, zero, r1, 10
000384  9f603000  addli r1, zero, 30
000388  15001014  dma_cfg zero, zero, r1, 10
00038c  9f703000  addli r1, zero, 31
000390  15001014  dma_cfg zero, zero, r1, 10
000394  9f000002  addli r1, zero, 256
000398  150d0d00  dma_cfg r26, r26, zero, 0
00039c  150d0002  dma_cfg r26, zero, zero, 1
0003a0  15000004  dma_cfg zero, zero, zero, 2
0003a4  150ea006  dma_cfg r28, zero, r10, 3
0003a8  95096009  dma_cfg r19, zero, r22, 4
0003ac  9500300b  dma_cfg r1, zero, r19, 5
0003b0  15000010  dma_cfg zero, zero, zero, 8
0003b4  35000000  dma_run zero
0003b8  1500a00b  dma_cfg zero, zero, r26, 5
0003bc  15000010  dma_cfg zero, zero, zero, 8
0003c0  1d900300  unlock r7
0003c4  1d000a00  lock zero, r20
0003c8  9b100e04  ori r1, r28, 64
0003cc  1f090002  addli r18, zero, 256
0003d0  9f530000  addli r7, zero, 5
0003d4  1f780000  addli r16, zero, 7
0003d8  9f1c1000  addli r25, zero, 9
0003dc  1f271000  addli r14, zero, 10
0003e0  9b3aac00  slli r21, r24, 10
0003e4  1f3c0000  addli r24, zero, 3
0003e8  150d0d00  dma_cfg r26, r26, zero, 0
0003ec  15800604  dma_cfg zero, r13, zero, 2
0003f0  9500a606  dma_cfg r1, r12, r10, 3
0003f4  1f660000  addli r12, zero, 6
0003f8  9f501000  addli r1, zero, 13
0003fc  9f063000  addli r13, zero, 24
000400  95096509  dma_cfg r19, r10, r22, 4
000404  1589390b  dma_cfg r18, r19, r19, 5
000408  15000010  dma_cfg zero, zero, zero, 8
00040c  35000000  dma_run zero
000410  1500a00b  dma_cfg zero, zero, r26, 5
000414  15000010  dma_cfg zero, zero, zero, 8
000418  1d100a00  unlock r20
00041c  1d800300  lock zero, r7
000420  15000014  dma_cfg zero, zero, zero, 10
000424  1500a015  dma_cfg zero, zero, r26, 10
000428  15006015  dma_cfg zero, zero, r22, 10
00042c  15006014  dma_cfg zero, zero, r6, 10
000430  1f331000  addli r6, zero, 11
000434  15004015  dma_cfg zero, zero, r20, 10
000438  15007014  dma_cfg zero, zero, r7, 10
00043c  1500c014  dma_cfg zero, zero, r12, 10
000440  15000015  dma_cfg zero, zero, r16, 10
000444  1500b014  dma_cfg zero, zero, r11, 10
000448  15009015  dma_cfg zero, zero, r25, 10
00044c  1500e014  dma_cfg zero, zero, r14, 10
000450  15006014  dma_cfg zero, zero, r6, 10
000454  15001015  dma_cfg zero, zero, r17, 10
000458  15001014  dma_cfg zero, zero, r1, 10
00045c  9f601000  addli r1, zero, 14
000460  15001014  dma_cfg zero, zero, r1, 10
000464  9f701000  addli r1, zero, 15
000468  15001014  dma_cfg zero, zero, r1, 10
00046c  9f202000  addli r1, zero, 18
000470  15005014  dma_cfg zero, zero, r5, 10
000474  15004014  dma_cfg zero, zero, r4, 10
000478  1f322000  addli r4, zero, 19
00047c  15001014  dma_cfg zero, zero, r1, 10
000480  9f402000  addli r1, zero, 20
000484  15004014  dma_cfg zero, zero, r4, 10
000488  15001014  dma_cfg zero, zero, r1, 10
00048c  9f502000  addli r1, zero, 21
000490  15001014  dma_cfg zero, zero, r1, 10
000494  9f602000  addli r1, zero, 22
000498  15001014  dma_cfg zero, zero, r1, 10
00049c  9f702000  addli r1, zero, 23
0004a0  15001014  dma_cfg zero, zero, r1, 10
0004a4  9f103000  addli r1, zero, 25
0004a8  1500d014  dma_cfg zero, zero, r13, 10
0004ac  15001014  dma_cfg zero, zero, r1, 10
0004b0  9f203000  addli r1, zero, 26
0004b4  15001014  dma_cfg zero, zero, r1, 10
0004b8  9f303000  addli r1, zero, 27
0004bc  15001014  dma_cfg zero, zero, r1, 10
0004c0  9f403000  addli r1, zero, 28
0004c4  15001014  dma_cfg zero, zero, r1, 10
0004c8  9f503000  addli r1, zero, 29
0004cc  15001014  dma_cfg zero, zero, r1, 10
0004d0  9f603000  addli r1, zero, 30
0004d4  15001014  dma_cfg zero, zero, r1, 10
0004d8  9f703000  addli r1, zero, 31
0004dc  15001014  dma_cfg zero, zero, r1, 10
0004e0  ab800400  lui r1, 72
0004e4  150d0d00  dma_cfg r26, r26, zero, 0
0004e8  150d0002  dma_cfg r26, zero, zero, 1
0004ec  8b901a10  add.s r1, r21, r1
0004f0  15000004  dma_cfg zero, zero, zero, 2
0004f4  150ea006  dma_cfg r28, zero, r10, 3
0004f8  1f4e1000  addli r28, zero, 12
0004fc  95096009  dma_cfg r19, zero, r22, 4
000500  1509300b  dma_cfg r18, zero, r19, 5
000504  eb580f01  load.d r[18:19], 16(r30)
000508  15000010  dma_cfg zero, zero, zero, 8
00050c  35000000  dma_run zero
000510  1500a00b  dma_cfg zero, zero, r26, 5
000514  15000010  dma_cfg zero, zero, zero, 8
000518  1d900300  unlock r7
00051c  7d000b00  xsignal r22, 0
000520  7d100300  xwait r6, 0
000524  e302afff  loadli.w r5,  -48(r30)
000528  0ba12810  add.ul r[3:4], r[18:19], r[3:4]
00052c  1f591000  addli r18, zero, 13
000530  9f082000  addli r17, zero, 16
000534  bf435b00  blt.s r22, r5, 240
000538  1d800300  lock zero, r7
00053c  15000014  dma_cfg zero, zero, zero, 10
000540  1500a015  dma_cfg zero, zero, r26, 10
000544  15006015  dma_cfg zero, zero, r22, 10
000548  15008015  dma_cfg zero, zero, r24, 10
00054c  15004015  dma_cfg zero, zero, r20, 10
000550  15007014  dma_cfg zero, zero, r7, 10
000554  1500c014  dma_cfg zero, zero, r12, 10
000558  15000015  dma_cfg zero, zero, r16, 10
00055c  1500b014  dma_cfg zero, zero, r11, 10
000560  15009015  dma_cfg zero, zero, r25, 10
000564  1500e014  dma_cfg zero, zero, r14, 10
000568  15006014  dma_cfg zero, zero, r6, 10
00056c  1f631000  addli r6, zero, 14
000570  1500c015  dma_cfg zero, zero, r28, 10
000574  15002015  dma_cfg zero, zero, r18, 10
000578  15006014  dma_cfg zero, zero, r6, 10
00057c  1f731000  addli r6, zero, 15
000580  15006014  dma_cfg zero, zero, r6, 10
000584  1f132000  addli r6, zero, 17
000588  15001015  dma_cfg zero, zero, r17, 10
00058c  15006014  dma_cfg zero, zero, r6, 10
000590  1f232000  addli r6, zero, 18
000594  15006014  dma_cfg zero, zero, r6, 10
000598  1f432000  addli r6, zero, 20
00059c  15004014  dma_cfg zero, zero, r4, 10
0005a0  15006014  dma_cfg zero, zero, r6, 10
0005a4  1f532000  addli r6, zero, 21
0005a8  15006014  dma_cfg zero, zero, r6, 10
0005ac  1f632000  addli r6, zero, 22
0005b0  15006014  dma_cfg zero, zero, r6, 10
0005b4  1f732000  addli r6, zero, 23
0005b8  15006014  dma_cfg zero, zero, r6, 10
0005bc  1f133000  addli r6, zero, 25
0005c0  1500d014  dma_cfg zero, zero, r13, 10
0005c4  15006014  dma_cfg zero, zero, r6, 10
0005c8  1f233000  addli r6, zero, 26
0005cc  15006014  dma_cfg zero, zero, r6, 10
0005d0  1f333000  addli r6, zero, 27
0005d4  15006014  dma_cfg zero, zero, r6, 10
0005d8  1f433000  addli r6, zero, 28
0005dc  15006014  dma_cfg zero, zero, r6, 10
0005e0  1f533000  addli r6, zero, 29
0005e4  15006014  dma_cfg zero, zero, r6, 10
0005e8  1f633000  addli r6, zero, 30
0005ec  15006014  dma_cfg zero, zero, r6, 10
0005f0  1f733000  addli r6, zero, 31
0005f4  15006014  dma_cfg zero, zero, r6, 10
0005f8  150d0d00  dma_cfg r26, r26, zero, 0
0005fc  150d0002  dma_cfg r26, zero, zero, 1
000600  15000004  dma_cfg zero, zero, zero, 2
000604  9500a006  dma_cfg r1, zero, r10, 3
000608  9509b008  dma_cfg r19, zero, r11, 4
00060c  9507a00b  dma_cfg r15, zero, r26, 5
000610  15000010  dma_cfg zero, zero, zero, 8
000614  35000000  dma_run zero
000618  1500a00b  dma_cfg zero, zero, r26, 5
00061c  15000010  dma_cfg zero, zero, zero, 8
000620  1d900300  unlock r7
000624  2b830400  lui r6, 72
000628  1d000a00  lock zero, r20
00062c  9f6c0000  addli r25, zero, 6
000630  150d0d00  dma_cfg r26, r26, zero, 0
000634  1b160304  ori r12, r6, 64
000638  15800104  dma_cfg zero, r3, zero, 2
00063c  0b96ca10  add.s r12, r21, r12
000640  803a0002  core_id r21
000644  1506a106  dma_cfg r12, r2, r10, 3
000648  1f010004  addli r2, zero, 512
00064c  9f111000  addli r3, zero, 9
000650  1f361000  addli r12, zero, 11
000654  9509b508  dma_cfg r19, r10, r11, 4
000658  9507a10b  dma_cfg r15, r2, r26, 5
00065c  1f710000  addli r2, zero, 7
000660  15000010  dma_cfg zero, zero, zero, 8
000664  35000000  dma_run zero
000668  1500a00b  dma_cfg zero, zero, r26, 5
00066c  15000010  dma_cfg zero, zero, zero, 8
000670  1d100a00  unlock r20
000674  1d800300  lock zero, r7
000678  15000014  dma_cfg zero, zero, zero, 10
00067c  1500a015  dma_cfg zero, zero, r26, 10
000680  15006015  dma_cfg zero, zero, r22, 10
000684  15008015  dma_cfg zero, zero, r24, 10
000688  15004015  dma_cfg zero, zero, r20, 10
00068c  15007014  dma_cfg zero, zero, r7, 10
000690  15009015  dma_cfg zero, zero, r25, 10
000694  15002014  dma_cfg zero, zero, r2, 10
000698  1f611000  addli r2, zero, 14
00069c  1500b014  dma_cfg zero, zero, r11, 10
0006a0  15003014  dma_cfg zero, zero, r3, 10
0006a4  1500e014  dma_cfg zero, zero, r14, 10
0006a8  1500c014  dma_cfg zero, zero, r12, 10
0006ac  1500c015  dma_cfg zero, zero, r28, 10
0006b0  1f5e1000  addli r28, zero, 13
0006b4  15002015  dma_cfg zero, zero, r18, 10
0006b8  1f590000  addli r18, zero, 5
0006bc  15002014  dma_cfg zero, zero, r2, 10
0006c0  1f711000  addli r2, zero, 15
0006c4  15002014  dma_cfg zero, zero, r2, 10
0006c8  1f112000  addli r2, zero, 17
0006cc  15001015  dma_cfg zero, zero, r17, 10
0006d0  15002014  dma_cfg zero, zero, r2, 10
0006d4  1f212000  addli r2, zero, 18
0006d8  15002014  dma_cfg zero, zero, r2, 10
0006dc  1f412000  addli r2, zero, 20
0006e0  15004014  dma_cfg zero, zero, r4, 10
0006e4  1f622000  addli r4, zero, 22
0006e8  15002014  dma_cfg zero, zero, r2, 10
0006ec  1f512000  addli r2, zero, 21
0006f0  15002014  dma_cfg zero, zero, r2, 10
0006f4  1f612000  addli r2, zero, 22
0006f8  15002014  dma_cfg zero, zero, r2, 10
0006fc  1f712000  addli r2, zero, 23
000700  15002014  dma_cfg zero, zero, r2, 10
000704  1f113000  addli r2, zero, 25
000708  1500d014  dma_cfg zero, zero, r13, 10
00070c  15002014  dma_cfg zero, zero, r2, 10
000710  1f213000  addli r2, zero, 26
000714  15002014  dma_cfg zero, zero, r2, 10
000718  1f313000  addli r2, zero, 27
00071c  15002014  dma_cfg zero, zero, r2, 10
000720  1f413000  addli r2, zero, 28
000724  15002014  dma_cfg zero, zero, r2, 10
000728  1f513000  addli r2, zero, 29
00072c  15002014  dma_cfg zero, zero, r2, 10
000730  1f613000  addli r2, zero, 30
000734  15002014  dma_cfg zero, zero, r2, 10
000738  1f713000  addli r2, zero, 31
00073c  15002014  dma_cfg zero, zero, r2, 10
000740  150d0d00  dma_cfg r26, r26, zero, 0
000744  150d0002  dma_cfg r26, zero, zero, 1
000748  15000004  dma_cfg zero, zero, zero, 2
00074c  9500a006  dma_cfg r1, zero, r10, 3
000750  9509b008  dma_cfg r19, zero, r11, 4
000754  9507a00b  dma_cfg r15, zero, r26, 5
000758  15000010  dma_cfg zero, zero, zero, 8
00075c  35000000  dma_run zero
000760  1500a00b  dma_cfg zero, zero, r26, 5
000764  15000010  dma_cfg zero, zero, zero, 8
000768  1d900300  unlock r7
00076c  7d000700  xsignal r14, 0
000770  e348afff  loadli.w r17,  -44(r30)
000774  e341dfff  loadli.w r3,  -20(r30)
000778  9f432000  addli r7, zero, 20
00077c  db0a0000  j 84
000780  8b908239  mod.s r1, r5, r24
000784  1f590000  addli r18, zero, 5
000788  7d100b00  xwait r22, 0
00078c  9f063000  addli r13, zero, 24
000790  1f271000  addli r14, zero, 10
000794  1f361000  addli r12, zero, 11
000798  9f432000  addli r7, zero, 20
00079c  7d100900  xwait r18, 0
0007a0  1d000000  lock zero, zero
0007a4  010b0000  ds_cfg r22, zero, 0
0007a8  01050002  ds_cfg r10, zero, 1
0007ac  0105001c  ds_cfg r10, zero, 14
0007b0  9bb0a000  slli r1, r1, 10
0007b4  8109001a  ds_cfg r19, zero, 13
0007b8  211eae02  shuffle_batch r28, r28, r10, 1
0007bc  1f5e1000  addli r28, zero, 13
0007c0  8b902010  add.s r1, r1, r2
0007c4  1d100000  unlock zero
0007c8  7d000c00  xsignal r24, 0
0007cc  7d000a00  xsignal r20, 0
0007d0  6341ffff  loadli.w r2,  -4(r30)
0007d4  9f920200  addli r5, r5, 1
0007d8  9f980800  addli r17, r17, 1
0007dc  1b311101  slli r2, r2, 17
0007e0  0b113110  add.s r2, r2, r3
0007e4  3b982afd  bneq r21, r18, -1532
0007e8  1f431000  addli r6, zero, 12
0007ec  7d100700  xwait r14, 0
0007f0  9f010000  addli r3, zero, 0
0007f4  7d100300  xwait r6, 0
0007f8  1d000b00  lock zero, r22
0007fc  2b03803f  lui r6, 260096
000800  0d000002  ew_cfg zero, zero, zero, 1
000804  0d130300  ewcoeff_cfg r6, r6, zero, 0
000808  1f73f001  addli r6, zero, 255
00080c  0d000304  ew_cfg zero, r6, zero, 2
000810  0d0d0006  ew_cfg r26, zero, zero, 3
000814  0b133110  add.s r6, r2, r3
000818  9f810108  addli r3, r3, 1024
00081c  2d031300  dsmadd r6, r6, r1, 0
000820  bbdfb1ff  bneq r3, r27, -12
000824  1d100b00  unlock r22
000828  7d000600  xsignal r12, 0
00082c  7d000e00  xsignal r28, 0
000830  db37ffff  j -1604
000834  9bb00001  slli r1, r1, 16
000838  2b830100  lui r6, 24
00083c  00360002  core_id r12
000840  9f063000  addli r13, zero, 24
000844  9f432000  addli r7, zero, 20
000848  0b976010  add.s r14, r1, r6
00084c  373b0601  beq r12, r16, 716
000850  1f590000  addli r18, zero, 5
000854  bb7ba601  bneq r12, r26, 764
000858  eb5a8f00  load.d r[22:23], 8(r30)
00085c  1f760000  addli r12, zero, 7
000860  1f382000  addli r16, zero, 19
000864  7d100600  xwait r12, 0
000868  0ba12a10  add.ul r[3:4], r[22:23], r[3:4]
00086c  1f2b0000  addli r22, zero, 2
000870  9f5a2000  addli r21, zero, 21
000874  3f147b01  blt.s r22, r23, 260
000878  1d000900  lock zero, r18
00087c  1f330000  addli r6, zero, 3
000880  1f621000  addli r4, zero, 14
000884  15000014  dma_cfg zero, zero, zero, 10
000888  1500a015  dma_cfg zero, zero, r26, 10
00088c  15006015  dma_cfg zero, zero, r22, 10
000890  15006014  dma_cfg zero, zero, r6, 10
000894  1f131000  addli r6, zero, 9
000898  15004015  dma_cfg zero, zero, r20, 10
00089c  15002015  dma_cfg zero, zero, r18, 10
0008a0  15009015  dma_cfg zero, zero, r25, 10
0008a4  1500c014  dma_cfg zero, zero, r12, 10
0008a8  1500b014  dma_cfg zero, zero, r11, 10
0008ac  15006014  dma_cfg zero, zero, r6, 10
0008b0  1f231000  addli r6, zero, 10
0008b4  15006014  dma_cfg zero, zero, r6, 10
0008b8  1f331000  addli r6, zero, 11
0008bc  15006014  dma_cfg zero, zero, r6, 10
0008c0  1f431000  addli r6, zero, 12
0008c4  15006014  dma_cfg zero, zero, r6, 10
0008c8  1f531000  addli r6, zero, 13
0008cc  15006014  dma_cfg zero, zero, r6, 10
0008d0  1f032000  addli r6, zero, 16
0008d4  15004014  dma_cfg zero, zero, r4, 10
0008d8  1f721000  addli r4, zero, 15
0008dc  15004014  dma_cfg zero, zero, r4, 10
0008e0  1f122000  addli r4, zero, 17
0008e4  15006014  dma_cfg zero, zero, r6, 10
0008e8  1f732000  addli r6, zero, 23
0008ec  15004014  dma_cfg zero, zero, r4, 10
0008f0  1f222000  addli r4, zero, 18
0008f4  15004014  dma_cfg zero, zero, r4, 10
0008f8  1f622000  addli r4, zero, 22
0008fc  15000015  dma_cfg zero, zero, r16, 10
000900  15007014  dma_cfg zero, zero, r7, 10
000904  15005015  dma_cfg zero, zero, r21, 10
000908  15004014  dma_cfg zero, zero, r4, 10
00090c  15006014  dma_cfg zero, zero, r6, 10
000910  1f133000  addli r6, zero, 25
000914  1500d014  dma_cfg zero, zero, r13, 10
000918  15006014  dma_cfg zero, zero, r6, 10
00091c  1f233000  addli r6, zero, 26
000920  15006014  dma_cfg zero, zero, r6, 10
000924  1f333000  addli r6, zero, 27
000928  15006014  dma_cfg zero, zero, r6, 10
00092c  1f433000  addli r6, zero, 28
000930  15006014  dma_cfg zero, zero, r6, 10
000934  1f533000  addli r6, zero, 29
000938  15006014  dma_cfg zero, zero, r6, 10
00093c  1f633000  addli r6, zero, 30
000940  15006014  dma_cfg zero, zero, r6, 10
000944  1f733000  addli r6, zero, 31
000948  15006014  dma_cfg zero, zero, r6, 10
00094c  150d0d00  dma_cfg r26, r26, zero, 0
000950  150d0002  dma_cfg r26, zero, zero, 1
000954  15000004  dma_cfg zero, zero, zero, 2
000958  1507a006  dma_cfg r14, zero, r10, 3
00095c  9509b008  dma_cfg r19, zero, r11, 4
000960  9507a00a  dma_cfg r15, zero, r10, 5
000964  15000010  dma_cfg zero, zero, zero, 8
000968  35000000  dma_run zero
00096c  1500a00b  dma_cfg zero, zero, r26, 5
000970  15000010  dma_cfg zero, zero, zero, 8
000974  1d100900  unlock r18
000978  2b830100  lui r6, 24
00097c  1d000a00  lock zero, r20
000980  9f7c0000  addli r25, zero, 7
000984  150d0d00  dma_cfg r26, r26, zero, 0
000988  1b160304  ori r12, r6, 64
00098c  15800104  dma_cfg zero, r3, zero, 2
000990  0b96c010  add.s r12, r1, r12
000994  1506a106  dma_cfg r12, r2, r10, 3
000998  1f010020  addli r2, zero, 4096
00099c  9f610000  addli r3, zero, 6
0009a0  9509b508  dma_cfg r19, r10, r11, 4
0009a4  9507a10a  dma_cfg r15, r2, r10, 5
0009a8  1f310000  addli r2, zero, 3
0009ac  15000010  dma_cfg zero, zero, zero, 8
0009b0  35000000  dma_run zero
0009b4  1500a00b  dma_cfg zero, zero, r26, 5
0009b8  15000010  dma_cfg zero, zero, zero, 8
0009bc  1d100a00  unlock r20
0009c0  1d000900  lock zero, r18
0009c4  15000014  dma_cfg zero, zero, zero, 10
0009c8  1500a015  dma_cfg zero, zero, r26, 10
0009cc  15006015  dma_cfg zero, zero, r22, 10
0009d0  15002014  dma_cfg zero, zero, r2, 10
0009d4  1f111000  addli r2, zero, 9
0009d8  15004015  dma_cfg zero, zero, r20, 10
0009dc  15002015  dma_cfg zero, zero, r18, 10
0009e0  15003014  dma_cfg zero, zero, r3, 10
0009e4  15009015  dma_cfg zero, zero, r25, 10
0009e8  1500b014  dma_cfg zero, zero, r11, 10
0009ec  15002014  dma_cfg zero, zero, r2, 10
0009f0  1f211000  addli r2, zero, 10
0009f4  15002014  dma_cfg zero, zero, r2, 10
0009f8  1f311000  addli r2, zero, 11
0009fc  15002014  dma_cfg zero, zero, r2, 10
000a00  1f411000  addli r2, zero, 12
000a04  15002014  dma_cfg zero, zero, r2, 10
000a08  1f511000  addli r2, zero, 13
000a0c  15002014  dma_cfg zero, zero, r2, 10
000a10  1f611000  addli r2, zero, 14
000a14  15002014  dma_cfg zero, zero, r2, 10
000a18  1f711000  addli r2, zero, 15
000a1c  15002014  dma_cfg zero, zero, r2, 10
000a20  1f012000  addli r2, zero, 16
000a24  15002014  dma_cfg zero, zero, r2, 10
000a28  1f112000  addli r2, zero, 17
000a2c  15002014  dma_cfg zero, zero, r2, 10
000a30  1f212000  addli r2, zero, 18
000a34  15002014  dma_cfg zero, zero, r2, 10
000a38  1f712000  addli r2, zero, 23
000a3c  15000015  dma_cfg zero, zero, r16, 10
000a40  15007014  dma_cfg zero, zero, r7, 10
000a44  15005015  dma_cfg zero, zero, r21, 10
000a48  15004014  dma_cfg zero, zero, r4, 10
000a4c  15002014  dma_cfg zero, zero, r2, 10
000a50  1f113000  addli r2, zero, 25
000a54  1500d014  dma_cfg zero, zero, r13, 10
000a58  15002014  dma_cfg zero, zero, r2, 10
000a5c  1f213000  addli r2, zero, 26
000a60  15002014  dma_cfg zero, zero, r2, 10
000a64  1f313000  addli r2, zero, 27
000a68  15002014  dma_cfg zero, zero, r2, 10
000a6c  1f413000  addli r2, zero, 28
000a70  15002014  dma_cfg zero, zero, r2, 10
000a74  1f513000  addli r2, zero, 29
000a78  15002014  dma_cfg zero, zero, r2, 10
000a7c  1f613000  addli r2, zero, 30
000a80  15002014  dma_cfg zero, zero, r2, 10
000a84  1f713000  addli r2, zero, 31
000a88  15002014  dma_cfg zero, zero, r2, 10
000a8c  150d0d00  dma_cfg r26, r26, zero, 0
000a90  150d0002  dma_cfg r26, zero, zero, 1
000a94  15000004  dma_cfg zero, zero, zero, 2
000a98  1507a006  dma_cfg r14, zero, r10, 3
000a9c  9509b008  dma_cfg r19, zero, r11, 4
000aa0  9507a00a  dma_cfg r15, zero, r10, 5
000aa4  15000010  dma_cfg zero, zero, zero, 8
000aa8  35000000  dma_run zero
000aac  1500a00b  dma_cfg zero, zero, r26, 5
000ab0  15000010  dma_cfg zero, zero, zero, 8
000ab4  1d100900  unlock r18
000ab8  7d800100  xsignal r3, 0
000abc  db120000  j 148
000ac0  eb510fff  load.d r[4:5], -16(r30)
000ac4  9f601000  addli r1, zero, 14
000ac8  17b67102  sll.d r[13:14], r[4:5], r7
000acc  eb510ffe  load.d r[4:5], -32(r30)
000ad0  7d100e00  xwait r28, 0
000ad4  1d000900  lock zero, r18
000ad8  15000000  dma_cfg zero, zero, zero, 0
000adc  15000d02  dma_cfg zero, r26, zero, 1
000ae0  17b36103  sll.d r[7:8], r[4:5], r22
000ae4  eb518f01  load.d r[4:5], 24(r30)
000ae8  0ba6c110  add.ul r[13:14], r[4:5], r[13:14]
000aec  1f622000  addli r4, zero, 22
000af0  0b236610  add.ul r[7:8], r[13:14], r[7:8]
000af4  9f063000  addli r13, zero, 24
000af8  95030004  dma_cfg r7, zero, zero, 2
000afc  1503f106  dma_cfg r6, r2, r15, 3
000b00  1f010040  addli r2, zero, 8192
000b04  15813709  dma_cfg r2, r15, r19, 4
000b08  35000000  dma_run zero
000b0c  1d100900  unlock r18
000b10  7d800000  xsignal r1, 0
000b14  5bdbfeff  j -2344
000b18  1f111000  addli r2, zero, 9
000b1c  7d900c00  xwait r25, 0
000b20  1f590000  addli r18, zero, 5
000b24  7d100100  xwait r2, 0
000b28  1d000000  lock zero, zero
000b2c  1f010002  addli r2, zero, 256
000b30  010b0000  ds_cfg r22, zero, 0
000b34  01010002  ds_cfg r2, zero, 1
000b38  0105001c  ds_cfg r10, zero, 14
000b3c  0101001a  ds_cfg r2, zero, 13
000b40  c100a704  shuffle_coa r1, r14, r10, 2
000b44  1d100000  unlock zero
000b48  7d000800  xsignal r16, 0
000b4c  7d800500  xsignal r11, 0
000b50  6341ffff  loadli.w r2,  -4(r30)
000b54  e341dfff  loadli.w r3,  -20(r30)
000b58  9f920200  addli r5, r5, 1
000b5c  9f980800  addli r17, r17, 1
000b60  803a0002  core_id r21
000b64  1b311101  slli r2, r2, 17
000b68  0b113110  add.s r2, r2, r3
000b6c  3bf14a01  bneq r21, r20, 92
000b70  9f010000  addli r3, zero, 0
000b74  ab430000  lui r7, 4
000b78  1f631000  addli r6, zero, 14
000b7c  7d100a00  xwait r20, 0
000b80  7d900500  xwait r11, 0
000b84  7d100300  xwait r6, 0
000b88  1d000d00  lock zero, r26
000b8c  0b133110  add.s r6, r2, r3
000b90  9f810102  addli r3, r3, 256
000b94  09053501  mm_cfg r10, r10, r19, 0
000b98  098aa505  mm_cfg r20, r11, r26, 2
000b9c  29031e10  mm r6, r28, r1, 8
000ba0  8b907010  add.s r1, r1, r7
000ba4  1d100d00  unlock r26
000ba8  bb8ff1fe  bneq r3, r15, -32
000bac  9f101000  addli r1, zero, 9
000bb0  7d000900  xsignal r18, 0
000bb4  1f3c0000  addli r24, zero, 3
000bb8  7d800000  xsignal r1, 0
000bbc  9f401000  addli r1, zero, 12
000bc0  7d800000  xsignal r1, 0
000bc4  5bc5feff  j -2520
000bc8  9b30ac00  slli r1, r24, 10
000bcc  ab810400  lui r3, 72
000bd0  1f3c0000  addli r24, zero, 3
000bd4  1f271000  addli r14, zero, 10
000bd8  1f361000  addli r12, zero, 11
000bdc  1f5e1000  addli r28, zero, 13
000be0  8b903010  add.s r1, r1, r3
000be4  3b982afb  bneq r21, r18, -2556
000be8  5b80ffff  j -1024
000bec  7d000000  xsignal zero, 0
000bf0  bbe00a00  bneq r21, zero, 56
000bf4  9f200000  addli r1, zero, 2
000bf8  7d100000  xwait zero, 0
000bfc  7d100000  xwait zero, 0
000c00  7d100000  xwait zero, 0
000c04  7d100000  xwait zero, 0
000c08  7d100000  xwait zero, 0
000c0c  7d100000  xwait zero, 0
000c10  7d100000  xwait zero, 0
000c14  7d100000  xwait zero, 0
000c18  1d800000  lock zero, r1
000c1c  0d000020  ew_cfg zero, zero, zero, 16
000c20  1d900000  unlock r1
000c24  7d400000  xsignal_mode_cfg zero
000c28  9f8e6e00  addli sp, sp, 48
000c2c  00a00300  mfence { lm, sm, gm }
000c30  00100000  exit
000c34  00100000  exit
000c38  00100000  exit
000c3c  00100000  exit
000c40  00100000  exit
000c44  00100000  exit
000c48  00100000  exit
000c4c  00100000  exit
000c50  00100000  exit
000c54  00100000  exit
000c58  00100000  exit
000c5c  00100000  exit
000c60  00100000  exit
000c64  00100000  exit
000c68  00100000  exit
000c6c  00100000  exit
000c70  00100000  exit
000c74  00100000  exit
000c78  00100000  exit
000c7c  00100000  exit
000c80  00100000  exit
000c84  00100000  exit
000c88  00100000  exit
000c8c  00100000  exit
000c90  00100000  exit
000c94  00100000  exit
000c98  00100000  exit
000c9c  00100000  exit
000ca0  00100000  exit
000ca4  00100000  exit
000ca8  00100000  exit
000cac  00100000  exit
000cb0  00100000  exit
000cb4  00100000  exit
000cb8  00100000  exit
000cbc  00100000  exit
000cc0  00100000  exit
000cc4  00100000  exit
000cc8  00100000  exit
000ccc  00100000  exit
000cd0  00100000  exit
000cd4  00100000  exit
000cd8  00100000  exit
000cdc  00100000  exit
000ce0  00100000  exit
000ce4  00100000  exit
000ce8  00100000  exit
000cec  00100000  exit
000cf0  00100000  exit
000cf4  00100000  exit
000cf8  00100000  exit
000cfc  00100000  exit
000d00  00100000  exit
000d04  00100000  exit
000d08  00100000  exit
000d0c  00100000  exit
000d10  00100000  exit
000d14  00100000  exit
000d18  00100000  exit
000d1c  00100000  exit
000d20  00100000  exit
000d24  00100000  exit
000d28  00100000  exit
000d2c  00100000  exit
000d30  00100000  exit
000d34  00100000  exit
000d38  00100000  exit
000d3c  00100000  exit
000d40  00100000  exit
000d44  00100000  exit
000d48  00100000  exit
000d4c  00100000  exit
000d50  00100000  exit
000d54  00100000  exit
000d58  00100000  exit
000d5c  00100000  exit
000d60  00100000  exit
000d64  00100000  exit
000d68  00100000  exit
000d6c  00100000  exit
000d70  00100000  exit
000d74  00100000  exit
000d78  00100000  exit
000d7c  00100000  exit
000d80  00100000  exit
000d84  00100000  exit
000d88  00100000  exit
000d8c  00100000  exit
000d90  00100000  exit
000d94  00100000  exit
000d98  00100000  exit
000d9c  00100000  exit
000da0  00100000  exit
000da4  00100000  exit
000da8  00100000  exit
000dac  00100000  exit
000db0  00100000  exit
000db4  00100000  exit
000db8  00100000  exit
000dbc  00100000  exit
000dc0  00100000  exit
000dc4  00100000  exit
000dc8  00100000  exit
000dcc  00100000  exit
000dd0  00100000  exit
000dd4  00100000  exit
000dd8  00100000  exit
000ddc  00100000  exit
000de0  00100000  exit
000de4  00100000  exit
000de8  00100000  exit
000dec  00100000  exit
000df0  00100000  exit
000df4  00100000  exit
000df8  00100000  exit
000dfc  00100000  exit
000e00  00100000  exit
000e04  00100000  exit
000e08  00100000  exit
000e0c  00100000  exit
000e10  00100000  exit
000e14  00100000  exit
000e18  00100000  exit
000e1c  00100000  exit
000e20  00100000  exit
000e24  00100000  exit
000e28  00100000  exit
000e2c  00100000  exit
000e30  00100000  exit
000e34  00100000  exit
000e38  00100000  exit
000e3c  00100000  exit
000e40  00100000  exit
000e44  00100000  exit
000e48  00100000  exit
000e4c  00100000  exit
000e50  00100000  exit
000e54  00100000  exit
000e58  00100000  exit
000e5c  00100000  exit
000e60  00100000  exit
000e64  00100000  exit
000e68  00100000  exit
000e6c  00100000  exit
000e70  00100000  exit
