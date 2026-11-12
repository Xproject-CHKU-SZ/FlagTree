; SHA-256 f8e33cbca70911ecbe4fa31dadd7680b6f6070976d53936beb054620fd1b816e
; P800 SDNN · XTDK LLVM 19 · 1074 / 1074 words decoded
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
0000e8  db1e0000  j 244
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
00014c  1f011000  addli r2, zero, 8
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
00018c  9f500000  addli r1, zero, 5
000190  00d00100  sync_group
000194  7d800000  xsignal r1, 0
000198  7d000100  xsignal r2, 0
00019c  9f502000  addli r1, zero, 21
0001a0  1f211000  addli r2, zero, 10
0001a4  7d800000  xsignal r1, 0
0001a8  7d000100  xsignal r2, 0
0001ac  9f401000  addli r1, zero, 12
0001b0  1f611000  addli r2, zero, 14
0001b4  7d800000  xsignal r1, 0
0001b8  7d000100  xsignal r2, 0
0001bc  9f203000  addli r1, zero, 26
0001c0  1f712000  addli r2, zero, 23
0001c4  7d800000  xsignal r1, 0
0001c8  7d000100  xsignal r2, 0
0001cc  9f503000  addli r1, zero, 29
0001d0  1f713000  addli r2, zero, 31
0001d4  7d800000  xsignal r1, 0
0001d8  7d000100  xsignal r2, 0
0001dc  e3005f00  loadli.w r1,  40(r30)
0001e0  63415f00  loadli.w r2,  44(r30)
0001e4  00d20002  load_param_i r4, 1
0001e8  e3016f00  loadli.w r3,  48(r30)
0001ec  8b101120  mul.s r1, r2, r1
0001f0  1f010200  addli r2, r4, 0
0001f4  0b913050  fmac.s r2, r1, r3
0001f8  8b913020  mul.s r3, r1, r3
0001fc  1f71f1ff  addli r2, r2, -1
000200  0b114130  div.s r2, r2, r4
000204  00520002  load_param_i r4, 0
000208  8b104120  mul.s r1, r2, r4
00020c  0b114150  fmac.s r2, r2, r4
000210  0b113140  min.s r2, r2, r3
000214  cb301106  ble.s r2, r1, 3116
000218  33930028  sext_int2long r[7:8], r1
00021c  ab20373d  lui r1, 250738
000220  33110128  sext_int2long r[3:4], r2
000224  9f6c0000  addli r25, zero, 6
000228  1f7e0000  addli r28, zero, 7
00022c  9f290000  addli r19, zero, 2
000230  1f160000  addli r12, zero, 1
000234  2b4a0000  lui r20, 4
000238  9b903071  ori r1, r1, 1811
00023c  733c2ffc  store.d r[3:4], -40(r30)
000240  2b810300  lui r2, 56
000244  9f010008  addli r3, zero, 1024
000248  674d1ffe  storeli.w r1, -44(r30)
00024c  ab404c3f  lui r1, 259268
000250  9b90a022  ori r1, r1, 554
000254  670d1ffe  storeli.w r1, -48(r30)
000258  9b103184  ori r1, r2, 2115
00025c  2bf17f00  lui r2, 2047
000260  e74c1ffe  storeli.w r1, -52(r30)
000264  abf0ff7f  lui r1, 524287
000268  9b1bf1ff  ori r23, r2, 4095
00026c  1b9bf0ff  ori r22, r1, 4095
000270  b3800128  zext_int2long r[2:3], r3
000274  ab018041  lui r3, 268288
000278  733c1ffe  store.d r[2:3], -8(r30)
00027c  b3000028  zext_int2long r[2:3], zero
000280  73301ffe  store.d r[2:3], -32(r30)
000284  ab00807f  lui r1, 522240
000288  5b0a0000  j 80
00028c  1f211000  addli r2, zero, 10
000290  00200100  mfence { sm }
000294  003c0002  core_id r24
000298  9f6c0000  addli r25, zero, 6
00029c  1f7e0000  addli r28, zero, 7
0002a0  9f290000  addli r19, zero, 2
0002a4  1f160000  addli r12, zero, 1
0002a8  7d000100  xsignal r2, 0
0002ac  1f412000  addli r2, zero, 20
0002b0  7d000100  xsignal r2, 0
0002b4  1f513000  addli r2, zero, 29
0002b8  7d000100  xsignal r2, 0
0002bc  1f713000  addli r2, zero, 31
0002c0  7d000100  xsignal r2, 0
0002c4  6b538ffe  load.d r[7:8], -24(r30)
0002c8  6b528ffd  load.d r[5:6], -40(r30)
0002cc  27130300  addli.d r[7:8], r[7:8], 1
0002d0  13314304  setlt.sl r2, r[7:8], r[5:6]
0002d4  b73d0104  beq r2, zero, 2924
0002d8  63016f00  loadli.w r2,  48(r30)
0002dc  63425f00  loadli.w r4,  44(r30)
0002e0  73346ffe  store.d r[7:8], -24(r30)
0002e4  0b112330  div.s r2, r6, r2
0002e8  0b114130  div.s r2, r2, r4
0002ec  33120128  sext_int2long r[5:6], r2
0002f0  1f111000  addli r2, zero, 9
0002f4  17332202  sll.d r[7:8], r[5:6], r2
0002f8  37519c01  beq r24, r25, 84
0002fc  bb11cc00  bneq r24, r12, 100
000300  9f540000  addli r9, zero, 5
000304  1732c302  sll.d r[5:6], r[7:8], r12
000308  1f010000  addli r2, zero, 0
00030c  9f160000  addli r13, zero, 1
000310  7d900400  xwait r9, 0
000314  eb540f00  load.d r[10:11], 0(r30)
000318  0ba24410  add.ul r[5:6], r[10:11], r[5:6]
00031c  1f450000  addli r10, zero, 4
000320  9f040008  addli r9, zero, 1024
000324  1d000500  lock zero, r10
000328  15000600  dma_cfg zero, r12, zero, 0
00032c  15800204  dma_cfg zero, r5, zero, 2
000330  15009206  dma_cfg zero, r4, r9, 3
000334  1f020010  addli r4, zero, 2048
000338  1582c408  dma_cfg r4, r9, r12, 4
00033c  35000000  dma_run zero
000340  1d100500  unlock r10
000344  7d800900  xsignal r19, 0
000348  5b040000  j 32
00034c  1f021000  addli r4, zero, 8
000350  9f160000  addli r13, zero, 1
000354  1f110000  addli r2, zero, 1
000358  7d100200  xwait r4, 0
00035c  db010000  j 12
000360  9f160000  addli r13, zero, 1
000364  1f010000  addli r2, zero, 0
000368  6b528fff  load.d r[5:6], -8(r30)
00036c  9f241000  addli r9, zero, 10
000370  0f124370  mod.sl r[5:6], r[7:8], r[5:6]
000374  2772f20b  addli.d r[5:6], r[5:6], 1535
000378  97449202  srl.d r[10:11], r[5:6], r9
00037c  6b520ffe  load.d r[5:6], -32(r30)
000380  93a54400  seteq.d r11, r[10:11], r[5:6]
000384  1f020004  addli r4, zero, 512
000388  33020228  zext_int2long r[5:6], r4
00038c  3b920500  bneq r11, zero, 132
000390  eb550ffe  load.d r[12:13], -32(r30)
000394  b3860628  zext_int2long r[14:15], r13
000398  db020000  j 20
00039c  93a89604  setlt.ul r17, r[14:15], r[10:11]
0003a0  8ba5b710  add.ul r[12:13], r[16:17], r[12:13]
0003a4  b3860928  zext_int2long r[14:15], r19
0003a8  b7a10800  beq r17, zero, 104
0003ac  6b5d8fff  load.d r[27:28], -8(r30)
0003b0  8ba76510  add.ul r[16:17], r[12:13], r[7:8]
0003b4  8f98a771  mod.sl r[18:19], r[16:17], r[27:28]
0003b8  8b371d19  sub.sl r[16:17], r[27:28], r[18:19]
0003bc  0b3db218  sub.sl r[27:28], r[5:6], r[12:13]
0003c0  8b27fd40  min.ul r[16:17], r[27:28], r[16:17]
0003c4  376f01fe  beq r2, zero, -40
0003c8  1f140000  addli r8, zero, 1
0003cc  6b5d8f00  load.d r[27:28], 8(r30)
0003d0  9bb92500  slli r19, r11, 2
0003d4  9bba1700  slli r21, r15, 1
0003d8  97b88802  sll.d r[18:19], r[18:19], r8
0003dc  9f890910  addli r19, r19, 2048
0003e0  8b281d11  add.ul r[18:19], r[27:28], r[18:19]
0003e4  9f4d0000  addli r27, zero, 4
0003e8  1bbd2700  slli r26, r15, 2
0003ec  1d800d00  lock zero, r27
0003f0  15000400  dma_cfg zero, r8, zero, 0
0003f4  15000904  dma_cfg zero, r18, zero, 2
0003f8  95895807  dma_cfg r19, r17, r21, 3
0003fc  9f290000  addli r19, zero, 2
000400  158d8a08  dma_cfg r26, r21, r8, 4
000404  35000000  dma_run zero
000408  1d900d00  unlock r27
00040c  5bf2ffff  j -112
000410  37200100  beq r2, zero, 8
000414  7d000e00  xsignal r28, 0
000418  1b110a80  ori r2, r20, 2048
00041c  674f2ffe  storeli.w r2, -12(r30)
000420  1f510000  addli r2, zero, 5
000424  372e2c02  beq r24, r2, 1928
000428  1f310000  addli r2, zero, 3
00042c  3b072c04  bneq r24, r2, 2496
000430  7d100100  xwait r2, 0
000434  1f311000  addli r2, zero, 11
000438  33050028  zext_int2long r[11:12], zero
00043c  2b040080  lui r8, 524288
000440  ab0c4000  lui r25, 1024
000444  7d100100  xwait r2, 0
000448  1f511000  addli r2, zero, 13
00044c  7d100100  xwait r2, 0
000450  1f512000  addli r2, zero, 21
000454  7d100100  xwait r2, 0
000458  3d000000  xfence
00045c  00a00300  mfence { lm, sm, gm }
000460  5b060000  j 48
000464  27450500  addli.d r[11:12], r[11:12], 4
000468  1f431120  addli r6, r2, 4108
00046c  1f070120  addli r14, r2, 4096
000470  13264502  setneq.d r12, r[11:12], r[5:6]
000474  73609300  stores.w r9, 0(r6)
000478  1f031120  addli r6, r2, 4104
00047c  1f410120  addli r2, r2, 4100
000480  73607700  stores.w r7, 0(r14)
000484  7360f300  stores.w r15, 0(r6)
000488  7360d100  stores.w r13, 0(r2)
00048c  37250600  beq r12, zero, 328
000490  1b312500  slli r2, r10, 2
000494  1f030140  addli r6, r2, 8192
000498  9f430140  addli r7, r2, 8196
00049c  1f461140  addli r12, r2, 8204
0004a0  9f081150  addli r17, r2, 10248
0004a4  6f494100  loads.w r18, 4(r2)
0004a8  6f488100  loads.w r16, 8(r2)
0004ac  6f47c100  loads.w r14, 12(r2)
0004b0  ef440300  loads.w r9, 0(r6)
0004b4  efc60300  loads.w r13, 0(r7)
0004b8  ef430100  loads.w r7, 0(r2)
0004bc  1f031140  addli r6, r2, 8200
0004c0  6f460600  loads.w r12, 0(r12)
0004c4  efc80800  loads.w r17, 0(r17)
0004c8  ef470300  loads.w r15, 0(r6)
0004cc  1f431150  addli r6, r2, 10252
0004d0  6f430300  loads.w r6, 0(r6)
0004d4  97846401  and r9, r9, r22
0004d8  97836301  and r7, r7, r22
0004dc  938a1400  seteq r21, r9, r1
0004e0  138d0300  seteq r26, r7, zero
0004e4  938d1300  seteq r27, r7, r1
0004e8  8b837448  max.u r7, r9, r7
0004ec  138e0400  seteq r28, r9, zero
0004f0  9f440150  addli r9, r2, 10244
0004f4  efc90400  loads.w r19, 0(r9)
0004f8  93837004  setlt.u r7, r1, r7
0004fc  9784aa01  and r9, r21, r26
000500  970abe01  and r21, r28, r27
000504  97945401  or r9, r9, r21
000508  979a9300  or r21, r7, r9
00050c  ab04c07f  lui r9, 523264
000510  ab03c07f  lui r7, 523264
000514  3bb00a00  bneq r21, zero, 12
000518  9f030150  addli r7, r2, 10240
00051c  efc30300  loads.w r7, 0(r7)
000520  97866601  and r13, r13, r22
000524  17096901  and r18, r18, r22
000528  938a1600  seteq r21, r13, r1
00052c  138e0600  seteq r28, r13, zero
000530  130d0900  seteq r26, r18, zero
000534  930d1900  seteq r27, r18, r1
000538  8b862649  max.u r13, r13, r18
00053c  9386d004  setlt.u r13, r1, r13
000540  1789aa01  and r18, r21, r26
000544  970abe01  and r21, r28, r27
000548  17195901  or r18, r18, r21
00054c  17992601  or r18, r13, r18
000550  ab06c07f  lui r13, 523264
000554  3b200900  bneq r18, zero, 8
000558  9f860900  addli r13, r19, 0
00055c  97876701  and r15, r15, r22
000560  17086801  and r16, r16, r22
000564  13891700  seteq r18, r15, r1
000568  138d0700  seteq r26, r15, zero
00056c  93090800  seteq r19, r16, zero
000570  930a1800  seteq r21, r16, r1
000574  8b870749  max.u r15, r15, r16
000578  9387f004  setlt.u r15, r1, r15
00057c  17083901  and r16, r18, r19
000580  17095d01  and r18, r26, r21
000584  17182801  or r16, r16, r18
000588  17980701  or r16, r15, r16
00058c  ab07c07f  lui r15, 523264
000590  3b200800  bneq r16, zero, 8
000594  9f870800  addli r15, r17, 0
000598  17066601  and r12, r12, r22
00059c  17076701  and r14, r14, r22
0005a0  13081600  seteq r16, r12, r1
0005a4  93090600  seteq r19, r12, zero
0005a8  93080700  seteq r17, r14, zero
0005ac  13091700  seteq r18, r14, r1
0005b0  0b06e648  max.u r12, r12, r14
0005b4  1386c004  setlt.u r12, r1, r12
0005b8  17071801  and r14, r16, r17
0005bc  17882901  and r16, r19, r18
0005c0  17170701  or r14, r14, r16
0005c4  1716e600  or r12, r12, r14
0005c8  3b7a06fe  bneq r12, zero, -356
0005cc  9f040300  addli r9, r6, 0
0005d0  dbd2ffff  j -364
0005d4  1f410000  addli r2, zero, 4
0005d8  00200100  mfence { sm }
0005dc  33030028  zext_int2long r[7:8], zero
0005e0  7d000100  xsignal r2, 0
0005e4  1f411000  addli r2, zero, 12
0005e8  7d000100  xsignal r2, 0
0005ec  1f611000  addli r2, zero, 14
0005f0  7d000100  xsignal r2, 0
0005f4  1f711000  addli r2, zero, 15
0005f8  7d000100  xsignal r2, 0
0005fc  1f612000  addli r2, zero, 22
000600  7d100100  xwait r2, 0
000604  1f213000  addli r2, zero, 26
000608  7d100100  xwait r2, 0
00060c  3d000000  xfence
000610  00a00300  mfence { lm, sm, gm }
000614  1b312300  slli r2, r6, 2
000618  27031300  addli.d r[7:8], r[7:8], 8
00061c  9f041170  addli r9, r2, 14344
000620  1f050170  addli r10, r2, 14336
000624  9f063170  addli r13, r2, 14360
000628  13294302  setneq.d r18, r[7:8], r[5:6]
00062c  9f090160  addli r19, r2, 12288
000630  efd50400  loads.d r[12:13], 0(r9)
000634  9f042170  addli r9, r2, 14352
000638  6f570500  loads.d r[15:16], 0(r10)
00063c  6fd80600  loads.d r[17:18], 0(r13)
000640  9f061160  addli r13, r2, 12296
000644  efd40400  loads.d r[10:11], 0(r9)
000648  73f0b600  stores.d r[12:13], 0(r13)
00064c  9f052160  addli r11, r2, 12304
000650  1f013160  addli r2, r2, 12312
000654  73f0e900  stores.d r[15:16], 0(r19)
000658  73700101  stores.d r[17:18], 0(r2)
00065c  73f09500  stores.d r[10:11], 0(r11)
000660  bb5e09fe  bneq r18, zero, -76
000664  1f712000  addli r2, zero, 23
000668  00200100  mfence { sm }
00066c  1f033000  addli r6, zero, 24
000670  33050028  zext_int2long r[11:12], zero
000674  7d000100  xsignal r2, 0
000678  1f012000  addli r2, zero, 16
00067c  7d000300  xsignal r6, 0
000680  7d100100  xwait r2, 0
000684  7d100300  xwait r6, 0
000688  3d000000  xfence
00068c  00a00300  mfence { lm, sm, gm }
000690  5b0a0000  j 80
000694  9f471120  addli r15, r2, 4108
000698  27051500  addli.d r[11:12], r[11:12], 8
00069c  9f060120  addli r13, r2, 4096
0006a0  9f092120  addli r19, r2, 4112
0006a4  73e00701  stores.w r16, 0(r15)
0006a8  1f480120  addli r16, r2, 4100
0006ac  9f071120  addli r15, r2, 4104
0006b0  73e06600  stores.w r6, 0(r13)
0006b4  1f033120  addli r6, r2, 4120
0006b8  73e09900  stores.w r9, 0(r19)
0006bc  73602801  stores.w r18, 0(r16)
0006c0  13284502  setneq.d r16, r[11:12], r[5:6]
0006c4  73e01701  stores.w r17, 0(r15)
0006c8  9f473120  addli r15, r2, 4124
0006cc  1f412120  addli r2, r2, 4116
0006d0  7360e300  stores.w r14, 0(r6)
0006d4  73e07700  stores.w r7, 0(r15)
0006d8  7360c100  stores.w r12, 0(r2)
0006dc  b7330800  beq r16, zero, 236
0006e0  1b312500  slli r2, r10, 2
0006e4  1f030160  addli r6, r2, 12288
0006e8  9f431160  addli r7, r2, 12300
0006ec  1f463160  addli r12, r2, 12316
0006f0  9f042160  addli r9, r2, 12304
0006f4  9f462160  addli r13, r2, 12308
0006f8  6f430300  loads.w r6, 0(r6)
0006fc  6fc80300  loads.w r16, 0(r7)
000700  9f031160  addli r7, r2, 12296
000704  efc40400  loads.w r9, 0(r9)
000708  efc80300  loads.w r17, 0(r7)
00070c  9f430160  addli r7, r2, 12292
000710  6fc90300  loads.w r18, 0(r7)
000714  ef430600  loads.w r7, 0(r12)
000718  1f063160  addli r12, r2, 12312
00071c  6f470600  loads.w r14, 0(r12)
000720  6fc60600  loads.w r12, 0(r13)
000724  97066301  and r13, r6, r22
000728  9386d104  setlt.u r13, r3, r13
00072c  37b00600  beq r13, zero, 12
000730  17038300  and r6, r6, r8
000734  17133300  or r6, r6, r3
000738  97066901  and r13, r18, r22
00073c  9386d104  setlt.u r13, r3, r13
000740  37b00600  beq r13, zero, 12
000744  97068900  and r13, r18, r8
000748  17993600  or r18, r13, r3
00074c  97866801  and r13, r17, r22
000750  9386d104  setlt.u r13, r3, r13
000754  37b00600  beq r13, zero, 12
000758  97868800  and r13, r17, r8
00075c  97983600  or r17, r13, r3
000760  97066801  and r13, r16, r22
000764  9386d104  setlt.u r13, r3, r13
000768  37b00600  beq r13, zero, 12
00076c  97068800  and r13, r16, r8
000770  17983600  or r16, r13, r3
000774  97866401  and r13, r9, r22
000778  9386d104  setlt.u r13, r3, r13
00077c  37b00600  beq r13, zero, 12
000780  97848400  and r9, r9, r8
000784  97943400  or r9, r9, r3
000788  97066601  and r13, r12, r22
00078c  9386d104  setlt.u r13, r3, r13
000790  37b00600  beq r13, zero, 12
000794  17068600  and r12, r12, r8
000798  17163600  or r12, r12, r3
00079c  97066701  and r13, r14, r22
0007a0  9386d104  setlt.u r13, r3, r13
0007a4  37b00600  beq r13, zero, 12
0007a8  97068700  and r13, r14, r8
0007ac  17973600  or r14, r13, r3
0007b0  97866301  and r13, r7, r22
0007b4  9386d104  setlt.u r13, r3, r13
0007b8  37fb06fe  beq r13, zero, -292
0007bc  97838300  and r7, r7, r8
0007c0  97933300  or r7, r7, r3
0007c4  5bdaffff  j -304
0007c8  1f112000  addli r2, zero, 17
0007cc  00200100  mfence { sm }
0007d0  1f133000  addli r6, zero, 25
0007d4  33050028  zext_int2long r[11:12], zero
0007d8  7d000100  xsignal r2, 0
0007dc  1f212000  addli r2, zero, 18
0007e0  7d000300  xsignal r6, 0
0007e4  7d100100  xwait r2, 0
0007e8  1f513000  addli r2, zero, 29
0007ec  7d100300  xwait r6, 0
0007f0  7d100100  xwait r2, 0
0007f4  3d000000  xfence
0007f8  00a00300  mfence { lm, sm, gm }
0007fc  db0d0000  j 108
000800  1b188a00  ori r16, r20, 8
000804  1b16ca00  ori r12, r20, 12
000808  27051500  addli.d r[11:12], r[11:12], 8
00080c  0b140d11  add.s r8, r26, r16
000810  8b13cd10  add.s r7, r26, r12
000814  7360e400  stores.w r14, 0(r8)
000818  1b174a00  ori r14, r20, 4
00081c  73e06300  stores.w r6, 0(r7)
000820  0b134d11  add.s r6, r26, r20
000824  9b130a01  ori r7, r20, 16
000828  0b14ed10  add.s r8, r26, r14
00082c  73609300  stores.w r9, 0(r6)
000830  9b144a01  ori r9, r20, 20
000834  8b137d10  add.s r7, r26, r7
000838  7360c401  stores.w r28, 0(r8)
00083c  1b14ca01  ori r8, r20, 28
000840  8b149d10  add.s r9, r26, r9
000844  73e02300  stores.w r2, 0(r7)
000848  0b138d10  add.s r6, r26, r8
00084c  1b148a01  ori r8, r20, 24
000850  73e01401  stores.w r17, 0(r9)
000854  7360b301  stores.w r27, 0(r6)
000858  13234500  seteq.d r6, r[11:12], r[5:6]
00085c  0b148d10  add.s r8, r26, r8
000860  73602401  stores.w r18, 0(r8)
000864  bb450300  bneq r6, zero, 368
000868  1b3d2500  slli r26, r10, 2
00086c  1f010d60  addli r2, r26, 12288
000870  1f032d60  addli r6, r26, 12304
000874  9f430d60  addli r7, r26, 12292
000878  9f480d20  addli r17, r26, 4100
00087c  1f071d20  addli r14, r26, 4104
000880  1f493d20  addli r18, r26, 4124
000884  1f442d20  addli r8, r26, 4116
000888  ef440100  loads.w r9, 0(r2)
00088c  1f011d60  addli r2, r26, 12296
000890  efc90300  loads.w r19, 0(r7)
000894  9f431d60  addli r7, r26, 12300
000898  ef4a0300  loads.w r21, 0(r6)
00089c  1f433d60  addli r6, r26, 12316
0008a0  6fce0800  loads.w r28, 0(r17)
0008a4  9f083d20  addli r17, r26, 4120
0008a8  ef4d0900  loads.w r27, 0(r18)
0008ac  6f470700  loads.w r14, 0(r14)
0008b0  ef460100  loads.w r13, 0(r2)
0008b4  1f412d60  addli r2, r26, 12308
0008b8  efc70300  loads.w r15, 0(r7)
0008bc  ef430300  loads.w r7, 0(r6)
0008c0  1f431d20  addli r6, r26, 4108
0008c4  6fc90800  loads.w r18, 0(r17)
0008c8  ef480400  loads.w r17, 0(r8)
0008cc  6f480100  loads.w r16, 0(r2)
0008d0  1f013d60  addli r2, r26, 12312
0008d4  6f430300  loads.w r6, 0(r6)
0008d8  6f460100  loads.w r12, 0(r2)
0008dc  1f012d20  addli r2, r26, 4112
0008e0  6f410100  loads.w r2, 0(r2)
0008e4  17841400  and r8, r9, r1
0008e8  178c7401  and r24, r9, r23
0008ec  13041400  seteq r8, r8, r1
0008f0  130c0c02  setneq r24, r24, zero
0008f4  17048401  and r8, r8, r24
0008f8  3b400400  bneq r8, zero, 16
0008fc  1f040d20  addli r8, r26, 4096
000900  ef440400  loads.w r9, 0(r8)
000904  5b010000  j 8
000908  97949401  or r9, r9, r25
00090c  17841900  and r8, r19, r1
000910  178c7901  and r24, r19, r23
000914  13041400  seteq r8, r8, r1
000918  130c0c02  setneq r24, r24, zero
00091c  17048401  and r8, r8, r24
000920  37200400  beq r8, zero, 8
000924  179e9901  or r28, r19, r25
000928  17841600  and r8, r13, r1
00092c  97897601  and r19, r13, r23
000930  13041400  seteq r8, r8, r1
000934  93890902  setneq r19, r19, zero
000938  17043401  and r8, r8, r19
00093c  37200400  beq r8, zero, 8
000940  17979601  or r14, r13, r25
000944  17841700  and r8, r15, r1
000948  97867701  and r13, r15, r23
00094c  13041400  seteq r8, r8, r1
000950  93860602  setneq r13, r13, zero
000954  1704d400  and r8, r8, r13
000958  37200400  beq r8, zero, 8
00095c  17939701  or r6, r15, r25
000960  17841a00  and r8, r21, r1
000964  97867a01  and r13, r21, r23
000968  13041400  seteq r8, r8, r1
00096c  93860602  setneq r13, r13, zero
000970  1704d400  and r8, r8, r13
000974  37200400  beq r8, zero, 8
000978  17919a01  or r2, r21, r25
00097c  17041800  and r8, r16, r1
000980  97067801  and r13, r16, r23
000984  13041400  seteq r8, r8, r1
000988  93860602  setneq r13, r13, zero
00098c  1704d400  and r8, r8, r13
000990  37200400  beq r8, zero, 8
000994  97189801  or r17, r16, r25
000998  17041600  and r8, r12, r1
00099c  97067601  and r13, r12, r23
0009a0  13041400  seteq r8, r8, r1
0009a4  93860602  setneq r13, r13, zero
0009a8  1704d400  and r8, r8, r13
0009ac  37200400  beq r8, zero, 8
0009b0  17199601  or r18, r12, r25
0009b4  17841300  and r8, r7, r1
0009b8  17867301  and r12, r7, r23
0009bc  13041400  seteq r8, r8, r1
0009c0  13060602  setneq r12, r12, zero
0009c4  1704c400  and r8, r8, r12
0009c8  b76804fe  beq r8, zero, -456
0009cc  979d9301  or r27, r7, r25
0009d0  5bc6ffff  j -464
0009d4  1f332000  addli r6, zero, 19
0009d8  1f213000  addli r2, zero, 26
0009dc  00200100  mfence { sm }
0009e0  33050028  zext_int2long r[11:12], zero
0009e4  7d000300  xsignal r6, 0
0009e8  7d000100  xsignal r2, 0
0009ec  1f313000  addli r2, zero, 27
0009f0  7d000100  xsignal r2, 0
0009f4  1f111000  addli r2, zero, 9
0009f8  7d100100  xwait r2, 0
0009fc  1f413000  addli r2, zero, 28
000a00  7d100300  xwait r6, 0
000a04  7d100100  xwait r2, 0
000a08  1f613000  addli r2, zero, 30
000a0c  7d100100  xwait r2, 0
000a10  3d000000  xfence
000a14  00a00300  mfence { lm, sm, gm }
000a18  5b060000  j 48
000a1c  27450500  addli.d r[11:12], r[11:12], 4
000a20  1f431120  addli r6, r2, 4108
000a24  1f040120  addli r8, r2, 4096
000a28  93234502  setneq.d r7, r[11:12], r[5:6]
000a2c  73602301  stores.w r18, 0(r6)
000a30  1f031120  addli r6, r2, 4104
000a34  1f410120  addli r2, r2, 4100
000a38  73609400  stores.w r9, 0(r8)
000a3c  7360d300  stores.w r13, 0(r6)
000a40  73605101  stores.w r21, 0(r2)
000a44  37a103fc  beq r7, zero, -1976
000a48  1b312500  slli r2, r10, 2
000a4c  1b19ca80  ori r18, r20, 2060
000a50  9b194a80  ori r19, r20, 2052
000a54  1f041130  addli r8, r2, 6152
000a58  1f030130  addli r6, r2, 6144
000a5c  9f430130  addli r7, r2, 6148
000a60  8b160111  add.s r13, r2, r16
000a64  8b1d3111  add.s r27, r2, r19
000a68  ef470400  loads.w r15, 0(r8)
000a6c  0b144111  add.s r8, r2, r20
000a70  ef440300  loads.w r9, 0(r6)
000a74  1f431130  addli r6, r2, 6156
000a78  efca0300  loads.w r21, 0(r7)
000a7c  efc60600  loads.w r13, 0(r13)
000a80  efcd0d00  loads.w r27, 0(r27)
000a84  6f440400  loads.w r8, 0(r8)
000a88  ef430300  loads.w r7, 0(r6)
000a8c  0b13e110  add.s r6, r2, r14
000a90  6f4d0300  loads.w r26, 0(r6)
000a94  0b13c110  add.s r6, r2, r12
000a98  ef480300  loads.w r17, 0(r6)
000a9c  0b132111  add.s r6, r2, r18
000aa0  1b198a80  ori r18, r20, 2056
000aa4  0b192111  add.s r18, r2, r18
000aa8  6f430300  loads.w r6, 0(r6)
000aac  ef490900  loads.w r19, 0(r18)
000ab0  97846401  and r9, r9, r22
000ab4  17046401  and r8, r8, r22
000ab8  138c1400  seteq r24, r9, r1
000abc  930c0400  seteq r25, r8, zero
000ac0  130e1400  seteq r28, r8, r1
000ac4  0b848448  max.u r8, r9, r8
000ac8  93840400  seteq r9, r9, zero
000acc  13848004  setlt.u r8, r1, r8
000ad0  17099c01  and r18, r24, r25
000ad4  9784c401  and r9, r9, r28
000ad8  97149900  or r9, r18, r9
000adc  2b09c07f  lui r18, 523264
000ae0  17149400  or r8, r8, r9
000ae4  ab04c07f  lui r9, 523264
000ae8  3b400400  bneq r8, zero, 16
000aec  6344efff  loadli.w r8,  -12(r30)
000af0  0b148110  add.s r8, r2, r8
000af4  ef440400  loads.w r9, 0(r8)
000af8  17846a01  and r8, r21, r22
000afc  970a6d01  and r21, r26, r22
000b00  130c1400  seteq r24, r8, r1
000b04  130e0400  seteq r28, r8, zero
000b08  938c0a00  seteq r25, r21, zero
000b0c  138d1a00  seteq r26, r21, r1
000b10  0b045449  max.u r8, r8, r21
000b14  13848004  setlt.u r8, r1, r8
000b18  970a9c01  and r21, r24, r25
000b1c  170cae01  and r24, r28, r26
000b20  979a8a01  or r21, r21, r24
000b24  17145401  or r8, r8, r21
000b28  ab0ac07f  lui r21, 523264
000b2c  3b200400  bneq r8, zero, 8
000b30  9f8a0d00  addli r21, r27, 0
000b34  17846701  and r8, r15, r22
000b38  97866601  and r13, r13, r22
000b3c  93071400  seteq r15, r8, r1
000b40  130d0400  seteq r26, r8, zero
000b44  138c0600  seteq r24, r13, zero
000b48  938c1600  seteq r25, r13, r1
000b4c  0b04d448  max.u r8, r8, r13
000b50  13848004  setlt.u r8, r1, r8
000b54  97868701  and r13, r15, r24
000b58  97079d01  and r15, r26, r25
000b5c  9796f600  or r13, r13, r15
000b60  1714d400  or r8, r8, r13
000b64  ab06c07f  lui r13, 523264
000b68  3b200400  bneq r8, zero, 8
000b6c  9f860900  addli r13, r19, 0
000b70  17846801  and r8, r17, r22
000b74  97836301  and r7, r7, r22
000b78  93871300  seteq r15, r7, r1
000b7c  138c0300  seteq r24, r7, zero
000b80  93080400  seteq r17, r8, zero
000b84  93091400  seteq r19, r8, r1
000b88  8b838348  max.u r7, r7, r8
000b8c  93837004  setlt.u r7, r1, r7
000b90  17841701  and r8, r15, r17
000b94  97073c01  and r15, r24, r19
000b98  1714f400  or r8, r8, r15
000b9c  97938300  or r7, r7, r8
000ba0  bbf903fe  bneq r7, zero, -388
000ba4  1f090300  addli r18, r6, 0
000ba8  dbceffff  j -396
000bac  7d900900  xwait r19, 0
000bb0  7d100e00  xwait r28, 0
000bb4  1d800900  lock zero, r19
000bb8  2b02803f  lui r4, 260096
000bbc  9f723000  addli r5, zero, 31
000bc0  1f032000  addli r6, zero, 16
000bc4  1f010010  addli r2, zero, 2048
000bc8  ab03003f  lui r7, 258048
000bcc  9f641000  addli r9, zero, 14
000bd0  1f751000  addli r10, zero, 15
000bd4  9f050020  addli r11, zero, 4096
000bd8  1f060070  addli r12, zero, 14336
000bdc  0d000002  ew_cfg zero, zero, zero, 1
000be0  0d120200  ewcoeff_cfg r4, r4, zero, 0
000be4  0d800204  ew_cfg zero, r5, zero, 2
000be8  0d030006  ew_cfg r6, zero, zero, 3
000bec  0d036326  ew_cfg r6, r6, r6, 19
000bf0  2d002000  dsmadd zero, zero, r2, 0
000bf4  1f011000  addli r2, zero, 8
000bf8  0d000026  ew_cfg zero, zero, zero, 19
000bfc  1d900900  unlock r19
000c00  7d800c00  xsignal r25, 0
000c04  7d000100  xsignal r2, 0
000c08  1f211000  addli r2, zero, 10
000c0c  7d100100  xwait r2, 0
000c10  1d800900  lock zero, r19
000c14  1f010030  addli r2, zero, 6144
000c18  0d000002  ew_cfg zero, zero, zero, 1
000c1c  8d130000  ewcoeff_cfg r7, zero, zero, 0
000c20  0d800204  ew_cfg zero, r5, zero, 2
000c24  0d030006  ew_cfg r6, zero, zero, 3
000c28  0d030326  ew_cfg r6, r6, zero, 19
000c2c  4d510000  hp_ssmul r2, zero, zero, 0
000c30  1f111000  addli r2, zero, 9
000c34  0d000026  ew_cfg zero, zero, zero, 19
000c38  1d900900  unlock r19
000c3c  7d000100  xsignal r2, 0
000c40  1f411000  addli r2, zero, 12
000c44  7d100100  xwait r2, 0
000c48  1d800900  lock zero, r19
000c4c  1f010040  addli r2, zero, 8192
000c50  0d000002  ew_cfg zero, zero, zero, 1
000c54  0d104000  ewcoeff_cfg zero, zero, r4, 0
000c58  0d800204  ew_cfg zero, r5, zero, 2
000c5c  0d030006  ew_cfg r6, zero, zero, 3
000c60  0d036326  ew_cfg r6, r6, r6, 19
000c64  2d110000  dsmul r2, zero, zero, 0
000c68  0d000026  ew_cfg zero, zero, zero, 19
000c6c  1d900900  unlock r19
000c70  7d900400  xwait r9, 0
000c74  1d800900  lock zero, r19
000c78  9f040050  addli r9, zero, 10240
000c7c  0d000002  ew_cfg zero, zero, zero, 1
000c80  0d104000  ewcoeff_cfg zero, zero, r4, 0
000c84  0d800204  ew_cfg zero, r5, zero, 2
000c88  0d030006  ew_cfg r6, zero, zero, 3
000c8c  0d036326  ew_cfg r6, r6, r6, 19
000c90  ad140100  dsmul r9, r2, zero, 0
000c94  1f310000  addli r2, zero, 3
000c98  9f341000  addli r9, zero, 11
000c9c  0d000026  ew_cfg zero, zero, zero, 19
000ca0  1d900900  unlock r19
000ca4  7d000100  xsignal r2, 0
000ca8  7d800400  xsignal r9, 0
000cac  9f541000  addli r9, zero, 13
000cb0  7d800400  xsignal r9, 0
000cb4  9f440000  addli r9, zero, 4
000cb8  7d900400  xwait r9, 0
000cbc  7d100500  xwait r10, 0
000cc0  1f752000  addli r10, zero, 23
000cc4  7d100500  xwait r10, 0
000cc8  1d800900  lock zero, r19
000ccc  0d000002  ew_cfg zero, zero, zero, 1
000cd0  6345afff  loadli.w r10,  -44(r30)
000cd4  0d120500  ewcoeff_cfg r4, r10, zero, 0
000cd8  0d800204  ew_cfg zero, r5, zero, 2
000cdc  0d030006  ew_cfg r6, zero, zero, 3
000ce0  0d036326  ew_cfg r6, r6, r6, 19
000ce4  2d06b000  dsmadd r12, zero, r11, 0
000ce8  0d000026  ew_cfg zero, zero, zero, 19
000cec  1d900900  unlock r19
000cf0  7d000300  xsignal r6, 0
000cf4  1d800900  lock zero, r19
000cf8  0d000002  ew_cfg zero, zero, zero, 1
000cfc  6305afff  loadli.w r10,  -48(r30)
000d00  0d150000  ewcoeff_cfg r10, zero, zero, 0
000d04  1f652000  addli r10, zero, 22
000d08  0d800204  ew_cfg zero, r5, zero, 2
000d0c  0d030006  ew_cfg r6, zero, zero, 3
000d10  0d030326  ew_cfg r6, r6, zero, 19
000d14  4d56c600  hp_ssmul r12, r12, r12, 0
000d18  1f160000  addli r12, zero, 1
000d1c  0d000026  ew_cfg zero, zero, zero, 19
000d20  1d900900  unlock r19
000d24  7d000500  xsignal r10, 0
000d28  1f152000  addli r10, zero, 17
000d2c  7d100500  xwait r10, 0
000d30  1d800900  lock zero, r19
000d34  0d000002  ew_cfg zero, zero, zero, 1
000d38  0d800204  ew_cfg zero, r5, zero, 2
000d3c  0d030006  ew_cfg r6, zero, zero, 3
000d40  0d030326  ew_cfg r6, r6, zero, 19
000d44  0d010014  ew_cfg r2, zero, zero, 10
000d48  63419fff  loadli.w r2,  -52(r30)
000d4c  8d092616  ew_cfg r19, r12, r2, 11
000d50  2bc17f41  lui r2, 268284
000d54  0d00001a  ew_cfg zero, zero, zero, 13
000d58  0d80241c  ew_cfg zero, r9, r2, 14
000d5c  1f212000  addli r2, zero, 18
000d60  0d00001e  ew_cfg zero, zero, zero, 15
000d64  cda50500  sslut r11, r11, 0
000d68  0d000014  ew_cfg zero, zero, zero, 10
000d6c  0d000026  ew_cfg zero, zero, zero, 19
000d70  1d900900  unlock r19
000d74  7d000100  xsignal r2, 0
000d78  1f313000  addli r2, zero, 27
000d7c  7d100100  xwait r2, 0
000d80  1d800900  lock zero, r19
000d84  0d000002  ew_cfg zero, zero, zero, 1
000d88  0d124000  ewcoeff_cfg r4, zero, r4, 0
000d8c  0d800204  ew_cfg zero, r5, zero, 2
000d90  0d030006  ew_cfg r6, zero, zero, 3
000d94  0d030326  ew_cfg r6, r6, zero, 19
000d98  2d0a4a01  dsmadd r20, r20, r20, 0
000d9c  0d000026  ew_cfg zero, zero, zero, 19
000da0  1d900900  unlock r19
000da4  7d900c00  xwait r25, 0
000da8  7d900200  xwait r5, 0
000dac  1d800900  lock zero, r19
000db0  0d000002  ew_cfg zero, zero, zero, 1
000db4  0d107000  ewcoeff_cfg zero, zero, r7, 0
000db8  0d800204  ew_cfg zero, r5, zero, 2
000dbc  0d030006  ew_cfg r6, zero, zero, 3
000dc0  0d036326  ew_cfg r6, r6, r6, 19
000dc4  6341efff  loadli.w r2,  -12(r30)
000dc8  2d114001  dsmul r2, zero, r20, 0
000dcc  1f510000  addli r2, zero, 5
000dd0  0d000026  ew_cfg zero, zero, zero, 19
000dd4  1d900900  unlock r19
000dd8  7d000100  xsignal r2, 0
000ddc  1f413000  addli r2, zero, 28
000de0  7d000100  xsignal r2, 0
000de4  1f613000  addli r2, zero, 30
000de8  5b9bfeff  j -2856
000dec  1f160000  addli r12, zero, 1
000df0  3b530cfa  bneq r24, zero, -2860
000df4  1732c302  sll.d r[5:6], r[7:8], r12
000df8  6b530f01  load.d r[7:8], 16(r30)
000dfc  1f412000  addli r2, zero, 20
000e00  7d100100  xwait r2, 0
000e04  1f010020  addli r2, zero, 4096
000e08  0b224310  add.ul r[5:6], r[7:8], r[5:6]
000e0c  1f530000  addli r6, zero, 5
000e10  9f030010  addli r7, zero, 2048
000e14  1d000300  lock zero, r6
000e18  15060000  dma_cfg r12, zero, zero, 0
000e1c  15000602  dma_cfg zero, r12, zero, 1
000e20  95020004  dma_cfg r5, zero, zero, 2
000e24  15027106  dma_cfg r4, r2, r7, 3
000e28  1f010008  addli r2, zero, 1024
000e2c  1581c308  dma_cfg r2, r7, r12, 4
000e30  1f512000  addli r2, zero, 21
000e34  35000000  dma_run zero
000e38  1d100300  unlock r6
000e3c  db90feff  j -2940
000e40  7d000000  xsignal zero, 0
000e44  bb600c00  bneq r24, zero, 56
000e48  9f200000  addli r1, zero, 2
000e4c  7d100000  xwait zero, 0
000e50  7d100000  xwait zero, 0
000e54  7d100000  xwait zero, 0
000e58  7d100000  xwait zero, 0
000e5c  7d100000  xwait zero, 0
000e60  7d100000  xwait zero, 0
000e64  7d100000  xwait zero, 0
000e68  7d100000  xwait zero, 0
000e6c  1d800000  lock zero, r1
000e70  0d000020  ew_cfg zero, zero, zero, 16
000e74  1d900000  unlock r1
000e78  7d400000  xsignal_mode_cfg zero
000e7c  9f8e7e00  addli sp, sp, 56
000e80  00a00300  mfence { lm, sm, gm }
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
