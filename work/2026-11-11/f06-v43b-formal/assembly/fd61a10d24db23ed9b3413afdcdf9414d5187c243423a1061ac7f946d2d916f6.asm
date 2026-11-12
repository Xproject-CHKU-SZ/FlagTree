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
0000b4  9f8e1eff  addli sp, sp, -120
0000b8  9f100000  addli r1, zero, 1
0000bc  00310002  core_id r2
0000c0  1f8f7e00  addli r30, sp, 56
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7100100  beq r2, zero, 36
0000cc  abf1ffff  lui r3, 1048575
0000d0  7d900000  xwait r1, 0
0000d4  7d900000  xwait r1, 0
0000d8  7d100000  xwait zero, 0
0000dc  9b90f1ff  ori r1, r3, 4095
0000e0  80a10004  csr_set csr3, r1
0000e4  00d00100  sync_group
0000e8  db2c0000  j 356
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
0001a4  7d800000  xsignal r1, 0
0001a8  7d800100  xsignal r3, 0
0001ac  7d800100  xsignal r3, 0
0001b0  7d800100  xsignal r3, 0
0001b4  7d800100  xsignal r3, 0
0001b8  7d800100  xsignal r3, 0
0001bc  9f101000  addli r1, zero, 9
0001c0  9f710000  addli r3, zero, 7
0001c4  7d800000  xsignal r1, 0
0001c8  7d800000  xsignal r1, 0
0001cc  7d800000  xsignal r1, 0
0001d0  7d800000  xsignal r1, 0
0001d4  7d800000  xsignal r1, 0
0001d8  7d800100  xsignal r3, 0
0001dc  7d800100  xsignal r3, 0
0001e0  7d800100  xsignal r3, 0
0001e4  7d800100  xsignal r3, 0
0001e8  7d800100  xsignal r3, 0
0001ec  9f301000  addli r1, zero, 11
0001f0  9f511000  addli r3, zero, 13
0001f4  7d800000  xsignal r1, 0
0001f8  7d800000  xsignal r1, 0
0001fc  7d800000  xsignal r1, 0
000200  7d800000  xsignal r1, 0
000204  7d800000  xsignal r1, 0
000208  7d800100  xsignal r3, 0
00020c  7d800100  xsignal r3, 0
000210  7d800100  xsignal r3, 0
000214  7d800100  xsignal r3, 0
000218  7d800100  xsignal r3, 0
00021c  9f701000  addli r1, zero, 15
000220  9f012000  addli r3, zero, 16
000224  7d800000  xsignal r1, 0
000228  7d800000  xsignal r1, 0
00022c  7d800000  xsignal r1, 0
000230  7d800000  xsignal r1, 0
000234  7d800000  xsignal r1, 0
000238  7d800100  xsignal r3, 0
00023c  7d800100  xsignal r3, 0
000240  7d800100  xsignal r3, 0
000244  7d800100  xsignal r3, 0
000248  7d800100  xsignal r3, 0
00024c  e3005f00  loadli.w r1,  40(r30)
000250  e3415f00  loadli.w r3,  44(r30)
000254  80d20002  load_param_i r5, 1
000258  63026f00  loadli.w r4,  48(r30)
00025c  8b901120  mul.s r1, r3, r1
000260  9f810200  addli r3, r5, 0
000264  8b914050  fmac.s r3, r1, r4
000268  0b924020  mul.s r4, r1, r4
00026c  9ff1f1ff  addli r3, r3, -1
000270  8b915130  div.s r3, r3, r5
000274  80520002  load_param_i r5, 0
000278  8b905120  mul.s r1, r3, r5
00027c  8b915150  fmac.s r3, r3, r5
000280  8b914140  min.s r3, r3, r4
000284  4bf41102  ble.s r3, r1, 1308
000288  33930028  sext_int2long r[7:8], r1
00028c  abc00300  lui r1, 60
000290  b3910128  sext_int2long r[4:5], r3
000294  9f0b1000  addli r23, zero, 8
000298  1f5c0000  addli r24, zero, 5
00029c  1f160000  addli r12, zero, 1
0002a0  9f480000  addli r17, zero, 4
0002a4  1f0a0002  addli r20, zero, 256
0002a8  1f2b0000  addli r22, zero, 2
0002ac  9f0a8000  addli r21, zero, 64
0002b0  2b4e0000  lui r28, 4
0002b4  1f0d0000  addli r26, zero, 0
0002b8  9b900050  ori r1, r1, 1280
0002bc  733c3ffe  store.d r[4:5], -8(r30)
0002c0  1f72f00f  addli r4, zero, 2047
0002c4  ab81ffff  lui r3, 1048568
0002c8  e74e1ffe  storeli.w r1, -20(r30)
0002cc  ab800d00  lui r1, 216
0002d0  73383ffe  store.d r[4:5], -16(r30)
0002d4  ab010500  lui r3, 80
0002d8  9b90d0b4  ori r1, r1, 2893
0002dc  e70e1ffe  storeli.w r1, -24(r30)
0002e0  9b900150  ori r1, r3, 1280
0002e4  abf17f7f  lui r3, 522239
0002e8  674e1ffe  storeli.w r1, -28(r30)
0002ec  abf07fff  lui r1, 1046527
0002f0  9b90f0ff  ori r1, r1, 4095
0002f4  670e1ffe  storeli.w r1, -32(r30)
0002f8  9b90f1ff  ori r1, r3, 4095
0002fc  e74d1ffe  storeli.w r1, -36(r30)
000300  e3006f00  loadli.w r1,  48(r30)
000304  e3415f00  loadli.w r3,  44(r30)
000308  9f640000  addli r9, zero, 6
00030c  8b101330  div.s r1, r6, r1
000310  8b903030  div.s r1, r1, r3
000314  9f010001  addli r3, zero, 128
000318  8b913030  div.s r3, r1, r3
00031c  1bb23100  slli r4, r3, 3
000320  9bb17100  slli r3, r3, 7
000324  8b924b18  sub.s r5, r23, r4
000328  0b943018  sub.s r8, r1, r3
00032c  8b118d39  mod.s r3, r26, r24
000330  8b927241  min.s r5, r5, r23
000334  8b905038  mod.s r1, r1, r5
000338  0b145430  div.s r8, r8, r5
00033c  8b1d1210  add.s r27, r4, r1
000340  33020428  zext_int2long r[5:6], r8
000344  9bb0e100  slli r1, r3, 14
000348  17399202  sll.d r[19:20], r[5:6], r9
00034c  1f028003  addli r4, zero, 448
000350  b3860d28  zext_int2long r[14:15], r27
000354  b3070228  zext_int2long r[16:17], r4
000358  bb00c100  bneq r2, r12, 32
00035c  1f720000  addli r4, zero, 7
000360  1305b205  setlt.u r10, r4, r27
000364  1f421000  addli r4, zero, 12
000368  17b24602  sll.d r[5:6], r[14:15], r4
00036c  3b110500  bneq r10, zero, 68
000370  33050028  zext_int2long r[11:12], zero
000374  db080000  j 68
000378  3b656101  bneq r2, r22, 344
00037c  7d100b00  xwait r22, 0
000380  7d100c00  xwait r24, 0
000384  1d000000  lock zero, zero
000388  1f320000  addli r4, zero, 3
00038c  010b0000  ds_cfg r22, zero, 0
000390  810a0002  ds_cfg r21, zero, 1
000394  810a001c  ds_cfg r21, zero, 14
000398  810a001a  ds_cfg r21, zero, 13
00039c  a1905003  shuffle_batch r1, r1, r21, 1
0003a0  1d100000  unlock zero
0003a4  7d000200  xsignal r4, 0
0003a8  7d800800  xsignal r17, 0
0003ac  5b0d0000  j 104
0003b0  eb540fff  load.d r[10:11], -16(r30)
0003b4  17059202  and.d r[11:12], r[5:6], r[10:11]
0003b8  0b32a218  sub.sl r[5:6], r[5:6], r[11:12]
0003bc  9f640000  addli r9, zero, 6
0003c0  6b5a0f00  load.d r[21:22], 0(r30)
0003c4  17529202  sra.d r[5:6], r[5:6], r9
0003c8  9f641000  addli r9, zero, 14
0003cc  0b35f240  min.sl r[11:12], r[5:6], r[16:17]
0003d0  0b324518  sub.sl r[5:6], r[11:12], r[5:6]
0003d4  17b59602  sll.d r[11:12], r[14:15], r9
0003d8  9f340000  addli r9, zero, 3
0003dc  0b25aa10  add.ul r[11:12], r[21:22], r[11:12]
0003e0  7d900400  xwait r9, 0
0003e4  1d800800  lock zero, r17
0003e8  1f028200  addli r4, r4, 64
0003ec  9f020002  addli r5, zero, 256
0003f0  1f0a0002  addli r20, zero, 256
0003f4  9f0a8000  addli r21, zero, 64
0003f8  15000000  dma_cfg zero, zero, zero, 0
0003fc  15800504  dma_cfg zero, r11, zero, 2
000400  95005506  dma_cfg r1, r10, r5, 3
000404  95824208  dma_cfg r5, r5, r4, 4
000408  35000000  dma_run zero
00040c  1d900800  unlock r17
000410  7d000b00  xsignal r22, 0
000414  1b326400  slli r4, r8, 6
000418  9f028007  addli r5, zero, 960
00041c  9bbc8100  slli r25, r3, 8
000420  33850228  zext_int2long r[11:12], r5
000424  33040228  zext_int2long r[9:10], r4
000428  0b22a440  min.ul r[5:6], r[9:10], r[11:12]
00042c  27028200  addli.d r[5:6], r[5:6], 64
000430  0b258248  max.ul r[11:12], r[5:6], r[9:10]
000434  33820a28  zext_int2long r[5:6], r21
000438  0b348518  sub.sl r[9:10], r[11:12], r[9:10]
00043c  0b254440  min.ul r[11:12], r[9:10], r[5:6]
000440  ab840200  lui r9, 40
000444  8b9c9c10  add.s r25, r25, r9
000448  3b01c100  bneq r2, r12, 64
00044c  6b540f01  load.d r[9:10], 16(r30)
000450  97316903  sll.d r[4:5], r[19:20], r22
000454  9f301000  addli r1, zero, 11
000458  7d900000  xwait r1, 0
00045c  1d800800  lock zero, r17
000460  9b302500  slli r1, r10, 2
000464  8b213410  add.ul r[4:5], r[9:10], r[4:5]
000468  15000000  dma_cfg zero, zero, zero, 0
00046c  15000204  dma_cfg zero, r4, zero, 2
000470  958c1106  dma_cfg r25, r3, r1, 3
000474  9f201000  addli r1, zero, 10
000478  150aca08  dma_cfg r20, r20, r12, 4
00047c  35000000  dma_run zero
000480  1d900800  unlock r17
000484  db580000  j 708
000488  1bb4e100  slli r8, r3, 14
00048c  9b910450  ori r3, r9, 1280
000490  8b113410  add.s r3, r8, r3
000494  bb121101  bneq r2, r17, 164
000498  1f521000  addli r4, zero, 13
00049c  7d900800  xwait r17, 0
0004a0  7d900b00  xwait r23, 0
0004a4  7d100200  xwait r4, 0
0004a8  1d000600  lock zero, r12
0004ac  898a5a01  mm_cfg r21, r21, r21, 0
0004b0  8908cb04  mm_cfg r17, r22, r12, 2
0004b4  a9811010  mm r3, r1, r1, 8
0004b8  9f101000  addli r1, zero, 9
0004bc  1d100600  unlock r12
0004c0  7d000c00  xsignal r24, 0
0004c4  7d800000  xsignal r1, 0
0004c8  9f401000  addli r1, zero, 12
0004cc  db4f0000  j 636
0004d0  2b420100  lui r4, 20
0004d4  9f720000  addli r5, zero, 7
0004d8  0b924010  add.s r4, r1, r4
0004dc  372a5100  beq r2, r5, 648
0004e0  9f620000  addli r5, zero, 6
0004e4  bb4c51fe  bneq r2, r5, -208
0004e8  eb5b8f00  load.d r[24:25], 8(r30)
0004ec  17356903  sll.d r[11:12], r[19:20], r22
0004f0  9f720000  addli r5, zero, 7
0004f4  1f0a0002  addli r20, zero, 256
0004f8  7d900200  xwait r5, 0
0004fc  1d800800  lock zero, r17
000500  9f020002  addli r5, zero, 256
000504  0ba5ab10  add.ul r[11:12], r[24:25], r[11:12]
000508  15000000  dma_cfg zero, zero, zero, 0
00050c  1f5c0000  addli r24, zero, 5
000510  9f0b1000  addli r23, zero, 8
000514  15800504  dma_cfg zero, r11, zero, 2
000518  15025506  dma_cfg r4, r10, r5, 3
00051c  1f020020  addli r4, zero, 4096
000520  95025209  dma_cfg r5, r4, r21, 4
000524  1f620000  addli r4, zero, 6
000528  35000000  dma_run zero
00052c  1d900800  unlock r17
000530  7d000200  xsignal r4, 0
000534  5bdcffff  j -288
000538  3b368101  bneq r2, r24, 396
00053c  1f221000  addli r4, zero, 10
000540  ab05803f  lui r11, 260096
000544  9f767000  addli r13, zero, 63
000548  9f000000  addli r1, zero, 0
00054c  7d100200  xwait r4, 0
000550  1f421000  addli r4, zero, 12
000554  7d100200  xwait r4, 0
000558  1d000b00  lock zero, r22
00055c  0d000002  ew_cfg zero, zero, zero, 1
000560  8d950500  ewcoeff_cfg r11, r11, zero, 0
000564  0d800604  ew_cfg zero, r13, zero, 2
000568  0d060006  ew_cfg r12, zero, zero, 3
00056c  0b921110  add.s r4, r3, r1
000570  9f800002  addli r1, r1, 256
000574  2d029201  dsmadd r4, r4, r25, 0
000578  bbdfc0ff  bneq r1, r28, -12
00057c  9f301000  addli r1, zero, 11
000580  9f721000  addli r5, zero, 15
000584  1d100b00  unlock r22
000588  1f020000  addli r4, zero, 0
00058c  7d800000  xsignal r1, 0
000590  e340dfff  loadli.w r1,  -20(r30)
000594  7d900200  xwait r5, 0
000598  1d000b00  lock zero, r22
00059c  9f521000  addli r5, zero, 13
0005a0  0d000002  ew_cfg zero, zero, zero, 1
0005a4  eb540fff  load.d r[10:11], -16(r30)
0005a8  8b101410  add.s r1, r8, r1
0005ac  0d000504  ew_cfg zero, r10, zero, 2
0005b0  ab0400c1  lui r9, 790528
0005b4  0d0b0006  ew_cfg r22, zero, zero, 3
0005b8  0d0b0b26  ew_cfg r22, r22, zero, 19
0005bc  8d020014  ew_cfg r5, zero, zero, 10
0005c0  e302dfff  loadli.w r5,  -24(r30)
0005c4  0d0b5616  ew_cfg r22, r12, r5, 11
0005c8  9f320000  addli r5, zero, 3
0005cc  0d00501a  ew_cfg zero, zero, r5, 13
0005d0  ab82ff40  lui r5, 266232
0005d4  8d84581c  ew_cfg r9, r17, r5, 14
0005d8  0d80051e  ew_cfg zero, r11, zero, 15
0005dc  cda00100  sslut r1, r3, 0
0005e0  0d000014  ew_cfg zero, zero, zero, 10
0005e4  0d000026  ew_cfg zero, zero, zero, 19
0005e8  1d100b00  unlock r22
0005ec  e342cfff  loadli.w r5,  -28(r30)
0005f0  0b145410  add.s r8, r8, r5
0005f4  9f022000  addli r5, zero, 16
0005f8  7d900200  xwait r5, 0
0005fc  1d000b00  lock zero, r22
000600  0d000002  ew_cfg zero, zero, zero, 1
000604  0d800604  ew_cfg zero, r13, zero, 2
000608  0d060006  ew_cfg r12, zero, zero, 3
00060c  e302cfff  loadli.w r5,  -32(r30)
000610  8d120000  ewcoeff_cfg r5, zero, zero, 0
000614  8b124410  add.s r5, r8, r4
000618  8b944110  add.s r9, r3, r4
00061c  1f020202  addli r4, r4, 256
000620  ada29400  dscmpnsel r5, r9, r9, 0
000624  bb4fc2ff  bneq r4, r28, -16
000628  1d100b00  unlock r22
00062c  1f020000  addli r4, zero, 0
000630  1d000b00  lock zero, r22
000634  0d000002  ew_cfg zero, zero, zero, 1
000638  0d800604  ew_cfg zero, r13, zero, 2
00063c  0d060006  ew_cfg r12, zero, zero, 3
000640  e342bfff  loadli.w r5,  -36(r30)
000644  8d120000  ewcoeff_cfg r5, zero, zero, 0
000648  8b124410  add.s r5, r8, r4
00064c  1f020202  addli r4, r4, 256
000650  ada25208  dscmpnsel r5, r5, r5, 4
000654  bb5fc2ff  bneq r4, r28, -12
000658  1d100b00  unlock r22
00065c  2b0280bf  lui r4, 784384
000660  1d000b00  lock zero, r22
000664  0d000002  ew_cfg zero, zero, zero, 1
000668  8d150200  ewcoeff_cfg r11, r4, zero, 0
00066c  6b520fff  load.d r[5:6], -16(r30)
000670  0d800204  ew_cfg zero, r5, zero, 2
000674  0d0b0006  ew_cfg r22, zero, zero, 3
000678  0d0b6b27  ew_cfg r22, r22, r22, 19
00067c  ad818100  dsmadd r3, r3, r8, 0
000680  1f042000  addli r8, zero, 16
000684  0d000026  ew_cfg zero, zero, zero, 19
000688  1d100b00  unlock r22
00068c  7d000400  xsignal r8, 0
000690  1d000b00  lock zero, r22
000694  0d000002  ew_cfg zero, zero, zero, 1
000698  8d950500  ewcoeff_cfg r11, r11, zero, 0
00069c  0d800204  ew_cfg zero, r5, zero, 2
0006a0  0d0b0006  ew_cfg r22, zero, zero, 3
0006a4  0d0b6b27  ew_cfg r22, r22, r22, 19
0006a8  ad803000  dsmadd r1, r1, r3, 0
0006ac  9f501000  addli r1, zero, 13
0006b0  0d000026  ew_cfg zero, zero, zero, 19
0006b4  1d100b00  unlock r22
0006b8  7d800000  xsignal r1, 0
0006bc  9f601000  addli r1, zero, 14
0006c0  5b110000  j 136
0006c4  3b220100  bneq r2, zero, 136
0006c8  e341dfff  loadli.w r3,  -20(r30)
0006cc  9bb06d00  slli r1, r27, 6
0006d0  8b113410  add.s r3, r8, r3
0006d4  33940028  sext_int2long r[9:10], r1
0006d8  9f202000  addli r1, zero, 18
0006dc  97b61602  sll.d r[14:15], r[14:15], r1
0006e0  8b37f440  min.sl r[16:17], r[9:10], r[16:17]
0006e4  9f601000  addli r1, zero, 14
0006e8  a7878700  addli.d r[16:17], r[16:17], 64
0006ec  7338dffc  store.d r[14:15], -48(r30)
0006f0  97366903  sll.d r[14:15], r[19:20], r22
0006f4  7334dffc  store.d r[14:15], -56(r30)
0006f8  7d900000  xwait r1, 0
0006fc  8bb78748  max.sl r[16:17], r[16:17], r[9:10]
000700  eb568f01  load.d r[14:15], 24(r30)
000704  6b590ffd  load.d r[19:20], -48(r30)
000708  9b302500  slli r1, r10, 2
00070c  0bb48718  sub.sl r[9:10], r[16:17], r[9:10]
000710  eb578ffc  load.d r[16:17], -56(r30)
000714  1d000c00  lock zero, r24
000718  8ba62611  add.ul r[14:15], r[14:15], r[19:20]
00071c  15000000  dma_cfg zero, zero, zero, 0
000720  15000602  dma_cfg zero, r12, zero, 1
000724  0b324440  min.sl r[5:6], r[9:10], r[5:6]
000728  8ba6f610  add.ul r[14:15], r[14:15], r[16:17]
00072c  15070004  dma_cfg r14, zero, zero, 2
000730  95861106  dma_cfg r13, r3, r1, 3
000734  9f000020  addli r1, zero, 4096
000738  95004a08  dma_cfg r1, r20, r4, 4
00073c  9f701000  addli r1, zero, 15
000740  35000000  dma_run zero
000744  1d100c00  unlock r24
000748  7d800000  xsignal r1, 0
00074c  eb518fff  load.d r[4:5], -8(r30)
000750  27130300  addli.d r[7:8], r[7:8], 1
000754  1f1d0d00  addli r26, r26, 1
000758  93303304  setlt.sl r1, r[7:8], r[4:5]
00075c  bb9e00fc  bneq r1, zero, -1116
000760  5b080000  j 64
000764  9f620000  addli r5, zero, 6
000768  7d900200  xwait r5, 0
00076c  9f121000  addli r5, zero, 9
000770  7d900200  xwait r5, 0
000774  1d000000  lock zero, zero
000778  010b0000  ds_cfg r22, zero, 0
00077c  810a0002  ds_cfg r21, zero, 1
000780  810a001c  ds_cfg r21, zero, 14
000784  810a001a  ds_cfg r21, zero, 13
000788  c1005205  shuffle_coa r1, r4, r21, 2
00078c  1f720000  addli r4, zero, 7
000790  1d100000  unlock zero
000794  7d000200  xsignal r4, 0
000798  7d800b00  xsignal r23, 0
00079c  5b8fffff  j -904
0007a0  7d000000  xsignal zero, 0
0007a4  bb600100  bneq r2, zero, 56
0007a8  9f200000  addli r1, zero, 2
0007ac  7d100000  xwait zero, 0
0007b0  7d100000  xwait zero, 0
0007b4  7d100000  xwait zero, 0
0007b8  7d100000  xwait zero, 0
0007bc  7d100000  xwait zero, 0
0007c0  7d100000  xwait zero, 0
0007c4  7d100000  xwait zero, 0
0007c8  7d100000  xwait zero, 0
0007cc  1d800000  lock zero, r1
0007d0  0d000020  ew_cfg zero, zero, zero, 16
0007d4  1d900000  unlock r1
0007d8  7d400000  xsignal_mode_cfg zero
0007dc  9f8e7e00  addli sp, sp, 56
0007e0  00a00300  mfence { lm, sm, gm }
0007e4  00100000  exit
0007e8  00100000  exit
0007ec  00100000  exit
0007f0  00100000  exit
0007f4  00100000  exit
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
