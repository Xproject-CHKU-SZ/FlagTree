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
0000bc  00340002  core_id r8
0000c0  1f8f5e00  addli r30, sp, 40
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7100400  beq r8, zero, 36
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
000284  cbe41102  ble.s r3, r1, 1336
000288  33930028  sext_int2long r[7:8], r1
00028c  1f71f00f  addli r2, zero, 2047
000290  b3910128  sext_int2long r[4:5], r3
000294  1f050002  addli r10, zero, 256
000298  9f150000  addli r11, zero, 1
00029c  1f4a0000  addli r20, zero, 4
0002a0  9f2a0000  addli r21, zero, 2
0002a4  9f0c0040  addli r25, zero, 8192
0002a8  9f0d0000  addli r27, zero, 0
0002ac  1f0e1000  addli r28, zero, 8
0002b0  ab80ffff  lui r1, 1048568
0002b4  733c3ffe  store.d r[4:5], -8(r30)
0002b8  ab210300  lui r3, 50
0002bc  73381ffe  store.d r[2:3], -16(r30)
0002c0  ab800200  lui r1, 40
0002c4  9b900028  ori r1, r1, 640
0002c8  e74e1ffe  storeli.w r1, -20(r30)
0002cc  ab800d00  lui r1, 216
0002d0  9b90d0b4  ori r1, r1, 2893
0002d4  e70e1ffe  storeli.w r1, -24(r30)
0002d8  9b900128  ori r1, r3, 640
0002dc  abf17f7f  lui r3, 522239
0002e0  674e1ffe  storeli.w r1, -28(r30)
0002e4  abf07fff  lui r1, 1046527
0002e8  9b90f0ff  ori r1, r1, 4095
0002ec  670e1ffe  storeli.w r1, -32(r30)
0002f0  9b90f1ff  ori r1, r3, 4095
0002f4  e74d1ffe  storeli.w r1, -36(r30)
0002f8  e3006f00  loadli.w r1,  48(r30)
0002fc  e3415f00  loadli.w r3,  44(r30)
000300  1f021000  addli r4, zero, 8
000304  1f510000  addli r2, zero, 5
000308  8b101330  div.s r1, r6, r1
00030c  8b903030  div.s r1, r1, r3
000310  8b91a030  div.s r3, r1, r10
000314  1bb63100  slli r12, r3, 3
000318  9bb18100  slli r3, r3, 8
00031c  8b16c218  sub.s r13, r4, r12
000320  0b973018  sub.s r14, r1, r3
000324  8b964640  min.s r13, r13, r4
000328  1f520000  addli r4, zero, 5
00032c  0b1bd730  div.s r22, r14, r13
000330  8b90d038  mod.s r1, r1, r13
000334  8b914d38  mod.s r3, r27, r4
000338  33070b28  zext_int2long r[15:16], r22
00033c  8b101610  add.s r1, r12, r1
000340  1bbde100  slli r26, r3, 14
000344  17394702  sll.d r[19:20], r[15:16], r4
000348  1f028003  addli r4, zero, 448
00034c  33860028  zext_int2long r[13:14], r1
000350  33080228  zext_int2long r[17:18], r4
000354  bb00b400  bneq r8, r11, 32
000358  1f720000  addli r4, zero, 7
00035c  930b1204  setlt.u r23, r4, r1
000360  1f421000  addli r4, zero, 12
000364  17374602  sll.d r[15:16], r[13:14], r4
000368  3bb10b00  bneq r23, zero, 76
00036c  b30b0028  zext_int2long r[24:25], zero
000370  db090000  j 76
000374  bb555401  bneq r8, r21, 372
000378  7d900a00  xwait r21, 0
00037c  7d100100  xwait r2, 0
000380  1d000000  lock zero, zero
000384  1f028000  addli r4, zero, 64
000388  1bb7d100  slli r14, r3, 13
00038c  810a0000  ds_cfg r21, zero, 0
000390  01020002  ds_cfg r4, zero, 1
000394  0102001c  ds_cfg r4, zero, 14
000398  0102001a  ds_cfg r4, zero, 13
00039c  211d4d02  shuffle_batch r26, r26, r4, 1
0003a0  1f320000  addli r4, zero, 3
0003a4  1d100000  unlock zero
0003a8  7d000200  xsignal r4, 0
0003ac  7d000a00  xsignal r20, 0
0003b0  5b0d0000  j 104
0003b4  6b520fff  load.d r[5:6], -16(r30)
0003b8  970b4702  and.d r[24:25], r[15:16], r[5:6]
0003bc  1f620000  addli r4, zero, 6
0003c0  0b377719  sub.sl r[15:16], r[15:16], r[24:25]
0003c4  1f050002  addli r10, zero, 256
0003c8  17574702  sra.d r[15:16], r[15:16], r4
0003cc  1f621000  addli r4, zero, 14
0003d0  8b3b0741  min.sl r[24:25], r[15:16], r[17:18]
0003d4  0bb7eb18  sub.sl r[15:16], r[24:25], r[15:16]
0003d8  973b4602  sll.d r[24:25], r[13:14], r4
0003dc  1f320000  addli r4, zero, 3
0003e0  7d100200  xwait r4, 0
0003e4  6b520f00  load.d r[5:6], 0(r30)
0003e8  1d000a00  lock zero, r20
0003ec  1f078700  addli r14, r14, 64
0003f0  15000000  dma_cfg zero, zero, zero, 0
0003f4  8b2b7211  add.ul r[24:25], r[5:6], r[24:25]
0003f8  1f020002  addli r4, zero, 256
0003fc  15000c04  dma_cfg zero, r24, zero, 2
000400  158d4b06  dma_cfg r26, r23, r4, 3
000404  1502e208  dma_cfg r4, r4, r14, 4
000408  35000000  dma_run zero
00040c  1d100a00  unlock r20
000410  7d800a00  xsignal r21, 0
000414  1bb7d100  slli r14, r3, 13
000418  9b375b00  slli r15, r22, 5
00041c  1f02c007  addli r4, zero, 992
000420  1f044000  addli r8, zero, 32
000424  330b0228  zext_int2long r[23:24], r4
000428  33820728  zext_int2long r[5:6], r15
00042c  33040428  zext_int2long r[9:10], r8
000430  9bb77100  slli r15, r3, 7
000434  0b2b6241  min.ul r[23:24], r[5:6], r[23:24]
000438  270b4b00  addli.d r[23:24], r[23:24], 32
00043c  0b2b4b48  max.ul r[23:24], r[23:24], r[5:6]
000440  0b324b18  sub.sl r[5:6], r[23:24], r[5:6]
000444  0b2b8240  min.ul r[23:24], r[5:6], r[9:10]
000448  2be20100  lui r4, 30
00044c  00340002  core_id r8
000450  0b9c4710  add.s r24, r15, r4
000454  3b11b400  bneq r8, r11, 68
000458  9f301000  addli r1, zero, 11
00045c  97315903  sll.d r[4:5], r[19:20], r21
000460  7d900000  xwait r1, 0
000464  eb500f01  load.d r[2:3], 16(r30)
000468  1d000a00  lock zero, r20
00046c  15000000  dma_cfg zero, zero, zero, 0
000470  8ba13010  add.ul r[4:5], r[2:3], r[4:5]
000474  9b302b00  slli r1, r22, 2
000478  15000204  dma_cfg zero, r4, zero, 2
00047c  158c1106  dma_cfg r24, r3, r1, 3
000480  9f000001  addli r1, zero, 128
000484  9580b008  dma_cfg r1, r1, r11, 4
000488  35000000  dma_run zero
00048c  1d100a00  unlock r20
000490  9f201000  addli r1, zero, 10
000494  5b590000  j 712
000498  9bb7d100  slli r15, r3, 13
00049c  9b110228  ori r3, r4, 640
0004a0  8b913710  add.s r3, r15, r3
0004a4  bb124401  bneq r8, r20, 164
0004a8  9f501000  addli r1, zero, 13
0004ac  7d100a00  xwait r20, 0
0004b0  7d100e00  xwait r28, 0
0004b4  1f028000  addli r4, zero, 64
0004b8  7d900000  xwait r1, 0
0004bc  9f004000  addli r1, zero, 32
0004c0  1d800500  lock zero, r11
0004c4  89004200  mm_cfg r1, r4, r4, 0
0004c8  9f101000  addli r1, zero, 9
0004cc  098ab504  mm_cfg r20, r11, r11, 2
0004d0  a901ed10  mm r3, r26, r14, 8
0004d4  1d900500  unlock r11
0004d8  7d000100  xsignal r2, 0
0004dc  7d800000  xsignal r1, 0
0004e0  9f401000  addli r1, zero, 12
0004e4  5b4f0000  j 632
0004e8  1bb7d100  slli r14, r3, 13
0004ec  2b420100  lui r4, 20
0004f0  8b174710  add.s r15, r14, r4
0004f4  1f720000  addli r4, zero, 7
0004f8  370a4400  beq r8, r4, 640
0004fc  9f620000  addli r5, zero, 6
000500  3b6c54fe  bneq r8, r5, -232
000504  6b548f00  load.d r[9:10], 8(r30)
000508  973b5903  sll.d r[24:25], r[19:20], r21
00050c  1f720000  addli r4, zero, 7
000510  7d100200  xwait r4, 0
000514  1d000a00  lock zero, r20
000518  1f020001  addli r4, zero, 128
00051c  8b2b7411  add.ul r[24:25], r[9:10], r[24:25]
000520  15000000  dma_cfg zero, zero, zero, 0
000524  1f048000  addli r8, zero, 64
000528  9f040020  addli r9, zero, 4096
00052c  15000c04  dma_cfg zero, r24, zero, 2
000530  95874b06  dma_cfg r15, r23, r4, 3
000534  15828408  dma_cfg r4, r9, r8, 4
000538  35000000  dma_run zero
00053c  1d100a00  unlock r20
000540  7d800200  xsignal r5, 0
000544  dbdaffff  j -300
000548  3b362400  bneq r8, r2, 396
00054c  1f211000  addli r2, zero, 10
000550  ab04803f  lui r9, 260096
000554  1f773000  addli r14, zero, 31
000558  9f000000  addli r1, zero, 0
00055c  7d100100  xwait r2, 0
000560  1f411000  addli r2, zero, 12
000564  7d100100  xwait r2, 0
000568  1d800a00  lock zero, r21
00056c  0d000002  ew_cfg zero, zero, zero, 1
000570  8d940400  ewcoeff_cfg r9, r9, zero, 0
000574  0d000704  ew_cfg zero, r14, zero, 2
000578  8d050006  ew_cfg r11, zero, zero, 3
00057c  0b921110  add.s r4, r3, r1
000580  9f800001  addli r1, r1, 128
000584  2d028201  dsmadd r4, r4, r24, 0
000588  bbdf90ff  bneq r1, r25, -12
00058c  9f301000  addli r1, zero, 11
000590  1f711000  addli r2, zero, 15
000594  1d900a00  unlock r21
000598  9f060000  addli r13, zero, 0
00059c  7d800000  xsignal r1, 0
0005a0  e340dfff  loadli.w r1,  -20(r30)
0005a4  7d100100  xwait r2, 0
0005a8  1d800a00  lock zero, r21
0005ac  1f511000  addli r2, zero, 13
0005b0  0d000002  ew_cfg zero, zero, zero, 1
0005b4  6b520fff  load.d r[5:6], -16(r30)
0005b8  8b901710  add.s r1, r15, r1
0005bc  0d800204  ew_cfg zero, r5, zero, 2
0005c0  2b0200c1  lui r4, 790528
0005c4  8d050006  ew_cfg r11, zero, zero, 3
0005c8  8d850526  ew_cfg r11, r11, zero, 19
0005cc  0d010014  ew_cfg r2, zero, zero, 10
0005d0  6301dfff  loadli.w r2,  -24(r30)
0005d4  8d8a2516  ew_cfg r21, r11, r2, 11
0005d8  1f310000  addli r2, zero, 3
0005dc  0d00201a  ew_cfg zero, zero, r2, 13
0005e0  2b81ff40  lui r2, 266232
0005e4  0d022a1c  ew_cfg r4, r20, r2, 14
0005e8  0d80041e  ew_cfg zero, r9, zero, 15
0005ec  cda00100  sslut r1, r3, 0
0005f0  0d000014  ew_cfg zero, zero, zero, 10
0005f4  0d000026  ew_cfg zero, zero, zero, 19
0005f8  1d900a00  unlock r21
0005fc  6341cfff  loadli.w r2,  -28(r30)
000600  0b962710  add.s r12, r15, r2
000604  1f012000  addli r2, zero, 16
000608  7d100100  xwait r2, 0
00060c  1d800a00  lock zero, r21
000610  0d000002  ew_cfg zero, zero, zero, 1
000614  0d000704  ew_cfg zero, r14, zero, 2
000618  8d050006  ew_cfg r11, zero, zero, 3
00061c  6301cfff  loadli.w r2,  -32(r30)
000620  0d110000  ewcoeff_cfg r2, zero, zero, 0
000624  0b12d610  add.s r4, r12, r13
000628  8b92d110  add.s r5, r3, r13
00062c  9f860601  addli r13, r13, 128
000630  2da25200  dscmpnsel r4, r5, r5, 0
000634  bbcf96ff  bneq r13, r25, -16
000638  1d900a00  unlock r21
00063c  9f060000  addli r13, zero, 0
000640  1d800a00  lock zero, r21
000644  0d000002  ew_cfg zero, zero, zero, 1
000648  0d000704  ew_cfg zero, r14, zero, 2
00064c  8d050006  ew_cfg r11, zero, zero, 3
000650  6341bfff  loadli.w r2,  -36(r30)
000654  0d110000  ewcoeff_cfg r2, zero, zero, 0
000658  0b12d610  add.s r4, r12, r13
00065c  9f860601  addli r13, r13, 128
000660  2d224208  dscmpnsel r4, r4, r4, 4
000664  bbdf96ff  bneq r13, r25, -12
000668  1d900a00  unlock r21
00066c  2b0180bf  lui r2, 784384
000670  1d800a00  lock zero, r21
000674  0d000002  ew_cfg zero, zero, zero, 1
000678  8d140100  ewcoeff_cfg r9, r2, zero, 0
00067c  1f012000  addli r2, zero, 16
000680  6b520fff  load.d r[5:6], -16(r30)
000684  0d800204  ew_cfg zero, r5, zero, 2
000688  8d050006  ew_cfg r11, zero, zero, 3
00068c  8d85b526  ew_cfg r11, r11, r11, 19
000690  ad81c100  dsmadd r3, r3, r12, 0
000694  0d000026  ew_cfg zero, zero, zero, 19
000698  1d900a00  unlock r21
00069c  7d000100  xsignal r2, 0
0006a0  1d800a00  lock zero, r21
0006a4  0d000002  ew_cfg zero, zero, zero, 1
0006a8  8d940400  ewcoeff_cfg r9, r9, zero, 0
0006ac  0d800204  ew_cfg zero, r5, zero, 2
0006b0  8d050006  ew_cfg r11, zero, zero, 3
0006b4  8d85b526  ew_cfg r11, r11, r11, 19
0006b8  ad803000  dsmadd r1, r1, r3, 0
0006bc  9f501000  addli r1, zero, 13
0006c0  0d000026  ew_cfg zero, zero, zero, 19
0006c4  1d900a00  unlock r21
0006c8  7d800000  xsignal r1, 0
0006cc  9f601000  addli r1, zero, 14
0006d0  db110000  j 140
0006d4  3b320400  bneq r8, zero, 140
0006d8  9bb06000  slli r1, r1, 6
0006dc  1f212000  addli r2, zero, 18
0006e0  9b322b00  slli r5, r22, 2
0006e4  b3910028  sext_int2long r[4:5], r1
0006e8  17362602  sll.d r[13:14], r[13:14], r2
0006ec  1f018000  addli r2, zero, 64
0006f0  e340dfff  loadli.w r1,  -20(r30)
0006f4  0bb40141  min.sl r[9:10], r[4:5], r[17:18]
0006f8  6b588f01  load.d r[17:18], 24(r30)
0006fc  8b901710  add.s r1, r15, r1
000700  17375903  sll.d r[15:16], r[19:20], r21
000704  27048400  addli.d r[9:10], r[9:10], 64
000708  0b26c810  add.ul r[13:14], r[17:18], r[13:14]
00070c  0b343448  max.sl r[9:10], r[9:10], r[4:5]
000710  0b26e610  add.ul r[13:14], r[13:14], r[15:16]
000714  8b313418  sub.sl r[4:5], r[9:10], r[4:5]
000718  33040128  zext_int2long r[9:10], r2
00071c  1f611000  addli r2, zero, 14
000720  7d100100  xwait r2, 0
000724  1f510000  addli r2, zero, 5
000728  8bb18140  min.sl r[4:5], r[4:5], r[9:10]
00072c  00340002  core_id r8
000730  1d000100  lock zero, r2
000734  15000000  dma_cfg zero, zero, zero, 0
000738  15800502  dma_cfg zero, r11, zero, 1
00073c  95060004  dma_cfg r13, zero, zero, 2
000740  15865006  dma_cfg r12, r1, r5, 3
000744  9f000001  addli r1, zero, 128
000748  9f020020  addli r5, zero, 4096
00074c  95823008  dma_cfg r5, r1, r3, 4
000750  9f701000  addli r1, zero, 15
000754  35000000  dma_run zero
000758  1d100100  unlock r2
00075c  7d800000  xsignal r1, 0
000760  eb518fff  load.d r[4:5], -8(r30)
000764  27130300  addli.d r[7:8], r[7:8], 1
000768  9f9d0d00  addli r27, r27, 1
00076c  93303304  setlt.sl r1, r[7:8], r[4:5]
000770  3bae00fc  bneq r1, zero, -1144
000774  5b090000  j 72
000778  1f620000  addli r4, zero, 6
00077c  9f028000  addli r5, zero, 64
000780  7d100200  xwait r4, 0
000784  1f121000  addli r4, zero, 9
000788  7d100200  xwait r4, 0
00078c  1d000000  lock zero, zero
000790  1f024000  addli r4, zero, 32
000794  810a0000  ds_cfg r21, zero, 0
000798  01020002  ds_cfg r4, zero, 1
00079c  8102001c  ds_cfg r5, zero, 14
0007a0  0102001a  ds_cfg r4, zero, 13
0007a4  1f720000  addli r4, zero, 7
0007a8  41875704  shuffle_coa r14, r15, r5, 2
0007ac  1d100000  unlock zero
0007b0  7d000200  xsignal r4, 0
0007b4  7d000e00  xsignal r28, 0
0007b8  5b8cffff  j -928
0007bc  7d000000  xsignal zero, 0
0007c0  bb600400  bneq r8, zero, 56
0007c4  9f200000  addli r1, zero, 2
0007c8  7d100000  xwait zero, 0
0007cc  7d100000  xwait zero, 0
0007d0  7d100000  xwait zero, 0
0007d4  7d100000  xwait zero, 0
0007d8  7d100000  xwait zero, 0
0007dc  7d100000  xwait zero, 0
0007e0  7d100000  xwait zero, 0
0007e4  7d100000  xwait zero, 0
0007e8  1d800000  lock zero, r1
0007ec  0d000020  ew_cfg zero, zero, zero, 16
0007f0  1d900000  unlock r1
0007f4  7d400000  xsignal_mode_cfg zero
0007f8  9f8e5e00  addli sp, sp, 40
0007fc  00a00300  mfence { lm, sm, gm }
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
000a3c  00100000  exit
000a40  00100000  exit
