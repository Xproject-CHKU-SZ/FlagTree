; SHA-256 6d2852bac8ced9c0cc55769a616c00be8f5a0454b1e2f717cd633e317eac3c57
; P800 SDNN · XTDK LLVM 19 · 853 / 853 words decoded
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
0000bc  00390002  core_id r18
0000c0  1f8f1e01  addli r30, sp, 136
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600900  beq r18, zero, 24
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
000214  cb621104  ble.s r2, r1, 2232
000218  e3034f00  loadli.w r7,  32(r30)
00021c  33140128  sext_int2long r[9:10], r2
000220  63025f00  loadli.w r4,  40(r30)
000224  e3414f00  loadli.w r3,  36(r30)
000228  1f0a0000  addli r20, zero, 0
00022c  9f020000  addli r5, zero, 0
000230  9f0a0000  addli r21, zero, 0
000234  9f260000  addli r13, zero, 2
000238  9f0c0000  addli r25, zero, 0
00023c  73388ff8  store.d r[9:10], -112(r30)
000240  33940028  sext_int2long r[9:10], r1
000244  b3900328  sext_int2long r[2:3], r7
000248  33950128  sext_int2long r[11:12], r3
00024c  9f430000  addli r7, zero, 4
000250  1f0d0200  addli r26, r4, 0
000254  73341ff8  store.d r[2:3], -120(r30)
000258  9b302200  slli r1, r4, 2
00025c  2b011400  lui r2, 320
000260  7334affe  store.d r[11:12], -24(r30)
000264  674c1ffe  storeli.w r1, -60(r30)
000268  9bb02100  slli r1, r3, 2
00026c  674d1ffe  storeli.w r1, -44(r30)
000270  ab001000  lui r1, 256
000274  9b900040  ori r1, r1, 1024
000278  e74f1ffe  storeli.w r1, -4(r30)
00027c  9b100140  ori r1, r2, 1024
000280  e70f1ffe  storeli.w r1, -8(r30)
000284  b3100228  sext_int2long r[2:3], r4
000288  73301ff8  store.d r[2:3], -128(r30)
00028c  db040000  j 36
000290  9f401000  addli r1, zero, 12
000294  9f260000  addli r13, zero, 2
000298  7d800000  xsignal r1, 0
00029c  6b548ffb  load.d r[9:10], -72(r30)
0002a0  eb500ff9  load.d r[2:3], -112(r30)
0002a4  27140400  addli.d r[9:10], r[9:10], 1
0002a8  93301404  setlt.sl r1, r[9:10], r[2:3]
0002ac  b7800004  beq r1, zero, 2080
0002b0  1f120000  addli r4, zero, 1
0002b4  3b307900  bneq r18, r7, 12
0002b8  9f501000  addli r1, zero, 13
0002bc  7d900000  xwait r1, 0
0002c0  e3406f00  loadli.w r1,  52(r30)
0002c4  63016f00  loadli.w r2,  48(r30)
0002c8  733c8ffa  store.d r[9:10], -72(r30)
0002cc  9f098000  addli r19, zero, 64
0002d0  8b101430  div.s r1, r8, r1
0002d4  9f010100  addli r3, r2, 0
0002d8  0b913030  div.s r2, r1, r3
0002dc  8b903038  mod.s r1, r1, r3
0002e0  1b338100  slli r6, r2, 8
0002e4  9bb38000  slli r7, r1, 8
0002e8  33940028  sext_int2long r[9:10], r1
0002ec  33110128  sext_int2long r[3:4], r2
0002f0  9f001000  addli r1, zero, 8
0002f4  17351102  sll.d r[11:12], r[3:4], r1
0002f8  97301402  sll.d r[2:3], r[9:10], r1
0002fc  33980328  sext_int2long r[17:18], r7
000300  1f041000  addli r8, zero, 8
000304  e7496ffe  storeli.w r6, -100(r30)
000308  17bbd002  sll.d r[23:24], r[2:3], r13
00030c  9f70f001  addli r1, zero, 255
000310  7330affa  store.d r[11:12], -96(r30)
000314  73380ffb  store.d r[17:18], -80(r30)
000318  b3800028  zext_int2long r[2:3], r1
00031c  73346ffb  store.d r[23:24], -88(r30)
000320  73381ffe  store.d r[2:3], -16(r30)
000324  3f4d4d00  blt.s r26, r4, 848
000328  eb510ff8  load.d r[4:5], -128(r30)
00032c  b3100328  sext_int2long r[2:3], r6
000330  6343afff  loadli.w r6,  -44(r30)
000334  9f070000  addli r15, zero, 0
000338  1f270000  addli r14, zero, 2
00033c  a7830002  addli.d r[8:9], r[2:3], 256
000340  8b343520  mul.sl r[10:11], r[11:12], r[4:5]
000344  eb518ff8  load.d r[4:5], -120(r30)
000348  a7050802  addli.d r[12:13], r[17:18], 256
00034c  8bb33340  min.sl r[8:9], r[8:9], r[4:5]
000350  eb518ffe  load.d r[4:5], -24(r30)
000354  8bb31348  max.sl r[8:9], r[8:9], r[2:3]
000358  8bb53540  min.sl r[12:13], r[12:13], r[4:5]
00035c  a7010800  addli.d r[4:5], r[17:18], 0
000360  0bb81318  sub.sl r[17:18], r[8:9], r[2:3]
000364  eb508f00  load.d r[2:3], 8(r30)
000368  97b3d402  sll.d r[8:9], r[10:11], r13
00036c  8ba06011  add.ul r[2:3], r[2:3], r[23:24]
000370  73301ffe  store.d r[2:3], -32(r30)
000374  8bb03548  max.sl r[2:3], r[12:13], r[4:5]
000378  9f050008  addli r11, zero, 1024
00037c  1f760000  addli r12, zero, 7
000380  8bbb3018  sub.sl r[24:25], r[2:3], r[4:5]
000384  eb500f00  load.d r[2:3], 0(r30)
000388  1f422000  addli r4, zero, 20
00038c  8ba07010  add.ul r[2:3], r[2:3], r[8:9]
000390  1f041000  addli r8, zero, 8
000394  9f430000  addli r7, zero, 4
000398  73341ffc  store.d r[2:3], -56(r30)
00039c  9bb02b00  slli r1, r23, 2
0003a0  e70d1ffe  storeli.w r1, -40(r30)
0003a4  9f000000  addli r1, zero, 0
0003a8  5b0e0000  j 112
0003ac  6b518ffe  load.d r[3:4], -24(r30)
0003b0  7d000600  xsignal r12, 0
0003b4  7d100600  xwait r12, 0
0003b8  1f270000  addli r14, zero, 2
0003bc  0bb12420  mul.sl r[3:4], r[10:11], r[3:4]
0003c0  eb540ffe  load.d r[10:11], -32(r30)
0003c4  1731d102  sll.d r[3:4], r[3:4], r13
0003c8  0ba12410  add.ul r[3:4], r[10:11], r[3:4]
0003cc  9f440000  addli r9, zero, 4
0003d0  1d800400  lock zero, r9
0003d4  15000000  dma_cfg zero, zero, zero, 0
0003d8  15800104  dma_cfg zero, r3, zero, 2
0003dc  e304bfff  loadli.w r9,  -40(r30)
0003e0  95039106  dma_cfg r7, r2, r9, 3
0003e4  9f430000  addli r7, zero, 4
0003e8  95053309  dma_cfg r11, r6, r19, 4
0003ec  35000000  dma_run zero
0003f0  1d900300  unlock r7
0003f4  7d000400  xsignal r8, 0
0003f8  1f1a0a00  addli r20, r20, 1
0003fc  9f920200  addli r5, r5, 1
000400  9f9a0a00  addli r21, r21, 1
000404  9f9c0c00  addli r25, r25, 1
000408  9f878700  addli r15, r15, 64
00040c  9f900000  addli r1, r1, 1
000410  3fa0a701  blt.s r15, r26, 8
000414  db4c0000  j 612
000418  9f411000  addli r3, zero, 12
00041c  0b917238  mod.s r2, r5, r7
000420  b3940728  sext_int2long r[10:11], r15
000424  8b113a38  mod.s r3, r20, r3
000428  1b310101  slli r2, r2, 16
00042c  9bb60101  slli r13, r3, 16
000430  ab010400  lui r3, 64
000434  0b113110  add.s r2, r2, r3
000438  9f110000  addli r3, zero, 1
00043c  3b313900  bneq r18, r3, 76
000440  eb5d0fff  load.d r[28:29], -16(r30)
000444  7d900300  xwait r7, 0
000448  93b10d05  setlt.sl r3, r[28:29], r[17:18]
00044c  bbc00100  bneq r3, zero, 48
000450  9f210000  addli r3, zero, 2
000454  1f777000  addli r14, zero, 63
000458  1d800100  lock zero, r3
00045c  0d000002  ew_cfg zero, zero, zero, 1
000460  0d100000  ewcoeff_cfg zero, zero, zero, 0
000464  0d000704  ew_cfg zero, r14, zero, 2
000468  1f070002  addli r14, zero, 256
00046c  0d070006  ew_cfg r14, zero, zero, 3
000470  1f270000  addli r14, zero, 2
000474  4d310000  ssaux r2, 0
000478  1d900100  unlock r3
00047c  7d000700  xsignal r14, 0
000480  9f110000  addli r3, zero, 1
000484  db160000  j 180
000488  b721e900  beq r18, r14, 104
00048c  1f6b0000  addli r22, zero, 6
000490  bb226901  bneq r18, r22, 168
000494  1f230000  addli r6, zero, 2
000498  9f410000  addli r3, zero, 4
00049c  1f020002  addli r4, zero, 256
0004a0  1f270000  addli r14, zero, 2
0004a4  7d100300  xwait r6, 0
0004a8  eb5d8ffc  load.d r[28:29], -56(r30)
0004ac  97b36402  sll.d r[8:9], r[10:11], r6
0004b0  1d800100  lock zero, r3
0004b4  9f110000  addli r3, zero, 1
0004b8  15000000  dma_cfg zero, zero, zero, 0
0004bc  8ba37d10  add.ul r[8:9], r[28:29], r[8:9]
0004c0  15000404  dma_cfg zero, r8, zero, 2
0004c4  15814306  dma_cfg r2, r7, r4, 3
0004c8  9f430000  addli r7, zero, 4
0004cc  1f041000  addli r8, zero, 8
0004d0  63418fff  loadli.w r2,  -60(r30)
0004d4  6343afff  loadli.w r6,  -44(r30)
0004d8  15020109  dma_cfg r4, r2, r16, 4
0004dc  35000000  dma_run zero
0004e0  1f422000  addli r4, zero, 20
0004e4  1d900300  unlock r7
0004e8  1f310000  addli r2, zero, 3
0004ec  5b090000  j 72
0004f0  1f3b0000  addli r22, zero, 3
0004f4  7d100b00  xwait r22, 0
0004f8  1f6b0000  addli r22, zero, 6
0004fc  7d100b00  xwait r22, 0
000500  b7300800  beq r16, zero, 44
000504  1d000000  lock zero, zero
000508  9f058000  addli r11, zero, 64
00050c  9f098000  addli r19, zero, 64
000510  01070000  ds_cfg r14, zero, 0
000514  81050002  ds_cfg r11, zero, 1
000518  8105001c  ds_cfg r11, zero, 14
00051c  0108001a  ds_cfg r16, zero, 13
000520  a116b102  shuffle_batch r13, r2, r11, 1
000524  9f050008  addli r11, zero, 1024
000528  1d100000  unlock zero
00052c  1f510000  addli r2, zero, 5
000530  7d800300  xsignal r7, 0
000534  7d000100  xsignal r2, 0
000538  0b917c38  mod.s r2, r25, r7
00053c  ab030800  lui r7, 128
000540  1b310101  slli r2, r2, 16
000544  8b137110  add.s r7, r2, r7
000548  3b013900  bneq r18, r3, 64
00054c  6b510fff  load.d r[3:4], -16(r30)
000550  9f260000  addli r13, zero, 2
000554  13317105  setlt.sl r2, r[3:4], r[24:25]
000558  9f111000  addli r3, zero, 9
00055c  7d900100  xwait r3, 0
000560  3b3901fe  bneq r2, zero, -436
000564  1d800600  lock zero, r13
000568  1f71f001  addli r2, zero, 255
00056c  0d000002  ew_cfg zero, zero, zero, 1
000570  0d100000  ewcoeff_cfg zero, zero, zero, 0
000574  0d000104  ew_cfg zero, r2, zero, 2
000578  8d090006  ew_cfg r19, zero, zero, 3
00057c  cd330000  ssaux r7, 0
000580  1d900600  unlock r13
000584  5bc5ffff  j -472
000588  0b914a38  mod.s r2, r21, r4
00058c  1b310101  slli r2, r2, 16
000590  3b41c900  bneq r18, r12, 80
000594  9f311000  addli r3, zero, 11
000598  7d100400  xwait r8, 0
00059c  9f048000  addli r9, zero, 64
0005a0  9f098000  addli r19, zero, 64
0005a4  7d900100  xwait r3, 0
0005a8  1d000000  lock zero, zero
0005ac  9f010002  addli r3, zero, 256
0005b0  01070000  ds_cfg r14, zero, 0
0005b4  81010002  ds_cfg r3, zero, 1
0005b8  8104001c  ds_cfg r9, zero, 14
0005bc  8101001a  ds_cfg r3, zero, 13
0005c0  41819304  shuffle_coa r2, r7, r9, 2
0005c4  1f111000  addli r2, zero, 9
0005c8  9f430000  addli r7, zero, 4
0005cc  1d100000  unlock zero
0005d0  7d000100  xsignal r2, 0
0005d4  1f211000  addli r2, zero, 10
0005d8  7d000100  xsignal r2, 0
0005dc  dbc3ffff  j -484
0005e0  9f430000  addli r7, zero, 4
0005e4  3b5879fe  bneq r18, r7, -492
0005e8  9f510000  addli r3, zero, 5
0005ec  9f140000  addli r9, zero, 1
0005f0  1f058000  addli r10, zero, 64
0005f4  ab490000  lui r19, 4
0005f8  7d900100  xwait r3, 0
0005fc  9f211000  addli r3, zero, 10
000600  7d900100  xwait r3, 0
000604  b7c00000  beq r1, zero, 48
000608  37510800  beq r16, zero, 84
00060c  9f010000  addli r3, zero, 0
000610  1d800400  lock zero, r9
000614  09050501  mm_cfg r10, r10, r16, 0
000618  89039404  mm_cfg r7, r8, r9, 2
00061c  a9912610  mm_acc r3, r13, r2, 8
000620  9f810102  addli r3, r3, 256
000624  0b113111  add.s r2, r2, r19
000628  1d900400  unlock r9
00062c  bb9fb1fe  bneq r3, r11, -28
000630  db050000  j 44
000634  b7200800  beq r16, zero, 40
000638  9f010000  addli r3, zero, 0
00063c  1d800400  lock zero, r9
000640  09050501  mm_cfg r10, r10, r16, 0
000644  89039404  mm_cfg r7, r8, r9, 2
000648  a9812610  mm r3, r13, r2, 8
00064c  9f810102  addli r3, r3, 256
000650  0b113111  add.s r2, r2, r19
000654  1d900400  unlock r9
000658  bb9fb1fe  bneq r3, r11, -28
00065c  1f610000  addli r2, zero, 6
000660  9f098000  addli r19, zero, 64
000664  7d000100  xsignal r2, 0
000668  1f311000  addli r2, zero, 11
00066c  7d000100  xsignal r2, 0
000670  5bb1ffff  j -632
000674  9f430000  addli r7, zero, 4
000678  376079fe  beq r18, r7, -1000
00067c  eb540ffb  load.d r[10:11], -80(r30)
000680  eb518ffe  load.d r[4:5], -24(r30)
000684  1f432000  addli r6, zero, 20
000688  9f260000  addli r13, zero, 2
00068c  a7800402  addli.d r[2:3], r[10:11], 256
000690  8bb03040  min.sl r[2:3], r[2:3], r[4:5]
000694  ab010c00  lui r3, 192
000698  2b020400  lui r4, 64
00069c  8bb09048  max.sl r[2:3], r[2:3], r[10:11]
0006a0  1b9e0140  ori r28, r3, 1024
0006a4  0bb59018  sub.sl r[11:12], r[2:3], r[10:11]
0006a8  9f000002  addli r1, zero, 256
0006ac  e344ffff  loadli.w r9,  -4(r30)
0006b0  1f110000  addli r2, zero, 1
0006b4  b3870028  zext_int2long r[16:17], r1
0006b8  bf892301  blt.s r7, r18, 608
0006bc  b76d2900  beq r18, r2, 888
0006c0  9f300000  addli r1, zero, 3
0006c4  bb0b1900  bneq r18, r1, 736
0006c8  9f411000  addli r3, zero, 12
0006cc  733caff6  store.d r[11:12], -136(r30)
0006d0  670b5fff  storeli.w r21, -80(r30)
0006d4  e70c4fff  storeli.w r20, -56(r30)
0006d8  9f000000  addli r1, zero, 0
0006dc  7d900100  xwait r3, 0
0006e0  9f711000  addli r3, zero, 15
0006e4  7d900100  xwait r3, 0
0006e8  9f312000  addli r3, zero, 19
0006ec  7d900100  xwait r3, 0
0006f0  1d800600  lock zero, r13
0006f4  ab01803f  lui r3, 260096
0006f8  0d000002  ew_cfg zero, zero, zero, 1
0006fc  8d910100  ewcoeff_cfg r3, r3, zero, 0
000700  9f71f001  addli r3, zero, 255
000704  0d800104  ew_cfg zero, r3, zero, 2
000708  ab010c00  lui r3, 192
00070c  0d010006  ew_cfg r2, zero, zero, 3
000710  0b919010  add.s r2, r1, r9
000714  2d813000  dsmadd r2, r1, r3, 0
000718  9f800008  addli r1, r1, 1024
00071c  bbdf40fe  bneq r1, r4, -12
000720  9f501000  addli r1, zero, 13
000724  1d900600  unlock r13
000728  7d800000  xsignal r1, 0
00072c  9f002000  addli r1, zero, 16
000730  7d800000  xsignal r1, 0
000734  9f102000  addli r1, zero, 17
000738  7d800000  xsignal r1, 0
00073c  9f202000  addli r1, zero, 18
000740  7d900000  xwait r1, 0
000744  9f702000  addli r1, zero, 23
000748  7d100300  xwait r6, 0
00074c  7d900000  xwait r1, 0
000750  b3000028  zext_int2long r[2:3], zero
000754  3d000000  xfence
000758  00a00300  mfence { lm, sm, gm }
00075c  733c1ffc  store.d r[2:3], -40(r30)
000760  27810000  addli.d r[3:4], r[2:3], 0
000764  db030000  j 28
000768  eb500fff  load.d r[2:3], -16(r30)
00076c  eb510ffe  load.d r[4:5], -32(r30)
000770  1f041000  addli r8, zero, 8
000774  93a01104  setlt.ul r1, r[4:5], r[2:3]
000778  27910100  addli.d r[3:4], r[4:5], 1
00077c  b7c70000  beq r1, zero, 496
000780  eb568ffd  load.d r[14:15], -40(r30)
000784  973b8102  sll.d r[24:25], r[3:4], r8
000788  73302ffe  store.d r[3:4], -32(r30)
00078c  db060000  j 52
000790  a7861600  addli.d r[14:15], r[14:15], 8
000794  8b90c011  add.s r1, r1, r28
000798  13a1f602  setneq.d r2, r[14:15], r[16:17]
00079c  73e6b000  stores.w r11, 12(r1)
0007a0  73e46001  stores.w r22, 8(r1)
0007a4  73e28000  stores.w r8, 4(r1)
0007a8  73e01001  stores.w r17, 0(r1)
0007ac  73ee2001  stores.w r18, 28(r1)
0007b0  73ecc000  stores.w r12, 24(r1)
0007b4  73ea3001  stores.w r19, 20(r1)
0007b8  73e8a001  stores.w r26, 16(r1)
0007bc  b73e01fe  beq r2, zero, -84
0007c0  8ba07611  add.ul r[2:3], r[14:15], r[24:25]
0007c4  9bb02000  slli r1, r1, 2
0007c8  6301ffff  loadli.w r2,  -8(r30)
0007cc  0b949010  add.s r8, r1, r9
0007d0  8b912010  add.s r3, r1, r2
0007d4  ef480400  loads.w r17, 0(r8)
0007d8  ef4dc400  loads.w r27, 12(r8)
0007dc  6f418400  loads.w r2, 8(r8)
0007e0  ef444400  loads.w r9, 4(r8)
0007e4  ef43c401  loads.w r7, 28(r8)
0007e8  6f4a8401  loads.w r20, 24(r8)
0007ec  6f454401  loads.w r10, 20(r8)
0007f0  ef4a0401  loads.w r21, 16(r8)
0007f4  efc5c100  loads.w r11, 12(r3)
0007f8  6fcb8100  loads.w r22, 8(r3)
0007fc  6fc44100  loads.w r8, 4(r3)
000800  6fc9c101  loads.w r18, 28(r3)
000804  6fc68101  loads.w r12, 24(r3)
000808  efc94101  loads.w r19, 20(r3)
00080c  6fcd0101  loads.w r26, 16(r3)
000810  1bb39800  slli r6, r17, 9
000814  1bc27801  srli r4, r17, 23
000818  13030300  seteq r6, r6, zero
00081c  1b02f20f  andi r4, r4, 255
000820  1b72f20f  setlti r4, r4, 255
000824  17126200  or r4, r4, r6
000828  37200200  beq r4, zero, 8
00082c  efc80100  loads.w r17, 0(r3)
000830  9bb19400  slli r3, r9, 9
000834  1bc27401  srli r4, r9, 23
000838  93810100  seteq r3, r3, zero
00083c  1b02f20f  andi r4, r4, 255
000840  1b72f20f  setlti r4, r4, 255
000844  97113200  or r3, r4, r3
000848  3ba00100  bneq r3, zero, 8
00084c  1f840400  addli r8, r9, 0
000850  9b319100  slli r3, r2, 9
000854  1b427101  srli r4, r2, 23
000858  93810100  seteq r3, r3, zero
00085c  1b02f20f  andi r4, r4, 255
000860  1b72f20f  setlti r4, r4, 255
000864  97113200  or r3, r4, r3
000868  3ba00100  bneq r3, zero, 8
00086c  1f0b0100  addli r22, r2, 0
000870  1bb19d00  slli r2, r27, 9
000874  9bc17d01  srli r3, r27, 23
000878  e344ffff  loadli.w r9,  -4(r30)
00087c  13010100  seteq r2, r2, zero
000880  9b81f10f  andi r3, r3, 255
000884  9bf1f10f  setlti r3, r3, 255
000888  17912100  or r2, r3, r2
00088c  3b200100  bneq r2, zero, 8
000890  9f850d00  addli r11, r27, 0
000894  1bb19a00  slli r2, r21, 9
000898  9bc17a01  srli r3, r21, 23
00089c  13010100  seteq r2, r2, zero
0008a0  9b81f10f  andi r3, r3, 255
0008a4  9bf1f10f  setlti r3, r3, 255
0008a8  17912100  or r2, r3, r2
0008ac  3b200100  bneq r2, zero, 8
0008b0  1f8d0a00  addli r26, r21, 0
0008b4  1b319500  slli r2, r10, 9
0008b8  9b417501  srli r3, r10, 23
0008bc  13010100  seteq r2, r2, zero
0008c0  9b81f10f  andi r3, r3, 255
0008c4  9bf1f10f  setlti r3, r3, 255
0008c8  17912100  or r2, r3, r2
0008cc  3b200100  bneq r2, zero, 8
0008d0  9f090500  addli r19, r10, 0
0008d4  1b319a00  slli r2, r20, 9
0008d8  9b417a01  srli r3, r20, 23
0008dc  13010100  seteq r2, r2, zero
0008e0  9b81f10f  andi r3, r3, 255
0008e4  9bf1f10f  setlti r3, r3, 255
0008e8  17912100  or r2, r3, r2
0008ec  3b200100  bneq r2, zero, 8
0008f0  1f060a00  addli r12, r20, 0
0008f4  1bb19300  slli r2, r7, 9
0008f8  9bc17301  srli r3, r7, 23
0008fc  13010100  seteq r2, r2, zero
000900  9b81f10f  andi r3, r3, 255
000904  9bf1f10f  setlti r3, r3, 255
000908  17912100  or r2, r3, r2
00090c  3b1a01fe  bneq r2, zero, -380
000910  1f890300  addli r18, r7, 0
000914  dbcfffff  j -388
000918  9f500000  addli r1, zero, 5
00091c  37651900  beq r18, r1, 344
000920  9f600000  addli r1, zero, 6
000924  3b021900  bneq r18, r1, 128
000928  eb500f01  load.d r[2:3], 16(r30)
00092c  eb518ffa  load.d r[4:5], -88(r30)
000930  2b030c00  lui r6, 192
000934  8ba03010  add.ul r[2:3], r[2:3], r[4:5]
000938  9f611000  addli r3, zero, 14
00093c  1f120000  addli r4, zero, 1
000940  7d900100  xwait r3, 0
000944  1d800300  lock zero, r7
000948  9b312500  slli r3, r10, 2
00094c  15000000  dma_cfg zero, zero, zero, 0
000950  15000104  dma_cfg zero, r2, zero, 2
000954  15833006  dma_cfg r6, r1, r3, 3
000958  9f701000  addli r1, zero, 15
00095c  95814108  dma_cfg r3, r3, r4, 4
000960  35000000  dma_run zero
000964  1d900300  unlock r7
000968  5b26ffff  j -1744
00096c  9f302000  addli r1, zero, 19
000970  00200100  mfence { sm }
000974  630d5f00  loadli.w r26,  40(r30)
000978  00390002  core_id r18
00097c  9f430000  addli r7, zero, 4
000980  9f260000  addli r13, zero, 2
000984  7d800000  xsignal r1, 0
000988  9f502000  addli r1, zero, 21
00098c  7d800000  xsignal r1, 0
000990  9f602000  addli r1, zero, 22
000994  7d800000  xsignal r1, 0
000998  630a9fff  loadli.w r20,  -56(r30)
00099c  e30a6fff  loadli.w r21,  -80(r30)
0009a0  6b558ff7  load.d r[11:12], -136(r30)
0009a4  bb6309fc  bneq r18, zero, -1800
0009a8  e3403fff  loadli.w r1,  -100(r30)
0009ac  8b31f540  min.sl r[4:5], r[11:12], r[16:17]
0009b0  6b540ffa  load.d r[9:10], -96(r30)
0009b4  6b558ffe  load.d r[11:12], -24(r30)
0009b8  1f170000  addli r14, zero, 1
0009bc  9bb12100  slli r3, r3, 2
0009c0  b3900028  sext_int2long r[2:3], r1
0009c4  0b34a420  mul.sl r[9:10], r[9:10], r[11:12]
0009c8  6b558ff8  load.d r[11:12], -120(r30)
0009cc  27830002  addli.d r[7:8], r[2:3], 256
0009d0  1734d402  sll.d r[9:10], r[9:10], r13
0009d4  0b33a340  min.sl r[7:8], r[7:8], r[11:12]
0009d8  eb558f01  load.d r[12:13], 24(r30)
0009dc  1f050008  addli r10, zero, 1024
0009e0  0b331348  max.sl r[7:8], r[7:8], r[2:3]
0009e4  0ba48510  add.ul r[9:10], r[12:13], r[9:10]
0009e8  8b301318  sub.sl r[2:3], r[7:8], r[2:3]
0009ec  6b538ffa  load.d r[7:8], -88(r30)
0009f0  8bb0f040  min.sl r[2:3], r[2:3], r[16:17]
0009f4  0b236410  add.ul r[7:8], r[9:10], r[7:8]
0009f8  1f642000  addli r8, zero, 22
0009fc  7d100400  xwait r8, 0
000a00  1f540000  addli r8, zero, 5
000a04  1d000400  lock zero, r8
000a08  15000000  dma_cfg zero, zero, zero, 0
000a0c  15000702  dma_cfg zero, r14, zero, 1
000a10  95030004  dma_cfg r7, zero, zero, 2
000a14  15033e06  dma_cfg r6, r28, r3, 3
000a18  9f430000  addli r7, zero, 4
000a1c  e341afff  loadli.w r3,  -44(r30)
000a20  95011508  dma_cfg r3, r10, r1, 4
000a24  35000000  dma_run zero
000a28  1d100400  unlock r8
000a2c  9f702000  addli r1, zero, 23
000a30  5b0dffff  j -1944
000a34  eb510fff  load.d r[4:5], -16(r30)
000a38  93b0a104  setlt.sl r1, r[4:5], r[11:12]
000a3c  9f012000  addli r3, zero, 16
000a40  7d900100  xwait r3, 0
000a44  bba00000  bneq r1, zero, 40
000a48  1d800600  lock zero, r13
000a4c  9f70f001  addli r1, zero, 255
000a50  0d000002  ew_cfg zero, zero, zero, 1
000a54  0d100000  ewcoeff_cfg zero, zero, zero, 0
000a58  0d800004  ew_cfg zero, r1, zero, 2
000a5c  ab000c00  lui r1, 192
000a60  0d010006  ew_cfg r2, zero, zero, 3
000a64  cd300000  ssaux r1, 0
000a68  1d900600  unlock r13
000a6c  9f601000  addli r1, zero, 14
000a70  5b05ffff  j -2008
000a74  9f112000  addli r3, zero, 17
000a78  9f000000  addli r1, zero, 0
000a7c  7d900100  xwait r3, 0
000a80  9f512000  addli r3, zero, 21
000a84  7d900100  xwait r3, 0
000a88  1d800600  lock zero, r13
000a8c  9f71f001  addli r3, zero, 255
000a90  0d000002  ew_cfg zero, zero, zero, 1
000a94  0d800104  ew_cfg zero, r3, zero, 2
000a98  0d010006  ew_cfg r2, zero, zero, 3
000a9c  0d100000  ewcoeff_cfg zero, zero, zero, 0
000aa0  6303ffff  loadli.w r6,  -8(r30)
000aa4  0b916010  add.s r2, r1, r6
000aa8  8b919010  add.s r3, r1, r9
000aac  9f800008  addli r1, r1, 1024
000ab0  2da13100  dscmpnsel r2, r3, r3, 0
000ab4  bbcf40fe  bneq r1, r4, -16
000ab8  9f202000  addli r1, zero, 18
000abc  1d900600  unlock r13
000ac0  7d800000  xsignal r1, 0
000ac4  9f402000  addli r1, zero, 20
000ac8  5bfafeff  j -2096
000acc  7d000000  xsignal zero, 0
000ad0  bb600900  bneq r18, zero, 56
000ad4  9f200000  addli r1, zero, 2
000ad8  7d100000  xwait zero, 0
000adc  7d100000  xwait zero, 0
000ae0  7d100000  xwait zero, 0
000ae4  7d100000  xwait zero, 0
000ae8  7d100000  xwait zero, 0
000aec  7d100000  xwait zero, 0
000af0  7d100000  xwait zero, 0
000af4  7d100000  xwait zero, 0
000af8  1d800000  lock zero, r1
000afc  0d000020  ew_cfg zero, zero, zero, 16
000b00  1d900000  unlock r1
000b04  7d400000  xsignal_mode_cfg zero
000b08  9f8e1e01  addli sp, sp, 136
000b0c  00a00300  mfence { lm, sm, gm }
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
000d04  00100000  exit
000d08  00100000  exit
000d0c  00100000  exit
000d10  00100000  exit
000d14  00100000  exit
000d18  00100000  exit
000d1c  00100000  exit
000d20  00100000  exit
000d24  00100000  exit
000d28  00100000  exit
000d2c  00100000  exit
000d30  00100000  exit
000d34  00100000  exit
000d38  00100000  exit
000d3c  00100000  exit
000d40  00100000  exit
000d44  00100000  exit
000d48  00100000  exit
000d4c  00100000  exit
000d50  00100000  exit
