; SHA-256 5d8bd5ea8be5f5e239b399df2d29edbd951d6b333d613936c5dad75491c25985
; P800 SDNN · XTDK LLVM 19 · 833 / 833 words decoded
; bound names: mm_act
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
00005c  9f097000  addli r19, zero, 56
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
0000b4  9f8e7efe  addli sp, sp, -200
0000b8  9f100000  addli r1, zero, 1
0000bc  00370002  core_id r14
0000c0  1f8f1e01  addli r30, sp, 136
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600700  beq r14, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5b200000  j 256
0000e0  1f210000  addli r2, zero, 2
0000e4  fdd00000  uni_sram_cfg r1, r1
0000e8  abf1ffff  lui r3, 1048575
0000ec  1d000100  lock zero, r2
0000f0  8d000020  ew_cfg r1, zero, zero, 16
0000f4  9b90f1ff  ori r1, r3, 4095
0000f8  1d100100  unlock r2
0000fc  1f610000  addli r2, zero, 6
000100  80a10004  csr_set csr3, r1
000104  9f501000  addli r1, zero, 13
000108  00d00100  sync_group
00010c  7d800000  xsignal r1, 0
000110  9f400000  addli r1, zero, 4
000114  7d000100  xsignal r2, 0
000118  7d000100  xsignal r2, 0
00011c  7d000100  xsignal r2, 0
000120  7d000100  xsignal r2, 0
000124  7d000100  xsignal r2, 0
000128  7d000100  xsignal r2, 0
00012c  7d000100  xsignal r2, 0
000130  7d000100  xsignal r2, 0
000134  7d000100  xsignal r2, 0
000138  7d000100  xsignal r2, 0
00013c  7d000100  xsignal r2, 0
000140  7d000100  xsignal r2, 0
000144  1f311000  addli r2, zero, 11
000148  7d800000  xsignal r1, 0
00014c  7d800000  xsignal r1, 0
000150  7d800000  xsignal r1, 0
000154  7d800000  xsignal r1, 0
000158  9f101000  addli r1, zero, 9
00015c  7d000100  xsignal r2, 0
000160  7d000100  xsignal r2, 0
000164  7d000100  xsignal r2, 0
000168  7d000100  xsignal r2, 0
00016c  7d000100  xsignal r2, 0
000170  7d000100  xsignal r2, 0
000174  7d000100  xsignal r2, 0
000178  7d000100  xsignal r2, 0
00017c  7d000100  xsignal r2, 0
000180  7d000100  xsignal r2, 0
000184  7d000100  xsignal r2, 0
000188  7d000100  xsignal r2, 0
00018c  7d000100  xsignal r2, 0
000190  7d000100  xsignal r2, 0
000194  7d000100  xsignal r2, 0
000198  7d000100  xsignal r2, 0
00019c  7d000100  xsignal r2, 0
0001a0  7d000100  xsignal r2, 0
0001a4  7d000100  xsignal r2, 0
0001a8  7d000100  xsignal r2, 0
0001ac  1f712000  addli r2, zero, 23
0001b0  7d800000  xsignal r1, 0
0001b4  7d800000  xsignal r1, 0
0001b8  7d800000  xsignal r1, 0
0001bc  7d800000  xsignal r1, 0
0001c0  9f002000  addli r1, zero, 16
0001c4  7d800000  xsignal r1, 0
0001c8  7d000100  xsignal r2, 0
0001cc  9f302000  addli r1, zero, 19
0001d0  1f512000  addli r2, zero, 21
0001d4  7d800000  xsignal r1, 0
0001d8  7d000100  xsignal r2, 0
0001dc  e3405f00  loadli.w r1,  44(r30)
0001e0  63016f00  loadli.w r2,  48(r30)
0001e4  00d20002  load_param_i r4, 1
0001e8  e3416f00  loadli.w r3,  52(r30)
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
000214  cb211104  ble.s r2, r1, 2152
000218  63024f00  loadli.w r4,  32(r30)
00021c  b3120128  sext_int2long r[6:7], r2
000220  630e5f00  loadli.w r28,  40(r30)
000224  e3414f00  loadli.w r3,  36(r30)
000228  9f090000  addli r19, zero, 0
00022c  9f0a0000  addli r21, zero, 0
000230  1f0b0000  addli r22, zero, 0
000234  9f450000  addli r11, zero, 4
000238  ab060400  lui r13, 64
00023c  e74f0ffe  storeli.w zero, -4(r30)
000240  73305ffa  store.d r[6:7], -96(r30)
000244  b3920028  sext_int2long r[6:7], r1
000248  b3100228  sext_int2long r[2:3], r4
00024c  733c1ff8  store.d r[2:3], -104(r30)
000250  9b302e00  slli r1, r28, 2
000254  67491ffe  storeli.w r1, -108(r30)
000258  b3900128  sext_int2long r[2:3], r3
00025c  733c1ffc  store.d r[2:3], -40(r30)
000260  9bb02100  slli r1, r3, 2
000264  2b011000  lui r2, 256
000268  e74c1ffe  storeli.w r1, -52(r30)
00026c  ab001400  lui r1, 320
000270  1b140140  ori r8, r2, 1024
000274  9b910040  ori r3, r1, 1024
000278  b3100e28  sext_int2long r[2:3], r28
00027c  73341ff8  store.d r[2:3], -120(r30)
000280  db0a0000  j 84
000284  eb500f01  load.d r[2:3], 16(r30)
000288  1f621000  addli r4, zero, 14
00028c  7d000200  xsignal r4, 0
000290  7d100200  xwait r4, 0
000294  1d800500  lock zero, r11
000298  1bb22800  slli r4, r17, 2
00029c  8ba0a011  add.ul r[2:3], r[2:3], r[27:28]
0002a0  15000000  dma_cfg zero, zero, zero, 0
0002a4  15000104  dma_cfg zero, r2, zero, 2
0002a8  15834006  dma_cfg r6, r1, r4, 3
0002ac  9f701000  addli r1, zero, 15
0002b0  1502a208  dma_cfg r4, r4, r10, 4
0002b4  35000000  dma_run zero
0002b8  1d900500  unlock r11
0002bc  7d800000  xsignal r1, 0
0002c0  eb528ffb  load.d r[6:7], -72(r30)
0002c4  eb500ffa  load.d r[2:3], -96(r30)
0002c8  a7920200  addli.d r[6:7], r[6:7], 1
0002cc  93b01204  setlt.sl r1, r[6:7], r[2:3]
0002d0  b7be0002  beq r1, zero, 1964
0002d4  3b30b700  bneq r14, r11, 12
0002d8  9f501000  addli r1, zero, 13
0002dc  7d900000  xwait r1, 0
0002e0  e3406f00  loadli.w r1,  52(r30)
0002e4  63016f00  loadli.w r2,  48(r30)
0002e8  733c5ffa  store.d r[6:7], -72(r30)
0002ec  1f2a0000  addli r20, zero, 2
0002f0  9f070008  addli r15, zero, 1024
0002f4  8b901230  div.s r1, r5, r1
0002f8  1f020100  addli r4, r2, 0
0002fc  0b914030  div.s r2, r1, r4
000300  8b904038  mod.s r1, r1, r4
000304  1b328100  slli r4, r2, 8
000308  33130128  sext_int2long r[7:8], r2
00030c  1bb18000  slli r2, r1, 8
000310  b3940028  sext_int2long r[10:11], r1
000314  9f001000  addli r1, zero, 8
000318  973b1302  sll.d r[24:25], r[7:8], r1
00031c  17b31402  sll.d r[7:8], r[10:11], r1
000320  9f70f001  addli r1, zero, 255
000324  b3180128  sext_int2long r[18:19], r2
000328  1f150000  addli r10, zero, 1
00032c  e74a4ffe  storeli.w r4, -84(r30)
000330  173d4303  sll.d r[27:28], r[7:8], r20
000334  b3800028  zext_int2long r[2:3], r1
000338  73387ffb  store.d r[24:25], -80(r30)
00033c  73381ffe  store.d r[2:3], -16(r30)
000340  7330affd  store.d r[27:28], -64(r30)
000344  3f0dae00  blt.s r28, r10, 832
000348  b3100228  sext_int2long r[2:3], r4
00034c  6b528ff8  load.d r[5:6], -120(r30)
000350  a7850802  addli.d r[12:13], r[18:19], 256
000354  1f080000  addli r16, zero, 0
000358  27830002  addli.d r[7:8], r[2:3], 256
00035c  8bb44b20  mul.sl r[10:11], r[24:25], r[5:6]
000360  6b528ff9  load.d r[5:6], -104(r30)
000364  0b334340  min.sl r[7:8], r[7:8], r[5:6]
000368  6b528ffd  load.d r[5:6], -40(r30)
00036c  0b331348  max.sl r[7:8], r[7:8], r[2:3]
000370  8bb54540  min.sl r[12:13], r[12:13], r[5:6]
000374  9f021000  addli r5, zero, 8
000378  8b3b1318  sub.sl r[24:25], r[7:8], r[2:3]
00037c  eb508f00  load.d r[2:3], 8(r30)
000380  17b34403  sll.d r[7:8], r[10:11], r20
000384  1f150000  addli r10, zero, 1
000388  1f0a0000  addli r20, zero, 0
00038c  8ba0a011  add.ul r[2:3], r[2:3], r[27:28]
000390  e34d2fff  loadli.w r27,  -108(r30)
000394  73381ffc  store.d r[2:3], -48(r30)
000398  8bb01549  max.sl r[2:3], r[12:13], r[18:19]
00039c  9f450000  addli r11, zero, 4
0003a0  8bbc1019  sub.sl r[26:27], r[2:3], r[18:19]
0003a4  eb500f00  load.d r[2:3], 0(r30)
0003a8  1bb62c00  slli r12, r25, 2
0003ac  73349fff  store.d r[26:27], -24(r30)
0003b0  8ba06010  add.ul r[2:3], r[2:3], r[7:8]
0003b4  73301ffe  store.d r[2:3], -32(r30)
0003b8  db070000  j 60
0003bc  9f700000  addli r1, zero, 7
0003c0  7d800000  xsignal r1, 0
0003c4  1f150000  addli r10, zero, 1
0003c8  ab060400  lui r13, 64
0003cc  e340ffff  loadli.w r1,  -4(r30)
0003d0  9f990900  addli r19, r19, 1
0003d4  9f9a0a00  addli r21, r21, 1
0003d8  1f1b0b00  addli r22, r22, 1
0003dc  1f088800  addli r16, r16, 64
0003e0  1f1a0a00  addli r20, r20, 1
0003e4  9f900000  addli r1, r1, 1
0003e8  e74f1ffe  storeli.w r1, -4(r30)
0003ec  3f20c801  blt.s r16, r28, 8
0003f0  db520000  j 660
0003f4  0b92ba38  mod.s r4, r21, r11
0003f8  9f401000  addli r1, zero, 12
0003fc  0b931938  mod.s r6, r19, r1
000400  b3100828  sext_int2long r[2:3], r16
000404  1b320201  slli r4, r4, 16
000408  9b330301  slli r7, r6, 16
00040c  8b14d210  add.s r9, r4, r13
000410  3b32a700  bneq r14, r10, 140
000414  a78c0800  addli.d r[26:27], r[18:19], 0
000418  eb580fff  load.d r[18:19], -16(r30)
00041c  9f160000  addli r13, zero, 1
000420  1f230000  addli r6, zero, 2
000424  7d900500  xwait r11, 0
000428  13b27805  setlt.sl r4, r[18:19], r[24:25]
00042c  bb200200  bneq r4, zero, 40
000430  1d000300  lock zero, r6
000434  1f727000  addli r4, zero, 63
000438  0d000002  ew_cfg zero, zero, zero, 1
00043c  0d100000  ewcoeff_cfg zero, zero, zero, 0
000440  0d000204  ew_cfg zero, r4, zero, 2
000444  1f020002  addli r4, zero, 256
000448  0d020006  ew_cfg r4, zero, zero, 3
00044c  cd340000  ssaux r9, 0
000450  1d100300  unlock r6
000454  7d000300  xsignal r6, 0
000458  eb580ffe  load.d r[18:19], -32(r30)
00045c  17b56002  sll.d r[11:12], r[2:3], r6
000460  1f420000  addli r4, zero, 4
000464  7d100300  xwait r6, 0
000468  1d000200  lock zero, r4
00046c  1f020002  addli r4, zero, 256
000470  0ba5a810  add.ul r[11:12], r[18:19], r[11:12]
000474  15000000  dma_cfg zero, zero, zero, 0
000478  a7880c00  addli.d r[18:19], r[26:27], 0
00047c  15800504  dma_cfg zero, r11, zero, 2
000480  95044506  dma_cfg r9, r10, r4, 3
000484  9f450000  addli r11, zero, 4
000488  15827d09  dma_cfg r4, r27, r23, 4
00048c  1f320000  addli r4, zero, 3
000490  35000000  dma_run zero
000494  1d900500  unlock r11
000498  db090000  j 76
00049c  9f160000  addli r13, zero, 1
0004a0  1f230000  addli r6, zero, 2
0004a4  3b116700  bneq r14, r6, 68
0004a8  1f320000  addli r4, zero, 3
0004ac  7d100200  xwait r4, 0
0004b0  1f620000  addli r4, zero, 6
0004b4  7d100200  xwait r4, 0
0004b8  b7900b00  beq r23, zero, 36
0004bc  1d000000  lock zero, zero
0004c0  1f028000  addli r4, zero, 64
0004c4  01030000  ds_cfg r6, zero, 0
0004c8  01020002  ds_cfg r4, zero, 1
0004cc  0102001c  ds_cfg r4, zero, 14
0004d0  810b001a  ds_cfg r23, zero, 13
0004d4  a1934402  shuffle_batch r7, r9, r4, 1
0004d8  1d100000  unlock zero
0004dc  1f520000  addli r4, zero, 5
0004e0  7d800500  xsignal r11, 0
0004e4  7d000200  xsignal r4, 0
0004e8  6342ffff  loadli.w r4,  -4(r30)
0004ec  ab040800  lui r9, 128
0004f0  0b12b238  mod.s r4, r4, r11
0004f4  1b320201  slli r4, r4, 16
0004f8  0b159210  add.s r10, r4, r9
0004fc  3b11d700  bneq r14, r13, 68
000500  eb500fff  load.d r[2:3], -16(r30)
000504  eb5c8ffe  load.d r[26:27], -24(r30)
000508  93b09005  setlt.sl r1, r[2:3], r[26:27]
00050c  1f111000  addli r2, zero, 9
000510  7d100100  xwait r2, 0
000514  bbaa00fe  bneq r1, zero, -344
000518  1d000300  lock zero, r6
00051c  9f70f001  addli r1, zero, 255
000520  0d000002  ew_cfg zero, zero, zero, 1
000524  0d100000  ewcoeff_cfg zero, zero, zero, 0
000528  0d800004  ew_cfg zero, r1, zero, 2
00052c  9f008000  addli r1, zero, 64
000530  8d000006  ew_cfg r1, zero, zero, 3
000534  4d350000  ssaux r10, 0
000538  1d100300  unlock r6
00053c  5bd0ffff  j -384
000540  1f422000  addli r4, zero, 20
000544  0b124b38  mod.s r4, r22, r4
000548  9b340201  slli r9, r4, 16
00054c  1f720000  addli r4, zero, 7
000550  b7014700  beq r14, r4, 96
000554  ab060400  lui r13, 64
000558  1f620000  addli r4, zero, 6
00055c  3b524700  bneq r14, r4, 148
000560  6b528ffd  load.d r[5:6], -40(r30)
000564  8bb04020  mul.sl r[2:3], r[2:3], r[5:6]
000568  1f720000  addli r4, zero, 7
00056c  9f021000  addli r5, zero, 8
000570  7d100200  xwait r4, 0
000574  1d800500  lock zero, r11
000578  97b06002  sll.d r[2:3], r[2:3], r6
00057c  6b530ffd  load.d r[7:8], -48(r30)
000580  15000000  dma_cfg zero, zero, zero, 0
000584  8b201310  add.ul r[2:3], r[7:8], r[2:3]
000588  15000104  dma_cfg zero, r2, zero, 2
00058c  1585c006  dma_cfg r10, r1, r12, 3
000590  1f018000  addli r2, zero, 64
000594  1f150000  addli r10, zero, 1
000598  e3409fff  loadli.w r1,  -52(r30)
00059c  95872008  dma_cfg r15, r1, r2, 4
0005a0  35000000  dma_run zero
0005a4  1d900500  unlock r11
0005a8  7d800200  xsignal r5, 0
0005ac  5bc4ffff  j -480
0005b0  9f301000  addli r1, zero, 11
0005b4  7d900200  xwait r5, 0
0005b8  1f018000  addli r2, zero, 64
0005bc  7d900000  xwait r1, 0
0005c0  1d000000  lock zero, zero
0005c4  9f000002  addli r1, zero, 256
0005c8  01030000  ds_cfg r6, zero, 0
0005cc  81000002  ds_cfg r1, zero, 1
0005d0  0101001c  ds_cfg r2, zero, 14
0005d4  8100001a  ds_cfg r1, zero, 13
0005d8  9f101000  addli r1, zero, 9
0005dc  c1042504  shuffle_coa r9, r10, r2, 2
0005e0  1d100000  unlock zero
0005e4  7d800000  xsignal r1, 0
0005e8  9f201000  addli r1, zero, 10
0005ec  dbbaffff  j -556
0005f0  1f150000  addli r10, zero, 1
0005f4  3b67b7fe  bneq r14, r11, -552
0005f8  9f500000  addli r1, zero, 5
0005fc  1f018000  addli r2, zero, 64
000600  1f020008  addli r4, zero, 1024
000604  2b430000  lui r6, 4
000608  7d900000  xwait r1, 0
00060c  9f201000  addli r1, zero, 10
000610  7d900000  xwait r1, 0
000614  b7400a00  beq r20, zero, 48
000618  37d10b00  beq r23, zero, 84
00061c  9f000000  addli r1, zero, 0
000620  1d000500  lock zero, r10
000624  09017101  mm_cfg r2, r2, r23, 0
000628  8985a204  mm_cfg r11, r5, r10, 2
00062c  a9909310  mm_acc r1, r7, r9, 8
000630  9f800002  addli r1, r1, 256
000634  8b946410  add.s r9, r9, r6
000638  1d100500  unlock r10
00063c  bb9f40fe  bneq r1, r4, -28
000640  db050000  j 44
000644  b7a00b00  beq r23, zero, 40
000648  9f000000  addli r1, zero, 0
00064c  1d000500  lock zero, r10
000650  09017101  mm_cfg r2, r2, r23, 0
000654  8985a204  mm_cfg r11, r5, r10, 2
000658  a9809310  mm r1, r7, r9, 8
00065c  9f800002  addli r1, r1, 256
000660  8b946410  add.s r9, r9, r6
000664  1d100500  unlock r10
000668  bb9f40fe  bneq r1, r4, -28
00066c  9f600000  addli r1, zero, 6
000670  9f070008  addli r15, zero, 1024
000674  7d800000  xsignal r1, 0
000678  9f301000  addli r1, zero, 11
00067c  7d800000  xsignal r1, 0
000680  dba9ffff  j -692
000684  2b030c00  lui r6, 192
000688  3b30b700  bneq r14, r11, 12
00068c  9f401000  addli r1, zero, 12
000690  7d800000  xsignal r1, 0
000694  6b528ffd  load.d r[5:6], -40(r30)
000698  a7800802  addli.d r[2:3], r[18:19], 256
00069c  6b5d0ffc  load.d r[27:28], -64(r30)
0006a0  8bb04040  min.sl r[2:3], r[2:3], r[5:6]
0006a4  9f220000  addli r5, zero, 2
0006a8  8bb01049  max.sl r[2:3], r[2:3], r[18:19]
0006ac  8bb81019  sub.sl r[18:19], r[2:3], r[18:19]
0006b0  bb70a700  bneq r14, r10, 60
0006b4  eb500fff  load.d r[2:3], -16(r30)
0006b8  93b01005  setlt.sl r1, r[2:3], r[18:19]
0006bc  1f012000  addli r2, zero, 16
0006c0  7d100100  xwait r2, 0
0006c4  3b8f00fc  bneq r1, zero, -1088
0006c8  1d800200  lock zero, r5
0006cc  9f70f001  addli r1, zero, 255
0006d0  0d000002  ew_cfg zero, zero, zero, 1
0006d4  0d100000  ewcoeff_cfg zero, zero, zero, 0
0006d8  0d800004  ew_cfg zero, r1, zero, 2
0006dc  0d050006  ew_cfg r10, zero, zero, 3
0006e0  4d330000  ssaux r6, 0
0006e4  1d900200  unlock r5
0006e8  db73ffff  j -1124
0006ec  9f500000  addli r1, zero, 5
0006f0  b76c1700  beq r14, r1, 824
0006f4  9f000002  addli r1, zero, 256
0006f8  1b180340  ori r16, r6, 1024
0006fc  b38b0028  zext_int2long r[24:25], r1
000700  9f300000  addli r1, zero, 3
000704  3b5a1700  bneq r14, r1, 660
000708  1f411000  addli r2, zero, 12
00070c  733c1ff7  store.d r[18:19], -136(r30)
000710  67086fff  storeli.w r22, -128(r30)
000714  67485fff  storeli.w r21, -124(r30)
000718  670d3fff  storeli.w r19, -48(r30)
00071c  1f220000  addli r4, zero, 2
000720  9f000000  addli r1, zero, 0
000724  7d100100  xwait r2, 0
000728  1f711000  addli r2, zero, 15
00072c  7d100100  xwait r2, 0
000730  1f312000  addli r2, zero, 19
000734  7d100100  xwait r2, 0
000738  1d000200  lock zero, r4
00073c  2b01803f  lui r2, 260096
000740  0d000002  ew_cfg zero, zero, zero, 1
000744  0d110100  ewcoeff_cfg r2, r2, zero, 0
000748  1f71f001  addli r2, zero, 255
00074c  0d000104  ew_cfg zero, r2, zero, 2
000750  0d050006  ew_cfg r10, zero, zero, 3
000754  0b918010  add.s r2, r1, r8
000758  2d816000  dsmadd r2, r1, r6, 0
00075c  9f800008  addli r1, r1, 1024
000760  bbdfd0fe  bneq r1, r13, -12
000764  9f501000  addli r1, zero, 13
000768  1d100200  unlock r4
00076c  7d800000  xsignal r1, 0
000770  9f002000  addli r1, zero, 16
000774  7d800000  xsignal r1, 0
000778  9f102000  addli r1, zero, 17
00077c  7d800000  xsignal r1, 0
000780  9f202000  addli r1, zero, 18
000784  7d900000  xwait r1, 0
000788  9f402000  addli r1, zero, 20
00078c  7d900000  xwait r1, 0
000790  9f702000  addli r1, zero, 23
000794  7d900000  xwait r1, 0
000798  b3000028  zext_int2long r[2:3], zero
00079c  3d000000  xfence
0007a0  00a00300  mfence { lm, sm, gm }
0007a4  27820000  addli.d r[5:6], r[2:3], 0
0007a8  73301ffe  store.d r[2:3], -32(r30)
0007ac  5b030000  j 24
0007b0  eb500fff  load.d r[2:3], -16(r30)
0007b4  6b528ffe  load.d r[5:6], -24(r30)
0007b8  93201204  setlt.ul r1, r[5:6], r[2:3]
0007bc  27120200  addli.d r[5:6], r[5:6], 1
0007c0  37e60000  beq r1, zero, 408
0007c4  9f001000  addli r1, zero, 8
0007c8  6b560ffe  load.d r[13:14], -32(r30)
0007cc  73344ffe  store.d r[5:6], -24(r30)
0007d0  97381202  sll.d r[18:19], r[5:6], r1
0007d4  db060000  j 52
0007d8  27061600  addli.d r[13:14], r[13:14], 8
0007dc  8b100a11  add.s r1, r20, r16
0007e0  13217603  setneq.d r2, r[13:14], r[24:25]
0007e4  73e6a001  stores.w r26, 12(r1)
0007e8  73e4e000  stores.w r14, 8(r1)
0007ec  73e26000  stores.w r6, 4(r1)
0007f0  73e07000  stores.w r7, 0(r1)
0007f4  73eea000  stores.w r10, 28(r1)
0007f8  73ecc001  stores.w r28, 24(r1)
0007fc  73ea3001  stores.w r19, 20(r1)
000800  73e86001  stores.w r22, 16(r1)
000804  b73e01fe  beq r2, zero, -84
000808  8b201611  add.ul r[2:3], r[13:14], r[18:19]
00080c  1bba2000  slli r20, r1, 2
000810  0b138a10  add.s r6, r20, r8
000814  0b123a10  add.s r4, r20, r3
000818  ef430300  loads.w r7, 0(r6)
00081c  ef4ac300  loads.w r21, 12(r6)
000820  ef4d8300  loads.w r27, 8(r6)
000824  ef4c4300  loads.w r25, 4(r6)
000828  ef40c301  loads.w r1, 28(r6)
00082c  ef458301  loads.w r11, 24(r6)
000830  6f414301  loads.w r2, 20(r6)
000834  ef440301  loads.w r9, 16(r6)
000838  6f4dc200  loads.w r26, 12(r4)
00083c  6f478200  loads.w r14, 8(r4)
000840  6f434200  loads.w r6, 4(r4)
000844  6f45c201  loads.w r10, 28(r4)
000848  6f4e8201  loads.w r28, 24(r4)
00084c  ef494201  loads.w r19, 20(r4)
000850  6f4b0201  loads.w r22, 16(r4)
000854  9bb29300  slli r5, r7, 9
000858  9bc77301  srli r15, r7, 23
00085c  93820200  seteq r5, r5, zero
000860  9b87f70f  andi r15, r15, 255
000864  9bf7f70f  setlti r15, r15, 255
000868  97925700  or r5, r15, r5
00086c  37a00200  beq r5, zero, 8
000870  ef430200  loads.w r7, 0(r4)
000874  1bb29c00  slli r4, r25, 9
000878  9bc27c01  srli r5, r25, 23
00087c  13020200  seteq r4, r4, zero
000880  9b82f20f  andi r5, r5, 255
000884  9bf2f20f  setlti r5, r5, 255
000888  17924200  or r4, r5, r4
00088c  3b200200  bneq r4, zero, 8
000890  1f830c00  addli r6, r25, 0
000894  1bb29d00  slli r4, r27, 9
000898  9bc27d01  srli r5, r27, 23
00089c  13020200  seteq r4, r4, zero
0008a0  9b82f20f  andi r5, r5, 255
0008a4  9bf2f20f  setlti r5, r5, 255
0008a8  17924200  or r4, r5, r4
0008ac  3b200200  bneq r4, zero, 8
0008b0  1f870d00  addli r14, r27, 0
0008b4  1bb29a00  slli r4, r21, 9
0008b8  9bc27a01  srli r5, r21, 23
0008bc  13020200  seteq r4, r4, zero
0008c0  9b82f20f  andi r5, r5, 255
0008c4  9bf2f20f  setlti r5, r5, 255
0008c8  17924200  or r4, r5, r4
0008cc  3b200200  bneq r4, zero, 8
0008d0  1f8d0a00  addli r26, r21, 0
0008d4  1bb29400  slli r4, r9, 9
0008d8  9bc27401  srli r5, r9, 23
0008dc  13020200  seteq r4, r4, zero
0008e0  9b82f20f  andi r5, r5, 255
0008e4  9bf2f20f  setlti r5, r5, 255
0008e8  17924200  or r4, r5, r4
0008ec  3b200200  bneq r4, zero, 8
0008f0  1f8b0400  addli r22, r9, 0
0008f4  1b329100  slli r4, r2, 9
0008f8  9b427101  srli r5, r2, 23
0008fc  13020200  seteq r4, r4, zero
000900  9b82f20f  andi r5, r5, 255
000904  9bf2f20f  setlti r5, r5, 255
000908  17924200  or r4, r5, r4
00090c  3b200200  bneq r4, zero, 8
000910  9f090100  addli r19, r2, 0
000914  1bb19500  slli r2, r11, 9
000918  1bc27501  srli r4, r11, 23
00091c  13010100  seteq r2, r2, zero
000920  1b02f20f  andi r4, r4, 255
000924  1b72f20f  setlti r4, r4, 255
000928  17112200  or r2, r4, r2
00092c  3b200100  bneq r2, zero, 8
000930  1f8e0500  addli r28, r11, 0
000934  1bb19000  slli r2, r1, 9
000938  1bc27001  srli r4, r1, 23
00093c  13010100  seteq r2, r2, zero
000940  1b02f20f  andi r4, r4, 255
000944  1b72f20f  setlti r4, r4, 255
000948  17112200  or r2, r4, r2
00094c  3b3a01fe  bneq r2, zero, -372
000950  1f850000  addli r10, r1, 0
000954  dbd0ffff  j -380
000958  9f302000  addli r1, zero, 19
00095c  00200100  mfence { sm }
000960  630e5f00  loadli.w r28,  40(r30)
000964  00370002  core_id r14
000968  9f450000  addli r11, zero, 4
00096c  ab060400  lui r13, 64
000970  7d800000  xsignal r1, 0
000974  9f502000  addli r1, zero, 21
000978  7d800000  xsignal r1, 0
00097c  9f602000  addli r1, zero, 22
000980  7d800000  xsignal r1, 0
000984  e309afff  loadli.w r19,  -48(r30)
000988  e34a0fff  loadli.w r21,  -124(r30)
00098c  630b0fff  loadli.w r22,  -128(r30)
000990  6b5d0ffc  load.d r[27:28], -64(r30)
000994  eb588ff7  load.d r[18:19], -136(r30)
000998  bb2407fc  bneq r14, zero, -1752
00099c  e3405fff  loadli.w r1,  -84(r30)
0009a0  eb548ffd  load.d r[10:11], -40(r30)
0009a4  eb550ffb  load.d r[12:13], -80(r30)
0009a8  0bb27841  min.sl r[5:6], r[18:19], r[24:25]
0009ac  eb588f01  load.d r[18:19], 24(r30)
0009b0  9f070008  addli r15, zero, 1024
0009b4  1b322200  slli r4, r4, 2
0009b8  b3900028  sext_int2long r[2:3], r1
0009bc  8bb49520  mul.sl r[10:11], r[12:13], r[10:11]
0009c0  eb558ff9  load.d r[12:13], -104(r30)
0009c4  27830002  addli.d r[7:8], r[2:3], 256
0009c8  0b33b340  min.sl r[7:8], r[7:8], r[12:13]
0009cc  1f260000  addli r12, zero, 2
0009d0  9f450000  addli r11, zero, 4
0009d4  97b4c402  sll.d r[10:11], r[10:11], r12
0009d8  0b331348  max.sl r[7:8], r[7:8], r[2:3]
0009dc  8ba49810  add.ul r[10:11], r[18:19], r[10:11]
0009e0  8b301318  sub.sl r[2:3], r[7:8], r[2:3]
0009e4  0ba3a411  add.ul r[7:8], r[10:11], r[27:28]
0009e8  1f652000  addli r10, zero, 22
0009ec  9f140000  addli r9, zero, 1
0009f0  8bb07041  min.sl r[2:3], r[2:3], r[24:25]
0009f4  7d100500  xwait r10, 0
0009f8  1f550000  addli r10, zero, 5
0009fc  1d000500  lock zero, r10
000a00  15000000  dma_cfg zero, zero, zero, 0
000a04  15800402  dma_cfg zero, r9, zero, 1
000a08  95030004  dma_cfg r7, zero, zero, 2
000a0c  15034806  dma_cfg r6, r16, r4, 3
000a10  63429fff  loadli.w r4,  -52(r30)
000a14  15821708  dma_cfg r4, r15, r1, 4
000a18  35000000  dma_run zero
000a1c  1d100500  unlock r10
000a20  9f702000  addli r1, zero, 23
000a24  5b13ffff  j -1896
000a28  1f112000  addli r2, zero, 17
000a2c  9f000000  addli r1, zero, 0
000a30  7d100100  xwait r2, 0
000a34  1f512000  addli r2, zero, 21
000a38  7d100100  xwait r2, 0
000a3c  1d800200  lock zero, r5
000a40  1f71f001  addli r2, zero, 255
000a44  0d000002  ew_cfg zero, zero, zero, 1
000a48  0d000104  ew_cfg zero, r2, zero, 2
000a4c  0d050006  ew_cfg r10, zero, zero, 3
000a50  0d100000  ewcoeff_cfg zero, zero, zero, 0
000a54  0b913010  add.s r2, r1, r3
000a58  0b928010  add.s r4, r1, r8
000a5c  9f800008  addli r1, r1, 1024
000a60  2d214200  dscmpnsel r2, r4, r4, 0
000a64  bbcfd0fe  bneq r1, r13, -16
000a68  9f202000  addli r1, zero, 18
000a6c  1d900200  unlock r5
000a70  7d800000  xsignal r1, 0
000a74  9f402000  addli r1, zero, 20
000a78  db08ffff  j -1980
000a7c  7d000000  xsignal zero, 0
000a80  bb600700  bneq r14, zero, 56
000a84  9f200000  addli r1, zero, 2
000a88  7d100000  xwait zero, 0
000a8c  7d100000  xwait zero, 0
000a90  7d100000  xwait zero, 0
000a94  7d100000  xwait zero, 0
000a98  7d100000  xwait zero, 0
000a9c  7d100000  xwait zero, 0
000aa0  7d100000  xwait zero, 0
000aa4  7d100000  xwait zero, 0
000aa8  1d800000  lock zero, r1
000aac  0d000020  ew_cfg zero, zero, zero, 16
000ab0  1d900000  unlock r1
000ab4  7d400000  xsignal_mode_cfg zero
000ab8  9f8e1e01  addli sp, sp, 136
000abc  00a00300  mfence { lm, sm, gm }
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
