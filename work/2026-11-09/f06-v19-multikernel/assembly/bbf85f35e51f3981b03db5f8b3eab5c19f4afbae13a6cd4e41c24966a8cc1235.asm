; SHA-256 bbf85f35e51f3981b03db5f8b3eab5c19f4afbae13a6cd4e41c24966a8cc1235
; P800 SDNN · XTDK LLVM 19 · 786 / 786 words decoded
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
0000bc  00310002  core_id r2
0000c0  1f8fbe02  addli r30, sp, 344
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600100  beq r2, zero, 24
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
0003ec  4bd71102  ble.s r3, r1, 1492
0003f0  63034f00  loadli.w r6,  32(r30)
0003f4  b3930128  sext_int2long r[8:9], r3
0003f8  63055f00  loadli.w r10,  40(r30)
0003fc  e3424f00  loadli.w r5,  36(r30)
000400  b39d0028  sext_int2long r[28:29], r1
000404  e3042ffe  loadli.w r9,  -240(r30)
000408  1f020000  addli r4, zero, 0
00040c  9f0b1000  addli r23, zero, 8
000410  9f1a0000  addli r21, zero, 1
000414  1f2d0000  addli r26, zero, 2
000418  1f078000  addli r14, zero, 64
00041c  9f0c0000  addli r25, zero, 0
000420  733c7fea  store.d r[8:9], -328(r30)
000424  63446fff  loadli.w r8,  -76(r30)
000428  33130328  sext_int2long r[7:8], r6
00042c  9b301500  slli r1, r10, 1
000430  73386fea  store.d r[7:8], -336(r30)
000434  33930228  sext_int2long r[7:8], r5
000438  67401ffe  storeli.w r1, -252(r30)
00043c  9bb01200  slli r1, r5, 1
000440  733c6fee  store.d r[7:8], -264(r30)
000444  9f030500  addli r7, r10, 0
000448  1f430000  addli r6, zero, 4
00044c  33150528  sext_int2long r[11:12], r10
000450  e70e1ffc  storeli.w r1, -280(r30)
000454  7334afea  store.d r[11:12], -344(r30)
000458  5b0a0000  j 80
00045c  6b560f01  load.d r[13:14], 16(r30)
000460  9f601000  addli r1, zero, 14
000464  7d800000  xsignal r1, 0
000468  7d900000  xwait r1, 0
00046c  1d000300  lock zero, r6
000470  9b301500  slli r1, r10, 1
000474  0b261611  add.ul r[13:14], r[13:14], r[18:19]
000478  958a0a00  dma_cfg r21, r21, zero, 0
00047c  15800604  dma_cfg zero, r13, zero, 2
000480  95011606  dma_cfg r3, r12, r1, 3
000484  95805009  dma_cfg r1, r1, r21, 4
000488  9f701000  addli r1, zero, 15
00048c  35000000  dma_run zero
000490  1d100300  unlock r6
000494  7d800000  xsignal r1, 0
000498  6b558feb  load.d r[11:12], -328(r30)
00049c  a79d0d00  addli.d r[28:29], r[28:29], 1
0004a0  93b0ad04  setlt.sl r1, r[28:29], r[11:12]
0004a4  37f40002  beq r1, zero, 1308
0004a8  3b306100  bneq r2, r6, 12
0004ac  9f501000  addli r1, zero, 13
0004b0  7d900000  xwait r1, 0
0004b4  e3406f00  loadli.w r1,  52(r30)
0004b8  e3016f00  loadli.w r3,  48(r30)
0004bc  733cbfed  store.d r[28:29], -296(r30)
0004c0  8b901d30  div.s r1, r27, r1
0004c4  9f820100  addli r5, r3, 0
0004c8  8b915030  div.s r3, r1, r5
0004cc  8b905038  mod.s r1, r1, r5
0004d0  33950128  sext_int2long r[11:12], r3
0004d4  33960028  sext_int2long r[13:14], r1
0004d8  9bb28100  slli r5, r3, 8
0004dc  9bb18000  slli r3, r1, 8
0004e0  9f70f001  addli r1, zero, 255
0004e4  973d7503  sll.d r[28:29], r[11:12], r23
0004e8  17357603  sll.d r[11:12], r[13:14], r23
0004ec  b3990128  sext_int2long r[20:21], r3
0004f0  b3870028  zext_int2long r[16:17], r1
0004f4  674c5ffc  storeli.w r5, -316(r30)
0004f8  17365503  sll.d r[13:14], r[11:12], r21
0004fc  7334bfed  store.d r[28:29], -312(r30)
000500  73383fed  store.d r[20:21], -304(r30)
000504  7330cfee  store.d r[13:14], -288(r30)
000508  3f8c5301  blt.s r7, r21, 768
00050c  eb588fea  load.d r[18:19], -344(r30)
000510  33950228  sext_int2long r[11:12], r5
000514  e3035f00  loadli.w r7,  40(r30)
000518  9f010000  addli r3, zero, 0
00051c  270b0502  addli.d r[23:24], r[11:12], 256
000520  8bb21d21  mul.sl r[6:7], r[28:29], r[18:19]
000524  eb580feb  load.d r[18:19], -336(r30)
000528  8b3d1b41  min.sl r[28:29], r[23:24], r[18:19]
00052c  eb588fef  load.d r[18:19], -264(r30)
000530  278b0902  addli.d r[23:24], r[20:21], 256
000534  8bbdad48  max.sl r[28:29], r[28:29], r[11:12]
000538  8b381b41  min.sl r[18:19], r[23:24], r[18:19]
00053c  6b5b8f00  load.d r[23:24], 8(r30)
000540  0bb5ad18  sub.sl r[11:12], r[28:29], r[11:12]
000544  73341ff1  store.d r[18:19], -248(r30)
000548  9f380000  addli r17, zero, 3
00054c  0b26cb10  add.ul r[13:14], r[23:24], r[13:14]
000550  17bb5203  sll.d r[23:24], r[6:7], r21
000554  7338cfee  store.d r[13:14], -272(r30)
000558  6b568ff0  load.d r[13:14], -248(r30)
00055c  0b363649  max.sl r[13:14], r[13:14], r[20:21]
000560  8b3d3619  sub.sl r[28:29], r[13:14], r[20:21]
000564  6b560f00  load.d r[13:14], 0(r30)
000568  9f292000  addli r19, zero, 18
00056c  1f0a0008  addli r20, zero, 1024
000570  9bb01d00  slli r1, r27, 1
000574  8b226611  add.ul r[6:7], r[13:14], r[23:24]
000578  9f0b1000  addli r23, zero, 8
00057c  1f0b0000  addli r22, zero, 0
000580  e74e1ffc  storeli.w r1, -276(r30)
000584  73345ff0  store.d r[6:7], -248(r30)
000588  1f430000  addli r6, zero, 4
00058c  db050000  j 44
000590  9f700000  addli r1, zero, 7
000594  7d800000  xsignal r1, 0
000598  1f120200  addli r4, r4, 1
00059c  9f9c0c00  addli r25, r25, 1
0005a0  9f940400  addli r9, r9, 1
0005a4  1f140400  addli r8, r8, 1
0005a8  9f818100  addli r3, r3, 64
0005ac  1f1b0b00  addli r22, r22, 1
0005b0  3fa07100  blt.s r3, r7, 8
0005b4  db4b0000  j 604
0005b8  9f023000  addli r5, zero, 24
0005bc  8b903c39  mod.s r1, r25, r19
0005c0  33960128  sext_int2long r[13:14], r3
0005c4  8b125238  mod.s r5, r4, r5
0005c8  9bb0f000  slli r1, r1, 15
0005cc  1bbcf200  slli r24, r5, 15
0005d0  ab020400  lui r5, 64
0005d4  8b905010  add.s r1, r1, r5
0005d8  bb715101  bneq r2, r21, 124
0005dc  93b2a704  setlt.sl r5, r[16:17], r[11:12]
0005e0  7d100300  xwait r6, 0
0005e4  bba00200  bneq r5, zero, 40
0005e8  1d000d00  lock zero, r26
0005ec  9f727000  addli r5, zero, 63
0005f0  8d0a0002  ew_cfg r21, zero, zero, 1
0005f4  0d100000  ewcoeff_cfg zero, zero, zero, 0
0005f8  0d800204  ew_cfg zero, r5, zero, 2
0005fc  9f020002  addli r5, zero, 256
000600  8d020006  ew_cfg r5, zero, zero, 3
000604  cd300000  ssaux r1, 0
000608  1d100d00  unlock r26
00060c  7d000d00  xsignal r26, 0
000610  eb528ff0  load.d r[6:7], -248(r30)
000614  97385603  sll.d r[18:19], r[13:14], r21
000618  7d100d00  xwait r26, 0
00061c  8ba81211  add.ul r[18:19], r[6:7], r[18:19]
000620  1f430000  addli r6, zero, 4
000624  9f020001  addli r5, zero, 128
000628  1d000300  lock zero, r6
00062c  958a0a00  dma_cfg r21, r21, zero, 0
000630  15000904  dma_cfg zero, r18, zero, 2
000634  95805806  dma_cfg r1, r17, r5, 3
000638  9f380000  addli r17, zero, 3
00063c  e3400ffe  loadli.w r1,  -252(r30)
000640  9582a008  dma_cfg r5, r1, r10, 4
000644  35000000  dma_run zero
000648  1d100300  unlock r6
00064c  7d800800  xsignal r17, 0
000650  5b080000  j 64
000654  bb70a101  bneq r2, r26, 60
000658  9f620000  addli r5, zero, 6
00065c  7d900800  xwait r17, 0
000660  7d900200  xwait r5, 0
000664  b7000500  beq r10, zero, 32
000668  1d000000  lock zero, zero
00066c  81080000  ds_cfg r17, zero, 0
000670  01070002  ds_cfg r14, zero, 1
000674  0107001c  ds_cfg r14, zero, 14
000678  0105001a  ds_cfg r10, zero, 13
00067c  219ce002  shuffle_batch r24, r1, r14, 1
000680  1d100000  unlock zero
000684  9f500000  addli r1, zero, 5
000688  7d000300  xsignal r6, 0
00068c  7d800000  xsignal r1, 0
000690  8b103439  mod.s r1, r8, r19
000694  ab020d00  lui r5, 208
000698  9bb0f000  slli r1, r1, 15
00069c  8b905010  add.s r1, r1, r5
0006a0  bb605101  bneq r2, r21, 56
0006a4  93b2b705  setlt.sl r5, r[16:17], r[28:29]
0006a8  1f161000  addli r12, zero, 9
0006ac  7d100600  xwait r12, 0
0006b0  bb8b02fe  bneq r5, zero, -288
0006b4  1d000d00  lock zero, r26
0006b8  9f72f001  addli r5, zero, 255
0006bc  8d0a0002  ew_cfg r21, zero, zero, 1
0006c0  0d100000  ewcoeff_cfg zero, zero, zero, 0
0006c4  0d800204  ew_cfg zero, r5, zero, 2
0006c8  0d070006  ew_cfg r14, zero, zero, 3
0006cc  cd300000  ssaux r1, 0
0006d0  1d100d00  unlock r26
0006d4  dbd7ffff  j -324
0006d8  9f025000  addli r5, zero, 40
0006dc  1f790000  addli r18, zero, 7
0006e0  8b925438  mod.s r5, r9, r5
0006e4  9bb2f200  slli r5, r5, 15
0006e8  b7212101  beq r2, r18, 104
0006ec  1f690000  addli r18, zero, 6
0006f0  3b722101  bneq r2, r18, 156
0006f4  eb588fef  load.d r[18:19], -264(r30)
0006f8  9f720000  addli r5, zero, 7
0006fc  a78b0d00  addli.d r[24:25], r[28:29], 0
000700  7d900200  xwait r5, 0
000704  1d000300  lock zero, r6
000708  0b361621  mul.sl r[13:14], r[13:14], r[18:19]
00070c  eb5d0fef  load.d r[28:29], -272(r30)
000710  958a0a00  dma_cfg r21, r21, zero, 0
000714  9f380000  addli r17, zero, 3
000718  17365603  sll.d r[13:14], r[13:14], r21
00071c  0ba6cd10  add.ul r[13:14], r[28:29], r[13:14]
000720  a78d0b00  addli.d r[28:29], r[24:25], 0
000724  9f0b1000  addli r23, zero, 8
000728  15800604  dma_cfg zero, r13, zero, 2
00072c  e342dffd  loadli.w r5,  -276(r30)
000730  95005606  dma_cfg r1, r12, r5, 3
000734  9f020004  addli r5, zero, 512
000738  e300dffd  loadli.w r1,  -280(r30)
00073c  9582e008  dma_cfg r5, r1, r14, 4
000740  35000000  dma_run zero
000744  1d100300  unlock r6
000748  7d800b00  xsignal r23, 0
00074c  dbc9ffff  j -436
000750  1f361000  addli r12, zero, 11
000754  7d900b00  xwait r23, 0
000758  7d100600  xwait r12, 0
00075c  1d000000  lock zero, zero
000760  1f060002  addli r12, zero, 256
000764  81080000  ds_cfg r17, zero, 0
000768  01060002  ds_cfg r12, zero, 1
00076c  0107001c  ds_cfg r14, zero, 14
000770  0106001a  ds_cfg r12, zero, 13
000774  c182e004  shuffle_coa r5, r1, r14, 2
000778  9f101000  addli r1, zero, 9
00077c  1d100000  unlock zero
000780  7d800000  xsignal r1, 0
000784  9f201000  addli r1, zero, 10
000788  dbc1ffff  j -500
00078c  3b3861fe  bneq r2, r6, -500
000790  9f500000  addli r1, zero, 5
000794  7d900000  xwait r1, 0
000798  9f201000  addli r1, zero, 10
00079c  7d900000  xwait r1, 0
0007a0  b7400b00  beq r22, zero, 48
0007a4  37510500  beq r10, zero, 84
0007a8  9f000000  addli r1, zero, 0
0007ac  1d800a00  lock zero, r21
0007b0  0907a700  mm_cfg r14, r14, r10, 0
0007b4  098d5b05  mm_cfg r26, r23, r21, 2
0007b8  a9105c0a  mm_acc r1, r24, r5, 5
0007bc  9f800002  addli r1, r1, 256
0007c0  9f820240  addli r5, r5, 8192
0007c4  1d900a00  unlock r21
0007c8  bb9f40ff  bneq r1, r20, -28
0007cc  db050000  j 44
0007d0  b7200500  beq r10, zero, 40
0007d4  9f000000  addli r1, zero, 0
0007d8  1d800a00  lock zero, r21
0007dc  0907a700  mm_cfg r14, r14, r10, 0
0007e0  098d5b05  mm_cfg r26, r23, r21, 2
0007e4  a9005c0a  mm r1, r24, r5, 5
0007e8  9f800002  addli r1, r1, 256
0007ec  9f820240  addli r5, r5, 8192
0007f0  1d900a00  unlock r21
0007f4  bb9f40ff  bneq r1, r20, -28
0007f8  9f600000  addli r1, zero, 6
0007fc  7d800000  xsignal r1, 0
000800  9f301000  addli r1, zero, 11
000804  5bb2ffff  j -624
000808  9f292000  addli r19, zero, 18
00080c  1f0a0008  addli r20, zero, 1024
000810  3b306100  bneq r2, r6, 12
000814  9f401000  addli r1, zero, 12
000818  7d800000  xsignal r1, 0
00081c  eb580fed  load.d r[18:19], -304(r30)
000820  6b568fef  load.d r[13:14], -264(r30)
000824  eb5d8fed  load.d r[28:29], -296(r30)
000828  27850802  addli.d r[11:12], r[18:19], 256
00082c  0b35c540  min.sl r[11:12], r[11:12], r[13:14]
000830  0b351549  max.sl r[11:12], r[11:12], r[18:19]
000834  0b351519  sub.sl r[11:12], r[11:12], r[18:19]
000838  eb580fee  load.d r[18:19], -288(r30)
00083c  bb705101  bneq r2, r21, 60
000840  93b0a704  setlt.sl r1, r[16:17], r[11:12]
000844  9f012000  addli r3, zero, 16
000848  7d900100  xwait r3, 0
00084c  ab011600  lui r3, 352
000850  3bb000fe  bneq r1, zero, -1012
000854  1d000d00  lock zero, r26
000858  9f70f001  addli r1, zero, 255
00085c  8d0a0002  ew_cfg r21, zero, zero, 1
000860  0d100000  ewcoeff_cfg zero, zero, zero, 0
000864  0d800004  ew_cfg zero, r1, zero, 2
000868  8d0a0006  ew_cfg r21, zero, zero, 3
00086c  cd310000  ssaux r3, 0
000870  1d100d00  unlock r26
000874  5b7dffff  j -1048
000878  2b061600  lui r12, 352
00087c  9b110620  ori r3, r12, 512
000880  b7110100  beq r2, zero, 100
000884  9f500000  addli r1, zero, 5
000888  3b4011fe  bneq r2, r1, -1008
00088c  9f721000  addli r5, zero, 15
000890  9f000000  addli r1, zero, 0
000894  2b050200  lui r10, 32
000898  7d900200  xwait r5, 0
00089c  9f122000  addli r5, zero, 17
0008a0  7d900200  xwait r5, 0
0008a4  1d000d00  lock zero, r26
0008a8  9f020078  addli r5, zero, 15360
0008ac  8d0a0002  ew_cfg r21, zero, zero, 1
0008b0  8d920200  ewcoeff_cfg r5, r5, zero, 0
0008b4  9f72f001  addli r5, zero, 255
0008b8  0d800204  ew_cfg zero, r5, zero, 2
0008bc  8d0a0006  ew_cfg r21, zero, zero, 3
0008c0  8b923010  add.s r5, r1, r3
0008c4  9f800004  addli r1, r1, 512
0008c8  ad82c200  dsmadd r5, r5, r12, 0
0008cc  bbdfa0fe  bneq r1, r10, -12
0008d0  9f002000  addli r1, zero, 16
0008d4  1d100d00  unlock r26
0008d8  7d800000  xsignal r1, 0
0008dc  7d800900  xsignal r19, 0
0008e0  5b77ffff  j -1096
0008e4  9f401000  addli r1, zero, 12
0008e8  1f5c0000  addli r24, zero, 5
0008ec  9f020002  addli r5, zero, 256
0008f0  e3035f00  loadli.w r7,  40(r30)
0008f4  7d900000  xwait r1, 0
0008f8  9f302000  addli r1, zero, 19
0008fc  b3870228  zext_int2long r[16:17], r5
000900  7d900000  xwait r1, 0
000904  1d000c00  lock zero, r24
000908  9f000004  addli r1, zero, 512
00090c  0b35f540  min.sl r[11:12], r[11:12], r[16:17]
000910  950a0000  dma_cfg r21, zero, zero, 0
000914  958a0a02  dma_cfg r21, r21, zero, 1
000918  15000004  dma_cfg zero, zero, zero, 2
00091c  95014007  dma_cfg r3, zero, r20, 3
000920  95005a08  dma_cfg r1, r20, r5, 4
000924  9f501000  addli r1, zero, 13
000928  35000000  dma_run zero
00092c  1d100c00  unlock r24
000930  1f0a0004  addli r20, zero, 512
000934  7d800000  xsignal r1, 0
000938  9f102000  addli r1, zero, 17
00093c  7d800000  xsignal r1, 0
000940  e3408ffd  loadli.w r1,  -316(r30)
000944  6b5b0feb  load.d r[23:24], -336(r30)
000948  7334aff0  store.d r[11:12], -248(r30)
00094c  6b558fec  load.d r[11:12], -312(r30)
000950  33960028  sext_int2long r[13:14], r1
000954  a7080602  addli.d r[18:19], r[13:14], 256
000958  8bb86841  min.sl r[18:19], r[18:19], r[23:24]
00095c  6b5b8fef  load.d r[23:24], -264(r30)
000960  8bb8c848  max.sl r[18:19], r[18:19], r[13:14]
000964  0b3b6521  mul.sl r[23:24], r[11:12], r[23:24]
000968  6b550fee  load.d r[11:12], -288(r30)
00096c  7d900900  xwait r19, 0
000970  1d000c00  lock zero, r24
000974  0bb6c818  sub.sl r[13:14], r[18:19], r[13:14]
000978  eb588f01  load.d r[18:19], 24(r30)
00097c  958a0a00  dma_cfg r21, r21, zero, 0
000980  173b5b03  sll.d r[23:24], r[23:24], r21
000984  15800a02  dma_cfg zero, r21, zero, 1
000988  0b36f640  min.sl r[13:14], r[13:14], r[16:17]
00098c  8ba86811  add.ul r[18:19], r[18:19], r[23:24]
000990  9f0b1000  addli r23, zero, 8
000994  8ba7a810  add.ul r[16:17], r[18:19], r[11:12]
000998  6b558ff0  load.d r[11:12], -248(r30)
00099c  15080004  dma_cfg r16, zero, zero, 2
0009a0  9b301500  slli r1, r10, 1
0009a4  95871106  dma_cfg r15, r3, r1, 3
0009a8  e300dffd  loadli.w r1,  -280(r30)
0009ac  9500ca08  dma_cfg r1, r20, r12, 4
0009b0  9f302000  addli r1, zero, 19
0009b4  35000000  dma_run zero
0009b8  1d100c00  unlock r24
0009bc  5b5bffff  j -1320
0009c0  7d000000  xsignal zero, 0
0009c4  bb600100  bneq r2, zero, 56
0009c8  9f200000  addli r1, zero, 2
0009cc  7d100000  xwait zero, 0
0009d0  7d100000  xwait zero, 0
0009d4  7d100000  xwait zero, 0
0009d8  7d100000  xwait zero, 0
0009dc  7d100000  xwait zero, 0
0009e0  7d100000  xwait zero, 0
0009e4  7d100000  xwait zero, 0
0009e8  7d100000  xwait zero, 0
0009ec  1d800000  lock zero, r1
0009f0  0d000020  ew_cfg zero, zero, zero, 16
0009f4  1d900000  unlock r1
0009f8  7d400000  xsignal_mode_cfg zero
0009fc  9f8ebe02  addli sp, sp, 344
000a00  00a00300  mfence { lm, sm, gm }
000a04  00100000  exit
000a08  00100000  exit
000a0c  00100000  exit
000a10  00100000  exit
000a14  00100000  exit
000a18  00100000  exit
000a1c  00100000  exit
000a20  00100000  exit
000a24  00100000  exit
000a28  00100000  exit
000a2c  00100000  exit
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
