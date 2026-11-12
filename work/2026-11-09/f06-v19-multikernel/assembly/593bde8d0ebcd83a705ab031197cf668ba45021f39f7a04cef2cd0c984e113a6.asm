; SHA-256 593bde8d0ebcd83a705ab031197cf668ba45021f39f7a04cef2cd0c984e113a6
; P800 SDNN · XTDK LLVM 19 · 815 / 815 words decoded
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
00005c  9f498000  addli r19, zero, 68
000060  1f8a0eff  addli r20, sp, -128
000064  ff494201  bl_gm2lm r19, r20, 0(r[5:6])
000068  00a00200  mfence { lm, gm }
00006c  abfa0000  lui r21, 15
000070  9b9afaff  ori r21, r21, 4095
000074  80a10a04  csr_set csr3, r21
000078  00d00100  sync_group
00007c  fe8007e0  vmmov mr1, r15
000080  fe900720  vmmovh mr1, r15
000084  d7170000  jal 188
000088  fe8007e0  vmmov mr1, r15
00008c  fe900720  vmmovh mr1, r15
000090  1f8a0eff  addli r20, sp, -128
000094  4a100002  vloads_mask16.mz vr0{mr1}, 0(zero)
000098  ca108002  vloads_mask16.mz vr1{mr1}, 64(zero)
00009c  46000a02  vstore.mz vr0{mr1}, 0(r20)
0000a0  46041a02  vstore.mz vr1{mr1}, 64(r20)
0000a4  00a00100  mfence { lm, sm }
0000a8  00d00100  sync_group
0000ac  97a01000  xor r1, r1, r1
0000b0  1f8f0e00  addli r30, sp, 0
0000b4  d7170000  jal 188
0000b8  00400000  trap
0000bc  9f8e1efd  addli sp, sp, -376
0000c0  9f110000  addli r3, zero, 1
0000c4  80390002  core_id r19
0000c8  1f8ffe01  addli r30, sp, 248
0000cc  7dc00100  xsignal_mode_cfg r3
0000d0  b7900900  beq r19, zero, 36
0000d4  abf0ffff  lui r1, 1048575
0000d8  7d900100  xwait r3, 0
0000dc  7d900100  xwait r3, 0
0000e0  7d100000  xwait zero, 0
0000e4  9b90f0ff  ori r1, r1, 4095
0000e8  80a10004  csr_set csr3, r1
0000ec  00d00100  sync_group
0000f0  db3f0000  j 508
0000f4  1f230000  addli r6, zero, 2
0000f8  fdd10100  uni_sram_cfg r3, r3
0000fc  9f400000  addli r1, zero, 4
000100  6b520f03  load.d r[5:6], 48(r30)
000104  9f030020  addli r7, zero, 4096
000108  1d000300  lock zero, r6
00010c  8d010020  ew_cfg r3, zero, zero, 16
000110  1d100300  unlock r6
000114  1d800000  lock zero, r1
000118  15000000  dma_cfg zero, zero, zero, 0
00011c  15800204  dma_cfg zero, r5, zero, 2
000120  15007206  dma_cfg zero, r4, r7, 3
000124  1f024000  addli r4, zero, 32
000128  9f020008  addli r5, zero, 1024
00012c  15003008  dma_cfg zero, zero, r3, 4
000130  35000000  dma_run zero
000134  1d900000  unlock r1
000138  7d800100  xsignal r3, 0
00013c  7d900100  xwait r3, 0
000140  1d000000  lock zero, zero
000144  01030000  ds_cfg r6, zero, 0
000148  01000002  ds_cfg zero, zero, 1
00014c  01000016  ds_cfg zero, zero, 11
000150  0102001a  ds_cfg r4, zero, 13
000154  1f620000  addli r4, zero, 6
000158  8102001c  ds_cfg r5, zero, 14
00015c  a1135008  shuffle_batch r7, zero, r5, 4
000160  1d100000  unlock zero
000164  7d800100  xsignal r3, 0
000168  7d900100  xwait r3, 0
00016c  1d000300  lock zero, r6
000170  ab110100  lui r3, 17
000174  0da00300  ewtable_cfg r7, 0
000178  0da00102  ewtable_cfg r3, 1
00017c  abf1ffff  lui r3, 1048575
000180  1d100300  unlock r6
000184  7d000000  xsignal zero, 0
000188  7d100000  xwait zero, 0
00018c  9b91f1ff  ori r3, r3, 4095
000190  80a10104  csr_set csr3, r3
000194  9f511000  addli r3, zero, 13
000198  00d00100  sync_group
00019c  7d800100  xsignal r3, 0
0001a0  9f311000  addli r3, zero, 11
0001a4  7d000200  xsignal r4, 0
0001a8  7d000200  xsignal r4, 0
0001ac  7d000200  xsignal r4, 0
0001b0  7d000200  xsignal r4, 0
0001b4  7d000200  xsignal r4, 0
0001b8  7d000200  xsignal r4, 0
0001bc  7d000200  xsignal r4, 0
0001c0  7d000200  xsignal r4, 0
0001c4  7d000200  xsignal r4, 0
0001c8  7d000200  xsignal r4, 0
0001cc  7d000200  xsignal r4, 0
0001d0  7d000200  xsignal r4, 0
0001d4  7d000200  xsignal r4, 0
0001d8  7d000200  xsignal r4, 0
0001dc  7d000200  xsignal r4, 0
0001e0  7d000200  xsignal r4, 0
0001e4  7d000200  xsignal r4, 0
0001e8  7d000200  xsignal r4, 0
0001ec  7d000200  xsignal r4, 0
0001f0  7d000200  xsignal r4, 0
0001f4  7d000200  xsignal r4, 0
0001f8  7d000200  xsignal r4, 0
0001fc  7d000200  xsignal r4, 0
000200  7d000200  xsignal r4, 0
000204  7d000200  xsignal r4, 0
000208  7d000200  xsignal r4, 0
00020c  7d000200  xsignal r4, 0
000210  7d000200  xsignal r4, 0
000214  7d000200  xsignal r4, 0
000218  7d000200  xsignal r4, 0
00021c  7d000200  xsignal r4, 0
000220  7d000200  xsignal r4, 0
000224  7d000200  xsignal r4, 0
000228  7d000200  xsignal r4, 0
00022c  7d000200  xsignal r4, 0
000230  7d000200  xsignal r4, 0
000234  7d000200  xsignal r4, 0
000238  7d000200  xsignal r4, 0
00023c  7d000200  xsignal r4, 0
000240  7d000200  xsignal r4, 0
000244  7d000200  xsignal r4, 0
000248  7d000200  xsignal r4, 0
00024c  7d000200  xsignal r4, 0
000250  7d000200  xsignal r4, 0
000254  7d000200  xsignal r4, 0
000258  7d000200  xsignal r4, 0
00025c  7d000200  xsignal r4, 0
000260  7d000200  xsignal r4, 0
000264  7d800000  xsignal r1, 0
000268  7d800000  xsignal r1, 0
00026c  7d800000  xsignal r1, 0
000270  7d800000  xsignal r1, 0
000274  7d800000  xsignal r1, 0
000278  7d800000  xsignal r1, 0
00027c  7d800000  xsignal r1, 0
000280  7d800000  xsignal r1, 0
000284  7d800000  xsignal r1, 0
000288  9f101000  addli r1, zero, 9
00028c  7d800100  xsignal r3, 0
000290  7d800100  xsignal r3, 0
000294  7d800100  xsignal r3, 0
000298  7d800100  xsignal r3, 0
00029c  7d800100  xsignal r3, 0
0002a0  7d800100  xsignal r3, 0
0002a4  7d800100  xsignal r3, 0
0002a8  7d800100  xsignal r3, 0
0002ac  7d800100  xsignal r3, 0
0002b0  7d800100  xsignal r3, 0
0002b4  9f012000  addli r3, zero, 16
0002b8  7d800000  xsignal r1, 0
0002bc  7d800000  xsignal r1, 0
0002c0  7d800000  xsignal r1, 0
0002c4  7d800000  xsignal r1, 0
0002c8  7d800000  xsignal r1, 0
0002cc  7d800000  xsignal r1, 0
0002d0  7d800000  xsignal r1, 0
0002d4  7d800000  xsignal r1, 0
0002d8  9f402000  addli r1, zero, 20
0002dc  7d800100  xsignal r3, 0
0002e0  9f512000  addli r3, zero, 21
0002e4  7d800000  xsignal r1, 0
0002e8  7d800100  xsignal r3, 0
0002ec  e3007f00  loadli.w r1,  56(r30)
0002f0  e3417f00  loadli.w r3,  60(r30)
0002f4  80d20002  load_param_i r5, 1
0002f8  63028f00  loadli.w r4,  64(r30)
0002fc  2bf3ffff  lui r6, 1048575
000300  e74d0ffe  storeli.w zero, -36(r30)
000304  670b0ffe  storeli.w zero, -80(r30)
000308  e7080ffe  storeli.w zero, -120(r30)
00030c  1b13f3ff  ori r6, r6, 4095
000310  8b901120  mul.s r1, r3, r1
000314  9f810200  addli r3, r5, 0
000318  670e6ffe  storeli.w r6, -32(r30)
00031c  674e6ffe  storeli.w r6, -28(r30)
000320  e70e6ffe  storeli.w r6, -24(r30)
000324  e74e6ffe  storeli.w r6, -20(r30)
000328  670f6ffe  storeli.w r6, -16(r30)
00032c  674f6ffe  storeli.w r6, -12(r30)
000330  e70f6ffe  storeli.w r6, -8(r30)
000334  e74f6ffe  storeli.w r6, -4(r30)
000338  674b6ffe  storeli.w r6, -76(r30)
00033c  e70b6ffe  storeli.w r6, -72(r30)
000340  e74b6ffe  storeli.w r6, -68(r30)
000344  670c6ffe  storeli.w r6, -64(r30)
000348  674c6ffe  storeli.w r6, -60(r30)
00034c  e70c6ffe  storeli.w r6, -56(r30)
000350  e74c6ffe  storeli.w r6, -52(r30)
000354  670d6ffe  storeli.w r6, -48(r30)
000358  674d6ffe  storeli.w r6, -44(r30)
00035c  e70d6ffe  storeli.w r6, -40(r30)
000360  e7486ffe  storeli.w r6, -116(r30)
000364  67096ffe  storeli.w r6, -112(r30)
000368  67496ffe  storeli.w r6, -108(r30)
00036c  e7096ffe  storeli.w r6, -104(r30)
000370  e7496ffe  storeli.w r6, -100(r30)
000374  670a6ffe  storeli.w r6, -96(r30)
000378  674a6ffe  storeli.w r6, -92(r30)
00037c  e70a6ffe  storeli.w r6, -88(r30)
000380  e74a6ffe  storeli.w r6, -84(r30)
000384  8b914050  fmac.s r3, r1, r4
000388  0b924020  mul.s r4, r1, r4
00038c  9ff1f1ff  addli r3, r3, -1
000390  8b915130  div.s r3, r3, r5
000394  80520002  load_param_i r5, 0
000398  8b905120  mul.s r1, r3, r5
00039c  8b915150  fmac.s r3, r3, r5
0003a0  8b914140  min.s r3, r3, r4
0003a4  4bca1102  ble.s r3, r1, 1680
0003a8  63035f00  loadli.w r6,  40(r30)
0003ac  63424f00  loadli.w r4,  36(r30)
0003b0  339c0028  sext_int2long r[25:26], r1
0003b4  e3024f00  loadli.w r5,  32(r30)
0003b8  b3930128  sext_int2long r[8:9], r3
0003bc  ab810200  lui r3, 40
0003c0  e3041fff  loadli.w r9,  -120(r30)
0003c4  1f111000  addli r2, zero, 9
0003c8  1f4a0000  addli r20, zero, 4
0003cc  1f2b0000  addli r22, zero, 2
0003d0  9f1b0000  addli r23, zero, 1
0003d4  9f0d8000  addli r27, zero, 64
0003d8  1f060010  addli r12, zero, 2048
0003dc  9f082000  addli r17, zero, 16
0003e0  ab4a0000  lui r21, 4
0003e4  73347ff2  store.d r[8:9], -216(r30)
0003e8  e343bfff  loadli.w r7,  -36(r30)
0003ec  63046fff  loadli.w r8,  -80(r30)
0003f0  9b302300  slli r1, r6, 2
0003f4  33950228  sext_int2long r[11:12], r5
0003f8  e7471ffe  storeli.w r1, -132(r30)
0003fc  9b302200  slli r1, r4, 2
000400  7330aff2  store.d r[11:12], -224(r30)
000404  33150228  sext_int2long r[11:12], r4
000408  e7451ffe  storeli.w r1, -164(r30)
00040c  ab401600  lui r1, 356
000410  7338aff6  store.d r[11:12], -144(r30)
000414  9b900080  ori r1, r1, 2048
000418  67411ffe  storeli.w r1, -236(r30)
00041c  9b902184  ori r1, r3, 2114
000420  b3110328  sext_int2long r[4:5], r6
000424  e7401ffe  storeli.w r1, -244(r30)
000428  ab401400  lui r1, 324
00042c  733c3ff0  store.d r[4:5], -232(r30)
000430  9f010000  addli r3, zero, 0
000434  1b990080  ori r18, r1, 2048
000438  67012fff  storeli.w r18, -240(r30)
00043c  5b040000  j 32
000440  9f401000  addli r1, zero, 12
000444  7d800000  xsignal r1, 0
000448  6b5c0ff5  load.d r[25:26], -176(r30)
00044c  6b528ff2  load.d r[5:6], -216(r30)
000450  271c0c00  addli.d r[25:26], r[25:26], 1
000454  93304c04  setlt.sl r1, r[25:26], r[5:6]
000458  37f70002  beq r1, zero, 1500
00045c  3bb04901  bneq r19, r20, 12
000460  9f501000  addli r1, zero, 13
000464  7d900000  xwait r1, 0
000468  e3008f00  loadli.w r1,  64(r30)
00046c  63427f00  loadli.w r4,  60(r30)
000470  73388ff5  store.d r[25:26], -176(r30)
000474  8b101c30  div.s r1, r24, r1
000478  9f020200  addli r5, r4, 0
00047c  0b925030  div.s r4, r1, r5
000480  8b905038  mod.s r1, r1, r5
000484  9b366200  slli r13, r4, 6
000488  1bb39000  slli r6, r1, 9
00048c  33950028  sext_int2long r[11:12], r1
000490  33120228  sext_int2long r[5:6], r4
000494  9f600000  addli r1, zero, 6
000498  173c1202  sll.d r[25:26], r[5:6], r1
00049c  17322502  sll.d r[5:6], r[11:12], r2
0004a0  9f70f003  addli r1, zero, 511
0004a4  b3170328  sext_int2long r[16:17], r6
0004a8  6743dffe  storeli.w r13, -204(r30)
0004ac  17356203  sll.d r[11:12], r[5:6], r22
0004b0  33820028  zext_int2long r[5:6], r1
0004b4  e3005f00  loadli.w r1,  40(r30)
0004b8  733c8ff3  store.d r[25:26], -200(r30)
0004bc  7330fff4  store.d r[16:17], -192(r30)
0004c0  73304ff8  store.d r[5:6], -128(r30)
0004c4  7334aff4  store.d r[11:12], -184(r30)
0004c8  bfcb7001  blt.s r1, r23, 752
0004cc  6b558ff1  load.d r[11:12], -232(r30)
0004d0  33920628  sext_int2long r[5:6], r13
0004d4  1f090000  addli r18, zero, 0
0004d8  a7068200  addli.d r[14:15], r[5:6], 64
0004dc  0b35ac20  mul.sl r[11:12], r[25:26], r[11:12]
0004e0  278c0704  addli.d r[25:26], r[16:17], 512
0004e4  7330aff6  store.d r[11:12], -160(r30)
0004e8  6b550ff2  load.d r[11:12], -224(r30)
0004ec  8bb6a640  min.sl r[14:15], r[14:15], r[11:12]
0004f0  6b550ff7  load.d r[11:12], -144(r30)
0004f4  8bb64648  max.sl r[14:15], r[14:15], r[5:6]
0004f8  0b3cac40  min.sl r[25:26], r[25:26], r[11:12]
0004fc  6b558ff4  load.d r[11:12], -184(r30)
000500  8bb64618  sub.sl r[14:15], r[14:15], r[5:6]
000504  6b528f00  load.d r[5:6], 8(r30)
000508  0b22a210  add.ul r[5:6], r[5:6], r[11:12]
00050c  6b550ff6  load.d r[11:12], -160(r30)
000510  73344ff6  store.d r[5:6], -152(r30)
000514  0b32fc48  max.sl r[5:6], r[25:26], r[16:17]
000518  17356503  sll.d r[11:12], r[11:12], r22
00051c  0b3cf218  sub.sl r[25:26], r[5:6], r[16:17]
000520  6b520f00  load.d r[5:6], 0(r30)
000524  9b302c00  slli r1, r24, 2
000528  8b27a210  add.ul r[16:17], r[5:6], r[11:12]
00052c  1f020000  addli r4, zero, 0
000530  ab050200  lui r11, 32
000534  67061ffe  storeli.w r1, -160(r30)
000538  8b902438  mod.s r1, r9, r2
00053c  9f026000  addli r5, zero, 48
000540  0b9d5138  mod.s r26, r3, r5
000544  b3120928  sext_int2long r[6:7], r18
000548  9bb0e000  slli r1, r1, 14
00054c  1b3eed00  slli r28, r26, 14
000550  8b90b010  add.s r1, r1, r11
000554  bbe17901  bneq r19, r23, 120
000558  1f757000  addli r10, zero, 63
00055c  7d100a00  xwait r20, 0
000560  33050528  zext_int2long r[11:12], r10
000564  1335d504  setlt.sl r10, r[11:12], r[14:15]
000568  bb100500  bneq r10, zero, 36
00056c  1d000b00  lock zero, r22
000570  1f757000  addli r10, zero, 63
000574  0d000002  ew_cfg zero, zero, zero, 1
000578  0d100000  ewcoeff_cfg zero, zero, zero, 0
00057c  0d000504  ew_cfg zero, r10, zero, 2
000580  8d0d0006  ew_cfg r27, zero, zero, 3
000584  cd300000  ssaux r1, 0
000588  1d100b00  unlock r22
00058c  17b56203  sll.d r[11:12], r[6:7], r22
000590  7d000b00  xsignal r22, 0
000594  7d100b00  xwait r22, 0
000598  1d000a00  lock zero, r20
00059c  1f0d0002  addli r26, zero, 256
0005a0  15000000  dma_cfg zero, zero, zero, 0
0005a4  0ba5a710  add.ul r[11:12], r[16:17], r[11:12]
0005a8  15800504  dma_cfg zero, r11, zero, 2
0005ac  9500a507  dma_cfg r1, r10, r26, 3
0005b0  ab050200  lui r11, 32
0005b4  e340fffe  loadli.w r1,  -132(r30)
0005b8  158dd008  dma_cfg r26, r1, r13, 4
0005bc  9f300000  addli r1, zero, 3
0005c0  35000000  dma_run zero
0005c4  1d100a00  unlock r20
0005c8  5b080000  j 64
0005cc  3b816901  bneq r19, r22, 64
0005d0  1f350000  addli r10, zero, 3
0005d4  7d100500  xwait r10, 0
0005d8  1f650000  addli r10, zero, 6
0005dc  7d100500  xwait r10, 0
0005e0  b7800600  beq r13, zero, 32
0005e4  1d000000  lock zero, zero
0005e8  010b0000  ds_cfg r22, zero, 0
0005ec  810d0002  ds_cfg r27, zero, 1
0005f0  810d001c  ds_cfg r27, zero, 14
0005f4  8106001a  ds_cfg r13, zero, 13
0005f8  219eb003  shuffle_batch r28, r1, r27, 1
0005fc  1d100000  unlock zero
000600  9f500000  addli r1, zero, 5
000604  7d000a00  xsignal r20, 0
000608  7d800000  xsignal r1, 0
00060c  9f001000  addli r1, zero, 8
000610  2b450400  lui r10, 68
000614  8b901338  mod.s r1, r7, r1
000618  9bb01001  slli r1, r1, 17
00061c  0b9da010  add.s r26, r1, r10
000620  bbf07901  bneq r19, r23, 60
000624  eb520ff8  load.d r[6:7], -128(r30)
000628  7d100100  xwait r2, 0
00062c  93b08205  setlt.sl r1, r[6:7], r[25:26]
000630  bb900000  bneq r1, zero, 36
000634  1d000b00  lock zero, r22
000638  9f70f003  addli r1, zero, 511
00063c  0d000002  ew_cfg zero, zero, zero, 1
000640  0d100000  ewcoeff_cfg zero, zero, zero, 0
000644  0d800004  ew_cfg zero, r1, zero, 2
000648  8d0d0006  ew_cfg r27, zero, zero, 3
00064c  4d3d0000  ssaux r26, 0
000650  1d100b00  unlock r22
000654  9f700000  addli r1, zero, 7
000658  db260000  j 308
00065c  9f201000  addli r1, zero, 10
000660  1f750000  addli r10, zero, 7
000664  8b101438  mod.s r1, r8, r1
000668  9bb01001  slli r1, r1, 17
00066c  b7b1a900  beq r19, r10, 108
000670  1f650000  addli r10, zero, 6
000674  bb82a900  bneq r19, r10, 160
000678  6b550ff7  load.d r[11:12], -144(r30)
00067c  9f700000  addli r1, zero, 7
000680  7d900000  xwait r1, 0
000684  1d000a00  lock zero, r20
000688  a7000c00  addli.d r[2:3], r[25:26], 0
00068c  278c0700  addli.d r[25:26], r[16:17], 0
000690  8bb2a220  mul.sl r[6:7], r[6:7], r[11:12]
000694  eb578ff6  load.d r[16:17], -152(r30)
000698  15000000  dma_cfg zero, zero, zero, 0
00069c  ab050200  lui r11, 32
0006a0  97b26203  sll.d r[6:7], r[6:7], r22
0006a4  8ba25710  add.ul r[6:7], r[16:17], r[6:7]
0006a8  a7070c00  addli.d r[16:17], r[25:26], 0
0006ac  278c0000  addli.d r[25:26], r[2:3], 0
0006b0  1f111000  addli r2, zero, 9
0006b4  15000304  dma_cfg zero, r6, zero, 2
0006b8  e300cffe  loadli.w r1,  -160(r30)
0006bc  158d1206  dma_cfg r26, r5, r1, 3
0006c0  e340bffe  loadli.w r1,  -164(r30)
0006c4  1586b009  dma_cfg r12, r1, r27, 4
0006c8  35000000  dma_run zero
0006cc  1d100a00  unlock r20
0006d0  9f001000  addli r1, zero, 8
0006d4  5b170000  j 184
0006d8  9f021000  addli r5, zero, 8
0006dc  7d900200  xwait r5, 0
0006e0  9f321000  addli r5, zero, 11
0006e4  7d900200  xwait r5, 0
0006e8  1d000000  lock zero, zero
0006ec  9f020004  addli r5, zero, 512
0006f0  010b0000  ds_cfg r22, zero, 0
0006f4  81020002  ds_cfg r5, zero, 1
0006f8  810d001c  ds_cfg r27, zero, 14
0006fc  8102001a  ds_cfg r5, zero, 13
000700  c100bd05  shuffle_coa r1, r26, r27, 2
000704  9f201000  addli r1, zero, 10
000708  1d100000  unlock zero
00070c  7d000100  xsignal r2, 0
000710  db0f0000  j 124
000714  bbf14901  bneq r19, r20, 124
000718  9f520000  addli r5, zero, 5
00071c  7d900200  xwait r5, 0
000720  9f221000  addli r5, zero, 10
000724  7d900200  xwait r5, 0
000728  b7400200  beq r4, zero, 48
00072c  37d10600  beq r13, zero, 84
000730  9f020000  addli r5, zero, 0
000734  1d800b00  lock zero, r23
000738  898ddd00  mm_cfg r27, r27, r13, 0
00073c  098a7805  mm_cfg r20, r17, r23, 2
000740  a9121e10  mm_acc r5, r28, r1, 8
000744  9f820202  addli r5, r5, 256
000748  8b905011  add.s r1, r1, r21
00074c  1d900b00  unlock r23
000750  bb9fc2fe  bneq r5, r12, -28
000754  db050000  j 44
000758  b7a00600  beq r13, zero, 40
00075c  9f020000  addli r5, zero, 0
000760  1d800b00  lock zero, r23
000764  898ddd00  mm_cfg r27, r27, r13, 0
000768  098a7805  mm_cfg r20, r17, r23, 2
00076c  a9021e10  mm r5, r28, r1, 8
000770  9f820202  addli r5, r5, 256
000774  8b905011  add.s r1, r1, r21
000778  1d900b00  unlock r23
00077c  bb9fc2fe  bneq r5, r12, -28
000780  9f600000  addli r1, zero, 6
000784  7d800000  xsignal r1, 0
000788  9f301000  addli r1, zero, 11
00078c  7d800000  xsignal r1, 0
000790  e3005f00  loadli.w r1,  40(r30)
000794  9f910100  addli r3, r3, 1
000798  9f940400  addli r9, r9, 1
00079c  1f140400  addli r8, r8, 1
0007a0  9f930300  addli r7, r7, 1
0007a4  1f098900  addli r18, r18, 64
0007a8  1f120200  addli r4, r4, 1
0007ac  3f3619fe  blt.s r18, r1, -628
0007b0  37c249ff  beq r19, r20, -880
0007b4  db010000  j 12
0007b8  ab050200  lui r11, 32
0007bc  379249ff  beq r19, r20, -892
0007c0  63432ffe  loadli.w r6,  -236(r30)
0007c4  63092ffe  loadli.w r18,  -240(r30)
0007c8  9f500000  addli r1, zero, 5
0007cc  37d41900  beq r19, r1, 276
0007d0  9f300000  addli r1, zero, 3
0007d4  37f21900  beq r19, r1, 156
0007d8  eb560ff4  load.d r[14:15], -192(r30)
0007dc  6b550ff7  load.d r[11:12], -144(r30)
0007e0  6b5c0ff5  load.d r[25:26], -176(r30)
0007e4  27820604  addli.d r[5:6], r[14:15], 512
0007e8  0b32a240  min.sl r[5:6], r[5:6], r[11:12]
0007ec  0b32d248  max.sl r[5:6], r[5:6], r[14:15]
0007f0  0b32d218  sub.sl r[5:6], r[5:6], r[14:15]
0007f4  bb967901  bneq r19, r23, 420
0007f8  6b550ff8  load.d r[11:12], -128(r30)
0007fc  7d900800  xwait r17, 0
000800  93304504  setlt.sl r1, r[11:12], r[5:6]
000804  bba00000  bneq r1, zero, 40
000808  1d000b00  lock zero, r22
00080c  9f70f003  addli r1, zero, 511
000810  0d000002  ew_cfg zero, zero, zero, 1
000814  0d100000  ewcoeff_cfg zero, zero, zero, 0
000818  0d800004  ew_cfg zero, r1, zero, 2
00081c  ab401400  lui r1, 324
000820  8d0b0006  ew_cfg r23, zero, zero, 3
000824  cd300000  ssaux r1, 0
000828  1d100b00  unlock r22
00082c  9f601000  addli r1, zero, 14
000830  6b550f01  load.d r[11:12], 16(r30)
000834  7d800000  xsignal r1, 0
000838  eb568ff4  load.d r[14:15], -184(r30)
00083c  7d900000  xwait r1, 0
000840  1d000a00  lock zero, r20
000844  9b302200  slli r1, r4, 2
000848  2b421400  lui r4, 324
00084c  15000000  dma_cfg zero, zero, zero, 0
000850  0b25d510  add.ul r[11:12], r[11:12], r[14:15]
000854  15800504  dma_cfg zero, r11, zero, 2
000858  15021506  dma_cfg r4, r10, r1, 3
00085c  95807009  dma_cfg r1, r1, r23, 4
000860  35000000  dma_run zero
000864  1d100a00  unlock r20
000868  9f701000  addli r1, zero, 15
00086c  5b380000  j 448
000870  1f421000  addli r4, zero, 12
000874  9f000000  addli r1, zero, 0
000878  ab421400  lui r5, 324
00087c  7d100200  xwait r4, 0
000880  1f721000  addli r4, zero, 15
000884  7d100200  xwait r4, 0
000888  1f422000  addli r4, zero, 20
00088c  7d100200  xwait r4, 0
000890  1d000b00  lock zero, r22
000894  2b02803f  lui r4, 260096
000898  0d000002  ew_cfg zero, zero, zero, 1
00089c  0d120200  ewcoeff_cfg r4, r4, zero, 0
0008a0  1f72f003  addli r4, zero, 511
0008a4  0d000204  ew_cfg zero, r4, zero, 2
0008a8  8d0b0006  ew_cfg r23, zero, zero, 3
0008ac  6b5c0ff5  load.d r[25:26], -176(r30)
0008b0  0b922011  add.s r4, r1, r18
0008b4  2d825000  dsmadd r4, r1, r5, 0
0008b8  9f800010  addli r1, r1, 2048
0008bc  bbdfb0fe  bneq r1, r11, -12
0008c0  9f501000  addli r1, zero, 13
0008c4  1d100b00  unlock r22
0008c8  7d800000  xsignal r1, 0
0008cc  9f302000  addli r1, zero, 19
0008d0  7d800800  xsignal r17, 0
0008d4  7d800000  xsignal r1, 0
0008d8  9f102000  addli r1, zero, 17
0008dc  5b2a0000  j 336
0008e0  1f122000  addli r4, zero, 17
0008e4  9f000000  addli r1, zero, 0
0008e8  7d100200  xwait r4, 0
0008ec  1f522000  addli r4, zero, 21
0008f0  7d100200  xwait r4, 0
0008f4  1d000b00  lock zero, r22
0008f8  1f72f003  addli r4, zero, 511
0008fc  0d000002  ew_cfg zero, zero, zero, 1
000900  0d000204  ew_cfg zero, r4, zero, 2
000904  2b022042  lui r4, 270848
000908  8d0b0006  ew_cfg r23, zero, zero, 3
00090c  0d120000  ewcoeff_cfg r4, zero, zero, 0
000910  6b5c0ff5  load.d r[25:26], -176(r30)
000914  0b926010  add.s r4, r1, r6
000918  8b922011  add.s r5, r1, r18
00091c  9f800010  addli r1, r1, 2048
000920  2da25208  dscmpnsel r4, r5, r5, 4
000924  bbcfb0fe  bneq r1, r11, -16
000928  9f302000  addli r1, zero, 19
00092c  1d100b00  unlock r22
000930  7d900000  xwait r1, 0
000934  1d000b00  lock zero, r22
000938  ab00803f  lui r1, 260096
00093c  0d000002  ew_cfg zero, zero, zero, 1
000940  0d101000  ewcoeff_cfg zero, zero, r1, 0
000944  8d0b0024  ew_cfg r23, zero, zero, 18
000948  0d0b0014  ew_cfg r22, zero, zero, 10
00094c  e3401ffe  loadli.w r1,  -244(r30)
000950  0d8b1b16  ew_cfg r22, r23, r1, 11
000954  abc07f41  lui r1, 268284
000958  0d00001a  ew_cfg zero, zero, zero, 13
00095c  0d001a1c  ew_cfg zero, r20, r1, 14
000960  9f70f00f  addli r1, zero, 2047
000964  0d00001e  ew_cfg zero, zero, zero, 15
000968  0d800004  ew_cfg zero, r1, zero, 2
00096c  9f202000  addli r1, zero, 18
000970  8d080006  ew_cfg r17, zero, zero, 3
000974  8d881827  ew_cfg r17, r17, r17, 19
000978  2d192301  dsmul r18, r6, r18, 0
00097c  0d000014  ew_cfg zero, zero, zero, 10
000980  0d000024  ew_cfg zero, zero, zero, 18
000984  0d000026  ew_cfg zero, zero, zero, 19
000988  1d100b00  unlock r22
00098c  7d800000  xsignal r1, 0
000990  9f502000  addli r1, zero, 21
000994  5b130000  j 152
000998  bbda09fc  bneq r19, zero, -1356
00099c  e3406ffe  loadli.w r1,  -204(r30)
0009a0  33950028  sext_int2long r[11:12], r1
0009a4  9f000004  addli r1, zero, 512
0009a8  b3860028  zext_int2long r[14:15], r1
0009ac  a7078500  addli.d r[16:17], r[11:12], 64
0009b0  9f202000  addli r1, zero, 18
0009b4  0b32d240  min.sl r[5:6], r[5:6], r[14:15]
0009b8  eb560ff2  load.d r[14:15], -224(r30)
0009bc  73304ff8  store.d r[5:6], -128(r30)
0009c0  6b528ff3  load.d r[5:6], -200(r30)
0009c4  8bb6d740  min.sl r[14:15], r[16:17], r[14:15]
0009c8  eb570ff7  load.d r[16:17], -144(r30)
0009cc  8bb6a648  max.sl r[14:15], r[14:15], r[11:12]
0009d0  8b37f220  mul.sl r[16:17], r[5:6], r[16:17]
0009d4  6b528f01  load.d r[5:6], 24(r30)
0009d8  0bb5a618  sub.sl r[11:12], r[14:15], r[11:12]
0009dc  b3860d28  zext_int2long r[14:15], r27
0009e0  97b76703  sll.d r[16:17], r[16:17], r22
0009e4  0b35d540  min.sl r[11:12], r[11:12], r[14:15]
0009e8  8b27f210  add.ul r[16:17], r[5:6], r[16:17]
0009ec  6b528ff4  load.d r[5:6], -184(r30)
0009f0  7d900000  xwait r1, 0
0009f4  8ba64710  add.ul r[14:15], r[16:17], r[5:6]
0009f8  1f520000  addli r4, zero, 5
0009fc  1d000200  lock zero, r4
000a00  15000000  dma_cfg zero, zero, zero, 0
000a04  15800b02  dma_cfg zero, r23, zero, 1
000a08  eb520ff8  load.d r[6:7], -128(r30)
000a0c  15070004  dma_cfg r14, zero, zero, 2
000a10  9bb02200  slli r1, r5, 2
000a14  95061906  dma_cfg r13, r18, r1, 3
000a18  e340bffe  loadli.w r1,  -164(r30)
000a1c  9500a608  dma_cfg r1, r12, r10, 4
000a20  9f402000  addli r1, zero, 20
000a24  35000000  dma_run zero
000a28  1d100200  unlock r4
000a2c  7d800000  xsignal r1, 0
000a30  db43ffff  j -1508
000a34  7d000000  xsignal zero, 0
000a38  bbe00900  bneq r19, zero, 56
000a3c  9f200000  addli r1, zero, 2
000a40  7d100000  xwait zero, 0
000a44  7d100000  xwait zero, 0
000a48  7d100000  xwait zero, 0
000a4c  7d100000  xwait zero, 0
000a50  7d100000  xwait zero, 0
000a54  7d100000  xwait zero, 0
000a58  7d100000  xwait zero, 0
000a5c  7d100000  xwait zero, 0
000a60  1d800000  lock zero, r1
000a64  0d000020  ew_cfg zero, zero, zero, 16
000a68  1d900000  unlock r1
000a6c  7d400000  xsignal_mode_cfg zero
000a70  9f8efe01  addli sp, sp, 248
000a74  00a00300  mfence { lm, sm, gm }
000a78  00100000  exit
000a7c  00100000  exit
000a80  00100000  exit
000a84  00100000  exit
000a88  00100000  exit
000a8c  00100000  exit
000a90  00100000  exit
000a94  00100000  exit
000a98  00100000  exit
000a9c  00100000  exit
000aa0  00100000  exit
000aa4  00100000  exit
000aa8  00100000  exit
000aac  00100000  exit
000ab0  00100000  exit
000ab4  00100000  exit
000ab8  00100000  exit
000abc  00100000  exit
000ac0  00100000  exit
000ac4  00100000  exit
000ac8  00100000  exit
000acc  00100000  exit
000ad0  00100000  exit
000ad4  00100000  exit
000ad8  00100000  exit
000adc  00100000  exit
000ae0  00100000  exit
000ae4  00100000  exit
000ae8  00100000  exit
000aec  00100000  exit
000af0  00100000  exit
000af4  00100000  exit
000af8  00100000  exit
000afc  00100000  exit
000b00  00100000  exit
000b04  00100000  exit
000b08  00100000  exit
000b0c  00100000  exit
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
