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
0000b8  1f8f1e00  addli r30, sp, 8
0000bc  9f100000  addli r1, zero, 1
0000c0  00310002  core_id r2
0000c4  e3474f00  loadli.w r15,  36(r30)
0000c8  7dc00000  xsignal_mode_cfg r1
0000cc  37600100  beq r2, zero, 24
0000d0  abf0ffff  lui r1, 1048575
0000d4  9b90f0ff  ori r1, r1, 4095
0000d8  80a10004  csr_set csr3, r1
0000dc  00d00100  sync_group
0000e0  5b0b0000  j 88
0000e4  1f220000  addli r4, zero, 2
0000e8  fdd00000  uni_sram_cfg r1, r1
0000ec  abf2ffff  lui r5, 1048575
0000f0  1d000200  lock zero, r4
0000f4  8d000020  ew_cfg r1, zero, zero, 16
0000f8  9b90f2ff  ori r1, r5, 4095
0000fc  1d100200  unlock r4
000100  1f520000  addli r4, zero, 5
000104  80a10004  csr_set csr3, r1
000108  9f401000  addli r1, zero, 12
00010c  00d00100  sync_group
000110  7d800000  xsignal r1, 0
000114  7d000200  xsignal r4, 0
000118  9f300000  addli r1, zero, 3
00011c  1f121000  addli r4, zero, 9
000120  7d800000  xsignal r1, 0
000124  7d000200  xsignal r4, 0
000128  9f700000  addli r1, zero, 7
00012c  1f621000  addli r4, zero, 14
000130  7d800000  xsignal r1, 0
000134  7d000200  xsignal r4, 0
000138  e3004f00  loadli.w r1,  32(r30)
00013c  63424f00  loadli.w r4,  36(r30)
000140  00d30002  load_param_i r6, 1
000144  e3025f00  loadli.w r5,  40(r30)
000148  8b101220  mul.s r1, r4, r1
00014c  1f020300  addli r4, r6, 0
000150  0b925050  fmac.s r4, r1, r5
000154  8b925020  mul.s r5, r1, r5
000158  1f72f2ff  addli r4, r4, -1
00015c  0b126230  div.s r4, r4, r6
000160  00530002  load_param_i r6, 0
000164  8b106220  mul.s r1, r4, r6
000168  0b126250  fmac.s r4, r4, r6
00016c  0b125240  min.s r4, r4, r5
000170  4b451204  ble.s r4, r1, 2384
000174  b3110228  sext_int2long r[4:5], r4
000178  33930028  sext_int2long r[7:8], r1
00017c  1f740000  addli r8, zero, 7
000180  9f440000  addli r9, zero, 4
000184  1f150000  addli r10, zero, 1
000188  9f560000  addli r13, zero, 5
00018c  9f280000  addli r17, zero, 2
000190  1f680000  addli r16, zero, 6
000194  1f161000  addli r12, zero, 9
000198  9f251000  addli r11, zero, 10
00019c  1f371000  addli r14, zero, 11
0001a0  9f3b2000  addli r23, zero, 19
0001a4  9f0d8000  addli r27, zero, 64
0001a8  2b0e0100  lui r28, 16
0001ac  1f0d0001  addli r26, zero, 128
0001b0  ab000200  lui r1, 32
0001b4  733c3ffe  store.d r[4:5], -8(r30)
0001b8  db090000  j 76
0001bc  7d100800  xwait r16, 0
0001c0  7d100600  xwait r12, 0
0001c4  1d000000  lock zero, zero
0001c8  2b810100  lui r2, 24
0001cc  9f011000  addli r3, zero, 8
0001d0  81080000  ds_cfg r17, zero, 0
0001d4  010d0002  ds_cfg r26, zero, 1
0001d8  810d001c  ds_cfg r27, zero, 14
0001dc  010d001a  ds_cfg r26, zero, 13
0001e0  4100b105  shuffle_coa zero, r2, r27, 2
0001e4  00310002  core_id r2
0001e8  1d100000  unlock zero
0001ec  7d000400  xsignal r8, 0
0001f0  7d800100  xsignal r3, 0
0001f4  eb518fff  load.d r[4:5], -8(r30)
0001f8  27130300  addli.d r[7:8], r[7:8], 1
0001fc  93393304  setlt.sl r19, r[7:8], r[4:5]
000200  37830904  beq r19, zero, 2240
000204  e3015f00  loadli.w r3,  40(r30)
000208  8b193330  div.s r19, r6, r3
00020c  0b9af938  mod.s r20, r19, r15
000210  8b99f930  div.s r19, r19, r15
000214  331c0a28  sext_int2long r[25:26], r20
000218  b3990928  sext_int2long r[20:21], r19
00021c  173c8c02  sll.d r[25:26], r[25:26], r8
000220  bf912400  blt.s r9, r2, 100
000224  b762a100  beq r2, r10, 184
000228  b7271103  beq r2, r17, 1512
00022c  bb119100  bneq r2, r9, 100
000230  9f011000  addli r3, zero, 8
000234  7d900400  xwait r9, 0
000238  2b490000  lui r18, 4
00023c  7d900100  xwait r3, 0
000240  9f411000  addli r3, zero, 12
000244  7d900100  xwait r3, 0
000248  1d000500  lock zero, r10
00024c  9f010002  addli r3, zero, 256
000250  898dad01  mm_cfg r27, r27, r26, 0
000254  8984a404  mm_cfg r9, r9, r10, 2
000258  29000010  mm zero, zero, zero, 8
00025c  1d100500  unlock r10
000260  1d000500  lock zero, r10
000264  898dad01  mm_cfg r27, r27, r26, 0
000268  8984a404  mm_cfg r9, r9, r10, 2
00026c  a9012011  mm r3, zero, r18, 8
000270  1d100500  unlock r10
000274  7d800600  xsignal r13, 0
000278  7d000600  xsignal r12, 0
00027c  7d800500  xsignal r11, 0
000280  dbeeffff  j -140
000284  3715d102  beq r2, r13, 1348
000288  b7760103  beq r2, r16, 1468
00028c  b74c81fe  beq r2, r8, -208
000290  bb1d01fe  bneq r2, zero, -156
000294  eb5a8f01  load.d r[22:23], 24(r30)
000298  97b97903  sll.d r[20:21], r[20:21], r23
00029c  173c1c03  sll.d r[25:26], r[25:26], r17
0002a0  7d100700  xwait r14, 0
0002a4  1d800600  lock zero, r13
0002a8  9f010004  addli r3, zero, 512
0002ac  1f090020  addli r18, zero, 4096
0002b0  15000000  dma_cfg zero, zero, zero, 0
0002b4  15000502  dma_cfg zero, r10, zero, 1
0002b8  8ba93a11  add.ul r[20:21], r[22:23], r[20:21]
0002bc  8ba98911  add.ul r[20:21], r[20:21], r[25:26]
0002c0  150a0004  dma_cfg r20, zero, zero, 2
0002c4  95093006  dma_cfg r19, zero, r3, 3
0002c8  1589a109  dma_cfg r18, r3, r26, 4
0002cc  9f411000  addli r3, zero, 12
0002d0  35000000  dma_run zero
0002d4  1d900600  unlock r13
0002d8  5be3ffff  j -232
0002dc  9f611000  addli r3, zero, 14
0002e0  1f621000  addli r4, zero, 14
0002e4  eb5a0f00  load.d r[22:23], 0(r30)
0002e8  9f0b0001  addli r23, zero, 128
0002ec  1f390000  addli r18, zero, 3
0002f0  1f061000  addli r12, zero, 8
0002f4  9f151000  addli r11, zero, 9
0002f8  9f222000  addli r5, zero, 18
0002fc  9f572000  addli r15, zero, 21
000300  97b93902  sll.d r[20:21], r[20:21], r3
000304  9f310000  addli r3, zero, 3
000308  7d900100  xwait r3, 0
00030c  1d800600  lock zero, r13
000310  8ba93a11  add.ul r[20:21], r[22:23], r[20:21]
000314  9f0a0002  addli r21, zero, 256
000318  1f5b1000  addli r22, zero, 13
00031c  15000014  dma_cfg zero, zero, zero, 10
000320  1500a014  dma_cfg zero, zero, r10, 10
000324  15001015  dma_cfg zero, zero, r17, 10
000328  15003014  dma_cfg zero, zero, r3, 10
00032c  9f011000  addli r3, zero, 8
000330  15009014  dma_cfg zero, zero, r9, 10
000334  1500d014  dma_cfg zero, zero, r13, 10
000338  15000015  dma_cfg zero, zero, r16, 10
00033c  1f281000  addli r16, zero, 10
000340  15008014  dma_cfg zero, zero, r8, 10
000344  15003014  dma_cfg zero, zero, r3, 10
000348  9f111000  addli r3, zero, 9
00034c  15003014  dma_cfg zero, zero, r3, 10
000350  9f211000  addli r3, zero, 10
000354  15003014  dma_cfg zero, zero, r3, 10
000358  9f411000  addli r3, zero, 12
00035c  1500e014  dma_cfg zero, zero, r14, 10
000360  1f471000  addli r14, zero, 12
000364  15003014  dma_cfg zero, zero, r3, 10
000368  9f511000  addli r3, zero, 13
00036c  15003014  dma_cfg zero, zero, r3, 10
000370  9f711000  addli r3, zero, 15
000374  15004014  dma_cfg zero, zero, r4, 10
000378  15003014  dma_cfg zero, zero, r3, 10
00037c  9f012000  addli r3, zero, 16
000380  15003014  dma_cfg zero, zero, r3, 10
000384  9f112000  addli r3, zero, 17
000388  15003014  dma_cfg zero, zero, r3, 10
00038c  9f212000  addli r3, zero, 18
000390  15003014  dma_cfg zero, zero, r3, 10
000394  9f312000  addli r3, zero, 19
000398  15003014  dma_cfg zero, zero, r3, 10
00039c  9f412000  addli r3, zero, 20
0003a0  15003014  dma_cfg zero, zero, r3, 10
0003a4  9f512000  addli r3, zero, 21
0003a8  15003014  dma_cfg zero, zero, r3, 10
0003ac  9f612000  addli r3, zero, 22
0003b0  15003014  dma_cfg zero, zero, r3, 10
0003b4  9f712000  addli r3, zero, 23
0003b8  15003014  dma_cfg zero, zero, r3, 10
0003bc  9f013000  addli r3, zero, 24
0003c0  15003014  dma_cfg zero, zero, r3, 10
0003c4  9f113000  addli r3, zero, 25
0003c8  15003014  dma_cfg zero, zero, r3, 10
0003cc  9f213000  addli r3, zero, 26
0003d0  15003014  dma_cfg zero, zero, r3, 10
0003d4  9f313000  addli r3, zero, 27
0003d8  15003014  dma_cfg zero, zero, r3, 10
0003dc  9f413000  addli r3, zero, 28
0003e0  15003014  dma_cfg zero, zero, r3, 10
0003e4  9f513000  addli r3, zero, 29
0003e8  15003014  dma_cfg zero, zero, r3, 10
0003ec  9f613000  addli r3, zero, 30
0003f0  15003014  dma_cfg zero, zero, r3, 10
0003f4  9f713000  addli r3, zero, 31
0003f8  15003014  dma_cfg zero, zero, r3, 10
0003fc  9f010002  addli r3, zero, 256
000400  15050500  dma_cfg r10, r10, zero, 0
000404  15050002  dma_cfg r10, zero, zero, 1
000408  15000004  dma_cfg zero, zero, zero, 2
00040c  150eb007  dma_cfg r28, zero, r27, 3
000410  150d1009  dma_cfg r26, zero, r17, 4
000414  9501a00b  dma_cfg r3, zero, r26, 5
000418  1b1d0e04  ori r26, r28, 64
00041c  9f311000  addli r3, zero, 11
000420  15000010  dma_cfg zero, zero, zero, 8
000424  35000000  dma_run zero
000428  1500a00a  dma_cfg zero, zero, r10, 5
00042c  15000010  dma_cfg zero, zero, zero, 8
000430  1d900600  unlock r13
000434  1d800400  lock zero, r9
000438  15050500  dma_cfg r10, r10, zero, 0
00043c  15000a04  dma_cfg zero, r20, zero, 2
000440  158db907  dma_cfg r26, r19, r27, 3
000444  1f2d0000  addli r26, zero, 2
000448  9f090002  addli r19, zero, 256
00044c  958b1d09  dma_cfg r23, r27, r17, 4
000450  958a7b0b  dma_cfg r21, r23, r23, 5
000454  9f2a3000  addli r21, zero, 26
000458  15000010  dma_cfg zero, zero, zero, 8
00045c  35000000  dma_run zero
000460  1500a00a  dma_cfg zero, zero, r10, 5
000464  15000010  dma_cfg zero, zero, zero, 8
000468  1d900400  unlock r9
00046c  1d800600  lock zero, r13
000470  15000014  dma_cfg zero, zero, zero, 10
000474  1500a014  dma_cfg zero, zero, r10, 10
000478  15001015  dma_cfg zero, zero, r17, 10
00047c  9f680000  addli r17, zero, 6
000480  15002015  dma_cfg zero, zero, r18, 10
000484  1f193000  addli r18, zero, 25
000488  15009014  dma_cfg zero, zero, r9, 10
00048c  1500d014  dma_cfg zero, zero, r13, 10
000490  15001015  dma_cfg zero, zero, r17, 10
000494  9f483000  addli r17, zero, 28
000498  15008014  dma_cfg zero, zero, r8, 10
00049c  1500c014  dma_cfg zero, zero, r12, 10
0004a0  1f662000  addli r12, zero, 22
0004a4  1500b014  dma_cfg zero, zero, r11, 10
0004a8  9f452000  addli r11, zero, 20
0004ac  15000015  dma_cfg zero, zero, r16, 10
0004b0  1f083000  addli r16, zero, 24
0004b4  15003014  dma_cfg zero, zero, r3, 10
0004b8  9f012000  addli r3, zero, 16
0004bc  1500e014  dma_cfg zero, zero, r14, 10
0004c0  1f771000  addli r14, zero, 15
0004c4  15006015  dma_cfg zero, zero, r22, 10
0004c8  1f3b3000  addli r22, zero, 27
0004cc  15004014  dma_cfg zero, zero, r4, 10
0004d0  1f122000  addli r4, zero, 17
0004d4  1500e014  dma_cfg zero, zero, r14, 10
0004d8  15003014  dma_cfg zero, zero, r3, 10
0004dc  15004014  dma_cfg zero, zero, r4, 10
0004e0  15005014  dma_cfg zero, zero, r5, 10
0004e4  9f322000  addli r5, zero, 19
0004e8  15005014  dma_cfg zero, zero, r5, 10
0004ec  1500b014  dma_cfg zero, zero, r11, 10
0004f0  1500f014  dma_cfg zero, zero, r15, 10
0004f4  9f772000  addli r15, zero, 23
0004f8  1500c014  dma_cfg zero, zero, r12, 10
0004fc  1500f014  dma_cfg zero, zero, r15, 10
000500  15000015  dma_cfg zero, zero, r16, 10
000504  15002015  dma_cfg zero, zero, r18, 10
000508  15005015  dma_cfg zero, zero, r21, 10
00050c  15006015  dma_cfg zero, zero, r22, 10
000510  15001015  dma_cfg zero, zero, r17, 10
000514  9f583000  addli r17, zero, 29
000518  15001015  dma_cfg zero, zero, r17, 10
00051c  9f683000  addli r17, zero, 30
000520  15001015  dma_cfg zero, zero, r17, 10
000524  9f783000  addli r17, zero, 31
000528  15001015  dma_cfg zero, zero, r17, 10
00052c  9f380000  addli r17, zero, 3
000530  15050500  dma_cfg r10, r10, zero, 0
000534  15050002  dma_cfg r10, zero, zero, 1
000538  15000004  dma_cfg zero, zero, zero, 2
00053c  150eb007  dma_cfg r28, zero, r27, 3
000540  950ba009  dma_cfg r23, zero, r26, 4
000544  9509700b  dma_cfg r19, zero, r23, 5
000548  9739ac02  sll.d r[20:21], r[25:26], r10
00054c  6b5c0f01  load.d r[25:26], 16(r30)
000550  9f0b1000  addli r23, zero, 8
000554  15000010  dma_cfg zero, zero, zero, 8
000558  35000000  dma_run zero
00055c  1500a00a  dma_cfg zero, zero, r10, 5
000560  15000010  dma_cfg zero, zero, zero, 8
000564  8b293c11  add.ul r[20:21], r[25:26], r[20:21]
000568  1f6c1000  addli r24, zero, 14
00056c  1d900600  unlock r13
000570  7d000d00  xsignal r26, 0
000574  9f5c1000  addli r25, zero, 13
000578  7d100c00  xwait r24, 0
00057c  1d800600  lock zero, r13
000580  15000014  dma_cfg zero, zero, zero, 10
000584  1500a014  dma_cfg zero, zero, r10, 10
000588  1500a015  dma_cfg zero, zero, r26, 10
00058c  1f0d0001  addli r26, zero, 128
000590  15001015  dma_cfg zero, zero, r17, 10
000594  9f680000  addli r17, zero, 6
000598  15009014  dma_cfg zero, zero, r9, 10
00059c  1500d014  dma_cfg zero, zero, r13, 10
0005a0  15001015  dma_cfg zero, zero, r17, 10
0005a4  9f280000  addli r17, zero, 2
0005a8  15008014  dma_cfg zero, zero, r8, 10
0005ac  15007015  dma_cfg zero, zero, r23, 10
0005b0  9f1b1000  addli r23, zero, 9
0005b4  15007015  dma_cfg zero, zero, r23, 10
0005b8  9f2b1000  addli r23, zero, 10
0005bc  15007015  dma_cfg zero, zero, r23, 10
0005c0  9f3b1000  addli r23, zero, 11
0005c4  15007015  dma_cfg zero, zero, r23, 10
0005c8  9f4b1000  addli r23, zero, 12
0005cc  15007015  dma_cfg zero, zero, r23, 10
0005d0  15009015  dma_cfg zero, zero, r25, 10
0005d4  9f0c0004  addli r25, zero, 512
0005d8  15008015  dma_cfg zero, zero, r24, 10
0005dc  1b9c0004  ori r24, r1, 64
0005e0  1500e014  dma_cfg zero, zero, r14, 10
0005e4  1f271000  addli r14, zero, 10
0005e8  15003014  dma_cfg zero, zero, r3, 10
0005ec  9f512000  addli r3, zero, 21
0005f0  15004014  dma_cfg zero, zero, r4, 10
0005f4  1f222000  addli r4, zero, 18
0005f8  15004014  dma_cfg zero, zero, r4, 10
0005fc  1f322000  addli r4, zero, 19
000600  15005014  dma_cfg zero, zero, r5, 10
000604  9f422000  addli r5, zero, 20
000608  1500b014  dma_cfg zero, zero, r11, 10
00060c  9f453000  addli r11, zero, 28
000610  15003014  dma_cfg zero, zero, r3, 10
000614  1500c014  dma_cfg zero, zero, r12, 10
000618  1f660000  addli r12, zero, 6
00061c  1500f014  dma_cfg zero, zero, r15, 10
000620  9f371000  addli r15, zero, 11
000624  15000015  dma_cfg zero, zero, r16, 10
000628  1f680000  addli r16, zero, 6
00062c  15002015  dma_cfg zero, zero, r18, 10
000630  1f293000  addli r18, zero, 26
000634  15005015  dma_cfg zero, zero, r21, 10
000638  9f3a3000  addli r21, zero, 27
00063c  15006015  dma_cfg zero, zero, r22, 10
000640  1f4b3000  addli r22, zero, 28
000644  1500b014  dma_cfg zero, zero, r11, 10
000648  9f553000  addli r11, zero, 29
00064c  1500b014  dma_cfg zero, zero, r11, 10
000650  9f653000  addli r11, zero, 30
000654  1500b014  dma_cfg zero, zero, r11, 10
000658  9f753000  addli r11, zero, 31
00065c  1500b014  dma_cfg zero, zero, r11, 10
000660  9f050002  addli r11, zero, 256
000664  15050500  dma_cfg r10, r10, zero, 0
000668  15050002  dma_cfg r10, zero, zero, 1
00066c  15000004  dma_cfg zero, zero, zero, 2
000670  9500b007  dma_cfg r1, zero, r27, 3
000674  150d9008  dma_cfg r26, zero, r9, 4
000678  950ca00a  dma_cfg r25, zero, r10, 5
00067c  15000010  dma_cfg zero, zero, zero, 8
000680  35000000  dma_run zero
000684  1500a00a  dma_cfg zero, zero, r10, 5
000688  15000010  dma_cfg zero, zero, zero, 8
00068c  1d900600  unlock r13
000690  1d800400  lock zero, r9
000694  15050500  dma_cfg r10, r10, zero, 0
000698  15000a04  dma_cfg zero, r20, zero, 2
00069c  158cb907  dma_cfg r24, r19, r27, 3
0006a0  9f591000  addli r19, zero, 13
0006a4  1f7a1000  addli r20, zero, 15
0006a8  158d9d08  dma_cfg r26, r27, r9, 4
0006ac  958ca50a  dma_cfg r25, r11, r10, 5
0006b0  9f350000  addli r11, zero, 3
0006b4  15000010  dma_cfg zero, zero, zero, 8
0006b8  35000000  dma_run zero
0006bc  1500a00a  dma_cfg zero, zero, r10, 5
0006c0  15000010  dma_cfg zero, zero, zero, 8
0006c4  1d900400  unlock r9
0006c8  1d800600  lock zero, r13
0006cc  15000014  dma_cfg zero, zero, zero, 10
0006d0  1500a014  dma_cfg zero, zero, r10, 10
0006d4  15001015  dma_cfg zero, zero, r17, 10
0006d8  1500b014  dma_cfg zero, zero, r11, 10
0006dc  9f051000  addli r11, zero, 8
0006e0  15009014  dma_cfg zero, zero, r9, 10
0006e4  1500d014  dma_cfg zero, zero, r13, 10
0006e8  1500c014  dma_cfg zero, zero, r12, 10
0006ec  1f161000  addli r12, zero, 9
0006f0  15008014  dma_cfg zero, zero, r8, 10
0006f4  1500b014  dma_cfg zero, zero, r11, 10
0006f8  9f151000  addli r11, zero, 9
0006fc  1500b014  dma_cfg zero, zero, r11, 10
000700  9f251000  addli r11, zero, 10
000704  1500e014  dma_cfg zero, zero, r14, 10
000708  1f371000  addli r14, zero, 11
00070c  1500f014  dma_cfg zero, zero, r15, 10
000710  9f671000  addli r15, zero, 14
000714  15007015  dma_cfg zero, zero, r23, 10
000718  9f3b2000  addli r23, zero, 19
00071c  15003015  dma_cfg zero, zero, r19, 10
000720  1500f014  dma_cfg zero, zero, r15, 10
000724  e3474f00  loadli.w r15,  36(r30)
000728  15004015  dma_cfg zero, zero, r20, 10
00072c  1f0a2000  addli r20, zero, 16
000730  15004015  dma_cfg zero, zero, r20, 10
000734  1f1a2000  addli r20, zero, 17
000738  15004015  dma_cfg zero, zero, r20, 10
00073c  1f2a2000  addli r20, zero, 18
000740  15004015  dma_cfg zero, zero, r20, 10
000744  15004014  dma_cfg zero, zero, r4, 10
000748  15005014  dma_cfg zero, zero, r5, 10
00074c  15003014  dma_cfg zero, zero, r3, 10
000750  9f612000  addli r3, zero, 22
000754  15003014  dma_cfg zero, zero, r3, 10
000758  9f712000  addli r3, zero, 23
00075c  15003014  dma_cfg zero, zero, r3, 10
000760  9f013000  addli r3, zero, 24
000764  15003014  dma_cfg zero, zero, r3, 10
000768  9f113000  addli r3, zero, 25
00076c  15003014  dma_cfg zero, zero, r3, 10
000770  9f513000  addli r3, zero, 29
000774  15002015  dma_cfg zero, zero, r18, 10
000778  15005015  dma_cfg zero, zero, r21, 10
00077c  15006015  dma_cfg zero, zero, r22, 10
000780  15003014  dma_cfg zero, zero, r3, 10
000784  9f613000  addli r3, zero, 30
000788  15003014  dma_cfg zero, zero, r3, 10
00078c  9f713000  addli r3, zero, 31
000790  15003014  dma_cfg zero, zero, r3, 10
000794  15050500  dma_cfg r10, r10, zero, 0
000798  15050002  dma_cfg r10, zero, zero, 1
00079c  15000004  dma_cfg zero, zero, zero, 2
0007a0  9500b007  dma_cfg r1, zero, r27, 3
0007a4  150d9008  dma_cfg r26, zero, r9, 4
0007a8  950ca00a  dma_cfg r25, zero, r10, 5
0007ac  15000010  dma_cfg zero, zero, zero, 8
0007b0  35000000  dma_run zero
0007b4  1500a00a  dma_cfg zero, zero, r10, 5
0007b8  15000010  dma_cfg zero, zero, zero, 8
0007bc  1d900600  unlock r13
0007c0  7d800900  xsignal r19, 0
0007c4  5b46ffff  j -1488
0007c8  9f511000  addli r3, zero, 13
0007cc  7d900500  xwait r11, 0
0007d0  9f090000  addli r19, zero, 0
0007d4  7d900100  xwait r3, 0
0007d8  1d800800  lock zero, r17
0007dc  ab01803f  lui r3, 260096
0007e0  0d000002  ew_cfg zero, zero, zero, 1
0007e4  8d910100  ewcoeff_cfg r3, r3, zero, 0
0007e8  9f71f000  addli r3, zero, 127
0007ec  0d800104  ew_cfg zero, r3, zero, 2
0007f0  0d050006  ew_cfg r10, zero, zero, 3
0007f4  ad891900  dsmadd r19, r19, r1, 0
0007f8  9f890904  addli r19, r19, 512
0007fc  bbefc9ff  bneq r19, r28, -8
000800  1d900800  unlock r17
000804  7d000700  xsignal r14, 0
000808  9f611000  addli r3, zero, 14
00080c  db3cffff  j -1564
000810  7d900800  xwait r17, 0
000814  7d900600  xwait r13, 0
000818  1d000000  lock zero, zero
00081c  9f310000  addli r3, zero, 3
000820  81080000  ds_cfg r17, zero, 0
000824  810d0002  ds_cfg r27, zero, 1
000828  810d001c  ds_cfg r27, zero, 14
00082c  010d001a  ds_cfg r26, zero, 13
000830  2110be03  shuffle_batch zero, r28, r27, 1
000834  1d100000  unlock zero
000838  7d800100  xsignal r3, 0
00083c  7d800400  xsignal r9, 0
000840  db36ffff  j -1612
000844  eb558f00  load.d r[12:13], 8(r30)
000848  9739ac02  sll.d r[20:21], r[25:26], r10
00084c  7d100400  xwait r8, 0
000850  1d800600  lock zero, r13
000854  9f0a1000  addli r21, zero, 8
000858  9f211000  addli r3, zero, 10
00085c  1f311000  addli r2, zero, 11
000860  9f5c1000  addli r25, zero, 13
000864  9f671000  addli r15, zero, 14
000868  1f721000  addli r4, zero, 15
00086c  1f1d2000  addli r26, zero, 17
000870  9f2b2000  addli r23, zero, 18
000874  1f4b2000  addli r22, zero, 20
000878  9f522000  addli r5, zero, 21
00087c  1f070001  addli r14, zero, 128
000880  1f090004  addli r18, zero, 512
000884  15000014  dma_cfg zero, zero, zero, 10
000888  1500a014  dma_cfg zero, zero, r10, 10
00088c  8ba93511  add.ul r[20:21], r[12:13], r[20:21]
000890  1f360000  addli r12, zero, 3
000894  15001015  dma_cfg zero, zero, r17, 10
000898  9f151000  addli r11, zero, 9
00089c  9f382000  addli r17, zero, 19
0008a0  1500c014  dma_cfg zero, zero, r12, 10
0008a4  15009014  dma_cfg zero, zero, r9, 10
0008a8  1500d014  dma_cfg zero, zero, r13, 10
0008ac  15000015  dma_cfg zero, zero, r16, 10
0008b0  1f481000  addli r16, zero, 12
0008b4  15008014  dma_cfg zero, zero, r8, 10
0008b8  1f042000  addli r8, zero, 16
0008bc  15005015  dma_cfg zero, zero, r21, 10
0008c0  1500b014  dma_cfg zero, zero, r11, 10
0008c4  15003014  dma_cfg zero, zero, r3, 10
0008c8  15002014  dma_cfg zero, zero, r2, 10
0008cc  1f612000  addli r2, zero, 22
0008d0  15000015  dma_cfg zero, zero, r16, 10
0008d4  15009015  dma_cfg zero, zero, r25, 10
0008d8  1500f014  dma_cfg zero, zero, r15, 10
0008dc  15004014  dma_cfg zero, zero, r4, 10
0008e0  15008014  dma_cfg zero, zero, r8, 10
0008e4  1500a015  dma_cfg zero, zero, r26, 10
0008e8  15007015  dma_cfg zero, zero, r23, 10
0008ec  15001015  dma_cfg zero, zero, r17, 10
0008f0  15006015  dma_cfg zero, zero, r22, 10
0008f4  15005014  dma_cfg zero, zero, r5, 10
0008f8  15002014  dma_cfg zero, zero, r2, 10
0008fc  1f712000  addli r2, zero, 23
000900  15002014  dma_cfg zero, zero, r2, 10
000904  1f013000  addli r2, zero, 24
000908  15002014  dma_cfg zero, zero, r2, 10
00090c  1f113000  addli r2, zero, 25
000910  15002014  dma_cfg zero, zero, r2, 10
000914  1f213000  addli r2, zero, 26
000918  15002014  dma_cfg zero, zero, r2, 10
00091c  1f313000  addli r2, zero, 27
000920  15002014  dma_cfg zero, zero, r2, 10
000924  1f413000  addli r2, zero, 28
000928  15002014  dma_cfg zero, zero, r2, 10
00092c  1f513000  addli r2, zero, 29
000930  15002014  dma_cfg zero, zero, r2, 10
000934  1f613000  addli r2, zero, 30
000938  15002014  dma_cfg zero, zero, r2, 10
00093c  1f713000  addli r2, zero, 31
000940  15002014  dma_cfg zero, zero, r2, 10
000944  2b810100  lui r2, 24
000948  15050500  dma_cfg r10, r10, zero, 0
00094c  15050002  dma_cfg r10, zero, zero, 1
000950  1b1c0104  ori r24, r2, 64
000954  15000004  dma_cfg zero, zero, zero, 2
000958  1501b007  dma_cfg r2, zero, r27, 3
00095c  15079008  dma_cfg r14, zero, r9, 4
000960  1509b00b  dma_cfg r18, zero, r27, 5
000964  15000010  dma_cfg zero, zero, zero, 8
000968  35000000  dma_run zero
00096c  1500a00a  dma_cfg zero, zero, r10, 5
000970  15000010  dma_cfg zero, zero, zero, 8
000974  1d900600  unlock r13
000978  1d800400  lock zero, r9
00097c  15050500  dma_cfg r10, r10, zero, 0
000980  15000a04  dma_cfg zero, r20, zero, 2
000984  158cb907  dma_cfg r24, r19, r27, 3
000988  9f290000  addli r19, zero, 2
00098c  15879d08  dma_cfg r14, r27, r9, 4
000990  1f070010  addli r14, zero, 2048
000994  1509b70b  dma_cfg r18, r14, r27, 5
000998  1f371000  addli r14, zero, 11
00099c  15000010  dma_cfg zero, zero, zero, 8
0009a0  35000000  dma_run zero
0009a4  1500a00a  dma_cfg zero, zero, r10, 5
0009a8  15000010  dma_cfg zero, zero, zero, 8
0009ac  1d900400  unlock r9
0009b0  1d800600  lock zero, r13
0009b4  15000014  dma_cfg zero, zero, zero, 10
0009b8  1500a014  dma_cfg zero, zero, r10, 10
0009bc  15003015  dma_cfg zero, zero, r19, 10
0009c0  1500c014  dma_cfg zero, zero, r12, 10
0009c4  1f660000  addli r12, zero, 6
0009c8  15009014  dma_cfg zero, zero, r9, 10
0009cc  1500d014  dma_cfg zero, zero, r13, 10
0009d0  1500c014  dma_cfg zero, zero, r12, 10
0009d4  1f760000  addli r12, zero, 7
0009d8  1500c014  dma_cfg zero, zero, r12, 10
0009dc  1f161000  addli r12, zero, 9
0009e0  15005015  dma_cfg zero, zero, r21, 10
0009e4  1500b014  dma_cfg zero, zero, r11, 10
0009e8  9f251000  addli r11, zero, 10
0009ec  15003014  dma_cfg zero, zero, r3, 10
0009f0  9f311000  addli r3, zero, 11
0009f4  15003014  dma_cfg zero, zero, r3, 10
0009f8  9f612000  addli r3, zero, 22
0009fc  15000015  dma_cfg zero, zero, r16, 10
000a00  1f680000  addli r16, zero, 6
000a04  15009015  dma_cfg zero, zero, r25, 10
000a08  1500f014  dma_cfg zero, zero, r15, 10
000a0c  e3474f00  loadli.w r15,  36(r30)
000a10  15004014  dma_cfg zero, zero, r4, 10
000a14  15008014  dma_cfg zero, zero, r8, 10
000a18  1f740000  addli r8, zero, 7
000a1c  1500a015  dma_cfg zero, zero, r26, 10
000a20  1f0d0001  addli r26, zero, 128
000a24  15007015  dma_cfg zero, zero, r23, 10
000a28  9f3b2000  addli r23, zero, 19
000a2c  15001015  dma_cfg zero, zero, r17, 10
000a30  9f280000  addli r17, zero, 2
000a34  15006015  dma_cfg zero, zero, r22, 10
000a38  15005014  dma_cfg zero, zero, r5, 10
000a3c  15003014  dma_cfg zero, zero, r3, 10
000a40  9f712000  addli r3, zero, 23
000a44  15003014  dma_cfg zero, zero, r3, 10
000a48  9f013000  addli r3, zero, 24
000a4c  15003014  dma_cfg zero, zero, r3, 10
000a50  9f113000  addli r3, zero, 25
000a54  15003014  dma_cfg zero, zero, r3, 10
000a58  9f213000  addli r3, zero, 26
000a5c  15003014  dma_cfg zero, zero, r3, 10
000a60  9f313000  addli r3, zero, 27
000a64  15003014  dma_cfg zero, zero, r3, 10
000a68  9f413000  addli r3, zero, 28
000a6c  15003014  dma_cfg zero, zero, r3, 10
000a70  9f513000  addli r3, zero, 29
000a74  15003014  dma_cfg zero, zero, r3, 10
000a78  9f613000  addli r3, zero, 30
000a7c  15003014  dma_cfg zero, zero, r3, 10
000a80  9f713000  addli r3, zero, 31
000a84  15003014  dma_cfg zero, zero, r3, 10
000a88  15050500  dma_cfg r10, r10, zero, 0
000a8c  15050002  dma_cfg r10, zero, zero, 1
000a90  15000004  dma_cfg zero, zero, zero, 2
000a94  1501b007  dma_cfg r2, zero, r27, 3
000a98  00310002  core_id r2
000a9c  150d9008  dma_cfg r26, zero, r9, 4
000aa0  1509b00b  dma_cfg r18, zero, r27, 5
000aa4  15000010  dma_cfg zero, zero, zero, 8
000aa8  35000000  dma_run zero
000aac  1500a00a  dma_cfg zero, zero, r10, 5
000ab0  15000010  dma_cfg zero, zero, zero, 8
000ab4  1d900600  unlock r13
000ab8  7d000800  xsignal r16, 0
000abc  5be7feff  j -2248
000ac0  7d000000  xsignal zero, 0
000ac4  bb600100  bneq r2, zero, 56
000ac8  9f200000  addli r1, zero, 2
000acc  7d100000  xwait zero, 0
000ad0  7d100000  xwait zero, 0
000ad4  7d100000  xwait zero, 0
000ad8  7d100000  xwait zero, 0
000adc  7d100000  xwait zero, 0
000ae0  7d100000  xwait zero, 0
000ae4  7d100000  xwait zero, 0
000ae8  7d100000  xwait zero, 0
000aec  1d800000  lock zero, r1
000af0  0d000020  ew_cfg zero, zero, zero, 16
000af4  1d900000  unlock r1
000af8  7d400000  xsignal_mode_cfg zero
000afc  9f8e1e00  addli sp, sp, 8
000b00  00a00300  mfence { lm, sm, gm }
000b04  00100000  exit
000b08  00100000  exit
000b0c  00100000  exit
000b10  00100000  exit
000b14  00100000  exit
000b18  00100000  exit
000b1c  00100000  exit
000b20  00100000  exit
000b24  00100000  exit
000b28  00100000  exit
000b2c  00100000  exit
000b30  00100000  exit
000b34  00100000  exit
000b38  00100000  exit
000b3c  00100000  exit
000b40  00100000  exit
000b44  00100000  exit
000b48  00100000  exit
000b4c  00100000  exit
000b50  00100000  exit
000b54  00100000  exit
000b58  00100000  exit
000b5c  00100000  exit
000b60  00100000  exit
000b64  00100000  exit
000b68  00100000  exit
000b6c  00100000  exit
000b70  00100000  exit
000b74  00100000  exit
000b78  00100000  exit
000b7c  00100000  exit
000b80  00100000  exit
000b84  00100000  exit
000b88  00100000  exit
000b8c  00100000  exit
000b90  00100000  exit
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
