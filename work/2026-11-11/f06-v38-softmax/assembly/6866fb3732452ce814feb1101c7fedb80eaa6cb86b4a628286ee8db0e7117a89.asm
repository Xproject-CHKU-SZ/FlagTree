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
0000c4  e34a4f00  loadli.w r21,  36(r30)
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
000170  cb641204  ble.s r4, r1, 2360
000174  33110228  sext_int2long r[3:4], r4
000178  33930028  sext_int2long r[7:8], r1
00017c  1f740000  addli r8, zero, 7
000180  9f440000  addli r9, zero, 4
000184  1f150000  addli r10, zero, 1
000188  9f550000  addli r11, zero, 5
00018c  1f260000  addli r12, zero, 2
000190  1f670000  addli r14, zero, 6
000194  9f0d8000  addli r27, zero, 64
000198  1f0a0001  addli r20, zero, 128
00019c  ab000100  lui r1, 16
0001a0  733c2ffe  store.d r[3:4], -8(r30)
0001a4  db0e0000  j 116
0001a8  9f061000  addli r13, zero, 8
0001ac  9f611000  addli r3, zero, 14
0001b0  1f010001  addli r2, zero, 128
0001b4  7d900400  xwait r9, 0
0001b8  9b970030  ori r15, r1, 768
0001bc  1f0a0001  addli r20, zero, 128
0001c0  7d900600  xwait r13, 0
0001c4  7d900100  xwait r3, 0
0001c8  1d000500  lock zero, r10
0001cc  9f111000  addli r3, zero, 9
0001d0  898d2d00  mm_cfg r27, r27, r2, 0
0001d4  8984a404  mm_cfg r9, r9, r10, 2
0001d8  a90c0010  mm r25, zero, zero, 8
0001dc  1d100500  unlock r10
0001e0  1d000500  lock zero, r10
0001e4  898d2d00  mm_cfg r27, r27, r2, 0
0001e8  2b410000  lui r2, 4
0001ec  8984a404  mm_cfg r9, r9, r10, 2
0001f0  a9072010  mm r15, zero, r2, 8
0001f4  1d100500  unlock r10
0001f8  7d800500  xsignal r11, 0
0001fc  7d800100  xsignal r3, 0
000200  9f411000  addli r3, zero, 12
000204  7d800100  xsignal r3, 0
000208  6b518fff  load.d r[3:4], -8(r30)
00020c  27130300  addli.d r[7:8], r[7:8], 1
000210  93372304  setlt.sl r15, r[7:8], r[3:4]
000214  37d20704  beq r15, zero, 2196
000218  e3075f00  loadli.w r15,  40(r30)
00021c  9b9c0020  ori r25, r1, 512
000220  8b17f330  div.s r15, r6, r15
000224  0b985739  mod.s r16, r15, r21
000228  8b975731  div.s r15, r15, r21
00022c  b31b0828  sext_int2long r[24:25], r16
000230  b3970728  sext_int2long r[16:17], r15
000234  97bb8b02  sll.d r[24:25], r[24:25], r8
000238  3fd0c401  blt.s r9, r28, 20
00023c  b701ae00  beq r28, r10, 96
000240  b73dce00  beq r28, r12, 876
000244  b71d9efe  beq r28, r9, -156
000248  5b620000  j 784
00024c  b76abe00  beq r28, r11, 696
000250  374eee00  beq r28, r14, 912
000254  3b1c8e00  bneq r28, r8, 772
000258  9f111000  addli r3, zero, 9
00025c  7d100700  xwait r14, 0
000260  1f010001  addli r2, zero, 128
000264  9f061000  addli r13, zero, 8
000268  1f0a0001  addli r20, zero, 128
00026c  7d900100  xwait r3, 0
000270  1d000000  lock zero, zero
000274  01060000  ds_cfg r12, zero, 0
000278  01010002  ds_cfg r2, zero, 1
00027c  810d001c  ds_cfg r27, zero, 14
000280  0101001a  ds_cfg r2, zero, 13
000284  2b810000  lui r2, 8
000288  4100b105  shuffle_coa zero, r2, r27, 2
00028c  1d100000  unlock zero
000290  7d000400  xsignal r8, 0
000294  7d800600  xsignal r13, 0
000298  5beeffff  j -144
00029c  7d100400  xwait r8, 0
0002a0  1d800500  lock zero, r11
0002a4  1f310000  addli r2, zero, 3
0002a8  9f021000  addli r5, zero, 8
0002ac  1f521000  addli r4, zero, 13
0002b0  eb588f00  load.d r[18:19], 8(r30)
0002b4  97b7ab02  sll.d r[16:17], r[24:25], r10
0002b8  1f4b2000  addli r22, zero, 20
0002bc  9f562000  addli r13, zero, 21
0002c0  1f1a3000  addli r20, zero, 25
0002c4  1f3c3000  addli r24, zero, 27
0002c8  9f4c3000  addli r25, zero, 28
0002cc  1f5d3000  addli r26, zero, 29
0002d0  9f010001  addli r3, zero, 128
0002d4  9f090004  addli r19, zero, 512
0002d8  15000014  dma_cfg zero, zero, zero, 10
0002dc  1500a014  dma_cfg zero, zero, r10, 10
0002e0  1500c014  dma_cfg zero, zero, r12, 10
0002e4  1f362000  addli r12, zero, 19
0002e8  8ba7f810  add.ul r[16:17], r[18:19], r[16:17]
0002ec  9f682000  addli r17, zero, 22
0002f0  1f792000  addli r18, zero, 23
0002f4  15002014  dma_cfg zero, zero, r2, 10
0002f8  1f111000  addli r2, zero, 9
0002fc  15009014  dma_cfg zero, zero, r9, 10
000300  1500b014  dma_cfg zero, zero, r11, 10
000304  1500e014  dma_cfg zero, zero, r14, 10
000308  1f371000  addli r14, zero, 11
00030c  15008014  dma_cfg zero, zero, r8, 10
000310  1f142000  addli r8, zero, 17
000314  15005014  dma_cfg zero, zero, r5, 10
000318  15002014  dma_cfg zero, zero, r2, 10
00031c  1f211000  addli r2, zero, 10
000320  15002014  dma_cfg zero, zero, r2, 10
000324  1f411000  addli r2, zero, 12
000328  1500e014  dma_cfg zero, zero, r14, 10
00032c  15002014  dma_cfg zero, zero, r2, 10
000330  1f611000  addli r2, zero, 14
000334  15004014  dma_cfg zero, zero, r4, 10
000338  15002014  dma_cfg zero, zero, r2, 10
00033c  1f711000  addli r2, zero, 15
000340  15002014  dma_cfg zero, zero, r2, 10
000344  1f012000  addli r2, zero, 16
000348  15002014  dma_cfg zero, zero, r2, 10
00034c  1f212000  addli r2, zero, 18
000350  15008014  dma_cfg zero, zero, r8, 10
000354  15002014  dma_cfg zero, zero, r2, 10
000358  1f013000  addli r2, zero, 24
00035c  1500c014  dma_cfg zero, zero, r12, 10
000360  15006015  dma_cfg zero, zero, r22, 10
000364  1500d014  dma_cfg zero, zero, r13, 10
000368  15001015  dma_cfg zero, zero, r17, 10
00036c  15002015  dma_cfg zero, zero, r18, 10
000370  15002014  dma_cfg zero, zero, r2, 10
000374  1f213000  addli r2, zero, 26
000378  15004015  dma_cfg zero, zero, r20, 10
00037c  15002014  dma_cfg zero, zero, r2, 10
000380  1f613000  addli r2, zero, 30
000384  15008015  dma_cfg zero, zero, r24, 10
000388  15009015  dma_cfg zero, zero, r25, 10
00038c  1500a015  dma_cfg zero, zero, r26, 10
000390  15002014  dma_cfg zero, zero, r2, 10
000394  1f713000  addli r2, zero, 31
000398  15002014  dma_cfg zero, zero, r2, 10
00039c  2b810000  lui r2, 8
0003a0  15050500  dma_cfg r10, r10, zero, 0
0003a4  15050002  dma_cfg r10, zero, zero, 1
0003a8  9b1b0104  ori r23, r2, 64
0003ac  15000004  dma_cfg zero, zero, zero, 2
0003b0  1501b007  dma_cfg r2, zero, r27, 3
0003b4  95019008  dma_cfg r3, zero, r9, 4
0003b8  9509b00b  dma_cfg r19, zero, r27, 5
0003bc  15000010  dma_cfg zero, zero, zero, 8
0003c0  35000000  dma_run zero
0003c4  1500a00a  dma_cfg zero, zero, r10, 5
0003c8  15000010  dma_cfg zero, zero, zero, 8
0003cc  1d900500  unlock r11
0003d0  1d800400  lock zero, r9
0003d4  15050500  dma_cfg r10, r10, zero, 0
0003d8  15000804  dma_cfg zero, r16, zero, 2
0003dc  958bb707  dma_cfg r23, r15, r27, 3
0003e0  9f070010  addli r15, zero, 2048
0003e4  95819d08  dma_cfg r3, r27, r9, 4
0003e8  9589b70b  dma_cfg r19, r15, r27, 5
0003ec  9f270000  addli r15, zero, 2
0003f0  15000010  dma_cfg zero, zero, zero, 8
0003f4  35000000  dma_run zero
0003f8  1500a00a  dma_cfg zero, zero, r10, 5
0003fc  15000010  dma_cfg zero, zero, zero, 8
000400  1d900400  unlock r9
000404  1d800500  lock zero, r11
000408  15000014  dma_cfg zero, zero, zero, 10
00040c  1500a014  dma_cfg zero, zero, r10, 10
000410  1500f014  dma_cfg zero, zero, r15, 10
000414  9f370000  addli r15, zero, 3
000418  1500f014  dma_cfg zero, zero, r15, 10
00041c  9f670000  addli r15, zero, 6
000420  15009014  dma_cfg zero, zero, r9, 10
000424  1500b014  dma_cfg zero, zero, r11, 10
000428  1500f014  dma_cfg zero, zero, r15, 10
00042c  9f770000  addli r15, zero, 7
000430  1500f014  dma_cfg zero, zero, r15, 10
000434  15005014  dma_cfg zero, zero, r5, 10
000438  9f121000  addli r5, zero, 9
00043c  15005014  dma_cfg zero, zero, r5, 10
000440  9f221000  addli r5, zero, 10
000444  15005014  dma_cfg zero, zero, r5, 10
000448  9f421000  addli r5, zero, 12
00044c  1500e014  dma_cfg zero, zero, r14, 10
000450  1f670000  addli r14, zero, 6
000454  15005014  dma_cfg zero, zero, r5, 10
000458  15004014  dma_cfg zero, zero, r4, 10
00045c  1f621000  addli r4, zero, 14
000460  15004014  dma_cfg zero, zero, r4, 10
000464  1f721000  addli r4, zero, 15
000468  15004014  dma_cfg zero, zero, r4, 10
00046c  1f022000  addli r4, zero, 16
000470  15004014  dma_cfg zero, zero, r4, 10
000474  1f222000  addli r4, zero, 18
000478  15008014  dma_cfg zero, zero, r8, 10
00047c  1f740000  addli r8, zero, 7
000480  15004014  dma_cfg zero, zero, r4, 10
000484  1f023000  addli r4, zero, 24
000488  1500c014  dma_cfg zero, zero, r12, 10
00048c  1f260000  addli r12, zero, 2
000490  15006015  dma_cfg zero, zero, r22, 10
000494  1500d014  dma_cfg zero, zero, r13, 10
000498  15001015  dma_cfg zero, zero, r17, 10
00049c  15002015  dma_cfg zero, zero, r18, 10
0004a0  15004014  dma_cfg zero, zero, r4, 10
0004a4  1f223000  addli r4, zero, 26
0004a8  15004015  dma_cfg zero, zero, r20, 10
0004ac  1f0a0001  addli r20, zero, 128
0004b0  15004014  dma_cfg zero, zero, r4, 10
0004b4  1f623000  addli r4, zero, 30
0004b8  15008015  dma_cfg zero, zero, r24, 10
0004bc  15009015  dma_cfg zero, zero, r25, 10
0004c0  1500a015  dma_cfg zero, zero, r26, 10
0004c4  15004014  dma_cfg zero, zero, r4, 10
0004c8  1f723000  addli r4, zero, 31
0004cc  15004014  dma_cfg zero, zero, r4, 10
0004d0  15050500  dma_cfg r10, r10, zero, 0
0004d4  15050002  dma_cfg r10, zero, zero, 1
0004d8  15000004  dma_cfg zero, zero, zero, 2
0004dc  1501b007  dma_cfg r2, zero, r27, 3
0004e0  95019008  dma_cfg r3, zero, r9, 4
0004e4  9509b00b  dma_cfg r19, zero, r27, 5
0004e8  15000010  dma_cfg zero, zero, zero, 8
0004ec  35000000  dma_run zero
0004f0  1500a00a  dma_cfg zero, zero, r10, 5
0004f4  15000010  dma_cfg zero, zero, zero, 8
0004f8  1d900500  unlock r11
0004fc  7d000700  xsignal r14, 0
000500  5ba1ffff  j -760
000504  1f281000  addli r16, zero, 10
000508  9f411000  addli r3, zero, 12
00050c  2b01803f  lui r2, 260096
000510  9f070000  addli r15, zero, 0
000514  7d100800  xwait r16, 0
000518  7d900100  xwait r3, 0
00051c  1d000600  lock zero, r12
000520  0d000002  ew_cfg zero, zero, zero, 1
000524  0d110100  ewcoeff_cfg r2, r2, zero, 0
000528  1f71f000  addli r2, zero, 127
00052c  0d000104  ew_cfg zero, r2, zero, 2
000530  0d050006  ew_cfg r10, zero, zero, 3
000534  0b989711  add.s r16, r15, r25
000538  9f870704  addli r15, r15, 512
00053c  2d081800  dsmadd r16, r16, r1, 0
000540  bbdf17fe  bneq r15, r1, -12
000544  9f371000  addli r15, zero, 11
000548  1d100600  unlock r12
00054c  9f511000  addli r3, zero, 13
000550  7d800700  xsignal r15, 0
000554  5b96ffff  j -848
000558  bb420efe  bneq r28, zero, -848
00055c  9f312000  addli r3, zero, 19
000560  eb588f01  load.d r[18:19], 24(r30)
000564  97bbcb02  sll.d r[24:25], r[24:25], r12
000568  1f010004  addli r2, zero, 512
00056c  97b73702  sll.d r[16:17], r[16:17], r3
000570  9f511000  addli r3, zero, 13
000574  8ba7f810  add.ul r[16:17], r[18:19], r[16:17]
000578  7d900100  xwait r3, 0
00057c  1d800500  lock zero, r11
000580  9f010020  addli r3, zero, 4096
000584  15000000  dma_cfg zero, zero, zero, 0
000588  8ba77711  add.ul r[16:17], r[16:17], r[24:25]
00058c  15000502  dma_cfg zero, r10, zero, 1
000590  15080004  dma_cfg r16, zero, zero, 2
000594  95872c06  dma_cfg r15, r25, r2, 3
000598  95014109  dma_cfg r3, r2, r20, 4
00059c  9f611000  addli r3, zero, 14
0005a0  35000000  dma_run zero
0005a4  1d900500  unlock r11
0005a8  db8bffff  j -932
0005ac  7d100600  xwait r12, 0
0005b0  7d900500  xwait r11, 0
0005b4  1d000000  lock zero, zero
0005b8  9f310000  addli r3, zero, 3
0005bc  01060000  ds_cfg r12, zero, 0
0005c0  810d0002  ds_cfg r27, zero, 1
0005c4  810d001c  ds_cfg r27, zero, 14
0005c8  010a001a  ds_cfg r20, zero, 13
0005cc  2110b003  shuffle_batch zero, zero, r27, 1
0005d0  1d100000  unlock zero
0005d4  7d800100  xsignal r3, 0
0005d8  7d800400  xsignal r9, 0
0005dc  db85ffff  j -980
0005e0  9f310000  addli r3, zero, 3
0005e4  1f611000  addli r2, zero, 14
0005e8  1f621000  addli r4, zero, 14
0005ec  eb580f00  load.d r[18:19], 0(r30)
0005f0  9f061000  addli r13, zero, 8
0005f4  9f321000  addli r5, zero, 11
0005f8  1f4b1000  addli r22, zero, 12
0005fc  1f7d1000  addli r26, zero, 15
000600  1f0a2000  addli r20, zero, 16
000604  1f1e2000  addli r28, zero, 17
000608  9f4c2000  addli r25, zero, 20
00060c  9f093000  addli r19, zero, 24
000610  7d900100  xwait r3, 0
000614  1d800500  lock zero, r11
000618  97b72702  sll.d r[16:17], r[16:17], r2
00061c  1f011000  addli r2, zero, 8
000620  15000014  dma_cfg zero, zero, zero, 10
000624  1500a014  dma_cfg zero, zero, r10, 10
000628  8ba7f810  add.ul r[16:17], r[18:19], r[16:17]
00062c  1f291000  addli r18, zero, 10
000630  9f581000  addli r17, zero, 13
000634  1500c014  dma_cfg zero, zero, r12, 10
000638  15003014  dma_cfg zero, zero, r3, 10
00063c  9f611000  addli r3, zero, 14
000640  15009014  dma_cfg zero, zero, r9, 10
000644  1500b014  dma_cfg zero, zero, r11, 10
000648  1500e014  dma_cfg zero, zero, r14, 10
00064c  15008014  dma_cfg zero, zero, r8, 10
000650  15002014  dma_cfg zero, zero, r2, 10
000654  1f111000  addli r2, zero, 9
000658  15002014  dma_cfg zero, zero, r2, 10
00065c  1f211000  addli r2, zero, 10
000660  15002014  dma_cfg zero, zero, r2, 10
000664  1f311000  addli r2, zero, 11
000668  15002014  dma_cfg zero, zero, r2, 10
00066c  1f411000  addli r2, zero, 12
000670  15002014  dma_cfg zero, zero, r2, 10
000674  1f511000  addli r2, zero, 13
000678  15002014  dma_cfg zero, zero, r2, 10
00067c  1f711000  addli r2, zero, 15
000680  15004014  dma_cfg zero, zero, r4, 10
000684  1f020002  addli r4, zero, 256
000688  15002014  dma_cfg zero, zero, r2, 10
00068c  1f012000  addli r2, zero, 16
000690  15002014  dma_cfg zero, zero, r2, 10
000694  1f112000  addli r2, zero, 17
000698  15002014  dma_cfg zero, zero, r2, 10
00069c  1f212000  addli r2, zero, 18
0006a0  15002014  dma_cfg zero, zero, r2, 10
0006a4  1f312000  addli r2, zero, 19
0006a8  15002014  dma_cfg zero, zero, r2, 10
0006ac  1f412000  addli r2, zero, 20
0006b0  15002014  dma_cfg zero, zero, r2, 10
0006b4  1f512000  addli r2, zero, 21
0006b8  15002014  dma_cfg zero, zero, r2, 10
0006bc  1f612000  addli r2, zero, 22
0006c0  15002014  dma_cfg zero, zero, r2, 10
0006c4  1f712000  addli r2, zero, 23
0006c8  15002014  dma_cfg zero, zero, r2, 10
0006cc  1f013000  addli r2, zero, 24
0006d0  15002014  dma_cfg zero, zero, r2, 10
0006d4  1f113000  addli r2, zero, 25
0006d8  15002014  dma_cfg zero, zero, r2, 10
0006dc  1f213000  addli r2, zero, 26
0006e0  15002014  dma_cfg zero, zero, r2, 10
0006e4  1f313000  addli r2, zero, 27
0006e8  15002014  dma_cfg zero, zero, r2, 10
0006ec  1f413000  addli r2, zero, 28
0006f0  15002014  dma_cfg zero, zero, r2, 10
0006f4  1f513000  addli r2, zero, 29
0006f8  15002014  dma_cfg zero, zero, r2, 10
0006fc  1f613000  addli r2, zero, 30
000700  15002014  dma_cfg zero, zero, r2, 10
000704  1f713000  addli r2, zero, 31
000708  15002014  dma_cfg zero, zero, r2, 10
00070c  1f010001  addli r2, zero, 128
000710  15050500  dma_cfg r10, r10, zero, 0
000714  15050002  dma_cfg r10, zero, zero, 1
000718  15000004  dma_cfg zero, zero, zero, 2
00071c  1500b007  dma_cfg zero, zero, r27, 3
000720  1501c008  dma_cfg r2, zero, r12, 4
000724  1502200a  dma_cfg r4, zero, r2, 5
000728  1f020002  addli r4, zero, 256
00072c  15000010  dma_cfg zero, zero, zero, 8
000730  35000000  dma_run zero
000734  1500a00a  dma_cfg zero, zero, r10, 5
000738  15000010  dma_cfg zero, zero, zero, 8
00073c  1d900500  unlock r11
000740  1d800400  lock zero, r9
000744  15050500  dma_cfg r10, r10, zero, 0
000748  15000804  dma_cfg zero, r16, zero, 2
00074c  958db707  dma_cfg r27, r15, r27, 3
000750  9f370000  addli r15, zero, 3
000754  1f080002  addli r16, zero, 256
000758  1581cd08  dma_cfg r2, r27, r12, 4
00075c  1502210a  dma_cfg r4, r2, r2, 5
000760  1f121000  addli r4, zero, 9
000764  15000010  dma_cfg zero, zero, zero, 8
000768  35000000  dma_run zero
00076c  1500a00a  dma_cfg zero, zero, r10, 5
000770  15000010  dma_cfg zero, zero, zero, 8
000774  1d900400  unlock r9
000778  1d800500  lock zero, r11
00077c  15000014  dma_cfg zero, zero, zero, 10
000780  1500a014  dma_cfg zero, zero, r10, 10
000784  1500c014  dma_cfg zero, zero, r12, 10
000788  1500f014  dma_cfg zero, zero, r15, 10
00078c  9f473000  addli r15, zero, 28
000790  15009014  dma_cfg zero, zero, r9, 10
000794  1500b014  dma_cfg zero, zero, r11, 10
000798  1500e014  dma_cfg zero, zero, r14, 10
00079c  15008014  dma_cfg zero, zero, r8, 10
0007a0  1500d014  dma_cfg zero, zero, r13, 10
0007a4  15004014  dma_cfg zero, zero, r4, 10
0007a8  1f222000  addli r4, zero, 18
0007ac  15002015  dma_cfg zero, zero, r18, 10
0007b0  1f792000  addli r18, zero, 23
0007b4  15005014  dma_cfg zero, zero, r5, 10
0007b8  9f322000  addli r5, zero, 19
0007bc  15006015  dma_cfg zero, zero, r22, 10
0007c0  15001015  dma_cfg zero, zero, r17, 10
0007c4  9f682000  addli r17, zero, 22
0007c8  15003014  dma_cfg zero, zero, r3, 10
0007cc  9f512000  addli r3, zero, 21
0007d0  1500a015  dma_cfg zero, zero, r26, 10
0007d4  15004015  dma_cfg zero, zero, r20, 10
0007d8  1f2a3000  addli r20, zero, 26
0007dc  1500c015  dma_cfg zero, zero, r28, 10
0007e0  15004014  dma_cfg zero, zero, r4, 10
0007e4  15005014  dma_cfg zero, zero, r5, 10
0007e8  15009015  dma_cfg zero, zero, r25, 10
0007ec  9f3c3000  addli r25, zero, 27
0007f0  15003014  dma_cfg zero, zero, r3, 10
0007f4  15001015  dma_cfg zero, zero, r17, 10
0007f8  15002015  dma_cfg zero, zero, r18, 10
0007fc  15003015  dma_cfg zero, zero, r19, 10
000800  9f193000  addli r19, zero, 25
000804  15003015  dma_cfg zero, zero, r19, 10
000808  15004015  dma_cfg zero, zero, r20, 10
00080c  15009015  dma_cfg zero, zero, r25, 10
000810  1500f014  dma_cfg zero, zero, r15, 10
000814  9f573000  addli r15, zero, 29
000818  1500f014  dma_cfg zero, zero, r15, 10
00081c  9f673000  addli r15, zero, 30
000820  1500f014  dma_cfg zero, zero, r15, 10
000824  9f773000  addli r15, zero, 31
000828  1500f014  dma_cfg zero, zero, r15, 10
00082c  15050500  dma_cfg r10, r10, zero, 0
000830  15050002  dma_cfg r10, zero, zero, 1
000834  15000004  dma_cfg zero, zero, zero, 2
000838  1500b007  dma_cfg zero, zero, r27, 3
00083c  1501c008  dma_cfg r2, zero, r12, 4
000840  1508200a  dma_cfg r16, zero, r2, 5
000844  97b7ab02  sll.d r[16:17], r[24:25], r10
000848  eb5b0f01  load.d r[24:25], 16(r30)
00084c  15000010  dma_cfg zero, zero, zero, 8
000850  35000000  dma_run zero
000854  1500a00a  dma_cfg zero, zero, r10, 5
000858  15000010  dma_cfg zero, zero, zero, 8
00085c  8ba7fb10  add.ul r[16:17], r[24:25], r[16:17]
000860  1f3c1000  addli r24, zero, 11
000864  1d900500  unlock r11
000868  7d000600  xsignal r12, 0
00086c  9f3b0000  addli r23, zero, 3
000870  7d100c00  xwait r24, 0
000874  1d800500  lock zero, r11
000878  15000014  dma_cfg zero, zero, zero, 10
00087c  1500a014  dma_cfg zero, zero, r10, 10
000880  1500c014  dma_cfg zero, zero, r12, 10
000884  15007015  dma_cfg zero, zero, r23, 10
000888  9b9b0004  ori r23, r1, 64
00088c  15009014  dma_cfg zero, zero, r9, 10
000890  1500b014  dma_cfg zero, zero, r11, 10
000894  1500e014  dma_cfg zero, zero, r14, 10
000898  15008014  dma_cfg zero, zero, r8, 10
00089c  1500d014  dma_cfg zero, zero, r13, 10
0008a0  9f161000  addli r13, zero, 9
0008a4  1500d014  dma_cfg zero, zero, r13, 10
0008a8  9f261000  addli r13, zero, 10
0008ac  1500d014  dma_cfg zero, zero, r13, 10
0008b0  9f561000  addli r13, zero, 13
0008b4  15008015  dma_cfg zero, zero, r24, 10
0008b8  1f0c2000  addli r24, zero, 16
0008bc  15006015  dma_cfg zero, zero, r22, 10
0008c0  1f2b2000  addli r22, zero, 18
0008c4  1500d014  dma_cfg zero, zero, r13, 10
0008c8  9f661000  addli r13, zero, 14
0008cc  1500d014  dma_cfg zero, zero, r13, 10
0008d0  9f063000  addli r13, zero, 24
0008d4  1500a015  dma_cfg zero, zero, r26, 10
0008d8  1f1d2000  addli r26, zero, 17
0008dc  15008015  dma_cfg zero, zero, r24, 10
0008e0  1500c015  dma_cfg zero, zero, r28, 10
0008e4  003e0002  core_id r28
0008e8  15004014  dma_cfg zero, zero, r4, 10
0008ec  1f322000  addli r4, zero, 19
0008f0  15005014  dma_cfg zero, zero, r5, 10
0008f4  9f422000  addli r5, zero, 20
0008f8  15005014  dma_cfg zero, zero, r5, 10
0008fc  9f522000  addli r5, zero, 21
000900  15003014  dma_cfg zero, zero, r3, 10
000904  9f612000  addli r3, zero, 22
000908  15001015  dma_cfg zero, zero, r17, 10
00090c  9f782000  addli r17, zero, 23
000910  15002015  dma_cfg zero, zero, r18, 10
000914  1f193000  addli r18, zero, 25
000918  1500d014  dma_cfg zero, zero, r13, 10
00091c  9f463000  addli r13, zero, 28
000920  15003015  dma_cfg zero, zero, r19, 10
000924  9f090004  addli r19, zero, 512
000928  15004015  dma_cfg zero, zero, r20, 10
00092c  1f3a3000  addli r20, zero, 27
000930  15009015  dma_cfg zero, zero, r25, 10
000934  9f4c3000  addli r25, zero, 28
000938  1500d014  dma_cfg zero, zero, r13, 10
00093c  9f563000  addli r13, zero, 29
000940  1500d014  dma_cfg zero, zero, r13, 10
000944  9f663000  addli r13, zero, 30
000948  1500d014  dma_cfg zero, zero, r13, 10
00094c  9f763000  addli r13, zero, 31
000950  1500d014  dma_cfg zero, zero, r13, 10
000954  9f060002  addli r13, zero, 256
000958  15050500  dma_cfg r10, r10, zero, 0
00095c  15050002  dma_cfg r10, zero, zero, 1
000960  15000004  dma_cfg zero, zero, zero, 2
000964  9500b007  dma_cfg r1, zero, r27, 3
000968  15019008  dma_cfg r2, zero, r9, 4
00096c  9509a00a  dma_cfg r19, zero, r10, 5
000970  15000010  dma_cfg zero, zero, zero, 8
000974  35000000  dma_run zero
000978  1500a00a  dma_cfg zero, zero, r10, 5
00097c  15000010  dma_cfg zero, zero, zero, 8
000980  1d900500  unlock r11
000984  1d800400  lock zero, r9
000988  15050500  dma_cfg r10, r10, zero, 0
00098c  15000804  dma_cfg zero, r16, zero, 2
000990  958bb707  dma_cfg r23, r15, r27, 3
000994  9f370000  addli r15, zero, 3
000998  15819d08  dma_cfg r2, r27, r9, 4
00099c  9589a60a  dma_cfg r19, r13, r10, 5
0009a0  9f061000  addli r13, zero, 8
0009a4  15000010  dma_cfg zero, zero, zero, 8
0009a8  35000000  dma_run zero
0009ac  1500a00a  dma_cfg zero, zero, r10, 5
0009b0  15000010  dma_cfg zero, zero, zero, 8
0009b4  1d900400  unlock r9
0009b8  1d800500  lock zero, r11
0009bc  15000014  dma_cfg zero, zero, zero, 10
0009c0  1500a014  dma_cfg zero, zero, r10, 10
0009c4  1500c014  dma_cfg zero, zero, r12, 10
0009c8  1500f014  dma_cfg zero, zero, r15, 10
0009cc  9f171000  addli r15, zero, 9
0009d0  15009014  dma_cfg zero, zero, r9, 10
0009d4  1500b014  dma_cfg zero, zero, r11, 10
0009d8  1500e014  dma_cfg zero, zero, r14, 10
0009dc  15008014  dma_cfg zero, zero, r8, 10
0009e0  1500d014  dma_cfg zero, zero, r13, 10
0009e4  9f261000  addli r13, zero, 10
0009e8  1500f014  dma_cfg zero, zero, r15, 10
0009ec  9f371000  addli r15, zero, 11
0009f0  1500d014  dma_cfg zero, zero, r13, 10
0009f4  1500f014  dma_cfg zero, zero, r15, 10
0009f8  9f471000  addli r15, zero, 12
0009fc  1500f014  dma_cfg zero, zero, r15, 10
000a00  9f571000  addli r15, zero, 13
000a04  1500f014  dma_cfg zero, zero, r15, 10
000a08  9f671000  addli r15, zero, 14
000a0c  1500f014  dma_cfg zero, zero, r15, 10
000a10  9f771000  addli r15, zero, 15
000a14  1500f014  dma_cfg zero, zero, r15, 10
000a18  15008015  dma_cfg zero, zero, r24, 10
000a1c  1500a015  dma_cfg zero, zero, r26, 10
000a20  15006015  dma_cfg zero, zero, r22, 10
000a24  15004014  dma_cfg zero, zero, r4, 10
000a28  1f422000  addli r4, zero, 20
000a2c  15004014  dma_cfg zero, zero, r4, 10
000a30  15005014  dma_cfg zero, zero, r5, 10
000a34  15003014  dma_cfg zero, zero, r3, 10
000a38  9f013000  addli r3, zero, 24
000a3c  15001015  dma_cfg zero, zero, r17, 10
000a40  15003014  dma_cfg zero, zero, r3, 10
000a44  9f213000  addli r3, zero, 26
000a48  15002015  dma_cfg zero, zero, r18, 10
000a4c  15003014  dma_cfg zero, zero, r3, 10
000a50  9f513000  addli r3, zero, 29
000a54  15004015  dma_cfg zero, zero, r20, 10
000a58  1f0a0001  addli r20, zero, 128
000a5c  15009015  dma_cfg zero, zero, r25, 10
000a60  15003014  dma_cfg zero, zero, r3, 10
000a64  9f613000  addli r3, zero, 30
000a68  15003014  dma_cfg zero, zero, r3, 10
000a6c  9f713000  addli r3, zero, 31
000a70  15003014  dma_cfg zero, zero, r3, 10
000a74  15050500  dma_cfg r10, r10, zero, 0
000a78  15050002  dma_cfg r10, zero, zero, 1
000a7c  15000004  dma_cfg zero, zero, zero, 2
000a80  9500b007  dma_cfg r1, zero, r27, 3
000a84  15019008  dma_cfg r2, zero, r9, 4
000a88  9509a00a  dma_cfg r19, zero, r10, 5
000a8c  15000010  dma_cfg zero, zero, zero, 8
000a90  35000000  dma_run zero
000a94  1500a00a  dma_cfg zero, zero, r10, 5
000a98  15000010  dma_cfg zero, zero, zero, 8
000a9c  1d900500  unlock r11
000aa0  7d800600  xsignal r13, 0
000aa4  dbecfeff  j -2204
000aa8  7d000000  xsignal zero, 0
000aac  bb600e00  bneq r28, zero, 56
000ab0  9f200000  addli r1, zero, 2
000ab4  7d100000  xwait zero, 0
000ab8  7d100000  xwait zero, 0
000abc  7d100000  xwait zero, 0
000ac0  7d100000  xwait zero, 0
000ac4  7d100000  xwait zero, 0
000ac8  7d100000  xwait zero, 0
000acc  7d100000  xwait zero, 0
000ad0  7d100000  xwait zero, 0
000ad4  1d800000  lock zero, r1
000ad8  0d000020  ew_cfg zero, zero, zero, 16
000adc  1d900000  unlock r1
000ae0  7d400000  xsignal_mode_cfg zero
000ae4  9f8e1e00  addli sp, sp, 8
000ae8  00a00300  mfence { lm, sm, gm }
000aec  00100000  exit
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
