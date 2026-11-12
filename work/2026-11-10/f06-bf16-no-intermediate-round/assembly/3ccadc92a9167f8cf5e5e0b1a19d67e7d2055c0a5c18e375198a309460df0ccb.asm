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
000170  4b251204  ble.s r4, r1, 2376
000174  b3110228  sext_int2long r[4:5], r4
000178  33930028  sext_int2long r[7:8], r1
00017c  1f740000  addli r8, zero, 7
000180  9f440000  addli r9, zero, 4
000184  1f150000  addli r10, zero, 1
000188  9f560000  addli r13, zero, 5
00018c  9f280000  addli r17, zero, 2
000190  1f680000  addli r16, zero, 6
000194  9f251000  addli r11, zero, 10
000198  1f361000  addli r12, zero, 11
00019c  9f0d8000  addli r27, zero, 64
0001a0  2b8e0000  lui r28, 8
0001a4  ab400100  lui r1, 20
0001a8  733c3ffe  store.d r[4:5], -8(r30)
0001ac  db0a0000  j 84
0001b0  9f111000  addli r3, zero, 9
0001b4  7d100800  xwait r16, 0
0001b8  2bc10000  lui r2, 12
0001bc  7d900100  xwait r3, 0
0001c0  1d000000  lock zero, zero
0001c4  9f010001  addli r3, zero, 128
0001c8  81080000  ds_cfg r17, zero, 0
0001cc  81010002  ds_cfg r3, zero, 1
0001d0  810d001c  ds_cfg r27, zero, 14
0001d4  8101001a  ds_cfg r3, zero, 13
0001d8  9f011000  addli r3, zero, 8
0001dc  4100b105  shuffle_coa zero, r2, r27, 2
0001e0  00310002  core_id r2
0001e4  1d100000  unlock zero
0001e8  7d000400  xsignal r8, 0
0001ec  7d800100  xsignal r3, 0
0001f0  eb518fff  load.d r[4:5], -8(r30)
0001f4  27130300  addli.d r[7:8], r[7:8], 1
0001f8  93393304  setlt.sl r19, r[7:8], r[4:5]
0001fc  b7f20904  beq r19, zero, 2236
000200  e3015f00  loadli.w r3,  40(r30)
000204  8b193330  div.s r19, r6, r3
000208  0b9af938  mod.s r20, r19, r15
00020c  8b99f930  div.s r19, r19, r15
000210  331c0a28  sext_int2long r[25:26], r20
000214  b3990928  sext_int2long r[20:21], r19
000218  173c8c02  sll.d r[25:26], r[25:26], r8
00021c  bfa12400  blt.s r9, r2, 104
000220  3703a100  beq r2, r10, 192
000224  b7471103  beq r2, r17, 1520
000228  bb219100  bneq r2, r9, 104
00022c  9f011000  addli r3, zero, 8
000230  7d900400  xwait r9, 0
000234  2b470000  lui r14, 4
000238  7d900100  xwait r3, 0
00023c  9f411000  addli r3, zero, 12
000240  7d900100  xwait r3, 0
000244  1d000500  lock zero, r10
000248  9f010002  addli r3, zero, 256
00024c  898dbd01  mm_cfg r27, r27, r27, 0
000250  8984a404  mm_cfg r9, r9, r10, 2
000254  29000010  mm zero, zero, zero, 8
000258  1d100500  unlock r10
00025c  1d000500  lock zero, r10
000260  898dbd01  mm_cfg r27, r27, r27, 0
000264  8984a404  mm_cfg r9, r9, r10, 2
000268  a901e010  mm r3, zero, r14, 8
00026c  9f111000  addli r3, zero, 9
000270  1d100500  unlock r10
000274  7d800600  xsignal r13, 0
000278  7d800100  xsignal r3, 0
00027c  7d800500  xsignal r11, 0
000280  5beeffff  j -144
000284  3725d102  beq r2, r13, 1352
000288  37070103  beq r2, r16, 1472
00028c  b71c81fe  beq r2, r8, -220
000290  bb0d01fe  bneq r2, zero, -160
000294  9f212000  addli r3, zero, 18
000298  eb5a8f01  load.d r[22:23], 24(r30)
00029c  173c1c03  sll.d r[25:26], r[25:26], r17
0002a0  7d100600  xwait r12, 0
0002a4  1d800600  lock zero, r13
0002a8  1f070020  addli r14, zero, 4096
0002ac  15000000  dma_cfg zero, zero, zero, 0
0002b0  97b93902  sll.d r[20:21], r[20:21], r3
0002b4  15000502  dma_cfg zero, r10, zero, 1
0002b8  9f010004  addli r3, zero, 512
0002bc  8ba93a11  add.ul r[20:21], r[22:23], r[20:21]
0002c0  8ba98911  add.ul r[20:21], r[20:21], r[25:26]
0002c4  150a0004  dma_cfg r20, zero, zero, 2
0002c8  95093006  dma_cfg r19, zero, r3, 3
0002cc  1587b109  dma_cfg r14, r3, r27, 4
0002d0  9f411000  addli r3, zero, 12
0002d4  35000000  dma_run zero
0002d8  1d900600  unlock r13
0002dc  5be2ffff  j -240
0002e0  9f511000  addli r3, zero, 13
0002e4  1f521000  addli r4, zero, 13
0002e8  9f0b0001  addli r23, zero, 128
0002ec  eb5a0f00  load.d r[22:23], 0(r30)
0002f0  1b1d0e04  ori r26, r28, 64
0002f4  1f390000  addli r18, zero, 3
0002f8  1f071000  addli r14, zero, 8
0002fc  9f151000  addli r11, zero, 9
000300  9f271000  addli r15, zero, 10
000304  9f322000  addli r5, zero, 19
000308  97b93902  sll.d r[20:21], r[20:21], r3
00030c  9f310000  addli r3, zero, 3
000310  7d900100  xwait r3, 0
000314  1d800600  lock zero, r13
000318  8ba93a11  add.ul r[20:21], r[22:23], r[20:21]
00031c  9f0a0002  addli r21, zero, 256
000320  1f5b1000  addli r22, zero, 13
000324  15000014  dma_cfg zero, zero, zero, 10
000328  1500a014  dma_cfg zero, zero, r10, 10
00032c  15001015  dma_cfg zero, zero, r17, 10
000330  15003014  dma_cfg zero, zero, r3, 10
000334  9f011000  addli r3, zero, 8
000338  15009014  dma_cfg zero, zero, r9, 10
00033c  1500d014  dma_cfg zero, zero, r13, 10
000340  15000015  dma_cfg zero, zero, r16, 10
000344  1f481000  addli r16, zero, 12
000348  15008014  dma_cfg zero, zero, r8, 10
00034c  15003014  dma_cfg zero, zero, r3, 10
000350  9f111000  addli r3, zero, 9
000354  15003014  dma_cfg zero, zero, r3, 10
000358  9f211000  addli r3, zero, 10
00035c  15003014  dma_cfg zero, zero, r3, 10
000360  9f411000  addli r3, zero, 12
000364  1500c014  dma_cfg zero, zero, r12, 10
000368  1f761000  addli r12, zero, 15
00036c  15003014  dma_cfg zero, zero, r3, 10
000370  9f611000  addli r3, zero, 14
000374  15004014  dma_cfg zero, zero, r4, 10
000378  1f621000  addli r4, zero, 14
00037c  15003014  dma_cfg zero, zero, r3, 10
000380  9f711000  addli r3, zero, 15
000384  15003014  dma_cfg zero, zero, r3, 10
000388  9f012000  addli r3, zero, 16
00038c  15003014  dma_cfg zero, zero, r3, 10
000390  9f112000  addli r3, zero, 17
000394  15003014  dma_cfg zero, zero, r3, 10
000398  9f212000  addli r3, zero, 18
00039c  15003014  dma_cfg zero, zero, r3, 10
0003a0  9f312000  addli r3, zero, 19
0003a4  15003014  dma_cfg zero, zero, r3, 10
0003a8  9f412000  addli r3, zero, 20
0003ac  15003014  dma_cfg zero, zero, r3, 10
0003b0  9f512000  addli r3, zero, 21
0003b4  15003014  dma_cfg zero, zero, r3, 10
0003b8  9f612000  addli r3, zero, 22
0003bc  15003014  dma_cfg zero, zero, r3, 10
0003c0  9f712000  addli r3, zero, 23
0003c4  15003014  dma_cfg zero, zero, r3, 10
0003c8  9f013000  addli r3, zero, 24
0003cc  15003014  dma_cfg zero, zero, r3, 10
0003d0  9f113000  addli r3, zero, 25
0003d4  15003014  dma_cfg zero, zero, r3, 10
0003d8  9f213000  addli r3, zero, 26
0003dc  15003014  dma_cfg zero, zero, r3, 10
0003e0  9f313000  addli r3, zero, 27
0003e4  15003014  dma_cfg zero, zero, r3, 10
0003e8  9f413000  addli r3, zero, 28
0003ec  15003014  dma_cfg zero, zero, r3, 10
0003f0  9f513000  addli r3, zero, 29
0003f4  15003014  dma_cfg zero, zero, r3, 10
0003f8  9f613000  addli r3, zero, 30
0003fc  15003014  dma_cfg zero, zero, r3, 10
000400  9f713000  addli r3, zero, 31
000404  15003014  dma_cfg zero, zero, r3, 10
000408  9f010002  addli r3, zero, 256
00040c  15050500  dma_cfg r10, r10, zero, 0
000410  15050002  dma_cfg r10, zero, zero, 1
000414  15000004  dma_cfg zero, zero, zero, 2
000418  150eb007  dma_cfg r28, zero, r27, 3
00041c  950b1009  dma_cfg r23, zero, r17, 4
000420  9501b00b  dma_cfg r3, zero, r27, 5
000424  9f311000  addli r3, zero, 11
000428  15000010  dma_cfg zero, zero, zero, 8
00042c  35000000  dma_run zero
000430  1500a00a  dma_cfg zero, zero, r10, 5
000434  15000010  dma_cfg zero, zero, zero, 8
000438  1d900600  unlock r13
00043c  1d800400  lock zero, r9
000440  15050500  dma_cfg r10, r10, zero, 0
000444  15000a04  dma_cfg zero, r20, zero, 2
000448  158db907  dma_cfg r26, r19, r27, 3
00044c  1f2d0000  addli r26, zero, 2
000450  9f090002  addli r19, zero, 256
000454  958b1d09  dma_cfg r23, r27, r17, 4
000458  958abb0b  dma_cfg r21, r23, r27, 5
00045c  9f2a3000  addli r21, zero, 26
000460  15000010  dma_cfg zero, zero, zero, 8
000464  35000000  dma_run zero
000468  1500a00a  dma_cfg zero, zero, r10, 5
00046c  15000010  dma_cfg zero, zero, zero, 8
000470  1d900400  unlock r9
000474  1d800600  lock zero, r13
000478  15000014  dma_cfg zero, zero, zero, 10
00047c  1500a014  dma_cfg zero, zero, r10, 10
000480  15001015  dma_cfg zero, zero, r17, 10
000484  9f680000  addli r17, zero, 6
000488  15002015  dma_cfg zero, zero, r18, 10
00048c  1f193000  addli r18, zero, 25
000490  15009014  dma_cfg zero, zero, r9, 10
000494  1500d014  dma_cfg zero, zero, r13, 10
000498  15001015  dma_cfg zero, zero, r17, 10
00049c  9f483000  addli r17, zero, 28
0004a0  15008014  dma_cfg zero, zero, r8, 10
0004a4  1500e014  dma_cfg zero, zero, r14, 10
0004a8  1f672000  addli r14, zero, 22
0004ac  1500b014  dma_cfg zero, zero, r11, 10
0004b0  9f552000  addli r11, zero, 21
0004b4  1500f014  dma_cfg zero, zero, r15, 10
0004b8  9f772000  addli r15, zero, 23
0004bc  15003014  dma_cfg zero, zero, r3, 10
0004c0  9f112000  addli r3, zero, 17
0004c4  15000015  dma_cfg zero, zero, r16, 10
0004c8  1f083000  addli r16, zero, 24
0004cc  15006015  dma_cfg zero, zero, r22, 10
0004d0  1f3b3000  addli r22, zero, 27
0004d4  15004014  dma_cfg zero, zero, r4, 10
0004d8  1f222000  addli r4, zero, 18
0004dc  1500c014  dma_cfg zero, zero, r12, 10
0004e0  1f062000  addli r12, zero, 16
0004e4  1500c014  dma_cfg zero, zero, r12, 10
0004e8  15003014  dma_cfg zero, zero, r3, 10
0004ec  15004014  dma_cfg zero, zero, r4, 10
0004f0  15005014  dma_cfg zero, zero, r5, 10
0004f4  9f422000  addli r5, zero, 20
0004f8  15005014  dma_cfg zero, zero, r5, 10
0004fc  1500b014  dma_cfg zero, zero, r11, 10
000500  1500e014  dma_cfg zero, zero, r14, 10
000504  1500f014  dma_cfg zero, zero, r15, 10
000508  15000015  dma_cfg zero, zero, r16, 10
00050c  15002015  dma_cfg zero, zero, r18, 10
000510  15005015  dma_cfg zero, zero, r21, 10
000514  15006015  dma_cfg zero, zero, r22, 10
000518  15001015  dma_cfg zero, zero, r17, 10
00051c  9f583000  addli r17, zero, 29
000520  15001015  dma_cfg zero, zero, r17, 10
000524  9f683000  addli r17, zero, 30
000528  15001015  dma_cfg zero, zero, r17, 10
00052c  9f783000  addli r17, zero, 31
000530  15001015  dma_cfg zero, zero, r17, 10
000534  9f380000  addli r17, zero, 3
000538  15050500  dma_cfg r10, r10, zero, 0
00053c  15050002  dma_cfg r10, zero, zero, 1
000540  15000004  dma_cfg zero, zero, zero, 2
000544  150eb007  dma_cfg r28, zero, r27, 3
000548  950ba009  dma_cfg r23, zero, r26, 4
00054c  9509b00b  dma_cfg r19, zero, r27, 5
000550  9739ac02  sll.d r[20:21], r[25:26], r10
000554  6b5c0f01  load.d r[25:26], 16(r30)
000558  15000010  dma_cfg zero, zero, zero, 8
00055c  35000000  dma_run zero
000560  1500a00a  dma_cfg zero, zero, r10, 5
000564  15000010  dma_cfg zero, zero, zero, 8
000568  8b293c11  add.ul r[20:21], r[25:26], r[20:21]
00056c  1f6c1000  addli r24, zero, 14
000570  1d900600  unlock r13
000574  7d000d00  xsignal r26, 0
000578  9f0c1000  addli r25, zero, 8
00057c  7d100c00  xwait r24, 0
000580  1d800600  lock zero, r13
000584  15000014  dma_cfg zero, zero, zero, 10
000588  1500a014  dma_cfg zero, zero, r10, 10
00058c  1500a015  dma_cfg zero, zero, r26, 10
000590  1f0d2000  addli r26, zero, 16
000594  15001015  dma_cfg zero, zero, r17, 10
000598  9f680000  addli r17, zero, 6
00059c  15009014  dma_cfg zero, zero, r9, 10
0005a0  1500d014  dma_cfg zero, zero, r13, 10
0005a4  15001015  dma_cfg zero, zero, r17, 10
0005a8  9f280000  addli r17, zero, 2
0005ac  15008014  dma_cfg zero, zero, r8, 10
0005b0  15009015  dma_cfg zero, zero, r25, 10
0005b4  9f1c1000  addli r25, zero, 9
0005b8  15009015  dma_cfg zero, zero, r25, 10
0005bc  9f2c1000  addli r25, zero, 10
0005c0  15009015  dma_cfg zero, zero, r25, 10
0005c4  9f3c1000  addli r25, zero, 11
0005c8  15009015  dma_cfg zero, zero, r25, 10
0005cc  9f4c1000  addli r25, zero, 12
0005d0  15009015  dma_cfg zero, zero, r25, 10
0005d4  9f5c1000  addli r25, zero, 13
0005d8  15009015  dma_cfg zero, zero, r25, 10
0005dc  9f0c0004  addli r25, zero, 512
0005e0  15008015  dma_cfg zero, zero, r24, 10
0005e4  1f7c1000  addli r24, zero, 15
0005e8  15008015  dma_cfg zero, zero, r24, 10
0005ec  1b9c0004  ori r24, r1, 64
0005f0  1500c014  dma_cfg zero, zero, r12, 10
0005f4  1f660000  addli r12, zero, 6
0005f8  15003014  dma_cfg zero, zero, r3, 10
0005fc  9f212000  addli r3, zero, 18
000600  15004014  dma_cfg zero, zero, r4, 10
000604  1f322000  addli r4, zero, 19
000608  15004014  dma_cfg zero, zero, r4, 10
00060c  1f422000  addli r4, zero, 20
000610  15005014  dma_cfg zero, zero, r5, 10
000614  9f522000  addli r5, zero, 21
000618  1500b014  dma_cfg zero, zero, r11, 10
00061c  9f453000  addli r11, zero, 28
000620  1500e014  dma_cfg zero, zero, r14, 10
000624  1f371000  addli r14, zero, 11
000628  1500f014  dma_cfg zero, zero, r15, 10
00062c  9f073000  addli r15, zero, 24
000630  15000015  dma_cfg zero, zero, r16, 10
000634  1f680000  addli r16, zero, 6
000638  15002015  dma_cfg zero, zero, r18, 10
00063c  1f293000  addli r18, zero, 26
000640  15005015  dma_cfg zero, zero, r21, 10
000644  9f3a3000  addli r21, zero, 27
000648  15006015  dma_cfg zero, zero, r22, 10
00064c  1f4b3000  addli r22, zero, 28
000650  1500b014  dma_cfg zero, zero, r11, 10
000654  9f553000  addli r11, zero, 29
000658  1500b014  dma_cfg zero, zero, r11, 10
00065c  9f653000  addli r11, zero, 30
000660  1500b014  dma_cfg zero, zero, r11, 10
000664  9f753000  addli r11, zero, 31
000668  1500b014  dma_cfg zero, zero, r11, 10
00066c  9f050002  addli r11, zero, 256
000670  15050500  dma_cfg r10, r10, zero, 0
000674  15050002  dma_cfg r10, zero, zero, 1
000678  15000004  dma_cfg zero, zero, zero, 2
00067c  9500b007  dma_cfg r1, zero, r27, 3
000680  950b9008  dma_cfg r23, zero, r9, 4
000684  950ca00a  dma_cfg r25, zero, r10, 5
000688  15000010  dma_cfg zero, zero, zero, 8
00068c  35000000  dma_run zero
000690  1500a00a  dma_cfg zero, zero, r10, 5
000694  15000010  dma_cfg zero, zero, zero, 8
000698  1d900600  unlock r13
00069c  1d800400  lock zero, r9
0006a0  15050500  dma_cfg r10, r10, zero, 0
0006a4  15000a04  dma_cfg zero, r20, zero, 2
0006a8  158cb907  dma_cfg r24, r19, r27, 3
0006ac  9f691000  addli r19, zero, 14
0006b0  958b9d08  dma_cfg r23, r27, r9, 4
0006b4  958ca50a  dma_cfg r25, r11, r10, 5
0006b8  9f350000  addli r11, zero, 3
0006bc  15000010  dma_cfg zero, zero, zero, 8
0006c0  35000000  dma_run zero
0006c4  1500a00a  dma_cfg zero, zero, r10, 5
0006c8  15000010  dma_cfg zero, zero, zero, 8
0006cc  1d900400  unlock r9
0006d0  1d800600  lock zero, r13
0006d4  15000014  dma_cfg zero, zero, zero, 10
0006d8  1500a014  dma_cfg zero, zero, r10, 10
0006dc  15001015  dma_cfg zero, zero, r17, 10
0006e0  1500b014  dma_cfg zero, zero, r11, 10
0006e4  9f051000  addli r11, zero, 8
0006e8  15009014  dma_cfg zero, zero, r9, 10
0006ec  1500d014  dma_cfg zero, zero, r13, 10
0006f0  1500c014  dma_cfg zero, zero, r12, 10
0006f4  1f261000  addli r12, zero, 10
0006f8  15008014  dma_cfg zero, zero, r8, 10
0006fc  1500b014  dma_cfg zero, zero, r11, 10
000700  9f151000  addli r11, zero, 9
000704  1500b014  dma_cfg zero, zero, r11, 10
000708  9f251000  addli r11, zero, 10
00070c  1500c014  dma_cfg zero, zero, r12, 10
000710  1f361000  addli r12, zero, 11
000714  1500e014  dma_cfg zero, zero, r14, 10
000718  1f471000  addli r14, zero, 12
00071c  1500e014  dma_cfg zero, zero, r14, 10
000720  1f571000  addli r14, zero, 13
000724  1500e014  dma_cfg zero, zero, r14, 10
000728  15003015  dma_cfg zero, zero, r19, 10
00072c  9f791000  addli r19, zero, 15
000730  15003015  dma_cfg zero, zero, r19, 10
000734  9f192000  addli r19, zero, 17
000738  1500a015  dma_cfg zero, zero, r26, 10
00073c  15003015  dma_cfg zero, zero, r19, 10
000740  15003014  dma_cfg zero, zero, r3, 10
000744  9f312000  addli r3, zero, 19
000748  15003014  dma_cfg zero, zero, r3, 10
00074c  9f612000  addli r3, zero, 22
000750  15004014  dma_cfg zero, zero, r4, 10
000754  15005014  dma_cfg zero, zero, r5, 10
000758  15003014  dma_cfg zero, zero, r3, 10
00075c  9f712000  addli r3, zero, 23
000760  15003014  dma_cfg zero, zero, r3, 10
000764  9f113000  addli r3, zero, 25
000768  1500f014  dma_cfg zero, zero, r15, 10
00076c  e3474f00  loadli.w r15,  36(r30)
000770  15003014  dma_cfg zero, zero, r3, 10
000774  9f513000  addli r3, zero, 29
000778  15002015  dma_cfg zero, zero, r18, 10
00077c  15005015  dma_cfg zero, zero, r21, 10
000780  15006015  dma_cfg zero, zero, r22, 10
000784  15003014  dma_cfg zero, zero, r3, 10
000788  9f613000  addli r3, zero, 30
00078c  15003014  dma_cfg zero, zero, r3, 10
000790  9f713000  addli r3, zero, 31
000794  15003014  dma_cfg zero, zero, r3, 10
000798  15050500  dma_cfg r10, r10, zero, 0
00079c  15050002  dma_cfg r10, zero, zero, 1
0007a0  15000004  dma_cfg zero, zero, zero, 2
0007a4  9500b007  dma_cfg r1, zero, r27, 3
0007a8  950b9008  dma_cfg r23, zero, r9, 4
0007ac  950ca00a  dma_cfg r25, zero, r10, 5
0007b0  15000010  dma_cfg zero, zero, zero, 8
0007b4  35000000  dma_run zero
0007b8  1500a00a  dma_cfg zero, zero, r10, 5
0007bc  15000010  dma_cfg zero, zero, zero, 8
0007c0  1d900600  unlock r13
0007c4  7d000700  xsignal r14, 0
0007c8  5b45ffff  j -1496
0007cc  9f511000  addli r3, zero, 13
0007d0  7d900500  xwait r11, 0
0007d4  9f090000  addli r19, zero, 0
0007d8  7d900100  xwait r3, 0
0007dc  1d800800  lock zero, r17
0007e0  ab01803f  lui r3, 260096
0007e4  0d000002  ew_cfg zero, zero, zero, 1
0007e8  8d910100  ewcoeff_cfg r3, r3, zero, 0
0007ec  9f71f000  addli r3, zero, 127
0007f0  0d800104  ew_cfg zero, r3, zero, 2
0007f4  0d050006  ew_cfg r10, zero, zero, 3
0007f8  ad891900  dsmadd r19, r19, r1, 0
0007fc  9f890904  addli r19, r19, 512
000800  bbefc9ff  bneq r19, r28, -8
000804  1d900800  unlock r17
000808  7d000600  xsignal r12, 0
00080c  9f611000  addli r3, zero, 14
000810  db3bffff  j -1572
000814  7d900800  xwait r17, 0
000818  7d900600  xwait r13, 0
00081c  1d000000  lock zero, zero
000820  9f310000  addli r3, zero, 3
000824  81080000  ds_cfg r17, zero, 0
000828  810d0002  ds_cfg r27, zero, 1
00082c  810d001c  ds_cfg r27, zero, 14
000830  810d001a  ds_cfg r27, zero, 13
000834  2110be03  shuffle_batch zero, r28, r27, 1
000838  1d100000  unlock zero
00083c  7d800100  xsignal r3, 0
000840  7d800400  xsignal r9, 0
000844  db35ffff  j -1620
000848  eb558f00  load.d r[12:13], 8(r30)
00084c  9739ac02  sll.d r[20:21], r[25:26], r10
000850  7d100400  xwait r8, 0
000854  1d800600  lock zero, r13
000858  9f0a1000  addli r21, zero, 8
00085c  9f211000  addli r3, zero, 10
000860  1f311000  addli r2, zero, 11
000864  9f571000  addli r15, zero, 13
000868  1f6b1000  addli r22, zero, 14
00086c  9f7c1000  addli r25, zero, 15
000870  1f022000  addli r4, zero, 16
000874  1f2d2000  addli r26, zero, 18
000878  9f3b2000  addli r23, zero, 19
00087c  9f522000  addli r5, zero, 21
000880  1f070001  addli r14, zero, 128
000884  1f090004  addli r18, zero, 512
000888  15000014  dma_cfg zero, zero, zero, 10
00088c  1500a014  dma_cfg zero, zero, r10, 10
000890  8ba93511  add.ul r[20:21], r[12:13], r[20:21]
000894  1f360000  addli r12, zero, 3
000898  15001015  dma_cfg zero, zero, r17, 10
00089c  9f151000  addli r11, zero, 9
0008a0  9f482000  addli r17, zero, 20
0008a4  1500c014  dma_cfg zero, zero, r12, 10
0008a8  15009014  dma_cfg zero, zero, r9, 10
0008ac  1500d014  dma_cfg zero, zero, r13, 10
0008b0  15000015  dma_cfg zero, zero, r16, 10
0008b4  1f481000  addli r16, zero, 12
0008b8  15008014  dma_cfg zero, zero, r8, 10
0008bc  1f142000  addli r8, zero, 17
0008c0  15005015  dma_cfg zero, zero, r21, 10
0008c4  1500b014  dma_cfg zero, zero, r11, 10
0008c8  15003014  dma_cfg zero, zero, r3, 10
0008cc  15002014  dma_cfg zero, zero, r2, 10
0008d0  1f612000  addli r2, zero, 22
0008d4  15000015  dma_cfg zero, zero, r16, 10
0008d8  1500f014  dma_cfg zero, zero, r15, 10
0008dc  15006015  dma_cfg zero, zero, r22, 10
0008e0  15009015  dma_cfg zero, zero, r25, 10
0008e4  15004014  dma_cfg zero, zero, r4, 10
0008e8  15008014  dma_cfg zero, zero, r8, 10
0008ec  1500a015  dma_cfg zero, zero, r26, 10
0008f0  15007015  dma_cfg zero, zero, r23, 10
0008f4  15001015  dma_cfg zero, zero, r17, 10
0008f8  15005014  dma_cfg zero, zero, r5, 10
0008fc  15002014  dma_cfg zero, zero, r2, 10
000900  1f712000  addli r2, zero, 23
000904  15002014  dma_cfg zero, zero, r2, 10
000908  1f013000  addli r2, zero, 24
00090c  15002014  dma_cfg zero, zero, r2, 10
000910  1f113000  addli r2, zero, 25
000914  15002014  dma_cfg zero, zero, r2, 10
000918  1f213000  addli r2, zero, 26
00091c  15002014  dma_cfg zero, zero, r2, 10
000920  1f313000  addli r2, zero, 27
000924  15002014  dma_cfg zero, zero, r2, 10
000928  1f413000  addli r2, zero, 28
00092c  15002014  dma_cfg zero, zero, r2, 10
000930  1f513000  addli r2, zero, 29
000934  15002014  dma_cfg zero, zero, r2, 10
000938  1f613000  addli r2, zero, 30
00093c  15002014  dma_cfg zero, zero, r2, 10
000940  1f713000  addli r2, zero, 31
000944  15002014  dma_cfg zero, zero, r2, 10
000948  2bc10000  lui r2, 12
00094c  15050500  dma_cfg r10, r10, zero, 0
000950  15050002  dma_cfg r10, zero, zero, 1
000954  1b1c0104  ori r24, r2, 64
000958  15000004  dma_cfg zero, zero, zero, 2
00095c  1501b007  dma_cfg r2, zero, r27, 3
000960  15079008  dma_cfg r14, zero, r9, 4
000964  1509b00b  dma_cfg r18, zero, r27, 5
000968  15000010  dma_cfg zero, zero, zero, 8
00096c  35000000  dma_run zero
000970  1500a00a  dma_cfg zero, zero, r10, 5
000974  15000010  dma_cfg zero, zero, zero, 8
000978  1d900600  unlock r13
00097c  1d800400  lock zero, r9
000980  15050500  dma_cfg r10, r10, zero, 0
000984  15000a04  dma_cfg zero, r20, zero, 2
000988  158cb907  dma_cfg r24, r19, r27, 3
00098c  9f090010  addli r19, zero, 2048
000990  15879d08  dma_cfg r14, r27, r9, 4
000994  1589b90b  dma_cfg r18, r19, r27, 5
000998  9f290000  addli r19, zero, 2
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
0009dc  1f361000  addli r12, zero, 11
0009e0  15005015  dma_cfg zero, zero, r21, 10
0009e4  1500b014  dma_cfg zero, zero, r11, 10
0009e8  9f251000  addli r11, zero, 10
0009ec  15003014  dma_cfg zero, zero, r3, 10
0009f0  9f311000  addli r3, zero, 11
0009f4  15003014  dma_cfg zero, zero, r3, 10
0009f8  9f612000  addli r3, zero, 22
0009fc  15000015  dma_cfg zero, zero, r16, 10
000a00  1f680000  addli r16, zero, 6
000a04  1500f014  dma_cfg zero, zero, r15, 10
000a08  e3474f00  loadli.w r15,  36(r30)
000a0c  15006015  dma_cfg zero, zero, r22, 10
000a10  15009015  dma_cfg zero, zero, r25, 10
000a14  15004014  dma_cfg zero, zero, r4, 10
000a18  15008014  dma_cfg zero, zero, r8, 10
000a1c  1f740000  addli r8, zero, 7
000a20  1500a015  dma_cfg zero, zero, r26, 10
000a24  15007015  dma_cfg zero, zero, r23, 10
000a28  15001015  dma_cfg zero, zero, r17, 10
000a2c  9f280000  addli r17, zero, 2
000a30  15005014  dma_cfg zero, zero, r5, 10
000a34  15003014  dma_cfg zero, zero, r3, 10
000a38  9f712000  addli r3, zero, 23
000a3c  15003014  dma_cfg zero, zero, r3, 10
000a40  9f013000  addli r3, zero, 24
000a44  15003014  dma_cfg zero, zero, r3, 10
000a48  9f113000  addli r3, zero, 25
000a4c  15003014  dma_cfg zero, zero, r3, 10
000a50  9f213000  addli r3, zero, 26
000a54  15003014  dma_cfg zero, zero, r3, 10
000a58  9f313000  addli r3, zero, 27
000a5c  15003014  dma_cfg zero, zero, r3, 10
000a60  9f413000  addli r3, zero, 28
000a64  15003014  dma_cfg zero, zero, r3, 10
000a68  9f513000  addli r3, zero, 29
000a6c  15003014  dma_cfg zero, zero, r3, 10
000a70  9f613000  addli r3, zero, 30
000a74  15003014  dma_cfg zero, zero, r3, 10
000a78  9f713000  addli r3, zero, 31
000a7c  15003014  dma_cfg zero, zero, r3, 10
000a80  15050500  dma_cfg r10, r10, zero, 0
000a84  15050002  dma_cfg r10, zero, zero, 1
000a88  15000004  dma_cfg zero, zero, zero, 2
000a8c  1501b007  dma_cfg r2, zero, r27, 3
000a90  00310002  core_id r2
000a94  15079008  dma_cfg r14, zero, r9, 4
000a98  1509b00b  dma_cfg r18, zero, r27, 5
000a9c  15000010  dma_cfg zero, zero, zero, 8
000aa0  35000000  dma_run zero
000aa4  1500a00a  dma_cfg zero, zero, r10, 5
000aa8  15000010  dma_cfg zero, zero, zero, 8
000aac  1d900600  unlock r13
000ab0  7d000800  xsignal r16, 0
000ab4  dbe7feff  j -2244
000ab8  7d000000  xsignal zero, 0
000abc  bb600100  bneq r2, zero, 56
000ac0  9f200000  addli r1, zero, 2
000ac4  7d100000  xwait zero, 0
000ac8  7d100000  xwait zero, 0
000acc  7d100000  xwait zero, 0
000ad0  7d100000  xwait zero, 0
000ad4  7d100000  xwait zero, 0
000ad8  7d100000  xwait zero, 0
000adc  7d100000  xwait zero, 0
000ae0  7d100000  xwait zero, 0
000ae4  1d800000  lock zero, r1
000ae8  0d000020  ew_cfg zero, zero, zero, 16
000aec  1d900000  unlock r1
000af0  7d400000  xsignal_mode_cfg zero
000af4  9f8e1e00  addli sp, sp, 8
000af8  00a00300  mfence { lm, sm, gm }
000afc  00100000  exit
000b00  00100000  exit
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
