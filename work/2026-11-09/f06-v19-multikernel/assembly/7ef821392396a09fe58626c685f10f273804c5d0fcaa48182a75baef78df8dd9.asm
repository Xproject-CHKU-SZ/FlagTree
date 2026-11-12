; SHA-256 7ef821392396a09fe58626c685f10f273804c5d0fcaa48182a75baef78df8dd9
; P800 SDNN · XTDK LLVM 19 · 712 / 712 words decoded
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
0000bc  00310002  core_id r2
0000c0  80340002  core_id r9
0000c4  1f8f8e00  addli r30, sp, 64
0000c8  7dc00000  xsignal_mode_cfg r1
0000cc  b7100100  beq r2, zero, 36
0000d0  2bf1ffff  lui r2, 1048575
0000d4  7d900000  xwait r1, 0
0000d8  7d900000  xwait r1, 0
0000dc  7d100000  xwait zero, 0
0000e0  9b10f1ff  ori r1, r2, 4095
0000e4  80a10004  csr_set csr3, r1
0000e8  00d00100  sync_group
0000ec  db2f0000  j 380
0000f0  1f220000  addli r4, zero, 2
0000f4  fdd00000  uni_sram_cfg r1, r1
0000f8  9f420000  addli r5, zero, 4
0000fc  6b510f02  load.d r[3:4], 32(r30)
000100  1f030020  addli r6, zero, 4096
000104  1d000200  lock zero, r4
000108  8d000020  ew_cfg r1, zero, zero, 16
00010c  1d100200  unlock r4
000110  1d800200  lock zero, r5
000114  15000000  dma_cfg zero, zero, zero, 0
000118  15800104  dma_cfg zero, r3, zero, 2
00011c  15006106  dma_cfg zero, r2, r6, 3
000120  1f014000  addli r2, zero, 32
000124  9f010008  addli r3, zero, 1024
000128  15001008  dma_cfg zero, zero, r1, 4
00012c  35000000  dma_run zero
000130  1d900200  unlock r5
000134  7d800000  xsignal r1, 0
000138  7d900000  xwait r1, 0
00013c  1d000000  lock zero, zero
000140  01020000  ds_cfg r4, zero, 0
000144  01000002  ds_cfg zero, zero, 1
000148  01000016  ds_cfg zero, zero, 11
00014c  0101001a  ds_cfg r2, zero, 13
000150  1f510000  addli r2, zero, 5
000154  8101001c  ds_cfg r3, zero, 14
000158  21133008  shuffle_batch r6, zero, r3, 4
00015c  1d100000  unlock zero
000160  7d800000  xsignal r1, 0
000164  7d900000  xwait r1, 0
000168  1d000200  lock zero, r4
00016c  ab100100  lui r1, 17
000170  0d200300  ewtable_cfg r6, 0
000174  0da00002  ewtable_cfg r1, 1
000178  abf0ffff  lui r1, 1048575
00017c  1d100200  unlock r4
000180  7d000000  xsignal zero, 0
000184  7d100000  xwait zero, 0
000188  9b90f0ff  ori r1, r1, 4095
00018c  80a10004  csr_set csr3, r1
000190  9f301000  addli r1, zero, 11
000194  00d00100  sync_group
000198  7d800000  xsignal r1, 0
00019c  7d800000  xsignal r1, 0
0001a0  7d800000  xsignal r1, 0
0001a4  7d800000  xsignal r1, 0
0001a8  7d800000  xsignal r1, 0
0001ac  9f300000  addli r1, zero, 3
0001b0  7d000100  xsignal r2, 0
0001b4  7d000100  xsignal r2, 0
0001b8  7d000100  xsignal r2, 0
0001bc  7d000100  xsignal r2, 0
0001c0  7d000100  xsignal r2, 0
0001c4  1f111000  addli r2, zero, 9
0001c8  7d800000  xsignal r1, 0
0001cc  7d800000  xsignal r1, 0
0001d0  7d800000  xsignal r1, 0
0001d4  7d800000  xsignal r1, 0
0001d8  7d800000  xsignal r1, 0
0001dc  9f700000  addli r1, zero, 7
0001e0  7d000100  xsignal r2, 0
0001e4  7d000100  xsignal r2, 0
0001e8  7d000100  xsignal r2, 0
0001ec  7d000100  xsignal r2, 0
0001f0  7d000100  xsignal r2, 0
0001f4  1f511000  addli r2, zero, 13
0001f8  7d800000  xsignal r1, 0
0001fc  7d800000  xsignal r1, 0
000200  7d800000  xsignal r1, 0
000204  7d800000  xsignal r1, 0
000208  7d800000  xsignal r1, 0
00020c  9f302000  addli r1, zero, 19
000210  7d000100  xsignal r2, 0
000214  7d000100  xsignal r2, 0
000218  7d000100  xsignal r2, 0
00021c  7d000100  xsignal r2, 0
000220  7d000100  xsignal r2, 0
000224  1f412000  addli r2, zero, 20
000228  7d800000  xsignal r1, 0
00022c  7d800000  xsignal r1, 0
000230  7d800000  xsignal r1, 0
000234  7d800000  xsignal r1, 0
000238  7d800000  xsignal r1, 0
00023c  9f502000  addli r1, zero, 21
000240  7d000100  xsignal r2, 0
000244  7d000100  xsignal r2, 0
000248  7d000100  xsignal r2, 0
00024c  7d000100  xsignal r2, 0
000250  7d000100  xsignal r2, 0
000254  7d800000  xsignal r1, 0
000258  7d800000  xsignal r1, 0
00025c  7d800000  xsignal r1, 0
000260  7d800000  xsignal r1, 0
000264  7d800000  xsignal r1, 0
000268  e3005f00  loadli.w r1,  40(r30)
00026c  63415f00  loadli.w r2,  44(r30)
000270  00d20002  load_param_i r4, 1
000274  e3016f00  loadli.w r3,  48(r30)
000278  abf2ffff  lui r5, 1048575
00027c  e70e0ffe  storeli.w zero, -24(r30)
000280  9b92f2ff  ori r5, r5, 4095
000284  8b101120  mul.s r1, r2, r1
000288  1f010200  addli r2, r4, 0
00028c  e74e5ffe  storeli.w r5, -20(r30)
000290  670f5ffe  storeli.w r5, -16(r30)
000294  674f5ffe  storeli.w r5, -12(r30)
000298  e70f5ffe  storeli.w r5, -8(r30)
00029c  e74f5ffe  storeli.w r5, -4(r30)
0002a0  0b913050  fmac.s r2, r1, r3
0002a4  8b913020  mul.s r3, r1, r3
0002a8  1f71f1ff  addli r2, r2, -1
0002ac  0b114130  div.s r2, r2, r4
0002b0  00520002  load_param_i r4, 0
0002b4  8b104120  mul.s r1, r2, r4
0002b8  0b114150  fmac.s r2, r2, r4
0002bc  8b113140  min.s r3, r2, r3
0002c0  4be71102  ble.s r3, r1, 1496
0002c4  33910128  sext_int2long r[3:4], r3
0002c8  b3930028  sext_int2long r[8:9], r1
0002cc  6303dfff  loadli.w r6,  -24(r30)
0002d0  1f5c0000  addli r24, zero, 5
0002d4  9f070001  addli r15, zero, 128
0002d8  9f4b0000  addli r23, zero, 4
0002dc  9f2c0000  addli r25, zero, 2
0002e0  2b0e0100  lui r28, 16
0002e4  73302ffe  store.d r[3:4], -32(r30)
0002e8  1f71f01f  addli r2, zero, 4095
0002ec  9f010000  addli r3, zero, 0
0002f0  ab00feff  lui r1, 1048544
0002f4  733c1ffc  store.d r[2:3], -40(r30)
0002f8  ab800c00  lui r1, 200
0002fc  2b21373d  lui r2, 250738
000300  9b9000a0  ori r1, r1, 2560
000304  674d1ffe  storeli.w r1, -44(r30)
000308  ab801100  lui r1, 280
00030c  9b9000a0  ori r1, r1, 2560
000310  670d1ffe  storeli.w r1, -48(r30)
000314  9b103171  ori r1, r2, 1811
000318  2b810300  lui r2, 56
00031c  e74c1ffe  storeli.w r1, -52(r30)
000320  ab404c3f  lui r1, 259268
000324  9b90a022  ori r1, r1, 554
000328  e70c1ffe  storeli.w r1, -56(r30)
00032c  9b103184  ori r1, r2, 2115
000330  674c1ffe  storeli.w r1, -60(r30)
000334  5b0d0000  j 104
000338  1f160000  addli r12, zero, 1
00033c  eb560f01  load.d r[14:15], 16(r30)
000340  9f551000  addli r11, zero, 13
000344  1b321200  slli r4, r4, 1
000348  80340002  core_id r9
00034c  9730ca02  sll.d r[2:3], r[21:22], r12
000350  7d900500  xwait r11, 0
000354  1d800b00  lock zero, r23
000358  15000600  dma_cfg zero, r12, zero, 0
00035c  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
000360  15000104  dma_cfg zero, r2, zero, 2
000364  158b4006  dma_cfg r22, r1, r4, 3
000368  9f000002  addli r1, zero, 256
00036c  1f010004  addli r2, zero, 512
000370  1581c008  dma_cfg r2, r1, r12, 4
000374  9f401000  addli r1, zero, 12
000378  35000000  dma_run zero
00037c  1d900b00  unlock r23
000380  7d800000  xsignal r1, 0
000384  eb500ffe  load.d r[2:3], -32(r30)
000388  a7930300  addli.d r[8:9], r[8:9], 1
00038c  9f910100  addli r3, r3, 1
000390  1f130300  addli r6, r6, 1
000394  93b01304  setlt.sl r1, r[8:9], r[2:3]
000398  37840002  beq r1, zero, 1280
00039c  e3006f00  loadli.w r1,  48(r30)
0003a0  63415f00  loadli.w r2,  44(r30)
0003a4  9f022000  addli r5, zero, 16
0003a8  9f051000  addli r11, zero, 8
0003ac  0b988139  mod.s r16, r3, r24
0003b0  8b901330  div.s r1, r7, r1
0003b4  1b3be800  slli r22, r16, 14
0003b8  9b380801  slli r17, r16, 16
0003bc  8b902030  div.s r1, r1, r2
0003c0  0b91f030  div.s r2, r1, r15
0003c4  1b323100  slli r4, r2, 3
0003c8  1b317100  slli r2, r2, 7
0003cc  8b924218  sub.s r5, r5, r4
0003d0  0b912018  sub.s r2, r1, r2
0003d4  8b92b240  min.s r5, r5, r11
0003d8  8b905038  mod.s r1, r1, r5
0003dc  0b1d5130  div.s r26, r2, r5
0003e0  9f720000  addli r5, zero, 7
0003e4  8b9d4010  add.s r27, r1, r4
0003e8  ab000500  lui r1, 80
0003ec  0b121b10  add.s r4, r22, r1
0003f0  b3000d28  zext_int2long r[2:3], r26
0003f4  b3860d28  zext_int2long r[14:15], r27
0003f8  17ba5002  sll.d r[21:22], r[2:3], r5
0003fc  9f00000f  addli r1, zero, 1920
000400  9f620000  addli r5, zero, 6
000404  00310002  core_id r2
000408  b3850028  zext_int2long r[12:13], r1
00040c  bb005100  bneq r2, r5, 32
000410  9f701000  addli r1, zero, 15
000414  1f511000  addli r2, zero, 13
000418  9380b005  setlt.u r1, r1, r27
00041c  17b92602  sll.d r[19:20], r[14:15], r2
000420  3ba10000  bneq r1, zero, 72
000424  b3000028  zext_int2long r[2:3], zero
000428  5b090000  j 72
00042c  bb259101  bneq r2, r25, 360
000430  9f300000  addli r1, zero, 3
000434  7d900c00  xwait r25, 0
000438  7d100c00  xwait r24, 0
00043c  1d000000  lock zero, zero
000440  1f018000  addli r2, zero, 64
000444  81000000  ds_cfg r1, zero, 0
000448  01010002  ds_cfg r2, zero, 1
00044c  0101001c  ds_cfg r2, zero, 14
000450  8107001a  ds_cfg r15, zero, 13
000454  211b2202  shuffle_batch r22, r4, r2, 1
000458  1d100000  unlock zero
00045c  7d800000  xsignal r1, 0
000460  7d800b00  xsignal r23, 0
000464  db0b0000  j 92
000468  eb508ffd  load.d r[2:3], -40(r30)
00046c  97001902  and.d r[2:3], r[19:20], r[2:3]
000470  8b301918  sub.sl r[2:3], r[19:20], r[2:3]
000474  eb540f00  load.d r[10:11], 0(r30)
000478  97d05002  sra.d r[2:3], r[2:3], r5
00047c  9f621000  addli r5, zero, 14
000480  0bb9b040  min.sl r[19:20], r[2:3], r[12:13]
000484  8b301918  sub.sl r[2:3], r[19:20], r[2:3]
000488  17b95602  sll.d r[19:20], r[14:15], r5
00048c  9f320000  addli r5, zero, 3
000490  9f800001  addli r1, r1, 128
000494  1f110000  addli r2, zero, 1
000498  7d900200  xwait r5, 0
00049c  1d800b00  lock zero, r23
0004a0  0ba92411  add.ul r[19:20], r[10:11], r[19:20]
0004a4  15010100  dma_cfg r2, r2, zero, 0
0004a8  15800904  dma_cfg zero, r19, zero, 2
0004ac  1502f906  dma_cfg r4, r18, r15, 3
0004b0  95871708  dma_cfg r15, r15, r1, 4
0004b4  35000000  dma_run zero
0004b8  1d900b00  unlock r23
0004bc  7d800c00  xsignal r25, 0
0004c0  9f640000  addli r9, zero, 6
0004c4  9b307d00  slli r1, r26, 7
0004c8  33890728  zext_int2long r[19:20], r15
0004cc  1b389800  slli r16, r16, 9
0004d0  b3800028  zext_int2long r[2:3], r1
0004d4  0ba2b040  min.ul r[5:6], r[2:3], r[12:13]
0004d8  27020201  addli.d r[5:6], r[5:6], 128
0004dc  0b221248  max.ul r[5:6], r[5:6], r[2:3]
0004e0  8b301218  sub.sl r[2:3], r[5:6], r[2:3]
0004e4  0ba22041  min.ul r[5:6], r[2:3], r[19:20]
0004e8  ab800700  lui r1, 120
0004ec  00310002  core_id r2
0004f0  0b1b1810  add.s r22, r16, r1
0004f4  371991fe  beq r2, r9, -444
0004f8  9b9000a0  ori r1, r1, 2560
0004fc  80340002  core_id r9
000500  0b981810  add.s r16, r17, r1
000504  b7738101  beq r2, r24, 252
000508  9f300000  addli r1, zero, 3
00050c  bb191100  bneq r2, r1, 612
000510  9f201000  addli r1, zero, 10
000514  1f020000  addli r4, zero, 0
000518  7d900000  xwait r1, 0
00051c  9f401000  addli r1, zero, 12
000520  7d900000  xwait r1, 0
000524  9f302000  addli r1, zero, 19
000528  7d900000  xwait r1, 0
00052c  1d800c00  lock zero, r25
000530  ab00803f  lui r1, 260096
000534  0d000002  ew_cfg zero, zero, zero, 1
000538  8d900000  ewcoeff_cfg r1, r1, zero, 0
00053c  9f70f000  addli r1, zero, 127
000540  0d800004  ew_cfg zero, r1, zero, 2
000544  9f100000  addli r1, zero, 1
000548  8d000006  ew_cfg r1, zero, zero, 3
00054c  8b104810  add.s r1, r16, r4
000550  0b914810  add.s r2, r17, r4
000554  1f020204  addli r4, r4, 512
000558  ad006101  dsmadd r1, r2, r22, 0
00055c  bb4fc2ff  bneq r4, r28, -16
000560  9f301000  addli r1, zero, 11
000564  1d900c00  unlock r25
000568  7d800000  xsignal r1, 0
00056c  9f501000  addli r1, zero, 13
000570  7d800000  xsignal r1, 0
000574  9f002000  addli r1, zero, 16
000578  7d800000  xsignal r1, 0
00057c  9f102000  addli r1, zero, 17
000580  7d800000  xsignal r1, 0
000584  9f202000  addli r1, zero, 18
000588  7d800000  xsignal r1, 0
00058c  9f601000  addli r1, zero, 14
000590  5bbeffff  j -528
000594  ab400600  lui r1, 100
000598  9f048000  addli r9, zero, 64
00059c  0b121b10  add.s r4, r22, r1
0005a0  9f700000  addli r1, zero, 7
0005a4  b75a1100  beq r2, r1, 692
0005a8  37297101  beq r2, r23, 584
0005ac  1f058000  addli r10, zero, 64
0005b0  9f640000  addli r9, zero, 6
0005b4  9f100000  addli r1, zero, 1
0005b8  3b3c11fe  bneq r2, r1, -244
0005bc  1f1b0000  addli r22, zero, 1
0005c0  6b598f00  load.d r[19:20], 8(r30)
0005c4  9f720000  addli r5, zero, 7
0005c8  97306a03  sll.d r[2:3], r[21:22], r22
0005cc  7d900200  xwait r5, 0
0005d0  1d800b00  lock zero, r23
0005d4  9f020002  addli r5, zero, 256
0005d8  150b0b00  dma_cfg r22, r22, zero, 0
0005dc  8b201910  add.ul r[2:3], r[19:20], r[2:3]
0005e0  15000104  dma_cfg zero, r2, zero, 2
0005e4  15825006  dma_cfg r4, r1, r5, 3
0005e8  9f000020  addli r1, zero, 4096
0005ec  9582a008  dma_cfg r5, r1, r10, 4
0005f0  35000000  dma_run zero
0005f4  1d900b00  unlock r23
0005f8  7d800400  xsignal r9, 0
0005fc  5bd9ffff  j -312
000600  1f611000  addli r2, zero, 14
000604  1f462000  addli r12, zero, 20
000608  e340afff  loadli.w r1,  -44(r30)
00060c  ab06803f  lui r13, 260096
000610  1f152000  addli r10, zero, 17
000614  1f572000  addli r14, zero, 21
000618  7d100100  xwait r2, 0
00061c  7d100600  xwait r12, 0
000620  1d800c00  lock zero, r25
000624  1f012000  addli r2, zero, 16
000628  0d000002  ew_cfg zero, zero, zero, 1
00062c  8b901810  add.s r1, r17, r1
000630  0d10d000  ewcoeff_cfg zero, zero, r13, 0
000634  6b528ffd  load.d r[5:6], -40(r30)
000638  0d800204  ew_cfg zero, r5, zero, 2
00063c  8d0b0006  ew_cfg r23, zero, zero, 3
000640  8d8b7b27  ew_cfg r23, r23, r23, 19
000644  ad100801  dsmul r1, r16, r16, 0
000648  0d000026  ew_cfg zero, zero, zero, 19
00064c  1d900c00  unlock r25
000650  7d100100  xwait r2, 0
000654  1d800c00  lock zero, r25
000658  0b118339  mod.s r2, r6, r24
00065c  0d000002  ew_cfg zero, zero, zero, 1
000660  0d10d000  ewcoeff_cfg zero, zero, r13, 0
000664  0d800204  ew_cfg zero, r5, zero, 2
000668  8d0b0006  ew_cfg r23, zero, zero, 3
00066c  8d8b7b27  ew_cfg r23, r23, r23, 19
000670  ad900001  dsmul r1, r1, r16, 0
000674  1b310101  slli r2, r2, 16
000678  0d000026  ew_cfg zero, zero, zero, 19
00067c  1d900c00  unlock r25
000680  e305afff  loadli.w r11,  -48(r30)
000684  7d100500  xwait r10, 0
000688  7d100700  xwait r14, 0
00068c  1d800c00  lock zero, r25
000690  1f150000  addli r10, zero, 1
000694  0d000002  ew_cfg zero, zero, zero, 1
000698  0b11b110  add.s r2, r2, r11
00069c  e3459fff  loadli.w r11,  -52(r30)
0006a0  8d960500  ewcoeff_cfg r13, r11, zero, 0
0006a4  0d800204  ew_cfg zero, r5, zero, 2
0006a8  8d0b0006  ew_cfg r23, zero, zero, 3
0006ac  8d8b7b27  ew_cfg r23, r23, r23, 19
0006b0  2d011800  dsmadd r2, r16, r1, 0
0006b4  0d000026  ew_cfg zero, zero, zero, 19
0006b8  1d900c00  unlock r25
0006bc  7d000600  xsignal r12, 0
0006c0  1d800c00  lock zero, r25
0006c4  0d000002  ew_cfg zero, zero, zero, 1
0006c8  e3009fff  loadli.w r1,  -56(r30)
0006cc  8d100000  ewcoeff_cfg r1, zero, zero, 0
0006d0  9f300000  addli r1, zero, 3
0006d4  8d000014  ew_cfg r1, zero, zero, 10
0006d8  e3408fff  loadli.w r1,  -60(r30)
0006dc  8d0c1516  ew_cfg r25, r10, r1, 11
0006e0  abc07f41  lui r1, 268284
0006e4  0d00001a  ew_cfg zero, zero, zero, 13
0006e8  0d801b1c  ew_cfg zero, r23, r1, 14
0006ec  9f202000  addli r1, zero, 18
0006f0  0d00001e  ew_cfg zero, zero, zero, 15
0006f4  0d800204  ew_cfg zero, r5, zero, 2
0006f8  8d0b0006  ew_cfg r23, zero, zero, 3
0006fc  8d8b0b26  ew_cfg r23, r23, zero, 19
000700  2d012100  dsmadd r2, r2, r2, 0
000704  0d000026  ew_cfg zero, zero, zero, 19
000708  0d000014  ew_cfg zero, zero, zero, 10
00070c  1d900c00  unlock r25
000710  1d800c00  lock zero, r25
000714  0d000002  ew_cfg zero, zero, zero, 1
000718  8d16d000  ewcoeff_cfg r13, zero, r13, 0
00071c  0d800204  ew_cfg zero, r5, zero, 2
000720  8d0b0006  ew_cfg r23, zero, zero, 3
000724  8d8b0b26  ew_cfg r23, r23, zero, 19
000728  2d012100  dsmadd r2, r2, r2, 0
00072c  0d000026  ew_cfg zero, zero, zero, 19
000730  1d900c00  unlock r25
000734  7d900000  xwait r1, 0
000738  1d800c00  lock zero, r25
00073c  ab00003f  lui r1, 258048
000740  0d000002  ew_cfg zero, zero, zero, 1
000744  0d101000  ewcoeff_cfg zero, zero, r1, 0
000748  9f701000  addli r1, zero, 15
00074c  0d800204  ew_cfg zero, r5, zero, 2
000750  8d0b0006  ew_cfg r23, zero, zero, 3
000754  8d8b7b27  ew_cfg r23, r23, r23, 19
000758  2d182800  dsmul r16, r16, r2, 0
00075c  0d000026  ew_cfg zero, zero, zero, 19
000760  1d900c00  unlock r25
000764  7d800000  xsignal r1, 0
000768  7d000700  xsignal r14, 0
00076c  5b83ffff  j -1000
000770  3b5001fe  bneq r2, zero, -1004
000774  9bb07d00  slli r1, r27, 7
000778  1f352000  addli r10, zero, 19
00077c  9f781000  addli r17, zero, 15
000780  6b5d8f01  load.d r[27:28], 24(r30)
000784  1f1b0000  addli r22, zero, 1
000788  1b322200  slli r4, r4, 2
00078c  1f5c0000  addli r24, zero, 5
000790  9f020020  addli r5, zero, 4096
000794  b3900028  sext_int2long r[2:3], r1
000798  97b6a602  sll.d r[14:15], r[14:15], r10
00079c  7d900800  xwait r17, 0
0007a0  9f580000  addli r17, zero, 5
0007a4  173a6a03  sll.d r[21:22], r[21:22], r22
0007a8  8bb5b040  min.sl r[12:13], r[2:3], r[12:13]
0007ac  8b26dd10  add.ul r[14:15], r[27:28], r[14:15]
0007b0  1d800800  lock zero, r17
0007b4  150b0000  dma_cfg r22, zero, zero, 0
0007b8  a7850501  addli.d r[12:13], r[12:13], 128
0007bc  15000b02  dma_cfg zero, r22, zero, 1
0007c0  8bb51548  max.sl r[12:13], r[12:13], r[2:3]
0007c4  8bb01518  sub.sl r[2:3], r[12:13], r[2:3]
0007c8  8ba54611  add.ul r[12:13], r[14:15], r[21:22]
0007cc  15060004  dma_cfg r12, zero, zero, 2
0007d0  8bb02041  min.sl r[2:3], r[2:3], r[19:20]
0007d4  95054806  dma_cfg r11, r16, r4, 3
0007d8  1f020004  addli r4, zero, 512
0007dc  95021208  dma_cfg r5, r4, r1, 4
0007e0  35000000  dma_run zero
0007e4  1d900800  unlock r17
0007e8  7d000500  xsignal r10, 0
0007ec  5b73ffff  j -1128
0007f0  9f001000  addli r1, zero, 8
0007f4  7d900b00  xwait r23, 0
0007f8  1f090000  addli r18, zero, 0
0007fc  1f120000  addli r4, zero, 1
000800  9f120000  addli r5, zero, 1
000804  7d900000  xwait r1, 0
000808  9f301000  addli r1, zero, 11
00080c  7d900000  xwait r1, 0
000810  9b30d900  slli r1, r18, 13
000814  1b318900  slli r2, r18, 8
000818  1d000200  lock zero, r4
00081c  1f190000  addli r18, zero, 1
000820  8984f400  mm_cfg r9, r9, r15, 0
000824  97906001  or r1, r1, r22
000828  17111101  or r2, r2, r17
00082c  898c4b04  mm_cfg r25, r23, r4, 2
000830  29011b0a  mm r2, r22, r1, 5
000834  9b801200  andi r1, r5, 1
000838  9f020000  addli r5, zero, 0
00083c  1d100200  unlock r4
000840  3bcf00fe  bneq r1, zero, -48
000844  9f101000  addli r1, zero, 9
000848  7d000c00  xsignal r24, 0
00084c  7d800000  xsignal r1, 0
000850  9f201000  addli r1, zero, 10
000854  db070000  j 60
000858  9f101000  addli r1, zero, 9
00085c  7d900200  xwait r5, 0
000860  7d900000  xwait r1, 0
000864  9f300000  addli r1, zero, 3
000868  1d000000  lock zero, zero
00086c  81000000  ds_cfg r1, zero, 0
000870  9f700000  addli r1, zero, 7
000874  81070002  ds_cfg r15, zero, 1
000878  8104001c  ds_cfg r9, zero, 14
00087c  8107001a  ds_cfg r15, zero, 13
000880  410b9204  shuffle_coa r22, r4, r9, 2
000884  1d100000  unlock zero
000888  7d800000  xsignal r1, 0
00088c  9f001000  addli r1, zero, 8
000890  7d800000  xsignal r1, 0
000894  db85ffff  j -980
000898  7d000000  xsignal zero, 0
00089c  bbe00400  bneq r9, zero, 56
0008a0  9f200000  addli r1, zero, 2
0008a4  7d100000  xwait zero, 0
0008a8  7d100000  xwait zero, 0
0008ac  7d100000  xwait zero, 0
0008b0  7d100000  xwait zero, 0
0008b4  7d100000  xwait zero, 0
0008b8  7d100000  xwait zero, 0
0008bc  7d100000  xwait zero, 0
0008c0  7d100000  xwait zero, 0
0008c4  1d800000  lock zero, r1
0008c8  0d000020  ew_cfg zero, zero, zero, 16
0008cc  1d900000  unlock r1
0008d0  7d400000  xsignal_mode_cfg zero
0008d4  9f8e8e00  addli sp, sp, 64
0008d8  00a00300  mfence { lm, sm, gm }
0008dc  00100000  exit
0008e0  00100000  exit
0008e4  00100000  exit
0008e8  00100000  exit
0008ec  00100000  exit
0008f0  00100000  exit
0008f4  00100000  exit
0008f8  00100000  exit
0008fc  00100000  exit
000900  00100000  exit
000904  00100000  exit
000908  00100000  exit
00090c  00100000  exit
000910  00100000  exit
000914  00100000  exit
000918  00100000  exit
00091c  00100000  exit
000920  00100000  exit
000924  00100000  exit
000928  00100000  exit
00092c  00100000  exit
000930  00100000  exit
000934  00100000  exit
000938  00100000  exit
00093c  00100000  exit
000940  00100000  exit
000944  00100000  exit
000948  00100000  exit
00094c  00100000  exit
000950  00100000  exit
000954  00100000  exit
000958  00100000  exit
00095c  00100000  exit
000960  00100000  exit
000964  00100000  exit
000968  00100000  exit
00096c  00100000  exit
000970  00100000  exit
000974  00100000  exit
000978  00100000  exit
00097c  00100000  exit
000980  00100000  exit
000984  00100000  exit
000988  00100000  exit
00098c  00100000  exit
000990  00100000  exit
000994  00100000  exit
000998  00100000  exit
00099c  00100000  exit
0009a0  00100000  exit
0009a4  00100000  exit
0009a8  00100000  exit
0009ac  00100000  exit
0009b0  00100000  exit
0009b4  00100000  exit
0009b8  00100000  exit
0009bc  00100000  exit
0009c0  00100000  exit
0009c4  00100000  exit
0009c8  00100000  exit
0009cc  00100000  exit
0009d0  00100000  exit
0009d4  00100000  exit
0009d8  00100000  exit
0009dc  00100000  exit
0009e0  00100000  exit
0009e4  00100000  exit
0009e8  00100000  exit
0009ec  00100000  exit
0009f0  00100000  exit
0009f4  00100000  exit
0009f8  00100000  exit
0009fc  00100000  exit
000a00  00100000  exit
000a04  00100000  exit
000a08  00100000  exit
000a0c  00100000  exit
000a10  00100000  exit
000a14  00100000  exit
000a18  00100000  exit
000a1c  00100000  exit
000a20  00100000  exit
000a24  00100000  exit
000a28  00100000  exit
000a2c  00100000  exit
000a30  00100000  exit
000a34  00100000  exit
000a38  00100000  exit
000a3c  00100000  exit
000a40  00100000  exit
000a44  00100000  exit
000a48  00100000  exit
000a4c  00100000  exit
000a50  00100000  exit
000a54  00100000  exit
000a58  00100000  exit
000a5c  00100000  exit
000a60  00100000  exit
000a64  00100000  exit
000a68  00100000  exit
000a6c  00100000  exit
000a70  00100000  exit
000a74  00100000  exit
000a78  00100000  exit
000a7c  00100000  exit
000a80  00100000  exit
000a84  00100000  exit
000a88  00100000  exit
000a8c  00100000  exit
000a90  00100000  exit
000a94  00100000  exit
000a98  00100000  exit
000a9c  00100000  exit
000aa0  00100000  exit
000aa4  00100000  exit
000aa8  00100000  exit
000aac  00100000  exit
000ab0  00100000  exit
000ab4  00100000  exit
000ab8  00100000  exit
000abc  00100000  exit
000ac0  00100000  exit
000ac4  00100000  exit
000ac8  00100000  exit
000acc  00100000  exit
000ad0  00100000  exit
000ad4  00100000  exit
000ad8  00100000  exit
000adc  00100000  exit
000ae0  00100000  exit
000ae4  00100000  exit
000ae8  00100000  exit
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
