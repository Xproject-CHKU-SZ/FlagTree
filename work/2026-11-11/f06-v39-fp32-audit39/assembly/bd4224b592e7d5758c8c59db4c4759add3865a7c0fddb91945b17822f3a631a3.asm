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
0000bc  80340002  core_id r9
0000c0  1f8f5e00  addli r30, sp, 40
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7900400  beq r9, zero, 36
0000cc  abf1ffff  lui r3, 1048575
0000d0  7d900000  xwait r1, 0
0000d4  7d900000  xwait r1, 0
0000d8  7d100000  xwait zero, 0
0000dc  9b90f1ff  ori r1, r3, 4095
0000e0  80a10004  csr_set csr3, r1
0000e4  00d00100  sync_group
0000e8  db180000  j 196
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
00014c  9f510000  addli r3, zero, 5
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
00018c  9f300000  addli r1, zero, 3
000190  00d00100  sync_group
000194  7d800000  xsignal r1, 0
000198  7d800100  xsignal r3, 0
00019c  9f700000  addli r1, zero, 7
0001a0  9f011000  addli r3, zero, 8
0001a4  7d800000  xsignal r1, 0
0001a8  7d800100  xsignal r3, 0
0001ac  e3005f00  loadli.w r1,  40(r30)
0001b0  e3415f00  loadli.w r3,  44(r30)
0001b4  80d20002  load_param_i r5, 1
0001b8  63026f00  loadli.w r4,  48(r30)
0001bc  8b901120  mul.s r1, r3, r1
0001c0  9f810200  addli r3, r5, 0
0001c4  8b914050  fmac.s r3, r1, r4
0001c8  0b924020  mul.s r4, r1, r4
0001cc  9ff1f1ff  addli r3, r3, -1
0001d0  8b915130  div.s r3, r3, r5
0001d4  80520002  load_param_i r5, 0
0001d8  8b905120  mul.s r1, r3, r5
0001dc  8b915150  fmac.s r3, r3, r5
0001e0  8b914140  min.s r3, r3, r4
0001e4  4bbc1100  ble.s r3, r1, 780
0001e8  b3930028  sext_int2long r[8:9], r1
0001ec  9f000008  addli r1, zero, 1024
0001f0  b3910128  sext_int2long r[4:5], r3
0001f4  eb5d8f00  load.d r[28:29], 8(r30)
0001f8  9f650000  addli r11, zero, 6
0001fc  1f510000  addli r2, zero, 5
000200  ab880000  lui r17, 8
000204  1f290000  addli r18, zero, 2
000208  9f490000  addli r19, zero, 4
00020c  1f1a0000  addli r20, zero, 1
000210  9f7a0000  addli r21, zero, 7
000214  1f0c0002  addli r24, zero, 256
000218  b3860028  zext_int2long r[14:15], r1
00021c  ab800d00  lui r1, 216
000220  73383ffe  store.d r[4:5], -16(r30)
000224  9f010040  addli r3, zero, 8192
000228  9b90d0b4  ori r1, r1, 2893
00022c  b3870128  zext_int2long r[16:17], r3
000230  b3010028  zext_int2long r[4:5], zero
000234  674e1ffe  storeli.w r1, -28(r30)
000238  abf07fff  lui r1, 1046527
00023c  73343ffe  store.d r[4:5], -24(r30)
000240  9b90f0ff  ori r1, r1, 4095
000244  670e1ffe  storeli.w r1, -32(r30)
000248  abf07f7f  lui r1, 522239
00024c  9b90f0ff  ori r1, r1, 4095
000250  e74d1ffe  storeli.w r1, -36(r30)
000254  5b040000  j 32
000258  7d800900  xsignal r19, 0
00025c  eb538fff  load.d r[8:9], -8(r30)
000260  80340002  core_id r9
000264  eb510fff  load.d r[4:5], -16(r30)
000268  a7930300  addli.d r[8:9], r[8:9], 1
00026c  93b03304  setlt.sl r1, r[8:9], r[4:5]
000270  378a0000  beq r1, zero, 640
000274  e3006f00  loadli.w r1,  48(r30)
000278  e3415f00  loadli.w r3,  44(r30)
00027c  733c7ffe  store.d r[8:9], -8(r30)
000280  8b901330  div.s r1, r7, r1
000284  8b903030  div.s r1, r1, r3
000288  b3910028  sext_int2long r[4:5], r1
00028c  9f501000  addli r1, zero, 13
000290  97bc1102  sll.d r[26:27], r[4:5], r1
000294  3791b400  beq r9, r11, 68
000298  9f000000  addli r1, zero, 0
00029c  3b914401  bneq r9, r20, 68
0002a0  9f320000  addli r5, zero, 3
0002a4  97b12c03  sll.d r[4:5], r[26:27], r18
0002a8  7d900200  xwait r5, 0
0002ac  eb520f00  load.d r[6:7], 0(r30)
0002b0  1d800900  lock zero, r19
0002b4  15000000  dma_cfg zero, zero, zero, 0
0002b8  8ba13210  add.ul r[4:5], r[6:7], r[4:5]
0002bc  15000204  dma_cfg zero, r4, zero, 2
0002c0  15801107  dma_cfg zero, r3, r17, 3
0002c4  95884809  dma_cfg r17, r17, r20, 4
0002c8  35000000  dma_run zero
0002cc  1d900900  unlock r19
0002d0  7d000900  xsignal r18, 0
0002d4  db010000  j 12
0002d8  9f100000  addli r1, zero, 1
0002dc  7d100100  xwait r2, 0
0002e0  6b5b8ffe  load.d r[23:24], -24(r30)
0002e4  a7010b00  addli.d r[4:5], r[23:24], 0
0002e8  5b090000  j 72
0002ec  b3840528  zext_int2long r[10:11], r11
0002f0  97b32303  sll.d r[8:9], r[8:9], r18
0002f4  1d800900  lock zero, r19
0002f8  1bb62200  slli r12, r5, 2
0002fc  15000000  dma_cfg zero, zero, zero, 0
000300  93a46405  setlt.ul r9, r[10:11], r[23:24]
000304  1bb52100  slli r10, r3, 2
000308  8ba37d10  add.ul r[8:9], r[28:29], r[8:9]
00030c  0b151511  add.s r10, r10, r17
000310  15000404  dma_cfg zero, r8, zero, 2
000314  1585c306  dma_cfg r10, r7, r12, 3
000318  15064609  dma_cfg r12, r12, r20, 4
00031c  35000000  dma_run zero
000320  1d900900  unlock r19
000324  bbdc04fe  bneq r9, zero, -204
000328  271b0b00  addli.d r[23:24], r[23:24], 1
00032c  8ba13210  add.ul r[4:5], r[6:7], r[4:5]
000330  8ba29111  add.ul r[6:7], r[4:5], r[26:27]
000334  8bb43718  sub.sl r[10:11], r[16:17], r[4:5]
000338  8f93d270  mod.sl r[8:9], r[6:7], r[14:15]
00033c  8bb27618  sub.sl r[6:7], r[14:15], r[8:9]
000340  8ba25440  min.ul r[6:7], r[10:11], r[6:7]
000344  bbae00fe  bneq r1, zero, -88
000348  b3830a28  zext_int2long r[8:9], r21
00034c  93237b04  setlt.ul r7, r[23:24], r[8:9]
000350  3bef03fe  bneq r7, zero, -40
000354  9f500000  addli r1, zero, 5
000358  80340002  core_id r9
00035c  3b951400  bneq r9, r1, 324
000360  7d100900  xwait r18, 0
000364  7d900900  xwait r19, 0
000368  1d000900  lock zero, r18
00036c  ab01803f  lui r3, 260096
000370  1f723000  addli r4, zero, 31
000374  ab82ff40  lui r5, 266232
000378  2b0300c1  lui r6, 790528
00037c  9f73f03f  addli r7, zero, 8191
000380  1f510000  addli r2, zero, 5
000384  0d000002  ew_cfg zero, zero, zero, 1
000388  8d910100  ewcoeff_cfg r3, r3, zero, 0
00038c  0d000204  ew_cfg zero, r4, zero, 2
000390  0d0c0006  ew_cfg r24, zero, zero, 3
000394  0d0c8c27  ew_cfg r24, r24, r24, 19
000398  2d001001  dsmadd zero, zero, r17, 0
00039c  0d000026  ew_cfg zero, zero, zero, 19
0003a0  1d100900  unlock r18
0003a4  7d800000  xsignal r1, 0
0003a8  7d900a00  xwait r21, 0
0003ac  1d000900  lock zero, r18
0003b0  9f501000  addli r1, zero, 13
0003b4  0d000002  ew_cfg zero, zero, zero, 1
0003b8  0d000204  ew_cfg zero, r4, zero, 2
0003bc  0d0c0006  ew_cfg r24, zero, zero, 3
0003c0  0d0c0c26  ew_cfg r24, r24, zero, 19
0003c4  8d000014  ew_cfg r1, zero, zero, 10
0003c8  e340cfff  loadli.w r1,  -28(r30)
0003cc  0d091a16  ew_cfg r18, r20, r1, 11
0003d0  9f300000  addli r1, zero, 3
0003d4  0d00101a  ew_cfg zero, zero, r1, 13
0003d8  0d83591c  ew_cfg r6, r19, r5, 14
0003dc  ab020100  lui r5, 16
0003e0  1f031000  addli r6, zero, 8
0003e4  0d80011e  ew_cfg zero, r3, zero, 15
0003e8  cd220000  sslut r5, zero, 0
0003ec  0d000014  ew_cfg zero, zero, zero, 10
0003f0  0d000026  ew_cfg zero, zero, zero, 19
0003f4  1d100900  unlock r18
0003f8  7d100300  xwait r6, 0
0003fc  1d000900  lock zero, r18
000400  0d000002  ew_cfg zero, zero, zero, 1
000404  0d800304  ew_cfg zero, r7, zero, 2
000408  0d0a0006  ew_cfg r20, zero, zero, 3
00040c  6304cfff  loadli.w r8,  -32(r30)
000410  0d140000  ewcoeff_cfg r8, zero, zero, 0
000414  2b840100  lui r8, 24
000418  2d240000  dscmpnsel r8, zero, zero, 0
00041c  1d100900  unlock r18
000420  1d000900  lock zero, r18
000424  0d000002  ew_cfg zero, zero, zero, 1
000428  0d800304  ew_cfg zero, r7, zero, 2
00042c  0d0a0006  ew_cfg r20, zero, zero, 3
000430  e343bfff  loadli.w r7,  -36(r30)
000434  8d130000  ewcoeff_cfg r7, zero, zero, 0
000438  ab0380bf  lui r7, 784384
00043c  2d248408  dscmpnsel r8, r8, r8, 4
000440  1d100900  unlock r18
000444  1d000900  lock zero, r18
000448  0d000002  ew_cfg zero, zero, zero, 1
00044c  8d910300  ewcoeff_cfg r3, r7, zero, 0
000450  0d000204  ew_cfg zero, r4, zero, 2
000454  0d0c0006  ew_cfg r24, zero, zero, 3
000458  0d0c8c27  ew_cfg r24, r24, r24, 19
00045c  2d008000  dsmadd zero, zero, r8, 0
000460  0d000026  ew_cfg zero, zero, zero, 19
000464  1d100900  unlock r18
000468  7d000300  xsignal r6, 0
00046c  1d000900  lock zero, r18
000470  0d000002  ew_cfg zero, zero, zero, 1
000474  8d910100  ewcoeff_cfg r3, r3, zero, 0
000478  0d000204  ew_cfg zero, r4, zero, 2
00047c  0d0c0006  ew_cfg r24, zero, zero, 3
000480  0d0c8c27  ew_cfg r24, r24, r24, 19
000484  ad820200  dsmadd r5, r5, zero, 0
000488  0d000026  ew_cfg zero, zero, zero, 19
00048c  1d100900  unlock r18
000490  7d800000  xsignal r1, 0
000494  7d800500  xsignal r11, 0
000498  eb538fff  load.d r[8:9], -8(r30)
00049c  5bb9ffff  j -568
0004a0  eb538fff  load.d r[8:9], -8(r30)
0004a4  1f510000  addli r2, zero, 5
0004a8  bbf604fe  bneq r9, zero, -580
0004ac  eb520f01  load.d r[6:7], 16(r30)
0004b0  9f500000  addli r1, zero, 5
0004b4  97b12c03  sll.d r[4:5], r[26:27], r18
0004b8  7d900500  xwait r11, 0
0004bc  2b010100  lui r2, 16
0004c0  1d800000  lock zero, r1
0004c4  15000000  dma_cfg zero, zero, zero, 0
0004c8  8ba13210  add.ul r[4:5], r[6:7], r[4:5]
0004cc  15000a02  dma_cfg zero, r20, zero, 1
0004d0  15020004  dma_cfg r4, zero, zero, 2
0004d4  95011107  dma_cfg r3, r2, r17, 3
0004d8  1f510000  addli r2, zero, 5
0004dc  95884809  dma_cfg r17, r17, r20, 4
0004e0  35000000  dma_run zero
0004e4  1d900000  unlock r1
0004e8  7d800a00  xsignal r21, 0
0004ec  5bafffff  j -648
0004f0  7d000000  xsignal zero, 0
0004f4  bbe00400  bneq r9, zero, 56
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
00052c  9f8e5e00  addli sp, sp, 40
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
