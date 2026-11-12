; SHA-256 096a0fcda41d29b7b334e8e2d01e1a697177da1dd72c92b161644a89cb525f2a
; P800 SDNN · XTDK LLVM 19 · 797 / 797 words decoded
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
0000b4  9f8edefc  addli sp, sp, -408
0000b8  9f100000  addli r1, zero, 1
0000bc  00390002  core_id r18
0000c0  1f8fbe02  addli r30, sp, 344
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600900  beq r18, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5b3c0000  j 480
0000e0  9f210000  addli r3, zero, 2
0000e4  fdd00000  uni_sram_cfg r1, r1
0000e8  2bf2ffff  lui r4, 1048575
0000ec  1d800100  lock zero, r3
0000f0  8d000020  ew_cfg r1, zero, zero, 16
0000f4  9b10f2ff  ori r1, r4, 4095
0000f8  1d900100  unlock r3
0000fc  9f610000  addli r3, zero, 6
000100  80a10004  csr_set csr3, r1
000104  9f501000  addli r1, zero, 13
000108  00d00100  sync_group
00010c  7d800000  xsignal r1, 0
000110  9f400000  addli r1, zero, 4
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
000140  7d800100  xsignal r3, 0
000144  7d800100  xsignal r3, 0
000148  7d800100  xsignal r3, 0
00014c  7d800100  xsignal r3, 0
000150  7d800100  xsignal r3, 0
000154  7d800100  xsignal r3, 0
000158  7d800100  xsignal r3, 0
00015c  7d800100  xsignal r3, 0
000160  7d800100  xsignal r3, 0
000164  7d800100  xsignal r3, 0
000168  7d800100  xsignal r3, 0
00016c  7d800100  xsignal r3, 0
000170  7d800100  xsignal r3, 0
000174  9f311000  addli r3, zero, 11
000178  7d800000  xsignal r1, 0
00017c  7d800000  xsignal r1, 0
000180  7d800000  xsignal r1, 0
000184  7d800000  xsignal r1, 0
000188  7d800000  xsignal r1, 0
00018c  7d800000  xsignal r1, 0
000190  7d800000  xsignal r1, 0
000194  7d800000  xsignal r1, 0
000198  7d800000  xsignal r1, 0
00019c  7d800000  xsignal r1, 0
0001a0  7d800000  xsignal r1, 0
0001a4  7d800000  xsignal r1, 0
0001a8  7d800000  xsignal r1, 0
0001ac  7d800000  xsignal r1, 0
0001b0  7d800000  xsignal r1, 0
0001b4  7d800000  xsignal r1, 0
0001b8  7d800000  xsignal r1, 0
0001bc  7d800000  xsignal r1, 0
0001c0  9f101000  addli r1, zero, 9
0001c4  7d800100  xsignal r3, 0
0001c8  7d800100  xsignal r3, 0
0001cc  7d800100  xsignal r3, 0
0001d0  7d800100  xsignal r3, 0
0001d4  7d800100  xsignal r3, 0
0001d8  7d800100  xsignal r3, 0
0001dc  7d800100  xsignal r3, 0
0001e0  7d800100  xsignal r3, 0
0001e4  7d800100  xsignal r3, 0
0001e8  7d800100  xsignal r3, 0
0001ec  7d800100  xsignal r3, 0
0001f0  7d800100  xsignal r3, 0
0001f4  7d800100  xsignal r3, 0
0001f8  7d800100  xsignal r3, 0
0001fc  7d800100  xsignal r3, 0
000200  7d800100  xsignal r3, 0
000204  7d800100  xsignal r3, 0
000208  7d800100  xsignal r3, 0
00020c  7d800100  xsignal r3, 0
000210  7d800100  xsignal r3, 0
000214  7d800100  xsignal r3, 0
000218  7d800100  xsignal r3, 0
00021c  7d800100  xsignal r3, 0
000220  7d800100  xsignal r3, 0
000224  7d800100  xsignal r3, 0
000228  7d800100  xsignal r3, 0
00022c  7d800100  xsignal r3, 0
000230  7d800100  xsignal r3, 0
000234  7d800100  xsignal r3, 0
000238  7d800100  xsignal r3, 0
00023c  7d800100  xsignal r3, 0
000240  7d800100  xsignal r3, 0
000244  7d800100  xsignal r3, 0
000248  7d800100  xsignal r3, 0
00024c  7d800100  xsignal r3, 0
000250  7d800100  xsignal r3, 0
000254  7d800100  xsignal r3, 0
000258  7d800100  xsignal r3, 0
00025c  7d800100  xsignal r3, 0
000260  7d800100  xsignal r3, 0
000264  9f312000  addli r3, zero, 19
000268  7d800000  xsignal r1, 0
00026c  7d800000  xsignal r1, 0
000270  7d800000  xsignal r1, 0
000274  7d800000  xsignal r1, 0
000278  7d800000  xsignal r1, 0
00027c  7d800000  xsignal r1, 0
000280  7d800000  xsignal r1, 0
000284  7d800000  xsignal r1, 0
000288  7d800000  xsignal r1, 0
00028c  7d800000  xsignal r1, 0
000290  7d800000  xsignal r1, 0
000294  7d800000  xsignal r1, 0
000298  7d800000  xsignal r1, 0
00029c  7d800000  xsignal r1, 0
0002a0  7d800000  xsignal r1, 0
0002a4  7d800000  xsignal r1, 0
0002a8  7d800000  xsignal r1, 0
0002ac  7d800000  xsignal r1, 0
0002b0  9f002000  addli r1, zero, 16
0002b4  7d800000  xsignal r1, 0
0002b8  7d800100  xsignal r3, 0
0002bc  e3405f00  loadli.w r1,  44(r30)
0002c0  e3016f00  loadli.w r3,  48(r30)
0002c4  00d20002  load_param_i r4, 1
0002c8  e3426f00  loadli.w r5,  52(r30)
0002cc  80530002  load_param_i r7, 0
0002d0  2bf3ffff  lui r6, 1048575
0002d4  674b0ffe  storeli.w zero, -76(r30)
0002d8  67010ffe  storeli.w zero, -240(r30)
0002dc  8b901120  mul.s r1, r3, r1
0002e0  9f010200  addli r3, r4, 0
0002e4  8b915050  fmac.s r3, r1, r5
0002e8  8b925020  mul.s r5, r1, r5
0002ec  9ff1f1ff  addli r3, r3, -1
0002f0  8b914130  div.s r3, r3, r4
0002f4  1b12f3ff  ori r4, r6, 4095
0002f8  e70b4ffe  storeli.w r4, -72(r30)
0002fc  e74b4ffe  storeli.w r4, -68(r30)
000300  670c4ffe  storeli.w r4, -64(r30)
000304  674c4ffe  storeli.w r4, -60(r30)
000308  e70c4ffe  storeli.w r4, -56(r30)
00030c  e74c4ffe  storeli.w r4, -52(r30)
000310  670d4ffe  storeli.w r4, -48(r30)
000314  674d4ffe  storeli.w r4, -44(r30)
000318  e70d4ffe  storeli.w r4, -40(r30)
00031c  e74d4ffe  storeli.w r4, -36(r30)
000320  670e4ffe  storeli.w r4, -32(r30)
000324  674e4ffe  storeli.w r4, -28(r30)
000328  e70e4ffe  storeli.w r4, -24(r30)
00032c  e74e4ffe  storeli.w r4, -20(r30)
000330  670f4ffe  storeli.w r4, -16(r30)
000334  674f4ffe  storeli.w r4, -12(r30)
000338  e70f4ffe  storeli.w r4, -8(r30)
00033c  e74f4ffe  storeli.w r4, -4(r30)
000340  67414ffe  storeli.w r4, -236(r30)
000344  e7014ffe  storeli.w r4, -232(r30)
000348  e7414ffe  storeli.w r4, -228(r30)
00034c  67024ffe  storeli.w r4, -224(r30)
000350  67424ffe  storeli.w r4, -220(r30)
000354  e7024ffe  storeli.w r4, -216(r30)
000358  e7424ffe  storeli.w r4, -212(r30)
00035c  67034ffe  storeli.w r4, -208(r30)
000360  67434ffe  storeli.w r4, -204(r30)
000364  e7034ffe  storeli.w r4, -200(r30)
000368  e7434ffe  storeli.w r4, -196(r30)
00036c  67044ffe  storeli.w r4, -192(r30)
000370  67444ffe  storeli.w r4, -188(r30)
000374  e7044ffe  storeli.w r4, -184(r30)
000378  e7444ffe  storeli.w r4, -180(r30)
00037c  67054ffe  storeli.w r4, -176(r30)
000380  67454ffe  storeli.w r4, -172(r30)
000384  e7054ffe  storeli.w r4, -168(r30)
000388  e7454ffe  storeli.w r4, -164(r30)
00038c  67064ffe  storeli.w r4, -160(r30)
000390  67464ffe  storeli.w r4, -156(r30)
000394  e7064ffe  storeli.w r4, -152(r30)
000398  e7464ffe  storeli.w r4, -148(r30)
00039c  67074ffe  storeli.w r4, -144(r30)
0003a0  67474ffe  storeli.w r4, -140(r30)
0003a4  e7074ffe  storeli.w r4, -136(r30)
0003a8  e7474ffe  storeli.w r4, -132(r30)
0003ac  67084ffe  storeli.w r4, -128(r30)
0003b0  67484ffe  storeli.w r4, -124(r30)
0003b4  e7084ffe  storeli.w r4, -120(r30)
0003b8  e7484ffe  storeli.w r4, -116(r30)
0003bc  67094ffe  storeli.w r4, -112(r30)
0003c0  67494ffe  storeli.w r4, -108(r30)
0003c4  e7094ffe  storeli.w r4, -104(r30)
0003c8  e7494ffe  storeli.w r4, -100(r30)
0003cc  670a4ffe  storeli.w r4, -96(r30)
0003d0  674a4ffe  storeli.w r4, -92(r30)
0003d4  e70a4ffe  storeli.w r4, -88(r30)
0003d8  e74a4ffe  storeli.w r4, -84(r30)
0003dc  670b4ffe  storeli.w r4, -80(r30)
0003e0  8b907120  mul.s r1, r3, r7
0003e4  8b917150  fmac.s r3, r3, r7
0003e8  8b915140  min.s r3, r3, r5
0003ec  4b881102  ble.s r3, r1, 1536
0003f0  63034f00  loadli.w r6,  32(r30)
0003f4  b3930128  sext_int2long r[8:9], r3
0003f8  e3065f00  loadli.w r13,  40(r30)
0003fc  e3424f00  loadli.w r5,  36(r30)
000400  b3970028  sext_int2long r[16:17], r1
000404  e3042ffe  loadli.w r9,  -240(r30)
000408  1f020000  addli r4, zero, 0
00040c  1f071000  addli r14, zero, 8
000410  1f410000  addli r2, zero, 4
000414  9f1a0000  addli r21, zero, 1
000418  1f2d0000  addli r26, zero, 2
00041c  1f068000  addli r12, zero, 64
000420  9f0c0000  addli r25, zero, 0
000424  733c7fea  store.d r[8:9], -328(r30)
000428  63446fff  loadli.w r8,  -76(r30)
00042c  33130328  sext_int2long r[7:8], r6
000430  9bb01600  slli r1, r13, 1
000434  73386fea  store.d r[7:8], -336(r30)
000438  33930228  sext_int2long r[7:8], r5
00043c  e74e1ffc  storeli.w r1, -276(r30)
000440  9bb01200  slli r1, r5, 1
000444  73346ff0  store.d r[7:8], -248(r30)
000448  b3920628  sext_int2long r[6:7], r13
00044c  e74f1ffc  storeli.w r1, -260(r30)
000450  73345fea  store.d r[6:7], -344(r30)
000454  5b040000  j 32
000458  9f401000  addli r1, zero, 12
00045c  7d800000  xsignal r1, 0
000460  eb570fee  load.d r[16:17], -288(r30)
000464  6b538feb  load.d r[7:8], -328(r30)
000468  a7970700  addli.d r[16:17], r[16:17], 1
00046c  93b06704  setlt.sl r1, r[16:17], r[7:8]
000470  b7f50002  beq r1, zero, 1404
000474  9f320000  addli r5, zero, 3
000478  3b302900  bneq r18, r2, 12
00047c  9f501000  addli r1, zero, 13
000480  7d900000  xwait r1, 0
000484  e3406f00  loadli.w r1,  52(r30)
000488  e3016f00  loadli.w r3,  48(r30)
00048c  7330ffee  store.d r[16:17], -288(r30)
000490  8b901730  div.s r1, r15, r1
000494  1f830100  addli r6, r3, 0
000498  8b916030  div.s r3, r1, r6
00049c  8b906038  mod.s r1, r1, r6
0004a0  33930128  sext_int2long r[7:8], r3
0004a4  33950028  sext_int2long r[11:12], r1
0004a8  9bb88100  slli r17, r3, 8
0004ac  9bb18000  slli r3, r1, 8
0004b0  9f70f001  addli r1, zero, 255
0004b4  973de302  sll.d r[28:29], r[7:8], r14
0004b8  1733e502  sll.d r[7:8], r[11:12], r14
0004bc  33910128  sext_int2long r[3:4], r3
0004c0  674c1ffd  storeli.w r17, -316(r30)
0004c4  97375303  sll.d r[16:17], r[7:8], r21
0004c8  33830028  zext_int2long r[7:8], r1
0004cc  7334bfed  store.d r[28:29], -312(r30)
0004d0  733c2fec  store.d r[3:4], -296(r30)
0004d4  7338ffec  store.d r[16:17], -304(r30)
0004d8  3fdc5601  blt.s r13, r21, 788
0004dc  33950828  sext_int2long r[11:12], r17
0004e0  1f0a0000  addli r20, zero, 0
0004e4  9f080000  addli r17, zero, 0
0004e8  270b0502  addli.d r[23:24], r[11:12], 256
0004ec  73306ff1  store.d r[23:24], -256(r30)
0004f0  6b5b8fea  load.d r[23:24], -344(r30)
0004f4  0bbb6d21  mul.sl r[23:24], r[28:29], r[23:24]
0004f8  eb5d0ff0  load.d r[28:29], -256(r30)
0004fc  73386fef  store.d r[23:24], -272(r30)
000500  6b5b0feb  load.d r[23:24], -336(r30)
000504  0bbb6d41  min.sl r[23:24], r[28:29], r[23:24]
000508  a70d0102  addli.d r[28:29], r[3:4], 256
00050c  0b3bab48  max.sl r[23:24], r[23:24], r[11:12]
000510  73306ff1  store.d r[23:24], -256(r30)
000514  6b5b8ff0  load.d r[23:24], -248(r30)
000518  0bbb6d41  min.sl r[23:24], r[28:29], r[23:24]
00051c  eb5d0ff0  load.d r[28:29], -256(r30)
000520  8bbdad18  sub.sl r[28:29], r[28:29], r[11:12]
000524  6b558f00  load.d r[11:12], 8(r30)
000528  0b25f510  add.ul r[11:12], r[11:12], r[16:17]
00052c  8b372b48  max.sl r[16:17], r[23:24], r[3:4]
000530  7330aff0  store.d r[11:12], -256(r30)
000534  6b550fef  load.d r[11:12], -272(r30)
000538  8bb72718  sub.sl r[16:17], r[16:17], r[3:4]
00053c  9bb91700  slli r19, r15, 1
000540  173b5503  sll.d r[23:24], r[11:12], r21
000544  6b550f00  load.d r[11:12], 0(r30)
000548  8b206511  add.ul r[2:3], r[11:12], r[23:24]
00054c  9f252000  addli r11, zero, 18
000550  73381fee  store.d r[2:3], -272(r30)
000554  1f410000  addli r2, zero, 4
000558  5b0e0000  j 112
00055c  6b558ff0  load.d r[11:12], -248(r30)
000560  1f7b0000  addli r22, zero, 7
000564  7d000b00  xsignal r22, 0
000568  7d100b00  xwait r22, 0
00056c  0bb5ab20  mul.sl r[11:12], r[24:25], r[11:12]
000570  6b5b0ff0  load.d r[23:24], -256(r30)
000574  1d000100  lock zero, r2
000578  958a0a00  dma_cfg r21, r21, zero, 0
00057c  17355503  sll.d r[11:12], r[11:12], r21
000580  0b25ab10  add.ul r[11:12], r[23:24], r[11:12]
000584  15800504  dma_cfg zero, r11, zero, 2
000588  95003507  dma_cfg r1, r10, r19, 3
00058c  1f050004  addli r10, zero, 512
000590  9f252000  addli r11, zero, 18
000594  e340fffd  loadli.w r1,  -260(r30)
000598  1585c008  dma_cfg r10, r1, r12, 4
00059c  35000000  dma_run zero
0005a0  1d100100  unlock r2
0005a4  7d000700  xsignal r14, 0
0005a8  1f120200  addli r4, r4, 1
0005ac  9f9c0c00  addli r25, r25, 1
0005b0  9f940400  addli r9, r9, 1
0005b4  1f140400  addli r8, r8, 1
0005b8  1f0a8a00  addli r20, r20, 64
0005bc  9f980800  addli r17, r17, 1
0005c0  3f20da00  blt.s r20, r13, 8
0005c4  db450000  j 556
0005c8  8b90bc38  mod.s r1, r25, r11
0005cc  1f053000  addli r10, zero, 24
0005d0  b31b0a28  sext_int2long r[24:25], r20
0005d4  0b1ba238  mod.s r22, r4, r10
0005d8  2b050400  lui r10, 64
0005dc  9bb0f000  slli r1, r1, 15
0005e0  1b3bfb00  slli r22, r22, 15
0005e4  8b90a010  add.s r1, r1, r10
0005e8  3b215901  bneq r18, r21, 72
0005ec  1f850600  addli r10, r13, 0
0005f0  9336b305  setlt.sl r13, r[7:8], r[28:29]
0005f4  7d100100  xwait r2, 0
0005f8  bbb00600  bneq r13, zero, 44
0005fc  1d000d00  lock zero, r26
000600  9f757000  addli r11, zero, 63
000604  8d0a0002  ew_cfg r21, zero, zero, 1
000608  0d100000  ewcoeff_cfg zero, zero, zero, 0
00060c  0d800504  ew_cfg zero, r11, zero, 2
000610  9f050002  addli r11, zero, 256
000614  8d050006  ew_cfg r11, zero, zero, 3
000618  9f252000  addli r11, zero, 18
00061c  cd300000  ssaux r1, 0
000620  1d100d00  unlock r26
000624  7d000d00  xsignal r26, 0
000628  9f060500  addli r13, r10, 0
00062c  db140000  j 164
000630  b701a901  beq r18, r26, 96
000634  1f650000  addli r10, zero, 6
000638  3b62a900  bneq r18, r10, 152
00063c  9f810900  addli r3, r19, 0
000640  7d100d00  xwait r26, 0
000644  27890700  addli.d r[19:20], r[16:17], 0
000648  eb570fef  load.d r[16:17], -272(r30)
00064c  17b55b03  sll.d r[11:12], r[24:25], r21
000650  1d000100  lock zero, r2
000654  958a0a00  dma_cfg r21, r21, zero, 0
000658  0ba5a710  add.ul r[11:12], r[16:17], r[11:12]
00065c  a7070900  addli.d r[16:17], r[19:20], 0
000660  9f890100  addli r19, r3, 0
000664  9f010001  addli r3, zero, 128
000668  00390002  core_id r18
00066c  15800504  dma_cfg zero, r11, zero, 2
000670  95003506  dma_cfg r1, r10, r3, 3
000674  9f252000  addli r11, zero, 18
000678  e340dffd  loadli.w r1,  -276(r30)
00067c  9581b009  dma_cfg r3, r1, r27, 4
000680  35000000  dma_run zero
000684  1d100100  unlock r2
000688  7d800200  xsignal r5, 0
00068c  db080000  j 68
000690  9f320000  addli r5, zero, 3
000694  1f650000  addli r10, zero, 6
000698  7d900200  xwait r5, 0
00069c  7d100500  xwait r10, 0
0006a0  b7800d00  beq r27, zero, 32
0006a4  1d000000  lock zero, zero
0006a8  81020000  ds_cfg r5, zero, 0
0006ac  01060002  ds_cfg r12, zero, 1
0006b0  0106001c  ds_cfg r12, zero, 14
0006b4  810d001a  ds_cfg r27, zero, 13
0006b8  219bc002  shuffle_batch r22, r1, r12, 1
0006bc  1d100000  unlock zero
0006c0  9f320000  addli r5, zero, 3
0006c4  9f500000  addli r1, zero, 5
0006c8  7d000100  xsignal r2, 0
0006cc  7d800000  xsignal r1, 0
0006d0  8b10b438  mod.s r1, r8, r11
0006d4  2b050d00  lui r10, 208
0006d8  9bb0f000  slli r1, r1, 15
0006dc  8b90a010  add.s r1, r1, r10
0006e0  bb605901  bneq r18, r21, 56
0006e4  1335f304  setlt.sl r10, r[7:8], r[16:17]
0006e8  9f151000  addli r11, zero, 9
0006ec  7d900500  xwait r11, 0
0006f0  bb3905fe  bneq r10, zero, -404
0006f4  1d000d00  lock zero, r26
0006f8  1f75f001  addli r10, zero, 255
0006fc  8d0a0002  ew_cfg r21, zero, zero, 1
000700  0d100000  ewcoeff_cfg zero, zero, zero, 0
000704  0d000504  ew_cfg zero, r10, zero, 2
000708  0d060006  ew_cfg r12, zero, zero, 3
00070c  cd300000  ssaux r1, 0
000710  1d100d00  unlock r26
000714  5bc9ffff  j -440
000718  1f055000  addli r10, zero, 40
00071c  0b95a438  mod.s r10, r9, r10
000720  9b3bf500  slli r23, r10, 15
000724  1f750000  addli r10, zero, 7
000728  3b01a900  bneq r18, r10, 64
00072c  1f351000  addli r10, zero, 11
000730  7d100700  xwait r14, 0
000734  7d100500  xwait r10, 0
000738  1d000000  lock zero, zero
00073c  1f050002  addli r10, zero, 256
000740  81020000  ds_cfg r5, zero, 0
000744  01050002  ds_cfg r10, zero, 1
000748  0106001c  ds_cfg r12, zero, 14
00074c  0105001a  ds_cfg r10, zero, 13
000750  c18bc004  shuffle_coa r23, r1, r12, 2
000754  9f101000  addli r1, zero, 9
000758  1d100000  unlock zero
00075c  7d800000  xsignal r1, 0
000760  9f201000  addli r1, zero, 10
000764  5b100000  j 128
000768  3b0929fe  bneq r18, r2, -448
00076c  9f500000  addli r1, zero, 5
000770  9f010008  addli r3, zero, 1024
000774  7d900000  xwait r1, 0
000778  9f201000  addli r1, zero, 10
00077c  7d900000  xwait r1, 0
000780  b7c00800  beq r17, zero, 48
000784  37d10d00  beq r27, zero, 84
000788  9f000000  addli r1, zero, 0
00078c  1d800a00  lock zero, r21
000790  0906b601  mm_cfg r12, r12, r27, 0
000794  090d5705  mm_cfg r26, r14, r21, 2
000798  a9107b0b  mm_acc r1, r22, r23, 5
00079c  9f800002  addli r1, r1, 256
0007a0  9f8b0b40  addli r23, r23, 8192
0007a4  1d900a00  unlock r21
0007a8  bb9f30fe  bneq r1, r3, -28
0007ac  db050000  j 44
0007b0  b7a00d00  beq r27, zero, 40
0007b4  9f000000  addli r1, zero, 0
0007b8  1d800a00  lock zero, r21
0007bc  0906b601  mm_cfg r12, r12, r27, 0
0007c0  090d5705  mm_cfg r26, r14, r21, 2
0007c4  a9007b0b  mm r1, r22, r23, 5
0007c8  9f800002  addli r1, r1, 256
0007cc  9f8b0b40  addli r23, r23, 8192
0007d0  1d900a00  unlock r21
0007d4  bb9f30fe  bneq r1, r3, -28
0007d8  9f600000  addli r1, zero, 6
0007dc  7d800000  xsignal r1, 0
0007e0  9f301000  addli r1, zero, 11
0007e4  7d800000  xsignal r1, 0
0007e8  5bb8ffff  j -576
0007ec  1f410000  addli r2, zero, 4
0007f0  b72129fe  beq r18, r2, -920
0007f4  eb508fed  load.d r[2:3], -296(r30)
0007f8  eb578ff0  load.d r[16:17], -248(r30)
0007fc  ab081600  lui r17, 352
000800  27850002  addli.d r[11:12], r[2:3], 256
000804  0b35f540  min.sl r[11:12], r[11:12], r[16:17]
000808  eb570fee  load.d r[16:17], -288(r30)
00080c  0b351548  max.sl r[11:12], r[11:12], r[2:3]
000810  0b351518  sub.sl r[11:12], r[11:12], r[2:3]
000814  9f600000  addli r1, zero, 6
000818  37211900  beq r18, r1, 72
00081c  1f410000  addli r2, zero, 4
000820  3b125901  bneq r18, r21, 132
000824  9330a304  setlt.sl r1, r[7:8], r[11:12]
000828  9f012000  addli r3, zero, 16
00082c  7d900100  xwait r3, 0
000830  bb900000  bneq r1, zero, 36
000834  1d000d00  lock zero, r26
000838  9f70f001  addli r1, zero, 255
00083c  8d0a0002  ew_cfg r21, zero, zero, 1
000840  0d100000  ewcoeff_cfg zero, zero, zero, 0
000844  0d800004  ew_cfg zero, r1, zero, 2
000848  8d0a0006  ew_cfg r21, zero, zero, 3
00084c  cd380000  ssaux r17, 0
000850  1d100d00  unlock r26
000854  9f601000  addli r1, zero, 14
000858  7d800000  xsignal r1, 0
00085c  5b81ffff  j -1016
000860  eb520f01  load.d r[6:7], 16(r30)
000864  6b5b0fed  load.d r[23:24], -304(r30)
000868  9f601000  addli r1, zero, 14
00086c  1f410000  addli r2, zero, 4
000870  7d900000  xwait r1, 0
000874  1d000100  lock zero, r2
000878  9b301500  slli r1, r10, 1
00087c  0ba36211  add.ul r[7:8], r[6:7], r[23:24]
000880  958a0a00  dma_cfg r21, r21, zero, 0
000884  15800304  dma_cfg zero, r7, zero, 2
000888  95081306  dma_cfg r17, r6, r1, 3
00088c  95805009  dma_cfg r1, r1, r21, 4
000890  9f701000  addli r1, zero, 15
000894  35000000  dma_run zero
000898  1d100100  unlock r2
00089c  7d800000  xsignal r1, 0
0008a0  db78ffff  j -1084
0008a4  9b910820  ori r3, r17, 512
0008a8  b7210900  beq r18, zero, 104
0008ac  9f232000  addli r7, zero, 18
0008b0  9f500000  addli r1, zero, 5
0008b4  2b050200  lui r10, 32
0008b8  bb3e19fc  bneq r18, r1, -1108
0008bc  9f721000  addli r5, zero, 15
0008c0  1f73f001  addli r6, zero, 255
0008c4  9f000000  addli r1, zero, 0
0008c8  7d900200  xwait r5, 0
0008cc  9f122000  addli r5, zero, 17
0008d0  7d900200  xwait r5, 0
0008d4  1d000d00  lock zero, r26
0008d8  9f020078  addli r5, zero, 15360
0008dc  8d0a0002  ew_cfg r21, zero, zero, 1
0008e0  8d920200  ewcoeff_cfg r5, r5, zero, 0
0008e4  0d000304  ew_cfg zero, r6, zero, 2
0008e8  8d0a0006  ew_cfg r21, zero, zero, 3
0008ec  0b933010  add.s r6, r1, r3
0008f0  9f800004  addli r1, r1, 512
0008f4  2d031301  dsmadd r6, r6, r17, 0
0008f8  bbdfa0fe  bneq r1, r10, -12
0008fc  9f002000  addli r1, zero, 16
000900  1d100d00  unlock r26
000904  7d800000  xsignal r1, 0
000908  7d800300  xsignal r7, 0
00090c  5b6bffff  j -1192
000910  9f401000  addli r1, zero, 12
000914  1f3a2000  addli r20, zero, 19
000918  9f520000  addli r5, zero, 5
00091c  9f070002  addli r15, zero, 256
000920  9f080004  addli r17, zero, 512
000924  7d900000  xwait r1, 0
000928  7d100a00  xwait r20, 0
00092c  1d800200  lock zero, r5
000930  9f000008  addli r1, zero, 1024
000934  950a0000  dma_cfg r21, zero, zero, 0
000938  958a0a02  dma_cfg r21, r21, zero, 1
00093c  15000004  dma_cfg zero, zero, zero, 2
000940  95011006  dma_cfg r3, zero, r1, 3
000944  9588f008  dma_cfg r17, r1, r15, 4
000948  9f501000  addli r1, zero, 13
00094c  35000000  dma_run zero
000950  1d900200  unlock r5
000954  b3870728  zext_int2long r[16:17], r15
000958  7d800000  xsignal r1, 0
00095c  9f102000  addli r1, zero, 17
000960  0b35f540  min.sl r[11:12], r[11:12], r[16:17]
000964  7d800000  xsignal r1, 0
000968  e3408ffd  loadli.w r1,  -316(r30)
00096c  eb5d0feb  load.d r[28:29], -336(r30)
000970  7330aff0  store.d r[11:12], -256(r30)
000974  6b558fec  load.d r[11:12], -312(r30)
000978  33930028  sext_int2long r[7:8], r1
00097c  9f202000  addli r1, zero, 18
000980  270b0302  addli.d r[23:24], r[7:8], 256
000984  0b3bbb41  min.sl r[23:24], r[23:24], r[28:29]
000988  eb5d8ff0  load.d r[28:29], -248(r30)
00098c  0b3b6b48  max.sl r[23:24], r[23:24], r[7:8]
000990  8b3db521  mul.sl r[28:29], r[11:12], r[28:29]
000994  6b550fed  load.d r[11:12], -304(r30)
000998  7d900000  xwait r1, 0
00099c  1d800200  lock zero, r5
0009a0  0b336b18  sub.sl r[7:8], r[23:24], r[7:8]
0009a4  6b5b8f01  load.d r[23:24], 24(r30)
0009a8  958a0a00  dma_cfg r21, r21, zero, 0
0009ac  97bd5d03  sll.d r[28:29], r[28:29], r21
0009b0  15800a02  dma_cfg zero, r21, zero, 1
0009b4  0b33f340  min.sl r[7:8], r[7:8], r[16:17]
0009b8  0b2bbb11  add.ul r[23:24], r[23:24], r[28:29]
0009bc  8b27ab10  add.ul r[16:17], r[23:24], r[11:12]
0009c0  6b550ff0  load.d r[11:12], -256(r30)
0009c4  15080004  dma_cfg r16, zero, zero, 2
0009c8  9b301500  slli r1, r10, 1
0009cc  95871106  dma_cfg r15, r3, r1, 3
0009d0  e340fffd  loadli.w r1,  -260(r30)
0009d4  eb570fee  load.d r[16:17], -288(r30)
0009d8  95806808  dma_cfg r1, r17, r6, 4
0009dc  35000000  dma_run zero
0009e0  1d900200  unlock r5
0009e4  7d000a00  xsignal r20, 0
0009e8  db4fffff  j -1412
0009ec  7d000000  xsignal zero, 0
0009f0  bb600900  bneq r18, zero, 56
0009f4  9f200000  addli r1, zero, 2
0009f8  7d100000  xwait zero, 0
0009fc  7d100000  xwait zero, 0
000a00  7d100000  xwait zero, 0
000a04  7d100000  xwait zero, 0
000a08  7d100000  xwait zero, 0
000a0c  7d100000  xwait zero, 0
000a10  7d100000  xwait zero, 0
000a14  7d100000  xwait zero, 0
000a18  1d800000  lock zero, r1
000a1c  0d000020  ew_cfg zero, zero, zero, 16
000a20  1d900000  unlock r1
000a24  7d400000  xsignal_mode_cfg zero
000a28  9f8ebe02  addli sp, sp, 344
000a2c  00a00300  mfence { lm, sm, gm }
000a30  00100000  exit
000a34  00100000  exit
000a38  00100000  exit
000a3c  00100000  exit
000a40  00100000  exit
000a44  00100000  exit
000a48  00100000  exit
000a4c  00100000  exit
000a50  00100000  exit
000a54  00100000  exit
000a58  00100000  exit
000a5c  00100000  exit
000a60  00100000  exit
000a64  00100000  exit
000a68  00100000  exit
000a6c  00100000  exit
000a70  00100000  exit
000a74  00100000  exit
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
