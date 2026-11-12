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
000284  cbf41102  ble.s r3, r1, 1340
000288  33930028  sext_int2long r[7:8], r1
00028c  ab000a00  lui r1, 160
000290  b3910128  sext_int2long r[4:5], r3
000294  1f040001  addli r8, zero, 128
000298  9f5b0000  addli r23, zero, 5
00029c  9f660000  addli r13, zero, 6
0002a0  1f4a0000  addli r20, zero, 4
0002a4  1f2b0000  addli r22, zero, 2
0002a8  1f0e8000  addli r28, zero, 64
0002ac  2b0c0100  lui r24, 16
0002b0  9f0d0000  addli r27, zero, 0
0002b4  9b9000a0  ori r1, r1, 2560
0002b8  733c3ffe  store.d r[4:5], -8(r30)
0002bc  1f72f01f  addli r4, zero, 4095
0002c0  ab01feff  lui r3, 1048544
0002c4  e74e1ffe  storeli.w r1, -20(r30)
0002c8  ab800d00  lui r1, 216
0002cc  73383ffe  store.d r[4:5], -16(r30)
0002d0  ab010f00  lui r3, 240
0002d4  9b90d0b4  ori r1, r1, 2893
0002d8  e70e1ffe  storeli.w r1, -24(r30)
0002dc  9b9001a0  ori r1, r3, 2560
0002e0  abf17f7f  lui r3, 522239
0002e4  674e1ffe  storeli.w r1, -28(r30)
0002e8  abf07fff  lui r1, 1046527
0002ec  9b90f0ff  ori r1, r1, 4095
0002f0  670e1ffe  storeli.w r1, -32(r30)
0002f4  9b90f1ff  ori r1, r3, 4095
0002f8  e74d1ffe  storeli.w r1, -36(r30)
0002fc  e3006f00  loadli.w r1,  48(r30)
000300  e3415f00  loadli.w r3,  44(r30)
000304  1f022000  addli r4, zero, 16
000308  8b101330  div.s r1, r6, r1
00030c  8b903030  div.s r1, r1, r3
000310  8b918030  div.s r3, r1, r8
000314  9bb43100  slli r9, r3, 3
000318  9bb17100  slli r3, r3, 7
00031c  0b159218  sub.s r10, r4, r9
000320  1f021000  addli r4, zero, 8
000324  8b953018  sub.s r11, r1, r3
000328  8b917d39  mod.s r3, r27, r23
00032c  0b154540  min.s r10, r10, r4
000330  8b90a038  mod.s r1, r1, r10
000334  8b9ca530  div.s r25, r11, r10
000338  1bbdf100  slli r26, r3, 15
00033c  8b9a1410  add.s r21, r9, r1
000340  b3840c28  zext_int2long r[10:11], r25
000344  9f700000  addli r1, zero, 7
000348  17b91402  sll.d r[19:20], r[10:11], r1
00034c  9f00000f  addli r1, zero, 1920
000350  33870a28  zext_int2long r[15:16], r21
000354  b3840028  zext_int2long r[10:11], r1
000358  bb00d100  bneq r2, r13, 32
00035c  9f701000  addli r1, zero, 15
000360  1f521000  addli r4, zero, 13
000364  93805005  setlt.u r1, r1, r21
000368  97354702  sll.d r[12:13], r[15:16], r4
00036c  3b910000  bneq r1, zero, 68
000370  33080028  zext_int2long r[17:18], zero
000374  db080000  j 68
000378  bb756101  bneq r2, r22, 380
00037c  7d100b00  xwait r22, 0
000380  7d900b00  xwait r23, 0
000384  1d000000  lock zero, zero
000388  9f300000  addli r1, zero, 3
00038c  010b0000  ds_cfg r22, zero, 0
000390  010e0002  ds_cfg r28, zero, 1
000394  010e001c  ds_cfg r28, zero, 14
000398  0104001a  ds_cfg r8, zero, 13
00039c  211dcd03  shuffle_batch r26, r26, r28, 1
0003a0  1d100000  unlock zero
0003a4  7d800000  xsignal r1, 0
0003a8  7d000a00  xsignal r20, 0
0003ac  db0b0000  j 92
0003b0  6b520fff  load.d r[5:6], -16(r30)
0003b4  17884502  and.d r[17:18], r[12:13], r[5:6]
0003b8  8bb50519  sub.sl r[12:13], r[12:13], r[17:18]
0003bc  9f701000  addli r1, zero, 15
0003c0  6b520f00  load.d r[5:6], 0(r30)
0003c4  97d5d502  sra.d r[12:13], r[12:13], r13
0003c8  0bb89540  min.sl r[17:18], r[12:13], r[10:11]
0003cc  8b35b818  sub.sl r[12:13], r[17:18], r[12:13]
0003d0  17381702  sll.d r[17:18], r[15:16], r1
0003d4  9f300000  addli r1, zero, 3
0003d8  7d900000  xwait r1, 0
0003dc  1d000a00  lock zero, r20
0003e0  0b280211  add.ul r[17:18], r[5:6], r[17:18]
0003e4  1f020002  addli r4, zero, 256
0003e8  9f800501  addli r1, r11, 128
0003ec  15000000  dma_cfg zero, zero, zero, 0
0003f0  15800804  dma_cfg zero, r17, zero, 2
0003f4  150d4806  dma_cfg r26, r16, r4, 3
0003f8  15021208  dma_cfg r4, r4, r1, 4
0003fc  35000000  dma_run zero
000400  1d100a00  unlock r20
000404  7d000b00  xsignal r22, 0
000408  9bb07c00  slli r1, r25, 7
00040c  33880028  zext_int2long r[17:18], r1
000410  9bb09100  slli r1, r3, 9
000414  8b259840  min.ul r[12:13], r[17:18], r[10:11]
000418  a7850501  addli.d r[12:13], r[12:13], 128
00041c  0ba20549  max.ul r[5:6], r[12:13], r[17:18]
000420  b3050428  zext_int2long r[12:13], r8
000424  0b320219  sub.sl r[5:6], r[5:6], r[17:18]
000428  0b28b240  min.ul r[17:18], r[5:6], r[12:13]
00042c  2b020500  lui r4, 80
000430  8b904010  add.s r1, r1, r4
000434  3b21d100  bneq r2, r13, 72
000438  eb540f01  load.d r[10:11], 16(r30)
00043c  97316903  sll.d r[4:5], r[19:20], r22
000440  9f321000  addli r5, zero, 11
000444  7d900200  xwait r5, 0
000448  1d000a00  lock zero, r20
00044c  9b322800  slli r5, r16, 2
000450  8ba13410  add.ul r[4:5], r[10:11], r[4:5]
000454  15000000  dma_cfg zero, zero, zero, 0
000458  15000204  dma_cfg zero, r4, zero, 2
00045c  95805106  dma_cfg r1, r3, r5, 3
000460  9f100000  addli r1, zero, 1
000464  9f010004  addli r3, zero, 512
000468  95811108  dma_cfg r3, r3, r1, 4
00046c  35000000  dma_run zero
000470  1d100a00  unlock r20
000474  9f201000  addli r1, zero, 10
000478  5b5e0000  j 752
00047c  9bbc0101  slli r25, r3, 16
000480  9b1102a0  ori r3, r4, 2560
000484  8b913c10  add.s r3, r25, r3
000488  3b134101  bneq r2, r20, 196
00048c  9f001000  addli r1, zero, 8
000490  7d100a00  xwait r20, 0
000494  1f050000  addli r10, zero, 0
000498  9f140000  addli r9, zero, 1
00049c  1f521000  addli r4, zero, 13
0004a0  7d900000  xwait r1, 0
0004a4  9f100000  addli r1, zero, 1
0004a8  7d100200  xwait r4, 0
0004ac  1b32e500  slli r4, r10, 14
0004b0  9b328500  slli r5, r10, 8
0004b4  1d800000  lock zero, r1
0004b8  1f150000  addli r10, zero, 1
0004bc  090e8e00  mm_cfg r28, r28, r8, 0
0004c0  1712a201  or r4, r4, r26
0004c4  97923200  or r5, r5, r3
0004c8  090a1a04  mm_cfg r20, r20, r1, 2
0004cc  a9024d10  mm r5, r26, r4, 8
0004d0  1b821400  andi r4, r9, 1
0004d4  9f040000  addli r9, zero, 0
0004d8  1d900000  unlock r1
0004dc  3b4f02fe  bneq r4, zero, -48
0004e0  9f101000  addli r1, zero, 9
0004e4  7d800b00  xsignal r23, 0
0004e8  7d800000  xsignal r1, 0
0004ec  9f401000  addli r1, zero, 12
0004f0  5b4f0000  j 632
0004f4  ab800200  lui r1, 40
0004f8  1f720000  addli r4, zero, 7
0004fc  8b101d10  add.s r1, r26, r1
000500  371a4100  beq r2, r4, 644
000504  1f120000  addli r4, zero, 1
000508  3b0c41fe  bneq r2, r4, -256
00050c  1f720000  addli r4, zero, 7
000510  97356903  sll.d r[12:13], r[19:20], r22
000514  7d100200  xwait r4, 0
000518  6b528f00  load.d r[5:6], 8(r30)
00051c  1d000a00  lock zero, r20
000520  15000000  dma_cfg zero, zero, zero, 0
000524  8b25b210  add.ul r[12:13], r[5:6], r[12:13]
000528  1f020004  addli r4, zero, 512
00052c  15000604  dma_cfg zero, r12, zero, 2
000530  95804506  dma_cfg r1, r11, r4, 3
000534  9f000040  addli r1, zero, 8192
000538  1582c009  dma_cfg r4, r1, r28, 4
00053c  35000000  dma_run zero
000540  1d100a00  unlock r20
000544  7d800600  xsignal r13, 0
000548  5bd8ffff  j -320
00054c  3b667101  bneq r2, r23, 408
000550  1f221000  addli r4, zero, 10
000554  ab05803f  lui r11, 260096
000558  1f76f000  addli r12, zero, 127
00055c  9f040000  addli r9, zero, 0
000560  7d100200  xwait r4, 0
000564  1f421000  addli r4, zero, 12
000568  7d100200  xwait r4, 0
00056c  1d000b00  lock zero, r22
000570  1f120000  addli r4, zero, 1
000574  0d000002  ew_cfg zero, zero, zero, 1
000578  8d950500  ewcoeff_cfg r11, r11, zero, 0
00057c  0d000604  ew_cfg zero, r12, zero, 2
000580  0d020006  ew_cfg r4, zero, zero, 3
000584  0b929110  add.s r4, r3, r9
000588  9f840404  addli r9, r9, 512
00058c  2d021200  dsmadd r4, r4, r1, 0
000590  bbdf84ff  bneq r9, r24, -12
000594  1f321000  addli r4, zero, 11
000598  1d100b00  unlock r22
00059c  2b0500c1  lui r10, 790528
0005a0  9f000000  addli r1, zero, 0
0005a4  7d000200  xsignal r4, 0
0005a8  6342dfff  loadli.w r4,  -20(r30)
0005ac  8b944c10  add.s r9, r25, r4
0005b0  1f721000  addli r4, zero, 15
0005b4  7d100200  xwait r4, 0
0005b8  1d000b00  lock zero, r22
0005bc  0d000002  ew_cfg zero, zero, zero, 1
0005c0  6b520fff  load.d r[5:6], -16(r30)
0005c4  0d800204  ew_cfg zero, r5, zero, 2
0005c8  1f521000  addli r4, zero, 13
0005cc  9f120000  addli r5, zero, 1
0005d0  0d0a0006  ew_cfg r20, zero, zero, 3
0005d4  0d0a0a26  ew_cfg r20, r20, zero, 19
0005d8  0d020014  ew_cfg r4, zero, zero, 10
0005dc  6302dfff  loadli.w r4,  -24(r30)
0005e0  0d8b4216  ew_cfg r22, r5, r4, 11
0005e4  1f320000  addli r4, zero, 3
0005e8  0d00401a  ew_cfg zero, zero, r4, 13
0005ec  2b82ff40  lui r4, 266232
0005f0  0d054a1c  ew_cfg r10, r20, r4, 14
0005f4  0d80051e  ew_cfg zero, r11, zero, 15
0005f8  cda40100  sslut r9, r3, 0
0005fc  0d000014  ew_cfg zero, zero, zero, 10
000600  0d000026  ew_cfg zero, zero, zero, 19
000604  1d100b00  unlock r22
000608  6342cfff  loadli.w r4,  -28(r30)
00060c  0b954c10  add.s r10, r25, r4
000610  1f022000  addli r4, zero, 16
000614  7d100200  xwait r4, 0
000618  1d000b00  lock zero, r22
00061c  0d000002  ew_cfg zero, zero, zero, 1
000620  0d000604  ew_cfg zero, r12, zero, 2
000624  8d020006  ew_cfg r5, zero, zero, 3
000628  6302cfff  loadli.w r4,  -32(r30)
00062c  0d120000  ewcoeff_cfg r4, zero, zero, 0
000630  0b121510  add.s r4, r10, r1
000634  8b921110  add.s r5, r3, r1
000638  9f800004  addli r1, r1, 512
00063c  2da25200  dscmpnsel r4, r5, r5, 0
000640  bbcf80ff  bneq r1, r24, -16
000644  1d100b00  unlock r22
000648  1f120000  addli r4, zero, 1
00064c  9f000000  addli r1, zero, 0
000650  1d000b00  lock zero, r22
000654  0d000002  ew_cfg zero, zero, zero, 1
000658  0d000604  ew_cfg zero, r12, zero, 2
00065c  0d020006  ew_cfg r4, zero, zero, 3
000660  6342bfff  loadli.w r4,  -36(r30)
000664  0d120000  ewcoeff_cfg r4, zero, zero, 0
000668  0b121510  add.s r4, r10, r1
00066c  9f800004  addli r1, r1, 512
000670  2d224208  dscmpnsel r4, r4, r4, 4
000674  bbdf80ff  bneq r1, r24, -12
000678  1d100b00  unlock r22
00067c  ab0080bf  lui r1, 784384
000680  1d000b00  lock zero, r22
000684  0d000002  ew_cfg zero, zero, zero, 1
000688  8d950000  ewcoeff_cfg r11, r1, zero, 0
00068c  9f002000  addli r1, zero, 16
000690  6b520fff  load.d r[5:6], -16(r30)
000694  0d800204  ew_cfg zero, r5, zero, 2
000698  0d0a0006  ew_cfg r20, zero, zero, 3
00069c  0d0a4a27  ew_cfg r20, r20, r20, 19
0006a0  ad81a100  dsmadd r3, r3, r10, 0
0006a4  0d000026  ew_cfg zero, zero, zero, 19
0006a8  1d100b00  unlock r22
0006ac  7d800000  xsignal r1, 0
0006b0  1d000b00  lock zero, r22
0006b4  9f501000  addli r1, zero, 13
0006b8  0d000002  ew_cfg zero, zero, zero, 1
0006bc  8d950500  ewcoeff_cfg r11, r11, zero, 0
0006c0  0d800204  ew_cfg zero, r5, zero, 2
0006c4  0d0a0006  ew_cfg r20, zero, zero, 3
0006c8  0d0a4a27  ew_cfg r20, r20, r20, 19
0006cc  ad843400  dsmadd r9, r9, r3, 0
0006d0  0d000026  ew_cfg zero, zero, zero, 19
0006d4  1d100b00  unlock r22
0006d8  7d800000  xsignal r1, 0
0006dc  9f601000  addli r1, zero, 14
0006e0  5b110000  j 136
0006e4  3b220100  bneq r2, zero, 136
0006e8  9bb07a00  slli r1, r21, 7
0006ec  e341dfff  loadli.w r3,  -20(r30)
0006f0  17396903  sll.d r[19:20], r[19:20], r22
0006f4  9f5b0000  addli r23, zero, 5
0006f8  33920028  sext_int2long r[5:6], r1
0006fc  9f402000  addli r1, zero, 20
000700  8b913c10  add.s r3, r25, r3
000704  eb5c8f01  load.d r[26:27], 24(r30)
000708  8b349240  min.sl r[10:11], r[5:6], r[10:11]
00070c  17371702  sll.d r[15:16], r[15:16], r1
000710  9f601000  addli r1, zero, 14
000714  a7840401  addli.d r[10:11], r[10:11], 128
000718  0ba7ec10  add.ul r[15:16], r[26:27], r[15:16]
00071c  7d900000  xwait r1, 0
000720  9f100000  addli r1, zero, 1
000724  8bb44448  max.sl r[10:11], r[10:11], r[5:6]
000728  0bb24418  sub.sl r[5:6], r[10:11], r[5:6]
00072c  8b242711  add.ul r[10:11], r[15:16], r[19:20]
000730  0b32b240  min.sl r[5:6], r[5:6], r[12:13]
000734  9f550000  addli r11, zero, 5
000738  1d800500  lock zero, r11
00073c  15000000  dma_cfg zero, zero, zero, 0
000740  15800002  dma_cfg zero, r1, zero, 1
000744  9b302800  slli r1, r16, 2
000748  15050004  dma_cfg r10, zero, zero, 2
00074c  95841106  dma_cfg r9, r3, r1, 3
000750  9f000004  addli r1, zero, 512
000754  9f010040  addli r3, zero, 8192
000758  95814008  dma_cfg r3, r1, r4, 4
00075c  9f701000  addli r1, zero, 15
000760  35000000  dma_run zero
000764  1d900500  unlock r11
000768  7d800000  xsignal r1, 0
00076c  eb518fff  load.d r[4:5], -8(r30)
000770  27130300  addli.d r[7:8], r[7:8], 1
000774  9f9d0d00  addli r27, r27, 1
000778  93303304  setlt.sl r1, r[7:8], r[4:5]
00077c  3b8e00fc  bneq r1, zero, -1152
000780  5b080000  j 64
000784  1f121000  addli r4, zero, 9
000788  7d900600  xwait r13, 0
00078c  7d100200  xwait r4, 0
000790  1d000000  lock zero, zero
000794  010b0000  ds_cfg r22, zero, 0
000798  01040002  ds_cfg r8, zero, 1
00079c  010e001c  ds_cfg r28, zero, 14
0007a0  0104001a  ds_cfg r8, zero, 13
0007a4  418dc005  shuffle_coa r26, r1, r28, 2
0007a8  9f700000  addli r1, zero, 7
0007ac  1d100000  unlock zero
0007b0  7d800000  xsignal r1, 0
0007b4  9f001000  addli r1, zero, 8
0007b8  7d800000  xsignal r1, 0
0007bc  db89ffff  j -948
0007c0  7d000000  xsignal zero, 0
0007c4  bb600100  bneq r2, zero, 56
0007c8  9f200000  addli r1, zero, 2
0007cc  7d100000  xwait zero, 0
0007d0  7d100000  xwait zero, 0
0007d4  7d100000  xwait zero, 0
0007d8  7d100000  xwait zero, 0
0007dc  7d100000  xwait zero, 0
0007e0  7d100000  xwait zero, 0
0007e4  7d100000  xwait zero, 0
0007e8  7d100000  xwait zero, 0
0007ec  1d800000  lock zero, r1
0007f0  0d000020  ew_cfg zero, zero, zero, 16
0007f4  1d900000  unlock r1
0007f8  7d400000  xsignal_mode_cfg zero
0007fc  9f8e5e00  addli sp, sp, 40
000800  00a00300  mfence { lm, sm, gm }
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
000a44  00100000  exit
