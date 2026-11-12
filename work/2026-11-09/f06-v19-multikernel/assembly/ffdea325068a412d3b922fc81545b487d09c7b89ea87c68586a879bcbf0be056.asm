; SHA-256 ffdea325068a412d3b922fc81545b487d09c7b89ea87c68586a879bcbf0be056
; P800 SDNN · XTDK LLVM 19 · 652 / 652 words decoded
; bound names: triton_tem_fused_add_gelu_mm_0
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
0001e0  9f611000  addli r3, zero, 14
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
000264  4b951102  ble.s r3, r1, 1348
000268  33930028  sext_int2long r[7:8], r1
00026c  ab000500  lui r1, 80
000270  b3910128  sext_int2long r[4:5], r3
000274  1f048000  addli r8, zero, 64
000278  9f021000  addli r5, zero, 8
00027c  9f770000  addli r15, zero, 7
000280  9f450000  addli r11, zero, 4
000284  1f660000  addli r12, zero, 6
000288  9f2b0000  addli r23, zero, 2
00028c  1f0e0001  addli r28, zero, 128
000290  ab8d0000  lui r27, 8
000294  1f0c0000  addli r24, zero, 0
000298  9b900080  ori r1, r1, 2048
00029c  733c3ffe  store.d r[4:5], -8(r30)
0002a0  1f72f00f  addli r4, zero, 2047
0002a4  ab81ffff  lui r3, 1048568
0002a8  e74e1ffe  storeli.w r1, -20(r30)
0002ac  ab000700  lui r1, 112
0002b0  73383ffe  store.d r[4:5], -16(r30)
0002b4  ab21373d  lui r3, 250738
0002b8  9b900080  ori r1, r1, 2048
0002bc  e70e1ffe  storeli.w r1, -24(r30)
0002c0  9b903171  ori r1, r3, 1811
0002c4  ab810300  lui r3, 56
0002c8  674e1ffe  storeli.w r1, -28(r30)
0002cc  ab404c3f  lui r1, 259268
0002d0  9b90a022  ori r1, r1, 554
0002d4  670e1ffe  storeli.w r1, -32(r30)
0002d8  9b903184  ori r1, r3, 2115
0002dc  e74d1ffe  storeli.w r1, -36(r30)
0002e0  5b0c0000  j 96
0002e4  eb540f01  load.d r[10:11], 16(r30)
0002e8  97b17803  sll.d r[4:5], r[18:19], r23
0002ec  9f301000  addli r1, zero, 11
0002f0  7d900000  xwait r1, 0
0002f4  1d800500  lock zero, r11
0002f8  9b302700  slli r1, r14, 2
0002fc  8ba13410  add.ul r[4:5], r[10:11], r[4:5]
000300  15000000  dma_cfg zero, zero, zero, 0
000304  15000204  dma_cfg zero, r4, zero, 2
000308  95891106  dma_cfg r19, r3, r1, 3
00030c  9f100000  addli r1, zero, 1
000310  9f010004  addli r3, zero, 512
000314  95811108  dma_cfg r3, r3, r1, 4
000318  35000000  dma_run zero
00031c  1d900500  unlock r11
000320  9f201000  addli r1, zero, 10
000324  7d800000  xsignal r1, 0
000328  eb518fff  load.d r[4:5], -8(r30)
00032c  27130300  addli.d r[7:8], r[7:8], 1
000330  1f1c0c00  addli r24, r24, 1
000334  9f770000  addli r15, zero, 7
000338  93303304  setlt.sl r1, r[7:8], r[4:5]
00033c  b7b10002  beq r1, zero, 1132
000340  e3006f00  loadli.w r1,  48(r30)
000344  e3415f00  loadli.w r3,  44(r30)
000348  8b101330  div.s r1, r6, r1
00034c  8b903030  div.s r1, r1, r3
000350  8b918030  div.s r3, r1, r8
000354  1bb23100  slli r4, r3, 3
000358  9bb16100  slli r3, r3, 6
00035c  8b944218  sub.s r9, r5, r4
000360  8b913018  sub.s r3, r1, r3
000364  8b945440  min.s r9, r9, r5
000368  0b959038  mod.s r10, r1, r9
00036c  8b9c9130  div.s r25, r3, r9
000370  8b10bc38  mod.s r1, r24, r11
000374  8b16a210  add.s r13, r4, r10
000378  b3810c28  zext_int2long r[4:5], r25
00037c  1bbde000  slli r26, r1, 14
000380  97b8f102  sll.d r[18:19], r[4:5], r15
000384  9f018003  addli r3, zero, 448
000388  b38a0628  zext_int2long r[22:23], r13
00038c  b3810128  zext_int2long r[4:5], r3
000390  3b70c100  bneq r2, r12, 28
000394  9384d704  setlt.u r9, r15, r13
000398  1f451000  addli r10, zero, 12
00039c  17b7aa02  sll.d r[15:16], r[22:23], r10
0003a0  3bb10400  bneq r9, zero, 76
0003a4  b3040028  zext_int2long r[10:11], zero
0003a8  db090000  j 76
0003ac  3b357101  bneq r2, r23, 332
0003b0  9f540000  addli r9, zero, 5
0003b4  7d900b00  xwait r23, 0
0003b8  1bb8f000  slli r16, r1, 15
0003bc  7d900400  xwait r9, 0
0003c0  1d000000  lock zero, zero
0003c4  9f340000  addli r9, zero, 3
0003c8  810b0000  ds_cfg r23, zero, 0
0003cc  01040002  ds_cfg r8, zero, 1
0003d0  0104001c  ds_cfg r8, zero, 14
0003d4  0104001a  ds_cfg r8, zero, 13
0003d8  211d8d02  shuffle_batch r26, r26, r8, 1
0003dc  1d100000  unlock zero
0003e0  7d800400  xsignal r9, 0
0003e4  7d800500  xsignal r11, 0
0003e8  5b0c0000  j 96
0003ec  eb540fff  load.d r[10:11], -16(r30)
0003f0  97049702  and.d r[10:11], r[15:16], r[10:11]
0003f4  8b349718  sub.sl r[10:11], r[15:16], r[10:11]
0003f8  eb590f00  load.d r[20:21], 0(r30)
0003fc  1f380000  addli r16, zero, 3
000400  97d4c402  sra.d r[10:11], r[10:11], r12
000404  7d100800  xwait r16, 0
000408  1d800500  lock zero, r11
00040c  1bb8f000  slli r16, r1, 15
000410  15000000  dma_cfg zero, zero, zero, 0
000414  0bb73440  min.sl r[15:16], r[10:11], r[4:5]
000418  8b349718  sub.sl r[10:11], r[15:16], r[10:11]
00041c  1f671000  addli r14, zero, 14
000420  17b7ea02  sll.d r[15:16], r[22:23], r14
000424  9f848400  addli r9, r9, 64
000428  1f050002  addli r10, zero, 256
00042c  0ba7e910  add.ul r[15:16], r[20:21], r[15:16]
000430  15800704  dma_cfg zero, r15, zero, 2
000434  150da706  dma_cfg r26, r14, r10, 3
000438  15059508  dma_cfg r10, r10, r9, 4
00043c  35000000  dma_run zero
000440  1d900500  unlock r11
000444  7d800b00  xsignal r23, 0
000448  9bb47c00  slli r9, r25, 7
00044c  1f050007  addli r10, zero, 896
000450  b3090e28  zext_int2long r[20:21], r28
000454  9bbc9000  slli r25, r1, 9
000458  33070528  zext_int2long r[15:16], r10
00045c  b3840428  zext_int2long r[10:11], r9
000460  0ba7e440  min.ul r[15:16], r[10:11], r[15:16]
000464  27070701  addli.d r[15:16], r[15:16], 128
000468  0b279748  max.ul r[15:16], r[15:16], r[10:11]
00046c  8b349718  sub.sl r[10:11], r[15:16], r[10:11]
000470  0ba73441  min.ul r[15:16], r[10:11], r[20:21]
000474  ab040300  lui r9, 48
000478  8b999c10  add.s r19, r25, r9
00047c  b729c1fe  beq r2, r12, -408
000480  9bbcf000  slli r25, r1, 15
000484  9b900480  ori r1, r9, 2048
000488  8b901c10  add.s r1, r25, r1
00048c  3b03b100  bneq r2, r11, 192
000490  9f060000  addli r13, zero, 0
000494  9f110000  addli r3, zero, 1
000498  1f120000  addli r4, zero, 1
00049c  9f641000  addli r9, zero, 14
0004a0  7d900500  xwait r11, 0
0004a4  7d900200  xwait r5, 0
0004a8  7d900400  xwait r9, 0
0004ac  9bb4e600  slli r9, r13, 14
0004b0  1bb58600  slli r10, r13, 8
0004b4  1d800100  lock zero, r3
0004b8  9f160000  addli r13, zero, 1
0004bc  09048400  mm_cfg r8, r8, r8, 0
0004c0  97940401  or r9, r9, r16
0004c4  17151500  or r10, r10, r1
0004c8  89853504  mm_cfg r11, r11, r3, 2
0004cc  29059d10  mm r10, r26, r9, 8
0004d0  9b041200  andi r9, r4, 1
0004d4  1f020000  addli r4, zero, 0
0004d8  1d900100  unlock r3
0004dc  3bcf04fe  bneq r9, zero, -48
0004e0  9f500000  addli r1, zero, 5
0004e4  7d800000  xsignal r1, 0
0004e8  9f101000  addli r1, zero, 9
0004ec  7d800000  xsignal r1, 0
0004f0  9f401000  addli r1, zero, 12
0004f4  5bc6ffff  j -464
0004f8  1bb8f000  slli r16, r1, 15
0004fc  ab040100  lui r9, 16
000500  0b179810  add.s r14, r16, r9
000504  b729f100  beq r2, r15, 616
000508  9f140000  addli r9, zero, 1
00050c  bb7c91fe  bneq r2, r9, -196
000510  eb598f00  load.d r[20:21], 8(r30)
000514  97b47803  sll.d r[10:11], r[18:19], r23
000518  7d900700  xwait r15, 0
00051c  1d800500  lock zero, r11
000520  9f070004  addli r15, zero, 512
000524  15000000  dma_cfg zero, zero, zero, 0
000528  8ba49910  add.ul r[10:11], r[20:21], r[10:11]
00052c  15000504  dma_cfg zero, r10, zero, 2
000530  1587f406  dma_cfg r14, r9, r15, 3
000534  9f040020  addli r9, zero, 4096
000538  95878408  dma_cfg r15, r9, r8, 4
00053c  35000000  dma_run zero
000540  1d900500  unlock r11
000544  7d000600  xsignal r12, 0
000548  5be0ffff  j -256
00054c  9f540000  addli r9, zero, 5
000550  3b769100  bneq r2, r9, 412
000554  1f221000  addli r4, zero, 10
000558  9f010000  addli r3, zero, 0
00055c  7d100200  xwait r4, 0
000560  1f421000  addli r4, zero, 12
000564  7d100200  xwait r4, 0
000568  1d800b00  lock zero, r23
00056c  2b02803f  lui r4, 260096
000570  0d000002  ew_cfg zero, zero, zero, 1
000574  0d120200  ewcoeff_cfg r4, r4, zero, 0
000578  1f72f000  addli r4, zero, 127
00057c  0d000204  ew_cfg zero, r4, zero, 2
000580  1f120000  addli r4, zero, 1
000584  0d020006  ew_cfg r4, zero, zero, 3
000588  0b923010  add.s r4, r1, r3
00058c  9f810104  addli r3, r3, 512
000590  2d023201  dsmadd r4, r4, r19, 0
000594  bbdfb1ff  bneq r3, r27, -12
000598  9f311000  addli r3, zero, 11
00059c  9f771000  addli r15, zero, 15
0005a0  1d900b00  unlock r23
0005a4  2b07803f  lui r14, 260096
0005a8  1f082000  addli r16, zero, 16
0005ac  7d800100  xsignal r3, 0
0005b0  e341dfff  loadli.w r3,  -20(r30)
0005b4  7d900700  xwait r15, 0
0005b8  1d800b00  lock zero, r23
0005bc  0d000002  ew_cfg zero, zero, zero, 1
0005c0  0d10e000  ewcoeff_cfg zero, zero, r14, 0
0005c4  eb540fff  load.d r[10:11], -16(r30)
0005c8  8b913c10  add.s r3, r25, r3
0005cc  0d000504  ew_cfg zero, r10, zero, 2
0005d0  8d050006  ew_cfg r11, zero, zero, 3
0005d4  8d85b526  ew_cfg r11, r11, r11, 19
0005d8  ad911000  dsmul r3, r1, r1, 0
0005dc  0d000026  ew_cfg zero, zero, zero, 19
0005e0  1d900b00  unlock r23
0005e4  1d800b00  lock zero, r23
0005e8  0d000002  ew_cfg zero, zero, zero, 1
0005ec  0d10e000  ewcoeff_cfg zero, zero, r14, 0
0005f0  0d000504  ew_cfg zero, r10, zero, 2
0005f4  8d050006  ew_cfg r11, zero, zero, 3
0005f8  8d85b526  ew_cfg r11, r11, r11, 19
0005fc  ad911100  dsmul r3, r3, r1, 0
000600  0d000026  ew_cfg zero, zero, zero, 19
000604  1d900b00  unlock r23
000608  6302dfff  loadli.w r4,  -24(r30)
00060c  7d100800  xwait r16, 0
000610  1d800b00  lock zero, r23
000614  0d000002  ew_cfg zero, zero, zero, 1
000618  e346cfff  loadli.w r13,  -28(r30)
00061c  0b924c10  add.s r4, r25, r4
000620  0d970600  ewcoeff_cfg r14, r13, zero, 0
000624  0d000504  ew_cfg zero, r10, zero, 2
000628  8d050006  ew_cfg r11, zero, zero, 3
00062c  8d85b526  ew_cfg r11, r11, r11, 19
000630  2d823000  dsmadd r4, r1, r3, 0
000634  0d000026  ew_cfg zero, zero, zero, 19
000638  1d900b00  unlock r23
00063c  7d800700  xsignal r15, 0
000640  1d800b00  lock zero, r23
000644  0d000002  ew_cfg zero, zero, zero, 1
000648  e301cfff  loadli.w r3,  -32(r30)
00064c  8d110000  ewcoeff_cfg r3, zero, zero, 0
000650  9f310000  addli r3, zero, 3
000654  8d010014  ew_cfg r3, zero, zero, 10
000658  9f110000  addli r3, zero, 1
00065c  e346bfff  loadli.w r13,  -36(r30)
000660  8d8bd116  ew_cfg r23, r3, r13, 11
000664  abc17f41  lui r3, 268284
000668  0d00001a  ew_cfg zero, zero, zero, 13
00066c  0d80351c  ew_cfg zero, r11, r3, 14
000670  ab01003f  lui r3, 258048
000674  0d00001e  ew_cfg zero, zero, zero, 15
000678  0d000504  ew_cfg zero, r10, zero, 2
00067c  8d050006  ew_cfg r11, zero, zero, 3
000680  8d850526  ew_cfg r11, r11, zero, 19
000684  2d024200  dsmadd r4, r4, r4, 0
000688  0d000026  ew_cfg zero, zero, zero, 19
00068c  0d000014  ew_cfg zero, zero, zero, 10
000690  1d900b00  unlock r23
000694  1d800b00  lock zero, r23
000698  0d000002  ew_cfg zero, zero, zero, 1
00069c  0d17e000  ewcoeff_cfg r14, zero, r14, 0
0006a0  0d000504  ew_cfg zero, r10, zero, 2
0006a4  8d050006  ew_cfg r11, zero, zero, 3
0006a8  8d850526  ew_cfg r11, r11, zero, 19
0006ac  2d024200  dsmadd r4, r4, r4, 0
0006b0  0d000026  ew_cfg zero, zero, zero, 19
0006b4  1d900b00  unlock r23
0006b8  1d800b00  lock zero, r23
0006bc  0d000002  ew_cfg zero, zero, zero, 1
0006c0  0d103000  ewcoeff_cfg zero, zero, r3, 0
0006c4  0d000504  ew_cfg zero, r10, zero, 2
0006c8  8d050006  ew_cfg r11, zero, zero, 3
0006cc  8d85b526  ew_cfg r11, r11, r11, 19
0006d0  ad904000  dsmul r1, r1, r4, 0
0006d4  9f501000  addli r1, zero, 13
0006d8  0d000026  ew_cfg zero, zero, zero, 19
0006dc  1d900b00  unlock r23
0006e0  7d800000  xsignal r1, 0
0006e4  7d000800  xsignal r16, 0
0006e8  5b88ffff  j -960
0006ec  bb7001fe  bneq r2, zero, -964
0006f0  9bb46600  slli r9, r13, 6
0006f4  9f262000  addli r13, zero, 18
0006f8  17b87803  sll.d r[17:18], r[18:19], r23
0006fc  b3940428  sext_int2long r[10:11], r9
000700  97b9da02  sll.d r[20:21], r[22:23], r13
000704  eb5a8f01  load.d r[22:23], 24(r30)
000708  9f561000  addli r13, zero, 13
00070c  8bb13440  min.sl r[4:5], r[10:11], r[4:5]
000710  7d900600  xwait r13, 0
000714  0ba93a11  add.ul r[19:20], r[22:23], r[20:21]
000718  a7818100  addli.d r[4:5], r[4:5], 64
00071c  0b280911  add.ul r[17:18], r[19:20], r[17:18]
000720  8bb19148  max.sl r[4:5], r[4:5], r[10:11]
000724  8bb19118  sub.sl r[4:5], r[4:5], r[10:11]
000728  b3040428  zext_int2long r[10:11], r8
00072c  8bb19140  min.sl r[4:5], r[4:5], r[10:11]
000730  1f550000  addli r10, zero, 5
000734  9f140000  addli r9, zero, 1
000738  1d000500  lock zero, r10
00073c  15000000  dma_cfg zero, zero, zero, 0
000740  15800402  dma_cfg zero, r9, zero, 1
000744  9b342700  slli r9, r14, 2
000748  95080004  dma_cfg r17, zero, zero, 2
00074c  15889006  dma_cfg r16, r1, r9, 3
000750  9f000004  addli r1, zero, 512
000754  9f040020  addli r9, zero, 4096
000758  95843008  dma_cfg r9, r1, r3, 4
00075c  9f601000  addli r1, zero, 14
000760  35000000  dma_run zero
000764  1d100500  unlock r10
000768  db77ffff  j -1092
00076c  9f141000  addli r9, zero, 9
000770  7d100600  xwait r12, 0
000774  1f0e0001  addli r28, zero, 128
000778  7d900400  xwait r9, 0
00077c  1d000000  lock zero, zero
000780  9f040001  addli r9, zero, 128
000784  810b0000  ds_cfg r23, zero, 0
000788  81040002  ds_cfg r9, zero, 1
00078c  0104001c  ds_cfg r8, zero, 14
000790  8104001a  ds_cfg r9, zero, 13
000794  41088704  shuffle_coa r16, r14, r8, 2
000798  1d100000  unlock zero
00079c  7d800700  xsignal r15, 0
0007a0  7d800200  xsignal r5, 0
0007a4  db94ffff  j -860
0007a8  7d000000  xsignal zero, 0
0007ac  bb600100  bneq r2, zero, 56
0007b0  9f200000  addli r1, zero, 2
0007b4  7d100000  xwait zero, 0
0007b8  7d100000  xwait zero, 0
0007bc  7d100000  xwait zero, 0
0007c0  7d100000  xwait zero, 0
0007c4  7d100000  xwait zero, 0
0007c8  7d100000  xwait zero, 0
0007cc  7d100000  xwait zero, 0
0007d0  7d100000  xwait zero, 0
0007d4  1d800000  lock zero, r1
0007d8  0d000020  ew_cfg zero, zero, zero, 16
0007dc  1d900000  unlock r1
0007e0  7d400000  xsignal_mode_cfg zero
0007e4  9f8e5e00  addli sp, sp, 40
0007e8  00a00300  mfence { lm, sm, gm }
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
000a28  00100000  exit
000a2c  00100000  exit
