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
00014c  4ba3c600  ble.s r13, r12, 200
000150  9f074000  addli r15, zero, 32
000154  9f420000  addli r5, zero, 4
000158  00d70002  load_param_i r14, 1
00015c  0b92f030  div.s r4, r1, r15
000160  67434fce  storeli.w r4, -6348(r30)
000164  1b325200  slli r4, r4, 5
000168  0b924018  sub.s r4, r1, r4
00016c  3f205200  blt.s r4, r5, 8
000170  db130000  j 156
000174  2bf5ffff  lui r10, 1048575
000178  1b388200  slli r16, r4, 8
00017c  9f040008  addli r9, zero, 1024
000180  9f050002  addli r11, zero, 256
000184  eb530f01  load.d r[8:9], 16(r30)
000188  eb528f01  load.d r[6:7], 24(r30)
00018c  6703dfce  storeli.w r13, -6352(r30)
000190  e742efce  storeli.w r14, -6356(r30)
000194  1b1505f8  ori r10, r10, 3968
000198  8b940419  sub.s r9, r9, r16
00019c  e7450fcf  storeli.w r16, -6308(r30)
0001a0  9781a100  and r3, r3, r10
0001a4  8b84b440  min.u r9, r9, r11
0001a8  9b85f001  andi r11, r1, 31
0001ac  9bf00004  setlti r1, r1, 64
0001b0  0b9d2110  add.s r26, r3, r2
0001b4  13010200  seteq r2, r4, zero
0001b8  1bb51400  slli r10, r9, 1
0001bc  b3110828  sext_int2long r[4:5], r16
0001c0  9f140000  addli r9, zero, 1
0001c4  e705bfce  storeli.w r11, -6312(r30)
0001c8  97b19102  sll.d r[4:5], r[4:5], r9
0001cc  9f0b2d10  addli r23, r26, 2064
0001d0  9f048ff3  addli r9, r30, -1600
0001d4  97802000  and r1, r1, r2
0001d8  67451fce  storeli.w r1, -6316(r30)
0001dc  8ba03310  add.ul r[2:3], r[8:9], r[4:5]
0001e0  9f039fce  addli r7, r30, -6328
0001e4  73b01300  store.d r[2:3], 0(r7)
0001e8  8ba03210  add.ul r[2:3], r[6:7], r[4:5]
0001ec  9f018fce  addli r3, r30, -6336
0001f0  9f030004  addli r7, zero, 512
0001f4  73b01100  store.d r[2:3], 0(r3)
0001f8  abf00000  lui r1, 15
0001fc  9f71f003  addli r3, zero, 511
000200  1b93f0ff  ori r6, r1, 4095
000204  e7436fce  storeli.w r6, -6340(r30)
000208  db060000  j 52
00020c  0b16e610  add.s r12, r12, r14
000210  bf7fd6fe  blt.s r12, r13, -4
000214  9f0e0fce  addli sp, r30, -6400
000218  9f8e0e32  addli sp, sp, 6400
00021c  00a00300  mfence { lm, sm, gm }
000220  00100000  exit
000224  63067fce  loadli.w r12,  -6344(r30)
000228  63475fce  loadli.w r14,  -6356(r30)
00022c  e3066fce  loadli.w r13,  -6352(r30)
000230  0b16e610  add.s r12, r12, r14
000234  3f20d600  blt.s r12, r13, 8
000238  dbfbffff  j -36
00023c  e3008f00  loadli.w r1,  64(r30)
000240  63417f00  loadli.w r2,  60(r30)
000244  e703cfce  storeli.w r12, -6344(r30)
000248  9f090000  addli r19, zero, 0
00024c  8b101630  div.s r1, r12, r1
000250  8b902030  div.s r1, r1, r2
000254  63416fce  loadli.w r2,  -6348(r30)
000258  9bb06000  slli r1, r1, 6
00025c  0b912010  add.s r2, r1, r2
000260  e7062fce  storeli.w r2, -6296(r30)
000264  00a00000  mfence { lm }
000268  5b630700  j 15128
00026c  9f029fce  addli r5, r30, -6328
000270  ab0000f0  lui r1, 983040
000274  2b0100f0  lui r2, 983040
000278  ebd10200  load.d r[4:5], 0(r5)
00027c  97101500  or r1, r10, r1
000280  9f020ff8  addli r5, r30, -1024
000284  17112500  or r2, r10, r2
000288  ffa05100  l_gm2lm r1, r5, 0(r[4:5])
00028c  9f008fce  addli r1, r30, -6336
000290  ebd10000  load.d r[4:5], 0(r1)
000294  9f000ffc  addli r1, r30, -512
000298  7fa11100  l_gm2lm r2, r1, 0(r[4:5])
00029c  9f008ff3  addli r1, r30, -1600
0002a0  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
0002a4  9f000ff4  addli r1, r30, -1536
0002a8  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0002ac  9f000fec  addli r1, r30, -2560
0002b0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0002b4  9f008ff4  addli r1, r30, -1472
0002b8  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0002bc  9f008fec  addli r1, r30, -2496
0002c0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0002c4  9f000ff5  addli r1, r30, -1408
0002c8  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0002cc  9f000fed  addli r1, r30, -2432
0002d0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0002d4  9f008ff5  addli r1, r30, -1344
0002d8  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0002dc  9f008fed  addli r1, r30, -2368
0002e0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0002e4  9f000ff6  addli r1, r30, -1280
0002e8  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0002ec  9f000fee  addli r1, r30, -2304
0002f0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0002f4  9f008ff6  addli r1, r30, -1216
0002f8  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0002fc  9f008fee  addli r1, r30, -2240
000300  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000304  9f000ff7  addli r1, r30, -1152
000308  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00030c  9f000fef  addli r1, r30, -2176
000310  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000314  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000318  00a00000  mfence { lm }
00031c  92300002  vadd.s.mz vr1{mr1}, zero, vr0
000320  6b312fc0  load.hu r2, -1022(r30)
000324  eb300fc0  load.hu r1, -1024(r30)
000328  e7042fd6  storeli.w r2, -5304(r30)
00032c  6b314fc0  load.hu r2, -1020(r30)
000330  b39d0020  hfloat2float.rn r27, r1
000334  67052fd6  storeli.w r2, -5296(r30)
000338  6b316fc0  load.hu r2, -1018(r30)
00033c  e7052fd6  storeli.w r2, -5288(r30)
000340  6b318fc0  load.hu r2, -1016(r30)
000344  67062fd6  storeli.w r2, -5280(r30)
000348  6b31afc0  load.hu r2, -1014(r30)
00034c  e7062fd6  storeli.w r2, -5272(r30)
000350  6b31cfc0  load.hu r2, -1012(r30)
000354  67072fd6  storeli.w r2, -5264(r30)
000358  6b31efc0  load.hu r2, -1010(r30)
00035c  e7072fd6  storeli.w r2, -5256(r30)
000360  6b310fc1  load.hu r2, -1008(r30)
000364  00a00000  mfence { lm }
000368  670cbfea  storeli.w r11, -2624(r30)
00036c  6b3eafc5  load.hu r28, -934(r30)
000370  eb3a4fc3  load.hu r21, -972(r30)
000374  eb306fc3  load.hu r1, -970(r30)
000378  eb31afc3  load.hu r3, -966(r30)
00037c  6b32cfc3  load.hu r4, -964(r30)
000380  eb32efc3  load.hu r5, -962(r30)
000384  6b330fc4  load.hu r6, -960(r30)
000388  6b342fc4  load.hu r8, -958(r30)
00038c  eb354fc4  load.hu r11, -956(r30)
000390  6b366fc4  load.hu r12, -954(r30)
000394  6b378fc4  load.hu r14, -952(r30)
000398  eb37afc4  load.hu r15, -950(r30)
00039c  6b38cfc4  load.hu r16, -948(r30)
0003a0  eb38efc4  load.hu r17, -946(r30)
0003a4  6b390fc5  load.hu r18, -944(r30)
0003a8  6b3a2fc5  load.hu r20, -942(r30)
0003ac  6b3b4fc5  load.hu r22, -940(r30)
0003b0  6b3c6fc5  load.hu r24, -938(r30)
0003b4  eb3c8fc5  load.hu r25, -936(r30)
0003b8  67082fd6  storeli.w r2, -5248(r30)
0003bc  6b312fc1  load.hu r2, -1006(r30)
0003c0  e746cfcf  storeli.w r28, -6292(r30)
0003c4  6b3ecfc5  load.hu r28, -932(r30)
0003c8  b39a0a20  hfloat2float.rn r21, r21
0003cc  b3900020  hfloat2float.rn r1, r1
0003d0  67002fd8  storeli.w r2, -5120(r30)
0003d4  6b314fc1  load.hu r2, -1004(r30)
0003d8  6707cfcf  storeli.w r28, -6288(r30)
0003dc  6b3eefc5  load.hu r28, -930(r30)
0003e0  67082fd8  storeli.w r2, -4992(r30)
0003e4  6b316fc1  load.hu r2, -1002(r30)
0003e8  e707cfcf  storeli.w r28, -6280(r30)
0003ec  6b3e0fc6  load.hu r28, -928(r30)
0003f0  67002fda  storeli.w r2, -4864(r30)
0003f4  6b318fc1  load.hu r2, -1000(r30)
0003f8  6747cfcf  storeli.w r28, -6284(r30)
0003fc  6b3e2fc6  load.hu r28, -926(r30)
000400  67082fda  storeli.w r2, -4736(r30)
000404  6b31afc1  load.hu r2, -998(r30)
000408  e747cfcf  storeli.w r28, -6276(r30)
00040c  6b3e4fc6  load.hu r28, -924(r30)
000410  67002fdc  storeli.w r2, -4608(r30)
000414  6b31cfc1  load.hu r2, -996(r30)
000418  6708cfcf  storeli.w r28, -6272(r30)
00041c  6b3e6fc6  load.hu r28, -922(r30)
000420  67042fdc  storeli.w r2, -4544(r30)
000424  6b31efc1  load.hu r2, -994(r30)
000428  6748cfcf  storeli.w r28, -6268(r30)
00042c  6b3e8fc6  load.hu r28, -920(r30)
000430  67002fea  storeli.w r2, -2816(r30)
000434  6b310fc2  load.hu r2, -992(r30)
000438  e708cfcf  storeli.w r28, -6264(r30)
00043c  6b3eafc6  load.hu r28, -918(r30)
000440  67002fde  storeli.w r2, -4352(r30)
000444  6b312fc2  load.hu r2, -990(r30)
000448  e748cfcf  storeli.w r28, -6260(r30)
00044c  6b3ecfc6  load.hu r28, -916(r30)
000450  670c2fde  storeli.w r2, -4160(r30)
000454  6b314fc2  load.hu r2, -988(r30)
000458  6709cfcf  storeli.w r28, -6256(r30)
00045c  6b3eefc6  load.hu r28, -914(r30)
000460  67082fe0  storeli.w r2, -3968(r30)
000464  6b316fc2  load.hu r2, -986(r30)
000468  6749cfcf  storeli.w r28, -6252(r30)
00046c  6b3e0fc7  load.hu r28, -912(r30)
000470  67042fe2  storeli.w r2, -3776(r30)
000474  6b318fc2  load.hu r2, -984(r30)
000478  e709cfcf  storeli.w r28, -6248(r30)
00047c  6b3e2fc7  load.hu r28, -910(r30)
000480  67002fe4  storeli.w r2, -3584(r30)
000484  6b31afc2  load.hu r2, -982(r30)
000488  e749cfcf  storeli.w r28, -6244(r30)
00048c  6b3e4fc7  load.hu r28, -908(r30)
000490  670c2fe4  storeli.w r2, -3392(r30)
000494  6b31cfc2  load.hu r2, -980(r30)
000498  670acfcf  storeli.w r28, -6240(r30)
00049c  6b3e6fc7  load.hu r28, -906(r30)
0004a0  67082fe6  storeli.w r2, -3200(r30)
0004a4  6b31efc2  load.hu r2, -978(r30)
0004a8  674acfcf  storeli.w r28, -6236(r30)
0004ac  6b3e8fc7  load.hu r28, -904(r30)
0004b0  67042fe8  storeli.w r2, -3008(r30)
0004b4  6b310fc3  load.hu r2, -976(r30)
0004b8  e70acfcf  storeli.w r28, -6232(r30)
0004bc  6b3eafc7  load.hu r28, -902(r30)
0004c0  67042ff2  storeli.w r2, -1728(r30)
0004c4  6b312fc3  load.hu r2, -974(r30)
0004c8  e74acfcf  storeli.w r28, -6228(r30)
0004cc  6b3ecfc7  load.hu r28, -900(r30)
0004d0  67082ff2  storeli.w r2, -1664(r30)
0004d4  6b318fc3  load.hu r2, -968(r30)
0004d8  670bcfcf  storeli.w r28, -6224(r30)
0004dc  6b3eefc7  load.hu r28, -898(r30)
0004e0  e70bcfcf  storeli.w r28, -6216(r30)
0004e4  6b3e0fc8  load.hu r28, -896(r30)
0004e8  674bcfcf  storeli.w r28, -6220(r30)
0004ec  6b3e2fc8  load.hu r28, -894(r30)
0004f0  e74bcfcf  storeli.w r28, -6212(r30)
0004f4  6b3e4fc8  load.hu r28, -892(r30)
0004f8  670ccfcf  storeli.w r28, -6208(r30)
0004fc  6b3e6fc8  load.hu r28, -890(r30)
000500  674ccfcf  storeli.w r28, -6204(r30)
000504  6b3e8fc8  load.hu r28, -888(r30)
000508  e70ccfcf  storeli.w r28, -6200(r30)
00050c  6b3eafc8  load.hu r28, -886(r30)
000510  e74ccfcf  storeli.w r28, -6196(r30)
000514  6b3ecfc8  load.hu r28, -884(r30)
000518  670dcfcf  storeli.w r28, -6192(r30)
00051c  6b3eefc8  load.hu r28, -882(r30)
000520  674dcfcf  storeli.w r28, -6188(r30)
000524  6b3e0fc9  load.hu r28, -880(r30)
000528  e70dcfcf  storeli.w r28, -6184(r30)
00052c  6b3e2fc9  load.hu r28, -878(r30)
000530  e74dcfcf  storeli.w r28, -6180(r30)
000534  6b3e4fc9  load.hu r28, -876(r30)
000538  670ecfcf  storeli.w r28, -6176(r30)
00053c  6b3e6fc9  load.hu r28, -874(r30)
000540  674ecfcf  storeli.w r28, -6172(r30)
000544  6b3e8fc9  load.hu r28, -872(r30)
000548  e70ecfcf  storeli.w r28, -6168(r30)
00054c  6b3eafc9  load.hu r28, -870(r30)
000550  e74ecfcf  storeli.w r28, -6164(r30)
000554  6b3ecfc9  load.hu r28, -868(r30)
000558  670fcfcf  storeli.w r28, -6160(r30)
00055c  6b3eefc9  load.hu r28, -866(r30)
000560  e70fcfcf  storeli.w r28, -6152(r30)
000564  6b3e0fca  load.hu r28, -864(r30)
000568  674fcfcf  storeli.w r28, -6156(r30)
00056c  6b3e2fca  load.hu r28, -862(r30)
000570  e74fcfcf  storeli.w r28, -6148(r30)
000574  6b3e4fca  load.hu r28, -860(r30)
000578  6700cfd1  storeli.w r28, -6144(r30)
00057c  6b3e6fca  load.hu r28, -858(r30)
000580  6740cfd1  storeli.w r28, -6140(r30)
000584  6b3e8fca  load.hu r28, -856(r30)
000588  e700cfd1  storeli.w r28, -6136(r30)
00058c  6b3eafca  load.hu r28, -854(r30)
000590  e740cfd1  storeli.w r28, -6132(r30)
000594  6b3ecfca  load.hu r28, -852(r30)
000598  6701cfd1  storeli.w r28, -6128(r30)
00059c  6b3eefca  load.hu r28, -850(r30)
0005a0  6741cfd1  storeli.w r28, -6124(r30)
0005a4  6b3e0fcb  load.hu r28, -848(r30)
0005a8  e701cfd1  storeli.w r28, -6120(r30)
0005ac  6b3e2fcb  load.hu r28, -846(r30)
0005b0  e741cfd1  storeli.w r28, -6116(r30)
0005b4  6b3e4fcb  load.hu r28, -844(r30)
0005b8  6702cfd1  storeli.w r28, -6112(r30)
0005bc  6b3e6fcb  load.hu r28, -842(r30)
0005c0  6742cfd1  storeli.w r28, -6108(r30)
0005c4  6b3e8fcb  load.hu r28, -840(r30)
0005c8  e702cfd1  storeli.w r28, -6104(r30)
0005cc  6b3eafcb  load.hu r28, -838(r30)
0005d0  e742cfd1  storeli.w r28, -6100(r30)
0005d4  6b3ecfcb  load.hu r28, -836(r30)
0005d8  6703cfd1  storeli.w r28, -6096(r30)
0005dc  6b3eefcb  load.hu r28, -834(r30)
0005e0  e703cfd1  storeli.w r28, -6088(r30)
0005e4  6b3e0fcc  load.hu r28, -832(r30)
0005e8  6743cfd1  storeli.w r28, -6092(r30)
0005ec  6b3e2fcc  load.hu r28, -830(r30)
0005f0  e743cfd1  storeli.w r28, -6084(r30)
0005f4  6b3e4fcc  load.hu r28, -828(r30)
0005f8  6704cfd1  storeli.w r28, -6080(r30)
0005fc  6b3e6fcc  load.hu r28, -826(r30)
000600  6744cfd1  storeli.w r28, -6076(r30)
000604  6b3e8fcc  load.hu r28, -824(r30)
000608  e704cfd1  storeli.w r28, -6072(r30)
00060c  6b3eafcc  load.hu r28, -822(r30)
000610  e744cfd1  storeli.w r28, -6068(r30)
000614  6b3ecfcc  load.hu r28, -820(r30)
000618  6705cfd1  storeli.w r28, -6064(r30)
00061c  6b3eefcc  load.hu r28, -818(r30)
000620  6745cfd1  storeli.w r28, -6060(r30)
000624  6b3e0fcd  load.hu r28, -816(r30)
000628  e705cfd1  storeli.w r28, -6056(r30)
00062c  6b3e2fcd  load.hu r28, -814(r30)
000630  e745cfd1  storeli.w r28, -6052(r30)
000634  6b3e4fcd  load.hu r28, -812(r30)
000638  6706cfd1  storeli.w r28, -6048(r30)
00063c  6b3e6fcd  load.hu r28, -810(r30)
000640  6746cfd1  storeli.w r28, -6044(r30)
000644  6b3e8fcd  load.hu r28, -808(r30)
000648  e706cfd1  storeli.w r28, -6040(r30)
00064c  6b3eafcd  load.hu r28, -806(r30)
000650  e746cfd1  storeli.w r28, -6036(r30)
000654  6b3ecfcd  load.hu r28, -804(r30)
000658  6707cfd1  storeli.w r28, -6032(r30)
00065c  6b3eefcd  load.hu r28, -802(r30)
000660  e707cfd1  storeli.w r28, -6024(r30)
000664  6b3e0fce  load.hu r28, -800(r30)
000668  6747cfd1  storeli.w r28, -6028(r30)
00066c  6b3e2fce  load.hu r28, -798(r30)
000670  e747cfd1  storeli.w r28, -6020(r30)
000674  6b3e4fce  load.hu r28, -796(r30)
000678  6708cfd1  storeli.w r28, -6016(r30)
00067c  6b3e6fce  load.hu r28, -794(r30)
000680  6748cfd1  storeli.w r28, -6012(r30)
000684  6b3e8fce  load.hu r28, -792(r30)
000688  e708cfd1  storeli.w r28, -6008(r30)
00068c  6b3eafce  load.hu r28, -790(r30)
000690  e748cfd1  storeli.w r28, -6004(r30)
000694  6b3ecfce  load.hu r28, -788(r30)
000698  6709cfd1  storeli.w r28, -6000(r30)
00069c  6b3eefce  load.hu r28, -786(r30)
0006a0  6749cfd1  storeli.w r28, -5996(r30)
0006a4  6b3e0fcf  load.hu r28, -784(r30)
0006a8  e709cfd1  storeli.w r28, -5992(r30)
0006ac  6b3e2fcf  load.hu r28, -782(r30)
0006b0  e749cfd1  storeli.w r28, -5988(r30)
0006b4  6b3e4fcf  load.hu r28, -780(r30)
0006b8  670acfd1  storeli.w r28, -5984(r30)
0006bc  6b3e6fcf  load.hu r28, -778(r30)
0006c0  674acfd1  storeli.w r28, -5980(r30)
0006c4  6b3e8fcf  load.hu r28, -776(r30)
0006c8  e70acfd1  storeli.w r28, -5976(r30)
0006cc  6b3eafcf  load.hu r28, -774(r30)
0006d0  e74acfd1  storeli.w r28, -5972(r30)
0006d4  6b3ecfcf  load.hu r28, -772(r30)
0006d8  670bcfd1  storeli.w r28, -5968(r30)
0006dc  6b3eefcf  load.hu r28, -770(r30)
0006e0  e70bcfd1  storeli.w r28, -5960(r30)
0006e4  6b3e0fd0  load.hu r28, -768(r30)
0006e8  674bcfd1  storeli.w r28, -5964(r30)
0006ec  6b3e2fd0  load.hu r28, -766(r30)
0006f0  e74bcfd1  storeli.w r28, -5956(r30)
0006f4  6b3e4fd0  load.hu r28, -764(r30)
0006f8  670ccfd1  storeli.w r28, -5952(r30)
0006fc  6b3e6fd0  load.hu r28, -762(r30)
000700  674ccfd1  storeli.w r28, -5948(r30)
000704  6b3e8fd0  load.hu r28, -760(r30)
000708  e70ccfd1  storeli.w r28, -5944(r30)
00070c  6b3eafd0  load.hu r28, -758(r30)
000710  e74ccfd1  storeli.w r28, -5940(r30)
000714  6b3ecfd0  load.hu r28, -756(r30)
000718  670dcfd1  storeli.w r28, -5936(r30)
00071c  6b3eefd0  load.hu r28, -754(r30)
000720  674dcfd1  storeli.w r28, -5932(r30)
000724  6b3e0fd1  load.hu r28, -752(r30)
000728  e70dcfd1  storeli.w r28, -5928(r30)
00072c  6b3e2fd1  load.hu r28, -750(r30)
000730  e74dcfd1  storeli.w r28, -5924(r30)
000734  6b3e4fd1  load.hu r28, -748(r30)
000738  670ecfd1  storeli.w r28, -5920(r30)
00073c  6b3e6fd1  load.hu r28, -746(r30)
000740  674ecfd1  storeli.w r28, -5916(r30)
000744  6b3e8fd1  load.hu r28, -744(r30)
000748  e70ecfd1  storeli.w r28, -5912(r30)
00074c  6b3eafd1  load.hu r28, -742(r30)
000750  e74ecfd1  storeli.w r28, -5908(r30)
000754  6b3ecfd1  load.hu r28, -740(r30)
000758  670fcfd1  storeli.w r28, -5904(r30)
00075c  6b3eefd1  load.hu r28, -738(r30)
000760  e70fcfd1  storeli.w r28, -5896(r30)
000764  6b3e0fd2  load.hu r28, -736(r30)
000768  674fcfd1  storeli.w r28, -5900(r30)
00076c  6b3e2fd2  load.hu r28, -734(r30)
000770  e74fcfd1  storeli.w r28, -5892(r30)
000774  6b3e4fd2  load.hu r28, -732(r30)
000778  6700cfd3  storeli.w r28, -5888(r30)
00077c  6b3e6fd2  load.hu r28, -730(r30)
000780  6740cfd3  storeli.w r28, -5884(r30)
000784  6b3e8fd2  load.hu r28, -728(r30)
000788  e700cfd3  storeli.w r28, -5880(r30)
00078c  6b3eafd2  load.hu r28, -726(r30)
000790  e740cfd3  storeli.w r28, -5876(r30)
000794  6b3ecfd2  load.hu r28, -724(r30)
000798  6701cfd3  storeli.w r28, -5872(r30)
00079c  6b3eefd2  load.hu r28, -722(r30)
0007a0  6741cfd3  storeli.w r28, -5868(r30)
0007a4  6b3e0fd3  load.hu r28, -720(r30)
0007a8  e701cfd3  storeli.w r28, -5864(r30)
0007ac  6b3e2fd3  load.hu r28, -718(r30)
0007b0  e741cfd3  storeli.w r28, -5860(r30)
0007b4  6b3e4fd3  load.hu r28, -716(r30)
0007b8  6702cfd3  storeli.w r28, -5856(r30)
0007bc  6b3e6fd3  load.hu r28, -714(r30)
0007c0  6742cfd3  storeli.w r28, -5852(r30)
0007c4  6b3e8fd3  load.hu r28, -712(r30)
0007c8  e702cfd3  storeli.w r28, -5848(r30)
0007cc  6b3eafd3  load.hu r28, -710(r30)
0007d0  e742cfd3  storeli.w r28, -5844(r30)
0007d4  6b3ecfd3  load.hu r28, -708(r30)
0007d8  6703cfd3  storeli.w r28, -5840(r30)
0007dc  6b3eefd3  load.hu r28, -706(r30)
0007e0  e703cfd3  storeli.w r28, -5832(r30)
0007e4  6b3e0fd4  load.hu r28, -704(r30)
0007e8  6743cfd3  storeli.w r28, -5836(r30)
0007ec  6b3e2fd4  load.hu r28, -702(r30)
0007f0  e743cfd3  storeli.w r28, -5828(r30)
0007f4  6b3e4fd4  load.hu r28, -700(r30)
0007f8  6704cfd3  storeli.w r28, -5824(r30)
0007fc  6b3e6fd4  load.hu r28, -698(r30)
000800  6744cfd3  storeli.w r28, -5820(r30)
000804  6b3e8fd4  load.hu r28, -696(r30)
000808  e704cfd3  storeli.w r28, -5816(r30)
00080c  6b3eafd4  load.hu r28, -694(r30)
000810  e744cfd3  storeli.w r28, -5812(r30)
000814  6b3ecfd4  load.hu r28, -692(r30)
000818  6705cfd3  storeli.w r28, -5808(r30)
00081c  6b3eefd4  load.hu r28, -690(r30)
000820  6745cfd3  storeli.w r28, -5804(r30)
000824  6b3e0fd5  load.hu r28, -688(r30)
000828  e705cfd3  storeli.w r28, -5800(r30)
00082c  6b3e2fd5  load.hu r28, -686(r30)
000830  e745cfd3  storeli.w r28, -5796(r30)
000834  6b3e4fd5  load.hu r28, -684(r30)
000838  6706cfd3  storeli.w r28, -5792(r30)
00083c  6b3e6fd5  load.hu r28, -682(r30)
000840  6746cfd3  storeli.w r28, -5788(r30)
000844  6b3e8fd5  load.hu r28, -680(r30)
000848  e706cfd3  storeli.w r28, -5784(r30)
00084c  6b3eafd5  load.hu r28, -678(r30)
000850  e746cfd3  storeli.w r28, -5780(r30)
000854  6b3ecfd5  load.hu r28, -676(r30)
000858  6707cfd3  storeli.w r28, -5776(r30)
00085c  6b3eefd5  load.hu r28, -674(r30)
000860  e707cfd3  storeli.w r28, -5768(r30)
000864  6b3e0fd6  load.hu r28, -672(r30)
000868  6747cfd3  storeli.w r28, -5772(r30)
00086c  6b3e2fd6  load.hu r28, -670(r30)
000870  e747cfd3  storeli.w r28, -5764(r30)
000874  6b3e4fd6  load.hu r28, -668(r30)
000878  6708cfd3  storeli.w r28, -5760(r30)
00087c  6b3e6fd6  load.hu r28, -666(r30)
000880  6748cfd3  storeli.w r28, -5756(r30)
000884  6b3e8fd6  load.hu r28, -664(r30)
000888  e708cfd3  storeli.w r28, -5752(r30)
00088c  6b3eafd6  load.hu r28, -662(r30)
000890  e748cfd3  storeli.w r28, -5748(r30)
000894  6b3ecfd6  load.hu r28, -660(r30)
000898  6709cfd3  storeli.w r28, -5744(r30)
00089c  6b3eefd6  load.hu r28, -658(r30)
0008a0  6749cfd3  storeli.w r28, -5740(r30)
0008a4  6b3e0fd7  load.hu r28, -656(r30)
0008a8  e709cfd3  storeli.w r28, -5736(r30)
0008ac  6b3e2fd7  load.hu r28, -654(r30)
0008b0  e749cfd3  storeli.w r28, -5732(r30)
0008b4  6b3e4fd7  load.hu r28, -652(r30)
0008b8  670acfd3  storeli.w r28, -5728(r30)
0008bc  6b3e6fd7  load.hu r28, -650(r30)
0008c0  674acfd3  storeli.w r28, -5724(r30)
0008c4  6b3e8fd7  load.hu r28, -648(r30)
0008c8  e70acfd3  storeli.w r28, -5720(r30)
0008cc  6b3eafd7  load.hu r28, -646(r30)
0008d0  e74acfd3  storeli.w r28, -5716(r30)
0008d4  6b3ecfd7  load.hu r28, -644(r30)
0008d8  670bcfd3  storeli.w r28, -5712(r30)
0008dc  6b3eefd7  load.hu r28, -642(r30)
0008e0  e70bcfd3  storeli.w r28, -5704(r30)
0008e4  6b3e0fd8  load.hu r28, -640(r30)
0008e8  674bcfd3  storeli.w r28, -5708(r30)
0008ec  6b3e2fd8  load.hu r28, -638(r30)
0008f0  e74bcfd3  storeli.w r28, -5700(r30)
0008f4  6b3e4fd8  load.hu r28, -636(r30)
0008f8  670ccfd3  storeli.w r28, -5696(r30)
0008fc  6b3e6fd8  load.hu r28, -634(r30)
000900  674ccfd3  storeli.w r28, -5692(r30)
000904  6b3e8fd8  load.hu r28, -632(r30)
000908  e70ccfd3  storeli.w r28, -5688(r30)
00090c  6b3eafd8  load.hu r28, -630(r30)
000910  e74ccfd3  storeli.w r28, -5684(r30)
000914  6b3ecfd8  load.hu r28, -628(r30)
000918  670dcfd3  storeli.w r28, -5680(r30)
00091c  6b3eefd8  load.hu r28, -626(r30)
000920  674dcfd3  storeli.w r28, -5676(r30)
000924  6b3e0fd9  load.hu r28, -624(r30)
000928  e70dcfd3  storeli.w r28, -5672(r30)
00092c  6b3e2fd9  load.hu r28, -622(r30)
000930  e74dcfd3  storeli.w r28, -5668(r30)
000934  6b3e4fd9  load.hu r28, -620(r30)
000938  670ecfd3  storeli.w r28, -5664(r30)
00093c  6b3e6fd9  load.hu r28, -618(r30)
000940  674ecfd3  storeli.w r28, -5660(r30)
000944  6b3e8fd9  load.hu r28, -616(r30)
000948  e70ecfd3  storeli.w r28, -5656(r30)
00094c  6b3eafd9  load.hu r28, -614(r30)
000950  e74ecfd3  storeli.w r28, -5652(r30)
000954  6b3ecfd9  load.hu r28, -612(r30)
000958  670fcfd3  storeli.w r28, -5648(r30)
00095c  6b3eefd9  load.hu r28, -610(r30)
000960  e70fcfd3  storeli.w r28, -5640(r30)
000964  6b3e0fda  load.hu r28, -608(r30)
000968  674fcfd3  storeli.w r28, -5644(r30)
00096c  6b3e2fda  load.hu r28, -606(r30)
000970  e74fcfd3  storeli.w r28, -5636(r30)
000974  6b3e4fda  load.hu r28, -604(r30)
000978  6700cfd5  storeli.w r28, -5632(r30)
00097c  6b3e6fda  load.hu r28, -602(r30)
000980  6740cfd5  storeli.w r28, -5628(r30)
000984  6b3e8fda  load.hu r28, -600(r30)
000988  e700cfd5  storeli.w r28, -5624(r30)
00098c  6b3eafda  load.hu r28, -598(r30)
000990  e740cfd5  storeli.w r28, -5620(r30)
000994  6b3ecfda  load.hu r28, -596(r30)
000998  6701cfd5  storeli.w r28, -5616(r30)
00099c  6b3eefda  load.hu r28, -594(r30)
0009a0  6741cfd5  storeli.w r28, -5612(r30)
0009a4  6b3e0fdb  load.hu r28, -592(r30)
0009a8  e701cfd5  storeli.w r28, -5608(r30)
0009ac  6b3e2fdb  load.hu r28, -590(r30)
0009b0  e741cfd5  storeli.w r28, -5604(r30)
0009b4  6b3e4fdb  load.hu r28, -588(r30)
0009b8  6702cfd5  storeli.w r28, -5600(r30)
0009bc  6b3e6fdb  load.hu r28, -586(r30)
0009c0  6742cfd5  storeli.w r28, -5596(r30)
0009c4  6b3e8fdb  load.hu r28, -584(r30)
0009c8  e702cfd5  storeli.w r28, -5592(r30)
0009cc  6b3eafdb  load.hu r28, -582(r30)
0009d0  e742cfd5  storeli.w r28, -5588(r30)
0009d4  6b3ecfdb  load.hu r28, -580(r30)
0009d8  6703cfd5  storeli.w r28, -5584(r30)
0009dc  6b3eefdb  load.hu r28, -578(r30)
0009e0  e703cfd5  storeli.w r28, -5576(r30)
0009e4  6b3e0fdc  load.hu r28, -576(r30)
0009e8  6743cfd5  storeli.w r28, -5580(r30)
0009ec  6b3e2fdc  load.hu r28, -574(r30)
0009f0  e743cfd5  storeli.w r28, -5572(r30)
0009f4  6b3e4fdc  load.hu r28, -572(r30)
0009f8  6704cfd5  storeli.w r28, -5568(r30)
0009fc  6b3e6fdc  load.hu r28, -570(r30)
000a00  6744cfd5  storeli.w r28, -5564(r30)
000a04  6b3e8fdc  load.hu r28, -568(r30)
000a08  e704cfd5  storeli.w r28, -5560(r30)
000a0c  6b3eafdc  load.hu r28, -566(r30)
000a10  e744cfd5  storeli.w r28, -5556(r30)
000a14  6b3ecfdc  load.hu r28, -564(r30)
000a18  6705cfd5  storeli.w r28, -5552(r30)
000a1c  6b3eefdc  load.hu r28, -562(r30)
000a20  6745cfd5  storeli.w r28, -5548(r30)
000a24  6b3e0fdd  load.hu r28, -560(r30)
000a28  e705cfd5  storeli.w r28, -5544(r30)
000a2c  6b3e2fdd  load.hu r28, -558(r30)
000a30  e745cfd5  storeli.w r28, -5540(r30)
000a34  6b3e4fdd  load.hu r28, -556(r30)
000a38  6706cfd5  storeli.w r28, -5536(r30)
000a3c  6b3e6fdd  load.hu r28, -554(r30)
000a40  6746cfd5  storeli.w r28, -5532(r30)
000a44  6b3e8fdd  load.hu r28, -552(r30)
000a48  e706cfd5  storeli.w r28, -5528(r30)
000a4c  6b3eafdd  load.hu r28, -550(r30)
000a50  e746cfd5  storeli.w r28, -5524(r30)
000a54  6b3ecfdd  load.hu r28, -548(r30)
000a58  6707cfd5  storeli.w r28, -5520(r30)
000a5c  6b3eefdd  load.hu r28, -546(r30)
000a60  e707cfd5  storeli.w r28, -5512(r30)
000a64  6b3e0fde  load.hu r28, -544(r30)
000a68  6747cfd5  storeli.w r28, -5516(r30)
000a6c  6b3e2fde  load.hu r28, -542(r30)
000a70  e747cfd5  storeli.w r28, -5508(r30)
000a74  6b3e4fde  load.hu r28, -540(r30)
000a78  6708cfd5  storeli.w r28, -5504(r30)
000a7c  6b3e6fde  load.hu r28, -538(r30)
000a80  6748cfd5  storeli.w r28, -5500(r30)
000a84  6b3e8fde  load.hu r28, -536(r30)
000a88  e708cfd5  storeli.w r28, -5496(r30)
000a8c  6b3eafde  load.hu r28, -534(r30)
000a90  e748cfd5  storeli.w r28, -5492(r30)
000a94  6b3ecfde  load.hu r28, -532(r30)
000a98  6709cfd5  storeli.w r28, -5488(r30)
000a9c  6b3eefde  load.hu r28, -530(r30)
000aa0  6749cfd5  storeli.w r28, -5484(r30)
000aa4  6b3e0fdf  load.hu r28, -528(r30)
000aa8  e709cfd5  storeli.w r28, -5480(r30)
000aac  6b3e2fdf  load.hu r28, -526(r30)
000ab0  e749cfd5  storeli.w r28, -5476(r30)
000ab4  6b3e4fdf  load.hu r28, -524(r30)
000ab8  670acfd5  storeli.w r28, -5472(r30)
000abc  6b3e6fdf  load.hu r28, -522(r30)
000ac0  674acfd5  storeli.w r28, -5468(r30)
000ac4  6b3e8fdf  load.hu r28, -520(r30)
000ac8  e70acfd5  storeli.w r28, -5464(r30)
000acc  6b3eafdf  load.hu r28, -518(r30)
000ad0  670bcfd5  storeli.w r28, -5456(r30)
000ad4  6b3e0fe0  load.hu r28, -512(r30)
000ad8  e70bcfd5  storeli.w r28, -5448(r30)
000adc  6b3eefdf  load.hu r28, -514(r30)
000ae0  674bcfd5  storeli.w r28, -5452(r30)
000ae4  6b3ecfdf  load.hu r28, -516(r30)
000ae8  e74acfd5  storeli.w r28, -5460(r30)
000aec  6b3e2fe0  load.hu r28, -510(r30)
000af0  e74bcfd5  storeli.w r28, -5444(r30)
000af4  6b3e4fe0  load.hu r28, -508(r30)
000af8  670ccfd5  storeli.w r28, -5440(r30)
000afc  6b3e6fe0  load.hu r28, -506(r30)
000b00  674ccfd5  storeli.w r28, -5436(r30)
000b04  6b3e8fe0  load.hu r28, -504(r30)
000b08  e70ccfd5  storeli.w r28, -5432(r30)
000b0c  6b3eafe0  load.hu r28, -502(r30)
000b10  e74ccfd5  storeli.w r28, -5428(r30)
000b14  6b3ecfe0  load.hu r28, -500(r30)
000b18  670dcfd5  storeli.w r28, -5424(r30)
000b1c  6b3eefe0  load.hu r28, -498(r30)
000b20  674dcfd5  storeli.w r28, -5420(r30)
000b24  6b3e0fe1  load.hu r28, -496(r30)
000b28  e70dcfd5  storeli.w r28, -5416(r30)
000b2c  6b3e2fe1  load.hu r28, -494(r30)
000b30  e74dcfd5  storeli.w r28, -5412(r30)
000b34  6b3e4fe1  load.hu r28, -492(r30)
000b38  670ecfd5  storeli.w r28, -5408(r30)
000b3c  6b3e6fe1  load.hu r28, -490(r30)
000b40  674ecfd5  storeli.w r28, -5404(r30)
000b44  6b3e8fe1  load.hu r28, -488(r30)
000b48  e70ecfd5  storeli.w r28, -5400(r30)
000b4c  6b3eafe1  load.hu r28, -486(r30)
000b50  e74ecfd5  storeli.w r28, -5396(r30)
000b54  6b3ecfe1  load.hu r28, -484(r30)
000b58  670fcfd5  storeli.w r28, -5392(r30)
000b5c  6b3eefe1  load.hu r28, -482(r30)
000b60  e70fcfd5  storeli.w r28, -5384(r30)
000b64  6b3e0fe2  load.hu r28, -480(r30)
000b68  674fcfd5  storeli.w r28, -5388(r30)
000b6c  6b3e2fe2  load.hu r28, -478(r30)
000b70  e74fcfd5  storeli.w r28, -5380(r30)
000b74  6b3e4fe2  load.hu r28, -476(r30)
000b78  6700cfd7  storeli.w r28, -5376(r30)
000b7c  6b3e6fe2  load.hu r28, -474(r30)
000b80  6740cfd7  storeli.w r28, -5372(r30)
000b84  6b3e8fe2  load.hu r28, -472(r30)
000b88  e700cfd7  storeli.w r28, -5368(r30)
000b8c  6b3eafe2  load.hu r28, -470(r30)
000b90  e740cfd7  storeli.w r28, -5364(r30)
000b94  6b3ecfe2  load.hu r28, -468(r30)
000b98  6701cfd7  storeli.w r28, -5360(r30)
000b9c  6b3eefe2  load.hu r28, -466(r30)
000ba0  6741cfd7  storeli.w r28, -5356(r30)
000ba4  6b3e0fe3  load.hu r28, -464(r30)
000ba8  e701cfd7  storeli.w r28, -5352(r30)
000bac  6b3e2fe3  load.hu r28, -462(r30)
000bb0  e741cfd7  storeli.w r28, -5348(r30)
000bb4  6b3e4fe3  load.hu r28, -460(r30)
000bb8  6702cfd7  storeli.w r28, -5344(r30)
000bbc  6b3e6fe3  load.hu r28, -458(r30)
000bc0  6742cfd7  storeli.w r28, -5340(r30)
000bc4  6b3e8fe3  load.hu r28, -456(r30)
000bc8  e702cfd7  storeli.w r28, -5336(r30)
000bcc  6b3eafe3  load.hu r28, -454(r30)
000bd0  e742cfd7  storeli.w r28, -5332(r30)
000bd4  6b3ecfe3  load.hu r28, -452(r30)
000bd8  6703cfd7  storeli.w r28, -5328(r30)
000bdc  6b3eefe3  load.hu r28, -450(r30)
000be0  e703cfd7  storeli.w r28, -5320(r30)
000be4  6b3e0fe4  load.hu r28, -448(r30)
000be8  6743cfd7  storeli.w r28, -5324(r30)
000bec  6b3e2fe4  load.hu r28, -446(r30)
000bf0  e743cfd7  storeli.w r28, -5316(r30)
000bf4  6b3e4fe4  load.hu r28, -444(r30)
000bf8  6704cfd7  storeli.w r28, -5312(r30)
000bfc  6b3e6fe4  load.hu r28, -442(r30)
000c00  6744cfd7  storeli.w r28, -5308(r30)
000c04  6b3e8fe4  load.hu r28, -440(r30)
000c08  e744cfd7  storeli.w r28, -5300(r30)
000c0c  6b3eafe4  load.hu r28, -438(r30)
000c10  6745cfd7  storeli.w r28, -5292(r30)
000c14  6b3ecfe4  load.hu r28, -436(r30)
000c18  e745cfd7  storeli.w r28, -5284(r30)
000c1c  6b3eefe4  load.hu r28, -434(r30)
000c20  6746cfd7  storeli.w r28, -5276(r30)
000c24  6b3e0fe5  load.hu r28, -432(r30)
000c28  e746cfd7  storeli.w r28, -5268(r30)
000c2c  6b3e2fe5  load.hu r28, -430(r30)
000c30  6747cfd7  storeli.w r28, -5260(r30)
000c34  6b3e4fe5  load.hu r28, -428(r30)
000c38  e747cfd7  storeli.w r28, -5252(r30)
000c3c  6b3e6fe5  load.hu r28, -426(r30)
000c40  e74fcfd7  storeli.w r28, -5124(r30)
000c44  6b3e8fe5  load.hu r28, -424(r30)
000c48  e747cfd9  storeli.w r28, -4996(r30)
000c4c  6b3eafe5  load.hu r28, -422(r30)
000c50  e74fcfd9  storeli.w r28, -4868(r30)
000c54  6b3ecfe5  load.hu r28, -420(r30)
000c58  e747cfdb  storeli.w r28, -4740(r30)
000c5c  6b3eefe5  load.hu r28, -418(r30)
000c60  e74fcfdb  storeli.w r28, -4612(r30)
000c64  6b3e0fe6  load.hu r28, -416(r30)
000c68  e70fcfdb  storeli.w r28, -4616(r30)
000c6c  6b3e2fe6  load.hu r28, -414(r30)
000c70  674bcfdd  storeli.w r28, -4428(r30)
000c74  6b3e4fe6  load.hu r28, -412(r30)
000c78  e70bcfdd  storeli.w r28, -4424(r30)
000c7c  6b3e6fe6  load.hu r28, -410(r30)
000c80  e74bcfdd  storeli.w r28, -4420(r30)
000c84  6b3e8fe6  load.hu r28, -408(r30)
000c88  670ccfdd  storeli.w r28, -4416(r30)
000c8c  6b3eafe6  load.hu r28, -406(r30)
000c90  674ccfdd  storeli.w r28, -4412(r30)
000c94  6b3ecfe6  load.hu r28, -404(r30)
000c98  e70ccfdd  storeli.w r28, -4408(r30)
000c9c  6b3eefe6  load.hu r28, -402(r30)
000ca0  e74ccfdd  storeli.w r28, -4404(r30)
000ca4  6b3e0fe7  load.hu r28, -400(r30)
000ca8  670dcfdd  storeli.w r28, -4400(r30)
000cac  6b3e2fe7  load.hu r28, -398(r30)
000cb0  674dcfdd  storeli.w r28, -4396(r30)
000cb4  6b3e4fe7  load.hu r28, -396(r30)
000cb8  e70dcfdd  storeli.w r28, -4392(r30)
000cbc  6b3e6fe7  load.hu r28, -394(r30)
000cc0  e74dcfdd  storeli.w r28, -4388(r30)
000cc4  6b3e8fe7  load.hu r28, -392(r30)
000cc8  670ecfdd  storeli.w r28, -4384(r30)
000ccc  6b3eafe7  load.hu r28, -390(r30)
000cd0  674ecfdd  storeli.w r28, -4380(r30)
000cd4  6b3ecfe7  load.hu r28, -388(r30)
000cd8  e70ecfdd  storeli.w r28, -4376(r30)
000cdc  6b3eefe7  load.hu r28, -386(r30)
000ce0  670ccff1  storeli.w r28, -1856(r30)
000ce4  6b3e0fe8  load.hu r28, -384(r30)
000ce8  e74ecfdd  storeli.w r28, -4372(r30)
000cec  6b3e2fe8  load.hu r28, -382(r30)
000cf0  670fcfdd  storeli.w r28, -4368(r30)
000cf4  6b3e4fe8  load.hu r28, -380(r30)
000cf8  674fcfdd  storeli.w r28, -4364(r30)
000cfc  6b3e6fe8  load.hu r28, -378(r30)
000d00  e70fcfdd  storeli.w r28, -4360(r30)
000d04  6b3e8fe8  load.hu r28, -376(r30)
000d08  e74fcfdd  storeli.w r28, -4356(r30)
000d0c  6b3eafe8  load.hu r28, -374(r30)
000d10  6747cfdf  storeli.w r28, -4236(r30)
000d14  6b3ecfe8  load.hu r28, -372(r30)
000d18  e707cfdf  storeli.w r28, -4232(r30)
000d1c  6b3eefe8  load.hu r28, -370(r30)
000d20  e747cfdf  storeli.w r28, -4228(r30)
000d24  6b3e0fe9  load.hu r28, -368(r30)
000d28  6708cfdf  storeli.w r28, -4224(r30)
000d2c  6b3e2fe9  load.hu r28, -366(r30)
000d30  6748cfdf  storeli.w r28, -4220(r30)
000d34  6b3e4fe9  load.hu r28, -364(r30)
000d38  e708cfdf  storeli.w r28, -4216(r30)
000d3c  6b3e6fe9  load.hu r28, -362(r30)
000d40  e748cfdf  storeli.w r28, -4212(r30)
000d44  6b3e8fe9  load.hu r28, -360(r30)
000d48  6709cfdf  storeli.w r28, -4208(r30)
000d4c  6b3eafe9  load.hu r28, -358(r30)
000d50  6749cfdf  storeli.w r28, -4204(r30)
000d54  6b3ecfe9  load.hu r28, -356(r30)
000d58  e709cfdf  storeli.w r28, -4200(r30)
000d5c  6b3eefe9  load.hu r28, -354(r30)
000d60  6700cff3  storeli.w r28, -1792(r30)
000d64  6b3e0fea  load.hu r28, -352(r30)
000d68  e749cfdf  storeli.w r28, -4196(r30)
000d6c  6b3e2fea  load.hu r28, -350(r30)
000d70  670acfdf  storeli.w r28, -4192(r30)
000d74  6b3e4fea  load.hu r28, -348(r30)
000d78  674acfdf  storeli.w r28, -4188(r30)
000d7c  6b3e6fea  load.hu r28, -346(r30)
000d80  e70acfdf  storeli.w r28, -4184(r30)
000d84  6b3e8fea  load.hu r28, -344(r30)
000d88  e74acfdf  storeli.w r28, -4180(r30)
000d8c  6b3eafea  load.hu r28, -342(r30)
000d90  670bcfdf  storeli.w r28, -4176(r30)
000d94  6b3ecfea  load.hu r28, -340(r30)
000d98  674bcfdf  storeli.w r28, -4172(r30)
000d9c  6b3eefea  load.hu r28, -338(r30)
000da0  e70bcfdf  storeli.w r28, -4168(r30)
000da4  6b3e0feb  load.hu r28, -336(r30)
000da8  e74bcfdf  storeli.w r28, -4164(r30)
000dac  6b3e2feb  load.hu r28, -334(r30)
000db0  6743cfe1  storeli.w r28, -4044(r30)
000db4  6b3e4feb  load.hu r28, -332(r30)
000db8  e703cfe1  storeli.w r28, -4040(r30)
000dbc  6b3e6feb  load.hu r28, -330(r30)
000dc0  e743cfe1  storeli.w r28, -4036(r30)
000dc4  6b3e8feb  load.hu r28, -328(r30)
000dc8  6704cfe1  storeli.w r28, -4032(r30)
000dcc  6b3eafeb  load.hu r28, -326(r30)
000dd0  6744cfe1  storeli.w r28, -4028(r30)
000dd4  6b3ecfeb  load.hu r28, -324(r30)
000dd8  e704cfe1  storeli.w r28, -4024(r30)
000ddc  6b3eefeb  load.hu r28, -322(r30)
000de0  6708cff1  storeli.w r28, -1920(r30)
000de4  6b3e0fec  load.hu r28, -320(r30)
000de8  e744cfe1  storeli.w r28, -4020(r30)
000dec  6b3e2fec  load.hu r28, -318(r30)
000df0  6705cfe1  storeli.w r28, -4016(r30)
000df4  6b3e4fec  load.hu r28, -316(r30)
000df8  6745cfe1  storeli.w r28, -4012(r30)
000dfc  6b3e6fec  load.hu r28, -314(r30)
000e00  e705cfe1  storeli.w r28, -4008(r30)
000e04  6b3e8fec  load.hu r28, -312(r30)
000e08  e745cfe1  storeli.w r28, -4004(r30)
000e0c  6b3eafec  load.hu r28, -310(r30)
000e10  6706cfe1  storeli.w r28, -4000(r30)
000e14  6b3ecfec  load.hu r28, -308(r30)
000e18  6746cfe1  storeli.w r28, -3996(r30)
000e1c  6b3eefec  load.hu r28, -306(r30)
000e20  e706cfe1  storeli.w r28, -3992(r30)
000e24  6b3e0fed  load.hu r28, -304(r30)
000e28  e746cfe1  storeli.w r28, -3988(r30)
000e2c  6b3e2fed  load.hu r28, -302(r30)
000e30  6707cfe1  storeli.w r28, -3984(r30)
000e34  6b3e4fed  load.hu r28, -300(r30)
000e38  6747cfe1  storeli.w r28, -3980(r30)
000e3c  6b3e6fed  load.hu r28, -298(r30)
000e40  e707cfe1  storeli.w r28, -3976(r30)
000e44  6b3e8fed  load.hu r28, -296(r30)
000e48  e747cfe1  storeli.w r28, -3972(r30)
000e4c  6b3eafed  load.hu r28, -294(r30)
000e50  e70fcfe1  storeli.w r28, -3848(r30)
000e54  6b3ecfed  load.hu r28, -292(r30)
000e58  e74fcfe1  storeli.w r28, -3844(r30)
000e5c  6b3eefed  load.hu r28, -290(r30)
000e60  6704cff1  storeli.w r28, -1984(r30)
000e64  6b3e0fee  load.hu r28, -288(r30)
000e68  6700cfe3  storeli.w r28, -3840(r30)
000e6c  6b3e2fee  load.hu r28, -286(r30)
000e70  6740cfe3  storeli.w r28, -3836(r30)
000e74  6b3e4fee  load.hu r28, -284(r30)
000e78  e700cfe3  storeli.w r28, -3832(r30)
000e7c  6b3e6fee  load.hu r28, -282(r30)
000e80  e740cfe3  storeli.w r28, -3828(r30)
000e84  6b3e8fee  load.hu r28, -280(r30)
000e88  6701cfe3  storeli.w r28, -3824(r30)
000e8c  6b3eafee  load.hu r28, -278(r30)
000e90  6741cfe3  storeli.w r28, -3820(r30)
000e94  6b3ecfee  load.hu r28, -276(r30)
000e98  e701cfe3  storeli.w r28, -3816(r30)
000e9c  6b3eefee  load.hu r28, -274(r30)
000ea0  e741cfe3  storeli.w r28, -3812(r30)
000ea4  6b3e0fef  load.hu r28, -272(r30)
000ea8  6702cfe3  storeli.w r28, -3808(r30)
000eac  6b3e2fef  load.hu r28, -270(r30)
000eb0  6742cfe3  storeli.w r28, -3804(r30)
000eb4  6b3e4fef  load.hu r28, -268(r30)
000eb8  e702cfe3  storeli.w r28, -3800(r30)
000ebc  6b3e6fef  load.hu r28, -266(r30)
000ec0  e742cfe3  storeli.w r28, -3796(r30)
000ec4  6b3e8fef  load.hu r28, -264(r30)
000ec8  6703cfe3  storeli.w r28, -3792(r30)
000ecc  6b3eafef  load.hu r28, -262(r30)
000ed0  6743cfe3  storeli.w r28, -3788(r30)
000ed4  6b3ecfef  load.hu r28, -260(r30)
000ed8  e703cfe3  storeli.w r28, -3784(r30)
000edc  6b3eefef  load.hu r28, -258(r30)
000ee0  6700cff1  storeli.w r28, -2048(r30)
000ee4  6b3e0ff0  load.hu r28, -256(r30)
000ee8  e743cfe3  storeli.w r28, -3780(r30)
000eec  6b3e2ff0  load.hu r28, -254(r30)
000ef0  670bcfe3  storeli.w r28, -3664(r30)
000ef4  6b3e4ff0  load.hu r28, -252(r30)
000ef8  674bcfe3  storeli.w r28, -3660(r30)
000efc  6b3e6ff0  load.hu r28, -250(r30)
000f00  e70bcfe3  storeli.w r28, -3656(r30)
000f04  6b3e8ff0  load.hu r28, -248(r30)
000f08  e74bcfe3  storeli.w r28, -3652(r30)
000f0c  6b3eaff0  load.hu r28, -246(r30)
000f10  670ccfe3  storeli.w r28, -3648(r30)
000f14  6b3ecff0  load.hu r28, -244(r30)
000f18  674ccfe3  storeli.w r28, -3644(r30)
000f1c  6b3eeff0  load.hu r28, -242(r30)
000f20  e70ccfe3  storeli.w r28, -3640(r30)
000f24  6b3e0ff1  load.hu r28, -240(r30)
000f28  e74ccfe3  storeli.w r28, -3636(r30)
000f2c  6b3e2ff1  load.hu r28, -238(r30)
000f30  670dcfe3  storeli.w r28, -3632(r30)
000f34  6b3e4ff1  load.hu r28, -236(r30)
000f38  674dcfe3  storeli.w r28, -3628(r30)
000f3c  6b3e6ff1  load.hu r28, -234(r30)
000f40  e70dcfe3  storeli.w r28, -3624(r30)
000f44  6b3e8ff1  load.hu r28, -232(r30)
000f48  e74dcfe3  storeli.w r28, -3620(r30)
000f4c  6b3eaff1  load.hu r28, -230(r30)
000f50  670ecfe3  storeli.w r28, -3616(r30)
000f54  6b3ecff1  load.hu r28, -228(r30)
000f58  674ecfe3  storeli.w r28, -3612(r30)
000f5c  6b3eeff1  load.hu r28, -226(r30)
000f60  e74ecfe3  storeli.w r28, -3604(r30)
000f64  6b3e0ff2  load.hu r28, -224(r30)
000f68  e70ecfe3  storeli.w r28, -3608(r30)
000f6c  6b3e2ff2  load.hu r28, -222(r30)
000f70  670fcfe3  storeli.w r28, -3600(r30)
000f74  6b3e4ff2  load.hu r28, -220(r30)
000f78  674fcfe3  storeli.w r28, -3596(r30)
000f7c  6b3e6ff2  load.hu r28, -218(r30)
000f80  e70fcfe3  storeli.w r28, -3592(r30)
000f84  6b3e8ff2  load.hu r28, -216(r30)
000f88  e74fcfe3  storeli.w r28, -3588(r30)
000f8c  6b3eaff2  load.hu r28, -214(r30)
000f90  6707cfe5  storeli.w r28, -3472(r30)
000f94  6b3ecff2  load.hu r28, -212(r30)
000f98  6747cfe5  storeli.w r28, -3468(r30)
000f9c  6b3eeff2  load.hu r28, -210(r30)
000fa0  e707cfe5  storeli.w r28, -3464(r30)
000fa4  6b3e0ff3  load.hu r28, -208(r30)
000fa8  e747cfe5  storeli.w r28, -3460(r30)
000fac  6b3e2ff3  load.hu r28, -206(r30)
000fb0  6708cfe5  storeli.w r28, -3456(r30)
000fb4  6b3e4ff3  load.hu r28, -204(r30)
000fb8  6748cfe5  storeli.w r28, -3452(r30)
000fbc  6b3e6ff3  load.hu r28, -202(r30)
000fc0  e708cfe5  storeli.w r28, -3448(r30)
000fc4  6b3e8ff3  load.hu r28, -200(r30)
000fc8  e748cfe5  storeli.w r28, -3444(r30)
000fcc  6b3eaff3  load.hu r28, -198(r30)
000fd0  6709cfe5  storeli.w r28, -3440(r30)
000fd4  6b3ecff3  load.hu r28, -196(r30)
000fd8  6749cfe5  storeli.w r28, -3436(r30)
000fdc  6b3eeff3  load.hu r28, -194(r30)
000fe0  e749cfe5  storeli.w r28, -3428(r30)
000fe4  6b3e0ff4  load.hu r28, -192(r30)
000fe8  e709cfe5  storeli.w r28, -3432(r30)
000fec  6b3e2ff4  load.hu r28, -190(r30)
000ff0  670acfe5  storeli.w r28, -3424(r30)
000ff4  6b3e4ff4  load.hu r28, -188(r30)
000ff8  674acfe5  storeli.w r28, -3420(r30)
000ffc  6b3e6ff4  load.hu r28, -186(r30)
001000  e70acfe5  storeli.w r28, -3416(r30)
001004  6b3e8ff4  load.hu r28, -184(r30)
001008  e74acfe5  storeli.w r28, -3412(r30)
00100c  6b3eaff4  load.hu r28, -182(r30)
001010  670bcfe5  storeli.w r28, -3408(r30)
001014  6b3ecff4  load.hu r28, -180(r30)
001018  674bcfe5  storeli.w r28, -3404(r30)
00101c  6b3eeff4  load.hu r28, -178(r30)
001020  e70bcfe5  storeli.w r28, -3400(r30)
001024  6b3e0ff5  load.hu r28, -176(r30)
001028  e74bcfe5  storeli.w r28, -3396(r30)
00102c  6b3e2ff5  load.hu r28, -174(r30)
001030  6703cfe7  storeli.w r28, -3280(r30)
001034  6b3e4ff5  load.hu r28, -172(r30)
001038  6743cfe7  storeli.w r28, -3276(r30)
00103c  6b3e6ff5  load.hu r28, -170(r30)
001040  e703cfe7  storeli.w r28, -3272(r30)
001044  6b3e8ff5  load.hu r28, -168(r30)
001048  e743cfe7  storeli.w r28, -3268(r30)
00104c  6b3eaff5  load.hu r28, -166(r30)
001050  6704cfe7  storeli.w r28, -3264(r30)
001054  6b3ecff5  load.hu r28, -164(r30)
001058  6744cfe7  storeli.w r28, -3260(r30)
00105c  6b3eeff5  load.hu r28, -162(r30)
001060  e744cfe7  storeli.w r28, -3252(r30)
001064  6b3e0ff6  load.hu r28, -160(r30)
001068  e704cfe7  storeli.w r28, -3256(r30)
00106c  6b3e2ff6  load.hu r28, -158(r30)
001070  6705cfe7  storeli.w r28, -3248(r30)
001074  6b3e4ff6  load.hu r28, -156(r30)
001078  6745cfe7  storeli.w r28, -3244(r30)
00107c  6b3e6ff6  load.hu r28, -154(r30)
001080  e705cfe7  storeli.w r28, -3240(r30)
001084  6b3e8ff6  load.hu r28, -152(r30)
001088  e745cfe7  storeli.w r28, -3236(r30)
00108c  6b3eaff6  load.hu r28, -150(r30)
001090  6706cfe7  storeli.w r28, -3232(r30)
001094  6b3ecff6  load.hu r28, -148(r30)
001098  6746cfe7  storeli.w r28, -3228(r30)
00109c  6b3eeff6  load.hu r28, -146(r30)
0010a0  e706cfe7  storeli.w r28, -3224(r30)
0010a4  6b3e0ff7  load.hu r28, -144(r30)
0010a8  e746cfe7  storeli.w r28, -3220(r30)
0010ac  6b3e2ff7  load.hu r28, -142(r30)
0010b0  6707cfe7  storeli.w r28, -3216(r30)
0010b4  6b3e4ff7  load.hu r28, -140(r30)
0010b8  6747cfe7  storeli.w r28, -3212(r30)
0010bc  6b3e6ff7  load.hu r28, -138(r30)
0010c0  e707cfe7  storeli.w r28, -3208(r30)
0010c4  6b3e8ff7  load.hu r28, -136(r30)
0010c8  e747cfe7  storeli.w r28, -3204(r30)
0010cc  6b3eaff7  load.hu r28, -134(r30)
0010d0  670fcfe7  storeli.w r28, -3088(r30)
0010d4  6b3ecff7  load.hu r28, -132(r30)
0010d8  674fcfe7  storeli.w r28, -3084(r30)
0010dc  6b3eeff7  load.hu r28, -130(r30)
0010e0  e74fcfe7  storeli.w r28, -3076(r30)
0010e4  6b3e0ff8  load.hu r28, -128(r30)
0010e8  e70fcfe7  storeli.w r28, -3080(r30)
0010ec  6b3e2ff8  load.hu r28, -126(r30)
0010f0  6700cfe9  storeli.w r28, -3072(r30)
0010f4  6b3e4ff8  load.hu r28, -124(r30)
0010f8  6740cfe9  storeli.w r28, -3068(r30)
0010fc  6b3e6ff8  load.hu r28, -122(r30)
001100  e700cfe9  storeli.w r28, -3064(r30)
001104  6b3e8ff8  load.hu r28, -120(r30)
001108  e740cfe9  storeli.w r28, -3060(r30)
00110c  6b3eaff8  load.hu r28, -118(r30)
001110  6701cfe9  storeli.w r28, -3056(r30)
001114  6b3ecff8  load.hu r28, -116(r30)
001118  6741cfe9  storeli.w r28, -3052(r30)
00111c  6b3eeff8  load.hu r28, -114(r30)
001120  e701cfe9  storeli.w r28, -3048(r30)
001124  6b3e0ff9  load.hu r28, -112(r30)
001128  e741cfe9  storeli.w r28, -3044(r30)
00112c  6b3e2ff9  load.hu r28, -110(r30)
001130  6702cfe9  storeli.w r28, -3040(r30)
001134  6b3e4ff9  load.hu r28, -108(r30)
001138  6742cfe9  storeli.w r28, -3036(r30)
00113c  6b3e6ff9  load.hu r28, -106(r30)
001140  e702cfe9  storeli.w r28, -3032(r30)
001144  6b3e8ff9  load.hu r28, -104(r30)
001148  e742cfe9  storeli.w r28, -3028(r30)
00114c  6b3eaff9  load.hu r28, -102(r30)
001150  6703cfe9  storeli.w r28, -3024(r30)
001154  6b3ecff9  load.hu r28, -100(r30)
001158  6743cfe9  storeli.w r28, -3020(r30)
00115c  6b3eeff9  load.hu r28, -98(r30)
001160  e743cfe9  storeli.w r28, -3012(r30)
001164  6b3e0ffa  load.hu r28, -96(r30)
001168  e703cfe9  storeli.w r28, -3016(r30)
00116c  6b3e2ffa  load.hu r28, -94(r30)
001170  670bcfe9  storeli.w r28, -2896(r30)
001174  6b3e4ffa  load.hu r28, -92(r30)
001178  674bcfe9  storeli.w r28, -2892(r30)
00117c  6b3e6ffa  load.hu r28, -90(r30)
001180  e70bcfe9  storeli.w r28, -2888(r30)
001184  6b3e8ffa  load.hu r28, -88(r30)
001188  e74bcfe9  storeli.w r28, -2884(r30)
00118c  6b3eaffa  load.hu r28, -86(r30)
001190  670ccfe9  storeli.w r28, -2880(r30)
001194  6b3ecffa  load.hu r28, -84(r30)
001198  674ccfe9  storeli.w r28, -2876(r30)
00119c  6b3eeffa  load.hu r28, -82(r30)
0011a0  e70ccfe9  storeli.w r28, -2872(r30)
0011a4  6b3e0ffb  load.hu r28, -80(r30)
0011a8  e74ccfe9  storeli.w r28, -2868(r30)
0011ac  6b3e2ffb  load.hu r28, -78(r30)
0011b0  670dcfe9  storeli.w r28, -2864(r30)
0011b4  6b3e4ffb  load.hu r28, -76(r30)
0011b8  674dcfe9  storeli.w r28, -2860(r30)
0011bc  6b3e6ffb  load.hu r28, -74(r30)
0011c0  e70dcfe9  storeli.w r28, -2856(r30)
0011c4  6b3e8ffb  load.hu r28, -72(r30)
0011c8  e74dcfe9  storeli.w r28, -2852(r30)
0011cc  6b3eaffb  load.hu r28, -70(r30)
0011d0  670ecfe9  storeli.w r28, -2848(r30)
0011d4  6b3ecffb  load.hu r28, -68(r30)
0011d8  674ecfe9  storeli.w r28, -2844(r30)
0011dc  6b3eeffb  load.hu r28, -66(r30)
0011e0  e74ecfe9  storeli.w r28, -2836(r30)
0011e4  6b3e0ffc  load.hu r28, -64(r30)
0011e8  e70ecfe9  storeli.w r28, -2840(r30)
0011ec  6b3e2ffc  load.hu r28, -62(r30)
0011f0  670fcfe9  storeli.w r28, -2832(r30)
0011f4  6b3e4ffc  load.hu r28, -60(r30)
0011f8  674fcfe9  storeli.w r28, -2828(r30)
0011fc  6b3e6ffc  load.hu r28, -58(r30)
001200  e70fcfe9  storeli.w r28, -2824(r30)
001204  6b3e8ffc  load.hu r28, -56(r30)
001208  e74fcfe9  storeli.w r28, -2820(r30)
00120c  6b3eaffc  load.hu r28, -54(r30)
001210  6745cfeb  storeli.w r28, -2732(r30)
001214  6b3ecffc  load.hu r28, -52(r30)
001218  e705cfeb  storeli.w r28, -2728(r30)
00121c  6b3eeffc  load.hu r28, -50(r30)
001220  e745cfeb  storeli.w r28, -2724(r30)
001224  6b3e0ffd  load.hu r28, -48(r30)
001228  6706cfeb  storeli.w r28, -2720(r30)
00122c  6b3e2ffd  load.hu r28, -46(r30)
001230  6746cfeb  storeli.w r28, -2716(r30)
001234  6b3e4ffd  load.hu r28, -44(r30)
001238  e706cfeb  storeli.w r28, -2712(r30)
00123c  6b3e6ffd  load.hu r28, -42(r30)
001240  e746cfeb  storeli.w r28, -2708(r30)
001244  6b3e8ffd  load.hu r28, -40(r30)
001248  6707cfeb  storeli.w r28, -2704(r30)
00124c  6b3eaffd  load.hu r28, -38(r30)
001250  6747cfeb  storeli.w r28, -2700(r30)
001254  6b3ecffd  load.hu r28, -36(r30)
001258  e707cfeb  storeli.w r28, -2696(r30)
00125c  6b3eeffd  load.hu r28, -34(r30)
001260  6708cfeb  storeli.w r28, -2688(r30)
001264  6b3e0ffe  load.hu r28, -32(r30)
001268  e747cfeb  storeli.w r28, -2692(r30)
00126c  6b3e2ffe  load.hu r28, -30(r30)
001270  6748cfeb  storeli.w r28, -2684(r30)
001274  6b3e4ffe  load.hu r28, -28(r30)
001278  e708cfeb  storeli.w r28, -2680(r30)
00127c  6b3e6ffe  load.hu r28, -26(r30)
001280  e748cfeb  storeli.w r28, -2676(r30)
001284  6b3e8ffe  load.hu r28, -24(r30)
001288  6709cfeb  storeli.w r28, -2672(r30)
00128c  6b3eaffe  load.hu r28, -22(r30)
001290  6749cfeb  storeli.w r28, -2668(r30)
001294  6b3ecffe  load.hu r28, -20(r30)
001298  e709cfeb  storeli.w r28, -2664(r30)
00129c  6b3eeffe  load.hu r28, -18(r30)
0012a0  e749cfeb  storeli.w r28, -2660(r30)
0012a4  6b3e0fff  load.hu r28, -16(r30)
0012a8  670acfeb  storeli.w r28, -2656(r30)
0012ac  6b3e2fff  load.hu r28, -14(r30)
0012b0  674acfeb  storeli.w r28, -2652(r30)
0012b4  6b3e4fff  load.hu r28, -12(r30)
0012b8  e70acfeb  storeli.w r28, -2648(r30)
0012bc  6b3e6fff  load.hu r28, -10(r30)
0012c0  e74acfeb  storeli.w r28, -2644(r30)
0012c4  6b3e8fff  load.hu r28, -8(r30)
0012c8  670bcfeb  storeli.w r28, -2640(r30)
0012cc  6b3eafff  load.hu r28, -6(r30)
0012d0  674bcfeb  storeli.w r28, -2636(r30)
0012d4  6b3ecfff  load.hu r28, -4(r30)
0012d8  e70bcfeb  storeli.w r28, -2632(r30)
0012dc  6b3eefff  load.hu r28, -2(r30)
0012e0  e74bcfeb  storeli.w r28, -2628(r30)
0012e4  1f1e0000  addli r28, zero, 1
0012e8  7e010ee0  vmmov mr2, r28
0012ec  1f2e0000  addli r28, zero, 2
0012f0  eaa01d34  vor.u.mh vr1{mr2}, r27, vr1
0012f4  e30d9fd6  loadli.w r27,  -5304(r30)
0012f8  fe010ee0  vmmov mr3, r28
0012fc  1f4e0000  addli r28, zero, 4
001300  b39d0d20  hfloat2float.rn r27, r27
001304  7e000ee0  vmmov mr0, r28
001308  1f0e1000  addli r28, zero, 8
00130c  eaa01d36  vor.u.mh vr1{mr3}, r27, vr1
001310  e30dafd6  loadli.w r27,  -5296(r30)
001314  b39d0d20  hfloat2float.rn r27, r27
001318  eaa01d30  vor.u.mh vr1{mr0}, r27, vr1
00131c  e30dbfd6  loadli.w r27,  -5288(r30)
001320  7e000ee0  vmmov mr0, r28
001324  1f0e2000  addli r28, zero, 16
001328  b39d0d20  hfloat2float.rn r27, r27
00132c  eaa01d30  vor.u.mh vr1{mr0}, r27, vr1
001330  e30dcfd6  loadli.w r27,  -5280(r30)
001334  7e000ee0  vmmov mr0, r28
001338  1f0e4000  addli r28, zero, 32
00133c  b39d0d20  hfloat2float.rn r27, r27
001340  eaa01d30  vor.u.mh vr1{mr0}, r27, vr1
001344  e30ddfd6  loadli.w r27,  -5272(r30)
001348  7e000ee0  vmmov mr0, r28
00134c  1f0e8000  addli r28, zero, 64
001350  b39d0d20  hfloat2float.rn r27, r27
001354  eaa01d30  vor.u.mh vr1{mr0}, r27, vr1
001358  e30defd6  loadli.w r27,  -5264(r30)
00135c  7e000ee0  vmmov mr0, r28
001360  1f0e0001  addli r28, zero, 128
001364  b39d0d20  hfloat2float.rn r27, r27
001368  eaa01d30  vor.u.mh vr1{mr0}, r27, vr1
00136c  e30dffd6  loadli.w r27,  -5256(r30)
001370  7e000ee0  vmmov mr0, r28
001374  1f0e0002  addli r28, zero, 256
001378  b39d0d20  hfloat2float.rn r27, r27
00137c  eaa01d30  vor.u.mh vr1{mr0}, r27, vr1
001380  e30d0fd7  loadli.w r27,  -5248(r30)
001384  7e000ee0  vmmov mr0, r28
001388  1f0e0004  addli r28, zero, 512
00138c  b39d0d20  hfloat2float.rn r27, r27
001390  eaa01d30  vor.u.mh vr1{mr0}, r27, vr1
001394  e30d0fd8  loadli.w r27,  -5120(r30)
001398  7e000ee0  vmmov mr0, r28
00139c  1f0e0008  addli r28, zero, 1024
0013a0  fe010ee0  vmmov mr3, r28
0013a4  1f0e0010  addli r28, zero, 2048
0013a8  b39d0d20  hfloat2float.rn r27, r27
0013ac  7e010ee0  vmmov mr2, r28
0013b0  1f0e0020  addli r28, zero, 4096
0013b4  eaa01d30  vor.u.mh vr1{mr0}, r27, vr1
0013b8  e30d0fd9  loadli.w r27,  -4992(r30)
0013bc  7e000ee0  vmmov mr0, r28
0013c0  1f0e0040  addli r28, zero, 8192
0013c4  2b800000  lui zero, 8
0013c8  b39d0d20  hfloat2float.rn r27, r27
0013cc  eaa01d36  vor.u.mh vr1{mr3}, r27, vr1
0013d0  e30d0fda  loadli.w r27,  -4864(r30)
0013d4  b39d0d20  hfloat2float.rn r27, r27
0013d8  eaa01d34  vor.u.mh vr1{mr2}, r27, vr1
0013dc  e30d0fdb  loadli.w r27,  -4736(r30)
0013e0  b39d0d20  hfloat2float.rn r27, r27
0013e4  eaa01d30  vor.u.mh vr1{mr0}, r27, vr1
0013e8  e30d0fdc  loadli.w r27,  -4608(r30)
0013ec  7e000ee0  vmmov mr0, r28
0013f0  2b4e0000  lui r28, 4
0013f4  b39d0d20  hfloat2float.rn r27, r27
0013f8  eaa01d30  vor.u.mh vr1{mr0}, r27, vr1
0013fc  e30d8fdc  loadli.w r27,  -4544(r30)
001400  7e000ee0  vmmov mr0, r28
001404  b39d0d20  hfloat2float.rn r27, r27
001408  eaa01d30  vor.u.mh vr1{mr0}, r27, vr1
00140c  e30d0fea  loadli.w r27,  -2816(r30)
001410  7e0000e0  vmmov mr0, zero
001414  630e0fde  loadli.w r28,  -4352(r30)
001418  17200000  xor zero, zero, zero
00141c  12340002  vadd.s.mz vr8{mr1}, zero, vr0
001420  92330002  vadd.s.mz vr7{mr1}, zero, vr0
001424  12330002  vadd.s.mz vr6{mr1}, zero, vr0
001428  92320002  vadd.s.mz vr5{mr1}, zero, vr0
00142c  92310002  vadd.s.mz vr3{mr1}, zero, vr0
001430  12310002  vadd.s.mz vr2{mr1}, zero, vr0
001434  b39d0d20  hfloat2float.rn r27, r27
001438  331e0e20  hfloat2float.rn r28, r28
00143c  eaa01d30  vor.u.mh vr1{mr0}, r27, vr1
001440  9f0d0fea  addli r27, r30, -2816
001444  00a00000  mfence { lm }
001448  46901d02  vstore_mask16.mz vr1{mr1}, 0(r27)
00144c  92300002  vadd.s.mz vr1{mr1}, zero, vr0
001450  9f1d0000  addli r27, zero, 1
001454  7e800de0  vmmov mr0, r27
001458  ea201e30  vor.u.mh vr1{mr0}, r28, vr1
00145c  e30d8fdf  loadli.w r27,  -4160(r30)
001460  1f2e0000  addli r28, zero, 2
001464  7e000ee0  vmmov mr0, r28
001468  1f4e0000  addli r28, zero, 4
00146c  b39d0d20  hfloat2float.rn r27, r27
001470  eaa01d30  vor.u.mh vr1{mr0}, r27, vr1
001474  e30d0fe1  loadli.w r27,  -3968(r30)
001478  7e000ee0  vmmov mr0, r28
00147c  1f0e1000  addli r28, zero, 8
001480  b39d0d20  hfloat2float.rn r27, r27
001484  eaa01d30  vor.u.mh vr1{mr0}, r27, vr1
001488  e30d8fe2  loadli.w r27,  -3776(r30)
00148c  7e000ee0  vmmov mr0, r28
001490  1f0e2000  addli r28, zero, 16
001494  b39d0d20  hfloat2float.rn r27, r27
001498  eaa01d30  vor.u.mh vr1{mr0}, r27, vr1
00149c  e30d0fe4  loadli.w r27,  -3584(r30)
0014a0  7e000ee0  vmmov mr0, r28
0014a4  1f0e4000  addli r28, zero, 32
0014a8  b39d0d20  hfloat2float.rn r27, r27
0014ac  eaa01d30  vor.u.mh vr1{mr0}, r27, vr1
0014b0  e30d8fe5  loadli.w r27,  -3392(r30)
0014b4  7e000ee0  vmmov mr0, r28
0014b8  1f0e8000  addli r28, zero, 64
0014bc  b39d0d20  hfloat2float.rn r27, r27
0014c0  eaa01d30  vor.u.mh vr1{mr0}, r27, vr1
0014c4  e30d0fe7  loadli.w r27,  -3200(r30)
0014c8  7e000ee0  vmmov mr0, r28
0014cc  1f0e0001  addli r28, zero, 128
0014d0  b39d0d20  hfloat2float.rn r27, r27
0014d4  eaa01d30  vor.u.mh vr1{mr0}, r27, vr1
0014d8  e30d8fe8  loadli.w r27,  -3008(r30)
0014dc  7e000ee0  vmmov mr0, r28
0014e0  1f0e0002  addli r28, zero, 256
0014e4  b39d0d20  hfloat2float.rn r27, r27
0014e8  eaa01d30  vor.u.mh vr1{mr0}, r27, vr1
0014ec  e30d8ff2  loadli.w r27,  -1728(r30)
0014f0  7e000ee0  vmmov mr0, r28
0014f4  1f0e0004  addli r28, zero, 512
0014f8  b39d0d20  hfloat2float.rn r27, r27
0014fc  eaa01d30  vor.u.mh vr1{mr0}, r27, vr1
001500  e30d0ff3  loadli.w r27,  -1664(r30)
001504  7e000ee0  vmmov mr0, r28
001508  b39d0d20  hfloat2float.rn r27, r27
00150c  eaa01d30  vor.u.mh vr1{mr0}, r27, vr1
001510  eaa01a36  vor.u.mh vr1{mr3}, r21, vr1
001514  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
001518  b3100120  hfloat2float.rn r1, r2
00151c  1f010020  addli r2, zero, 4096
001520  7e0001e0  vmmov mr0, r2
001524  1f010040  addli r2, zero, 8192
001528  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00152c  b3900120  hfloat2float.rn r1, r3
001530  fe0101e0  vmmov mr3, r2
001534  2b410000  lui r2, 4
001538  ab810000  lui r3, 8
00153c  7e0101e0  vmmov mr2, r2
001540  7e8001e0  vmmov mr0, r3
001544  33110320  hfloat2float.rn r2, r6
001548  ab810000  lui r3, 8
00154c  1f03ffef  addli r6, r30, -2056
001550  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
001554  b3100220  hfloat2float.rn r1, r4
001558  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
00155c  b3900220  hfloat2float.rn r1, r5
001560  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001564  9f008fe8  addli r1, r30, -3008
001568  00a00000  mfence { lm }
00156c  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
001570  92300002  vadd.s.mz vr1{mr1}, zero, vr0
001574  9f100000  addli r1, zero, 1
001578  7e8000e0  vmmov mr0, r1
00157c  b3100420  hfloat2float.rn r1, r8
001580  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001584  1f210000  addli r2, zero, 2
001588  7e0001e0  vmmov mr0, r2
00158c  1f410000  addli r2, zero, 4
001590  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001594  b3900520  hfloat2float.rn r1, r11
001598  7e0001e0  vmmov mr0, r2
00159c  1f011000  addli r2, zero, 8
0015a0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0015a4  b3100620  hfloat2float.rn r1, r12
0015a8  7e0001e0  vmmov mr0, r2
0015ac  1f012000  addli r2, zero, 16
0015b0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0015b4  b3100720  hfloat2float.rn r1, r14
0015b8  7e0001e0  vmmov mr0, r2
0015bc  1f014000  addli r2, zero, 32
0015c0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0015c4  b3900720  hfloat2float.rn r1, r15
0015c8  7e0001e0  vmmov mr0, r2
0015cc  1f018000  addli r2, zero, 64
0015d0  9f074000  addli r15, zero, 32
0015d4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0015d8  b3100820  hfloat2float.rn r1, r16
0015dc  7e0001e0  vmmov mr0, r2
0015e0  1f010001  addli r2, zero, 128
0015e4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0015e8  b3900820  hfloat2float.rn r1, r17
0015ec  7e0001e0  vmmov mr0, r2
0015f0  1f010002  addli r2, zero, 256
0015f4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0015f8  b3100920  hfloat2float.rn r1, r18
0015fc  7e0001e0  vmmov mr0, r2
001600  1f010004  addli r2, zero, 512
001604  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001608  b3100a20  hfloat2float.rn r1, r20
00160c  7e0001e0  vmmov mr0, r2
001610  1f010008  addli r2, zero, 1024
001614  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001618  b3100b20  hfloat2float.rn r1, r22
00161c  7e0001e0  vmmov mr0, r2
001620  1f010010  addli r2, zero, 2048
001624  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001628  b3100c20  hfloat2float.rn r1, r24
00162c  7e0001e0  vmmov mr0, r2
001630  1f010020  addli r2, zero, 4096
001634  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001638  b3900c20  hfloat2float.rn r1, r25
00163c  7e0001e0  vmmov mr0, r2
001640  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001644  e340dfce  loadli.w r1,  -6292(r30)
001648  7e8001e0  vmmov mr0, r3
00164c  ab810000  lui r3, 8
001650  b3900020  hfloat2float.rn r1, r1
001654  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
001658  e300efce  loadli.w r1,  -6288(r30)
00165c  b3900020  hfloat2float.rn r1, r1
001660  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
001664  e300ffce  loadli.w r1,  -6280(r30)
001668  6341efce  loadli.w r2,  -6284(r30)
00166c  b3900020  hfloat2float.rn r1, r1
001670  33110120  hfloat2float.rn r2, r2
001674  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001678  9f000fe7  addli r1, r30, -3200
00167c  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
001680  92300002  vadd.s.mz vr1{mr1}, zero, vr0
001684  9f100000  addli r1, zero, 1
001688  7e8000e0  vmmov mr0, r1
00168c  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001690  e340ffce  loadli.w r1,  -6276(r30)
001694  1f210000  addli r2, zero, 2
001698  7e0001e0  vmmov mr0, r2
00169c  1f410000  addli r2, zero, 4
0016a0  b3900020  hfloat2float.rn r1, r1
0016a4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0016a8  e3000fcf  loadli.w r1,  -6272(r30)
0016ac  7e0001e0  vmmov mr0, r2
0016b0  1f011000  addli r2, zero, 8
0016b4  b3900020  hfloat2float.rn r1, r1
0016b8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0016bc  e3400fcf  loadli.w r1,  -6268(r30)
0016c0  7e0001e0  vmmov mr0, r2
0016c4  1f012000  addli r2, zero, 16
0016c8  b3900020  hfloat2float.rn r1, r1
0016cc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0016d0  e3001fcf  loadli.w r1,  -6264(r30)
0016d4  7e0001e0  vmmov mr0, r2
0016d8  1f014000  addli r2, zero, 32
0016dc  b3900020  hfloat2float.rn r1, r1
0016e0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0016e4  e3401fcf  loadli.w r1,  -6260(r30)
0016e8  7e0001e0  vmmov mr0, r2
0016ec  1f018000  addli r2, zero, 64
0016f0  b3900020  hfloat2float.rn r1, r1
0016f4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0016f8  e3002fcf  loadli.w r1,  -6256(r30)
0016fc  7e0001e0  vmmov mr0, r2
001700  1f010001  addli r2, zero, 128
001704  b3900020  hfloat2float.rn r1, r1
001708  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00170c  e3402fcf  loadli.w r1,  -6252(r30)
001710  7e0001e0  vmmov mr0, r2
001714  1f010002  addli r2, zero, 256
001718  b3900020  hfloat2float.rn r1, r1
00171c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001720  e3003fcf  loadli.w r1,  -6248(r30)
001724  7e0001e0  vmmov mr0, r2
001728  1f010004  addli r2, zero, 512
00172c  b3900020  hfloat2float.rn r1, r1
001730  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001734  e3403fcf  loadli.w r1,  -6244(r30)
001738  7e0001e0  vmmov mr0, r2
00173c  1f010008  addli r2, zero, 1024
001740  b3900020  hfloat2float.rn r1, r1
001744  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001748  e3004fcf  loadli.w r1,  -6240(r30)
00174c  7e0001e0  vmmov mr0, r2
001750  1f010010  addli r2, zero, 2048
001754  b3900020  hfloat2float.rn r1, r1
001758  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00175c  e3404fcf  loadli.w r1,  -6236(r30)
001760  7e0001e0  vmmov mr0, r2
001764  1f010020  addli r2, zero, 4096
001768  b3900020  hfloat2float.rn r1, r1
00176c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001770  e3005fcf  loadli.w r1,  -6232(r30)
001774  7e0001e0  vmmov mr0, r2
001778  b3900020  hfloat2float.rn r1, r1
00177c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001780  e3405fcf  loadli.w r1,  -6228(r30)
001784  7e8001e0  vmmov mr0, r3
001788  ab810000  lui r3, 8
00178c  b3900020  hfloat2float.rn r1, r1
001790  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
001794  e3006fcf  loadli.w r1,  -6224(r30)
001798  b3900020  hfloat2float.rn r1, r1
00179c  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0017a0  e3007fcf  loadli.w r1,  -6216(r30)
0017a4  63416fcf  loadli.w r2,  -6220(r30)
0017a8  b3900020  hfloat2float.rn r1, r1
0017ac  33110120  hfloat2float.rn r2, r2
0017b0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0017b4  9f008fe5  addli r1, r30, -3392
0017b8  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0017bc  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0017c0  9f100000  addli r1, zero, 1
0017c4  7e8000e0  vmmov mr0, r1
0017c8  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0017cc  e3407fcf  loadli.w r1,  -6212(r30)
0017d0  1f210000  addli r2, zero, 2
0017d4  7e0001e0  vmmov mr0, r2
0017d8  1f410000  addli r2, zero, 4
0017dc  b3900020  hfloat2float.rn r1, r1
0017e0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0017e4  e3008fcf  loadli.w r1,  -6208(r30)
0017e8  7e0001e0  vmmov mr0, r2
0017ec  1f011000  addli r2, zero, 8
0017f0  b3900020  hfloat2float.rn r1, r1
0017f4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0017f8  e3408fcf  loadli.w r1,  -6204(r30)
0017fc  7e0001e0  vmmov mr0, r2
001800  1f012000  addli r2, zero, 16
001804  b3900020  hfloat2float.rn r1, r1
001808  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00180c  e3009fcf  loadli.w r1,  -6200(r30)
001810  7e0001e0  vmmov mr0, r2
001814  1f014000  addli r2, zero, 32
001818  b3900020  hfloat2float.rn r1, r1
00181c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001820  e3409fcf  loadli.w r1,  -6196(r30)
001824  7e0001e0  vmmov mr0, r2
001828  1f018000  addli r2, zero, 64
00182c  b3900020  hfloat2float.rn r1, r1
001830  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001834  e300afcf  loadli.w r1,  -6192(r30)
001838  7e0001e0  vmmov mr0, r2
00183c  1f010001  addli r2, zero, 128
001840  b3900020  hfloat2float.rn r1, r1
001844  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001848  e340afcf  loadli.w r1,  -6188(r30)
00184c  7e0001e0  vmmov mr0, r2
001850  1f010002  addli r2, zero, 256
001854  fe0101e0  vmmov mr3, r2
001858  1f010004  addli r2, zero, 512
00185c  b3900020  hfloat2float.rn r1, r1
001860  7e0101e0  vmmov mr2, r2
001864  1f010008  addli r2, zero, 1024
001868  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00186c  e300bfcf  loadli.w r1,  -6184(r30)
001870  7e0001e0  vmmov mr0, r2
001874  1f010010  addli r2, zero, 2048
001878  b3900020  hfloat2float.rn r1, r1
00187c  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
001880  e340bfcf  loadli.w r1,  -6180(r30)
001884  b3900020  hfloat2float.rn r1, r1
001888  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
00188c  e300cfcf  loadli.w r1,  -6176(r30)
001890  b3900020  hfloat2float.rn r1, r1
001894  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001898  e340cfcf  loadli.w r1,  -6172(r30)
00189c  7e0001e0  vmmov mr0, r2
0018a0  1f010020  addli r2, zero, 4096
0018a4  b3900020  hfloat2float.rn r1, r1
0018a8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0018ac  e300dfcf  loadli.w r1,  -6168(r30)
0018b0  7e0001e0  vmmov mr0, r2
0018b4  1f010040  addli r2, zero, 8192
0018b8  b3900020  hfloat2float.rn r1, r1
0018bc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0018c0  e340dfcf  loadli.w r1,  -6164(r30)
0018c4  7e0001e0  vmmov mr0, r2
0018c8  2b410000  lui r2, 4
0018cc  b3900020  hfloat2float.rn r1, r1
0018d0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0018d4  e300efcf  loadli.w r1,  -6160(r30)
0018d8  7e0001e0  vmmov mr0, r2
0018dc  b3900020  hfloat2float.rn r1, r1
0018e0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0018e4  e300ffcf  loadli.w r1,  -6152(r30)
0018e8  7e8001e0  vmmov mr0, r3
0018ec  6341efcf  loadli.w r2,  -6156(r30)
0018f0  ab810000  lui r3, 8
0018f4  b3900020  hfloat2float.rn r1, r1
0018f8  33110120  hfloat2float.rn r2, r2
0018fc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001900  9f000fe4  addli r1, r30, -3584
001904  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
001908  92300002  vadd.s.mz vr1{mr1}, zero, vr0
00190c  9f100000  addli r1, zero, 1
001910  7e8000e0  vmmov mr0, r1
001914  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001918  e340ffcf  loadli.w r1,  -6148(r30)
00191c  1f210000  addli r2, zero, 2
001920  7e0001e0  vmmov mr0, r2
001924  1f410000  addli r2, zero, 4
001928  b3900020  hfloat2float.rn r1, r1
00192c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001930  e3000fd0  loadli.w r1,  -6144(r30)
001934  7e0001e0  vmmov mr0, r2
001938  1f011000  addli r2, zero, 8
00193c  b3900020  hfloat2float.rn r1, r1
001940  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001944  e3400fd0  loadli.w r1,  -6140(r30)
001948  7e0001e0  vmmov mr0, r2
00194c  1f012000  addli r2, zero, 16
001950  b3900020  hfloat2float.rn r1, r1
001954  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001958  e3001fd0  loadli.w r1,  -6136(r30)
00195c  7e0001e0  vmmov mr0, r2
001960  1f014000  addli r2, zero, 32
001964  b3900020  hfloat2float.rn r1, r1
001968  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00196c  e3401fd0  loadli.w r1,  -6132(r30)
001970  7e0001e0  vmmov mr0, r2
001974  1f018000  addli r2, zero, 64
001978  b3900020  hfloat2float.rn r1, r1
00197c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001980  e3002fd0  loadli.w r1,  -6128(r30)
001984  7e0001e0  vmmov mr0, r2
001988  1f010001  addli r2, zero, 128
00198c  b3900020  hfloat2float.rn r1, r1
001990  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001994  e3402fd0  loadli.w r1,  -6124(r30)
001998  7e0001e0  vmmov mr0, r2
00199c  1f010008  addli r2, zero, 1024
0019a0  b3900020  hfloat2float.rn r1, r1
0019a4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0019a8  e3003fd0  loadli.w r1,  -6120(r30)
0019ac  7e0001e0  vmmov mr0, r2
0019b0  1f010010  addli r2, zero, 2048
0019b4  b3900020  hfloat2float.rn r1, r1
0019b8  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
0019bc  e3403fd0  loadli.w r1,  -6116(r30)
0019c0  b3900020  hfloat2float.rn r1, r1
0019c4  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0019c8  e3004fd0  loadli.w r1,  -6112(r30)
0019cc  b3900020  hfloat2float.rn r1, r1
0019d0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0019d4  e3404fd0  loadli.w r1,  -6108(r30)
0019d8  7e0001e0  vmmov mr0, r2
0019dc  1f010020  addli r2, zero, 4096
0019e0  b3900020  hfloat2float.rn r1, r1
0019e4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0019e8  e3005fd0  loadli.w r1,  -6104(r30)
0019ec  7e0001e0  vmmov mr0, r2
0019f0  1f010040  addli r2, zero, 8192
0019f4  fe0101e0  vmmov mr3, r2
0019f8  2b410000  lui r2, 4
0019fc  b3900020  hfloat2float.rn r1, r1
001a00  7e0101e0  vmmov mr2, r2
001a04  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001a08  e3405fd0  loadli.w r1,  -6100(r30)
001a0c  7e8001e0  vmmov mr0, r3
001a10  ab810000  lui r3, 8
001a14  b3900020  hfloat2float.rn r1, r1
001a18  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
001a1c  e3006fd0  loadli.w r1,  -6096(r30)
001a20  b3900020  hfloat2float.rn r1, r1
001a24  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
001a28  e3007fd0  loadli.w r1,  -6088(r30)
001a2c  63416fd0  loadli.w r2,  -6092(r30)
001a30  b3900020  hfloat2float.rn r1, r1
001a34  33110120  hfloat2float.rn r2, r2
001a38  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001a3c  9f008fe2  addli r1, r30, -3776
001a40  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
001a44  92300002  vadd.s.mz vr1{mr1}, zero, vr0
001a48  9f100000  addli r1, zero, 1
001a4c  7e8000e0  vmmov mr0, r1
001a50  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001a54  e3407fd0  loadli.w r1,  -6084(r30)
001a58  1f210000  addli r2, zero, 2
001a5c  7e0001e0  vmmov mr0, r2
001a60  1f410000  addli r2, zero, 4
001a64  b3900020  hfloat2float.rn r1, r1
001a68  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001a6c  e3008fd0  loadli.w r1,  -6080(r30)
001a70  7e0001e0  vmmov mr0, r2
001a74  1f011000  addli r2, zero, 8
001a78  b3900020  hfloat2float.rn r1, r1
001a7c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001a80  e3408fd0  loadli.w r1,  -6076(r30)
001a84  7e0001e0  vmmov mr0, r2
001a88  1f012000  addli r2, zero, 16
001a8c  b3900020  hfloat2float.rn r1, r1
001a90  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001a94  e3009fd0  loadli.w r1,  -6072(r30)
001a98  7e0001e0  vmmov mr0, r2
001a9c  1f014000  addli r2, zero, 32
001aa0  b3900020  hfloat2float.rn r1, r1
001aa4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001aa8  e3409fd0  loadli.w r1,  -6068(r30)
001aac  7e0001e0  vmmov mr0, r2
001ab0  1f018000  addli r2, zero, 64
001ab4  b3900020  hfloat2float.rn r1, r1
001ab8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001abc  e300afd0  loadli.w r1,  -6064(r30)
001ac0  7e0001e0  vmmov mr0, r2
001ac4  1f010001  addli r2, zero, 128
001ac8  b3900020  hfloat2float.rn r1, r1
001acc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001ad0  e340afd0  loadli.w r1,  -6060(r30)
001ad4  7e0001e0  vmmov mr0, r2
001ad8  1f010002  addli r2, zero, 256
001adc  b3900020  hfloat2float.rn r1, r1
001ae0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001ae4  e300bfd0  loadli.w r1,  -6056(r30)
001ae8  7e0001e0  vmmov mr0, r2
001aec  1f010004  addli r2, zero, 512
001af0  b3900020  hfloat2float.rn r1, r1
001af4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001af8  e340bfd0  loadli.w r1,  -6052(r30)
001afc  7e0001e0  vmmov mr0, r2
001b00  1f010008  addli r2, zero, 1024
001b04  b3900020  hfloat2float.rn r1, r1
001b08  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001b0c  e300cfd0  loadli.w r1,  -6048(r30)
001b10  7e0001e0  vmmov mr0, r2
001b14  1f010010  addli r2, zero, 2048
001b18  b3900020  hfloat2float.rn r1, r1
001b1c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001b20  e340cfd0  loadli.w r1,  -6044(r30)
001b24  7e0001e0  vmmov mr0, r2
001b28  1f010020  addli r2, zero, 4096
001b2c  b3900020  hfloat2float.rn r1, r1
001b30  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001b34  e300dfd0  loadli.w r1,  -6040(r30)
001b38  7e0001e0  vmmov mr0, r2
001b3c  b3900020  hfloat2float.rn r1, r1
001b40  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001b44  e340dfd0  loadli.w r1,  -6036(r30)
001b48  7e8001e0  vmmov mr0, r3
001b4c  ab810000  lui r3, 8
001b50  b3900020  hfloat2float.rn r1, r1
001b54  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
001b58  e300efd0  loadli.w r1,  -6032(r30)
001b5c  b3900020  hfloat2float.rn r1, r1
001b60  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
001b64  e300ffd0  loadli.w r1,  -6024(r30)
001b68  6341efd0  loadli.w r2,  -6028(r30)
001b6c  b3900020  hfloat2float.rn r1, r1
001b70  33110120  hfloat2float.rn r2, r2
001b74  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001b78  9f000fe1  addli r1, r30, -3968
001b7c  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
001b80  92300002  vadd.s.mz vr1{mr1}, zero, vr0
001b84  9f100000  addli r1, zero, 1
001b88  7e8000e0  vmmov mr0, r1
001b8c  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001b90  e340ffd0  loadli.w r1,  -6020(r30)
001b94  1f210000  addli r2, zero, 2
001b98  7e0001e0  vmmov mr0, r2
001b9c  1f410000  addli r2, zero, 4
001ba0  b3900020  hfloat2float.rn r1, r1
001ba4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001ba8  e3000fd1  loadli.w r1,  -6016(r30)
001bac  7e0001e0  vmmov mr0, r2
001bb0  1f011000  addli r2, zero, 8
001bb4  b3900020  hfloat2float.rn r1, r1
001bb8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001bbc  e3400fd1  loadli.w r1,  -6012(r30)
001bc0  7e0001e0  vmmov mr0, r2
001bc4  1f012000  addli r2, zero, 16
001bc8  b3900020  hfloat2float.rn r1, r1
001bcc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001bd0  e3001fd1  loadli.w r1,  -6008(r30)
001bd4  7e0001e0  vmmov mr0, r2
001bd8  1f014000  addli r2, zero, 32
001bdc  b3900020  hfloat2float.rn r1, r1
001be0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001be4  e3401fd1  loadli.w r1,  -6004(r30)
001be8  7e0001e0  vmmov mr0, r2
001bec  1f018000  addli r2, zero, 64
001bf0  b3900020  hfloat2float.rn r1, r1
001bf4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001bf8  e3002fd1  loadli.w r1,  -6000(r30)
001bfc  7e0001e0  vmmov mr0, r2
001c00  1f010001  addli r2, zero, 128
001c04  b3900020  hfloat2float.rn r1, r1
001c08  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001c0c  e3402fd1  loadli.w r1,  -5996(r30)
001c10  7e0001e0  vmmov mr0, r2
001c14  1f010002  addli r2, zero, 256
001c18  b3900020  hfloat2float.rn r1, r1
001c1c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001c20  e3003fd1  loadli.w r1,  -5992(r30)
001c24  7e0001e0  vmmov mr0, r2
001c28  1f010004  addli r2, zero, 512
001c2c  b3900020  hfloat2float.rn r1, r1
001c30  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001c34  e3403fd1  loadli.w r1,  -5988(r30)
001c38  7e0001e0  vmmov mr0, r2
001c3c  1f010008  addli r2, zero, 1024
001c40  b3900020  hfloat2float.rn r1, r1
001c44  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001c48  e3004fd1  loadli.w r1,  -5984(r30)
001c4c  7e0001e0  vmmov mr0, r2
001c50  1f010010  addli r2, zero, 2048
001c54  b3900020  hfloat2float.rn r1, r1
001c58  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001c5c  e3404fd1  loadli.w r1,  -5980(r30)
001c60  7e0001e0  vmmov mr0, r2
001c64  1f010020  addli r2, zero, 4096
001c68  b3900020  hfloat2float.rn r1, r1
001c6c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001c70  e3005fd1  loadli.w r1,  -5976(r30)
001c74  7e0001e0  vmmov mr0, r2
001c78  b3900020  hfloat2float.rn r1, r1
001c7c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001c80  e3405fd1  loadli.w r1,  -5972(r30)
001c84  b3900020  hfloat2float.rn r1, r1
001c88  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
001c8c  e3006fd1  loadli.w r1,  -5968(r30)
001c90  b3900020  hfloat2float.rn r1, r1
001c94  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
001c98  e3007fd1  loadli.w r1,  -5960(r30)
001c9c  7e8101e0  vmmov mr2, r3
001ca0  63416fd1  loadli.w r2,  -5964(r30)
001ca4  ab810000  lui r3, 8
001ca8  b3900020  hfloat2float.rn r1, r1
001cac  33110120  hfloat2float.rn r2, r2
001cb0  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
001cb4  9f008fdf  addli r1, r30, -4160
001cb8  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
001cbc  92300002  vadd.s.mz vr1{mr1}, zero, vr0
001cc0  9f100000  addli r1, zero, 1
001cc4  7e8000e0  vmmov mr0, r1
001cc8  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001ccc  e3407fd1  loadli.w r1,  -5956(r30)
001cd0  1f210000  addli r2, zero, 2
001cd4  7e0001e0  vmmov mr0, r2
001cd8  1f410000  addli r2, zero, 4
001cdc  b3900020  hfloat2float.rn r1, r1
001ce0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001ce4  e3008fd1  loadli.w r1,  -5952(r30)
001ce8  7e0001e0  vmmov mr0, r2
001cec  1f011000  addli r2, zero, 8
001cf0  b3900020  hfloat2float.rn r1, r1
001cf4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001cf8  e3408fd1  loadli.w r1,  -5948(r30)
001cfc  7e0001e0  vmmov mr0, r2
001d00  1f012000  addli r2, zero, 16
001d04  b3900020  hfloat2float.rn r1, r1
001d08  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001d0c  e3009fd1  loadli.w r1,  -5944(r30)
001d10  7e0001e0  vmmov mr0, r2
001d14  1f014000  addli r2, zero, 32
001d18  b3900020  hfloat2float.rn r1, r1
001d1c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001d20  e3409fd1  loadli.w r1,  -5940(r30)
001d24  7e0001e0  vmmov mr0, r2
001d28  1f018000  addli r2, zero, 64
001d2c  b3900020  hfloat2float.rn r1, r1
001d30  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001d34  e300afd1  loadli.w r1,  -5936(r30)
001d38  7e0001e0  vmmov mr0, r2
001d3c  1f010001  addli r2, zero, 128
001d40  b3900020  hfloat2float.rn r1, r1
001d44  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001d48  e340afd1  loadli.w r1,  -5932(r30)
001d4c  7e0001e0  vmmov mr0, r2
001d50  1f010002  addli r2, zero, 256
001d54  b3900020  hfloat2float.rn r1, r1
001d58  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001d5c  e300bfd1  loadli.w r1,  -5928(r30)
001d60  7e0001e0  vmmov mr0, r2
001d64  1f010004  addli r2, zero, 512
001d68  b3900020  hfloat2float.rn r1, r1
001d6c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001d70  e340bfd1  loadli.w r1,  -5924(r30)
001d74  7e0001e0  vmmov mr0, r2
001d78  1f010008  addli r2, zero, 1024
001d7c  b3900020  hfloat2float.rn r1, r1
001d80  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001d84  e300cfd1  loadli.w r1,  -5920(r30)
001d88  7e0001e0  vmmov mr0, r2
001d8c  1f010010  addli r2, zero, 2048
001d90  b3900020  hfloat2float.rn r1, r1
001d94  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001d98  e340cfd1  loadli.w r1,  -5916(r30)
001d9c  7e0001e0  vmmov mr0, r2
001da0  1f010020  addli r2, zero, 4096
001da4  b3900020  hfloat2float.rn r1, r1
001da8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001dac  e300dfd1  loadli.w r1,  -5912(r30)
001db0  7e0001e0  vmmov mr0, r2
001db4  2b410000  lui r2, 4
001db8  b3900020  hfloat2float.rn r1, r1
001dbc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001dc0  e340dfd1  loadli.w r1,  -5908(r30)
001dc4  7e0001e0  vmmov mr0, r2
001dc8  b3900020  hfloat2float.rn r1, r1
001dcc  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
001dd0  e300efd1  loadli.w r1,  -5904(r30)
001dd4  b3900020  hfloat2float.rn r1, r1
001dd8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001ddc  e300ffd1  loadli.w r1,  -5896(r30)
001de0  6341efd1  loadli.w r2,  -5900(r30)
001de4  b3900020  hfloat2float.rn r1, r1
001de8  33110120  hfloat2float.rn r2, r2
001dec  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
001df0  9f000fde  addli r1, r30, -4352
001df4  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
001df8  92300002  vadd.s.mz vr1{mr1}, zero, vr0
001dfc  9f100000  addli r1, zero, 1
001e00  7e8000e0  vmmov mr0, r1
001e04  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001e08  e340ffd1  loadli.w r1,  -5892(r30)
001e0c  1f210000  addli r2, zero, 2
001e10  7e0001e0  vmmov mr0, r2
001e14  1f410000  addli r2, zero, 4
001e18  b3900020  hfloat2float.rn r1, r1
001e1c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001e20  e3000fd2  loadli.w r1,  -5888(r30)
001e24  7e0001e0  vmmov mr0, r2
001e28  1f011000  addli r2, zero, 8
001e2c  b3900020  hfloat2float.rn r1, r1
001e30  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001e34  e3400fd2  loadli.w r1,  -5884(r30)
001e38  7e0001e0  vmmov mr0, r2
001e3c  1f012000  addli r2, zero, 16
001e40  b3900020  hfloat2float.rn r1, r1
001e44  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001e48  e3001fd2  loadli.w r1,  -5880(r30)
001e4c  7e0001e0  vmmov mr0, r2
001e50  1f014000  addli r2, zero, 32
001e54  b3900020  hfloat2float.rn r1, r1
001e58  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001e5c  e3401fd2  loadli.w r1,  -5876(r30)
001e60  7e0001e0  vmmov mr0, r2
001e64  1f018000  addli r2, zero, 64
001e68  b3900020  hfloat2float.rn r1, r1
001e6c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001e70  e3002fd2  loadli.w r1,  -5872(r30)
001e74  7e0001e0  vmmov mr0, r2
001e78  1f010001  addli r2, zero, 128
001e7c  b3900020  hfloat2float.rn r1, r1
001e80  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001e84  e3402fd2  loadli.w r1,  -5868(r30)
001e88  7e0001e0  vmmov mr0, r2
001e8c  1f010002  addli r2, zero, 256
001e90  b3900020  hfloat2float.rn r1, r1
001e94  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001e98  e3003fd2  loadli.w r1,  -5864(r30)
001e9c  7e0001e0  vmmov mr0, r2
001ea0  1f010004  addli r2, zero, 512
001ea4  b3900020  hfloat2float.rn r1, r1
001ea8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001eac  e3403fd2  loadli.w r1,  -5860(r30)
001eb0  7e0001e0  vmmov mr0, r2
001eb4  1f010008  addli r2, zero, 1024
001eb8  b3900020  hfloat2float.rn r1, r1
001ebc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001ec0  e3004fd2  loadli.w r1,  -5856(r30)
001ec4  7e0001e0  vmmov mr0, r2
001ec8  1f010010  addli r2, zero, 2048
001ecc  b3900020  hfloat2float.rn r1, r1
001ed0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001ed4  e3404fd2  loadli.w r1,  -5852(r30)
001ed8  7e0001e0  vmmov mr0, r2
001edc  1f010020  addli r2, zero, 4096
001ee0  b3900020  hfloat2float.rn r1, r1
001ee4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001ee8  e3005fd2  loadli.w r1,  -5848(r30)
001eec  7e0001e0  vmmov mr0, r2
001ef0  2b410000  lui r2, 4
001ef4  7e0101e0  vmmov mr2, r2
001ef8  b3900020  hfloat2float.rn r1, r1
001efc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001f00  e3405fd2  loadli.w r1,  -5844(r30)
001f04  7e8001e0  vmmov mr0, r3
001f08  ab810000  lui r3, 8
001f0c  b3900020  hfloat2float.rn r1, r1
001f10  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
001f14  e3006fd2  loadli.w r1,  -5840(r30)
001f18  b3900020  hfloat2float.rn r1, r1
001f1c  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
001f20  e3007fd2  loadli.w r1,  -5832(r30)
001f24  63416fd2  loadli.w r2,  -5836(r30)
001f28  b3900020  hfloat2float.rn r1, r1
001f2c  33110120  hfloat2float.rn r2, r2
001f30  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001f34  9f008fdc  addli r1, r30, -4544
001f38  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
001f3c  92300002  vadd.s.mz vr1{mr1}, zero, vr0
001f40  9f100000  addli r1, zero, 1
001f44  7e8000e0  vmmov mr0, r1
001f48  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001f4c  e3407fd2  loadli.w r1,  -5828(r30)
001f50  1f210000  addli r2, zero, 2
001f54  7e0001e0  vmmov mr0, r2
001f58  1f410000  addli r2, zero, 4
001f5c  b3900020  hfloat2float.rn r1, r1
001f60  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001f64  e3008fd2  loadli.w r1,  -5824(r30)
001f68  7e0001e0  vmmov mr0, r2
001f6c  1f011000  addli r2, zero, 8
001f70  b3900020  hfloat2float.rn r1, r1
001f74  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001f78  e3408fd2  loadli.w r1,  -5820(r30)
001f7c  7e0001e0  vmmov mr0, r2
001f80  1f012000  addli r2, zero, 16
001f84  b3900020  hfloat2float.rn r1, r1
001f88  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001f8c  e3009fd2  loadli.w r1,  -5816(r30)
001f90  7e0001e0  vmmov mr0, r2
001f94  1f014000  addli r2, zero, 32
001f98  b3900020  hfloat2float.rn r1, r1
001f9c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001fa0  e3409fd2  loadli.w r1,  -5812(r30)
001fa4  7e0001e0  vmmov mr0, r2
001fa8  1f018000  addli r2, zero, 64
001fac  b3900020  hfloat2float.rn r1, r1
001fb0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001fb4  e300afd2  loadli.w r1,  -5808(r30)
001fb8  7e0001e0  vmmov mr0, r2
001fbc  1f010001  addli r2, zero, 128
001fc0  b3900020  hfloat2float.rn r1, r1
001fc4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001fc8  e340afd2  loadli.w r1,  -5804(r30)
001fcc  7e0001e0  vmmov mr0, r2
001fd0  1f010002  addli r2, zero, 256
001fd4  b3900020  hfloat2float.rn r1, r1
001fd8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001fdc  e300bfd2  loadli.w r1,  -5800(r30)
001fe0  7e0001e0  vmmov mr0, r2
001fe4  1f010004  addli r2, zero, 512
001fe8  b3900020  hfloat2float.rn r1, r1
001fec  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001ff0  e340bfd2  loadli.w r1,  -5796(r30)
001ff4  7e0001e0  vmmov mr0, r2
001ff8  1f010008  addli r2, zero, 1024
001ffc  b3900020  hfloat2float.rn r1, r1
002000  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002004  e300cfd2  loadli.w r1,  -5792(r30)
002008  7e0001e0  vmmov mr0, r2
00200c  1f010010  addli r2, zero, 2048
002010  b3900020  hfloat2float.rn r1, r1
002014  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002018  e340cfd2  loadli.w r1,  -5788(r30)
00201c  7e0001e0  vmmov mr0, r2
002020  1f010020  addli r2, zero, 4096
002024  b3900020  hfloat2float.rn r1, r1
002028  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00202c  e300dfd2  loadli.w r1,  -5784(r30)
002030  7e0001e0  vmmov mr0, r2
002034  b3900020  hfloat2float.rn r1, r1
002038  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00203c  e340dfd2  loadli.w r1,  -5780(r30)
002040  7e8001e0  vmmov mr0, r3
002044  ab810000  lui r3, 8
002048  b3900020  hfloat2float.rn r1, r1
00204c  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002050  e300efd2  loadli.w r1,  -5776(r30)
002054  b3900020  hfloat2float.rn r1, r1
002058  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
00205c  e300ffd2  loadli.w r1,  -5768(r30)
002060  6341efd2  loadli.w r2,  -5772(r30)
002064  b3900020  hfloat2float.rn r1, r1
002068  33110120  hfloat2float.rn r2, r2
00206c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002070  9f000fdc  addli r1, r30, -4608
002074  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
002078  92300002  vadd.s.mz vr1{mr1}, zero, vr0
00207c  9f100000  addli r1, zero, 1
002080  7e8000e0  vmmov mr0, r1
002084  ea201130  vor.u.mh vr1{mr0}, r2, vr1
002088  e340ffd2  loadli.w r1,  -5764(r30)
00208c  1f210000  addli r2, zero, 2
002090  7e0001e0  vmmov mr0, r2
002094  1f410000  addli r2, zero, 4
002098  b3900020  hfloat2float.rn r1, r1
00209c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0020a0  e3000fd3  loadli.w r1,  -5760(r30)
0020a4  7e0001e0  vmmov mr0, r2
0020a8  1f011000  addli r2, zero, 8
0020ac  b3900020  hfloat2float.rn r1, r1
0020b0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0020b4  e3400fd3  loadli.w r1,  -5756(r30)
0020b8  7e0001e0  vmmov mr0, r2
0020bc  1f012000  addli r2, zero, 16
0020c0  b3900020  hfloat2float.rn r1, r1
0020c4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0020c8  e3001fd3  loadli.w r1,  -5752(r30)
0020cc  7e0001e0  vmmov mr0, r2
0020d0  1f014000  addli r2, zero, 32
0020d4  b3900020  hfloat2float.rn r1, r1
0020d8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0020dc  e3401fd3  loadli.w r1,  -5748(r30)
0020e0  7e0001e0  vmmov mr0, r2
0020e4  1f018000  addli r2, zero, 64
0020e8  b3900020  hfloat2float.rn r1, r1
0020ec  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0020f0  e3002fd3  loadli.w r1,  -5744(r30)
0020f4  7e0001e0  vmmov mr0, r2
0020f8  1f010001  addli r2, zero, 128
0020fc  b3900020  hfloat2float.rn r1, r1
002100  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002104  e3402fd3  loadli.w r1,  -5740(r30)
002108  7e0001e0  vmmov mr0, r2
00210c  1f010002  addli r2, zero, 256
002110  b3900020  hfloat2float.rn r1, r1
002114  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002118  e3003fd3  loadli.w r1,  -5736(r30)
00211c  7e0001e0  vmmov mr0, r2
002120  1f010004  addli r2, zero, 512
002124  b3900020  hfloat2float.rn r1, r1
002128  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00212c  e3403fd3  loadli.w r1,  -5732(r30)
002130  7e0001e0  vmmov mr0, r2
002134  1f010008  addli r2, zero, 1024
002138  b3900020  hfloat2float.rn r1, r1
00213c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002140  e3004fd3  loadli.w r1,  -5728(r30)
002144  7e0001e0  vmmov mr0, r2
002148  1f010010  addli r2, zero, 2048
00214c  b3900020  hfloat2float.rn r1, r1
002150  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002154  e3404fd3  loadli.w r1,  -5724(r30)
002158  7e0001e0  vmmov mr0, r2
00215c  1f010020  addli r2, zero, 4096
002160  b3900020  hfloat2float.rn r1, r1
002164  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002168  e3005fd3  loadli.w r1,  -5720(r30)
00216c  7e0001e0  vmmov mr0, r2
002170  b3900020  hfloat2float.rn r1, r1
002174  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002178  e3405fd3  loadli.w r1,  -5716(r30)
00217c  b3900020  hfloat2float.rn r1, r1
002180  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002184  e3006fd3  loadli.w r1,  -5712(r30)
002188  b3900020  hfloat2float.rn r1, r1
00218c  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002190  e3007fd3  loadli.w r1,  -5704(r30)
002194  7e8101e0  vmmov mr2, r3
002198  63416fd3  loadli.w r2,  -5708(r30)
00219c  ab810000  lui r3, 8
0021a0  b3900020  hfloat2float.rn r1, r1
0021a4  33110120  hfloat2float.rn r2, r2
0021a8  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0021ac  9f000fdb  addli r1, r30, -4736
0021b0  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0021b4  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0021b8  9f100000  addli r1, zero, 1
0021bc  7e8000e0  vmmov mr0, r1
0021c0  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0021c4  e3407fd3  loadli.w r1,  -5700(r30)
0021c8  1f210000  addli r2, zero, 2
0021cc  7e0001e0  vmmov mr0, r2
0021d0  1f410000  addli r2, zero, 4
0021d4  b3900020  hfloat2float.rn r1, r1
0021d8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0021dc  e3008fd3  loadli.w r1,  -5696(r30)
0021e0  7e0001e0  vmmov mr0, r2
0021e4  1f011000  addli r2, zero, 8
0021e8  b3900020  hfloat2float.rn r1, r1
0021ec  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0021f0  e3408fd3  loadli.w r1,  -5692(r30)
0021f4  7e0001e0  vmmov mr0, r2
0021f8  1f012000  addli r2, zero, 16
0021fc  b3900020  hfloat2float.rn r1, r1
002200  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002204  e3009fd3  loadli.w r1,  -5688(r30)
002208  7e0001e0  vmmov mr0, r2
00220c  1f014000  addli r2, zero, 32
002210  b3900020  hfloat2float.rn r1, r1
002214  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002218  e3409fd3  loadli.w r1,  -5684(r30)
00221c  7e0001e0  vmmov mr0, r2
002220  1f018000  addli r2, zero, 64
002224  b3900020  hfloat2float.rn r1, r1
002228  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00222c  e300afd3  loadli.w r1,  -5680(r30)
002230  7e0001e0  vmmov mr0, r2
002234  1f010001  addli r2, zero, 128
002238  b3900020  hfloat2float.rn r1, r1
00223c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002240  e340afd3  loadli.w r1,  -5676(r30)
002244  7e0001e0  vmmov mr0, r2
002248  1f010002  addli r2, zero, 256
00224c  b3900020  hfloat2float.rn r1, r1
002250  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002254  e300bfd3  loadli.w r1,  -5672(r30)
002258  7e0001e0  vmmov mr0, r2
00225c  1f010004  addli r2, zero, 512
002260  b3900020  hfloat2float.rn r1, r1
002264  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002268  e340bfd3  loadli.w r1,  -5668(r30)
00226c  7e0001e0  vmmov mr0, r2
002270  1f010008  addli r2, zero, 1024
002274  b3900020  hfloat2float.rn r1, r1
002278  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00227c  e300cfd3  loadli.w r1,  -5664(r30)
002280  7e0001e0  vmmov mr0, r2
002284  1f010010  addli r2, zero, 2048
002288  b3900020  hfloat2float.rn r1, r1
00228c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002290  e340cfd3  loadli.w r1,  -5660(r30)
002294  7e0001e0  vmmov mr0, r2
002298  1f010020  addli r2, zero, 4096
00229c  b3900020  hfloat2float.rn r1, r1
0022a0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0022a4  e300dfd3  loadli.w r1,  -5656(r30)
0022a8  7e0001e0  vmmov mr0, r2
0022ac  2b410000  lui r2, 4
0022b0  b3900020  hfloat2float.rn r1, r1
0022b4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0022b8  e340dfd3  loadli.w r1,  -5652(r30)
0022bc  7e0001e0  vmmov mr0, r2
0022c0  b3900020  hfloat2float.rn r1, r1
0022c4  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
0022c8  e300efd3  loadli.w r1,  -5648(r30)
0022cc  b3900020  hfloat2float.rn r1, r1
0022d0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0022d4  e300ffd3  loadli.w r1,  -5640(r30)
0022d8  6341efd3  loadli.w r2,  -5644(r30)
0022dc  b3900020  hfloat2float.rn r1, r1
0022e0  33110120  hfloat2float.rn r2, r2
0022e4  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0022e8  9f000fda  addli r1, r30, -4864
0022ec  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0022f0  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0022f4  9f100000  addli r1, zero, 1
0022f8  7e8000e0  vmmov mr0, r1
0022fc  ea201130  vor.u.mh vr1{mr0}, r2, vr1
002300  e340ffd3  loadli.w r1,  -5636(r30)
002304  1f210000  addli r2, zero, 2
002308  7e0001e0  vmmov mr0, r2
00230c  1f410000  addli r2, zero, 4
002310  b3900020  hfloat2float.rn r1, r1
002314  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002318  e3000fd4  loadli.w r1,  -5632(r30)
00231c  7e0001e0  vmmov mr0, r2
002320  1f011000  addli r2, zero, 8
002324  b3900020  hfloat2float.rn r1, r1
002328  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00232c  e3400fd4  loadli.w r1,  -5628(r30)
002330  7e0001e0  vmmov mr0, r2
002334  1f012000  addli r2, zero, 16
002338  b3900020  hfloat2float.rn r1, r1
00233c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002340  e3001fd4  loadli.w r1,  -5624(r30)
002344  7e0001e0  vmmov mr0, r2
002348  1f014000  addli r2, zero, 32
00234c  b3900020  hfloat2float.rn r1, r1
002350  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002354  e3401fd4  loadli.w r1,  -5620(r30)
002358  7e0001e0  vmmov mr0, r2
00235c  1f018000  addli r2, zero, 64
002360  b3900020  hfloat2float.rn r1, r1
002364  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002368  e3002fd4  loadli.w r1,  -5616(r30)
00236c  7e0001e0  vmmov mr0, r2
002370  1f010001  addli r2, zero, 128
002374  b3900020  hfloat2float.rn r1, r1
002378  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00237c  e3402fd4  loadli.w r1,  -5612(r30)
002380  7e0001e0  vmmov mr0, r2
002384  1f010002  addli r2, zero, 256
002388  b3900020  hfloat2float.rn r1, r1
00238c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002390  e3003fd4  loadli.w r1,  -5608(r30)
002394  7e0001e0  vmmov mr0, r2
002398  1f010004  addli r2, zero, 512
00239c  b3900020  hfloat2float.rn r1, r1
0023a0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0023a4  e3403fd4  loadli.w r1,  -5604(r30)
0023a8  7e0001e0  vmmov mr0, r2
0023ac  1f010008  addli r2, zero, 1024
0023b0  b3900020  hfloat2float.rn r1, r1
0023b4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0023b8  e3004fd4  loadli.w r1,  -5600(r30)
0023bc  7e0001e0  vmmov mr0, r2
0023c0  1f010010  addli r2, zero, 2048
0023c4  b3900020  hfloat2float.rn r1, r1
0023c8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0023cc  e3404fd4  loadli.w r1,  -5596(r30)
0023d0  7e0001e0  vmmov mr0, r2
0023d4  1f010020  addli r2, zero, 4096
0023d8  b3900020  hfloat2float.rn r1, r1
0023dc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0023e0  e3005fd4  loadli.w r1,  -5592(r30)
0023e4  7e0001e0  vmmov mr0, r2
0023e8  2b410000  lui r2, 4
0023ec  b3900020  hfloat2float.rn r1, r1
0023f0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0023f4  e3405fd4  loadli.w r1,  -5588(r30)
0023f8  7e0001e0  vmmov mr0, r2
0023fc  b3900020  hfloat2float.rn r1, r1
002400  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002404  e3006fd4  loadli.w r1,  -5584(r30)
002408  b3900020  hfloat2float.rn r1, r1
00240c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002410  e3007fd4  loadli.w r1,  -5576(r30)
002414  63416fd4  loadli.w r2,  -5580(r30)
002418  b3900020  hfloat2float.rn r1, r1
00241c  33110120  hfloat2float.rn r2, r2
002420  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002424  9f000fd9  addli r1, r30, -4992
002428  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
00242c  92300002  vadd.s.mz vr1{mr1}, zero, vr0
002430  9f100000  addli r1, zero, 1
002434  7e0001c0  vmmov mr0, mr2
002438  fe8100e0  vmmov mr3, r1
00243c  ea201136  vor.u.mh vr1{mr3}, r2, vr1
002440  e3407fd4  loadli.w r1,  -5572(r30)
002444  1f210000  addli r2, zero, 2
002448  7e0101e0  vmmov mr2, r2
00244c  1f410000  addli r2, zero, 4
002450  b3900020  hfloat2float.rn r1, r1
002454  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002458  e3008fd4  loadli.w r1,  -5568(r30)
00245c  7e0101e0  vmmov mr2, r2
002460  1f011000  addli r2, zero, 8
002464  b3900020  hfloat2float.rn r1, r1
002468  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
00246c  e3408fd4  loadli.w r1,  -5564(r30)
002470  7e0101e0  vmmov mr2, r2
002474  1f012000  addli r2, zero, 16
002478  b3900020  hfloat2float.rn r1, r1
00247c  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002480  e3009fd4  loadli.w r1,  -5560(r30)
002484  7e0101e0  vmmov mr2, r2
002488  1f014000  addli r2, zero, 32
00248c  b3900020  hfloat2float.rn r1, r1
002490  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002494  e3409fd4  loadli.w r1,  -5556(r30)
002498  7e0101e0  vmmov mr2, r2
00249c  1f018000  addli r2, zero, 64
0024a0  b3900020  hfloat2float.rn r1, r1
0024a4  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0024a8  e300afd4  loadli.w r1,  -5552(r30)
0024ac  7e0101e0  vmmov mr2, r2
0024b0  1f010001  addli r2, zero, 128
0024b4  b3900020  hfloat2float.rn r1, r1
0024b8  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0024bc  e340afd4  loadli.w r1,  -5548(r30)
0024c0  7e0101e0  vmmov mr2, r2
0024c4  1f010002  addli r2, zero, 256
0024c8  b3900020  hfloat2float.rn r1, r1
0024cc  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0024d0  e300bfd4  loadli.w r1,  -5544(r30)
0024d4  7e0101e0  vmmov mr2, r2
0024d8  1f010004  addli r2, zero, 512
0024dc  b3900020  hfloat2float.rn r1, r1
0024e0  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0024e4  e340bfd4  loadli.w r1,  -5540(r30)
0024e8  7e0101e0  vmmov mr2, r2
0024ec  1f010008  addli r2, zero, 1024
0024f0  fe0101e0  vmmov mr3, r2
0024f4  1f010010  addli r2, zero, 2048
0024f8  b3900020  hfloat2float.rn r1, r1
0024fc  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002500  e300cfd4  loadli.w r1,  -5536(r30)
002504  7e0101e0  vmmov mr2, r2
002508  1f010020  addli r2, zero, 4096
00250c  b3900020  hfloat2float.rn r1, r1
002510  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002514  e340cfd4  loadli.w r1,  -5532(r30)
002518  b3900020  hfloat2float.rn r1, r1
00251c  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002520  e300dfd4  loadli.w r1,  -5528(r30)
002524  7e0101e0  vmmov mr2, r2
002528  1f010040  addli r2, zero, 8192
00252c  b3900020  hfloat2float.rn r1, r1
002530  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002534  e340dfd4  loadli.w r1,  -5524(r30)
002538  7e0101e0  vmmov mr2, r2
00253c  2b410000  lui r2, 4
002540  b3900020  hfloat2float.rn r1, r1
002544  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002548  e300efd4  loadli.w r1,  -5520(r30)
00254c  7e0101e0  vmmov mr2, r2
002550  b3900020  hfloat2float.rn r1, r1
002554  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002558  e300ffd4  loadli.w r1,  -5512(r30)
00255c  6341efd4  loadli.w r2,  -5516(r30)
002560  b3900020  hfloat2float.rn r1, r1
002564  33110120  hfloat2float.rn r2, r2
002568  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00256c  9f000fd8  addli r1, r30, -5120
002570  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
002574  92300002  vadd.s.mz vr1{mr1}, zero, vr0
002578  9f100000  addli r1, zero, 1
00257c  7e8100e0  vmmov mr2, r1
002580  ea201134  vor.u.mh vr1{mr2}, r2, vr1
002584  e340ffd4  loadli.w r1,  -5508(r30)
002588  1f210000  addli r2, zero, 2
00258c  7e0101e0  vmmov mr2, r2
002590  1f410000  addli r2, zero, 4
002594  b3900020  hfloat2float.rn r1, r1
002598  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
00259c  e3000fd5  loadli.w r1,  -5504(r30)
0025a0  7e0101e0  vmmov mr2, r2
0025a4  1f011000  addli r2, zero, 8
0025a8  b3900020  hfloat2float.rn r1, r1
0025ac  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0025b0  e3400fd5  loadli.w r1,  -5500(r30)
0025b4  7e0101e0  vmmov mr2, r2
0025b8  1f012000  addli r2, zero, 16
0025bc  b3900020  hfloat2float.rn r1, r1
0025c0  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0025c4  e3001fd5  loadli.w r1,  -5496(r30)
0025c8  7e0101e0  vmmov mr2, r2
0025cc  1f014000  addli r2, zero, 32
0025d0  b3900020  hfloat2float.rn r1, r1
0025d4  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0025d8  e3401fd5  loadli.w r1,  -5492(r30)
0025dc  7e0101e0  vmmov mr2, r2
0025e0  1f018000  addli r2, zero, 64
0025e4  b3900020  hfloat2float.rn r1, r1
0025e8  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0025ec  e3002fd5  loadli.w r1,  -5488(r30)
0025f0  7e0101e0  vmmov mr2, r2
0025f4  1f010001  addli r2, zero, 128
0025f8  b3900020  hfloat2float.rn r1, r1
0025fc  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002600  e3402fd5  loadli.w r1,  -5484(r30)
002604  7e0101e0  vmmov mr2, r2
002608  1f010002  addli r2, zero, 256
00260c  b3900020  hfloat2float.rn r1, r1
002610  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002614  e3003fd5  loadli.w r1,  -5480(r30)
002618  7e0101e0  vmmov mr2, r2
00261c  1f010004  addli r2, zero, 512
002620  b3900020  hfloat2float.rn r1, r1
002624  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002628  e3403fd5  loadli.w r1,  -5476(r30)
00262c  7e0101e0  vmmov mr2, r2
002630  1f010010  addli r2, zero, 2048
002634  b3900020  hfloat2float.rn r1, r1
002638  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
00263c  e3004fd5  loadli.w r1,  -5472(r30)
002640  b3900020  hfloat2float.rn r1, r1
002644  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002648  7e8101c0  vmmov mr2, mr3
00264c  e3404fd5  loadli.w r1,  -5468(r30)
002650  fe0101e0  vmmov mr3, r2
002654  1f010020  addli r2, zero, 4096
002658  b3900020  hfloat2float.rn r1, r1
00265c  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002660  e3005fd5  loadli.w r1,  -5464(r30)
002664  fe0101e0  vmmov mr3, r2
002668  1f010040  addli r2, zero, 8192
00266c  b3900020  hfloat2float.rn r1, r1
002670  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002674  e3006fd5  loadli.w r1,  -5456(r30)
002678  fe0101e0  vmmov mr3, r2
00267c  2b410000  lui r2, 4
002680  b3900020  hfloat2float.rn r1, r1
002684  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002688  e3405fd5  loadli.w r1,  -5460(r30)
00268c  fe0101e0  vmmov mr3, r2
002690  b3900020  hfloat2float.rn r1, r1
002694  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002698  e3406fd5  loadli.w r1,  -5452(r30)
00269c  33910020  hfloat2float.rn r2, r1
0026a0  e3007fd5  loadli.w r1,  -5448(r30)
0026a4  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0026a8  1f010fd7  addli r2, r30, -5248
0026ac  b3900020  hfloat2float.rn r1, r1
0026b0  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
0026b4  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0026b8  1f110000  addli r2, zero, 1
0026bc  7e0001e0  vmmov mr0, r2
0026c0  1f210000  addli r2, zero, 2
0026c4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0026c8  e3407fd5  loadli.w r1,  -5444(r30)
0026cc  7e0001e0  vmmov mr0, r2
0026d0  1f410000  addli r2, zero, 4
0026d4  fe0101e0  vmmov mr3, r2
0026d8  1f011000  addli r2, zero, 8
0026dc  b3900020  hfloat2float.rn r1, r1
0026e0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0026e4  e3008fd5  loadli.w r1,  -5440(r30)
0026e8  b3900020  hfloat2float.rn r1, r1
0026ec  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
0026f0  e3408fd5  loadli.w r1,  -5436(r30)
0026f4  fe0101e0  vmmov mr3, r2
0026f8  1f012000  addli r2, zero, 16
0026fc  b3900020  hfloat2float.rn r1, r1
002700  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002704  e3009fd5  loadli.w r1,  -5432(r30)
002708  fe0101e0  vmmov mr3, r2
00270c  1f014000  addli r2, zero, 32
002710  b3900020  hfloat2float.rn r1, r1
002714  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002718  e3409fd5  loadli.w r1,  -5428(r30)
00271c  fe0101e0  vmmov mr3, r2
002720  1f018000  addli r2, zero, 64
002724  b3900020  hfloat2float.rn r1, r1
002728  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
00272c  e300afd5  loadli.w r1,  -5424(r30)
002730  fe0101e0  vmmov mr3, r2
002734  1f010001  addli r2, zero, 128
002738  b3900020  hfloat2float.rn r1, r1
00273c  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002740  e340afd5  loadli.w r1,  -5420(r30)
002744  fe0101e0  vmmov mr3, r2
002748  1f010002  addli r2, zero, 256
00274c  b3900020  hfloat2float.rn r1, r1
002750  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002754  e300bfd5  loadli.w r1,  -5416(r30)
002758  fe0101e0  vmmov mr3, r2
00275c  1f010004  addli r2, zero, 512
002760  b3900020  hfloat2float.rn r1, r1
002764  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002768  e340bfd5  loadli.w r1,  -5412(r30)
00276c  fe0101e0  vmmov mr3, r2
002770  1f010010  addli r2, zero, 2048
002774  7e0001e0  vmmov mr0, r2
002778  1f010020  addli r2, zero, 4096
00277c  b3900020  hfloat2float.rn r1, r1
002780  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002784  e300cfd5  loadli.w r1,  -5408(r30)
002788  b3900020  hfloat2float.rn r1, r1
00278c  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002790  e340cfd5  loadli.w r1,  -5404(r30)
002794  b3900020  hfloat2float.rn r1, r1
002798  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00279c  e300dfd5  loadli.w r1,  -5400(r30)
0027a0  7e0001e0  vmmov mr0, r2
0027a4  1f010040  addli r2, zero, 8192
0027a8  b3900020  hfloat2float.rn r1, r1
0027ac  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0027b0  e340dfd5  loadli.w r1,  -5396(r30)
0027b4  7e0001e0  vmmov mr0, r2
0027b8  2b410000  lui r2, 4
0027bc  b3900020  hfloat2float.rn r1, r1
0027c0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0027c4  e300efd5  loadli.w r1,  -5392(r30)
0027c8  7e0001e0  vmmov mr0, r2
0027cc  b3900020  hfloat2float.rn r1, r1
0027d0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0027d4  e300ffd5  loadli.w r1,  -5384(r30)
0027d8  7e8001e0  vmmov mr0, r3
0027dc  6341efd5  loadli.w r2,  -5388(r30)
0027e0  ab810000  lui r3, 8
0027e4  b3900020  hfloat2float.rn r1, r1
0027e8  33110120  hfloat2float.rn r2, r2
0027ec  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0027f0  9f100000  addli r1, zero, 1
0027f4  7e8000e0  vmmov mr0, r1
0027f8  92341002  vadd.s.mz vr9{mr1}, zero, vr1
0027fc  92300002  vadd.s.mz vr1{mr1}, zero, vr0
002800  ea201130  vor.u.mh vr1{mr0}, r2, vr1
002804  e340ffd5  loadli.w r1,  -5380(r30)
002808  1f210000  addli r2, zero, 2
00280c  7e0001e0  vmmov mr0, r2
002810  1f410000  addli r2, zero, 4
002814  b3900020  hfloat2float.rn r1, r1
002818  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00281c  e3000fd6  loadli.w r1,  -5376(r30)
002820  7e0001e0  vmmov mr0, r2
002824  1f011000  addli r2, zero, 8
002828  b3900020  hfloat2float.rn r1, r1
00282c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002830  e3400fd6  loadli.w r1,  -5372(r30)
002834  7e0001e0  vmmov mr0, r2
002838  1f012000  addli r2, zero, 16
00283c  b3900020  hfloat2float.rn r1, r1
002840  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002844  e3001fd6  loadli.w r1,  -5368(r30)
002848  7e0001e0  vmmov mr0, r2
00284c  1f014000  addli r2, zero, 32
002850  b3900020  hfloat2float.rn r1, r1
002854  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002858  e3401fd6  loadli.w r1,  -5364(r30)
00285c  7e0001e0  vmmov mr0, r2
002860  1f018000  addli r2, zero, 64
002864  b3900020  hfloat2float.rn r1, r1
002868  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00286c  e3002fd6  loadli.w r1,  -5360(r30)
002870  7e0001e0  vmmov mr0, r2
002874  1f010001  addli r2, zero, 128
002878  b3900020  hfloat2float.rn r1, r1
00287c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002880  e3402fd6  loadli.w r1,  -5356(r30)
002884  7e0001e0  vmmov mr0, r2
002888  1f010002  addli r2, zero, 256
00288c  b3900020  hfloat2float.rn r1, r1
002890  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002894  e3003fd6  loadli.w r1,  -5352(r30)
002898  7e0001e0  vmmov mr0, r2
00289c  1f010010  addli r2, zero, 2048
0028a0  b3900020  hfloat2float.rn r1, r1
0028a4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0028a8  e3403fd6  loadli.w r1,  -5348(r30)
0028ac  7e0001e0  vmmov mr0, r2
0028b0  1f010020  addli r2, zero, 4096
0028b4  b3900020  hfloat2float.rn r1, r1
0028b8  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
0028bc  e3004fd6  loadli.w r1,  -5344(r30)
0028c0  b3900020  hfloat2float.rn r1, r1
0028c4  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0028c8  e3404fd6  loadli.w r1,  -5340(r30)
0028cc  7e8101e0  vmmov mr2, r3
0028d0  ab810000  lui r3, 8
0028d4  b3900020  hfloat2float.rn r1, r1
0028d8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0028dc  e3005fd6  loadli.w r1,  -5336(r30)
0028e0  7e0001e0  vmmov mr0, r2
0028e4  1f010040  addli r2, zero, 8192
0028e8  b3900020  hfloat2float.rn r1, r1
0028ec  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0028f0  e3405fd6  loadli.w r1,  -5332(r30)
0028f4  7e0001e0  vmmov mr0, r2
0028f8  2b410000  lui r2, 4
0028fc  b3900020  hfloat2float.rn r1, r1
002900  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002904  e3006fd6  loadli.w r1,  -5328(r30)
002908  7e0001e0  vmmov mr0, r2
00290c  b3900020  hfloat2float.rn r1, r1
002910  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002914  e3007fd6  loadli.w r1,  -5320(r30)
002918  63416fd6  loadli.w r2,  -5324(r30)
00291c  b3900020  hfloat2float.rn r1, r1
002920  33110120  hfloat2float.rn r2, r2
002924  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002928  9f000ff3  addli r1, r30, -1664
00292c  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
002930  92300002  vadd.s.mz vr1{mr1}, zero, vr0
002934  9f100000  addli r1, zero, 1
002938  7e8000e0  vmmov mr0, r1
00293c  ea201130  vor.u.mh vr1{mr0}, r2, vr1
002940  e3407fd6  loadli.w r1,  -5316(r30)
002944  1f210000  addli r2, zero, 2
002948  7e0001e0  vmmov mr0, r2
00294c  1f410000  addli r2, zero, 4
002950  b3900020  hfloat2float.rn r1, r1
002954  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002958  e3008fd6  loadli.w r1,  -5312(r30)
00295c  7e0001e0  vmmov mr0, r2
002960  1f011000  addli r2, zero, 8
002964  b3900020  hfloat2float.rn r1, r1
002968  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00296c  e3408fd6  loadli.w r1,  -5308(r30)
002970  7e0001e0  vmmov mr0, r2
002974  1f012000  addli r2, zero, 16
002978  b3900020  hfloat2float.rn r1, r1
00297c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002980  e3409fd6  loadli.w r1,  -5300(r30)
002984  7e0001e0  vmmov mr0, r2
002988  1f014000  addli r2, zero, 32
00298c  b3900020  hfloat2float.rn r1, r1
002990  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002994  e340afd6  loadli.w r1,  -5292(r30)
002998  7e0001e0  vmmov mr0, r2
00299c  1f018000  addli r2, zero, 64
0029a0  b3900020  hfloat2float.rn r1, r1
0029a4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0029a8  e340bfd6  loadli.w r1,  -5284(r30)
0029ac  7e0001e0  vmmov mr0, r2
0029b0  1f010001  addli r2, zero, 128
0029b4  fe0101e0  vmmov mr3, r2
0029b8  1f010002  addli r2, zero, 256
0029bc  b3900020  hfloat2float.rn r1, r1
0029c0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0029c4  e340cfd6  loadli.w r1,  -5276(r30)
0029c8  b3900020  hfloat2float.rn r1, r1
0029cc  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
0029d0  e340dfd6  loadli.w r1,  -5268(r30)
0029d4  fe0101e0  vmmov mr3, r2
0029d8  1f010004  addli r2, zero, 512
0029dc  b3900020  hfloat2float.rn r1, r1
0029e0  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
0029e4  e340efd6  loadli.w r1,  -5260(r30)
0029e8  fe0101e0  vmmov mr3, r2
0029ec  1f010008  addli r2, zero, 1024
0029f0  7e0001e0  vmmov mr0, r2
0029f4  1f010010  addli r2, zero, 2048
0029f8  b3900020  hfloat2float.rn r1, r1
0029fc  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002a00  e340ffd6  loadli.w r1,  -5252(r30)
002a04  b3900020  hfloat2float.rn r1, r1
002a08  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002a0c  e340ffd7  loadli.w r1,  -5124(r30)
002a10  7e0001e0  vmmov mr0, r2
002a14  1f010020  addli r2, zero, 4096
002a18  b3900020  hfloat2float.rn r1, r1
002a1c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002a20  e340ffd8  loadli.w r1,  -4996(r30)
002a24  7e0001e0  vmmov mr0, r2
002a28  1f010040  addli r2, zero, 8192
002a2c  fe0101e0  vmmov mr3, r2
002a30  2b410000  lui r2, 4
002a34  b3900020  hfloat2float.rn r1, r1
002a38  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002a3c  e340ffd9  loadli.w r1,  -4868(r30)
002a40  7e0001e0  vmmov mr0, r2
002a44  b3900020  hfloat2float.rn r1, r1
002a48  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002a4c  e340ffda  loadli.w r1,  -4740(r30)
002a50  b3900020  hfloat2float.rn r1, r1
002a54  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002a58  e340ffdb  loadli.w r1,  -4612(r30)
002a5c  6301ffdb  loadli.w r2,  -4616(r30)
002a60  b3900020  hfloat2float.rn r1, r1
002a64  33110120  hfloat2float.rn r2, r2
002a68  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002a6c  9f008ff2  addli r1, r30, -1728
002a70  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
002a74  92300002  vadd.s.mz vr1{mr1}, zero, vr0
002a78  9f100000  addli r1, zero, 1
002a7c  7e8000e0  vmmov mr0, r1
002a80  ea201130  vor.u.mh vr1{mr0}, r2, vr1
002a84  e3406fdd  loadli.w r1,  -4428(r30)
002a88  1f210000  addli r2, zero, 2
002a8c  7e0001e0  vmmov mr0, r2
002a90  1f410000  addli r2, zero, 4
002a94  b3900020  hfloat2float.rn r1, r1
002a98  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002a9c  e3007fdd  loadli.w r1,  -4424(r30)
002aa0  7e0001e0  vmmov mr0, r2
002aa4  1f011000  addli r2, zero, 8
002aa8  b3900020  hfloat2float.rn r1, r1
002aac  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002ab0  e3407fdd  loadli.w r1,  -4420(r30)
002ab4  7e0001e0  vmmov mr0, r2
002ab8  1f012000  addli r2, zero, 16
002abc  b3900020  hfloat2float.rn r1, r1
002ac0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002ac4  e3008fdd  loadli.w r1,  -4416(r30)
002ac8  7e0001e0  vmmov mr0, r2
002acc  1f014000  addli r2, zero, 32
002ad0  b3900020  hfloat2float.rn r1, r1
002ad4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002ad8  e3408fdd  loadli.w r1,  -4412(r30)
002adc  7e0001e0  vmmov mr0, r2
002ae0  1f018000  addli r2, zero, 64
002ae4  b3900020  hfloat2float.rn r1, r1
002ae8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002aec  e3009fdd  loadli.w r1,  -4408(r30)
002af0  7e0001e0  vmmov mr0, r2
002af4  1f010001  addli r2, zero, 128
002af8  b3900020  hfloat2float.rn r1, r1
002afc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002b00  e3409fdd  loadli.w r1,  -4404(r30)
002b04  7e0001e0  vmmov mr0, r2
002b08  1f010002  addli r2, zero, 256
002b0c  b3900020  hfloat2float.rn r1, r1
002b10  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002b14  e300afdd  loadli.w r1,  -4400(r30)
002b18  7e0001e0  vmmov mr0, r2
002b1c  1f010004  addli r2, zero, 512
002b20  b3900020  hfloat2float.rn r1, r1
002b24  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002b28  e340afdd  loadli.w r1,  -4396(r30)
002b2c  7e0001e0  vmmov mr0, r2
002b30  1f010008  addli r2, zero, 1024
002b34  b3900020  hfloat2float.rn r1, r1
002b38  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002b3c  e300bfdd  loadli.w r1,  -4392(r30)
002b40  7e0001e0  vmmov mr0, r2
002b44  1f010010  addli r2, zero, 2048
002b48  b3900020  hfloat2float.rn r1, r1
002b4c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002b50  e340bfdd  loadli.w r1,  -4388(r30)
002b54  7e0001e0  vmmov mr0, r2
002b58  1f010020  addli r2, zero, 4096
002b5c  b3900020  hfloat2float.rn r1, r1
002b60  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002b64  e300cfdd  loadli.w r1,  -4384(r30)
002b68  7e0001e0  vmmov mr0, r2
002b6c  2b410000  lui r2, 4
002b70  b3900020  hfloat2float.rn r1, r1
002b74  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002b78  e340cfdd  loadli.w r1,  -4380(r30)
002b7c  7e0001e0  vmmov mr0, r2
002b80  b3900020  hfloat2float.rn r1, r1
002b84  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002b88  e300dfdd  loadli.w r1,  -4376(r30)
002b8c  b3900020  hfloat2float.rn r1, r1
002b90  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002b94  e3008ff1  loadli.w r1,  -1856(r30)
002b98  6341dfdd  loadli.w r2,  -4372(r30)
002b9c  b3900020  hfloat2float.rn r1, r1
002ba0  33110120  hfloat2float.rn r2, r2
002ba4  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002ba8  9f008ff1  addli r1, r30, -1856
002bac  00a00000  mfence { lm }
002bb0  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
002bb4  92300002  vadd.s.mz vr1{mr1}, zero, vr0
002bb8  9f100000  addli r1, zero, 1
002bbc  7e8000e0  vmmov mr0, r1
002bc0  ea201130  vor.u.mh vr1{mr0}, r2, vr1
002bc4  e300efdd  loadli.w r1,  -4368(r30)
002bc8  1f210000  addli r2, zero, 2
002bcc  7e0001e0  vmmov mr0, r2
002bd0  1f410000  addli r2, zero, 4
002bd4  b3900020  hfloat2float.rn r1, r1
002bd8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002bdc  e340efdd  loadli.w r1,  -4364(r30)
002be0  7e0001e0  vmmov mr0, r2
002be4  1f011000  addli r2, zero, 8
002be8  b3900020  hfloat2float.rn r1, r1
002bec  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002bf0  e300ffdd  loadli.w r1,  -4360(r30)
002bf4  7e0001e0  vmmov mr0, r2
002bf8  1f012000  addli r2, zero, 16
002bfc  b3900020  hfloat2float.rn r1, r1
002c00  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002c04  e340ffdd  loadli.w r1,  -4356(r30)
002c08  7e0001e0  vmmov mr0, r2
002c0c  1f014000  addli r2, zero, 32
002c10  b3900020  hfloat2float.rn r1, r1
002c14  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002c18  e340efde  loadli.w r1,  -4236(r30)
002c1c  7e0001e0  vmmov mr0, r2
002c20  1f018000  addli r2, zero, 64
002c24  b3900020  hfloat2float.rn r1, r1
002c28  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002c2c  e300ffde  loadli.w r1,  -4232(r30)
002c30  7e0001e0  vmmov mr0, r2
002c34  1f010001  addli r2, zero, 128
002c38  fe0101e0  vmmov mr3, r2
002c3c  1f010002  addli r2, zero, 256
002c40  b3900020  hfloat2float.rn r1, r1
002c44  7e0101e0  vmmov mr2, r2
002c48  1f010004  addli r2, zero, 512
002c4c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002c50  e340ffde  loadli.w r1,  -4228(r30)
002c54  7e0001e0  vmmov mr0, r2
002c58  1f010008  addli r2, zero, 1024
002c5c  b3900020  hfloat2float.rn r1, r1
002c60  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002c64  e3000fdf  loadli.w r1,  -4224(r30)
002c68  b3900020  hfloat2float.rn r1, r1
002c6c  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002c70  e3400fdf  loadli.w r1,  -4220(r30)
002c74  b3900020  hfloat2float.rn r1, r1
002c78  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002c7c  e3001fdf  loadli.w r1,  -4216(r30)
002c80  7e0001e0  vmmov mr0, r2
002c84  1f010010  addli r2, zero, 2048
002c88  b3900020  hfloat2float.rn r1, r1
002c8c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002c90  e3401fdf  loadli.w r1,  -4212(r30)
002c94  7e0001e0  vmmov mr0, r2
002c98  1f010020  addli r2, zero, 4096
002c9c  b3900020  hfloat2float.rn r1, r1
002ca0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002ca4  e3002fdf  loadli.w r1,  -4208(r30)
002ca8  7e0001e0  vmmov mr0, r2
002cac  1f010040  addli r2, zero, 8192
002cb0  b3900020  hfloat2float.rn r1, r1
002cb4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002cb8  e3402fdf  loadli.w r1,  -4204(r30)
002cbc  7e0001e0  vmmov mr0, r2
002cc0  2b410000  lui r2, 4
002cc4  b3900020  hfloat2float.rn r1, r1
002cc8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002ccc  e3003fdf  loadli.w r1,  -4200(r30)
002cd0  7e0001e0  vmmov mr0, r2
002cd4  b3900020  hfloat2float.rn r1, r1
002cd8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002cdc  e3000ff2  loadli.w r1,  -1792(r30)
002ce0  7e8001e0  vmmov mr0, r3
002ce4  63413fdf  loadli.w r2,  -4196(r30)
002ce8  ab810000  lui r3, 8
002cec  b3900020  hfloat2float.rn r1, r1
002cf0  33110120  hfloat2float.rn r2, r2
002cf4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002cf8  9f000ff2  addli r1, r30, -1792
002cfc  00a00000  mfence { lm }
002d00  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
002d04  92300002  vadd.s.mz vr1{mr1}, zero, vr0
002d08  9f100000  addli r1, zero, 1
002d0c  7e8000e0  vmmov mr0, r1
002d10  ea201130  vor.u.mh vr1{mr0}, r2, vr1
002d14  e3004fdf  loadli.w r1,  -4192(r30)
002d18  1f210000  addli r2, zero, 2
002d1c  7e0001e0  vmmov mr0, r2
002d20  1f410000  addli r2, zero, 4
002d24  b3900020  hfloat2float.rn r1, r1
002d28  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002d2c  e3404fdf  loadli.w r1,  -4188(r30)
002d30  7e0001e0  vmmov mr0, r2
002d34  1f011000  addli r2, zero, 8
002d38  b3900020  hfloat2float.rn r1, r1
002d3c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002d40  e3005fdf  loadli.w r1,  -4184(r30)
002d44  7e0001e0  vmmov mr0, r2
002d48  1f012000  addli r2, zero, 16
002d4c  b3900020  hfloat2float.rn r1, r1
002d50  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002d54  e3405fdf  loadli.w r1,  -4180(r30)
002d58  7e0001e0  vmmov mr0, r2
002d5c  1f014000  addli r2, zero, 32
002d60  b3900020  hfloat2float.rn r1, r1
002d64  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002d68  e3006fdf  loadli.w r1,  -4176(r30)
002d6c  7e0001e0  vmmov mr0, r2
002d70  1f018000  addli r2, zero, 64
002d74  b3900020  hfloat2float.rn r1, r1
002d78  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002d7c  e3406fdf  loadli.w r1,  -4172(r30)
002d80  7e0001e0  vmmov mr0, r2
002d84  1f010004  addli r2, zero, 512
002d88  b3900020  hfloat2float.rn r1, r1
002d8c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002d90  e3007fdf  loadli.w r1,  -4168(r30)
002d94  7e0001e0  vmmov mr0, r2
002d98  1f010008  addli r2, zero, 1024
002d9c  b3900020  hfloat2float.rn r1, r1
002da0  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002da4  e3407fdf  loadli.w r1,  -4164(r30)
002da8  b3900020  hfloat2float.rn r1, r1
002dac  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002db0  e3406fe0  loadli.w r1,  -4044(r30)
002db4  b3900020  hfloat2float.rn r1, r1
002db8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002dbc  e3007fe0  loadli.w r1,  -4040(r30)
002dc0  7e0001e0  vmmov mr0, r2
002dc4  1f010010  addli r2, zero, 2048
002dc8  b3900020  hfloat2float.rn r1, r1
002dcc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002dd0  e3407fe0  loadli.w r1,  -4036(r30)
002dd4  7e0001e0  vmmov mr0, r2
002dd8  1f010020  addli r2, zero, 4096
002ddc  b3900020  hfloat2float.rn r1, r1
002de0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002de4  e3008fe0  loadli.w r1,  -4032(r30)
002de8  7e0001e0  vmmov mr0, r2
002dec  1f010040  addli r2, zero, 8192
002df0  b3900020  hfloat2float.rn r1, r1
002df4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002df8  e3408fe0  loadli.w r1,  -4028(r30)
002dfc  7e0001e0  vmmov mr0, r2
002e00  2b410000  lui r2, 4
002e04  b3900020  hfloat2float.rn r1, r1
002e08  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002e0c  e3009fe0  loadli.w r1,  -4024(r30)
002e10  7e0001e0  vmmov mr0, r2
002e14  b3900020  hfloat2float.rn r1, r1
002e18  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002e1c  e3000ff1  loadli.w r1,  -1920(r30)
002e20  7e8001e0  vmmov mr0, r3
002e24  63419fe0  loadli.w r2,  -4020(r30)
002e28  ab810000  lui r3, 8
002e2c  b3900020  hfloat2float.rn r1, r1
002e30  33110120  hfloat2float.rn r2, r2
002e34  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002e38  9f000ff1  addli r1, r30, -1920
002e3c  00a00000  mfence { lm }
002e40  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
002e44  92300002  vadd.s.mz vr1{mr1}, zero, vr0
002e48  9f100000  addli r1, zero, 1
002e4c  7e8000e0  vmmov mr0, r1
002e50  ea201130  vor.u.mh vr1{mr0}, r2, vr1
002e54  e300afe0  loadli.w r1,  -4016(r30)
002e58  1f210000  addli r2, zero, 2
002e5c  7e0001e0  vmmov mr0, r2
002e60  1f410000  addli r2, zero, 4
002e64  b3900020  hfloat2float.rn r1, r1
002e68  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002e6c  e340afe0  loadli.w r1,  -4012(r30)
002e70  7e0001e0  vmmov mr0, r2
002e74  1f011000  addli r2, zero, 8
002e78  b3900020  hfloat2float.rn r1, r1
002e7c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002e80  e300bfe0  loadli.w r1,  -4008(r30)
002e84  7e0001e0  vmmov mr0, r2
002e88  1f012000  addli r2, zero, 16
002e8c  b3900020  hfloat2float.rn r1, r1
002e90  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002e94  e340bfe0  loadli.w r1,  -4004(r30)
002e98  7e0001e0  vmmov mr0, r2
002e9c  1f014000  addli r2, zero, 32
002ea0  b3900020  hfloat2float.rn r1, r1
002ea4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002ea8  e300cfe0  loadli.w r1,  -4000(r30)
002eac  7e0001e0  vmmov mr0, r2
002eb0  1f018000  addli r2, zero, 64
002eb4  b3900020  hfloat2float.rn r1, r1
002eb8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002ebc  e340cfe0  loadli.w r1,  -3996(r30)
002ec0  7e0001e0  vmmov mr0, r2
002ec4  1f010004  addli r2, zero, 512
002ec8  b3900020  hfloat2float.rn r1, r1
002ecc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002ed0  e300dfe0  loadli.w r1,  -3992(r30)
002ed4  7e0001e0  vmmov mr0, r2
002ed8  1f010008  addli r2, zero, 1024
002edc  b3900020  hfloat2float.rn r1, r1
002ee0  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002ee4  e340dfe0  loadli.w r1,  -3988(r30)
002ee8  b3900020  hfloat2float.rn r1, r1
002eec  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002ef0  e300efe0  loadli.w r1,  -3984(r30)
002ef4  b3900020  hfloat2float.rn r1, r1
002ef8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002efc  e340efe0  loadli.w r1,  -3980(r30)
002f00  7e0001e0  vmmov mr0, r2
002f04  1f010010  addli r2, zero, 2048
002f08  b3900020  hfloat2float.rn r1, r1
002f0c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002f10  e300ffe0  loadli.w r1,  -3976(r30)
002f14  7e0001e0  vmmov mr0, r2
002f18  1f010020  addli r2, zero, 4096
002f1c  fe0101e0  vmmov mr3, r2
002f20  1f010040  addli r2, zero, 8192
002f24  b3900020  hfloat2float.rn r1, r1
002f28  7e0101e0  vmmov mr2, r2
002f2c  2b410000  lui r2, 4
002f30  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002f34  e340ffe0  loadli.w r1,  -3972(r30)
002f38  7e0001e0  vmmov mr0, r2
002f3c  b3900020  hfloat2float.rn r1, r1
002f40  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002f44  e300ffe1  loadli.w r1,  -3848(r30)
002f48  b3900020  hfloat2float.rn r1, r1
002f4c  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002f50  e340ffe1  loadli.w r1,  -3844(r30)
002f54  b3900020  hfloat2float.rn r1, r1
002f58  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002f5c  e3008ff0  loadli.w r1,  -1984(r30)
002f60  7e8001e0  vmmov mr0, r3
002f64  63010fe2  loadli.w r2,  -3840(r30)
002f68  ab810000  lui r3, 8
002f6c  b3900020  hfloat2float.rn r1, r1
002f70  33110120  hfloat2float.rn r2, r2
002f74  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002f78  9f008ff0  addli r1, r30, -1984
002f7c  00a00000  mfence { lm }
002f80  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
002f84  92300002  vadd.s.mz vr1{mr1}, zero, vr0
002f88  9f100000  addli r1, zero, 1
002f8c  7e8000e0  vmmov mr0, r1
002f90  ea201130  vor.u.mh vr1{mr0}, r2, vr1
002f94  e3400fe2  loadli.w r1,  -3836(r30)
002f98  1f210000  addli r2, zero, 2
002f9c  7e0001e0  vmmov mr0, r2
002fa0  1f410000  addli r2, zero, 4
002fa4  b3900020  hfloat2float.rn r1, r1
002fa8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002fac  e3001fe2  loadli.w r1,  -3832(r30)
002fb0  7e0001e0  vmmov mr0, r2
002fb4  1f011000  addli r2, zero, 8
002fb8  b3900020  hfloat2float.rn r1, r1
002fbc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002fc0  e3401fe2  loadli.w r1,  -3828(r30)
002fc4  7e0001e0  vmmov mr0, r2
002fc8  1f012000  addli r2, zero, 16
002fcc  b3900020  hfloat2float.rn r1, r1
002fd0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002fd4  e3002fe2  loadli.w r1,  -3824(r30)
002fd8  7e0001e0  vmmov mr0, r2
002fdc  1f014000  addli r2, zero, 32
002fe0  b3900020  hfloat2float.rn r1, r1
002fe4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002fe8  e3402fe2  loadli.w r1,  -3820(r30)
002fec  7e0001e0  vmmov mr0, r2
002ff0  1f018000  addli r2, zero, 64
002ff4  b3900020  hfloat2float.rn r1, r1
002ff8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002ffc  e3003fe2  loadli.w r1,  -3816(r30)
003000  7e0001e0  vmmov mr0, r2
003004  1f010001  addli r2, zero, 128
003008  b3900020  hfloat2float.rn r1, r1
00300c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
003010  e3403fe2  loadli.w r1,  -3812(r30)
003014  7e0001e0  vmmov mr0, r2
003018  1f010002  addli r2, zero, 256
00301c  b3900020  hfloat2float.rn r1, r1
003020  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
003024  e3004fe2  loadli.w r1,  -3808(r30)
003028  7e0001e0  vmmov mr0, r2
00302c  1f010004  addli r2, zero, 512
003030  b3900020  hfloat2float.rn r1, r1
003034  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
003038  e3404fe2  loadli.w r1,  -3804(r30)
00303c  7e0001e0  vmmov mr0, r2
003040  1f010008  addli r2, zero, 1024
003044  b3900020  hfloat2float.rn r1, r1
003048  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00304c  e3005fe2  loadli.w r1,  -3800(r30)
003050  7e0001e0  vmmov mr0, r2
003054  1f010010  addli r2, zero, 2048
003058  b3900020  hfloat2float.rn r1, r1
00305c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
003060  e3405fe2  loadli.w r1,  -3796(r30)
003064  7e0001e0  vmmov mr0, r2
003068  2b410000  lui r2, 4
00306c  b3900020  hfloat2float.rn r1, r1
003070  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
003074  e3006fe2  loadli.w r1,  -3792(r30)
003078  7e0001e0  vmmov mr0, r2
00307c  b3900020  hfloat2float.rn r1, r1
003080  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
003084  e3406fe2  loadli.w r1,  -3788(r30)
003088  b3900020  hfloat2float.rn r1, r1
00308c  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
003090  e3007fe2  loadli.w r1,  -3784(r30)
003094  b3900020  hfloat2float.rn r1, r1
003098  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00309c  e3000ff0  loadli.w r1,  -2048(r30)
0030a0  7e8001e0  vmmov mr0, r3
0030a4  63417fe2  loadli.w r2,  -3780(r30)
0030a8  ab810000  lui r3, 8
0030ac  b3900020  hfloat2float.rn r1, r1
0030b0  33110120  hfloat2float.rn r2, r2
0030b4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0030b8  9f000ff0  addli r1, r30, -2048
0030bc  00a00000  mfence { lm }
0030c0  86350200  vfp162float_l.rn vr11, vr4
0030c4  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0030c8  9f100000  addli r1, zero, 1
0030cc  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0030d0  7e8000e0  vmmov mr0, r1
0030d4  6a248130  vor.u.mh vr8{mr0}, r2, vr8
0030d8  e3006fe3  loadli.w r1,  -3664(r30)
0030dc  1f210000  addli r2, zero, 2
0030e0  7e0101e0  vmmov mr2, r2
0030e4  1f410000  addli r2, zero, 4
0030e8  b3900020  hfloat2float.rn r1, r1
0030ec  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
0030f0  e3406fe3  loadli.w r1,  -3660(r30)
0030f4  7e0101e0  vmmov mr2, r2
0030f8  1f011000  addli r2, zero, 8
0030fc  b3900020  hfloat2float.rn r1, r1
003100  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
003104  e3007fe3  loadli.w r1,  -3656(r30)
003108  7e0101e0  vmmov mr2, r2
00310c  1f012000  addli r2, zero, 16
003110  b3900020  hfloat2float.rn r1, r1
003114  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
003118  e3407fe3  loadli.w r1,  -3652(r30)
00311c  7e0101e0  vmmov mr2, r2
003120  1f014000  addli r2, zero, 32
003124  b3900020  hfloat2float.rn r1, r1
003128  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
00312c  e3008fe3  loadli.w r1,  -3648(r30)
003130  7e0101e0  vmmov mr2, r2
003134  1f018000  addli r2, zero, 64
003138  b3900020  hfloat2float.rn r1, r1
00313c  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
003140  e3408fe3  loadli.w r1,  -3644(r30)
003144  7e0101e0  vmmov mr2, r2
003148  1f010001  addli r2, zero, 128
00314c  b3900020  hfloat2float.rn r1, r1
003150  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
003154  e3009fe3  loadli.w r1,  -3640(r30)
003158  7e0101e0  vmmov mr2, r2
00315c  1f010002  addli r2, zero, 256
003160  b3900020  hfloat2float.rn r1, r1
003164  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
003168  e3409fe3  loadli.w r1,  -3636(r30)
00316c  7e0101e0  vmmov mr2, r2
003170  1f010004  addli r2, zero, 512
003174  b3900020  hfloat2float.rn r1, r1
003178  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
00317c  e300afe3  loadli.w r1,  -3632(r30)
003180  7e0101e0  vmmov mr2, r2
003184  1f010008  addli r2, zero, 1024
003188  b3900020  hfloat2float.rn r1, r1
00318c  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
003190  e340afe3  loadli.w r1,  -3628(r30)
003194  7e0101e0  vmmov mr2, r2
003198  1f010010  addli r2, zero, 2048
00319c  b3900020  hfloat2float.rn r1, r1
0031a0  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
0031a4  e300bfe3  loadli.w r1,  -3624(r30)
0031a8  7e0101e0  vmmov mr2, r2
0031ac  1f010040  addli r2, zero, 8192
0031b0  b3900020  hfloat2float.rn r1, r1
0031b4  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
0031b8  e340bfe3  loadli.w r1,  -3620(r30)
0031bc  b3900020  hfloat2float.rn r1, r1
0031c0  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
0031c4  e300cfe3  loadli.w r1,  -3616(r30)
0031c8  fe0101e0  vmmov mr3, r2
0031cc  2b410000  lui r2, 4
0031d0  7e0101e0  vmmov mr2, r2
0031d4  b3900020  hfloat2float.rn r1, r1
0031d8  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
0031dc  e340cfe3  loadli.w r1,  -3612(r30)
0031e0  b3900020  hfloat2float.rn r1, r1
0031e4  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
0031e8  e340dfe3  loadli.w r1,  -3604(r30)
0031ec  6301dfe3  loadli.w r2,  -3608(r30)
0031f0  7e8101e0  vmmov mr2, r3
0031f4  ab810000  lui r3, 8
0031f8  b3900020  hfloat2float.rn r1, r1
0031fc  33110120  hfloat2float.rn r2, r2
003200  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
003204  ea237130  vor.u.mh vr7{mr0}, r2, vr7
003208  e300efe3  loadli.w r1,  -3600(r30)
00320c  1f210000  addli r2, zero, 2
003210  7e0001e0  vmmov mr0, r2
003214  1f410000  addli r2, zero, 4
003218  b3900020  hfloat2float.rn r1, r1
00321c  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
003220  e340efe3  loadli.w r1,  -3596(r30)
003224  7e0001e0  vmmov mr0, r2
003228  1f011000  addli r2, zero, 8
00322c  b3900020  hfloat2float.rn r1, r1
003230  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
003234  e300ffe3  loadli.w r1,  -3592(r30)
003238  7e0001e0  vmmov mr0, r2
00323c  1f012000  addli r2, zero, 16
003240  b3900020  hfloat2float.rn r1, r1
003244  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
003248  e340ffe3  loadli.w r1,  -3588(r30)
00324c  7e0001e0  vmmov mr0, r2
003250  1f014000  addli r2, zero, 32
003254  b3900020  hfloat2float.rn r1, r1
003258  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
00325c  e300efe4  loadli.w r1,  -3472(r30)
003260  7e0001e0  vmmov mr0, r2
003264  1f018000  addli r2, zero, 64
003268  b3900020  hfloat2float.rn r1, r1
00326c  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
003270  e340efe4  loadli.w r1,  -3468(r30)
003274  7e0001e0  vmmov mr0, r2
003278  1f010001  addli r2, zero, 128
00327c  b3900020  hfloat2float.rn r1, r1
003280  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
003284  e300ffe4  loadli.w r1,  -3464(r30)
003288  7e0001e0  vmmov mr0, r2
00328c  1f010002  addli r2, zero, 256
003290  b3900020  hfloat2float.rn r1, r1
003294  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
003298  e340ffe4  loadli.w r1,  -3460(r30)
00329c  7e0001e0  vmmov mr0, r2
0032a0  1f010004  addli r2, zero, 512
0032a4  b3900020  hfloat2float.rn r1, r1
0032a8  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0032ac  e3000fe5  loadli.w r1,  -3456(r30)
0032b0  7e0001e0  vmmov mr0, r2
0032b4  1f010008  addli r2, zero, 1024
0032b8  b3900020  hfloat2float.rn r1, r1
0032bc  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0032c0  e3400fe5  loadli.w r1,  -3452(r30)
0032c4  7e0001e0  vmmov mr0, r2
0032c8  1f010010  addli r2, zero, 2048
0032cc  b3900020  hfloat2float.rn r1, r1
0032d0  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0032d4  e3001fe5  loadli.w r1,  -3448(r30)
0032d8  7e0001e0  vmmov mr0, r2
0032dc  1f010020  addli r2, zero, 4096
0032e0  b3900020  hfloat2float.rn r1, r1
0032e4  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0032e8  e3401fe5  loadli.w r1,  -3444(r30)
0032ec  7e0001e0  vmmov mr0, r2
0032f0  2b410000  lui r2, 4
0032f4  b3900020  hfloat2float.rn r1, r1
0032f8  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0032fc  e3002fe5  loadli.w r1,  -3440(r30)
003300  7e0001e0  vmmov mr0, r2
003304  b3900020  hfloat2float.rn r1, r1
003308  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
00330c  e3402fe5  loadli.w r1,  -3436(r30)
003310  b3900020  hfloat2float.rn r1, r1
003314  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
003318  e3403fe5  loadli.w r1,  -3428(r30)
00331c  63013fe5  loadli.w r2,  -3432(r30)
003320  b3900020  hfloat2float.rn r1, r1
003324  33110120  hfloat2float.rn r2, r2
003328  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
00332c  9f100000  addli r1, zero, 1
003330  7e0001c0  vmmov mr0, mr2
003334  7e8100e0  vmmov mr2, r1
003338  6a236134  vor.u.mh vr6{mr2}, r2, vr6
00333c  e3004fe5  loadli.w r1,  -3424(r30)
003340  1f210000  addli r2, zero, 2
003344  7e0101e0  vmmov mr2, r2
003348  1f410000  addli r2, zero, 4
00334c  b3900020  hfloat2float.rn r1, r1
003350  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
003354  e3404fe5  loadli.w r1,  -3420(r30)
003358  7e0101e0  vmmov mr2, r2
00335c  1f011000  addli r2, zero, 8
003360  b3900020  hfloat2float.rn r1, r1
003364  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
003368  e3005fe5  loadli.w r1,  -3416(r30)
00336c  7e0101e0  vmmov mr2, r2
003370  1f012000  addli r2, zero, 16
003374  b3900020  hfloat2float.rn r1, r1
003378  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
00337c  e3405fe5  loadli.w r1,  -3412(r30)
003380  7e0101e0  vmmov mr2, r2
003384  1f014000  addli r2, zero, 32
003388  b3900020  hfloat2float.rn r1, r1
00338c  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
003390  e3006fe5  loadli.w r1,  -3408(r30)
003394  7e0101e0  vmmov mr2, r2
003398  1f018000  addli r2, zero, 64
00339c  b3900020  hfloat2float.rn r1, r1
0033a0  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
0033a4  e3406fe5  loadli.w r1,  -3404(r30)
0033a8  7e0101e0  vmmov mr2, r2
0033ac  1f010001  addli r2, zero, 128
0033b0  b3900020  hfloat2float.rn r1, r1
0033b4  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
0033b8  e3007fe5  loadli.w r1,  -3400(r30)
0033bc  7e0101e0  vmmov mr2, r2
0033c0  1f010002  addli r2, zero, 256
0033c4  b3900020  hfloat2float.rn r1, r1
0033c8  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
0033cc  e3407fe5  loadli.w r1,  -3396(r30)
0033d0  7e0101e0  vmmov mr2, r2
0033d4  1f010004  addli r2, zero, 512
0033d8  b3900020  hfloat2float.rn r1, r1
0033dc  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
0033e0  e3006fe6  loadli.w r1,  -3280(r30)
0033e4  7e0101e0  vmmov mr2, r2
0033e8  1f010008  addli r2, zero, 1024
0033ec  b3900020  hfloat2float.rn r1, r1
0033f0  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
0033f4  e3406fe6  loadli.w r1,  -3276(r30)
0033f8  7e0101e0  vmmov mr2, r2
0033fc  1f010010  addli r2, zero, 2048
003400  b3900020  hfloat2float.rn r1, r1
003404  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
003408  e3007fe6  loadli.w r1,  -3272(r30)
00340c  7e0101e0  vmmov mr2, r2
003410  1f010020  addli r2, zero, 4096
003414  b3900020  hfloat2float.rn r1, r1
003418  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
00341c  e3407fe6  loadli.w r1,  -3268(r30)
003420  7e0101e0  vmmov mr2, r2
003424  2b410000  lui r2, 4
003428  b3900020  hfloat2float.rn r1, r1
00342c  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
003430  e3008fe6  loadli.w r1,  -3264(r30)
003434  7e0101e0  vmmov mr2, r2
003438  b3900020  hfloat2float.rn r1, r1
00343c  6aa36036  vor.u.mh vr6{mr3}, r1, vr6
003440  e3408fe6  loadli.w r1,  -3260(r30)
003444  b3900020  hfloat2float.rn r1, r1
003448  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
00344c  e3409fe6  loadli.w r1,  -3252(r30)
003450  63019fe6  loadli.w r2,  -3256(r30)
003454  b3900020  hfloat2float.rn r1, r1
003458  33110120  hfloat2float.rn r2, r2
00345c  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
003460  9f100000  addli r1, zero, 1
003464  7e8000e0  vmmov mr0, r1
003468  ea225130  vor.u.mh vr5{mr0}, r2, vr5
00346c  e300afe6  loadli.w r1,  -3248(r30)
003470  1f210000  addli r2, zero, 2
003474  7e0001e0  vmmov mr0, r2
003478  1f410000  addli r2, zero, 4
00347c  b3900020  hfloat2float.rn r1, r1
003480  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
003484  e340afe6  loadli.w r1,  -3244(r30)
003488  7e0001e0  vmmov mr0, r2
00348c  1f011000  addli r2, zero, 8
003490  b3900020  hfloat2float.rn r1, r1
003494  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
003498  e300bfe6  loadli.w r1,  -3240(r30)
00349c  7e0001e0  vmmov mr0, r2
0034a0  1f012000  addli r2, zero, 16
0034a4  b3900020  hfloat2float.rn r1, r1
0034a8  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0034ac  e340bfe6  loadli.w r1,  -3236(r30)
0034b0  7e0001e0  vmmov mr0, r2
0034b4  1f014000  addli r2, zero, 32
0034b8  b3900020  hfloat2float.rn r1, r1
0034bc  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0034c0  e300cfe6  loadli.w r1,  -3232(r30)
0034c4  7e0001e0  vmmov mr0, r2
0034c8  1f018000  addli r2, zero, 64
0034cc  b3900020  hfloat2float.rn r1, r1
0034d0  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0034d4  e340cfe6  loadli.w r1,  -3228(r30)
0034d8  7e0001e0  vmmov mr0, r2
0034dc  1f010001  addli r2, zero, 128
0034e0  b3900020  hfloat2float.rn r1, r1
0034e4  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0034e8  e300dfe6  loadli.w r1,  -3224(r30)
0034ec  7e0001e0  vmmov mr0, r2
0034f0  1f010002  addli r2, zero, 256
0034f4  b3900020  hfloat2float.rn r1, r1
0034f8  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0034fc  e340dfe6  loadli.w r1,  -3220(r30)
003500  7e0001e0  vmmov mr0, r2
003504  1f010004  addli r2, zero, 512
003508  b3900020  hfloat2float.rn r1, r1
00350c  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
003510  e300efe6  loadli.w r1,  -3216(r30)
003514  7e0001e0  vmmov mr0, r2
003518  1f010008  addli r2, zero, 1024
00351c  b3900020  hfloat2float.rn r1, r1
003520  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
003524  e340efe6  loadli.w r1,  -3212(r30)
003528  7e0001e0  vmmov mr0, r2
00352c  1f010010  addli r2, zero, 2048
003530  b3900020  hfloat2float.rn r1, r1
003534  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
003538  e300ffe6  loadli.w r1,  -3208(r30)
00353c  7e0001e0  vmmov mr0, r2
003540  1f010020  addli r2, zero, 4096
003544  b3900020  hfloat2float.rn r1, r1
003548  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
00354c  e340ffe6  loadli.w r1,  -3204(r30)
003550  7e0001e0  vmmov mr0, r2
003554  b3900020  hfloat2float.rn r1, r1
003558  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
00355c  e300efe7  loadli.w r1,  -3088(r30)
003560  7e8001e0  vmmov mr0, r3
003564  ab810000  lui r3, 8
003568  b3900020  hfloat2float.rn r1, r1
00356c  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
003570  e340efe7  loadli.w r1,  -3084(r30)
003574  b3900020  hfloat2float.rn r1, r1
003578  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
00357c  e340ffe7  loadli.w r1,  -3076(r30)
003580  6301ffe7  loadli.w r2,  -3080(r30)
003584  b3900020  hfloat2float.rn r1, r1
003588  33110120  hfloat2float.rn r2, r2
00358c  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
003590  9f100000  addli r1, zero, 1
003594  7e8000e0  vmmov mr0, r1
003598  ea213130  vor.u.mh vr3{mr0}, r2, vr3
00359c  e3000fe8  loadli.w r1,  -3072(r30)
0035a0  1f210000  addli r2, zero, 2
0035a4  7e0001e0  vmmov mr0, r2
0035a8  1f410000  addli r2, zero, 4
0035ac  b3900020  hfloat2float.rn r1, r1
0035b0  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0035b4  e3400fe8  loadli.w r1,  -3068(r30)
0035b8  7e0001e0  vmmov mr0, r2
0035bc  1f011000  addli r2, zero, 8
0035c0  b3900020  hfloat2float.rn r1, r1
0035c4  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0035c8  e3001fe8  loadli.w r1,  -3064(r30)
0035cc  7e0001e0  vmmov mr0, r2
0035d0  1f012000  addli r2, zero, 16
0035d4  b3900020  hfloat2float.rn r1, r1
0035d8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0035dc  e3401fe8  loadli.w r1,  -3060(r30)
0035e0  7e0001e0  vmmov mr0, r2
0035e4  1f014000  addli r2, zero, 32
0035e8  b3900020  hfloat2float.rn r1, r1
0035ec  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0035f0  e3002fe8  loadli.w r1,  -3056(r30)
0035f4  7e0001e0  vmmov mr0, r2
0035f8  1f018000  addli r2, zero, 64
0035fc  b3900020  hfloat2float.rn r1, r1
003600  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003604  e3402fe8  loadli.w r1,  -3052(r30)
003608  7e0001e0  vmmov mr0, r2
00360c  1f010001  addli r2, zero, 128
003610  b3900020  hfloat2float.rn r1, r1
003614  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003618  e3003fe8  loadli.w r1,  -3048(r30)
00361c  7e0001e0  vmmov mr0, r2
003620  1f010002  addli r2, zero, 256
003624  b3900020  hfloat2float.rn r1, r1
003628  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00362c  e3403fe8  loadli.w r1,  -3044(r30)
003630  7e0001e0  vmmov mr0, r2
003634  1f010004  addli r2, zero, 512
003638  b3900020  hfloat2float.rn r1, r1
00363c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003640  e3004fe8  loadli.w r1,  -3040(r30)
003644  7e0001e0  vmmov mr0, r2
003648  1f010008  addli r2, zero, 1024
00364c  b3900020  hfloat2float.rn r1, r1
003650  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003654  e3404fe8  loadli.w r1,  -3036(r30)
003658  7e0001e0  vmmov mr0, r2
00365c  1f010010  addli r2, zero, 2048
003660  b3900020  hfloat2float.rn r1, r1
003664  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003668  e3005fe8  loadli.w r1,  -3032(r30)
00366c  7e0001e0  vmmov mr0, r2
003670  1f010020  addli r2, zero, 4096
003674  b3900020  hfloat2float.rn r1, r1
003678  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00367c  e3405fe8  loadli.w r1,  -3028(r30)
003680  7e0001e0  vmmov mr0, r2
003684  b3900020  hfloat2float.rn r1, r1
003688  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00368c  e3006fe8  loadli.w r1,  -3024(r30)
003690  7e8001e0  vmmov mr0, r3
003694  ab810000  lui r3, 8
003698  b3900020  hfloat2float.rn r1, r1
00369c  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
0036a0  e3406fe8  loadli.w r1,  -3020(r30)
0036a4  b3900020  hfloat2float.rn r1, r1
0036a8  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
0036ac  e3407fe8  loadli.w r1,  -3012(r30)
0036b0  63017fe8  loadli.w r2,  -3016(r30)
0036b4  b3900020  hfloat2float.rn r1, r1
0036b8  33110120  hfloat2float.rn r2, r2
0036bc  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0036c0  9f100000  addli r1, zero, 1
0036c4  7e8000e0  vmmov mr0, r1
0036c8  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0036cc  e3006fe9  loadli.w r1,  -2896(r30)
0036d0  1f210000  addli r2, zero, 2
0036d4  7e0001e0  vmmov mr0, r2
0036d8  1f410000  addli r2, zero, 4
0036dc  b3900020  hfloat2float.rn r1, r1
0036e0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0036e4  e3406fe9  loadli.w r1,  -2892(r30)
0036e8  7e0001e0  vmmov mr0, r2
0036ec  1f011000  addli r2, zero, 8
0036f0  b3900020  hfloat2float.rn r1, r1
0036f4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0036f8  e3007fe9  loadli.w r1,  -2888(r30)
0036fc  7e0001e0  vmmov mr0, r2
003700  1f012000  addli r2, zero, 16
003704  b3900020  hfloat2float.rn r1, r1
003708  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00370c  e3407fe9  loadli.w r1,  -2884(r30)
003710  7e0001e0  vmmov mr0, r2
003714  1f014000  addli r2, zero, 32
003718  b3900020  hfloat2float.rn r1, r1
00371c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
003720  e3008fe9  loadli.w r1,  -2880(r30)
003724  7e0001e0  vmmov mr0, r2
003728  1f018000  addli r2, zero, 64
00372c  b3900020  hfloat2float.rn r1, r1
003730  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
003734  e3408fe9  loadli.w r1,  -2876(r30)
003738  7e0001e0  vmmov mr0, r2
00373c  1f010001  addli r2, zero, 128
003740  b3900020  hfloat2float.rn r1, r1
003744  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
003748  e3009fe9  loadli.w r1,  -2872(r30)
00374c  7e0001e0  vmmov mr0, r2
003750  1f010002  addli r2, zero, 256
003754  b3900020  hfloat2float.rn r1, r1
003758  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00375c  e3409fe9  loadli.w r1,  -2868(r30)
003760  7e0001e0  vmmov mr0, r2
003764  1f010004  addli r2, zero, 512
003768  b3900020  hfloat2float.rn r1, r1
00376c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
003770  e300afe9  loadli.w r1,  -2864(r30)
003774  7e0001e0  vmmov mr0, r2
003778  1f010008  addli r2, zero, 1024
00377c  b3900020  hfloat2float.rn r1, r1
003780  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
003784  e340afe9  loadli.w r1,  -2860(r30)
003788  7e0001e0  vmmov mr0, r2
00378c  1f010010  addli r2, zero, 2048
003790  b3900020  hfloat2float.rn r1, r1
003794  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
003798  e300bfe9  loadli.w r1,  -2856(r30)
00379c  7e0001e0  vmmov mr0, r2
0037a0  1f010020  addli r2, zero, 4096
0037a4  b3900020  hfloat2float.rn r1, r1
0037a8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0037ac  e340bfe9  loadli.w r1,  -2852(r30)
0037b0  7e0001e0  vmmov mr0, r2
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
0037dc  6301dfe9  loadli.w r2,  -2840(r30)
0037e0  7e8101e0  vmmov mr2, r3
0037e4  9f010fea  addli r3, r30, -2816
0037e8  b3900020  hfloat2float.rn r1, r1
0037ec  33110120  hfloat2float.rn r2, r2
0037f0  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0037f4  9f100000  addli r1, zero, 1
0037f8  7e8000e0  vmmov mr0, r1
0037fc  6a212130  vor.u.mh vr2{mr0}, r2, vr2
003800  e300efe9  loadli.w r1,  -2832(r30)
003804  1f210000  addli r2, zero, 2
003808  7e0001e0  vmmov mr0, r2
00380c  1f410000  addli r2, zero, 4
003810  b3900020  hfloat2float.rn r1, r1
003814  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
003818  e340efe9  loadli.w r1,  -2828(r30)
00381c  7e0001e0  vmmov mr0, r2
003820  1f011000  addli r2, zero, 8
003824  b3900020  hfloat2float.rn r1, r1
003828  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
00382c  e300ffe9  loadli.w r1,  -2824(r30)
003830  7e0001e0  vmmov mr0, r2
003834  1f012000  addli r2, zero, 16
003838  b3900020  hfloat2float.rn r1, r1
00383c  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
003840  e340ffe9  loadli.w r1,  -2820(r30)
003844  7e0001e0  vmmov mr0, r2
003848  1f014000  addli r2, zero, 32
00384c  b3900020  hfloat2float.rn r1, r1
003850  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
003854  e340afea  loadli.w r1,  -2732(r30)
003858  7e0001e0  vmmov mr0, r2
00385c  1f018000  addli r2, zero, 64
003860  b3900020  hfloat2float.rn r1, r1
003864  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
003868  e300bfea  loadli.w r1,  -2728(r30)
00386c  7e0001e0  vmmov mr0, r2
003870  1f010001  addli r2, zero, 128
003874  b3900020  hfloat2float.rn r1, r1
003878  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
00387c  e340bfea  loadli.w r1,  -2724(r30)
003880  7e0001e0  vmmov mr0, r2
003884  1f010002  addli r2, zero, 256
003888  b3900020  hfloat2float.rn r1, r1
00388c  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
003890  e300cfea  loadli.w r1,  -2720(r30)
003894  7e0001e0  vmmov mr0, r2
003898  1f010004  addli r2, zero, 512
00389c  b3900020  hfloat2float.rn r1, r1
0038a0  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0038a4  e340cfea  loadli.w r1,  -2716(r30)
0038a8  7e0001e0  vmmov mr0, r2
0038ac  1f010008  addli r2, zero, 1024
0038b0  b3900020  hfloat2float.rn r1, r1
0038b4  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0038b8  e300dfea  loadli.w r1,  -2712(r30)
0038bc  7e0001e0  vmmov mr0, r2
0038c0  1f010010  addli r2, zero, 2048
0038c4  b3900020  hfloat2float.rn r1, r1
0038c8  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0038cc  e340dfea  loadli.w r1,  -2708(r30)
0038d0  7e0001e0  vmmov mr0, r2
0038d4  1f010020  addli r2, zero, 4096
0038d8  b3900020  hfloat2float.rn r1, r1
0038dc  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0038e0  e300efea  loadli.w r1,  -2704(r30)
0038e4  7e0001e0  vmmov mr0, r2
0038e8  1f010040  addli r2, zero, 8192
0038ec  b3900020  hfloat2float.rn r1, r1
0038f0  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0038f4  e340efea  loadli.w r1,  -2700(r30)
0038f8  7e0001e0  vmmov mr0, r2
0038fc  b3900020  hfloat2float.rn r1, r1
003900  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
003904  e300ffea  loadli.w r1,  -2696(r30)
003908  b3900020  hfloat2float.rn r1, r1
00390c  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
003910  e3000feb  loadli.w r1,  -2688(r30)
003914  6341ffea  loadli.w r2,  -2692(r30)
003918  b3900020  hfloat2float.rn r1, r1
00391c  33110120  hfloat2float.rn r2, r2
003920  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003924  9f100000  addli r1, zero, 1
003928  7e8000e0  vmmov mr0, r1
00392c  ab000080  lui r1, 524288
003930  6a200130  vor.u.mh vr0{mr0}, r2, vr0
003934  63018feb  loadli.w r2,  -2624(r30)
003938  97201100  xor r1, r2, r1
00393c  9295b002  vadd.f.mz.rn vr11{mr1}, r1, vr11
003940  0a95b602  vmul.f.mz.rn vr10{mr1}, r13, vr11
003944  63410feb  loadli.w r2,  -2684(r30)
003948  c2950102  vload_mask16.mz vr11{mr1}, 0(r3)
00394c  9f018feb  addli r3, r30, -2624
003950  a614b502  vmac.f.mz.rn vr9{mr1}, vr10, vr11
003954  00a00000  mfence { lm }
003958  86750200  vfp162float_h.rn vr11, vr4
00395c  46909102  vstore_mask16.mz vr9{mr1}, 0(r3)
003960  9f210000  addli r3, zero, 2
003964  33110120  hfloat2float.rn r2, r2
003968  9295b002  vadd.f.mz.rn vr11{mr1}, r1, vr11
00396c  8a95b602  vmul.f.mz.rn vr11{mr1}, r13, vr11
003970  7e8001e0  vmmov mr0, r3
003974  9f018fe8  addli r3, r30, -3008
003978  6a200130  vor.u.mh vr0{mr0}, r2, vr0
00397c  63011feb  loadli.w r2,  -2680(r30)
003980  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
003984  9f010ff3  addli r3, r30, -1664
003988  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
00398c  33110120  hfloat2float.rn r2, r2
003990  26954502  vmac.f.mz.rn vr10{mr1}, vr11, vr4
003994  4690a102  vstore_mask16.mz vr10{mr1}, 0(r3)
003998  9f410000  addli r3, zero, 4
00399c  7e8001e0  vmmov mr0, r3
0039a0  9f010fe7  addli r3, r30, -3200
0039a4  6a200130  vor.u.mh vr0{mr0}, r2, vr0
0039a8  1f010fec  addli r2, r30, -2560
0039ac  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
0039b0  9f018ff2  addli r3, r30, -1728
0039b4  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
0039b8  86350200  vfp162float_l.rn vr11, vr4
0039bc  63411feb  loadli.w r2,  -2676(r30)
0039c0  9295b002  vadd.f.mz.rn vr11{mr1}, r1, vr11
0039c4  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
0039c8  8a95b602  vmul.f.mz.rn vr11{mr1}, r13, vr11
0039cc  a694a502  vmac.f.mz.rn vr9{mr1}, vr11, vr10
0039d0  46909102  vstore_mask16.mz vr9{mr1}, 0(r3)
0039d4  9f011000  addli r3, zero, 8
0039d8  33110120  hfloat2float.rn r2, r2
0039dc  86750200  vfp162float_h.rn vr11, vr4
0039e0  7e8001e0  vmmov mr0, r3
0039e4  9f018fe5  addli r3, r30, -3392
0039e8  9295b002  vadd.f.mz.rn vr11{mr1}, r1, vr11
0039ec  6a200130  vor.u.mh vr0{mr0}, r2, vr0
0039f0  63012feb  loadli.w r2,  -2672(r30)
0039f4  8a95b602  vmul.f.mz.rn vr11{mr1}, r13, vr11
0039f8  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
0039fc  9f018ff1  addli r3, r30, -1856
003a00  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
003a04  33110120  hfloat2float.rn r2, r2
003a08  a6944502  vmac.f.mz.rn vr9{mr1}, vr11, vr4
003a0c  46909102  vstore_mask16.mz vr9{mr1}, 0(r3)
003a10  9f012000  addli r3, zero, 16
003a14  7e8001e0  vmmov mr0, r3
003a18  9f010fe4  addli r3, r30, -3584
003a1c  6a200130  vor.u.mh vr0{mr0}, r2, vr0
003a20  1f018fec  addli r2, r30, -2496
003a24  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
003a28  9f010ff2  addli r3, r30, -1792
003a2c  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
003a30  86350200  vfp162float_l.rn vr11, vr4
003a34  63412feb  loadli.w r2,  -2668(r30)
003a38  9295b002  vadd.f.mz.rn vr11{mr1}, r1, vr11
003a3c  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
003a40  8a95b602  vmul.f.mz.rn vr11{mr1}, r13, vr11
003a44  a694a502  vmac.f.mz.rn vr9{mr1}, vr11, vr10
003a48  46909102  vstore_mask16.mz vr9{mr1}, 0(r3)
003a4c  9f014000  addli r3, zero, 32
003a50  33110120  hfloat2float.rn r2, r2
003a54  86750200  vfp162float_h.rn vr11, vr4
003a58  7e8001e0  vmmov mr0, r3
003a5c  9f018fe2  addli r3, r30, -3776
003a60  9295b002  vadd.f.mz.rn vr11{mr1}, r1, vr11
003a64  6a200130  vor.u.mh vr0{mr0}, r2, vr0
003a68  63013feb  loadli.w r2,  -2664(r30)
003a6c  8a95b602  vmul.f.mz.rn vr11{mr1}, r13, vr11
003a70  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
003a74  9f010ff1  addli r3, r30, -1920
003a78  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
003a7c  33110120  hfloat2float.rn r2, r2
003a80  a6944502  vmac.f.mz.rn vr9{mr1}, vr11, vr4
003a84  46909102  vstore_mask16.mz vr9{mr1}, 0(r3)
003a88  9f018000  addli r3, zero, 64
003a8c  7e8001e0  vmmov mr0, r3
003a90  9f010fe1  addli r3, r30, -3968
003a94  6a200130  vor.u.mh vr0{mr0}, r2, vr0
003a98  1f010fed  addli r2, r30, -2432
003a9c  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
003aa0  9f018ff0  addli r3, r30, -1984
003aa4  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
003aa8  86350200  vfp162float_l.rn vr11, vr4
003aac  63413feb  loadli.w r2,  -2660(r30)
003ab0  9295b002  vadd.f.mz.rn vr11{mr1}, r1, vr11
003ab4  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
003ab8  8a95b602  vmul.f.mz.rn vr11{mr1}, r13, vr11
003abc  a694a502  vmac.f.mz.rn vr9{mr1}, vr11, vr10
003ac0  46909102  vstore_mask16.mz vr9{mr1}, 0(r3)
003ac4  9f010001  addli r3, zero, 128
003ac8  33110120  hfloat2float.rn r2, r2
003acc  86750200  vfp162float_h.rn vr11, vr4
003ad0  7e8001e0  vmmov mr0, r3
003ad4  9f018fdf  addli r3, r30, -4160
003ad8  9295b002  vadd.f.mz.rn vr11{mr1}, r1, vr11
003adc  6a200130  vor.u.mh vr0{mr0}, r2, vr0
003ae0  63014feb  loadli.w r2,  -2656(r30)
003ae4  8a95b602  vmul.f.mz.rn vr11{mr1}, r13, vr11
003ae8  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
003aec  9f010ff0  addli r3, r30, -2048
003af0  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
003af4  33110120  hfloat2float.rn r2, r2
003af8  a6944502  vmac.f.mz.rn vr9{mr1}, vr11, vr4
003afc  46909102  vstore_mask16.mz vr9{mr1}, 0(r3)
003b00  9f010002  addli r3, zero, 256
003b04  7e8001e0  vmmov mr0, r3
003b08  9f010fde  addli r3, r30, -4352
003b0c  6a200130  vor.u.mh vr0{mr0}, r2, vr0
003b10  1f018fed  addli r2, r30, -2368
003b14  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
003b18  9f010004  addli r3, zero, 512
003b1c  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
003b20  63414feb  loadli.w r2,  -2652(r30)
003b24  86350200  vfp162float_l.rn vr11, vr4
003b28  7e8001e0  vmmov mr0, r3
003b2c  9295b002  vadd.f.mz.rn vr11{mr1}, r1, vr11
003b30  9f018fdc  addli r3, r30, -4544
003b34  8a95b602  vmul.f.mz.rn vr11{mr1}, r13, vr11
003b38  2694a502  vmac.f.mz.rn vr8{mr1}, vr11, vr10
003b3c  33110120  hfloat2float.rn r2, r2
003b40  86750200  vfp162float_h.rn vr11, vr4
003b44  9295b002  vadd.f.mz.rn vr11{mr1}, r1, vr11
003b48  6a200130  vor.u.mh vr0{mr0}, r2, vr0
003b4c  63015feb  loadli.w r2,  -2648(r30)
003b50  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
003b54  9f010008  addli r3, zero, 1024
003b58  8a95b602  vmul.f.mz.rn vr11{mr1}, r13, vr11
003b5c  a6934502  vmac.f.mz.rn vr7{mr1}, vr11, vr4
003b60  7e8001e0  vmmov mr0, r3
003b64  9f010fdc  addli r3, r30, -4608
003b68  33110120  hfloat2float.rn r2, r2
003b6c  6a200130  vor.u.mh vr0{mr0}, r2, vr0
003b70  1f010fee  addli r2, r30, -2304
003b74  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
003b78  9f010010  addli r3, zero, 2048
003b7c  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
003b80  63415feb  loadli.w r2,  -2644(r30)
003b84  86350200  vfp162float_l.rn vr11, vr4
003b88  7e8001e0  vmmov mr0, r3
003b8c  9f010fdb  addli r3, r30, -4736
003b90  9295b002  vadd.f.mz.rn vr11{mr1}, r1, vr11
003b94  8a95b602  vmul.f.mz.rn vr11{mr1}, r13, vr11
003b98  2693a502  vmac.f.mz.rn vr6{mr1}, vr11, vr10
003b9c  33110120  hfloat2float.rn r2, r2
003ba0  86750200  vfp162float_h.rn vr11, vr4
003ba4  9295b002  vadd.f.mz.rn vr11{mr1}, r1, vr11
003ba8  6a200130  vor.u.mh vr0{mr0}, r2, vr0
003bac  63016feb  loadli.w r2,  -2640(r30)
003bb0  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
003bb4  9f010020  addli r3, zero, 4096
003bb8  8a95b602  vmul.f.mz.rn vr11{mr1}, r13, vr11
003bbc  a6924502  vmac.f.mz.rn vr5{mr1}, vr11, vr4
003bc0  7e8001e0  vmmov mr0, r3
003bc4  9f010fda  addli r3, r30, -4864
003bc8  33110120  hfloat2float.rn r2, r2
003bcc  6a200130  vor.u.mh vr0{mr0}, r2, vr0
003bd0  1f018fee  addli r2, r30, -2240
003bd4  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
003bd8  9f010040  addli r3, zero, 8192
003bdc  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
003be0  63416feb  loadli.w r2,  -2636(r30)
003be4  7e8001e0  vmmov mr0, r3
003be8  86350200  vfp162float_l.rn vr11, vr4
003bec  9f010fd9  addli r3, r30, -4992
003bf0  9295b002  vadd.f.mz.rn vr11{mr1}, r1, vr11
003bf4  8a95b602  vmul.f.mz.rn vr11{mr1}, r13, vr11
003bf8  a691a502  vmac.f.mz.rn vr3{mr1}, vr11, vr10
003bfc  33110120  hfloat2float.rn r2, r2
003c00  86750200  vfp162float_h.rn vr11, vr4
003c04  9295b002  vadd.f.mz.rn vr11{mr1}, r1, vr11
003c08  6a200130  vor.u.mh vr0{mr0}, r2, vr0
003c0c  63017feb  loadli.w r2,  -2632(r30)
003c10  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
003c14  8a95b602  vmul.f.mz.rn vr11{mr1}, r13, vr11
003c18  a6904502  vmac.f.mz.rn vr1{mr1}, vr11, vr4
003c1c  9f010fd8  addli r3, r30, -5120
003c20  33110120  hfloat2float.rn r2, r2
003c24  6a200136  vor.u.mh vr0{mr3}, r2, vr0
003c28  1f010fef  addli r2, r30, -2176
003c2c  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
003c30  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
003c34  86350200  vfp162float_l.rn vr11, vr4
003c38  63417feb  loadli.w r2,  -2628(r30)
003c3c  9295b002  vadd.f.mz.rn vr11{mr1}, r1, vr11
003c40  8a95b602  vmul.f.mz.rn vr11{mr1}, r13, vr11
003c44  2691a502  vmac.f.mz.rn vr2{mr1}, vr11, vr10
003c48  86750200  vfp162float_h.rn vr11, vr4
003c4c  33110120  hfloat2float.rn r2, r2
003c50  9295b002  vadd.f.mz.rn vr11{mr1}, r1, vr11
003c54  9f000fd7  addli r1, r30, -5248
003c58  6a200134  vor.u.mh vr0{mr2}, r2, vr0
003c5c  8a95b602  vmul.f.mz.rn vr11{mr1}, r13, vr11
003c60  6b518f00  load.d r[3:4], 8(r30)
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
003d50  6b520300  load.d r[5:6], 0(r6)
003d54  00a00000  mfence { lm }
003d58  97101500  or r1, r10, r1
003d5c  0b214110  add.ul r[3:4], r[3:4], r[5:6]
003d60  ff309100  s_lm2gm r1, r9, 0(r[3:4])
003d64  9f71f003  addli r3, zero, 511
003d68  00a00000  mfence { lm }
003d6c  e305bfce  loadli.w r11,  -6312(r30)
003d70  63437fce  loadli.w r6,  -6340(r30)
003d74  6301dfce  loadli.w r2,  -6296(r30)
003d78  9f990900  addli r19, r19, 1
003d7c  b7a2f9e2  beq r19, r15, -15192
003d80  9bb01900  slli r1, r19, 1
003d84  8b101110  add.s r1, r2, r1
003d88  bfcf11fe  blt.s r3, r1, -16
003d8c  1f010000  addli r2, zero, 0
003d90  8b912410  add.s r3, r9, r2
003d94  1f410100  addli r2, r2, 4
003d98  73900100  store.h zero, 0(r3)
003d9c  73910100  store.h zero, 2(r3)
003da0  00a00000  mfence { lm }
003da4  bb3f71fe  bneq r2, r7, -20
003da8  e341bfce  loadli.w r3,  -6308(r30)
003dac  1bb1a000  slli r2, r1, 10
003db0  2b0200f0  lui r4, 983040
003db4  9f120000  addli r5, zero, 1
003db8  0b113110  add.s r2, r2, r3
003dbc  33110128  sext_int2long r[3:4], r2
003dc0  17365102  sll.d r[13:14], r[3:4], r5
003dc4  17114500  or r2, r10, r4
003dc8  eb510f00  load.d r[4:5], 0(r30)
003dcc  9f02ffef  addli r5, r30, -2056
003dd0  73b0c200  store.d r[13:14], 0(r5)
003dd4  8ba1c110  add.ul r[4:5], r[4:5], r[13:14]
003dd8  7fa19100  l_gm2lm r2, r9, 0(r[4:5])
003ddc  1f018ff3  addli r2, r30, -1600
003de0  1f020ff3  addli r4, r30, -1664
003de4  00a00000  mfence { lm }
003de8  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
003dec  06310000  vfp162float_l.rn vr2, vr0
003df0  86710000  vfp162float_h.rn vr3, vr0
003df4  1f010ff4  addli r2, r30, -1536
003df8  12112002  vadd.f.mz.rn vr2{mr1}, zero, vr2
003dfc  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
003e00  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
003e04  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
003e08  86b10000  vfp162float_l.rn vr3, vr1
003e0c  06f20000  vfp162float_h.rn vr4, vr1
003e10  1f018ff4  addli r2, r30, -1472
003e14  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
003e18  12124002  vadd.f.mz.rn vr4{mr1}, zero, vr4
003e1c  96113102  vadd.f.mz.rn vr3{mr1}, vr2, vr3
003e20  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
003e24  86720100  vfp162float_h.rn vr5, vr2
003e28  1f010ff5  addli r2, r30, -1408
003e2c  0e450002  vmul.hf.mz.rn vr10{mr1}, vr0, vr0
003e30  92125002  vadd.f.mz.rn vr5{mr1}, zero, vr5
003e34  96914102  vadd.f.mz.rn vr3{mr1}, vr3, vr4
003e38  06320100  vfp162float_l.rn vr4, vr2
003e3c  12124002  vadd.f.mz.rn vr4{mr1}, zero, vr4
003e40  0e412102  vmul.hf.mz.rn vr2{mr1}, vr2, vr2
003e44  16924102  vadd.f.mz.rn vr4{mr1}, vr3, vr4
003e48  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
003e4c  06f30100  vfp162float_h.rn vr6, vr3
003e50  1f018ff5  addli r2, r30, -1344
003e54  12136002  vadd.f.mz.rn vr6{mr1}, zero, vr6
003e58  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003e5c  86b20100  vfp162float_l.rn vr5, vr3
003e60  92125002  vadd.f.mz.rn vr5{mr1}, zero, vr5
003e64  8ec13102  vmul.hf.mz.rn vr3{mr1}, vr3, vr3
003e68  86b50100  vfp162float_l.rn vr11, vr3
003e6c  96125202  vadd.f.mz.rn vr5{mr1}, vr4, vr5
003e70  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
003e74  86730200  vfp162float_h.rn vr7, vr4
003e78  1f010ff6  addli r2, r30, -1280
003e7c  92137002  vadd.f.mz.rn vr7{mr1}, zero, vr7
003e80  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
003e84  06330200  vfp162float_l.rn vr6, vr4
003e88  12136002  vadd.f.mz.rn vr6{mr1}, zero, vr6
003e8c  0e424202  vmul.hf.mz.rn vr4{mr1}, vr4, vr4
003e90  16936202  vadd.f.mz.rn vr6{mr1}, vr5, vr6
003e94  c2120102  vload_mask16.mz vr5{mr1}, 0(r2)
003e98  06f40200  vfp162float_h.rn vr8, vr5
003e9c  1f018ff6  addli r2, r30, -1216
003ea0  12148002  vadd.f.mz.rn vr8{mr1}, zero, vr8
003ea4  16137302  vadd.f.mz.rn vr6{mr1}, vr6, vr7
003ea8  86b30200  vfp162float_l.rn vr7, vr5
003eac  92137002  vadd.f.mz.rn vr7{mr1}, zero, vr7
003eb0  8ec25202  vmul.hf.mz.rn vr5{mr1}, vr5, vr5
003eb4  96137302  vadd.f.mz.rn vr7{mr1}, vr6, vr7
003eb8  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
003ebc  86740300  vfp162float_h.rn vr9, vr6
003ec0  1f010ff7  addli r2, r30, -1152
003ec4  92149002  vadd.f.mz.rn vr9{mr1}, zero, vr9
003ec8  96938302  vadd.f.mz.rn vr7{mr1}, vr7, vr8
003ecc  06340300  vfp162float_l.rn vr8, vr6
003ed0  12148002  vadd.f.mz.rn vr8{mr1}, zero, vr8
003ed4  0e436302  vmul.hf.mz.rn vr6{mr1}, vr6, vr6
003ed8  96938302  vadd.f.mz.rn vr7{mr1}, vr7, vr8
003edc  42140102  vload_mask16.mz vr8{mr1}, 0(r2)
003ee0  96939302  vadd.f.mz.rn vr7{mr1}, vr7, vr9
003ee4  86340400  vfp162float_l.rn vr9, vr8
003ee8  92149002  vadd.f.mz.rn vr9{mr1}, zero, vr9
003eec  96939302  vadd.f.mz.rn vr7{mr1}, vr7, vr9
003ef0  86740400  vfp162float_h.rn vr9, vr8
003ef4  0e448402  vmul.hf.mz.rn vr8{mr1}, vr8, vr8
003ef8  92149002  vadd.f.mz.rn vr9{mr1}, zero, vr9
003efc  96939302  vadd.f.mz.rn vr7{mr1}, vr7, vr9
003f00  8ec41002  vmul.hf.mz.rn vr9{mr1}, vr1, vr1
003f04  06b00400  vfp162float_l.rn vr0, vr9
003f08  46100202  vstore_mask16.mz vr0{mr1}, 0(r4)
003f0c  1f028ff2  addli r4, r30, -1728
003f10  86700300  vfp162float_h.rn vr1, vr6
003f14  06f00400  vfp162float_h.rn vr0, vr9
003f18  86f40100  vfp162float_h.rn vr9, vr3
003f1c  86710200  vfp162float_h.rn vr3, vr4
003f20  46100202  vstore_mask16.mz vr0{mr1}, 0(r4)
003f24  06300100  vfp162float_l.rn vr0, vr2
003f28  1f020ff3  addli r4, r30, -1664
003f2c  7a910340  vextracti.f r2, 0(vr7)
003f30  fa911340  vextracti.f r3, 1(vr7)
003f34  0b613110  add.f.rn r2, r2, r3
003f38  fa912340  vextracti.f r3, 2(vr7)
003f3c  0be12110  add.f.rn r2, r3, r2
003f40  fa913340  vextracti.f r3, 3(vr7)
003f44  0be12110  add.f.rn r2, r3, r2
003f48  fa914340  vextracti.f r3, 4(vr7)
003f4c  0be12110  add.f.rn r2, r3, r2
003f50  fa915340  vextracti.f r3, 5(vr7)
003f54  0be12110  add.f.rn r2, r3, r2
003f58  fa916340  vextracti.f r3, 6(vr7)
003f5c  0be12110  add.f.rn r2, r3, r2
003f60  fa917340  vextracti.f r3, 7(vr7)
003f64  0be12110  add.f.rn r2, r3, r2
003f68  fa918340  vextracti.f r3, 8(vr7)
003f6c  0be12110  add.f.rn r2, r3, r2
003f70  fa919340  vextracti.f r3, 9(vr7)
003f74  0be12110  add.f.rn r2, r3, r2
003f78  fa91a340  vextracti.f r3, 10(vr7)
003f7c  0be12110  add.f.rn r2, r3, r2
003f80  fa91b340  vextracti.f r3, 11(vr7)
003f84  0be12110  add.f.rn r2, r3, r2
003f88  fa91c340  vextracti.f r3, 12(vr7)
003f8c  0be12110  add.f.rn r2, r3, r2
003f90  fa91d340  vextracti.f r3, 13(vr7)
003f94  0be12110  add.f.rn r2, r3, r2
003f98  9f010ff2  addli r3, r30, -1792
003f9c  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
003fa0  9f018ff1  addli r3, r30, -1856
003fa4  06700100  vfp162float_h.rn vr0, vr2
003fa8  06710400  vfp162float_h.rn vr2, vr8
003fac  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
003fb0  fa91e340  vextracti.f r3, 14(vr7)
003fb4  06f00200  vfp162float_h.rn vr0, vr5
003fb8  0be12110  add.f.rn r2, r3, r2
003fbc  fa91f340  vextracti.f r3, 15(vr7)
003fc0  86330200  vfp162float_l.rn vr7, vr4
003fc4  06b20200  vfp162float_l.rn vr4, vr5
003fc8  86320300  vfp162float_l.rn vr5, vr6
003fcc  06330400  vfp162float_l.rn vr6, vr8
003fd0  42140202  vload_mask16.mz vr8{mr1}, 0(r4)
003fd4  12148002  vadd.f.mz.rn vr8{mr1}, zero, vr8
003fd8  46108202  vstore_mask16.mz vr8{mr1}, 0(r4)
003fdc  1f028ff2  addli r4, r30, -1728
003fe0  92137002  vadd.f.mz.rn vr7{mr1}, zero, vr7
003fe4  42140202  vload_mask16.mz vr8{mr1}, 0(r4)
003fe8  12148002  vadd.f.mz.rn vr8{mr1}, zero, vr8
003fec  46108202  vstore_mask16.mz vr8{mr1}, 0(r4)
003ff0  1f020ff2  addli r4, r30, -1792
003ff4  42140202  vload_mask16.mz vr8{mr1}, 0(r4)
003ff8  0be12110  add.f.rn r2, r3, r2
003ffc  e341cfce  loadli.w r3,  -6300(r30)
004000  12148002  vadd.f.mz.rn vr8{mr1}, zero, vr8
004004  46108202  vstore_mask16.mz vr8{mr1}, 0(r4)
004008  1f028ff1  addli r4, r30, -1856
00400c  42140202  vload_mask16.mz vr8{mr1}, 0(r4)
004010  12148002  vadd.f.mz.rn vr8{mr1}, zero, vr8
004014  46108202  vstore_mask16.mz vr8{mr1}, 0(r4)
004018  1f020ff1  addli r4, r30, -1920
00401c  1214b002  vadd.f.mz.rn vr8{mr1}, zero, vr11
004020  92151002  vadd.f.mz.rn vr11{mr1}, zero, vr1
004024  86300500  vfp162float_l.rn vr1, vr10
004028  46108202  vstore_mask16.mz vr8{mr1}, 0(r4)
00402c  1f028ff0  addli r4, r30, -1984
004030  12149002  vadd.f.mz.rn vr8{mr1}, zero, vr9
004034  92140002  vadd.f.mz.rn vr9{mr1}, zero, vr0
004038  12102002  vadd.f.mz.rn vr0{mr1}, zero, vr2
00403c  06710500  vfp162float_h.rn vr2, vr10
004040  73e02100  stores.w r2, 0(r3)
004044  92101002  vadd.f.mz.rn vr1{mr1}, zero, vr1
004048  12112002  vadd.f.mz.rn vr2{mr1}, zero, vr2
00404c  46108202  vstore_mask16.mz vr8{mr1}, 0(r4)
004050  1f020ff0  addli r4, r30, -2048
004054  12144002  vadd.f.mz.rn vr8{mr1}, zero, vr4
004058  12126002  vadd.f.mz.rn vr4{mr1}, zero, vr6
00405c  46107202  vstore_mask16.mz vr7{mr1}, 0(r4)
004060  92133002  vadd.f.mz.rn vr7{mr1}, zero, vr3
004064  92115002  vadd.f.mz.rn vr3{mr1}, zero, vr5
004068  00a00300  mfence { lm, sm, gm }
00406c  80210304  csr_set csr3, r6
004070  00d00100  sync_group
004074  3b940500  bneq r11, zero, 260
004078  6f410d00  loads.w r2, 0(r26)
00407c  ef414d00  loads.w r3, 4(r26)
004080  6f428d00  loads.w r4, 8(r26)
004084  0b613110  add.f.rn r2, r2, r3
004088  ef41cd00  loads.w r3, 12(r26)
00408c  0b614110  add.f.rn r2, r2, r4
004090  6f420d01  loads.w r4, 16(r26)
004094  0b613110  add.f.rn r2, r2, r3
004098  ef414d01  loads.w r3, 20(r26)
00409c  0b614110  add.f.rn r2, r2, r4
0040a0  6f428d01  loads.w r4, 24(r26)
0040a4  0b613110  add.f.rn r2, r2, r3
0040a8  ef41cd01  loads.w r3, 28(r26)
0040ac  0b614110  add.f.rn r2, r2, r4
0040b0  6f420d02  loads.w r4, 32(r26)
0040b4  0b613110  add.f.rn r2, r2, r3
0040b8  ef414d02  loads.w r3, 36(r26)
0040bc  0b614110  add.f.rn r2, r2, r4
0040c0  6f428d02  loads.w r4, 40(r26)
0040c4  0b613110  add.f.rn r2, r2, r3
0040c8  ef41cd02  loads.w r3, 44(r26)
0040cc  0b614110  add.f.rn r2, r2, r4
0040d0  6f420d03  loads.w r4, 48(r26)
0040d4  0b613110  add.f.rn r2, r2, r3
0040d8  ef414d03  loads.w r3, 52(r26)
0040dc  0b614110  add.f.rn r2, r2, r4
0040e0  6f428d03  loads.w r4, 56(r26)
0040e4  0b613110  add.f.rn r2, r2, r3
0040e8  ef41cd03  loads.w r3, 60(r26)
0040ec  0b614110  add.f.rn r2, r2, r4
0040f0  6f420d04  loads.w r4, 64(r26)
0040f4  0b613110  add.f.rn r2, r2, r3
0040f8  ef414d04  loads.w r3, 68(r26)
0040fc  0b614110  add.f.rn r2, r2, r4
004100  6f428d04  loads.w r4, 72(r26)
004104  0b613110  add.f.rn r2, r2, r3
004108  ef41cd04  loads.w r3, 76(r26)
00410c  0b614110  add.f.rn r2, r2, r4
004110  6f420d05  loads.w r4, 80(r26)
004114  0b613110  add.f.rn r2, r2, r3
004118  ef414d05  loads.w r3, 84(r26)
00411c  0b614110  add.f.rn r2, r2, r4
004120  6f428d05  loads.w r4, 88(r26)
004124  0b613110  add.f.rn r2, r2, r3
004128  ef41cd05  loads.w r3, 92(r26)
00412c  0b614110  add.f.rn r2, r2, r4
004130  6f420d06  loads.w r4, 96(r26)
004134  0b613110  add.f.rn r2, r2, r3
004138  ef414d06  loads.w r3, 100(r26)
00413c  0b614110  add.f.rn r2, r2, r4
004140  6f428d06  loads.w r4, 104(r26)
004144  0b613110  add.f.rn r2, r2, r3
004148  ef41cd06  loads.w r3, 108(r26)
00414c  0b614110  add.f.rn r2, r2, r4
004150  6f420d07  loads.w r4, 112(r26)
004154  0b613110  add.f.rn r2, r2, r3
004158  ef414d07  loads.w r3, 116(r26)
00415c  0b614110  add.f.rn r2, r2, r4
004160  6f428d07  loads.w r4, 120(r26)
004164  0b613110  add.f.rn r2, r2, r3
004168  ef41cd07  loads.w r3, 124(r26)
00416c  0b614110  add.f.rn r2, r2, r4
004170  0b613110  add.f.rn r2, r2, r3
004174  73602d00  stores.w r2, 0(r26)
004178  1f010ff3  addli r2, r30, -1664
00417c  00a00300  mfence { lm, sm, gm }
004180  80210304  csr_set csr3, r6
004184  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
004188  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
00418c  1f018ff2  addli r2, r30, -1728
004190  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
004194  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
004198  1f010ff2  addli r2, r30, -1792
00419c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0041a0  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
0041a4  1f018ff1  addli r2, r30, -1856
0041a8  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0041ac  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
0041b0  1f010ff1  addli r2, r30, -1920
0041b4  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0041b8  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
0041bc  1f018ff0  addli r2, r30, -1984
0041c0  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0041c4  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
0041c8  1f010ff0  addli r2, r30, -2048
0041cc  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0041d0  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
0041d4  00d00100  sync_group
0041d8  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0041dc  96907002  vadd.f.mz.rn vr1{mr1}, vr1, vr7
0041e0  96908002  vadd.f.mz.rn vr1{mr1}, vr1, vr8
0041e4  96909002  vadd.f.mz.rn vr1{mr1}, vr1, vr9
0041e8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0041ec  9690b002  vadd.f.mz.rn vr1{mr1}, vr1, vr11
0041f0  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0041f4  16900002  vadd.f.mz.rn vr0{mr1}, vr1, vr0
0041f8  7a110040  vextracti.f r2, 0(vr0)
0041fc  fa111040  vextracti.f r3, 1(vr0)
004200  7a12f040  vextracti.f r4, 15(vr0)
004204  0b613110  add.f.rn r2, r2, r3
004208  fa112040  vextracti.f r3, 2(vr0)
00420c  0be12110  add.f.rn r2, r3, r2
004210  fa113040  vextracti.f r3, 3(vr0)
004214  0be12110  add.f.rn r2, r3, r2
004218  fa114040  vextracti.f r3, 4(vr0)
00421c  0be12110  add.f.rn r2, r3, r2
004220  fa115040  vextracti.f r3, 5(vr0)
004224  0be12110  add.f.rn r2, r3, r2
004228  fa116040  vextracti.f r3, 6(vr0)
00422c  0be12110  add.f.rn r2, r3, r2
004230  fa117040  vextracti.f r3, 7(vr0)
004234  0be12110  add.f.rn r2, r3, r2
004238  fa118040  vextracti.f r3, 8(vr0)
00423c  0be12110  add.f.rn r2, r3, r2
004240  fa119040  vextracti.f r3, 9(vr0)
004244  0be12110  add.f.rn r2, r3, r2
004248  fa11a040  vextracti.f r3, 10(vr0)
00424c  0be12110  add.f.rn r2, r3, r2
004250  fa11b040  vextracti.f r3, 11(vr0)
004254  0be12110  add.f.rn r2, r3, r2
004258  fa11c040  vextracti.f r3, 12(vr0)
00425c  0be12110  add.f.rn r2, r3, r2
004260  fa11d040  vextracti.f r3, 13(vr0)
004264  0be12110  add.f.rn r2, r3, r2
004268  fa11e040  vextracti.f r3, 14(vr0)
00426c  8be12110  add.f.rn r3, r3, r2
004270  6f410d00  loads.w r2, 0(r26)
004274  8b613210  add.f.rn r3, r4, r3
004278  6302cfce  loadli.w r4,  -6304(r30)
00427c  73603200  stores.w r3, 0(r4)
004280  00a00300  mfence { lm, sm, gm }
004284  80210304  csr_set csr3, r6
004288  00d00100  sync_group
00428c  3b940500  bneq r11, zero, 260
004290  efc10b00  loads.w r3, 0(r23)
004294  6fc24b00  loads.w r4, 4(r23)
004298  efc28b00  loads.w r5, 8(r23)
00429c  8be14110  add.f.rn r3, r3, r4
0042a0  6fc2cb00  loads.w r4, 12(r23)
0042a4  8be15110  add.f.rn r3, r3, r5
0042a8  efc20b01  loads.w r5, 16(r23)
0042ac  8be14110  add.f.rn r3, r3, r4
0042b0  6fc24b01  loads.w r4, 20(r23)
0042b4  8be15110  add.f.rn r3, r3, r5
0042b8  efc28b01  loads.w r5, 24(r23)
0042bc  8be14110  add.f.rn r3, r3, r4
0042c0  6fc2cb01  loads.w r4, 28(r23)
0042c4  8be15110  add.f.rn r3, r3, r5
0042c8  efc20b02  loads.w r5, 32(r23)
0042cc  8be14110  add.f.rn r3, r3, r4
0042d0  6fc24b02  loads.w r4, 36(r23)
0042d4  8be15110  add.f.rn r3, r3, r5
0042d8  efc28b02  loads.w r5, 40(r23)
0042dc  8be14110  add.f.rn r3, r3, r4
0042e0  6fc2cb02  loads.w r4, 44(r23)
0042e4  8be15110  add.f.rn r3, r3, r5
0042e8  efc20b03  loads.w r5, 48(r23)
0042ec  8be14110  add.f.rn r3, r3, r4
0042f0  6fc24b03  loads.w r4, 52(r23)
0042f4  8be15110  add.f.rn r3, r3, r5
0042f8  efc28b03  loads.w r5, 56(r23)
0042fc  8be14110  add.f.rn r3, r3, r4
004300  6fc2cb03  loads.w r4, 60(r23)
004304  8be15110  add.f.rn r3, r3, r5
004308  efc20b04  loads.w r5, 64(r23)
00430c  8be14110  add.f.rn r3, r3, r4
004310  6fc24b04  loads.w r4, 68(r23)
004314  8be15110  add.f.rn r3, r3, r5
004318  efc28b04  loads.w r5, 72(r23)
00431c  8be14110  add.f.rn r3, r3, r4
004320  6fc2cb04  loads.w r4, 76(r23)
004324  8be15110  add.f.rn r3, r3, r5
004328  efc20b05  loads.w r5, 80(r23)
00432c  8be14110  add.f.rn r3, r3, r4
004330  6fc24b05  loads.w r4, 84(r23)
004334  8be15110  add.f.rn r3, r3, r5
004338  efc28b05  loads.w r5, 88(r23)
00433c  8be14110  add.f.rn r3, r3, r4
004340  6fc2cb05  loads.w r4, 92(r23)
004344  8be15110  add.f.rn r3, r3, r5
004348  efc20b06  loads.w r5, 96(r23)
00434c  8be14110  add.f.rn r3, r3, r4
004350  6fc24b06  loads.w r4, 100(r23)
004354  8be15110  add.f.rn r3, r3, r5
004358  efc28b06  loads.w r5, 104(r23)
00435c  8be14110  add.f.rn r3, r3, r4
004360  6fc2cb06  loads.w r4, 108(r23)
004364  8be15110  add.f.rn r3, r3, r5
004368  efc20b07  loads.w r5, 112(r23)
00436c  8be14110  add.f.rn r3, r3, r4
004370  6fc24b07  loads.w r4, 116(r23)
004374  8be15110  add.f.rn r3, r3, r5
004378  efc28b07  loads.w r5, 120(r23)
00437c  8be14110  add.f.rn r3, r3, r4
004380  6fc2cb07  loads.w r4, 124(r23)
004384  8be15110  add.f.rn r3, r3, r5
004388  8be14110  add.f.rn r3, r3, r4
00438c  73e03b00  stores.w r3, 0(r23)
004390  00a00300  mfence { lm, sm, gm }
004394  80210304  csr_set csr3, r6
004398  00d00100  sync_group
00439c  efc10b00  loads.w r3, 0(r23)
0043a0  2b02803a  lui r4, 239616
0043a4  8b654120  mul.f.rn r11, r2, r4
0043a8  0be14120  mul.f.rn r2, r3, r4
0043ac  8be1b520  mul.f.rn r3, r11, r11
0043b0  0b613118  sub.f.rn r2, r2, r3
0043b4  e3014f00  loadli.w r3,  32(r30)
0043b8  0be12110  add.f.rn r2, r3, r2
0043bc  ab01803f  lui r3, 260096
0043c0  0f010108  sqrt.f.rn r2, r2
0043c4  8f862118  div.f.rn r13, r3, r2
0043c8  6341afce  loadli.w r2,  -6316(r30)
0043cc  b70a01de  beq r2, zero, -16736
0043d0  b3900028  sext_int2long r[2:3], r1
0043d4  1f120000  addli r4, zero, 1
0043d8  b3a10500  float2hfloat.rn r3, r11
0043dc  1f240000  addli r8, zero, 2
0043e0  1f038ff7  addli r6, r30, -1088
0043e4  97b04002  sll.d r[2:3], r[2:3], r4
0043e8  6b528f02  load.d r[5:6], 40(r30)
0043ec  73103fbc  store.h r3, -1088(r30)
0043f0  ab0100f0  lui r3, 983040
0043f4  00a00000  mfence { lm }
0043f8  97113400  or r3, r8, r3
0043fc  0b221210  add.ul r[5:6], r[5:6], r[2:3]
004400  ff316200  s_lm2gm r3, r6, 0(r[5:6])
004404  00a00000  mfence { lm }
004408  eb510f03  load.d r[4:5], 48(r30)
00440c  8ba01110  add.ul r[2:3], r[4:5], r[2:3]
004410  b3a10600  float2hfloat.rn r3, r13
004414  2b0200f0  lui r4, 983040
004418  73103fbc  store.h r3, -1088(r30)
00441c  97114400  or r3, r8, r4
004420  00a00000  mfence { lm }
004424  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
004428  00a00000  mfence { lm }
00442c  5bc8f7ff  j -16832
004430  00100000  exit
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
