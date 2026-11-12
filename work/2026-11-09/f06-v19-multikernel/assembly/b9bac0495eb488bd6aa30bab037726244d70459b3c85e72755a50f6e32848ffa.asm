; SHA-256 b9bac0495eb488bd6aa30bab037726244d70459b3c85e72755a50f6e32848ffa
; P800 SDNN · XTDK LLVM 19 · 665 / 665 words decoded
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
0000b4  9f8e1eff  addli sp, sp, -120
0000b8  9f100000  addli r1, zero, 1
0000bc  00310002  core_id r2
0000c0  1f8f7e00  addli r30, sp, 56
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7100100  beq r2, zero, 36
0000cc  abf1ffff  lui r3, 1048575
0000d0  7d900000  xwait r1, 0
0000d4  7d900000  xwait r1, 0
0000d8  7d100000  xwait zero, 0
0000dc  9b90f1ff  ori r1, r3, 4095
0000e0  80a10004  csr_set csr3, r1
0000e4  00d00100  sync_group
0000e8  db2f0000  j 380
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
0001a0  7d800000  xsignal r1, 0
0001a4  7d800000  xsignal r1, 0
0001a8  9f300000  addli r1, zero, 3
0001ac  7d800100  xsignal r3, 0
0001b0  7d800100  xsignal r3, 0
0001b4  7d800100  xsignal r3, 0
0001b8  7d800100  xsignal r3, 0
0001bc  7d800100  xsignal r3, 0
0001c0  9f111000  addli r3, zero, 9
0001c4  7d800000  xsignal r1, 0
0001c8  7d800000  xsignal r1, 0
0001cc  7d800000  xsignal r1, 0
0001d0  7d800000  xsignal r1, 0
0001d4  7d800000  xsignal r1, 0
0001d8  9f700000  addli r1, zero, 7
0001dc  7d800100  xsignal r3, 0
0001e0  7d800100  xsignal r3, 0
0001e4  7d800100  xsignal r3, 0
0001e8  7d800100  xsignal r3, 0
0001ec  7d800100  xsignal r3, 0
0001f0  9f511000  addli r3, zero, 13
0001f4  7d800000  xsignal r1, 0
0001f8  7d800000  xsignal r1, 0
0001fc  7d800000  xsignal r1, 0
000200  7d800000  xsignal r1, 0
000204  7d800000  xsignal r1, 0
000208  9f302000  addli r1, zero, 19
00020c  7d800100  xsignal r3, 0
000210  7d800100  xsignal r3, 0
000214  7d800100  xsignal r3, 0
000218  7d800100  xsignal r3, 0
00021c  7d800100  xsignal r3, 0
000220  9f412000  addli r3, zero, 20
000224  7d800000  xsignal r1, 0
000228  7d800000  xsignal r1, 0
00022c  7d800000  xsignal r1, 0
000230  7d800000  xsignal r1, 0
000234  7d800000  xsignal r1, 0
000238  9f502000  addli r1, zero, 21
00023c  7d800100  xsignal r3, 0
000240  7d800100  xsignal r3, 0
000244  7d800100  xsignal r3, 0
000248  7d800100  xsignal r3, 0
00024c  7d800100  xsignal r3, 0
000250  7d800000  xsignal r1, 0
000254  7d800000  xsignal r1, 0
000258  7d800000  xsignal r1, 0
00025c  7d800000  xsignal r1, 0
000260  7d800000  xsignal r1, 0
000264  e3005f00  loadli.w r1,  40(r30)
000268  e3415f00  loadli.w r3,  44(r30)
00026c  80d20002  load_param_i r5, 1
000270  63026f00  loadli.w r4,  48(r30)
000274  2bf3ffff  lui r6, 1048575
000278  e70e0ffe  storeli.w zero, -24(r30)
00027c  1b13f3ff  ori r6, r6, 4095
000280  8b901120  mul.s r1, r3, r1
000284  9f810200  addli r3, r5, 0
000288  e74e6ffe  storeli.w r6, -20(r30)
00028c  670f6ffe  storeli.w r6, -16(r30)
000290  674f6ffe  storeli.w r6, -12(r30)
000294  e70f6ffe  storeli.w r6, -8(r30)
000298  e74f6ffe  storeli.w r6, -4(r30)
00029c  8b914050  fmac.s r3, r1, r4
0002a0  0b924020  mul.s r4, r1, r4
0002a4  9ff1f1ff  addli r3, r3, -1
0002a8  8b915130  div.s r3, r3, r5
0002ac  80520002  load_param_i r5, 0
0002b0  8b905120  mul.s r1, r3, r5
0002b4  8b915150  fmac.s r3, r3, r5
0002b8  8b914140  min.s r3, r3, r4
0002bc  cb841102  ble.s r3, r1, 1312
0002c0  b3930028  sext_int2long r[8:9], r1
0002c4  ab800200  lui r1, 40
0002c8  2b25373d  lui r10, 250738
0002cc  6303dfff  loadli.w r6,  -24(r30)
0002d0  b3910128  sext_int2long r[4:5], r3
0002d4  9f540000  addli r9, zero, 5
0002d8  9f150000  addli r11, zero, 1
0002dc  1f670000  addli r14, zero, 6
0002e0  9f3b0000  addli r23, zero, 3
0002e4  9f480000  addli r17, zero, 4
0002e8  9f020001  addli r5, zero, 128
0002ec  1f0e8000  addli r28, zero, 64
0002f0  1f2a0000  addli r20, zero, 2
0002f4  9f0c0040  addli r25, zero, 8192
0002f8  9f0d0000  addli r27, zero, 0
0002fc  9b900028  ori r1, r1, 640
000300  73303ffe  store.d r[4:5], -32(r30)
000304  e74d1ffe  storeli.w r1, -36(r30)
000308  ab200300  lui r1, 50
00030c  9b900028  ori r1, r1, 640
000310  e70d1ffe  storeli.w r1, -40(r30)
000314  9b103571  ori r1, r10, 1811
000318  2b850300  lui r10, 56
00031c  674d1ffe  storeli.w r1, -44(r30)
000320  ab404c3f  lui r1, 259268
000324  9b90a022  ori r1, r1, 554
000328  670d1ffe  storeli.w r1, -48(r30)
00032c  9b103584  ori r1, r10, 2115
000330  e74c1ffe  storeli.w r1, -52(r30)
000334  5b0b0000  j 88
000338  9731b602  sll.d r[4:5], r[13:14], r11
00033c  6b560f01  load.d r[13:14], 16(r30)
000340  9f501000  addli r1, zero, 13
000344  7d900000  xwait r1, 0
000348  1d800800  lock zero, r17
00034c  9bb01700  slli r1, r15, 1
000350  8b213610  add.ul r[4:5], r[13:14], r[4:5]
000354  15800500  dma_cfg zero, r11, zero, 0
000358  15000204  dma_cfg zero, r4, zero, 2
00035c  158d1106  dma_cfg r26, r3, r1, 3
000360  9f401000  addli r1, zero, 12
000364  9502be08  dma_cfg r5, r28, r11, 4
000368  35000000  dma_run zero
00036c  1d900800  unlock r17
000370  7d800000  xsignal r1, 0
000374  eb510ffe  load.d r[4:5], -32(r30)
000378  a7930300  addli.d r[8:9], r[8:9], 1
00037c  9f9d0d00  addli r27, r27, 1
000380  1f130300  addli r6, r6, 1
000384  93b03304  setlt.sl r1, r[8:9], r[4:5]
000388  37d10002  beq r1, zero, 1108
00038c  e3006f00  loadli.w r1,  48(r30)
000390  e3415f00  loadli.w r3,  44(r30)
000394  8b901330  div.s r1, r7, r1
000398  0b953030  div.s r10, r1, r3
00039c  9f000002  addli r1, zero, 256
0003a0  9f011000  addli r3, zero, 8
0003a4  0b161530  div.s r12, r10, r1
0003a8  8b909d38  mod.s r1, r27, r9
0003ac  9b363600  slli r13, r12, 3
0003b0  1b368600  slli r12, r12, 8
0003b4  1bbcd000  slli r24, r1, 13
0003b8  8b97d518  sub.s r15, r11, r13
0003bc  0b16c518  sub.s r12, r10, r12
0003c0  8b973740  min.s r15, r15, r3
0003c4  aba10000  lui r3, 10
0003c8  0b15f538  mod.s r10, r10, r15
0003cc  0b1df630  div.s r26, r12, r15
0003d0  8b173c10  add.s r15, r24, r3
0003d4  0b15d510  add.s r10, r10, r13
0003d8  33060d28  zext_int2long r[13:14], r26
0003dc  b30a0528  zext_int2long r[22:23], r10
0003e0  17369602  sll.d r[13:14], r[13:14], r9
0003e4  bb70e100  bneq r2, r14, 60
0003e8  9f511000  addli r3, zero, 13
0003ec  6b590f00  load.d r[19:20], 0(r30)
0003f0  7d900b00  xwait r23, 0
0003f4  1d800800  lock zero, r17
0003f8  95850500  dma_cfg r11, r11, zero, 0
0003fc  97b13a02  sll.d r[4:5], r[22:23], r3
000400  8b213910  add.ul r[4:5], r[19:20], r[4:5]
000404  15000204  dma_cfg zero, r4, zero, 2
000408  95875106  dma_cfg r15, r3, r5, 3
00040c  9582c209  dma_cfg r5, r5, r28, 4
000410  35000000  dma_run zero
000414  1d900800  unlock r17
000418  7d000a00  xsignal r20, 0
00041c  db210000  j 268
000420  bb504101  bneq r2, r20, 52
000424  7d100a00  xwait r20, 0
000428  7d900400  xwait r9, 0
00042c  1d000000  lock zero, zero
000430  810b0000  ds_cfg r23, zero, 0
000434  010e0002  ds_cfg r28, zero, 1
000438  010e001c  ds_cfg r28, zero, 14
00043c  010e001a  ds_cfg r28, zero, 13
000440  219cc703  shuffle_batch r24, r15, r28, 1
000444  1d100000  unlock zero
000448  7d800b00  xsignal r23, 0
00044c  7d800800  xsignal r17, 0
000450  5b1b0000  j 216
000454  ab410100  lui r3, 20
000458  1bb8c000  slli r16, r1, 12
00045c  8b173c10  add.s r15, r24, r3
000460  9f710000  addli r3, zero, 7
000464  37223100  beq r2, r3, 136
000468  37111101  beq r2, r17, 68
00046c  bb72b100  bneq r2, r11, 188
000470  6b598f00  load.d r[19:20], 8(r30)
000474  9731b602  sll.d r[4:5], r[13:14], r11
000478  1f780000  addli r16, zero, 7
00047c  7d100800  xwait r16, 0
000480  1d800800  lock zero, r17
000484  8b213910  add.ul r[4:5], r[19:20], r[4:5]
000488  95850500  dma_cfg r11, r11, zero, 0
00048c  15000204  dma_cfg zero, r4, zero, 2
000490  9587c107  dma_cfg r15, r3, r28, 3
000494  9f010010  addli r3, zero, 2048
000498  9582c109  dma_cfg r5, r3, r28, 4
00049c  35000000  dma_run zero
0004a0  1d900800  unlock r17
0004a4  7d000700  xsignal r14, 0
0004a8  5b100000  j 128
0004ac  9f011000  addli r3, zero, 8
0004b0  7d900800  xwait r17, 0
0004b4  7d900100  xwait r3, 0
0004b8  9f311000  addli r3, zero, 11
0004bc  7d900100  xwait r3, 0
0004c0  9f014000  addli r3, zero, 32
0004c4  1d800500  lock zero, r11
0004c8  8901ce01  mm_cfg r3, r28, r28, 0
0004cc  9f111000  addli r3, zero, 9
0004d0  098ab504  mm_cfg r20, r11, r11, 2
0004d4  290c0c0b  mm r24, r24, r16, 5
0004d8  1d900500  unlock r11
0004dc  7d800400  xsignal r9, 0
0004e0  7d800100  xsignal r3, 0
0004e4  9f211000  addli r3, zero, 10
0004e8  db070000  j 60
0004ec  9f111000  addli r3, zero, 9
0004f0  7d100700  xwait r14, 0
0004f4  7d900100  xwait r3, 0
0004f8  1d000000  lock zero, zero
0004fc  9f014000  addli r3, zero, 32
000500  810b0000  ds_cfg r23, zero, 0
000504  010e0002  ds_cfg r28, zero, 1
000508  010e001c  ds_cfg r28, zero, 14
00050c  8101001a  ds_cfg r3, zero, 13
000510  9f710000  addli r3, zero, 7
000514  4188c705  shuffle_coa r16, r15, r28, 2
000518  1d100000  unlock zero
00051c  7d800100  xsignal r3, 0
000520  9f011000  addli r3, zero, 8
000524  7d800100  xsignal r3, 0
000528  1f02c007  addli r4, zero, 992
00052c  9b315d00  slli r3, r26, 5
000530  1f094000  addli r18, zero, 32
000534  9bb07000  slli r1, r1, 7
000538  b3070228  zext_int2long r[16:17], r4
00053c  b3810128  zext_int2long r[4:5], r3
000540  33090928  zext_int2long r[19:20], r18
000544  8ba7f140  min.ul r[16:17], r[4:5], r[16:17]
000548  a7874700  addli.d r[16:17], r[16:17], 32
00054c  8ba73748  max.ul r[16:17], r[16:17], r[4:5]
000550  8bb13718  sub.sl r[4:5], r[16:17], r[4:5]
000554  8ba72141  min.ul r[16:17], r[4:5], r[19:20]
000558  abe10100  lui r3, 30
00055c  0b9d3010  add.s r26, r1, r3
000560  3767e1fe  beq r2, r14, -552
000564  abe00100  lui r1, 30
000568  9b900028  ori r1, r1, 640
00056c  8b101c10  add.s r1, r24, r1
000570  37229100  beq r2, r9, 136
000574  bb377101  bneq r2, r23, 492
000578  9f211000  addli r3, zero, 10
00057c  1f050000  addli r10, zero, 0
000580  7d900100  xwait r3, 0
000584  9f411000  addli r3, zero, 12
000588  7d900100  xwait r3, 0
00058c  9f312000  addli r3, zero, 19
000590  7d900100  xwait r3, 0
000594  1d000a00  lock zero, r20
000598  ab01803f  lui r3, 260096
00059c  0d000002  ew_cfg zero, zero, zero, 1
0005a0  8d910100  ewcoeff_cfg r3, r3, zero, 0
0005a4  9f713000  addli r3, zero, 31
0005a8  0d800104  ew_cfg zero, r3, zero, 2
0005ac  8d050006  ew_cfg r11, zero, zero, 3
0005b0  8b91a010  add.s r3, r1, r10
0005b4  0b12ac10  add.s r4, r24, r10
0005b8  1f050501  addli r10, r10, 128
0005bc  ad01a201  dsmadd r3, r4, r26, 0
0005c0  bb4f95ff  bneq r10, r25, -16
0005c4  9f301000  addli r1, zero, 11
0005c8  1d100a00  unlock r20
0005cc  7d800000  xsignal r1, 0
0005d0  9f501000  addli r1, zero, 13
0005d4  7d800000  xsignal r1, 0
0005d8  9f002000  addli r1, zero, 16
0005dc  7d800000  xsignal r1, 0
0005e0  9f102000  addli r1, zero, 17
0005e4  7d800000  xsignal r1, 0
0005e8  9f202000  addli r1, zero, 18
0005ec  7d800000  xsignal r1, 0
0005f0  9f601000  addli r1, zero, 14
0005f4  dbafffff  j -644
0005f8  1f621000  addli r4, zero, 14
0005fc  1f452000  addli r10, zero, 20
000600  e341bfff  loadli.w r3,  -36(r30)
000604  2b06803f  lui r12, 260096
000608  9f76f00f  addli r13, zero, 2047
00060c  1f582000  addli r16, zero, 21
000610  7d100200  xwait r4, 0
000614  7d100500  xwait r10, 0
000618  1d000a00  lock zero, r20
00061c  1f022000  addli r4, zero, 16
000620  0d000002  ew_cfg zero, zero, zero, 1
000624  8b113c10  add.s r3, r24, r3
000628  0d10c000  ewcoeff_cfg zero, zero, r12, 0
00062c  0d800604  ew_cfg zero, r13, zero, 2
000630  8d050006  ew_cfg r11, zero, zero, 3
000634  8d85b526  ew_cfg r11, r11, r11, 19
000638  ad911000  dsmul r3, r1, r1, 0
00063c  0d000026  ew_cfg zero, zero, zero, 19
000640  1d100a00  unlock r20
000644  7d100200  xwait r4, 0
000648  1d000a00  lock zero, r20
00064c  0b129338  mod.s r4, r6, r9
000650  0d000002  ew_cfg zero, zero, zero, 1
000654  0d10c000  ewcoeff_cfg zero, zero, r12, 0
000658  0d800604  ew_cfg zero, r13, zero, 2
00065c  8d050006  ew_cfg r11, zero, zero, 3
000660  8d85b526  ew_cfg r11, r11, r11, 19
000664  ad911100  dsmul r3, r3, r1, 0
000668  1b32d200  slli r4, r4, 13
00066c  0d000026  ew_cfg zero, zero, zero, 19
000670  1d100a00  unlock r20
000674  e307bfff  loadli.w r15,  -40(r30)
000678  0b12f210  add.s r4, r4, r15
00067c  9f172000  addli r15, zero, 17
000680  7d900700  xwait r15, 0
000684  7d100800  xwait r16, 0
000688  1d000a00  lock zero, r20
00068c  0d000002  ew_cfg zero, zero, zero, 1
000690  e347afff  loadli.w r15,  -44(r30)
000694  0d960700  ewcoeff_cfg r12, r15, zero, 0
000698  0d800604  ew_cfg zero, r13, zero, 2
00069c  8d050006  ew_cfg r11, zero, zero, 3
0006a0  8d85b526  ew_cfg r11, r11, r11, 19
0006a4  2d823000  dsmadd r4, r1, r3, 0
0006a8  0d000026  ew_cfg zero, zero, zero, 19
0006ac  1d100a00  unlock r20
0006b0  7d000500  xsignal r10, 0
0006b4  1d000a00  lock zero, r20
0006b8  0d000002  ew_cfg zero, zero, zero, 1
0006bc  e301afff  loadli.w r3,  -48(r30)
0006c0  8d110000  ewcoeff_cfg r3, zero, zero, 0
0006c4  8d0b0014  ew_cfg r23, zero, zero, 10
0006c8  e3419fff  loadli.w r3,  -52(r30)
0006cc  0d8a3516  ew_cfg r20, r11, r3, 11
0006d0  abc17f41  lui r3, 268284
0006d4  0d00001a  ew_cfg zero, zero, zero, 13
0006d8  0d80381c  ew_cfg zero, r17, r3, 14
0006dc  9f212000  addli r3, zero, 18
0006e0  0d00001e  ew_cfg zero, zero, zero, 15
0006e4  0d800604  ew_cfg zero, r13, zero, 2
0006e8  8d050006  ew_cfg r11, zero, zero, 3
0006ec  8d850526  ew_cfg r11, r11, zero, 19
0006f0  2d024200  dsmadd r4, r4, r4, 0
0006f4  0d000026  ew_cfg zero, zero, zero, 19
0006f8  0d000014  ew_cfg zero, zero, zero, 10
0006fc  1d100a00  unlock r20
000700  1d000a00  lock zero, r20
000704  0d000002  ew_cfg zero, zero, zero, 1
000708  0d16c000  ewcoeff_cfg r12, zero, r12, 0
00070c  0d800604  ew_cfg zero, r13, zero, 2
000710  8d050006  ew_cfg r11, zero, zero, 3
000714  8d850526  ew_cfg r11, r11, zero, 19
000718  2d024200  dsmadd r4, r4, r4, 0
00071c  0d000026  ew_cfg zero, zero, zero, 19
000720  1d100a00  unlock r20
000724  7d900100  xwait r3, 0
000728  1d000a00  lock zero, r20
00072c  ab01003f  lui r3, 258048
000730  0d000002  ew_cfg zero, zero, zero, 1
000734  0d103000  ewcoeff_cfg zero, zero, r3, 0
000738  0d800604  ew_cfg zero, r13, zero, 2
00073c  8d050006  ew_cfg r11, zero, zero, 3
000740  8d85b526  ew_cfg r11, r11, r11, 19
000744  ad904000  dsmul r1, r1, r4, 0
000748  9f701000  addli r1, zero, 15
00074c  0d000026  ew_cfg zero, zero, zero, 19
000750  1d100a00  unlock r20
000754  7d800000  xsignal r1, 0
000758  7d000800  xsignal r16, 0
00075c  5b83ffff  j -1000
000760  3b5001fe  bneq r2, zero, -1004
000764  9b316500  slli r3, r10, 6
000768  33090028  zext_int2long r[19:20], zero
00076c  1f152000  addli r10, zero, 17
000770  eb5b8f01  load.d r[24:25], 24(r30)
000774  1736b602  sll.d r[13:14], r[13:14], r11
000778  b3910128  sext_int2long r[4:5], r3
00077c  97baaa02  sll.d r[22:23], r[22:23], r10
000780  1f751000  addli r10, zero, 15
000784  0bb92141  min.sl r[19:20], r[4:5], r[19:20]
000788  8baa5b11  add.ul r[22:23], r[24:25], r[22:23]
00078c  7d100500  xwait r10, 0
000790  1d800400  lock zero, r9
000794  1bb52700  slli r10, r15, 2
000798  9f3b0000  addli r23, zero, 3
00079c  95050000  dma_cfg r11, zero, zero, 0
0007a0  27098900  addli.d r[19:20], r[19:20], 64
0007a4  0ba6ca10  add.ul r[13:14], r[22:23], r[13:14]
0007a8  15800502  dma_cfg zero, r11, zero, 1
0007ac  0b393948  max.sl r[19:20], r[19:20], r[4:5]
0007b0  95060004  dma_cfg r13, zero, zero, 2
0007b4  1586a006  dma_cfg r12, r1, r10, 3
0007b8  9f000010  addli r1, zero, 2048
0007bc  8b313918  sub.sl r[4:5], r[19:20], r[4:5]
0007c0  33090e28  zext_int2long r[19:20], r28
0007c4  8bb12141  min.sl r[4:5], r[4:5], r[19:20]
0007c8  95803208  dma_cfg r1, r5, r3, 4
0007cc  9f302000  addli r1, zero, 19
0007d0  35000000  dma_run zero
0007d4  1d900400  unlock r9
0007d8  5b73ffff  j -1128
0007dc  7d000000  xsignal zero, 0
0007e0  bb600100  bneq r2, zero, 56
0007e4  9f200000  addli r1, zero, 2
0007e8  7d100000  xwait zero, 0
0007ec  7d100000  xwait zero, 0
0007f0  7d100000  xwait zero, 0
0007f4  7d100000  xwait zero, 0
0007f8  7d100000  xwait zero, 0
0007fc  7d100000  xwait zero, 0
000800  7d100000  xwait zero, 0
000804  7d100000  xwait zero, 0
000808  1d800000  lock zero, r1
00080c  0d000020  ew_cfg zero, zero, zero, 16
000810  1d900000  unlock r1
000814  7d400000  xsignal_mode_cfg zero
000818  9f8e7e00  addli sp, sp, 56
00081c  00a00300  mfence { lm, sm, gm }
000820  00100000  exit
000824  00100000  exit
000828  00100000  exit
00082c  00100000  exit
000830  00100000  exit
000834  00100000  exit
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
