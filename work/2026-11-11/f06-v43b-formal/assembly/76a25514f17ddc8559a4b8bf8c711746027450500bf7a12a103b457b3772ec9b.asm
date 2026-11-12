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
0000b4  9f8e7eff  addli sp, sp, -72
0000b8  9f100000  addli r1, zero, 1
0000bc  00310002  core_id r2
0000c0  1f8f1e00  addli r30, sp, 8
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600100  beq r2, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5b110000  j 136
0000e0  9f210000  addli r3, zero, 2
0000e4  fdd00000  uni_sram_cfg r1, r1
0000e8  2bf2ffff  lui r4, 1048575
0000ec  1d800100  lock zero, r3
0000f0  8d000020  ew_cfg r1, zero, zero, 16
0000f4  9b10f2ff  ori r1, r4, 4095
0000f8  1d900100  unlock r3
0000fc  9f310000  addli r3, zero, 3
000100  80a10004  csr_set csr3, r1
000104  9f500000  addli r1, zero, 5
000108  00d00100  sync_group
00010c  7d800000  xsignal r1, 0
000110  7d800000  xsignal r1, 0
000114  7d800000  xsignal r1, 0
000118  7d800100  xsignal r3, 0
00011c  7d800100  xsignal r3, 0
000120  7d800100  xsignal r3, 0
000124  9f101000  addli r1, zero, 9
000128  9f710000  addli r3, zero, 7
00012c  7d800000  xsignal r1, 0
000130  7d800000  xsignal r1, 0
000134  7d800000  xsignal r1, 0
000138  7d800100  xsignal r3, 0
00013c  7d800100  xsignal r3, 0
000140  7d800100  xsignal r3, 0
000144  9f301000  addli r1, zero, 11
000148  9f611000  addli r3, zero, 14
00014c  7d800000  xsignal r1, 0
000150  7d800000  xsignal r1, 0
000154  7d800000  xsignal r1, 0
000158  7d800100  xsignal r3, 0
00015c  7d800100  xsignal r3, 0
000160  7d800100  xsignal r3, 0
000164  e3004f00  loadli.w r1,  32(r30)
000168  e3414f00  loadli.w r3,  36(r30)
00016c  80d20002  load_param_i r5, 1
000170  63025f00  loadli.w r4,  40(r30)
000174  8b901120  mul.s r1, r3, r1
000178  9f810200  addli r3, r5, 0
00017c  8b914050  fmac.s r3, r1, r4
000180  0b924020  mul.s r4, r1, r4
000184  9ff1f1ff  addli r3, r3, -1
000188  8b915130  div.s r3, r3, r5
00018c  80520002  load_param_i r5, 0
000190  8b905120  mul.s r1, r3, r5
000194  8b915150  fmac.s r3, r3, r5
000198  80320002  core_id r5
00019c  8b914140  min.s r3, r3, r4
0001a0  cbc61104  ble.s r3, r1, 2480
0001a4  b3910128  sext_int2long r[4:5], r3
0001a8  33930028  sext_int2long r[7:8], r1
0001ac  1f048000  addli r8, zero, 64
0001b0  9f041000  addli r9, zero, 8
0001b4  1f360000  addli r12, zero, 3
0001b8  9f270000  addli r15, zero, 2
0001bc  1f580000  addli r16, zero, 5
0001c0  9f080001  addli r17, zero, 128
0001c4  1f490000  addli r18, zero, 4
0001c8  9f190000  addli r19, zero, 1
0001cc  1f3e3000  addli r28, zero, 27
0001d0  9f000008  addli r1, zero, 1024
0001d4  9f060000  addli r13, zero, 0
0001d8  733c3ffe  store.d r[4:5], -8(r30)
0001dc  ab410000  lui r3, 4
0001e0  db080000  j 68
0001e4  7d900700  xwait r15, 0
0001e8  7d100800  xwait r16, 0
0001ec  1d000000  lock zero, zero
0001f0  81070000  ds_cfg r15, zero, 0
0001f4  01040002  ds_cfg r8, zero, 1
0001f8  0104001c  ds_cfg r8, zero, 14
0001fc  8108001a  ds_cfg r17, zero, 13
000200  a19d8d02  shuffle_batch r27, r27, r8, 1
000204  1d100000  unlock zero
000208  7d000600  xsignal r12, 0
00020c  7d000900  xsignal r18, 0
000210  6b558fff  load.d r[11:12], -8(r30)
000214  27130300  addli.d r[7:8], r[7:8], 1
000218  9f960600  addli r13, r13, 1
00021c  1335a304  setlt.sl r10, r[7:8], r[11:12]
000220  b7440504  beq r10, zero, 2352
000224  0b9dc638  mod.s r26, r13, r12
000228  9b3dfd00  slli r27, r26, 15
00022c  b7eef2fe  beq r5, r15, -72
000230  63055f00  loadli.w r10,  40(r30)
000234  1f0b7000  addli r22, zero, 56
000238  8b15a330  div.s r11, r6, r10
00023c  63454f00  loadli.w r10,  36(r30)
000240  8b95a530  div.s r11, r11, r10
000244  1f053000  addli r10, zero, 24
000248  0b978530  div.s r14, r11, r8
00024c  1b3a6700  slli r20, r14, 6
000250  1b373700  slli r14, r14, 3
000254  0b9a4519  sub.s r20, r11, r20
000258  8b959538  mod.s r11, r11, r9
00025c  1b3a8a01  slli r20, r20, 24
000260  175aaa00  sra r20, r20, r10
000264  0b1a9a30  div.s r20, r20, r9
000268  8b15b710  add.s r11, r14, r11
00026c  339c0528  sext_int2long r[25:26], r11
000270  330a0a28  zext_int2long r[21:22], r20
000274  173a6a03  sll.d r[21:22], r[21:22], r22
000278  175a6a03  sra.d r[21:22], r[21:22], r22
00027c  173b9a02  sll.d r[23:24], r[21:22], r9
000280  173a3b03  sll.d r[21:22], r[23:24], r19
000284  3bf33203  bneq r5, r19, 1244
000288  1f621000  addli r4, zero, 14
00028c  1f310000  addli r2, zero, 3
000290  1f363000  addli r12, zero, 27
000294  1f2e3000  addli r28, zero, 26
000298  9f451000  addli r11, zero, 12
00029c  1f571000  addli r14, zero, 13
0002a0  173b4c02  sll.d r[23:24], r[25:26], r4
0002a4  6b520f00  load.d r[5:6], 0(r30)
0002a8  1f6c1000  addli r24, zero, 14
0002ac  9f6c0000  addli r25, zero, 6
0002b0  7d100100  xwait r2, 0
0002b4  0b2b6211  add.ul r[23:24], r[5:6], r[23:24]
0002b8  9f720000  addli r5, zero, 7
0002bc  3f84d700  blt.s r15, r13, 256
0002c0  1d000800  lock zero, r16
0002c4  1f310000  addli r2, zero, 3
0002c8  1f121000  addli r4, zero, 9
0002cc  15000014  dma_cfg zero, zero, zero, 10
0002d0  15003015  dma_cfg zero, zero, r19, 10
0002d4  1500f014  dma_cfg zero, zero, r15, 10
0002d8  15002014  dma_cfg zero, zero, r2, 10
0002dc  1f211000  addli r2, zero, 10
0002e0  15002015  dma_cfg zero, zero, r18, 10
0002e4  15000015  dma_cfg zero, zero, r16, 10
0002e8  15009015  dma_cfg zero, zero, r25, 10
0002ec  15005014  dma_cfg zero, zero, r5, 10
0002f0  15009014  dma_cfg zero, zero, r9, 10
0002f4  15004014  dma_cfg zero, zero, r4, 10
0002f8  1f321000  addli r4, zero, 11
0002fc  15002014  dma_cfg zero, zero, r2, 10
000300  1f012000  addli r2, zero, 16
000304  15004014  dma_cfg zero, zero, r4, 10
000308  1f721000  addli r4, zero, 15
00030c  1500b014  dma_cfg zero, zero, r11, 10
000310  1500e014  dma_cfg zero, zero, r14, 10
000314  15008015  dma_cfg zero, zero, r24, 10
000318  15004014  dma_cfg zero, zero, r4, 10
00031c  1f122000  addli r4, zero, 17
000320  15002014  dma_cfg zero, zero, r2, 10
000324  1f512000  addli r2, zero, 21
000328  15004014  dma_cfg zero, zero, r4, 10
00032c  1f222000  addli r4, zero, 18
000330  15004014  dma_cfg zero, zero, r4, 10
000334  1f322000  addli r4, zero, 19
000338  15004014  dma_cfg zero, zero, r4, 10
00033c  1f422000  addli r4, zero, 20
000340  15004014  dma_cfg zero, zero, r4, 10
000344  15002014  dma_cfg zero, zero, r2, 10
000348  1f612000  addli r2, zero, 22
00034c  15002014  dma_cfg zero, zero, r2, 10
000350  1f712000  addli r2, zero, 23
000354  15002014  dma_cfg zero, zero, r2, 10
000358  1f113000  addli r2, zero, 25
00035c  1500a014  dma_cfg zero, zero, r10, 10
000360  15002014  dma_cfg zero, zero, r2, 10
000364  1f413000  addli r2, zero, 28
000368  1500c015  dma_cfg zero, zero, r28, 10
00036c  1500c014  dma_cfg zero, zero, r12, 10
000370  15002014  dma_cfg zero, zero, r2, 10
000374  1f513000  addli r2, zero, 29
000378  15002014  dma_cfg zero, zero, r2, 10
00037c  1f613000  addli r2, zero, 30
000380  15002014  dma_cfg zero, zero, r2, 10
000384  1f713000  addli r2, zero, 31
000388  15002014  dma_cfg zero, zero, r2, 10
00038c  1f010002  addli r2, zero, 256
000390  95890900  dma_cfg r19, r19, zero, 0
000394  95090002  dma_cfg r19, zero, zero, 1
000398  15000004  dma_cfg zero, zero, zero, 2
00039c  950d8006  dma_cfg r27, zero, r8, 3
0003a0  9508f008  dma_cfg r17, zero, r15, 4
0003a4  1501100b  dma_cfg r2, zero, r17, 5
0003a8  15000010  dma_cfg zero, zero, zero, 8
0003ac  35000000  dma_run zero
0003b0  1500300b  dma_cfg zero, zero, r19, 5
0003b4  15000010  dma_cfg zero, zero, zero, 8
0003b8  1d100800  unlock r16
0003bc  1d000900  lock zero, r18
0003c0  1b950d04  ori r10, r27, 64
0003c4  1f0e0002  addli r28, zero, 256
0003c8  1f310000  addli r2, zero, 3
0003cc  1f321000  addli r4, zero, 11
0003d0  1f463000  addli r12, zero, 28
0003d4  95890900  dma_cfg r19, r19, zero, 0
0003d8  15800b04  dma_cfg zero, r23, zero, 2
0003dc  15058b06  dma_cfg r10, r22, r8, 3
0003e0  9f1b1000  addli r23, zero, 9
0003e4  1f7b1000  addli r22, zero, 15
0003e8  1f053000  addli r10, zero, 24
0003ec  9508f408  dma_cfg r17, r8, r15, 4
0003f0  158e180b  dma_cfg r28, r17, r17, 5
0003f4  15000010  dma_cfg zero, zero, zero, 8
0003f8  35000000  dma_run zero
0003fc  1500300b  dma_cfg zero, zero, r19, 5
000400  15000010  dma_cfg zero, zero, zero, 8
000404  1d100900  unlock r18
000408  1d000800  lock zero, r16
00040c  15000014  dma_cfg zero, zero, zero, 10
000410  15003015  dma_cfg zero, zero, r19, 10
000414  1500f014  dma_cfg zero, zero, r15, 10
000418  15002014  dma_cfg zero, zero, r2, 10
00041c  1f211000  addli r2, zero, 10
000420  15002015  dma_cfg zero, zero, r18, 10
000424  15000015  dma_cfg zero, zero, r16, 10
000428  1f482000  addli r16, zero, 20
00042c  15009015  dma_cfg zero, zero, r25, 10
000430  9f2c2000  addli r25, zero, 18
000434  15005014  dma_cfg zero, zero, r5, 10
000438  9f122000  addli r5, zero, 17
00043c  15009014  dma_cfg zero, zero, r9, 10
000440  15007015  dma_cfg zero, zero, r23, 10
000444  15002014  dma_cfg zero, zero, r2, 10
000448  1f012000  addli r2, zero, 16
00044c  15004014  dma_cfg zero, zero, r4, 10
000450  1500b014  dma_cfg zero, zero, r11, 10
000454  9f552000  addli r11, zero, 21
000458  1500e014  dma_cfg zero, zero, r14, 10
00045c  1b37ad00  slli r14, r26, 10
000460  1f4d1000  addli r26, zero, 12
000464  15008015  dma_cfg zero, zero, r24, 10
000468  1f3c2000  addli r24, zero, 19
00046c  15006015  dma_cfg zero, zero, r22, 10
000470  15002014  dma_cfg zero, zero, r2, 10
000474  1f510000  addli r2, zero, 5
000478  15005014  dma_cfg zero, zero, r5, 10
00047c  15009015  dma_cfg zero, zero, r25, 10
000480  15008015  dma_cfg zero, zero, r24, 10
000484  15000015  dma_cfg zero, zero, r16, 10
000488  1500b014  dma_cfg zero, zero, r11, 10
00048c  9f652000  addli r11, zero, 22
000490  1500b014  dma_cfg zero, zero, r11, 10
000494  9f752000  addli r11, zero, 23
000498  1500b014  dma_cfg zero, zero, r11, 10
00049c  9f153000  addli r11, zero, 25
0004a0  1500a014  dma_cfg zero, zero, r10, 10
0004a4  1500b014  dma_cfg zero, zero, r11, 10
0004a8  9f253000  addli r11, zero, 26
0004ac  1500b014  dma_cfg zero, zero, r11, 10
0004b0  9f353000  addli r11, zero, 27
0004b4  1500b014  dma_cfg zero, zero, r11, 10
0004b8  9f553000  addli r11, zero, 29
0004bc  1500c014  dma_cfg zero, zero, r12, 10
0004c0  1500b014  dma_cfg zero, zero, r11, 10
0004c4  9f653000  addli r11, zero, 30
0004c8  1500b014  dma_cfg zero, zero, r11, 10
0004cc  9f753000  addli r11, zero, 31
0004d0  1500b014  dma_cfg zero, zero, r11, 10
0004d4  ab850400  lui r11, 72
0004d8  95890900  dma_cfg r19, r19, zero, 0
0004dc  95090002  dma_cfg r19, zero, zero, 1
0004e0  8b15b710  add.s r11, r14, r11
0004e4  15000004  dma_cfg zero, zero, zero, 2
0004e8  950d8006  dma_cfg r27, zero, r8, 3
0004ec  9508f008  dma_cfg r17, zero, r15, 4
0004f0  150e100b  dma_cfg r28, zero, r17, 5
0004f4  eb5d0f01  load.d r[28:29], 16(r30)
0004f8  15000010  dma_cfg zero, zero, zero, 8
0004fc  35000000  dma_run zero
000500  1500300b  dma_cfg zero, zero, r19, 5
000504  15000010  dma_cfg zero, zero, zero, 8
000508  0baa4d11  add.ul r[21:22], r[28:29], r[21:22]
00050c  1d100100  unlock r2
000510  7d800700  xsignal r15, 0
000514  7d100200  xwait r4, 0
000518  bfd3d700  blt.s r15, r13, 244
00051c  1d000100  lock zero, r2
000520  9f3d0000  addli r27, zero, 3
000524  15000014  dma_cfg zero, zero, zero, 10
000528  15003015  dma_cfg zero, zero, r19, 10
00052c  1500f014  dma_cfg zero, zero, r15, 10
000530  1500b015  dma_cfg zero, zero, r27, 10
000534  9f6d0000  addli r27, zero, 6
000538  15002015  dma_cfg zero, zero, r18, 10
00053c  15002014  dma_cfg zero, zero, r2, 10
000540  1500b015  dma_cfg zero, zero, r27, 10
000544  9f7d0000  addli r27, zero, 7
000548  1500b015  dma_cfg zero, zero, r27, 10
00054c  9f2d1000  addli r27, zero, 10
000550  15009014  dma_cfg zero, zero, r9, 10
000554  15007015  dma_cfg zero, zero, r23, 10
000558  1500b015  dma_cfg zero, zero, r27, 10
00055c  15004014  dma_cfg zero, zero, r4, 10
000560  1f521000  addli r4, zero, 13
000564  1500a015  dma_cfg zero, zero, r26, 10
000568  15004014  dma_cfg zero, zero, r4, 10
00056c  1f621000  addli r4, zero, 14
000570  15004014  dma_cfg zero, zero, r4, 10
000574  1f022000  addli r4, zero, 16
000578  15006015  dma_cfg zero, zero, r22, 10
00057c  15004014  dma_cfg zero, zero, r4, 10
000580  1f522000  addli r4, zero, 21
000584  15005014  dma_cfg zero, zero, r5, 10
000588  15009015  dma_cfg zero, zero, r25, 10
00058c  15008015  dma_cfg zero, zero, r24, 10
000590  15000015  dma_cfg zero, zero, r16, 10
000594  15004014  dma_cfg zero, zero, r4, 10
000598  1f622000  addli r4, zero, 22
00059c  15004014  dma_cfg zero, zero, r4, 10
0005a0  1f722000  addli r4, zero, 23
0005a4  15004014  dma_cfg zero, zero, r4, 10
0005a8  1f123000  addli r4, zero, 25
0005ac  1500a014  dma_cfg zero, zero, r10, 10
0005b0  15004014  dma_cfg zero, zero, r4, 10
0005b4  1f223000  addli r4, zero, 26
0005b8  15004014  dma_cfg zero, zero, r4, 10
0005bc  1f323000  addli r4, zero, 27
0005c0  15004014  dma_cfg zero, zero, r4, 10
0005c4  1f523000  addli r4, zero, 29
0005c8  1500c014  dma_cfg zero, zero, r12, 10
0005cc  15004014  dma_cfg zero, zero, r4, 10
0005d0  1f623000  addli r4, zero, 30
0005d4  15004014  dma_cfg zero, zero, r4, 10
0005d8  1f723000  addli r4, zero, 31
0005dc  15004014  dma_cfg zero, zero, r4, 10
0005e0  95890900  dma_cfg r19, r19, zero, 0
0005e4  95090002  dma_cfg r19, zero, zero, 1
0005e8  15000004  dma_cfg zero, zero, zero, 2
0005ec  95058006  dma_cfg r11, zero, r8, 3
0005f0  95089008  dma_cfg r17, zero, r9, 4
0005f4  9500300b  dma_cfg r1, zero, r19, 5
0005f8  15000010  dma_cfg zero, zero, zero, 8
0005fc  35000000  dma_run zero
000600  1500300b  dma_cfg zero, zero, r19, 5
000604  15000010  dma_cfg zero, zero, zero, 8
000608  1d100100  unlock r2
00060c  2b820400  lui r4, 72
000610  1d000900  lock zero, r18
000614  1f7e1000  addli r28, zero, 15
000618  1f0b3000  addli r22, zero, 24
00061c  1f360000  addli r12, zero, 3
000620  95890900  dma_cfg r19, r19, zero, 0
000624  1b150204  ori r10, r4, 64
000628  15800a04  dma_cfg zero, r21, zero, 2
00062c  1f020004  addli r4, zero, 512
000630  0b15a710  add.s r10, r14, r10
000634  1f370000  addli r14, zero, 3
000638  15058a06  dma_cfg r10, r20, r8, 3
00063c  1f6a0000  addli r20, zero, 6
000640  1f251000  addli r10, zero, 10
000644  95089408  dma_cfg r17, r8, r9, 4
000648  9500320b  dma_cfg r1, r4, r19, 5
00064c  1f423000  addli r4, zero, 28
000650  15000010  dma_cfg zero, zero, zero, 8
000654  35000000  dma_run zero
000658  1500300b  dma_cfg zero, zero, r19, 5
00065c  15000010  dma_cfg zero, zero, zero, 8
000660  1d100900  unlock r18
000664  1d000100  lock zero, r2
000668  15000014  dma_cfg zero, zero, zero, 10
00066c  15003015  dma_cfg zero, zero, r19, 10
000670  1500f014  dma_cfg zero, zero, r15, 10
000674  1500e014  dma_cfg zero, zero, r14, 10
000678  1f371000  addli r14, zero, 11
00067c  15002015  dma_cfg zero, zero, r18, 10
000680  15002014  dma_cfg zero, zero, r2, 10
000684  15004015  dma_cfg zero, zero, r20, 10
000688  1f7a0000  addli r20, zero, 7
00068c  15004015  dma_cfg zero, zero, r20, 10
000690  15009014  dma_cfg zero, zero, r9, 10
000694  15007015  dma_cfg zero, zero, r23, 10
000698  1500a014  dma_cfg zero, zero, r10, 10
00069c  1500e014  dma_cfg zero, zero, r14, 10
0006a0  1f571000  addli r14, zero, 13
0006a4  1500a015  dma_cfg zero, zero, r26, 10
0006a8  1500e014  dma_cfg zero, zero, r14, 10
0006ac  1f671000  addli r14, zero, 14
0006b0  1500e014  dma_cfg zero, zero, r14, 10
0006b4  1f072000  addli r14, zero, 16
0006b8  1500c015  dma_cfg zero, zero, r28, 10
0006bc  1f3e3000  addli r28, zero, 27
0006c0  1500e014  dma_cfg zero, zero, r14, 10
0006c4  15005014  dma_cfg zero, zero, r5, 10
0006c8  9f522000  addli r5, zero, 21
0006cc  15009015  dma_cfg zero, zero, r25, 10
0006d0  15008015  dma_cfg zero, zero, r24, 10
0006d4  15000015  dma_cfg zero, zero, r16, 10
0006d8  1f580000  addli r16, zero, 5
0006dc  15005014  dma_cfg zero, zero, r5, 10
0006e0  9f622000  addli r5, zero, 22
0006e4  15005014  dma_cfg zero, zero, r5, 10
0006e8  9f722000  addli r5, zero, 23
0006ec  15005014  dma_cfg zero, zero, r5, 10
0006f0  9f123000  addli r5, zero, 25
0006f4  15006015  dma_cfg zero, zero, r22, 10
0006f8  15005014  dma_cfg zero, zero, r5, 10
0006fc  9f223000  addli r5, zero, 26
000700  15005014  dma_cfg zero, zero, r5, 10
000704  9f323000  addli r5, zero, 27
000708  15005014  dma_cfg zero, zero, r5, 10
00070c  80320002  core_id r5
000710  15004014  dma_cfg zero, zero, r4, 10
000714  1f523000  addli r4, zero, 29
000718  15004014  dma_cfg zero, zero, r4, 10
00071c  1f623000  addli r4, zero, 30
000720  15004014  dma_cfg zero, zero, r4, 10
000724  1f723000  addli r4, zero, 31
000728  15004014  dma_cfg zero, zero, r4, 10
00072c  95890900  dma_cfg r19, r19, zero, 0
000730  95090002  dma_cfg r19, zero, zero, 1
000734  15000004  dma_cfg zero, zero, zero, 2
000738  95058006  dma_cfg r11, zero, r8, 3
00073c  95089008  dma_cfg r17, zero, r9, 4
000740  9500300b  dma_cfg r1, zero, r19, 5
000744  15000010  dma_cfg zero, zero, zero, 8
000748  35000000  dma_run zero
00074c  1500300b  dma_cfg zero, zero, r19, 5
000750  15000010  dma_cfg zero, zero, zero, 8
000754  1d100100  unlock r2
000758  7d000500  xsignal r10, 0
00075c  db56ffff  j -1356
000760  9b350d01  slli r11, r26, 16
000764  2b870100  lui r14, 24
000768  1f710000  addli r2, zero, 7
00076c  0b97e510  add.s r14, r11, r14
000770  37aa2200  beq r5, r2, 648
000774  1f610000  addli r2, zero, 6
000778  bbfa2200  bneq r5, r2, 700
00077c  6b528f00  load.d r[5:6], 8(r30)
000780  1f263000  addli r12, zero, 26
000784  1f310000  addli r2, zero, 3
000788  0b2a4211  add.ul r[21:22], r[5:6], r[21:22]
00078c  9f720000  addli r5, zero, 7
000790  7d900200  xwait r5, 0
000794  3fa4d700  blt.s r15, r13, 264
000798  1d000800  lock zero, r16
00079c  1f620000  addli r4, zero, 6
0007a0  15000014  dma_cfg zero, zero, zero, 10
0007a4  15003015  dma_cfg zero, zero, r19, 10
0007a8  1500f014  dma_cfg zero, zero, r15, 10
0007ac  15002014  dma_cfg zero, zero, r2, 10
0007b0  15002015  dma_cfg zero, zero, r18, 10
0007b4  15000015  dma_cfg zero, zero, r16, 10
0007b8  15004014  dma_cfg zero, zero, r4, 10
0007bc  1f121000  addli r4, zero, 9
0007c0  15005014  dma_cfg zero, zero, r5, 10
0007c4  15009014  dma_cfg zero, zero, r9, 10
0007c8  15004014  dma_cfg zero, zero, r4, 10
0007cc  1f221000  addli r4, zero, 10
0007d0  15004014  dma_cfg zero, zero, r4, 10
0007d4  1f321000  addli r4, zero, 11
0007d8  15004014  dma_cfg zero, zero, r4, 10
0007dc  1f421000  addli r4, zero, 12
0007e0  15004014  dma_cfg zero, zero, r4, 10
0007e4  1f521000  addli r4, zero, 13
0007e8  15004014  dma_cfg zero, zero, r4, 10
0007ec  1f621000  addli r4, zero, 14
0007f0  15004014  dma_cfg zero, zero, r4, 10
0007f4  1f721000  addli r4, zero, 15
0007f8  15004014  dma_cfg zero, zero, r4, 10
0007fc  1f022000  addli r4, zero, 16
000800  15004014  dma_cfg zero, zero, r4, 10
000804  1f122000  addli r4, zero, 17
000808  15004014  dma_cfg zero, zero, r4, 10
00080c  1f222000  addli r4, zero, 18
000810  15004014  dma_cfg zero, zero, r4, 10
000814  1f322000  addli r4, zero, 19
000818  15004014  dma_cfg zero, zero, r4, 10
00081c  1f422000  addli r4, zero, 20
000820  15004014  dma_cfg zero, zero, r4, 10
000824  1f522000  addli r4, zero, 21
000828  15004014  dma_cfg zero, zero, r4, 10
00082c  1f622000  addli r4, zero, 22
000830  15004014  dma_cfg zero, zero, r4, 10
000834  1f722000  addli r4, zero, 23
000838  15004014  dma_cfg zero, zero, r4, 10
00083c  1f123000  addli r4, zero, 25
000840  1500a014  dma_cfg zero, zero, r10, 10
000844  15004014  dma_cfg zero, zero, r4, 10
000848  1f423000  addli r4, zero, 28
00084c  1500c014  dma_cfg zero, zero, r12, 10
000850  1500c015  dma_cfg zero, zero, r28, 10
000854  15004014  dma_cfg zero, zero, r4, 10
000858  1f523000  addli r4, zero, 29
00085c  15004014  dma_cfg zero, zero, r4, 10
000860  1f623000  addli r4, zero, 30
000864  15004014  dma_cfg zero, zero, r4, 10
000868  1f723000  addli r4, zero, 31
00086c  15004014  dma_cfg zero, zero, r4, 10
000870  95890900  dma_cfg r19, r19, zero, 0
000874  95090002  dma_cfg r19, zero, zero, 1
000878  15000004  dma_cfg zero, zero, zero, 2
00087c  15078006  dma_cfg r14, zero, r8, 3
000880  95089008  dma_cfg r17, zero, r9, 4
000884  9500800a  dma_cfg r1, zero, r8, 5
000888  15000010  dma_cfg zero, zero, zero, 8
00088c  35000000  dma_run zero
000890  1500300b  dma_cfg zero, zero, r19, 5
000894  15000010  dma_cfg zero, zero, zero, 8
000898  1d100800  unlock r16
00089c  2b850100  lui r10, 24
0008a0  1d000900  lock zero, r18
0008a4  1f020020  addli r4, zero, 4096
0008a8  9f620000  addli r5, zero, 6
0008ac  1f360000  addli r12, zero, 3
0008b0  95890900  dma_cfg r19, r19, zero, 0
0008b4  1b150504  ori r10, r10, 64
0008b8  15800a04  dma_cfg zero, r21, zero, 2
0008bc  0b95a510  add.s r10, r11, r10
0008c0  15058a06  dma_cfg r10, r20, r8, 3
0008c4  1f053000  addli r10, zero, 24
0008c8  95089408  dma_cfg r17, r8, r9, 4
0008cc  9500820a  dma_cfg r1, r4, r8, 5
0008d0  1f121000  addli r4, zero, 9
0008d4  15000010  dma_cfg zero, zero, zero, 8
0008d8  35000000  dma_run zero
0008dc  1500300b  dma_cfg zero, zero, r19, 5
0008e0  15000010  dma_cfg zero, zero, zero, 8
0008e4  1d100900  unlock r18
0008e8  1d000800  lock zero, r16
0008ec  15000014  dma_cfg zero, zero, zero, 10
0008f0  15003015  dma_cfg zero, zero, r19, 10
0008f4  1500f014  dma_cfg zero, zero, r15, 10
0008f8  15002014  dma_cfg zero, zero, r2, 10
0008fc  1f710000  addli r2, zero, 7
000900  15002015  dma_cfg zero, zero, r18, 10
000904  15000015  dma_cfg zero, zero, r16, 10
000908  15005014  dma_cfg zero, zero, r5, 10
00090c  15002014  dma_cfg zero, zero, r2, 10
000910  1f012000  addli r2, zero, 16
000914  15009014  dma_cfg zero, zero, r9, 10
000918  15004014  dma_cfg zero, zero, r4, 10
00091c  1f221000  addli r4, zero, 10
000920  15004014  dma_cfg zero, zero, r4, 10
000924  1f321000  addli r4, zero, 11
000928  15004014  dma_cfg zero, zero, r4, 10
00092c  1f421000  addli r4, zero, 12
000930  15004014  dma_cfg zero, zero, r4, 10
000934  1f521000  addli r4, zero, 13
000938  15004014  dma_cfg zero, zero, r4, 10
00093c  1f621000  addli r4, zero, 14
000940  15004014  dma_cfg zero, zero, r4, 10
000944  1f721000  addli r4, zero, 15
000948  15004014  dma_cfg zero, zero, r4, 10
00094c  1f122000  addli r4, zero, 17
000950  15002014  dma_cfg zero, zero, r2, 10
000954  1f512000  addli r2, zero, 21
000958  15004014  dma_cfg zero, zero, r4, 10
00095c  1f222000  addli r4, zero, 18
000960  15004014  dma_cfg zero, zero, r4, 10
000964  1f322000  addli r4, zero, 19
000968  15004014  dma_cfg zero, zero, r4, 10
00096c  1f422000  addli r4, zero, 20
000970  15004014  dma_cfg zero, zero, r4, 10
000974  15002014  dma_cfg zero, zero, r2, 10
000978  1f612000  addli r2, zero, 22
00097c  15002014  dma_cfg zero, zero, r2, 10
000980  1f712000  addli r2, zero, 23
000984  15002014  dma_cfg zero, zero, r2, 10
000988  1f113000  addli r2, zero, 25
00098c  1500a014  dma_cfg zero, zero, r10, 10
000990  15002014  dma_cfg zero, zero, r2, 10
000994  1f213000  addli r2, zero, 26
000998  15002014  dma_cfg zero, zero, r2, 10
00099c  1f413000  addli r2, zero, 28
0009a0  1500c015  dma_cfg zero, zero, r28, 10
0009a4  15002014  dma_cfg zero, zero, r2, 10
0009a8  1f513000  addli r2, zero, 29
0009ac  15002014  dma_cfg zero, zero, r2, 10
0009b0  1f613000  addli r2, zero, 30
0009b4  15002014  dma_cfg zero, zero, r2, 10
0009b8  1f713000  addli r2, zero, 31
0009bc  15002014  dma_cfg zero, zero, r2, 10
0009c0  95890900  dma_cfg r19, r19, zero, 0
0009c4  95090002  dma_cfg r19, zero, zero, 1
0009c8  15000004  dma_cfg zero, zero, zero, 2
0009cc  15078006  dma_cfg r14, zero, r8, 3
0009d0  95089008  dma_cfg r17, zero, r9, 4
0009d4  9500800a  dma_cfg r1, zero, r8, 5
0009d8  15000010  dma_cfg zero, zero, zero, 8
0009dc  35000000  dma_run zero
0009e0  1500300b  dma_cfg zero, zero, r19, 5
0009e4  15000010  dma_cfg zero, zero, zero, 8
0009e8  1d100800  unlock r16
0009ec  7d800200  xsignal r5, 0
0009f0  80320002  core_id r5
0009f4  5b080000  j 64
0009f8  1f610000  addli r2, zero, 6
0009fc  1f151000  addli r10, zero, 9
000a00  7d100100  xwait r2, 0
000a04  7d100500  xwait r10, 0
000a08  1d000000  lock zero, zero
000a0c  1f010002  addli r2, zero, 256
000a10  81070000  ds_cfg r15, zero, 0
000a14  01010002  ds_cfg r2, zero, 1
000a18  0104001c  ds_cfg r8, zero, 14
000a1c  0101001a  ds_cfg r2, zero, 13
000a20  1f710000  addli r2, zero, 7
000a24  c1058704  shuffle_coa r11, r14, r8, 2
000a28  1d100000  unlock zero
000a2c  7d000100  xsignal r2, 0
000a30  7d800400  xsignal r9, 0
000a34  2b810400  lui r2, 72
000a38  1b351d01  slli r10, r26, 17
000a3c  1b1701c0  ori r14, r2, 3072
000a40  0b17e510  add.s r14, r10, r14
000a44  3be12201  bneq r5, r18, 88
000a48  1f0a0000  addli r20, zero, 0
000a4c  9f621000  addli r5, zero, 14
000a50  7d100900  xwait r18, 0
000a54  7d900400  xwait r9, 0
000a58  7d900200  xwait r5, 0
000a5c  1d800900  lock zero, r19
000a60  0b154711  add.s r10, r14, r20
000a64  1f0a0a02  addli r20, r20, 256
000a68  09041401  mm_cfg r8, r8, r17, 0
000a6c  09893405  mm_cfg r18, r9, r19, 2
000a70  2985bd10  mm r10, r27, r11, 8
000a74  8b953510  add.s r11, r11, r3
000a78  1d900900  unlock r19
000a7c  bb0f1afe  bneq r20, r1, -32
000a80  9f121000  addli r5, zero, 9
000a84  7d000800  xsignal r16, 0
000a88  7d800200  xsignal r5, 0
000a8c  9f421000  addli r5, zero, 12
000a90  7d800200  xsignal r5, 0
000a94  80320002  core_id r5
000a98  5beffeff  j -2184
000a9c  bb910201  bneq r5, r16, 100
000aa0  1f2a1000  addli r20, zero, 10
000aa4  1b35ad00  slli r10, r26, 10
000aa8  9f050000  addli r11, zero, 0
000aac  7d100a00  xwait r20, 0
000ab0  0b1a2510  add.s r20, r10, r2
000ab4  1f451000  addli r10, zero, 12
000ab8  2b01803f  lui r2, 260096
000abc  7d100500  xwait r10, 0
000ac0  1d800700  lock zero, r15
000ac4  0d000002  ew_cfg zero, zero, zero, 1
000ac8  0d110100  ewcoeff_cfg r2, r2, zero, 0
000acc  1f71f001  addli r2, zero, 255
000ad0  0d000104  ew_cfg zero, r2, zero, 2
000ad4  2b010200  lui r2, 32
000ad8  8d090006  ew_cfg r19, zero, zero, 3
000adc  0b15b710  add.s r10, r14, r11
000ae0  9f850508  addli r11, r11, 1024
000ae4  2d054501  dsmadd r10, r10, r20, 0
000ae8  bbdf25fe  bneq r11, r2, -12
000aec  1f351000  addli r10, zero, 11
000af0  1d900700  unlock r15
000af4  7d000500  xsignal r10, 0
000af8  1f551000  addli r10, zero, 13
000afc  db8bffff  j -932
000b00  1f452000  addli r10, zero, 20
000b04  3bbc02fa  bneq r5, zero, -2292
000b08  173afb02  sll.d r[21:22], r[23:24], r15
000b0c  6b5b8f01  load.d r[23:24], 24(r30)
000b10  1735ac02  sll.d r[11:12], r[25:26], r10
000b14  9f521000  addli r5, zero, 13
000b18  1f010040  addli r2, zero, 8192
000b1c  7d900200  xwait r5, 0
000b20  1d000800  lock zero, r16
000b24  9f621000  addli r5, zero, 14
000b28  0b25ab10  add.ul r[11:12], r[23:24], r[11:12]
000b2c  15000000  dma_cfg zero, zero, zero, 0
000b30  15800902  dma_cfg zero, r19, zero, 1
000b34  0b254511  add.ul r[11:12], r[11:12], r[21:22]
000b38  95050004  dma_cfg r11, zero, zero, 2
000b3c  15051706  dma_cfg r10, r14, r1, 3
000b40  15811009  dma_cfg r2, r1, r17, 4
000b44  35000000  dma_run zero
000b48  1d100800  unlock r16
000b4c  dbe8ffff  j -188
000b50  7d000000  xsignal zero, 0
000b54  bbe00200  bneq r5, zero, 56
000b58  9f200000  addli r1, zero, 2
000b5c  7d100000  xwait zero, 0
000b60  7d100000  xwait zero, 0
000b64  7d100000  xwait zero, 0
000b68  7d100000  xwait zero, 0
000b6c  7d100000  xwait zero, 0
000b70  7d100000  xwait zero, 0
000b74  7d100000  xwait zero, 0
000b78  7d100000  xwait zero, 0
000b7c  1d800000  lock zero, r1
000b80  0d000020  ew_cfg zero, zero, zero, 16
000b84  1d900000  unlock r1
000b88  7d400000  xsignal_mode_cfg zero
000b8c  9f8e1e00  addli sp, sp, 8
000b90  00a00300  mfence { lm, sm, gm }
000b94  00100000  exit
000b98  00100000  exit
000b9c  00100000  exit
000ba0  00100000  exit
000ba4  00100000  exit
000ba8  00100000  exit
000bac  00100000  exit
000bb0  00100000  exit
000bb4  00100000  exit
000bb8  00100000  exit
000bbc  00100000  exit
000bc0  00100000  exit
000bc4  00100000  exit
000bc8  00100000  exit
000bcc  00100000  exit
000bd0  00100000  exit
000bd4  00100000  exit
000bd8  00100000  exit
000bdc  00100000  exit
000be0  00100000  exit
000be4  00100000  exit
000be8  00100000  exit
000bec  00100000  exit
000bf0  00100000  exit
000bf4  00100000  exit
000bf8  00100000  exit
000bfc  00100000  exit
000c00  00100000  exit
000c04  00100000  exit
000c08  00100000  exit
000c0c  00100000  exit
000c10  00100000  exit
000c14  00100000  exit
000c18  00100000  exit
000c1c  00100000  exit
000c20  00100000  exit
000c24  00100000  exit
000c28  00100000  exit
000c2c  00100000  exit
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
