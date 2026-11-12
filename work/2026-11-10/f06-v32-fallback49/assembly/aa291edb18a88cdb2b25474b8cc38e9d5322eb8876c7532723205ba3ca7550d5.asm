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
0000b4  9f8e2efe  addli sp, sp, -240
0000b8  9f100000  addli r1, zero, 1
0000bc  00340002  core_id r8
0000c0  1f8f6e01  addli r30, sp, 176
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600400  beq r8, zero, 24
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
000148  1f012000  addli r2, zero, 16
00014c  7d800000  xsignal r1, 0
000150  7d800000  xsignal r1, 0
000154  7d800000  xsignal r1, 0
000158  7d000100  xsignal r2, 0
00015c  7d000100  xsignal r2, 0
000160  7d000100  xsignal r2, 0
000164  9f302000  addli r1, zero, 19
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
0001bc  4b531114  ble.s r2, r1, 10452
0001c0  33110128  sext_int2long r[3:4], r2
0001c4  33920028  sext_int2long r[5:6], r1
0001c8  1f370000  addli r14, zero, 3
0001cc  1f0b0001  addli r22, zero, 128
0001d0  9f0b2000  addli r23, zero, 16
0001d4  1f0c1000  addli r24, zero, 8
0001d8  9f6c0000  addli r25, zero, 6
0001dc  9f6d1000  addli r27, zero, 14
0001e0  2b0e807f  lui r28, 522240
0001e4  2b0dffff  lui r26, 1048560
0001e8  73342ff6  store.d r[3:4], -152(r30)
0001ec  1f71f01f  addli r2, zero, 4095
0001f0  ab014000  lui r3, 1024
0001f4  ab00feff  lui r1, 1048544
0001f8  733c1ff4  store.d r[2:3], -168(r30)
0001fc  ab000900  lui r1, 144
000200  2bf1ff7f  lui r2, 524287
000204  9b900060  ori r1, r1, 1536
000208  9b19f1ff  ori r19, r2, 4095
00020c  2bf17f7f  lui r2, 522239
000210  67461ffe  storeli.w r1, -156(r30)
000214  ab700000  lui r1, 7
000218  1b18f1ff  ori r16, r2, 4095
00021c  9b97f0ff  ori r15, r1, 4095
000220  b3000028  zext_int2long r[2:3], zero
000224  73381ff4  store.d r[2:3], -176(r30)
000228  1f010000  addli r2, zero, 0
00022c  5b080000  j 64
000230  9f6d1000  addli r27, zero, 14
000234  9f102000  addli r1, zero, 17
000238  1f0b0001  addli r22, zero, 128
00023c  9f0b2000  addli r23, zero, 16
000240  1f0c1000  addli r24, zero, 8
000244  9f6c0000  addli r25, zero, 6
000248  7d800d00  xsignal r27, 0
00024c  7d800000  xsignal r1, 0
000250  6b520ff9  load.d r[5:6], -112(r30)
000254  eb508ff6  load.d r[2:3], -152(r30)
000258  27120200  addli.d r[5:6], r[5:6], 1
00025c  93301204  setlt.sl r1, r[5:6], r[2:3]
000260  63416fff  loadli.w r2,  -76(r30)
000264  1f110100  addli r2, r2, 1
000268  b7a00014  beq r1, zero, 10280
00026c  e3005f00  loadli.w r1,  40(r30)
000270  674b2ffe  storeli.w r2, -76(r30)
000274  63414f00  loadli.w r2,  36(r30)
000278  73384ff8  store.d r[5:6], -112(r30)
00027c  1f7a0000  addli r20, zero, 7
000280  8b101230  div.s r1, r4, r1
000284  0b912030  div.s r2, r1, r2
000288  8b126131  div.s r5, r2, r22
00028c  9bb03200  slli r1, r5, 3
000290  0b921b18  sub.s r4, r23, r1
000294  0b138241  min.s r6, r4, r24
000298  0b126138  mod.s r4, r2, r6
00029c  0b121210  add.s r4, r4, r1
0002a0  9f701000  addli r1, zero, 15
0002a4  93804004  setlt.u r1, r1, r4
0002a8  b3030228  zext_int2long r[8:9], r4
0002ac  67474ffe  storeli.w r4, -140(r30)
0002b0  1f521000  addli r4, zero, 13
0002b4  73307ff8  store.d r[8:9], -128(r30)
0002b8  17b44302  sll.d r[9:10], r[8:9], r4
0002bc  3bb00000  bneq r1, zero, 12
0002c0  6b550ff5  load.d r[11:12], -176(r30)
0002c4  db010000  j 12
0002c8  6b558ff5  load.d r[11:12], -168(r30)
0002cc  1705a402  and.d r[11:12], r[9:10], r[11:12]
0002d0  e34a6fff  loadli.w r21,  -76(r30)
0002d4  1f02000f  addli r4, zero, 1920
0002d8  1f160000  addli r12, zero, 1
0002dc  b3080228  zext_int2long r[18:19], r4
0002e0  2b020300  lui r4, 48
0002e4  8b90ea38  mod.s r1, r21, r14
0002e8  733c1ff9  store.d r[18:19], -104(r30)
0002ec  674a1ffe  storeli.w r1, -92(r30)
0002f0  9bb0f000  slli r1, r1, 15
0002f4  8b934010  add.s r7, r1, r4
0002f8  00320002  core_id r4
0002fc  bb4ac200  bneq r4, r12, 688
000300  0b34a418  sub.sl r[9:10], r[9:10], r[11:12]
000304  6b560ff8  load.d r[13:14], -128(r30)
000308  7d100700  xwait r14, 0
00030c  17549403  sra.d r[9:10], r[9:10], r25
000310  1736b603  sll.d r[13:14], r[13:14], r27
000314  0b351441  min.sl r[11:12], r[9:10], r[18:19]
000318  8b388518  sub.sl r[18:19], r[11:12], r[9:10]
00031c  6b540f00  load.d r[9:10], 0(r30)
000320  9f150000  addli r11, zero, 1
000324  8b24c410  add.ul r[10:11], r[9:10], r[13:14]
000328  1f840801  addli r8, r17, 128
00032c  1f260000  addli r12, zero, 2
000330  3f645601  blt.s r12, r21, 280
000334  9f560000  addli r13, zero, 5
000338  1f420000  addli r4, zero, 4
00033c  1d800600  lock zero, r13
000340  15000014  dma_cfg zero, zero, zero, 10
000344  1500b014  dma_cfg zero, zero, r11, 10
000348  1500c014  dma_cfg zero, zero, r12, 10
00034c  1500e014  dma_cfg zero, zero, r14, 10
000350  15004014  dma_cfg zero, zero, r4, 10
000354  1f121000  addli r4, zero, 9
000358  1500d014  dma_cfg zero, zero, r13, 10
00035c  15009015  dma_cfg zero, zero, r25, 10
000360  15004015  dma_cfg zero, zero, r20, 10
000364  15008015  dma_cfg zero, zero, r24, 10
000368  15004014  dma_cfg zero, zero, r4, 10
00036c  1f221000  addli r4, zero, 10
000370  15004014  dma_cfg zero, zero, r4, 10
000374  1f321000  addli r4, zero, 11
000378  15004014  dma_cfg zero, zero, r4, 10
00037c  1f421000  addli r4, zero, 12
000380  15004014  dma_cfg zero, zero, r4, 10
000384  1f521000  addli r4, zero, 13
000388  15004014  dma_cfg zero, zero, r4, 10
00038c  1f721000  addli r4, zero, 15
000390  1500b015  dma_cfg zero, zero, r27, 10
000394  15004014  dma_cfg zero, zero, r4, 10
000398  1f122000  addli r4, zero, 17
00039c  15007015  dma_cfg zero, zero, r23, 10
0003a0  15004014  dma_cfg zero, zero, r4, 10
0003a4  1f222000  addli r4, zero, 18
0003a8  15004014  dma_cfg zero, zero, r4, 10
0003ac  1f322000  addli r4, zero, 19
0003b0  15004014  dma_cfg zero, zero, r4, 10
0003b4  1f422000  addli r4, zero, 20
0003b8  15004014  dma_cfg zero, zero, r4, 10
0003bc  1f522000  addli r4, zero, 21
0003c0  15004014  dma_cfg zero, zero, r4, 10
0003c4  1f622000  addli r4, zero, 22
0003c8  15004014  dma_cfg zero, zero, r4, 10
0003cc  1f722000  addli r4, zero, 23
0003d0  15004014  dma_cfg zero, zero, r4, 10
0003d4  1f023000  addli r4, zero, 24
0003d8  15004014  dma_cfg zero, zero, r4, 10
0003dc  1f123000  addli r4, zero, 25
0003e0  15004014  dma_cfg zero, zero, r4, 10
0003e4  1f223000  addli r4, zero, 26
0003e8  15004014  dma_cfg zero, zero, r4, 10
0003ec  1f323000  addli r4, zero, 27
0003f0  15004014  dma_cfg zero, zero, r4, 10
0003f4  1f423000  addli r4, zero, 28
0003f8  15004014  dma_cfg zero, zero, r4, 10
0003fc  1f523000  addli r4, zero, 29
000400  15004014  dma_cfg zero, zero, r4, 10
000404  1f623000  addli r4, zero, 30
000408  15004014  dma_cfg zero, zero, r4, 10
00040c  1f723000  addli r4, zero, 31
000410  15004014  dma_cfg zero, zero, r4, 10
000414  1f028000  addli r4, zero, 64
000418  95850500  dma_cfg r11, r11, zero, 0
00041c  95050002  dma_cfg r11, zero, zero, 1
000420  15000004  dma_cfg zero, zero, zero, 2
000424  95034006  dma_cfg r7, zero, r4, 3
000428  1f020002  addli r4, zero, 256
00042c  150bc008  dma_cfg r22, zero, r12, 4
000430  1502600b  dma_cfg r4, zero, r22, 5
000434  15000010  dma_cfg zero, zero, zero, 8
000438  35000000  dma_run zero
00043c  1500b00a  dma_cfg zero, zero, r11, 5
000440  15000010  dma_cfg zero, zero, zero, 8
000444  1d900600  unlock r13
000448  2b020300  lui r4, 48
00044c  9f460000  addli r13, zero, 4
000450  e70a0ffe  storeli.w zero, -88(r30)
000454  9f088000  addli r17, zero, 64
000458  1f090002  addli r18, zero, 256
00045c  1b120204  ori r4, r4, 64
000460  1d800600  lock zero, r13
000464  95850500  dma_cfg r11, r11, zero, 0
000468  0b924010  add.s r4, r1, r4
00046c  15000504  dma_cfg zero, r10, zero, 2
000470  15821407  dma_cfg r4, r9, r17, 3
000474  1f550000  addli r10, zero, 5
000478  9f740000  addli r9, zero, 7
00047c  1f121000  addli r4, zero, 9
000480  158bc808  dma_cfg r22, r17, r12, 4
000484  15098b0a  dma_cfg r18, r22, r8, 5
000488  15000010  dma_cfg zero, zero, zero, 8
00048c  35000000  dma_run zero
000490  1500b00a  dma_cfg zero, zero, r11, 5
000494  15000010  dma_cfg zero, zero, zero, 8
000498  1d900600  unlock r13
00049c  1d000500  lock zero, r10
0004a0  15000014  dma_cfg zero, zero, zero, 10
0004a4  1500b014  dma_cfg zero, zero, r11, 10
0004a8  1500c014  dma_cfg zero, zero, r12, 10
0004ac  1500e014  dma_cfg zero, zero, r14, 10
0004b0  1500d014  dma_cfg zero, zero, r13, 10
0004b4  1500a014  dma_cfg zero, zero, r10, 10
0004b8  15009015  dma_cfg zero, zero, r25, 10
0004bc  15009014  dma_cfg zero, zero, r9, 10
0004c0  15008015  dma_cfg zero, zero, r24, 10
0004c4  15004014  dma_cfg zero, zero, r4, 10
0004c8  1f221000  addli r4, zero, 10
0004cc  15004014  dma_cfg zero, zero, r4, 10
0004d0  1f321000  addli r4, zero, 11
0004d4  15004014  dma_cfg zero, zero, r4, 10
0004d8  1f421000  addli r4, zero, 12
0004dc  15004014  dma_cfg zero, zero, r4, 10
0004e0  1f521000  addli r4, zero, 13
0004e4  15004014  dma_cfg zero, zero, r4, 10
0004e8  1f721000  addli r4, zero, 15
0004ec  1500b015  dma_cfg zero, zero, r27, 10
0004f0  15004014  dma_cfg zero, zero, r4, 10
0004f4  1f122000  addli r4, zero, 17
0004f8  15007015  dma_cfg zero, zero, r23, 10
0004fc  15004014  dma_cfg zero, zero, r4, 10
000500  1f222000  addli r4, zero, 18
000504  15004014  dma_cfg zero, zero, r4, 10
000508  1f322000  addli r4, zero, 19
00050c  15004014  dma_cfg zero, zero, r4, 10
000510  1f422000  addli r4, zero, 20
000514  15004014  dma_cfg zero, zero, r4, 10
000518  1f522000  addli r4, zero, 21
00051c  15004014  dma_cfg zero, zero, r4, 10
000520  1f622000  addli r4, zero, 22
000524  15004014  dma_cfg zero, zero, r4, 10
000528  1f722000  addli r4, zero, 23
00052c  15004014  dma_cfg zero, zero, r4, 10
000530  1f023000  addli r4, zero, 24
000534  15004014  dma_cfg zero, zero, r4, 10
000538  1f123000  addli r4, zero, 25
00053c  15004014  dma_cfg zero, zero, r4, 10
000540  1f223000  addli r4, zero, 26
000544  15004014  dma_cfg zero, zero, r4, 10
000548  1f323000  addli r4, zero, 27
00054c  15004014  dma_cfg zero, zero, r4, 10
000550  1f423000  addli r4, zero, 28
000554  15004014  dma_cfg zero, zero, r4, 10
000558  1f523000  addli r4, zero, 29
00055c  15004014  dma_cfg zero, zero, r4, 10
000560  1f623000  addli r4, zero, 30
000564  15004014  dma_cfg zero, zero, r4, 10
000568  1f723000  addli r4, zero, 31
00056c  15004014  dma_cfg zero, zero, r4, 10
000570  95850500  dma_cfg r11, r11, zero, 0
000574  95050002  dma_cfg r11, zero, zero, 1
000578  15000004  dma_cfg zero, zero, zero, 2
00057c  95031007  dma_cfg r7, zero, r17, 3
000580  150bc008  dma_cfg r22, zero, r12, 4
000584  1509800a  dma_cfg r18, zero, r8, 5
000588  00340002  core_id r8
00058c  15000010  dma_cfg zero, zero, zero, 8
000590  35000000  dma_run zero
000594  1500b00a  dma_cfg zero, zero, r11, 5
000598  15000010  dma_cfg zero, zero, zero, 8
00059c  1d100500  unlock r10
0005a0  7d000600  xsignal r12, 0
0005a4  1f250000  addli r10, zero, 2
0005a8  5b0c0000  j 96
0005ac  00340002  core_id r8
0005b0  1f250000  addli r10, zero, 2
0005b4  3b21a400  bneq r8, r10, 72
0005b8  1f520000  addli r4, zero, 5
0005bc  7d100500  xwait r10, 0
0005c0  7d100200  xwait r4, 0
0005c4  1d000000  lock zero, zero
0005c8  1f028000  addli r4, zero, 64
0005cc  01050000  ds_cfg r10, zero, 0
0005d0  01020002  ds_cfg r4, zero, 1
0005d4  0102001c  ds_cfg r4, zero, 14
0005d8  010b001a  ds_cfg r22, zero, 13
0005dc  a1904302  shuffle_batch r1, r7, r4, 1
0005e0  1f120000  addli r4, zero, 1
0005e4  1d100000  unlock zero
0005e8  7d000700  xsignal r14, 0
0005ec  e70a4ffe  storeli.w r4, -88(r30)
0005f0  1f420000  addli r4, zero, 4
0005f4  7d000200  xsignal r4, 0
0005f8  5b010000  j 8
0005fc  e70a0ffe  storeli.w zero, -88(r30)
000600  9f740000  addli r9, zero, 7
000604  9f150000  addli r11, zero, 1
000608  1bb27200  slli r4, r5, 7
00060c  0b114118  sub.s r2, r2, r4
000610  0b116130  div.s r2, r2, r6
000614  33020128  zext_int2long r[5:6], r2
000618  e7082ffe  storeli.w r2, -120(r30)
00061c  63414fff  loadli.w r2,  -92(r30)
000620  17329202  sll.d r[5:6], r[5:6], r9
000624  1b3a0101  slli r20, r2, 16
000628  2b810400  lui r2, 72
00062c  1733b202  sll.d r[7:8], r[5:6], r11
000630  0b912010  add.s r2, r1, r2
000634  733c6ff6  store.d r[7:8], -136(r30)
000638  bb509403  bneq r8, r25, 1076
00063c  6b528f00  load.d r[5:6], 8(r30)
000640  7d900400  xwait r9, 0
000644  0b226210  add.ul r[5:6], r[5:6], r[7:8]
000648  63436fff  loadli.w r6,  -76(r30)
00064c  3f646500  blt.s r10, r6, 280
000650  9f530000  addli r7, zero, 5
000654  1f460000  addli r12, zero, 4
000658  1f131000  addli r6, zero, 9
00065c  1d800300  lock zero, r7
000660  15000014  dma_cfg zero, zero, zero, 10
000664  1500b014  dma_cfg zero, zero, r11, 10
000668  1500a014  dma_cfg zero, zero, r10, 10
00066c  1500e014  dma_cfg zero, zero, r14, 10
000670  1500c014  dma_cfg zero, zero, r12, 10
000674  15007014  dma_cfg zero, zero, r7, 10
000678  15009015  dma_cfg zero, zero, r25, 10
00067c  15009014  dma_cfg zero, zero, r9, 10
000680  15008015  dma_cfg zero, zero, r24, 10
000684  15006014  dma_cfg zero, zero, r6, 10
000688  1f231000  addli r6, zero, 10
00068c  15006014  dma_cfg zero, zero, r6, 10
000690  1f331000  addli r6, zero, 11
000694  15006014  dma_cfg zero, zero, r6, 10
000698  1f431000  addli r6, zero, 12
00069c  15006014  dma_cfg zero, zero, r6, 10
0006a0  1f531000  addli r6, zero, 13
0006a4  15006014  dma_cfg zero, zero, r6, 10
0006a8  1f731000  addli r6, zero, 15
0006ac  1500b015  dma_cfg zero, zero, r27, 10
0006b0  15006014  dma_cfg zero, zero, r6, 10
0006b4  1f132000  addli r6, zero, 17
0006b8  15007015  dma_cfg zero, zero, r23, 10
0006bc  15006014  dma_cfg zero, zero, r6, 10
0006c0  1f232000  addli r6, zero, 18
0006c4  15006014  dma_cfg zero, zero, r6, 10
0006c8  1f332000  addli r6, zero, 19
0006cc  15006014  dma_cfg zero, zero, r6, 10
0006d0  1f432000  addli r6, zero, 20
0006d4  15006014  dma_cfg zero, zero, r6, 10
0006d8  1f532000  addli r6, zero, 21
0006dc  15006014  dma_cfg zero, zero, r6, 10
0006e0  1f632000  addli r6, zero, 22
0006e4  15006014  dma_cfg zero, zero, r6, 10
0006e8  1f732000  addli r6, zero, 23
0006ec  15006014  dma_cfg zero, zero, r6, 10
0006f0  1f033000  addli r6, zero, 24
0006f4  15006014  dma_cfg zero, zero, r6, 10
0006f8  1f133000  addli r6, zero, 25
0006fc  15006014  dma_cfg zero, zero, r6, 10
000700  1f233000  addli r6, zero, 26
000704  15006014  dma_cfg zero, zero, r6, 10
000708  1f333000  addli r6, zero, 27
00070c  15006014  dma_cfg zero, zero, r6, 10
000710  1f433000  addli r6, zero, 28
000714  15006014  dma_cfg zero, zero, r6, 10
000718  1f533000  addli r6, zero, 29
00071c  15006014  dma_cfg zero, zero, r6, 10
000720  1f633000  addli r6, zero, 30
000724  15006014  dma_cfg zero, zero, r6, 10
000728  1f733000  addli r6, zero, 31
00072c  15006014  dma_cfg zero, zero, r6, 10
000730  1f038000  addli r6, zero, 64
000734  95850500  dma_cfg r11, r11, zero, 0
000738  95050002  dma_cfg r11, zero, zero, 1
00073c  15000004  dma_cfg zero, zero, zero, 2
000740  15016006  dma_cfg r2, zero, r6, 3
000744  150bc008  dma_cfg r22, zero, r12, 4
000748  1f060004  addli r12, zero, 512
00074c  1506600a  dma_cfg r12, zero, r6, 5
000750  15000010  dma_cfg zero, zero, zero, 8
000754  35000000  dma_run zero
000758  1500b00a  dma_cfg zero, zero, r11, 5
00075c  15000010  dma_cfg zero, zero, zero, 8
000760  1d900300  unlock r7
000764  2b830400  lui r6, 72
000768  e74a0ffe  storeli.w zero, -84(r30)
00076c  670b0ffe  storeli.w zero, -80(r30)
000770  9f038000  addli r7, zero, 64
000774  1b130304  ori r6, r6, 64
000778  8b906010  add.s r1, r1, r6
00077c  1f430000  addli r6, zero, 4
000780  1d000300  lock zero, r6
000784  95850500  dma_cfg r11, r11, zero, 0
000788  15800204  dma_cfg zero, r5, zero, 2
00078c  95007206  dma_cfg r1, r4, r7, 3
000790  9f020004  addli r5, zero, 512
000794  9f000020  addli r1, zero, 4096
000798  1f520000  addli r4, zero, 5
00079c  158b6308  dma_cfg r22, r7, r6, 4
0007a0  9582700a  dma_cfg r5, r1, r7, 5
0007a4  9f101000  addli r1, zero, 9
0007a8  15000010  dma_cfg zero, zero, zero, 8
0007ac  35000000  dma_run zero
0007b0  1500b00a  dma_cfg zero, zero, r11, 5
0007b4  15000010  dma_cfg zero, zero, zero, 8
0007b8  1d100300  unlock r6
0007bc  1d000200  lock zero, r4
0007c0  15000014  dma_cfg zero, zero, zero, 10
0007c4  1500b014  dma_cfg zero, zero, r11, 10
0007c8  1500a014  dma_cfg zero, zero, r10, 10
0007cc  1500e014  dma_cfg zero, zero, r14, 10
0007d0  15006014  dma_cfg zero, zero, r6, 10
0007d4  15004014  dma_cfg zero, zero, r4, 10
0007d8  15009015  dma_cfg zero, zero, r25, 10
0007dc  15009014  dma_cfg zero, zero, r9, 10
0007e0  15008015  dma_cfg zero, zero, r24, 10
0007e4  15001014  dma_cfg zero, zero, r1, 10
0007e8  9f201000  addli r1, zero, 10
0007ec  15001014  dma_cfg zero, zero, r1, 10
0007f0  9f301000  addli r1, zero, 11
0007f4  15001014  dma_cfg zero, zero, r1, 10
0007f8  9f401000  addli r1, zero, 12
0007fc  15001014  dma_cfg zero, zero, r1, 10
000800  9f501000  addli r1, zero, 13
000804  15001014  dma_cfg zero, zero, r1, 10
000808  9f701000  addli r1, zero, 15
00080c  1500b015  dma_cfg zero, zero, r27, 10
000810  15001014  dma_cfg zero, zero, r1, 10
000814  9f102000  addli r1, zero, 17
000818  15007015  dma_cfg zero, zero, r23, 10
00081c  15001014  dma_cfg zero, zero, r1, 10
000820  9f202000  addli r1, zero, 18
000824  15001014  dma_cfg zero, zero, r1, 10
000828  9f302000  addli r1, zero, 19
00082c  15001014  dma_cfg zero, zero, r1, 10
000830  9f402000  addli r1, zero, 20
000834  15001014  dma_cfg zero, zero, r1, 10
000838  9f502000  addli r1, zero, 21
00083c  15001014  dma_cfg zero, zero, r1, 10
000840  9f602000  addli r1, zero, 22
000844  15001014  dma_cfg zero, zero, r1, 10
000848  9f702000  addli r1, zero, 23
00084c  15001014  dma_cfg zero, zero, r1, 10
000850  9f003000  addli r1, zero, 24
000854  15001014  dma_cfg zero, zero, r1, 10
000858  9f103000  addli r1, zero, 25
00085c  15001014  dma_cfg zero, zero, r1, 10
000860  9f203000  addli r1, zero, 26
000864  15001014  dma_cfg zero, zero, r1, 10
000868  9f303000  addli r1, zero, 27
00086c  15001014  dma_cfg zero, zero, r1, 10
000870  9f403000  addli r1, zero, 28
000874  15001014  dma_cfg zero, zero, r1, 10
000878  9f503000  addli r1, zero, 29
00087c  15001014  dma_cfg zero, zero, r1, 10
000880  9f603000  addli r1, zero, 30
000884  15001014  dma_cfg zero, zero, r1, 10
000888  9f703000  addli r1, zero, 31
00088c  15001014  dma_cfg zero, zero, r1, 10
000890  95850500  dma_cfg r11, r11, zero, 0
000894  95050002  dma_cfg r11, zero, zero, 1
000898  15000004  dma_cfg zero, zero, zero, 2
00089c  15017006  dma_cfg r2, zero, r7, 3
0008a0  150b6008  dma_cfg r22, zero, r6, 4
0008a4  9502700a  dma_cfg r5, zero, r7, 5
0008a8  15000010  dma_cfg zero, zero, zero, 8
0008ac  35000000  dma_run zero
0008b0  1500b00a  dma_cfg zero, zero, r11, 5
0008b4  15000010  dma_cfg zero, zero, zero, 8
0008b8  1d100200  unlock r4
0008bc  7d800c00  xsignal r25, 0
0008c0  3b40e400  bneq r8, r14, 16
0008c4  9f201000  addli r1, zero, 10
0008c8  7d900000  xwait r1, 0
0008cc  7d900d00  xwait r27, 0
0008d0  e340cffe  loadli.w r1,  -156(r30)
0008d4  3d000000  xfence
0008d8  33050b28  zext_int2long r[11:12], r22
0008dc  00a00300  mfence { lm, sm, gm }
0008e0  8b1d1a10  add.s r27, r20, r1
0008e4  9f70f001  addli r1, zero, 255
0008e8  80a20004  csr_set csr5, r1
0008ec  9f701000  addli r1, zero, 15
0008f0  b3800028  zext_int2long r[2:3], r1
0008f4  733c1ffa  store.d r[2:3], -72(r30)
0008f8  00e00200  sync_core
0008fc  3b370400  bneq r8, zero, 460
000900  b3000028  zext_int2long r[2:3], zero
000904  3d000000  xfence
000908  00a00300  mfence { lm, sm, gm }
00090c  27820000  addli.d r[5:6], r[2:3], 0
000910  73381ffe  store.d r[2:3], -16(r30)
000914  db030000  j 28
000918  eb508ffb  load.d r[2:3], -72(r30)
00091c  6b528fff  load.d r[5:6], -8(r30)
000920  9f740000  addli r9, zero, 7
000924  93201204  setlt.ul r1, r[5:6], r[2:3]
000928  27120200  addli.d r[5:6], r[5:6], 1
00092c  37d60000  beq r1, zero, 404
000930  eb560fff  load.d r[14:15], -16(r30)
000934  97339202  sll.d r[8:9], r[5:6], r9
000938  733c4ffe  store.d r[5:6], -8(r30)
00093c  db040000  j 36
000940  a7c60600  addli.d r[14:15], r[14:15], 4
000944  0b921d11  add.s r4, r27, r17
000948  13a1a602  setneq.d r2, r[14:15], r[11:12]
00094c  73669200  stores.w r9, 12(r4)
000950  73645201  stores.w r21, 8(r4)
000954  73627201  stores.w r23, 4(r4)
000958  73601200  stores.w r1, 0(r4)
00095c  b77e01fe  beq r2, zero, -68
000960  8ba07610  add.ul r[2:3], r[14:15], r[8:9]
000964  9bb82000  slli r17, r1, 2
000968  8b101a11  add.s r1, r20, r17
00096c  6fc2c000  loads.w r4, 12(r1)
000970  efcc0000  loads.w r25, 0(r1)
000974  6fcc4000  loads.w r24, 4(r1)
000978  6fcb8000  loads.w r22, 8(r1)
00097c  17093201  and r18, r4, r19
000980  93002e05  setlt.u r1, r28, r18
000984  3bb00000  bneq r1, zero, 12
000988  9f040200  addli r9, r4, 0
00098c  5b010000  j 8
000990  97143200  or r9, r4, r3
000994  17063b01  and r12, r22, r19
000998  9300ce04  setlt.u r1, r28, r12
00099c  3bb00000  bneq r1, zero, 12
0009a0  9f0a0b00  addli r21, r22, 0
0009a4  5b010000  j 8
0009a8  971a3b00  or r21, r22, r3
0009ac  17013c01  and r2, r24, r19
0009b0  93002e04  setlt.u r1, r28, r2
0009b4  3bb00000  bneq r1, zero, 12
0009b8  9f0b0c00  addli r23, r24, 0
0009bc  5b010000  j 8
0009c0  971b3c00  or r23, r24, r3
0009c4  97823c01  and r5, r25, r19
0009c8  93005e04  setlt.u r1, r28, r5
0009cc  3bd00000  bneq r1, zero, 20
0009d0  9f800c00  addli r1, r25, 0
0009d4  93025804  setlt.u r5, r16, r5
0009d8  37d00200  beq r5, zero, 20
0009dc  db040000  j 36
0009e0  97903c00  or r1, r25, r3
0009e4  93025804  setlt.u r5, r16, r5
0009e8  3be00200  bneq r5, zero, 24
0009ec  9bc00c01  srli r1, r25, 16
0009f0  9b801000  andi r1, r1, 1
0009f4  8b901c10  add.s r1, r25, r1
0009f8  8b90f010  add.s r1, r1, r15
0009fc  9780a001  and r1, r1, r26
000a00  13012804  setlt.u r2, r16, r2
000a04  bb300100  bneq r2, zero, 44
000a08  1b410c01  srli r2, r24, 16
000a0c  1b011100  andi r2, r2, 1
000a10  0b112c10  add.s r2, r24, r2
000a14  0b11f110  add.s r2, r2, r15
000a18  970ba101  and r23, r2, r26
000a1c  1301c804  setlt.u r2, r16, r12
000a20  37600100  beq r2, zero, 24
000a24  13012805  setlt.u r2, r16, r18
000a28  3b6c01fe  bneq r2, zero, -232
000a2c  5b050000  j 40
000a30  1301c804  setlt.u r2, r16, r12
000a34  bb4f01fe  bneq r2, zero, -16
000a38  1b410b01  srli r2, r22, 16
000a3c  1b011100  andi r2, r2, 1
000a40  0b112b10  add.s r2, r22, r2
000a44  0b11f110  add.s r2, r2, r15
000a48  970aa101  and r21, r2, r26
000a4c  13012805  setlt.u r2, r16, r18
000a50  bb4b01fe  bneq r2, zero, -272
000a54  1b410201  srli r2, r4, 16
000a58  1b011100  andi r2, r2, 1
000a5c  0b112210  add.s r2, r4, r2
000a60  0b11f110  add.s r2, r2, r15
000a64  9704a101  and r9, r2, r26
000a68  5bdbffff  j -296
000a6c  9f430000  addli r7, zero, 4
000a70  374e740e  beq r8, r7, 8080
000a74  9f028000  addli r5, zero, 64
000a78  3b209410  bneq r8, r9, 8200
000a7c  1f121000  addli r4, zero, 9
000a80  e74a0ffe  storeli.w zero, -84(r30)
000a84  7d900c00  xwait r25, 0
000a88  7d100200  xwait r4, 0
000a8c  1d000000  lock zero, zero
000a90  01050000  ds_cfg r10, zero, 0
000a94  010b0002  ds_cfg r22, zero, 1
000a98  8102001c  ds_cfg r5, zero, 14
000a9c  010b001a  ds_cfg r22, zero, 13
000aa0  c1005104  shuffle_coa r1, r2, r5, 2
000aa4  9f100000  addli r1, zero, 1
000aa8  1d100000  unlock zero
000aac  7d800400  xsignal r9, 0
000ab0  670b1ffe  storeli.w r1, -80(r30)
000ab4  7d000c00  xsignal r24, 0
000ab8  3738e4fe  beq r8, r14, -500
000abc  dbc2ffff  j -492
000ac0  00340002  core_id r8
000ac4  00200100  mfence { sm }
000ac8  9f703000  addli r1, zero, 31
000acc  b3800028  zext_int2long r[2:3], r1
000ad0  73341ffc  store.d r[2:3], -56(r30)
000ad4  9f100000  addli r1, zero, 1
000ad8  bb551400  bneq r8, r1, 372
000adc  9f002000  addli r1, zero, 16
000ae0  3d000000  xfence
000ae4  00a00300  mfence { lm, sm, gm }
000ae8  33820028  zext_int2long r[5:6], r1
000aec  db030000  j 28
000af0  eb508ffc  load.d r[2:3], -56(r30)
000af4  6b528fff  load.d r[5:6], -8(r30)
000af8  9f740000  addli r9, zero, 7
000afc  93201204  setlt.ul r1, r[5:6], r[2:3]
000b00  27120200  addli.d r[5:6], r[5:6], 1
000b04  37850000  beq r1, zero, 320
000b08  97339202  sll.d r[8:9], r[5:6], r9
000b0c  b3060028  zext_int2long r[14:15], zero
000b10  733c4ffe  store.d r[5:6], -8(r30)
000b14  db040000  j 36
000b18  a7c60600  addli.d r[14:15], r[14:15], 4
000b1c  0b921d11  add.s r4, r27, r17
000b20  93a0a602  setneq.d r1, r[14:15], r[11:12]
000b24  73669200  stores.w r9, 12(r4)
000b28  73645201  stores.w r21, 8(r4)
000b2c  73627201  stores.w r23, 4(r4)
000b30  73602200  stores.w r2, 0(r4)
000b34  b7fe00fe  beq r1, zero, -68
000b38  8ba07610  add.ul r[2:3], r[14:15], r[8:9]
000b3c  9bb82000  slli r17, r1, 2
000b40  0b111a11  add.s r2, r20, r17
000b44  6f42c100  loads.w r4, 12(r2)
000b48  6f4c0100  loads.w r24, 0(r2)
000b4c  ef404100  loads.w r1, 4(r2)
000b50  6f4b8100  loads.w r22, 8(r2)
000b54  17093201  and r18, r4, r19
000b58  13012e05  setlt.u r2, r28, r18
000b5c  3b300100  bneq r2, zero, 12
000b60  9f040200  addli r9, r4, 0
000b64  5b010000  j 8
000b68  97143200  or r9, r4, r3
000b6c  17063b01  and r12, r22, r19
000b70  1301ce04  setlt.u r2, r28, r12
000b74  3b300100  bneq r2, zero, 12
000b78  9f0a0b00  addli r21, r22, 0
000b7c  5b010000  j 8
000b80  971a3b00  or r21, r22, r3
000b84  978c3001  and r25, r1, r19
000b88  13019e05  setlt.u r2, r28, r25
000b8c  3b300100  bneq r2, zero, 12
000b90  9f8b0000  addli r23, r1, 0
000b94  5b010000  j 8
000b98  979b3000  or r23, r1, r3
000b9c  97023c01  and r5, r24, r19
000ba0  13015e04  setlt.u r2, r28, r5
000ba4  3b500100  bneq r2, zero, 20
000ba8  1f010c00  addli r2, r24, 0
000bac  93025804  setlt.u r5, r16, r5
000bb0  37d00200  beq r5, zero, 20
000bb4  db040000  j 36
000bb8  17113c00  or r2, r24, r3
000bbc  93025804  setlt.u r5, r16, r5
000bc0  3be00200  bneq r5, zero, 24
000bc4  1b410c01  srli r2, r24, 16
000bc8  1b011100  andi r2, r2, 1
000bcc  0b112c10  add.s r2, r24, r2
000bd0  0b11f110  add.s r2, r2, r15
000bd4  1701a101  and r2, r2, r26
000bd8  93029805  setlt.u r5, r16, r25
000bdc  bbb00200  bneq r5, zero, 44
000be0  9bc20001  srli r5, r1, 16
000be4  9b821200  andi r5, r5, 1
000be8  8b905010  add.s r1, r1, r5
000bec  8b90f010  add.s r1, r1, r15
000bf0  978ba001  and r23, r1, r26
000bf4  9300c804  setlt.u r1, r16, r12
000bf8  37e00000  beq r1, zero, 24
000bfc  93002805  setlt.u r1, r16, r18
000c00  3bec00fe  bneq r1, zero, -232
000c04  5b050000  j 40
000c08  9300c804  setlt.u r1, r16, r12
000c0c  bbcf00fe  bneq r1, zero, -16
000c10  9b400b01  srli r1, r22, 16
000c14  9b801000  andi r1, r1, 1
000c18  8b101b10  add.s r1, r22, r1
000c1c  8b90f010  add.s r1, r1, r15
000c20  978aa001  and r21, r1, r26
000c24  93002805  setlt.u r1, r16, r18
000c28  bbcb00fe  bneq r1, zero, -272
000c2c  9b400201  srli r1, r4, 16
000c30  9b801000  andi r1, r1, 1
000c34  8b101210  add.s r1, r4, r1
000c38  8b90f010  add.s r1, r1, r15
000c3c  9784a001  and r9, r1, r26
000c40  5bdbffff  j -296
000c44  00340002  core_id r8
000c48  00200100  mfence { sm }
000c4c  9f705000  addli r1, zero, 47
000c50  b3800028  zext_int2long r[2:3], r1
000c54  73381ffc  store.d r[2:3], -48(r30)
000c58  e3005fff  loadli.w r1,  -88(r30)
000c5c  b7d50000  beq r1, zero, 372
000c60  9f004000  addli r1, zero, 32
000c64  3d000000  xfence
000c68  00a00300  mfence { lm, sm, gm }
000c6c  33820028  zext_int2long r[5:6], r1
000c70  db030000  j 28
000c74  eb500ffd  load.d r[2:3], -48(r30)
000c78  6b528fff  load.d r[5:6], -8(r30)
000c7c  9f740000  addli r9, zero, 7
000c80  93201204  setlt.ul r1, r[5:6], r[2:3]
000c84  27120200  addli.d r[5:6], r[5:6], 1
000c88  37850000  beq r1, zero, 320
000c8c  97369202  sll.d r[14:15], r[5:6], r9
000c90  b3080028  zext_int2long r[18:19], zero
000c94  733c4ffe  store.d r[5:6], -8(r30)
000c98  db040000  j 36
000c9c  a7c80800  addli.d r[18:19], r[18:19], 4
000ca0  0b926d11  add.s r4, r27, r22
000ca4  93a0a802  setneq.d r1, r[18:19], r[11:12]
000ca8  73669200  stores.w r9, 12(r4)
000cac  73646200  stores.w r6, 8(r4)
000cb0  73627201  stores.w r23, 4(r4)
000cb4  73602200  stores.w r2, 0(r4)
000cb8  b7fe00fe  beq r1, zero, -68
000cbc  8ba0d810  add.ul r[2:3], r[18:19], r[14:15]
000cc0  1bbb2000  slli r22, r1, 2
000cc4  0b116a11  add.s r2, r20, r22
000cc8  6f42c100  loads.w r4, 12(r2)
000ccc  6f4c0100  loads.w r24, 0(r2)
000cd0  ef404100  loads.w r1, 4(r2)
000cd4  ef4a8100  loads.w r21, 8(r2)
000cd8  97023201  and r5, r4, r19
000cdc  13015e04  setlt.u r2, r28, r5
000ce0  3b300100  bneq r2, zero, 12
000ce4  9f040200  addli r9, r4, 0
000ce8  5b010000  j 8
000cec  97143200  or r9, r4, r3
000cf0  17863a01  and r12, r21, r19
000cf4  1301ce04  setlt.u r2, r28, r12
000cf8  3b300100  bneq r2, zero, 12
000cfc  1f830a00  addli r6, r21, 0
000d00  5b010000  j 8
000d04  17933a00  or r6, r21, r3
000d08  978c3001  and r25, r1, r19
000d0c  13019e05  setlt.u r2, r28, r25
000d10  3b300100  bneq r2, zero, 12
000d14  9f8b0000  addli r23, r1, 0
000d18  5b010000  j 8
000d1c  979b3000  or r23, r1, r3
000d20  97033c01  and r7, r24, r19
000d24  13017e04  setlt.u r2, r28, r7
000d28  3b500100  bneq r2, zero, 20
000d2c  1f010c00  addli r2, r24, 0
000d30  93037804  setlt.u r7, r16, r7
000d34  37d00300  beq r7, zero, 20
000d38  db040000  j 36
000d3c  17113c00  or r2, r24, r3
000d40  93037804  setlt.u r7, r16, r7
000d44  3be00300  bneq r7, zero, 24
000d48  1b410c01  srli r2, r24, 16
000d4c  1b011100  andi r2, r2, 1
000d50  0b112c10  add.s r2, r24, r2
000d54  0b11f110  add.s r2, r2, r15
000d58  1701a101  and r2, r2, r26
000d5c  93039805  setlt.u r7, r16, r25
000d60  bbb00300  bneq r7, zero, 44
000d64  9bc30001  srli r7, r1, 16
000d68  9b831300  andi r7, r7, 1
000d6c  8b907010  add.s r1, r1, r7
000d70  8b90f010  add.s r1, r1, r15
000d74  978ba001  and r23, r1, r26
000d78  9300c804  setlt.u r1, r16, r12
000d7c  37e00000  beq r1, zero, 24
000d80  93005804  setlt.u r1, r16, r5
000d84  3bec00fe  bneq r1, zero, -232
000d88  5b050000  j 40
000d8c  9300c804  setlt.u r1, r16, r12
000d90  bbcf00fe  bneq r1, zero, -16
000d94  9bc00a01  srli r1, r21, 16
000d98  9b801000  andi r1, r1, 1
000d9c  8b901a10  add.s r1, r21, r1
000da0  8b90f010  add.s r1, r1, r15
000da4  1783a001  and r6, r1, r26
000da8  93005804  setlt.u r1, r16, r5
000dac  bbcb00fe  bneq r1, zero, -272
000db0  9b400201  srli r1, r4, 16
000db4  9b801000  andi r1, r1, 1
000db8  8b101210  add.s r1, r4, r1
000dbc  8b90f010  add.s r1, r1, r15
000dc0  9784a001  and r9, r1, r26
000dc4  5bdbffff  j -296
000dc8  00340002  core_id r8
000dcc  00200100  mfence { sm }
000dd0  9f707000  addli r1, zero, 63
000dd4  b3800028  zext_int2long r[2:3], r1
000dd8  733c1ffc  store.d r[2:3], -40(r30)
000ddc  9f300000  addli r1, zero, 3
000de0  bb551400  bneq r8, r1, 372
000de4  9f006000  addli r1, zero, 48
000de8  3d000000  xfence
000dec  00a00300  mfence { lm, sm, gm }
000df0  33820028  zext_int2long r[5:6], r1
000df4  db030000  j 28
000df8  eb508ffd  load.d r[2:3], -40(r30)
000dfc  6b528fff  load.d r[5:6], -8(r30)
000e00  9f740000  addli r9, zero, 7
000e04  93201204  setlt.ul r1, r[5:6], r[2:3]
000e08  27120200  addli.d r[5:6], r[5:6], 1
000e0c  37850000  beq r1, zero, 320
000e10  97369202  sll.d r[14:15], r[5:6], r9
000e14  330b0028  zext_int2long r[23:24], zero
000e18  733c4ffe  store.d r[5:6], -8(r30)
000e1c  db040000  j 36
000e20  274b0b00  addli.d r[23:24], r[23:24], 4
000e24  0b928d11  add.s r4, r27, r24
000e28  9320ab02  setneq.d r1, r[23:24], r[11:12]
000e2c  73669200  stores.w r9, 12(r4)
000e30  73646200  stores.w r6, 8(r4)
000e34  73622201  stores.w r18, 4(r4)
000e38  73602200  stores.w r2, 0(r4)
000e3c  b7fe00fe  beq r1, zero, -68
000e40  8b20db10  add.ul r[2:3], r[23:24], r[14:15]
000e44  1bbc2000  slli r24, r1, 2
000e48  0b118a11  add.s r2, r20, r24
000e4c  6f42c100  loads.w r4, 12(r2)
000e50  ef4a0100  loads.w r21, 0(r2)
000e54  ef404100  loads.w r1, 4(r2)
000e58  ef488100  loads.w r17, 8(r2)
000e5c  97023201  and r5, r4, r19
000e60  13015e04  setlt.u r2, r28, r5
000e64  3b300100  bneq r2, zero, 12
000e68  9f040200  addli r9, r4, 0
000e6c  5b010000  j 8
000e70  97143200  or r9, r4, r3
000e74  17863801  and r12, r17, r19
000e78  1301ce04  setlt.u r2, r28, r12
000e7c  3b300100  bneq r2, zero, 12
000e80  1f830800  addli r6, r17, 0
000e84  5b010000  j 8
000e88  17933800  or r6, r17, r3
000e8c  978c3001  and r25, r1, r19
000e90  13019e05  setlt.u r2, r28, r25
000e94  3b300100  bneq r2, zero, 12
000e98  1f890000  addli r18, r1, 0
000e9c  5b010000  j 8
000ea0  17993000  or r18, r1, r3
000ea4  97833a01  and r7, r21, r19
000ea8  13017e04  setlt.u r2, r28, r7
000eac  3b500100  bneq r2, zero, 20
000eb0  1f810a00  addli r2, r21, 0
000eb4  93037804  setlt.u r7, r16, r7
000eb8  37d00300  beq r7, zero, 20
000ebc  db040000  j 36
000ec0  17913a00  or r2, r21, r3
000ec4  93037804  setlt.u r7, r16, r7
000ec8  3be00300  bneq r7, zero, 24
000ecc  1bc10a01  srli r2, r21, 16
000ed0  1b011100  andi r2, r2, 1
000ed4  0b912a10  add.s r2, r21, r2
000ed8  0b11f110  add.s r2, r2, r15
000edc  1701a101  and r2, r2, r26
000ee0  93039805  setlt.u r7, r16, r25
000ee4  bbb00300  bneq r7, zero, 44
000ee8  9bc30001  srli r7, r1, 16
000eec  9b831300  andi r7, r7, 1
000ef0  8b907010  add.s r1, r1, r7
000ef4  8b90f010  add.s r1, r1, r15
000ef8  1789a001  and r18, r1, r26
000efc  9300c804  setlt.u r1, r16, r12
000f00  37e00000  beq r1, zero, 24
000f04  93005804  setlt.u r1, r16, r5
000f08  3bec00fe  bneq r1, zero, -232
000f0c  5b050000  j 40
000f10  9300c804  setlt.u r1, r16, r12
000f14  bbcf00fe  bneq r1, zero, -16
000f18  9bc00801  srli r1, r17, 16
000f1c  9b801000  andi r1, r1, 1
000f20  8b901810  add.s r1, r17, r1
000f24  8b90f010  add.s r1, r1, r15
000f28  1783a001  and r6, r1, r26
000f2c  93005804  setlt.u r1, r16, r5
000f30  bbcb00fe  bneq r1, zero, -272
000f34  9b400201  srli r1, r4, 16
000f38  9b801000  andi r1, r1, 1
000f3c  8b101210  add.s r1, r4, r1
000f40  8b90f010  add.s r1, r1, r15
000f44  9784a001  and r9, r1, r26
000f48  5bdbffff  j -296
000f4c  00340002  core_id r8
000f50  00200100  mfence { sm }
000f54  9f709000  addli r1, zero, 79
000f58  b3800028  zext_int2long r[2:3], r1
000f5c  73301ffe  store.d r[2:3], -32(r30)
000f60  e3405fff  loadli.w r1,  -84(r30)
000f64  b7d50000  beq r1, zero, 372
000f68  9f008000  addli r1, zero, 64
000f6c  3d000000  xfence
000f70  00a00300  mfence { lm, sm, gm }
000f74  33820028  zext_int2long r[5:6], r1
000f78  db030000  j 28
000f7c  eb500ffe  load.d r[2:3], -32(r30)
000f80  6b528fff  load.d r[5:6], -8(r30)
000f84  9f740000  addli r9, zero, 7
000f88  93201204  setlt.ul r1, r[5:6], r[2:3]
000f8c  27120200  addli.d r[5:6], r[5:6], 1
000f90  37850000  beq r1, zero, 320
000f94  97369202  sll.d r[14:15], r[5:6], r9
000f98  330b0028  zext_int2long r[23:24], zero
000f9c  733c4ffe  store.d r[5:6], -8(r30)
000fa0  db040000  j 36
000fa4  274b0b00  addli.d r[23:24], r[23:24], 4
000fa8  0b928d11  add.s r4, r27, r24
000fac  9320ab02  setneq.d r1, r[23:24], r[11:12]
000fb0  73669200  stores.w r9, 12(r4)
000fb4  73646200  stores.w r6, 8(r4)
000fb8  73622201  stores.w r18, 4(r4)
000fbc  73602200  stores.w r2, 0(r4)
000fc0  b7fe00fe  beq r1, zero, -68
000fc4  8b20db10  add.ul r[2:3], r[23:24], r[14:15]
000fc8  1bbc2000  slli r24, r1, 2
000fcc  0b118a11  add.s r2, r20, r24
000fd0  6f42c100  loads.w r4, 12(r2)
000fd4  ef4a0100  loads.w r21, 0(r2)
000fd8  ef404100  loads.w r1, 4(r2)
000fdc  ef488100  loads.w r17, 8(r2)
000fe0  97023201  and r5, r4, r19
000fe4  13015e04  setlt.u r2, r28, r5
000fe8  3b300100  bneq r2, zero, 12
000fec  9f040200  addli r9, r4, 0
000ff0  5b010000  j 8
000ff4  97143200  or r9, r4, r3
000ff8  17863801  and r12, r17, r19
000ffc  1301ce04  setlt.u r2, r28, r12
001000  3b300100  bneq r2, zero, 12
001004  1f830800  addli r6, r17, 0
001008  5b010000  j 8
00100c  17933800  or r6, r17, r3
001010  978c3001  and r25, r1, r19
001014  13019e05  setlt.u r2, r28, r25
001018  3b300100  bneq r2, zero, 12
00101c  1f890000  addli r18, r1, 0
001020  5b010000  j 8
001024  17993000  or r18, r1, r3
001028  97833a01  and r7, r21, r19
00102c  13017e04  setlt.u r2, r28, r7
001030  3b500100  bneq r2, zero, 20
001034  1f810a00  addli r2, r21, 0
001038  93037804  setlt.u r7, r16, r7
00103c  37d00300  beq r7, zero, 20
001040  db040000  j 36
001044  17913a00  or r2, r21, r3
001048  93037804  setlt.u r7, r16, r7
00104c  3be00300  bneq r7, zero, 24
001050  1bc10a01  srli r2, r21, 16
001054  1b011100  andi r2, r2, 1
001058  0b912a10  add.s r2, r21, r2
00105c  0b11f110  add.s r2, r2, r15
001060  1701a101  and r2, r2, r26
001064  93039805  setlt.u r7, r16, r25
001068  bbb00300  bneq r7, zero, 44
00106c  9bc30001  srli r7, r1, 16
001070  9b831300  andi r7, r7, 1
001074  8b907010  add.s r1, r1, r7
001078  8b90f010  add.s r1, r1, r15
00107c  1789a001  and r18, r1, r26
001080  9300c804  setlt.u r1, r16, r12
001084  37e00000  beq r1, zero, 24
001088  93005804  setlt.u r1, r16, r5
00108c  3bec00fe  bneq r1, zero, -232
001090  5b050000  j 40
001094  9300c804  setlt.u r1, r16, r12
001098  bbcf00fe  bneq r1, zero, -16
00109c  9bc00801  srli r1, r17, 16
0010a0  9b801000  andi r1, r1, 1
0010a4  8b901810  add.s r1, r17, r1
0010a8  8b90f010  add.s r1, r1, r15
0010ac  1783a001  and r6, r1, r26
0010b0  93005804  setlt.u r1, r16, r5
0010b4  bbcb00fe  bneq r1, zero, -272
0010b8  9b400201  srli r1, r4, 16
0010bc  9b801000  andi r1, r1, 1
0010c0  8b101210  add.s r1, r4, r1
0010c4  8b90f010  add.s r1, r1, r15
0010c8  9784a001  and r9, r1, r26
0010cc  5bdbffff  j -296
0010d0  00340002  core_id r8
0010d4  00200100  mfence { sm }
0010d8  9f70b000  addli r1, zero, 95
0010dc  b3800028  zext_int2long r[2:3], r1
0010e0  73341ffe  store.d r[2:3], -24(r30)
0010e4  9f500000  addli r1, zero, 5
0010e8  bb551400  bneq r8, r1, 372
0010ec  9f00a000  addli r1, zero, 80
0010f0  3d000000  xfence
0010f4  00a00300  mfence { lm, sm, gm }
0010f8  33820028  zext_int2long r[5:6], r1
0010fc  db030000  j 28
001100  eb508ffe  load.d r[2:3], -24(r30)
001104  6b528fff  load.d r[5:6], -8(r30)
001108  9f740000  addli r9, zero, 7
00110c  93201204  setlt.ul r1, r[5:6], r[2:3]
001110  27120200  addli.d r[5:6], r[5:6], 1
001114  37850000  beq r1, zero, 320
001118  97369202  sll.d r[14:15], r[5:6], r9
00111c  330b0028  zext_int2long r[23:24], zero
001120  733c4ffe  store.d r[5:6], -8(r30)
001124  db040000  j 36
001128  274b0b00  addli.d r[23:24], r[23:24], 4
00112c  0b928d11  add.s r4, r27, r24
001130  9320ab02  setneq.d r1, r[23:24], r[11:12]
001134  73669200  stores.w r9, 12(r4)
001138  73646200  stores.w r6, 8(r4)
00113c  73622201  stores.w r18, 4(r4)
001140  73602200  stores.w r2, 0(r4)
001144  b7fe00fe  beq r1, zero, -68
001148  8b20db10  add.ul r[2:3], r[23:24], r[14:15]
00114c  1bbc2000  slli r24, r1, 2
001150  0b118a11  add.s r2, r20, r24
001154  6f42c100  loads.w r4, 12(r2)
001158  ef4a0100  loads.w r21, 0(r2)
00115c  ef404100  loads.w r1, 4(r2)
001160  ef488100  loads.w r17, 8(r2)
001164  97023201  and r5, r4, r19
001168  13015e04  setlt.u r2, r28, r5
00116c  3b300100  bneq r2, zero, 12
001170  9f040200  addli r9, r4, 0
001174  5b010000  j 8
001178  97143200  or r9, r4, r3
00117c  17863801  and r12, r17, r19
001180  1301ce04  setlt.u r2, r28, r12
001184  3b300100  bneq r2, zero, 12
001188  1f830800  addli r6, r17, 0
00118c  5b010000  j 8
001190  17933800  or r6, r17, r3
001194  978c3001  and r25, r1, r19
001198  13019e05  setlt.u r2, r28, r25
00119c  3b300100  bneq r2, zero, 12
0011a0  1f890000  addli r18, r1, 0
0011a4  5b010000  j 8
0011a8  17993000  or r18, r1, r3
0011ac  97833a01  and r7, r21, r19
0011b0  13017e04  setlt.u r2, r28, r7
0011b4  3b500100  bneq r2, zero, 20
0011b8  1f810a00  addli r2, r21, 0
0011bc  93037804  setlt.u r7, r16, r7
0011c0  37d00300  beq r7, zero, 20
0011c4  db040000  j 36
0011c8  17913a00  or r2, r21, r3
0011cc  93037804  setlt.u r7, r16, r7
0011d0  3be00300  bneq r7, zero, 24
0011d4  1bc10a01  srli r2, r21, 16
0011d8  1b011100  andi r2, r2, 1
0011dc  0b912a10  add.s r2, r21, r2
0011e0  0b11f110  add.s r2, r2, r15
0011e4  1701a101  and r2, r2, r26
0011e8  93039805  setlt.u r7, r16, r25
0011ec  bbb00300  bneq r7, zero, 44
0011f0  9bc30001  srli r7, r1, 16
0011f4  9b831300  andi r7, r7, 1
0011f8  8b907010  add.s r1, r1, r7
0011fc  8b90f010  add.s r1, r1, r15
001200  1789a001  and r18, r1, r26
001204  9300c804  setlt.u r1, r16, r12
001208  37e00000  beq r1, zero, 24
00120c  93005804  setlt.u r1, r16, r5
001210  3bec00fe  bneq r1, zero, -232
001214  5b050000  j 40
001218  9300c804  setlt.u r1, r16, r12
00121c  bbcf00fe  bneq r1, zero, -16
001220  9bc00801  srli r1, r17, 16
001224  9b801000  andi r1, r1, 1
001228  8b901810  add.s r1, r17, r1
00122c  8b90f010  add.s r1, r1, r15
001230  1783a001  and r6, r1, r26
001234  93005804  setlt.u r1, r16, r5
001238  bbcb00fe  bneq r1, zero, -272
00123c  9b400201  srli r1, r4, 16
001240  9b801000  andi r1, r1, 1
001244  8b101210  add.s r1, r4, r1
001248  8b90f010  add.s r1, r1, r15
00124c  9784a001  and r9, r1, r26
001250  5bdbffff  j -296
001254  00340002  core_id r8
001258  00200100  mfence { sm }
00125c  9f70d000  addli r1, zero, 111
001260  b3800028  zext_int2long r[2:3], r1
001264  73381ffe  store.d r[2:3], -16(r30)
001268  9f600000  addli r1, zero, 6
00126c  bb551400  bneq r8, r1, 372
001270  9f00c000  addli r1, zero, 96
001274  3d000000  xfence
001278  00a00300  mfence { lm, sm, gm }
00127c  33820028  zext_int2long r[5:6], r1
001280  db030000  j 28
001284  eb500fff  load.d r[2:3], -16(r30)
001288  6b528fff  load.d r[5:6], -8(r30)
00128c  9f740000  addli r9, zero, 7
001290  93201204  setlt.ul r1, r[5:6], r[2:3]
001294  27120200  addli.d r[5:6], r[5:6], 1
001298  37850000  beq r1, zero, 320
00129c  97369202  sll.d r[14:15], r[5:6], r9
0012a0  330b0028  zext_int2long r[23:24], zero
0012a4  733c4ffe  store.d r[5:6], -8(r30)
0012a8  db040000  j 36
0012ac  274b0b00  addli.d r[23:24], r[23:24], 4
0012b0  0b928d11  add.s r4, r27, r24
0012b4  9320ab02  setneq.d r1, r[23:24], r[11:12]
0012b8  73669200  stores.w r9, 12(r4)
0012bc  73646200  stores.w r6, 8(r4)
0012c0  73622201  stores.w r18, 4(r4)
0012c4  73602200  stores.w r2, 0(r4)
0012c8  b7fe00fe  beq r1, zero, -68
0012cc  8b20db10  add.ul r[2:3], r[23:24], r[14:15]
0012d0  1bbc2000  slli r24, r1, 2
0012d4  0b118a11  add.s r2, r20, r24
0012d8  6f42c100  loads.w r4, 12(r2)
0012dc  ef4a0100  loads.w r21, 0(r2)
0012e0  ef404100  loads.w r1, 4(r2)
0012e4  ef488100  loads.w r17, 8(r2)
0012e8  97023201  and r5, r4, r19
0012ec  13015e04  setlt.u r2, r28, r5
0012f0  3b300100  bneq r2, zero, 12
0012f4  9f040200  addli r9, r4, 0
0012f8  5b010000  j 8
0012fc  97143200  or r9, r4, r3
001300  17863801  and r12, r17, r19
001304  1301ce04  setlt.u r2, r28, r12
001308  3b300100  bneq r2, zero, 12
00130c  1f830800  addli r6, r17, 0
001310  5b010000  j 8
001314  17933800  or r6, r17, r3
001318  978c3001  and r25, r1, r19
00131c  13019e05  setlt.u r2, r28, r25
001320  3b300100  bneq r2, zero, 12
001324  1f890000  addli r18, r1, 0
001328  5b010000  j 8
00132c  17993000  or r18, r1, r3
001330  97833a01  and r7, r21, r19
001334  13017e04  setlt.u r2, r28, r7
001338  3b500100  bneq r2, zero, 20
00133c  1f810a00  addli r2, r21, 0
001340  93037804  setlt.u r7, r16, r7
001344  37d00300  beq r7, zero, 20
001348  db040000  j 36
00134c  17913a00  or r2, r21, r3
001350  93037804  setlt.u r7, r16, r7
001354  3be00300  bneq r7, zero, 24
001358  1bc10a01  srli r2, r21, 16
00135c  1b011100  andi r2, r2, 1
001360  0b912a10  add.s r2, r21, r2
001364  0b11f110  add.s r2, r2, r15
001368  1701a101  and r2, r2, r26
00136c  93039805  setlt.u r7, r16, r25
001370  bbb00300  bneq r7, zero, 44
001374  9bc30001  srli r7, r1, 16
001378  9b831300  andi r7, r7, 1
00137c  8b907010  add.s r1, r1, r7
001380  8b90f010  add.s r1, r1, r15
001384  1789a001  and r18, r1, r26
001388  9300c804  setlt.u r1, r16, r12
00138c  37e00000  beq r1, zero, 24
001390  93005804  setlt.u r1, r16, r5
001394  3bec00fe  bneq r1, zero, -232
001398  5b050000  j 40
00139c  9300c804  setlt.u r1, r16, r12
0013a0  bbcf00fe  bneq r1, zero, -16
0013a4  9bc00801  srli r1, r17, 16
0013a8  9b801000  andi r1, r1, 1
0013ac  8b901810  add.s r1, r17, r1
0013b0  8b90f010  add.s r1, r1, r15
0013b4  1783a001  and r6, r1, r26
0013b8  93005804  setlt.u r1, r16, r5
0013bc  bbcb00fe  bneq r1, zero, -272
0013c0  9b400201  srli r1, r4, 16
0013c4  9b801000  andi r1, r1, 1
0013c8  8b101210  add.s r1, r4, r1
0013cc  8b90f010  add.s r1, r1, r15
0013d0  9784a001  and r9, r1, r26
0013d4  5bdbffff  j -296
0013d8  00340002  core_id r8
0013dc  00200100  mfence { sm }
0013e0  9f70f000  addli r1, zero, 127
0013e4  b3800028  zext_int2long r[2:3], r1
0013e8  733c1ffe  store.d r[2:3], -8(r30)
0013ec  e3006fff  loadli.w r1,  -80(r30)
0013f0  b7d50000  beq r1, zero, 372
0013f4  9f00e000  addli r1, zero, 112
0013f8  3d000000  xfence
0013fc  00a00300  mfence { lm, sm, gm }
001400  33820028  zext_int2long r[5:6], r1
001404  db030000  j 28
001408  eb508fff  load.d r[2:3], -8(r30)
00140c  6b520ffc  load.d r[5:6], -64(r30)
001410  9f740000  addli r9, zero, 7
001414  93201204  setlt.ul r1, r[5:6], r[2:3]
001418  27120200  addli.d r[5:6], r[5:6], 1
00141c  37850000  beq r1, zero, 320
001420  97369202  sll.d r[14:15], r[5:6], r9
001424  330c0028  zext_int2long r[25:26], zero
001428  73304ffc  store.d r[5:6], -64(r30)
00142c  db040000  j 36
001430  274c0c00  addli.d r[25:26], r[25:26], 4
001434  0b915d11  add.s r2, r27, r21
001438  9320ac02  setneq.d r1, r[25:26], r[11:12]
00143c  73669100  stores.w r9, 12(r2)
001440  73646100  stores.w r6, 8(r2)
001444  73622101  stores.w r18, 4(r2)
001448  73607100  stores.w r7, 0(r2)
00144c  b7fe00fe  beq r1, zero, -68
001450  8b20dc10  add.ul r[2:3], r[25:26], r[14:15]
001454  9bba2000  slli r21, r1, 2
001458  8b125a11  add.s r5, r20, r21
00145c  6fc2c200  loads.w r4, 12(r5)
001460  6fc10200  loads.w r2, 0(r5)
001464  efc04200  loads.w r1, 4(r5)
001468  efc88200  loads.w r17, 8(r5)
00146c  97023201  and r5, r4, r19
001470  13035e04  setlt.u r6, r28, r5
001474  3b300300  bneq r6, zero, 12
001478  9f040200  addli r9, r4, 0
00147c  5b010000  j 8
001480  97143200  or r9, r4, r3
001484  17863801  and r12, r17, r19
001488  1303ce04  setlt.u r6, r28, r12
00148c  3b300300  bneq r6, zero, 12
001490  1f830800  addli r6, r17, 0
001494  5b010000  j 8
001498  17933800  or r6, r17, r3
00149c  17843001  and r8, r1, r19
0014a0  93038e04  setlt.u r7, r28, r8
0014a4  3bb00300  bneq r7, zero, 12
0014a8  1f890000  addli r18, r1, 0
0014ac  5b010000  j 8
0014b0  17993000  or r18, r1, r3
0014b4  170b3101  and r22, r2, r19
0014b8  93036e05  setlt.u r7, r28, r22
0014bc  3bd00300  bneq r7, zero, 20
0014c0  9f030100  addli r7, r2, 0
0014c4  130b6805  setlt.u r22, r16, r22
0014c8  37500b00  beq r22, zero, 20
0014cc  db040000  j 36
0014d0  97133100  or r7, r2, r3
0014d4  130b6805  setlt.u r22, r16, r22
0014d8  3b600b00  bneq r22, zero, 24
0014dc  9b430101  srli r7, r2, 16
0014e0  9b831300  andi r7, r7, 1
0014e4  0b117110  add.s r2, r2, r7
0014e8  0b11f110  add.s r2, r2, r15
0014ec  9703a101  and r7, r2, r26
0014f0  13018804  setlt.u r2, r16, r8
0014f4  bb300100  bneq r2, zero, 44
0014f8  1bc10001  srli r2, r1, 16
0014fc  1b011100  andi r2, r2, 1
001500  8b902010  add.s r1, r1, r2
001504  8b90f010  add.s r1, r1, r15
001508  1789a001  and r18, r1, r26
00150c  9300c804  setlt.u r1, r16, r12
001510  37e00000  beq r1, zero, 24
001514  93005804  setlt.u r1, r16, r5
001518  3bec00fe  bneq r1, zero, -232
00151c  5b050000  j 40
001520  9300c804  setlt.u r1, r16, r12
001524  bbcf00fe  bneq r1, zero, -16
001528  9bc00801  srli r1, r17, 16
00152c  9b801000  andi r1, r1, 1
001530  8b901810  add.s r1, r17, r1
001534  8b90f010  add.s r1, r1, r15
001538  1783a001  and r6, r1, r26
00153c  93005804  setlt.u r1, r16, r5
001540  bbcb00fe  bneq r1, zero, -272
001544  9b400201  srli r1, r4, 16
001548  9b801000  andi r1, r1, 1
00154c  8b101210  add.s r1, r4, r1
001550  8b90f010  add.s r1, r1, r15
001554  9784a001  and r9, r1, r26
001558  5bdbffff  j -296
00155c  00340002  core_id r8
001560  00200100  mfence { sm }
001564  e3001fff  loadli.w r1,  -120(r30)
001568  6b528ff9  load.d r[5:6], -104(r30)
00156c  9bb07000  slli r1, r1, 7
001570  b3800028  zext_int2long r[2:3], r1
001574  0ba24040  min.ul r[5:6], r[2:3], r[5:6]
001578  27020201  addli.d r[5:6], r[5:6], 128
00157c  0b221248  max.ul r[5:6], r[5:6], r[2:3]
001580  8b301218  sub.sl r[2:3], r[5:6], r[2:3]
001584  8baaa040  min.ul r[22:23], r[2:3], r[11:12]
001588  9f70f001  addli r1, zero, 255
00158c  80a20004  csr_set csr5, r1
001590  9f300000  addli r1, zero, 3
001594  00e00200  sync_core
001598  73345ff9  store.d r[22:23], -120(r30)
00159c  bb201400  bneq r8, r1, 40
0015a0  9f301000  addli r1, zero, 11
0015a4  7d800000  xsignal r1, 0
0015a8  9f401000  addli r1, zero, 12
0015ac  7d800000  xsignal r1, 0
0015b0  9f501000  addli r1, zero, 13
0015b4  7d900000  xwait r1, 0
0015b8  9f302000  addli r1, zero, 19
0015bc  7d900000  xwait r1, 0
0015c0  db6a0000  j 852
0015c4  e3404fff  loadli.w r1,  -92(r30)
0015c8  2b010600  lui r2, 96
0015cc  9bb09000  slli r1, r1, 9
0015d0  8b932010  add.s r7, r1, r2
0015d4  1f110000  addli r2, zero, 1
0015d8  3b4b2400  bneq r8, r2, 720
0015dc  6b520f01  load.d r[5:6], 16(r30)
0015e0  6b568ff7  load.d r[13:14], -136(r30)
0015e4  1f032000  addli r6, zero, 16
0015e8  7d100300  xwait r6, 0
0015ec  63416fff  loadli.w r2,  -76(r30)
0015f0  0b22c210  add.ul r[5:6], r[5:6], r[13:14]
0015f4  9f260000  addli r13, zero, 2
0015f8  bfc42600  blt.s r13, r2, 304
0015fc  1f570000  addli r14, zero, 5
001600  1f160000  addli r12, zero, 1
001604  1f310000  addli r2, zero, 3
001608  9f480000  addli r17, zero, 4
00160c  1d000700  lock zero, r14
001610  15000014  dma_cfg zero, zero, zero, 10
001614  1500c014  dma_cfg zero, zero, r12, 10
001618  1500d014  dma_cfg zero, zero, r13, 10
00161c  15002014  dma_cfg zero, zero, r2, 10
001620  1f610000  addli r2, zero, 6
001624  15001015  dma_cfg zero, zero, r17, 10
001628  1500e014  dma_cfg zero, zero, r14, 10
00162c  15002014  dma_cfg zero, zero, r2, 10
001630  1f011000  addli r2, zero, 8
001634  15009014  dma_cfg zero, zero, r9, 10
001638  15002014  dma_cfg zero, zero, r2, 10
00163c  1f111000  addli r2, zero, 9
001640  15002014  dma_cfg zero, zero, r2, 10
001644  1f211000  addli r2, zero, 10
001648  15002014  dma_cfg zero, zero, r2, 10
00164c  1f311000  addli r2, zero, 11
001650  15002014  dma_cfg zero, zero, r2, 10
001654  1f411000  addli r2, zero, 12
001658  15002014  dma_cfg zero, zero, r2, 10
00165c  1f511000  addli r2, zero, 13
001660  15002014  dma_cfg zero, zero, r2, 10
001664  1f611000  addli r2, zero, 14
001668  15002014  dma_cfg zero, zero, r2, 10
00166c  1f711000  addli r2, zero, 15
001670  15002014  dma_cfg zero, zero, r2, 10
001674  1f112000  addli r2, zero, 17
001678  15006014  dma_cfg zero, zero, r6, 10
00167c  15002014  dma_cfg zero, zero, r2, 10
001680  1f212000  addli r2, zero, 18
001684  15002014  dma_cfg zero, zero, r2, 10
001688  1f312000  addli r2, zero, 19
00168c  15002014  dma_cfg zero, zero, r2, 10
001690  1f412000  addli r2, zero, 20
001694  15002014  dma_cfg zero, zero, r2, 10
001698  1f512000  addli r2, zero, 21
00169c  15002014  dma_cfg zero, zero, r2, 10
0016a0  1f612000  addli r2, zero, 22
0016a4  15002014  dma_cfg zero, zero, r2, 10
0016a8  1f712000  addli r2, zero, 23
0016ac  15002014  dma_cfg zero, zero, r2, 10
0016b0  1f013000  addli r2, zero, 24
0016b4  15002014  dma_cfg zero, zero, r2, 10
0016b8  1f113000  addli r2, zero, 25
0016bc  15002014  dma_cfg zero, zero, r2, 10
0016c0  1f213000  addli r2, zero, 26
0016c4  15002014  dma_cfg zero, zero, r2, 10
0016c8  1f313000  addli r2, zero, 27
0016cc  15002014  dma_cfg zero, zero, r2, 10
0016d0  1f413000  addli r2, zero, 28
0016d4  15002014  dma_cfg zero, zero, r2, 10
0016d8  1f513000  addli r2, zero, 29
0016dc  15002014  dma_cfg zero, zero, r2, 10
0016e0  1f613000  addli r2, zero, 30
0016e4  15002014  dma_cfg zero, zero, r2, 10
0016e8  1f713000  addli r2, zero, 31
0016ec  15002014  dma_cfg zero, zero, r2, 10
0016f0  1f018000  addli r2, zero, 64
0016f4  15060600  dma_cfg r12, r12, zero, 0
0016f8  15060002  dma_cfg r12, zero, zero, 1
0016fc  15000004  dma_cfg zero, zero, zero, 2
001700  95032006  dma_cfg r7, zero, r2, 3
001704  1f010001  addli r2, zero, 128
001708  15011009  dma_cfg r2, zero, r17, 4
00170c  1f010004  addli r2, zero, 512
001710  1501c00a  dma_cfg r2, zero, r12, 5
001714  15000010  dma_cfg zero, zero, zero, 8
001718  35000000  dma_run zero
00171c  1500c00a  dma_cfg zero, zero, r12, 5
001720  15000010  dma_cfg zero, zero, zero, 8
001724  1d100700  unlock r14
001728  2b010600  lui r2, 96
00172c  9f480000  addli r17, zero, 4
001730  1f160000  addli r12, zero, 1
001734  1f098000  addli r18, zero, 64
001738  1f570000  addli r14, zero, 5
00173c  1b110104  ori r2, r2, 64
001740  1d800800  lock zero, r17
001744  15060600  dma_cfg r12, r12, zero, 0
001748  8b902010  add.s r1, r1, r2
00174c  1ff13a00  addli r2, r21, 31
001750  15800204  dma_cfg zero, r5, zero, 2
001754  95002207  dma_cfg r1, r4, r18, 3
001758  9b405100  srli r1, r2, 5
00175c  1bb11a00  slli r2, r21, 1
001760  9f020001  addli r5, zero, 128
001764  1f020002  addli r4, zero, 256
001768  9f0a0004  addli r21, zero, 512
00176c  95021908  dma_cfg r5, r18, r1, 4
001770  1b01e103  andi r2, r2, 62
001774  950ac20a  dma_cfg r21, r4, r12, 5
001778  1f320000  addli r4, zero, 3
00177c  15002010  dma_cfg zero, zero, r2, 8
001780  35000000  dma_run zero
001784  1500c00a  dma_cfg zero, zero, r12, 5
001788  15000010  dma_cfg zero, zero, zero, 8
00178c  1d900800  unlock r17
001790  1d000700  lock zero, r14
001794  15000014  dma_cfg zero, zero, zero, 10
001798  1500c014  dma_cfg zero, zero, r12, 10
00179c  1500d014  dma_cfg zero, zero, r13, 10
0017a0  15004014  dma_cfg zero, zero, r4, 10
0017a4  1f620000  addli r4, zero, 6
0017a8  15001015  dma_cfg zero, zero, r17, 10
0017ac  1500e014  dma_cfg zero, zero, r14, 10
0017b0  15004014  dma_cfg zero, zero, r4, 10
0017b4  1f021000  addli r4, zero, 8
0017b8  15009014  dma_cfg zero, zero, r9, 10
0017bc  15004014  dma_cfg zero, zero, r4, 10
0017c0  1f121000  addli r4, zero, 9
0017c4  15004014  dma_cfg zero, zero, r4, 10
0017c8  1f221000  addli r4, zero, 10
0017cc  15004014  dma_cfg zero, zero, r4, 10
0017d0  1f321000  addli r4, zero, 11
0017d4  15004014  dma_cfg zero, zero, r4, 10
0017d8  1f421000  addli r4, zero, 12
0017dc  15004014  dma_cfg zero, zero, r4, 10
0017e0  1f521000  addli r4, zero, 13
0017e4  15004014  dma_cfg zero, zero, r4, 10
0017e8  1f621000  addli r4, zero, 14
0017ec  15004014  dma_cfg zero, zero, r4, 10
0017f0  1f721000  addli r4, zero, 15
0017f4  15004014  dma_cfg zero, zero, r4, 10
0017f8  15006014  dma_cfg zero, zero, r6, 10
0017fc  1f132000  addli r6, zero, 17
001800  15006014  dma_cfg zero, zero, r6, 10
001804  1f232000  addli r6, zero, 18
001808  15006014  dma_cfg zero, zero, r6, 10
00180c  1f332000  addli r6, zero, 19
001810  15006014  dma_cfg zero, zero, r6, 10
001814  1f432000  addli r6, zero, 20
001818  15006014  dma_cfg zero, zero, r6, 10
00181c  1f532000  addli r6, zero, 21
001820  15006014  dma_cfg zero, zero, r6, 10
001824  1f632000  addli r6, zero, 22
001828  15006014  dma_cfg zero, zero, r6, 10
00182c  1f732000  addli r6, zero, 23
001830  15006014  dma_cfg zero, zero, r6, 10
001834  1f033000  addli r6, zero, 24
001838  15006014  dma_cfg zero, zero, r6, 10
00183c  1f133000  addli r6, zero, 25
001840  15006014  dma_cfg zero, zero, r6, 10
001844  1f233000  addli r6, zero, 26
001848  15006014  dma_cfg zero, zero, r6, 10
00184c  1f333000  addli r6, zero, 27
001850  15006014  dma_cfg zero, zero, r6, 10
001854  1f433000  addli r6, zero, 28
001858  15006014  dma_cfg zero, zero, r6, 10
00185c  1f533000  addli r6, zero, 29
001860  15006014  dma_cfg zero, zero, r6, 10
001864  1f633000  addli r6, zero, 30
001868  15006014  dma_cfg zero, zero, r6, 10
00186c  1f733000  addli r6, zero, 31
001870  15006014  dma_cfg zero, zero, r6, 10
001874  15060600  dma_cfg r12, r12, zero, 0
001878  15060002  dma_cfg r12, zero, zero, 1
00187c  15000004  dma_cfg zero, zero, zero, 2
001880  95032007  dma_cfg r7, zero, r18, 3
001884  95021008  dma_cfg r5, zero, r1, 4
001888  950ac00a  dma_cfg r21, zero, r12, 5
00188c  15002010  dma_cfg zero, zero, r2, 8
001890  35000000  dma_run zero
001894  1500c00a  dma_cfg zero, zero, r12, 5
001898  15000010  dma_cfg zero, zero, zero, 8
00189c  1d100700  unlock r14
0018a0  7d000200  xsignal r4, 0
0018a4  5b0e0000  j 112
0018a8  9f500000  addli r1, zero, 5
0018ac  bb211400  bneq r8, r1, 104
0018b0  1f411000  addli r2, zero, 12
0018b4  9f000000  addli r1, zero, 0
0018b8  2b020100  lui r4, 16
0018bc  7d100100  xwait r2, 0
0018c0  1f711000  addli r2, zero, 15
0018c4  7d100100  xwait r2, 0
0018c8  1f210000  addli r2, zero, 2
0018cc  1d000100  lock zero, r2
0018d0  2b01803f  lui r2, 260096
0018d4  0d000002  ew_cfg zero, zero, zero, 1
0018d8  0d110100  ewcoeff_cfg r2, r2, zero, 0
0018dc  1f71f000  addli r2, zero, 127
0018e0  0d000104  ew_cfg zero, r2, zero, 2
0018e4  1f110000  addli r2, zero, 1
0018e8  0d010006  ew_cfg r2, zero, zero, 3
0018ec  0b911d10  add.s r2, r27, r1
0018f0  9f800004  addli r1, r1, 512
0018f4  2d017100  dsmadd r2, r2, r7, 0
0018f8  bbdf40fe  bneq r1, r4, -12
0018fc  9f200000  addli r1, zero, 2
001900  1d900000  unlock r1
001904  9f501000  addli r1, zero, 13
001908  7d800000  xsignal r1, 0
00190c  9f002000  addli r1, zero, 16
001910  7d800000  xsignal r1, 0
001914  ab000600  lui r1, 96
001918  3d000000  xfence
00191c  00a00300  mfence { lm, sm, gm }
001920  9b900060  ori r1, r1, 1536
001924  8b1a1a10  add.s r21, r20, r1
001928  9f70f001  addli r1, zero, 255
00192c  80a20004  csr_set csr5, r1
001930  00e00200  sync_core
001934  b7370402  beq r8, zero, 1516
001938  9f100000  addli r1, zero, 1
00193c  3b3f1402  bneq r8, r1, 1996
001940  9f002000  addli r1, zero, 16
001944  3d000000  xfence
001948  00a00300  mfence { lm, sm, gm }
00194c  33820028  zext_int2long r[5:6], r1
001950  db030000  j 28
001954  eb508ffc  load.d r[2:3], -56(r30)
001958  6b520ffc  load.d r[5:6], -64(r30)
00195c  9f740000  addli r9, zero, 7
001960  93201204  setlt.ul r1, r[5:6], r[2:3]
001964  27120200  addli.d r[5:6], r[5:6], 1
001968  b7d60000  beq r1, zero, 436
00196c  97339202  sll.d r[8:9], r[5:6], r9
001970  73304ffc  store.d r[5:6], -64(r30)
001974  bbd1ba01  bneq r21, r27, 116
001978  b3000028  zext_int2long r[2:3], zero
00197c  5b060000  j 48
001980  9b420301  srli r5, r6, 16
001984  9b821200  andi r5, r5, 1
001988  8b125310  add.s r5, r6, r5
00198c  8b92f210  add.s r5, r5, r15
001990  9782a201  and r5, r5, r26
001994  6b568fff  load.d r[13:14], -8(r30)
001998  0b924a10  add.s r4, r21, r4
00199c  73605200  stores.w r5, 0(r4)
0019a0  13a3c004  setlt.ul r6, r[2:3], r[13:14]
0019a4  a7900000  addli.d r[2:3], r[2:3], 1
0019a8  b73e03fe  beq r6, zero, -84
0019ac  0ba27010  add.ul r[5:6], r[2:3], r[8:9]
0019b0  1b322200  slli r4, r4, 2
0019b4  8b924d10  add.s r5, r27, r4
0019b8  6fc30200  loads.w r6, 0(r5)
0019bc  97043301  and r9, r6, r19
0019c0  93029e04  setlt.u r5, r28, r9
0019c4  3bd00200  bneq r5, zero, 20
0019c8  9f020300  addli r5, r6, 0
0019cc  93049804  setlt.u r9, r16, r9
0019d0  3b9f04fe  bneq r9, zero, -60
0019d4  dbf5ffff  j -84
0019d8  97123300  or r5, r6, r3
0019dc  93049804  setlt.u r9, r16, r9
0019e0  bbde04fe  bneq r9, zero, -76
0019e4  dbf3ffff  j -100
0019e8  330c0028  zext_int2long r[25:26], zero
0019ec  db040000  j 36
0019f0  274c0c00  addli.d r[25:26], r[25:26], 4
0019f4  0b924a10  add.s r4, r21, r4
0019f8  9320ac00  seteq.d r1, r[25:26], r[11:12]
0019fc  73669200  stores.w r9, 12(r4)
001a00  73645200  stores.w r5, 8(r4)
001a04  7362d200  stores.w r13, 4(r4)
001a08  73602200  stores.w r2, 0(r4)
001a0c  3bad00fe  bneq r1, zero, -184
001a10  8b207c10  add.ul r[2:3], r[25:26], r[8:9]
001a14  1bb22000  slli r4, r1, 2
001a18  0b914d10  add.s r2, r27, r4
001a1c  ef48c100  loads.w r17, 12(r2)
001a20  17893801  and r18, r17, r19
001a24  93002e05  setlt.u r1, r28, r18
001a28  3bb00000  bneq r1, zero, 12
001a2c  9f840800  addli r9, r17, 0
001a30  5b010000  j 8
001a34  97943800  or r9, r17, r3
001a38  ef408100  loads.w r1, 8(r2)
001a3c  17863001  and r12, r1, r19
001a40  9302ce04  setlt.u r5, r28, r12
001a44  3bb00200  bneq r5, zero, 12
001a48  9f820000  addli r5, r1, 0
001a4c  5b010000  j 8
001a50  97923000  or r5, r1, r3
001a54  6f434100  loads.w r6, 4(r2)
001a58  17073301  and r14, r6, r19
001a5c  9306ee04  setlt.u r13, r28, r14
001a60  3bb00600  bneq r13, zero, 12
001a64  9f060300  addli r13, r6, 0
001a68  5b010000  j 8
001a6c  97163300  or r13, r6, r3
001a70  6f4b0100  loads.w r22, 0(r2)
001a74  970b3b01  and r23, r22, r19
001a78  13017e05  setlt.u r2, r28, r23
001a7c  3b500100  bneq r2, zero, 20
001a80  1f010b00  addli r2, r22, 0
001a84  930b7805  setlt.u r23, r16, r23
001a88  37d00b00  beq r23, zero, 20
001a8c  db040000  j 36
001a90  17113b00  or r2, r22, r3
001a94  930b7805  setlt.u r23, r16, r23
001a98  3be00b00  bneq r23, zero, 24
001a9c  1b410b01  srli r2, r22, 16
001aa0  1b011100  andi r2, r2, 1
001aa4  0b112b10  add.s r2, r22, r2
001aa8  0b11f110  add.s r2, r2, r15
001aac  1701a101  and r2, r2, r26
001ab0  1307e804  setlt.u r14, r16, r14
001ab4  bb300700  bneq r14, zero, 44
001ab8  9b460301  srli r13, r6, 16
001abc  9b861600  andi r13, r13, 1
001ac0  0b13d310  add.s r6, r6, r13
001ac4  0b13f310  add.s r6, r6, r15
001ac8  9706a301  and r13, r6, r26
001acc  1303c804  setlt.u r6, r16, r12
001ad0  37600300  beq r6, zero, 24
001ad4  93002805  setlt.u r1, r16, r18
001ad8  3bec00fe  bneq r1, zero, -232
001adc  5b050000  j 40
001ae0  1303c804  setlt.u r6, r16, r12
001ae4  bb4f03fe  bneq r6, zero, -16
001ae8  9bc20001  srli r5, r1, 16
001aec  9b821200  andi r5, r5, 1
001af0  8b905010  add.s r1, r1, r5
001af4  8b90f010  add.s r1, r1, r15
001af8  9782a001  and r5, r1, r26
001afc  93002805  setlt.u r1, r16, r18
001b00  bbcb00fe  bneq r1, zero, -272
001b04  9bc00801  srli r1, r17, 16
001b08  9b801000  andi r1, r1, 1
001b0c  8b901810  add.s r1, r17, r1
001b10  8b90f010  add.s r1, r1, r15
001b14  9784a001  and r9, r1, r26
001b18  5bdbffff  j -296
001b1c  00340002  core_id r8
001b20  00200100  mfence { sm }
001b24  e3005fff  loadli.w r1,  -88(r30)
001b28  bba70002  bneq r1, zero, 1512
001b2c  9f300000  addli r1, zero, 3
001b30  3b3f1402  bneq r8, r1, 1996
001b34  9f006000  addli r1, zero, 48
001b38  3d000000  xfence
001b3c  00a00300  mfence { lm, sm, gm }
001b40  33820028  zext_int2long r[5:6], r1
001b44  db030000  j 28
001b48  eb508ffd  load.d r[2:3], -40(r30)
001b4c  6b520ffd  load.d r[5:6], -48(r30)
001b50  9f740000  addli r9, zero, 7
001b54  93201204  setlt.ul r1, r[5:6], r[2:3]
001b58  27120200  addli.d r[5:6], r[5:6], 1
001b5c  b7d60000  beq r1, zero, 436
001b60  73384ffc  store.d r[5:6], -48(r30)
001b64  97329202  sll.d r[6:7], r[5:6], r9
001b68  bbd1ba01  bneq r21, r27, 116
001b6c  b3000028  zext_int2long r[2:3], zero
001b70  5b060000  j 48
001b74  9b430401  srli r7, r8, 16
001b78  9b831300  andi r7, r7, 1
001b7c  8b137410  add.s r7, r8, r7
001b80  8b93f310  add.s r7, r7, r15
001b84  9783a301  and r7, r7, r26
001b88  6b548fff  load.d r[9:10], -8(r30)
001b8c  0b924a10  add.s r4, r21, r4
001b90  73607200  stores.w r7, 0(r4)
001b94  13a48004  setlt.ul r8, r[2:3], r[9:10]
001b98  a7900000  addli.d r[2:3], r[2:3], 1
001b9c  b73e04fe  beq r8, zero, -84
001ba0  8ba35010  add.ul r[8:9], r[2:3], r[6:7]
001ba4  1bb22300  slli r4, r7, 2
001ba8  8b934d10  add.s r7, r27, r4
001bac  6fc40300  loads.w r8, 0(r7)
001bb0  97043401  and r9, r8, r19
001bb4  93039e04  setlt.u r7, r28, r9
001bb8  3bd00300  bneq r7, zero, 20
001bbc  9f030400  addli r7, r8, 0
001bc0  93049804  setlt.u r9, r16, r9
001bc4  3b9f04fe  bneq r9, zero, -60
001bc8  dbf5ffff  j -84
001bcc  97133400  or r7, r8, r3
001bd0  93049804  setlt.u r9, r16, r9
001bd4  bbde04fe  bneq r9, zero, -76
001bd8  dbf3ffff  j -100
001bdc  b3030028  zext_int2long r[8:9], zero
001be0  db040000  j 36
001be4  a7c30300  addli.d r[8:9], r[8:9], 4
001be8  0b924a10  add.s r4, r21, r4
001bec  13a1a300  seteq.d r2, r[8:9], r[11:12]
001bf0  73669200  stores.w r9, 12(r4)
001bf4  73641201  stores.w r17, 8(r4)
001bf8  73621200  stores.w r1, 4(r4)
001bfc  73609201  stores.w r25, 0(r4)
001c00  3b2d01fe  bneq r2, zero, -184
001c04  8ba05310  add.ul r[2:3], r[8:9], r[6:7]
001c08  1bb22000  slli r4, r1, 2
001c0c  0b914d10  add.s r2, r27, r4
001c10  ef46c100  loads.w r13, 12(r2)
001c14  17873601  and r14, r13, r19
001c18  9300ee04  setlt.u r1, r28, r14
001c1c  3bb00000  bneq r1, zero, 12
001c20  9f840600  addli r9, r13, 0
001c24  5b010000  j 8
001c28  97943600  or r9, r13, r3
001c2c  6f4c8100  loads.w r24, 8(r2)
001c30  17063c01  and r12, r24, r19
001c34  9300ce04  setlt.u r1, r28, r12
001c38  3bb00000  bneq r1, zero, 12
001c3c  9f080c00  addli r17, r24, 0
001c40  5b010000  j 8
001c44  97183c00  or r17, r24, r3
001c48  6f494100  loads.w r18, 4(r2)
001c4c  170b3901  and r22, r18, r19
001c50  93006e05  setlt.u r1, r28, r22
001c54  3bb00000  bneq r1, zero, 12
001c58  9f000900  addli r1, r18, 0
001c5c  5b010000  j 8
001c60  97103900  or r1, r18, r3
001c64  6f410100  loads.w r2, 0(r2)
001c68  970b3101  and r23, r2, r19
001c6c  930c7e05  setlt.u r25, r28, r23
001c70  3bd00c00  bneq r25, zero, 20
001c74  9f0c0100  addli r25, r2, 0
001c78  930b7805  setlt.u r23, r16, r23
001c7c  37d00b00  beq r23, zero, 20
001c80  db040000  j 36
001c84  971c3100  or r25, r2, r3
001c88  930b7805  setlt.u r23, r16, r23
001c8c  3be00b00  bneq r23, zero, 24
001c90  9b4b0101  srli r23, r2, 16
001c94  9b8b1b00  andi r23, r23, 1
001c98  0b117111  add.s r2, r2, r23
001c9c  0b11f110  add.s r2, r2, r15
001ca0  970ca101  and r25, r2, r26
001ca4  13016805  setlt.u r2, r16, r22
001ca8  bb300100  bneq r2, zero, 44
001cac  9b400901  srli r1, r18, 16
001cb0  9b801000  andi r1, r1, 1
001cb4  8b101910  add.s r1, r18, r1
001cb8  8b90f010  add.s r1, r1, r15
001cbc  9780a001  and r1, r1, r26
001cc0  1301c804  setlt.u r2, r16, r12
001cc4  37600100  beq r2, zero, 24
001cc8  1301e804  setlt.u r2, r16, r14
001ccc  3b6c01fe  bneq r2, zero, -232
001cd0  5b050000  j 40
001cd4  1301c804  setlt.u r2, r16, r12
001cd8  bb4f01fe  bneq r2, zero, -16
001cdc  1b410c01  srli r2, r24, 16
001ce0  1b011100  andi r2, r2, 1
001ce4  0b112c10  add.s r2, r24, r2
001ce8  0b11f110  add.s r2, r2, r15
001cec  9708a101  and r17, r2, r26
001cf0  1301e804  setlt.u r2, r16, r14
001cf4  bb4b01fe  bneq r2, zero, -272
001cf8  1bc10601  srli r2, r13, 16
001cfc  1b011100  andi r2, r2, 1
001d00  0b912610  add.s r2, r13, r2
001d04  0b11f110  add.s r2, r2, r15
001d08  9704a101  and r9, r2, r26
001d0c  5bdbffff  j -296
001d10  00340002  core_id r8
001d14  00200100  mfence { sm }
001d18  e3405fff  loadli.w r1,  -84(r30)
001d1c  bba70002  bneq r1, zero, 1512
001d20  9f500000  addli r1, zero, 5
001d24  3b3f1402  bneq r8, r1, 1996
001d28  9f00a000  addli r1, zero, 80
001d2c  3d000000  xfence
001d30  00a00300  mfence { lm, sm, gm }
001d34  33820028  zext_int2long r[5:6], r1
001d38  db030000  j 28
001d3c  eb508ffe  load.d r[2:3], -24(r30)
001d40  6b520ffe  load.d r[5:6], -32(r30)
001d44  9f740000  addli r9, zero, 7
001d48  93201204  setlt.ul r1, r[5:6], r[2:3]
001d4c  27120200  addli.d r[5:6], r[5:6], 1
001d50  b7d60000  beq r1, zero, 436
001d54  73304ffe  store.d r[5:6], -32(r30)
001d58  97329202  sll.d r[6:7], r[5:6], r9
001d5c  bbd1ba01  bneq r21, r27, 116
001d60  b3000028  zext_int2long r[2:3], zero
001d64  5b060000  j 48
001d68  9b430401  srli r7, r8, 16
001d6c  9b831300  andi r7, r7, 1
001d70  8b137410  add.s r7, r8, r7
001d74  8b93f310  add.s r7, r7, r15
001d78  9783a301  and r7, r7, r26
001d7c  6b548fff  load.d r[9:10], -8(r30)
001d80  0b924a10  add.s r4, r21, r4
001d84  73607200  stores.w r7, 0(r4)
001d88  13a48004  setlt.ul r8, r[2:3], r[9:10]
001d8c  a7900000  addli.d r[2:3], r[2:3], 1
001d90  b73e04fe  beq r8, zero, -84
001d94  8ba35010  add.ul r[8:9], r[2:3], r[6:7]
001d98  1bb22300  slli r4, r7, 2
001d9c  8b934d10  add.s r7, r27, r4
001da0  6fc40300  loads.w r8, 0(r7)
001da4  97043401  and r9, r8, r19
001da8  93039e04  setlt.u r7, r28, r9
001dac  3bd00300  bneq r7, zero, 20
001db0  9f030400  addli r7, r8, 0
001db4  93049804  setlt.u r9, r16, r9
001db8  3b9f04fe  bneq r9, zero, -60
001dbc  dbf5ffff  j -84
001dc0  97133400  or r7, r8, r3
001dc4  93049804  setlt.u r9, r16, r9
001dc8  bbde04fe  bneq r9, zero, -76
001dcc  dbf3ffff  j -100
001dd0  b3030028  zext_int2long r[8:9], zero
001dd4  db040000  j 36
001dd8  a7c30300  addli.d r[8:9], r[8:9], 4
001ddc  0b924a10  add.s r4, r21, r4
001de0  13a1a300  seteq.d r2, r[8:9], r[11:12]
001de4  73669200  stores.w r9, 12(r4)
001de8  73641201  stores.w r17, 8(r4)
001dec  73621200  stores.w r1, 4(r4)
001df0  73609201  stores.w r25, 0(r4)
001df4  3b2d01fe  bneq r2, zero, -184
001df8  8ba05310  add.ul r[2:3], r[8:9], r[6:7]
001dfc  1bb22000  slli r4, r1, 2
001e00  0b914d10  add.s r2, r27, r4
001e04  ef46c100  loads.w r13, 12(r2)
001e08  17873601  and r14, r13, r19
001e0c  9300ee04  setlt.u r1, r28, r14
001e10  3bb00000  bneq r1, zero, 12
001e14  9f840600  addli r9, r13, 0
001e18  5b010000  j 8
001e1c  97943600  or r9, r13, r3
001e20  6f4c8100  loads.w r24, 8(r2)
001e24  17063c01  and r12, r24, r19
001e28  9300ce04  setlt.u r1, r28, r12
001e2c  3bb00000  bneq r1, zero, 12
001e30  9f080c00  addli r17, r24, 0
001e34  5b010000  j 8
001e38  97183c00  or r17, r24, r3
001e3c  6f494100  loads.w r18, 4(r2)
001e40  170b3901  and r22, r18, r19
001e44  93006e05  setlt.u r1, r28, r22
001e48  3bb00000  bneq r1, zero, 12
001e4c  9f000900  addli r1, r18, 0
001e50  5b010000  j 8
001e54  97103900  or r1, r18, r3
001e58  6f410100  loads.w r2, 0(r2)
001e5c  970b3101  and r23, r2, r19
001e60  930c7e05  setlt.u r25, r28, r23
001e64  3bd00c00  bneq r25, zero, 20
001e68  9f0c0100  addli r25, r2, 0
001e6c  930b7805  setlt.u r23, r16, r23
001e70  37d00b00  beq r23, zero, 20
001e74  db040000  j 36
001e78  971c3100  or r25, r2, r3
001e7c  930b7805  setlt.u r23, r16, r23
001e80  3be00b00  bneq r23, zero, 24
001e84  9b4b0101  srli r23, r2, 16
001e88  9b8b1b00  andi r23, r23, 1
001e8c  0b117111  add.s r2, r2, r23
001e90  0b11f110  add.s r2, r2, r15
001e94  970ca101  and r25, r2, r26
001e98  13016805  setlt.u r2, r16, r22
001e9c  bb300100  bneq r2, zero, 44
001ea0  9b400901  srli r1, r18, 16
001ea4  9b801000  andi r1, r1, 1
001ea8  8b101910  add.s r1, r18, r1
001eac  8b90f010  add.s r1, r1, r15
001eb0  9780a001  and r1, r1, r26
001eb4  1301c804  setlt.u r2, r16, r12
001eb8  37600100  beq r2, zero, 24
001ebc  1301e804  setlt.u r2, r16, r14
001ec0  3b6c01fe  bneq r2, zero, -232
001ec4  5b050000  j 40
001ec8  1301c804  setlt.u r2, r16, r12
001ecc  bb4f01fe  bneq r2, zero, -16
001ed0  1b410c01  srli r2, r24, 16
001ed4  1b011100  andi r2, r2, 1
001ed8  0b112c10  add.s r2, r24, r2
001edc  0b11f110  add.s r2, r2, r15
001ee0  9708a101  and r17, r2, r26
001ee4  1301e804  setlt.u r2, r16, r14
001ee8  bb4b01fe  bneq r2, zero, -272
001eec  1bc10601  srli r2, r13, 16
001ef0  1b011100  andi r2, r2, 1
001ef4  0b912610  add.s r2, r13, r2
001ef8  0b11f110  add.s r2, r2, r15
001efc  9704a101  and r9, r2, r26
001f00  5bdbffff  j -296
001f04  00340002  core_id r8
001f08  00200100  mfence { sm }
001f0c  9f600000  addli r1, zero, 6
001f10  b7271402  beq r8, r1, 1512
001f14  e3006fff  loadli.w r1,  -80(r30)
001f18  3bbf0002  bneq r1, zero, 1996
001f1c  db350100  j 2476
001f20  3d000000  xfence
001f24  33020028  zext_int2long r[5:6], zero
001f28  00a00300  mfence { lm, sm, gm }
001f2c  db030000  j 28
001f30  eb508ffb  load.d r[2:3], -72(r30)
001f34  6b520ffc  load.d r[5:6], -64(r30)
001f38  9f740000  addli r9, zero, 7
001f3c  93201204  setlt.ul r1, r[5:6], r[2:3]
001f40  27120200  addli.d r[5:6], r[5:6], 1
001f44  b7d60000  beq r1, zero, 436
001f48  97339202  sll.d r[8:9], r[5:6], r9
001f4c  73304ffc  store.d r[5:6], -64(r30)
001f50  bbd1ba01  bneq r21, r27, 116
001f54  b3000028  zext_int2long r[2:3], zero
001f58  5b060000  j 48
001f5c  9b420301  srli r5, r6, 16
001f60  9b821200  andi r5, r5, 1
001f64  8b125310  add.s r5, r6, r5
001f68  8b92f210  add.s r5, r5, r15
001f6c  9782a201  and r5, r5, r26
001f70  6b568fff  load.d r[13:14], -8(r30)
001f74  0b924a10  add.s r4, r21, r4
001f78  73605200  stores.w r5, 0(r4)
001f7c  13a3c004  setlt.ul r6, r[2:3], r[13:14]
001f80  a7900000  addli.d r[2:3], r[2:3], 1
001f84  b73e03fe  beq r6, zero, -84
001f88  0ba27010  add.ul r[5:6], r[2:3], r[8:9]
001f8c  1b322200  slli r4, r4, 2
001f90  8b924d10  add.s r5, r27, r4
001f94  6fc30200  loads.w r6, 0(r5)
001f98  97043301  and r9, r6, r19
001f9c  93029e04  setlt.u r5, r28, r9
001fa0  3bd00200  bneq r5, zero, 20
001fa4  9f020300  addli r5, r6, 0
001fa8  93049804  setlt.u r9, r16, r9
001fac  3b9f04fe  bneq r9, zero, -60
001fb0  dbf5ffff  j -84
001fb4  97123300  or r5, r6, r3
001fb8  93049804  setlt.u r9, r16, r9
001fbc  bbde04fe  bneq r9, zero, -76
001fc0  dbf3ffff  j -100
001fc4  330c0028  zext_int2long r[25:26], zero
001fc8  db040000  j 36
001fcc  274c0c00  addli.d r[25:26], r[25:26], 4
001fd0  0b924a10  add.s r4, r21, r4
001fd4  9322ac00  seteq.d r5, r[25:26], r[11:12]
001fd8  73661201  stores.w r17, 12(r4)
001fdc  73641200  stores.w r1, 8(r4)
001fe0  7362d200  stores.w r13, 4(r4)
001fe4  73602200  stores.w r2, 0(r4)
001fe8  3bad02fe  bneq r5, zero, -184
001fec  8b207c10  add.ul r[2:3], r[25:26], r[8:9]
001ff0  1bb22000  slli r4, r1, 2
001ff4  0b914d10  add.s r2, r27, r4
001ff8  ef44c100  loads.w r9, 12(r2)
001ffc  17893401  and r18, r9, r19
002000  93002e05  setlt.u r1, r28, r18
002004  3bb00000  bneq r1, zero, 12
002008  9f880400  addli r17, r9, 0
00200c  5b010000  j 8
002010  97983400  or r17, r9, r3
002014  ef428100  loads.w r5, 8(r2)
002018  17863201  and r12, r5, r19
00201c  9300ce04  setlt.u r1, r28, r12
002020  3bb00000  bneq r1, zero, 12
002024  9f800200  addli r1, r5, 0
002028  5b010000  j 8
00202c  97903200  or r1, r5, r3
002030  6f434100  loads.w r6, 4(r2)
002034  17073301  and r14, r6, r19
002038  9306ee04  setlt.u r13, r28, r14
00203c  3bb00600  bneq r13, zero, 12
002040  9f060300  addli r13, r6, 0
002044  5b010000  j 8
002048  97163300  or r13, r6, r3
00204c  6f4b0100  loads.w r22, 0(r2)
002050  970b3b01  and r23, r22, r19
002054  13017e05  setlt.u r2, r28, r23
002058  3b500100  bneq r2, zero, 20
00205c  1f010b00  addli r2, r22, 0
002060  930b7805  setlt.u r23, r16, r23
002064  37d00b00  beq r23, zero, 20
002068  db040000  j 36
00206c  17113b00  or r2, r22, r3
002070  930b7805  setlt.u r23, r16, r23
002074  3be00b00  bneq r23, zero, 24
002078  1b410b01  srli r2, r22, 16
00207c  1b011100  andi r2, r2, 1
002080  0b112b10  add.s r2, r22, r2
002084  0b11f110  add.s r2, r2, r15
002088  1701a101  and r2, r2, r26
00208c  1307e804  setlt.u r14, r16, r14
002090  bb300700  bneq r14, zero, 44
002094  9b460301  srli r13, r6, 16
002098  9b861600  andi r13, r13, 1
00209c  0b13d310  add.s r6, r6, r13
0020a0  0b13f310  add.s r6, r6, r15
0020a4  9706a301  and r13, r6, r26
0020a8  1303c804  setlt.u r6, r16, r12
0020ac  37600300  beq r6, zero, 24
0020b0  93022805  setlt.u r5, r16, r18
0020b4  3bec02fe  bneq r5, zero, -232
0020b8  5b050000  j 40
0020bc  1303c804  setlt.u r6, r16, r12
0020c0  bb4f03fe  bneq r6, zero, -16
0020c4  9bc00201  srli r1, r5, 16
0020c8  9b801000  andi r1, r1, 1
0020cc  8b901210  add.s r1, r5, r1
0020d0  8b90f010  add.s r1, r1, r15
0020d4  9780a001  and r1, r1, r26
0020d8  93022805  setlt.u r5, r16, r18
0020dc  bbcb02fe  bneq r5, zero, -272
0020e0  9bc20401  srli r5, r9, 16
0020e4  9b821200  andi r5, r5, 1
0020e8  8b925410  add.s r5, r9, r5
0020ec  8b92f210  add.s r5, r5, r15
0020f0  9788a201  and r17, r5, r26
0020f4  5bdbffff  j -296
0020f8  00340002  core_id r8
0020fc  00200100  mfence { sm }
002100  9f100000  addli r1, zero, 1
002104  b77014fc  beq r8, r1, -1988
002108  e3005fff  loadli.w r1,  -88(r30)
00210c  b78800fc  beq r1, zero, -1504
002110  9f004000  addli r1, zero, 32
002114  3d000000  xfence
002118  00a00300  mfence { lm, sm, gm }
00211c  33820028  zext_int2long r[5:6], r1
002120  db030000  j 28
002124  eb500ffd  load.d r[2:3], -48(r30)
002128  6b528ffc  load.d r[5:6], -56(r30)
00212c  9f740000  addli r9, zero, 7
002130  93201204  setlt.ul r1, r[5:6], r[2:3]
002134  27120200  addli.d r[5:6], r[5:6], 1
002138  b7d60000  beq r1, zero, 436
00213c  97339202  sll.d r[8:9], r[5:6], r9
002140  73344ffc  store.d r[5:6], -56(r30)
002144  bbd1ba01  bneq r21, r27, 116
002148  b3000028  zext_int2long r[2:3], zero
00214c  5b060000  j 48
002150  9b420301  srli r5, r6, 16
002154  9b821200  andi r5, r5, 1
002158  8b125310  add.s r5, r6, r5
00215c  8b92f210  add.s r5, r5, r15
002160  9782a201  and r5, r5, r26
002164  6b568fff  load.d r[13:14], -8(r30)
002168  0b924a10  add.s r4, r21, r4
00216c  73605200  stores.w r5, 0(r4)
002170  13a3c004  setlt.ul r6, r[2:3], r[13:14]
002174  a7900000  addli.d r[2:3], r[2:3], 1
002178  b73e03fe  beq r6, zero, -84
00217c  0ba27010  add.ul r[5:6], r[2:3], r[8:9]
002180  1b322200  slli r4, r4, 2
002184  8b924d10  add.s r5, r27, r4
002188  6fc30200  loads.w r6, 0(r5)
00218c  97043301  and r9, r6, r19
002190  93029e04  setlt.u r5, r28, r9
002194  3bd00200  bneq r5, zero, 20
002198  9f020300  addli r5, r6, 0
00219c  93049804  setlt.u r9, r16, r9
0021a0  3b9f04fe  bneq r9, zero, -60
0021a4  dbf5ffff  j -84
0021a8  97123300  or r5, r6, r3
0021ac  93049804  setlt.u r9, r16, r9
0021b0  bbde04fe  bneq r9, zero, -76
0021b4  dbf3ffff  j -100
0021b8  b3060028  zext_int2long r[14:15], zero
0021bc  db040000  j 36
0021c0  a7c60600  addli.d r[14:15], r[14:15], 4
0021c4  0b924a10  add.s r4, r21, r4
0021c8  13a1a600  seteq.d r2, r[14:15], r[11:12]
0021cc  73669200  stores.w r9, 12(r4)
0021d0  73645200  stores.w r5, 8(r4)
0021d4  73621200  stores.w r1, 4(r4)
0021d8  73609201  stores.w r25, 0(r4)
0021dc  3b2d01fe  bneq r2, zero, -184
0021e0  8ba07610  add.ul r[2:3], r[14:15], r[8:9]
0021e4  1bb22000  slli r4, r1, 2
0021e8  0b914d10  add.s r2, r27, r4
0021ec  ef48c100  loads.w r17, 12(r2)
0021f0  17893801  and r18, r17, r19
0021f4  93002e05  setlt.u r1, r28, r18
0021f8  3bb00000  bneq r1, zero, 12
0021fc  9f840800  addli r9, r17, 0
002200  5b010000  j 8
002204  97943800  or r9, r17, r3
002208  6f4c8100  loads.w r24, 8(r2)
00220c  17063c01  and r12, r24, r19
002210  9300ce04  setlt.u r1, r28, r12
002214  3bb00000  bneq r1, zero, 12
002218  9f020c00  addli r5, r24, 0
00221c  5b010000  j 8
002220  97123c00  or r5, r24, r3
002224  6f434100  loads.w r6, 4(r2)
002228  170b3301  and r22, r6, r19
00222c  93006e05  setlt.u r1, r28, r22
002230  3bb00000  bneq r1, zero, 12
002234  9f000300  addli r1, r6, 0
002238  5b010000  j 8
00223c  97103300  or r1, r6, r3
002240  6f410100  loads.w r2, 0(r2)
002244  970b3101  and r23, r2, r19
002248  930c7e05  setlt.u r25, r28, r23
00224c  3bd00c00  bneq r25, zero, 20
002250  9f0c0100  addli r25, r2, 0
002254  930b7805  setlt.u r23, r16, r23
002258  37d00b00  beq r23, zero, 20
00225c  db040000  j 36
002260  971c3100  or r25, r2, r3
002264  930b7805  setlt.u r23, r16, r23
002268  3be00b00  bneq r23, zero, 24
00226c  9b4b0101  srli r23, r2, 16
002270  9b8b1b00  andi r23, r23, 1
002274  0b117111  add.s r2, r2, r23
002278  0b11f110  add.s r2, r2, r15
00227c  970ca101  and r25, r2, r26
002280  13016805  setlt.u r2, r16, r22
002284  bb300100  bneq r2, zero, 44
002288  9b400301  srli r1, r6, 16
00228c  9b801000  andi r1, r1, 1
002290  8b101310  add.s r1, r6, r1
002294  8b90f010  add.s r1, r1, r15
002298  9780a001  and r1, r1, r26
00229c  1301c804  setlt.u r2, r16, r12
0022a0  37600100  beq r2, zero, 24
0022a4  13012805  setlt.u r2, r16, r18
0022a8  3b6c01fe  bneq r2, zero, -232
0022ac  5b050000  j 40
0022b0  1301c804  setlt.u r2, r16, r12
0022b4  bb4f01fe  bneq r2, zero, -16
0022b8  1b410c01  srli r2, r24, 16
0022bc  1b011100  andi r2, r2, 1
0022c0  0b112c10  add.s r2, r24, r2
0022c4  0b11f110  add.s r2, r2, r15
0022c8  9702a101  and r5, r2, r26
0022cc  13012805  setlt.u r2, r16, r18
0022d0  bb4b01fe  bneq r2, zero, -272
0022d4  1bc10801  srli r2, r17, 16
0022d8  1b011100  andi r2, r2, 1
0022dc  0b912810  add.s r2, r17, r2
0022e0  0b11f110  add.s r2, r2, r15
0022e4  9704a101  and r9, r2, r26
0022e8  5bdbffff  j -296
0022ec  00340002  core_id r8
0022f0  00200100  mfence { sm }
0022f4  9f300000  addli r1, zero, 3
0022f8  b77014fc  beq r8, r1, -1988
0022fc  e3405fff  loadli.w r1,  -84(r30)
002300  b78800fc  beq r1, zero, -1504
002304  9f008000  addli r1, zero, 64
002308  3d000000  xfence
00230c  00a00300  mfence { lm, sm, gm }
002310  33820028  zext_int2long r[5:6], r1
002314  db030000  j 28
002318  eb500ffe  load.d r[2:3], -32(r30)
00231c  6b528ffd  load.d r[5:6], -40(r30)
002320  9f740000  addli r9, zero, 7
002324  93201204  setlt.ul r1, r[5:6], r[2:3]
002328  27120200  addli.d r[5:6], r[5:6], 1
00232c  b7d60000  beq r1, zero, 436
002330  733c4ffc  store.d r[5:6], -40(r30)
002334  97329202  sll.d r[6:7], r[5:6], r9
002338  bbd1ba01  bneq r21, r27, 116
00233c  b3000028  zext_int2long r[2:3], zero
002340  5b060000  j 48
002344  9b430401  srli r7, r8, 16
002348  9b831300  andi r7, r7, 1
00234c  8b137410  add.s r7, r8, r7
002350  8b93f310  add.s r7, r7, r15
002354  9783a301  and r7, r7, r26
002358  6b548fff  load.d r[9:10], -8(r30)
00235c  0b924a10  add.s r4, r21, r4
002360  73607200  stores.w r7, 0(r4)
002364  13a48004  setlt.ul r8, r[2:3], r[9:10]
002368  a7900000  addli.d r[2:3], r[2:3], 1
00236c  b73e04fe  beq r8, zero, -84
002370  8ba35010  add.ul r[8:9], r[2:3], r[6:7]
002374  1bb22300  slli r4, r7, 2
002378  8b934d10  add.s r7, r27, r4
00237c  6fc40300  loads.w r8, 0(r7)
002380  97043401  and r9, r8, r19
002384  93039e04  setlt.u r7, r28, r9
002388  3bd00300  bneq r7, zero, 20
00238c  9f030400  addli r7, r8, 0
002390  93049804  setlt.u r9, r16, r9
002394  3b9f04fe  bneq r9, zero, -60
002398  dbf5ffff  j -84
00239c  97133400  or r7, r8, r3
0023a0  93049804  setlt.u r9, r16, r9
0023a4  bbde04fe  bneq r9, zero, -76
0023a8  dbf3ffff  j -100
0023ac  b3030028  zext_int2long r[8:9], zero
0023b0  db040000  j 36
0023b4  a7c30300  addli.d r[8:9], r[8:9], 4
0023b8  0b924a10  add.s r4, r21, r4
0023bc  13a1a300  seteq.d r2, r[8:9], r[11:12]
0023c0  73669200  stores.w r9, 12(r4)
0023c4  73641201  stores.w r17, 8(r4)
0023c8  73621200  stores.w r1, 4(r4)
0023cc  73609201  stores.w r25, 0(r4)
0023d0  3b2d01fe  bneq r2, zero, -184
0023d4  8ba05310  add.ul r[2:3], r[8:9], r[6:7]
0023d8  1bb22000  slli r4, r1, 2
0023dc  0b914d10  add.s r2, r27, r4
0023e0  ef46c100  loads.w r13, 12(r2)
0023e4  17873601  and r14, r13, r19
0023e8  9300ee04  setlt.u r1, r28, r14
0023ec  3bb00000  bneq r1, zero, 12
0023f0  9f840600  addli r9, r13, 0
0023f4  5b010000  j 8
0023f8  97943600  or r9, r13, r3
0023fc  6f4c8100  loads.w r24, 8(r2)
002400  17063c01  and r12, r24, r19
002404  9300ce04  setlt.u r1, r28, r12
002408  3bb00000  bneq r1, zero, 12
00240c  9f080c00  addli r17, r24, 0
002410  5b010000  j 8
002414  97183c00  or r17, r24, r3
002418  6f494100  loads.w r18, 4(r2)
00241c  170b3901  and r22, r18, r19
002420  93006e05  setlt.u r1, r28, r22
002424  3bb00000  bneq r1, zero, 12
002428  9f000900  addli r1, r18, 0
00242c  5b010000  j 8
002430  97103900  or r1, r18, r3
002434  6f410100  loads.w r2, 0(r2)
002438  970b3101  and r23, r2, r19
00243c  930c7e05  setlt.u r25, r28, r23
002440  3bd00c00  bneq r25, zero, 20
002444  9f0c0100  addli r25, r2, 0
002448  930b7805  setlt.u r23, r16, r23
00244c  37d00b00  beq r23, zero, 20
002450  db040000  j 36
002454  971c3100  or r25, r2, r3
002458  930b7805  setlt.u r23, r16, r23
00245c  3be00b00  bneq r23, zero, 24
002460  9b4b0101  srli r23, r2, 16
002464  9b8b1b00  andi r23, r23, 1
002468  0b117111  add.s r2, r2, r23
00246c  0b11f110  add.s r2, r2, r15
002470  970ca101  and r25, r2, r26
002474  13016805  setlt.u r2, r16, r22
002478  bb300100  bneq r2, zero, 44
00247c  9b400901  srli r1, r18, 16
002480  9b801000  andi r1, r1, 1
002484  8b101910  add.s r1, r18, r1
002488  8b90f010  add.s r1, r1, r15
00248c  9780a001  and r1, r1, r26
002490  1301c804  setlt.u r2, r16, r12
002494  37600100  beq r2, zero, 24
002498  1301e804  setlt.u r2, r16, r14
00249c  3b6c01fe  bneq r2, zero, -232
0024a0  5b050000  j 40
0024a4  1301c804  setlt.u r2, r16, r12
0024a8  bb4f01fe  bneq r2, zero, -16
0024ac  1b410c01  srli r2, r24, 16
0024b0  1b011100  andi r2, r2, 1
0024b4  0b112c10  add.s r2, r24, r2
0024b8  0b11f110  add.s r2, r2, r15
0024bc  9708a101  and r17, r2, r26
0024c0  1301e804  setlt.u r2, r16, r14
0024c4  bb4b01fe  bneq r2, zero, -272
0024c8  1bc10601  srli r2, r13, 16
0024cc  1b011100  andi r2, r2, 1
0024d0  0b912610  add.s r2, r13, r2
0024d4  0b11f110  add.s r2, r2, r15
0024d8  9704a101  and r9, r2, r26
0024dc  5bdbffff  j -296
0024e0  00340002  core_id r8
0024e4  00200100  mfence { sm }
0024e8  9f500000  addli r1, zero, 5
0024ec  b77014fc  beq r8, r1, -1988
0024f0  9f600000  addli r1, zero, 6
0024f4  bb0814fc  bneq r8, r1, -1504
0024f8  9f00c000  addli r1, zero, 96
0024fc  3d000000  xfence
002500  00a00300  mfence { lm, sm, gm }
002504  33820028  zext_int2long r[5:6], r1
002508  db030000  j 28
00250c  eb500fff  load.d r[2:3], -16(r30)
002510  6b528ffe  load.d r[5:6], -24(r30)
002514  9f740000  addli r9, zero, 7
002518  93201204  setlt.ul r1, r[5:6], r[2:3]
00251c  27120200  addli.d r[5:6], r[5:6], 1
002520  b7d60000  beq r1, zero, 436
002524  73344ffe  store.d r[5:6], -24(r30)
002528  97329202  sll.d r[6:7], r[5:6], r9
00252c  bbd1ba01  bneq r21, r27, 116
002530  b3000028  zext_int2long r[2:3], zero
002534  5b060000  j 48
002538  9b430401  srli r7, r8, 16
00253c  9b831300  andi r7, r7, 1
002540  8b137410  add.s r7, r8, r7
002544  8b93f310  add.s r7, r7, r15
002548  9783a301  and r7, r7, r26
00254c  6b548fff  load.d r[9:10], -8(r30)
002550  0b924a10  add.s r4, r21, r4
002554  73607200  stores.w r7, 0(r4)
002558  13a48004  setlt.ul r8, r[2:3], r[9:10]
00255c  a7900000  addli.d r[2:3], r[2:3], 1
002560  b73e04fe  beq r8, zero, -84
002564  8ba35010  add.ul r[8:9], r[2:3], r[6:7]
002568  1bb22300  slli r4, r7, 2
00256c  8b934d10  add.s r7, r27, r4
002570  6fc40300  loads.w r8, 0(r7)
002574  97043401  and r9, r8, r19
002578  93039e04  setlt.u r7, r28, r9
00257c  3bd00300  bneq r7, zero, 20
002580  9f030400  addli r7, r8, 0
002584  93049804  setlt.u r9, r16, r9
002588  3b9f04fe  bneq r9, zero, -60
00258c  dbf5ffff  j -84
002590  97133400  or r7, r8, r3
002594  93049804  setlt.u r9, r16, r9
002598  bbde04fe  bneq r9, zero, -76
00259c  dbf3ffff  j -100
0025a0  b3030028  zext_int2long r[8:9], zero
0025a4  db040000  j 36
0025a8  a7c30300  addli.d r[8:9], r[8:9], 4
0025ac  0b924a10  add.s r4, r21, r4
0025b0  13a1a300  seteq.d r2, r[8:9], r[11:12]
0025b4  73669200  stores.w r9, 12(r4)
0025b8  73641201  stores.w r17, 8(r4)
0025bc  73621200  stores.w r1, 4(r4)
0025c0  73609201  stores.w r25, 0(r4)
0025c4  3b2d01fe  bneq r2, zero, -184
0025c8  8ba05310  add.ul r[2:3], r[8:9], r[6:7]
0025cc  1bb22000  slli r4, r1, 2
0025d0  0b914d10  add.s r2, r27, r4
0025d4  ef46c100  loads.w r13, 12(r2)
0025d8  17873601  and r14, r13, r19
0025dc  9300ee04  setlt.u r1, r28, r14
0025e0  3bb00000  bneq r1, zero, 12
0025e4  9f840600  addli r9, r13, 0
0025e8  5b010000  j 8
0025ec  97943600  or r9, r13, r3
0025f0  6f4c8100  loads.w r24, 8(r2)
0025f4  17063c01  and r12, r24, r19
0025f8  9300ce04  setlt.u r1, r28, r12
0025fc  3bb00000  bneq r1, zero, 12
002600  9f080c00  addli r17, r24, 0
002604  5b010000  j 8
002608  97183c00  or r17, r24, r3
00260c  6f494100  loads.w r18, 4(r2)
002610  170b3901  and r22, r18, r19
002614  93006e05  setlt.u r1, r28, r22
002618  3bb00000  bneq r1, zero, 12
00261c  9f000900  addli r1, r18, 0
002620  5b010000  j 8
002624  97103900  or r1, r18, r3
002628  6f410100  loads.w r2, 0(r2)
00262c  970b3101  and r23, r2, r19
002630  930c7e05  setlt.u r25, r28, r23
002634  3bd00c00  bneq r25, zero, 20
002638  9f0c0100  addli r25, r2, 0
00263c  930b7805  setlt.u r23, r16, r23
002640  37d00b00  beq r23, zero, 20
002644  db040000  j 36
002648  971c3100  or r25, r2, r3
00264c  930b7805  setlt.u r23, r16, r23
002650  3be00b00  bneq r23, zero, 24
002654  9b4b0101  srli r23, r2, 16
002658  9b8b1b00  andi r23, r23, 1
00265c  0b117111  add.s r2, r2, r23
002660  0b11f110  add.s r2, r2, r15
002664  970ca101  and r25, r2, r26
002668  13016805  setlt.u r2, r16, r22
00266c  bb300100  bneq r2, zero, 44
002670  9b400901  srli r1, r18, 16
002674  9b801000  andi r1, r1, 1
002678  8b101910  add.s r1, r18, r1
00267c  8b90f010  add.s r1, r1, r15
002680  9780a001  and r1, r1, r26
002684  1301c804  setlt.u r2, r16, r12
002688  37600100  beq r2, zero, 24
00268c  1301e804  setlt.u r2, r16, r14
002690  3b6c01fe  bneq r2, zero, -232
002694  5b050000  j 40
002698  1301c804  setlt.u r2, r16, r12
00269c  bb4f01fe  bneq r2, zero, -16
0026a0  1b410c01  srli r2, r24, 16
0026a4  1b011100  andi r2, r2, 1
0026a8  0b112c10  add.s r2, r24, r2
0026ac  0b11f110  add.s r2, r2, r15
0026b0  9708a101  and r17, r2, r26
0026b4  1301e804  setlt.u r2, r16, r14
0026b8  bb4b01fe  bneq r2, zero, -272
0026bc  1bc10601  srli r2, r13, 16
0026c0  1b011100  andi r2, r2, 1
0026c4  0b912610  add.s r2, r13, r2
0026c8  0b11f110  add.s r2, r2, r15
0026cc  9704a101  and r9, r2, r26
0026d0  5bdbffff  j -296
0026d4  00340002  core_id r8
0026d8  00200100  mfence { sm }
0026dc  e3006fff  loadli.w r1,  -80(r30)
0026e0  b7a70000  beq r1, zero, 488
0026e4  9f00e000  addli r1, zero, 112
0026e8  3d000000  xfence
0026ec  00a00300  mfence { lm, sm, gm }
0026f0  33820028  zext_int2long r[5:6], r1
0026f4  db030000  j 28
0026f8  eb508fff  load.d r[2:3], -8(r30)
0026fc  6b520fff  load.d r[5:6], -16(r30)
002700  9f740000  addli r9, zero, 7
002704  93201204  setlt.ul r1, r[5:6], r[2:3]
002708  27120200  addli.d r[5:6], r[5:6], 1
00270c  b7d60000  beq r1, zero, 436
002710  73384ffe  store.d r[5:6], -16(r30)
002714  97329202  sll.d r[6:7], r[5:6], r9
002718  bbd1ba01  bneq r21, r27, 116
00271c  b3000028  zext_int2long r[2:3], zero
002720  5b060000  j 48
002724  9b430401  srli r7, r8, 16
002728  9b831300  andi r7, r7, 1
00272c  8b137410  add.s r7, r8, r7
002730  8b93f310  add.s r7, r7, r15
002734  9783a301  and r7, r7, r26
002738  6b548fff  load.d r[9:10], -8(r30)
00273c  0b924a10  add.s r4, r21, r4
002740  73607200  stores.w r7, 0(r4)
002744  13a48004  setlt.ul r8, r[2:3], r[9:10]
002748  a7900000  addli.d r[2:3], r[2:3], 1
00274c  b73e04fe  beq r8, zero, -84
002750  8ba35010  add.ul r[8:9], r[2:3], r[6:7]
002754  1bb22300  slli r4, r7, 2
002758  8b934d10  add.s r7, r27, r4
00275c  6fc40300  loads.w r8, 0(r7)
002760  97043401  and r9, r8, r19
002764  93039e04  setlt.u r7, r28, r9
002768  3bd00300  bneq r7, zero, 20
00276c  9f030400  addli r7, r8, 0
002770  93049804  setlt.u r9, r16, r9
002774  3b9f04fe  bneq r9, zero, -60
002778  dbf5ffff  j -84
00277c  97133400  or r7, r8, r3
002780  93049804  setlt.u r9, r16, r9
002784  bbde04fe  bneq r9, zero, -76
002788  dbf3ffff  j -100
00278c  b3030028  zext_int2long r[8:9], zero
002790  db040000  j 36
002794  a7c30300  addli.d r[8:9], r[8:9], 4
002798  0b924a10  add.s r4, r21, r4
00279c  13a1a300  seteq.d r2, r[8:9], r[11:12]
0027a0  73669200  stores.w r9, 12(r4)
0027a4  73641201  stores.w r17, 8(r4)
0027a8  73621200  stores.w r1, 4(r4)
0027ac  73609201  stores.w r25, 0(r4)
0027b0  3b2d01fe  bneq r2, zero, -184
0027b4  8ba05310  add.ul r[2:3], r[8:9], r[6:7]
0027b8  1bb22000  slli r4, r1, 2
0027bc  0b914d10  add.s r2, r27, r4
0027c0  ef46c100  loads.w r13, 12(r2)
0027c4  17873601  and r14, r13, r19
0027c8  9300ee04  setlt.u r1, r28, r14
0027cc  3bb00000  bneq r1, zero, 12
0027d0  9f840600  addli r9, r13, 0
0027d4  5b010000  j 8
0027d8  97943600  or r9, r13, r3
0027dc  6f4c8100  loads.w r24, 8(r2)
0027e0  17063c01  and r12, r24, r19
0027e4  9300ce04  setlt.u r1, r28, r12
0027e8  3bb00000  bneq r1, zero, 12
0027ec  9f080c00  addli r17, r24, 0
0027f0  5b010000  j 8
0027f4  97183c00  or r17, r24, r3
0027f8  6f494100  loads.w r18, 4(r2)
0027fc  170b3901  and r22, r18, r19
002800  93006e05  setlt.u r1, r28, r22
002804  3bb00000  bneq r1, zero, 12
002808  9f000900  addli r1, r18, 0
00280c  5b010000  j 8
002810  97103900  or r1, r18, r3
002814  6f410100  loads.w r2, 0(r2)
002818  970b3101  and r23, r2, r19
00281c  930c7e05  setlt.u r25, r28, r23
002820  3bd00c00  bneq r25, zero, 20
002824  9f0c0100  addli r25, r2, 0
002828  930b7805  setlt.u r23, r16, r23
00282c  37d00b00  beq r23, zero, 20
002830  db040000  j 36
002834  971c3100  or r25, r2, r3
002838  930b7805  setlt.u r23, r16, r23
00283c  3be00b00  bneq r23, zero, 24
002840  9b4b0101  srli r23, r2, 16
002844  9b8b1b00  andi r23, r23, 1
002848  0b117111  add.s r2, r2, r23
00284c  0b11f110  add.s r2, r2, r15
002850  970ca101  and r25, r2, r26
002854  13016805  setlt.u r2, r16, r22
002858  bb300100  bneq r2, zero, 44
00285c  9b400901  srli r1, r18, 16
002860  9b801000  andi r1, r1, 1
002864  8b101910  add.s r1, r18, r1
002868  8b90f010  add.s r1, r1, r15
00286c  9780a001  and r1, r1, r26
002870  1301c804  setlt.u r2, r16, r12
002874  37600100  beq r2, zero, 24
002878  1301e804  setlt.u r2, r16, r14
00287c  3b6c01fe  bneq r2, zero, -232
002880  5b050000  j 40
002884  1301c804  setlt.u r2, r16, r12
002888  bb4f01fe  bneq r2, zero, -16
00288c  1b410c01  srli r2, r24, 16
002890  1b011100  andi r2, r2, 1
002894  0b112c10  add.s r2, r24, r2
002898  0b11f110  add.s r2, r2, r15
00289c  9708a101  and r17, r2, r26
0028a0  1301e804  setlt.u r2, r16, r14
0028a4  bb4b01fe  bneq r2, zero, -272
0028a8  1bc10601  srli r2, r13, 16
0028ac  1b011100  andi r2, r2, 1
0028b0  0b912610  add.s r2, r13, r2
0028b4  0b11f110  add.s r2, r2, r15
0028b8  9704a101  and r9, r2, r26
0028bc  5bdbffff  j -296
0028c0  00340002  core_id r8
0028c4  00200100  mfence { sm }
0028c8  9f70f001  addli r1, zero, 255
0028cc  1f370000  addli r14, zero, 3
0028d0  80a20004  csr_set csr5, r1
0028d4  00e00200  sync_core
0028d8  3765e4ec  beq r8, r14, -9896
0028dc  1f0b0001  addli r22, zero, 128
0028e0  9f0b2000  addli r23, zero, 16
0028e4  1f0c1000  addli r24, zero, 8
0028e8  9f6c0000  addli r25, zero, 6
0028ec  9f6d1000  addli r27, zero, 14
0028f0  9f500000  addli r1, zero, 5
0028f4  3b511400  bneq r8, r1, 84
0028f8  9f102000  addli r1, zero, 17
0028fc  1f220000  addli r4, zero, 2
002900  7d900000  xwait r1, 0
002904  9f100000  addli r1, zero, 1
002908  1d000200  lock zero, r4
00290c  8d000014  ew_cfg r1, zero, zero, 10
002910  ab00803f  lui r1, 260096
002914  0d000002  ew_cfg zero, zero, zero, 1
002918  8d100000  ewcoeff_cfg r1, zero, zero, 0
00291c  eb508ff5  load.d r[2:3], -168(r30)
002920  0d000104  ew_cfg zero, r2, zero, 2
002924  9f400000  addli r1, zero, 4
002928  8d000006  ew_cfg r1, zero, zero, 3
00292c  8d800026  ew_cfg r1, r1, zero, 19
002930  9f202000  addli r1, zero, 18
002934  ad8a5a01  dsmadd r21, r21, r21, 0
002938  0d000014  ew_cfg zero, zero, zero, 10
00293c  0d000026  ew_cfg zero, zero, zero, 19
002940  1d100200  unlock r4
002944  5b21fbff  j -9976
002948  3b2404ec  bneq r8, zero, -9976
00294c  e340effe  loadli.w r1,  -140(r30)
002950  1f232000  addli r6, zero, 18
002954  6b520ff8  load.d r[5:6], -128(r30)
002958  1f560000  addli r12, zero, 5
00295c  9f362000  addli r13, zero, 19
002960  9f140000  addli r9, zero, 1
002964  eb588f01  load.d r[18:19], 24(r30)
002968  7d100300  xwait r6, 0
00296c  6b538ff9  load.d r[7:8], -104(r30)
002970  1d000600  lock zero, r12
002974  9bb07000  slli r1, r1, 7
002978  1732d202  sll.d r[5:6], r[5:6], r13
00297c  95840400  dma_cfg r9, r9, zero, 0
002980  b3900028  sext_int2long r[2:3], r1
002984  0ba24810  add.ul r[5:6], r[18:19], r[5:6]
002988  0bb36040  min.sl r[7:8], r[2:3], r[7:8]
00298c  27030301  addli.d r[7:8], r[7:8], 128
002990  0b331348  max.sl r[7:8], r[7:8], r[2:3]
002994  8b301318  sub.sl r[2:3], r[7:8], r[2:3]
002998  6b538ff7  load.d r[7:8], -136(r30)
00299c  15800402  dma_cfg zero, r9, zero, 1
0029a0  8bb0a040  min.sl r[2:3], r[2:3], r[11:12]
0029a4  1f058000  addli r10, zero, 64
0029a8  0b226210  add.ul r[5:6], r[5:6], r[7:8]
0029ac  2b030600  lui r6, 96
0029b0  95020004  dma_cfg r5, zero, zero, 2
0029b4  1b130364  ori r6, r6, 1600
0029b8  eb588ff8  load.d r[18:19], -120(r30)
0029bc  0b136a10  add.s r6, r20, r6
0029c0  9ff33800  addli r7, r17, 31
0029c4  1502a306  dma_cfg r4, r6, r10, 3
0029c8  9bb21800  slli r5, r17, 1
0029cc  1f030020  addli r6, zero, 4096
0029d0  1bc25300  srli r4, r7, 5
0029d4  15054b08  dma_cfg r10, r22, r4, 4
0029d8  1b82e203  andi r4, r5, 62
0029dc  9f020004  addli r5, zero, 512
0029e0  1583120a  dma_cfg r6, r5, r1, 5
0029e4  15004010  dma_cfg zero, zero, r4, 8
0029e8  35000000  dma_run zero
0029ec  1500900a  dma_cfg zero, zero, r9, 5
0029f0  15000010  dma_cfg zero, zero, zero, 8
0029f4  1d100600  unlock r12
0029f8  7d800600  xsignal r13, 0
0029fc  db0afbff  j -10156
002a00  9f020000  addli r5, zero, 0
002a04  1f110000  addli r2, zero, 1
002a08  1f120000  addli r4, zero, 1
002a0c  1f058000  addli r10, zero, 64
002a10  1f331000  addli r6, zero, 11
002a14  7d900300  xwait r7, 0
002a18  7d100c00  xwait r24, 0
002a1c  7d100300  xwait r6, 0
002a20  1bb3e200  slli r6, r5, 14
002a24  9bb28200  slli r5, r5, 8
002a28  1d000100  lock zero, r2
002a2c  09056501  mm_cfg r10, r10, r22, 0
002a30  17131300  or r6, r6, r1
002a34  97924201  or r5, r5, r20
002a38  89832304  mm_cfg r7, r7, r2, 2
002a3c  a9826010  mm r5, r1, r6, 8
002a40  1b031200  andi r6, r4, 1
002a44  9f120000  addli r5, zero, 1
002a48  1f020000  addli r4, zero, 0
002a4c  1d100100  unlock r2
002a50  3b4f03fe  bneq r6, zero, -48
002a54  9f500000  addli r1, zero, 5
002a58  670b0ffe  storeli.w zero, -80(r30)
002a5c  7d800000  xsignal r1, 0
002a60  9f101000  addli r1, zero, 9
002a64  7d800000  xsignal r1, 0
002a68  9f100000  addli r1, zero, 1
002a6c  e74a1ffe  storeli.w r1, -84(r30)
002a70  9f201000  addli r1, zero, 10
002a74  7d800000  xsignal r1, 0
002a78  3b69e4ee  bneq r8, r14, -8616
002a7c  5bc9fbff  j -8632
002a80  e74a0ffe  storeli.w zero, -84(r30)
002a84  670b0ffe  storeli.w zero, -80(r30)
002a88  b778e4ee  beq r8, r14, -8644
002a8c  dbc8fbff  j -8636
002a90  7d000000  xsignal zero, 0
002a94  bb600400  bneq r8, zero, 56
002a98  9f200000  addli r1, zero, 2
002a9c  7d100000  xwait zero, 0
002aa0  7d100000  xwait zero, 0
002aa4  7d100000  xwait zero, 0
002aa8  7d100000  xwait zero, 0
002aac  7d100000  xwait zero, 0
002ab0  7d100000  xwait zero, 0
002ab4  7d100000  xwait zero, 0
002ab8  7d100000  xwait zero, 0
002abc  1d800000  lock zero, r1
002ac0  0d000020  ew_cfg zero, zero, zero, 16
002ac4  1d900000  unlock r1
002ac8  7d400000  xsignal_mode_cfg zero
002acc  9f8e6e01  addli sp, sp, 176
002ad0  00a00300  mfence { lm, sm, gm }
002ad4  00100000  exit
002ad8  00100000  exit
002adc  00100000  exit
002ae0  00100000  exit
002ae4  00100000  exit
002ae8  00100000  exit
002aec  00100000  exit
002af0  00100000  exit
002af4  00100000  exit
002af8  00100000  exit
002afc  00100000  exit
002b00  00100000  exit
002b04  00100000  exit
002b08  00100000  exit
002b0c  00100000  exit
002b10  00100000  exit
002b14  00100000  exit
002b18  00100000  exit
002b1c  00100000  exit
002b20  00100000  exit
002b24  00100000  exit
002b28  00100000  exit
002b2c  00100000  exit
002b30  00100000  exit
002b34  00100000  exit
002b38  00100000  exit
002b3c  00100000  exit
002b40  00100000  exit
002b44  00100000  exit
002b48  00100000  exit
002b4c  00100000  exit
002b50  00100000  exit
002b54  00100000  exit
002b58  00100000  exit
002b5c  00100000  exit
002b60  00100000  exit
002b64  00100000  exit
002b68  00100000  exit
002b6c  00100000  exit
002b70  00100000  exit
002b74  00100000  exit
002b78  00100000  exit
002b7c  00100000  exit
002b80  00100000  exit
002b84  00100000  exit
002b88  00100000  exit
002b8c  00100000  exit
002b90  00100000  exit
002b94  00100000  exit
002b98  00100000  exit
002b9c  00100000  exit
002ba0  00100000  exit
002ba4  00100000  exit
002ba8  00100000  exit
002bac  00100000  exit
002bb0  00100000  exit
002bb4  00100000  exit
002bb8  00100000  exit
002bbc  00100000  exit
002bc0  00100000  exit
002bc4  00100000  exit
002bc8  00100000  exit
002bcc  00100000  exit
002bd0  00100000  exit
002bd4  00100000  exit
002bd8  00100000  exit
002bdc  00100000  exit
002be0  00100000  exit
002be4  00100000  exit
002be8  00100000  exit
002bec  00100000  exit
002bf0  00100000  exit
002bf4  00100000  exit
002bf8  00100000  exit
002bfc  00100000  exit
002c00  00100000  exit
002c04  00100000  exit
002c08  00100000  exit
002c0c  00100000  exit
002c10  00100000  exit
002c14  00100000  exit
002c18  00100000  exit
002c1c  00100000  exit
002c20  00100000  exit
002c24  00100000  exit
002c28  00100000  exit
002c2c  00100000  exit
002c30  00100000  exit
002c34  00100000  exit
002c38  00100000  exit
002c3c  00100000  exit
002c40  00100000  exit
002c44  00100000  exit
002c48  00100000  exit
002c4c  00100000  exit
002c50  00100000  exit
002c54  00100000  exit
002c58  00100000  exit
002c5c  00100000  exit
002c60  00100000  exit
002c64  00100000  exit
002c68  00100000  exit
002c6c  00100000  exit
002c70  00100000  exit
002c74  00100000  exit
002c78  00100000  exit
002c7c  00100000  exit
002c80  00100000  exit
002c84  00100000  exit
002c88  00100000  exit
002c8c  00100000  exit
002c90  00100000  exit
002c94  00100000  exit
002c98  00100000  exit
002c9c  00100000  exit
002ca0  00100000  exit
002ca4  00100000  exit
002ca8  00100000  exit
002cac  00100000  exit
002cb0  00100000  exit
002cb4  00100000  exit
002cb8  00100000  exit
002cbc  00100000  exit
002cc0  00100000  exit
002cc4  00100000  exit
002cc8  00100000  exit
002ccc  00100000  exit
002cd0  00100000  exit
002cd4  00100000  exit
002cd8  00100000  exit
002cdc  00100000  exit
002ce0  00100000  exit
002ce4  00100000  exit
002ce8  00100000  exit
002cec  00100000  exit
002cf0  00100000  exit
002cf4  00100000  exit
002cf8  00100000  exit
002cfc  00100000  exit
002d00  00100000  exit
002d04  00100000  exit
002d08  00100000  exit
002d0c  00100000  exit
002d10  00100000  exit
002d14  00100000  exit
