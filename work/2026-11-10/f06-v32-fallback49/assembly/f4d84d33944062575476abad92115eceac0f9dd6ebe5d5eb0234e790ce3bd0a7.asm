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
0000b4  9f8e1eff  addli sp, sp, -120
0000b8  9f100000  addli r1, zero, 1
0000bc  003c0002  core_id r24
0000c0  1f8f7e00  addli r30, sp, 56
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7100c00  beq r24, zero, 36
0000cc  2bf1ffff  lui r2, 1048575
0000d0  7d900000  xwait r1, 0
0000d4  7d900000  xwait r1, 0
0000d8  7d100000  xwait zero, 0
0000dc  9b10f1ff  ori r1, r2, 4095
0000e0  80a10004  csr_set csr3, r1
0000e4  00d00100  sync_group
0000e8  db260000  j 308
0000ec  1f220000  addli r4, zero, 2
0000f0  fdd00000  uni_sram_cfg r1, r1
0000f4  9f420000  addli r5, zero, 4
0000f8  6b510f02  load.d r[3:4], 32(r30)
0000fc  1f030020  addli r6, zero, 4096
000100  1d000200  lock zero, r4
000104  8d000020  ew_cfg r1, zero, zero, 16
000108  1d100200  unlock r4
00010c  1d800200  lock zero, r5
000110  15000000  dma_cfg zero, zero, zero, 0
000114  15800104  dma_cfg zero, r3, zero, 2
000118  15006106  dma_cfg zero, r2, r6, 3
00011c  1f014000  addli r2, zero, 32
000120  9f010008  addli r3, zero, 1024
000124  15001008  dma_cfg zero, zero, r1, 4
000128  35000000  dma_run zero
00012c  1d900200  unlock r5
000130  7d800000  xsignal r1, 0
000134  7d900000  xwait r1, 0
000138  1d000000  lock zero, zero
00013c  01020000  ds_cfg r4, zero, 0
000140  01000002  ds_cfg zero, zero, 1
000144  01000016  ds_cfg zero, zero, 11
000148  0101001a  ds_cfg r2, zero, 13
00014c  1f510000  addli r2, zero, 5
000150  8101001c  ds_cfg r3, zero, 14
000154  21133008  shuffle_batch r6, zero, r3, 4
000158  1d100000  unlock zero
00015c  7d800000  xsignal r1, 0
000160  7d900000  xwait r1, 0
000164  1d000200  lock zero, r4
000168  ab100100  lui r1, 17
00016c  0d200300  ewtable_cfg r6, 0
000170  0da00002  ewtable_cfg r1, 1
000174  abf0ffff  lui r1, 1048575
000178  1d100200  unlock r4
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
0001a4  7d000100  xsignal r2, 0
0001a8  7d000100  xsignal r2, 0
0001ac  7d000100  xsignal r2, 0
0001b0  1f111000  addli r2, zero, 9
0001b4  7d800000  xsignal r1, 0
0001b8  7d800000  xsignal r1, 0
0001bc  7d800000  xsignal r1, 0
0001c0  9f700000  addli r1, zero, 7
0001c4  7d000100  xsignal r2, 0
0001c8  7d000100  xsignal r2, 0
0001cc  7d000100  xsignal r2, 0
0001d0  1f511000  addli r2, zero, 13
0001d4  7d800000  xsignal r1, 0
0001d8  7d800000  xsignal r1, 0
0001dc  7d800000  xsignal r1, 0
0001e0  9f302000  addli r1, zero, 19
0001e4  7d000100  xsignal r2, 0
0001e8  7d000100  xsignal r2, 0
0001ec  7d000100  xsignal r2, 0
0001f0  1f412000  addli r2, zero, 20
0001f4  7d800000  xsignal r1, 0
0001f8  7d800000  xsignal r1, 0
0001fc  7d800000  xsignal r1, 0
000200  9f502000  addli r1, zero, 21
000204  7d000100  xsignal r2, 0
000208  7d000100  xsignal r2, 0
00020c  7d000100  xsignal r2, 0
000210  7d800000  xsignal r1, 0
000214  7d800000  xsignal r1, 0
000218  7d800000  xsignal r1, 0
00021c  e3005f00  loadli.w r1,  40(r30)
000220  63415f00  loadli.w r2,  44(r30)
000224  00d20002  load_param_i r4, 1
000228  e3016f00  loadli.w r3,  48(r30)
00022c  8b101120  mul.s r1, r2, r1
000230  1f010200  addli r2, r4, 0
000234  0b913050  fmac.s r2, r1, r3
000238  8b913020  mul.s r3, r1, r3
00023c  1f71f1ff  addli r2, r2, -1
000240  0b114130  div.s r2, r2, r4
000244  00520002  load_param_i r4, 0
000248  8b104120  mul.s r1, r2, r4
00024c  0b114150  fmac.s r2, r2, r4
000250  8b113140  min.s r3, r2, r3
000254  cb861102  ble.s r3, r1, 1440
000258  33910128  sext_int2long r[3:4], r3
00025c  33930028  sext_int2long r[7:8], r1
000260  1f340000  addli r8, zero, 3
000264  1f070001  addli r14, zero, 128
000268  9f640000  addli r9, zero, 6
00026c  9f4a0000  addli r21, zero, 4
000270  1f1b0000  addli r22, zero, 1
000274  9f2b0000  addli r23, zero, 2
000278  ab0c0100  lui r25, 16
00027c  9f0d8000  addli r27, zero, 64
000280  1f080000  addli r16, zero, 0
000284  733c2ffe  store.d r[3:4], -8(r30)
000288  1f71f01f  addli r2, zero, 4095
00028c  ab00feff  lui r1, 1048544
000290  73381ffe  store.d r[2:3], -16(r30)
000294  ab800700  lui r1, 120
000298  2b21373d  lui r2, 250738
00029c  9b900060  ori r1, r1, 1536
0002a0  e74e1ffe  storeli.w r1, -20(r30)
0002a4  ab800a00  lui r1, 168
0002a8  9b900060  ori r1, r1, 1536
0002ac  e70e1ffe  storeli.w r1, -24(r30)
0002b0  9b103171  ori r1, r2, 1811
0002b4  2b810300  lui r2, 56
0002b8  674e1ffe  storeli.w r1, -28(r30)
0002bc  ab404c3f  lui r1, 259268
0002c0  9b90a022  ori r1, r1, 554
0002c4  670e1ffe  storeli.w r1, -32(r30)
0002c8  9b103184  ori r1, r2, 2115
0002cc  e74d1ffe  storeli.w r1, -36(r30)
0002d0  5b0c0000  j 96
0002d4  1f551000  addli r10, zero, 13
0002d8  97b06903  sll.d r[2:3], r[20:21], r22
0002dc  9bb11100  slli r3, r3, 1
0002e0  1f340000  addli r8, zero, 3
0002e4  7d100500  xwait r10, 0
0002e8  6b550f01  load.d r[11:12], 16(r30)
0002ec  1d800a00  lock zero, r21
0002f0  15000b00  dma_cfg zero, r22, zero, 0
0002f4  8b201510  add.ul r[2:3], r[11:12], r[2:3]
0002f8  15000104  dma_cfg zero, r2, zero, 2
0002fc  95823006  dma_cfg r5, r1, r3, 3
000300  9f000002  addli r1, zero, 256
000304  1f010004  addli r2, zero, 512
000308  15816009  dma_cfg r2, r1, r22, 4
00030c  9f401000  addli r1, zero, 12
000310  35000000  dma_run zero
000314  1d900a00  unlock r21
000318  7d800000  xsignal r1, 0
00031c  eb508fff  load.d r[2:3], -8(r30)
000320  27130300  addli.d r[7:8], r[7:8], 1
000324  1f180800  addli r16, r16, 1
000328  93301304  setlt.sl r1, r[7:8], r[2:3]
00032c  37a30002  beq r1, zero, 1224
000330  e3006f00  loadli.w r1,  48(r30)
000334  63415f00  loadli.w r2,  44(r30)
000338  9f012000  addli r3, zero, 16
00033c  9f021000  addli r5, zero, 8
000340  8b178838  mod.s r15, r16, r8
000344  8b101330  div.s r1, r6, r1
000348  8b902030  div.s r1, r1, r2
00034c  0b91e030  div.s r2, r1, r14
000350  1b323100  slli r4, r2, 3
000354  1b317100  slli r2, r2, 7
000358  8b914118  sub.s r3, r3, r4
00035c  0b912018  sub.s r2, r1, r2
000360  8b915140  min.s r3, r3, r5
000364  8b923038  mod.s r5, r1, r3
000368  0b1d3130  div.s r26, r2, r3
00036c  9bb1e700  slli r3, r15, 14
000370  2b010300  lui r2, 48
000374  9bb00701  slli r1, r15, 16
000378  0b9e4210  add.s r28, r5, r4
00037c  0b922110  add.s r4, r3, r2
000380  33050d28  zext_int2long r[11:12], r26
000384  1f710000  addli r2, zero, 7
000388  97392502  sll.d r[20:21], r[11:12], r2
00038c  1f01000f  addli r2, zero, 1920
000390  33060e28  zext_int2long r[13:14], r28
000394  33050128  zext_int2long r[11:12], r2
000398  bb009c00  bneq r24, r9, 32
00039c  1f711000  addli r2, zero, 15
0003a0  9f511000  addli r3, zero, 13
0003a4  1301c105  setlt.u r2, r2, r28
0003a8  97383602  sll.d r[18:19], r[13:14], r3
0003ac  3b110100  bneq r2, zero, 68
0003b0  33010028  zext_int2long r[3:4], zero
0003b4  db080000  j 68
0003b8  3b557c01  bneq r24, r23, 340
0003bc  1f510000  addli r2, zero, 5
0003c0  7d900b00  xwait r23, 0
0003c4  7d100100  xwait r2, 0
0003c8  1d000000  lock zero, zero
0003cc  01040000  ds_cfg r8, zero, 0
0003d0  810d0002  ds_cfg r27, zero, 1
0003d4  810d001c  ds_cfg r27, zero, 14
0003d8  0107001a  ds_cfg r14, zero, 13
0003dc  a111b203  shuffle_batch r3, r4, r27, 1
0003e0  1d100000  unlock zero
0003e4  7d000400  xsignal r8, 0
0003e8  7d800a00  xsignal r21, 0
0003ec  5b0b0000  j 88
0003f0  6b510fff  load.d r[3:4], -16(r30)
0003f4  17812802  and.d r[3:4], r[18:19], r[3:4]
0003f8  0bb12818  sub.sl r[3:4], r[18:19], r[3:4]
0003fc  9f621000  addli r5, zero, 14
000400  7d100400  xwait r8, 0
000404  1d800a00  lock zero, r21
000408  150b0b00  dma_cfg r22, r22, zero, 0
00040c  17519102  sra.d r[3:4], r[3:4], r9
000410  6b540f00  load.d r[9:10], 0(r30)
000414  8b38a140  min.sl r[18:19], r[3:4], r[11:12]
000418  0bb12818  sub.sl r[3:4], r[18:19], r[3:4]
00041c  97385602  sll.d r[18:19], r[13:14], r5
000420  8b281411  add.ul r[18:19], r[9:10], r[18:19]
000424  1f010101  addli r2, r2, 128
000428  9f640000  addli r9, zero, 6
00042c  15000904  dma_cfg zero, r18, zero, 2
000430  1582e806  dma_cfg r4, r17, r14, 3
000434  15072708  dma_cfg r14, r14, r2, 4
000438  35000000  dma_run zero
00043c  1d900a00  unlock r21
000440  7d800b00  xsignal r23, 0
000444  1b317d00  slli r2, r26, 7
000448  b3080728  zext_int2long r[18:19], r14
00044c  33010128  zext_int2long r[3:4], r2
000450  0b22a140  min.ul r[5:6], r[3:4], r[11:12]
000454  27020201  addli.d r[5:6], r[5:6], 128
000458  0b222248  max.ul r[5:6], r[5:6], r[3:4]
00045c  0b312218  sub.sl r[3:4], r[5:6], r[3:4]
000460  9bb29700  slli r5, r15, 9
000464  8b211141  min.ul r[4:5], r[3:4], r[18:19]
000468  2b810400  lui r2, 72
00046c  8b922210  add.s r5, r5, r2
000470  b7199cfe  beq r24, r9, -412
000474  1b110160  ori r2, r2, 1536
000478  1f340000  addli r8, zero, 3
00047c  8b972010  add.s r15, r1, r2
000480  1f510000  addli r2, zero, 5
000484  b7032c00  beq r24, r2, 224
000488  bb788c00  bneq r24, r8, 572
00048c  1f211000  addli r2, zero, 10
000490  9f010000  addli r3, zero, 0
000494  7d100100  xwait r2, 0
000498  1f411000  addli r2, zero, 12
00049c  7d100100  xwait r2, 0
0004a0  1f312000  addli r2, zero, 19
0004a4  7d100100  xwait r2, 0
0004a8  1d800b00  lock zero, r23
0004ac  2b01803f  lui r2, 260096
0004b0  0d000002  ew_cfg zero, zero, zero, 1
0004b4  0d110100  ewcoeff_cfg r2, r2, zero, 0
0004b8  1f71f000  addli r2, zero, 127
0004bc  0d000104  ew_cfg zero, r2, zero, 2
0004c0  0d0b0006  ew_cfg r22, zero, zero, 3
0004c4  0b913710  add.s r2, r15, r3
0004c8  0b923010  add.s r4, r1, r3
0004cc  9f810104  addli r3, r3, 512
0004d0  2d015200  dsmadd r2, r4, r5, 0
0004d4  bbcf91ff  bneq r3, r25, -16
0004d8  9f301000  addli r1, zero, 11
0004dc  1d900b00  unlock r23
0004e0  7d800000  xsignal r1, 0
0004e4  9f501000  addli r1, zero, 13
0004e8  7d800000  xsignal r1, 0
0004ec  9f002000  addli r1, zero, 16
0004f0  7d800000  xsignal r1, 0
0004f4  9f102000  addli r1, zero, 17
0004f8  7d800000  xsignal r1, 0
0004fc  9f202000  addli r1, zero, 18
000500  7d800000  xsignal r1, 0
000504  9f601000  addli r1, zero, 14
000508  5bc2ffff  j -496
00050c  2bc10300  lui r2, 60
000510  0b922110  add.s r4, r3, r2
000514  1f710000  addli r2, zero, 7
000518  b70a2c00  beq r24, r2, 672
00051c  b7485c01  beq r24, r21, 560
000520  bb1c6cff  bneq r24, r22, -220
000524  eb588f00  load.d r[18:19], 8(r30)
000528  17b16903  sll.d r[3:4], r[20:21], r22
00052c  9f720000  addli r5, zero, 7
000530  7d900200  xwait r5, 0
000534  1d800a00  lock zero, r21
000538  9f020002  addli r5, zero, 256
00053c  0ba12810  add.ul r[3:4], r[18:19], r[3:4]
000540  150b0b00  dma_cfg r22, r22, zero, 0
000544  15800104  dma_cfg zero, r3, zero, 2
000548  15025106  dma_cfg r4, r2, r5, 3
00054c  1f010020  addli r2, zero, 4096
000550  9502b109  dma_cfg r5, r2, r27, 4
000554  35000000  dma_run zero
000558  1d900a00  unlock r21
00055c  7d800400  xsignal r9, 0
000560  dbdcffff  j -284
000564  9f611000  addli r3, zero, 14
000568  1f452000  addli r10, zero, 20
00056c  6341dfff  loadli.w r2,  -20(r30)
000570  ab05803f  lui r11, 260096
000574  1f562000  addli r12, zero, 21
000578  7d900100  xwait r3, 0
00057c  7d100500  xwait r10, 0
000580  1d800b00  lock zero, r23
000584  9f012000  addli r3, zero, 16
000588  0d000002  ew_cfg zero, zero, zero, 1
00058c  0b912010  add.s r2, r1, r2
000590  0d10b000  ewcoeff_cfg zero, zero, r11, 0
000594  6b520fff  load.d r[5:6], -16(r30)
000598  0d800204  ew_cfg zero, r5, zero, 2
00059c  8d0a0006  ew_cfg r21, zero, zero, 3
0005a0  8d8a5a27  ew_cfg r21, r21, r21, 19
0005a4  2d91f700  dsmul r2, r15, r15, 0
0005a8  0d000026  ew_cfg zero, zero, zero, 19
0005ac  1d900b00  unlock r23
0005b0  7d900100  xwait r3, 0
0005b4  1d800b00  lock zero, r23
0005b8  0d000002  ew_cfg zero, zero, zero, 1
0005bc  0d10b000  ewcoeff_cfg zero, zero, r11, 0
0005c0  0d800204  ew_cfg zero, r5, zero, 2
0005c4  8d0a0006  ew_cfg r21, zero, zero, 3
0005c8  8d8a5a27  ew_cfg r21, r21, r21, 19
0005cc  2d11f100  dsmul r2, r2, r15, 0
0005d0  0d000026  ew_cfg zero, zero, zero, 19
0005d4  1d900b00  unlock r23
0005d8  e301dfff  loadli.w r3,  -24(r30)
0005dc  8b903010  add.s r1, r1, r3
0005e0  9f112000  addli r3, zero, 17
0005e4  7d900100  xwait r3, 0
0005e8  7d100600  xwait r12, 0
0005ec  1d800b00  lock zero, r23
0005f0  0d000002  ew_cfg zero, zero, zero, 1
0005f4  e341cfff  loadli.w r3,  -28(r30)
0005f8  8d950100  ewcoeff_cfg r11, r3, zero, 0
0005fc  0d800204  ew_cfg zero, r5, zero, 2
000600  8d0a0006  ew_cfg r21, zero, zero, 3
000604  8d8a5a27  ew_cfg r21, r21, r21, 19
000608  ad802700  dsmadd r1, r15, r2, 0
00060c  0d000026  ew_cfg zero, zero, zero, 19
000610  1d900b00  unlock r23
000614  7d000500  xsignal r10, 0
000618  1d800b00  lock zero, r23
00061c  0d000002  ew_cfg zero, zero, zero, 1
000620  6301cfff  loadli.w r2,  -32(r30)
000624  0d110000  ewcoeff_cfg r2, zero, zero, 0
000628  0d040014  ew_cfg r8, zero, zero, 10
00062c  6341bfff  loadli.w r2,  -36(r30)
000630  8d0b2b16  ew_cfg r23, r22, r2, 11
000634  2bc17f41  lui r2, 268284
000638  0d00001a  ew_cfg zero, zero, zero, 13
00063c  0d802a1c  ew_cfg zero, r21, r2, 14
000640  1f212000  addli r2, zero, 18
000644  0d00001e  ew_cfg zero, zero, zero, 15
000648  0d800204  ew_cfg zero, r5, zero, 2
00064c  8d0a0006  ew_cfg r21, zero, zero, 3
000650  8d8a0a26  ew_cfg r21, r21, zero, 19
000654  ad801000  dsmadd r1, r1, r1, 0
000658  0d000026  ew_cfg zero, zero, zero, 19
00065c  0d000014  ew_cfg zero, zero, zero, 10
000660  1d900b00  unlock r23
000664  1d800b00  lock zero, r23
000668  0d000002  ew_cfg zero, zero, zero, 1
00066c  8d15b000  ewcoeff_cfg r11, zero, r11, 0
000670  0d800204  ew_cfg zero, r5, zero, 2
000674  8d0a0006  ew_cfg r21, zero, zero, 3
000678  8d8a0a26  ew_cfg r21, r21, zero, 19
00067c  ad801000  dsmadd r1, r1, r1, 0
000680  0d000026  ew_cfg zero, zero, zero, 19
000684  1d900b00  unlock r23
000688  7d100100  xwait r2, 0
00068c  1d800b00  lock zero, r23
000690  2b01003f  lui r2, 258048
000694  0d000002  ew_cfg zero, zero, zero, 1
000698  0d102000  ewcoeff_cfg zero, zero, r2, 0
00069c  0d800204  ew_cfg zero, r5, zero, 2
0006a0  8d0a0006  ew_cfg r21, zero, zero, 3
0006a4  8d8a5a27  ew_cfg r21, r21, r21, 19
0006a8  ad971700  dsmul r15, r15, r1, 0
0006ac  9f701000  addli r1, zero, 15
0006b0  0d000026  ew_cfg zero, zero, zero, 19
0006b4  1d900b00  unlock r23
0006b8  7d800000  xsignal r1, 0
0006bc  7d000600  xsignal r12, 0
0006c0  db8bffff  j -932
0006c4  3b610cfe  bneq r24, zero, -936
0006c8  1f3d2000  addli r26, zero, 19
0006cc  9b307e00  slli r1, r28, 7
0006d0  9f721000  addli r5, zero, 15
0006d4  9bb12100  slli r3, r3, 2
0006d8  1f020020  addli r4, zero, 4096
0006dc  1736a603  sll.d r[13:14], r[13:14], r26
0006e0  b3900028  sext_int2long r[2:3], r1
0006e4  7338cffc  store.d r[13:14], -48(r30)
0006e8  17b66903  sll.d r[13:14], r[20:21], r22
0006ec  0bb5a040  min.sl r[11:12], r[2:3], r[11:12]
0006f0  7334cffc  store.d r[13:14], -56(r30)
0006f4  7d900200  xwait r5, 0
0006f8  9f520000  addli r5, zero, 5
0006fc  27050501  addli.d r[11:12], r[11:12], 128
000700  6b568f01  load.d r[13:14], 24(r30)
000704  1d800200  lock zero, r5
000708  0b351548  max.sl r[11:12], r[11:12], r[2:3]
00070c  eb590ffd  load.d r[20:21], -48(r30)
000710  8b301518  sub.sl r[2:3], r[11:12], r[2:3]
000714  6b558ffc  load.d r[11:12], -56(r30)
000718  150b0000  dma_cfg r22, zero, zero, 0
00071c  15000b02  dma_cfg zero, r22, zero, 1
000720  0b263611  add.ul r[13:14], r[13:14], r[20:21]
000724  8bb01041  min.sl r[2:3], r[2:3], r[18:19]
000728  0b25a610  add.ul r[11:12], r[13:14], r[11:12]
00072c  95050004  dma_cfg r11, zero, zero, 2
000730  15853706  dma_cfg r10, r15, r3, 3
000734  9f010004  addli r3, zero, 512
000738  15821108  dma_cfg r4, r3, r1, 4
00073c  35000000  dma_run zero
000740  1d900200  unlock r5
000744  7d000d00  xsignal r26, 0
000748  db7affff  j -1068
00074c  1f011000  addli r2, zero, 8
000750  7d900a00  xwait r21, 0
000754  9f080000  addli r17, zero, 0
000758  1f120000  addli r4, zero, 1
00075c  9f120000  addli r5, zero, 1
000760  7d100100  xwait r2, 0
000764  1f311000  addli r2, zero, 11
000768  7d100100  xwait r2, 0
00076c  1bb1d800  slli r2, r17, 13
000770  9bb88800  slli r17, r17, 8
000774  1d000200  lock zero, r4
000778  898ded00  mm_cfg r27, r27, r14, 0
00077c  17113100  or r2, r2, r3
000780  97981800  or r17, r17, r1
000784  898b4a04  mm_cfg r23, r21, r4, 2
000788  a988210a  mm r17, r3, r2, 5
00078c  1b811200  andi r2, r5, 1
000790  9f180000  addli r17, zero, 1
000794  9f020000  addli r5, zero, 0
000798  1d100200  unlock r4
00079c  3b4f01fe  bneq r2, zero, -48
0007a0  1f510000  addli r2, zero, 5
0007a4  7d000100  xsignal r2, 0
0007a8  1f111000  addli r2, zero, 9
0007ac  7d000100  xsignal r2, 0
0007b0  1f211000  addli r2, zero, 10
0007b4  5b070000  j 56
0007b8  1f111000  addli r2, zero, 9
0007bc  7d900400  xwait r9, 0
0007c0  7d100100  xwait r2, 0
0007c4  1d000000  lock zero, zero
0007c8  1f710000  addli r2, zero, 7
0007cc  01040000  ds_cfg r8, zero, 0
0007d0  01070002  ds_cfg r14, zero, 1
0007d4  810d001c  ds_cfg r27, zero, 14
0007d8  0107001a  ds_cfg r14, zero, 13
0007dc  c101b205  shuffle_coa r3, r4, r27, 2
0007e0  1d100000  unlock zero
0007e4  7d000100  xsignal r2, 0
0007e8  1f011000  addli r2, zero, 8
0007ec  7d000100  xsignal r2, 0
0007f0  db8affff  j -940
0007f4  7d000000  xsignal zero, 0
0007f8  bb600c00  bneq r24, zero, 56
0007fc  9f200000  addli r1, zero, 2
000800  7d100000  xwait zero, 0
000804  7d100000  xwait zero, 0
000808  7d100000  xwait zero, 0
00080c  7d100000  xwait zero, 0
000810  7d100000  xwait zero, 0
000814  7d100000  xwait zero, 0
000818  7d100000  xwait zero, 0
00081c  7d100000  xwait zero, 0
000820  1d800000  lock zero, r1
000824  0d000020  ew_cfg zero, zero, zero, 16
000828  1d900000  unlock r1
00082c  7d400000  xsignal_mode_cfg zero
000830  9f8e7e00  addli sp, sp, 56
000834  00a00300  mfence { lm, sm, gm }
000838  00100000  exit
00083c  00100000  exit
000840  00100000  exit
000844  00100000  exit
000848  00100000  exit
00084c  00100000  exit
000850  00100000  exit
000854  00100000  exit
000858  00100000  exit
00085c  00100000  exit
000860  00100000  exit
000864  00100000  exit
000868  00100000  exit
00086c  00100000  exit
000870  00100000  exit
000874  00100000  exit
000878  00100000  exit
00087c  00100000  exit
000880  00100000  exit
000884  00100000  exit
000888  00100000  exit
00088c  00100000  exit
000890  00100000  exit
000894  00100000  exit
000898  00100000  exit
00089c  00100000  exit
0008a0  00100000  exit
0008a4  00100000  exit
0008a8  00100000  exit
0008ac  00100000  exit
0008b0  00100000  exit
0008b4  00100000  exit
0008b8  00100000  exit
0008bc  00100000  exit
0008c0  00100000  exit
0008c4  00100000  exit
0008c8  00100000  exit
0008cc  00100000  exit
0008d0  00100000  exit
0008d4  00100000  exit
0008d8  00100000  exit
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
