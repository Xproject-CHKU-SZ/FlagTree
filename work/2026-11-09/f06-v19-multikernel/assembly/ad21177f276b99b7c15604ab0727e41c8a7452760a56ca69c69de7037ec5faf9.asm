; SHA-256 ad21177f276b99b7c15604ab0727e41c8a7452760a56ca69c69de7037ec5faf9
; P800 SDNN · XTDK LLVM 19 · 1123 / 1123 words decoded
; bound names: triton_tem_fused_add_gelu_mm_0
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
00005c  9f496000  addli r19, zero, 52
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
0000b4  9f8e0eff  addli sp, sp, -128
0000b8  9f100000  addli r1, zero, 1
0000bc  80340002  core_id r9
0000c0  1f8f8e00  addli r30, sp, 64
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7900400  beq r9, zero, 36
0000cc  abf1ffff  lui r3, 1048575
0000d0  7d900000  xwait r1, 0
0000d4  7d900000  xwait r1, 0
0000d8  7d100000  xwait zero, 0
0000dc  9b90f1ff  ori r1, r3, 4095
0000e0  80a10004  csr_set csr3, r1
0000e4  00d00100  sync_group
0000e8  db260000  j 308
0000ec  9f220000  addli r5, zero, 2
0000f0  fdd00000  uni_sram_cfg r1, r1
0000f4  1f430000  addli r6, zero, 4
0000f8  eb510f02  load.d r[4:5], 32(r30)
0000fc  9f030020  addli r7, zero, 4096
000100  1d800200  lock zero, r5
000104  8d000020  ew_cfg r1, zero, zero, 16
000108  1d900200  unlock r5
00010c  1d000300  lock zero, r6
000110  15000000  dma_cfg zero, zero, zero, 0
000114  15000204  dma_cfg zero, r4, zero, 2
000118  15807106  dma_cfg zero, r3, r7, 3
00011c  9f014000  addli r3, zero, 32
000120  1f020008  addli r4, zero, 1024
000124  15001008  dma_cfg zero, zero, r1, 4
000128  35000000  dma_run zero
00012c  1d100300  unlock r6
000130  7d800000  xsignal r1, 0
000134  7d900000  xwait r1, 0
000138  1d000000  lock zero, zero
00013c  81020000  ds_cfg r5, zero, 0
000140  01000002  ds_cfg zero, zero, 1
000144  01000016  ds_cfg zero, zero, 11
000148  8101001a  ds_cfg r3, zero, 13
00014c  9f510000  addli r3, zero, 5
000150  0102001c  ds_cfg r4, zero, 14
000154  a1134008  shuffle_batch r7, zero, r4, 4
000158  1d100000  unlock zero
00015c  7d800000  xsignal r1, 0
000160  7d900000  xwait r1, 0
000164  1d800200  lock zero, r5
000168  ab100100  lui r1, 17
00016c  0da00300  ewtable_cfg r7, 0
000170  0da00002  ewtable_cfg r1, 1
000174  abf0ffff  lui r1, 1048575
000178  1d900200  unlock r5
00017c  7d000000  xsignal zero, 0
000180  7d100000  xwait zero, 0
000184  9b90f0ff  ori r1, r1, 4095
000188  80a10004  csr_set csr3, r1
00018c  9f301000  addli r1, zero, 11
000190  00d00100  sync_group
000194  7d800000  xsignal r1, 0
000198  7d800000  xsignal r1, 0
00019c  7d800000  xsignal r1, 0
0001a0  9f300000  addli r1, zero, 3
0001a4  7d800100  xsignal r3, 0
0001a8  7d800100  xsignal r3, 0
0001ac  7d800100  xsignal r3, 0
0001b0  9f111000  addli r3, zero, 9
0001b4  7d800000  xsignal r1, 0
0001b8  7d800000  xsignal r1, 0
0001bc  7d800000  xsignal r1, 0
0001c0  9f700000  addli r1, zero, 7
0001c4  7d800100  xsignal r3, 0
0001c8  7d800100  xsignal r3, 0
0001cc  7d800100  xsignal r3, 0
0001d0  9f511000  addli r3, zero, 13
0001d4  7d800000  xsignal r1, 0
0001d8  7d800000  xsignal r1, 0
0001dc  7d800000  xsignal r1, 0
0001e0  9f302000  addli r1, zero, 19
0001e4  7d800100  xsignal r3, 0
0001e8  7d800100  xsignal r3, 0
0001ec  7d800100  xsignal r3, 0
0001f0  9f412000  addli r3, zero, 20
0001f4  7d800000  xsignal r1, 0
0001f8  7d800000  xsignal r1, 0
0001fc  7d800000  xsignal r1, 0
000200  9f502000  addli r1, zero, 21
000204  7d800100  xsignal r3, 0
000208  7d800100  xsignal r3, 0
00020c  7d800100  xsignal r3, 0
000210  7d800000  xsignal r1, 0
000214  7d800000  xsignal r1, 0
000218  7d800000  xsignal r1, 0
00021c  e3005f00  loadli.w r1,  40(r30)
000220  e3415f00  loadli.w r3,  44(r30)
000224  80d20002  load_param_i r5, 1
000228  63026f00  loadli.w r4,  48(r30)
00022c  8b901120  mul.s r1, r3, r1
000230  9f810200  addli r3, r5, 0
000234  8b914050  fmac.s r3, r1, r4
000238  0b924020  mul.s r4, r1, r4
00023c  9ff1f1ff  addli r3, r3, -1
000240  8b915130  div.s r3, r3, r5
000244  80520002  load_param_i r5, 0
000248  8b905120  mul.s r1, r3, r5
00024c  8b915150  fmac.s r3, r3, r5
000250  8b914140  min.s r3, r3, r4
000254  cbc21106  ble.s r3, r1, 3248
000258  33910128  sext_int2long r[3:4], r3
00025c  33930028  sext_int2long r[7:8], r1
000260  1f340000  addli r8, zero, 3
000264  1f0c8000  addli r24, zero, 64
000268  1f450000  addli r10, zero, 4
00026c  9f0d1000  addli r27, zero, 8
000270  9f5b1000  addli r23, zero, 13
000274  1f2a0000  addli r20, zero, 2
000278  9f5a0000  addli r21, zero, 5
00027c  1f1b0000  addli r22, zero, 1
000280  1f0e0000  addli r28, zero, 0
000284  73342ffe  store.d r[3:4], -24(r30)
000288  1f71f01f  addli r2, zero, 4095
00028c  ab21373d  lui r3, 250738
000290  ab80ffff  lui r1, 1048568
000294  73301ffe  store.d r[2:3], -32(r30)
000298  ab000900  lui r1, 144
00029c  9b900060  ori r1, r1, 1536
0002a0  674d1ffe  storeli.w r1, -44(r30)
0002a4  ab000c00  lui r1, 192
0002a8  9b900060  ori r1, r1, 1536
0002ac  670d1ffe  storeli.w r1, -48(r30)
0002b0  9b903171  ori r1, r3, 1811
0002b4  ab810300  lui r3, 56
0002b8  e74c1ffe  storeli.w r1, -52(r30)
0002bc  ab404c3f  lui r1, 259268
0002c0  9b90a022  ori r1, r1, 554
0002c4  e70c1ffe  storeli.w r1, -56(r30)
0002c8  9b903184  ori r1, r3, 2115
0002cc  674c1ffe  storeli.w r1, -60(r30)
0002d0  b3000028  zext_int2long r[2:3], zero
0002d4  733c1ffc  store.d r[2:3], -40(r30)
0002d8  1f010001  addli r2, zero, 128
0002dc  db2e0000  j 372
0002e0  9b100904  ori r1, r18, 64
0002e4  1d000500  lock zero, r10
0002e8  150b0b00  dma_cfg r22, r22, zero, 0
0002ec  8b101710  add.s r1, r14, r1
0002f0  1ff73500  addli r14, r11, 31
0002f4  15800204  dma_cfg zero, r5, zero, 2
0002f8  95008207  dma_cfg r1, r4, r24, 3
0002fc  1bb21500  slli r4, r11, 1
000300  9b405700  srli r1, r14, 5
000304  9f020002  addli r5, zero, 256
000308  1f060004  addli r12, zero, 512
00030c  9f751000  addli r11, zero, 15
000310  15011c08  dma_cfg r2, r24, r1, 4
000314  1b02e203  andi r4, r4, 62
000318  1586620b  dma_cfg r12, r5, r22, 5
00031c  9f320000  addli r5, zero, 3
000320  15004010  dma_cfg zero, zero, r4, 8
000324  35000000  dma_run zero
000328  1500600b  dma_cfg zero, zero, r22, 5
00032c  15000010  dma_cfg zero, zero, zero, 8
000330  1d100500  unlock r10
000334  1d800a00  lock zero, r21
000338  15000014  dma_cfg zero, zero, zero, 10
00033c  15006015  dma_cfg zero, zero, r22, 10
000340  15004015  dma_cfg zero, zero, r20, 10
000344  15005014  dma_cfg zero, zero, r5, 10
000348  9f121000  addli r5, zero, 9
00034c  1500a014  dma_cfg zero, zero, r10, 10
000350  15005015  dma_cfg zero, zero, r21, 10
000354  1500d014  dma_cfg zero, zero, r13, 10
000358  1500a015  dma_cfg zero, zero, r26, 10
00035c  1500b015  dma_cfg zero, zero, r27, 10
000360  15005014  dma_cfg zero, zero, r5, 10
000364  9f221000  addli r5, zero, 10
000368  15005014  dma_cfg zero, zero, r5, 10
00036c  9f321000  addli r5, zero, 11
000370  15005014  dma_cfg zero, zero, r5, 10
000374  9f421000  addli r5, zero, 12
000378  15005014  dma_cfg zero, zero, r5, 10
00037c  15007015  dma_cfg zero, zero, r23, 10
000380  15008014  dma_cfg zero, zero, r8, 10
000384  1f340000  addli r8, zero, 3
000388  1500b014  dma_cfg zero, zero, r11, 10
00038c  9f052000  addli r11, zero, 16
000390  1500b014  dma_cfg zero, zero, r11, 10
000394  9f152000  addli r11, zero, 17
000398  1500b014  dma_cfg zero, zero, r11, 10
00039c  9f252000  addli r11, zero, 18
0003a0  1500b014  dma_cfg zero, zero, r11, 10
0003a4  9f352000  addli r11, zero, 19
0003a8  1500b014  dma_cfg zero, zero, r11, 10
0003ac  9f452000  addli r11, zero, 20
0003b0  1500b014  dma_cfg zero, zero, r11, 10
0003b4  9f552000  addli r11, zero, 21
0003b8  1500b014  dma_cfg zero, zero, r11, 10
0003bc  9f652000  addli r11, zero, 22
0003c0  1500b014  dma_cfg zero, zero, r11, 10
0003c4  9f752000  addli r11, zero, 23
0003c8  1500b014  dma_cfg zero, zero, r11, 10
0003cc  9f053000  addli r11, zero, 24
0003d0  1500b014  dma_cfg zero, zero, r11, 10
0003d4  9f153000  addli r11, zero, 25
0003d8  1500b014  dma_cfg zero, zero, r11, 10
0003dc  9f253000  addli r11, zero, 26
0003e0  1500b014  dma_cfg zero, zero, r11, 10
0003e4  9f353000  addli r11, zero, 27
0003e8  1500b014  dma_cfg zero, zero, r11, 10
0003ec  9f453000  addli r11, zero, 28
0003f0  1500b014  dma_cfg zero, zero, r11, 10
0003f4  9f553000  addli r11, zero, 29
0003f8  1500b014  dma_cfg zero, zero, r11, 10
0003fc  9f653000  addli r11, zero, 30
000400  1500b014  dma_cfg zero, zero, r11, 10
000404  9f753000  addli r11, zero, 31
000408  1500b014  dma_cfg zero, zero, r11, 10
00040c  150b0b00  dma_cfg r22, r22, zero, 0
000410  150b0002  dma_cfg r22, zero, zero, 1
000414  15000004  dma_cfg zero, zero, zero, 2
000418  95018007  dma_cfg r3, zero, r24, 3
00041c  15011008  dma_cfg r2, zero, r1, 4
000420  1506600b  dma_cfg r12, zero, r22, 5
000424  15004010  dma_cfg zero, zero, r4, 8
000428  35000000  dma_run zero
00042c  1500600b  dma_cfg zero, zero, r22, 5
000430  15000010  dma_cfg zero, zero, zero, 8
000434  1d900a00  unlock r21
000438  7d800200  xsignal r5, 0
00043c  eb518ffe  load.d r[4:5], -24(r30)
000440  27130300  addli.d r[7:8], r[7:8], 1
000444  1f1e0e00  addli r28, r28, 1
000448  93303304  setlt.sl r1, r[7:8], r[4:5]
00044c  b7ea0004  beq r1, zero, 2744
000450  e3006f00  loadli.w r1,  48(r30)
000454  e3415f00  loadli.w r3,  44(r30)
000458  9f561000  addli r13, zero, 13
00045c  8b101330  div.s r1, r6, r1
000460  8b913030  div.s r3, r1, r3
000464  8b958131  div.s r11, r3, r24
000468  9bb03500  slli r1, r11, 3
00046c  0b121518  sub.s r4, r10, r1
000470  0b16b241  min.s r12, r4, r27
000474  0b92c138  mod.s r4, r3, r12
000478  8b101210  add.s r1, r4, r1
00047c  13081404  setlt.u r16, r8, r1
000480  33820028  zext_int2long r[5:6], r1
000484  17377203  sll.d r[15:16], r[5:6], r23
000488  3b400800  bneq r16, zero, 16
00048c  6b598ffd  load.d r[19:20], -40(r30)
000490  1f780000  addli r16, zero, 7
000494  5b020000  j 16
000498  eb580ffe  load.d r[18:19], -32(r30)
00049c  1f780000  addli r16, zero, 7
0004a0  17091703  and.d r[19:20], r[15:16], r[18:19]
0004a4  9bb56500  slli r11, r11, 6
0004a8  8b1b8e38  mod.s r23, r28, r8
0004ac  8b91b118  sub.s r3, r3, r11
0004b0  8b91c130  div.s r3, r3, r12
0004b4  1f060003  addli r12, zero, 384
0004b8  330c0628  zext_int2long r[25:26], r12
0004bc  9bb5fb00  slli r11, r23, 15
0004c0  2b060300  lui r12, 48
0004c4  9bb80b01  slli r17, r23, 16
0004c8  0b96c510  add.s r12, r11, r12
0004cc  73388fff  store.d r[25:26], -16(r30)
0004d0  338d0128  zext_int2long r[27:28], r3
0004d4  173d0d03  sll.d r[27:28], r[27:28], r16
0004d8  1f680000  addli r16, zero, 6
0004dc  173d6d03  sll.d r[27:28], r[27:28], r22
0004e0  733cafff  store.d r[27:28], -8(r30)
0004e4  bbaa0401  bneq r9, r16, 680
0004e8  0b372719  sub.sl r[15:16], r[15:16], r[19:20]
0004ec  1f641000  addli r8, zero, 14
0004f0  9f3a0000  addli r21, zero, 3
0004f4  9f0d1000  addli r27, zero, 8
0004f8  17570703  sra.d r[15:16], r[15:16], r16
0004fc  7d900a00  xwait r21, 0
000500  0b398741  min.sl r[19:20], r[15:16], r[25:26]
000504  973c8202  sll.d r[26:27], r[5:6], r8
000508  1f0c8000  addli r24, zero, 64
00050c  0b39e918  sub.sl r[19:20], r[19:20], r[15:16]
000510  6b570f00  load.d r[15:16], 0(r30)
000514  8b279711  add.ul r[16:17], r[15:16], r[26:27]
000518  1f070901  addli r14, r18, 128
00051c  1f7d0000  addli r26, zero, 7
000520  9f690000  addli r19, zero, 6
000524  3f44ca01  blt.s r20, r28, 272
000528  1f590000  addli r18, zero, 5
00052c  9f1c1000  addli r25, zero, 9
000530  1d000900  lock zero, r18
000534  15000014  dma_cfg zero, zero, zero, 10
000538  15006015  dma_cfg zero, zero, r22, 10
00053c  15004015  dma_cfg zero, zero, r20, 10
000540  15005015  dma_cfg zero, zero, r21, 10
000544  1500a014  dma_cfg zero, zero, r10, 10
000548  15002015  dma_cfg zero, zero, r18, 10
00054c  15003015  dma_cfg zero, zero, r19, 10
000550  1500a015  dma_cfg zero, zero, r26, 10
000554  1500b015  dma_cfg zero, zero, r27, 10
000558  15009015  dma_cfg zero, zero, r25, 10
00055c  9f2c1000  addli r25, zero, 10
000560  15009015  dma_cfg zero, zero, r25, 10
000564  9f3c1000  addli r25, zero, 11
000568  15009015  dma_cfg zero, zero, r25, 10
00056c  9f4c1000  addli r25, zero, 12
000570  15009015  dma_cfg zero, zero, r25, 10
000574  9f7c1000  addli r25, zero, 15
000578  1500d014  dma_cfg zero, zero, r13, 10
00057c  15008014  dma_cfg zero, zero, r8, 10
000580  15009015  dma_cfg zero, zero, r25, 10
000584  9f0c2000  addli r25, zero, 16
000588  15009015  dma_cfg zero, zero, r25, 10
00058c  9f1c2000  addli r25, zero, 17
000590  15009015  dma_cfg zero, zero, r25, 10
000594  9f2c2000  addli r25, zero, 18
000598  15009015  dma_cfg zero, zero, r25, 10
00059c  9f3c2000  addli r25, zero, 19
0005a0  15009015  dma_cfg zero, zero, r25, 10
0005a4  9f4c2000  addli r25, zero, 20
0005a8  15009015  dma_cfg zero, zero, r25, 10
0005ac  9f5c2000  addli r25, zero, 21
0005b0  15009015  dma_cfg zero, zero, r25, 10
0005b4  9f6c2000  addli r25, zero, 22
0005b8  15009015  dma_cfg zero, zero, r25, 10
0005bc  9f7c2000  addli r25, zero, 23
0005c0  15009015  dma_cfg zero, zero, r25, 10
0005c4  9f0c3000  addli r25, zero, 24
0005c8  15009015  dma_cfg zero, zero, r25, 10
0005cc  9f1c3000  addli r25, zero, 25
0005d0  15009015  dma_cfg zero, zero, r25, 10
0005d4  9f2c3000  addli r25, zero, 26
0005d8  15009015  dma_cfg zero, zero, r25, 10
0005dc  9f3c3000  addli r25, zero, 27
0005e0  15009015  dma_cfg zero, zero, r25, 10
0005e4  9f4c3000  addli r25, zero, 28
0005e8  15009015  dma_cfg zero, zero, r25, 10
0005ec  9f5c3000  addli r25, zero, 29
0005f0  15009015  dma_cfg zero, zero, r25, 10
0005f4  9f6c3000  addli r25, zero, 30
0005f8  15009015  dma_cfg zero, zero, r25, 10
0005fc  9f7c3000  addli r25, zero, 31
000600  15009015  dma_cfg zero, zero, r25, 10
000604  9f0c0002  addli r25, zero, 256
000608  150b0b00  dma_cfg r22, r22, zero, 0
00060c  150b0002  dma_cfg r22, zero, zero, 1
000610  15000004  dma_cfg zero, zero, zero, 2
000614  15068007  dma_cfg r12, zero, r24, 3
000618  15014009  dma_cfg r2, zero, r20, 4
00061c  950c200a  dma_cfg r25, zero, r2, 5
000620  15000010  dma_cfg zero, zero, zero, 8
000624  35000000  dma_run zero
000628  1500600b  dma_cfg zero, zero, r22, 5
00062c  15000010  dma_cfg zero, zero, zero, 8
000630  1d100900  unlock r18
000634  2b090300  lui r18, 48
000638  1d000500  lock zero, r10
00063c  80340002  core_id r9
000640  150b0b00  dma_cfg r22, r22, zero, 0
000644  1b190904  ori r18, r18, 64
000648  15000804  dma_cfg zero, r16, zero, 2
00064c  8b952511  add.s r11, r11, r18
000650  95858707  dma_cfg r11, r15, r24, 3
000654  9f070002  addli r15, zero, 256
000658  9f550000  addli r11, zero, 5
00065c  15014c09  dma_cfg r2, r24, r20, 4
000660  9507e10a  dma_cfg r15, r2, r14, 5
000664  15000010  dma_cfg zero, zero, zero, 8
000668  35000000  dma_run zero
00066c  1500600b  dma_cfg zero, zero, r22, 5
000670  15000010  dma_cfg zero, zero, zero, 8
000674  1d100500  unlock r10
000678  1d800500  lock zero, r11
00067c  9f151000  addli r11, zero, 9
000680  15000014  dma_cfg zero, zero, zero, 10
000684  15006015  dma_cfg zero, zero, r22, 10
000688  15004015  dma_cfg zero, zero, r20, 10
00068c  15005015  dma_cfg zero, zero, r21, 10
000690  9f5a0000  addli r21, zero, 5
000694  1500a014  dma_cfg zero, zero, r10, 10
000698  15005015  dma_cfg zero, zero, r21, 10
00069c  15003015  dma_cfg zero, zero, r19, 10
0006a0  1500a015  dma_cfg zero, zero, r26, 10
0006a4  1500b015  dma_cfg zero, zero, r27, 10
0006a8  1500b014  dma_cfg zero, zero, r11, 10
0006ac  9f251000  addli r11, zero, 10
0006b0  1500b014  dma_cfg zero, zero, r11, 10
0006b4  9f351000  addli r11, zero, 11
0006b8  1500b014  dma_cfg zero, zero, r11, 10
0006bc  9f451000  addli r11, zero, 12
0006c0  1500b014  dma_cfg zero, zero, r11, 10
0006c4  1500d014  dma_cfg zero, zero, r13, 10
0006c8  15008014  dma_cfg zero, zero, r8, 10
0006cc  1f741000  addli r8, zero, 15
0006d0  15008014  dma_cfg zero, zero, r8, 10
0006d4  1f042000  addli r8, zero, 16
0006d8  15008014  dma_cfg zero, zero, r8, 10
0006dc  1f142000  addli r8, zero, 17
0006e0  15008014  dma_cfg zero, zero, r8, 10
0006e4  1f242000  addli r8, zero, 18
0006e8  15008014  dma_cfg zero, zero, r8, 10
0006ec  1f342000  addli r8, zero, 19
0006f0  15008014  dma_cfg zero, zero, r8, 10
0006f4  1f442000  addli r8, zero, 20
0006f8  15008014  dma_cfg zero, zero, r8, 10
0006fc  1f542000  addli r8, zero, 21
000700  15008014  dma_cfg zero, zero, r8, 10
000704  1f642000  addli r8, zero, 22
000708  15008014  dma_cfg zero, zero, r8, 10
00070c  1f742000  addli r8, zero, 23
000710  15008014  dma_cfg zero, zero, r8, 10
000714  1f043000  addli r8, zero, 24
000718  15008014  dma_cfg zero, zero, r8, 10
00071c  1f143000  addli r8, zero, 25
000720  15008014  dma_cfg zero, zero, r8, 10
000724  1f243000  addli r8, zero, 26
000728  15008014  dma_cfg zero, zero, r8, 10
00072c  1f343000  addli r8, zero, 27
000730  15008014  dma_cfg zero, zero, r8, 10
000734  1f443000  addli r8, zero, 28
000738  15008014  dma_cfg zero, zero, r8, 10
00073c  1f543000  addli r8, zero, 29
000740  15008014  dma_cfg zero, zero, r8, 10
000744  1f643000  addli r8, zero, 30
000748  15008014  dma_cfg zero, zero, r8, 10
00074c  1f743000  addli r8, zero, 31
000750  15008014  dma_cfg zero, zero, r8, 10
000754  1f340000  addli r8, zero, 3
000758  150b0b00  dma_cfg r22, r22, zero, 0
00075c  150b0002  dma_cfg r22, zero, zero, 1
000760  15000004  dma_cfg zero, zero, zero, 2
000764  15068007  dma_cfg r12, zero, r24, 3
000768  15014009  dma_cfg r2, zero, r20, 4
00076c  9507e00a  dma_cfg r15, zero, r14, 5
000770  15000010  dma_cfg zero, zero, zero, 8
000774  35000000  dma_run zero
000778  1500600b  dma_cfg zero, zero, r22, 5
00077c  15000010  dma_cfg zero, zero, zero, 8
000780  1d900a00  unlock r21
000784  7d000a00  xsignal r20, 0
000788  5b080000  j 64
00078c  9f0d1000  addli r27, zero, 8
000790  bbd84401  bneq r9, r20, 564
000794  7d100a00  xwait r20, 0
000798  7d900a00  xwait r21, 0
00079c  1d000000  lock zero, zero
0007a0  1f0c8000  addli r24, zero, 64
0007a4  1f7d0000  addli r26, zero, 7
0007a8  010a0000  ds_cfg r20, zero, 0
0007ac  010c0002  ds_cfg r24, zero, 1
0007b0  010c001c  ds_cfg r24, zero, 14
0007b4  0101001a  ds_cfg r2, zero, 13
0007b8  a1158603  shuffle_batch r11, r12, r24, 1
0007bc  1d100000  unlock zero
0007c0  7d000400  xsignal r8, 0
0007c4  7d000500  xsignal r10, 0
0007c8  9f050007  addli r11, zero, 896
0007cc  9bb17100  slli r3, r3, 7
0007d0  b3070128  zext_int2long r[16:17], r2
0007d4  1bb79b00  slli r14, r23, 9
0007d8  9f660000  addli r13, zero, 6
0007dc  b3850528  zext_int2long r[12:13], r11
0007e0  33890128  zext_int2long r[19:20], r3
0007e4  8b25b940  min.ul r[12:13], r[19:20], r[12:13]
0007e8  a7850501  addli.d r[12:13], r[12:13], 128
0007ec  8ba52549  max.ul r[12:13], r[12:13], r[19:20]
0007f0  8bb52519  sub.sl r[12:13], r[12:13], r[19:20]
0007f4  2b090600  lui r18, 96
0007f8  8ba5f540  min.ul r[12:13], r[12:13], r[16:17]
0007fc  8b112711  add.s r3, r14, r18
000800  bbc4d400  bneq r9, r13, 304
000804  6b520f01  load.d r[5:6], 16(r30)
000808  eb578fff  load.d r[16:17], -8(r30)
00080c  9f5b1000  addli r23, zero, 13
000810  9f300000  addli r1, zero, 3
000814  1f641000  addli r8, zero, 14
000818  7d900b00  xwait r23, 0
00081c  0b22f210  add.ul r[5:6], r[5:6], r[16:17]
000820  3f0bcafd  blt.s r20, r28, -1344
000824  1d800a00  lock zero, r21
000828  15000014  dma_cfg zero, zero, zero, 10
00082c  15006015  dma_cfg zero, zero, r22, 10
000830  15004015  dma_cfg zero, zero, r20, 10
000834  15001014  dma_cfg zero, zero, r1, 10
000838  9f101000  addli r1, zero, 9
00083c  1500a014  dma_cfg zero, zero, r10, 10
000840  15005015  dma_cfg zero, zero, r21, 10
000844  1500d014  dma_cfg zero, zero, r13, 10
000848  1500a015  dma_cfg zero, zero, r26, 10
00084c  1500b015  dma_cfg zero, zero, r27, 10
000850  15001014  dma_cfg zero, zero, r1, 10
000854  9f201000  addli r1, zero, 10
000858  15001014  dma_cfg zero, zero, r1, 10
00085c  9f301000  addli r1, zero, 11
000860  15001014  dma_cfg zero, zero, r1, 10
000864  9f401000  addli r1, zero, 12
000868  15001014  dma_cfg zero, zero, r1, 10
00086c  9f701000  addli r1, zero, 15
000870  15007015  dma_cfg zero, zero, r23, 10
000874  15008014  dma_cfg zero, zero, r8, 10
000878  15001014  dma_cfg zero, zero, r1, 10
00087c  9f002000  addli r1, zero, 16
000880  15001014  dma_cfg zero, zero, r1, 10
000884  9f102000  addli r1, zero, 17
000888  15001014  dma_cfg zero, zero, r1, 10
00088c  9f202000  addli r1, zero, 18
000890  15001014  dma_cfg zero, zero, r1, 10
000894  9f302000  addli r1, zero, 19
000898  15001014  dma_cfg zero, zero, r1, 10
00089c  9f402000  addli r1, zero, 20
0008a0  15001014  dma_cfg zero, zero, r1, 10
0008a4  9f502000  addli r1, zero, 21
0008a8  15001014  dma_cfg zero, zero, r1, 10
0008ac  9f602000  addli r1, zero, 22
0008b0  15001014  dma_cfg zero, zero, r1, 10
0008b4  9f702000  addli r1, zero, 23
0008b8  15001014  dma_cfg zero, zero, r1, 10
0008bc  9f003000  addli r1, zero, 24
0008c0  15001014  dma_cfg zero, zero, r1, 10
0008c4  9f103000  addli r1, zero, 25
0008c8  15001014  dma_cfg zero, zero, r1, 10
0008cc  9f203000  addli r1, zero, 26
0008d0  15001014  dma_cfg zero, zero, r1, 10
0008d4  9f303000  addli r1, zero, 27
0008d8  15001014  dma_cfg zero, zero, r1, 10
0008dc  9f403000  addli r1, zero, 28
0008e0  15001014  dma_cfg zero, zero, r1, 10
0008e4  9f503000  addli r1, zero, 29
0008e8  15001014  dma_cfg zero, zero, r1, 10
0008ec  9f603000  addli r1, zero, 30
0008f0  15001014  dma_cfg zero, zero, r1, 10
0008f4  9f703000  addli r1, zero, 31
0008f8  15001014  dma_cfg zero, zero, r1, 10
0008fc  9f000004  addli r1, zero, 512
000900  150b0b00  dma_cfg r22, r22, zero, 0
000904  150b0002  dma_cfg r22, zero, zero, 1
000908  15000004  dma_cfg zero, zero, zero, 2
00090c  95018007  dma_cfg r3, zero, r24, 3
000910  1501a008  dma_cfg r2, zero, r10, 4
000914  9500600b  dma_cfg r1, zero, r22, 5
000918  15000010  dma_cfg zero, zero, zero, 8
00091c  35000000  dma_run zero
000920  1500600b  dma_cfg zero, zero, r22, 5
000924  15000010  dma_cfg zero, zero, zero, 8
000928  1d900a00  unlock r21
00092c  db36ffff  j -1612
000930  1b170960  ori r14, r18, 1536
000934  9f5b1000  addli r23, zero, 13
000938  0b97e810  add.s r14, r17, r14
00093c  b78c5401  beq r9, r21, 800
000940  bbf18402  bneq r9, r8, 1148
000944  1f221000  addli r4, zero, 10
000948  9f000000  addli r1, zero, 0
00094c  ab050100  lui r11, 16
000950  7d100200  xwait r4, 0
000954  1f421000  addli r4, zero, 12
000958  7d100200  xwait r4, 0
00095c  1f322000  addli r4, zero, 19
000960  7d100200  xwait r4, 0
000964  1d000a00  lock zero, r20
000968  2b02803f  lui r4, 260096
00096c  0d000002  ew_cfg zero, zero, zero, 1
000970  0d120200  ewcoeff_cfg r4, r4, zero, 0
000974  1f72f000  addli r4, zero, 127
000978  0d000204  ew_cfg zero, r4, zero, 2
00097c  0d0b0006  ew_cfg r22, zero, zero, 3
000980  0b121710  add.s r4, r14, r1
000984  8b921810  add.s r5, r17, r1
000988  9f800004  addli r1, r1, 512
00098c  2d823200  dsmadd r4, r5, r3, 0
000990  bbcfb0fe  bneq r1, r11, -16
000994  9f301000  addli r1, zero, 11
000998  1d100a00  unlock r20
00099c  7d800000  xsignal r1, 0
0009a0  9f002000  addli r1, zero, 16
0009a4  7d800b00  xsignal r23, 0
0009a8  7d800000  xsignal r1, 0
0009ac  9f102000  addli r1, zero, 17
0009b0  7d800000  xsignal r1, 0
0009b4  9f202000  addli r1, zero, 18
0009b8  7d800000  xsignal r1, 0
0009bc  9f601000  addli r1, zero, 14
0009c0  db930000  j 1180
0009c4  2b860400  lui r12, 72
0009c8  1f7d0000  addli r26, zero, 7
0009cc  1f0c8000  addli r24, zero, 64
0009d0  0b96c510  add.s r12, r11, r12
0009d4  b7e3a403  beq r9, r26, 1272
0009d8  37b2a402  beq r9, r10, 1164
0009dc  bbb764ff  bneq r9, r22, -532
0009e0  6b598fff  load.d r[19:20], -8(r30)
0009e4  6b578f00  load.d r[15:16], 8(r30)
0009e8  7d100d00  xwait r26, 0
0009ec  0b272711  add.ul r[15:16], r[15:16], r[19:20]
0009f0  1f690000  addli r18, zero, 6
0009f4  3f54ca01  blt.s r20, r28, 276
0009f8  1d800a00  lock zero, r21
0009fc  1f781000  addli r16, zero, 15
000a00  15000014  dma_cfg zero, zero, zero, 10
000a04  15006015  dma_cfg zero, zero, r22, 10
000a08  15004015  dma_cfg zero, zero, r20, 10
000a0c  15008014  dma_cfg zero, zero, r8, 10
000a10  1f141000  addli r8, zero, 9
000a14  1500a014  dma_cfg zero, zero, r10, 10
000a18  15005015  dma_cfg zero, zero, r21, 10
000a1c  15002015  dma_cfg zero, zero, r18, 10
000a20  1500a015  dma_cfg zero, zero, r26, 10
000a24  1500b015  dma_cfg zero, zero, r27, 10
000a28  15008014  dma_cfg zero, zero, r8, 10
000a2c  1f241000  addli r8, zero, 10
000a30  15008014  dma_cfg zero, zero, r8, 10
000a34  1f341000  addli r8, zero, 11
000a38  15008014  dma_cfg zero, zero, r8, 10
000a3c  1f441000  addli r8, zero, 12
000a40  15008014  dma_cfg zero, zero, r8, 10
000a44  1f641000  addli r8, zero, 14
000a48  1500d014  dma_cfg zero, zero, r13, 10
000a4c  15008014  dma_cfg zero, zero, r8, 10
000a50  1f340000  addli r8, zero, 3
000a54  15000015  dma_cfg zero, zero, r16, 10
000a58  1f082000  addli r16, zero, 16
000a5c  15000015  dma_cfg zero, zero, r16, 10
000a60  1f182000  addli r16, zero, 17
000a64  15000015  dma_cfg zero, zero, r16, 10
000a68  1f282000  addli r16, zero, 18
000a6c  15000015  dma_cfg zero, zero, r16, 10
000a70  1f382000  addli r16, zero, 19
000a74  15000015  dma_cfg zero, zero, r16, 10
000a78  1f482000  addli r16, zero, 20
000a7c  15000015  dma_cfg zero, zero, r16, 10
000a80  1f582000  addli r16, zero, 21
000a84  15000015  dma_cfg zero, zero, r16, 10
000a88  1f682000  addli r16, zero, 22
000a8c  15000015  dma_cfg zero, zero, r16, 10
000a90  1f782000  addli r16, zero, 23
000a94  15000015  dma_cfg zero, zero, r16, 10
000a98  1f083000  addli r16, zero, 24
000a9c  15000015  dma_cfg zero, zero, r16, 10
000aa0  1f183000  addli r16, zero, 25
000aa4  15000015  dma_cfg zero, zero, r16, 10
000aa8  1f283000  addli r16, zero, 26
000aac  15000015  dma_cfg zero, zero, r16, 10
000ab0  1f383000  addli r16, zero, 27
000ab4  15000015  dma_cfg zero, zero, r16, 10
000ab8  1f483000  addli r16, zero, 28
000abc  15000015  dma_cfg zero, zero, r16, 10
000ac0  1f583000  addli r16, zero, 29
000ac4  15000015  dma_cfg zero, zero, r16, 10
000ac8  1f683000  addli r16, zero, 30
000acc  15000015  dma_cfg zero, zero, r16, 10
000ad0  1f783000  addli r16, zero, 31
000ad4  15000015  dma_cfg zero, zero, r16, 10
000ad8  1f080004  addli r16, zero, 512
000adc  150b0b00  dma_cfg r22, r22, zero, 0
000ae0  150b0002  dma_cfg r22, zero, zero, 1
000ae4  15000004  dma_cfg zero, zero, zero, 2
000ae8  15068007  dma_cfg r12, zero, r24, 3
000aec  1501a008  dma_cfg r2, zero, r10, 4
000af0  1508800b  dma_cfg r16, zero, r24, 5
000af4  15000010  dma_cfg zero, zero, zero, 8
000af8  35000000  dma_run zero
000afc  1500600b  dma_cfg zero, zero, r22, 5
000b00  15000010  dma_cfg zero, zero, zero, 8
000b04  1d900a00  unlock r21
000b08  2b880400  lui r16, 72
000b0c  1d000500  lock zero, r10
000b10  150b0b00  dma_cfg r22, r22, zero, 0
000b14  1b180804  ori r16, r16, 64
000b18  15800704  dma_cfg zero, r15, zero, 2
000b1c  8b950511  add.s r11, r11, r16
000b20  95058707  dma_cfg r11, r14, r24, 3
000b24  1f070004  addli r14, zero, 512
000b28  9f050010  addli r11, zero, 2048
000b2c  1501ac08  dma_cfg r2, r24, r10, 4
000b30  1587850b  dma_cfg r14, r11, r24, 5
000b34  9f751000  addli r11, zero, 15
000b38  15000010  dma_cfg zero, zero, zero, 8
000b3c  35000000  dma_run zero
000b40  1500600b  dma_cfg zero, zero, r22, 5
000b44  15000010  dma_cfg zero, zero, zero, 8
000b48  1d100500  unlock r10
000b4c  1d800a00  lock zero, r21
000b50  15000014  dma_cfg zero, zero, zero, 10
000b54  15006015  dma_cfg zero, zero, r22, 10
000b58  15004015  dma_cfg zero, zero, r20, 10
000b5c  15008014  dma_cfg zero, zero, r8, 10
000b60  1f141000  addli r8, zero, 9
000b64  1500a014  dma_cfg zero, zero, r10, 10
000b68  15005015  dma_cfg zero, zero, r21, 10
000b6c  15002015  dma_cfg zero, zero, r18, 10
000b70  1500a015  dma_cfg zero, zero, r26, 10
000b74  1500b015  dma_cfg zero, zero, r27, 10
000b78  15008014  dma_cfg zero, zero, r8, 10
000b7c  1f241000  addli r8, zero, 10
000b80  15008014  dma_cfg zero, zero, r8, 10
000b84  1f341000  addli r8, zero, 11
000b88  15008014  dma_cfg zero, zero, r8, 10
000b8c  1f441000  addli r8, zero, 12
000b90  15008014  dma_cfg zero, zero, r8, 10
000b94  1f641000  addli r8, zero, 14
000b98  1500d014  dma_cfg zero, zero, r13, 10
000b9c  15008014  dma_cfg zero, zero, r8, 10
000ba0  1f340000  addli r8, zero, 3
000ba4  1500b014  dma_cfg zero, zero, r11, 10
000ba8  9f052000  addli r11, zero, 16
000bac  1500b014  dma_cfg zero, zero, r11, 10
000bb0  9f152000  addli r11, zero, 17
000bb4  1500b014  dma_cfg zero, zero, r11, 10
000bb8  9f252000  addli r11, zero, 18
000bbc  1500b014  dma_cfg zero, zero, r11, 10
000bc0  9f352000  addli r11, zero, 19
000bc4  1500b014  dma_cfg zero, zero, r11, 10
000bc8  9f452000  addli r11, zero, 20
000bcc  1500b014  dma_cfg zero, zero, r11, 10
000bd0  9f552000  addli r11, zero, 21
000bd4  1500b014  dma_cfg zero, zero, r11, 10
000bd8  9f652000  addli r11, zero, 22
000bdc  1500b014  dma_cfg zero, zero, r11, 10
000be0  9f752000  addli r11, zero, 23
000be4  1500b014  dma_cfg zero, zero, r11, 10
000be8  9f053000  addli r11, zero, 24
000bec  1500b014  dma_cfg zero, zero, r11, 10
000bf0  9f153000  addli r11, zero, 25
000bf4  1500b014  dma_cfg zero, zero, r11, 10
000bf8  9f253000  addli r11, zero, 26
000bfc  1500b014  dma_cfg zero, zero, r11, 10
000c00  9f353000  addli r11, zero, 27
000c04  1500b014  dma_cfg zero, zero, r11, 10
000c08  9f453000  addli r11, zero, 28
000c0c  1500b014  dma_cfg zero, zero, r11, 10
000c10  9f553000  addli r11, zero, 29
000c14  1500b014  dma_cfg zero, zero, r11, 10
000c18  9f653000  addli r11, zero, 30
000c1c  1500b014  dma_cfg zero, zero, r11, 10
000c20  9f753000  addli r11, zero, 31
000c24  1500b014  dma_cfg zero, zero, r11, 10
000c28  150b0b00  dma_cfg r22, r22, zero, 0
000c2c  150b0002  dma_cfg r22, zero, zero, 1
000c30  15000004  dma_cfg zero, zero, zero, 2
000c34  15068007  dma_cfg r12, zero, r24, 3
000c38  1501a008  dma_cfg r2, zero, r10, 4
000c3c  1507800b  dma_cfg r14, zero, r24, 5
000c40  15000010  dma_cfg zero, zero, zero, 8
000c44  35000000  dma_run zero
000c48  1500600b  dma_cfg zero, zero, r22, 5
000c4c  15000010  dma_cfg zero, zero, zero, 8
000c50  1d900a00  unlock r21
000c54  7d000900  xsignal r18, 0
000c58  5b6effff  j -1168
000c5c  9f611000  addli r3, zero, 14
000c60  1f462000  addli r12, zero, 20
000c64  e340afff  loadli.w r1,  -44(r30)
000c68  ab07803f  lui r15, 260096
000c6c  9f152000  addli r11, zero, 17
000c70  9f562000  addli r13, zero, 21
000c74  7d900100  xwait r3, 0
000c78  7d100600  xwait r12, 0
000c7c  1d000a00  lock zero, r20
000c80  9f012000  addli r3, zero, 16
000c84  0d000002  ew_cfg zero, zero, zero, 1
000c88  8b901810  add.s r1, r17, r1
000c8c  0d10f000  ewcoeff_cfg zero, zero, r15, 0
000c90  6b520ffe  load.d r[5:6], -32(r30)
000c94  0d800204  ew_cfg zero, r5, zero, 2
000c98  0d050006  ew_cfg r10, zero, zero, 3
000c9c  0d05a526  ew_cfg r10, r10, r10, 19
000ca0  ad10e700  dsmul r1, r14, r14, 0
000ca4  0d000026  ew_cfg zero, zero, zero, 19
000ca8  1d100a00  unlock r20
000cac  7d900100  xwait r3, 0
000cb0  1d000a00  lock zero, r20
000cb4  0d000002  ew_cfg zero, zero, zero, 1
000cb8  0d10f000  ewcoeff_cfg zero, zero, r15, 0
000cbc  0d800204  ew_cfg zero, r5, zero, 2
000cc0  0d050006  ew_cfg r10, zero, zero, 3
000cc4  0d05a526  ew_cfg r10, r10, r10, 19
000cc8  ad90e000  dsmul r1, r1, r14, 0
000ccc  0d000026  ew_cfg zero, zero, zero, 19
000cd0  1d100a00  unlock r20
000cd4  e301afff  loadli.w r3,  -48(r30)
000cd8  7d900500  xwait r11, 0
000cdc  7d900600  xwait r13, 0
000ce0  1d000a00  lock zero, r20
000ce4  0d000002  ew_cfg zero, zero, zero, 1
000ce8  e3459fff  loadli.w r11,  -52(r30)
000cec  8b913810  add.s r3, r17, r3
000cf0  8d970500  ewcoeff_cfg r15, r11, zero, 0
000cf4  0d800204  ew_cfg zero, r5, zero, 2
000cf8  0d050006  ew_cfg r10, zero, zero, 3
000cfc  0d05a526  ew_cfg r10, r10, r10, 19
000d00  ad011700  dsmadd r3, r14, r1, 0
000d04  0d000026  ew_cfg zero, zero, zero, 19
000d08  1d100a00  unlock r20
000d0c  7d000600  xsignal r12, 0
000d10  1d000a00  lock zero, r20
000d14  0d000002  ew_cfg zero, zero, zero, 1
000d18  e3009fff  loadli.w r1,  -56(r30)
000d1c  8d100000  ewcoeff_cfg r1, zero, zero, 0
000d20  0d040014  ew_cfg r8, zero, zero, 10
000d24  e3408fff  loadli.w r1,  -60(r30)
000d28  0d0a1b16  ew_cfg r20, r22, r1, 11
000d2c  abc07f41  lui r1, 268284
000d30  0d00001a  ew_cfg zero, zero, zero, 13
000d34  0d00151c  ew_cfg zero, r10, r1, 14
000d38  9f202000  addli r1, zero, 18
000d3c  0d00001e  ew_cfg zero, zero, zero, 15
000d40  0d800204  ew_cfg zero, r5, zero, 2
000d44  0d050006  ew_cfg r10, zero, zero, 3
000d48  0d050526  ew_cfg r10, r10, zero, 19
000d4c  ad813100  dsmadd r3, r3, r3, 0
000d50  0d000026  ew_cfg zero, zero, zero, 19
000d54  0d000014  ew_cfg zero, zero, zero, 10
000d58  1d100a00  unlock r20
000d5c  1d000a00  lock zero, r20
000d60  0d000002  ew_cfg zero, zero, zero, 1
000d64  8d17f000  ewcoeff_cfg r15, zero, r15, 0
000d68  0d800204  ew_cfg zero, r5, zero, 2
000d6c  0d050006  ew_cfg r10, zero, zero, 3
000d70  0d050526  ew_cfg r10, r10, zero, 19
000d74  ad813100  dsmadd r3, r3, r3, 0
000d78  0d000026  ew_cfg zero, zero, zero, 19
000d7c  1d100a00  unlock r20
000d80  7d900000  xwait r1, 0
000d84  1d000a00  lock zero, r20
000d88  ab00003f  lui r1, 258048
000d8c  0d000002  ew_cfg zero, zero, zero, 1
000d90  0d101000  ewcoeff_cfg zero, zero, r1, 0
000d94  9f701000  addli r1, zero, 15
000d98  0d800204  ew_cfg zero, r5, zero, 2
000d9c  0d050006  ew_cfg r10, zero, zero, 3
000da0  0d05a526  ew_cfg r10, r10, r10, 19
000da4  2d173700  dsmul r14, r14, r3, 0
000da8  0d000026  ew_cfg zero, zero, zero, 19
000dac  1d100a00  unlock r20
000db0  7d800000  xsignal r1, 0
000db4  7d800600  xsignal r13, 0
000db8  dbd0feff  j -2428
000dbc  3b8a04fa  bneq r9, zero, -2432
000dc0  9bb07000  slli r1, r1, 7
000dc4  9f212000  addli r3, zero, 18
000dc8  80340002  core_id r9
000dcc  33990028  sext_int2long r[19:20], r1
000dd0  9f701000  addli r1, zero, 15
000dd4  97313202  sll.d r[4:5], r[5:6], r3
000dd8  9ff23500  addli r5, r11, 31
000ddc  7d900000  xwait r1, 0
000de0  eb560fff  load.d r[14:15], -16(r30)
000de4  1d800a00  lock zero, r21
000de8  ab000600  lui r1, 96
000dec  150b0b00  dma_cfg r22, r22, zero, 0
000df0  9b900064  ori r1, r1, 1600
000df4  8b3cd940  min.sl r[26:27], r[19:20], r[14:15]
000df8  eb568f01  load.d r[14:15], 24(r30)
000dfc  8b901810  add.s r1, r17, r1
000e00  a78c0c01  addli.d r[26:27], r[26:27], 128
000e04  8ba13610  add.ul r[4:5], r[14:15], r[4:5]
000e08  eb568fff  load.d r[14:15], -8(r30)
000e0c  15000b02  dma_cfg zero, r22, zero, 1
000e10  8bbc2c49  max.sl r[26:27], r[26:27], r[19:20]
000e14  8ba1d110  add.ul r[4:5], r[4:5], r[14:15]
000e18  0bb92c19  sub.sl r[19:20], r[26:27], r[19:20]
000e1c  15020004  dma_cfg r4, zero, zero, 2
000e20  0b37f940  min.sl r[15:16], r[19:20], r[16:17]
000e24  95818007  dma_cfg r3, r1, r24, 3
000e28  9bc05200  srli r1, r5, 5
000e2c  9bb11500  slli r3, r11, 1
000e30  1f020010  addli r4, zero, 2048
000e34  150c1108  dma_cfg r24, r2, r1, 4
000e38  9b80e103  andi r1, r3, 62
000e3c  9f010004  addli r3, zero, 512
000e40  1582e10a  dma_cfg r4, r3, r14, 5
000e44  15001010  dma_cfg zero, zero, r1, 8
000e48  35000000  dma_run zero
000e4c  1500600b  dma_cfg zero, zero, r22, 5
000e50  9f302000  addli r1, zero, 19
000e54  15000010  dma_cfg zero, zero, zero, 8
000e58  1d900a00  unlock r21
000e5c  7d800000  xsignal r1, 0
000e60  dbbbfeff  j -2596
000e64  9f070000  addli r15, zero, 0
000e68  1f160000  addli r12, zero, 1
000e6c  1f170000  addli r14, zero, 1
000e70  9f361000  addli r13, zero, 11
000e74  7d100500  xwait r10, 0
000e78  7d900d00  xwait r27, 0
000e7c  7d900600  xwait r13, 0
000e80  1bb8e700  slli r16, r15, 14
000e84  9bb78700  slli r15, r15, 8
000e88  1d000600  lock zero, r12
000e8c  090c2c00  mm_cfg r24, r24, r2, 0
000e90  1718b800  or r16, r16, r11
000e94  97971701  or r15, r15, r17
000e98  0905c504  mm_cfg r10, r10, r12, 2
000e9c  a9870511  mm r15, r11, r16, 8
000ea0  1b081700  andi r16, r14, 1
000ea4  9f170000  addli r15, zero, 1
000ea8  1f070000  addli r14, zero, 0
000eac  1d100600  unlock r12
000eb0  3b4f08fe  bneq r16, zero, -48
000eb4  9f151000  addli r11, zero, 9
000eb8  7d800a00  xsignal r21, 0
000ebc  7d800500  xsignal r11, 0
000ec0  9f251000  addli r11, zero, 10
000ec4  7d800500  xsignal r11, 0
000ec8  5b20ffff  j -1792
000ecc  9f660000  addli r13, zero, 6
000ed0  7d900600  xwait r13, 0
000ed4  9f161000  addli r13, zero, 9
000ed8  7d900600  xwait r13, 0
000edc  1d000000  lock zero, zero
000ee0  010a0000  ds_cfg r20, zero, 0
000ee4  01010002  ds_cfg r2, zero, 1
000ee8  010c001c  ds_cfg r24, zero, 14
000eec  0101001a  ds_cfg r2, zero, 13
000ef0  c1058605  shuffle_coa r11, r12, r24, 2
000ef4  1d100000  unlock zero
000ef8  7d000d00  xsignal r26, 0
000efc  7d800d00  xsignal r27, 0
000f00  5b19ffff  j -1848
000f04  7d000000  xsignal zero, 0
000f08  bbe00400  bneq r9, zero, 56
000f0c  9f200000  addli r1, zero, 2
000f10  7d100000  xwait zero, 0
000f14  7d100000  xwait zero, 0
000f18  7d100000  xwait zero, 0
000f1c  7d100000  xwait zero, 0
000f20  7d100000  xwait zero, 0
000f24  7d100000  xwait zero, 0
000f28  7d100000  xwait zero, 0
000f2c  7d100000  xwait zero, 0
000f30  1d800000  lock zero, r1
000f34  0d000020  ew_cfg zero, zero, zero, 16
000f38  1d900000  unlock r1
000f3c  7d400000  xsignal_mode_cfg zero
000f40  9f8e8e00  addli sp, sp, 64
000f44  00a00300  mfence { lm, sm, gm }
000f48  00100000  exit
000f4c  00100000  exit
000f50  00100000  exit
000f54  00100000  exit
000f58  00100000  exit
000f5c  00100000  exit
000f60  00100000  exit
000f64  00100000  exit
000f68  00100000  exit
000f6c  00100000  exit
000f70  00100000  exit
000f74  00100000  exit
000f78  00100000  exit
000f7c  00100000  exit
000f80  00100000  exit
000f84  00100000  exit
000f88  00100000  exit
000f8c  00100000  exit
000f90  00100000  exit
000f94  00100000  exit
000f98  00100000  exit
000f9c  00100000  exit
000fa0  00100000  exit
000fa4  00100000  exit
000fa8  00100000  exit
000fac  00100000  exit
000fb0  00100000  exit
000fb4  00100000  exit
000fb8  00100000  exit
000fbc  00100000  exit
000fc0  00100000  exit
000fc4  00100000  exit
000fc8  00100000  exit
000fcc  00100000  exit
000fd0  00100000  exit
000fd4  00100000  exit
000fd8  00100000  exit
000fdc  00100000  exit
000fe0  00100000  exit
000fe4  00100000  exit
000fe8  00100000  exit
000fec  00100000  exit
000ff0  00100000  exit
000ff4  00100000  exit
000ff8  00100000  exit
000ffc  00100000  exit
001000  00100000  exit
001004  00100000  exit
001008  00100000  exit
00100c  00100000  exit
001010  00100000  exit
001014  00100000  exit
001018  00100000  exit
00101c  00100000  exit
001020  00100000  exit
001024  00100000  exit
001028  00100000  exit
00102c  00100000  exit
001030  00100000  exit
001034  00100000  exit
001038  00100000  exit
00103c  00100000  exit
001040  00100000  exit
001044  00100000  exit
001048  00100000  exit
00104c  00100000  exit
001050  00100000  exit
001054  00100000  exit
001058  00100000  exit
00105c  00100000  exit
001060  00100000  exit
001064  00100000  exit
001068  00100000  exit
00106c  00100000  exit
001070  00100000  exit
001074  00100000  exit
001078  00100000  exit
00107c  00100000  exit
001080  00100000  exit
001084  00100000  exit
001088  00100000  exit
00108c  00100000  exit
001090  00100000  exit
001094  00100000  exit
001098  00100000  exit
00109c  00100000  exit
0010a0  00100000  exit
0010a4  00100000  exit
0010a8  00100000  exit
0010ac  00100000  exit
0010b0  00100000  exit
0010b4  00100000  exit
0010b8  00100000  exit
0010bc  00100000  exit
0010c0  00100000  exit
0010c4  00100000  exit
0010c8  00100000  exit
0010cc  00100000  exit
0010d0  00100000  exit
0010d4  00100000  exit
0010d8  00100000  exit
0010dc  00100000  exit
0010e0  00100000  exit
0010e4  00100000  exit
0010e8  00100000  exit
0010ec  00100000  exit
0010f0  00100000  exit
0010f4  00100000  exit
0010f8  00100000  exit
0010fc  00100000  exit
001100  00100000  exit
001104  00100000  exit
001108  00100000  exit
00110c  00100000  exit
001110  00100000  exit
001114  00100000  exit
001118  00100000  exit
00111c  00100000  exit
001120  00100000  exit
001124  00100000  exit
001128  00100000  exit
00112c  00100000  exit
001130  00100000  exit
001134  00100000  exit
001138  00100000  exit
00113c  00100000  exit
001140  00100000  exit
001144  00100000  exit
001148  00100000  exit
00114c  00100000  exit
001150  00100000  exit
001154  00100000  exit
001158  00100000  exit
00115c  00100000  exit
001160  00100000  exit
001164  00100000  exit
001168  00100000  exit
00116c  00100000  exit
001170  00100000  exit
001174  00100000  exit
001178  00100000  exit
00117c  00100000  exit
001180  00100000  exit
001184  00100000  exit
001188  00100000  exit
