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
0000b4  9f8e3eff  addli sp, sp, -104
0000b8  9f100000  addli r1, zero, 1
0000bc  00310002  core_id r2
0000c0  1f8f5e00  addli r30, sp, 40
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7100100  beq r2, zero, 36
0000cc  abf1ffff  lui r3, 1048575
0000d0  7d900000  xwait r1, 0
0000d4  7d900000  xwait r1, 0
0000d8  7d100000  xwait zero, 0
0000dc  9b90f1ff  ori r1, r3, 4095
0000e0  80a10004  csr_set csr3, r1
0000e4  00d00100  sync_group
0000e8  db280000  j 324
0000ec  9f220000  addli r5, zero, 2
0000f0  fdd00000  uni_sram_cfg r1, r1
0000f4  1f430000  addli r6, zero, 4
0000f8  eb510f02  load.d r[4:5], 32(r30)
0000fc  9f030020  addli r7, zero, 4096
000100  1d800200  lock zero, r5
000104  8d000020  ew_cfg r1, zero, zero, 16
000108  1d900200  unlock r5
00010c  1d000300  lock zero, r6
000110  15000000  dma_cfg zero, zero, zero, 0
000114  15000204  dma_cfg zero, r4, zero, 2
000118  15807106  dma_cfg zero, r3, r7, 3
00011c  9f014000  addli r3, zero, 32
000120  1f020008  addli r4, zero, 1024
000124  15001008  dma_cfg zero, zero, r1, 4
000128  35000000  dma_run zero
00012c  1d100300  unlock r6
000130  7d800000  xsignal r1, 0
000134  7d900000  xwait r1, 0
000138  1d000000  lock zero, zero
00013c  81020000  ds_cfg r5, zero, 0
000140  01000002  ds_cfg zero, zero, 1
000144  01000016  ds_cfg zero, zero, 11
000148  8101001a  ds_cfg r3, zero, 13
00014c  9f310000  addli r3, zero, 3
000150  0102001c  ds_cfg r4, zero, 14
000154  a1134008  shuffle_batch r7, zero, r4, 4
000158  1d100000  unlock zero
00015c  7d800000  xsignal r1, 0
000160  7d900000  xwait r1, 0
000164  1d800200  lock zero, r5
000168  ab100100  lui r1, 17
00016c  0da00300  ewtable_cfg r7, 0
000170  0da00002  ewtable_cfg r1, 1
000174  abf0ffff  lui r1, 1048575
000178  1d900200  unlock r5
00017c  7d000000  xsignal zero, 0
000180  7d100000  xwait zero, 0
000184  9b90f0ff  ori r1, r1, 4095
000188  80a10004  csr_set csr3, r1
00018c  9f500000  addli r1, zero, 5
000190  00d00100  sync_group
000194  7d800000  xsignal r1, 0
000198  7d800000  xsignal r1, 0
00019c  7d800000  xsignal r1, 0
0001a0  7d800000  xsignal r1, 0
0001a4  7d800100  xsignal r3, 0
0001a8  7d800100  xsignal r3, 0
0001ac  7d800100  xsignal r3, 0
0001b0  7d800100  xsignal r3, 0
0001b4  9f101000  addli r1, zero, 9
0001b8  9f710000  addli r3, zero, 7
0001bc  7d800000  xsignal r1, 0
0001c0  7d800000  xsignal r1, 0
0001c4  7d800000  xsignal r1, 0
0001c8  7d800000  xsignal r1, 0
0001cc  7d800100  xsignal r3, 0
0001d0  7d800100  xsignal r3, 0
0001d4  7d800100  xsignal r3, 0
0001d8  7d800100  xsignal r3, 0
0001dc  9f301000  addli r1, zero, 11
0001e0  9f511000  addli r3, zero, 13
0001e4  7d800000  xsignal r1, 0
0001e8  7d800000  xsignal r1, 0
0001ec  7d800000  xsignal r1, 0
0001f0  7d800000  xsignal r1, 0
0001f4  7d800100  xsignal r3, 0
0001f8  7d800100  xsignal r3, 0
0001fc  7d800100  xsignal r3, 0
000200  7d800100  xsignal r3, 0
000204  9f701000  addli r1, zero, 15
000208  9f012000  addli r3, zero, 16
00020c  7d800000  xsignal r1, 0
000210  7d800000  xsignal r1, 0
000214  7d800000  xsignal r1, 0
000218  7d800000  xsignal r1, 0
00021c  7d800100  xsignal r3, 0
000220  7d800100  xsignal r3, 0
000224  7d800100  xsignal r3, 0
000228  7d800100  xsignal r3, 0
00022c  e3005f00  loadli.w r1,  40(r30)
000230  e3415f00  loadli.w r3,  44(r30)
000234  80d20002  load_param_i r5, 1
000238  63026f00  loadli.w r4,  48(r30)
00023c  8b901120  mul.s r1, r3, r1
000240  9f810200  addli r3, r5, 0
000244  8b914050  fmac.s r3, r1, r4
000248  0b924020  mul.s r4, r1, r4
00024c  9ff1f1ff  addli r3, r3, -1
000250  8b915130  div.s r3, r3, r5
000254  80520002  load_param_i r5, 0
000258  8b905120  mul.s r1, r3, r5
00025c  8b915150  fmac.s r3, r3, r5
000260  8b914140  min.s r3, r3, r4
000264  4bc51102  ble.s r3, r1, 1360
000268  33930028  sext_int2long r[7:8], r1
00026c  ab000500  lui r1, 80
000270  b3910128  sext_int2long r[4:5], r3
000274  9f060001  addli r13, zero, 128
000278  1f460000  addli r12, zero, 4
00027c  1f640000  addli r8, zero, 6
000280  1f2b0000  addli r22, zero, 2
000284  9f150000  addli r11, zero, 1
000288  9f078000  addli r15, zero, 64
00028c  2b8e0000  lui r28, 8
000290  9f090000  addli r19, zero, 0
000294  9b900080  ori r1, r1, 2048
000298  733c3ffe  store.d r[4:5], -8(r30)
00029c  1f72f00f  addli r4, zero, 2047
0002a0  ab01feff  lui r3, 1048544
0002a4  e74e1ffe  storeli.w r1, -20(r30)
0002a8  ab800d00  lui r1, 216
0002ac  73383ffe  store.d r[4:5], -16(r30)
0002b0  ab010700  lui r3, 112
0002b4  9b90d0b4  ori r1, r1, 2893
0002b8  e70e1ffe  storeli.w r1, -24(r30)
0002bc  9b900180  ori r1, r3, 2048
0002c0  abf17f7f  lui r3, 522239
0002c4  674e1ffe  storeli.w r1, -28(r30)
0002c8  abf07fff  lui r1, 1046527
0002cc  9b90f0ff  ori r1, r1, 4095
0002d0  670e1ffe  storeli.w r1, -32(r30)
0002d4  9b90f1ff  ori r1, r3, 4095
0002d8  e74d1ffe  storeli.w r1, -36(r30)
0002dc  e3006f00  loadli.w r1,  48(r30)
0002e0  e3415f00  loadli.w r3,  44(r30)
0002e4  9f024000  addli r5, zero, 32
0002e8  9f041000  addli r9, zero, 8
0002ec  8b101330  div.s r1, r6, r1
0002f0  8b903030  div.s r1, r1, r3
0002f4  8b91d030  div.s r3, r1, r13
0002f8  1bb23100  slli r4, r3, 3
0002fc  9bb17100  slli r3, r3, 7
000300  8b924218  sub.s r5, r5, r4
000304  8b913018  sub.s r3, r1, r3
000308  8b929240  min.s r5, r5, r9
00030c  8b945038  mod.s r9, r1, r5
000310  8b9b5130  div.s r23, r3, r5
000314  8b90c938  mod.s r1, r19, r12
000318  8b119210  add.s r3, r4, r9
00031c  33820b28  zext_int2long r[5:6], r23
000320  9f740000  addli r9, zero, 7
000324  9bbde000  slli r27, r1, 14
000328  173a9202  sll.d r[21:22], r[5:6], r9
00032c  1f02800f  addli r4, zero, 1984
000330  b38c0128  zext_int2long r[26:27], r3
000334  b3040228  zext_int2long r[10:11], r4
000338  bb008100  bneq r2, r8, 32
00033c  1f723000  addli r4, zero, 31
000340  9f421000  addli r5, zero, 12
000344  13023204  setlt.u r4, r4, r3
000348  17b85c02  sll.d r[17:18], r[26:27], r5
00034c  3b310200  bneq r4, zero, 76
000350  33020028  zext_int2long r[5:6], zero
000354  db090000  j 76
000358  3b566101  bneq r2, r22, 404
00035c  1f520000  addli r4, zero, 5
000360  7d100b00  xwait r22, 0
000364  1bb7f000  slli r14, r1, 15
000368  7d100200  xwait r4, 0
00036c  1d000000  lock zero, zero
000370  1f320000  addli r4, zero, 3
000374  010b0000  ds_cfg r22, zero, 0
000378  81070002  ds_cfg r15, zero, 1
00037c  8107001c  ds_cfg r15, zero, 14
000380  8107001a  ds_cfg r15, zero, 13
000384  a19dfd02  shuffle_batch r27, r27, r15, 1
000388  1d100000  unlock zero
00038c  7d000200  xsignal r4, 0
000390  7d000600  xsignal r12, 0
000394  db0c0000  j 100
000398  6b520fff  load.d r[5:6], -16(r30)
00039c  17024802  and.d r[5:6], r[17:18], r[5:6]
0003a0  0b324818  sub.sl r[5:6], r[17:18], r[5:6]
0003a4  1f671000  addli r14, zero, 14
0003a8  17528202  sra.d r[5:6], r[5:6], r8
0003ac  0b389240  min.sl r[17:18], r[5:6], r[10:11]
0003b0  0b324818  sub.sl r[5:6], r[17:18], r[5:6]
0003b4  17b8ec02  sll.d r[17:18], r[26:27], r14
0003b8  1f370000  addli r14, zero, 3
0003bc  7d100700  xwait r14, 0
0003c0  eb560f00  load.d r[14:15], 0(r30)
0003c4  1d000600  lock zero, r12
0003c8  1f028200  addli r4, r4, 64
0003cc  9f020002  addli r5, zero, 256
0003d0  15000000  dma_cfg zero, zero, zero, 0
0003d4  0ba80611  add.ul r[17:18], r[14:15], r[17:18]
0003d8  9f060001  addli r13, zero, 128
0003dc  1bb7f000  slli r14, r1, 15
0003e0  15800804  dma_cfg zero, r17, zero, 2
0003e4  950d5806  dma_cfg r27, r16, r5, 3
0003e8  95824208  dma_cfg r5, r5, r4, 4
0003ec  35000000  dma_run zero
0003f0  1d100600  unlock r12
0003f4  7d000b00  xsignal r22, 0
0003f8  1bb27b00  slli r4, r23, 7
0003fc  9f02000f  addli r5, zero, 1920
000400  b38b0628  zext_int2long r[24:25], r13
000404  1bb99000  slli r18, r1, 9
000408  33880228  zext_int2long r[17:18], r5
00040c  33020228  zext_int2long r[5:6], r4
000410  0b280241  min.ul r[17:18], r[5:6], r[17:18]
000414  27080801  addli.d r[17:18], r[17:18], 128
000418  0b284848  max.ul r[17:18], r[17:18], r[5:6]
00041c  0b324818  sub.sl r[5:6], r[17:18], r[5:6]
000420  0b287241  min.ul r[17:18], r[5:6], r[24:25]
000424  2b020300  lui r4, 48
000428  0b194910  add.s r18, r18, r4
00042c  3b118100  bneq r2, r8, 68
000430  eb540f01  load.d r[10:11], 16(r30)
000434  97316a03  sll.d r[4:5], r[21:22], r22
000438  9f301000  addli r1, zero, 11
00043c  7d900000  xwait r1, 0
000440  1d000600  lock zero, r12
000444  9b302800  slli r1, r16, 2
000448  8ba13410  add.ul r[4:5], r[10:11], r[4:5]
00044c  15000000  dma_cfg zero, zero, zero, 0
000450  15000204  dma_cfg zero, r4, zero, 2
000454  15891106  dma_cfg r18, r3, r1, 3
000458  9f000004  addli r1, zero, 512
00045c  9580b008  dma_cfg r1, r1, r11, 4
000460  35000000  dma_run zero
000464  1d100600  unlock r12
000468  9f201000  addli r1, zero, 10
00046c  5b5e0000  j 752
000470  9bbbf000  slli r23, r1, 15
000474  9b100280  ori r1, r4, 2048
000478  8b901b10  add.s r1, r23, r1
00047c  3b23c100  bneq r2, r12, 200
000480  9f011000  addli r3, zero, 8
000484  7d100600  xwait r12, 0
000488  1f050000  addli r10, zero, 0
00048c  9f140000  addli r9, zero, 1
000490  1f521000  addli r4, zero, 13
000494  7d900100  xwait r3, 0
000498  9f110000  addli r3, zero, 1
00049c  7d100200  xwait r4, 0
0004a0  1b32e500  slli r4, r10, 14
0004a4  9b328500  slli r5, r10, 8
0004a8  1d800100  lock zero, r3
0004ac  1f150000  addli r10, zero, 1
0004b0  8987f700  mm_cfg r15, r15, r15, 0
0004b4  1712e200  or r4, r4, r14
0004b8  97921200  or r5, r5, r1
0004bc  09063604  mm_cfg r12, r12, r3, 2
0004c0  a9824d10  mm r5, r27, r4, 8
0004c4  1b821400  andi r4, r9, 1
0004c8  9f040000  addli r9, zero, 0
0004cc  1d900100  unlock r3
0004d0  3b4f02fe  bneq r4, zero, -48
0004d4  9f500000  addli r1, zero, 5
0004d8  7d800000  xsignal r1, 0
0004dc  9f101000  addli r1, zero, 9
0004e0  7d800000  xsignal r1, 0
0004e4  9f401000  addli r1, zero, 12
0004e8  db4e0000  j 628
0004ec  1bb7f000  slli r14, r1, 15
0004f0  2b020100  lui r4, 16
0004f4  0b184710  add.s r16, r14, r4
0004f8  1f720000  addli r4, zero, 7
0004fc  b7794100  beq r2, r4, 636
000500  bb6bb1fe  bneq r2, r11, -264
000504  9f780000  addli r17, zero, 7
000508  17326a03  sll.d r[5:6], r[21:22], r22
00050c  7d900800  xwait r17, 0
000510  eb588f00  load.d r[18:19], 8(r30)
000514  1d000600  lock zero, r12
000518  15000000  dma_cfg zero, zero, zero, 0
00051c  0ba24810  add.ul r[5:6], r[18:19], r[5:6]
000520  9f080004  addli r17, zero, 512
000524  15800204  dma_cfg zero, r5, zero, 2
000528  15081207  dma_cfg r16, r4, r17, 3
00052c  1f020040  addli r4, zero, 8192
000530  9508f208  dma_cfg r17, r4, r15, 4
000534  35000000  dma_run zero
000538  1d100600  unlock r12
00053c  7d000400  xsignal r8, 0
000540  5bd7ffff  j -328
000544  1f520000  addli r4, zero, 5
000548  3b564100  bneq r2, r4, 404
00054c  1f221000  addli r4, zero, 10
000550  2b07803f  lui r14, 260096
000554  1f78f000  addli r16, zero, 127
000558  9f010000  addli r3, zero, 0
00055c  7d100200  xwait r4, 0
000560  1f421000  addli r4, zero, 12
000564  7d100200  xwait r4, 0
000568  1d000b00  lock zero, r22
00056c  0d000002  ew_cfg zero, zero, zero, 1
000570  0d170700  ewcoeff_cfg r14, r14, zero, 0
000574  0d000804  ew_cfg zero, r16, zero, 2
000578  8d050006  ew_cfg r11, zero, zero, 3
00057c  0b923010  add.s r4, r1, r3
000580  9f810104  addli r3, r3, 512
000584  2d022201  dsmadd r4, r4, r18, 0
000588  bbdfc1ff  bneq r3, r28, -12
00058c  9f311000  addli r3, zero, 11
000590  1f721000  addli r4, zero, 15
000594  1d100b00  unlock r22
000598  ab0400c1  lui r9, 790528
00059c  1f050000  addli r10, zero, 0
0005a0  9f150000  addli r11, zero, 1
0005a4  7d800100  xsignal r3, 0
0005a8  e341dfff  loadli.w r3,  -20(r30)
0005ac  7d100200  xwait r4, 0
0005b0  1d000b00  lock zero, r22
0005b4  0d000002  ew_cfg zero, zero, zero, 1
0005b8  6b520fff  load.d r[5:6], -16(r30)
0005bc  8b913b10  add.s r3, r23, r3
0005c0  0d800204  ew_cfg zero, r5, zero, 2
0005c4  1f521000  addli r4, zero, 13
0005c8  9f120000  addli r5, zero, 1
0005cc  0d060006  ew_cfg r12, zero, zero, 3
0005d0  0d060626  ew_cfg r12, r12, zero, 19
0005d4  0d020014  ew_cfg r4, zero, zero, 10
0005d8  6302dfff  loadli.w r4,  -24(r30)
0005dc  0d8b4216  ew_cfg r22, r5, r4, 11
0005e0  1f320000  addli r4, zero, 3
0005e4  0d00401a  ew_cfg zero, zero, r4, 13
0005e8  2b82ff40  lui r4, 266232
0005ec  8d04461c  ew_cfg r9, r12, r4, 14
0005f0  0d00071e  ew_cfg zero, r14, zero, 15
0005f4  cda10000  sslut r3, r1, 0
0005f8  0d000014  ew_cfg zero, zero, zero, 10
0005fc  0d000026  ew_cfg zero, zero, zero, 19
000600  1d100b00  unlock r22
000604  6342cfff  loadli.w r4,  -28(r30)
000608  8b944b10  add.s r9, r23, r4
00060c  1f022000  addli r4, zero, 16
000610  7d100200  xwait r4, 0
000614  1d000b00  lock zero, r22
000618  0d000002  ew_cfg zero, zero, zero, 1
00061c  0d000804  ew_cfg zero, r16, zero, 2
000620  8d020006  ew_cfg r5, zero, zero, 3
000624  6302cfff  loadli.w r4,  -32(r30)
000628  0d120000  ewcoeff_cfg r4, zero, zero, 0
00062c  0b92a410  add.s r4, r9, r10
000630  8b92a010  add.s r5, r1, r10
000634  1f050504  addli r10, r10, 512
000638  2da25200  dscmpnsel r4, r5, r5, 0
00063c  bb4fc5ff  bneq r10, r28, -16
000640  1d100b00  unlock r22
000644  1f050000  addli r10, zero, 0
000648  1d000b00  lock zero, r22
00064c  0d000002  ew_cfg zero, zero, zero, 1
000650  0d000804  ew_cfg zero, r16, zero, 2
000654  8d050006  ew_cfg r11, zero, zero, 3
000658  6342bfff  loadli.w r4,  -36(r30)
00065c  0d120000  ewcoeff_cfg r4, zero, zero, 0
000660  0b92a410  add.s r4, r9, r10
000664  1f050504  addli r10, r10, 512
000668  2d224208  dscmpnsel r4, r4, r4, 4
00066c  bb5fc5ff  bneq r10, r28, -12
000670  1d100b00  unlock r22
000674  2b0280bf  lui r4, 784384
000678  1d000b00  lock zero, r22
00067c  0d000002  ew_cfg zero, zero, zero, 1
000680  0d170200  ewcoeff_cfg r14, r4, zero, 0
000684  6b520fff  load.d r[5:6], -16(r30)
000688  0d800204  ew_cfg zero, r5, zero, 2
00068c  0d060006  ew_cfg r12, zero, zero, 3
000690  0d06c626  ew_cfg r12, r12, r12, 19
000694  ad809000  dsmadd r1, r1, r9, 0
000698  9f042000  addli r9, zero, 16
00069c  0d000026  ew_cfg zero, zero, zero, 19
0006a0  1d100b00  unlock r22
0006a4  7d800400  xsignal r9, 0
0006a8  1d000b00  lock zero, r22
0006ac  0d000002  ew_cfg zero, zero, zero, 1
0006b0  0d170700  ewcoeff_cfg r14, r14, zero, 0
0006b4  0d800204  ew_cfg zero, r5, zero, 2
0006b8  0d060006  ew_cfg r12, zero, zero, 3
0006bc  0d06c626  ew_cfg r12, r12, r12, 19
0006c0  ad811100  dsmadd r3, r3, r1, 0
0006c4  9f501000  addli r1, zero, 13
0006c8  0d000026  ew_cfg zero, zero, zero, 19
0006cc  1d100b00  unlock r22
0006d0  7d800000  xsignal r1, 0
0006d4  9f601000  addli r1, zero, 14
0006d8  db100000  j 132
0006dc  3b120100  bneq r2, zero, 132
0006e0  9bb06100  slli r1, r3, 6
0006e4  9f322000  addli r5, zero, 19
0006e8  173a6a03  sll.d r[21:22], r[21:22], r22
0006ec  b3910028  sext_int2long r[4:5], r1
0006f0  e340dfff  loadli.w r1,  -20(r30)
0006f4  8bb49140  min.sl r[10:11], r[4:5], r[10:11]
0006f8  8b901b10  add.s r1, r23, r1
0006fc  97bb5c02  sll.d r[24:25], r[26:27], r5
000700  eb5c8f01  load.d r[26:27], 24(r30)
000704  9f621000  addli r5, zero, 14
000708  a7848400  addli.d r[10:11], r[10:11], 64
00070c  7d900200  xwait r5, 0
000710  9b322800  slli r5, r16, 2
000714  8bb43448  max.sl r[10:11], r[10:11], r[4:5]
000718  8bab7c11  add.ul r[24:25], r[26:27], r[24:25]
00071c  8bb13418  sub.sl r[4:5], r[10:11], r[4:5]
000720  b3840728  zext_int2long r[10:11], r15
000724  0baa4b11  add.ul r[21:22], r[24:25], r[21:22]
000728  8bb19140  min.sl r[4:5], r[4:5], r[10:11]
00072c  9f540000  addli r9, zero, 5
000730  1d800400  lock zero, r9
000734  15000000  dma_cfg zero, zero, zero, 0
000738  15800502  dma_cfg zero, r11, zero, 1
00073c  950a0004  dma_cfg r21, zero, zero, 2
000740  158a5006  dma_cfg r20, r1, r5, 3
000744  9f000004  addli r1, zero, 512
000748  9f020040  addli r5, zero, 8192
00074c  95823008  dma_cfg r5, r1, r3, 4
000750  9f701000  addli r1, zero, 15
000754  35000000  dma_run zero
000758  1d900400  unlock r9
00075c  7d800000  xsignal r1, 0
000760  eb518fff  load.d r[4:5], -8(r30)
000764  27130300  addli.d r[7:8], r[7:8], 1
000768  9f990900  addli r19, r19, 1
00076c  93303304  setlt.sl r1, r[7:8], r[4:5]
000770  bbbd00fc  bneq r1, zero, -1172
000774  5b080000  j 64
000778  1f121000  addli r4, zero, 9
00077c  7d100400  xwait r8, 0
000780  7d100200  xwait r4, 0
000784  1d000000  lock zero, zero
000788  1f720000  addli r4, zero, 7
00078c  010b0000  ds_cfg r22, zero, 0
000790  81060002  ds_cfg r13, zero, 1
000794  8107001c  ds_cfg r15, zero, 14
000798  8106001a  ds_cfg r13, zero, 13
00079c  4107f804  shuffle_coa r14, r16, r15, 2
0007a0  1d100000  unlock zero
0007a4  7d000200  xsignal r4, 0
0007a8  1f021000  addli r4, zero, 8
0007ac  7d000200  xsignal r4, 0
0007b0  5b89ffff  j -952
0007b4  7d000000  xsignal zero, 0
0007b8  bb600100  bneq r2, zero, 56
0007bc  9f200000  addli r1, zero, 2
0007c0  7d100000  xwait zero, 0
0007c4  7d100000  xwait zero, 0
0007c8  7d100000  xwait zero, 0
0007cc  7d100000  xwait zero, 0
0007d0  7d100000  xwait zero, 0
0007d4  7d100000  xwait zero, 0
0007d8  7d100000  xwait zero, 0
0007dc  7d100000  xwait zero, 0
0007e0  1d800000  lock zero, r1
0007e4  0d000020  ew_cfg zero, zero, zero, 16
0007e8  1d900000  unlock r1
0007ec  7d400000  xsignal_mode_cfg zero
0007f0  9f8e5e00  addli sp, sp, 40
0007f4  00a00300  mfence { lm, sm, gm }
0007f8  00100000  exit
0007fc  00100000  exit
000800  00100000  exit
000804  00100000  exit
000808  00100000  exit
00080c  00100000  exit
000810  00100000  exit
000814  00100000  exit
000818  00100000  exit
00081c  00100000  exit
000820  00100000  exit
000824  00100000  exit
000828  00100000  exit
00082c  00100000  exit
000830  00100000  exit
000834  00100000  exit
000838  00100000  exit
00083c  00100000  exit
000840  00100000  exit
000844  00100000  exit
000848  00100000  exit
00084c  00100000  exit
000850  00100000  exit
000854  00100000  exit
000858  00100000  exit
00085c  00100000  exit
000860  00100000  exit
000864  00100000  exit
000868  00100000  exit
00086c  00100000  exit
000870  00100000  exit
000874  00100000  exit
000878  00100000  exit
00087c  00100000  exit
000880  00100000  exit
000884  00100000  exit
000888  00100000  exit
00088c  00100000  exit
000890  00100000  exit
000894  00100000  exit
000898  00100000  exit
00089c  00100000  exit
0008a0  00100000  exit
0008a4  00100000  exit
0008a8  00100000  exit
0008ac  00100000  exit
0008b0  00100000  exit
0008b4  00100000  exit
0008b8  00100000  exit
0008bc  00100000  exit
0008c0  00100000  exit
0008c4  00100000  exit
0008c8  00100000  exit
0008cc  00100000  exit
0008d0  00100000  exit
0008d4  00100000  exit
0008d8  00100000  exit
0008dc  00100000  exit
0008e0  00100000  exit
0008e4  00100000  exit
0008e8  00100000  exit
0008ec  00100000  exit
0008f0  00100000  exit
0008f4  00100000  exit
0008f8  00100000  exit
0008fc  00100000  exit
000900  00100000  exit
000904  00100000  exit
000908  00100000  exit
00090c  00100000  exit
000910  00100000  exit
000914  00100000  exit
000918  00100000  exit
00091c  00100000  exit
000920  00100000  exit
000924  00100000  exit
000928  00100000  exit
00092c  00100000  exit
000930  00100000  exit
000934  00100000  exit
000938  00100000  exit
00093c  00100000  exit
000940  00100000  exit
000944  00100000  exit
000948  00100000  exit
00094c  00100000  exit
000950  00100000  exit
000954  00100000  exit
000958  00100000  exit
00095c  00100000  exit
000960  00100000  exit
000964  00100000  exit
000968  00100000  exit
00096c  00100000  exit
000970  00100000  exit
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
