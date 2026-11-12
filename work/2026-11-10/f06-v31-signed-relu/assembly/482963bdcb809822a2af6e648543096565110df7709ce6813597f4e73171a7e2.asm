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
00005c  9f498000  addli r19, zero, 68
000060  1f8a0eff  addli r20, sp, -128
000064  ff494201  bl_gm2lm r19, r20, 0(r[5:6])
000068  00a00200  mfence { lm, gm }
00006c  abfa0000  lui r21, 15
000070  9b9afaff  ori r21, r21, 4095
000074  80a10a04  csr_set csr3, r21
000078  00d00100  sync_group
00007c  fe8007e0  vmmov mr1, r15
000080  fe900720  vmmovh mr1, r15
000084  d7170000  jal 188
000088  fe8007e0  vmmov mr1, r15
00008c  fe900720  vmmovh mr1, r15
000090  1f8a0eff  addli r20, sp, -128
000094  4a100002  vloads_mask16.mz vr0{mr1}, 0(zero)
000098  ca108002  vloads_mask16.mz vr1{mr1}, 64(zero)
00009c  46000a02  vstore.mz vr0{mr1}, 0(r20)
0000a0  46041a02  vstore.mz vr1{mr1}, 64(r20)
0000a4  00a00100  mfence { lm, sm }
0000a8  00d00100  sync_group
0000ac  97a01000  xor r1, r1, r1
0000b0  1f8f0e00  addli r30, sp, 0
0000b4  d7170000  jal 188
0000b8  00400000  trap
0000bc  9f8e1efe  addli sp, sp, -248
0000c0  9f110000  addli r3, zero, 1
0000c4  00310002  core_id r2
0000c8  1f8ffe00  addli r30, sp, 120
0000cc  7dc00100  xsignal_mode_cfg r3
0000d0  b7100100  beq r2, zero, 36
0000d4  abf0ffff  lui r1, 1048575
0000d8  7d900100  xwait r3, 0
0000dc  7d900100  xwait r3, 0
0000e0  7d100000  xwait zero, 0
0000e4  9b90f0ff  ori r1, r1, 4095
0000e8  80a10004  csr_set csr3, r1
0000ec  00d00100  sync_group
0000f0  5b300000  j 384
0000f4  1f230000  addli r6, zero, 2
0000f8  fdd10100  uni_sram_cfg r3, r3
0000fc  9f400000  addli r1, zero, 4
000100  6b520f03  load.d r[5:6], 48(r30)
000104  9f030020  addli r7, zero, 4096
000108  1d000300  lock zero, r6
00010c  8d010020  ew_cfg r3, zero, zero, 16
000110  1d100300  unlock r6
000114  1d800000  lock zero, r1
000118  15000000  dma_cfg zero, zero, zero, 0
00011c  15800204  dma_cfg zero, r5, zero, 2
000120  15007206  dma_cfg zero, r4, r7, 3
000124  1f024000  addli r4, zero, 32
000128  9f020008  addli r5, zero, 1024
00012c  15003008  dma_cfg zero, zero, r3, 4
000130  35000000  dma_run zero
000134  1d900000  unlock r1
000138  7d800100  xsignal r3, 0
00013c  7d900100  xwait r3, 0
000140  1d000000  lock zero, zero
000144  01030000  ds_cfg r6, zero, 0
000148  01000002  ds_cfg zero, zero, 1
00014c  01000016  ds_cfg zero, zero, 11
000150  0102001a  ds_cfg r4, zero, 13
000154  1f620000  addli r4, zero, 6
000158  8102001c  ds_cfg r5, zero, 14
00015c  a1135008  shuffle_batch r7, zero, r5, 4
000160  1d100000  unlock zero
000164  7d800100  xsignal r3, 0
000168  7d900100  xwait r3, 0
00016c  1d000300  lock zero, r6
000170  ab110100  lui r3, 17
000174  0da00300  ewtable_cfg r7, 0
000178  0da00102  ewtable_cfg r3, 1
00017c  abf1ffff  lui r3, 1048575
000180  1d100300  unlock r6
000184  7d000000  xsignal zero, 0
000188  7d100000  xwait zero, 0
00018c  9b91f1ff  ori r3, r3, 4095
000190  80a10104  csr_set csr3, r3
000194  9f511000  addli r3, zero, 13
000198  00d00100  sync_group
00019c  7d800100  xsignal r3, 0
0001a0  9f311000  addli r3, zero, 11
0001a4  7d000200  xsignal r4, 0
0001a8  7d000200  xsignal r4, 0
0001ac  7d000200  xsignal r4, 0
0001b0  7d000200  xsignal r4, 0
0001b4  7d000200  xsignal r4, 0
0001b8  7d000200  xsignal r4, 0
0001bc  7d000200  xsignal r4, 0
0001c0  7d000200  xsignal r4, 0
0001c4  7d000200  xsignal r4, 0
0001c8  7d000200  xsignal r4, 0
0001cc  7d000200  xsignal r4, 0
0001d0  7d000200  xsignal r4, 0
0001d4  7d800000  xsignal r1, 0
0001d8  7d800000  xsignal r1, 0
0001dc  7d800000  xsignal r1, 0
0001e0  7d800000  xsignal r1, 0
0001e4  7d800000  xsignal r1, 0
0001e8  7d800000  xsignal r1, 0
0001ec  9f101000  addli r1, zero, 9
0001f0  7d800100  xsignal r3, 0
0001f4  7d800100  xsignal r3, 0
0001f8  7d800100  xsignal r3, 0
0001fc  7d800100  xsignal r3, 0
000200  7d800100  xsignal r3, 0
000204  7d800100  xsignal r3, 0
000208  7d800100  xsignal r3, 0
00020c  7d800100  xsignal r3, 0
000210  7d800100  xsignal r3, 0
000214  7d800100  xsignal r3, 0
000218  7d800100  xsignal r3, 0
00021c  7d800100  xsignal r3, 0
000220  7d800100  xsignal r3, 0
000224  7d800100  xsignal r3, 0
000228  7d800100  xsignal r3, 0
00022c  7d800100  xsignal r3, 0
000230  7d800100  xsignal r3, 0
000234  7d800100  xsignal r3, 0
000238  7d800100  xsignal r3, 0
00023c  7d800100  xsignal r3, 0
000240  9f012000  addli r3, zero, 16
000244  7d800000  xsignal r1, 0
000248  7d800000  xsignal r1, 0
00024c  7d800000  xsignal r1, 0
000250  7d800000  xsignal r1, 0
000254  7d800000  xsignal r1, 0
000258  7d800000  xsignal r1, 0
00025c  9f402000  addli r1, zero, 20
000260  7d800100  xsignal r3, 0
000264  9f512000  addli r3, zero, 21
000268  7d800000  xsignal r1, 0
00026c  7d800100  xsignal r3, 0
000270  e3007f00  loadli.w r1,  56(r30)
000274  e3417f00  loadli.w r3,  60(r30)
000278  80d20002  load_param_i r5, 1
00027c  63028f00  loadli.w r4,  64(r30)
000280  8b901120  mul.s r1, r3, r1
000284  9f810200  addli r3, r5, 0
000288  8b914050  fmac.s r3, r1, r4
00028c  0b924020  mul.s r4, r1, r4
000290  9ff1f1ff  addli r3, r3, -1
000294  8b915130  div.s r3, r3, r5
000298  80520002  load_param_i r5, 0
00029c  8b905120  mul.s r1, r3, r5
0002a0  8b915150  fmac.s r3, r3, r5
0002a4  8b914140  min.s r3, r3, r4
0002a8  4baa1102  ble.s r3, r1, 1672
0002ac  63075f00  loadli.w r14,  40(r30)
0002b0  e3434f00  loadli.w r7,  36(r30)
0002b4  33960028  sext_int2long r[13:14], r1
0002b8  63044f00  loadli.w r8,  32(r30)
0002bc  33950128  sext_int2long r[11:12], r3
0002c0  1f020000  addli r4, zero, 0
0002c4  9f020000  addli r5, zero, 0
0002c8  1f030000  addli r6, zero, 0
0002cc  9f011000  addli r3, zero, 8
0002d0  9f490000  addli r19, zero, 4
0002d4  1f1b0000  addli r22, zero, 1
0002d8  ab0d0400  lui r27, 64
0002dc  9f048000  addli r9, zero, 64
0002e0  9f070000  addli r15, zero, 0
0002e4  7334affa  store.d r[11:12], -88(r30)
0002e8  9b302700  slli r1, r14, 2
0002ec  33150428  sext_int2long r[11:12], r8
0002f0  1f240000  addli r8, zero, 2
0002f4  674f1ffe  storeli.w r1, -12(r30)
0002f8  9bb02300  slli r1, r7, 2
0002fc  7330affa  store.d r[11:12], -96(r30)
000300  33950328  sext_int2long r[11:12], r7
000304  ab830200  lui r7, 40
000308  e70d1ffe  storeli.w r1, -40(r30)
00030c  ab001400  lui r1, 320
000310  7334affe  store.d r[11:12], -24(r30)
000314  33150728  sext_int2long r[11:12], r14
000318  9b900040  ori r1, r1, 1024
00031c  733caff8  store.d r[11:12], -104(r30)
000320  67091ffe  storeli.w r1, -112(r30)
000324  9b902384  ori r1, r7, 2114
000328  e7481ffe  storeli.w r1, -116(r30)
00032c  ab001000  lui r1, 256
000330  9b900040  ori r1, r1, 1024
000334  67491ffe  storeli.w r1, -108(r30)
000338  3b303101  bneq r2, r19, 12
00033c  9f501000  addli r1, zero, 13
000340  7d900000  xwait r1, 0
000344  e3008f00  loadli.w r1,  64(r30)
000348  e3437f00  loadli.w r7,  60(r30)
00034c  7338cffc  store.d r[13:14], -48(r30)
000350  8b101630  div.s r1, r12, r1
000354  1f850300  addli r10, r7, 0
000358  8b93a030  div.s r7, r1, r10
00035c  8b90a038  mod.s r1, r1, r10
000360  33950328  sext_int2long r[11:12], r7
000364  33960028  sext_int2long r[13:14], r1
000368  1bb78300  slli r14, r7, 8
00036c  9bb38000  slli r7, r1, 8
000370  9f70f001  addli r1, zero, 255
000374  97383502  sll.d r[18:19], r[11:12], r3
000378  17353602  sll.d r[11:12], r[13:14], r3
00037c  33910328  sext_int2long r[3:4], r7
000380  674beffe  storeli.w r14, -76(r30)
000384  973b8502  sll.d r[24:25], r[11:12], r8
000388  33850028  zext_int2long r[11:12], r1
00038c  e3005f00  loadli.w r1,  40(r30)
000390  733c1ffb  store.d r[18:19], -72(r30)
000394  73342ffc  store.d r[3:4], -56(r30)
000398  73307ffd  store.d r[24:25], -64(r30)
00039c  bffb6001  blt.s r1, r22, 764
0003a0  33160728  sext_int2long r[13:14], r14
0003a4  eb5c8ff9  load.d r[26:27], -104(r30)
0003a8  eb5d0ffa  load.d r[28:29], -96(r30)
0003ac  1f080000  addli r16, zero, 0
0003b0  9f030000  addli r7, zero, 0
0003b4  270a0602  addli.d r[21:22], r[13:14], 256
0003b8  733c4fff  store.d r[21:22], -8(r30)
0003bc  0bba9821  mul.sl r[21:22], r[18:19], r[26:27]
0003c0  eb5c8ffe  load.d r[26:27], -24(r30)
0003c4  eb588fff  load.d r[18:19], -8(r30)
0003c8  8bb8b841  min.sl r[18:19], r[18:19], r[28:29]
0003cc  a70d0102  addli.d r[28:29], r[3:4], 256
0003d0  8bb8c848  max.sl r[18:19], r[18:19], r[13:14]
0003d4  8bbd9d41  min.sl r[28:29], r[28:29], r[26:27]
0003d8  8bb6c818  sub.sl r[14:15], r[18:19], r[13:14]
0003dc  eb588f00  load.d r[18:19], 8(r30)
0003e0  8ba87811  add.ul r[18:19], r[18:19], r[24:25]
0003e4  9f6b0000  addli r23, zero, 6
0003e8  1f0c0008  addli r24, zero, 1024
0003ec  73301fff  store.d r[18:19], -32(r30)
0003f0  8bb82d48  max.sl r[18:19], r[28:29], r[3:4]
0003f4  973d8a02  sll.d r[28:29], r[21:22], r8
0003f8  8bbc2818  sub.sl r[26:27], r[18:19], r[3:4]
0003fc  eb580f00  load.d r[18:19], 0(r30)
000400  9f011000  addli r3, zero, 8
000404  8ba0b811  add.ul r[2:3], r[18:19], r[28:29]
000408  ab0d0400  lui r27, 64
00040c  733c1ffe  store.d r[2:3], -8(r30)
000410  9bb02c00  slli r1, r25, 2
000414  00310002  core_id r2
000418  e74d1ffe  storeli.w r1, -36(r30)
00041c  5b060000  j 48
000420  9f700000  addli r1, zero, 7
000424  7d800000  xsignal r1, 0
000428  e3005f00  loadli.w r1,  40(r30)
00042c  1f120200  addli r4, r4, 1
000430  9f920200  addli r5, r5, 1
000434  1f130300  addli r6, r6, 1
000438  9f970700  addli r15, r15, 1
00043c  1f088800  addli r16, r16, 64
000440  9f930300  addli r7, r7, 1
000444  3f201800  blt.s r16, r1, 8
000448  db4b0000  j 604
00044c  8b907239  mod.s r1, r5, r23
000450  1f461000  addli r12, zero, 12
000454  b3180828  sext_int2long r[18:19], r16
000458  0b16c238  mod.s r12, r4, r12
00045c  9bb00001  slli r1, r1, 16
000460  1b360601  slli r12, r12, 16
000464  8b90b011  add.s r1, r1, r27
000468  bb716101  bneq r2, r22, 124
00046c  133ad504  setlt.sl r20, r[11:12], r[14:15]
000470  7d900900  xwait r19, 0
000474  bb300a00  bneq r20, zero, 44
000478  1d000400  lock zero, r8
00047c  1f7a7000  addli r20, zero, 63
000480  1f040002  addli r8, zero, 256
000484  0d000002  ew_cfg zero, zero, zero, 1
000488  0d100000  ewcoeff_cfg zero, zero, zero, 0
00048c  0d000a04  ew_cfg zero, r20, zero, 2
000490  0d040006  ew_cfg r8, zero, zero, 3
000494  1f240000  addli r8, zero, 2
000498  cd300000  ssaux r1, 0
00049c  1d100400  unlock r8
0004a0  7d000400  xsignal r8, 0
0004a4  6b5a8fff  load.d r[21:22], -8(r30)
0004a8  97bd8802  sll.d r[28:29], r[18:19], r8
0004ac  7d100400  xwait r8, 0
0004b0  1d800900  lock zero, r19
0004b4  15000000  dma_cfg zero, zero, zero, 0
0004b8  8b2dba11  add.ul r[28:29], r[21:22], r[28:29]
0004bc  1f0a0002  addli r20, zero, 256
0004c0  15000e04  dma_cfg zero, r28, zero, 2
0004c4  95804d07  dma_cfg r1, r27, r20, 3
0004c8  ab0d0400  lui r27, 64
0004cc  e340efff  loadli.w r1,  -12(r30)
0004d0  158ad008  dma_cfg r20, r1, r13, 4
0004d4  9f300000  addli r1, zero, 3
0004d8  35000000  dma_run zero
0004dc  1d900900  unlock r19
0004e0  db070000  j 60
0004e4  bb708100  bneq r2, r8, 60
0004e8  1f3a0000  addli r20, zero, 3
0004ec  7d100a00  xwait r20, 0
0004f0  7d900b00  xwait r23, 0
0004f4  b7800600  beq r13, zero, 32
0004f8  1d000000  lock zero, zero
0004fc  01040000  ds_cfg r8, zero, 0
000500  81040002  ds_cfg r9, zero, 1
000504  8104001c  ds_cfg r9, zero, 14
000508  8106001a  ds_cfg r13, zero, 13
00050c  21969002  shuffle_batch r12, r1, r9, 1
000510  1d100000  unlock zero
000514  9f500000  addli r1, zero, 5
000518  7d800900  xsignal r19, 0
00051c  7d800000  xsignal r1, 0
000520  8b907739  mod.s r1, r15, r23
000524  2b0a0a00  lui r20, 160
000528  9bb00001  slli r1, r1, 16
00052c  0b9a4011  add.s r20, r1, r20
000530  bb606101  bneq r2, r22, 56
000534  93309505  setlt.sl r1, r[11:12], r[26:27]
000538  1f161000  addli r12, zero, 9
00053c  7d100600  xwait r12, 0
000540  bb8b00fe  bneq r1, zero, -288
000544  1d000400  lock zero, r8
000548  9f70f001  addli r1, zero, 255
00054c  0d000002  ew_cfg zero, zero, zero, 1
000550  0d100000  ewcoeff_cfg zero, zero, zero, 0
000554  0d800004  ew_cfg zero, r1, zero, 2
000558  8d040006  ew_cfg r9, zero, zero, 3
00055c  4d3a0000  ssaux r20, 0
000560  1d100400  unlock r8
000564  dbd7ffff  j -324
000568  9f402000  addli r1, zero, 20
00056c  1f7e0000  addli r28, zero, 7
000570  8b101338  mod.s r1, r6, r1
000574  9bb00001  slli r1, r1, 16
000578  b711c101  beq r2, r28, 100
00057c  bb027101  bneq r2, r23, 160
000580  eb5d8ffe  load.d r[28:29], -24(r30)
000584  9f700000  addli r1, zero, 7
000588  7d900000  xwait r1, 0
00058c  1d800900  lock zero, r19
000590  8bb8b821  mul.sl r[18:19], r[18:19], r[28:29]
000594  ab0d0400  lui r27, 64
000598  97b88802  sll.d r[18:19], r[18:19], r8
00059c  27840c00  addli.d r[9:10], r[26:27], 0
0005a0  eb5c0ffe  load.d r[26:27], -32(r30)
0005a4  15000000  dma_cfg zero, zero, zero, 0
0005a8  8ba81c11  add.ul r[18:19], r[26:27], r[18:19]
0005ac  a70c0400  addli.d r[26:27], r[9:10], 0
0005b0  9f048000  addli r9, zero, 64
0005b4  1f240000  addli r8, zero, 2
0005b8  15000904  dma_cfg zero, r18, zero, 2
0005bc  e340bfff  loadli.w r1,  -36(r30)
0005c0  158a1806  dma_cfg r20, r17, r1, 3
0005c4  e300bfff  loadli.w r1,  -40(r30)
0005c8  158c9008  dma_cfg r24, r1, r9, 4
0005cc  35000000  dma_run zero
0005d0  1d900900  unlock r19
0005d4  7d800100  xsignal r3, 0
0005d8  5bcaffff  j -432
0005dc  9f341000  addli r9, zero, 11
0005e0  7d900100  xwait r3, 0
0005e4  1f060002  addli r12, zero, 256
0005e8  7d900400  xwait r9, 0
0005ec  1d000000  lock zero, zero
0005f0  9f048000  addli r9, zero, 64
0005f4  01040000  ds_cfg r8, zero, 0
0005f8  01060002  ds_cfg r12, zero, 1
0005fc  8104001c  ds_cfg r9, zero, 14
000600  0106001a  ds_cfg r12, zero, 13
000604  c1009a04  shuffle_coa r1, r20, r9, 2
000608  9f101000  addli r1, zero, 9
00060c  1d100000  unlock zero
000610  7d800000  xsignal r1, 0
000614  9f201000  addli r1, zero, 10
000618  dbc1ffff  j -500
00061c  2b490000  lui r18, 4
000620  3b2831ff  bneq r2, r19, -504
000624  9f580000  addli r17, zero, 5
000628  7d900800  xwait r17, 0
00062c  9f281000  addli r17, zero, 10
000630  7d900800  xwait r17, 0
000634  b7c00300  beq r7, zero, 48
000638  37d10600  beq r13, zero, 84
00063c  9f080000  addli r17, zero, 0
000640  1d000b00  lock zero, r22
000644  8984d400  mm_cfg r9, r9, r13, 0
000648  89896105  mm_cfg r19, r3, r22, 2
00064c  a9181610  mm_acc r17, r12, r1, 8
000650  9f880802  addli r17, r17, 256
000654  8b902011  add.s r1, r1, r18
000658  1d100b00  unlock r22
00065c  bb9f88ff  bneq r17, r24, -28
000660  db050000  j 44
000664  b7a00600  beq r13, zero, 40
000668  9f080000  addli r17, zero, 0
00066c  1d000b00  lock zero, r22
000670  8984d400  mm_cfg r9, r9, r13, 0
000674  89896105  mm_cfg r19, r3, r22, 2
000678  a9081610  mm r17, r12, r1, 8
00067c  9f880802  addli r17, r17, 256
000680  8b902011  add.s r1, r1, r18
000684  1d100b00  unlock r22
000688  bb9f88ff  bneq r17, r24, -28
00068c  9f301000  addli r1, zero, 11
000690  7d800b00  xsignal r23, 0
000694  5bb2ffff  j -624
000698  1f0c0008  addli r24, zero, 1024
00069c  00310002  core_id r2
0006a0  9f011000  addli r3, zero, 8
0006a4  bb103101  bneq r2, r19, 36
0006a8  9f401000  addli r1, zero, 12
0006ac  7d800000  xsignal r1, 0
0006b0  6b560ffd  load.d r[13:14], -48(r30)
0006b4  6b558ffa  load.d r[11:12], -88(r30)
0006b8  27160600  addli.d r[13:14], r[13:14], 1
0006bc  9330a604  setlt.sl r1, r[13:14], r[11:12]
0006c0  bbe100fe  bneq r1, zero, -904
0006c4  db4d0000  j 620
0006c8  63462fff  loadli.w r12,  -108(r30)
0006cc  9f500000  addli r1, zero, 5
0006d0  37541100  beq r2, r1, 276
0006d4  9f300000  addli r1, zero, 3
0006d8  37721100  beq r2, r1, 156
0006dc  eb508ffc  load.d r[2:3], -56(r30)
0006e0  6b588ffe  load.d r[17:18], -24(r30)
0006e4  27860002  addli.d r[13:14], r[2:3], 256
0006e8  0b360641  min.sl r[13:14], r[13:14], r[17:18]
0006ec  0b361648  max.sl r[13:14], r[13:14], r[2:3]
0006f0  0b361618  sub.sl r[13:14], r[13:14], r[2:3]
0006f4  00310002  core_id r2
0006f8  bb166101  bneq r2, r22, 420
0006fc  9330c504  setlt.sl r1, r[11:12], r[13:14]
000700  9f032000  addli r7, zero, 16
000704  7d900300  xwait r7, 0
000708  bba00000  bneq r1, zero, 40
00070c  1d000400  lock zero, r8
000710  9f70f001  addli r1, zero, 255
000714  0d000002  ew_cfg zero, zero, zero, 1
000718  0d100000  ewcoeff_cfg zero, zero, zero, 0
00071c  0d800004  ew_cfg zero, r1, zero, 2
000720  ab001000  lui r1, 256
000724  0d0b0006  ew_cfg r22, zero, zero, 3
000728  cd300000  ssaux r1, 0
00072c  1d100400  unlock r8
000730  9f601000  addli r1, zero, 14
000734  6b550f01  load.d r[11:12], 16(r30)
000738  ab031000  lui r7, 256
00073c  7d800000  xsignal r1, 0
000740  6b580ffc  load.d r[17:18], -64(r30)
000744  7d900000  xwait r1, 0
000748  1d800900  lock zero, r19
00074c  9b302600  slli r1, r12, 2
000750  15000000  dma_cfg zero, zero, zero, 0
000754  0b250511  add.ul r[11:12], r[11:12], r[17:18]
000758  15800504  dma_cfg zero, r11, zero, 2
00075c  95031506  dma_cfg r7, r10, r1, 3
000760  95806009  dma_cfg r1, r1, r22, 4
000764  35000000  dma_run zero
000768  1d900900  unlock r19
00076c  9f701000  addli r1, zero, 15
000770  dbe7ffff  j -196
000774  9f431000  addli r7, zero, 12
000778  9f000000  addli r1, zero, 0
00077c  2b051000  lui r10, 256
000780  7d900300  xwait r7, 0
000784  9f731000  addli r7, zero, 15
000788  7d900300  xwait r7, 0
00078c  9f432000  addli r7, zero, 20
000790  7d900300  xwait r7, 0
000794  1d000400  lock zero, r8
000798  ab03803f  lui r7, 260096
00079c  0d000002  ew_cfg zero, zero, zero, 1
0007a0  8d930300  ewcoeff_cfg r7, r7, zero, 0
0007a4  9f73f001  addli r7, zero, 255
0007a8  0d800304  ew_cfg zero, r7, zero, 2
0007ac  0d0b0006  ew_cfg r22, zero, zero, 3
0007b0  8b93c010  add.s r7, r1, r12
0007b4  ad83a000  dsmadd r7, r1, r10, 0
0007b8  9f800008  addli r1, r1, 1024
0007bc  bbdfb0ff  bneq r1, r27, -12
0007c0  9f501000  addli r1, zero, 13
0007c4  1d100400  unlock r8
0007c8  7d800000  xsignal r1, 0
0007cc  9f002000  addli r1, zero, 16
0007d0  7d800000  xsignal r1, 0
0007d4  9f302000  addli r1, zero, 19
0007d8  7d800000  xsignal r1, 0
0007dc  9f102000  addli r1, zero, 17
0007e0  dbd9ffff  j -308
0007e4  9f132000  addli r7, zero, 17
0007e8  9f000000  addli r1, zero, 0
0007ec  7d900300  xwait r7, 0
0007f0  9f532000  addli r7, zero, 21
0007f4  7d900300  xwait r7, 0
0007f8  1d000400  lock zero, r8
0007fc  9f73f001  addli r7, zero, 255
000800  0d000002  ew_cfg zero, zero, zero, 1
000804  0d800304  ew_cfg zero, r7, zero, 2
000808  ab032042  lui r7, 270848
00080c  0d0b0006  ew_cfg r22, zero, zero, 3
000810  8d130000  ewcoeff_cfg r7, zero, zero, 0
000814  e3052fff  loadli.w r11,  -112(r30)
000818  8b93b010  add.s r7, r1, r11
00081c  0b95c010  add.s r10, r1, r12
000820  9f800008  addli r1, r1, 1024
000824  ad23a508  dscmpnsel r7, r10, r10, 4
000828  bbcfb0ff  bneq r1, r27, -16
00082c  9f302000  addli r1, zero, 19
000830  1d100400  unlock r8
000834  7d900000  xwait r1, 0
000838  1d000400  lock zero, r8
00083c  ab00803f  lui r1, 260096
000840  0d000002  ew_cfg zero, zero, zero, 1
000844  0d101000  ewcoeff_cfg zero, zero, r1, 0
000848  0d0b0024  ew_cfg r22, zero, zero, 18
00084c  0d040014  ew_cfg r8, zero, zero, 10
000850  e3401fff  loadli.w r1,  -116(r30)
000854  0d041b16  ew_cfg r8, r22, r1, 11
000858  abc07f41  lui r1, 268284
00085c  0d00001a  ew_cfg zero, zero, zero, 13
000860  0d80191c  ew_cfg zero, r19, r1, 14
000864  9f70f03f  addli r1, zero, 8191
000868  0d00001e  ew_cfg zero, zero, zero, 15
00086c  0d800004  ew_cfg zero, r1, zero, 2
000870  9f202000  addli r1, zero, 18
000874  8d010006  ew_cfg r3, zero, zero, 3
000878  8d813126  ew_cfg r3, r3, r3, 19
00087c  2d96c500  dsmul r12, r11, r12, 0
000880  0d000014  ew_cfg zero, zero, zero, 10
000884  0d000024  ew_cfg zero, zero, zero, 18
000888  0d000026  ew_cfg zero, zero, zero, 19
00088c  1d100400  unlock r8
000890  7d800000  xsignal r1, 0
000894  9f502000  addli r1, zero, 21
000898  dbc2ffff  j -492
00089c  3b5801fe  bneq r2, zero, -492
0008a0  e3406fff  loadli.w r1,  -76(r30)
0008a4  eb5c8ffe  load.d r[26:27], -24(r30)
0008a8  eb5d8ffb  load.d r[28:29], -72(r30)
0008ac  9f530000  addli r7, zero, 5
0008b0  33950028  sext_int2long r[11:12], r1
0008b4  8bbd9d21  mul.sl r[28:29], r[28:29], r[26:27]
0008b8  eb5c0ffa  load.d r[26:27], -96(r30)
0008bc  9f000002  addli r1, zero, 256
0008c0  270a0502  addli.d r[21:22], r[11:12], 256
0008c4  33880028  zext_int2long r[17:18], r1
0008c8  97bd8d02  sll.d r[28:29], r[28:29], r8
0008cc  9f202000  addli r1, zero, 18
0008d0  8b3c9a41  min.sl r[26:27], r[21:22], r[26:27]
0008d4  0b360641  min.sl r[13:14], r[13:14], r[17:18]
0008d8  8bbcac48  max.sl r[26:27], r[26:27], r[11:12]
0008dc  0bb5ac18  sub.sl r[11:12], r[26:27], r[11:12]
0008e0  eb5c8f01  load.d r[26:27], 24(r30)
0008e4  0b350541  min.sl r[11:12], r[11:12], r[17:18]
0008e8  6b580ffc  load.d r[17:18], -64(r30)
0008ec  7d900000  xwait r1, 0
0008f0  1d800300  lock zero, r7
0008f4  9b302600  slli r1, r12, 2
0008f8  8bacbc11  add.ul r[26:27], r[26:27], r[28:29]
0008fc  15000000  dma_cfg zero, zero, zero, 0
000900  ab0d0400  lui r27, 64
000904  15000b02  dma_cfg zero, r22, zero, 1
000908  0ba80c11  add.ul r[17:18], r[26:27], r[17:18]
00090c  95080004  dma_cfg r17, zero, zero, 2
000910  63462fff  loadli.w r12,  -108(r30)
000914  15081606  dma_cfg r16, r12, r1, 3
000918  e300bfff  loadli.w r1,  -40(r30)
00091c  9500ac08  dma_cfg r1, r24, r10, 4
000920  9f402000  addli r1, zero, 20
000924  35000000  dma_run zero
000928  1d900300  unlock r7
00092c  5bb0ffff  j -640
000930  7d000000  xsignal zero, 0
000934  bb600100  bneq r2, zero, 56
000938  9f200000  addli r1, zero, 2
00093c  7d100000  xwait zero, 0
000940  7d100000  xwait zero, 0
000944  7d100000  xwait zero, 0
000948  7d100000  xwait zero, 0
00094c  7d100000  xwait zero, 0
000950  7d100000  xwait zero, 0
000954  7d100000  xwait zero, 0
000958  7d100000  xwait zero, 0
00095c  1d800000  lock zero, r1
000960  0d000020  ew_cfg zero, zero, zero, 16
000964  1d900000  unlock r1
000968  7d400000  xsignal_mode_cfg zero
00096c  9f8efe00  addli sp, sp, 120
000970  00a00300  mfence { lm, sm, gm }
000974  00100000  exit
000978  00100000  exit
00097c  00100000  exit
000980  00100000  exit
000984  00100000  exit
000988  00100000  exit
00098c  00100000  exit
000990  00100000  exit
000994  00100000  exit
000998  00100000  exit
00099c  00100000  exit
0009a0  00100000  exit
0009a4  00100000  exit
0009a8  00100000  exit
0009ac  00100000  exit
0009b0  00100000  exit
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
