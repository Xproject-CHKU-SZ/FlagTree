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
00005c  9f096000  addli r19, zero, 48
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
0000b4  9f8e2eff  addli sp, sp, -112
0000b8  9f100000  addli r1, zero, 1
0000bc  00310002  core_id r2
0000c0  1f8f6e00  addli r30, sp, 48
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600100  beq r2, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5b0e0000  j 112
0000e0  9f210000  addli r3, zero, 2
0000e4  fdd00000  uni_sram_cfg r1, r1
0000e8  2bf2ffff  lui r4, 1048575
0000ec  1d800100  lock zero, r3
0000f0  8d000020  ew_cfg r1, zero, zero, 16
0000f4  9b10f2ff  ori r1, r4, 4095
0000f8  1d900100  unlock r3
0000fc  9f610000  addli r3, zero, 6
000100  80a10004  csr_set csr3, r1
000104  9f400000  addli r1, zero, 4
000108  00d00100  sync_group
00010c  7d800000  xsignal r1, 0
000110  7d800000  xsignal r1, 0
000114  7d800100  xsignal r3, 0
000118  7d800100  xsignal r3, 0
00011c  9f001000  addli r1, zero, 8
000120  9f411000  addli r3, zero, 12
000124  7d800000  xsignal r1, 0
000128  7d800000  xsignal r1, 0
00012c  7d800100  xsignal r3, 0
000130  7d800100  xsignal r3, 0
000134  9f201000  addli r1, zero, 10
000138  9f611000  addli r3, zero, 14
00013c  7d800000  xsignal r1, 0
000140  7d800000  xsignal r1, 0
000144  7d800100  xsignal r3, 0
000148  7d800100  xsignal r3, 0
00014c  e3404f00  loadli.w r1,  36(r30)
000150  e3015f00  loadli.w r3,  40(r30)
000154  80d20002  load_param_i r5, 1
000158  63425f00  loadli.w r4,  44(r30)
00015c  8b901120  mul.s r1, r3, r1
000160  9f810200  addli r3, r5, 0
000164  8b914050  fmac.s r3, r1, r4
000168  0b924020  mul.s r4, r1, r4
00016c  9ff1f1ff  addli r3, r3, -1
000170  8b915130  div.s r3, r3, r5
000174  80520002  load_param_i r5, 0
000178  8b905120  mul.s r1, r3, r5
00017c  8b915150  fmac.s r3, r3, r5
000180  8b914140  min.s r3, r3, r4
000184  4bc11102  ble.s r3, r1, 1104
000188  e3043f00  loadli.w r9,  24(r30)
00018c  33950128  sext_int2long r[11:12], r3
000190  63443f00  loadli.w r8,  28(r30)
000194  9f010004  addli r3, zero, 512
000198  9f031000  addli r7, zero, 8
00019c  63034f00  loadli.w r6,  32(r30)
0001a0  1f020000  addli r4, zero, 0
0001a4  9f020000  addli r5, zero, 0
0001a8  9f290000  addli r19, zero, 2
0001ac  1f5a0000  addli r20, zero, 5
0001b0  9f4a0000  addli r21, zero, 4
0001b4  9f6c0000  addli r25, zero, 6
0001b8  1f1d0000  addli r26, zero, 1
0001bc  ab8d0000  lui r27, 8
0001c0  1f0e0010  addli r28, zero, 2048
0001c4  1f3c1000  addli r24, zero, 11
0001c8  2b480000  lui r16, 4
0001cc  9f080000  addli r17, zero, 0
0001d0  7334affe  store.d r[11:12], -24(r30)
0001d4  b3950028  sext_int2long r[12:13], r1
0001d8  9ff00400  addli r1, r9, 7
0001dc  8b173430  div.s r15, r8, r3
0001e0  b3160328  sext_int2long r[14:15], r6
0001e4  1b392300  slli r18, r6, 2
0001e8  33940428  sext_int2long r[9:10], r9
0001ec  8b907030  div.s r1, r1, r7
0001f0  733cdffc  store.d r[14:15], -40(r30)
0001f4  73388ffc  store.d r[9:10], -48(r30)
0001f8  674e1ffe  storeli.w r1, -28(r30)
0001fc  5b0f0000  j 120
000200  9f310000  addli r3, zero, 3
000204  2b140100  lui r8, 17
000208  7d800100  xsignal r3, 0
00020c  6303ffff  loadli.w r6,  -8(r30)
000210  7d100c00  xwait r24, 0
000214  9b310301  slli r3, r6, 16
000218  1b337300  slli r6, r6, 7
00021c  8b918110  add.s r3, r3, r8
000220  2b940300  lui r8, 57
000224  0b138310  add.s r6, r6, r8
000228  1f641000  addli r8, zero, 14
00022c  7d100400  xwait r8, 0
000230  1d800900  lock zero, r19
000234  1f743000  addli r8, zero, 31
000238  0d000002  ew_cfg zero, zero, zero, 1
00023c  0d000404  ew_cfg zero, r8, zero, 2
000240  1f040004  addli r8, zero, 512
000244  0d040006  ew_cfg r8, zero, zero, 3
000248  4d830100  ssreduce r6, r3, 0
00024c  9f411000  addli r3, zero, 12
000250  1d900900  unlock r19
000254  7d800100  xsignal r3, 0
000258  9f511000  addli r3, zero, 13
00025c  7d800100  xsignal r3, 0
000260  6b548ffe  load.d r[9:10], -24(r30)
000264  a7950500  addli.d r[12:13], r[12:13], 1
000268  1f120200  addli r4, r4, 1
00026c  93b18504  setlt.sl r3, r[12:13], r[9:10]
000270  b79d0100  beq r3, zero, 868
000274  8b113239  mod.s r3, r4, r19
000278  1bbbe100  slli r22, r3, 14
00027c  e70f3ffe  storeli.w r3, -8(r30)
000280  bb304101  bneq r2, r20, 44
000284  7d900a00  xwait r21, 0
000288  1d800900  lock zero, r19
00028c  9f71f003  addli r3, zero, 511
000290  0d000002  ew_cfg zero, zero, zero, 1
000294  0d100000  ewcoeff_cfg zero, zero, zero, 0
000298  0d800104  ew_cfg zero, r3, zero, 2
00029c  8d030006  ew_cfg r7, zero, zero, 3
0002a0  4d3b0000  ssaux r22, 0
0002a4  1d900900  unlock r19
0002a8  7d800900  xsignal r19, 0
0002ac  3b204101  bneq r2, r20, 8
0002b0  7d900900  xwait r19, 0
0002b4  e3415f00  loadli.w r3,  44(r30)
0002b8  63035f00  loadli.w r6,  40(r30)
0002bc  8b913530  div.s r3, r11, r3
0002c0  8b916130  div.s r3, r3, r6
0002c4  6343cfff  loadli.w r6,  -28(r30)
0002c8  8b916138  mod.s r3, r3, r6
0002cc  1f030004  addli r6, zero, 512
0002d0  b3960128  sext_int2long r[14:15], r3
0002d4  9bbb3100  slli r23, r3, 3
0002d8  9f310000  addli r3, zero, 3
0002dc  97b63602  sll.d r[14:15], r[14:15], r3
0002e0  e3413f00  loadli.w r3,  28(r30)
0002e4  7338dffe  store.d r[14:15], -16(r30)
0002e8  3fa76100  blt.s r3, r6, 456
0002ec  6b548ffd  load.d r[9:10], -40(r30)
0002f0  e3013f00  loadli.w r3,  24(r30)
0002f4  9f800b00  addli r1, r23, 0
0002f8  8bb68620  mul.sl r[14:15], r[14:15], r[9:10]
0002fc  6b540f00  load.d r[9:10], 0(r30)
000300  8b917119  sub.s r3, r3, r23
000304  97b63603  sll.d r[14:15], r[14:15], r19
000308  0b937140  min.s r6, r3, r7
00030c  8b26d410  add.ul r[14:15], r[9:10], r[14:15]
000310  1f040000  addli r8, zero, 0
000314  bb139101  bneq r2, r25, 228
000318  5b0a0000  j 80
00031c  8b918810  add.s r3, r17, r8
000320  eb548f00  load.d r[10:11], 8(r30)
000324  7d900300  xwait r7, 0
000328  1d800a00  lock zero, r21
00032c  1f140400  addli r8, r8, 1
000330  15000000  dma_cfg zero, zero, zero, 0
000334  8b913139  mod.s r3, r3, r19
000338  8ba47411  add.ul r[10:11], r[10:11], r[24:25]
00033c  ab0b0100  lui r23, 16
000340  15000504  dma_cfg zero, r10, zero, 2
000344  9bb1b100  slli r3, r3, 11
000348  8b917111  add.s r3, r3, r23
00034c  9581c407  dma_cfg r3, r9, r28, 3
000350  9f710000  addli r3, zero, 7
000354  150eae09  dma_cfg r28, r28, r26, 4
000358  35000000  dma_run zero
00035c  1d900a00  unlock r21
000360  7d800100  xsignal r3, 0
000364  b7f48700  beq r15, r8, 316
000368  b30b0428  zext_int2long r[24:25], r8
00036c  9f111000  addli r3, zero, 9
000370  97bb3b02  sll.d r[24:25], r[24:25], r3
000374  97bb3b03  sll.d r[24:25], r[24:25], r19
000378  bb1ea1ff  bneq r2, r26, -92
00037c  8b918210  add.s r3, r5, r8
000380  7d900c00  xwait r25, 0
000384  1d800a00  lock zero, r21
000388  8ba47611  add.ul r[10:11], r[14:15], r[24:25]
00038c  15000000  dma_cfg zero, zero, zero, 0
000390  8b913139  mod.s r3, r3, r19
000394  15000504  dma_cfg zero, r10, zero, 2
000398  9bb1e100  slli r3, r3, 14
00039c  8b91b111  add.s r3, r3, r27
0003a0  9581c407  dma_cfg r3, r9, r28, 3
0003a4  150e6908  dma_cfg r28, r18, r6, 4
0003a8  35000000  dma_run zero
0003ac  1d900a00  unlock r21
0003b0  7d000a00  xsignal r20, 0
0003b4  5bedffff  j -152
0003b8  b3040428  zext_int2long r[10:11], r8
0003bc  7d900c00  xwait r25, 0
0003c0  1d800a00  lock zero, r21
0003c4  15000000  dma_cfg zero, zero, zero, 0
0003c8  97b48403  sll.d r[10:11], r[10:11], r24
0003cc  8ba49610  add.ul r[10:11], r[14:15], r[10:11]
0003d0  15000504  dma_cfg zero, r10, zero, 2
0003d4  9581c407  dma_cfg r3, r9, r28, 3
0003d8  150e6908  dma_cfg r28, r18, r6, 4
0003dc  35000000  dma_run zero
0003e0  1d900a00  unlock r21
0003e4  7d000a00  xsignal r20, 0
0003e8  9f920200  addli r5, r5, 1
0003ec  1f140400  addli r8, r8, 1
0003f0  9f980800  addli r17, r17, 1
0003f4  b772f400  beq r8, r15, 188
0003f8  8b913239  mod.s r3, r5, r19
0003fc  9bb1e100  slli r3, r3, 14
000400  8b91b111  add.s r3, r3, r27
000404  b75ea1ff  beq r2, r26, -76
000408  bb0f41ff  bneq r2, r20, -32
00040c  8b943839  mod.s r9, r17, r19
000410  1f750000  addli r10, zero, 7
000414  7d100a00  xwait r20, 0
000418  9f0b0000  addli r23, zero, 0
00041c  7d100500  xwait r10, 0
000420  1d800900  lock zero, r19
000424  2b05803f  lui r10, 260096
000428  0d000002  ew_cfg zero, zero, zero, 1
00042c  0d10a000  ewcoeff_cfg zero, zero, r10, 0
000430  2b050100  lui r10, 16
000434  9bb4b400  slli r9, r9, 11
000438  0b9ca410  add.s r24, r9, r10
00043c  9f74f003  addli r9, zero, 511
000440  0d800404  ew_cfg zero, r9, zero, 2
000444  0d0d0006  ew_cfg r26, zero, zero, 3
000448  8b947111  add.s r9, r3, r23
00044c  9f8b0b10  addli r23, r23, 2048
000450  ad948401  dsmul r9, r9, r24, 0
000454  bbdf0bff  bneq r23, r16, -12
000458  1d900900  unlock r19
00045c  7d800300  xsignal r7, 0
000460  1d800900  lock zero, r19
000464  ab04803f  lui r9, 260096
000468  1f3c1000  addli r24, zero, 11
00046c  9f8b0000  addli r23, r1, 0
000470  0d000002  ew_cfg zero, zero, zero, 1
000474  8d940400  ewcoeff_cfg r9, r9, zero, 0
000478  9f74f001  addli r9, zero, 255
00047c  0d800404  ew_cfg zero, r9, zero, 2
000480  9f042000  addli r9, zero, 16
000484  8d040006  ew_cfg r9, zero, zero, 3
000488  8d849426  ew_cfg r9, r9, r9, 19
00048c  2d0b3b00  dsmadd r22, r22, r3, 0
000490  0d000026  ew_cfg zero, zero, zero, 19
000494  1d900900  unlock r19
000498  7d800c00  xsignal r25, 0
00049c  dbe9ffff  j -180
0004a0  8b928210  add.s r5, r5, r8
0004a4  8b988810  add.s r17, r17, r8
0004a8  1f3c1000  addli r24, zero, 11
0004ac  9f8b0000  addli r23, r1, 0
0004b0  374541ff  beq r2, r20, -688
0004b4  ab110300  lui r3, 49
0004b8  1f330000  addli r6, zero, 3
0004bc  8b113b10  add.s r3, r22, r3
0004c0  37216100  beq r2, r6, 72
0004c4  3b423101  bneq r2, r19, 144
0004c8  1f330000  addli r6, zero, 3
0004cc  7d100300  xwait r6, 0
0004d0  1f231000  addli r6, zero, 10
0004d4  7d100300  xwait r6, 0
0004d8  1d000000  lock zero, zero
0004dc  1f030004  addli r6, zero, 512
0004e0  81090000  ds_cfg r19, zero, 0
0004e4  01030002  ds_cfg r6, zero, 1
0004e8  8103001c  ds_cfg r7, zero, 14
0004ec  01000016  ds_cfg zero, zero, 11
0004f0  0103001a  ds_cfg r6, zero, 13
0004f4  c1017b08  shuffle_coa r3, r22, r7, 4
0004f8  9f111000  addli r3, zero, 9
0004fc  1d100000  unlock zero
000500  7d800a00  xsignal r21, 0
000504  5babffff  j -680
000508  6303ffff  loadli.w r6,  -8(r30)
00050c  1f141000  addli r8, zero, 9
000510  9f340000  addli r9, zero, 3
000514  7d100400  xwait r8, 0
000518  2b140100  lui r8, 17
00051c  1b330301  slli r6, r6, 16
000520  0b138310  add.s r6, r6, r8
000524  1f441000  addli r8, zero, 12
000528  7d100400  xwait r8, 0
00052c  1f040004  addli r8, zero, 512
000530  1d800400  lock zero, r9
000534  11808302  rs_cfg zero, r7, r8, 1
000538  11800306  rs_cfg zero, r7, zero, 3
00053c  31838104  rs_col r6, r3, r8, 2
000540  9f211000  addli r3, zero, 10
000544  1d900400  unlock r9
000548  7d800100  xsignal r3, 0
00054c  7d000c00  xsignal r24, 0
000550  5ba2ffff  j -752
000554  3b3401fe  bneq r2, zero, -756
000558  33940b28  sext_int2long r[9:10], r23
00055c  e301ffff  loadli.w r3,  -8(r30)
000560  9f800b00  addli r1, r23, 0
000564  2b930300  lui r6, 57
000568  a7061400  addli.d r[14:15], r[9:10], 8
00056c  9bb17100  slli r3, r3, 7
000570  733cdffe  store.d r[14:15], -8(r30)
000574  eb560fff  load.d r[14:15], -16(r30)
000578  6b5b8fff  load.d r[23:24], -8(r30)
00057c  8b916110  add.s r3, r3, r6
000580  97b63603  sll.d r[14:15], r[14:15], r19
000584  7338dffe  store.d r[14:15], -16(r30)
000588  eb560ffd  load.d r[14:15], -48(r30)
00058c  8b36db40  min.sl r[14:15], r[23:24], r[14:15]
000590  6b5b0fff  load.d r[23:24], -16(r30)
000594  0bb48648  max.sl r[9:10], r[14:15], r[9:10]
000598  eb560f01  load.d r[14:15], 16(r30)
00059c  0b131418  sub.s r6, r8, r1
0005a0  1f541000  addli r8, zero, 13
0005a4  8ba66611  add.ul r[14:15], r[14:15], r[23:24]
0005a8  7d100400  xwait r8, 0
0005ac  1d000a00  lock zero, r20
0005b0  15000000  dma_cfg zero, zero, zero, 0
0005b4  15000d02  dma_cfg zero, r26, zero, 1
0005b8  15070004  dma_cfg r14, zero, zero, 2
0005bc  95865107  dma_cfg r13, r3, r21, 3
0005c0  9f611000  addli r3, zero, 14
0005c4  958a6a08  dma_cfg r21, r21, r6, 4
0005c8  35000000  dma_run zero
0005cc  1d100a00  unlock r20
0005d0  db91ffff  j -884
0005d4  7d000000  xsignal zero, 0
0005d8  bb600100  bneq r2, zero, 56
0005dc  9f200000  addli r1, zero, 2
0005e0  7d100000  xwait zero, 0
0005e4  7d100000  xwait zero, 0
0005e8  7d100000  xwait zero, 0
0005ec  7d100000  xwait zero, 0
0005f0  7d100000  xwait zero, 0
0005f4  7d100000  xwait zero, 0
0005f8  7d100000  xwait zero, 0
0005fc  7d100000  xwait zero, 0
000600  1d800000  lock zero, r1
000604  0d000020  ew_cfg zero, zero, zero, 16
000608  1d900000  unlock r1
00060c  7d400000  xsignal_mode_cfg zero
000610  9f8e6e00  addli sp, sp, 48
000614  00a00300  mfence { lm, sm, gm }
000618  00100000  exit
00061c  00100000  exit
000620  00100000  exit
000624  00100000  exit
000628  00100000  exit
00062c  00100000  exit
000630  00100000  exit
000634  00100000  exit
000638  00100000  exit
00063c  00100000  exit
000640  00100000  exit
000644  00100000  exit
000648  00100000  exit
00064c  00100000  exit
000650  00100000  exit
000654  00100000  exit
000658  00100000  exit
00065c  00100000  exit
000660  00100000  exit
000664  00100000  exit
000668  00100000  exit
00066c  00100000  exit
000670  00100000  exit
000674  00100000  exit
000678  00100000  exit
00067c  00100000  exit
000680  00100000  exit
000684  00100000  exit
000688  00100000  exit
00068c  00100000  exit
000690  00100000  exit
000694  00100000  exit
000698  00100000  exit
00069c  00100000  exit
0006a0  00100000  exit
0006a4  00100000  exit
0006a8  00100000  exit
0006ac  00100000  exit
0006b0  00100000  exit
0006b4  00100000  exit
0006b8  00100000  exit
0006bc  00100000  exit
0006c0  00100000  exit
0006c4  00100000  exit
0006c8  00100000  exit
0006cc  00100000  exit
0006d0  00100000  exit
0006d4  00100000  exit
0006d8  00100000  exit
0006dc  00100000  exit
0006e0  00100000  exit
0006e4  00100000  exit
0006e8  00100000  exit
0006ec  00100000  exit
0006f0  00100000  exit
0006f4  00100000  exit
0006f8  00100000  exit
0006fc  00100000  exit
000700  00100000  exit
000704  00100000  exit
000708  00100000  exit
00070c  00100000  exit
000710  00100000  exit
000714  00100000  exit
000718  00100000  exit
00071c  00100000  exit
000720  00100000  exit
000724  00100000  exit
000728  00100000  exit
00072c  00100000  exit
000730  00100000  exit
000734  00100000  exit
000738  00100000  exit
00073c  00100000  exit
000740  00100000  exit
000744  00100000  exit
000748  00100000  exit
00074c  00100000  exit
000750  00100000  exit
000754  00100000  exit
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
