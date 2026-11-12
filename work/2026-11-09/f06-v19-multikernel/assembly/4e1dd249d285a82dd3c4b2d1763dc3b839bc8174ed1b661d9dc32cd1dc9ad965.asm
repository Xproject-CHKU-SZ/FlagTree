; SHA-256 4e1dd249d285a82dd3c4b2d1763dc3b839bc8174ed1b661d9dc32cd1dc9ad965
; P800 SDNN · XTDK LLVM 19 · 4087 / 4087 words decoded
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
0000b4  9f8eeefd  addli sp, sp, -272
0000b8  9f100000  addli r1, zero, 1
0000bc  80340002  core_id r9
0000c0  1f8fae01  addli r30, sp, 208
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7900400  beq r9, zero, 36
0000cc  2bf1ffff  lui r2, 1048575
0000d0  7d900000  xwait r1, 0
0000d4  7d900000  xwait r1, 0
0000d8  7d100000  xwait zero, 0
0000dc  9b10f1ff  ori r1, r2, 4095
0000e0  80a10004  csr_set csr3, r1
0000e4  00d00100  sync_group
0000e8  db280000  j 324
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
00014c  1f510000  addli r2, zero, 5
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
00018c  9f301000  addli r1, zero, 11
000190  00d00100  sync_group
000194  7d800000  xsignal r1, 0
000198  7d800000  xsignal r1, 0
00019c  7d800000  xsignal r1, 0
0001a0  7d000100  xsignal r2, 0
0001a4  7d000100  xsignal r2, 0
0001a8  7d000100  xsignal r2, 0
0001ac  9f300000  addli r1, zero, 3
0001b0  1f111000  addli r2, zero, 9
0001b4  7d800000  xsignal r1, 0
0001b8  7d800000  xsignal r1, 0
0001bc  7d800000  xsignal r1, 0
0001c0  7d000100  xsignal r2, 0
0001c4  7d000100  xsignal r2, 0
0001c8  7d000100  xsignal r2, 0
0001cc  9f700000  addli r1, zero, 7
0001d0  1f012000  addli r2, zero, 16
0001d4  7d800000  xsignal r1, 0
0001d8  7d800000  xsignal r1, 0
0001dc  7d800000  xsignal r1, 0
0001e0  7d000100  xsignal r2, 0
0001e4  7d000100  xsignal r2, 0
0001e8  7d000100  xsignal r2, 0
0001ec  9f602000  addli r1, zero, 22
0001f0  1f611000  addli r2, zero, 14
0001f4  7d800000  xsignal r1, 0
0001f8  7d800000  xsignal r1, 0
0001fc  7d800000  xsignal r1, 0
000200  7d000100  xsignal r2, 0
000204  7d000100  xsignal r2, 0
000208  7d000100  xsignal r2, 0
00020c  9f003000  addli r1, zero, 24
000210  1f113000  addli r2, zero, 25
000214  7d800000  xsignal r1, 0
000218  7d800000  xsignal r1, 0
00021c  7d800000  xsignal r1, 0
000220  7d000100  xsignal r2, 0
000224  7d000100  xsignal r2, 0
000228  7d000100  xsignal r2, 0
00022c  e3005f00  loadli.w r1,  40(r30)
000230  63415f00  loadli.w r2,  44(r30)
000234  00d20002  load_param_i r4, 1
000238  e3016f00  loadli.w r3,  48(r30)
00023c  8b101120  mul.s r1, r2, r1
000240  1f010200  addli r2, r4, 0
000244  0b913050  fmac.s r2, r1, r3
000248  8b913020  mul.s r3, r1, r3
00024c  1f71f1ff  addli r2, r2, -1
000250  0b114130  div.s r2, r2, r4
000254  00520002  load_param_i r4, 0
000258  8b104120  mul.s r1, r2, r4
00025c  0b114150  fmac.s r2, r2, r4
000260  0b113140  min.s r2, r2, r3
000264  cb4b111c  ble.s r2, r1, 15088
000268  33110128  sext_int2long r[3:4], r2
00026c  33950028  sext_int2long r[11:12], r1
000270  2b820d00  lui r4, 216
000274  1f380000  addli r16, zero, 3
000278  9f080001  addli r17, zero, 128
00027c  1f092000  addli r18, zero, 16
000280  1f0b1000  addli r22, zero, 8
000284  1f7a0000  addli r20, zero, 7
000288  9f6a0000  addli r21, zero, 6
00028c  9f671000  addli r15, zero, 14
000290  9f2b0000  addli r23, zero, 2
000294  1f1c0000  addli r24, zero, 1
000298  1f4d0000  addli r26, zero, 4
00029c  ab0d807f  lui r27, 522240
0002a0  ab0cffff  lui r25, 1048560
0002a4  1f070000  addli r14, zero, 0
0002a8  733c2ff4  store.d r[3:4], -168(r30)
0002ac  1f71f01f  addli r2, zero, 4095
0002b0  ab00feff  lui r1, 1048544
0002b4  73381ff4  store.d r[2:3], -176(r30)
0002b8  2bf1ff7f  lui r2, 524287
0002bc  ab000900  lui r1, 144
0002c0  1b1ef1ff  ori r28, r2, 4095
0002c4  2bf17f7f  lui r2, 522239
0002c8  9b900060  ori r1, r1, 1536
0002cc  9b11f1ff  ori r3, r2, 4095
0002d0  2b010c00  lui r2, 192
0002d4  e7441ffe  storeli.w r1, -180(r30)
0002d8  ab700000  lui r1, 7
0002dc  1b110160  ori r2, r2, 1536
0002e0  9b90f0ff  ori r1, r1, 4095
0002e4  e7042ffe  storeli.w r2, -184(r30)
0002e8  1b11d2b4  ori r2, r4, 2893
0002ec  2bf27fff  lui r4, 1046527
0002f0  e7432ffe  storeli.w r2, -196(r30)
0002f4  2b010f00  lui r2, 240
0002f8  1b110160  ori r2, r2, 1536
0002fc  e7032ffe  storeli.w r2, -200(r30)
000300  1b11f2ff  ori r2, r4, 4095
000304  33020028  zext_int2long r[5:6], zero
000308  73304ff4  store.d r[5:6], -192(r30)
00030c  ab024000  lui r5, 1024
000310  67432ffe  storeli.w r2, -204(r30)
000314  db0a0000  j 84
000318  1f512000  addli r2, zero, 21
00031c  9f080001  addli r17, zero, 128
000320  1f092000  addli r18, zero, 16
000324  1f0b1000  addli r22, zero, 8
000328  1f7a0000  addli r20, zero, 7
00032c  9f6a0000  addli r21, zero, 6
000330  9f671000  addli r15, zero, 14
000334  9f2b0000  addli r23, zero, 2
000338  1f1c0000  addli r24, zero, 1
00033c  1f4d0000  addli r26, zero, 4
000340  7d000100  xsignal r2, 0
000344  1f013000  addli r2, zero, 24
000348  7d000100  xsignal r2, 0
00034c  6b550ff8  load.d r[11:12], -128(r30)
000350  6b538ff5  load.d r[7:8], -168(r30)
000354  63471fff  loadli.w r14,  -116(r30)
000358  27150500  addli.d r[11:12], r[11:12], 1
00035c  1f170700  addli r14, r14, 1
000360  13316504  setlt.sl r2, r[11:12], r[7:8]
000364  b747011c  beq r2, zero, 14832
000368  63016f00  loadli.w r2,  48(r30)
00036c  63425f00  loadli.w r4,  44(r30)
000370  7330aff8  store.d r[11:12], -128(r30)
000374  0b112530  div.s r2, r10, r2
000378  0b114130  div.s r2, r2, r4
00037c  8b131131  div.s r7, r2, r17
000380  1bb23300  slli r4, r7, 3
000384  0b134918  sub.s r6, r18, r4
000388  0b146341  min.s r8, r6, r22
00038c  0b138138  mod.s r6, r2, r8
000390  0b134310  add.s r6, r6, r4
000394  1f721000  addli r4, zero, 15
000398  13026204  setlt.u r4, r4, r6
00039c  b3040328  zext_int2long r[10:11], r6
0003a0  67466ffe  storeli.w r6, -156(r30)
0003a4  1f531000  addli r6, zero, 13
0003a8  733c9ff6  store.d r[10:11], -136(r30)
0003ac  17b56402  sll.d r[11:12], r[10:11], r6
0003b0  3b300200  bneq r4, zero, 12
0003b4  6b560ff4  load.d r[13:14], -192(r30)
0003b8  db010000  j 12
0003bc  6b560ff5  load.d r[13:14], -176(r30)
0003c0  1706c502  and.d r[13:14], r[11:12], r[13:14]
0003c4  0b120739  mod.s r4, r14, r16
0003c8  e748effe  storeli.w r14, -116(r30)
0003cc  e74a4ffe  storeli.w r4, -84(r30)
0003d0  1b33f200  slli r6, r4, 15
0003d4  1f02000f  addli r4, zero, 1920
0003d8  33090228  zext_int2long r[19:20], r4
0003dc  2b020300  lui r4, 48
0003e0  8b144310  add.s r9, r6, r4
0003e4  00320002  core_id r4
0003e8  73302ffb  store.d r[19:20], -96(r30)
0003ec  bb3a5201  bneq r4, r21, 684
0003f0  0b35c518  sub.sl r[11:12], r[11:12], r[13:14]
0003f4  1f020700  addli r4, r14, 0
0003f8  6b578ff7  load.d r[15:16], -136(r30)
0003fc  7d100800  xwait r16, 0
000400  17555503  sra.d r[11:12], r[11:12], r21
000404  0b362541  min.sl r[13:14], r[11:12], r[19:20]
000408  1f691000  addli r18, zero, 14
00040c  0b35a618  sub.sl r[11:12], r[13:14], r[11:12]
000410  6b560f00  load.d r[13:14], 0(r30)
000414  17372703  sll.d r[15:16], r[15:16], r18
000418  1f092000  addli r18, zero, 16
00041c  1f050501  addli r10, r10, 128
000420  8b26e610  add.ul r[14:15], r[13:14], r[15:16]
000424  9f671000  addli r15, zero, 14
000428  3fd44b00  blt.s r23, r4, 276
00042c  9f550000  addli r11, zero, 5
000430  1f121000  addli r4, zero, 9
000434  1d800500  lock zero, r11
000438  15000014  dma_cfg zero, zero, zero, 10
00043c  15008015  dma_cfg zero, zero, r24, 10
000440  15007015  dma_cfg zero, zero, r23, 10
000444  15000015  dma_cfg zero, zero, r16, 10
000448  1500a015  dma_cfg zero, zero, r26, 10
00044c  1500b014  dma_cfg zero, zero, r11, 10
000450  15005015  dma_cfg zero, zero, r21, 10
000454  15004015  dma_cfg zero, zero, r20, 10
000458  15006015  dma_cfg zero, zero, r22, 10
00045c  15004014  dma_cfg zero, zero, r4, 10
000460  1f221000  addli r4, zero, 10
000464  15004014  dma_cfg zero, zero, r4, 10
000468  1f321000  addli r4, zero, 11
00046c  15004014  dma_cfg zero, zero, r4, 10
000470  1f421000  addli r4, zero, 12
000474  15004014  dma_cfg zero, zero, r4, 10
000478  1f521000  addli r4, zero, 13
00047c  15004014  dma_cfg zero, zero, r4, 10
000480  1f721000  addli r4, zero, 15
000484  1500f014  dma_cfg zero, zero, r15, 10
000488  15004014  dma_cfg zero, zero, r4, 10
00048c  1f122000  addli r4, zero, 17
000490  15002015  dma_cfg zero, zero, r18, 10
000494  15004014  dma_cfg zero, zero, r4, 10
000498  1f222000  addli r4, zero, 18
00049c  15004014  dma_cfg zero, zero, r4, 10
0004a0  1f322000  addli r4, zero, 19
0004a4  15004014  dma_cfg zero, zero, r4, 10
0004a8  1f422000  addli r4, zero, 20
0004ac  15004014  dma_cfg zero, zero, r4, 10
0004b0  1f522000  addli r4, zero, 21
0004b4  15004014  dma_cfg zero, zero, r4, 10
0004b8  1f622000  addli r4, zero, 22
0004bc  15004014  dma_cfg zero, zero, r4, 10
0004c0  1f722000  addli r4, zero, 23
0004c4  15004014  dma_cfg zero, zero, r4, 10
0004c8  1f023000  addli r4, zero, 24
0004cc  15004014  dma_cfg zero, zero, r4, 10
0004d0  1f123000  addli r4, zero, 25
0004d4  15004014  dma_cfg zero, zero, r4, 10
0004d8  1f223000  addli r4, zero, 26
0004dc  15004014  dma_cfg zero, zero, r4, 10
0004e0  1f323000  addli r4, zero, 27
0004e4  15004014  dma_cfg zero, zero, r4, 10
0004e8  1f423000  addli r4, zero, 28
0004ec  15004014  dma_cfg zero, zero, r4, 10
0004f0  1f523000  addli r4, zero, 29
0004f4  15004014  dma_cfg zero, zero, r4, 10
0004f8  1f623000  addli r4, zero, 30
0004fc  15004014  dma_cfg zero, zero, r4, 10
000500  1f723000  addli r4, zero, 31
000504  15004014  dma_cfg zero, zero, r4, 10
000508  1f028000  addli r4, zero, 64
00050c  150c0c00  dma_cfg r24, r24, zero, 0
000510  150c0002  dma_cfg r24, zero, zero, 1
000514  15000004  dma_cfg zero, zero, zero, 2
000518  95044006  dma_cfg r9, zero, r4, 3
00051c  1f020002  addli r4, zero, 256
000520  95087009  dma_cfg r17, zero, r23, 4
000524  1502100b  dma_cfg r4, zero, r17, 5
000528  15000010  dma_cfg zero, zero, zero, 8
00052c  35000000  dma_run zero
000530  1500800b  dma_cfg zero, zero, r24, 5
000534  15000010  dma_cfg zero, zero, zero, 8
000538  1d900500  unlock r11
00053c  2b020300  lui r4, 48
000540  67090ffe  storeli.w zero, -112(r30)
000544  9f058000  addli r11, zero, 64
000548  1f068000  addli r12, zero, 64
00054c  1d000d00  lock zero, r26
000550  1b120204  ori r4, r4, 64
000554  150c0c00  dma_cfg r24, r24, zero, 0
000558  15000704  dma_cfg zero, r14, zero, 2
00055c  0b124310  add.s r4, r6, r4
000560  1582b606  dma_cfg r4, r13, r11, 3
000564  9f060002  addli r13, zero, 256
000568  9f550000  addli r11, zero, 5
00056c  1f121000  addli r4, zero, 9
000570  95087609  dma_cfg r17, r12, r23, 4
000574  9586a80a  dma_cfg r13, r17, r10, 5
000578  15000010  dma_cfg zero, zero, zero, 8
00057c  35000000  dma_run zero
000580  1500800b  dma_cfg zero, zero, r24, 5
000584  15000010  dma_cfg zero, zero, zero, 8
000588  1d100d00  unlock r26
00058c  1d800500  lock zero, r11
000590  15000014  dma_cfg zero, zero, zero, 10
000594  15008015  dma_cfg zero, zero, r24, 10
000598  15007015  dma_cfg zero, zero, r23, 10
00059c  15000015  dma_cfg zero, zero, r16, 10
0005a0  1500a015  dma_cfg zero, zero, r26, 10
0005a4  1500b014  dma_cfg zero, zero, r11, 10
0005a8  15005015  dma_cfg zero, zero, r21, 10
0005ac  15004015  dma_cfg zero, zero, r20, 10
0005b0  15006015  dma_cfg zero, zero, r22, 10
0005b4  15004014  dma_cfg zero, zero, r4, 10
0005b8  1f221000  addli r4, zero, 10
0005bc  15004014  dma_cfg zero, zero, r4, 10
0005c0  1f321000  addli r4, zero, 11
0005c4  15004014  dma_cfg zero, zero, r4, 10
0005c8  1f421000  addli r4, zero, 12
0005cc  15004014  dma_cfg zero, zero, r4, 10
0005d0  1f521000  addli r4, zero, 13
0005d4  15004014  dma_cfg zero, zero, r4, 10
0005d8  1f721000  addli r4, zero, 15
0005dc  1500f014  dma_cfg zero, zero, r15, 10
0005e0  15004014  dma_cfg zero, zero, r4, 10
0005e4  1f122000  addli r4, zero, 17
0005e8  15002015  dma_cfg zero, zero, r18, 10
0005ec  15004014  dma_cfg zero, zero, r4, 10
0005f0  1f222000  addli r4, zero, 18
0005f4  15004014  dma_cfg zero, zero, r4, 10
0005f8  1f322000  addli r4, zero, 19
0005fc  15004014  dma_cfg zero, zero, r4, 10
000600  1f422000  addli r4, zero, 20
000604  15004014  dma_cfg zero, zero, r4, 10
000608  1f522000  addli r4, zero, 21
00060c  15004014  dma_cfg zero, zero, r4, 10
000610  1f622000  addli r4, zero, 22
000614  15004014  dma_cfg zero, zero, r4, 10
000618  1f722000  addli r4, zero, 23
00061c  15004014  dma_cfg zero, zero, r4, 10
000620  1f023000  addli r4, zero, 24
000624  15004014  dma_cfg zero, zero, r4, 10
000628  1f123000  addli r4, zero, 25
00062c  15004014  dma_cfg zero, zero, r4, 10
000630  1f223000  addli r4, zero, 26
000634  15004014  dma_cfg zero, zero, r4, 10
000638  1f323000  addli r4, zero, 27
00063c  15004014  dma_cfg zero, zero, r4, 10
000640  1f423000  addli r4, zero, 28
000644  15004014  dma_cfg zero, zero, r4, 10
000648  1f523000  addli r4, zero, 29
00064c  15004014  dma_cfg zero, zero, r4, 10
000650  1f623000  addli r4, zero, 30
000654  15004014  dma_cfg zero, zero, r4, 10
000658  1f723000  addli r4, zero, 31
00065c  15004014  dma_cfg zero, zero, r4, 10
000660  150c0c00  dma_cfg r24, r24, zero, 0
000664  150c0002  dma_cfg r24, zero, zero, 1
000668  15000004  dma_cfg zero, zero, zero, 2
00066c  9504c006  dma_cfg r9, zero, r12, 3
000670  95087009  dma_cfg r17, zero, r23, 4
000674  9506a00a  dma_cfg r13, zero, r10, 5
000678  15000010  dma_cfg zero, zero, zero, 8
00067c  35000000  dma_run zero
000680  1500800b  dma_cfg zero, zero, r24, 5
000684  15000010  dma_cfg zero, zero, zero, 8
000688  1d900500  unlock r11
00068c  7d800b00  xsignal r23, 0
000690  63471fff  loadli.w r14,  -116(r30)
000694  db0a0000  j 84
000698  3b117201  bneq r4, r23, 68
00069c  1f520000  addli r4, zero, 5
0006a0  7d900b00  xwait r23, 0
0006a4  1f068000  addli r12, zero, 64
0006a8  7d100200  xwait r4, 0
0006ac  1d000000  lock zero, zero
0006b0  1f120000  addli r4, zero, 1
0006b4  810b0000  ds_cfg r23, zero, 0
0006b8  01060002  ds_cfg r12, zero, 1
0006bc  0106001c  ds_cfg r12, zero, 14
0006c0  8108001a  ds_cfg r17, zero, 13
0006c4  2193c402  shuffle_batch r6, r9, r12, 1
0006c8  1d100000  unlock zero
0006cc  7d000800  xsignal r16, 0
0006d0  67094ffe  storeli.w r4, -112(r30)
0006d4  7d000d00  xsignal r26, 0
0006d8  db010000  j 12
0006dc  67090ffe  storeli.w zero, -112(r30)
0006e0  1f068000  addli r12, zero, 64
0006e4  1f092000  addli r18, zero, 16
0006e8  1bb27300  slli r4, r7, 7
0006ec  80340002  core_id r9
0006f0  0b114118  sub.s r2, r2, r4
0006f4  0b118130  div.s r2, r2, r8
0006f8  b3030128  zext_int2long r[8:9], r2
0006fc  e7492ffe  storeli.w r2, -100(r30)
000700  63415fff  loadli.w r2,  -84(r30)
000704  97b34303  sll.d r[8:9], r[8:9], r20
000708  9b360101  slli r13, r2, 16
00070c  2b810400  lui r2, 72
000710  97b38303  sll.d r[8:9], r[8:9], r24
000714  0b112310  add.s r2, r6, r2
000718  73387ff6  store.d r[8:9], -144(r30)
00071c  bbf98401  bneq r9, r24, 636
000720  27850300  addli.d r[11:12], r[8:9], 0
000724  eb538f00  load.d r[8:9], 8(r30)
000728  7d100a00  xwait r20, 0
00072c  8ba3a310  add.ul r[8:9], r[8:9], r[11:12]
000730  3fc4eb00  blt.s r23, r14, 272
000734  1f550000  addli r10, zero, 5
000738  1f121000  addli r4, zero, 9
00073c  1d000500  lock zero, r10
000740  15000014  dma_cfg zero, zero, zero, 10
000744  15008015  dma_cfg zero, zero, r24, 10
000748  15007015  dma_cfg zero, zero, r23, 10
00074c  15000015  dma_cfg zero, zero, r16, 10
000750  1500a015  dma_cfg zero, zero, r26, 10
000754  1500a014  dma_cfg zero, zero, r10, 10
000758  15005015  dma_cfg zero, zero, r21, 10
00075c  15004015  dma_cfg zero, zero, r20, 10
000760  15006015  dma_cfg zero, zero, r22, 10
000764  15004014  dma_cfg zero, zero, r4, 10
000768  1f221000  addli r4, zero, 10
00076c  15004014  dma_cfg zero, zero, r4, 10
000770  1f321000  addli r4, zero, 11
000774  15004014  dma_cfg zero, zero, r4, 10
000778  1f421000  addli r4, zero, 12
00077c  15004014  dma_cfg zero, zero, r4, 10
000780  1f521000  addli r4, zero, 13
000784  15004014  dma_cfg zero, zero, r4, 10
000788  1f721000  addli r4, zero, 15
00078c  1500f014  dma_cfg zero, zero, r15, 10
000790  15004014  dma_cfg zero, zero, r4, 10
000794  1f122000  addli r4, zero, 17
000798  15002015  dma_cfg zero, zero, r18, 10
00079c  15004014  dma_cfg zero, zero, r4, 10
0007a0  1f222000  addli r4, zero, 18
0007a4  15004014  dma_cfg zero, zero, r4, 10
0007a8  1f322000  addli r4, zero, 19
0007ac  15004014  dma_cfg zero, zero, r4, 10
0007b0  1f422000  addli r4, zero, 20
0007b4  15004014  dma_cfg zero, zero, r4, 10
0007b8  1f522000  addli r4, zero, 21
0007bc  15004014  dma_cfg zero, zero, r4, 10
0007c0  1f622000  addli r4, zero, 22
0007c4  15004014  dma_cfg zero, zero, r4, 10
0007c8  1f722000  addli r4, zero, 23
0007cc  15004014  dma_cfg zero, zero, r4, 10
0007d0  1f023000  addli r4, zero, 24
0007d4  15004014  dma_cfg zero, zero, r4, 10
0007d8  1f123000  addli r4, zero, 25
0007dc  15004014  dma_cfg zero, zero, r4, 10
0007e0  1f223000  addli r4, zero, 26
0007e4  15004014  dma_cfg zero, zero, r4, 10
0007e8  1f323000  addli r4, zero, 27
0007ec  15004014  dma_cfg zero, zero, r4, 10
0007f0  1f423000  addli r4, zero, 28
0007f4  15004014  dma_cfg zero, zero, r4, 10
0007f8  1f523000  addli r4, zero, 29
0007fc  15004014  dma_cfg zero, zero, r4, 10
000800  1f623000  addli r4, zero, 30
000804  15004014  dma_cfg zero, zero, r4, 10
000808  1f723000  addli r4, zero, 31
00080c  15004014  dma_cfg zero, zero, r4, 10
000810  1f020004  addli r4, zero, 512
000814  150c0c00  dma_cfg r24, r24, zero, 0
000818  150c0002  dma_cfg r24, zero, zero, 1
00081c  15000004  dma_cfg zero, zero, zero, 2
000820  1501c006  dma_cfg r2, zero, r12, 3
000824  9508a009  dma_cfg r17, zero, r26, 4
000828  1502c00a  dma_cfg r4, zero, r12, 5
00082c  15000010  dma_cfg zero, zero, zero, 8
000830  35000000  dma_run zero
000834  1500800b  dma_cfg zero, zero, r24, 5
000838  15000010  dma_cfg zero, zero, zero, 8
00083c  1d100500  unlock r10
000840  2b820400  lui r4, 72
000844  67490ffe  storeli.w zero, -108(r30)
000848  e7090ffe  storeli.w zero, -104(r30)
00084c  1d000d00  lock zero, r26
000850  1b120204  ori r4, r4, 64
000854  150c0c00  dma_cfg r24, r24, zero, 0
000858  15000404  dma_cfg zero, r8, zero, 2
00085c  0b124310  add.s r4, r6, r4
000860  1f530000  addli r6, zero, 5
000864  1582c306  dma_cfg r4, r7, r12, 3
000868  9f030004  addli r7, zero, 512
00086c  1f020020  addli r4, zero, 4096
000870  9508a609  dma_cfg r17, r12, r26, 4
000874  9503c20a  dma_cfg r7, r4, r12, 5
000878  1f121000  addli r4, zero, 9
00087c  15000010  dma_cfg zero, zero, zero, 8
000880  35000000  dma_run zero
000884  1500800b  dma_cfg zero, zero, r24, 5
000888  15000010  dma_cfg zero, zero, zero, 8
00088c  1d100d00  unlock r26
000890  1d000300  lock zero, r6
000894  15000014  dma_cfg zero, zero, zero, 10
000898  15008015  dma_cfg zero, zero, r24, 10
00089c  15007015  dma_cfg zero, zero, r23, 10
0008a0  15000015  dma_cfg zero, zero, r16, 10
0008a4  1500a015  dma_cfg zero, zero, r26, 10
0008a8  15006014  dma_cfg zero, zero, r6, 10
0008ac  15005015  dma_cfg zero, zero, r21, 10
0008b0  15004015  dma_cfg zero, zero, r20, 10
0008b4  15006015  dma_cfg zero, zero, r22, 10
0008b8  15004014  dma_cfg zero, zero, r4, 10
0008bc  1f221000  addli r4, zero, 10
0008c0  15004014  dma_cfg zero, zero, r4, 10
0008c4  1f321000  addli r4, zero, 11
0008c8  15004014  dma_cfg zero, zero, r4, 10
0008cc  1f421000  addli r4, zero, 12
0008d0  15004014  dma_cfg zero, zero, r4, 10
0008d4  1f521000  addli r4, zero, 13
0008d8  15004014  dma_cfg zero, zero, r4, 10
0008dc  1f721000  addli r4, zero, 15
0008e0  1500f014  dma_cfg zero, zero, r15, 10
0008e4  15004014  dma_cfg zero, zero, r4, 10
0008e8  1f122000  addli r4, zero, 17
0008ec  15002015  dma_cfg zero, zero, r18, 10
0008f0  15004014  dma_cfg zero, zero, r4, 10
0008f4  1f222000  addli r4, zero, 18
0008f8  15004014  dma_cfg zero, zero, r4, 10
0008fc  1f322000  addli r4, zero, 19
000900  15004014  dma_cfg zero, zero, r4, 10
000904  1f422000  addli r4, zero, 20
000908  15004014  dma_cfg zero, zero, r4, 10
00090c  1f522000  addli r4, zero, 21
000910  15004014  dma_cfg zero, zero, r4, 10
000914  1f622000  addli r4, zero, 22
000918  15004014  dma_cfg zero, zero, r4, 10
00091c  1f722000  addli r4, zero, 23
000920  15004014  dma_cfg zero, zero, r4, 10
000924  1f023000  addli r4, zero, 24
000928  15004014  dma_cfg zero, zero, r4, 10
00092c  1f123000  addli r4, zero, 25
000930  15004014  dma_cfg zero, zero, r4, 10
000934  1f223000  addli r4, zero, 26
000938  15004014  dma_cfg zero, zero, r4, 10
00093c  1f323000  addli r4, zero, 27
000940  15004014  dma_cfg zero, zero, r4, 10
000944  1f423000  addli r4, zero, 28
000948  15004014  dma_cfg zero, zero, r4, 10
00094c  1f523000  addli r4, zero, 29
000950  15004014  dma_cfg zero, zero, r4, 10
000954  1f623000  addli r4, zero, 30
000958  15004014  dma_cfg zero, zero, r4, 10
00095c  1f723000  addli r4, zero, 31
000960  15004014  dma_cfg zero, zero, r4, 10
000964  150c0c00  dma_cfg r24, r24, zero, 0
000968  150c0002  dma_cfg r24, zero, zero, 1
00096c  15000004  dma_cfg zero, zero, zero, 2
000970  1501c006  dma_cfg r2, zero, r12, 3
000974  9508a009  dma_cfg r17, zero, r26, 4
000978  9503c00a  dma_cfg r7, zero, r12, 5
00097c  15000010  dma_cfg zero, zero, zero, 8
000980  35000000  dma_run zero
000984  1500800b  dma_cfg zero, zero, r24, 5
000988  15000010  dma_cfg zero, zero, zero, 8
00098c  1d100300  unlock r6
000990  7d800a00  xsignal r21, 0
000994  db190000  j 204
000998  37a1a401  beq r9, r26, 72
00099c  bbf24401  bneq r9, r20, 188
0009a0  1f121000  addli r4, zero, 9
0009a4  67490ffe  storeli.w zero, -108(r30)
0009a8  7d900a00  xwait r21, 0
0009ac  7d100200  xwait r4, 0
0009b0  1d000000  lock zero, zero
0009b4  810b0000  ds_cfg r23, zero, 0
0009b8  81080002  ds_cfg r17, zero, 1
0009bc  0106001c  ds_cfg r12, zero, 14
0009c0  8108001a  ds_cfg r17, zero, 13
0009c4  4103c104  shuffle_coa r6, r2, r12, 2
0009c8  1f110000  addli r2, zero, 1
0009cc  1d100000  unlock zero
0009d0  7d000a00  xsignal r20, 0
0009d4  e7092ffe  storeli.w r2, -104(r30)
0009d8  7d000b00  xsignal r22, 0
0009dc  db100000  j 132
0009e0  9f030000  addli r7, zero, 0
0009e4  1f110000  addli r2, zero, 1
0009e8  1f120000  addli r4, zero, 1
0009ec  1f341000  addli r8, zero, 11
0009f0  7d100d00  xwait r26, 0
0009f4  7d100b00  xwait r22, 0
0009f8  7d100400  xwait r8, 0
0009fc  1bb4e300  slli r8, r7, 14
000a00  9bb38300  slli r7, r7, 8
000a04  1d000100  lock zero, r2
000a08  09061601  mm_cfg r12, r12, r17, 0
000a0c  17146400  or r8, r8, r6
000a10  9793d300  or r7, r7, r13
000a14  090d2d04  mm_cfg r26, r26, r2, 2
000a18  a9038310  mm r7, r6, r8, 8
000a1c  1b041200  andi r8, r4, 1
000a20  9f130000  addli r7, zero, 1
000a24  1f020000  addli r4, zero, 0
000a28  1d100100  unlock r2
000a2c  3b4f04fe  bneq r8, zero, -48
000a30  1f510000  addli r2, zero, 5
000a34  e7090ffe  storeli.w zero, -104(r30)
000a38  7d000100  xsignal r2, 0
000a3c  1f111000  addli r2, zero, 9
000a40  7d000100  xsignal r2, 0
000a44  1f110000  addli r2, zero, 1
000a48  67492ffe  storeli.w r2, -108(r30)
000a4c  1f211000  addli r2, zero, 10
000a50  7d000100  xsignal r2, 0
000a54  db010000  j 12
000a58  67490ffe  storeli.w zero, -108(r30)
000a5c  e7090ffe  storeli.w zero, -104(r30)
000a60  6b550ffa  load.d r[11:12], -96(r30)
000a64  674fdffe  storeli.w r13, -12(r30)
000a68  3bc00401  bneq r9, r16, 16
000a6c  1f211000  addli r2, zero, 10
000a70  7d100100  xwait r2, 0
000a74  7d900700  xwait r15, 0
000a78  63419ffe  loadli.w r2,  -180(r30)
000a7c  6342efff  loadli.w r4,  -12(r30)
000a80  3d000000  xfence
000a84  b3860828  zext_int2long r[14:15], r17
000a88  00a00300  mfence { lm, sm, gm }
000a8c  0b1d2210  add.s r26, r4, r2
000a90  1f71f001  addli r2, zero, 255
000a94  80220104  csr_set csr5, r2
000a98  1f711000  addli r2, zero, 15
000a9c  33030128  zext_int2long r[7:8], r2
000aa0  733c6ffa  store.d r[7:8], -72(r30)
000aa4  00e00200  sync_core
000aa8  bbd50400  bneq r9, zero, 372
000aac  3d000000  xfence
000ab0  33040028  zext_int2long r[9:10], zero
000ab4  00a00300  mfence { lm, sm, gm }
000ab8  733c8ffe  store.d r[9:10], -8(r30)
000abc  db020000  j 20
000ac0  6b538ffb  load.d r[7:8], -72(r30)
000ac4  13216404  setlt.ul r2, r[9:10], r[7:8]
000ac8  27140400  addli.d r[9:10], r[9:10], 1
000acc  37150100  beq r2, zero, 324
000ad0  1f710000  addli r2, zero, 7
000ad4  eb578fff  load.d r[16:17], -8(r30)
000ad8  17352402  sll.d r[11:12], r[9:10], r2
000adc  db040000  j 36
000ae0  a7c70700  addli.d r[16:17], r[16:17], 4
000ae4  0b112d10  add.s r2, r26, r2
000ae8  13a2d702  setneq.d r4, r[16:17], r[14:15]
000aec  73662101  stores.w r18, 12(r2)
000af0  73646101  stores.w r22, 8(r2)
000af4  73623101  stores.w r19, 4(r2)
000af8  73606100  stores.w r6, 0(r2)
000afc  371f02fe  beq r4, zero, -60
000b00  0ba3a710  add.ul r[7:8], r[16:17], r[11:12]
000b04  6342efff  loadli.w r4,  -12(r30)
000b08  1b312300  slli r2, r6, 2
000b0c  0b132210  add.s r6, r4, r2
000b10  ef48c300  loads.w r17, 12(r6)
000b14  6f420300  loads.w r4, 0(r6)
000b18  6f4c4300  loads.w r24, 4(r6)
000b1c  ef4b8300  loads.w r23, 8(r6)
000b20  978ac801  and r21, r17, r28
000b24  13835d05  setlt.u r6, r27, r21
000b28  3b300300  bneq r6, zero, 12
000b2c  1f890800  addli r18, r17, 0
000b30  5b010000  j 8
000b34  17995800  or r18, r17, r5
000b38  1786cb01  and r12, r23, r28
000b3c  1383cd04  setlt.u r6, r27, r12
000b40  3b300300  bneq r6, zero, 12
000b44  1f8b0b00  addli r22, r23, 0
000b48  5b010000  j 8
000b4c  179b5b00  or r22, r23, r5
000b50  9703cc01  and r7, r24, r28
000b54  13837d04  setlt.u r6, r27, r7
000b58  3b300300  bneq r6, zero, 12
000b5c  9f090c00  addli r19, r24, 0
000b60  5b010000  j 8
000b64  97195c00  or r19, r24, r5
000b68  170ac201  and r20, r4, r28
000b6c  13834d05  setlt.u r6, r27, r20
000b70  3b500300  bneq r6, zero, 20
000b74  1f030200  addli r6, r4, 0
000b78  138a4105  setlt.u r20, r3, r20
000b7c  37500a00  beq r20, zero, 20
000b80  db040000  j 36
000b84  17135200  or r6, r4, r5
000b88  138a4105  setlt.u r20, r3, r20
000b8c  3b600a00  bneq r20, zero, 24
000b90  1b430201  srli r6, r4, 16
000b94  1b031300  andi r6, r6, 1
000b98  0b126210  add.s r4, r4, r6
000b9c  0b121210  add.s r4, r4, r1
000ba0  17039201  and r6, r4, r25
000ba4  13827104  setlt.u r4, r3, r7
000ba8  bb300200  bneq r4, zero, 44
000bac  1b420c01  srli r4, r24, 16
000bb0  1b021200  andi r4, r4, 1
000bb4  0b124c10  add.s r4, r24, r4
000bb8  0b121210  add.s r4, r4, r1
000bbc  97099201  and r19, r4, r25
000bc0  1382c104  setlt.u r4, r3, r12
000bc4  37600200  beq r4, zero, 24
000bc8  13825105  setlt.u r4, r3, r21
000bcc  3b5c02fe  bneq r4, zero, -236
000bd0  5b050000  j 40
000bd4  1382c104  setlt.u r4, r3, r12
000bd8  bb4f02fe  bneq r4, zero, -16
000bdc  1bc20b01  srli r4, r23, 16
000be0  1b021200  andi r4, r4, 1
000be4  0b924b10  add.s r4, r23, r4
000be8  0b121210  add.s r4, r4, r1
000bec  170b9201  and r22, r4, r25
000bf0  13825105  setlt.u r4, r3, r21
000bf4  bb3b02fe  bneq r4, zero, -276
000bf8  1bc20801  srli r4, r17, 16
000bfc  1b021200  andi r4, r4, 1
000c00  0b924810  add.s r4, r17, r4
000c04  0b121210  add.s r4, r4, r1
000c08  17099201  and r18, r4, r25
000c0c  dbdaffff  j -300
000c10  00200100  mfence { sm }
000c14  80340002  core_id r9
000c18  6b550ffa  load.d r[11:12], -96(r30)
000c1c  1f713000  addli r2, zero, 31
000c20  33030128  zext_int2long r[7:8], r2
000c24  1f110000  addli r2, zero, 1
000c28  73306ffc  store.d r[7:8], -64(r30)
000c2c  bbd52400  bneq r9, r2, 372
000c30  1f012000  addli r2, zero, 16
000c34  3d000000  xfence
000c38  00a00300  mfence { lm, sm, gm }
000c3c  33030128  zext_int2long r[7:8], r2
000c40  db020000  j 20
000c44  6b540ffc  load.d r[9:10], -64(r30)
000c48  13218304  setlt.ul r2, r[7:8], r[9:10]
000c4c  27130300  addli.d r[7:8], r[7:8], 1
000c50  37150100  beq r2, zero, 324
000c54  1f710000  addli r2, zero, 7
000c58  33050028  zext_int2long r[11:12], zero
000c5c  17342302  sll.d r[9:10], r[7:8], r2
000c60  db040000  j 36
000c64  27450500  addli.d r[11:12], r[11:12], 4
000c68  0b112d10  add.s r2, r26, r2
000c6c  1326d502  setneq.d r12, r[11:12], r[14:15]
000c70  73660101  stores.w r16, 12(r2)
000c74  73642101  stores.w r18, 8(r2)
000c78  73623101  stores.w r19, 4(r2)
000c7c  73604100  stores.w r4, 0(r2)
000c80  371f06fe  beq r12, zero, -60
000c84  8b278510  add.ul r[16:17], r[11:12], r[9:10]
000c88  6342efff  loadli.w r4,  -12(r30)
000c8c  1bb12700  slli r2, r15, 2
000c90  0b122210  add.s r4, r4, r2
000c94  ef47c200  loads.w r15, 12(r4)
000c98  ef4b0200  loads.w r23, 0(r4)
000c9c  6f4b4200  loads.w r22, 4(r4)
000ca0  ef4a8200  loads.w r21, 8(r4)
000ca4  9788c701  and r17, r15, r28
000ca8  13821d05  setlt.u r4, r27, r17
000cac  3b300200  bneq r4, zero, 12
000cb0  1f880700  addli r16, r15, 0
000cb4  5b010000  j 8
000cb8  17985700  or r16, r15, r5
000cbc  1786ca01  and r12, r21, r28
000cc0  1382cd04  setlt.u r4, r27, r12
000cc4  3b300200  bneq r4, zero, 12
000cc8  1f890a00  addli r18, r21, 0
000ccc  5b010000  j 8
000cd0  17995a00  or r18, r21, r5
000cd4  170acb01  and r20, r22, r28
000cd8  13824d05  setlt.u r4, r27, r20
000cdc  3b300200  bneq r4, zero, 12
000ce0  9f090b00  addli r19, r22, 0
000ce4  5b010000  j 8
000ce8  97195b00  or r19, r22, r5
000cec  178ccb01  and r24, r23, r28
000cf0  13828d05  setlt.u r4, r27, r24
000cf4  3b500200  bneq r4, zero, 20
000cf8  1f820b00  addli r4, r23, 0
000cfc  138c8105  setlt.u r24, r3, r24
000d00  37500c00  beq r24, zero, 20
000d04  db040000  j 36
000d08  17925b00  or r4, r23, r5
000d0c  138c8105  setlt.u r24, r3, r24
000d10  3b600c00  bneq r24, zero, 24
000d14  1bc20b01  srli r4, r23, 16
000d18  1b021200  andi r4, r4, 1
000d1c  0b924b10  add.s r4, r23, r4
000d20  0b121210  add.s r4, r4, r1
000d24  17029201  and r4, r4, r25
000d28  138a4105  setlt.u r20, r3, r20
000d2c  bb300a00  bneq r20, zero, 44
000d30  9b490b01  srli r19, r22, 16
000d34  9b891900  andi r19, r19, 1
000d38  8b193b11  add.s r19, r22, r19
000d3c  8b991910  add.s r19, r19, r1
000d40  97899901  and r19, r19, r25
000d44  1386c104  setlt.u r12, r3, r12
000d48  37600600  beq r12, zero, 24
000d4c  13861105  setlt.u r12, r3, r17
000d50  3b5c06fe  bneq r12, zero, -236
000d54  5b050000  j 40
000d58  1386c104  setlt.u r12, r3, r12
000d5c  bb4f06fe  bneq r12, zero, -16
000d60  1bc60a01  srli r12, r21, 16
000d64  1b061600  andi r12, r12, 1
000d68  0b96ca10  add.s r12, r21, r12
000d6c  0b161610  add.s r12, r12, r1
000d70  17099601  and r18, r12, r25
000d74  13861105  setlt.u r12, r3, r17
000d78  bb3b06fe  bneq r12, zero, -276
000d7c  1bc60701  srli r12, r15, 16
000d80  1b061600  andi r12, r12, 1
000d84  0b96c710  add.s r12, r15, r12
000d88  0b161610  add.s r12, r12, r1
000d8c  17089601  and r16, r12, r25
000d90  dbdaffff  j -300
000d94  00200100  mfence { sm }
000d98  80340002  core_id r9
000d9c  6b550ffa  load.d r[11:12], -96(r30)
000da0  1f715000  addli r2, zero, 47
000da4  33030128  zext_int2long r[7:8], r2
000da8  63012fff  loadli.w r2,  -112(r30)
000dac  73346ffc  store.d r[7:8], -56(r30)
000db0  b7550100  beq r2, zero, 372
000db4  1f014000  addli r2, zero, 32
000db8  3d000000  xfence
000dbc  00a00300  mfence { lm, sm, gm }
000dc0  33040128  zext_int2long r[9:10], r2
000dc4  db020000  j 20
000dc8  6b538ffc  load.d r[7:8], -56(r30)
000dcc  13216404  setlt.ul r2, r[9:10], r[7:8]
000dd0  27140400  addli.d r[9:10], r[9:10], 1
000dd4  37150100  beq r2, zero, 324
000dd8  1f710000  addli r2, zero, 7
000ddc  b3070028  zext_int2long r[16:17], zero
000de0  17352402  sll.d r[11:12], r[9:10], r2
000de4  db040000  j 36
000de8  a7c70700  addli.d r[16:17], r[16:17], 4
000dec  0b112d10  add.s r2, r26, r2
000df0  13a3d702  setneq.d r6, r[16:17], r[14:15]
000df4  73662101  stores.w r18, 12(r2)
000df8  73647100  stores.w r7, 8(r2)
000dfc  73623101  stores.w r19, 4(r2)
000e00  73604100  stores.w r4, 0(r2)
000e04  371f03fe  beq r6, zero, -60
000e08  0ba3a710  add.ul r[7:8], r[16:17], r[11:12]
000e0c  6342efff  loadli.w r4,  -12(r30)
000e10  1b312300  slli r2, r6, 2
000e14  0b122210  add.s r4, r4, r2
000e18  ef48c200  loads.w r17, 12(r4)
000e1c  ef4b0200  loads.w r23, 0(r4)
000e20  6f4b4200  loads.w r22, 4(r4)
000e24  ef4a8200  loads.w r21, 8(r4)
000e28  1783c801  and r6, r17, r28
000e2c  13826d04  setlt.u r4, r27, r6
000e30  3b300200  bneq r4, zero, 12
000e34  1f890800  addli r18, r17, 0
000e38  5b010000  j 8
000e3c  17995800  or r18, r17, r5
000e40  1786ca01  and r12, r21, r28
000e44  1382cd04  setlt.u r4, r27, r12
000e48  3b300200  bneq r4, zero, 12
000e4c  9f830a00  addli r7, r21, 0
000e50  5b010000  j 8
000e54  97935a00  or r7, r21, r5
000e58  170acb01  and r20, r22, r28
000e5c  13824d05  setlt.u r4, r27, r20
000e60  3b300200  bneq r4, zero, 12
000e64  9f090b00  addli r19, r22, 0
000e68  5b010000  j 8
000e6c  97195b00  or r19, r22, r5
000e70  178ccb01  and r24, r23, r28
000e74  13828d05  setlt.u r4, r27, r24
000e78  3b500200  bneq r4, zero, 20
000e7c  1f820b00  addli r4, r23, 0
000e80  138c8105  setlt.u r24, r3, r24
000e84  37500c00  beq r24, zero, 20
000e88  db040000  j 36
000e8c  17925b00  or r4, r23, r5
000e90  138c8105  setlt.u r24, r3, r24
000e94  3b600c00  bneq r24, zero, 24
000e98  1bc20b01  srli r4, r23, 16
000e9c  1b021200  andi r4, r4, 1
000ea0  0b924b10  add.s r4, r23, r4
000ea4  0b121210  add.s r4, r4, r1
000ea8  17029201  and r4, r4, r25
000eac  138a4105  setlt.u r20, r3, r20
000eb0  bb300a00  bneq r20, zero, 44
000eb4  9b490b01  srli r19, r22, 16
000eb8  9b891900  andi r19, r19, 1
000ebc  8b193b11  add.s r19, r22, r19
000ec0  8b991910  add.s r19, r19, r1
000ec4  97899901  and r19, r19, r25
000ec8  1386c104  setlt.u r12, r3, r12
000ecc  37600600  beq r12, zero, 24
000ed0  13836104  setlt.u r6, r3, r6
000ed4  3b5c03fe  bneq r6, zero, -236
000ed8  5b050000  j 40
000edc  1386c104  setlt.u r12, r3, r12
000ee0  bb4f06fe  bneq r12, zero, -16
000ee4  9bc30a01  srli r7, r21, 16
000ee8  9b831300  andi r7, r7, 1
000eec  8b937a10  add.s r7, r21, r7
000ef0  8b931310  add.s r7, r7, r1
000ef4  97839301  and r7, r7, r25
000ef8  13836104  setlt.u r6, r3, r6
000efc  bb3b03fe  bneq r6, zero, -276
000f00  1bc30801  srli r6, r17, 16
000f04  1b031300  andi r6, r6, 1
000f08  0b936810  add.s r6, r17, r6
000f0c  0b131310  add.s r6, r6, r1
000f10  17099301  and r18, r6, r25
000f14  dbdaffff  j -300
000f18  00200100  mfence { sm }
000f1c  80340002  core_id r9
000f20  6b550ffa  load.d r[11:12], -96(r30)
000f24  1f717000  addli r2, zero, 63
000f28  33030128  zext_int2long r[7:8], r2
000f2c  1f310000  addli r2, zero, 3
000f30  73386ffc  store.d r[7:8], -48(r30)
000f34  bbd52400  bneq r9, r2, 372
000f38  1f016000  addli r2, zero, 48
000f3c  3d000000  xfence
000f40  00a00300  mfence { lm, sm, gm }
000f44  33040128  zext_int2long r[9:10], r2
000f48  db020000  j 20
000f4c  6b530ffd  load.d r[7:8], -48(r30)
000f50  13216404  setlt.ul r2, r[9:10], r[7:8]
000f54  27140400  addli.d r[9:10], r[9:10], 1
000f58  37150100  beq r2, zero, 324
000f5c  1f710000  addli r2, zero, 7
000f60  b3080028  zext_int2long r[18:19], zero
000f64  17352402  sll.d r[11:12], r[9:10], r2
000f68  db040000  j 36
000f6c  a7c80800  addli.d r[18:19], r[18:19], 4
000f70  0b112d10  add.s r2, r26, r2
000f74  13a3d802  setneq.d r6, r[18:19], r[14:15]
000f78  73660101  stores.w r16, 12(r2)
000f7c  73647100  stores.w r7, 8(r2)
000f80  73623101  stores.w r19, 4(r2)
000f84  73604100  stores.w r4, 0(r2)
000f88  371f03fe  beq r6, zero, -60
000f8c  0ba3a810  add.ul r[7:8], r[18:19], r[11:12]
000f90  6342efff  loadli.w r4,  -12(r30)
000f94  1b312300  slli r2, r6, 2
000f98  0b122210  add.s r4, r4, r2
000f9c  ef47c200  loads.w r15, 12(r4)
000fa0  ef4b0200  loads.w r23, 0(r4)
000fa4  6f4b4200  loads.w r22, 4(r4)
000fa8  ef4a8200  loads.w r21, 8(r4)
000fac  1783c701  and r6, r15, r28
000fb0  13826d04  setlt.u r4, r27, r6
000fb4  3b300200  bneq r4, zero, 12
000fb8  1f880700  addli r16, r15, 0
000fbc  5b010000  j 8
000fc0  17985700  or r16, r15, r5
000fc4  1786ca01  and r12, r21, r28
000fc8  1382cd04  setlt.u r4, r27, r12
000fcc  3b300200  bneq r4, zero, 12
000fd0  9f830a00  addli r7, r21, 0
000fd4  5b010000  j 8
000fd8  97935a00  or r7, r21, r5
000fdc  170acb01  and r20, r22, r28
000fe0  13824d05  setlt.u r4, r27, r20
000fe4  3b300200  bneq r4, zero, 12
000fe8  9f090b00  addli r19, r22, 0
000fec  5b010000  j 8
000ff0  97195b00  or r19, r22, r5
000ff4  178ccb01  and r24, r23, r28
000ff8  13828d05  setlt.u r4, r27, r24
000ffc  3b500200  bneq r4, zero, 20
001000  1f820b00  addli r4, r23, 0
001004  138c8105  setlt.u r24, r3, r24
001008  37500c00  beq r24, zero, 20
00100c  db040000  j 36
001010  17925b00  or r4, r23, r5
001014  138c8105  setlt.u r24, r3, r24
001018  3b600c00  bneq r24, zero, 24
00101c  1bc20b01  srli r4, r23, 16
001020  1b021200  andi r4, r4, 1
001024  0b924b10  add.s r4, r23, r4
001028  0b121210  add.s r4, r4, r1
00102c  17029201  and r4, r4, r25
001030  138a4105  setlt.u r20, r3, r20
001034  bb300a00  bneq r20, zero, 44
001038  9b490b01  srli r19, r22, 16
00103c  9b891900  andi r19, r19, 1
001040  8b193b11  add.s r19, r22, r19
001044  8b991910  add.s r19, r19, r1
001048  97899901  and r19, r19, r25
00104c  1386c104  setlt.u r12, r3, r12
001050  37600600  beq r12, zero, 24
001054  13836104  setlt.u r6, r3, r6
001058  3b5c03fe  bneq r6, zero, -236
00105c  5b050000  j 40
001060  1386c104  setlt.u r12, r3, r12
001064  bb4f06fe  bneq r12, zero, -16
001068  9bc30a01  srli r7, r21, 16
00106c  9b831300  andi r7, r7, 1
001070  8b937a10  add.s r7, r21, r7
001074  8b931310  add.s r7, r7, r1
001078  97839301  and r7, r7, r25
00107c  13836104  setlt.u r6, r3, r6
001080  bb3b03fe  bneq r6, zero, -276
001084  1bc30701  srli r6, r15, 16
001088  1b031300  andi r6, r6, 1
00108c  0b936710  add.s r6, r15, r6
001090  0b131310  add.s r6, r6, r1
001094  17089301  and r16, r6, r25
001098  dbdaffff  j -300
00109c  00200100  mfence { sm }
0010a0  80340002  core_id r9
0010a4  6b550ffa  load.d r[11:12], -96(r30)
0010a8  1f719000  addli r2, zero, 79
0010ac  33030128  zext_int2long r[7:8], r2
0010b0  63412fff  loadli.w r2,  -108(r30)
0010b4  733c6ffc  store.d r[7:8], -40(r30)
0010b8  b7550100  beq r2, zero, 372
0010bc  1f018000  addli r2, zero, 64
0010c0  3d000000  xfence
0010c4  00a00300  mfence { lm, sm, gm }
0010c8  33050128  zext_int2long r[11:12], r2
0010cc  db020000  j 20
0010d0  6b538ffd  load.d r[7:8], -40(r30)
0010d4  13216504  setlt.ul r2, r[11:12], r[7:8]
0010d8  27150500  addli.d r[11:12], r[11:12], 1
0010dc  37150100  beq r2, zero, 324
0010e0  1f710000  addli r2, zero, 7
0010e4  b30a0028  zext_int2long r[22:23], zero
0010e8  97382502  sll.d r[18:19], r[11:12], r2
0010ec  db040000  j 36
0010f0  a7ca0a00  addli.d r[22:23], r[22:23], 4
0010f4  0b112d10  add.s r2, r26, r2
0010f8  13a3da02  setneq.d r6, r[22:23], r[14:15]
0010fc  73669100  stores.w r9, 12(r2)
001100  73647100  stores.w r7, 8(r2)
001104  73620101  stores.w r16, 4(r2)
001108  73604100  stores.w r4, 0(r2)
00110c  371f03fe  beq r6, zero, -60
001110  0ba31a11  add.ul r[7:8], r[22:23], r[18:19]
001114  6342efff  loadli.w r4,  -12(r30)
001118  1b312300  slli r2, r6, 2
00111c  0b122210  add.s r4, r4, r2
001120  6f44c200  loads.w r8, 12(r4)
001124  ef4b0200  loads.w r23, 0(r4)
001128  ef494200  loads.w r19, 4(r4)
00112c  ef478200  loads.w r15, 8(r4)
001130  1703c401  and r6, r8, r28
001134  13826d04  setlt.u r4, r27, r6
001138  3b300200  bneq r4, zero, 12
00113c  9f040400  addli r9, r8, 0
001140  5b010000  j 8
001144  97145400  or r9, r8, r5
001148  1786c701  and r12, r15, r28
00114c  1382cd04  setlt.u r4, r27, r12
001150  3b300200  bneq r4, zero, 12
001154  9f830700  addli r7, r15, 0
001158  5b010000  j 8
00115c  97935700  or r7, r15, r5
001160  178ac901  and r20, r19, r28
001164  13824d05  setlt.u r4, r27, r20
001168  3b300200  bneq r4, zero, 12
00116c  1f880900  addli r16, r19, 0
001170  5b010000  j 8
001174  17985900  or r16, r19, r5
001178  178ccb01  and r24, r23, r28
00117c  13828d05  setlt.u r4, r27, r24
001180  3b500200  bneq r4, zero, 20
001184  1f820b00  addli r4, r23, 0
001188  138c8105  setlt.u r24, r3, r24
00118c  37500c00  beq r24, zero, 20
001190  db040000  j 36
001194  17925b00  or r4, r23, r5
001198  138c8105  setlt.u r24, r3, r24
00119c  3b600c00  bneq r24, zero, 24
0011a0  1bc20b01  srli r4, r23, 16
0011a4  1b021200  andi r4, r4, 1
0011a8  0b924b10  add.s r4, r23, r4
0011ac  0b121210  add.s r4, r4, r1
0011b0  17029201  and r4, r4, r25
0011b4  138a4105  setlt.u r20, r3, r20
0011b8  bb300a00  bneq r20, zero, 44
0011bc  1bc80901  srli r16, r19, 16
0011c0  1b081800  andi r16, r16, 1
0011c4  0b980911  add.s r16, r19, r16
0011c8  0b181810  add.s r16, r16, r1
0011cc  17089801  and r16, r16, r25
0011d0  1386c104  setlt.u r12, r3, r12
0011d4  37600600  beq r12, zero, 24
0011d8  13836104  setlt.u r6, r3, r6
0011dc  3b5c03fe  bneq r6, zero, -236
0011e0  5b050000  j 40
0011e4  1386c104  setlt.u r12, r3, r12
0011e8  bb4f06fe  bneq r12, zero, -16
0011ec  9bc30701  srli r7, r15, 16
0011f0  9b831300  andi r7, r7, 1
0011f4  8b937710  add.s r7, r15, r7
0011f8  8b931310  add.s r7, r7, r1
0011fc  97839301  and r7, r7, r25
001200  13836104  setlt.u r6, r3, r6
001204  bb3b03fe  bneq r6, zero, -276
001208  1b430401  srli r6, r8, 16
00120c  1b031300  andi r6, r6, 1
001210  0b136410  add.s r6, r8, r6
001214  0b131310  add.s r6, r6, r1
001218  97049301  and r9, r6, r25
00121c  dbdaffff  j -300
001220  00200100  mfence { sm }
001224  80340002  core_id r9
001228  6b550ffa  load.d r[11:12], -96(r30)
00122c  1f71b000  addli r2, zero, 95
001230  33030128  zext_int2long r[7:8], r2
001234  1f510000  addli r2, zero, 5
001238  73306ffe  store.d r[7:8], -32(r30)
00123c  bbd52400  bneq r9, r2, 372
001240  1f01a000  addli r2, zero, 80
001244  3d000000  xfence
001248  00a00300  mfence { lm, sm, gm }
00124c  33050128  zext_int2long r[11:12], r2
001250  db020000  j 20
001254  6b530ffe  load.d r[7:8], -32(r30)
001258  13216504  setlt.ul r2, r[11:12], r[7:8]
00125c  27150500  addli.d r[11:12], r[11:12], 1
001260  37150100  beq r2, zero, 324
001264  1f710000  addli r2, zero, 7
001268  b30a0028  zext_int2long r[22:23], zero
00126c  97382502  sll.d r[18:19], r[11:12], r2
001270  db040000  j 36
001274  a7ca0a00  addli.d r[22:23], r[22:23], 4
001278  0b112d10  add.s r2, r26, r2
00127c  13a3da02  setneq.d r6, r[22:23], r[14:15]
001280  73669100  stores.w r9, 12(r2)
001284  73647100  stores.w r7, 8(r2)
001288  73620101  stores.w r16, 4(r2)
00128c  73604100  stores.w r4, 0(r2)
001290  371f03fe  beq r6, zero, -60
001294  0ba31a11  add.ul r[7:8], r[22:23], r[18:19]
001298  6342efff  loadli.w r4,  -12(r30)
00129c  1b312300  slli r2, r6, 2
0012a0  0b122210  add.s r4, r4, r2
0012a4  6f44c200  loads.w r8, 12(r4)
0012a8  ef4b0200  loads.w r23, 0(r4)
0012ac  ef494200  loads.w r19, 4(r4)
0012b0  ef478200  loads.w r15, 8(r4)
0012b4  1703c401  and r6, r8, r28
0012b8  13826d04  setlt.u r4, r27, r6
0012bc  3b300200  bneq r4, zero, 12
0012c0  9f040400  addli r9, r8, 0
0012c4  5b010000  j 8
0012c8  97145400  or r9, r8, r5
0012cc  1786c701  and r12, r15, r28
0012d0  1382cd04  setlt.u r4, r27, r12
0012d4  3b300200  bneq r4, zero, 12
0012d8  9f830700  addli r7, r15, 0
0012dc  5b010000  j 8
0012e0  97935700  or r7, r15, r5
0012e4  178ac901  and r20, r19, r28
0012e8  13824d05  setlt.u r4, r27, r20
0012ec  3b300200  bneq r4, zero, 12
0012f0  1f880900  addli r16, r19, 0
0012f4  5b010000  j 8
0012f8  17985900  or r16, r19, r5
0012fc  178ccb01  and r24, r23, r28
001300  13828d05  setlt.u r4, r27, r24
001304  3b500200  bneq r4, zero, 20
001308  1f820b00  addli r4, r23, 0
00130c  138c8105  setlt.u r24, r3, r24
001310  37500c00  beq r24, zero, 20
001314  db040000  j 36
001318  17925b00  or r4, r23, r5
00131c  138c8105  setlt.u r24, r3, r24
001320  3b600c00  bneq r24, zero, 24
001324  1bc20b01  srli r4, r23, 16
001328  1b021200  andi r4, r4, 1
00132c  0b924b10  add.s r4, r23, r4
001330  0b121210  add.s r4, r4, r1
001334  17029201  and r4, r4, r25
001338  138a4105  setlt.u r20, r3, r20
00133c  bb300a00  bneq r20, zero, 44
001340  1bc80901  srli r16, r19, 16
001344  1b081800  andi r16, r16, 1
001348  0b980911  add.s r16, r19, r16
00134c  0b181810  add.s r16, r16, r1
001350  17089801  and r16, r16, r25
001354  1386c104  setlt.u r12, r3, r12
001358  37600600  beq r12, zero, 24
00135c  13836104  setlt.u r6, r3, r6
001360  3b5c03fe  bneq r6, zero, -236
001364  5b050000  j 40
001368  1386c104  setlt.u r12, r3, r12
00136c  bb4f06fe  bneq r12, zero, -16
001370  9bc30701  srli r7, r15, 16
001374  9b831300  andi r7, r7, 1
001378  8b937710  add.s r7, r15, r7
00137c  8b931310  add.s r7, r7, r1
001380  97839301  and r7, r7, r25
001384  13836104  setlt.u r6, r3, r6
001388  bb3b03fe  bneq r6, zero, -276
00138c  1b430401  srli r6, r8, 16
001390  1b031300  andi r6, r6, 1
001394  0b136410  add.s r6, r8, r6
001398  0b131310  add.s r6, r6, r1
00139c  97049301  and r9, r6, r25
0013a0  dbdaffff  j -300
0013a4  00200100  mfence { sm }
0013a8  80340002  core_id r9
0013ac  6b550ffa  load.d r[11:12], -96(r30)
0013b0  1f71d000  addli r2, zero, 111
0013b4  33030128  zext_int2long r[7:8], r2
0013b8  1f610000  addli r2, zero, 6
0013bc  73346ffe  store.d r[7:8], -24(r30)
0013c0  bbc52400  bneq r9, r2, 368
0013c4  1f01c000  addli r2, zero, 96
0013c8  3d000000  xfence
0013cc  00a00300  mfence { lm, sm, gm }
0013d0  33050128  zext_int2long r[11:12], r2
0013d4  db020000  j 20
0013d8  6b538ffe  load.d r[7:8], -24(r30)
0013dc  13216504  setlt.ul r2, r[11:12], r[7:8]
0013e0  27150500  addli.d r[11:12], r[11:12], 1
0013e4  37150100  beq r2, zero, 324
0013e8  1f710000  addli r2, zero, 7
0013ec  b30a0028  zext_int2long r[22:23], zero
0013f0  97382502  sll.d r[18:19], r[11:12], r2
0013f4  db040000  j 36
0013f8  a7ca0a00  addli.d r[22:23], r[22:23], 4
0013fc  0b112d10  add.s r2, r26, r2
001400  13a3da02  setneq.d r6, r[22:23], r[14:15]
001404  73669100  stores.w r9, 12(r2)
001408  73647100  stores.w r7, 8(r2)
00140c  73620101  stores.w r16, 4(r2)
001410  73604100  stores.w r4, 0(r2)
001414  371f03fe  beq r6, zero, -60
001418  0ba31a11  add.ul r[7:8], r[22:23], r[18:19]
00141c  6342efff  loadli.w r4,  -12(r30)
001420  1b312300  slli r2, r6, 2
001424  0b122210  add.s r4, r4, r2
001428  6f44c200  loads.w r8, 12(r4)
00142c  ef4b0200  loads.w r23, 0(r4)
001430  ef494200  loads.w r19, 4(r4)
001434  ef478200  loads.w r15, 8(r4)
001438  1703c401  and r6, r8, r28
00143c  13826d04  setlt.u r4, r27, r6
001440  3b300200  bneq r4, zero, 12
001444  9f040400  addli r9, r8, 0
001448  5b010000  j 8
00144c  97145400  or r9, r8, r5
001450  1786c701  and r12, r15, r28
001454  1382cd04  setlt.u r4, r27, r12
001458  3b300200  bneq r4, zero, 12
00145c  9f830700  addli r7, r15, 0
001460  5b010000  j 8
001464  97935700  or r7, r15, r5
001468  178ac901  and r20, r19, r28
00146c  13824d05  setlt.u r4, r27, r20
001470  3b300200  bneq r4, zero, 12
001474  1f880900  addli r16, r19, 0
001478  5b010000  j 8
00147c  17985900  or r16, r19, r5
001480  178ccb01  and r24, r23, r28
001484  13828d05  setlt.u r4, r27, r24
001488  3b500200  bneq r4, zero, 20
00148c  1f820b00  addli r4, r23, 0
001490  138c8105  setlt.u r24, r3, r24
001494  37500c00  beq r24, zero, 20
001498  db040000  j 36
00149c  17925b00  or r4, r23, r5
0014a0  138c8105  setlt.u r24, r3, r24
0014a4  3b600c00  bneq r24, zero, 24
0014a8  1bc20b01  srli r4, r23, 16
0014ac  1b021200  andi r4, r4, 1
0014b0  0b924b10  add.s r4, r23, r4
0014b4  0b121210  add.s r4, r4, r1
0014b8  17029201  and r4, r4, r25
0014bc  138a4105  setlt.u r20, r3, r20
0014c0  bb300a00  bneq r20, zero, 44
0014c4  1bc80901  srli r16, r19, 16
0014c8  1b081800  andi r16, r16, 1
0014cc  0b980911  add.s r16, r19, r16
0014d0  0b181810  add.s r16, r16, r1
0014d4  17089801  and r16, r16, r25
0014d8  1386c104  setlt.u r12, r3, r12
0014dc  37600600  beq r12, zero, 24
0014e0  13836104  setlt.u r6, r3, r6
0014e4  3b5c03fe  bneq r6, zero, -236
0014e8  5b050000  j 40
0014ec  1386c104  setlt.u r12, r3, r12
0014f0  bb4f06fe  bneq r12, zero, -16
0014f4  9bc30701  srli r7, r15, 16
0014f8  9b831300  andi r7, r7, 1
0014fc  8b937710  add.s r7, r15, r7
001500  8b931310  add.s r7, r7, r1
001504  97839301  and r7, r7, r25
001508  13836104  setlt.u r6, r3, r6
00150c  bb3b03fe  bneq r6, zero, -276
001510  1b430401  srli r6, r8, 16
001514  1b031300  andi r6, r6, 1
001518  0b136410  add.s r6, r8, r6
00151c  0b131310  add.s r6, r6, r1
001520  97049301  and r9, r6, r25
001524  dbdaffff  j -300
001528  00200100  mfence { sm }
00152c  6b550ffa  load.d r[11:12], -96(r30)
001530  1f71f000  addli r2, zero, 127
001534  33030128  zext_int2long r[7:8], r2
001538  63013fff  loadli.w r2,  -104(r30)
00153c  733c6ffe  store.d r[7:8], -8(r30)
001540  b7650100  beq r2, zero, 376
001544  1f01e000  addli r2, zero, 112
001548  3d000000  xfence
00154c  00a00300  mfence { lm, sm, gm }
001550  33030128  zext_int2long r[7:8], r2
001554  5b030000  j 24
001558  6b538fff  load.d r[7:8], -8(r30)
00155c  6b540ffb  load.d r[9:10], -80(r30)
001560  13216404  setlt.ul r2, r[9:10], r[7:8]
001564  27130400  addli.d r[7:8], r[9:10], 1
001568  37250100  beq r2, zero, 328
00156c  1f710000  addli r2, zero, 7
001570  33040028  zext_int2long r[9:10], zero
001574  73386ffa  store.d r[7:8], -80(r30)
001578  973a2302  sll.d r[22:23], r[7:8], r2
00157c  db040000  j 36
001580  27440400  addli.d r[9:10], r[9:10], 4
001584  0b112d10  add.s r2, r26, r2
001588  1322d402  setneq.d r4, r[9:10], r[14:15]
00158c  73660101  stores.w r16, 12(r2)
001590  73643101  stores.w r19, 8(r2)
001594  73627101  stores.w r23, 4(r2)
001598  73601101  stores.w r17, 0(r2)
00159c  b77e02fe  beq r4, zero, -68
0015a0  0b235411  add.ul r[7:8], r[9:10], r[22:23]
0015a4  6342efff  loadli.w r4,  -12(r30)
0015a8  1b312300  slli r2, r6, 2
0015ac  0b132210  add.s r6, r4, r2
0015b0  ef47c300  loads.w r15, 12(r6)
0015b4  6f420300  loads.w r4, 0(r6)
0015b8  6f4c4300  loads.w r24, 4(r6)
0015bc  ef438300  loads.w r7, 8(r6)
0015c0  1783c701  and r6, r15, r28
0015c4  13856d04  setlt.u r10, r27, r6
0015c8  3b300500  bneq r10, zero, 12
0015cc  1f880700  addli r16, r15, 0
0015d0  5b010000  j 8
0015d4  17985700  or r16, r15, r5
0015d8  1786c301  and r12, r7, r28
0015dc  1385cd04  setlt.u r10, r27, r12
0015e0  3b300500  bneq r10, zero, 12
0015e4  9f890300  addli r19, r7, 0
0015e8  5b010000  j 8
0015ec  97995300  or r19, r7, r5
0015f0  1709cc01  and r18, r24, r28
0015f4  13852d05  setlt.u r10, r27, r18
0015f8  3b300500  bneq r10, zero, 12
0015fc  9f0b0c00  addli r23, r24, 0
001600  5b010000  j 8
001604  971b5c00  or r23, r24, r5
001608  170ac201  and r20, r4, r28
00160c  13854d05  setlt.u r10, r27, r20
001610  3b500500  bneq r10, zero, 20
001614  9f080200  addli r17, r4, 0
001618  13854105  setlt.u r10, r3, r20
00161c  37500500  beq r10, zero, 20
001620  db040000  j 36
001624  97185200  or r17, r4, r5
001628  13854105  setlt.u r10, r3, r20
00162c  3b600500  bneq r10, zero, 24
001630  1b450201  srli r10, r4, 16
001634  1b051500  andi r10, r10, 1
001638  0b12a210  add.s r4, r4, r10
00163c  0b121210  add.s r4, r4, r1
001640  97089201  and r17, r4, r25
001644  13822105  setlt.u r4, r3, r18
001648  bb300200  bneq r4, zero, 44
00164c  1b420c01  srli r4, r24, 16
001650  1b021200  andi r4, r4, 1
001654  0b124c10  add.s r4, r24, r4
001658  0b121210  add.s r4, r4, r1
00165c  970b9201  and r23, r4, r25
001660  1382c104  setlt.u r4, r3, r12
001664  37600200  beq r4, zero, 24
001668  13826104  setlt.u r4, r3, r6
00166c  3b5c02fe  bneq r4, zero, -236
001670  5b050000  j 40
001674  1382c104  setlt.u r4, r3, r12
001678  bb4f02fe  bneq r4, zero, -16
00167c  1bc20301  srli r4, r7, 16
001680  1b021200  andi r4, r4, 1
001684  0b924310  add.s r4, r7, r4
001688  0b121210  add.s r4, r4, r1
00168c  97099201  and r19, r4, r25
001690  13826104  setlt.u r4, r3, r6
001694  bb3b02fe  bneq r4, zero, -276
001698  1bc20701  srli r4, r15, 16
00169c  1b021200  andi r4, r4, 1
0016a0  0b924710  add.s r4, r15, r4
0016a4  0b121210  add.s r4, r4, r1
0016a8  17089201  and r16, r4, r25
0016ac  dbdaffff  j -300
0016b0  00200100  mfence { sm }
0016b4  6b550ffa  load.d r[11:12], -96(r30)
0016b8  63413fff  loadli.w r2,  -100(r30)
0016bc  1b317100  slli r2, r2, 7
0016c0  33030128  zext_int2long r[7:8], r2
0016c4  1f71f001  addli r2, zero, 255
0016c8  0b24a340  min.ul r[9:10], r[7:8], r[11:12]
0016cc  27040401  addli.d r[9:10], r[9:10], 128
0016d0  0b246448  max.ul r[9:10], r[9:10], r[7:8]
0016d4  0b336418  sub.sl r[7:8], r[9:10], r[7:8]
0016d8  80340002  core_id r9
0016dc  0b23d340  min.ul r[7:8], r[7:8], r[14:15]
0016e0  73346ff6  store.d r[7:8], -152(r30)
0016e4  80220104  csr_set csr5, r2
0016e8  1f310000  addli r2, zero, 3
0016ec  00e00200  sync_core
0016f0  bba02400  bneq r9, r2, 40
0016f4  1f311000  addli r2, zero, 11
0016f8  7d000100  xsignal r2, 0
0016fc  1f411000  addli r2, zero, 12
001700  7d000100  xsignal r2, 0
001704  1f511000  addli r2, zero, 13
001708  7d100100  xwait r2, 0
00170c  1f612000  addli r2, zero, 22
001710  7d100100  xwait r2, 0
001714  5b6c0000  j 864
001718  63415fff  loadli.w r2,  -84(r30)
00171c  1f630000  addli r6, zero, 6
001720  ab030100  lui r7, 16
001724  1b329100  slli r4, r2, 9
001728  2b010600  lui r2, 96
00172c  0b112210  add.s r2, r4, r2
001730  3bfb6400  bneq r9, r6, 732
001734  6b530f01  load.d r[7:8], 16(r30)
001738  6b550ff7  load.d r[11:12], -144(r30)
00173c  0b23a310  add.ul r[7:8], r[7:8], r[11:12]
001740  1f052000  addli r10, zero, 16
001744  9f250000  addli r11, zero, 2
001748  7d100500  xwait r10, 0
00174c  63441fff  loadli.w r8,  -116(r30)
001750  bfd48500  blt.s r11, r8, 308
001754  1f560000  addli r12, zero, 5
001758  9f170000  addli r15, zero, 1
00175c  1f340000  addli r8, zero, 3
001760  1f480000  addli r16, zero, 4
001764  1d000600  lock zero, r12
001768  15000014  dma_cfg zero, zero, zero, 10
00176c  1500f014  dma_cfg zero, zero, r15, 10
001770  1500b014  dma_cfg zero, zero, r11, 10
001774  15008014  dma_cfg zero, zero, r8, 10
001778  1f640000  addli r8, zero, 6
00177c  15000015  dma_cfg zero, zero, r16, 10
001780  1500c014  dma_cfg zero, zero, r12, 10
001784  15008014  dma_cfg zero, zero, r8, 10
001788  1f740000  addli r8, zero, 7
00178c  15008014  dma_cfg zero, zero, r8, 10
001790  1f041000  addli r8, zero, 8
001794  15008014  dma_cfg zero, zero, r8, 10
001798  1f141000  addli r8, zero, 9
00179c  15008014  dma_cfg zero, zero, r8, 10
0017a0  1f241000  addli r8, zero, 10
0017a4  15008014  dma_cfg zero, zero, r8, 10
0017a8  1f341000  addli r8, zero, 11
0017ac  15008014  dma_cfg zero, zero, r8, 10
0017b0  1f441000  addli r8, zero, 12
0017b4  15008014  dma_cfg zero, zero, r8, 10
0017b8  1f541000  addli r8, zero, 13
0017bc  15008014  dma_cfg zero, zero, r8, 10
0017c0  1f641000  addli r8, zero, 14
0017c4  15008014  dma_cfg zero, zero, r8, 10
0017c8  1f741000  addli r8, zero, 15
0017cc  15008014  dma_cfg zero, zero, r8, 10
0017d0  1f142000  addli r8, zero, 17
0017d4  1500a014  dma_cfg zero, zero, r10, 10
0017d8  15008014  dma_cfg zero, zero, r8, 10
0017dc  1f242000  addli r8, zero, 18
0017e0  15008014  dma_cfg zero, zero, r8, 10
0017e4  1f342000  addli r8, zero, 19
0017e8  15008014  dma_cfg zero, zero, r8, 10
0017ec  1f442000  addli r8, zero, 20
0017f0  15008014  dma_cfg zero, zero, r8, 10
0017f4  1f542000  addli r8, zero, 21
0017f8  15008014  dma_cfg zero, zero, r8, 10
0017fc  1f642000  addli r8, zero, 22
001800  15008014  dma_cfg zero, zero, r8, 10
001804  1f742000  addli r8, zero, 23
001808  15008014  dma_cfg zero, zero, r8, 10
00180c  1f043000  addli r8, zero, 24
001810  15008014  dma_cfg zero, zero, r8, 10
001814  1f143000  addli r8, zero, 25
001818  15008014  dma_cfg zero, zero, r8, 10
00181c  1f243000  addli r8, zero, 26
001820  15008014  dma_cfg zero, zero, r8, 10
001824  1f343000  addli r8, zero, 27
001828  15008014  dma_cfg zero, zero, r8, 10
00182c  1f443000  addli r8, zero, 28
001830  15008014  dma_cfg zero, zero, r8, 10
001834  1f543000  addli r8, zero, 29
001838  15008014  dma_cfg zero, zero, r8, 10
00183c  1f643000  addli r8, zero, 30
001840  15008014  dma_cfg zero, zero, r8, 10
001844  1f743000  addli r8, zero, 31
001848  15008014  dma_cfg zero, zero, r8, 10
00184c  1f048000  addli r8, zero, 64
001850  95870700  dma_cfg r15, r15, zero, 0
001854  95070002  dma_cfg r15, zero, zero, 1
001858  15000004  dma_cfg zero, zero, zero, 2
00185c  15018006  dma_cfg r2, zero, r8, 3
001860  1f040001  addli r8, zero, 128
001864  15040009  dma_cfg r8, zero, r16, 4
001868  1f040004  addli r8, zero, 512
00186c  1504f00a  dma_cfg r8, zero, r15, 5
001870  15000010  dma_cfg zero, zero, zero, 8
001874  35000000  dma_run zero
001878  1500f00a  dma_cfg zero, zero, r15, 5
00187c  15000010  dma_cfg zero, zero, zero, 8
001880  1d100600  unlock r12
001884  1f480000  addli r16, zero, 4
001888  9f170000  addli r15, zero, 1
00188c  2b040600  lui r8, 96
001890  9f088000  addli r17, zero, 64
001894  1f560000  addli r12, zero, 5
001898  1d000800  lock zero, r16
00189c  1b140404  ori r8, r8, 64
0018a0  95870700  dma_cfg r15, r15, zero, 0
0018a4  15800304  dma_cfg zero, r7, zero, 2
0018a8  0b128210  add.s r4, r4, r8
0018ac  6b598ff6  load.d r[19:20], -152(r30)
0018b0  15021307  dma_cfg r4, r6, r17, 3
0018b4  9f030002  addli r7, zero, 256
0018b8  1f743900  addli r8, r18, 31
0018bc  1b331900  slli r6, r18, 1
0018c0  1f090004  addli r18, zero, 512
0018c4  1b425400  srli r4, r8, 5
0018c8  1f040001  addli r8, zero, 128
0018cc  1b03e303  andi r6, r6, 62
0018d0  15844808  dma_cfg r8, r17, r4, 4
0018d4  1589f30a  dma_cfg r18, r7, r15, 5
0018d8  9f330000  addli r7, zero, 3
0018dc  15006010  dma_cfg zero, zero, r6, 8
0018e0  35000000  dma_run zero
0018e4  1500f00a  dma_cfg zero, zero, r15, 5
0018e8  15000010  dma_cfg zero, zero, zero, 8
0018ec  1d100800  unlock r16
0018f0  1d000600  lock zero, r12
0018f4  15000014  dma_cfg zero, zero, zero, 10
0018f8  1500f014  dma_cfg zero, zero, r15, 10
0018fc  1500b014  dma_cfg zero, zero, r11, 10
001900  15007014  dma_cfg zero, zero, r7, 10
001904  9f630000  addli r7, zero, 6
001908  15000015  dma_cfg zero, zero, r16, 10
00190c  1500c014  dma_cfg zero, zero, r12, 10
001910  15007014  dma_cfg zero, zero, r7, 10
001914  9f730000  addli r7, zero, 7
001918  15007014  dma_cfg zero, zero, r7, 10
00191c  9f031000  addli r7, zero, 8
001920  15007014  dma_cfg zero, zero, r7, 10
001924  9f131000  addli r7, zero, 9
001928  15007014  dma_cfg zero, zero, r7, 10
00192c  9f231000  addli r7, zero, 10
001930  15007014  dma_cfg zero, zero, r7, 10
001934  9f331000  addli r7, zero, 11
001938  15007014  dma_cfg zero, zero, r7, 10
00193c  9f431000  addli r7, zero, 12
001940  15007014  dma_cfg zero, zero, r7, 10
001944  9f531000  addli r7, zero, 13
001948  15007014  dma_cfg zero, zero, r7, 10
00194c  9f631000  addli r7, zero, 14
001950  15007014  dma_cfg zero, zero, r7, 10
001954  9f731000  addli r7, zero, 15
001958  15007014  dma_cfg zero, zero, r7, 10
00195c  1500a014  dma_cfg zero, zero, r10, 10
001960  1f152000  addli r10, zero, 17
001964  1500a014  dma_cfg zero, zero, r10, 10
001968  1f252000  addli r10, zero, 18
00196c  1500a014  dma_cfg zero, zero, r10, 10
001970  1f352000  addli r10, zero, 19
001974  1500a014  dma_cfg zero, zero, r10, 10
001978  1f452000  addli r10, zero, 20
00197c  1500a014  dma_cfg zero, zero, r10, 10
001980  1f552000  addli r10, zero, 21
001984  1500a014  dma_cfg zero, zero, r10, 10
001988  1f652000  addli r10, zero, 22
00198c  1500a014  dma_cfg zero, zero, r10, 10
001990  1f752000  addli r10, zero, 23
001994  1500a014  dma_cfg zero, zero, r10, 10
001998  1f053000  addli r10, zero, 24
00199c  1500a014  dma_cfg zero, zero, r10, 10
0019a0  1f153000  addli r10, zero, 25
0019a4  1500a014  dma_cfg zero, zero, r10, 10
0019a8  1f253000  addli r10, zero, 26
0019ac  1500a014  dma_cfg zero, zero, r10, 10
0019b0  1f353000  addli r10, zero, 27
0019b4  1500a014  dma_cfg zero, zero, r10, 10
0019b8  1f453000  addli r10, zero, 28
0019bc  1500a014  dma_cfg zero, zero, r10, 10
0019c0  1f553000  addli r10, zero, 29
0019c4  1500a014  dma_cfg zero, zero, r10, 10
0019c8  1f653000  addli r10, zero, 30
0019cc  1500a014  dma_cfg zero, zero, r10, 10
0019d0  1f753000  addli r10, zero, 31
0019d4  1500a014  dma_cfg zero, zero, r10, 10
0019d8  95870700  dma_cfg r15, r15, zero, 0
0019dc  95070002  dma_cfg r15, zero, zero, 1
0019e0  15000004  dma_cfg zero, zero, zero, 2
0019e4  15011007  dma_cfg r2, zero, r17, 3
0019e8  15044008  dma_cfg r8, zero, r4, 4
0019ec  1509f00a  dma_cfg r18, zero, r15, 5
0019f0  15006010  dma_cfg zero, zero, r6, 8
0019f4  35000000  dma_run zero
0019f8  1500f00a  dma_cfg zero, zero, r15, 5
0019fc  15000010  dma_cfg zero, zero, zero, 8
001a00  1d100600  unlock r12
001a04  7d800300  xsignal r7, 0
001a08  db0d0000  j 108
001a0c  1f520000  addli r4, zero, 5
001a10  bb914400  bneq r9, r4, 100
001a14  1f431000  addli r6, zero, 12
001a18  1f020000  addli r4, zero, 0
001a1c  7d100300  xwait r6, 0
001a20  1f731000  addli r6, zero, 15
001a24  7d100300  xwait r6, 0
001a28  1f230000  addli r6, zero, 2
001a2c  1d000300  lock zero, r6
001a30  2b03803f  lui r6, 260096
001a34  0d000002  ew_cfg zero, zero, zero, 1
001a38  0d130300  ewcoeff_cfg r6, r6, zero, 0
001a3c  1f73f000  addli r6, zero, 127
001a40  0d000304  ew_cfg zero, r6, zero, 2
001a44  1f130000  addli r6, zero, 1
001a48  0d030006  ew_cfg r6, zero, zero, 3
001a4c  0b134d10  add.s r6, r26, r4
001a50  1f020204  addli r4, r4, 512
001a54  2d032300  dsmadd r6, r6, r2, 0
001a58  bb5f72fe  bneq r4, r7, -12
001a5c  1f210000  addli r2, zero, 2
001a60  1d100100  unlock r2
001a64  1f511000  addli r2, zero, 13
001a68  7d000100  xsignal r2, 0
001a6c  1f012000  addli r2, zero, 16
001a70  7d000100  xsignal r2, 0
001a74  2b010600  lui r2, 96
001a78  3d000000  xfence
001a7c  6342efff  loadli.w r4,  -12(r30)
001a80  00a00300  mfence { lm, sm, gm }
001a84  1b110160  ori r2, r2, 1536
001a88  0b122210  add.s r4, r4, r2
001a8c  1f71f001  addli r2, zero, 255
001a90  80220104  csr_set csr5, r2
001a94  00e00200  sync_core
001a98  b7b70402  beq r9, zero, 1516
001a9c  1f110000  addli r2, zero, 1
001aa0  3bbf2402  bneq r9, r2, 1996
001aa4  1f012000  addli r2, zero, 16
001aa8  3d000000  xfence
001aac  00a00300  mfence { lm, sm, gm }
001ab0  33030128  zext_int2long r[7:8], r2
001ab4  5b030000  j 24
001ab8  6b530ffc  load.d r[7:8], -64(r30)
001abc  6b540ffb  load.d r[9:10], -80(r30)
001ac0  13216404  setlt.ul r2, r[9:10], r[7:8]
001ac4  27130400  addli.d r[7:8], r[9:10], 1
001ac8  b7660100  beq r2, zero, 440
001acc  1f710000  addli r2, zero, 7
001ad0  73386ffa  store.d r[7:8], -80(r30)
001ad4  973a2302  sll.d r[22:23], r[7:8], r2
001ad8  bb51a201  bneq r4, r26, 116
001adc  33030028  zext_int2long r[7:8], zero
001ae0  5b060000  j 48
001ae4  1bc40401  srli r8, r9, 16
001ae8  1b041400  andi r8, r8, 1
001aec  0b948410  add.s r8, r9, r8
001af0  0b141410  add.s r8, r8, r1
001af4  17049401  and r8, r8, r25
001af8  eb548fff  load.d r[10:11], -8(r30)
001afc  0b112210  add.s r2, r4, r2
001b00  73608100  stores.w r8, 0(r2)
001b04  93249304  setlt.ul r9, r[7:8], r[10:11]
001b08  27130300  addli.d r[7:8], r[7:8], 1
001b0c  b7be04fe  beq r9, zero, -84
001b10  0b245311  add.ul r[9:10], r[7:8], r[22:23]
001b14  1b312400  slli r2, r8, 2
001b18  0b142d10  add.s r8, r26, r2
001b1c  ef440400  loads.w r9, 0(r8)
001b20  1785c401  and r10, r9, r28
001b24  1384ad04  setlt.u r8, r27, r10
001b28  3b500400  bneq r8, zero, 20
001b2c  1f840400  addli r8, r9, 0
001b30  1385a104  setlt.u r10, r3, r10
001b34  3b1f05fe  bneq r10, zero, -60
001b38  dbf5ffff  j -84
001b3c  17945400  or r8, r9, r5
001b40  1385a104  setlt.u r10, r3, r10
001b44  bb5e05fe  bneq r10, zero, -76
001b48  dbf3ffff  j -100
001b4c  33040028  zext_int2long r[9:10], zero
001b50  db040000  j 36
001b54  27440400  addli.d r[9:10], r[9:10], 4
001b58  0b112210  add.s r2, r4, r2
001b5c  9323d400  seteq.d r7, r[9:10], r[14:15]
001b60  73663101  stores.w r19, 12(r2)
001b64  73646100  stores.w r6, 8(r2)
001b68  73621101  stores.w r17, 4(r2)
001b6c  73608101  stores.w r24, 0(r2)
001b70  3bad03fe  bneq r7, zero, -184
001b74  0b235411  add.ul r[7:8], r[9:10], r[22:23]
001b78  1b312300  slli r2, r6, 2
001b7c  0b192d10  add.s r18, r26, r2
001b80  ef47c900  loads.w r15, 12(r18)
001b84  1788c701  and r16, r15, r28
001b88  13830d05  setlt.u r6, r27, r16
001b8c  3b300300  bneq r6, zero, 12
001b90  9f890700  addli r19, r15, 0
001b94  5b010000  j 8
001b98  97995700  or r19, r15, r5
001b9c  ef4b8900  loads.w r23, 8(r18)
001ba0  1786cb01  and r12, r23, r28
001ba4  1383cd04  setlt.u r6, r27, r12
001ba8  3b300300  bneq r6, zero, 12
001bac  1f830b00  addli r6, r23, 0
001bb0  5b010000  j 8
001bb4  17935b00  or r6, r23, r5
001bb8  ef434900  loads.w r7, 4(r18)
001bbc  178ac301  and r20, r7, r28
001bc0  13854d05  setlt.u r10, r27, r20
001bc4  3b300500  bneq r10, zero, 12
001bc8  9f880300  addli r17, r7, 0
001bcc  5b010000  j 8
001bd0  97985300  or r17, r7, r5
001bd4  6f490900  loads.w r18, 0(r18)
001bd8  1705c901  and r10, r18, r28
001bdc  9385ad04  setlt.u r11, r27, r10
001be0  3bd00500  bneq r11, zero, 20
001be4  1f0c0900  addli r24, r18, 0
001be8  1385a104  setlt.u r10, r3, r10
001bec  37500500  beq r10, zero, 20
001bf0  db040000  j 36
001bf4  171c5900  or r24, r18, r5
001bf8  1385a104  setlt.u r10, r3, r10
001bfc  3b600500  bneq r10, zero, 24
001c00  1b450901  srli r10, r18, 16
001c04  1b051500  andi r10, r10, 1
001c08  0b15a910  add.s r10, r18, r10
001c0c  0b151510  add.s r10, r10, r1
001c10  170c9501  and r24, r10, r25
001c14  13854105  setlt.u r10, r3, r20
001c18  bb300500  bneq r10, zero, 44
001c1c  1bc50301  srli r10, r7, 16
001c20  1b051500  andi r10, r10, 1
001c24  8b93a310  add.s r7, r7, r10
001c28  8b931310  add.s r7, r7, r1
001c2c  97889301  and r17, r7, r25
001c30  9383c104  setlt.u r7, r3, r12
001c34  37e00300  beq r7, zero, 24
001c38  93830105  setlt.u r7, r3, r16
001c3c  3bec03fe  bneq r7, zero, -232
001c40  5b050000  j 40
001c44  9383c104  setlt.u r7, r3, r12
001c48  bbcf03fe  bneq r7, zero, -16
001c4c  1bc30b01  srli r6, r23, 16
001c50  1b031300  andi r6, r6, 1
001c54  0b936b10  add.s r6, r23, r6
001c58  0b131310  add.s r6, r6, r1
001c5c  17039301  and r6, r6, r25
001c60  93830105  setlt.u r7, r3, r16
001c64  bbcb03fe  bneq r7, zero, -272
001c68  9bc30701  srli r7, r15, 16
001c6c  9b831300  andi r7, r7, 1
001c70  8b937710  add.s r7, r15, r7
001c74  8b931310  add.s r7, r7, r1
001c78  97899301  and r19, r7, r25
001c7c  5bdbffff  j -296
001c80  80340002  core_id r9
001c84  00200100  mfence { sm }
001c88  63012fff  loadli.w r2,  -112(r30)
001c8c  bb270102  bneq r2, zero, 1512
001c90  1f310000  addli r2, zero, 3
001c94  3bbf2402  bneq r9, r2, 1996
001c98  1f016000  addli r2, zero, 48
001c9c  3d000000  xfence
001ca0  00a00300  mfence { lm, sm, gm }
001ca4  33030128  zext_int2long r[7:8], r2
001ca8  5b030000  j 24
001cac  6b530ffd  load.d r[7:8], -48(r30)
001cb0  6b540ffb  load.d r[9:10], -80(r30)
001cb4  13216404  setlt.ul r2, r[9:10], r[7:8]
001cb8  27130400  addli.d r[7:8], r[9:10], 1
001cbc  b7660100  beq r2, zero, 440
001cc0  1f710000  addli r2, zero, 7
001cc4  73386ffa  store.d r[7:8], -80(r30)
001cc8  973a2302  sll.d r[22:23], r[7:8], r2
001ccc  bb51a201  bneq r4, r26, 116
001cd0  33030028  zext_int2long r[7:8], zero
001cd4  5b060000  j 48
001cd8  1bc40401  srli r8, r9, 16
001cdc  1b041400  andi r8, r8, 1
001ce0  0b948410  add.s r8, r9, r8
001ce4  0b141410  add.s r8, r8, r1
001ce8  17049401  and r8, r8, r25
001cec  eb548fff  load.d r[10:11], -8(r30)
001cf0  0b112210  add.s r2, r4, r2
001cf4  73608100  stores.w r8, 0(r2)
001cf8  93249304  setlt.ul r9, r[7:8], r[10:11]
001cfc  27130300  addli.d r[7:8], r[7:8], 1
001d00  b7be04fe  beq r9, zero, -84
001d04  0b245311  add.ul r[9:10], r[7:8], r[22:23]
001d08  1b312400  slli r2, r8, 2
001d0c  0b142d10  add.s r8, r26, r2
001d10  ef440400  loads.w r9, 0(r8)
001d14  1785c401  and r10, r9, r28
001d18  1384ad04  setlt.u r8, r27, r10
001d1c  3b500400  bneq r8, zero, 20
001d20  1f840400  addli r8, r9, 0
001d24  1385a104  setlt.u r10, r3, r10
001d28  3b1f05fe  bneq r10, zero, -60
001d2c  dbf5ffff  j -84
001d30  17945400  or r8, r9, r5
001d34  1385a104  setlt.u r10, r3, r10
001d38  bb5e05fe  bneq r10, zero, -76
001d3c  dbf3ffff  j -100
001d40  33040028  zext_int2long r[9:10], zero
001d44  db040000  j 36
001d48  27440400  addli.d r[9:10], r[9:10], 4
001d4c  0b112210  add.s r2, r4, r2
001d50  9323d400  seteq.d r7, r[9:10], r[14:15]
001d54  73663101  stores.w r19, 12(r2)
001d58  73646100  stores.w r6, 8(r2)
001d5c  73621101  stores.w r17, 4(r2)
001d60  73608101  stores.w r24, 0(r2)
001d64  3bad03fe  bneq r7, zero, -184
001d68  0b235411  add.ul r[7:8], r[9:10], r[22:23]
001d6c  1b312300  slli r2, r6, 2
001d70  0b192d10  add.s r18, r26, r2
001d74  ef47c900  loads.w r15, 12(r18)
001d78  1788c701  and r16, r15, r28
001d7c  13830d05  setlt.u r6, r27, r16
001d80  3b300300  bneq r6, zero, 12
001d84  9f890700  addli r19, r15, 0
001d88  5b010000  j 8
001d8c  97995700  or r19, r15, r5
001d90  ef4b8900  loads.w r23, 8(r18)
001d94  1786cb01  and r12, r23, r28
001d98  1383cd04  setlt.u r6, r27, r12
001d9c  3b300300  bneq r6, zero, 12
001da0  1f830b00  addli r6, r23, 0
001da4  5b010000  j 8
001da8  17935b00  or r6, r23, r5
001dac  ef434900  loads.w r7, 4(r18)
001db0  178ac301  and r20, r7, r28
001db4  13854d05  setlt.u r10, r27, r20
001db8  3b300500  bneq r10, zero, 12
001dbc  9f880300  addli r17, r7, 0
001dc0  5b010000  j 8
001dc4  97985300  or r17, r7, r5
001dc8  6f490900  loads.w r18, 0(r18)
001dcc  1705c901  and r10, r18, r28
001dd0  9385ad04  setlt.u r11, r27, r10
001dd4  3bd00500  bneq r11, zero, 20
001dd8  1f0c0900  addli r24, r18, 0
001ddc  1385a104  setlt.u r10, r3, r10
001de0  37500500  beq r10, zero, 20
001de4  db040000  j 36
001de8  171c5900  or r24, r18, r5
001dec  1385a104  setlt.u r10, r3, r10
001df0  3b600500  bneq r10, zero, 24
001df4  1b450901  srli r10, r18, 16
001df8  1b051500  andi r10, r10, 1
001dfc  0b15a910  add.s r10, r18, r10
001e00  0b151510  add.s r10, r10, r1
001e04  170c9501  and r24, r10, r25
001e08  13854105  setlt.u r10, r3, r20
001e0c  bb300500  bneq r10, zero, 44
001e10  1bc50301  srli r10, r7, 16
001e14  1b051500  andi r10, r10, 1
001e18  8b93a310  add.s r7, r7, r10
001e1c  8b931310  add.s r7, r7, r1
001e20  97889301  and r17, r7, r25
001e24  9383c104  setlt.u r7, r3, r12
001e28  37e00300  beq r7, zero, 24
001e2c  93830105  setlt.u r7, r3, r16
001e30  3bec03fe  bneq r7, zero, -232
001e34  5b050000  j 40
001e38  9383c104  setlt.u r7, r3, r12
001e3c  bbcf03fe  bneq r7, zero, -16
001e40  1bc30b01  srli r6, r23, 16
001e44  1b031300  andi r6, r6, 1
001e48  0b936b10  add.s r6, r23, r6
001e4c  0b131310  add.s r6, r6, r1
001e50  17039301  and r6, r6, r25
001e54  93830105  setlt.u r7, r3, r16
001e58  bbcb03fe  bneq r7, zero, -272
001e5c  9bc30701  srli r7, r15, 16
001e60  9b831300  andi r7, r7, 1
001e64  8b937710  add.s r7, r15, r7
001e68  8b931310  add.s r7, r7, r1
001e6c  97899301  and r19, r7, r25
001e70  5bdbffff  j -296
001e74  80340002  core_id r9
001e78  00200100  mfence { sm }
001e7c  63412fff  loadli.w r2,  -108(r30)
001e80  bb270102  bneq r2, zero, 1512
001e84  1f510000  addli r2, zero, 5
001e88  3bbf2402  bneq r9, r2, 1996
001e8c  1f01a000  addli r2, zero, 80
001e90  3d000000  xfence
001e94  00a00300  mfence { lm, sm, gm }
001e98  33030128  zext_int2long r[7:8], r2
001e9c  5b030000  j 24
001ea0  6b530ffe  load.d r[7:8], -32(r30)
001ea4  6b540ffb  load.d r[9:10], -80(r30)
001ea8  13216404  setlt.ul r2, r[9:10], r[7:8]
001eac  27130400  addli.d r[7:8], r[9:10], 1
001eb0  b7660100  beq r2, zero, 440
001eb4  1f710000  addli r2, zero, 7
001eb8  73386ffa  store.d r[7:8], -80(r30)
001ebc  973a2302  sll.d r[22:23], r[7:8], r2
001ec0  bb51a201  bneq r4, r26, 116
001ec4  33030028  zext_int2long r[7:8], zero
001ec8  5b060000  j 48
001ecc  1bc40401  srli r8, r9, 16
001ed0  1b041400  andi r8, r8, 1
001ed4  0b948410  add.s r8, r9, r8
001ed8  0b141410  add.s r8, r8, r1
001edc  17049401  and r8, r8, r25
001ee0  eb548fff  load.d r[10:11], -8(r30)
001ee4  0b112210  add.s r2, r4, r2
001ee8  73608100  stores.w r8, 0(r2)
001eec  93249304  setlt.ul r9, r[7:8], r[10:11]
001ef0  27130300  addli.d r[7:8], r[7:8], 1
001ef4  b7be04fe  beq r9, zero, -84
001ef8  0b245311  add.ul r[9:10], r[7:8], r[22:23]
001efc  1b312400  slli r2, r8, 2
001f00  0b142d10  add.s r8, r26, r2
001f04  ef440400  loads.w r9, 0(r8)
001f08  1785c401  and r10, r9, r28
001f0c  1384ad04  setlt.u r8, r27, r10
001f10  3b500400  bneq r8, zero, 20
001f14  1f840400  addli r8, r9, 0
001f18  1385a104  setlt.u r10, r3, r10
001f1c  3b1f05fe  bneq r10, zero, -60
001f20  dbf5ffff  j -84
001f24  17945400  or r8, r9, r5
001f28  1385a104  setlt.u r10, r3, r10
001f2c  bb5e05fe  bneq r10, zero, -76
001f30  dbf3ffff  j -100
001f34  33040028  zext_int2long r[9:10], zero
001f38  db040000  j 36
001f3c  27440400  addli.d r[9:10], r[9:10], 4
001f40  0b112210  add.s r2, r4, r2
001f44  9323d400  seteq.d r7, r[9:10], r[14:15]
001f48  73663101  stores.w r19, 12(r2)
001f4c  73646100  stores.w r6, 8(r2)
001f50  73621101  stores.w r17, 4(r2)
001f54  73608101  stores.w r24, 0(r2)
001f58  3bad03fe  bneq r7, zero, -184
001f5c  0b235411  add.ul r[7:8], r[9:10], r[22:23]
001f60  1b312300  slli r2, r6, 2
001f64  0b192d10  add.s r18, r26, r2
001f68  ef47c900  loads.w r15, 12(r18)
001f6c  1788c701  and r16, r15, r28
001f70  13830d05  setlt.u r6, r27, r16
001f74  3b300300  bneq r6, zero, 12
001f78  9f890700  addli r19, r15, 0
001f7c  5b010000  j 8
001f80  97995700  or r19, r15, r5
001f84  ef4b8900  loads.w r23, 8(r18)
001f88  1786cb01  and r12, r23, r28
001f8c  1383cd04  setlt.u r6, r27, r12
001f90  3b300300  bneq r6, zero, 12
001f94  1f830b00  addli r6, r23, 0
001f98  5b010000  j 8
001f9c  17935b00  or r6, r23, r5
001fa0  ef434900  loads.w r7, 4(r18)
001fa4  178ac301  and r20, r7, r28
001fa8  13854d05  setlt.u r10, r27, r20
001fac  3b300500  bneq r10, zero, 12
001fb0  9f880300  addli r17, r7, 0
001fb4  5b010000  j 8
001fb8  97985300  or r17, r7, r5
001fbc  6f490900  loads.w r18, 0(r18)
001fc0  1705c901  and r10, r18, r28
001fc4  9385ad04  setlt.u r11, r27, r10
001fc8  3bd00500  bneq r11, zero, 20
001fcc  1f0c0900  addli r24, r18, 0
001fd0  1385a104  setlt.u r10, r3, r10
001fd4  37500500  beq r10, zero, 20
001fd8  db040000  j 36
001fdc  171c5900  or r24, r18, r5
001fe0  1385a104  setlt.u r10, r3, r10
001fe4  3b600500  bneq r10, zero, 24
001fe8  1b450901  srli r10, r18, 16
001fec  1b051500  andi r10, r10, 1
001ff0  0b15a910  add.s r10, r18, r10
001ff4  0b151510  add.s r10, r10, r1
001ff8  170c9501  and r24, r10, r25
001ffc  13854105  setlt.u r10, r3, r20
002000  bb300500  bneq r10, zero, 44
002004  1bc50301  srli r10, r7, 16
002008  1b051500  andi r10, r10, 1
00200c  8b93a310  add.s r7, r7, r10
002010  8b931310  add.s r7, r7, r1
002014  97889301  and r17, r7, r25
002018  9383c104  setlt.u r7, r3, r12
00201c  37e00300  beq r7, zero, 24
002020  93830105  setlt.u r7, r3, r16
002024  3bec03fe  bneq r7, zero, -232
002028  5b050000  j 40
00202c  9383c104  setlt.u r7, r3, r12
002030  bbcf03fe  bneq r7, zero, -16
002034  1bc30b01  srli r6, r23, 16
002038  1b031300  andi r6, r6, 1
00203c  0b936b10  add.s r6, r23, r6
002040  0b131310  add.s r6, r6, r1
002044  17039301  and r6, r6, r25
002048  93830105  setlt.u r7, r3, r16
00204c  bbcb03fe  bneq r7, zero, -272
002050  9bc30701  srli r7, r15, 16
002054  9b831300  andi r7, r7, 1
002058  8b937710  add.s r7, r15, r7
00205c  8b931310  add.s r7, r7, r1
002060  97899301  and r19, r7, r25
002064  5bdbffff  j -296
002068  80340002  core_id r9
00206c  00200100  mfence { sm }
002070  1f610000  addli r2, zero, 6
002074  b7a72402  beq r9, r2, 1512
002078  63013fff  loadli.w r2,  -104(r30)
00207c  3b3f0102  bneq r2, zero, 1996
002080  db350100  j 2476
002084  3d000000  xfence
002088  33030028  zext_int2long r[7:8], zero
00208c  00a00300  mfence { lm, sm, gm }
002090  5b030000  j 24
002094  6b538ffb  load.d r[7:8], -72(r30)
002098  6b540ffb  load.d r[9:10], -80(r30)
00209c  13216404  setlt.ul r2, r[9:10], r[7:8]
0020a0  27130400  addli.d r[7:8], r[9:10], 1
0020a4  b7660100  beq r2, zero, 440
0020a8  1f710000  addli r2, zero, 7
0020ac  73386ffa  store.d r[7:8], -80(r30)
0020b0  973a2302  sll.d r[22:23], r[7:8], r2
0020b4  bb51a201  bneq r4, r26, 116
0020b8  33030028  zext_int2long r[7:8], zero
0020bc  5b060000  j 48
0020c0  1bc40401  srli r8, r9, 16
0020c4  1b041400  andi r8, r8, 1
0020c8  0b948410  add.s r8, r9, r8
0020cc  0b141410  add.s r8, r8, r1
0020d0  17049401  and r8, r8, r25
0020d4  eb548fff  load.d r[10:11], -8(r30)
0020d8  0b112210  add.s r2, r4, r2
0020dc  73608100  stores.w r8, 0(r2)
0020e0  93249304  setlt.ul r9, r[7:8], r[10:11]
0020e4  27130300  addli.d r[7:8], r[7:8], 1
0020e8  b7be04fe  beq r9, zero, -84
0020ec  0b245311  add.ul r[9:10], r[7:8], r[22:23]
0020f0  1b312400  slli r2, r8, 2
0020f4  0b142d10  add.s r8, r26, r2
0020f8  ef440400  loads.w r9, 0(r8)
0020fc  1785c401  and r10, r9, r28
002100  1384ad04  setlt.u r8, r27, r10
002104  3b500400  bneq r8, zero, 20
002108  1f840400  addli r8, r9, 0
00210c  1385a104  setlt.u r10, r3, r10
002110  3b1f05fe  bneq r10, zero, -60
002114  dbf5ffff  j -84
002118  17945400  or r8, r9, r5
00211c  1385a104  setlt.u r10, r3, r10
002120  bb5e05fe  bneq r10, zero, -76
002124  dbf3ffff  j -100
002128  33040028  zext_int2long r[9:10], zero
00212c  db040000  j 36
002130  27440400  addli.d r[9:10], r[9:10], 4
002134  0b112210  add.s r2, r4, r2
002138  9323d400  seteq.d r7, r[9:10], r[14:15]
00213c  73663101  stores.w r19, 12(r2)
002140  73646100  stores.w r6, 8(r2)
002144  73621101  stores.w r17, 4(r2)
002148  73608101  stores.w r24, 0(r2)
00214c  3bad03fe  bneq r7, zero, -184
002150  0b235411  add.ul r[7:8], r[9:10], r[22:23]
002154  1b312300  slli r2, r6, 2
002158  0b192d10  add.s r18, r26, r2
00215c  ef47c900  loads.w r15, 12(r18)
002160  1788c701  and r16, r15, r28
002164  13830d05  setlt.u r6, r27, r16
002168  3b300300  bneq r6, zero, 12
00216c  9f890700  addli r19, r15, 0
002170  5b010000  j 8
002174  97995700  or r19, r15, r5
002178  ef4b8900  loads.w r23, 8(r18)
00217c  1786cb01  and r12, r23, r28
002180  1383cd04  setlt.u r6, r27, r12
002184  3b300300  bneq r6, zero, 12
002188  1f830b00  addli r6, r23, 0
00218c  5b010000  j 8
002190  17935b00  or r6, r23, r5
002194  ef434900  loads.w r7, 4(r18)
002198  178ac301  and r20, r7, r28
00219c  13854d05  setlt.u r10, r27, r20
0021a0  3b300500  bneq r10, zero, 12
0021a4  9f880300  addli r17, r7, 0
0021a8  5b010000  j 8
0021ac  97985300  or r17, r7, r5
0021b0  6f490900  loads.w r18, 0(r18)
0021b4  1705c901  and r10, r18, r28
0021b8  9385ad04  setlt.u r11, r27, r10
0021bc  3bd00500  bneq r11, zero, 20
0021c0  1f0c0900  addli r24, r18, 0
0021c4  1385a104  setlt.u r10, r3, r10
0021c8  37500500  beq r10, zero, 20
0021cc  db040000  j 36
0021d0  171c5900  or r24, r18, r5
0021d4  1385a104  setlt.u r10, r3, r10
0021d8  3b600500  bneq r10, zero, 24
0021dc  1b450901  srli r10, r18, 16
0021e0  1b051500  andi r10, r10, 1
0021e4  0b15a910  add.s r10, r18, r10
0021e8  0b151510  add.s r10, r10, r1
0021ec  170c9501  and r24, r10, r25
0021f0  13854105  setlt.u r10, r3, r20
0021f4  bb300500  bneq r10, zero, 44
0021f8  1bc50301  srli r10, r7, 16
0021fc  1b051500  andi r10, r10, 1
002200  8b93a310  add.s r7, r7, r10
002204  8b931310  add.s r7, r7, r1
002208  97889301  and r17, r7, r25
00220c  9383c104  setlt.u r7, r3, r12
002210  37e00300  beq r7, zero, 24
002214  93830105  setlt.u r7, r3, r16
002218  3bec03fe  bneq r7, zero, -232
00221c  5b050000  j 40
002220  9383c104  setlt.u r7, r3, r12
002224  bbcf03fe  bneq r7, zero, -16
002228  1bc30b01  srli r6, r23, 16
00222c  1b031300  andi r6, r6, 1
002230  0b936b10  add.s r6, r23, r6
002234  0b131310  add.s r6, r6, r1
002238  17039301  and r6, r6, r25
00223c  93830105  setlt.u r7, r3, r16
002240  bbcb03fe  bneq r7, zero, -272
002244  9bc30701  srli r7, r15, 16
002248  9b831300  andi r7, r7, 1
00224c  8b937710  add.s r7, r15, r7
002250  8b931310  add.s r7, r7, r1
002254  97899301  and r19, r7, r25
002258  5bdbffff  j -296
00225c  80340002  core_id r9
002260  00200100  mfence { sm }
002264  1f110000  addli r2, zero, 1
002268  b7f024fc  beq r9, r2, -1988
00226c  63012fff  loadli.w r2,  -112(r30)
002270  b70801fc  beq r2, zero, -1504
002274  1f014000  addli r2, zero, 32
002278  3d000000  xfence
00227c  00a00300  mfence { lm, sm, gm }
002280  33030128  zext_int2long r[7:8], r2
002284  5b030000  j 24
002288  6b538ffc  load.d r[7:8], -56(r30)
00228c  6b540ffb  load.d r[9:10], -80(r30)
002290  13216404  setlt.ul r2, r[9:10], r[7:8]
002294  27130400  addli.d r[7:8], r[9:10], 1
002298  b7660100  beq r2, zero, 440
00229c  1f710000  addli r2, zero, 7
0022a0  73386ffa  store.d r[7:8], -80(r30)
0022a4  973a2302  sll.d r[22:23], r[7:8], r2
0022a8  bb51a201  bneq r4, r26, 116
0022ac  33030028  zext_int2long r[7:8], zero
0022b0  5b060000  j 48
0022b4  1bc40401  srli r8, r9, 16
0022b8  1b041400  andi r8, r8, 1
0022bc  0b948410  add.s r8, r9, r8
0022c0  0b141410  add.s r8, r8, r1
0022c4  17049401  and r8, r8, r25
0022c8  eb548fff  load.d r[10:11], -8(r30)
0022cc  0b112210  add.s r2, r4, r2
0022d0  73608100  stores.w r8, 0(r2)
0022d4  93249304  setlt.ul r9, r[7:8], r[10:11]
0022d8  27130300  addli.d r[7:8], r[7:8], 1
0022dc  b7be04fe  beq r9, zero, -84
0022e0  0b245311  add.ul r[9:10], r[7:8], r[22:23]
0022e4  1b312400  slli r2, r8, 2
0022e8  0b142d10  add.s r8, r26, r2
0022ec  ef440400  loads.w r9, 0(r8)
0022f0  1785c401  and r10, r9, r28
0022f4  1384ad04  setlt.u r8, r27, r10
0022f8  3b500400  bneq r8, zero, 20
0022fc  1f840400  addli r8, r9, 0
002300  1385a104  setlt.u r10, r3, r10
002304  3b1f05fe  bneq r10, zero, -60
002308  dbf5ffff  j -84
00230c  17945400  or r8, r9, r5
002310  1385a104  setlt.u r10, r3, r10
002314  bb5e05fe  bneq r10, zero, -76
002318  dbf3ffff  j -100
00231c  33040028  zext_int2long r[9:10], zero
002320  db040000  j 36
002324  27440400  addli.d r[9:10], r[9:10], 4
002328  0b112210  add.s r2, r4, r2
00232c  9323d400  seteq.d r7, r[9:10], r[14:15]
002330  73663101  stores.w r19, 12(r2)
002334  73646100  stores.w r6, 8(r2)
002338  73621101  stores.w r17, 4(r2)
00233c  73608101  stores.w r24, 0(r2)
002340  3bad03fe  bneq r7, zero, -184
002344  0b235411  add.ul r[7:8], r[9:10], r[22:23]
002348  1b312300  slli r2, r6, 2
00234c  0b192d10  add.s r18, r26, r2
002350  ef47c900  loads.w r15, 12(r18)
002354  1788c701  and r16, r15, r28
002358  13830d05  setlt.u r6, r27, r16
00235c  3b300300  bneq r6, zero, 12
002360  9f890700  addli r19, r15, 0
002364  5b010000  j 8
002368  97995700  or r19, r15, r5
00236c  ef4b8900  loads.w r23, 8(r18)
002370  1786cb01  and r12, r23, r28
002374  1383cd04  setlt.u r6, r27, r12
002378  3b300300  bneq r6, zero, 12
00237c  1f830b00  addli r6, r23, 0
002380  5b010000  j 8
002384  17935b00  or r6, r23, r5
002388  ef434900  loads.w r7, 4(r18)
00238c  178ac301  and r20, r7, r28
002390  13854d05  setlt.u r10, r27, r20
002394  3b300500  bneq r10, zero, 12
002398  9f880300  addli r17, r7, 0
00239c  5b010000  j 8
0023a0  97985300  or r17, r7, r5
0023a4  6f490900  loads.w r18, 0(r18)
0023a8  1705c901  and r10, r18, r28
0023ac  9385ad04  setlt.u r11, r27, r10
0023b0  3bd00500  bneq r11, zero, 20
0023b4  1f0c0900  addli r24, r18, 0
0023b8  1385a104  setlt.u r10, r3, r10
0023bc  37500500  beq r10, zero, 20
0023c0  db040000  j 36
0023c4  171c5900  or r24, r18, r5
0023c8  1385a104  setlt.u r10, r3, r10
0023cc  3b600500  bneq r10, zero, 24
0023d0  1b450901  srli r10, r18, 16
0023d4  1b051500  andi r10, r10, 1
0023d8  0b15a910  add.s r10, r18, r10
0023dc  0b151510  add.s r10, r10, r1
0023e0  170c9501  and r24, r10, r25
0023e4  13854105  setlt.u r10, r3, r20
0023e8  bb300500  bneq r10, zero, 44
0023ec  1bc50301  srli r10, r7, 16
0023f0  1b051500  andi r10, r10, 1
0023f4  8b93a310  add.s r7, r7, r10
0023f8  8b931310  add.s r7, r7, r1
0023fc  97889301  and r17, r7, r25
002400  9383c104  setlt.u r7, r3, r12
002404  37e00300  beq r7, zero, 24
002408  93830105  setlt.u r7, r3, r16
00240c  3bec03fe  bneq r7, zero, -232
002410  5b050000  j 40
002414  9383c104  setlt.u r7, r3, r12
002418  bbcf03fe  bneq r7, zero, -16
00241c  1bc30b01  srli r6, r23, 16
002420  1b031300  andi r6, r6, 1
002424  0b936b10  add.s r6, r23, r6
002428  0b131310  add.s r6, r6, r1
00242c  17039301  and r6, r6, r25
002430  93830105  setlt.u r7, r3, r16
002434  bbcb03fe  bneq r7, zero, -272
002438  9bc30701  srli r7, r15, 16
00243c  9b831300  andi r7, r7, 1
002440  8b937710  add.s r7, r15, r7
002444  8b931310  add.s r7, r7, r1
002448  97899301  and r19, r7, r25
00244c  5bdbffff  j -296
002450  80340002  core_id r9
002454  00200100  mfence { sm }
002458  1f310000  addli r2, zero, 3
00245c  b7f024fc  beq r9, r2, -1988
002460  63412fff  loadli.w r2,  -108(r30)
002464  b70801fc  beq r2, zero, -1504
002468  1f018000  addli r2, zero, 64
00246c  3d000000  xfence
002470  00a00300  mfence { lm, sm, gm }
002474  33030128  zext_int2long r[7:8], r2
002478  5b030000  j 24
00247c  6b538ffd  load.d r[7:8], -40(r30)
002480  6b540ffb  load.d r[9:10], -80(r30)
002484  13216404  setlt.ul r2, r[9:10], r[7:8]
002488  27130400  addli.d r[7:8], r[9:10], 1
00248c  b7660100  beq r2, zero, 440
002490  1f710000  addli r2, zero, 7
002494  73386ffa  store.d r[7:8], -80(r30)
002498  973a2302  sll.d r[22:23], r[7:8], r2
00249c  bb51a201  bneq r4, r26, 116
0024a0  33030028  zext_int2long r[7:8], zero
0024a4  5b060000  j 48
0024a8  1bc40401  srli r8, r9, 16
0024ac  1b041400  andi r8, r8, 1
0024b0  0b948410  add.s r8, r9, r8
0024b4  0b141410  add.s r8, r8, r1
0024b8  17049401  and r8, r8, r25
0024bc  eb548fff  load.d r[10:11], -8(r30)
0024c0  0b112210  add.s r2, r4, r2
0024c4  73608100  stores.w r8, 0(r2)
0024c8  93249304  setlt.ul r9, r[7:8], r[10:11]
0024cc  27130300  addli.d r[7:8], r[7:8], 1
0024d0  b7be04fe  beq r9, zero, -84
0024d4  0b245311  add.ul r[9:10], r[7:8], r[22:23]
0024d8  1b312400  slli r2, r8, 2
0024dc  0b142d10  add.s r8, r26, r2
0024e0  ef440400  loads.w r9, 0(r8)
0024e4  1785c401  and r10, r9, r28
0024e8  1384ad04  setlt.u r8, r27, r10
0024ec  3b500400  bneq r8, zero, 20
0024f0  1f840400  addli r8, r9, 0
0024f4  1385a104  setlt.u r10, r3, r10
0024f8  3b1f05fe  bneq r10, zero, -60
0024fc  dbf5ffff  j -84
002500  17945400  or r8, r9, r5
002504  1385a104  setlt.u r10, r3, r10
002508  bb5e05fe  bneq r10, zero, -76
00250c  dbf3ffff  j -100
002510  33040028  zext_int2long r[9:10], zero
002514  db040000  j 36
002518  27440400  addli.d r[9:10], r[9:10], 4
00251c  0b112210  add.s r2, r4, r2
002520  9323d400  seteq.d r7, r[9:10], r[14:15]
002524  73663101  stores.w r19, 12(r2)
002528  73646100  stores.w r6, 8(r2)
00252c  73621101  stores.w r17, 4(r2)
002530  73608101  stores.w r24, 0(r2)
002534  3bad03fe  bneq r7, zero, -184
002538  0b235411  add.ul r[7:8], r[9:10], r[22:23]
00253c  1b312300  slli r2, r6, 2
002540  0b192d10  add.s r18, r26, r2
002544  ef47c900  loads.w r15, 12(r18)
002548  1788c701  and r16, r15, r28
00254c  13830d05  setlt.u r6, r27, r16
002550  3b300300  bneq r6, zero, 12
002554  9f890700  addli r19, r15, 0
002558  5b010000  j 8
00255c  97995700  or r19, r15, r5
002560  ef4b8900  loads.w r23, 8(r18)
002564  1786cb01  and r12, r23, r28
002568  1383cd04  setlt.u r6, r27, r12
00256c  3b300300  bneq r6, zero, 12
002570  1f830b00  addli r6, r23, 0
002574  5b010000  j 8
002578  17935b00  or r6, r23, r5
00257c  ef434900  loads.w r7, 4(r18)
002580  178ac301  and r20, r7, r28
002584  13854d05  setlt.u r10, r27, r20
002588  3b300500  bneq r10, zero, 12
00258c  9f880300  addli r17, r7, 0
002590  5b010000  j 8
002594  97985300  or r17, r7, r5
002598  6f490900  loads.w r18, 0(r18)
00259c  1705c901  and r10, r18, r28
0025a0  9385ad04  setlt.u r11, r27, r10
0025a4  3bd00500  bneq r11, zero, 20
0025a8  1f0c0900  addli r24, r18, 0
0025ac  1385a104  setlt.u r10, r3, r10
0025b0  37500500  beq r10, zero, 20
0025b4  db040000  j 36
0025b8  171c5900  or r24, r18, r5
0025bc  1385a104  setlt.u r10, r3, r10
0025c0  3b600500  bneq r10, zero, 24
0025c4  1b450901  srli r10, r18, 16
0025c8  1b051500  andi r10, r10, 1
0025cc  0b15a910  add.s r10, r18, r10
0025d0  0b151510  add.s r10, r10, r1
0025d4  170c9501  and r24, r10, r25
0025d8  13854105  setlt.u r10, r3, r20
0025dc  bb300500  bneq r10, zero, 44
0025e0  1bc50301  srli r10, r7, 16
0025e4  1b051500  andi r10, r10, 1
0025e8  8b93a310  add.s r7, r7, r10
0025ec  8b931310  add.s r7, r7, r1
0025f0  97889301  and r17, r7, r25
0025f4  9383c104  setlt.u r7, r3, r12
0025f8  37e00300  beq r7, zero, 24
0025fc  93830105  setlt.u r7, r3, r16
002600  3bec03fe  bneq r7, zero, -232
002604  5b050000  j 40
002608  9383c104  setlt.u r7, r3, r12
00260c  bbcf03fe  bneq r7, zero, -16
002610  1bc30b01  srli r6, r23, 16
002614  1b031300  andi r6, r6, 1
002618  0b936b10  add.s r6, r23, r6
00261c  0b131310  add.s r6, r6, r1
002620  17039301  and r6, r6, r25
002624  93830105  setlt.u r7, r3, r16
002628  bbcb03fe  bneq r7, zero, -272
00262c  9bc30701  srli r7, r15, 16
002630  9b831300  andi r7, r7, 1
002634  8b937710  add.s r7, r15, r7
002638  8b931310  add.s r7, r7, r1
00263c  97899301  and r19, r7, r25
002640  5bdbffff  j -296
002644  80340002  core_id r9
002648  00200100  mfence { sm }
00264c  1f510000  addli r2, zero, 5
002650  b7f024fc  beq r9, r2, -1988
002654  1f610000  addli r2, zero, 6
002658  bb8824fc  bneq r9, r2, -1504
00265c  1f01c000  addli r2, zero, 96
002660  3d000000  xfence
002664  00a00300  mfence { lm, sm, gm }
002668  33030128  zext_int2long r[7:8], r2
00266c  5b030000  j 24
002670  6b538ffe  load.d r[7:8], -24(r30)
002674  6b540ffb  load.d r[9:10], -80(r30)
002678  13216404  setlt.ul r2, r[9:10], r[7:8]
00267c  27130400  addli.d r[7:8], r[9:10], 1
002680  b7660100  beq r2, zero, 440
002684  1f710000  addli r2, zero, 7
002688  73386ffa  store.d r[7:8], -80(r30)
00268c  973a2302  sll.d r[22:23], r[7:8], r2
002690  bb51a201  bneq r4, r26, 116
002694  33030028  zext_int2long r[7:8], zero
002698  5b060000  j 48
00269c  1bc40401  srli r8, r9, 16
0026a0  1b041400  andi r8, r8, 1
0026a4  0b948410  add.s r8, r9, r8
0026a8  0b141410  add.s r8, r8, r1
0026ac  17049401  and r8, r8, r25
0026b0  eb548fff  load.d r[10:11], -8(r30)
0026b4  0b112210  add.s r2, r4, r2
0026b8  73608100  stores.w r8, 0(r2)
0026bc  93249304  setlt.ul r9, r[7:8], r[10:11]
0026c0  27130300  addli.d r[7:8], r[7:8], 1
0026c4  b7be04fe  beq r9, zero, -84
0026c8  0b245311  add.ul r[9:10], r[7:8], r[22:23]
0026cc  1b312400  slli r2, r8, 2
0026d0  0b142d10  add.s r8, r26, r2
0026d4  ef440400  loads.w r9, 0(r8)
0026d8  1785c401  and r10, r9, r28
0026dc  1384ad04  setlt.u r8, r27, r10
0026e0  3b500400  bneq r8, zero, 20
0026e4  1f840400  addli r8, r9, 0
0026e8  1385a104  setlt.u r10, r3, r10
0026ec  3b1f05fe  bneq r10, zero, -60
0026f0  dbf5ffff  j -84
0026f4  17945400  or r8, r9, r5
0026f8  1385a104  setlt.u r10, r3, r10
0026fc  bb5e05fe  bneq r10, zero, -76
002700  dbf3ffff  j -100
002704  33040028  zext_int2long r[9:10], zero
002708  db040000  j 36
00270c  27440400  addli.d r[9:10], r[9:10], 4
002710  0b112210  add.s r2, r4, r2
002714  9323d400  seteq.d r7, r[9:10], r[14:15]
002718  73663101  stores.w r19, 12(r2)
00271c  73646100  stores.w r6, 8(r2)
002720  73621101  stores.w r17, 4(r2)
002724  73608101  stores.w r24, 0(r2)
002728  3bad03fe  bneq r7, zero, -184
00272c  0b235411  add.ul r[7:8], r[9:10], r[22:23]
002730  1b312300  slli r2, r6, 2
002734  0b192d10  add.s r18, r26, r2
002738  ef47c900  loads.w r15, 12(r18)
00273c  1788c701  and r16, r15, r28
002740  13830d05  setlt.u r6, r27, r16
002744  3b300300  bneq r6, zero, 12
002748  9f890700  addli r19, r15, 0
00274c  5b010000  j 8
002750  97995700  or r19, r15, r5
002754  ef4b8900  loads.w r23, 8(r18)
002758  1786cb01  and r12, r23, r28
00275c  1383cd04  setlt.u r6, r27, r12
002760  3b300300  bneq r6, zero, 12
002764  1f830b00  addli r6, r23, 0
002768  5b010000  j 8
00276c  17935b00  or r6, r23, r5
002770  ef434900  loads.w r7, 4(r18)
002774  178ac301  and r20, r7, r28
002778  13854d05  setlt.u r10, r27, r20
00277c  3b300500  bneq r10, zero, 12
002780  9f880300  addli r17, r7, 0
002784  5b010000  j 8
002788  97985300  or r17, r7, r5
00278c  6f490900  loads.w r18, 0(r18)
002790  1705c901  and r10, r18, r28
002794  9385ad04  setlt.u r11, r27, r10
002798  3bd00500  bneq r11, zero, 20
00279c  1f0c0900  addli r24, r18, 0
0027a0  1385a104  setlt.u r10, r3, r10
0027a4  37500500  beq r10, zero, 20
0027a8  db040000  j 36
0027ac  171c5900  or r24, r18, r5
0027b0  1385a104  setlt.u r10, r3, r10
0027b4  3b600500  bneq r10, zero, 24
0027b8  1b450901  srli r10, r18, 16
0027bc  1b051500  andi r10, r10, 1
0027c0  0b15a910  add.s r10, r18, r10
0027c4  0b151510  add.s r10, r10, r1
0027c8  170c9501  and r24, r10, r25
0027cc  13854105  setlt.u r10, r3, r20
0027d0  bb300500  bneq r10, zero, 44
0027d4  1bc50301  srli r10, r7, 16
0027d8  1b051500  andi r10, r10, 1
0027dc  8b93a310  add.s r7, r7, r10
0027e0  8b931310  add.s r7, r7, r1
0027e4  97889301  and r17, r7, r25
0027e8  9383c104  setlt.u r7, r3, r12
0027ec  37e00300  beq r7, zero, 24
0027f0  93830105  setlt.u r7, r3, r16
0027f4  3bec03fe  bneq r7, zero, -232
0027f8  5b050000  j 40
0027fc  9383c104  setlt.u r7, r3, r12
002800  bbcf03fe  bneq r7, zero, -16
002804  1bc30b01  srli r6, r23, 16
002808  1b031300  andi r6, r6, 1
00280c  0b936b10  add.s r6, r23, r6
002810  0b131310  add.s r6, r6, r1
002814  17039301  and r6, r6, r25
002818  93830105  setlt.u r7, r3, r16
00281c  bbcb03fe  bneq r7, zero, -272
002820  9bc30701  srli r7, r15, 16
002824  9b831300  andi r7, r7, 1
002828  8b937710  add.s r7, r15, r7
00282c  8b931310  add.s r7, r7, r1
002830  97899301  and r19, r7, r25
002834  5bdbffff  j -296
002838  80340002  core_id r9
00283c  00200100  mfence { sm }
002840  63013fff  loadli.w r2,  -104(r30)
002844  b7270100  beq r2, zero, 488
002848  1f01e000  addli r2, zero, 112
00284c  3d000000  xfence
002850  00a00300  mfence { lm, sm, gm }
002854  33030128  zext_int2long r[7:8], r2
002858  5b030000  j 24
00285c  6b538fff  load.d r[7:8], -8(r30)
002860  6b540ffb  load.d r[9:10], -80(r30)
002864  13216404  setlt.ul r2, r[9:10], r[7:8]
002868  27130400  addli.d r[7:8], r[9:10], 1
00286c  b7660100  beq r2, zero, 440
002870  1f710000  addli r2, zero, 7
002874  73386ffa  store.d r[7:8], -80(r30)
002878  973a2302  sll.d r[22:23], r[7:8], r2
00287c  bb51a201  bneq r4, r26, 116
002880  33030028  zext_int2long r[7:8], zero
002884  5b060000  j 48
002888  1bc40401  srli r8, r9, 16
00288c  1b041400  andi r8, r8, 1
002890  0b948410  add.s r8, r9, r8
002894  0b141410  add.s r8, r8, r1
002898  17049401  and r8, r8, r25
00289c  eb548fff  load.d r[10:11], -8(r30)
0028a0  0b112210  add.s r2, r4, r2
0028a4  73608100  stores.w r8, 0(r2)
0028a8  93249304  setlt.ul r9, r[7:8], r[10:11]
0028ac  27130300  addli.d r[7:8], r[7:8], 1
0028b0  b7be04fe  beq r9, zero, -84
0028b4  0b245311  add.ul r[9:10], r[7:8], r[22:23]
0028b8  1b312400  slli r2, r8, 2
0028bc  0b142d10  add.s r8, r26, r2
0028c0  ef440400  loads.w r9, 0(r8)
0028c4  1785c401  and r10, r9, r28
0028c8  1384ad04  setlt.u r8, r27, r10
0028cc  3b500400  bneq r8, zero, 20
0028d0  1f840400  addli r8, r9, 0
0028d4  1385a104  setlt.u r10, r3, r10
0028d8  3b1f05fe  bneq r10, zero, -60
0028dc  dbf5ffff  j -84
0028e0  17945400  or r8, r9, r5
0028e4  1385a104  setlt.u r10, r3, r10
0028e8  bb5e05fe  bneq r10, zero, -76
0028ec  dbf3ffff  j -100
0028f0  33040028  zext_int2long r[9:10], zero
0028f4  db040000  j 36
0028f8  27440400  addli.d r[9:10], r[9:10], 4
0028fc  0b112210  add.s r2, r4, r2
002900  9323d400  seteq.d r7, r[9:10], r[14:15]
002904  73663101  stores.w r19, 12(r2)
002908  73646100  stores.w r6, 8(r2)
00290c  73621101  stores.w r17, 4(r2)
002910  73608101  stores.w r24, 0(r2)
002914  3bad03fe  bneq r7, zero, -184
002918  0b235411  add.ul r[7:8], r[9:10], r[22:23]
00291c  1b312300  slli r2, r6, 2
002920  0b192d10  add.s r18, r26, r2
002924  ef47c900  loads.w r15, 12(r18)
002928  1788c701  and r16, r15, r28
00292c  13830d05  setlt.u r6, r27, r16
002930  3b300300  bneq r6, zero, 12
002934  9f890700  addli r19, r15, 0
002938  5b010000  j 8
00293c  97995700  or r19, r15, r5
002940  ef4b8900  loads.w r23, 8(r18)
002944  1786cb01  and r12, r23, r28
002948  1383cd04  setlt.u r6, r27, r12
00294c  3b300300  bneq r6, zero, 12
002950  1f830b00  addli r6, r23, 0
002954  5b010000  j 8
002958  17935b00  or r6, r23, r5
00295c  ef434900  loads.w r7, 4(r18)
002960  178ac301  and r20, r7, r28
002964  13854d05  setlt.u r10, r27, r20
002968  3b300500  bneq r10, zero, 12
00296c  9f880300  addli r17, r7, 0
002970  5b010000  j 8
002974  97985300  or r17, r7, r5
002978  6f490900  loads.w r18, 0(r18)
00297c  1705c901  and r10, r18, r28
002980  9385ad04  setlt.u r11, r27, r10
002984  3bd00500  bneq r11, zero, 20
002988  1f0c0900  addli r24, r18, 0
00298c  1385a104  setlt.u r10, r3, r10
002990  37500500  beq r10, zero, 20
002994  db040000  j 36
002998  171c5900  or r24, r18, r5
00299c  1385a104  setlt.u r10, r3, r10
0029a0  3b600500  bneq r10, zero, 24
0029a4  1b450901  srli r10, r18, 16
0029a8  1b051500  andi r10, r10, 1
0029ac  0b15a910  add.s r10, r18, r10
0029b0  0b151510  add.s r10, r10, r1
0029b4  170c9501  and r24, r10, r25
0029b8  13854105  setlt.u r10, r3, r20
0029bc  bb300500  bneq r10, zero, 44
0029c0  1bc50301  srli r10, r7, 16
0029c4  1b051500  andi r10, r10, 1
0029c8  8b93a310  add.s r7, r7, r10
0029cc  8b931310  add.s r7, r7, r1
0029d0  97889301  and r17, r7, r25
0029d4  9383c104  setlt.u r7, r3, r12
0029d8  37e00300  beq r7, zero, 24
0029dc  93830105  setlt.u r7, r3, r16
0029e0  3bec03fe  bneq r7, zero, -232
0029e4  5b050000  j 40
0029e8  9383c104  setlt.u r7, r3, r12
0029ec  bbcf03fe  bneq r7, zero, -16
0029f0  1bc30b01  srli r6, r23, 16
0029f4  1b031300  andi r6, r6, 1
0029f8  0b936b10  add.s r6, r23, r6
0029fc  0b131310  add.s r6, r6, r1
002a00  17039301  and r6, r6, r25
002a04  93830105  setlt.u r7, r3, r16
002a08  bbcb03fe  bneq r7, zero, -272
002a0c  9bc30701  srli r7, r15, 16
002a10  9b831300  andi r7, r7, 1
002a14  8b937710  add.s r7, r15, r7
002a18  8b931310  add.s r7, r7, r1
002a1c  97899301  and r19, r7, r25
002a20  5bdbffff  j -296
002a24  80340002  core_id r9
002a28  00200100  mfence { sm }
002a2c  1f71f001  addli r2, zero, 255
002a30  80220104  csr_set csr5, r2
002a34  1f310000  addli r2, zero, 3
002a38  00e00200  sync_core
002a3c  3b912400  bneq r9, r2, 68
002a40  1f611000  addli r2, zero, 14
002a44  7d000100  xsignal r2, 0
002a48  1f312000  addli r2, zero, 19
002a4c  7d000100  xsignal r2, 0
002a50  1f412000  addli r2, zero, 20
002a54  7d000100  xsignal r2, 0
002a58  1f112000  addli r2, zero, 17
002a5c  7d000100  xsignal r2, 0
002a60  63019ffe  loadli.w r2,  -184(r30)
002a64  6343efff  loadli.w r6,  -12(r30)
002a68  0b1d2310  add.s r26, r6, r2
002a6c  1f212000  addli r2, zero, 18
002a70  7d100100  xwait r2, 0
002a74  1f712000  addli r2, zero, 23
002a78  7d100100  xwait r2, 0
002a7c  db320000  j 404
002a80  63019ffe  loadli.w r2,  -184(r30)
002a84  e347efff  loadli.w r15,  -12(r30)
002a88  0b9d2710  add.s r26, r15, r2
002a8c  1f510000  addli r2, zero, 5
002a90  3b862400  bneq r9, r2, 384
002a94  1f112000  addli r2, zero, 17
002a98  1f250000  addli r10, zero, 2
002a9c  ab0500c1  lui r11, 790528
002aa0  1f030000  addli r6, zero, 0
002aa4  2b060100  lui r12, 16
002aa8  7d100100  xwait r2, 0
002aac  1f013000  addli r2, zero, 24
002ab0  7d100100  xwait r2, 0
002ab4  1d000500  lock zero, r10
002ab8  1f511000  addli r2, zero, 13
002abc  0d000002  ew_cfg zero, zero, zero, 1
002ac0  eb530ff5  load.d r[8:9], -176(r30)
002ac4  0d000404  ew_cfg zero, r8, zero, 2
002ac8  1f440000  addli r8, zero, 4
002acc  9f130000  addli r7, zero, 1
002ad0  0d040006  ew_cfg r8, zero, zero, 3
002ad4  0d040426  ew_cfg r8, r8, zero, 19
002ad8  0d010014  ew_cfg r2, zero, zero, 10
002adc  63417ffe  loadli.w r2,  -196(r30)
002ae0  0d852316  ew_cfg r10, r7, r2, 11
002ae4  1f310000  addli r2, zero, 3
002ae8  0d00201a  ew_cfg zero, zero, r2, 13
002aec  2b81ff40  lui r2, 266232
002af0  8d05241c  ew_cfg r11, r8, r2, 14
002af4  2b01803f  lui r2, 260096
002af8  1f342000  addli r8, zero, 19
002afc  0d00011e  ew_cfg zero, r2, zero, 15
002b00  4d2d0200  sslut r26, r4, 0
002b04  0d000014  ew_cfg zero, zero, zero, 10
002b08  0d000026  ew_cfg zero, zero, zero, 19
002b0c  1d100500  unlock r10
002b10  63017ffe  loadli.w r2,  -200(r30)
002b14  7d100400  xwait r8, 0
002b18  1f143000  addli r8, zero, 25
002b1c  7d100400  xwait r8, 0
002b20  1d000500  lock zero, r10
002b24  1f74f000  addli r8, zero, 127
002b28  0d000002  ew_cfg zero, zero, zero, 1
002b2c  0b912710  add.s r2, r15, r2
002b30  0d000404  ew_cfg zero, r8, zero, 2
002b34  8d030006  ew_cfg r7, zero, zero, 3
002b38  e3436ffe  loadli.w r7,  -204(r30)
002b3c  8d130000  ewcoeff_cfg r7, zero, zero, 0
002b40  8b136110  add.s r7, r2, r6
002b44  0b146210  add.s r8, r4, r6
002b48  1f030304  addli r6, r6, 512
002b4c  ad238400  dscmpnsel r7, r8, r8, 0
002b50  bb4fc3fe  bneq r6, r12, -16
002b54  9f230000  addli r7, zero, 2
002b58  1f030000  addli r6, zero, 0
002b5c  2b040100  lui r8, 16
002b60  1d900300  unlock r7
002b64  1d800300  lock zero, r7
002b68  9f73f000  addli r7, zero, 127
002b6c  0d000002  ew_cfg zero, zero, zero, 1
002b70  0d800304  ew_cfg zero, r7, zero, 2
002b74  9f130000  addli r7, zero, 1
002b78  8d030006  ew_cfg r7, zero, zero, 3
002b7c  8d110000  ewcoeff_cfg r3, zero, zero, 0
002b80  8b136110  add.s r7, r2, r6
002b84  1f030304  addli r6, r6, 512
002b88  ada37308  dscmpnsel r7, r7, r7, 4
002b8c  bb5f83fe  bneq r6, r8, -12
002b90  1f240000  addli r8, zero, 2
002b94  1f432000  addli r6, zero, 20
002b98  ab05803f  lui r11, 260096
002b9c  1f450000  addli r10, zero, 4
002ba0  1d100400  unlock r8
002ba4  7d100300  xwait r6, 0
002ba8  1d000400  lock zero, r8
002bac  2b0380bf  lui r6, 784384
002bb0  0d000002  ew_cfg zero, zero, zero, 1
002bb4  8d150300  ewcoeff_cfg r11, r6, zero, 0
002bb8  6b530ff5  load.d r[7:8], -176(r30)
002bbc  0d800304  ew_cfg zero, r7, zero, 2
002bc0  0d050006  ew_cfg r10, zero, zero, 3
002bc4  0d05a526  ew_cfg r10, r10, r10, 19
002bc8  2d022200  dsmadd r4, r4, r2, 0
002bcc  1f113000  addli r2, zero, 25
002bd0  0d000026  ew_cfg zero, zero, zero, 19
002bd4  1d100400  unlock r8
002bd8  7d000100  xsignal r2, 0
002bdc  1d000400  lock zero, r8
002be0  1f212000  addli r2, zero, 18
002be4  0d000002  ew_cfg zero, zero, zero, 1
002be8  8d950500  ewcoeff_cfg r11, r11, zero, 0
002bec  0d800304  ew_cfg zero, r7, zero, 2
002bf0  0d050006  ew_cfg r10, zero, zero, 3
002bf4  0d05a526  ew_cfg r10, r10, r10, 19
002bf8  2d0d4d00  dsmadd r26, r26, r4, 0
002bfc  0d000026  ew_cfg zero, zero, zero, 19
002c00  1d100400  unlock r8
002c04  7d000100  xsignal r2, 0
002c08  1f712000  addli r2, zero, 23
002c0c  7d000100  xsignal r2, 0
002c10  1f71f001  addli r2, zero, 255
002c14  3d000000  xfence
002c18  00a00300  mfence { lm, sm, gm }
002c1c  80220104  csr_set csr5, r2
002c20  0b11a219  sub.s r2, r4, r26
002c24  e7492ffe  storeli.w r2, -100(r30)
002c28  00e00200  sync_core
002c2c  b7980402  beq r9, zero, 1572
002c30  1f110000  addli r2, zero, 1
002c34  3be02404  bneq r9, r2, 2072
002c38  63433fff  loadli.w r6,  -100(r30)
002c3c  1f012000  addli r2, zero, 16
002c40  13032304  setlt.u r6, r6, r2
002c44  670b6ffe  storeli.w r6, -80(r30)
002c48  33030128  zext_int2long r[7:8], r2
002c4c  3d000000  xfence
002c50  00a00300  mfence { lm, sm, gm }
002c54  5b030000  j 24
002c58  6b530ffc  load.d r[7:8], -64(r30)
002c5c  6b548ffb  load.d r[9:10], -72(r30)
002c60  13216404  setlt.ul r2, r[9:10], r[7:8]
002c64  27130400  addli.d r[7:8], r[9:10], 1
002c68  b7760100  beq r2, zero, 444
002c6c  1f710000  addli r2, zero, 7
002c70  733c6ffa  store.d r[7:8], -72(r30)
002c74  973a2302  sll.d r[22:23], r[7:8], r2
002c78  63016fff  loadli.w r2,  -80(r30)
002c7c  b7510100  beq r2, zero, 116
002c80  33030028  zext_int2long r[7:8], zero
002c84  5b060000  j 48
002c88  1bc40401  srli r8, r9, 16
002c8c  1b041400  andi r8, r8, 1
002c90  0b948410  add.s r8, r9, r8
002c94  0b141410  add.s r8, r8, r1
002c98  17049401  and r8, r8, r25
002c9c  eb548fff  load.d r[10:11], -8(r30)
002ca0  0b112210  add.s r2, r4, r2
002ca4  73608100  stores.w r8, 0(r2)
002ca8  93249304  setlt.ul r9, r[7:8], r[10:11]
002cac  27130300  addli.d r[7:8], r[7:8], 1
002cb0  b7ae04fe  beq r9, zero, -88
002cb4  0b245311  add.ul r[9:10], r[7:8], r[22:23]
002cb8  1b312400  slli r2, r8, 2
002cbc  0b142d10  add.s r8, r26, r2
002cc0  ef440400  loads.w r9, 0(r8)
002cc4  1785c401  and r10, r9, r28
002cc8  1384ad04  setlt.u r8, r27, r10
002ccc  3b500400  bneq r8, zero, 20
002cd0  1f840400  addli r8, r9, 0
002cd4  1385a104  setlt.u r10, r3, r10
002cd8  3b1f05fe  bneq r10, zero, -60
002cdc  dbf5ffff  j -84
002ce0  17945400  or r8, r9, r5
002ce4  1385a104  setlt.u r10, r3, r10
002ce8  bb5e05fe  bneq r10, zero, -76
002cec  dbf3ffff  j -100
002cf0  33040028  zext_int2long r[9:10], zero
002cf4  db040000  j 36
002cf8  27440400  addli.d r[9:10], r[9:10], 4
002cfc  0b133211  add.s r6, r4, r19
002d00  1321d400  seteq.d r2, r[9:10], r[14:15]
002d04  7366f300  stores.w r15, 12(r6)
002d08  73647300  stores.w r7, 8(r6)
002d0c  73621301  stores.w r17, 4(r6)
002d10  7360c300  stores.w r12, 0(r6)
002d14  3b1d01fe  bneq r2, zero, -188
002d18  0b235411  add.ul r[7:8], r[9:10], r[22:23]
002d1c  9b392300  slli r19, r6, 2
002d20  0b163d11  add.s r12, r26, r19
002d24  6f48c600  loads.w r16, 12(r12)
002d28  1703c801  and r6, r16, r28
002d2c  13816d04  setlt.u r2, r27, r6
002d30  3b300100  bneq r2, zero, 12
002d34  9f070800  addli r15, r16, 0
002d38  5b010000  j 8
002d3c  97175800  or r15, r16, r5
002d40  6f4c8600  loads.w r24, 8(r12)
002d44  1701cc01  and r2, r24, r28
002d48  93832d04  setlt.u r7, r27, r2
002d4c  3bb00300  bneq r7, zero, 12
002d50  9f030c00  addli r7, r24, 0
002d54  5b010000  j 8
002d58  97135c00  or r7, r24, r5
002d5c  ef4b4600  loads.w r23, 4(r12)
002d60  1789cb01  and r18, r23, r28
002d64  13852d05  setlt.u r10, r27, r18
002d68  3b300500  bneq r10, zero, 12
002d6c  9f880b00  addli r17, r23, 0
002d70  5b010000  j 8
002d74  97985b00  or r17, r23, r5
002d78  6f4a0600  loads.w r20, 0(r12)
002d7c  1705ca01  and r10, r20, r28
002d80  9385ad04  setlt.u r11, r27, r10
002d84  3bd00500  bneq r11, zero, 20
002d88  1f060a00  addli r12, r20, 0
002d8c  1385a104  setlt.u r10, r3, r10
002d90  37500500  beq r10, zero, 20
002d94  db040000  j 36
002d98  17165a00  or r12, r20, r5
002d9c  1385a104  setlt.u r10, r3, r10
002da0  3b600500  bneq r10, zero, 24
002da4  1b450a01  srli r10, r20, 16
002da8  1b051500  andi r10, r10, 1
002dac  0b15aa10  add.s r10, r20, r10
002db0  0b151510  add.s r10, r10, r1
002db4  17069501  and r12, r10, r25
002db8  13852105  setlt.u r10, r3, r18
002dbc  bb300500  bneq r10, zero, 44
002dc0  1bc50b01  srli r10, r23, 16
002dc4  1b051500  andi r10, r10, 1
002dc8  0b95ab10  add.s r10, r23, r10
002dcc  0b151510  add.s r10, r10, r1
002dd0  97089501  and r17, r10, r25
002dd4  13812104  setlt.u r2, r3, r2
002dd8  37600100  beq r2, zero, 24
002ddc  13816104  setlt.u r2, r3, r6
002de0  3b6c01fe  bneq r2, zero, -232
002de4  5b050000  j 40
002de8  13812104  setlt.u r2, r3, r2
002dec  bb4f01fe  bneq r2, zero, -16
002df0  1b410c01  srli r2, r24, 16
002df4  1b011100  andi r2, r2, 1
002df8  0b112c10  add.s r2, r24, r2
002dfc  0b111110  add.s r2, r2, r1
002e00  97039101  and r7, r2, r25
002e04  13816104  setlt.u r2, r3, r6
002e08  bb4b01fe  bneq r2, zero, -272
002e0c  1b410801  srli r2, r16, 16
002e10  1b011100  andi r2, r2, 1
002e14  0b112810  add.s r2, r16, r2
002e18  0b111110  add.s r2, r2, r1
002e1c  97079101  and r15, r2, r25
002e20  5bdbffff  j -296
002e24  80340002  core_id r9
002e28  00200100  mfence { sm }
002e2c  63012fff  loadli.w r2,  -112(r30)
002e30  bb180102  bneq r2, zero, 1572
002e34  1f310000  addli r2, zero, 3
002e38  3bf02404  bneq r9, r2, 2076
002e3c  63433fff  loadli.w r6,  -100(r30)
002e40  1f012000  addli r2, zero, 16
002e44  13012304  setlt.u r2, r6, r2
002e48  670c2ffe  storeli.w r2, -64(r30)
002e4c  1f016000  addli r2, zero, 48
002e50  3d000000  xfence
002e54  33030128  zext_int2long r[7:8], r2
002e58  00a00300  mfence { lm, sm, gm }
002e5c  5b030000  j 24
002e60  6b530ffd  load.d r[7:8], -48(r30)
002e64  6b548ffc  load.d r[9:10], -56(r30)
002e68  13216404  setlt.ul r2, r[9:10], r[7:8]
002e6c  27130400  addli.d r[7:8], r[9:10], 1
002e70  b7760100  beq r2, zero, 444
002e74  1f710000  addli r2, zero, 7
002e78  73346ffc  store.d r[7:8], -56(r30)
002e7c  97382302  sll.d r[18:19], r[7:8], r2
002e80  63018fff  loadli.w r2,  -64(r30)
002e84  b7510100  beq r2, zero, 116
002e88  33030028  zext_int2long r[7:8], zero
002e8c  5b060000  j 48
002e90  1bc40401  srli r8, r9, 16
002e94  1b041400  andi r8, r8, 1
002e98  0b948410  add.s r8, r9, r8
002e9c  0b141410  add.s r8, r8, r1
002ea0  17049401  and r8, r8, r25
002ea4  eb548fff  load.d r[10:11], -8(r30)
002ea8  0b112210  add.s r2, r4, r2
002eac  73608100  stores.w r8, 0(r2)
002eb0  93249304  setlt.ul r9, r[7:8], r[10:11]
002eb4  27130300  addli.d r[7:8], r[7:8], 1
002eb8  b7ae04fe  beq r9, zero, -88
002ebc  0b241311  add.ul r[9:10], r[7:8], r[18:19]
002ec0  1b312400  slli r2, r8, 2
002ec4  0b142d10  add.s r8, r26, r2
002ec8  ef440400  loads.w r9, 0(r8)
002ecc  1785c401  and r10, r9, r28
002ed0  1384ad04  setlt.u r8, r27, r10
002ed4  3b500400  bneq r8, zero, 20
002ed8  1f840400  addli r8, r9, 0
002edc  1385a104  setlt.u r10, r3, r10
002ee0  3b1f05fe  bneq r10, zero, -60
002ee4  dbf5ffff  j -84
002ee8  17945400  or r8, r9, r5
002eec  1385a104  setlt.u r10, r3, r10
002ef0  bb5e05fe  bneq r10, zero, -76
002ef4  dbf3ffff  j -100
002ef8  33040028  zext_int2long r[9:10], zero
002efc  db040000  j 36
002f00  27440400  addli.d r[9:10], r[9:10], 4
002f04  8b133211  add.s r7, r4, r19
002f08  1321d400  seteq.d r2, r[9:10], r[14:15]
002f0c  73e6f300  stores.w r15, 12(r7)
002f10  73e46301  stores.w r22, 8(r7)
002f14  73e26300  stores.w r6, 4(r7)
002f18  73e0c300  stores.w r12, 0(r7)
002f1c  3b1d01fe  bneq r2, zero, -188
002f20  0b231411  add.ul r[7:8], r[9:10], r[18:19]
002f24  9b392300  slli r19, r6, 2
002f28  8b133d11  add.s r7, r26, r19
002f2c  6fc8c300  loads.w r16, 12(r7)
002f30  970ac801  and r21, r16, r28
002f34  13815d05  setlt.u r2, r27, r21
002f38  3b300100  bneq r2, zero, 12
002f3c  9f070800  addli r15, r16, 0
002f40  5b010000  j 8
002f44  97175800  or r15, r16, r5
002f48  6fcc8300  loads.w r24, 8(r7)
002f4c  1701cc01  and r2, r24, r28
002f50  13832d04  setlt.u r6, r27, r2
002f54  3b300300  bneq r6, zero, 12
002f58  1f0b0c00  addli r22, r24, 0
002f5c  5b010000  j 8
002f60  171b5c00  or r22, r24, r5
002f64  efcb4300  loads.w r23, 4(r7)
002f68  178acb01  and r20, r23, r28
002f6c  13834d05  setlt.u r6, r27, r20
002f70  3b300300  bneq r6, zero, 12
002f74  1f830b00  addli r6, r23, 0
002f78  5b010000  j 8
002f7c  17935b00  or r6, r23, r5
002f80  efc30300  loads.w r7, 0(r7)
002f84  1785c301  and r10, r7, r28
002f88  9385ad04  setlt.u r11, r27, r10
002f8c  3bd00500  bneq r11, zero, 20
002f90  1f860300  addli r12, r7, 0
002f94  1385a104  setlt.u r10, r3, r10
002f98  37500500  beq r10, zero, 20
002f9c  db040000  j 36
002fa0  17965300  or r12, r7, r5
002fa4  1385a104  setlt.u r10, r3, r10
002fa8  3b600500  bneq r10, zero, 24
002fac  1bc50301  srli r10, r7, 16
002fb0  1b051500  andi r10, r10, 1
002fb4  8b93a310  add.s r7, r7, r10
002fb8  8b931310  add.s r7, r7, r1
002fbc  17869301  and r12, r7, r25
002fc0  93834105  setlt.u r7, r3, r20
002fc4  bbb00300  bneq r7, zero, 44
002fc8  1bc30b01  srli r6, r23, 16
002fcc  1b031300  andi r6, r6, 1
002fd0  0b936b10  add.s r6, r23, r6
002fd4  0b131310  add.s r6, r6, r1
002fd8  17039301  and r6, r6, r25
002fdc  13812104  setlt.u r2, r3, r2
002fe0  37600100  beq r2, zero, 24
002fe4  13815105  setlt.u r2, r3, r21
002fe8  3b6c01fe  bneq r2, zero, -232
002fec  5b050000  j 40
002ff0  13812104  setlt.u r2, r3, r2
002ff4  bb4f01fe  bneq r2, zero, -16
002ff8  1b410c01  srli r2, r24, 16
002ffc  1b011100  andi r2, r2, 1
003000  0b112c10  add.s r2, r24, r2
003004  0b111110  add.s r2, r2, r1
003008  170b9101  and r22, r2, r25
00300c  13815105  setlt.u r2, r3, r21
003010  bb4b01fe  bneq r2, zero, -272
003014  1b410801  srli r2, r16, 16
003018  1b011100  andi r2, r2, 1
00301c  0b112810  add.s r2, r16, r2
003020  0b111110  add.s r2, r2, r1
003024  97079101  and r15, r2, r25
003028  5bdbffff  j -296
00302c  80340002  core_id r9
003030  00200100  mfence { sm }
003034  63412fff  loadli.w r2,  -108(r30)
003038  bb180102  bneq r2, zero, 1572
00303c  1f510000  addli r2, zero, 5
003040  3bf02404  bneq r9, r2, 2076
003044  63433fff  loadli.w r6,  -100(r30)
003048  1f012000  addli r2, zero, 16
00304c  13012304  setlt.u r2, r6, r2
003050  670d2ffe  storeli.w r2, -48(r30)
003054  1f01a000  addli r2, zero, 80
003058  3d000000  xfence
00305c  33030128  zext_int2long r[7:8], r2
003060  00a00300  mfence { lm, sm, gm }
003064  5b030000  j 24
003068  6b530ffe  load.d r[7:8], -32(r30)
00306c  6b548ffd  load.d r[9:10], -40(r30)
003070  13216404  setlt.ul r2, r[9:10], r[7:8]
003074  27130400  addli.d r[7:8], r[9:10], 1
003078  b7760100  beq r2, zero, 444
00307c  1f710000  addli r2, zero, 7
003080  733c6ffc  store.d r[7:8], -40(r30)
003084  17342302  sll.d r[9:10], r[7:8], r2
003088  6301afff  loadli.w r2,  -48(r30)
00308c  b7510100  beq r2, zero, 116
003090  33030028  zext_int2long r[7:8], zero
003094  5b060000  j 48
003098  1bc50701  srli r10, r15, 16
00309c  1b051500  andi r10, r10, 1
0030a0  0b95a710  add.s r10, r15, r10
0030a4  0b151510  add.s r10, r10, r1
0030a8  17069501  and r12, r10, r25
0030ac  6b558fff  load.d r[11:12], -8(r30)
0030b0  0b112210  add.s r2, r4, r2
0030b4  7360c100  stores.w r12, 0(r2)
0030b8  1325a304  setlt.ul r10, r[7:8], r[11:12]
0030bc  27130300  addli.d r[7:8], r[7:8], 1
0030c0  b72e05fe  beq r10, zero, -88
0030c4  0b258310  add.ul r[11:12], r[7:8], r[9:10]
0030c8  1b312500  slli r2, r10, 2
0030cc  0b152d10  add.s r10, r26, r2
0030d0  ef470500  loads.w r15, 0(r10)
0030d4  1785c701  and r10, r15, r28
0030d8  9385ad04  setlt.u r11, r27, r10
0030dc  3bd00500  bneq r11, zero, 20
0030e0  1f860700  addli r12, r15, 0
0030e4  1385a104  setlt.u r10, r3, r10
0030e8  3b1f05fe  bneq r10, zero, -60
0030ec  dbf5ffff  j -84
0030f0  17965700  or r12, r15, r5
0030f4  1385a104  setlt.u r10, r3, r10
0030f8  bb5e05fe  bneq r10, zero, -76
0030fc  dbf3ffff  j -100
003100  b3070028  zext_int2long r[16:17], zero
003104  db040000  j 36
003108  a7c70700  addli.d r[16:17], r[16:17], 4
00310c  8b131211  add.s r7, r4, r17
003110  13a1d700  seteq.d r2, r[16:17], r[14:15]
003114  73e62301  stores.w r18, 12(r7)
003118  73e46301  stores.w r22, 8(r7)
00311c  73e26300  stores.w r6, 4(r7)
003120  73e0c300  stores.w r12, 0(r7)
003124  3b1d01fe  bneq r2, zero, -188
003128  0ba38710  add.ul r[7:8], r[16:17], r[9:10]
00312c  9b382300  slli r17, r6, 2
003130  8b131d11  add.s r7, r26, r17
003134  efc9c300  loads.w r19, 12(r7)
003138  978ac901  and r21, r19, r28
00313c  13815d05  setlt.u r2, r27, r21
003140  3b300100  bneq r2, zero, 12
003144  1f890900  addli r18, r19, 0
003148  5b010000  j 8
00314c  17995900  or r18, r19, r5
003150  6fcc8300  loads.w r24, 8(r7)
003154  1701cc01  and r2, r24, r28
003158  13832d04  setlt.u r6, r27, r2
00315c  3b300300  bneq r6, zero, 12
003160  1f0b0c00  addli r22, r24, 0
003164  5b010000  j 8
003168  171b5c00  or r22, r24, r5
00316c  efcb4300  loads.w r23, 4(r7)
003170  178acb01  and r20, r23, r28
003174  13834d05  setlt.u r6, r27, r20
003178  3b300300  bneq r6, zero, 12
00317c  1f830b00  addli r6, r23, 0
003180  5b010000  j 8
003184  17935b00  or r6, r23, r5
003188  efc30300  loads.w r7, 0(r7)
00318c  1785c301  and r10, r7, r28
003190  9385ad04  setlt.u r11, r27, r10
003194  3bd00500  bneq r11, zero, 20
003198  1f860300  addli r12, r7, 0
00319c  1385a104  setlt.u r10, r3, r10
0031a0  37500500  beq r10, zero, 20
0031a4  db040000  j 36
0031a8  17965300  or r12, r7, r5
0031ac  1385a104  setlt.u r10, r3, r10
0031b0  3b600500  bneq r10, zero, 24
0031b4  1bc50301  srli r10, r7, 16
0031b8  1b051500  andi r10, r10, 1
0031bc  8b93a310  add.s r7, r7, r10
0031c0  8b931310  add.s r7, r7, r1
0031c4  17869301  and r12, r7, r25
0031c8  93834105  setlt.u r7, r3, r20
0031cc  bbb00300  bneq r7, zero, 44
0031d0  1bc30b01  srli r6, r23, 16
0031d4  1b031300  andi r6, r6, 1
0031d8  0b936b10  add.s r6, r23, r6
0031dc  0b131310  add.s r6, r6, r1
0031e0  17039301  and r6, r6, r25
0031e4  13812104  setlt.u r2, r3, r2
0031e8  37600100  beq r2, zero, 24
0031ec  13815105  setlt.u r2, r3, r21
0031f0  3b6c01fe  bneq r2, zero, -232
0031f4  5b050000  j 40
0031f8  13812104  setlt.u r2, r3, r2
0031fc  bb4f01fe  bneq r2, zero, -16
003200  1b410c01  srli r2, r24, 16
003204  1b011100  andi r2, r2, 1
003208  0b112c10  add.s r2, r24, r2
00320c  0b111110  add.s r2, r2, r1
003210  170b9101  and r22, r2, r25
003214  13815105  setlt.u r2, r3, r21
003218  bb4b01fe  bneq r2, zero, -272
00321c  1bc10901  srli r2, r19, 16
003220  1b011100  andi r2, r2, 1
003224  0b912910  add.s r2, r19, r2
003228  0b111110  add.s r2, r2, r1
00322c  17099101  and r18, r2, r25
003230  5bdbffff  j -296
003234  80340002  core_id r9
003238  00200100  mfence { sm }
00323c  1f610000  addli r2, zero, 6
003240  b7982402  beq r9, r2, 1572
003244  63013fff  loadli.w r2,  -104(r30)
003248  3b700104  bneq r2, zero, 2076
00324c  5b420100  j 2576
003250  63433fff  loadli.w r6,  -100(r30)
003254  1f012000  addli r2, zero, 16
003258  13012304  setlt.u r2, r6, r2
00325c  33030028  zext_int2long r[7:8], zero
003260  e74a2ffe  storeli.w r2, -84(r30)
003264  3d000000  xfence
003268  00a00300  mfence { lm, sm, gm }
00326c  5b030000  j 24
003270  6b538ffb  load.d r[7:8], -72(r30)
003274  6b540ffb  load.d r[9:10], -80(r30)
003278  13216404  setlt.ul r2, r[9:10], r[7:8]
00327c  27130400  addli.d r[7:8], r[9:10], 1
003280  b7760100  beq r2, zero, 444
003284  1f710000  addli r2, zero, 7
003288  73386ffa  store.d r[7:8], -80(r30)
00328c  973a2302  sll.d r[22:23], r[7:8], r2
003290  63415fff  loadli.w r2,  -84(r30)
003294  b7510100  beq r2, zero, 116
003298  33030028  zext_int2long r[7:8], zero
00329c  5b060000  j 48
0032a0  1bc40401  srli r8, r9, 16
0032a4  1b041400  andi r8, r8, 1
0032a8  0b948410  add.s r8, r9, r8
0032ac  0b141410  add.s r8, r8, r1
0032b0  17049401  and r8, r8, r25
0032b4  eb548fff  load.d r[10:11], -8(r30)
0032b8  0b112210  add.s r2, r4, r2
0032bc  73608100  stores.w r8, 0(r2)
0032c0  93249304  setlt.ul r9, r[7:8], r[10:11]
0032c4  27130300  addli.d r[7:8], r[7:8], 1
0032c8  b7ae04fe  beq r9, zero, -88
0032cc  0b245311  add.ul r[9:10], r[7:8], r[22:23]
0032d0  1b312400  slli r2, r8, 2
0032d4  0b142d10  add.s r8, r26, r2
0032d8  ef440400  loads.w r9, 0(r8)
0032dc  1785c401  and r10, r9, r28
0032e0  1384ad04  setlt.u r8, r27, r10
0032e4  3b500400  bneq r8, zero, 20
0032e8  1f840400  addli r8, r9, 0
0032ec  1385a104  setlt.u r10, r3, r10
0032f0  3b1f05fe  bneq r10, zero, -60
0032f4  dbf5ffff  j -84
0032f8  17945400  or r8, r9, r5
0032fc  1385a104  setlt.u r10, r3, r10
003300  bb5e05fe  bneq r10, zero, -76
003304  dbf3ffff  j -100
003308  33040028  zext_int2long r[9:10], zero
00330c  db040000  j 36
003310  27440400  addli.d r[9:10], r[9:10], 4
003314  0b133211  add.s r6, r4, r19
003318  1321d400  seteq.d r2, r[9:10], r[14:15]
00331c  7366f300  stores.w r15, 12(r6)
003320  73647300  stores.w r7, 8(r6)
003324  73621301  stores.w r17, 4(r6)
003328  7360c300  stores.w r12, 0(r6)
00332c  3b1d01fe  bneq r2, zero, -188
003330  0b235411  add.ul r[7:8], r[9:10], r[22:23]
003334  9b392300  slli r19, r6, 2
003338  0b163d11  add.s r12, r26, r19
00333c  6f48c600  loads.w r16, 12(r12)
003340  1703c801  and r6, r16, r28
003344  13816d04  setlt.u r2, r27, r6
003348  3b300100  bneq r2, zero, 12
00334c  9f070800  addli r15, r16, 0
003350  5b010000  j 8
003354  97175800  or r15, r16, r5
003358  6f4c8600  loads.w r24, 8(r12)
00335c  1701cc01  and r2, r24, r28
003360  93832d04  setlt.u r7, r27, r2
003364  3bb00300  bneq r7, zero, 12
003368  9f030c00  addli r7, r24, 0
00336c  5b010000  j 8
003370  97135c00  or r7, r24, r5
003374  ef4b4600  loads.w r23, 4(r12)
003378  1789cb01  and r18, r23, r28
00337c  13852d05  setlt.u r10, r27, r18
003380  3b300500  bneq r10, zero, 12
003384  9f880b00  addli r17, r23, 0
003388  5b010000  j 8
00338c  97985b00  or r17, r23, r5
003390  6f4a0600  loads.w r20, 0(r12)
003394  1705ca01  and r10, r20, r28
003398  9385ad04  setlt.u r11, r27, r10
00339c  3bd00500  bneq r11, zero, 20
0033a0  1f060a00  addli r12, r20, 0
0033a4  1385a104  setlt.u r10, r3, r10
0033a8  37500500  beq r10, zero, 20
0033ac  db040000  j 36
0033b0  17165a00  or r12, r20, r5
0033b4  1385a104  setlt.u r10, r3, r10
0033b8  3b600500  bneq r10, zero, 24
0033bc  1b450a01  srli r10, r20, 16
0033c0  1b051500  andi r10, r10, 1
0033c4  0b15aa10  add.s r10, r20, r10
0033c8  0b151510  add.s r10, r10, r1
0033cc  17069501  and r12, r10, r25
0033d0  13852105  setlt.u r10, r3, r18
0033d4  bb300500  bneq r10, zero, 44
0033d8  1bc50b01  srli r10, r23, 16
0033dc  1b051500  andi r10, r10, 1
0033e0  0b95ab10  add.s r10, r23, r10
0033e4  0b151510  add.s r10, r10, r1
0033e8  97089501  and r17, r10, r25
0033ec  13812104  setlt.u r2, r3, r2
0033f0  37600100  beq r2, zero, 24
0033f4  13816104  setlt.u r2, r3, r6
0033f8  3b6c01fe  bneq r2, zero, -232
0033fc  5b050000  j 40
003400  13812104  setlt.u r2, r3, r2
003404  bb4f01fe  bneq r2, zero, -16
003408  1b410c01  srli r2, r24, 16
00340c  1b011100  andi r2, r2, 1
003410  0b112c10  add.s r2, r24, r2
003414  0b111110  add.s r2, r2, r1
003418  97039101  and r7, r2, r25
00341c  13816104  setlt.u r2, r3, r6
003420  bb4b01fe  bneq r2, zero, -272
003424  1b410801  srli r2, r16, 16
003428  1b011100  andi r2, r2, 1
00342c  0b112810  add.s r2, r16, r2
003430  0b111110  add.s r2, r2, r1
003434  97079101  and r15, r2, r25
003438  5bdbffff  j -296
00343c  80340002  core_id r9
003440  00200100  mfence { sm }
003444  1f110000  addli r2, zero, 1
003448  b7cf24fa  beq r9, r2, -2064
00344c  63012fff  loadli.w r2,  -112(r30)
003450  b71701fc  beq r2, zero, -1564
003454  63433fff  loadli.w r6,  -100(r30)
003458  1f012000  addli r2, zero, 16
00345c  13012304  setlt.u r2, r6, r2
003460  e70b2ffe  storeli.w r2, -72(r30)
003464  1f014000  addli r2, zero, 32
003468  3d000000  xfence
00346c  33030128  zext_int2long r[7:8], r2
003470  00a00300  mfence { lm, sm, gm }
003474  5b030000  j 24
003478  6b538ffc  load.d r[7:8], -56(r30)
00347c  6b540ffc  load.d r[9:10], -64(r30)
003480  13216404  setlt.ul r2, r[9:10], r[7:8]
003484  27130400  addli.d r[7:8], r[9:10], 1
003488  b7760100  beq r2, zero, 444
00348c  1f710000  addli r2, zero, 7
003490  73306ffc  store.d r[7:8], -64(r30)
003494  973a2302  sll.d r[22:23], r[7:8], r2
003498  63017fff  loadli.w r2,  -72(r30)
00349c  b7510100  beq r2, zero, 116
0034a0  33030028  zext_int2long r[7:8], zero
0034a4  5b060000  j 48
0034a8  1bc40401  srli r8, r9, 16
0034ac  1b041400  andi r8, r8, 1
0034b0  0b948410  add.s r8, r9, r8
0034b4  0b141410  add.s r8, r8, r1
0034b8  17049401  and r8, r8, r25
0034bc  eb548fff  load.d r[10:11], -8(r30)
0034c0  0b112210  add.s r2, r4, r2
0034c4  73608100  stores.w r8, 0(r2)
0034c8  93249304  setlt.ul r9, r[7:8], r[10:11]
0034cc  27130300  addli.d r[7:8], r[7:8], 1
0034d0  b7ae04fe  beq r9, zero, -88
0034d4  0b245311  add.ul r[9:10], r[7:8], r[22:23]
0034d8  1b312400  slli r2, r8, 2
0034dc  0b142d10  add.s r8, r26, r2
0034e0  ef440400  loads.w r9, 0(r8)
0034e4  1785c401  and r10, r9, r28
0034e8  1384ad04  setlt.u r8, r27, r10
0034ec  3b500400  bneq r8, zero, 20
0034f0  1f840400  addli r8, r9, 0
0034f4  1385a104  setlt.u r10, r3, r10
0034f8  3b1f05fe  bneq r10, zero, -60
0034fc  dbf5ffff  j -84
003500  17945400  or r8, r9, r5
003504  1385a104  setlt.u r10, r3, r10
003508  bb5e05fe  bneq r10, zero, -76
00350c  dbf3ffff  j -100
003510  33040028  zext_int2long r[9:10], zero
003514  db040000  j 36
003518  27440400  addli.d r[9:10], r[9:10], 4
00351c  0b133211  add.s r6, r4, r19
003520  1321d400  seteq.d r2, r[9:10], r[14:15]
003524  7366f300  stores.w r15, 12(r6)
003528  73647300  stores.w r7, 8(r6)
00352c  73621301  stores.w r17, 4(r6)
003530  7360c300  stores.w r12, 0(r6)
003534  3b1d01fe  bneq r2, zero, -188
003538  0b235411  add.ul r[7:8], r[9:10], r[22:23]
00353c  9b392300  slli r19, r6, 2
003540  0b163d11  add.s r12, r26, r19
003544  6f48c600  loads.w r16, 12(r12)
003548  1703c801  and r6, r16, r28
00354c  13816d04  setlt.u r2, r27, r6
003550  3b300100  bneq r2, zero, 12
003554  9f070800  addli r15, r16, 0
003558  5b010000  j 8
00355c  97175800  or r15, r16, r5
003560  6f4c8600  loads.w r24, 8(r12)
003564  1701cc01  and r2, r24, r28
003568  93832d04  setlt.u r7, r27, r2
00356c  3bb00300  bneq r7, zero, 12
003570  9f030c00  addli r7, r24, 0
003574  5b010000  j 8
003578  97135c00  or r7, r24, r5
00357c  ef4b4600  loads.w r23, 4(r12)
003580  1789cb01  and r18, r23, r28
003584  13852d05  setlt.u r10, r27, r18
003588  3b300500  bneq r10, zero, 12
00358c  9f880b00  addli r17, r23, 0
003590  5b010000  j 8
003594  97985b00  or r17, r23, r5
003598  6f4a0600  loads.w r20, 0(r12)
00359c  1705ca01  and r10, r20, r28
0035a0  9385ad04  setlt.u r11, r27, r10
0035a4  3bd00500  bneq r11, zero, 20
0035a8  1f060a00  addli r12, r20, 0
0035ac  1385a104  setlt.u r10, r3, r10
0035b0  37500500  beq r10, zero, 20
0035b4  db040000  j 36
0035b8  17165a00  or r12, r20, r5
0035bc  1385a104  setlt.u r10, r3, r10
0035c0  3b600500  bneq r10, zero, 24
0035c4  1b450a01  srli r10, r20, 16
0035c8  1b051500  andi r10, r10, 1
0035cc  0b15aa10  add.s r10, r20, r10
0035d0  0b151510  add.s r10, r10, r1
0035d4  17069501  and r12, r10, r25
0035d8  13852105  setlt.u r10, r3, r18
0035dc  bb300500  bneq r10, zero, 44
0035e0  1bc50b01  srli r10, r23, 16
0035e4  1b051500  andi r10, r10, 1
0035e8  0b95ab10  add.s r10, r23, r10
0035ec  0b151510  add.s r10, r10, r1
0035f0  97089501  and r17, r10, r25
0035f4  13812104  setlt.u r2, r3, r2
0035f8  37600100  beq r2, zero, 24
0035fc  13816104  setlt.u r2, r3, r6
003600  3b6c01fe  bneq r2, zero, -232
003604  5b050000  j 40
003608  13812104  setlt.u r2, r3, r2
00360c  bb4f01fe  bneq r2, zero, -16
003610  1b410c01  srli r2, r24, 16
003614  1b011100  andi r2, r2, 1
003618  0b112c10  add.s r2, r24, r2
00361c  0b111110  add.s r2, r2, r1
003620  97039101  and r7, r2, r25
003624  13816104  setlt.u r2, r3, r6
003628  bb4b01fe  bneq r2, zero, -272
00362c  1b410801  srli r2, r16, 16
003630  1b011100  andi r2, r2, 1
003634  0b112810  add.s r2, r16, r2
003638  0b111110  add.s r2, r2, r1
00363c  97079101  and r15, r2, r25
003640  5bdbffff  j -296
003644  80340002  core_id r9
003648  00200100  mfence { sm }
00364c  1f310000  addli r2, zero, 3
003650  b7bf24fa  beq r9, r2, -2068
003654  63412fff  loadli.w r2,  -108(r30)
003658  b71701fc  beq r2, zero, -1564
00365c  63433fff  loadli.w r6,  -100(r30)
003660  1f012000  addli r2, zero, 16
003664  13012304  setlt.u r2, r6, r2
003668  e70c2ffe  storeli.w r2, -56(r30)
00366c  1f018000  addli r2, zero, 64
003670  3d000000  xfence
003674  33030128  zext_int2long r[7:8], r2
003678  00a00300  mfence { lm, sm, gm }
00367c  5b030000  j 24
003680  6b538ffd  load.d r[7:8], -40(r30)
003684  6b540ffd  load.d r[9:10], -48(r30)
003688  13216404  setlt.ul r2, r[9:10], r[7:8]
00368c  27130400  addli.d r[7:8], r[9:10], 1
003690  b7760100  beq r2, zero, 444
003694  1f710000  addli r2, zero, 7
003698  73386ffc  store.d r[7:8], -48(r30)
00369c  97372302  sll.d r[16:17], r[7:8], r2
0036a0  63019fff  loadli.w r2,  -56(r30)
0036a4  b7510100  beq r2, zero, 116
0036a8  33030028  zext_int2long r[7:8], zero
0036ac  5b060000  j 48
0036b0  1bc40401  srli r8, r9, 16
0036b4  1b041400  andi r8, r8, 1
0036b8  0b948410  add.s r8, r9, r8
0036bc  0b141410  add.s r8, r8, r1
0036c0  17049401  and r8, r8, r25
0036c4  eb548fff  load.d r[10:11], -8(r30)
0036c8  0b112210  add.s r2, r4, r2
0036cc  73608100  stores.w r8, 0(r2)
0036d0  93249304  setlt.ul r9, r[7:8], r[10:11]
0036d4  27130300  addli.d r[7:8], r[7:8], 1
0036d8  b7ae04fe  beq r9, zero, -88
0036dc  0b24f310  add.ul r[9:10], r[7:8], r[16:17]
0036e0  1b312400  slli r2, r8, 2
0036e4  0b142d10  add.s r8, r26, r2
0036e8  ef440400  loads.w r9, 0(r8)
0036ec  1785c401  and r10, r9, r28
0036f0  1384ad04  setlt.u r8, r27, r10
0036f4  3b500400  bneq r8, zero, 20
0036f8  1f840400  addli r8, r9, 0
0036fc  1385a104  setlt.u r10, r3, r10
003700  3b1f05fe  bneq r10, zero, -60
003704  dbf5ffff  j -84
003708  17945400  or r8, r9, r5
00370c  1385a104  setlt.u r10, r3, r10
003710  bb5e05fe  bneq r10, zero, -76
003714  dbf3ffff  j -100
003718  33040028  zext_int2long r[9:10], zero
00371c  db040000  j 36
003720  27440400  addli.d r[9:10], r[9:10], 4
003724  8b131211  add.s r7, r4, r17
003728  1321d400  seteq.d r2, r[9:10], r[14:15]
00372c  73e62301  stores.w r18, 12(r7)
003730  73e46301  stores.w r22, 8(r7)
003734  73e26300  stores.w r6, 4(r7)
003738  73e0c300  stores.w r12, 0(r7)
00373c  3b1d01fe  bneq r2, zero, -188
003740  0b23f410  add.ul r[7:8], r[9:10], r[16:17]
003744  9b382300  slli r17, r6, 2
003748  8b131d11  add.s r7, r26, r17
00374c  efc9c300  loads.w r19, 12(r7)
003750  978ac901  and r21, r19, r28
003754  13815d05  setlt.u r2, r27, r21
003758  3b300100  bneq r2, zero, 12
00375c  1f890900  addli r18, r19, 0
003760  5b010000  j 8
003764  17995900  or r18, r19, r5
003768  6fcc8300  loads.w r24, 8(r7)
00376c  1701cc01  and r2, r24, r28
003770  13832d04  setlt.u r6, r27, r2
003774  3b300300  bneq r6, zero, 12
003778  1f0b0c00  addli r22, r24, 0
00377c  5b010000  j 8
003780  171b5c00  or r22, r24, r5
003784  efcb4300  loads.w r23, 4(r7)
003788  178acb01  and r20, r23, r28
00378c  13834d05  setlt.u r6, r27, r20
003790  3b300300  bneq r6, zero, 12
003794  1f830b00  addli r6, r23, 0
003798  5b010000  j 8
00379c  17935b00  or r6, r23, r5
0037a0  efc30300  loads.w r7, 0(r7)
0037a4  1785c301  and r10, r7, r28
0037a8  9385ad04  setlt.u r11, r27, r10
0037ac  3bd00500  bneq r11, zero, 20
0037b0  1f860300  addli r12, r7, 0
0037b4  1385a104  setlt.u r10, r3, r10
0037b8  37500500  beq r10, zero, 20
0037bc  db040000  j 36
0037c0  17965300  or r12, r7, r5
0037c4  1385a104  setlt.u r10, r3, r10
0037c8  3b600500  bneq r10, zero, 24
0037cc  1bc50301  srli r10, r7, 16
0037d0  1b051500  andi r10, r10, 1
0037d4  8b93a310  add.s r7, r7, r10
0037d8  8b931310  add.s r7, r7, r1
0037dc  17869301  and r12, r7, r25
0037e0  93834105  setlt.u r7, r3, r20
0037e4  bbb00300  bneq r7, zero, 44
0037e8  1bc30b01  srli r6, r23, 16
0037ec  1b031300  andi r6, r6, 1
0037f0  0b936b10  add.s r6, r23, r6
0037f4  0b131310  add.s r6, r6, r1
0037f8  17039301  and r6, r6, r25
0037fc  13812104  setlt.u r2, r3, r2
003800  37600100  beq r2, zero, 24
003804  13815105  setlt.u r2, r3, r21
003808  3b6c01fe  bneq r2, zero, -232
00380c  5b050000  j 40
003810  13812104  setlt.u r2, r3, r2
003814  bb4f01fe  bneq r2, zero, -16
003818  1b410c01  srli r2, r24, 16
00381c  1b011100  andi r2, r2, 1
003820  0b112c10  add.s r2, r24, r2
003824  0b111110  add.s r2, r2, r1
003828  170b9101  and r22, r2, r25
00382c  13815105  setlt.u r2, r3, r21
003830  bb4b01fe  bneq r2, zero, -272
003834  1bc10901  srli r2, r19, 16
003838  1b011100  andi r2, r2, 1
00383c  0b912910  add.s r2, r19, r2
003840  0b111110  add.s r2, r2, r1
003844  17099101  and r18, r2, r25
003848  5bdbffff  j -296
00384c  80340002  core_id r9
003850  00200100  mfence { sm }
003854  1f510000  addli r2, zero, 5
003858  b7bf24fa  beq r9, r2, -2068
00385c  1f610000  addli r2, zero, 6
003860  bb9724fc  bneq r9, r2, -1564
003864  63433fff  loadli.w r6,  -100(r30)
003868  1f012000  addli r2, zero, 16
00386c  13012304  setlt.u r2, r6, r2
003870  e70d2ffe  storeli.w r2, -40(r30)
003874  1f01c000  addli r2, zero, 96
003878  3d000000  xfence
00387c  33030128  zext_int2long r[7:8], r2
003880  00a00300  mfence { lm, sm, gm }
003884  5b030000  j 24
003888  6b538ffe  load.d r[7:8], -24(r30)
00388c  6b540ffe  load.d r[9:10], -32(r30)
003890  13216404  setlt.ul r2, r[9:10], r[7:8]
003894  27130400  addli.d r[7:8], r[9:10], 1
003898  b7760100  beq r2, zero, 444
00389c  1f710000  addli r2, zero, 7
0038a0  73306ffe  store.d r[7:8], -32(r30)
0038a4  17342302  sll.d r[9:10], r[7:8], r2
0038a8  6301bfff  loadli.w r2,  -40(r30)
0038ac  b7510100  beq r2, zero, 116
0038b0  33030028  zext_int2long r[7:8], zero
0038b4  5b060000  j 48
0038b8  1bc50701  srli r10, r15, 16
0038bc  1b051500  andi r10, r10, 1
0038c0  0b95a710  add.s r10, r15, r10
0038c4  0b151510  add.s r10, r10, r1
0038c8  17069501  and r12, r10, r25
0038cc  6b558fff  load.d r[11:12], -8(r30)
0038d0  0b112210  add.s r2, r4, r2
0038d4  7360c100  stores.w r12, 0(r2)
0038d8  1325a304  setlt.ul r10, r[7:8], r[11:12]
0038dc  27130300  addli.d r[7:8], r[7:8], 1
0038e0  b72e05fe  beq r10, zero, -88
0038e4  0b258310  add.ul r[11:12], r[7:8], r[9:10]
0038e8  1b312500  slli r2, r10, 2
0038ec  0b152d10  add.s r10, r26, r2
0038f0  ef470500  loads.w r15, 0(r10)
0038f4  1785c701  and r10, r15, r28
0038f8  9385ad04  setlt.u r11, r27, r10
0038fc  3bd00500  bneq r11, zero, 20
003900  1f860700  addli r12, r15, 0
003904  1385a104  setlt.u r10, r3, r10
003908  3b1f05fe  bneq r10, zero, -60
00390c  dbf5ffff  j -84
003910  17965700  or r12, r15, r5
003914  1385a104  setlt.u r10, r3, r10
003918  bb5e05fe  bneq r10, zero, -76
00391c  dbf3ffff  j -100
003920  b3070028  zext_int2long r[16:17], zero
003924  db040000  j 36
003928  a7c70700  addli.d r[16:17], r[16:17], 4
00392c  8b131211  add.s r7, r4, r17
003930  13a1d700  seteq.d r2, r[16:17], r[14:15]
003934  73e62301  stores.w r18, 12(r7)
003938  73e46301  stores.w r22, 8(r7)
00393c  73e26300  stores.w r6, 4(r7)
003940  73e0c300  stores.w r12, 0(r7)
003944  3b1d01fe  bneq r2, zero, -188
003948  0ba38710  add.ul r[7:8], r[16:17], r[9:10]
00394c  9b382300  slli r17, r6, 2
003950  8b131d11  add.s r7, r26, r17
003954  efc9c300  loads.w r19, 12(r7)
003958  978ac901  and r21, r19, r28
00395c  13815d05  setlt.u r2, r27, r21
003960  3b300100  bneq r2, zero, 12
003964  1f890900  addli r18, r19, 0
003968  5b010000  j 8
00396c  17995900  or r18, r19, r5
003970  6fcc8300  loads.w r24, 8(r7)
003974  1701cc01  and r2, r24, r28
003978  13832d04  setlt.u r6, r27, r2
00397c  3b300300  bneq r6, zero, 12
003980  1f0b0c00  addli r22, r24, 0
003984  5b010000  j 8
003988  171b5c00  or r22, r24, r5
00398c  efcb4300  loads.w r23, 4(r7)
003990  178acb01  and r20, r23, r28
003994  13834d05  setlt.u r6, r27, r20
003998  3b300300  bneq r6, zero, 12
00399c  1f830b00  addli r6, r23, 0
0039a0  5b010000  j 8
0039a4  17935b00  or r6, r23, r5
0039a8  efc30300  loads.w r7, 0(r7)
0039ac  1785c301  and r10, r7, r28
0039b0  9385ad04  setlt.u r11, r27, r10
0039b4  3bd00500  bneq r11, zero, 20
0039b8  1f860300  addli r12, r7, 0
0039bc  1385a104  setlt.u r10, r3, r10
0039c0  37500500  beq r10, zero, 20
0039c4  db040000  j 36
0039c8  17965300  or r12, r7, r5
0039cc  1385a104  setlt.u r10, r3, r10
0039d0  3b600500  bneq r10, zero, 24
0039d4  1bc50301  srli r10, r7, 16
0039d8  1b051500  andi r10, r10, 1
0039dc  8b93a310  add.s r7, r7, r10
0039e0  8b931310  add.s r7, r7, r1
0039e4  17869301  and r12, r7, r25
0039e8  93834105  setlt.u r7, r3, r20
0039ec  bbb00300  bneq r7, zero, 44
0039f0  1bc30b01  srli r6, r23, 16
0039f4  1b031300  andi r6, r6, 1
0039f8  0b936b10  add.s r6, r23, r6
0039fc  0b131310  add.s r6, r6, r1
003a00  17039301  and r6, r6, r25
003a04  13812104  setlt.u r2, r3, r2
003a08  37600100  beq r2, zero, 24
003a0c  13815105  setlt.u r2, r3, r21
003a10  3b6c01fe  bneq r2, zero, -232
003a14  5b050000  j 40
003a18  13812104  setlt.u r2, r3, r2
003a1c  bb4f01fe  bneq r2, zero, -16
003a20  1b410c01  srli r2, r24, 16
003a24  1b011100  andi r2, r2, 1
003a28  0b112c10  add.s r2, r24, r2
003a2c  0b111110  add.s r2, r2, r1
003a30  170b9101  and r22, r2, r25
003a34  13815105  setlt.u r2, r3, r21
003a38  bb4b01fe  bneq r2, zero, -272
003a3c  1bc10901  srli r2, r19, 16
003a40  1b011100  andi r2, r2, 1
003a44  0b912910  add.s r2, r19, r2
003a48  0b111110  add.s r2, r2, r1
003a4c  17099101  and r18, r2, r25
003a50  5bdbffff  j -296
003a54  80340002  core_id r9
003a58  00200100  mfence { sm }
003a5c  63013fff  loadli.w r2,  -104(r30)
003a60  b7770100  beq r2, zero, 508
003a64  63433fff  loadli.w r6,  -100(r30)
003a68  1f012000  addli r2, zero, 16
003a6c  13012304  setlt.u r2, r6, r2
003a70  670e2ffe  storeli.w r2, -32(r30)
003a74  1f01e000  addli r2, zero, 112
003a78  3d000000  xfence
003a7c  33030128  zext_int2long r[7:8], r2
003a80  00a00300  mfence { lm, sm, gm }
003a84  5b030000  j 24
003a88  6b538fff  load.d r[7:8], -8(r30)
003a8c  6b548ffe  load.d r[9:10], -24(r30)
003a90  13216404  setlt.ul r2, r[9:10], r[7:8]
003a94  27130400  addli.d r[7:8], r[9:10], 1
003a98  b7760100  beq r2, zero, 444
003a9c  1f710000  addli r2, zero, 7
003aa0  73346ffe  store.d r[7:8], -24(r30)
003aa4  17342302  sll.d r[9:10], r[7:8], r2
003aa8  6301cfff  loadli.w r2,  -32(r30)
003aac  b7510100  beq r2, zero, 116
003ab0  33030028  zext_int2long r[7:8], zero
003ab4  5b060000  j 48
003ab8  1bc50701  srli r10, r15, 16
003abc  1b051500  andi r10, r10, 1
003ac0  0b95a710  add.s r10, r15, r10
003ac4  0b151510  add.s r10, r10, r1
003ac8  17069501  and r12, r10, r25
003acc  6b558fff  load.d r[11:12], -8(r30)
003ad0  0b112210  add.s r2, r4, r2
003ad4  7360c100  stores.w r12, 0(r2)
003ad8  1325a304  setlt.ul r10, r[7:8], r[11:12]
003adc  27130300  addli.d r[7:8], r[7:8], 1
003ae0  b72e05fe  beq r10, zero, -88
003ae4  0b258310  add.ul r[11:12], r[7:8], r[9:10]
003ae8  1b312500  slli r2, r10, 2
003aec  0b152d10  add.s r10, r26, r2
003af0  ef470500  loads.w r15, 0(r10)
003af4  1785c701  and r10, r15, r28
003af8  9385ad04  setlt.u r11, r27, r10
003afc  3bd00500  bneq r11, zero, 20
003b00  1f860700  addli r12, r15, 0
003b04  1385a104  setlt.u r10, r3, r10
003b08  3b1f05fe  bneq r10, zero, -60
003b0c  dbf5ffff  j -84
003b10  17965700  or r12, r15, r5
003b14  1385a104  setlt.u r10, r3, r10
003b18  bb5e05fe  bneq r10, zero, -76
003b1c  dbf3ffff  j -100
003b20  b3070028  zext_int2long r[16:17], zero
003b24  db040000  j 36
003b28  a7c70700  addli.d r[16:17], r[16:17], 4
003b2c  8b131211  add.s r7, r4, r17
003b30  13a1d700  seteq.d r2, r[16:17], r[14:15]
003b34  73e62301  stores.w r18, 12(r7)
003b38  73e46301  stores.w r22, 8(r7)
003b3c  73e26300  stores.w r6, 4(r7)
003b40  73e0c300  stores.w r12, 0(r7)
003b44  3b1d01fe  bneq r2, zero, -188
003b48  0ba38710  add.ul r[7:8], r[16:17], r[9:10]
003b4c  9b382300  slli r17, r6, 2
003b50  8b131d11  add.s r7, r26, r17
003b54  efc9c300  loads.w r19, 12(r7)
003b58  978ac901  and r21, r19, r28
003b5c  13815d05  setlt.u r2, r27, r21
003b60  3b300100  bneq r2, zero, 12
003b64  1f890900  addli r18, r19, 0
003b68  5b010000  j 8
003b6c  17995900  or r18, r19, r5
003b70  6fcc8300  loads.w r24, 8(r7)
003b74  1701cc01  and r2, r24, r28
003b78  13832d04  setlt.u r6, r27, r2
003b7c  3b300300  bneq r6, zero, 12
003b80  1f0b0c00  addli r22, r24, 0
003b84  5b010000  j 8
003b88  171b5c00  or r22, r24, r5
003b8c  efcb4300  loads.w r23, 4(r7)
003b90  178acb01  and r20, r23, r28
003b94  13834d05  setlt.u r6, r27, r20
003b98  3b300300  bneq r6, zero, 12
003b9c  1f830b00  addli r6, r23, 0
003ba0  5b010000  j 8
003ba4  17935b00  or r6, r23, r5
003ba8  efc30300  loads.w r7, 0(r7)
003bac  1785c301  and r10, r7, r28
003bb0  9385ad04  setlt.u r11, r27, r10
003bb4  3bd00500  bneq r11, zero, 20
003bb8  1f860300  addli r12, r7, 0
003bbc  1385a104  setlt.u r10, r3, r10
003bc0  37500500  beq r10, zero, 20
003bc4  db040000  j 36
003bc8  17965300  or r12, r7, r5
003bcc  1385a104  setlt.u r10, r3, r10
003bd0  3b600500  bneq r10, zero, 24
003bd4  1bc50301  srli r10, r7, 16
003bd8  1b051500  andi r10, r10, 1
003bdc  8b93a310  add.s r7, r7, r10
003be0  8b931310  add.s r7, r7, r1
003be4  17869301  and r12, r7, r25
003be8  93834105  setlt.u r7, r3, r20
003bec  bbb00300  bneq r7, zero, 44
003bf0  1bc30b01  srli r6, r23, 16
003bf4  1b031300  andi r6, r6, 1
003bf8  0b936b10  add.s r6, r23, r6
003bfc  0b131310  add.s r6, r6, r1
003c00  17039301  and r6, r6, r25
003c04  13812104  setlt.u r2, r3, r2
003c08  37600100  beq r2, zero, 24
003c0c  13815105  setlt.u r2, r3, r21
003c10  3b6c01fe  bneq r2, zero, -232
003c14  5b050000  j 40
003c18  13812104  setlt.u r2, r3, r2
003c1c  bb4f01fe  bneq r2, zero, -16
003c20  1b410c01  srli r2, r24, 16
003c24  1b011100  andi r2, r2, 1
003c28  0b112c10  add.s r2, r24, r2
003c2c  0b111110  add.s r2, r2, r1
003c30  170b9101  and r22, r2, r25
003c34  13815105  setlt.u r2, r3, r21
003c38  bb4b01fe  bneq r2, zero, -272
003c3c  1bc10901  srli r2, r19, 16
003c40  1b011100  andi r2, r2, 1
003c44  0b912910  add.s r2, r19, r2
003c48  0b111110  add.s r2, r2, r1
003c4c  17099101  and r18, r2, r25
003c50  5bdbffff  j -296
003c54  80340002  core_id r9
003c58  00200100  mfence { sm }
003c5c  1f71f001  addli r2, zero, 255
003c60  1f380000  addli r16, zero, 3
003c64  80220104  csr_set csr5, r2
003c68  00e00200  sync_core
003c6c  b7ba04e3  beq r9, r16, -14676
003c70  9f080001  addli r17, zero, 128
003c74  1f092000  addli r18, zero, 16
003c78  1f0b1000  addli r22, zero, 8
003c7c  1f7a0000  addli r20, zero, 7
003c80  9f6a0000  addli r21, zero, 6
003c84  9f671000  addli r15, zero, 14
003c88  9f2b0000  addli r23, zero, 2
003c8c  1f1c0000  addli r24, zero, 1
003c90  1f4d0000  addli r26, zero, 4
003c94  bbea04e2  bneq r9, zero, -14664
003c98  6341cffe  loadli.w r2,  -156(r30)
003c9c  6b538ff7  load.d r[7:8], -136(r30)
003ca0  1f560000  addli r12, zero, 5
003ca4  1f322000  addli r4, zero, 19
003ca8  6b598f01  load.d r[19:20], 24(r30)
003cac  1b317100  slli r2, r2, 7
003cb0  17334302  sll.d r[7:8], r[7:8], r4
003cb4  33140128  sext_int2long r[9:10], r2
003cb8  1f512000  addli r2, zero, 21
003cbc  0b236910  add.ul r[7:8], r[19:20], r[7:8]
003cc0  1f092000  addli r18, zero, 16
003cc4  7d100100  xwait r2, 0
003cc8  6b550ffa  load.d r[11:12], -96(r30)
003ccc  1d000600  lock zero, r12
003cd0  2b010600  lui r2, 96
003cd4  150c0c00  dma_cfg r24, r24, zero, 0
003cd8  1b110164  ori r2, r2, 1600
003cdc  0b35a440  min.sl r[11:12], r[9:10], r[11:12]
003ce0  27050501  addli.d r[11:12], r[11:12], 128
003ce4  0b358548  max.sl r[11:12], r[11:12], r[9:10]
003ce8  0b348518  sub.sl r[9:10], r[11:12], r[9:10]
003cec  6b550ff7  load.d r[11:12], -144(r30)
003cf0  15000c02  dma_cfg zero, r24, zero, 1
003cf4  0b34d440  min.sl r[9:10], r[9:10], r[14:15]
003cf8  0b23a310  add.ul r[7:8], r[7:8], r[11:12]
003cfc  1f058000  addli r10, zero, 64
003d00  95030004  dma_cfg r7, zero, zero, 2
003d04  6342efff  loadli.w r4,  -12(r30)
003d08  eb568ff6  load.d r[14:15], -152(r30)
003d0c  0b112210  add.s r2, r4, r2
003d10  1ff23600  addli r4, r13, 31
003d14  1503a106  dma_cfg r6, r2, r10, 3
003d18  1b415200  srli r2, r4, 5
003d1c  1bb21600  slli r4, r13, 1
003d20  1f030020  addli r6, zero, 4096
003d24  15852808  dma_cfg r10, r17, r2, 4
003d28  1b01e203  andi r2, r4, 62
003d2c  1f020004  addli r4, zero, 512
003d30  1503820a  dma_cfg r6, r4, r8, 5
003d34  80340002  core_id r9
003d38  15002010  dma_cfg zero, zero, r2, 8
003d3c  35000000  dma_run zero
003d40  1500800b  dma_cfg zero, zero, r24, 5
003d44  1f612000  addli r2, zero, 22
003d48  15000010  dma_cfg zero, zero, zero, 8
003d4c  1d100600  unlock r12
003d50  5bbff8ff  j -14856
003d54  7d000000  xsignal zero, 0
003d58  bbe00400  bneq r9, zero, 56
003d5c  9f200000  addli r1, zero, 2
003d60  7d100000  xwait zero, 0
003d64  7d100000  xwait zero, 0
003d68  7d100000  xwait zero, 0
003d6c  7d100000  xwait zero, 0
003d70  7d100000  xwait zero, 0
003d74  7d100000  xwait zero, 0
003d78  7d100000  xwait zero, 0
003d7c  7d100000  xwait zero, 0
003d80  1d800000  lock zero, r1
003d84  0d000020  ew_cfg zero, zero, zero, 16
003d88  1d900000  unlock r1
003d8c  7d400000  xsignal_mode_cfg zero
003d90  9f8eae01  addli sp, sp, 208
003d94  00a00300  mfence { lm, sm, gm }
003d98  00100000  exit
003d9c  00100000  exit
003da0  00100000  exit
003da4  00100000  exit
003da8  00100000  exit
003dac  00100000  exit
003db0  00100000  exit
003db4  00100000  exit
003db8  00100000  exit
003dbc  00100000  exit
003dc0  00100000  exit
003dc4  00100000  exit
003dc8  00100000  exit
003dcc  00100000  exit
003dd0  00100000  exit
003dd4  00100000  exit
003dd8  00100000  exit
003ddc  00100000  exit
003de0  00100000  exit
003de4  00100000  exit
003de8  00100000  exit
003dec  00100000  exit
003df0  00100000  exit
003df4  00100000  exit
003df8  00100000  exit
003dfc  00100000  exit
003e00  00100000  exit
003e04  00100000  exit
003e08  00100000  exit
003e0c  00100000  exit
003e10  00100000  exit
003e14  00100000  exit
003e18  00100000  exit
003e1c  00100000  exit
003e20  00100000  exit
003e24  00100000  exit
003e28  00100000  exit
003e2c  00100000  exit
003e30  00100000  exit
003e34  00100000  exit
003e38  00100000  exit
003e3c  00100000  exit
003e40  00100000  exit
003e44  00100000  exit
003e48  00100000  exit
003e4c  00100000  exit
003e50  00100000  exit
003e54  00100000  exit
003e58  00100000  exit
003e5c  00100000  exit
003e60  00100000  exit
003e64  00100000  exit
003e68  00100000  exit
003e6c  00100000  exit
003e70  00100000  exit
003e74  00100000  exit
003e78  00100000  exit
003e7c  00100000  exit
003e80  00100000  exit
003e84  00100000  exit
003e88  00100000  exit
003e8c  00100000  exit
003e90  00100000  exit
003e94  00100000  exit
003e98  00100000  exit
003e9c  00100000  exit
003ea0  00100000  exit
003ea4  00100000  exit
003ea8  00100000  exit
003eac  00100000  exit
003eb0  00100000  exit
003eb4  00100000  exit
003eb8  00100000  exit
003ebc  00100000  exit
003ec0  00100000  exit
003ec4  00100000  exit
003ec8  00100000  exit
003ecc  00100000  exit
003ed0  00100000  exit
003ed4  00100000  exit
003ed8  00100000  exit
003edc  00100000  exit
003ee0  00100000  exit
003ee4  00100000  exit
003ee8  00100000  exit
003eec  00100000  exit
003ef0  00100000  exit
003ef4  00100000  exit
003ef8  00100000  exit
003efc  00100000  exit
003f00  00100000  exit
003f04  00100000  exit
003f08  00100000  exit
003f0c  00100000  exit
003f10  00100000  exit
003f14  00100000  exit
003f18  00100000  exit
003f1c  00100000  exit
003f20  00100000  exit
003f24  00100000  exit
003f28  00100000  exit
003f2c  00100000  exit
003f30  00100000  exit
003f34  00100000  exit
003f38  00100000  exit
003f3c  00100000  exit
003f40  00100000  exit
003f44  00100000  exit
003f48  00100000  exit
003f4c  00100000  exit
003f50  00100000  exit
003f54  00100000  exit
003f58  00100000  exit
003f5c  00100000  exit
003f60  00100000  exit
003f64  00100000  exit
003f68  00100000  exit
003f6c  00100000  exit
003f70  00100000  exit
003f74  00100000  exit
003f78  00100000  exit
003f7c  00100000  exit
003f80  00100000  exit
003f84  00100000  exit
003f88  00100000  exit
003f8c  00100000  exit
003f90  00100000  exit
003f94  00100000  exit
003f98  00100000  exit
003f9c  00100000  exit
003fa0  00100000  exit
003fa4  00100000  exit
003fa8  00100000  exit
003fac  00100000  exit
003fb0  00100000  exit
003fb4  00100000  exit
003fb8  00100000  exit
003fbc  00100000  exit
003fc0  00100000  exit
003fc4  00100000  exit
003fc8  00100000  exit
003fcc  00100000  exit
003fd0  00100000  exit
003fd4  00100000  exit
003fd8  00100000  exit
