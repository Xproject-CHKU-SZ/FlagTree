; SHA-256 ee797bcda50fd1d88fc9e90c5f104568487658e8a68cc9b04af657fc708984e8
; P800 SDNN · XTDK LLVM 19 · 1917 / 1917 words decoded
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
00005c  9f494000  addli r19, zero, 36
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
0000b4  9f8ecefe  addli sp, sp, -160
0000b8  9f100000  addli r1, zero, 1
0000bc  803a0002  core_id r21
0000c0  1f8fce00  addli r30, sp, 96
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37e00a00  beq r21, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5b140000  j 160
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
000118  7d800000  xsignal r1, 0
00011c  7d000100  xsignal r2, 0
000120  7d000100  xsignal r2, 0
000124  7d000100  xsignal r2, 0
000128  7d000100  xsignal r2, 0
00012c  9f300000  addli r1, zero, 3
000130  1f111000  addli r2, zero, 9
000134  7d800000  xsignal r1, 0
000138  7d800000  xsignal r1, 0
00013c  7d800000  xsignal r1, 0
000140  7d800000  xsignal r1, 0
000144  7d000100  xsignal r2, 0
000148  7d000100  xsignal r2, 0
00014c  7d000100  xsignal r2, 0
000150  7d000100  xsignal r2, 0
000154  9f700000  addli r1, zero, 7
000158  1f511000  addli r2, zero, 13
00015c  7d800000  xsignal r1, 0
000160  7d800000  xsignal r1, 0
000164  7d800000  xsignal r1, 0
000168  7d800000  xsignal r1, 0
00016c  7d000100  xsignal r2, 0
000170  7d000100  xsignal r2, 0
000174  7d000100  xsignal r2, 0
000178  7d000100  xsignal r2, 0
00017c  e3003f00  loadli.w r1,  24(r30)
000180  63413f00  loadli.w r2,  28(r30)
000184  00d20002  load_param_i r4, 1
000188  e3014f00  loadli.w r3,  32(r30)
00018c  8b101120  mul.s r1, r2, r1
000190  1f010200  addli r2, r4, 0
000194  0b913050  fmac.s r2, r1, r3
000198  8b913020  mul.s r3, r1, r3
00019c  1f71f1ff  addli r2, r2, -1
0001a0  0b114130  div.s r2, r2, r4
0001a4  00520002  load_param_i r4, 0
0001a8  8b104120  mul.s r1, r2, r4
0001ac  0b114150  fmac.s r2, r2, r4
0001b0  0b113140  min.s r2, r2, r3
0001b4  cb66110c  ble.s r2, r1, 6584
0001b8  33110128  sext_int2long r[3:4], r2
0001bc  339b0028  sext_int2long r[23:24], r1
0001c0  1f460000  addli r12, zero, 4
0001c4  1f0a8000  addli r20, zero, 64
0001c8  1f7c0000  addli r24, zero, 7
0001cc  1f690000  addli r18, zero, 6
0001d0  9f591000  addli r19, zero, 13
0001d4  9f1c0000  addli r25, zero, 1
0001d8  2b0e807f  lui r28, 522240
0001dc  2b02ffff  lui r4, 1048560
0001e0  73382ffa  store.d r[3:4], -80(r30)
0001e4  1f71f00f  addli r2, zero, 2047
0001e8  ab80ffff  lui r1, 1048568
0001ec  73341ffa  store.d r[2:3], -88(r30)
0001f0  abf0ff7f  lui r1, 524287
0001f4  2bf17f7f  lui r2, 522239
0001f8  9b96f0ff  ori r13, r1, 4095
0001fc  ab700000  lui r1, 7
000200  9b18f1ff  ori r17, r2, 4095
000204  1b97f0ff  ori r14, r1, 4095
000208  b3000028  zext_int2long r[2:3], zero
00020c  73301ffa  store.d r[2:3], -96(r30)
000210  1f010000  addli r2, zero, 0
000214  5b080000  j 64
000218  9f301000  addli r1, zero, 11
00021c  7d800000  xsignal r1, 0
000220  9f401000  addli r1, zero, 12
000224  7d800000  xsignal r1, 0
000228  6b5b8ffd  load.d r[23:24], -40(r30)
00022c  eb500ffb  load.d r[2:3], -80(r30)
000230  271b0b00  addli.d r[23:24], r[23:24], 1
000234  1f460000  addli r12, zero, 4
000238  1f0a8000  addli r20, zero, 64
00023c  1f690000  addli r18, zero, 6
000240  9f591000  addli r19, zero, 13
000244  93301b04  setlt.sl r1, r[23:24], r[2:3]
000248  6341cfff  loadli.w r2,  -28(r30)
00024c  1f110100  addli r2, r2, 1
000250  37f4000c  beq r1, zero, 6428
000254  e3004f00  loadli.w r1,  32(r30)
000258  674e2ffe  storeli.w r2, -28(r30)
00025c  63413f00  loadli.w r2,  28(r30)
000260  9f021000  addli r5, zero, 8
000264  8b101b30  div.s r1, r22, r1
000268  0b912030  div.s r2, r1, r2
00026c  8b104131  div.s r1, r2, r20
000270  e70f1ffe  storeli.w r1, -8(r30)
000274  9bb03000  slli r1, r1, 3
000278  8b911218  sub.s r3, r5, r1
00027c  8b945140  min.s r9, r3, r5
000280  8b119138  mod.s r3, r2, r9
000284  8b911110  add.s r3, r3, r1
000288  93003c04  setlt.u r1, r24, r3
00028c  b3820128  zext_int2long r[6:7], r3
000290  e74b3ffe  storeli.w r3, -68(r30)
000294  9f411000  addli r3, zero, 12
000298  17b53202  sll.d r[11:12], r[6:7], r3
00029c  73305ffc  store.d r[6:7], -64(r30)
0002a0  3bb00000  bneq r1, zero, 12
0002a4  eb570ffa  load.d r[16:17], -96(r30)
0002a8  db010000  j 12
0002ac  eb528ffa  load.d r[6:7], -88(r30)
0002b0  97075502  and.d r[16:17], r[11:12], r[6:7]
0002b4  634dcfff  loadli.w r26,  -28(r30)
0002b8  9f018003  addli r3, zero, 448
0002bc  b3830128  zext_int2long r[8:9], r3
0002c0  ab010200  lui r3, 32
0002c4  0b13cd38  mod.s r6, r26, r12
0002c8  73387ffe  store.d r[8:9], -16(r30)
0002cc  9b30e300  slli r1, r6, 14
0002d0  8b9d3010  add.s r27, r1, r3
0002d4  3bcb2a01  bneq r21, r18, 720
0002d8  0b35f518  sub.sl r[11:12], r[11:12], r[16:17]
0002dc  9f5c1000  addli r25, zero, 13
0002e0  9f620000  addli r5, zero, 6
0002e4  17552503  sra.d r[11:12], r[11:12], r18
0002e8  6b590ffc  load.d r[19:20], -64(r30)
0002ec  8b377540  min.sl r[16:17], r[11:12], r[8:9]
0002f0  17399903  sll.d r[19:20], r[19:20], r25
0002f4  0bb5a718  sub.sl r[11:12], r[16:17], r[11:12]
0002f8  eb570f00  load.d r[16:17], 0(r30)
0002fc  1f058500  addli r10, r10, 64
000300  9f350000  addli r11, zero, 3
000304  0ba92711  add.ul r[19:20], r[16:17], r[19:20]
000308  7d900500  xwait r11, 0
00030c  bf94a501  blt.s r11, r26, 292
000310  9f570000  addli r15, zero, 5
000314  1f180000  addli r16, zero, 1
000318  1f2d0000  addli r26, zero, 2
00031c  9f011000  addli r3, zero, 8
000320  1d800700  lock zero, r15
000324  15000014  dma_cfg zero, zero, zero, 10
000328  15000015  dma_cfg zero, zero, r16, 10
00032c  1500a015  dma_cfg zero, zero, r26, 10
000330  1500b014  dma_cfg zero, zero, r11, 10
000334  1500c014  dma_cfg zero, zero, r12, 10
000338  1500f014  dma_cfg zero, zero, r15, 10
00033c  15005014  dma_cfg zero, zero, r5, 10
000340  15008015  dma_cfg zero, zero, r24, 10
000344  15003014  dma_cfg zero, zero, r3, 10
000348  9f111000  addli r3, zero, 9
00034c  15003014  dma_cfg zero, zero, r3, 10
000350  9f211000  addli r3, zero, 10
000354  15003014  dma_cfg zero, zero, r3, 10
000358  9f311000  addli r3, zero, 11
00035c  15003014  dma_cfg zero, zero, r3, 10
000360  9f411000  addli r3, zero, 12
000364  15003014  dma_cfg zero, zero, r3, 10
000368  9f611000  addli r3, zero, 14
00036c  15009015  dma_cfg zero, zero, r25, 10
000370  15003014  dma_cfg zero, zero, r3, 10
000374  9f711000  addli r3, zero, 15
000378  15003014  dma_cfg zero, zero, r3, 10
00037c  9f012000  addli r3, zero, 16
000380  15003014  dma_cfg zero, zero, r3, 10
000384  9f112000  addli r3, zero, 17
000388  15003014  dma_cfg zero, zero, r3, 10
00038c  9f212000  addli r3, zero, 18
000390  15003014  dma_cfg zero, zero, r3, 10
000394  9f312000  addli r3, zero, 19
000398  15003014  dma_cfg zero, zero, r3, 10
00039c  9f412000  addli r3, zero, 20
0003a0  15003014  dma_cfg zero, zero, r3, 10
0003a4  9f512000  addli r3, zero, 21
0003a8  15003014  dma_cfg zero, zero, r3, 10
0003ac  9f612000  addli r3, zero, 22
0003b0  15003014  dma_cfg zero, zero, r3, 10
0003b4  9f712000  addli r3, zero, 23
0003b8  15003014  dma_cfg zero, zero, r3, 10
0003bc  9f013000  addli r3, zero, 24
0003c0  15003014  dma_cfg zero, zero, r3, 10
0003c4  9f113000  addli r3, zero, 25
0003c8  15003014  dma_cfg zero, zero, r3, 10
0003cc  9f213000  addli r3, zero, 26
0003d0  15003014  dma_cfg zero, zero, r3, 10
0003d4  9f313000  addli r3, zero, 27
0003d8  15003014  dma_cfg zero, zero, r3, 10
0003dc  9f413000  addli r3, zero, 28
0003e0  15003014  dma_cfg zero, zero, r3, 10
0003e4  9f513000  addli r3, zero, 29
0003e8  15003014  dma_cfg zero, zero, r3, 10
0003ec  9f613000  addli r3, zero, 30
0003f0  15003014  dma_cfg zero, zero, r3, 10
0003f4  9f713000  addli r3, zero, 31
0003f8  15003014  dma_cfg zero, zero, r3, 10
0003fc  9f010001  addli r3, zero, 128
000400  15080800  dma_cfg r16, r16, zero, 0
000404  15080002  dma_cfg r16, zero, zero, 1
000408  15000004  dma_cfg zero, zero, zero, 2
00040c  950d4007  dma_cfg r27, zero, r20, 3
000410  9501a009  dma_cfg r3, zero, r26, 4
000414  9f010002  addli r3, zero, 256
000418  9501400b  dma_cfg r3, zero, r20, 5
00041c  15000010  dma_cfg zero, zero, zero, 8
000420  35000000  dma_run zero
000424  1500000b  dma_cfg zero, zero, r16, 5
000428  15000010  dma_cfg zero, zero, zero, 8
00042c  1d900700  unlock r15
000430  ab010200  lui r3, 32
000434  e74c0ffe  storeli.w zero, -52(r30)
000438  1f180000  addli r16, zero, 1
00043c  1f0d0002  addli r26, zero, 256
000440  9f570000  addli r15, zero, 5
000444  1d000600  lock zero, r12
000448  9b910104  ori r3, r3, 64
00044c  15080800  dma_cfg r16, r16, zero, 0
000450  15800904  dma_cfg zero, r19, zero, 2
000454  8b913010  add.s r3, r1, r3
000458  95014907  dma_cfg r3, r18, r20, 3
00045c  1f290000  addli r18, zero, 2
000460  9f090001  addli r19, zero, 128
000464  9f011000  addli r3, zero, 8
000468  95092a09  dma_cfg r19, r20, r18, 4
00046c  158da90a  dma_cfg r26, r19, r10, 5
000470  15000010  dma_cfg zero, zero, zero, 8
000474  35000000  dma_run zero
000478  1500000b  dma_cfg zero, zero, r16, 5
00047c  15000010  dma_cfg zero, zero, zero, 8
000480  1d100600  unlock r12
000484  1d800700  lock zero, r15
000488  15000014  dma_cfg zero, zero, zero, 10
00048c  15000015  dma_cfg zero, zero, r16, 10
000490  15002015  dma_cfg zero, zero, r18, 10
000494  1500b014  dma_cfg zero, zero, r11, 10
000498  9f250000  addli r11, zero, 2
00049c  1500c014  dma_cfg zero, zero, r12, 10
0004a0  1500f014  dma_cfg zero, zero, r15, 10
0004a4  15005014  dma_cfg zero, zero, r5, 10
0004a8  15008015  dma_cfg zero, zero, r24, 10
0004ac  15003014  dma_cfg zero, zero, r3, 10
0004b0  9f111000  addli r3, zero, 9
0004b4  15003014  dma_cfg zero, zero, r3, 10
0004b8  9f211000  addli r3, zero, 10
0004bc  15003014  dma_cfg zero, zero, r3, 10
0004c0  9f311000  addli r3, zero, 11
0004c4  15003014  dma_cfg zero, zero, r3, 10
0004c8  9f411000  addli r3, zero, 12
0004cc  15003014  dma_cfg zero, zero, r3, 10
0004d0  9f611000  addli r3, zero, 14
0004d4  15009015  dma_cfg zero, zero, r25, 10
0004d8  9f1c0000  addli r25, zero, 1
0004dc  15003014  dma_cfg zero, zero, r3, 10
0004e0  9f711000  addli r3, zero, 15
0004e4  15003014  dma_cfg zero, zero, r3, 10
0004e8  9f012000  addli r3, zero, 16
0004ec  15003014  dma_cfg zero, zero, r3, 10
0004f0  9f112000  addli r3, zero, 17
0004f4  15003014  dma_cfg zero, zero, r3, 10
0004f8  9f212000  addli r3, zero, 18
0004fc  15003014  dma_cfg zero, zero, r3, 10
000500  9f312000  addli r3, zero, 19
000504  15003014  dma_cfg zero, zero, r3, 10
000508  9f412000  addli r3, zero, 20
00050c  15003014  dma_cfg zero, zero, r3, 10
000510  9f512000  addli r3, zero, 21
000514  15003014  dma_cfg zero, zero, r3, 10
000518  9f612000  addli r3, zero, 22
00051c  15003014  dma_cfg zero, zero, r3, 10
000520  9f712000  addli r3, zero, 23
000524  15003014  dma_cfg zero, zero, r3, 10
000528  9f013000  addli r3, zero, 24
00052c  15003014  dma_cfg zero, zero, r3, 10
000530  9f113000  addli r3, zero, 25
000534  15003014  dma_cfg zero, zero, r3, 10
000538  9f213000  addli r3, zero, 26
00053c  15003014  dma_cfg zero, zero, r3, 10
000540  9f313000  addli r3, zero, 27
000544  15003014  dma_cfg zero, zero, r3, 10
000548  9f413000  addli r3, zero, 28
00054c  15003014  dma_cfg zero, zero, r3, 10
000550  9f513000  addli r3, zero, 29
000554  15003014  dma_cfg zero, zero, r3, 10
000558  9f613000  addli r3, zero, 30
00055c  15003014  dma_cfg zero, zero, r3, 10
000560  9f713000  addli r3, zero, 31
000564  15003014  dma_cfg zero, zero, r3, 10
000568  958c0c00  dma_cfg r25, r25, zero, 0
00056c  950c0002  dma_cfg r25, zero, zero, 1
000570  15000004  dma_cfg zero, zero, zero, 2
000574  950d4007  dma_cfg r27, zero, r20, 3
000578  95092009  dma_cfg r19, zero, r18, 4
00057c  9f591000  addli r19, zero, 13
000580  150da00a  dma_cfg r26, zero, r10, 5
000584  15000010  dma_cfg zero, zero, zero, 8
000588  35000000  dma_run zero
00058c  1500900b  dma_cfg zero, zero, r25, 5
000590  15000010  dma_cfg zero, zero, zero, 8
000594  1d900700  unlock r15
000598  7d000900  xsignal r18, 0
00059c  1f690000  addli r18, zero, 6
0005a0  5b0b0000  j 88
0005a4  9f220000  addli r5, zero, 2
0005a8  3ba15a00  bneq r21, r5, 72
0005ac  9f510000  addli r3, zero, 5
0005b0  7d900200  xwait r5, 0
0005b4  9f250000  addli r11, zero, 2
0005b8  7d900100  xwait r3, 0
0005bc  1d000000  lock zero, zero
0005c0  9f310000  addli r3, zero, 3
0005c4  81020000  ds_cfg r5, zero, 0
0005c8  010a0002  ds_cfg r20, zero, 1
0005cc  010a001c  ds_cfg r20, zero, 14
0005d0  010a001a  ds_cfg r20, zero, 13
0005d4  a1904d03  shuffle_batch r1, r27, r20, 1
0005d8  1d100000  unlock zero
0005dc  7d800100  xsignal r3, 0
0005e0  9f110000  addli r3, zero, 1
0005e4  e74c3ffe  storeli.w r3, -52(r30)
0005e8  7d000600  xsignal r12, 0
0005ec  db010000  j 12
0005f0  9f250000  addli r11, zero, 2
0005f4  e74c0ffe  storeli.w zero, -52(r30)
0005f8  e301ffff  loadli.w r3,  -8(r30)
0005fc  1b35f300  slli r10, r6, 15
000600  733c6ffd  store.d r[23:24], -40(r30)
000604  9bb16100  slli r3, r3, 6
000608  0b113118  sub.s r2, r2, r3
00060c  0b119130  div.s r2, r2, r9
000610  e70b2ffe  storeli.w r2, -72(r30)
000614  33010128  zext_int2long r[3:4], r2
000618  97328103  sll.d r[6:7], r[3:4], r24
00061c  2b010300  lui r2, 48
000620  0b112510  add.s r2, r10, r2
000624  17b49203  sll.d r[9:10], r[6:7], r25
000628  3bfa9a01  bneq r21, r25, 668
00062c  eb528f00  load.d r[6:7], 8(r30)
000630  7d100c00  xwait r24, 0
000634  e340cfff  loadli.w r1,  -28(r30)
000638  9f310000  addli r3, zero, 3
00063c  8ba28210  add.ul r[6:7], r[6:7], r[9:10]
000640  3ff41100  blt.s r3, r1, 284
000644  9f530000  addli r7, zero, 5
000648  9f001000  addli r1, zero, 8
00064c  1d800300  lock zero, r7
000650  15000014  dma_cfg zero, zero, zero, 10
000654  15009015  dma_cfg zero, zero, r25, 10
000658  1500b014  dma_cfg zero, zero, r11, 10
00065c  15003014  dma_cfg zero, zero, r3, 10
000660  1500c014  dma_cfg zero, zero, r12, 10
000664  15007014  dma_cfg zero, zero, r7, 10
000668  15002015  dma_cfg zero, zero, r18, 10
00066c  15008015  dma_cfg zero, zero, r24, 10
000670  15001014  dma_cfg zero, zero, r1, 10
000674  9f101000  addli r1, zero, 9
000678  15001014  dma_cfg zero, zero, r1, 10
00067c  9f201000  addli r1, zero, 10
000680  15001014  dma_cfg zero, zero, r1, 10
000684  9f301000  addli r1, zero, 11
000688  15001014  dma_cfg zero, zero, r1, 10
00068c  9f401000  addli r1, zero, 12
000690  15001014  dma_cfg zero, zero, r1, 10
000694  9f601000  addli r1, zero, 14
000698  15003015  dma_cfg zero, zero, r19, 10
00069c  15001014  dma_cfg zero, zero, r1, 10
0006a0  9f701000  addli r1, zero, 15
0006a4  15001014  dma_cfg zero, zero, r1, 10
0006a8  9f002000  addli r1, zero, 16
0006ac  15001014  dma_cfg zero, zero, r1, 10
0006b0  9f102000  addli r1, zero, 17
0006b4  15001014  dma_cfg zero, zero, r1, 10
0006b8  9f202000  addli r1, zero, 18
0006bc  15001014  dma_cfg zero, zero, r1, 10
0006c0  9f302000  addli r1, zero, 19
0006c4  15001014  dma_cfg zero, zero, r1, 10
0006c8  9f402000  addli r1, zero, 20
0006cc  15001014  dma_cfg zero, zero, r1, 10
0006d0  9f502000  addli r1, zero, 21
0006d4  15001014  dma_cfg zero, zero, r1, 10
0006d8  9f602000  addli r1, zero, 22
0006dc  15001014  dma_cfg zero, zero, r1, 10
0006e0  9f702000  addli r1, zero, 23
0006e4  15001014  dma_cfg zero, zero, r1, 10
0006e8  9f003000  addli r1, zero, 24
0006ec  15001014  dma_cfg zero, zero, r1, 10
0006f0  9f103000  addli r1, zero, 25
0006f4  15001014  dma_cfg zero, zero, r1, 10
0006f8  9f203000  addli r1, zero, 26
0006fc  15001014  dma_cfg zero, zero, r1, 10
000700  9f303000  addli r1, zero, 27
000704  15001014  dma_cfg zero, zero, r1, 10
000708  9f403000  addli r1, zero, 28
00070c  15001014  dma_cfg zero, zero, r1, 10
000710  9f503000  addli r1, zero, 29
000714  15001014  dma_cfg zero, zero, r1, 10
000718  9f603000  addli r1, zero, 30
00071c  15001014  dma_cfg zero, zero, r1, 10
000720  9f703000  addli r1, zero, 31
000724  15001014  dma_cfg zero, zero, r1, 10
000728  9f000001  addli r1, zero, 128
00072c  958c0c00  dma_cfg r25, r25, zero, 0
000730  950c0002  dma_cfg r25, zero, zero, 1
000734  15000004  dma_cfg zero, zero, zero, 2
000738  15014007  dma_cfg r2, zero, r20, 3
00073c  9500c008  dma_cfg r1, zero, r12, 4
000740  9f000004  addli r1, zero, 512
000744  9500400b  dma_cfg r1, zero, r20, 5
000748  15000010  dma_cfg zero, zero, zero, 8
00074c  35000000  dma_run zero
000750  1500900b  dma_cfg zero, zero, r25, 5
000754  15000010  dma_cfg zero, zero, zero, 8
000758  1d900300  unlock r7
00075c  ab000300  lui r1, 48
000760  674d0ffe  storeli.w zero, -44(r30)
000764  670d0ffe  storeli.w zero, -48(r30)
000768  1d000600  lock zero, r12
00076c  9b900004  ori r1, r1, 64
000770  958c0c00  dma_cfg r25, r25, zero, 0
000774  15000304  dma_cfg zero, r6, zero, 2
000778  8b101510  add.s r1, r10, r1
00077c  95804207  dma_cfg r1, r5, r20, 3
000780  9f000001  addli r1, zero, 128
000784  1f030004  addli r6, zero, 512
000788  9f520000  addli r5, zero, 5
00078c  9500ca08  dma_cfg r1, r20, r12, 4
000790  9f000010  addli r1, zero, 2048
000794  1583400b  dma_cfg r6, r1, r20, 5
000798  9f001000  addli r1, zero, 8
00079c  15000010  dma_cfg zero, zero, zero, 8
0007a0  35000000  dma_run zero
0007a4  1500900b  dma_cfg zero, zero, r25, 5
0007a8  15000010  dma_cfg zero, zero, zero, 8
0007ac  1d100600  unlock r12
0007b0  1d800200  lock zero, r5
0007b4  15000014  dma_cfg zero, zero, zero, 10
0007b8  15009015  dma_cfg zero, zero, r25, 10
0007bc  1500b014  dma_cfg zero, zero, r11, 10
0007c0  15003014  dma_cfg zero, zero, r3, 10
0007c4  9f010001  addli r3, zero, 128
0007c8  1500c014  dma_cfg zero, zero, r12, 10
0007cc  15005014  dma_cfg zero, zero, r5, 10
0007d0  15002015  dma_cfg zero, zero, r18, 10
0007d4  15008015  dma_cfg zero, zero, r24, 10
0007d8  15001014  dma_cfg zero, zero, r1, 10
0007dc  9f101000  addli r1, zero, 9
0007e0  15001014  dma_cfg zero, zero, r1, 10
0007e4  9f201000  addli r1, zero, 10
0007e8  15001014  dma_cfg zero, zero, r1, 10
0007ec  9f301000  addli r1, zero, 11
0007f0  15001014  dma_cfg zero, zero, r1, 10
0007f4  9f401000  addli r1, zero, 12
0007f8  15001014  dma_cfg zero, zero, r1, 10
0007fc  9f601000  addli r1, zero, 14
000800  15003015  dma_cfg zero, zero, r19, 10
000804  15001014  dma_cfg zero, zero, r1, 10
000808  9f701000  addli r1, zero, 15
00080c  15001014  dma_cfg zero, zero, r1, 10
000810  9f002000  addli r1, zero, 16
000814  15001014  dma_cfg zero, zero, r1, 10
000818  9f102000  addli r1, zero, 17
00081c  15001014  dma_cfg zero, zero, r1, 10
000820  9f202000  addli r1, zero, 18
000824  15001014  dma_cfg zero, zero, r1, 10
000828  9f302000  addli r1, zero, 19
00082c  15001014  dma_cfg zero, zero, r1, 10
000830  9f402000  addli r1, zero, 20
000834  15001014  dma_cfg zero, zero, r1, 10
000838  9f502000  addli r1, zero, 21
00083c  15001014  dma_cfg zero, zero, r1, 10
000840  9f602000  addli r1, zero, 22
000844  15001014  dma_cfg zero, zero, r1, 10
000848  9f702000  addli r1, zero, 23
00084c  15001014  dma_cfg zero, zero, r1, 10
000850  9f003000  addli r1, zero, 24
000854  15001014  dma_cfg zero, zero, r1, 10
000858  9f103000  addli r1, zero, 25
00085c  15001014  dma_cfg zero, zero, r1, 10
000860  9f203000  addli r1, zero, 26
000864  15001014  dma_cfg zero, zero, r1, 10
000868  9f303000  addli r1, zero, 27
00086c  15001014  dma_cfg zero, zero, r1, 10
000870  9f403000  addli r1, zero, 28
000874  15001014  dma_cfg zero, zero, r1, 10
000878  9f503000  addli r1, zero, 29
00087c  15001014  dma_cfg zero, zero, r1, 10
000880  9f603000  addli r1, zero, 30
000884  15001014  dma_cfg zero, zero, r1, 10
000888  9f703000  addli r1, zero, 31
00088c  15001014  dma_cfg zero, zero, r1, 10
000890  958c0c00  dma_cfg r25, r25, zero, 0
000894  950c0002  dma_cfg r25, zero, zero, 1
000898  15000004  dma_cfg zero, zero, zero, 2
00089c  15014007  dma_cfg r2, zero, r20, 3
0008a0  9501c008  dma_cfg r3, zero, r12, 4
0008a4  1503400b  dma_cfg r6, zero, r20, 5
0008a8  15000010  dma_cfg zero, zero, zero, 8
0008ac  35000000  dma_run zero
0008b0  1500900b  dma_cfg zero, zero, r25, 5
0008b4  15000010  dma_cfg zero, zero, zero, 8
0008b8  1d900200  unlock r5
0008bc  7d000900  xsignal r18, 0
0008c0  5b1f0000  j 248
0008c4  37c1ca00  beq r21, r12, 80
0008c8  3ba38a01  bneq r21, r24, 200
0008cc  9f101000  addli r1, zero, 9
0008d0  670d0ffe  storeli.w zero, -48(r30)
0008d4  7d100900  xwait r18, 0
0008d8  7d900000  xwait r1, 0
0008dc  1d000000  lock zero, zero
0008e0  9f000001  addli r1, zero, 128
0008e4  81050000  ds_cfg r11, zero, 0
0008e8  81000002  ds_cfg r1, zero, 1
0008ec  010a001c  ds_cfg r20, zero, 14
0008f0  8100001a  ds_cfg r1, zero, 13
0008f4  9f100000  addli r1, zero, 1
0008f8  41054105  shuffle_coa r10, r2, r20, 2
0008fc  1d100000  unlock zero
000900  7d000c00  xsignal r24, 0
000904  674d1ffe  storeli.w r1, -44(r30)
000908  9f001000  addli r1, zero, 8
00090c  7d800000  xsignal r1, 0
000910  5b150000  j 168
000914  1f011000  addli r2, zero, 8
000918  7d100600  xwait r12, 0
00091c  9f020000  addli r5, zero, 0
000920  9f110000  addli r3, zero, 1
000924  1f331000  addli r6, zero, 11
000928  7d100100  xwait r2, 0
00092c  1f110000  addli r2, zero, 1
000930  7d100300  xwait r6, 0
000934  1bb3e200  slli r6, r5, 14
000938  9bb28200  slli r5, r5, 8
00093c  1d000100  lock zero, r2
000940  090a4a01  mm_cfg r20, r20, r20, 0
000944  1713a300  or r6, r6, r10
000948  9792a200  or r5, r5, r10
00094c  09062604  mm_cfg r12, r12, r2, 2
000950  a9826010  mm r5, r1, r6, 8
000954  1b831100  andi r6, r3, 1
000958  9f120000  addli r5, zero, 1
00095c  9f010000  addli r3, zero, 0
000960  1d100100  unlock r2
000964  3b4f03fe  bneq r6, zero, -48
000968  9f500000  addli r1, zero, 5
00096c  674d0ffe  storeli.w zero, -44(r30)
000970  7d800000  xsignal r1, 0
000974  9f101000  addli r1, zero, 9
000978  7d800000  xsignal r1, 0
00097c  9f100000  addli r1, zero, 1
000980  670d1ffe  storeli.w r1, -48(r30)
000984  9f201000  addli r1, zero, 10
000988  7d800000  xsignal r1, 0
00098c  db050000  j 44
000990  9f300000  addli r1, zero, 3
000994  3bf01a00  bneq r21, r1, 28
000998  9f201000  addli r1, zero, 10
00099c  674d0ffe  storeli.w zero, -44(r30)
0009a0  670d0ffe  storeli.w zero, -48(r30)
0009a4  7d900000  xwait r1, 0
0009a8  7d900900  xwait r19, 0
0009ac  db010000  j 12
0009b0  674d0ffe  storeli.w zero, -44(r30)
0009b4  670d0ffe  storeli.w zero, -48(r30)
0009b8  ab000500  lui r1, 80
0009bc  eb550fff  load.d r[12:13], -16(r30)
0009c0  3d000000  xfence
0009c4  00a00300  mfence { lm, sm, gm }
0009c8  0b1b1510  add.s r22, r10, r1
0009cc  9f70f001  addli r1, zero, 255
0009d0  80a20004  csr_set csr5, r1
0009d4  9f000001  addli r1, zero, 128
0009d8  00e00200  sync_core
0009dc  73348ffe  store.d r[9:10], -24(r30)
0009e0  b3890028  zext_int2long r[20:21], r1
0009e4  9f70f000  addli r1, zero, 127
0009e8  b3800028  zext_int2long r[2:3], r1
0009ec  b7f00a00  beq r21, zero, 60
0009f0  b7e89a01  beq r21, r25, 568
0009f4  e3419fff  loadli.w r3,  -52(r30)
0009f8  bbf00102  bneq r3, zero, 1084
0009fc  9f310000  addli r3, zero, 3
000a00  37893a02  beq r21, r3, 1600
000a04  e301afff  loadli.w r3,  -48(r30)
000a08  3b910104  bneq r3, zero, 2116
000a0c  9f510000  addli r3, zero, 5
000a10  37a93a04  beq r21, r3, 2632
000a14  9f610000  addli r3, zero, 6
000a18  37b13a06  beq r21, r3, 3148
000a1c  e341afff  loadli.w r3,  -44(r30)
000a20  3bc90106  bneq r3, zero, 3664
000a24  5b0a0200  j 4176
000a28  3d000000  xfence
000a2c  b3020028  zext_int2long r[6:7], zero
000a30  00a00300  mfence { lm, sm, gm }
000a34  db030000  j 28
000a38  1f7c0000  addli r24, zero, 7
000a3c  eb538fff  load.d r[8:9], -8(r30)
000a40  b3020c28  zext_int2long r[6:7], r24
000a44  93a15304  setlt.ul r3, r[8:9], r[6:7]
000a48  a7920300  addli.d r[6:7], r[8:9], 1
000a4c  37970100  beq r3, zero, 452
000a50  733c5ffe  store.d r[6:7], -8(r30)
000a54  17b38203  sll.d r[7:8], r[6:7], r24
000a58  bb51ab00  bneq r22, r10, 116
000a5c  b3050028  zext_int2long r[12:13], zero
000a60  5b030000  j 24
000a64  13a41504  setlt.ul r8, r[12:13], r[2:3]
000a68  8b113b10  add.s r3, r22, r3
000a6c  a7950500  addli.d r[12:13], r[12:13], 1
000a70  73e05100  stores.w r5, 0(r3)
000a74  371f04fe  beq r8, zero, -60
000a78  0ba46510  add.ul r[9:10], r[12:13], r[7:8]
000a7c  9b312400  slli r3, r8, 2
000a80  8b123510  add.s r5, r10, r3
000a84  6fc40200  loads.w r8, 0(r5)
000a88  9704d400  and r9, r8, r13
000a8c  93029e04  setlt.u r5, r28, r9
000a90  3bd00200  bneq r5, zero, 20
000a94  9f020400  addli r5, r8, 0
000a98  93849804  setlt.u r9, r17, r9
000a9c  3baf04fe  bneq r9, zero, -56
000aa0  db020000  j 20
000aa4  ab024000  lui r5, 1024
000aa8  97125400  or r5, r8, r5
000aac  93849804  setlt.u r9, r17, r9
000ab0  bbde04fe  bneq r9, zero, -76
000ab4  9b420401  srli r5, r8, 16
000ab8  9b821200  andi r5, r5, 1
000abc  8b125410  add.s r5, r8, r5
000ac0  8b92e210  add.s r5, r5, r14
000ac4  97824200  and r5, r5, r4
000ac8  dbf3ffff  j -100
000acc  330c0028  zext_int2long r[25:26], zero
000ad0  db040000  j 36
000ad4  274c0c00  addli.d r[25:26], r[25:26], 4
000ad8  0b145b11  add.s r8, r22, r21
000adc  93223c01  seteq.d r5, r[25:26], r[20:21]
000ae0  73663400  stores.w r3, 12(r8)
000ae4  7364b401  stores.w r27, 8(r8)
000ae8  7362b400  stores.w r11, 4(r8)
000aec  7360a401  stores.w r26, 0(r8)
000af0  3bad02fe  bneq r5, zero, -184
000af4  0b246c10  add.ul r[9:10], r[25:26], r[7:8]
000af8  9b3a2400  slli r21, r8, 2
000afc  0b1d5511  add.s r26, r10, r21
000b00  ef42cd00  loads.w r5, 12(r26)
000b04  1786d200  and r12, r5, r13
000b08  9301ce04  setlt.u r3, r28, r12
000b0c  3bb00100  bneq r3, zero, 12
000b10  9f810200  addli r3, r5, 0
000b14  db010000  j 12
000b18  ab014000  lui r3, 1024
000b1c  97913200  or r3, r5, r3
000b20  ef478d00  loads.w r15, 8(r26)
000b24  1788d700  and r16, r15, r13
000b28  13040e05  setlt.u r8, r28, r16
000b2c  3b300400  bneq r8, zero, 12
000b30  9f8d0700  addli r27, r15, 0
000b34  db010000  j 12
000b38  2b044000  lui r8, 1024
000b3c  979d8700  or r27, r15, r8
000b40  6f494d00  loads.w r18, 4(r26)
000b44  1704d900  and r8, r18, r13
000b48  93048e04  setlt.u r9, r28, r8
000b4c  3bb00400  bneq r9, zero, 12
000b50  9f050900  addli r11, r18, 0
000b54  db010000  j 12
000b58  ab044000  lui r9, 1024
000b5c  97159900  or r11, r18, r9
000b60  ef440d00  loads.w r9, 0(r26)
000b64  978bd400  and r23, r9, r13
000b68  130d7e05  setlt.u r26, r28, r23
000b6c  3b500d00  bneq r26, zero, 20
000b70  1f8d0400  addli r26, r9, 0
000b74  938b7805  setlt.u r23, r17, r23
000b78  37e00b00  beq r23, zero, 24
000b7c  5b050000  j 40
000b80  2b0d4000  lui r26, 1024
000b84  179da401  or r26, r9, r26
000b88  938b7805  setlt.u r23, r17, r23
000b8c  3be00b00  bneq r23, zero, 24
000b90  9bcb0401  srli r23, r9, 16
000b94  9b8b1b00  andi r23, r23, 1
000b98  8b947411  add.s r9, r9, r23
000b9c  8b94e410  add.s r9, r9, r14
000ba0  178d4400  and r26, r9, r4
000ba4  13848804  setlt.u r8, r17, r8
000ba8  37600400  beq r8, zero, 24
000bac  13840805  setlt.u r8, r17, r16
000bb0  b7300400  beq r8, zero, 44
000bb4  1384c804  setlt.u r8, r17, r12
000bb8  3b7c04fe  bneq r8, zero, -228
000bbc  db070000  j 60
000bc0  1b440901  srli r8, r18, 16
000bc4  1b041400  andi r8, r8, 1
000bc8  0b148910  add.s r8, r18, r8
000bcc  0b14e410  add.s r8, r8, r14
000bd0  97054400  and r11, r8, r4
000bd4  13840805  setlt.u r8, r17, r16
000bd8  3b7f04fe  bneq r8, zero, -36
000bdc  1bc40701  srli r8, r15, 16
000be0  1b041400  andi r8, r8, 1
000be4  0b948710  add.s r8, r15, r8
000be8  0b14e410  add.s r8, r8, r14
000bec  970d4400  and r27, r8, r4
000bf0  1384c804  setlt.u r8, r17, r12
000bf4  bb0b04fe  bneq r8, zero, -288
000bf8  9bc10201  srli r3, r5, 16
000bfc  9b811100  andi r3, r3, 1
000c00  8b913210  add.s r3, r5, r3
000c04  8b91e110  add.s r3, r3, r14
000c08  97814100  and r3, r3, r4
000c0c  5bd9ffff  j -312
000c10  00200100  mfence { sm }
000c14  803a0002  core_id r21
000c18  9f1c0000  addli r25, zero, 1
000c1c  eb550fff  load.d r[12:13], -16(r30)
000c20  6b548ffe  load.d r[9:10], -24(r30)
000c24  3bc79aff  bneq r21, r25, -560
000c28  9f011000  addli r3, zero, 8
000c2c  3d000000  xfence
000c30  00a00300  mfence { lm, sm, gm }
000c34  b3820128  zext_int2long r[6:7], r3
000c38  5b040000  j 32
000c3c  9f711000  addli r3, zero, 15
000c40  eb538fff  load.d r[8:9], -8(r30)
000c44  1f7c0000  addli r24, zero, 7
000c48  b3820128  zext_int2long r[6:7], r3
000c4c  93a15304  setlt.ul r3, r[8:9], r[6:7]
000c50  a7920300  addli.d r[6:7], r[8:9], 1
000c54  37970100  beq r3, zero, 452
000c58  733c5ffe  store.d r[6:7], -8(r30)
000c5c  17b38203  sll.d r[7:8], r[6:7], r24
000c60  bb51ab00  bneq r22, r10, 116
000c64  b3050028  zext_int2long r[12:13], zero
000c68  5b030000  j 24
000c6c  13a41504  setlt.ul r8, r[12:13], r[2:3]
000c70  8b113b10  add.s r3, r22, r3
000c74  a7950500  addli.d r[12:13], r[12:13], 1
000c78  73e05100  stores.w r5, 0(r3)
000c7c  370f04fe  beq r8, zero, -64
000c80  0ba46510  add.ul r[9:10], r[12:13], r[7:8]
000c84  9b312400  slli r3, r8, 2
000c88  8b123510  add.s r5, r10, r3
000c8c  6fc40200  loads.w r8, 0(r5)
000c90  9704d400  and r9, r8, r13
000c94  93029e04  setlt.u r5, r28, r9
000c98  3bd00200  bneq r5, zero, 20
000c9c  9f020400  addli r5, r8, 0
000ca0  93849804  setlt.u r9, r17, r9
000ca4  3baf04fe  bneq r9, zero, -56
000ca8  db020000  j 20
000cac  ab024000  lui r5, 1024
000cb0  97125400  or r5, r8, r5
000cb4  93849804  setlt.u r9, r17, r9
000cb8  bbde04fe  bneq r9, zero, -76
000cbc  9b420401  srli r5, r8, 16
000cc0  9b821200  andi r5, r5, 1
000cc4  8b125410  add.s r5, r8, r5
000cc8  8b92e210  add.s r5, r5, r14
000ccc  97824200  and r5, r5, r4
000cd0  dbf3ffff  j -100
000cd4  330c0028  zext_int2long r[25:26], zero
000cd8  db040000  j 36
000cdc  274c0c00  addli.d r[25:26], r[25:26], 4
000ce0  0b145b11  add.s r8, r22, r21
000ce4  93213c01  seteq.d r3, r[25:26], r[20:21]
000ce8  73665400  stores.w r5, 12(r8)
000cec  7364f400  stores.w r15, 8(r8)
000cf0  73622401  stores.w r18, 4(r8)
000cf4  7360a401  stores.w r26, 0(r8)
000cf8  3b9d01fe  bneq r3, zero, -188
000cfc  0b246c10  add.ul r[9:10], r[25:26], r[7:8]
000d00  9b3a2400  slli r21, r8, 2
000d04  0b1d5511  add.s r26, r10, r21
000d08  ef41cd00  loads.w r3, 12(r26)
000d0c  1786d100  and r12, r3, r13
000d10  9302ce04  setlt.u r5, r28, r12
000d14  3bb00200  bneq r5, zero, 12
000d18  9f820100  addli r5, r3, 0
000d1c  db010000  j 12
000d20  ab024000  lui r5, 1024
000d24  97925100  or r5, r3, r5
000d28  ef4d8d00  loads.w r27, 8(r26)
000d2c  1788dd00  and r16, r27, r13
000d30  13040e05  setlt.u r8, r28, r16
000d34  3b300400  bneq r8, zero, 12
000d38  9f870d00  addli r15, r27, 0
000d3c  db010000  j 12
000d40  2b044000  lui r8, 1024
000d44  97978d00  or r15, r27, r8
000d48  ef454d00  loads.w r11, 4(r26)
000d4c  1784d500  and r8, r11, r13
000d50  93048e04  setlt.u r9, r28, r8
000d54  3bb00400  bneq r9, zero, 12
000d58  1f890500  addli r18, r11, 0
000d5c  db010000  j 12
000d60  ab044000  lui r9, 1024
000d64  17999500  or r18, r11, r9
000d68  ef440d00  loads.w r9, 0(r26)
000d6c  978bd400  and r23, r9, r13
000d70  130d7e05  setlt.u r26, r28, r23
000d74  3b010d00  bneq r26, zero, 64
000d78  1f8d0400  addli r26, r9, 0
000d7c  938b7805  setlt.u r23, r17, r23
000d80  3be00b00  bneq r23, zero, 24
000d84  9bcb0401  srli r23, r9, 16
000d88  9b8b1b00  andi r23, r23, 1
000d8c  8b947411  add.s r9, r9, r23
000d90  8b94e410  add.s r9, r9, r14
000d94  178d4400  and r26, r9, r4
000d98  13848804  setlt.u r8, r17, r8
000d9c  b7300400  beq r8, zero, 44
000da0  13840805  setlt.u r8, r17, r16
000da4  37010400  beq r8, zero, 64
000da8  1384c804  setlt.u r8, r17, r12
000dac  bb4c04fe  bneq r8, zero, -208
000db0  5b0a0000  j 80
000db4  2b0d4000  lui r26, 1024
000db8  179da401  or r26, r9, r26
000dbc  938b7805  setlt.u r23, r17, r23
000dc0  379f0bfe  beq r23, zero, -60
000dc4  dbfaffff  j -44
000dc8  1bc40501  srli r8, r11, 16
000dcc  1b041400  andi r8, r8, 1
000dd0  0b948510  add.s r8, r11, r8
000dd4  0b14e410  add.s r8, r8, r14
000dd8  17094400  and r18, r8, r4
000ddc  13840805  setlt.u r8, r17, r16
000de0  3b2f04fe  bneq r8, zero, -56
000de4  1bc40d01  srli r8, r27, 16
000de8  1b041400  andi r8, r8, 1
000dec  0b948d10  add.s r8, r27, r8
000df0  0b14e410  add.s r8, r8, r14
000df4  97074400  and r15, r8, r4
000df8  1384c804  setlt.u r8, r17, r12
000dfc  bb0b04fe  bneq r8, zero, -288
000e00  9bc20101  srli r5, r3, 16
000e04  9b821200  andi r5, r5, 1
000e08  8b915110  add.s r3, r3, r5
000e0c  8b91e110  add.s r3, r3, r14
000e10  97824100  and r5, r3, r4
000e14  5bd9ffff  j -312
000e18  00200100  mfence { sm }
000e1c  803a0002  core_id r21
000e20  9f1c0000  addli r25, zero, 1
000e24  eb550fff  load.d r[12:13], -16(r30)
000e28  6b548ffe  load.d r[9:10], -24(r30)
000e2c  e3419fff  loadli.w r3,  -52(r30)
000e30  37bf01fc  beq r3, zero, -1076
000e34  9f012000  addli r3, zero, 16
000e38  3d000000  xfence
000e3c  00a00300  mfence { lm, sm, gm }
000e40  b3820128  zext_int2long r[6:7], r3
000e44  5b040000  j 32
000e48  9f712000  addli r3, zero, 23
000e4c  eb538fff  load.d r[8:9], -8(r30)
000e50  1f7c0000  addli r24, zero, 7
000e54  b3820128  zext_int2long r[6:7], r3
000e58  93a15304  setlt.ul r3, r[8:9], r[6:7]
000e5c  a7920300  addli.d r[6:7], r[8:9], 1
000e60  37970100  beq r3, zero, 452
000e64  733c5ffe  store.d r[6:7], -8(r30)
000e68  17b38203  sll.d r[7:8], r[6:7], r24
000e6c  bb51ab00  bneq r22, r10, 116
000e70  b3050028  zext_int2long r[12:13], zero
000e74  5b030000  j 24
000e78  13a41504  setlt.ul r8, r[12:13], r[2:3]
000e7c  8b113b10  add.s r3, r22, r3
000e80  a7950500  addli.d r[12:13], r[12:13], 1
000e84  73e05100  stores.w r5, 0(r3)
000e88  370f04fe  beq r8, zero, -64
000e8c  0ba46510  add.ul r[9:10], r[12:13], r[7:8]
000e90  9b312400  slli r3, r8, 2
000e94  8b123510  add.s r5, r10, r3
000e98  6fc40200  loads.w r8, 0(r5)
000e9c  9704d400  and r9, r8, r13
000ea0  93029e04  setlt.u r5, r28, r9
000ea4  3bd00200  bneq r5, zero, 20
000ea8  9f020400  addli r5, r8, 0
000eac  93849804  setlt.u r9, r17, r9
000eb0  3baf04fe  bneq r9, zero, -56
000eb4  db020000  j 20
000eb8  ab024000  lui r5, 1024
000ebc  97125400  or r5, r8, r5
000ec0  93849804  setlt.u r9, r17, r9
000ec4  bbde04fe  bneq r9, zero, -76
000ec8  9b420401  srli r5, r8, 16
000ecc  9b821200  andi r5, r5, 1
000ed0  8b125410  add.s r5, r8, r5
000ed4  8b92e210  add.s r5, r5, r14
000ed8  97824200  and r5, r5, r4
000edc  dbf3ffff  j -100
000ee0  330c0028  zext_int2long r[25:26], zero
000ee4  db040000  j 36
000ee8  274c0c00  addli.d r[25:26], r[25:26], 4
000eec  0b145b11  add.s r8, r22, r21
000ef0  93213c01  seteq.d r3, r[25:26], r[20:21]
000ef4  73665400  stores.w r5, 12(r8)
000ef8  7364f400  stores.w r15, 8(r8)
000efc  73622401  stores.w r18, 4(r8)
000f00  7360a401  stores.w r26, 0(r8)
000f04  3b9d01fe  bneq r3, zero, -188
000f08  0b246c10  add.ul r[9:10], r[25:26], r[7:8]
000f0c  9b3a2400  slli r21, r8, 2
000f10  0b1d5511  add.s r26, r10, r21
000f14  ef41cd00  loads.w r3, 12(r26)
000f18  1786d100  and r12, r3, r13
000f1c  9302ce04  setlt.u r5, r28, r12
000f20  3bb00200  bneq r5, zero, 12
000f24  9f820100  addli r5, r3, 0
000f28  db010000  j 12
000f2c  ab024000  lui r5, 1024
000f30  97925100  or r5, r3, r5
000f34  ef4d8d00  loads.w r27, 8(r26)
000f38  1788dd00  and r16, r27, r13
000f3c  13040e05  setlt.u r8, r28, r16
000f40  3b300400  bneq r8, zero, 12
000f44  9f870d00  addli r15, r27, 0
000f48  db010000  j 12
000f4c  2b044000  lui r8, 1024
000f50  97978d00  or r15, r27, r8
000f54  ef454d00  loads.w r11, 4(r26)
000f58  1784d500  and r8, r11, r13
000f5c  93048e04  setlt.u r9, r28, r8
000f60  3bb00400  bneq r9, zero, 12
000f64  1f890500  addli r18, r11, 0
000f68  db010000  j 12
000f6c  ab044000  lui r9, 1024
000f70  17999500  or r18, r11, r9
000f74  ef440d00  loads.w r9, 0(r26)
000f78  978bd400  and r23, r9, r13
000f7c  130d7e05  setlt.u r26, r28, r23
000f80  3b010d00  bneq r26, zero, 64
000f84  1f8d0400  addli r26, r9, 0
000f88  938b7805  setlt.u r23, r17, r23
000f8c  3be00b00  bneq r23, zero, 24
000f90  9bcb0401  srli r23, r9, 16
000f94  9b8b1b00  andi r23, r23, 1
000f98  8b947411  add.s r9, r9, r23
000f9c  8b94e410  add.s r9, r9, r14
000fa0  178d4400  and r26, r9, r4
000fa4  13848804  setlt.u r8, r17, r8
000fa8  b7300400  beq r8, zero, 44
000fac  13840805  setlt.u r8, r17, r16
000fb0  37010400  beq r8, zero, 64
000fb4  1384c804  setlt.u r8, r17, r12
000fb8  bb4c04fe  bneq r8, zero, -208
000fbc  5b0a0000  j 80
000fc0  2b0d4000  lui r26, 1024
000fc4  179da401  or r26, r9, r26
000fc8  938b7805  setlt.u r23, r17, r23
000fcc  379f0bfe  beq r23, zero, -60
000fd0  dbfaffff  j -44
000fd4  1bc40501  srli r8, r11, 16
000fd8  1b041400  andi r8, r8, 1
000fdc  0b948510  add.s r8, r11, r8
000fe0  0b14e410  add.s r8, r8, r14
000fe4  17094400  and r18, r8, r4
000fe8  13840805  setlt.u r8, r17, r16
000fec  3b2f04fe  bneq r8, zero, -56
000ff0  1bc40d01  srli r8, r27, 16
000ff4  1b041400  andi r8, r8, 1
000ff8  0b948d10  add.s r8, r27, r8
000ffc  0b14e410  add.s r8, r8, r14
001000  97074400  and r15, r8, r4
001004  1384c804  setlt.u r8, r17, r12
001008  bb0b04fe  bneq r8, zero, -288
00100c  9bc20101  srli r5, r3, 16
001010  9b821200  andi r5, r5, 1
001014  8b915110  add.s r3, r3, r5
001018  8b91e110  add.s r3, r3, r14
00101c  97824100  and r5, r3, r4
001020  5bd9ffff  j -312
001024  00200100  mfence { sm }
001028  803a0002  core_id r21
00102c  9f1c0000  addli r25, zero, 1
001030  eb550fff  load.d r[12:13], -16(r30)
001034  6b548ffe  load.d r[9:10], -24(r30)
001038  9f310000  addli r3, zero, 3
00103c  3ba73afc  bneq r21, r3, -1592
001040  9f013000  addli r3, zero, 24
001044  3d000000  xfence
001048  00a00300  mfence { lm, sm, gm }
00104c  b3820128  zext_int2long r[6:7], r3
001050  5b040000  j 32
001054  9f713000  addli r3, zero, 31
001058  eb538fff  load.d r[8:9], -8(r30)
00105c  1f7c0000  addli r24, zero, 7
001060  b3820128  zext_int2long r[6:7], r3
001064  93a15304  setlt.ul r3, r[8:9], r[6:7]
001068  a7920300  addli.d r[6:7], r[8:9], 1
00106c  37970100  beq r3, zero, 452
001070  733c5ffe  store.d r[6:7], -8(r30)
001074  17b38203  sll.d r[7:8], r[6:7], r24
001078  bb51ab00  bneq r22, r10, 116
00107c  b3050028  zext_int2long r[12:13], zero
001080  5b030000  j 24
001084  13a41504  setlt.ul r8, r[12:13], r[2:3]
001088  8b113b10  add.s r3, r22, r3
00108c  a7950500  addli.d r[12:13], r[12:13], 1
001090  73e05100  stores.w r5, 0(r3)
001094  370f04fe  beq r8, zero, -64
001098  0ba46510  add.ul r[9:10], r[12:13], r[7:8]
00109c  9b312400  slli r3, r8, 2
0010a0  8b123510  add.s r5, r10, r3
0010a4  6fc40200  loads.w r8, 0(r5)
0010a8  9704d400  and r9, r8, r13
0010ac  93029e04  setlt.u r5, r28, r9
0010b0  3bd00200  bneq r5, zero, 20
0010b4  9f020400  addli r5, r8, 0
0010b8  93849804  setlt.u r9, r17, r9
0010bc  3baf04fe  bneq r9, zero, -56
0010c0  db020000  j 20
0010c4  ab024000  lui r5, 1024
0010c8  97125400  or r5, r8, r5
0010cc  93849804  setlt.u r9, r17, r9
0010d0  bbde04fe  bneq r9, zero, -76
0010d4  9b420401  srli r5, r8, 16
0010d8  9b821200  andi r5, r5, 1
0010dc  8b125410  add.s r5, r8, r5
0010e0  8b92e210  add.s r5, r5, r14
0010e4  97824200  and r5, r5, r4
0010e8  dbf3ffff  j -100
0010ec  330c0028  zext_int2long r[25:26], zero
0010f0  db040000  j 36
0010f4  274c0c00  addli.d r[25:26], r[25:26], 4
0010f8  0b145b11  add.s r8, r22, r21
0010fc  93213c01  seteq.d r3, r[25:26], r[20:21]
001100  73665400  stores.w r5, 12(r8)
001104  7364f400  stores.w r15, 8(r8)
001108  73622401  stores.w r18, 4(r8)
00110c  7360a401  stores.w r26, 0(r8)
001110  3b9d01fe  bneq r3, zero, -188
001114  0b246c10  add.ul r[9:10], r[25:26], r[7:8]
001118  9b3a2400  slli r21, r8, 2
00111c  0b1d5511  add.s r26, r10, r21
001120  ef41cd00  loads.w r3, 12(r26)
001124  1786d100  and r12, r3, r13
001128  9302ce04  setlt.u r5, r28, r12
00112c  3bb00200  bneq r5, zero, 12
001130  9f820100  addli r5, r3, 0
001134  db010000  j 12
001138  ab024000  lui r5, 1024
00113c  97925100  or r5, r3, r5
001140  ef4d8d00  loads.w r27, 8(r26)
001144  1788dd00  and r16, r27, r13
001148  13040e05  setlt.u r8, r28, r16
00114c  3b300400  bneq r8, zero, 12
001150  9f870d00  addli r15, r27, 0
001154  db010000  j 12
001158  2b044000  lui r8, 1024
00115c  97978d00  or r15, r27, r8
001160  ef454d00  loads.w r11, 4(r26)
001164  1784d500  and r8, r11, r13
001168  93048e04  setlt.u r9, r28, r8
00116c  3bb00400  bneq r9, zero, 12
001170  1f890500  addli r18, r11, 0
001174  db010000  j 12
001178  ab044000  lui r9, 1024
00117c  17999500  or r18, r11, r9
001180  ef440d00  loads.w r9, 0(r26)
001184  978bd400  and r23, r9, r13
001188  130d7e05  setlt.u r26, r28, r23
00118c  3b010d00  bneq r26, zero, 64
001190  1f8d0400  addli r26, r9, 0
001194  938b7805  setlt.u r23, r17, r23
001198  3be00b00  bneq r23, zero, 24
00119c  9bcb0401  srli r23, r9, 16
0011a0  9b8b1b00  andi r23, r23, 1
0011a4  8b947411  add.s r9, r9, r23
0011a8  8b94e410  add.s r9, r9, r14
0011ac  178d4400  and r26, r9, r4
0011b0  13848804  setlt.u r8, r17, r8
0011b4  b7300400  beq r8, zero, 44
0011b8  13840805  setlt.u r8, r17, r16
0011bc  37010400  beq r8, zero, 64
0011c0  1384c804  setlt.u r8, r17, r12
0011c4  bb4c04fe  bneq r8, zero, -208
0011c8  5b0a0000  j 80
0011cc  2b0d4000  lui r26, 1024
0011d0  179da401  or r26, r9, r26
0011d4  938b7805  setlt.u r23, r17, r23
0011d8  379f0bfe  beq r23, zero, -60
0011dc  dbfaffff  j -44
0011e0  1bc40501  srli r8, r11, 16
0011e4  1b041400  andi r8, r8, 1
0011e8  0b948510  add.s r8, r11, r8
0011ec  0b14e410  add.s r8, r8, r14
0011f0  17094400  and r18, r8, r4
0011f4  13840805  setlt.u r8, r17, r16
0011f8  3b2f04fe  bneq r8, zero, -56
0011fc  1bc40d01  srli r8, r27, 16
001200  1b041400  andi r8, r8, 1
001204  0b948d10  add.s r8, r27, r8
001208  0b14e410  add.s r8, r8, r14
00120c  97074400  and r15, r8, r4
001210  1384c804  setlt.u r8, r17, r12
001214  bb0b04fe  bneq r8, zero, -288
001218  9bc20101  srli r5, r3, 16
00121c  9b821200  andi r5, r5, 1
001220  8b915110  add.s r3, r3, r5
001224  8b91e110  add.s r3, r3, r14
001228  97824100  and r5, r3, r4
00122c  5bd9ffff  j -312
001230  00200100  mfence { sm }
001234  803a0002  core_id r21
001238  9f1c0000  addli r25, zero, 1
00123c  eb550fff  load.d r[12:13], -16(r30)
001240  6b548ffe  load.d r[9:10], -24(r30)
001244  e301afff  loadli.w r3,  -48(r30)
001248  379f01fa  beq r3, zero, -2108
00124c  9f014000  addli r3, zero, 32
001250  3d000000  xfence
001254  00a00300  mfence { lm, sm, gm }
001258  b3820128  zext_int2long r[6:7], r3
00125c  5b040000  j 32
001260  9f714000  addli r3, zero, 39
001264  eb538fff  load.d r[8:9], -8(r30)
001268  1f7c0000  addli r24, zero, 7
00126c  b3820128  zext_int2long r[6:7], r3
001270  93a15304  setlt.ul r3, r[8:9], r[6:7]
001274  a7920300  addli.d r[6:7], r[8:9], 1
001278  37970100  beq r3, zero, 452
00127c  733c5ffe  store.d r[6:7], -8(r30)
001280  17b38203  sll.d r[7:8], r[6:7], r24
001284  bb51ab00  bneq r22, r10, 116
001288  b3050028  zext_int2long r[12:13], zero
00128c  5b030000  j 24
001290  13a41504  setlt.ul r8, r[12:13], r[2:3]
001294  8b113b10  add.s r3, r22, r3
001298  a7950500  addli.d r[12:13], r[12:13], 1
00129c  73e05100  stores.w r5, 0(r3)
0012a0  370f04fe  beq r8, zero, -64
0012a4  0ba46510  add.ul r[9:10], r[12:13], r[7:8]
0012a8  9b312400  slli r3, r8, 2
0012ac  8b123510  add.s r5, r10, r3
0012b0  6fc40200  loads.w r8, 0(r5)
0012b4  9704d400  and r9, r8, r13
0012b8  93029e04  setlt.u r5, r28, r9
0012bc  3bd00200  bneq r5, zero, 20
0012c0  9f020400  addli r5, r8, 0
0012c4  93849804  setlt.u r9, r17, r9
0012c8  3baf04fe  bneq r9, zero, -56
0012cc  db020000  j 20
0012d0  ab024000  lui r5, 1024
0012d4  97125400  or r5, r8, r5
0012d8  93849804  setlt.u r9, r17, r9
0012dc  bbde04fe  bneq r9, zero, -76
0012e0  9b420401  srli r5, r8, 16
0012e4  9b821200  andi r5, r5, 1
0012e8  8b125410  add.s r5, r8, r5
0012ec  8b92e210  add.s r5, r5, r14
0012f0  97824200  and r5, r5, r4
0012f4  dbf3ffff  j -100
0012f8  330c0028  zext_int2long r[25:26], zero
0012fc  db040000  j 36
001300  274c0c00  addli.d r[25:26], r[25:26], 4
001304  0b145b11  add.s r8, r22, r21
001308  93213c01  seteq.d r3, r[25:26], r[20:21]
00130c  73665400  stores.w r5, 12(r8)
001310  7364f400  stores.w r15, 8(r8)
001314  73622401  stores.w r18, 4(r8)
001318  7360a401  stores.w r26, 0(r8)
00131c  3b9d01fe  bneq r3, zero, -188
001320  0b246c10  add.ul r[9:10], r[25:26], r[7:8]
001324  9b3a2400  slli r21, r8, 2
001328  0b1d5511  add.s r26, r10, r21
00132c  ef41cd00  loads.w r3, 12(r26)
001330  1786d100  and r12, r3, r13
001334  9302ce04  setlt.u r5, r28, r12
001338  3bb00200  bneq r5, zero, 12
00133c  9f820100  addli r5, r3, 0
001340  db010000  j 12
001344  ab024000  lui r5, 1024
001348  97925100  or r5, r3, r5
00134c  ef4d8d00  loads.w r27, 8(r26)
001350  1788dd00  and r16, r27, r13
001354  13040e05  setlt.u r8, r28, r16
001358  3b300400  bneq r8, zero, 12
00135c  9f870d00  addli r15, r27, 0
001360  db010000  j 12
001364  2b044000  lui r8, 1024
001368  97978d00  or r15, r27, r8
00136c  ef454d00  loads.w r11, 4(r26)
001370  1784d500  and r8, r11, r13
001374  93048e04  setlt.u r9, r28, r8
001378  3bb00400  bneq r9, zero, 12
00137c  1f890500  addli r18, r11, 0
001380  db010000  j 12
001384  ab044000  lui r9, 1024
001388  17999500  or r18, r11, r9
00138c  ef440d00  loads.w r9, 0(r26)
001390  978bd400  and r23, r9, r13
001394  130d7e05  setlt.u r26, r28, r23
001398  3b010d00  bneq r26, zero, 64
00139c  1f8d0400  addli r26, r9, 0
0013a0  938b7805  setlt.u r23, r17, r23
0013a4  3be00b00  bneq r23, zero, 24
0013a8  9bcb0401  srli r23, r9, 16
0013ac  9b8b1b00  andi r23, r23, 1
0013b0  8b947411  add.s r9, r9, r23
0013b4  8b94e410  add.s r9, r9, r14
0013b8  178d4400  and r26, r9, r4
0013bc  13848804  setlt.u r8, r17, r8
0013c0  b7300400  beq r8, zero, 44
0013c4  13840805  setlt.u r8, r17, r16
0013c8  37010400  beq r8, zero, 64
0013cc  1384c804  setlt.u r8, r17, r12
0013d0  bb4c04fe  bneq r8, zero, -208
0013d4  5b0a0000  j 80
0013d8  2b0d4000  lui r26, 1024
0013dc  179da401  or r26, r9, r26
0013e0  938b7805  setlt.u r23, r17, r23
0013e4  379f0bfe  beq r23, zero, -60
0013e8  dbfaffff  j -44
0013ec  1bc40501  srli r8, r11, 16
0013f0  1b041400  andi r8, r8, 1
0013f4  0b948510  add.s r8, r11, r8
0013f8  0b14e410  add.s r8, r8, r14
0013fc  17094400  and r18, r8, r4
001400  13840805  setlt.u r8, r17, r16
001404  3b2f04fe  bneq r8, zero, -56
001408  1bc40d01  srli r8, r27, 16
00140c  1b041400  andi r8, r8, 1
001410  0b948d10  add.s r8, r27, r8
001414  0b14e410  add.s r8, r8, r14
001418  97074400  and r15, r8, r4
00141c  1384c804  setlt.u r8, r17, r12
001420  bb0b04fe  bneq r8, zero, -288
001424  9bc20101  srli r5, r3, 16
001428  9b821200  andi r5, r5, 1
00142c  8b915110  add.s r3, r3, r5
001430  8b91e110  add.s r3, r3, r14
001434  97824100  and r5, r3, r4
001438  5bd9ffff  j -312
00143c  00200100  mfence { sm }
001440  803a0002  core_id r21
001444  9f1c0000  addli r25, zero, 1
001448  eb550fff  load.d r[12:13], -16(r30)
00144c  6b548ffe  load.d r[9:10], -24(r30)
001450  9f510000  addli r3, zero, 5
001454  3b873afa  bneq r21, r3, -2624
001458  9f015000  addli r3, zero, 40
00145c  3d000000  xfence
001460  00a00300  mfence { lm, sm, gm }
001464  b3820128  zext_int2long r[6:7], r3
001468  5b040000  j 32
00146c  9f715000  addli r3, zero, 47
001470  eb538fff  load.d r[8:9], -8(r30)
001474  1f7c0000  addli r24, zero, 7
001478  b3820128  zext_int2long r[6:7], r3
00147c  93a15304  setlt.ul r3, r[8:9], r[6:7]
001480  a7920300  addli.d r[6:7], r[8:9], 1
001484  37970100  beq r3, zero, 452
001488  733c5ffe  store.d r[6:7], -8(r30)
00148c  17b38203  sll.d r[7:8], r[6:7], r24
001490  bb51ab00  bneq r22, r10, 116
001494  b3050028  zext_int2long r[12:13], zero
001498  5b030000  j 24
00149c  13a41504  setlt.ul r8, r[12:13], r[2:3]
0014a0  8b113b10  add.s r3, r22, r3
0014a4  a7950500  addli.d r[12:13], r[12:13], 1
0014a8  73e05100  stores.w r5, 0(r3)
0014ac  370f04fe  beq r8, zero, -64
0014b0  0ba46510  add.ul r[9:10], r[12:13], r[7:8]
0014b4  9b312400  slli r3, r8, 2
0014b8  8b123510  add.s r5, r10, r3
0014bc  6fc40200  loads.w r8, 0(r5)
0014c0  9704d400  and r9, r8, r13
0014c4  93029e04  setlt.u r5, r28, r9
0014c8  3bd00200  bneq r5, zero, 20
0014cc  9f020400  addli r5, r8, 0
0014d0  93849804  setlt.u r9, r17, r9
0014d4  3baf04fe  bneq r9, zero, -56
0014d8  db020000  j 20
0014dc  ab024000  lui r5, 1024
0014e0  97125400  or r5, r8, r5
0014e4  93849804  setlt.u r9, r17, r9
0014e8  bbde04fe  bneq r9, zero, -76
0014ec  9b420401  srli r5, r8, 16
0014f0  9b821200  andi r5, r5, 1
0014f4  8b125410  add.s r5, r8, r5
0014f8  8b92e210  add.s r5, r5, r14
0014fc  97824200  and r5, r5, r4
001500  dbf3ffff  j -100
001504  330c0028  zext_int2long r[25:26], zero
001508  db040000  j 36
00150c  274c0c00  addli.d r[25:26], r[25:26], 4
001510  0b145b11  add.s r8, r22, r21
001514  93213c01  seteq.d r3, r[25:26], r[20:21]
001518  73665400  stores.w r5, 12(r8)
00151c  7364f400  stores.w r15, 8(r8)
001520  73622401  stores.w r18, 4(r8)
001524  7360a401  stores.w r26, 0(r8)
001528  3b9d01fe  bneq r3, zero, -188
00152c  0b246c10  add.ul r[9:10], r[25:26], r[7:8]
001530  9b3a2400  slli r21, r8, 2
001534  0b1d5511  add.s r26, r10, r21
001538  ef41cd00  loads.w r3, 12(r26)
00153c  1786d100  and r12, r3, r13
001540  9302ce04  setlt.u r5, r28, r12
001544  3bb00200  bneq r5, zero, 12
001548  9f820100  addli r5, r3, 0
00154c  db010000  j 12
001550  ab024000  lui r5, 1024
001554  97925100  or r5, r3, r5
001558  ef4d8d00  loads.w r27, 8(r26)
00155c  1788dd00  and r16, r27, r13
001560  13040e05  setlt.u r8, r28, r16
001564  3b300400  bneq r8, zero, 12
001568  9f870d00  addli r15, r27, 0
00156c  db010000  j 12
001570  2b044000  lui r8, 1024
001574  97978d00  or r15, r27, r8
001578  ef454d00  loads.w r11, 4(r26)
00157c  1784d500  and r8, r11, r13
001580  93048e04  setlt.u r9, r28, r8
001584  3bb00400  bneq r9, zero, 12
001588  1f890500  addli r18, r11, 0
00158c  db010000  j 12
001590  ab044000  lui r9, 1024
001594  17999500  or r18, r11, r9
001598  ef440d00  loads.w r9, 0(r26)
00159c  978bd400  and r23, r9, r13
0015a0  130d7e05  setlt.u r26, r28, r23
0015a4  3b010d00  bneq r26, zero, 64
0015a8  1f8d0400  addli r26, r9, 0
0015ac  938b7805  setlt.u r23, r17, r23
0015b0  3be00b00  bneq r23, zero, 24
0015b4  9bcb0401  srli r23, r9, 16
0015b8  9b8b1b00  andi r23, r23, 1
0015bc  8b947411  add.s r9, r9, r23
0015c0  8b94e410  add.s r9, r9, r14
0015c4  178d4400  and r26, r9, r4
0015c8  13848804  setlt.u r8, r17, r8
0015cc  b7300400  beq r8, zero, 44
0015d0  13840805  setlt.u r8, r17, r16
0015d4  37010400  beq r8, zero, 64
0015d8  1384c804  setlt.u r8, r17, r12
0015dc  bb4c04fe  bneq r8, zero, -208
0015e0  5b0a0000  j 80
0015e4  2b0d4000  lui r26, 1024
0015e8  179da401  or r26, r9, r26
0015ec  938b7805  setlt.u r23, r17, r23
0015f0  379f0bfe  beq r23, zero, -60
0015f4  dbfaffff  j -44
0015f8  1bc40501  srli r8, r11, 16
0015fc  1b041400  andi r8, r8, 1
001600  0b948510  add.s r8, r11, r8
001604  0b14e410  add.s r8, r8, r14
001608  17094400  and r18, r8, r4
00160c  13840805  setlt.u r8, r17, r16
001610  3b2f04fe  bneq r8, zero, -56
001614  1bc40d01  srli r8, r27, 16
001618  1b041400  andi r8, r8, 1
00161c  0b948d10  add.s r8, r27, r8
001620  0b14e410  add.s r8, r8, r14
001624  97074400  and r15, r8, r4
001628  1384c804  setlt.u r8, r17, r12
00162c  bb0b04fe  bneq r8, zero, -288
001630  9bc20101  srli r5, r3, 16
001634  9b821200  andi r5, r5, 1
001638  8b915110  add.s r3, r3, r5
00163c  8b91e110  add.s r3, r3, r14
001640  97824100  and r5, r3, r4
001644  5bd9ffff  j -312
001648  00200100  mfence { sm }
00164c  803a0002  core_id r21
001650  9f1c0000  addli r25, zero, 1
001654  eb550fff  load.d r[12:13], -16(r30)
001658  6b548ffe  load.d r[9:10], -24(r30)
00165c  9f610000  addli r3, zero, 6
001660  bbfe3af8  bneq r21, r3, -3140
001664  9f016000  addli r3, zero, 48
001668  3d000000  xfence
00166c  00a00300  mfence { lm, sm, gm }
001670  b3820128  zext_int2long r[6:7], r3
001674  5b040000  j 32
001678  9f716000  addli r3, zero, 55
00167c  eb538fff  load.d r[8:9], -8(r30)
001680  1f7c0000  addli r24, zero, 7
001684  b3820128  zext_int2long r[6:7], r3
001688  93a15304  setlt.ul r3, r[8:9], r[6:7]
00168c  a7920300  addli.d r[6:7], r[8:9], 1
001690  37970100  beq r3, zero, 452
001694  733c5ffe  store.d r[6:7], -8(r30)
001698  17b38203  sll.d r[7:8], r[6:7], r24
00169c  bb51ab00  bneq r22, r10, 116
0016a0  b3050028  zext_int2long r[12:13], zero
0016a4  5b030000  j 24
0016a8  13a41504  setlt.ul r8, r[12:13], r[2:3]
0016ac  8b113b10  add.s r3, r22, r3
0016b0  a7950500  addli.d r[12:13], r[12:13], 1
0016b4  73e05100  stores.w r5, 0(r3)
0016b8  370f04fe  beq r8, zero, -64
0016bc  0ba46510  add.ul r[9:10], r[12:13], r[7:8]
0016c0  9b312400  slli r3, r8, 2
0016c4  8b123510  add.s r5, r10, r3
0016c8  6fc40200  loads.w r8, 0(r5)
0016cc  9704d400  and r9, r8, r13
0016d0  93029e04  setlt.u r5, r28, r9
0016d4  3bd00200  bneq r5, zero, 20
0016d8  9f020400  addli r5, r8, 0
0016dc  93849804  setlt.u r9, r17, r9
0016e0  3baf04fe  bneq r9, zero, -56
0016e4  db020000  j 20
0016e8  ab024000  lui r5, 1024
0016ec  97125400  or r5, r8, r5
0016f0  93849804  setlt.u r9, r17, r9
0016f4  bbde04fe  bneq r9, zero, -76
0016f8  9b420401  srli r5, r8, 16
0016fc  9b821200  andi r5, r5, 1
001700  8b125410  add.s r5, r8, r5
001704  8b92e210  add.s r5, r5, r14
001708  97824200  and r5, r5, r4
00170c  dbf3ffff  j -100
001710  330c0028  zext_int2long r[25:26], zero
001714  db040000  j 36
001718  274c0c00  addli.d r[25:26], r[25:26], 4
00171c  0b145b11  add.s r8, r22, r21
001720  93213c01  seteq.d r3, r[25:26], r[20:21]
001724  73665400  stores.w r5, 12(r8)
001728  7364f400  stores.w r15, 8(r8)
00172c  73622401  stores.w r18, 4(r8)
001730  7360a401  stores.w r26, 0(r8)
001734  3b9d01fe  bneq r3, zero, -188
001738  0b246c10  add.ul r[9:10], r[25:26], r[7:8]
00173c  9b3a2400  slli r21, r8, 2
001740  0b1d5511  add.s r26, r10, r21
001744  ef41cd00  loads.w r3, 12(r26)
001748  1786d100  and r12, r3, r13
00174c  9302ce04  setlt.u r5, r28, r12
001750  3bb00200  bneq r5, zero, 12
001754  9f820100  addli r5, r3, 0
001758  db010000  j 12
00175c  ab024000  lui r5, 1024
001760  97925100  or r5, r3, r5
001764  ef4d8d00  loads.w r27, 8(r26)
001768  1788dd00  and r16, r27, r13
00176c  13040e05  setlt.u r8, r28, r16
001770  3b300400  bneq r8, zero, 12
001774  9f870d00  addli r15, r27, 0
001778  db010000  j 12
00177c  2b044000  lui r8, 1024
001780  97978d00  or r15, r27, r8
001784  ef454d00  loads.w r11, 4(r26)
001788  1784d500  and r8, r11, r13
00178c  93048e04  setlt.u r9, r28, r8
001790  3bb00400  bneq r9, zero, 12
001794  1f890500  addli r18, r11, 0
001798  db010000  j 12
00179c  ab044000  lui r9, 1024
0017a0  17999500  or r18, r11, r9
0017a4  ef440d00  loads.w r9, 0(r26)
0017a8  978bd400  and r23, r9, r13
0017ac  130d7e05  setlt.u r26, r28, r23
0017b0  3b010d00  bneq r26, zero, 64
0017b4  1f8d0400  addli r26, r9, 0
0017b8  938b7805  setlt.u r23, r17, r23
0017bc  3be00b00  bneq r23, zero, 24
0017c0  9bcb0401  srli r23, r9, 16
0017c4  9b8b1b00  andi r23, r23, 1
0017c8  8b947411  add.s r9, r9, r23
0017cc  8b94e410  add.s r9, r9, r14
0017d0  178d4400  and r26, r9, r4
0017d4  13848804  setlt.u r8, r17, r8
0017d8  b7300400  beq r8, zero, 44
0017dc  13840805  setlt.u r8, r17, r16
0017e0  37010400  beq r8, zero, 64
0017e4  1384c804  setlt.u r8, r17, r12
0017e8  bb4c04fe  bneq r8, zero, -208
0017ec  5b0a0000  j 80
0017f0  2b0d4000  lui r26, 1024
0017f4  179da401  or r26, r9, r26
0017f8  938b7805  setlt.u r23, r17, r23
0017fc  379f0bfe  beq r23, zero, -60
001800  dbfaffff  j -44
001804  1bc40501  srli r8, r11, 16
001808  1b041400  andi r8, r8, 1
00180c  0b948510  add.s r8, r11, r8
001810  0b14e410  add.s r8, r8, r14
001814  17094400  and r18, r8, r4
001818  13840805  setlt.u r8, r17, r16
00181c  3b2f04fe  bneq r8, zero, -56
001820  1bc40d01  srli r8, r27, 16
001824  1b041400  andi r8, r8, 1
001828  0b948d10  add.s r8, r27, r8
00182c  0b14e410  add.s r8, r8, r14
001830  97074400  and r15, r8, r4
001834  1384c804  setlt.u r8, r17, r12
001838  bb0b04fe  bneq r8, zero, -288
00183c  9bc20101  srli r5, r3, 16
001840  9b821200  andi r5, r5, 1
001844  8b915110  add.s r3, r3, r5
001848  8b91e110  add.s r3, r3, r14
00184c  97824100  and r5, r3, r4
001850  5bd9ffff  j -312
001854  00200100  mfence { sm }
001858  803a0002  core_id r21
00185c  9f1c0000  addli r25, zero, 1
001860  eb550fff  load.d r[12:13], -16(r30)
001864  6b548ffe  load.d r[9:10], -24(r30)
001868  e341afff  loadli.w r3,  -44(r30)
00186c  37a80100  beq r3, zero, 520
001870  9f017000  addli r3, zero, 56
001874  3d000000  xfence
001878  00a00300  mfence { lm, sm, gm }
00187c  b3820128  zext_int2long r[6:7], r3
001880  5b040000  j 32
001884  9f717000  addli r3, zero, 63
001888  eb538fff  load.d r[8:9], -8(r30)
00188c  1f7c0000  addli r24, zero, 7
001890  b3820128  zext_int2long r[6:7], r3
001894  93a15304  setlt.ul r3, r[8:9], r[6:7]
001898  a7920300  addli.d r[6:7], r[8:9], 1
00189c  37970100  beq r3, zero, 452
0018a0  733c5ffe  store.d r[6:7], -8(r30)
0018a4  17b38203  sll.d r[7:8], r[6:7], r24
0018a8  bb51ab00  bneq r22, r10, 116
0018ac  b3050028  zext_int2long r[12:13], zero
0018b0  5b030000  j 24
0018b4  13a41504  setlt.ul r8, r[12:13], r[2:3]
0018b8  8b113b10  add.s r3, r22, r3
0018bc  a7950500  addli.d r[12:13], r[12:13], 1
0018c0  73e05100  stores.w r5, 0(r3)
0018c4  370f04fe  beq r8, zero, -64
0018c8  0ba46510  add.ul r[9:10], r[12:13], r[7:8]
0018cc  9b312400  slli r3, r8, 2
0018d0  8b123510  add.s r5, r10, r3
0018d4  6fc40200  loads.w r8, 0(r5)
0018d8  9704d400  and r9, r8, r13
0018dc  93029e04  setlt.u r5, r28, r9
0018e0  3bd00200  bneq r5, zero, 20
0018e4  9f020400  addli r5, r8, 0
0018e8  93849804  setlt.u r9, r17, r9
0018ec  3baf04fe  bneq r9, zero, -56
0018f0  db020000  j 20
0018f4  ab024000  lui r5, 1024
0018f8  97125400  or r5, r8, r5
0018fc  93849804  setlt.u r9, r17, r9
001900  bbde04fe  bneq r9, zero, -76
001904  9b420401  srli r5, r8, 16
001908  9b821200  andi r5, r5, 1
00190c  8b125410  add.s r5, r8, r5
001910  8b92e210  add.s r5, r5, r14
001914  97824200  and r5, r5, r4
001918  dbf3ffff  j -100
00191c  330c0028  zext_int2long r[25:26], zero
001920  db040000  j 36
001924  274c0c00  addli.d r[25:26], r[25:26], 4
001928  0b145b11  add.s r8, r22, r21
00192c  93213c01  seteq.d r3, r[25:26], r[20:21]
001930  73665400  stores.w r5, 12(r8)
001934  7364f400  stores.w r15, 8(r8)
001938  73622401  stores.w r18, 4(r8)
00193c  7360a401  stores.w r26, 0(r8)
001940  3b9d01fe  bneq r3, zero, -188
001944  0b246c10  add.ul r[9:10], r[25:26], r[7:8]
001948  9b3a2400  slli r21, r8, 2
00194c  0b1d5511  add.s r26, r10, r21
001950  ef41cd00  loads.w r3, 12(r26)
001954  1786d100  and r12, r3, r13
001958  9302ce04  setlt.u r5, r28, r12
00195c  3bb00200  bneq r5, zero, 12
001960  9f820100  addli r5, r3, 0
001964  db010000  j 12
001968  ab024000  lui r5, 1024
00196c  97925100  or r5, r3, r5
001970  ef4d8d00  loads.w r27, 8(r26)
001974  1788dd00  and r16, r27, r13
001978  13040e05  setlt.u r8, r28, r16
00197c  3b300400  bneq r8, zero, 12
001980  9f870d00  addli r15, r27, 0
001984  db010000  j 12
001988  2b044000  lui r8, 1024
00198c  97978d00  or r15, r27, r8
001990  ef454d00  loads.w r11, 4(r26)
001994  1784d500  and r8, r11, r13
001998  93048e04  setlt.u r9, r28, r8
00199c  3bb00400  bneq r9, zero, 12
0019a0  1f890500  addli r18, r11, 0
0019a4  db010000  j 12
0019a8  ab044000  lui r9, 1024
0019ac  17999500  or r18, r11, r9
0019b0  ef440d00  loads.w r9, 0(r26)
0019b4  978bd400  and r23, r9, r13
0019b8  130d7e05  setlt.u r26, r28, r23
0019bc  3b010d00  bneq r26, zero, 64
0019c0  1f8d0400  addli r26, r9, 0
0019c4  938b7805  setlt.u r23, r17, r23
0019c8  3be00b00  bneq r23, zero, 24
0019cc  9bcb0401  srli r23, r9, 16
0019d0  9b8b1b00  andi r23, r23, 1
0019d4  8b947411  add.s r9, r9, r23
0019d8  8b94e410  add.s r9, r9, r14
0019dc  178d4400  and r26, r9, r4
0019e0  13848804  setlt.u r8, r17, r8
0019e4  b7300400  beq r8, zero, 44
0019e8  13840805  setlt.u r8, r17, r16
0019ec  37010400  beq r8, zero, 64
0019f0  1384c804  setlt.u r8, r17, r12
0019f4  bb4c04fe  bneq r8, zero, -208
0019f8  5b0a0000  j 80
0019fc  2b0d4000  lui r26, 1024
001a00  179da401  or r26, r9, r26
001a04  938b7805  setlt.u r23, r17, r23
001a08  379f0bfe  beq r23, zero, -60
001a0c  dbfaffff  j -44
001a10  1bc40501  srli r8, r11, 16
001a14  1b041400  andi r8, r8, 1
001a18  0b948510  add.s r8, r11, r8
001a1c  0b14e410  add.s r8, r8, r14
001a20  17094400  and r18, r8, r4
001a24  13840805  setlt.u r8, r17, r16
001a28  3b2f04fe  bneq r8, zero, -56
001a2c  1bc40d01  srli r8, r27, 16
001a30  1b041400  andi r8, r8, 1
001a34  0b948d10  add.s r8, r27, r8
001a38  0b14e410  add.s r8, r8, r14
001a3c  97074400  and r15, r8, r4
001a40  1384c804  setlt.u r8, r17, r12
001a44  bb0b04fe  bneq r8, zero, -288
001a48  9bc20101  srli r5, r3, 16
001a4c  9b821200  andi r5, r5, 1
001a50  8b915110  add.s r3, r3, r5
001a54  8b91e110  add.s r3, r3, r14
001a58  97824100  and r5, r3, r4
001a5c  5bd9ffff  j -312
001a60  00200100  mfence { sm }
001a64  803a0002  core_id r21
001a68  9f1c0000  addli r25, zero, 1
001a6c  eb550fff  load.d r[12:13], -16(r30)
001a70  6b548ffe  load.d r[9:10], -24(r30)
001a74  9f70f001  addli r1, zero, 255
001a78  80a20004  csr_set csr5, r1
001a7c  9f300000  addli r1, zero, 3
001a80  00e00200  sync_core
001a84  37de1af2  beq r21, r1, -6252
001a88  6b5b8ffd  load.d r[23:24], -40(r30)
001a8c  bb8e0af2  bneq r21, zero, -6240
001a90  e3007fff  loadli.w r1,  -72(r30)
001a94  1f010007  addli r2, zero, 896
001a98  270d0400  addli.d r[27:28], r[9:10], 0
001a9c  9f078000  addli r15, zero, 64
001aa0  33010128  zext_int2long r[3:4], r2
001aa4  9bb07000  slli r1, r1, 7
001aa8  b3820028  zext_int2long r[6:7], r1
001aac  e3407fff  loadli.w r1,  -68(r30)
001ab0  0ba12240  min.ul r[3:4], r[6:7], r[3:4]
001ab4  9bb06000  slli r1, r1, 6
001ab8  b3930028  sext_int2long r[8:9], r1
001abc  a7000101  addli.d r[2:3], r[3:4], 128
001ac0  9f112000  addli r3, zero, 17
001ac4  8bb5b340  min.sl r[12:13], r[8:9], r[12:13]
001ac8  8ba05048  max.ul r[2:3], r[2:3], r[6:7]
001acc  a7858500  addli.d r[12:13], r[12:13], 64
001ad0  8bb05018  sub.sl r[2:3], r[2:3], r[6:7]
001ad4  8bb27548  max.sl r[6:7], r[12:13], r[8:9]
001ad8  8ba03041  min.ul r[2:3], r[2:3], r[20:21]
001adc  b3850728  zext_int2long r[12:13], r15
001ae0  6b590f01  load.d r[19:20], 16(r30)
001ae4  8bb27218  sub.sl r[6:7], r[6:7], r[8:9]
001ae8  eb530ffc  load.d r[8:9], -64(r30)
001aec  9ff43000  addli r9, r1, 31
001af0  9bb01000  slli r1, r1, 1
001af4  1f010001  addli r2, zero, 128
001af8  8bb2b240  min.sl r[6:7], r[6:7], r[12:13]
001afc  9f550000  addli r11, zero, 5
001b00  9b80e003  andi r1, r1, 62
001b04  97b33302  sll.d r[8:9], r[8:9], r3
001b08  9f411000  addli r3, zero, 12
001b0c  7d900100  xwait r3, 0
001b10  ab010500  lui r3, 80
001b14  8b237910  add.ul r[8:9], r[19:20], r[8:9]
001b18  1d800500  lock zero, r11
001b1c  958c0c00  dma_cfg r25, r25, zero, 0
001b20  9b910104  ori r3, r3, 64
001b24  8ba3a311  add.ul r[8:9], r[8:9], r[27:28]
001b28  15800c02  dma_cfg zero, r25, zero, 1
001b2c  8b113510  add.s r3, r10, r3
001b30  15040004  dma_cfg r8, zero, zero, 2
001b34  9583f106  dma_cfg r7, r3, r15, 3
001b38  9bc15400  srli r3, r9, 5
001b3c  95073108  dma_cfg r15, r2, r3, 4
001b40  1f010004  addli r2, zero, 512
001b44  9f010010  addli r3, zero, 2048
001b48  9501510a  dma_cfg r3, r2, r5, 5
001b4c  15001010  dma_cfg zero, zero, r1, 8
001b50  35000000  dma_run zero
001b54  1500900b  dma_cfg zero, zero, r25, 5
001b58  9f501000  addli r1, zero, 13
001b5c  15000010  dma_cfg zero, zero, zero, 8
001b60  1d900500  unlock r11
001b64  7d800000  xsignal r1, 0
001b68  dbd8fcff  j -6460
001b6c  7d000000  xsignal zero, 0
001b70  bbe00a00  bneq r21, zero, 56
001b74  9f200000  addli r1, zero, 2
001b78  7d100000  xwait zero, 0
001b7c  7d100000  xwait zero, 0
001b80  7d100000  xwait zero, 0
001b84  7d100000  xwait zero, 0
001b88  7d100000  xwait zero, 0
001b8c  7d100000  xwait zero, 0
001b90  7d100000  xwait zero, 0
001b94  7d100000  xwait zero, 0
001b98  1d800000  lock zero, r1
001b9c  0d000020  ew_cfg zero, zero, zero, 16
001ba0  1d900000  unlock r1
001ba4  7d400000  xsignal_mode_cfg zero
001ba8  9f8ece00  addli sp, sp, 96
001bac  00a00300  mfence { lm, sm, gm }
001bb0  00100000  exit
001bb4  00100000  exit
001bb8  00100000  exit
001bbc  00100000  exit
001bc0  00100000  exit
001bc4  00100000  exit
001bc8  00100000  exit
001bcc  00100000  exit
001bd0  00100000  exit
001bd4  00100000  exit
001bd8  00100000  exit
001bdc  00100000  exit
001be0  00100000  exit
001be4  00100000  exit
001be8  00100000  exit
001bec  00100000  exit
001bf0  00100000  exit
001bf4  00100000  exit
001bf8  00100000  exit
001bfc  00100000  exit
001c00  00100000  exit
001c04  00100000  exit
001c08  00100000  exit
001c0c  00100000  exit
001c10  00100000  exit
001c14  00100000  exit
001c18  00100000  exit
001c1c  00100000  exit
001c20  00100000  exit
001c24  00100000  exit
001c28  00100000  exit
001c2c  00100000  exit
001c30  00100000  exit
001c34  00100000  exit
001c38  00100000  exit
001c3c  00100000  exit
001c40  00100000  exit
001c44  00100000  exit
001c48  00100000  exit
001c4c  00100000  exit
001c50  00100000  exit
001c54  00100000  exit
001c58  00100000  exit
001c5c  00100000  exit
001c60  00100000  exit
001c64  00100000  exit
001c68  00100000  exit
001c6c  00100000  exit
001c70  00100000  exit
001c74  00100000  exit
001c78  00100000  exit
001c7c  00100000  exit
001c80  00100000  exit
001c84  00100000  exit
001c88  00100000  exit
001c8c  00100000  exit
001c90  00100000  exit
001c94  00100000  exit
001c98  00100000  exit
001c9c  00100000  exit
001ca0  00100000  exit
001ca4  00100000  exit
001ca8  00100000  exit
001cac  00100000  exit
001cb0  00100000  exit
001cb4  00100000  exit
001cb8  00100000  exit
001cbc  00100000  exit
001cc0  00100000  exit
001cc4  00100000  exit
001cc8  00100000  exit
001ccc  00100000  exit
001cd0  00100000  exit
001cd4  00100000  exit
001cd8  00100000  exit
001cdc  00100000  exit
001ce0  00100000  exit
001ce4  00100000  exit
001ce8  00100000  exit
001cec  00100000  exit
001cf0  00100000  exit
001cf4  00100000  exit
001cf8  00100000  exit
001cfc  00100000  exit
001d00  00100000  exit
001d04  00100000  exit
001d08  00100000  exit
001d0c  00100000  exit
001d10  00100000  exit
001d14  00100000  exit
001d18  00100000  exit
001d1c  00100000  exit
001d20  00100000  exit
001d24  00100000  exit
001d28  00100000  exit
001d2c  00100000  exit
001d30  00100000  exit
001d34  00100000  exit
001d38  00100000  exit
001d3c  00100000  exit
001d40  00100000  exit
001d44  00100000  exit
001d48  00100000  exit
001d4c  00100000  exit
001d50  00100000  exit
001d54  00100000  exit
001d58  00100000  exit
001d5c  00100000  exit
001d60  00100000  exit
001d64  00100000  exit
001d68  00100000  exit
001d6c  00100000  exit
001d70  00100000  exit
001d74  00100000  exit
001d78  00100000  exit
001d7c  00100000  exit
001d80  00100000  exit
001d84  00100000  exit
001d88  00100000  exit
001d8c  00100000  exit
001d90  00100000  exit
001d94  00100000  exit
001d98  00100000  exit
001d9c  00100000  exit
001da0  00100000  exit
001da4  00100000  exit
001da8  00100000  exit
001dac  00100000  exit
001db0  00100000  exit
001db4  00100000  exit
001db8  00100000  exit
001dbc  00100000  exit
001dc0  00100000  exit
001dc4  00100000  exit
001dc8  00100000  exit
001dcc  00100000  exit
001dd0  00100000  exit
001dd4  00100000  exit
001dd8  00100000  exit
001ddc  00100000  exit
001de0  00100000  exit
001de4  00100000  exit
001de8  00100000  exit
001dec  00100000  exit
001df0  00100000  exit
