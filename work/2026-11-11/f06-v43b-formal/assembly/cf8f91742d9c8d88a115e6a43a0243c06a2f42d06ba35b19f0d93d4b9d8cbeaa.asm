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
0000c0  003a0002  core_id r20
0000c4  e3494f00  loadli.w r19,  36(r30)
0000c8  7dc00000  xsignal_mode_cfg r1
0000cc  37600a00  beq r20, zero, 24
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
000170  cb741204  ble.s r4, r1, 2364
000174  33110228  sext_int2long r[3:4], r4
000178  33930028  sext_int2long r[7:8], r1
00017c  1f740000  addli r8, zero, 7
000180  9f440000  addli r9, zero, 4
000184  1f150000  addli r10, zero, 1
000188  9f550000  addli r11, zero, 5
00018c  9f270000  addli r15, zero, 2
000190  1f670000  addli r14, zero, 6
000194  9f061000  addli r13, zero, 8
000198  9f181000  addli r17, zero, 9
00019c  1f461000  addli r12, zero, 12
0001a0  9f0d8000  addli r27, zero, 64
0001a4  abc00000  lui r1, 12
0001a8  ab8b0000  lui r23, 8
0001ac  733c2ffe  store.d r[3:4], -8(r30)
0001b0  db500000  j 644
0001b4  7d100400  xwait r8, 0
0001b8  1d800500  lock zero, r11
0001bc  9f360000  addli r13, zero, 3
0001c0  9f081000  addli r17, zero, 8
0001c4  1f161000  addli r12, zero, 9
0001c8  9f291000  addli r19, zero, 10
0001cc  6b518f00  load.d r[3:4], 8(r30)
0001d0  1f421000  addli r4, zero, 12
0001d4  973aac02  sll.d r[22:23], r[25:26], r10
0001d8  9f521000  addli r5, zero, 13
0001dc  9f6c1000  addli r25, zero, 14
0001e0  1f092000  addli r18, zero, 16
0001e4  1f182000  addli r16, zero, 17
0001e8  1f6d2000  addli r26, zero, 22
0001ec  1f0e0004  addli r28, zero, 512
0001f0  15000014  dma_cfg zero, zero, zero, 10
0001f4  1500a014  dma_cfg zero, zero, r10, 10
0001f8  1500f014  dma_cfg zero, zero, r15, 10
0001fc  8b2a5111  add.ul r[22:23], r[3:4], r[22:23]
000200  1f711000  addli r2, zero, 15
000204  9f472000  addli r15, zero, 20
000208  9f010001  addli r3, zero, 128
00020c  1500d014  dma_cfg zero, zero, r13, 10
000210  15009014  dma_cfg zero, zero, r9, 10
000214  1500b014  dma_cfg zero, zero, r11, 10
000218  1500e014  dma_cfg zero, zero, r14, 10
00021c  1f371000  addli r14, zero, 11
000220  15008014  dma_cfg zero, zero, r8, 10
000224  1f242000  addli r8, zero, 18
000228  15001015  dma_cfg zero, zero, r17, 10
00022c  1500c014  dma_cfg zero, zero, r12, 10
000230  15003015  dma_cfg zero, zero, r19, 10
000234  1500e014  dma_cfg zero, zero, r14, 10
000238  15004014  dma_cfg zero, zero, r4, 10
00023c  15005014  dma_cfg zero, zero, r5, 10
000240  15009015  dma_cfg zero, zero, r25, 10
000244  15002014  dma_cfg zero, zero, r2, 10
000248  1f312000  addli r2, zero, 19
00024c  15002015  dma_cfg zero, zero, r18, 10
000250  15000015  dma_cfg zero, zero, r16, 10
000254  15008014  dma_cfg zero, zero, r8, 10
000258  15002014  dma_cfg zero, zero, r2, 10
00025c  1f512000  addli r2, zero, 21
000260  1500f014  dma_cfg zero, zero, r15, 10
000264  15002014  dma_cfg zero, zero, r2, 10
000268  1f712000  addli r2, zero, 23
00026c  1500a015  dma_cfg zero, zero, r26, 10
000270  15002014  dma_cfg zero, zero, r2, 10
000274  1f013000  addli r2, zero, 24
000278  15002014  dma_cfg zero, zero, r2, 10
00027c  1f113000  addli r2, zero, 25
000280  15002014  dma_cfg zero, zero, r2, 10
000284  1f213000  addli r2, zero, 26
000288  15002014  dma_cfg zero, zero, r2, 10
00028c  1f313000  addli r2, zero, 27
000290  15002014  dma_cfg zero, zero, r2, 10
000294  1f413000  addli r2, zero, 28
000298  15002014  dma_cfg zero, zero, r2, 10
00029c  1f513000  addli r2, zero, 29
0002a0  15002014  dma_cfg zero, zero, r2, 10
0002a4  1f613000  addli r2, zero, 30
0002a8  15002014  dma_cfg zero, zero, r2, 10
0002ac  1f713000  addli r2, zero, 31
0002b0  15002014  dma_cfg zero, zero, r2, 10
0002b4  2b410000  lui r2, 4
0002b8  15050500  dma_cfg r10, r10, zero, 0
0002bc  15050002  dma_cfg r10, zero, zero, 1
0002c0  1b1c0104  ori r24, r2, 64
0002c4  15000004  dma_cfg zero, zero, zero, 2
0002c8  1501b007  dma_cfg r2, zero, r27, 3
0002cc  95019008  dma_cfg r3, zero, r9, 4
0002d0  150eb00b  dma_cfg r28, zero, r27, 5
0002d4  15000010  dma_cfg zero, zero, zero, 8
0002d8  35000000  dma_run zero
0002dc  1500a00a  dma_cfg zero, zero, r10, 5
0002e0  15000010  dma_cfg zero, zero, zero, 8
0002e4  1d900500  unlock r11
0002e8  1d800400  lock zero, r9
0002ec  15050500  dma_cfg r10, r10, zero, 0
0002f0  15000b04  dma_cfg zero, r22, zero, 2
0002f4  158cba07  dma_cfg r24, r21, r27, 3
0002f8  9f0a0010  addli r21, zero, 2048
0002fc  95819d08  dma_cfg r3, r27, r9, 4
000300  158eba0b  dma_cfg r28, r21, r27, 5
000304  9f2a0000  addli r21, zero, 2
000308  15000010  dma_cfg zero, zero, zero, 8
00030c  35000000  dma_run zero
000310  1500a00a  dma_cfg zero, zero, r10, 5
000314  15000010  dma_cfg zero, zero, zero, 8
000318  1d900400  unlock r9
00031c  1d800500  lock zero, r11
000320  15000014  dma_cfg zero, zero, zero, 10
000324  1500a014  dma_cfg zero, zero, r10, 10
000328  15005015  dma_cfg zero, zero, r21, 10
00032c  1500d014  dma_cfg zero, zero, r13, 10
000330  9f660000  addli r13, zero, 6
000334  15009014  dma_cfg zero, zero, r9, 10
000338  1500b014  dma_cfg zero, zero, r11, 10
00033c  1500d014  dma_cfg zero, zero, r13, 10
000340  9f760000  addli r13, zero, 7
000344  1500d014  dma_cfg zero, zero, r13, 10
000348  9f061000  addli r13, zero, 8
00034c  15001015  dma_cfg zero, zero, r17, 10
000350  9f181000  addli r17, zero, 9
000354  1500c014  dma_cfg zero, zero, r12, 10
000358  1f461000  addli r12, zero, 12
00035c  15003015  dma_cfg zero, zero, r19, 10
000360  e3494f00  loadli.w r19,  36(r30)
000364  1500e014  dma_cfg zero, zero, r14, 10
000368  1f670000  addli r14, zero, 6
00036c  15004014  dma_cfg zero, zero, r4, 10
000370  1f721000  addli r4, zero, 15
000374  15005014  dma_cfg zero, zero, r5, 10
000378  15009015  dma_cfg zero, zero, r25, 10
00037c  15004014  dma_cfg zero, zero, r4, 10
000380  1f322000  addli r4, zero, 19
000384  15002015  dma_cfg zero, zero, r18, 10
000388  15000015  dma_cfg zero, zero, r16, 10
00038c  15008014  dma_cfg zero, zero, r8, 10
000390  1f740000  addli r8, zero, 7
000394  15004014  dma_cfg zero, zero, r4, 10
000398  1f522000  addli r4, zero, 21
00039c  1500f014  dma_cfg zero, zero, r15, 10
0003a0  9f270000  addli r15, zero, 2
0003a4  15004014  dma_cfg zero, zero, r4, 10
0003a8  1f722000  addli r4, zero, 23
0003ac  1500a015  dma_cfg zero, zero, r26, 10
0003b0  15004014  dma_cfg zero, zero, r4, 10
0003b4  1f023000  addli r4, zero, 24
0003b8  15004014  dma_cfg zero, zero, r4, 10
0003bc  1f123000  addli r4, zero, 25
0003c0  15004014  dma_cfg zero, zero, r4, 10
0003c4  1f223000  addli r4, zero, 26
0003c8  15004014  dma_cfg zero, zero, r4, 10
0003cc  1f323000  addli r4, zero, 27
0003d0  15004014  dma_cfg zero, zero, r4, 10
0003d4  1f423000  addli r4, zero, 28
0003d8  15004014  dma_cfg zero, zero, r4, 10
0003dc  1f523000  addli r4, zero, 29
0003e0  15004014  dma_cfg zero, zero, r4, 10
0003e4  1f623000  addli r4, zero, 30
0003e8  15004014  dma_cfg zero, zero, r4, 10
0003ec  1f723000  addli r4, zero, 31
0003f0  15004014  dma_cfg zero, zero, r4, 10
0003f4  15050500  dma_cfg r10, r10, zero, 0
0003f8  15050002  dma_cfg r10, zero, zero, 1
0003fc  15000004  dma_cfg zero, zero, zero, 2
000400  1501b007  dma_cfg r2, zero, r27, 3
000404  95019008  dma_cfg r3, zero, r9, 4
000408  150eb00b  dma_cfg r28, zero, r27, 5
00040c  15000010  dma_cfg zero, zero, zero, 8
000410  35000000  dma_run zero
000414  1500a00a  dma_cfg zero, zero, r10, 5
000418  15000010  dma_cfg zero, zero, zero, 8
00041c  1d900500  unlock r11
000420  7d000700  xsignal r14, 0
000424  6b518fff  load.d r[3:4], -8(r30)
000428  27130300  addli.d r[7:8], r[7:8], 1
00042c  933a2304  setlt.sl r21, r[7:8], r[3:4]
000430  b7f90a02  beq r21, zero, 1660
000434  e30a5f00  loadli.w r21,  40(r30)
000438  1b9d0020  ori r26, r1, 512
00043c  8b1a5331  div.s r21, r6, r21
000440  0b9b3a39  mod.s r22, r21, r19
000444  8b9a3a31  div.s r21, r21, r19
000448  331c0b28  sext_int2long r[25:26], r22
00044c  b39a0a28  sext_int2long r[22:23], r21
000450  173c8c02  sll.d r[25:26], r[25:26], r8
000454  bf814401  blt.s r9, r20, 96
000458  3775aafe  beq r20, r10, -676
00045c  3715fa00  beq r20, r15, 324
000460  bb239a00  bneq r20, r9, 232
000464  9f611000  addli r3, zero, 14
000468  7d900400  xwait r9, 0
00046c  7d900600  xwait r13, 0
000470  9b9a0030  ori r21, r1, 768
000474  2b410000  lui r2, 4
000478  7d900100  xwait r3, 0
00047c  1d000500  lock zero, r10
000480  898dbd01  mm_cfg r27, r27, r27, 0
000484  8984a404  mm_cfg r9, r9, r10, 2
000488  290d0010  mm r26, zero, zero, 8
00048c  1d100500  unlock r10
000490  1d000500  lock zero, r10
000494  898dbd01  mm_cfg r27, r27, r27, 0
000498  8984a404  mm_cfg r9, r9, r10, 2
00049c  a90a2010  mm r21, zero, r2, 8
0004a0  1d100500  unlock r10
0004a4  7d800500  xsignal r11, 0
0004a8  7d800800  xsignal r17, 0
0004ac  7d000600  xsignal r12, 0
0004b0  dbeeffff  j -140
0004b4  3711ba00  beq r20, r11, 68
0004b8  3774ea00  beq r20, r14, 284
0004bc  3b328a00  bneq r20, r8, 140
0004c0  7d100700  xwait r14, 0
0004c4  7d900800  xwait r17, 0
0004c8  1d000000  lock zero, zero
0004cc  1f010001  addli r2, zero, 128
0004d0  81070000  ds_cfg r15, zero, 0
0004d4  01010002  ds_cfg r2, zero, 1
0004d8  810d001c  ds_cfg r27, zero, 14
0004dc  0101001a  ds_cfg r2, zero, 13
0004e0  2b410000  lui r2, 4
0004e4  4100b105  shuffle_coa zero, r2, r27, 2
0004e8  1d100000  unlock zero
0004ec  7d000400  xsignal r8, 0
0004f0  7d800600  xsignal r13, 0
0004f4  5be6ffff  j -208
0004f8  9f211000  addli r3, zero, 10
0004fc  2b01803f  lui r2, 260096
000500  9f0a0000  addli r21, zero, 0
000504  7d900100  xwait r3, 0
000508  7d100600  xwait r12, 0
00050c  1d800700  lock zero, r15
000510  0d000002  ew_cfg zero, zero, zero, 1
000514  0d110100  ewcoeff_cfg r2, r2, zero, 0
000518  1f71f000  addli r2, zero, 127
00051c  0d000104  ew_cfg zero, r2, zero, 2
000520  0d050006  ew_cfg r10, zero, zero, 3
000524  0b9baa11  add.s r22, r21, r26
000528  9f8a0a04  addli r21, r21, 512
00052c  2d0b1b00  dsmadd r22, r22, r1, 0
000530  bbdf7aff  bneq r21, r23, -12
000534  9f311000  addli r3, zero, 11
000538  1d900700  unlock r15
00053c  7d800100  xsignal r3, 0
000540  9f511000  addli r3, zero, 13
000544  db0a0000  j 84
000548  3b7b0afe  bneq r20, zero, -292
00054c  1f212000  addli r2, zero, 18
000550  173cfc02  sll.d r[25:26], r[25:26], r15
000554  97ba2a02  sll.d r[22:23], r[22:23], r2
000558  6b518f01  load.d r[3:4], 24(r30)
00055c  8b2a5111  add.ul r[22:23], r[3:4], r[22:23]
000560  9f511000  addli r3, zero, 13
000564  1f010004  addli r2, zero, 512
000568  7d900100  xwait r3, 0
00056c  1d800500  lock zero, r11
000570  8baa8a11  add.ul r[22:23], r[22:23], r[25:26]
000574  9f010020  addli r3, zero, 4096
000578  15000000  dma_cfg zero, zero, zero, 0
00057c  15000502  dma_cfg zero, r10, zero, 1
000580  150b0004  dma_cfg r22, zero, zero, 2
000584  950a2d06  dma_cfg r21, r26, r2, 3
000588  9501b109  dma_cfg r3, r2, r27, 4
00058c  9f611000  addli r3, zero, 14
000590  35000000  dma_run zero
000594  1d900500  unlock r11
000598  7d800100  xsignal r3, 0
00059c  5bd1ffff  j -376
0005a0  7d900700  xwait r15, 0
0005a4  7d900500  xwait r11, 0
0005a8  1d000000  lock zero, zero
0005ac  9f310000  addli r3, zero, 3
0005b0  81070000  ds_cfg r15, zero, 0
0005b4  810d0002  ds_cfg r27, zero, 1
0005b8  810d001c  ds_cfg r27, zero, 14
0005bc  810d001a  ds_cfg r27, zero, 13
0005c0  2110b003  shuffle_batch zero, zero, r27, 1
0005c4  1d100000  unlock zero
0005c8  7d800100  xsignal r3, 0
0005cc  7d800400  xsignal r9, 0
0005d0  dbcaffff  j -428
0005d4  9f390000  addli r19, zero, 3
0005d8  1f011000  addli r2, zero, 8
0005dc  1f5e1000  addli r28, zero, 13
0005e0  9f010001  addli r3, zero, 128
0005e4  9f060002  addli r13, zero, 256
0005e8  6b580f00  load.d r[17:18], 0(r30)
0005ec  1f191000  addli r18, zero, 9
0005f0  1f461000  addli r12, zero, 12
0005f4  9f621000  addli r5, zero, 14
0005f8  1f1a2000  addli r20, zero, 17
0005fc  1f222000  addli r4, zero, 18
000600  1f6d2000  addli r26, zero, 22
000604  7d900900  xwait r19, 0
000608  1d800500  lock zero, r11
00060c  97baca03  sll.d r[22:23], r[22:23], r28
000610  15000014  dma_cfg zero, zero, zero, 10
000614  1500a014  dma_cfg zero, zero, r10, 10
000618  8b2a5811  add.ul r[22:23], r[17:18], r[22:23]
00061c  1f081000  addli r16, zero, 8
000620  9f281000  addli r17, zero, 10
000624  1500f014  dma_cfg zero, zero, r15, 10
000628  15003015  dma_cfg zero, zero, r19, 10
00062c  15009014  dma_cfg zero, zero, r9, 10
000630  1500b014  dma_cfg zero, zero, r11, 10
000634  1500e014  dma_cfg zero, zero, r14, 10
000638  1f371000  addli r14, zero, 11
00063c  15008014  dma_cfg zero, zero, r8, 10
000640  15002014  dma_cfg zero, zero, r2, 10
000644  1f111000  addli r2, zero, 9
000648  15002014  dma_cfg zero, zero, r2, 10
00064c  1f211000  addli r2, zero, 10
000650  15002014  dma_cfg zero, zero, r2, 10
000654  1f411000  addli r2, zero, 12
000658  1500e014  dma_cfg zero, zero, r14, 10
00065c  15002014  dma_cfg zero, zero, r2, 10
000660  1f611000  addli r2, zero, 14
000664  1500c015  dma_cfg zero, zero, r28, 10
000668  15002014  dma_cfg zero, zero, r2, 10
00066c  1f711000  addli r2, zero, 15
000670  15002014  dma_cfg zero, zero, r2, 10
000674  1f012000  addli r2, zero, 16
000678  15002014  dma_cfg zero, zero, r2, 10
00067c  1f112000  addli r2, zero, 17
000680  15002014  dma_cfg zero, zero, r2, 10
000684  1f212000  addli r2, zero, 18
000688  15002014  dma_cfg zero, zero, r2, 10
00068c  1f312000  addli r2, zero, 19
000690  15002014  dma_cfg zero, zero, r2, 10
000694  1f412000  addli r2, zero, 20
000698  15002014  dma_cfg zero, zero, r2, 10
00069c  1f512000  addli r2, zero, 21
0006a0  15002014  dma_cfg zero, zero, r2, 10
0006a4  1f612000  addli r2, zero, 22
0006a8  15002014  dma_cfg zero, zero, r2, 10
0006ac  1f712000  addli r2, zero, 23
0006b0  15002014  dma_cfg zero, zero, r2, 10
0006b4  1f013000  addli r2, zero, 24
0006b8  15002014  dma_cfg zero, zero, r2, 10
0006bc  1f113000  addli r2, zero, 25
0006c0  15002014  dma_cfg zero, zero, r2, 10
0006c4  1f213000  addli r2, zero, 26
0006c8  15002014  dma_cfg zero, zero, r2, 10
0006cc  1f313000  addli r2, zero, 27
0006d0  15002014  dma_cfg zero, zero, r2, 10
0006d4  1f413000  addli r2, zero, 28
0006d8  15002014  dma_cfg zero, zero, r2, 10
0006dc  1f513000  addli r2, zero, 29
0006e0  15002014  dma_cfg zero, zero, r2, 10
0006e4  1f613000  addli r2, zero, 30
0006e8  15002014  dma_cfg zero, zero, r2, 10
0006ec  1f713000  addli r2, zero, 31
0006f0  15002014  dma_cfg zero, zero, r2, 10
0006f4  1f210000  addli r2, zero, 2
0006f8  15050500  dma_cfg r10, r10, zero, 0
0006fc  15050002  dma_cfg r10, zero, zero, 1
000700  15000004  dma_cfg zero, zero, zero, 2
000704  1500b007  dma_cfg zero, zero, r27, 3
000708  9501f008  dma_cfg r3, zero, r15, 4
00070c  9506b00b  dma_cfg r13, zero, r27, 5
000710  15000010  dma_cfg zero, zero, zero, 8
000714  35000000  dma_run zero
000718  1500a00a  dma_cfg zero, zero, r10, 5
00071c  15000010  dma_cfg zero, zero, zero, 8
000720  1d900500  unlock r11
000724  1d800400  lock zero, r9
000728  15050500  dma_cfg r10, r10, zero, 0
00072c  15000b04  dma_cfg zero, r22, zero, 2
000730  958dba07  dma_cfg r27, r21, r27, 3
000734  973aac02  sll.d r[22:23], r[25:26], r10
000738  6b5c0f01  load.d r[25:26], 16(r30)
00073c  9581fd08  dma_cfg r3, r27, r15, 4
000740  9586b10b  dma_cfg r13, r3, r27, 5
000744  15000010  dma_cfg zero, zero, zero, 8
000748  35000000  dma_run zero
00074c  1500a00a  dma_cfg zero, zero, r10, 5
000750  8b2a5c11  add.ul r[22:23], r[25:26], r[22:23]
000754  9f1c1000  addli r25, zero, 9
000758  1b9c0004  ori r24, r1, 64
00075c  15000010  dma_cfg zero, zero, zero, 8
000760  1d900400  unlock r9
000764  1d800500  lock zero, r11
000768  15000014  dma_cfg zero, zero, zero, 10
00076c  1500a014  dma_cfg zero, zero, r10, 10
000770  1500f014  dma_cfg zero, zero, r15, 10
000774  9f670000  addli r15, zero, 6
000778  15003015  dma_cfg zero, zero, r19, 10
00077c  15009014  dma_cfg zero, zero, r9, 10
000780  1500b014  dma_cfg zero, zero, r11, 10
000784  1500f014  dma_cfg zero, zero, r15, 10
000788  9f772000  addli r15, zero, 23
00078c  15008014  dma_cfg zero, zero, r8, 10
000790  15000015  dma_cfg zero, zero, r16, 10
000794  1f782000  addli r16, zero, 23
000798  15002015  dma_cfg zero, zero, r18, 10
00079c  1f092000  addli r18, zero, 16
0007a0  15001015  dma_cfg zero, zero, r17, 10
0007a4  9f083000  addli r17, zero, 24
0007a8  1500e014  dma_cfg zero, zero, r14, 10
0007ac  1500c014  dma_cfg zero, zero, r12, 10
0007b0  1f761000  addli r12, zero, 15
0007b4  1500c015  dma_cfg zero, zero, r28, 10
0007b8  15005014  dma_cfg zero, zero, r5, 10
0007bc  9f522000  addli r5, zero, 21
0007c0  1500c014  dma_cfg zero, zero, r12, 10
0007c4  15002015  dma_cfg zero, zero, r18, 10
0007c8  15004015  dma_cfg zero, zero, r20, 10
0007cc  1f3a2000  addli r20, zero, 19
0007d0  15004014  dma_cfg zero, zero, r4, 10
0007d4  1f422000  addli r4, zero, 20
0007d8  15004015  dma_cfg zero, zero, r20, 10
0007dc  15004014  dma_cfg zero, zero, r4, 10
0007e0  15005014  dma_cfg zero, zero, r5, 10
0007e4  9f522000  addli r5, zero, 21
0007e8  1500a015  dma_cfg zero, zero, r26, 10
0007ec  1f1d3000  addli r26, zero, 25
0007f0  1500f014  dma_cfg zero, zero, r15, 10
0007f4  9f073000  addli r15, zero, 24
0007f8  1500f014  dma_cfg zero, zero, r15, 10
0007fc  9f173000  addli r15, zero, 25
000800  1500f014  dma_cfg zero, zero, r15, 10
000804  9f273000  addli r15, zero, 26
000808  1500f014  dma_cfg zero, zero, r15, 10
00080c  9f373000  addli r15, zero, 27
000810  1500f014  dma_cfg zero, zero, r15, 10
000814  9f473000  addli r15, zero, 28
000818  1500f014  dma_cfg zero, zero, r15, 10
00081c  9f573000  addli r15, zero, 29
000820  1500f014  dma_cfg zero, zero, r15, 10
000824  9f673000  addli r15, zero, 30
000828  1500f014  dma_cfg zero, zero, r15, 10
00082c  9f773000  addli r15, zero, 31
000830  1500f014  dma_cfg zero, zero, r15, 10
000834  9f670000  addli r15, zero, 6
000838  15050500  dma_cfg r10, r10, zero, 0
00083c  15050002  dma_cfg r10, zero, zero, 1
000840  15000004  dma_cfg zero, zero, zero, 2
000844  1500b007  dma_cfg zero, zero, r27, 3
000848  95012008  dma_cfg r3, zero, r2, 4
00084c  9506b00b  dma_cfg r13, zero, r27, 5
000850  15000010  dma_cfg zero, zero, zero, 8
000854  35000000  dma_run zero
000858  1500a00a  dma_cfg zero, zero, r10, 5
00085c  15000010  dma_cfg zero, zero, zero, 8
000860  1d900500  unlock r11
000864  7d000100  xsignal r2, 0
000868  7d100700  xwait r14, 0
00086c  1d800500  lock zero, r11
000870  15000014  dma_cfg zero, zero, zero, 10
000874  1500a014  dma_cfg zero, zero, r10, 10
000878  15002014  dma_cfg zero, zero, r2, 10
00087c  1f011000  addli r2, zero, 8
000880  15003015  dma_cfg zero, zero, r19, 10
000884  15009014  dma_cfg zero, zero, r9, 10
000888  1500b014  dma_cfg zero, zero, r11, 10
00088c  1500f014  dma_cfg zero, zero, r15, 10
000890  9f270000  addli r15, zero, 2
000894  15008014  dma_cfg zero, zero, r8, 10
000898  15002014  dma_cfg zero, zero, r2, 10
00089c  1f211000  addli r2, zero, 10
0008a0  15009015  dma_cfg zero, zero, r25, 10
0008a4  15002014  dma_cfg zero, zero, r2, 10
0008a8  1f411000  addli r2, zero, 12
0008ac  1500e014  dma_cfg zero, zero, r14, 10
0008b0  15002014  dma_cfg zero, zero, r2, 10
0008b4  1f611000  addli r2, zero, 14
0008b8  1500c015  dma_cfg zero, zero, r28, 10
0008bc  15002014  dma_cfg zero, zero, r2, 10
0008c0  1f112000  addli r2, zero, 17
0008c4  1500c014  dma_cfg zero, zero, r12, 10
0008c8  1f061000  addli r12, zero, 8
0008cc  15002015  dma_cfg zero, zero, r18, 10
0008d0  1f392000  addli r18, zero, 19
0008d4  15002014  dma_cfg zero, zero, r2, 10
0008d8  1f212000  addli r2, zero, 18
0008dc  15002014  dma_cfg zero, zero, r2, 10
0008e0  1f612000  addli r2, zero, 22
0008e4  15004015  dma_cfg zero, zero, r20, 10
0008e8  003a0002  core_id r20
0008ec  15004014  dma_cfg zero, zero, r4, 10
0008f0  1f522000  addli r4, zero, 21
0008f4  15005014  dma_cfg zero, zero, r5, 10
0008f8  9f722000  addli r5, zero, 23
0008fc  15002014  dma_cfg zero, zero, r2, 10
000900  1f213000  addli r2, zero, 26
000904  15000015  dma_cfg zero, zero, r16, 10
000908  1f083000  addli r16, zero, 24
00090c  15001015  dma_cfg zero, zero, r17, 10
000910  9f181000  addli r17, zero, 9
000914  1500a015  dma_cfg zero, zero, r26, 10
000918  1f1d3000  addli r26, zero, 25
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
000948  1f010004  addli r2, zero, 512
00094c  15050500  dma_cfg r10, r10, zero, 0
000950  15050002  dma_cfg r10, zero, zero, 1
000954  15000004  dma_cfg zero, zero, zero, 2
000958  9500b007  dma_cfg r1, zero, r27, 3
00095c  95019008  dma_cfg r3, zero, r9, 4
000960  1501a00a  dma_cfg r2, zero, r10, 5
000964  15000010  dma_cfg zero, zero, zero, 8
000968  35000000  dma_run zero
00096c  1500a00a  dma_cfg zero, zero, r10, 5
000970  15000010  dma_cfg zero, zero, zero, 8
000974  1d900500  unlock r11
000978  1d800400  lock zero, r9
00097c  15050500  dma_cfg r10, r10, zero, 0
000980  15000b04  dma_cfg zero, r22, zero, 2
000984  158cba07  dma_cfg r24, r21, r27, 3
000988  9f4a1000  addli r21, zero, 12
00098c  95819d08  dma_cfg r3, r27, r9, 4
000990  1581a60a  dma_cfg r2, r13, r10, 5
000994  9f660000  addli r13, zero, 6
000998  15000010  dma_cfg zero, zero, zero, 8
00099c  35000000  dma_run zero
0009a0  1500a00a  dma_cfg zero, zero, r10, 5
0009a4  15000010  dma_cfg zero, zero, zero, 8
0009a8  1d900400  unlock r9
0009ac  1d800500  lock zero, r11
0009b0  15000014  dma_cfg zero, zero, zero, 10
0009b4  1500a014  dma_cfg zero, zero, r10, 10
0009b8  1500f014  dma_cfg zero, zero, r15, 10
0009bc  15003015  dma_cfg zero, zero, r19, 10
0009c0  9f291000  addli r19, zero, 10
0009c4  15009014  dma_cfg zero, zero, r9, 10
0009c8  1500b014  dma_cfg zero, zero, r11, 10
0009cc  1500d014  dma_cfg zero, zero, r13, 10
0009d0  9f061000  addli r13, zero, 8
0009d4  15008014  dma_cfg zero, zero, r8, 10
0009d8  1500c014  dma_cfg zero, zero, r12, 10
0009dc  1f461000  addli r12, zero, 12
0009e0  15009015  dma_cfg zero, zero, r25, 10
0009e4  15003015  dma_cfg zero, zero, r19, 10
0009e8  1500e014  dma_cfg zero, zero, r14, 10
0009ec  1f670000  addli r14, zero, 6
0009f0  15005015  dma_cfg zero, zero, r21, 10
0009f4  9f6a1000  addli r21, zero, 14
0009f8  1500c015  dma_cfg zero, zero, r28, 10
0009fc  15005015  dma_cfg zero, zero, r21, 10
000a00  9f7a1000  addli r21, zero, 15
000a04  15005015  dma_cfg zero, zero, r21, 10
000a08  9f0a2000  addli r21, zero, 16
000a0c  15005015  dma_cfg zero, zero, r21, 10
000a10  9f1a2000  addli r21, zero, 17
000a14  15005015  dma_cfg zero, zero, r21, 10
000a18  9f2a2000  addli r21, zero, 18
000a1c  15005015  dma_cfg zero, zero, r21, 10
000a20  15002015  dma_cfg zero, zero, r18, 10
000a24  1f492000  addli r18, zero, 20
000a28  15002015  dma_cfg zero, zero, r18, 10
000a2c  15004014  dma_cfg zero, zero, r4, 10
000a30  1f622000  addli r4, zero, 22
000a34  15004014  dma_cfg zero, zero, r4, 10
000a38  1f223000  addli r4, zero, 26
000a3c  15005014  dma_cfg zero, zero, r5, 10
000a40  15000015  dma_cfg zero, zero, r16, 10
000a44  1500a015  dma_cfg zero, zero, r26, 10
000a48  15004014  dma_cfg zero, zero, r4, 10
000a4c  1f323000  addli r4, zero, 27
000a50  15004014  dma_cfg zero, zero, r4, 10
000a54  1f423000  addli r4, zero, 28
000a58  15004014  dma_cfg zero, zero, r4, 10
000a5c  1f523000  addli r4, zero, 29
000a60  15004014  dma_cfg zero, zero, r4, 10
000a64  1f623000  addli r4, zero, 30
000a68  15004014  dma_cfg zero, zero, r4, 10
000a6c  1f723000  addli r4, zero, 31
000a70  15004014  dma_cfg zero, zero, r4, 10
000a74  15050500  dma_cfg r10, r10, zero, 0
000a78  15050002  dma_cfg r10, zero, zero, 1
000a7c  15000004  dma_cfg zero, zero, zero, 2
000a80  9500b007  dma_cfg r1, zero, r27, 3
000a84  95019008  dma_cfg r3, zero, r9, 4
000a88  1501a00a  dma_cfg r2, zero, r10, 5
000a8c  15000010  dma_cfg zero, zero, zero, 8
000a90  35000000  dma_run zero
000a94  1500a00a  dma_cfg zero, zero, r10, 5
000a98  15000010  dma_cfg zero, zero, zero, 8
000a9c  1d900500  unlock r11
000aa0  7d800900  xsignal r19, 0
000aa4  e3494f00  loadli.w r19,  36(r30)
000aa8  db2fffff  j -1668
000aac  7d000000  xsignal zero, 0
000ab0  bb600a00  bneq r20, zero, 56
000ab4  9f200000  addli r1, zero, 2
000ab8  7d100000  xwait zero, 0
000abc  7d100000  xwait zero, 0
000ac0  7d100000  xwait zero, 0
000ac4  7d100000  xwait zero, 0
000ac8  7d100000  xwait zero, 0
000acc  7d100000  xwait zero, 0
000ad0  7d100000  xwait zero, 0
000ad4  7d100000  xwait zero, 0
000ad8  1d800000  lock zero, r1
000adc  0d000020  ew_cfg zero, zero, zero, 16
000ae0  1d900000  unlock r1
000ae4  7d400000  xsignal_mode_cfg zero
000ae8  9f8e1e00  addli sp, sp, 8
000aec  00a00300  mfence { lm, sm, gm }
000af0  00100000  exit
000af4  00100000  exit
000af8  00100000  exit
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
