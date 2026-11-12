; SHA-256 54e653f68983ee2dec265a318c97e6898223d7537970cdc775e35cafdee8b791
; P800 SDNN · XTDK LLVM 19 · 1641 / 1641 words decoded
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
0000b4  9f8eaefe  addli sp, sp, -176
0000b8  9f100000  addli r1, zero, 1
0000bc  80340002  core_id r9
0000c0  1f8fee00  addli r30, sp, 112
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
00019c  4b06110a  ble.s r2, r1, 5504
0001a0  33110128  sext_int2long r[3:4], r2
0001a4  33930028  sext_int2long r[7:8], r1
0001a8  1f380000  addli r16, zero, 3
0001ac  9f0a8000  addli r21, zero, 64
0001b0  1f790000  addli r18, zero, 7
0001b4  9f190000  addli r19, zero, 1
0001b8  2b0c4000  lui r24, 1024
0001bc  2b02807f  lui r4, 522240
0001c0  ab02ffff  lui r5, 1048560
0001c4  1f0a0000  addli r20, zero, 0
0001c8  73302ffa  store.d r[3:4], -96(r30)
0001cc  1f71f00f  addli r2, zero, 2047
0001d0  ab80ffff  lui r1, 1048568
0001d4  733c1ff8  store.d r[2:3], -104(r30)
0001d8  abf0ff7f  lui r1, 524287
0001dc  2bf17f7f  lui r2, 522239
0001e0  9b96f0ff  ori r13, r1, 4095
0001e4  ab700000  lui r1, 7
0001e8  9b18f1ff  ori r17, r2, 4095
0001ec  1b97f0ff  ori r14, r1, 4095
0001f0  b3000028  zext_int2long r[2:3], zero
0001f4  73381ff8  store.d r[2:3], -112(r30)
0001f8  5b070000  j 56
0001fc  9f301000  addli r1, zero, 11
000200  7d800000  xsignal r1, 0
000204  9f401000  addli r1, zero, 12
000208  7d800000  xsignal r1, 0
00020c  6b538ffd  load.d r[7:8], -40(r30)
000210  eb500ffa  load.d r[2:3], -96(r30)
000214  630acfff  loadli.w r20,  -32(r30)
000218  1f380000  addli r16, zero, 3
00021c  9f0a8000  addli r21, zero, 64
000220  27130300  addli.d r[7:8], r[7:8], 1
000224  1f1a0a00  addli r20, r20, 1
000228  93301304  setlt.sl r1, r[7:8], r[2:3]
00022c  b7c3000a  beq r1, zero, 5360
000230  e3004f00  loadli.w r1,  32(r30)
000234  63413f00  loadli.w r2,  28(r30)
000238  9f011000  addli r3, zero, 8
00023c  733c6ffc  store.d r[7:8], -40(r30)
000240  9f4c0000  addli r25, zero, 4
000244  8b101330  div.s r1, r6, r1
000248  0b942030  div.s r8, r1, r2
00024c  0b155431  div.s r10, r8, r21
000250  9b303500  slli r1, r10, 3
000254  0b911118  sub.s r2, r3, r1
000258  8b173140  min.s r15, r2, r3
00025c  0b11f438  mod.s r2, r8, r15
000260  0b111110  add.s r2, r2, r1
000264  93002904  setlt.u r1, r18, r2
000268  33030128  zext_int2long r[7:8], r2
00026c  e74b2ffe  storeli.w r2, -68(r30)
000270  1f411000  addli r2, zero, 12
000274  73306ffc  store.d r[7:8], -64(r30)
000278  17332302  sll.d r[7:8], r[7:8], r2
00027c  3bb00000  bneq r1, zero, 12
000280  eb550ff9  load.d r[12:13], -112(r30)
000284  db010000  j 12
000288  eb508ff9  load.d r[2:3], -104(r30)
00028c  97051302  and.d r[12:13], r[7:8], r[2:3]
000290  1f0d0a00  addli r26, r20, 0
000294  1f018003  addli r2, zero, 448
000298  0b1a0d39  mod.s r20, r26, r16
00029c  b30d0128  zext_int2long r[28:29], r2
0002a0  2b810100  lui r2, 24
0002a4  670eafff  storeli.w r26, -32(r30)
0002a8  7334bfff  store.d r[28:29], -24(r30)
0002ac  9b30ea00  slli r1, r20, 14
0002b0  0b912010  add.s r2, r1, r2
0002b4  3bab3401  bneq r9, r19, 712
0002b8  0b33b318  sub.sl r[7:8], r[7:8], r[12:13]
0002bc  1f6b0000  addli r22, zero, 6
0002c0  6b590ffc  load.d r[19:20], -64(r30)
0002c4  9f5b1000  addli r23, zero, 13
0002c8  9f710000  addli r3, zero, 7
0002cc  7d100800  xwait r16, 0
0002d0  17536303  sra.d r[7:8], r[7:8], r22
0002d4  17397903  sll.d r[19:20], r[19:20], r23
0002d8  8b35b341  min.sl r[12:13], r[7:8], r[28:29]
0002dc  0bb36518  sub.sl r[7:8], r[12:13], r[7:8]
0002e0  eb550f00  load.d r[12:13], 0(r30)
0002e4  1f038300  addli r6, r6, 64
0002e8  0ba92511  add.ul r[19:20], r[12:13], r[19:20]
0002ec  9f250000  addli r11, zero, 2
0002f0  bf84a501  blt.s r11, r26, 288
0002f4  1f560000  addli r12, zero, 5
0002f8  9f130000  addli r7, zero, 1
0002fc  1d000600  lock zero, r12
000300  15000014  dma_cfg zero, zero, zero, 10
000304  15007014  dma_cfg zero, zero, r7, 10
000308  1500b014  dma_cfg zero, zero, r11, 10
00030c  15000015  dma_cfg zero, zero, r16, 10
000310  15009015  dma_cfg zero, zero, r25, 10
000314  1500c014  dma_cfg zero, zero, r12, 10
000318  15006015  dma_cfg zero, zero, r22, 10
00031c  15003014  dma_cfg zero, zero, r3, 10
000320  9f011000  addli r3, zero, 8
000324  15003014  dma_cfg zero, zero, r3, 10
000328  9f111000  addli r3, zero, 9
00032c  15003014  dma_cfg zero, zero, r3, 10
000330  9f211000  addli r3, zero, 10
000334  15003014  dma_cfg zero, zero, r3, 10
000338  9f311000  addli r3, zero, 11
00033c  15003014  dma_cfg zero, zero, r3, 10
000340  9f411000  addli r3, zero, 12
000344  15003014  dma_cfg zero, zero, r3, 10
000348  9f611000  addli r3, zero, 14
00034c  15007015  dma_cfg zero, zero, r23, 10
000350  15003014  dma_cfg zero, zero, r3, 10
000354  9f711000  addli r3, zero, 15
000358  15003014  dma_cfg zero, zero, r3, 10
00035c  9f012000  addli r3, zero, 16
000360  15003014  dma_cfg zero, zero, r3, 10
000364  9f112000  addli r3, zero, 17
000368  15003014  dma_cfg zero, zero, r3, 10
00036c  9f212000  addli r3, zero, 18
000370  15003014  dma_cfg zero, zero, r3, 10
000374  9f312000  addli r3, zero, 19
000378  15003014  dma_cfg zero, zero, r3, 10
00037c  9f412000  addli r3, zero, 20
000380  15003014  dma_cfg zero, zero, r3, 10
000384  9f512000  addli r3, zero, 21
000388  15003014  dma_cfg zero, zero, r3, 10
00038c  9f612000  addli r3, zero, 22
000390  15003014  dma_cfg zero, zero, r3, 10
000394  9f712000  addli r3, zero, 23
000398  15003014  dma_cfg zero, zero, r3, 10
00039c  9f013000  addli r3, zero, 24
0003a0  15003014  dma_cfg zero, zero, r3, 10
0003a4  9f113000  addli r3, zero, 25
0003a8  15003014  dma_cfg zero, zero, r3, 10
0003ac  9f213000  addli r3, zero, 26
0003b0  15003014  dma_cfg zero, zero, r3, 10
0003b4  9f313000  addli r3, zero, 27
0003b8  15003014  dma_cfg zero, zero, r3, 10
0003bc  9f413000  addli r3, zero, 28
0003c0  15003014  dma_cfg zero, zero, r3, 10
0003c4  9f513000  addli r3, zero, 29
0003c8  15003014  dma_cfg zero, zero, r3, 10
0003cc  9f613000  addli r3, zero, 30
0003d0  15003014  dma_cfg zero, zero, r3, 10
0003d4  9f713000  addli r3, zero, 31
0003d8  15003014  dma_cfg zero, zero, r3, 10
0003dc  9f010001  addli r3, zero, 128
0003e0  95830300  dma_cfg r7, r7, zero, 0
0003e4  95030002  dma_cfg r7, zero, zero, 1
0003e8  15000004  dma_cfg zero, zero, zero, 2
0003ec  15015007  dma_cfg r2, zero, r21, 3
0003f0  9501b008  dma_cfg r3, zero, r11, 4
0003f4  9f010002  addli r3, zero, 256
0003f8  9501500b  dma_cfg r3, zero, r21, 5
0003fc  15000010  dma_cfg zero, zero, zero, 8
000400  35000000  dma_run zero
000404  1500700a  dma_cfg zero, zero, r7, 5
000408  15000010  dma_cfg zero, zero, zero, 8
00040c  1d100600  unlock r12
000410  ab810100  lui r3, 24
000414  1f460000  addli r12, zero, 4
000418  e74c0ffe  storeli.w zero, -52(r30)
00041c  9f130000  addli r7, zero, 1
000420  9f0c0001  addli r25, zero, 128
000424  1f0d0002  addli r26, zero, 256
000428  9b910104  ori r3, r3, 64
00042c  1d000600  lock zero, r12
000430  95830300  dma_cfg r7, r7, zero, 0
000434  9f530000  addli r7, zero, 5
000438  8b913010  add.s r3, r1, r3
00043c  15800904  dma_cfg zero, r19, zero, 2
000440  95015907  dma_cfg r3, r18, r21, 3
000444  9f190000  addli r19, zero, 1
000448  1f790000  addli r18, zero, 7
00044c  9f011000  addli r3, zero, 8
000450  958cba08  dma_cfg r25, r21, r11, 4
000454  158d6c0a  dma_cfg r26, r25, r6, 5
000458  15000010  dma_cfg zero, zero, zero, 8
00045c  35000000  dma_run zero
000460  1500300b  dma_cfg zero, zero, r19, 5
000464  15000010  dma_cfg zero, zero, zero, 8
000468  1d100600  unlock r12
00046c  1d800300  lock zero, r7
000470  15000014  dma_cfg zero, zero, zero, 10
000474  15003015  dma_cfg zero, zero, r19, 10
000478  1500b014  dma_cfg zero, zero, r11, 10
00047c  15000015  dma_cfg zero, zero, r16, 10
000480  1500c014  dma_cfg zero, zero, r12, 10
000484  15007014  dma_cfg zero, zero, r7, 10
000488  15006015  dma_cfg zero, zero, r22, 10
00048c  15002015  dma_cfg zero, zero, r18, 10
000490  15003014  dma_cfg zero, zero, r3, 10
000494  9f111000  addli r3, zero, 9
000498  15003014  dma_cfg zero, zero, r3, 10
00049c  9f211000  addli r3, zero, 10
0004a0  15003014  dma_cfg zero, zero, r3, 10
0004a4  9f311000  addli r3, zero, 11
0004a8  15003014  dma_cfg zero, zero, r3, 10
0004ac  9f411000  addli r3, zero, 12
0004b0  15003014  dma_cfg zero, zero, r3, 10
0004b4  9f611000  addli r3, zero, 14
0004b8  15007015  dma_cfg zero, zero, r23, 10
0004bc  15003014  dma_cfg zero, zero, r3, 10
0004c0  9f711000  addli r3, zero, 15
0004c4  15003014  dma_cfg zero, zero, r3, 10
0004c8  9f012000  addli r3, zero, 16
0004cc  15003014  dma_cfg zero, zero, r3, 10
0004d0  9f112000  addli r3, zero, 17
0004d4  15003014  dma_cfg zero, zero, r3, 10
0004d8  9f212000  addli r3, zero, 18
0004dc  15003014  dma_cfg zero, zero, r3, 10
0004e0  9f312000  addli r3, zero, 19
0004e4  15003014  dma_cfg zero, zero, r3, 10
0004e8  9f412000  addli r3, zero, 20
0004ec  15003014  dma_cfg zero, zero, r3, 10
0004f0  9f512000  addli r3, zero, 21
0004f4  15003014  dma_cfg zero, zero, r3, 10
0004f8  9f612000  addli r3, zero, 22
0004fc  15003014  dma_cfg zero, zero, r3, 10
000500  9f712000  addli r3, zero, 23
000504  15003014  dma_cfg zero, zero, r3, 10
000508  9f013000  addli r3, zero, 24
00050c  15003014  dma_cfg zero, zero, r3, 10
000510  9f113000  addli r3, zero, 25
000514  15003014  dma_cfg zero, zero, r3, 10
000518  9f213000  addli r3, zero, 26
00051c  15003014  dma_cfg zero, zero, r3, 10
000520  9f313000  addli r3, zero, 27
000524  15003014  dma_cfg zero, zero, r3, 10
000528  9f413000  addli r3, zero, 28
00052c  15003014  dma_cfg zero, zero, r3, 10
000530  9f513000  addli r3, zero, 29
000534  15003014  dma_cfg zero, zero, r3, 10
000538  9f613000  addli r3, zero, 30
00053c  15003014  dma_cfg zero, zero, r3, 10
000540  9f713000  addli r3, zero, 31
000544  15003014  dma_cfg zero, zero, r3, 10
000548  95890900  dma_cfg r19, r19, zero, 0
00054c  95090002  dma_cfg r19, zero, zero, 1
000550  15000004  dma_cfg zero, zero, zero, 2
000554  15015007  dma_cfg r2, zero, r21, 3
000558  950cb008  dma_cfg r25, zero, r11, 4
00055c  150d600a  dma_cfg r26, zero, r6, 5
000560  15000010  dma_cfg zero, zero, zero, 8
000564  35000000  dma_run zero
000568  1500300b  dma_cfg zero, zero, r19, 5
00056c  15000010  dma_cfg zero, zero, zero, 8
000570  1d900300  unlock r7
000574  7d800500  xsignal r11, 0
000578  db090000  j 76
00057c  9f210000  addli r3, zero, 2
000580  3b813400  bneq r9, r3, 64
000584  1f530000  addli r6, zero, 5
000588  7d900100  xwait r3, 0
00058c  7d100300  xwait r6, 0
000590  1d000000  lock zero, zero
000594  81010000  ds_cfg r3, zero, 0
000598  810a0002  ds_cfg r21, zero, 1
00059c  810a001c  ds_cfg r21, zero, 14
0005a0  810a001a  ds_cfg r21, zero, 13
0005a4  a1105103  shuffle_batch r1, r2, r21, 1
0005a8  1f110000  addli r2, zero, 1
0005ac  1d100000  unlock zero
0005b0  7d000800  xsignal r16, 0
0005b4  e74c2ffe  storeli.w r2, -52(r30)
0005b8  7d800c00  xsignal r25, 0
0005bc  5b010000  j 8
0005c0  e74c0ffe  storeli.w zero, -52(r30)
0005c4  1b316500  slli r2, r10, 6
0005c8  6b5b8ffe  load.d r[23:24], -24(r30)
0005cc  0b112418  sub.s r2, r8, r2
0005d0  1b34fa00  slli r8, r20, 15
0005d4  0b11f130  div.s r2, r2, r15
0005d8  e74a2ffe  storeli.w r2, -84(r30)
0005dc  33010128  zext_int2long r[3:4], r2
0005e0  17332103  sll.d r[7:8], r[3:4], r18
0005e4  2b410200  lui r2, 36
0005e8  9f610000  addli r3, zero, 6
0005ec  17353303  sll.d r[11:12], r[7:8], r19
0005f0  0b112410  add.s r2, r8, r2
0005f4  7338affa  store.d r[11:12], -80(r30)
0005f8  bbaa3400  bneq r9, r3, 680
0005fc  6b538f00  load.d r[7:8], 8(r30)
000600  7d100900  xwait r18, 0
000604  e300cfff  loadli.w r1,  -32(r30)
000608  9f470000  addli r15, zero, 4
00060c  0b23a310  add.ul r[7:8], r[7:8], r[11:12]
000610  1f551000  addli r10, zero, 13
000614  9f250000  addli r11, zero, 2
000618  3ff41500  blt.s r11, r1, 284
00061c  1f560000  addli r12, zero, 5
000620  9f001000  addli r1, zero, 8
000624  1d000600  lock zero, r12
000628  15000014  dma_cfg zero, zero, zero, 10
00062c  15003015  dma_cfg zero, zero, r19, 10
000630  1500b014  dma_cfg zero, zero, r11, 10
000634  15000015  dma_cfg zero, zero, r16, 10
000638  1500f014  dma_cfg zero, zero, r15, 10
00063c  1500c014  dma_cfg zero, zero, r12, 10
000640  15003014  dma_cfg zero, zero, r3, 10
000644  15002015  dma_cfg zero, zero, r18, 10
000648  15001014  dma_cfg zero, zero, r1, 10
00064c  9f101000  addli r1, zero, 9
000650  15001014  dma_cfg zero, zero, r1, 10
000654  9f201000  addli r1, zero, 10
000658  15001014  dma_cfg zero, zero, r1, 10
00065c  9f301000  addli r1, zero, 11
000660  15001014  dma_cfg zero, zero, r1, 10
000664  9f401000  addli r1, zero, 12
000668  15001014  dma_cfg zero, zero, r1, 10
00066c  9f601000  addli r1, zero, 14
000670  1500a014  dma_cfg zero, zero, r10, 10
000674  15001014  dma_cfg zero, zero, r1, 10
000678  9f701000  addli r1, zero, 15
00067c  15001014  dma_cfg zero, zero, r1, 10
000680  9f002000  addli r1, zero, 16
000684  15001014  dma_cfg zero, zero, r1, 10
000688  9f102000  addli r1, zero, 17
00068c  15001014  dma_cfg zero, zero, r1, 10
000690  9f202000  addli r1, zero, 18
000694  15001014  dma_cfg zero, zero, r1, 10
000698  9f302000  addli r1, zero, 19
00069c  15001014  dma_cfg zero, zero, r1, 10
0006a0  9f402000  addli r1, zero, 20
0006a4  15001014  dma_cfg zero, zero, r1, 10
0006a8  9f502000  addli r1, zero, 21
0006ac  15001014  dma_cfg zero, zero, r1, 10
0006b0  9f602000  addli r1, zero, 22
0006b4  15001014  dma_cfg zero, zero, r1, 10
0006b8  9f702000  addli r1, zero, 23
0006bc  15001014  dma_cfg zero, zero, r1, 10
0006c0  9f003000  addli r1, zero, 24
0006c4  15001014  dma_cfg zero, zero, r1, 10
0006c8  9f103000  addli r1, zero, 25
0006cc  15001014  dma_cfg zero, zero, r1, 10
0006d0  9f203000  addli r1, zero, 26
0006d4  15001014  dma_cfg zero, zero, r1, 10
0006d8  9f303000  addli r1, zero, 27
0006dc  15001014  dma_cfg zero, zero, r1, 10
0006e0  9f403000  addli r1, zero, 28
0006e4  15001014  dma_cfg zero, zero, r1, 10
0006e8  9f503000  addli r1, zero, 29
0006ec  15001014  dma_cfg zero, zero, r1, 10
0006f0  9f603000  addli r1, zero, 30
0006f4  15001014  dma_cfg zero, zero, r1, 10
0006f8  9f703000  addli r1, zero, 31
0006fc  15001014  dma_cfg zero, zero, r1, 10
000700  9f000001  addli r1, zero, 128
000704  95890900  dma_cfg r19, r19, zero, 0
000708  95090002  dma_cfg r19, zero, zero, 1
00070c  15000004  dma_cfg zero, zero, zero, 2
000710  15015007  dma_cfg r2, zero, r21, 3
000714  9500f008  dma_cfg r1, zero, r15, 4
000718  9f000004  addli r1, zero, 512
00071c  9500500b  dma_cfg r1, zero, r21, 5
000720  15000010  dma_cfg zero, zero, zero, 8
000724  35000000  dma_run zero
000728  1500300b  dma_cfg zero, zero, r19, 5
00072c  15000010  dma_cfg zero, zero, zero, 8
000730  1d100600  unlock r12
000734  ab400200  lui r1, 36
000738  674e0ffe  storeli.w zero, -28(r30)
00073c  674d0ffe  storeli.w zero, -44(r30)
000740  670d0ffe  storeli.w zero, -48(r30)
000744  1d800700  lock zero, r15
000748  9b900004  ori r1, r1, 64
00074c  95890900  dma_cfg r19, r19, zero, 0
000750  15800304  dma_cfg zero, r7, zero, 2
000754  8b101410  add.s r1, r8, r1
000758  95005307  dma_cfg r1, r6, r21, 3
00075c  9f000001  addli r1, zero, 128
000760  9f030004  addli r7, zero, 512
000764  1f530000  addli r6, zero, 5
000768  9580fa08  dma_cfg r1, r21, r15, 4
00076c  9f000010  addli r1, zero, 2048
000770  9583500b  dma_cfg r7, r1, r21, 5
000774  9f001000  addli r1, zero, 8
000778  15000010  dma_cfg zero, zero, zero, 8
00077c  35000000  dma_run zero
000780  1500300b  dma_cfg zero, zero, r19, 5
000784  15000010  dma_cfg zero, zero, zero, 8
000788  1d900700  unlock r15
00078c  1d000300  lock zero, r6
000790  15000014  dma_cfg zero, zero, zero, 10
000794  15003015  dma_cfg zero, zero, r19, 10
000798  1500b014  dma_cfg zero, zero, r11, 10
00079c  15000015  dma_cfg zero, zero, r16, 10
0007a0  1500f014  dma_cfg zero, zero, r15, 10
0007a4  15006014  dma_cfg zero, zero, r6, 10
0007a8  15003014  dma_cfg zero, zero, r3, 10
0007ac  15002015  dma_cfg zero, zero, r18, 10
0007b0  15001014  dma_cfg zero, zero, r1, 10
0007b4  9f101000  addli r1, zero, 9
0007b8  15001014  dma_cfg zero, zero, r1, 10
0007bc  9f201000  addli r1, zero, 10
0007c0  15001014  dma_cfg zero, zero, r1, 10
0007c4  9f301000  addli r1, zero, 11
0007c8  15001014  dma_cfg zero, zero, r1, 10
0007cc  9f401000  addli r1, zero, 12
0007d0  15001014  dma_cfg zero, zero, r1, 10
0007d4  9f601000  addli r1, zero, 14
0007d8  1500a014  dma_cfg zero, zero, r10, 10
0007dc  15001014  dma_cfg zero, zero, r1, 10
0007e0  9f701000  addli r1, zero, 15
0007e4  15001014  dma_cfg zero, zero, r1, 10
0007e8  9f002000  addli r1, zero, 16
0007ec  15001014  dma_cfg zero, zero, r1, 10
0007f0  9f102000  addli r1, zero, 17
0007f4  15001014  dma_cfg zero, zero, r1, 10
0007f8  9f202000  addli r1, zero, 18
0007fc  15001014  dma_cfg zero, zero, r1, 10
000800  9f302000  addli r1, zero, 19
000804  15001014  dma_cfg zero, zero, r1, 10
000808  9f402000  addli r1, zero, 20
00080c  15001014  dma_cfg zero, zero, r1, 10
000810  9f502000  addli r1, zero, 21
000814  15001014  dma_cfg zero, zero, r1, 10
000818  9f602000  addli r1, zero, 22
00081c  15001014  dma_cfg zero, zero, r1, 10
000820  9f702000  addli r1, zero, 23
000824  15001014  dma_cfg zero, zero, r1, 10
000828  9f003000  addli r1, zero, 24
00082c  15001014  dma_cfg zero, zero, r1, 10
000830  9f103000  addli r1, zero, 25
000834  15001014  dma_cfg zero, zero, r1, 10
000838  9f203000  addli r1, zero, 26
00083c  15001014  dma_cfg zero, zero, r1, 10
000840  9f303000  addli r1, zero, 27
000844  15001014  dma_cfg zero, zero, r1, 10
000848  9f403000  addli r1, zero, 28
00084c  15001014  dma_cfg zero, zero, r1, 10
000850  9f503000  addli r1, zero, 29
000854  15001014  dma_cfg zero, zero, r1, 10
000858  9f603000  addli r1, zero, 30
00085c  15001014  dma_cfg zero, zero, r1, 10
000860  9f703000  addli r1, zero, 31
000864  15001014  dma_cfg zero, zero, r1, 10
000868  9f000001  addli r1, zero, 128
00086c  95890900  dma_cfg r19, r19, zero, 0
000870  95090002  dma_cfg r19, zero, zero, 1
000874  15000004  dma_cfg zero, zero, zero, 2
000878  15015007  dma_cfg r2, zero, r21, 3
00087c  9500f008  dma_cfg r1, zero, r15, 4
000880  9503500b  dma_cfg r7, zero, r21, 5
000884  15000010  dma_cfg zero, zero, zero, 8
000888  35000000  dma_run zero
00088c  1500300b  dma_cfg zero, zero, r19, 5
000890  15000010  dma_cfg zero, zero, zero, 8
000894  1d100300  unlock r6
000898  7d800100  xsignal r3, 0
00089c  5b230000  j 280
0008a0  1f531000  addli r6, zero, 13
0008a4  9f230000  addli r7, zero, 2
0008a8  1f450000  addli r10, zero, 4
0008ac  37e30401  beq r9, r16, 216
0008b0  37d1a400  beq r9, r10, 84
0008b4  bbc32401  bneq r9, r18, 240
0008b8  9f101000  addli r1, zero, 9
0008bc  674e0ffe  storeli.w zero, -28(r30)
0008c0  670d0ffe  storeli.w zero, -48(r30)
0008c4  7d900100  xwait r3, 0
0008c8  7d900000  xwait r1, 0
0008cc  1d000000  lock zero, zero
0008d0  9f000001  addli r1, zero, 128
0008d4  81030000  ds_cfg r7, zero, 0
0008d8  81000002  ds_cfg r1, zero, 1
0008dc  810a001c  ds_cfg r21, zero, 14
0008e0  8100001a  ds_cfg r1, zero, 13
0008e4  9f100000  addli r1, zero, 1
0008e8  41045105  shuffle_coa r8, r2, r21, 2
0008ec  1d100000  unlock zero
0008f0  7d000900  xsignal r18, 0
0008f4  674d1ffe  storeli.w r1, -44(r30)
0008f8  9f001000  addli r1, zero, 8
0008fc  7d800000  xsignal r1, 0
000900  5b160000  j 176
000904  1f011000  addli r2, zero, 8
000908  7d100500  xwait r10, 0
00090c  1f030000  addli r6, zero, 0
000910  9f110000  addli r3, zero, 1
000914  9f331000  addli r7, zero, 11
000918  7d100100  xwait r2, 0
00091c  1f110000  addli r2, zero, 1
000920  7d900300  xwait r7, 0
000924  9b33e300  slli r7, r6, 14
000928  1b338300  slli r6, r6, 8
00092c  1d000100  lock zero, r2
000930  898a5a01  mm_cfg r21, r21, r21, 0
000934  97938300  or r7, r7, r8
000938  17138300  or r6, r6, r8
00093c  09052504  mm_cfg r10, r10, r2, 2
000940  29837010  mm r6, r1, r7, 8
000944  9b831100  andi r7, r3, 1
000948  1f130000  addli r6, zero, 1
00094c  9f010000  addli r3, zero, 0
000950  1d100100  unlock r2
000954  3bcf03fe  bneq r7, zero, -48
000958  9f500000  addli r1, zero, 5
00095c  674e0ffe  storeli.w zero, -28(r30)
000960  674d0ffe  storeli.w zero, -44(r30)
000964  7d800000  xsignal r1, 0
000968  9f101000  addli r1, zero, 9
00096c  7d800000  xsignal r1, 0
000970  9f100000  addli r1, zero, 1
000974  670d1ffe  storeli.w r1, -48(r30)
000978  9f201000  addli r1, zero, 10
00097c  7d800000  xsignal r1, 0
000980  5b060000  j 48
000984  9f201000  addli r1, zero, 10
000988  674d0ffe  storeli.w zero, -44(r30)
00098c  670d0ffe  storeli.w zero, -48(r30)
000990  7d900000  xwait r1, 0
000994  9f100000  addli r1, zero, 1
000998  674e1ffe  storeli.w r1, -28(r30)
00099c  7d100300  xwait r6, 0
0009a0  5b020000  j 16
0009a4  674e0ffe  storeli.w zero, -28(r30)
0009a8  674d0ffe  storeli.w zero, -44(r30)
0009ac  670d0ffe  storeli.w zero, -48(r30)
0009b0  9f000001  addli r1, zero, 128
0009b4  2bc10300  lui r2, 60
0009b8  3d000000  xfence
0009bc  338a0028  zext_int2long r[21:22], r1
0009c0  00a00300  mfence { lm, sm, gm }
0009c4  8b172410  add.s r15, r8, r2
0009c8  1f71f001  addli r2, zero, 255
0009cc  80220104  csr_set csr5, r2
0009d0  00e00200  sync_core
0009d4  b7f00400  beq r9, zero, 60
0009d8  b7e63401  beq r9, r19, 440
0009dc  e3409fff  loadli.w r1,  -52(r30)
0009e0  bbdc0000  bneq r1, zero, 820
0009e4  e340cfff  loadli.w r1,  -28(r30)
0009e8  bbc20002  bneq r1, zero, 1200
0009ec  e300afff  loadli.w r1,  -48(r30)
0009f0  bbb80002  bneq r1, zero, 1580
0009f4  9f500000  addli r1, zero, 5
0009f8  b7ae1402  beq r9, r1, 1960
0009fc  9f600000  addli r1, zero, 6
000a00  b7941404  beq r9, r1, 2340
000a04  e340afff  loadli.w r1,  -44(r30)
000a08  bb8a0004  bneq r1, zero, 2720
000a0c  5b830100  j 3096
000a10  b3000028  zext_int2long r[2:3], zero
000a14  3d000000  xfence
000a18  00a00300  mfence { lm, sm, gm }
000a1c  73381ffe  store.d r[2:3], -16(r30)
000a20  27810000  addli.d r[3:4], r[2:3], 0
000a24  db030000  j 28
000a28  1f790000  addli r18, zero, 7
000a2c  6b538fff  load.d r[7:8], -8(r30)
000a30  b3000928  zext_int2long r[2:3], r18
000a34  93201304  setlt.ul r1, r[7:8], r[2:3]
000a38  27110300  addli.d r[3:4], r[7:8], 1
000a3c  37850000  beq r1, zero, 320
000a40  eb540fff  load.d r[10:11], -16(r30)
000a44  17332103  sll.d r[7:8], r[3:4], r18
000a48  733c2ffe  store.d r[3:4], -8(r30)
000a4c  db040000  j 36
000a50  a7c40400  addli.d r[10:11], r[10:11], 4
000a54  0b91c710  add.s r2, r15, r12
000a58  93a04403  setneq.d r1, r[10:11], r[21:22]
000a5c  73663100  stores.w r3, 12(r2)
000a60  73642101  stores.w r18, 8(r2)
000a64  7362a101  stores.w r26, 4(r2)
000a68  73606101  stores.w r22, 0(r2)
000a6c  b7fe00fe  beq r1, zero, -68
000a70  8ba06410  add.ul r[2:3], r[10:11], r[7:8]
000a74  1bb62000  slli r12, r1, 2
000a78  8b10c410  add.s r1, r8, r12
000a7c  6fcec000  loads.w r28, 12(r1)
000a80  6fc80000  loads.w r16, 0(r1)
000a84  efcd4000  loads.w r27, 4(r1)
000a88  efcc8000  loads.w r25, 8(r1)
000a8c  9709de00  and r19, r28, r13
000a90  93003205  setlt.u r1, r4, r19
000a94  3bb00000  bneq r1, zero, 12
000a98  9f010e00  addli r3, r28, 0
000a9c  5b010000  j 8
000aa0  97118e01  or r3, r28, r24
000aa4  9785dc00  and r11, r25, r13
000aa8  9300b204  setlt.u r1, r4, r11
000aac  3bb00000  bneq r1, zero, 12
000ab0  1f890c00  addli r18, r25, 0
000ab4  5b010000  j 8
000ab8  17998c01  or r18, r25, r24
000abc  978bdd00  and r23, r27, r13
000ac0  93007205  setlt.u r1, r4, r23
000ac4  3bb00000  bneq r1, zero, 12
000ac8  1f8d0d00  addli r26, r27, 0
000acc  5b010000  j 8
000ad0  179d8d01  or r26, r27, r24
000ad4  9700d800  and r1, r16, r13
000ad8  13011204  setlt.u r2, r4, r1
000adc  3b500100  bneq r2, zero, 20
000ae0  1f0b0800  addli r22, r16, 0
000ae4  93801804  setlt.u r1, r17, r1
000ae8  37d00000  beq r1, zero, 20
000aec  db040000  j 36
000af0  171b8801  or r22, r16, r24
000af4  93801804  setlt.u r1, r17, r1
000af8  3be00000  bneq r1, zero, 24
000afc  9b400801  srli r1, r16, 16
000b00  9b801000  andi r1, r1, 1
000b04  8b101810  add.s r1, r16, r1
000b08  8b90e010  add.s r1, r1, r14
000b0c  178b5000  and r22, r1, r5
000b10  93807805  setlt.u r1, r17, r23
000b14  37e00000  beq r1, zero, 24
000b18  9380b804  setlt.u r1, r17, r11
000b1c  b7b00000  beq r1, zero, 44
000b20  93803805  setlt.u r1, r17, r19
000b24  bbbc00fe  bneq r1, zero, -212
000b28  db070000  j 60
000b2c  9bc00d01  srli r1, r27, 16
000b30  9b801000  andi r1, r1, 1
000b34  8b901d10  add.s r1, r27, r1
000b38  8b90e010  add.s r1, r1, r14
000b3c  178d5000  and r26, r1, r5
000b40  9380b804  setlt.u r1, r17, r11
000b44  3bff00fe  bneq r1, zero, -36
000b48  9bc00c01  srli r1, r25, 16
000b4c  9b801000  andi r1, r1, 1
000b50  8b901c10  add.s r1, r25, r1
000b54  8b90e010  add.s r1, r1, r14
000b58  17895000  and r18, r1, r5
000b5c  93803805  setlt.u r1, r17, r19
000b60  bbcb00fe  bneq r1, zero, -272
000b64  9b400e01  srli r1, r28, 16
000b68  9b801000  andi r1, r1, 1
000b6c  8b101e10  add.s r1, r28, r1
000b70  8b90e010  add.s r1, r1, r14
000b74  97815000  and r3, r1, r5
000b78  5bdbffff  j -296
000b7c  00200100  mfence { sm }
000b80  80340002  core_id r9
000b84  9f190000  addli r19, zero, 1
000b88  6b5b8ffe  load.d r[23:24], -24(r30)
000b8c  3bc934ff  bneq r9, r19, -432
000b90  9f001000  addli r1, zero, 8
000b94  3d000000  xfence
000b98  00a00300  mfence { lm, sm, gm }
000b9c  33810028  zext_int2long r[3:4], r1
000ba0  5b040000  j 32
000ba4  9f701000  addli r1, zero, 15
000ba8  6b538fff  load.d r[7:8], -8(r30)
000bac  1f790000  addli r18, zero, 7
000bb0  b3800028  zext_int2long r[2:3], r1
000bb4  93201304  setlt.ul r1, r[7:8], r[2:3]
000bb8  27110300  addli.d r[3:4], r[7:8], 1
000bbc  37850000  beq r1, zero, 320
000bc0  97342103  sll.d r[10:11], r[3:4], r18
000bc4  33030028  zext_int2long r[7:8], zero
000bc8  733c2ffe  store.d r[3:4], -8(r30)
000bcc  db040000  j 36
000bd0  27430300  addli.d r[7:8], r[7:8], 4
000bd4  0b91c710  add.s r2, r15, r12
000bd8  93204303  setneq.d r1, r[7:8], r[21:22]
000bdc  73663100  stores.w r3, 12(r2)
000be0  73647101  stores.w r23, 8(r2)
000be4  73629101  stores.w r25, 4(r2)
000be8  73600101  stores.w r16, 0(r2)
000bec  b7ee00fe  beq r1, zero, -72
000bf0  8b209310  add.ul r[2:3], r[7:8], r[10:11]
000bf4  1bb62000  slli r12, r1, 2
000bf8  8b10c410  add.s r1, r8, r12
000bfc  6fcbc000  loads.w r22, 12(r1)
000c00  efcd0000  loads.w r27, 0(r1)
000c04  6fcd4000  loads.w r26, 4(r1)
000c08  6fc98000  loads.w r18, 8(r1)
000c0c  9709db00  and r19, r22, r13
000c10  93003205  setlt.u r1, r4, r19
000c14  3bb00000  bneq r1, zero, 12
000c18  9f010b00  addli r3, r22, 0
000c1c  5b010000  j 8
000c20  97118b01  or r3, r22, r24
000c24  9705d900  and r11, r18, r13
000c28  9300b204  setlt.u r1, r4, r11
000c2c  3bb00000  bneq r1, zero, 12
000c30  9f0b0900  addli r23, r18, 0
000c34  5b010000  j 8
000c38  971b8901  or r23, r18, r24
000c3c  170edd00  and r28, r26, r13
000c40  9300c205  setlt.u r1, r4, r28
000c44  3bb00000  bneq r1, zero, 12
000c48  9f0c0d00  addli r25, r26, 0
000c4c  5b010000  j 8
000c50  971c8d01  or r25, r26, r24
000c54  9780dd00  and r1, r27, r13
000c58  13011204  setlt.u r2, r4, r1
000c5c  3b500100  bneq r2, zero, 20
000c60  1f880d00  addli r16, r27, 0
000c64  93801804  setlt.u r1, r17, r1
000c68  37d00000  beq r1, zero, 20
000c6c  db040000  j 36
000c70  17988d01  or r16, r27, r24
000c74  93801804  setlt.u r1, r17, r1
000c78  3be00000  bneq r1, zero, 24
000c7c  9bc00d01  srli r1, r27, 16
000c80  9b801000  andi r1, r1, 1
000c84  8b901d10  add.s r1, r27, r1
000c88  8b90e010  add.s r1, r1, r14
000c8c  17885000  and r16, r1, r5
000c90  9380c805  setlt.u r1, r17, r28
000c94  37e00000  beq r1, zero, 24
000c98  9380b804  setlt.u r1, r17, r11
000c9c  b7b00000  beq r1, zero, 44
000ca0  93803805  setlt.u r1, r17, r19
000ca4  bbbc00fe  bneq r1, zero, -212
000ca8  db070000  j 60
000cac  9b400d01  srli r1, r26, 16
000cb0  9b801000  andi r1, r1, 1
000cb4  8b101d10  add.s r1, r26, r1
000cb8  8b90e010  add.s r1, r1, r14
000cbc  978c5000  and r25, r1, r5
000cc0  9380b804  setlt.u r1, r17, r11
000cc4  3bff00fe  bneq r1, zero, -36
000cc8  9b400901  srli r1, r18, 16
000ccc  9b801000  andi r1, r1, 1
000cd0  8b101910  add.s r1, r18, r1
000cd4  8b90e010  add.s r1, r1, r14
000cd8  978b5000  and r23, r1, r5
000cdc  93803805  setlt.u r1, r17, r19
000ce0  bbcb00fe  bneq r1, zero, -272
000ce4  9b400b01  srli r1, r22, 16
000ce8  9b801000  andi r1, r1, 1
000cec  8b101b10  add.s r1, r22, r1
000cf0  8b90e010  add.s r1, r1, r14
000cf4  97815000  and r3, r1, r5
000cf8  5bdbffff  j -296
000cfc  00200100  mfence { sm }
000d00  80340002  core_id r9
000d04  9f190000  addli r19, zero, 1
000d08  6b5b8ffe  load.d r[23:24], -24(r30)
000d0c  e3409fff  loadli.w r1,  -52(r30)
000d10  37d300fe  beq r1, zero, -812
000d14  9f002000  addli r1, zero, 16
000d18  3d000000  xfence
000d1c  00a00300  mfence { lm, sm, gm }
000d20  33810028  zext_int2long r[3:4], r1
000d24  5b040000  j 32
000d28  9f702000  addli r1, zero, 23
000d2c  6b538fff  load.d r[7:8], -8(r30)
000d30  1f790000  addli r18, zero, 7
000d34  b3800028  zext_int2long r[2:3], r1
000d38  93201304  setlt.ul r1, r[7:8], r[2:3]
000d3c  27110300  addli.d r[3:4], r[7:8], 1
000d40  37850000  beq r1, zero, 320
000d44  97342103  sll.d r[10:11], r[3:4], r18
000d48  33030028  zext_int2long r[7:8], zero
000d4c  733c2ffe  store.d r[3:4], -8(r30)
000d50  db040000  j 36
000d54  27430300  addli.d r[7:8], r[7:8], 4
000d58  0b91c710  add.s r2, r15, r12
000d5c  93204303  setneq.d r1, r[7:8], r[21:22]
000d60  73663100  stores.w r3, 12(r2)
000d64  73647101  stores.w r23, 8(r2)
000d68  73629101  stores.w r25, 4(r2)
000d6c  73600101  stores.w r16, 0(r2)
000d70  b7ee00fe  beq r1, zero, -72
000d74  8b209310  add.ul r[2:3], r[7:8], r[10:11]
000d78  1bb62000  slli r12, r1, 2
000d7c  8b10c410  add.s r1, r8, r12
000d80  6fcbc000  loads.w r22, 12(r1)
000d84  efcd0000  loads.w r27, 0(r1)
000d88  6fcd4000  loads.w r26, 4(r1)
000d8c  6fc98000  loads.w r18, 8(r1)
000d90  9709db00  and r19, r22, r13
000d94  93003205  setlt.u r1, r4, r19
000d98  3bb00000  bneq r1, zero, 12
000d9c  9f010b00  addli r3, r22, 0
000da0  5b010000  j 8
000da4  97118b01  or r3, r22, r24
000da8  9705d900  and r11, r18, r13
000dac  9300b204  setlt.u r1, r4, r11
000db0  3bb00000  bneq r1, zero, 12
000db4  9f0b0900  addli r23, r18, 0
000db8  5b010000  j 8
000dbc  971b8901  or r23, r18, r24
000dc0  170edd00  and r28, r26, r13
000dc4  9300c205  setlt.u r1, r4, r28
000dc8  3bb00000  bneq r1, zero, 12
000dcc  9f0c0d00  addli r25, r26, 0
000dd0  5b010000  j 8
000dd4  971c8d01  or r25, r26, r24
000dd8  9780dd00  and r1, r27, r13
000ddc  13011204  setlt.u r2, r4, r1
000de0  3b500100  bneq r2, zero, 20
000de4  1f880d00  addli r16, r27, 0
000de8  93801804  setlt.u r1, r17, r1
000dec  37d00000  beq r1, zero, 20
000df0  db040000  j 36
000df4  17988d01  or r16, r27, r24
000df8  93801804  setlt.u r1, r17, r1
000dfc  3be00000  bneq r1, zero, 24
000e00  9bc00d01  srli r1, r27, 16
000e04  9b801000  andi r1, r1, 1
000e08  8b901d10  add.s r1, r27, r1
000e0c  8b90e010  add.s r1, r1, r14
000e10  17885000  and r16, r1, r5
000e14  9380c805  setlt.u r1, r17, r28
000e18  37e00000  beq r1, zero, 24
000e1c  9380b804  setlt.u r1, r17, r11
000e20  b7b00000  beq r1, zero, 44
000e24  93803805  setlt.u r1, r17, r19
000e28  bbbc00fe  bneq r1, zero, -212
000e2c  db070000  j 60
000e30  9b400d01  srli r1, r26, 16
000e34  9b801000  andi r1, r1, 1
000e38  8b101d10  add.s r1, r26, r1
000e3c  8b90e010  add.s r1, r1, r14
000e40  978c5000  and r25, r1, r5
000e44  9380b804  setlt.u r1, r17, r11
000e48  3bff00fe  bneq r1, zero, -36
000e4c  9b400901  srli r1, r18, 16
000e50  9b801000  andi r1, r1, 1
000e54  8b101910  add.s r1, r18, r1
000e58  8b90e010  add.s r1, r1, r14
000e5c  978b5000  and r23, r1, r5
000e60  93803805  setlt.u r1, r17, r19
000e64  bbcb00fe  bneq r1, zero, -272
000e68  9b400b01  srli r1, r22, 16
000e6c  9b801000  andi r1, r1, 1
000e70  8b101b10  add.s r1, r22, r1
000e74  8b90e010  add.s r1, r1, r14
000e78  97815000  and r3, r1, r5
000e7c  5bdbffff  j -296
000e80  00200100  mfence { sm }
000e84  80340002  core_id r9
000e88  9f190000  addli r19, zero, 1
000e8c  6b5b8ffe  load.d r[23:24], -24(r30)
000e90  e340cfff  loadli.w r1,  -28(r30)
000e94  37ed00fc  beq r1, zero, -1192
000e98  9f003000  addli r1, zero, 24
000e9c  3d000000  xfence
000ea0  00a00300  mfence { lm, sm, gm }
000ea4  33810028  zext_int2long r[3:4], r1
000ea8  5b040000  j 32
000eac  9f703000  addli r1, zero, 31
000eb0  6b538fff  load.d r[7:8], -8(r30)
000eb4  1f790000  addli r18, zero, 7
000eb8  b3800028  zext_int2long r[2:3], r1
000ebc  93201304  setlt.ul r1, r[7:8], r[2:3]
000ec0  27110300  addli.d r[3:4], r[7:8], 1
000ec4  37850000  beq r1, zero, 320
000ec8  97342103  sll.d r[10:11], r[3:4], r18
000ecc  33030028  zext_int2long r[7:8], zero
000ed0  733c2ffe  store.d r[3:4], -8(r30)
000ed4  db040000  j 36
000ed8  27430300  addli.d r[7:8], r[7:8], 4
000edc  0b91c710  add.s r2, r15, r12
000ee0  93204303  setneq.d r1, r[7:8], r[21:22]
000ee4  73663100  stores.w r3, 12(r2)
000ee8  73647101  stores.w r23, 8(r2)
000eec  73629101  stores.w r25, 4(r2)
000ef0  73600101  stores.w r16, 0(r2)
000ef4  b7ee00fe  beq r1, zero, -72
000ef8  8b209310  add.ul r[2:3], r[7:8], r[10:11]
000efc  1bb62000  slli r12, r1, 2
000f00  8b10c410  add.s r1, r8, r12
000f04  6fcbc000  loads.w r22, 12(r1)
000f08  efcd0000  loads.w r27, 0(r1)
000f0c  6fcd4000  loads.w r26, 4(r1)
000f10  6fc98000  loads.w r18, 8(r1)
000f14  9709db00  and r19, r22, r13
000f18  93003205  setlt.u r1, r4, r19
000f1c  3bb00000  bneq r1, zero, 12
000f20  9f010b00  addli r3, r22, 0
000f24  5b010000  j 8
000f28  97118b01  or r3, r22, r24
000f2c  9705d900  and r11, r18, r13
000f30  9300b204  setlt.u r1, r4, r11
000f34  3bb00000  bneq r1, zero, 12
000f38  9f0b0900  addli r23, r18, 0
000f3c  5b010000  j 8
000f40  971b8901  or r23, r18, r24
000f44  170edd00  and r28, r26, r13
000f48  9300c205  setlt.u r1, r4, r28
000f4c  3bb00000  bneq r1, zero, 12
000f50  9f0c0d00  addli r25, r26, 0
000f54  5b010000  j 8
000f58  971c8d01  or r25, r26, r24
000f5c  9780dd00  and r1, r27, r13
000f60  13011204  setlt.u r2, r4, r1
000f64  3b500100  bneq r2, zero, 20
000f68  1f880d00  addli r16, r27, 0
000f6c  93801804  setlt.u r1, r17, r1
000f70  37d00000  beq r1, zero, 20
000f74  db040000  j 36
000f78  17988d01  or r16, r27, r24
000f7c  93801804  setlt.u r1, r17, r1
000f80  3be00000  bneq r1, zero, 24
000f84  9bc00d01  srli r1, r27, 16
000f88  9b801000  andi r1, r1, 1
000f8c  8b901d10  add.s r1, r27, r1
000f90  8b90e010  add.s r1, r1, r14
000f94  17885000  and r16, r1, r5
000f98  9380c805  setlt.u r1, r17, r28
000f9c  37e00000  beq r1, zero, 24
000fa0  9380b804  setlt.u r1, r17, r11
000fa4  b7b00000  beq r1, zero, 44
000fa8  93803805  setlt.u r1, r17, r19
000fac  bbbc00fe  bneq r1, zero, -212
000fb0  db070000  j 60
000fb4  9b400d01  srli r1, r26, 16
000fb8  9b801000  andi r1, r1, 1
000fbc  8b101d10  add.s r1, r26, r1
000fc0  8b90e010  add.s r1, r1, r14
000fc4  978c5000  and r25, r1, r5
000fc8  9380b804  setlt.u r1, r17, r11
000fcc  3bff00fe  bneq r1, zero, -36
000fd0  9b400901  srli r1, r18, 16
000fd4  9b801000  andi r1, r1, 1
000fd8  8b101910  add.s r1, r18, r1
000fdc  8b90e010  add.s r1, r1, r14
000fe0  978b5000  and r23, r1, r5
000fe4  93803805  setlt.u r1, r17, r19
000fe8  bbcb00fe  bneq r1, zero, -272
000fec  9b400b01  srli r1, r22, 16
000ff0  9b801000  andi r1, r1, 1
000ff4  8b101b10  add.s r1, r22, r1
000ff8  8b90e010  add.s r1, r1, r14
000ffc  97815000  and r3, r1, r5
001000  5bdbffff  j -296
001004  00200100  mfence { sm }
001008  80340002  core_id r9
00100c  9f190000  addli r19, zero, 1
001010  6b5b8ffe  load.d r[23:24], -24(r30)
001014  e300afff  loadli.w r1,  -48(r30)
001018  37f700fc  beq r1, zero, -1572
00101c  9f004000  addli r1, zero, 32
001020  3d000000  xfence
001024  00a00300  mfence { lm, sm, gm }
001028  33810028  zext_int2long r[3:4], r1
00102c  5b040000  j 32
001030  9f704000  addli r1, zero, 39
001034  6b538fff  load.d r[7:8], -8(r30)
001038  1f790000  addli r18, zero, 7
00103c  b3800028  zext_int2long r[2:3], r1
001040  93201304  setlt.ul r1, r[7:8], r[2:3]
001044  27110300  addli.d r[3:4], r[7:8], 1
001048  37850000  beq r1, zero, 320
00104c  97342103  sll.d r[10:11], r[3:4], r18
001050  33030028  zext_int2long r[7:8], zero
001054  733c2ffe  store.d r[3:4], -8(r30)
001058  db040000  j 36
00105c  27430300  addli.d r[7:8], r[7:8], 4
001060  0b91c710  add.s r2, r15, r12
001064  93204303  setneq.d r1, r[7:8], r[21:22]
001068  73663100  stores.w r3, 12(r2)
00106c  73647101  stores.w r23, 8(r2)
001070  73629101  stores.w r25, 4(r2)
001074  73600101  stores.w r16, 0(r2)
001078  b7ee00fe  beq r1, zero, -72
00107c  8b209310  add.ul r[2:3], r[7:8], r[10:11]
001080  1bb62000  slli r12, r1, 2
001084  8b10c410  add.s r1, r8, r12
001088  6fcbc000  loads.w r22, 12(r1)
00108c  efcd0000  loads.w r27, 0(r1)
001090  6fcd4000  loads.w r26, 4(r1)
001094  6fc98000  loads.w r18, 8(r1)
001098  9709db00  and r19, r22, r13
00109c  93003205  setlt.u r1, r4, r19
0010a0  3bb00000  bneq r1, zero, 12
0010a4  9f010b00  addli r3, r22, 0
0010a8  5b010000  j 8
0010ac  97118b01  or r3, r22, r24
0010b0  9705d900  and r11, r18, r13
0010b4  9300b204  setlt.u r1, r4, r11
0010b8  3bb00000  bneq r1, zero, 12
0010bc  9f0b0900  addli r23, r18, 0
0010c0  5b010000  j 8
0010c4  971b8901  or r23, r18, r24
0010c8  170edd00  and r28, r26, r13
0010cc  9300c205  setlt.u r1, r4, r28
0010d0  3bb00000  bneq r1, zero, 12
0010d4  9f0c0d00  addli r25, r26, 0
0010d8  5b010000  j 8
0010dc  971c8d01  or r25, r26, r24
0010e0  9780dd00  and r1, r27, r13
0010e4  13011204  setlt.u r2, r4, r1
0010e8  3b500100  bneq r2, zero, 20
0010ec  1f880d00  addli r16, r27, 0
0010f0  93801804  setlt.u r1, r17, r1
0010f4  37d00000  beq r1, zero, 20
0010f8  db040000  j 36
0010fc  17988d01  or r16, r27, r24
001100  93801804  setlt.u r1, r17, r1
001104  3be00000  bneq r1, zero, 24
001108  9bc00d01  srli r1, r27, 16
00110c  9b801000  andi r1, r1, 1
001110  8b901d10  add.s r1, r27, r1
001114  8b90e010  add.s r1, r1, r14
001118  17885000  and r16, r1, r5
00111c  9380c805  setlt.u r1, r17, r28
001120  37e00000  beq r1, zero, 24
001124  9380b804  setlt.u r1, r17, r11
001128  b7b00000  beq r1, zero, 44
00112c  93803805  setlt.u r1, r17, r19
001130  bbbc00fe  bneq r1, zero, -212
001134  db070000  j 60
001138  9b400d01  srli r1, r26, 16
00113c  9b801000  andi r1, r1, 1
001140  8b101d10  add.s r1, r26, r1
001144  8b90e010  add.s r1, r1, r14
001148  978c5000  and r25, r1, r5
00114c  9380b804  setlt.u r1, r17, r11
001150  3bff00fe  bneq r1, zero, -36
001154  9b400901  srli r1, r18, 16
001158  9b801000  andi r1, r1, 1
00115c  8b101910  add.s r1, r18, r1
001160  8b90e010  add.s r1, r1, r14
001164  978b5000  and r23, r1, r5
001168  93803805  setlt.u r1, r17, r19
00116c  bbcb00fe  bneq r1, zero, -272
001170  9b400b01  srli r1, r22, 16
001174  9b801000  andi r1, r1, 1
001178  8b101b10  add.s r1, r22, r1
00117c  8b90e010  add.s r1, r1, r14
001180  97815000  and r3, r1, r5
001184  5bdbffff  j -296
001188  00200100  mfence { sm }
00118c  80340002  core_id r9
001190  9f190000  addli r19, zero, 1
001194  6b5b8ffe  load.d r[23:24], -24(r30)
001198  9f500000  addli r1, zero, 5
00119c  bb8114fc  bneq r9, r1, -1952
0011a0  9f005000  addli r1, zero, 40
0011a4  3d000000  xfence
0011a8  00a00300  mfence { lm, sm, gm }
0011ac  33810028  zext_int2long r[3:4], r1
0011b0  5b040000  j 32
0011b4  9f705000  addli r1, zero, 47
0011b8  6b538fff  load.d r[7:8], -8(r30)
0011bc  1f790000  addli r18, zero, 7
0011c0  b3800028  zext_int2long r[2:3], r1
0011c4  93201304  setlt.ul r1, r[7:8], r[2:3]
0011c8  27110300  addli.d r[3:4], r[7:8], 1
0011cc  37850000  beq r1, zero, 320
0011d0  97342103  sll.d r[10:11], r[3:4], r18
0011d4  33030028  zext_int2long r[7:8], zero
0011d8  733c2ffe  store.d r[3:4], -8(r30)
0011dc  db040000  j 36
0011e0  27430300  addli.d r[7:8], r[7:8], 4
0011e4  0b91c710  add.s r2, r15, r12
0011e8  93204303  setneq.d r1, r[7:8], r[21:22]
0011ec  73663100  stores.w r3, 12(r2)
0011f0  73647101  stores.w r23, 8(r2)
0011f4  73629101  stores.w r25, 4(r2)
0011f8  73600101  stores.w r16, 0(r2)
0011fc  b7ee00fe  beq r1, zero, -72
001200  8b209310  add.ul r[2:3], r[7:8], r[10:11]
001204  1bb62000  slli r12, r1, 2
001208  8b10c410  add.s r1, r8, r12
00120c  6fcbc000  loads.w r22, 12(r1)
001210  efcd0000  loads.w r27, 0(r1)
001214  6fcd4000  loads.w r26, 4(r1)
001218  6fc98000  loads.w r18, 8(r1)
00121c  9709db00  and r19, r22, r13
001220  93003205  setlt.u r1, r4, r19
001224  3bb00000  bneq r1, zero, 12
001228  9f010b00  addli r3, r22, 0
00122c  5b010000  j 8
001230  97118b01  or r3, r22, r24
001234  9705d900  and r11, r18, r13
001238  9300b204  setlt.u r1, r4, r11
00123c  3bb00000  bneq r1, zero, 12
001240  9f0b0900  addli r23, r18, 0
001244  5b010000  j 8
001248  971b8901  or r23, r18, r24
00124c  170edd00  and r28, r26, r13
001250  9300c205  setlt.u r1, r4, r28
001254  3bb00000  bneq r1, zero, 12
001258  9f0c0d00  addli r25, r26, 0
00125c  5b010000  j 8
001260  971c8d01  or r25, r26, r24
001264  9780dd00  and r1, r27, r13
001268  13011204  setlt.u r2, r4, r1
00126c  3b500100  bneq r2, zero, 20
001270  1f880d00  addli r16, r27, 0
001274  93801804  setlt.u r1, r17, r1
001278  37d00000  beq r1, zero, 20
00127c  db040000  j 36
001280  17988d01  or r16, r27, r24
001284  93801804  setlt.u r1, r17, r1
001288  3be00000  bneq r1, zero, 24
00128c  9bc00d01  srli r1, r27, 16
001290  9b801000  andi r1, r1, 1
001294  8b901d10  add.s r1, r27, r1
001298  8b90e010  add.s r1, r1, r14
00129c  17885000  and r16, r1, r5
0012a0  9380c805  setlt.u r1, r17, r28
0012a4  37e00000  beq r1, zero, 24
0012a8  9380b804  setlt.u r1, r17, r11
0012ac  b7b00000  beq r1, zero, 44
0012b0  93803805  setlt.u r1, r17, r19
0012b4  bbbc00fe  bneq r1, zero, -212
0012b8  db070000  j 60
0012bc  9b400d01  srli r1, r26, 16
0012c0  9b801000  andi r1, r1, 1
0012c4  8b101d10  add.s r1, r26, r1
0012c8  8b90e010  add.s r1, r1, r14
0012cc  978c5000  and r25, r1, r5
0012d0  9380b804  setlt.u r1, r17, r11
0012d4  3bff00fe  bneq r1, zero, -36
0012d8  9b400901  srli r1, r18, 16
0012dc  9b801000  andi r1, r1, 1
0012e0  8b101910  add.s r1, r18, r1
0012e4  8b90e010  add.s r1, r1, r14
0012e8  978b5000  and r23, r1, r5
0012ec  93803805  setlt.u r1, r17, r19
0012f0  bbcb00fe  bneq r1, zero, -272
0012f4  9b400b01  srli r1, r22, 16
0012f8  9b801000  andi r1, r1, 1
0012fc  8b101b10  add.s r1, r22, r1
001300  8b90e010  add.s r1, r1, r14
001304  97815000  and r3, r1, r5
001308  5bdbffff  j -296
00130c  00200100  mfence { sm }
001310  80340002  core_id r9
001314  9f190000  addli r19, zero, 1
001318  6b5b8ffe  load.d r[23:24], -24(r30)
00131c  9f600000  addli r1, zero, 6
001320  bb9b14fa  bneq r9, r1, -2332
001324  9f006000  addli r1, zero, 48
001328  3d000000  xfence
00132c  00a00300  mfence { lm, sm, gm }
001330  33810028  zext_int2long r[3:4], r1
001334  5b040000  j 32
001338  9f706000  addli r1, zero, 55
00133c  6b538fff  load.d r[7:8], -8(r30)
001340  1f790000  addli r18, zero, 7
001344  b3800028  zext_int2long r[2:3], r1
001348  93201304  setlt.ul r1, r[7:8], r[2:3]
00134c  27110300  addli.d r[3:4], r[7:8], 1
001350  37850000  beq r1, zero, 320
001354  97342103  sll.d r[10:11], r[3:4], r18
001358  33030028  zext_int2long r[7:8], zero
00135c  733c2ffe  store.d r[3:4], -8(r30)
001360  db040000  j 36
001364  27430300  addli.d r[7:8], r[7:8], 4
001368  0b91c710  add.s r2, r15, r12
00136c  93204303  setneq.d r1, r[7:8], r[21:22]
001370  73663100  stores.w r3, 12(r2)
001374  73647101  stores.w r23, 8(r2)
001378  73629101  stores.w r25, 4(r2)
00137c  73600101  stores.w r16, 0(r2)
001380  b7ee00fe  beq r1, zero, -72
001384  8b209310  add.ul r[2:3], r[7:8], r[10:11]
001388  1bb62000  slli r12, r1, 2
00138c  8b10c410  add.s r1, r8, r12
001390  6fcbc000  loads.w r22, 12(r1)
001394  efcd0000  loads.w r27, 0(r1)
001398  6fcd4000  loads.w r26, 4(r1)
00139c  6fc98000  loads.w r18, 8(r1)
0013a0  9709db00  and r19, r22, r13
0013a4  93003205  setlt.u r1, r4, r19
0013a8  3bb00000  bneq r1, zero, 12
0013ac  9f010b00  addli r3, r22, 0
0013b0  5b010000  j 8
0013b4  97118b01  or r3, r22, r24
0013b8  9705d900  and r11, r18, r13
0013bc  9300b204  setlt.u r1, r4, r11
0013c0  3bb00000  bneq r1, zero, 12
0013c4  9f0b0900  addli r23, r18, 0
0013c8  5b010000  j 8
0013cc  971b8901  or r23, r18, r24
0013d0  170edd00  and r28, r26, r13
0013d4  9300c205  setlt.u r1, r4, r28
0013d8  3bb00000  bneq r1, zero, 12
0013dc  9f0c0d00  addli r25, r26, 0
0013e0  5b010000  j 8
0013e4  971c8d01  or r25, r26, r24
0013e8  9780dd00  and r1, r27, r13
0013ec  13011204  setlt.u r2, r4, r1
0013f0  3b500100  bneq r2, zero, 20
0013f4  1f880d00  addli r16, r27, 0
0013f8  93801804  setlt.u r1, r17, r1
0013fc  37d00000  beq r1, zero, 20
001400  db040000  j 36
001404  17988d01  or r16, r27, r24
001408  93801804  setlt.u r1, r17, r1
00140c  3be00000  bneq r1, zero, 24
001410  9bc00d01  srli r1, r27, 16
001414  9b801000  andi r1, r1, 1
001418  8b901d10  add.s r1, r27, r1
00141c  8b90e010  add.s r1, r1, r14
001420  17885000  and r16, r1, r5
001424  9380c805  setlt.u r1, r17, r28
001428  37e00000  beq r1, zero, 24
00142c  9380b804  setlt.u r1, r17, r11
001430  b7b00000  beq r1, zero, 44
001434  93803805  setlt.u r1, r17, r19
001438  bbbc00fe  bneq r1, zero, -212
00143c  db070000  j 60
001440  9b400d01  srli r1, r26, 16
001444  9b801000  andi r1, r1, 1
001448  8b101d10  add.s r1, r26, r1
00144c  8b90e010  add.s r1, r1, r14
001450  978c5000  and r25, r1, r5
001454  9380b804  setlt.u r1, r17, r11
001458  3bff00fe  bneq r1, zero, -36
00145c  9b400901  srli r1, r18, 16
001460  9b801000  andi r1, r1, 1
001464  8b101910  add.s r1, r18, r1
001468  8b90e010  add.s r1, r1, r14
00146c  978b5000  and r23, r1, r5
001470  93803805  setlt.u r1, r17, r19
001474  bbcb00fe  bneq r1, zero, -272
001478  9b400b01  srli r1, r22, 16
00147c  9b801000  andi r1, r1, 1
001480  8b101b10  add.s r1, r22, r1
001484  8b90e010  add.s r1, r1, r14
001488  97815000  and r3, r1, r5
00148c  5bdbffff  j -296
001490  00200100  mfence { sm }
001494  80340002  core_id r9
001498  9f190000  addli r19, zero, 1
00149c  6b5b8ffe  load.d r[23:24], -24(r30)
0014a0  e340afff  loadli.w r1,  -44(r30)
0014a4  37860000  beq r1, zero, 384
0014a8  9f007000  addli r1, zero, 56
0014ac  3d000000  xfence
0014b0  00a00300  mfence { lm, sm, gm }
0014b4  33810028  zext_int2long r[3:4], r1
0014b8  5b040000  j 32
0014bc  9f707000  addli r1, zero, 63
0014c0  6b538fff  load.d r[7:8], -8(r30)
0014c4  1f790000  addli r18, zero, 7
0014c8  b3800028  zext_int2long r[2:3], r1
0014cc  93201304  setlt.ul r1, r[7:8], r[2:3]
0014d0  27110300  addli.d r[3:4], r[7:8], 1
0014d4  37850000  beq r1, zero, 320
0014d8  97342103  sll.d r[10:11], r[3:4], r18
0014dc  33030028  zext_int2long r[7:8], zero
0014e0  733c2ffe  store.d r[3:4], -8(r30)
0014e4  db040000  j 36
0014e8  27430300  addli.d r[7:8], r[7:8], 4
0014ec  0b91c710  add.s r2, r15, r12
0014f0  93204303  setneq.d r1, r[7:8], r[21:22]
0014f4  73663100  stores.w r3, 12(r2)
0014f8  73647101  stores.w r23, 8(r2)
0014fc  73629101  stores.w r25, 4(r2)
001500  73600101  stores.w r16, 0(r2)
001504  b7ee00fe  beq r1, zero, -72
001508  8b209310  add.ul r[2:3], r[7:8], r[10:11]
00150c  1bb62000  slli r12, r1, 2
001510  8b10c410  add.s r1, r8, r12
001514  6fcbc000  loads.w r22, 12(r1)
001518  efcd0000  loads.w r27, 0(r1)
00151c  6fcd4000  loads.w r26, 4(r1)
001520  6fc98000  loads.w r18, 8(r1)
001524  9709db00  and r19, r22, r13
001528  93003205  setlt.u r1, r4, r19
00152c  3bb00000  bneq r1, zero, 12
001530  9f010b00  addli r3, r22, 0
001534  5b010000  j 8
001538  97118b01  or r3, r22, r24
00153c  9705d900  and r11, r18, r13
001540  9300b204  setlt.u r1, r4, r11
001544  3bb00000  bneq r1, zero, 12
001548  9f0b0900  addli r23, r18, 0
00154c  5b010000  j 8
001550  971b8901  or r23, r18, r24
001554  170edd00  and r28, r26, r13
001558  9300c205  setlt.u r1, r4, r28
00155c  3bb00000  bneq r1, zero, 12
001560  9f0c0d00  addli r25, r26, 0
001564  5b010000  j 8
001568  971c8d01  or r25, r26, r24
00156c  9780dd00  and r1, r27, r13
001570  13011204  setlt.u r2, r4, r1
001574  3b500100  bneq r2, zero, 20
001578  1f880d00  addli r16, r27, 0
00157c  93801804  setlt.u r1, r17, r1
001580  37d00000  beq r1, zero, 20
001584  db040000  j 36
001588  17988d01  or r16, r27, r24
00158c  93801804  setlt.u r1, r17, r1
001590  3be00000  bneq r1, zero, 24
001594  9bc00d01  srli r1, r27, 16
001598  9b801000  andi r1, r1, 1
00159c  8b901d10  add.s r1, r27, r1
0015a0  8b90e010  add.s r1, r1, r14
0015a4  17885000  and r16, r1, r5
0015a8  9380c805  setlt.u r1, r17, r28
0015ac  37e00000  beq r1, zero, 24
0015b0  9380b804  setlt.u r1, r17, r11
0015b4  b7b00000  beq r1, zero, 44
0015b8  93803805  setlt.u r1, r17, r19
0015bc  bbbc00fe  bneq r1, zero, -212
0015c0  db070000  j 60
0015c4  9b400d01  srli r1, r26, 16
0015c8  9b801000  andi r1, r1, 1
0015cc  8b101d10  add.s r1, r26, r1
0015d0  8b90e010  add.s r1, r1, r14
0015d4  978c5000  and r25, r1, r5
0015d8  9380b804  setlt.u r1, r17, r11
0015dc  3bff00fe  bneq r1, zero, -36
0015e0  9b400901  srli r1, r18, 16
0015e4  9b801000  andi r1, r1, 1
0015e8  8b101910  add.s r1, r18, r1
0015ec  8b90e010  add.s r1, r1, r14
0015f0  978b5000  and r23, r1, r5
0015f4  93803805  setlt.u r1, r17, r19
0015f8  bbcb00fe  bneq r1, zero, -272
0015fc  9b400b01  srli r1, r22, 16
001600  9b801000  andi r1, r1, 1
001604  8b101b10  add.s r1, r22, r1
001608  8b90e010  add.s r1, r1, r14
00160c  97815000  and r3, r1, r5
001610  5bdbffff  j -296
001614  00200100  mfence { sm }
001618  80340002  core_id r9
00161c  9f190000  addli r19, zero, 1
001620  6b5b8ffe  load.d r[23:24], -24(r30)
001624  9f70f001  addli r1, zero, 255
001628  80a20004  csr_set csr5, r1
00162c  00e00200  sync_core
001630  e340cfff  loadli.w r1,  -28(r30)
001634  3baf00f4  bneq r1, zero, -5176
001638  3bdf04f4  bneq r9, zero, -5164
00163c  e3405fff  loadli.w r1,  -84(r30)
001640  1f010007  addli r2, zero, 896
001644  9f078000  addli r15, zero, 64
001648  33010128  zext_int2long r[3:4], r2
00164c  9bb07000  slli r1, r1, 7
001650  33830028  zext_int2long r[7:8], r1
001654  e3407fff  loadli.w r1,  -68(r30)
001658  0b212340  min.ul r[3:4], r[7:8], r[3:4]
00165c  9bb06000  slli r1, r1, 6
001660  b3940028  sext_int2long r[10:11], r1
001664  a7000101  addli.d r[2:3], r[3:4], 128
001668  9f112000  addli r3, zero, 17
00166c  8bb56441  min.sl r[12:13], r[10:11], r[23:24]
001670  8ba06048  max.ul r[2:3], r[2:3], r[7:8]
001674  a7858500  addli.d r[12:13], r[12:13], 64
001678  8bb06018  sub.sl r[2:3], r[2:3], r[7:8]
00167c  0bb39548  max.sl r[7:8], r[12:13], r[10:11]
001680  8ba04041  min.ul r[2:3], r[2:3], r[21:22]
001684  b3850728  zext_int2long r[12:13], r15
001688  6b5a0f01  load.d r[21:22], 16(r30)
00168c  0b339318  sub.sl r[7:8], r[7:8], r[10:11]
001690  eb540ffc  load.d r[10:11], -64(r30)
001694  0b33b340  min.sl r[7:8], r[7:8], r[12:13]
001698  eb550ffb  load.d r[12:13], -80(r30)
00169c  97b43402  sll.d r[10:11], r[10:11], r3
0016a0  9f411000  addli r3, zero, 12
0016a4  8b249a10  add.ul r[10:11], r[21:22], r[10:11]
0016a8  7d900100  xwait r3, 0
0016ac  abc10300  lui r3, 60
0016b0  8ba4b410  add.ul r[10:11], r[10:11], r[12:13]
0016b4  9f550000  addli r11, zero, 5
0016b8  9b910104  ori r3, r3, 64
0016bc  1d800500  lock zero, r11
0016c0  8b113410  add.s r3, r8, r3
0016c4  1ff43000  addli r8, r1, 31
0016c8  9bb01000  slli r1, r1, 1
0016cc  1f010001  addli r2, zero, 128
0016d0  95890900  dma_cfg r19, r19, zero, 0
0016d4  15800902  dma_cfg zero, r19, zero, 1
0016d8  9b80e003  andi r1, r1, 62
0016dc  15050004  dma_cfg r10, zero, zero, 2
0016e0  9584f106  dma_cfg r9, r3, r15, 3
0016e4  9b415400  srli r3, r8, 5
0016e8  1f040010  addli r8, zero, 2048
0016ec  80340002  core_id r9
0016f0  95073108  dma_cfg r15, r2, r3, 4
0016f4  9f010004  addli r3, zero, 512
0016f8  1f511000  addli r2, zero, 13
0016fc  1584610a  dma_cfg r8, r3, r6, 5
001700  15001010  dma_cfg zero, zero, r1, 8
001704  35000000  dma_run zero
001708  1500300b  dma_cfg zero, zero, r19, 5
00170c  15000010  dma_cfg zero, zero, zero, 8
001710  1d900500  unlock r11
001714  7d000100  xsignal r2, 0
001718  db5efdff  j -5388
00171c  7d000000  xsignal zero, 0
001720  bbe00400  bneq r9, zero, 56
001724  9f200000  addli r1, zero, 2
001728  7d100000  xwait zero, 0
00172c  7d100000  xwait zero, 0
001730  7d100000  xwait zero, 0
001734  7d100000  xwait zero, 0
001738  7d100000  xwait zero, 0
00173c  7d100000  xwait zero, 0
001740  7d100000  xwait zero, 0
001744  7d100000  xwait zero, 0
001748  1d800000  lock zero, r1
00174c  0d000020  ew_cfg zero, zero, zero, 16
001750  1d900000  unlock r1
001754  7d400000  xsignal_mode_cfg zero
001758  9f8eee00  addli sp, sp, 112
00175c  00a00300  mfence { lm, sm, gm }
001760  00100000  exit
001764  00100000  exit
001768  00100000  exit
00176c  00100000  exit
001770  00100000  exit
001774  00100000  exit
001778  00100000  exit
00177c  00100000  exit
001780  00100000  exit
001784  00100000  exit
001788  00100000  exit
00178c  00100000  exit
001790  00100000  exit
001794  00100000  exit
001798  00100000  exit
00179c  00100000  exit
0017a0  00100000  exit
0017a4  00100000  exit
0017a8  00100000  exit
0017ac  00100000  exit
0017b0  00100000  exit
0017b4  00100000  exit
0017b8  00100000  exit
0017bc  00100000  exit
0017c0  00100000  exit
0017c4  00100000  exit
0017c8  00100000  exit
0017cc  00100000  exit
0017d0  00100000  exit
0017d4  00100000  exit
0017d8  00100000  exit
0017dc  00100000  exit
0017e0  00100000  exit
0017e4  00100000  exit
0017e8  00100000  exit
0017ec  00100000  exit
0017f0  00100000  exit
0017f4  00100000  exit
0017f8  00100000  exit
0017fc  00100000  exit
001800  00100000  exit
001804  00100000  exit
001808  00100000  exit
00180c  00100000  exit
001810  00100000  exit
001814  00100000  exit
001818  00100000  exit
00181c  00100000  exit
001820  00100000  exit
001824  00100000  exit
001828  00100000  exit
00182c  00100000  exit
001830  00100000  exit
001834  00100000  exit
001838  00100000  exit
00183c  00100000  exit
001840  00100000  exit
001844  00100000  exit
001848  00100000  exit
00184c  00100000  exit
001850  00100000  exit
001854  00100000  exit
001858  00100000  exit
00185c  00100000  exit
001860  00100000  exit
001864  00100000  exit
001868  00100000  exit
00186c  00100000  exit
001870  00100000  exit
001874  00100000  exit
001878  00100000  exit
00187c  00100000  exit
001880  00100000  exit
001884  00100000  exit
001888  00100000  exit
00188c  00100000  exit
001890  00100000  exit
001894  00100000  exit
001898  00100000  exit
00189c  00100000  exit
0018a0  00100000  exit
0018a4  00100000  exit
0018a8  00100000  exit
0018ac  00100000  exit
0018b0  00100000  exit
0018b4  00100000  exit
0018b8  00100000  exit
0018bc  00100000  exit
0018c0  00100000  exit
0018c4  00100000  exit
0018c8  00100000  exit
0018cc  00100000  exit
0018d0  00100000  exit
0018d4  00100000  exit
0018d8  00100000  exit
0018dc  00100000  exit
0018e0  00100000  exit
0018e4  00100000  exit
0018e8  00100000  exit
0018ec  00100000  exit
0018f0  00100000  exit
0018f4  00100000  exit
0018f8  00100000  exit
0018fc  00100000  exit
001900  00100000  exit
001904  00100000  exit
001908  00100000  exit
00190c  00100000  exit
001910  00100000  exit
001914  00100000  exit
001918  00100000  exit
00191c  00100000  exit
001920  00100000  exit
001924  00100000  exit
001928  00100000  exit
00192c  00100000  exit
001930  00100000  exit
001934  00100000  exit
001938  00100000  exit
00193c  00100000  exit
001940  00100000  exit
001944  00100000  exit
001948  00100000  exit
00194c  00100000  exit
001950  00100000  exit
001954  00100000  exit
001958  00100000  exit
00195c  00100000  exit
001960  00100000  exit
001964  00100000  exit
001968  00100000  exit
00196c  00100000  exit
001970  00100000  exit
001974  00100000  exit
001978  00100000  exit
00197c  00100000  exit
001980  00100000  exit
001984  00100000  exit
001988  00100000  exit
00198c  00100000  exit
001990  00100000  exit
001994  00100000  exit
001998  00100000  exit
00199c  00100000  exit
0019a0  00100000  exit
