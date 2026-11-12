; SHA-256 99634535838138ba987bd0cac91ef5dcbcd0243283dcc73a8af4a2b39aaa66e5
; P800 SDNN · XTDK LLVM 19 · 615 / 615 words decoded
; bound names: triton_tem_fused_add_mm_silu_0
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
0000b4  9f8e5eff  addli sp, sp, -88
0000b8  1f8f3e00  addli r30, sp, 24
0000bc  9f100000  addli r1, zero, 1
0000c0  803a0002  core_id r21
0000c4  630d6f00  loadli.w r26,  48(r30)
0000c8  e34c5f00  loadli.w r25,  44(r30)
0000cc  7dc00000  xsignal_mode_cfg r1
0000d0  b7900a00  beq r21, zero, 36
0000d4  2bf1ffff  lui r2, 1048575
0000d8  7d900000  xwait r1, 0
0000dc  7d900000  xwait r1, 0
0000e0  7d100000  xwait zero, 0
0000e4  9b10f1ff  ori r1, r2, 4095
0000e8  80a10004  csr_set csr3, r1
0000ec  00d00100  sync_group
0000f0  db290000  j 332
0000f4  1f220000  addli r4, zero, 2
0000f8  fdd00000  uni_sram_cfg r1, r1
0000fc  9f420000  addli r5, zero, 4
000100  6b510f02  load.d r[3:4], 32(r30)
000104  1f030020  addli r6, zero, 4096
000108  1d000200  lock zero, r4
00010c  8d000020  ew_cfg r1, zero, zero, 16
000110  1d100200  unlock r4
000114  1d800200  lock zero, r5
000118  15000000  dma_cfg zero, zero, zero, 0
00011c  15800104  dma_cfg zero, r3, zero, 2
000120  15006106  dma_cfg zero, r2, r6, 3
000124  1f014000  addli r2, zero, 32
000128  9f010008  addli r3, zero, 1024
00012c  15001008  dma_cfg zero, zero, r1, 4
000130  35000000  dma_run zero
000134  1d900200  unlock r5
000138  7d800000  xsignal r1, 0
00013c  7d900000  xwait r1, 0
000140  1d000000  lock zero, zero
000144  01020000  ds_cfg r4, zero, 0
000148  01000002  ds_cfg zero, zero, 1
00014c  01000016  ds_cfg zero, zero, 11
000150  0101001a  ds_cfg r2, zero, 13
000154  1f510000  addli r2, zero, 5
000158  8101001c  ds_cfg r3, zero, 14
00015c  21133008  shuffle_batch r6, zero, r3, 4
000160  1d100000  unlock zero
000164  7d800000  xsignal r1, 0
000168  7d900000  xwait r1, 0
00016c  1d000200  lock zero, r4
000170  ab100100  lui r1, 17
000174  0d200300  ewtable_cfg r6, 0
000178  0da00002  ewtable_cfg r1, 1
00017c  abf0ffff  lui r1, 1048575
000180  1d100200  unlock r4
000184  7d000000  xsignal zero, 0
000188  7d100000  xwait zero, 0
00018c  9b90f0ff  ori r1, r1, 4095
000190  80a10004  csr_set csr3, r1
000194  9f301000  addli r1, zero, 11
000198  00d00100  sync_group
00019c  7d800000  xsignal r1, 0
0001a0  7d800000  xsignal r1, 0
0001a4  7d800000  xsignal r1, 0
0001a8  7d800000  xsignal r1, 0
0001ac  7d800000  xsignal r1, 0
0001b0  9f300000  addli r1, zero, 3
0001b4  7d000100  xsignal r2, 0
0001b8  7d000100  xsignal r2, 0
0001bc  7d000100  xsignal r2, 0
0001c0  7d000100  xsignal r2, 0
0001c4  7d000100  xsignal r2, 0
0001c8  1f111000  addli r2, zero, 9
0001cc  7d800000  xsignal r1, 0
0001d0  7d800000  xsignal r1, 0
0001d4  7d800000  xsignal r1, 0
0001d8  7d800000  xsignal r1, 0
0001dc  7d800000  xsignal r1, 0
0001e0  9f700000  addli r1, zero, 7
0001e4  7d000100  xsignal r2, 0
0001e8  7d000100  xsignal r2, 0
0001ec  7d000100  xsignal r2, 0
0001f0  7d000100  xsignal r2, 0
0001f4  7d000100  xsignal r2, 0
0001f8  1f511000  addli r2, zero, 13
0001fc  7d800000  xsignal r1, 0
000200  7d800000  xsignal r1, 0
000204  7d800000  xsignal r1, 0
000208  7d800000  xsignal r1, 0
00020c  7d800000  xsignal r1, 0
000210  9f002000  addli r1, zero, 16
000214  7d000100  xsignal r2, 0
000218  7d000100  xsignal r2, 0
00021c  7d000100  xsignal r2, 0
000220  7d000100  xsignal r2, 0
000224  7d000100  xsignal r2, 0
000228  7d800000  xsignal r1, 0
00022c  7d800000  xsignal r1, 0
000230  7d800000  xsignal r1, 0
000234  7d800000  xsignal r1, 0
000238  7d800000  xsignal r1, 0
00023c  e3005f00  loadli.w r1,  40(r30)
000240  63415f00  loadli.w r2,  44(r30)
000244  00d20002  load_param_i r4, 1
000248  e3016f00  loadli.w r3,  48(r30)
00024c  8b101120  mul.s r1, r2, r1
000250  1f010200  addli r2, r4, 0
000254  0b913050  fmac.s r2, r1, r3
000258  8b913020  mul.s r3, r1, r3
00025c  1f71f1ff  addli r2, r2, -1
000260  0b114130  div.s r2, r2, r4
000264  00520002  load_param_i r4, 0
000268  8b104120  mul.s r1, r2, r4
00026c  0b114150  fmac.s r2, r2, r4
000270  0b113140  min.s r2, r2, r3
000274  cb021102  ble.s r2, r1, 1184
000278  33110128  sext_int2long r[3:4], r2
00027c  33930028  sext_int2long r[7:8], r1
000280  1f560000  addli r12, zero, 5
000284  9f040001  addli r9, zero, 128
000288  1f670000  addli r14, zero, 6
00028c  1f4b0000  addli r22, zero, 4
000290  1f240000  addli r8, zero, 2
000294  ab0d0100  lui r27, 16
000298  1f0e0000  addli r28, zero, 0
00029c  733c2ffe  store.d r[3:4], -8(r30)
0002a0  1f71f01f  addli r2, zero, 4095
0002a4  ab00feff  lui r1, 1048544
0002a8  73381ffe  store.d r[2:3], -16(r30)
0002ac  ab800200  lui r1, 40
0002b0  9b902084  ori r1, r1, 2114
0002b4  e74e1ffe  storeli.w r1, -20(r30)
0002b8  5b0d0000  j 104
0002bc  1f551000  addli r10, zero, 13
0002c0  9f160000  addli r13, zero, 1
0002c4  9bb11100  slli r3, r3, 1
0002c8  803a0002  core_id r21
0002cc  7d100500  xwait r10, 0
0002d0  6b550f01  load.d r[11:12], 16(r30)
0002d4  9730d802  sll.d r[2:3], r[17:18], r13
0002d8  1d000b00  lock zero, r22
0002dc  15800600  dma_cfg zero, r13, zero, 0
0002e0  8b201510  add.ul r[2:3], r[11:12], r[2:3]
0002e4  15000104  dma_cfg zero, r2, zero, 2
0002e8  95823006  dma_cfg r5, r1, r3, 3
0002ec  9f000002  addli r1, zero, 256
0002f0  1f010004  addli r2, zero, 512
0002f4  1581d008  dma_cfg r2, r1, r13, 4
0002f8  9f401000  addli r1, zero, 12
0002fc  35000000  dma_run zero
000300  1d100b00  unlock r22
000304  7d800000  xsignal r1, 0
000308  eb508fff  load.d r[2:3], -8(r30)
00030c  27130300  addli.d r[7:8], r[7:8], 1
000310  1f1e0e00  addli r28, r28, 1
000314  1f670000  addli r14, zero, 6
000318  93301304  setlt.sl r1, r[7:8], r[2:3]
00031c  b7ef0000  beq r1, zero, 1016
000320  8b10a331  div.s r1, r6, r26
000324  9f012000  addli r3, zero, 16
000328  9f021000  addli r5, zero, 8
00032c  8b16ce38  mod.s r13, r28, r12
000330  8b909031  div.s r1, r1, r25
000334  0b919030  div.s r2, r1, r9
000338  1b323100  slli r4, r2, 3
00033c  1b317100  slli r2, r2, 7
000340  8b914118  sub.s r3, r3, r4
000344  0b912018  sub.s r2, r1, r2
000348  8b915140  min.s r3, r3, r5
00034c  8b923038  mod.s r5, r1, r3
000350  8b173130  div.s r15, r2, r3
000354  9bb1e600  slli r3, r13, 14
000358  2b010500  lui r2, 80
00035c  9bb00601  slli r1, r13, 16
000360  0b9a4210  add.s r20, r5, r4
000364  0b922110  add.s r4, r3, r2
000368  33880728  zext_int2long r[17:18], r15
00036c  1f710000  addli r2, zero, 7
000370  17382802  sll.d r[17:18], r[17:18], r2
000374  1f01000f  addli r2, zero, 1920
000378  33050a28  zext_int2long r[11:12], r20
00037c  33090128  zext_int2long r[19:20], r2
000380  bba0ea00  bneq r21, r14, 40
000384  1f711000  addli r2, zero, 15
000388  1f860c00  addli r12, r25, 0
00038c  1f070d00  addli r14, r26, 0
000390  93024105  setlt.u r5, r2, r20
000394  1f511000  addli r2, zero, 13
000398  17312502  sll.d r[3:4], r[11:12], r2
00039c  3ba10200  bneq r5, zero, 72
0003a0  b30c0028  zext_int2long r[26:27], zero
0003a4  5b090000  j 72
0003a8  bba28a00  bneq r21, r8, 168
0003ac  1f310000  addli r2, zero, 3
0003b0  7d100400  xwait r8, 0
0003b4  7d100600  xwait r12, 0
0003b8  1d000000  lock zero, zero
0003bc  9f028000  addli r5, zero, 64
0003c0  01010000  ds_cfg r2, zero, 0
0003c4  81020002  ds_cfg r5, zero, 1
0003c8  8102001c  ds_cfg r5, zero, 14
0003cc  8104001a  ds_cfg r9, zero, 13
0003d0  a1115202  shuffle_batch r3, r4, r5, 1
0003d4  1d100000  unlock zero
0003d8  7d000100  xsignal r2, 0
0003dc  7d000b00  xsignal r22, 0
0003e0  5b330000  j 408
0003e4  eb5c0fff  load.d r[26:27], -16(r30)
0003e8  970c9103  and.d r[26:27], r[3:4], r[26:27]
0003ec  0b319119  sub.sl r[3:4], r[3:4], r[26:27]
0003f0  9f6a0000  addli r21, zero, 6
0003f4  9f621000  addli r5, zero, 14
0003f8  eb5b0f00  load.d r[24:25], 0(r30)
0003fc  17515103  sra.d r[3:4], r[3:4], r21
000400  8b3c2141  min.sl r[26:27], r[3:4], r[19:20]
000404  0bb12c18  sub.sl r[3:4], r[26:27], r[3:4]
000408  973c5502  sll.d r[26:27], r[11:12], r5
00040c  9f320000  addli r5, zero, 3
000410  1f010101  addli r2, r2, 128
000414  9f110000  addli r3, zero, 1
000418  7d900200  xwait r5, 0
00041c  1d000b00  lock zero, r22
000420  8bac9b11  add.ul r[26:27], r[24:25], r[26:27]
000424  95810100  dma_cfg r3, r3, zero, 0
000428  15000d04  dma_cfg zero, r26, zero, 2
00042c  15829c06  dma_cfg r4, r25, r9, 3
000430  9f0c0600  addli r25, r12, 0
000434  1f0d0700  addli r26, r14, 0
000438  1f560000  addli r12, zero, 5
00043c  95842408  dma_cfg r9, r9, r2, 4
000440  35000000  dma_run zero
000444  1d100b00  unlock r22
000448  7d000400  xsignal r8, 0
00044c  5b260000  j 304
000450  2b410600  lui r2, 100
000454  0b922110  add.s r4, r3, r2
000458  1f710000  addli r2, zero, 7
00045c  37f32a00  beq r21, r2, 220
000460  b7b16a01  beq r21, r22, 108
000464  00310002  core_id r2
000468  9f6a0000  addli r21, zero, 6
00046c  9f110000  addli r3, zero, 1
000470  3b343100  bneq r2, r3, 268
000474  9f720000  addli r5, zero, 7
000478  1f170000  addli r14, zero, 1
00047c  9f0b0d00  addli r23, r26, 0
000480  7d900200  xwait r5, 0
000484  9f820c00  addli r5, r25, 0
000488  eb5c8f00  load.d r[26:27], 8(r30)
00048c  1731e802  sll.d r[3:4], r[17:18], r14
000490  1d000b00  lock zero, r22
000494  15070700  dma_cfg r14, r14, zero, 0
000498  0ba12c10  add.ul r[3:4], r[26:27], r[3:4]
00049c  9f8c0200  addli r25, r5, 0
0004a0  9f020002  addli r5, zero, 256
0004a4  1f8d0b00  addli r26, r23, 0
0004a8  15800104  dma_cfg zero, r3, zero, 2
0004ac  15025106  dma_cfg r4, r2, r5, 3
0004b0  1f010020  addli r2, zero, 4096
0004b4  9f018000  addli r3, zero, 64
0004b8  95023108  dma_cfg r5, r2, r3, 4
0004bc  35000000  dma_run zero
0004c0  1d100b00  unlock r22
0004c4  7d800a00  xsignal r21, 0
0004c8  db160000  j 180
0004cc  1f011000  addli r2, zero, 8
0004d0  7d100b00  xwait r22, 0
0004d4  1f070000  addli r14, zero, 0
0004d8  1f120000  addli r4, zero, 1
0004dc  9f120000  addli r5, zero, 1
0004e0  9f0a8000  addli r21, zero, 64
0004e4  7d100100  xwait r2, 0
0004e8  1f311000  addli r2, zero, 11
0004ec  7d100100  xwait r2, 0
0004f0  1b31d700  slli r2, r14, 13
0004f4  1b378700  slli r14, r14, 8
0004f8  1d000200  lock zero, r4
0004fc  898a9a00  mm_cfg r21, r21, r9, 0
000500  17113100  or r2, r2, r3
000504  17171700  or r14, r14, r1
000508  09044b04  mm_cfg r8, r22, r4, 2
00050c  2987210a  mm r14, r3, r2, 5
000510  1b811200  andi r2, r5, 1
000514  1f170000  addli r14, zero, 1
000518  9f020000  addli r5, zero, 0
00051c  1d100200  unlock r4
000520  3b4f01fe  bneq r2, zero, -48
000524  1f111000  addli r2, zero, 9
000528  7d000600  xsignal r12, 0
00052c  7d000100  xsignal r2, 0
000530  1f211000  addli r2, zero, 10
000534  5b080000  j 64
000538  1f111000  addli r2, zero, 9
00053c  7d100700  xwait r14, 0
000540  7d100100  xwait r2, 0
000544  1f310000  addli r2, zero, 3
000548  1d000000  lock zero, zero
00054c  01010000  ds_cfg r2, zero, 0
000550  1f018000  addli r2, zero, 64
000554  81040002  ds_cfg r9, zero, 1
000558  0101001c  ds_cfg r2, zero, 14
00055c  8104001a  ds_cfg r9, zero, 13
000560  c1012204  shuffle_coa r3, r4, r2, 2
000564  1f710000  addli r2, zero, 7
000568  1d100000  unlock zero
00056c  7d000100  xsignal r2, 0
000570  1f011000  addli r2, zero, 8
000574  7d000100  xsignal r2, 0
000578  9f6a0000  addli r21, zero, 6
00057c  1bb17700  slli r2, r15, 7
000580  33870428  zext_int2long r[15:16], r9
000584  33010128  zext_int2long r[3:4], r2
000588  0b222141  min.ul r[5:6], r[3:4], r[19:20]
00058c  27020201  addli.d r[5:6], r[5:6], 128
000590  0b222248  max.ul r[5:6], r[5:6], r[3:4]
000594  0b312218  sub.sl r[3:4], r[5:6], r[3:4]
000598  9bb29600  slli r5, r13, 9
00059c  ab860700  lui r13, 120
0005a0  8b21e140  min.ul r[4:5], r[3:4], r[15:16]
0005a4  8b92d210  add.s r5, r5, r13
0005a8  00310002  core_id r2
0005ac  374451ff  beq r2, r21, -752
0005b0  1b9106a0  ori r2, r13, 2560
0005b4  803a0002  core_id r21
0005b8  8b962010  add.s r13, r1, r2
0005bc  b7e1ca00  beq r21, r12, 120
0005c0  1f310000  addli r2, zero, 3
0005c4  3be32a00  bneq r21, r2, 216
0005c8  1f211000  addli r2, zero, 10
0005cc  9f010000  addli r3, zero, 0
0005d0  7d100100  xwait r2, 0
0005d4  1f411000  addli r2, zero, 12
0005d8  7d100100  xwait r2, 0
0005dc  1f012000  addli r2, zero, 16
0005e0  7d100100  xwait r2, 0
0005e4  1d000400  lock zero, r8
0005e8  2b01803f  lui r2, 260096
0005ec  0d000002  ew_cfg zero, zero, zero, 1
0005f0  0d110100  ewcoeff_cfg r2, r2, zero, 0
0005f4  1f71f000  addli r2, zero, 127
0005f8  0d000104  ew_cfg zero, r2, zero, 2
0005fc  1f110000  addli r2, zero, 1
000600  0d010006  ew_cfg r2, zero, zero, 3
000604  0b913610  add.s r2, r13, r3
000608  0b923010  add.s r4, r1, r3
00060c  9f810104  addli r3, r3, 512
000610  2d015200  dsmadd r2, r4, r5, 0
000614  bbcfb1ff  bneq r3, r27, -16
000618  9f301000  addli r1, zero, 11
00061c  1d100400  unlock r8
000620  7d800000  xsignal r1, 0
000624  9f501000  addli r1, zero, 13
000628  7d800000  xsignal r1, 0
00062c  9f601000  addli r1, zero, 14
000630  db9affff  j -812
000634  9f601000  addli r1, zero, 14
000638  1f110000  addli r2, zero, 1
00063c  7d900000  xwait r1, 0
000640  1d000400  lock zero, r8
000644  ab00803f  lui r1, 260096
000648  0d000002  ew_cfg zero, zero, zero, 1
00064c  0d101000  ewcoeff_cfg zero, zero, r1, 0
000650  0d010024  ew_cfg r2, zero, zero, 18
000654  0d040014  ew_cfg r8, zero, zero, 10
000658  e340dfff  loadli.w r1,  -20(r30)
00065c  0d041116  ew_cfg r8, r2, r1, 11
000660  abc07f41  lui r1, 268284
000664  0d00001a  ew_cfg zero, zero, zero, 13
000668  0d001b1c  ew_cfg zero, r22, r1, 14
00066c  0d00001e  ew_cfg zero, zero, zero, 15
000670  eb500fff  load.d r[2:3], -16(r30)
000674  0d000104  ew_cfg zero, r2, zero, 2
000678  9f701000  addli r1, zero, 15
00067c  0d0b0006  ew_cfg r22, zero, zero, 3
000680  0d0b6b27  ew_cfg r22, r22, r22, 19
000684  ad96d600  dsmul r13, r13, r13, 0
000688  0d000014  ew_cfg zero, zero, zero, 10
00068c  0d000024  ew_cfg zero, zero, zero, 18
000690  0d000026  ew_cfg zero, zero, zero, 19
000694  1d100400  unlock r8
000698  db8dffff  j -916
00069c  bbb10afe  bneq r21, zero, -916
0006a0  9b307a00  slli r1, r20, 7
0006a4  1f312000  addli r2, zero, 19
0006a8  1f1a0000  addli r20, zero, 1
0006ac  9f721000  addli r5, zero, 15
0006b0  9bb12100  slli r3, r3, 2
0006b4  1f020020  addli r4, zero, 4096
0006b8  973b2502  sll.d r[24:25], r[11:12], r2
0006bc  b3900028  sext_int2long r[2:3], r1
0006c0  6b558f01  load.d r[11:12], 24(r30)
0006c4  17384803  sll.d r[17:18], r[17:18], r20
0006c8  7d900200  xwait r5, 0
0006cc  1d000600  lock zero, r12
0006d0  150a0000  dma_cfg r20, zero, zero, 0
0006d4  0bb92041  min.sl r[19:20], r[2:3], r[19:20]
0006d8  15000a02  dma_cfg zero, r20, zero, 1
0006dc  0b257511  add.ul r[11:12], r[11:12], r[24:25]
0006e0  27090901  addli.d r[19:20], r[19:20], 128
0006e4  0b250511  add.ul r[11:12], r[11:12], r[17:18]
0006e8  0b391948  max.sl r[19:20], r[19:20], r[2:3]
0006ec  95050004  dma_cfg r11, zero, zero, 2
0006f0  8b301918  sub.sl r[2:3], r[19:20], r[2:3]
0006f4  15853606  dma_cfg r10, r13, r3, 3
0006f8  9f010004  addli r3, zero, 512
0006fc  8bb0e040  min.sl r[2:3], r[2:3], r[15:16]
000700  15821108  dma_cfg r4, r3, r1, 4
000704  9f002000  addli r1, zero, 16
000708  35000000  dma_run zero
00070c  1d100600  unlock r12
000710  db7effff  j -1036
000714  7d000000  xsignal zero, 0
000718  bbe00a00  bneq r21, zero, 56
00071c  9f200000  addli r1, zero, 2
000720  7d100000  xwait zero, 0
000724  7d100000  xwait zero, 0
000728  7d100000  xwait zero, 0
00072c  7d100000  xwait zero, 0
000730  7d100000  xwait zero, 0
000734  7d100000  xwait zero, 0
000738  7d100000  xwait zero, 0
00073c  7d100000  xwait zero, 0
000740  1d800000  lock zero, r1
000744  0d000020  ew_cfg zero, zero, zero, 16
000748  1d900000  unlock r1
00074c  7d400000  xsignal_mode_cfg zero
000750  9f8e3e00  addli sp, sp, 24
000754  00a00300  mfence { lm, sm, gm }
000758  00100000  exit
00075c  00100000  exit
000760  00100000  exit
000764  00100000  exit
000768  00100000  exit
00076c  00100000  exit
000770  00100000  exit
000774  00100000  exit
000778  00100000  exit
00077c  00100000  exit
000780  00100000  exit
000784  00100000  exit
000788  00100000  exit
00078c  00100000  exit
000790  00100000  exit
000794  00100000  exit
000798  00100000  exit
00079c  00100000  exit
0007a0  00100000  exit
0007a4  00100000  exit
0007a8  00100000  exit
0007ac  00100000  exit
0007b0  00100000  exit
0007b4  00100000  exit
0007b8  00100000  exit
0007bc  00100000  exit
0007c0  00100000  exit
0007c4  00100000  exit
0007c8  00100000  exit
0007cc  00100000  exit
0007d0  00100000  exit
0007d4  00100000  exit
0007d8  00100000  exit
0007dc  00100000  exit
0007e0  00100000  exit
0007e4  00100000  exit
0007e8  00100000  exit
0007ec  00100000  exit
0007f0  00100000  exit
0007f4  00100000  exit
0007f8  00100000  exit
0007fc  00100000  exit
000800  00100000  exit
000804  00100000  exit
000808  00100000  exit
00080c  00100000  exit
000810  00100000  exit
000814  00100000  exit
000818  00100000  exit
00081c  00100000  exit
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
