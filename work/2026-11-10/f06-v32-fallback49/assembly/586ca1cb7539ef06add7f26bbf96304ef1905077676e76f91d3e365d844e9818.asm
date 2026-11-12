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
0000b4  9f8e2efe  addli sp, sp, -240
0000b8  9f100000  addli r1, zero, 1
0000bc  80330002  core_id r7
0000c0  1f8f6e01  addli r30, sp, 176
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37e00300  beq r7, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5b150000  j 168
0000e0  1f210000  addli r2, zero, 2
0000e4  fdd00000  uni_sram_cfg r1, r1
0000e8  abf1ffff  lui r3, 1048575
0000ec  1d000100  lock zero, r2
0000f0  8d000020  ew_cfg r1, zero, zero, 16
0000f4  9b90f1ff  ori r1, r3, 4095
0000f8  1d100100  unlock r2
0000fc  1f510000  addli r2, zero, 5
000100  80a10004  csr_set csr3, r1
000104  9f301000  addli r1, zero, 11
000108  00d00100  sync_group
00010c  7d800000  xsignal r1, 0
000110  7d800000  xsignal r1, 0
000114  7d800000  xsignal r1, 0
000118  7d000100  xsignal r2, 0
00011c  7d000100  xsignal r2, 0
000120  7d000100  xsignal r2, 0
000124  9f300000  addli r1, zero, 3
000128  1f111000  addli r2, zero, 9
00012c  7d800000  xsignal r1, 0
000130  7d800000  xsignal r1, 0
000134  7d800000  xsignal r1, 0
000138  7d000100  xsignal r2, 0
00013c  7d000100  xsignal r2, 0
000140  7d000100  xsignal r2, 0
000144  9f700000  addli r1, zero, 7
000148  1f012000  addli r2, zero, 16
00014c  7d800000  xsignal r1, 0
000150  7d800000  xsignal r1, 0
000154  7d800000  xsignal r1, 0
000158  7d000100  xsignal r2, 0
00015c  7d000100  xsignal r2, 0
000160  7d000100  xsignal r2, 0
000164  9f202000  addli r1, zero, 18
000168  1f611000  addli r2, zero, 14
00016c  7d800000  xsignal r1, 0
000170  7d800000  xsignal r1, 0
000174  7d800000  xsignal r1, 0
000178  7d000100  xsignal r2, 0
00017c  7d000100  xsignal r2, 0
000180  7d000100  xsignal r2, 0
000184  e3004f00  loadli.w r1,  32(r30)
000188  63414f00  loadli.w r2,  36(r30)
00018c  00d20002  load_param_i r4, 1
000190  e3015f00  loadli.w r3,  40(r30)
000194  8b101120  mul.s r1, r2, r1
000198  1f010200  addli r2, r4, 0
00019c  0b913050  fmac.s r2, r1, r3
0001a0  8b913020  mul.s r3, r1, r3
0001a4  1f71f1ff  addli r2, r2, -1
0001a8  0b114130  div.s r2, r2, r4
0001ac  00520002  load_param_i r4, 0
0001b0  8b104120  mul.s r1, r2, r4
0001b4  0b114150  fmac.s r2, r2, r4
0001b8  0b113140  min.s r2, r2, r3
0001bc  cb621114  ble.s r2, r1, 10424
0001c0  33110128  sext_int2long r[3:4], r2
0001c4  1f370000  addli r14, zero, 3
0001c8  9f080001  addli r17, zero, 128
0001cc  1f092000  addli r18, zero, 16
0001d0  9f0a1000  addli r21, zero, 8
0001d4  1f7b0000  addli r22, zero, 7
0001d8  9f6b0000  addli r23, zero, 6
0001dc  9f661000  addli r13, zero, 14
0001e0  9f1d0000  addli r27, zero, 1
0001e4  1f2a0000  addli r20, zero, 2
0001e8  ab0c4000  lui r25, 1024
0001ec  2b0e807f  lui r28, 522240
0001f0  2b0dffff  lui r26, 1048560
0001f4  73342ff6  store.d r[3:4], -152(r30)
0001f8  b3910028  sext_int2long r[4:5], r1
0001fc  1f71f01f  addli r2, zero, 4095
000200  ab00feff  lui r1, 1048544
000204  733c1ff4  store.d r[2:3], -168(r30)
000208  ab000900  lui r1, 144
00020c  2bf1ff7f  lui r2, 524287
000210  9b900060  ori r1, r1, 1536
000214  9b17f1ff  ori r15, r2, 4095
000218  2bf17f7f  lui r2, 522239
00021c  67461ffe  storeli.w r1, -156(r30)
000220  ab700000  lui r1, 7
000224  9b19f1ff  ori r19, r2, 4095
000228  1b98f0ff  ori r16, r1, 4095
00022c  b3000028  zext_int2long r[2:3], zero
000230  73381ff4  store.d r[2:3], -176(r30)
000234  1f010000  addli r2, zero, 0
000238  db090000  j 76
00023c  9f661000  addli r13, zero, 14
000240  9f102000  addli r1, zero, 17
000244  9f080001  addli r17, zero, 128
000248  1f092000  addli r18, zero, 16
00024c  9f0a1000  addli r21, zero, 8
000250  1f7b0000  addli r22, zero, 7
000254  9f6b0000  addli r23, zero, 6
000258  9f1d0000  addli r27, zero, 1
00025c  7d800600  xsignal r13, 0
000260  7d800000  xsignal r1, 0
000264  eb510ff9  load.d r[4:5], -112(r30)
000268  eb508ff6  load.d r[2:3], -152(r30)
00026c  1f2a0000  addli r20, zero, 2
000270  a7910100  addli.d r[4:5], r[4:5], 1
000274  93b01104  setlt.sl r1, r[4:5], r[2:3]
000278  63415fff  loadli.w r2,  -84(r30)
00027c  1f110100  addli r2, r2, 1
000280  b7df0012  beq r1, zero, 10228
000284  e3005f00  loadli.w r1,  40(r30)
000288  e74a2ffe  storeli.w r2, -84(r30)
00028c  63414f00  loadli.w r2,  36(r30)
000290  73383ff8  store.d r[4:5], -112(r30)
000294  8b901130  div.s r1, r3, r1
000298  0b912030  div.s r2, r1, r2
00029c  8b111131  div.s r3, r2, r17
0002a0  9bb03100  slli r1, r3, 3
0002a4  0b121918  sub.s r4, r18, r1
0002a8  0b125241  min.s r4, r4, r21
0002ac  8b124138  mod.s r5, r2, r4
0002b0  8b921210  add.s r5, r5, r1
0002b4  9f701000  addli r1, zero, 15
0002b8  93805004  setlt.u r1, r1, r5
0002bc  33830228  zext_int2long r[7:8], r5
0002c0  67475ffe  storeli.w r5, -140(r30)
0002c4  9f521000  addli r5, zero, 13
0002c8  73306ff8  store.d r[7:8], -128(r30)
0002cc  17335302  sll.d r[7:8], r[7:8], r5
0002d0  3bb00000  bneq r1, zero, 12
0002d4  6b540ff5  load.d r[9:10], -176(r30)
0002d8  db010000  j 12
0002dc  6b548ff5  load.d r[9:10], -168(r30)
0002e0  17048302  and.d r[9:10], r[7:8], r[9:10]
0002e4  634c5fff  loadli.w r24,  -84(r30)
0002e8  9f02000f  addli r5, zero, 1920
0002ec  00350002  core_id r10
0002f0  b3850228  zext_int2long r[12:13], r5
0002f4  ab020300  lui r5, 48
0002f8  8b10ec38  mod.s r1, r24, r14
0002fc  7338bffa  store.d r[12:13], -80(r30)
000300  e7491ffe  storeli.w r1, -100(r30)
000304  9bb0f000  slli r1, r1, 15
000308  8b925010  add.s r5, r1, r5
00030c  bb1ab501  bneq r10, r27, 676
000310  0b338318  sub.sl r[7:8], r[7:8], r[9:10]
000314  17537303  sra.d r[7:8], r[7:8], r23
000318  0b34b340  min.sl r[9:10], r[7:8], r[12:13]
00031c  6b550ff8  load.d r[11:12], -128(r30)
000320  7d100700  xwait r14, 0
000324  1735d502  sll.d r[11:12], r[11:12], r13
000328  0b366418  sub.sl r[13:14], r[9:10], r[7:8]
00032c  6b530f00  load.d r[7:8], 0(r30)
000330  8b23a310  add.ul r[8:9], r[7:8], r[11:12]
000334  1f030601  addli r6, r12, 128
000338  9f661000  addli r13, zero, 14
00033c  3f648a01  blt.s r20, r24, 280
000340  1f550000  addli r10, zero, 5
000344  9f440000  addli r9, zero, 4
000348  1d000500  lock zero, r10
00034c  15000014  dma_cfg zero, zero, zero, 10
000350  1500b015  dma_cfg zero, zero, r27, 10
000354  15004015  dma_cfg zero, zero, r20, 10
000358  1500e014  dma_cfg zero, zero, r14, 10
00035c  15009014  dma_cfg zero, zero, r9, 10
000360  9f141000  addli r9, zero, 9
000364  1500a014  dma_cfg zero, zero, r10, 10
000368  15007015  dma_cfg zero, zero, r23, 10
00036c  15006015  dma_cfg zero, zero, r22, 10
000370  15005015  dma_cfg zero, zero, r21, 10
000374  15009014  dma_cfg zero, zero, r9, 10
000378  9f241000  addli r9, zero, 10
00037c  15009014  dma_cfg zero, zero, r9, 10
000380  9f341000  addli r9, zero, 11
000384  15009014  dma_cfg zero, zero, r9, 10
000388  9f441000  addli r9, zero, 12
00038c  15009014  dma_cfg zero, zero, r9, 10
000390  9f541000  addli r9, zero, 13
000394  15009014  dma_cfg zero, zero, r9, 10
000398  9f741000  addli r9, zero, 15
00039c  1500d014  dma_cfg zero, zero, r13, 10
0003a0  15009014  dma_cfg zero, zero, r9, 10
0003a4  9f142000  addli r9, zero, 17
0003a8  15002015  dma_cfg zero, zero, r18, 10
0003ac  15009014  dma_cfg zero, zero, r9, 10
0003b0  9f242000  addli r9, zero, 18
0003b4  15009014  dma_cfg zero, zero, r9, 10
0003b8  9f342000  addli r9, zero, 19
0003bc  15009014  dma_cfg zero, zero, r9, 10
0003c0  9f442000  addli r9, zero, 20
0003c4  15009014  dma_cfg zero, zero, r9, 10
0003c8  9f542000  addli r9, zero, 21
0003cc  15009014  dma_cfg zero, zero, r9, 10
0003d0  9f642000  addli r9, zero, 22
0003d4  15009014  dma_cfg zero, zero, r9, 10
0003d8  9f742000  addli r9, zero, 23
0003dc  15009014  dma_cfg zero, zero, r9, 10
0003e0  9f043000  addli r9, zero, 24
0003e4  15009014  dma_cfg zero, zero, r9, 10
0003e8  9f143000  addli r9, zero, 25
0003ec  15009014  dma_cfg zero, zero, r9, 10
0003f0  9f243000  addli r9, zero, 26
0003f4  15009014  dma_cfg zero, zero, r9, 10
0003f8  9f343000  addli r9, zero, 27
0003fc  15009014  dma_cfg zero, zero, r9, 10
000400  9f443000  addli r9, zero, 28
000404  15009014  dma_cfg zero, zero, r9, 10
000408  9f543000  addli r9, zero, 29
00040c  15009014  dma_cfg zero, zero, r9, 10
000410  9f643000  addli r9, zero, 30
000414  15009014  dma_cfg zero, zero, r9, 10
000418  9f743000  addli r9, zero, 31
00041c  15009014  dma_cfg zero, zero, r9, 10
000420  9f048000  addli r9, zero, 64
000424  958d0d00  dma_cfg r27, r27, zero, 0
000428  950d0002  dma_cfg r27, zero, zero, 1
00042c  15000004  dma_cfg zero, zero, zero, 2
000430  95029006  dma_cfg r5, zero, r9, 3
000434  9f040002  addli r9, zero, 256
000438  95084009  dma_cfg r17, zero, r20, 4
00043c  9504100b  dma_cfg r9, zero, r17, 5
000440  15000010  dma_cfg zero, zero, zero, 8
000444  35000000  dma_run zero
000448  1500b00b  dma_cfg zero, zero, r27, 5
00044c  15000010  dma_cfg zero, zero, zero, 8
000450  1d100500  unlock r10
000454  ab040300  lui r9, 48
000458  1f450000  addli r10, zero, 4
00045c  670a0ffe  storeli.w zero, -96(r30)
000460  9f058000  addli r11, zero, 64
000464  9b940404  ori r9, r9, 64
000468  1d000500  lock zero, r10
00046c  958d0d00  dma_cfg r27, r27, zero, 0
000470  8b949010  add.s r9, r1, r9
000474  15000404  dma_cfg zero, r8, zero, 2
000478  9584b306  dma_cfg r9, r7, r11, 3
00047c  9f040002  addli r9, zero, 256
000480  1f540000  addli r8, zero, 5
000484  9f131000  addli r7, zero, 9
000488  95884509  dma_cfg r17, r11, r20, 4
00048c  9584680a  dma_cfg r9, r17, r6, 5
000490  15000010  dma_cfg zero, zero, zero, 8
000494  35000000  dma_run zero
000498  1500b00b  dma_cfg zero, zero, r27, 5
00049c  15000010  dma_cfg zero, zero, zero, 8
0004a0  1d100500  unlock r10
0004a4  1d000400  lock zero, r8
0004a8  15000014  dma_cfg zero, zero, zero, 10
0004ac  1500b015  dma_cfg zero, zero, r27, 10
0004b0  15004015  dma_cfg zero, zero, r20, 10
0004b4  1500e014  dma_cfg zero, zero, r14, 10
0004b8  1500a014  dma_cfg zero, zero, r10, 10
0004bc  15008014  dma_cfg zero, zero, r8, 10
0004c0  15007015  dma_cfg zero, zero, r23, 10
0004c4  15006015  dma_cfg zero, zero, r22, 10
0004c8  15005015  dma_cfg zero, zero, r21, 10
0004cc  15007014  dma_cfg zero, zero, r7, 10
0004d0  9f231000  addli r7, zero, 10
0004d4  15007014  dma_cfg zero, zero, r7, 10
0004d8  9f331000  addli r7, zero, 11
0004dc  15007014  dma_cfg zero, zero, r7, 10
0004e0  9f431000  addli r7, zero, 12
0004e4  15007014  dma_cfg zero, zero, r7, 10
0004e8  9f531000  addli r7, zero, 13
0004ec  15007014  dma_cfg zero, zero, r7, 10
0004f0  9f731000  addli r7, zero, 15
0004f4  1500d014  dma_cfg zero, zero, r13, 10
0004f8  15007014  dma_cfg zero, zero, r7, 10
0004fc  9f132000  addli r7, zero, 17
000500  15002015  dma_cfg zero, zero, r18, 10
000504  15007014  dma_cfg zero, zero, r7, 10
000508  9f232000  addli r7, zero, 18
00050c  15007014  dma_cfg zero, zero, r7, 10
000510  9f332000  addli r7, zero, 19
000514  15007014  dma_cfg zero, zero, r7, 10
000518  9f432000  addli r7, zero, 20
00051c  15007014  dma_cfg zero, zero, r7, 10
000520  9f532000  addli r7, zero, 21
000524  15007014  dma_cfg zero, zero, r7, 10
000528  9f632000  addli r7, zero, 22
00052c  15007014  dma_cfg zero, zero, r7, 10
000530  9f732000  addli r7, zero, 23
000534  15007014  dma_cfg zero, zero, r7, 10
000538  9f033000  addli r7, zero, 24
00053c  15007014  dma_cfg zero, zero, r7, 10
000540  9f133000  addli r7, zero, 25
000544  15007014  dma_cfg zero, zero, r7, 10
000548  9f233000  addli r7, zero, 26
00054c  15007014  dma_cfg zero, zero, r7, 10
000550  9f333000  addli r7, zero, 27
000554  15007014  dma_cfg zero, zero, r7, 10
000558  9f433000  addli r7, zero, 28
00055c  15007014  dma_cfg zero, zero, r7, 10
000560  9f533000  addli r7, zero, 29
000564  15007014  dma_cfg zero, zero, r7, 10
000568  9f633000  addli r7, zero, 30
00056c  15007014  dma_cfg zero, zero, r7, 10
000570  9f733000  addli r7, zero, 31
000574  15007014  dma_cfg zero, zero, r7, 10
000578  80330002  core_id r7
00057c  958d0d00  dma_cfg r27, r27, zero, 0
000580  950d0002  dma_cfg r27, zero, zero, 1
000584  15000004  dma_cfg zero, zero, zero, 2
000588  9502b006  dma_cfg r5, zero, r11, 3
00058c  95084009  dma_cfg r17, zero, r20, 4
000590  9504600a  dma_cfg r9, zero, r6, 5
000594  15000010  dma_cfg zero, zero, zero, 8
000598  35000000  dma_run zero
00059c  1500b00b  dma_cfg zero, zero, r27, 5
0005a0  15000010  dma_cfg zero, zero, zero, 8
0005a4  1d100400  unlock r8
0005a8  7d000a00  xsignal r20, 0
0005ac  db0a0000  j 84
0005b0  80330002  core_id r7
0005b4  3ba14301  bneq r7, r20, 72
0005b8  1f530000  addli r6, zero, 5
0005bc  7d100a00  xwait r20, 0
0005c0  7d100300  xwait r6, 0
0005c4  1d000000  lock zero, zero
0005c8  1f038000  addli r6, zero, 64
0005cc  010a0000  ds_cfg r20, zero, 0
0005d0  01030002  ds_cfg r6, zero, 1
0005d4  0103001c  ds_cfg r6, zero, 14
0005d8  8108001a  ds_cfg r17, zero, 13
0005dc  a1906202  shuffle_batch r1, r5, r6, 1
0005e0  9f120000  addli r5, zero, 1
0005e4  1d100000  unlock zero
0005e8  7d000700  xsignal r14, 0
0005ec  670a5ffe  storeli.w r5, -96(r30)
0005f0  9f420000  addli r5, zero, 4
0005f4  7d800200  xsignal r5, 0
0005f8  5b010000  j 8
0005fc  670a0ffe  storeli.w zero, -96(r30)
000600  9bb17100  slli r3, r3, 7
000604  0b113118  sub.s r2, r2, r3
000608  0b114130  div.s r2, r2, r4
00060c  63423fff  loadli.w r4,  -100(r30)
000610  1b3a0201  slli r20, r4, 16
000614  e7082ffe  storeli.w r2, -120(r30)
000618  33010128  zext_int2long r[3:4], r2
00061c  97316103  sll.d r[4:5], r[3:4], r22
000620  2b810400  lui r2, 72
000624  97b2b103  sll.d r[6:7], r[4:5], r27
000628  0b912010  add.s r2, r1, r2
00062c  733c5ff6  store.d r[6:7], -136(r30)
000630  bbf07303  bneq r7, r23, 1084
000634  eb518f00  load.d r[4:5], 8(r30)
000638  7d100b00  xwait r22, 0
00063c  8ba15110  add.ul r[4:5], r[4:5], r[6:7]
000640  e3425fff  loadli.w r5,  -84(r30)
000644  1f230000  addli r6, zero, 2
000648  3f645300  blt.s r6, r5, 280
00064c  1f540000  addli r8, zero, 5
000650  9f440000  addli r9, zero, 4
000654  9f121000  addli r5, zero, 9
000658  1d000400  lock zero, r8
00065c  15000014  dma_cfg zero, zero, zero, 10
000660  1500b015  dma_cfg zero, zero, r27, 10
000664  15006014  dma_cfg zero, zero, r6, 10
000668  1500e014  dma_cfg zero, zero, r14, 10
00066c  15009014  dma_cfg zero, zero, r9, 10
000670  15008014  dma_cfg zero, zero, r8, 10
000674  15007015  dma_cfg zero, zero, r23, 10
000678  15006015  dma_cfg zero, zero, r22, 10
00067c  15005015  dma_cfg zero, zero, r21, 10
000680  15005014  dma_cfg zero, zero, r5, 10
000684  9f221000  addli r5, zero, 10
000688  15005014  dma_cfg zero, zero, r5, 10
00068c  9f321000  addli r5, zero, 11
000690  15005014  dma_cfg zero, zero, r5, 10
000694  9f421000  addli r5, zero, 12
000698  15005014  dma_cfg zero, zero, r5, 10
00069c  9f521000  addli r5, zero, 13
0006a0  15005014  dma_cfg zero, zero, r5, 10
0006a4  9f721000  addli r5, zero, 15
0006a8  1500d014  dma_cfg zero, zero, r13, 10
0006ac  15005014  dma_cfg zero, zero, r5, 10
0006b0  9f122000  addli r5, zero, 17
0006b4  15002015  dma_cfg zero, zero, r18, 10
0006b8  15005014  dma_cfg zero, zero, r5, 10
0006bc  9f222000  addli r5, zero, 18
0006c0  15005014  dma_cfg zero, zero, r5, 10
0006c4  9f322000  addli r5, zero, 19
0006c8  15005014  dma_cfg zero, zero, r5, 10
0006cc  9f422000  addli r5, zero, 20
0006d0  15005014  dma_cfg zero, zero, r5, 10
0006d4  9f522000  addli r5, zero, 21
0006d8  15005014  dma_cfg zero, zero, r5, 10
0006dc  9f622000  addli r5, zero, 22
0006e0  15005014  dma_cfg zero, zero, r5, 10
0006e4  9f722000  addli r5, zero, 23
0006e8  15005014  dma_cfg zero, zero, r5, 10
0006ec  9f023000  addli r5, zero, 24
0006f0  15005014  dma_cfg zero, zero, r5, 10
0006f4  9f123000  addli r5, zero, 25
0006f8  15005014  dma_cfg zero, zero, r5, 10
0006fc  9f223000  addli r5, zero, 26
000700  15005014  dma_cfg zero, zero, r5, 10
000704  9f323000  addli r5, zero, 27
000708  15005014  dma_cfg zero, zero, r5, 10
00070c  9f423000  addli r5, zero, 28
000710  15005014  dma_cfg zero, zero, r5, 10
000714  9f523000  addli r5, zero, 29
000718  15005014  dma_cfg zero, zero, r5, 10
00071c  9f623000  addli r5, zero, 30
000720  15005014  dma_cfg zero, zero, r5, 10
000724  9f723000  addli r5, zero, 31
000728  15005014  dma_cfg zero, zero, r5, 10
00072c  9f028000  addli r5, zero, 64
000730  958d0d00  dma_cfg r27, r27, zero, 0
000734  950d0002  dma_cfg r27, zero, zero, 1
000738  15000004  dma_cfg zero, zero, zero, 2
00073c  15015006  dma_cfg r2, zero, r5, 3
000740  95089008  dma_cfg r17, zero, r9, 4
000744  9f040004  addli r9, zero, 512
000748  9504500a  dma_cfg r9, zero, r5, 5
00074c  15000010  dma_cfg zero, zero, zero, 8
000750  35000000  dma_run zero
000754  1500b00b  dma_cfg zero, zero, r27, 5
000758  15000010  dma_cfg zero, zero, zero, 8
00075c  1d100400  unlock r8
000760  ab820400  lui r5, 72
000764  674a0ffe  storeli.w zero, -92(r30)
000768  e70a0ffe  storeli.w zero, -88(r30)
00076c  1f048000  addli r8, zero, 64
000770  9b920204  ori r5, r5, 64
000774  8b905010  add.s r1, r1, r5
000778  9f420000  addli r5, zero, 4
00077c  1d800200  lock zero, r5
000780  958d0d00  dma_cfg r27, r27, zero, 0
000784  15000204  dma_cfg zero, r4, zero, 2
000788  95808106  dma_cfg r1, r3, r8, 3
00078c  1f020004  addli r4, zero, 512
000790  9f000020  addli r1, zero, 4096
000794  9f510000  addli r3, zero, 5
000798  95085408  dma_cfg r17, r8, r5, 4
00079c  1582800a  dma_cfg r4, r1, r8, 5
0007a0  9f101000  addli r1, zero, 9
0007a4  15000010  dma_cfg zero, zero, zero, 8
0007a8  35000000  dma_run zero
0007ac  1500b00b  dma_cfg zero, zero, r27, 5
0007b0  15000010  dma_cfg zero, zero, zero, 8
0007b4  1d900200  unlock r5
0007b8  1d800100  lock zero, r3
0007bc  15000014  dma_cfg zero, zero, zero, 10
0007c0  1500b015  dma_cfg zero, zero, r27, 10
0007c4  15006014  dma_cfg zero, zero, r6, 10
0007c8  1500e014  dma_cfg zero, zero, r14, 10
0007cc  15005014  dma_cfg zero, zero, r5, 10
0007d0  15003014  dma_cfg zero, zero, r3, 10
0007d4  15007015  dma_cfg zero, zero, r23, 10
0007d8  15006015  dma_cfg zero, zero, r22, 10
0007dc  15005015  dma_cfg zero, zero, r21, 10
0007e0  15001014  dma_cfg zero, zero, r1, 10
0007e4  9f201000  addli r1, zero, 10
0007e8  15001014  dma_cfg zero, zero, r1, 10
0007ec  9f301000  addli r1, zero, 11
0007f0  15001014  dma_cfg zero, zero, r1, 10
0007f4  9f401000  addli r1, zero, 12
0007f8  15001014  dma_cfg zero, zero, r1, 10
0007fc  9f501000  addli r1, zero, 13
000800  15001014  dma_cfg zero, zero, r1, 10
000804  9f701000  addli r1, zero, 15
000808  1500d014  dma_cfg zero, zero, r13, 10
00080c  15001014  dma_cfg zero, zero, r1, 10
000810  9f102000  addli r1, zero, 17
000814  15002015  dma_cfg zero, zero, r18, 10
000818  15001014  dma_cfg zero, zero, r1, 10
00081c  9f202000  addli r1, zero, 18
000820  15001014  dma_cfg zero, zero, r1, 10
000824  9f302000  addli r1, zero, 19
000828  15001014  dma_cfg zero, zero, r1, 10
00082c  9f402000  addli r1, zero, 20
000830  15001014  dma_cfg zero, zero, r1, 10
000834  9f502000  addli r1, zero, 21
000838  15001014  dma_cfg zero, zero, r1, 10
00083c  9f602000  addli r1, zero, 22
000840  15001014  dma_cfg zero, zero, r1, 10
000844  9f702000  addli r1, zero, 23
000848  15001014  dma_cfg zero, zero, r1, 10
00084c  9f003000  addli r1, zero, 24
000850  15001014  dma_cfg zero, zero, r1, 10
000854  9f103000  addli r1, zero, 25
000858  15001014  dma_cfg zero, zero, r1, 10
00085c  9f203000  addli r1, zero, 26
000860  15001014  dma_cfg zero, zero, r1, 10
000864  9f303000  addli r1, zero, 27
000868  15001014  dma_cfg zero, zero, r1, 10
00086c  9f403000  addli r1, zero, 28
000870  15001014  dma_cfg zero, zero, r1, 10
000874  9f503000  addli r1, zero, 29
000878  15001014  dma_cfg zero, zero, r1, 10
00087c  9f603000  addli r1, zero, 30
000880  15001014  dma_cfg zero, zero, r1, 10
000884  9f703000  addli r1, zero, 31
000888  15001014  dma_cfg zero, zero, r1, 10
00088c  958d0d00  dma_cfg r27, r27, zero, 0
000890  950d0002  dma_cfg r27, zero, zero, 1
000894  15000004  dma_cfg zero, zero, zero, 2
000898  15018006  dma_cfg r2, zero, r8, 3
00089c  95085008  dma_cfg r17, zero, r5, 4
0008a0  1502800a  dma_cfg r4, zero, r8, 5
0008a4  15000010  dma_cfg zero, zero, zero, 8
0008a8  35000000  dma_run zero
0008ac  1500b00b  dma_cfg zero, zero, r27, 5
0008b0  15000010  dma_cfg zero, zero, zero, 8
0008b4  1d900100  unlock r3
0008b8  7d800b00  xsignal r23, 0
0008bc  eb520ffb  load.d r[6:7], -80(r30)
0008c0  3bc0e300  bneq r7, r14, 16
0008c4  9f201000  addli r1, zero, 10
0008c8  7d900000  xwait r1, 0
0008cc  7d900600  xwait r13, 0
0008d0  e340cffe  loadli.w r1,  -156(r30)
0008d4  3d000000  xfence
0008d8  b3810828  zext_int2long r[4:5], r17
0008dc  00a00300  mfence { lm, sm, gm }
0008e0  8b1d1a10  add.s r27, r20, r1
0008e4  9f70f001  addli r1, zero, 255
0008e8  80a20004  csr_set csr5, r1
0008ec  9f701000  addli r1, zero, 15
0008f0  b3800028  zext_int2long r[2:3], r1
0008f4  733c1ffa  store.d r[2:3], -72(r30)
0008f8  00e00200  sync_core
0008fc  3be70300  bneq r7, zero, 472
000900  b3000028  zext_int2long r[2:3], zero
000904  3d000000  xfence
000908  00a00300  mfence { lm, sm, gm }
00090c  a7820000  addli.d r[6:7], r[2:3], 0
000910  73381ffe  store.d r[2:3], -16(r30)
000914  5b030000  j 24
000918  eb508ffb  load.d r[2:3], -72(r30)
00091c  eb528fff  load.d r[6:7], -8(r30)
000920  93a01204  setlt.ul r1, r[6:7], r[2:3]
000924  a7920200  addli.d r[6:7], r[6:7], 1
000928  b7860000  beq r1, zero, 416
00092c  9f700000  addli r1, zero, 7
000930  6b550fff  load.d r[11:12], -16(r30)
000934  733c5ffe  store.d r[6:7], -8(r30)
000938  17b41202  sll.d r[9:10], r[6:7], r1
00093c  db040000  j 36
000940  27450500  addli.d r[11:12], r[11:12], 4
000944  8b927d10  add.s r5, r27, r7
000948  13213502  setneq.d r2, r[11:12], r[4:5]
00094c  73e6e200  stores.w r14, 12(r5)
000950  73e42201  stores.w r18, 8(r5)
000954  73e27201  stores.w r23, 4(r5)
000958  73e01200  stores.w r1, 0(r5)
00095c  b77e01fe  beq r2, zero, -68
000960  8b208510  add.ul r[2:3], r[11:12], r[9:10]
000964  9bb32000  slli r7, r1, 2
000968  8b107a10  add.s r1, r20, r7
00096c  efc6c000  loads.w r13, 12(r1)
000970  6fcc0000  loads.w r24, 0(r1)
000974  efca4000  loads.w r21, 4(r1)
000978  6fcb8000  loads.w r22, 8(r1)
00097c  9788f600  and r17, r13, r15
000980  93001e05  setlt.u r1, r28, r17
000984  3bb00000  bneq r1, zero, 12
000988  1f870600  addli r14, r13, 0
00098c  5b010000  j 8
000990  17979601  or r14, r13, r25
000994  1706fb00  and r12, r22, r15
000998  9300ce04  setlt.u r1, r28, r12
00099c  3bb00000  bneq r1, zero, 12
0009a0  1f090b00  addli r18, r22, 0
0009a4  5b010000  j 8
0009a8  17199b01  or r18, r22, r25
0009ac  1781fa00  and r2, r21, r15
0009b0  93002e04  setlt.u r1, r28, r2
0009b4  3bb00000  bneq r1, zero, 12
0009b8  9f8b0a00  addli r23, r21, 0
0009bc  5b010000  j 8
0009c0  979b9a01  or r23, r21, r25
0009c4  9702fc00  and r5, r24, r15
0009c8  93005e04  setlt.u r1, r28, r5
0009cc  3bd00000  bneq r1, zero, 20
0009d0  9f000c00  addli r1, r24, 0
0009d4  93825904  setlt.u r5, r19, r5
0009d8  37d00200  beq r5, zero, 20
0009dc  db040000  j 36
0009e0  97109c01  or r1, r24, r25
0009e4  93825904  setlt.u r5, r19, r5
0009e8  3be00200  bneq r5, zero, 24
0009ec  9b400c01  srli r1, r24, 16
0009f0  9b801000  andi r1, r1, 1
0009f4  8b101c10  add.s r1, r24, r1
0009f8  8b900011  add.s r1, r1, r16
0009fc  9780a001  and r1, r1, r26
000a00  13812904  setlt.u r2, r19, r2
000a04  bb300100  bneq r2, zero, 44
000a08  1bc10a01  srli r2, r21, 16
000a0c  1b011100  andi r2, r2, 1
000a10  0b912a10  add.s r2, r21, r2
000a14  0b110111  add.s r2, r2, r16
000a18  970ba101  and r23, r2, r26
000a1c  1381c904  setlt.u r2, r19, r12
000a20  37600100  beq r2, zero, 24
000a24  13811905  setlt.u r2, r19, r17
000a28  3b6c01fe  bneq r2, zero, -232
000a2c  5b050000  j 40
000a30  1381c904  setlt.u r2, r19, r12
000a34  bb4f01fe  bneq r2, zero, -16
000a38  1b410b01  srli r2, r22, 16
000a3c  1b011100  andi r2, r2, 1
000a40  0b112b10  add.s r2, r22, r2
000a44  0b110111  add.s r2, r2, r16
000a48  1709a101  and r18, r2, r26
000a4c  13811905  setlt.u r2, r19, r17
000a50  bb4b01fe  bneq r2, zero, -272
000a54  1bc10601  srli r2, r13, 16
000a58  1b011100  andi r2, r2, 1
000a5c  0b912610  add.s r2, r13, r2
000a60  0b110111  add.s r2, r2, r16
000a64  1707a101  and r14, r2, r26
000a68  5bdbffff  j -296
000a6c  1f430000  addli r6, zero, 4
000a70  b7bd630e  beq r7, r6, 8044
000a74  1f028000  addli r4, zero, 64
000a78  bbaf630f  bneq r7, r22, 8168
000a7c  9f111000  addli r3, zero, 9
000a80  674a0ffe  storeli.w zero, -92(r30)
000a84  7d900b00  xwait r23, 0
000a88  7d900100  xwait r3, 0
000a8c  9f210000  addli r3, zero, 2
000a90  1d000000  lock zero, zero
000a94  81010000  ds_cfg r3, zero, 0
000a98  81080002  ds_cfg r17, zero, 1
000a9c  0102001c  ds_cfg r4, zero, 14
000aa0  8108001a  ds_cfg r17, zero, 13
000aa4  c1004104  shuffle_coa r1, r2, r4, 2
000aa8  9f100000  addli r1, zero, 1
000aac  1d100000  unlock zero
000ab0  7d000b00  xsignal r22, 0
000ab4  e70a1ffe  storeli.w r1, -88(r30)
000ab8  7d800a00  xsignal r21, 0
000abc  eb520ffb  load.d r[6:7], -80(r30)
000ac0  3798e3fe  beq r7, r14, -508
000ac4  dbc1ffff  j -500
000ac8  00200100  mfence { sm }
000acc  80330002  core_id r7
000ad0  eb520ffb  load.d r[6:7], -80(r30)
000ad4  9f703000  addli r1, zero, 31
000ad8  b3800028  zext_int2long r[2:3], r1
000adc  73341ffc  store.d r[2:3], -56(r30)
000ae0  9f100000  addli r1, zero, 1
000ae4  bbe51300  bneq r7, r1, 376
000ae8  9f002000  addli r1, zero, 16
000aec  3d000000  xfence
000af0  00a00300  mfence { lm, sm, gm }
000af4  b3820028  zext_int2long r[6:7], r1
000af8  5b030000  j 24
000afc  eb508ffc  load.d r[2:3], -56(r30)
000b00  eb528fff  load.d r[6:7], -8(r30)
000b04  93a01204  setlt.ul r1, r[6:7], r[2:3]
000b08  a7920200  addli.d r[6:7], r[6:7], 1
000b0c  37950000  beq r1, zero, 324
000b10  9f700000  addli r1, zero, 7
000b14  33050028  zext_int2long r[11:12], zero
000b18  733c5ffe  store.d r[6:7], -8(r30)
000b1c  17b41202  sll.d r[9:10], r[6:7], r1
000b20  db040000  j 36
000b24  27450500  addli.d r[11:12], r[11:12], 4
000b28  8b927d10  add.s r5, r27, r7
000b2c  93203502  setneq.d r1, r[11:12], r[4:5]
000b30  73e6e200  stores.w r14, 12(r5)
000b34  73e42201  stores.w r18, 8(r5)
000b38  73e27201  stores.w r23, 4(r5)
000b3c  73e02200  stores.w r2, 0(r5)
000b40  b7fe00fe  beq r1, zero, -68
000b44  8b208510  add.ul r[2:3], r[11:12], r[9:10]
000b48  9bb32000  slli r7, r1, 2
000b4c  0b117a10  add.s r2, r20, r7
000b50  ef46c100  loads.w r13, 12(r2)
000b54  ef4a0100  loads.w r21, 0(r2)
000b58  ef404100  loads.w r1, 4(r2)
000b5c  6f4b8100  loads.w r22, 8(r2)
000b60  9788f600  and r17, r13, r15
000b64  13011e05  setlt.u r2, r28, r17
000b68  3b300100  bneq r2, zero, 12
000b6c  1f870600  addli r14, r13, 0
000b70  5b010000  j 8
000b74  17979601  or r14, r13, r25
000b78  1706fb00  and r12, r22, r15
000b7c  1301ce04  setlt.u r2, r28, r12
000b80  3b300100  bneq r2, zero, 12
000b84  1f090b00  addli r18, r22, 0
000b88  5b010000  j 8
000b8c  17199b01  or r18, r22, r25
000b90  178cf000  and r24, r1, r15
000b94  13018e05  setlt.u r2, r28, r24
000b98  3b300100  bneq r2, zero, 12
000b9c  9f8b0000  addli r23, r1, 0
000ba0  5b010000  j 8
000ba4  979b9001  or r23, r1, r25
000ba8  9782fa00  and r5, r21, r15
000bac  13015e04  setlt.u r2, r28, r5
000bb0  3b500100  bneq r2, zero, 20
000bb4  1f810a00  addli r2, r21, 0
000bb8  93825904  setlt.u r5, r19, r5
000bbc  37d00200  beq r5, zero, 20
000bc0  db040000  j 36
000bc4  17919a01  or r2, r21, r25
000bc8  93825904  setlt.u r5, r19, r5
000bcc  3be00200  bneq r5, zero, 24
000bd0  1bc10a01  srli r2, r21, 16
000bd4  1b011100  andi r2, r2, 1
000bd8  0b912a10  add.s r2, r21, r2
000bdc  0b110111  add.s r2, r2, r16
000be0  1701a101  and r2, r2, r26
000be4  93828905  setlt.u r5, r19, r24
000be8  bbb00200  bneq r5, zero, 44
000bec  9bc20001  srli r5, r1, 16
000bf0  9b821200  andi r5, r5, 1
000bf4  8b905010  add.s r1, r1, r5
000bf8  8b900011  add.s r1, r1, r16
000bfc  978ba001  and r23, r1, r26
000c00  9380c904  setlt.u r1, r19, r12
000c04  37e00000  beq r1, zero, 24
000c08  93801905  setlt.u r1, r19, r17
000c0c  3bec00fe  bneq r1, zero, -232
000c10  5b050000  j 40
000c14  9380c904  setlt.u r1, r19, r12
000c18  bbcf00fe  bneq r1, zero, -16
000c1c  9b400b01  srli r1, r22, 16
000c20  9b801000  andi r1, r1, 1
000c24  8b101b10  add.s r1, r22, r1
000c28  8b900011  add.s r1, r1, r16
000c2c  1789a001  and r18, r1, r26
000c30  93801905  setlt.u r1, r19, r17
000c34  bbcb00fe  bneq r1, zero, -272
000c38  9bc00601  srli r1, r13, 16
000c3c  9b801000  andi r1, r1, 1
000c40  8b901610  add.s r1, r13, r1
000c44  8b900011  add.s r1, r1, r16
000c48  1787a001  and r14, r1, r26
000c4c  5bdbffff  j -296
000c50  00200100  mfence { sm }
000c54  80330002  core_id r7
000c58  eb520ffb  load.d r[6:7], -80(r30)
000c5c  9f705000  addli r1, zero, 47
000c60  b3800028  zext_int2long r[2:3], r1
000c64  73381ffc  store.d r[2:3], -48(r30)
000c68  e3004fff  loadli.w r1,  -96(r30)
000c6c  b7e50000  beq r1, zero, 376
000c70  9f004000  addli r1, zero, 32
000c74  3d000000  xfence
000c78  00a00300  mfence { lm, sm, gm }
000c7c  b3820028  zext_int2long r[6:7], r1
000c80  5b030000  j 24
000c84  eb500ffd  load.d r[2:3], -48(r30)
000c88  eb528fff  load.d r[6:7], -8(r30)
000c8c  93a01204  setlt.ul r1, r[6:7], r[2:3]
000c90  a7920200  addli.d r[6:7], r[6:7], 1
000c94  37950000  beq r1, zero, 324
000c98  9f700000  addli r1, zero, 7
000c9c  b3060028  zext_int2long r[14:15], zero
000ca0  733c5ffe  store.d r[6:7], -8(r30)
000ca4  17b51202  sll.d r[11:12], r[6:7], r1
000ca8  db040000  j 36
000cac  a7c60600  addli.d r[14:15], r[14:15], 4
000cb0  8b927d10  add.s r5, r27, r7
000cb4  93a03602  setneq.d r1, r[14:15], r[4:5]
000cb8  73e62201  stores.w r18, 12(r5)
000cbc  73e46200  stores.w r6, 8(r5)
000cc0  73e27201  stores.w r23, 4(r5)
000cc4  73e02200  stores.w r2, 0(r5)
000cc8  b7fe00fe  beq r1, zero, -68
000ccc  8ba0a610  add.ul r[2:3], r[14:15], r[11:12]
000cd0  9bb32000  slli r7, r1, 2
000cd4  0b117a10  add.s r2, r20, r7
000cd8  ef48c100  loads.w r17, 12(r2)
000cdc  ef4a0100  loads.w r21, 0(r2)
000ce0  ef404100  loads.w r1, 4(r2)
000ce4  6f4b8100  loads.w r22, 8(r2)
000ce8  9782f800  and r5, r17, r15
000cec  13015e04  setlt.u r2, r28, r5
000cf0  3b300100  bneq r2, zero, 12
000cf4  1f890800  addli r18, r17, 0
000cf8  5b010000  j 8
000cfc  17999801  or r18, r17, r25
000d00  1706fb00  and r12, r22, r15
000d04  1301ce04  setlt.u r2, r28, r12
000d08  3b300100  bneq r2, zero, 12
000d0c  1f030b00  addli r6, r22, 0
000d10  5b010000  j 8
000d14  17139b01  or r6, r22, r25
000d18  178cf000  and r24, r1, r15
000d1c  13018e05  setlt.u r2, r28, r24
000d20  3b300100  bneq r2, zero, 12
000d24  9f8b0000  addli r23, r1, 0
000d28  5b010000  j 8
000d2c  979b9001  or r23, r1, r25
000d30  1784fa00  and r8, r21, r15
000d34  13018e04  setlt.u r2, r28, r8
000d38  3b500100  bneq r2, zero, 20
000d3c  1f810a00  addli r2, r21, 0
000d40  13848904  setlt.u r8, r19, r8
000d44  37500400  beq r8, zero, 20
000d48  db040000  j 36
000d4c  17919a01  or r2, r21, r25
000d50  13848904  setlt.u r8, r19, r8
000d54  3b600400  bneq r8, zero, 24
000d58  1bc10a01  srli r2, r21, 16
000d5c  1b011100  andi r2, r2, 1
000d60  0b912a10  add.s r2, r21, r2
000d64  0b110111  add.s r2, r2, r16
000d68  1701a101  and r2, r2, r26
000d6c  13848905  setlt.u r8, r19, r24
000d70  bb300400  bneq r8, zero, 44
000d74  1bc40001  srli r8, r1, 16
000d78  1b041400  andi r8, r8, 1
000d7c  8b908010  add.s r1, r1, r8
000d80  8b900011  add.s r1, r1, r16
000d84  978ba001  and r23, r1, r26
000d88  9380c904  setlt.u r1, r19, r12
000d8c  37e00000  beq r1, zero, 24
000d90  93805904  setlt.u r1, r19, r5
000d94  3bec00fe  bneq r1, zero, -232
000d98  5b050000  j 40
000d9c  9380c904  setlt.u r1, r19, r12
000da0  bbcf00fe  bneq r1, zero, -16
000da4  9b400b01  srli r1, r22, 16
000da8  9b801000  andi r1, r1, 1
000dac  8b101b10  add.s r1, r22, r1
000db0  8b900011  add.s r1, r1, r16
000db4  1783a001  and r6, r1, r26
000db8  93805904  setlt.u r1, r19, r5
000dbc  bbcb00fe  bneq r1, zero, -272
000dc0  9bc00801  srli r1, r17, 16
000dc4  9b801000  andi r1, r1, 1
000dc8  8b901810  add.s r1, r17, r1
000dcc  8b900011  add.s r1, r1, r16
000dd0  1789a001  and r18, r1, r26
000dd4  5bdbffff  j -296
000dd8  00200100  mfence { sm }
000ddc  80330002  core_id r7
000de0  eb520ffb  load.d r[6:7], -80(r30)
000de4  9f707000  addli r1, zero, 63
000de8  b3800028  zext_int2long r[2:3], r1
000dec  733c1ffc  store.d r[2:3], -40(r30)
000df0  9f300000  addli r1, zero, 3
000df4  bbe51300  bneq r7, r1, 376
000df8  9f006000  addli r1, zero, 48
000dfc  3d000000  xfence
000e00  00a00300  mfence { lm, sm, gm }
000e04  b3820028  zext_int2long r[6:7], r1
000e08  5b030000  j 24
000e0c  eb508ffd  load.d r[2:3], -40(r30)
000e10  eb528fff  load.d r[6:7], -8(r30)
000e14  93a01204  setlt.ul r1, r[6:7], r[2:3]
000e18  a7920200  addli.d r[6:7], r[6:7], 1
000e1c  37950000  beq r1, zero, 324
000e20  9f700000  addli r1, zero, 7
000e24  b3060028  zext_int2long r[14:15], zero
000e28  733c5ffe  store.d r[6:7], -8(r30)
000e2c  17b51202  sll.d r[11:12], r[6:7], r1
000e30  db040000  j 36
000e34  a7c60600  addli.d r[14:15], r[14:15], 4
000e38  8b927d10  add.s r5, r27, r7
000e3c  93a03602  setneq.d r1, r[14:15], r[4:5]
000e40  73e61201  stores.w r17, 12(r5)
000e44  73e46200  stores.w r6, 8(r5)
000e48  73e27201  stores.w r23, 4(r5)
000e4c  73e02200  stores.w r2, 0(r5)
000e50  b7fe00fe  beq r1, zero, -68
000e54  8ba0a610  add.ul r[2:3], r[14:15], r[11:12]
000e58  9bb32000  slli r7, r1, 2
000e5c  0b117a10  add.s r2, r20, r7
000e60  6f4bc100  loads.w r22, 12(r2)
000e64  ef4a0100  loads.w r21, 0(r2)
000e68  ef404100  loads.w r1, 4(r2)
000e6c  6f498100  loads.w r18, 8(r2)
000e70  9702fb00  and r5, r22, r15
000e74  13015e04  setlt.u r2, r28, r5
000e78  3b300100  bneq r2, zero, 12
000e7c  9f080b00  addli r17, r22, 0
000e80  5b010000  j 8
000e84  97189b01  or r17, r22, r25
000e88  1706f900  and r12, r18, r15
000e8c  1301ce04  setlt.u r2, r28, r12
000e90  3b300100  bneq r2, zero, 12
000e94  1f030900  addli r6, r18, 0
000e98  5b010000  j 8
000e9c  17139901  or r6, r18, r25
000ea0  178cf000  and r24, r1, r15
000ea4  13018e05  setlt.u r2, r28, r24
000ea8  3b300100  bneq r2, zero, 12
000eac  9f8b0000  addli r23, r1, 0
000eb0  5b010000  j 8
000eb4  979b9001  or r23, r1, r25
000eb8  1784fa00  and r8, r21, r15
000ebc  13018e04  setlt.u r2, r28, r8
000ec0  3b500100  bneq r2, zero, 20
000ec4  1f810a00  addli r2, r21, 0
000ec8  13848904  setlt.u r8, r19, r8
000ecc  37500400  beq r8, zero, 20
000ed0  db040000  j 36
000ed4  17919a01  or r2, r21, r25
000ed8  13848904  setlt.u r8, r19, r8
000edc  3b600400  bneq r8, zero, 24
000ee0  1bc10a01  srli r2, r21, 16
000ee4  1b011100  andi r2, r2, 1
000ee8  0b912a10  add.s r2, r21, r2
000eec  0b110111  add.s r2, r2, r16
000ef0  1701a101  and r2, r2, r26
000ef4  13848905  setlt.u r8, r19, r24
000ef8  bb300400  bneq r8, zero, 44
000efc  1bc40001  srli r8, r1, 16
000f00  1b041400  andi r8, r8, 1
000f04  8b908010  add.s r1, r1, r8
000f08  8b900011  add.s r1, r1, r16
000f0c  978ba001  and r23, r1, r26
000f10  9380c904  setlt.u r1, r19, r12
000f14  37e00000  beq r1, zero, 24
000f18  93805904  setlt.u r1, r19, r5
000f1c  3bec00fe  bneq r1, zero, -232
000f20  5b050000  j 40
000f24  9380c904  setlt.u r1, r19, r12
000f28  bbcf00fe  bneq r1, zero, -16
000f2c  9b400901  srli r1, r18, 16
000f30  9b801000  andi r1, r1, 1
000f34  8b101910  add.s r1, r18, r1
000f38  8b900011  add.s r1, r1, r16
000f3c  1783a001  and r6, r1, r26
000f40  93805904  setlt.u r1, r19, r5
000f44  bbcb00fe  bneq r1, zero, -272
000f48  9b400b01  srli r1, r22, 16
000f4c  9b801000  andi r1, r1, 1
000f50  8b101b10  add.s r1, r22, r1
000f54  8b900011  add.s r1, r1, r16
000f58  9788a001  and r17, r1, r26
000f5c  5bdbffff  j -296
000f60  00200100  mfence { sm }
000f64  80330002  core_id r7
000f68  eb520ffb  load.d r[6:7], -80(r30)
000f6c  9f709000  addli r1, zero, 79
000f70  b3800028  zext_int2long r[2:3], r1
000f74  73301ffe  store.d r[2:3], -32(r30)
000f78  e3404fff  loadli.w r1,  -92(r30)
000f7c  b7e50000  beq r1, zero, 376
000f80  9f008000  addli r1, zero, 64
000f84  3d000000  xfence
000f88  00a00300  mfence { lm, sm, gm }
000f8c  b3820028  zext_int2long r[6:7], r1
000f90  5b030000  j 24
000f94  eb500ffe  load.d r[2:3], -32(r30)
000f98  eb528fff  load.d r[6:7], -8(r30)
000f9c  93a01204  setlt.ul r1, r[6:7], r[2:3]
000fa0  a7920200  addli.d r[6:7], r[6:7], 1
000fa4  37950000  beq r1, zero, 324
000fa8  9f700000  addli r1, zero, 7
000fac  330b0028  zext_int2long r[23:24], zero
000fb0  733c5ffe  store.d r[6:7], -8(r30)
000fb4  97b61202  sll.d r[14:15], r[6:7], r1
000fb8  db040000  j 36
000fbc  274b0b00  addli.d r[23:24], r[23:24], 4
000fc0  8b927d10  add.s r5, r27, r7
000fc4  93203b02  setneq.d r1, r[23:24], r[4:5]
000fc8  73e69200  stores.w r9, 12(r5)
000fcc  73e46200  stores.w r6, 8(r5)
000fd0  73e22201  stores.w r18, 4(r5)
000fd4  73e02200  stores.w r2, 0(r5)
000fd8  b7fe00fe  beq r1, zero, -68
000fdc  8b20db10  add.ul r[2:3], r[23:24], r[14:15]
000fe0  9bb32000  slli r7, r1, 2
000fe4  0b117a10  add.s r2, r20, r7
000fe8  6f44c100  loads.w r8, 12(r2)
000fec  ef4a0100  loads.w r21, 0(r2)
000ff0  ef404100  loads.w r1, 4(r2)
000ff4  ef488100  loads.w r17, 8(r2)
000ff8  9702f400  and r5, r8, r15
000ffc  13015e04  setlt.u r2, r28, r5
001000  3b300100  bneq r2, zero, 12
001004  9f040400  addli r9, r8, 0
001008  5b010000  j 8
00100c  97149401  or r9, r8, r25
001010  1786f800  and r12, r17, r15
001014  1301ce04  setlt.u r2, r28, r12
001018  3b300100  bneq r2, zero, 12
00101c  1f830800  addli r6, r17, 0
001020  5b010000  j 8
001024  17939801  or r6, r17, r25
001028  178cf000  and r24, r1, r15
00102c  13018e05  setlt.u r2, r28, r24
001030  3b300100  bneq r2, zero, 12
001034  1f890000  addli r18, r1, 0
001038  5b010000  j 8
00103c  17999001  or r18, r1, r25
001040  1785fa00  and r10, r21, r15
001044  1301ae04  setlt.u r2, r28, r10
001048  3b500100  bneq r2, zero, 20
00104c  1f810a00  addli r2, r21, 0
001050  1385a904  setlt.u r10, r19, r10
001054  37500500  beq r10, zero, 20
001058  db040000  j 36
00105c  17919a01  or r2, r21, r25
001060  1385a904  setlt.u r10, r19, r10
001064  3b600500  bneq r10, zero, 24
001068  1bc10a01  srli r2, r21, 16
00106c  1b011100  andi r2, r2, 1
001070  0b912a10  add.s r2, r21, r2
001074  0b110111  add.s r2, r2, r16
001078  1701a101  and r2, r2, r26
00107c  13858905  setlt.u r10, r19, r24
001080  bb300500  bneq r10, zero, 44
001084  1bc50001  srli r10, r1, 16
001088  1b051500  andi r10, r10, 1
00108c  8b90a010  add.s r1, r1, r10
001090  8b900011  add.s r1, r1, r16
001094  1789a001  and r18, r1, r26
001098  9380c904  setlt.u r1, r19, r12
00109c  37e00000  beq r1, zero, 24
0010a0  93805904  setlt.u r1, r19, r5
0010a4  3bec00fe  bneq r1, zero, -232
0010a8  5b050000  j 40
0010ac  9380c904  setlt.u r1, r19, r12
0010b0  bbcf00fe  bneq r1, zero, -16
0010b4  9bc00801  srli r1, r17, 16
0010b8  9b801000  andi r1, r1, 1
0010bc  8b901810  add.s r1, r17, r1
0010c0  8b900011  add.s r1, r1, r16
0010c4  1783a001  and r6, r1, r26
0010c8  93805904  setlt.u r1, r19, r5
0010cc  bbcb00fe  bneq r1, zero, -272
0010d0  9b400401  srli r1, r8, 16
0010d4  9b801000  andi r1, r1, 1
0010d8  8b101410  add.s r1, r8, r1
0010dc  8b900011  add.s r1, r1, r16
0010e0  9784a001  and r9, r1, r26
0010e4  5bdbffff  j -296
0010e8  00200100  mfence { sm }
0010ec  80330002  core_id r7
0010f0  eb520ffb  load.d r[6:7], -80(r30)
0010f4  9f70b000  addli r1, zero, 95
0010f8  b3800028  zext_int2long r[2:3], r1
0010fc  73341ffe  store.d r[2:3], -24(r30)
001100  9f500000  addli r1, zero, 5
001104  bbe51300  bneq r7, r1, 376
001108  9f00a000  addli r1, zero, 80
00110c  3d000000  xfence
001110  00a00300  mfence { lm, sm, gm }
001114  b3820028  zext_int2long r[6:7], r1
001118  5b030000  j 24
00111c  eb508ffe  load.d r[2:3], -24(r30)
001120  eb528fff  load.d r[6:7], -8(r30)
001124  93a01204  setlt.ul r1, r[6:7], r[2:3]
001128  a7920200  addli.d r[6:7], r[6:7], 1
00112c  37950000  beq r1, zero, 324
001130  9f700000  addli r1, zero, 7
001134  330b0028  zext_int2long r[23:24], zero
001138  733c5ffe  store.d r[6:7], -8(r30)
00113c  97b61202  sll.d r[14:15], r[6:7], r1
001140  db040000  j 36
001144  274b0b00  addli.d r[23:24], r[23:24], 4
001148  8b927d10  add.s r5, r27, r7
00114c  93203b02  setneq.d r1, r[23:24], r[4:5]
001150  73e69200  stores.w r9, 12(r5)
001154  73e46200  stores.w r6, 8(r5)
001158  73e22201  stores.w r18, 4(r5)
00115c  73e02200  stores.w r2, 0(r5)
001160  b7fe00fe  beq r1, zero, -68
001164  8b20db10  add.ul r[2:3], r[23:24], r[14:15]
001168  9bb32000  slli r7, r1, 2
00116c  0b117a10  add.s r2, r20, r7
001170  6f44c100  loads.w r8, 12(r2)
001174  ef4a0100  loads.w r21, 0(r2)
001178  ef404100  loads.w r1, 4(r2)
00117c  ef488100  loads.w r17, 8(r2)
001180  9702f400  and r5, r8, r15
001184  13015e04  setlt.u r2, r28, r5
001188  3b300100  bneq r2, zero, 12
00118c  9f040400  addli r9, r8, 0
001190  5b010000  j 8
001194  97149401  or r9, r8, r25
001198  1786f800  and r12, r17, r15
00119c  1301ce04  setlt.u r2, r28, r12
0011a0  3b300100  bneq r2, zero, 12
0011a4  1f830800  addli r6, r17, 0
0011a8  5b010000  j 8
0011ac  17939801  or r6, r17, r25
0011b0  178cf000  and r24, r1, r15
0011b4  13018e05  setlt.u r2, r28, r24
0011b8  3b300100  bneq r2, zero, 12
0011bc  1f890000  addli r18, r1, 0
0011c0  5b010000  j 8
0011c4  17999001  or r18, r1, r25
0011c8  1785fa00  and r10, r21, r15
0011cc  1301ae04  setlt.u r2, r28, r10
0011d0  3b500100  bneq r2, zero, 20
0011d4  1f810a00  addli r2, r21, 0
0011d8  1385a904  setlt.u r10, r19, r10
0011dc  37500500  beq r10, zero, 20
0011e0  db040000  j 36
0011e4  17919a01  or r2, r21, r25
0011e8  1385a904  setlt.u r10, r19, r10
0011ec  3b600500  bneq r10, zero, 24
0011f0  1bc10a01  srli r2, r21, 16
0011f4  1b011100  andi r2, r2, 1
0011f8  0b912a10  add.s r2, r21, r2
0011fc  0b110111  add.s r2, r2, r16
001200  1701a101  and r2, r2, r26
001204  13858905  setlt.u r10, r19, r24
001208  bb300500  bneq r10, zero, 44
00120c  1bc50001  srli r10, r1, 16
001210  1b051500  andi r10, r10, 1
001214  8b90a010  add.s r1, r1, r10
001218  8b900011  add.s r1, r1, r16
00121c  1789a001  and r18, r1, r26
001220  9380c904  setlt.u r1, r19, r12
001224  37e00000  beq r1, zero, 24
001228  93805904  setlt.u r1, r19, r5
00122c  3bec00fe  bneq r1, zero, -232
001230  5b050000  j 40
001234  9380c904  setlt.u r1, r19, r12
001238  bbcf00fe  bneq r1, zero, -16
00123c  9bc00801  srli r1, r17, 16
001240  9b801000  andi r1, r1, 1
001244  8b901810  add.s r1, r17, r1
001248  8b900011  add.s r1, r1, r16
00124c  1783a001  and r6, r1, r26
001250  93805904  setlt.u r1, r19, r5
001254  bbcb00fe  bneq r1, zero, -272
001258  9b400401  srli r1, r8, 16
00125c  9b801000  andi r1, r1, 1
001260  8b101410  add.s r1, r8, r1
001264  8b900011  add.s r1, r1, r16
001268  9784a001  and r9, r1, r26
00126c  5bdbffff  j -296
001270  00200100  mfence { sm }
001274  80330002  core_id r7
001278  eb520ffb  load.d r[6:7], -80(r30)
00127c  9f70d000  addli r1, zero, 111
001280  b3800028  zext_int2long r[2:3], r1
001284  73381ffe  store.d r[2:3], -16(r30)
001288  9f600000  addli r1, zero, 6
00128c  bbe51300  bneq r7, r1, 376
001290  9f00c000  addli r1, zero, 96
001294  3d000000  xfence
001298  00a00300  mfence { lm, sm, gm }
00129c  b3820028  zext_int2long r[6:7], r1
0012a0  5b030000  j 24
0012a4  eb500fff  load.d r[2:3], -16(r30)
0012a8  eb528fff  load.d r[6:7], -8(r30)
0012ac  93a01204  setlt.ul r1, r[6:7], r[2:3]
0012b0  a7920200  addli.d r[6:7], r[6:7], 1
0012b4  37950000  beq r1, zero, 324
0012b8  9f700000  addli r1, zero, 7
0012bc  330b0028  zext_int2long r[23:24], zero
0012c0  733c5ffe  store.d r[6:7], -8(r30)
0012c4  97b61202  sll.d r[14:15], r[6:7], r1
0012c8  db040000  j 36
0012cc  274b0b00  addli.d r[23:24], r[23:24], 4
0012d0  8b927d10  add.s r5, r27, r7
0012d4  93203b02  setneq.d r1, r[23:24], r[4:5]
0012d8  73e69200  stores.w r9, 12(r5)
0012dc  73e46200  stores.w r6, 8(r5)
0012e0  73e22201  stores.w r18, 4(r5)
0012e4  73e02200  stores.w r2, 0(r5)
0012e8  b7fe00fe  beq r1, zero, -68
0012ec  8b20db10  add.ul r[2:3], r[23:24], r[14:15]
0012f0  9bb32000  slli r7, r1, 2
0012f4  0b117a10  add.s r2, r20, r7
0012f8  6f44c100  loads.w r8, 12(r2)
0012fc  ef4a0100  loads.w r21, 0(r2)
001300  ef404100  loads.w r1, 4(r2)
001304  ef488100  loads.w r17, 8(r2)
001308  9702f400  and r5, r8, r15
00130c  13015e04  setlt.u r2, r28, r5
001310  3b300100  bneq r2, zero, 12
001314  9f040400  addli r9, r8, 0
001318  5b010000  j 8
00131c  97149401  or r9, r8, r25
001320  1786f800  and r12, r17, r15
001324  1301ce04  setlt.u r2, r28, r12
001328  3b300100  bneq r2, zero, 12
00132c  1f830800  addli r6, r17, 0
001330  5b010000  j 8
001334  17939801  or r6, r17, r25
001338  178cf000  and r24, r1, r15
00133c  13018e05  setlt.u r2, r28, r24
001340  3b300100  bneq r2, zero, 12
001344  1f890000  addli r18, r1, 0
001348  5b010000  j 8
00134c  17999001  or r18, r1, r25
001350  1785fa00  and r10, r21, r15
001354  1301ae04  setlt.u r2, r28, r10
001358  3b500100  bneq r2, zero, 20
00135c  1f810a00  addli r2, r21, 0
001360  1385a904  setlt.u r10, r19, r10
001364  37500500  beq r10, zero, 20
001368  db040000  j 36
00136c  17919a01  or r2, r21, r25
001370  1385a904  setlt.u r10, r19, r10
001374  3b600500  bneq r10, zero, 24
001378  1bc10a01  srli r2, r21, 16
00137c  1b011100  andi r2, r2, 1
001380  0b912a10  add.s r2, r21, r2
001384  0b110111  add.s r2, r2, r16
001388  1701a101  and r2, r2, r26
00138c  13858905  setlt.u r10, r19, r24
001390  bb300500  bneq r10, zero, 44
001394  1bc50001  srli r10, r1, 16
001398  1b051500  andi r10, r10, 1
00139c  8b90a010  add.s r1, r1, r10
0013a0  8b900011  add.s r1, r1, r16
0013a4  1789a001  and r18, r1, r26
0013a8  9380c904  setlt.u r1, r19, r12
0013ac  37e00000  beq r1, zero, 24
0013b0  93805904  setlt.u r1, r19, r5
0013b4  3bec00fe  bneq r1, zero, -232
0013b8  5b050000  j 40
0013bc  9380c904  setlt.u r1, r19, r12
0013c0  bbcf00fe  bneq r1, zero, -16
0013c4  9bc00801  srli r1, r17, 16
0013c8  9b801000  andi r1, r1, 1
0013cc  8b901810  add.s r1, r17, r1
0013d0  8b900011  add.s r1, r1, r16
0013d4  1783a001  and r6, r1, r26
0013d8  93805904  setlt.u r1, r19, r5
0013dc  bbcb00fe  bneq r1, zero, -272
0013e0  9b400401  srli r1, r8, 16
0013e4  9b801000  andi r1, r1, 1
0013e8  8b101410  add.s r1, r8, r1
0013ec  8b900011  add.s r1, r1, r16
0013f0  9784a001  and r9, r1, r26
0013f4  5bdbffff  j -296
0013f8  00200100  mfence { sm }
0013fc  80330002  core_id r7
001400  eb520ffb  load.d r[6:7], -80(r30)
001404  9f70f000  addli r1, zero, 127
001408  b3800028  zext_int2long r[2:3], r1
00140c  733c1ffe  store.d r[2:3], -8(r30)
001410  e3005fff  loadli.w r1,  -88(r30)
001414  b7e50000  beq r1, zero, 376
001418  9f00e000  addli r1, zero, 112
00141c  3d000000  xfence
001420  00a00300  mfence { lm, sm, gm }
001424  b3820028  zext_int2long r[6:7], r1
001428  5b030000  j 24
00142c  eb508fff  load.d r[2:3], -8(r30)
001430  eb520ffc  load.d r[6:7], -64(r30)
001434  93a01204  setlt.ul r1, r[6:7], r[2:3]
001438  a7920200  addli.d r[6:7], r[6:7], 1
00143c  37950000  beq r1, zero, 324
001440  9f700000  addli r1, zero, 7
001444  b3030028  zext_int2long r[8:9], zero
001448  73305ffc  store.d r[6:7], -64(r30)
00144c  17bb1202  sll.d r[23:24], r[6:7], r1
001450  db040000  j 36
001454  a7c30300  addli.d r[8:9], r[8:9], 4
001458  0b919d10  add.s r2, r27, r9
00145c  93a03302  setneq.d r1, r[8:9], r[4:5]
001460  73661101  stores.w r17, 12(r2)
001464  73646100  stores.w r6, 8(r2)
001468  73625101  stores.w r21, 4(r2)
00146c  7360d100  stores.w r13, 0(r2)
001470  b7fe00fe  beq r1, zero, -68
001474  8ba06311  add.ul r[2:3], r[8:9], r[23:24]
001478  9bb42000  slli r9, r1, 2
00147c  8b129a10  add.s r5, r20, r9
001480  6fccc200  loads.w r24, 12(r5)
001484  6fc10200  loads.w r2, 0(r5)
001488  efc04200  loads.w r1, 4(r5)
00148c  6fc98200  loads.w r18, 8(r5)
001490  9702fc00  and r5, r24, r15
001494  13035e04  setlt.u r6, r28, r5
001498  3b300300  bneq r6, zero, 12
00149c  9f080c00  addli r17, r24, 0
0014a0  5b010000  j 8
0014a4  97189c01  or r17, r24, r25
0014a8  1706f900  and r12, r18, r15
0014ac  1303ce04  setlt.u r6, r28, r12
0014b0  3b300300  bneq r6, zero, 12
0014b4  1f030900  addli r6, r18, 0
0014b8  5b010000  j 8
0014bc  17139901  or r6, r18, r25
0014c0  1785f000  and r10, r1, r15
0014c4  9305ae04  setlt.u r11, r28, r10
0014c8  3bb00500  bneq r11, zero, 12
0014cc  9f8a0000  addli r21, r1, 0
0014d0  5b010000  j 8
0014d4  979a9001  or r21, r1, r25
0014d8  9705f100  and r11, r2, r15
0014dc  9306be04  setlt.u r13, r28, r11
0014e0  3bd00600  bneq r13, zero, 20
0014e4  9f060100  addli r13, r2, 0
0014e8  9385b904  setlt.u r11, r19, r11
0014ec  37d00500  beq r11, zero, 20
0014f0  db040000  j 36
0014f4  97169101  or r13, r2, r25
0014f8  9385b904  setlt.u r11, r19, r11
0014fc  3be00500  bneq r11, zero, 24
001500  9b450101  srli r11, r2, 16
001504  9b851500  andi r11, r11, 1
001508  0b11b110  add.s r2, r2, r11
00150c  0b110111  add.s r2, r2, r16
001510  9706a101  and r13, r2, r26
001514  1381a904  setlt.u r2, r19, r10
001518  bb300100  bneq r2, zero, 44
00151c  1bc10001  srli r2, r1, 16
001520  1b011100  andi r2, r2, 1
001524  8b902010  add.s r1, r1, r2
001528  8b900011  add.s r1, r1, r16
00152c  978aa001  and r21, r1, r26
001530  9380c904  setlt.u r1, r19, r12
001534  37e00000  beq r1, zero, 24
001538  93805904  setlt.u r1, r19, r5
00153c  3bec00fe  bneq r1, zero, -232
001540  5b050000  j 40
001544  9380c904  setlt.u r1, r19, r12
001548  bbcf00fe  bneq r1, zero, -16
00154c  9b400901  srli r1, r18, 16
001550  9b801000  andi r1, r1, 1
001554  8b101910  add.s r1, r18, r1
001558  8b900011  add.s r1, r1, r16
00155c  1783a001  and r6, r1, r26
001560  93805904  setlt.u r1, r19, r5
001564  bbcb00fe  bneq r1, zero, -272
001568  9b400c01  srli r1, r24, 16
00156c  9b801000  andi r1, r1, 1
001570  8b101c10  add.s r1, r24, r1
001574  8b900011  add.s r1, r1, r16
001578  9788a001  and r17, r1, r26
00157c  5bdbffff  j -296
001580  00200100  mfence { sm }
001584  80330002  core_id r7
001588  eb520ffb  load.d r[6:7], -80(r30)
00158c  e3001fff  loadli.w r1,  -120(r30)
001590  9bb07000  slli r1, r1, 7
001594  b3800028  zext_int2long r[2:3], r1
001598  8ba25040  min.ul r[6:7], r[2:3], r[6:7]
00159c  a7820201  addli.d r[6:7], r[6:7], 128
0015a0  8ba21248  max.ul r[6:7], r[6:7], r[2:3]
0015a4  8bb01218  sub.sl r[2:3], r[6:7], r[2:3]
0015a8  8ba83040  min.ul r[18:19], r[2:3], r[4:5]
0015ac  9f70f001  addli r1, zero, 255
0015b0  80a20004  csr_set csr5, r1
0015b4  9f300000  addli r1, zero, 3
0015b8  00e00200  sync_core
0015bc  73341ff9  store.d r[18:19], -120(r30)
0015c0  bba01300  bneq r7, r1, 40
0015c4  9f301000  addli r1, zero, 11
0015c8  7d800000  xsignal r1, 0
0015cc  9f401000  addli r1, zero, 12
0015d0  7d800000  xsignal r1, 0
0015d4  9f501000  addli r1, zero, 13
0015d8  7d900000  xwait r1, 0
0015dc  9f202000  addli r1, zero, 18
0015e0  7d900000  xwait r1, 0
0015e4  db6b0000  j 860
0015e8  e3403fff  loadli.w r1,  -100(r30)
0015ec  2b010600  lui r2, 96
0015f0  ab020100  lui r5, 16
0015f4  9bb09000  slli r1, r1, 9
0015f8  8b962010  add.s r13, r1, r2
0015fc  1f110000  addli r2, zero, 1
001600  3beb2300  bneq r7, r2, 728
001604  eb520f01  load.d r[6:7], 16(r30)
001608  6b548ff7  load.d r[9:10], -136(r30)
00160c  1f250000  addli r10, zero, 2
001610  8ba28210  add.ul r[6:7], r[6:7], r[9:10]
001614  1f042000  addli r8, zero, 16
001618  7d100400  xwait r8, 0
00161c  63415fff  loadli.w r2,  -84(r30)
001620  bf542500  blt.s r10, r2, 308
001624  9f550000  addli r11, zero, 5
001628  9f140000  addli r9, zero, 1
00162c  1f310000  addli r2, zero, 3
001630  1f460000  addli r12, zero, 4
001634  1d800500  lock zero, r11
001638  15000014  dma_cfg zero, zero, zero, 10
00163c  15009014  dma_cfg zero, zero, r9, 10
001640  1500a014  dma_cfg zero, zero, r10, 10
001644  15002014  dma_cfg zero, zero, r2, 10
001648  1f610000  addli r2, zero, 6
00164c  1500c014  dma_cfg zero, zero, r12, 10
001650  1500b014  dma_cfg zero, zero, r11, 10
001654  15002014  dma_cfg zero, zero, r2, 10
001658  1f710000  addli r2, zero, 7
00165c  15002014  dma_cfg zero, zero, r2, 10
001660  1f011000  addli r2, zero, 8
001664  15002014  dma_cfg zero, zero, r2, 10
001668  1f111000  addli r2, zero, 9
00166c  15002014  dma_cfg zero, zero, r2, 10
001670  1f211000  addli r2, zero, 10
001674  15002014  dma_cfg zero, zero, r2, 10
001678  1f311000  addli r2, zero, 11
00167c  15002014  dma_cfg zero, zero, r2, 10
001680  1f411000  addli r2, zero, 12
001684  15002014  dma_cfg zero, zero, r2, 10
001688  1f511000  addli r2, zero, 13
00168c  15002014  dma_cfg zero, zero, r2, 10
001690  1f611000  addli r2, zero, 14
001694  15002014  dma_cfg zero, zero, r2, 10
001698  1f711000  addli r2, zero, 15
00169c  15002014  dma_cfg zero, zero, r2, 10
0016a0  1f112000  addli r2, zero, 17
0016a4  15008014  dma_cfg zero, zero, r8, 10
0016a8  15002014  dma_cfg zero, zero, r2, 10
0016ac  1f212000  addli r2, zero, 18
0016b0  15002014  dma_cfg zero, zero, r2, 10
0016b4  1f312000  addli r2, zero, 19
0016b8  15002014  dma_cfg zero, zero, r2, 10
0016bc  1f412000  addli r2, zero, 20
0016c0  15002014  dma_cfg zero, zero, r2, 10
0016c4  1f512000  addli r2, zero, 21
0016c8  15002014  dma_cfg zero, zero, r2, 10
0016cc  1f612000  addli r2, zero, 22
0016d0  15002014  dma_cfg zero, zero, r2, 10
0016d4  1f712000  addli r2, zero, 23
0016d8  15002014  dma_cfg zero, zero, r2, 10
0016dc  1f013000  addli r2, zero, 24
0016e0  15002014  dma_cfg zero, zero, r2, 10
0016e4  1f113000  addli r2, zero, 25
0016e8  15002014  dma_cfg zero, zero, r2, 10
0016ec  1f213000  addli r2, zero, 26
0016f0  15002014  dma_cfg zero, zero, r2, 10
0016f4  1f313000  addli r2, zero, 27
0016f8  15002014  dma_cfg zero, zero, r2, 10
0016fc  1f413000  addli r2, zero, 28
001700  15002014  dma_cfg zero, zero, r2, 10
001704  1f513000  addli r2, zero, 29
001708  15002014  dma_cfg zero, zero, r2, 10
00170c  1f613000  addli r2, zero, 30
001710  15002014  dma_cfg zero, zero, r2, 10
001714  1f713000  addli r2, zero, 31
001718  15002014  dma_cfg zero, zero, r2, 10
00171c  1f018000  addli r2, zero, 64
001720  95840400  dma_cfg r9, r9, zero, 0
001724  95040002  dma_cfg r9, zero, zero, 1
001728  15000004  dma_cfg zero, zero, zero, 2
00172c  95062006  dma_cfg r13, zero, r2, 3
001730  1f010001  addli r2, zero, 128
001734  1501c008  dma_cfg r2, zero, r12, 4
001738  1f010004  addli r2, zero, 512
00173c  1501900a  dma_cfg r2, zero, r9, 5
001740  15000010  dma_cfg zero, zero, zero, 8
001744  35000000  dma_run zero
001748  1500900a  dma_cfg zero, zero, r9, 5
00174c  15000010  dma_cfg zero, zero, zero, 8
001750  1d900500  unlock r11
001754  2b010600  lui r2, 96
001758  1f460000  addli r12, zero, 4
00175c  9f140000  addli r9, zero, 1
001760  1f078000  addli r14, zero, 64
001764  9f550000  addli r11, zero, 5
001768  1b110104  ori r2, r2, 64
00176c  1d000600  lock zero, r12
001770  95840400  dma_cfg r9, r9, zero, 0
001774  8b902010  add.s r1, r1, r2
001778  1ff13800  addli r2, r17, 31
00177c  15000304  dma_cfg zero, r6, zero, 2
001780  9580e206  dma_cfg r1, r5, r14, 3
001784  9b405100  srli r1, r2, 5
001788  1bb11800  slli r2, r17, 1
00178c  1f030001  addli r6, zero, 128
001790  9f020002  addli r5, zero, 256
001794  9f080004  addli r17, zero, 512
001798  15031708  dma_cfg r6, r14, r1, 4
00179c  1b01e103  andi r2, r2, 62
0017a0  9588920a  dma_cfg r17, r5, r9, 5
0017a4  9f320000  addli r5, zero, 3
0017a8  15002010  dma_cfg zero, zero, r2, 8
0017ac  35000000  dma_run zero
0017b0  1500900a  dma_cfg zero, zero, r9, 5
0017b4  15000010  dma_cfg zero, zero, zero, 8
0017b8  1d100600  unlock r12
0017bc  1d800500  lock zero, r11
0017c0  15000014  dma_cfg zero, zero, zero, 10
0017c4  15009014  dma_cfg zero, zero, r9, 10
0017c8  1500a014  dma_cfg zero, zero, r10, 10
0017cc  15005014  dma_cfg zero, zero, r5, 10
0017d0  9f620000  addli r5, zero, 6
0017d4  1500c014  dma_cfg zero, zero, r12, 10
0017d8  1500b014  dma_cfg zero, zero, r11, 10
0017dc  15005014  dma_cfg zero, zero, r5, 10
0017e0  9f720000  addli r5, zero, 7
0017e4  15005014  dma_cfg zero, zero, r5, 10
0017e8  9f021000  addli r5, zero, 8
0017ec  15005014  dma_cfg zero, zero, r5, 10
0017f0  9f121000  addli r5, zero, 9
0017f4  15005014  dma_cfg zero, zero, r5, 10
0017f8  9f221000  addli r5, zero, 10
0017fc  15005014  dma_cfg zero, zero, r5, 10
001800  9f321000  addli r5, zero, 11
001804  15005014  dma_cfg zero, zero, r5, 10
001808  9f421000  addli r5, zero, 12
00180c  15005014  dma_cfg zero, zero, r5, 10
001810  9f521000  addli r5, zero, 13
001814  15005014  dma_cfg zero, zero, r5, 10
001818  9f621000  addli r5, zero, 14
00181c  15005014  dma_cfg zero, zero, r5, 10
001820  9f721000  addli r5, zero, 15
001824  15005014  dma_cfg zero, zero, r5, 10
001828  15008014  dma_cfg zero, zero, r8, 10
00182c  1f142000  addli r8, zero, 17
001830  15008014  dma_cfg zero, zero, r8, 10
001834  1f242000  addli r8, zero, 18
001838  15008014  dma_cfg zero, zero, r8, 10
00183c  1f342000  addli r8, zero, 19
001840  15008014  dma_cfg zero, zero, r8, 10
001844  1f442000  addli r8, zero, 20
001848  15008014  dma_cfg zero, zero, r8, 10
00184c  1f542000  addli r8, zero, 21
001850  15008014  dma_cfg zero, zero, r8, 10
001854  1f642000  addli r8, zero, 22
001858  15008014  dma_cfg zero, zero, r8, 10
00185c  1f742000  addli r8, zero, 23
001860  15008014  dma_cfg zero, zero, r8, 10
001864  1f043000  addli r8, zero, 24
001868  15008014  dma_cfg zero, zero, r8, 10
00186c  1f143000  addli r8, zero, 25
001870  15008014  dma_cfg zero, zero, r8, 10
001874  1f243000  addli r8, zero, 26
001878  15008014  dma_cfg zero, zero, r8, 10
00187c  1f343000  addli r8, zero, 27
001880  15008014  dma_cfg zero, zero, r8, 10
001884  1f443000  addli r8, zero, 28
001888  15008014  dma_cfg zero, zero, r8, 10
00188c  1f543000  addli r8, zero, 29
001890  15008014  dma_cfg zero, zero, r8, 10
001894  1f643000  addli r8, zero, 30
001898  15008014  dma_cfg zero, zero, r8, 10
00189c  1f743000  addli r8, zero, 31
0018a0  15008014  dma_cfg zero, zero, r8, 10
0018a4  95840400  dma_cfg r9, r9, zero, 0
0018a8  95040002  dma_cfg r9, zero, zero, 1
0018ac  15000004  dma_cfg zero, zero, zero, 2
0018b0  9506e006  dma_cfg r13, zero, r14, 3
0018b4  15031008  dma_cfg r6, zero, r1, 4
0018b8  9508900a  dma_cfg r17, zero, r9, 5
0018bc  15002010  dma_cfg zero, zero, r2, 8
0018c0  35000000  dma_run zero
0018c4  1500900a  dma_cfg zero, zero, r9, 5
0018c8  15000010  dma_cfg zero, zero, zero, 8
0018cc  1d900500  unlock r11
0018d0  7d800200  xsignal r5, 0
0018d4  db0d0000  j 108
0018d8  9f500000  addli r1, zero, 5
0018dc  bb911300  bneq r7, r1, 100
0018e0  1f411000  addli r2, zero, 12
0018e4  9f000000  addli r1, zero, 0
0018e8  7d100100  xwait r2, 0
0018ec  1f711000  addli r2, zero, 15
0018f0  7d100100  xwait r2, 0
0018f4  1f210000  addli r2, zero, 2
0018f8  1d000100  lock zero, r2
0018fc  2b01803f  lui r2, 260096
001900  0d000002  ew_cfg zero, zero, zero, 1
001904  0d110100  ewcoeff_cfg r2, r2, zero, 0
001908  1f71f000  addli r2, zero, 127
00190c  0d000104  ew_cfg zero, r2, zero, 2
001910  1f110000  addli r2, zero, 1
001914  0d010006  ew_cfg r2, zero, zero, 3
001918  0b911d10  add.s r2, r27, r1
00191c  9f800004  addli r1, r1, 512
001920  2d01d100  dsmadd r2, r2, r13, 0
001924  bbdf50fe  bneq r1, r5, -12
001928  9f200000  addli r1, zero, 2
00192c  1d900000  unlock r1
001930  9f501000  addli r1, zero, 13
001934  7d800000  xsignal r1, 0
001938  9f002000  addli r1, zero, 16
00193c  7d800000  xsignal r1, 0
001940  ab000600  lui r1, 96
001944  3d000000  xfence
001948  00a00300  mfence { lm, sm, gm }
00194c  9b900060  ori r1, r1, 1536
001950  8b1a1a10  add.s r21, r20, r1
001954  9f70f001  addli r1, zero, 255
001958  80a20004  csr_set csr5, r1
00195c  00e00200  sync_core
001960  b7b70302  beq r7, zero, 1516
001964  9f100000  addli r1, zero, 1
001968  3bbf1302  bneq r7, r1, 1996
00196c  9f002000  addli r1, zero, 16
001970  3d000000  xfence
001974  00a00300  mfence { lm, sm, gm }
001978  b3820028  zext_int2long r[6:7], r1
00197c  5b030000  j 24
001980  eb508ffc  load.d r[2:3], -56(r30)
001984  eb520ffc  load.d r[6:7], -64(r30)
001988  93a01204  setlt.ul r1, r[6:7], r[2:3]
00198c  a7920200  addli.d r[6:7], r[6:7], 1
001990  b7e60000  beq r1, zero, 440
001994  9f700000  addli r1, zero, 7
001998  73305ffc  store.d r[6:7], -64(r30)
00199c  97b61202  sll.d r[14:15], r[6:7], r1
0019a0  bbd1ba01  bneq r21, r27, 116
0019a4  b3000028  zext_int2long r[2:3], zero
0019a8  5b060000  j 48
0019ac  1bc30301  srli r6, r7, 16
0019b0  1b031300  andi r6, r6, 1
0019b4  0b936310  add.s r6, r7, r6
0019b8  0b130311  add.s r6, r6, r16
0019bc  1703a301  and r6, r6, r26
0019c0  eb538fff  load.d r[8:9], -8(r30)
0019c4  8b925a10  add.s r5, r21, r5
0019c8  73e06200  stores.w r6, 0(r5)
0019cc  93a37004  setlt.ul r7, r[2:3], r[8:9]
0019d0  a7900000  addli.d r[2:3], r[2:3], 1
0019d4  b7be03fe  beq r7, zero, -84
0019d8  8ba2d010  add.ul r[6:7], r[2:3], r[14:15]
0019dc  9bb22200  slli r5, r5, 2
0019e0  0b935d10  add.s r6, r27, r5
0019e4  ef430300  loads.w r7, 0(r6)
0019e8  1784f300  and r8, r7, r15
0019ec  13038e04  setlt.u r6, r28, r8
0019f0  3b500300  bneq r6, zero, 20
0019f4  1f830300  addli r6, r7, 0
0019f8  13848904  setlt.u r8, r19, r8
0019fc  3b1f04fe  bneq r8, zero, -60
001a00  dbf5ffff  j -84
001a04  17939301  or r6, r7, r25
001a08  13848904  setlt.u r8, r19, r8
001a0c  bb5e04fe  bneq r8, zero, -76
001a10  dbf3ffff  j -100
001a14  b3030028  zext_int2long r[8:9], zero
001a18  db040000  j 36
001a1c  a7c30300  addli.d r[8:9], r[8:9], 4
001a20  0b939a10  add.s r6, r21, r9
001a24  93a03300  seteq.d r1, r[8:9], r[4:5]
001a28  73668301  stores.w r24, 12(r6)
001a2c  73645300  stores.w r5, 8(r6)
001a30  73626301  stores.w r22, 4(r6)
001a34  73602300  stores.w r2, 0(r6)
001a38  3bad00fe  bneq r1, zero, -184
001a3c  8ba0d310  add.ul r[2:3], r[8:9], r[14:15]
001a40  9bb42000  slli r9, r1, 2
001a44  0b919d10  add.s r2, r27, r9
001a48  ef48c100  loads.w r17, 12(r2)
001a4c  1789f800  and r18, r17, r15
001a50  93002e05  setlt.u r1, r28, r18
001a54  3bb00000  bneq r1, zero, 12
001a58  1f8c0800  addli r24, r17, 0
001a5c  5b010000  j 8
001a60  179c9801  or r24, r17, r25
001a64  ef408100  loads.w r1, 8(r2)
001a68  1786f000  and r12, r1, r15
001a6c  9302ce04  setlt.u r5, r28, r12
001a70  3bb00200  bneq r5, zero, 12
001a74  9f820000  addli r5, r1, 0
001a78  5b010000  j 8
001a7c  97929001  or r5, r1, r25
001a80  6f434100  loads.w r6, 4(r2)
001a84  970bf300  and r23, r6, r15
001a88  13057e05  setlt.u r10, r28, r23
001a8c  3b300500  bneq r10, zero, 12
001a90  1f0b0300  addli r22, r6, 0
001a94  5b010000  j 8
001a98  171b9301  or r22, r6, r25
001a9c  6f450100  loads.w r10, 0(r2)
001aa0  9705f500  and r11, r10, r15
001aa4  1301be04  setlt.u r2, r28, r11
001aa8  3b500100  bneq r2, zero, 20
001aac  1f010500  addli r2, r10, 0
001ab0  9385b904  setlt.u r11, r19, r11
001ab4  37d00500  beq r11, zero, 20
001ab8  db040000  j 36
001abc  17119501  or r2, r10, r25
001ac0  9385b904  setlt.u r11, r19, r11
001ac4  3be00500  bneq r11, zero, 24
001ac8  1b410501  srli r2, r10, 16
001acc  1b011100  andi r2, r2, 1
001ad0  0b112510  add.s r2, r10, r2
001ad4  0b110111  add.s r2, r2, r16
001ad8  1701a101  and r2, r2, r26
001adc  13857905  setlt.u r10, r19, r23
001ae0  bb300500  bneq r10, zero, 44
001ae4  1b450301  srli r10, r6, 16
001ae8  1b051500  andi r10, r10, 1
001aec  0b13a310  add.s r6, r6, r10
001af0  0b130311  add.s r6, r6, r16
001af4  170ba301  and r22, r6, r26
001af8  1383c904  setlt.u r6, r19, r12
001afc  37600300  beq r6, zero, 24
001b00  93802905  setlt.u r1, r19, r18
001b04  3bec00fe  bneq r1, zero, -232
001b08  5b050000  j 40
001b0c  1383c904  setlt.u r6, r19, r12
001b10  bb4f03fe  bneq r6, zero, -16
001b14  9bc20001  srli r5, r1, 16
001b18  9b821200  andi r5, r5, 1
001b1c  8b905010  add.s r1, r1, r5
001b20  8b900011  add.s r1, r1, r16
001b24  9782a001  and r5, r1, r26
001b28  93802905  setlt.u r1, r19, r18
001b2c  bbcb00fe  bneq r1, zero, -272
001b30  9bc00801  srli r1, r17, 16
001b34  9b801000  andi r1, r1, 1
001b38  8b901810  add.s r1, r17, r1
001b3c  8b900011  add.s r1, r1, r16
001b40  178ca001  and r24, r1, r26
001b44  5bdbffff  j -296
001b48  80330002  core_id r7
001b4c  00200100  mfence { sm }
001b50  e3004fff  loadli.w r1,  -96(r30)
001b54  bba70002  bneq r1, zero, 1512
001b58  9f300000  addli r1, zero, 3
001b5c  3bbf1302  bneq r7, r1, 1996
001b60  9f006000  addli r1, zero, 48
001b64  3d000000  xfence
001b68  00a00300  mfence { lm, sm, gm }
001b6c  b3820028  zext_int2long r[6:7], r1
001b70  5b030000  j 24
001b74  eb508ffd  load.d r[2:3], -40(r30)
001b78  eb520ffd  load.d r[6:7], -48(r30)
001b7c  93a01204  setlt.ul r1, r[6:7], r[2:3]
001b80  a7920200  addli.d r[6:7], r[6:7], 1
001b84  b7e60000  beq r1, zero, 440
001b88  9f700000  addli r1, zero, 7
001b8c  73385ffc  store.d r[6:7], -48(r30)
001b90  97b21202  sll.d r[6:7], r[6:7], r1
001b94  bbd1ba01  bneq r21, r27, 116
001b98  b3000028  zext_int2long r[2:3], zero
001b9c  5b060000  j 48
001ba0  1bc40401  srli r8, r9, 16
001ba4  1b041400  andi r8, r8, 1
001ba8  0b948410  add.s r8, r9, r8
001bac  0b140411  add.s r8, r8, r16
001bb0  1704a401  and r8, r8, r26
001bb4  eb548fff  load.d r[10:11], -8(r30)
001bb8  8b937a10  add.s r7, r21, r7
001bbc  73e08300  stores.w r8, 0(r7)
001bc0  93a49004  setlt.ul r9, r[2:3], r[10:11]
001bc4  a7900000  addli.d r[2:3], r[2:3], 1
001bc8  b7be04fe  beq r9, zero, -84
001bcc  8ba35010  add.ul r[8:9], r[2:3], r[6:7]
001bd0  9bb32300  slli r7, r7, 2
001bd4  0b947d10  add.s r8, r27, r7
001bd8  ef440400  loads.w r9, 0(r8)
001bdc  1785f400  and r10, r9, r15
001be0  1304ae04  setlt.u r8, r28, r10
001be4  3b500400  bneq r8, zero, 20
001be8  1f840400  addli r8, r9, 0
001bec  1385a904  setlt.u r10, r19, r10
001bf0  3b1f05fe  bneq r10, zero, -60
001bf4  dbf5ffff  j -84
001bf8  17949401  or r8, r9, r25
001bfc  1385a904  setlt.u r10, r19, r10
001c00  bb5e05fe  bneq r10, zero, -76
001c04  dbf3ffff  j -100
001c08  b3030028  zext_int2long r[8:9], zero
001c0c  db040000  j 36
001c10  a7c30300  addli.d r[8:9], r[8:9], 4
001c14  8b949a10  add.s r9, r21, r9
001c18  13a13300  seteq.d r2, r[8:9], r[4:5]
001c1c  73e6d400  stores.w r13, 12(r9)
001c20  73e42401  stores.w r18, 8(r9)
001c24  73e21400  stores.w r1, 4(r9)
001c28  73e08401  stores.w r24, 0(r9)
001c2c  3b2d01fe  bneq r2, zero, -184
001c30  8ba05310  add.ul r[2:3], r[8:9], r[6:7]
001c34  9bb42000  slli r9, r1, 2
001c38  0b919d10  add.s r2, r27, r9
001c3c  6f47c100  loads.w r14, 12(r2)
001c40  9708f700  and r17, r14, r15
001c44  93001e05  setlt.u r1, r28, r17
001c48  3bb00000  bneq r1, zero, 12
001c4c  9f060700  addli r13, r14, 0
001c50  5b010000  j 8
001c54  97169701  or r13, r14, r25
001c58  ef4b8100  loads.w r23, 8(r2)
001c5c  1786fb00  and r12, r23, r15
001c60  9300ce04  setlt.u r1, r28, r12
001c64  3bb00000  bneq r1, zero, 12
001c68  1f890b00  addli r18, r23, 0
001c6c  5b010000  j 8
001c70  17999b01  or r18, r23, r25
001c74  6f4b4100  loads.w r22, 4(r2)
001c78  1705fb00  and r10, r22, r15
001c7c  9300ae04  setlt.u r1, r28, r10
001c80  3bb00000  bneq r1, zero, 12
001c84  9f000b00  addli r1, r22, 0
001c88  5b010000  j 8
001c8c  97109b01  or r1, r22, r25
001c90  6f410100  loads.w r2, 0(r2)
001c94  9705f100  and r11, r2, r15
001c98  130cbe04  setlt.u r24, r28, r11
001c9c  3b500c00  bneq r24, zero, 20
001ca0  1f0c0100  addli r24, r2, 0
001ca4  9385b904  setlt.u r11, r19, r11
001ca8  37d00500  beq r11, zero, 20
001cac  db040000  j 36
001cb0  171c9101  or r24, r2, r25
001cb4  9385b904  setlt.u r11, r19, r11
001cb8  3be00500  bneq r11, zero, 24
001cbc  9b450101  srli r11, r2, 16
001cc0  9b851500  andi r11, r11, 1
001cc4  0b11b110  add.s r2, r2, r11
001cc8  0b110111  add.s r2, r2, r16
001ccc  170ca101  and r24, r2, r26
001cd0  1381a904  setlt.u r2, r19, r10
001cd4  bb300100  bneq r2, zero, 44
001cd8  9b400b01  srli r1, r22, 16
001cdc  9b801000  andi r1, r1, 1
001ce0  8b101b10  add.s r1, r22, r1
001ce4  8b900011  add.s r1, r1, r16
001ce8  9780a001  and r1, r1, r26
001cec  1381c904  setlt.u r2, r19, r12
001cf0  37600100  beq r2, zero, 24
001cf4  13811905  setlt.u r2, r19, r17
001cf8  3b6c01fe  bneq r2, zero, -232
001cfc  5b050000  j 40
001d00  1381c904  setlt.u r2, r19, r12
001d04  bb4f01fe  bneq r2, zero, -16
001d08  1bc10b01  srli r2, r23, 16
001d0c  1b011100  andi r2, r2, 1
001d10  0b912b10  add.s r2, r23, r2
001d14  0b110111  add.s r2, r2, r16
001d18  1709a101  and r18, r2, r26
001d1c  13811905  setlt.u r2, r19, r17
001d20  bb4b01fe  bneq r2, zero, -272
001d24  1b410701  srli r2, r14, 16
001d28  1b011100  andi r2, r2, 1
001d2c  0b112710  add.s r2, r14, r2
001d30  0b110111  add.s r2, r2, r16
001d34  9706a101  and r13, r2, r26
001d38  5bdbffff  j -296
001d3c  80330002  core_id r7
001d40  00200100  mfence { sm }
001d44  e3404fff  loadli.w r1,  -92(r30)
001d48  bba70002  bneq r1, zero, 1512
001d4c  9f500000  addli r1, zero, 5
001d50  3bbf1302  bneq r7, r1, 1996
001d54  9f00a000  addli r1, zero, 80
001d58  3d000000  xfence
001d5c  00a00300  mfence { lm, sm, gm }
001d60  b3820028  zext_int2long r[6:7], r1
001d64  5b030000  j 24
001d68  eb508ffe  load.d r[2:3], -24(r30)
001d6c  eb520ffe  load.d r[6:7], -32(r30)
001d70  93a01204  setlt.ul r1, r[6:7], r[2:3]
001d74  a7920200  addli.d r[6:7], r[6:7], 1
001d78  b7e60000  beq r1, zero, 440
001d7c  9f700000  addli r1, zero, 7
001d80  73305ffe  store.d r[6:7], -32(r30)
001d84  97b21202  sll.d r[6:7], r[6:7], r1
001d88  bbd1ba01  bneq r21, r27, 116
001d8c  b3000028  zext_int2long r[2:3], zero
001d90  5b060000  j 48
001d94  1bc40401  srli r8, r9, 16
001d98  1b041400  andi r8, r8, 1
001d9c  0b948410  add.s r8, r9, r8
001da0  0b140411  add.s r8, r8, r16
001da4  1704a401  and r8, r8, r26
001da8  eb548fff  load.d r[10:11], -8(r30)
001dac  8b937a10  add.s r7, r21, r7
001db0  73e08300  stores.w r8, 0(r7)
001db4  93a49004  setlt.ul r9, r[2:3], r[10:11]
001db8  a7900000  addli.d r[2:3], r[2:3], 1
001dbc  b7be04fe  beq r9, zero, -84
001dc0  8ba35010  add.ul r[8:9], r[2:3], r[6:7]
001dc4  9bb32300  slli r7, r7, 2
001dc8  0b947d10  add.s r8, r27, r7
001dcc  ef440400  loads.w r9, 0(r8)
001dd0  1785f400  and r10, r9, r15
001dd4  1304ae04  setlt.u r8, r28, r10
001dd8  3b500400  bneq r8, zero, 20
001ddc  1f840400  addli r8, r9, 0
001de0  1385a904  setlt.u r10, r19, r10
001de4  3b1f05fe  bneq r10, zero, -60
001de8  dbf5ffff  j -84
001dec  17949401  or r8, r9, r25
001df0  1385a904  setlt.u r10, r19, r10
001df4  bb5e05fe  bneq r10, zero, -76
001df8  dbf3ffff  j -100
001dfc  b3030028  zext_int2long r[8:9], zero
001e00  db040000  j 36
001e04  a7c30300  addli.d r[8:9], r[8:9], 4
001e08  8b949a10  add.s r9, r21, r9
001e0c  13a13300  seteq.d r2, r[8:9], r[4:5]
001e10  73e6d400  stores.w r13, 12(r9)
001e14  73e42401  stores.w r18, 8(r9)
001e18  73e21400  stores.w r1, 4(r9)
001e1c  73e08401  stores.w r24, 0(r9)
001e20  3b2d01fe  bneq r2, zero, -184
001e24  8ba05310  add.ul r[2:3], r[8:9], r[6:7]
001e28  9bb42000  slli r9, r1, 2
001e2c  0b919d10  add.s r2, r27, r9
001e30  6f47c100  loads.w r14, 12(r2)
001e34  9708f700  and r17, r14, r15
001e38  93001e05  setlt.u r1, r28, r17
001e3c  3bb00000  bneq r1, zero, 12
001e40  9f060700  addli r13, r14, 0
001e44  5b010000  j 8
001e48  97169701  or r13, r14, r25
001e4c  ef4b8100  loads.w r23, 8(r2)
001e50  1786fb00  and r12, r23, r15
001e54  9300ce04  setlt.u r1, r28, r12
001e58  3bb00000  bneq r1, zero, 12
001e5c  1f890b00  addli r18, r23, 0
001e60  5b010000  j 8
001e64  17999b01  or r18, r23, r25
001e68  6f4b4100  loads.w r22, 4(r2)
001e6c  1705fb00  and r10, r22, r15
001e70  9300ae04  setlt.u r1, r28, r10
001e74  3bb00000  bneq r1, zero, 12
001e78  9f000b00  addli r1, r22, 0
001e7c  5b010000  j 8
001e80  97109b01  or r1, r22, r25
001e84  6f410100  loads.w r2, 0(r2)
001e88  9705f100  and r11, r2, r15
001e8c  130cbe04  setlt.u r24, r28, r11
001e90  3b500c00  bneq r24, zero, 20
001e94  1f0c0100  addli r24, r2, 0
001e98  9385b904  setlt.u r11, r19, r11
001e9c  37d00500  beq r11, zero, 20
001ea0  db040000  j 36
001ea4  171c9101  or r24, r2, r25
001ea8  9385b904  setlt.u r11, r19, r11
001eac  3be00500  bneq r11, zero, 24
001eb0  9b450101  srli r11, r2, 16
001eb4  9b851500  andi r11, r11, 1
001eb8  0b11b110  add.s r2, r2, r11
001ebc  0b110111  add.s r2, r2, r16
001ec0  170ca101  and r24, r2, r26
001ec4  1381a904  setlt.u r2, r19, r10
001ec8  bb300100  bneq r2, zero, 44
001ecc  9b400b01  srli r1, r22, 16
001ed0  9b801000  andi r1, r1, 1
001ed4  8b101b10  add.s r1, r22, r1
001ed8  8b900011  add.s r1, r1, r16
001edc  9780a001  and r1, r1, r26
001ee0  1381c904  setlt.u r2, r19, r12
001ee4  37600100  beq r2, zero, 24
001ee8  13811905  setlt.u r2, r19, r17
001eec  3b6c01fe  bneq r2, zero, -232
001ef0  5b050000  j 40
001ef4  1381c904  setlt.u r2, r19, r12
001ef8  bb4f01fe  bneq r2, zero, -16
001efc  1bc10b01  srli r2, r23, 16
001f00  1b011100  andi r2, r2, 1
001f04  0b912b10  add.s r2, r23, r2
001f08  0b110111  add.s r2, r2, r16
001f0c  1709a101  and r18, r2, r26
001f10  13811905  setlt.u r2, r19, r17
001f14  bb4b01fe  bneq r2, zero, -272
001f18  1b410701  srli r2, r14, 16
001f1c  1b011100  andi r2, r2, 1
001f20  0b112710  add.s r2, r14, r2
001f24  0b110111  add.s r2, r2, r16
001f28  9706a101  and r13, r2, r26
001f2c  5bdbffff  j -296
001f30  80330002  core_id r7
001f34  00200100  mfence { sm }
001f38  9f600000  addli r1, zero, 6
001f3c  b7a71302  beq r7, r1, 1512
001f40  e3005fff  loadli.w r1,  -88(r30)
001f44  3bbf0002  bneq r1, zero, 1996
001f48  db350100  j 2476
001f4c  3d000000  xfence
001f50  b3020028  zext_int2long r[6:7], zero
001f54  00a00300  mfence { lm, sm, gm }
001f58  5b030000  j 24
001f5c  eb508ffb  load.d r[2:3], -72(r30)
001f60  eb520ffc  load.d r[6:7], -64(r30)
001f64  93a01204  setlt.ul r1, r[6:7], r[2:3]
001f68  a7920200  addli.d r[6:7], r[6:7], 1
001f6c  b7e60000  beq r1, zero, 440
001f70  9f700000  addli r1, zero, 7
001f74  73305ffc  store.d r[6:7], -64(r30)
001f78  97b61202  sll.d r[14:15], r[6:7], r1
001f7c  bbd1ba01  bneq r21, r27, 116
001f80  b3000028  zext_int2long r[2:3], zero
001f84  5b060000  j 48
001f88  1bc30301  srli r6, r7, 16
001f8c  1b031300  andi r6, r6, 1
001f90  0b936310  add.s r6, r7, r6
001f94  0b130311  add.s r6, r6, r16
001f98  1703a301  and r6, r6, r26
001f9c  eb538fff  load.d r[8:9], -8(r30)
001fa0  8b925a10  add.s r5, r21, r5
001fa4  73e06200  stores.w r6, 0(r5)
001fa8  93a37004  setlt.ul r7, r[2:3], r[8:9]
001fac  a7900000  addli.d r[2:3], r[2:3], 1
001fb0  b7be03fe  beq r7, zero, -84
001fb4  8ba2d010  add.ul r[6:7], r[2:3], r[14:15]
001fb8  9bb22200  slli r5, r5, 2
001fbc  0b935d10  add.s r6, r27, r5
001fc0  ef430300  loads.w r7, 0(r6)
001fc4  1784f300  and r8, r7, r15
001fc8  13038e04  setlt.u r6, r28, r8
001fcc  3b500300  bneq r6, zero, 20
001fd0  1f830300  addli r6, r7, 0
001fd4  13848904  setlt.u r8, r19, r8
001fd8  3b1f04fe  bneq r8, zero, -60
001fdc  dbf5ffff  j -84
001fe0  17939301  or r6, r7, r25
001fe4  13848904  setlt.u r8, r19, r8
001fe8  bb5e04fe  bneq r8, zero, -76
001fec  dbf3ffff  j -100
001ff0  b3030028  zext_int2long r[8:9], zero
001ff4  db040000  j 36
001ff8  a7c30300  addli.d r[8:9], r[8:9], 4
001ffc  0b939a10  add.s r6, r21, r9
002000  93a23300  seteq.d r5, r[8:9], r[4:5]
002004  73661301  stores.w r17, 12(r6)
002008  73641300  stores.w r1, 8(r6)
00200c  73626301  stores.w r22, 4(r6)
002010  73602300  stores.w r2, 0(r6)
002014  3bad02fe  bneq r5, zero, -184
002018  8ba0d310  add.ul r[2:3], r[8:9], r[14:15]
00201c  9bb42000  slli r9, r1, 2
002020  0b919d10  add.s r2, r27, r9
002024  6f4cc100  loads.w r24, 12(r2)
002028  1709fc00  and r18, r24, r15
00202c  93002e05  setlt.u r1, r28, r18
002030  3bb00000  bneq r1, zero, 12
002034  9f080c00  addli r17, r24, 0
002038  5b010000  j 8
00203c  97189c01  or r17, r24, r25
002040  ef428100  loads.w r5, 8(r2)
002044  1786f200  and r12, r5, r15
002048  9300ce04  setlt.u r1, r28, r12
00204c  3bb00000  bneq r1, zero, 12
002050  9f800200  addli r1, r5, 0
002054  5b010000  j 8
002058  97909201  or r1, r5, r25
00205c  6f434100  loads.w r6, 4(r2)
002060  970bf300  and r23, r6, r15
002064  13057e05  setlt.u r10, r28, r23
002068  3b300500  bneq r10, zero, 12
00206c  1f0b0300  addli r22, r6, 0
002070  5b010000  j 8
002074  171b9301  or r22, r6, r25
002078  6f450100  loads.w r10, 0(r2)
00207c  9705f500  and r11, r10, r15
002080  1301be04  setlt.u r2, r28, r11
002084  3b500100  bneq r2, zero, 20
002088  1f010500  addli r2, r10, 0
00208c  9385b904  setlt.u r11, r19, r11
002090  37d00500  beq r11, zero, 20
002094  db040000  j 36
002098  17119501  or r2, r10, r25
00209c  9385b904  setlt.u r11, r19, r11
0020a0  3be00500  bneq r11, zero, 24
0020a4  1b410501  srli r2, r10, 16
0020a8  1b011100  andi r2, r2, 1
0020ac  0b112510  add.s r2, r10, r2
0020b0  0b110111  add.s r2, r2, r16
0020b4  1701a101  and r2, r2, r26
0020b8  13857905  setlt.u r10, r19, r23
0020bc  bb300500  bneq r10, zero, 44
0020c0  1b450301  srli r10, r6, 16
0020c4  1b051500  andi r10, r10, 1
0020c8  0b13a310  add.s r6, r6, r10
0020cc  0b130311  add.s r6, r6, r16
0020d0  170ba301  and r22, r6, r26
0020d4  1383c904  setlt.u r6, r19, r12
0020d8  37600300  beq r6, zero, 24
0020dc  93822905  setlt.u r5, r19, r18
0020e0  3bec02fe  bneq r5, zero, -232
0020e4  5b050000  j 40
0020e8  1383c904  setlt.u r6, r19, r12
0020ec  bb4f03fe  bneq r6, zero, -16
0020f0  9bc00201  srli r1, r5, 16
0020f4  9b801000  andi r1, r1, 1
0020f8  8b901210  add.s r1, r5, r1
0020fc  8b900011  add.s r1, r1, r16
002100  9780a001  and r1, r1, r26
002104  93822905  setlt.u r5, r19, r18
002108  bbcb02fe  bneq r5, zero, -272
00210c  9b420c01  srli r5, r24, 16
002110  9b821200  andi r5, r5, 1
002114  8b125c10  add.s r5, r24, r5
002118  8b920211  add.s r5, r5, r16
00211c  9788a201  and r17, r5, r26
002120  5bdbffff  j -296
002124  80330002  core_id r7
002128  00200100  mfence { sm }
00212c  9f100000  addli r1, zero, 1
002130  b7f013fc  beq r7, r1, -1988
002134  e3004fff  loadli.w r1,  -96(r30)
002138  b78800fc  beq r1, zero, -1504
00213c  9f004000  addli r1, zero, 32
002140  3d000000  xfence
002144  00a00300  mfence { lm, sm, gm }
002148  b3820028  zext_int2long r[6:7], r1
00214c  5b030000  j 24
002150  eb500ffd  load.d r[2:3], -48(r30)
002154  eb528ffc  load.d r[6:7], -56(r30)
002158  93a01204  setlt.ul r1, r[6:7], r[2:3]
00215c  a7920200  addli.d r[6:7], r[6:7], 1
002160  b7e60000  beq r1, zero, 440
002164  9f700000  addli r1, zero, 7
002168  73345ffc  store.d r[6:7], -56(r30)
00216c  97b61202  sll.d r[14:15], r[6:7], r1
002170  bbd1ba01  bneq r21, r27, 116
002174  b3000028  zext_int2long r[2:3], zero
002178  5b060000  j 48
00217c  1bc30301  srli r6, r7, 16
002180  1b031300  andi r6, r6, 1
002184  0b936310  add.s r6, r7, r6
002188  0b130311  add.s r6, r6, r16
00218c  1703a301  and r6, r6, r26
002190  eb538fff  load.d r[8:9], -8(r30)
002194  8b925a10  add.s r5, r21, r5
002198  73e06200  stores.w r6, 0(r5)
00219c  93a37004  setlt.ul r7, r[2:3], r[8:9]
0021a0  a7900000  addli.d r[2:3], r[2:3], 1
0021a4  b7be03fe  beq r7, zero, -84
0021a8  8ba2d010  add.ul r[6:7], r[2:3], r[14:15]
0021ac  9bb22200  slli r5, r5, 2
0021b0  0b935d10  add.s r6, r27, r5
0021b4  ef430300  loads.w r7, 0(r6)
0021b8  1784f300  and r8, r7, r15
0021bc  13038e04  setlt.u r6, r28, r8
0021c0  3b500300  bneq r6, zero, 20
0021c4  1f830300  addli r6, r7, 0
0021c8  13848904  setlt.u r8, r19, r8
0021cc  3b1f04fe  bneq r8, zero, -60
0021d0  dbf5ffff  j -84
0021d4  17939301  or r6, r7, r25
0021d8  13848904  setlt.u r8, r19, r8
0021dc  bb5e04fe  bneq r8, zero, -76
0021e0  dbf3ffff  j -100
0021e4  b3030028  zext_int2long r[8:9], zero
0021e8  db040000  j 36
0021ec  a7c30300  addli.d r[8:9], r[8:9], 4
0021f0  0b939a10  add.s r6, r21, r9
0021f4  13a13300  seteq.d r2, r[8:9], r[4:5]
0021f8  73666301  stores.w r22, 12(r6)
0021fc  73645300  stores.w r5, 8(r6)
002200  73621300  stores.w r1, 4(r6)
002204  73608301  stores.w r24, 0(r6)
002208  3b2d01fe  bneq r2, zero, -184
00220c  8ba0d310  add.ul r[2:3], r[8:9], r[14:15]
002210  9bb42000  slli r9, r1, 2
002214  0b919d10  add.s r2, r27, r9
002218  ef48c100  loads.w r17, 12(r2)
00221c  1789f800  and r18, r17, r15
002220  93002e05  setlt.u r1, r28, r18
002224  3bb00000  bneq r1, zero, 12
002228  1f8b0800  addli r22, r17, 0
00222c  5b010000  j 8
002230  179b9801  or r22, r17, r25
002234  ef4b8100  loads.w r23, 8(r2)
002238  1786fb00  and r12, r23, r15
00223c  9300ce04  setlt.u r1, r28, r12
002240  3bb00000  bneq r1, zero, 12
002244  9f820b00  addli r5, r23, 0
002248  5b010000  j 8
00224c  97929b01  or r5, r23, r25
002250  6f434100  loads.w r6, 4(r2)
002254  1705f300  and r10, r6, r15
002258  9300ae04  setlt.u r1, r28, r10
00225c  3bb00000  bneq r1, zero, 12
002260  9f000300  addli r1, r6, 0
002264  5b010000  j 8
002268  97109301  or r1, r6, r25
00226c  6f410100  loads.w r2, 0(r2)
002270  9705f100  and r11, r2, r15
002274  130cbe04  setlt.u r24, r28, r11
002278  3b500c00  bneq r24, zero, 20
00227c  1f0c0100  addli r24, r2, 0
002280  9385b904  setlt.u r11, r19, r11
002284  37d00500  beq r11, zero, 20
002288  db040000  j 36
00228c  171c9101  or r24, r2, r25
002290  9385b904  setlt.u r11, r19, r11
002294  3be00500  bneq r11, zero, 24
002298  9b450101  srli r11, r2, 16
00229c  9b851500  andi r11, r11, 1
0022a0  0b11b110  add.s r2, r2, r11
0022a4  0b110111  add.s r2, r2, r16
0022a8  170ca101  and r24, r2, r26
0022ac  1381a904  setlt.u r2, r19, r10
0022b0  bb300100  bneq r2, zero, 44
0022b4  9b400301  srli r1, r6, 16
0022b8  9b801000  andi r1, r1, 1
0022bc  8b101310  add.s r1, r6, r1
0022c0  8b900011  add.s r1, r1, r16
0022c4  9780a001  and r1, r1, r26
0022c8  1381c904  setlt.u r2, r19, r12
0022cc  37600100  beq r2, zero, 24
0022d0  13812905  setlt.u r2, r19, r18
0022d4  3b6c01fe  bneq r2, zero, -232
0022d8  5b050000  j 40
0022dc  1381c904  setlt.u r2, r19, r12
0022e0  bb4f01fe  bneq r2, zero, -16
0022e4  1bc10b01  srli r2, r23, 16
0022e8  1b011100  andi r2, r2, 1
0022ec  0b912b10  add.s r2, r23, r2
0022f0  0b110111  add.s r2, r2, r16
0022f4  9702a101  and r5, r2, r26
0022f8  13812905  setlt.u r2, r19, r18
0022fc  bb4b01fe  bneq r2, zero, -272
002300  1bc10801  srli r2, r17, 16
002304  1b011100  andi r2, r2, 1
002308  0b912810  add.s r2, r17, r2
00230c  0b110111  add.s r2, r2, r16
002310  170ba101  and r22, r2, r26
002314  5bdbffff  j -296
002318  80330002  core_id r7
00231c  00200100  mfence { sm }
002320  9f300000  addli r1, zero, 3
002324  b7f013fc  beq r7, r1, -1988
002328  e3404fff  loadli.w r1,  -92(r30)
00232c  b78800fc  beq r1, zero, -1504
002330  9f008000  addli r1, zero, 64
002334  3d000000  xfence
002338  00a00300  mfence { lm, sm, gm }
00233c  b3820028  zext_int2long r[6:7], r1
002340  5b030000  j 24
002344  eb500ffe  load.d r[2:3], -32(r30)
002348  eb528ffd  load.d r[6:7], -40(r30)
00234c  93a01204  setlt.ul r1, r[6:7], r[2:3]
002350  a7920200  addli.d r[6:7], r[6:7], 1
002354  b7e60000  beq r1, zero, 440
002358  9f700000  addli r1, zero, 7
00235c  733c5ffc  store.d r[6:7], -40(r30)
002360  97b21202  sll.d r[6:7], r[6:7], r1
002364  bbd1ba01  bneq r21, r27, 116
002368  b3000028  zext_int2long r[2:3], zero
00236c  5b060000  j 48
002370  1bc40401  srli r8, r9, 16
002374  1b041400  andi r8, r8, 1
002378  0b948410  add.s r8, r9, r8
00237c  0b140411  add.s r8, r8, r16
002380  1704a401  and r8, r8, r26
002384  eb548fff  load.d r[10:11], -8(r30)
002388  8b937a10  add.s r7, r21, r7
00238c  73e08300  stores.w r8, 0(r7)
002390  93a49004  setlt.ul r9, r[2:3], r[10:11]
002394  a7900000  addli.d r[2:3], r[2:3], 1
002398  b7be04fe  beq r9, zero, -84
00239c  8ba35010  add.ul r[8:9], r[2:3], r[6:7]
0023a0  9bb32300  slli r7, r7, 2
0023a4  0b947d10  add.s r8, r27, r7
0023a8  ef440400  loads.w r9, 0(r8)
0023ac  1785f400  and r10, r9, r15
0023b0  1304ae04  setlt.u r8, r28, r10
0023b4  3b500400  bneq r8, zero, 20
0023b8  1f840400  addli r8, r9, 0
0023bc  1385a904  setlt.u r10, r19, r10
0023c0  3b1f05fe  bneq r10, zero, -60
0023c4  dbf5ffff  j -84
0023c8  17949401  or r8, r9, r25
0023cc  1385a904  setlt.u r10, r19, r10
0023d0  bb5e05fe  bneq r10, zero, -76
0023d4  dbf3ffff  j -100
0023d8  b3030028  zext_int2long r[8:9], zero
0023dc  db040000  j 36
0023e0  a7c30300  addli.d r[8:9], r[8:9], 4
0023e4  8b949a10  add.s r9, r21, r9
0023e8  13a13300  seteq.d r2, r[8:9], r[4:5]
0023ec  73e6d400  stores.w r13, 12(r9)
0023f0  73e42401  stores.w r18, 8(r9)
0023f4  73e21400  stores.w r1, 4(r9)
0023f8  73e08401  stores.w r24, 0(r9)
0023fc  3b2d01fe  bneq r2, zero, -184
002400  8ba05310  add.ul r[2:3], r[8:9], r[6:7]
002404  9bb42000  slli r9, r1, 2
002408  0b919d10  add.s r2, r27, r9
00240c  6f47c100  loads.w r14, 12(r2)
002410  9708f700  and r17, r14, r15
002414  93001e05  setlt.u r1, r28, r17
002418  3bb00000  bneq r1, zero, 12
00241c  9f060700  addli r13, r14, 0
002420  5b010000  j 8
002424  97169701  or r13, r14, r25
002428  ef4b8100  loads.w r23, 8(r2)
00242c  1786fb00  and r12, r23, r15
002430  9300ce04  setlt.u r1, r28, r12
002434  3bb00000  bneq r1, zero, 12
002438  1f890b00  addli r18, r23, 0
00243c  5b010000  j 8
002440  17999b01  or r18, r23, r25
002444  6f4b4100  loads.w r22, 4(r2)
002448  1705fb00  and r10, r22, r15
00244c  9300ae04  setlt.u r1, r28, r10
002450  3bb00000  bneq r1, zero, 12
002454  9f000b00  addli r1, r22, 0
002458  5b010000  j 8
00245c  97109b01  or r1, r22, r25
002460  6f410100  loads.w r2, 0(r2)
002464  9705f100  and r11, r2, r15
002468  130cbe04  setlt.u r24, r28, r11
00246c  3b500c00  bneq r24, zero, 20
002470  1f0c0100  addli r24, r2, 0
002474  9385b904  setlt.u r11, r19, r11
002478  37d00500  beq r11, zero, 20
00247c  db040000  j 36
002480  171c9101  or r24, r2, r25
002484  9385b904  setlt.u r11, r19, r11
002488  3be00500  bneq r11, zero, 24
00248c  9b450101  srli r11, r2, 16
002490  9b851500  andi r11, r11, 1
002494  0b11b110  add.s r2, r2, r11
002498  0b110111  add.s r2, r2, r16
00249c  170ca101  and r24, r2, r26
0024a0  1381a904  setlt.u r2, r19, r10
0024a4  bb300100  bneq r2, zero, 44
0024a8  9b400b01  srli r1, r22, 16
0024ac  9b801000  andi r1, r1, 1
0024b0  8b101b10  add.s r1, r22, r1
0024b4  8b900011  add.s r1, r1, r16
0024b8  9780a001  and r1, r1, r26
0024bc  1381c904  setlt.u r2, r19, r12
0024c0  37600100  beq r2, zero, 24
0024c4  13811905  setlt.u r2, r19, r17
0024c8  3b6c01fe  bneq r2, zero, -232
0024cc  5b050000  j 40
0024d0  1381c904  setlt.u r2, r19, r12
0024d4  bb4f01fe  bneq r2, zero, -16
0024d8  1bc10b01  srli r2, r23, 16
0024dc  1b011100  andi r2, r2, 1
0024e0  0b912b10  add.s r2, r23, r2
0024e4  0b110111  add.s r2, r2, r16
0024e8  1709a101  and r18, r2, r26
0024ec  13811905  setlt.u r2, r19, r17
0024f0  bb4b01fe  bneq r2, zero, -272
0024f4  1b410701  srli r2, r14, 16
0024f8  1b011100  andi r2, r2, 1
0024fc  0b112710  add.s r2, r14, r2
002500  0b110111  add.s r2, r2, r16
002504  9706a101  and r13, r2, r26
002508  5bdbffff  j -296
00250c  80330002  core_id r7
002510  00200100  mfence { sm }
002514  9f500000  addli r1, zero, 5
002518  b7f013fc  beq r7, r1, -1988
00251c  9f600000  addli r1, zero, 6
002520  bb8813fc  bneq r7, r1, -1504
002524  9f00c000  addli r1, zero, 96
002528  3d000000  xfence
00252c  00a00300  mfence { lm, sm, gm }
002530  b3820028  zext_int2long r[6:7], r1
002534  5b030000  j 24
002538  eb500fff  load.d r[2:3], -16(r30)
00253c  eb528ffe  load.d r[6:7], -24(r30)
002540  93a01204  setlt.ul r1, r[6:7], r[2:3]
002544  a7920200  addli.d r[6:7], r[6:7], 1
002548  b7e60000  beq r1, zero, 440
00254c  9f700000  addli r1, zero, 7
002550  73345ffe  store.d r[6:7], -24(r30)
002554  97b21202  sll.d r[6:7], r[6:7], r1
002558  bbd1ba01  bneq r21, r27, 116
00255c  b3000028  zext_int2long r[2:3], zero
002560  5b060000  j 48
002564  1bc40401  srli r8, r9, 16
002568  1b041400  andi r8, r8, 1
00256c  0b948410  add.s r8, r9, r8
002570  0b140411  add.s r8, r8, r16
002574  1704a401  and r8, r8, r26
002578  eb548fff  load.d r[10:11], -8(r30)
00257c  8b937a10  add.s r7, r21, r7
002580  73e08300  stores.w r8, 0(r7)
002584  93a49004  setlt.ul r9, r[2:3], r[10:11]
002588  a7900000  addli.d r[2:3], r[2:3], 1
00258c  b7be04fe  beq r9, zero, -84
002590  8ba35010  add.ul r[8:9], r[2:3], r[6:7]
002594  9bb32300  slli r7, r7, 2
002598  0b947d10  add.s r8, r27, r7
00259c  ef440400  loads.w r9, 0(r8)
0025a0  1785f400  and r10, r9, r15
0025a4  1304ae04  setlt.u r8, r28, r10
0025a8  3b500400  bneq r8, zero, 20
0025ac  1f840400  addli r8, r9, 0
0025b0  1385a904  setlt.u r10, r19, r10
0025b4  3b1f05fe  bneq r10, zero, -60
0025b8  dbf5ffff  j -84
0025bc  17949401  or r8, r9, r25
0025c0  1385a904  setlt.u r10, r19, r10
0025c4  bb5e05fe  bneq r10, zero, -76
0025c8  dbf3ffff  j -100
0025cc  b3030028  zext_int2long r[8:9], zero
0025d0  db040000  j 36
0025d4  a7c30300  addli.d r[8:9], r[8:9], 4
0025d8  8b949a10  add.s r9, r21, r9
0025dc  13a13300  seteq.d r2, r[8:9], r[4:5]
0025e0  73e6d400  stores.w r13, 12(r9)
0025e4  73e42401  stores.w r18, 8(r9)
0025e8  73e21400  stores.w r1, 4(r9)
0025ec  73e08401  stores.w r24, 0(r9)
0025f0  3b2d01fe  bneq r2, zero, -184
0025f4  8ba05310  add.ul r[2:3], r[8:9], r[6:7]
0025f8  9bb42000  slli r9, r1, 2
0025fc  0b919d10  add.s r2, r27, r9
002600  6f47c100  loads.w r14, 12(r2)
002604  9708f700  and r17, r14, r15
002608  93001e05  setlt.u r1, r28, r17
00260c  3bb00000  bneq r1, zero, 12
002610  9f060700  addli r13, r14, 0
002614  5b010000  j 8
002618  97169701  or r13, r14, r25
00261c  ef4b8100  loads.w r23, 8(r2)
002620  1786fb00  and r12, r23, r15
002624  9300ce04  setlt.u r1, r28, r12
002628  3bb00000  bneq r1, zero, 12
00262c  1f890b00  addli r18, r23, 0
002630  5b010000  j 8
002634  17999b01  or r18, r23, r25
002638  6f4b4100  loads.w r22, 4(r2)
00263c  1705fb00  and r10, r22, r15
002640  9300ae04  setlt.u r1, r28, r10
002644  3bb00000  bneq r1, zero, 12
002648  9f000b00  addli r1, r22, 0
00264c  5b010000  j 8
002650  97109b01  or r1, r22, r25
002654  6f410100  loads.w r2, 0(r2)
002658  9705f100  and r11, r2, r15
00265c  130cbe04  setlt.u r24, r28, r11
002660  3b500c00  bneq r24, zero, 20
002664  1f0c0100  addli r24, r2, 0
002668  9385b904  setlt.u r11, r19, r11
00266c  37d00500  beq r11, zero, 20
002670  db040000  j 36
002674  171c9101  or r24, r2, r25
002678  9385b904  setlt.u r11, r19, r11
00267c  3be00500  bneq r11, zero, 24
002680  9b450101  srli r11, r2, 16
002684  9b851500  andi r11, r11, 1
002688  0b11b110  add.s r2, r2, r11
00268c  0b110111  add.s r2, r2, r16
002690  170ca101  and r24, r2, r26
002694  1381a904  setlt.u r2, r19, r10
002698  bb300100  bneq r2, zero, 44
00269c  9b400b01  srli r1, r22, 16
0026a0  9b801000  andi r1, r1, 1
0026a4  8b101b10  add.s r1, r22, r1
0026a8  8b900011  add.s r1, r1, r16
0026ac  9780a001  and r1, r1, r26
0026b0  1381c904  setlt.u r2, r19, r12
0026b4  37600100  beq r2, zero, 24
0026b8  13811905  setlt.u r2, r19, r17
0026bc  3b6c01fe  bneq r2, zero, -232
0026c0  5b050000  j 40
0026c4  1381c904  setlt.u r2, r19, r12
0026c8  bb4f01fe  bneq r2, zero, -16
0026cc  1bc10b01  srli r2, r23, 16
0026d0  1b011100  andi r2, r2, 1
0026d4  0b912b10  add.s r2, r23, r2
0026d8  0b110111  add.s r2, r2, r16
0026dc  1709a101  and r18, r2, r26
0026e0  13811905  setlt.u r2, r19, r17
0026e4  bb4b01fe  bneq r2, zero, -272
0026e8  1b410701  srli r2, r14, 16
0026ec  1b011100  andi r2, r2, 1
0026f0  0b112710  add.s r2, r14, r2
0026f4  0b110111  add.s r2, r2, r16
0026f8  9706a101  and r13, r2, r26
0026fc  5bdbffff  j -296
002700  80330002  core_id r7
002704  00200100  mfence { sm }
002708  e3005fff  loadli.w r1,  -88(r30)
00270c  b7a70000  beq r1, zero, 488
002710  9f00e000  addli r1, zero, 112
002714  3d000000  xfence
002718  00a00300  mfence { lm, sm, gm }
00271c  b3820028  zext_int2long r[6:7], r1
002720  5b030000  j 24
002724  eb508fff  load.d r[2:3], -8(r30)
002728  eb520fff  load.d r[6:7], -16(r30)
00272c  93a01204  setlt.ul r1, r[6:7], r[2:3]
002730  a7920200  addli.d r[6:7], r[6:7], 1
002734  b7e60000  beq r1, zero, 440
002738  9f700000  addli r1, zero, 7
00273c  73385ffe  store.d r[6:7], -16(r30)
002740  97b21202  sll.d r[6:7], r[6:7], r1
002744  bbd1ba01  bneq r21, r27, 116
002748  b3000028  zext_int2long r[2:3], zero
00274c  5b060000  j 48
002750  1bc40401  srli r8, r9, 16
002754  1b041400  andi r8, r8, 1
002758  0b948410  add.s r8, r9, r8
00275c  0b140411  add.s r8, r8, r16
002760  1704a401  and r8, r8, r26
002764  eb548fff  load.d r[10:11], -8(r30)
002768  8b937a10  add.s r7, r21, r7
00276c  73e08300  stores.w r8, 0(r7)
002770  93a49004  setlt.ul r9, r[2:3], r[10:11]
002774  a7900000  addli.d r[2:3], r[2:3], 1
002778  b7be04fe  beq r9, zero, -84
00277c  8ba35010  add.ul r[8:9], r[2:3], r[6:7]
002780  9bb32300  slli r7, r7, 2
002784  0b947d10  add.s r8, r27, r7
002788  ef440400  loads.w r9, 0(r8)
00278c  1785f400  and r10, r9, r15
002790  1304ae04  setlt.u r8, r28, r10
002794  3b500400  bneq r8, zero, 20
002798  1f840400  addli r8, r9, 0
00279c  1385a904  setlt.u r10, r19, r10
0027a0  3b1f05fe  bneq r10, zero, -60
0027a4  dbf5ffff  j -84
0027a8  17949401  or r8, r9, r25
0027ac  1385a904  setlt.u r10, r19, r10
0027b0  bb5e05fe  bneq r10, zero, -76
0027b4  dbf3ffff  j -100
0027b8  b3030028  zext_int2long r[8:9], zero
0027bc  db040000  j 36
0027c0  a7c30300  addli.d r[8:9], r[8:9], 4
0027c4  8b949a10  add.s r9, r21, r9
0027c8  13a13300  seteq.d r2, r[8:9], r[4:5]
0027cc  73e6d400  stores.w r13, 12(r9)
0027d0  73e42401  stores.w r18, 8(r9)
0027d4  73e21400  stores.w r1, 4(r9)
0027d8  73e08401  stores.w r24, 0(r9)
0027dc  3b2d01fe  bneq r2, zero, -184
0027e0  8ba05310  add.ul r[2:3], r[8:9], r[6:7]
0027e4  9bb42000  slli r9, r1, 2
0027e8  0b919d10  add.s r2, r27, r9
0027ec  6f47c100  loads.w r14, 12(r2)
0027f0  9708f700  and r17, r14, r15
0027f4  93001e05  setlt.u r1, r28, r17
0027f8  3bb00000  bneq r1, zero, 12
0027fc  9f060700  addli r13, r14, 0
002800  5b010000  j 8
002804  97169701  or r13, r14, r25
002808  ef4b8100  loads.w r23, 8(r2)
00280c  1786fb00  and r12, r23, r15
002810  9300ce04  setlt.u r1, r28, r12
002814  3bb00000  bneq r1, zero, 12
002818  1f890b00  addli r18, r23, 0
00281c  5b010000  j 8
002820  17999b01  or r18, r23, r25
002824  6f4b4100  loads.w r22, 4(r2)
002828  1705fb00  and r10, r22, r15
00282c  9300ae04  setlt.u r1, r28, r10
002830  3bb00000  bneq r1, zero, 12
002834  9f000b00  addli r1, r22, 0
002838  5b010000  j 8
00283c  97109b01  or r1, r22, r25
002840  6f410100  loads.w r2, 0(r2)
002844  9705f100  and r11, r2, r15
002848  130cbe04  setlt.u r24, r28, r11
00284c  3b500c00  bneq r24, zero, 20
002850  1f0c0100  addli r24, r2, 0
002854  9385b904  setlt.u r11, r19, r11
002858  37d00500  beq r11, zero, 20
00285c  db040000  j 36
002860  171c9101  or r24, r2, r25
002864  9385b904  setlt.u r11, r19, r11
002868  3be00500  bneq r11, zero, 24
00286c  9b450101  srli r11, r2, 16
002870  9b851500  andi r11, r11, 1
002874  0b11b110  add.s r2, r2, r11
002878  0b110111  add.s r2, r2, r16
00287c  170ca101  and r24, r2, r26
002880  1381a904  setlt.u r2, r19, r10
002884  bb300100  bneq r2, zero, 44
002888  9b400b01  srli r1, r22, 16
00288c  9b801000  andi r1, r1, 1
002890  8b101b10  add.s r1, r22, r1
002894  8b900011  add.s r1, r1, r16
002898  9780a001  and r1, r1, r26
00289c  1381c904  setlt.u r2, r19, r12
0028a0  37600100  beq r2, zero, 24
0028a4  13811905  setlt.u r2, r19, r17
0028a8  3b6c01fe  bneq r2, zero, -232
0028ac  5b050000  j 40
0028b0  1381c904  setlt.u r2, r19, r12
0028b4  bb4f01fe  bneq r2, zero, -16
0028b8  1bc10b01  srli r2, r23, 16
0028bc  1b011100  andi r2, r2, 1
0028c0  0b912b10  add.s r2, r23, r2
0028c4  0b110111  add.s r2, r2, r16
0028c8  1709a101  and r18, r2, r26
0028cc  13811905  setlt.u r2, r19, r17
0028d0  bb4b01fe  bneq r2, zero, -272
0028d4  1b410701  srli r2, r14, 16
0028d8  1b011100  andi r2, r2, 1
0028dc  0b112710  add.s r2, r14, r2
0028e0  0b110111  add.s r2, r2, r16
0028e4  9706a101  and r13, r2, r26
0028e8  5bdbffff  j -296
0028ec  80330002  core_id r7
0028f0  00200100  mfence { sm }
0028f4  9f70f001  addli r1, zero, 255
0028f8  1f370000  addli r14, zero, 3
0028fc  80a20004  csr_set csr5, r1
002900  00e00200  sync_core
002904  b7e4e3ec  beq r7, r14, -9928
002908  9f080001  addli r17, zero, 128
00290c  1f092000  addli r18, zero, 16
002910  9f0a1000  addli r21, zero, 8
002914  1f7b0000  addli r22, zero, 7
002918  9f6b0000  addli r23, zero, 6
00291c  9f661000  addli r13, zero, 14
002920  9f1d0000  addli r27, zero, 1
002924  3b8503ec  bneq r7, zero, -9920
002928  e340effe  loadli.w r1,  -140(r30)
00292c  eb520ff8  load.d r[6:7], -128(r30)
002930  9f132000  addli r7, zero, 17
002934  1f312000  addli r2, zero, 19
002938  9f540000  addli r9, zero, 5
00293c  6b558f01  load.d r[11:12], 24(r30)
002940  7d900300  xwait r7, 0
002944  eb530ffb  load.d r[8:9], -80(r30)
002948  1d800400  lock zero, r9
00294c  9bb07000  slli r1, r1, 7
002950  97b22202  sll.d r[6:7], r[6:7], r2
002954  958d0d00  dma_cfg r27, r27, zero, 0
002958  b3900028  sext_int2long r[2:3], r1
00295c  8b225510  add.ul r[6:7], r[11:12], r[6:7]
002960  6b558ff7  load.d r[11:12], -136(r30)
002964  15800d02  dma_cfg zero, r27, zero, 1
002968  8bb37040  min.sl r[8:9], r[2:3], r[8:9]
00296c  8ba2a210  add.ul r[6:7], r[6:7], r[11:12]
002970  a7830301  addli.d r[8:9], r[8:9], 128
002974  15030004  dma_cfg r6, zero, zero, 2
002978  8bb31348  max.sl r[8:9], r[8:9], r[2:3]
00297c  6b558ff8  load.d r[11:12], -120(r30)
002980  8bb01318  sub.sl r[2:3], r[8:9], r[2:3]
002984  1f048000  addli r8, zero, 64
002988  80330002  core_id r7
00298c  8bb03040  min.sl r[2:3], r[2:3], r[4:5]
002990  ab010600  lui r3, 96
002994  1f723500  addli r4, r10, 31
002998  9b910164  ori r3, r3, 1600
00299c  8b113a10  add.s r3, r20, r3
0029a0  95828106  dma_cfg r5, r3, r8, 3
0029a4  9b415200  srli r3, r4, 5
0029a8  1b321500  slli r4, r10, 1
0029ac  9f020020  addli r5, zero, 4096
0029b0  15843808  dma_cfg r8, r17, r3, 4
0029b4  9b01e203  andi r3, r4, 62
0029b8  1f020004  addli r4, zero, 512
0029bc  9502120a  dma_cfg r5, r4, r1, 5
0029c0  9f202000  addli r1, zero, 18
0029c4  15003010  dma_cfg zero, zero, r3, 8
0029c8  35000000  dma_run zero
0029cc  1500b00b  dma_cfg zero, zero, r27, 5
0029d0  15000010  dma_cfg zero, zero, zero, 8
0029d4  1d900400  unlock r9
0029d8  5b11fbff  j -10104
0029dc  1f020000  addli r4, zero, 0
0029e0  1f110000  addli r2, zero, 1
0029e4  9f110000  addli r3, zero, 1
0029e8  1f048000  addli r8, zero, 64
0029ec  9f321000  addli r5, zero, 11
0029f0  7d100300  xwait r6, 0
0029f4  7d900a00  xwait r21, 0
0029f8  7d900200  xwait r5, 0
0029fc  9b32e200  slli r5, r4, 14
002a00  1b328200  slli r4, r4, 8
002a04  1d000100  lock zero, r2
002a08  09041401  mm_cfg r8, r8, r17, 0
002a0c  97921200  or r5, r5, r1
002a10  17124201  or r4, r4, r20
002a14  09032304  mm_cfg r6, r6, r2, 2
002a18  29825010  mm r4, r1, r5, 8
002a1c  9b821100  andi r5, r3, 1
002a20  1f120000  addli r4, zero, 1
002a24  9f010000  addli r3, zero, 0
002a28  1d100100  unlock r2
002a2c  3bcf02fe  bneq r5, zero, -48
002a30  9f500000  addli r1, zero, 5
002a34  e70a0ffe  storeli.w zero, -88(r30)
002a38  7d800000  xsignal r1, 0
002a3c  9f101000  addli r1, zero, 9
002a40  7d800000  xsignal r1, 0
002a44  9f100000  addli r1, zero, 1
002a48  674a1ffe  storeli.w r1, -92(r30)
002a4c  9f201000  addli r1, zero, 10
002a50  7d800000  xsignal r1, 0
002a54  eb520ffb  load.d r[6:7], -80(r30)
002a58  bbe9e3ee  bneq r7, r14, -8584
002a5c  5bcdfbff  j -8600
002a60  674a0ffe  storeli.w zero, -92(r30)
002a64  e70a0ffe  storeli.w zero, -88(r30)
002a68  eb520ffb  load.d r[6:7], -80(r30)
002a6c  37e9e3ee  beq r7, r14, -8616
002a70  5bccfbff  j -8608
002a74  7d000000  xsignal zero, 0
002a78  bbe00300  bneq r7, zero, 56
002a7c  9f200000  addli r1, zero, 2
002a80  7d100000  xwait zero, 0
002a84  7d100000  xwait zero, 0
002a88  7d100000  xwait zero, 0
002a8c  7d100000  xwait zero, 0
002a90  7d100000  xwait zero, 0
002a94  7d100000  xwait zero, 0
002a98  7d100000  xwait zero, 0
002a9c  7d100000  xwait zero, 0
002aa0  1d800000  lock zero, r1
002aa4  0d000020  ew_cfg zero, zero, zero, 16
002aa8  1d900000  unlock r1
002aac  7d400000  xsignal_mode_cfg zero
002ab0  9f8e6e01  addli sp, sp, 176
002ab4  00a00300  mfence { lm, sm, gm }
002ab8  00100000  exit
002abc  00100000  exit
002ac0  00100000  exit
002ac4  00100000  exit
002ac8  00100000  exit
002acc  00100000  exit
002ad0  00100000  exit
002ad4  00100000  exit
002ad8  00100000  exit
002adc  00100000  exit
002ae0  00100000  exit
002ae4  00100000  exit
002ae8  00100000  exit
002aec  00100000  exit
002af0  00100000  exit
002af4  00100000  exit
002af8  00100000  exit
002afc  00100000  exit
002b00  00100000  exit
002b04  00100000  exit
002b08  00100000  exit
002b0c  00100000  exit
002b10  00100000  exit
002b14  00100000  exit
002b18  00100000  exit
002b1c  00100000  exit
002b20  00100000  exit
002b24  00100000  exit
002b28  00100000  exit
002b2c  00100000  exit
002b30  00100000  exit
002b34  00100000  exit
002b38  00100000  exit
002b3c  00100000  exit
002b40  00100000  exit
002b44  00100000  exit
002b48  00100000  exit
002b4c  00100000  exit
002b50  00100000  exit
002b54  00100000  exit
002b58  00100000  exit
002b5c  00100000  exit
002b60  00100000  exit
002b64  00100000  exit
002b68  00100000  exit
002b6c  00100000  exit
002b70  00100000  exit
002b74  00100000  exit
002b78  00100000  exit
002b7c  00100000  exit
002b80  00100000  exit
002b84  00100000  exit
002b88  00100000  exit
002b8c  00100000  exit
002b90  00100000  exit
002b94  00100000  exit
002b98  00100000  exit
002b9c  00100000  exit
002ba0  00100000  exit
002ba4  00100000  exit
002ba8  00100000  exit
002bac  00100000  exit
002bb0  00100000  exit
002bb4  00100000  exit
002bb8  00100000  exit
002bbc  00100000  exit
002bc0  00100000  exit
002bc4  00100000  exit
002bc8  00100000  exit
002bcc  00100000  exit
002bd0  00100000  exit
002bd4  00100000  exit
002bd8  00100000  exit
002bdc  00100000  exit
002be0  00100000  exit
002be4  00100000  exit
002be8  00100000  exit
002bec  00100000  exit
002bf0  00100000  exit
002bf4  00100000  exit
002bf8  00100000  exit
002bfc  00100000  exit
002c00  00100000  exit
002c04  00100000  exit
002c08  00100000  exit
002c0c  00100000  exit
002c10  00100000  exit
002c14  00100000  exit
002c18  00100000  exit
002c1c  00100000  exit
002c20  00100000  exit
002c24  00100000  exit
002c28  00100000  exit
002c2c  00100000  exit
002c30  00100000  exit
002c34  00100000  exit
002c38  00100000  exit
002c3c  00100000  exit
002c40  00100000  exit
002c44  00100000  exit
002c48  00100000  exit
002c4c  00100000  exit
002c50  00100000  exit
002c54  00100000  exit
002c58  00100000  exit
002c5c  00100000  exit
002c60  00100000  exit
002c64  00100000  exit
002c68  00100000  exit
002c6c  00100000  exit
002c70  00100000  exit
002c74  00100000  exit
002c78  00100000  exit
002c7c  00100000  exit
002c80  00100000  exit
002c84  00100000  exit
002c88  00100000  exit
002c8c  00100000  exit
002c90  00100000  exit
002c94  00100000  exit
002c98  00100000  exit
002c9c  00100000  exit
002ca0  00100000  exit
002ca4  00100000  exit
002ca8  00100000  exit
002cac  00100000  exit
002cb0  00100000  exit
002cb4  00100000  exit
002cb8  00100000  exit
002cbc  00100000  exit
002cc0  00100000  exit
002cc4  00100000  exit
002cc8  00100000  exit
002ccc  00100000  exit
002cd0  00100000  exit
002cd4  00100000  exit
002cd8  00100000  exit
002cdc  00100000  exit
002ce0  00100000  exit
002ce4  00100000  exit
002ce8  00100000  exit
002cec  00100000  exit
002cf0  00100000  exit
002cf4  00100000  exit
002cf8  00100000  exit
