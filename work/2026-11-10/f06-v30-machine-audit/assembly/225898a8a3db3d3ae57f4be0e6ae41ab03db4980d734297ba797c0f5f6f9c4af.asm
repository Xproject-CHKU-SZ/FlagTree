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
00005c  9f495000  addli r19, zero, 44
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
0000b4  9f8e2eff  addli sp, sp, -112
0000b8  9f100000  addli r1, zero, 1
0000bc  00340002  core_id r8
0000c0  1f8f6e00  addli r30, sp, 48
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7100400  beq r8, zero, 36
0000cc  2bf1ffff  lui r2, 1048575
0000d0  7d900000  xwait r1, 0
0000d4  7d900000  xwait r1, 0
0000d8  7d100000  xwait zero, 0
0000dc  9b10f1ff  ori r1, r2, 4095
0000e0  80a10004  csr_set csr3, r1
0000e4  00d00100  sync_group
0000e8  db180000  j 196
0000ec  1f220000  addli r4, zero, 2
0000f0  fdd00000  uni_sram_cfg r1, r1
0000f4  9f420000  addli r5, zero, 4
0000f8  6b518f01  load.d r[3:4], 24(r30)
0000fc  1f030020  addli r6, zero, 4096
000100  1d000200  lock zero, r4
000104  8d000020  ew_cfg r1, zero, zero, 16
000108  1d100200  unlock r4
00010c  1d800200  lock zero, r5
000110  15000000  dma_cfg zero, zero, zero, 0
000114  15800104  dma_cfg zero, r3, zero, 2
000118  15006106  dma_cfg zero, r2, r6, 3
00011c  1f014000  addli r2, zero, 32
000120  9f010008  addli r3, zero, 1024
000124  15001008  dma_cfg zero, zero, r1, 4
000128  35000000  dma_run zero
00012c  1d900200  unlock r5
000130  7d800000  xsignal r1, 0
000134  7d900000  xwait r1, 0
000138  1d000000  lock zero, zero
00013c  01020000  ds_cfg r4, zero, 0
000140  01000002  ds_cfg zero, zero, 1
000144  01000016  ds_cfg zero, zero, 11
000148  0101001a  ds_cfg r2, zero, 13
00014c  1f510000  addli r2, zero, 5
000150  8101001c  ds_cfg r3, zero, 14
000154  21133008  shuffle_batch r6, zero, r3, 4
000158  1d100000  unlock zero
00015c  7d800000  xsignal r1, 0
000160  7d900000  xwait r1, 0
000164  1d000200  lock zero, r4
000168  ab100100  lui r1, 17
00016c  0d200300  ewtable_cfg r6, 0
000170  0da00002  ewtable_cfg r1, 1
000174  abf0ffff  lui r1, 1048575
000178  1d100200  unlock r4
00017c  7d000000  xsignal zero, 0
000180  7d100000  xwait zero, 0
000184  9b90f0ff  ori r1, r1, 4095
000188  80a10004  csr_set csr3, r1
00018c  9f300000  addli r1, zero, 3
000190  00d00100  sync_group
000194  7d800000  xsignal r1, 0
000198  7d000100  xsignal r2, 0
00019c  9f700000  addli r1, zero, 7
0001a0  1f011000  addli r2, zero, 8
0001a4  7d800000  xsignal r1, 0
0001a8  7d000100  xsignal r2, 0
0001ac  e3004f00  loadli.w r1,  32(r30)
0001b0  63414f00  loadli.w r2,  36(r30)
0001b4  00d20002  load_param_i r4, 1
0001b8  e3015f00  loadli.w r3,  40(r30)
0001bc  8b101120  mul.s r1, r2, r1
0001c0  1f010200  addli r2, r4, 0
0001c4  0b913050  fmac.s r2, r1, r3
0001c8  8b913020  mul.s r3, r1, r3
0001cc  1f71f1ff  addli r2, r2, -1
0001d0  0b114130  div.s r2, r2, r4
0001d4  00520002  load_param_i r4, 0
0001d8  8b104120  mul.s r1, r2, r4
0001dc  0b114150  fmac.s r2, r2, r4
0001e0  0b113140  min.s r2, r2, r3
0001e4  4b3c1100  ble.s r2, r1, 780
0001e8  33930028  sext_int2long r[7:8], r1
0001ec  9f000010  addli r1, zero, 2048
0001f0  33110128  sext_int2long r[3:4], r2
0001f4  6b5c8f00  load.d r[25:26], 8(r30)
0001f8  1f650000  addli r10, zero, 6
0001fc  1f5e0000  addli r28, zero, 5
000200  2b080100  lui r16, 16
000204  9f280000  addli r17, zero, 2
000208  1f490000  addli r18, zero, 4
00020c  9f190000  addli r19, zero, 1
000210  1f7a0000  addli r20, zero, 7
000214  9f0b0004  addli r23, zero, 512
000218  33860028  zext_int2long r[13:14], r1
00021c  ab800d00  lui r1, 216
000220  73342ffe  store.d r[3:4], -24(r30)
000224  2b410000  lui r2, 4
000228  9b90d0b4  ori r1, r1, 2893
00022c  33070128  zext_int2long r[15:16], r2
000230  e74d1ffe  storeli.w r1, -36(r30)
000234  abf07fff  lui r1, 1046527
000238  9b90f0ff  ori r1, r1, 4095
00023c  e70d1ffe  storeli.w r1, -40(r30)
000240  abf07f7f  lui r1, 522239
000244  9b90f0ff  ori r1, r1, 4095
000248  674d1ffe  storeli.w r1, -44(r30)
00024c  b3000028  zext_int2long r[2:3], zero
000250  73301ffe  store.d r[2:3], -32(r30)
000254  5b040000  j 32
000258  7d000900  xsignal r18, 0
00025c  6b538fff  load.d r[7:8], -8(r30)
000260  00340002  core_id r8
000264  eb508ffe  load.d r[2:3], -24(r30)
000268  27130300  addli.d r[7:8], r[7:8], 1
00026c  93301304  setlt.sl r1, r[7:8], r[2:3]
000270  378a0000  beq r1, zero, 640
000274  e3005f00  loadli.w r1,  40(r30)
000278  63414f00  loadli.w r2,  36(r30)
00027c  eb5a0f00  load.d r[22:23], 0(r30)
000280  733c6ffe  store.d r[7:8], -8(r30)
000284  8b101330  div.s r1, r6, r1
000288  8b902030  div.s r1, r1, r2
00028c  33910028  sext_int2long r[3:4], r1
000290  9f002000  addli r1, zero, 16
000294  17321102  sll.d r[5:6], r[3:4], r1
000298  8baa4a10  add.ul r[22:23], r[22:23], r[5:6]
00029c  73385fff  store.d r[22:23], -16(r30)
0002a0  b760a400  beq r8, r10, 56
0002a4  9f000000  addli r1, zero, 0
0002a8  bb603401  bneq r8, r19, 56
0002ac  1f320000  addli r4, zero, 3
0002b0  7d100200  xwait r4, 0
0002b4  1d000900  lock zero, r18
0002b8  15000000  dma_cfg zero, zero, zero, 0
0002bc  15000b04  dma_cfg zero, r22, zero, 2
0002c0  15800a07  dma_cfg zero, r21, r16, 3
0002c4  15083809  dma_cfg r16, r16, r19, 4
0002c8  35000000  dma_run zero
0002cc  1d100900  unlock r18
0002d0  7d800800  xsignal r17, 0
0002d4  db010000  j 12
0002d8  9f100000  addli r1, zero, 1
0002dc  7d100e00  xwait r28, 0
0002e0  1f621000  addli r4, zero, 14
0002e4  173d4102  sll.d r[27:28], r[3:4], r4
0002e8  6b510ffe  load.d r[3:4], -32(r30)
0002ec  27040100  addli.d r[9:10], r[3:4], 0
0002f0  5b090000  j 72
0002f4  33030528  zext_int2long r[7:8], r10
0002f8  97ba1a03  sll.d r[22:23], r[22:23], r17
0002fc  1d000900  lock zero, r18
000300  9b352200  slli r11, r4, 2
000304  15000000  dma_cfg zero, zero, zero, 0
000308  13232304  setlt.ul r6, r[7:8], r[3:4]
00030c  9b332400  slli r7, r8, 2
000310  8b2a5c11  add.ul r[22:23], r[25:26], r[22:23]
000314  8b930311  add.s r7, r7, r16
000318  15000b04  dma_cfg zero, r22, zero, 2
00031c  9583ba06  dma_cfg r7, r21, r11, 3
000320  95853509  dma_cfg r11, r11, r19, 4
000324  35000000  dma_run zero
000328  1d100900  unlock r18
00032c  bb3c03fe  bneq r6, zero, -212
000330  27110100  addli.d r[3:4], r[3:4], 1
000334  0b248210  add.ul r[9:10], r[5:6], r[9:10]
000338  0b22a411  add.ul r[5:6], r[9:10], r[27:28]
00033c  0b338718  sub.sl r[7:8], r[15:16], r[9:10]
000340  8f1ac270  mod.sl r[22:23], r[5:6], r[13:14]
000344  0b325619  sub.sl r[5:6], r[13:14], r[22:23]
000348  0b224340  min.ul r[5:6], r[7:8], r[5:6]
00034c  bbae00fe  bneq r1, zero, -88
000350  33030a28  zext_int2long r[7:8], r20
000354  13236104  setlt.ul r6, r[3:4], r[7:8]
000358  3b6f03fe  bneq r6, zero, -40
00035c  9f500000  addli r1, zero, 5
000360  00340002  core_id r8
000364  3b151400  bneq r8, r1, 324
000368  7d900800  xwait r17, 0
00036c  7d100900  xwait r18, 0
000370  1d800800  lock zero, r17
000374  2b01803f  lui r2, 260096
000378  9f713000  addli r3, zero, 31
00037c  2b82ff40  lui r4, 266232
000380  ab0200c1  lui r5, 790528
000384  1f73f07f  addli r6, zero, 16383
000388  1f5e0000  addli r28, zero, 5
00038c  0d000002  ew_cfg zero, zero, zero, 1
000390  0d110100  ewcoeff_cfg r2, r2, zero, 0
000394  0d800104  ew_cfg zero, r3, zero, 2
000398  8d0b0006  ew_cfg r23, zero, zero, 3
00039c  8d8b7b27  ew_cfg r23, r23, r23, 19
0003a0  2d000001  dsmadd zero, zero, r16, 0
0003a4  0d000026  ew_cfg zero, zero, zero, 19
0003a8  1d900800  unlock r17
0003ac  7d800000  xsignal r1, 0
0003b0  7d100a00  xwait r20, 0
0003b4  1d800800  lock zero, r17
0003b8  9f501000  addli r1, zero, 13
0003bc  0d000002  ew_cfg zero, zero, zero, 1
0003c0  0d800104  ew_cfg zero, r3, zero, 2
0003c4  8d0b0006  ew_cfg r23, zero, zero, 3
0003c8  8d8b0b26  ew_cfg r23, r23, zero, 19
0003cc  8d000014  ew_cfg r1, zero, zero, 10
0003d0  e340bfff  loadli.w r1,  -36(r30)
0003d4  8d881916  ew_cfg r17, r19, r1, 11
0003d8  9f300000  addli r1, zero, 3
0003dc  0d00101a  ew_cfg zero, zero, r1, 13
0003e0  8d02491c  ew_cfg r5, r18, r4, 14
0003e4  2b020200  lui r4, 32
0003e8  9f021000  addli r5, zero, 8
0003ec  0d00011e  ew_cfg zero, r2, zero, 15
0003f0  4d220000  sslut r4, zero, 0
0003f4  0d000014  ew_cfg zero, zero, zero, 10
0003f8  0d000026  ew_cfg zero, zero, zero, 19
0003fc  1d900800  unlock r17
000400  7d900200  xwait r5, 0
000404  1d800800  lock zero, r17
000408  0d000002  ew_cfg zero, zero, zero, 1
00040c  0d000304  ew_cfg zero, r6, zero, 2
000410  8d090006  ew_cfg r19, zero, zero, 3
000414  e303bfff  loadli.w r7,  -40(r30)
000418  8d130000  ewcoeff_cfg r7, zero, zero, 0
00041c  ab030300  lui r7, 48
000420  ad230000  dscmpnsel r7, zero, zero, 0
000424  1d900800  unlock r17
000428  1d800800  lock zero, r17
00042c  0d000002  ew_cfg zero, zero, zero, 1
000430  0d000304  ew_cfg zero, r6, zero, 2
000434  8d090006  ew_cfg r19, zero, zero, 3
000438  6343afff  loadli.w r6,  -44(r30)
00043c  0d130000  ewcoeff_cfg r6, zero, zero, 0
000440  2b0380bf  lui r6, 784384
000444  ada37308  dscmpnsel r7, r7, r7, 4
000448  1d900800  unlock r17
00044c  1d800800  lock zero, r17
000450  0d000002  ew_cfg zero, zero, zero, 1
000454  0d110300  ewcoeff_cfg r2, r6, zero, 0
000458  0d800104  ew_cfg zero, r3, zero, 2
00045c  8d0b0006  ew_cfg r23, zero, zero, 3
000460  8d8b7b27  ew_cfg r23, r23, r23, 19
000464  2d007000  dsmadd zero, zero, r7, 0
000468  0d000026  ew_cfg zero, zero, zero, 19
00046c  1d900800  unlock r17
000470  7d800200  xsignal r5, 0
000474  1d800800  lock zero, r17
000478  0d000002  ew_cfg zero, zero, zero, 1
00047c  0d110100  ewcoeff_cfg r2, r2, zero, 0
000480  0d800104  ew_cfg zero, r3, zero, 2
000484  8d0b0006  ew_cfg r23, zero, zero, 3
000488  8d8b7b27  ew_cfg r23, r23, r23, 19
00048c  2d020200  dsmadd r4, r4, zero, 0
000490  0d000026  ew_cfg zero, zero, zero, 19
000494  1d900800  unlock r17
000498  7d800000  xsignal r1, 0
00049c  7d000500  xsignal r10, 0
0004a0  6b538fff  load.d r[7:8], -8(r30)
0004a4  5bb8ffff  j -576
0004a8  6b538fff  load.d r[7:8], -8(r30)
0004ac  1f5e0000  addli r28, zero, 5
0004b0  bb5604fe  bneq r8, zero, -588
0004b4  9f500000  addli r1, zero, 5
0004b8  7d100500  xwait r10, 0
0004bc  2b010200  lui r2, 32
0004c0  1f5e0000  addli r28, zero, 5
0004c4  1d800000  lock zero, r1
0004c8  15000000  dma_cfg zero, zero, zero, 0
0004cc  15800902  dma_cfg zero, r19, zero, 1
0004d0  eb510fff  load.d r[4:5], -16(r30)
0004d4  15020004  dma_cfg r4, zero, zero, 2
0004d8  95010107  dma_cfg r3, r2, r16, 3
0004dc  15083809  dma_cfg r16, r16, r19, 4
0004e0  35000000  dma_run zero
0004e4  1d900000  unlock r1
0004e8  7d000a00  xsignal r20, 0
0004ec  5bafffff  j -648
0004f0  7d000000  xsignal zero, 0
0004f4  bb600400  bneq r8, zero, 56
0004f8  9f200000  addli r1, zero, 2
0004fc  7d100000  xwait zero, 0
000500  7d100000  xwait zero, 0
000504  7d100000  xwait zero, 0
000508  7d100000  xwait zero, 0
00050c  7d100000  xwait zero, 0
000510  7d100000  xwait zero, 0
000514  7d100000  xwait zero, 0
000518  7d100000  xwait zero, 0
00051c  1d800000  lock zero, r1
000520  0d000020  ew_cfg zero, zero, zero, 16
000524  1d900000  unlock r1
000528  7d400000  xsignal_mode_cfg zero
00052c  9f8e6e00  addli sp, sp, 48
000530  00a00300  mfence { lm, sm, gm }
000534  00100000  exit
000538  00100000  exit
00053c  00100000  exit
000540  00100000  exit
000544  00100000  exit
000548  00100000  exit
00054c  00100000  exit
000550  00100000  exit
000554  00100000  exit
000558  00100000  exit
00055c  00100000  exit
000560  00100000  exit
000564  00100000  exit
000568  00100000  exit
00056c  00100000  exit
000570  00100000  exit
000574  00100000  exit
000578  00100000  exit
00057c  00100000  exit
000580  00100000  exit
000584  00100000  exit
000588  00100000  exit
00058c  00100000  exit
000590  00100000  exit
000594  00100000  exit
000598  00100000  exit
00059c  00100000  exit
0005a0  00100000  exit
0005a4  00100000  exit
0005a8  00100000  exit
0005ac  00100000  exit
0005b0  00100000  exit
0005b4  00100000  exit
0005b8  00100000  exit
0005bc  00100000  exit
0005c0  00100000  exit
0005c4  00100000  exit
0005c8  00100000  exit
0005cc  00100000  exit
0005d0  00100000  exit
0005d4  00100000  exit
0005d8  00100000  exit
0005dc  00100000  exit
0005e0  00100000  exit
0005e4  00100000  exit
0005e8  00100000  exit
0005ec  00100000  exit
0005f0  00100000  exit
0005f4  00100000  exit
0005f8  00100000  exit
0005fc  00100000  exit
000600  00100000  exit
000604  00100000  exit
000608  00100000  exit
00060c  00100000  exit
000610  00100000  exit
000614  00100000  exit
000618  00100000  exit
00061c  00100000  exit
000620  00100000  exit
000624  00100000  exit
000628  00100000  exit
00062c  00100000  exit
000630  00100000  exit
000634  00100000  exit
000638  00100000  exit
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
