; SHA-256 8c11e8bb6cafa3d0eb0de48febee36291ddebabb6da2968698d13a734ddde5e3
; P800 SDNN · XTDK LLVM 19 · 567 / 567 words decoded
; bound names: triton_unk_fused_0
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
0000b4  9f8e6eff  addli sp, sp, -80
0000b8  1f8f2e00  addli r30, sp, 16
0000bc  9f100000  addli r1, zero, 1
0000c0  003c0002  core_id r24
0000c4  63076f00  loadli.w r14,  48(r30)
0000c8  634e5f00  loadli.w r28,  44(r30)
0000cc  7dc00000  xsignal_mode_cfg r1
0000d0  b7100c00  beq r24, zero, 36
0000d4  2bf1ffff  lui r2, 1048575
0000d8  7d900000  xwait r1, 0
0000dc  7d900000  xwait r1, 0
0000e0  7d100000  xwait zero, 0
0000e4  9b10f1ff  ori r1, r2, 4095
0000e8  80a10004  csr_set csr3, r1
0000ec  00d00100  sync_group
0000f0  5b190000  j 200
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
000154  1f411000  addli r2, zero, 12
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
000194  9f600000  addli r1, zero, 6
000198  00d00100  sync_group
00019c  7d800200  xsignal r5, 0
0001a0  7d800000  xsignal r1, 0
0001a4  7d000100  xsignal r2, 0
0001a8  9f001000  addli r1, zero, 8
0001ac  1f211000  addli r2, zero, 10
0001b0  7d800000  xsignal r1, 0
0001b4  7d000100  xsignal r2, 0
0001b8  e3005f00  loadli.w r1,  40(r30)
0001bc  63415f00  loadli.w r2,  44(r30)
0001c0  00d20002  load_param_i r4, 1
0001c4  e3016f00  loadli.w r3,  48(r30)
0001c8  8b101120  mul.s r1, r2, r1
0001cc  1f010200  addli r2, r4, 0
0001d0  0b913050  fmac.s r2, r1, r3
0001d4  8b913020  mul.s r3, r1, r3
0001d8  1f71f1ff  addli r2, r2, -1
0001dc  0b114130  div.s r2, r2, r4
0001e0  00520002  load_param_i r4, 0
0001e4  8b104120  mul.s r1, r2, r4
0001e8  0b114150  fmac.s r2, r2, r4
0001ec  0b113140  min.s r2, r2, r3
0001f0  cb111102  ble.s r2, r1, 1124
0001f4  33940028  sext_int2long r[9:10], r1
0001f8  abf0ff7f  lui r1, 524287
0001fc  6b5a8f00  load.d r[21:22], 8(r30)
000200  b3120128  sext_int2long r[6:7], r2
000204  9f531000  addli r7, zero, 13
000208  9f480000  addli r17, zero, 4
00020c  1f160000  addli r12, zero, 1
000210  9f370000  addli r15, zero, 3
000214  ab850100  lui r11, 24
000218  ab0b807f  lui r23, 522240
00021c  1f050040  addli r10, zero, 8192
000220  9f560000  addli r13, zero, 5
000224  1b9bf0ff  ori r22, r1, 4095
000228  ab800200  lui r1, 40
00022c  733c5ffe  store.d r[6:7], -8(r30)
000230  9b902084  ori r1, r1, 2114
000234  674f1ffe  storeli.w r1, -12(r30)
000238  db1d0000  j 236
00023c  1f210000  addli r2, zero, 2
000240  2b02803f  lui r4, 260096
000244  1f783000  addli r16, zero, 31
000248  1f090002  addli r18, zero, 256
00024c  ab800000  lui r1, 8
000250  9f211000  addli r3, zero, 10
000254  ab850100  lui r11, 24
000258  7d100100  xwait r2, 0
00025c  7d900600  xwait r13, 0
000260  1d000100  lock zero, r2
000264  0d000002  ew_cfg zero, zero, zero, 1
000268  0d120200  ewcoeff_cfg r4, r4, zero, 0
00026c  0d000804  ew_cfg zero, r16, zero, 2
000270  0d090006  ew_cfg r18, zero, zero, 3
000274  0d092927  ew_cfg r18, r18, r18, 19
000278  2d001000  dsmadd zero, zero, r1, 0
00027c  9f600000  addli r1, zero, 6
000280  0d000026  ew_cfg zero, zero, zero, 19
000284  1d100100  unlock r2
000288  7d800000  xsignal r1, 0
00028c  9f001000  addli r1, zero, 8
000290  7d900000  xwait r1, 0
000294  1d000100  lock zero, r2
000298  0d000002  ew_cfg zero, zero, zero, 1
00029c  0d000804  ew_cfg zero, r16, zero, 2
0002a0  0d090006  ew_cfg r18, zero, zero, 3
0002a4  0d090926  ew_cfg r18, r18, zero, 19
0002a8  0d010014  ew_cfg r2, zero, zero, 10
0002ac  e340efff  loadli.w r1,  -12(r30)
0002b0  0d011616  ew_cfg r2, r12, r1, 11
0002b4  abc07f41  lui r1, 268284
0002b8  0d00001a  ew_cfg zero, zero, zero, 13
0002bc  0d80181c  ew_cfg zero, r17, r1, 14
0002c0  ab800100  lui r1, 24
0002c4  0d00001e  ew_cfg zero, zero, zero, 15
0002c8  cd200000  sslut r1, zero, 0
0002cc  0d000014  ew_cfg zero, zero, zero, 10
0002d0  0d000026  ew_cfg zero, zero, zero, 19
0002d4  1d100100  unlock r2
0002d8  7d900100  xwait r3, 0
0002dc  1d000100  lock zero, r2
0002e0  ab010200  lui r3, 32
0002e4  0d000002  ew_cfg zero, zero, zero, 1
0002e8  0d104000  ewcoeff_cfg zero, zero, r4, 0
0002ec  0d000804  ew_cfg zero, r16, zero, 2
0002f0  0d090006  ew_cfg r18, zero, zero, 3
0002f4  0d092927  ew_cfg r18, r18, r18, 19
0002f8  ad111000  dsmul r3, zero, r1, 0
0002fc  9f700000  addli r1, zero, 7
000300  0d000026  ew_cfg zero, zero, zero, 19
000304  1d100100  unlock r2
000308  7d800700  xsignal r15, 0
00030c  7d800000  xsignal r1, 0
000310  9f101000  addli r1, zero, 9
000314  7d800000  xsignal r1, 0
000318  27140400  addli.d r[9:10], r[9:10], 1
00031c  93305404  setlt.sl r1, r[9:10], r[6:7]
000320  b7dc0000  beq r1, zero, 820
000324  8b10e430  div.s r1, r8, r14
000328  33090528  zext_int2long r[19:20], r10
00032c  8b90c031  div.s r1, r1, r28
000330  b3900028  sext_int2long r[2:3], r1
000334  97b17002  sll.d r[4:5], r[2:3], r7
000338  3fb68801  blt.s r17, r24, 396
00033c  377bcc00  beq r24, r12, 732
000340  3b09fc00  bneq r24, r15, 576
000344  9f700000  addli r1, zero, 7
000348  7d900700  xwait r15, 0
00034c  b3010028  zext_int2long r[4:5], zero
000350  7d900000  xwait r1, 0
000354  9f101000  addli r1, zero, 9
000358  7d900000  xwait r1, 0
00035c  9f401000  addli r1, zero, 12
000360  7d900000  xwait r1, 0
000364  3d000000  xfence
000368  00a00300  mfence { lm, sm, gm }
00036c  5b050000  j 40
000370  a7c10100  addli.d r[4:5], r[4:5], 4
000374  2b030100  lui r6, 16
000378  93a22103  setneq.d r5, r[4:5], r[19:20]
00037c  8b906010  add.s r1, r1, r6
000380  73e6d000  stores.w r13, 12(r1)
000384  73e42000  stores.w r2, 8(r1)
000388  73e2f000  stores.w r15, 4(r1)
00038c  73e09001  stores.w r25, 0(r1)
000390  b7f80200  beq r5, zero, 572
000394  9bb02100  slli r1, r3, 2
000398  2b010200  lui r2, 32
00039c  8b93b010  add.s r7, r1, r11
0003a0  efc60000  loads.w r13, 0(r1)
0003a4  0b9d2010  add.s r26, r1, r2
0003a8  efc74000  loads.w r15, 4(r1)
0003ac  6fc38000  loads.w r6, 8(r1)
0003b0  6fc5c000  loads.w r10, 12(r1)
0003b4  6fca0300  loads.w r20, 0(r7)
0003b8  6fcc4300  loads.w r24, 4(r7)
0003bc  6fc18300  loads.w r2, 8(r7)
0003c0  6fcec300  loads.w r28, 12(r7)
0003c4  ef48cd00  loads.w r17, 12(r26)
0003c8  ef438d00  loads.w r7, 8(r26)
0003cc  ef4a4d00  loads.w r21, 4(r26)
0003d0  97866601  and r13, r13, r22
0003d4  170a6a01  and r20, r20, r22
0003d8  938c7601  seteq r25, r13, r23
0003dc  938d0600  seteq r27, r13, zero
0003e0  93020a00  seteq r5, r20, zero
0003e4  13077a01  seteq r14, r20, r23
0003e8  8b864649  max.u r13, r13, r20
0003ec  9386db04  setlt.u r13, r23, r13
0003f0  97825c00  and r5, r25, r5
0003f4  1787ed00  and r14, r27, r14
0003f8  ab0cc07f  lui r25, 523264
0003fc  9792e200  or r5, r5, r14
000400  97925600  or r5, r13, r5
000404  ab06c07f  lui r13, 523264
000408  3ba00200  bneq r5, zero, 8
00040c  ef4c0d00  loads.w r25, 0(r26)
000410  97826701  and r5, r15, r22
000414  17076c01  and r14, r24, r22
000418  93877201  seteq r15, r5, r23
00041c  138d0200  seteq r26, r5, zero
000420  130a0700  seteq r20, r14, zero
000424  130c7701  seteq r24, r14, r23
000428  8b82e248  max.u r5, r5, r14
00042c  93825b04  setlt.u r5, r23, r5
000430  17874701  and r14, r15, r20
000434  97078d01  and r15, r26, r24
000438  1717f700  or r14, r14, r15
00043c  ab07c07f  lui r15, 523264
000440  9792e200  or r5, r5, r14
000444  3ba00200  bneq r5, zero, 8
000448  9f870a00  addli r15, r21, 0
00044c  97026301  and r5, r6, r22
000450  17016101  and r2, r2, r22
000454  13837201  seteq r6, r5, r23
000458  13070100  seteq r14, r2, zero
00045c  130a7101  seteq r20, r2, r23
000460  938a0200  seteq r21, r5, zero
000464  0b812248  max.u r2, r5, r2
000468  13812b04  setlt.u r2, r23, r2
00046c  9702e300  and r5, r6, r14
000470  17834a01  and r6, r21, r20
000474  97926200  or r5, r5, r6
000478  97125100  or r5, r2, r5
00047c  2b01c07f  lui r2, 523264
000480  3ba00200  bneq r5, zero, 8
000484  1f810300  addli r2, r7, 0
000488  97026501  and r5, r10, r22
00048c  17036e01  and r6, r28, r22
000490  93837201  seteq r7, r5, r23
000494  138a0200  seteq r20, r5, zero
000498  13050300  seteq r10, r6, zero
00049c  13077301  seteq r14, r6, r23
0004a0  8b826248  max.u r5, r5, r6
0004a4  93825b04  setlt.u r5, r23, r5
0004a8  1783a300  and r6, r7, r10
0004ac  9703ea00  and r7, r20, r14
0004b0  17137300  or r6, r6, r7
0004b4  97926200  or r5, r5, r6
0004b8  bbea02fe  bneq r5, zero, -328
0004bc  9f860800  addli r13, r17, 0
0004c0  5bd6ffff  j -336
0004c4  b765dcfe  beq r24, r13, -648
0004c8  9f600000  addli r1, zero, 6
0004cc  bb521c00  bneq r24, r1, 180
0004d0  b3000028  zext_int2long r[2:3], zero
0004d4  9f620000  addli r5, zero, 6
0004d8  1f4e0000  addli r28, zero, 4
0004dc  1f070010  addli r14, zero, 2048
0004e0  27080a00  addli.d r[17:18], r[21:22], 0
0004e4  7d900200  xwait r5, 0
0004e8  27830000  addli.d r[7:8], r[2:3], 0
0004ec  ab820000  lui r5, 8
0004f0  0bac3010  add.ul r[25:26], r[2:3], r[4:5]
0004f4  330d0728  zext_int2long r[27:28], r14
0004f8  0b3a1918  sub.sl r[21:22], r[19:20], r[2:3]
0004fc  1bb52000  slli r10, r1, 2
000500  1d000e00  lock zero, r28
000504  15000600  dma_cfg zero, r12, zero, 0
000508  0f1cac71  mod.sl r[25:26], r[25:26], r[27:28]
00050c  0b155510  add.s r10, r10, r5
000510  0b3d8d19  sub.sl r[27:28], r[27:28], r[25:26]
000514  173ccc02  sll.d r[25:26], r[25:26], r12
000518  0b2aaa41  min.ul r[21:22], r[21:22], r[27:28]
00051c  338d0728  zext_int2long r[27:28], r15
000520  0b2c8811  add.ul r[25:26], r[17:18], r[25:26]
000524  9326a305  setlt.ul r13, r[7:8], r[27:28]
000528  9b371a00  slli r15, r20, 1
00052c  15800c04  dma_cfg zero, r25, zero, 2
000530  27130300  addli.d r[7:8], r[7:8], 1
000534  8b201a10  add.ul r[2:3], r[21:22], r[2:3]
000538  1505fc06  dma_cfg r10, r24, r15, 3
00053c  1b352a00  slli r10, r20, 2
000540  1585c708  dma_cfg r10, r15, r12, 4
000544  9f370000  addli r15, zero, 3
000548  35000000  dma_run zero
00054c  1d100e00  unlock r28
000550  bb8e06fe  bneq r13, zero, -96
000554  9f560000  addli r13, zero, 5
000558  63076f00  loadli.w r14,  48(r30)
00055c  634e5f00  loadli.w r28,  44(r30)
000560  270a0800  addli.d r[21:22], r[17:18], 0
000564  9f531000  addli r7, zero, 13
000568  1f050040  addli r10, zero, 8192
00056c  9f480000  addli r17, zero, 4
000570  003c0002  core_id r24
000574  7d800600  xsignal r13, 0
000578  eb528fff  load.d r[6:7], -8(r30)
00057c  dbb3ffff  j -612
000580  3b660cfe  bneq r24, zero, -616
000584  97b0c102  sll.d r[2:3], r[4:5], r12
000588  9f311000  addli r3, zero, 11
00058c  7d900100  xwait r3, 0
000590  eb510f01  load.d r[4:5], 16(r30)
000594  1d800600  lock zero, r13
000598  15060000  dma_cfg r12, zero, zero, 0
00059c  15000602  dma_cfg zero, r12, zero, 1
0005a0  8ba01110  add.ul r[2:3], r[4:5], r[2:3]
0005a4  ab810000  lui r3, 8
0005a8  2b020100  lui r4, 16
0005ac  15010004  dma_cfg r2, zero, zero, 2
0005b0  95003206  dma_cfg r1, r4, r3, 3
0005b4  ab400000  lui r1, 4
0005b8  9580c108  dma_cfg r1, r3, r12, 4
0005bc  9f401000  addli r1, zero, 12
0005c0  35000000  dma_run zero
0005c4  1d900600  unlock r13
0005c8  dba9ffff  j -692
0005cc  9f480000  addli r17, zero, 4
0005d0  9f001000  addli r1, zero, 8
0005d4  00200100  mfence { sm }
0005d8  63076f00  loadli.w r14,  48(r30)
0005dc  634e5f00  loadli.w r28,  44(r30)
0005e0  6b5a8f00  load.d r[21:22], 8(r30)
0005e4  003c0002  core_id r24
0005e8  9f531000  addli r7, zero, 13
0005ec  9f370000  addli r15, zero, 3
0005f0  1f050040  addli r10, zero, 8192
0005f4  9f560000  addli r13, zero, 5
0005f8  7d800800  xsignal r17, 0
0005fc  7d800000  xsignal r1, 0
000600  9f201000  addli r1, zero, 10
000604  7d800000  xsignal r1, 0
000608  9f301000  addli r1, zero, 11
00060c  7d800000  xsignal r1, 0
000610  eb528fff  load.d r[6:7], -8(r30)
000614  dba0ffff  j -764
000618  97b0c102  sll.d r[2:3], r[4:5], r12
00061c  eb510f00  load.d r[4:5], 0(r30)
000620  7d900800  xwait r17, 0
000624  1d800800  lock zero, r17
000628  15000600  dma_cfg zero, r12, zero, 0
00062c  8ba01110  add.ul r[2:3], r[4:5], r[2:3]
000630  ab410000  lui r3, 4
000634  15000104  dma_cfg zero, r2, zero, 2
000638  15803006  dma_cfg zero, r1, r3, 3
00063c  ab800000  lui r1, 8
000640  9580c108  dma_cfg r1, r3, r12, 4
000644  35000000  dma_run zero
000648  1d900800  unlock r17
00064c  9f200000  addli r1, zero, 2
000650  db98ffff  j -828
000654  7d000000  xsignal zero, 0
000658  bb600c00  bneq r24, zero, 56
00065c  9f200000  addli r1, zero, 2
000660  7d100000  xwait zero, 0
000664  7d100000  xwait zero, 0
000668  7d100000  xwait zero, 0
00066c  7d100000  xwait zero, 0
000670  7d100000  xwait zero, 0
000674  7d100000  xwait zero, 0
000678  7d100000  xwait zero, 0
00067c  7d100000  xwait zero, 0
000680  1d800000  lock zero, r1
000684  0d000020  ew_cfg zero, zero, zero, 16
000688  1d900000  unlock r1
00068c  7d400000  xsignal_mode_cfg zero
000690  9f8e2e00  addli sp, sp, 16
000694  00a00300  mfence { lm, sm, gm }
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
