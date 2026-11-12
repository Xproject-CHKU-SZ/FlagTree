; SHA-256 aca9d330acdb50cc3abff6efaf4e500148c1372a91257b86a022b882252f0bb4
; P800 SDNN · XTDK LLVM 19 · 1921 / 1921 words decoded
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
0000bc  00360002  core_id r12
0000c0  1f8fce00  addli r30, sp, 96
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600600  beq r12, zero, 24
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
0001b4  4b27110c  ble.s r2, r1, 6600
0001b8  33110128  sext_int2long r[3:4], r2
0001bc  33990028  sext_int2long r[19:20], r1
0001c0  9f4a0000  addli r21, zero, 4
0001c4  1f0b8000  addli r22, zero, 64
0001c8  9f750000  addli r11, zero, 7
0001cc  1f6a0000  addli r20, zero, 6
0001d0  2b0e807f  lui r28, 522240
0001d4  2b02ffff  lui r4, 1048560
0001d8  73382ffa  store.d r[3:4], -80(r30)
0001dc  1f71f00f  addli r2, zero, 2047
0001e0  ab80ffff  lui r1, 1048568
0001e4  73341ffa  store.d r[2:3], -88(r30)
0001e8  abf0ff7f  lui r1, 524287
0001ec  2bf17f7f  lui r2, 522239
0001f0  9b96f0ff  ori r13, r1, 4095
0001f4  ab700000  lui r1, 7
0001f8  9b18f1ff  ori r17, r2, 4095
0001fc  1b97f0ff  ori r14, r1, 4095
000200  b3000028  zext_int2long r[2:3], zero
000204  73301ffa  store.d r[2:3], -96(r30)
000208  1f010000  addli r2, zero, 0
00020c  db070000  j 60
000210  9f301000  addli r1, zero, 11
000214  7d800000  xsignal r1, 0
000218  9f401000  addli r1, zero, 12
00021c  7d800000  xsignal r1, 0
000220  6b598ffd  load.d r[19:20], -40(r30)
000224  eb500ffb  load.d r[2:3], -80(r30)
000228  9f4a0000  addli r21, zero, 4
00022c  1f0b8000  addli r22, zero, 64
000230  1f6a0000  addli r20, zero, 6
000234  27190900  addli.d r[19:20], r[19:20], 1
000238  93301904  setlt.sl r1, r[19:20], r[2:3]
00023c  6341cfff  loadli.w r2,  -28(r30)
000240  1f110100  addli r2, r2, 1
000244  b7e4000c  beq r1, zero, 6456
000248  e3004f00  loadli.w r1,  32(r30)
00024c  674e2ffe  storeli.w r2, -28(r30)
000250  63413f00  loadli.w r2,  28(r30)
000254  9f021000  addli r5, zero, 8
000258  9f3c0000  addli r25, zero, 3
00025c  1f1c0000  addli r24, zero, 1
000260  8b101930  div.s r1, r18, r1
000264  0b912030  div.s r2, r1, r2
000268  8b1d6131  div.s r27, r2, r22
00026c  9bb03d00  slli r1, r27, 3
000270  8b911218  sub.s r3, r5, r1
000274  8b945140  min.s r9, r3, r5
000278  8b119138  mod.s r3, r2, r9
00027c  8b911110  add.s r3, r3, r1
000280  93803504  setlt.u r1, r11, r3
000284  b3820128  zext_int2long r[6:7], r3
000288  e74b3ffe  storeli.w r3, -68(r30)
00028c  9f411000  addli r3, zero, 12
000290  17b53202  sll.d r[11:12], r[6:7], r3
000294  73305ffc  store.d r[6:7], -64(r30)
000298  3bb00000  bneq r1, zero, 12
00029c  eb570ffa  load.d r[16:17], -96(r30)
0002a0  db010000  j 12
0002a4  eb528ffa  load.d r[6:7], -88(r30)
0002a8  97075502  and.d r[16:17], r[11:12], r[6:7]
0002ac  634dcfff  loadli.w r26,  -28(r30)
0002b0  9f018003  addli r3, zero, 448
0002b4  733c2ffd  store.d r[19:20], -40(r30)
0002b8  b3830128  zext_int2long r[8:9], r3
0002bc  ab010200  lui r3, 32
0002c0  0b135d39  mod.s r6, r26, r21
0002c4  73387ffe  store.d r[8:9], -16(r30)
0002c8  9b30e300  slli r1, r6, 14
0002cc  8b9b3010  add.s r23, r1, r3
0002d0  3b3b8601  bneq r12, r24, 716
0002d4  0b35f518  sub.sl r[11:12], r[11:12], r[16:17]
0002d8  6b590ffc  load.d r[19:20], -64(r30)
0002dc  9f521000  addli r5, zero, 13
0002e0  17554503  sra.d r[11:12], r[11:12], r20
0002e4  17395902  sll.d r[19:20], r[19:20], r5
0002e8  8b377540  min.sl r[16:17], r[11:12], r[8:9]
0002ec  0bb5a718  sub.sl r[11:12], r[16:17], r[11:12]
0002f0  eb570f00  load.d r[16:17], 0(r30)
0002f4  1f058500  addli r10, r10, 64
0002f8  9f750000  addli r11, zero, 7
0002fc  0ba92711  add.ul r[19:20], r[16:17], r[19:20]
000300  1f380000  addli r16, zero, 3
000304  7d100800  xwait r16, 0
000308  bf14a801  blt.s r16, r26, 292
00030c  9f530000  addli r7, zero, 5
000310  9f170000  addli r15, zero, 1
000314  1f2c0000  addli r24, zero, 2
000318  9f011000  addli r3, zero, 8
00031c  1d800300  lock zero, r7
000320  15000014  dma_cfg zero, zero, zero, 10
000324  1500f014  dma_cfg zero, zero, r15, 10
000328  15008015  dma_cfg zero, zero, r24, 10
00032c  15000015  dma_cfg zero, zero, r16, 10
000330  15005015  dma_cfg zero, zero, r21, 10
000334  15007014  dma_cfg zero, zero, r7, 10
000338  15004015  dma_cfg zero, zero, r20, 10
00033c  1500b014  dma_cfg zero, zero, r11, 10
000340  15003014  dma_cfg zero, zero, r3, 10
000344  9f111000  addli r3, zero, 9
000348  15003014  dma_cfg zero, zero, r3, 10
00034c  9f211000  addli r3, zero, 10
000350  15003014  dma_cfg zero, zero, r3, 10
000354  9f311000  addli r3, zero, 11
000358  15003014  dma_cfg zero, zero, r3, 10
00035c  9f411000  addli r3, zero, 12
000360  15003014  dma_cfg zero, zero, r3, 10
000364  9f611000  addli r3, zero, 14
000368  15005014  dma_cfg zero, zero, r5, 10
00036c  15003014  dma_cfg zero, zero, r3, 10
000370  9f711000  addli r3, zero, 15
000374  15003014  dma_cfg zero, zero, r3, 10
000378  9f012000  addli r3, zero, 16
00037c  15003014  dma_cfg zero, zero, r3, 10
000380  9f112000  addli r3, zero, 17
000384  15003014  dma_cfg zero, zero, r3, 10
000388  9f212000  addli r3, zero, 18
00038c  15003014  dma_cfg zero, zero, r3, 10
000390  9f312000  addli r3, zero, 19
000394  15003014  dma_cfg zero, zero, r3, 10
000398  9f412000  addli r3, zero, 20
00039c  15003014  dma_cfg zero, zero, r3, 10
0003a0  9f512000  addli r3, zero, 21
0003a4  15003014  dma_cfg zero, zero, r3, 10
0003a8  9f612000  addli r3, zero, 22
0003ac  15003014  dma_cfg zero, zero, r3, 10
0003b0  9f712000  addli r3, zero, 23
0003b4  15003014  dma_cfg zero, zero, r3, 10
0003b8  9f013000  addli r3, zero, 24
0003bc  15003014  dma_cfg zero, zero, r3, 10
0003c0  9f113000  addli r3, zero, 25
0003c4  15003014  dma_cfg zero, zero, r3, 10
0003c8  9f213000  addli r3, zero, 26
0003cc  15003014  dma_cfg zero, zero, r3, 10
0003d0  9f313000  addli r3, zero, 27
0003d4  15003014  dma_cfg zero, zero, r3, 10
0003d8  9f413000  addli r3, zero, 28
0003dc  15003014  dma_cfg zero, zero, r3, 10
0003e0  9f513000  addli r3, zero, 29
0003e4  15003014  dma_cfg zero, zero, r3, 10
0003e8  9f613000  addli r3, zero, 30
0003ec  15003014  dma_cfg zero, zero, r3, 10
0003f0  9f713000  addli r3, zero, 31
0003f4  15003014  dma_cfg zero, zero, r3, 10
0003f8  9f010001  addli r3, zero, 128
0003fc  95870700  dma_cfg r15, r15, zero, 0
000400  95070002  dma_cfg r15, zero, zero, 1
000404  15000004  dma_cfg zero, zero, zero, 2
000408  950b6007  dma_cfg r23, zero, r22, 3
00040c  95018009  dma_cfg r3, zero, r24, 4
000410  9f010002  addli r3, zero, 256
000414  9501600b  dma_cfg r3, zero, r22, 5
000418  15000010  dma_cfg zero, zero, zero, 8
00041c  35000000  dma_run zero
000420  1500f00a  dma_cfg zero, zero, r15, 5
000424  15000010  dma_cfg zero, zero, zero, 8
000428  1d900300  unlock r7
00042c  ab010200  lui r3, 32
000430  e74c0ffe  storeli.w zero, -52(r30)
000434  9f170000  addli r15, zero, 1
000438  1f0c0001  addli r24, zero, 128
00043c  9f0c0002  addli r25, zero, 256
000440  9f630000  addli r7, zero, 6
000444  1d800a00  lock zero, r21
000448  9b910104  ori r3, r3, 64
00044c  95870700  dma_cfg r15, r15, zero, 0
000450  15800904  dma_cfg zero, r19, zero, 2
000454  8b913010  add.s r3, r1, r3
000458  95016907  dma_cfg r3, r18, r22, 3
00045c  9f290000  addli r19, zero, 2
000460  1f590000  addli r18, zero, 5
000464  9f011000  addli r3, zero, 8
000468  150c3b09  dma_cfg r24, r22, r19, 4
00046c  950cac0a  dma_cfg r25, r24, r10, 5
000470  15000010  dma_cfg zero, zero, zero, 8
000474  35000000  dma_run zero
000478  1500f00a  dma_cfg zero, zero, r15, 5
00047c  15000010  dma_cfg zero, zero, zero, 8
000480  1d900a00  unlock r21
000484  1d000900  lock zero, r18
000488  15000014  dma_cfg zero, zero, zero, 10
00048c  1500f014  dma_cfg zero, zero, r15, 10
000490  15003015  dma_cfg zero, zero, r19, 10
000494  15000015  dma_cfg zero, zero, r16, 10
000498  15005015  dma_cfg zero, zero, r21, 10
00049c  15002015  dma_cfg zero, zero, r18, 10
0004a0  15004015  dma_cfg zero, zero, r20, 10
0004a4  1500b014  dma_cfg zero, zero, r11, 10
0004a8  15003014  dma_cfg zero, zero, r3, 10
0004ac  9f111000  addli r3, zero, 9
0004b0  15003014  dma_cfg zero, zero, r3, 10
0004b4  9f211000  addli r3, zero, 10
0004b8  15003014  dma_cfg zero, zero, r3, 10
0004bc  9f311000  addli r3, zero, 11
0004c0  15003014  dma_cfg zero, zero, r3, 10
0004c4  9f411000  addli r3, zero, 12
0004c8  15003014  dma_cfg zero, zero, r3, 10
0004cc  9f611000  addli r3, zero, 14
0004d0  15005014  dma_cfg zero, zero, r5, 10
0004d4  15003014  dma_cfg zero, zero, r3, 10
0004d8  9f711000  addli r3, zero, 15
0004dc  15003014  dma_cfg zero, zero, r3, 10
0004e0  9f012000  addli r3, zero, 16
0004e4  15003014  dma_cfg zero, zero, r3, 10
0004e8  9f112000  addli r3, zero, 17
0004ec  15003014  dma_cfg zero, zero, r3, 10
0004f0  9f212000  addli r3, zero, 18
0004f4  15003014  dma_cfg zero, zero, r3, 10
0004f8  9f312000  addli r3, zero, 19
0004fc  15003014  dma_cfg zero, zero, r3, 10
000500  9f412000  addli r3, zero, 20
000504  15003014  dma_cfg zero, zero, r3, 10
000508  9f512000  addli r3, zero, 21
00050c  15003014  dma_cfg zero, zero, r3, 10
000510  9f612000  addli r3, zero, 22
000514  15003014  dma_cfg zero, zero, r3, 10
000518  9f712000  addli r3, zero, 23
00051c  15003014  dma_cfg zero, zero, r3, 10
000520  9f013000  addli r3, zero, 24
000524  15003014  dma_cfg zero, zero, r3, 10
000528  9f113000  addli r3, zero, 25
00052c  15003014  dma_cfg zero, zero, r3, 10
000530  9f213000  addli r3, zero, 26
000534  15003014  dma_cfg zero, zero, r3, 10
000538  9f313000  addli r3, zero, 27
00053c  15003014  dma_cfg zero, zero, r3, 10
000540  9f413000  addli r3, zero, 28
000544  15003014  dma_cfg zero, zero, r3, 10
000548  9f513000  addli r3, zero, 29
00054c  15003014  dma_cfg zero, zero, r3, 10
000550  9f613000  addli r3, zero, 30
000554  15003014  dma_cfg zero, zero, r3, 10
000558  9f713000  addli r3, zero, 31
00055c  15003014  dma_cfg zero, zero, r3, 10
000560  95870700  dma_cfg r15, r15, zero, 0
000564  95070002  dma_cfg r15, zero, zero, 1
000568  9f270000  addli r15, zero, 2
00056c  15000004  dma_cfg zero, zero, zero, 2
000570  950b6007  dma_cfg r23, zero, r22, 3
000574  150c3009  dma_cfg r24, zero, r19, 4
000578  950ca00a  dma_cfg r25, zero, r10, 5
00057c  1f150000  addli r10, zero, 1
000580  15000010  dma_cfg zero, zero, zero, 8
000584  35000000  dma_run zero
000588  1500a00a  dma_cfg zero, zero, r10, 5
00058c  15000010  dma_cfg zero, zero, zero, 8
000590  1d100900  unlock r18
000594  7d800900  xsignal r19, 0
000598  5b0c0000  j 96
00059c  9f220000  addli r5, zero, 2
0005a0  3b115600  bneq r12, r5, 68
0005a4  9f510000  addli r3, zero, 5
0005a8  7d900200  xwait r5, 0
0005ac  9f270000  addli r15, zero, 2
0005b0  7d900100  xwait r3, 0
0005b4  1d000000  lock zero, zero
0005b8  9f110000  addli r3, zero, 1
0005bc  81020000  ds_cfg r5, zero, 0
0005c0  010b0002  ds_cfg r22, zero, 1
0005c4  010b001c  ds_cfg r22, zero, 14
0005c8  010b001a  ds_cfg r22, zero, 13
0005cc  a1906b03  shuffle_batch r1, r23, r22, 1
0005d0  1d100000  unlock zero
0005d4  7d800c00  xsignal r25, 0
0005d8  e74c3ffe  storeli.w r3, -52(r30)
0005dc  7d800a00  xsignal r21, 0
0005e0  db010000  j 12
0005e4  9f270000  addli r15, zero, 2
0005e8  e74c0ffe  storeli.w zero, -52(r30)
0005ec  9f750000  addli r11, zero, 7
0005f0  9f630000  addli r7, zero, 6
0005f4  1f150000  addli r10, zero, 1
0005f8  9bb16d00  slli r3, r27, 6
0005fc  1b3af300  slli r20, r6, 15
000600  6b590fff  load.d r[19:20], -16(r30)
000604  0b113118  sub.s r2, r2, r3
000608  0b119130  div.s r2, r2, r9
00060c  e70b2ffe  storeli.w r2, -72(r30)
000610  33010128  zext_int2long r[3:4], r2
000614  9732b102  sll.d r[6:7], r[3:4], r11
000618  2b010300  lui r2, 48
00061c  0b112a10  add.s r2, r20, r2
000620  17b4a202  sll.d r[9:10], r[6:7], r10
000624  3b6c7600  bneq r12, r7, 792
000628  eb528f00  load.d r[6:7], 8(r30)
00062c  7d900500  xwait r11, 0
000630  e340cfff  loadli.w r1,  -28(r30)
000634  9f310000  addli r3, zero, 3
000638  8ba28210  add.ul r[6:7], r[6:7], r[9:10]
00063c  bf941100  blt.s r3, r1, 292
000640  9f530000  addli r7, zero, 5
000644  9f600000  addli r1, zero, 6
000648  1d800300  lock zero, r7
00064c  15000014  dma_cfg zero, zero, zero, 10
000650  1500a014  dma_cfg zero, zero, r10, 10
000654  1500f014  dma_cfg zero, zero, r15, 10
000658  15003014  dma_cfg zero, zero, r3, 10
00065c  15005015  dma_cfg zero, zero, r21, 10
000660  15007014  dma_cfg zero, zero, r7, 10
000664  15001014  dma_cfg zero, zero, r1, 10
000668  9f001000  addli r1, zero, 8
00066c  1500b014  dma_cfg zero, zero, r11, 10
000670  15001014  dma_cfg zero, zero, r1, 10
000674  9f101000  addli r1, zero, 9
000678  15001014  dma_cfg zero, zero, r1, 10
00067c  9f201000  addli r1, zero, 10
000680  15001014  dma_cfg zero, zero, r1, 10
000684  9f301000  addli r1, zero, 11
000688  15001014  dma_cfg zero, zero, r1, 10
00068c  9f401000  addli r1, zero, 12
000690  15001014  dma_cfg zero, zero, r1, 10
000694  9f501000  addli r1, zero, 13
000698  15001014  dma_cfg zero, zero, r1, 10
00069c  9f601000  addli r1, zero, 14
0006a0  15001014  dma_cfg zero, zero, r1, 10
0006a4  9f701000  addli r1, zero, 15
0006a8  15001014  dma_cfg zero, zero, r1, 10
0006ac  9f002000  addli r1, zero, 16
0006b0  15001014  dma_cfg zero, zero, r1, 10
0006b4  9f102000  addli r1, zero, 17
0006b8  15001014  dma_cfg zero, zero, r1, 10
0006bc  9f202000  addli r1, zero, 18
0006c0  15001014  dma_cfg zero, zero, r1, 10
0006c4  9f302000  addli r1, zero, 19
0006c8  15001014  dma_cfg zero, zero, r1, 10
0006cc  9f402000  addli r1, zero, 20
0006d0  15001014  dma_cfg zero, zero, r1, 10
0006d4  9f502000  addli r1, zero, 21
0006d8  15001014  dma_cfg zero, zero, r1, 10
0006dc  9f602000  addli r1, zero, 22
0006e0  15001014  dma_cfg zero, zero, r1, 10
0006e4  9f702000  addli r1, zero, 23
0006e8  15001014  dma_cfg zero, zero, r1, 10
0006ec  9f003000  addli r1, zero, 24
0006f0  15001014  dma_cfg zero, zero, r1, 10
0006f4  9f103000  addli r1, zero, 25
0006f8  15001014  dma_cfg zero, zero, r1, 10
0006fc  9f203000  addli r1, zero, 26
000700  15001014  dma_cfg zero, zero, r1, 10
000704  9f303000  addli r1, zero, 27
000708  15001014  dma_cfg zero, zero, r1, 10
00070c  9f403000  addli r1, zero, 28
000710  15001014  dma_cfg zero, zero, r1, 10
000714  9f503000  addli r1, zero, 29
000718  15001014  dma_cfg zero, zero, r1, 10
00071c  9f603000  addli r1, zero, 30
000720  15001014  dma_cfg zero, zero, r1, 10
000724  9f703000  addli r1, zero, 31
000728  15001014  dma_cfg zero, zero, r1, 10
00072c  9f000001  addli r1, zero, 128
000730  15050500  dma_cfg r10, r10, zero, 0
000734  15050002  dma_cfg r10, zero, zero, 1
000738  15000004  dma_cfg zero, zero, zero, 2
00073c  15016007  dma_cfg r2, zero, r22, 3
000740  95005009  dma_cfg r1, zero, r21, 4
000744  9f000004  addli r1, zero, 512
000748  9500600b  dma_cfg r1, zero, r22, 5
00074c  15000010  dma_cfg zero, zero, zero, 8
000750  35000000  dma_run zero
000754  1500a00a  dma_cfg zero, zero, r10, 5
000758  15000010  dma_cfg zero, zero, zero, 8
00075c  1d900300  unlock r7
000760  ab000300  lui r1, 48
000764  670e0ffe  storeli.w zero, -32(r30)
000768  674d0ffe  storeli.w zero, -44(r30)
00076c  670d0ffe  storeli.w zero, -48(r30)
000770  9f030004  addli r7, zero, 512
000774  1d800a00  lock zero, r21
000778  9b900004  ori r1, r1, 64
00077c  15050500  dma_cfg r10, r10, zero, 0
000780  15000304  dma_cfg zero, r6, zero, 2
000784  8b101a10  add.s r1, r20, r1
000788  95806207  dma_cfg r1, r5, r22, 3
00078c  1f030001  addli r6, zero, 128
000790  9f000010  addli r1, zero, 2048
000794  9f520000  addli r5, zero, 5
000798  15035b09  dma_cfg r6, r22, r21, 4
00079c  9583600b  dma_cfg r7, r1, r22, 5
0007a0  9f001000  addli r1, zero, 8
0007a4  15000010  dma_cfg zero, zero, zero, 8
0007a8  35000000  dma_run zero
0007ac  1500a00a  dma_cfg zero, zero, r10, 5
0007b0  15000010  dma_cfg zero, zero, zero, 8
0007b4  1d900a00  unlock r21
0007b8  1d800200  lock zero, r5
0007bc  15000014  dma_cfg zero, zero, zero, 10
0007c0  1500a014  dma_cfg zero, zero, r10, 10
0007c4  1500f014  dma_cfg zero, zero, r15, 10
0007c8  15003014  dma_cfg zero, zero, r3, 10
0007cc  9f610000  addli r3, zero, 6
0007d0  15005015  dma_cfg zero, zero, r21, 10
0007d4  15005014  dma_cfg zero, zero, r5, 10
0007d8  15003014  dma_cfg zero, zero, r3, 10
0007dc  1500b014  dma_cfg zero, zero, r11, 10
0007e0  15001014  dma_cfg zero, zero, r1, 10
0007e4  9f101000  addli r1, zero, 9
0007e8  15001014  dma_cfg zero, zero, r1, 10
0007ec  9f201000  addli r1, zero, 10
0007f0  15001014  dma_cfg zero, zero, r1, 10
0007f4  9f301000  addli r1, zero, 11
0007f8  15001014  dma_cfg zero, zero, r1, 10
0007fc  9f401000  addli r1, zero, 12
000800  15001014  dma_cfg zero, zero, r1, 10
000804  9f501000  addli r1, zero, 13
000808  15001014  dma_cfg zero, zero, r1, 10
00080c  9f601000  addli r1, zero, 14
000810  15001014  dma_cfg zero, zero, r1, 10
000814  9f701000  addli r1, zero, 15
000818  15001014  dma_cfg zero, zero, r1, 10
00081c  9f002000  addli r1, zero, 16
000820  15001014  dma_cfg zero, zero, r1, 10
000824  9f102000  addli r1, zero, 17
000828  15001014  dma_cfg zero, zero, r1, 10
00082c  9f202000  addli r1, zero, 18
000830  15001014  dma_cfg zero, zero, r1, 10
000834  9f302000  addli r1, zero, 19
000838  15001014  dma_cfg zero, zero, r1, 10
00083c  9f402000  addli r1, zero, 20
000840  15001014  dma_cfg zero, zero, r1, 10
000844  9f502000  addli r1, zero, 21
000848  15001014  dma_cfg zero, zero, r1, 10
00084c  9f602000  addli r1, zero, 22
000850  15001014  dma_cfg zero, zero, r1, 10
000854  9f702000  addli r1, zero, 23
000858  15001014  dma_cfg zero, zero, r1, 10
00085c  9f003000  addli r1, zero, 24
000860  15001014  dma_cfg zero, zero, r1, 10
000864  9f103000  addli r1, zero, 25
000868  15001014  dma_cfg zero, zero, r1, 10
00086c  9f203000  addli r1, zero, 26
000870  15001014  dma_cfg zero, zero, r1, 10
000874  9f303000  addli r1, zero, 27
000878  15001014  dma_cfg zero, zero, r1, 10
00087c  9f403000  addli r1, zero, 28
000880  15001014  dma_cfg zero, zero, r1, 10
000884  9f503000  addli r1, zero, 29
000888  15001014  dma_cfg zero, zero, r1, 10
00088c  9f603000  addli r1, zero, 30
000890  15001014  dma_cfg zero, zero, r1, 10
000894  9f703000  addli r1, zero, 31
000898  15001014  dma_cfg zero, zero, r1, 10
00089c  15050500  dma_cfg r10, r10, zero, 0
0008a0  15050002  dma_cfg r10, zero, zero, 1
0008a4  15000004  dma_cfg zero, zero, zero, 2
0008a8  15016007  dma_cfg r2, zero, r22, 3
0008ac  15035009  dma_cfg r6, zero, r21, 4
0008b0  9503600b  dma_cfg r7, zero, r22, 5
0008b4  15000010  dma_cfg zero, zero, zero, 8
0008b8  35000000  dma_run zero
0008bc  1500a00a  dma_cfg zero, zero, r10, 5
0008c0  15000010  dma_cfg zero, zero, zero, 8
0008c4  1d900200  unlock r5
0008c8  7d800100  xsignal r3, 0
0008cc  ab000500  lui r1, 80
0008d0  3d000000  xfence
0008d4  00a00300  mfence { lm, sm, gm }
0008d8  0b151a10  add.s r10, r20, r1
0008dc  9f70f001  addli r1, zero, 255
0008e0  80a20004  csr_set csr5, r1
0008e4  9f000001  addli r1, zero, 128
0008e8  00e00200  sync_core
0008ec  73348ffe  store.d r[9:10], -24(r30)
0008f0  b38a0028  zext_int2long r[22:23], r1
0008f4  9f70f000  addli r1, zero, 127
0008f8  b3800028  zext_int2long r[2:3], r1
0008fc  b7020600  beq r12, zero, 160
000900  9f110000  addli r3, zero, 1
000904  376a3600  beq r12, r3, 664
000908  e3419fff  loadli.w r3,  -52(r30)
00090c  3be20102  bneq r3, zero, 1176
000910  e301cfff  loadli.w r3,  -32(r30)
000914  3bea0102  bneq r3, zero, 1688
000918  e301afff  loadli.w r3,  -48(r30)
00091c  3be20104  bneq r3, zero, 2200
000920  9f510000  addli r3, zero, 5
000924  376a3604  beq r12, r3, 2712
000928  9f610000  addli r3, zero, 6
00092c  37623606  beq r12, r3, 3224
000930  e341afff  loadli.w r3,  -44(r30)
000934  3bea0106  bneq r3, zero, 3736
000938  db120200  j 4244
00093c  9f310000  addli r3, zero, 3
000940  37283608  beq r12, r3, 4616
000944  37165609  beq r12, r21, 4484
000948  bb18b608  bneq r12, r11, 4644
00094c  9f600000  addli r1, zero, 6
000950  670e0ffe  storeli.w zero, -32(r30)
000954  670d0ffe  storeli.w zero, -48(r30)
000958  7d900000  xwait r1, 0
00095c  9f101000  addli r1, zero, 9
000960  7d900000  xwait r1, 0
000964  1d000000  lock zero, zero
000968  9f000001  addli r1, zero, 128
00096c  81070000  ds_cfg r15, zero, 0
000970  81000002  ds_cfg r1, zero, 1
000974  010b001c  ds_cfg r22, zero, 14
000978  8100001a  ds_cfg r1, zero, 13
00097c  9f100000  addli r1, zero, 1
000980  410a6105  shuffle_coa r20, r2, r22, 2
000984  1d100000  unlock zero
000988  7d800500  xsignal r11, 0
00098c  674d1ffe  storeli.w r1, -44(r30)
000990  9f001000  addli r1, zero, 8
000994  7d800000  xsignal r1, 0
000998  dbe6ffff  j -204
00099c  3d000000  xfence
0009a0  b3020028  zext_int2long r[6:7], zero
0009a4  00a00300  mfence { lm, sm, gm }
0009a8  db030000  j 28
0009ac  9f750000  addli r11, zero, 7
0009b0  eb538fff  load.d r[8:9], -8(r30)
0009b4  b3820528  zext_int2long r[6:7], r11
0009b8  93a15304  setlt.ul r3, r[8:9], r[6:7]
0009bc  a7920300  addli.d r[6:7], r[8:9], 1
0009c0  37970100  beq r3, zero, 452
0009c4  733c5ffe  store.d r[6:7], -8(r30)
0009c8  17b3b202  sll.d r[7:8], r[6:7], r11
0009cc  bb514501  bneq r10, r20, 116
0009d0  b3050028  zext_int2long r[12:13], zero
0009d4  5b030000  j 24
0009d8  13a41504  setlt.ul r8, r[12:13], r[2:3]
0009dc  8b113510  add.s r3, r10, r3
0009e0  a7950500  addli.d r[12:13], r[12:13], 1
0009e4  73e05100  stores.w r5, 0(r3)
0009e8  371f04fe  beq r8, zero, -60
0009ec  0ba46510  add.ul r[9:10], r[12:13], r[7:8]
0009f0  9b312400  slli r3, r8, 2
0009f4  8b123a10  add.s r5, r20, r3
0009f8  6fc40200  loads.w r8, 0(r5)
0009fc  9704d400  and r9, r8, r13
000a00  93029e04  setlt.u r5, r28, r9
000a04  3bd00200  bneq r5, zero, 20
000a08  9f020400  addli r5, r8, 0
000a0c  93849804  setlt.u r9, r17, r9
000a10  3baf04fe  bneq r9, zero, -56
000a14  db020000  j 20
000a18  ab024000  lui r5, 1024
000a1c  97125400  or r5, r8, r5
000a20  93849804  setlt.u r9, r17, r9
000a24  bbde04fe  bneq r9, zero, -76
000a28  9b420401  srli r5, r8, 16
000a2c  9b821200  andi r5, r5, 1
000a30  8b125410  add.s r5, r8, r5
000a34  8b92e210  add.s r5, r5, r14
000a38  97824200  and r5, r5, r4
000a3c  dbf3ffff  j -100
000a40  33090028  zext_int2long r[19:20], zero
000a44  db040000  j 36
000a48  27490900  addli.d r[19:20], r[19:20], 4
000a4c  0b14f510  add.s r8, r10, r15
000a50  93225901  seteq.d r5, r[19:20], r[22:23]
000a54  73663400  stores.w r3, 12(r8)
000a58  7364b401  stores.w r27, 8(r8)
000a5c  7362b400  stores.w r11, 4(r8)
000a60  7360a401  stores.w r26, 0(r8)
000a64  3bad02fe  bneq r5, zero, -184
000a68  0b246910  add.ul r[9:10], r[19:20], r[7:8]
000a6c  9b372400  slli r15, r8, 2
000a70  0b1dfa10  add.s r26, r20, r15
000a74  ef42cd00  loads.w r5, 12(r26)
000a78  978bd200  and r23, r5, r13
000a7c  93017e05  setlt.u r3, r28, r23
000a80  3bb00100  bneq r3, zero, 12
000a84  9f810200  addli r3, r5, 0
000a88  db010000  j 12
000a8c  ab014000  lui r3, 1024
000a90  97913200  or r3, r5, r3
000a94  ef4c8d00  loads.w r25, 8(r26)
000a98  1788dc00  and r16, r25, r13
000a9c  13040e05  setlt.u r8, r28, r16
000aa0  3b300400  bneq r8, zero, 12
000aa4  9f8d0c00  addli r27, r25, 0
000aa8  db010000  j 12
000aac  2b044000  lui r8, 1024
000ab0  979d8c00  or r27, r25, r8
000ab4  6f464d00  loads.w r12, 4(r26)
000ab8  1704d600  and r8, r12, r13
000abc  93048e04  setlt.u r9, r28, r8
000ac0  3bb00400  bneq r9, zero, 12
000ac4  9f050600  addli r11, r12, 0
000ac8  db010000  j 12
000acc  ab044000  lui r9, 1024
000ad0  97159600  or r11, r12, r9
000ad4  ef440d00  loads.w r9, 0(r26)
000ad8  178cd400  and r24, r9, r13
000adc  130d8e05  setlt.u r26, r28, r24
000ae0  3b500d00  bneq r26, zero, 20
000ae4  1f8d0400  addli r26, r9, 0
000ae8  138c8805  setlt.u r24, r17, r24
000aec  37600c00  beq r24, zero, 24
000af0  5b050000  j 40
000af4  2b0d4000  lui r26, 1024
000af8  179da401  or r26, r9, r26
000afc  138c8805  setlt.u r24, r17, r24
000b00  3b600c00  bneq r24, zero, 24
000b04  1bcc0401  srli r24, r9, 16
000b08  1b0c1c00  andi r24, r24, 1
000b0c  8b948411  add.s r9, r9, r24
000b10  8b94e410  add.s r9, r9, r14
000b14  178d4400  and r26, r9, r4
000b18  13848804  setlt.u r8, r17, r8
000b1c  37600400  beq r8, zero, 24
000b20  13840805  setlt.u r8, r17, r16
000b24  b7300400  beq r8, zero, 44
000b28  13847805  setlt.u r8, r17, r23
000b2c  3b7c04fe  bneq r8, zero, -228
000b30  db070000  j 60
000b34  1b440601  srli r8, r12, 16
000b38  1b041400  andi r8, r8, 1
000b3c  0b148610  add.s r8, r12, r8
000b40  0b14e410  add.s r8, r8, r14
000b44  97054400  and r11, r8, r4
000b48  13840805  setlt.u r8, r17, r16
000b4c  3b7f04fe  bneq r8, zero, -36
000b50  1bc40c01  srli r8, r25, 16
000b54  1b041400  andi r8, r8, 1
000b58  0b948c10  add.s r8, r25, r8
000b5c  0b14e410  add.s r8, r8, r14
000b60  970d4400  and r27, r8, r4
000b64  13847805  setlt.u r8, r17, r23
000b68  bb0b04fe  bneq r8, zero, -288
000b6c  9bc10201  srli r3, r5, 16
000b70  9b811100  andi r3, r3, 1
000b74  8b913210  add.s r3, r5, r3
000b78  8b91e110  add.s r3, r3, r14
000b7c  97814100  and r3, r3, r4
000b80  5bd9ffff  j -312
000b84  00200100  mfence { sm }
000b88  00360002  core_id r12
000b8c  6b590fff  load.d r[19:20], -16(r30)
000b90  6b548ffe  load.d r[9:10], -24(r30)
000b94  9f110000  addli r3, zero, 1
000b98  bb4536fe  bneq r12, r3, -656
000b9c  9f011000  addli r3, zero, 8
000ba0  3d000000  xfence
000ba4  00a00300  mfence { lm, sm, gm }
000ba8  b3820128  zext_int2long r[6:7], r3
000bac  5b040000  j 32
000bb0  9f711000  addli r3, zero, 15
000bb4  eb538fff  load.d r[8:9], -8(r30)
000bb8  9f750000  addli r11, zero, 7
000bbc  b3820128  zext_int2long r[6:7], r3
000bc0  93a15304  setlt.ul r3, r[8:9], r[6:7]
000bc4  a7920300  addli.d r[6:7], r[8:9], 1
000bc8  37970100  beq r3, zero, 452
000bcc  733c5ffe  store.d r[6:7], -8(r30)
000bd0  17b3b202  sll.d r[7:8], r[6:7], r11
000bd4  bb514501  bneq r10, r20, 116
000bd8  b3050028  zext_int2long r[12:13], zero
000bdc  5b030000  j 24
000be0  13a41504  setlt.ul r8, r[12:13], r[2:3]
000be4  8b113510  add.s r3, r10, r3
000be8  a7950500  addli.d r[12:13], r[12:13], 1
000bec  73e05100  stores.w r5, 0(r3)
000bf0  370f04fe  beq r8, zero, -64
000bf4  0ba46510  add.ul r[9:10], r[12:13], r[7:8]
000bf8  9b312400  slli r3, r8, 2
000bfc  8b123a10  add.s r5, r20, r3
000c00  6fc40200  loads.w r8, 0(r5)
000c04  9704d400  and r9, r8, r13
000c08  93029e04  setlt.u r5, r28, r9
000c0c  3bd00200  bneq r5, zero, 20
000c10  9f020400  addli r5, r8, 0
000c14  93849804  setlt.u r9, r17, r9
000c18  3baf04fe  bneq r9, zero, -56
000c1c  db020000  j 20
000c20  ab024000  lui r5, 1024
000c24  97125400  or r5, r8, r5
000c28  93849804  setlt.u r9, r17, r9
000c2c  bbde04fe  bneq r9, zero, -76
000c30  9b420401  srli r5, r8, 16
000c34  9b821200  andi r5, r5, 1
000c38  8b125410  add.s r5, r8, r5
000c3c  8b92e210  add.s r5, r5, r14
000c40  97824200  and r5, r5, r4
000c44  dbf3ffff  j -100
000c48  33090028  zext_int2long r[19:20], zero
000c4c  db040000  j 36
000c50  27490900  addli.d r[19:20], r[19:20], 4
000c54  0b14f510  add.s r8, r10, r15
000c58  93215901  seteq.d r3, r[19:20], r[22:23]
000c5c  73665400  stores.w r5, 12(r8)
000c60  73649401  stores.w r25, 8(r8)
000c64  7362c400  stores.w r12, 4(r8)
000c68  7360a401  stores.w r26, 0(r8)
000c6c  3b9d01fe  bneq r3, zero, -188
000c70  0b246910  add.ul r[9:10], r[19:20], r[7:8]
000c74  9b372400  slli r15, r8, 2
000c78  0b1dfa10  add.s r26, r20, r15
000c7c  ef41cd00  loads.w r3, 12(r26)
000c80  978bd100  and r23, r3, r13
000c84  93027e05  setlt.u r5, r28, r23
000c88  3bb00200  bneq r5, zero, 12
000c8c  9f820100  addli r5, r3, 0
000c90  db010000  j 12
000c94  ab024000  lui r5, 1024
000c98  97925100  or r5, r3, r5
000c9c  ef4d8d00  loads.w r27, 8(r26)
000ca0  1788dd00  and r16, r27, r13
000ca4  13040e05  setlt.u r8, r28, r16
000ca8  3b300400  bneq r8, zero, 12
000cac  9f8c0d00  addli r25, r27, 0
000cb0  db010000  j 12
000cb4  2b044000  lui r8, 1024
000cb8  979c8d00  or r25, r27, r8
000cbc  ef454d00  loads.w r11, 4(r26)
000cc0  1784d500  and r8, r11, r13
000cc4  93048e04  setlt.u r9, r28, r8
000cc8  3bb00400  bneq r9, zero, 12
000ccc  1f860500  addli r12, r11, 0
000cd0  db010000  j 12
000cd4  ab044000  lui r9, 1024
000cd8  17969500  or r12, r11, r9
000cdc  ef440d00  loads.w r9, 0(r26)
000ce0  178cd400  and r24, r9, r13
000ce4  130d8e05  setlt.u r26, r28, r24
000ce8  3b010d00  bneq r26, zero, 64
000cec  1f8d0400  addli r26, r9, 0
000cf0  138c8805  setlt.u r24, r17, r24
000cf4  3b600c00  bneq r24, zero, 24
000cf8  1bcc0401  srli r24, r9, 16
000cfc  1b0c1c00  andi r24, r24, 1
000d00  8b948411  add.s r9, r9, r24
000d04  8b94e410  add.s r9, r9, r14
000d08  178d4400  and r26, r9, r4
000d0c  13848804  setlt.u r8, r17, r8
000d10  b7300400  beq r8, zero, 44
000d14  13840805  setlt.u r8, r17, r16
000d18  37010400  beq r8, zero, 64
000d1c  13847805  setlt.u r8, r17, r23
000d20  bb4c04fe  bneq r8, zero, -208
000d24  5b0a0000  j 80
000d28  2b0d4000  lui r26, 1024
000d2c  179da401  or r26, r9, r26
000d30  138c8805  setlt.u r24, r17, r24
000d34  371f0cfe  beq r24, zero, -60
000d38  dbfaffff  j -44
000d3c  1bc40501  srli r8, r11, 16
000d40  1b041400  andi r8, r8, 1
000d44  0b948510  add.s r8, r11, r8
000d48  0b14e410  add.s r8, r8, r14
000d4c  17064400  and r12, r8, r4
000d50  13840805  setlt.u r8, r17, r16
000d54  3b2f04fe  bneq r8, zero, -56
000d58  1bc40d01  srli r8, r27, 16
000d5c  1b041400  andi r8, r8, 1
000d60  0b948d10  add.s r8, r27, r8
000d64  0b14e410  add.s r8, r8, r14
000d68  970c4400  and r25, r8, r4
000d6c  13847805  setlt.u r8, r17, r23
000d70  bb0b04fe  bneq r8, zero, -288
000d74  9bc20101  srli r5, r3, 16
000d78  9b821200  andi r5, r5, 1
000d7c  8b915110  add.s r3, r3, r5
000d80  8b91e110  add.s r3, r3, r14
000d84  97824100  and r5, r3, r4
000d88  5bd9ffff  j -312
000d8c  00200100  mfence { sm }
000d90  00360002  core_id r12
000d94  6b590fff  load.d r[19:20], -16(r30)
000d98  6b548ffe  load.d r[9:10], -24(r30)
000d9c  e3419fff  loadli.w r3,  -52(r30)
000da0  b7cd01fc  beq r3, zero, -1168
000da4  9f012000  addli r3, zero, 16
000da8  3d000000  xfence
000dac  00a00300  mfence { lm, sm, gm }
000db0  b3820128  zext_int2long r[6:7], r3
000db4  5b040000  j 32
000db8  9f712000  addli r3, zero, 23
000dbc  eb538fff  load.d r[8:9], -8(r30)
000dc0  9f750000  addli r11, zero, 7
000dc4  b3820128  zext_int2long r[6:7], r3
000dc8  93a15304  setlt.ul r3, r[8:9], r[6:7]
000dcc  a7920300  addli.d r[6:7], r[8:9], 1
000dd0  37970100  beq r3, zero, 452
000dd4  733c5ffe  store.d r[6:7], -8(r30)
000dd8  17b3b202  sll.d r[7:8], r[6:7], r11
000ddc  bb514501  bneq r10, r20, 116
000de0  b3050028  zext_int2long r[12:13], zero
000de4  5b030000  j 24
000de8  13a41504  setlt.ul r8, r[12:13], r[2:3]
000dec  8b113510  add.s r3, r10, r3
000df0  a7950500  addli.d r[12:13], r[12:13], 1
000df4  73e05100  stores.w r5, 0(r3)
000df8  370f04fe  beq r8, zero, -64
000dfc  0ba46510  add.ul r[9:10], r[12:13], r[7:8]
000e00  9b312400  slli r3, r8, 2
000e04  8b123a10  add.s r5, r20, r3
000e08  6fc40200  loads.w r8, 0(r5)
000e0c  9704d400  and r9, r8, r13
000e10  93029e04  setlt.u r5, r28, r9
000e14  3bd00200  bneq r5, zero, 20
000e18  9f020400  addli r5, r8, 0
000e1c  93849804  setlt.u r9, r17, r9
000e20  3baf04fe  bneq r9, zero, -56
000e24  db020000  j 20
000e28  ab024000  lui r5, 1024
000e2c  97125400  or r5, r8, r5
000e30  93849804  setlt.u r9, r17, r9
000e34  bbde04fe  bneq r9, zero, -76
000e38  9b420401  srli r5, r8, 16
000e3c  9b821200  andi r5, r5, 1
000e40  8b125410  add.s r5, r8, r5
000e44  8b92e210  add.s r5, r5, r14
000e48  97824200  and r5, r5, r4
000e4c  dbf3ffff  j -100
000e50  33090028  zext_int2long r[19:20], zero
000e54  db040000  j 36
000e58  27490900  addli.d r[19:20], r[19:20], 4
000e5c  0b14f510  add.s r8, r10, r15
000e60  93215901  seteq.d r3, r[19:20], r[22:23]
000e64  73665400  stores.w r5, 12(r8)
000e68  73649401  stores.w r25, 8(r8)
000e6c  7362c400  stores.w r12, 4(r8)
000e70  7360a401  stores.w r26, 0(r8)
000e74  3b9d01fe  bneq r3, zero, -188
000e78  0b246910  add.ul r[9:10], r[19:20], r[7:8]
000e7c  9b372400  slli r15, r8, 2
000e80  0b1dfa10  add.s r26, r20, r15
000e84  ef41cd00  loads.w r3, 12(r26)
000e88  978bd100  and r23, r3, r13
000e8c  93027e05  setlt.u r5, r28, r23
000e90  3bb00200  bneq r5, zero, 12
000e94  9f820100  addli r5, r3, 0
000e98  db010000  j 12
000e9c  ab024000  lui r5, 1024
000ea0  97925100  or r5, r3, r5
000ea4  ef4d8d00  loads.w r27, 8(r26)
000ea8  1788dd00  and r16, r27, r13
000eac  13040e05  setlt.u r8, r28, r16
000eb0  3b300400  bneq r8, zero, 12
000eb4  9f8c0d00  addli r25, r27, 0
000eb8  db010000  j 12
000ebc  2b044000  lui r8, 1024
000ec0  979c8d00  or r25, r27, r8
000ec4  ef454d00  loads.w r11, 4(r26)
000ec8  1784d500  and r8, r11, r13
000ecc  93048e04  setlt.u r9, r28, r8
000ed0  3bb00400  bneq r9, zero, 12
000ed4  1f860500  addli r12, r11, 0
000ed8  db010000  j 12
000edc  ab044000  lui r9, 1024
000ee0  17969500  or r12, r11, r9
000ee4  ef440d00  loads.w r9, 0(r26)
000ee8  178cd400  and r24, r9, r13
000eec  130d8e05  setlt.u r26, r28, r24
000ef0  3b010d00  bneq r26, zero, 64
000ef4  1f8d0400  addli r26, r9, 0
000ef8  138c8805  setlt.u r24, r17, r24
000efc  3b600c00  bneq r24, zero, 24
000f00  1bcc0401  srli r24, r9, 16
000f04  1b0c1c00  andi r24, r24, 1
000f08  8b948411  add.s r9, r9, r24
000f0c  8b94e410  add.s r9, r9, r14
000f10  178d4400  and r26, r9, r4
000f14  13848804  setlt.u r8, r17, r8
000f18  b7300400  beq r8, zero, 44
000f1c  13840805  setlt.u r8, r17, r16
000f20  37010400  beq r8, zero, 64
000f24  13847805  setlt.u r8, r17, r23
000f28  bb4c04fe  bneq r8, zero, -208
000f2c  5b0a0000  j 80
000f30  2b0d4000  lui r26, 1024
000f34  179da401  or r26, r9, r26
000f38  138c8805  setlt.u r24, r17, r24
000f3c  371f0cfe  beq r24, zero, -60
000f40  dbfaffff  j -44
000f44  1bc40501  srli r8, r11, 16
000f48  1b041400  andi r8, r8, 1
000f4c  0b948510  add.s r8, r11, r8
000f50  0b14e410  add.s r8, r8, r14
000f54  17064400  and r12, r8, r4
000f58  13840805  setlt.u r8, r17, r16
000f5c  3b2f04fe  bneq r8, zero, -56
000f60  1bc40d01  srli r8, r27, 16
000f64  1b041400  andi r8, r8, 1
000f68  0b948d10  add.s r8, r27, r8
000f6c  0b14e410  add.s r8, r8, r14
000f70  970c4400  and r25, r8, r4
000f74  13847805  setlt.u r8, r17, r23
000f78  bb0b04fe  bneq r8, zero, -288
000f7c  9bc20101  srli r5, r3, 16
000f80  9b821200  andi r5, r5, 1
000f84  8b915110  add.s r3, r3, r5
000f88  8b91e110  add.s r3, r3, r14
000f8c  97824100  and r5, r3, r4
000f90  5bd9ffff  j -312
000f94  00200100  mfence { sm }
000f98  00360002  core_id r12
000f9c  6b590fff  load.d r[19:20], -16(r30)
000fa0  6b548ffe  load.d r[9:10], -24(r30)
000fa4  e301cfff  loadli.w r3,  -32(r30)
000fa8  b7c501fc  beq r3, zero, -1680
000fac  9f013000  addli r3, zero, 24
000fb0  3d000000  xfence
000fb4  00a00300  mfence { lm, sm, gm }
000fb8  b3820128  zext_int2long r[6:7], r3
000fbc  5b040000  j 32
000fc0  9f713000  addli r3, zero, 31
000fc4  eb538fff  load.d r[8:9], -8(r30)
000fc8  9f750000  addli r11, zero, 7
000fcc  b3820128  zext_int2long r[6:7], r3
000fd0  93a15304  setlt.ul r3, r[8:9], r[6:7]
000fd4  a7920300  addli.d r[6:7], r[8:9], 1
000fd8  37970100  beq r3, zero, 452
000fdc  733c5ffe  store.d r[6:7], -8(r30)
000fe0  17b3b202  sll.d r[7:8], r[6:7], r11
000fe4  bb514501  bneq r10, r20, 116
000fe8  b3050028  zext_int2long r[12:13], zero
000fec  5b030000  j 24
000ff0  13a41504  setlt.ul r8, r[12:13], r[2:3]
000ff4  8b113510  add.s r3, r10, r3
000ff8  a7950500  addli.d r[12:13], r[12:13], 1
000ffc  73e05100  stores.w r5, 0(r3)
001000  370f04fe  beq r8, zero, -64
001004  0ba46510  add.ul r[9:10], r[12:13], r[7:8]
001008  9b312400  slli r3, r8, 2
00100c  8b123a10  add.s r5, r20, r3
001010  6fc40200  loads.w r8, 0(r5)
001014  9704d400  and r9, r8, r13
001018  93029e04  setlt.u r5, r28, r9
00101c  3bd00200  bneq r5, zero, 20
001020  9f020400  addli r5, r8, 0
001024  93849804  setlt.u r9, r17, r9
001028  3baf04fe  bneq r9, zero, -56
00102c  db020000  j 20
001030  ab024000  lui r5, 1024
001034  97125400  or r5, r8, r5
001038  93849804  setlt.u r9, r17, r9
00103c  bbde04fe  bneq r9, zero, -76
001040  9b420401  srli r5, r8, 16
001044  9b821200  andi r5, r5, 1
001048  8b125410  add.s r5, r8, r5
00104c  8b92e210  add.s r5, r5, r14
001050  97824200  and r5, r5, r4
001054  dbf3ffff  j -100
001058  33090028  zext_int2long r[19:20], zero
00105c  db040000  j 36
001060  27490900  addli.d r[19:20], r[19:20], 4
001064  0b14f510  add.s r8, r10, r15
001068  93215901  seteq.d r3, r[19:20], r[22:23]
00106c  73665400  stores.w r5, 12(r8)
001070  73649401  stores.w r25, 8(r8)
001074  7362c400  stores.w r12, 4(r8)
001078  7360a401  stores.w r26, 0(r8)
00107c  3b9d01fe  bneq r3, zero, -188
001080  0b246910  add.ul r[9:10], r[19:20], r[7:8]
001084  9b372400  slli r15, r8, 2
001088  0b1dfa10  add.s r26, r20, r15
00108c  ef41cd00  loads.w r3, 12(r26)
001090  978bd100  and r23, r3, r13
001094  93027e05  setlt.u r5, r28, r23
001098  3bb00200  bneq r5, zero, 12
00109c  9f820100  addli r5, r3, 0
0010a0  db010000  j 12
0010a4  ab024000  lui r5, 1024
0010a8  97925100  or r5, r3, r5
0010ac  ef4d8d00  loads.w r27, 8(r26)
0010b0  1788dd00  and r16, r27, r13
0010b4  13040e05  setlt.u r8, r28, r16
0010b8  3b300400  bneq r8, zero, 12
0010bc  9f8c0d00  addli r25, r27, 0
0010c0  db010000  j 12
0010c4  2b044000  lui r8, 1024
0010c8  979c8d00  or r25, r27, r8
0010cc  ef454d00  loads.w r11, 4(r26)
0010d0  1784d500  and r8, r11, r13
0010d4  93048e04  setlt.u r9, r28, r8
0010d8  3bb00400  bneq r9, zero, 12
0010dc  1f860500  addli r12, r11, 0
0010e0  db010000  j 12
0010e4  ab044000  lui r9, 1024
0010e8  17969500  or r12, r11, r9
0010ec  ef440d00  loads.w r9, 0(r26)
0010f0  178cd400  and r24, r9, r13
0010f4  130d8e05  setlt.u r26, r28, r24
0010f8  3b010d00  bneq r26, zero, 64
0010fc  1f8d0400  addli r26, r9, 0
001100  138c8805  setlt.u r24, r17, r24
001104  3b600c00  bneq r24, zero, 24
001108  1bcc0401  srli r24, r9, 16
00110c  1b0c1c00  andi r24, r24, 1
001110  8b948411  add.s r9, r9, r24
001114  8b94e410  add.s r9, r9, r14
001118  178d4400  and r26, r9, r4
00111c  13848804  setlt.u r8, r17, r8
001120  b7300400  beq r8, zero, 44
001124  13840805  setlt.u r8, r17, r16
001128  37010400  beq r8, zero, 64
00112c  13847805  setlt.u r8, r17, r23
001130  bb4c04fe  bneq r8, zero, -208
001134  5b0a0000  j 80
001138  2b0d4000  lui r26, 1024
00113c  179da401  or r26, r9, r26
001140  138c8805  setlt.u r24, r17, r24
001144  371f0cfe  beq r24, zero, -60
001148  dbfaffff  j -44
00114c  1bc40501  srli r8, r11, 16
001150  1b041400  andi r8, r8, 1
001154  0b948510  add.s r8, r11, r8
001158  0b14e410  add.s r8, r8, r14
00115c  17064400  and r12, r8, r4
001160  13840805  setlt.u r8, r17, r16
001164  3b2f04fe  bneq r8, zero, -56
001168  1bc40d01  srli r8, r27, 16
00116c  1b041400  andi r8, r8, 1
001170  0b948d10  add.s r8, r27, r8
001174  0b14e410  add.s r8, r8, r14
001178  970c4400  and r25, r8, r4
00117c  13847805  setlt.u r8, r17, r23
001180  bb0b04fe  bneq r8, zero, -288
001184  9bc20101  srli r5, r3, 16
001188  9b821200  andi r5, r5, 1
00118c  8b915110  add.s r3, r3, r5
001190  8b91e110  add.s r3, r3, r14
001194  97824100  and r5, r3, r4
001198  5bd9ffff  j -312
00119c  00200100  mfence { sm }
0011a0  00360002  core_id r12
0011a4  6b590fff  load.d r[19:20], -16(r30)
0011a8  6b548ffe  load.d r[9:10], -24(r30)
0011ac  e301afff  loadli.w r3,  -48(r30)
0011b0  b7cd01fa  beq r3, zero, -2192
0011b4  9f014000  addli r3, zero, 32
0011b8  3d000000  xfence
0011bc  00a00300  mfence { lm, sm, gm }
0011c0  b3820128  zext_int2long r[6:7], r3
0011c4  5b040000  j 32
0011c8  9f714000  addli r3, zero, 39
0011cc  eb538fff  load.d r[8:9], -8(r30)
0011d0  9f750000  addli r11, zero, 7
0011d4  b3820128  zext_int2long r[6:7], r3
0011d8  93a15304  setlt.ul r3, r[8:9], r[6:7]
0011dc  a7920300  addli.d r[6:7], r[8:9], 1
0011e0  37970100  beq r3, zero, 452
0011e4  733c5ffe  store.d r[6:7], -8(r30)
0011e8  17b3b202  sll.d r[7:8], r[6:7], r11
0011ec  bb514501  bneq r10, r20, 116
0011f0  b3050028  zext_int2long r[12:13], zero
0011f4  5b030000  j 24
0011f8  13a41504  setlt.ul r8, r[12:13], r[2:3]
0011fc  8b113510  add.s r3, r10, r3
001200  a7950500  addli.d r[12:13], r[12:13], 1
001204  73e05100  stores.w r5, 0(r3)
001208  370f04fe  beq r8, zero, -64
00120c  0ba46510  add.ul r[9:10], r[12:13], r[7:8]
001210  9b312400  slli r3, r8, 2
001214  8b123a10  add.s r5, r20, r3
001218  6fc40200  loads.w r8, 0(r5)
00121c  9704d400  and r9, r8, r13
001220  93029e04  setlt.u r5, r28, r9
001224  3bd00200  bneq r5, zero, 20
001228  9f020400  addli r5, r8, 0
00122c  93849804  setlt.u r9, r17, r9
001230  3baf04fe  bneq r9, zero, -56
001234  db020000  j 20
001238  ab024000  lui r5, 1024
00123c  97125400  or r5, r8, r5
001240  93849804  setlt.u r9, r17, r9
001244  bbde04fe  bneq r9, zero, -76
001248  9b420401  srli r5, r8, 16
00124c  9b821200  andi r5, r5, 1
001250  8b125410  add.s r5, r8, r5
001254  8b92e210  add.s r5, r5, r14
001258  97824200  and r5, r5, r4
00125c  dbf3ffff  j -100
001260  33090028  zext_int2long r[19:20], zero
001264  db040000  j 36
001268  27490900  addli.d r[19:20], r[19:20], 4
00126c  0b14f510  add.s r8, r10, r15
001270  93215901  seteq.d r3, r[19:20], r[22:23]
001274  73665400  stores.w r5, 12(r8)
001278  73649401  stores.w r25, 8(r8)
00127c  7362c400  stores.w r12, 4(r8)
001280  7360a401  stores.w r26, 0(r8)
001284  3b9d01fe  bneq r3, zero, -188
001288  0b246910  add.ul r[9:10], r[19:20], r[7:8]
00128c  9b372400  slli r15, r8, 2
001290  0b1dfa10  add.s r26, r20, r15
001294  ef41cd00  loads.w r3, 12(r26)
001298  978bd100  and r23, r3, r13
00129c  93027e05  setlt.u r5, r28, r23
0012a0  3bb00200  bneq r5, zero, 12
0012a4  9f820100  addli r5, r3, 0
0012a8  db010000  j 12
0012ac  ab024000  lui r5, 1024
0012b0  97925100  or r5, r3, r5
0012b4  ef4d8d00  loads.w r27, 8(r26)
0012b8  1788dd00  and r16, r27, r13
0012bc  13040e05  setlt.u r8, r28, r16
0012c0  3b300400  bneq r8, zero, 12
0012c4  9f8c0d00  addli r25, r27, 0
0012c8  db010000  j 12
0012cc  2b044000  lui r8, 1024
0012d0  979c8d00  or r25, r27, r8
0012d4  ef454d00  loads.w r11, 4(r26)
0012d8  1784d500  and r8, r11, r13
0012dc  93048e04  setlt.u r9, r28, r8
0012e0  3bb00400  bneq r9, zero, 12
0012e4  1f860500  addli r12, r11, 0
0012e8  db010000  j 12
0012ec  ab044000  lui r9, 1024
0012f0  17969500  or r12, r11, r9
0012f4  ef440d00  loads.w r9, 0(r26)
0012f8  178cd400  and r24, r9, r13
0012fc  130d8e05  setlt.u r26, r28, r24
001300  3b010d00  bneq r26, zero, 64
001304  1f8d0400  addli r26, r9, 0
001308  138c8805  setlt.u r24, r17, r24
00130c  3b600c00  bneq r24, zero, 24
001310  1bcc0401  srli r24, r9, 16
001314  1b0c1c00  andi r24, r24, 1
001318  8b948411  add.s r9, r9, r24
00131c  8b94e410  add.s r9, r9, r14
001320  178d4400  and r26, r9, r4
001324  13848804  setlt.u r8, r17, r8
001328  b7300400  beq r8, zero, 44
00132c  13840805  setlt.u r8, r17, r16
001330  37010400  beq r8, zero, 64
001334  13847805  setlt.u r8, r17, r23
001338  bb4c04fe  bneq r8, zero, -208
00133c  5b0a0000  j 80
001340  2b0d4000  lui r26, 1024
001344  179da401  or r26, r9, r26
001348  138c8805  setlt.u r24, r17, r24
00134c  371f0cfe  beq r24, zero, -60
001350  dbfaffff  j -44
001354  1bc40501  srli r8, r11, 16
001358  1b041400  andi r8, r8, 1
00135c  0b948510  add.s r8, r11, r8
001360  0b14e410  add.s r8, r8, r14
001364  17064400  and r12, r8, r4
001368  13840805  setlt.u r8, r17, r16
00136c  3b2f04fe  bneq r8, zero, -56
001370  1bc40d01  srli r8, r27, 16
001374  1b041400  andi r8, r8, 1
001378  0b948d10  add.s r8, r27, r8
00137c  0b14e410  add.s r8, r8, r14
001380  970c4400  and r25, r8, r4
001384  13847805  setlt.u r8, r17, r23
001388  bb0b04fe  bneq r8, zero, -288
00138c  9bc20101  srli r5, r3, 16
001390  9b821200  andi r5, r5, 1
001394  8b915110  add.s r3, r3, r5
001398  8b91e110  add.s r3, r3, r14
00139c  97824100  and r5, r3, r4
0013a0  5bd9ffff  j -312
0013a4  00200100  mfence { sm }
0013a8  00360002  core_id r12
0013ac  6b590fff  load.d r[19:20], -16(r30)
0013b0  6b548ffe  load.d r[9:10], -24(r30)
0013b4  9f510000  addli r3, zero, 5
0013b8  bb4536fa  bneq r12, r3, -2704
0013bc  9f015000  addli r3, zero, 40
0013c0  3d000000  xfence
0013c4  00a00300  mfence { lm, sm, gm }
0013c8  b3820128  zext_int2long r[6:7], r3
0013cc  5b040000  j 32
0013d0  9f715000  addli r3, zero, 47
0013d4  eb538fff  load.d r[8:9], -8(r30)
0013d8  9f750000  addli r11, zero, 7
0013dc  b3820128  zext_int2long r[6:7], r3
0013e0  93a15304  setlt.ul r3, r[8:9], r[6:7]
0013e4  a7920300  addli.d r[6:7], r[8:9], 1
0013e8  37970100  beq r3, zero, 452
0013ec  733c5ffe  store.d r[6:7], -8(r30)
0013f0  17b3b202  sll.d r[7:8], r[6:7], r11
0013f4  bb514501  bneq r10, r20, 116
0013f8  b3050028  zext_int2long r[12:13], zero
0013fc  5b030000  j 24
001400  13a41504  setlt.ul r8, r[12:13], r[2:3]
001404  8b113510  add.s r3, r10, r3
001408  a7950500  addli.d r[12:13], r[12:13], 1
00140c  73e05100  stores.w r5, 0(r3)
001410  370f04fe  beq r8, zero, -64
001414  0ba46510  add.ul r[9:10], r[12:13], r[7:8]
001418  9b312400  slli r3, r8, 2
00141c  8b123a10  add.s r5, r20, r3
001420  6fc40200  loads.w r8, 0(r5)
001424  9704d400  and r9, r8, r13
001428  93029e04  setlt.u r5, r28, r9
00142c  3bd00200  bneq r5, zero, 20
001430  9f020400  addli r5, r8, 0
001434  93849804  setlt.u r9, r17, r9
001438  3baf04fe  bneq r9, zero, -56
00143c  db020000  j 20
001440  ab024000  lui r5, 1024
001444  97125400  or r5, r8, r5
001448  93849804  setlt.u r9, r17, r9
00144c  bbde04fe  bneq r9, zero, -76
001450  9b420401  srli r5, r8, 16
001454  9b821200  andi r5, r5, 1
001458  8b125410  add.s r5, r8, r5
00145c  8b92e210  add.s r5, r5, r14
001460  97824200  and r5, r5, r4
001464  dbf3ffff  j -100
001468  33090028  zext_int2long r[19:20], zero
00146c  db040000  j 36
001470  27490900  addli.d r[19:20], r[19:20], 4
001474  0b14f510  add.s r8, r10, r15
001478  93215901  seteq.d r3, r[19:20], r[22:23]
00147c  73665400  stores.w r5, 12(r8)
001480  73649401  stores.w r25, 8(r8)
001484  7362c400  stores.w r12, 4(r8)
001488  7360a401  stores.w r26, 0(r8)
00148c  3b9d01fe  bneq r3, zero, -188
001490  0b246910  add.ul r[9:10], r[19:20], r[7:8]
001494  9b372400  slli r15, r8, 2
001498  0b1dfa10  add.s r26, r20, r15
00149c  ef41cd00  loads.w r3, 12(r26)
0014a0  978bd100  and r23, r3, r13
0014a4  93027e05  setlt.u r5, r28, r23
0014a8  3bb00200  bneq r5, zero, 12
0014ac  9f820100  addli r5, r3, 0
0014b0  db010000  j 12
0014b4  ab024000  lui r5, 1024
0014b8  97925100  or r5, r3, r5
0014bc  ef4d8d00  loads.w r27, 8(r26)
0014c0  1788dd00  and r16, r27, r13
0014c4  13040e05  setlt.u r8, r28, r16
0014c8  3b300400  bneq r8, zero, 12
0014cc  9f8c0d00  addli r25, r27, 0
0014d0  db010000  j 12
0014d4  2b044000  lui r8, 1024
0014d8  979c8d00  or r25, r27, r8
0014dc  ef454d00  loads.w r11, 4(r26)
0014e0  1784d500  and r8, r11, r13
0014e4  93048e04  setlt.u r9, r28, r8
0014e8  3bb00400  bneq r9, zero, 12
0014ec  1f860500  addli r12, r11, 0
0014f0  db010000  j 12
0014f4  ab044000  lui r9, 1024
0014f8  17969500  or r12, r11, r9
0014fc  ef440d00  loads.w r9, 0(r26)
001500  178cd400  and r24, r9, r13
001504  130d8e05  setlt.u r26, r28, r24
001508  3b010d00  bneq r26, zero, 64
00150c  1f8d0400  addli r26, r9, 0
001510  138c8805  setlt.u r24, r17, r24
001514  3b600c00  bneq r24, zero, 24
001518  1bcc0401  srli r24, r9, 16
00151c  1b0c1c00  andi r24, r24, 1
001520  8b948411  add.s r9, r9, r24
001524  8b94e410  add.s r9, r9, r14
001528  178d4400  and r26, r9, r4
00152c  13848804  setlt.u r8, r17, r8
001530  b7300400  beq r8, zero, 44
001534  13840805  setlt.u r8, r17, r16
001538  37010400  beq r8, zero, 64
00153c  13847805  setlt.u r8, r17, r23
001540  bb4c04fe  bneq r8, zero, -208
001544  5b0a0000  j 80
001548  2b0d4000  lui r26, 1024
00154c  179da401  or r26, r9, r26
001550  138c8805  setlt.u r24, r17, r24
001554  371f0cfe  beq r24, zero, -60
001558  dbfaffff  j -44
00155c  1bc40501  srli r8, r11, 16
001560  1b041400  andi r8, r8, 1
001564  0b948510  add.s r8, r11, r8
001568  0b14e410  add.s r8, r8, r14
00156c  17064400  and r12, r8, r4
001570  13840805  setlt.u r8, r17, r16
001574  3b2f04fe  bneq r8, zero, -56
001578  1bc40d01  srli r8, r27, 16
00157c  1b041400  andi r8, r8, 1
001580  0b948d10  add.s r8, r27, r8
001584  0b14e410  add.s r8, r8, r14
001588  970c4400  and r25, r8, r4
00158c  13847805  setlt.u r8, r17, r23
001590  bb0b04fe  bneq r8, zero, -288
001594  9bc20101  srli r5, r3, 16
001598  9b821200  andi r5, r5, 1
00159c  8b915110  add.s r3, r3, r5
0015a0  8b91e110  add.s r3, r3, r14
0015a4  97824100  and r5, r3, r4
0015a8  5bd9ffff  j -312
0015ac  00200100  mfence { sm }
0015b0  00360002  core_id r12
0015b4  6b590fff  load.d r[19:20], -16(r30)
0015b8  6b548ffe  load.d r[9:10], -24(r30)
0015bc  9f610000  addli r3, zero, 6
0015c0  bb4d36f8  bneq r12, r3, -3216
0015c4  9f016000  addli r3, zero, 48
0015c8  3d000000  xfence
0015cc  00a00300  mfence { lm, sm, gm }
0015d0  b3820128  zext_int2long r[6:7], r3
0015d4  5b040000  j 32
0015d8  9f716000  addli r3, zero, 55
0015dc  eb538fff  load.d r[8:9], -8(r30)
0015e0  9f750000  addli r11, zero, 7
0015e4  b3820128  zext_int2long r[6:7], r3
0015e8  93a15304  setlt.ul r3, r[8:9], r[6:7]
0015ec  a7920300  addli.d r[6:7], r[8:9], 1
0015f0  37970100  beq r3, zero, 452
0015f4  733c5ffe  store.d r[6:7], -8(r30)
0015f8  17b3b202  sll.d r[7:8], r[6:7], r11
0015fc  bb514501  bneq r10, r20, 116
001600  b3050028  zext_int2long r[12:13], zero
001604  5b030000  j 24
001608  13a41504  setlt.ul r8, r[12:13], r[2:3]
00160c  8b113510  add.s r3, r10, r3
001610  a7950500  addli.d r[12:13], r[12:13], 1
001614  73e05100  stores.w r5, 0(r3)
001618  370f04fe  beq r8, zero, -64
00161c  0ba46510  add.ul r[9:10], r[12:13], r[7:8]
001620  9b312400  slli r3, r8, 2
001624  8b123a10  add.s r5, r20, r3
001628  6fc40200  loads.w r8, 0(r5)
00162c  9704d400  and r9, r8, r13
001630  93029e04  setlt.u r5, r28, r9
001634  3bd00200  bneq r5, zero, 20
001638  9f020400  addli r5, r8, 0
00163c  93849804  setlt.u r9, r17, r9
001640  3baf04fe  bneq r9, zero, -56
001644  db020000  j 20
001648  ab024000  lui r5, 1024
00164c  97125400  or r5, r8, r5
001650  93849804  setlt.u r9, r17, r9
001654  bbde04fe  bneq r9, zero, -76
001658  9b420401  srli r5, r8, 16
00165c  9b821200  andi r5, r5, 1
001660  8b125410  add.s r5, r8, r5
001664  8b92e210  add.s r5, r5, r14
001668  97824200  and r5, r5, r4
00166c  dbf3ffff  j -100
001670  33090028  zext_int2long r[19:20], zero
001674  db040000  j 36
001678  27490900  addli.d r[19:20], r[19:20], 4
00167c  0b14f510  add.s r8, r10, r15
001680  93215901  seteq.d r3, r[19:20], r[22:23]
001684  73665400  stores.w r5, 12(r8)
001688  73649401  stores.w r25, 8(r8)
00168c  7362c400  stores.w r12, 4(r8)
001690  7360a401  stores.w r26, 0(r8)
001694  3b9d01fe  bneq r3, zero, -188
001698  0b246910  add.ul r[9:10], r[19:20], r[7:8]
00169c  9b372400  slli r15, r8, 2
0016a0  0b1dfa10  add.s r26, r20, r15
0016a4  ef41cd00  loads.w r3, 12(r26)
0016a8  978bd100  and r23, r3, r13
0016ac  93027e05  setlt.u r5, r28, r23
0016b0  3bb00200  bneq r5, zero, 12
0016b4  9f820100  addli r5, r3, 0
0016b8  db010000  j 12
0016bc  ab024000  lui r5, 1024
0016c0  97925100  or r5, r3, r5
0016c4  ef4d8d00  loads.w r27, 8(r26)
0016c8  1788dd00  and r16, r27, r13
0016cc  13040e05  setlt.u r8, r28, r16
0016d0  3b300400  bneq r8, zero, 12
0016d4  9f8c0d00  addli r25, r27, 0
0016d8  db010000  j 12
0016dc  2b044000  lui r8, 1024
0016e0  979c8d00  or r25, r27, r8
0016e4  ef454d00  loads.w r11, 4(r26)
0016e8  1784d500  and r8, r11, r13
0016ec  93048e04  setlt.u r9, r28, r8
0016f0  3bb00400  bneq r9, zero, 12
0016f4  1f860500  addli r12, r11, 0
0016f8  db010000  j 12
0016fc  ab044000  lui r9, 1024
001700  17969500  or r12, r11, r9
001704  ef440d00  loads.w r9, 0(r26)
001708  178cd400  and r24, r9, r13
00170c  130d8e05  setlt.u r26, r28, r24
001710  3b010d00  bneq r26, zero, 64
001714  1f8d0400  addli r26, r9, 0
001718  138c8805  setlt.u r24, r17, r24
00171c  3b600c00  bneq r24, zero, 24
001720  1bcc0401  srli r24, r9, 16
001724  1b0c1c00  andi r24, r24, 1
001728  8b948411  add.s r9, r9, r24
00172c  8b94e410  add.s r9, r9, r14
001730  178d4400  and r26, r9, r4
001734  13848804  setlt.u r8, r17, r8
001738  b7300400  beq r8, zero, 44
00173c  13840805  setlt.u r8, r17, r16
001740  37010400  beq r8, zero, 64
001744  13847805  setlt.u r8, r17, r23
001748  bb4c04fe  bneq r8, zero, -208
00174c  5b0a0000  j 80
001750  2b0d4000  lui r26, 1024
001754  179da401  or r26, r9, r26
001758  138c8805  setlt.u r24, r17, r24
00175c  371f0cfe  beq r24, zero, -60
001760  dbfaffff  j -44
001764  1bc40501  srli r8, r11, 16
001768  1b041400  andi r8, r8, 1
00176c  0b948510  add.s r8, r11, r8
001770  0b14e410  add.s r8, r8, r14
001774  17064400  and r12, r8, r4
001778  13840805  setlt.u r8, r17, r16
00177c  3b2f04fe  bneq r8, zero, -56
001780  1bc40d01  srli r8, r27, 16
001784  1b041400  andi r8, r8, 1
001788  0b948d10  add.s r8, r27, r8
00178c  0b14e410  add.s r8, r8, r14
001790  970c4400  and r25, r8, r4
001794  13847805  setlt.u r8, r17, r23
001798  bb0b04fe  bneq r8, zero, -288
00179c  9bc20101  srli r5, r3, 16
0017a0  9b821200  andi r5, r5, 1
0017a4  8b915110  add.s r3, r3, r5
0017a8  8b91e110  add.s r3, r3, r14
0017ac  97824100  and r5, r3, r4
0017b0  5bd9ffff  j -312
0017b4  00200100  mfence { sm }
0017b8  00360002  core_id r12
0017bc  6b590fff  load.d r[19:20], -16(r30)
0017c0  6b548ffe  load.d r[9:10], -24(r30)
0017c4  e341afff  loadli.w r3,  -44(r30)
0017c8  37980100  beq r3, zero, 516
0017cc  9f017000  addli r3, zero, 56
0017d0  3d000000  xfence
0017d4  00a00300  mfence { lm, sm, gm }
0017d8  b3820128  zext_int2long r[6:7], r3
0017dc  5b040000  j 32
0017e0  9f717000  addli r3, zero, 63
0017e4  eb538fff  load.d r[8:9], -8(r30)
0017e8  9f750000  addli r11, zero, 7
0017ec  b3820128  zext_int2long r[6:7], r3
0017f0  93a15304  setlt.ul r3, r[8:9], r[6:7]
0017f4  a7920300  addli.d r[6:7], r[8:9], 1
0017f8  37970100  beq r3, zero, 452
0017fc  733c5ffe  store.d r[6:7], -8(r30)
001800  17b3b202  sll.d r[7:8], r[6:7], r11
001804  bb514501  bneq r10, r20, 116
001808  b3050028  zext_int2long r[12:13], zero
00180c  5b030000  j 24
001810  13a41504  setlt.ul r8, r[12:13], r[2:3]
001814  8b113510  add.s r3, r10, r3
001818  a7950500  addli.d r[12:13], r[12:13], 1
00181c  73e05100  stores.w r5, 0(r3)
001820  370f04fe  beq r8, zero, -64
001824  0ba46510  add.ul r[9:10], r[12:13], r[7:8]
001828  9b312400  slli r3, r8, 2
00182c  8b123a10  add.s r5, r20, r3
001830  6fc40200  loads.w r8, 0(r5)
001834  9704d400  and r9, r8, r13
001838  93029e04  setlt.u r5, r28, r9
00183c  3bd00200  bneq r5, zero, 20
001840  9f020400  addli r5, r8, 0
001844  93849804  setlt.u r9, r17, r9
001848  3baf04fe  bneq r9, zero, -56
00184c  db020000  j 20
001850  ab024000  lui r5, 1024
001854  97125400  or r5, r8, r5
001858  93849804  setlt.u r9, r17, r9
00185c  bbde04fe  bneq r9, zero, -76
001860  9b420401  srli r5, r8, 16
001864  9b821200  andi r5, r5, 1
001868  8b125410  add.s r5, r8, r5
00186c  8b92e210  add.s r5, r5, r14
001870  97824200  and r5, r5, r4
001874  dbf3ffff  j -100
001878  33090028  zext_int2long r[19:20], zero
00187c  db040000  j 36
001880  27490900  addli.d r[19:20], r[19:20], 4
001884  0b14f510  add.s r8, r10, r15
001888  93215901  seteq.d r3, r[19:20], r[22:23]
00188c  73665400  stores.w r5, 12(r8)
001890  73649401  stores.w r25, 8(r8)
001894  7362c400  stores.w r12, 4(r8)
001898  7360a401  stores.w r26, 0(r8)
00189c  3b9d01fe  bneq r3, zero, -188
0018a0  0b246910  add.ul r[9:10], r[19:20], r[7:8]
0018a4  9b372400  slli r15, r8, 2
0018a8  0b1dfa10  add.s r26, r20, r15
0018ac  ef41cd00  loads.w r3, 12(r26)
0018b0  978bd100  and r23, r3, r13
0018b4  93027e05  setlt.u r5, r28, r23
0018b8  3bb00200  bneq r5, zero, 12
0018bc  9f820100  addli r5, r3, 0
0018c0  db010000  j 12
0018c4  ab024000  lui r5, 1024
0018c8  97925100  or r5, r3, r5
0018cc  ef4d8d00  loads.w r27, 8(r26)
0018d0  1788dd00  and r16, r27, r13
0018d4  13040e05  setlt.u r8, r28, r16
0018d8  3b300400  bneq r8, zero, 12
0018dc  9f8c0d00  addli r25, r27, 0
0018e0  db010000  j 12
0018e4  2b044000  lui r8, 1024
0018e8  979c8d00  or r25, r27, r8
0018ec  ef454d00  loads.w r11, 4(r26)
0018f0  1784d500  and r8, r11, r13
0018f4  93048e04  setlt.u r9, r28, r8
0018f8  3bb00400  bneq r9, zero, 12
0018fc  1f860500  addli r12, r11, 0
001900  db010000  j 12
001904  ab044000  lui r9, 1024
001908  17969500  or r12, r11, r9
00190c  ef440d00  loads.w r9, 0(r26)
001910  178cd400  and r24, r9, r13
001914  130d8e05  setlt.u r26, r28, r24
001918  3b010d00  bneq r26, zero, 64
00191c  1f8d0400  addli r26, r9, 0
001920  138c8805  setlt.u r24, r17, r24
001924  3b600c00  bneq r24, zero, 24
001928  1bcc0401  srli r24, r9, 16
00192c  1b0c1c00  andi r24, r24, 1
001930  8b948411  add.s r9, r9, r24
001934  8b94e410  add.s r9, r9, r14
001938  178d4400  and r26, r9, r4
00193c  13848804  setlt.u r8, r17, r8
001940  b7300400  beq r8, zero, 44
001944  13840805  setlt.u r8, r17, r16
001948  37010400  beq r8, zero, 64
00194c  13847805  setlt.u r8, r17, r23
001950  bb4c04fe  bneq r8, zero, -208
001954  5b0a0000  j 80
001958  2b0d4000  lui r26, 1024
00195c  179da401  or r26, r9, r26
001960  138c8805  setlt.u r24, r17, r24
001964  371f0cfe  beq r24, zero, -60
001968  dbfaffff  j -44
00196c  1bc40501  srli r8, r11, 16
001970  1b041400  andi r8, r8, 1
001974  0b948510  add.s r8, r11, r8
001978  0b14e410  add.s r8, r8, r14
00197c  17064400  and r12, r8, r4
001980  13840805  setlt.u r8, r17, r16
001984  3b2f04fe  bneq r8, zero, -56
001988  1bc40d01  srli r8, r27, 16
00198c  1b041400  andi r8, r8, 1
001990  0b948d10  add.s r8, r27, r8
001994  0b14e410  add.s r8, r8, r14
001998  970c4400  and r25, r8, r4
00199c  13847805  setlt.u r8, r17, r23
0019a0  bb0b04fe  bneq r8, zero, -288
0019a4  9bc20101  srli r5, r3, 16
0019a8  9b821200  andi r5, r5, 1
0019ac  8b915110  add.s r3, r3, r5
0019b0  8b91e110  add.s r3, r3, r14
0019b4  97824100  and r5, r3, r4
0019b8  5bd9ffff  j -312
0019bc  00200100  mfence { sm }
0019c0  00360002  core_id r12
0019c4  6b590fff  load.d r[19:20], -16(r30)
0019c8  6b548ffe  load.d r[9:10], -24(r30)
0019cc  9f70f001  addli r1, zero, 255
0019d0  80a20004  csr_set csr5, r1
0019d4  00e00200  sync_core
0019d8  e300cfff  loadli.w r1,  -32(r30)
0019dc  bbd000f4  bneq r1, zero, -6092
0019e0  3b0106f4  bneq r12, zero, -6080
0019e4  e3007fff  loadli.w r1,  -72(r30)
0019e8  1f010007  addli r2, zero, 896
0019ec  a70b0400  addli.d r[24:25], r[9:10], 0
0019f0  9f058000  addli r11, zero, 64
0019f4  eb570f01  load.d r[16:17], 16(r30)
0019f8  33010128  zext_int2long r[3:4], r2
0019fc  9bb07000  slli r1, r1, 7
001a00  b3820028  zext_int2long r[6:7], r1
001a04  e3407fff  loadli.w r1,  -68(r30)
001a08  0ba12240  min.ul r[3:4], r[6:7], r[3:4]
001a0c  9bb06000  slli r1, r1, 6
001a10  b3930028  sext_int2long r[8:9], r1
001a14  a7000101  addli.d r[2:3], r[3:4], 128
001a18  9f112000  addli r3, zero, 17
001a1c  8bb42341  min.sl r[10:11], r[8:9], r[19:20]
001a20  8ba05048  max.ul r[2:3], r[2:3], r[6:7]
001a24  a7848400  addli.d r[10:11], r[10:11], 64
001a28  8bb05018  sub.sl r[2:3], r[2:3], r[6:7]
001a2c  8bb27448  max.sl r[6:7], r[10:11], r[8:9]
001a30  b3840528  zext_int2long r[10:11], r11
001a34  8ba05041  min.ul r[2:3], r[2:3], r[22:23]
001a38  8bb27218  sub.sl r[6:7], r[6:7], r[8:9]
001a3c  eb530ffc  load.d r[8:9], -64(r30)
001a40  8bb29240  min.sl r[6:7], r[6:7], r[10:11]
001a44  1f150000  addli r10, zero, 1
001a48  9ff43000  addli r9, r1, 31
001a4c  9bb01000  slli r1, r1, 1
001a50  1f010001  addli r2, zero, 128
001a54  97b33302  sll.d r[8:9], r[8:9], r3
001a58  9f411000  addli r3, zero, 12
001a5c  9b80e003  andi r1, r1, 62
001a60  8ba37710  add.ul r[8:9], r[16:17], r[8:9]
001a64  7d900100  xwait r3, 0
001a68  ab010500  lui r3, 80
001a6c  9f570000  addli r15, zero, 5
001a70  9b910104  ori r3, r3, 64
001a74  1d800700  lock zero, r15
001a78  8ba37311  add.ul r[8:9], r[8:9], r[24:25]
001a7c  15050500  dma_cfg r10, r10, zero, 0
001a80  15000502  dma_cfg zero, r10, zero, 1
001a84  8b113a10  add.s r3, r20, r3
001a88  15040004  dma_cfg r8, zero, zero, 2
001a8c  9583b106  dma_cfg r7, r3, r11, 3
001a90  9bc15400  srli r3, r9, 5
001a94  9f030010  addli r7, zero, 2048
001a98  95053108  dma_cfg r11, r2, r3, 4
001a9c  9f010004  addli r3, zero, 512
001aa0  9f750000  addli r11, zero, 7
001aa4  1f511000  addli r2, zero, 13
001aa8  9583510a  dma_cfg r7, r3, r5, 5
001aac  15001010  dma_cfg zero, zero, r1, 8
001ab0  35000000  dma_run zero
001ab4  1500a00a  dma_cfg zero, zero, r10, 5
001ab8  15000010  dma_cfg zero, zero, zero, 8
001abc  1d900700  unlock r15
001ac0  7d000100  xsignal r2, 0
001ac4  dbebfcff  j -6308
001ac8  1f011000  addli r2, zero, 8
001acc  7d900a00  xwait r21, 0
001ad0  9f020000  addli r5, zero, 0
001ad4  9f110000  addli r3, zero, 1
001ad8  1f331000  addli r6, zero, 11
001adc  7d100100  xwait r2, 0
001ae0  1f110000  addli r2, zero, 1
001ae4  7d100300  xwait r6, 0
001ae8  1bb3e200  slli r6, r5, 14
001aec  9bb28200  slli r5, r5, 8
001af0  1d000100  lock zero, r2
001af4  090b6b01  mm_cfg r22, r22, r22, 0
001af8  17134301  or r6, r6, r20
001afc  97924201  or r5, r5, r20
001b00  898a2a04  mm_cfg r21, r21, r2, 2
001b04  a9826010  mm r5, r1, r6, 8
001b08  1b831100  andi r6, r3, 1
001b0c  9f120000  addli r5, zero, 1
001b10  9f010000  addli r3, zero, 0
001b14  1d100100  unlock r2
001b18  3b4f03fe  bneq r6, zero, -48
001b1c  9f500000  addli r1, zero, 5
001b20  670e0ffe  storeli.w zero, -32(r30)
001b24  674d0ffe  storeli.w zero, -44(r30)
001b28  7d800000  xsignal r1, 0
001b2c  9f101000  addli r1, zero, 9
001b30  7d800000  xsignal r1, 0
001b34  9f100000  addli r1, zero, 1
001b38  670d1ffe  storeli.w r1, -48(r30)
001b3c  9f201000  addli r1, zero, 10
001b40  7d800000  xsignal r1, 0
001b44  5bb1fdff  j -4728
001b48  9f201000  addli r1, zero, 10
001b4c  674d0ffe  storeli.w zero, -44(r30)
001b50  670d0ffe  storeli.w zero, -48(r30)
001b54  7d900000  xwait r1, 0
001b58  9f100000  addli r1, zero, 1
001b5c  670e1ffe  storeli.w r1, -32(r30)
001b60  9f501000  addli r1, zero, 13
001b64  7d900000  xwait r1, 0
001b68  dbacfdff  j -4764
001b6c  670e0ffe  storeli.w zero, -32(r30)
001b70  674d0ffe  storeli.w zero, -44(r30)
001b74  670d0ffe  storeli.w zero, -48(r30)
001b78  dbaafdff  j -4780
001b7c  7d000000  xsignal zero, 0
001b80  bb600600  bneq r12, zero, 56
001b84  9f200000  addli r1, zero, 2
001b88  7d100000  xwait zero, 0
001b8c  7d100000  xwait zero, 0
001b90  7d100000  xwait zero, 0
001b94  7d100000  xwait zero, 0
001b98  7d100000  xwait zero, 0
001b9c  7d100000  xwait zero, 0
001ba0  7d100000  xwait zero, 0
001ba4  7d100000  xwait zero, 0
001ba8  1d800000  lock zero, r1
001bac  0d000020  ew_cfg zero, zero, zero, 16
001bb0  1d900000  unlock r1
001bb4  7d400000  xsignal_mode_cfg zero
001bb8  9f8ece00  addli sp, sp, 96
001bbc  00a00300  mfence { lm, sm, gm }
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
001df4  00100000  exit
001df8  00100000  exit
001dfc  00100000  exit
001e00  00100000  exit
