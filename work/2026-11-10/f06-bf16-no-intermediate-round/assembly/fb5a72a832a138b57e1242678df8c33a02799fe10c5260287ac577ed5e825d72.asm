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
0000c0  003e0002  core_id r28
0000c4  634a4f00  loadli.w r20,  36(r30)
0000c8  7dc00000  xsignal_mode_cfg r1
0000cc  37600e00  beq r28, zero, 24
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
000100  1f320000  addli r4, zero, 3
000104  80a10004  csr_set csr3, r1
000108  9f500000  addli r1, zero, 5
00010c  00d00100  sync_group
000110  7d800000  xsignal r1, 0
000114  7d000200  xsignal r4, 0
000118  9f101000  addli r1, zero, 9
00011c  1f720000  addli r4, zero, 7
000120  7d800000  xsignal r1, 0
000124  7d000200  xsignal r4, 0
000128  9f301000  addli r1, zero, 11
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
000170  4b161204  ble.s r4, r1, 2436
000174  33110228  sext_int2long r[3:4], r4
000178  33930028  sext_int2long r[7:8], r1
00017c  1f740000  addli r8, zero, 7
000180  9f440000  addli r9, zero, 4
000184  1f150000  addli r10, zero, 1
000188  9f550000  addli r11, zero, 5
00018c  1f260000  addli r12, zero, 2
000190  1f680000  addli r16, zero, 6
000194  1f121000  addli r4, zero, 9
000198  9f461000  addli r13, zero, 12
00019c  9f0d8000  addli r27, zero, 64
0001a0  9f080001  addli r17, zero, 128
0001a4  abc00000  lui r1, 12
0001a8  ab8b0000  lui r23, 8
0001ac  733c2ffe  store.d r[3:4], -8(r30)
0001b0  5b510000  j 648
0001b4  eb568f00  load.d r[14:15], 8(r30)
0001b8  97baac02  sll.d r[22:23], r[26:27], r10
0001bc  7d100400  xwait r8, 0
0001c0  1d800500  lock zero, r11
0001c4  1f091000  addli r18, zero, 8
0001c8  9f121000  addli r5, zero, 9
0001cc  1f2a1000  addli r20, zero, 10
0001d0  9f4c1000  addli r25, zero, 12
0001d4  1f5d1000  addli r26, zero, 13
0001d8  9f671000  addli r15, zero, 14
0001dc  1f012000  addli r2, zero, 16
0001e0  9f182000  addli r17, zero, 17
0001e4  9f010001  addli r3, zero, 128
0001e8  9f090004  addli r19, zero, 512
0001ec  1f121000  addli r4, zero, 9
0001f0  15000014  dma_cfg zero, zero, zero, 10
0001f4  1500a014  dma_cfg zero, zero, r10, 10
0001f8  8baa5611  add.ul r[22:23], r[14:15], r[22:23]
0001fc  9f360000  addli r13, zero, 3
000200  1500c014  dma_cfg zero, zero, r12, 10
000204  1f771000  addli r14, zero, 15
000208  1f462000  addli r12, zero, 20
00020c  1500d014  dma_cfg zero, zero, r13, 10
000210  15009014  dma_cfg zero, zero, r9, 10
000214  1500b014  dma_cfg zero, zero, r11, 10
000218  15000015  dma_cfg zero, zero, r16, 10
00021c  1f381000  addli r16, zero, 11
000220  15008014  dma_cfg zero, zero, r8, 10
000224  1f242000  addli r8, zero, 18
000228  15002015  dma_cfg zero, zero, r18, 10
00022c  15005014  dma_cfg zero, zero, r5, 10
000230  15004015  dma_cfg zero, zero, r20, 10
000234  15000015  dma_cfg zero, zero, r16, 10
000238  15009015  dma_cfg zero, zero, r25, 10
00023c  1500a015  dma_cfg zero, zero, r26, 10
000240  1500f014  dma_cfg zero, zero, r15, 10
000244  1500e014  dma_cfg zero, zero, r14, 10
000248  15002014  dma_cfg zero, zero, r2, 10
00024c  1f312000  addli r2, zero, 19
000250  15001015  dma_cfg zero, zero, r17, 10
000254  15008014  dma_cfg zero, zero, r8, 10
000258  15002014  dma_cfg zero, zero, r2, 10
00025c  1f512000  addli r2, zero, 21
000260  1500c014  dma_cfg zero, zero, r12, 10
000264  15002014  dma_cfg zero, zero, r2, 10
000268  1f612000  addli r2, zero, 22
00026c  15002014  dma_cfg zero, zero, r2, 10
000270  1f712000  addli r2, zero, 23
000274  15002014  dma_cfg zero, zero, r2, 10
000278  1f013000  addli r2, zero, 24
00027c  15002014  dma_cfg zero, zero, r2, 10
000280  1f113000  addli r2, zero, 25
000284  15002014  dma_cfg zero, zero, r2, 10
000288  1f213000  addli r2, zero, 26
00028c  15002014  dma_cfg zero, zero, r2, 10
000290  1f313000  addli r2, zero, 27
000294  15002014  dma_cfg zero, zero, r2, 10
000298  1f413000  addli r2, zero, 28
00029c  15002014  dma_cfg zero, zero, r2, 10
0002a0  1f513000  addli r2, zero, 29
0002a4  15002014  dma_cfg zero, zero, r2, 10
0002a8  1f613000  addli r2, zero, 30
0002ac  15002014  dma_cfg zero, zero, r2, 10
0002b0  1f713000  addli r2, zero, 31
0002b4  15002014  dma_cfg zero, zero, r2, 10
0002b8  2b410000  lui r2, 4
0002bc  15050500  dma_cfg r10, r10, zero, 0
0002c0  15050002  dma_cfg r10, zero, zero, 1
0002c4  1b1c0104  ori r24, r2, 64
0002c8  15000004  dma_cfg zero, zero, zero, 2
0002cc  1501b007  dma_cfg r2, zero, r27, 3
0002d0  95019008  dma_cfg r3, zero, r9, 4
0002d4  9509b00b  dma_cfg r19, zero, r27, 5
0002d8  15000010  dma_cfg zero, zero, zero, 8
0002dc  35000000  dma_run zero
0002e0  1500a00a  dma_cfg zero, zero, r10, 5
0002e4  15000010  dma_cfg zero, zero, zero, 8
0002e8  1d900500  unlock r11
0002ec  1d800400  lock zero, r9
0002f0  15050500  dma_cfg r10, r10, zero, 0
0002f4  15000b04  dma_cfg zero, r22, zero, 2
0002f8  158cba07  dma_cfg r24, r21, r27, 3
0002fc  9f0a0010  addli r21, zero, 2048
000300  95819d08  dma_cfg r3, r27, r9, 4
000304  9589ba0b  dma_cfg r19, r21, r27, 5
000308  9f2a0000  addli r21, zero, 2
00030c  15000010  dma_cfg zero, zero, zero, 8
000310  35000000  dma_run zero
000314  1500a00a  dma_cfg zero, zero, r10, 5
000318  15000010  dma_cfg zero, zero, zero, 8
00031c  1d900400  unlock r9
000320  1d800500  lock zero, r11
000324  15000014  dma_cfg zero, zero, zero, 10
000328  1500a014  dma_cfg zero, zero, r10, 10
00032c  15005015  dma_cfg zero, zero, r21, 10
000330  1500d014  dma_cfg zero, zero, r13, 10
000334  9f660000  addli r13, zero, 6
000338  15009014  dma_cfg zero, zero, r9, 10
00033c  1500b014  dma_cfg zero, zero, r11, 10
000340  1500d014  dma_cfg zero, zero, r13, 10
000344  9f760000  addli r13, zero, 7
000348  1500d014  dma_cfg zero, zero, r13, 10
00034c  9f461000  addli r13, zero, 12
000350  15002015  dma_cfg zero, zero, r18, 10
000354  15005014  dma_cfg zero, zero, r5, 10
000358  9f022000  addli r5, zero, 16
00035c  15004015  dma_cfg zero, zero, r20, 10
000360  634a4f00  loadli.w r20,  36(r30)
000364  15000015  dma_cfg zero, zero, r16, 10
000368  1f680000  addli r16, zero, 6
00036c  15009015  dma_cfg zero, zero, r25, 10
000370  1500a015  dma_cfg zero, zero, r26, 10
000374  1500f014  dma_cfg zero, zero, r15, 10
000378  1500e014  dma_cfg zero, zero, r14, 10
00037c  15005014  dma_cfg zero, zero, r5, 10
000380  9f322000  addli r5, zero, 19
000384  15001015  dma_cfg zero, zero, r17, 10
000388  9f080001  addli r17, zero, 128
00038c  15008014  dma_cfg zero, zero, r8, 10
000390  1f740000  addli r8, zero, 7
000394  15005014  dma_cfg zero, zero, r5, 10
000398  9f522000  addli r5, zero, 21
00039c  1500c014  dma_cfg zero, zero, r12, 10
0003a0  1f260000  addli r12, zero, 2
0003a4  15005014  dma_cfg zero, zero, r5, 10
0003a8  9f622000  addli r5, zero, 22
0003ac  15005014  dma_cfg zero, zero, r5, 10
0003b0  9f722000  addli r5, zero, 23
0003b4  15005014  dma_cfg zero, zero, r5, 10
0003b8  9f023000  addli r5, zero, 24
0003bc  15005014  dma_cfg zero, zero, r5, 10
0003c0  9f123000  addli r5, zero, 25
0003c4  15005014  dma_cfg zero, zero, r5, 10
0003c8  9f223000  addli r5, zero, 26
0003cc  15005014  dma_cfg zero, zero, r5, 10
0003d0  9f323000  addli r5, zero, 27
0003d4  15005014  dma_cfg zero, zero, r5, 10
0003d8  9f423000  addli r5, zero, 28
0003dc  15005014  dma_cfg zero, zero, r5, 10
0003e0  9f523000  addli r5, zero, 29
0003e4  15005014  dma_cfg zero, zero, r5, 10
0003e8  9f623000  addli r5, zero, 30
0003ec  15005014  dma_cfg zero, zero, r5, 10
0003f0  9f723000  addli r5, zero, 31
0003f4  15005014  dma_cfg zero, zero, r5, 10
0003f8  15050500  dma_cfg r10, r10, zero, 0
0003fc  15050002  dma_cfg r10, zero, zero, 1
000400  15000004  dma_cfg zero, zero, zero, 2
000404  1501b007  dma_cfg r2, zero, r27, 3
000408  95019008  dma_cfg r3, zero, r9, 4
00040c  9509b00b  dma_cfg r19, zero, r27, 5
000410  15000010  dma_cfg zero, zero, zero, 8
000414  35000000  dma_run zero
000418  1500a00a  dma_cfg zero, zero, r10, 5
00041c  15000010  dma_cfg zero, zero, zero, 8
000420  1d900500  unlock r11
000424  7d000800  xsignal r16, 0
000428  6b518fff  load.d r[3:4], -8(r30)
00042c  27130300  addli.d r[7:8], r[7:8], 1
000430  933a2304  setlt.sl r21, r[7:8], r[3:4]
000434  378b0a02  beq r21, zero, 1728
000438  e30a5f00  loadli.w r21,  40(r30)
00043c  8b1a5331  div.s r21, r6, r21
000440  0b9b4a39  mod.s r22, r21, r20
000444  8b9a4a31  div.s r21, r21, r20
000448  331c0b28  sext_int2long r[25:26], r22
00044c  b39a0a28  sext_int2long r[22:23], r21
000450  973c8c02  sll.d r[26:27], r[25:26], r8
000454  1b9c0020  ori r24, r1, 512
000458  bf91c401  blt.s r9, r28, 100
00045c  3765aefe  beq r28, r10, -680
000460  b725ce00  beq r28, r12, 360
000464  bb639e00  bneq r28, r9, 248
000468  1f011000  addli r2, zero, 8
00046c  9f611000  addli r3, zero, 14
000470  7d900400  xwait r9, 0
000474  9b9a0030  ori r21, r1, 768
000478  7d100100  xwait r2, 0
00047c  7d900100  xwait r3, 0
000480  1d000500  lock zero, r10
000484  2b410000  lui r2, 4
000488  898dbd01  mm_cfg r27, r27, r27, 0
00048c  8984a404  mm_cfg r9, r9, r10, 2
000490  290c0010  mm r24, zero, zero, 8
000494  1d100500  unlock r10
000498  1d000500  lock zero, r10
00049c  898dbd01  mm_cfg r27, r27, r27, 0
0004a0  8984a404  mm_cfg r9, r9, r10, 2
0004a4  a90a2010  mm r21, zero, r2, 8
0004a8  1d100500  unlock r10
0004ac  7d800500  xsignal r11, 0
0004b0  7d000200  xsignal r4, 0
0004b4  7d800600  xsignal r13, 0
0004b8  5beeffff  j -144
0004bc  3731be00  beq r28, r11, 76
0004c0  b7740e01  beq r28, r16, 316
0004c4  3b628e00  bneq r28, r8, 152
0004c8  7d100800  xwait r16, 0
0004cc  7d100200  xwait r4, 0
0004d0  1d000000  lock zero, zero
0004d4  1f010001  addli r2, zero, 128
0004d8  9f080001  addli r17, zero, 128
0004dc  01060000  ds_cfg r12, zero, 0
0004e0  01010002  ds_cfg r2, zero, 1
0004e4  810d001c  ds_cfg r27, zero, 14
0004e8  0101001a  ds_cfg r2, zero, 13
0004ec  2b410000  lui r2, 4
0004f0  4100b105  shuffle_coa zero, r2, r27, 2
0004f4  1f011000  addli r2, zero, 8
0004f8  1d100000  unlock zero
0004fc  7d000400  xsignal r8, 0
000500  7d000100  xsignal r2, 0
000504  dbe4ffff  j -220
000508  1f271000  addli r14, zero, 10
00050c  2b01803f  lui r2, 260096
000510  9f0a0000  addli r21, zero, 0
000514  7d100700  xwait r14, 0
000518  7d900600  xwait r13, 0
00051c  1d000600  lock zero, r12
000520  0d000002  ew_cfg zero, zero, zero, 1
000524  0d110100  ewcoeff_cfg r2, r2, zero, 0
000528  1f71f000  addli r2, zero, 127
00052c  0d000104  ew_cfg zero, r2, zero, 2
000530  0d050006  ew_cfg r10, zero, zero, 3
000534  0b9b8a11  add.s r22, r21, r24
000538  9f8a0a04  addli r21, r21, 512
00053c  2d0b1b00  dsmadd r22, r22, r1, 0
000540  bbdf7aff  bneq r21, r23, -12
000544  1f371000  addli r14, zero, 11
000548  1d100600  unlock r12
00054c  7d000700  xsignal r14, 0
000550  1f571000  addli r14, zero, 13
000554  7d000700  xsignal r14, 0
000558  5bdaffff  j -304
00055c  3b3b0efe  bneq r28, zero, -308
000560  1f112000  addli r2, zero, 17
000564  6b578f01  load.d r[15:16], 24(r30)
000568  17bcac02  sll.d r[25:26], r[26:27], r10
00056c  9f010010  addli r3, zero, 2048
000570  97ba2a02  sll.d r[22:23], r[22:23], r2
000574  1f010004  addli r2, zero, 512
000578  8b2a5711  add.ul r[22:23], r[15:16], r[22:23]
00057c  1f571000  addli r14, zero, 13
000580  7d100700  xwait r14, 0
000584  1d800500  lock zero, r11
000588  8baa8a11  add.ul r[22:23], r[22:23], r[25:26]
00058c  1b9c0024  ori r24, r1, 576
000590  15050500  dma_cfg r10, r10, zero, 0
000594  15000502  dma_cfg zero, r10, zero, 1
000598  150b0004  dma_cfg r22, zero, zero, 2
00059c  950abc07  dma_cfg r21, r24, r27, 3
0005a0  958d9808  dma_cfg r27, r17, r9, 4
0005a4  9501b10b  dma_cfg r3, r2, r27, 5
0005a8  9f611000  addli r3, zero, 14
0005ac  15000010  dma_cfg zero, zero, zero, 8
0005b0  35000000  dma_run zero
0005b4  1500a00a  dma_cfg zero, zero, r10, 5
0005b8  15000010  dma_cfg zero, zero, zero, 8
0005bc  1d900500  unlock r11
0005c0  7d800100  xsignal r3, 0
0005c4  dbccffff  j -412
0005c8  7d100600  xwait r12, 0
0005cc  7d900500  xwait r11, 0
0005d0  1d000000  lock zero, zero
0005d4  9f370000  addli r15, zero, 3
0005d8  01060000  ds_cfg r12, zero, 0
0005dc  810d0002  ds_cfg r27, zero, 1
0005e0  810d001c  ds_cfg r27, zero, 14
0005e4  810d001a  ds_cfg r27, zero, 13
0005e8  2110b003  shuffle_batch zero, zero, r27, 1
0005ec  1d100000  unlock zero
0005f0  7d800700  xsignal r15, 0
0005f4  7d800400  xsignal r9, 0
0005f8  5bc6ffff  j -464
0005fc  1f511000  addli r2, zero, 13
000600  1f521000  addli r4, zero, 13
000604  eb580f00  load.d r[18:19], 0(r30)
000608  9f360000  addli r13, zero, 3
00060c  9f011000  addli r3, zero, 8
000610  1f1a1000  addli r20, zero, 9
000614  9f291000  addli r19, zero, 10
000618  9f471000  addli r15, zero, 12
00061c  1f671000  addli r14, zero, 14
000620  1f0e2000  addli r28, zero, 16
000624  9f322000  addli r5, zero, 19
000628  1f7c3000  addli r24, zero, 31
00062c  97ba2a02  sll.d r[22:23], r[22:23], r2
000630  1f310000  addli r2, zero, 3
000634  7d100100  xwait r2, 0
000638  1d800500  lock zero, r11
00063c  8baa5811  add.ul r[22:23], r[18:19], r[22:23]
000640  1f090002  addli r18, zero, 256
000644  9f381000  addli r17, zero, 11
000648  15000014  dma_cfg zero, zero, zero, 10
00064c  1500a014  dma_cfg zero, zero, r10, 10
000650  1500c014  dma_cfg zero, zero, r12, 10
000654  15002014  dma_cfg zero, zero, r2, 10
000658  1f011000  addli r2, zero, 8
00065c  15009014  dma_cfg zero, zero, r9, 10
000660  1500b014  dma_cfg zero, zero, r11, 10
000664  15000015  dma_cfg zero, zero, r16, 10
000668  1f282000  addli r16, zero, 18
00066c  15008014  dma_cfg zero, zero, r8, 10
000670  15002014  dma_cfg zero, zero, r2, 10
000674  1f111000  addli r2, zero, 9
000678  15002014  dma_cfg zero, zero, r2, 10
00067c  1f211000  addli r2, zero, 10
000680  15002014  dma_cfg zero, zero, r2, 10
000684  1f311000  addli r2, zero, 11
000688  15002014  dma_cfg zero, zero, r2, 10
00068c  1f411000  addli r2, zero, 12
000690  15002014  dma_cfg zero, zero, r2, 10
000694  1f611000  addli r2, zero, 14
000698  15004014  dma_cfg zero, zero, r4, 10
00069c  1f521000  addli r4, zero, 13
0006a0  15002014  dma_cfg zero, zero, r2, 10
0006a4  1f711000  addli r2, zero, 15
0006a8  15002014  dma_cfg zero, zero, r2, 10
0006ac  1f012000  addli r2, zero, 16
0006b0  15002014  dma_cfg zero, zero, r2, 10
0006b4  1f112000  addli r2, zero, 17
0006b8  15002014  dma_cfg zero, zero, r2, 10
0006bc  1f212000  addli r2, zero, 18
0006c0  15002014  dma_cfg zero, zero, r2, 10
0006c4  1f312000  addli r2, zero, 19
0006c8  15002014  dma_cfg zero, zero, r2, 10
0006cc  1f412000  addli r2, zero, 20
0006d0  15002014  dma_cfg zero, zero, r2, 10
0006d4  1f512000  addli r2, zero, 21
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
000724  1f713000  addli r2, zero, 31
000728  15002014  dma_cfg zero, zero, r2, 10
00072c  1f010001  addli r2, zero, 128
000730  15050500  dma_cfg r10, r10, zero, 0
000734  15050002  dma_cfg r10, zero, zero, 1
000738  15000004  dma_cfg zero, zero, zero, 2
00073c  1500b007  dma_cfg zero, zero, r27, 3
000740  1501c008  dma_cfg r2, zero, r12, 4
000744  1509b00b  dma_cfg r18, zero, r27, 5
000748  1f090002  addli r18, zero, 256
00074c  15000010  dma_cfg zero, zero, zero, 8
000750  35000000  dma_run zero
000754  1500a00a  dma_cfg zero, zero, r10, 5
000758  15000010  dma_cfg zero, zero, zero, 8
00075c  1d900500  unlock r11
000760  1d800400  lock zero, r9
000764  15050500  dma_cfg r10, r10, zero, 0
000768  15000b04  dma_cfg zero, r22, zero, 2
00076c  958dba07  dma_cfg r27, r21, r27, 3
000770  9f0a0002  addli r21, zero, 256
000774  1581cd08  dma_cfg r2, r27, r12, 4
000778  1509b10b  dma_cfg r18, r2, r27, 5
00077c  1f293000  addli r18, zero, 26
000780  15000010  dma_cfg zero, zero, zero, 8
000784  35000000  dma_run zero
000788  1500a00a  dma_cfg zero, zero, r10, 5
00078c  15000010  dma_cfg zero, zero, zero, 8
000790  1d900400  unlock r9
000794  1d800500  lock zero, r11
000798  15000014  dma_cfg zero, zero, zero, 10
00079c  1500a014  dma_cfg zero, zero, r10, 10
0007a0  1500c014  dma_cfg zero, zero, r12, 10
0007a4  1f660000  addli r12, zero, 6
0007a8  1500d014  dma_cfg zero, zero, r13, 10
0007ac  9f562000  addli r13, zero, 21
0007b0  15009014  dma_cfg zero, zero, r9, 10
0007b4  1500b014  dma_cfg zero, zero, r11, 10
0007b8  1500c014  dma_cfg zero, zero, r12, 10
0007bc  1f563000  addli r12, zero, 29
0007c0  15008014  dma_cfg zero, zero, r8, 10
0007c4  15003014  dma_cfg zero, zero, r3, 10
0007c8  9f711000  addli r3, zero, 15
0007cc  15004015  dma_cfg zero, zero, r20, 10
0007d0  1f4a3000  addli r20, zero, 28
0007d4  15003015  dma_cfg zero, zero, r19, 10
0007d8  9f393000  addli r19, zero, 27
0007dc  15001015  dma_cfg zero, zero, r17, 10
0007e0  9f183000  addli r17, zero, 25
0007e4  1500f014  dma_cfg zero, zero, r15, 10
0007e8  9f772000  addli r15, zero, 23
0007ec  15004014  dma_cfg zero, zero, r4, 10
0007f0  1f122000  addli r4, zero, 17
0007f4  1500e014  dma_cfg zero, zero, r14, 10
0007f8  1f672000  addli r14, zero, 22
0007fc  15003014  dma_cfg zero, zero, r3, 10
000800  1500c015  dma_cfg zero, zero, r28, 10
000804  15004014  dma_cfg zero, zero, r4, 10
000808  15000015  dma_cfg zero, zero, r16, 10
00080c  1f083000  addli r16, zero, 24
000810  15005014  dma_cfg zero, zero, r5, 10
000814  9f422000  addli r5, zero, 20
000818  15005014  dma_cfg zero, zero, r5, 10
00081c  1500d014  dma_cfg zero, zero, r13, 10
000820  1500e014  dma_cfg zero, zero, r14, 10
000824  1500f014  dma_cfg zero, zero, r15, 10
000828  15000015  dma_cfg zero, zero, r16, 10
00082c  15001015  dma_cfg zero, zero, r17, 10
000830  15002015  dma_cfg zero, zero, r18, 10
000834  15003015  dma_cfg zero, zero, r19, 10
000838  15004015  dma_cfg zero, zero, r20, 10
00083c  1500c014  dma_cfg zero, zero, r12, 10
000840  1f663000  addli r12, zero, 30
000844  1500c014  dma_cfg zero, zero, r12, 10
000848  1f260000  addli r12, zero, 2
00084c  15008015  dma_cfg zero, zero, r24, 10
000850  15050500  dma_cfg r10, r10, zero, 0
000854  15050002  dma_cfg r10, zero, zero, 1
000858  15000004  dma_cfg zero, zero, zero, 2
00085c  1500b007  dma_cfg zero, zero, r27, 3
000860  1501c008  dma_cfg r2, zero, r12, 4
000864  1f260000  addli r12, zero, 2
000868  950ab00b  dma_cfg r21, zero, r27, 5
00086c  97baac02  sll.d r[22:23], r[26:27], r10
000870  6b5c0f01  load.d r[25:26], 16(r30)
000874  1f1d1000  addli r26, zero, 9
000878  15000010  dma_cfg zero, zero, zero, 8
00087c  35000000  dma_run zero
000880  1500a00a  dma_cfg zero, zero, r10, 5
000884  15000010  dma_cfg zero, zero, zero, 8
000888  8b2a5c11  add.ul r[22:23], r[25:26], r[22:23]
00088c  1f3c1000  addli r24, zero, 11
000890  1d900500  unlock r11
000894  7d000600  xsignal r12, 0
000898  1f260000  addli r12, zero, 2
00089c  9f0c0004  addli r25, zero, 512
0008a0  7d100c00  xwait r24, 0
0008a4  1d800500  lock zero, r11
0008a8  15000014  dma_cfg zero, zero, zero, 10
0008ac  1500a014  dma_cfg zero, zero, r10, 10
0008b0  1500c014  dma_cfg zero, zero, r12, 10
0008b4  1f360000  addli r12, zero, 3
0008b8  1500c014  dma_cfg zero, zero, r12, 10
0008bc  1f660000  addli r12, zero, 6
0008c0  15009014  dma_cfg zero, zero, r9, 10
0008c4  1500b014  dma_cfg zero, zero, r11, 10
0008c8  1500c014  dma_cfg zero, zero, r12, 10
0008cc  1f061000  addli r12, zero, 8
0008d0  15008014  dma_cfg zero, zero, r8, 10
0008d4  1500c014  dma_cfg zero, zero, r12, 10
0008d8  1f261000  addli r12, zero, 10
0008dc  1500a015  dma_cfg zero, zero, r26, 10
0008e0  1500c014  dma_cfg zero, zero, r12, 10
0008e4  1f461000  addli r12, zero, 12
0008e8  15008015  dma_cfg zero, zero, r24, 10
0008ec  1b9c0004  ori r24, r1, 64
0008f0  1500c014  dma_cfg zero, zero, r12, 10
0008f4  1f561000  addli r12, zero, 13
0008f8  1500c014  dma_cfg zero, zero, r12, 10
0008fc  1f661000  addli r12, zero, 14
000900  1500c014  dma_cfg zero, zero, r12, 10
000904  1f660000  addli r12, zero, 6
000908  15003014  dma_cfg zero, zero, r3, 10
00090c  9f012000  addli r3, zero, 16
000910  1500c015  dma_cfg zero, zero, r28, 10
000914  003e0002  core_id r28
000918  15004014  dma_cfg zero, zero, r4, 10
00091c  1f222000  addli r4, zero, 18
000920  15004014  dma_cfg zero, zero, r4, 10
000924  1f322000  addli r4, zero, 19
000928  15004014  dma_cfg zero, zero, r4, 10
00092c  1f523000  addli r4, zero, 29
000930  15005014  dma_cfg zero, zero, r5, 10
000934  9f522000  addli r5, zero, 21
000938  1500d014  dma_cfg zero, zero, r13, 10
00093c  9f361000  addli r13, zero, 11
000940  1500e014  dma_cfg zero, zero, r14, 10
000944  1f271000  addli r14, zero, 10
000948  1500f014  dma_cfg zero, zero, r15, 10
00094c  9f073000  addli r15, zero, 24
000950  15000015  dma_cfg zero, zero, r16, 10
000954  1f680000  addli r16, zero, 6
000958  15001015  dma_cfg zero, zero, r17, 10
00095c  9f283000  addli r17, zero, 26
000960  15002015  dma_cfg zero, zero, r18, 10
000964  1f393000  addli r18, zero, 27
000968  15003015  dma_cfg zero, zero, r19, 10
00096c  9f493000  addli r19, zero, 28
000970  15004015  dma_cfg zero, zero, r20, 10
000974  1f5a3000  addli r20, zero, 29
000978  15004014  dma_cfg zero, zero, r4, 10
00097c  1f623000  addli r4, zero, 30
000980  15004014  dma_cfg zero, zero, r4, 10
000984  1f723000  addli r4, zero, 31
000988  15004014  dma_cfg zero, zero, r4, 10
00098c  1f020002  addli r4, zero, 256
000990  15050500  dma_cfg r10, r10, zero, 0
000994  15050002  dma_cfg r10, zero, zero, 1
000998  15000004  dma_cfg zero, zero, zero, 2
00099c  9500b007  dma_cfg r1, zero, r27, 3
0009a0  15019008  dma_cfg r2, zero, r9, 4
0009a4  950ca00a  dma_cfg r25, zero, r10, 5
0009a8  15000010  dma_cfg zero, zero, zero, 8
0009ac  35000000  dma_run zero
0009b0  1500a00a  dma_cfg zero, zero, r10, 5
0009b4  15000010  dma_cfg zero, zero, zero, 8
0009b8  1d900500  unlock r11
0009bc  1d800400  lock zero, r9
0009c0  15050500  dma_cfg r10, r10, zero, 0
0009c4  15000b04  dma_cfg zero, r22, zero, 2
0009c8  158cba07  dma_cfg r24, r21, r27, 3
0009cc  9f4a1000  addli r21, zero, 12
0009d0  15819d08  dma_cfg r2, r27, r9, 4
0009d4  950ca20a  dma_cfg r25, r4, r10, 5
0009d8  1f220000  addli r4, zero, 2
0009dc  15000010  dma_cfg zero, zero, zero, 8
0009e0  35000000  dma_run zero
0009e4  1500a00a  dma_cfg zero, zero, r10, 5
0009e8  15000010  dma_cfg zero, zero, zero, 8
0009ec  1d900400  unlock r9
0009f0  1d800500  lock zero, r11
0009f4  15000014  dma_cfg zero, zero, zero, 10
0009f8  1500a014  dma_cfg zero, zero, r10, 10
0009fc  15004014  dma_cfg zero, zero, r4, 10
000a00  1f320000  addli r4, zero, 3
000a04  15004014  dma_cfg zero, zero, r4, 10
000a08  1f021000  addli r4, zero, 8
000a0c  15009014  dma_cfg zero, zero, r9, 10
000a10  1500b014  dma_cfg zero, zero, r11, 10
000a14  1500c014  dma_cfg zero, zero, r12, 10
000a18  1f260000  addli r12, zero, 2
000a1c  15008014  dma_cfg zero, zero, r8, 10
000a20  15004014  dma_cfg zero, zero, r4, 10
000a24  1f121000  addli r4, zero, 9
000a28  1500a015  dma_cfg zero, zero, r26, 10
000a2c  1500e014  dma_cfg zero, zero, r14, 10
000a30  1500d014  dma_cfg zero, zero, r13, 10
000a34  9f461000  addli r13, zero, 12
000a38  15005015  dma_cfg zero, zero, r21, 10
000a3c  9f5a1000  addli r21, zero, 13
000a40  15005015  dma_cfg zero, zero, r21, 10
000a44  9f6a1000  addli r21, zero, 14
000a48  15005015  dma_cfg zero, zero, r21, 10
000a4c  9f7a1000  addli r21, zero, 15
000a50  15005015  dma_cfg zero, zero, r21, 10
000a54  15003014  dma_cfg zero, zero, r3, 10
000a58  9f112000  addli r3, zero, 17
000a5c  15003014  dma_cfg zero, zero, r3, 10
000a60  9f212000  addli r3, zero, 18
000a64  15003014  dma_cfg zero, zero, r3, 10
000a68  9f312000  addli r3, zero, 19
000a6c  15003014  dma_cfg zero, zero, r3, 10
000a70  9f412000  addli r3, zero, 20
000a74  15003014  dma_cfg zero, zero, r3, 10
000a78  9f612000  addli r3, zero, 22
000a7c  15005014  dma_cfg zero, zero, r5, 10
000a80  15003014  dma_cfg zero, zero, r3, 10
000a84  9f712000  addli r3, zero, 23
000a88  15003014  dma_cfg zero, zero, r3, 10
000a8c  9f113000  addli r3, zero, 25
000a90  1500f014  dma_cfg zero, zero, r15, 10
000a94  15003014  dma_cfg zero, zero, r3, 10
000a98  9f613000  addli r3, zero, 30
000a9c  15001015  dma_cfg zero, zero, r17, 10
000aa0  9f080001  addli r17, zero, 128
000aa4  15002015  dma_cfg zero, zero, r18, 10
000aa8  15003015  dma_cfg zero, zero, r19, 10
000aac  15004015  dma_cfg zero, zero, r20, 10
000ab0  634a4f00  loadli.w r20,  36(r30)
000ab4  15003014  dma_cfg zero, zero, r3, 10
000ab8  9f713000  addli r3, zero, 31
000abc  15003014  dma_cfg zero, zero, r3, 10
000ac0  15050500  dma_cfg r10, r10, zero, 0
000ac4  15050002  dma_cfg r10, zero, zero, 1
000ac8  15000004  dma_cfg zero, zero, zero, 2
000acc  9500b007  dma_cfg r1, zero, r27, 3
000ad0  15019008  dma_cfg r2, zero, r9, 4
000ad4  950ca00a  dma_cfg r25, zero, r10, 5
000ad8  15000010  dma_cfg zero, zero, zero, 8
000adc  35000000  dma_run zero
000ae0  1500a00a  dma_cfg zero, zero, r10, 5
000ae4  15000010  dma_cfg zero, zero, zero, 8
000ae8  1d900500  unlock r11
000aec  7d000700  xsignal r14, 0
000af0  5b27ffff  j -1736
000af4  7d000000  xsignal zero, 0
000af8  bb600e00  bneq r28, zero, 56
000afc  9f200000  addli r1, zero, 2
000b00  7d100000  xwait zero, 0
000b04  7d100000  xwait zero, 0
000b08  7d100000  xwait zero, 0
000b0c  7d100000  xwait zero, 0
000b10  7d100000  xwait zero, 0
000b14  7d100000  xwait zero, 0
000b18  7d100000  xwait zero, 0
000b1c  7d100000  xwait zero, 0
000b20  1d800000  lock zero, r1
000b24  0d000020  ew_cfg zero, zero, zero, 16
000b28  1d900000  unlock r1
000b2c  7d400000  xsignal_mode_cfg zero
000b30  9f8e1e00  addli sp, sp, 8
000b34  00a00300  mfence { lm, sm, gm }
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
