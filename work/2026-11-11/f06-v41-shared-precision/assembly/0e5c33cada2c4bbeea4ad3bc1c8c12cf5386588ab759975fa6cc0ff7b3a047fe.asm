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
0000c4  e3454f00  loadli.w r11,  36(r30)
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
000170  4b351204  ble.s r4, r1, 2380
000174  33110228  sext_int2long r[3:4], r4
000178  33930028  sext_int2long r[7:8], r1
00017c  1f740000  addli r8, zero, 7
000180  9f440000  addli r9, zero, 4
000184  1f150000  addli r10, zero, 1
000188  9f560000  addli r13, zero, 5
00018c  1f6a0000  addli r20, zero, 6
000190  1f461000  addli r12, zero, 12
000194  9f0d8000  addli r27, zero, 64
000198  2bcb0000  lui r22, 12
00019c  ab8b0000  lui r23, 8
0001a0  733c2ffe  store.d r[3:4], -8(r30)
0001a4  9f210000  addli r3, zero, 2
0001a8  5b0a0000  j 80
0001ac  9f101000  addli r1, zero, 9
0001b0  7d100a00  xwait r20, 0
0001b4  7d900000  xwait r1, 0
0001b8  1d000000  lock zero, zero
0001bc  9f000001  addli r1, zero, 128
0001c0  81010000  ds_cfg r3, zero, 0
0001c4  81000002  ds_cfg r1, zero, 1
0001c8  810d001c  ds_cfg r27, zero, 14
0001cc  8100001a  ds_cfg r1, zero, 13
0001d0  ab400000  lui r1, 4
0001d4  4180b005  shuffle_coa zero, r1, r27, 2
0001d8  9f001000  addli r1, zero, 8
0001dc  1d100000  unlock zero
0001e0  7d000400  xsignal r8, 0
0001e4  7d800000  xsignal r1, 0
0001e8  eb508fff  load.d r[2:3], -8(r30)
0001ec  27130300  addli.d r[7:8], r[7:8], 1
0001f0  13381304  setlt.sl r16, r[7:8], r[2:3]
0001f4  37230804  beq r16, zero, 2248
0001f8  63085f00  loadli.w r16,  40(r30)
0001fc  1b1d0b20  ori r26, r22, 512
000200  0b180331  div.s r16, r6, r16
000204  8b18b838  mod.s r17, r16, r11
000208  0b18b830  div.s r16, r16, r11
00020c  339c0828  sext_int2long r[25:26], r17
000210  33180828  sext_int2long r[17:18], r16
000214  173c8c02  sll.d r[25:26], r[25:26], r8
000218  bfa1c401  blt.s r9, r28, 104
00021c  3713ae00  beq r28, r10, 196
000220  b7673e02  beq r28, r3, 1528
000224  bb219e00  bneq r28, r9, 104
000228  9f001000  addli r1, zero, 8
00022c  7d900400  xwait r9, 0
000230  1b180b30  ori r16, r22, 768
000234  7d900000  xwait r1, 0
000238  9f601000  addli r1, zero, 14
00023c  7d900000  xwait r1, 0
000240  1d000500  lock zero, r10
000244  ab400000  lui r1, 4
000248  898dbd01  mm_cfg r27, r27, r27, 0
00024c  8984a404  mm_cfg r9, r9, r10, 2
000250  290d0010  mm r26, zero, zero, 8
000254  1d100500  unlock r10
000258  1d000500  lock zero, r10
00025c  898dbd01  mm_cfg r27, r27, r27, 0
000260  8984a404  mm_cfg r9, r9, r10, 2
000264  29081010  mm r16, zero, r1, 8
000268  9f101000  addli r1, zero, 9
00026c  1d100500  unlock r10
000270  7d800600  xsignal r13, 0
000274  7d800000  xsignal r1, 0
000278  7d000600  xsignal r12, 0
00027c  dbedffff  j -148
000280  3725de02  beq r28, r13, 1352
000284  37274e03  beq r28, r20, 1480
000288  b71c8efe  beq r28, r8, -220
00028c  3b7d0efe  bneq r28, zero, -164
000290  9f202000  addli r1, zero, 18
000294  6b578f01  load.d r[15:16], 24(r30)
000298  173c3c02  sll.d r[25:26], r[25:26], r3
00029c  1f010020  addli r2, zero, 4096
0002a0  17381802  sll.d r[17:18], r[17:18], r1
0002a4  9f501000  addli r1, zero, 13
0002a8  0b280711  add.ul r[17:18], r[15:16], r[17:18]
0002ac  7d900000  xwait r1, 0
0002b0  1d800600  lock zero, r13
0002b4  9f000004  addli r1, zero, 512
0002b8  15000000  dma_cfg zero, zero, zero, 0
0002bc  0b288811  add.ul r[17:18], r[17:18], r[25:26]
0002c0  15000502  dma_cfg zero, r10, zero, 1
0002c4  95080004  dma_cfg r17, zero, zero, 2
0002c8  15081d06  dma_cfg r16, r26, r1, 3
0002cc  1581b009  dma_cfg r2, r1, r27, 4
0002d0  9f601000  addli r1, zero, 14
0002d4  35000000  dma_run zero
0002d8  1d900600  unlock r13
0002dc  5be1ffff  j -248
0002e0  9f501000  addli r1, zero, 13
0002e4  1f511000  addli r2, zero, 13
0002e8  6b590f00  load.d r[19:20], 0(r30)
0002ec  9f370000  addli r15, zero, 3
0002f0  9f051000  addli r11, zero, 8
0002f4  1f171000  addli r14, zero, 9
0002f8  9f2a1000  addli r21, zero, 10
0002fc  1f461000  addli r12, zero, 12
000300  1f022000  addli r4, zero, 16
000304  1f1e2000  addli r28, zero, 17
000308  9f322000  addli r5, zero, 19
00030c  1f5d3000  addli r26, zero, 29
000310  17381802  sll.d r[17:18], r[17:18], r1
000314  9f300000  addli r1, zero, 3
000318  7d900000  xwait r1, 0
00031c  1d800600  lock zero, r13
000320  0b280911  add.ul r[17:18], r[19:20], r[17:18]
000324  9f391000  addli r19, zero, 11
000328  1f591000  addli r18, zero, 13
00032c  15000014  dma_cfg zero, zero, zero, 10
000330  1500a014  dma_cfg zero, zero, r10, 10
000334  15003014  dma_cfg zero, zero, r3, 10
000338  15001014  dma_cfg zero, zero, r1, 10
00033c  9f001000  addli r1, zero, 8
000340  15009014  dma_cfg zero, zero, r9, 10
000344  1500d014  dma_cfg zero, zero, r13, 10
000348  15004015  dma_cfg zero, zero, r20, 10
00034c  1f0a0002  addli r20, zero, 256
000350  15008014  dma_cfg zero, zero, r8, 10
000354  15001014  dma_cfg zero, zero, r1, 10
000358  9f101000  addli r1, zero, 9
00035c  15001014  dma_cfg zero, zero, r1, 10
000360  9f201000  addli r1, zero, 10
000364  15001014  dma_cfg zero, zero, r1, 10
000368  9f301000  addli r1, zero, 11
00036c  15001014  dma_cfg zero, zero, r1, 10
000370  9f401000  addli r1, zero, 12
000374  15001014  dma_cfg zero, zero, r1, 10
000378  9f601000  addli r1, zero, 14
00037c  15002014  dma_cfg zero, zero, r2, 10
000380  1f611000  addli r2, zero, 14
000384  15001014  dma_cfg zero, zero, r1, 10
000388  9f701000  addli r1, zero, 15
00038c  15001014  dma_cfg zero, zero, r1, 10
000390  9f002000  addli r1, zero, 16
000394  15001014  dma_cfg zero, zero, r1, 10
000398  9f102000  addli r1, zero, 17
00039c  15001014  dma_cfg zero, zero, r1, 10
0003a0  9f202000  addli r1, zero, 18
0003a4  15001014  dma_cfg zero, zero, r1, 10
0003a8  9f302000  addli r1, zero, 19
0003ac  15001014  dma_cfg zero, zero, r1, 10
0003b0  9f402000  addli r1, zero, 20
0003b4  15001014  dma_cfg zero, zero, r1, 10
0003b8  9f502000  addli r1, zero, 21
0003bc  15001014  dma_cfg zero, zero, r1, 10
0003c0  9f602000  addli r1, zero, 22
0003c4  15001014  dma_cfg zero, zero, r1, 10
0003c8  9f702000  addli r1, zero, 23
0003cc  15001014  dma_cfg zero, zero, r1, 10
0003d0  9f003000  addli r1, zero, 24
0003d4  15001014  dma_cfg zero, zero, r1, 10
0003d8  9f103000  addli r1, zero, 25
0003dc  15001014  dma_cfg zero, zero, r1, 10
0003e0  9f203000  addli r1, zero, 26
0003e4  15001014  dma_cfg zero, zero, r1, 10
0003e8  9f303000  addli r1, zero, 27
0003ec  15001014  dma_cfg zero, zero, r1, 10
0003f0  9f403000  addli r1, zero, 28
0003f4  15001014  dma_cfg zero, zero, r1, 10
0003f8  9f503000  addli r1, zero, 29
0003fc  15001014  dma_cfg zero, zero, r1, 10
000400  9f603000  addli r1, zero, 30
000404  15001014  dma_cfg zero, zero, r1, 10
000408  9f703000  addli r1, zero, 31
00040c  15001014  dma_cfg zero, zero, r1, 10
000410  9f000001  addli r1, zero, 128
000414  15050500  dma_cfg r10, r10, zero, 0
000418  15050002  dma_cfg r10, zero, zero, 1
00041c  15000004  dma_cfg zero, zero, zero, 2
000420  1500b007  dma_cfg zero, zero, r27, 3
000424  95003008  dma_cfg r1, zero, r3, 4
000428  150ab00b  dma_cfg r20, zero, r27, 5
00042c  15000010  dma_cfg zero, zero, zero, 8
000430  35000000  dma_run zero
000434  1500a00a  dma_cfg zero, zero, r10, 5
000438  15000010  dma_cfg zero, zero, zero, 8
00043c  1d900600  unlock r13
000440  1d800400  lock zero, r9
000444  15050500  dma_cfg r10, r10, zero, 0
000448  15800804  dma_cfg zero, r17, zero, 2
00044c  950db807  dma_cfg r27, r16, r27, 3
000450  1f080002  addli r16, zero, 256
000454  95803d08  dma_cfg r1, r27, r3, 4
000458  158ab00b  dma_cfg r20, r1, r27, 5
00045c  1f3a3000  addli r20, zero, 27
000460  15000010  dma_cfg zero, zero, zero, 8
000464  35000000  dma_run zero
000468  1500a00a  dma_cfg zero, zero, r10, 5
00046c  15000010  dma_cfg zero, zero, zero, 8
000470  1d900400  unlock r9
000474  1d800600  lock zero, r13
000478  15000014  dma_cfg zero, zero, zero, 10
00047c  1500a014  dma_cfg zero, zero, r10, 10
000480  15003014  dma_cfg zero, zero, r3, 10
000484  9f610000  addli r3, zero, 6
000488  1500f014  dma_cfg zero, zero, r15, 10
00048c  9f073000  addli r15, zero, 24
000490  15009014  dma_cfg zero, zero, r9, 10
000494  1500d014  dma_cfg zero, zero, r13, 10
000498  15003014  dma_cfg zero, zero, r3, 10
00049c  9f613000  addli r3, zero, 30
0004a0  15008014  dma_cfg zero, zero, r8, 10
0004a4  1500b014  dma_cfg zero, zero, r11, 10
0004a8  9f552000  addli r11, zero, 21
0004ac  1500e014  dma_cfg zero, zero, r14, 10
0004b0  1f772000  addli r14, zero, 23
0004b4  15005015  dma_cfg zero, zero, r21, 10
0004b8  9f4a3000  addli r21, zero, 28
0004bc  15003015  dma_cfg zero, zero, r19, 10
0004c0  9f293000  addli r19, zero, 26
0004c4  1500c014  dma_cfg zero, zero, r12, 10
0004c8  1f662000  addli r12, zero, 22
0004cc  15002015  dma_cfg zero, zero, r18, 10
0004d0  1f193000  addli r18, zero, 25
0004d4  15002014  dma_cfg zero, zero, r2, 10
0004d8  1f711000  addli r2, zero, 15
0004dc  15002014  dma_cfg zero, zero, r2, 10
0004e0  15004014  dma_cfg zero, zero, r4, 10
0004e4  1f222000  addli r4, zero, 18
0004e8  1500c015  dma_cfg zero, zero, r28, 10
0004ec  15004014  dma_cfg zero, zero, r4, 10
0004f0  15005014  dma_cfg zero, zero, r5, 10
0004f4  9f422000  addli r5, zero, 20
0004f8  15005014  dma_cfg zero, zero, r5, 10
0004fc  1500b014  dma_cfg zero, zero, r11, 10
000500  1500c014  dma_cfg zero, zero, r12, 10
000504  1500e014  dma_cfg zero, zero, r14, 10
000508  1500f014  dma_cfg zero, zero, r15, 10
00050c  15002015  dma_cfg zero, zero, r18, 10
000510  15003015  dma_cfg zero, zero, r19, 10
000514  15004015  dma_cfg zero, zero, r20, 10
000518  15005015  dma_cfg zero, zero, r21, 10
00051c  1500a015  dma_cfg zero, zero, r26, 10
000520  15003014  dma_cfg zero, zero, r3, 10
000524  9f713000  addli r3, zero, 31
000528  15003014  dma_cfg zero, zero, r3, 10
00052c  9f210000  addli r3, zero, 2
000530  15050500  dma_cfg r10, r10, zero, 0
000534  15050002  dma_cfg r10, zero, zero, 1
000538  15000004  dma_cfg zero, zero, zero, 2
00053c  1500b007  dma_cfg zero, zero, r27, 3
000540  95003008  dma_cfg r1, zero, r3, 4
000544  9f210000  addli r3, zero, 2
000548  1508b00b  dma_cfg r16, zero, r27, 5
00054c  1738ac02  sll.d r[17:18], r[25:26], r10
000550  6b5c0f01  load.d r[25:26], 16(r30)
000554  15000010  dma_cfg zero, zero, zero, 8
000558  35000000  dma_run zero
00055c  1500a00a  dma_cfg zero, zero, r10, 5
000560  15000010  dma_cfg zero, zero, zero, 8
000564  0b280c11  add.ul r[17:18], r[25:26], r[17:18]
000568  1f3c1000  addli r24, zero, 11
00056c  1d900600  unlock r13
000570  7d800100  xsignal r3, 0
000574  9f210000  addli r3, zero, 2
000578  9f0c0004  addli r25, zero, 512
00057c  7d100c00  xwait r24, 0
000580  1d800600  lock zero, r13
000584  15000014  dma_cfg zero, zero, zero, 10
000588  1500a014  dma_cfg zero, zero, r10, 10
00058c  15003014  dma_cfg zero, zero, r3, 10
000590  9f310000  addli r3, zero, 3
000594  15003014  dma_cfg zero, zero, r3, 10
000598  9f610000  addli r3, zero, 6
00059c  15009014  dma_cfg zero, zero, r9, 10
0005a0  1500d014  dma_cfg zero, zero, r13, 10
0005a4  15003014  dma_cfg zero, zero, r3, 10
0005a8  9f011000  addli r3, zero, 8
0005ac  15008014  dma_cfg zero, zero, r8, 10
0005b0  15003014  dma_cfg zero, zero, r3, 10
0005b4  9f111000  addli r3, zero, 9
0005b8  15003014  dma_cfg zero, zero, r3, 10
0005bc  9f211000  addli r3, zero, 10
0005c0  15003014  dma_cfg zero, zero, r3, 10
0005c4  9f411000  addli r3, zero, 12
0005c8  15008015  dma_cfg zero, zero, r24, 10
0005cc  1b1c0b04  ori r24, r22, 64
0005d0  15003014  dma_cfg zero, zero, r3, 10
0005d4  9f511000  addli r3, zero, 13
0005d8  15003014  dma_cfg zero, zero, r3, 10
0005dc  9f611000  addli r3, zero, 14
0005e0  15003014  dma_cfg zero, zero, r3, 10
0005e4  9f312000  addli r3, zero, 19
0005e8  15002014  dma_cfg zero, zero, r2, 10
0005ec  1f012000  addli r2, zero, 16
0005f0  15002014  dma_cfg zero, zero, r2, 10
0005f4  1f713000  addli r2, zero, 31
0005f8  1500c015  dma_cfg zero, zero, r28, 10
0005fc  003e0002  core_id r28
000600  15004014  dma_cfg zero, zero, r4, 10
000604  1f422000  addli r4, zero, 20
000608  15003014  dma_cfg zero, zero, r3, 10
00060c  9f613000  addli r3, zero, 30
000610  15005014  dma_cfg zero, zero, r5, 10
000614  9f522000  addli r5, zero, 21
000618  1500b014  dma_cfg zero, zero, r11, 10
00061c  9f051000  addli r11, zero, 8
000620  1500c014  dma_cfg zero, zero, r12, 10
000624  1f461000  addli r12, zero, 12
000628  1500e014  dma_cfg zero, zero, r14, 10
00062c  1f073000  addli r14, zero, 24
000630  1500f014  dma_cfg zero, zero, r15, 10
000634  9f271000  addli r15, zero, 10
000638  15002015  dma_cfg zero, zero, r18, 10
00063c  1f293000  addli r18, zero, 26
000640  15003015  dma_cfg zero, zero, r19, 10
000644  9f393000  addli r19, zero, 27
000648  15004015  dma_cfg zero, zero, r20, 10
00064c  1f4a3000  addli r20, zero, 28
000650  15005015  dma_cfg zero, zero, r21, 10
000654  9f5a3000  addli r21, zero, 29
000658  1500a015  dma_cfg zero, zero, r26, 10
00065c  1f6d3000  addli r26, zero, 30
000660  15003014  dma_cfg zero, zero, r3, 10
000664  9f010002  addli r3, zero, 256
000668  15002014  dma_cfg zero, zero, r2, 10
00066c  15050500  dma_cfg r10, r10, zero, 0
000670  15050002  dma_cfg r10, zero, zero, 1
000674  15000004  dma_cfg zero, zero, zero, 2
000678  150bb007  dma_cfg r22, zero, r27, 3
00067c  95009008  dma_cfg r1, zero, r9, 4
000680  950ca00a  dma_cfg r25, zero, r10, 5
000684  15000010  dma_cfg zero, zero, zero, 8
000688  35000000  dma_run zero
00068c  1500a00a  dma_cfg zero, zero, r10, 5
000690  15000010  dma_cfg zero, zero, zero, 8
000694  1d900600  unlock r13
000698  1d800400  lock zero, r9
00069c  15050500  dma_cfg r10, r10, zero, 0
0006a0  15800804  dma_cfg zero, r17, zero, 2
0006a4  150cb807  dma_cfg r24, r16, r27, 3
0006a8  1f581000  addli r16, zero, 13
0006ac  95809d08  dma_cfg r1, r27, r9, 4
0006b0  958ca10a  dma_cfg r25, r3, r10, 5
0006b4  9f210000  addli r3, zero, 2
0006b8  15000010  dma_cfg zero, zero, zero, 8
0006bc  35000000  dma_run zero
0006c0  1500a00a  dma_cfg zero, zero, r10, 5
0006c4  15000010  dma_cfg zero, zero, zero, 8
0006c8  1d900400  unlock r9
0006cc  1d800600  lock zero, r13
0006d0  15000014  dma_cfg zero, zero, zero, 10
0006d4  1500a014  dma_cfg zero, zero, r10, 10
0006d8  15003014  dma_cfg zero, zero, r3, 10
0006dc  9f310000  addli r3, zero, 3
0006e0  15003014  dma_cfg zero, zero, r3, 10
0006e4  9f610000  addli r3, zero, 6
0006e8  15009014  dma_cfg zero, zero, r9, 10
0006ec  1500d014  dma_cfg zero, zero, r13, 10
0006f0  15003014  dma_cfg zero, zero, r3, 10
0006f4  9f210000  addli r3, zero, 2
0006f8  15008014  dma_cfg zero, zero, r8, 10
0006fc  1500b014  dma_cfg zero, zero, r11, 10
000700  9f151000  addli r11, zero, 9
000704  1500b014  dma_cfg zero, zero, r11, 10
000708  9f351000  addli r11, zero, 11
00070c  1500f014  dma_cfg zero, zero, r15, 10
000710  1500b014  dma_cfg zero, zero, r11, 10
000714  9f451000  addli r11, zero, 12
000718  1500b014  dma_cfg zero, zero, r11, 10
00071c  e3454f00  loadli.w r11,  36(r30)
000720  15000015  dma_cfg zero, zero, r16, 10
000724  1f681000  addli r16, zero, 14
000728  15000015  dma_cfg zero, zero, r16, 10
00072c  1f781000  addli r16, zero, 15
000730  15000015  dma_cfg zero, zero, r16, 10
000734  1f082000  addli r16, zero, 16
000738  15000015  dma_cfg zero, zero, r16, 10
00073c  1f182000  addli r16, zero, 17
000740  15000015  dma_cfg zero, zero, r16, 10
000744  1f282000  addli r16, zero, 18
000748  15000015  dma_cfg zero, zero, r16, 10
00074c  1f382000  addli r16, zero, 19
000750  15000015  dma_cfg zero, zero, r16, 10
000754  15004014  dma_cfg zero, zero, r4, 10
000758  1f622000  addli r4, zero, 22
00075c  15005014  dma_cfg zero, zero, r5, 10
000760  15004014  dma_cfg zero, zero, r4, 10
000764  1f722000  addli r4, zero, 23
000768  15004014  dma_cfg zero, zero, r4, 10
00076c  1f123000  addli r4, zero, 25
000770  1500e014  dma_cfg zero, zero, r14, 10
000774  15004014  dma_cfg zero, zero, r4, 10
000778  15002015  dma_cfg zero, zero, r18, 10
00077c  15003015  dma_cfg zero, zero, r19, 10
000780  15004015  dma_cfg zero, zero, r20, 10
000784  1f6a0000  addli r20, zero, 6
000788  15005015  dma_cfg zero, zero, r21, 10
00078c  1500a015  dma_cfg zero, zero, r26, 10
000790  15002014  dma_cfg zero, zero, r2, 10
000794  15050500  dma_cfg r10, r10, zero, 0
000798  15050002  dma_cfg r10, zero, zero, 1
00079c  15000004  dma_cfg zero, zero, zero, 2
0007a0  150bb007  dma_cfg r22, zero, r27, 3
0007a4  95009008  dma_cfg r1, zero, r9, 4
0007a8  950ca00a  dma_cfg r25, zero, r10, 5
0007ac  15000010  dma_cfg zero, zero, zero, 8
0007b0  35000000  dma_run zero
0007b4  1500a00a  dma_cfg zero, zero, r10, 5
0007b8  15000010  dma_cfg zero, zero, zero, 8
0007bc  1d900600  unlock r13
0007c0  7d800700  xsignal r15, 0
0007c4  db44ffff  j -1500
0007c8  9f201000  addli r1, zero, 10
0007cc  1f080000  addli r16, zero, 0
0007d0  7d900000  xwait r1, 0
0007d4  7d100600  xwait r12, 0
0007d8  1d800100  lock zero, r3
0007dc  ab00803f  lui r1, 260096
0007e0  0d000002  ew_cfg zero, zero, zero, 1
0007e4  8d900000  ewcoeff_cfg r1, r1, zero, 0
0007e8  9f70f000  addli r1, zero, 127
0007ec  0d800004  ew_cfg zero, r1, zero, 2
0007f0  0d050006  ew_cfg r10, zero, zero, 3
0007f4  8b18a811  add.s r17, r16, r26
0007f8  1f080804  addli r16, r16, 512
0007fc  ad886801  dsmadd r17, r17, r22, 0
000800  bb5f78ff  bneq r16, r23, -12
000804  9f301000  addli r1, zero, 11
000808  1d900100  unlock r3
00080c  7d800000  xsignal r1, 0
000810  9f501000  addli r1, zero, 13
000814  5b3affff  j -1584
000818  7d900100  xwait r3, 0
00081c  7d900600  xwait r13, 0
000820  1d000000  lock zero, zero
000824  9f300000  addli r1, zero, 3
000828  81010000  ds_cfg r3, zero, 0
00082c  810d0002  ds_cfg r27, zero, 1
000830  810d001c  ds_cfg r27, zero, 14
000834  810d001a  ds_cfg r27, zero, 13
000838  2110b003  shuffle_batch zero, zero, r27, 1
00083c  1d100000  unlock zero
000840  7d800000  xsignal r1, 0
000844  7d800400  xsignal r9, 0
000848  5b34ffff  j -1632
00084c  eb558f00  load.d r[12:13], 8(r30)
000850  1738ac02  sll.d r[17:18], r[25:26], r10
000854  7d100400  xwait r8, 0
000858  1d800600  lock zero, r13
00085c  1f021000  addli r4, zero, 8
000860  9f121000  addli r5, zero, 9
000864  9f301000  addli r1, zero, 11
000868  9f791000  addli r19, zero, 15
00086c  9f0c2000  addli r25, zero, 16
000870  1f272000  addli r14, zero, 18
000874  9f472000  addli r15, zero, 20
000878  1f592000  addli r18, zero, 21
00087c  1f6d2000  addli r26, zero, 22
000880  ab4a0000  lui r21, 4
000884  1f010004  addli r2, zero, 512
000888  15000014  dma_cfg zero, zero, zero, 10
00088c  1500a014  dma_cfg zero, zero, r10, 10
000890  1b9c0a04  ori r24, r21, 64
000894  0ba80511  add.ul r[17:18], r[12:13], r[17:18]
000898  1f360000  addli r12, zero, 3
00089c  15003014  dma_cfg zero, zero, r3, 10
0008a0  9f312000  addli r3, zero, 19
0008a4  9f250000  addli r11, zero, 2
0008a8  1500c014  dma_cfg zero, zero, r12, 10
0008ac  15009014  dma_cfg zero, zero, r9, 10
0008b0  1500d014  dma_cfg zero, zero, r13, 10
0008b4  15004015  dma_cfg zero, zero, r20, 10
0008b8  1f2a1000  addli r20, zero, 10
0008bc  15008014  dma_cfg zero, zero, r8, 10
0008c0  1f142000  addli r8, zero, 17
0008c4  15004014  dma_cfg zero, zero, r4, 10
0008c8  15005014  dma_cfg zero, zero, r5, 10
0008cc  15004015  dma_cfg zero, zero, r20, 10
0008d0  15001014  dma_cfg zero, zero, r1, 10
0008d4  9f401000  addli r1, zero, 12
0008d8  15001014  dma_cfg zero, zero, r1, 10
0008dc  9f501000  addli r1, zero, 13
0008e0  15001014  dma_cfg zero, zero, r1, 10
0008e4  9f601000  addli r1, zero, 14
0008e8  15001014  dma_cfg zero, zero, r1, 10
0008ec  9f702000  addli r1, zero, 23
0008f0  15003015  dma_cfg zero, zero, r19, 10
0008f4  15009015  dma_cfg zero, zero, r25, 10
0008f8  15008014  dma_cfg zero, zero, r8, 10
0008fc  1500e014  dma_cfg zero, zero, r14, 10
000900  15003014  dma_cfg zero, zero, r3, 10
000904  1500f014  dma_cfg zero, zero, r15, 10
000908  15002015  dma_cfg zero, zero, r18, 10
00090c  1500a015  dma_cfg zero, zero, r26, 10
000910  15001014  dma_cfg zero, zero, r1, 10
000914  9f003000  addli r1, zero, 24
000918  15001014  dma_cfg zero, zero, r1, 10
00091c  9f103000  addli r1, zero, 25
000920  15001014  dma_cfg zero, zero, r1, 10
000924  9f203000  addli r1, zero, 26
000928  15001014  dma_cfg zero, zero, r1, 10
00092c  9f303000  addli r1, zero, 27
000930  15001014  dma_cfg zero, zero, r1, 10
000934  9f403000  addli r1, zero, 28
000938  15001014  dma_cfg zero, zero, r1, 10
00093c  9f503000  addli r1, zero, 29
000940  15001014  dma_cfg zero, zero, r1, 10
000944  9f603000  addli r1, zero, 30
000948  15001014  dma_cfg zero, zero, r1, 10
00094c  9f703000  addli r1, zero, 31
000950  15001014  dma_cfg zero, zero, r1, 10
000954  9f000001  addli r1, zero, 128
000958  15050500  dma_cfg r10, r10, zero, 0
00095c  15050002  dma_cfg r10, zero, zero, 1
000960  15000004  dma_cfg zero, zero, zero, 2
000964  950ab007  dma_cfg r21, zero, r27, 3
000968  95009008  dma_cfg r1, zero, r9, 4
00096c  1501b00b  dma_cfg r2, zero, r27, 5
000970  15000010  dma_cfg zero, zero, zero, 8
000974  35000000  dma_run zero
000978  1500a00a  dma_cfg zero, zero, r10, 5
00097c  15000010  dma_cfg zero, zero, zero, 8
000980  1d900600  unlock r13
000984  1d800400  lock zero, r9
000988  15050500  dma_cfg r10, r10, zero, 0
00098c  15800804  dma_cfg zero, r17, zero, 2
000990  150cb807  dma_cfg r24, r16, r27, 3
000994  1f080010  addli r16, zero, 2048
000998  95809d08  dma_cfg r1, r27, r9, 4
00099c  1501b80b  dma_cfg r2, r16, r27, 5
0009a0  15000010  dma_cfg zero, zero, zero, 8
0009a4  35000000  dma_run zero
0009a8  1500a00a  dma_cfg zero, zero, r10, 5
0009ac  15000010  dma_cfg zero, zero, zero, 8
0009b0  1d900400  unlock r9
0009b4  1d800600  lock zero, r13
0009b8  15000014  dma_cfg zero, zero, zero, 10
0009bc  1500a014  dma_cfg zero, zero, r10, 10
0009c0  1500b014  dma_cfg zero, zero, r11, 10
0009c4  9f650000  addli r11, zero, 6
0009c8  1500c014  dma_cfg zero, zero, r12, 10
0009cc  1f760000  addli r12, zero, 7
0009d0  15009014  dma_cfg zero, zero, r9, 10
0009d4  1500d014  dma_cfg zero, zero, r13, 10
0009d8  1500b014  dma_cfg zero, zero, r11, 10
0009dc  e3454f00  loadli.w r11,  36(r30)
0009e0  1500c014  dma_cfg zero, zero, r12, 10
0009e4  1f461000  addli r12, zero, 12
0009e8  15004014  dma_cfg zero, zero, r4, 10
0009ec  1f321000  addli r4, zero, 11
0009f0  15005014  dma_cfg zero, zero, r5, 10
0009f4  15004015  dma_cfg zero, zero, r20, 10
0009f8  1f6a0000  addli r20, zero, 6
0009fc  15004014  dma_cfg zero, zero, r4, 10
000a00  1f421000  addli r4, zero, 12
000a04  15004014  dma_cfg zero, zero, r4, 10
000a08  1f521000  addli r4, zero, 13
000a0c  15004014  dma_cfg zero, zero, r4, 10
000a10  1f621000  addli r4, zero, 14
000a14  15004014  dma_cfg zero, zero, r4, 10
000a18  1f722000  addli r4, zero, 23
000a1c  15003015  dma_cfg zero, zero, r19, 10
000a20  15009015  dma_cfg zero, zero, r25, 10
000a24  15008014  dma_cfg zero, zero, r8, 10
000a28  1f740000  addli r8, zero, 7
000a2c  1500e014  dma_cfg zero, zero, r14, 10
000a30  15003014  dma_cfg zero, zero, r3, 10
000a34  9f210000  addli r3, zero, 2
000a38  1500f014  dma_cfg zero, zero, r15, 10
000a3c  15002015  dma_cfg zero, zero, r18, 10
000a40  1500a015  dma_cfg zero, zero, r26, 10
000a44  15004014  dma_cfg zero, zero, r4, 10
000a48  1f023000  addli r4, zero, 24
000a4c  15004014  dma_cfg zero, zero, r4, 10
000a50  1f123000  addli r4, zero, 25
000a54  15004014  dma_cfg zero, zero, r4, 10
000a58  1f223000  addli r4, zero, 26
000a5c  15004014  dma_cfg zero, zero, r4, 10
000a60  1f323000  addli r4, zero, 27
000a64  15004014  dma_cfg zero, zero, r4, 10
000a68  1f423000  addli r4, zero, 28
000a6c  15004014  dma_cfg zero, zero, r4, 10
000a70  1f523000  addli r4, zero, 29
000a74  15004014  dma_cfg zero, zero, r4, 10
000a78  1f623000  addli r4, zero, 30
000a7c  15004014  dma_cfg zero, zero, r4, 10
000a80  1f723000  addli r4, zero, 31
000a84  15004014  dma_cfg zero, zero, r4, 10
000a88  15050500  dma_cfg r10, r10, zero, 0
000a8c  15050002  dma_cfg r10, zero, zero, 1
000a90  15000004  dma_cfg zero, zero, zero, 2
000a94  950ab007  dma_cfg r21, zero, r27, 3
000a98  95009008  dma_cfg r1, zero, r9, 4
000a9c  1501b00b  dma_cfg r2, zero, r27, 5
000aa0  15000010  dma_cfg zero, zero, zero, 8
000aa4  35000000  dma_run zero
000aa8  1500a00a  dma_cfg zero, zero, r10, 5
000aac  15000010  dma_cfg zero, zero, zero, 8
000ab0  1d900600  unlock r13
000ab4  7d000a00  xsignal r20, 0
000ab8  5be6feff  j -2256
000abc  7d000000  xsignal zero, 0
000ac0  bb600e00  bneq r28, zero, 56
000ac4  9f200000  addli r1, zero, 2
000ac8  7d100000  xwait zero, 0
000acc  7d100000  xwait zero, 0
000ad0  7d100000  xwait zero, 0
000ad4  7d100000  xwait zero, 0
000ad8  7d100000  xwait zero, 0
000adc  7d100000  xwait zero, 0
000ae0  7d100000  xwait zero, 0
000ae4  7d100000  xwait zero, 0
000ae8  1d800000  lock zero, r1
000aec  0d000020  ew_cfg zero, zero, zero, 16
000af0  1d900000  unlock r1
000af4  7d400000  xsignal_mode_cfg zero
000af8  9f8e1e00  addli sp, sp, 8
000afc  00a00300  mfence { lm, sm, gm }
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
000d40  00100000  exit
