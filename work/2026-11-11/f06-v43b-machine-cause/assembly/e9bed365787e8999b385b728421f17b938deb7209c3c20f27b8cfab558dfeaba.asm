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
0000b4  9f8e8ef8  addli sp, sp, -960
0000b8  9f100000  addli r1, zero, 1
0000bc  00310002  core_id r2
0000c0  1f8f0e07  addli r30, sp, 896
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600100  beq r2, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  db6c0000  j 868
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
00011c  7d800000  xsignal r1, 0
000120  7d800000  xsignal r1, 0
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
0001dc  7d800100  xsignal r3, 0
0001e0  7d800100  xsignal r3, 0
0001e4  9f101000  addli r1, zero, 9
0001e8  9f710000  addli r3, zero, 7
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
000260  7d800000  xsignal r1, 0
000264  7d800000  xsignal r1, 0
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
0003a0  7d800100  xsignal r3, 0
0003a4  7d800100  xsignal r3, 0
0003a8  7d800100  xsignal r3, 0
0003ac  7d800100  xsignal r3, 0
0003b0  7d800100  xsignal r3, 0
0003b4  7d800100  xsignal r3, 0
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
000410  9f501000  addli r1, zero, 13
000414  9f711000  addli r3, zero, 15
000418  7d800000  xsignal r1, 0
00041c  7d800000  xsignal r1, 0
000420  7d800000  xsignal r1, 0
000424  7d800000  xsignal r1, 0
000428  7d800000  xsignal r1, 0
00042c  7d800100  xsignal r3, 0
000430  7d800100  xsignal r3, 0
000434  7d800100  xsignal r3, 0
000438  7d800100  xsignal r3, 0
00043c  7d800100  xsignal r3, 0
000440  e3004f00  loadli.w r1,  32(r30)
000444  e3414f00  loadli.w r3,  36(r30)
000448  80d20002  load_param_i r5, 1
00044c  63025f00  loadli.w r4,  40(r30)
000450  e70e0ffe  storeli.w zero, -24(r30)
000454  670d0ffe  storeli.w zero, -48(r30)
000458  e7450ffe  storeli.w zero, -164(r30)
00045c  e7010ffc  storeli.w zero, -488(r30)
000460  670a0ffa  storeli.w zero, -608(r30)
000464  e74d0ff8  storeli.w zero, -804(r30)
000468  8b901120  mul.s r1, r3, r1
00046c  9f810200  addli r3, r5, 0
000470  8b914050  fmac.s r3, r1, r4
000474  0b924020  mul.s r4, r1, r4
000478  9ff1f1ff  addli r3, r3, -1
00047c  8b915130  div.s r3, r3, r5
000480  80520002  load_param_i r5, 0
000484  8b905120  mul.s r1, r3, r5
000488  8b915150  fmac.s r3, r3, r5
00048c  8b914140  min.s r3, r3, r4
000490  cbc51102  ble.s r3, r1, 1392
000494  b3910128  sext_int2long r[4:5], r3
000498  6344bffe  loadli.w r8,  -164(r30)
00049c  e3044ffb  loadli.w r9,  -608(r30)
0004a0  6345bff9  loadli.w r10,  -804(r30)
0004a4  e3063ffc  loadli.w r13,  -488(r30)
0004a8  33930028  sext_int2long r[7:8], r1
0004ac  1f070001  addli r14, zero, 128
0004b0  9f490000  addli r19, zero, 4
0004b4  9f2a0000  addli r21, zero, 2
0004b8  9f0d6000  addli r27, zero, 48
0004bc  1f5e3000  addli r28, zero, 29
0004c0  9f004000  addli r1, zero, 32
0004c4  1f0aa000  addli r20, zero, 80
0004c8  9f078000  addli r15, zero, 64
0004cc  e74b0ff8  storeli.w zero, -836(r30)
0004d0  73343fc8  store.d r[4:5], -888(r30)
0004d4  e301dfff  loadli.w r3,  -24(r30)
0004d8  9f72f01f  addli r5, zero, 4095
0004dc  2b02feff  lui r4, 1048544
0004e0  670c3ff8  storeli.w r3, -832(r30)
0004e4  e301afff  loadli.w r3,  -48(r30)
0004e8  73304fc8  store.d r[5:6], -896(r30)
0004ec  674c3ff8  storeli.w r3, -828(r30)
0004f0  9f510000  addli r3, zero, 5
0004f4  db0e0000  j 116
0004f8  eb550f01  load.d r[12:13], 16(r30)
0004fc  6b580fca  load.d r[17:18], -864(r30)
000500  1f521000  addli r4, zero, 13
000504  7d100200  xwait r4, 0
000508  1d800900  lock zero, r19
00050c  1bb22200  slli r4, r5, 2
000510  9f020004  addli r5, zero, 512
000514  8ba50511  add.ul r[12:13], r[12:13], r[17:18]
000518  15000000  dma_cfg zero, zero, zero, 0
00051c  15000604  dma_cfg zero, r12, zero, 2
000520  95834506  dma_cfg r7, r11, r4, 3
000524  1f120000  addli r4, zero, 1
000528  95824208  dma_cfg r5, r5, r4, 4
00052c  35000000  dma_run zero
000530  1d900900  unlock r19
000534  1f421000  addli r4, zero, 12
000538  7d000200  xsignal r4, 0
00053c  6b530fcb  load.d r[7:8], -848(r30)
000540  6b528fc8  load.d r[5:6], -888(r30)
000544  27130300  addli.d r[7:8], r[7:8], 1
000548  13324304  setlt.sl r4, r[7:8], r[5:6]
00054c  e3428ff9  loadli.w r5,  -828(r30)
000550  9f920200  addli r5, r5, 1
000554  674c5ff8  storeli.w r5, -828(r30)
000558  e3028ff9  loadli.w r5,  -832(r30)
00055c  9f920200  addli r5, r5, 1
000560  670c5ff8  storeli.w r5, -832(r30)
000564  37720202  beq r4, zero, 1180
000568  3b303101  bneq r2, r19, 12
00056c  1f321000  addli r4, zero, 11
000570  7d100200  xwait r4, 0
000574  63025f00  loadli.w r4,  40(r30)
000578  e3424f00  loadli.w r5,  36(r30)
00057c  73386fca  store.d r[7:8], -848(r30)
000580  0b124330  div.s r4, r6, r4
000584  1f031000  addli r6, zero, 8
000588  0b185230  div.s r16, r4, r5
00058c  9f022000  addli r5, zero, 16
000590  0b1be830  div.s r22, r16, r14
000594  1b323b00  slli r4, r22, 3
000598  8b924218  sub.s r5, r5, r4
00059c  8b9b6240  min.s r23, r5, r6
0005a0  8b127839  mod.s r5, r16, r23
0005a4  0b165210  add.s r12, r4, r5
0005a8  1f721000  addli r4, zero, 15
0005ac  1303c204  setlt.u r6, r4, r12
0005b0  b3080628  zext_int2long r[18:19], r12
0005b4  1f521000  addli r4, zero, 13
0005b8  17b24802  sll.d r[5:6], r[18:19], r4
0005bc  733c1fc9  store.d r[18:19], -872(r30)
0005c0  3b300300  bneq r6, zero, 12
0005c4  33030028  zext_int2long r[7:8], zero
0005c8  db010000  j 12
0005cc  6b530fc8  load.d r[7:8], -896(r30)
0005d0  17036202  and.d r[7:8], r[5:6], r[7:8]
0005d4  1b3b7b00  slli r22, r22, 7
0005d8  73386fcc  store.d r[7:8], -816(r30)
0005dc  e3437ff9  loadli.w r7,  -836(r30)
0005e0  1b367600  slli r12, r12, 7
0005e4  1f630000  addli r6, zero, 6
0005e8  9f050000  addli r11, zero, 0
0005ec  0b186819  sub.s r16, r16, r22
0005f0  6749cff8  storeli.w r12, -876(r30)
0005f4  1f760000  addli r12, zero, 7
0005f8  0b9b3338  mod.s r22, r7, r3
0005fc  9f930300  addli r7, r7, 1
000600  0b187831  div.s r16, r16, r23
000604  e74b7ff8  storeli.w r7, -836(r30)
000608  1b3b0b01  slli r22, r22, 16
00060c  b30b0828  zext_int2long r[24:25], r16
000610  9b337800  slli r7, r16, 7
000614  6b588f00  load.d r[17:18], 8(r30)
000618  97bbcb02  sll.d r[24:25], r[24:25], r12
00061c  e74a7ff8  storeli.w r7, -852(r30)
000620  97bb5b03  sll.d r[24:25], r[24:25], r21
000624  0b287811  add.ul r[17:18], r[17:18], r[24:25]
000628  73307fcb  store.d r[24:25], -864(r30)
00062c  9f1b0000  addli r23, zero, 1
000630  1f0c0000  addli r24, zero, 0
000634  73340fcd  store.d r[17:18], -824(r30)
000638  5b030000  j 24
00063c  9b851b00  andi r11, r23, 1
000640  b7890500  beq r11, zero, 608
000644  1f1c0c00  addli r24, r24, 1
000648  9f150000  addli r11, zero, 1
00064c  9f0b0000  addli r23, zero, 0
000650  0b96c439  mod.s r12, r9, r28
000654  0b18b539  mod.s r16, r10, r27
000658  ab080500  lui r17, 80
00065c  1f150500  addli r10, r10, 1
000660  9f940400  addli r9, r9, 1
000664  1b36e600  slli r12, r12, 14
000668  1b38e800  slli r16, r16, 14
00066c  0b161611  add.s r12, r12, r17
000670  37025101  beq r2, r21, 128
000674  b38c0528  zext_int2long r[26:27], r11
000678  3b756100  bneq r2, r6, 348
00067c  97bc3c02  sll.d r[26:27], r[26:27], r3
000680  6b530fcd  load.d r[7:8], -816(r30)
000684  b38d0728  zext_int2long r[28:29], r15
000688  9f05000f  addli r11, zero, 1920
00068c  979c4c02  or.d r[26:27], r[26:27], r[5:6]
000690  8bb86c18  sub.sl r[18:19], r[26:27], r[7:8]
000694  6b530f00  load.d r[7:8], 0(r30)
000698  97bc5c03  sll.d r[26:27], r[26:27], r21
00069c  8f98b861  div.sl r[18:19], r[18:19], r[28:29]
0006a0  b38d0528  zext_int2long r[28:29], r11
0006a4  9f350000  addli r11, zero, 3
0006a8  8b2c9311  add.ul r[26:27], r[7:8], r[26:27]
0006ac  9f030002  addli r7, zero, 256
0006b0  1f630000  addli r6, zero, 6
0006b4  7d900500  xwait r11, 0
0006b8  1d800900  lock zero, r19
0006bc  15000000  dma_cfg zero, zero, zero, 0
0006c0  15000d04  dma_cfg zero, r26, zero, 2
0006c4  1586ec06  dma_cfg r12, r25, r14, 3
0006c8  8bbdb841  min.sl r[28:29], r[18:19], r[28:29]
0006cc  8bb81d19  sub.sl r[18:19], r[28:29], r[18:19]
0006d0  1f5e3000  addli r28, zero, 29
0006d4  9f0d6000  addli r27, zero, 48
0006d8  9f850801  addli r11, r17, 128
0006dc  1587b308  dma_cfg r14, r7, r11, 4
0006e0  35000000  dma_run zero
0006e4  1d900900  unlock r19
0006e8  7d800a00  xsignal r21, 0
0006ec  db060000  j 52
0006f0  7d900a00  xwait r21, 0
0006f4  7d900100  xwait r3, 0
0006f8  1d000000  lock zero, zero
0006fc  9f350000  addli r11, zero, 3
000700  810a0000  ds_cfg r21, zero, 0
000704  81000002  ds_cfg r1, zero, 1
000708  8100001c  ds_cfg r1, zero, 14
00070c  0107001a  ds_cfg r14, zero, 13
000710  21181602  shuffle_batch r16, r12, r1, 1
000714  1d100000  unlock zero
000718  7d800500  xsignal r11, 0
00071c  7d800900  xsignal r19, 0
000720  8b954639  mod.s r11, r13, r20
000724  9f960600  addli r13, r13, 1
000728  1f140400  addli r8, r8, 1
00072c  9bb5e500  slli r11, r11, 14
000730  3b3c31ff  bneq r2, r19, -244
000734  1f061000  addli r12, zero, 8
000738  7d900900  xwait r19, 0
00073c  9f1c0000  addli r25, zero, 1
000740  1f0d0000  addli r26, zero, 0
000744  7d100600  xwait r12, 0
000748  1f160000  addli r12, zero, 1
00074c  b7700c00  beq r24, zero, 60
000750  9b38dd00  slli r17, r26, 13
000754  1b398d00  slli r18, r26, 8
000758  1d000600  lock zero, r12
00075c  1f1d0000  addli r26, zero, 1
000760  8987e000  mm_cfg r15, r1, r14, 0
000764  9798b800  or r17, r17, r11
000768  17196901  or r18, r18, r22
00076c  898ac904  mm_cfg r21, r19, r12, 2
000770  29191811  mm_acc r18, r16, r17, 8
000774  9b881c00  andi r17, r25, 1
000778  9f0c0000  addli r25, zero, 0
00077c  1d100600  unlock r12
000780  3bcf08fe  bneq r17, zero, -48
000784  5b070000  j 56
000788  9b38dd00  slli r17, r26, 13
00078c  1b398d00  slli r18, r26, 8
000790  1d000600  lock zero, r12
000794  1f1d0000  addli r26, zero, 1
000798  8987e000  mm_cfg r15, r1, r14, 0
00079c  9798b800  or r17, r17, r11
0007a0  17196901  or r18, r18, r22
0007a4  898ac904  mm_cfg r21, r19, r12, 2
0007a8  29091811  mm r18, r16, r17, 8
0007ac  9b881c00  andi r17, r25, 1
0007b0  9f0c0000  addli r25, zero, 0
0007b4  1d100600  unlock r12
0007b8  3bcf08fe  bneq r17, zero, -48
0007bc  9b851b00  andi r11, r23, 1
0007c0  1f161000  addli r12, zero, 9
0007c4  7d800100  xsignal r3, 0
0007c8  7d000600  xsignal r12, 0
0007cc  bbe905fe  bneq r11, zero, -392
0007d0  5b190000  j 200
0007d4  9f433000  addli r7, zero, 28
0007d8  0b964639  mod.s r12, r13, r20
0007dc  9f960600  addli r13, r13, 1
0007e0  8b157438  mod.s r11, r8, r7
0007e4  ab430c00  lui r7, 196
0007e8  1f140400  addli r8, r8, 1
0007ec  9bb8e500  slli r17, r11, 14
0007f0  9b35e600  slli r11, r12, 14
0007f4  0b967810  add.s r12, r17, r7
0007f8  9f780000  addli r17, zero, 7
0007fc  37611101  beq r2, r17, 88
000800  9f130000  addli r7, zero, 1
000804  bb3c71fe  bneq r2, r7, -212
000808  9f232000  addli r7, zero, 18
00080c  9f750000  addli r11, zero, 7
000810  17b87c02  sll.d r[17:18], r[26:27], r7
000814  7d900500  xwait r11, 0
000818  eb5c8fcc  load.d r[26:27], -824(r30)
00081c  1d800900  lock zero, r19
000820  9f030004  addli r7, zero, 512
000824  9f050040  addli r11, zero, 8192
000828  15000000  dma_cfg zero, zero, zero, 0
00082c  0ba80c11  add.ul r[17:18], r[26:27], r[17:18]
000830  15800804  dma_cfg zero, r17, zero, 2
000834  15067806  dma_cfg r12, r16, r7, 3
000838  95831508  dma_cfg r7, r11, r1, 4
00083c  35000000  dma_run zero
000840  1d900900  unlock r19
000844  7d000300  xsignal r6, 0
000848  9b851b00  andi r11, r23, 1
00084c  bbe705fe  bneq r11, zero, -520
000850  db080000  j 68
000854  1f181000  addli r16, zero, 9
000858  7d100300  xwait r6, 0
00085c  7d100800  xwait r16, 0
000860  1d000000  lock zero, zero
000864  810a0000  ds_cfg r21, zero, 0
000868  01070002  ds_cfg r14, zero, 1
00086c  8100001c  ds_cfg r1, zero, 14
000870  0107001a  ds_cfg r14, zero, 13
000874  c1051604  shuffle_coa r11, r12, r1, 2
000878  9f750000  addli r11, zero, 7
00087c  1d100000  unlock zero
000880  7d800500  xsignal r11, 0
000884  9f051000  addli r11, zero, 8
000888  7d800500  xsignal r11, 0
00088c  9b851b00  andi r11, r23, 1
000890  bbd605fe  bneq r11, zero, -588
000894  3b303101  bneq r2, r19, 12
000898  1f221000  addli r4, zero, 10
00089c  7d000200  xsignal r4, 0
0008a0  1f02000f  addli r4, zero, 1920
0008a4  63488ff9  loadli.w r16,  -828(r30)
0008a8  b30b0728  zext_int2long r[24:25], r14
0008ac  9f680000  addli r17, zero, 6
0008b0  b3050228  zext_int2long r[12:13], r4
0008b4  63425ff9  loadli.w r4,  -852(r30)
0008b8  0b183838  mod.s r16, r16, r3
0008bc  33020228  zext_int2long r[5:6], r4
0008c0  0b23b240  min.ul r[7:8], r[5:6], r[12:13]
0008c4  27030301  addli.d r[7:8], r[7:8], 128
0008c8  0b234348  max.ul r[7:8], r[7:8], r[5:6]
0008cc  0b324318  sub.sl r[5:6], r[7:8], r[5:6]
0008d0  9b339800  slli r7, r16, 9
0008d4  2b481300  lui r16, 308
0008d8  8b227241  min.ul r[6:7], r[5:6], r[24:25]
0008dc  8b930311  add.s r7, r7, r16
0008e0  376011ff  beq r2, r17, -1000
0008e4  63028ff9  loadli.w r4,  -832(r30)
0008e8  1b1808a0  ori r16, r16, 2560
0008ec  0b123238  mod.s r4, r4, r3
0008f0  1b320201  slli r4, r4, 16
0008f4  0b120211  add.s r4, r4, r16
0008f8  bb713100  bneq r2, r3, 124
0008fc  1f231000  addli r6, zero, 10
000900  ab05803f  lui r11, 260096
000904  9f020000  addli r5, zero, 0
000908  2b060100  lui r12, 16
00090c  7d100300  xwait r6, 0
000910  1f431000  addli r6, zero, 12
000914  7d100300  xwait r6, 0
000918  1f731000  addli r6, zero, 15
00091c  7d100300  xwait r6, 0
000920  1f130000  addli r6, zero, 1
000924  1d800a00  lock zero, r21
000928  0d030014  ew_cfg r6, zero, zero, 10
00092c  0d000002  ew_cfg zero, zero, zero, 1
000930  8d950500  ewcoeff_cfg r11, r11, zero, 0
000934  9f75f000  addli r11, zero, 127
000938  0d800504  ew_cfg zero, r11, zero, 2
00093c  0d030006  ew_cfg r6, zero, zero, 3
000940  0b135210  add.s r6, r4, r5
000944  8b155b10  add.s r11, r22, r5
000948  9f820204  addli r5, r5, 512
00094c  2d837500  dsmadd r6, r11, r7, 0
000950  bbcfc2fe  bneq r5, r12, -16
000954  1f321000  addli r4, zero, 11
000958  0d000014  ew_cfg zero, zero, zero, 10
00095c  1d900a00  unlock r21
000960  7d000200  xsignal r4, 0
000964  1f521000  addli r4, zero, 13
000968  7d000200  xsignal r4, 0
00096c  1f621000  addli r4, zero, 14
000970  5b79ffff  j -1080
000974  3b2f01fc  bneq r2, zero, -1080
000978  e3432ff9  loadli.w r7,  -876(r30)
00097c  eb5c8fc9  load.d r[26:27], -872(r30)
000980  9bb22200  slli r5, r5, 2
000984  33980328  sext_int2long r[17:18], r7
000988  9f432000  addli r7, zero, 20
00098c  8b35b840  min.sl r[12:13], r[17:18], r[12:13]
000990  97bc7c02  sll.d r[26:27], r[26:27], r7
000994  9f631000  addli r7, zero, 14
000998  a7850501  addli.d r[12:13], r[12:13], 128
00099c  73389fcd  store.d r[26:27], -816(r30)
0009a0  7d900300  xwait r7, 0
0009a4  1d800100  lock zero, r3
0009a8  eb5c8f01  load.d r[26:27], 24(r30)
0009ac  9f130000  addli r7, zero, 1
0009b0  8bb50549  max.sl r[12:13], r[12:13], r[17:18]
0009b4  7334bfcc  store.d r[12:13], -824(r30)
0009b8  eb550fcd  load.d r[12:13], -816(r30)
0009bc  8bacbc10  add.ul r[26:27], r[26:27], r[12:13]
0009c0  eb558fcc  load.d r[12:13], -824(r30)
0009c4  8bb50519  sub.sl r[12:13], r[12:13], r[17:18]
0009c8  6b580fca  load.d r[17:18], -864(r30)
0009cc  15000000  dma_cfg zero, zero, zero, 0
0009d0  15800302  dma_cfg zero, r7, zero, 1
0009d4  8bb57541  min.sl r[12:13], r[12:13], r[24:25]
0009d8  0ba80c11  add.ul r[17:18], r[26:27], r[17:18]
0009dc  95080004  dma_cfg r17, zero, zero, 2
0009e0  15085206  dma_cfg r16, r4, r5, 3
0009e4  1f020004  addli r4, zero, 512
0009e8  9f020040  addli r5, zero, 8192
0009ec  9502b208  dma_cfg r5, r4, r11, 4
0009f0  1f721000  addli r4, zero, 15
0009f4  35000000  dma_run zero
0009f8  1d900100  unlock r3
0009fc  db67ffff  j -1220
000a00  7d000000  xsignal zero, 0
000a04  bb600100  bneq r2, zero, 56
000a08  9f200000  addli r1, zero, 2
000a0c  7d100000  xwait zero, 0
000a10  7d100000  xwait zero, 0
000a14  7d100000  xwait zero, 0
000a18  7d100000  xwait zero, 0
000a1c  7d100000  xwait zero, 0
000a20  7d100000  xwait zero, 0
000a24  7d100000  xwait zero, 0
000a28  7d100000  xwait zero, 0
000a2c  1d800000  lock zero, r1
000a30  0d000020  ew_cfg zero, zero, zero, 16
000a34  1d900000  unlock r1
000a38  7d400000  xsignal_mode_cfg zero
000a3c  9f8e0e07  addli sp, sp, 896
000a40  00a00300  mfence { lm, sm, gm }
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
000c74  00100000  exit
000c78  00100000  exit
000c7c  00100000  exit
000c80  00100000  exit
000c84  00100000  exit
