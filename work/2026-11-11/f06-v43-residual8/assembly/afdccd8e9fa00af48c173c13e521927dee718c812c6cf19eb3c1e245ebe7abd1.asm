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
000028  1b85f100  andi r10, r3, 15
00002c  9b144000  ori r9, zero, 4
000030  3fb04100  blt.s r3, r4, 12
000034  1f45f5ff  addli r10, r10, -4
000038  9b146000  ori r9, zero, 6
00003c  0b059538  mod.u r10, r10, r9
000040  1f7a1100  addli r20, r2, 15
000044  9b454a00  srli r11, r20, 4
000048  1bc64100  srli r12, r3, 4
00004c  8b86b030  div.u r13, r1, r11
000050  1f160600  addli r12, r12, 1
000054  8b00d620  mul.u r1, r12, r13
000058  8b805010  add.u r1, r1, r5
00005c  9f8e0000  addli sp, r1, 0
000060  1bba6700  slli r20, r15, 6
000064  978e4e01  and sp, sp, r20
000068  bb003000  bneq zero, r3, 32
00006c  80520202  load_param_i r5, 4
000070  00d20102  load_param_i r4, 3
000074  ab0900f0  lui r19, 983040
000078  9f498000  addli r19, zero, 68
00007c  00200300  mfence { sm, gm }
000080  ff090200  l_gm2sm r19, zero, 0(r[5:6])
000084  00200300  mfence { sm, gm }
000088  abfa0000  lui r21, 15
00008c  9b9afaff  ori r21, r21, 4095
000090  80a10a04  csr_set csr3, r21
000094  00d00100  sync_group
000098  57160000  jal 176
00009c  00a00100  mfence { lm, sm }
0000a0  00d00100  sync_group
0000a4  fe8007e0  vmmov mr1, r15
0000a8  fe900720  vmmovh mr1, r15
0000ac  d71c0000  jal 228
0000b0  fe8007e0  vmmov mr1, r15
0000b4  fe900720  vmmovh mr1, r15
0000b8  1f8a0eff  addli r20, sp, -128
0000bc  4a100002  vloads_mask16.mz vr0{mr1}, 0(zero)
0000c0  ca108002  vloads_mask16.mz vr1{mr1}, 64(zero)
0000c4  46000a02  vstore.mz vr0{mr1}, 0(r20)
0000c8  46041a02  vstore.mz vr1{mr1}, 64(r20)
0000cc  00a00100  mfence { lm, sm }
0000d0  00d00100  sync_group
0000d4  97a01000  xor r1, r1, r1
0000d8  1f8f0e00  addli r30, sp, 0
0000dc  d71c0000  jal 228
0000e0  00400000  trap
0000e4  9f8e0ecd  addli sp, sp, -6528
0000e8  2b010000  lui r2, 0
0000ec  80300002  core_id r1
0000f0  1f8f0e32  addli r30, sp, 6400
0000f4  abf20000  lui r5, 15
0000f8  00560002  load_param_i r12, 0
0000fc  9bb12000  slli r3, r1, 2
000100  1f010100  addli r2, r2, 0
000104  e3437f00  loadli.w r7,  60(r30)
000108  63027f00  loadli.w r4,  56(r30)
00010c  63038f00  loadli.w r6,  64(r30)
000110  9b92f2ff  ori r5, r5, 4095
000114  0b942110  add.s r8, r3, r2
000118  0b924320  mul.s r4, r7, r4
00011c  9f042410  addli r9, r8, 2064
000120  8b166220  mul.s r13, r4, r6
000124  67069fce  storeli.w r9, -6304(r30)
000128  73e00400  stores.w zero, 0(r9)
00012c  00a00300  mfence { lm, sm, gm }
000130  80a10204  csr_set csr3, r5
000134  00d00100  sync_group
000138  67468fce  storeli.w r8, -6300(r30)
00013c  73600400  stores.w zero, 0(r8)
000140  00a00300  mfence { lm, sm, gm }
000144  80a10204  csr_set csr3, r5
000148  00d00100  sync_group
00014c  4bb3c600  ble.s r13, r12, 204
000150  1f024000  addli r4, zero, 32
000154  9f021000  addli r5, zero, 8
000158  00d70002  load_param_i r14, 1
00015c  0b924030  div.s r4, r1, r4
000160  67434fce  storeli.w r4, -6348(r30)
000164  1b325200  slli r4, r4, 5
000168  0b924018  sub.s r4, r1, r4
00016c  3f205200  blt.s r4, r5, 8
000170  5b140000  j 160
000174  2bf5ffff  lui r10, 1048575
000178  9b378200  slli r15, r4, 8
00017c  9f040010  addli r9, zero, 2048
000180  9f050002  addli r11, zero, 256
000184  eb530f01  load.d r[8:9], 16(r30)
000188  eb528f01  load.d r[6:7], 24(r30)
00018c  6703dfce  storeli.w r13, -6352(r30)
000190  e742efce  storeli.w r14, -6356(r30)
000194  1b1505f8  ori r10, r10, 3968
000198  8b94f418  sub.s r9, r9, r15
00019c  e745ffce  storeli.w r15, -6308(r30)
0001a0  9781a100  and r3, r3, r10
0001a4  8b84b440  min.u r9, r9, r11
0001a8  1b85f001  andi r10, r1, 31
0001ac  9f150000  addli r11, zero, 1
0001b0  9bf00004  setlti r1, r1, 64
0001b4  8b9c2110  add.s r25, r3, r2
0001b8  13010200  seteq r2, r4, zero
0001bc  b3910728  sext_int2long r[4:5], r15
0001c0  9bb41400  slli r9, r9, 1
0001c4  e705afce  storeli.w r10, -6312(r30)
0001c8  97b1b102  sll.d r[4:5], r[4:5], r11
0001cc  1f8b2c10  addli r22, r25, 2064
0001d0  97802000  and r1, r1, r2
0001d4  67451fce  storeli.w r1, -6316(r30)
0001d8  8ba03310  add.ul r[2:3], r[8:9], r[4:5]
0001dc  9f039fce  addli r7, r30, -6328
0001e0  1f040004  addli r8, zero, 512
0001e4  73b01300  store.d r[2:3], 0(r7)
0001e8  8ba03210  add.ul r[2:3], r[6:7], r[4:5]
0001ec  9f018fce  addli r3, r30, -6336
0001f0  1f72f00f  addli r4, zero, 2047
0001f4  9f020001  addli r5, zero, 128
0001f8  73b01100  store.d r[2:3], 0(r3)
0001fc  abf00000  lui r1, 15
000200  1f018ff3  addli r2, r30, -1600
000204  9b93f0ff  ori r7, r1, 4095
000208  e7437fce  storeli.w r7, -6340(r30)
00020c  db060000  j 52
000210  0b16e610  add.s r12, r12, r14
000214  bf7fd6fe  blt.s r12, r13, -4
000218  9f0e0fce  addli sp, r30, -6400
00021c  9f8e0e32  addli sp, sp, 6400
000220  00a00300  mfence { lm, sm, gm }
000224  00100000  exit
000228  63067fce  loadli.w r12,  -6344(r30)
00022c  63475fce  loadli.w r14,  -6356(r30)
000230  e3066fce  loadli.w r13,  -6352(r30)
000234  0b16e610  add.s r12, r12, r14
000238  3f20d600  blt.s r12, r13, 8
00023c  dbfbffff  j -36
000240  e3008f00  loadli.w r1,  64(r30)
000244  e3417f00  loadli.w r3,  60(r30)
000248  e703cfce  storeli.w r12, -6344(r30)
00024c  1f090000  addli r18, zero, 0
000250  8b101630  div.s r1, r12, r1
000254  8b903030  div.s r1, r1, r3
000258  e3416fce  loadli.w r3,  -6348(r30)
00025c  9bb08000  slli r1, r1, 8
000260  8b913010  add.s r3, r1, r3
000264  e7063fce  storeli.w r3, -6296(r30)
000268  00a00000  mfence { lm }
00026c  5b630700  j 15128
000270  1f039fce  addli r6, r30, -6328
000274  ab0000f0  lui r1, 983040
000278  ab0100f0  lui r3, 983040
00027c  6b520300  load.d r[5:6], 0(r6)
000280  97901400  or r1, r9, r1
000284  1f030ff8  addli r6, r30, -1024
000288  97913400  or r3, r9, r3
00028c  ff206200  l_gm2lm r1, r6, 0(r[5:6])
000290  9f008fce  addli r1, r30, -6336
000294  6bd20000  load.d r[5:6], 0(r1)
000298  9f000ffc  addli r1, r30, -512
00029c  ff211200  l_gm2lm r3, r1, 0(r[5:6])
0002a0  9f008ff3  addli r1, r30, -1600
0002a4  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
0002a8  9f000ff4  addli r1, r30, -1536
0002ac  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0002b0  9f000fec  addli r1, r30, -2560
0002b4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0002b8  9f008ff4  addli r1, r30, -1472
0002bc  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0002c0  9f008fec  addli r1, r30, -2496
0002c4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0002c8  9f000ff5  addli r1, r30, -1408
0002cc  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0002d0  9f000fed  addli r1, r30, -2432
0002d4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0002d8  9f008ff5  addli r1, r30, -1344
0002dc  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0002e0  9f008fed  addli r1, r30, -2368
0002e4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0002e8  9f000ff6  addli r1, r30, -1280
0002ec  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0002f0  9f000fee  addli r1, r30, -2304
0002f4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0002f8  9f008ff6  addli r1, r30, -1216
0002fc  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000300  9f008fee  addli r1, r30, -2240
000304  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000308  9f000ff7  addli r1, r30, -1152
00030c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000310  9f000fef  addli r1, r30, -2176
000314  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000318  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00031c  00a00000  mfence { lm }
000320  92300002  vadd.s.mz vr1{mr1}, zero, vr0
000324  eb312fc0  load.hu r3, -1022(r30)
000328  eb300fc0  load.hu r1, -1024(r30)
00032c  e7043fd6  storeli.w r3, -5304(r30)
000330  eb314fc0  load.hu r3, -1020(r30)
000334  339d0020  hfloat2float.rn r26, r1
000338  67053fd6  storeli.w r3, -5296(r30)
00033c  eb316fc0  load.hu r3, -1018(r30)
000340  e7053fd6  storeli.w r3, -5288(r30)
000344  eb318fc0  load.hu r3, -1016(r30)
000348  67063fd6  storeli.w r3, -5280(r30)
00034c  eb31afc0  load.hu r3, -1014(r30)
000350  e7063fd6  storeli.w r3, -5272(r30)
000354  eb31cfc0  load.hu r3, -1012(r30)
000358  67073fd6  storeli.w r3, -5264(r30)
00035c  eb31efc0  load.hu r3, -1010(r30)
000360  e7073fd6  storeli.w r3, -5256(r30)
000364  eb310fc1  load.hu r3, -1008(r30)
000368  00a00000  mfence { lm }
00036c  670ccfea  storeli.w r12, -2624(r30)
000370  eb3dafc5  load.hu r27, -934(r30)
000374  6b3a6fc3  load.hu r20, -970(r30)
000378  eb308fc3  load.hu r1, -968(r30)
00037c  6b3e4fc3  load.hu r28, -972(r30)
000380  6b32cfc3  load.hu r4, -964(r30)
000384  6b33efc3  load.hu r6, -962(r30)
000388  eb320fc4  load.hu r5, -960(r30)
00038c  eb332fc4  load.hu r7, -958(r30)
000390  6b354fc4  load.hu r10, -956(r30)
000394  6b366fc4  load.hu r12, -954(r30)
000398  eb368fc4  load.hu r13, -952(r30)
00039c  6b37afc4  load.hu r14, -950(r30)
0003a0  eb37cfc4  load.hu r15, -948(r30)
0003a4  6b38efc4  load.hu r16, -946(r30)
0003a8  eb380fc5  load.hu r17, -944(r30)
0003ac  eb392fc5  load.hu r19, -942(r30)
0003b0  eb3a4fc5  load.hu r21, -940(r30)
0003b4  eb3b6fc5  load.hu r23, -938(r30)
0003b8  6b3c8fc5  load.hu r24, -936(r30)
0003bc  67083fd6  storeli.w r3, -5248(r30)
0003c0  eb312fc1  load.hu r3, -1006(r30)
0003c4  e746bfcf  storeli.w r27, -6292(r30)
0003c8  eb3dcfc5  load.hu r27, -932(r30)
0003cc  331a0a20  hfloat2float.rn r20, r20
0003d0  b3900020  hfloat2float.rn r1, r1
0003d4  67003fd8  storeli.w r3, -5120(r30)
0003d8  eb314fc1  load.hu r3, -1004(r30)
0003dc  6707bfcf  storeli.w r27, -6288(r30)
0003e0  eb3defc5  load.hu r27, -930(r30)
0003e4  67083fd8  storeli.w r3, -4992(r30)
0003e8  eb316fc1  load.hu r3, -1002(r30)
0003ec  e707bfcf  storeli.w r27, -6280(r30)
0003f0  eb3d0fc6  load.hu r27, -928(r30)
0003f4  67003fda  storeli.w r3, -4864(r30)
0003f8  eb318fc1  load.hu r3, -1000(r30)
0003fc  6747bfcf  storeli.w r27, -6284(r30)
000400  eb3d2fc6  load.hu r27, -926(r30)
000404  67083fda  storeli.w r3, -4736(r30)
000408  eb31afc1  load.hu r3, -998(r30)
00040c  e747bfcf  storeli.w r27, -6276(r30)
000410  eb3d4fc6  load.hu r27, -924(r30)
000414  67003fdc  storeli.w r3, -4608(r30)
000418  eb31cfc1  load.hu r3, -996(r30)
00041c  6708bfcf  storeli.w r27, -6272(r30)
000420  eb3d6fc6  load.hu r27, -922(r30)
000424  67043fdc  storeli.w r3, -4544(r30)
000428  eb31efc1  load.hu r3, -994(r30)
00042c  6748bfcf  storeli.w r27, -6268(r30)
000430  eb3d8fc6  load.hu r27, -920(r30)
000434  67003fea  storeli.w r3, -2816(r30)
000438  eb310fc2  load.hu r3, -992(r30)
00043c  e708bfcf  storeli.w r27, -6264(r30)
000440  eb3dafc6  load.hu r27, -918(r30)
000444  67003fde  storeli.w r3, -4352(r30)
000448  eb312fc2  load.hu r3, -990(r30)
00044c  e748bfcf  storeli.w r27, -6260(r30)
000450  eb3dcfc6  load.hu r27, -916(r30)
000454  670c3fde  storeli.w r3, -4160(r30)
000458  eb314fc2  load.hu r3, -988(r30)
00045c  6709bfcf  storeli.w r27, -6256(r30)
000460  eb3defc6  load.hu r27, -914(r30)
000464  67083fe0  storeli.w r3, -3968(r30)
000468  eb316fc2  load.hu r3, -986(r30)
00046c  6749bfcf  storeli.w r27, -6252(r30)
000470  eb3d0fc7  load.hu r27, -912(r30)
000474  67043fe2  storeli.w r3, -3776(r30)
000478  eb318fc2  load.hu r3, -984(r30)
00047c  e709bfcf  storeli.w r27, -6248(r30)
000480  eb3d2fc7  load.hu r27, -910(r30)
000484  67003fe4  storeli.w r3, -3584(r30)
000488  eb31afc2  load.hu r3, -982(r30)
00048c  e749bfcf  storeli.w r27, -6244(r30)
000490  eb3d4fc7  load.hu r27, -908(r30)
000494  670c3fe4  storeli.w r3, -3392(r30)
000498  eb31cfc2  load.hu r3, -980(r30)
00049c  670abfcf  storeli.w r27, -6240(r30)
0004a0  eb3d6fc7  load.hu r27, -906(r30)
0004a4  67083fe6  storeli.w r3, -3200(r30)
0004a8  eb31efc2  load.hu r3, -978(r30)
0004ac  674abfcf  storeli.w r27, -6236(r30)
0004b0  eb3d8fc7  load.hu r27, -904(r30)
0004b4  67043fe8  storeli.w r3, -3008(r30)
0004b8  eb310fc3  load.hu r3, -976(r30)
0004bc  e70abfcf  storeli.w r27, -6232(r30)
0004c0  eb3dafc7  load.hu r27, -902(r30)
0004c4  67043ff2  storeli.w r3, -1728(r30)
0004c8  eb312fc3  load.hu r3, -974(r30)
0004cc  e74abfcf  storeli.w r27, -6228(r30)
0004d0  eb3dcfc7  load.hu r27, -900(r30)
0004d4  67083ff2  storeli.w r3, -1664(r30)
0004d8  eb31afc3  load.hu r3, -966(r30)
0004dc  670bbfcf  storeli.w r27, -6224(r30)
0004e0  eb3defc7  load.hu r27, -898(r30)
0004e4  e70bbfcf  storeli.w r27, -6216(r30)
0004e8  eb3d0fc8  load.hu r27, -896(r30)
0004ec  674bbfcf  storeli.w r27, -6220(r30)
0004f0  eb3d2fc8  load.hu r27, -894(r30)
0004f4  e74bbfcf  storeli.w r27, -6212(r30)
0004f8  eb3d4fc8  load.hu r27, -892(r30)
0004fc  670cbfcf  storeli.w r27, -6208(r30)
000500  eb3d6fc8  load.hu r27, -890(r30)
000504  674cbfcf  storeli.w r27, -6204(r30)
000508  eb3d8fc8  load.hu r27, -888(r30)
00050c  e70cbfcf  storeli.w r27, -6200(r30)
000510  eb3dafc8  load.hu r27, -886(r30)
000514  e74cbfcf  storeli.w r27, -6196(r30)
000518  eb3dcfc8  load.hu r27, -884(r30)
00051c  670dbfcf  storeli.w r27, -6192(r30)
000520  eb3defc8  load.hu r27, -882(r30)
000524  674dbfcf  storeli.w r27, -6188(r30)
000528  eb3d0fc9  load.hu r27, -880(r30)
00052c  e70dbfcf  storeli.w r27, -6184(r30)
000530  eb3d2fc9  load.hu r27, -878(r30)
000534  e74dbfcf  storeli.w r27, -6180(r30)
000538  eb3d4fc9  load.hu r27, -876(r30)
00053c  670ebfcf  storeli.w r27, -6176(r30)
000540  eb3d6fc9  load.hu r27, -874(r30)
000544  674ebfcf  storeli.w r27, -6172(r30)
000548  eb3d8fc9  load.hu r27, -872(r30)
00054c  e70ebfcf  storeli.w r27, -6168(r30)
000550  eb3dafc9  load.hu r27, -870(r30)
000554  e74ebfcf  storeli.w r27, -6164(r30)
000558  eb3dcfc9  load.hu r27, -868(r30)
00055c  670fbfcf  storeli.w r27, -6160(r30)
000560  eb3defc9  load.hu r27, -866(r30)
000564  e70fbfcf  storeli.w r27, -6152(r30)
000568  eb3d0fca  load.hu r27, -864(r30)
00056c  674fbfcf  storeli.w r27, -6156(r30)
000570  eb3d2fca  load.hu r27, -862(r30)
000574  e74fbfcf  storeli.w r27, -6148(r30)
000578  eb3d4fca  load.hu r27, -860(r30)
00057c  6700bfd1  storeli.w r27, -6144(r30)
000580  eb3d6fca  load.hu r27, -858(r30)
000584  6740bfd1  storeli.w r27, -6140(r30)
000588  eb3d8fca  load.hu r27, -856(r30)
00058c  e700bfd1  storeli.w r27, -6136(r30)
000590  eb3dafca  load.hu r27, -854(r30)
000594  e740bfd1  storeli.w r27, -6132(r30)
000598  eb3dcfca  load.hu r27, -852(r30)
00059c  6701bfd1  storeli.w r27, -6128(r30)
0005a0  eb3defca  load.hu r27, -850(r30)
0005a4  6741bfd1  storeli.w r27, -6124(r30)
0005a8  eb3d0fcb  load.hu r27, -848(r30)
0005ac  e701bfd1  storeli.w r27, -6120(r30)
0005b0  eb3d2fcb  load.hu r27, -846(r30)
0005b4  e741bfd1  storeli.w r27, -6116(r30)
0005b8  eb3d4fcb  load.hu r27, -844(r30)
0005bc  6702bfd1  storeli.w r27, -6112(r30)
0005c0  eb3d6fcb  load.hu r27, -842(r30)
0005c4  6742bfd1  storeli.w r27, -6108(r30)
0005c8  eb3d8fcb  load.hu r27, -840(r30)
0005cc  e702bfd1  storeli.w r27, -6104(r30)
0005d0  eb3dafcb  load.hu r27, -838(r30)
0005d4  e742bfd1  storeli.w r27, -6100(r30)
0005d8  eb3dcfcb  load.hu r27, -836(r30)
0005dc  6703bfd1  storeli.w r27, -6096(r30)
0005e0  eb3defcb  load.hu r27, -834(r30)
0005e4  e703bfd1  storeli.w r27, -6088(r30)
0005e8  eb3d0fcc  load.hu r27, -832(r30)
0005ec  6743bfd1  storeli.w r27, -6092(r30)
0005f0  eb3d2fcc  load.hu r27, -830(r30)
0005f4  e743bfd1  storeli.w r27, -6084(r30)
0005f8  eb3d4fcc  load.hu r27, -828(r30)
0005fc  6704bfd1  storeli.w r27, -6080(r30)
000600  eb3d6fcc  load.hu r27, -826(r30)
000604  6744bfd1  storeli.w r27, -6076(r30)
000608  eb3d8fcc  load.hu r27, -824(r30)
00060c  e704bfd1  storeli.w r27, -6072(r30)
000610  eb3dafcc  load.hu r27, -822(r30)
000614  e744bfd1  storeli.w r27, -6068(r30)
000618  eb3dcfcc  load.hu r27, -820(r30)
00061c  6705bfd1  storeli.w r27, -6064(r30)
000620  eb3defcc  load.hu r27, -818(r30)
000624  6745bfd1  storeli.w r27, -6060(r30)
000628  eb3d0fcd  load.hu r27, -816(r30)
00062c  e705bfd1  storeli.w r27, -6056(r30)
000630  eb3d2fcd  load.hu r27, -814(r30)
000634  e745bfd1  storeli.w r27, -6052(r30)
000638  eb3d4fcd  load.hu r27, -812(r30)
00063c  6706bfd1  storeli.w r27, -6048(r30)
000640  eb3d6fcd  load.hu r27, -810(r30)
000644  6746bfd1  storeli.w r27, -6044(r30)
000648  eb3d8fcd  load.hu r27, -808(r30)
00064c  e706bfd1  storeli.w r27, -6040(r30)
000650  eb3dafcd  load.hu r27, -806(r30)
000654  e746bfd1  storeli.w r27, -6036(r30)
000658  eb3dcfcd  load.hu r27, -804(r30)
00065c  6707bfd1  storeli.w r27, -6032(r30)
000660  eb3defcd  load.hu r27, -802(r30)
000664  e707bfd1  storeli.w r27, -6024(r30)
000668  eb3d0fce  load.hu r27, -800(r30)
00066c  6747bfd1  storeli.w r27, -6028(r30)
000670  eb3d2fce  load.hu r27, -798(r30)
000674  e747bfd1  storeli.w r27, -6020(r30)
000678  eb3d4fce  load.hu r27, -796(r30)
00067c  6708bfd1  storeli.w r27, -6016(r30)
000680  eb3d6fce  load.hu r27, -794(r30)
000684  6748bfd1  storeli.w r27, -6012(r30)
000688  eb3d8fce  load.hu r27, -792(r30)
00068c  e708bfd1  storeli.w r27, -6008(r30)
000690  eb3dafce  load.hu r27, -790(r30)
000694  e748bfd1  storeli.w r27, -6004(r30)
000698  eb3dcfce  load.hu r27, -788(r30)
00069c  6709bfd1  storeli.w r27, -6000(r30)
0006a0  eb3defce  load.hu r27, -786(r30)
0006a4  6749bfd1  storeli.w r27, -5996(r30)
0006a8  eb3d0fcf  load.hu r27, -784(r30)
0006ac  e709bfd1  storeli.w r27, -5992(r30)
0006b0  eb3d2fcf  load.hu r27, -782(r30)
0006b4  e749bfd1  storeli.w r27, -5988(r30)
0006b8  eb3d4fcf  load.hu r27, -780(r30)
0006bc  670abfd1  storeli.w r27, -5984(r30)
0006c0  eb3d6fcf  load.hu r27, -778(r30)
0006c4  674abfd1  storeli.w r27, -5980(r30)
0006c8  eb3d8fcf  load.hu r27, -776(r30)
0006cc  e70abfd1  storeli.w r27, -5976(r30)
0006d0  eb3dafcf  load.hu r27, -774(r30)
0006d4  e74abfd1  storeli.w r27, -5972(r30)
0006d8  eb3dcfcf  load.hu r27, -772(r30)
0006dc  670bbfd1  storeli.w r27, -5968(r30)
0006e0  eb3defcf  load.hu r27, -770(r30)
0006e4  e70bbfd1  storeli.w r27, -5960(r30)
0006e8  eb3d0fd0  load.hu r27, -768(r30)
0006ec  674bbfd1  storeli.w r27, -5964(r30)
0006f0  eb3d2fd0  load.hu r27, -766(r30)
0006f4  e74bbfd1  storeli.w r27, -5956(r30)
0006f8  eb3d4fd0  load.hu r27, -764(r30)
0006fc  670cbfd1  storeli.w r27, -5952(r30)
000700  eb3d6fd0  load.hu r27, -762(r30)
000704  674cbfd1  storeli.w r27, -5948(r30)
000708  eb3d8fd0  load.hu r27, -760(r30)
00070c  e70cbfd1  storeli.w r27, -5944(r30)
000710  eb3dafd0  load.hu r27, -758(r30)
000714  e74cbfd1  storeli.w r27, -5940(r30)
000718  eb3dcfd0  load.hu r27, -756(r30)
00071c  670dbfd1  storeli.w r27, -5936(r30)
000720  eb3defd0  load.hu r27, -754(r30)
000724  674dbfd1  storeli.w r27, -5932(r30)
000728  eb3d0fd1  load.hu r27, -752(r30)
00072c  e70dbfd1  storeli.w r27, -5928(r30)
000730  eb3d2fd1  load.hu r27, -750(r30)
000734  e74dbfd1  storeli.w r27, -5924(r30)
000738  eb3d4fd1  load.hu r27, -748(r30)
00073c  670ebfd1  storeli.w r27, -5920(r30)
000740  eb3d6fd1  load.hu r27, -746(r30)
000744  674ebfd1  storeli.w r27, -5916(r30)
000748  eb3d8fd1  load.hu r27, -744(r30)
00074c  e70ebfd1  storeli.w r27, -5912(r30)
000750  eb3dafd1  load.hu r27, -742(r30)
000754  e74ebfd1  storeli.w r27, -5908(r30)
000758  eb3dcfd1  load.hu r27, -740(r30)
00075c  670fbfd1  storeli.w r27, -5904(r30)
000760  eb3defd1  load.hu r27, -738(r30)
000764  e70fbfd1  storeli.w r27, -5896(r30)
000768  eb3d0fd2  load.hu r27, -736(r30)
00076c  674fbfd1  storeli.w r27, -5900(r30)
000770  eb3d2fd2  load.hu r27, -734(r30)
000774  e74fbfd1  storeli.w r27, -5892(r30)
000778  eb3d4fd2  load.hu r27, -732(r30)
00077c  6700bfd3  storeli.w r27, -5888(r30)
000780  eb3d6fd2  load.hu r27, -730(r30)
000784  6740bfd3  storeli.w r27, -5884(r30)
000788  eb3d8fd2  load.hu r27, -728(r30)
00078c  e700bfd3  storeli.w r27, -5880(r30)
000790  eb3dafd2  load.hu r27, -726(r30)
000794  e740bfd3  storeli.w r27, -5876(r30)
000798  eb3dcfd2  load.hu r27, -724(r30)
00079c  6701bfd3  storeli.w r27, -5872(r30)
0007a0  eb3defd2  load.hu r27, -722(r30)
0007a4  6741bfd3  storeli.w r27, -5868(r30)
0007a8  eb3d0fd3  load.hu r27, -720(r30)
0007ac  e701bfd3  storeli.w r27, -5864(r30)
0007b0  eb3d2fd3  load.hu r27, -718(r30)
0007b4  e741bfd3  storeli.w r27, -5860(r30)
0007b8  eb3d4fd3  load.hu r27, -716(r30)
0007bc  6702bfd3  storeli.w r27, -5856(r30)
0007c0  eb3d6fd3  load.hu r27, -714(r30)
0007c4  6742bfd3  storeli.w r27, -5852(r30)
0007c8  eb3d8fd3  load.hu r27, -712(r30)
0007cc  e702bfd3  storeli.w r27, -5848(r30)
0007d0  eb3dafd3  load.hu r27, -710(r30)
0007d4  e742bfd3  storeli.w r27, -5844(r30)
0007d8  eb3dcfd3  load.hu r27, -708(r30)
0007dc  6703bfd3  storeli.w r27, -5840(r30)
0007e0  eb3defd3  load.hu r27, -706(r30)
0007e4  e703bfd3  storeli.w r27, -5832(r30)
0007e8  eb3d0fd4  load.hu r27, -704(r30)
0007ec  6743bfd3  storeli.w r27, -5836(r30)
0007f0  eb3d2fd4  load.hu r27, -702(r30)
0007f4  e743bfd3  storeli.w r27, -5828(r30)
0007f8  eb3d4fd4  load.hu r27, -700(r30)
0007fc  6704bfd3  storeli.w r27, -5824(r30)
000800  eb3d6fd4  load.hu r27, -698(r30)
000804  6744bfd3  storeli.w r27, -5820(r30)
000808  eb3d8fd4  load.hu r27, -696(r30)
00080c  e704bfd3  storeli.w r27, -5816(r30)
000810  eb3dafd4  load.hu r27, -694(r30)
000814  e744bfd3  storeli.w r27, -5812(r30)
000818  eb3dcfd4  load.hu r27, -692(r30)
00081c  6705bfd3  storeli.w r27, -5808(r30)
000820  eb3defd4  load.hu r27, -690(r30)
000824  6745bfd3  storeli.w r27, -5804(r30)
000828  eb3d0fd5  load.hu r27, -688(r30)
00082c  e705bfd3  storeli.w r27, -5800(r30)
000830  eb3d2fd5  load.hu r27, -686(r30)
000834  e745bfd3  storeli.w r27, -5796(r30)
000838  eb3d4fd5  load.hu r27, -684(r30)
00083c  6706bfd3  storeli.w r27, -5792(r30)
000840  eb3d6fd5  load.hu r27, -682(r30)
000844  6746bfd3  storeli.w r27, -5788(r30)
000848  eb3d8fd5  load.hu r27, -680(r30)
00084c  e706bfd3  storeli.w r27, -5784(r30)
000850  eb3dafd5  load.hu r27, -678(r30)
000854  e746bfd3  storeli.w r27, -5780(r30)
000858  eb3dcfd5  load.hu r27, -676(r30)
00085c  6707bfd3  storeli.w r27, -5776(r30)
000860  eb3defd5  load.hu r27, -674(r30)
000864  e707bfd3  storeli.w r27, -5768(r30)
000868  eb3d0fd6  load.hu r27, -672(r30)
00086c  6747bfd3  storeli.w r27, -5772(r30)
000870  eb3d2fd6  load.hu r27, -670(r30)
000874  e747bfd3  storeli.w r27, -5764(r30)
000878  eb3d4fd6  load.hu r27, -668(r30)
00087c  6708bfd3  storeli.w r27, -5760(r30)
000880  eb3d6fd6  load.hu r27, -666(r30)
000884  6748bfd3  storeli.w r27, -5756(r30)
000888  eb3d8fd6  load.hu r27, -664(r30)
00088c  e708bfd3  storeli.w r27, -5752(r30)
000890  eb3dafd6  load.hu r27, -662(r30)
000894  e748bfd3  storeli.w r27, -5748(r30)
000898  eb3dcfd6  load.hu r27, -660(r30)
00089c  6709bfd3  storeli.w r27, -5744(r30)
0008a0  eb3defd6  load.hu r27, -658(r30)
0008a4  6749bfd3  storeli.w r27, -5740(r30)
0008a8  eb3d0fd7  load.hu r27, -656(r30)
0008ac  e709bfd3  storeli.w r27, -5736(r30)
0008b0  eb3d2fd7  load.hu r27, -654(r30)
0008b4  e749bfd3  storeli.w r27, -5732(r30)
0008b8  eb3d4fd7  load.hu r27, -652(r30)
0008bc  670abfd3  storeli.w r27, -5728(r30)
0008c0  eb3d6fd7  load.hu r27, -650(r30)
0008c4  674abfd3  storeli.w r27, -5724(r30)
0008c8  eb3d8fd7  load.hu r27, -648(r30)
0008cc  e70abfd3  storeli.w r27, -5720(r30)
0008d0  eb3dafd7  load.hu r27, -646(r30)
0008d4  e74abfd3  storeli.w r27, -5716(r30)
0008d8  eb3dcfd7  load.hu r27, -644(r30)
0008dc  670bbfd3  storeli.w r27, -5712(r30)
0008e0  eb3defd7  load.hu r27, -642(r30)
0008e4  e70bbfd3  storeli.w r27, -5704(r30)
0008e8  eb3d0fd8  load.hu r27, -640(r30)
0008ec  674bbfd3  storeli.w r27, -5708(r30)
0008f0  eb3d2fd8  load.hu r27, -638(r30)
0008f4  e74bbfd3  storeli.w r27, -5700(r30)
0008f8  eb3d4fd8  load.hu r27, -636(r30)
0008fc  670cbfd3  storeli.w r27, -5696(r30)
000900  eb3d6fd8  load.hu r27, -634(r30)
000904  674cbfd3  storeli.w r27, -5692(r30)
000908  eb3d8fd8  load.hu r27, -632(r30)
00090c  e70cbfd3  storeli.w r27, -5688(r30)
000910  eb3dafd8  load.hu r27, -630(r30)
000914  e74cbfd3  storeli.w r27, -5684(r30)
000918  eb3dcfd8  load.hu r27, -628(r30)
00091c  670dbfd3  storeli.w r27, -5680(r30)
000920  eb3defd8  load.hu r27, -626(r30)
000924  674dbfd3  storeli.w r27, -5676(r30)
000928  eb3d0fd9  load.hu r27, -624(r30)
00092c  e70dbfd3  storeli.w r27, -5672(r30)
000930  eb3d2fd9  load.hu r27, -622(r30)
000934  e74dbfd3  storeli.w r27, -5668(r30)
000938  eb3d4fd9  load.hu r27, -620(r30)
00093c  670ebfd3  storeli.w r27, -5664(r30)
000940  eb3d6fd9  load.hu r27, -618(r30)
000944  674ebfd3  storeli.w r27, -5660(r30)
000948  eb3d8fd9  load.hu r27, -616(r30)
00094c  e70ebfd3  storeli.w r27, -5656(r30)
000950  eb3dafd9  load.hu r27, -614(r30)
000954  e74ebfd3  storeli.w r27, -5652(r30)
000958  eb3dcfd9  load.hu r27, -612(r30)
00095c  670fbfd3  storeli.w r27, -5648(r30)
000960  eb3defd9  load.hu r27, -610(r30)
000964  e70fbfd3  storeli.w r27, -5640(r30)
000968  eb3d0fda  load.hu r27, -608(r30)
00096c  674fbfd3  storeli.w r27, -5644(r30)
000970  eb3d2fda  load.hu r27, -606(r30)
000974  e74fbfd3  storeli.w r27, -5636(r30)
000978  eb3d4fda  load.hu r27, -604(r30)
00097c  6700bfd5  storeli.w r27, -5632(r30)
000980  eb3d6fda  load.hu r27, -602(r30)
000984  6740bfd5  storeli.w r27, -5628(r30)
000988  eb3d8fda  load.hu r27, -600(r30)
00098c  e700bfd5  storeli.w r27, -5624(r30)
000990  eb3dafda  load.hu r27, -598(r30)
000994  e740bfd5  storeli.w r27, -5620(r30)
000998  eb3dcfda  load.hu r27, -596(r30)
00099c  6701bfd5  storeli.w r27, -5616(r30)
0009a0  eb3defda  load.hu r27, -594(r30)
0009a4  6741bfd5  storeli.w r27, -5612(r30)
0009a8  eb3d0fdb  load.hu r27, -592(r30)
0009ac  e701bfd5  storeli.w r27, -5608(r30)
0009b0  eb3d2fdb  load.hu r27, -590(r30)
0009b4  e741bfd5  storeli.w r27, -5604(r30)
0009b8  eb3d4fdb  load.hu r27, -588(r30)
0009bc  6702bfd5  storeli.w r27, -5600(r30)
0009c0  eb3d6fdb  load.hu r27, -586(r30)
0009c4  6742bfd5  storeli.w r27, -5596(r30)
0009c8  eb3d8fdb  load.hu r27, -584(r30)
0009cc  e702bfd5  storeli.w r27, -5592(r30)
0009d0  eb3dafdb  load.hu r27, -582(r30)
0009d4  e742bfd5  storeli.w r27, -5588(r30)
0009d8  eb3dcfdb  load.hu r27, -580(r30)
0009dc  6703bfd5  storeli.w r27, -5584(r30)
0009e0  eb3defdb  load.hu r27, -578(r30)
0009e4  e703bfd5  storeli.w r27, -5576(r30)
0009e8  eb3d0fdc  load.hu r27, -576(r30)
0009ec  6743bfd5  storeli.w r27, -5580(r30)
0009f0  eb3d2fdc  load.hu r27, -574(r30)
0009f4  e743bfd5  storeli.w r27, -5572(r30)
0009f8  eb3d4fdc  load.hu r27, -572(r30)
0009fc  6704bfd5  storeli.w r27, -5568(r30)
000a00  eb3d6fdc  load.hu r27, -570(r30)
000a04  6744bfd5  storeli.w r27, -5564(r30)
000a08  eb3d8fdc  load.hu r27, -568(r30)
000a0c  e704bfd5  storeli.w r27, -5560(r30)
000a10  eb3dafdc  load.hu r27, -566(r30)
000a14  e744bfd5  storeli.w r27, -5556(r30)
000a18  eb3dcfdc  load.hu r27, -564(r30)
000a1c  6705bfd5  storeli.w r27, -5552(r30)
000a20  eb3defdc  load.hu r27, -562(r30)
000a24  6745bfd5  storeli.w r27, -5548(r30)
000a28  eb3d0fdd  load.hu r27, -560(r30)
000a2c  e705bfd5  storeli.w r27, -5544(r30)
000a30  eb3d2fdd  load.hu r27, -558(r30)
000a34  e745bfd5  storeli.w r27, -5540(r30)
000a38  eb3d4fdd  load.hu r27, -556(r30)
000a3c  6706bfd5  storeli.w r27, -5536(r30)
000a40  eb3d6fdd  load.hu r27, -554(r30)
000a44  6746bfd5  storeli.w r27, -5532(r30)
000a48  eb3d8fdd  load.hu r27, -552(r30)
000a4c  e706bfd5  storeli.w r27, -5528(r30)
000a50  eb3dafdd  load.hu r27, -550(r30)
000a54  e746bfd5  storeli.w r27, -5524(r30)
000a58  eb3dcfdd  load.hu r27, -548(r30)
000a5c  6707bfd5  storeli.w r27, -5520(r30)
000a60  eb3defdd  load.hu r27, -546(r30)
000a64  e707bfd5  storeli.w r27, -5512(r30)
000a68  eb3d0fde  load.hu r27, -544(r30)
000a6c  6747bfd5  storeli.w r27, -5516(r30)
000a70  eb3d2fde  load.hu r27, -542(r30)
000a74  e747bfd5  storeli.w r27, -5508(r30)
000a78  eb3d4fde  load.hu r27, -540(r30)
000a7c  6708bfd5  storeli.w r27, -5504(r30)
000a80  eb3d6fde  load.hu r27, -538(r30)
000a84  6748bfd5  storeli.w r27, -5500(r30)
000a88  eb3d8fde  load.hu r27, -536(r30)
000a8c  e708bfd5  storeli.w r27, -5496(r30)
000a90  eb3dafde  load.hu r27, -534(r30)
000a94  e748bfd5  storeli.w r27, -5492(r30)
000a98  eb3dcfde  load.hu r27, -532(r30)
000a9c  6709bfd5  storeli.w r27, -5488(r30)
000aa0  eb3defde  load.hu r27, -530(r30)
000aa4  6749bfd5  storeli.w r27, -5484(r30)
000aa8  eb3d0fdf  load.hu r27, -528(r30)
000aac  e709bfd5  storeli.w r27, -5480(r30)
000ab0  eb3d2fdf  load.hu r27, -526(r30)
000ab4  e749bfd5  storeli.w r27, -5476(r30)
000ab8  eb3d4fdf  load.hu r27, -524(r30)
000abc  670abfd5  storeli.w r27, -5472(r30)
000ac0  eb3d6fdf  load.hu r27, -522(r30)
000ac4  674abfd5  storeli.w r27, -5468(r30)
000ac8  eb3d8fdf  load.hu r27, -520(r30)
000acc  e70abfd5  storeli.w r27, -5464(r30)
000ad0  eb3dafdf  load.hu r27, -518(r30)
000ad4  670bbfd5  storeli.w r27, -5456(r30)
000ad8  eb3d0fe0  load.hu r27, -512(r30)
000adc  e70bbfd5  storeli.w r27, -5448(r30)
000ae0  eb3defdf  load.hu r27, -514(r30)
000ae4  674bbfd5  storeli.w r27, -5452(r30)
000ae8  eb3dcfdf  load.hu r27, -516(r30)
000aec  e74abfd5  storeli.w r27, -5460(r30)
000af0  eb3d2fe0  load.hu r27, -510(r30)
000af4  e74bbfd5  storeli.w r27, -5444(r30)
000af8  eb3d4fe0  load.hu r27, -508(r30)
000afc  670cbfd5  storeli.w r27, -5440(r30)
000b00  eb3d6fe0  load.hu r27, -506(r30)
000b04  674cbfd5  storeli.w r27, -5436(r30)
000b08  eb3d8fe0  load.hu r27, -504(r30)
000b0c  e70cbfd5  storeli.w r27, -5432(r30)
000b10  eb3dafe0  load.hu r27, -502(r30)
000b14  e74cbfd5  storeli.w r27, -5428(r30)
000b18  eb3dcfe0  load.hu r27, -500(r30)
000b1c  670dbfd5  storeli.w r27, -5424(r30)
000b20  eb3defe0  load.hu r27, -498(r30)
000b24  674dbfd5  storeli.w r27, -5420(r30)
000b28  eb3d0fe1  load.hu r27, -496(r30)
000b2c  e70dbfd5  storeli.w r27, -5416(r30)
000b30  eb3d2fe1  load.hu r27, -494(r30)
000b34  e74dbfd5  storeli.w r27, -5412(r30)
000b38  eb3d4fe1  load.hu r27, -492(r30)
000b3c  670ebfd5  storeli.w r27, -5408(r30)
000b40  eb3d6fe1  load.hu r27, -490(r30)
000b44  674ebfd5  storeli.w r27, -5404(r30)
000b48  eb3d8fe1  load.hu r27, -488(r30)
000b4c  e70ebfd5  storeli.w r27, -5400(r30)
000b50  eb3dafe1  load.hu r27, -486(r30)
000b54  e74ebfd5  storeli.w r27, -5396(r30)
000b58  eb3dcfe1  load.hu r27, -484(r30)
000b5c  670fbfd5  storeli.w r27, -5392(r30)
000b60  eb3defe1  load.hu r27, -482(r30)
000b64  e70fbfd5  storeli.w r27, -5384(r30)
000b68  eb3d0fe2  load.hu r27, -480(r30)
000b6c  674fbfd5  storeli.w r27, -5388(r30)
000b70  eb3d2fe2  load.hu r27, -478(r30)
000b74  e74fbfd5  storeli.w r27, -5380(r30)
000b78  eb3d4fe2  load.hu r27, -476(r30)
000b7c  6700bfd7  storeli.w r27, -5376(r30)
000b80  eb3d6fe2  load.hu r27, -474(r30)
000b84  6740bfd7  storeli.w r27, -5372(r30)
000b88  eb3d8fe2  load.hu r27, -472(r30)
000b8c  e700bfd7  storeli.w r27, -5368(r30)
000b90  eb3dafe2  load.hu r27, -470(r30)
000b94  e740bfd7  storeli.w r27, -5364(r30)
000b98  eb3dcfe2  load.hu r27, -468(r30)
000b9c  6701bfd7  storeli.w r27, -5360(r30)
000ba0  eb3defe2  load.hu r27, -466(r30)
000ba4  6741bfd7  storeli.w r27, -5356(r30)
000ba8  eb3d0fe3  load.hu r27, -464(r30)
000bac  e701bfd7  storeli.w r27, -5352(r30)
000bb0  eb3d2fe3  load.hu r27, -462(r30)
000bb4  e741bfd7  storeli.w r27, -5348(r30)
000bb8  eb3d4fe3  load.hu r27, -460(r30)
000bbc  6702bfd7  storeli.w r27, -5344(r30)
000bc0  eb3d6fe3  load.hu r27, -458(r30)
000bc4  6742bfd7  storeli.w r27, -5340(r30)
000bc8  eb3d8fe3  load.hu r27, -456(r30)
000bcc  e702bfd7  storeli.w r27, -5336(r30)
000bd0  eb3dafe3  load.hu r27, -454(r30)
000bd4  e742bfd7  storeli.w r27, -5332(r30)
000bd8  eb3dcfe3  load.hu r27, -452(r30)
000bdc  6703bfd7  storeli.w r27, -5328(r30)
000be0  eb3defe3  load.hu r27, -450(r30)
000be4  e703bfd7  storeli.w r27, -5320(r30)
000be8  eb3d0fe4  load.hu r27, -448(r30)
000bec  6743bfd7  storeli.w r27, -5324(r30)
000bf0  eb3d2fe4  load.hu r27, -446(r30)
000bf4  e743bfd7  storeli.w r27, -5316(r30)
000bf8  eb3d4fe4  load.hu r27, -444(r30)
000bfc  6704bfd7  storeli.w r27, -5312(r30)
000c00  eb3d6fe4  load.hu r27, -442(r30)
000c04  6744bfd7  storeli.w r27, -5308(r30)
000c08  eb3d8fe4  load.hu r27, -440(r30)
000c0c  e744bfd7  storeli.w r27, -5300(r30)
000c10  eb3dafe4  load.hu r27, -438(r30)
000c14  6745bfd7  storeli.w r27, -5292(r30)
000c18  eb3dcfe4  load.hu r27, -436(r30)
000c1c  e745bfd7  storeli.w r27, -5284(r30)
000c20  eb3defe4  load.hu r27, -434(r30)
000c24  6746bfd7  storeli.w r27, -5276(r30)
000c28  eb3d0fe5  load.hu r27, -432(r30)
000c2c  e746bfd7  storeli.w r27, -5268(r30)
000c30  eb3d2fe5  load.hu r27, -430(r30)
000c34  6747bfd7  storeli.w r27, -5260(r30)
000c38  eb3d4fe5  load.hu r27, -428(r30)
000c3c  e747bfd7  storeli.w r27, -5252(r30)
000c40  eb3d6fe5  load.hu r27, -426(r30)
000c44  e74fbfd7  storeli.w r27, -5124(r30)
000c48  eb3d8fe5  load.hu r27, -424(r30)
000c4c  e747bfd9  storeli.w r27, -4996(r30)
000c50  eb3dafe5  load.hu r27, -422(r30)
000c54  e74fbfd9  storeli.w r27, -4868(r30)
000c58  eb3dcfe5  load.hu r27, -420(r30)
000c5c  e747bfdb  storeli.w r27, -4740(r30)
000c60  eb3defe5  load.hu r27, -418(r30)
000c64  e74fbfdb  storeli.w r27, -4612(r30)
000c68  eb3d0fe6  load.hu r27, -416(r30)
000c6c  e70fbfdb  storeli.w r27, -4616(r30)
000c70  eb3d2fe6  load.hu r27, -414(r30)
000c74  674bbfdd  storeli.w r27, -4428(r30)
000c78  eb3d4fe6  load.hu r27, -412(r30)
000c7c  e70bbfdd  storeli.w r27, -4424(r30)
000c80  eb3d6fe6  load.hu r27, -410(r30)
000c84  e74bbfdd  storeli.w r27, -4420(r30)
000c88  eb3d8fe6  load.hu r27, -408(r30)
000c8c  670cbfdd  storeli.w r27, -4416(r30)
000c90  eb3dafe6  load.hu r27, -406(r30)
000c94  674cbfdd  storeli.w r27, -4412(r30)
000c98  eb3dcfe6  load.hu r27, -404(r30)
000c9c  e70cbfdd  storeli.w r27, -4408(r30)
000ca0  eb3defe6  load.hu r27, -402(r30)
000ca4  e74cbfdd  storeli.w r27, -4404(r30)
000ca8  eb3d0fe7  load.hu r27, -400(r30)
000cac  670dbfdd  storeli.w r27, -4400(r30)
000cb0  eb3d2fe7  load.hu r27, -398(r30)
000cb4  674dbfdd  storeli.w r27, -4396(r30)
000cb8  eb3d4fe7  load.hu r27, -396(r30)
000cbc  e70dbfdd  storeli.w r27, -4392(r30)
000cc0  eb3d6fe7  load.hu r27, -394(r30)
000cc4  e74dbfdd  storeli.w r27, -4388(r30)
000cc8  eb3d8fe7  load.hu r27, -392(r30)
000ccc  670ebfdd  storeli.w r27, -4384(r30)
000cd0  eb3dafe7  load.hu r27, -390(r30)
000cd4  674ebfdd  storeli.w r27, -4380(r30)
000cd8  eb3dcfe7  load.hu r27, -388(r30)
000cdc  e70ebfdd  storeli.w r27, -4376(r30)
000ce0  eb3defe7  load.hu r27, -386(r30)
000ce4  670cbff1  storeli.w r27, -1856(r30)
000ce8  eb3d0fe8  load.hu r27, -384(r30)
000cec  e74ebfdd  storeli.w r27, -4372(r30)
000cf0  eb3d2fe8  load.hu r27, -382(r30)
000cf4  670fbfdd  storeli.w r27, -4368(r30)
000cf8  eb3d4fe8  load.hu r27, -380(r30)
000cfc  674fbfdd  storeli.w r27, -4364(r30)
000d00  eb3d6fe8  load.hu r27, -378(r30)
000d04  e70fbfdd  storeli.w r27, -4360(r30)
000d08  eb3d8fe8  load.hu r27, -376(r30)
000d0c  e74fbfdd  storeli.w r27, -4356(r30)
000d10  eb3dafe8  load.hu r27, -374(r30)
000d14  6747bfdf  storeli.w r27, -4236(r30)
000d18  eb3dcfe8  load.hu r27, -372(r30)
000d1c  e707bfdf  storeli.w r27, -4232(r30)
000d20  eb3defe8  load.hu r27, -370(r30)
000d24  e747bfdf  storeli.w r27, -4228(r30)
000d28  eb3d0fe9  load.hu r27, -368(r30)
000d2c  6708bfdf  storeli.w r27, -4224(r30)
000d30  eb3d2fe9  load.hu r27, -366(r30)
000d34  6748bfdf  storeli.w r27, -4220(r30)
000d38  eb3d4fe9  load.hu r27, -364(r30)
000d3c  e708bfdf  storeli.w r27, -4216(r30)
000d40  eb3d6fe9  load.hu r27, -362(r30)
000d44  e748bfdf  storeli.w r27, -4212(r30)
000d48  eb3d8fe9  load.hu r27, -360(r30)
000d4c  6709bfdf  storeli.w r27, -4208(r30)
000d50  eb3dafe9  load.hu r27, -358(r30)
000d54  6749bfdf  storeli.w r27, -4204(r30)
000d58  eb3dcfe9  load.hu r27, -356(r30)
000d5c  e709bfdf  storeli.w r27, -4200(r30)
000d60  eb3defe9  load.hu r27, -354(r30)
000d64  6700bff3  storeli.w r27, -1792(r30)
000d68  eb3d0fea  load.hu r27, -352(r30)
000d6c  e749bfdf  storeli.w r27, -4196(r30)
000d70  eb3d2fea  load.hu r27, -350(r30)
000d74  670abfdf  storeli.w r27, -4192(r30)
000d78  eb3d4fea  load.hu r27, -348(r30)
000d7c  674abfdf  storeli.w r27, -4188(r30)
000d80  eb3d6fea  load.hu r27, -346(r30)
000d84  e70abfdf  storeli.w r27, -4184(r30)
000d88  eb3d8fea  load.hu r27, -344(r30)
000d8c  e74abfdf  storeli.w r27, -4180(r30)
000d90  eb3dafea  load.hu r27, -342(r30)
000d94  670bbfdf  storeli.w r27, -4176(r30)
000d98  eb3dcfea  load.hu r27, -340(r30)
000d9c  674bbfdf  storeli.w r27, -4172(r30)
000da0  eb3defea  load.hu r27, -338(r30)
000da4  e70bbfdf  storeli.w r27, -4168(r30)
000da8  eb3d0feb  load.hu r27, -336(r30)
000dac  e74bbfdf  storeli.w r27, -4164(r30)
000db0  eb3d2feb  load.hu r27, -334(r30)
000db4  6743bfe1  storeli.w r27, -4044(r30)
000db8  eb3d4feb  load.hu r27, -332(r30)
000dbc  e703bfe1  storeli.w r27, -4040(r30)
000dc0  eb3d6feb  load.hu r27, -330(r30)
000dc4  e743bfe1  storeli.w r27, -4036(r30)
000dc8  eb3d8feb  load.hu r27, -328(r30)
000dcc  6704bfe1  storeli.w r27, -4032(r30)
000dd0  eb3dafeb  load.hu r27, -326(r30)
000dd4  6744bfe1  storeli.w r27, -4028(r30)
000dd8  eb3dcfeb  load.hu r27, -324(r30)
000ddc  e704bfe1  storeli.w r27, -4024(r30)
000de0  eb3defeb  load.hu r27, -322(r30)
000de4  6708bff1  storeli.w r27, -1920(r30)
000de8  eb3d0fec  load.hu r27, -320(r30)
000dec  e744bfe1  storeli.w r27, -4020(r30)
000df0  eb3d2fec  load.hu r27, -318(r30)
000df4  6705bfe1  storeli.w r27, -4016(r30)
000df8  eb3d4fec  load.hu r27, -316(r30)
000dfc  6745bfe1  storeli.w r27, -4012(r30)
000e00  eb3d6fec  load.hu r27, -314(r30)
000e04  e705bfe1  storeli.w r27, -4008(r30)
000e08  eb3d8fec  load.hu r27, -312(r30)
000e0c  e745bfe1  storeli.w r27, -4004(r30)
000e10  eb3dafec  load.hu r27, -310(r30)
000e14  6706bfe1  storeli.w r27, -4000(r30)
000e18  eb3dcfec  load.hu r27, -308(r30)
000e1c  6746bfe1  storeli.w r27, -3996(r30)
000e20  eb3defec  load.hu r27, -306(r30)
000e24  e706bfe1  storeli.w r27, -3992(r30)
000e28  eb3d0fed  load.hu r27, -304(r30)
000e2c  e746bfe1  storeli.w r27, -3988(r30)
000e30  eb3d2fed  load.hu r27, -302(r30)
000e34  6707bfe1  storeli.w r27, -3984(r30)
000e38  eb3d4fed  load.hu r27, -300(r30)
000e3c  6747bfe1  storeli.w r27, -3980(r30)
000e40  eb3d6fed  load.hu r27, -298(r30)
000e44  e707bfe1  storeli.w r27, -3976(r30)
000e48  eb3d8fed  load.hu r27, -296(r30)
000e4c  e747bfe1  storeli.w r27, -3972(r30)
000e50  eb3dafed  load.hu r27, -294(r30)
000e54  e70fbfe1  storeli.w r27, -3848(r30)
000e58  eb3dcfed  load.hu r27, -292(r30)
000e5c  e74fbfe1  storeli.w r27, -3844(r30)
000e60  eb3defed  load.hu r27, -290(r30)
000e64  6704bff1  storeli.w r27, -1984(r30)
000e68  eb3d0fee  load.hu r27, -288(r30)
000e6c  6700bfe3  storeli.w r27, -3840(r30)
000e70  eb3d2fee  load.hu r27, -286(r30)
000e74  6740bfe3  storeli.w r27, -3836(r30)
000e78  eb3d4fee  load.hu r27, -284(r30)
000e7c  e700bfe3  storeli.w r27, -3832(r30)
000e80  eb3d6fee  load.hu r27, -282(r30)
000e84  e740bfe3  storeli.w r27, -3828(r30)
000e88  eb3d8fee  load.hu r27, -280(r30)
000e8c  6701bfe3  storeli.w r27, -3824(r30)
000e90  eb3dafee  load.hu r27, -278(r30)
000e94  6741bfe3  storeli.w r27, -3820(r30)
000e98  eb3dcfee  load.hu r27, -276(r30)
000e9c  e701bfe3  storeli.w r27, -3816(r30)
000ea0  eb3defee  load.hu r27, -274(r30)
000ea4  e741bfe3  storeli.w r27, -3812(r30)
000ea8  eb3d0fef  load.hu r27, -272(r30)
000eac  6702bfe3  storeli.w r27, -3808(r30)
000eb0  eb3d2fef  load.hu r27, -270(r30)
000eb4  6742bfe3  storeli.w r27, -3804(r30)
000eb8  eb3d4fef  load.hu r27, -268(r30)
000ebc  e702bfe3  storeli.w r27, -3800(r30)
000ec0  eb3d6fef  load.hu r27, -266(r30)
000ec4  e742bfe3  storeli.w r27, -3796(r30)
000ec8  eb3d8fef  load.hu r27, -264(r30)
000ecc  6703bfe3  storeli.w r27, -3792(r30)
000ed0  eb3dafef  load.hu r27, -262(r30)
000ed4  6743bfe3  storeli.w r27, -3788(r30)
000ed8  eb3dcfef  load.hu r27, -260(r30)
000edc  e703bfe3  storeli.w r27, -3784(r30)
000ee0  eb3defef  load.hu r27, -258(r30)
000ee4  6700bff1  storeli.w r27, -2048(r30)
000ee8  eb3d0ff0  load.hu r27, -256(r30)
000eec  e743bfe3  storeli.w r27, -3780(r30)
000ef0  eb3d2ff0  load.hu r27, -254(r30)
000ef4  670bbfe3  storeli.w r27, -3664(r30)
000ef8  eb3d4ff0  load.hu r27, -252(r30)
000efc  674bbfe3  storeli.w r27, -3660(r30)
000f00  eb3d6ff0  load.hu r27, -250(r30)
000f04  e70bbfe3  storeli.w r27, -3656(r30)
000f08  eb3d8ff0  load.hu r27, -248(r30)
000f0c  e74bbfe3  storeli.w r27, -3652(r30)
000f10  eb3daff0  load.hu r27, -246(r30)
000f14  670cbfe3  storeli.w r27, -3648(r30)
000f18  eb3dcff0  load.hu r27, -244(r30)
000f1c  674cbfe3  storeli.w r27, -3644(r30)
000f20  eb3deff0  load.hu r27, -242(r30)
000f24  e70cbfe3  storeli.w r27, -3640(r30)
000f28  eb3d0ff1  load.hu r27, -240(r30)
000f2c  e74cbfe3  storeli.w r27, -3636(r30)
000f30  eb3d2ff1  load.hu r27, -238(r30)
000f34  670dbfe3  storeli.w r27, -3632(r30)
000f38  eb3d4ff1  load.hu r27, -236(r30)
000f3c  674dbfe3  storeli.w r27, -3628(r30)
000f40  eb3d6ff1  load.hu r27, -234(r30)
000f44  e70dbfe3  storeli.w r27, -3624(r30)
000f48  eb3d8ff1  load.hu r27, -232(r30)
000f4c  e74dbfe3  storeli.w r27, -3620(r30)
000f50  eb3daff1  load.hu r27, -230(r30)
000f54  670ebfe3  storeli.w r27, -3616(r30)
000f58  eb3dcff1  load.hu r27, -228(r30)
000f5c  674ebfe3  storeli.w r27, -3612(r30)
000f60  eb3deff1  load.hu r27, -226(r30)
000f64  e74ebfe3  storeli.w r27, -3604(r30)
000f68  eb3d0ff2  load.hu r27, -224(r30)
000f6c  e70ebfe3  storeli.w r27, -3608(r30)
000f70  eb3d2ff2  load.hu r27, -222(r30)
000f74  670fbfe3  storeli.w r27, -3600(r30)
000f78  eb3d4ff2  load.hu r27, -220(r30)
000f7c  674fbfe3  storeli.w r27, -3596(r30)
000f80  eb3d6ff2  load.hu r27, -218(r30)
000f84  e70fbfe3  storeli.w r27, -3592(r30)
000f88  eb3d8ff2  load.hu r27, -216(r30)
000f8c  e74fbfe3  storeli.w r27, -3588(r30)
000f90  eb3daff2  load.hu r27, -214(r30)
000f94  6707bfe5  storeli.w r27, -3472(r30)
000f98  eb3dcff2  load.hu r27, -212(r30)
000f9c  6747bfe5  storeli.w r27, -3468(r30)
000fa0  eb3deff2  load.hu r27, -210(r30)
000fa4  e707bfe5  storeli.w r27, -3464(r30)
000fa8  eb3d0ff3  load.hu r27, -208(r30)
000fac  e747bfe5  storeli.w r27, -3460(r30)
000fb0  eb3d2ff3  load.hu r27, -206(r30)
000fb4  6708bfe5  storeli.w r27, -3456(r30)
000fb8  eb3d4ff3  load.hu r27, -204(r30)
000fbc  6748bfe5  storeli.w r27, -3452(r30)
000fc0  eb3d6ff3  load.hu r27, -202(r30)
000fc4  e708bfe5  storeli.w r27, -3448(r30)
000fc8  eb3d8ff3  load.hu r27, -200(r30)
000fcc  e748bfe5  storeli.w r27, -3444(r30)
000fd0  eb3daff3  load.hu r27, -198(r30)
000fd4  6709bfe5  storeli.w r27, -3440(r30)
000fd8  eb3dcff3  load.hu r27, -196(r30)
000fdc  6749bfe5  storeli.w r27, -3436(r30)
000fe0  eb3deff3  load.hu r27, -194(r30)
000fe4  e749bfe5  storeli.w r27, -3428(r30)
000fe8  eb3d0ff4  load.hu r27, -192(r30)
000fec  e709bfe5  storeli.w r27, -3432(r30)
000ff0  eb3d2ff4  load.hu r27, -190(r30)
000ff4  670abfe5  storeli.w r27, -3424(r30)
000ff8  eb3d4ff4  load.hu r27, -188(r30)
000ffc  674abfe5  storeli.w r27, -3420(r30)
001000  eb3d6ff4  load.hu r27, -186(r30)
001004  e70abfe5  storeli.w r27, -3416(r30)
001008  eb3d8ff4  load.hu r27, -184(r30)
00100c  e74abfe5  storeli.w r27, -3412(r30)
001010  eb3daff4  load.hu r27, -182(r30)
001014  670bbfe5  storeli.w r27, -3408(r30)
001018  eb3dcff4  load.hu r27, -180(r30)
00101c  674bbfe5  storeli.w r27, -3404(r30)
001020  eb3deff4  load.hu r27, -178(r30)
001024  e70bbfe5  storeli.w r27, -3400(r30)
001028  eb3d0ff5  load.hu r27, -176(r30)
00102c  e74bbfe5  storeli.w r27, -3396(r30)
001030  eb3d2ff5  load.hu r27, -174(r30)
001034  6703bfe7  storeli.w r27, -3280(r30)
001038  eb3d4ff5  load.hu r27, -172(r30)
00103c  6743bfe7  storeli.w r27, -3276(r30)
001040  eb3d6ff5  load.hu r27, -170(r30)
001044  e703bfe7  storeli.w r27, -3272(r30)
001048  eb3d8ff5  load.hu r27, -168(r30)
00104c  e743bfe7  storeli.w r27, -3268(r30)
001050  eb3daff5  load.hu r27, -166(r30)
001054  6704bfe7  storeli.w r27, -3264(r30)
001058  eb3dcff5  load.hu r27, -164(r30)
00105c  6744bfe7  storeli.w r27, -3260(r30)
001060  eb3deff5  load.hu r27, -162(r30)
001064  e744bfe7  storeli.w r27, -3252(r30)
001068  eb3d0ff6  load.hu r27, -160(r30)
00106c  e704bfe7  storeli.w r27, -3256(r30)
001070  eb3d2ff6  load.hu r27, -158(r30)
001074  6705bfe7  storeli.w r27, -3248(r30)
001078  eb3d4ff6  load.hu r27, -156(r30)
00107c  6745bfe7  storeli.w r27, -3244(r30)
001080  eb3d6ff6  load.hu r27, -154(r30)
001084  e705bfe7  storeli.w r27, -3240(r30)
001088  eb3d8ff6  load.hu r27, -152(r30)
00108c  e745bfe7  storeli.w r27, -3236(r30)
001090  eb3daff6  load.hu r27, -150(r30)
001094  6706bfe7  storeli.w r27, -3232(r30)
001098  eb3dcff6  load.hu r27, -148(r30)
00109c  6746bfe7  storeli.w r27, -3228(r30)
0010a0  eb3deff6  load.hu r27, -146(r30)
0010a4  e706bfe7  storeli.w r27, -3224(r30)
0010a8  eb3d0ff7  load.hu r27, -144(r30)
0010ac  e746bfe7  storeli.w r27, -3220(r30)
0010b0  eb3d2ff7  load.hu r27, -142(r30)
0010b4  6707bfe7  storeli.w r27, -3216(r30)
0010b8  eb3d4ff7  load.hu r27, -140(r30)
0010bc  6747bfe7  storeli.w r27, -3212(r30)
0010c0  eb3d6ff7  load.hu r27, -138(r30)
0010c4  e707bfe7  storeli.w r27, -3208(r30)
0010c8  eb3d8ff7  load.hu r27, -136(r30)
0010cc  e747bfe7  storeli.w r27, -3204(r30)
0010d0  eb3daff7  load.hu r27, -134(r30)
0010d4  670fbfe7  storeli.w r27, -3088(r30)
0010d8  eb3dcff7  load.hu r27, -132(r30)
0010dc  674fbfe7  storeli.w r27, -3084(r30)
0010e0  eb3deff7  load.hu r27, -130(r30)
0010e4  e74fbfe7  storeli.w r27, -3076(r30)
0010e8  eb3d0ff8  load.hu r27, -128(r30)
0010ec  e70fbfe7  storeli.w r27, -3080(r30)
0010f0  eb3d2ff8  load.hu r27, -126(r30)
0010f4  6700bfe9  storeli.w r27, -3072(r30)
0010f8  eb3d4ff8  load.hu r27, -124(r30)
0010fc  6740bfe9  storeli.w r27, -3068(r30)
001100  eb3d6ff8  load.hu r27, -122(r30)
001104  e700bfe9  storeli.w r27, -3064(r30)
001108  eb3d8ff8  load.hu r27, -120(r30)
00110c  e740bfe9  storeli.w r27, -3060(r30)
001110  eb3daff8  load.hu r27, -118(r30)
001114  6701bfe9  storeli.w r27, -3056(r30)
001118  eb3dcff8  load.hu r27, -116(r30)
00111c  6741bfe9  storeli.w r27, -3052(r30)
001120  eb3deff8  load.hu r27, -114(r30)
001124  e701bfe9  storeli.w r27, -3048(r30)
001128  eb3d0ff9  load.hu r27, -112(r30)
00112c  e741bfe9  storeli.w r27, -3044(r30)
001130  eb3d2ff9  load.hu r27, -110(r30)
001134  6702bfe9  storeli.w r27, -3040(r30)
001138  eb3d4ff9  load.hu r27, -108(r30)
00113c  6742bfe9  storeli.w r27, -3036(r30)
001140  eb3d6ff9  load.hu r27, -106(r30)
001144  e702bfe9  storeli.w r27, -3032(r30)
001148  eb3d8ff9  load.hu r27, -104(r30)
00114c  e742bfe9  storeli.w r27, -3028(r30)
001150  eb3daff9  load.hu r27, -102(r30)
001154  6703bfe9  storeli.w r27, -3024(r30)
001158  eb3dcff9  load.hu r27, -100(r30)
00115c  6743bfe9  storeli.w r27, -3020(r30)
001160  eb3deff9  load.hu r27, -98(r30)
001164  e743bfe9  storeli.w r27, -3012(r30)
001168  eb3d0ffa  load.hu r27, -96(r30)
00116c  e703bfe9  storeli.w r27, -3016(r30)
001170  eb3d2ffa  load.hu r27, -94(r30)
001174  670bbfe9  storeli.w r27, -2896(r30)
001178  eb3d4ffa  load.hu r27, -92(r30)
00117c  674bbfe9  storeli.w r27, -2892(r30)
001180  eb3d6ffa  load.hu r27, -90(r30)
001184  e70bbfe9  storeli.w r27, -2888(r30)
001188  eb3d8ffa  load.hu r27, -88(r30)
00118c  e74bbfe9  storeli.w r27, -2884(r30)
001190  eb3daffa  load.hu r27, -86(r30)
001194  670cbfe9  storeli.w r27, -2880(r30)
001198  eb3dcffa  load.hu r27, -84(r30)
00119c  674cbfe9  storeli.w r27, -2876(r30)
0011a0  eb3deffa  load.hu r27, -82(r30)
0011a4  e70cbfe9  storeli.w r27, -2872(r30)
0011a8  eb3d0ffb  load.hu r27, -80(r30)
0011ac  e74cbfe9  storeli.w r27, -2868(r30)
0011b0  eb3d2ffb  load.hu r27, -78(r30)
0011b4  670dbfe9  storeli.w r27, -2864(r30)
0011b8  eb3d4ffb  load.hu r27, -76(r30)
0011bc  674dbfe9  storeli.w r27, -2860(r30)
0011c0  eb3d6ffb  load.hu r27, -74(r30)
0011c4  e70dbfe9  storeli.w r27, -2856(r30)
0011c8  eb3d8ffb  load.hu r27, -72(r30)
0011cc  e74dbfe9  storeli.w r27, -2852(r30)
0011d0  eb3daffb  load.hu r27, -70(r30)
0011d4  670ebfe9  storeli.w r27, -2848(r30)
0011d8  eb3dcffb  load.hu r27, -68(r30)
0011dc  674ebfe9  storeli.w r27, -2844(r30)
0011e0  eb3deffb  load.hu r27, -66(r30)
0011e4  e74ebfe9  storeli.w r27, -2836(r30)
0011e8  eb3d0ffc  load.hu r27, -64(r30)
0011ec  e70ebfe9  storeli.w r27, -2840(r30)
0011f0  eb3d2ffc  load.hu r27, -62(r30)
0011f4  670fbfe9  storeli.w r27, -2832(r30)
0011f8  eb3d4ffc  load.hu r27, -60(r30)
0011fc  674fbfe9  storeli.w r27, -2828(r30)
001200  eb3d6ffc  load.hu r27, -58(r30)
001204  e70fbfe9  storeli.w r27, -2824(r30)
001208  eb3d8ffc  load.hu r27, -56(r30)
00120c  e74fbfe9  storeli.w r27, -2820(r30)
001210  eb3daffc  load.hu r27, -54(r30)
001214  6745bfeb  storeli.w r27, -2732(r30)
001218  eb3dcffc  load.hu r27, -52(r30)
00121c  e705bfeb  storeli.w r27, -2728(r30)
001220  eb3deffc  load.hu r27, -50(r30)
001224  e745bfeb  storeli.w r27, -2724(r30)
001228  eb3d0ffd  load.hu r27, -48(r30)
00122c  6706bfeb  storeli.w r27, -2720(r30)
001230  eb3d2ffd  load.hu r27, -46(r30)
001234  6746bfeb  storeli.w r27, -2716(r30)
001238  eb3d4ffd  load.hu r27, -44(r30)
00123c  e706bfeb  storeli.w r27, -2712(r30)
001240  eb3d6ffd  load.hu r27, -42(r30)
001244  e746bfeb  storeli.w r27, -2708(r30)
001248  eb3d8ffd  load.hu r27, -40(r30)
00124c  6707bfeb  storeli.w r27, -2704(r30)
001250  eb3daffd  load.hu r27, -38(r30)
001254  6747bfeb  storeli.w r27, -2700(r30)
001258  eb3dcffd  load.hu r27, -36(r30)
00125c  e707bfeb  storeli.w r27, -2696(r30)
001260  eb3deffd  load.hu r27, -34(r30)
001264  6708bfeb  storeli.w r27, -2688(r30)
001268  eb3d0ffe  load.hu r27, -32(r30)
00126c  e747bfeb  storeli.w r27, -2692(r30)
001270  eb3d2ffe  load.hu r27, -30(r30)
001274  6748bfeb  storeli.w r27, -2684(r30)
001278  eb3d4ffe  load.hu r27, -28(r30)
00127c  e708bfeb  storeli.w r27, -2680(r30)
001280  eb3d6ffe  load.hu r27, -26(r30)
001284  e748bfeb  storeli.w r27, -2676(r30)
001288  eb3d8ffe  load.hu r27, -24(r30)
00128c  6709bfeb  storeli.w r27, -2672(r30)
001290  eb3daffe  load.hu r27, -22(r30)
001294  6749bfeb  storeli.w r27, -2668(r30)
001298  eb3dcffe  load.hu r27, -20(r30)
00129c  e709bfeb  storeli.w r27, -2664(r30)
0012a0  eb3deffe  load.hu r27, -18(r30)
0012a4  e749bfeb  storeli.w r27, -2660(r30)
0012a8  eb3d0fff  load.hu r27, -16(r30)
0012ac  670abfeb  storeli.w r27, -2656(r30)
0012b0  eb3d2fff  load.hu r27, -14(r30)
0012b4  674abfeb  storeli.w r27, -2652(r30)
0012b8  eb3d4fff  load.hu r27, -12(r30)
0012bc  e70abfeb  storeli.w r27, -2648(r30)
0012c0  eb3d6fff  load.hu r27, -10(r30)
0012c4  e74abfeb  storeli.w r27, -2644(r30)
0012c8  eb3d8fff  load.hu r27, -8(r30)
0012cc  670bbfeb  storeli.w r27, -2640(r30)
0012d0  eb3dafff  load.hu r27, -6(r30)
0012d4  674bbfeb  storeli.w r27, -2636(r30)
0012d8  eb3dcfff  load.hu r27, -4(r30)
0012dc  e70bbfeb  storeli.w r27, -2632(r30)
0012e0  eb3defff  load.hu r27, -2(r30)
0012e4  e74bbfeb  storeli.w r27, -2628(r30)
0012e8  9f1d0000  addli r27, zero, 1
0012ec  7e810de0  vmmov mr2, r27
0012f0  9f2d0000  addli r27, zero, 2
0012f4  ea201d34  vor.u.mh vr1{mr2}, r26, vr1
0012f8  630d9fd6  loadli.w r26,  -5304(r30)
0012fc  fe810de0  vmmov mr3, r27
001300  9f4d0000  addli r27, zero, 4
001304  331d0d20  hfloat2float.rn r26, r26
001308  7e800de0  vmmov mr0, r27
00130c  9f0d1000  addli r27, zero, 8
001310  ea201d36  vor.u.mh vr1{mr3}, r26, vr1
001314  630dafd6  loadli.w r26,  -5296(r30)
001318  331d0d20  hfloat2float.rn r26, r26
00131c  ea201d30  vor.u.mh vr1{mr0}, r26, vr1
001320  630dbfd6  loadli.w r26,  -5288(r30)
001324  7e800de0  vmmov mr0, r27
001328  9f0d2000  addli r27, zero, 16
00132c  331d0d20  hfloat2float.rn r26, r26
001330  ea201d30  vor.u.mh vr1{mr0}, r26, vr1
001334  630dcfd6  loadli.w r26,  -5280(r30)
001338  7e800de0  vmmov mr0, r27
00133c  9f0d4000  addli r27, zero, 32
001340  331d0d20  hfloat2float.rn r26, r26
001344  ea201d30  vor.u.mh vr1{mr0}, r26, vr1
001348  630ddfd6  loadli.w r26,  -5272(r30)
00134c  7e800de0  vmmov mr0, r27
001350  9f0d8000  addli r27, zero, 64
001354  331d0d20  hfloat2float.rn r26, r26
001358  ea201d30  vor.u.mh vr1{mr0}, r26, vr1
00135c  630defd6  loadli.w r26,  -5264(r30)
001360  7e800de0  vmmov mr0, r27
001364  9f0d0001  addli r27, zero, 128
001368  331d0d20  hfloat2float.rn r26, r26
00136c  ea201d30  vor.u.mh vr1{mr0}, r26, vr1
001370  630dffd6  loadli.w r26,  -5256(r30)
001374  7e800de0  vmmov mr0, r27
001378  9f0d0002  addli r27, zero, 256
00137c  331d0d20  hfloat2float.rn r26, r26
001380  ea201d30  vor.u.mh vr1{mr0}, r26, vr1
001384  630d0fd7  loadli.w r26,  -5248(r30)
001388  7e800de0  vmmov mr0, r27
00138c  9f0d0004  addli r27, zero, 512
001390  331d0d20  hfloat2float.rn r26, r26
001394  ea201d30  vor.u.mh vr1{mr0}, r26, vr1
001398  630d0fd8  loadli.w r26,  -5120(r30)
00139c  7e800de0  vmmov mr0, r27
0013a0  9f0d0008  addli r27, zero, 1024
0013a4  fe810de0  vmmov mr3, r27
0013a8  9f0d0010  addli r27, zero, 2048
0013ac  331d0d20  hfloat2float.rn r26, r26
0013b0  7e810de0  vmmov mr2, r27
0013b4  9f0d0020  addli r27, zero, 4096
0013b8  ea201d30  vor.u.mh vr1{mr0}, r26, vr1
0013bc  630d0fd9  loadli.w r26,  -4992(r30)
0013c0  7e800de0  vmmov mr0, r27
0013c4  9f0d0040  addli r27, zero, 8192
0013c8  2b800000  lui zero, 8
0013cc  331d0d20  hfloat2float.rn r26, r26
0013d0  ea201d36  vor.u.mh vr1{mr3}, r26, vr1
0013d4  630d0fda  loadli.w r26,  -4864(r30)
0013d8  331d0d20  hfloat2float.rn r26, r26
0013dc  ea201d34  vor.u.mh vr1{mr2}, r26, vr1
0013e0  630d0fdb  loadli.w r26,  -4736(r30)
0013e4  331d0d20  hfloat2float.rn r26, r26
0013e8  ea201d30  vor.u.mh vr1{mr0}, r26, vr1
0013ec  630d0fdc  loadli.w r26,  -4608(r30)
0013f0  7e800de0  vmmov mr0, r27
0013f4  ab4d0000  lui r27, 4
0013f8  331d0d20  hfloat2float.rn r26, r26
0013fc  ea201d30  vor.u.mh vr1{mr0}, r26, vr1
001400  630d8fdc  loadli.w r26,  -4544(r30)
001404  7e800de0  vmmov mr0, r27
001408  331d0d20  hfloat2float.rn r26, r26
00140c  ea201d30  vor.u.mh vr1{mr0}, r26, vr1
001410  630d0fea  loadli.w r26,  -2816(r30)
001414  7e0000e0  vmmov mr0, zero
001418  e30d0fde  loadli.w r27,  -4352(r30)
00141c  17200000  xor zero, zero, zero
001420  12340002  vadd.s.mz vr8{mr1}, zero, vr0
001424  92330002  vadd.s.mz vr7{mr1}, zero, vr0
001428  12330002  vadd.s.mz vr6{mr1}, zero, vr0
00142c  92320002  vadd.s.mz vr5{mr1}, zero, vr0
001430  92310002  vadd.s.mz vr3{mr1}, zero, vr0
001434  12310002  vadd.s.mz vr2{mr1}, zero, vr0
001438  331d0d20  hfloat2float.rn r26, r26
00143c  b39d0d20  hfloat2float.rn r27, r27
001440  ea201d30  vor.u.mh vr1{mr0}, r26, vr1
001444  1f0d0fea  addli r26, r30, -2816
001448  00a00000  mfence { lm }
00144c  46101d02  vstore_mask16.mz vr1{mr1}, 0(r26)
001450  92300002  vadd.s.mz vr1{mr1}, zero, vr0
001454  1f1d0000  addli r26, zero, 1
001458  7e000de0  vmmov mr0, r26
00145c  eaa01d30  vor.u.mh vr1{mr0}, r27, vr1
001460  630d8fdf  loadli.w r26,  -4160(r30)
001464  9f2d0000  addli r27, zero, 2
001468  7e800de0  vmmov mr0, r27
00146c  9f4d0000  addli r27, zero, 4
001470  331d0d20  hfloat2float.rn r26, r26
001474  ea201d30  vor.u.mh vr1{mr0}, r26, vr1
001478  630d0fe1  loadli.w r26,  -3968(r30)
00147c  7e800de0  vmmov mr0, r27
001480  9f0d1000  addli r27, zero, 8
001484  331d0d20  hfloat2float.rn r26, r26
001488  ea201d30  vor.u.mh vr1{mr0}, r26, vr1
00148c  630d8fe2  loadli.w r26,  -3776(r30)
001490  7e800de0  vmmov mr0, r27
001494  9f0d2000  addli r27, zero, 16
001498  331d0d20  hfloat2float.rn r26, r26
00149c  ea201d30  vor.u.mh vr1{mr0}, r26, vr1
0014a0  630d0fe4  loadli.w r26,  -3584(r30)
0014a4  7e800de0  vmmov mr0, r27
0014a8  9f0d4000  addli r27, zero, 32
0014ac  331d0d20  hfloat2float.rn r26, r26
0014b0  ea201d30  vor.u.mh vr1{mr0}, r26, vr1
0014b4  630d8fe5  loadli.w r26,  -3392(r30)
0014b8  7e800de0  vmmov mr0, r27
0014bc  9f0d8000  addli r27, zero, 64
0014c0  331d0d20  hfloat2float.rn r26, r26
0014c4  ea201d30  vor.u.mh vr1{mr0}, r26, vr1
0014c8  630d0fe7  loadli.w r26,  -3200(r30)
0014cc  7e800de0  vmmov mr0, r27
0014d0  9f0d0001  addli r27, zero, 128
0014d4  331d0d20  hfloat2float.rn r26, r26
0014d8  ea201d30  vor.u.mh vr1{mr0}, r26, vr1
0014dc  630d8fe8  loadli.w r26,  -3008(r30)
0014e0  7e800de0  vmmov mr0, r27
0014e4  9f0d0002  addli r27, zero, 256
0014e8  331d0d20  hfloat2float.rn r26, r26
0014ec  ea201d30  vor.u.mh vr1{mr0}, r26, vr1
0014f0  630d8ff2  loadli.w r26,  -1728(r30)
0014f4  7e800de0  vmmov mr0, r27
0014f8  9f0d0004  addli r27, zero, 512
0014fc  331d0d20  hfloat2float.rn r26, r26
001500  ea201d30  vor.u.mh vr1{mr0}, r26, vr1
001504  630d0ff3  loadli.w r26,  -1664(r30)
001508  7e800de0  vmmov mr0, r27
00150c  331d0d20  hfloat2float.rn r26, r26
001510  ea201d30  vor.u.mh vr1{mr0}, r26, vr1
001514  331d0e20  hfloat2float.rn r26, r28
001518  ea201d36  vor.u.mh vr1{mr3}, r26, vr1
00151c  ea201a34  vor.u.mh vr1{mr2}, r20, vr1
001520  1f0a0020  addli r20, zero, 4096
001524  7e000ae0  vmmov mr0, r20
001528  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00152c  b3900120  hfloat2float.rn r1, r3
001530  9f010040  addli r3, zero, 8192
001534  fe8101e0  vmmov mr3, r3
001538  ab410000  lui r3, 4
00153c  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
001540  b3100220  hfloat2float.rn r1, r4
001544  7e8101e0  vmmov mr2, r3
001548  2b820000  lui r4, 8
00154c  b3910220  hfloat2float.rn r3, r5
001550  7e0002e0  vmmov mr0, r4
001554  2b820000  lui r4, 8
001558  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
00155c  b3100320  hfloat2float.rn r1, r6
001560  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001564  9f008fe8  addli r1, r30, -3008
001568  00a00000  mfence { lm }
00156c  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
001570  92300002  vadd.s.mz vr1{mr1}, zero, vr0
001574  9f100000  addli r1, zero, 1
001578  7e8000e0  vmmov mr0, r1
00157c  b3900320  hfloat2float.rn r1, r7
001580  9f03ffef  addli r7, r30, -2056
001584  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
001588  9f210000  addli r3, zero, 2
00158c  7e8001e0  vmmov mr0, r3
001590  9f410000  addli r3, zero, 4
001594  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001598  b3100520  hfloat2float.rn r1, r10
00159c  7e8001e0  vmmov mr0, r3
0015a0  9f011000  addli r3, zero, 8
0015a4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0015a8  b3100620  hfloat2float.rn r1, r12
0015ac  7e8001e0  vmmov mr0, r3
0015b0  9f012000  addli r3, zero, 16
0015b4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0015b8  b3900620  hfloat2float.rn r1, r13
0015bc  7e8001e0  vmmov mr0, r3
0015c0  9f014000  addli r3, zero, 32
0015c4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0015c8  b3100720  hfloat2float.rn r1, r14
0015cc  7e8001e0  vmmov mr0, r3
0015d0  9f018000  addli r3, zero, 64
0015d4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0015d8  b3900720  hfloat2float.rn r1, r15
0015dc  7e8001e0  vmmov mr0, r3
0015e0  9f010001  addli r3, zero, 128
0015e4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0015e8  b3100820  hfloat2float.rn r1, r16
0015ec  7e8001e0  vmmov mr0, r3
0015f0  9f010002  addli r3, zero, 256
0015f4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0015f8  b3900820  hfloat2float.rn r1, r17
0015fc  7e8001e0  vmmov mr0, r3
001600  9f010004  addli r3, zero, 512
001604  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001608  b3900920  hfloat2float.rn r1, r19
00160c  7e8001e0  vmmov mr0, r3
001610  9f010008  addli r3, zero, 1024
001614  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001618  b3900a20  hfloat2float.rn r1, r21
00161c  7e8001e0  vmmov mr0, r3
001620  9f010010  addli r3, zero, 2048
001624  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001628  b3900b20  hfloat2float.rn r1, r23
00162c  7e8001e0  vmmov mr0, r3
001630  9f010020  addli r3, zero, 4096
001634  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001638  b3100c20  hfloat2float.rn r1, r24
00163c  7e8001e0  vmmov mr0, r3
001640  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001644  e340dfce  loadli.w r1,  -6292(r30)
001648  7e0002e0  vmmov mr0, r4
00164c  2b820000  lui r4, 8
001650  b3900020  hfloat2float.rn r1, r1
001654  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
001658  e300efce  loadli.w r1,  -6288(r30)
00165c  b3900020  hfloat2float.rn r1, r1
001660  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
001664  e300ffce  loadli.w r1,  -6280(r30)
001668  e341efce  loadli.w r3,  -6284(r30)
00166c  b3900020  hfloat2float.rn r1, r1
001670  b3910120  hfloat2float.rn r3, r3
001674  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001678  9f000fe7  addli r1, r30, -3200
00167c  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
001680  92300002  vadd.s.mz vr1{mr1}, zero, vr0
001684  9f100000  addli r1, zero, 1
001688  7e8000e0  vmmov mr0, r1
00168c  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
001690  e340ffce  loadli.w r1,  -6276(r30)
001694  9f210000  addli r3, zero, 2
001698  7e8001e0  vmmov mr0, r3
00169c  9f410000  addli r3, zero, 4
0016a0  b3900020  hfloat2float.rn r1, r1
0016a4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0016a8  e3000fcf  loadli.w r1,  -6272(r30)
0016ac  7e8001e0  vmmov mr0, r3
0016b0  9f011000  addli r3, zero, 8
0016b4  b3900020  hfloat2float.rn r1, r1
0016b8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0016bc  e3400fcf  loadli.w r1,  -6268(r30)
0016c0  7e8001e0  vmmov mr0, r3
0016c4  9f012000  addli r3, zero, 16
0016c8  b3900020  hfloat2float.rn r1, r1
0016cc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0016d0  e3001fcf  loadli.w r1,  -6264(r30)
0016d4  7e8001e0  vmmov mr0, r3
0016d8  9f014000  addli r3, zero, 32
0016dc  b3900020  hfloat2float.rn r1, r1
0016e0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0016e4  e3401fcf  loadli.w r1,  -6260(r30)
0016e8  7e8001e0  vmmov mr0, r3
0016ec  9f018000  addli r3, zero, 64
0016f0  b3900020  hfloat2float.rn r1, r1
0016f4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0016f8  e3002fcf  loadli.w r1,  -6256(r30)
0016fc  7e8001e0  vmmov mr0, r3
001700  9f010001  addli r3, zero, 128
001704  b3900020  hfloat2float.rn r1, r1
001708  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00170c  e3402fcf  loadli.w r1,  -6252(r30)
001710  7e8001e0  vmmov mr0, r3
001714  9f010002  addli r3, zero, 256
001718  b3900020  hfloat2float.rn r1, r1
00171c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001720  e3003fcf  loadli.w r1,  -6248(r30)
001724  7e8001e0  vmmov mr0, r3
001728  9f010004  addli r3, zero, 512
00172c  b3900020  hfloat2float.rn r1, r1
001730  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001734  e3403fcf  loadli.w r1,  -6244(r30)
001738  7e8001e0  vmmov mr0, r3
00173c  9f010008  addli r3, zero, 1024
001740  b3900020  hfloat2float.rn r1, r1
001744  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001748  e3004fcf  loadli.w r1,  -6240(r30)
00174c  7e8001e0  vmmov mr0, r3
001750  9f010010  addli r3, zero, 2048
001754  b3900020  hfloat2float.rn r1, r1
001758  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00175c  e3404fcf  loadli.w r1,  -6236(r30)
001760  7e8001e0  vmmov mr0, r3
001764  9f010020  addli r3, zero, 4096
001768  b3900020  hfloat2float.rn r1, r1
00176c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001770  e3005fcf  loadli.w r1,  -6232(r30)
001774  7e8001e0  vmmov mr0, r3
001778  b3900020  hfloat2float.rn r1, r1
00177c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001780  e3405fcf  loadli.w r1,  -6228(r30)
001784  7e0002e0  vmmov mr0, r4
001788  2b820000  lui r4, 8
00178c  b3900020  hfloat2float.rn r1, r1
001790  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
001794  e3006fcf  loadli.w r1,  -6224(r30)
001798  b3900020  hfloat2float.rn r1, r1
00179c  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0017a0  e3007fcf  loadli.w r1,  -6216(r30)
0017a4  e3416fcf  loadli.w r3,  -6220(r30)
0017a8  b3900020  hfloat2float.rn r1, r1
0017ac  b3910120  hfloat2float.rn r3, r3
0017b0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0017b4  9f008fe5  addli r1, r30, -3392
0017b8  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0017bc  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0017c0  9f100000  addli r1, zero, 1
0017c4  7e8000e0  vmmov mr0, r1
0017c8  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0017cc  e3407fcf  loadli.w r1,  -6212(r30)
0017d0  9f210000  addli r3, zero, 2
0017d4  7e8001e0  vmmov mr0, r3
0017d8  9f410000  addli r3, zero, 4
0017dc  b3900020  hfloat2float.rn r1, r1
0017e0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0017e4  e3008fcf  loadli.w r1,  -6208(r30)
0017e8  7e8001e0  vmmov mr0, r3
0017ec  9f011000  addli r3, zero, 8
0017f0  b3900020  hfloat2float.rn r1, r1
0017f4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0017f8  e3408fcf  loadli.w r1,  -6204(r30)
0017fc  7e8001e0  vmmov mr0, r3
001800  9f012000  addli r3, zero, 16
001804  b3900020  hfloat2float.rn r1, r1
001808  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00180c  e3009fcf  loadli.w r1,  -6200(r30)
001810  7e8001e0  vmmov mr0, r3
001814  9f014000  addli r3, zero, 32
001818  b3900020  hfloat2float.rn r1, r1
00181c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001820  e3409fcf  loadli.w r1,  -6196(r30)
001824  7e8001e0  vmmov mr0, r3
001828  9f018000  addli r3, zero, 64
00182c  b3900020  hfloat2float.rn r1, r1
001830  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001834  e300afcf  loadli.w r1,  -6192(r30)
001838  7e8001e0  vmmov mr0, r3
00183c  9f010001  addli r3, zero, 128
001840  b3900020  hfloat2float.rn r1, r1
001844  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001848  e340afcf  loadli.w r1,  -6188(r30)
00184c  7e8001e0  vmmov mr0, r3
001850  9f010002  addli r3, zero, 256
001854  fe8101e0  vmmov mr3, r3
001858  9f010004  addli r3, zero, 512
00185c  b3900020  hfloat2float.rn r1, r1
001860  7e8101e0  vmmov mr2, r3
001864  9f010008  addli r3, zero, 1024
001868  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00186c  e300bfcf  loadli.w r1,  -6184(r30)
001870  7e8001e0  vmmov mr0, r3
001874  9f010010  addli r3, zero, 2048
001878  b3900020  hfloat2float.rn r1, r1
00187c  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
001880  e340bfcf  loadli.w r1,  -6180(r30)
001884  b3900020  hfloat2float.rn r1, r1
001888  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
00188c  e300cfcf  loadli.w r1,  -6176(r30)
001890  b3900020  hfloat2float.rn r1, r1
001894  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001898  e340cfcf  loadli.w r1,  -6172(r30)
00189c  7e8001e0  vmmov mr0, r3
0018a0  9f010020  addli r3, zero, 4096
0018a4  b3900020  hfloat2float.rn r1, r1
0018a8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0018ac  e300dfcf  loadli.w r1,  -6168(r30)
0018b0  7e8001e0  vmmov mr0, r3
0018b4  9f010040  addli r3, zero, 8192
0018b8  b3900020  hfloat2float.rn r1, r1
0018bc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0018c0  e340dfcf  loadli.w r1,  -6164(r30)
0018c4  7e8001e0  vmmov mr0, r3
0018c8  ab410000  lui r3, 4
0018cc  b3900020  hfloat2float.rn r1, r1
0018d0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0018d4  e300efcf  loadli.w r1,  -6160(r30)
0018d8  7e8001e0  vmmov mr0, r3
0018dc  b3900020  hfloat2float.rn r1, r1
0018e0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0018e4  e300ffcf  loadli.w r1,  -6152(r30)
0018e8  7e0002e0  vmmov mr0, r4
0018ec  e341efcf  loadli.w r3,  -6156(r30)
0018f0  2b820000  lui r4, 8
0018f4  b3900020  hfloat2float.rn r1, r1
0018f8  b3910120  hfloat2float.rn r3, r3
0018fc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001900  9f000fe4  addli r1, r30, -3584
001904  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
001908  92300002  vadd.s.mz vr1{mr1}, zero, vr0
00190c  9f100000  addli r1, zero, 1
001910  7e8000e0  vmmov mr0, r1
001914  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
001918  e340ffcf  loadli.w r1,  -6148(r30)
00191c  9f210000  addli r3, zero, 2
001920  7e8001e0  vmmov mr0, r3
001924  9f410000  addli r3, zero, 4
001928  b3900020  hfloat2float.rn r1, r1
00192c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001930  e3000fd0  loadli.w r1,  -6144(r30)
001934  7e8001e0  vmmov mr0, r3
001938  9f011000  addli r3, zero, 8
00193c  b3900020  hfloat2float.rn r1, r1
001940  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001944  e3400fd0  loadli.w r1,  -6140(r30)
001948  7e8001e0  vmmov mr0, r3
00194c  9f012000  addli r3, zero, 16
001950  b3900020  hfloat2float.rn r1, r1
001954  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001958  e3001fd0  loadli.w r1,  -6136(r30)
00195c  7e8001e0  vmmov mr0, r3
001960  9f014000  addli r3, zero, 32
001964  b3900020  hfloat2float.rn r1, r1
001968  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00196c  e3401fd0  loadli.w r1,  -6132(r30)
001970  7e8001e0  vmmov mr0, r3
001974  9f018000  addli r3, zero, 64
001978  b3900020  hfloat2float.rn r1, r1
00197c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001980  e3002fd0  loadli.w r1,  -6128(r30)
001984  7e8001e0  vmmov mr0, r3
001988  9f010001  addli r3, zero, 128
00198c  b3900020  hfloat2float.rn r1, r1
001990  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001994  e3402fd0  loadli.w r1,  -6124(r30)
001998  7e8001e0  vmmov mr0, r3
00199c  9f010008  addli r3, zero, 1024
0019a0  b3900020  hfloat2float.rn r1, r1
0019a4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0019a8  e3003fd0  loadli.w r1,  -6120(r30)
0019ac  7e8001e0  vmmov mr0, r3
0019b0  9f010010  addli r3, zero, 2048
0019b4  b3900020  hfloat2float.rn r1, r1
0019b8  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
0019bc  e3403fd0  loadli.w r1,  -6116(r30)
0019c0  b3900020  hfloat2float.rn r1, r1
0019c4  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0019c8  e3004fd0  loadli.w r1,  -6112(r30)
0019cc  b3900020  hfloat2float.rn r1, r1
0019d0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0019d4  e3404fd0  loadli.w r1,  -6108(r30)
0019d8  7e8001e0  vmmov mr0, r3
0019dc  9f010020  addli r3, zero, 4096
0019e0  b3900020  hfloat2float.rn r1, r1
0019e4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0019e8  e3005fd0  loadli.w r1,  -6104(r30)
0019ec  7e8001e0  vmmov mr0, r3
0019f0  9f010040  addli r3, zero, 8192
0019f4  fe8101e0  vmmov mr3, r3
0019f8  ab410000  lui r3, 4
0019fc  b3900020  hfloat2float.rn r1, r1
001a00  7e8101e0  vmmov mr2, r3
001a04  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001a08  e3405fd0  loadli.w r1,  -6100(r30)
001a0c  7e0002e0  vmmov mr0, r4
001a10  2b820000  lui r4, 8
001a14  b3900020  hfloat2float.rn r1, r1
001a18  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
001a1c  e3006fd0  loadli.w r1,  -6096(r30)
001a20  b3900020  hfloat2float.rn r1, r1
001a24  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
001a28  e3007fd0  loadli.w r1,  -6088(r30)
001a2c  e3416fd0  loadli.w r3,  -6092(r30)
001a30  b3900020  hfloat2float.rn r1, r1
001a34  b3910120  hfloat2float.rn r3, r3
001a38  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001a3c  9f008fe2  addli r1, r30, -3776
001a40  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
001a44  92300002  vadd.s.mz vr1{mr1}, zero, vr0
001a48  9f100000  addli r1, zero, 1
001a4c  7e8000e0  vmmov mr0, r1
001a50  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
001a54  e3407fd0  loadli.w r1,  -6084(r30)
001a58  9f210000  addli r3, zero, 2
001a5c  7e8001e0  vmmov mr0, r3
001a60  9f410000  addli r3, zero, 4
001a64  b3900020  hfloat2float.rn r1, r1
001a68  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001a6c  e3008fd0  loadli.w r1,  -6080(r30)
001a70  7e8001e0  vmmov mr0, r3
001a74  9f011000  addli r3, zero, 8
001a78  b3900020  hfloat2float.rn r1, r1
001a7c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001a80  e3408fd0  loadli.w r1,  -6076(r30)
001a84  7e8001e0  vmmov mr0, r3
001a88  9f012000  addli r3, zero, 16
001a8c  b3900020  hfloat2float.rn r1, r1
001a90  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001a94  e3009fd0  loadli.w r1,  -6072(r30)
001a98  7e8001e0  vmmov mr0, r3
001a9c  9f014000  addli r3, zero, 32
001aa0  b3900020  hfloat2float.rn r1, r1
001aa4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001aa8  e3409fd0  loadli.w r1,  -6068(r30)
001aac  7e8001e0  vmmov mr0, r3
001ab0  9f018000  addli r3, zero, 64
001ab4  b3900020  hfloat2float.rn r1, r1
001ab8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001abc  e300afd0  loadli.w r1,  -6064(r30)
001ac0  7e8001e0  vmmov mr0, r3
001ac4  9f010001  addli r3, zero, 128
001ac8  b3900020  hfloat2float.rn r1, r1
001acc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001ad0  e340afd0  loadli.w r1,  -6060(r30)
001ad4  7e8001e0  vmmov mr0, r3
001ad8  9f010002  addli r3, zero, 256
001adc  b3900020  hfloat2float.rn r1, r1
001ae0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001ae4  e300bfd0  loadli.w r1,  -6056(r30)
001ae8  7e8001e0  vmmov mr0, r3
001aec  9f010004  addli r3, zero, 512
001af0  b3900020  hfloat2float.rn r1, r1
001af4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001af8  e340bfd0  loadli.w r1,  -6052(r30)
001afc  7e8001e0  vmmov mr0, r3
001b00  9f010008  addli r3, zero, 1024
001b04  b3900020  hfloat2float.rn r1, r1
001b08  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001b0c  e300cfd0  loadli.w r1,  -6048(r30)
001b10  7e8001e0  vmmov mr0, r3
001b14  9f010010  addli r3, zero, 2048
001b18  b3900020  hfloat2float.rn r1, r1
001b1c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001b20  e340cfd0  loadli.w r1,  -6044(r30)
001b24  7e8001e0  vmmov mr0, r3
001b28  9f010020  addli r3, zero, 4096
001b2c  b3900020  hfloat2float.rn r1, r1
001b30  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001b34  e300dfd0  loadli.w r1,  -6040(r30)
001b38  7e8001e0  vmmov mr0, r3
001b3c  b3900020  hfloat2float.rn r1, r1
001b40  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001b44  e340dfd0  loadli.w r1,  -6036(r30)
001b48  7e0002e0  vmmov mr0, r4
001b4c  2b820000  lui r4, 8
001b50  b3900020  hfloat2float.rn r1, r1
001b54  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
001b58  e300efd0  loadli.w r1,  -6032(r30)
001b5c  b3900020  hfloat2float.rn r1, r1
001b60  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
001b64  e300ffd0  loadli.w r1,  -6024(r30)
001b68  e341efd0  loadli.w r3,  -6028(r30)
001b6c  b3900020  hfloat2float.rn r1, r1
001b70  b3910120  hfloat2float.rn r3, r3
001b74  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001b78  9f000fe1  addli r1, r30, -3968
001b7c  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
001b80  92300002  vadd.s.mz vr1{mr1}, zero, vr0
001b84  9f100000  addli r1, zero, 1
001b88  7e8000e0  vmmov mr0, r1
001b8c  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
001b90  e340ffd0  loadli.w r1,  -6020(r30)
001b94  9f210000  addli r3, zero, 2
001b98  7e8001e0  vmmov mr0, r3
001b9c  9f410000  addli r3, zero, 4
001ba0  b3900020  hfloat2float.rn r1, r1
001ba4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001ba8  e3000fd1  loadli.w r1,  -6016(r30)
001bac  7e8001e0  vmmov mr0, r3
001bb0  9f011000  addli r3, zero, 8
001bb4  b3900020  hfloat2float.rn r1, r1
001bb8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001bbc  e3400fd1  loadli.w r1,  -6012(r30)
001bc0  7e8001e0  vmmov mr0, r3
001bc4  9f012000  addli r3, zero, 16
001bc8  b3900020  hfloat2float.rn r1, r1
001bcc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001bd0  e3001fd1  loadli.w r1,  -6008(r30)
001bd4  7e8001e0  vmmov mr0, r3
001bd8  9f014000  addli r3, zero, 32
001bdc  b3900020  hfloat2float.rn r1, r1
001be0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001be4  e3401fd1  loadli.w r1,  -6004(r30)
001be8  7e8001e0  vmmov mr0, r3
001bec  9f018000  addli r3, zero, 64
001bf0  b3900020  hfloat2float.rn r1, r1
001bf4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001bf8  e3002fd1  loadli.w r1,  -6000(r30)
001bfc  7e8001e0  vmmov mr0, r3
001c00  9f010001  addli r3, zero, 128
001c04  b3900020  hfloat2float.rn r1, r1
001c08  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001c0c  e3402fd1  loadli.w r1,  -5996(r30)
001c10  7e8001e0  vmmov mr0, r3
001c14  9f010002  addli r3, zero, 256
001c18  b3900020  hfloat2float.rn r1, r1
001c1c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001c20  e3003fd1  loadli.w r1,  -5992(r30)
001c24  7e8001e0  vmmov mr0, r3
001c28  9f010004  addli r3, zero, 512
001c2c  b3900020  hfloat2float.rn r1, r1
001c30  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001c34  e3403fd1  loadli.w r1,  -5988(r30)
001c38  7e8001e0  vmmov mr0, r3
001c3c  9f010008  addli r3, zero, 1024
001c40  b3900020  hfloat2float.rn r1, r1
001c44  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001c48  e3004fd1  loadli.w r1,  -5984(r30)
001c4c  7e8001e0  vmmov mr0, r3
001c50  9f010010  addli r3, zero, 2048
001c54  b3900020  hfloat2float.rn r1, r1
001c58  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001c5c  e3404fd1  loadli.w r1,  -5980(r30)
001c60  7e8001e0  vmmov mr0, r3
001c64  9f010020  addli r3, zero, 4096
001c68  b3900020  hfloat2float.rn r1, r1
001c6c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001c70  e3005fd1  loadli.w r1,  -5976(r30)
001c74  7e8001e0  vmmov mr0, r3
001c78  b3900020  hfloat2float.rn r1, r1
001c7c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001c80  e3405fd1  loadli.w r1,  -5972(r30)
001c84  b3900020  hfloat2float.rn r1, r1
001c88  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
001c8c  e3006fd1  loadli.w r1,  -5968(r30)
001c90  b3900020  hfloat2float.rn r1, r1
001c94  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
001c98  e3007fd1  loadli.w r1,  -5960(r30)
001c9c  7e0102e0  vmmov mr2, r4
001ca0  e3416fd1  loadli.w r3,  -5964(r30)
001ca4  2b820000  lui r4, 8
001ca8  b3900020  hfloat2float.rn r1, r1
001cac  b3910120  hfloat2float.rn r3, r3
001cb0  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
001cb4  9f008fdf  addli r1, r30, -4160
001cb8  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
001cbc  92300002  vadd.s.mz vr1{mr1}, zero, vr0
001cc0  9f100000  addli r1, zero, 1
001cc4  7e8000e0  vmmov mr0, r1
001cc8  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
001ccc  e3407fd1  loadli.w r1,  -5956(r30)
001cd0  9f210000  addli r3, zero, 2
001cd4  7e8001e0  vmmov mr0, r3
001cd8  9f410000  addli r3, zero, 4
001cdc  b3900020  hfloat2float.rn r1, r1
001ce0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001ce4  e3008fd1  loadli.w r1,  -5952(r30)
001ce8  7e8001e0  vmmov mr0, r3
001cec  9f011000  addli r3, zero, 8
001cf0  b3900020  hfloat2float.rn r1, r1
001cf4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001cf8  e3408fd1  loadli.w r1,  -5948(r30)
001cfc  7e8001e0  vmmov mr0, r3
001d00  9f012000  addli r3, zero, 16
001d04  b3900020  hfloat2float.rn r1, r1
001d08  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001d0c  e3009fd1  loadli.w r1,  -5944(r30)
001d10  7e8001e0  vmmov mr0, r3
001d14  9f014000  addli r3, zero, 32
001d18  b3900020  hfloat2float.rn r1, r1
001d1c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001d20  e3409fd1  loadli.w r1,  -5940(r30)
001d24  7e8001e0  vmmov mr0, r3
001d28  9f018000  addli r3, zero, 64
001d2c  b3900020  hfloat2float.rn r1, r1
001d30  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001d34  e300afd1  loadli.w r1,  -5936(r30)
001d38  7e8001e0  vmmov mr0, r3
001d3c  9f010001  addli r3, zero, 128
001d40  b3900020  hfloat2float.rn r1, r1
001d44  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001d48  e340afd1  loadli.w r1,  -5932(r30)
001d4c  7e8001e0  vmmov mr0, r3
001d50  9f010002  addli r3, zero, 256
001d54  b3900020  hfloat2float.rn r1, r1
001d58  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001d5c  e300bfd1  loadli.w r1,  -5928(r30)
001d60  7e8001e0  vmmov mr0, r3
001d64  9f010004  addli r3, zero, 512
001d68  b3900020  hfloat2float.rn r1, r1
001d6c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001d70  e340bfd1  loadli.w r1,  -5924(r30)
001d74  7e8001e0  vmmov mr0, r3
001d78  9f010008  addli r3, zero, 1024
001d7c  b3900020  hfloat2float.rn r1, r1
001d80  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001d84  e300cfd1  loadli.w r1,  -5920(r30)
001d88  7e8001e0  vmmov mr0, r3
001d8c  9f010010  addli r3, zero, 2048
001d90  b3900020  hfloat2float.rn r1, r1
001d94  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001d98  e340cfd1  loadli.w r1,  -5916(r30)
001d9c  7e8001e0  vmmov mr0, r3
001da0  9f010020  addli r3, zero, 4096
001da4  b3900020  hfloat2float.rn r1, r1
001da8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001dac  e300dfd1  loadli.w r1,  -5912(r30)
001db0  7e8001e0  vmmov mr0, r3
001db4  ab410000  lui r3, 4
001db8  b3900020  hfloat2float.rn r1, r1
001dbc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001dc0  e340dfd1  loadli.w r1,  -5908(r30)
001dc4  7e8001e0  vmmov mr0, r3
001dc8  b3900020  hfloat2float.rn r1, r1
001dcc  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
001dd0  e300efd1  loadli.w r1,  -5904(r30)
001dd4  b3900020  hfloat2float.rn r1, r1
001dd8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001ddc  e300ffd1  loadli.w r1,  -5896(r30)
001de0  e341efd1  loadli.w r3,  -5900(r30)
001de4  b3900020  hfloat2float.rn r1, r1
001de8  b3910120  hfloat2float.rn r3, r3
001dec  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
001df0  9f000fde  addli r1, r30, -4352
001df4  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
001df8  92300002  vadd.s.mz vr1{mr1}, zero, vr0
001dfc  9f100000  addli r1, zero, 1
001e00  7e8000e0  vmmov mr0, r1
001e04  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
001e08  e340ffd1  loadli.w r1,  -5892(r30)
001e0c  9f210000  addli r3, zero, 2
001e10  7e8001e0  vmmov mr0, r3
001e14  9f410000  addli r3, zero, 4
001e18  b3900020  hfloat2float.rn r1, r1
001e1c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001e20  e3000fd2  loadli.w r1,  -5888(r30)
001e24  7e8001e0  vmmov mr0, r3
001e28  9f011000  addli r3, zero, 8
001e2c  b3900020  hfloat2float.rn r1, r1
001e30  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001e34  e3400fd2  loadli.w r1,  -5884(r30)
001e38  7e8001e0  vmmov mr0, r3
001e3c  9f012000  addli r3, zero, 16
001e40  b3900020  hfloat2float.rn r1, r1
001e44  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001e48  e3001fd2  loadli.w r1,  -5880(r30)
001e4c  7e8001e0  vmmov mr0, r3
001e50  9f014000  addli r3, zero, 32
001e54  b3900020  hfloat2float.rn r1, r1
001e58  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001e5c  e3401fd2  loadli.w r1,  -5876(r30)
001e60  7e8001e0  vmmov mr0, r3
001e64  9f018000  addli r3, zero, 64
001e68  b3900020  hfloat2float.rn r1, r1
001e6c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001e70  e3002fd2  loadli.w r1,  -5872(r30)
001e74  7e8001e0  vmmov mr0, r3
001e78  9f010001  addli r3, zero, 128
001e7c  b3900020  hfloat2float.rn r1, r1
001e80  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001e84  e3402fd2  loadli.w r1,  -5868(r30)
001e88  7e8001e0  vmmov mr0, r3
001e8c  9f010002  addli r3, zero, 256
001e90  b3900020  hfloat2float.rn r1, r1
001e94  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001e98  e3003fd2  loadli.w r1,  -5864(r30)
001e9c  7e8001e0  vmmov mr0, r3
001ea0  9f010004  addli r3, zero, 512
001ea4  b3900020  hfloat2float.rn r1, r1
001ea8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001eac  e3403fd2  loadli.w r1,  -5860(r30)
001eb0  7e8001e0  vmmov mr0, r3
001eb4  9f010008  addli r3, zero, 1024
001eb8  b3900020  hfloat2float.rn r1, r1
001ebc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001ec0  e3004fd2  loadli.w r1,  -5856(r30)
001ec4  7e8001e0  vmmov mr0, r3
001ec8  9f010010  addli r3, zero, 2048
001ecc  b3900020  hfloat2float.rn r1, r1
001ed0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001ed4  e3404fd2  loadli.w r1,  -5852(r30)
001ed8  7e8001e0  vmmov mr0, r3
001edc  9f010020  addli r3, zero, 4096
001ee0  b3900020  hfloat2float.rn r1, r1
001ee4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001ee8  e3005fd2  loadli.w r1,  -5848(r30)
001eec  7e8001e0  vmmov mr0, r3
001ef0  ab410000  lui r3, 4
001ef4  7e8101e0  vmmov mr2, r3
001ef8  b3900020  hfloat2float.rn r1, r1
001efc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001f00  e3405fd2  loadli.w r1,  -5844(r30)
001f04  7e0002e0  vmmov mr0, r4
001f08  2b820000  lui r4, 8
001f0c  b3900020  hfloat2float.rn r1, r1
001f10  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
001f14  e3006fd2  loadli.w r1,  -5840(r30)
001f18  b3900020  hfloat2float.rn r1, r1
001f1c  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
001f20  e3007fd2  loadli.w r1,  -5832(r30)
001f24  e3416fd2  loadli.w r3,  -5836(r30)
001f28  b3900020  hfloat2float.rn r1, r1
001f2c  b3910120  hfloat2float.rn r3, r3
001f30  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001f34  9f008fdc  addli r1, r30, -4544
001f38  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
001f3c  92300002  vadd.s.mz vr1{mr1}, zero, vr0
001f40  9f100000  addli r1, zero, 1
001f44  7e8000e0  vmmov mr0, r1
001f48  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
001f4c  e3407fd2  loadli.w r1,  -5828(r30)
001f50  9f210000  addli r3, zero, 2
001f54  7e8001e0  vmmov mr0, r3
001f58  9f410000  addli r3, zero, 4
001f5c  b3900020  hfloat2float.rn r1, r1
001f60  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001f64  e3008fd2  loadli.w r1,  -5824(r30)
001f68  7e8001e0  vmmov mr0, r3
001f6c  9f011000  addli r3, zero, 8
001f70  b3900020  hfloat2float.rn r1, r1
001f74  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001f78  e3408fd2  loadli.w r1,  -5820(r30)
001f7c  7e8001e0  vmmov mr0, r3
001f80  9f012000  addli r3, zero, 16
001f84  b3900020  hfloat2float.rn r1, r1
001f88  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001f8c  e3009fd2  loadli.w r1,  -5816(r30)
001f90  7e8001e0  vmmov mr0, r3
001f94  9f014000  addli r3, zero, 32
001f98  b3900020  hfloat2float.rn r1, r1
001f9c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001fa0  e3409fd2  loadli.w r1,  -5812(r30)
001fa4  7e8001e0  vmmov mr0, r3
001fa8  9f018000  addli r3, zero, 64
001fac  b3900020  hfloat2float.rn r1, r1
001fb0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001fb4  e300afd2  loadli.w r1,  -5808(r30)
001fb8  7e8001e0  vmmov mr0, r3
001fbc  9f010001  addli r3, zero, 128
001fc0  b3900020  hfloat2float.rn r1, r1
001fc4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001fc8  e340afd2  loadli.w r1,  -5804(r30)
001fcc  7e8001e0  vmmov mr0, r3
001fd0  9f010002  addli r3, zero, 256
001fd4  b3900020  hfloat2float.rn r1, r1
001fd8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001fdc  e300bfd2  loadli.w r1,  -5800(r30)
001fe0  7e8001e0  vmmov mr0, r3
001fe4  9f010004  addli r3, zero, 512
001fe8  b3900020  hfloat2float.rn r1, r1
001fec  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001ff0  e340bfd2  loadli.w r1,  -5796(r30)
001ff4  7e8001e0  vmmov mr0, r3
001ff8  9f010008  addli r3, zero, 1024
001ffc  b3900020  hfloat2float.rn r1, r1
002000  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002004  e300cfd2  loadli.w r1,  -5792(r30)
002008  7e8001e0  vmmov mr0, r3
00200c  9f010010  addli r3, zero, 2048
002010  b3900020  hfloat2float.rn r1, r1
002014  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002018  e340cfd2  loadli.w r1,  -5788(r30)
00201c  7e8001e0  vmmov mr0, r3
002020  9f010020  addli r3, zero, 4096
002024  b3900020  hfloat2float.rn r1, r1
002028  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00202c  e300dfd2  loadli.w r1,  -5784(r30)
002030  7e8001e0  vmmov mr0, r3
002034  b3900020  hfloat2float.rn r1, r1
002038  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00203c  e340dfd2  loadli.w r1,  -5780(r30)
002040  7e0002e0  vmmov mr0, r4
002044  2b820000  lui r4, 8
002048  b3900020  hfloat2float.rn r1, r1
00204c  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002050  e300efd2  loadli.w r1,  -5776(r30)
002054  b3900020  hfloat2float.rn r1, r1
002058  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
00205c  e300ffd2  loadli.w r1,  -5768(r30)
002060  e341efd2  loadli.w r3,  -5772(r30)
002064  b3900020  hfloat2float.rn r1, r1
002068  b3910120  hfloat2float.rn r3, r3
00206c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002070  9f000fdc  addli r1, r30, -4608
002074  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
002078  92300002  vadd.s.mz vr1{mr1}, zero, vr0
00207c  9f100000  addli r1, zero, 1
002080  7e8000e0  vmmov mr0, r1
002084  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
002088  e340ffd2  loadli.w r1,  -5764(r30)
00208c  9f210000  addli r3, zero, 2
002090  7e8001e0  vmmov mr0, r3
002094  9f410000  addli r3, zero, 4
002098  b3900020  hfloat2float.rn r1, r1
00209c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0020a0  e3000fd3  loadli.w r1,  -5760(r30)
0020a4  7e8001e0  vmmov mr0, r3
0020a8  9f011000  addli r3, zero, 8
0020ac  b3900020  hfloat2float.rn r1, r1
0020b0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0020b4  e3400fd3  loadli.w r1,  -5756(r30)
0020b8  7e8001e0  vmmov mr0, r3
0020bc  9f012000  addli r3, zero, 16
0020c0  b3900020  hfloat2float.rn r1, r1
0020c4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0020c8  e3001fd3  loadli.w r1,  -5752(r30)
0020cc  7e8001e0  vmmov mr0, r3
0020d0  9f014000  addli r3, zero, 32
0020d4  b3900020  hfloat2float.rn r1, r1
0020d8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0020dc  e3401fd3  loadli.w r1,  -5748(r30)
0020e0  7e8001e0  vmmov mr0, r3
0020e4  9f018000  addli r3, zero, 64
0020e8  b3900020  hfloat2float.rn r1, r1
0020ec  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0020f0  e3002fd3  loadli.w r1,  -5744(r30)
0020f4  7e8001e0  vmmov mr0, r3
0020f8  9f010001  addli r3, zero, 128
0020fc  b3900020  hfloat2float.rn r1, r1
002100  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002104  e3402fd3  loadli.w r1,  -5740(r30)
002108  7e8001e0  vmmov mr0, r3
00210c  9f010002  addli r3, zero, 256
002110  b3900020  hfloat2float.rn r1, r1
002114  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002118  e3003fd3  loadli.w r1,  -5736(r30)
00211c  7e8001e0  vmmov mr0, r3
002120  9f010004  addli r3, zero, 512
002124  b3900020  hfloat2float.rn r1, r1
002128  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00212c  e3403fd3  loadli.w r1,  -5732(r30)
002130  7e8001e0  vmmov mr0, r3
002134  9f010008  addli r3, zero, 1024
002138  b3900020  hfloat2float.rn r1, r1
00213c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002140  e3004fd3  loadli.w r1,  -5728(r30)
002144  7e8001e0  vmmov mr0, r3
002148  9f010010  addli r3, zero, 2048
00214c  b3900020  hfloat2float.rn r1, r1
002150  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002154  e3404fd3  loadli.w r1,  -5724(r30)
002158  7e8001e0  vmmov mr0, r3
00215c  9f010020  addli r3, zero, 4096
002160  b3900020  hfloat2float.rn r1, r1
002164  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002168  e3005fd3  loadli.w r1,  -5720(r30)
00216c  7e8001e0  vmmov mr0, r3
002170  b3900020  hfloat2float.rn r1, r1
002174  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002178  e3405fd3  loadli.w r1,  -5716(r30)
00217c  b3900020  hfloat2float.rn r1, r1
002180  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002184  e3006fd3  loadli.w r1,  -5712(r30)
002188  b3900020  hfloat2float.rn r1, r1
00218c  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002190  e3007fd3  loadli.w r1,  -5704(r30)
002194  7e0102e0  vmmov mr2, r4
002198  e3416fd3  loadli.w r3,  -5708(r30)
00219c  2b820000  lui r4, 8
0021a0  b3900020  hfloat2float.rn r1, r1
0021a4  b3910120  hfloat2float.rn r3, r3
0021a8  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0021ac  9f000fdb  addli r1, r30, -4736
0021b0  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0021b4  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0021b8  9f100000  addli r1, zero, 1
0021bc  7e8000e0  vmmov mr0, r1
0021c0  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0021c4  e3407fd3  loadli.w r1,  -5700(r30)
0021c8  9f210000  addli r3, zero, 2
0021cc  7e8001e0  vmmov mr0, r3
0021d0  9f410000  addli r3, zero, 4
0021d4  b3900020  hfloat2float.rn r1, r1
0021d8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0021dc  e3008fd3  loadli.w r1,  -5696(r30)
0021e0  7e8001e0  vmmov mr0, r3
0021e4  9f011000  addli r3, zero, 8
0021e8  b3900020  hfloat2float.rn r1, r1
0021ec  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0021f0  e3408fd3  loadli.w r1,  -5692(r30)
0021f4  7e8001e0  vmmov mr0, r3
0021f8  9f012000  addli r3, zero, 16
0021fc  b3900020  hfloat2float.rn r1, r1
002200  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002204  e3009fd3  loadli.w r1,  -5688(r30)
002208  7e8001e0  vmmov mr0, r3
00220c  9f014000  addli r3, zero, 32
002210  b3900020  hfloat2float.rn r1, r1
002214  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002218  e3409fd3  loadli.w r1,  -5684(r30)
00221c  7e8001e0  vmmov mr0, r3
002220  9f018000  addli r3, zero, 64
002224  b3900020  hfloat2float.rn r1, r1
002228  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00222c  e300afd3  loadli.w r1,  -5680(r30)
002230  7e8001e0  vmmov mr0, r3
002234  9f010001  addli r3, zero, 128
002238  b3900020  hfloat2float.rn r1, r1
00223c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002240  e340afd3  loadli.w r1,  -5676(r30)
002244  7e8001e0  vmmov mr0, r3
002248  9f010002  addli r3, zero, 256
00224c  b3900020  hfloat2float.rn r1, r1
002250  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002254  e300bfd3  loadli.w r1,  -5672(r30)
002258  7e8001e0  vmmov mr0, r3
00225c  9f010004  addli r3, zero, 512
002260  b3900020  hfloat2float.rn r1, r1
002264  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002268  e340bfd3  loadli.w r1,  -5668(r30)
00226c  7e8001e0  vmmov mr0, r3
002270  9f010008  addli r3, zero, 1024
002274  b3900020  hfloat2float.rn r1, r1
002278  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00227c  e300cfd3  loadli.w r1,  -5664(r30)
002280  7e8001e0  vmmov mr0, r3
002284  9f010010  addli r3, zero, 2048
002288  b3900020  hfloat2float.rn r1, r1
00228c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002290  e340cfd3  loadli.w r1,  -5660(r30)
002294  7e8001e0  vmmov mr0, r3
002298  9f010020  addli r3, zero, 4096
00229c  b3900020  hfloat2float.rn r1, r1
0022a0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0022a4  e300dfd3  loadli.w r1,  -5656(r30)
0022a8  7e8001e0  vmmov mr0, r3
0022ac  ab410000  lui r3, 4
0022b0  b3900020  hfloat2float.rn r1, r1
0022b4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0022b8  e340dfd3  loadli.w r1,  -5652(r30)
0022bc  7e8001e0  vmmov mr0, r3
0022c0  b3900020  hfloat2float.rn r1, r1
0022c4  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
0022c8  e300efd3  loadli.w r1,  -5648(r30)
0022cc  b3900020  hfloat2float.rn r1, r1
0022d0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0022d4  e300ffd3  loadli.w r1,  -5640(r30)
0022d8  e341efd3  loadli.w r3,  -5644(r30)
0022dc  b3900020  hfloat2float.rn r1, r1
0022e0  b3910120  hfloat2float.rn r3, r3
0022e4  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0022e8  9f000fda  addli r1, r30, -4864
0022ec  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0022f0  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0022f4  9f100000  addli r1, zero, 1
0022f8  7e8000e0  vmmov mr0, r1
0022fc  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
002300  e340ffd3  loadli.w r1,  -5636(r30)
002304  9f210000  addli r3, zero, 2
002308  7e8001e0  vmmov mr0, r3
00230c  9f410000  addli r3, zero, 4
002310  b3900020  hfloat2float.rn r1, r1
002314  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002318  e3000fd4  loadli.w r1,  -5632(r30)
00231c  7e8001e0  vmmov mr0, r3
002320  9f011000  addli r3, zero, 8
002324  b3900020  hfloat2float.rn r1, r1
002328  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00232c  e3400fd4  loadli.w r1,  -5628(r30)
002330  7e8001e0  vmmov mr0, r3
002334  9f012000  addli r3, zero, 16
002338  b3900020  hfloat2float.rn r1, r1
00233c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002340  e3001fd4  loadli.w r1,  -5624(r30)
002344  7e8001e0  vmmov mr0, r3
002348  9f014000  addli r3, zero, 32
00234c  b3900020  hfloat2float.rn r1, r1
002350  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002354  e3401fd4  loadli.w r1,  -5620(r30)
002358  7e8001e0  vmmov mr0, r3
00235c  9f018000  addli r3, zero, 64
002360  b3900020  hfloat2float.rn r1, r1
002364  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002368  e3002fd4  loadli.w r1,  -5616(r30)
00236c  7e8001e0  vmmov mr0, r3
002370  9f010001  addli r3, zero, 128
002374  b3900020  hfloat2float.rn r1, r1
002378  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00237c  e3402fd4  loadli.w r1,  -5612(r30)
002380  7e8001e0  vmmov mr0, r3
002384  9f010002  addli r3, zero, 256
002388  b3900020  hfloat2float.rn r1, r1
00238c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002390  e3003fd4  loadli.w r1,  -5608(r30)
002394  7e8001e0  vmmov mr0, r3
002398  9f010004  addli r3, zero, 512
00239c  b3900020  hfloat2float.rn r1, r1
0023a0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0023a4  e3403fd4  loadli.w r1,  -5604(r30)
0023a8  7e8001e0  vmmov mr0, r3
0023ac  9f010008  addli r3, zero, 1024
0023b0  b3900020  hfloat2float.rn r1, r1
0023b4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0023b8  e3004fd4  loadli.w r1,  -5600(r30)
0023bc  7e8001e0  vmmov mr0, r3
0023c0  9f010010  addli r3, zero, 2048
0023c4  b3900020  hfloat2float.rn r1, r1
0023c8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0023cc  e3404fd4  loadli.w r1,  -5596(r30)
0023d0  7e8001e0  vmmov mr0, r3
0023d4  9f010020  addli r3, zero, 4096
0023d8  b3900020  hfloat2float.rn r1, r1
0023dc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0023e0  e3005fd4  loadli.w r1,  -5592(r30)
0023e4  7e8001e0  vmmov mr0, r3
0023e8  ab410000  lui r3, 4
0023ec  b3900020  hfloat2float.rn r1, r1
0023f0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0023f4  e3405fd4  loadli.w r1,  -5588(r30)
0023f8  7e8001e0  vmmov mr0, r3
0023fc  b3900020  hfloat2float.rn r1, r1
002400  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002404  e3006fd4  loadli.w r1,  -5584(r30)
002408  b3900020  hfloat2float.rn r1, r1
00240c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002410  e3007fd4  loadli.w r1,  -5576(r30)
002414  e3416fd4  loadli.w r3,  -5580(r30)
002418  b3900020  hfloat2float.rn r1, r1
00241c  b3910120  hfloat2float.rn r3, r3
002420  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002424  9f000fd9  addli r1, r30, -4992
002428  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
00242c  92300002  vadd.s.mz vr1{mr1}, zero, vr0
002430  9f100000  addli r1, zero, 1
002434  7e0001c0  vmmov mr0, mr2
002438  fe8100e0  vmmov mr3, r1
00243c  eaa01136  vor.u.mh vr1{mr3}, r3, vr1
002440  e3407fd4  loadli.w r1,  -5572(r30)
002444  9f210000  addli r3, zero, 2
002448  7e8101e0  vmmov mr2, r3
00244c  9f410000  addli r3, zero, 4
002450  b3900020  hfloat2float.rn r1, r1
002454  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002458  e3008fd4  loadli.w r1,  -5568(r30)
00245c  7e8101e0  vmmov mr2, r3
002460  9f011000  addli r3, zero, 8
002464  b3900020  hfloat2float.rn r1, r1
002468  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
00246c  e3408fd4  loadli.w r1,  -5564(r30)
002470  7e8101e0  vmmov mr2, r3
002474  9f012000  addli r3, zero, 16
002478  b3900020  hfloat2float.rn r1, r1
00247c  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002480  e3009fd4  loadli.w r1,  -5560(r30)
002484  7e8101e0  vmmov mr2, r3
002488  9f014000  addli r3, zero, 32
00248c  b3900020  hfloat2float.rn r1, r1
002490  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002494  e3409fd4  loadli.w r1,  -5556(r30)
002498  7e8101e0  vmmov mr2, r3
00249c  9f018000  addli r3, zero, 64
0024a0  b3900020  hfloat2float.rn r1, r1
0024a4  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0024a8  e300afd4  loadli.w r1,  -5552(r30)
0024ac  7e8101e0  vmmov mr2, r3
0024b0  9f010001  addli r3, zero, 128
0024b4  b3900020  hfloat2float.rn r1, r1
0024b8  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0024bc  e340afd4  loadli.w r1,  -5548(r30)
0024c0  7e8101e0  vmmov mr2, r3
0024c4  9f010002  addli r3, zero, 256
0024c8  b3900020  hfloat2float.rn r1, r1
0024cc  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0024d0  e300bfd4  loadli.w r1,  -5544(r30)
0024d4  7e8101e0  vmmov mr2, r3
0024d8  9f010004  addli r3, zero, 512
0024dc  b3900020  hfloat2float.rn r1, r1
0024e0  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0024e4  e340bfd4  loadli.w r1,  -5540(r30)
0024e8  7e8101e0  vmmov mr2, r3
0024ec  9f010008  addli r3, zero, 1024
0024f0  fe8101e0  vmmov mr3, r3
0024f4  9f010010  addli r3, zero, 2048
0024f8  b3900020  hfloat2float.rn r1, r1
0024fc  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002500  e300cfd4  loadli.w r1,  -5536(r30)
002504  7e8101e0  vmmov mr2, r3
002508  9f010020  addli r3, zero, 4096
00250c  b3900020  hfloat2float.rn r1, r1
002510  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002514  e340cfd4  loadli.w r1,  -5532(r30)
002518  b3900020  hfloat2float.rn r1, r1
00251c  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002520  e300dfd4  loadli.w r1,  -5528(r30)
002524  7e8101e0  vmmov mr2, r3
002528  9f010040  addli r3, zero, 8192
00252c  b3900020  hfloat2float.rn r1, r1
002530  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002534  e340dfd4  loadli.w r1,  -5524(r30)
002538  7e8101e0  vmmov mr2, r3
00253c  ab410000  lui r3, 4
002540  b3900020  hfloat2float.rn r1, r1
002544  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002548  e300efd4  loadli.w r1,  -5520(r30)
00254c  7e8101e0  vmmov mr2, r3
002550  b3900020  hfloat2float.rn r1, r1
002554  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002558  e300ffd4  loadli.w r1,  -5512(r30)
00255c  e341efd4  loadli.w r3,  -5516(r30)
002560  b3900020  hfloat2float.rn r1, r1
002564  b3910120  hfloat2float.rn r3, r3
002568  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00256c  9f000fd8  addli r1, r30, -5120
002570  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
002574  92300002  vadd.s.mz vr1{mr1}, zero, vr0
002578  9f100000  addli r1, zero, 1
00257c  7e8100e0  vmmov mr2, r1
002580  eaa01134  vor.u.mh vr1{mr2}, r3, vr1
002584  e340ffd4  loadli.w r1,  -5508(r30)
002588  9f210000  addli r3, zero, 2
00258c  7e8101e0  vmmov mr2, r3
002590  9f410000  addli r3, zero, 4
002594  b3900020  hfloat2float.rn r1, r1
002598  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
00259c  e3000fd5  loadli.w r1,  -5504(r30)
0025a0  7e8101e0  vmmov mr2, r3
0025a4  9f011000  addli r3, zero, 8
0025a8  b3900020  hfloat2float.rn r1, r1
0025ac  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0025b0  e3400fd5  loadli.w r1,  -5500(r30)
0025b4  7e8101e0  vmmov mr2, r3
0025b8  9f012000  addli r3, zero, 16
0025bc  b3900020  hfloat2float.rn r1, r1
0025c0  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0025c4  e3001fd5  loadli.w r1,  -5496(r30)
0025c8  7e8101e0  vmmov mr2, r3
0025cc  9f014000  addli r3, zero, 32
0025d0  b3900020  hfloat2float.rn r1, r1
0025d4  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0025d8  e3401fd5  loadli.w r1,  -5492(r30)
0025dc  7e8101e0  vmmov mr2, r3
0025e0  9f018000  addli r3, zero, 64
0025e4  b3900020  hfloat2float.rn r1, r1
0025e8  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0025ec  e3002fd5  loadli.w r1,  -5488(r30)
0025f0  7e8101e0  vmmov mr2, r3
0025f4  9f010001  addli r3, zero, 128
0025f8  b3900020  hfloat2float.rn r1, r1
0025fc  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002600  e3402fd5  loadli.w r1,  -5484(r30)
002604  7e8101e0  vmmov mr2, r3
002608  9f010002  addli r3, zero, 256
00260c  b3900020  hfloat2float.rn r1, r1
002610  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002614  e3003fd5  loadli.w r1,  -5480(r30)
002618  7e8101e0  vmmov mr2, r3
00261c  9f010004  addli r3, zero, 512
002620  b3900020  hfloat2float.rn r1, r1
002624  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002628  e3403fd5  loadli.w r1,  -5476(r30)
00262c  7e8101e0  vmmov mr2, r3
002630  9f010010  addli r3, zero, 2048
002634  b3900020  hfloat2float.rn r1, r1
002638  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
00263c  e3004fd5  loadli.w r1,  -5472(r30)
002640  b3900020  hfloat2float.rn r1, r1
002644  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002648  7e8101c0  vmmov mr2, mr3
00264c  e3404fd5  loadli.w r1,  -5468(r30)
002650  fe8101e0  vmmov mr3, r3
002654  9f010020  addli r3, zero, 4096
002658  b3900020  hfloat2float.rn r1, r1
00265c  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002660  e3005fd5  loadli.w r1,  -5464(r30)
002664  fe8101e0  vmmov mr3, r3
002668  9f010040  addli r3, zero, 8192
00266c  b3900020  hfloat2float.rn r1, r1
002670  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002674  e3006fd5  loadli.w r1,  -5456(r30)
002678  fe8101e0  vmmov mr3, r3
00267c  ab410000  lui r3, 4
002680  b3900020  hfloat2float.rn r1, r1
002684  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002688  e3405fd5  loadli.w r1,  -5460(r30)
00268c  fe8101e0  vmmov mr3, r3
002690  b3900020  hfloat2float.rn r1, r1
002694  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002698  e3406fd5  loadli.w r1,  -5452(r30)
00269c  b3910020  hfloat2float.rn r3, r1
0026a0  e3007fd5  loadli.w r1,  -5448(r30)
0026a4  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0026a8  9f010fd7  addli r3, r30, -5248
0026ac  b3900020  hfloat2float.rn r1, r1
0026b0  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0026b4  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0026b8  9f110000  addli r3, zero, 1
0026bc  7e8001e0  vmmov mr0, r3
0026c0  9f210000  addli r3, zero, 2
0026c4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0026c8  e3407fd5  loadli.w r1,  -5444(r30)
0026cc  7e8001e0  vmmov mr0, r3
0026d0  9f410000  addli r3, zero, 4
0026d4  fe8101e0  vmmov mr3, r3
0026d8  9f011000  addli r3, zero, 8
0026dc  b3900020  hfloat2float.rn r1, r1
0026e0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0026e4  e3008fd5  loadli.w r1,  -5440(r30)
0026e8  b3900020  hfloat2float.rn r1, r1
0026ec  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
0026f0  e3408fd5  loadli.w r1,  -5436(r30)
0026f4  fe8101e0  vmmov mr3, r3
0026f8  9f012000  addli r3, zero, 16
0026fc  b3900020  hfloat2float.rn r1, r1
002700  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002704  e3009fd5  loadli.w r1,  -5432(r30)
002708  fe8101e0  vmmov mr3, r3
00270c  9f014000  addli r3, zero, 32
002710  b3900020  hfloat2float.rn r1, r1
002714  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002718  e3409fd5  loadli.w r1,  -5428(r30)
00271c  fe8101e0  vmmov mr3, r3
002720  9f018000  addli r3, zero, 64
002724  b3900020  hfloat2float.rn r1, r1
002728  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
00272c  e300afd5  loadli.w r1,  -5424(r30)
002730  fe8101e0  vmmov mr3, r3
002734  9f010001  addli r3, zero, 128
002738  b3900020  hfloat2float.rn r1, r1
00273c  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002740  e340afd5  loadli.w r1,  -5420(r30)
002744  fe8101e0  vmmov mr3, r3
002748  9f010002  addli r3, zero, 256
00274c  b3900020  hfloat2float.rn r1, r1
002750  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002754  e300bfd5  loadli.w r1,  -5416(r30)
002758  fe8101e0  vmmov mr3, r3
00275c  9f010004  addli r3, zero, 512
002760  b3900020  hfloat2float.rn r1, r1
002764  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002768  e340bfd5  loadli.w r1,  -5412(r30)
00276c  fe8101e0  vmmov mr3, r3
002770  9f010010  addli r3, zero, 2048
002774  7e8001e0  vmmov mr0, r3
002778  9f010020  addli r3, zero, 4096
00277c  b3900020  hfloat2float.rn r1, r1
002780  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002784  e300cfd5  loadli.w r1,  -5408(r30)
002788  b3900020  hfloat2float.rn r1, r1
00278c  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002790  e340cfd5  loadli.w r1,  -5404(r30)
002794  b3900020  hfloat2float.rn r1, r1
002798  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00279c  e300dfd5  loadli.w r1,  -5400(r30)
0027a0  7e8001e0  vmmov mr0, r3
0027a4  9f010040  addli r3, zero, 8192
0027a8  b3900020  hfloat2float.rn r1, r1
0027ac  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0027b0  e340dfd5  loadli.w r1,  -5396(r30)
0027b4  7e8001e0  vmmov mr0, r3
0027b8  ab410000  lui r3, 4
0027bc  b3900020  hfloat2float.rn r1, r1
0027c0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0027c4  e300efd5  loadli.w r1,  -5392(r30)
0027c8  7e8001e0  vmmov mr0, r3
0027cc  b3900020  hfloat2float.rn r1, r1
0027d0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0027d4  e300ffd5  loadli.w r1,  -5384(r30)
0027d8  7e0002e0  vmmov mr0, r4
0027dc  e341efd5  loadli.w r3,  -5388(r30)
0027e0  2b820000  lui r4, 8
0027e4  b3900020  hfloat2float.rn r1, r1
0027e8  b3910120  hfloat2float.rn r3, r3
0027ec  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0027f0  9f100000  addli r1, zero, 1
0027f4  7e8000e0  vmmov mr0, r1
0027f8  92341002  vadd.s.mz vr9{mr1}, zero, vr1
0027fc  92300002  vadd.s.mz vr1{mr1}, zero, vr0
002800  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
002804  e340ffd5  loadli.w r1,  -5380(r30)
002808  9f210000  addli r3, zero, 2
00280c  7e8001e0  vmmov mr0, r3
002810  9f410000  addli r3, zero, 4
002814  b3900020  hfloat2float.rn r1, r1
002818  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00281c  e3000fd6  loadli.w r1,  -5376(r30)
002820  7e8001e0  vmmov mr0, r3
002824  9f011000  addli r3, zero, 8
002828  b3900020  hfloat2float.rn r1, r1
00282c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002830  e3400fd6  loadli.w r1,  -5372(r30)
002834  7e8001e0  vmmov mr0, r3
002838  9f012000  addli r3, zero, 16
00283c  b3900020  hfloat2float.rn r1, r1
002840  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002844  e3001fd6  loadli.w r1,  -5368(r30)
002848  7e8001e0  vmmov mr0, r3
00284c  9f014000  addli r3, zero, 32
002850  b3900020  hfloat2float.rn r1, r1
002854  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002858  e3401fd6  loadli.w r1,  -5364(r30)
00285c  7e8001e0  vmmov mr0, r3
002860  9f018000  addli r3, zero, 64
002864  b3900020  hfloat2float.rn r1, r1
002868  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00286c  e3002fd6  loadli.w r1,  -5360(r30)
002870  7e8001e0  vmmov mr0, r3
002874  9f010001  addli r3, zero, 128
002878  b3900020  hfloat2float.rn r1, r1
00287c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002880  e3402fd6  loadli.w r1,  -5356(r30)
002884  7e8001e0  vmmov mr0, r3
002888  9f010002  addli r3, zero, 256
00288c  b3900020  hfloat2float.rn r1, r1
002890  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002894  e3003fd6  loadli.w r1,  -5352(r30)
002898  7e8001e0  vmmov mr0, r3
00289c  9f010010  addli r3, zero, 2048
0028a0  b3900020  hfloat2float.rn r1, r1
0028a4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0028a8  e3403fd6  loadli.w r1,  -5348(r30)
0028ac  7e8001e0  vmmov mr0, r3
0028b0  9f010020  addli r3, zero, 4096
0028b4  b3900020  hfloat2float.rn r1, r1
0028b8  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
0028bc  e3004fd6  loadli.w r1,  -5344(r30)
0028c0  b3900020  hfloat2float.rn r1, r1
0028c4  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0028c8  e3404fd6  loadli.w r1,  -5340(r30)
0028cc  7e0102e0  vmmov mr2, r4
0028d0  2b820000  lui r4, 8
0028d4  b3900020  hfloat2float.rn r1, r1
0028d8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0028dc  e3005fd6  loadli.w r1,  -5336(r30)
0028e0  7e8001e0  vmmov mr0, r3
0028e4  9f010040  addli r3, zero, 8192
0028e8  b3900020  hfloat2float.rn r1, r1
0028ec  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0028f0  e3405fd6  loadli.w r1,  -5332(r30)
0028f4  7e8001e0  vmmov mr0, r3
0028f8  ab410000  lui r3, 4
0028fc  b3900020  hfloat2float.rn r1, r1
002900  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002904  e3006fd6  loadli.w r1,  -5328(r30)
002908  7e8001e0  vmmov mr0, r3
00290c  b3900020  hfloat2float.rn r1, r1
002910  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002914  e3007fd6  loadli.w r1,  -5320(r30)
002918  e3416fd6  loadli.w r3,  -5324(r30)
00291c  b3900020  hfloat2float.rn r1, r1
002920  b3910120  hfloat2float.rn r3, r3
002924  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002928  9f000ff3  addli r1, r30, -1664
00292c  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
002930  92300002  vadd.s.mz vr1{mr1}, zero, vr0
002934  9f100000  addli r1, zero, 1
002938  7e8000e0  vmmov mr0, r1
00293c  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
002940  e3407fd6  loadli.w r1,  -5316(r30)
002944  9f210000  addli r3, zero, 2
002948  7e8001e0  vmmov mr0, r3
00294c  9f410000  addli r3, zero, 4
002950  b3900020  hfloat2float.rn r1, r1
002954  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002958  e3008fd6  loadli.w r1,  -5312(r30)
00295c  7e8001e0  vmmov mr0, r3
002960  9f011000  addli r3, zero, 8
002964  b3900020  hfloat2float.rn r1, r1
002968  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00296c  e3408fd6  loadli.w r1,  -5308(r30)
002970  7e8001e0  vmmov mr0, r3
002974  9f012000  addli r3, zero, 16
002978  b3900020  hfloat2float.rn r1, r1
00297c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002980  e3409fd6  loadli.w r1,  -5300(r30)
002984  7e8001e0  vmmov mr0, r3
002988  9f014000  addli r3, zero, 32
00298c  b3900020  hfloat2float.rn r1, r1
002990  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002994  e340afd6  loadli.w r1,  -5292(r30)
002998  7e8001e0  vmmov mr0, r3
00299c  9f018000  addli r3, zero, 64
0029a0  b3900020  hfloat2float.rn r1, r1
0029a4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0029a8  e340bfd6  loadli.w r1,  -5284(r30)
0029ac  7e8001e0  vmmov mr0, r3
0029b0  9f010001  addli r3, zero, 128
0029b4  fe8101e0  vmmov mr3, r3
0029b8  9f010002  addli r3, zero, 256
0029bc  b3900020  hfloat2float.rn r1, r1
0029c0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0029c4  e340cfd6  loadli.w r1,  -5276(r30)
0029c8  b3900020  hfloat2float.rn r1, r1
0029cc  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
0029d0  e340dfd6  loadli.w r1,  -5268(r30)
0029d4  fe8101e0  vmmov mr3, r3
0029d8  9f010004  addli r3, zero, 512
0029dc  b3900020  hfloat2float.rn r1, r1
0029e0  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
0029e4  e340efd6  loadli.w r1,  -5260(r30)
0029e8  fe8101e0  vmmov mr3, r3
0029ec  9f010008  addli r3, zero, 1024
0029f0  7e8001e0  vmmov mr0, r3
0029f4  9f010010  addli r3, zero, 2048
0029f8  b3900020  hfloat2float.rn r1, r1
0029fc  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002a00  e340ffd6  loadli.w r1,  -5252(r30)
002a04  b3900020  hfloat2float.rn r1, r1
002a08  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002a0c  e340ffd7  loadli.w r1,  -5124(r30)
002a10  7e8001e0  vmmov mr0, r3
002a14  9f010020  addli r3, zero, 4096
002a18  b3900020  hfloat2float.rn r1, r1
002a1c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002a20  e340ffd8  loadli.w r1,  -4996(r30)
002a24  7e8001e0  vmmov mr0, r3
002a28  9f010040  addli r3, zero, 8192
002a2c  fe8101e0  vmmov mr3, r3
002a30  ab410000  lui r3, 4
002a34  b3900020  hfloat2float.rn r1, r1
002a38  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002a3c  e340ffd9  loadli.w r1,  -4868(r30)
002a40  7e8001e0  vmmov mr0, r3
002a44  b3900020  hfloat2float.rn r1, r1
002a48  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002a4c  e340ffda  loadli.w r1,  -4740(r30)
002a50  b3900020  hfloat2float.rn r1, r1
002a54  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002a58  e340ffdb  loadli.w r1,  -4612(r30)
002a5c  e301ffdb  loadli.w r3,  -4616(r30)
002a60  b3900020  hfloat2float.rn r1, r1
002a64  b3910120  hfloat2float.rn r3, r3
002a68  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002a6c  9f008ff2  addli r1, r30, -1728
002a70  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
002a74  92300002  vadd.s.mz vr1{mr1}, zero, vr0
002a78  9f100000  addli r1, zero, 1
002a7c  7e8000e0  vmmov mr0, r1
002a80  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
002a84  e3406fdd  loadli.w r1,  -4428(r30)
002a88  9f210000  addli r3, zero, 2
002a8c  7e8001e0  vmmov mr0, r3
002a90  9f410000  addli r3, zero, 4
002a94  b3900020  hfloat2float.rn r1, r1
002a98  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002a9c  e3007fdd  loadli.w r1,  -4424(r30)
002aa0  7e8001e0  vmmov mr0, r3
002aa4  9f011000  addli r3, zero, 8
002aa8  b3900020  hfloat2float.rn r1, r1
002aac  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002ab0  e3407fdd  loadli.w r1,  -4420(r30)
002ab4  7e8001e0  vmmov mr0, r3
002ab8  9f012000  addli r3, zero, 16
002abc  b3900020  hfloat2float.rn r1, r1
002ac0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002ac4  e3008fdd  loadli.w r1,  -4416(r30)
002ac8  7e8001e0  vmmov mr0, r3
002acc  9f014000  addli r3, zero, 32
002ad0  b3900020  hfloat2float.rn r1, r1
002ad4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002ad8  e3408fdd  loadli.w r1,  -4412(r30)
002adc  7e8001e0  vmmov mr0, r3
002ae0  9f018000  addli r3, zero, 64
002ae4  b3900020  hfloat2float.rn r1, r1
002ae8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002aec  e3009fdd  loadli.w r1,  -4408(r30)
002af0  7e8001e0  vmmov mr0, r3
002af4  9f010001  addli r3, zero, 128
002af8  b3900020  hfloat2float.rn r1, r1
002afc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002b00  e3409fdd  loadli.w r1,  -4404(r30)
002b04  7e8001e0  vmmov mr0, r3
002b08  9f010002  addli r3, zero, 256
002b0c  b3900020  hfloat2float.rn r1, r1
002b10  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002b14  e300afdd  loadli.w r1,  -4400(r30)
002b18  7e8001e0  vmmov mr0, r3
002b1c  9f010004  addli r3, zero, 512
002b20  b3900020  hfloat2float.rn r1, r1
002b24  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002b28  e340afdd  loadli.w r1,  -4396(r30)
002b2c  7e8001e0  vmmov mr0, r3
002b30  9f010008  addli r3, zero, 1024
002b34  b3900020  hfloat2float.rn r1, r1
002b38  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002b3c  e300bfdd  loadli.w r1,  -4392(r30)
002b40  7e8001e0  vmmov mr0, r3
002b44  9f010010  addli r3, zero, 2048
002b48  b3900020  hfloat2float.rn r1, r1
002b4c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002b50  e340bfdd  loadli.w r1,  -4388(r30)
002b54  7e8001e0  vmmov mr0, r3
002b58  9f010020  addli r3, zero, 4096
002b5c  b3900020  hfloat2float.rn r1, r1
002b60  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002b64  e300cfdd  loadli.w r1,  -4384(r30)
002b68  7e8001e0  vmmov mr0, r3
002b6c  ab410000  lui r3, 4
002b70  b3900020  hfloat2float.rn r1, r1
002b74  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002b78  e340cfdd  loadli.w r1,  -4380(r30)
002b7c  7e8001e0  vmmov mr0, r3
002b80  b3900020  hfloat2float.rn r1, r1
002b84  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002b88  e300dfdd  loadli.w r1,  -4376(r30)
002b8c  b3900020  hfloat2float.rn r1, r1
002b90  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002b94  e3008ff1  loadli.w r1,  -1856(r30)
002b98  e341dfdd  loadli.w r3,  -4372(r30)
002b9c  b3900020  hfloat2float.rn r1, r1
002ba0  b3910120  hfloat2float.rn r3, r3
002ba4  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002ba8  9f008ff1  addli r1, r30, -1856
002bac  00a00000  mfence { lm }
002bb0  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
002bb4  92300002  vadd.s.mz vr1{mr1}, zero, vr0
002bb8  9f100000  addli r1, zero, 1
002bbc  7e8000e0  vmmov mr0, r1
002bc0  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
002bc4  e300efdd  loadli.w r1,  -4368(r30)
002bc8  9f210000  addli r3, zero, 2
002bcc  7e8001e0  vmmov mr0, r3
002bd0  9f410000  addli r3, zero, 4
002bd4  b3900020  hfloat2float.rn r1, r1
002bd8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002bdc  e340efdd  loadli.w r1,  -4364(r30)
002be0  7e8001e0  vmmov mr0, r3
002be4  9f011000  addli r3, zero, 8
002be8  b3900020  hfloat2float.rn r1, r1
002bec  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002bf0  e300ffdd  loadli.w r1,  -4360(r30)
002bf4  7e8001e0  vmmov mr0, r3
002bf8  9f012000  addli r3, zero, 16
002bfc  b3900020  hfloat2float.rn r1, r1
002c00  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002c04  e340ffdd  loadli.w r1,  -4356(r30)
002c08  7e8001e0  vmmov mr0, r3
002c0c  9f014000  addli r3, zero, 32
002c10  b3900020  hfloat2float.rn r1, r1
002c14  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002c18  e340efde  loadli.w r1,  -4236(r30)
002c1c  7e8001e0  vmmov mr0, r3
002c20  9f018000  addli r3, zero, 64
002c24  b3900020  hfloat2float.rn r1, r1
002c28  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002c2c  e300ffde  loadli.w r1,  -4232(r30)
002c30  7e8001e0  vmmov mr0, r3
002c34  9f010001  addli r3, zero, 128
002c38  fe8101e0  vmmov mr3, r3
002c3c  9f010002  addli r3, zero, 256
002c40  b3900020  hfloat2float.rn r1, r1
002c44  7e8101e0  vmmov mr2, r3
002c48  9f010004  addli r3, zero, 512
002c4c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002c50  e340ffde  loadli.w r1,  -4228(r30)
002c54  7e8001e0  vmmov mr0, r3
002c58  9f010008  addli r3, zero, 1024
002c5c  b3900020  hfloat2float.rn r1, r1
002c60  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002c64  e3000fdf  loadli.w r1,  -4224(r30)
002c68  b3900020  hfloat2float.rn r1, r1
002c6c  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002c70  e3400fdf  loadli.w r1,  -4220(r30)
002c74  b3900020  hfloat2float.rn r1, r1
002c78  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002c7c  e3001fdf  loadli.w r1,  -4216(r30)
002c80  7e8001e0  vmmov mr0, r3
002c84  9f010010  addli r3, zero, 2048
002c88  b3900020  hfloat2float.rn r1, r1
002c8c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002c90  e3401fdf  loadli.w r1,  -4212(r30)
002c94  7e8001e0  vmmov mr0, r3
002c98  9f010020  addli r3, zero, 4096
002c9c  b3900020  hfloat2float.rn r1, r1
002ca0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002ca4  e3002fdf  loadli.w r1,  -4208(r30)
002ca8  7e8001e0  vmmov mr0, r3
002cac  9f010040  addli r3, zero, 8192
002cb0  b3900020  hfloat2float.rn r1, r1
002cb4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002cb8  e3402fdf  loadli.w r1,  -4204(r30)
002cbc  7e8001e0  vmmov mr0, r3
002cc0  ab410000  lui r3, 4
002cc4  b3900020  hfloat2float.rn r1, r1
002cc8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002ccc  e3003fdf  loadli.w r1,  -4200(r30)
002cd0  7e8001e0  vmmov mr0, r3
002cd4  b3900020  hfloat2float.rn r1, r1
002cd8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002cdc  e3000ff2  loadli.w r1,  -1792(r30)
002ce0  7e0002e0  vmmov mr0, r4
002ce4  e3413fdf  loadli.w r3,  -4196(r30)
002ce8  2b820000  lui r4, 8
002cec  b3900020  hfloat2float.rn r1, r1
002cf0  b3910120  hfloat2float.rn r3, r3
002cf4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002cf8  9f000ff2  addli r1, r30, -1792
002cfc  00a00000  mfence { lm }
002d00  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
002d04  92300002  vadd.s.mz vr1{mr1}, zero, vr0
002d08  9f100000  addli r1, zero, 1
002d0c  7e8000e0  vmmov mr0, r1
002d10  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
002d14  e3004fdf  loadli.w r1,  -4192(r30)
002d18  9f210000  addli r3, zero, 2
002d1c  7e8001e0  vmmov mr0, r3
002d20  9f410000  addli r3, zero, 4
002d24  b3900020  hfloat2float.rn r1, r1
002d28  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002d2c  e3404fdf  loadli.w r1,  -4188(r30)
002d30  7e8001e0  vmmov mr0, r3
002d34  9f011000  addli r3, zero, 8
002d38  b3900020  hfloat2float.rn r1, r1
002d3c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002d40  e3005fdf  loadli.w r1,  -4184(r30)
002d44  7e8001e0  vmmov mr0, r3
002d48  9f012000  addli r3, zero, 16
002d4c  b3900020  hfloat2float.rn r1, r1
002d50  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002d54  e3405fdf  loadli.w r1,  -4180(r30)
002d58  7e8001e0  vmmov mr0, r3
002d5c  9f014000  addli r3, zero, 32
002d60  b3900020  hfloat2float.rn r1, r1
002d64  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002d68  e3006fdf  loadli.w r1,  -4176(r30)
002d6c  7e8001e0  vmmov mr0, r3
002d70  9f018000  addli r3, zero, 64
002d74  b3900020  hfloat2float.rn r1, r1
002d78  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002d7c  e3406fdf  loadli.w r1,  -4172(r30)
002d80  7e8001e0  vmmov mr0, r3
002d84  9f010004  addli r3, zero, 512
002d88  b3900020  hfloat2float.rn r1, r1
002d8c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002d90  e3007fdf  loadli.w r1,  -4168(r30)
002d94  7e8001e0  vmmov mr0, r3
002d98  9f010008  addli r3, zero, 1024
002d9c  b3900020  hfloat2float.rn r1, r1
002da0  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002da4  e3407fdf  loadli.w r1,  -4164(r30)
002da8  b3900020  hfloat2float.rn r1, r1
002dac  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002db0  e3406fe0  loadli.w r1,  -4044(r30)
002db4  b3900020  hfloat2float.rn r1, r1
002db8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002dbc  e3007fe0  loadli.w r1,  -4040(r30)
002dc0  7e8001e0  vmmov mr0, r3
002dc4  9f010010  addli r3, zero, 2048
002dc8  b3900020  hfloat2float.rn r1, r1
002dcc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002dd0  e3407fe0  loadli.w r1,  -4036(r30)
002dd4  7e8001e0  vmmov mr0, r3
002dd8  9f010020  addli r3, zero, 4096
002ddc  b3900020  hfloat2float.rn r1, r1
002de0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002de4  e3008fe0  loadli.w r1,  -4032(r30)
002de8  7e8001e0  vmmov mr0, r3
002dec  9f010040  addli r3, zero, 8192
002df0  b3900020  hfloat2float.rn r1, r1
002df4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002df8  e3408fe0  loadli.w r1,  -4028(r30)
002dfc  7e8001e0  vmmov mr0, r3
002e00  ab410000  lui r3, 4
002e04  b3900020  hfloat2float.rn r1, r1
002e08  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002e0c  e3009fe0  loadli.w r1,  -4024(r30)
002e10  7e8001e0  vmmov mr0, r3
002e14  b3900020  hfloat2float.rn r1, r1
002e18  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002e1c  e3000ff1  loadli.w r1,  -1920(r30)
002e20  7e0002e0  vmmov mr0, r4
002e24  e3419fe0  loadli.w r3,  -4020(r30)
002e28  2b820000  lui r4, 8
002e2c  b3900020  hfloat2float.rn r1, r1
002e30  b3910120  hfloat2float.rn r3, r3
002e34  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002e38  9f000ff1  addli r1, r30, -1920
002e3c  00a00000  mfence { lm }
002e40  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
002e44  92300002  vadd.s.mz vr1{mr1}, zero, vr0
002e48  9f100000  addli r1, zero, 1
002e4c  7e8000e0  vmmov mr0, r1
002e50  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
002e54  e300afe0  loadli.w r1,  -4016(r30)
002e58  9f210000  addli r3, zero, 2
002e5c  7e8001e0  vmmov mr0, r3
002e60  9f410000  addli r3, zero, 4
002e64  b3900020  hfloat2float.rn r1, r1
002e68  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002e6c  e340afe0  loadli.w r1,  -4012(r30)
002e70  7e8001e0  vmmov mr0, r3
002e74  9f011000  addli r3, zero, 8
002e78  b3900020  hfloat2float.rn r1, r1
002e7c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002e80  e300bfe0  loadli.w r1,  -4008(r30)
002e84  7e8001e0  vmmov mr0, r3
002e88  9f012000  addli r3, zero, 16
002e8c  b3900020  hfloat2float.rn r1, r1
002e90  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002e94  e340bfe0  loadli.w r1,  -4004(r30)
002e98  7e8001e0  vmmov mr0, r3
002e9c  9f014000  addli r3, zero, 32
002ea0  b3900020  hfloat2float.rn r1, r1
002ea4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002ea8  e300cfe0  loadli.w r1,  -4000(r30)
002eac  7e8001e0  vmmov mr0, r3
002eb0  9f018000  addli r3, zero, 64
002eb4  b3900020  hfloat2float.rn r1, r1
002eb8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002ebc  e340cfe0  loadli.w r1,  -3996(r30)
002ec0  7e8001e0  vmmov mr0, r3
002ec4  9f010004  addli r3, zero, 512
002ec8  b3900020  hfloat2float.rn r1, r1
002ecc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002ed0  e300dfe0  loadli.w r1,  -3992(r30)
002ed4  7e8001e0  vmmov mr0, r3
002ed8  9f010008  addli r3, zero, 1024
002edc  b3900020  hfloat2float.rn r1, r1
002ee0  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002ee4  e340dfe0  loadli.w r1,  -3988(r30)
002ee8  b3900020  hfloat2float.rn r1, r1
002eec  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002ef0  e300efe0  loadli.w r1,  -3984(r30)
002ef4  b3900020  hfloat2float.rn r1, r1
002ef8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002efc  e340efe0  loadli.w r1,  -3980(r30)
002f00  7e8001e0  vmmov mr0, r3
002f04  9f010010  addli r3, zero, 2048
002f08  b3900020  hfloat2float.rn r1, r1
002f0c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002f10  e300ffe0  loadli.w r1,  -3976(r30)
002f14  7e8001e0  vmmov mr0, r3
002f18  9f010020  addli r3, zero, 4096
002f1c  fe8101e0  vmmov mr3, r3
002f20  9f010040  addli r3, zero, 8192
002f24  b3900020  hfloat2float.rn r1, r1
002f28  7e8101e0  vmmov mr2, r3
002f2c  ab410000  lui r3, 4
002f30  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002f34  e340ffe0  loadli.w r1,  -3972(r30)
002f38  7e8001e0  vmmov mr0, r3
002f3c  b3900020  hfloat2float.rn r1, r1
002f40  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002f44  e300ffe1  loadli.w r1,  -3848(r30)
002f48  b3900020  hfloat2float.rn r1, r1
002f4c  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002f50  e340ffe1  loadli.w r1,  -3844(r30)
002f54  b3900020  hfloat2float.rn r1, r1
002f58  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002f5c  e3008ff0  loadli.w r1,  -1984(r30)
002f60  7e0002e0  vmmov mr0, r4
002f64  e3010fe2  loadli.w r3,  -3840(r30)
002f68  2b820000  lui r4, 8
002f6c  b3900020  hfloat2float.rn r1, r1
002f70  b3910120  hfloat2float.rn r3, r3
002f74  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002f78  9f008ff0  addli r1, r30, -1984
002f7c  00a00000  mfence { lm }
002f80  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
002f84  92300002  vadd.s.mz vr1{mr1}, zero, vr0
002f88  9f100000  addli r1, zero, 1
002f8c  7e8000e0  vmmov mr0, r1
002f90  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
002f94  e3400fe2  loadli.w r1,  -3836(r30)
002f98  9f210000  addli r3, zero, 2
002f9c  7e8001e0  vmmov mr0, r3
002fa0  9f410000  addli r3, zero, 4
002fa4  b3900020  hfloat2float.rn r1, r1
002fa8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002fac  e3001fe2  loadli.w r1,  -3832(r30)
002fb0  7e8001e0  vmmov mr0, r3
002fb4  9f011000  addli r3, zero, 8
002fb8  b3900020  hfloat2float.rn r1, r1
002fbc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002fc0  e3401fe2  loadli.w r1,  -3828(r30)
002fc4  7e8001e0  vmmov mr0, r3
002fc8  9f012000  addli r3, zero, 16
002fcc  b3900020  hfloat2float.rn r1, r1
002fd0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002fd4  e3002fe2  loadli.w r1,  -3824(r30)
002fd8  7e8001e0  vmmov mr0, r3
002fdc  9f014000  addli r3, zero, 32
002fe0  b3900020  hfloat2float.rn r1, r1
002fe4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002fe8  e3402fe2  loadli.w r1,  -3820(r30)
002fec  7e8001e0  vmmov mr0, r3
002ff0  9f018000  addli r3, zero, 64
002ff4  b3900020  hfloat2float.rn r1, r1
002ff8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002ffc  e3003fe2  loadli.w r1,  -3816(r30)
003000  7e8001e0  vmmov mr0, r3
003004  9f010001  addli r3, zero, 128
003008  b3900020  hfloat2float.rn r1, r1
00300c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
003010  e3403fe2  loadli.w r1,  -3812(r30)
003014  7e8001e0  vmmov mr0, r3
003018  9f010002  addli r3, zero, 256
00301c  b3900020  hfloat2float.rn r1, r1
003020  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
003024  e3004fe2  loadli.w r1,  -3808(r30)
003028  7e8001e0  vmmov mr0, r3
00302c  9f010004  addli r3, zero, 512
003030  b3900020  hfloat2float.rn r1, r1
003034  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
003038  e3404fe2  loadli.w r1,  -3804(r30)
00303c  7e8001e0  vmmov mr0, r3
003040  9f010008  addli r3, zero, 1024
003044  b3900020  hfloat2float.rn r1, r1
003048  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00304c  e3005fe2  loadli.w r1,  -3800(r30)
003050  7e8001e0  vmmov mr0, r3
003054  9f010010  addli r3, zero, 2048
003058  b3900020  hfloat2float.rn r1, r1
00305c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
003060  e3405fe2  loadli.w r1,  -3796(r30)
003064  7e8001e0  vmmov mr0, r3
003068  ab410000  lui r3, 4
00306c  b3900020  hfloat2float.rn r1, r1
003070  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
003074  e3006fe2  loadli.w r1,  -3792(r30)
003078  7e8001e0  vmmov mr0, r3
00307c  b3900020  hfloat2float.rn r1, r1
003080  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
003084  e3406fe2  loadli.w r1,  -3788(r30)
003088  b3900020  hfloat2float.rn r1, r1
00308c  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
003090  e3007fe2  loadli.w r1,  -3784(r30)
003094  b3900020  hfloat2float.rn r1, r1
003098  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00309c  e3000ff0  loadli.w r1,  -2048(r30)
0030a0  7e0002e0  vmmov mr0, r4
0030a4  e3417fe2  loadli.w r3,  -3780(r30)
0030a8  2b820000  lui r4, 8
0030ac  b3900020  hfloat2float.rn r1, r1
0030b0  b3910120  hfloat2float.rn r3, r3
0030b4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0030b8  9f000ff0  addli r1, r30, -2048
0030bc  00a00000  mfence { lm }
0030c0  86350200  vfp162float_l.rn vr11, vr4
0030c4  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0030c8  9f100000  addli r1, zero, 1
0030cc  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0030d0  7e8000e0  vmmov mr0, r1
0030d4  6aa48130  vor.u.mh vr8{mr0}, r3, vr8
0030d8  e3006fe3  loadli.w r1,  -3664(r30)
0030dc  9f210000  addli r3, zero, 2
0030e0  7e8101e0  vmmov mr2, r3
0030e4  9f410000  addli r3, zero, 4
0030e8  b3900020  hfloat2float.rn r1, r1
0030ec  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
0030f0  e3406fe3  loadli.w r1,  -3660(r30)
0030f4  7e8101e0  vmmov mr2, r3
0030f8  9f011000  addli r3, zero, 8
0030fc  b3900020  hfloat2float.rn r1, r1
003100  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
003104  e3007fe3  loadli.w r1,  -3656(r30)
003108  7e8101e0  vmmov mr2, r3
00310c  9f012000  addli r3, zero, 16
003110  b3900020  hfloat2float.rn r1, r1
003114  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
003118  e3407fe3  loadli.w r1,  -3652(r30)
00311c  7e8101e0  vmmov mr2, r3
003120  9f014000  addli r3, zero, 32
003124  b3900020  hfloat2float.rn r1, r1
003128  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
00312c  e3008fe3  loadli.w r1,  -3648(r30)
003130  7e8101e0  vmmov mr2, r3
003134  9f018000  addli r3, zero, 64
003138  b3900020  hfloat2float.rn r1, r1
00313c  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
003140  e3408fe3  loadli.w r1,  -3644(r30)
003144  7e8101e0  vmmov mr2, r3
003148  9f010001  addli r3, zero, 128
00314c  b3900020  hfloat2float.rn r1, r1
003150  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
003154  e3009fe3  loadli.w r1,  -3640(r30)
003158  7e8101e0  vmmov mr2, r3
00315c  9f010002  addli r3, zero, 256
003160  b3900020  hfloat2float.rn r1, r1
003164  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
003168  e3409fe3  loadli.w r1,  -3636(r30)
00316c  7e8101e0  vmmov mr2, r3
003170  9f010004  addli r3, zero, 512
003174  b3900020  hfloat2float.rn r1, r1
003178  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
00317c  e300afe3  loadli.w r1,  -3632(r30)
003180  7e8101e0  vmmov mr2, r3
003184  9f010008  addli r3, zero, 1024
003188  b3900020  hfloat2float.rn r1, r1
00318c  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
003190  e340afe3  loadli.w r1,  -3628(r30)
003194  7e8101e0  vmmov mr2, r3
003198  9f010010  addli r3, zero, 2048
00319c  b3900020  hfloat2float.rn r1, r1
0031a0  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
0031a4  e300bfe3  loadli.w r1,  -3624(r30)
0031a8  7e8101e0  vmmov mr2, r3
0031ac  9f010040  addli r3, zero, 8192
0031b0  b3900020  hfloat2float.rn r1, r1
0031b4  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
0031b8  e340bfe3  loadli.w r1,  -3620(r30)
0031bc  b3900020  hfloat2float.rn r1, r1
0031c0  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
0031c4  e300cfe3  loadli.w r1,  -3616(r30)
0031c8  fe8101e0  vmmov mr3, r3
0031cc  ab410000  lui r3, 4
0031d0  7e8101e0  vmmov mr2, r3
0031d4  b3900020  hfloat2float.rn r1, r1
0031d8  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
0031dc  e340cfe3  loadli.w r1,  -3612(r30)
0031e0  b3900020  hfloat2float.rn r1, r1
0031e4  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
0031e8  e340dfe3  loadli.w r1,  -3604(r30)
0031ec  e301dfe3  loadli.w r3,  -3608(r30)
0031f0  7e0102e0  vmmov mr2, r4
0031f4  2b820000  lui r4, 8
0031f8  b3900020  hfloat2float.rn r1, r1
0031fc  b3910120  hfloat2float.rn r3, r3
003200  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
003204  eaa37130  vor.u.mh vr7{mr0}, r3, vr7
003208  e300efe3  loadli.w r1,  -3600(r30)
00320c  9f210000  addli r3, zero, 2
003210  7e8001e0  vmmov mr0, r3
003214  9f410000  addli r3, zero, 4
003218  b3900020  hfloat2float.rn r1, r1
00321c  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
003220  e340efe3  loadli.w r1,  -3596(r30)
003224  7e8001e0  vmmov mr0, r3
003228  9f011000  addli r3, zero, 8
00322c  b3900020  hfloat2float.rn r1, r1
003230  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
003234  e300ffe3  loadli.w r1,  -3592(r30)
003238  7e8001e0  vmmov mr0, r3
00323c  9f012000  addli r3, zero, 16
003240  b3900020  hfloat2float.rn r1, r1
003244  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
003248  e340ffe3  loadli.w r1,  -3588(r30)
00324c  7e8001e0  vmmov mr0, r3
003250  9f014000  addli r3, zero, 32
003254  b3900020  hfloat2float.rn r1, r1
003258  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
00325c  e300efe4  loadli.w r1,  -3472(r30)
003260  7e8001e0  vmmov mr0, r3
003264  9f018000  addli r3, zero, 64
003268  b3900020  hfloat2float.rn r1, r1
00326c  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
003270  e340efe4  loadli.w r1,  -3468(r30)
003274  7e8001e0  vmmov mr0, r3
003278  9f010001  addli r3, zero, 128
00327c  b3900020  hfloat2float.rn r1, r1
003280  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
003284  e300ffe4  loadli.w r1,  -3464(r30)
003288  7e8001e0  vmmov mr0, r3
00328c  9f010002  addli r3, zero, 256
003290  b3900020  hfloat2float.rn r1, r1
003294  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
003298  e340ffe4  loadli.w r1,  -3460(r30)
00329c  7e8001e0  vmmov mr0, r3
0032a0  9f010004  addli r3, zero, 512
0032a4  b3900020  hfloat2float.rn r1, r1
0032a8  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0032ac  e3000fe5  loadli.w r1,  -3456(r30)
0032b0  7e8001e0  vmmov mr0, r3
0032b4  9f010008  addli r3, zero, 1024
0032b8  b3900020  hfloat2float.rn r1, r1
0032bc  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0032c0  e3400fe5  loadli.w r1,  -3452(r30)
0032c4  7e8001e0  vmmov mr0, r3
0032c8  9f010010  addli r3, zero, 2048
0032cc  b3900020  hfloat2float.rn r1, r1
0032d0  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0032d4  e3001fe5  loadli.w r1,  -3448(r30)
0032d8  7e8001e0  vmmov mr0, r3
0032dc  9f010020  addli r3, zero, 4096
0032e0  b3900020  hfloat2float.rn r1, r1
0032e4  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0032e8  e3401fe5  loadli.w r1,  -3444(r30)
0032ec  7e8001e0  vmmov mr0, r3
0032f0  ab410000  lui r3, 4
0032f4  b3900020  hfloat2float.rn r1, r1
0032f8  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0032fc  e3002fe5  loadli.w r1,  -3440(r30)
003300  7e8001e0  vmmov mr0, r3
003304  b3900020  hfloat2float.rn r1, r1
003308  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
00330c  e3402fe5  loadli.w r1,  -3436(r30)
003310  b3900020  hfloat2float.rn r1, r1
003314  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
003318  e3403fe5  loadli.w r1,  -3428(r30)
00331c  e3013fe5  loadli.w r3,  -3432(r30)
003320  b3900020  hfloat2float.rn r1, r1
003324  b3910120  hfloat2float.rn r3, r3
003328  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
00332c  9f100000  addli r1, zero, 1
003330  7e0001c0  vmmov mr0, mr2
003334  7e8100e0  vmmov mr2, r1
003338  6aa36134  vor.u.mh vr6{mr2}, r3, vr6
00333c  e3004fe5  loadli.w r1,  -3424(r30)
003340  9f210000  addli r3, zero, 2
003344  7e8101e0  vmmov mr2, r3
003348  9f410000  addli r3, zero, 4
00334c  b3900020  hfloat2float.rn r1, r1
003350  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
003354  e3404fe5  loadli.w r1,  -3420(r30)
003358  7e8101e0  vmmov mr2, r3
00335c  9f011000  addli r3, zero, 8
003360  b3900020  hfloat2float.rn r1, r1
003364  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
003368  e3005fe5  loadli.w r1,  -3416(r30)
00336c  7e8101e0  vmmov mr2, r3
003370  9f012000  addli r3, zero, 16
003374  b3900020  hfloat2float.rn r1, r1
003378  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
00337c  e3405fe5  loadli.w r1,  -3412(r30)
003380  7e8101e0  vmmov mr2, r3
003384  9f014000  addli r3, zero, 32
003388  b3900020  hfloat2float.rn r1, r1
00338c  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
003390  e3006fe5  loadli.w r1,  -3408(r30)
003394  7e8101e0  vmmov mr2, r3
003398  9f018000  addli r3, zero, 64
00339c  b3900020  hfloat2float.rn r1, r1
0033a0  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
0033a4  e3406fe5  loadli.w r1,  -3404(r30)
0033a8  7e8101e0  vmmov mr2, r3
0033ac  9f010001  addli r3, zero, 128
0033b0  b3900020  hfloat2float.rn r1, r1
0033b4  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
0033b8  e3007fe5  loadli.w r1,  -3400(r30)
0033bc  7e8101e0  vmmov mr2, r3
0033c0  9f010002  addli r3, zero, 256
0033c4  b3900020  hfloat2float.rn r1, r1
0033c8  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
0033cc  e3407fe5  loadli.w r1,  -3396(r30)
0033d0  7e8101e0  vmmov mr2, r3
0033d4  9f010004  addli r3, zero, 512
0033d8  b3900020  hfloat2float.rn r1, r1
0033dc  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
0033e0  e3006fe6  loadli.w r1,  -3280(r30)
0033e4  7e8101e0  vmmov mr2, r3
0033e8  9f010008  addli r3, zero, 1024
0033ec  b3900020  hfloat2float.rn r1, r1
0033f0  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
0033f4  e3406fe6  loadli.w r1,  -3276(r30)
0033f8  7e8101e0  vmmov mr2, r3
0033fc  9f010010  addli r3, zero, 2048
003400  b3900020  hfloat2float.rn r1, r1
003404  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
003408  e3007fe6  loadli.w r1,  -3272(r30)
00340c  7e8101e0  vmmov mr2, r3
003410  9f010020  addli r3, zero, 4096
003414  b3900020  hfloat2float.rn r1, r1
003418  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
00341c  e3407fe6  loadli.w r1,  -3268(r30)
003420  7e8101e0  vmmov mr2, r3
003424  ab410000  lui r3, 4
003428  b3900020  hfloat2float.rn r1, r1
00342c  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
003430  e3008fe6  loadli.w r1,  -3264(r30)
003434  7e8101e0  vmmov mr2, r3
003438  b3900020  hfloat2float.rn r1, r1
00343c  6aa36036  vor.u.mh vr6{mr3}, r1, vr6
003440  e3408fe6  loadli.w r1,  -3260(r30)
003444  b3900020  hfloat2float.rn r1, r1
003448  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
00344c  e3409fe6  loadli.w r1,  -3252(r30)
003450  e3019fe6  loadli.w r3,  -3256(r30)
003454  b3900020  hfloat2float.rn r1, r1
003458  b3910120  hfloat2float.rn r3, r3
00345c  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
003460  9f100000  addli r1, zero, 1
003464  7e8000e0  vmmov mr0, r1
003468  eaa25130  vor.u.mh vr5{mr0}, r3, vr5
00346c  e300afe6  loadli.w r1,  -3248(r30)
003470  9f210000  addli r3, zero, 2
003474  7e8001e0  vmmov mr0, r3
003478  9f410000  addli r3, zero, 4
00347c  b3900020  hfloat2float.rn r1, r1
003480  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
003484  e340afe6  loadli.w r1,  -3244(r30)
003488  7e8001e0  vmmov mr0, r3
00348c  9f011000  addli r3, zero, 8
003490  b3900020  hfloat2float.rn r1, r1
003494  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
003498  e300bfe6  loadli.w r1,  -3240(r30)
00349c  7e8001e0  vmmov mr0, r3
0034a0  9f012000  addli r3, zero, 16
0034a4  b3900020  hfloat2float.rn r1, r1
0034a8  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0034ac  e340bfe6  loadli.w r1,  -3236(r30)
0034b0  7e8001e0  vmmov mr0, r3
0034b4  9f014000  addli r3, zero, 32
0034b8  b3900020  hfloat2float.rn r1, r1
0034bc  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0034c0  e300cfe6  loadli.w r1,  -3232(r30)
0034c4  7e8001e0  vmmov mr0, r3
0034c8  9f018000  addli r3, zero, 64
0034cc  b3900020  hfloat2float.rn r1, r1
0034d0  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0034d4  e340cfe6  loadli.w r1,  -3228(r30)
0034d8  7e8001e0  vmmov mr0, r3
0034dc  9f010001  addli r3, zero, 128
0034e0  b3900020  hfloat2float.rn r1, r1
0034e4  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0034e8  e300dfe6  loadli.w r1,  -3224(r30)
0034ec  7e8001e0  vmmov mr0, r3
0034f0  9f010002  addli r3, zero, 256
0034f4  b3900020  hfloat2float.rn r1, r1
0034f8  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0034fc  e340dfe6  loadli.w r1,  -3220(r30)
003500  7e8001e0  vmmov mr0, r3
003504  9f010004  addli r3, zero, 512
003508  b3900020  hfloat2float.rn r1, r1
00350c  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
003510  e300efe6  loadli.w r1,  -3216(r30)
003514  7e8001e0  vmmov mr0, r3
003518  9f010008  addli r3, zero, 1024
00351c  b3900020  hfloat2float.rn r1, r1
003520  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
003524  e340efe6  loadli.w r1,  -3212(r30)
003528  7e8001e0  vmmov mr0, r3
00352c  9f010010  addli r3, zero, 2048
003530  b3900020  hfloat2float.rn r1, r1
003534  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
003538  e300ffe6  loadli.w r1,  -3208(r30)
00353c  7e8001e0  vmmov mr0, r3
003540  9f010020  addli r3, zero, 4096
003544  b3900020  hfloat2float.rn r1, r1
003548  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
00354c  e340ffe6  loadli.w r1,  -3204(r30)
003550  7e8001e0  vmmov mr0, r3
003554  b3900020  hfloat2float.rn r1, r1
003558  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
00355c  e300efe7  loadli.w r1,  -3088(r30)
003560  7e0002e0  vmmov mr0, r4
003564  2b820000  lui r4, 8
003568  b3900020  hfloat2float.rn r1, r1
00356c  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
003570  e340efe7  loadli.w r1,  -3084(r30)
003574  b3900020  hfloat2float.rn r1, r1
003578  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
00357c  e340ffe7  loadli.w r1,  -3076(r30)
003580  e301ffe7  loadli.w r3,  -3080(r30)
003584  b3900020  hfloat2float.rn r1, r1
003588  b3910120  hfloat2float.rn r3, r3
00358c  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
003590  9f100000  addli r1, zero, 1
003594  7e8000e0  vmmov mr0, r1
003598  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
00359c  e3000fe8  loadli.w r1,  -3072(r30)
0035a0  9f210000  addli r3, zero, 2
0035a4  7e8001e0  vmmov mr0, r3
0035a8  9f410000  addli r3, zero, 4
0035ac  b3900020  hfloat2float.rn r1, r1
0035b0  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0035b4  e3400fe8  loadli.w r1,  -3068(r30)
0035b8  7e8001e0  vmmov mr0, r3
0035bc  9f011000  addli r3, zero, 8
0035c0  b3900020  hfloat2float.rn r1, r1
0035c4  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0035c8  e3001fe8  loadli.w r1,  -3064(r30)
0035cc  7e8001e0  vmmov mr0, r3
0035d0  9f012000  addli r3, zero, 16
0035d4  b3900020  hfloat2float.rn r1, r1
0035d8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0035dc  e3401fe8  loadli.w r1,  -3060(r30)
0035e0  7e8001e0  vmmov mr0, r3
0035e4  9f014000  addli r3, zero, 32
0035e8  b3900020  hfloat2float.rn r1, r1
0035ec  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0035f0  e3002fe8  loadli.w r1,  -3056(r30)
0035f4  7e8001e0  vmmov mr0, r3
0035f8  9f018000  addli r3, zero, 64
0035fc  b3900020  hfloat2float.rn r1, r1
003600  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003604  e3402fe8  loadli.w r1,  -3052(r30)
003608  7e8001e0  vmmov mr0, r3
00360c  9f010001  addli r3, zero, 128
003610  b3900020  hfloat2float.rn r1, r1
003614  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003618  e3003fe8  loadli.w r1,  -3048(r30)
00361c  7e8001e0  vmmov mr0, r3
003620  9f010002  addli r3, zero, 256
003624  b3900020  hfloat2float.rn r1, r1
003628  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00362c  e3403fe8  loadli.w r1,  -3044(r30)
003630  7e8001e0  vmmov mr0, r3
003634  9f010004  addli r3, zero, 512
003638  b3900020  hfloat2float.rn r1, r1
00363c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003640  e3004fe8  loadli.w r1,  -3040(r30)
003644  7e8001e0  vmmov mr0, r3
003648  9f010008  addli r3, zero, 1024
00364c  b3900020  hfloat2float.rn r1, r1
003650  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003654  e3404fe8  loadli.w r1,  -3036(r30)
003658  7e8001e0  vmmov mr0, r3
00365c  9f010010  addli r3, zero, 2048
003660  b3900020  hfloat2float.rn r1, r1
003664  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003668  e3005fe8  loadli.w r1,  -3032(r30)
00366c  7e8001e0  vmmov mr0, r3
003670  9f010020  addli r3, zero, 4096
003674  b3900020  hfloat2float.rn r1, r1
003678  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00367c  e3405fe8  loadli.w r1,  -3028(r30)
003680  7e8001e0  vmmov mr0, r3
003684  b3900020  hfloat2float.rn r1, r1
003688  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00368c  e3006fe8  loadli.w r1,  -3024(r30)
003690  7e0002e0  vmmov mr0, r4
003694  2b820000  lui r4, 8
003698  b3900020  hfloat2float.rn r1, r1
00369c  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
0036a0  e3406fe8  loadli.w r1,  -3020(r30)
0036a4  b3900020  hfloat2float.rn r1, r1
0036a8  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
0036ac  e3407fe8  loadli.w r1,  -3012(r30)
0036b0  e3017fe8  loadli.w r3,  -3016(r30)
0036b4  b3900020  hfloat2float.rn r1, r1
0036b8  b3910120  hfloat2float.rn r3, r3
0036bc  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0036c0  9f100000  addli r1, zero, 1
0036c4  7e8000e0  vmmov mr0, r1
0036c8  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0036cc  e3006fe9  loadli.w r1,  -2896(r30)
0036d0  9f210000  addli r3, zero, 2
0036d4  7e8001e0  vmmov mr0, r3
0036d8  9f410000  addli r3, zero, 4
0036dc  b3900020  hfloat2float.rn r1, r1
0036e0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0036e4  e3406fe9  loadli.w r1,  -2892(r30)
0036e8  7e8001e0  vmmov mr0, r3
0036ec  9f011000  addli r3, zero, 8
0036f0  b3900020  hfloat2float.rn r1, r1
0036f4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0036f8  e3007fe9  loadli.w r1,  -2888(r30)
0036fc  7e8001e0  vmmov mr0, r3
003700  9f012000  addli r3, zero, 16
003704  b3900020  hfloat2float.rn r1, r1
003708  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00370c  e3407fe9  loadli.w r1,  -2884(r30)
003710  7e8001e0  vmmov mr0, r3
003714  9f014000  addli r3, zero, 32
003718  b3900020  hfloat2float.rn r1, r1
00371c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
003720  e3008fe9  loadli.w r1,  -2880(r30)
003724  7e8001e0  vmmov mr0, r3
003728  9f018000  addli r3, zero, 64
00372c  b3900020  hfloat2float.rn r1, r1
003730  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
003734  e3408fe9  loadli.w r1,  -2876(r30)
003738  7e8001e0  vmmov mr0, r3
00373c  9f010001  addli r3, zero, 128
003740  b3900020  hfloat2float.rn r1, r1
003744  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
003748  e3009fe9  loadli.w r1,  -2872(r30)
00374c  7e8001e0  vmmov mr0, r3
003750  9f010002  addli r3, zero, 256
003754  b3900020  hfloat2float.rn r1, r1
003758  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00375c  e3409fe9  loadli.w r1,  -2868(r30)
003760  7e8001e0  vmmov mr0, r3
003764  9f010004  addli r3, zero, 512
003768  b3900020  hfloat2float.rn r1, r1
00376c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
003770  e300afe9  loadli.w r1,  -2864(r30)
003774  7e8001e0  vmmov mr0, r3
003778  9f010008  addli r3, zero, 1024
00377c  b3900020  hfloat2float.rn r1, r1
003780  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
003784  e340afe9  loadli.w r1,  -2860(r30)
003788  7e8001e0  vmmov mr0, r3
00378c  9f010010  addli r3, zero, 2048
003790  b3900020  hfloat2float.rn r1, r1
003794  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
003798  e300bfe9  loadli.w r1,  -2856(r30)
00379c  7e8001e0  vmmov mr0, r3
0037a0  9f010020  addli r3, zero, 4096
0037a4  b3900020  hfloat2float.rn r1, r1
0037a8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0037ac  e340bfe9  loadli.w r1,  -2852(r30)
0037b0  7e8001e0  vmmov mr0, r3
0037b4  b3900020  hfloat2float.rn r1, r1
0037b8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0037bc  e300cfe9  loadli.w r1,  -2848(r30)
0037c0  b3900020  hfloat2float.rn r1, r1
0037c4  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
0037c8  e340cfe9  loadli.w r1,  -2844(r30)
0037cc  b3900020  hfloat2float.rn r1, r1
0037d0  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0037d4  fe0101c0  vmmov mr3, mr2
0037d8  e340dfe9  loadli.w r1,  -2836(r30)
0037dc  e301dfe9  loadli.w r3,  -2840(r30)
0037e0  7e0102e0  vmmov mr2, r4
0037e4  1f020fea  addli r4, r30, -2816
0037e8  b3900020  hfloat2float.rn r1, r1
0037ec  b3910120  hfloat2float.rn r3, r3
0037f0  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0037f4  9f100000  addli r1, zero, 1
0037f8  7e8000e0  vmmov mr0, r1
0037fc  6aa12130  vor.u.mh vr2{mr0}, r3, vr2
003800  e300efe9  loadli.w r1,  -2832(r30)
003804  9f210000  addli r3, zero, 2
003808  7e8001e0  vmmov mr0, r3
00380c  9f410000  addli r3, zero, 4
003810  b3900020  hfloat2float.rn r1, r1
003814  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
003818  e340efe9  loadli.w r1,  -2828(r30)
00381c  7e8001e0  vmmov mr0, r3
003820  9f011000  addli r3, zero, 8
003824  b3900020  hfloat2float.rn r1, r1
003828  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
00382c  e300ffe9  loadli.w r1,  -2824(r30)
003830  7e8001e0  vmmov mr0, r3
003834  9f012000  addli r3, zero, 16
003838  b3900020  hfloat2float.rn r1, r1
00383c  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
003840  e340ffe9  loadli.w r1,  -2820(r30)
003844  7e8001e0  vmmov mr0, r3
003848  9f014000  addli r3, zero, 32
00384c  b3900020  hfloat2float.rn r1, r1
003850  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
003854  e340afea  loadli.w r1,  -2732(r30)
003858  7e8001e0  vmmov mr0, r3
00385c  9f018000  addli r3, zero, 64
003860  b3900020  hfloat2float.rn r1, r1
003864  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
003868  e300bfea  loadli.w r1,  -2728(r30)
00386c  7e8001e0  vmmov mr0, r3
003870  9f010001  addli r3, zero, 128
003874  b3900020  hfloat2float.rn r1, r1
003878  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
00387c  e340bfea  loadli.w r1,  -2724(r30)
003880  7e8001e0  vmmov mr0, r3
003884  9f010002  addli r3, zero, 256
003888  b3900020  hfloat2float.rn r1, r1
00388c  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
003890  e300cfea  loadli.w r1,  -2720(r30)
003894  7e8001e0  vmmov mr0, r3
003898  9f010004  addli r3, zero, 512
00389c  b3900020  hfloat2float.rn r1, r1
0038a0  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0038a4  e340cfea  loadli.w r1,  -2716(r30)
0038a8  7e8001e0  vmmov mr0, r3
0038ac  9f010008  addli r3, zero, 1024
0038b0  b3900020  hfloat2float.rn r1, r1
0038b4  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0038b8  e300dfea  loadli.w r1,  -2712(r30)
0038bc  7e8001e0  vmmov mr0, r3
0038c0  9f010010  addli r3, zero, 2048
0038c4  b3900020  hfloat2float.rn r1, r1
0038c8  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0038cc  e340dfea  loadli.w r1,  -2708(r30)
0038d0  7e8001e0  vmmov mr0, r3
0038d4  9f010020  addli r3, zero, 4096
0038d8  b3900020  hfloat2float.rn r1, r1
0038dc  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0038e0  e300efea  loadli.w r1,  -2704(r30)
0038e4  7e8001e0  vmmov mr0, r3
0038e8  9f010040  addli r3, zero, 8192
0038ec  b3900020  hfloat2float.rn r1, r1
0038f0  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0038f4  e340efea  loadli.w r1,  -2700(r30)
0038f8  7e8001e0  vmmov mr0, r3
0038fc  b3900020  hfloat2float.rn r1, r1
003900  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
003904  e300ffea  loadli.w r1,  -2696(r30)
003908  b3900020  hfloat2float.rn r1, r1
00390c  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
003910  e3000feb  loadli.w r1,  -2688(r30)
003914  e341ffea  loadli.w r3,  -2692(r30)
003918  b3900020  hfloat2float.rn r1, r1
00391c  b3910120  hfloat2float.rn r3, r3
003920  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003924  9f100000  addli r1, zero, 1
003928  7e8000e0  vmmov mr0, r1
00392c  ab000080  lui r1, 524288
003930  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
003934  e3018feb  loadli.w r3,  -2624(r30)
003938  97a01100  xor r1, r3, r1
00393c  9295b002  vadd.f.mz.rn vr11{mr1}, r1, vr11
003940  0a95b502  vmul.f.mz.rn vr10{mr1}, r11, vr11
003944  e3410feb  loadli.w r3,  -2684(r30)
003948  c2150202  vload_mask16.mz vr11{mr1}, 0(r4)
00394c  1f028feb  addli r4, r30, -2624
003950  a614b502  vmac.f.mz.rn vr9{mr1}, vr10, vr11
003954  00a00000  mfence { lm }
003958  86750200  vfp162float_h.rn vr11, vr4
00395c  46109202  vstore_mask16.mz vr9{mr1}, 0(r4)
003960  1f220000  addli r4, zero, 2
003964  b3910120  hfloat2float.rn r3, r3
003968  9295b002  vadd.f.mz.rn vr11{mr1}, r1, vr11
00396c  8a95b502  vmul.f.mz.rn vr11{mr1}, r11, vr11
003970  7e0002e0  vmmov mr0, r4
003974  1f028fe8  addli r4, r30, -3008
003978  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
00397c  e3011feb  loadli.w r3,  -2680(r30)
003980  42120202  vload_mask16.mz vr4{mr1}, 0(r4)
003984  1f020ff3  addli r4, r30, -1664
003988  42150202  vload_mask16.mz vr10{mr1}, 0(r4)
00398c  b3910120  hfloat2float.rn r3, r3
003990  26954502  vmac.f.mz.rn vr10{mr1}, vr11, vr4
003994  4610a202  vstore_mask16.mz vr10{mr1}, 0(r4)
003998  1f420000  addli r4, zero, 4
00399c  7e0002e0  vmmov mr0, r4
0039a0  1f020fe7  addli r4, r30, -3200
0039a4  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
0039a8  9f010fec  addli r3, r30, -2560
0039ac  42150202  vload_mask16.mz vr10{mr1}, 0(r4)
0039b0  1f028ff2  addli r4, r30, -1728
0039b4  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
0039b8  86350200  vfp162float_l.rn vr11, vr4
0039bc  e3411feb  loadli.w r3,  -2676(r30)
0039c0  9295b002  vadd.f.mz.rn vr11{mr1}, r1, vr11
0039c4  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
0039c8  8a95b502  vmul.f.mz.rn vr11{mr1}, r11, vr11
0039cc  a694a502  vmac.f.mz.rn vr9{mr1}, vr11, vr10
0039d0  46109202  vstore_mask16.mz vr9{mr1}, 0(r4)
0039d4  1f021000  addli r4, zero, 8
0039d8  b3910120  hfloat2float.rn r3, r3
0039dc  86750200  vfp162float_h.rn vr11, vr4
0039e0  7e0002e0  vmmov mr0, r4
0039e4  1f028fe5  addli r4, r30, -3392
0039e8  9295b002  vadd.f.mz.rn vr11{mr1}, r1, vr11
0039ec  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
0039f0  e3012feb  loadli.w r3,  -2672(r30)
0039f4  8a95b502  vmul.f.mz.rn vr11{mr1}, r11, vr11
0039f8  42120202  vload_mask16.mz vr4{mr1}, 0(r4)
0039fc  1f028ff1  addli r4, r30, -1856
003a00  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
003a04  b3910120  hfloat2float.rn r3, r3
003a08  a6944502  vmac.f.mz.rn vr9{mr1}, vr11, vr4
003a0c  46109202  vstore_mask16.mz vr9{mr1}, 0(r4)
003a10  1f022000  addli r4, zero, 16
003a14  7e0002e0  vmmov mr0, r4
003a18  1f020fe4  addli r4, r30, -3584
003a1c  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
003a20  9f018fec  addli r3, r30, -2496
003a24  42150202  vload_mask16.mz vr10{mr1}, 0(r4)
003a28  1f020ff2  addli r4, r30, -1792
003a2c  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
003a30  86350200  vfp162float_l.rn vr11, vr4
003a34  e3412feb  loadli.w r3,  -2668(r30)
003a38  9295b002  vadd.f.mz.rn vr11{mr1}, r1, vr11
003a3c  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
003a40  8a95b502  vmul.f.mz.rn vr11{mr1}, r11, vr11
003a44  a694a502  vmac.f.mz.rn vr9{mr1}, vr11, vr10
003a48  46109202  vstore_mask16.mz vr9{mr1}, 0(r4)
003a4c  1f024000  addli r4, zero, 32
003a50  b3910120  hfloat2float.rn r3, r3
003a54  86750200  vfp162float_h.rn vr11, vr4
003a58  7e0002e0  vmmov mr0, r4
003a5c  1f028fe2  addli r4, r30, -3776
003a60  9295b002  vadd.f.mz.rn vr11{mr1}, r1, vr11
003a64  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
003a68  e3013feb  loadli.w r3,  -2664(r30)
003a6c  8a95b502  vmul.f.mz.rn vr11{mr1}, r11, vr11
003a70  42120202  vload_mask16.mz vr4{mr1}, 0(r4)
003a74  1f020ff1  addli r4, r30, -1920
003a78  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
003a7c  b3910120  hfloat2float.rn r3, r3
003a80  a6944502  vmac.f.mz.rn vr9{mr1}, vr11, vr4
003a84  46109202  vstore_mask16.mz vr9{mr1}, 0(r4)
003a88  1f028000  addli r4, zero, 64
003a8c  7e0002e0  vmmov mr0, r4
003a90  1f020fe1  addli r4, r30, -3968
003a94  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
003a98  9f010fed  addli r3, r30, -2432
003a9c  42150202  vload_mask16.mz vr10{mr1}, 0(r4)
003aa0  1f028ff0  addli r4, r30, -1984
003aa4  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
003aa8  86350200  vfp162float_l.rn vr11, vr4
003aac  e3413feb  loadli.w r3,  -2660(r30)
003ab0  9295b002  vadd.f.mz.rn vr11{mr1}, r1, vr11
003ab4  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
003ab8  8a95b502  vmul.f.mz.rn vr11{mr1}, r11, vr11
003abc  a694a502  vmac.f.mz.rn vr9{mr1}, vr11, vr10
003ac0  46109202  vstore_mask16.mz vr9{mr1}, 0(r4)
003ac4  1f020001  addli r4, zero, 128
003ac8  b3910120  hfloat2float.rn r3, r3
003acc  86750200  vfp162float_h.rn vr11, vr4
003ad0  7e0002e0  vmmov mr0, r4
003ad4  1f028fdf  addli r4, r30, -4160
003ad8  9295b002  vadd.f.mz.rn vr11{mr1}, r1, vr11
003adc  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
003ae0  e3014feb  loadli.w r3,  -2656(r30)
003ae4  8a95b502  vmul.f.mz.rn vr11{mr1}, r11, vr11
003ae8  42120202  vload_mask16.mz vr4{mr1}, 0(r4)
003aec  1f020ff0  addli r4, r30, -2048
003af0  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
003af4  b3910120  hfloat2float.rn r3, r3
003af8  a6944502  vmac.f.mz.rn vr9{mr1}, vr11, vr4
003afc  46109202  vstore_mask16.mz vr9{mr1}, 0(r4)
003b00  1f020002  addli r4, zero, 256
003b04  7e0002e0  vmmov mr0, r4
003b08  1f020fde  addli r4, r30, -4352
003b0c  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
003b10  9f018fed  addli r3, r30, -2368
003b14  42150202  vload_mask16.mz vr10{mr1}, 0(r4)
003b18  1f020004  addli r4, zero, 512
003b1c  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
003b20  e3414feb  loadli.w r3,  -2652(r30)
003b24  86350200  vfp162float_l.rn vr11, vr4
003b28  7e0002e0  vmmov mr0, r4
003b2c  9295b002  vadd.f.mz.rn vr11{mr1}, r1, vr11
003b30  1f028fdc  addli r4, r30, -4544
003b34  8a95b502  vmul.f.mz.rn vr11{mr1}, r11, vr11
003b38  2694a502  vmac.f.mz.rn vr8{mr1}, vr11, vr10
003b3c  b3910120  hfloat2float.rn r3, r3
003b40  86750200  vfp162float_h.rn vr11, vr4
003b44  9295b002  vadd.f.mz.rn vr11{mr1}, r1, vr11
003b48  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
003b4c  e3015feb  loadli.w r3,  -2648(r30)
003b50  42120202  vload_mask16.mz vr4{mr1}, 0(r4)
003b54  1f020008  addli r4, zero, 1024
003b58  8a95b502  vmul.f.mz.rn vr11{mr1}, r11, vr11
003b5c  a6934502  vmac.f.mz.rn vr7{mr1}, vr11, vr4
003b60  7e0002e0  vmmov mr0, r4
003b64  1f020fdc  addli r4, r30, -4608
003b68  b3910120  hfloat2float.rn r3, r3
003b6c  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
003b70  9f010fee  addli r3, r30, -2304
003b74  42150202  vload_mask16.mz vr10{mr1}, 0(r4)
003b78  1f020010  addli r4, zero, 2048
003b7c  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
003b80  e3415feb  loadli.w r3,  -2644(r30)
003b84  86350200  vfp162float_l.rn vr11, vr4
003b88  7e0002e0  vmmov mr0, r4
003b8c  1f020fdb  addli r4, r30, -4736
003b90  9295b002  vadd.f.mz.rn vr11{mr1}, r1, vr11
003b94  8a95b502  vmul.f.mz.rn vr11{mr1}, r11, vr11
003b98  2693a502  vmac.f.mz.rn vr6{mr1}, vr11, vr10
003b9c  b3910120  hfloat2float.rn r3, r3
003ba0  86750200  vfp162float_h.rn vr11, vr4
003ba4  9295b002  vadd.f.mz.rn vr11{mr1}, r1, vr11
003ba8  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
003bac  e3016feb  loadli.w r3,  -2640(r30)
003bb0  42120202  vload_mask16.mz vr4{mr1}, 0(r4)
003bb4  1f020020  addli r4, zero, 4096
003bb8  8a95b502  vmul.f.mz.rn vr11{mr1}, r11, vr11
003bbc  a6924502  vmac.f.mz.rn vr5{mr1}, vr11, vr4
003bc0  7e0002e0  vmmov mr0, r4
003bc4  1f020fda  addli r4, r30, -4864
003bc8  b3910120  hfloat2float.rn r3, r3
003bcc  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
003bd0  9f018fee  addli r3, r30, -2240
003bd4  42150202  vload_mask16.mz vr10{mr1}, 0(r4)
003bd8  1f020040  addli r4, zero, 8192
003bdc  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
003be0  e3416feb  loadli.w r3,  -2636(r30)
003be4  7e0002e0  vmmov mr0, r4
003be8  86350200  vfp162float_l.rn vr11, vr4
003bec  1f020fd9  addli r4, r30, -4992
003bf0  9295b002  vadd.f.mz.rn vr11{mr1}, r1, vr11
003bf4  8a95b502  vmul.f.mz.rn vr11{mr1}, r11, vr11
003bf8  a691a502  vmac.f.mz.rn vr3{mr1}, vr11, vr10
003bfc  b3910120  hfloat2float.rn r3, r3
003c00  86750200  vfp162float_h.rn vr11, vr4
003c04  9295b002  vadd.f.mz.rn vr11{mr1}, r1, vr11
003c08  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
003c0c  e3017feb  loadli.w r3,  -2632(r30)
003c10  42120202  vload_mask16.mz vr4{mr1}, 0(r4)
003c14  8a95b502  vmul.f.mz.rn vr11{mr1}, r11, vr11
003c18  a6904502  vmac.f.mz.rn vr1{mr1}, vr11, vr4
003c1c  1f020fd8  addli r4, r30, -5120
003c20  b3910120  hfloat2float.rn r3, r3
003c24  6aa00136  vor.u.mh vr0{mr3}, r3, vr0
003c28  9f010fef  addli r3, r30, -2176
003c2c  42150202  vload_mask16.mz vr10{mr1}, 0(r4)
003c30  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
003c34  86350200  vfp162float_l.rn vr11, vr4
003c38  e3417feb  loadli.w r3,  -2628(r30)
003c3c  9295b002  vadd.f.mz.rn vr11{mr1}, r1, vr11
003c40  8a95b502  vmul.f.mz.rn vr11{mr1}, r11, vr11
003c44  2691a502  vmac.f.mz.rn vr2{mr1}, vr11, vr10
003c48  86750200  vfp162float_h.rn vr11, vr4
003c4c  b3910120  hfloat2float.rn r3, r3
003c50  9295b002  vadd.f.mz.rn vr11{mr1}, r1, vr11
003c54  9f000fd7  addli r1, r30, -5248
003c58  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
003c5c  8a95b502  vmul.f.mz.rn vr11{mr1}, r11, vr11
003c60  eb518f00  load.d r[4:5], 8(r30)
003c64  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
003c68  9f000ff3  addli r1, r30, -1664
003c6c  26904502  vmac.f.mz.rn vr0{mr1}, vr11, vr4
003c70  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
003c74  9f008feb  addli r1, r30, -2624
003c78  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
003c7c  9f000fef  addli r1, r30, -2176
003c80  06950400  vfloat2fp16_l.rn vr10, vr9
003c84  06550200  vfloat2fp16_h.rn vr10, vr4
003c88  4690a002  vstore_mask16.mz vr10{mr1}, 0(r1)
003c8c  9f008ff2  addli r1, r30, -1728
003c90  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
003c94  9f008ff1  addli r1, r30, -1856
003c98  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
003c9c  9f000ff3  addli r1, r30, -1664
003ca0  06150200  vfloat2fp16_l.rn vr10, vr4
003ca4  06d50400  vfloat2fp16_h.rn vr10, vr9
003ca8  4690a002  vstore_mask16.mz vr10{mr1}, 0(r1)
003cac  9f000ff2  addli r1, r30, -1792
003cb0  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
003cb4  9f000ff1  addli r1, r30, -1920
003cb8  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
003cbc  9f008ff0  addli r1, r30, -1984
003cc0  86150200  vfloat2fp16_l.rn vr11, vr4
003cc4  86d50400  vfloat2fp16_h.rn vr11, vr9
003cc8  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
003ccc  9f000ff0  addli r1, r30, -2048
003cd0  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
003cd4  9f000fef  addli r1, r30, -2176
003cd8  06920400  vfloat2fp16_l.rn vr4, vr9
003cdc  06520500  vfloat2fp16_h.rn vr4, vr10
003ce0  86140400  vfloat2fp16_l.rn vr9, vr8
003ce4  86d40300  vfloat2fp16_h.rn vr9, vr7
003ce8  86130300  vfloat2fp16_l.rn vr7, vr6
003cec  86d30200  vfloat2fp16_h.rn vr7, vr5
003cf0  86920100  vfloat2fp16_l.rn vr5, vr3
003cf4  86d20000  vfloat2fp16_h.rn vr5, vr1
003cf8  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
003cfc  9f008ff3  addli r1, r30, -1600
003d00  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
003d04  9f000ff3  addli r1, r30, -1664
003d08  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
003d0c  9f000ff4  addli r1, r30, -1536
003d10  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
003d14  9f008ff4  addli r1, r30, -1472
003d18  86100100  vfloat2fp16_l.rn vr1, vr2
003d1c  86500000  vfloat2fp16_h.rn vr1, vr0
003d20  4690b002  vstore_mask16.mz vr11{mr1}, 0(r1)
003d24  9f000ff5  addli r1, r30, -1408
003d28  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
003d2c  9f008ff5  addli r1, r30, -1344
003d30  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
003d34  9f000ff6  addli r1, r30, -1280
003d38  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
003d3c  9f008ff6  addli r1, r30, -1216
003d40  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
003d44  9f000ff7  addli r1, r30, -1152
003d48  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
003d4c  ab0000f0  lui r1, 983040
003d50  ebd20300  load.d r[6:7], 0(r7)
003d54  00a00000  mfence { lm }
003d58  97901400  or r1, r9, r1
003d5c  8ba15110  add.ul r[4:5], r[4:5], r[6:7]
003d60  9f020001  addli r5, zero, 128
003d64  ffb02100  s_lm2gm r1, r2, 0(r[4:5])
003d68  1f72f00f  addli r4, zero, 2047
003d6c  00a00000  mfence { lm }
003d70  6305bfce  loadli.w r10,  -6312(r30)
003d74  e3437fce  loadli.w r7,  -6340(r30)
003d78  e301dfce  loadli.w r3,  -6296(r30)
003d7c  1f190900  addli r18, r18, 1
003d80  b72259e2  beq r18, r5, -15192
003d84  9b301900  slli r1, r18, 1
003d88  8b901110  add.s r1, r3, r1
003d8c  bf4f12fe  blt.s r4, r1, -16
003d90  9f010000  addli r3, zero, 0
003d94  0b123110  add.s r4, r2, r3
003d98  9fc10100  addli r3, r3, 4
003d9c  73100200  store.h zero, 0(r4)
003da0  73110200  store.h zero, 2(r4)
003da4  00a00000  mfence { lm }
003da8  bbbf81fe  bneq r3, r8, -20
003dac  6342bfce  loadli.w r4,  -6308(r30)
003db0  9bb1b000  slli r3, r1, 11
003db4  ab0200f0  lui r5, 983040
003db8  1f130000  addli r6, zero, 1
003dbc  8b914110  add.s r3, r3, r4
003dc0  b3910128  sext_int2long r[4:5], r3
003dc4  97b56102  sll.d r[12:13], r[4:5], r6
003dc8  97915400  or r3, r9, r5
003dcc  6b520f00  load.d r[5:6], 0(r30)
003dd0  1f03ffef  addli r6, r30, -2056
003dd4  7330b300  store.d r[12:13], 0(r6)
003dd8  0b22b210  add.ul r[5:6], r[5:6], r[12:13]
003ddc  ff212200  l_gm2lm r3, r2, 0(r[5:6])
003de0  9f018ff3  addli r3, r30, -1600
003de4  9f020ff3  addli r5, r30, -1664
003de8  00a00000  mfence { lm }
003dec  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
003df0  06310000  vfp162float_l.rn vr2, vr0
003df4  86710000  vfp162float_h.rn vr3, vr0
003df8  9f010ff4  addli r3, r30, -1536
003dfc  12112002  vadd.f.mz.rn vr2{mr1}, zero, vr2
003e00  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
003e04  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
003e08  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
003e0c  86b10000  vfp162float_l.rn vr3, vr1
003e10  06f20000  vfp162float_h.rn vr4, vr1
003e14  9f018ff4  addli r3, r30, -1472
003e18  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
003e1c  12124002  vadd.f.mz.rn vr4{mr1}, zero, vr4
003e20  96113102  vadd.f.mz.rn vr3{mr1}, vr2, vr3
003e24  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
003e28  86720100  vfp162float_h.rn vr5, vr2
003e2c  9f010ff5  addli r3, r30, -1408
003e30  0e450002  vmul.hf.mz.rn vr10{mr1}, vr0, vr0
003e34  92125002  vadd.f.mz.rn vr5{mr1}, zero, vr5
003e38  96914102  vadd.f.mz.rn vr3{mr1}, vr3, vr4
003e3c  06320100  vfp162float_l.rn vr4, vr2
003e40  12124002  vadd.f.mz.rn vr4{mr1}, zero, vr4
003e44  0e412102  vmul.hf.mz.rn vr2{mr1}, vr2, vr2
003e48  16924102  vadd.f.mz.rn vr4{mr1}, vr3, vr4
003e4c  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
003e50  06f30100  vfp162float_h.rn vr6, vr3
003e54  9f018ff5  addli r3, r30, -1344
003e58  12136002  vadd.f.mz.rn vr6{mr1}, zero, vr6
003e5c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003e60  86b20100  vfp162float_l.rn vr5, vr3
003e64  92125002  vadd.f.mz.rn vr5{mr1}, zero, vr5
003e68  8ec13102  vmul.hf.mz.rn vr3{mr1}, vr3, vr3
003e6c  86b50100  vfp162float_l.rn vr11, vr3
003e70  96125202  vadd.f.mz.rn vr5{mr1}, vr4, vr5
003e74  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
003e78  86730200  vfp162float_h.rn vr7, vr4
003e7c  9f010ff6  addli r3, r30, -1280
003e80  92137002  vadd.f.mz.rn vr7{mr1}, zero, vr7
003e84  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
003e88  06330200  vfp162float_l.rn vr6, vr4
003e8c  12136002  vadd.f.mz.rn vr6{mr1}, zero, vr6
003e90  0e424202  vmul.hf.mz.rn vr4{mr1}, vr4, vr4
003e94  16936202  vadd.f.mz.rn vr6{mr1}, vr5, vr6
003e98  c2920102  vload_mask16.mz vr5{mr1}, 0(r3)
003e9c  06f40200  vfp162float_h.rn vr8, vr5
003ea0  9f018ff6  addli r3, r30, -1216
003ea4  12148002  vadd.f.mz.rn vr8{mr1}, zero, vr8
003ea8  16137302  vadd.f.mz.rn vr6{mr1}, vr6, vr7
003eac  86b30200  vfp162float_l.rn vr7, vr5
003eb0  92137002  vadd.f.mz.rn vr7{mr1}, zero, vr7
003eb4  8ec25202  vmul.hf.mz.rn vr5{mr1}, vr5, vr5
003eb8  96137302  vadd.f.mz.rn vr7{mr1}, vr6, vr7
003ebc  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
003ec0  86740300  vfp162float_h.rn vr9, vr6
003ec4  9f010ff7  addli r3, r30, -1152
003ec8  92149002  vadd.f.mz.rn vr9{mr1}, zero, vr9
003ecc  96938302  vadd.f.mz.rn vr7{mr1}, vr7, vr8
003ed0  06340300  vfp162float_l.rn vr8, vr6
003ed4  12148002  vadd.f.mz.rn vr8{mr1}, zero, vr8
003ed8  0e436302  vmul.hf.mz.rn vr6{mr1}, vr6, vr6
003edc  96938302  vadd.f.mz.rn vr7{mr1}, vr7, vr8
003ee0  42940102  vload_mask16.mz vr8{mr1}, 0(r3)
003ee4  96939302  vadd.f.mz.rn vr7{mr1}, vr7, vr9
003ee8  86340400  vfp162float_l.rn vr9, vr8
003eec  92149002  vadd.f.mz.rn vr9{mr1}, zero, vr9
003ef0  96939302  vadd.f.mz.rn vr7{mr1}, vr7, vr9
003ef4  86740400  vfp162float_h.rn vr9, vr8
003ef8  0e448402  vmul.hf.mz.rn vr8{mr1}, vr8, vr8
003efc  92149002  vadd.f.mz.rn vr9{mr1}, zero, vr9
003f00  96939302  vadd.f.mz.rn vr7{mr1}, vr7, vr9
003f04  8ec41002  vmul.hf.mz.rn vr9{mr1}, vr1, vr1
003f08  06b00400  vfp162float_l.rn vr0, vr9
003f0c  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
003f10  9f028ff2  addli r5, r30, -1728
003f14  86700300  vfp162float_h.rn vr1, vr6
003f18  06f00400  vfp162float_h.rn vr0, vr9
003f1c  86f40100  vfp162float_h.rn vr9, vr3
003f20  86710200  vfp162float_h.rn vr3, vr4
003f24  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
003f28  06300100  vfp162float_l.rn vr0, vr2
003f2c  9f020ff3  addli r5, r30, -1664
003f30  fa910340  vextracti.f r3, 0(vr7)
003f34  7a921340  vextracti.f r4, 1(vr7)
003f38  8be14110  add.f.rn r3, r3, r4
003f3c  7a922340  vextracti.f r4, 2(vr7)
003f40  8b613210  add.f.rn r3, r4, r3
003f44  7a923340  vextracti.f r4, 3(vr7)
003f48  8b613210  add.f.rn r3, r4, r3
003f4c  7a924340  vextracti.f r4, 4(vr7)
003f50  8b613210  add.f.rn r3, r4, r3
003f54  7a925340  vextracti.f r4, 5(vr7)
003f58  8b613210  add.f.rn r3, r4, r3
003f5c  7a926340  vextracti.f r4, 6(vr7)
003f60  8b613210  add.f.rn r3, r4, r3
003f64  7a927340  vextracti.f r4, 7(vr7)
003f68  8b613210  add.f.rn r3, r4, r3
003f6c  7a928340  vextracti.f r4, 8(vr7)
003f70  8b613210  add.f.rn r3, r4, r3
003f74  7a929340  vextracti.f r4, 9(vr7)
003f78  8b613210  add.f.rn r3, r4, r3
003f7c  7a92a340  vextracti.f r4, 10(vr7)
003f80  8b613210  add.f.rn r3, r4, r3
003f84  7a92b340  vextracti.f r4, 11(vr7)
003f88  8b613210  add.f.rn r3, r4, r3
003f8c  7a92c340  vextracti.f r4, 12(vr7)
003f90  8b613210  add.f.rn r3, r4, r3
003f94  7a92d340  vextracti.f r4, 13(vr7)
003f98  8b613210  add.f.rn r3, r4, r3
003f9c  1f020ff2  addli r4, r30, -1792
003fa0  46100202  vstore_mask16.mz vr0{mr1}, 0(r4)
003fa4  1f028ff1  addli r4, r30, -1856
003fa8  06700100  vfp162float_h.rn vr0, vr2
003fac  06710400  vfp162float_h.rn vr2, vr8
003fb0  46100202  vstore_mask16.mz vr0{mr1}, 0(r4)
003fb4  7a92e340  vextracti.f r4, 14(vr7)
003fb8  06f00200  vfp162float_h.rn vr0, vr5
003fbc  8b613210  add.f.rn r3, r4, r3
003fc0  7a92f340  vextracti.f r4, 15(vr7)
003fc4  86330200  vfp162float_l.rn vr7, vr4
003fc8  06b20200  vfp162float_l.rn vr4, vr5
003fcc  86320300  vfp162float_l.rn vr5, vr6
003fd0  06330400  vfp162float_l.rn vr6, vr8
003fd4  42940202  vload_mask16.mz vr8{mr1}, 0(r5)
003fd8  12148002  vadd.f.mz.rn vr8{mr1}, zero, vr8
003fdc  46908202  vstore_mask16.mz vr8{mr1}, 0(r5)
003fe0  9f028ff2  addli r5, r30, -1728
003fe4  92137002  vadd.f.mz.rn vr7{mr1}, zero, vr7
003fe8  42940202  vload_mask16.mz vr8{mr1}, 0(r5)
003fec  12148002  vadd.f.mz.rn vr8{mr1}, zero, vr8
003ff0  46908202  vstore_mask16.mz vr8{mr1}, 0(r5)
003ff4  9f020ff2  addli r5, r30, -1792
003ff8  42940202  vload_mask16.mz vr8{mr1}, 0(r5)
003ffc  8b613210  add.f.rn r3, r4, r3
004000  6342cfce  loadli.w r4,  -6300(r30)
004004  12148002  vadd.f.mz.rn vr8{mr1}, zero, vr8
004008  46908202  vstore_mask16.mz vr8{mr1}, 0(r5)
00400c  9f028ff1  addli r5, r30, -1856
004010  42940202  vload_mask16.mz vr8{mr1}, 0(r5)
004014  12148002  vadd.f.mz.rn vr8{mr1}, zero, vr8
004018  46908202  vstore_mask16.mz vr8{mr1}, 0(r5)
00401c  9f020ff1  addli r5, r30, -1920
004020  1214b002  vadd.f.mz.rn vr8{mr1}, zero, vr11
004024  92151002  vadd.f.mz.rn vr11{mr1}, zero, vr1
004028  86300500  vfp162float_l.rn vr1, vr10
00402c  46908202  vstore_mask16.mz vr8{mr1}, 0(r5)
004030  9f028ff0  addli r5, r30, -1984
004034  12149002  vadd.f.mz.rn vr8{mr1}, zero, vr9
004038  92140002  vadd.f.mz.rn vr9{mr1}, zero, vr0
00403c  12102002  vadd.f.mz.rn vr0{mr1}, zero, vr2
004040  06710500  vfp162float_h.rn vr2, vr10
004044  73603200  stores.w r3, 0(r4)
004048  92101002  vadd.f.mz.rn vr1{mr1}, zero, vr1
00404c  12112002  vadd.f.mz.rn vr2{mr1}, zero, vr2
004050  46908202  vstore_mask16.mz vr8{mr1}, 0(r5)
004054  9f020ff0  addli r5, r30, -2048
004058  12144002  vadd.f.mz.rn vr8{mr1}, zero, vr4
00405c  12126002  vadd.f.mz.rn vr4{mr1}, zero, vr6
004060  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
004064  92133002  vadd.f.mz.rn vr7{mr1}, zero, vr3
004068  92115002  vadd.f.mz.rn vr3{mr1}, zero, vr5
00406c  00a00300  mfence { lm, sm, gm }
004070  80a10304  csr_set csr3, r7
004074  00d00100  sync_group
004078  3b140500  bneq r10, zero, 260
00407c  efc10c00  loads.w r3, 0(r25)
004080  6fc24c00  loads.w r4, 4(r25)
004084  efc28c00  loads.w r5, 8(r25)
004088  8be14110  add.f.rn r3, r3, r4
00408c  6fc2cc00  loads.w r4, 12(r25)
004090  8be15110  add.f.rn r3, r3, r5
004094  efc20c01  loads.w r5, 16(r25)
004098  8be14110  add.f.rn r3, r3, r4
00409c  6fc24c01  loads.w r4, 20(r25)
0040a0  8be15110  add.f.rn r3, r3, r5
0040a4  efc28c01  loads.w r5, 24(r25)
0040a8  8be14110  add.f.rn r3, r3, r4
0040ac  6fc2cc01  loads.w r4, 28(r25)
0040b0  8be15110  add.f.rn r3, r3, r5
0040b4  efc20c02  loads.w r5, 32(r25)
0040b8  8be14110  add.f.rn r3, r3, r4
0040bc  6fc24c02  loads.w r4, 36(r25)
0040c0  8be15110  add.f.rn r3, r3, r5
0040c4  efc28c02  loads.w r5, 40(r25)
0040c8  8be14110  add.f.rn r3, r3, r4
0040cc  6fc2cc02  loads.w r4, 44(r25)
0040d0  8be15110  add.f.rn r3, r3, r5
0040d4  efc20c03  loads.w r5, 48(r25)
0040d8  8be14110  add.f.rn r3, r3, r4
0040dc  6fc24c03  loads.w r4, 52(r25)
0040e0  8be15110  add.f.rn r3, r3, r5
0040e4  efc28c03  loads.w r5, 56(r25)
0040e8  8be14110  add.f.rn r3, r3, r4
0040ec  6fc2cc03  loads.w r4, 60(r25)
0040f0  8be15110  add.f.rn r3, r3, r5
0040f4  efc20c04  loads.w r5, 64(r25)
0040f8  8be14110  add.f.rn r3, r3, r4
0040fc  6fc24c04  loads.w r4, 68(r25)
004100  8be15110  add.f.rn r3, r3, r5
004104  efc28c04  loads.w r5, 72(r25)
004108  8be14110  add.f.rn r3, r3, r4
00410c  6fc2cc04  loads.w r4, 76(r25)
004110  8be15110  add.f.rn r3, r3, r5
004114  efc20c05  loads.w r5, 80(r25)
004118  8be14110  add.f.rn r3, r3, r4
00411c  6fc24c05  loads.w r4, 84(r25)
004120  8be15110  add.f.rn r3, r3, r5
004124  efc28c05  loads.w r5, 88(r25)
004128  8be14110  add.f.rn r3, r3, r4
00412c  6fc2cc05  loads.w r4, 92(r25)
004130  8be15110  add.f.rn r3, r3, r5
004134  efc20c06  loads.w r5, 96(r25)
004138  8be14110  add.f.rn r3, r3, r4
00413c  6fc24c06  loads.w r4, 100(r25)
004140  8be15110  add.f.rn r3, r3, r5
004144  efc28c06  loads.w r5, 104(r25)
004148  8be14110  add.f.rn r3, r3, r4
00414c  6fc2cc06  loads.w r4, 108(r25)
004150  8be15110  add.f.rn r3, r3, r5
004154  efc20c07  loads.w r5, 112(r25)
004158  8be14110  add.f.rn r3, r3, r4
00415c  6fc24c07  loads.w r4, 116(r25)
004160  8be15110  add.f.rn r3, r3, r5
004164  efc28c07  loads.w r5, 120(r25)
004168  8be14110  add.f.rn r3, r3, r4
00416c  6fc2cc07  loads.w r4, 124(r25)
004170  8be15110  add.f.rn r3, r3, r5
004174  8be14110  add.f.rn r3, r3, r4
004178  73e03c00  stores.w r3, 0(r25)
00417c  9f010ff3  addli r3, r30, -1664
004180  00a00300  mfence { lm, sm, gm }
004184  80a10304  csr_set csr3, r7
004188  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
00418c  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
004190  9f018ff2  addli r3, r30, -1728
004194  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
004198  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
00419c  9f010ff2  addli r3, r30, -1792
0041a0  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0041a4  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
0041a8  9f018ff1  addli r3, r30, -1856
0041ac  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0041b0  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
0041b4  9f010ff1  addli r3, r30, -1920
0041b8  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0041bc  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
0041c0  9f018ff0  addli r3, r30, -1984
0041c4  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0041c8  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
0041cc  9f010ff0  addli r3, r30, -2048
0041d0  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0041d4  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
0041d8  00d00100  sync_group
0041dc  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0041e0  96907002  vadd.f.mz.rn vr1{mr1}, vr1, vr7
0041e4  96908002  vadd.f.mz.rn vr1{mr1}, vr1, vr8
0041e8  96909002  vadd.f.mz.rn vr1{mr1}, vr1, vr9
0041ec  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0041f0  9690b002  vadd.f.mz.rn vr1{mr1}, vr1, vr11
0041f4  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0041f8  16900002  vadd.f.mz.rn vr0{mr1}, vr1, vr0
0041fc  fa110040  vextracti.f r3, 0(vr0)
004200  7a121040  vextracti.f r4, 1(vr0)
004204  fa12f040  vextracti.f r5, 15(vr0)
004208  8be14110  add.f.rn r3, r3, r4
00420c  7a122040  vextracti.f r4, 2(vr0)
004210  8b613210  add.f.rn r3, r4, r3
004214  7a123040  vextracti.f r4, 3(vr0)
004218  8b613210  add.f.rn r3, r4, r3
00421c  7a124040  vextracti.f r4, 4(vr0)
004220  8b613210  add.f.rn r3, r4, r3
004224  7a125040  vextracti.f r4, 5(vr0)
004228  8b613210  add.f.rn r3, r4, r3
00422c  7a126040  vextracti.f r4, 6(vr0)
004230  8b613210  add.f.rn r3, r4, r3
004234  7a127040  vextracti.f r4, 7(vr0)
004238  8b613210  add.f.rn r3, r4, r3
00423c  7a128040  vextracti.f r4, 8(vr0)
004240  8b613210  add.f.rn r3, r4, r3
004244  7a129040  vextracti.f r4, 9(vr0)
004248  8b613210  add.f.rn r3, r4, r3
00424c  7a12a040  vextracti.f r4, 10(vr0)
004250  8b613210  add.f.rn r3, r4, r3
004254  7a12b040  vextracti.f r4, 11(vr0)
004258  8b613210  add.f.rn r3, r4, r3
00425c  7a12c040  vextracti.f r4, 12(vr0)
004260  8b613210  add.f.rn r3, r4, r3
004264  7a12d040  vextracti.f r4, 13(vr0)
004268  8b613210  add.f.rn r3, r4, r3
00426c  7a12e040  vextracti.f r4, 14(vr0)
004270  0b623210  add.f.rn r4, r4, r3
004274  efc10c00  loads.w r3, 0(r25)
004278  0be24210  add.f.rn r4, r5, r4
00427c  e302cfce  loadli.w r5,  -6304(r30)
004280  73e04200  stores.w r4, 0(r5)
004284  00a00300  mfence { lm, sm, gm }
004288  80a10304  csr_set csr3, r7
00428c  00d00100  sync_group
004290  3b140500  bneq r10, zero, 260
004294  6f420b00  loads.w r4, 0(r22)
004298  ef424b00  loads.w r5, 4(r22)
00429c  6f438b00  loads.w r6, 8(r22)
0042a0  0b625210  add.f.rn r4, r4, r5
0042a4  ef42cb00  loads.w r5, 12(r22)
0042a8  0b626210  add.f.rn r4, r4, r6
0042ac  6f430b01  loads.w r6, 16(r22)
0042b0  0b625210  add.f.rn r4, r4, r5
0042b4  ef424b01  loads.w r5, 20(r22)
0042b8  0b626210  add.f.rn r4, r4, r6
0042bc  6f438b01  loads.w r6, 24(r22)
0042c0  0b625210  add.f.rn r4, r4, r5
0042c4  ef42cb01  loads.w r5, 28(r22)
0042c8  0b626210  add.f.rn r4, r4, r6
0042cc  6f430b02  loads.w r6, 32(r22)
0042d0  0b625210  add.f.rn r4, r4, r5
0042d4  ef424b02  loads.w r5, 36(r22)
0042d8  0b626210  add.f.rn r4, r4, r6
0042dc  6f438b02  loads.w r6, 40(r22)
0042e0  0b625210  add.f.rn r4, r4, r5
0042e4  ef42cb02  loads.w r5, 44(r22)
0042e8  0b626210  add.f.rn r4, r4, r6
0042ec  6f430b03  loads.w r6, 48(r22)
0042f0  0b625210  add.f.rn r4, r4, r5
0042f4  ef424b03  loads.w r5, 52(r22)
0042f8  0b626210  add.f.rn r4, r4, r6
0042fc  6f438b03  loads.w r6, 56(r22)
004300  0b625210  add.f.rn r4, r4, r5
004304  ef42cb03  loads.w r5, 60(r22)
004308  0b626210  add.f.rn r4, r4, r6
00430c  6f430b04  loads.w r6, 64(r22)
004310  0b625210  add.f.rn r4, r4, r5
004314  ef424b04  loads.w r5, 68(r22)
004318  0b626210  add.f.rn r4, r4, r6
00431c  6f438b04  loads.w r6, 72(r22)
004320  0b625210  add.f.rn r4, r4, r5
004324  ef42cb04  loads.w r5, 76(r22)
004328  0b626210  add.f.rn r4, r4, r6
00432c  6f430b05  loads.w r6, 80(r22)
004330  0b625210  add.f.rn r4, r4, r5
004334  ef424b05  loads.w r5, 84(r22)
004338  0b626210  add.f.rn r4, r4, r6
00433c  6f438b05  loads.w r6, 88(r22)
004340  0b625210  add.f.rn r4, r4, r5
004344  ef42cb05  loads.w r5, 92(r22)
004348  0b626210  add.f.rn r4, r4, r6
00434c  6f430b06  loads.w r6, 96(r22)
004350  0b625210  add.f.rn r4, r4, r5
004354  ef424b06  loads.w r5, 100(r22)
004358  0b626210  add.f.rn r4, r4, r6
00435c  6f438b06  loads.w r6, 104(r22)
004360  0b625210  add.f.rn r4, r4, r5
004364  ef42cb06  loads.w r5, 108(r22)
004368  0b626210  add.f.rn r4, r4, r6
00436c  6f430b07  loads.w r6, 112(r22)
004370  0b625210  add.f.rn r4, r4, r5
004374  ef424b07  loads.w r5, 116(r22)
004378  0b626210  add.f.rn r4, r4, r6
00437c  6f438b07  loads.w r6, 120(r22)
004380  0b625210  add.f.rn r4, r4, r5
004384  ef42cb07  loads.w r5, 124(r22)
004388  0b626210  add.f.rn r4, r4, r6
00438c  0b625210  add.f.rn r4, r4, r5
004390  73604b00  stores.w r4, 0(r22)
004394  00a00300  mfence { lm, sm, gm }
004398  80a10304  csr_set csr3, r7
00439c  00d00100  sync_group
0043a0  6f420b00  loads.w r4, 0(r22)
0043a4  ab02003a  lui r5, 237568
0043a8  0be65120  mul.f.rn r12, r3, r5
0043ac  8b615220  mul.f.rn r3, r4, r5
0043b0  0b62c620  mul.f.rn r4, r12, r12
0043b4  8be14118  sub.f.rn r3, r3, r4
0043b8  63024f00  loadli.w r4,  32(r30)
0043bc  8b613210  add.f.rn r3, r4, r3
0043c0  2b02803f  lui r4, 260096
0043c4  8f810108  sqrt.f.rn r3, r3
0043c8  8f053218  div.f.rn r11, r4, r3
0043cc  e341afce  loadli.w r3,  -6316(r30)
0043d0  b78a01de  beq r3, zero, -16736
0043d4  b3910028  sext_int2long r[4:5], r1
0043d8  9f120000  addli r5, zero, 1
0043dc  b3200600  float2hfloat.rn r1, r12
0043e0  1f250000  addli r10, zero, 2
0043e4  9f038ff7  addli r7, r30, -1088
0043e8  97b15102  sll.d r[4:5], r[4:5], r5
0043ec  eb528f02  load.d r[6:7], 40(r30)
0043f0  73101fbc  store.h r1, -1088(r30)
0043f4  ab0000f0  lui r1, 983040
0043f8  00a00000  mfence { lm }
0043fc  97101500  or r1, r10, r1
004400  8ba23210  add.ul r[6:7], r[6:7], r[4:5]
004404  ffb07200  s_lm2gm r1, r7, 0(r[6:7])
004408  b3a00500  float2hfloat.rn r1, r11
00440c  00a00000  mfence { lm }
004410  eb520f03  load.d r[6:7], 48(r30)
004414  73101fbc  store.h r1, -1088(r30)
004418  00a00000  mfence { lm }
00441c  8ba13210  add.ul r[4:5], r[6:7], r[4:5]
004420  ab0200f0  lui r5, 983040
004424  97105500  or r1, r10, r5
004428  ffb07100  s_lm2gm r1, r7, 0(r[4:5])
00442c  00a00000  mfence { lm }
004430  5bc8f7ff  j -16832
004434  00100000  exit
004438  00100000  exit
00443c  00100000  exit
004440  00100000  exit
004444  00100000  exit
004448  00100000  exit
00444c  00100000  exit
004450  00100000  exit
004454  00100000  exit
004458  00100000  exit
00445c  00100000  exit
004460  00100000  exit
004464  00100000  exit
004468  00100000  exit
00446c  00100000  exit
004470  00100000  exit
004474  00100000  exit
004478  00100000  exit
00447c  00100000  exit
004480  00100000  exit
004484  00100000  exit
004488  00100000  exit
00448c  00100000  exit
004490  00100000  exit
004494  00100000  exit
004498  00100000  exit
00449c  00100000  exit
0044a0  00100000  exit
0044a4  00100000  exit
0044a8  00100000  exit
0044ac  00100000  exit
0044b0  00100000  exit
0044b4  00100000  exit
0044b8  00100000  exit
0044bc  00100000  exit
0044c0  00100000  exit
0044c4  00100000  exit
0044c8  00100000  exit
0044cc  00100000  exit
0044d0  00100000  exit
0044d4  00100000  exit
0044d8  00100000  exit
0044dc  00100000  exit
0044e0  00100000  exit
0044e4  00100000  exit
0044e8  00100000  exit
0044ec  00100000  exit
0044f0  00100000  exit
0044f4  00100000  exit
0044f8  00100000  exit
0044fc  00100000  exit
004500  00100000  exit
004504  00100000  exit
004508  00100000  exit
00450c  00100000  exit
004510  00100000  exit
004514  00100000  exit
004518  00100000  exit
00451c  00100000  exit
004520  00100000  exit
004524  00100000  exit
004528  00100000  exit
00452c  00100000  exit
004530  00100000  exit
004534  00100000  exit
004538  00100000  exit
00453c  00100000  exit
004540  00100000  exit
004544  00100000  exit
004548  00100000  exit
00454c  00100000  exit
004550  00100000  exit
004554  00100000  exit
004558  00100000  exit
00455c  00100000  exit
004560  00100000  exit
004564  00100000  exit
004568  00100000  exit
00456c  00100000  exit
004570  00100000  exit
004574  00100000  exit
004578  00100000  exit
00457c  00100000  exit
004580  00100000  exit
004584  00100000  exit
004588  00100000  exit
00458c  00100000  exit
004590  00100000  exit
004594  00100000  exit
004598  00100000  exit
00459c  00100000  exit
0045a0  00100000  exit
0045a4  00100000  exit
0045a8  00100000  exit
0045ac  00100000  exit
0045b0  00100000  exit
0045b4  00100000  exit
0045b8  00100000  exit
0045bc  00100000  exit
0045c0  00100000  exit
0045c4  00100000  exit
0045c8  00100000  exit
0045cc  00100000  exit
0045d0  00100000  exit
0045d4  00100000  exit
0045d8  00100000  exit
0045dc  00100000  exit
0045e0  00100000  exit
0045e4  00100000  exit
0045e8  00100000  exit
0045ec  00100000  exit
0045f0  00100000  exit
0045f4  00100000  exit
0045f8  00100000  exit
0045fc  00100000  exit
004600  00100000  exit
004604  00100000  exit
004608  00100000  exit
00460c  00100000  exit
004610  00100000  exit
004614  00100000  exit
004618  00100000  exit
00461c  00100000  exit
004620  00100000  exit
004624  00100000  exit
004628  00100000  exit
00462c  00100000  exit
004630  00100000  exit
004634  00100000  exit
004638  00100000  exit
00463c  00100000  exit
004640  00100000  exit
004644  00100000  exit
004648  00100000  exit
00464c  00100000  exit
004650  00100000  exit
004654  00100000  exit
004658  00100000  exit
00465c  00100000  exit
004660  00100000  exit
004664  00100000  exit
004668  00100000  exit
00466c  00100000  exit
004670  00100000  exit
