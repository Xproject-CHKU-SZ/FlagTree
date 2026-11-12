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
0000b4  9f8e3ef8  addli sp, sp, -1000
0000b8  9f100000  addli r1, zero, 1
0000bc  003a0002  core_id r20
0000c0  1f8f5e07  addli r30, sp, 936
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600a00  beq r20, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  db710000  j 908
0000e0  9f210000  addli r3, zero, 2
0000e4  fdd00000  uni_sram_cfg r1, r1
0000e8  2bf2ffff  lui r4, 1048575
0000ec  1d800100  lock zero, r3
0000f0  8d000020  ew_cfg r1, zero, zero, 16
0000f4  9b10f2ff  ori r1, r4, 4095
0000f8  1f320000  addli r4, zero, 3
0000fc  1d900100  unlock r3
000100  9f510000  addli r3, zero, 5
000104  80a10004  csr_set csr3, r1
000108  9f301000  addli r1, zero, 11
00010c  00d00100  sync_group
000110  7d800000  xsignal r1, 0
000114  7d800000  xsignal r1, 0
000118  7d800000  xsignal r1, 0
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
0001c0  7d800100  xsignal r3, 0
0001c4  7d800100  xsignal r3, 0
0001c8  7d800100  xsignal r3, 0
0001cc  7d800100  xsignal r3, 0
0001d0  7d800100  xsignal r3, 0
0001d4  7d800100  xsignal r3, 0
0001d8  7d800100  xsignal r3, 0
0001dc  9f101000  addli r1, zero, 9
0001e0  9f710000  addli r3, zero, 7
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
000264  7d000200  xsignal r4, 0
000268  7d000200  xsignal r4, 0
00026c  7d000200  xsignal r4, 0
000270  7d000200  xsignal r4, 0
000274  7d000200  xsignal r4, 0
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
0002b0  7d800000  xsignal r1, 0
0002b4  7d800000  xsignal r1, 0
0002b8  7d800000  xsignal r1, 0
0002bc  7d800000  xsignal r1, 0
0002c0  7d800000  xsignal r1, 0
0002c4  7d800000  xsignal r1, 0
0002c8  7d800000  xsignal r1, 0
0002cc  7d800000  xsignal r1, 0
0002d0  7d800000  xsignal r1, 0
0002d4  7d800000  xsignal r1, 0
0002d8  7d800000  xsignal r1, 0
0002dc  7d800000  xsignal r1, 0
0002e0  7d800000  xsignal r1, 0
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
00031c  7d800000  xsignal r1, 0
000320  7d800000  xsignal r1, 0
000324  7d800000  xsignal r1, 0
000328  7d800000  xsignal r1, 0
00032c  7d800000  xsignal r1, 0
000330  7d800000  xsignal r1, 0
000334  7d800000  xsignal r1, 0
000338  7d800000  xsignal r1, 0
00033c  7d800000  xsignal r1, 0
000340  7d800000  xsignal r1, 0
000344  7d800000  xsignal r1, 0
000348  7d800000  xsignal r1, 0
00034c  7d800000  xsignal r1, 0
000350  7d800000  xsignal r1, 0
000354  7d800000  xsignal r1, 0
000358  7d800000  xsignal r1, 0
00035c  7d800000  xsignal r1, 0
000360  7d800000  xsignal r1, 0
000364  7d800000  xsignal r1, 0
000368  7d800000  xsignal r1, 0
00036c  7d800000  xsignal r1, 0
000370  7d800000  xsignal r1, 0
000374  7d800000  xsignal r1, 0
000378  7d800000  xsignal r1, 0
00037c  7d800000  xsignal r1, 0
000380  7d800000  xsignal r1, 0
000384  7d800000  xsignal r1, 0
000388  7d800000  xsignal r1, 0
00038c  7d800000  xsignal r1, 0
000390  7d800000  xsignal r1, 0
000394  7d800000  xsignal r1, 0
000398  7d800000  xsignal r1, 0
00039c  7d800000  xsignal r1, 0
0003a0  7d800000  xsignal r1, 0
0003a4  7d800000  xsignal r1, 0
0003a8  7d800000  xsignal r1, 0
0003ac  7d800000  xsignal r1, 0
0003b0  7d800000  xsignal r1, 0
0003b4  7d800000  xsignal r1, 0
0003b8  7d800100  xsignal r3, 0
0003bc  7d800100  xsignal r3, 0
0003c0  7d800100  xsignal r3, 0
0003c4  7d800100  xsignal r3, 0
0003c8  7d800100  xsignal r3, 0
0003cc  7d800100  xsignal r3, 0
0003d0  7d800100  xsignal r3, 0
0003d4  7d800100  xsignal r3, 0
0003d8  7d800100  xsignal r3, 0
0003dc  7d800100  xsignal r3, 0
0003e0  7d800100  xsignal r3, 0
0003e4  7d800100  xsignal r3, 0
0003e8  7d800100  xsignal r3, 0
0003ec  7d800100  xsignal r3, 0
0003f0  7d800100  xsignal r3, 0
0003f4  7d800100  xsignal r3, 0
0003f8  7d800100  xsignal r3, 0
0003fc  7d800100  xsignal r3, 0
000400  7d800100  xsignal r3, 0
000404  7d800100  xsignal r3, 0
000408  7d800100  xsignal r3, 0
00040c  7d800100  xsignal r3, 0
000410  7d800100  xsignal r3, 0
000414  7d800100  xsignal r3, 0
000418  7d800100  xsignal r3, 0
00041c  7d800100  xsignal r3, 0
000420  7d800100  xsignal r3, 0
000424  7d800100  xsignal r3, 0
000428  7d800100  xsignal r3, 0
00042c  7d800100  xsignal r3, 0
000430  7d800100  xsignal r3, 0
000434  7d800100  xsignal r3, 0
000438  7d800100  xsignal r3, 0
00043c  7d800100  xsignal r3, 0
000440  7d800100  xsignal r3, 0
000444  7d800100  xsignal r3, 0
000448  9f501000  addli r1, zero, 13
00044c  9f711000  addli r3, zero, 15
000450  7d800000  xsignal r1, 0
000454  7d800000  xsignal r1, 0
000458  7d800000  xsignal r1, 0
00045c  7d800100  xsignal r3, 0
000460  7d800100  xsignal r3, 0
000464  7d800100  xsignal r3, 0
000468  e3004f00  loadli.w r1,  32(r30)
00046c  e3414f00  loadli.w r3,  36(r30)
000470  80d20002  load_param_i r5, 1
000474  63025f00  loadli.w r4,  40(r30)
000478  670f0ffe  storeli.w zero, -16(r30)
00047c  670e0ffe  storeli.w zero, -32(r30)
000480  e7440ffe  storeli.w zero, -180(r30)
000484  e7000ffc  storeli.w zero, -504(r30)
000488  67070ffa  storeli.w zero, -656(r30)
00048c  e74a0ff8  storeli.w zero, -852(r30)
000490  8b901120  mul.s r1, r3, r1
000494  9f810200  addli r3, r5, 0
000498  8b914050  fmac.s r3, r1, r4
00049c  0b924020  mul.s r4, r1, r4
0004a0  9ff1f1ff  addli r3, r3, -1
0004a4  8b915130  div.s r3, r3, r5
0004a8  80520002  load_param_i r5, 0
0004ac  8b905120  mul.s r1, r3, r5
0004b0  8b915150  fmac.s r3, r3, r5
0004b4  8b914140  min.s r3, r3, r4
0004b8  4bb61102  ble.s r3, r1, 1420
0004bc  b3910128  sext_int2long r[4:5], r3
0004c0  63449ffe  loadli.w r8,  -180(r30)
0004c4  e304effa  loadli.w r9,  -656(r30)
0004c8  63455ff9  loadli.w r10,  -852(r30)
0004cc  e3061ffc  loadli.w r13,  -504(r30)
0004d0  33930028  sext_int2long r[7:8], r1
0004d4  1f070001  addli r14, zero, 128
0004d8  9f3d0000  addli r27, zero, 3
0004dc  9f490000  addli r19, zero, 4
0004e0  9f2a0000  addli r21, zero, 2
0004e4  1f0e6000  addli r28, zero, 48
0004e8  1f5d4000  addli r26, zero, 37
0004ec  9f500000  addli r1, zero, 5
0004f0  1f01a000  addli r2, zero, 80
0004f4  9f078000  addli r15, zero, 64
0004f8  1f090000  addli r18, zero, 0
0004fc  73303fc6  store.d r[4:5], -928(r30)
000500  e301efff  loadli.w r3,  -16(r30)
000504  67093ff8  storeli.w r3, -880(r30)
000508  e301cfff  loadli.w r3,  -32(r30)
00050c  67493ff8  storeli.w r3, -876(r30)
000510  1f72f01f  addli r4, zero, 4095
000514  ab01feff  lui r3, 1048544
000518  733c3fc4  store.d r[4:5], -936(r30)
00051c  9f014000  addli r3, zero, 32
000520  5b0f0000  j 120
000524  eb550f01  load.d r[12:13], 16(r30)
000528  6b588fc7  load.d r[17:18], -904(r30)
00052c  1f521000  addli r4, zero, 13
000530  7d100200  xwait r4, 0
000534  1d800900  lock zero, r19
000538  1bb22200  slli r4, r5, 2
00053c  9f020004  addli r5, zero, 512
000540  8ba50511  add.ul r[12:13], r[12:13], r[17:18]
000544  15000000  dma_cfg zero, zero, zero, 0
000548  15000604  dma_cfg zero, r12, zero, 2
00054c  95834506  dma_cfg r7, r11, r4, 3
000550  1f120000  addli r4, zero, 1
000554  95824208  dma_cfg r5, r5, r4, 4
000558  35000000  dma_run zero
00055c  1d900900  unlock r19
000560  1f421000  addli r4, zero, 12
000564  7d000200  xsignal r4, 0
000568  6b538fc8  load.d r[7:8], -888(r30)
00056c  6b520fc6  load.d r[5:6], -928(r30)
000570  63490ff9  loadli.w r18,  -892(r30)
000574  27130300  addli.d r[7:8], r[7:8], 1
000578  13324304  setlt.sl r4, r[7:8], r[5:6]
00057c  e3422ff9  loadli.w r5,  -876(r30)
000580  9f920200  addli r5, r5, 1
000584  67495ff8  storeli.w r5, -876(r30)
000588  e3022ff9  loadli.w r5,  -880(r30)
00058c  9f920200  addli r5, r5, 1
000590  67095ff8  storeli.w r5, -880(r30)
000594  b7420202  beq r4, zero, 1200
000598  3b303a01  bneq r20, r19, 12
00059c  1f321000  addli r4, zero, 11
0005a0  7d100200  xwait r4, 0
0005a4  63025f00  loadli.w r4,  40(r30)
0005a8  e3424f00  loadli.w r5,  36(r30)
0005ac  73346fc8  store.d r[7:8], -888(r30)
0005b0  0b124330  div.s r4, r6, r4
0005b4  1f031000  addli r6, zero, 8
0005b8  0b185230  div.s r16, r4, r5
0005bc  9f022000  addli r5, zero, 16
0005c0  0b1be830  div.s r22, r16, r14
0005c4  1b323b00  slli r4, r22, 3
0005c8  8b924218  sub.s r5, r5, r4
0005cc  8b9b6240  min.s r23, r5, r6
0005d0  8b127839  mod.s r5, r16, r23
0005d4  0b165210  add.s r12, r4, r5
0005d8  1f721000  addli r4, zero, 15
0005dc  1303c204  setlt.u r6, r4, r12
0005e0  330c0628  zext_int2long r[25:26], r12
0005e4  1f521000  addli r4, zero, 13
0005e8  17324c02  sll.d r[5:6], r[25:26], r4
0005ec  73388fc7  store.d r[25:26], -912(r30)
0005f0  3b300300  bneq r6, zero, 12
0005f4  33030028  zext_int2long r[7:8], zero
0005f8  db010000  j 12
0005fc  6b538fc5  load.d r[7:8], -936(r30)
000600  17036202  and.d r[7:8], r[5:6], r[7:8]
000604  9b387b00  slli r17, r22, 7
000608  73306fca  store.d r[7:8], -864(r30)
00060c  9b337600  slli r7, r12, 7
000610  1f760000  addli r12, zero, 7
000614  1f630000  addli r6, zero, 6
000618  9f050000  addli r11, zero, 0
00061c  0b181819  sub.s r16, r16, r17
000620  8b18b939  mod.s r17, r18, r27
000624  e7467ff8  storeli.w r7, -916(r30)
000628  1f190900  addli r18, r18, 1
00062c  0b187831  div.s r16, r16, r23
000630  67482ff9  storeli.w r18, -892(r30)
000634  330b0828  zext_int2long r[23:24], r16
000638  9b337800  slli r7, r16, 7
00063c  973bcb02  sll.d r[24:25], r[23:24], r12
000640  1bbb0801  slli r22, r17, 16
000644  6b588f00  load.d r[17:18], 8(r30)
000648  67087ff8  storeli.w r7, -896(r30)
00064c  97bb5b03  sll.d r[24:25], r[24:25], r21
000650  0b287811  add.ul r[17:18], r[17:18], r[24:25]
000654  733c7fc7  store.d r[24:25], -904(r30)
000658  9f1b0000  addli r23, zero, 1
00065c  1f0c0000  addli r24, zero, 0
000660  733c0fc9  store.d r[17:18], -872(r30)
000664  5b030000  j 24
000668  9b851b00  andi r11, r23, 1
00066c  b7c90500  beq r11, zero, 624
000670  1f1c0c00  addli r24, r24, 1
000674  9f150000  addli r11, zero, 1
000678  9f0b0000  addli r23, zero, 0
00067c  0b96a439  mod.s r12, r9, r26
000680  0b18c539  mod.s r16, r10, r28
000684  ab080300  lui r17, 48
000688  1f150500  addli r10, r10, 1
00068c  9f940400  addli r9, r9, 1
000690  1b36e600  slli r12, r12, 14
000694  1b38e800  slli r16, r16, 14
000698  0b161611  add.s r12, r12, r17
00069c  37125a01  beq r20, r21, 132
0006a0  b3880528  zext_int2long r[18:19], r11
0006a4  3b756a00  bneq r20, r6, 348
0006a8  97b81802  sll.d r[18:19], r[18:19], r1
0006ac  6b530fca  load.d r[7:8], -864(r30)
0006b0  b38c0728  zext_int2long r[26:27], r15
0006b4  9f350000  addli r11, zero, 3
0006b8  97984802  or.d r[18:19], r[18:19], r[5:6]
0006bc  7d900500  xwait r11, 0
0006c0  1d800900  lock zero, r19
0006c4  15000000  dma_cfg zero, zero, zero, 0
0006c8  8bbd6818  sub.sl r[28:29], r[18:19], r[7:8]
0006cc  6b530f00  load.d r[7:8], 0(r30)
0006d0  97b85803  sll.d r[18:19], r[18:19], r21
0006d4  8f9c9d61  div.sl r[26:27], r[28:29], r[26:27]
0006d8  9f0d000f  addli r27, zero, 1920
0006dc  8b281311  add.ul r[18:19], r[7:8], r[18:19]
0006e0  9f030002  addli r7, zero, 256
0006e4  1f630000  addli r6, zero, 6
0006e8  b38d0d28  zext_int2long r[28:29], r27
0006ec  15000904  dma_cfg zero, r18, zero, 2
0006f0  1586e806  dma_cfg r12, r17, r14, 3
0006f4  8bbdbc41  min.sl r[28:29], r[26:27], r[28:29]
0006f8  8bbc9d19  sub.sl r[26:27], r[28:29], r[26:27]
0006fc  1f0e6000  addli r28, zero, 48
000700  9f3d0000  addli r27, zero, 3
000704  9f850c01  addli r11, r25, 128
000708  1f5d4000  addli r26, zero, 37
00070c  1587b308  dma_cfg r14, r7, r11, 4
000710  35000000  dma_run zero
000714  1d900900  unlock r19
000718  7d800a00  xsignal r21, 0
00071c  5b060000  j 48
000720  7d900a00  xwait r21, 0
000724  7d900000  xwait r1, 0
000728  1d000000  lock zero, zero
00072c  810a0000  ds_cfg r21, zero, 0
000730  81010002  ds_cfg r3, zero, 1
000734  8101001c  ds_cfg r3, zero, 14
000738  0107001a  ds_cfg r14, zero, 13
00073c  21183602  shuffle_batch r16, r12, r3, 1
000740  1d100000  unlock zero
000744  7d800d00  xsignal r27, 0
000748  7d800900  xsignal r19, 0
00074c  8b952638  mod.s r11, r13, r2
000750  9f960600  addli r13, r13, 1
000754  1f140400  addli r8, r8, 1
000758  9bb5e500  slli r11, r11, 14
00075c  3b3c3aff  bneq r20, r19, -244
000760  1f061000  addli r12, zero, 8
000764  7d900900  xwait r19, 0
000768  9f180000  addli r17, zero, 1
00076c  1f090000  addli r18, zero, 0
000770  7d100600  xwait r12, 0
000774  1f160000  addli r12, zero, 1
000778  b7700c00  beq r24, zero, 60
00077c  9b3cd900  slli r25, r18, 13
000780  1b398900  slli r18, r18, 8
000784  1d000600  lock zero, r12
000788  8987e100  mm_cfg r15, r3, r14, 0
00078c  979cbc00  or r25, r25, r11
000790  17196901  or r18, r18, r22
000794  898ac904  mm_cfg r21, r19, r12, 2
000798  29199811  mm_acc r18, r16, r25, 8
00079c  9b8c1800  andi r25, r17, 1
0007a0  1f190000  addli r18, zero, 1
0007a4  9f080000  addli r17, zero, 0
0007a8  1d100600  unlock r12
0007ac  3bcf0cfe  bneq r25, zero, -48
0007b0  5b070000  j 56
0007b4  9b3cd900  slli r25, r18, 13
0007b8  1b398900  slli r18, r18, 8
0007bc  1d000600  lock zero, r12
0007c0  8987e100  mm_cfg r15, r3, r14, 0
0007c4  979cbc00  or r25, r25, r11
0007c8  17196901  or r18, r18, r22
0007cc  898ac904  mm_cfg r21, r19, r12, 2
0007d0  29099811  mm r18, r16, r25, 8
0007d4  9b8c1800  andi r25, r17, 1
0007d8  1f190000  addli r18, zero, 1
0007dc  9f080000  addli r17, zero, 0
0007e0  1d100600  unlock r12
0007e4  3bcf0cfe  bneq r25, zero, -48
0007e8  9b851b00  andi r11, r23, 1
0007ec  1f161000  addli r12, zero, 9
0007f0  7d800000  xsignal r1, 0
0007f4  7d000600  xsignal r12, 0
0007f8  bbe905fe  bneq r11, zero, -392
0007fc  5b1b0000  j 216
000800  9f434000  addli r7, zero, 36
000804  0b962638  mod.s r12, r13, r2
000808  9f960600  addli r13, r13, 1
00080c  8b157438  mod.s r11, r8, r7
000810  ab430c00  lui r7, 196
000814  1f140400  addli r8, r8, 1
000818  9bbce500  slli r25, r11, 14
00081c  9b35e600  slli r11, r12, 14
000820  0b967c10  add.s r12, r25, r7
000824  9f7c0000  addli r25, zero, 7
000828  b7219a01  beq r20, r25, 104
00082c  9f130000  addli r7, zero, 1
000830  bb3c7afe  bneq r20, r7, -212
000834  9f750000  addli r11, zero, 7
000838  9f232000  addli r7, zero, 18
00083c  a7000200  addli.d r[2:3], r[5:6], 0
000840  7d900500  xwait r11, 0
000844  6b528fc9  load.d r[5:6], -872(r30)
000848  17b87802  sll.d r[17:18], r[18:19], r7
00084c  1d800900  lock zero, r19
000850  9f030004  addli r7, zero, 512
000854  9f050040  addli r11, zero, 8192
000858  15000000  dma_cfg zero, zero, zero, 0
00085c  0b280211  add.ul r[17:18], r[5:6], r[17:18]
000860  27820000  addli.d r[5:6], r[2:3], 0
000864  1f01a000  addli r2, zero, 80
000868  9f500000  addli r1, zero, 5
00086c  15800804  dma_cfg zero, r17, zero, 2
000870  15067806  dma_cfg r12, r16, r7, 3
000874  95833508  dma_cfg r7, r11, r3, 4
000878  35000000  dma_run zero
00087c  1d900900  unlock r19
000880  7d000300  xsignal r6, 0
000884  9b851b00  andi r11, r23, 1
000888  bba705fe  bneq r11, zero, -536
00088c  db080000  j 68
000890  1f181000  addli r16, zero, 9
000894  7d100300  xwait r6, 0
000898  7d100800  xwait r16, 0
00089c  1d000000  lock zero, zero
0008a0  810a0000  ds_cfg r21, zero, 0
0008a4  01070002  ds_cfg r14, zero, 1
0008a8  8101001c  ds_cfg r3, zero, 14
0008ac  0107001a  ds_cfg r14, zero, 13
0008b0  c1053604  shuffle_coa r11, r12, r3, 2
0008b4  9f750000  addli r11, zero, 7
0008b8  1d100000  unlock zero
0008bc  7d800500  xsignal r11, 0
0008c0  9f051000  addli r11, zero, 8
0008c4  7d800500  xsignal r11, 0
0008c8  9b851b00  andi r11, r23, 1
0008cc  bb9605fe  bneq r11, zero, -604
0008d0  3b303a01  bneq r20, r19, 12
0008d4  1f221000  addli r4, zero, 10
0008d8  7d000200  xsignal r4, 0
0008dc  1f02000f  addli r4, zero, 1920
0008e0  63482ff9  loadli.w r16,  -876(r30)
0008e4  b30b0728  zext_int2long r[24:25], r14
0008e8  9f680000  addli r17, zero, 6
0008ec  b3050228  zext_int2long r[12:13], r4
0008f0  63020ff9  loadli.w r4,  -896(r30)
0008f4  0b18b839  mod.s r16, r16, r27
0008f8  33020228  zext_int2long r[5:6], r4
0008fc  0b23b240  min.ul r[7:8], r[5:6], r[12:13]
000900  27030301  addli.d r[7:8], r[7:8], 128
000904  0b234348  max.ul r[7:8], r[7:8], r[5:6]
000908  0b324318  sub.sl r[5:6], r[7:8], r[5:6]
00090c  9b339800  slli r7, r16, 9
000910  8b227241  min.ul r[6:7], r[5:6], r[24:25]
000914  2b421500  lui r4, 340
000918  8b934310  add.s r7, r7, r4
00091c  37201aff  beq r20, r17, -1016
000920  63022ff9  loadli.w r4,  -880(r30)
000924  2b481500  lui r16, 340
000928  1b180860  ori r16, r16, 1536
00092c  0b12b239  mod.s r4, r4, r27
000930  1b320201  slli r4, r4, 16
000934  0b120211  add.s r4, r4, r16
000938  bb711a00  bneq r20, r1, 124
00093c  1f231000  addli r6, zero, 10
000940  ab05803f  lui r11, 260096
000944  9f020000  addli r5, zero, 0
000948  2b060100  lui r12, 16
00094c  7d100300  xwait r6, 0
000950  1f431000  addli r6, zero, 12
000954  7d100300  xwait r6, 0
000958  1f731000  addli r6, zero, 15
00095c  7d100300  xwait r6, 0
000960  1f130000  addli r6, zero, 1
000964  1d800a00  lock zero, r21
000968  0d030014  ew_cfg r6, zero, zero, 10
00096c  0d000002  ew_cfg zero, zero, zero, 1
000970  8d950500  ewcoeff_cfg r11, r11, zero, 0
000974  9f75f000  addli r11, zero, 127
000978  0d800504  ew_cfg zero, r11, zero, 2
00097c  0d030006  ew_cfg r6, zero, zero, 3
000980  0b135210  add.s r6, r4, r5
000984  8b155b10  add.s r11, r22, r5
000988  9f820204  addli r5, r5, 512
00098c  2d837500  dsmadd r6, r11, r7, 0
000990  bbcfc2fe  bneq r5, r12, -16
000994  1f321000  addli r4, zero, 11
000998  0d000014  ew_cfg zero, zero, zero, 10
00099c  1d900a00  unlock r21
0009a0  7d000200  xsignal r4, 0
0009a4  1f521000  addli r4, zero, 13
0009a8  7d000200  xsignal r4, 0
0009ac  1f621000  addli r4, zero, 14
0009b0  db76ffff  j -1100
0009b4  bb5e0afc  bneq r20, zero, -1100
0009b8  e343dff8  loadli.w r7,  -916(r30)
0009bc  eb5c0fc7  load.d r[26:27], -912(r30)
0009c0  9bb22200  slli r5, r5, 2
0009c4  33980328  sext_int2long r[17:18], r7
0009c8  9f432000  addli r7, zero, 20
0009cc  8b35b840  min.sl r[12:13], r[17:18], r[12:13]
0009d0  97bc7c02  sll.d r[26:27], r[26:27], r7
0009d4  9f631000  addli r7, zero, 14
0009d8  a7850501  addli.d r[12:13], r[12:13], 128
0009dc  73309fcb  store.d r[26:27], -864(r30)
0009e0  7d900300  xwait r7, 0
0009e4  1d800000  lock zero, r1
0009e8  eb5c8f01  load.d r[26:27], 24(r30)
0009ec  9f130000  addli r7, zero, 1
0009f0  8bb50549  max.sl r[12:13], r[12:13], r[17:18]
0009f4  733cbfc8  store.d r[12:13], -872(r30)
0009f8  eb550fca  load.d r[12:13], -864(r30)
0009fc  8bacbc10  add.ul r[26:27], r[26:27], r[12:13]
000a00  eb558fc9  load.d r[12:13], -872(r30)
000a04  8bb50519  sub.sl r[12:13], r[12:13], r[17:18]
000a08  6b588fc7  load.d r[17:18], -904(r30)
000a0c  15000000  dma_cfg zero, zero, zero, 0
000a10  15800302  dma_cfg zero, r7, zero, 1
000a14  8bb57541  min.sl r[12:13], r[12:13], r[24:25]
000a18  0ba80c11  add.ul r[17:18], r[26:27], r[17:18]
000a1c  1f5d4000  addli r26, zero, 37
000a20  95080004  dma_cfg r17, zero, zero, 2
000a24  15085206  dma_cfg r16, r4, r5, 3
000a28  1f020004  addli r4, zero, 512
000a2c  9f020040  addli r5, zero, 8192
000a30  9502b208  dma_cfg r5, r4, r11, 4
000a34  1f721000  addli r4, zero, 15
000a38  35000000  dma_run zero
000a3c  1d900000  unlock r1
000a40  db64ffff  j -1244
000a44  7d000000  xsignal zero, 0
000a48  bb600a00  bneq r20, zero, 56
000a4c  9f200000  addli r1, zero, 2
000a50  7d100000  xwait zero, 0
000a54  7d100000  xwait zero, 0
000a58  7d100000  xwait zero, 0
000a5c  7d100000  xwait zero, 0
000a60  7d100000  xwait zero, 0
000a64  7d100000  xwait zero, 0
000a68  7d100000  xwait zero, 0
000a6c  7d100000  xwait zero, 0
000a70  1d800000  lock zero, r1
000a74  0d000020  ew_cfg zero, zero, zero, 16
000a78  1d900000  unlock r1
000a7c  7d400000  xsignal_mode_cfg zero
000a80  9f8e5e07  addli sp, sp, 936
000a84  00a00300  mfence { lm, sm, gm }
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
000cbc  00100000  exit
000cc0  00100000  exit
000cc4  00100000  exit
000cc8  00100000  exit
