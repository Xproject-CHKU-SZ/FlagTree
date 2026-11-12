; SHA-256 d4ee8158d3eb5a10444ccb4606871a6cc1422cd3faba7f61ad60c94df9424ecf
; P800 SDNN · XTDK LLVM 19 · 2882 / 2882 words decoded
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
0000bc  80340002  core_id r9
0000c0  1f8f6e01  addli r30, sp, 176
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37e00400  beq r9, zero, 24
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
0001bc  4b131114  ble.s r2, r1, 10436
0001c0  33110128  sext_int2long r[3:4], r2
0001c4  1f370000  addli r14, zero, 3
0001c8  9f080001  addli r17, zero, 128
0001cc  1f092000  addli r18, zero, 16
0001d0  9f0a1000  addli r21, zero, 8
0001d4  1f7b0000  addli r22, zero, 7
0001d8  9f6b0000  addli r23, zero, 6
0001dc  1f6c1000  addli r24, zero, 14
0001e0  9f2d0000  addli r27, zero, 2
0001e4  ab0c4000  lui r25, 1024
0001e8  2b0e807f  lui r28, 522240
0001ec  2b0dffff  lui r26, 1048560
0001f0  1f0a0000  addli r20, zero, 0
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
000234  5b090000  j 72
000238  1f6c1000  addli r24, zero, 14
00023c  9f102000  addli r1, zero, 17
000240  9f080001  addli r17, zero, 128
000244  1f092000  addli r18, zero, 16
000248  9f0a1000  addli r21, zero, 8
00024c  1f7b0000  addli r22, zero, 7
000250  9f6b0000  addli r23, zero, 6
000254  9f2d0000  addli r27, zero, 2
000258  7d000c00  xsignal r24, 0
00025c  7d800000  xsignal r1, 0
000260  eb510ff9  load.d r[4:5], -112(r30)
000264  eb508ff6  load.d r[2:3], -152(r30)
000268  630a4fff  loadli.w r20,  -96(r30)
00026c  a7910100  addli.d r[4:5], r[4:5], 1
000270  1f1a0a00  addli r20, r20, 1
000274  93b01104  setlt.sl r1, r[4:5], r[2:3]
000278  37a00014  beq r1, zero, 10248
00027c  e3005f00  loadli.w r1,  40(r30)
000280  63414f00  loadli.w r2,  36(r30)
000284  73383ff8  store.d r[4:5], -112(r30)
000288  8b901130  div.s r1, r3, r1
00028c  0b912030  div.s r2, r1, r2
000290  8b111131  div.s r3, r2, r17
000294  9bb03100  slli r1, r3, 3
000298  0b121918  sub.s r4, r18, r1
00029c  0b125241  min.s r4, r4, r21
0002a0  8b124138  mod.s r5, r2, r4
0002a4  8b921210  add.s r5, r5, r1
0002a8  9f701000  addli r1, zero, 15
0002ac  93805004  setlt.u r1, r1, r5
0002b0  33830228  zext_int2long r[7:8], r5
0002b4  67475ffe  storeli.w r5, -140(r30)
0002b8  9f521000  addli r5, zero, 13
0002bc  73306ff8  store.d r[7:8], -128(r30)
0002c0  17335302  sll.d r[7:8], r[7:8], r5
0002c4  3bb00000  bneq r1, zero, 12
0002c8  6b540ff5  load.d r[9:10], -176(r30)
0002cc  db010000  j 12
0002d0  6b548ff5  load.d r[9:10], -168(r30)
0002d4  17048302  and.d r[9:10], r[7:8], r[9:10]
0002d8  8b10ea38  mod.s r1, r20, r14
0002dc  9f02000f  addli r5, zero, 1920
0002e0  00350002  core_id r10
0002e4  670a4fff  storeli.w r20, -96(r30)
0002e8  b3850228  zext_int2long r[12:13], r5
0002ec  ab020300  lui r5, 48
0002f0  7338bffa  store.d r[12:13], -80(r30)
0002f4  e7491ffe  storeli.w r1, -100(r30)
0002f8  9bb0f000  slli r1, r1, 15
0002fc  8b925010  add.s r5, r1, r5
000300  bb2a7501  bneq r10, r23, 680
000304  0b338318  sub.sl r[7:8], r[7:8], r[9:10]
000308  17537303  sra.d r[7:8], r[7:8], r23
00030c  0b34b340  min.sl r[9:10], r[7:8], r[12:13]
000310  6b550ff8  load.d r[11:12], -128(r30)
000314  7d100700  xwait r14, 0
000318  0b366418  sub.sl r[13:14], r[9:10], r[7:8]
00031c  6b530f00  load.d r[7:8], 0(r30)
000320  17358503  sll.d r[11:12], r[11:12], r24
000324  8b23a310  add.ul r[8:9], r[7:8], r[11:12]
000328  1f030601  addli r6, r12, 128
00032c  3ff44d01  blt.s r27, r20, 284
000330  1f550000  addli r10, zero, 5
000334  9f150000  addli r11, zero, 1
000338  9f440000  addli r9, zero, 4
00033c  1d000500  lock zero, r10
000340  15000014  dma_cfg zero, zero, zero, 10
000344  1500b014  dma_cfg zero, zero, r11, 10
000348  1500b015  dma_cfg zero, zero, r27, 10
00034c  1500e014  dma_cfg zero, zero, r14, 10
000350  15009014  dma_cfg zero, zero, r9, 10
000354  9f141000  addli r9, zero, 9
000358  1500a014  dma_cfg zero, zero, r10, 10
00035c  15007015  dma_cfg zero, zero, r23, 10
000360  15006015  dma_cfg zero, zero, r22, 10
000364  15005015  dma_cfg zero, zero, r21, 10
000368  15009014  dma_cfg zero, zero, r9, 10
00036c  9f241000  addli r9, zero, 10
000370  15009014  dma_cfg zero, zero, r9, 10
000374  9f341000  addli r9, zero, 11
000378  15009014  dma_cfg zero, zero, r9, 10
00037c  9f441000  addli r9, zero, 12
000380  15009014  dma_cfg zero, zero, r9, 10
000384  9f541000  addli r9, zero, 13
000388  15009014  dma_cfg zero, zero, r9, 10
00038c  9f741000  addli r9, zero, 15
000390  15008015  dma_cfg zero, zero, r24, 10
000394  15009014  dma_cfg zero, zero, r9, 10
000398  9f142000  addli r9, zero, 17
00039c  15002015  dma_cfg zero, zero, r18, 10
0003a0  15009014  dma_cfg zero, zero, r9, 10
0003a4  9f242000  addli r9, zero, 18
0003a8  15009014  dma_cfg zero, zero, r9, 10
0003ac  9f342000  addli r9, zero, 19
0003b0  15009014  dma_cfg zero, zero, r9, 10
0003b4  9f442000  addli r9, zero, 20
0003b8  15009014  dma_cfg zero, zero, r9, 10
0003bc  9f542000  addli r9, zero, 21
0003c0  15009014  dma_cfg zero, zero, r9, 10
0003c4  9f642000  addli r9, zero, 22
0003c8  15009014  dma_cfg zero, zero, r9, 10
0003cc  9f742000  addli r9, zero, 23
0003d0  15009014  dma_cfg zero, zero, r9, 10
0003d4  9f043000  addli r9, zero, 24
0003d8  15009014  dma_cfg zero, zero, r9, 10
0003dc  9f143000  addli r9, zero, 25
0003e0  15009014  dma_cfg zero, zero, r9, 10
0003e4  9f243000  addli r9, zero, 26
0003e8  15009014  dma_cfg zero, zero, r9, 10
0003ec  9f343000  addli r9, zero, 27
0003f0  15009014  dma_cfg zero, zero, r9, 10
0003f4  9f443000  addli r9, zero, 28
0003f8  15009014  dma_cfg zero, zero, r9, 10
0003fc  9f543000  addli r9, zero, 29
000400  15009014  dma_cfg zero, zero, r9, 10
000404  9f643000  addli r9, zero, 30
000408  15009014  dma_cfg zero, zero, r9, 10
00040c  9f743000  addli r9, zero, 31
000410  15009014  dma_cfg zero, zero, r9, 10
000414  9f048000  addli r9, zero, 64
000418  95850500  dma_cfg r11, r11, zero, 0
00041c  95050002  dma_cfg r11, zero, zero, 1
000420  15000004  dma_cfg zero, zero, zero, 2
000424  95029006  dma_cfg r5, zero, r9, 3
000428  9f040002  addli r9, zero, 256
00042c  9508b009  dma_cfg r17, zero, r27, 4
000430  9504100b  dma_cfg r9, zero, r17, 5
000434  15000010  dma_cfg zero, zero, zero, 8
000438  35000000  dma_run zero
00043c  1500b00a  dma_cfg zero, zero, r11, 5
000440  15000010  dma_cfg zero, zero, zero, 8
000444  1d100500  unlock r10
000448  ab040300  lui r9, 48
00044c  9f450000  addli r11, zero, 4
000450  674a0ffe  storeli.w zero, -92(r30)
000454  1f150000  addli r10, zero, 1
000458  1f068000  addli r12, zero, 64
00045c  9b940404  ori r9, r9, 64
000460  1d800500  lock zero, r11
000464  15050500  dma_cfg r10, r10, zero, 0
000468  8b949010  add.s r9, r1, r9
00046c  15000404  dma_cfg zero, r8, zero, 2
000470  9584c306  dma_cfg r9, r7, r12, 3
000474  9f040002  addli r9, zero, 256
000478  1f540000  addli r8, zero, 5
00047c  9f131000  addli r7, zero, 9
000480  9508b609  dma_cfg r17, r12, r27, 4
000484  9584680a  dma_cfg r9, r17, r6, 5
000488  15000010  dma_cfg zero, zero, zero, 8
00048c  35000000  dma_run zero
000490  1500a00a  dma_cfg zero, zero, r10, 5
000494  15000010  dma_cfg zero, zero, zero, 8
000498  1d900500  unlock r11
00049c  1d000400  lock zero, r8
0004a0  15000014  dma_cfg zero, zero, zero, 10
0004a4  1500a014  dma_cfg zero, zero, r10, 10
0004a8  1500b015  dma_cfg zero, zero, r27, 10
0004ac  1500e014  dma_cfg zero, zero, r14, 10
0004b0  1500b014  dma_cfg zero, zero, r11, 10
0004b4  15008014  dma_cfg zero, zero, r8, 10
0004b8  15007015  dma_cfg zero, zero, r23, 10
0004bc  15006015  dma_cfg zero, zero, r22, 10
0004c0  15005015  dma_cfg zero, zero, r21, 10
0004c4  15007014  dma_cfg zero, zero, r7, 10
0004c8  9f231000  addli r7, zero, 10
0004cc  15007014  dma_cfg zero, zero, r7, 10
0004d0  9f331000  addli r7, zero, 11
0004d4  15007014  dma_cfg zero, zero, r7, 10
0004d8  9f431000  addli r7, zero, 12
0004dc  15007014  dma_cfg zero, zero, r7, 10
0004e0  9f531000  addli r7, zero, 13
0004e4  15007014  dma_cfg zero, zero, r7, 10
0004e8  9f731000  addli r7, zero, 15
0004ec  15008015  dma_cfg zero, zero, r24, 10
0004f0  15007014  dma_cfg zero, zero, r7, 10
0004f4  9f132000  addli r7, zero, 17
0004f8  15002015  dma_cfg zero, zero, r18, 10
0004fc  15007014  dma_cfg zero, zero, r7, 10
000500  9f232000  addli r7, zero, 18
000504  15007014  dma_cfg zero, zero, r7, 10
000508  9f332000  addli r7, zero, 19
00050c  15007014  dma_cfg zero, zero, r7, 10
000510  9f432000  addli r7, zero, 20
000514  15007014  dma_cfg zero, zero, r7, 10
000518  9f532000  addli r7, zero, 21
00051c  15007014  dma_cfg zero, zero, r7, 10
000520  9f632000  addli r7, zero, 22
000524  15007014  dma_cfg zero, zero, r7, 10
000528  9f732000  addli r7, zero, 23
00052c  15007014  dma_cfg zero, zero, r7, 10
000530  9f033000  addli r7, zero, 24
000534  15007014  dma_cfg zero, zero, r7, 10
000538  9f133000  addli r7, zero, 25
00053c  15007014  dma_cfg zero, zero, r7, 10
000540  9f233000  addli r7, zero, 26
000544  15007014  dma_cfg zero, zero, r7, 10
000548  9f333000  addli r7, zero, 27
00054c  15007014  dma_cfg zero, zero, r7, 10
000550  9f433000  addli r7, zero, 28
000554  15007014  dma_cfg zero, zero, r7, 10
000558  9f533000  addli r7, zero, 29
00055c  15007014  dma_cfg zero, zero, r7, 10
000560  9f633000  addli r7, zero, 30
000564  15007014  dma_cfg zero, zero, r7, 10
000568  9f733000  addli r7, zero, 31
00056c  15007014  dma_cfg zero, zero, r7, 10
000570  15050500  dma_cfg r10, r10, zero, 0
000574  15050002  dma_cfg r10, zero, zero, 1
000578  15000004  dma_cfg zero, zero, zero, 2
00057c  9502c006  dma_cfg r5, zero, r12, 3
000580  9508b009  dma_cfg r17, zero, r27, 4
000584  9504600a  dma_cfg r9, zero, r6, 5
000588  80340002  core_id r9
00058c  15000010  dma_cfg zero, zero, zero, 8
000590  35000000  dma_run zero
000594  1500a00a  dma_cfg zero, zero, r10, 5
000598  15000010  dma_cfg zero, zero, zero, 8
00059c  1d100400  unlock r8
0005a0  7d800d00  xsignal r27, 0
0005a4  5b0b0000  j 88
0005a8  80340002  core_id r9
0005ac  3ba1b401  bneq r9, r27, 72
0005b0  1f530000  addli r6, zero, 5
0005b4  7d900d00  xwait r27, 0
0005b8  7d100300  xwait r6, 0
0005bc  1d000000  lock zero, zero
0005c0  1f038000  addli r6, zero, 64
0005c4  810d0000  ds_cfg r27, zero, 0
0005c8  01030002  ds_cfg r6, zero, 1
0005cc  0103001c  ds_cfg r6, zero, 14
0005d0  8108001a  ds_cfg r17, zero, 13
0005d4  a1906202  shuffle_batch r1, r5, r6, 1
0005d8  9f120000  addli r5, zero, 1
0005dc  1d100000  unlock zero
0005e0  7d000700  xsignal r14, 0
0005e4  674a5ffe  storeli.w r5, -92(r30)
0005e8  9f420000  addli r5, zero, 4
0005ec  7d800200  xsignal r5, 0
0005f0  5b010000  j 8
0005f4  674a0ffe  storeli.w zero, -92(r30)
0005f8  1f150000  addli r10, zero, 1
0005fc  9bb17100  slli r3, r3, 7
000600  0b113118  sub.s r2, r2, r3
000604  0b114130  div.s r2, r2, r4
000608  63423fff  loadli.w r4,  -100(r30)
00060c  1b3a0201  slli r20, r4, 16
000610  e7082ffe  storeli.w r2, -120(r30)
000614  33010128  zext_int2long r[3:4], r2
000618  97316103  sll.d r[4:5], r[3:4], r22
00061c  2b810400  lui r2, 72
000620  97b2a102  sll.d r[6:7], r[4:5], r10
000624  0b912010  add.s r2, r1, r2
000628  9f110000  addli r3, zero, 1
00062c  733c5ff6  store.d r[6:7], -136(r30)
000630  3ba13402  bneq r9, r3, 1096
000634  eb518f00  load.d r[4:5], 8(r30)
000638  7d100b00  xwait r22, 0
00063c  8ba15110  add.ul r[4:5], r[4:5], r[6:7]
000640  e3024fff  loadli.w r5,  -96(r30)
000644  3ff45d00  blt.s r27, r5, 284
000648  1f530000  addli r6, zero, 5
00064c  9f130000  addli r7, zero, 1
000650  1f440000  addli r8, zero, 4
000654  9f121000  addli r5, zero, 9
000658  1d000300  lock zero, r6
00065c  15000014  dma_cfg zero, zero, zero, 10
000660  15007014  dma_cfg zero, zero, r7, 10
000664  1500b015  dma_cfg zero, zero, r27, 10
000668  1500e014  dma_cfg zero, zero, r14, 10
00066c  15008014  dma_cfg zero, zero, r8, 10
000670  15006014  dma_cfg zero, zero, r6, 10
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
0006a8  15008015  dma_cfg zero, zero, r24, 10
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
000730  95830300  dma_cfg r7, r7, zero, 0
000734  95030002  dma_cfg r7, zero, zero, 1
000738  15000004  dma_cfg zero, zero, zero, 2
00073c  15015006  dma_cfg r2, zero, r5, 3
000740  95088008  dma_cfg r17, zero, r8, 4
000744  1f040004  addli r8, zero, 512
000748  1504500a  dma_cfg r8, zero, r5, 5
00074c  15000010  dma_cfg zero, zero, zero, 8
000750  35000000  dma_run zero
000754  1500700a  dma_cfg zero, zero, r7, 5
000758  15000010  dma_cfg zero, zero, zero, 8
00075c  1d100300  unlock r6
000760  ab820400  lui r5, 72
000764  1f430000  addli r6, zero, 4
000768  e70a0ffe  storeli.w zero, -88(r30)
00076c  e74a0ffe  storeli.w zero, -84(r30)
000770  9f038000  addli r7, zero, 64
000774  1f040004  addli r8, zero, 512
000778  9b920204  ori r5, r5, 64
00077c  1d000300  lock zero, r6
000780  8b905010  add.s r1, r1, r5
000784  9f120000  addli r5, zero, 1
000788  95820200  dma_cfg r5, r5, zero, 0
00078c  15000204  dma_cfg zero, r4, zero, 2
000790  95807106  dma_cfg r1, r3, r7, 3
000794  9f000020  addli r1, zero, 4096
000798  9f510000  addli r3, zero, 5
00079c  1f420000  addli r4, zero, 4
0007a0  95886308  dma_cfg r17, r7, r6, 4
0007a4  1584700a  dma_cfg r8, r1, r7, 5
0007a8  9f101000  addli r1, zero, 9
0007ac  15000010  dma_cfg zero, zero, zero, 8
0007b0  35000000  dma_run zero
0007b4  1500500a  dma_cfg zero, zero, r5, 5
0007b8  15000010  dma_cfg zero, zero, zero, 8
0007bc  1d100300  unlock r6
0007c0  1f038000  addli r6, zero, 64
0007c4  1d800100  lock zero, r3
0007c8  15000014  dma_cfg zero, zero, zero, 10
0007cc  15005014  dma_cfg zero, zero, r5, 10
0007d0  1500b015  dma_cfg zero, zero, r27, 10
0007d4  1500e014  dma_cfg zero, zero, r14, 10
0007d8  15004014  dma_cfg zero, zero, r4, 10
0007dc  15003014  dma_cfg zero, zero, r3, 10
0007e0  15007015  dma_cfg zero, zero, r23, 10
0007e4  15006015  dma_cfg zero, zero, r22, 10
0007e8  15005015  dma_cfg zero, zero, r21, 10
0007ec  15001014  dma_cfg zero, zero, r1, 10
0007f0  9f201000  addli r1, zero, 10
0007f4  15001014  dma_cfg zero, zero, r1, 10
0007f8  9f301000  addli r1, zero, 11
0007fc  15001014  dma_cfg zero, zero, r1, 10
000800  9f401000  addli r1, zero, 12
000804  15001014  dma_cfg zero, zero, r1, 10
000808  9f501000  addli r1, zero, 13
00080c  15001014  dma_cfg zero, zero, r1, 10
000810  9f701000  addli r1, zero, 15
000814  15008015  dma_cfg zero, zero, r24, 10
000818  15001014  dma_cfg zero, zero, r1, 10
00081c  9f102000  addli r1, zero, 17
000820  15002015  dma_cfg zero, zero, r18, 10
000824  15001014  dma_cfg zero, zero, r1, 10
000828  9f202000  addli r1, zero, 18
00082c  15001014  dma_cfg zero, zero, r1, 10
000830  9f302000  addli r1, zero, 19
000834  15001014  dma_cfg zero, zero, r1, 10
000838  9f402000  addli r1, zero, 20
00083c  15001014  dma_cfg zero, zero, r1, 10
000840  9f502000  addli r1, zero, 21
000844  15001014  dma_cfg zero, zero, r1, 10
000848  9f602000  addli r1, zero, 22
00084c  15001014  dma_cfg zero, zero, r1, 10
000850  9f702000  addli r1, zero, 23
000854  15001014  dma_cfg zero, zero, r1, 10
000858  9f003000  addli r1, zero, 24
00085c  15001014  dma_cfg zero, zero, r1, 10
000860  9f103000  addli r1, zero, 25
000864  15001014  dma_cfg zero, zero, r1, 10
000868  9f203000  addli r1, zero, 26
00086c  15001014  dma_cfg zero, zero, r1, 10
000870  9f303000  addli r1, zero, 27
000874  15001014  dma_cfg zero, zero, r1, 10
000878  9f403000  addli r1, zero, 28
00087c  15001014  dma_cfg zero, zero, r1, 10
000880  9f503000  addli r1, zero, 29
000884  15001014  dma_cfg zero, zero, r1, 10
000888  9f603000  addli r1, zero, 30
00088c  15001014  dma_cfg zero, zero, r1, 10
000890  9f703000  addli r1, zero, 31
000894  15001014  dma_cfg zero, zero, r1, 10
000898  95820200  dma_cfg r5, r5, zero, 0
00089c  95020002  dma_cfg r5, zero, zero, 1
0008a0  15000004  dma_cfg zero, zero, zero, 2
0008a4  15016006  dma_cfg r2, zero, r6, 3
0008a8  95084008  dma_cfg r17, zero, r4, 4
0008ac  1504600a  dma_cfg r8, zero, r6, 5
0008b0  15000010  dma_cfg zero, zero, zero, 8
0008b4  35000000  dma_run zero
0008b8  1500500a  dma_cfg zero, zero, r5, 5
0008bc  15000010  dma_cfg zero, zero, zero, 8
0008c0  1d900100  unlock r3
0008c4  7d800b00  xsignal r23, 0
0008c8  eb520ffb  load.d r[6:7], -80(r30)
0008cc  3bc0e400  bneq r9, r14, 16
0008d0  9f201000  addli r1, zero, 10
0008d4  7d900000  xwait r1, 0
0008d8  7d100c00  xwait r24, 0
0008dc  e340cffe  loadli.w r1,  -156(r30)
0008e0  3d000000  xfence
0008e4  b3810828  zext_int2long r[4:5], r17
0008e8  00a00300  mfence { lm, sm, gm }
0008ec  8b1d1a10  add.s r27, r20, r1
0008f0  9f70f001  addli r1, zero, 255
0008f4  80a20004  csr_set csr5, r1
0008f8  9f701000  addli r1, zero, 15
0008fc  b3800028  zext_int2long r[2:3], r1
000900  733c1ffa  store.d r[2:3], -72(r30)
000904  00e00200  sync_core
000908  3bd70400  bneq r9, zero, 468
00090c  b3000028  zext_int2long r[2:3], zero
000910  3d000000  xfence
000914  00a00300  mfence { lm, sm, gm }
000918  a7820000  addli.d r[6:7], r[2:3], 0
00091c  73381ffe  store.d r[2:3], -16(r30)
000920  5b030000  j 24
000924  eb508ffb  load.d r[2:3], -72(r30)
000928  eb528fff  load.d r[6:7], -8(r30)
00092c  93a01204  setlt.ul r1, r[6:7], r[2:3]
000930  a7920200  addli.d r[6:7], r[6:7], 1
000934  37f60000  beq r1, zero, 412
000938  9f700000  addli r1, zero, 7
00093c  6b550fff  load.d r[11:12], -16(r30)
000940  733c5ffe  store.d r[6:7], -8(r30)
000944  17b41202  sll.d r[9:10], r[6:7], r1
000948  db040000  j 36
00094c  27450500  addli.d r[11:12], r[11:12], 4
000950  8b92dd10  add.s r5, r27, r13
000954  13213502  setneq.d r2, r[11:12], r[4:5]
000958  73e6e200  stores.w r14, 12(r5)
00095c  73e42201  stores.w r18, 8(r5)
000960  73e26201  stores.w r22, 4(r5)
000964  73e01200  stores.w r1, 0(r5)
000968  b77e01fe  beq r2, zero, -68
00096c  8b208510  add.ul r[2:3], r[11:12], r[9:10]
000970  9bb62000  slli r13, r1, 2
000974  8b10da10  add.s r1, r20, r13
000978  efc3c000  loads.w r7, 12(r1)
00097c  6fcc0000  loads.w r24, 0(r1)
000980  efcb4000  loads.w r23, 4(r1)
000984  efca8000  loads.w r21, 8(r1)
000988  9788f300  and r17, r7, r15
00098c  93001e05  setlt.u r1, r28, r17
000990  3bb00000  bneq r1, zero, 12
000994  1f870300  addli r14, r7, 0
000998  5b010000  j 8
00099c  17979301  or r14, r7, r25
0009a0  1786fa00  and r12, r21, r15
0009a4  9300ce04  setlt.u r1, r28, r12
0009a8  3bb00000  bneq r1, zero, 12
0009ac  1f890a00  addli r18, r21, 0
0009b0  5b010000  j 8
0009b4  17999a01  or r18, r21, r25
0009b8  1781fb00  and r2, r23, r15
0009bc  93002e04  setlt.u r1, r28, r2
0009c0  3bb00000  bneq r1, zero, 12
0009c4  1f8b0b00  addli r22, r23, 0
0009c8  5b010000  j 8
0009cc  179b9b01  or r22, r23, r25
0009d0  9702fc00  and r5, r24, r15
0009d4  93005e04  setlt.u r1, r28, r5
0009d8  3bd00000  bneq r1, zero, 20
0009dc  9f000c00  addli r1, r24, 0
0009e0  93825904  setlt.u r5, r19, r5
0009e4  37d00200  beq r5, zero, 20
0009e8  db040000  j 36
0009ec  97109c01  or r1, r24, r25
0009f0  93825904  setlt.u r5, r19, r5
0009f4  3be00200  bneq r5, zero, 24
0009f8  9b400c01  srli r1, r24, 16
0009fc  9b801000  andi r1, r1, 1
000a00  8b101c10  add.s r1, r24, r1
000a04  8b900011  add.s r1, r1, r16
000a08  9780a001  and r1, r1, r26
000a0c  13812904  setlt.u r2, r19, r2
000a10  bb300100  bneq r2, zero, 44
000a14  1bc10b01  srli r2, r23, 16
000a18  1b011100  andi r2, r2, 1
000a1c  0b912b10  add.s r2, r23, r2
000a20  0b110111  add.s r2, r2, r16
000a24  170ba101  and r22, r2, r26
000a28  1381c904  setlt.u r2, r19, r12
000a2c  37600100  beq r2, zero, 24
000a30  13811905  setlt.u r2, r19, r17
000a34  3b6c01fe  bneq r2, zero, -232
000a38  5b050000  j 40
000a3c  1381c904  setlt.u r2, r19, r12
000a40  bb4f01fe  bneq r2, zero, -16
000a44  1bc10a01  srli r2, r21, 16
000a48  1b011100  andi r2, r2, 1
000a4c  0b912a10  add.s r2, r21, r2
000a50  0b110111  add.s r2, r2, r16
000a54  1709a101  and r18, r2, r26
000a58  13811905  setlt.u r2, r19, r17
000a5c  bb4b01fe  bneq r2, zero, -272
000a60  1bc10301  srli r2, r7, 16
000a64  1b011100  andi r2, r2, 1
000a68  0b912310  add.s r2, r7, r2
000a6c  0b110111  add.s r2, r2, r16
000a70  1707a101  and r14, r2, r26
000a74  5bdbffff  j -296
000a78  eb520ffb  load.d r[6:7], -80(r30)
000a7c  9f410000  addli r3, zero, 4
000a80  b7ad340e  beq r9, r3, 8040
000a84  bbbf640f  bneq r9, r22, 8172
000a88  9f111000  addli r3, zero, 9
000a8c  e70a0ffe  storeli.w zero, -88(r30)
000a90  7d900b00  xwait r23, 0
000a94  7d900100  xwait r3, 0
000a98  1d000000  lock zero, zero
000a9c  9f018000  addli r3, zero, 64
000aa0  810d0000  ds_cfg r27, zero, 0
000aa4  81080002  ds_cfg r17, zero, 1
000aa8  8101001c  ds_cfg r3, zero, 14
000aac  8108001a  ds_cfg r17, zero, 13
000ab0  c1003104  shuffle_coa r1, r2, r3, 2
000ab4  9f100000  addli r1, zero, 1
000ab8  1d100000  unlock zero
000abc  7d000b00  xsignal r22, 0
000ac0  e74a1ffe  storeli.w r1, -84(r30)
000ac4  7d800a00  xsignal r21, 0
000ac8  37a8e4fe  beq r9, r14, -504
000acc  5bc2ffff  j -496
000ad0  00200100  mfence { sm }
000ad4  80340002  core_id r9
000ad8  eb520ffb  load.d r[6:7], -80(r30)
000adc  9f703000  addli r1, zero, 31
000ae0  b3800028  zext_int2long r[2:3], r1
000ae4  73341ffc  store.d r[2:3], -56(r30)
000ae8  9f100000  addli r1, zero, 1
000aec  bbe51400  bneq r9, r1, 376
000af0  9f002000  addli r1, zero, 16
000af4  3d000000  xfence
000af8  00a00300  mfence { lm, sm, gm }
000afc  b3820028  zext_int2long r[6:7], r1
000b00  5b030000  j 24
000b04  eb508ffc  load.d r[2:3], -56(r30)
000b08  eb528fff  load.d r[6:7], -8(r30)
000b0c  93a01204  setlt.ul r1, r[6:7], r[2:3]
000b10  a7920200  addli.d r[6:7], r[6:7], 1
000b14  37950000  beq r1, zero, 324
000b18  9f700000  addli r1, zero, 7
000b1c  33050028  zext_int2long r[11:12], zero
000b20  733c5ffe  store.d r[6:7], -8(r30)
000b24  17b41202  sll.d r[9:10], r[6:7], r1
000b28  db040000  j 36
000b2c  27450500  addli.d r[11:12], r[11:12], 4
000b30  0b91dd10  add.s r2, r27, r13
000b34  93203502  setneq.d r1, r[11:12], r[4:5]
000b38  7366e100  stores.w r14, 12(r2)
000b3c  73642101  stores.w r18, 8(r2)
000b40  73626101  stores.w r22, 4(r2)
000b44  73606100  stores.w r6, 0(r2)
000b48  b7fe00fe  beq r1, zero, -68
000b4c  8b208510  add.ul r[2:3], r[11:12], r[9:10]
000b50  9bb62000  slli r13, r1, 2
000b54  8b10da10  add.s r1, r20, r13
000b58  efc3c000  loads.w r7, 12(r1)
000b5c  efcb0000  loads.w r23, 0(r1)
000b60  efc24000  loads.w r5, 4(r1)
000b64  efca8000  loads.w r21, 8(r1)
000b68  9788f300  and r17, r7, r15
000b6c  93001e05  setlt.u r1, r28, r17
000b70  3bb00000  bneq r1, zero, 12
000b74  1f870300  addli r14, r7, 0
000b78  5b010000  j 8
000b7c  17979301  or r14, r7, r25
000b80  1786fa00  and r12, r21, r15
000b84  9300ce04  setlt.u r1, r28, r12
000b88  3bb00000  bneq r1, zero, 12
000b8c  1f890a00  addli r18, r21, 0
000b90  5b010000  j 8
000b94  17999a01  or r18, r21, r25
000b98  178cf200  and r24, r5, r15
000b9c  93008e05  setlt.u r1, r28, r24
000ba0  3bb00000  bneq r1, zero, 12
000ba4  1f8b0200  addli r22, r5, 0
000ba8  5b010000  j 8
000bac  179b9201  or r22, r5, r25
000bb0  9780fb00  and r1, r23, r15
000bb4  13011e04  setlt.u r2, r28, r1
000bb8  3b500100  bneq r2, zero, 20
000bbc  1f830b00  addli r6, r23, 0
000bc0  93801904  setlt.u r1, r19, r1
000bc4  37d00000  beq r1, zero, 20
000bc8  db040000  j 36
000bcc  17939b01  or r6, r23, r25
000bd0  93801904  setlt.u r1, r19, r1
000bd4  3be00000  bneq r1, zero, 24
000bd8  9bc00b01  srli r1, r23, 16
000bdc  9b801000  andi r1, r1, 1
000be0  8b901b10  add.s r1, r23, r1
000be4  8b900011  add.s r1, r1, r16
000be8  1783a001  and r6, r1, r26
000bec  93808905  setlt.u r1, r19, r24
000bf0  bbb00000  bneq r1, zero, 44
000bf4  9bc00201  srli r1, r5, 16
000bf8  9b801000  andi r1, r1, 1
000bfc  8b901210  add.s r1, r5, r1
000c00  8b900011  add.s r1, r1, r16
000c04  178ba001  and r22, r1, r26
000c08  9380c904  setlt.u r1, r19, r12
000c0c  37e00000  beq r1, zero, 24
000c10  93801905  setlt.u r1, r19, r17
000c14  3bec00fe  bneq r1, zero, -232
000c18  5b050000  j 40
000c1c  9380c904  setlt.u r1, r19, r12
000c20  bbcf00fe  bneq r1, zero, -16
000c24  9bc00a01  srli r1, r21, 16
000c28  9b801000  andi r1, r1, 1
000c2c  8b901a10  add.s r1, r21, r1
000c30  8b900011  add.s r1, r1, r16
000c34  1789a001  and r18, r1, r26
000c38  93801905  setlt.u r1, r19, r17
000c3c  bbcb00fe  bneq r1, zero, -272
000c40  9bc00301  srli r1, r7, 16
000c44  9b801000  andi r1, r1, 1
000c48  8b901310  add.s r1, r7, r1
000c4c  8b900011  add.s r1, r1, r16
000c50  1787a001  and r14, r1, r26
000c54  5bdbffff  j -296
000c58  00200100  mfence { sm }
000c5c  80340002  core_id r9
000c60  eb520ffb  load.d r[6:7], -80(r30)
000c64  9f705000  addli r1, zero, 47
000c68  b3800028  zext_int2long r[2:3], r1
000c6c  73381ffc  store.d r[2:3], -48(r30)
000c70  e3404fff  loadli.w r1,  -92(r30)
000c74  b7e50000  beq r1, zero, 376
000c78  9f004000  addli r1, zero, 32
000c7c  3d000000  xfence
000c80  00a00300  mfence { lm, sm, gm }
000c84  b3820028  zext_int2long r[6:7], r1
000c88  5b030000  j 24
000c8c  eb500ffd  load.d r[2:3], -48(r30)
000c90  eb528fff  load.d r[6:7], -8(r30)
000c94  93a01204  setlt.ul r1, r[6:7], r[2:3]
000c98  a7920200  addli.d r[6:7], r[6:7], 1
000c9c  37950000  beq r1, zero, 324
000ca0  9f700000  addli r1, zero, 7
000ca4  33050028  zext_int2long r[11:12], zero
000ca8  733c5ffe  store.d r[6:7], -8(r30)
000cac  17b41202  sll.d r[9:10], r[6:7], r1
000cb0  db040000  j 36
000cb4  27450500  addli.d r[11:12], r[11:12], 4
000cb8  0b91dd10  add.s r2, r27, r13
000cbc  93203502  setneq.d r1, r[11:12], r[4:5]
000cc0  7366e100  stores.w r14, 12(r2)
000cc4  73642101  stores.w r18, 8(r2)
000cc8  73626101  stores.w r22, 4(r2)
000ccc  73606100  stores.w r6, 0(r2)
000cd0  b7fe00fe  beq r1, zero, -68
000cd4  8b208510  add.ul r[2:3], r[11:12], r[9:10]
000cd8  9bb62000  slli r13, r1, 2
000cdc  8b10da10  add.s r1, r20, r13
000ce0  efc3c000  loads.w r7, 12(r1)
000ce4  efcb0000  loads.w r23, 0(r1)
000ce8  efc24000  loads.w r5, 4(r1)
000cec  efca8000  loads.w r21, 8(r1)
000cf0  9788f300  and r17, r7, r15
000cf4  93001e05  setlt.u r1, r28, r17
000cf8  3bb00000  bneq r1, zero, 12
000cfc  1f870300  addli r14, r7, 0
000d00  5b010000  j 8
000d04  17979301  or r14, r7, r25
000d08  1786fa00  and r12, r21, r15
000d0c  9300ce04  setlt.u r1, r28, r12
000d10  3bb00000  bneq r1, zero, 12
000d14  1f890a00  addli r18, r21, 0
000d18  5b010000  j 8
000d1c  17999a01  or r18, r21, r25
000d20  178cf200  and r24, r5, r15
000d24  93008e05  setlt.u r1, r28, r24
000d28  3bb00000  bneq r1, zero, 12
000d2c  1f8b0200  addli r22, r5, 0
000d30  5b010000  j 8
000d34  179b9201  or r22, r5, r25
000d38  9780fb00  and r1, r23, r15
000d3c  13011e04  setlt.u r2, r28, r1
000d40  3b500100  bneq r2, zero, 20
000d44  1f830b00  addli r6, r23, 0
000d48  93801904  setlt.u r1, r19, r1
000d4c  37d00000  beq r1, zero, 20
000d50  db040000  j 36
000d54  17939b01  or r6, r23, r25
000d58  93801904  setlt.u r1, r19, r1
000d5c  3be00000  bneq r1, zero, 24
000d60  9bc00b01  srli r1, r23, 16
000d64  9b801000  andi r1, r1, 1
000d68  8b901b10  add.s r1, r23, r1
000d6c  8b900011  add.s r1, r1, r16
000d70  1783a001  and r6, r1, r26
000d74  93808905  setlt.u r1, r19, r24
000d78  bbb00000  bneq r1, zero, 44
000d7c  9bc00201  srli r1, r5, 16
000d80  9b801000  andi r1, r1, 1
000d84  8b901210  add.s r1, r5, r1
000d88  8b900011  add.s r1, r1, r16
000d8c  178ba001  and r22, r1, r26
000d90  9380c904  setlt.u r1, r19, r12
000d94  37e00000  beq r1, zero, 24
000d98  93801905  setlt.u r1, r19, r17
000d9c  3bec00fe  bneq r1, zero, -232
000da0  5b050000  j 40
000da4  9380c904  setlt.u r1, r19, r12
000da8  bbcf00fe  bneq r1, zero, -16
000dac  9bc00a01  srli r1, r21, 16
000db0  9b801000  andi r1, r1, 1
000db4  8b901a10  add.s r1, r21, r1
000db8  8b900011  add.s r1, r1, r16
000dbc  1789a001  and r18, r1, r26
000dc0  93801905  setlt.u r1, r19, r17
000dc4  bbcb00fe  bneq r1, zero, -272
000dc8  9bc00301  srli r1, r7, 16
000dcc  9b801000  andi r1, r1, 1
000dd0  8b901310  add.s r1, r7, r1
000dd4  8b900011  add.s r1, r1, r16
000dd8  1787a001  and r14, r1, r26
000ddc  5bdbffff  j -296
000de0  00200100  mfence { sm }
000de4  80340002  core_id r9
000de8  eb520ffb  load.d r[6:7], -80(r30)
000dec  9f707000  addli r1, zero, 63
000df0  b3800028  zext_int2long r[2:3], r1
000df4  733c1ffc  store.d r[2:3], -40(r30)
000df8  9f300000  addli r1, zero, 3
000dfc  bbe51400  bneq r9, r1, 376
000e00  9f006000  addli r1, zero, 48
000e04  3d000000  xfence
000e08  00a00300  mfence { lm, sm, gm }
000e0c  b3820028  zext_int2long r[6:7], r1
000e10  5b030000  j 24
000e14  eb508ffd  load.d r[2:3], -40(r30)
000e18  eb528fff  load.d r[6:7], -8(r30)
000e1c  93a01204  setlt.ul r1, r[6:7], r[2:3]
000e20  a7920200  addli.d r[6:7], r[6:7], 1
000e24  37950000  beq r1, zero, 324
000e28  9f700000  addli r1, zero, 7
000e2c  33050028  zext_int2long r[11:12], zero
000e30  733c5ffe  store.d r[6:7], -8(r30)
000e34  17b41202  sll.d r[9:10], r[6:7], r1
000e38  db040000  j 36
000e3c  27450500  addli.d r[11:12], r[11:12], 4
000e40  0b91dd10  add.s r2, r27, r13
000e44  93203502  setneq.d r1, r[11:12], r[4:5]
000e48  7366e100  stores.w r14, 12(r2)
000e4c  73642101  stores.w r18, 8(r2)
000e50  73626101  stores.w r22, 4(r2)
000e54  73606100  stores.w r6, 0(r2)
000e58  b7fe00fe  beq r1, zero, -68
000e5c  8b208510  add.ul r[2:3], r[11:12], r[9:10]
000e60  9bb62000  slli r13, r1, 2
000e64  8b10da10  add.s r1, r20, r13
000e68  efc3c000  loads.w r7, 12(r1)
000e6c  efcb0000  loads.w r23, 0(r1)
000e70  efc24000  loads.w r5, 4(r1)
000e74  efca8000  loads.w r21, 8(r1)
000e78  9788f300  and r17, r7, r15
000e7c  93001e05  setlt.u r1, r28, r17
000e80  3bb00000  bneq r1, zero, 12
000e84  1f870300  addli r14, r7, 0
000e88  5b010000  j 8
000e8c  17979301  or r14, r7, r25
000e90  1786fa00  and r12, r21, r15
000e94  9300ce04  setlt.u r1, r28, r12
000e98  3bb00000  bneq r1, zero, 12
000e9c  1f890a00  addli r18, r21, 0
000ea0  5b010000  j 8
000ea4  17999a01  or r18, r21, r25
000ea8  178cf200  and r24, r5, r15
000eac  93008e05  setlt.u r1, r28, r24
000eb0  3bb00000  bneq r1, zero, 12
000eb4  1f8b0200  addli r22, r5, 0
000eb8  5b010000  j 8
000ebc  179b9201  or r22, r5, r25
000ec0  9780fb00  and r1, r23, r15
000ec4  13011e04  setlt.u r2, r28, r1
000ec8  3b500100  bneq r2, zero, 20
000ecc  1f830b00  addli r6, r23, 0
000ed0  93801904  setlt.u r1, r19, r1
000ed4  37d00000  beq r1, zero, 20
000ed8  db040000  j 36
000edc  17939b01  or r6, r23, r25
000ee0  93801904  setlt.u r1, r19, r1
000ee4  3be00000  bneq r1, zero, 24
000ee8  9bc00b01  srli r1, r23, 16
000eec  9b801000  andi r1, r1, 1
000ef0  8b901b10  add.s r1, r23, r1
000ef4  8b900011  add.s r1, r1, r16
000ef8  1783a001  and r6, r1, r26
000efc  93808905  setlt.u r1, r19, r24
000f00  bbb00000  bneq r1, zero, 44
000f04  9bc00201  srli r1, r5, 16
000f08  9b801000  andi r1, r1, 1
000f0c  8b901210  add.s r1, r5, r1
000f10  8b900011  add.s r1, r1, r16
000f14  178ba001  and r22, r1, r26
000f18  9380c904  setlt.u r1, r19, r12
000f1c  37e00000  beq r1, zero, 24
000f20  93801905  setlt.u r1, r19, r17
000f24  3bec00fe  bneq r1, zero, -232
000f28  5b050000  j 40
000f2c  9380c904  setlt.u r1, r19, r12
000f30  bbcf00fe  bneq r1, zero, -16
000f34  9bc00a01  srli r1, r21, 16
000f38  9b801000  andi r1, r1, 1
000f3c  8b901a10  add.s r1, r21, r1
000f40  8b900011  add.s r1, r1, r16
000f44  1789a001  and r18, r1, r26
000f48  93801905  setlt.u r1, r19, r17
000f4c  bbcb00fe  bneq r1, zero, -272
000f50  9bc00301  srli r1, r7, 16
000f54  9b801000  andi r1, r1, 1
000f58  8b901310  add.s r1, r7, r1
000f5c  8b900011  add.s r1, r1, r16
000f60  1787a001  and r14, r1, r26
000f64  5bdbffff  j -296
000f68  00200100  mfence { sm }
000f6c  80340002  core_id r9
000f70  eb520ffb  load.d r[6:7], -80(r30)
000f74  9f709000  addli r1, zero, 79
000f78  b3800028  zext_int2long r[2:3], r1
000f7c  73301ffe  store.d r[2:3], -32(r30)
000f80  e3005fff  loadli.w r1,  -88(r30)
000f84  b7e50000  beq r1, zero, 376
000f88  9f008000  addli r1, zero, 64
000f8c  3d000000  xfence
000f90  00a00300  mfence { lm, sm, gm }
000f94  b3820028  zext_int2long r[6:7], r1
000f98  5b030000  j 24
000f9c  eb500ffe  load.d r[2:3], -32(r30)
000fa0  eb528fff  load.d r[6:7], -8(r30)
000fa4  93a01204  setlt.ul r1, r[6:7], r[2:3]
000fa8  a7920200  addli.d r[6:7], r[6:7], 1
000fac  37950000  beq r1, zero, 324
000fb0  9f700000  addli r1, zero, 7
000fb4  b3060028  zext_int2long r[14:15], zero
000fb8  733c5ffe  store.d r[6:7], -8(r30)
000fbc  17b51202  sll.d r[11:12], r[6:7], r1
000fc0  db040000  j 36
000fc4  a7c60600  addli.d r[14:15], r[14:15], 4
000fc8  0b915d11  add.s r2, r27, r21
000fcc  93a03602  setneq.d r1, r[14:15], r[4:5]
000fd0  73668100  stores.w r8, 12(r2)
000fd4  73641101  stores.w r17, 8(r2)
000fd8  73626101  stores.w r22, 4(r2)
000fdc  73606100  stores.w r6, 0(r2)
000fe0  b7fe00fe  beq r1, zero, -68
000fe4  8ba0a610  add.ul r[2:3], r[14:15], r[11:12]
000fe8  9bba2000  slli r21, r1, 2
000fec  8b105a11  add.s r1, r20, r21
000ff0  efc3c000  loads.w r7, 12(r1)
000ff4  efcb0000  loads.w r23, 0(r1)
000ff8  efc24000  loads.w r5, 4(r1)
000ffc  6fc98000  loads.w r18, 8(r1)
001000  9784f300  and r9, r7, r15
001004  93009e04  setlt.u r1, r28, r9
001008  3bb00000  bneq r1, zero, 12
00100c  1f840300  addli r8, r7, 0
001010  5b010000  j 8
001014  17949301  or r8, r7, r25
001018  1706f900  and r12, r18, r15
00101c  9300ce04  setlt.u r1, r28, r12
001020  3bb00000  bneq r1, zero, 12
001024  9f080900  addli r17, r18, 0
001028  5b010000  j 8
00102c  97189901  or r17, r18, r25
001030  178cf200  and r24, r5, r15
001034  93008e05  setlt.u r1, r28, r24
001038  3bb00000  bneq r1, zero, 12
00103c  1f8b0200  addli r22, r5, 0
001040  5b010000  j 8
001044  179b9201  or r22, r5, r25
001048  9780fb00  and r1, r23, r15
00104c  13011e04  setlt.u r2, r28, r1
001050  3b500100  bneq r2, zero, 20
001054  1f830b00  addli r6, r23, 0
001058  93801904  setlt.u r1, r19, r1
00105c  37d00000  beq r1, zero, 20
001060  db040000  j 36
001064  17939b01  or r6, r23, r25
001068  93801904  setlt.u r1, r19, r1
00106c  3be00000  bneq r1, zero, 24
001070  9bc00b01  srli r1, r23, 16
001074  9b801000  andi r1, r1, 1
001078  8b901b10  add.s r1, r23, r1
00107c  8b900011  add.s r1, r1, r16
001080  1783a001  and r6, r1, r26
001084  93808905  setlt.u r1, r19, r24
001088  bbb00000  bneq r1, zero, 44
00108c  9bc00201  srli r1, r5, 16
001090  9b801000  andi r1, r1, 1
001094  8b901210  add.s r1, r5, r1
001098  8b900011  add.s r1, r1, r16
00109c  178ba001  and r22, r1, r26
0010a0  9380c904  setlt.u r1, r19, r12
0010a4  37e00000  beq r1, zero, 24
0010a8  93809904  setlt.u r1, r19, r9
0010ac  3bec00fe  bneq r1, zero, -232
0010b0  5b050000  j 40
0010b4  9380c904  setlt.u r1, r19, r12
0010b8  bbcf00fe  bneq r1, zero, -16
0010bc  9b400901  srli r1, r18, 16
0010c0  9b801000  andi r1, r1, 1
0010c4  8b101910  add.s r1, r18, r1
0010c8  8b900011  add.s r1, r1, r16
0010cc  9788a001  and r17, r1, r26
0010d0  93809904  setlt.u r1, r19, r9
0010d4  bbcb00fe  bneq r1, zero, -272
0010d8  9bc00301  srli r1, r7, 16
0010dc  9b801000  andi r1, r1, 1
0010e0  8b901310  add.s r1, r7, r1
0010e4  8b900011  add.s r1, r1, r16
0010e8  1784a001  and r8, r1, r26
0010ec  5bdbffff  j -296
0010f0  00200100  mfence { sm }
0010f4  80340002  core_id r9
0010f8  eb520ffb  load.d r[6:7], -80(r30)
0010fc  9f70b000  addli r1, zero, 95
001100  b3800028  zext_int2long r[2:3], r1
001104  73341ffe  store.d r[2:3], -24(r30)
001108  9f500000  addli r1, zero, 5
00110c  bbe51400  bneq r9, r1, 376
001110  9f00a000  addli r1, zero, 80
001114  3d000000  xfence
001118  00a00300  mfence { lm, sm, gm }
00111c  b3820028  zext_int2long r[6:7], r1
001120  5b030000  j 24
001124  eb508ffe  load.d r[2:3], -24(r30)
001128  eb528fff  load.d r[6:7], -8(r30)
00112c  93a01204  setlt.ul r1, r[6:7], r[2:3]
001130  a7920200  addli.d r[6:7], r[6:7], 1
001134  37950000  beq r1, zero, 324
001138  9f700000  addli r1, zero, 7
00113c  b30a0028  zext_int2long r[22:23], zero
001140  733c5ffe  store.d r[6:7], -8(r30)
001144  17b51202  sll.d r[11:12], r[6:7], r1
001148  db040000  j 36
00114c  a7ca0a00  addli.d r[22:23], r[22:23], 4
001150  0b91dd10  add.s r2, r27, r13
001154  93a03a02  setneq.d r1, r[22:23], r[4:5]
001158  73668100  stores.w r8, 12(r2)
00115c  7364e100  stores.w r14, 8(r2)
001160  73622101  stores.w r18, 4(r2)
001164  73606100  stores.w r6, 0(r2)
001168  b7fe00fe  beq r1, zero, -68
00116c  8ba0aa10  add.ul r[2:3], r[22:23], r[11:12]
001170  9bb62000  slli r13, r1, 2
001174  8b10da10  add.s r1, r20, r13
001178  efc3c000  loads.w r7, 12(r1)
00117c  efcb0000  loads.w r23, 0(r1)
001180  efc24000  loads.w r5, 4(r1)
001184  efc88000  loads.w r17, 8(r1)
001188  9784f300  and r9, r7, r15
00118c  93009e04  setlt.u r1, r28, r9
001190  3bb00000  bneq r1, zero, 12
001194  1f840300  addli r8, r7, 0
001198  5b010000  j 8
00119c  17949301  or r8, r7, r25
0011a0  1786f800  and r12, r17, r15
0011a4  9300ce04  setlt.u r1, r28, r12
0011a8  3bb00000  bneq r1, zero, 12
0011ac  1f870800  addli r14, r17, 0
0011b0  5b010000  j 8
0011b4  17979801  or r14, r17, r25
0011b8  178cf200  and r24, r5, r15
0011bc  93008e05  setlt.u r1, r28, r24
0011c0  3bb00000  bneq r1, zero, 12
0011c4  1f890200  addli r18, r5, 0
0011c8  5b010000  j 8
0011cc  17999201  or r18, r5, r25
0011d0  9780fb00  and r1, r23, r15
0011d4  13011e04  setlt.u r2, r28, r1
0011d8  3b500100  bneq r2, zero, 20
0011dc  1f830b00  addli r6, r23, 0
0011e0  93801904  setlt.u r1, r19, r1
0011e4  37d00000  beq r1, zero, 20
0011e8  db040000  j 36
0011ec  17939b01  or r6, r23, r25
0011f0  93801904  setlt.u r1, r19, r1
0011f4  3be00000  bneq r1, zero, 24
0011f8  9bc00b01  srli r1, r23, 16
0011fc  9b801000  andi r1, r1, 1
001200  8b901b10  add.s r1, r23, r1
001204  8b900011  add.s r1, r1, r16
001208  1783a001  and r6, r1, r26
00120c  93808905  setlt.u r1, r19, r24
001210  bbb00000  bneq r1, zero, 44
001214  9bc00201  srli r1, r5, 16
001218  9b801000  andi r1, r1, 1
00121c  8b901210  add.s r1, r5, r1
001220  8b900011  add.s r1, r1, r16
001224  1789a001  and r18, r1, r26
001228  9380c904  setlt.u r1, r19, r12
00122c  37e00000  beq r1, zero, 24
001230  93809904  setlt.u r1, r19, r9
001234  3bec00fe  bneq r1, zero, -232
001238  5b050000  j 40
00123c  9380c904  setlt.u r1, r19, r12
001240  bbcf00fe  bneq r1, zero, -16
001244  9bc00801  srli r1, r17, 16
001248  9b801000  andi r1, r1, 1
00124c  8b901810  add.s r1, r17, r1
001250  8b900011  add.s r1, r1, r16
001254  1787a001  and r14, r1, r26
001258  93809904  setlt.u r1, r19, r9
00125c  bbcb00fe  bneq r1, zero, -272
001260  9bc00301  srli r1, r7, 16
001264  9b801000  andi r1, r1, 1
001268  8b901310  add.s r1, r7, r1
00126c  8b900011  add.s r1, r1, r16
001270  1784a001  and r8, r1, r26
001274  5bdbffff  j -296
001278  00200100  mfence { sm }
00127c  80340002  core_id r9
001280  eb520ffb  load.d r[6:7], -80(r30)
001284  9f70d000  addli r1, zero, 111
001288  b3800028  zext_int2long r[2:3], r1
00128c  73381ffe  store.d r[2:3], -16(r30)
001290  9f600000  addli r1, zero, 6
001294  bbe51400  bneq r9, r1, 376
001298  9f00c000  addli r1, zero, 96
00129c  3d000000  xfence
0012a0  00a00300  mfence { lm, sm, gm }
0012a4  b3820028  zext_int2long r[6:7], r1
0012a8  5b030000  j 24
0012ac  eb500fff  load.d r[2:3], -16(r30)
0012b0  eb528fff  load.d r[6:7], -8(r30)
0012b4  93a01204  setlt.ul r1, r[6:7], r[2:3]
0012b8  a7920200  addli.d r[6:7], r[6:7], 1
0012bc  37950000  beq r1, zero, 324
0012c0  9f700000  addli r1, zero, 7
0012c4  b30a0028  zext_int2long r[22:23], zero
0012c8  733c5ffe  store.d r[6:7], -8(r30)
0012cc  17b51202  sll.d r[11:12], r[6:7], r1
0012d0  db040000  j 36
0012d4  a7ca0a00  addli.d r[22:23], r[22:23], 4
0012d8  0b91dd10  add.s r2, r27, r13
0012dc  93a03a02  setneq.d r1, r[22:23], r[4:5]
0012e0  73668100  stores.w r8, 12(r2)
0012e4  7364e100  stores.w r14, 8(r2)
0012e8  73622101  stores.w r18, 4(r2)
0012ec  73606100  stores.w r6, 0(r2)
0012f0  b7fe00fe  beq r1, zero, -68
0012f4  8ba0aa10  add.ul r[2:3], r[22:23], r[11:12]
0012f8  9bb62000  slli r13, r1, 2
0012fc  8b10da10  add.s r1, r20, r13
001300  efc3c000  loads.w r7, 12(r1)
001304  efcb0000  loads.w r23, 0(r1)
001308  efc24000  loads.w r5, 4(r1)
00130c  efc88000  loads.w r17, 8(r1)
001310  9784f300  and r9, r7, r15
001314  93009e04  setlt.u r1, r28, r9
001318  3bb00000  bneq r1, zero, 12
00131c  1f840300  addli r8, r7, 0
001320  5b010000  j 8
001324  17949301  or r8, r7, r25
001328  1786f800  and r12, r17, r15
00132c  9300ce04  setlt.u r1, r28, r12
001330  3bb00000  bneq r1, zero, 12
001334  1f870800  addli r14, r17, 0
001338  5b010000  j 8
00133c  17979801  or r14, r17, r25
001340  178cf200  and r24, r5, r15
001344  93008e05  setlt.u r1, r28, r24
001348  3bb00000  bneq r1, zero, 12
00134c  1f890200  addli r18, r5, 0
001350  5b010000  j 8
001354  17999201  or r18, r5, r25
001358  9780fb00  and r1, r23, r15
00135c  13011e04  setlt.u r2, r28, r1
001360  3b500100  bneq r2, zero, 20
001364  1f830b00  addli r6, r23, 0
001368  93801904  setlt.u r1, r19, r1
00136c  37d00000  beq r1, zero, 20
001370  db040000  j 36
001374  17939b01  or r6, r23, r25
001378  93801904  setlt.u r1, r19, r1
00137c  3be00000  bneq r1, zero, 24
001380  9bc00b01  srli r1, r23, 16
001384  9b801000  andi r1, r1, 1
001388  8b901b10  add.s r1, r23, r1
00138c  8b900011  add.s r1, r1, r16
001390  1783a001  and r6, r1, r26
001394  93808905  setlt.u r1, r19, r24
001398  bbb00000  bneq r1, zero, 44
00139c  9bc00201  srli r1, r5, 16
0013a0  9b801000  andi r1, r1, 1
0013a4  8b901210  add.s r1, r5, r1
0013a8  8b900011  add.s r1, r1, r16
0013ac  1789a001  and r18, r1, r26
0013b0  9380c904  setlt.u r1, r19, r12
0013b4  37e00000  beq r1, zero, 24
0013b8  93809904  setlt.u r1, r19, r9
0013bc  3bec00fe  bneq r1, zero, -232
0013c0  5b050000  j 40
0013c4  9380c904  setlt.u r1, r19, r12
0013c8  bbcf00fe  bneq r1, zero, -16
0013cc  9bc00801  srli r1, r17, 16
0013d0  9b801000  andi r1, r1, 1
0013d4  8b901810  add.s r1, r17, r1
0013d8  8b900011  add.s r1, r1, r16
0013dc  1787a001  and r14, r1, r26
0013e0  93809904  setlt.u r1, r19, r9
0013e4  bbcb00fe  bneq r1, zero, -272
0013e8  9bc00301  srli r1, r7, 16
0013ec  9b801000  andi r1, r1, 1
0013f0  8b901310  add.s r1, r7, r1
0013f4  8b900011  add.s r1, r1, r16
0013f8  1784a001  and r8, r1, r26
0013fc  5bdbffff  j -296
001400  00200100  mfence { sm }
001404  80340002  core_id r9
001408  eb520ffb  load.d r[6:7], -80(r30)
00140c  9f70f000  addli r1, zero, 127
001410  b3800028  zext_int2long r[2:3], r1
001414  733c1ffe  store.d r[2:3], -8(r30)
001418  e3405fff  loadli.w r1,  -84(r30)
00141c  b7e50000  beq r1, zero, 376
001420  9f00e000  addli r1, zero, 112
001424  3d000000  xfence
001428  00a00300  mfence { lm, sm, gm }
00142c  b3820028  zext_int2long r[6:7], r1
001430  5b030000  j 24
001434  eb508fff  load.d r[2:3], -8(r30)
001438  eb520ffc  load.d r[6:7], -64(r30)
00143c  93a01204  setlt.ul r1, r[6:7], r[2:3]
001440  a7920200  addli.d r[6:7], r[6:7], 1
001444  37950000  beq r1, zero, 324
001448  9f700000  addli r1, zero, 7
00144c  b3060028  zext_int2long r[14:15], zero
001450  73305ffc  store.d r[6:7], -64(r30)
001454  97ba1202  sll.d r[22:23], r[6:7], r1
001458  db040000  j 36
00145c  a7c60600  addli.d r[14:15], r[14:15], 4
001460  8b927d10  add.s r5, r27, r7
001464  13a13602  setneq.d r2, r[14:15], r[4:5]
001468  73e69200  stores.w r9, 12(r5)
00146c  73e42201  stores.w r18, 8(r5)
001470  73e28201  stores.w r24, 4(r5)
001474  73e01200  stores.w r1, 0(r5)
001478  b77e01fe  beq r2, zero, -68
00147c  8ba05611  add.ul r[2:3], r[14:15], r[22:23]
001480  9bb32000  slli r7, r1, 2
001484  8b107a10  add.s r1, r20, r7
001488  6fc4c000  loads.w r8, 12(r1)
00148c  6fc30000  loads.w r6, 0(r1)
001490  efc24000  loads.w r5, 4(r1)
001494  efcb8000  loads.w r23, 8(r1)
001498  9708f400  and r17, r8, r15
00149c  93001e05  setlt.u r1, r28, r17
0014a0  3bb00000  bneq r1, zero, 12
0014a4  9f040400  addli r9, r8, 0
0014a8  5b010000  j 8
0014ac  97149401  or r9, r8, r25
0014b0  1786fb00  and r12, r23, r15
0014b4  9300ce04  setlt.u r1, r28, r12
0014b8  3bb00000  bneq r1, zero, 12
0014bc  1f890b00  addli r18, r23, 0
0014c0  5b010000  j 8
0014c4  17999b01  or r18, r23, r25
0014c8  1781f200  and r2, r5, r15
0014cc  93002e04  setlt.u r1, r28, r2
0014d0  3bb00000  bneq r1, zero, 12
0014d4  1f8c0200  addli r24, r5, 0
0014d8  5b010000  j 8
0014dc  179c9201  or r24, r5, r25
0014e0  1705f300  and r10, r6, r15
0014e4  9300ae04  setlt.u r1, r28, r10
0014e8  3bd00000  bneq r1, zero, 20
0014ec  9f000300  addli r1, r6, 0
0014f0  1385a904  setlt.u r10, r19, r10
0014f4  37500500  beq r10, zero, 20
0014f8  db040000  j 36
0014fc  97109301  or r1, r6, r25
001500  1385a904  setlt.u r10, r19, r10
001504  3b600500  bneq r10, zero, 24
001508  9b400301  srli r1, r6, 16
00150c  9b801000  andi r1, r1, 1
001510  8b101310  add.s r1, r6, r1
001514  8b900011  add.s r1, r1, r16
001518  9780a001  and r1, r1, r26
00151c  13812904  setlt.u r2, r19, r2
001520  bb300100  bneq r2, zero, 44
001524  1bc10201  srli r2, r5, 16
001528  1b011100  andi r2, r2, 1
00152c  0b912210  add.s r2, r5, r2
001530  0b110111  add.s r2, r2, r16
001534  170ca101  and r24, r2, r26
001538  1381c904  setlt.u r2, r19, r12
00153c  37600100  beq r2, zero, 24
001540  13811905  setlt.u r2, r19, r17
001544  3b6c01fe  bneq r2, zero, -232
001548  5b050000  j 40
00154c  1381c904  setlt.u r2, r19, r12
001550  bb4f01fe  bneq r2, zero, -16
001554  1bc10b01  srli r2, r23, 16
001558  1b011100  andi r2, r2, 1
00155c  0b912b10  add.s r2, r23, r2
001560  0b110111  add.s r2, r2, r16
001564  1709a101  and r18, r2, r26
001568  13811905  setlt.u r2, r19, r17
00156c  bb4b01fe  bneq r2, zero, -272
001570  1b410401  srli r2, r8, 16
001574  1b011100  andi r2, r2, 1
001578  0b112410  add.s r2, r8, r2
00157c  0b110111  add.s r2, r2, r16
001580  9704a101  and r9, r2, r26
001584  5bdbffff  j -296
001588  00200100  mfence { sm }
00158c  80340002  core_id r9
001590  eb520ffb  load.d r[6:7], -80(r30)
001594  e3001fff  loadli.w r1,  -120(r30)
001598  9bb07000  slli r1, r1, 7
00159c  b3800028  zext_int2long r[2:3], r1
0015a0  8ba25040  min.ul r[6:7], r[2:3], r[6:7]
0015a4  a7820201  addli.d r[6:7], r[6:7], 128
0015a8  8ba21248  max.ul r[6:7], r[6:7], r[2:3]
0015ac  8bb01218  sub.sl r[2:3], r[6:7], r[2:3]
0015b0  8ba03040  min.ul r[2:3], r[2:3], r[4:5]
0015b4  73341ff8  store.d r[2:3], -120(r30)
0015b8  9f70f001  addli r1, zero, 255
0015bc  80a20004  csr_set csr5, r1
0015c0  9f300000  addli r1, zero, 3
0015c4  00e00200  sync_core
0015c8  bba01400  bneq r9, r1, 40
0015cc  9f301000  addli r1, zero, 11
0015d0  7d800000  xsignal r1, 0
0015d4  9f401000  addli r1, zero, 12
0015d8  7d800000  xsignal r1, 0
0015dc  9f501000  addli r1, zero, 13
0015e0  7d900000  xwait r1, 0
0015e4  9f202000  addli r1, zero, 18
0015e8  7d900000  xwait r1, 0
0015ec  5b6c0000  j 864
0015f0  e3403fff  loadli.w r1,  -100(r30)
0015f4  9f620000  addli r5, zero, 6
0015f8  1bb19000  slli r2, r1, 9
0015fc  ab000600  lui r1, 96
001600  8b101110  add.s r1, r2, r1
001604  3bfb5400  bneq r9, r5, 732
001608  eb520f01  load.d r[6:7], 16(r30)
00160c  eb538ff7  load.d r[8:9], -136(r30)
001610  1f250000  addli r10, zero, 2
001614  8ba27210  add.ul r[6:7], r[6:7], r[8:9]
001618  1f042000  addli r8, zero, 16
00161c  7d100400  xwait r8, 0
001620  e3034fff  loadli.w r7,  -96(r30)
001624  bf547500  blt.s r10, r7, 308
001628  9f550000  addli r11, zero, 5
00162c  1f160000  addli r12, zero, 1
001630  9f330000  addli r7, zero, 3
001634  9f460000  addli r13, zero, 4
001638  1d800500  lock zero, r11
00163c  15000014  dma_cfg zero, zero, zero, 10
001640  1500c014  dma_cfg zero, zero, r12, 10
001644  1500a014  dma_cfg zero, zero, r10, 10
001648  15007014  dma_cfg zero, zero, r7, 10
00164c  9f630000  addli r7, zero, 6
001650  1500d014  dma_cfg zero, zero, r13, 10
001654  1500b014  dma_cfg zero, zero, r11, 10
001658  15007014  dma_cfg zero, zero, r7, 10
00165c  9f730000  addli r7, zero, 7
001660  15007014  dma_cfg zero, zero, r7, 10
001664  9f031000  addli r7, zero, 8
001668  15007014  dma_cfg zero, zero, r7, 10
00166c  9f131000  addli r7, zero, 9
001670  15007014  dma_cfg zero, zero, r7, 10
001674  9f231000  addli r7, zero, 10
001678  15007014  dma_cfg zero, zero, r7, 10
00167c  9f331000  addli r7, zero, 11
001680  15007014  dma_cfg zero, zero, r7, 10
001684  9f431000  addli r7, zero, 12
001688  15007014  dma_cfg zero, zero, r7, 10
00168c  9f531000  addli r7, zero, 13
001690  15007014  dma_cfg zero, zero, r7, 10
001694  9f631000  addli r7, zero, 14
001698  15007014  dma_cfg zero, zero, r7, 10
00169c  9f731000  addli r7, zero, 15
0016a0  15007014  dma_cfg zero, zero, r7, 10
0016a4  9f132000  addli r7, zero, 17
0016a8  15008014  dma_cfg zero, zero, r8, 10
0016ac  15007014  dma_cfg zero, zero, r7, 10
0016b0  9f232000  addli r7, zero, 18
0016b4  15007014  dma_cfg zero, zero, r7, 10
0016b8  9f332000  addli r7, zero, 19
0016bc  15007014  dma_cfg zero, zero, r7, 10
0016c0  9f432000  addli r7, zero, 20
0016c4  15007014  dma_cfg zero, zero, r7, 10
0016c8  9f532000  addli r7, zero, 21
0016cc  15007014  dma_cfg zero, zero, r7, 10
0016d0  9f632000  addli r7, zero, 22
0016d4  15007014  dma_cfg zero, zero, r7, 10
0016d8  9f732000  addli r7, zero, 23
0016dc  15007014  dma_cfg zero, zero, r7, 10
0016e0  9f033000  addli r7, zero, 24
0016e4  15007014  dma_cfg zero, zero, r7, 10
0016e8  9f133000  addli r7, zero, 25
0016ec  15007014  dma_cfg zero, zero, r7, 10
0016f0  9f233000  addli r7, zero, 26
0016f4  15007014  dma_cfg zero, zero, r7, 10
0016f8  9f333000  addli r7, zero, 27
0016fc  15007014  dma_cfg zero, zero, r7, 10
001700  9f433000  addli r7, zero, 28
001704  15007014  dma_cfg zero, zero, r7, 10
001708  9f533000  addli r7, zero, 29
00170c  15007014  dma_cfg zero, zero, r7, 10
001710  9f633000  addli r7, zero, 30
001714  15007014  dma_cfg zero, zero, r7, 10
001718  9f733000  addli r7, zero, 31
00171c  15007014  dma_cfg zero, zero, r7, 10
001720  9f038000  addli r7, zero, 64
001724  15060600  dma_cfg r12, r12, zero, 0
001728  15060002  dma_cfg r12, zero, zero, 1
00172c  15000004  dma_cfg zero, zero, zero, 2
001730  95007006  dma_cfg r1, zero, r7, 3
001734  9f030001  addli r7, zero, 128
001738  9503d008  dma_cfg r7, zero, r13, 4
00173c  9f030004  addli r7, zero, 512
001740  9503c00a  dma_cfg r7, zero, r12, 5
001744  15000010  dma_cfg zero, zero, zero, 8
001748  35000000  dma_run zero
00174c  1500c00a  dma_cfg zero, zero, r12, 5
001750  15000010  dma_cfg zero, zero, zero, 8
001754  1d900500  unlock r11
001758  9f460000  addli r13, zero, 4
00175c  1f160000  addli r12, zero, 1
001760  ab030600  lui r7, 96
001764  1f078000  addli r14, zero, 64
001768  9f550000  addli r11, zero, 5
00176c  1d800600  lock zero, r13
001770  9b930304  ori r7, r7, 64
001774  15060600  dma_cfg r12, r12, zero, 0
001778  15000304  dma_cfg zero, r6, zero, 2
00177c  0b117110  add.s r2, r2, r7
001780  eb588ff8  load.d r[18:19], -120(r30)
001784  1581e206  dma_cfg r2, r5, r14, 3
001788  1f030002  addli r6, zero, 256
00178c  9ff33800  addli r7, r17, 31
001790  9bb21800  slli r5, r17, 1
001794  9f080004  addli r17, zero, 512
001798  1bc15300  srli r2, r7, 5
00179c  9f030001  addli r7, zero, 128
0017a0  9b82e203  andi r5, r5, 62
0017a4  95032708  dma_cfg r7, r14, r2, 4
0017a8  9508c30a  dma_cfg r17, r6, r12, 5
0017ac  1f330000  addli r6, zero, 3
0017b0  15005010  dma_cfg zero, zero, r5, 8
0017b4  35000000  dma_run zero
0017b8  1500c00a  dma_cfg zero, zero, r12, 5
0017bc  15000010  dma_cfg zero, zero, zero, 8
0017c0  1d900600  unlock r13
0017c4  1d800500  lock zero, r11
0017c8  15000014  dma_cfg zero, zero, zero, 10
0017cc  1500c014  dma_cfg zero, zero, r12, 10
0017d0  1500a014  dma_cfg zero, zero, r10, 10
0017d4  15006014  dma_cfg zero, zero, r6, 10
0017d8  1f630000  addli r6, zero, 6
0017dc  1500d014  dma_cfg zero, zero, r13, 10
0017e0  1500b014  dma_cfg zero, zero, r11, 10
0017e4  15006014  dma_cfg zero, zero, r6, 10
0017e8  1f730000  addli r6, zero, 7
0017ec  15006014  dma_cfg zero, zero, r6, 10
0017f0  1f031000  addli r6, zero, 8
0017f4  15006014  dma_cfg zero, zero, r6, 10
0017f8  1f131000  addli r6, zero, 9
0017fc  15006014  dma_cfg zero, zero, r6, 10
001800  1f231000  addli r6, zero, 10
001804  15006014  dma_cfg zero, zero, r6, 10
001808  1f331000  addli r6, zero, 11
00180c  15006014  dma_cfg zero, zero, r6, 10
001810  1f431000  addli r6, zero, 12
001814  15006014  dma_cfg zero, zero, r6, 10
001818  1f531000  addli r6, zero, 13
00181c  15006014  dma_cfg zero, zero, r6, 10
001820  1f631000  addli r6, zero, 14
001824  15006014  dma_cfg zero, zero, r6, 10
001828  1f731000  addli r6, zero, 15
00182c  15006014  dma_cfg zero, zero, r6, 10
001830  15008014  dma_cfg zero, zero, r8, 10
001834  1f142000  addli r8, zero, 17
001838  15008014  dma_cfg zero, zero, r8, 10
00183c  1f242000  addli r8, zero, 18
001840  15008014  dma_cfg zero, zero, r8, 10
001844  1f342000  addli r8, zero, 19
001848  15008014  dma_cfg zero, zero, r8, 10
00184c  1f442000  addli r8, zero, 20
001850  15008014  dma_cfg zero, zero, r8, 10
001854  1f542000  addli r8, zero, 21
001858  15008014  dma_cfg zero, zero, r8, 10
00185c  1f642000  addli r8, zero, 22
001860  15008014  dma_cfg zero, zero, r8, 10
001864  1f742000  addli r8, zero, 23
001868  15008014  dma_cfg zero, zero, r8, 10
00186c  1f043000  addli r8, zero, 24
001870  15008014  dma_cfg zero, zero, r8, 10
001874  1f143000  addli r8, zero, 25
001878  15008014  dma_cfg zero, zero, r8, 10
00187c  1f243000  addli r8, zero, 26
001880  15008014  dma_cfg zero, zero, r8, 10
001884  1f343000  addli r8, zero, 27
001888  15008014  dma_cfg zero, zero, r8, 10
00188c  1f443000  addli r8, zero, 28
001890  15008014  dma_cfg zero, zero, r8, 10
001894  1f543000  addli r8, zero, 29
001898  15008014  dma_cfg zero, zero, r8, 10
00189c  1f643000  addli r8, zero, 30
0018a0  15008014  dma_cfg zero, zero, r8, 10
0018a4  1f743000  addli r8, zero, 31
0018a8  15008014  dma_cfg zero, zero, r8, 10
0018ac  15060600  dma_cfg r12, r12, zero, 0
0018b0  15060002  dma_cfg r12, zero, zero, 1
0018b4  15000004  dma_cfg zero, zero, zero, 2
0018b8  9500e006  dma_cfg r1, zero, r14, 3
0018bc  95032008  dma_cfg r7, zero, r2, 4
0018c0  9508c00a  dma_cfg r17, zero, r12, 5
0018c4  15005010  dma_cfg zero, zero, r5, 8
0018c8  35000000  dma_run zero
0018cc  1500c00a  dma_cfg zero, zero, r12, 5
0018d0  15000010  dma_cfg zero, zero, zero, 8
0018d4  1d900500  unlock r11
0018d8  7d000300  xsignal r6, 0
0018dc  5b0e0000  j 112
0018e0  1f510000  addli r2, zero, 5
0018e4  bba12400  bneq r9, r2, 104
0018e8  9f421000  addli r5, zero, 12
0018ec  1f010000  addli r2, zero, 0
0018f0  2b030100  lui r6, 16
0018f4  7d900200  xwait r5, 0
0018f8  9f721000  addli r5, zero, 15
0018fc  7d900200  xwait r5, 0
001900  9f220000  addli r5, zero, 2
001904  1d800200  lock zero, r5
001908  ab02803f  lui r5, 260096
00190c  0d000002  ew_cfg zero, zero, zero, 1
001910  8d920200  ewcoeff_cfg r5, r5, zero, 0
001914  9f72f000  addli r5, zero, 127
001918  0d800204  ew_cfg zero, r5, zero, 2
00191c  9f120000  addli r5, zero, 1
001920  8d020006  ew_cfg r5, zero, zero, 3
001924  8b922d10  add.s r5, r27, r2
001928  1f010104  addli r2, r2, 512
00192c  ad821200  dsmadd r5, r5, r1, 0
001930  bb5f61fe  bneq r2, r6, -12
001934  9f200000  addli r1, zero, 2
001938  1d900000  unlock r1
00193c  9f501000  addli r1, zero, 13
001940  7d800000  xsignal r1, 0
001944  9f002000  addli r1, zero, 16
001948  7d800000  xsignal r1, 0
00194c  ab000600  lui r1, 96
001950  3d000000  xfence
001954  00a00300  mfence { lm, sm, gm }
001958  9b900060  ori r1, r1, 1536
00195c  8b131a10  add.s r7, r20, r1
001960  9f70f001  addli r1, zero, 255
001964  80a20004  csr_set csr5, r1
001968  00e00200  sync_core
00196c  b7b70402  beq r9, zero, 1516
001970  9f100000  addli r1, zero, 1
001974  3bbf1402  bneq r9, r1, 1996
001978  9f002000  addli r1, zero, 16
00197c  3d000000  xfence
001980  00a00300  mfence { lm, sm, gm }
001984  b3820028  zext_int2long r[6:7], r1
001988  5b030000  j 24
00198c  eb508ffc  load.d r[2:3], -56(r30)
001990  eb520ffc  load.d r[6:7], -64(r30)
001994  93a01204  setlt.ul r1, r[6:7], r[2:3]
001998  a7920200  addli.d r[6:7], r[6:7], 1
00199c  b7e60000  beq r1, zero, 440
0019a0  9f700000  addli r1, zero, 7
0019a4  73305ffc  store.d r[6:7], -64(r30)
0019a8  97ba1202  sll.d r[22:23], r[6:7], r1
0019ac  bbd1b301  bneq r7, r27, 116
0019b0  b3000028  zext_int2long r[2:3], zero
0019b4  5b060000  j 48
0019b8  1b430401  srli r6, r8, 16
0019bc  1b031300  andi r6, r6, 1
0019c0  0b136410  add.s r6, r8, r6
0019c4  0b130311  add.s r6, r6, r16
0019c8  1703a301  and r6, r6, r26
0019cc  6b548fff  load.d r[9:10], -8(r30)
0019d0  8b925310  add.s r5, r7, r5
0019d4  73e06200  stores.w r6, 0(r5)
0019d8  13a48004  setlt.ul r8, r[2:3], r[9:10]
0019dc  a7900000  addli.d r[2:3], r[2:3], 1
0019e0  b73e04fe  beq r8, zero, -84
0019e4  8ba25011  add.ul r[6:7], r[2:3], r[22:23]
0019e8  9bb22200  slli r5, r5, 2
0019ec  0b935d10  add.s r6, r27, r5
0019f0  6f440300  loads.w r8, 0(r6)
0019f4  9704f400  and r9, r8, r15
0019f8  13039e04  setlt.u r6, r28, r9
0019fc  3b500300  bneq r6, zero, 20
001a00  1f030400  addli r6, r8, 0
001a04  93849904  setlt.u r9, r19, r9
001a08  3b9f04fe  bneq r9, zero, -60
001a0c  dbf5ffff  j -84
001a10  17139401  or r6, r8, r25
001a14  93849904  setlt.u r9, r19, r9
001a18  bbde04fe  bneq r9, zero, -76
001a1c  dbf3ffff  j -100
001a20  b3060028  zext_int2long r[14:15], zero
001a24  db040000  j 36
001a28  a7c60600  addli.d r[14:15], r[14:15], 4
001a2c  8b928310  add.s r5, r7, r8
001a30  13a13600  seteq.d r2, r[14:15], r[4:5]
001a34  73e69200  stores.w r9, 12(r5)
001a38  73e47201  stores.w r23, 8(r5)
001a3c  73e21200  stores.w r1, 4(r5)
001a40  73e06200  stores.w r6, 0(r5)
001a44  3b2d01fe  bneq r2, zero, -184
001a48  8ba05611  add.ul r[2:3], r[14:15], r[22:23]
001a4c  1bb42000  slli r8, r1, 2
001a50  0b918d10  add.s r2, r27, r8
001a54  ef48c100  loads.w r17, 12(r2)
001a58  1789f800  and r18, r17, r15
001a5c  93002e05  setlt.u r1, r28, r18
001a60  3bb00000  bneq r1, zero, 12
001a64  9f840800  addli r9, r17, 0
001a68  5b010000  j 8
001a6c  97949801  or r9, r17, r25
001a70  ef428100  loads.w r5, 8(r2)
001a74  1786f200  and r12, r5, r15
001a78  9300ce04  setlt.u r1, r28, r12
001a7c  3bb00000  bneq r1, zero, 12
001a80  9f8b0200  addli r23, r5, 0
001a84  5b010000  j 8
001a88  979b9201  or r23, r5, r25
001a8c  6f4c4100  loads.w r24, 4(r2)
001a90  1705fc00  and r10, r24, r15
001a94  9300ae04  setlt.u r1, r28, r10
001a98  3bb00000  bneq r1, zero, 12
001a9c  9f000c00  addli r1, r24, 0
001aa0  5b010000  j 8
001aa4  97109c01  or r1, r24, r25
001aa8  6f410100  loads.w r2, 0(r2)
001aac  9705f100  and r11, r2, r15
001ab0  1303be04  setlt.u r6, r28, r11
001ab4  3b500300  bneq r6, zero, 20
001ab8  1f030100  addli r6, r2, 0
001abc  9385b904  setlt.u r11, r19, r11
001ac0  37d00500  beq r11, zero, 20
001ac4  db040000  j 36
001ac8  17139101  or r6, r2, r25
001acc  9385b904  setlt.u r11, r19, r11
001ad0  3be00500  bneq r11, zero, 24
001ad4  1b430101  srli r6, r2, 16
001ad8  1b031300  andi r6, r6, 1
001adc  0b116110  add.s r2, r2, r6
001ae0  0b110111  add.s r2, r2, r16
001ae4  1703a101  and r6, r2, r26
001ae8  1381a904  setlt.u r2, r19, r10
001aec  bb300100  bneq r2, zero, 44
001af0  9b400c01  srli r1, r24, 16
001af4  9b801000  andi r1, r1, 1
001af8  8b101c10  add.s r1, r24, r1
001afc  8b900011  add.s r1, r1, r16
001b00  9780a001  and r1, r1, r26
001b04  1381c904  setlt.u r2, r19, r12
001b08  37600100  beq r2, zero, 24
001b0c  13812905  setlt.u r2, r19, r18
001b10  3b6c01fe  bneq r2, zero, -232
001b14  5b050000  j 40
001b18  1381c904  setlt.u r2, r19, r12
001b1c  bb4f01fe  bneq r2, zero, -16
001b20  1bc10201  srli r2, r5, 16
001b24  1b011100  andi r2, r2, 1
001b28  0b912210  add.s r2, r5, r2
001b2c  0b110111  add.s r2, r2, r16
001b30  970ba101  and r23, r2, r26
001b34  13812905  setlt.u r2, r19, r18
001b38  bb4b01fe  bneq r2, zero, -272
001b3c  1bc10801  srli r2, r17, 16
001b40  1b011100  andi r2, r2, 1
001b44  0b912810  add.s r2, r17, r2
001b48  0b110111  add.s r2, r2, r16
001b4c  9704a101  and r9, r2, r26
001b50  5bdbffff  j -296
001b54  80340002  core_id r9
001b58  00200100  mfence { sm }
001b5c  e3404fff  loadli.w r1,  -92(r30)
001b60  bba70002  bneq r1, zero, 1512
001b64  9f300000  addli r1, zero, 3
001b68  3bbf1402  bneq r9, r1, 1996
001b6c  9f006000  addli r1, zero, 48
001b70  3d000000  xfence
001b74  00a00300  mfence { lm, sm, gm }
001b78  b3820028  zext_int2long r[6:7], r1
001b7c  5b030000  j 24
001b80  eb508ffd  load.d r[2:3], -40(r30)
001b84  eb520ffd  load.d r[6:7], -48(r30)
001b88  93a01204  setlt.ul r1, r[6:7], r[2:3]
001b8c  a7920200  addli.d r[6:7], r[6:7], 1
001b90  b7e60000  beq r1, zero, 440
001b94  9f700000  addli r1, zero, 7
001b98  73385ffc  store.d r[6:7], -48(r30)
001b9c  97b21202  sll.d r[6:7], r[6:7], r1
001ba0  bbd1b301  bneq r7, r27, 116
001ba4  b3000028  zext_int2long r[2:3], zero
001ba8  5b060000  j 48
001bac  9b440501  srli r9, r10, 16
001bb0  9b841400  andi r9, r9, 1
001bb4  8b149510  add.s r9, r10, r9
001bb8  8b940411  add.s r9, r9, r16
001bbc  9784a401  and r9, r9, r26
001bc0  6b558fff  load.d r[11:12], -8(r30)
001bc4  0b948310  add.s r8, r7, r8
001bc8  73609400  stores.w r9, 0(r8)
001bcc  13a5a004  setlt.ul r10, r[2:3], r[11:12]
001bd0  a7900000  addli.d r[2:3], r[2:3], 1
001bd4  b73e05fe  beq r10, zero, -84
001bd8  0ba45010  add.ul r[9:10], r[2:3], r[6:7]
001bdc  1b342400  slli r8, r8, 2
001be0  8b948d10  add.s r9, r27, r8
001be4  6fc50400  loads.w r10, 0(r9)
001be8  9705f500  and r11, r10, r15
001bec  9304be04  setlt.u r9, r28, r11
001bf0  3bd00400  bneq r9, zero, 20
001bf4  9f040500  addli r9, r10, 0
001bf8  9385b904  setlt.u r11, r19, r11
001bfc  3b9f05fe  bneq r11, zero, -60
001c00  dbf5ffff  j -84
001c04  97149501  or r9, r10, r25
001c08  9385b904  setlt.u r11, r19, r11
001c0c  bbde05fe  bneq r11, zero, -76
001c10  dbf3ffff  j -100
001c14  b3060028  zext_int2long r[14:15], zero
001c18  db040000  j 36
001c1c  a7c60600  addli.d r[14:15], r[14:15], 4
001c20  0b948310  add.s r8, r7, r8
001c24  13a13600  seteq.d r2, r[14:15], r[4:5]
001c28  73669400  stores.w r9, 12(r8)
001c2c  73645401  stores.w r21, 8(r8)
001c30  73621400  stores.w r1, 4(r8)
001c34  73608401  stores.w r24, 0(r8)
001c38  3b2d01fe  bneq r2, zero, -184
001c3c  8ba05610  add.ul r[2:3], r[14:15], r[6:7]
001c40  1bb42000  slli r8, r1, 2
001c44  0b918d10  add.s r2, r27, r8
001c48  ef48c100  loads.w r17, 12(r2)
001c4c  1789f800  and r18, r17, r15
001c50  93002e05  setlt.u r1, r28, r18
001c54  3bb00000  bneq r1, zero, 12
001c58  9f840800  addli r9, r17, 0
001c5c  5b010000  j 8
001c60  97949801  or r9, r17, r25
001c64  ef4b8100  loads.w r23, 8(r2)
001c68  1786fb00  and r12, r23, r15
001c6c  9300ce04  setlt.u r1, r28, r12
001c70  3bb00000  bneq r1, zero, 12
001c74  9f8a0b00  addli r21, r23, 0
001c78  5b010000  j 8
001c7c  979a9b01  or r21, r23, r25
001c80  6f4b4100  loads.w r22, 4(r2)
001c84  1705fb00  and r10, r22, r15
001c88  9300ae04  setlt.u r1, r28, r10
001c8c  3bb00000  bneq r1, zero, 12
001c90  9f000b00  addli r1, r22, 0
001c94  5b010000  j 8
001c98  97109b01  or r1, r22, r25
001c9c  6f410100  loads.w r2, 0(r2)
001ca0  9705f100  and r11, r2, r15
001ca4  130cbe04  setlt.u r24, r28, r11
001ca8  3b500c00  bneq r24, zero, 20
001cac  1f0c0100  addli r24, r2, 0
001cb0  9385b904  setlt.u r11, r19, r11
001cb4  37d00500  beq r11, zero, 20
001cb8  db040000  j 36
001cbc  171c9101  or r24, r2, r25
001cc0  9385b904  setlt.u r11, r19, r11
001cc4  3be00500  bneq r11, zero, 24
001cc8  9b450101  srli r11, r2, 16
001ccc  9b851500  andi r11, r11, 1
001cd0  0b11b110  add.s r2, r2, r11
001cd4  0b110111  add.s r2, r2, r16
001cd8  170ca101  and r24, r2, r26
001cdc  1381a904  setlt.u r2, r19, r10
001ce0  bb300100  bneq r2, zero, 44
001ce4  9b400b01  srli r1, r22, 16
001ce8  9b801000  andi r1, r1, 1
001cec  8b101b10  add.s r1, r22, r1
001cf0  8b900011  add.s r1, r1, r16
001cf4  9780a001  and r1, r1, r26
001cf8  1381c904  setlt.u r2, r19, r12
001cfc  37600100  beq r2, zero, 24
001d00  13812905  setlt.u r2, r19, r18
001d04  3b6c01fe  bneq r2, zero, -232
001d08  5b050000  j 40
001d0c  1381c904  setlt.u r2, r19, r12
001d10  bb4f01fe  bneq r2, zero, -16
001d14  1bc10b01  srli r2, r23, 16
001d18  1b011100  andi r2, r2, 1
001d1c  0b912b10  add.s r2, r23, r2
001d20  0b110111  add.s r2, r2, r16
001d24  970aa101  and r21, r2, r26
001d28  13812905  setlt.u r2, r19, r18
001d2c  bb4b01fe  bneq r2, zero, -272
001d30  1bc10801  srli r2, r17, 16
001d34  1b011100  andi r2, r2, 1
001d38  0b912810  add.s r2, r17, r2
001d3c  0b110111  add.s r2, r2, r16
001d40  9704a101  and r9, r2, r26
001d44  5bdbffff  j -296
001d48  80340002  core_id r9
001d4c  00200100  mfence { sm }
001d50  e3005fff  loadli.w r1,  -88(r30)
001d54  bba70002  bneq r1, zero, 1512
001d58  9f500000  addli r1, zero, 5
001d5c  3bbf1402  bneq r9, r1, 1996
001d60  9f00a000  addli r1, zero, 80
001d64  3d000000  xfence
001d68  00a00300  mfence { lm, sm, gm }
001d6c  b3820028  zext_int2long r[6:7], r1
001d70  5b030000  j 24
001d74  eb508ffe  load.d r[2:3], -24(r30)
001d78  eb520ffe  load.d r[6:7], -32(r30)
001d7c  93a01204  setlt.ul r1, r[6:7], r[2:3]
001d80  a7920200  addli.d r[6:7], r[6:7], 1
001d84  b7e60000  beq r1, zero, 440
001d88  9f700000  addli r1, zero, 7
001d8c  73305ffe  store.d r[6:7], -32(r30)
001d90  97b21202  sll.d r[6:7], r[6:7], r1
001d94  bbd1b301  bneq r7, r27, 116
001d98  b3000028  zext_int2long r[2:3], zero
001d9c  5b060000  j 48
001da0  9b440501  srli r9, r10, 16
001da4  9b841400  andi r9, r9, 1
001da8  8b149510  add.s r9, r10, r9
001dac  8b940411  add.s r9, r9, r16
001db0  9784a401  and r9, r9, r26
001db4  6b558fff  load.d r[11:12], -8(r30)
001db8  0b948310  add.s r8, r7, r8
001dbc  73609400  stores.w r9, 0(r8)
001dc0  13a5a004  setlt.ul r10, r[2:3], r[11:12]
001dc4  a7900000  addli.d r[2:3], r[2:3], 1
001dc8  b73e05fe  beq r10, zero, -84
001dcc  0ba45010  add.ul r[9:10], r[2:3], r[6:7]
001dd0  1b342400  slli r8, r8, 2
001dd4  8b948d10  add.s r9, r27, r8
001dd8  6fc50400  loads.w r10, 0(r9)
001ddc  9705f500  and r11, r10, r15
001de0  9304be04  setlt.u r9, r28, r11
001de4  3bd00400  bneq r9, zero, 20
001de8  9f040500  addli r9, r10, 0
001dec  9385b904  setlt.u r11, r19, r11
001df0  3b9f05fe  bneq r11, zero, -60
001df4  dbf5ffff  j -84
001df8  97149501  or r9, r10, r25
001dfc  9385b904  setlt.u r11, r19, r11
001e00  bbde05fe  bneq r11, zero, -76
001e04  dbf3ffff  j -100
001e08  33040028  zext_int2long r[9:10], zero
001e0c  db040000  j 36
001e10  27440400  addli.d r[9:10], r[9:10], 4
001e14  0b95d310  add.s r10, r7, r13
001e18  13213400  seteq.d r2, r[9:10], r[4:5]
001e1c  7366e500  stores.w r14, 12(r10)
001e20  73645501  stores.w r21, 8(r10)
001e24  73621500  stores.w r1, 4(r10)
001e28  73608501  stores.w r24, 0(r10)
001e2c  3b2d01fe  bneq r2, zero, -184
001e30  8b205410  add.ul r[2:3], r[9:10], r[6:7]
001e34  9bb62000  slli r13, r1, 2
001e38  0b91dd10  add.s r2, r27, r13
001e3c  ef48c100  loads.w r17, 12(r2)
001e40  1789f800  and r18, r17, r15
001e44  93002e05  setlt.u r1, r28, r18
001e48  3bb00000  bneq r1, zero, 12
001e4c  1f870800  addli r14, r17, 0
001e50  5b010000  j 8
001e54  17979801  or r14, r17, r25
001e58  ef4b8100  loads.w r23, 8(r2)
001e5c  1786fb00  and r12, r23, r15
001e60  9300ce04  setlt.u r1, r28, r12
001e64  3bb00000  bneq r1, zero, 12
001e68  9f8a0b00  addli r21, r23, 0
001e6c  5b010000  j 8
001e70  979a9b01  or r21, r23, r25
001e74  6f4b4100  loads.w r22, 4(r2)
001e78  1705fb00  and r10, r22, r15
001e7c  9300ae04  setlt.u r1, r28, r10
001e80  3bb00000  bneq r1, zero, 12
001e84  9f000b00  addli r1, r22, 0
001e88  5b010000  j 8
001e8c  97109b01  or r1, r22, r25
001e90  6f410100  loads.w r2, 0(r2)
001e94  9705f100  and r11, r2, r15
001e98  130cbe04  setlt.u r24, r28, r11
001e9c  3b500c00  bneq r24, zero, 20
001ea0  1f0c0100  addli r24, r2, 0
001ea4  9385b904  setlt.u r11, r19, r11
001ea8  37d00500  beq r11, zero, 20
001eac  db040000  j 36
001eb0  171c9101  or r24, r2, r25
001eb4  9385b904  setlt.u r11, r19, r11
001eb8  3be00500  bneq r11, zero, 24
001ebc  9b450101  srli r11, r2, 16
001ec0  9b851500  andi r11, r11, 1
001ec4  0b11b110  add.s r2, r2, r11
001ec8  0b110111  add.s r2, r2, r16
001ecc  170ca101  and r24, r2, r26
001ed0  1381a904  setlt.u r2, r19, r10
001ed4  bb300100  bneq r2, zero, 44
001ed8  9b400b01  srli r1, r22, 16
001edc  9b801000  andi r1, r1, 1
001ee0  8b101b10  add.s r1, r22, r1
001ee4  8b900011  add.s r1, r1, r16
001ee8  9780a001  and r1, r1, r26
001eec  1381c904  setlt.u r2, r19, r12
001ef0  37600100  beq r2, zero, 24
001ef4  13812905  setlt.u r2, r19, r18
001ef8  3b6c01fe  bneq r2, zero, -232
001efc  5b050000  j 40
001f00  1381c904  setlt.u r2, r19, r12
001f04  bb4f01fe  bneq r2, zero, -16
001f08  1bc10b01  srli r2, r23, 16
001f0c  1b011100  andi r2, r2, 1
001f10  0b912b10  add.s r2, r23, r2
001f14  0b110111  add.s r2, r2, r16
001f18  970aa101  and r21, r2, r26
001f1c  13812905  setlt.u r2, r19, r18
001f20  bb4b01fe  bneq r2, zero, -272
001f24  1bc10801  srli r2, r17, 16
001f28  1b011100  andi r2, r2, 1
001f2c  0b912810  add.s r2, r17, r2
001f30  0b110111  add.s r2, r2, r16
001f34  1707a101  and r14, r2, r26
001f38  5bdbffff  j -296
001f3c  80340002  core_id r9
001f40  00200100  mfence { sm }
001f44  9f600000  addli r1, zero, 6
001f48  b7a71402  beq r9, r1, 1512
001f4c  e3405fff  loadli.w r1,  -84(r30)
001f50  3bbf0002  bneq r1, zero, 1996
001f54  db350100  j 2476
001f58  3d000000  xfence
001f5c  b3020028  zext_int2long r[6:7], zero
001f60  00a00300  mfence { lm, sm, gm }
001f64  5b030000  j 24
001f68  eb508ffb  load.d r[2:3], -72(r30)
001f6c  eb520ffc  load.d r[6:7], -64(r30)
001f70  93a01204  setlt.ul r1, r[6:7], r[2:3]
001f74  a7920200  addli.d r[6:7], r[6:7], 1
001f78  b7e60000  beq r1, zero, 440
001f7c  9f700000  addli r1, zero, 7
001f80  73305ffc  store.d r[6:7], -64(r30)
001f84  97ba1202  sll.d r[22:23], r[6:7], r1
001f88  bbd1b301  bneq r7, r27, 116
001f8c  b3000028  zext_int2long r[2:3], zero
001f90  5b060000  j 48
001f94  1b430401  srli r6, r8, 16
001f98  1b031300  andi r6, r6, 1
001f9c  0b136410  add.s r6, r8, r6
001fa0  0b130311  add.s r6, r6, r16
001fa4  1703a301  and r6, r6, r26
001fa8  6b548fff  load.d r[9:10], -8(r30)
001fac  8b925310  add.s r5, r7, r5
001fb0  73e06200  stores.w r6, 0(r5)
001fb4  13a48004  setlt.ul r8, r[2:3], r[9:10]
001fb8  a7900000  addli.d r[2:3], r[2:3], 1
001fbc  b73e04fe  beq r8, zero, -84
001fc0  8ba25011  add.ul r[6:7], r[2:3], r[22:23]
001fc4  9bb22200  slli r5, r5, 2
001fc8  0b935d10  add.s r6, r27, r5
001fcc  6f440300  loads.w r8, 0(r6)
001fd0  9704f400  and r9, r8, r15
001fd4  13039e04  setlt.u r6, r28, r9
001fd8  3b500300  bneq r6, zero, 20
001fdc  1f030400  addli r6, r8, 0
001fe0  93849904  setlt.u r9, r19, r9
001fe4  3b9f04fe  bneq r9, zero, -60
001fe8  dbf5ffff  j -84
001fec  17139401  or r6, r8, r25
001ff0  93849904  setlt.u r9, r19, r9
001ff4  bbde04fe  bneq r9, zero, -76
001ff8  dbf3ffff  j -100
001ffc  b3060028  zext_int2long r[14:15], zero
002000  db040000  j 36
002004  a7c60600  addli.d r[14:15], r[14:15], 4
002008  0b948310  add.s r8, r7, r8
00200c  13a13600  seteq.d r2, r[14:15], r[4:5]
002010  73661401  stores.w r17, 12(r8)
002014  73645400  stores.w r5, 8(r8)
002018  73621400  stores.w r1, 4(r8)
00201c  73606400  stores.w r6, 0(r8)
002020  3b2d01fe  bneq r2, zero, -184
002024  8ba05611  add.ul r[2:3], r[14:15], r[22:23]
002028  1bb42000  slli r8, r1, 2
00202c  0b918d10  add.s r2, r27, r8
002030  ef44c100  loads.w r9, 12(r2)
002034  1789f400  and r18, r9, r15
002038  93002e05  setlt.u r1, r28, r18
00203c  3bb00000  bneq r1, zero, 12
002040  9f880400  addli r17, r9, 0
002044  5b010000  j 8
002048  97989401  or r17, r9, r25
00204c  ef4b8100  loads.w r23, 8(r2)
002050  1786fb00  and r12, r23, r15
002054  9300ce04  setlt.u r1, r28, r12
002058  3bb00000  bneq r1, zero, 12
00205c  9f820b00  addli r5, r23, 0
002060  5b010000  j 8
002064  97929b01  or r5, r23, r25
002068  6f4c4100  loads.w r24, 4(r2)
00206c  1705fc00  and r10, r24, r15
002070  9300ae04  setlt.u r1, r28, r10
002074  3bb00000  bneq r1, zero, 12
002078  9f000c00  addli r1, r24, 0
00207c  5b010000  j 8
002080  97109c01  or r1, r24, r25
002084  6f410100  loads.w r2, 0(r2)
002088  9705f100  and r11, r2, r15
00208c  1303be04  setlt.u r6, r28, r11
002090  3b500300  bneq r6, zero, 20
002094  1f030100  addli r6, r2, 0
002098  9385b904  setlt.u r11, r19, r11
00209c  37d00500  beq r11, zero, 20
0020a0  db040000  j 36
0020a4  17139101  or r6, r2, r25
0020a8  9385b904  setlt.u r11, r19, r11
0020ac  3be00500  bneq r11, zero, 24
0020b0  1b430101  srli r6, r2, 16
0020b4  1b031300  andi r6, r6, 1
0020b8  0b116110  add.s r2, r2, r6
0020bc  0b110111  add.s r2, r2, r16
0020c0  1703a101  and r6, r2, r26
0020c4  1381a904  setlt.u r2, r19, r10
0020c8  bb300100  bneq r2, zero, 44
0020cc  9b400c01  srli r1, r24, 16
0020d0  9b801000  andi r1, r1, 1
0020d4  8b101c10  add.s r1, r24, r1
0020d8  8b900011  add.s r1, r1, r16
0020dc  9780a001  and r1, r1, r26
0020e0  1381c904  setlt.u r2, r19, r12
0020e4  37600100  beq r2, zero, 24
0020e8  13812905  setlt.u r2, r19, r18
0020ec  3b6c01fe  bneq r2, zero, -232
0020f0  5b050000  j 40
0020f4  1381c904  setlt.u r2, r19, r12
0020f8  bb4f01fe  bneq r2, zero, -16
0020fc  1bc10b01  srli r2, r23, 16
002100  1b011100  andi r2, r2, 1
002104  0b912b10  add.s r2, r23, r2
002108  0b110111  add.s r2, r2, r16
00210c  9702a101  and r5, r2, r26
002110  13812905  setlt.u r2, r19, r18
002114  bb4b01fe  bneq r2, zero, -272
002118  1bc10401  srli r2, r9, 16
00211c  1b011100  andi r2, r2, 1
002120  0b912410  add.s r2, r9, r2
002124  0b110111  add.s r2, r2, r16
002128  9708a101  and r17, r2, r26
00212c  5bdbffff  j -296
002130  80340002  core_id r9
002134  00200100  mfence { sm }
002138  9f100000  addli r1, zero, 1
00213c  b7f014fc  beq r9, r1, -1988
002140  e3404fff  loadli.w r1,  -92(r30)
002144  b78800fc  beq r1, zero, -1504
002148  9f004000  addli r1, zero, 32
00214c  3d000000  xfence
002150  00a00300  mfence { lm, sm, gm }
002154  b3820028  zext_int2long r[6:7], r1
002158  5b030000  j 24
00215c  eb500ffd  load.d r[2:3], -48(r30)
002160  eb528ffc  load.d r[6:7], -56(r30)
002164  93a01204  setlt.ul r1, r[6:7], r[2:3]
002168  a7920200  addli.d r[6:7], r[6:7], 1
00216c  b7e60000  beq r1, zero, 440
002170  9f700000  addli r1, zero, 7
002174  73345ffc  store.d r[6:7], -56(r30)
002178  97b21202  sll.d r[6:7], r[6:7], r1
00217c  bbd1b301  bneq r7, r27, 116
002180  b3000028  zext_int2long r[2:3], zero
002184  5b060000  j 48
002188  9b440501  srli r9, r10, 16
00218c  9b841400  andi r9, r9, 1
002190  8b149510  add.s r9, r10, r9
002194  8b940411  add.s r9, r9, r16
002198  9784a401  and r9, r9, r26
00219c  6b558fff  load.d r[11:12], -8(r30)
0021a0  0b948310  add.s r8, r7, r8
0021a4  73609400  stores.w r9, 0(r8)
0021a8  13a5a004  setlt.ul r10, r[2:3], r[11:12]
0021ac  a7900000  addli.d r[2:3], r[2:3], 1
0021b0  b73e05fe  beq r10, zero, -84
0021b4  0ba45010  add.ul r[9:10], r[2:3], r[6:7]
0021b8  1b342400  slli r8, r8, 2
0021bc  8b948d10  add.s r9, r27, r8
0021c0  6fc50400  loads.w r10, 0(r9)
0021c4  9705f500  and r11, r10, r15
0021c8  9304be04  setlt.u r9, r28, r11
0021cc  3bd00400  bneq r9, zero, 20
0021d0  9f040500  addli r9, r10, 0
0021d4  9385b904  setlt.u r11, r19, r11
0021d8  3b9f05fe  bneq r11, zero, -60
0021dc  dbf5ffff  j -84
0021e0  97149501  or r9, r10, r25
0021e4  9385b904  setlt.u r11, r19, r11
0021e8  bbde05fe  bneq r11, zero, -76
0021ec  dbf3ffff  j -100
0021f0  b3060028  zext_int2long r[14:15], zero
0021f4  db040000  j 36
0021f8  a7c60600  addli.d r[14:15], r[14:15], 4
0021fc  0b948310  add.s r8, r7, r8
002200  13a13600  seteq.d r2, r[14:15], r[4:5]
002204  73669400  stores.w r9, 12(r8)
002208  73645401  stores.w r21, 8(r8)
00220c  73621400  stores.w r1, 4(r8)
002210  73608401  stores.w r24, 0(r8)
002214  3b2d01fe  bneq r2, zero, -184
002218  8ba05610  add.ul r[2:3], r[14:15], r[6:7]
00221c  1bb42000  slli r8, r1, 2
002220  0b918d10  add.s r2, r27, r8
002224  ef48c100  loads.w r17, 12(r2)
002228  1789f800  and r18, r17, r15
00222c  93002e05  setlt.u r1, r28, r18
002230  3bb00000  bneq r1, zero, 12
002234  9f840800  addli r9, r17, 0
002238  5b010000  j 8
00223c  97949801  or r9, r17, r25
002240  ef4b8100  loads.w r23, 8(r2)
002244  1786fb00  and r12, r23, r15
002248  9300ce04  setlt.u r1, r28, r12
00224c  3bb00000  bneq r1, zero, 12
002250  9f8a0b00  addli r21, r23, 0
002254  5b010000  j 8
002258  979a9b01  or r21, r23, r25
00225c  6f4b4100  loads.w r22, 4(r2)
002260  1705fb00  and r10, r22, r15
002264  9300ae04  setlt.u r1, r28, r10
002268  3bb00000  bneq r1, zero, 12
00226c  9f000b00  addli r1, r22, 0
002270  5b010000  j 8
002274  97109b01  or r1, r22, r25
002278  6f410100  loads.w r2, 0(r2)
00227c  9705f100  and r11, r2, r15
002280  130cbe04  setlt.u r24, r28, r11
002284  3b500c00  bneq r24, zero, 20
002288  1f0c0100  addli r24, r2, 0
00228c  9385b904  setlt.u r11, r19, r11
002290  37d00500  beq r11, zero, 20
002294  db040000  j 36
002298  171c9101  or r24, r2, r25
00229c  9385b904  setlt.u r11, r19, r11
0022a0  3be00500  bneq r11, zero, 24
0022a4  9b450101  srli r11, r2, 16
0022a8  9b851500  andi r11, r11, 1
0022ac  0b11b110  add.s r2, r2, r11
0022b0  0b110111  add.s r2, r2, r16
0022b4  170ca101  and r24, r2, r26
0022b8  1381a904  setlt.u r2, r19, r10
0022bc  bb300100  bneq r2, zero, 44
0022c0  9b400b01  srli r1, r22, 16
0022c4  9b801000  andi r1, r1, 1
0022c8  8b101b10  add.s r1, r22, r1
0022cc  8b900011  add.s r1, r1, r16
0022d0  9780a001  and r1, r1, r26
0022d4  1381c904  setlt.u r2, r19, r12
0022d8  37600100  beq r2, zero, 24
0022dc  13812905  setlt.u r2, r19, r18
0022e0  3b6c01fe  bneq r2, zero, -232
0022e4  5b050000  j 40
0022e8  1381c904  setlt.u r2, r19, r12
0022ec  bb4f01fe  bneq r2, zero, -16
0022f0  1bc10b01  srli r2, r23, 16
0022f4  1b011100  andi r2, r2, 1
0022f8  0b912b10  add.s r2, r23, r2
0022fc  0b110111  add.s r2, r2, r16
002300  970aa101  and r21, r2, r26
002304  13812905  setlt.u r2, r19, r18
002308  bb4b01fe  bneq r2, zero, -272
00230c  1bc10801  srli r2, r17, 16
002310  1b011100  andi r2, r2, 1
002314  0b912810  add.s r2, r17, r2
002318  0b110111  add.s r2, r2, r16
00231c  9704a101  and r9, r2, r26
002320  5bdbffff  j -296
002324  80340002  core_id r9
002328  00200100  mfence { sm }
00232c  9f300000  addli r1, zero, 3
002330  b7f014fc  beq r9, r1, -1988
002334  e3005fff  loadli.w r1,  -88(r30)
002338  b78800fc  beq r1, zero, -1504
00233c  9f008000  addli r1, zero, 64
002340  3d000000  xfence
002344  00a00300  mfence { lm, sm, gm }
002348  b3820028  zext_int2long r[6:7], r1
00234c  5b030000  j 24
002350  eb500ffe  load.d r[2:3], -32(r30)
002354  eb528ffd  load.d r[6:7], -40(r30)
002358  93a01204  setlt.ul r1, r[6:7], r[2:3]
00235c  a7920200  addli.d r[6:7], r[6:7], 1
002360  b7e60000  beq r1, zero, 440
002364  9f700000  addli r1, zero, 7
002368  733c5ffc  store.d r[6:7], -40(r30)
00236c  97b21202  sll.d r[6:7], r[6:7], r1
002370  bbd1b301  bneq r7, r27, 116
002374  b3000028  zext_int2long r[2:3], zero
002378  5b060000  j 48
00237c  9b440501  srli r9, r10, 16
002380  9b841400  andi r9, r9, 1
002384  8b149510  add.s r9, r10, r9
002388  8b940411  add.s r9, r9, r16
00238c  9784a401  and r9, r9, r26
002390  6b558fff  load.d r[11:12], -8(r30)
002394  0b948310  add.s r8, r7, r8
002398  73609400  stores.w r9, 0(r8)
00239c  13a5a004  setlt.ul r10, r[2:3], r[11:12]
0023a0  a7900000  addli.d r[2:3], r[2:3], 1
0023a4  b73e05fe  beq r10, zero, -84
0023a8  0ba45010  add.ul r[9:10], r[2:3], r[6:7]
0023ac  1b342400  slli r8, r8, 2
0023b0  8b948d10  add.s r9, r27, r8
0023b4  6fc50400  loads.w r10, 0(r9)
0023b8  9705f500  and r11, r10, r15
0023bc  9304be04  setlt.u r9, r28, r11
0023c0  3bd00400  bneq r9, zero, 20
0023c4  9f040500  addli r9, r10, 0
0023c8  9385b904  setlt.u r11, r19, r11
0023cc  3b9f05fe  bneq r11, zero, -60
0023d0  dbf5ffff  j -84
0023d4  97149501  or r9, r10, r25
0023d8  9385b904  setlt.u r11, r19, r11
0023dc  bbde05fe  bneq r11, zero, -76
0023e0  dbf3ffff  j -100
0023e4  b3060028  zext_int2long r[14:15], zero
0023e8  db040000  j 36
0023ec  a7c60600  addli.d r[14:15], r[14:15], 4
0023f0  0b948310  add.s r8, r7, r8
0023f4  13a13600  seteq.d r2, r[14:15], r[4:5]
0023f8  73669400  stores.w r9, 12(r8)
0023fc  73645401  stores.w r21, 8(r8)
002400  73621400  stores.w r1, 4(r8)
002404  73608401  stores.w r24, 0(r8)
002408  3b2d01fe  bneq r2, zero, -184
00240c  8ba05610  add.ul r[2:3], r[14:15], r[6:7]
002410  1bb42000  slli r8, r1, 2
002414  0b918d10  add.s r2, r27, r8
002418  ef48c100  loads.w r17, 12(r2)
00241c  1789f800  and r18, r17, r15
002420  93002e05  setlt.u r1, r28, r18
002424  3bb00000  bneq r1, zero, 12
002428  9f840800  addli r9, r17, 0
00242c  5b010000  j 8
002430  97949801  or r9, r17, r25
002434  ef4b8100  loads.w r23, 8(r2)
002438  1786fb00  and r12, r23, r15
00243c  9300ce04  setlt.u r1, r28, r12
002440  3bb00000  bneq r1, zero, 12
002444  9f8a0b00  addli r21, r23, 0
002448  5b010000  j 8
00244c  979a9b01  or r21, r23, r25
002450  6f4b4100  loads.w r22, 4(r2)
002454  1705fb00  and r10, r22, r15
002458  9300ae04  setlt.u r1, r28, r10
00245c  3bb00000  bneq r1, zero, 12
002460  9f000b00  addli r1, r22, 0
002464  5b010000  j 8
002468  97109b01  or r1, r22, r25
00246c  6f410100  loads.w r2, 0(r2)
002470  9705f100  and r11, r2, r15
002474  130cbe04  setlt.u r24, r28, r11
002478  3b500c00  bneq r24, zero, 20
00247c  1f0c0100  addli r24, r2, 0
002480  9385b904  setlt.u r11, r19, r11
002484  37d00500  beq r11, zero, 20
002488  db040000  j 36
00248c  171c9101  or r24, r2, r25
002490  9385b904  setlt.u r11, r19, r11
002494  3be00500  bneq r11, zero, 24
002498  9b450101  srli r11, r2, 16
00249c  9b851500  andi r11, r11, 1
0024a0  0b11b110  add.s r2, r2, r11
0024a4  0b110111  add.s r2, r2, r16
0024a8  170ca101  and r24, r2, r26
0024ac  1381a904  setlt.u r2, r19, r10
0024b0  bb300100  bneq r2, zero, 44
0024b4  9b400b01  srli r1, r22, 16
0024b8  9b801000  andi r1, r1, 1
0024bc  8b101b10  add.s r1, r22, r1
0024c0  8b900011  add.s r1, r1, r16
0024c4  9780a001  and r1, r1, r26
0024c8  1381c904  setlt.u r2, r19, r12
0024cc  37600100  beq r2, zero, 24
0024d0  13812905  setlt.u r2, r19, r18
0024d4  3b6c01fe  bneq r2, zero, -232
0024d8  5b050000  j 40
0024dc  1381c904  setlt.u r2, r19, r12
0024e0  bb4f01fe  bneq r2, zero, -16
0024e4  1bc10b01  srli r2, r23, 16
0024e8  1b011100  andi r2, r2, 1
0024ec  0b912b10  add.s r2, r23, r2
0024f0  0b110111  add.s r2, r2, r16
0024f4  970aa101  and r21, r2, r26
0024f8  13812905  setlt.u r2, r19, r18
0024fc  bb4b01fe  bneq r2, zero, -272
002500  1bc10801  srli r2, r17, 16
002504  1b011100  andi r2, r2, 1
002508  0b912810  add.s r2, r17, r2
00250c  0b110111  add.s r2, r2, r16
002510  9704a101  and r9, r2, r26
002514  5bdbffff  j -296
002518  80340002  core_id r9
00251c  00200100  mfence { sm }
002520  9f500000  addli r1, zero, 5
002524  b7f014fc  beq r9, r1, -1988
002528  9f600000  addli r1, zero, 6
00252c  bb8814fc  bneq r9, r1, -1504
002530  9f00c000  addli r1, zero, 96
002534  3d000000  xfence
002538  00a00300  mfence { lm, sm, gm }
00253c  b3820028  zext_int2long r[6:7], r1
002540  5b030000  j 24
002544  eb500fff  load.d r[2:3], -16(r30)
002548  eb528ffe  load.d r[6:7], -24(r30)
00254c  93a01204  setlt.ul r1, r[6:7], r[2:3]
002550  a7920200  addli.d r[6:7], r[6:7], 1
002554  b7e60000  beq r1, zero, 440
002558  9f700000  addli r1, zero, 7
00255c  73345ffe  store.d r[6:7], -24(r30)
002560  97b21202  sll.d r[6:7], r[6:7], r1
002564  bbd1b301  bneq r7, r27, 116
002568  b3000028  zext_int2long r[2:3], zero
00256c  5b060000  j 48
002570  9b440501  srli r9, r10, 16
002574  9b841400  andi r9, r9, 1
002578  8b149510  add.s r9, r10, r9
00257c  8b940411  add.s r9, r9, r16
002580  9784a401  and r9, r9, r26
002584  6b558fff  load.d r[11:12], -8(r30)
002588  0b948310  add.s r8, r7, r8
00258c  73609400  stores.w r9, 0(r8)
002590  13a5a004  setlt.ul r10, r[2:3], r[11:12]
002594  a7900000  addli.d r[2:3], r[2:3], 1
002598  b73e05fe  beq r10, zero, -84
00259c  0ba45010  add.ul r[9:10], r[2:3], r[6:7]
0025a0  1b342400  slli r8, r8, 2
0025a4  8b948d10  add.s r9, r27, r8
0025a8  6fc50400  loads.w r10, 0(r9)
0025ac  9705f500  and r11, r10, r15
0025b0  9304be04  setlt.u r9, r28, r11
0025b4  3bd00400  bneq r9, zero, 20
0025b8  9f040500  addli r9, r10, 0
0025bc  9385b904  setlt.u r11, r19, r11
0025c0  3b9f05fe  bneq r11, zero, -60
0025c4  dbf5ffff  j -84
0025c8  97149501  or r9, r10, r25
0025cc  9385b904  setlt.u r11, r19, r11
0025d0  bbde05fe  bneq r11, zero, -76
0025d4  dbf3ffff  j -100
0025d8  33040028  zext_int2long r[9:10], zero
0025dc  db040000  j 36
0025e0  27440400  addli.d r[9:10], r[9:10], 4
0025e4  0b95d310  add.s r10, r7, r13
0025e8  13213400  seteq.d r2, r[9:10], r[4:5]
0025ec  7366e500  stores.w r14, 12(r10)
0025f0  73645501  stores.w r21, 8(r10)
0025f4  73621500  stores.w r1, 4(r10)
0025f8  73608501  stores.w r24, 0(r10)
0025fc  3b2d01fe  bneq r2, zero, -184
002600  8b205410  add.ul r[2:3], r[9:10], r[6:7]
002604  9bb62000  slli r13, r1, 2
002608  0b91dd10  add.s r2, r27, r13
00260c  ef48c100  loads.w r17, 12(r2)
002610  1789f800  and r18, r17, r15
002614  93002e05  setlt.u r1, r28, r18
002618  3bb00000  bneq r1, zero, 12
00261c  1f870800  addli r14, r17, 0
002620  5b010000  j 8
002624  17979801  or r14, r17, r25
002628  ef4b8100  loads.w r23, 8(r2)
00262c  1786fb00  and r12, r23, r15
002630  9300ce04  setlt.u r1, r28, r12
002634  3bb00000  bneq r1, zero, 12
002638  9f8a0b00  addli r21, r23, 0
00263c  5b010000  j 8
002640  979a9b01  or r21, r23, r25
002644  6f4b4100  loads.w r22, 4(r2)
002648  1705fb00  and r10, r22, r15
00264c  9300ae04  setlt.u r1, r28, r10
002650  3bb00000  bneq r1, zero, 12
002654  9f000b00  addli r1, r22, 0
002658  5b010000  j 8
00265c  97109b01  or r1, r22, r25
002660  6f410100  loads.w r2, 0(r2)
002664  9705f100  and r11, r2, r15
002668  130cbe04  setlt.u r24, r28, r11
00266c  3b500c00  bneq r24, zero, 20
002670  1f0c0100  addli r24, r2, 0
002674  9385b904  setlt.u r11, r19, r11
002678  37d00500  beq r11, zero, 20
00267c  db040000  j 36
002680  171c9101  or r24, r2, r25
002684  9385b904  setlt.u r11, r19, r11
002688  3be00500  bneq r11, zero, 24
00268c  9b450101  srli r11, r2, 16
002690  9b851500  andi r11, r11, 1
002694  0b11b110  add.s r2, r2, r11
002698  0b110111  add.s r2, r2, r16
00269c  170ca101  and r24, r2, r26
0026a0  1381a904  setlt.u r2, r19, r10
0026a4  bb300100  bneq r2, zero, 44
0026a8  9b400b01  srli r1, r22, 16
0026ac  9b801000  andi r1, r1, 1
0026b0  8b101b10  add.s r1, r22, r1
0026b4  8b900011  add.s r1, r1, r16
0026b8  9780a001  and r1, r1, r26
0026bc  1381c904  setlt.u r2, r19, r12
0026c0  37600100  beq r2, zero, 24
0026c4  13812905  setlt.u r2, r19, r18
0026c8  3b6c01fe  bneq r2, zero, -232
0026cc  5b050000  j 40
0026d0  1381c904  setlt.u r2, r19, r12
0026d4  bb4f01fe  bneq r2, zero, -16
0026d8  1bc10b01  srli r2, r23, 16
0026dc  1b011100  andi r2, r2, 1
0026e0  0b912b10  add.s r2, r23, r2
0026e4  0b110111  add.s r2, r2, r16
0026e8  970aa101  and r21, r2, r26
0026ec  13812905  setlt.u r2, r19, r18
0026f0  bb4b01fe  bneq r2, zero, -272
0026f4  1bc10801  srli r2, r17, 16
0026f8  1b011100  andi r2, r2, 1
0026fc  0b912810  add.s r2, r17, r2
002700  0b110111  add.s r2, r2, r16
002704  1707a101  and r14, r2, r26
002708  5bdbffff  j -296
00270c  80340002  core_id r9
002710  00200100  mfence { sm }
002714  e3405fff  loadli.w r1,  -84(r30)
002718  b7a70000  beq r1, zero, 488
00271c  9f00e000  addli r1, zero, 112
002720  3d000000  xfence
002724  00a00300  mfence { lm, sm, gm }
002728  b3820028  zext_int2long r[6:7], r1
00272c  5b030000  j 24
002730  eb508fff  load.d r[2:3], -8(r30)
002734  eb520fff  load.d r[6:7], -16(r30)
002738  93a01204  setlt.ul r1, r[6:7], r[2:3]
00273c  a7920200  addli.d r[6:7], r[6:7], 1
002740  b7e60000  beq r1, zero, 440
002744  9f700000  addli r1, zero, 7
002748  73385ffe  store.d r[6:7], -16(r30)
00274c  97b21202  sll.d r[6:7], r[6:7], r1
002750  bbd1b301  bneq r7, r27, 116
002754  b3000028  zext_int2long r[2:3], zero
002758  5b060000  j 48
00275c  9b440501  srli r9, r10, 16
002760  9b841400  andi r9, r9, 1
002764  8b149510  add.s r9, r10, r9
002768  8b940411  add.s r9, r9, r16
00276c  9784a401  and r9, r9, r26
002770  6b558fff  load.d r[11:12], -8(r30)
002774  0b948310  add.s r8, r7, r8
002778  73609400  stores.w r9, 0(r8)
00277c  13a5a004  setlt.ul r10, r[2:3], r[11:12]
002780  a7900000  addli.d r[2:3], r[2:3], 1
002784  b73e05fe  beq r10, zero, -84
002788  0ba45010  add.ul r[9:10], r[2:3], r[6:7]
00278c  1b342400  slli r8, r8, 2
002790  8b948d10  add.s r9, r27, r8
002794  6fc50400  loads.w r10, 0(r9)
002798  9705f500  and r11, r10, r15
00279c  9304be04  setlt.u r9, r28, r11
0027a0  3bd00400  bneq r9, zero, 20
0027a4  9f040500  addli r9, r10, 0
0027a8  9385b904  setlt.u r11, r19, r11
0027ac  3b9f05fe  bneq r11, zero, -60
0027b0  dbf5ffff  j -84
0027b4  97149501  or r9, r10, r25
0027b8  9385b904  setlt.u r11, r19, r11
0027bc  bbde05fe  bneq r11, zero, -76
0027c0  dbf3ffff  j -100
0027c4  33040028  zext_int2long r[9:10], zero
0027c8  db040000  j 36
0027cc  27440400  addli.d r[9:10], r[9:10], 4
0027d0  0b95d310  add.s r10, r7, r13
0027d4  13213400  seteq.d r2, r[9:10], r[4:5]
0027d8  7366e500  stores.w r14, 12(r10)
0027dc  73645501  stores.w r21, 8(r10)
0027e0  73621500  stores.w r1, 4(r10)
0027e4  73608501  stores.w r24, 0(r10)
0027e8  3b2d01fe  bneq r2, zero, -184
0027ec  8b205410  add.ul r[2:3], r[9:10], r[6:7]
0027f0  9bb62000  slli r13, r1, 2
0027f4  0b91dd10  add.s r2, r27, r13
0027f8  ef48c100  loads.w r17, 12(r2)
0027fc  1789f800  and r18, r17, r15
002800  93002e05  setlt.u r1, r28, r18
002804  3bb00000  bneq r1, zero, 12
002808  1f870800  addli r14, r17, 0
00280c  5b010000  j 8
002810  17979801  or r14, r17, r25
002814  ef4b8100  loads.w r23, 8(r2)
002818  1786fb00  and r12, r23, r15
00281c  9300ce04  setlt.u r1, r28, r12
002820  3bb00000  bneq r1, zero, 12
002824  9f8a0b00  addli r21, r23, 0
002828  5b010000  j 8
00282c  979a9b01  or r21, r23, r25
002830  6f4b4100  loads.w r22, 4(r2)
002834  1705fb00  and r10, r22, r15
002838  9300ae04  setlt.u r1, r28, r10
00283c  3bb00000  bneq r1, zero, 12
002840  9f000b00  addli r1, r22, 0
002844  5b010000  j 8
002848  97109b01  or r1, r22, r25
00284c  6f410100  loads.w r2, 0(r2)
002850  9705f100  and r11, r2, r15
002854  130cbe04  setlt.u r24, r28, r11
002858  3b500c00  bneq r24, zero, 20
00285c  1f0c0100  addli r24, r2, 0
002860  9385b904  setlt.u r11, r19, r11
002864  37d00500  beq r11, zero, 20
002868  db040000  j 36
00286c  171c9101  or r24, r2, r25
002870  9385b904  setlt.u r11, r19, r11
002874  3be00500  bneq r11, zero, 24
002878  9b450101  srli r11, r2, 16
00287c  9b851500  andi r11, r11, 1
002880  0b11b110  add.s r2, r2, r11
002884  0b110111  add.s r2, r2, r16
002888  170ca101  and r24, r2, r26
00288c  1381a904  setlt.u r2, r19, r10
002890  bb300100  bneq r2, zero, 44
002894  9b400b01  srli r1, r22, 16
002898  9b801000  andi r1, r1, 1
00289c  8b101b10  add.s r1, r22, r1
0028a0  8b900011  add.s r1, r1, r16
0028a4  9780a001  and r1, r1, r26
0028a8  1381c904  setlt.u r2, r19, r12
0028ac  37600100  beq r2, zero, 24
0028b0  13812905  setlt.u r2, r19, r18
0028b4  3b6c01fe  bneq r2, zero, -232
0028b8  5b050000  j 40
0028bc  1381c904  setlt.u r2, r19, r12
0028c0  bb4f01fe  bneq r2, zero, -16
0028c4  1bc10b01  srli r2, r23, 16
0028c8  1b011100  andi r2, r2, 1
0028cc  0b912b10  add.s r2, r23, r2
0028d0  0b110111  add.s r2, r2, r16
0028d4  970aa101  and r21, r2, r26
0028d8  13812905  setlt.u r2, r19, r18
0028dc  bb4b01fe  bneq r2, zero, -272
0028e0  1bc10801  srli r2, r17, 16
0028e4  1b011100  andi r2, r2, 1
0028e8  0b912810  add.s r2, r17, r2
0028ec  0b110111  add.s r2, r2, r16
0028f0  1707a101  and r14, r2, r26
0028f4  5bdbffff  j -296
0028f8  80340002  core_id r9
0028fc  00200100  mfence { sm }
002900  9f70f001  addli r1, zero, 255
002904  1f370000  addli r14, zero, 3
002908  80a20004  csr_set csr5, r1
00290c  00e00200  sync_core
002910  b7a4e4ec  beq r9, r14, -9944
002914  9f080001  addli r17, zero, 128
002918  1f092000  addli r18, zero, 16
00291c  9f0a1000  addli r21, zero, 8
002920  1f7b0000  addli r22, zero, 7
002924  9f6b0000  addli r23, zero, 6
002928  1f6c1000  addli r24, zero, 14
00292c  9f2d0000  addli r27, zero, 2
002930  bbc404ec  bneq r9, zero, -9936
002934  e340effe  loadli.w r1,  -140(r30)
002938  eb520ff8  load.d r[6:7], -128(r30)
00293c  9f132000  addli r7, zero, 17
002940  1f312000  addli r2, zero, 19
002944  1f550000  addli r10, zero, 5
002948  9f150000  addli r11, zero, 1
00294c  6b568f01  load.d r[13:14], 24(r30)
002950  7d900300  xwait r7, 0
002954  eb530ffb  load.d r[8:9], -80(r30)
002958  1d000500  lock zero, r10
00295c  9bb07000  slli r1, r1, 7
002960  97b22202  sll.d r[6:7], r[6:7], r2
002964  95850500  dma_cfg r11, r11, zero, 0
002968  b3900028  sext_int2long r[2:3], r1
00296c  8b225610  add.ul r[6:7], r[13:14], r[6:7]
002970  8bb37040  min.sl r[8:9], r[2:3], r[8:9]
002974  a7830301  addli.d r[8:9], r[8:9], 128
002978  8bb31348  max.sl r[8:9], r[8:9], r[2:3]
00297c  8bb01318  sub.sl r[2:3], r[8:9], r[2:3]
002980  eb538ff7  load.d r[8:9], -136(r30)
002984  15800502  dma_cfg zero, r11, zero, 1
002988  8bb03040  min.sl r[2:3], r[2:3], r[4:5]
00298c  ab010600  lui r3, 96
002990  8ba27210  add.ul r[6:7], r[6:7], r[8:9]
002994  9f038000  addli r7, zero, 64
002998  9b910164  ori r3, r3, 1600
00299c  15030004  dma_cfg r6, zero, zero, 2
0029a0  6b568ff8  load.d r[13:14], -120(r30)
0029a4  8b113a10  add.s r3, r20, r3
0029a8  95827106  dma_cfg r5, r3, r7, 3
0029ac  9f020020  addli r5, zero, 4096
0029b0  1f723600  addli r4, r12, 31
0029b4  9b415200  srli r3, r4, 5
0029b8  1b321600  slli r4, r12, 1
0029bc  95833808  dma_cfg r7, r17, r3, 4
0029c0  9b01e203  andi r3, r4, 62
0029c4  1f020004  addli r4, zero, 512
0029c8  9502120a  dma_cfg r5, r4, r1, 5
0029cc  9f202000  addli r1, zero, 18
0029d0  15003010  dma_cfg zero, zero, r3, 8
0029d4  35000000  dma_run zero
0029d8  1500b00a  dma_cfg zero, zero, r11, 5
0029dc  15000010  dma_cfg zero, zero, zero, 8
0029e0  1d100500  unlock r10
0029e4  5b0ffbff  j -10120
0029e8  1f430000  addli r6, zero, 4
0029ec  1f020000  addli r4, zero, 0
0029f0  1f110000  addli r2, zero, 1
0029f4  9f110000  addli r3, zero, 1
0029f8  9f038000  addli r7, zero, 64
0029fc  9f321000  addli r5, zero, 11
002a00  7d100300  xwait r6, 0
002a04  7d900a00  xwait r21, 0
002a08  7d900200  xwait r5, 0
002a0c  9b32e200  slli r5, r4, 14
002a10  1b328200  slli r4, r4, 8
002a14  1d000100  lock zero, r2
002a18  89831301  mm_cfg r7, r7, r17, 0
002a1c  97921200  or r5, r5, r1
002a20  17124201  or r4, r4, r20
002a24  09032304  mm_cfg r6, r6, r2, 2
002a28  29825010  mm r4, r1, r5, 8
002a2c  9b821100  andi r5, r3, 1
002a30  1f120000  addli r4, zero, 1
002a34  9f010000  addli r3, zero, 0
002a38  1d100100  unlock r2
002a3c  3bcf02fe  bneq r5, zero, -48
002a40  9f500000  addli r1, zero, 5
002a44  e74a0ffe  storeli.w zero, -84(r30)
002a48  7d800000  xsignal r1, 0
002a4c  9f101000  addli r1, zero, 9
002a50  7d800000  xsignal r1, 0
002a54  9f100000  addli r1, zero, 1
002a58  e70a1ffe  storeli.w r1, -88(r30)
002a5c  9f201000  addli r1, zero, 10
002a60  7d800000  xsignal r1, 0
002a64  eb520ffb  load.d r[6:7], -80(r30)
002a68  bbd9e4ee  bneq r9, r14, -8588
002a6c  dbccfbff  j -8604
002a70  e70a0ffe  storeli.w zero, -88(r30)
002a74  e74a0ffe  storeli.w zero, -84(r30)
002a78  37e9e4ee  beq r9, r14, -8616
002a7c  5bccfbff  j -8608
002a80  7d000000  xsignal zero, 0
002a84  bbe00400  bneq r9, zero, 56
002a88  9f200000  addli r1, zero, 2
002a8c  7d100000  xwait zero, 0
002a90  7d100000  xwait zero, 0
002a94  7d100000  xwait zero, 0
002a98  7d100000  xwait zero, 0
002a9c  7d100000  xwait zero, 0
002aa0  7d100000  xwait zero, 0
002aa4  7d100000  xwait zero, 0
002aa8  7d100000  xwait zero, 0
002aac  1d800000  lock zero, r1
002ab0  0d000020  ew_cfg zero, zero, zero, 16
002ab4  1d900000  unlock r1
002ab8  7d400000  xsignal_mode_cfg zero
002abc  9f8e6e01  addli sp, sp, 176
002ac0  00a00300  mfence { lm, sm, gm }
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
002cfc  00100000  exit
002d00  00100000  exit
002d04  00100000  exit
