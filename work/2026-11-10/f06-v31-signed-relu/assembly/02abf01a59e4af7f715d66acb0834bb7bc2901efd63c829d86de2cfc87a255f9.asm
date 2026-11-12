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
0000b4  9f8e4eff  addli sp, sp, -96
0000b8  9f100000  addli r1, zero, 1
0000bc  00310002  core_id r2
0000c0  1f8f4e00  addli r30, sp, 32
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
000284  cbd31102  ble.s r3, r1, 1268
000288  33930028  sext_int2long r[7:8], r1
00028c  ab400600  lui r1, 100
000290  b3910128  sext_int2long r[4:5], r3
000294  1f048000  addli r8, zero, 64
000298  9f140000  addli r9, zero, 1
00029c  1f560000  addli r12, zero, 5
0002a0  9f470000  addli r15, zero, 4
0002a4  9f280000  addli r17, zero, 2
0002a8  1f080001  addli r16, zero, 128
0002ac  2bca0300  lui r20, 60
0002b0  ab8c0000  lui r25, 8
0002b4  1f0c0000  addli r24, zero, 0
0002b8  9b9000a0  ori r1, r1, 2560
0002bc  733c3ffe  store.d r[4:5], -8(r30)
0002c0  abc10800  lui r3, 140
0002c4  674f1ffe  storeli.w r1, -12(r30)
0002c8  ab800d00  lui r1, 216
0002cc  9b90d0b4  ori r1, r1, 2893
0002d0  670f1ffe  storeli.w r1, -16(r30)
0002d4  9b9001a0  ori r1, r3, 2560
0002d8  abf17f7f  lui r3, 522239
0002dc  e74e1ffe  storeli.w r1, -20(r30)
0002e0  abf07fff  lui r1, 1046527
0002e4  9b90f0ff  ori r1, r1, 4095
0002e8  e70e1ffe  storeli.w r1, -24(r30)
0002ec  9b90f1ff  ori r1, r3, 4095
0002f0  674e1ffe  storeli.w r1, -28(r30)
0002f4  e3006f00  loadli.w r1,  48(r30)
0002f8  e3415f00  loadli.w r3,  44(r30)
0002fc  1f021000  addli r4, zero, 8
000300  0b1ecc38  mod.s r28, r24, r12
000304  8b101330  div.s r1, r6, r1
000308  1b3dee00  slli r26, r28, 14
00030c  8b903030  div.s r1, r1, r3
000310  8b918030  div.s r3, r1, r8
000314  9bb63100  slli r13, r3, 3
000318  9bb16100  slli r3, r3, 6
00031c  0b97d418  sub.s r14, r9, r13
000320  8b913018  sub.s r3, r1, r3
000324  0b174740  min.s r14, r14, r4
000328  8b90e038  mod.s r1, r1, r14
00032c  8b91e130  div.s r3, r3, r14
000330  8b9d1610  add.s r27, r13, r1
000334  33890128  zext_int2long r[19:20], r3
000338  9f700000  addli r1, zero, 7
00033c  b3860d28  zext_int2long r[14:15], r27
000340  973a1902  sll.d r[22:23], r[19:20], r1
000344  3b219100  bneq r2, r9, 72
000348  9f601000  addli r1, zero, 14
00034c  6b520f00  load.d r[5:6], 0(r30)
000350  17b91602  sll.d r[19:20], r[14:15], r1
000354  9f300000  addli r1, zero, 3
000358  7d900000  xwait r1, 0
00035c  1d800700  lock zero, r15
000360  0b292211  add.ul r[19:20], r[5:6], r[19:20]
000364  9f000002  addli r1, zero, 256
000368  15000000  dma_cfg zero, zero, zero, 0
00036c  15800904  dma_cfg zero, r19, zero, 2
000370  150d1906  dma_cfg r26, r18, r1, 3
000374  95808008  dma_cfg r1, r1, r8, 4
000378  35000000  dma_run zero
00037c  1d900700  unlock r15
000380  7d800800  xsignal r17, 0
000384  9b30fe00  slli r1, r28, 15
000388  5b1c0000  j 224
00038c  bb701101  bneq r2, r17, 60
000390  7d900800  xwait r17, 0
000394  7d100600  xwait r12, 0
000398  1d000000  lock zero, zero
00039c  9f300000  addli r1, zero, 3
0003a0  81080000  ds_cfg r17, zero, 0
0003a4  01040002  ds_cfg r8, zero, 1
0003a8  0104001c  ds_cfg r8, zero, 14
0003ac  0104001a  ds_cfg r8, zero, 13
0003b0  211d8d02  shuffle_batch r26, r26, r8, 1
0003b4  1d100000  unlock zero
0003b8  7d800000  xsignal r1, 0
0003bc  7d800700  xsignal r15, 0
0003c0  9b30fe00  slli r1, r28, 15
0003c4  db140000  j 164
0003c8  9b30fe00  slli r1, r28, 15
0003cc  2b420100  lui r4, 20
0003d0  0b994010  add.s r18, r1, r4
0003d4  1f720000  addli r4, zero, 7
0003d8  37314100  beq r2, r4, 76
0003dc  9f690000  addli r19, zero, 6
0003e0  3b223101  bneq r2, r19, 136
0003e4  1f720000  addli r4, zero, 7
0003e8  17b51a03  sll.d r[11:12], r[22:23], r17
0003ec  7d100200  xwait r4, 0
0003f0  6b528f00  load.d r[5:6], 8(r30)
0003f4  1d800700  lock zero, r15
0003f8  15000000  dma_cfg zero, zero, zero, 0
0003fc  0b25a210  add.ul r[11:12], r[5:6], r[11:12]
000400  1f020004  addli r4, zero, 512
000404  9f020020  addli r5, zero, 4096
000408  15800504  dma_cfg zero, r11, zero, 2
00040c  15094506  dma_cfg r18, r10, r4, 3
000410  15828208  dma_cfg r4, r5, r8, 4
000414  35000000  dma_run zero
000418  1d900700  unlock r15
00041c  7d800900  xsignal r19, 0
000420  5b090000  j 72
000424  1f620000  addli r4, zero, 6
000428  1f080001  addli r16, zero, 128
00042c  7d100200  xwait r4, 0
000430  1f121000  addli r4, zero, 9
000434  7d100200  xwait r4, 0
000438  1d000000  lock zero, zero
00043c  1f020001  addli r4, zero, 128
000440  81080000  ds_cfg r17, zero, 0
000444  01020002  ds_cfg r4, zero, 1
000448  0104001c  ds_cfg r8, zero, 14
00044c  0102001a  ds_cfg r4, zero, 13
000450  1f720000  addli r4, zero, 7
000454  c1008904  shuffle_coa r1, r18, r8, 2
000458  1d100000  unlock zero
00045c  7d000200  xsignal r4, 0
000460  1f021000  addli r4, zero, 8
000464  7d000200  xsignal r4, 0
000468  9bb17100  slli r3, r3, 7
00046c  1f020007  addli r4, zero, 896
000470  9b329e00  slli r5, r28, 9
000474  33050228  zext_int2long r[11:12], r4
000478  33890128  zext_int2long r[19:20], r3
00047c  b3010828  zext_int2long r[4:5], r16
000480  8b9b4211  add.s r23, r5, r20
000484  0b25a940  min.ul r[11:12], r[19:20], r[11:12]
000488  27050501  addli.d r[11:12], r[11:12], 128
00048c  0b252549  max.ul r[11:12], r[11:12], r[19:20]
000490  0b352519  sub.sl r[11:12], r[11:12], r[19:20]
000494  0b293540  min.ul r[19:20], r[11:12], r[4:5]
000498  3b119100  bneq r2, r9, 68
00049c  6b550f01  load.d r[11:12], 16(r30)
0004a0  97b11a03  sll.d r[4:5], r[22:23], r17
0004a4  9f301000  addli r1, zero, 11
0004a8  7d900000  xwait r1, 0
0004ac  1d800700  lock zero, r15
0004b0  9b302900  slli r1, r18, 2
0004b4  8b213510  add.ul r[4:5], r[11:12], r[4:5]
0004b8  15000000  dma_cfg zero, zero, zero, 0
0004bc  15000204  dma_cfg zero, r4, zero, 2
0004c0  958b1106  dma_cfg r23, r3, r1, 3
0004c4  9f000004  addli r1, zero, 512
0004c8  95809008  dma_cfg r1, r1, r9, 4
0004cc  35000000  dma_run zero
0004d0  1d900700  unlock r15
0004d4  9f201000  addli r1, zero, 10
0004d8  5b510000  j 648
0004dc  9b31fe00  slli r3, r28, 15
0004e0  1b120aa0  ori r4, r20, 2560
0004e4  0b9e4110  add.s r28, r3, r4
0004e8  bb31f100  bneq r2, r15, 108
0004ec  9f011000  addli r3, zero, 8
0004f0  7d900700  xwait r15, 0
0004f4  1f070000  addli r14, zero, 0
0004f8  9f160000  addli r13, zero, 1
0004fc  1f521000  addli r4, zero, 13
000500  7d900100  xwait r3, 0
000504  9f110000  addli r3, zero, 1
000508  7d100200  xwait r4, 0
00050c  1b32e700  slli r4, r14, 14
000510  9b328700  slli r5, r14, 8
000514  1d800100  lock zero, r3
000518  1f170000  addli r14, zero, 1
00051c  09048400  mm_cfg r8, r8, r8, 0
000520  17121200  or r4, r4, r1
000524  9792c201  or r5, r5, r28
000528  89873704  mm_cfg r15, r15, r3, 2
00052c  a9024d10  mm r5, r26, r4, 8
000530  1b821600  andi r4, r13, 1
000534  9f060000  addli r13, zero, 0
000538  1d900100  unlock r3
00053c  3b4f02fe  bneq r4, zero, -48
000540  9f101000  addli r1, zero, 9
000544  7d000600  xsignal r12, 0
000548  7d800000  xsignal r1, 0
00054c  9f401000  addli r1, zero, 12
000550  5b420000  j 528
000554  3b36c100  bneq r2, r12, 396
000558  1f221000  addli r4, zero, 10
00055c  2b05803f  lui r10, 260096
000560  9f75f000  addli r11, zero, 127
000564  9f000000  addli r1, zero, 0
000568  7d100200  xwait r4, 0
00056c  1f421000  addli r4, zero, 12
000570  7d100200  xwait r4, 0
000574  1d800800  lock zero, r17
000578  0d000002  ew_cfg zero, zero, zero, 1
00057c  0d150500  ewcoeff_cfg r10, r10, zero, 0
000580  0d800504  ew_cfg zero, r11, zero, 2
000584  8d040006  ew_cfg r9, zero, zero, 3
000588  0b121e10  add.s r4, r28, r1
00058c  9f800004  addli r1, r1, 512
000590  2d027201  dsmadd r4, r4, r23, 0
000594  bbdf90ff  bneq r1, r25, -12
000598  9f301000  addli r1, zero, 11
00059c  1f721000  addli r4, zero, 15
0005a0  1d900800  unlock r17
0005a4  ab0200c1  lui r5, 790528
0005a8  9f060000  addli r13, zero, 0
0005ac  7d800000  xsignal r1, 0
0005b0  e340efff  loadli.w r1,  -12(r30)
0005b4  7d100200  xwait r4, 0
0005b8  1d800800  lock zero, r17
0005bc  1f72f00f  addli r4, zero, 2047
0005c0  0d000002  ew_cfg zero, zero, zero, 1
0005c4  0d000204  ew_cfg zero, r4, zero, 2
0005c8  1f521000  addli r4, zero, 13
0005cc  8d070006  ew_cfg r15, zero, zero, 3
0005d0  8b901110  add.s r1, r3, r1
0005d4  8d870726  ew_cfg r15, r15, zero, 19
0005d8  0d020014  ew_cfg r4, zero, zero, 10
0005dc  6302efff  loadli.w r4,  -16(r30)
0005e0  8d884416  ew_cfg r17, r9, r4, 11
0005e4  1f320000  addli r4, zero, 3
0005e8  0d00401a  ew_cfg zero, zero, r4, 13
0005ec  2b82ff40  lui r4, 266232
0005f0  8d82471c  ew_cfg r5, r15, r4, 14
0005f4  0d00051e  ew_cfg zero, r10, zero, 15
0005f8  cd200e00  sslut r1, r28, 0
0005fc  0d000014  ew_cfg zero, zero, zero, 10
000600  0d000026  ew_cfg zero, zero, zero, 19
000604  1d900800  unlock r17
000608  6342dfff  loadli.w r4,  -20(r30)
00060c  8b914110  add.s r3, r3, r4
000610  1f022000  addli r4, zero, 16
000614  7d100200  xwait r4, 0
000618  1d800800  lock zero, r17
00061c  0d000002  ew_cfg zero, zero, zero, 1
000620  0d800504  ew_cfg zero, r11, zero, 2
000624  8d040006  ew_cfg r9, zero, zero, 3
000628  6302dfff  loadli.w r4,  -24(r30)
00062c  0d120000  ewcoeff_cfg r4, zero, zero, 0
000630  0b92d110  add.s r4, r3, r13
000634  8b12de10  add.s r5, r28, r13
000638  9f860604  addli r13, r13, 512
00063c  2da25200  dscmpnsel r4, r5, r5, 0
000640  bbcf96ff  bneq r13, r25, -16
000644  1d900800  unlock r17
000648  9f060000  addli r13, zero, 0
00064c  1d800800  lock zero, r17
000650  0d000002  ew_cfg zero, zero, zero, 1
000654  0d800504  ew_cfg zero, r11, zero, 2
000658  8d040006  ew_cfg r9, zero, zero, 3
00065c  6342cfff  loadli.w r4,  -28(r30)
000660  0d120000  ewcoeff_cfg r4, zero, zero, 0
000664  0b92d110  add.s r4, r3, r13
000668  9f860604  addli r13, r13, 512
00066c  2d224208  dscmpnsel r4, r4, r4, 4
000670  bbdf96ff  bneq r13, r25, -12
000674  1d900800  unlock r17
000678  2b0280bf  lui r4, 784384
00067c  1d800800  lock zero, r17
000680  0d000002  ew_cfg zero, zero, zero, 1
000684  0d150200  ewcoeff_cfg r10, r4, zero, 0
000688  1f72f00f  addli r4, zero, 2047
00068c  0d000204  ew_cfg zero, r4, zero, 2
000690  8d070006  ew_cfg r15, zero, zero, 3
000694  8d87f726  ew_cfg r15, r15, r15, 19
000698  2d0e3e00  dsmadd r28, r28, r3, 0
00069c  9f012000  addli r3, zero, 16
0006a0  0d000026  ew_cfg zero, zero, zero, 19
0006a4  1d900800  unlock r17
0006a8  7d800100  xsignal r3, 0
0006ac  1d800800  lock zero, r17
0006b0  0d000002  ew_cfg zero, zero, zero, 1
0006b4  0d150500  ewcoeff_cfg r10, r10, zero, 0
0006b8  0d000204  ew_cfg zero, r4, zero, 2
0006bc  8d070006  ew_cfg r15, zero, zero, 3
0006c0  8d87f726  ew_cfg r15, r15, r15, 19
0006c4  ad80c001  dsmadd r1, r1, r28, 0
0006c8  9f501000  addli r1, zero, 13
0006cc  0d000026  ew_cfg zero, zero, zero, 19
0006d0  1d900800  unlock r17
0006d4  7d800000  xsignal r1, 0
0006d8  9f601000  addli r1, zero, 14
0006dc  db100000  j 132
0006e0  3b120100  bneq r2, zero, 132
0006e4  9bb06d00  slli r1, r27, 6
0006e8  33020028  zext_int2long r[5:6], zero
0006ec  6b5d8f01  load.d r[27:28], 24(r30)
0006f0  97ba1a03  sll.d r[22:23], r[22:23], r17
0006f4  33950028  sext_int2long r[11:12], r1
0006f8  e340efff  loadli.w r1,  -12(r30)
0006fc  0b324540  min.sl r[5:6], r[11:12], r[5:6]
000700  8b901110  add.s r1, r3, r1
000704  27028200  addli.d r[5:6], r[5:6], 64
000708  0b32a248  max.sl r[5:6], r[5:6], r[11:12]
00070c  8b31a218  sub.sl r[4:5], r[5:6], r[11:12]
000710  9f222000  addli r5, zero, 18
000714  33050428  zext_int2long r[11:12], r8
000718  97b65602  sll.d r[14:15], r[14:15], r5
00071c  9f621000  addli r5, zero, 14
000720  8bb1a140  min.sl r[4:5], r[4:5], r[11:12]
000724  8b26dd10  add.ul r[14:15], r[27:28], r[14:15]
000728  7d900200  xwait r5, 0
00072c  1d000600  lock zero, r12
000730  9b322900  slli r5, r18, 2
000734  15000000  dma_cfg zero, zero, zero, 0
000738  0ba55611  add.ul r[11:12], r[14:15], r[22:23]
00073c  15800402  dma_cfg zero, r9, zero, 1
000740  95050004  dma_cfg r11, zero, zero, 2
000744  15855006  dma_cfg r10, r1, r5, 3
000748  9f000004  addli r1, zero, 512
00074c  9f020020  addli r5, zero, 4096
000750  95823008  dma_cfg r5, r1, r3, 4
000754  9f701000  addli r1, zero, 15
000758  35000000  dma_run zero
00075c  1d100600  unlock r12
000760  7d800000  xsignal r1, 0
000764  eb518fff  load.d r[4:5], -8(r30)
000768  27130300  addli.d r[7:8], r[7:8], 1
00076c  1f1c0c00  addli r24, r24, 1
000770  93303304  setlt.sl r1, r[7:8], r[4:5]
000774  3b8e00fc  bneq r1, zero, -1152
000778  7d000000  xsignal zero, 0
00077c  bb600100  bneq r2, zero, 56
000780  9f200000  addli r1, zero, 2
000784  7d100000  xwait zero, 0
000788  7d100000  xwait zero, 0
00078c  7d100000  xwait zero, 0
000790  7d100000  xwait zero, 0
000794  7d100000  xwait zero, 0
000798  7d100000  xwait zero, 0
00079c  7d100000  xwait zero, 0
0007a0  7d100000  xwait zero, 0
0007a4  1d800000  lock zero, r1
0007a8  0d000020  ew_cfg zero, zero, zero, 16
0007ac  1d900000  unlock r1
0007b0  7d400000  xsignal_mode_cfg zero
0007b4  9f8e4e00  addli sp, sp, 32
0007b8  00a00300  mfence { lm, sm, gm }
0007bc  00100000  exit
0007c0  00100000  exit
0007c4  00100000  exit
0007c8  00100000  exit
0007cc  00100000  exit
0007d0  00100000  exit
0007d4  00100000  exit
0007d8  00100000  exit
0007dc  00100000  exit
0007e0  00100000  exit
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
