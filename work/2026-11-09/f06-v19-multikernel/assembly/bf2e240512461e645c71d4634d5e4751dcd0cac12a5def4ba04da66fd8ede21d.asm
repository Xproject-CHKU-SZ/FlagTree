; SHA-256 bf2e240512461e645c71d4634d5e4751dcd0cac12a5def4ba04da66fd8ede21d
; P800 SDNN · XTDK LLVM 19 · 1005 / 1005 words decoded
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
0000b4  9f8e3eff  addli sp, sp, -104
0000b8  1f8f5e00  addli r30, sp, 40
0000bc  9f100000  addli r1, zero, 1
0000c0  00360002  core_id r12
0000c4  e3056f00  loadli.w r11,  48(r30)
0000c8  63485f00  loadli.w r16,  44(r30)
0000cc  7dc00000  xsignal_mode_cfg r1
0000d0  b7100600  beq r12, zero, 36
0000d4  2bf1ffff  lui r2, 1048575
0000d8  7d900000  xwait r1, 0
0000dc  7d900000  xwait r1, 0
0000e0  7d100000  xwait zero, 0
0000e4  9b10f1ff  ori r1, r2, 4095
0000e8  80a10004  csr_set csr3, r1
0000ec  00d00100  sync_group
0000f0  db1e0000  j 244
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
000154  1f011000  addli r2, zero, 8
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
000194  9f500000  addli r1, zero, 5
000198  00d00100  sync_group
00019c  7d800000  xsignal r1, 0
0001a0  7d000100  xsignal r2, 0
0001a4  9f502000  addli r1, zero, 21
0001a8  1f211000  addli r2, zero, 10
0001ac  7d800000  xsignal r1, 0
0001b0  7d000100  xsignal r2, 0
0001b4  9f401000  addli r1, zero, 12
0001b8  1f611000  addli r2, zero, 14
0001bc  7d800000  xsignal r1, 0
0001c0  7d000100  xsignal r2, 0
0001c4  9f203000  addli r1, zero, 26
0001c8  1f712000  addli r2, zero, 23
0001cc  7d800000  xsignal r1, 0
0001d0  7d000100  xsignal r2, 0
0001d4  9f503000  addli r1, zero, 29
0001d8  1f713000  addli r2, zero, 31
0001dc  7d800000  xsignal r1, 0
0001e0  7d000100  xsignal r2, 0
0001e4  e3005f00  loadli.w r1,  40(r30)
0001e8  63415f00  loadli.w r2,  44(r30)
0001ec  00d20002  load_param_i r4, 1
0001f0  e3016f00  loadli.w r3,  48(r30)
0001f4  8b101120  mul.s r1, r2, r1
0001f8  1f010200  addli r2, r4, 0
0001fc  0b913050  fmac.s r2, r1, r3
000200  8b913020  mul.s r3, r1, r3
000204  1f71f1ff  addli r2, r2, -1
000208  0b114130  div.s r2, r2, r4
00020c  00520002  load_param_i r4, 0
000210  8b104120  mul.s r1, r2, r4
000214  0b114150  fmac.s r2, r2, r4
000218  0b113140  min.s r2, r2, r3
00021c  4b4c1104  ble.s r2, r1, 2832
000220  33110128  sext_int2long r[3:4], r2
000224  9f1d0000  addli r27, zero, 1
000228  1f350000  addli r10, zero, 3
00022c  ab098041  lui r19, 268288
000230  73342ffe  store.d r[3:4], -24(r30)
000234  b3910028  sext_int2long r[4:5], r1
000238  9f000010  addli r1, zero, 2048
00023c  1f010040  addli r2, zero, 8192
000240  b3820028  zext_int2long r[6:7], r1
000244  ab20373d  lui r1, 250738
000248  b3060128  zext_int2long r[14:15], r2
00024c  2b414c3f  lui r2, 259268
000250  9b903071  ori r1, r1, 1811
000254  733c5ffe  store.d r[6:7], -8(r30)
000258  ab02807f  lui r5, 522240
00025c  e74d1ffe  storeli.w r1, -36(r30)
000260  9b10a122  ori r1, r2, 554
000264  2bf17f00  lui r2, 2047
000268  e70d1ffe  storeli.w r1, -40(r30)
00026c  abf0ff7f  lui r1, 524287
000270  1b1cf1ff  ori r24, r2, 4095
000274  1b9ef0ff  ori r28, r1, 4095
000278  b3000028  zext_int2long r[2:3], zero
00027c  73301ffe  store.d r[2:3], -32(r30)
000280  db090000  j 76
000284  9f201000  addli r1, zero, 10
000288  00200100  mfence { sm }
00028c  e3056f00  loadli.w r11,  48(r30)
000290  63485f00  loadli.w r16,  44(r30)
000294  00360002  core_id r12
000298  1f350000  addli r10, zero, 3
00029c  7d800000  xsignal r1, 0
0002a0  9f402000  addli r1, zero, 20
0002a4  7d800000  xsignal r1, 0
0002a8  9f503000  addli r1, zero, 29
0002ac  7d800000  xsignal r1, 0
0002b0  9f703000  addli r1, zero, 31
0002b4  7d800000  xsignal r1, 0
0002b8  eb510fff  load.d r[4:5], -16(r30)
0002bc  eb508ffe  load.d r[2:3], -24(r30)
0002c0  a7910100  addli.d r[4:5], r[4:5], 1
0002c4  93b01104  setlt.sl r1, r[4:5], r[2:3]
0002c8  b7990004  beq r1, zero, 2660
0002cc  8b90b130  div.s r1, r3, r11
0002d0  1f531000  addli r6, zero, 13
0002d4  73383ffe  store.d r[4:5], -16(r30)
0002d8  8b900031  div.s r1, r1, r16
0002dc  b3900028  sext_int2long r[2:3], r1
0002e0  17b36002  sll.d r[7:8], r[2:3], r6
0002e4  9f600000  addli r1, zero, 6
0002e8  37511600  beq r12, r1, 84
0002ec  9f000000  addli r1, zero, 0
0002f0  3b61b601  bneq r12, r27, 88
0002f4  1f520000  addli r4, zero, 5
0002f8  6b540f00  load.d r[9:10], 0(r30)
0002fc  1731b303  sll.d r[3:4], r[7:8], r27
000300  7d100200  xwait r4, 0
000304  1f420000  addli r4, zero, 4
000308  0b212410  add.ul r[3:4], r[9:10], r[3:4]
00030c  2b440000  lui r8, 4
000310  1d000200  lock zero, r4
000314  15800d00  dma_cfg zero, r27, zero, 0
000318  15800104  dma_cfg zero, r3, zero, 2
00031c  15008106  dma_cfg zero, r2, r8, 3
000320  2b810000  lui r2, 8
000324  1501b409  dma_cfg r2, r8, r27, 4
000328  1f210000  addli r2, zero, 2
00032c  35000000  dma_run zero
000330  1d100200  unlock r4
000334  7d000100  xsignal r2, 0
000338  5b020000  j 16
00033c  9f100000  addli r1, zero, 1
000340  1f011000  addli r2, zero, 8
000344  7d100100  xwait r2, 0
000348  eb580ffe  load.d r[18:19], -32(r30)
00034c  27840800  addli.d r[9:10], r[18:19], 0
000350  5b0c0000  j 96
000354  1f220000  addli r4, zero, 2
000358  9f4b0000  addli r23, zero, 4
00035c  1731b103  sll.d r[3:4], r[3:4], r27
000360  1b352400  slli r10, r8, 2
000364  ab870000  lui r15, 8
000368  1bba2a00  slli r20, r21, 2
00036c  b30c0228  zext_int2long r[26:27], r4
000370  1d800b00  lock zero, r23
000374  0b15f510  add.s r10, r10, r15
000378  9bb71a00  slli r15, r21, 1
00037c  15800d00  dma_cfg zero, r27, zero, 0
000380  13a21c05  setlt.ul r4, r[26:27], r[18:19]
000384  eb5c8f00  load.d r[26:27], 8(r30)
000388  0ba12c10  add.ul r[3:4], r[26:27], r[3:4]
00038c  15800104  dma_cfg zero, r3, zero, 2
000390  1505f106  dma_cfg r10, r2, r15, 3
000394  1f350000  addli r10, zero, 3
000398  158ab709  dma_cfg r20, r15, r27, 4
00039c  35000000  dma_run zero
0003a0  1d900b00  unlock r23
0003a4  3b270200  bneq r4, zero, 456
0003a8  a7980800  addli.d r[18:19], r[18:19], 1
0003ac  0ba48a10  add.ul r[9:10], r[22:23], r[9:10]
0003b0  6b5a8fff  load.d r[21:22], -8(r30)
0003b4  0b216410  add.ul r[3:4], r[9:10], r[7:8]
0003b8  0bbb8618  sub.sl r[23:24], r[14:15], r[9:10]
0003bc  0f114171  mod.sl r[3:4], r[3:4], r[21:22]
0003c0  0b3a2a18  sub.sl r[21:22], r[21:22], r[3:4]
0003c4  8b2a4b41  min.ul r[22:23], r[23:24], r[21:22]
0003c8  3bbe00fe  bneq r1, zero, -116
0003cc  33010528  zext_int2long r[3:4], r10
0003d0  13a12804  setlt.ul r2, r[18:19], r[3:4]
0003d4  3b5f01fe  bneq r2, zero, -44
0003d8  9f500000  addli r1, zero, 5
0003dc  b7061600  beq r12, r1, 416
0003e0  bb53a604  bneq r12, r10, 2292
0003e4  9f301000  addli r1, zero, 11
0003e8  7d100500  xwait r10, 0
0003ec  33030028  zext_int2long r[7:8], zero
0003f0  2b060300  lui r12, 48
0003f4  7d900000  xwait r1, 0
0003f8  9f501000  addli r1, zero, 13
0003fc  7d900000  xwait r1, 0
000400  9f502000  addli r1, zero, 21
000404  7d900000  xwait r1, 0
000408  3d000000  xfence
00040c  00a00300  mfence { lm, sm, gm }
000410  5b050000  j 40
000414  27430300  addli.d r[7:8], r[7:8], 4
000418  ab010100  lui r3, 16
00041c  9320d302  setneq.d r1, r[7:8], r[14:15]
000420  8b113210  add.s r3, r4, r3
000424  73e6a100  stores.w r10, 12(r3)
000428  73e42100  stores.w r2, 8(r3)
00042c  73e22101  stores.w r18, 4(r3)
000430  73e08100  stores.w r8, 0(r3)
000434  37de0000  beq r1, zero, 916
000438  1b322300  slli r4, r6, 2
00043c  ab000200  lui r1, 32
000440  ab850200  lui r11, 40
000444  8b101210  add.s r1, r4, r1
000448  6f440200  loads.w r8, 0(r4)
00044c  8b1bb210  add.s r23, r4, r11
000450  ef414200  loads.w r3, 4(r4)
000454  6f418200  loads.w r2, 8(r4)
000458  ef44c200  loads.w r9, 12(r4)
00045c  6fc50000  loads.w r10, 0(r1)
000460  6fc94000  loads.w r18, 4(r1)
000464  efca8000  loads.w r21, 8(r1)
000468  efc7c000  loads.w r15, 12(r1)
00046c  efc0cb00  loads.w r1, 12(r23)
000470  efc88b00  loads.w r17, 8(r23)
000474  6fcb4b00  loads.w r22, 4(r23)
000478  1704c401  and r8, r8, r28
00047c  1705c501  and r10, r10, r28
000480  130a0400  seteq r20, r8, zero
000484  930c5400  seteq r25, r8, r5
000488  130d5500  seteq r26, r10, r5
00048c  930d0500  seteq r27, r10, zero
000490  0b048548  max.u r8, r10, r8
000494  13848204  setlt.u r8, r5, r8
000498  17054d01  and r10, r26, r20
00049c  178a9d01  and r20, r27, r25
0004a0  17154501  or r10, r10, r20
0004a4  171aa400  or r20, r8, r10
0004a8  2b05c07f  lui r10, 523264
0004ac  2b04c07f  lui r8, 523264
0004b0  3b200a00  bneq r20, zero, 8
0004b4  6fc40b00  loads.w r8, 0(r23)
0004b8  1709c901  and r18, r18, r28
0004bc  9781c101  and r3, r3, r28
0004c0  130a5900  seteq r20, r18, r5
0004c4  938b0100  seteq r23, r3, zero
0004c8  938c5100  seteq r25, r3, r5
0004cc  130d0900  seteq r26, r18, zero
0004d0  8b013948  max.u r3, r18, r3
0004d4  93813204  setlt.u r3, r5, r3
0004d8  17097a01  and r18, r20, r23
0004dc  170a9d01  and r20, r26, r25
0004e0  17194901  or r18, r18, r20
0004e4  97912101  or r3, r3, r18
0004e8  2b09c07f  lui r18, 523264
0004ec  3ba00100  bneq r3, zero, 8
0004f0  1f090b00  addli r18, r22, 0
0004f4  9781ca01  and r3, r21, r28
0004f8  1701c101  and r2, r2, r28
0004fc  138a5100  seteq r20, r3, r5
000500  930a0100  seteq r21, r2, zero
000504  130b5100  seteq r22, r2, r5
000508  938b0100  seteq r23, r3, zero
00050c  0b812148  max.u r2, r3, r2
000510  13812204  setlt.u r2, r5, r2
000514  97015a01  and r3, r20, r21
000518  178a6b01  and r20, r23, r22
00051c  97914101  or r3, r3, r20
000520  97113100  or r3, r2, r3
000524  2b01c07f  lui r2, 523264
000528  3ba00100  bneq r3, zero, 8
00052c  1f810800  addli r2, r17, 0
000530  9781c701  and r3, r15, r28
000534  9784c401  and r9, r9, r28
000538  93875100  seteq r15, r3, r5
00053c  938a0100  seteq r21, r3, zero
000540  93880400  seteq r17, r9, zero
000544  138a5400  seteq r20, r9, r5
000548  8b819148  max.u r3, r3, r9
00054c  93813204  setlt.u r3, r5, r3
000550  97841701  and r9, r15, r17
000554  97874a01  and r15, r21, r20
000558  9794f400  or r9, r9, r15
00055c  97919100  or r3, r3, r9
000560  bbda01fe  bneq r3, zero, -332
000564  1f850000  addli r10, r1, 0
000568  dbd5ffff  j -340
00056c  9f700000  addli r1, zero, 7
000570  7d800000  xsignal r1, 0
000574  9f500000  addli r1, zero, 5
000578  bb2916fe  bneq r12, r1, -408
00057c  1f220000  addli r4, zero, 2
000580  9f700000  addli r1, zero, 7
000584  2b03803f  lui r6, 260096
000588  9f733000  addli r7, zero, 31
00058c  1f040002  addli r8, zero, 256
000590  1f610000  addli r2, zero, 6
000594  ab04003f  lui r9, 258048
000598  9f611000  addli r3, zero, 14
00059c  ab070100  lui r15, 16
0005a0  ab880300  lui r17, 56
0005a4  7d100200  xwait r4, 0
0005a8  7d900000  xwait r1, 0
0005ac  1d000200  lock zero, r4
0005b0  ab800000  lui r1, 8
0005b4  0d000002  ew_cfg zero, zero, zero, 1
0005b8  0d130300  ewcoeff_cfg r6, r6, zero, 0
0005bc  0d800304  ew_cfg zero, r7, zero, 2
0005c0  0d040006  ew_cfg r8, zero, zero, 3
0005c4  0d048426  ew_cfg r8, r8, r8, 19
0005c8  2d001000  dsmadd zero, zero, r1, 0
0005cc  9f001000  addli r1, zero, 8
0005d0  0d000026  ew_cfg zero, zero, zero, 19
0005d4  1d100200  unlock r4
0005d8  7d000100  xsignal r2, 0
0005dc  7d800000  xsignal r1, 0
0005e0  9f201000  addli r1, zero, 10
0005e4  7d900000  xwait r1, 0
0005e8  1d000200  lock zero, r4
0005ec  ab800100  lui r1, 24
0005f0  0d000002  ew_cfg zero, zero, zero, 1
0005f4  8d140000  ewcoeff_cfg r9, zero, zero, 0
0005f8  0d800304  ew_cfg zero, r7, zero, 2
0005fc  0d040006  ew_cfg r8, zero, zero, 3
000600  0d040426  ew_cfg r8, r8, zero, 19
000604  cd500000  hp_ssmul r1, zero, zero, 0
000608  9f101000  addli r1, zero, 9
00060c  0d000026  ew_cfg zero, zero, zero, 19
000610  1d100200  unlock r4
000614  7d800000  xsignal r1, 0
000618  9f401000  addli r1, zero, 12
00061c  7d900000  xwait r1, 0
000620  1d000200  lock zero, r4
000624  ab000200  lui r1, 32
000628  0d000002  ew_cfg zero, zero, zero, 1
00062c  0d106000  ewcoeff_cfg zero, zero, r6, 0
000630  0d800304  ew_cfg zero, r7, zero, 2
000634  0d040006  ew_cfg r8, zero, zero, 3
000638  0d048426  ew_cfg r8, r8, r8, 19
00063c  ad100000  dsmul r1, zero, zero, 0
000640  0d000026  ew_cfg zero, zero, zero, 19
000644  1d100200  unlock r4
000648  7d900100  xwait r3, 0
00064c  1d000200  lock zero, r4
000650  ab810200  lui r3, 40
000654  0d000002  ew_cfg zero, zero, zero, 1
000658  0d106000  ewcoeff_cfg zero, zero, r6, 0
00065c  0d800304  ew_cfg zero, r7, zero, 2
000660  0d040006  ew_cfg r8, zero, zero, 3
000664  0d048426  ew_cfg r8, r8, r8, 19
000668  ad910000  dsmul r3, r1, zero, 0
00066c  9f301000  addli r1, zero, 11
000670  9f410000  addli r3, zero, 4
000674  0d000026  ew_cfg zero, zero, zero, 19
000678  1d100200  unlock r4
00067c  7d000500  xsignal r10, 0
000680  7d800000  xsignal r1, 0
000684  9f501000  addli r1, zero, 13
000688  7d800000  xsignal r1, 0
00068c  9f701000  addli r1, zero, 15
000690  7d900100  xwait r3, 0
000694  7d900000  xwait r1, 0
000698  9f702000  addli r1, zero, 23
00069c  7d900000  xwait r1, 0
0006a0  1d000200  lock zero, r4
0006a4  0d000002  ew_cfg zero, zero, zero, 1
0006a8  e340bfff  loadli.w r1,  -36(r30)
0006ac  0d930000  ewcoeff_cfg r6, r1, zero, 0
0006b0  9f002000  addli r1, zero, 16
0006b4  0d800304  ew_cfg zero, r7, zero, 2
0006b8  0d040006  ew_cfg r8, zero, zero, 3
0006bc  0d048426  ew_cfg r8, r8, r8, 19
0006c0  ad08f000  dsmadd r17, zero, r15, 0
0006c4  0d000026  ew_cfg zero, zero, zero, 19
0006c8  1d100200  unlock r4
0006cc  7d800000  xsignal r1, 0
0006d0  1d000200  lock zero, r4
0006d4  0d000002  ew_cfg zero, zero, zero, 1
0006d8  e300bfff  loadli.w r1,  -40(r30)
0006dc  8d100000  ewcoeff_cfg r1, zero, zero, 0
0006e0  9f602000  addli r1, zero, 22
0006e4  0d800304  ew_cfg zero, r7, zero, 2
0006e8  0d040006  ew_cfg r8, zero, zero, 3
0006ec  0d040426  ew_cfg r8, r8, zero, 19
0006f0  cdd81801  hp_ssmul r17, r17, r17, 0
0006f4  0d000026  ew_cfg zero, zero, zero, 19
0006f8  1d100200  unlock r4
0006fc  7d800000  xsignal r1, 0
000700  9f102000  addli r1, zero, 17
000704  7d900000  xwait r1, 0
000708  1d000200  lock zero, r4
00070c  9b903884  ori r1, r17, 2115
000710  0d000002  ew_cfg zero, zero, zero, 1
000714  0d800304  ew_cfg zero, r7, zero, 2
000718  0d040006  ew_cfg r8, zero, zero, 3
00071c  0d040426  ew_cfg r8, r8, zero, 19
000720  0d050014  ew_cfg r10, zero, zero, 10
000724  0d821d16  ew_cfg r4, r27, r1, 11
000728  abc07f41  lui r1, 268284
00072c  0d00001a  ew_cfg zero, zero, zero, 13
000730  0d80111c  ew_cfg zero, r3, r1, 14
000734  9f202000  addli r1, zero, 18
000738  0d00001e  ew_cfg zero, zero, zero, 15
00073c  cda70700  sslut r15, r15, 0
000740  0d000014  ew_cfg zero, zero, zero, 10
000744  0d000026  ew_cfg zero, zero, zero, 19
000748  1d100200  unlock r4
00074c  7d800000  xsignal r1, 0
000750  9f303000  addli r1, zero, 27
000754  7d900000  xwait r1, 0
000758  1d000200  lock zero, r4
00075c  ab000400  lui r1, 64
000760  0d000002  ew_cfg zero, zero, zero, 1
000764  0d136000  ewcoeff_cfg r6, zero, r6, 0
000768  0d800304  ew_cfg zero, r7, zero, 2
00076c  0d040006  ew_cfg r8, zero, zero, 3
000770  0d040426  ew_cfg r8, r8, zero, 19
000774  ad801000  dsmadd r1, r1, r1, 0
000778  0d000026  ew_cfg zero, zero, zero, 19
00077c  1d100200  unlock r4
000780  7d100100  xwait r2, 0
000784  7d900300  xwait r7, 0
000788  1d000200  lock zero, r4
00078c  2b810400  lui r2, 72
000790  0d000002  ew_cfg zero, zero, zero, 1
000794  0d109000  ewcoeff_cfg zero, zero, r9, 0
000798  0d800304  ew_cfg zero, r7, zero, 2
00079c  0d040006  ew_cfg r8, zero, zero, 3
0007a0  0d048426  ew_cfg r8, r8, r8, 19
0007a4  2d111000  dsmul r2, zero, r1, 0
0007a8  9f500000  addli r1, zero, 5
0007ac  0d000026  ew_cfg zero, zero, zero, 19
0007b0  1d100200  unlock r4
0007b4  7d800000  xsignal r1, 0
0007b8  9f403000  addli r1, zero, 28
0007bc  7d800000  xsignal r1, 0
0007c0  9f603000  addli r1, zero, 30
0007c4  5b5effff  j -1296
0007c8  9f400000  addli r1, zero, 4
0007cc  00200100  mfence { sm }
0007d0  2b850300  lui r10, 56
0007d4  7d800000  xsignal r1, 0
0007d8  9f401000  addli r1, zero, 12
0007dc  7d800000  xsignal r1, 0
0007e0  9f601000  addli r1, zero, 14
0007e4  7d800000  xsignal r1, 0
0007e8  9f701000  addli r1, zero, 15
0007ec  7d800000  xsignal r1, 0
0007f0  9f602000  addli r1, zero, 22
0007f4  7d900000  xwait r1, 0
0007f8  9f203000  addli r1, zero, 26
0007fc  7d900000  xwait r1, 0
000800  3d000000  xfence
000804  b3000028  zext_int2long r[2:3], zero
000808  00a00300  mfence { lm, sm, gm }
00080c  9bb12000  slli r3, r1, 2
000810  a7801000  addli.d r[2:3], r[2:3], 8
000814  0b92a110  add.s r4, r3, r10
000818  8b91c110  add.s r3, r3, r12
00081c  6f538200  loads.d r[7:8], 8(r4)
000820  6f540200  loads.d r[9:10], 0(r4)
000824  ef588201  loads.d r[18:19], 24(r4)
000828  6f5a0201  loads.d r[21:22], 16(r4)
00082c  13a2d002  setneq.d r4, r[2:3], r[14:15]
000830  73f46100  stores.d r[7:8], 8(r3)
000834  73f08100  stores.d r[9:10], 0(r3)
000838  73fc1101  stores.d r[18:19], 24(r3)
00083c  73f84101  stores.d r[21:22], 16(r3)
000840  3b3f02fe  bneq r4, zero, -52
000844  9f702000  addli r1, zero, 23
000848  00200100  mfence { sm }
00084c  1f013000  addli r2, zero, 24
000850  33030028  zext_int2long r[7:8], zero
000854  ab010080  lui r3, 524288
000858  7d800000  xsignal r1, 0
00085c  9f002000  addli r1, zero, 16
000860  7d000100  xsignal r2, 0
000864  7d900000  xwait r1, 0
000868  7d100100  xwait r2, 0
00086c  3d000000  xfence
000870  00a00300  mfence { lm, sm, gm }
000874  5b070000  j 56
000878  27031300  addli.d r[7:8], r[7:8], 8
00087c  ab000100  lui r1, 16
000880  1321d302  setneq.d r2, r[7:8], r[14:15]
000884  8b101910  add.s r1, r18, r1
000888  73e69001  stores.w r25, 12(r1)
00088c  73e47001  stores.w r23, 8(r1)
000890  73e25001  stores.w r21, 4(r1)
000894  73e04000  stores.w r4, 0(r1)
000898  73eef000  stores.w r15, 28(r1)
00089c  73eca000  stores.w r10, 24(r1)
0008a0  73ea9000  stores.w r9, 20(r1)
0008a4  73e88000  stores.w r8, 16(r1)
0008a8  37430100  beq r2, zero, 208
0008ac  1b392300  slli r18, r6, 2
0008b0  8b10c910  add.s r1, r18, r12
0008b4  6fc20000  loads.w r4, 0(r1)
0008b8  efccc000  loads.w r25, 12(r1)
0008bc  efcb8000  loads.w r23, 8(r1)
0008c0  efca4000  loads.w r21, 4(r1)
0008c4  efc7c001  loads.w r15, 28(r1)
0008c8  6fc58001  loads.w r10, 24(r1)
0008cc  efc44001  loads.w r9, 20(r1)
0008d0  6fc40001  loads.w r8, 16(r1)
0008d4  9700c201  and r1, r4, r28
0008d8  93801904  setlt.u r1, r19, r1
0008dc  37b00000  beq r1, zero, 12
0008e0  97003200  and r1, r4, r3
0008e4  17923001  or r4, r1, r19
0008e8  9780ca01  and r1, r21, r28
0008ec  93801904  setlt.u r1, r19, r1
0008f0  37b00000  beq r1, zero, 12
0008f4  97803a00  and r1, r21, r3
0008f8  979a3001  or r21, r1, r19
0008fc  9780cb01  and r1, r23, r28
000900  93801904  setlt.u r1, r19, r1
000904  37b00000  beq r1, zero, 12
000908  97803b00  and r1, r23, r3
00090c  979b3001  or r23, r1, r19
000910  9780cc01  and r1, r25, r28
000914  93801904  setlt.u r1, r19, r1
000918  37b00000  beq r1, zero, 12
00091c  97803c00  and r1, r25, r3
000920  979c3001  or r25, r1, r19
000924  9700c401  and r1, r8, r28
000928  93801904  setlt.u r1, r19, r1
00092c  37b00000  beq r1, zero, 12
000930  97003400  and r1, r8, r3
000934  17943001  or r8, r1, r19
000938  9780c401  and r1, r9, r28
00093c  93801904  setlt.u r1, r19, r1
000940  37b00000  beq r1, zero, 12
000944  97803400  and r1, r9, r3
000948  97943001  or r9, r1, r19
00094c  9700c501  and r1, r10, r28
000950  93801904  setlt.u r1, r19, r1
000954  37b00000  beq r1, zero, 12
000958  97003500  and r1, r10, r3
00095c  17953001  or r10, r1, r19
000960  9780c701  and r1, r15, r28
000964  93801904  setlt.u r1, r19, r1
000968  37cc00fe  beq r1, zero, -240
00096c  97803700  and r1, r15, r3
000970  97973001  or r15, r1, r19
000974  dbe0ffff  j -252
000978  9f102000  addli r1, zero, 17
00097c  00200100  mfence { sm }
000980  1f113000  addli r2, zero, 25
000984  b30c0028  zext_int2long r[26:27], zero
000988  7d800000  xsignal r1, 0
00098c  9f202000  addli r1, zero, 18
000990  7d000100  xsignal r2, 0
000994  7d900000  xwait r1, 0
000998  9f503000  addli r1, zero, 29
00099c  7d100100  xwait r2, 0
0009a0  7d900000  xwait r1, 0
0009a4  3d000000  xfence
0009a8  00a00300  mfence { lm, sm, gm }
0009ac  db070000  j 60
0009b0  a78c1c00  addli.d r[26:27], r[26:27], 8
0009b4  ab000400  lui r1, 64
0009b8  9f1d0000  addli r27, zero, 1
0009bc  13a1dc00  seteq.d r2, r[26:27], r[14:15]
0009c0  8b901b10  add.s r1, r23, r1
0009c4  73e68000  stores.w r8, 12(r1)
0009c8  73e4f000  stores.w r15, 8(r1)
0009cc  73e27000  stores.w r7, 4(r1)
0009d0  73e09000  stores.w r9, 0(r1)
0009d4  73ee6000  stores.w r6, 28(r1)
0009d8  73ec5001  stores.w r21, 24(r1)
0009dc  73ea4000  stores.w r4, 20(r1)
0009e0  73e8a000  stores.w r10, 16(r1)
0009e4  3b250100  bneq r2, zero, 328
0009e8  9bbb2c00  slli r23, r25, 2
0009ec  2b030100  lui r6, 16
0009f0  0b92cb10  add.s r4, r23, r12
0009f4  0b9a6b10  add.s r20, r23, r6
0009f8  ef440200  loads.w r9, 0(r4)
0009fc  ef414200  loads.w r3, 4(r4)
000a00  6f4b8200  loads.w r22, 8(r4)
000a04  6f41c200  loads.w r2, 12(r4)
000a08  ef480201  loads.w r17, 16(r4)
000a0c  ef404201  loads.w r1, 20(r4)
000a10  6f498201  loads.w r18, 24(r4)
000a14  ef4dc201  loads.w r27, 28(r4)
000a18  6f44ca00  loads.w r8, 12(r20)
000a1c  ef478a00  loads.w r15, 8(r20)
000a20  ef434a00  loads.w r7, 4(r20)
000a24  6f43ca01  loads.w r6, 28(r20)
000a28  ef4a8a01  loads.w r21, 24(r20)
000a2c  6f424a01  loads.w r4, 20(r20)
000a30  6f450a01  loads.w r10, 16(r20)
000a34  97858401  and r11, r9, r24
000a38  17885400  and r16, r9, r5
000a3c  13065800  seteq r12, r16, r5
000a40  93850502  setneq r11, r11, zero
000a44  9705b600  and r11, r12, r11
000a48  3bc00500  bneq r11, zero, 16
000a4c  ef440a00  loads.w r9, 0(r20)
000a50  2b084000  lui r16, 1024
000a54  db010000  j 12
000a58  2b084000  lui r16, 1024
000a5c  97940401  or r9, r9, r16
000a60  97855100  and r11, r3, r5
000a64  17868101  and r12, r3, r24
000a68  93855500  seteq r11, r11, r5
000a6c  13060602  setneq r12, r12, zero
000a70  9785c500  and r11, r11, r12
000a74  37a00500  beq r11, zero, 8
000a78  97930101  or r7, r3, r16
000a7c  97015b00  and r3, r22, r5
000a80  97058b01  and r11, r22, r24
000a84  2b060300  lui r12, 48
000a88  93815100  seteq r3, r3, r5
000a8c  93850502  setneq r11, r11, zero
000a90  9781b100  and r3, r3, r11
000a94  37a00100  beq r3, zero, 8
000a98  97170b01  or r15, r22, r16
000a9c  97015100  and r3, r2, r5
000aa0  97058101  and r11, r2, r24
000aa4  93815100  seteq r3, r3, r5
000aa8  93850502  setneq r11, r11, zero
000aac  9781b100  and r3, r3, r11
000ab0  37a00100  beq r3, zero, 8
000ab4  17140101  or r8, r2, r16
000ab8  17815800  and r2, r17, r5
000abc  97818801  and r3, r17, r24
000ac0  13015100  seteq r2, r2, r5
000ac4  93810102  setneq r3, r3, zero
000ac8  17013100  and r2, r2, r3
000acc  37200100  beq r2, zero, 8
000ad0  17950801  or r10, r17, r16
000ad4  17815000  and r2, r1, r5
000ad8  97818001  and r3, r1, r24
000adc  13015100  seteq r2, r2, r5
000ae0  93810102  setneq r3, r3, zero
000ae4  17013100  and r2, r2, r3
000ae8  37200100  beq r2, zero, 8
000aec  17920001  or r4, r1, r16
000af0  97005900  and r1, r18, r5
000af4  17018901  and r2, r18, r24
000af8  93805000  seteq r1, r1, r5
000afc  13010102  setneq r2, r2, zero
000b00  97802000  and r1, r1, r2
000b04  37a00000  beq r1, zero, 8
000b08  971a0901  or r21, r18, r16
000b0c  97805d00  and r1, r27, r5
000b10  17818d01  and r2, r27, r24
000b14  93805000  seteq r1, r1, r5
000b18  13010102  setneq r2, r2, zero
000b1c  97802000  and r1, r1, r2
000b20  37ca00fe  beq r1, zero, -368
000b24  17930d01  or r6, r27, r16
000b28  5bd1ffff  j -376
000b2c  1f312000  addli r2, zero, 19
000b30  9f203000  addli r1, zero, 26
000b34  00200100  mfence { sm }
000b38  33030028  zext_int2long r[7:8], zero
000b3c  7d000100  xsignal r2, 0
000b40  7d800000  xsignal r1, 0
000b44  9f303000  addli r1, zero, 27
000b48  7d800000  xsignal r1, 0
000b4c  9f101000  addli r1, zero, 9
000b50  7d900000  xwait r1, 0
000b54  9f403000  addli r1, zero, 28
000b58  7d100100  xwait r2, 0
000b5c  7d900000  xwait r1, 0
000b60  9f603000  addli r1, zero, 30
000b64  7d900000  xwait r1, 0
000b68  3d000000  xfence
000b6c  00a00300  mfence { lm, sm, gm }
000b70  5b050000  j 40
000b74  27430300  addli.d r[7:8], r[7:8], 4
000b78  2b010100  lui r2, 16
000b7c  9320d302  setneq.d r1, r[7:8], r[14:15]
000b80  0b112210  add.s r2, r4, r2
000b84  73669100  stores.w r9, 12(r2)
000b88  73643100  stores.w r3, 8(r2)
000b8c  73621101  stores.w r17, 4(r2)
000b90  73608100  stores.w r8, 0(r2)
000b94  b7cb00fa  beq r1, zero, -2320
000b98  1b322300  slli r4, r6, 2
000b9c  ab800100  lui r1, 24
000ba0  2b010400  lui r2, 64
000ba4  ab810400  lui r3, 72
000ba8  0b112210  add.s r2, r4, r2
000bac  8b101210  add.s r1, r4, r1
000bb0  0b1b3210  add.s r22, r4, r3
000bb4  6fc40000  loads.w r8, 0(r1)
000bb8  ef440100  loads.w r9, 0(r2)
000bbc  efc14000  loads.w r3, 4(r1)
000bc0  6fc98000  loads.w r18, 8(r1)
000bc4  6fc5c000  loads.w r10, 12(r1)
000bc8  ef484100  loads.w r17, 4(r2)
000bcc  ef4a8100  loads.w r21, 8(r2)
000bd0  ef47c100  loads.w r15, 12(r2)
000bd4  ef40cb00  loads.w r1, 12(r22)
000bd8  6f418b00  loads.w r2, 8(r22)
000bdc  ef4b4b00  loads.w r23, 4(r22)
000be0  1704c401  and r8, r8, r28
000be4  9784c401  and r9, r9, r28
000be8  93055400  seteq r11, r8, r5
000bec  130a0400  seteq r20, r8, zero
000bf0  13860400  seteq r12, r9, zero
000bf4  13885400  seteq r16, r9, r5
000bf8  0b049448  max.u r8, r8, r9
000bfc  13848204  setlt.u r8, r5, r8
000c00  9784c500  and r9, r11, r12
000c04  97050a01  and r11, r20, r16
000c08  9794b400  or r9, r9, r11
000c0c  97159400  or r11, r8, r9
000c10  ab04c07f  lui r9, 523264
000c14  2b04c07f  lui r8, 523264
000c18  3ba00500  bneq r11, zero, 8
000c1c  6f440b00  loads.w r8, 0(r22)
000c20  9785c801  and r11, r17, r28
000c24  9781c101  and r3, r3, r28
000c28  13865100  seteq r12, r3, r5
000c2c  138a0100  seteq r20, r3, zero
000c30  13880500  seteq r16, r11, zero
000c34  93885500  seteq r17, r11, r5
000c38  8b81b148  max.u r3, r3, r11
000c3c  93813204  setlt.u r3, r5, r3
000c40  97050601  and r11, r12, r16
000c44  17061a01  and r12, r20, r17
000c48  ab08c07f  lui r17, 523264
000c4c  9795c500  or r11, r11, r12
000c50  9791b100  or r3, r3, r11
000c54  3ba00100  bneq r3, zero, 8
000c58  9f880b00  addli r17, r23, 0
000c5c  9701c901  and r3, r18, r28
000c60  9785ca01  and r11, r21, r28
000c64  13865100  seteq r12, r3, r5
000c68  138a0100  seteq r20, r3, zero
000c6c  13880500  seteq r16, r11, zero
000c70  13895500  seteq r18, r11, r5
000c74  8b81b148  max.u r3, r3, r11
000c78  93813204  setlt.u r3, r5, r3
000c7c  97050601  and r11, r12, r16
000c80  17062a01  and r12, r20, r18
000c84  9795c500  or r11, r11, r12
000c88  9795b100  or r11, r3, r11
000c8c  ab01c07f  lui r3, 523264
000c90  3ba00500  bneq r11, zero, 8
000c94  9f010100  addli r3, r2, 0
000c98  1701c501  and r2, r10, r28
000c9c  1785c701  and r10, r15, r28
000ca0  93055100  seteq r11, r2, r5
000ca4  13080100  seteq r16, r2, zero
000ca8  13060500  seteq r12, r10, zero
000cac  93075500  seteq r15, r10, r5
000cb0  0b01a148  max.u r2, r2, r10
000cb4  13812204  setlt.u r2, r5, r2
000cb8  1785c500  and r10, r11, r12
000cbc  9705f800  and r11, r16, r15
000cc0  1715b500  or r10, r10, r11
000cc4  1711a100  or r2, r2, r10
000cc8  bb3a01fe  bneq r2, zero, -340
000ccc  9f840000  addli r9, r1, 0
000cd0  dbd4ffff  j -348
000cd4  eb510fff  load.d r[4:5], -16(r30)
000cd8  bb1706fa  bneq r12, zero, -2588
000cdc  9730b303  sll.d r[2:3], r[7:8], r27
000ce0  1f432000  addli r6, zero, 20
000ce4  2b040100  lui r8, 16
000ce8  7d100300  xwait r6, 0
000cec  6b530f01  load.d r[7:8], 16(r30)
000cf0  8b201310  add.ul r[2:3], r[7:8], r[2:3]
000cf4  9f530000  addli r7, zero, 5
000cf8  2b830000  lui r6, 8
000cfc  1d800300  lock zero, r7
000d00  950d0000  dma_cfg r27, zero, zero, 0
000d04  15800d02  dma_cfg zero, r27, zero, 1
000d08  15010004  dma_cfg r2, zero, zero, 2
000d0c  95006406  dma_cfg r1, r8, r6, 3
000d10  ab400000  lui r1, 4
000d14  9500b309  dma_cfg r1, r6, r27, 4
000d18  9f502000  addli r1, zero, 21
000d1c  35000000  dma_run zero
000d20  1d900300  unlock r7
000d24  7d800000  xsignal r1, 0
000d28  dbb2feff  j -2668
000d2c  7d000000  xsignal zero, 0
000d30  bb600600  bneq r12, zero, 56
000d34  9f200000  addli r1, zero, 2
000d38  7d100000  xwait zero, 0
000d3c  7d100000  xwait zero, 0
000d40  7d100000  xwait zero, 0
000d44  7d100000  xwait zero, 0
000d48  7d100000  xwait zero, 0
000d4c  7d100000  xwait zero, 0
000d50  7d100000  xwait zero, 0
000d54  7d100000  xwait zero, 0
000d58  1d800000  lock zero, r1
000d5c  0d000020  ew_cfg zero, zero, zero, 16
000d60  1d900000  unlock r1
000d64  7d400000  xsignal_mode_cfg zero
000d68  9f8e5e00  addli sp, sp, 40
000d6c  00a00300  mfence { lm, sm, gm }
000d70  00100000  exit
000d74  00100000  exit
000d78  00100000  exit
000d7c  00100000  exit
000d80  00100000  exit
000d84  00100000  exit
000d88  00100000  exit
000d8c  00100000  exit
000d90  00100000  exit
000d94  00100000  exit
000d98  00100000  exit
000d9c  00100000  exit
000da0  00100000  exit
000da4  00100000  exit
000da8  00100000  exit
000dac  00100000  exit
000db0  00100000  exit
000db4  00100000  exit
000db8  00100000  exit
000dbc  00100000  exit
000dc0  00100000  exit
000dc4  00100000  exit
000dc8  00100000  exit
000dcc  00100000  exit
000dd0  00100000  exit
000dd4  00100000  exit
000dd8  00100000  exit
000ddc  00100000  exit
000de0  00100000  exit
000de4  00100000  exit
000de8  00100000  exit
000dec  00100000  exit
000df0  00100000  exit
000df4  00100000  exit
000df8  00100000  exit
000dfc  00100000  exit
000e00  00100000  exit
000e04  00100000  exit
000e08  00100000  exit
000e0c  00100000  exit
000e10  00100000  exit
000e14  00100000  exit
000e18  00100000  exit
000e1c  00100000  exit
000e20  00100000  exit
000e24  00100000  exit
000e28  00100000  exit
000e2c  00100000  exit
000e30  00100000  exit
000e34  00100000  exit
000e38  00100000  exit
000e3c  00100000  exit
000e40  00100000  exit
000e44  00100000  exit
000e48  00100000  exit
000e4c  00100000  exit
000e50  00100000  exit
000e54  00100000  exit
000e58  00100000  exit
000e5c  00100000  exit
000e60  00100000  exit
000e64  00100000  exit
000e68  00100000  exit
000e6c  00100000  exit
000e70  00100000  exit
000e74  00100000  exit
000e78  00100000  exit
000e7c  00100000  exit
000e80  00100000  exit
000e84  00100000  exit
000e88  00100000  exit
000e8c  00100000  exit
000e90  00100000  exit
000e94  00100000  exit
000e98  00100000  exit
000e9c  00100000  exit
000ea0  00100000  exit
000ea4  00100000  exit
000ea8  00100000  exit
000eac  00100000  exit
000eb0  00100000  exit
000eb4  00100000  exit
000eb8  00100000  exit
000ebc  00100000  exit
000ec0  00100000  exit
000ec4  00100000  exit
000ec8  00100000  exit
000ecc  00100000  exit
000ed0  00100000  exit
000ed4  00100000  exit
000ed8  00100000  exit
000edc  00100000  exit
000ee0  00100000  exit
000ee4  00100000  exit
000ee8  00100000  exit
000eec  00100000  exit
000ef0  00100000  exit
000ef4  00100000  exit
000ef8  00100000  exit
000efc  00100000  exit
000f00  00100000  exit
000f04  00100000  exit
000f08  00100000  exit
000f0c  00100000  exit
000f10  00100000  exit
000f14  00100000  exit
000f18  00100000  exit
000f1c  00100000  exit
000f20  00100000  exit
000f24  00100000  exit
000f28  00100000  exit
000f2c  00100000  exit
000f30  00100000  exit
000f34  00100000  exit
000f38  00100000  exit
000f3c  00100000  exit
000f40  00100000  exit
000f44  00100000  exit
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
