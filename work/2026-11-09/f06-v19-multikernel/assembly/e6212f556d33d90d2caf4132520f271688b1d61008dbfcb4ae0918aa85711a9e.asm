; SHA-256 e6212f556d33d90d2caf4132520f271688b1d61008dbfcb4ae0918aa85711a9e
; P800 SDNN · XTDK LLVM 19 · 888 / 888 words decoded
; bound names: triton_unk_fused_1
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
00005c  9f094000  addli r19, zero, 32
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
0000b4  9f8eeefe  addli sp, sp, -144
0000b8  9f100000  addli r1, zero, 1
0000bc  80340002  core_id r9
0000c0  1f8fae00  addli r30, sp, 80
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37e00400  beq r9, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5b080000  j 64
0000e0  1f210000  addli r2, zero, 2
0000e4  fdd00000  uni_sram_cfg r1, r1
0000e8  abf1ffff  lui r3, 1048575
0000ec  1d000100  lock zero, r2
0000f0  8d000020  ew_cfg r1, zero, zero, 16
0000f4  9b90f1ff  ori r1, r3, 4095
0000f8  1d100100  unlock r2
0000fc  1f011000  addli r2, zero, 8
000100  80a10004  csr_set csr3, r1
000104  9f400000  addli r1, zero, 4
000108  00d00100  sync_group
00010c  7d800000  xsignal r1, 0
000110  9f600000  addli r1, zero, 6
000114  7d800000  xsignal r1, 0
000118  7d000100  xsignal r2, 0
00011c  e3402f00  loadli.w r1,  20(r30)
000120  63013f00  loadli.w r2,  24(r30)
000124  00d20002  load_param_i r4, 1
000128  e3413f00  loadli.w r3,  28(r30)
00012c  8b101120  mul.s r1, r2, r1
000130  1f010200  addli r2, r4, 0
000134  0b913050  fmac.s r2, r1, r3
000138  8b913020  mul.s r3, r1, r3
00013c  1f71f1ff  addli r2, r2, -1
000140  0b114130  div.s r2, r2, r4
000144  00520002  load_param_i r4, 0
000148  8b104120  mul.s r1, r2, r4
00014c  0b114150  fmac.s r2, r2, r4
000150  0b113140  min.s r2, r2, r3
000154  4b181104  ble.s r2, r1, 2564
000158  b3960028  sext_int2long r[14:15], r1
00015c  9f000004  addli r1, zero, 512
000160  b3120128  sext_int2long r[6:7], r2
000164  2bf17f7f  lui r2, 522239
000168  9f010008  addli r3, zero, 1024
00016c  1f180000  addli r16, zero, 1
000170  9f470000  addli r15, zero, 4
000174  9f680000  addli r17, zero, 6
000178  1f590000  addli r18, zero, 5
00017c  9f290000  addli r19, zero, 2
000180  1f360000  addli r12, zero, 3
000184  1f0d2000  addli r26, zero, 16
000188  33850028  zext_int2long r[11:12], r1
00018c  ab700000  lui r1, 7
000190  b38d0128  zext_int2long r[28:29], r3
000194  b3010828  zext_int2long r[4:5], r16
000198  1b11f1ff  ori r2, r2, 4095
00019c  278a0200  addli.d r[21:22], r[6:7], 0
0001a0  73345ffc  store.d r[6:7], -56(r30)
0001a4  9b90f0ff  ori r1, r1, 4095
0001a8  73383ffa  store.d r[4:5], -80(r30)
0001ac  733caffe  store.d r[11:12], -8(r30)
0001b0  733cbffb  store.d r[28:29], -72(r30)
0001b4  674e1ffe  storeli.w r1, -28(r30)
0001b8  abf0ff7f  lui r1, 524287
0001bc  1b9b00f8  ori r22, r1, 3968
0001c0  674c6fff  storeli.w r22, -60(r30)
0001c4  5b0a0000  j 80
0001c8  9f470000  addli r15, zero, 4
0001cc  9f700000  addli r1, zero, 7
0001d0  00200100  mfence { sm }
0001d4  80340002  core_id r9
0001d8  1f180000  addli r16, zero, 1
0001dc  9f680000  addli r17, zero, 6
0001e0  1f590000  addli r18, zero, 5
0001e4  9f290000  addli r19, zero, 2
0001e8  1f360000  addli r12, zero, 3
0001ec  1f0d2000  addli r26, zero, 16
0001f0  7d800700  xsignal r15, 0
0001f4  7d800000  xsignal r1, 0
0001f8  6b5a8ffc  load.d r[21:22], -56(r30)
0001fc  eb560ffd  load.d r[14:15], -48(r30)
000200  6b558fff  load.d r[11:12], -8(r30)
000204  634b8fff  loadli.w r22,  -60(r30)
000208  a7960600  addli.d r[14:15], r[14:15], 1
00020c  93b04605  setlt.sl r1, r[14:15], r[21:22]
000210  37a50004  beq r1, zero, 2376
000214  e3403f00  loadli.w r1,  28(r30)
000218  e3013f00  loadli.w r3,  24(r30)
00021c  6b5c0f00  load.d r[25:26], 0(r30)
000220  8b901630  div.s r1, r13, r1
000224  8b903030  div.s r1, r1, r3
000228  b3910028  sext_int2long r[4:5], r1
00022c  9f201000  addli r1, zero, 10
000230  97b21102  sll.d r[6:7], r[4:5], r1
000234  0b235c10  add.ul r[7:8], r[25:26], r[6:7]
000238  3ffa9700  blt.s r15, r9, 668
00023c  37d50403  beq r9, r16, 1364
000240  bbd3c402  bneq r9, r12, 1268
000244  9f001000  addli r1, zero, 8
000248  7338dffc  store.d r[14:15], -48(r30)
00024c  7d100600  xwait r12, 0
000250  b30d0028  zext_int2long r[28:29], zero
000254  7d900000  xwait r1, 0
000258  3d000000  xfence
00025c  00a00300  mfence { lm, sm, gm }
000260  db0a0000  j 84
000264  9fc21c20  addli r5, r25, 4108
000268  6b548fff  load.d r[9:10], -8(r30)
00026c  a78d1d00  addli.d r[28:29], r[28:29], 8
000270  9f810c20  addli r3, r25, 4096
000274  9f832c20  addli r7, r25, 4112
000278  73e01200  stores.w r1, 0(r5)
00027c  9fc20c20  addli r5, r25, 4100
000280  9f801c20  addli r1, r25, 4104
000284  73e0e100  stores.w r14, 0(r3)
000288  9fc12c20  addli r3, r25, 4116
00028c  73e04300  stores.w r4, 0(r7)
000290  73e08201  stores.w r24, 0(r5)
000294  93a28d02  setneq.d r5, r[28:29], r[9:10]
000298  73e07001  stores.w r23, 0(r1)
00029c  9fc03c20  addli r1, r25, 4124
0002a0  73e0d100  stores.w r13, 0(r3)
0002a4  73e06000  stores.w r6, 0(r1)
0002a8  9f803c20  addli r1, r25, 4120
0002ac  73e01001  stores.w r17, 0(r1)
0002b0  37ec02fe  beq r5, zero, -232
0002b4  9bbc2d00  slli r25, r27, 2
0002b8  abf0ff7f  lui r1, 524287
0002bc  2b0b807f  lui r22, 522240
0002c0  ab084000  lui r17, 1024
0002c4  efc6cc00  loads.w r13, 12(r25)
0002c8  1b92f0ff  ori r4, r1, 4095
0002cc  6fcd0c00  loads.w r26, 0(r25)
0002d0  efc44c00  loads.w r9, 4(r25)
0002d4  6fc98c00  loads.w r18, 8(r25)
0002d8  efc30c01  loads.w r7, 16(r25)
0002dc  efc14c01  loads.w r3, 20(r25)
0002e0  efc98c01  loads.w r19, 24(r25)
0002e4  6fc6cc01  loads.w r12, 28(r25)
0002e8  178a4600  and r20, r13, r4
0002ec  93004b05  setlt.u r1, r22, r20
0002f0  3bb00000  bneq r1, zero, 12
0002f4  9f800600  addli r1, r13, 0
0002f8  5b010000  j 8
0002fc  97901601  or r1, r13, r17
000300  970a4900  and r21, r18, r4
000304  93025b05  setlt.u r5, r22, r21
000308  3bb00200  bneq r5, zero, 12
00030c  9f0b0900  addli r23, r18, 0
000310  5b010000  j 8
000314  971b1901  or r23, r18, r17
000318  97824400  and r5, r9, r4
00031c  13035b04  setlt.u r6, r22, r5
000320  3b300300  bneq r6, zero, 12
000324  1f8c0400  addli r24, r9, 0
000328  5b010000  j 8
00032c  179c1401  or r24, r9, r17
000330  97054d00  and r11, r26, r4
000334  1303bb04  setlt.u r6, r22, r11
000338  3b300300  bneq r6, zero, 12
00033c  1f050d00  addli r10, r26, 0
000340  5b010000  j 8
000344  17151d01  or r10, r26, r17
000348  17034600  and r6, r12, r4
00034c  e70e6ffe  storeli.w r6, -24(r30)
000350  13036b04  setlt.u r6, r22, r6
000354  3b300300  bneq r6, zero, 12
000358  1f030600  addli r6, r12, 0
00035c  5b010000  j 8
000360  17131601  or r6, r12, r17
000364  17884900  and r16, r19, r4
000368  13040b05  setlt.u r8, r22, r16
00036c  3b300400  bneq r8, zero, 12
000370  9f880900  addli r17, r19, 0
000374  5b010000  j 8
000378  97981901  or r17, r19, r17
00037c  17844100  and r8, r3, r4
000380  ab07807f  lui r15, 522240
000384  2b074000  lui r14, 1024
000388  130b8b04  setlt.u r22, r22, r8
00038c  3b300b00  bneq r22, zero, 12
000390  670f3ffe  storeli.w r3, -16(r30)
000394  5b020000  j 16
000398  2b0b4000  lui r22, 1024
00039c  179b6101  or r22, r3, r22
0003a0  670f6fff  storeli.w r22, -16(r30)
0003a4  178b4300  and r22, r7, r4
0003a8  13826705  setlt.u r4, r15, r22
0003ac  3b300200  bneq r4, zero, 12
0003b0  1f820300  addli r4, r7, 0
0003b4  5b010000  j 8
0003b8  1792e300  or r4, r7, r14
0003bc  9305b104  setlt.u r11, r2, r11
0003c0  ab07ffff  lui r15, 1048560
0003c4  1f070500  addli r14, r10, 0
0003c8  3bf00500  bneq r11, zero, 28
0003cc  9b450d01  srli r11, r26, 16
0003d0  6347cfff  loadli.w r14,  -28(r30)
0003d4  9b851500  andi r11, r11, 1
0003d8  8b15bd10  add.s r11, r26, r11
0003dc  8b95e510  add.s r11, r11, r14
0003e0  1787f500  and r14, r11, r15
0003e4  93025104  setlt.u r5, r2, r5
0003e8  e345cfff  loadli.w r11,  -28(r30)
0003ec  37c20200  beq r5, zero, 144
0003f0  93025105  setlt.u r5, r2, r21
0003f4  b7920200  beq r5, zero, 164
0003f8  93024105  setlt.u r5, r2, r20
0003fc  b7e20200  beq r5, zero, 184
000400  93026105  setlt.u r5, r2, r22
000404  3be00200  bneq r5, zero, 24
000408  1bc20301  srli r4, r7, 16
00040c  1b021200  andi r4, r4, 1
000410  0b924310  add.s r4, r7, r4
000414  0b12b210  add.s r4, r4, r11
000418  1702f200  and r4, r4, r15
00041c  93028104  setlt.u r5, r2, r8
000420  e306efff  loadli.w r13,  -16(r30)
000424  3be00200  bneq r5, zero, 24
000428  9bc20101  srli r5, r3, 16
00042c  9b821200  andi r5, r5, 1
000430  8b915110  add.s r3, r3, r5
000434  8b91b110  add.s r3, r3, r11
000438  9786f100  and r13, r3, r15
00043c  93010105  setlt.u r3, r2, r16
000440  3be00100  bneq r3, zero, 24
000444  9bc10901  srli r3, r19, 16
000448  9b811100  andi r3, r3, 1
00044c  8b913910  add.s r3, r19, r3
000450  8b91b110  add.s r3, r3, r11
000454  9788f100  and r17, r3, r15
000458  e301dfff  loadli.w r3,  -24(r30)
00045c  93013104  setlt.u r3, r2, r3
000460  3b9801fe  bneq r3, zero, -508
000464  9b410601  srli r3, r12, 16
000468  9b811100  andi r3, r3, 1
00046c  8b113610  add.s r3, r12, r3
000470  8b91b110  add.s r3, r3, r11
000474  1783f100  and r6, r3, r15
000478  dbbdffff  j -532
00047c  9bc20401  srli r5, r9, 16
000480  9b821200  andi r5, r5, 1
000484  8b925410  add.s r5, r9, r5
000488  8b92b210  add.s r5, r5, r11
00048c  178cf200  and r24, r5, r15
000490  93025105  setlt.u r5, r2, r21
000494  bb9d02fe  bneq r5, zero, -156
000498  9b420901  srli r5, r18, 16
00049c  9b821200  andi r5, r5, 1
0004a0  8b125910  add.s r5, r18, r5
0004a4  8b92b210  add.s r5, r5, r11
0004a8  978bf200  and r23, r5, r15
0004ac  93024105  setlt.u r5, r2, r20
0004b0  3bcd02fe  bneq r5, zero, -176
0004b4  9bc00601  srli r1, r13, 16
0004b8  9b801000  andi r1, r1, 1
0004bc  8b901610  add.s r1, r13, r1
0004c0  8b90b010  add.s r1, r1, r11
0004c4  9780f000  and r1, r1, r15
0004c8  93026105  setlt.u r5, r2, r22
0004cc  b7fc02fe  beq r5, zero, -196
0004d0  dbe9ffff  j -180
0004d4  1f2e3000  addli r28, zero, 26
0004d8  9f3d3000  addli r27, zero, 27
0004dc  b7e82403  beq r9, r18, 1592
0004e0  1f222000  addli r4, zero, 18
0004e4  3bc91401  bneq r9, r17, 592
0004e8  7d900700  xwait r15, 0
0004ec  1d000900  lock zero, r18
0004f0  1f740000  addli r8, zero, 7
0004f4  1f3b2000  addli r22, zero, 19
0004f8  9f4b2000  addli r23, zero, 20
0004fc  1f5c2000  addli r24, zero, 21
000500  9f6c2000  addli r25, zero, 22
000504  9f403000  addli r1, zero, 28
000508  9f513000  addli r3, zero, 29
00050c  9f623000  addli r5, zero, 30
000510  15000014  dma_cfg zero, zero, zero, 10
000514  15000015  dma_cfg zero, zero, r16, 10
000518  15003015  dma_cfg zero, zero, r19, 10
00051c  1500c014  dma_cfg zero, zero, r12, 10
000520  1500f014  dma_cfg zero, zero, r15, 10
000524  15002015  dma_cfg zero, zero, r18, 10
000528  15001015  dma_cfg zero, zero, r17, 10
00052c  15008014  dma_cfg zero, zero, r8, 10
000530  1f041000  addli r8, zero, 8
000534  15008014  dma_cfg zero, zero, r8, 10
000538  1f141000  addli r8, zero, 9
00053c  15008014  dma_cfg zero, zero, r8, 10
000540  1f241000  addli r8, zero, 10
000544  15008014  dma_cfg zero, zero, r8, 10
000548  1f341000  addli r8, zero, 11
00054c  15008014  dma_cfg zero, zero, r8, 10
000550  1f441000  addli r8, zero, 12
000554  15008014  dma_cfg zero, zero, r8, 10
000558  1f541000  addli r8, zero, 13
00055c  15008014  dma_cfg zero, zero, r8, 10
000560  1f641000  addli r8, zero, 14
000564  15008014  dma_cfg zero, zero, r8, 10
000568  1f741000  addli r8, zero, 15
00056c  15008014  dma_cfg zero, zero, r8, 10
000570  1f142000  addli r8, zero, 17
000574  1500a015  dma_cfg zero, zero, r26, 10
000578  15008014  dma_cfg zero, zero, r8, 10
00057c  1f040001  addli r8, zero, 128
000580  15004014  dma_cfg zero, zero, r4, 10
000584  1f020008  addli r4, zero, 1024
000588  15006015  dma_cfg zero, zero, r22, 10
00058c  1f7b2000  addli r22, zero, 23
000590  15007015  dma_cfg zero, zero, r23, 10
000594  9f0b3000  addli r23, zero, 24
000598  15008015  dma_cfg zero, zero, r24, 10
00059c  1f1c3000  addli r24, zero, 25
0005a0  15009015  dma_cfg zero, zero, r25, 10
0005a4  9f7c3000  addli r25, zero, 31
0005a8  15006015  dma_cfg zero, zero, r22, 10
0005ac  15007015  dma_cfg zero, zero, r23, 10
0005b0  15008015  dma_cfg zero, zero, r24, 10
0005b4  1500c015  dma_cfg zero, zero, r28, 10
0005b8  1f0e8000  addli r28, zero, 64
0005bc  1500b015  dma_cfg zero, zero, r27, 10
0005c0  9f0d0010  addli r27, zero, 2048
0005c4  15001014  dma_cfg zero, zero, r1, 10
0005c8  9f700000  addli r1, zero, 7
0005cc  15003014  dma_cfg zero, zero, r3, 10
0005d0  9f512000  addli r3, zero, 21
0005d4  15005014  dma_cfg zero, zero, r5, 10
0005d8  9f322000  addli r5, zero, 19
0005dc  15009015  dma_cfg zero, zero, r25, 10
0005e0  15080800  dma_cfg r16, r16, zero, 0
0005e4  15080002  dma_cfg r16, zero, zero, 1
0005e8  15000004  dma_cfg zero, zero, zero, 2
0005ec  1500c007  dma_cfg zero, zero, r28, 3
0005f0  1504a009  dma_cfg r8, zero, r26, 4
0005f4  950d000b  dma_cfg r27, zero, r16, 5
0005f8  15000010  dma_cfg zero, zero, zero, 8
0005fc  35000000  dma_run zero
000600  1500000b  dma_cfg zero, zero, r16, 5
000604  15000010  dma_cfg zero, zero, zero, 8
000608  1d100900  unlock r18
00060c  1d800700  lock zero, r15
000610  15080800  dma_cfg r16, r16, zero, 0
000614  15800304  dma_cfg zero, r7, zero, 2
000618  150ec307  dma_cfg r28, r6, r28, 3
00061c  1504ae09  dma_cfg r8, r28, r26, 4
000620  950d020b  dma_cfg r27, r4, r16, 5
000624  1f222000  addli r4, zero, 18
000628  15000010  dma_cfg zero, zero, zero, 8
00062c  35000000  dma_run zero
000630  1500000b  dma_cfg zero, zero, r16, 5
000634  15000010  dma_cfg zero, zero, zero, 8
000638  1d900700  unlock r15
00063c  1d000900  lock zero, r18
000640  15000014  dma_cfg zero, zero, zero, 10
000644  15000015  dma_cfg zero, zero, r16, 10
000648  15003015  dma_cfg zero, zero, r19, 10
00064c  1500c014  dma_cfg zero, zero, r12, 10
000650  1500f014  dma_cfg zero, zero, r15, 10
000654  15002015  dma_cfg zero, zero, r18, 10
000658  15001015  dma_cfg zero, zero, r17, 10
00065c  15001014  dma_cfg zero, zero, r1, 10
000660  9f001000  addli r1, zero, 8
000664  15001014  dma_cfg zero, zero, r1, 10
000668  9f101000  addli r1, zero, 9
00066c  15001014  dma_cfg zero, zero, r1, 10
000670  9f201000  addli r1, zero, 10
000674  15001014  dma_cfg zero, zero, r1, 10
000678  9f301000  addli r1, zero, 11
00067c  15001014  dma_cfg zero, zero, r1, 10
000680  9f401000  addli r1, zero, 12
000684  15001014  dma_cfg zero, zero, r1, 10
000688  9f501000  addli r1, zero, 13
00068c  15001014  dma_cfg zero, zero, r1, 10
000690  9f601000  addli r1, zero, 14
000694  15001014  dma_cfg zero, zero, r1, 10
000698  9f701000  addli r1, zero, 15
00069c  15001014  dma_cfg zero, zero, r1, 10
0006a0  9f102000  addli r1, zero, 17
0006a4  1500a015  dma_cfg zero, zero, r26, 10
0006a8  15001014  dma_cfg zero, zero, r1, 10
0006ac  9f402000  addli r1, zero, 20
0006b0  15004014  dma_cfg zero, zero, r4, 10
0006b4  1f622000  addli r4, zero, 22
0006b8  15005014  dma_cfg zero, zero, r5, 10
0006bc  9f423000  addli r5, zero, 28
0006c0  15001014  dma_cfg zero, zero, r1, 10
0006c4  9f203000  addli r1, zero, 26
0006c8  15003014  dma_cfg zero, zero, r3, 10
0006cc  9f613000  addli r3, zero, 30
0006d0  15004014  dma_cfg zero, zero, r4, 10
0006d4  15006015  dma_cfg zero, zero, r22, 10
0006d8  15007015  dma_cfg zero, zero, r23, 10
0006dc  15008015  dma_cfg zero, zero, r24, 10
0006e0  15001014  dma_cfg zero, zero, r1, 10
0006e4  9f303000  addli r1, zero, 27
0006e8  15001014  dma_cfg zero, zero, r1, 10
0006ec  9f503000  addli r1, zero, 29
0006f0  15005014  dma_cfg zero, zero, r5, 10
0006f4  15001014  dma_cfg zero, zero, r1, 10
0006f8  15003014  dma_cfg zero, zero, r3, 10
0006fc  15009015  dma_cfg zero, zero, r25, 10
000700  15080800  dma_cfg r16, r16, zero, 0
000704  15080002  dma_cfg r16, zero, zero, 1
000708  15000004  dma_cfg zero, zero, zero, 2
00070c  1500c007  dma_cfg zero, zero, r28, 3
000710  1504a009  dma_cfg r8, zero, r26, 4
000714  634b8fff  loadli.w r22,  -60(r30)
000718  950d000b  dma_cfg r27, zero, r16, 5
00071c  15000010  dma_cfg zero, zero, zero, 8
000720  35000000  dma_run zero
000724  1500000b  dma_cfg zero, zero, r16, 5
000728  15000010  dma_cfg zero, zero, zero, 8
00072c  1d100900  unlock r18
000730  7d800900  xsignal r19, 0
000734  9f018000  addli r3, zero, 64
000738  1f020001  addli r4, zero, 128
00073c  3bbb04fc  bneq r9, zero, -1332
000740  9f700000  addli r1, zero, 7
000744  7d900000  xwait r1, 0
000748  1d000900  lock zero, r18
00074c  9f008020  addli r1, zero, 4160
000750  15080800  dma_cfg r16, r16, zero, 0
000754  15000802  dma_cfg zero, r16, zero, 1
000758  95030004  dma_cfg r7, zero, zero, 2
00075c  15833006  dma_cfg r6, r1, r3, 3
000760  9f000008  addli r1, zero, 1024
000764  9501a209  dma_cfg r3, r4, r26, 4
000768  9f010010  addli r3, zero, 2048
00076c  9580010b  dma_cfg r1, r3, r16, 5
000770  9f001000  addli r1, zero, 8
000774  15000010  dma_cfg zero, zero, zero, 8
000778  35000000  dma_run zero
00077c  1500000b  dma_cfg zero, zero, r16, 5
000780  15000010  dma_cfg zero, zero, zero, 8
000784  1d100900  unlock r18
000788  7d800000  xsignal r1, 0
00078c  db4fffff  j -1412
000790  1f1d1000  addli r26, zero, 9
000794  eb5d8ffb  load.d r[28:29], -72(r30)
000798  7338dffc  store.d r[14:15], -48(r30)
00079c  9f201000  addli r1, zero, 10
0007a0  7d900800  xwait r17, 0
0007a4  9f180000  addli r17, zero, 1
0007a8  9f530000  addli r7, zero, 5
0007ac  1f241000  addli r8, zero, 10
0007b0  17b6a103  sll.d r[13:14], r[4:5], r26
0007b4  8f11b671  mod.sl r[4:5], r[13:14], r[28:29]
0007b8  a7f1f10b  addli.d r[4:5], r[4:5], 1535
0007bc  17ca1102  srl.d r[21:22], r[4:5], r1
0007c0  b3010028  zext_int2long r[4:5], zero
0007c4  93203a00  seteq.d r1, r[21:22], r[4:5]
0007c8  3bfc0000  bneq r1, zero, 796
0007cc  eb510ffb  load.d r[4:5], -80(r30)
0007d0  33090028  zext_int2long r[19:20], zero
0007d4  7334cffe  store.d r[13:14], -24(r30)
0007d8  733c4ffd  store.d r[21:22], -40(r30)
0007dc  73383ffe  store.d r[4:5], -16(r30)
0007e0  8b21c910  add.ul r[4:5], r[19:20], r[13:14]
0007e4  eb528fff  load.d r[6:7], -8(r30)
0007e8  9f260000  addli r13, zero, 2
0007ec  9f3b0000  addli r23, zero, 3
0007f0  1f480000  addli r16, zero, 4
0007f4  9f6c0000  addli r25, zero, 6
0007f8  9f770000  addli r15, zero, 7
0007fc  1f4c1000  addli r24, zero, 12
000800  9f741000  addli r9, zero, 15
000804  9f1a2000  addli r21, zero, 17
000808  9f252000  addli r11, zero, 18
00080c  1f362000  addli r12, zero, 19
000810  1f4a2000  addli r20, zero, 20
000814  1f572000  addli r14, zero, 21
000818  1f058000  addli r10, zero, 64
00081c  9b302900  slli r1, r18, 2
000820  1d800300  lock zero, r7
000824  8f91b171  mod.sl r[4:5], r[4:5], r[28:29]
000828  15000014  dma_cfg zero, zero, zero, 10
00082c  9f800010  addli r1, r1, 2048
000830  15001015  dma_cfg zero, zero, r17, 10
000834  8bb22219  sub.sl r[6:7], r[6:7], r[19:20]
000838  1500d014  dma_cfg zero, zero, r13, 10
00083c  9f360000  addli r13, zero, 3
000840  15007015  dma_cfg zero, zero, r23, 10
000844  9f0b1000  addli r23, zero, 8
000848  15000015  dma_cfg zero, zero, r16, 10
00084c  15007014  dma_cfg zero, zero, r7, 10
000850  15009015  dma_cfg zero, zero, r25, 10
000854  9f3c1000  addli r25, zero, 11
000858  1500f014  dma_cfg zero, zero, r15, 10
00085c  a7870d00  addli.d r[16:17], r[28:29], 0
000860  15007015  dma_cfg zero, zero, r23, 10
000864  1500a015  dma_cfg zero, zero, r26, 10
000868  1f1d1000  addli r26, zero, 9
00086c  15008014  dma_cfg zero, zero, r8, 10
000870  15009015  dma_cfg zero, zero, r25, 10
000874  15008015  dma_cfg zero, zero, r24, 10
000878  1f5c1000  addli r24, zero, 13
00087c  15008015  dma_cfg zero, zero, r24, 10
000880  8bb33d18  sub.sl r[8:9], r[28:29], r[4:5]
000884  eb5d8f00  load.d r[28:29], 8(r30)
000888  97b11103  sll.d r[4:5], r[4:5], r17
00088c  0ba37240  min.ul r[7:8], r[6:7], r[8:9]
000890  9f622000  addli r5, zero, 22
000894  1f040001  addli r8, zero, 128
000898  8ba13d10  add.ul r[4:5], r[28:29], r[4:5]
00089c  a78d0700  addli.d r[28:29], r[16:17], 0
0008a0  9f671000  addli r15, zero, 14
0008a4  1f082000  addli r16, zero, 16
0008a8  0b292311  add.ul r[19:20], r[7:8], r[19:20]
0008ac  9f530000  addli r7, zero, 5
0008b0  1500f014  dma_cfg zero, zero, r15, 10
0008b4  15009014  dma_cfg zero, zero, r9, 10
0008b8  9b342300  slli r9, r6, 2
0008bc  15000015  dma_cfg zero, zero, r16, 10
0008c0  15005015  dma_cfg zero, zero, r21, 10
0008c4  9f3a3000  addli r21, zero, 27
0008c8  97846401  and r9, r9, r22
0008cc  1500b014  dma_cfg zero, zero, r11, 10
0008d0  9f050001  addli r11, zero, 128
0008d4  1500c014  dma_cfg zero, zero, r12, 10
0008d8  1f660000  addli r12, zero, 6
0008dc  15004015  dma_cfg zero, zero, r20, 10
0008e0  1f2a3000  addli r20, zero, 26
0008e4  1500e014  dma_cfg zero, zero, r14, 10
0008e8  1f470000  addli r14, zero, 4
0008ec  15005014  dma_cfg zero, zero, r5, 10
0008f0  9f722000  addli r5, zero, 23
0008f4  15005014  dma_cfg zero, zero, r5, 10
0008f8  9f023000  addli r5, zero, 24
0008fc  15005014  dma_cfg zero, zero, r5, 10
000900  9f123000  addli r5, zero, 25
000904  15005014  dma_cfg zero, zero, r5, 10
000908  9f423000  addli r5, zero, 28
00090c  15004015  dma_cfg zero, zero, r20, 10
000910  15005015  dma_cfg zero, zero, r21, 10
000914  15005014  dma_cfg zero, zero, r5, 10
000918  9f523000  addli r5, zero, 29
00091c  15005014  dma_cfg zero, zero, r5, 10
000920  9f623000  addli r5, zero, 30
000924  15005014  dma_cfg zero, zero, r5, 10
000928  9f723000  addli r5, zero, 31
00092c  15005014  dma_cfg zero, zero, r5, 10
000930  9f020010  addli r5, zero, 2048
000934  95880800  dma_cfg r17, r17, zero, 0
000938  95080002  dma_cfg r17, zero, zero, 1
00093c  15000004  dma_cfg zero, zero, zero, 2
000940  9502a006  dma_cfg r5, zero, r10, 3
000944  15040009  dma_cfg r8, zero, r16, 4
000948  1f540000  addli r8, zero, 5
00094c  9502100b  dma_cfg r5, zero, r17, 5
000950  9f020001  addli r5, zero, 128
000954  15000010  dma_cfg zero, zero, zero, 8
000958  35000000  dma_run zero
00095c  1500100b  dma_cfg zero, zero, r17, 5
000960  8b925038  mod.s r5, r1, r5
000964  15000010  dma_cfg zero, zero, zero, 8
000968  1d100400  unlock r8
00096c  1d000700  lock zero, r14
000970  95880800  dma_cfg r17, r17, zero, 0
000974  15000204  dma_cfg zero, r4, zero, 2
000978  1bc41200  srli r8, r5, 1
00097c  0b948018  sub.s r8, r1, r8
000980  8b905018  sub.s r1, r1, r5
000984  9f322000  addli r5, zero, 19
000988  1f048400  addli r8, r8, 64
00098c  1584a106  dma_cfg r8, r3, r10, 3
000990  1b341300  slli r8, r6, 1
000994  1f723300  addli r4, r6, 31
000998  9b01e403  andi r3, r8, 62
00099c  1b425200  srli r4, r4, 5
0009a0  97943400  or r9, r9, r3
0009a4  95054508  dma_cfg r11, r10, r4, 4
0009a8  9f550000  addli r11, zero, 5
0009ac  1f152000  addli r10, zero, 17
0009b0  9504140b  dma_cfg r9, r8, r17, 5
0009b4  1f241000  addli r8, zero, 10
0009b8  15003010  dma_cfg zero, zero, r3, 8
0009bc  35000000  dma_run zero
0009c0  1500100b  dma_cfg zero, zero, r17, 5
0009c4  15000010  dma_cfg zero, zero, zero, 8
0009c8  1d100700  unlock r14
0009cc  1d800500  lock zero, r11
0009d0  9f250000  addli r11, zero, 2
0009d4  15000014  dma_cfg zero, zero, zero, 10
0009d8  15001015  dma_cfg zero, zero, r17, 10
0009dc  1500b014  dma_cfg zero, zero, r11, 10
0009e0  9f550000  addli r11, zero, 5
0009e4  1500d014  dma_cfg zero, zero, r13, 10
0009e8  9f461000  addli r13, zero, 12
0009ec  1500e014  dma_cfg zero, zero, r14, 10
0009f0  1f770000  addli r14, zero, 7
0009f4  1500b014  dma_cfg zero, zero, r11, 10
0009f8  9f751000  addli r11, zero, 15
0009fc  1500c014  dma_cfg zero, zero, r12, 10
000a00  1f262000  addli r12, zero, 18
000a04  1500e014  dma_cfg zero, zero, r14, 10
000a08  1f772000  addli r14, zero, 23
000a0c  15007015  dma_cfg zero, zero, r23, 10
000a10  1500a015  dma_cfg zero, zero, r26, 10
000a14  15008014  dma_cfg zero, zero, r8, 10
000a18  15009015  dma_cfg zero, zero, r25, 10
000a1c  1500d014  dma_cfg zero, zero, r13, 10
000a20  15008015  dma_cfg zero, zero, r24, 10
000a24  1500f014  dma_cfg zero, zero, r15, 10
000a28  1500b014  dma_cfg zero, zero, r11, 10
000a2c  9f153000  addli r11, zero, 25
000a30  15000015  dma_cfg zero, zero, r16, 10
000a34  1500a014  dma_cfg zero, zero, r10, 10
000a38  1f053000  addli r10, zero, 24
000a3c  1500c014  dma_cfg zero, zero, r12, 10
000a40  15005014  dma_cfg zero, zero, r5, 10
000a44  9f422000  addli r5, zero, 20
000a48  15005014  dma_cfg zero, zero, r5, 10
000a4c  9f522000  addli r5, zero, 21
000a50  15005014  dma_cfg zero, zero, r5, 10
000a54  9f622000  addli r5, zero, 22
000a58  15005014  dma_cfg zero, zero, r5, 10
000a5c  9f423000  addli r5, zero, 28
000a60  1500e014  dma_cfg zero, zero, r14, 10
000a64  1500a014  dma_cfg zero, zero, r10, 10
000a68  1500b014  dma_cfg zero, zero, r11, 10
000a6c  15004015  dma_cfg zero, zero, r20, 10
000a70  15005015  dma_cfg zero, zero, r21, 10
000a74  6b5a8ffd  load.d r[21:22], -40(r30)
000a78  15005014  dma_cfg zero, zero, r5, 10
000a7c  9f523000  addli r5, zero, 29
000a80  15005014  dma_cfg zero, zero, r5, 10
000a84  9f623000  addli r5, zero, 30
000a88  15005014  dma_cfg zero, zero, r5, 10
000a8c  9f723000  addli r5, zero, 31
000a90  15005014  dma_cfg zero, zero, r5, 10
000a94  9f028000  addli r5, zero, 64
000a98  95880800  dma_cfg r17, r17, zero, 0
000a9c  95080002  dma_cfg r17, zero, zero, 1
000aa0  15000004  dma_cfg zero, zero, zero, 2
000aa4  95005006  dma_cfg r1, zero, r5, 3
000aa8  9f000001  addli r1, zero, 128
000aac  95004008  dma_cfg r1, zero, r4, 4
000ab0  9504100b  dma_cfg r9, zero, r17, 5
000ab4  6b520fff  load.d r[5:6], -16(r30)
000ab8  15003010  dma_cfg zero, zero, r3, 8
000abc  35000000  dma_run zero
000ac0  1500100b  dma_cfg zero, zero, r17, 5
000ac4  9f210000  addli r3, zero, 2
000ac8  15000010  dma_cfg zero, zero, zero, 8
000acc  6b558fff  load.d r[11:12], -8(r30)
000ad0  6b568ffe  load.d r[13:14], -24(r30)
000ad4  1d900300  unlock r7
000ad8  93204205  setlt.ul r1, r[5:6], r[21:22]
000adc  b3810128  zext_int2long r[4:5], r3
000ae0  bbf300fe  bneq r1, zero, -772
000ae4  7d800300  xsignal r7, 0
000ae8  6b5a8ffc  load.d r[21:22], -56(r30)
000aec  eb560ffd  load.d r[14:15], -48(r30)
000af0  80340002  core_id r9
000af4  9f470000  addli r15, zero, 4
000af8  1f180000  addli r16, zero, 1
000afc  9f680000  addli r17, zero, 6
000b00  1f590000  addli r18, zero, 5
000b04  9f290000  addli r19, zero, 2
000b08  1f360000  addli r12, zero, 3
000b0c  1f0d2000  addli r26, zero, 16
000b10  5bdffeff  j -2312
000b14  7d900900  xwait r19, 0
000b18  7d100900  xwait r18, 0
000b1c  1d800900  lock zero, r19
000b20  ab00803f  lui r1, 260096
000b24  0d000002  ew_cfg zero, zero, zero, 1
000b28  8d900000  ewcoeff_cfg r1, r1, zero, 0
000b2c  9f703000  addli r1, zero, 31
000b30  0d800004  ew_cfg zero, r1, zero, 2
000b34  9f000010  addli r1, zero, 2048
000b38  0d0d0006  ew_cfg r26, zero, zero, 3
000b3c  0d0dad27  ew_cfg r26, r26, r26, 19
000b40  2d001000  dsmadd zero, zero, r1, 0
000b44  0d000026  ew_cfg zero, zero, zero, 19
000b48  1d900900  unlock r19
000b4c  7d000600  xsignal r12, 0
000b50  7d800800  xsignal r17, 0
000b54  dbd6feff  j -2380
000b58  7d000000  xsignal zero, 0
000b5c  bbe00400  bneq r9, zero, 56
000b60  9f200000  addli r1, zero, 2
000b64  7d100000  xwait zero, 0
000b68  7d100000  xwait zero, 0
000b6c  7d100000  xwait zero, 0
000b70  7d100000  xwait zero, 0
000b74  7d100000  xwait zero, 0
000b78  7d100000  xwait zero, 0
000b7c  7d100000  xwait zero, 0
000b80  7d100000  xwait zero, 0
000b84  1d800000  lock zero, r1
000b88  0d000020  ew_cfg zero, zero, zero, 16
000b8c  1d900000  unlock r1
000b90  7d400000  xsignal_mode_cfg zero
000b94  9f8eae00  addli sp, sp, 80
000b98  00a00300  mfence { lm, sm, gm }
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
000bf8  00100000  exit
000bfc  00100000  exit
000c00  00100000  exit
000c04  00100000  exit
000c08  00100000  exit
000c0c  00100000  exit
000c10  00100000  exit
000c14  00100000  exit
000c18  00100000  exit
000c1c  00100000  exit
000c20  00100000  exit
000c24  00100000  exit
000c28  00100000  exit
000c2c  00100000  exit
000c30  00100000  exit
000c34  00100000  exit
000c38  00100000  exit
000c3c  00100000  exit
000c40  00100000  exit
000c44  00100000  exit
000c48  00100000  exit
000c4c  00100000  exit
000c50  00100000  exit
000c54  00100000  exit
000c58  00100000  exit
000c5c  00100000  exit
000c60  00100000  exit
000c64  00100000  exit
000c68  00100000  exit
000c6c  00100000  exit
000c70  00100000  exit
000c74  00100000  exit
000c78  00100000  exit
000c7c  00100000  exit
000c80  00100000  exit
000c84  00100000  exit
000c88  00100000  exit
000c8c  00100000  exit
000c90  00100000  exit
000c94  00100000  exit
000c98  00100000  exit
000c9c  00100000  exit
000ca0  00100000  exit
000ca4  00100000  exit
000ca8  00100000  exit
000cac  00100000  exit
000cb0  00100000  exit
000cb4  00100000  exit
000cb8  00100000  exit
000cbc  00100000  exit
000cc0  00100000  exit
000cc4  00100000  exit
000cc8  00100000  exit
000ccc  00100000  exit
000cd0  00100000  exit
000cd4  00100000  exit
000cd8  00100000  exit
000cdc  00100000  exit
000ce0  00100000  exit
000ce4  00100000  exit
000ce8  00100000  exit
000cec  00100000  exit
000cf0  00100000  exit
000cf4  00100000  exit
000cf8  00100000  exit
000cfc  00100000  exit
000d00  00100000  exit
000d04  00100000  exit
000d08  00100000  exit
000d0c  00100000  exit
000d10  00100000  exit
000d14  00100000  exit
000d18  00100000  exit
000d1c  00100000  exit
000d20  00100000  exit
000d24  00100000  exit
000d28  00100000  exit
000d2c  00100000  exit
000d30  00100000  exit
000d34  00100000  exit
000d38  00100000  exit
000d3c  00100000  exit
000d40  00100000  exit
000d44  00100000  exit
000d48  00100000  exit
000d4c  00100000  exit
000d50  00100000  exit
000d54  00100000  exit
000d58  00100000  exit
000d5c  00100000  exit
000d60  00100000  exit
000d64  00100000  exit
000d68  00100000  exit
000d6c  00100000  exit
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
