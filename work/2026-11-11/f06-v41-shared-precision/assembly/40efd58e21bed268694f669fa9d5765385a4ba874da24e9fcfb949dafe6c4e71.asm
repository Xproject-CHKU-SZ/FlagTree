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
0000b4  9f8edefe  addli sp, sp, -152
0000b8  9f100000  addli r1, zero, 1
0000bc  80340002  core_id r9
0000c0  1f8fbe00  addli r30, sp, 88
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37e00400  beq r9, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5b130000  j 152
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
000118  9f101000  addli r1, zero, 9
00011c  7d000100  xsignal r2, 0
000120  7d000100  xsignal r2, 0
000124  7d000100  xsignal r2, 0
000128  1f710000  addli r2, zero, 7
00012c  7d800000  xsignal r1, 0
000130  7d800000  xsignal r1, 0
000134  7d800000  xsignal r1, 0
000138  9f301000  addli r1, zero, 11
00013c  7d000100  xsignal r2, 0
000140  7d000100  xsignal r2, 0
000144  7d000100  xsignal r2, 0
000148  1f012000  addli r2, zero, 16
00014c  7d800000  xsignal r1, 0
000150  7d800000  xsignal r1, 0
000154  7d800000  xsignal r1, 0
000158  9f601000  addli r1, zero, 14
00015c  7d000100  xsignal r2, 0
000160  7d000100  xsignal r2, 0
000164  7d000100  xsignal r2, 0
000168  7d800000  xsignal r1, 0
00016c  7d800000  xsignal r1, 0
000170  7d800000  xsignal r1, 0
000174  e3004f00  loadli.w r1,  32(r30)
000178  63414f00  loadli.w r2,  36(r30)
00017c  00d20002  load_param_i r4, 1
000180  e3015f00  loadli.w r3,  40(r30)
000184  8b101120  mul.s r1, r2, r1
000188  1f010200  addli r2, r4, 0
00018c  0b913050  fmac.s r2, r1, r3
000190  8b913020  mul.s r3, r1, r3
000194  1f71f1ff  addli r2, r2, -1
000198  0b114130  div.s r2, r2, r4
00019c  00520002  load_param_i r4, 0
0001a0  8b104120  mul.s r1, r2, r4
0001a4  0b114150  fmac.s r2, r2, r4
0001a8  0b113140  min.s r2, r2, r3
0001ac  4b3e110c  ble.s r2, r1, 7052
0001b0  1f250000  addli r10, zero, 2
0001b4  33960028  sext_int2long r[13:14], r1
0001b8  33110128  sext_int2long r[3:4], r2
0001bc  1f088000  addli r16, zero, 64
0001c0  1f041000  addli r8, zero, 8
0001c4  9f083000  addli r17, zero, 24
0001c8  1f390000  addli r18, zero, 3
0001cc  1f1a0000  addli r20, zero, 1
0001d0  1f5b0000  addli r22, zero, 5
0001d4  9f4b0000  addli r23, zero, 4
0001d8  9f771000  addli r15, zero, 15
0001dc  1f3e2000  addli r28, zero, 19
0001e0  ab0c807f  lui r25, 522240
0001e4  2b0dffff  lui r26, 1048560
0001e8  9f0a0000  addli r21, zero, 0
0001ec  9380a402  setneq r1, r9, r10
0001f0  733c2ffa  store.d r[3:4], -72(r30)
0001f4  1f710000  addli r2, zero, 7
0001f8  670b1ffe  storeli.w r1, -80(r30)
0001fc  9380a400  seteq r1, r9, r10
000200  e74a1ffe  storeli.w r1, -84(r30)
000204  93802400  seteq r1, r9, r2
000208  2bf1ff7f  lui r2, 524287
00020c  9b15f1ff  ori r11, r2, 4095
000210  2bf17f7f  lui r2, 522239
000214  9b11f1ff  ori r3, r2, 4095
000218  e70a1ffe  storeli.w r1, -88(r30)
00021c  ab800a00  lui r1, 168
000220  9b9000c0  ori r1, r1, 3072
000224  674b1ffe  storeli.w r1, -76(r30)
000228  ab700000  lui r1, 7
00022c  9b90f0ff  ori r1, r1, 4095
000230  db090000  j 76
000234  1f611000  addli r2, zero, 14
000238  9f771000  addli r15, zero, 15
00023c  1f250000  addli r10, zero, 2
000240  1f088000  addli r16, zero, 64
000244  9f083000  addli r17, zero, 24
000248  1f1a0000  addli r20, zero, 1
00024c  1f5b0000  addli r22, zero, 5
000250  9f4b0000  addli r23, zero, 4
000254  1f3e2000  addli r28, zero, 19
000258  7d000100  xsignal r2, 0
00025c  7d800700  xsignal r15, 0
000260  6b560ffe  load.d r[13:14], -32(r30)
000264  e34adfff  loadli.w r21,  -20(r30)
000268  6b528ffb  load.d r[5:6], -72(r30)
00026c  27160600  addli.d r[13:14], r[13:14], 1
000270  9f9a0a00  addli r21, r21, 1
000274  13314604  setlt.sl r2, r[13:14], r[5:6]
000278  370b010c  beq r2, zero, 6848
00027c  63015f00  loadli.w r2,  40(r30)
000280  63424f00  loadli.w r4,  36(r30)
000284  0b972a39  mod.s r14, r21, r18
000288  9f037000  addli r7, zero, 56
00028c  9f6d1000  addli r27, zero, 14
000290  9f690000  addli r19, zero, 6
000294  1f0c2000  addli r24, zero, 16
000298  7330cffe  store.d r[13:14], -32(r30)
00029c  e74e5fff  storeli.w r21, -20(r30)
0002a0  0b112630  div.s r2, r12, r2
0002a4  0b114130  div.s r2, r2, r4
0002a8  0b120131  div.s r4, r2, r16
0002ac  9b326200  slli r5, r4, 6
0002b0  1b323200  slli r4, r4, 3
0002b4  8b125118  sub.s r5, r2, r5
0002b8  0b118138  mod.s r2, r2, r8
0002bc  9bb28201  slli r5, r5, 24
0002c0  97d21201  sra r5, r5, r17
0002c4  8b928230  div.s r5, r5, r8
0002c8  0b112210  add.s r2, r4, r2
0002cc  33160128  sext_int2long r[13:14], r2
0002d0  7334cffc  store.d r[13:14], -56(r30)
0002d4  b3820228  zext_int2long r[6:7], r5
0002d8  17b27202  sll.d r[5:6], r[6:7], r7
0002dc  1b33f700  slli r6, r14, 15
0002e0  17527202  sra.d r[5:6], r[5:6], r7
0002e4  9b330701  slli r7, r14, 16
0002e8  17328202  sll.d r[5:6], r[5:6], r8
0002ec  73384ffc  store.d r[5:6], -48(r30)
0002f0  bbd34403  bneq r9, r20, 1268
0002f4  9f6d1000  addli r27, zero, 14
0002f8  7d100900  xwait r18, 0
0002fc  1732b603  sll.d r[5:6], r[13:14], r27
000300  6b560f00  load.d r[13:14], 0(r30)
000304  0b224610  add.ul r[5:6], r[13:14], r[5:6]
000308  3f245501  blt.s r10, r21, 264
00030c  1d000b00  lock zero, r22
000310  1f710000  addli r2, zero, 7
000314  1f060002  addli r12, zero, 256
000318  15000014  dma_cfg zero, zero, zero, 10
00031c  15004015  dma_cfg zero, zero, r20, 10
000320  1500a014  dma_cfg zero, zero, r10, 10
000324  15002015  dma_cfg zero, zero, r18, 10
000328  15007015  dma_cfg zero, zero, r23, 10
00032c  15006015  dma_cfg zero, zero, r22, 10
000330  15003015  dma_cfg zero, zero, r19, 10
000334  15002014  dma_cfg zero, zero, r2, 10
000338  1f111000  addli r2, zero, 9
00033c  15008014  dma_cfg zero, zero, r8, 10
000340  15002014  dma_cfg zero, zero, r2, 10
000344  1f211000  addli r2, zero, 10
000348  15002014  dma_cfg zero, zero, r2, 10
00034c  1f311000  addli r2, zero, 11
000350  15002014  dma_cfg zero, zero, r2, 10
000354  1f411000  addli r2, zero, 12
000358  15002014  dma_cfg zero, zero, r2, 10
00035c  1f511000  addli r2, zero, 13
000360  15002014  dma_cfg zero, zero, r2, 10
000364  1f112000  addli r2, zero, 17
000368  1500b015  dma_cfg zero, zero, r27, 10
00036c  1500f014  dma_cfg zero, zero, r15, 10
000370  15008015  dma_cfg zero, zero, r24, 10
000374  15002014  dma_cfg zero, zero, r2, 10
000378  1f212000  addli r2, zero, 18
00037c  15002014  dma_cfg zero, zero, r2, 10
000380  1f412000  addli r2, zero, 20
000384  1500c015  dma_cfg zero, zero, r28, 10
000388  15002014  dma_cfg zero, zero, r2, 10
00038c  1f512000  addli r2, zero, 21
000390  15002014  dma_cfg zero, zero, r2, 10
000394  1f612000  addli r2, zero, 22
000398  15002014  dma_cfg zero, zero, r2, 10
00039c  1f712000  addli r2, zero, 23
0003a0  15002014  dma_cfg zero, zero, r2, 10
0003a4  1f113000  addli r2, zero, 25
0003a8  15001015  dma_cfg zero, zero, r17, 10
0003ac  15002014  dma_cfg zero, zero, r2, 10
0003b0  1f213000  addli r2, zero, 26
0003b4  15002014  dma_cfg zero, zero, r2, 10
0003b8  1f313000  addli r2, zero, 27
0003bc  15002014  dma_cfg zero, zero, r2, 10
0003c0  1f413000  addli r2, zero, 28
0003c4  15002014  dma_cfg zero, zero, r2, 10
0003c8  1f513000  addli r2, zero, 29
0003cc  15002014  dma_cfg zero, zero, r2, 10
0003d0  1f613000  addli r2, zero, 30
0003d4  15002014  dma_cfg zero, zero, r2, 10
0003d8  1f713000  addli r2, zero, 31
0003dc  15002014  dma_cfg zero, zero, r2, 10
0003e0  1f010001  addli r2, zero, 128
0003e4  150a0a00  dma_cfg r20, r20, zero, 0
0003e8  150a0002  dma_cfg r20, zero, zero, 1
0003ec  15000004  dma_cfg zero, zero, zero, 2
0003f0  15030007  dma_cfg r6, zero, r16, 3
0003f4  1501a008  dma_cfg r2, zero, r10, 4
0003f8  1506200a  dma_cfg r12, zero, r2, 5
0003fc  15000010  dma_cfg zero, zero, zero, 8
000400  35000000  dma_run zero
000404  1500400b  dma_cfg zero, zero, r20, 5
000408  15000010  dma_cfg zero, zero, zero, 8
00040c  1d100b00  unlock r22
000410  1d800b00  lock zero, r23
000414  1b110304  ori r2, r6, 64
000418  9f060001  addli r13, zero, 128
00041c  1f6c0000  addli r24, zero, 6
000420  1f361000  addli r12, zero, 11
000424  9f571000  addli r15, zero, 13
000428  9f691000  addli r19, zero, 14
00042c  150a0a00  dma_cfg r20, r20, zero, 0
000430  15800204  dma_cfg zero, r5, zero, 2
000434  15010207  dma_cfg r2, r4, r16, 3
000438  1f010002  addli r2, zero, 256
00043c  1f720000  addli r4, zero, 7
000440  9f721000  addli r5, zero, 15
000444  9506a808  dma_cfg r13, r16, r10, 4
000448  1581d60a  dma_cfg r2, r13, r13, 5
00044c  15000010  dma_cfg zero, zero, zero, 8
000450  35000000  dma_run zero
000454  1500400b  dma_cfg zero, zero, r20, 5
000458  15000010  dma_cfg zero, zero, zero, 8
00045c  1d900b00  unlock r23
000460  1d000b00  lock zero, r22
000464  15000014  dma_cfg zero, zero, zero, 10
000468  15004015  dma_cfg zero, zero, r20, 10
00046c  1500a014  dma_cfg zero, zero, r10, 10
000470  15002015  dma_cfg zero, zero, r18, 10
000474  15007015  dma_cfg zero, zero, r23, 10
000478  15006015  dma_cfg zero, zero, r22, 10
00047c  15008015  dma_cfg zero, zero, r24, 10
000480  15004014  dma_cfg zero, zero, r4, 10
000484  1f121000  addli r4, zero, 9
000488  15008014  dma_cfg zero, zero, r8, 10
00048c  15004014  dma_cfg zero, zero, r4, 10
000490  1f221000  addli r4, zero, 10
000494  15004014  dma_cfg zero, zero, r4, 10
000498  1f421000  addli r4, zero, 12
00049c  1500c014  dma_cfg zero, zero, r12, 10
0004a0  15004014  dma_cfg zero, zero, r4, 10
0004a4  1f022000  addli r4, zero, 16
0004a8  1500f014  dma_cfg zero, zero, r15, 10
0004ac  ab870400  lui r15, 72
0004b0  1500b015  dma_cfg zero, zero, r27, 10
0004b4  15005014  dma_cfg zero, zero, r5, 10
0004b8  15004014  dma_cfg zero, zero, r4, 10
0004bc  1f122000  addli r4, zero, 17
0004c0  15004014  dma_cfg zero, zero, r4, 10
0004c4  1f222000  addli r4, zero, 18
0004c8  15004014  dma_cfg zero, zero, r4, 10
0004cc  1f422000  addli r4, zero, 20
0004d0  1500c015  dma_cfg zero, zero, r28, 10
0004d4  eb5d0f01  load.d r[28:29], 16(r30)
0004d8  15004014  dma_cfg zero, zero, r4, 10
0004dc  1f522000  addli r4, zero, 21
0004e0  15004014  dma_cfg zero, zero, r4, 10
0004e4  1f622000  addli r4, zero, 22
0004e8  15004014  dma_cfg zero, zero, r4, 10
0004ec  1f722000  addli r4, zero, 23
0004f0  15004014  dma_cfg zero, zero, r4, 10
0004f4  1f123000  addli r4, zero, 25
0004f8  15001015  dma_cfg zero, zero, r17, 10
0004fc  15004014  dma_cfg zero, zero, r4, 10
000500  1f223000  addli r4, zero, 26
000504  15004014  dma_cfg zero, zero, r4, 10
000508  1f323000  addli r4, zero, 27
00050c  15004014  dma_cfg zero, zero, r4, 10
000510  1f423000  addli r4, zero, 28
000514  15004014  dma_cfg zero, zero, r4, 10
000518  1f523000  addli r4, zero, 29
00051c  15004014  dma_cfg zero, zero, r4, 10
000520  1f623000  addli r4, zero, 30
000524  15004014  dma_cfg zero, zero, r4, 10
000528  1f723000  addli r4, zero, 31
00052c  15004014  dma_cfg zero, zero, r4, 10
000530  150a0a00  dma_cfg r20, r20, zero, 0
000534  150a0002  dma_cfg r20, zero, zero, 1
000538  15000004  dma_cfg zero, zero, zero, 2
00053c  15030007  dma_cfg r6, zero, r16, 3
000540  9506a008  dma_cfg r13, zero, r10, 4
000544  1501d00a  dma_cfg r2, zero, r13, 5
000548  1b31a700  slli r2, r14, 10
00054c  15000010  dma_cfg zero, zero, zero, 8
000550  35000000  dma_run zero
000554  1500400b  dma_cfg zero, zero, r20, 5
000558  15000010  dma_cfg zero, zero, zero, 8
00055c  8b17f110  add.s r15, r2, r15
000560  1d100b00  unlock r22
000564  7d000500  xsignal r10, 0
000568  6b520ffd  load.d r[5:6], -48(r30)
00056c  7d100600  xwait r12, 0
000570  e34adfff  loadli.w r21,  -20(r30)
000574  17324203  sll.d r[5:6], r[5:6], r20
000578  0ba24d10  add.ul r[5:6], r[28:29], r[5:6]
00057c  1f3e2000  addli r28, zero, 19
000580  9f2d2000  addli r27, zero, 18
000584  3f145501  blt.s r10, r21, 260
000588  1d000b00  lock zero, r22
00058c  9f7a0000  addli r21, zero, 7
000590  15000014  dma_cfg zero, zero, zero, 10
000594  15004015  dma_cfg zero, zero, r20, 10
000598  1500a014  dma_cfg zero, zero, r10, 10
00059c  15002015  dma_cfg zero, zero, r18, 10
0005a0  15007015  dma_cfg zero, zero, r23, 10
0005a4  15006015  dma_cfg zero, zero, r22, 10
0005a8  15008015  dma_cfg zero, zero, r24, 10
0005ac  15005015  dma_cfg zero, zero, r21, 10
0005b0  9f1a1000  addli r21, zero, 9
0005b4  15008014  dma_cfg zero, zero, r8, 10
0005b8  15005015  dma_cfg zero, zero, r21, 10
0005bc  9f2a1000  addli r21, zero, 10
0005c0  15005015  dma_cfg zero, zero, r21, 10
0005c4  9f4a1000  addli r21, zero, 12
0005c8  1500c014  dma_cfg zero, zero, r12, 10
0005cc  15005015  dma_cfg zero, zero, r21, 10
0005d0  9f5a1000  addli r21, zero, 13
0005d4  15005015  dma_cfg zero, zero, r21, 10
0005d8  9f7a1000  addli r21, zero, 15
0005dc  15003015  dma_cfg zero, zero, r19, 10
0005e0  15005015  dma_cfg zero, zero, r21, 10
0005e4  9f0a2000  addli r21, zero, 16
0005e8  15005015  dma_cfg zero, zero, r21, 10
0005ec  9f1a2000  addli r21, zero, 17
0005f0  15005015  dma_cfg zero, zero, r21, 10
0005f4  9f4a2000  addli r21, zero, 20
0005f8  1500b015  dma_cfg zero, zero, r27, 10
0005fc  1500c015  dma_cfg zero, zero, r28, 10
000600  15005015  dma_cfg zero, zero, r21, 10
000604  9f5a2000  addli r21, zero, 21
000608  15005015  dma_cfg zero, zero, r21, 10
00060c  9f6a2000  addli r21, zero, 22
000610  15005015  dma_cfg zero, zero, r21, 10
000614  9f7a2000  addli r21, zero, 23
000618  15005015  dma_cfg zero, zero, r21, 10
00061c  9f1a3000  addli r21, zero, 25
000620  15001015  dma_cfg zero, zero, r17, 10
000624  15005015  dma_cfg zero, zero, r21, 10
000628  9f2a3000  addli r21, zero, 26
00062c  15005015  dma_cfg zero, zero, r21, 10
000630  9f3a3000  addli r21, zero, 27
000634  15005015  dma_cfg zero, zero, r21, 10
000638  9f4a3000  addli r21, zero, 28
00063c  15005015  dma_cfg zero, zero, r21, 10
000640  9f5a3000  addli r21, zero, 29
000644  15005015  dma_cfg zero, zero, r21, 10
000648  9f6a3000  addli r21, zero, 30
00064c  15005015  dma_cfg zero, zero, r21, 10
000650  9f7a3000  addli r21, zero, 31
000654  15005015  dma_cfg zero, zero, r21, 10
000658  150a0a00  dma_cfg r20, r20, zero, 0
00065c  150a0002  dma_cfg r20, zero, zero, 1
000660  15000004  dma_cfg zero, zero, zero, 2
000664  95070007  dma_cfg r15, zero, r16, 3
000668  95068008  dma_cfg r13, zero, r8, 4
00066c  1f040008  addli r8, zero, 1024
000670  1504400b  dma_cfg r8, zero, r20, 5
000674  15000010  dma_cfg zero, zero, zero, 8
000678  35000000  dma_run zero
00067c  1500400b  dma_cfg zero, zero, r20, 5
000680  15000010  dma_cfg zero, zero, zero, 8
000684  1d100b00  unlock r22
000688  2b840400  lui r8, 72
00068c  e74d0ffe  storeli.w zero, -36(r30)
000690  e70d0ffe  storeli.w zero, -40(r30)
000694  670f0ffe  storeli.w zero, -16(r30)
000698  1d800b00  lock zero, r23
00069c  1b140404  ori r8, r8, 64
0006a0  150a0a00  dma_cfg r20, r20, zero, 0
0006a4  15800204  dma_cfg zero, r5, zero, 2
0006a8  0b118110  add.s r2, r2, r8
0006ac  1f041000  addli r8, zero, 8
0006b0  15010207  dma_cfg r2, r4, r16, 3
0006b4  1f010008  addli r2, zero, 1024
0006b8  1f020004  addli r4, zero, 512
0006bc  9f421000  addli r5, zero, 12
0006c0  95068808  dma_cfg r13, r16, r8, 4
0006c4  1501420b  dma_cfg r2, r4, r20, 5
0006c8  1f720000  addli r4, zero, 7
0006cc  15000010  dma_cfg zero, zero, zero, 8
0006d0  35000000  dma_run zero
0006d4  1500400b  dma_cfg zero, zero, r20, 5
0006d8  15000010  dma_cfg zero, zero, zero, 8
0006dc  1d900b00  unlock r23
0006e0  1d000b00  lock zero, r22
0006e4  15000014  dma_cfg zero, zero, zero, 10
0006e8  15004015  dma_cfg zero, zero, r20, 10
0006ec  1500a014  dma_cfg zero, zero, r10, 10
0006f0  15002015  dma_cfg zero, zero, r18, 10
0006f4  15007015  dma_cfg zero, zero, r23, 10
0006f8  15006015  dma_cfg zero, zero, r22, 10
0006fc  15008015  dma_cfg zero, zero, r24, 10
000700  1f0c2000  addli r24, zero, 16
000704  15004014  dma_cfg zero, zero, r4, 10
000708  1f121000  addli r4, zero, 9
00070c  15008014  dma_cfg zero, zero, r8, 10
000710  15004014  dma_cfg zero, zero, r4, 10
000714  1f221000  addli r4, zero, 10
000718  15004014  dma_cfg zero, zero, r4, 10
00071c  1500c014  dma_cfg zero, zero, r12, 10
000720  15005014  dma_cfg zero, zero, r5, 10
000724  9f521000  addli r5, zero, 13
000728  15005014  dma_cfg zero, zero, r5, 10
00072c  9f721000  addli r5, zero, 15
000730  15003015  dma_cfg zero, zero, r19, 10
000734  15005014  dma_cfg zero, zero, r5, 10
000738  9f022000  addli r5, zero, 16
00073c  15005014  dma_cfg zero, zero, r5, 10
000740  9f122000  addli r5, zero, 17
000744  15005014  dma_cfg zero, zero, r5, 10
000748  9f422000  addli r5, zero, 20
00074c  1500b015  dma_cfg zero, zero, r27, 10
000750  1500c015  dma_cfg zero, zero, r28, 10
000754  15005014  dma_cfg zero, zero, r5, 10
000758  9f522000  addli r5, zero, 21
00075c  15005014  dma_cfg zero, zero, r5, 10
000760  9f622000  addli r5, zero, 22
000764  15005014  dma_cfg zero, zero, r5, 10
000768  9f722000  addli r5, zero, 23
00076c  15005014  dma_cfg zero, zero, r5, 10
000770  9f123000  addli r5, zero, 25
000774  15001015  dma_cfg zero, zero, r17, 10
000778  15005014  dma_cfg zero, zero, r5, 10
00077c  9f223000  addli r5, zero, 26
000780  15005014  dma_cfg zero, zero, r5, 10
000784  9f323000  addli r5, zero, 27
000788  15005014  dma_cfg zero, zero, r5, 10
00078c  9f423000  addli r5, zero, 28
000790  15005014  dma_cfg zero, zero, r5, 10
000794  9f523000  addli r5, zero, 29
000798  15005014  dma_cfg zero, zero, r5, 10
00079c  9f623000  addli r5, zero, 30
0007a0  15005014  dma_cfg zero, zero, r5, 10
0007a4  9f723000  addli r5, zero, 31
0007a8  15005014  dma_cfg zero, zero, r5, 10
0007ac  9f020001  addli r5, zero, 128
0007b0  150a0a00  dma_cfg r20, r20, zero, 0
0007b4  150a0002  dma_cfg r20, zero, zero, 1
0007b8  15000004  dma_cfg zero, zero, zero, 2
0007bc  95070007  dma_cfg r15, zero, r16, 3
0007c0  95068008  dma_cfg r13, zero, r8, 4
0007c4  1501400b  dma_cfg r2, zero, r20, 5
0007c8  15000010  dma_cfg zero, zero, zero, 8
0007cc  35000000  dma_run zero
0007d0  1500400b  dma_cfg zero, zero, r20, 5
0007d4  15000010  dma_cfg zero, zero, zero, 8
0007d8  1d100b00  unlock r22
0007dc  7d000200  xsignal r4, 0
0007e0  5b5d0000  j 744
0007e4  37caa400  beq r9, r10, 656
0007e8  2b820100  lui r4, 24
0007ec  1f011000  addli r2, zero, 8
0007f0  0b944310  add.s r8, r7, r4
0007f4  3bd3340b  bneq r9, r19, 5332
0007f8  6b520ffd  load.d r[5:6], -48(r30)
0007fc  6b568f00  load.d r[13:14], 8(r30)
000800  17324203  sll.d r[5:6], r[5:6], r20
000804  0b224610  add.ul r[5:6], r[13:14], r[5:6]
000808  9f760000  addli r13, zero, 7
00080c  7d900600  xwait r13, 0
000810  6341dfff  loadli.w r2,  -20(r30)
000814  3f242500  blt.s r10, r2, 264
000818  1d000b00  lock zero, r22
00081c  1f011000  addli r2, zero, 8
000820  1f161000  addli r12, zero, 9
000824  15000014  dma_cfg zero, zero, zero, 10
000828  15004015  dma_cfg zero, zero, r20, 10
00082c  1500a014  dma_cfg zero, zero, r10, 10
000830  15002015  dma_cfg zero, zero, r18, 10
000834  15007015  dma_cfg zero, zero, r23, 10
000838  15006015  dma_cfg zero, zero, r22, 10
00083c  15003015  dma_cfg zero, zero, r19, 10
000840  1500d014  dma_cfg zero, zero, r13, 10
000844  15002014  dma_cfg zero, zero, r2, 10
000848  1500c014  dma_cfg zero, zero, r12, 10
00084c  1f261000  addli r12, zero, 10
000850  1500c014  dma_cfg zero, zero, r12, 10
000854  1f361000  addli r12, zero, 11
000858  1500c014  dma_cfg zero, zero, r12, 10
00085c  1f461000  addli r12, zero, 12
000860  1500c014  dma_cfg zero, zero, r12, 10
000864  1f561000  addli r12, zero, 13
000868  1500c014  dma_cfg zero, zero, r12, 10
00086c  1f162000  addli r12, zero, 17
000870  1500b015  dma_cfg zero, zero, r27, 10
000874  1500f014  dma_cfg zero, zero, r15, 10
000878  15008015  dma_cfg zero, zero, r24, 10
00087c  1500c014  dma_cfg zero, zero, r12, 10
000880  1f262000  addli r12, zero, 18
000884  1500c014  dma_cfg zero, zero, r12, 10
000888  1f462000  addli r12, zero, 20
00088c  1500c015  dma_cfg zero, zero, r28, 10
000890  1500c014  dma_cfg zero, zero, r12, 10
000894  1f562000  addli r12, zero, 21
000898  1500c014  dma_cfg zero, zero, r12, 10
00089c  1f662000  addli r12, zero, 22
0008a0  1500c014  dma_cfg zero, zero, r12, 10
0008a4  1f762000  addli r12, zero, 23
0008a8  1500c014  dma_cfg zero, zero, r12, 10
0008ac  1f163000  addli r12, zero, 25
0008b0  15001015  dma_cfg zero, zero, r17, 10
0008b4  1500c014  dma_cfg zero, zero, r12, 10
0008b8  1f263000  addli r12, zero, 26
0008bc  1500c014  dma_cfg zero, zero, r12, 10
0008c0  1f363000  addli r12, zero, 27
0008c4  1500c014  dma_cfg zero, zero, r12, 10
0008c8  1f463000  addli r12, zero, 28
0008cc  1500c014  dma_cfg zero, zero, r12, 10
0008d0  1f563000  addli r12, zero, 29
0008d4  1500c014  dma_cfg zero, zero, r12, 10
0008d8  1f663000  addli r12, zero, 30
0008dc  1500c014  dma_cfg zero, zero, r12, 10
0008e0  1f763000  addli r12, zero, 31
0008e4  1500c014  dma_cfg zero, zero, r12, 10
0008e8  1f060001  addli r12, zero, 128
0008ec  150a0a00  dma_cfg r20, r20, zero, 0
0008f0  150a0002  dma_cfg r20, zero, zero, 1
0008f4  15000004  dma_cfg zero, zero, zero, 2
0008f8  15040007  dma_cfg r8, zero, r16, 3
0008fc  15062008  dma_cfg r12, zero, r2, 4
000900  1f010008  addli r2, zero, 1024
000904  1501000b  dma_cfg r2, zero, r16, 5
000908  15000010  dma_cfg zero, zero, zero, 8
00090c  35000000  dma_run zero
000910  1500400b  dma_cfg zero, zero, r20, 5
000914  15000010  dma_cfg zero, zero, zero, 8
000918  1d100b00  unlock r22
00091c  2b810100  lui r2, 24
000920  1d800b00  lock zero, r23
000924  1f660000  addli r12, zero, 6
000928  9f691000  addli r19, zero, 14
00092c  150a0a00  dma_cfg r20, r20, zero, 0
000930  1b110104  ori r2, r2, 64
000934  15800204  dma_cfg zero, r5, zero, 2
000938  0b912310  add.s r2, r7, r2
00093c  15010207  dma_cfg r2, r4, r16, 3
000940  1f011000  addli r2, zero, 8
000944  1f020001  addli r4, zero, 128
000948  9f020020  addli r5, zero, 4096
00094c  15022808  dma_cfg r4, r16, r2, 4
000950  1f020008  addli r4, zero, 1024
000954  1582020b  dma_cfg r4, r5, r16, 5
000958  9f020001  addli r5, zero, 128
00095c  15000010  dma_cfg zero, zero, zero, 8
000960  35000000  dma_run zero
000964  1500400b  dma_cfg zero, zero, r20, 5
000968  15000010  dma_cfg zero, zero, zero, 8
00096c  1d900b00  unlock r23
000970  1d000b00  lock zero, r22
000974  15000014  dma_cfg zero, zero, zero, 10
000978  15004015  dma_cfg zero, zero, r20, 10
00097c  1500a014  dma_cfg zero, zero, r10, 10
000980  15002015  dma_cfg zero, zero, r18, 10
000984  15007015  dma_cfg zero, zero, r23, 10
000988  15006015  dma_cfg zero, zero, r22, 10
00098c  1500c014  dma_cfg zero, zero, r12, 10
000990  1500d014  dma_cfg zero, zero, r13, 10
000994  15002014  dma_cfg zero, zero, r2, 10
000998  1f111000  addli r2, zero, 9
00099c  15002014  dma_cfg zero, zero, r2, 10
0009a0  1f211000  addli r2, zero, 10
0009a4  15002014  dma_cfg zero, zero, r2, 10
0009a8  1f311000  addli r2, zero, 11
0009ac  15002014  dma_cfg zero, zero, r2, 10
0009b0  1f411000  addli r2, zero, 12
0009b4  15002014  dma_cfg zero, zero, r2, 10
0009b8  1f511000  addli r2, zero, 13
0009bc  15002014  dma_cfg zero, zero, r2, 10
0009c0  1f112000  addli r2, zero, 17
0009c4  15003015  dma_cfg zero, zero, r19, 10
0009c8  1500f014  dma_cfg zero, zero, r15, 10
0009cc  15008015  dma_cfg zero, zero, r24, 10
0009d0  15002014  dma_cfg zero, zero, r2, 10
0009d4  1f212000  addli r2, zero, 18
0009d8  15002014  dma_cfg zero, zero, r2, 10
0009dc  1f412000  addli r2, zero, 20
0009e0  1500c015  dma_cfg zero, zero, r28, 10
0009e4  15002014  dma_cfg zero, zero, r2, 10
0009e8  1f512000  addli r2, zero, 21
0009ec  15002014  dma_cfg zero, zero, r2, 10
0009f0  1f612000  addli r2, zero, 22
0009f4  15002014  dma_cfg zero, zero, r2, 10
0009f8  1f712000  addli r2, zero, 23
0009fc  15002014  dma_cfg zero, zero, r2, 10
000a00  1f113000  addli r2, zero, 25
000a04  15001015  dma_cfg zero, zero, r17, 10
000a08  15002014  dma_cfg zero, zero, r2, 10
000a0c  1f213000  addli r2, zero, 26
000a10  15002014  dma_cfg zero, zero, r2, 10
000a14  1f313000  addli r2, zero, 27
000a18  15002014  dma_cfg zero, zero, r2, 10
000a1c  1f413000  addli r2, zero, 28
000a20  15002014  dma_cfg zero, zero, r2, 10
000a24  1f513000  addli r2, zero, 29
000a28  15002014  dma_cfg zero, zero, r2, 10
000a2c  1f613000  addli r2, zero, 30
000a30  15002014  dma_cfg zero, zero, r2, 10
000a34  1f713000  addli r2, zero, 31
000a38  15002014  dma_cfg zero, zero, r2, 10
000a3c  150a0a00  dma_cfg r20, r20, zero, 0
000a40  150a0002  dma_cfg r20, zero, zero, 1
000a44  15000004  dma_cfg zero, zero, zero, 2
000a48  15040007  dma_cfg r8, zero, r16, 3
000a4c  1f041000  addli r8, zero, 8
000a50  95028008  dma_cfg r5, zero, r8, 4
000a54  1502000b  dma_cfg r4, zero, r16, 5
000a58  15000010  dma_cfg zero, zero, zero, 8
000a5c  35000000  dma_run zero
000a60  1500400b  dma_cfg zero, zero, r20, 5
000a64  15000010  dma_cfg zero, zero, zero, 8
000a68  1d100b00  unlock r22
000a6c  7d000600  xsignal r12, 0
000a70  5b070000  j 56
000a74  7d100500  xwait r10, 0
000a78  7d100b00  xwait r22, 0
000a7c  1d000000  lock zero, zero
000a80  9f020001  addli r5, zero, 128
000a84  9f691000  addli r19, zero, 14
000a88  01050000  ds_cfg r10, zero, 0
000a8c  01080002  ds_cfg r16, zero, 1
000a90  0108001c  ds_cfg r16, zero, 14
000a94  8102001a  ds_cfg r5, zero, 13
000a98  21130303  shuffle_batch r6, r6, r16, 1
000a9c  1d100000  unlock zero
000aa0  7d000900  xsignal r18, 0
000aa4  7d800b00  xsignal r23, 0
000aa8  1b31a700  slli r2, r14, 10
000aac  2b820400  lui r4, 72
000ab0  670f0ffe  storeli.w zero, -16(r30)
000ab4  8b174110  add.s r15, r2, r4
000ab8  63016fff  loadli.w r2,  -80(r30)
000abc  e74d2ffe  storeli.w r2, -36(r30)
000ac0  63415fff  loadli.w r2,  -84(r30)
000ac4  e70d2ffe  storeli.w r2, -40(r30)
000ac8  9f181000  addli r17, zero, 9
000acc  1f221000  addli r4, zero, 10
000ad0  63416fff  loadli.w r2,  -76(r30)
000ad4  9b361701  slli r13, r14, 17
000ad8  8b9a2610  add.s r21, r13, r2
000adc  3bd17401  bneq r9, r23, 84
000ae0  1f010000  addli r2, zero, 0
000ae4  1f050008  addli r10, zero, 1024
000ae8  2b460000  lui r12, 4
000aec  7d900b00  xwait r23, 0
000af0  7d100400  xwait r8, 0
000af4  7d900900  xwait r19, 0
000af8  1d000a00  lock zero, r20
000afc  0b922a10  add.s r4, r21, r2
000b00  1f010102  addli r2, r2, 256
000b04  09085800  mm_cfg r16, r16, r5, 0
000b08  890b4405  mm_cfg r23, r8, r20, 2
000b0c  29027310  mm r4, r6, r7, 8
000b10  8b93c310  add.s r7, r7, r12
000b14  1d100a00  unlock r20
000b18  bb0fa1fe  bneq r2, r10, -32
000b1c  1f411000  addli r2, zero, 12
000b20  7d000b00  xsignal r22, 0
000b24  7d800800  xsignal r17, 0
000b28  7d000100  xsignal r2, 0
000b2c  5b0e0000  j 112
000b30  3bf16401  bneq r9, r22, 92
000b34  7d100200  xwait r4, 0
000b38  1f421000  addli r4, zero, 12
000b3c  1f010000  addli r2, zero, 0
000b40  9f321000  addli r5, zero, 11
000b44  1f531000  addli r6, zero, 13
000b48  ab030200  lui r7, 32
000b4c  7d100200  xwait r4, 0
000b50  1d000500  lock zero, r10
000b54  2b02803f  lui r4, 260096
000b58  0d000002  ew_cfg zero, zero, zero, 1
000b5c  0d120200  ewcoeff_cfg r4, r4, zero, 0
000b60  1f72f001  addli r4, zero, 255
000b64  0d000204  ew_cfg zero, r4, zero, 2
000b68  0d0a0006  ew_cfg r20, zero, zero, 3
000b6c  0b922a10  add.s r4, r21, r2
000b70  1f010108  addli r2, r2, 1024
000b74  2d02f200  dsmadd r4, r4, r15, 0
000b78  bb5f71fe  bneq r2, r7, -12
000b7c  1d100500  unlock r10
000b80  7d800200  xsignal r5, 0
000b84  7d000300  xsignal r6, 0
000b88  db020000  j 20
000b8c  3bc02401  bneq r9, r18, 16
000b90  1f511000  addli r2, zero, 13
000b94  7d100100  xwait r2, 0
000b98  7d100c00  xwait r24, 0
000b9c  2b810400  lui r2, 72
000ba0  1f72f001  addli r4, zero, 255
000ba4  3d000000  xfence
000ba8  674cdffe  storeli.w r13, -60(r30)
000bac  00a00300  mfence { lm, sm, gm }
000bb0  1b1101c0  ori r2, r2, 3072
000bb4  b30d0228  zext_int2long r[28:29], r4
000bb8  80220204  csr_set csr5, r4
000bbc  00e00200  sync_core
000bc0  8b9b2610  add.s r23, r13, r2
000bc4  1f010002  addli r2, zero, 256
000bc8  33030128  zext_int2long r[7:8], r2
000bcc  37810400  beq r9, zero, 64
000bd0  1f110000  addli r2, zero, 1
000bd4  b7d82400  beq r9, r2, 564
000bd8  6301bfff  loadli.w r2,  -40(r30)
000bdc  bb300102  bneq r2, zero, 1068
000be0  1f310000  addli r2, zero, 3
000be4  b7982402  beq r9, r2, 1572
000be8  1f410000  addli r2, zero, 4
000bec  37f02404  beq r9, r2, 2076
000bf0  1f510000  addli r2, zero, 5
000bf4  37d82404  beq r9, r2, 2580
000bf8  6341bfff  loadli.w r2,  -36(r30)
000bfc  3b300106  bneq r2, zero, 3084
000c00  6301efff  loadli.w r2,  -16(r30)
000c04  3b180106  bneq r2, zero, 3588
000c08  db000200  j 4100
000c0c  3d000000  xfence
000c10  33020028  zext_int2long r[5:6], zero
000c14  00a00300  mfence { lm, sm, gm }
000c18  5b040000  j 32
000c1c  1f711000  addli r2, zero, 15
000c20  6b548fff  load.d r[9:10], -8(r30)
000c24  33020128  zext_int2long r[5:6], r2
000c28  13214404  setlt.ul r2, r[9:10], r[5:6]
000c2c  27120400  addli.d r[5:6], r[9:10], 1
000c30  1f041000  addli r8, zero, 8
000c34  37170100  beq r2, zero, 452
000c38  97378202  sll.d r[16:17], r[5:6], r8
000c3c  733c4ffe  store.d r[5:6], -8(r30)
000c40  bbd15b01  bneq r23, r21, 116
000c44  33020028  zext_int2long r[5:6], zero
000c48  5b030000  j 24
000c4c  9324b205  setlt.ul r9, r[5:6], r[28:29]
000c50  0b912b10  add.s r2, r23, r2
000c54  27120200  addli.d r[5:6], r[5:6], 1
000c58  73608100  stores.w r8, 0(r2)
000c5c  378f04fe  beq r9, zero, -64
000c60  0b24f210  add.ul r[9:10], r[5:6], r[16:17]
000c64  1b312400  slli r2, r8, 2
000c68  0b942a10  add.s r8, r21, r2
000c6c  ef440400  loads.w r9, 0(r8)
000c70  1785b400  and r10, r9, r11
000c74  1384ac04  setlt.u r8, r25, r10
000c78  3b500400  bneq r8, zero, 20
000c7c  1f840400  addli r8, r9, 0
000c80  1385a104  setlt.u r10, r3, r10
000c84  3b2f05fe  bneq r10, zero, -56
000c88  db020000  j 20
000c8c  2b044000  lui r8, 1024
000c90  17948400  or r8, r9, r8
000c94  1385a104  setlt.u r10, r3, r10
000c98  bb5e05fe  bneq r10, zero, -76
000c9c  1bc40401  srli r8, r9, 16
000ca0  1b041400  andi r8, r8, 1
000ca4  0b948410  add.s r8, r9, r8
000ca8  0b141410  add.s r8, r8, r1
000cac  1704a401  and r8, r8, r26
000cb0  dbf3ffff  j -100
000cb4  33040028  zext_int2long r[9:10], zero
000cb8  db040000  j 36
000cbc  27440400  addli.d r[9:10], r[9:10], 4
000cc0  0b924b10  add.s r4, r23, r4
000cc4  13216400  seteq.d r2, r[9:10], r[7:8]
000cc8  73665200  stores.w r5, 12(r4)
000ccc  7364a200  stores.w r10, 8(r4)
000cd0  73621201  stores.w r17, 4(r4)
000cd4  73604201  stores.w r20, 0(r4)
000cd8  3b1d01fe  bneq r2, zero, -188
000cdc  0b22f410  add.ul r[5:6], r[9:10], r[16:17]
000ce0  1b322200  slli r4, r4, 2
000ce4  0b9a4a10  add.s r20, r21, r4
000ce8  6f41ca00  loads.w r2, 12(r20)
000cec  1706b100  and r12, r2, r11
000cf0  9382cc04  setlt.u r5, r25, r12
000cf4  3bb00200  bneq r5, zero, 12
000cf8  9f020100  addli r5, r2, 0
000cfc  db010000  j 12
000d00  ab024000  lui r5, 1024
000d04  97125100  or r5, r2, r5
000d08  ef468a00  loads.w r13, 8(r20)
000d0c  1787b600  and r14, r13, r11
000d10  1385ec04  setlt.u r10, r25, r14
000d14  3b300500  bneq r10, zero, 12
000d18  1f850600  addli r10, r13, 0
000d1c  db010000  j 12
000d20  2b054000  lui r10, 1024
000d24  1795a600  or r10, r13, r10
000d28  6f4b4a00  loads.w r22, 4(r20)
000d2c  1709bb00  and r18, r22, r11
000d30  93882c05  setlt.u r17, r25, r18
000d34  3bb00800  bneq r17, zero, 12
000d38  9f080b00  addli r17, r22, 0
000d3c  db010000  j 12
000d40  ab084000  lui r17, 1024
000d44  97181b01  or r17, r22, r17
000d48  ef490a00  loads.w r19, 0(r20)
000d4c  178cb900  and r24, r19, r11
000d50  138a8c05  setlt.u r20, r25, r24
000d54  3b500a00  bneq r20, zero, 20
000d58  1f8a0900  addli r20, r19, 0
000d5c  138c8105  setlt.u r24, r3, r24
000d60  37600c00  beq r24, zero, 24
000d64  5b050000  j 40
000d68  2b0a4000  lui r20, 1024
000d6c  179a4901  or r20, r19, r20
000d70  138c8105  setlt.u r24, r3, r24
000d74  3b600c00  bneq r24, zero, 24
000d78  1bca0901  srli r20, r19, 16
000d7c  1b0a1a00  andi r20, r20, 1
000d80  8b994911  add.s r19, r19, r20
000d84  8b991910  add.s r19, r19, r1
000d88  178aa901  and r20, r19, r26
000d8c  13892105  setlt.u r18, r3, r18
000d90  37600900  beq r18, zero, 24
000d94  1387e104  setlt.u r14, r3, r14
000d98  b7300700  beq r14, zero, 44
000d9c  1386c104  setlt.u r12, r3, r12
000da0  3b7c06fe  bneq r12, zero, -228
000da4  db070000  j 60
000da8  9b480b01  srli r17, r22, 16
000dac  9b881800  andi r17, r17, 1
000db0  8b181b11  add.s r17, r22, r17
000db4  8b981810  add.s r17, r17, r1
000db8  9788a801  and r17, r17, r26
000dbc  1387e104  setlt.u r14, r3, r14
000dc0  3b7f07fe  bneq r14, zero, -36
000dc4  1bc50601  srli r10, r13, 16
000dc8  1b051500  andi r10, r10, 1
000dcc  0b95a610  add.s r10, r13, r10
000dd0  0b151510  add.s r10, r10, r1
000dd4  1705a501  and r10, r10, r26
000dd8  1386c104  setlt.u r12, r3, r12
000ddc  bb0b06fe  bneq r12, zero, -288
000de0  9b420101  srli r5, r2, 16
000de4  9b821200  andi r5, r5, 1
000de8  0b115110  add.s r2, r2, r5
000dec  0b111110  add.s r2, r2, r1
000df0  9702a101  and r5, r2, r26
000df4  5bd9ffff  j -312
000df8  80340002  core_id r9
000dfc  00200100  mfence { sm }
000e00  1f110000  addli r2, zero, 1
000e04  3bd724fe  bneq r9, r2, -556
000e08  1f012000  addli r2, zero, 16
000e0c  3d000000  xfence
000e10  00a00300  mfence { lm, sm, gm }
000e14  33020128  zext_int2long r[5:6], r2
000e18  5b040000  j 32
000e1c  1f713000  addli r2, zero, 31
000e20  6b548fff  load.d r[9:10], -8(r30)
000e24  33020128  zext_int2long r[5:6], r2
000e28  13214404  setlt.ul r2, r[9:10], r[5:6]
000e2c  27120400  addli.d r[5:6], r[9:10], 1
000e30  1f041000  addli r8, zero, 8
000e34  37170100  beq r2, zero, 452
000e38  97378202  sll.d r[16:17], r[5:6], r8
000e3c  733c4ffe  store.d r[5:6], -8(r30)
000e40  bbd15b01  bneq r23, r21, 116
000e44  33020028  zext_int2long r[5:6], zero
000e48  5b030000  j 24
000e4c  9324b205  setlt.ul r9, r[5:6], r[28:29]
000e50  0b912b10  add.s r2, r23, r2
000e54  27120200  addli.d r[5:6], r[5:6], 1
000e58  73608100  stores.w r8, 0(r2)
000e5c  378f04fe  beq r9, zero, -64
000e60  0b24f210  add.ul r[9:10], r[5:6], r[16:17]
000e64  1b312400  slli r2, r8, 2
000e68  0b942a10  add.s r8, r21, r2
000e6c  ef440400  loads.w r9, 0(r8)
000e70  1785b400  and r10, r9, r11
000e74  1384ac04  setlt.u r8, r25, r10
000e78  3b500400  bneq r8, zero, 20
000e7c  1f840400  addli r8, r9, 0
000e80  1385a104  setlt.u r10, r3, r10
000e84  3b2f05fe  bneq r10, zero, -56
000e88  db020000  j 20
000e8c  2b044000  lui r8, 1024
000e90  17948400  or r8, r9, r8
000e94  1385a104  setlt.u r10, r3, r10
000e98  bb5e05fe  bneq r10, zero, -76
000e9c  1bc40401  srli r8, r9, 16
000ea0  1b041400  andi r8, r8, 1
000ea4  0b948410  add.s r8, r9, r8
000ea8  0b141410  add.s r8, r8, r1
000eac  1704a401  and r8, r8, r26
000eb0  dbf3ffff  j -100
000eb4  33040028  zext_int2long r[9:10], zero
000eb8  db040000  j 36
000ebc  27440400  addli.d r[9:10], r[9:10], 4
000ec0  0b924b10  add.s r4, r23, r4
000ec4  13216400  seteq.d r2, r[9:10], r[7:8]
000ec8  73665200  stores.w r5, 12(r4)
000ecc  7364a200  stores.w r10, 8(r4)
000ed0  73621201  stores.w r17, 4(r4)
000ed4  73604201  stores.w r20, 0(r4)
000ed8  3b1d01fe  bneq r2, zero, -188
000edc  0b22f410  add.ul r[5:6], r[9:10], r[16:17]
000ee0  1b322200  slli r4, r4, 2
000ee4  0b9a4a10  add.s r20, r21, r4
000ee8  6f41ca00  loads.w r2, 12(r20)
000eec  1706b100  and r12, r2, r11
000ef0  9382cc04  setlt.u r5, r25, r12
000ef4  3bb00200  bneq r5, zero, 12
000ef8  9f020100  addli r5, r2, 0
000efc  db010000  j 12
000f00  ab024000  lui r5, 1024
000f04  97125100  or r5, r2, r5
000f08  ef468a00  loads.w r13, 8(r20)
000f0c  1787b600  and r14, r13, r11
000f10  1385ec04  setlt.u r10, r25, r14
000f14  3b300500  bneq r10, zero, 12
000f18  1f850600  addli r10, r13, 0
000f1c  db010000  j 12
000f20  2b054000  lui r10, 1024
000f24  1795a600  or r10, r13, r10
000f28  6f4b4a00  loads.w r22, 4(r20)
000f2c  1709bb00  and r18, r22, r11
000f30  93882c05  setlt.u r17, r25, r18
000f34  3bb00800  bneq r17, zero, 12
000f38  9f080b00  addli r17, r22, 0
000f3c  db010000  j 12
000f40  ab084000  lui r17, 1024
000f44  97181b01  or r17, r22, r17
000f48  ef490a00  loads.w r19, 0(r20)
000f4c  178cb900  and r24, r19, r11
000f50  138a8c05  setlt.u r20, r25, r24
000f54  3b010a00  bneq r20, zero, 64
000f58  1f8a0900  addli r20, r19, 0
000f5c  138c8105  setlt.u r24, r3, r24
000f60  3b600c00  bneq r24, zero, 24
000f64  1bca0901  srli r20, r19, 16
000f68  1b0a1a00  andi r20, r20, 1
000f6c  8b994911  add.s r19, r19, r20
000f70  8b991910  add.s r19, r19, r1
000f74  178aa901  and r20, r19, r26
000f78  13892105  setlt.u r18, r3, r18
000f7c  b7300900  beq r18, zero, 44
000f80  1387e104  setlt.u r14, r3, r14
000f84  37010700  beq r14, zero, 64
000f88  1386c104  setlt.u r12, r3, r12
000f8c  bb4c06fe  bneq r12, zero, -208
000f90  5b0a0000  j 80
000f94  2b0a4000  lui r20, 1024
000f98  179a4901  or r20, r19, r20
000f9c  138c8105  setlt.u r24, r3, r24
000fa0  371f0cfe  beq r24, zero, -60
000fa4  dbfaffff  j -44
000fa8  9b480b01  srli r17, r22, 16
000fac  9b881800  andi r17, r17, 1
000fb0  8b181b11  add.s r17, r22, r17
000fb4  8b981810  add.s r17, r17, r1
000fb8  9788a801  and r17, r17, r26
000fbc  1387e104  setlt.u r14, r3, r14
000fc0  3b2f07fe  bneq r14, zero, -56
000fc4  1bc50601  srli r10, r13, 16
000fc8  1b051500  andi r10, r10, 1
000fcc  0b95a610  add.s r10, r13, r10
000fd0  0b151510  add.s r10, r10, r1
000fd4  1705a501  and r10, r10, r26
000fd8  1386c104  setlt.u r12, r3, r12
000fdc  bb0b06fe  bneq r12, zero, -288
000fe0  9b420101  srli r5, r2, 16
000fe4  9b821200  andi r5, r5, 1
000fe8  0b115110  add.s r2, r2, r5
000fec  0b111110  add.s r2, r2, r1
000ff0  9702a101  and r5, r2, r26
000ff4  5bd9ffff  j -312
000ff8  80340002  core_id r9
000ffc  00200100  mfence { sm }
001000  6301bfff  loadli.w r2,  -40(r30)
001004  377f01fc  beq r2, zero, -1060
001008  1f014000  addli r2, zero, 32
00100c  3d000000  xfence
001010  00a00300  mfence { lm, sm, gm }
001014  33020128  zext_int2long r[5:6], r2
001018  5b040000  j 32
00101c  1f715000  addli r2, zero, 47
001020  6b548fff  load.d r[9:10], -8(r30)
001024  33020128  zext_int2long r[5:6], r2
001028  13214404  setlt.ul r2, r[9:10], r[5:6]
00102c  27120400  addli.d r[5:6], r[9:10], 1
001030  1f041000  addli r8, zero, 8
001034  37170100  beq r2, zero, 452
001038  97378202  sll.d r[16:17], r[5:6], r8
00103c  733c4ffe  store.d r[5:6], -8(r30)
001040  bbd15b01  bneq r23, r21, 116
001044  33020028  zext_int2long r[5:6], zero
001048  5b030000  j 24
00104c  9324b205  setlt.ul r9, r[5:6], r[28:29]
001050  0b912b10  add.s r2, r23, r2
001054  27120200  addli.d r[5:6], r[5:6], 1
001058  73608100  stores.w r8, 0(r2)
00105c  378f04fe  beq r9, zero, -64
001060  0b24f210  add.ul r[9:10], r[5:6], r[16:17]
001064  1b312400  slli r2, r8, 2
001068  0b942a10  add.s r8, r21, r2
00106c  ef440400  loads.w r9, 0(r8)
001070  1785b400  and r10, r9, r11
001074  1384ac04  setlt.u r8, r25, r10
001078  3b500400  bneq r8, zero, 20
00107c  1f840400  addli r8, r9, 0
001080  1385a104  setlt.u r10, r3, r10
001084  3b2f05fe  bneq r10, zero, -56
001088  db020000  j 20
00108c  2b044000  lui r8, 1024
001090  17948400  or r8, r9, r8
001094  1385a104  setlt.u r10, r3, r10
001098  bb5e05fe  bneq r10, zero, -76
00109c  1bc40401  srli r8, r9, 16
0010a0  1b041400  andi r8, r8, 1
0010a4  0b948410  add.s r8, r9, r8
0010a8  0b141410  add.s r8, r8, r1
0010ac  1704a401  and r8, r8, r26
0010b0  dbf3ffff  j -100
0010b4  33040028  zext_int2long r[9:10], zero
0010b8  db040000  j 36
0010bc  27440400  addli.d r[9:10], r[9:10], 4
0010c0  0b924b10  add.s r4, r23, r4
0010c4  13216400  seteq.d r2, r[9:10], r[7:8]
0010c8  73665200  stores.w r5, 12(r4)
0010cc  7364a200  stores.w r10, 8(r4)
0010d0  73621201  stores.w r17, 4(r4)
0010d4  73604201  stores.w r20, 0(r4)
0010d8  3b1d01fe  bneq r2, zero, -188
0010dc  0b22f410  add.ul r[5:6], r[9:10], r[16:17]
0010e0  1b322200  slli r4, r4, 2
0010e4  0b9a4a10  add.s r20, r21, r4
0010e8  6f41ca00  loads.w r2, 12(r20)
0010ec  1706b100  and r12, r2, r11
0010f0  9382cc04  setlt.u r5, r25, r12
0010f4  3bb00200  bneq r5, zero, 12
0010f8  9f020100  addli r5, r2, 0
0010fc  db010000  j 12
001100  ab024000  lui r5, 1024
001104  97125100  or r5, r2, r5
001108  ef468a00  loads.w r13, 8(r20)
00110c  1787b600  and r14, r13, r11
001110  1385ec04  setlt.u r10, r25, r14
001114  3b300500  bneq r10, zero, 12
001118  1f850600  addli r10, r13, 0
00111c  db010000  j 12
001120  2b054000  lui r10, 1024
001124  1795a600  or r10, r13, r10
001128  6f4b4a00  loads.w r22, 4(r20)
00112c  1709bb00  and r18, r22, r11
001130  93882c05  setlt.u r17, r25, r18
001134  3bb00800  bneq r17, zero, 12
001138  9f080b00  addli r17, r22, 0
00113c  db010000  j 12
001140  ab084000  lui r17, 1024
001144  97181b01  or r17, r22, r17
001148  ef490a00  loads.w r19, 0(r20)
00114c  178cb900  and r24, r19, r11
001150  138a8c05  setlt.u r20, r25, r24
001154  3b010a00  bneq r20, zero, 64
001158  1f8a0900  addli r20, r19, 0
00115c  138c8105  setlt.u r24, r3, r24
001160  3b600c00  bneq r24, zero, 24
001164  1bca0901  srli r20, r19, 16
001168  1b0a1a00  andi r20, r20, 1
00116c  8b994911  add.s r19, r19, r20
001170  8b991910  add.s r19, r19, r1
001174  178aa901  and r20, r19, r26
001178  13892105  setlt.u r18, r3, r18
00117c  b7300900  beq r18, zero, 44
001180  1387e104  setlt.u r14, r3, r14
001184  37010700  beq r14, zero, 64
001188  1386c104  setlt.u r12, r3, r12
00118c  bb4c06fe  bneq r12, zero, -208
001190  5b0a0000  j 80
001194  2b0a4000  lui r20, 1024
001198  179a4901  or r20, r19, r20
00119c  138c8105  setlt.u r24, r3, r24
0011a0  371f0cfe  beq r24, zero, -60
0011a4  dbfaffff  j -44
0011a8  9b480b01  srli r17, r22, 16
0011ac  9b881800  andi r17, r17, 1
0011b0  8b181b11  add.s r17, r22, r17
0011b4  8b981810  add.s r17, r17, r1
0011b8  9788a801  and r17, r17, r26
0011bc  1387e104  setlt.u r14, r3, r14
0011c0  3b2f07fe  bneq r14, zero, -56
0011c4  1bc50601  srli r10, r13, 16
0011c8  1b051500  andi r10, r10, 1
0011cc  0b95a610  add.s r10, r13, r10
0011d0  0b151510  add.s r10, r10, r1
0011d4  1705a501  and r10, r10, r26
0011d8  1386c104  setlt.u r12, r3, r12
0011dc  bb0b06fe  bneq r12, zero, -288
0011e0  9b420101  srli r5, r2, 16
0011e4  9b821200  andi r5, r5, 1
0011e8  0b115110  add.s r2, r2, r5
0011ec  0b111110  add.s r2, r2, r1
0011f0  9702a101  and r5, r2, r26
0011f4  5bd9ffff  j -312
0011f8  80340002  core_id r9
0011fc  00200100  mfence { sm }
001200  1f310000  addli r2, zero, 3
001204  bb9724fc  bneq r9, r2, -1564
001208  1f016000  addli r2, zero, 48
00120c  3d000000  xfence
001210  00a00300  mfence { lm, sm, gm }
001214  33020128  zext_int2long r[5:6], r2
001218  5b040000  j 32
00121c  1f717000  addli r2, zero, 63
001220  6b548fff  load.d r[9:10], -8(r30)
001224  33020128  zext_int2long r[5:6], r2
001228  13214404  setlt.ul r2, r[9:10], r[5:6]
00122c  27120400  addli.d r[5:6], r[9:10], 1
001230  1f041000  addli r8, zero, 8
001234  37170100  beq r2, zero, 452
001238  97378202  sll.d r[16:17], r[5:6], r8
00123c  733c4ffe  store.d r[5:6], -8(r30)
001240  bbd15b01  bneq r23, r21, 116
001244  33020028  zext_int2long r[5:6], zero
001248  5b030000  j 24
00124c  9324b205  setlt.ul r9, r[5:6], r[28:29]
001250  0b912b10  add.s r2, r23, r2
001254  27120200  addli.d r[5:6], r[5:6], 1
001258  73608100  stores.w r8, 0(r2)
00125c  378f04fe  beq r9, zero, -64
001260  0b24f210  add.ul r[9:10], r[5:6], r[16:17]
001264  1b312400  slli r2, r8, 2
001268  0b942a10  add.s r8, r21, r2
00126c  ef440400  loads.w r9, 0(r8)
001270  1785b400  and r10, r9, r11
001274  1384ac04  setlt.u r8, r25, r10
001278  3b500400  bneq r8, zero, 20
00127c  1f840400  addli r8, r9, 0
001280  1385a104  setlt.u r10, r3, r10
001284  3b2f05fe  bneq r10, zero, -56
001288  db020000  j 20
00128c  2b044000  lui r8, 1024
001290  17948400  or r8, r9, r8
001294  1385a104  setlt.u r10, r3, r10
001298  bb5e05fe  bneq r10, zero, -76
00129c  1bc40401  srli r8, r9, 16
0012a0  1b041400  andi r8, r8, 1
0012a4  0b948410  add.s r8, r9, r8
0012a8  0b141410  add.s r8, r8, r1
0012ac  1704a401  and r8, r8, r26
0012b0  dbf3ffff  j -100
0012b4  33040028  zext_int2long r[9:10], zero
0012b8  db040000  j 36
0012bc  27440400  addli.d r[9:10], r[9:10], 4
0012c0  0b924b10  add.s r4, r23, r4
0012c4  13216400  seteq.d r2, r[9:10], r[7:8]
0012c8  73665200  stores.w r5, 12(r4)
0012cc  7364a200  stores.w r10, 8(r4)
0012d0  73621201  stores.w r17, 4(r4)
0012d4  73604201  stores.w r20, 0(r4)
0012d8  3b1d01fe  bneq r2, zero, -188
0012dc  0b22f410  add.ul r[5:6], r[9:10], r[16:17]
0012e0  1b322200  slli r4, r4, 2
0012e4  0b9a4a10  add.s r20, r21, r4
0012e8  6f41ca00  loads.w r2, 12(r20)
0012ec  1706b100  and r12, r2, r11
0012f0  9382cc04  setlt.u r5, r25, r12
0012f4  3bb00200  bneq r5, zero, 12
0012f8  9f020100  addli r5, r2, 0
0012fc  db010000  j 12
001300  ab024000  lui r5, 1024
001304  97125100  or r5, r2, r5
001308  ef468a00  loads.w r13, 8(r20)
00130c  1787b600  and r14, r13, r11
001310  1385ec04  setlt.u r10, r25, r14
001314  3b300500  bneq r10, zero, 12
001318  1f850600  addli r10, r13, 0
00131c  db010000  j 12
001320  2b054000  lui r10, 1024
001324  1795a600  or r10, r13, r10
001328  6f4b4a00  loads.w r22, 4(r20)
00132c  1709bb00  and r18, r22, r11
001330  93882c05  setlt.u r17, r25, r18
001334  3bb00800  bneq r17, zero, 12
001338  9f080b00  addli r17, r22, 0
00133c  db010000  j 12
001340  ab084000  lui r17, 1024
001344  97181b01  or r17, r22, r17
001348  ef490a00  loads.w r19, 0(r20)
00134c  178cb900  and r24, r19, r11
001350  138a8c05  setlt.u r20, r25, r24
001354  3b010a00  bneq r20, zero, 64
001358  1f8a0900  addli r20, r19, 0
00135c  138c8105  setlt.u r24, r3, r24
001360  3b600c00  bneq r24, zero, 24
001364  1bca0901  srli r20, r19, 16
001368  1b0a1a00  andi r20, r20, 1
00136c  8b994911  add.s r19, r19, r20
001370  8b991910  add.s r19, r19, r1
001374  178aa901  and r20, r19, r26
001378  13892105  setlt.u r18, r3, r18
00137c  b7300900  beq r18, zero, 44
001380  1387e104  setlt.u r14, r3, r14
001384  37010700  beq r14, zero, 64
001388  1386c104  setlt.u r12, r3, r12
00138c  bb4c06fe  bneq r12, zero, -208
001390  5b0a0000  j 80
001394  2b0a4000  lui r20, 1024
001398  179a4901  or r20, r19, r20
00139c  138c8105  setlt.u r24, r3, r24
0013a0  371f0cfe  beq r24, zero, -60
0013a4  dbfaffff  j -44
0013a8  9b480b01  srli r17, r22, 16
0013ac  9b881800  andi r17, r17, 1
0013b0  8b181b11  add.s r17, r22, r17
0013b4  8b981810  add.s r17, r17, r1
0013b8  9788a801  and r17, r17, r26
0013bc  1387e104  setlt.u r14, r3, r14
0013c0  3b2f07fe  bneq r14, zero, -56
0013c4  1bc50601  srli r10, r13, 16
0013c8  1b051500  andi r10, r10, 1
0013cc  0b95a610  add.s r10, r13, r10
0013d0  0b151510  add.s r10, r10, r1
0013d4  1705a501  and r10, r10, r26
0013d8  1386c104  setlt.u r12, r3, r12
0013dc  bb0b06fe  bneq r12, zero, -288
0013e0  9b420101  srli r5, r2, 16
0013e4  9b821200  andi r5, r5, 1
0013e8  0b115110  add.s r2, r2, r5
0013ec  0b111110  add.s r2, r2, r1
0013f0  9702a101  and r5, r2, r26
0013f4  5bd9ffff  j -312
0013f8  80340002  core_id r9
0013fc  00200100  mfence { sm }
001400  1f410000  addli r2, zero, 4
001404  bbbf24fa  bneq r9, r2, -2068
001408  1f018000  addli r2, zero, 64
00140c  3d000000  xfence
001410  00a00300  mfence { lm, sm, gm }
001414  33020128  zext_int2long r[5:6], r2
001418  5b040000  j 32
00141c  1f719000  addli r2, zero, 79
001420  6b548fff  load.d r[9:10], -8(r30)
001424  33020128  zext_int2long r[5:6], r2
001428  13214404  setlt.ul r2, r[9:10], r[5:6]
00142c  27120400  addli.d r[5:6], r[9:10], 1
001430  1f041000  addli r8, zero, 8
001434  37170100  beq r2, zero, 452
001438  97378202  sll.d r[16:17], r[5:6], r8
00143c  733c4ffe  store.d r[5:6], -8(r30)
001440  bbd15b01  bneq r23, r21, 116
001444  33020028  zext_int2long r[5:6], zero
001448  5b030000  j 24
00144c  9324b205  setlt.ul r9, r[5:6], r[28:29]
001450  0b912b10  add.s r2, r23, r2
001454  27120200  addli.d r[5:6], r[5:6], 1
001458  73608100  stores.w r8, 0(r2)
00145c  378f04fe  beq r9, zero, -64
001460  0b24f210  add.ul r[9:10], r[5:6], r[16:17]
001464  1b312400  slli r2, r8, 2
001468  0b942a10  add.s r8, r21, r2
00146c  ef440400  loads.w r9, 0(r8)
001470  1785b400  and r10, r9, r11
001474  1384ac04  setlt.u r8, r25, r10
001478  3b500400  bneq r8, zero, 20
00147c  1f840400  addli r8, r9, 0
001480  1385a104  setlt.u r10, r3, r10
001484  3b2f05fe  bneq r10, zero, -56
001488  db020000  j 20
00148c  2b044000  lui r8, 1024
001490  17948400  or r8, r9, r8
001494  1385a104  setlt.u r10, r3, r10
001498  bb5e05fe  bneq r10, zero, -76
00149c  1bc40401  srli r8, r9, 16
0014a0  1b041400  andi r8, r8, 1
0014a4  0b948410  add.s r8, r9, r8
0014a8  0b141410  add.s r8, r8, r1
0014ac  1704a401  and r8, r8, r26
0014b0  dbf3ffff  j -100
0014b4  33040028  zext_int2long r[9:10], zero
0014b8  db040000  j 36
0014bc  27440400  addli.d r[9:10], r[9:10], 4
0014c0  0b924b10  add.s r4, r23, r4
0014c4  13216400  seteq.d r2, r[9:10], r[7:8]
0014c8  73665200  stores.w r5, 12(r4)
0014cc  7364a200  stores.w r10, 8(r4)
0014d0  73621201  stores.w r17, 4(r4)
0014d4  73604201  stores.w r20, 0(r4)
0014d8  3b1d01fe  bneq r2, zero, -188
0014dc  0b22f410  add.ul r[5:6], r[9:10], r[16:17]
0014e0  1b322200  slli r4, r4, 2
0014e4  0b9a4a10  add.s r20, r21, r4
0014e8  6f41ca00  loads.w r2, 12(r20)
0014ec  1706b100  and r12, r2, r11
0014f0  9382cc04  setlt.u r5, r25, r12
0014f4  3bb00200  bneq r5, zero, 12
0014f8  9f020100  addli r5, r2, 0
0014fc  db010000  j 12
001500  ab024000  lui r5, 1024
001504  97125100  or r5, r2, r5
001508  ef468a00  loads.w r13, 8(r20)
00150c  1787b600  and r14, r13, r11
001510  1385ec04  setlt.u r10, r25, r14
001514  3b300500  bneq r10, zero, 12
001518  1f850600  addli r10, r13, 0
00151c  db010000  j 12
001520  2b054000  lui r10, 1024
001524  1795a600  or r10, r13, r10
001528  6f4b4a00  loads.w r22, 4(r20)
00152c  1709bb00  and r18, r22, r11
001530  93882c05  setlt.u r17, r25, r18
001534  3bb00800  bneq r17, zero, 12
001538  9f080b00  addli r17, r22, 0
00153c  db010000  j 12
001540  ab084000  lui r17, 1024
001544  97181b01  or r17, r22, r17
001548  ef490a00  loads.w r19, 0(r20)
00154c  178cb900  and r24, r19, r11
001550  138a8c05  setlt.u r20, r25, r24
001554  3b010a00  bneq r20, zero, 64
001558  1f8a0900  addli r20, r19, 0
00155c  138c8105  setlt.u r24, r3, r24
001560  3b600c00  bneq r24, zero, 24
001564  1bca0901  srli r20, r19, 16
001568  1b0a1a00  andi r20, r20, 1
00156c  8b994911  add.s r19, r19, r20
001570  8b991910  add.s r19, r19, r1
001574  178aa901  and r20, r19, r26
001578  13892105  setlt.u r18, r3, r18
00157c  b7300900  beq r18, zero, 44
001580  1387e104  setlt.u r14, r3, r14
001584  37010700  beq r14, zero, 64
001588  1386c104  setlt.u r12, r3, r12
00158c  bb4c06fe  bneq r12, zero, -208
001590  5b0a0000  j 80
001594  2b0a4000  lui r20, 1024
001598  179a4901  or r20, r19, r20
00159c  138c8105  setlt.u r24, r3, r24
0015a0  371f0cfe  beq r24, zero, -60
0015a4  dbfaffff  j -44
0015a8  9b480b01  srli r17, r22, 16
0015ac  9b881800  andi r17, r17, 1
0015b0  8b181b11  add.s r17, r22, r17
0015b4  8b981810  add.s r17, r17, r1
0015b8  9788a801  and r17, r17, r26
0015bc  1387e104  setlt.u r14, r3, r14
0015c0  3b2f07fe  bneq r14, zero, -56
0015c4  1bc50601  srli r10, r13, 16
0015c8  1b051500  andi r10, r10, 1
0015cc  0b95a610  add.s r10, r13, r10
0015d0  0b151510  add.s r10, r10, r1
0015d4  1705a501  and r10, r10, r26
0015d8  1386c104  setlt.u r12, r3, r12
0015dc  bb0b06fe  bneq r12, zero, -288
0015e0  9b420101  srli r5, r2, 16
0015e4  9b821200  andi r5, r5, 1
0015e8  0b115110  add.s r2, r2, r5
0015ec  0b111110  add.s r2, r2, r1
0015f0  9702a101  and r5, r2, r26
0015f4  5bd9ffff  j -312
0015f8  80340002  core_id r9
0015fc  00200100  mfence { sm }
001600  1f510000  addli r2, zero, 5
001604  bbd724fa  bneq r9, r2, -2572
001608  1f01a000  addli r2, zero, 80
00160c  3d000000  xfence
001610  00a00300  mfence { lm, sm, gm }
001614  33020128  zext_int2long r[5:6], r2
001618  5b040000  j 32
00161c  1f71b000  addli r2, zero, 95
001620  6b548fff  load.d r[9:10], -8(r30)
001624  33020128  zext_int2long r[5:6], r2
001628  13214404  setlt.ul r2, r[9:10], r[5:6]
00162c  27120400  addli.d r[5:6], r[9:10], 1
001630  1f041000  addli r8, zero, 8
001634  37170100  beq r2, zero, 452
001638  97378202  sll.d r[16:17], r[5:6], r8
00163c  733c4ffe  store.d r[5:6], -8(r30)
001640  bbd15b01  bneq r23, r21, 116
001644  33020028  zext_int2long r[5:6], zero
001648  5b030000  j 24
00164c  9324b205  setlt.ul r9, r[5:6], r[28:29]
001650  0b912b10  add.s r2, r23, r2
001654  27120200  addli.d r[5:6], r[5:6], 1
001658  73608100  stores.w r8, 0(r2)
00165c  378f04fe  beq r9, zero, -64
001660  0b24f210  add.ul r[9:10], r[5:6], r[16:17]
001664  1b312400  slli r2, r8, 2
001668  0b942a10  add.s r8, r21, r2
00166c  ef440400  loads.w r9, 0(r8)
001670  1785b400  and r10, r9, r11
001674  1384ac04  setlt.u r8, r25, r10
001678  3b500400  bneq r8, zero, 20
00167c  1f840400  addli r8, r9, 0
001680  1385a104  setlt.u r10, r3, r10
001684  3b2f05fe  bneq r10, zero, -56
001688  db020000  j 20
00168c  2b044000  lui r8, 1024
001690  17948400  or r8, r9, r8
001694  1385a104  setlt.u r10, r3, r10
001698  bb5e05fe  bneq r10, zero, -76
00169c  1bc40401  srli r8, r9, 16
0016a0  1b041400  andi r8, r8, 1
0016a4  0b948410  add.s r8, r9, r8
0016a8  0b141410  add.s r8, r8, r1
0016ac  1704a401  and r8, r8, r26
0016b0  dbf3ffff  j -100
0016b4  33040028  zext_int2long r[9:10], zero
0016b8  db040000  j 36
0016bc  27440400  addli.d r[9:10], r[9:10], 4
0016c0  0b924b10  add.s r4, r23, r4
0016c4  13216400  seteq.d r2, r[9:10], r[7:8]
0016c8  73665200  stores.w r5, 12(r4)
0016cc  7364a200  stores.w r10, 8(r4)
0016d0  73621201  stores.w r17, 4(r4)
0016d4  73604201  stores.w r20, 0(r4)
0016d8  3b1d01fe  bneq r2, zero, -188
0016dc  0b22f410  add.ul r[5:6], r[9:10], r[16:17]
0016e0  1b322200  slli r4, r4, 2
0016e4  0b9a4a10  add.s r20, r21, r4
0016e8  6f41ca00  loads.w r2, 12(r20)
0016ec  1706b100  and r12, r2, r11
0016f0  9382cc04  setlt.u r5, r25, r12
0016f4  3bb00200  bneq r5, zero, 12
0016f8  9f020100  addli r5, r2, 0
0016fc  db010000  j 12
001700  ab024000  lui r5, 1024
001704  97125100  or r5, r2, r5
001708  ef468a00  loads.w r13, 8(r20)
00170c  1787b600  and r14, r13, r11
001710  1385ec04  setlt.u r10, r25, r14
001714  3b300500  bneq r10, zero, 12
001718  1f850600  addli r10, r13, 0
00171c  db010000  j 12
001720  2b054000  lui r10, 1024
001724  1795a600  or r10, r13, r10
001728  6f4b4a00  loads.w r22, 4(r20)
00172c  1709bb00  and r18, r22, r11
001730  93882c05  setlt.u r17, r25, r18
001734  3bb00800  bneq r17, zero, 12
001738  9f080b00  addli r17, r22, 0
00173c  db010000  j 12
001740  ab084000  lui r17, 1024
001744  97181b01  or r17, r22, r17
001748  ef490a00  loads.w r19, 0(r20)
00174c  178cb900  and r24, r19, r11
001750  138a8c05  setlt.u r20, r25, r24
001754  3b010a00  bneq r20, zero, 64
001758  1f8a0900  addli r20, r19, 0
00175c  138c8105  setlt.u r24, r3, r24
001760  3b600c00  bneq r24, zero, 24
001764  1bca0901  srli r20, r19, 16
001768  1b0a1a00  andi r20, r20, 1
00176c  8b994911  add.s r19, r19, r20
001770  8b991910  add.s r19, r19, r1
001774  178aa901  and r20, r19, r26
001778  13892105  setlt.u r18, r3, r18
00177c  b7300900  beq r18, zero, 44
001780  1387e104  setlt.u r14, r3, r14
001784  37010700  beq r14, zero, 64
001788  1386c104  setlt.u r12, r3, r12
00178c  bb4c06fe  bneq r12, zero, -208
001790  5b0a0000  j 80
001794  2b0a4000  lui r20, 1024
001798  179a4901  or r20, r19, r20
00179c  138c8105  setlt.u r24, r3, r24
0017a0  371f0cfe  beq r24, zero, -60
0017a4  dbfaffff  j -44
0017a8  9b480b01  srli r17, r22, 16
0017ac  9b881800  andi r17, r17, 1
0017b0  8b181b11  add.s r17, r22, r17
0017b4  8b981810  add.s r17, r17, r1
0017b8  9788a801  and r17, r17, r26
0017bc  1387e104  setlt.u r14, r3, r14
0017c0  3b2f07fe  bneq r14, zero, -56
0017c4  1bc50601  srli r10, r13, 16
0017c8  1b051500  andi r10, r10, 1
0017cc  0b95a610  add.s r10, r13, r10
0017d0  0b151510  add.s r10, r10, r1
0017d4  1705a501  and r10, r10, r26
0017d8  1386c104  setlt.u r12, r3, r12
0017dc  bb0b06fe  bneq r12, zero, -288
0017e0  9b420101  srli r5, r2, 16
0017e4  9b821200  andi r5, r5, 1
0017e8  0b115110  add.s r2, r2, r5
0017ec  0b111110  add.s r2, r2, r1
0017f0  9702a101  and r5, r2, r26
0017f4  5bd9ffff  j -312
0017f8  80340002  core_id r9
0017fc  00200100  mfence { sm }
001800  6341bfff  loadli.w r2,  -36(r30)
001804  b77f01f8  beq r2, zero, -3076
001808  1f01c000  addli r2, zero, 96
00180c  3d000000  xfence
001810  00a00300  mfence { lm, sm, gm }
001814  33020128  zext_int2long r[5:6], r2
001818  5b040000  j 32
00181c  1f71d000  addli r2, zero, 111
001820  6b548fff  load.d r[9:10], -8(r30)
001824  33020128  zext_int2long r[5:6], r2
001828  13214404  setlt.ul r2, r[9:10], r[5:6]
00182c  27120400  addli.d r[5:6], r[9:10], 1
001830  1f041000  addli r8, zero, 8
001834  37170100  beq r2, zero, 452
001838  97378202  sll.d r[16:17], r[5:6], r8
00183c  733c4ffe  store.d r[5:6], -8(r30)
001840  bbd15b01  bneq r23, r21, 116
001844  33020028  zext_int2long r[5:6], zero
001848  5b030000  j 24
00184c  9324b205  setlt.ul r9, r[5:6], r[28:29]
001850  0b912b10  add.s r2, r23, r2
001854  27120200  addli.d r[5:6], r[5:6], 1
001858  73608100  stores.w r8, 0(r2)
00185c  378f04fe  beq r9, zero, -64
001860  0b24f210  add.ul r[9:10], r[5:6], r[16:17]
001864  1b312400  slli r2, r8, 2
001868  0b942a10  add.s r8, r21, r2
00186c  ef440400  loads.w r9, 0(r8)
001870  1785b400  and r10, r9, r11
001874  1384ac04  setlt.u r8, r25, r10
001878  3b500400  bneq r8, zero, 20
00187c  1f840400  addli r8, r9, 0
001880  1385a104  setlt.u r10, r3, r10
001884  3b2f05fe  bneq r10, zero, -56
001888  db020000  j 20
00188c  2b044000  lui r8, 1024
001890  17948400  or r8, r9, r8
001894  1385a104  setlt.u r10, r3, r10
001898  bb5e05fe  bneq r10, zero, -76
00189c  1bc40401  srli r8, r9, 16
0018a0  1b041400  andi r8, r8, 1
0018a4  0b948410  add.s r8, r9, r8
0018a8  0b141410  add.s r8, r8, r1
0018ac  1704a401  and r8, r8, r26
0018b0  dbf3ffff  j -100
0018b4  33040028  zext_int2long r[9:10], zero
0018b8  db040000  j 36
0018bc  27440400  addli.d r[9:10], r[9:10], 4
0018c0  0b924b10  add.s r4, r23, r4
0018c4  13216400  seteq.d r2, r[9:10], r[7:8]
0018c8  73665200  stores.w r5, 12(r4)
0018cc  7364a200  stores.w r10, 8(r4)
0018d0  73621201  stores.w r17, 4(r4)
0018d4  73604201  stores.w r20, 0(r4)
0018d8  3b1d01fe  bneq r2, zero, -188
0018dc  0b22f410  add.ul r[5:6], r[9:10], r[16:17]
0018e0  1b322200  slli r4, r4, 2
0018e4  0b9a4a10  add.s r20, r21, r4
0018e8  6f41ca00  loads.w r2, 12(r20)
0018ec  1706b100  and r12, r2, r11
0018f0  9382cc04  setlt.u r5, r25, r12
0018f4  3bb00200  bneq r5, zero, 12
0018f8  9f020100  addli r5, r2, 0
0018fc  db010000  j 12
001900  ab024000  lui r5, 1024
001904  97125100  or r5, r2, r5
001908  ef468a00  loads.w r13, 8(r20)
00190c  1787b600  and r14, r13, r11
001910  1385ec04  setlt.u r10, r25, r14
001914  3b300500  bneq r10, zero, 12
001918  1f850600  addli r10, r13, 0
00191c  db010000  j 12
001920  2b054000  lui r10, 1024
001924  1795a600  or r10, r13, r10
001928  6f4b4a00  loads.w r22, 4(r20)
00192c  1709bb00  and r18, r22, r11
001930  93882c05  setlt.u r17, r25, r18
001934  3bb00800  bneq r17, zero, 12
001938  9f080b00  addli r17, r22, 0
00193c  db010000  j 12
001940  ab084000  lui r17, 1024
001944  97181b01  or r17, r22, r17
001948  ef490a00  loads.w r19, 0(r20)
00194c  178cb900  and r24, r19, r11
001950  138a8c05  setlt.u r20, r25, r24
001954  3b010a00  bneq r20, zero, 64
001958  1f8a0900  addli r20, r19, 0
00195c  138c8105  setlt.u r24, r3, r24
001960  3b600c00  bneq r24, zero, 24
001964  1bca0901  srli r20, r19, 16
001968  1b0a1a00  andi r20, r20, 1
00196c  8b994911  add.s r19, r19, r20
001970  8b991910  add.s r19, r19, r1
001974  178aa901  and r20, r19, r26
001978  13892105  setlt.u r18, r3, r18
00197c  b7300900  beq r18, zero, 44
001980  1387e104  setlt.u r14, r3, r14
001984  37010700  beq r14, zero, 64
001988  1386c104  setlt.u r12, r3, r12
00198c  bb4c06fe  bneq r12, zero, -208
001990  5b0a0000  j 80
001994  2b0a4000  lui r20, 1024
001998  179a4901  or r20, r19, r20
00199c  138c8105  setlt.u r24, r3, r24
0019a0  371f0cfe  beq r24, zero, -60
0019a4  dbfaffff  j -44
0019a8  9b480b01  srli r17, r22, 16
0019ac  9b881800  andi r17, r17, 1
0019b0  8b181b11  add.s r17, r22, r17
0019b4  8b981810  add.s r17, r17, r1
0019b8  9788a801  and r17, r17, r26
0019bc  1387e104  setlt.u r14, r3, r14
0019c0  3b2f07fe  bneq r14, zero, -56
0019c4  1bc50601  srli r10, r13, 16
0019c8  1b051500  andi r10, r10, 1
0019cc  0b95a610  add.s r10, r13, r10
0019d0  0b151510  add.s r10, r10, r1
0019d4  1705a501  and r10, r10, r26
0019d8  1386c104  setlt.u r12, r3, r12
0019dc  bb0b06fe  bneq r12, zero, -288
0019e0  9b420101  srli r5, r2, 16
0019e4  9b821200  andi r5, r5, 1
0019e8  0b115110  add.s r2, r2, r5
0019ec  0b111110  add.s r2, r2, r1
0019f0  9702a101  and r5, r2, r26
0019f4  5bd9ffff  j -312
0019f8  80340002  core_id r9
0019fc  00200100  mfence { sm }
001a00  6301efff  loadli.w r2,  -16(r30)
001a04  37280100  beq r2, zero, 520
001a08  33020028  zext_int2long r[5:6], zero
001a0c  1f01e000  addli r2, zero, 112
001a10  73384ffe  store.d r[5:6], -16(r30)
001a14  33020128  zext_int2long r[5:6], r2
001a18  3d000000  xfence
001a1c  00a00300  mfence { lm, sm, gm }
001a20  5b040000  j 32
001a24  1f71f000  addli r2, zero, 127
001a28  6b548fff  load.d r[9:10], -8(r30)
001a2c  33020128  zext_int2long r[5:6], r2
001a30  13214404  setlt.ul r2, r[9:10], r[5:6]
001a34  27120400  addli.d r[5:6], r[9:10], 1
001a38  1f041000  addli r8, zero, 8
001a3c  37270100  beq r2, zero, 456
001a40  1f011000  addli r2, zero, 8
001a44  733c4ffe  store.d r[5:6], -8(r30)
001a48  17342202  sll.d r[9:10], r[5:6], r2
001a4c  bbd15b01  bneq r23, r21, 116
001a50  33020028  zext_int2long r[5:6], zero
001a54  5b030000  j 24
001a58  1326b205  setlt.ul r12, r[5:6], r[28:29]
001a5c  0b912b10  add.s r2, r23, r2
001a60  27120200  addli.d r[5:6], r[5:6], 1
001a64  7360a100  stores.w r10, 0(r2)
001a68  b77e06fe  beq r12, zero, -68
001a6c  0b268210  add.ul r[13:14], r[5:6], r[9:10]
001a70  1b312600  slli r2, r12, 2
001a74  0b952a10  add.s r10, r21, r2
001a78  6f460500  loads.w r12, 0(r10)
001a7c  9706b600  and r13, r12, r11
001a80  1385dc04  setlt.u r10, r25, r13
001a84  3b500500  bneq r10, zero, 20
001a88  1f050600  addli r10, r12, 0
001a8c  9386d104  setlt.u r13, r3, r13
001a90  3baf06fe  bneq r13, zero, -56
001a94  db020000  j 20
001a98  2b054000  lui r10, 1024
001a9c  1715a600  or r10, r12, r10
001aa0  9386d104  setlt.u r13, r3, r13
001aa4  bbde06fe  bneq r13, zero, -76
001aa8  1b450601  srli r10, r12, 16
001aac  1b051500  andi r10, r10, 1
001ab0  0b15a610  add.s r10, r12, r10
001ab4  0b151510  add.s r10, r10, r1
001ab8  1705a501  and r10, r10, r26
001abc  dbf3ffff  j -100
001ac0  6b590fff  load.d r[19:20], -16(r30)
001ac4  db040000  j 36
001ac8  27490900  addli.d r[19:20], r[19:20], 4
001acc  0b921b11  add.s r4, r23, r17
001ad0  13216900  seteq.d r2, r[19:20], r[7:8]
001ad4  7366c200  stores.w r12, 12(r4)
001ad8  73644201  stores.w r20, 8(r4)
001adc  7362d200  stores.w r13, 4(r4)
001ae0  7360e200  stores.w r14, 0(r4)
001ae4  3b0d01fe  bneq r2, zero, -192
001ae8  0b228910  add.ul r[5:6], r[19:20], r[9:10]
001aec  9b382200  slli r17, r4, 2
001af0  0b971a11  add.s r14, r21, r17
001af4  6f41c700  loads.w r2, 12(r14)
001af8  1705b100  and r10, r2, r11
001afc  1382ac04  setlt.u r4, r25, r10
001b00  3b300200  bneq r4, zero, 12
001b04  1f060100  addli r12, r2, 0
001b08  db010000  j 12
001b0c  2b024000  lui r4, 1024
001b10  17164100  or r12, r2, r4
001b14  6f4b8700  loads.w r22, 8(r14)
001b18  1702bb00  and r4, r22, r11
001b1c  93824c04  setlt.u r5, r25, r4
001b20  3bb00200  bneq r5, zero, 12
001b24  1f0a0b00  addli r20, r22, 0
001b28  db010000  j 12
001b2c  ab024000  lui r5, 1024
001b30  171a5b00  or r20, r22, r5
001b34  ef424700  loads.w r5, 4(r14)
001b38  9787b200  and r15, r5, r11
001b3c  9386fc04  setlt.u r13, r25, r15
001b40  3bb00600  bneq r13, zero, 12
001b44  9f860200  addli r13, r5, 0
001b48  db010000  j 12
001b4c  ab064000  lui r13, 1024
001b50  9796d200  or r13, r5, r13
001b54  6f480700  loads.w r16, 0(r14)
001b58  170cb800  and r24, r16, r11
001b5c  13878c05  setlt.u r14, r25, r24
001b60  3b010700  bneq r14, zero, 64
001b64  1f070800  addli r14, r16, 0
001b68  138c8105  setlt.u r24, r3, r24
001b6c  3b600c00  bneq r24, zero, 24
001b70  1b470801  srli r14, r16, 16
001b74  1b071700  andi r14, r14, 1
001b78  0b17e810  add.s r14, r16, r14
001b7c  0b171710  add.s r14, r14, r1
001b80  1707a701  and r14, r14, r26
001b84  9387f104  setlt.u r15, r3, r15
001b88  b7b00700  beq r15, zero, 44
001b8c  13824104  setlt.u r4, r3, r4
001b90  37010200  beq r4, zero, 64
001b94  1382a104  setlt.u r4, r3, r10
001b98  bb4c02fe  bneq r4, zero, -208
001b9c  5b0a0000  j 80
001ba0  2b074000  lui r14, 1024
001ba4  1717e800  or r14, r16, r14
001ba8  138c8105  setlt.u r24, r3, r24
001bac  371f0cfe  beq r24, zero, -60
001bb0  dbfaffff  j -44
001bb4  9bc60201  srli r13, r5, 16
001bb8  9b861600  andi r13, r13, 1
001bbc  8b92d210  add.s r5, r5, r13
001bc0  8b921210  add.s r5, r5, r1
001bc4  9786a201  and r13, r5, r26
001bc8  13824104  setlt.u r4, r3, r4
001bcc  3b2f02fe  bneq r4, zero, -56
001bd0  1b420b01  srli r4, r22, 16
001bd4  1b021200  andi r4, r4, 1
001bd8  0b124b10  add.s r4, r22, r4
001bdc  0b121210  add.s r4, r4, r1
001be0  170aa201  and r20, r4, r26
001be4  1382a104  setlt.u r4, r3, r10
001be8  bb0b02fe  bneq r4, zero, -288
001bec  1b420101  srli r4, r2, 16
001bf0  1b021200  andi r4, r4, 1
001bf4  0b114110  add.s r2, r2, r4
001bf8  0b111110  add.s r2, r2, r1
001bfc  1706a101  and r12, r2, r26
001c00  5bd9ffff  j -312
001c04  80340002  core_id r9
001c08  00200100  mfence { sm }
001c0c  1f71f001  addli r2, zero, 255
001c10  1f390000  addli r18, zero, 3
001c14  80220104  csr_set csr5, r2
001c18  00e00200  sync_core
001c1c  37e824f3  beq r9, r18, -6632
001c20  6b560ffe  load.d r[13:14], -32(r30)
001c24  e34adfff  loadli.w r21,  -20(r30)
001c28  1f250000  addli r10, zero, 2
001c2c  1f088000  addli r16, zero, 64
001c30  9f083000  addli r17, zero, 24
001c34  1f1a0000  addli r20, zero, 1
001c38  1f5b0000  addli r22, zero, 5
001c3c  9f4b0000  addli r23, zero, 4
001c40  9f771000  addli r15, zero, 15
001c44  1f072000  addli r14, zero, 16
001c48  1f3e2000  addli r28, zero, 19
001c4c  3bf804f2  bneq r9, zero, -6628
001c50  6b528ffc  load.d r[5:6], -56(r30)
001c54  6b530ffd  load.d r[7:8], -48(r30)
001c58  7d900700  xwait r15, 0
001c5c  1d000b00  lock zero, r22
001c60  2b810400  lui r2, 72
001c64  150a0a00  dma_cfg r20, r20, zero, 0
001c68  15000a02  dma_cfg zero, r20, zero, 1
001c6c  1b1101c4  ori r2, r2, 3136
001c70  1732c203  sll.d r[5:6], r[5:6], r28
001c74  eb5d8f01  load.d r[28:29], 24(r30)
001c78  17334303  sll.d r[7:8], r[7:8], r20
001c7c  0ba24d10  add.ul r[5:6], r[28:29], r[5:6]
001c80  1f3e2000  addli r28, zero, 19
001c84  0b226210  add.ul r[5:6], r[5:6], r[7:8]
001c88  63438fff  loadli.w r6,  -60(r30)
001c8c  95020004  dma_cfg r5, zero, zero, 2
001c90  0b112310  add.s r2, r6, r2
001c94  15020107  dma_cfg r4, r2, r16, 3
001c98  1f010001  addli r2, zero, 128
001c9c  1f020008  addli r4, zero, 1024
001ca0  9f020020  addli r5, zero, 4096
001ca4  15088108  dma_cfg r16, r2, r8, 4
001ca8  9502220a  dma_cfg r5, r4, r2, 5
001cac  15000010  dma_cfg zero, zero, zero, 8
001cb0  35000000  dma_run zero
001cb4  1500400b  dma_cfg zero, zero, r20, 5
001cb8  15000010  dma_cfg zero, zero, zero, 8
001cbc  1d100b00  unlock r22
001cc0  7d000700  xsignal r14, 0
001cc4  dbb4fcff  j -6748
001cc8  9f720000  addli r5, zero, 7
001ccc  bbe05400  bneq r9, r5, 56
001cd0  1f121000  addli r4, zero, 9
001cd4  7d900900  xwait r19, 0
001cd8  7d100200  xwait r4, 0
001cdc  1d000000  lock zero, zero
001ce0  1f020002  addli r4, zero, 256
001ce4  01050000  ds_cfg r10, zero, 0
001ce8  01020002  ds_cfg r4, zero, 1
001cec  0108001c  ds_cfg r16, zero, 14
001cf0  0102001a  ds_cfg r4, zero, 13
001cf4  c1030405  shuffle_coa r7, r8, r16, 2
001cf8  1d100000  unlock zero
001cfc  7d800200  xsignal r5, 0
001d00  7d000100  xsignal r2, 0
001d04  1b31a700  slli r2, r14, 10
001d08  2b820400  lui r4, 72
001d0c  1f041000  addli r8, zero, 8
001d10  9f020001  addli r5, zero, 128
001d14  9f181000  addli r17, zero, 9
001d18  9f691000  addli r19, zero, 14
001d1c  e74d0ffe  storeli.w zero, -36(r30)
001d20  e70d0ffe  storeli.w zero, -40(r30)
001d24  8b174110  add.s r15, r2, r4
001d28  63015fff  loadli.w r2,  -88(r30)
001d2c  1f221000  addli r4, zero, 10
001d30  670f2ffe  storeli.w r2, -16(r30)
001d34  dbb3fdff  j -4708
001d38  7d000000  xsignal zero, 0
001d3c  bbe00400  bneq r9, zero, 56
001d40  9f200000  addli r1, zero, 2
001d44  7d100000  xwait zero, 0
001d48  7d100000  xwait zero, 0
001d4c  7d100000  xwait zero, 0
001d50  7d100000  xwait zero, 0
001d54  7d100000  xwait zero, 0
001d58  7d100000  xwait zero, 0
001d5c  7d100000  xwait zero, 0
001d60  7d100000  xwait zero, 0
001d64  1d800000  lock zero, r1
001d68  0d000020  ew_cfg zero, zero, zero, 16
001d6c  1d900000  unlock r1
001d70  7d400000  xsignal_mode_cfg zero
001d74  9f8ebe00  addli sp, sp, 88
001d78  00a00300  mfence { lm, sm, gm }
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
001dc4  00100000  exit
001dc8  00100000  exit
001dcc  00100000  exit
001dd0  00100000  exit
001dd4  00100000  exit
001dd8  00100000  exit
001ddc  00100000  exit
001de0  00100000  exit
001de4  00100000  exit
001de8  00100000  exit
001dec  00100000  exit
001df0  00100000  exit
001df4  00100000  exit
001df8  00100000  exit
001dfc  00100000  exit
001e00  00100000  exit
001e04  00100000  exit
001e08  00100000  exit
001e0c  00100000  exit
001e10  00100000  exit
001e14  00100000  exit
001e18  00100000  exit
001e1c  00100000  exit
001e20  00100000  exit
001e24  00100000  exit
001e28  00100000  exit
001e2c  00100000  exit
001e30  00100000  exit
001e34  00100000  exit
001e38  00100000  exit
001e3c  00100000  exit
001e40  00100000  exit
001e44  00100000  exit
001e48  00100000  exit
001e4c  00100000  exit
001e50  00100000  exit
001e54  00100000  exit
001e58  00100000  exit
001e5c  00100000  exit
001e60  00100000  exit
001e64  00100000  exit
001e68  00100000  exit
001e6c  00100000  exit
001e70  00100000  exit
001e74  00100000  exit
001e78  00100000  exit
001e7c  00100000  exit
001e80  00100000  exit
001e84  00100000  exit
001e88  00100000  exit
001e8c  00100000  exit
001e90  00100000  exit
001e94  00100000  exit
001e98  00100000  exit
001e9c  00100000  exit
001ea0  00100000  exit
001ea4  00100000  exit
001ea8  00100000  exit
001eac  00100000  exit
001eb0  00100000  exit
001eb4  00100000  exit
001eb8  00100000  exit
001ebc  00100000  exit
001ec0  00100000  exit
001ec4  00100000  exit
001ec8  00100000  exit
001ecc  00100000  exit
001ed0  00100000  exit
001ed4  00100000  exit
001ed8  00100000  exit
001edc  00100000  exit
001ee0  00100000  exit
001ee4  00100000  exit
001ee8  00100000  exit
001eec  00100000  exit
001ef0  00100000  exit
001ef4  00100000  exit
001ef8  00100000  exit
001efc  00100000  exit
001f00  00100000  exit
001f04  00100000  exit
001f08  00100000  exit
001f0c  00100000  exit
001f10  00100000  exit
001f14  00100000  exit
001f18  00100000  exit
001f1c  00100000  exit
001f20  00100000  exit
001f24  00100000  exit
001f28  00100000  exit
001f2c  00100000  exit
001f30  00100000  exit
001f34  00100000  exit
001f38  00100000  exit
001f3c  00100000  exit
001f40  00100000  exit
001f44  00100000  exit
001f48  00100000  exit
001f4c  00100000  exit
001f50  00100000  exit
001f54  00100000  exit
001f58  00100000  exit
001f5c  00100000  exit
001f60  00100000  exit
001f64  00100000  exit
001f68  00100000  exit
001f6c  00100000  exit
001f70  00100000  exit
001f74  00100000  exit
001f78  00100000  exit
001f7c  00100000  exit
001f80  00100000  exit
001f84  00100000  exit
001f88  00100000  exit
001f8c  00100000  exit
001f90  00100000  exit
001f94  00100000  exit
001f98  00100000  exit
001f9c  00100000  exit
001fa0  00100000  exit
001fa4  00100000  exit
001fa8  00100000  exit
001fac  00100000  exit
001fb0  00100000  exit
001fb4  00100000  exit
001fb8  00100000  exit
001fbc  00100000  exit
