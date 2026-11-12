; SHA-256 c6a48ec926474e2ddfbc9708539131cd4c96d07283352195c12bc7a181d1c6b9
; P800 SDNN · XTDK LLVM 19 · 878 / 878 words decoded
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
0000bc  9f8e6efc  addli sp, sp, -464
0000c0  9f110000  addli r3, zero, 1
0000c4  00310002  core_id r2
0000c8  1f8fae02  addli r30, sp, 336
0000cc  7dc00100  xsignal_mode_cfg r3
0000d0  b7100100  beq r2, zero, 36
0000d4  abf0ffff  lui r1, 1048575
0000d8  7d900100  xwait r3, 0
0000dc  7d900100  xwait r3, 0
0000e0  7d100000  xwait zero, 0
0000e4  9b90f0ff  ori r1, r1, 4095
0000e8  80a10004  csr_set csr3, r1
0000ec  00d00100  sync_group
0000f0  5b480000  j 576
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
000194  9f711000  addli r3, zero, 15
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
000204  7d800000  xsignal r1, 0
000208  7d800000  xsignal r1, 0
00020c  7d800000  xsignal r1, 0
000210  7d800000  xsignal r1, 0
000214  7d800000  xsignal r1, 0
000218  7d800000  xsignal r1, 0
00021c  7d800000  xsignal r1, 0
000220  7d800000  xsignal r1, 0
000224  7d800000  xsignal r1, 0
000228  7d800000  xsignal r1, 0
00022c  7d800000  xsignal r1, 0
000230  7d800000  xsignal r1, 0
000234  7d800000  xsignal r1, 0
000238  7d800000  xsignal r1, 0
00023c  9f101000  addli r1, zero, 9
000240  7d800100  xsignal r3, 0
000244  7d800100  xsignal r3, 0
000248  7d800100  xsignal r3, 0
00024c  7d800100  xsignal r3, 0
000250  7d800100  xsignal r3, 0
000254  7d800100  xsignal r3, 0
000258  7d800100  xsignal r3, 0
00025c  7d800100  xsignal r3, 0
000260  7d800100  xsignal r3, 0
000264  7d800100  xsignal r3, 0
000268  7d800100  xsignal r3, 0
00026c  7d800100  xsignal r3, 0
000270  7d800100  xsignal r3, 0
000274  7d800100  xsignal r3, 0
000278  7d800100  xsignal r3, 0
00027c  7d800100  xsignal r3, 0
000280  7d800100  xsignal r3, 0
000284  7d800100  xsignal r3, 0
000288  7d800100  xsignal r3, 0
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
0002b4  7d800100  xsignal r3, 0
0002b8  7d800100  xsignal r3, 0
0002bc  7d800100  xsignal r3, 0
0002c0  7d800100  xsignal r3, 0
0002c4  7d800100  xsignal r3, 0
0002c8  7d800100  xsignal r3, 0
0002cc  7d800100  xsignal r3, 0
0002d0  7d800100  xsignal r3, 0
0002d4  7d800100  xsignal r3, 0
0002d8  7d800100  xsignal r3, 0
0002dc  7d800100  xsignal r3, 0
0002e0  9f212000  addli r3, zero, 18
0002e4  7d800000  xsignal r1, 0
0002e8  7d800000  xsignal r1, 0
0002ec  7d800000  xsignal r1, 0
0002f0  7d800000  xsignal r1, 0
0002f4  7d800000  xsignal r1, 0
0002f8  7d800000  xsignal r1, 0
0002fc  7d800000  xsignal r1, 0
000300  7d800000  xsignal r1, 0
000304  7d800000  xsignal r1, 0
000308  7d800000  xsignal r1, 0
00030c  7d800000  xsignal r1, 0
000310  7d800000  xsignal r1, 0
000314  7d800000  xsignal r1, 0
000318  7d800000  xsignal r1, 0
00031c  9f502000  addli r1, zero, 21
000320  7d800100  xsignal r3, 0
000324  9f612000  addli r3, zero, 22
000328  7d800000  xsignal r1, 0
00032c  7d800100  xsignal r3, 0
000330  e3007f00  loadli.w r1,  56(r30)
000334  e3417f00  loadli.w r3,  60(r30)
000338  00d20002  load_param_i r4, 1
00033c  e3028f00  loadli.w r5,  64(r30)
000340  80530002  load_param_i r7, 0
000344  2bf3ffff  lui r6, 1048575
000348  674c0ffe  storeli.w zero, -60(r30)
00034c  67020ffe  storeli.w zero, -224(r30)
000350  8b901120  mul.s r1, r3, r1
000354  9f010200  addli r3, r4, 0
000358  8b915050  fmac.s r3, r1, r5
00035c  8b925020  mul.s r5, r1, r5
000360  9ff1f1ff  addli r3, r3, -1
000364  8b914130  div.s r3, r3, r4
000368  1b12f3ff  ori r4, r6, 4095
00036c  e70c4ffe  storeli.w r4, -56(r30)
000370  e74c4ffe  storeli.w r4, -52(r30)
000374  670d4ffe  storeli.w r4, -48(r30)
000378  674d4ffe  storeli.w r4, -44(r30)
00037c  e70d4ffe  storeli.w r4, -40(r30)
000380  e74d4ffe  storeli.w r4, -36(r30)
000384  670e4ffe  storeli.w r4, -32(r30)
000388  674e4ffe  storeli.w r4, -28(r30)
00038c  e70e4ffe  storeli.w r4, -24(r30)
000390  e74e4ffe  storeli.w r4, -20(r30)
000394  670f4ffe  storeli.w r4, -16(r30)
000398  674f4ffe  storeli.w r4, -12(r30)
00039c  e70f4ffe  storeli.w r4, -8(r30)
0003a0  e74f4ffe  storeli.w r4, -4(r30)
0003a4  67424ffe  storeli.w r4, -220(r30)
0003a8  e7024ffe  storeli.w r4, -216(r30)
0003ac  e7424ffe  storeli.w r4, -212(r30)
0003b0  67034ffe  storeli.w r4, -208(r30)
0003b4  67434ffe  storeli.w r4, -204(r30)
0003b8  e7034ffe  storeli.w r4, -200(r30)
0003bc  e7434ffe  storeli.w r4, -196(r30)
0003c0  67044ffe  storeli.w r4, -192(r30)
0003c4  67444ffe  storeli.w r4, -188(r30)
0003c8  e7044ffe  storeli.w r4, -184(r30)
0003cc  e7444ffe  storeli.w r4, -180(r30)
0003d0  67054ffe  storeli.w r4, -176(r30)
0003d4  67454ffe  storeli.w r4, -172(r30)
0003d8  e7054ffe  storeli.w r4, -168(r30)
0003dc  e7454ffe  storeli.w r4, -164(r30)
0003e0  67064ffe  storeli.w r4, -160(r30)
0003e4  67464ffe  storeli.w r4, -156(r30)
0003e8  e7064ffe  storeli.w r4, -152(r30)
0003ec  e7464ffe  storeli.w r4, -148(r30)
0003f0  67074ffe  storeli.w r4, -144(r30)
0003f4  67474ffe  storeli.w r4, -140(r30)
0003f8  e7074ffe  storeli.w r4, -136(r30)
0003fc  e7474ffe  storeli.w r4, -132(r30)
000400  67084ffe  storeli.w r4, -128(r30)
000404  67484ffe  storeli.w r4, -124(r30)
000408  e7084ffe  storeli.w r4, -120(r30)
00040c  e7484ffe  storeli.w r4, -116(r30)
000410  67094ffe  storeli.w r4, -112(r30)
000414  67494ffe  storeli.w r4, -108(r30)
000418  e7094ffe  storeli.w r4, -104(r30)
00041c  e7494ffe  storeli.w r4, -100(r30)
000420  670a4ffe  storeli.w r4, -96(r30)
000424  674a4ffe  storeli.w r4, -92(r30)
000428  e70a4ffe  storeli.w r4, -88(r30)
00042c  e74a4ffe  storeli.w r4, -84(r30)
000430  670b4ffe  storeli.w r4, -80(r30)
000434  674b4ffe  storeli.w r4, -76(r30)
000438  e70b4ffe  storeli.w r4, -72(r30)
00043c  e74b4ffe  storeli.w r4, -68(r30)
000440  670c4ffe  storeli.w r4, -64(r30)
000444  8b907120  mul.s r1, r3, r7
000448  8b917150  fmac.s r3, r3, r7
00044c  8b915140  min.s r3, r3, r5
000450  cb8b1102  ble.s r3, r1, 1760
000454  63055f00  loadli.w r10,  40(r30)
000458  e3424f00  loadli.w r5,  36(r30)
00045c  b39d0028  sext_int2long r[28:29], r1
000460  63034f00  loadli.w r6,  32(r30)
000464  b3930128  sext_int2long r[8:9], r3
000468  e3044ffe  loadli.w r9,  -224(r30)
00046c  1f020000  addli r4, zero, 0
000470  1f091000  addli r18, zero, 8
000474  9f410000  addli r3, zero, 4
000478  9f1a0000  addli r21, zero, 1
00047c  1f2d0000  addli r26, zero, 2
000480  1f068000  addli r12, zero, 64
000484  1f070008  addli r14, zero, 1024
000488  9f0c0000  addli r25, zero, 0
00048c  73347fec  store.d r[8:9], -312(r30)
000490  63448fff  loadli.w r8,  -60(r30)
000494  9b301500  slli r1, r10, 1
000498  33130328  sext_int2long r[7:8], r6
00049c  e74f1ffc  storeli.w r1, -260(r30)
0004a0  9bb01200  slli r1, r5, 1
0004a4  73306fec  store.d r[7:8], -320(r30)
0004a8  33930228  sext_int2long r[7:8], r5
0004ac  ab820200  lui r5, 40
0004b0  e7401ffe  storeli.w r1, -244(r30)
0004b4  ab001400  lui r1, 320
0004b8  733c6ff0  store.d r[7:8], -232(r30)
0004bc  9b900020  ori r1, r1, 512
0004c0  674b1ffc  storeli.w r1, -332(r30)
0004c4  9b902284  ori r1, r5, 2114
0004c8  b3120528  sext_int2long r[6:7], r10
0004cc  670b1ffc  storeli.w r1, -336(r30)
0004d0  733c5fea  store.d r[6:7], -328(r30)
0004d4  5b040000  j 32
0004d8  9f401000  addli r1, zero, 12
0004dc  7d800000  xsignal r1, 0
0004e0  eb5d0fef  load.d r[28:29], -272(r30)
0004e4  eb528fec  load.d r[6:7], -312(r30)
0004e8  a79d0d00  addli.d r[28:29], r[28:29], 1
0004ec  93b05d04  setlt.sl r1, r[28:29], r[6:7]
0004f0  37890002  beq r1, zero, 1600
0004f4  3b303100  bneq r2, r3, 12
0004f8  9f701000  addli r1, zero, 15
0004fc  7d900000  xwait r1, 0
000500  e3008f00  loadli.w r1,  64(r30)
000504  e3427f00  loadli.w r5,  60(r30)
000508  7338bfef  store.d r[28:29], -272(r30)
00050c  8b901d30  div.s r1, r27, r1
000510  1f830200  addli r6, r5, 0
000514  8b926030  div.s r5, r1, r6
000518  8b906038  mod.s r1, r1, r6
00051c  9bb58200  slli r11, r5, 8
000520  b3920228  sext_int2long r[6:7], r5
000524  b3970028  sext_int2long r[16:17], r1
000528  1bb58000  slli r10, r1, 8
00052c  9f70f001  addli r1, zero, 255
000530  97b92203  sll.d r[20:21], r[6:7], r18
000534  97b22703  sll.d r[6:7], r[16:17], r18
000538  b38d0028  zext_int2long r[28:29], r1
00053c  e3005f00  loadli.w r1,  40(r30)
000540  33110528  sext_int2long r[3:4], r10
000544  674dbffc  storeli.w r11, -300(r30)
000548  17bb5203  sll.d r[23:24], r[6:7], r21
00054c  733c3fed  store.d r[20:21], -296(r30)
000550  73342fee  store.d r[3:4], -280(r30)
000554  73306fef  store.d r[23:24], -288(r30)
000558  bfdb5001  blt.s r1, r21, 756
00055c  eb578feb  load.d r[16:17], -328(r30)
000560  b3920528  sext_int2long r[6:7], r11
000564  9f060000  addli r13, zero, 0
000568  9f080000  addli r17, zero, 0
00056c  27850202  addli.d r[11:12], r[6:7], 256
000570  8bb7f920  mul.sl r[16:17], r[20:21], r[16:17]
000574  eb598ff1  load.d r[20:21], -232(r30)
000578  7330fff0  store.d r[16:17], -256(r30)
00057c  eb570fec  load.d r[16:17], -320(r30)
000580  0b35f540  min.sl r[11:12], r[11:12], r[16:17]
000584  a7070102  addli.d r[16:17], r[3:4], 256
000588  0b355548  max.sl r[11:12], r[11:12], r[6:7]
00058c  8bb93741  min.sl r[20:21], r[16:17], r[20:21]
000590  eb570ff0  load.d r[16:17], -256(r30)
000594  0b355518  sub.sl r[11:12], r[11:12], r[6:7]
000598  eb528f00  load.d r[6:7], 8(r30)
00059c  8ba26211  add.ul r[6:7], r[6:7], r[23:24]
0005a0  73385ff0  store.d r[6:7], -240(r30)
0005a4  8bb22948  max.sl r[6:7], r[20:21], r[3:4]
0005a8  97b95703  sll.d r[20:21], r[16:17], r21
0005ac  eb570f00  load.d r[16:17], 0(r30)
0005b0  8bb22218  sub.sl r[6:7], r[6:7], r[3:4]
0005b4  9f410000  addli r3, zero, 4
0005b8  8ba03711  add.ul r[2:3], r[16:17], r[20:21]
0005bc  2b080400  lui r16, 64
0005c0  1bba1200  slli r20, r5, 1
0005c4  73301ff0  store.d r[2:3], -256(r30)
0005c8  00310002  core_id r2
0005cc  db0e0000  j 116
0005d0  eb578ff1  load.d r[16:17], -232(r30)
0005d4  9f790000  addli r19, zero, 7
0005d8  7d800900  xsignal r19, 0
0005dc  7d900900  xwait r19, 0
0005e0  8bb7fb20  mul.sl r[16:17], r[24:25], r[16:17]
0005e4  6b5b0ff1  load.d r[23:24], -240(r30)
0005e8  1d800100  lock zero, r3
0005ec  958a0a00  dma_cfg r21, r21, zero, 0
0005f0  97b75703  sll.d r[16:17], r[16:17], r21
0005f4  8b27fb10  add.ul r[16:17], r[23:24], r[16:17]
0005f8  15000804  dma_cfg zero, r16, zero, 2
0005fc  95804707  dma_cfg r1, r15, r20, 3
000600  9f070004  addli r15, zero, 512
000604  2b080400  lui r16, 64
000608  e3401ffe  loadli.w r1,  -244(r30)
00060c  9587c008  dma_cfg r15, r1, r12, 4
000610  35000000  dma_run zero
000614  1d900100  unlock r3
000618  7d000900  xsignal r18, 0
00061c  e3005f00  loadli.w r1,  40(r30)
000620  1f120200  addli r4, r4, 1
000624  9f9c0c00  addli r25, r25, 1
000628  9f940400  addli r9, r9, 1
00062c  1f140400  addli r8, r8, 1
000630  9f868600  addli r13, r13, 64
000634  9f980800  addli r17, r17, 1
000638  3fa01600  blt.s r13, r1, 8
00063c  db430000  j 540
000640  9f601000  addli r1, zero, 14
000644  9f073000  addli r15, zero, 24
000648  b39b0628  sext_int2long r[24:25], r13
00064c  8b901c38  mod.s r1, r25, r1
000650  8b19f238  mod.s r19, r4, r15
000654  9bb0f000  slli r1, r1, 15
000658  1bbbf900  slli r22, r19, 15
00065c  8b900011  add.s r1, r1, r16
000660  bb705101  bneq r2, r21, 60
000664  93b9ad04  setlt.sl r19, r[28:29], r[11:12]
000668  7d900100  xwait r3, 0
00066c  bba00900  bneq r19, zero, 40
000670  1d000d00  lock zero, r26
000674  9f777000  addli r15, zero, 63
000678  8d0a0002  ew_cfg r21, zero, zero, 1
00067c  0d100000  ewcoeff_cfg zero, zero, zero, 0
000680  0d800704  ew_cfg zero, r15, zero, 2
000684  9f070002  addli r15, zero, 256
000688  8d070006  ew_cfg r15, zero, zero, 3
00068c  cd300000  ssaux r1, 0
000690  1d100d00  unlock r26
000694  7d000d00  xsignal r26, 0
000698  db120000  j 148
00069c  3751a101  beq r2, r26, 84
0006a0  9f670000  addli r15, zero, 6
0006a4  3b22f100  bneq r2, r15, 136
0006a8  7d100d00  xwait r26, 0
0006ac  9f030a00  addli r7, r20, 0
0006b0  eb590ff0  load.d r[20:21], -256(r30)
0006b4  97b75b03  sll.d r[16:17], r[24:25], r21
0006b8  1d800100  lock zero, r3
0006bc  958a0a00  dma_cfg r21, r21, zero, 0
0006c0  8ba7f910  add.ul r[16:17], r[20:21], r[16:17]
0006c4  9f090001  addli r19, zero, 128
0006c8  1f8a0300  addli r20, r7, 0
0006cc  15000804  dma_cfg zero, r16, zero, 2
0006d0  95803707  dma_cfg r1, r15, r19, 3
0006d4  2b080400  lui r16, 64
0006d8  e340fffd  loadli.w r1,  -260(r30)
0006dc  9589a008  dma_cfg r19, r1, r10, 4
0006e0  35000000  dma_run zero
0006e4  1d900100  unlock r3
0006e8  9f300000  addli r1, zero, 3
0006ec  db070000  j 60
0006f0  9f330000  addli r7, zero, 3
0006f4  9f670000  addli r15, zero, 6
0006f8  7d900300  xwait r7, 0
0006fc  7d900700  xwait r15, 0
000700  b7000500  beq r10, zero, 32
000704  1d000000  lock zero, zero
000708  81030000  ds_cfg r7, zero, 0
00070c  01060002  ds_cfg r12, zero, 1
000710  0106001c  ds_cfg r12, zero, 14
000714  0105001a  ds_cfg r10, zero, 13
000718  219bc002  shuffle_batch r22, r1, r12, 1
00071c  1d100000  unlock zero
000720  9f500000  addli r1, zero, 5
000724  7d800100  xsignal r3, 0
000728  7d800000  xsignal r1, 0
00072c  9f601000  addli r1, zero, 14
000730  ab070b00  lui r15, 176
000734  8b101438  mod.s r1, r8, r1
000738  9bb0f000  slli r1, r1, 15
00073c  8b90f010  add.s r1, r1, r15
000740  bb605101  bneq r2, r21, 56
000744  93b75d04  setlt.sl r15, r[28:29], r[6:7]
000748  1f181000  addli r16, zero, 9
00074c  7d100800  xwait r16, 0
000750  3b8a07fe  bneq r15, zero, -384
000754  1d000d00  lock zero, r26
000758  9f77f001  addli r15, zero, 255
00075c  8d0a0002  ew_cfg r21, zero, zero, 1
000760  0d100000  ewcoeff_cfg zero, zero, zero, 0
000764  0d800704  ew_cfg zero, r15, zero, 2
000768  0d060006  ew_cfg r12, zero, zero, 3
00076c  cd300000  ssaux r1, 0
000770  1d100d00  unlock r26
000774  dbcbffff  j -420
000778  9f075000  addli r15, zero, 40
00077c  8b97f438  mod.s r15, r9, r15
000780  9bbbf700  slli r23, r15, 15
000784  9f770000  addli r15, zero, 7
000788  3b11f100  bneq r2, r15, 68
00078c  9f371000  addli r15, zero, 11
000790  9f330000  addli r7, zero, 3
000794  7d100900  xwait r18, 0
000798  7d900700  xwait r15, 0
00079c  1d000000  lock zero, zero
0007a0  9f070002  addli r15, zero, 256
0007a4  81030000  ds_cfg r7, zero, 0
0007a8  81070002  ds_cfg r15, zero, 1
0007ac  0106001c  ds_cfg r12, zero, 14
0007b0  8107001a  ds_cfg r15, zero, 13
0007b4  c18bc004  shuffle_coa r23, r1, r12, 2
0007b8  9f101000  addli r1, zero, 9
0007bc  1d100000  unlock zero
0007c0  7d800000  xsignal r1, 0
0007c4  9f201000  addli r1, zero, 10
0007c8  db0f0000  j 124
0007cc  3b4931fe  bneq r2, r3, -432
0007d0  9f500000  addli r1, zero, 5
0007d4  7d900000  xwait r1, 0
0007d8  9f201000  addli r1, zero, 10
0007dc  7d900000  xwait r1, 0
0007e0  b7c00800  beq r17, zero, 48
0007e4  37510500  beq r10, zero, 84
0007e8  9f000000  addli r1, zero, 0
0007ec  1d800a00  lock zero, r21
0007f0  0906a600  mm_cfg r12, r12, r10, 0
0007f4  090d5905  mm_cfg r26, r18, r21, 2
0007f8  a9107b0b  mm_acc r1, r22, r23, 5
0007fc  9f800002  addli r1, r1, 256
000800  9f8b0b40  addli r23, r23, 8192
000804  1d900a00  unlock r21
000808  bb9fe0fe  bneq r1, r14, -28
00080c  db050000  j 44
000810  b7200500  beq r10, zero, 40
000814  9f000000  addli r1, zero, 0
000818  1d800a00  lock zero, r21
00081c  0906a600  mm_cfg r12, r12, r10, 0
000820  090d5905  mm_cfg r26, r18, r21, 2
000824  a9007b0b  mm r1, r22, r23, 5
000828  9f800002  addli r1, r1, 256
00082c  9f8b0b40  addli r23, r23, 8192
000830  1d900a00  unlock r21
000834  bb9fe0fe  bneq r1, r14, -28
000838  9f600000  addli r1, zero, 6
00083c  7d800000  xsignal r1, 0
000840  9f301000  addli r1, zero, 11
000844  7d800000  xsignal r1, 0
000848  dbbaffff  j -556
00084c  2b080400  lui r16, 64
000850  00310002  core_id r2
000854  9f410000  addli r3, zero, 4
000858  ab030200  lui r7, 32
00085c  b77131fe  beq r2, r3, -900
000860  eb508fee  load.d r[2:3], -280(r30)
000864  6b558ff1  load.d r[11:12], -232(r30)
000868  a7820002  addli.d r[6:7], r[2:3], 256
00086c  8bb2a240  min.sl r[6:7], r[6:7], r[11:12]
000870  8bb21248  max.sl r[6:7], r[6:7], r[2:3]
000874  8bb21218  sub.sl r[6:7], r[6:7], r[2:3]
000878  00310002  core_id r2
00087c  9f600000  addli r1, zero, 6
000880  37111100  beq r2, r1, 68
000884  3b025101  bneq r2, r21, 128
000888  93b05d04  setlt.sl r1, r[28:29], r[6:7]
00088c  9f222000  addli r5, zero, 18
000890  7d900200  xwait r5, 0
000894  bba00000  bneq r1, zero, 40
000898  1d000d00  lock zero, r26
00089c  9f70f001  addli r1, zero, 255
0008a0  8d0a0002  ew_cfg r21, zero, zero, 1
0008a4  0d100000  ewcoeff_cfg zero, zero, zero, 0
0008a8  0d800004  ew_cfg zero, r1, zero, 2
0008ac  ab001200  lui r1, 288
0008b0  8d0a0006  ew_cfg r21, zero, zero, 3
0008b4  cd300000  ssaux r1, 0
0008b8  1d100d00  unlock r26
0008bc  9f002000  addli r1, zero, 16
0008c0  db83ffff  j -996
0008c4  6b550f01  load.d r[11:12], 16(r30)
0008c8  eb570fee  load.d r[16:17], -288(r30)
0008cc  9f002000  addli r1, zero, 16
0008d0  7d900000  xwait r1, 0
0008d4  1d800100  lock zero, r3
0008d8  9bb01200  slli r1, r5, 1
0008dc  ab021200  lui r5, 288
0008e0  0b25f510  add.ul r[11:12], r[11:12], r[16:17]
0008e4  958a0a00  dma_cfg r21, r21, zero, 0
0008e8  15800504  dma_cfg zero, r11, zero, 2
0008ec  95021506  dma_cfg r5, r10, r1, 3
0008f0  95805009  dma_cfg r1, r1, r21, 4
0008f4  35000000  dma_run zero
0008f8  1d900100  unlock r3
0008fc  9f102000  addli r1, zero, 17
000900  db7bffff  j -1060
000904  ab001200  lui r1, 288
000908  eb5d0fef  load.d r[28:29], -272(r30)
00090c  1b950020  ori r10, r1, 512
000910  37440100  beq r2, zero, 272
000914  9f500000  addli r1, zero, 5
000918  3b3f11fc  bneq r2, r1, -1076
00091c  9f122000  addli r5, zero, 17
000920  9f000000  addli r1, zero, 0
000924  2b031200  lui r6, 288
000928  7d900200  xwait r5, 0
00092c  9f322000  addli r5, zero, 19
000930  7d900200  xwait r5, 0
000934  1d000d00  lock zero, r26
000938  9f020078  addli r5, zero, 15360
00093c  8d0a0002  ew_cfg r21, zero, zero, 1
000940  8d920200  ewcoeff_cfg r5, r5, zero, 0
000944  9f72f001  addli r5, zero, 255
000948  0d800204  ew_cfg zero, r5, zero, 2
00094c  8d0a0006  ew_cfg r21, zero, zero, 3
000950  8b92a010  add.s r5, r1, r10
000954  9f800004  addli r1, r1, 512
000958  ad826200  dsmadd r5, r5, r6, 0
00095c  bbdf70fe  bneq r1, r7, -12
000960  9f222000  addli r5, zero, 18
000964  1d100d00  unlock r26
000968  9f000000  addli r1, zero, 0
00096c  7d800200  xsignal r5, 0
000970  9f422000  addli r5, zero, 20
000974  7d800200  xsignal r5, 0
000978  9f521000  addli r5, zero, 13
00097c  7d900200  xwait r5, 0
000980  9f622000  addli r5, zero, 22
000984  7d900200  xwait r5, 0
000988  1d000d00  lock zero, r26
00098c  9f72f001  addli r5, zero, 255
000990  0d000002  ew_cfg zero, zero, zero, 1
000994  0d800204  ew_cfg zero, r5, zero, 2
000998  ab022042  lui r5, 270848
00099c  8d0a0006  ew_cfg r21, zero, zero, 3
0009a0  8d120000  ewcoeff_cfg r5, zero, zero, 0
0009a4  63436ffd  loadli.w r6,  -332(r30)
0009a8  8b926010  add.s r5, r1, r6
0009ac  ada21008  dscmpnsel r5, r1, r1, 4
0009b0  9f800008  addli r1, r1, 1024
0009b4  bbdf00ff  bneq r1, r16, -12
0009b8  1d100d00  unlock r26
0009bc  ab00803f  lui r1, 260096
0009c0  1d000d00  lock zero, r26
0009c4  0d000002  ew_cfg zero, zero, zero, 1
0009c8  0d101000  ewcoeff_cfg zero, zero, r1, 0
0009cc  8d0a0024  ew_cfg r21, zero, zero, 18
0009d0  0d0d0014  ew_cfg r26, zero, zero, 10
0009d4  e3006ffd  loadli.w r1,  -336(r30)
0009d8  0d8d1a16  ew_cfg r26, r21, r1, 11
0009dc  abc07f41  lui r1, 268284
0009e0  0d00001a  ew_cfg zero, zero, zero, 13
0009e4  0d80111c  ew_cfg zero, r3, r1, 14
0009e8  9f70f03f  addli r1, zero, 8191
0009ec  0d00001e  ew_cfg zero, zero, zero, 15
0009f0  0d800004  ew_cfg zero, r1, zero, 2
0009f4  9f601000  addli r1, zero, 14
0009f8  0d090006  ew_cfg r18, zero, zero, 3
0009fc  0d092927  ew_cfg r18, r18, r18, 19
000a00  2d100300  dsmul zero, r6, zero, 0
000a04  0d000014  ew_cfg zero, zero, zero, 10
000a08  0d000024  ew_cfg zero, zero, zero, 18
000a0c  0d000026  ew_cfg zero, zero, zero, 19
000a10  1d100d00  unlock r26
000a14  7d800000  xsignal r1, 0
000a18  9f602000  addli r1, zero, 22
000a1c  db210000  j 268
000a20  9f401000  addli r1, zero, 12
000a24  9f562000  addli r13, zero, 21
000a28  9f530000  addli r7, zero, 5
000a2c  9f050004  addli r11, zero, 512
000a30  9f372000  addli r15, zero, 19
000a34  7d900000  xwait r1, 0
000a38  7d900600  xwait r13, 0
000a3c  1d800300  lock zero, r7
000a40  9f000002  addli r1, zero, 256
000a44  950a0000  dma_cfg r21, zero, zero, 0
000a48  958a0a02  dma_cfg r21, r21, zero, 1
000a4c  15000004  dma_cfg zero, zero, zero, 2
000a50  1505e006  dma_cfg r10, zero, r14, 3
000a54  95051708  dma_cfg r11, r14, r1, 4
000a58  35000000  dma_run zero
000a5c  1d900300  unlock r7
000a60  7d800700  xsignal r15, 0
000a64  9f472000  addli r15, zero, 20
000a68  7d900700  xwait r15, 0
000a6c  1d800300  lock zero, r7
000a70  7d200000  xflush
000a74  1d900300  unlock r7
000a78  b3870028  zext_int2long r[16:17], r1
000a7c  1d800300  lock zero, r7
000a80  15800a00  dma_cfg zero, r21, zero, 0
000a84  8bb2f240  min.sl r[6:7], r[6:7], r[16:17]
000a88  958a0a02  dma_cfg r21, r21, zero, 1
000a8c  15000004  dma_cfg zero, zero, zero, 2
000a90  1500b506  dma_cfg zero, r10, r11, 3
000a94  1f551000  addli r10, zero, 13
000a98  15871508  dma_cfg r14, r11, r1, 4
000a9c  35000000  dma_run zero
000aa0  1d900300  unlock r7
000aa4  9f601000  addli r1, zero, 14
000aa8  7d000500  xsignal r10, 0
000aac  7d800600  xsignal r13, 0
000ab0  6345affd  loadli.w r10,  -300(r30)
000ab4  6b5b0fec  load.d r[23:24], -320(r30)
000ab8  73385ff0  store.d r[6:7], -240(r30)
000abc  eb528fed  load.d r[6:7], -296(r30)
000ac0  33150528  sext_int2long r[11:12], r10
000ac4  a7090502  addli.d r[20:21], r[11:12], 256
000ac8  8bb96941  min.sl r[20:21], r[20:21], r[23:24]
000acc  6b5b8ff1  load.d r[23:24], -232(r30)
000ad0  8bb9a948  max.sl r[20:21], r[20:21], r[11:12]
000ad4  0bbb6221  mul.sl r[23:24], r[6:7], r[23:24]
000ad8  eb520fee  load.d r[6:7], -288(r30)
000adc  7d900000  xwait r1, 0
000ae0  1d800300  lock zero, r7
000ae4  0bb5a918  sub.sl r[11:12], r[20:21], r[11:12]
000ae8  eb598f01  load.d r[20:21], 24(r30)
000aec  950a0000  dma_cfg r21, zero, zero, 0
000af0  173b5b03  sll.d r[23:24], r[23:24], r21
000af4  15800a02  dma_cfg zero, r21, zero, 1
000af8  0b35f540  min.sl r[11:12], r[11:12], r[16:17]
000afc  8ba96911  add.ul r[20:21], r[20:21], r[23:24]
000b00  8ba75910  add.ul r[16:17], r[20:21], r[6:7]
000b04  eb520ff1  load.d r[6:7], -240(r30)
000b08  15080004  dma_cfg r16, zero, zero, 2
000b0c  9bb02200  slli r1, r5, 2
000b10  95071006  dma_cfg r15, zero, r1, 3
000b14  e3401ffe  loadli.w r1,  -244(r30)
000b18  9500a708  dma_cfg r1, r14, r10, 4
000b1c  35000000  dma_run zero
000b20  1d900300  unlock r7
000b24  9f701000  addli r1, zero, 15
000b28  7d800000  xsignal r1, 0
000b2c  5b37ffff  j -1608
000b30  7d000000  xsignal zero, 0
000b34  bb600100  bneq r2, zero, 56
000b38  9f200000  addli r1, zero, 2
000b3c  7d100000  xwait zero, 0
000b40  7d100000  xwait zero, 0
000b44  7d100000  xwait zero, 0
000b48  7d100000  xwait zero, 0
000b4c  7d100000  xwait zero, 0
000b50  7d100000  xwait zero, 0
000b54  7d100000  xwait zero, 0
000b58  7d100000  xwait zero, 0
000b5c  1d800000  lock zero, r1
000b60  0d000020  ew_cfg zero, zero, zero, 16
000b64  1d900000  unlock r1
000b68  7d400000  xsignal_mode_cfg zero
000b6c  9f8eae02  addli sp, sp, 336
000b70  00a00300  mfence { lm, sm, gm }
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
000d54  00100000  exit
000d58  00100000  exit
000d5c  00100000  exit
000d60  00100000  exit
000d64  00100000  exit
000d68  00100000  exit
000d6c  00100000  exit
000d70  00100000  exit
000d74  00100000  exit
000d78  00100000  exit
000d7c  00100000  exit
000d80  00100000  exit
000d84  00100000  exit
000d88  00100000  exit
000d8c  00100000  exit
000d90  00100000  exit
000d94  00100000  exit
000d98  00100000  exit
000d9c  00100000  exit
000da0  00100000  exit
000da4  00100000  exit
000da8  00100000  exit
000dac  00100000  exit
000db0  00100000  exit
000db4  00100000  exit
