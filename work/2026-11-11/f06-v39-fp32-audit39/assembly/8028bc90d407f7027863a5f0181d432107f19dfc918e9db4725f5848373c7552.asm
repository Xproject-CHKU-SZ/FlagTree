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
0001e4  4b9c1100  ble.s r3, r1, 772
0001e8  33930028  sext_int2long r[7:8], r1
0001ec  9f000008  addli r1, zero, 1024
0001f0  b3910128  sext_int2long r[4:5], r3
0001f4  6b5d8f00  load.d r[27:28], 8(r30)
0001f8  1f5e0000  addli r28, zero, 5
0001fc  9f270000  addli r15, zero, 2
000200  1f480000  addli r16, zero, 4
000204  9f180000  addli r17, zero, 1
000208  1f0b8000  addli r22, zero, 64
00020c  1f050040  addli r10, zero, 8192
000210  9f3c0000  addli r25, zero, 3
000214  b3850028  zext_int2long r[12:13], r1
000218  ab800d00  lui r1, 216
00021c  733c3ffe  store.d r[4:5], -8(r30)
000220  9f010010  addli r3, zero, 2048
000224  9b90d0b4  ori r1, r1, 2893
000228  b3860128  zext_int2long r[14:15], r3
00022c  b3010028  zext_int2long r[4:5], zero
000230  e74e1ffe  storeli.w r1, -20(r30)
000234  abf07fff  lui r1, 1046527
000238  73383ffe  store.d r[4:5], -16(r30)
00023c  9b90f0ff  ori r1, r1, 4095
000240  e70e1ffe  storeli.w r1, -24(r30)
000244  abf07f7f  lui r1, 522239
000248  9b90f0ff  ori r1, r1, 4095
00024c  674e1ffe  storeli.w r1, -28(r30)
000250  5b030000  j 24
000254  7d000800  xsignal r16, 0
000258  eb518fff  load.d r[4:5], -8(r30)
00025c  27130300  addli.d r[7:8], r[7:8], 1
000260  93303304  setlt.sl r1, r[7:8], r[4:5]
000264  379a0000  beq r1, zero, 644
000268  e3006f00  loadli.w r1,  48(r30)
00026c  e3415f00  loadli.w r3,  44(r30)
000270  8b101330  div.s r1, r6, r1
000274  8b903030  div.s r1, r1, r3
000278  b3910028  sext_int2long r[4:5], r1
00027c  9f301000  addli r1, zero, 11
000280  17b91102  sll.d r[19:20], r[4:5], r1
000284  9f600000  addli r1, zero, 6
000288  37211100  beq r2, r1, 72
00028c  9f010000  addli r3, zero, 0
000290  3b211101  bneq r2, r17, 72
000294  6b540f00  load.d r[9:10], 0(r30)
000298  1732f902  sll.d r[5:6], r[19:20], r15
00029c  7d900c00  xwait r25, 0
0002a0  1d000800  lock zero, r16
0002a4  9f000040  addli r1, zero, 8192
0002a8  1f050040  addli r10, zero, 8192
0002ac  15000000  dma_cfg zero, zero, zero, 0
0002b0  0b224410  add.ul r[5:6], r[9:10], r[5:6]
0002b4  15800204  dma_cfg zero, r5, zero, 2
0002b8  15001206  dma_cfg zero, r4, r1, 3
0002bc  95801009  dma_cfg r1, r1, r17, 4
0002c0  35000000  dma_run zero
0002c4  1d100800  unlock r16
0002c8  7d800700  xsignal r15, 0
0002cc  db010000  j 12
0002d0  9f110000  addli r3, zero, 1
0002d4  7d100e00  xwait r28, 0
0002d8  eb5b0fff  load.d r[24:25], -16(r30)
0002dc  9f100000  addli r1, zero, 1
0002e0  5b080000  j 64
0002e4  1732f202  sll.d r[5:6], r[5:6], r15
0002e8  1bba2b00  slli r20, r23, 2
0002ec  1d000800  lock zero, r16
0002f0  9b3a2400  slli r21, r8, 2
0002f4  15000000  dma_cfg zero, zero, zero, 0
0002f8  0b224d10  add.ul r[5:6], r[27:28], r[5:6]
0002fc  1f0a0a40  addli r20, r20, 8192
000300  15800204  dma_cfg zero, r5, zero, 2
000304  150a5207  dma_cfg r20, r4, r21, 3
000308  958a1a09  dma_cfg r21, r21, r17, 4
00030c  35000000  dma_run zero
000310  1d100800  unlock r16
000314  378d00fe  beq r1, zero, -192
000318  8b2b7411  add.ul r[24:25], r[9:10], r[24:25]
00031c  9f000000  addli r1, zero, 0
000320  0ba22b11  add.ul r[5:6], r[24:25], r[19:20]
000324  0bb47619  sub.sl r[9:10], r[14:15], r[24:25]
000328  9b801000  andi r1, r1, 1
00032c  0f12b270  mod.sl r[5:6], r[5:6], r[12:13]
000330  0bba4518  sub.sl r[21:22], r[12:13], r[5:6]
000334  0b244441  min.ul r[9:10], r[9:10], r[21:22]
000338  bbbe01fe  bneq r3, zero, -84
00033c  3bff00fe  bneq r1, zero, -36
000340  1f520000  addli r4, zero, 5
000344  3b254100  bneq r2, r4, 328
000348  7d900700  xwait r15, 0
00034c  7d100800  xwait r16, 0
000350  1d800700  lock zero, r15
000354  ab00803f  lui r1, 260096
000358  9f713000  addli r3, zero, 31
00035c  ab82ff40  lui r5, 266232
000360  2b0400c1  lui r8, 790528
000364  9f74f00f  addli r9, zero, 2047
000368  1f5e0000  addli r28, zero, 5
00036c  9f3c0000  addli r25, zero, 3
000370  0d000002  ew_cfg zero, zero, zero, 1
000374  8d900000  ewcoeff_cfg r1, r1, zero, 0
000378  0d800104  ew_cfg zero, r3, zero, 2
00037c  0d0b0006  ew_cfg r22, zero, zero, 3
000380  0d0b6b27  ew_cfg r22, r22, r22, 19
000384  2d00a000  dsmadd zero, zero, r10, 0
000388  0d000026  ew_cfg zero, zero, zero, 19
00038c  1d900700  unlock r15
000390  7d000200  xsignal r4, 0
000394  1f720000  addli r4, zero, 7
000398  7d100200  xwait r4, 0
00039c  1d800700  lock zero, r15
0003a0  1f521000  addli r4, zero, 13
0003a4  0d000002  ew_cfg zero, zero, zero, 1
0003a8  0d800104  ew_cfg zero, r3, zero, 2
0003ac  0d0b0006  ew_cfg r22, zero, zero, 3
0003b0  0d0b0b26  ew_cfg r22, r22, zero, 19
0003b4  0d020014  ew_cfg r4, zero, zero, 10
0003b8  6342dfff  loadli.w r4,  -20(r30)
0003bc  8d874816  ew_cfg r15, r17, r4, 11
0003c0  1f320000  addli r4, zero, 3
0003c4  0d00401a  ew_cfg zero, zero, r4, 13
0003c8  0d04581c  ew_cfg r8, r16, r5, 14
0003cc  ab420000  lui r5, 4
0003d0  1f041000  addli r8, zero, 8
0003d4  0d80001e  ew_cfg zero, r1, zero, 15
0003d8  cd220000  sslut r5, zero, 0
0003dc  0d000014  ew_cfg zero, zero, zero, 10
0003e0  0d000026  ew_cfg zero, zero, zero, 19
0003e4  1d900700  unlock r15
0003e8  7d100400  xwait r8, 0
0003ec  1d800700  lock zero, r15
0003f0  0d000002  ew_cfg zero, zero, zero, 1
0003f4  0d800404  ew_cfg zero, r9, zero, 2
0003f8  8d080006  ew_cfg r17, zero, zero, 3
0003fc  6309dfff  loadli.w r18,  -24(r30)
000400  0d190000  ewcoeff_cfg r18, zero, zero, 0
000404  2b690000  lui r18, 6
000408  2d290000  dscmpnsel r18, zero, zero, 0
00040c  1d900700  unlock r15
000410  1d800700  lock zero, r15
000414  0d000002  ew_cfg zero, zero, zero, 1
000418  0d800404  ew_cfg zero, r9, zero, 2
00041c  8d080006  ew_cfg r17, zero, zero, 3
000420  e344cfff  loadli.w r9,  -28(r30)
000424  8d140000  ewcoeff_cfg r9, zero, zero, 0
000428  ab0480bf  lui r9, 784384
00042c  2d292909  dscmpnsel r18, r18, r18, 4
000430  1d900700  unlock r15
000434  1d800700  lock zero, r15
000438  0d000002  ew_cfg zero, zero, zero, 1
00043c  8d900400  ewcoeff_cfg r1, r9, zero, 0
000440  0d800104  ew_cfg zero, r3, zero, 2
000444  0d0b0006  ew_cfg r22, zero, zero, 3
000448  0d0b6b27  ew_cfg r22, r22, r22, 19
00044c  2d002001  dsmadd zero, zero, r18, 0
000450  0d000026  ew_cfg zero, zero, zero, 19
000454  1d900700  unlock r15
000458  7d000400  xsignal r8, 0
00045c  1d800700  lock zero, r15
000460  0d000002  ew_cfg zero, zero, zero, 1
000464  8d900000  ewcoeff_cfg r1, r1, zero, 0
000468  9f600000  addli r1, zero, 6
00046c  0d800104  ew_cfg zero, r3, zero, 2
000470  0d0b0006  ew_cfg r22, zero, zero, 3
000474  0d0b6b27  ew_cfg r22, r22, r22, 19
000478  ad820200  dsmadd r5, r5, zero, 0
00047c  0d000026  ew_cfg zero, zero, zero, 19
000480  1d900700  unlock r15
000484  7d000200  xsignal r4, 0
000488  5b0b0000  j 88
00048c  1f5e0000  addli r28, zero, 5
000490  3b2701fe  bneq r2, zero, -568
000494  9f600000  addli r1, zero, 6
000498  6b540f01  load.d r[9:10], 16(r30)
00049c  9f520000  addli r5, zero, 5
0004a0  9731f902  sll.d r[4:5], r[19:20], r15
0004a4  1f050040  addli r10, zero, 8192
0004a8  1f5e0000  addli r28, zero, 5
0004ac  7d900000  xwait r1, 0
0004b0  1d800200  lock zero, r5
0004b4  9f000040  addli r1, zero, 8192
0004b8  8b213410  add.ul r[4:5], r[9:10], r[4:5]
0004bc  15000000  dma_cfg zero, zero, zero, 0
0004c0  2b440000  lui r8, 4
0004c4  15800802  dma_cfg zero, r17, zero, 1
0004c8  15020004  dma_cfg r4, zero, zero, 2
0004cc  95011406  dma_cfg r3, r8, r1, 3
0004d0  95801009  dma_cfg r1, r1, r17, 4
0004d4  9f700000  addli r1, zero, 7
0004d8  35000000  dma_run zero
0004dc  1d900200  unlock r5
0004e0  7d800000  xsignal r1, 0
0004e4  dbaeffff  j -652
0004e8  7d000000  xsignal zero, 0
0004ec  bb600100  bneq r2, zero, 56
0004f0  9f200000  addli r1, zero, 2
0004f4  7d100000  xwait zero, 0
0004f8  7d100000  xwait zero, 0
0004fc  7d100000  xwait zero, 0
000500  7d100000  xwait zero, 0
000504  7d100000  xwait zero, 0
000508  7d100000  xwait zero, 0
00050c  7d100000  xwait zero, 0
000510  7d100000  xwait zero, 0
000514  1d800000  lock zero, r1
000518  0d000020  ew_cfg zero, zero, zero, 16
00051c  1d900000  unlock r1
000520  7d400000  xsignal_mode_cfg zero
000524  9f8e4e00  addli sp, sp, 32
000528  00a00300  mfence { lm, sm, gm }
00052c  00100000  exit
000530  00100000  exit
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
