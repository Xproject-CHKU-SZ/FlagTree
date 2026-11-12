; SHA-256 da0476ef2abab6fe4c7f1112adb4dd9a7b90eddc2377ab5565638e8b7f02d7c2
; P800 SDNN · XTDK LLVM 19 · 649 / 649 words decoded
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
0000b4  9f8e5efe  addli sp, sp, -216
0000b8  9f100000  addli r1, zero, 1
0000bc  00310002  core_id r2
0000c0  1f8f3e01  addli r30, sp, 152
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600100  beq r2, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5b230000  j 280
0000e0  9f210000  addli r3, zero, 2
0000e4  fdd00000  uni_sram_cfg r1, r1
0000e8  2bf2ffff  lui r4, 1048575
0000ec  1d800100  lock zero, r3
0000f0  8d000020  ew_cfg r1, zero, zero, 16
0000f4  9b10f2ff  ori r1, r4, 4095
0000f8  1d900100  unlock r3
0000fc  9f610000  addli r3, zero, 6
000100  80a10004  csr_set csr3, r1
000104  9f601000  addli r1, zero, 14
000108  00d00100  sync_group
00010c  7d800000  xsignal r1, 0
000110  7d800100  xsignal r3, 0
000114  7d800100  xsignal r3, 0
000118  7d800100  xsignal r3, 0
00011c  7d800100  xsignal r3, 0
000120  7d800100  xsignal r3, 0
000124  7d800100  xsignal r3, 0
000128  7d800100  xsignal r3, 0
00012c  7d800100  xsignal r3, 0
000130  7d800100  xsignal r3, 0
000134  7d800100  xsignal r3, 0
000138  7d800100  xsignal r3, 0
00013c  7d800100  xsignal r3, 0
000140  9f400000  addli r1, zero, 4
000144  9f311000  addli r3, zero, 11
000148  7d800000  xsignal r1, 0
00014c  7d800000  xsignal r1, 0
000150  7d800000  xsignal r1, 0
000154  7d800000  xsignal r1, 0
000158  7d800000  xsignal r1, 0
00015c  7d800000  xsignal r1, 0
000160  7d800000  xsignal r1, 0
000164  7d800000  xsignal r1, 0
000168  7d800000  xsignal r1, 0
00016c  7d800000  xsignal r1, 0
000170  7d800100  xsignal r3, 0
000174  7d800100  xsignal r3, 0
000178  7d800100  xsignal r3, 0
00017c  7d800100  xsignal r3, 0
000180  7d800100  xsignal r3, 0
000184  7d800100  xsignal r3, 0
000188  7d800100  xsignal r3, 0
00018c  7d800100  xsignal r3, 0
000190  7d800100  xsignal r3, 0
000194  7d800100  xsignal r3, 0
000198  7d800100  xsignal r3, 0
00019c  7d800100  xsignal r3, 0
0001a0  7d800100  xsignal r3, 0
0001a4  7d800100  xsignal r3, 0
0001a8  7d800100  xsignal r3, 0
0001ac  7d800100  xsignal r3, 0
0001b0  7d800100  xsignal r3, 0
0001b4  7d800100  xsignal r3, 0
0001b8  7d800100  xsignal r3, 0
0001bc  7d800100  xsignal r3, 0
0001c0  9f101000  addli r1, zero, 9
0001c4  9f112000  addli r3, zero, 17
0001c8  7d800000  xsignal r1, 0
0001cc  7d800000  xsignal r1, 0
0001d0  7d800000  xsignal r1, 0
0001d4  7d800000  xsignal r1, 0
0001d8  7d800000  xsignal r1, 0
0001dc  7d800000  xsignal r1, 0
0001e0  7d800000  xsignal r1, 0
0001e4  7d800000  xsignal r1, 0
0001e8  7d800000  xsignal r1, 0
0001ec  7d800000  xsignal r1, 0
0001f0  7d800100  xsignal r3, 0
0001f4  e3405f00  loadli.w r1,  44(r30)
0001f8  e3016f00  loadli.w r3,  48(r30)
0001fc  80d20002  load_param_i r5, 1
000200  63426f00  loadli.w r4,  52(r30)
000204  674d0ffe  storeli.w zero, -44(r30)
000208  8b901120  mul.s r1, r3, r1
00020c  9f810200  addli r3, r5, 0
000210  8b914050  fmac.s r3, r1, r4
000214  0b924020  mul.s r4, r1, r4
000218  9ff1f1ff  addli r3, r3, -1
00021c  8b915130  div.s r3, r3, r5
000220  80520002  load_param_i r5, 0
000224  8b905120  mul.s r1, r3, r5
000228  8b915150  fmac.s r3, r3, r5
00022c  8b914140  min.s r3, r3, r4
000230  cbb51102  ble.s r3, r1, 1388
000234  e3034f00  loadli.w r7,  32(r30)
000238  33940128  sext_int2long r[9:10], r3
00023c  63055f00  loadli.w r10,  40(r30)
000240  63434f00  loadli.w r6,  36(r30)
000244  33970028  sext_int2long r[15:16], r1
000248  1f020000  addli r4, zero, 0
00024c  9f020000  addli r5, zero, 0
000250  1f091000  addli r18, zero, 8
000254  9f490000  addli r19, zero, 4
000258  9f2a0000  addli r21, zero, 2
00025c  1f1b0000  addli r22, zero, 1
000260  9f018000  addli r3, zero, 64
000264  1f0d0000  addli r26, zero, 0
000268  733c8ff6  store.d r[9:10], -136(r30)
00026c  e344afff  loadli.w r9,  -44(r30)
000270  b3930328  sext_int2long r[8:9], r7
000274  9b302500  slli r1, r10, 2
000278  73387ff6  store.d r[8:9], -144(r30)
00027c  b3130328  sext_int2long r[8:9], r6
000280  674c1ffe  storeli.w r1, -60(r30)
000284  9b302300  slli r1, r6, 2
000288  733c7ffa  store.d r[8:9], -72(r30)
00028c  1f241000  addli r8, zero, 10
000290  33130528  sext_int2long r[7:8], r10
000294  e70a1ffe  storeli.w r1, -88(r30)
000298  73346ff6  store.d r[7:8], -152(r30)
00029c  5b040000  j 32
0002a0  9f401000  addli r1, zero, 12
0002a4  7d800000  xsignal r1, 0
0002a8  6b570ffa  load.d r[15:16], -96(r30)
0002ac  6b538ff7  load.d r[7:8], -136(r30)
0002b0  27170700  addli.d r[15:16], r[15:16], 1
0002b4  93306704  setlt.sl r1, r[15:16], r[7:8]
0002b8  b7930002  beq r1, zero, 1252
0002bc  3b303101  bneq r2, r19, 12
0002c0  9f601000  addli r1, zero, 14
0002c4  7d900000  xwait r1, 0
0002c8  e3406f00  loadli.w r1,  52(r30)
0002cc  63036f00  loadli.w r6,  48(r30)
0002d0  7330effa  store.d r[15:16], -96(r30)
0002d4  8b101730  div.s r1, r14, r1
0002d8  9f030300  addli r7, r6, 0
0002dc  0b937030  div.s r6, r1, r7
0002e0  8b907038  mod.s r1, r1, r7
0002e4  9b368300  slli r13, r6, 8
0002e8  33130328  sext_int2long r[7:8], r6
0002ec  b3950028  sext_int2long r[12:13], r1
0002f0  1bb58000  slli r10, r1, 8
0002f4  9f70f001  addli r1, zero, 255
0002f8  973d2303  sll.d r[28:29], r[7:8], r18
0002fc  17b32503  sll.d r[7:8], r[12:13], r18
000300  b3870028  zext_int2long r[16:17], r1
000304  e3005f00  loadli.w r1,  40(r30)
000308  b31b0528  sext_int2long r[24:25], r10
00030c  6748dffe  storeli.w r13, -124(r30)
000310  97385303  sll.d r[18:19], r[7:8], r21
000314  7334bff9  store.d r[28:29], -120(r30)
000318  733c7ff9  store.d r[24:25], -104(r30)
00031c  73381ff9  store.d r[18:19], -112(r30)
000320  bf8b6001  blt.s r1, r22, 736
000324  33930628  sext_int2long r[7:8], r13
000328  6b568ff6  load.d r[13:14], -152(r30)
00032c  9f000000  addli r1, zero, 0
000330  1f0a0000  addli r20, zero, 0
000334  27050302  addli.d r[11:12], r[7:8], 256
000338  0bb6cd20  mul.sl r[13:14], r[28:29], r[13:14]
00033c  eb5d0ff7  load.d r[28:29], -144(r30)
000340  7334cffc  store.d r[13:14], -56(r30)
000344  6b568ffb  load.d r[13:14], -72(r30)
000348  0b35b541  min.sl r[11:12], r[11:12], r[28:29]
00034c  a78d0b02  addli.d r[28:29], r[24:25], 256
000350  0b356548  max.sl r[11:12], r[11:12], r[7:8]
000354  8bbdcd40  min.sl r[28:29], r[28:29], r[13:14]
000358  6b568ffc  load.d r[13:14], -56(r30)
00035c  0b356518  sub.sl r[11:12], r[11:12], r[7:8]
000360  6b538f00  load.d r[7:8], 8(r30)
000364  0b231311  add.ul r[7:8], r[7:8], r[18:19]
000368  9f080008  addli r17, zero, 1024
00036c  1f091000  addli r18, zero, 8
000370  73386ffa  store.d r[7:8], -80(r30)
000374  0bb37d49  max.sl r[7:8], r[28:29], r[24:25]
000378  973d5603  sll.d r[28:29], r[13:14], r21
00037c  8b367319  sub.sl r[14:15], r[7:8], r[24:25]
000380  6b530f00  load.d r[7:8], 0(r30)
000384  0b23b311  add.ul r[7:8], r[7:8], r[28:29]
000388  73346ffc  store.d r[7:8], -56(r30)
00038c  1bb32600  slli r6, r13, 2
000390  ab030400  lui r7, 64
000394  e74a6ffe  storeli.w r6, -84(r30)
000398  5b0c0000  j 96
00039c  1f331000  addli r6, zero, 11
0003a0  7d100900  xwait r18, 0
0003a4  7d100300  xwait r6, 0
0003a8  1d000000  lock zero, zero
0003ac  1f030002  addli r6, zero, 256
0003b0  810a0000  ds_cfg r21, zero, 0
0003b4  01030002  ds_cfg r6, zero, 1
0003b8  8101001c  ds_cfg r3, zero, 14
0003bc  0103001a  ds_cfg r6, zero, 13
0003c0  1f131000  addli r6, zero, 9
0003c4  c18c3b04  shuffle_coa r25, r23, r3, 2
0003c8  1d100000  unlock zero
0003cc  7d000300  xsignal r6, 0
0003d0  7d000400  xsignal r8, 0
0003d4  63035f00  loadli.w r6,  40(r30)
0003d8  1f120200  addli r4, r4, 1
0003dc  9f920200  addli r5, r5, 1
0003e0  1f1d0d00  addli r26, r26, 1
0003e4  9f940400  addli r9, r9, 1
0003e8  9f808000  addli r1, r1, 64
0003ec  1f1a0a00  addli r20, r20, 1
0003f0  3fa06000  blt.s r1, r6, 8
0003f4  5b430000  j 536
0003f8  0b968238  mod.s r12, r5, r8
0003fc  1f431000  addli r6, zero, 12
000400  b39d0028  sext_int2long r[28:29], r1
000404  8b1b6238  mod.s r23, r4, r6
000408  9b3c0601  slli r25, r12, 16
00040c  1bb60b01  slli r12, r23, 16
000410  8b9b7c10  add.s r23, r25, r7
000414  bb616101  bneq r2, r22, 120
000418  93bca704  setlt.sl r25, r[16:17], r[11:12]
00041c  7d900900  xwait r19, 0
000420  bba00c00  bneq r25, zero, 40
000424  1d800a00  lock zero, r21
000428  1f737000  addli r6, zero, 63
00042c  0d000002  ew_cfg zero, zero, zero, 1
000430  0d100000  ewcoeff_cfg zero, zero, zero, 0
000434  0d000304  ew_cfg zero, r6, zero, 2
000438  1f030002  addli r6, zero, 256
00043c  0d030006  ew_cfg r6, zero, zero, 3
000440  cd3b0000  ssaux r23, 0
000444  1d900a00  unlock r21
000448  7d800a00  xsignal r21, 0
00044c  6b5c8ffc  load.d r[25:26], -56(r30)
000450  17b35d03  sll.d r[7:8], r[28:29], r21
000454  7d900a00  xwait r21, 0
000458  1d800900  lock zero, r19
00045c  15000000  dma_cfg zero, zero, zero, 0
000460  0b236c10  add.ul r[7:8], r[25:26], r[7:8]
000464  9f0c0002  addli r25, zero, 256
000468  15800304  dma_cfg zero, r7, zero, 2
00046c  950b9307  dma_cfg r23, r6, r25, 3
000470  ab030400  lui r7, 64
000474  63438fff  loadli.w r6,  -60(r30)
000478  950ca308  dma_cfg r25, r6, r10, 4
00047c  1f330000  addli r6, zero, 3
000480  35000000  dma_run zero
000484  1d900900  unlock r19
000488  5b080000  j 64
00048c  3b015101  bneq r2, r21, 64
000490  1f330000  addli r6, zero, 3
000494  7d100300  xwait r6, 0
000498  1f630000  addli r6, zero, 6
00049c  7d100300  xwait r6, 0
0004a0  b7000500  beq r10, zero, 32
0004a4  1d000000  lock zero, zero
0004a8  810a0000  ds_cfg r21, zero, 0
0004ac  81010002  ds_cfg r3, zero, 1
0004b0  8101001c  ds_cfg r3, zero, 14
0004b4  0105001a  ds_cfg r10, zero, 13
0004b8  21963b02  shuffle_batch r12, r23, r3, 1
0004bc  1d100000  unlock zero
0004c0  1f530000  addli r6, zero, 5
0004c4  7d800900  xsignal r19, 0
0004c8  7d000300  xsignal r6, 0
0004cc  0b938438  mod.s r6, r9, r8
0004d0  ab0b0e00  lui r23, 224
0004d4  1b330301  slli r6, r6, 16
0004d8  8b1b7311  add.s r23, r6, r23
0004dc  3b016101  bneq r2, r22, 64
0004e0  13b3d704  setlt.sl r6, r[16:17], r[14:15]
0004e4  1f161000  addli r12, zero, 9
0004e8  7d100600  xwait r12, 0
0004ec  bb100300  bneq r6, zero, 36
0004f0  1d800a00  lock zero, r21
0004f4  1f73f001  addli r6, zero, 255
0004f8  0d000002  ew_cfg zero, zero, zero, 1
0004fc  0d100000  ewcoeff_cfg zero, zero, zero, 0
000500  0d000304  ew_cfg zero, r6, zero, 2
000504  8d010006  ew_cfg r3, zero, zero, 3
000508  cd3b0000  ssaux r23, 0
00050c  1d900a00  unlock r21
000510  1f730000  addli r6, zero, 7
000514  7d000300  xsignal r6, 0
000518  dbd7ffff  j -324
00051c  1f432000  addli r6, zero, 20
000520  0b136d38  mod.s r6, r26, r6
000524  9b3c0301  slli r25, r6, 16
000528  1f730000  addli r6, zero, 7
00052c  b74961fe  beq r2, r6, -400
000530  1f630000  addli r6, zero, 6
000534  3b416100  bneq r2, r6, 80
000538  6b538ffb  load.d r[7:8], -72(r30)
00053c  1f760000  addli r12, zero, 7
000540  7d100600  xwait r12, 0
000544  1d800900  lock zero, r19
000548  0bb36d20  mul.sl r[7:8], r[28:29], r[7:8]
00054c  6b5c0ffb  load.d r[25:26], -80(r30)
000550  15000000  dma_cfg zero, zero, zero, 0
000554  17335303  sll.d r[7:8], r[7:8], r21
000558  0b236c10  add.ul r[7:8], r[25:26], r[7:8]
00055c  15800304  dma_cfg zero, r7, zero, 2
000560  63465fff  loadli.w r12,  -84(r30)
000564  950bc306  dma_cfg r23, r6, r12, 3
000568  ab030400  lui r7, 64
00056c  63035fff  loadli.w r6,  -88(r30)
000570  95083308  dma_cfg r17, r6, r3, 4
000574  35000000  dma_run zero
000578  1d900900  unlock r19
00057c  7d000900  xsignal r18, 0
000580  dbcaffff  j -428
000584  3b4931ff  bneq r2, r19, -432
000588  1f530000  addli r6, zero, 5
00058c  7d100300  xwait r6, 0
000590  2b430000  lui r6, 4
000594  7d100400  xwait r8, 0
000598  b7400a00  beq r20, zero, 48
00059c  37510500  beq r10, zero, 84
0005a0  9f0b0000  addli r23, zero, 0
0005a4  1d000b00  lock zero, r22
0005a8  8981a100  mm_cfg r3, r3, r10, 0
0005ac  89096905  mm_cfg r19, r18, r22, 2
0005b0  a91b9611  mm_acc r23, r12, r25, 8
0005b4  9f8b0b02  addli r23, r23, 256
0005b8  8b9c6c10  add.s r25, r25, r6
0005bc  1d100b00  unlock r22
0005c0  bb9f1bff  bneq r23, r17, -28
0005c4  db050000  j 44
0005c8  b7200500  beq r10, zero, 40
0005cc  9f0b0000  addli r23, zero, 0
0005d0  1d000b00  lock zero, r22
0005d4  8981a100  mm_cfg r3, r3, r10, 0
0005d8  89096905  mm_cfg r19, r18, r22, 2
0005dc  a90b9611  mm r23, r12, r25, 8
0005e0  9f8b0b02  addli r23, r23, 256
0005e4  8b9c6c10  add.s r25, r25, r6
0005e8  1d100b00  unlock r22
0005ec  bb9f1bff  bneq r23, r17, -28
0005f0  1f630000  addli r6, zero, 6
0005f4  7d000300  xsignal r6, 0
0005f8  1f331000  addli r6, zero, 11
0005fc  5be3ffff  j -232
000600  ab030400  lui r7, 64
000604  9f080008  addli r17, zero, 1024
000608  1f091000  addli r18, zero, 8
00060c  375231ff  beq r2, r19, -876
000610  9f500000  addli r1, zero, 5
000614  37621100  beq r2, r1, 152
000618  6b568ff9  load.d r[13:14], -104(r30)
00061c  6b558ffb  load.d r[11:12], -72(r30)
000620  27030602  addli.d r[7:8], r[13:14], 256
000624  0b33a340  min.sl r[7:8], r[7:8], r[11:12]
000628  0b33c348  max.sl r[7:8], r[7:8], r[13:14]
00062c  0b33c318  sub.sl r[7:8], r[7:8], r[13:14]
000630  3b536101  bneq r2, r22, 212
000634  93b06704  setlt.sl r1, r[16:17], r[7:8]
000638  1f152000  addli r10, zero, 17
00063c  7d100500  xwait r10, 0
000640  bba00000  bneq r1, zero, 40
000644  1d800a00  lock zero, r21
000648  9f70f001  addli r1, zero, 255
00064c  0d000002  ew_cfg zero, zero, zero, 1
000650  0d100000  ewcoeff_cfg zero, zero, zero, 0
000654  0d800004  ew_cfg zero, r1, zero, 2
000658  ab001800  lui r1, 384
00065c  0d0b0006  ew_cfg r22, zero, zero, 3
000660  cd300000  ssaux r1, 0
000664  1d900a00  unlock r21
000668  9f701000  addli r1, zero, 15
00066c  6b550f01  load.d r[11:12], 16(r30)
000670  7d800000  xsignal r1, 0
000674  6b560ff9  load.d r[13:14], -112(r30)
000678  7d900000  xwait r1, 0
00067c  1d800900  lock zero, r19
000680  9b302300  slli r1, r6, 2
000684  2b031800  lui r6, 384
000688  15000000  dma_cfg zero, zero, zero, 0
00068c  0b25c510  add.ul r[11:12], r[11:12], r[13:14]
000690  15800504  dma_cfg zero, r11, zero, 2
000694  15031506  dma_cfg r6, r10, r1, 3
000698  95806009  dma_cfg r1, r1, r22, 4
00069c  35000000  dma_run zero
0006a0  1d900900  unlock r19
0006a4  9f002000  addli r1, zero, 16
0006a8  db7fffff  j -1028
0006ac  1f431000  addli r6, zero, 12
0006b0  9f000000  addli r1, zero, 0
0006b4  7d100300  xwait r6, 0
0006b8  1f032000  addli r6, zero, 16
0006bc  7d100300  xwait r6, 0
0006c0  1d800a00  lock zero, r21
0006c4  2b03803f  lui r6, 260096
0006c8  0d000002  ew_cfg zero, zero, zero, 1
0006cc  0d130300  ewcoeff_cfg r6, r6, zero, 0
0006d0  1f73f001  addli r6, zero, 255
0006d4  0d000304  ew_cfg zero, r6, zero, 2
0006d8  2b031800  lui r6, 384
0006dc  0d0b0006  ew_cfg r22, zero, zero, 3
0006e0  6b570ffa  load.d r[15:16], -96(r30)
0006e4  ad806000  dsmadd r1, r1, r6, 0
0006e8  9f800008  addli r1, r1, 1024
0006ec  bbef70fe  bneq r1, r7, -8
0006f0  9f501000  addli r1, zero, 13
0006f4  1d900a00  unlock r21
0006f8  7d800000  xsignal r1, 0
0006fc  9f102000  addli r1, zero, 17
000700  db120000  j 148
000704  6b570ffa  load.d r[15:16], -96(r30)
000708  bb1e01fc  bneq r2, zero, -1116
00070c  e3400fff  loadli.w r1,  -124(r30)
000710  6b578ffb  load.d r[15:16], -72(r30)
000714  eb5d8ff8  load.d r[28:29], -120(r30)
000718  1f580000  addli r16, zero, 5
00071c  33950028  sext_int2long r[11:12], r1
000720  8bbded20  mul.sl r[28:29], r[28:29], r[15:16]
000724  6b570ff7  load.d r[15:16], -144(r30)
000728  9f000002  addli r1, zero, 256
00072c  a70b0502  addli.d r[24:25], r[11:12], 256
000730  33860028  zext_int2long r[13:14], r1
000734  97bd5d03  sll.d r[28:29], r[28:29], r21
000738  9f501000  addli r1, zero, 13
00073c  0bb7eb40  min.sl r[15:16], r[24:25], r[15:16]
000740  0b33c340  min.sl r[7:8], r[7:8], r[13:14]
000744  0b37a748  max.sl r[15:16], r[15:16], r[11:12]
000748  0b35a718  sub.sl r[11:12], r[15:16], r[11:12]
00074c  6b578f01  load.d r[15:16], 24(r30)
000750  0b35c540  min.sl r[11:12], r[11:12], r[13:14]
000754  6b560ff9  load.d r[13:14], -112(r30)
000758  0b27b711  add.ul r[15:16], r[15:16], r[28:29]
00075c  0b26c710  add.ul r[13:14], r[15:16], r[13:14]
000760  6b570ffa  load.d r[15:16], -96(r30)
000764  7d900000  xwait r1, 0
000768  1d000800  lock zero, r16
00076c  9b302300  slli r1, r6, 2
000770  15000000  dma_cfg zero, zero, zero, 0
000774  15000b02  dma_cfg zero, r22, zero, 1
000778  95060004  dma_cfg r13, zero, zero, 2
00077c  15061006  dma_cfg r12, zero, r1, 3
000780  e3005fff  loadli.w r1,  -88(r30)
000784  9580a808  dma_cfg r1, r17, r10, 4
000788  9f601000  addli r1, zero, 14
00078c  35000000  dma_run zero
000790  1d100800  unlock r16
000794  7d800000  xsignal r1, 0
000798  db62ffff  j -1260
00079c  7d000000  xsignal zero, 0
0007a0  bb600100  bneq r2, zero, 56
0007a4  9f200000  addli r1, zero, 2
0007a8  7d100000  xwait zero, 0
0007ac  7d100000  xwait zero, 0
0007b0  7d100000  xwait zero, 0
0007b4  7d100000  xwait zero, 0
0007b8  7d100000  xwait zero, 0
0007bc  7d100000  xwait zero, 0
0007c0  7d100000  xwait zero, 0
0007c4  7d100000  xwait zero, 0
0007c8  1d800000  lock zero, r1
0007cc  0d000020  ew_cfg zero, zero, zero, 16
0007d0  1d900000  unlock r1
0007d4  7d400000  xsignal_mode_cfg zero
0007d8  9f8e3e01  addli sp, sp, 152
0007dc  00a00300  mfence { lm, sm, gm }
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
000a00  00100000  exit
000a04  00100000  exit
000a08  00100000  exit
000a0c  00100000  exit
000a10  00100000  exit
000a14  00100000  exit
000a18  00100000  exit
000a1c  00100000  exit
000a20  00100000  exit
