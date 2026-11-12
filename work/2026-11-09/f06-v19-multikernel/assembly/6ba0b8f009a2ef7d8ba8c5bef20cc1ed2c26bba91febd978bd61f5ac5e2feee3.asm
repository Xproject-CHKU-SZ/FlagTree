; SHA-256 6ba0b8f009a2ef7d8ba8c5bef20cc1ed2c26bba91febd978bd61f5ac5e2feee3
; P800 SDNN · XTDK LLVM 19 · 1913 / 1913 words decoded
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
0000bc  80340002  core_id r9
0000c0  1f8fce00  addli r30, sp, 96
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37e00400  beq r9, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5b110000  j 136
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
000148  1f511000  addli r2, zero, 13
00014c  7d800000  xsignal r1, 0
000150  7d800000  xsignal r1, 0
000154  7d800000  xsignal r1, 0
000158  7d000100  xsignal r2, 0
00015c  7d000100  xsignal r2, 0
000160  7d000100  xsignal r2, 0
000164  e3003f00  loadli.w r1,  24(r30)
000168  63413f00  loadli.w r2,  28(r30)
00016c  00d20002  load_param_i r4, 1
000170  e3014f00  loadli.w r3,  32(r30)
000174  8b101120  mul.s r1, r2, r1
000178  1f010200  addli r2, r4, 0
00017c  0b913050  fmac.s r2, r1, r3
000180  8b913020  mul.s r3, r1, r3
000184  1f71f1ff  addli r2, r2, -1
000188  0b114130  div.s r2, r2, r4
00018c  00520002  load_param_i r4, 0
000190  8b104120  mul.s r1, r2, r4
000194  0b114150  fmac.s r2, r2, r4
000198  0b113140  min.s r2, r2, r3
00019c  4b07110c  ble.s r2, r1, 6592
0001a0  33110128  sext_int2long r[3:4], r2
0001a4  b39a0028  sext_int2long r[22:23], r1
0001a8  9f3b0000  addli r23, zero, 3
0001ac  1f0c0001  addli r24, zero, 128
0001b0  ab0c807f  lui r25, 522240
0001b4  2b0affff  lui r20, 1048560
0001b8  9f030000  addli r7, zero, 0
0001bc  73382ffa  store.d r[3:4], -80(r30)
0001c0  1f71f01f  addli r2, zero, 4095
0001c4  ab00feff  lui r1, 1048544
0001c8  73341ffa  store.d r[2:3], -88(r30)
0001cc  abf0ff7f  lui r1, 524287
0001d0  2bf17f7f  lui r2, 522239
0001d4  9b97f0ff  ori r15, r1, 4095
0001d8  ab700000  lui r1, 7
0001dc  9b19f1ff  ori r19, r2, 4095
0001e0  1b98f0ff  ori r16, r1, 4095
0001e4  b3000028  zext_int2long r[2:3], zero
0001e8  73301ffa  store.d r[2:3], -96(r30)
0001ec  db060000  j 52
0001f0  9f301000  addli r1, zero, 11
0001f4  1f0c0001  addli r24, zero, 128
0001f8  7d800000  xsignal r1, 0
0001fc  9f401000  addli r1, zero, 12
000200  7d800000  xsignal r1, 0
000204  eb5a8ffd  load.d r[22:23], -40(r30)
000208  eb500ffb  load.d r[2:3], -80(r30)
00020c  a79a0a00  addli.d r[22:23], r[22:23], 1
000210  e343cfff  loadli.w r7,  -28(r30)
000214  93b01a04  setlt.sl r1, r[22:23], r[2:3]
000218  9f930300  addli r7, r7, 1
00021c  3785000c  beq r1, zero, 6464
000220  e3004f00  loadli.w r1,  32(r30)
000224  63413f00  loadli.w r2,  28(r30)
000228  1f021000  addli r4, zero, 8
00022c  9f661000  addli r13, zero, 14
000230  8b901a30  div.s r1, r21, r1
000234  0b942030  div.s r8, r1, r2
000238  1f012000  addli r2, zero, 16
00023c  8b108431  div.s r1, r8, r24
000240  9bb13000  slli r3, r1, 3
000244  0b113118  sub.s r2, r2, r3
000248  0b114140  min.s r2, r2, r4
00024c  0b122438  mod.s r4, r8, r2
000250  0b123210  add.s r4, r4, r3
000254  9f711000  addli r3, zero, 15
000258  93824104  setlt.u r5, r3, r4
00025c  33050228  zext_int2long r[11:12], r4
000260  9f511000  addli r3, zero, 13
000264  e74b4ffe  storeli.w r4, -68(r30)
000268  97313502  sll.d r[4:5], r[11:12], r3
00026c  7330affc  store.d r[11:12], -64(r30)
000270  3bb00200  bneq r5, zero, 12
000274  eb550ffa  load.d r[12:13], -96(r30)
000278  db010000  j 12
00027c  eb528ffa  load.d r[6:7], -88(r30)
000280  97855102  and.d r[12:13], r[4:5], r[6:7]
000284  0b937339  mod.s r6, r7, r23
000288  9f02000f  addli r5, zero, 1920
00028c  9f8d0300  addli r27, r7, 0
000290  b3880228  zext_int2long r[18:19], r5
000294  ab020300  lui r5, 48
000298  674ebfff  storeli.w r27, -28(r30)
00029c  73381fff  store.d r[18:19], -16(r30)
0002a0  1b35f300  slli r10, r6, 15
0002a4  8b135510  add.s r7, r10, r5
0002a8  9f120000  addli r5, zero, 1
0002ac  3bbb5400  bneq r9, r5, 716
0002b0  8bb1b118  sub.sl r[4:5], r[4:5], r[12:13]
0002b4  9f620000  addli r5, zero, 6
0002b8  eb560ffc  load.d r[14:15], -64(r30)
0002bc  1f6d1000  addli r26, zero, 14
0002c0  7d900b00  xwait r23, 0
0002c4  97d15102  sra.d r[4:5], r[4:5], r5
0002c8  97b6a603  sll.d r[14:15], r[14:15], r26
0002cc  8bb51141  min.sl r[12:13], r[4:5], r[18:19]
0002d0  8bb13518  sub.sl r[4:5], r[12:13], r[4:5]
0002d4  eb550f00  load.d r[12:13], 0(r30)
0002d8  1f820101  addli r4, r3, 128
0002dc  8ba8d510  add.ul r[18:19], r[12:13], r[14:15]
0002e0  9f750000  addli r11, zero, 7
0002e4  1f270000  addli r14, zero, 2
0002e8  bf14b701  blt.s r14, r27, 292
0002ec  9f560000  addli r13, zero, 5
0002f0  1f160000  addli r12, zero, 1
0002f4  9f410000  addli r3, zero, 4
0002f8  1d800600  lock zero, r13
0002fc  15000014  dma_cfg zero, zero, zero, 10
000300  1500c014  dma_cfg zero, zero, r12, 10
000304  1500e014  dma_cfg zero, zero, r14, 10
000308  15007015  dma_cfg zero, zero, r23, 10
00030c  15003014  dma_cfg zero, zero, r3, 10
000310  9f011000  addli r3, zero, 8
000314  1500d014  dma_cfg zero, zero, r13, 10
000318  15005014  dma_cfg zero, zero, r5, 10
00031c  1500b014  dma_cfg zero, zero, r11, 10
000320  15003014  dma_cfg zero, zero, r3, 10
000324  9f111000  addli r3, zero, 9
000328  15003014  dma_cfg zero, zero, r3, 10
00032c  9f211000  addli r3, zero, 10
000330  15003014  dma_cfg zero, zero, r3, 10
000334  9f311000  addli r3, zero, 11
000338  15003014  dma_cfg zero, zero, r3, 10
00033c  9f411000  addli r3, zero, 12
000340  15003014  dma_cfg zero, zero, r3, 10
000344  9f511000  addli r3, zero, 13
000348  15003014  dma_cfg zero, zero, r3, 10
00034c  9f711000  addli r3, zero, 15
000350  1500a015  dma_cfg zero, zero, r26, 10
000354  15003014  dma_cfg zero, zero, r3, 10
000358  9f012000  addli r3, zero, 16
00035c  15003014  dma_cfg zero, zero, r3, 10
000360  9f112000  addli r3, zero, 17
000364  15003014  dma_cfg zero, zero, r3, 10
000368  9f212000  addli r3, zero, 18
00036c  15003014  dma_cfg zero, zero, r3, 10
000370  9f312000  addli r3, zero, 19
000374  15003014  dma_cfg zero, zero, r3, 10
000378  9f412000  addli r3, zero, 20
00037c  15003014  dma_cfg zero, zero, r3, 10
000380  9f512000  addli r3, zero, 21
000384  15003014  dma_cfg zero, zero, r3, 10
000388  9f612000  addli r3, zero, 22
00038c  15003014  dma_cfg zero, zero, r3, 10
000390  9f712000  addli r3, zero, 23
000394  15003014  dma_cfg zero, zero, r3, 10
000398  9f013000  addli r3, zero, 24
00039c  15003014  dma_cfg zero, zero, r3, 10
0003a0  9f113000  addli r3, zero, 25
0003a4  15003014  dma_cfg zero, zero, r3, 10
0003a8  9f213000  addli r3, zero, 26
0003ac  15003014  dma_cfg zero, zero, r3, 10
0003b0  9f313000  addli r3, zero, 27
0003b4  15003014  dma_cfg zero, zero, r3, 10
0003b8  9f413000  addli r3, zero, 28
0003bc  15003014  dma_cfg zero, zero, r3, 10
0003c0  9f513000  addli r3, zero, 29
0003c4  15003014  dma_cfg zero, zero, r3, 10
0003c8  9f613000  addli r3, zero, 30
0003cc  15003014  dma_cfg zero, zero, r3, 10
0003d0  9f713000  addli r3, zero, 31
0003d4  15003014  dma_cfg zero, zero, r3, 10
0003d8  9f018000  addli r3, zero, 64
0003dc  15060600  dma_cfg r12, r12, zero, 0
0003e0  15060002  dma_cfg r12, zero, zero, 1
0003e4  15000004  dma_cfg zero, zero, zero, 2
0003e8  95033006  dma_cfg r7, zero, r3, 3
0003ec  9f010002  addli r3, zero, 256
0003f0  150ce008  dma_cfg r24, zero, r14, 4
0003f4  9501800b  dma_cfg r3, zero, r24, 5
0003f8  15000010  dma_cfg zero, zero, zero, 8
0003fc  35000000  dma_run zero
000400  1500c00a  dma_cfg zero, zero, r12, 5
000404  15000010  dma_cfg zero, zero, zero, 8
000408  1d900600  unlock r13
00040c  ab010300  lui r3, 48
000410  9f460000  addli r13, zero, 4
000414  e74c0ffe  storeli.w zero, -52(r30)
000418  1f160000  addli r12, zero, 1
00041c  9f0d8000  addli r27, zero, 64
000420  9b910104  ori r3, r3, 64
000424  1d800600  lock zero, r13
000428  15060600  dma_cfg r12, r12, zero, 0
00042c  8b113510  add.s r3, r10, r3
000430  15000904  dma_cfg zero, r18, zero, 2
000434  9581b807  dma_cfg r3, r17, r27, 3
000438  1f090002  addli r18, zero, 256
00043c  9f580000  addli r17, zero, 5
000440  9f011000  addli r3, zero, 8
000444  158ced08  dma_cfg r24, r27, r14, 4
000448  15094c0a  dma_cfg r18, r24, r4, 5
00044c  15000010  dma_cfg zero, zero, zero, 8
000450  35000000  dma_run zero
000454  1500c00a  dma_cfg zero, zero, r12, 5
000458  15000010  dma_cfg zero, zero, zero, 8
00045c  1d900600  unlock r13
000460  1d800800  lock zero, r17
000464  15000014  dma_cfg zero, zero, zero, 10
000468  1500c014  dma_cfg zero, zero, r12, 10
00046c  1500e014  dma_cfg zero, zero, r14, 10
000470  15007015  dma_cfg zero, zero, r23, 10
000474  1500d014  dma_cfg zero, zero, r13, 10
000478  9f661000  addli r13, zero, 14
00047c  15001015  dma_cfg zero, zero, r17, 10
000480  15005014  dma_cfg zero, zero, r5, 10
000484  1500b014  dma_cfg zero, zero, r11, 10
000488  15003014  dma_cfg zero, zero, r3, 10
00048c  9f111000  addli r3, zero, 9
000490  15003014  dma_cfg zero, zero, r3, 10
000494  9f211000  addli r3, zero, 10
000498  15003014  dma_cfg zero, zero, r3, 10
00049c  9f311000  addli r3, zero, 11
0004a0  15003014  dma_cfg zero, zero, r3, 10
0004a4  9f411000  addli r3, zero, 12
0004a8  15003014  dma_cfg zero, zero, r3, 10
0004ac  9f511000  addli r3, zero, 13
0004b0  15003014  dma_cfg zero, zero, r3, 10
0004b4  9f711000  addli r3, zero, 15
0004b8  1500a015  dma_cfg zero, zero, r26, 10
0004bc  15003014  dma_cfg zero, zero, r3, 10
0004c0  9f012000  addli r3, zero, 16
0004c4  15003014  dma_cfg zero, zero, r3, 10
0004c8  9f112000  addli r3, zero, 17
0004cc  15003014  dma_cfg zero, zero, r3, 10
0004d0  9f212000  addli r3, zero, 18
0004d4  15003014  dma_cfg zero, zero, r3, 10
0004d8  9f312000  addli r3, zero, 19
0004dc  15003014  dma_cfg zero, zero, r3, 10
0004e0  9f412000  addli r3, zero, 20
0004e4  15003014  dma_cfg zero, zero, r3, 10
0004e8  9f512000  addli r3, zero, 21
0004ec  15003014  dma_cfg zero, zero, r3, 10
0004f0  9f612000  addli r3, zero, 22
0004f4  15003014  dma_cfg zero, zero, r3, 10
0004f8  9f712000  addli r3, zero, 23
0004fc  15003014  dma_cfg zero, zero, r3, 10
000500  9f013000  addli r3, zero, 24
000504  15003014  dma_cfg zero, zero, r3, 10
000508  9f113000  addli r3, zero, 25
00050c  15003014  dma_cfg zero, zero, r3, 10
000510  9f213000  addli r3, zero, 26
000514  15003014  dma_cfg zero, zero, r3, 10
000518  9f313000  addli r3, zero, 27
00051c  15003014  dma_cfg zero, zero, r3, 10
000520  9f413000  addli r3, zero, 28
000524  15003014  dma_cfg zero, zero, r3, 10
000528  9f513000  addli r3, zero, 29
00052c  15003014  dma_cfg zero, zero, r3, 10
000530  9f613000  addli r3, zero, 30
000534  15003014  dma_cfg zero, zero, r3, 10
000538  9f713000  addli r3, zero, 31
00053c  15003014  dma_cfg zero, zero, r3, 10
000540  15060600  dma_cfg r12, r12, zero, 0
000544  15060002  dma_cfg r12, zero, zero, 1
000548  15000004  dma_cfg zero, zero, zero, 2
00054c  9503b007  dma_cfg r7, zero, r27, 3
000550  150ce008  dma_cfg r24, zero, r14, 4
000554  1509400a  dma_cfg r18, zero, r4, 5
000558  1f220000  addli r4, zero, 2
00055c  15000010  dma_cfg zero, zero, zero, 8
000560  35000000  dma_run zero
000564  1500c00a  dma_cfg zero, zero, r12, 5
000568  15000010  dma_cfg zero, zero, zero, 8
00056c  1d900800  unlock r17
000570  7d000700  xsignal r14, 0
000574  5b0d0000  j 104
000578  9f210000  addli r3, zero, 2
00057c  3bb13400  bneq r9, r3, 76
000580  1f520000  addli r4, zero, 5
000584  7d900100  xwait r3, 0
000588  7d100200  xwait r4, 0
00058c  1d000000  lock zero, zero
000590  1f220000  addli r4, zero, 2
000594  81010000  ds_cfg r3, zero, 0
000598  9f018000  addli r3, zero, 64
00059c  81010002  ds_cfg r3, zero, 1
0005a0  8101001c  ds_cfg r3, zero, 14
0005a4  010c001a  ds_cfg r24, zero, 13
0005a8  21953302  shuffle_batch r10, r7, r3, 1
0005ac  9f110000  addli r3, zero, 1
0005b0  1d100000  unlock zero
0005b4  7d800b00  xsignal r23, 0
0005b8  e74c3ffe  storeli.w r3, -52(r30)
0005bc  9f410000  addli r3, zero, 4
0005c0  7d800100  xsignal r3, 0
0005c4  db010000  j 12
0005c8  1f220000  addli r4, zero, 2
0005cc  e74c0ffe  storeli.w zero, -52(r30)
0005d0  9f750000  addli r11, zero, 7
0005d4  9f620000  addli r5, zero, 6
0005d8  1f160000  addli r12, zero, 1
0005dc  9bb07000  slli r1, r1, 7
0005e0  733c5ffd  store.d r[22:23], -40(r30)
0005e4  8b101418  sub.s r1, r8, r1
0005e8  1b340301  slli r8, r6, 16
0005ec  8b902030  div.s r1, r1, r2
0005f0  e70b1ffe  storeli.w r1, -72(r30)
0005f4  b3800028  zext_int2long r[2:3], r1
0005f8  17b1b002  sll.d r[3:4], r[2:3], r11
0005fc  ab800400  lui r1, 72
000600  1733c102  sll.d r[7:8], r[3:4], r12
000604  8b101510  add.s r1, r10, r1
000608  73346ffe  store.d r[7:8], -24(r30)
00060c  bbda5400  bneq r9, r5, 692
000610  6b518f00  load.d r[3:4], 8(r30)
000614  7d900500  xwait r11, 0
000618  0b226110  add.ul r[5:6], r[3:4], r[7:8]
00061c  6341cfff  loadli.w r2,  -28(r30)
000620  9f230000  addli r7, zero, 2
000624  bfa42300  blt.s r7, r2, 296
000628  1f530000  addli r6, zero, 5
00062c  9f110000  addli r3, zero, 1
000630  1f460000  addli r12, zero, 4
000634  1f610000  addli r2, zero, 6
000638  1d000300  lock zero, r6
00063c  15000014  dma_cfg zero, zero, zero, 10
000640  15003014  dma_cfg zero, zero, r3, 10
000644  15007014  dma_cfg zero, zero, r7, 10
000648  15007015  dma_cfg zero, zero, r23, 10
00064c  1500c014  dma_cfg zero, zero, r12, 10
000650  15006014  dma_cfg zero, zero, r6, 10
000654  15002014  dma_cfg zero, zero, r2, 10
000658  1f011000  addli r2, zero, 8
00065c  1500b014  dma_cfg zero, zero, r11, 10
000660  15002014  dma_cfg zero, zero, r2, 10
000664  1f111000  addli r2, zero, 9
000668  15002014  dma_cfg zero, zero, r2, 10
00066c  1f211000  addli r2, zero, 10
000670  15002014  dma_cfg zero, zero, r2, 10
000674  1f311000  addli r2, zero, 11
000678  15002014  dma_cfg zero, zero, r2, 10
00067c  1f411000  addli r2, zero, 12
000680  15002014  dma_cfg zero, zero, r2, 10
000684  1f511000  addli r2, zero, 13
000688  15002014  dma_cfg zero, zero, r2, 10
00068c  1f711000  addli r2, zero, 15
000690  1500d014  dma_cfg zero, zero, r13, 10
000694  15002014  dma_cfg zero, zero, r2, 10
000698  1f012000  addli r2, zero, 16
00069c  15002014  dma_cfg zero, zero, r2, 10
0006a0  1f112000  addli r2, zero, 17
0006a4  15002014  dma_cfg zero, zero, r2, 10
0006a8  1f212000  addli r2, zero, 18
0006ac  15002014  dma_cfg zero, zero, r2, 10
0006b0  1f312000  addli r2, zero, 19
0006b4  15002014  dma_cfg zero, zero, r2, 10
0006b8  1f412000  addli r2, zero, 20
0006bc  15002014  dma_cfg zero, zero, r2, 10
0006c0  1f512000  addli r2, zero, 21
0006c4  15002014  dma_cfg zero, zero, r2, 10
0006c8  1f612000  addli r2, zero, 22
0006cc  15002014  dma_cfg zero, zero, r2, 10
0006d0  1f712000  addli r2, zero, 23
0006d4  15002014  dma_cfg zero, zero, r2, 10
0006d8  1f013000  addli r2, zero, 24
0006dc  15002014  dma_cfg zero, zero, r2, 10
0006e0  1f113000  addli r2, zero, 25
0006e4  15002014  dma_cfg zero, zero, r2, 10
0006e8  1f213000  addli r2, zero, 26
0006ec  15002014  dma_cfg zero, zero, r2, 10
0006f0  1f313000  addli r2, zero, 27
0006f4  15002014  dma_cfg zero, zero, r2, 10
0006f8  1f413000  addli r2, zero, 28
0006fc  15002014  dma_cfg zero, zero, r2, 10
000700  1f513000  addli r2, zero, 29
000704  15002014  dma_cfg zero, zero, r2, 10
000708  1f613000  addli r2, zero, 30
00070c  15002014  dma_cfg zero, zero, r2, 10
000710  1f713000  addli r2, zero, 31
000714  15002014  dma_cfg zero, zero, r2, 10
000718  1f018000  addli r2, zero, 64
00071c  95810100  dma_cfg r3, r3, zero, 0
000720  95010002  dma_cfg r3, zero, zero, 1
000724  15000004  dma_cfg zero, zero, zero, 2
000728  95002006  dma_cfg r1, zero, r2, 3
00072c  150cc008  dma_cfg r24, zero, r12, 4
000730  1f060004  addli r12, zero, 512
000734  1506200a  dma_cfg r12, zero, r2, 5
000738  15000010  dma_cfg zero, zero, zero, 8
00073c  35000000  dma_run zero
000740  1500300a  dma_cfg zero, zero, r3, 5
000744  15000010  dma_cfg zero, zero, zero, 8
000748  1d100300  unlock r6
00074c  2b810400  lui r2, 72
000750  674d0ffe  storeli.w zero, -44(r30)
000754  670d0ffe  storeli.w zero, -48(r30)
000758  1f130000  addli r6, zero, 1
00075c  1f068000  addli r12, zero, 64
000760  9f610000  addli r3, zero, 6
000764  1b110104  ori r2, r2, 64
000768  0b112510  add.s r2, r10, r2
00076c  1f450000  addli r10, zero, 4
000770  1d000500  lock zero, r10
000774  15030300  dma_cfg r6, r6, zero, 0
000778  15800204  dma_cfg zero, r5, zero, 2
00077c  1501c206  dma_cfg r2, r4, r12, 3
000780  9f020004  addli r5, zero, 512
000784  1f010020  addli r2, zero, 4096
000788  1f520000  addli r4, zero, 5
00078c  150ca608  dma_cfg r24, r12, r10, 4
000790  9502c10a  dma_cfg r5, r2, r12, 5
000794  1f011000  addli r2, zero, 8
000798  15000010  dma_cfg zero, zero, zero, 8
00079c  35000000  dma_run zero
0007a0  1500600a  dma_cfg zero, zero, r6, 5
0007a4  15000010  dma_cfg zero, zero, zero, 8
0007a8  1d100500  unlock r10
0007ac  1d000200  lock zero, r4
0007b0  15000014  dma_cfg zero, zero, zero, 10
0007b4  15006014  dma_cfg zero, zero, r6, 10
0007b8  15007014  dma_cfg zero, zero, r7, 10
0007bc  15007015  dma_cfg zero, zero, r23, 10
0007c0  1500a014  dma_cfg zero, zero, r10, 10
0007c4  15004014  dma_cfg zero, zero, r4, 10
0007c8  15003014  dma_cfg zero, zero, r3, 10
0007cc  1500b014  dma_cfg zero, zero, r11, 10
0007d0  15002014  dma_cfg zero, zero, r2, 10
0007d4  1f111000  addli r2, zero, 9
0007d8  15002014  dma_cfg zero, zero, r2, 10
0007dc  1f211000  addli r2, zero, 10
0007e0  15002014  dma_cfg zero, zero, r2, 10
0007e4  1f311000  addli r2, zero, 11
0007e8  15002014  dma_cfg zero, zero, r2, 10
0007ec  1f411000  addli r2, zero, 12
0007f0  15002014  dma_cfg zero, zero, r2, 10
0007f4  1f511000  addli r2, zero, 13
0007f8  15002014  dma_cfg zero, zero, r2, 10
0007fc  1f711000  addli r2, zero, 15
000800  1500d014  dma_cfg zero, zero, r13, 10
000804  15002014  dma_cfg zero, zero, r2, 10
000808  1f012000  addli r2, zero, 16
00080c  15002014  dma_cfg zero, zero, r2, 10
000810  1f112000  addli r2, zero, 17
000814  15002014  dma_cfg zero, zero, r2, 10
000818  1f212000  addli r2, zero, 18
00081c  15002014  dma_cfg zero, zero, r2, 10
000820  1f312000  addli r2, zero, 19
000824  15002014  dma_cfg zero, zero, r2, 10
000828  1f412000  addli r2, zero, 20
00082c  15002014  dma_cfg zero, zero, r2, 10
000830  1f512000  addli r2, zero, 21
000834  15002014  dma_cfg zero, zero, r2, 10
000838  1f612000  addli r2, zero, 22
00083c  15002014  dma_cfg zero, zero, r2, 10
000840  1f712000  addli r2, zero, 23
000844  15002014  dma_cfg zero, zero, r2, 10
000848  1f013000  addli r2, zero, 24
00084c  15002014  dma_cfg zero, zero, r2, 10
000850  1f113000  addli r2, zero, 25
000854  15002014  dma_cfg zero, zero, r2, 10
000858  1f213000  addli r2, zero, 26
00085c  15002014  dma_cfg zero, zero, r2, 10
000860  1f313000  addli r2, zero, 27
000864  15002014  dma_cfg zero, zero, r2, 10
000868  1f413000  addli r2, zero, 28
00086c  15002014  dma_cfg zero, zero, r2, 10
000870  1f513000  addli r2, zero, 29
000874  15002014  dma_cfg zero, zero, r2, 10
000878  1f613000  addli r2, zero, 30
00087c  15002014  dma_cfg zero, zero, r2, 10
000880  1f713000  addli r2, zero, 31
000884  15002014  dma_cfg zero, zero, r2, 10
000888  15030300  dma_cfg r6, r6, zero, 0
00088c  15030002  dma_cfg r6, zero, zero, 1
000890  15000004  dma_cfg zero, zero, zero, 2
000894  9500c006  dma_cfg r1, zero, r12, 3
000898  9f100000  addli r1, zero, 1
00089c  150ca008  dma_cfg r24, zero, r10, 4
0008a0  9502c00a  dma_cfg r5, zero, r12, 5
0008a4  15000010  dma_cfg zero, zero, zero, 8
0008a8  35000000  dma_run zero
0008ac  1500100a  dma_cfg zero, zero, r1, 5
0008b0  15000010  dma_cfg zero, zero, zero, 8
0008b4  1d100200  unlock r4
0008b8  7d800100  xsignal r3, 0
0008bc  5b1c0000  j 224
0008c0  1f410000  addli r2, zero, 4
0008c4  37d12400  beq r9, r2, 84
0008c8  bb83b400  bneq r9, r11, 224
0008cc  1f610000  addli r2, zero, 6
0008d0  670d0ffe  storeli.w zero, -48(r30)
0008d4  7d100100  xwait r2, 0
0008d8  1f111000  addli r2, zero, 9
0008dc  7d100100  xwait r2, 0
0008e0  1d000000  lock zero, zero
0008e4  1f018000  addli r2, zero, 64
0008e8  01020000  ds_cfg r4, zero, 0
0008ec  010c0002  ds_cfg r24, zero, 1
0008f0  0101001c  ds_cfg r2, zero, 14
0008f4  010c001a  ds_cfg r24, zero, 13
0008f8  41852004  shuffle_coa r10, r1, r2, 2
0008fc  9f100000  addli r1, zero, 1
000900  1d100000  unlock zero
000904  7d800500  xsignal r11, 0
000908  674d1ffe  storeli.w r1, -44(r30)
00090c  9f001000  addli r1, zero, 8
000910  7d800000  xsignal r1, 0
000914  db170000  j 188
000918  9f420000  addli r5, zero, 4
00091c  9f001000  addli r1, zero, 8
000920  9f010000  addli r3, zero, 0
000924  1f110000  addli r2, zero, 1
000928  1f321000  addli r4, zero, 11
00092c  1f038000  addli r6, zero, 64
000930  7d900200  xwait r5, 0
000934  7d900000  xwait r1, 0
000938  9f100000  addli r1, zero, 1
00093c  7d100200  xwait r4, 0
000940  1bb2e100  slli r4, r3, 14
000944  9bb18100  slli r3, r3, 8
000948  1d800000  lock zero, r1
00094c  09038301  mm_cfg r6, r6, r24, 0
000950  1712a200  or r4, r4, r10
000954  97918100  or r3, r3, r8
000958  89821204  mm_cfg r5, r5, r1, 2
00095c  a9014510  mm r3, r10, r4, 8
000960  1b021100  andi r4, r2, 1
000964  9f110000  addli r3, zero, 1
000968  1f010000  addli r2, zero, 0
00096c  1d900000  unlock r1
000970  3b4f02fe  bneq r4, zero, -48
000974  9f500000  addli r1, zero, 5
000978  674d0ffe  storeli.w zero, -44(r30)
00097c  7d800000  xsignal r1, 0
000980  9f101000  addli r1, zero, 9
000984  7d800000  xsignal r1, 0
000988  9f100000  addli r1, zero, 1
00098c  670d1ffe  storeli.w r1, -48(r30)
000990  9f201000  addli r1, zero, 10
000994  7d800000  xsignal r1, 0
000998  9f100000  addli r1, zero, 1
00099c  eb510fff  load.d r[4:5], -16(r30)
0009a0  6b538ffe  load.d r[7:8], -24(r30)
0009a4  db060000  j 52
0009a8  bb807401  bneq r9, r23, 32
0009ac  9f201000  addli r1, zero, 10
0009b0  674d0ffe  storeli.w zero, -44(r30)
0009b4  670d0ffe  storeli.w zero, -48(r30)
0009b8  7d900000  xwait r1, 0
0009bc  9f501000  addli r1, zero, 13
0009c0  7d900000  xwait r1, 0
0009c4  db010000  j 12
0009c8  674d0ffe  storeli.w zero, -44(r30)
0009cc  670d0ffe  storeli.w zero, -48(r30)
0009d0  eb510fff  load.d r[4:5], -16(r30)
0009d4  9f100000  addli r1, zero, 1
0009d8  2b010600  lui r2, 96
0009dc  3d000000  xfence
0009e0  33050c28  zext_int2long r[11:12], r24
0009e4  00a00300  mfence { lm, sm, gm }
0009e8  0b1b2410  add.s r22, r8, r2
0009ec  1f71f001  addli r2, zero, 255
0009f0  80220104  csr_set csr5, r2
0009f4  1f71f000  addli r2, zero, 127
0009f8  00e00200  sync_core
0009fc  b30b0128  zext_int2long r[24:25], r2
000a00  b7f00400  beq r9, zero, 60
000a04  b7f81400  beq r9, r1, 572
000a08  e3409fff  loadli.w r1,  -52(r30)
000a0c  bbf00002  bneq r1, zero, 1084
000a10  9f300000  addli r1, zero, 3
000a14  b7f81402  beq r9, r1, 1596
000a18  e300afff  loadli.w r1,  -48(r30)
000a1c  bbf00004  bneq r1, zero, 2108
000a20  9f500000  addli r1, zero, 5
000a24  b7f81404  beq r9, r1, 2620
000a28  9f600000  addli r1, zero, 6
000a2c  b7f01406  beq r9, r1, 3132
000a30  e340afff  loadli.w r1,  -44(r30)
000a34  bbf80006  bneq r1, zero, 3644
000a38  5b060200  j 4144
000a3c  3d000000  xfence
000a40  33010028  zext_int2long r[3:4], zero
000a44  00a00300  mfence { lm, sm, gm }
000a48  db030000  j 28
000a4c  9f701000  addli r1, zero, 15
000a50  eb518fff  load.d r[4:5], -8(r30)
000a54  b3800028  zext_int2long r[2:3], r1
000a58  93a01104  setlt.ul r1, r[4:5], r[2:3]
000a5c  27910100  addli.d r[3:4], r[4:5], 1
000a60  37a70000  beq r1, zero, 456
000a64  9f700000  addli r1, zero, 7
000a68  733c2ffe  store.d r[3:4], -8(r30)
000a6c  17331102  sll.d r[7:8], r[3:4], r1
000a70  bb518b00  bneq r22, r8, 116
000a74  b3010028  zext_int2long r[4:5], zero
000a78  5b030000  j 24
000a7c  93a27105  setlt.ul r5, r[4:5], r[24:25]
000a80  8b101b10  add.s r1, r22, r1
000a84  a7910100  addli.d r[4:5], r[4:5], 1
000a88  73e02000  stores.w r2, 0(r1)
000a8c  378f02fe  beq r5, zero, -64
000a90  8ba06110  add.ul r[2:3], r[4:5], r[7:8]
000a94  9bb02000  slli r1, r1, 2
000a98  0b111410  add.s r2, r8, r1
000a9c  ef420100  loads.w r5, 0(r2)
000aa0  9784f200  and r9, r5, r15
000aa4  13819c04  setlt.u r2, r25, r9
000aa8  3b500100  bneq r2, zero, 20
000aac  1f810200  addli r2, r5, 0
000ab0  93849904  setlt.u r9, r19, r9
000ab4  3baf04fe  bneq r9, zero, -56
000ab8  db020000  j 20
000abc  2b014000  lui r2, 1024
000ac0  17912200  or r2, r5, r2
000ac4  93849904  setlt.u r9, r19, r9
000ac8  bbde04fe  bneq r9, zero, -76
000acc  1bc10201  srli r2, r5, 16
000ad0  1b011100  andi r2, r2, 1
000ad4  0b912210  add.s r2, r5, r2
000ad8  0b110111  add.s r2, r2, r16
000adc  17014101  and r2, r2, r20
000ae0  dbf3ffff  j -100
000ae4  33020028  zext_int2long r[5:6], zero
000ae8  db040000  j 36
000aec  27420200  addli.d r[5:6], r[5:6], 4
000af0  0b111b11  add.s r2, r22, r17
000af4  9320a200  seteq.d r1, r[5:6], r[11:12]
000af8  73665101  stores.w r21, 12(r2)
000afc  7364c101  stores.w r28, 8(r2)
000b00  7362c100  stores.w r12, 4(r2)
000b04  7360d100  stores.w r13, 0(r2)
000b08  3b9d00fe  bneq r1, zero, -188
000b0c  8b206210  add.ul r[2:3], r[5:6], r[7:8]
000b10  9bb82000  slli r17, r1, 2
000b14  8b161411  add.s r13, r8, r17
000b18  6fc7c600  loads.w r14, 12(r13)
000b1c  9704f700  and r9, r14, r15
000b20  93809c04  setlt.u r1, r25, r9
000b24  3bb00000  bneq r1, zero, 12
000b28  9f0a0700  addli r21, r14, 0
000b2c  db010000  j 12
000b30  ab004000  lui r1, 1024
000b34  971a1700  or r21, r14, r1
000b38  6fc98600  loads.w r18, 8(r13)
000b3c  9701f900  and r3, r18, r15
000b40  93803c04  setlt.u r1, r25, r3
000b44  3bb00000  bneq r1, zero, 12
000b48  1f0e0900  addli r28, r18, 0
000b4c  db010000  j 12
000b50  ab004000  lui r1, 1024
000b54  171e1900  or r28, r18, r1
000b58  efcd4600  loads.w r27, 4(r13)
000b5c  9780fd00  and r1, r27, r15
000b60  13811c04  setlt.u r2, r25, r1
000b64  3b300100  bneq r2, zero, 12
000b68  1f860d00  addli r12, r27, 0
000b6c  db010000  j 12
000b70  2b014000  lui r2, 1024
000b74  17962d00  or r12, r27, r2
000b78  6fc10600  loads.w r2, 0(r13)
000b7c  170df100  and r26, r2, r15
000b80  9386ac05  setlt.u r13, r25, r26
000b84  3bd00600  bneq r13, zero, 20
000b88  9f060100  addli r13, r2, 0
000b8c  138da905  setlt.u r26, r19, r26
000b90  37600d00  beq r26, zero, 24
000b94  5b050000  j 40
000b98  ab064000  lui r13, 1024
000b9c  9716d100  or r13, r2, r13
000ba0  138da905  setlt.u r26, r19, r26
000ba4  3b600d00  bneq r26, zero, 24
000ba8  9b460101  srli r13, r2, 16
000bac  9b861600  andi r13, r13, 1
000bb0  0b11d110  add.s r2, r2, r13
000bb4  0b110111  add.s r2, r2, r16
000bb8  97064101  and r13, r2, r20
000bbc  93801904  setlt.u r1, r19, r1
000bc0  37e00000  beq r1, zero, 24
000bc4  93803904  setlt.u r1, r19, r3
000bc8  b7b00000  beq r1, zero, 44
000bcc  93809904  setlt.u r1, r19, r9
000bd0  3bfc00fe  bneq r1, zero, -228
000bd4  db070000  j 60
000bd8  9bc00d01  srli r1, r27, 16
000bdc  9b801000  andi r1, r1, 1
000be0  8b901d10  add.s r1, r27, r1
000be4  8b900011  add.s r1, r1, r16
000be8  17864001  and r12, r1, r20
000bec  93803904  setlt.u r1, r19, r3
000bf0  3bff00fe  bneq r1, zero, -36
000bf4  9b400901  srli r1, r18, 16
000bf8  9b801000  andi r1, r1, 1
000bfc  8b101910  add.s r1, r18, r1
000c00  8b900011  add.s r1, r1, r16
000c04  178e4001  and r28, r1, r20
000c08  93809904  setlt.u r1, r19, r9
000c0c  bb8b00fe  bneq r1, zero, -288
000c10  9b400701  srli r1, r14, 16
000c14  9b801000  andi r1, r1, 1
000c18  8b101710  add.s r1, r14, r1
000c1c  8b900011  add.s r1, r1, r16
000c20  978a4001  and r21, r1, r20
000c24  5bd9ffff  j -312
000c28  00200100  mfence { sm }
000c2c  80340002  core_id r9
000c30  9f100000  addli r1, zero, 1
000c34  eb510fff  load.d r[4:5], -16(r30)
000c38  6b538ffe  load.d r[7:8], -24(r30)
000c3c  3bb714fe  bneq r9, r1, -564
000c40  9f002000  addli r1, zero, 16
000c44  3d000000  xfence
000c48  00a00300  mfence { lm, sm, gm }
000c4c  33810028  zext_int2long r[3:4], r1
000c50  db030000  j 28
000c54  9f703000  addli r1, zero, 31
000c58  eb518fff  load.d r[4:5], -8(r30)
000c5c  b3800028  zext_int2long r[2:3], r1
000c60  93a01104  setlt.ul r1, r[4:5], r[2:3]
000c64  27910100  addli.d r[3:4], r[4:5], 1
000c68  37a70000  beq r1, zero, 456
000c6c  9f700000  addli r1, zero, 7
000c70  733c2ffe  store.d r[3:4], -8(r30)
000c74  17331102  sll.d r[7:8], r[3:4], r1
000c78  bb518b00  bneq r22, r8, 116
000c7c  b3010028  zext_int2long r[4:5], zero
000c80  5b030000  j 24
000c84  93a27105  setlt.ul r5, r[4:5], r[24:25]
000c88  8b101b10  add.s r1, r22, r1
000c8c  a7910100  addli.d r[4:5], r[4:5], 1
000c90  73e02000  stores.w r2, 0(r1)
000c94  378f02fe  beq r5, zero, -64
000c98  8ba06110  add.ul r[2:3], r[4:5], r[7:8]
000c9c  9bb02000  slli r1, r1, 2
000ca0  0b111410  add.s r2, r8, r1
000ca4  ef420100  loads.w r5, 0(r2)
000ca8  9784f200  and r9, r5, r15
000cac  13819c04  setlt.u r2, r25, r9
000cb0  3b500100  bneq r2, zero, 20
000cb4  1f810200  addli r2, r5, 0
000cb8  93849904  setlt.u r9, r19, r9
000cbc  3baf04fe  bneq r9, zero, -56
000cc0  db020000  j 20
000cc4  2b014000  lui r2, 1024
000cc8  17912200  or r2, r5, r2
000ccc  93849904  setlt.u r9, r19, r9
000cd0  bbde04fe  bneq r9, zero, -76
000cd4  1bc10201  srli r2, r5, 16
000cd8  1b011100  andi r2, r2, 1
000cdc  0b912210  add.s r2, r5, r2
000ce0  0b110111  add.s r2, r2, r16
000ce4  17014101  and r2, r2, r20
000ce8  dbf3ffff  j -100
000cec  33020028  zext_int2long r[5:6], zero
000cf0  db040000  j 36
000cf4  27420200  addli.d r[5:6], r[5:6], 4
000cf8  0b111b11  add.s r2, r22, r17
000cfc  9320a200  seteq.d r1, r[5:6], r[11:12]
000d00  7366e100  stores.w r14, 12(r2)
000d04  73642101  stores.w r18, 8(r2)
000d08  7362b101  stores.w r27, 4(r2)
000d0c  7360d100  stores.w r13, 0(r2)
000d10  3b9d00fe  bneq r1, zero, -188
000d14  8b206210  add.ul r[2:3], r[5:6], r[7:8]
000d18  9bb82000  slli r17, r1, 2
000d1c  8b161411  add.s r13, r8, r17
000d20  efcac600  loads.w r21, 12(r13)
000d24  9784fa00  and r9, r21, r15
000d28  93809c04  setlt.u r1, r25, r9
000d2c  3bb00000  bneq r1, zero, 12
000d30  1f870a00  addli r14, r21, 0
000d34  db010000  j 12
000d38  ab004000  lui r1, 1024
000d3c  17971a00  or r14, r21, r1
000d40  6fce8600  loads.w r28, 8(r13)
000d44  9701fe00  and r3, r28, r15
000d48  93803c04  setlt.u r1, r25, r3
000d4c  3bb00000  bneq r1, zero, 12
000d50  1f090e00  addli r18, r28, 0
000d54  db010000  j 12
000d58  ab004000  lui r1, 1024
000d5c  17191e00  or r18, r28, r1
000d60  6fc64600  loads.w r12, 4(r13)
000d64  9700f600  and r1, r12, r15
000d68  13811c04  setlt.u r2, r25, r1
000d6c  3b300100  bneq r2, zero, 12
000d70  9f0d0600  addli r27, r12, 0
000d74  db010000  j 12
000d78  2b014000  lui r2, 1024
000d7c  971d2600  or r27, r12, r2
000d80  6fc10600  loads.w r2, 0(r13)
000d84  170df100  and r26, r2, r15
000d88  9386ac05  setlt.u r13, r25, r26
000d8c  3b810600  bneq r13, zero, 64
000d90  9f060100  addli r13, r2, 0
000d94  138da905  setlt.u r26, r19, r26
000d98  3b600d00  bneq r26, zero, 24
000d9c  9b460101  srli r13, r2, 16
000da0  9b861600  andi r13, r13, 1
000da4  0b11d110  add.s r2, r2, r13
000da8  0b110111  add.s r2, r2, r16
000dac  97064101  and r13, r2, r20
000db0  93801904  setlt.u r1, r19, r1
000db4  b7b00000  beq r1, zero, 44
000db8  93803904  setlt.u r1, r19, r3
000dbc  37810000  beq r1, zero, 64
000dc0  93809904  setlt.u r1, r19, r9
000dc4  bbcc00fe  bneq r1, zero, -208
000dc8  5b0a0000  j 80
000dcc  ab064000  lui r13, 1024
000dd0  9716d100  or r13, r2, r13
000dd4  138da905  setlt.u r26, r19, r26
000dd8  371f0dfe  beq r26, zero, -60
000ddc  dbfaffff  j -44
000de0  9b400601  srli r1, r12, 16
000de4  9b801000  andi r1, r1, 1
000de8  8b101610  add.s r1, r12, r1
000dec  8b900011  add.s r1, r1, r16
000df0  978d4001  and r27, r1, r20
000df4  93803904  setlt.u r1, r19, r3
000df8  3baf00fe  bneq r1, zero, -56
000dfc  9b400e01  srli r1, r28, 16
000e00  9b801000  andi r1, r1, 1
000e04  8b101e10  add.s r1, r28, r1
000e08  8b900011  add.s r1, r1, r16
000e0c  17894001  and r18, r1, r20
000e10  93809904  setlt.u r1, r19, r9
000e14  bb8b00fe  bneq r1, zero, -288
000e18  9bc00a01  srli r1, r21, 16
000e1c  9b801000  andi r1, r1, 1
000e20  8b901a10  add.s r1, r21, r1
000e24  8b900011  add.s r1, r1, r16
000e28  17874001  and r14, r1, r20
000e2c  5bd9ffff  j -312
000e30  00200100  mfence { sm }
000e34  80340002  core_id r9
000e38  eb510fff  load.d r[4:5], -16(r30)
000e3c  6b538ffe  load.d r[7:8], -24(r30)
000e40  e3409fff  loadli.w r1,  -52(r30)
000e44  37bf00fc  beq r1, zero, -1076
000e48  9f004000  addli r1, zero, 32
000e4c  3d000000  xfence
000e50  00a00300  mfence { lm, sm, gm }
000e54  33810028  zext_int2long r[3:4], r1
000e58  db030000  j 28
000e5c  9f705000  addli r1, zero, 47
000e60  eb518fff  load.d r[4:5], -8(r30)
000e64  b3800028  zext_int2long r[2:3], r1
000e68  93a01104  setlt.ul r1, r[4:5], r[2:3]
000e6c  27910100  addli.d r[3:4], r[4:5], 1
000e70  37a70000  beq r1, zero, 456
000e74  9f700000  addli r1, zero, 7
000e78  733c2ffe  store.d r[3:4], -8(r30)
000e7c  17331102  sll.d r[7:8], r[3:4], r1
000e80  bb518b00  bneq r22, r8, 116
000e84  b3010028  zext_int2long r[4:5], zero
000e88  5b030000  j 24
000e8c  93a27105  setlt.ul r5, r[4:5], r[24:25]
000e90  8b101b10  add.s r1, r22, r1
000e94  a7910100  addli.d r[4:5], r[4:5], 1
000e98  73e02000  stores.w r2, 0(r1)
000e9c  378f02fe  beq r5, zero, -64
000ea0  8ba06110  add.ul r[2:3], r[4:5], r[7:8]
000ea4  9bb02000  slli r1, r1, 2
000ea8  0b111410  add.s r2, r8, r1
000eac  ef420100  loads.w r5, 0(r2)
000eb0  9784f200  and r9, r5, r15
000eb4  13819c04  setlt.u r2, r25, r9
000eb8  3b500100  bneq r2, zero, 20
000ebc  1f810200  addli r2, r5, 0
000ec0  93849904  setlt.u r9, r19, r9
000ec4  3baf04fe  bneq r9, zero, -56
000ec8  db020000  j 20
000ecc  2b014000  lui r2, 1024
000ed0  17912200  or r2, r5, r2
000ed4  93849904  setlt.u r9, r19, r9
000ed8  bbde04fe  bneq r9, zero, -76
000edc  1bc10201  srli r2, r5, 16
000ee0  1b011100  andi r2, r2, 1
000ee4  0b912210  add.s r2, r5, r2
000ee8  0b110111  add.s r2, r2, r16
000eec  17014101  and r2, r2, r20
000ef0  dbf3ffff  j -100
000ef4  33020028  zext_int2long r[5:6], zero
000ef8  db040000  j 36
000efc  27420200  addli.d r[5:6], r[5:6], 4
000f00  0b111b11  add.s r2, r22, r17
000f04  9320a200  seteq.d r1, r[5:6], r[11:12]
000f08  7366e100  stores.w r14, 12(r2)
000f0c  73642101  stores.w r18, 8(r2)
000f10  7362b101  stores.w r27, 4(r2)
000f14  7360d100  stores.w r13, 0(r2)
000f18  3b9d00fe  bneq r1, zero, -188
000f1c  8b206210  add.ul r[2:3], r[5:6], r[7:8]
000f20  9bb82000  slli r17, r1, 2
000f24  8b161411  add.s r13, r8, r17
000f28  efcac600  loads.w r21, 12(r13)
000f2c  9784fa00  and r9, r21, r15
000f30  93809c04  setlt.u r1, r25, r9
000f34  3bb00000  bneq r1, zero, 12
000f38  1f870a00  addli r14, r21, 0
000f3c  db010000  j 12
000f40  ab004000  lui r1, 1024
000f44  17971a00  or r14, r21, r1
000f48  6fce8600  loads.w r28, 8(r13)
000f4c  9701fe00  and r3, r28, r15
000f50  93803c04  setlt.u r1, r25, r3
000f54  3bb00000  bneq r1, zero, 12
000f58  1f090e00  addli r18, r28, 0
000f5c  db010000  j 12
000f60  ab004000  lui r1, 1024
000f64  17191e00  or r18, r28, r1
000f68  6fc64600  loads.w r12, 4(r13)
000f6c  9700f600  and r1, r12, r15
000f70  13811c04  setlt.u r2, r25, r1
000f74  3b300100  bneq r2, zero, 12
000f78  9f0d0600  addli r27, r12, 0
000f7c  db010000  j 12
000f80  2b014000  lui r2, 1024
000f84  971d2600  or r27, r12, r2
000f88  6fc10600  loads.w r2, 0(r13)
000f8c  170df100  and r26, r2, r15
000f90  9386ac05  setlt.u r13, r25, r26
000f94  3b810600  bneq r13, zero, 64
000f98  9f060100  addli r13, r2, 0
000f9c  138da905  setlt.u r26, r19, r26
000fa0  3b600d00  bneq r26, zero, 24
000fa4  9b460101  srli r13, r2, 16
000fa8  9b861600  andi r13, r13, 1
000fac  0b11d110  add.s r2, r2, r13
000fb0  0b110111  add.s r2, r2, r16
000fb4  97064101  and r13, r2, r20
000fb8  93801904  setlt.u r1, r19, r1
000fbc  b7b00000  beq r1, zero, 44
000fc0  93803904  setlt.u r1, r19, r3
000fc4  37810000  beq r1, zero, 64
000fc8  93809904  setlt.u r1, r19, r9
000fcc  bbcc00fe  bneq r1, zero, -208
000fd0  5b0a0000  j 80
000fd4  ab064000  lui r13, 1024
000fd8  9716d100  or r13, r2, r13
000fdc  138da905  setlt.u r26, r19, r26
000fe0  371f0dfe  beq r26, zero, -60
000fe4  dbfaffff  j -44
000fe8  9b400601  srli r1, r12, 16
000fec  9b801000  andi r1, r1, 1
000ff0  8b101610  add.s r1, r12, r1
000ff4  8b900011  add.s r1, r1, r16
000ff8  978d4001  and r27, r1, r20
000ffc  93803904  setlt.u r1, r19, r3
001000  3baf00fe  bneq r1, zero, -56
001004  9b400e01  srli r1, r28, 16
001008  9b801000  andi r1, r1, 1
00100c  8b101e10  add.s r1, r28, r1
001010  8b900011  add.s r1, r1, r16
001014  17894001  and r18, r1, r20
001018  93809904  setlt.u r1, r19, r9
00101c  bb8b00fe  bneq r1, zero, -288
001020  9bc00a01  srli r1, r21, 16
001024  9b801000  andi r1, r1, 1
001028  8b901a10  add.s r1, r21, r1
00102c  8b900011  add.s r1, r1, r16
001030  17874001  and r14, r1, r20
001034  5bd9ffff  j -312
001038  00200100  mfence { sm }
00103c  80340002  core_id r9
001040  eb510fff  load.d r[4:5], -16(r30)
001044  6b538ffe  load.d r[7:8], -24(r30)
001048  9f300000  addli r1, zero, 3
00104c  3bb714fc  bneq r9, r1, -1588
001050  9f006000  addli r1, zero, 48
001054  3d000000  xfence
001058  00a00300  mfence { lm, sm, gm }
00105c  33810028  zext_int2long r[3:4], r1
001060  db030000  j 28
001064  9f707000  addli r1, zero, 63
001068  eb518fff  load.d r[4:5], -8(r30)
00106c  b3800028  zext_int2long r[2:3], r1
001070  93a01104  setlt.ul r1, r[4:5], r[2:3]
001074  27910100  addli.d r[3:4], r[4:5], 1
001078  37a70000  beq r1, zero, 456
00107c  9f700000  addli r1, zero, 7
001080  733c2ffe  store.d r[3:4], -8(r30)
001084  17331102  sll.d r[7:8], r[3:4], r1
001088  bb518b00  bneq r22, r8, 116
00108c  b3010028  zext_int2long r[4:5], zero
001090  5b030000  j 24
001094  93a27105  setlt.ul r5, r[4:5], r[24:25]
001098  8b101b10  add.s r1, r22, r1
00109c  a7910100  addli.d r[4:5], r[4:5], 1
0010a0  73e02000  stores.w r2, 0(r1)
0010a4  378f02fe  beq r5, zero, -64
0010a8  8ba06110  add.ul r[2:3], r[4:5], r[7:8]
0010ac  9bb02000  slli r1, r1, 2
0010b0  0b111410  add.s r2, r8, r1
0010b4  ef420100  loads.w r5, 0(r2)
0010b8  9784f200  and r9, r5, r15
0010bc  13819c04  setlt.u r2, r25, r9
0010c0  3b500100  bneq r2, zero, 20
0010c4  1f810200  addli r2, r5, 0
0010c8  93849904  setlt.u r9, r19, r9
0010cc  3baf04fe  bneq r9, zero, -56
0010d0  db020000  j 20
0010d4  2b014000  lui r2, 1024
0010d8  17912200  or r2, r5, r2
0010dc  93849904  setlt.u r9, r19, r9
0010e0  bbde04fe  bneq r9, zero, -76
0010e4  1bc10201  srli r2, r5, 16
0010e8  1b011100  andi r2, r2, 1
0010ec  0b912210  add.s r2, r5, r2
0010f0  0b110111  add.s r2, r2, r16
0010f4  17014101  and r2, r2, r20
0010f8  dbf3ffff  j -100
0010fc  33020028  zext_int2long r[5:6], zero
001100  db040000  j 36
001104  27420200  addli.d r[5:6], r[5:6], 4
001108  0b111b11  add.s r2, r22, r17
00110c  9320a200  seteq.d r1, r[5:6], r[11:12]
001110  7366e100  stores.w r14, 12(r2)
001114  73642101  stores.w r18, 8(r2)
001118  7362b101  stores.w r27, 4(r2)
00111c  7360d100  stores.w r13, 0(r2)
001120  3b9d00fe  bneq r1, zero, -188
001124  8b206210  add.ul r[2:3], r[5:6], r[7:8]
001128  9bb82000  slli r17, r1, 2
00112c  8b161411  add.s r13, r8, r17
001130  efcac600  loads.w r21, 12(r13)
001134  9784fa00  and r9, r21, r15
001138  93809c04  setlt.u r1, r25, r9
00113c  3bb00000  bneq r1, zero, 12
001140  1f870a00  addli r14, r21, 0
001144  db010000  j 12
001148  ab004000  lui r1, 1024
00114c  17971a00  or r14, r21, r1
001150  6fce8600  loads.w r28, 8(r13)
001154  9701fe00  and r3, r28, r15
001158  93803c04  setlt.u r1, r25, r3
00115c  3bb00000  bneq r1, zero, 12
001160  1f090e00  addli r18, r28, 0
001164  db010000  j 12
001168  ab004000  lui r1, 1024
00116c  17191e00  or r18, r28, r1
001170  6fc64600  loads.w r12, 4(r13)
001174  9700f600  and r1, r12, r15
001178  13811c04  setlt.u r2, r25, r1
00117c  3b300100  bneq r2, zero, 12
001180  9f0d0600  addli r27, r12, 0
001184  db010000  j 12
001188  2b014000  lui r2, 1024
00118c  971d2600  or r27, r12, r2
001190  6fc10600  loads.w r2, 0(r13)
001194  170df100  and r26, r2, r15
001198  9386ac05  setlt.u r13, r25, r26
00119c  3b810600  bneq r13, zero, 64
0011a0  9f060100  addli r13, r2, 0
0011a4  138da905  setlt.u r26, r19, r26
0011a8  3b600d00  bneq r26, zero, 24
0011ac  9b460101  srli r13, r2, 16
0011b0  9b861600  andi r13, r13, 1
0011b4  0b11d110  add.s r2, r2, r13
0011b8  0b110111  add.s r2, r2, r16
0011bc  97064101  and r13, r2, r20
0011c0  93801904  setlt.u r1, r19, r1
0011c4  b7b00000  beq r1, zero, 44
0011c8  93803904  setlt.u r1, r19, r3
0011cc  37810000  beq r1, zero, 64
0011d0  93809904  setlt.u r1, r19, r9
0011d4  bbcc00fe  bneq r1, zero, -208
0011d8  5b0a0000  j 80
0011dc  ab064000  lui r13, 1024
0011e0  9716d100  or r13, r2, r13
0011e4  138da905  setlt.u r26, r19, r26
0011e8  371f0dfe  beq r26, zero, -60
0011ec  dbfaffff  j -44
0011f0  9b400601  srli r1, r12, 16
0011f4  9b801000  andi r1, r1, 1
0011f8  8b101610  add.s r1, r12, r1
0011fc  8b900011  add.s r1, r1, r16
001200  978d4001  and r27, r1, r20
001204  93803904  setlt.u r1, r19, r3
001208  3baf00fe  bneq r1, zero, -56
00120c  9b400e01  srli r1, r28, 16
001210  9b801000  andi r1, r1, 1
001214  8b101e10  add.s r1, r28, r1
001218  8b900011  add.s r1, r1, r16
00121c  17894001  and r18, r1, r20
001220  93809904  setlt.u r1, r19, r9
001224  bb8b00fe  bneq r1, zero, -288
001228  9bc00a01  srli r1, r21, 16
00122c  9b801000  andi r1, r1, 1
001230  8b901a10  add.s r1, r21, r1
001234  8b900011  add.s r1, r1, r16
001238  17874001  and r14, r1, r20
00123c  5bd9ffff  j -312
001240  00200100  mfence { sm }
001244  80340002  core_id r9
001248  eb510fff  load.d r[4:5], -16(r30)
00124c  6b538ffe  load.d r[7:8], -24(r30)
001250  e300afff  loadli.w r1,  -48(r30)
001254  37bf00fa  beq r1, zero, -2100
001258  9f008000  addli r1, zero, 64
00125c  3d000000  xfence
001260  00a00300  mfence { lm, sm, gm }
001264  33810028  zext_int2long r[3:4], r1
001268  db030000  j 28
00126c  9f709000  addli r1, zero, 79
001270  eb518fff  load.d r[4:5], -8(r30)
001274  b3800028  zext_int2long r[2:3], r1
001278  93a01104  setlt.ul r1, r[4:5], r[2:3]
00127c  27910100  addli.d r[3:4], r[4:5], 1
001280  37a70000  beq r1, zero, 456
001284  9f700000  addli r1, zero, 7
001288  733c2ffe  store.d r[3:4], -8(r30)
00128c  17331102  sll.d r[7:8], r[3:4], r1
001290  bb518b00  bneq r22, r8, 116
001294  b3010028  zext_int2long r[4:5], zero
001298  5b030000  j 24
00129c  93a27105  setlt.ul r5, r[4:5], r[24:25]
0012a0  8b101b10  add.s r1, r22, r1
0012a4  a7910100  addli.d r[4:5], r[4:5], 1
0012a8  73e02000  stores.w r2, 0(r1)
0012ac  378f02fe  beq r5, zero, -64
0012b0  8ba06110  add.ul r[2:3], r[4:5], r[7:8]
0012b4  9bb02000  slli r1, r1, 2
0012b8  0b111410  add.s r2, r8, r1
0012bc  ef420100  loads.w r5, 0(r2)
0012c0  9784f200  and r9, r5, r15
0012c4  13819c04  setlt.u r2, r25, r9
0012c8  3b500100  bneq r2, zero, 20
0012cc  1f810200  addli r2, r5, 0
0012d0  93849904  setlt.u r9, r19, r9
0012d4  3baf04fe  bneq r9, zero, -56
0012d8  db020000  j 20
0012dc  2b014000  lui r2, 1024
0012e0  17912200  or r2, r5, r2
0012e4  93849904  setlt.u r9, r19, r9
0012e8  bbde04fe  bneq r9, zero, -76
0012ec  1bc10201  srli r2, r5, 16
0012f0  1b011100  andi r2, r2, 1
0012f4  0b912210  add.s r2, r5, r2
0012f8  0b110111  add.s r2, r2, r16
0012fc  17014101  and r2, r2, r20
001300  dbf3ffff  j -100
001304  33020028  zext_int2long r[5:6], zero
001308  db040000  j 36
00130c  27420200  addli.d r[5:6], r[5:6], 4
001310  0b111b11  add.s r2, r22, r17
001314  9320a200  seteq.d r1, r[5:6], r[11:12]
001318  7366e100  stores.w r14, 12(r2)
00131c  73642101  stores.w r18, 8(r2)
001320  7362b101  stores.w r27, 4(r2)
001324  7360d100  stores.w r13, 0(r2)
001328  3b9d00fe  bneq r1, zero, -188
00132c  8b206210  add.ul r[2:3], r[5:6], r[7:8]
001330  9bb82000  slli r17, r1, 2
001334  8b161411  add.s r13, r8, r17
001338  efcac600  loads.w r21, 12(r13)
00133c  9784fa00  and r9, r21, r15
001340  93809c04  setlt.u r1, r25, r9
001344  3bb00000  bneq r1, zero, 12
001348  1f870a00  addli r14, r21, 0
00134c  db010000  j 12
001350  ab004000  lui r1, 1024
001354  17971a00  or r14, r21, r1
001358  6fce8600  loads.w r28, 8(r13)
00135c  9701fe00  and r3, r28, r15
001360  93803c04  setlt.u r1, r25, r3
001364  3bb00000  bneq r1, zero, 12
001368  1f090e00  addli r18, r28, 0
00136c  db010000  j 12
001370  ab004000  lui r1, 1024
001374  17191e00  or r18, r28, r1
001378  6fc64600  loads.w r12, 4(r13)
00137c  9700f600  and r1, r12, r15
001380  13811c04  setlt.u r2, r25, r1
001384  3b300100  bneq r2, zero, 12
001388  9f0d0600  addli r27, r12, 0
00138c  db010000  j 12
001390  2b014000  lui r2, 1024
001394  971d2600  or r27, r12, r2
001398  6fc10600  loads.w r2, 0(r13)
00139c  170df100  and r26, r2, r15
0013a0  9386ac05  setlt.u r13, r25, r26
0013a4  3b810600  bneq r13, zero, 64
0013a8  9f060100  addli r13, r2, 0
0013ac  138da905  setlt.u r26, r19, r26
0013b0  3b600d00  bneq r26, zero, 24
0013b4  9b460101  srli r13, r2, 16
0013b8  9b861600  andi r13, r13, 1
0013bc  0b11d110  add.s r2, r2, r13
0013c0  0b110111  add.s r2, r2, r16
0013c4  97064101  and r13, r2, r20
0013c8  93801904  setlt.u r1, r19, r1
0013cc  b7b00000  beq r1, zero, 44
0013d0  93803904  setlt.u r1, r19, r3
0013d4  37810000  beq r1, zero, 64
0013d8  93809904  setlt.u r1, r19, r9
0013dc  bbcc00fe  bneq r1, zero, -208
0013e0  5b0a0000  j 80
0013e4  ab064000  lui r13, 1024
0013e8  9716d100  or r13, r2, r13
0013ec  138da905  setlt.u r26, r19, r26
0013f0  371f0dfe  beq r26, zero, -60
0013f4  dbfaffff  j -44
0013f8  9b400601  srli r1, r12, 16
0013fc  9b801000  andi r1, r1, 1
001400  8b101610  add.s r1, r12, r1
001404  8b900011  add.s r1, r1, r16
001408  978d4001  and r27, r1, r20
00140c  93803904  setlt.u r1, r19, r3
001410  3baf00fe  bneq r1, zero, -56
001414  9b400e01  srli r1, r28, 16
001418  9b801000  andi r1, r1, 1
00141c  8b101e10  add.s r1, r28, r1
001420  8b900011  add.s r1, r1, r16
001424  17894001  and r18, r1, r20
001428  93809904  setlt.u r1, r19, r9
00142c  bb8b00fe  bneq r1, zero, -288
001430  9bc00a01  srli r1, r21, 16
001434  9b801000  andi r1, r1, 1
001438  8b901a10  add.s r1, r21, r1
00143c  8b900011  add.s r1, r1, r16
001440  17874001  and r14, r1, r20
001444  5bd9ffff  j -312
001448  00200100  mfence { sm }
00144c  80340002  core_id r9
001450  eb510fff  load.d r[4:5], -16(r30)
001454  6b538ffe  load.d r[7:8], -24(r30)
001458  9f500000  addli r1, zero, 5
00145c  3bb714fa  bneq r9, r1, -2612
001460  9f00a000  addli r1, zero, 80
001464  3d000000  xfence
001468  00a00300  mfence { lm, sm, gm }
00146c  33810028  zext_int2long r[3:4], r1
001470  db030000  j 28
001474  9f70b000  addli r1, zero, 95
001478  eb518fff  load.d r[4:5], -8(r30)
00147c  b3800028  zext_int2long r[2:3], r1
001480  93a01104  setlt.ul r1, r[4:5], r[2:3]
001484  27910100  addli.d r[3:4], r[4:5], 1
001488  37a70000  beq r1, zero, 456
00148c  9f700000  addli r1, zero, 7
001490  733c2ffe  store.d r[3:4], -8(r30)
001494  17331102  sll.d r[7:8], r[3:4], r1
001498  bb518b00  bneq r22, r8, 116
00149c  b3010028  zext_int2long r[4:5], zero
0014a0  5b030000  j 24
0014a4  93a27105  setlt.ul r5, r[4:5], r[24:25]
0014a8  8b101b10  add.s r1, r22, r1
0014ac  a7910100  addli.d r[4:5], r[4:5], 1
0014b0  73e02000  stores.w r2, 0(r1)
0014b4  378f02fe  beq r5, zero, -64
0014b8  8ba06110  add.ul r[2:3], r[4:5], r[7:8]
0014bc  9bb02000  slli r1, r1, 2
0014c0  0b111410  add.s r2, r8, r1
0014c4  ef420100  loads.w r5, 0(r2)
0014c8  9784f200  and r9, r5, r15
0014cc  13819c04  setlt.u r2, r25, r9
0014d0  3b500100  bneq r2, zero, 20
0014d4  1f810200  addli r2, r5, 0
0014d8  93849904  setlt.u r9, r19, r9
0014dc  3baf04fe  bneq r9, zero, -56
0014e0  db020000  j 20
0014e4  2b014000  lui r2, 1024
0014e8  17912200  or r2, r5, r2
0014ec  93849904  setlt.u r9, r19, r9
0014f0  bbde04fe  bneq r9, zero, -76
0014f4  1bc10201  srli r2, r5, 16
0014f8  1b011100  andi r2, r2, 1
0014fc  0b912210  add.s r2, r5, r2
001500  0b110111  add.s r2, r2, r16
001504  17014101  and r2, r2, r20
001508  dbf3ffff  j -100
00150c  33020028  zext_int2long r[5:6], zero
001510  db040000  j 36
001514  27420200  addli.d r[5:6], r[5:6], 4
001518  0b111b11  add.s r2, r22, r17
00151c  9320a200  seteq.d r1, r[5:6], r[11:12]
001520  7366e100  stores.w r14, 12(r2)
001524  73642101  stores.w r18, 8(r2)
001528  7362b101  stores.w r27, 4(r2)
00152c  7360d100  stores.w r13, 0(r2)
001530  3b9d00fe  bneq r1, zero, -188
001534  8b206210  add.ul r[2:3], r[5:6], r[7:8]
001538  9bb82000  slli r17, r1, 2
00153c  8b161411  add.s r13, r8, r17
001540  efcac600  loads.w r21, 12(r13)
001544  9784fa00  and r9, r21, r15
001548  93809c04  setlt.u r1, r25, r9
00154c  3bb00000  bneq r1, zero, 12
001550  1f870a00  addli r14, r21, 0
001554  db010000  j 12
001558  ab004000  lui r1, 1024
00155c  17971a00  or r14, r21, r1
001560  6fce8600  loads.w r28, 8(r13)
001564  9701fe00  and r3, r28, r15
001568  93803c04  setlt.u r1, r25, r3
00156c  3bb00000  bneq r1, zero, 12
001570  1f090e00  addli r18, r28, 0
001574  db010000  j 12
001578  ab004000  lui r1, 1024
00157c  17191e00  or r18, r28, r1
001580  6fc64600  loads.w r12, 4(r13)
001584  9700f600  and r1, r12, r15
001588  13811c04  setlt.u r2, r25, r1
00158c  3b300100  bneq r2, zero, 12
001590  9f0d0600  addli r27, r12, 0
001594  db010000  j 12
001598  2b014000  lui r2, 1024
00159c  971d2600  or r27, r12, r2
0015a0  6fc10600  loads.w r2, 0(r13)
0015a4  170df100  and r26, r2, r15
0015a8  9386ac05  setlt.u r13, r25, r26
0015ac  3b810600  bneq r13, zero, 64
0015b0  9f060100  addli r13, r2, 0
0015b4  138da905  setlt.u r26, r19, r26
0015b8  3b600d00  bneq r26, zero, 24
0015bc  9b460101  srli r13, r2, 16
0015c0  9b861600  andi r13, r13, 1
0015c4  0b11d110  add.s r2, r2, r13
0015c8  0b110111  add.s r2, r2, r16
0015cc  97064101  and r13, r2, r20
0015d0  93801904  setlt.u r1, r19, r1
0015d4  b7b00000  beq r1, zero, 44
0015d8  93803904  setlt.u r1, r19, r3
0015dc  37810000  beq r1, zero, 64
0015e0  93809904  setlt.u r1, r19, r9
0015e4  bbcc00fe  bneq r1, zero, -208
0015e8  5b0a0000  j 80
0015ec  ab064000  lui r13, 1024
0015f0  9716d100  or r13, r2, r13
0015f4  138da905  setlt.u r26, r19, r26
0015f8  371f0dfe  beq r26, zero, -60
0015fc  dbfaffff  j -44
001600  9b400601  srli r1, r12, 16
001604  9b801000  andi r1, r1, 1
001608  8b101610  add.s r1, r12, r1
00160c  8b900011  add.s r1, r1, r16
001610  978d4001  and r27, r1, r20
001614  93803904  setlt.u r1, r19, r3
001618  3baf00fe  bneq r1, zero, -56
00161c  9b400e01  srli r1, r28, 16
001620  9b801000  andi r1, r1, 1
001624  8b101e10  add.s r1, r28, r1
001628  8b900011  add.s r1, r1, r16
00162c  17894001  and r18, r1, r20
001630  93809904  setlt.u r1, r19, r9
001634  bb8b00fe  bneq r1, zero, -288
001638  9bc00a01  srli r1, r21, 16
00163c  9b801000  andi r1, r1, 1
001640  8b901a10  add.s r1, r21, r1
001644  8b900011  add.s r1, r1, r16
001648  17874001  and r14, r1, r20
00164c  5bd9ffff  j -312
001650  00200100  mfence { sm }
001654  80340002  core_id r9
001658  eb510fff  load.d r[4:5], -16(r30)
00165c  6b538ffe  load.d r[7:8], -24(r30)
001660  9f600000  addli r1, zero, 6
001664  3bbf14f8  bneq r9, r1, -3124
001668  9f00c000  addli r1, zero, 96
00166c  3d000000  xfence
001670  00a00300  mfence { lm, sm, gm }
001674  33810028  zext_int2long r[3:4], r1
001678  db030000  j 28
00167c  9f70d000  addli r1, zero, 111
001680  eb518fff  load.d r[4:5], -8(r30)
001684  b3800028  zext_int2long r[2:3], r1
001688  93a01104  setlt.ul r1, r[4:5], r[2:3]
00168c  27910100  addli.d r[3:4], r[4:5], 1
001690  37a70000  beq r1, zero, 456
001694  9f700000  addli r1, zero, 7
001698  733c2ffe  store.d r[3:4], -8(r30)
00169c  17331102  sll.d r[7:8], r[3:4], r1
0016a0  bb518b00  bneq r22, r8, 116
0016a4  b3010028  zext_int2long r[4:5], zero
0016a8  5b030000  j 24
0016ac  93a27105  setlt.ul r5, r[4:5], r[24:25]
0016b0  8b101b10  add.s r1, r22, r1
0016b4  a7910100  addli.d r[4:5], r[4:5], 1
0016b8  73e02000  stores.w r2, 0(r1)
0016bc  378f02fe  beq r5, zero, -64
0016c0  8ba06110  add.ul r[2:3], r[4:5], r[7:8]
0016c4  9bb02000  slli r1, r1, 2
0016c8  0b111410  add.s r2, r8, r1
0016cc  ef420100  loads.w r5, 0(r2)
0016d0  9784f200  and r9, r5, r15
0016d4  13819c04  setlt.u r2, r25, r9
0016d8  3b500100  bneq r2, zero, 20
0016dc  1f810200  addli r2, r5, 0
0016e0  93849904  setlt.u r9, r19, r9
0016e4  3baf04fe  bneq r9, zero, -56
0016e8  db020000  j 20
0016ec  2b014000  lui r2, 1024
0016f0  17912200  or r2, r5, r2
0016f4  93849904  setlt.u r9, r19, r9
0016f8  bbde04fe  bneq r9, zero, -76
0016fc  1bc10201  srli r2, r5, 16
001700  1b011100  andi r2, r2, 1
001704  0b912210  add.s r2, r5, r2
001708  0b110111  add.s r2, r2, r16
00170c  17014101  and r2, r2, r20
001710  dbf3ffff  j -100
001714  33020028  zext_int2long r[5:6], zero
001718  db040000  j 36
00171c  27420200  addli.d r[5:6], r[5:6], 4
001720  0b111b11  add.s r2, r22, r17
001724  9320a200  seteq.d r1, r[5:6], r[11:12]
001728  7366e100  stores.w r14, 12(r2)
00172c  73642101  stores.w r18, 8(r2)
001730  7362b101  stores.w r27, 4(r2)
001734  7360d100  stores.w r13, 0(r2)
001738  3b9d00fe  bneq r1, zero, -188
00173c  8b206210  add.ul r[2:3], r[5:6], r[7:8]
001740  9bb82000  slli r17, r1, 2
001744  8b161411  add.s r13, r8, r17
001748  efcac600  loads.w r21, 12(r13)
00174c  9784fa00  and r9, r21, r15
001750  93809c04  setlt.u r1, r25, r9
001754  3bb00000  bneq r1, zero, 12
001758  1f870a00  addli r14, r21, 0
00175c  db010000  j 12
001760  ab004000  lui r1, 1024
001764  17971a00  or r14, r21, r1
001768  6fce8600  loads.w r28, 8(r13)
00176c  9701fe00  and r3, r28, r15
001770  93803c04  setlt.u r1, r25, r3
001774  3bb00000  bneq r1, zero, 12
001778  1f090e00  addli r18, r28, 0
00177c  db010000  j 12
001780  ab004000  lui r1, 1024
001784  17191e00  or r18, r28, r1
001788  6fc64600  loads.w r12, 4(r13)
00178c  9700f600  and r1, r12, r15
001790  13811c04  setlt.u r2, r25, r1
001794  3b300100  bneq r2, zero, 12
001798  9f0d0600  addli r27, r12, 0
00179c  db010000  j 12
0017a0  2b014000  lui r2, 1024
0017a4  971d2600  or r27, r12, r2
0017a8  6fc10600  loads.w r2, 0(r13)
0017ac  170df100  and r26, r2, r15
0017b0  9386ac05  setlt.u r13, r25, r26
0017b4  3b810600  bneq r13, zero, 64
0017b8  9f060100  addli r13, r2, 0
0017bc  138da905  setlt.u r26, r19, r26
0017c0  3b600d00  bneq r26, zero, 24
0017c4  9b460101  srli r13, r2, 16
0017c8  9b861600  andi r13, r13, 1
0017cc  0b11d110  add.s r2, r2, r13
0017d0  0b110111  add.s r2, r2, r16
0017d4  97064101  and r13, r2, r20
0017d8  93801904  setlt.u r1, r19, r1
0017dc  b7b00000  beq r1, zero, 44
0017e0  93803904  setlt.u r1, r19, r3
0017e4  37810000  beq r1, zero, 64
0017e8  93809904  setlt.u r1, r19, r9
0017ec  bbcc00fe  bneq r1, zero, -208
0017f0  5b0a0000  j 80
0017f4  ab064000  lui r13, 1024
0017f8  9716d100  or r13, r2, r13
0017fc  138da905  setlt.u r26, r19, r26
001800  371f0dfe  beq r26, zero, -60
001804  dbfaffff  j -44
001808  9b400601  srli r1, r12, 16
00180c  9b801000  andi r1, r1, 1
001810  8b101610  add.s r1, r12, r1
001814  8b900011  add.s r1, r1, r16
001818  978d4001  and r27, r1, r20
00181c  93803904  setlt.u r1, r19, r3
001820  3baf00fe  bneq r1, zero, -56
001824  9b400e01  srli r1, r28, 16
001828  9b801000  andi r1, r1, 1
00182c  8b101e10  add.s r1, r28, r1
001830  8b900011  add.s r1, r1, r16
001834  17894001  and r18, r1, r20
001838  93809904  setlt.u r1, r19, r9
00183c  bb8b00fe  bneq r1, zero, -288
001840  9bc00a01  srli r1, r21, 16
001844  9b801000  andi r1, r1, 1
001848  8b901a10  add.s r1, r21, r1
00184c  8b900011  add.s r1, r1, r16
001850  17874001  and r14, r1, r20
001854  5bd9ffff  j -312
001858  00200100  mfence { sm }
00185c  80340002  core_id r9
001860  eb510fff  load.d r[4:5], -16(r30)
001864  6b538ffe  load.d r[7:8], -24(r30)
001868  e340afff  loadli.w r1,  -44(r30)
00186c  b7f70000  beq r1, zero, 508
001870  9f00e000  addli r1, zero, 112
001874  3d000000  xfence
001878  00a00300  mfence { lm, sm, gm }
00187c  33810028  zext_int2long r[3:4], r1
001880  db020000  j 20
001884  6b518fff  load.d r[3:4], -8(r30)
001888  93207105  setlt.ul r1, r[3:4], r[24:25]
00188c  27110100  addli.d r[3:4], r[3:4], 1
001890  37a70000  beq r1, zero, 456
001894  9f700000  addli r1, zero, 7
001898  733c2ffe  store.d r[3:4], -8(r30)
00189c  17331102  sll.d r[7:8], r[3:4], r1
0018a0  bb518b00  bneq r22, r8, 116
0018a4  b3010028  zext_int2long r[4:5], zero
0018a8  5b030000  j 24
0018ac  93a27105  setlt.ul r5, r[4:5], r[24:25]
0018b0  8b101b10  add.s r1, r22, r1
0018b4  a7910100  addli.d r[4:5], r[4:5], 1
0018b8  73e02000  stores.w r2, 0(r1)
0018bc  37af02fe  beq r5, zero, -56
0018c0  8ba06110  add.ul r[2:3], r[4:5], r[7:8]
0018c4  9bb02000  slli r1, r1, 2
0018c8  0b111410  add.s r2, r8, r1
0018cc  ef420100  loads.w r5, 0(r2)
0018d0  9784f200  and r9, r5, r15
0018d4  13819c04  setlt.u r2, r25, r9
0018d8  3b500100  bneq r2, zero, 20
0018dc  1f810200  addli r2, r5, 0
0018e0  93849904  setlt.u r9, r19, r9
0018e4  3baf04fe  bneq r9, zero, -56
0018e8  db020000  j 20
0018ec  2b014000  lui r2, 1024
0018f0  17912200  or r2, r5, r2
0018f4  93849904  setlt.u r9, r19, r9
0018f8  bbde04fe  bneq r9, zero, -76
0018fc  1bc10201  srli r2, r5, 16
001900  1b011100  andi r2, r2, 1
001904  0b912210  add.s r2, r5, r2
001908  0b110111  add.s r2, r2, r16
00190c  17014101  and r2, r2, r20
001910  dbf3ffff  j -100
001914  33020028  zext_int2long r[5:6], zero
001918  db040000  j 36
00191c  27420200  addli.d r[5:6], r[5:6], 4
001920  0b111b11  add.s r2, r22, r17
001924  9320a200  seteq.d r1, r[5:6], r[11:12]
001928  7366e100  stores.w r14, 12(r2)
00192c  73642101  stores.w r18, 8(r2)
001930  7362b101  stores.w r27, 4(r2)
001934  7360d100  stores.w r13, 0(r2)
001938  3bbd00fe  bneq r1, zero, -180
00193c  8b206210  add.ul r[2:3], r[5:6], r[7:8]
001940  9bb82000  slli r17, r1, 2
001944  8b161411  add.s r13, r8, r17
001948  efcac600  loads.w r21, 12(r13)
00194c  9784fa00  and r9, r21, r15
001950  93809c04  setlt.u r1, r25, r9
001954  3bb00000  bneq r1, zero, 12
001958  1f870a00  addli r14, r21, 0
00195c  db010000  j 12
001960  ab004000  lui r1, 1024
001964  17971a00  or r14, r21, r1
001968  6fce8600  loads.w r28, 8(r13)
00196c  9701fe00  and r3, r28, r15
001970  93803c04  setlt.u r1, r25, r3
001974  3bb00000  bneq r1, zero, 12
001978  1f090e00  addli r18, r28, 0
00197c  db010000  j 12
001980  ab004000  lui r1, 1024
001984  17191e00  or r18, r28, r1
001988  6fc64600  loads.w r12, 4(r13)
00198c  9700f600  and r1, r12, r15
001990  13811c04  setlt.u r2, r25, r1
001994  3b300100  bneq r2, zero, 12
001998  9f0d0600  addli r27, r12, 0
00199c  db010000  j 12
0019a0  2b014000  lui r2, 1024
0019a4  971d2600  or r27, r12, r2
0019a8  6fc10600  loads.w r2, 0(r13)
0019ac  170df100  and r26, r2, r15
0019b0  9386ac05  setlt.u r13, r25, r26
0019b4  3b810600  bneq r13, zero, 64
0019b8  9f060100  addli r13, r2, 0
0019bc  138da905  setlt.u r26, r19, r26
0019c0  3b600d00  bneq r26, zero, 24
0019c4  9b460101  srli r13, r2, 16
0019c8  9b861600  andi r13, r13, 1
0019cc  0b11d110  add.s r2, r2, r13
0019d0  0b110111  add.s r2, r2, r16
0019d4  97064101  and r13, r2, r20
0019d8  93801904  setlt.u r1, r19, r1
0019dc  b7b00000  beq r1, zero, 44
0019e0  93803904  setlt.u r1, r19, r3
0019e4  37810000  beq r1, zero, 64
0019e8  93809904  setlt.u r1, r19, r9
0019ec  bbcc00fe  bneq r1, zero, -208
0019f0  5b0a0000  j 80
0019f4  ab064000  lui r13, 1024
0019f8  9716d100  or r13, r2, r13
0019fc  138da905  setlt.u r26, r19, r26
001a00  371f0dfe  beq r26, zero, -60
001a04  dbfaffff  j -44
001a08  9b400601  srli r1, r12, 16
001a0c  9b801000  andi r1, r1, 1
001a10  8b101610  add.s r1, r12, r1
001a14  8b900011  add.s r1, r1, r16
001a18  978d4001  and r27, r1, r20
001a1c  93803904  setlt.u r1, r19, r3
001a20  3baf00fe  bneq r1, zero, -56
001a24  9b400e01  srli r1, r28, 16
001a28  9b801000  andi r1, r1, 1
001a2c  8b101e10  add.s r1, r28, r1
001a30  8b900011  add.s r1, r1, r16
001a34  17894001  and r18, r1, r20
001a38  93809904  setlt.u r1, r19, r9
001a3c  bb8b00fe  bneq r1, zero, -288
001a40  9bc00a01  srli r1, r21, 16
001a44  9b801000  andi r1, r1, 1
001a48  8b901a10  add.s r1, r21, r1
001a4c  8b900011  add.s r1, r1, r16
001a50  17874001  and r14, r1, r20
001a54  5bd9ffff  j -312
001a58  00200100  mfence { sm }
001a5c  80340002  core_id r9
001a60  eb510fff  load.d r[4:5], -16(r30)
001a64  6b538ffe  load.d r[7:8], -24(r30)
001a68  9f70f001  addli r1, zero, 255
001a6c  9f3b0000  addli r23, zero, 3
001a70  80a20004  csr_set csr5, r1
001a74  00e00200  sync_core
001a78  b7ed74f3  beq r9, r23, -6280
001a7c  eb5a8ffd  load.d r[22:23], -40(r30)
001a80  1f0c0001  addli r24, zero, 128
001a84  3b9e04f2  bneq r9, zero, -6268
001a88  e3007fff  loadli.w r1,  -72(r30)
001a8c  e3427fff  loadli.w r5,  -68(r30)
001a90  27860100  addli.d r[13:14], r[4:5], 0
001a94  a7080300  addli.d r[18:19], r[7:8], 0
001a98  9f332000  addli r7, zero, 19
001a9c  9bb07000  slli r1, r1, 7
001aa0  9bb27200  slli r5, r5, 7
001aa4  b3800028  zext_int2long r[2:3], r1
001aa8  b3920228  sext_int2long r[6:7], r5
001aac  8ba1c040  min.ul r[4:5], r[2:3], r[13:14]
001ab0  0bb6c240  min.sl r[13:14], r[6:7], r[13:14]
001ab4  a7810101  addli.d r[4:5], r[4:5], 128
001ab8  8ba11148  max.ul r[4:5], r[4:5], r[2:3]
001abc  8bb01118  sub.sl r[2:3], r[4:5], r[2:3]
001ac0  a7010601  addli.d r[4:5], r[13:14], 128
001ac4  6b560ffc  load.d r[13:14], -64(r30)
001ac8  8bb15148  max.sl r[4:5], r[4:5], r[6:7]
001acc  8ba0a040  min.ul r[2:3], r[2:3], r[11:12]
001ad0  17367602  sll.d r[13:14], r[13:14], r7
001ad4  9f431000  addli r7, zero, 12
001ad8  8bb15118  sub.sl r[4:5], r[4:5], r[6:7]
001adc  eb520f01  load.d r[6:7], 16(r30)
001ae0  7d900300  xwait r7, 0
001ae4  ab030600  lui r7, 96
001ae8  8bb1a140  min.sl r[4:5], r[4:5], r[11:12]
001aec  9f550000  addli r11, zero, 5
001af0  1f150000  addli r10, zero, 1
001af4  8ba2c210  add.ul r[6:7], r[6:7], r[13:14]
001af8  9b930304  ori r7, r7, 64
001afc  1f068000  addli r12, zero, 64
001b00  1d800500  lock zero, r11
001b04  15050500  dma_cfg r10, r10, zero, 0
001b08  8ba21211  add.ul r[6:7], r[6:7], r[18:19]
001b0c  8b137410  add.s r7, r8, r7
001b10  1ff43000  addli r8, r1, 31
001b14  9bb01000  slli r1, r1, 1
001b18  1f010004  addli r2, zero, 512
001b1c  15000502  dma_cfg zero, r10, zero, 1
001b20  15030004  dma_cfg r6, zero, zero, 2
001b24  9b80e003  andi r1, r1, 62
001b28  9582c306  dma_cfg r5, r7, r12, 3
001b2c  9b425400  srli r5, r8, 5
001b30  15065c08  dma_cfg r12, r24, r5, 4
001b34  9f020020  addli r5, zero, 4096
001b38  9502310a  dma_cfg r5, r2, r3, 5
001b3c  15001010  dma_cfg zero, zero, r1, 8
001b40  35000000  dma_run zero
001b44  1500a00a  dma_cfg zero, zero, r10, 5
001b48  9f501000  addli r1, zero, 13
001b4c  15000010  dma_cfg zero, zero, zero, 8
001b50  1d900500  unlock r11
001b54  7d800000  xsignal r1, 0
001b58  5bd6fcff  j -6480
001b5c  7d000000  xsignal zero, 0
001b60  bbe00400  bneq r9, zero, 56
001b64  9f200000  addli r1, zero, 2
001b68  7d100000  xwait zero, 0
001b6c  7d100000  xwait zero, 0
001b70  7d100000  xwait zero, 0
001b74  7d100000  xwait zero, 0
001b78  7d100000  xwait zero, 0
001b7c  7d100000  xwait zero, 0
001b80  7d100000  xwait zero, 0
001b84  7d100000  xwait zero, 0
001b88  1d800000  lock zero, r1
001b8c  0d000020  ew_cfg zero, zero, zero, 16
001b90  1d900000  unlock r1
001b94  7d400000  xsignal_mode_cfg zero
001b98  9f8ece00  addli sp, sp, 96
001b9c  00a00300  mfence { lm, sm, gm }
001ba0  00100000  exit
001ba4  00100000  exit
001ba8  00100000  exit
001bac  00100000  exit
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
