; SHA-256 6ab7811a1667d82dec8fa147b4d8622e644469462bdc9c24fd64938bce925cb4
; P800 SDNN · XTDK LLVM 19 · 766 / 766 words decoded
; bound names: triton_tem_fused_mm_0
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
0000b4  9f8e5eff  addli sp, sp, -88
0000b8  9f100000  addli r1, zero, 1
0000bc  00310002  core_id r2
0000c0  1f8f3e00  addli r30, sp, 24
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600100  beq r2, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  db110000  j 140
0000e0  9f210000  addli r3, zero, 2
0000e4  fdd00000  uni_sram_cfg r1, r1
0000e8  2bf2ffff  lui r4, 1048575
0000ec  1d800100  lock zero, r3
0000f0  8d000020  ew_cfg r1, zero, zero, 16
0000f4  9b10f2ff  ori r1, r4, 4095
0000f8  1d900100  unlock r3
0000fc  9f510000  addli r3, zero, 5
000100  80a10004  csr_set csr3, r1
000104  9f301000  addli r1, zero, 11
000108  00d00100  sync_group
00010c  7d800000  xsignal r1, 0
000110  7d800000  xsignal r1, 0
000114  7d800000  xsignal r1, 0
000118  7d800000  xsignal r1, 0
00011c  9f300000  addli r1, zero, 3
000120  7d800100  xsignal r3, 0
000124  7d800100  xsignal r3, 0
000128  7d800100  xsignal r3, 0
00012c  7d800100  xsignal r3, 0
000130  9f111000  addli r3, zero, 9
000134  7d800000  xsignal r1, 0
000138  7d800000  xsignal r1, 0
00013c  7d800000  xsignal r1, 0
000140  7d800000  xsignal r1, 0
000144  9f700000  addli r1, zero, 7
000148  7d800100  xsignal r3, 0
00014c  7d800100  xsignal r3, 0
000150  7d800100  xsignal r3, 0
000154  7d800100  xsignal r3, 0
000158  7d800000  xsignal r1, 0
00015c  7d800000  xsignal r1, 0
000160  7d800000  xsignal r1, 0
000164  7d800000  xsignal r1, 0
000168  e3003f00  loadli.w r1,  24(r30)
00016c  e3413f00  loadli.w r3,  28(r30)
000170  80d20002  load_param_i r5, 1
000174  63024f00  loadli.w r4,  32(r30)
000178  8b901120  mul.s r1, r3, r1
00017c  9f810200  addli r3, r5, 0
000180  8b914050  fmac.s r3, r1, r4
000184  0b924020  mul.s r4, r1, r4
000188  9ff1f1ff  addli r3, r3, -1
00018c  8b915130  div.s r3, r3, r5
000190  80520002  load_param_i r5, 0
000194  8b905120  mul.s r1, r3, r5
000198  8b915150  fmac.s r3, r3, r5
00019c  8b914140  min.s r3, r3, r4
0001a0  4bcf1102  ble.s r3, r1, 2000
0001a4  b3910128  sext_int2long r[4:5], r3
0001a8  33930028  sext_int2long r[7:8], r1
0001ac  1f440000  addli r8, zero, 4
0001b0  9f040001  addli r9, zero, 128
0001b4  1f7c0000  addli r24, zero, 7
0001b8  9f2a0000  addli r21, zero, 2
0001bc  1f5b0000  addli r22, zero, 5
0001c0  9f0b8000  addli r23, zero, 64
0001c4  9f380000  addli r17, zero, 3
0001c8  9f1c0000  addli r25, zero, 1
0001cc  1f0d0000  addli r26, zero, 0
0001d0  733c3ffe  store.d r[4:5], -8(r30)
0001d4  1f72f00f  addli r4, zero, 2047
0001d8  ab01feff  lui r3, 1048544
0001dc  73383ffe  store.d r[4:5], -16(r30)
0001e0  b3010028  zext_int2long r[4:5], zero
0001e4  73343ffe  store.d r[4:5], -24(r30)
0001e8  db2d0000  j 364
0001ec  2b020200  lui r4, 32
0001f0  1d000400  lock zero, r8
0001f4  9f050002  addli r11, zero, 256
0001f8  9f380000  addli r17, zero, 3
0001fc  1f7c0000  addli r24, zero, 7
000200  958c0c00  dma_cfg r25, r25, zero, 0
000204  1b120204  ori r4, r4, 64
000208  15000e04  dma_cfg zero, r28, zero, 2
00020c  0b124910  add.s r4, r18, r4
000210  15827d07  dma_cfg r4, r27, r23, 3
000214  1f021000  addli r4, zero, 8
000218  95845b09  dma_cfg r9, r23, r21, 4
00021c  9585340a  dma_cfg r11, r9, r3, 5
000220  15000010  dma_cfg zero, zero, zero, 8
000224  35000000  dma_run zero
000228  1500900b  dma_cfg zero, zero, r25, 5
00022c  15000010  dma_cfg zero, zero, zero, 8
000230  1d100400  unlock r8
000234  1d000b00  lock zero, r22
000238  15000014  dma_cfg zero, zero, zero, 10
00023c  15009015  dma_cfg zero, zero, r25, 10
000240  15005015  dma_cfg zero, zero, r21, 10
000244  1500c014  dma_cfg zero, zero, r12, 10
000248  15008014  dma_cfg zero, zero, r8, 10
00024c  15006015  dma_cfg zero, zero, r22, 10
000250  1500d014  dma_cfg zero, zero, r13, 10
000254  15005014  dma_cfg zero, zero, r5, 10
000258  15004014  dma_cfg zero, zero, r4, 10
00025c  1f121000  addli r4, zero, 9
000260  15004014  dma_cfg zero, zero, r4, 10
000264  1f221000  addli r4, zero, 10
000268  15004014  dma_cfg zero, zero, r4, 10
00026c  1f321000  addli r4, zero, 11
000270  15004014  dma_cfg zero, zero, r4, 10
000274  1f421000  addli r4, zero, 12
000278  15004014  dma_cfg zero, zero, r4, 10
00027c  1f621000  addli r4, zero, 14
000280  1500a014  dma_cfg zero, zero, r10, 10
000284  15004014  dma_cfg zero, zero, r4, 10
000288  1f721000  addli r4, zero, 15
00028c  15004014  dma_cfg zero, zero, r4, 10
000290  1f022000  addli r4, zero, 16
000294  15004014  dma_cfg zero, zero, r4, 10
000298  1f122000  addli r4, zero, 17
00029c  15004014  dma_cfg zero, zero, r4, 10
0002a0  1f222000  addli r4, zero, 18
0002a4  15004014  dma_cfg zero, zero, r4, 10
0002a8  1f322000  addli r4, zero, 19
0002ac  15004014  dma_cfg zero, zero, r4, 10
0002b0  1f422000  addli r4, zero, 20
0002b4  15004014  dma_cfg zero, zero, r4, 10
0002b8  1f522000  addli r4, zero, 21
0002bc  15004014  dma_cfg zero, zero, r4, 10
0002c0  1f622000  addli r4, zero, 22
0002c4  15004014  dma_cfg zero, zero, r4, 10
0002c8  1f722000  addli r4, zero, 23
0002cc  15004014  dma_cfg zero, zero, r4, 10
0002d0  1f023000  addli r4, zero, 24
0002d4  15004014  dma_cfg zero, zero, r4, 10
0002d8  1f123000  addli r4, zero, 25
0002dc  15004014  dma_cfg zero, zero, r4, 10
0002e0  1f223000  addli r4, zero, 26
0002e4  15004014  dma_cfg zero, zero, r4, 10
0002e8  1f323000  addli r4, zero, 27
0002ec  15004014  dma_cfg zero, zero, r4, 10
0002f0  1f423000  addli r4, zero, 28
0002f4  15004014  dma_cfg zero, zero, r4, 10
0002f8  1f523000  addli r4, zero, 29
0002fc  15004014  dma_cfg zero, zero, r4, 10
000300  1f623000  addli r4, zero, 30
000304  15004014  dma_cfg zero, zero, r4, 10
000308  1f723000  addli r4, zero, 31
00030c  15004014  dma_cfg zero, zero, r4, 10
000310  958c0c00  dma_cfg r25, r25, zero, 0
000314  950c0002  dma_cfg r25, zero, zero, 1
000318  15000004  dma_cfg zero, zero, zero, 2
00031c  95007007  dma_cfg r1, zero, r23, 3
000320  95045009  dma_cfg r9, zero, r21, 4
000324  9505300a  dma_cfg r11, zero, r3, 5
000328  15000010  dma_cfg zero, zero, zero, 8
00032c  35000000  dma_run zero
000330  1500900b  dma_cfg zero, zero, r25, 5
000334  15000010  dma_cfg zero, zero, zero, 8
000338  1d100b00  unlock r22
00033c  7d800a00  xsignal r21, 0
000340  eb518fff  load.d r[4:5], -8(r30)
000344  27130300  addli.d r[7:8], r[7:8], 1
000348  1f1d0d00  addli r26, r26, 1
00034c  93303304  setlt.sl r1, r[7:8], r[4:5]
000350  b7880002  beq r1, zero, 1568
000354  e3004f00  loadli.w r1,  32(r30)
000358  e3413f00  loadli.w r3,  28(r30)
00035c  1f021000  addli r4, zero, 8
000360  8b101330  div.s r1, r6, r1
000364  0b953030  div.s r10, r1, r3
000368  9f014000  addli r3, zero, 32
00036c  0b169530  div.s r12, r10, r9
000370  9b303600  slli r1, r12, 3
000374  8b911118  sub.s r3, r3, r1
000378  8b994140  min.s r19, r3, r4
00037c  8b113539  mod.s r3, r10, r19
000380  0b9a1110  add.s r20, r3, r1
000384  9f703000  addli r1, zero, 31
000388  9f411000  addli r3, zero, 12
00038c  93804005  setlt.u r1, r1, r20
000390  b30d0a28  zext_int2long r[28:29], r20
000394  97b63d02  sll.d r[14:15], r[28:29], r3
000398  3bb00000  bneq r1, zero, 12
00039c  eb518ffe  load.d r[4:5], -24(r30)
0003a0  db010000  j 12
0003a4  eb510fff  load.d r[4:5], -16(r30)
0003a8  97813602  and.d r[4:5], r[14:15], r[4:5]
0003ac  8b128d38  mod.s r5, r26, r8
0003b0  ab000200  lui r1, 32
0003b4  1bb9e200  slli r18, r5, 14
0003b8  8b101910  add.s r1, r18, r1
0003bc  b7055101  beq r2, r21, 352
0003c0  9f07800f  addli r15, zero, 1984
0003c4  9f650000  addli r11, zero, 6
0003c8  b3870728  zext_int2long r[16:17], r15
0003cc  3b06b100  bneq r2, r11, 384
0003d0  8bb13618  sub.sl r[4:5], r[14:15], r[4:5]
0003d4  1f551000  addli r10, zero, 13
0003d8  9f720000  addli r5, zero, 7
0003dc  97d1b102  sra.d r[4:5], r[4:5], r11
0003e0  0bb6f140  min.sl r[13:14], r[4:5], r[16:17]
0003e4  17b7ad02  sll.d r[15:16], r[28:29], r10
0003e8  8b313618  sub.sl r[4:5], r[13:14], r[4:5]
0003ec  eb550f00  load.d r[12:13], 0(r30)
0003f0  9f660000  addli r13, zero, 6
0003f4  9f818100  addli r3, r3, 64
0003f8  8bade510  add.ul r[28:29], r[12:13], r[15:16]
0003fc  1f360000  addli r12, zero, 3
000400  7d100600  xwait r12, 0
000404  bf27a6ff  blt.s r12, r26, -536
000408  1d000b00  lock zero, r22
00040c  1f021000  addli r4, zero, 8
000410  15000014  dma_cfg zero, zero, zero, 10
000414  15009015  dma_cfg zero, zero, r25, 10
000418  15005015  dma_cfg zero, zero, r21, 10
00041c  1500c014  dma_cfg zero, zero, r12, 10
000420  15008014  dma_cfg zero, zero, r8, 10
000424  15006015  dma_cfg zero, zero, r22, 10
000428  1500d014  dma_cfg zero, zero, r13, 10
00042c  15005014  dma_cfg zero, zero, r5, 10
000430  15004014  dma_cfg zero, zero, r4, 10
000434  1f121000  addli r4, zero, 9
000438  15004014  dma_cfg zero, zero, r4, 10
00043c  1f221000  addli r4, zero, 10
000440  15004014  dma_cfg zero, zero, r4, 10
000444  1f321000  addli r4, zero, 11
000448  15004014  dma_cfg zero, zero, r4, 10
00044c  1f421000  addli r4, zero, 12
000450  15004014  dma_cfg zero, zero, r4, 10
000454  1f621000  addli r4, zero, 14
000458  1500a014  dma_cfg zero, zero, r10, 10
00045c  15004014  dma_cfg zero, zero, r4, 10
000460  1f721000  addli r4, zero, 15
000464  15004014  dma_cfg zero, zero, r4, 10
000468  1f022000  addli r4, zero, 16
00046c  15004014  dma_cfg zero, zero, r4, 10
000470  1f122000  addli r4, zero, 17
000474  15004014  dma_cfg zero, zero, r4, 10
000478  1f222000  addli r4, zero, 18
00047c  15004014  dma_cfg zero, zero, r4, 10
000480  1f322000  addli r4, zero, 19
000484  15004014  dma_cfg zero, zero, r4, 10
000488  1f422000  addli r4, zero, 20
00048c  15004014  dma_cfg zero, zero, r4, 10
000490  1f522000  addli r4, zero, 21
000494  15004014  dma_cfg zero, zero, r4, 10
000498  1f622000  addli r4, zero, 22
00049c  15004014  dma_cfg zero, zero, r4, 10
0004a0  1f722000  addli r4, zero, 23
0004a4  15004014  dma_cfg zero, zero, r4, 10
0004a8  1f023000  addli r4, zero, 24
0004ac  15004014  dma_cfg zero, zero, r4, 10
0004b0  1f123000  addli r4, zero, 25
0004b4  15004014  dma_cfg zero, zero, r4, 10
0004b8  1f223000  addli r4, zero, 26
0004bc  15004014  dma_cfg zero, zero, r4, 10
0004c0  1f323000  addli r4, zero, 27
0004c4  15004014  dma_cfg zero, zero, r4, 10
0004c8  1f423000  addli r4, zero, 28
0004cc  15004014  dma_cfg zero, zero, r4, 10
0004d0  1f523000  addli r4, zero, 29
0004d4  15004014  dma_cfg zero, zero, r4, 10
0004d8  1f623000  addli r4, zero, 30
0004dc  15004014  dma_cfg zero, zero, r4, 10
0004e0  1f723000  addli r4, zero, 31
0004e4  15004014  dma_cfg zero, zero, r4, 10
0004e8  1f020002  addli r4, zero, 256
0004ec  958c0c00  dma_cfg r25, r25, zero, 0
0004f0  950c0002  dma_cfg r25, zero, zero, 1
0004f4  15000004  dma_cfg zero, zero, zero, 2
0004f8  95007007  dma_cfg r1, zero, r23, 3
0004fc  95045009  dma_cfg r9, zero, r21, 4
000500  1502700b  dma_cfg r4, zero, r23, 5
000504  15000010  dma_cfg zero, zero, zero, 8
000508  35000000  dma_run zero
00050c  1500900b  dma_cfg zero, zero, r25, 5
000510  15000010  dma_cfg zero, zero, zero, 8
000514  1d100b00  unlock r22
000518  db9affff  j -812
00051c  7d900a00  xwait r21, 0
000520  7d100b00  xwait r22, 0
000524  1d000000  lock zero, zero
000528  810a0000  ds_cfg r21, zero, 0
00052c  810b0002  ds_cfg r23, zero, 1
000530  810b001c  ds_cfg r23, zero, 14
000534  810b001a  ds_cfg r23, zero, 13
000538  21997003  shuffle_batch r18, r1, r23, 1
00053c  1d100000  unlock zero
000540  7d800800  xsignal r17, 0
000544  7d000400  xsignal r8, 0
000548  5bbfffff  j -520
00054c  9bb0f200  slli r1, r5, 15
000550  ab010300  lui r3, 48
000554  1f620000  addli r4, zero, 6
000558  8b913010  add.s r3, r1, r3
00055c  377c8101  beq r2, r24, 796
000560  b74a8100  beq r2, r8, 688
000564  1b327600  slli r4, r12, 7
000568  9f720000  addli r5, zero, 7
00056c  0b124518  sub.s r4, r10, r4
000570  0b123231  div.s r4, r4, r19
000574  33060228  zext_int2long r[13:14], r4
000578  17365602  sll.d r[13:14], r[13:14], r5
00057c  17399603  sll.d r[19:20], r[13:14], r25
000580  bb3c9101  bneq r2, r25, 812
000584  6b558f00  load.d r[11:12], 8(r30)
000588  7d900200  xwait r5, 0
00058c  9f720000  addli r5, zero, 7
000590  1f360000  addli r12, zero, 3
000594  9f660000  addli r13, zero, 6
000598  8b2d2511  add.ul r[28:29], r[11:12], r[19:20]
00059c  1f551000  addli r10, zero, 13
0005a0  3f54a601  blt.s r12, r26, 276
0005a4  1d000b00  lock zero, r22
0005a8  1f021000  addli r4, zero, 8
0005ac  15000014  dma_cfg zero, zero, zero, 10
0005b0  15009015  dma_cfg zero, zero, r25, 10
0005b4  15005015  dma_cfg zero, zero, r21, 10
0005b8  1500c014  dma_cfg zero, zero, r12, 10
0005bc  15008014  dma_cfg zero, zero, r8, 10
0005c0  15006015  dma_cfg zero, zero, r22, 10
0005c4  1500d014  dma_cfg zero, zero, r13, 10
0005c8  15005014  dma_cfg zero, zero, r5, 10
0005cc  15004014  dma_cfg zero, zero, r4, 10
0005d0  1f121000  addli r4, zero, 9
0005d4  15004014  dma_cfg zero, zero, r4, 10
0005d8  1f221000  addli r4, zero, 10
0005dc  15004014  dma_cfg zero, zero, r4, 10
0005e0  1f321000  addli r4, zero, 11
0005e4  15004014  dma_cfg zero, zero, r4, 10
0005e8  1f421000  addli r4, zero, 12
0005ec  15004014  dma_cfg zero, zero, r4, 10
0005f0  1f621000  addli r4, zero, 14
0005f4  1500a014  dma_cfg zero, zero, r10, 10
0005f8  15004014  dma_cfg zero, zero, r4, 10
0005fc  1f721000  addli r4, zero, 15
000600  15004014  dma_cfg zero, zero, r4, 10
000604  1f022000  addli r4, zero, 16
000608  15004014  dma_cfg zero, zero, r4, 10
00060c  1f122000  addli r4, zero, 17
000610  15004014  dma_cfg zero, zero, r4, 10
000614  1f222000  addli r4, zero, 18
000618  15004014  dma_cfg zero, zero, r4, 10
00061c  1f322000  addli r4, zero, 19
000620  15004014  dma_cfg zero, zero, r4, 10
000624  1f422000  addli r4, zero, 20
000628  15004014  dma_cfg zero, zero, r4, 10
00062c  1f522000  addli r4, zero, 21
000630  15004014  dma_cfg zero, zero, r4, 10
000634  1f622000  addli r4, zero, 22
000638  15004014  dma_cfg zero, zero, r4, 10
00063c  1f722000  addli r4, zero, 23
000640  15004014  dma_cfg zero, zero, r4, 10
000644  1f023000  addli r4, zero, 24
000648  15004014  dma_cfg zero, zero, r4, 10
00064c  1f123000  addli r4, zero, 25
000650  15004014  dma_cfg zero, zero, r4, 10
000654  1f223000  addli r4, zero, 26
000658  15004014  dma_cfg zero, zero, r4, 10
00065c  1f323000  addli r4, zero, 27
000660  15004014  dma_cfg zero, zero, r4, 10
000664  1f423000  addli r4, zero, 28
000668  15004014  dma_cfg zero, zero, r4, 10
00066c  1f523000  addli r4, zero, 29
000670  15004014  dma_cfg zero, zero, r4, 10
000674  1f623000  addli r4, zero, 30
000678  15004014  dma_cfg zero, zero, r4, 10
00067c  1f723000  addli r4, zero, 31
000680  15004014  dma_cfg zero, zero, r4, 10
000684  1f020004  addli r4, zero, 512
000688  958c0c00  dma_cfg r25, r25, zero, 0
00068c  950c0002  dma_cfg r25, zero, zero, 1
000690  15000004  dma_cfg zero, zero, zero, 2
000694  95017007  dma_cfg r3, zero, r23, 3
000698  95048008  dma_cfg r9, zero, r8, 4
00069c  1502700b  dma_cfg r4, zero, r23, 5
0006a0  15000010  dma_cfg zero, zero, zero, 8
0006a4  35000000  dma_run zero
0006a8  1500900b  dma_cfg zero, zero, r25, 5
0006ac  15000010  dma_cfg zero, zero, zero, 8
0006b0  1d100b00  unlock r22
0006b4  2b020300  lui r4, 48
0006b8  1d000400  lock zero, r8
0006bc  9f380000  addli r17, zero, 3
0006c0  1f7c0000  addli r24, zero, 7
0006c4  958c0c00  dma_cfg r25, r25, zero, 0
0006c8  1b120204  ori r4, r4, 64
0006cc  15000e04  dma_cfg zero, r28, zero, 2
0006d0  8b904010  add.s r1, r1, r4
0006d4  1f020004  addli r4, zero, 512
0006d8  95807d07  dma_cfg r1, r27, r23, 3
0006dc  9f000020  addli r1, zero, 4096
0006e0  95848b08  dma_cfg r9, r23, r8, 4
0006e4  1582700b  dma_cfg r4, r1, r23, 5
0006e8  9f001000  addli r1, zero, 8
0006ec  15000010  dma_cfg zero, zero, zero, 8
0006f0  35000000  dma_run zero
0006f4  1500900b  dma_cfg zero, zero, r25, 5
0006f8  15000010  dma_cfg zero, zero, zero, 8
0006fc  1d100400  unlock r8
000700  1d000b00  lock zero, r22
000704  15000014  dma_cfg zero, zero, zero, 10
000708  15009015  dma_cfg zero, zero, r25, 10
00070c  15005015  dma_cfg zero, zero, r21, 10
000710  1500c014  dma_cfg zero, zero, r12, 10
000714  15008014  dma_cfg zero, zero, r8, 10
000718  15006015  dma_cfg zero, zero, r22, 10
00071c  1500d014  dma_cfg zero, zero, r13, 10
000720  15005014  dma_cfg zero, zero, r5, 10
000724  15001014  dma_cfg zero, zero, r1, 10
000728  9f101000  addli r1, zero, 9
00072c  15001014  dma_cfg zero, zero, r1, 10
000730  9f201000  addli r1, zero, 10
000734  15001014  dma_cfg zero, zero, r1, 10
000738  9f301000  addli r1, zero, 11
00073c  15001014  dma_cfg zero, zero, r1, 10
000740  9f401000  addli r1, zero, 12
000744  15001014  dma_cfg zero, zero, r1, 10
000748  9f601000  addli r1, zero, 14
00074c  1500a014  dma_cfg zero, zero, r10, 10
000750  15001014  dma_cfg zero, zero, r1, 10
000754  9f701000  addli r1, zero, 15
000758  15001014  dma_cfg zero, zero, r1, 10
00075c  9f002000  addli r1, zero, 16
000760  15001014  dma_cfg zero, zero, r1, 10
000764  9f102000  addli r1, zero, 17
000768  15001014  dma_cfg zero, zero, r1, 10
00076c  9f202000  addli r1, zero, 18
000770  15001014  dma_cfg zero, zero, r1, 10
000774  9f302000  addli r1, zero, 19
000778  15001014  dma_cfg zero, zero, r1, 10
00077c  9f402000  addli r1, zero, 20
000780  15001014  dma_cfg zero, zero, r1, 10
000784  9f502000  addli r1, zero, 21
000788  15001014  dma_cfg zero, zero, r1, 10
00078c  9f602000  addli r1, zero, 22
000790  15001014  dma_cfg zero, zero, r1, 10
000794  9f702000  addli r1, zero, 23
000798  15001014  dma_cfg zero, zero, r1, 10
00079c  9f003000  addli r1, zero, 24
0007a0  15001014  dma_cfg zero, zero, r1, 10
0007a4  9f103000  addli r1, zero, 25
0007a8  15001014  dma_cfg zero, zero, r1, 10
0007ac  9f203000  addli r1, zero, 26
0007b0  15001014  dma_cfg zero, zero, r1, 10
0007b4  9f303000  addli r1, zero, 27
0007b8  15001014  dma_cfg zero, zero, r1, 10
0007bc  9f403000  addli r1, zero, 28
0007c0  15001014  dma_cfg zero, zero, r1, 10
0007c4  9f503000  addli r1, zero, 29
0007c8  15001014  dma_cfg zero, zero, r1, 10
0007cc  9f603000  addli r1, zero, 30
0007d0  15001014  dma_cfg zero, zero, r1, 10
0007d4  9f703000  addli r1, zero, 31
0007d8  15001014  dma_cfg zero, zero, r1, 10
0007dc  958c0c00  dma_cfg r25, r25, zero, 0
0007e0  950c0002  dma_cfg r25, zero, zero, 1
0007e4  15000004  dma_cfg zero, zero, zero, 2
0007e8  95017007  dma_cfg r3, zero, r23, 3
0007ec  95048008  dma_cfg r9, zero, r8, 4
0007f0  1502700b  dma_cfg r4, zero, r23, 5
0007f4  15000010  dma_cfg zero, zero, zero, 8
0007f8  35000000  dma_run zero
0007fc  1500900b  dma_cfg zero, zero, r25, 5
000800  15000010  dma_cfg zero, zero, zero, 8
000804  1d100b00  unlock r22
000808  7d800600  xsignal r13, 0
00080c  db66ffff  j -1228
000810  9f011000  addli r3, zero, 8
000814  7d100400  xwait r8, 0
000818  1f060000  addli r12, zero, 0
00081c  1f150000  addli r10, zero, 1
000820  1f321000  addli r4, zero, 11
000824  7d900100  xwait r3, 0
000828  9f110000  addli r3, zero, 1
00082c  7d100200  xwait r4, 0
000830  1b32e600  slli r4, r12, 14
000834  9b328600  slli r5, r12, 8
000838  1d800100  lock zero, r3
00083c  1f160000  addli r12, zero, 1
000840  898b7b01  mm_cfg r23, r23, r23, 0
000844  17121200  or r4, r4, r1
000848  97921200  or r5, r5, r1
00084c  09043404  mm_cfg r8, r8, r3, 2
000850  a9024910  mm r5, r18, r4, 8
000854  1b021500  andi r4, r10, 1
000858  1f050000  addli r10, zero, 0
00085c  1d900100  unlock r3
000860  3b4f02fe  bneq r4, zero, -48
000864  9f101000  addli r1, zero, 9
000868  7d000b00  xsignal r22, 0
00086c  7d800000  xsignal r1, 0
000870  9f201000  addli r1, zero, 10
000874  db1e0000  j 244
000878  7d100200  xwait r4, 0
00087c  1f121000  addli r4, zero, 9
000880  7d100200  xwait r4, 0
000884  1d000000  lock zero, zero
000888  810a0000  ds_cfg r21, zero, 0
00088c  81040002  ds_cfg r9, zero, 1
000890  810b001c  ds_cfg r23, zero, 14
000894  8104001a  ds_cfg r9, zero, 13
000898  c1807105  shuffle_coa r1, r3, r23, 2
00089c  9f001000  addli r1, zero, 8
0008a0  1d100000  unlock zero
0008a4  7d000c00  xsignal r24, 0
0008a8  5b180000  j 192
0008ac  1f7c0000  addli r24, zero, 7
0008b0  3b4a01fc  bneq r2, zero, -1392
0008b4  9b317200  slli r3, r4, 7
0008b8  1f02000f  addli r4, zero, 1920
0008bc  9b900004  ori r1, r1, 64
0008c0  33020228  zext_int2long r[5:6], r4
0008c4  33860128  zext_int2long r[13:14], r3
0008c8  8b214640  min.ul r[4:5], r[13:14], r[5:6]
0008cc  9b326a00  slli r5, r20, 6
0008d0  a7810101  addli.d r[4:5], r[4:5], 128
0008d4  33950228  sext_int2long r[11:12], r5
0008d8  9f222000  addli r5, zero, 18
0008dc  8ba1c148  max.ul r[4:5], r[4:5], r[13:14]
0008e0  0b37f540  min.sl r[15:16], r[11:12], r[16:17]
0008e4  8bb1c118  sub.sl r[4:5], r[4:5], r[13:14]
0008e8  33860428  zext_int2long r[13:14], r9
0008ec  27078700  addli.d r[15:16], r[15:16], 64
0008f0  8ba1c140  min.ul r[4:5], r[4:5], r[13:14]
0008f4  0b36a748  max.sl r[13:14], r[15:16], r[11:12]
0008f8  17b75d02  sll.d r[15:16], r[28:29], r5
0008fc  9f221000  addli r5, zero, 10
000900  0b35a618  sub.sl r[11:12], r[13:14], r[11:12]
000904  6b560f01  load.d r[13:14], 16(r30)
000908  7d900200  xwait r5, 0
00090c  1d000b00  lock zero, r22
000910  958c0c00  dma_cfg r25, r25, zero, 0
000914  15800c02  dma_cfg zero, r25, zero, 1
000918  0b26e610  add.ul r[13:14], r[13:14], r[15:16]
00091c  33870b28  zext_int2long r[15:16], r23
000920  0b262611  add.ul r[13:14], r[13:14], r[19:20]
000924  0b35e540  min.sl r[11:12], r[11:12], r[15:16]
000928  95060004  dma_cfg r13, zero, zero, 2
00092c  15867007  dma_cfg r12, r1, r23, 3
000930  9ff03100  addli r1, r3, 31
000934  9bb11100  slli r3, r3, 1
000938  1f020020  addli r4, zero, 4096
00093c  9bc05000  srli r1, r1, 5
000940  958b1408  dma_cfg r23, r9, r1, 4
000944  9b80e103  andi r1, r3, 62
000948  9f010004  addli r3, zero, 512
00094c  1582a10a  dma_cfg r4, r3, r10, 5
000950  15001010  dma_cfg zero, zero, r1, 8
000954  35000000  dma_run zero
000958  1500900b  dma_cfg zero, zero, r25, 5
00095c  9f301000  addli r1, zero, 11
000960  15000010  dma_cfg zero, zero, zero, 8
000964  1d100b00  unlock r22
000968  7d800000  xsignal r1, 0
00096c  db3affff  j -1580
000970  7d000000  xsignal zero, 0
000974  bb600100  bneq r2, zero, 56
000978  9f200000  addli r1, zero, 2
00097c  7d100000  xwait zero, 0
000980  7d100000  xwait zero, 0
000984  7d100000  xwait zero, 0
000988  7d100000  xwait zero, 0
00098c  7d100000  xwait zero, 0
000990  7d100000  xwait zero, 0
000994  7d100000  xwait zero, 0
000998  7d100000  xwait zero, 0
00099c  1d800000  lock zero, r1
0009a0  0d000020  ew_cfg zero, zero, zero, 16
0009a4  1d900000  unlock r1
0009a8  7d400000  xsignal_mode_cfg zero
0009ac  9f8e3e00  addli sp, sp, 24
0009b0  00a00300  mfence { lm, sm, gm }
0009b4  00100000  exit
0009b8  00100000  exit
0009bc  00100000  exit
0009c0  00100000  exit
0009c4  00100000  exit
0009c8  00100000  exit
0009cc  00100000  exit
0009d0  00100000  exit
0009d4  00100000  exit
0009d8  00100000  exit
0009dc  00100000  exit
0009e0  00100000  exit
0009e4  00100000  exit
0009e8  00100000  exit
0009ec  00100000  exit
0009f0  00100000  exit
0009f4  00100000  exit
0009f8  00100000  exit
0009fc  00100000  exit
000a00  00100000  exit
000a04  00100000  exit
000a08  00100000  exit
000a0c  00100000  exit
000a10  00100000  exit
000a14  00100000  exit
000a18  00100000  exit
000a1c  00100000  exit
000a20  00100000  exit
000a24  00100000  exit
000a28  00100000  exit
000a2c  00100000  exit
000a30  00100000  exit
000a34  00100000  exit
000a38  00100000  exit
000a3c  00100000  exit
000a40  00100000  exit
000a44  00100000  exit
000a48  00100000  exit
000a4c  00100000  exit
000a50  00100000  exit
000a54  00100000  exit
000a58  00100000  exit
000a5c  00100000  exit
000a60  00100000  exit
000a64  00100000  exit
000a68  00100000  exit
000a6c  00100000  exit
000a70  00100000  exit
000a74  00100000  exit
000a78  00100000  exit
000a7c  00100000  exit
000a80  00100000  exit
000a84  00100000  exit
000a88  00100000  exit
000a8c  00100000  exit
000a90  00100000  exit
000a94  00100000  exit
000a98  00100000  exit
000a9c  00100000  exit
000aa0  00100000  exit
000aa4  00100000  exit
000aa8  00100000  exit
000aac  00100000  exit
000ab0  00100000  exit
000ab4  00100000  exit
000ab8  00100000  exit
000abc  00100000  exit
000ac0  00100000  exit
000ac4  00100000  exit
000ac8  00100000  exit
000acc  00100000  exit
000ad0  00100000  exit
000ad4  00100000  exit
000ad8  00100000  exit
000adc  00100000  exit
000ae0  00100000  exit
000ae4  00100000  exit
000ae8  00100000  exit
000aec  00100000  exit
000af0  00100000  exit
000af4  00100000  exit
000af8  00100000  exit
000afc  00100000  exit
000b00  00100000  exit
000b04  00100000  exit
000b08  00100000  exit
000b0c  00100000  exit
000b10  00100000  exit
000b14  00100000  exit
000b18  00100000  exit
000b1c  00100000  exit
000b20  00100000  exit
000b24  00100000  exit
000b28  00100000  exit
000b2c  00100000  exit
000b30  00100000  exit
000b34  00100000  exit
000b38  00100000  exit
000b3c  00100000  exit
000b40  00100000  exit
000b44  00100000  exit
000b48  00100000  exit
000b4c  00100000  exit
000b50  00100000  exit
000b54  00100000  exit
000b58  00100000  exit
000b5c  00100000  exit
000b60  00100000  exit
000b64  00100000  exit
000b68  00100000  exit
000b6c  00100000  exit
000b70  00100000  exit
000b74  00100000  exit
000b78  00100000  exit
000b7c  00100000  exit
000b80  00100000  exit
000b84  00100000  exit
000b88  00100000  exit
000b8c  00100000  exit
000b90  00100000  exit
000b94  00100000  exit
000b98  00100000  exit
000b9c  00100000  exit
000ba0  00100000  exit
000ba4  00100000  exit
000ba8  00100000  exit
000bac  00100000  exit
000bb0  00100000  exit
000bb4  00100000  exit
000bb8  00100000  exit
000bbc  00100000  exit
000bc0  00100000  exit
000bc4  00100000  exit
000bc8  00100000  exit
000bcc  00100000  exit
000bd0  00100000  exit
000bd4  00100000  exit
000bd8  00100000  exit
000bdc  00100000  exit
000be0  00100000  exit
000be4  00100000  exit
000be8  00100000  exit
000bec  00100000  exit
000bf0  00100000  exit
000bf4  00100000  exit
