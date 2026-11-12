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
00005c  9f096000  addli r19, zero, 48
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
0000bc  003e0002  core_id r28
0000c0  1f8f7e00  addli r30, sp, 56
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600e00  beq r28, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5b0e0000  j 112
0000e0  9f210000  addli r3, zero, 2
0000e4  fdd00000  uni_sram_cfg r1, r1
0000e8  2bf2ffff  lui r4, 1048575
0000ec  1d800100  lock zero, r3
0000f0  8d000020  ew_cfg r1, zero, zero, 16
0000f4  9b10f2ff  ori r1, r4, 4095
0000f8  1d900100  unlock r3
0000fc  9f610000  addli r3, zero, 6
000100  80a10004  csr_set csr3, r1
000104  9f400000  addli r1, zero, 4
000108  00d00100  sync_group
00010c  7d800000  xsignal r1, 0
000110  7d800000  xsignal r1, 0
000114  7d800100  xsignal r3, 0
000118  7d800100  xsignal r3, 0
00011c  9f001000  addli r1, zero, 8
000120  9f411000  addli r3, zero, 12
000124  7d800000  xsignal r1, 0
000128  7d800000  xsignal r1, 0
00012c  7d800100  xsignal r3, 0
000130  7d800100  xsignal r3, 0
000134  9f201000  addli r1, zero, 10
000138  9f611000  addli r3, zero, 14
00013c  7d800000  xsignal r1, 0
000140  7d800000  xsignal r1, 0
000144  7d800100  xsignal r3, 0
000148  7d800100  xsignal r3, 0
00014c  e3404f00  loadli.w r1,  36(r30)
000150  e3015f00  loadli.w r3,  40(r30)
000154  80d20002  load_param_i r5, 1
000158  63425f00  loadli.w r4,  44(r30)
00015c  8b901120  mul.s r1, r3, r1
000160  9f810200  addli r3, r5, 0
000164  8b914050  fmac.s r3, r1, r4
000168  0b924020  mul.s r4, r1, r4
00016c  9ff1f1ff  addli r3, r3, -1
000170  8b915130  div.s r3, r3, r5
000174  80520002  load_param_i r5, 0
000178  8b905120  mul.s r1, r3, r5
00017c  8b915150  fmac.s r3, r3, r5
000180  8b914140  min.s r3, r3, r4
000184  cbd11102  ble.s r3, r1, 1140
000188  63043f00  loadli.w r8,  24(r30)
00018c  b3940128  sext_int2long r[10:11], r3
000190  e3433f00  loadli.w r7,  28(r30)
000194  9f014000  addli r3, zero, 32
000198  63034f00  loadli.w r6,  32(r30)
00019c  1f020000  addli r4, zero, 0
0001a0  9f020000  addli r5, zero, 0
0001a4  9f290000  addli r19, zero, 2
0001a8  1f5a0000  addli r20, zero, 5
0001ac  9f4a0000  addli r21, zero, 4
0001b0  1f1c1000  addli r24, zero, 9
0001b4  9f1c0000  addli r25, zero, 1
0001b8  9f0d0010  addli r27, zero, 2048
0001bc  9f3b1000  addli r23, zero, 11
0001c0  2b080100  lui r16, 16
0001c4  1f070000  addli r14, zero, 0
0001c8  73349ffe  store.d r[10:11], -24(r30)
0001cc  33950028  sext_int2long r[11:12], r1
0001d0  9f040004  addli r9, zero, 512
0001d4  9f703400  addli r1, r8, 31
0001d8  33160328  sext_int2long r[13:14], r6
0001dc  8b979330  div.s r15, r7, r9
0001e0  9b332300  slli r7, r6, 2
0001e4  33140428  sext_int2long r[9:10], r8
0001e8  8b903030  div.s r1, r1, r3
0001ec  733ccffc  store.d r[13:14], -40(r30)
0001f0  73348ffc  store.d r[9:10], -56(r30)
0001f4  674e1ffe  storeli.w r1, -28(r30)
0001f8  5b0b0000  j 88
0001fc  1f441000  addli r8, zero, 12
000200  1f360000  addli r12, zero, 3
000204  2b130400  lui r6, 65
000208  7d100c00  xwait r24, 0
00020c  9f040004  addli r9, zero, 512
000210  7d100400  xwait r8, 0
000214  1f044000  addli r8, zero, 32
000218  1d000600  lock zero, r12
00021c  0b136d10  add.s r6, r26, r6
000220  11009402  rs_cfg zero, r8, r9, 1
000224  11000406  rs_cfg zero, r8, zero, 3
000228  31839104  rs_col r6, r3, r9, 2
00022c  9f211000  addli r3, zero, 10
000230  1d100600  unlock r12
000234  7d800100  xsignal r3, 0
000238  7d800b00  xsignal r23, 0
00023c  6b548ffe  load.d r[9:10], -24(r30)
000240  27150500  addli.d r[11:12], r[11:12], 1
000244  1f120200  addli r4, r4, 1
000248  93318504  setlt.sl r3, r[11:12], r[9:10]
00024c  b7be0100  beq r3, zero, 940
000250  8b113239  mod.s r3, r4, r19
000254  1bbd0101  slli r26, r3, 16
000258  e70f3ffe  storeli.w r3, -8(r30)
00025c  bb404e01  bneq r28, r20, 48
000260  7d900a00  xwait r21, 0
000264  1d800900  lock zero, r19
000268  9f71f003  addli r3, zero, 511
00026c  0d000002  ew_cfg zero, zero, zero, 1
000270  0d100000  ewcoeff_cfg zero, zero, zero, 0
000274  0d800104  ew_cfg zero, r3, zero, 2
000278  9f014000  addli r3, zero, 32
00027c  8d010006  ew_cfg r3, zero, zero, 3
000280  4d3d0000  ssaux r26, 0
000284  1d900900  unlock r19
000288  7d800900  xsignal r19, 0
00028c  3b204e01  bneq r28, r20, 8
000290  7d900900  xwait r19, 0
000294  e3415f00  loadli.w r3,  44(r30)
000298  63035f00  loadli.w r6,  40(r30)
00029c  8b113530  div.s r3, r10, r3
0002a0  8b916130  div.s r3, r3, r6
0002a4  6343cfff  loadli.w r6,  -28(r30)
0002a8  8b916138  mod.s r3, r3, r6
0002ac  1f030004  addli r6, zero, 512
0002b0  33940128  sext_int2long r[9:10], r3
0002b4  1bb65100  slli r12, r3, 5
0002b8  e3413f00  loadli.w r3,  28(r30)
0002bc  17344403  sll.d r[9:10], r[9:10], r20
0002c0  674fcffe  storeli.w r12, -12(r30)
0002c4  bff76100  blt.s r3, r6, 508
0002c8  a7080400  addli.d r[18:19], r[9:10], 0
0002cc  6b548ffd  load.d r[9:10], -40(r30)
0002d0  e3013f00  loadli.w r3,  24(r30)
0002d4  1f034000  addli r6, zero, 32
0002d8  a7800800  addli.d r[2:3], r[18:19], 0
0002dc  0bb48820  mul.sl r[9:10], r[18:19], r[9:10]
0002e0  8b91c118  sub.s r3, r3, r12
0002e4  6b560f00  load.d r[13:14], 0(r30)
0002e8  9f680000  addli r17, zero, 6
0002ec  17343403  sll.d r[9:10], r[9:10], r19
0002f0  0b936140  min.s r6, r3, r6
0002f4  0b268610  add.ul r[13:14], r[13:14], r[9:10]
0002f8  bb521e01  bneq r28, r17, 180
0002fc  1f0b0000  addli r22, zero, 0
000300  2b090200  lui r18, 32
000304  7338affc  store.d r[11:12], -48(r30)
000308  db0a0000  j 84
00030c  8b116711  add.s r3, r14, r22
000310  6b558f00  load.d r[11:12], 8(r30)
000314  ab0b0400  lui r23, 64
000318  1f1b0b00  addli r22, r22, 1
00031c  8b913139  mod.s r3, r3, r19
000320  0b248510  add.ul r[9:10], r[11:12], r[9:10]
000324  1f051000  addli r10, zero, 8
000328  7d100500  xwait r10, 0
00032c  1d800a00  lock zero, r21
000330  15000000  dma_cfg zero, zero, zero, 0
000334  15800404  dma_cfg zero, r9, zero, 2
000338  9bb1b100  slli r3, r3, 11
00033c  8b917111  add.s r3, r3, r23
000340  9501b407  dma_cfg r3, r8, r27, 3
000344  9f710000  addli r3, zero, 7
000348  958d9d09  dma_cfg r27, r27, r25, 4
00034c  35000000  dma_run zero
000350  1d900a00  unlock r21
000354  7d800100  xsignal r3, 0
000358  37d56701  beq r15, r22, 340
00035c  33040b28  zext_int2long r[9:10], r22
000360  17348403  sll.d r[9:10], r[9:10], r24
000364  17343403  sll.d r[9:10], r[9:10], r19
000368  bb1e9eff  bneq r28, r25, -92
00036c  8b916211  add.s r3, r5, r22
000370  7d900800  xwait r17, 0
000374  1d800a00  lock zero, r21
000378  8b2b8610  add.ul r[24:25], r[13:14], r[9:10]
00037c  15000000  dma_cfg zero, zero, zero, 0
000380  8b913139  mod.s r3, r3, r19
000384  15000c04  dma_cfg zero, r24, zero, 2
000388  9bb10101  slli r3, r3, 16
00038c  8b912111  add.s r3, r3, r18
000390  9581bb07  dma_cfg r3, r23, r27, 3
000394  1f1c1000  addli r24, zero, 9
000398  958d6308  dma_cfg r27, r7, r6, 4
00039c  35000000  dma_run zero
0003a0  1d900a00  unlock r21
0003a4  7d000a00  xsignal r20, 0
0003a8  dbecffff  j -156
0003ac  1f0b0000  addli r22, zero, 0
0003b0  27840000  addli.d r[9:10], r[2:3], 0
0003b4  2b090200  lui r18, 32
0003b8  5b090000  j 72
0003bc  33040b28  zext_int2long r[9:10], r22
0003c0  7d900800  xwait r17, 0
0003c4  1d800a00  lock zero, r21
0003c8  15000000  dma_cfg zero, zero, zero, 0
0003cc  17347403  sll.d r[9:10], r[9:10], r23
0003d0  0b248610  add.ul r[9:10], r[13:14], r[9:10]
0003d4  15800404  dma_cfg zero, r9, zero, 2
0003d8  9501b407  dma_cfg r3, r8, r27, 3
0003dc  27840000  addli.d r[9:10], r[2:3], 0
0003e0  958d6308  dma_cfg r27, r7, r6, 4
0003e4  35000000  dma_run zero
0003e8  1d900a00  unlock r21
0003ec  7d000a00  xsignal r20, 0
0003f0  9f920200  addli r5, r5, 1
0003f4  1f1b0b00  addli r22, r22, 1
0003f8  1f170700  addli r14, r14, 1
0003fc  3713fb00  beq r22, r15, 196
000400  8b913239  mod.s r3, r5, r19
000404  9bb10101  slli r3, r3, 16
000408  8b912111  add.s r3, r3, r18
00040c  b74e9eff  beq r28, r25, -80
000410  bb0f4eff  bneq r28, r20, -32
000414  8b143739  mod.s r9, r14, r19
000418  9f7b0000  addli r23, zero, 7
00041c  7d100a00  xwait r20, 0
000420  1f040000  addli r8, zero, 0
000424  7d900b00  xwait r23, 0
000428  1d800900  lock zero, r19
00042c  ab0b803f  lui r23, 260096
000430  0d000002  ew_cfg zero, zero, zero, 1
000434  0d107001  ewcoeff_cfg zero, zero, r23, 0
000438  ab0b0400  lui r23, 64
00043c  9bb4b400  slli r9, r9, 11
000440  8b947411  add.s r9, r9, r23
000444  9f7bf003  addli r23, zero, 511
000448  0d800b04  ew_cfg zero, r23, zero, 2
00044c  8d0c0006  ew_cfg r25, zero, zero, 3
000450  8b9b8110  add.s r23, r3, r8
000454  1f040410  addli r8, r8, 2048
000458  ad9b9b00  dsmul r23, r23, r9, 0
00045c  bb5f04ff  bneq r8, r16, -12
000460  1f041000  addli r8, zero, 8
000464  1d900900  unlock r19
000468  9f3b1000  addli r23, zero, 11
00046c  7d000400  xsignal r8, 0
000470  1d800900  lock zero, r19
000474  2b04803f  lui r8, 260096
000478  0d000002  ew_cfg zero, zero, zero, 1
00047c  0d140400  ewcoeff_cfg r8, r8, zero, 0
000480  1f74f007  addli r8, zero, 1023
000484  0d000404  ew_cfg zero, r8, zero, 2
000488  1f042000  addli r8, zero, 16
00048c  0d040006  ew_cfg r8, zero, zero, 3
000490  0d048426  ew_cfg r8, r8, r8, 19
000494  27840000  addli.d r[9:10], r[2:3], 0
000498  2d0d3d00  dsmadd r26, r26, r3, 0
00049c  0d000026  ew_cfg zero, zero, zero, 19
0004a0  1d900900  unlock r19
0004a4  7d800800  xsignal r17, 0
0004a8  5be9ffff  j -184
0004ac  6b550ffd  load.d r[11:12], -48(r30)
0004b0  8b926211  add.s r5, r5, r22
0004b4  0b176711  add.s r14, r14, r22
0004b8  9f3b1000  addli r23, zero, 11
0004bc  27840000  addli.d r[9:10], r[2:3], 0
0004c0  bb114e01  bneq r28, r20, 100
0004c4  9f310000  addli r3, zero, 3
0004c8  2b140800  lui r8, 129
0004cc  2b130400  lui r6, 65
0004d0  7d800100  xsignal r3, 0
0004d4  e301ffff  loadli.w r3,  -8(r30)
0004d8  7d900b00  xwait r23, 0
0004dc  0b136d10  add.s r6, r26, r6
0004e0  9bb17100  slli r3, r3, 7
0004e4  8b918110  add.s r3, r3, r8
0004e8  1f641000  addli r8, zero, 14
0004ec  7d100400  xwait r8, 0
0004f0  1d800900  lock zero, r19
0004f4  1f743000  addli r8, zero, 31
0004f8  0d000002  ew_cfg zero, zero, zero, 1
0004fc  0d000404  ew_cfg zero, r8, zero, 2
000500  1f040004  addli r8, zero, 512
000504  0d040006  ew_cfg r8, zero, zero, 3
000508  cd010300  ssreduce r3, r6, 0
00050c  9f411000  addli r3, zero, 12
000510  1d900900  unlock r19
000514  7d800100  xsignal r3, 0
000518  9f511000  addli r3, zero, 13
00051c  7d800100  xsignal r3, 0
000520  dba3ffff  j -740
000524  ab110600  lui r3, 97
000528  1f330000  addli r6, zero, 3
00052c  8b113d10  add.s r3, r26, r3
000530  37336efe  beq r28, r6, -820
000534  3b213e01  bneq r28, r19, 72
000538  1f330000  addli r6, zero, 3
00053c  1f040004  addli r8, zero, 512
000540  7d100300  xwait r6, 0
000544  1f231000  addli r6, zero, 10
000548  7d100300  xwait r6, 0
00054c  1d000000  lock zero, zero
000550  1f034000  addli r6, zero, 32
000554  81090000  ds_cfg r19, zero, 0
000558  01040002  ds_cfg r8, zero, 1
00055c  0103001c  ds_cfg r6, zero, 14
000560  01000016  ds_cfg zero, zero, 11
000564  0104001a  ds_cfg r8, zero, 13
000568  c1016d08  shuffle_coa r3, r26, r6, 4
00056c  1d100000  unlock zero
000570  7d800a00  xsignal r21, 0
000574  7d000c00  xsignal r24, 0
000578  db98ffff  j -828
00057c  3b030efe  bneq r28, zero, -832
000580  e348efff  loadli.w r17,  -12(r30)
000584  a7000400  addli.d r[2:3], r[9:10], 0
000588  e301ffff  loadli.w r3,  -8(r30)
00058c  2b130800  lui r6, 129
000590  17bb3003  sll.d r[23:24], r[2:3], r19
000594  33940828  sext_int2long r[9:10], r17
000598  9bb17100  slli r3, r3, 7
00059c  27064400  addli.d r[13:14], r[9:10], 32
0005a0  8b916110  add.s r3, r3, r6
0005a4  733ccffe  store.d r[13:14], -8(r30)
0005a8  6b568ffc  load.d r[13:14], -56(r30)
0005ac  eb508fff  load.d r[2:3], -8(r30)
0005b0  0bb6c040  min.sl r[13:14], r[2:3], r[13:14]
0005b4  0b348648  max.sl r[9:10], r[13:14], r[9:10]
0005b8  6b560f01  load.d r[13:14], 16(r30)
0005bc  0b131419  sub.s r6, r8, r17
0005c0  1f541000  addli r8, zero, 13
0005c4  0b266611  add.ul r[13:14], r[13:14], r[23:24]
0005c8  9f3b1000  addli r23, zero, 11
0005cc  7d100400  xwait r8, 0
0005d0  1d000a00  lock zero, r20
0005d4  15000000  dma_cfg zero, zero, zero, 0
0005d8  15800c02  dma_cfg zero, r25, zero, 1
0005dc  95060004  dma_cfg r13, zero, zero, 2
0005e0  15865107  dma_cfg r12, r3, r21, 3
0005e4  9f611000  addli r3, zero, 14
0005e8  958a6a08  dma_cfg r21, r21, r6, 4
0005ec  35000000  dma_run zero
0005f0  1d100a00  unlock r20
0005f4  5be5ffff  j -216
0005f8  7d000000  xsignal zero, 0
0005fc  bb600e00  bneq r28, zero, 56
000600  9f200000  addli r1, zero, 2
000604  7d100000  xwait zero, 0
000608  7d100000  xwait zero, 0
00060c  7d100000  xwait zero, 0
000610  7d100000  xwait zero, 0
000614  7d100000  xwait zero, 0
000618  7d100000  xwait zero, 0
00061c  7d100000  xwait zero, 0
000620  7d100000  xwait zero, 0
000624  1d800000  lock zero, r1
000628  0d000020  ew_cfg zero, zero, zero, 16
00062c  1d900000  unlock r1
000630  7d400000  xsignal_mode_cfg zero
000634  9f8e7e00  addli sp, sp, 56
000638  00a00300  mfence { lm, sm, gm }
00063c  00100000  exit
000640  00100000  exit
000644  00100000  exit
000648  00100000  exit
00064c  00100000  exit
000650  00100000  exit
000654  00100000  exit
000658  00100000  exit
00065c  00100000  exit
000660  00100000  exit
000664  00100000  exit
000668  00100000  exit
00066c  00100000  exit
000670  00100000  exit
000674  00100000  exit
000678  00100000  exit
00067c  00100000  exit
000680  00100000  exit
000684  00100000  exit
000688  00100000  exit
00068c  00100000  exit
000690  00100000  exit
000694  00100000  exit
000698  00100000  exit
00069c  00100000  exit
0006a0  00100000  exit
0006a4  00100000  exit
0006a8  00100000  exit
0006ac  00100000  exit
0006b0  00100000  exit
0006b4  00100000  exit
0006b8  00100000  exit
0006bc  00100000  exit
0006c0  00100000  exit
0006c4  00100000  exit
0006c8  00100000  exit
0006cc  00100000  exit
0006d0  00100000  exit
0006d4  00100000  exit
0006d8  00100000  exit
0006dc  00100000  exit
0006e0  00100000  exit
0006e4  00100000  exit
0006e8  00100000  exit
0006ec  00100000  exit
0006f0  00100000  exit
0006f4  00100000  exit
0006f8  00100000  exit
0006fc  00100000  exit
000700  00100000  exit
000704  00100000  exit
000708  00100000  exit
00070c  00100000  exit
000710  00100000  exit
000714  00100000  exit
000718  00100000  exit
00071c  00100000  exit
000720  00100000  exit
000724  00100000  exit
000728  00100000  exit
00072c  00100000  exit
000730  00100000  exit
000734  00100000  exit
000738  00100000  exit
00073c  00100000  exit
000740  00100000  exit
000744  00100000  exit
000748  00100000  exit
00074c  00100000  exit
000750  00100000  exit
000754  00100000  exit
000758  00100000  exit
00075c  00100000  exit
000760  00100000  exit
000764  00100000  exit
000768  00100000  exit
00076c  00100000  exit
000770  00100000  exit
000774  00100000  exit
000778  00100000  exit
00077c  00100000  exit
000780  00100000  exit
000784  00100000  exit
000788  00100000  exit
00078c  00100000  exit
000790  00100000  exit
000794  00100000  exit
000798  00100000  exit
00079c  00100000  exit
0007a0  00100000  exit
0007a4  00100000  exit
0007a8  00100000  exit
0007ac  00100000  exit
0007b0  00100000  exit
0007b4  00100000  exit
0007b8  00100000  exit
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
