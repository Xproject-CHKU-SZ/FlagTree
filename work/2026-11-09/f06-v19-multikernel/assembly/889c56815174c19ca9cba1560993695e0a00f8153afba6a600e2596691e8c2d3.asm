; SHA-256 889c56815174c19ca9cba1560993695e0a00f8153afba6a600e2596691e8c2d3
; P800 SDNN · XTDK LLVM 19 · 1071 / 1071 words decoded
; bound names: triton_unk_fused_0
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
0000b8  1f8f7e00  addli r30, sp, 56
0000bc  9f100000  addli r1, zero, 1
0000c0  00360002  core_id r12
0000c4  e3495f00  loadli.w r19,  44(r30)
0000c8  7dc00000  xsignal_mode_cfg r1
0000cc  b7100600  beq r12, zero, 36
0000d0  2bf1ffff  lui r2, 1048575
0000d4  7d900000  xwait r1, 0
0000d8  7d900000  xwait r1, 0
0000dc  7d100000  xwait zero, 0
0000e0  9b10f1ff  ori r1, r2, 4095
0000e4  80a10004  csr_set csr3, r1
0000e8  00d00100  sync_group
0000ec  db1e0000  j 244
0000f0  1f220000  addli r4, zero, 2
0000f4  fdd00000  uni_sram_cfg r1, r1
0000f8  9f420000  addli r5, zero, 4
0000fc  6b510f02  load.d r[3:4], 32(r30)
000100  1f030020  addli r6, zero, 4096
000104  1d000200  lock zero, r4
000108  8d000020  ew_cfg r1, zero, zero, 16
00010c  1d100200  unlock r4
000110  1d800200  lock zero, r5
000114  15000000  dma_cfg zero, zero, zero, 0
000118  15800104  dma_cfg zero, r3, zero, 2
00011c  15006106  dma_cfg zero, r2, r6, 3
000120  1f014000  addli r2, zero, 32
000124  9f010008  addli r3, zero, 1024
000128  15001008  dma_cfg zero, zero, r1, 4
00012c  35000000  dma_run zero
000130  1d900200  unlock r5
000134  7d800000  xsignal r1, 0
000138  7d900000  xwait r1, 0
00013c  1d000000  lock zero, zero
000140  01020000  ds_cfg r4, zero, 0
000144  01000002  ds_cfg zero, zero, 1
000148  01000016  ds_cfg zero, zero, 11
00014c  0101001a  ds_cfg r2, zero, 13
000150  1f011000  addli r2, zero, 8
000154  8101001c  ds_cfg r3, zero, 14
000158  21133008  shuffle_batch r6, zero, r3, 4
00015c  1d100000  unlock zero
000160  7d800000  xsignal r1, 0
000164  7d900000  xwait r1, 0
000168  1d000200  lock zero, r4
00016c  ab100100  lui r1, 17
000170  0d200300  ewtable_cfg r6, 0
000174  0da00002  ewtable_cfg r1, 1
000178  abf0ffff  lui r1, 1048575
00017c  1d100200  unlock r4
000180  7d000000  xsignal zero, 0
000184  7d100000  xwait zero, 0
000188  9b90f0ff  ori r1, r1, 4095
00018c  80a10004  csr_set csr3, r1
000190  9f500000  addli r1, zero, 5
000194  00d00100  sync_group
000198  7d800000  xsignal r1, 0
00019c  7d000100  xsignal r2, 0
0001a0  9f201000  addli r1, zero, 10
0001a4  1f411000  addli r2, zero, 12
0001a8  7d800000  xsignal r1, 0
0001ac  7d000100  xsignal r2, 0
0001b0  9f601000  addli r1, zero, 14
0001b4  1f213000  addli r2, zero, 26
0001b8  7d800000  xsignal r1, 0
0001bc  7d000100  xsignal r2, 0
0001c0  9f502000  addli r1, zero, 21
0001c4  1f712000  addli r2, zero, 23
0001c8  7d800000  xsignal r1, 0
0001cc  7d000100  xsignal r2, 0
0001d0  9f503000  addli r1, zero, 29
0001d4  1f713000  addli r2, zero, 31
0001d8  7d800000  xsignal r1, 0
0001dc  7d000100  xsignal r2, 0
0001e0  e3005f00  loadli.w r1,  40(r30)
0001e4  63415f00  loadli.w r2,  44(r30)
0001e8  00d20002  load_param_i r4, 1
0001ec  e3016f00  loadli.w r3,  48(r30)
0001f0  8b101120  mul.s r1, r2, r1
0001f4  1f010200  addli r2, r4, 0
0001f8  0b913050  fmac.s r2, r1, r3
0001fc  8b913020  mul.s r3, r1, r3
000200  1f71f1ff  addli r2, r2, -1
000204  0b114130  div.s r2, r2, r4
000208  00520002  load_param_i r4, 0
00020c  8b104120  mul.s r1, r2, r4
000210  0b114150  fmac.s r2, r2, r4
000214  0b113140  min.s r2, r2, r3
000218  4b701106  ble.s r2, r1, 3100
00021c  33110128  sext_int2long r[3:4], r2
000220  33920028  sext_int2long r[5:6], r1
000224  9f000008  addli r1, zero, 1024
000228  1f6a0000  addli r20, zero, 6
00022c  9f7d0000  addli r27, zero, 7
000230  1f250000  addli r10, zero, 2
000234  9f160000  addli r13, zero, 1
000238  2b4e0000  lui r28, 4
00023c  733c2ffc  store.d r[3:4], -40(r30)
000240  b3800028  zext_int2long r[2:3], r1
000244  733c1ffe  store.d r[2:3], -8(r30)
000248  ab20373d  lui r1, 250738
00024c  2b810300  lui r2, 56
000250  9b903071  ori r1, r1, 1811
000254  674d1ffe  storeli.w r1, -44(r30)
000258  ab404c3f  lui r1, 259268
00025c  9b90a022  ori r1, r1, 554
000260  670d1ffe  storeli.w r1, -48(r30)
000264  9b103184  ori r1, r2, 2115
000268  2bf17f00  lui r2, 2047
00026c  e74c1ffe  storeli.w r1, -52(r30)
000270  abf0ff7f  lui r1, 524287
000274  1b1cf1ff  ori r24, r2, 4095
000278  9b9bf0ff  ori r23, r1, 4095
00027c  b3000028  zext_int2long r[2:3], zero
000280  73301ffe  store.d r[2:3], -32(r30)
000284  ab00807f  lui r1, 522240
000288  db0a0000  j 84
00028c  1f211000  addli r2, zero, 10
000290  00200100  mfence { sm }
000294  e3495f00  loadli.w r19,  44(r30)
000298  00360002  core_id r12
00029c  1f6a0000  addli r20, zero, 6
0002a0  9f7d0000  addli r27, zero, 7
0002a4  1f250000  addli r10, zero, 2
0002a8  9f160000  addli r13, zero, 1
0002ac  7d000100  xsignal r2, 0
0002b0  1f412000  addli r2, zero, 20
0002b4  7d000100  xsignal r2, 0
0002b8  1f513000  addli r2, zero, 29
0002bc  7d000100  xsignal r2, 0
0002c0  1f713000  addli r2, zero, 31
0002c4  7d000100  xsignal r2, 0
0002c8  6b528ffe  load.d r[5:6], -24(r30)
0002cc  6b518ffd  load.d r[3:4], -40(r30)
0002d0  27120200  addli.d r[5:6], r[5:6], 1
0002d4  13312204  setlt.sl r2, r[5:6], r[3:4]
0002d8  377d0104  beq r2, zero, 2908
0002dc  63016f00  loadli.w r2,  48(r30)
0002e0  1f131000  addli r6, zero, 9
0002e4  73344ffe  store.d r[5:6], -24(r30)
0002e8  0b112230  div.s r2, r4, r2
0002ec  0b113131  div.s r2, r2, r19
0002f0  33110128  sext_int2long r[3:4], r2
0002f4  17336102  sll.d r[7:8], r[3:4], r6
0002f8  37414601  beq r12, r20, 80
0002fc  bb01d600  bneq r12, r13, 96
000300  6b540f00  load.d r[9:10], 0(r30)
000304  9731a302  sll.d r[4:5], r[7:8], r10
000308  9f520000  addli r5, zero, 5
00030c  1f010000  addli r2, zero, 0
000310  9f150000  addli r11, zero, 1
000314  7d900200  xwait r5, 0
000318  9f020010  addli r5, zero, 2048
00031c  8b213410  add.ul r[4:5], r[9:10], r[4:5]
000320  1f440000  addli r8, zero, 4
000324  1d000400  lock zero, r8
000328  15000000  dma_cfg zero, zero, zero, 0
00032c  15000204  dma_cfg zero, r4, zero, 2
000330  15805106  dma_cfg zero, r3, r5, 3
000334  9582d208  dma_cfg r5, r5, r13, 4
000338  35000000  dma_run zero
00033c  1d100400  unlock r8
000340  7d000500  xsignal r10, 0
000344  5b040000  j 32
000348  9f011000  addli r3, zero, 8
00034c  9f150000  addli r11, zero, 1
000350  1f110000  addli r2, zero, 1
000354  7d900100  xwait r3, 0
000358  db010000  j 12
00035c  9f150000  addli r11, zero, 1
000360  1f010000  addli r2, zero, 0
000364  eb518fff  load.d r[4:5], -8(r30)
000368  9f221000  addli r5, zero, 10
00036c  8f113370  mod.sl r[4:5], r[7:8], r[4:5]
000370  a7f1f10b  addli.d r[4:5], r[4:5], 1535
000374  17c45102  srl.d r[9:10], r[4:5], r5
000378  eb510ffe  load.d r[4:5], -32(r30)
00037c  93213400  seteq.d r3, r[9:10], r[4:5]
000380  1f020004  addli r4, zero, 512
000384  33020228  zext_int2long r[5:6], r4
000388  bbf10100  bneq r3, zero, 124
00038c  eb560ffe  load.d r[14:15], -32(r30)
000390  b3870528  zext_int2long r[16:17], r11
000394  db020000  j 20
000398  93a18704  setlt.ul r3, r[16:17], r[9:10]
00039c  8ba6d810  add.ul r[14:15], r[18:19], r[14:15]
0003a0  b3070528  zext_int2long r[16:17], r10
0003a4  b7810100  beq r3, zero, 96
0003a8  eb5c8fff  load.d r[26:27], -8(r30)
0003ac  8ba86610  add.ul r[18:19], r[14:15], r[7:8]
0003b0  8f9a9871  mod.sl r[22:23], r[18:19], r[26:27]
0003b4  8bb85c19  sub.sl r[18:19], r[26:27], r[22:23]
0003b8  8b3cd218  sub.sl r[26:27], r[5:6], r[14:15]
0003bc  8ba81c41  min.ul r[18:19], r[26:27], r[18:19]
0003c0  376f01fe  beq r2, zero, -40
0003c4  eb5c8f00  load.d r[26:27], 8(r30)
0003c8  97baaa02  sll.d r[22:23], r[22:23], r10
0003cc  9bb12600  slli r3, r13, 2
0003d0  1bb52800  slli r10, r17, 2
0003d4  9f810110  addli r3, r3, 2048
0003d8  8baa5c11  add.ul r[22:23], r[26:27], r[22:23]
0003dc  9f4c0000  addli r25, zero, 4
0003e0  1d800c00  lock zero, r25
0003e4  15000000  dma_cfg zero, zero, zero, 0
0003e8  15000b04  dma_cfg zero, r22, zero, 2
0003ec  9581aa06  dma_cfg r3, r21, r10, 3
0003f0  1505b508  dma_cfg r10, r10, r11, 4
0003f4  1f250000  addli r10, zero, 2
0003f8  35000000  dma_run zero
0003fc  1d900c00  unlock r25
000400  5bf3ffff  j -104
000404  37200100  beq r2, zero, 8
000408  7d800d00  xsignal r27, 0
00040c  1b110e80  ori r2, r28, 2048
000410  674f2ffe  storeli.w r2, -12(r30)
000414  1f510000  addli r2, zero, 5
000418  373e2602  beq r12, r2, 1932
00041c  1f310000  addli r2, zero, 3
000420  3b172604  bneq r12, r2, 2500
000424  7d100100  xwait r2, 0
000428  1f311000  addli r2, zero, 11
00042c  33040028  zext_int2long r[9:10], zero
000430  ab050080  lui r11, 524288
000434  2b068041  lui r12, 268288
000438  2b0a4000  lui r20, 1024
00043c  7d100100  xwait r2, 0
000440  1f511000  addli r2, zero, 13
000444  7d100100  xwait r2, 0
000448  1f512000  addli r2, zero, 21
00044c  7d100100  xwait r2, 0
000450  3d000000  xfence
000454  00a00300  mfence { lm, sm, gm }
000458  5b060000  j 48
00045c  27440400  addli.d r[9:10], r[9:10], 4
000460  9f411160  addli r3, r2, 12300
000464  9f060160  addli r13, r2, 12288
000468  13234402  setneq.d r6, r[9:10], r[5:6]
00046c  73e0a100  stores.w r10, 0(r3)
000470  9f011160  addli r3, r2, 12296
000474  1f410160  addli r2, r2, 12292
000478  73e07600  stores.w r7, 0(r13)
00047c  73e00101  stores.w r16, 0(r3)
000480  7360f100  stores.w r15, 0(r2)
000484  37250300  beq r6, zero, 328
000488  1b312400  slli r2, r8, 2
00048c  9f010130  addli r3, r2, 6144
000490  ef430100  loads.w r7, 0(r2)
000494  1f430130  addli r6, r2, 6148
000498  1f451130  addli r10, r2, 6156
00049c  9f490140  addli r19, r2, 8196
0004a0  6f494100  loads.w r18, 4(r2)
0004a4  ef488100  loads.w r17, 8(r2)
0004a8  6f47c100  loads.w r14, 12(r2)
0004ac  efc10100  loads.w r3, 0(r3)
0004b0  ef470300  loads.w r15, 0(r6)
0004b4  1f031130  addli r6, r2, 6152
0004b8  ef460500  loads.w r13, 0(r10)
0004bc  1f051140  addli r10, r2, 8200
0004c0  efc90900  loads.w r19, 0(r19)
0004c4  6f480300  loads.w r16, 0(r6)
0004c8  1f431140  addli r6, r2, 8204
0004cc  6f430300  loads.w r6, 0(r6)
0004d0  97837301  and r7, r7, r23
0004d4  97817101  and r3, r3, r23
0004d8  138b0300  seteq r22, r7, zero
0004dc  938c1300  seteq r25, r7, r1
0004e0  938a1100  seteq r21, r3, r1
0004e4  138d0100  seteq r26, r3, zero
0004e8  8b837148  max.u r7, r3, r7
0004ec  ef410500  loads.w r3, 0(r10)
0004f0  93837004  setlt.u r7, r1, r7
0004f4  17856a01  and r10, r21, r22
0004f8  970a9d01  and r21, r26, r25
0004fc  17155501  or r10, r10, r21
000500  979aa300  or r21, r7, r10
000504  2b05c07f  lui r10, 523264
000508  ab03c07f  lui r7, 523264
00050c  3bb00a00  bneq r21, zero, 12
000510  9f030140  addli r7, r2, 8192
000514  efc30300  loads.w r7, 0(r7)
000518  97877701  and r15, r15, r23
00051c  17097901  and r18, r18, r23
000520  938a1700  seteq r21, r15, r1
000524  138d0700  seteq r26, r15, zero
000528  130b0900  seteq r22, r18, zero
00052c  930c1900  seteq r25, r18, r1
000530  8b872749  max.u r15, r15, r18
000534  9387f004  setlt.u r15, r1, r15
000538  17896a01  and r18, r21, r22
00053c  970a9d01  and r21, r26, r25
000540  17195901  or r18, r18, r21
000544  17992701  or r18, r15, r18
000548  ab07c07f  lui r15, 523264
00054c  3b200900  bneq r18, zero, 8
000550  9f870900  addli r15, r19, 0
000554  17087801  and r16, r16, r23
000558  97887801  and r17, r17, r23
00055c  13091800  seteq r18, r16, r1
000560  130b0800  seteq r22, r16, zero
000564  93890800  seteq r19, r17, zero
000568  938a1800  seteq r21, r17, r1
00056c  0b081849  max.u r16, r16, r17
000570  13880005  setlt.u r16, r1, r16
000574  97083901  and r17, r18, r19
000578  17095b01  and r18, r22, r21
00057c  97982801  or r17, r17, r18
000580  97181801  or r17, r16, r17
000584  2b08c07f  lui r16, 523264
000588  3ba00800  bneq r17, zero, 8
00058c  1f880100  addli r16, r3, 0
000590  97817601  and r3, r13, r23
000594  97067701  and r13, r14, r23
000598  13871100  seteq r14, r3, r1
00059c  93890100  seteq r19, r3, zero
0005a0  93880600  seteq r17, r13, zero
0005a4  13891600  seteq r18, r13, r1
0005a8  8b81d148  max.u r3, r3, r13
0005ac  93813004  setlt.u r3, r1, r3
0005b0  97061701  and r13, r14, r17
0005b4  17872901  and r14, r19, r18
0005b8  9796e600  or r13, r13, r14
0005bc  9791d100  or r3, r3, r13
0005c0  3bfa01fe  bneq r3, zero, -356
0005c4  1f050300  addli r10, r6, 0
0005c8  dbd2ffff  j -364
0005cc  1f410000  addli r2, zero, 4
0005d0  00200100  mfence { sm }
0005d4  7d000100  xsignal r2, 0
0005d8  1f411000  addli r2, zero, 12
0005dc  7d000100  xsignal r2, 0
0005e0  1f611000  addli r2, zero, 14
0005e4  7d000100  xsignal r2, 0
0005e8  1f711000  addli r2, zero, 15
0005ec  7d000100  xsignal r2, 0
0005f0  1f612000  addli r2, zero, 22
0005f4  7d100100  xwait r2, 0
0005f8  1f213000  addli r2, zero, 26
0005fc  7d100100  xwait r2, 0
000600  3d000000  xfence
000604  33010028  zext_int2long r[3:4], zero
000608  00a00300  mfence { lm, sm, gm }
00060c  1b332100  slli r6, r2, 2
000610  27011100  addli.d r[3:4], r[3:4], 8
000614  9f031370  addli r7, r6, 14344
000618  1f040370  addli r8, r6, 14336
00061c  9f063370  addli r13, r6, 14360
000620  13294102  setneq.d r18, r[3:4], r[5:6]
000624  9f090350  addli r19, r6, 10240
000628  efd40300  loads.d r[10:11], 0(r7)
00062c  9f032370  addli r7, r6, 14352
000630  6f570400  loads.d r[15:16], 0(r8)
000634  6fd80600  loads.d r[17:18], 0(r13)
000638  9f061350  addli r13, r6, 10248
00063c  efd30300  loads.d r[8:9], 0(r7)
000640  73f09600  stores.d r[10:11], 0(r13)
000644  9f042350  addli r9, r6, 10256
000648  1f033350  addli r6, r6, 10264
00064c  73f0e900  stores.d r[15:16], 0(r19)
000650  73700301  stores.d r[17:18], 0(r6)
000654  73f07400  stores.d r[8:9], 0(r9)
000658  bb5e09fe  bneq r18, zero, -76
00065c  1f712000  addli r2, zero, 23
000660  00200100  mfence { sm }
000664  9f013000  addli r3, zero, 24
000668  33040028  zext_int2long r[9:10], zero
00066c  7d000100  xsignal r2, 0
000670  1f012000  addli r2, zero, 16
000674  7d800100  xsignal r3, 0
000678  7d100100  xwait r2, 0
00067c  7d900100  xwait r3, 0
000680  3d000000  xfence
000684  00a00300  mfence { lm, sm, gm }
000688  5b0a0000  j 80
00068c  1f451160  addli r10, r2, 12300
000690  27041400  addli.d r[9:10], r[9:10], 8
000694  9f010160  addli r3, r2, 12288
000698  1f082160  addli r16, r2, 12304
00069c  73601501  stores.w r17, 0(r10)
0006a0  9f480160  addli r17, r2, 12292
0006a4  1f051160  addli r10, r2, 12296
0006a8  73e06100  stores.w r6, 0(r3)
0006ac  9f013160  addli r3, r2, 12312
0006b0  7360d800  stores.w r13, 0(r16)
0006b4  73e03801  stores.w r19, 0(r17)
0006b8  93284402  setneq.d r17, r[9:10], r[5:6]
0006bc  73602501  stores.w r18, 0(r10)
0006c0  1f453160  addli r10, r2, 12316
0006c4  1f412160  addli r2, r2, 12308
0006c8  73e0f100  stores.w r15, 0(r3)
0006cc  73607500  stores.w r7, 0(r10)
0006d0  7360e100  stores.w r14, 0(r2)
0006d4  b7b30800  beq r17, zero, 236
0006d8  1b312400  slli r2, r8, 2
0006dc  1f431150  addli r6, r2, 10252
0006e0  9f010150  addli r3, r2, 10240
0006e4  9f031150  addli r7, r2, 10248
0006e8  9f462150  addli r13, r2, 10260
0006ec  1f052150  addli r10, r2, 10256
0006f0  ef480300  loads.w r17, 0(r6)
0006f4  6fc30100  loads.w r6, 0(r3)
0006f8  9f410150  addli r3, r2, 10244
0006fc  6fc90300  loads.w r18, 0(r7)
000700  9f433150  addli r7, r2, 10268
000704  6fc70600  loads.w r14, 0(r13)
000708  ef460500  loads.w r13, 0(r10)
00070c  efc90100  loads.w r19, 0(r3)
000710  9f013150  addli r3, r2, 10264
000714  efc30300  loads.w r7, 0(r7)
000718  efc70100  loads.w r15, 0(r3)
00071c  97017301  and r3, r6, r23
000720  93013604  setlt.u r3, r12, r3
000724  37b00100  beq r3, zero, 12
000728  9701b300  and r3, r6, r11
00072c  1793c100  or r6, r3, r12
000730  97817901  and r3, r19, r23
000734  93013604  setlt.u r3, r12, r3
000738  37b00100  beq r3, zero, 12
00073c  9781b900  and r3, r19, r11
000740  9799c100  or r19, r3, r12
000744  97017901  and r3, r18, r23
000748  93013604  setlt.u r3, r12, r3
00074c  37b00100  beq r3, zero, 12
000750  9701b900  and r3, r18, r11
000754  1799c100  or r18, r3, r12
000758  97817801  and r3, r17, r23
00075c  93013604  setlt.u r3, r12, r3
000760  37b00100  beq r3, zero, 12
000764  9781b800  and r3, r17, r11
000768  9798c100  or r17, r3, r12
00076c  97817601  and r3, r13, r23
000770  93013604  setlt.u r3, r12, r3
000774  37b00100  beq r3, zero, 12
000778  9781b600  and r3, r13, r11
00077c  9796c100  or r13, r3, r12
000780  97017701  and r3, r14, r23
000784  93013604  setlt.u r3, r12, r3
000788  37b00100  beq r3, zero, 12
00078c  9701b700  and r3, r14, r11
000790  1797c100  or r14, r3, r12
000794  97817701  and r3, r15, r23
000798  93013604  setlt.u r3, r12, r3
00079c  37b00100  beq r3, zero, 12
0007a0  9781b700  and r3, r15, r11
0007a4  9797c100  or r15, r3, r12
0007a8  97817301  and r3, r7, r23
0007ac  93013604  setlt.u r3, r12, r3
0007b0  37fb01fe  beq r3, zero, -292
0007b4  9781b300  and r3, r7, r11
0007b8  9793c100  or r7, r3, r12
0007bc  5bdaffff  j -304
0007c0  1f112000  addli r2, zero, 17
0007c4  00200100  mfence { sm }
0007c8  9f113000  addli r3, zero, 25
0007cc  33040028  zext_int2long r[9:10], zero
0007d0  7d000100  xsignal r2, 0
0007d4  1f212000  addli r2, zero, 18
0007d8  7d800100  xsignal r3, 0
0007dc  7d100100  xwait r2, 0
0007e0  1f513000  addli r2, zero, 29
0007e4  7d900100  xwait r3, 0
0007e8  7d100100  xwait r2, 0
0007ec  3d000000  xfence
0007f0  00a00300  mfence { lm, sm, gm }
0007f4  db0d0000  j 108
0007f8  9b188e00  ori r17, r28, 8
0007fc  9b16ce00  ori r13, r28, 12
000800  27041400  addli.d r[9:10], r[9:10], 8
000804  8b931d11  add.s r7, r27, r17
000808  8b91dd10  add.s r3, r27, r13
00080c  73e0f300  stores.w r15, 0(r7)
000810  9b174e00  ori r15, r28, 4
000814  73e0e100  stores.w r14, 0(r3)
000818  8b91cd11  add.s r3, r27, r28
00081c  9b130e01  ori r7, r28, 16
000820  0b95fd10  add.s r10, r27, r15
000824  73e06100  stores.w r6, 0(r3)
000828  1b138e01  ori r6, r28, 24
00082c  8b937d10  add.s r7, r27, r7
000830  73606501  stores.w r22, 0(r10)
000834  1b15ce01  ori r10, r28, 28
000838  0b936d10  add.s r6, r27, r6
00083c  73e02300  stores.w r2, 0(r7)
000840  8b91ad10  add.s r3, r27, r10
000844  1b154e01  ori r10, r28, 20
000848  73603301  stores.w r19, 0(r6)
00084c  73e05101  stores.w r21, 0(r3)
000850  93214400  seteq.d r3, r[9:10], r[5:6]
000854  0b95ad10  add.s r10, r27, r10
000858  73602501  stores.w r18, 0(r10)
00085c  bbc50100  bneq r3, zero, 368
000860  9b3d2400  slli r27, r8, 2
000864  1f810d50  addli r2, r27, 10240
000868  1fc51d50  addli r10, r27, 10252
00086c  1fc90d60  addli r18, r27, 12292
000870  9f832d50  addli r7, r27, 10256
000874  9fc10d50  addli r3, r27, 10244
000878  9fc63d50  addli r13, r27, 10268
00087c  1fc71d60  addli r14, r27, 12300
000880  9f871d60  addli r15, r27, 12296
000884  9fc93d60  addli r19, r27, 12316
000888  1fcd2d60  addli r26, r27, 12308
00088c  6f430100  loads.w r6, 0(r2)
000890  1f811d50  addli r2, r27, 10248
000894  ef4c0500  loads.w r25, 0(r10)
000898  6f4b0900  loads.w r22, 0(r18)
00089c  6fc50300  loads.w r10, 0(r7)
0008a0  1f893d60  addli r18, r27, 12312
0008a4  efca0900  loads.w r21, 0(r19)
0008a8  efc10100  loads.w r3, 0(r3)
0008ac  efc60600  loads.w r13, 0(r13)
0008b0  6f470700  loads.w r14, 0(r14)
0008b4  efc70700  loads.w r15, 0(r15)
0008b8  6f480100  loads.w r16, 0(r2)
0008bc  1fc12d50  addli r2, r27, 10260
0008c0  ef490900  loads.w r19, 0(r18)
0008c4  6f490d00  loads.w r18, 0(r26)
0008c8  ef480100  loads.w r17, 0(r2)
0008cc  1f813d50  addli r2, r27, 10264
0008d0  ef430100  loads.w r7, 0(r2)
0008d4  1f812d60  addli r2, r27, 12304
0008d8  6f410100  loads.w r2, 0(r2)
0008dc  97058301  and r11, r6, r24
0008e0  170d1300  and r26, r6, r1
0008e4  13061d00  seteq r12, r26, r1
0008e8  93850502  setneq r11, r11, zero
0008ec  9705b600  and r11, r12, r11
0008f0  3bc00500  bneq r11, zero, 16
0008f4  1f830d60  addli r6, r27, 12288
0008f8  6f430300  loads.w r6, 0(r6)
0008fc  5b010000  j 8
000900  17134301  or r6, r6, r20
000904  97851100  and r11, r3, r1
000908  17868101  and r12, r3, r24
00090c  93851500  seteq r11, r11, r1
000910  13060602  setneq r12, r12, zero
000914  9785c500  and r11, r11, r12
000918  37a00500  beq r11, zero, 8
00091c  179b4101  or r22, r3, r20
000920  97011800  and r3, r16, r1
000924  97058801  and r11, r16, r24
000928  93811100  seteq r3, r3, r1
00092c  93850502  setneq r11, r11, zero
000930  9781b100  and r3, r3, r11
000934  37a00100  beq r3, zero, 8
000938  97174801  or r15, r16, r20
00093c  97811c00  and r3, r25, r1
000940  97858c01  and r11, r25, r24
000944  93811100  seteq r3, r3, r1
000948  93850502  setneq r11, r11, zero
00094c  9781b100  and r3, r3, r11
000950  37a00100  beq r3, zero, 8
000954  17974c01  or r14, r25, r20
000958  97011500  and r3, r10, r1
00095c  97058501  and r11, r10, r24
000960  93811100  seteq r3, r3, r1
000964  93850502  setneq r11, r11, zero
000968  9781b100  and r3, r3, r11
00096c  37a00100  beq r3, zero, 8
000970  17114501  or r2, r10, r20
000974  97811800  and r3, r17, r1
000978  17858801  and r10, r17, r24
00097c  93811100  seteq r3, r3, r1
000980  13050502  setneq r10, r10, zero
000984  9781a100  and r3, r3, r10
000988  37a00100  beq r3, zero, 8
00098c  17994801  or r18, r17, r20
000990  97811300  and r3, r7, r1
000994  17858301  and r10, r7, r24
000998  93811100  seteq r3, r3, r1
00099c  13050502  setneq r10, r10, zero
0009a0  9781a100  and r3, r3, r10
0009a4  37a00100  beq r3, zero, 8
0009a8  97994301  or r19, r7, r20
0009ac  97811600  and r3, r13, r1
0009b0  97838601  and r7, r13, r24
0009b4  93811100  seteq r3, r3, r1
0009b8  93830302  setneq r7, r7, zero
0009bc  97817100  and r3, r3, r7
0009c0  b7e801fe  beq r3, zero, -456
0009c4  979a4601  or r21, r13, r20
0009c8  5bc6ffff  j -464
0009cc  9f312000  addli r3, zero, 19
0009d0  1f213000  addli r2, zero, 26
0009d4  00200100  mfence { sm }
0009d8  33040028  zext_int2long r[9:10], zero
0009dc  7d800100  xsignal r3, 0
0009e0  7d000100  xsignal r2, 0
0009e4  1f313000  addli r2, zero, 27
0009e8  7d000100  xsignal r2, 0
0009ec  1f111000  addli r2, zero, 9
0009f0  7d100100  xwait r2, 0
0009f4  1f413000  addli r2, zero, 28
0009f8  7d900100  xwait r3, 0
0009fc  7d100100  xwait r2, 0
000a00  1f613000  addli r2, zero, 30
000a04  7d100100  xwait r2, 0
000a08  3d000000  xfence
000a0c  00a00300  mfence { lm, sm, gm }
000a10  5b060000  j 48
000a14  27440400  addli.d r[9:10], r[9:10], 4
000a18  9f411160  addli r3, r2, 12300
000a1c  9f030160  addli r7, r2, 12288
000a20  13234402  setneq.d r6, r[9:10], r[5:6]
000a24  73e02101  stores.w r18, 0(r3)
000a28  9f011160  addli r3, r2, 12296
000a2c  1f410160  addli r2, r2, 12292
000a30  73e0a300  stores.w r10, 0(r7)
000a34  73e00101  stores.w r16, 0(r3)
000a38  73605101  stores.w r21, 0(r2)
000a3c  374103fc  beq r6, zero, -1968
000a40  1b312400  slli r2, r8, 2
000a44  1b164e80  ori r12, r28, 2052
000a48  9f010120  addli r3, r2, 4096
000a4c  0b15c111  add.s r10, r2, r28
000a50  1f430120  addli r6, r2, 4100
000a54  9f031120  addli r7, r2, 4104
000a58  8b151111  add.s r11, r2, r17
000a5c  0b16c110  add.s r12, r2, r12
000a60  efc10100  loads.w r3, 0(r3)
000a64  6f450500  loads.w r10, 0(r10)
000a68  ef4a0300  loads.w r21, 0(r6)
000a6c  1f431120  addli r6, r2, 4108
000a70  efc90300  loads.w r19, 0(r7)
000a74  6fc80500  loads.w r16, 0(r11)
000a78  9b15ce80  ori r11, r28, 2060
000a7c  ef4c0600  loads.w r25, 0(r12)
000a80  ef430300  loads.w r7, 0(r6)
000a84  0b13f110  add.s r6, r2, r15
000a88  6f4b0300  loads.w r22, 0(r6)
000a8c  0b13d110  add.s r6, r2, r13
000a90  6f470300  loads.w r14, 0(r6)
000a94  0b13b110  add.s r6, r2, r11
000a98  9b158e80  ori r11, r28, 2056
000a9c  8b15b110  add.s r11, r2, r11
000aa0  6f430300  loads.w r6, 0(r6)
000aa4  97817101  and r3, r3, r23
000aa8  17057501  and r10, r10, r23
000aac  13891100  seteq r18, r3, r1
000ab0  130d0500  seteq r26, r10, zero
000ab4  930d1500  seteq r27, r10, r1
000ab8  138a0100  seteq r20, r3, zero
000abc  0b85a148  max.u r10, r3, r10
000ac0  efc10500  loads.w r3, 0(r11)
000ac4  1385a004  setlt.u r10, r1, r10
000ac8  9705a901  and r11, r18, r26
000acc  1706ba01  and r12, r20, r27
000ad0  2b09c07f  lui r18, 523264
000ad4  9795c500  or r11, r11, r12
000ad8  9715b500  or r11, r10, r11
000adc  2b05c07f  lui r10, 523264
000ae0  3bc00500  bneq r11, zero, 16
000ae4  6345efff  loadli.w r10,  -12(r30)
000ae8  0b15a110  add.s r10, r2, r10
000aec  6f450500  loads.w r10, 0(r10)
000af0  97857a01  and r11, r21, r23
000af4  17067b01  and r12, r22, r23
000af8  138a1500  seteq r20, r11, r1
000afc  138d0500  seteq r26, r11, zero
000b00  930a0600  seteq r21, r12, zero
000b04  130b1600  seteq r22, r12, r1
000b08  8b85c548  max.u r11, r11, r12
000b0c  9385b004  setlt.u r11, r1, r11
000b10  17065a01  and r12, r20, r21
000b14  170a6d01  and r20, r26, r22
000b18  ab0ac07f  lui r21, 523264
000b1c  17164601  or r12, r12, r20
000b20  9795c500  or r11, r11, r12
000b24  3ba00500  bneq r11, zero, 8
000b28  9f8a0c00  addli r21, r25, 0
000b2c  97857901  and r11, r19, r23
000b30  17067801  and r12, r16, r23
000b34  13881500  seteq r16, r11, r1
000b38  138b0500  seteq r22, r11, zero
000b3c  93090600  seteq r19, r12, zero
000b40  130a1600  seteq r20, r12, r1
000b44  8b85c548  max.u r11, r11, r12
000b48  9385b004  setlt.u r11, r1, r11
000b4c  17063801  and r12, r16, r19
000b50  17084b01  and r16, r22, r20
000b54  17160601  or r12, r12, r16
000b58  2b08c07f  lui r16, 523264
000b5c  9795c500  or r11, r11, r12
000b60  3ba00500  bneq r11, zero, 8
000b64  1f880100  addli r16, r3, 0
000b68  97817301  and r3, r7, r23
000b6c  97037701  and r7, r14, r23
000b70  93851100  seteq r11, r3, r1
000b74  93890100  seteq r19, r3, zero
000b78  13860300  seteq r12, r7, zero
000b7c  13871300  seteq r14, r7, r1
000b80  8b817148  max.u r3, r3, r7
000b84  93813004  setlt.u r3, r1, r3
000b88  9783c500  and r7, r11, r12
000b8c  9785e900  and r11, r19, r14
000b90  9793b300  or r7, r7, r11
000b94  97917100  or r3, r3, r7
000b98  bbf901fe  bneq r3, zero, -388
000b9c  1f090300  addli r18, r6, 0
000ba0  dbceffff  j -396
000ba4  7d100500  xwait r10, 0
000ba8  7d900d00  xwait r27, 0
000bac  1d000500  lock zero, r10
000bb0  ab01803f  lui r3, 260096
000bb4  1f723000  addli r4, zero, 31
000bb8  9f022000  addli r5, zero, 16
000bbc  1f010010  addli r2, zero, 2048
000bc0  2b03003f  lui r6, 258048
000bc4  9f631000  addli r7, zero, 14
000bc8  1f440000  addli r8, zero, 4
000bcc  9f040060  addli r9, zero, 12288
000bd0  9f060070  addli r13, zero, 14336
000bd4  0d000002  ew_cfg zero, zero, zero, 1
000bd8  8d910100  ewcoeff_cfg r3, r3, zero, 0
000bdc  0d000204  ew_cfg zero, r4, zero, 2
000be0  8d020006  ew_cfg r5, zero, zero, 3
000be4  8d825226  ew_cfg r5, r5, r5, 19
000be8  2d002000  dsmadd zero, zero, r2, 0
000bec  1f011000  addli r2, zero, 8
000bf0  0d000026  ew_cfg zero, zero, zero, 19
000bf4  1d100500  unlock r10
000bf8  7d000a00  xsignal r20, 0
000bfc  7d000100  xsignal r2, 0
000c00  1f211000  addli r2, zero, 10
000c04  7d100100  xwait r2, 0
000c08  1d000500  lock zero, r10
000c0c  1f010020  addli r2, zero, 4096
000c10  0d000002  ew_cfg zero, zero, zero, 1
000c14  0d130000  ewcoeff_cfg r6, zero, zero, 0
000c18  0d000204  ew_cfg zero, r4, zero, 2
000c1c  8d020006  ew_cfg r5, zero, zero, 3
000c20  8d820226  ew_cfg r5, r5, zero, 19
000c24  4d510000  hp_ssmul r2, zero, zero, 0
000c28  1f111000  addli r2, zero, 9
000c2c  0d000026  ew_cfg zero, zero, zero, 19
000c30  1d100500  unlock r10
000c34  7d000100  xsignal r2, 0
000c38  1f411000  addli r2, zero, 12
000c3c  7d100100  xwait r2, 0
000c40  1d000500  lock zero, r10
000c44  1f010030  addli r2, zero, 6144
000c48  0d000002  ew_cfg zero, zero, zero, 1
000c4c  0d103000  ewcoeff_cfg zero, zero, r3, 0
000c50  0d000204  ew_cfg zero, r4, zero, 2
000c54  8d020006  ew_cfg r5, zero, zero, 3
000c58  8d825226  ew_cfg r5, r5, r5, 19
000c5c  2d110000  dsmul r2, zero, zero, 0
000c60  0d000026  ew_cfg zero, zero, zero, 19
000c64  1d100500  unlock r10
000c68  7d900300  xwait r7, 0
000c6c  1d000500  lock zero, r10
000c70  9f030040  addli r7, zero, 8192
000c74  0d000002  ew_cfg zero, zero, zero, 1
000c78  0d103000  ewcoeff_cfg zero, zero, r3, 0
000c7c  0d000204  ew_cfg zero, r4, zero, 2
000c80  8d020006  ew_cfg r5, zero, zero, 3
000c84  8d825226  ew_cfg r5, r5, r5, 19
000c88  ad130100  dsmul r7, r2, zero, 0
000c8c  1f310000  addli r2, zero, 3
000c90  9f331000  addli r7, zero, 11
000c94  0d000026  ew_cfg zero, zero, zero, 19
000c98  1d100500  unlock r10
000c9c  7d000100  xsignal r2, 0
000ca0  7d800300  xsignal r7, 0
000ca4  9f531000  addli r7, zero, 13
000ca8  7d800300  xsignal r7, 0
000cac  9f731000  addli r7, zero, 15
000cb0  7d100400  xwait r8, 0
000cb4  7d900300  xwait r7, 0
000cb8  9f732000  addli r7, zero, 23
000cbc  7d900300  xwait r7, 0
000cc0  1d000500  lock zero, r10
000cc4  0d000002  ew_cfg zero, zero, zero, 1
000cc8  e343afff  loadli.w r7,  -44(r30)
000ccc  8d910300  ewcoeff_cfg r3, r7, zero, 0
000cd0  0d000204  ew_cfg zero, r4, zero, 2
000cd4  8d020006  ew_cfg r5, zero, zero, 3
000cd8  8d825226  ew_cfg r5, r5, r5, 19
000cdc  ad069000  dsmadd r13, zero, r9, 0
000ce0  0d000026  ew_cfg zero, zero, zero, 19
000ce4  1d100500  unlock r10
000ce8  7d800200  xsignal r5, 0
000cec  1d000500  lock zero, r10
000cf0  0d000002  ew_cfg zero, zero, zero, 1
000cf4  e303afff  loadli.w r7,  -48(r30)
000cf8  8d130000  ewcoeff_cfg r7, zero, zero, 0
000cfc  9f632000  addli r7, zero, 22
000d00  0d000204  ew_cfg zero, r4, zero, 2
000d04  8d020006  ew_cfg r5, zero, zero, 3
000d08  8d820226  ew_cfg r5, r5, zero, 19
000d0c  cdd6d600  hp_ssmul r13, r13, r13, 0
000d10  9f160000  addli r13, zero, 1
000d14  0d000026  ew_cfg zero, zero, zero, 19
000d18  1d100500  unlock r10
000d1c  7d800300  xsignal r7, 0
000d20  9f132000  addli r7, zero, 17
000d24  7d900300  xwait r7, 0
000d28  1d000500  lock zero, r10
000d2c  0d000002  ew_cfg zero, zero, zero, 1
000d30  0d000204  ew_cfg zero, r4, zero, 2
000d34  8d020006  ew_cfg r5, zero, zero, 3
000d38  8d820226  ew_cfg r5, r5, zero, 19
000d3c  0d010014  ew_cfg r2, zero, zero, 10
000d40  63419fff  loadli.w r2,  -52(r30)
000d44  0d852616  ew_cfg r10, r13, r2, 11
000d48  2bc17f41  lui r2, 268284
000d4c  0d00001a  ew_cfg zero, zero, zero, 13
000d50  0d00241c  ew_cfg zero, r8, r2, 14
000d54  1f212000  addli r2, zero, 18
000d58  0d00001e  ew_cfg zero, zero, zero, 15
000d5c  cda40400  sslut r9, r9, 0
000d60  0d000014  ew_cfg zero, zero, zero, 10
000d64  0d000026  ew_cfg zero, zero, zero, 19
000d68  1d100500  unlock r10
000d6c  7d000100  xsignal r2, 0
000d70  1f313000  addli r2, zero, 27
000d74  7d100100  xwait r2, 0
000d78  1d000500  lock zero, r10
000d7c  0d000002  ew_cfg zero, zero, zero, 1
000d80  8d113000  ewcoeff_cfg r3, zero, r3, 0
000d84  0d000204  ew_cfg zero, r4, zero, 2
000d88  8d020006  ew_cfg r5, zero, zero, 3
000d8c  8d820226  ew_cfg r5, r5, zero, 19
000d90  2d0ece01  dsmadd r28, r28, r28, 0
000d94  0d000026  ew_cfg zero, zero, zero, 19
000d98  1d100500  unlock r10
000d9c  7d100a00  xwait r20, 0
000da0  7d100200  xwait r4, 0
000da4  1d000500  lock zero, r10
000da8  0d000002  ew_cfg zero, zero, zero, 1
000dac  0d106000  ewcoeff_cfg zero, zero, r6, 0
000db0  0d000204  ew_cfg zero, r4, zero, 2
000db4  8d020006  ew_cfg r5, zero, zero, 3
000db8  8d825226  ew_cfg r5, r5, r5, 19
000dbc  6341efff  loadli.w r2,  -12(r30)
000dc0  2d11c001  dsmul r2, zero, r28, 0
000dc4  1f510000  addli r2, zero, 5
000dc8  0d000026  ew_cfg zero, zero, zero, 19
000dcc  1d100500  unlock r10
000dd0  7d000100  xsignal r2, 0
000dd4  1f413000  addli r2, zero, 28
000dd8  7d000100  xsignal r2, 0
000ddc  1f613000  addli r2, zero, 30
000de0  db9cfeff  j -2844
000de4  9f160000  addli r13, zero, 1
000de8  bb0306fa  bneq r12, zero, -2848
000dec  1f422000  addli r4, zero, 20
000df0  1731a302  sll.d r[3:4], r[7:8], r10
000df4  1f030060  addli r6, zero, 12288
000df8  7d100200  xwait r4, 0
000dfc  6b520f01  load.d r[5:6], 16(r30)
000e00  0b212210  add.ul r[3:4], r[5:6], r[3:4]
000e04  1f520000  addli r4, zero, 5
000e08  9f020010  addli r5, zero, 2048
000e0c  1d000200  lock zero, r4
000e10  15000000  dma_cfg zero, zero, zero, 0
000e14  15800602  dma_cfg zero, r13, zero, 1
000e18  95010004  dma_cfg r3, zero, zero, 2
000e1c  15015306  dma_cfg r2, r6, r5, 3
000e20  1f512000  addli r2, zero, 21
000e24  9582d208  dma_cfg r5, r5, r13, 4
000e28  35000000  dma_run zero
000e2c  1d100200  unlock r4
000e30  db92feff  j -2924
000e34  7d000000  xsignal zero, 0
000e38  bb600600  bneq r12, zero, 56
000e3c  9f200000  addli r1, zero, 2
000e40  7d100000  xwait zero, 0
000e44  7d100000  xwait zero, 0
000e48  7d100000  xwait zero, 0
000e4c  7d100000  xwait zero, 0
000e50  7d100000  xwait zero, 0
000e54  7d100000  xwait zero, 0
000e58  7d100000  xwait zero, 0
000e5c  7d100000  xwait zero, 0
000e60  1d800000  lock zero, r1
000e64  0d000020  ew_cfg zero, zero, zero, 16
000e68  1d900000  unlock r1
000e6c  7d400000  xsignal_mode_cfg zero
000e70  9f8e7e00  addli sp, sp, 56
000e74  00a00300  mfence { lm, sm, gm }
000e78  00100000  exit
000e7c  00100000  exit
000e80  00100000  exit
000e84  00100000  exit
000e88  00100000  exit
000e8c  00100000  exit
000e90  00100000  exit
000e94  00100000  exit
000e98  00100000  exit
000e9c  00100000  exit
000ea0  00100000  exit
000ea4  00100000  exit
000ea8  00100000  exit
000eac  00100000  exit
000eb0  00100000  exit
000eb4  00100000  exit
000eb8  00100000  exit
000ebc  00100000  exit
000ec0  00100000  exit
000ec4  00100000  exit
000ec8  00100000  exit
000ecc  00100000  exit
000ed0  00100000  exit
000ed4  00100000  exit
000ed8  00100000  exit
000edc  00100000  exit
000ee0  00100000  exit
000ee4  00100000  exit
000ee8  00100000  exit
000eec  00100000  exit
000ef0  00100000  exit
000ef4  00100000  exit
000ef8  00100000  exit
000efc  00100000  exit
000f00  00100000  exit
000f04  00100000  exit
000f08  00100000  exit
000f0c  00100000  exit
000f10  00100000  exit
000f14  00100000  exit
000f18  00100000  exit
000f1c  00100000  exit
000f20  00100000  exit
000f24  00100000  exit
000f28  00100000  exit
000f2c  00100000  exit
000f30  00100000  exit
000f34  00100000  exit
000f38  00100000  exit
000f3c  00100000  exit
000f40  00100000  exit
000f44  00100000  exit
000f48  00100000  exit
000f4c  00100000  exit
000f50  00100000  exit
000f54  00100000  exit
000f58  00100000  exit
000f5c  00100000  exit
000f60  00100000  exit
000f64  00100000  exit
000f68  00100000  exit
000f6c  00100000  exit
000f70  00100000  exit
000f74  00100000  exit
000f78  00100000  exit
000f7c  00100000  exit
000f80  00100000  exit
000f84  00100000  exit
000f88  00100000  exit
000f8c  00100000  exit
000f90  00100000  exit
000f94  00100000  exit
000f98  00100000  exit
000f9c  00100000  exit
000fa0  00100000  exit
000fa4  00100000  exit
000fa8  00100000  exit
000fac  00100000  exit
000fb0  00100000  exit
000fb4  00100000  exit
000fb8  00100000  exit
000fbc  00100000  exit
000fc0  00100000  exit
000fc4  00100000  exit
000fc8  00100000  exit
000fcc  00100000  exit
000fd0  00100000  exit
000fd4  00100000  exit
000fd8  00100000  exit
000fdc  00100000  exit
000fe0  00100000  exit
000fe4  00100000  exit
000fe8  00100000  exit
000fec  00100000  exit
000ff0  00100000  exit
000ff4  00100000  exit
000ff8  00100000  exit
000ffc  00100000  exit
001000  00100000  exit
001004  00100000  exit
001008  00100000  exit
00100c  00100000  exit
001010  00100000  exit
001014  00100000  exit
001018  00100000  exit
00101c  00100000  exit
001020  00100000  exit
001024  00100000  exit
001028  00100000  exit
00102c  00100000  exit
001030  00100000  exit
001034  00100000  exit
001038  00100000  exit
00103c  00100000  exit
001040  00100000  exit
001044  00100000  exit
001048  00100000  exit
00104c  00100000  exit
001050  00100000  exit
001054  00100000  exit
001058  00100000  exit
00105c  00100000  exit
001060  00100000  exit
001064  00100000  exit
001068  00100000  exit
00106c  00100000  exit
001070  00100000  exit
001074  00100000  exit
001078  00100000  exit
00107c  00100000  exit
001080  00100000  exit
001084  00100000  exit
001088  00100000  exit
00108c  00100000  exit
001090  00100000  exit
001094  00100000  exit
001098  00100000  exit
00109c  00100000  exit
0010a0  00100000  exit
0010a4  00100000  exit
0010a8  00100000  exit
0010ac  00100000  exit
0010b0  00100000  exit
0010b4  00100000  exit
0010b8  00100000  exit
