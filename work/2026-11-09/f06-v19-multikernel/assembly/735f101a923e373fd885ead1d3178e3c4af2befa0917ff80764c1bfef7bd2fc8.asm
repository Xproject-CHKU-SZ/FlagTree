; SHA-256 735f101a923e373fd885ead1d3178e3c4af2befa0917ff80764c1bfef7bd2fc8
; P800 Cluster · XTDK LLVM 19 · 1794 / 1794 words decoded
; bound names: _flat_row_reduce
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
000078  9f496000  addli r19, zero, 52
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
0000ac  d71b0000  jal 220
0000b0  fe8007e0  vmmov mr1, r15
0000b4  fe900720  vmmovh mr1, r15
0000b8  1f8a8eff  addli r20, sp, -64
0000bc  4a100002  vloads_mask16.mz vr0{mr1}, 0(zero)
0000c0  46000a02  vstore.mz vr0{mr1}, 0(r20)
0000c4  00a00100  mfence { lm, sm }
0000c8  00d00100  sync_group
0000cc  97a01000  xor r1, r1, r1
0000d0  1f8f0e00  addli r30, sp, 0
0000d4  d71b0000  jal 220
0000d8  00400000  trap
0000dc  9f8e0ef4  addli sp, sp, -1536
0000e0  2b010000  lui r2, 0
0000e4  80300002  core_id r1
0000e8  1f8f8e0b  addli r30, sp, 1472
0000ec  abf20000  lui r5, 15
0000f0  00560002  load_param_i r12, 0
0000f4  9bb12000  slli r3, r1, 2
0000f8  1f010100  addli r2, r2, 0
0000fc  e3435f00  loadli.w r7,  44(r30)
000100  63025f00  loadli.w r4,  40(r30)
000104  63036f00  loadli.w r6,  48(r30)
000108  9b92f2ff  ori r5, r5, 4095
00010c  0b942110  add.s r8, r3, r2
000110  0b924320  mul.s r4, r7, r4
000114  9f042420  addli r9, r8, 4112
000118  0b126220  mul.s r4, r4, r6
00011c  e7029ff6  storeli.w r9, -1240(r30)
000120  73e00400  stores.w zero, 0(r9)
000124  00a00300  mfence { lm, sm, gm }
000128  80a10204  csr_set csr3, r5
00012c  00d00100  sync_group
000130  e7428ff6  storeli.w r8, -1236(r30)
000134  73600400  stores.w zero, 0(r8)
000138  00a00300  mfence { lm, sm, gm }
00013c  67025ff6  storeli.w r5, -1248(r30)
000140  80a10204  csr_set csr3, r5
000144  00d00100  sync_group
000148  67424ff6  storeli.w r4, -1244(r30)
00014c  4b0fc20a  ble.s r4, r12, 6080
000150  1f022000  addli r4, zero, 16
000154  00d50002  load_param_i r10, 1
000158  9f170000  addli r15, zero, 1
00015c  eb568f00  load.d r[14:15], 8(r30)
000160  eb520f02  load.d r[6:7], 32(r30)
000164  6b548f01  load.d r[9:10], 24(r30)
000168  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
00016c  0b924030  div.s r4, r1, r4
000170  e741aff6  storeli.w r10, -1252(r30)
000174  9b334200  slli r7, r4, 4
000178  1b32a200  slli r4, r4, 10
00017c  8b937018  sub.s r7, r1, r7
000180  9b80f000  andi r1, r1, 15
000184  e74f4ff4  storeli.w r4, -1284(r30)
000188  9bb36300  slli r7, r7, 6
00018c  e70f1ff4  storeli.w r1, -1288(r30)
000190  33950328  sext_int2long r[11:12], r7
000194  e7017ff6  storeli.w r7, -1256(r30)
000198  abf3ffff  lui r7, 1048575
00019c  9b9303fc  ori r7, r7, 4032
0001a0  1735f502  sll.d r[11:12], r[11:12], r15
0001a4  97817100  and r3, r3, r7
0001a8  8ba6a610  add.ul r[14:15], r[14:15], r[11:12]
0001ac  0b24a410  add.ul r[9:10], r[9:10], r[11:12]
0001b0  8ba2a210  add.ul r[6:7], r[6:7], r[11:12]
0001b4  9f030001  addli r7, zero, 128
0001b8  0b912110  add.s r2, r3, r2
0001bc  7338dfb0  store.d r[14:15], -1264(r30)
0001c0  9f060ffd  addli r13, r30, -384
0001c4  1f070ffe  addli r14, r30, -256
0001c8  73348fb0  store.d r[9:10], -1272(r30)
0001cc  73305fb0  store.d r[6:7], -1280(r30)
0001d0  9f002120  addli r1, r2, 4112
0001d4  67432ff6  storeli.w r2, -1228(r30)
0001d8  67031ff6  storeli.w r1, -1232(r30)
0001dc  ab10833a  lui r1, 239665
0001e0  9b90f026  ori r1, r1, 623
0001e4  e7471ff4  storeli.w r1, -1412(r30)
0001e8  9f000ff5  addli r1, r30, -1408
0001ec  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
0001f0  dbc90100  j 3660
0001f4  00a00300  mfence { lm, sm, gm }
0001f8  80210204  csr_set csr3, r4
0001fc  00d00100  sync_group
000200  e3006ff6  loadli.w r1,  -1232(r30)
000204  0be13921  mul.f.rn r2, r19, r19
000208  9f010000  addli r3, zero, 0
00020c  efc00000  loads.w r1, 0(r1)
000210  8be07020  mul.f.rn r1, r1, r7
000214  0be12018  sub.f.rn r2, r1, r2
000218  d7230300  jal 6428
00021c  e340fff4  loadli.w r1,  -1412(r30)
000220  ab02803f  lui r5, 260096
000224  ab0100f0  lui r3, 983040
000228  2b0200f0  lui r4, 983040
00022c  42108f83  vload_mask16.mz vr0{mr1}, 1216(r30)
000230  c2100fa2  vload_mask16.mz vr1{mr1}, 1280(r30)
000234  42118fa2  vload_mask16.mz vr2{mr1}, 1344(r30)
000238  1f030ffe  addli r6, r30, -256
00023c  8b601110  add.f.rn r1, r2, r1
000240  17a14901  xor r2, r19, r20
000244  12122102  vadd.f.mz.rn vr4{mr1}, r2, vr2
000248  42110fa3  vload_mask16.mz vr2{mr1}, 1408(r30)
00024c  12100102  vadd.f.mz.rn vr0{mr1}, r2, vr0
000250  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
000254  92122102  vadd.f.mz.rn vr5{mr1}, r2, vr2
000258  8f800008  sqrt.f.rn r1, r1
00025c  8f801218  div.f.rn r1, r5, r1
000260  9f020001  addli r5, zero, 128
000264  8a910002  vmul.f.mz.rn vr3{mr1}, r1, vr0
000268  0a905002  vmul.f.mz.rn vr0{mr1}, r1, vr5
00026c  46180fa2  vstore_mask16.mz vr0{mr1}, 1408(r30)
000270  0a911002  vmul.f.mz.rn vr2{mr1}, r1, vr1
000274  8a904002  vmul.f.mz.rn vr1{mr1}, r1, vr4
000278  17913200  or r2, r5, r3
00027c  97914200  or r3, r5, r4
000280  6b528fb0  load.d r[5:6], -1272(r30)
000284  7f216200  l_gm2lm r2, r6, 0(r[5:6])
000288  6b520fb0  load.d r[5:6], -1280(r30)
00028c  1f010fff  addli r2, r30, -128
000290  ff212200  l_gm2lm r3, r2, 0(r[5:6])
000294  00a00000  mfence { lm }
000298  6b312ff0  load.hu r2, -254(r30)
00029c  eb300ff0  load.hu r1, -256(r30)
0002a0  e7452ff6  storeli.w r2, -1188(r30)
0002a4  6b314ff0  load.hu r2, -252(r30)
0002a8  b3910020  hfloat2float.rn r3, r1
0002ac  9f000ff5  addli r1, r30, -1408
0002b0  67462ff6  storeli.w r2, -1180(r30)
0002b4  6b316ff0  load.hu r2, -250(r30)
0002b8  e7462ff6  storeli.w r2, -1172(r30)
0002bc  6b318ff0  load.hu r2, -248(r30)
0002c0  67472ff6  storeli.w r2, -1164(r30)
0002c4  6b31aff0  load.hu r2, -246(r30)
0002c8  e7472ff6  storeli.w r2, -1156(r30)
0002cc  6b31cff0  load.hu r2, -244(r30)
0002d0  67482ff6  storeli.w r2, -1148(r30)
0002d4  6b31eff0  load.hu r2, -242(r30)
0002d8  e7482ff6  storeli.w r2, -1140(r30)
0002dc  6b310ff1  load.hu r2, -240(r30)
0002e0  67492ff6  storeli.w r2, -1132(r30)
0002e4  6b312ff1  load.hu r2, -238(r30)
0002e8  e7492ff6  storeli.w r2, -1124(r30)
0002ec  6b314ff1  load.hu r2, -236(r30)
0002f0  674a2ff6  storeli.w r2, -1116(r30)
0002f4  6b316ff1  load.hu r2, -234(r30)
0002f8  e74a2ff6  storeli.w r2, -1108(r30)
0002fc  6b318ff1  load.hu r2, -232(r30)
000300  674b2ff6  storeli.w r2, -1100(r30)
000304  6b31aff1  load.hu r2, -230(r30)
000308  e74b2ff6  storeli.w r2, -1092(r30)
00030c  6b31cff1  load.hu r2, -228(r30)
000310  e70c2ff6  storeli.w r2, -1080(r30)
000314  6b31eff1  load.hu r2, -226(r30)
000318  670d2ff6  storeli.w r2, -1072(r30)
00031c  6b310ff2  load.hu r2, -224(r30)
000320  e74c2ff6  storeli.w r2, -1076(r30)
000324  6b312ff2  load.hu r2, -222(r30)
000328  e74d2ff6  storeli.w r2, -1060(r30)
00032c  6b314ff2  load.hu r2, -220(r30)
000330  674e2ff6  storeli.w r2, -1052(r30)
000334  6b316ff2  load.hu r2, -218(r30)
000338  e74e2ff6  storeli.w r2, -1044(r30)
00033c  6b318ff2  load.hu r2, -216(r30)
000340  674f2ff6  storeli.w r2, -1036(r30)
000344  6b31aff2  load.hu r2, -214(r30)
000348  e74f2ff6  storeli.w r2, -1028(r30)
00034c  6b31cff2  load.hu r2, -212(r30)
000350  67402ff8  storeli.w r2, -1020(r30)
000354  6b31eff2  load.hu r2, -210(r30)
000358  e7402ff8  storeli.w r2, -1012(r30)
00035c  6b310ff3  load.hu r2, -208(r30)
000360  67412ff8  storeli.w r2, -1004(r30)
000364  6b312ff3  load.hu r2, -206(r30)
000368  e7412ff8  storeli.w r2, -996(r30)
00036c  6b314ff3  load.hu r2, -204(r30)
000370  67422ff8  storeli.w r2, -988(r30)
000374  6b316ff3  load.hu r2, -202(r30)
000378  e7422ff8  storeli.w r2, -980(r30)
00037c  6b318ff3  load.hu r2, -200(r30)
000380  67432ff8  storeli.w r2, -972(r30)
000384  6b31aff3  load.hu r2, -198(r30)
000388  e7432ff8  storeli.w r2, -964(r30)
00038c  6b31cff3  load.hu r2, -196(r30)
000390  67442ff8  storeli.w r2, -956(r30)
000394  6b31eff3  load.hu r2, -194(r30)
000398  e7442ff8  storeli.w r2, -948(r30)
00039c  6b310ff4  load.hu r2, -192(r30)
0003a0  e7042ff8  storeli.w r2, -952(r30)
0003a4  6b312ff4  load.hu r2, -190(r30)
0003a8  67052ff8  storeli.w r2, -944(r30)
0003ac  6b314ff4  load.hu r2, -188(r30)
0003b0  67452ff8  storeli.w r2, -940(r30)
0003b4  6b316ff4  load.hu r2, -186(r30)
0003b8  e7052ff8  storeli.w r2, -936(r30)
0003bc  6b318ff4  load.hu r2, -184(r30)
0003c0  e7452ff8  storeli.w r2, -932(r30)
0003c4  6b31aff4  load.hu r2, -182(r30)
0003c8  67062ff8  storeli.w r2, -928(r30)
0003cc  6b31cff4  load.hu r2, -180(r30)
0003d0  67462ff8  storeli.w r2, -924(r30)
0003d4  6b31eff4  load.hu r2, -178(r30)
0003d8  e7062ff8  storeli.w r2, -920(r30)
0003dc  6b310ff5  load.hu r2, -176(r30)
0003e0  e7462ff8  storeli.w r2, -916(r30)
0003e4  6b312ff5  load.hu r2, -174(r30)
0003e8  67072ff8  storeli.w r2, -912(r30)
0003ec  6b314ff5  load.hu r2, -172(r30)
0003f0  67472ff8  storeli.w r2, -908(r30)
0003f4  6b316ff5  load.hu r2, -170(r30)
0003f8  e7072ff8  storeli.w r2, -904(r30)
0003fc  6b318ff5  load.hu r2, -168(r30)
000400  e7472ff8  storeli.w r2, -900(r30)
000404  6b31aff5  load.hu r2, -166(r30)
000408  67082ff8  storeli.w r2, -896(r30)
00040c  6b31cff5  load.hu r2, -164(r30)
000410  67482ff8  storeli.w r2, -892(r30)
000414  6b31eff5  load.hu r2, -162(r30)
000418  e7482ff8  storeli.w r2, -884(r30)
00041c  6b310ff6  load.hu r2, -160(r30)
000420  e7082ff8  storeli.w r2, -888(r30)
000424  6b312ff6  load.hu r2, -158(r30)
000428  67092ff8  storeli.w r2, -880(r30)
00042c  6b314ff6  load.hu r2, -156(r30)
000430  67492ff8  storeli.w r2, -876(r30)
000434  6b316ff6  load.hu r2, -154(r30)
000438  e7092ff8  storeli.w r2, -872(r30)
00043c  6b318ff6  load.hu r2, -152(r30)
000440  e7492ff8  storeli.w r2, -868(r30)
000444  6b31aff6  load.hu r2, -150(r30)
000448  670a2ff8  storeli.w r2, -864(r30)
00044c  6b31cff6  load.hu r2, -148(r30)
000450  674a2ff8  storeli.w r2, -860(r30)
000454  6b31eff6  load.hu r2, -146(r30)
000458  e70a2ff8  storeli.w r2, -856(r30)
00045c  6b310ff7  load.hu r2, -144(r30)
000460  e74a2ff8  storeli.w r2, -852(r30)
000464  6b312ff7  load.hu r2, -142(r30)
000468  670b2ff8  storeli.w r2, -848(r30)
00046c  6b314ff7  load.hu r2, -140(r30)
000470  674b2ff8  storeli.w r2, -844(r30)
000474  6b316ff7  load.hu r2, -138(r30)
000478  e70b2ff8  storeli.w r2, -840(r30)
00047c  6b318ff7  load.hu r2, -136(r30)
000480  e74b2ff8  storeli.w r2, -836(r30)
000484  6b31aff7  load.hu r2, -134(r30)
000488  00a00000  mfence { lm }
00048c  670c2ff8  storeli.w r2, -832(r30)
000490  6b31cff7  load.hu r2, -132(r30)
000494  67002ffa  storeli.w r2, -768(r30)
000498  6b31eff7  load.hu r2, -130(r30)
00049c  67042ffa  storeli.w r2, -704(r30)
0004a0  00a00000  mfence { lm }
0004a4  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0004a8  eb304ffb  load.hu r1, -76(r30)
0004ac  6b310ff8  load.hu r2, -128(r30)
0004b0  6b322ff8  load.hu r4, -126(r30)
0004b4  eb324ff8  load.hu r5, -124(r30)
0004b8  6b336ff8  load.hu r6, -122(r30)
0004bc  eb338ff8  load.hu r7, -120(r30)
0004c0  6b34aff8  load.hu r8, -118(r30)
0004c4  eb34cff8  load.hu r9, -116(r30)
0004c8  6b35eff8  load.hu r10, -114(r30)
0004cc  eb350ff9  load.hu r11, -112(r30)
0004d0  6b362ff9  load.hu r12, -110(r30)
0004d4  eb364ff9  load.hu r13, -108(r30)
0004d8  6b376ff9  load.hu r14, -106(r30)
0004dc  eb378ff9  load.hu r15, -104(r30)
0004e0  6b38aff9  load.hu r16, -102(r30)
0004e4  eb38cff9  load.hu r17, -100(r30)
0004e8  eb39eff9  load.hu r19, -98(r30)
0004ec  6b390ffa  load.hu r18, -96(r30)
0004f0  6b3a2ffa  load.hu r20, -94(r30)
0004f4  eb3a4ffa  load.hu r21, -92(r30)
0004f8  6b3b6ffa  load.hu r22, -90(r30)
0004fc  eb3b8ffa  load.hu r23, -88(r30)
000500  6b3caffa  load.hu r24, -86(r30)
000504  eb3ccffa  load.hu r25, -84(r30)
000508  6b3deffa  load.hu r26, -82(r30)
00050c  eb3d0ffb  load.hu r27, -80(r30)
000510  6b3e2ffb  load.hu r28, -78(r30)
000514  e7031ff6  storeli.w r1, -1224(r30)
000518  eb306ffb  load.hu r1, -74(r30)
00051c  33110120  hfloat2float.rn r2, r2
000520  e7431ff6  storeli.w r1, -1220(r30)
000524  eb308ffb  load.hu r1, -72(r30)
000528  12320002  vadd.s.mz vr4{mr1}, zero, vr0
00052c  67041ff6  storeli.w r1, -1216(r30)
000530  eb30affb  load.hu r1, -70(r30)
000534  67441ff6  storeli.w r1, -1212(r30)
000538  eb30cffb  load.hu r1, -68(r30)
00053c  e7041ff6  storeli.w r1, -1208(r30)
000540  eb30effb  load.hu r1, -66(r30)
000544  67051ff6  storeli.w r1, -1200(r30)
000548  eb300ffc  load.hu r1, -64(r30)
00054c  e7441ff6  storeli.w r1, -1204(r30)
000550  eb302ffc  load.hu r1, -62(r30)
000554  67451ff6  storeli.w r1, -1196(r30)
000558  eb304ffc  load.hu r1, -60(r30)
00055c  e7051ff6  storeli.w r1, -1192(r30)
000560  eb306ffc  load.hu r1, -58(r30)
000564  67061ff6  storeli.w r1, -1184(r30)
000568  eb308ffc  load.hu r1, -56(r30)
00056c  e7061ff6  storeli.w r1, -1176(r30)
000570  eb30affc  load.hu r1, -54(r30)
000574  67071ff6  storeli.w r1, -1168(r30)
000578  eb30cffc  load.hu r1, -52(r30)
00057c  e7071ff6  storeli.w r1, -1160(r30)
000580  eb30effc  load.hu r1, -50(r30)
000584  67081ff6  storeli.w r1, -1152(r30)
000588  eb300ffd  load.hu r1, -48(r30)
00058c  e7081ff6  storeli.w r1, -1144(r30)
000590  eb302ffd  load.hu r1, -46(r30)
000594  67091ff6  storeli.w r1, -1136(r30)
000598  eb304ffd  load.hu r1, -44(r30)
00059c  e7091ff6  storeli.w r1, -1128(r30)
0005a0  eb306ffd  load.hu r1, -42(r30)
0005a4  670a1ff6  storeli.w r1, -1120(r30)
0005a8  eb308ffd  load.hu r1, -40(r30)
0005ac  e70a1ff6  storeli.w r1, -1112(r30)
0005b0  eb30affd  load.hu r1, -38(r30)
0005b4  670b1ff6  storeli.w r1, -1104(r30)
0005b8  eb30cffd  load.hu r1, -36(r30)
0005bc  e70b1ff6  storeli.w r1, -1096(r30)
0005c0  eb30effd  load.hu r1, -34(r30)
0005c4  674c1ff6  storeli.w r1, -1084(r30)
0005c8  eb300ffe  load.hu r1, -32(r30)
0005cc  670c1ff6  storeli.w r1, -1088(r30)
0005d0  eb302ffe  load.hu r1, -30(r30)
0005d4  674d1ff6  storeli.w r1, -1068(r30)
0005d8  eb304ffe  load.hu r1, -28(r30)
0005dc  e70d1ff6  storeli.w r1, -1064(r30)
0005e0  eb306ffe  load.hu r1, -26(r30)
0005e4  670e1ff6  storeli.w r1, -1056(r30)
0005e8  eb308ffe  load.hu r1, -24(r30)
0005ec  e70e1ff6  storeli.w r1, -1048(r30)
0005f0  eb30affe  load.hu r1, -22(r30)
0005f4  670f1ff6  storeli.w r1, -1040(r30)
0005f8  eb30cffe  load.hu r1, -20(r30)
0005fc  e70f1ff6  storeli.w r1, -1032(r30)
000600  eb30effe  load.hu r1, -18(r30)
000604  67001ff8  storeli.w r1, -1024(r30)
000608  eb300fff  load.hu r1, -16(r30)
00060c  e7001ff8  storeli.w r1, -1016(r30)
000610  eb302fff  load.hu r1, -14(r30)
000614  67011ff8  storeli.w r1, -1008(r30)
000618  eb304fff  load.hu r1, -12(r30)
00061c  e7011ff8  storeli.w r1, -1000(r30)
000620  eb306fff  load.hu r1, -10(r30)
000624  67021ff8  storeli.w r1, -992(r30)
000628  eb308fff  load.hu r1, -8(r30)
00062c  e7021ff8  storeli.w r1, -984(r30)
000630  eb30afff  load.hu r1, -6(r30)
000634  67031ff8  storeli.w r1, -976(r30)
000638  eb30cfff  load.hu r1, -4(r30)
00063c  e7031ff8  storeli.w r1, -968(r30)
000640  eb30efff  load.hu r1, -2(r30)
000644  67041ff8  storeli.w r1, -960(r30)
000648  6aa24130  vor.u.mh vr4{mr0}, r3, vr4
00064c  e340bff6  loadli.w r1,  -1188(r30)
000650  b3910020  hfloat2float.rn r3, r1
000654  9f200000  addli r1, zero, 2
000658  7e8000e0  vmmov mr0, r1
00065c  6aa24130  vor.u.mh vr4{mr0}, r3, vr4
000660  e340cff6  loadli.w r1,  -1180(r30)
000664  b3910020  hfloat2float.rn r3, r1
000668  9f400000  addli r1, zero, 4
00066c  fe8100e0  vmmov mr3, r1
000670  6aa24136  vor.u.mh vr4{mr3}, r3, vr4
000674  e340dff6  loadli.w r1,  -1172(r30)
000678  b3910020  hfloat2float.rn r3, r1
00067c  9f001000  addli r1, zero, 8
000680  7e8100e0  vmmov mr2, r1
000684  6aa24134  vor.u.mh vr4{mr2}, r3, vr4
000688  e340eff6  loadli.w r1,  -1164(r30)
00068c  b3910020  hfloat2float.rn r3, r1
000690  9f002000  addli r1, zero, 16
000694  fe8100e0  vmmov mr3, r1
000698  6aa24136  vor.u.mh vr4{mr3}, r3, vr4
00069c  e340fff6  loadli.w r1,  -1156(r30)
0006a0  b3910020  hfloat2float.rn r3, r1
0006a4  9f004000  addli r1, zero, 32
0006a8  7e8100e0  vmmov mr2, r1
0006ac  6aa24134  vor.u.mh vr4{mr2}, r3, vr4
0006b0  e3400ff7  loadli.w r1,  -1148(r30)
0006b4  b3910020  hfloat2float.rn r3, r1
0006b8  9f008000  addli r1, zero, 64
0006bc  fe8100e0  vmmov mr3, r1
0006c0  6aa24136  vor.u.mh vr4{mr3}, r3, vr4
0006c4  e3401ff7  loadli.w r1,  -1140(r30)
0006c8  b3910020  hfloat2float.rn r3, r1
0006cc  9f000001  addli r1, zero, 128
0006d0  7e8100e0  vmmov mr2, r1
0006d4  6aa24134  vor.u.mh vr4{mr2}, r3, vr4
0006d8  e3402ff7  loadli.w r1,  -1132(r30)
0006dc  b3910020  hfloat2float.rn r3, r1
0006e0  9f000002  addli r1, zero, 256
0006e4  fe8100e0  vmmov mr3, r1
0006e8  6aa24136  vor.u.mh vr4{mr3}, r3, vr4
0006ec  e3403ff7  loadli.w r1,  -1124(r30)
0006f0  b3910020  hfloat2float.rn r3, r1
0006f4  9f000004  addli r1, zero, 512
0006f8  7e8100e0  vmmov mr2, r1
0006fc  6aa24134  vor.u.mh vr4{mr2}, r3, vr4
000700  e3404ff7  loadli.w r1,  -1116(r30)
000704  b3910020  hfloat2float.rn r3, r1
000708  9f000008  addli r1, zero, 1024
00070c  fe8100e0  vmmov mr3, r1
000710  6aa24136  vor.u.mh vr4{mr3}, r3, vr4
000714  e3405ff7  loadli.w r1,  -1108(r30)
000718  b3910020  hfloat2float.rn r3, r1
00071c  9f000010  addli r1, zero, 2048
000720  7e8100e0  vmmov mr2, r1
000724  6aa24134  vor.u.mh vr4{mr2}, r3, vr4
000728  e3406ff7  loadli.w r1,  -1100(r30)
00072c  b3910020  hfloat2float.rn r3, r1
000730  9f000020  addli r1, zero, 4096
000734  fe8100e0  vmmov mr3, r1
000738  6aa24136  vor.u.mh vr4{mr3}, r3, vr4
00073c  e3407ff7  loadli.w r1,  -1092(r30)
000740  b3910020  hfloat2float.rn r3, r1
000744  9f000040  addli r1, zero, 8192
000748  2b800000  lui zero, 8
00074c  7e8100e0  vmmov mr2, r1
000750  6aa24134  vor.u.mh vr4{mr2}, r3, vr4
000754  e3009ff7  loadli.w r1,  -1080(r30)
000758  7e0100e0  vmmov mr2, zero
00075c  17200000  xor zero, zero, zero
000760  92320002  vadd.s.mz vr5{mr1}, zero, vr0
000764  b3910020  hfloat2float.rn r3, r1
000768  ab400000  lui r1, 4
00076c  fe8100e0  vmmov mr3, r1
000770  6aa24136  vor.u.mh vr4{mr3}, r3, vr4
000774  e300aff7  loadli.w r1,  -1072(r30)
000778  b3910020  hfloat2float.rn r3, r1
00077c  e3409ff7  loadli.w r1,  -1076(r30)
000780  6aa24134  vor.u.mh vr4{mr2}, r3, vr4
000784  9f110000  addli r3, zero, 1
000788  b3900020  hfloat2float.rn r1, r1
00078c  7e8001e0  vmmov mr0, r3
000790  9f210000  addli r3, zero, 2
000794  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000798  e340bff7  loadli.w r1,  -1060(r30)
00079c  7e8001e0  vmmov mr0, r3
0007a0  9f410000  addli r3, zero, 4
0007a4  b3900020  hfloat2float.rn r1, r1
0007a8  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0007ac  e340cff7  loadli.w r1,  -1052(r30)
0007b0  7e8001e0  vmmov mr0, r3
0007b4  9f011000  addli r3, zero, 8
0007b8  b3900020  hfloat2float.rn r1, r1
0007bc  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0007c0  e340dff7  loadli.w r1,  -1044(r30)
0007c4  7e8001e0  vmmov mr0, r3
0007c8  9f012000  addli r3, zero, 16
0007cc  b3900020  hfloat2float.rn r1, r1
0007d0  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0007d4  e340eff7  loadli.w r1,  -1036(r30)
0007d8  7e8001e0  vmmov mr0, r3
0007dc  9f014000  addli r3, zero, 32
0007e0  b3900020  hfloat2float.rn r1, r1
0007e4  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0007e8  e340fff7  loadli.w r1,  -1028(r30)
0007ec  7e8001e0  vmmov mr0, r3
0007f0  9f018000  addli r3, zero, 64
0007f4  b3900020  hfloat2float.rn r1, r1
0007f8  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0007fc  e3400ff8  loadli.w r1,  -1020(r30)
000800  7e8001e0  vmmov mr0, r3
000804  9f010001  addli r3, zero, 128
000808  b3900020  hfloat2float.rn r1, r1
00080c  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000810  e3401ff8  loadli.w r1,  -1012(r30)
000814  7e8001e0  vmmov mr0, r3
000818  9f010002  addli r3, zero, 256
00081c  fe8101e0  vmmov mr3, r3
000820  9f010004  addli r3, zero, 512
000824  b3900020  hfloat2float.rn r1, r1
000828  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
00082c  e3402ff8  loadli.w r1,  -1004(r30)
000830  7e8001e0  vmmov mr0, r3
000834  9f010008  addli r3, zero, 1024
000838  7e8101e0  vmmov mr2, r3
00083c  9f010010  addli r3, zero, 2048
000840  b3900020  hfloat2float.rn r1, r1
000844  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
000848  e3403ff8  loadli.w r1,  -996(r30)
00084c  b3900020  hfloat2float.rn r1, r1
000850  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000854  e3404ff8  loadli.w r1,  -988(r30)
000858  b3900020  hfloat2float.rn r1, r1
00085c  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
000860  e3405ff8  loadli.w r1,  -980(r30)
000864  7e8101e0  vmmov mr2, r3
000868  9f010020  addli r3, zero, 4096
00086c  b3900020  hfloat2float.rn r1, r1
000870  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
000874  e3406ff8  loadli.w r1,  -972(r30)
000878  7e8101e0  vmmov mr2, r3
00087c  9f010040  addli r3, zero, 8192
000880  2b800000  lui zero, 8
000884  b3900020  hfloat2float.rn r1, r1
000888  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
00088c  e3407ff8  loadli.w r1,  -964(r30)
000890  7e8101e0  vmmov mr2, r3
000894  ab410000  lui r3, 4
000898  b3900020  hfloat2float.rn r1, r1
00089c  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
0008a0  e3408ff8  loadli.w r1,  -956(r30)
0008a4  7e8101e0  vmmov mr2, r3
0008a8  b3900020  hfloat2float.rn r1, r1
0008ac  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
0008b0  e3409ff8  loadli.w r1,  -948(r30)
0008b4  7e0100e0  vmmov mr2, zero
0008b8  17200000  xor zero, zero, zero
0008bc  e3019ff8  loadli.w r3,  -952(r30)
0008c0  12330002  vadd.s.mz vr6{mr1}, zero, vr0
0008c4  b3900020  hfloat2float.rn r1, r1
0008c8  b3910120  hfloat2float.rn r3, r3
0008cc  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
0008d0  9f100000  addli r1, zero, 1
0008d4  7e8100e0  vmmov mr2, r1
0008d8  6aa36134  vor.u.mh vr6{mr2}, r3, vr6
0008dc  e300aff8  loadli.w r1,  -944(r30)
0008e0  9f210000  addli r3, zero, 2
0008e4  7e8101e0  vmmov mr2, r3
0008e8  9f410000  addli r3, zero, 4
0008ec  b3900020  hfloat2float.rn r1, r1
0008f0  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
0008f4  e340aff8  loadli.w r1,  -940(r30)
0008f8  7e8101e0  vmmov mr2, r3
0008fc  9f011000  addli r3, zero, 8
000900  b3900020  hfloat2float.rn r1, r1
000904  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
000908  e300bff8  loadli.w r1,  -936(r30)
00090c  7e8101e0  vmmov mr2, r3
000910  9f012000  addli r3, zero, 16
000914  b3900020  hfloat2float.rn r1, r1
000918  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
00091c  e340bff8  loadli.w r1,  -932(r30)
000920  7e8101e0  vmmov mr2, r3
000924  9f014000  addli r3, zero, 32
000928  b3900020  hfloat2float.rn r1, r1
00092c  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
000930  e300cff8  loadli.w r1,  -928(r30)
000934  7e8101e0  vmmov mr2, r3
000938  9f018000  addli r3, zero, 64
00093c  b3900020  hfloat2float.rn r1, r1
000940  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
000944  e340cff8  loadli.w r1,  -924(r30)
000948  7e8101e0  vmmov mr2, r3
00094c  9f010001  addli r3, zero, 128
000950  b3900020  hfloat2float.rn r1, r1
000954  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
000958  e300dff8  loadli.w r1,  -920(r30)
00095c  7e8101e0  vmmov mr2, r3
000960  9f010008  addli r3, zero, 1024
000964  b3900020  hfloat2float.rn r1, r1
000968  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
00096c  e340dff8  loadli.w r1,  -916(r30)
000970  7e8101e0  vmmov mr2, r3
000974  9f010010  addli r3, zero, 2048
000978  b3900020  hfloat2float.rn r1, r1
00097c  6aa36036  vor.u.mh vr6{mr3}, r1, vr6
000980  e300eff8  loadli.w r1,  -912(r30)
000984  b3900020  hfloat2float.rn r1, r1
000988  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
00098c  e340eff8  loadli.w r1,  -908(r30)
000990  7e0001c0  vmmov mr0, mr2
000994  b3900020  hfloat2float.rn r1, r1
000998  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
00099c  e300fff8  loadli.w r1,  -904(r30)
0009a0  7e8001e0  vmmov mr0, r3
0009a4  9f010020  addli r3, zero, 4096
0009a8  b3900020  hfloat2float.rn r1, r1
0009ac  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
0009b0  e340fff8  loadli.w r1,  -900(r30)
0009b4  7e8001e0  vmmov mr0, r3
0009b8  9f010040  addli r3, zero, 8192
0009bc  2b800000  lui zero, 8
0009c0  b3900020  hfloat2float.rn r1, r1
0009c4  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
0009c8  e3000ff9  loadli.w r1,  -896(r30)
0009cc  7e8001e0  vmmov mr0, r3
0009d0  ab410000  lui r3, 4
0009d4  b3900020  hfloat2float.rn r1, r1
0009d8  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
0009dc  e3400ff9  loadli.w r1,  -892(r30)
0009e0  7e8001e0  vmmov mr0, r3
0009e4  b3900020  hfloat2float.rn r1, r1
0009e8  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
0009ec  e3401ff9  loadli.w r1,  -884(r30)
0009f0  7e0000e0  vmmov mr0, zero
0009f4  17200000  xor zero, zero, zero
0009f8  e3011ff9  loadli.w r3,  -888(r30)
0009fc  92330002  vadd.s.mz vr7{mr1}, zero, vr0
000a00  12340002  vadd.s.mz vr8{mr1}, zero, vr0
000a04  92340002  vadd.s.mz vr9{mr1}, zero, vr0
000a08  12350002  vadd.s.mz vr10{mr1}, zero, vr0
000a0c  92350002  vadd.s.mz vr11{mr1}, zero, vr0
000a10  b3900020  hfloat2float.rn r1, r1
000a14  b3910120  hfloat2float.rn r3, r3
000a18  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
000a1c  9f100000  addli r1, zero, 1
000a20  7e8000e0  vmmov mr0, r1
000a24  eaa37130  vor.u.mh vr7{mr0}, r3, vr7
000a28  e3002ff9  loadli.w r1,  -880(r30)
000a2c  9f210000  addli r3, zero, 2
000a30  7e8001e0  vmmov mr0, r3
000a34  9f410000  addli r3, zero, 4
000a38  b3900020  hfloat2float.rn r1, r1
000a3c  7e8101e0  vmmov mr2, r3
000a40  9f011000  addli r3, zero, 8
000a44  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000a48  e3402ff9  loadli.w r1,  -876(r30)
000a4c  7e8001e0  vmmov mr0, r3
000a50  9f012000  addli r3, zero, 16
000a54  b3900020  hfloat2float.rn r1, r1
000a58  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
000a5c  e3003ff9  loadli.w r1,  -872(r30)
000a60  b3900020  hfloat2float.rn r1, r1
000a64  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000a68  e3403ff9  loadli.w r1,  -868(r30)
000a6c  7e8001e0  vmmov mr0, r3
000a70  9f014000  addli r3, zero, 32
000a74  b3900020  hfloat2float.rn r1, r1
000a78  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000a7c  e3004ff9  loadli.w r1,  -864(r30)
000a80  7e8001e0  vmmov mr0, r3
000a84  9f018000  addli r3, zero, 64
000a88  b3900020  hfloat2float.rn r1, r1
000a8c  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000a90  e3404ff9  loadli.w r1,  -860(r30)
000a94  7e8001e0  vmmov mr0, r3
000a98  9f010001  addli r3, zero, 128
000a9c  b3900020  hfloat2float.rn r1, r1
000aa0  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000aa4  e3005ff9  loadli.w r1,  -856(r30)
000aa8  7e8001e0  vmmov mr0, r3
000aac  9f010004  addli r3, zero, 512
000ab0  b3900020  hfloat2float.rn r1, r1
000ab4  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000ab8  e3405ff9  loadli.w r1,  -852(r30)
000abc  b3900020  hfloat2float.rn r1, r1
000ac0  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
000ac4  e3006ff9  loadli.w r1,  -848(r30)
000ac8  fe8101e0  vmmov mr3, r3
000acc  9f010008  addli r3, zero, 1024
000ad0  7e8001e0  vmmov mr0, r3
000ad4  9f010010  addli r3, zero, 2048
000ad8  b3900020  hfloat2float.rn r1, r1
000adc  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
000ae0  e3406ff9  loadli.w r1,  -844(r30)
000ae4  b3900020  hfloat2float.rn r1, r1
000ae8  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000aec  e3007ff9  loadli.w r1,  -840(r30)
000af0  7e8001e0  vmmov mr0, r3
000af4  9f010020  addli r3, zero, 4096
000af8  b3900020  hfloat2float.rn r1, r1
000afc  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000b00  e3407ff9  loadli.w r1,  -836(r30)
000b04  7e8001e0  vmmov mr0, r3
000b08  9f010040  addli r3, zero, 8192
000b0c  b3900020  hfloat2float.rn r1, r1
000b10  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000b14  e3008ff9  loadli.w r1,  -832(r30)
000b18  7e8001e0  vmmov mr0, r3
000b1c  ab410000  lui r3, 4
000b20  b3900020  hfloat2float.rn r1, r1
000b24  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000b28  e3000ffa  loadli.w r1,  -768(r30)
000b2c  7e8001e0  vmmov mr0, r3
000b30  ab810000  lui r3, 8
000b34  b3900020  hfloat2float.rn r1, r1
000b38  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000b3c  e3008ffa  loadli.w r1,  -704(r30)
000b40  7e8001e0  vmmov mr0, r3
000b44  ab810000  lui r3, 8
000b48  b3900020  hfloat2float.rn r1, r1
000b4c  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000b50  9f100000  addli r1, zero, 1
000b54  7e8000e0  vmmov mr0, r1
000b58  b3100220  hfloat2float.rn r1, r4
000b5c  6a248130  vor.u.mh vr8{mr0}, r2, vr8
000b60  1f210000  addli r2, zero, 2
000b64  7e0001e0  vmmov mr0, r2
000b68  1f011000  addli r2, zero, 8
000b6c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000b70  b3900220  hfloat2float.rn r1, r5
000b74  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
000b78  7e0101e0  vmmov mr2, r2
000b7c  b3100320  hfloat2float.rn r1, r6
000b80  1f012000  addli r2, zero, 16
000b84  7e0001c0  vmmov mr0, mr2
000b88  7e0101e0  vmmov mr2, r2
000b8c  1f014000  addli r2, zero, 32
000b90  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000b94  b3900320  hfloat2float.rn r1, r7
000b98  7e0001c0  vmmov mr0, mr2
000b9c  7e0101e0  vmmov mr2, r2
000ba0  1f018000  addli r2, zero, 64
000ba4  9f030001  addli r7, zero, 128
000ba8  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000bac  b3100420  hfloat2float.rn r1, r8
000bb0  7e0001c0  vmmov mr0, mr2
000bb4  7e0101e0  vmmov mr2, r2
000bb8  1f010001  addli r2, zero, 128
000bbc  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000bc0  b3900420  hfloat2float.rn r1, r9
000bc4  7e0001c0  vmmov mr0, mr2
000bc8  7e0101e0  vmmov mr2, r2
000bcc  1f010002  addli r2, zero, 256
000bd0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000bd4  b3100520  hfloat2float.rn r1, r10
000bd8  7e0001c0  vmmov mr0, mr2
000bdc  7e0101e0  vmmov mr2, r2
000be0  1f010008  addli r2, zero, 1024
000be4  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000be8  b3900520  hfloat2float.rn r1, r11
000bec  7e0001c0  vmmov mr0, mr2
000bf0  7e0101e0  vmmov mr2, r2
000bf4  1f010010  addli r2, zero, 2048
000bf8  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000bfc  b3100620  hfloat2float.rn r1, r12
000c00  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
000c04  b3900620  hfloat2float.rn r1, r13
000c08  7e0001c0  vmmov mr0, mr2
000c0c  7e0101e0  vmmov mr2, r2
000c10  1f010020  addli r2, zero, 4096
000c14  9f060ffd  addli r13, r30, -384
000c18  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000c1c  b3100720  hfloat2float.rn r1, r14
000c20  7e0001c0  vmmov mr0, mr2
000c24  7e0101e0  vmmov mr2, r2
000c28  1f010040  addli r2, zero, 8192
000c2c  1f070ffe  addli r14, r30, -256
000c30  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000c34  b3900720  hfloat2float.rn r1, r15
000c38  7e0001e0  vmmov mr0, r2
000c3c  2b410000  lui r2, 4
000c40  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
000c44  b3100820  hfloat2float.rn r1, r16
000c48  7e8101e0  vmmov mr2, r3
000c4c  ab810000  lui r3, 8
000c50  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000c54  b3900820  hfloat2float.rn r1, r17
000c58  7e0001e0  vmmov mr0, r2
000c5c  33110920  hfloat2float.rn r2, r18
000c60  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000c64  b3900920  hfloat2float.rn r1, r19
000c68  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
000c6c  9f100000  addli r1, zero, 1
000c70  26944102  vmac.f.mz.rn vr8{mr1}, vr3, vr4
000c74  92310002  vadd.s.mz vr3{mr1}, zero, vr0
000c78  7e8000e0  vmmov mr0, r1
000c7c  b3100a20  hfloat2float.rn r1, r20
000c80  ea249130  vor.u.mh vr9{mr0}, r2, vr9
000c84  1f210000  addli r2, zero, 2
000c88  7e0101e0  vmmov mr2, r2
000c8c  1f410000  addli r2, zero, 4
000c90  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
000c94  b3900a20  hfloat2float.rn r1, r21
000c98  fe0101e0  vmmov mr3, r2
000c9c  1f011000  addli r2, zero, 8
000ca0  7e0101e0  vmmov mr2, r2
000ca4  1f012000  addli r2, zero, 16
000ca8  eaa49036  vor.u.mh vr9{mr3}, r1, vr9
000cac  b3100b20  hfloat2float.rn r1, r22
000cb0  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
000cb4  b3900b20  hfloat2float.rn r1, r23
000cb8  7e0101e0  vmmov mr2, r2
000cbc  1f014000  addli r2, zero, 32
000cc0  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
000cc4  b3100c20  hfloat2float.rn r1, r24
000cc8  7e0101e0  vmmov mr2, r2
000ccc  1f018000  addli r2, zero, 64
000cd0  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
000cd4  b3900c20  hfloat2float.rn r1, r25
000cd8  7e0101e0  vmmov mr2, r2
000cdc  1f010001  addli r2, zero, 128
000ce0  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
000ce4  b3100d20  hfloat2float.rn r1, r26
000ce8  7e0101e0  vmmov mr2, r2
000cec  1f010002  addli r2, zero, 256
000cf0  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
000cf4  b3900d20  hfloat2float.rn r1, r27
000cf8  7e0101e0  vmmov mr2, r2
000cfc  1f010004  addli r2, zero, 512
000d00  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
000d04  b3100e20  hfloat2float.rn r1, r28
000d08  7e0101e0  vmmov mr2, r2
000d0c  1f010008  addli r2, zero, 1024
000d10  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
000d14  e3007ff6  loadli.w r1,  -1224(r30)
000d18  7e0101e0  vmmov mr2, r2
000d1c  1f010010  addli r2, zero, 2048
000d20  b3900020  hfloat2float.rn r1, r1
000d24  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
000d28  e3407ff6  loadli.w r1,  -1220(r30)
000d2c  7e0101e0  vmmov mr2, r2
000d30  1f010020  addli r2, zero, 4096
000d34  b3900020  hfloat2float.rn r1, r1
000d38  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
000d3c  e3008ff6  loadli.w r1,  -1216(r30)
000d40  7e0101e0  vmmov mr2, r2
000d44  1f010040  addli r2, zero, 8192
000d48  b3900020  hfloat2float.rn r1, r1
000d4c  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
000d50  e3408ff6  loadli.w r1,  -1212(r30)
000d54  7e0101e0  vmmov mr2, r2
000d58  2b410000  lui r2, 4
000d5c  b3900020  hfloat2float.rn r1, r1
000d60  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
000d64  e3009ff6  loadli.w r1,  -1208(r30)
000d68  7e0101e0  vmmov mr2, r2
000d6c  b3900020  hfloat2float.rn r1, r1
000d70  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
000d74  e300aff6  loadli.w r1,  -1200(r30)
000d78  63419ff6  loadli.w r2,  -1204(r30)
000d7c  7e8101e0  vmmov mr2, r3
000d80  b3900020  hfloat2float.rn r1, r1
000d84  33110120  hfloat2float.rn r2, r2
000d88  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
000d8c  6a25a130  vor.u.mh vr10{mr0}, r2, vr10
000d90  e340aff6  loadli.w r1,  -1196(r30)
000d94  1f210000  addli r2, zero, 2
000d98  a6145102  vmac.f.mz.rn vr9{mr1}, vr2, vr5
000d9c  7e0001e0  vmmov mr0, r2
000da0  1f011000  addli r2, zero, 8
000da4  b3900020  hfloat2float.rn r1, r1
000da8  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000dac  e300bff6  loadli.w r1,  -1192(r30)
000db0  7e0001e0  vmmov mr0, r2
000db4  1f012000  addli r2, zero, 16
000db8  b3900020  hfloat2float.rn r1, r1
000dbc  6aa5a036  vor.u.mh vr10{mr3}, r1, vr10
000dc0  e300cff6  loadli.w r1,  -1184(r30)
000dc4  b3900020  hfloat2float.rn r1, r1
000dc8  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000dcc  e300dff6  loadli.w r1,  -1176(r30)
000dd0  7e0001e0  vmmov mr0, r2
000dd4  1f014000  addli r2, zero, 32
000dd8  b3900020  hfloat2float.rn r1, r1
000ddc  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000de0  e300eff6  loadli.w r1,  -1168(r30)
000de4  7e0001e0  vmmov mr0, r2
000de8  1f018000  addli r2, zero, 64
000dec  b3900020  hfloat2float.rn r1, r1
000df0  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000df4  e300fff6  loadli.w r1,  -1160(r30)
000df8  7e0001e0  vmmov mr0, r2
000dfc  1f010001  addli r2, zero, 128
000e00  b3900020  hfloat2float.rn r1, r1
000e04  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000e08  e3000ff7  loadli.w r1,  -1152(r30)
000e0c  7e0001e0  vmmov mr0, r2
000e10  1f010002  addli r2, zero, 256
000e14  b3900020  hfloat2float.rn r1, r1
000e18  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000e1c  e3001ff7  loadli.w r1,  -1144(r30)
000e20  7e0001e0  vmmov mr0, r2
000e24  1f010004  addli r2, zero, 512
000e28  b3900020  hfloat2float.rn r1, r1
000e2c  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000e30  e3002ff7  loadli.w r1,  -1136(r30)
000e34  7e0001e0  vmmov mr0, r2
000e38  1f010008  addli r2, zero, 1024
000e3c  b3900020  hfloat2float.rn r1, r1
000e40  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000e44  e3003ff7  loadli.w r1,  -1128(r30)
000e48  7e0001e0  vmmov mr0, r2
000e4c  1f010010  addli r2, zero, 2048
000e50  b3900020  hfloat2float.rn r1, r1
000e54  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000e58  e3004ff7  loadli.w r1,  -1120(r30)
000e5c  7e0001e0  vmmov mr0, r2
000e60  1f010020  addli r2, zero, 4096
000e64  b3900020  hfloat2float.rn r1, r1
000e68  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000e6c  e3005ff7  loadli.w r1,  -1112(r30)
000e70  7e0001e0  vmmov mr0, r2
000e74  1f010040  addli r2, zero, 8192
000e78  b3900020  hfloat2float.rn r1, r1
000e7c  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000e80  e3006ff7  loadli.w r1,  -1104(r30)
000e84  7e0001e0  vmmov mr0, r2
000e88  2b410000  lui r2, 4
000e8c  fe0101e0  vmmov mr3, r2
000e90  b3900020  hfloat2float.rn r1, r1
000e94  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000e98  e3007ff7  loadli.w r1,  -1096(r30)
000e9c  b3900020  hfloat2float.rn r1, r1
000ea0  6aa5a036  vor.u.mh vr10{mr3}, r1, vr10
000ea4  e3408ff7  loadli.w r1,  -1084(r30)
000ea8  63018ff7  loadli.w r2,  -1088(r30)
000eac  b3900020  hfloat2float.rn r1, r1
000eb0  33110120  hfloat2float.rn r2, r2
000eb4  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
000eb8  9f100000  addli r1, zero, 1
000ebc  26956002  vmac.f.mz.rn vr10{mr1}, vr1, vr6
000ec0  7e8000e0  vmmov mr0, r1
000ec4  ea25b130  vor.u.mh vr11{mr0}, r2, vr11
000ec8  e340aff7  loadli.w r1,  -1068(r30)
000ecc  1f210000  addli r2, zero, 2
000ed0  7e0001e0  vmmov mr0, r2
000ed4  1f410000  addli r2, zero, 4
000ed8  b3900020  hfloat2float.rn r1, r1
000edc  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000ee0  e300bff7  loadli.w r1,  -1064(r30)
000ee4  7e0001e0  vmmov mr0, r2
000ee8  1f011000  addli r2, zero, 8
000eec  b3900020  hfloat2float.rn r1, r1
000ef0  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000ef4  e300cff7  loadli.w r1,  -1056(r30)
000ef8  7e0001e0  vmmov mr0, r2
000efc  1f012000  addli r2, zero, 16
000f00  b3900020  hfloat2float.rn r1, r1
000f04  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000f08  e300dff7  loadli.w r1,  -1048(r30)
000f0c  7e0001e0  vmmov mr0, r2
000f10  1f014000  addli r2, zero, 32
000f14  b3900020  hfloat2float.rn r1, r1
000f18  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000f1c  e300eff7  loadli.w r1,  -1040(r30)
000f20  7e0001e0  vmmov mr0, r2
000f24  1f018000  addli r2, zero, 64
000f28  b3900020  hfloat2float.rn r1, r1
000f2c  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000f30  e300fff7  loadli.w r1,  -1032(r30)
000f34  7e0001e0  vmmov mr0, r2
000f38  1f010001  addli r2, zero, 128
000f3c  b3900020  hfloat2float.rn r1, r1
000f40  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000f44  e3000ff8  loadli.w r1,  -1024(r30)
000f48  7e0001e0  vmmov mr0, r2
000f4c  1f010002  addli r2, zero, 256
000f50  b3900020  hfloat2float.rn r1, r1
000f54  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000f58  e3001ff8  loadli.w r1,  -1016(r30)
000f5c  7e0001e0  vmmov mr0, r2
000f60  1f010004  addli r2, zero, 512
000f64  b3900020  hfloat2float.rn r1, r1
000f68  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000f6c  e3002ff8  loadli.w r1,  -1008(r30)
000f70  7e0001e0  vmmov mr0, r2
000f74  1f010008  addli r2, zero, 1024
000f78  b3900020  hfloat2float.rn r1, r1
000f7c  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000f80  e3003ff8  loadli.w r1,  -1000(r30)
000f84  7e0001e0  vmmov mr0, r2
000f88  1f010010  addli r2, zero, 2048
000f8c  b3900020  hfloat2float.rn r1, r1
000f90  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000f94  e3004ff8  loadli.w r1,  -992(r30)
000f98  7e0001e0  vmmov mr0, r2
000f9c  1f010020  addli r2, zero, 4096
000fa0  b3900020  hfloat2float.rn r1, r1
000fa4  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000fa8  e3005ff8  loadli.w r1,  -984(r30)
000fac  7e0001e0  vmmov mr0, r2
000fb0  1f010040  addli r2, zero, 8192
000fb4  b3900020  hfloat2float.rn r1, r1
000fb8  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000fbc  e3006ff8  loadli.w r1,  -976(r30)
000fc0  7e0001e0  vmmov mr0, r2
000fc4  6b510f01  load.d r[3:4], 16(r30)
000fc8  b3900020  hfloat2float.rn r1, r1
000fcc  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000fd0  e3007ff8  loadli.w r1,  -968(r30)
000fd4  b3900020  hfloat2float.rn r1, r1
000fd8  eaa5b036  vor.u.mh vr11{mr3}, r1, vr11
000fdc  e3008ff8  loadli.w r1,  -960(r30)
000fe0  b3900020  hfloat2float.rn r1, r1
000fe4  eaa5b034  vor.u.mh vr11{mr2}, r1, vr11
000fe8  42100fa3  vload_mask16.mz vr0{mr1}, 1408(r30)
000fec  ab0000f0  lui r1, 983040
000ff0  a6157002  vmac.f.mz.rn vr11{mr1}, vr0, vr7
000ff4  06100400  vfloat2fp16_l.rn vr0, vr8
000ff8  06d00400  vfloat2fp16_h.rn vr0, vr9
000ffc  46180fc2  vstore_mask16.mz vr0{mr1}, 1664(r30)
001000  06100500  vfloat2fp16_l.rn vr0, vr10
001004  06d00500  vfloat2fp16_h.rn vr0, vr11
001008  461c0fc2  vstore_mask16.mz vr0{mr1}, 1728(r30)
00100c  97901300  or r1, r7, r1
001010  6b520fdf  load.d r[5:6], -528(r30)
001014  00a00000  mfence { lm }
001018  6346fffb  loadli.w r12,  -516(r30)
00101c  0b214110  add.ul r[3:4], r[3:4], r[5:6]
001020  ff30d100  s_lm2gm r1, r13, 0(r[3:4])
001024  e3403ff6  loadli.w r1,  -1252(r30)
001028  00a00000  mfence { lm }
00102c  0b161610  add.s r12, r12, r1
001030  e3404ff6  loadli.w r1,  -1244(r30)
001034  3f201600  blt.s r12, r1, 8
001038  db1a0100  j 2260
00103c  e3006f00  loadli.w r1,  48(r30)
001040  e3415f00  loadli.w r3,  44(r30)
001044  2b0100f0  lui r2, 983040
001048  1f230000  addli r6, zero, 2
00104c  2b0200f0  lui r4, 983040
001050  ab0200f0  lui r5, 983040
001054  63043ff6  loadli.w r8,  -1256(r30)
001058  e74fcffa  storeli.w r12, -516(r30)
00105c  6b550f00  load.d r[11:12], 0(r30)
001060  12313002  vadd.s.mz vr2{mr1}, zero, vr3
001064  17112300  or r2, r6, r2
001068  17924300  or r4, r7, r4
00106c  97925300  or r5, r7, r5
001070  8b101630  div.s r1, r12, r1
001074  1f160000  addli r12, zero, 1
001078  8b903030  div.s r1, r1, r3
00107c  ab0100f0  lui r3, 983040
001080  97113300  or r3, r6, r3
001084  6343fff5  loadli.w r6,  -1284(r30)
001088  9bb0c000  slli r1, r1, 12
00108c  8b906010  add.s r1, r1, r6
001090  33930028  sext_int2long r[7:8], r1
001094  8b908010  add.s r1, r1, r8
001098  1733c302  sll.d r[7:8], r[7:8], r12
00109c  33940028  sext_int2long r[9:10], r1
0010a0  9f000ffc  addli r1, r30, -512
0010a4  0b236510  add.ul r[7:8], r[11:12], r[7:8]
0010a8  1734c402  sll.d r[9:10], r[9:10], r12
0010ac  7f211300  l_gm2lm r2, r1, 0(r[7:8])
0010b0  6b538f00  load.d r[7:8], 8(r30)
0010b4  73388fde  store.d r[9:10], -528(r30)
0010b8  8b208510  add.ul r[2:3], r[11:12], r[9:10]
0010bc  1f048ffc  addli r8, r30, -448
0010c0  ff218300  l_gm2lm r3, r8, 0(r[7:8])
0010c4  7fa2d000  l_gm2lm r4, r13, 0(r[2:3])
0010c8  eb500fb1  load.d r[2:3], -1264(r30)
0010cc  ffa2e000  l_gm2lm r5, r14, 0(r[2:3])
0010d0  00a00000  mfence { lm }
0010d4  eb300fe4  load.hu r1, -448(r30)
0010d8  00a00000  mfence { lm }
0010dc  c2100fc3  vload_mask16.mz vr1{mr1}, 1664(r30)
0010e0  67081ffa  storeli.w r1, -640(r30)
0010e4  eb300fe0  load.hu r1, -512(r30)
0010e8  67041ffa  storeli.w r1, -704(r30)
0010ec  42108fc3  vload_mask16.mz vr0{mr1}, 1728(r30)
0010f0  6b3e6ff3  load.hu r28, -202(r30)
0010f4  eb300ff0  load.hu r1, -256(r30)
0010f8  6b312ff0  load.hu r2, -254(r30)
0010fc  eb314ff0  load.hu r3, -252(r30)
001100  6b326ff0  load.hu r4, -250(r30)
001104  eb328ff0  load.hu r5, -248(r30)
001108  6b33aff0  load.hu r6, -246(r30)
00110c  eb33cff0  load.hu r7, -244(r30)
001110  6b34eff0  load.hu r8, -242(r30)
001114  eb340ff1  load.hu r9, -240(r30)
001118  6b352ff1  load.hu r10, -238(r30)
00111c  eb354ff1  load.hu r11, -236(r30)
001120  6b366ff1  load.hu r12, -234(r30)
001124  eb368ff1  load.hu r13, -232(r30)
001128  6b37aff1  load.hu r14, -230(r30)
00112c  eb37cff1  load.hu r15, -228(r30)
001130  6b38eff1  load.hu r16, -226(r30)
001134  eb380ff2  load.hu r17, -224(r30)
001138  6b392ff2  load.hu r18, -222(r30)
00113c  eb394ff2  load.hu r19, -220(r30)
001140  6b3a6ff2  load.hu r20, -218(r30)
001144  eb3a8ff2  load.hu r21, -216(r30)
001148  6b3baff2  load.hu r22, -214(r30)
00114c  eb3bcff2  load.hu r23, -212(r30)
001150  6b3ceff2  load.hu r24, -210(r30)
001154  eb3c0ff3  load.hu r25, -208(r30)
001158  6b3d2ff3  load.hu r26, -206(r30)
00115c  eb3d4ff3  load.hu r27, -204(r30)
001160  6743cff9  storeli.w r28, -972(r30)
001164  6b3e8ff3  load.hu r28, -200(r30)
001168  e703cff9  storeli.w r28, -968(r30)
00116c  6b3eaff3  load.hu r28, -198(r30)
001170  e743cff9  storeli.w r28, -964(r30)
001174  6b3ecff3  load.hu r28, -196(r30)
001178  6704cff9  storeli.w r28, -960(r30)
00117c  6b3eeff3  load.hu r28, -194(r30)
001180  6744cff9  storeli.w r28, -956(r30)
001184  6b3e0ff4  load.hu r28, -192(r30)
001188  e704cff9  storeli.w r28, -952(r30)
00118c  6b3e2ff4  load.hu r28, -190(r30)
001190  e744cff9  storeli.w r28, -948(r30)
001194  6b3e4ff4  load.hu r28, -188(r30)
001198  6705cff9  storeli.w r28, -944(r30)
00119c  6b3e6ff4  load.hu r28, -186(r30)
0011a0  6745cff9  storeli.w r28, -940(r30)
0011a4  6b3e8ff4  load.hu r28, -184(r30)
0011a8  e705cff9  storeli.w r28, -936(r30)
0011ac  6b3eaff4  load.hu r28, -182(r30)
0011b0  e745cff9  storeli.w r28, -932(r30)
0011b4  6b3ecff4  load.hu r28, -180(r30)
0011b8  6706cff9  storeli.w r28, -928(r30)
0011bc  6b3eeff4  load.hu r28, -178(r30)
0011c0  6746cff9  storeli.w r28, -924(r30)
0011c4  6b3e0ff5  load.hu r28, -176(r30)
0011c8  e706cff9  storeli.w r28, -920(r30)
0011cc  6b3e2ff5  load.hu r28, -174(r30)
0011d0  e746cff9  storeli.w r28, -916(r30)
0011d4  6b3e4ff5  load.hu r28, -172(r30)
0011d8  6707cff9  storeli.w r28, -912(r30)
0011dc  6b3e6ff5  load.hu r28, -170(r30)
0011e0  6747cff9  storeli.w r28, -908(r30)
0011e4  6b3e8ff5  load.hu r28, -168(r30)
0011e8  e707cff9  storeli.w r28, -904(r30)
0011ec  6b3eaff5  load.hu r28, -166(r30)
0011f0  e747cff9  storeli.w r28, -900(r30)
0011f4  6b3ecff5  load.hu r28, -164(r30)
0011f8  6708cff9  storeli.w r28, -896(r30)
0011fc  6b3eeff5  load.hu r28, -162(r30)
001200  6748cff9  storeli.w r28, -892(r30)
001204  6b3e0ff6  load.hu r28, -160(r30)
001208  e708cff9  storeli.w r28, -888(r30)
00120c  6b3e2ff6  load.hu r28, -158(r30)
001210  e748cff9  storeli.w r28, -884(r30)
001214  6b3e4ff6  load.hu r28, -156(r30)
001218  6709cff9  storeli.w r28, -880(r30)
00121c  6b3e6ff6  load.hu r28, -154(r30)
001220  6749cff9  storeli.w r28, -876(r30)
001224  6b3e8ff6  load.hu r28, -152(r30)
001228  e709cff9  storeli.w r28, -872(r30)
00122c  6b3eaff6  load.hu r28, -150(r30)
001230  e749cff9  storeli.w r28, -868(r30)
001234  6b3ecff6  load.hu r28, -148(r30)
001238  670acff9  storeli.w r28, -864(r30)
00123c  6b3eeff6  load.hu r28, -146(r30)
001240  674acff9  storeli.w r28, -860(r30)
001244  6b3e0ff7  load.hu r28, -144(r30)
001248  e70acff9  storeli.w r28, -856(r30)
00124c  6b3e2ff7  load.hu r28, -142(r30)
001250  e74acff9  storeli.w r28, -852(r30)
001254  6b3e4ff7  load.hu r28, -140(r30)
001258  670bcff9  storeli.w r28, -848(r30)
00125c  6b3e6ff7  load.hu r28, -138(r30)
001260  674bcff9  storeli.w r28, -844(r30)
001264  6b3e8ff7  load.hu r28, -136(r30)
001268  e70bcff9  storeli.w r28, -840(r30)
00126c  6b3eaff7  load.hu r28, -134(r30)
001270  e74bcff9  storeli.w r28, -836(r30)
001274  6b3ecff7  load.hu r28, -132(r30)
001278  670ccff9  storeli.w r28, -832(r30)
00127c  6b3eeff7  load.hu r28, -130(r30)
001280  6700cffb  storeli.w r28, -768(r30)
001284  1f1e0000  addli r28, zero, 1
001288  00a00000  mfence { lm }
00128c  7e000ee0  vmmov mr0, r28
001290  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
001294  9f200000  addli r1, zero, 2
001298  7e8000e0  vmmov mr0, r1
00129c  9f400000  addli r1, zero, 4
0012a0  6a412130  vor.hf.mh vr2{mr0}, r2, vr2
0012a4  7e8100e0  vmmov mr2, r1
0012a8  9f001000  addli r1, zero, 8
0012ac  1f110000  addli r2, zero, 1
0012b0  7e8000e0  vmmov mr0, r1
0012b4  9f002000  addli r1, zero, 16
0012b8  6ac12134  vor.hf.mh vr2{mr2}, r3, vr2
0012bc  fe8100e0  vmmov mr3, r1
0012c0  9f004000  addli r1, zero, 32
0012c4  ab010020  lui r3, 131072
0012c8  6a412230  vor.hf.mh vr2{mr0}, r4, vr2
0012cc  6ac12236  vor.hf.mh vr2{mr3}, r5, vr2
0012d0  fe8100e0  vmmov mr3, r1
0012d4  9f008000  addli r1, zero, 64
0012d8  6a412336  vor.hf.mh vr2{mr3}, r6, vr2
0012dc  fe8100e0  vmmov mr3, r1
0012e0  9f000001  addli r1, zero, 128
0012e4  6ac12336  vor.hf.mh vr2{mr3}, r7, vr2
0012e8  fe8100e0  vmmov mr3, r1
0012ec  9f000002  addli r1, zero, 256
0012f0  6a412436  vor.hf.mh vr2{mr3}, r8, vr2
0012f4  fe8100e0  vmmov mr3, r1
0012f8  9f000004  addli r1, zero, 512
0012fc  6ac12436  vor.hf.mh vr2{mr3}, r9, vr2
001300  fe8100e0  vmmov mr3, r1
001304  9f000008  addli r1, zero, 1024
001308  6a412536  vor.hf.mh vr2{mr3}, r10, vr2
00130c  fe8100e0  vmmov mr3, r1
001310  9f000010  addli r1, zero, 2048
001314  6ac12536  vor.hf.mh vr2{mr3}, r11, vr2
001318  fe8100e0  vmmov mr3, r1
00131c  9f000020  addli r1, zero, 4096
001320  6a412636  vor.hf.mh vr2{mr3}, r12, vr2
001324  fe8100e0  vmmov mr3, r1
001328  9f000040  addli r1, zero, 8192
00132c  6ac12636  vor.hf.mh vr2{mr3}, r13, vr2
001330  fe8100e0  vmmov mr3, r1
001334  ab400000  lui r1, 4
001338  6a412736  vor.hf.mh vr2{mr3}, r14, vr2
00133c  fe8100e0  vmmov mr3, r1
001340  ab800000  lui r1, 8
001344  6ac12736  vor.hf.mh vr2{mr3}, r15, vr2
001348  fe8100e0  vmmov mr3, r1
00134c  ab000100  lui r1, 16
001350  6a412836  vor.hf.mh vr2{mr3}, r16, vr2
001354  fe8100e0  vmmov mr3, r1
001358  ab000200  lui r1, 32
00135c  6ac12836  vor.hf.mh vr2{mr3}, r17, vr2
001360  fe8100e0  vmmov mr3, r1
001364  ab000400  lui r1, 64
001368  6a412936  vor.hf.mh vr2{mr3}, r18, vr2
00136c  fe8100e0  vmmov mr3, r1
001370  ab000800  lui r1, 128
001374  6ac12936  vor.hf.mh vr2{mr3}, r19, vr2
001378  fe8100e0  vmmov mr3, r1
00137c  ab001000  lui r1, 256
001380  6a412a36  vor.hf.mh vr2{mr3}, r20, vr2
001384  fe8100e0  vmmov mr3, r1
001388  ab002000  lui r1, 512
00138c  2b0a0080  lui r20, 524288
001390  6ac12a36  vor.hf.mh vr2{mr3}, r21, vr2
001394  fe8100e0  vmmov mr3, r1
001398  ab004000  lui r1, 1024
00139c  6a412b36  vor.hf.mh vr2{mr3}, r22, vr2
0013a0  fe8100e0  vmmov mr3, r1
0013a4  ab008000  lui r1, 2048
0013a8  6ac12b36  vor.hf.mh vr2{mr3}, r23, vr2
0013ac  fe8100e0  vmmov mr3, r1
0013b0  ab000001  lui r1, 4096
0013b4  6a412c36  vor.hf.mh vr2{mr3}, r24, vr2
0013b8  fe8100e0  vmmov mr3, r1
0013bc  ab000002  lui r1, 8192
0013c0  6ac12c36  vor.hf.mh vr2{mr3}, r25, vr2
0013c4  fe8100e0  vmmov mr3, r1
0013c8  ab000004  lui r1, 16384
0013cc  6a412d36  vor.hf.mh vr2{mr3}, r26, vr2
0013d0  fe8100e0  vmmov mr3, r1
0013d4  ab000008  lui r1, 32768
0013d8  6ac12d36  vor.hf.mh vr2{mr3}, r27, vr2
0013dc  fe8100e0  vmmov mr3, r1
0013e0  e3406ff8  loadli.w r1,  -972(r30)
0013e4  6ac12036  vor.hf.mh vr2{mr3}, r1, vr2
0013e8  ab000010  lui r1, 65536
0013ec  fe8100e0  vmmov mr3, r1
0013f0  e3007ff8  loadli.w r1,  -968(r30)
0013f4  6ac12036  vor.hf.mh vr2{mr3}, r1, vr2
0013f8  ab000020  lui r1, 131072
0013fc  fe8100e0  vmmov mr3, r1
001400  e3407ff8  loadli.w r1,  -964(r30)
001404  6ac12036  vor.hf.mh vr2{mr3}, r1, vr2
001408  ab000040  lui r1, 262144
00140c  fe8100e0  vmmov mr3, r1
001410  e3008ff8  loadli.w r1,  -960(r30)
001414  6ac12036  vor.hf.mh vr2{mr3}, r1, vr2
001418  ab000080  lui r1, 524288
00141c  fe8100e0  vmmov mr3, r1
001420  e3408ff8  loadli.w r1,  -956(r30)
001424  6ac12036  vor.hf.mh vr2{mr3}, r1, vr2
001428  e3009ff8  loadli.w r1,  -952(r30)
00142c  fe0101e0  vmmov mr3, r2
001430  1f210000  addli r2, zero, 2
001434  eac13036  vor.hf.mh vr3{mr3}, r1, vr3
001438  e3409ff8  loadli.w r1,  -948(r30)
00143c  fe0101e0  vmmov mr3, r2
001440  1f012000  addli r2, zero, 16
001444  96c02002  vadd.hf.mz.rn vr1{mr1}, vr1, vr2
001448  06b10000  vfp162float_l.rn vr2, vr1
00144c  06f20000  vfp162float_h.rn vr4, vr1
001450  eac13036  vor.hf.mh vr3{mr3}, r1, vr3
001454  e300aff8  loadli.w r1,  -944(r30)
001458  eac13034  vor.hf.mh vr3{mr2}, r1, vr3
00145c  e340aff8  loadli.w r1,  -940(r30)
001460  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
001464  e300bff8  loadli.w r1,  -936(r30)
001468  7e0001e0  vmmov mr0, r2
00146c  1f014000  addli r2, zero, 32
001470  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
001474  e340bff8  loadli.w r1,  -932(r30)
001478  7e0001e0  vmmov mr0, r2
00147c  1f018000  addli r2, zero, 64
001480  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
001484  e300cff8  loadli.w r1,  -928(r30)
001488  7e0001e0  vmmov mr0, r2
00148c  1f010001  addli r2, zero, 128
001490  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
001494  e340cff8  loadli.w r1,  -924(r30)
001498  7e0001e0  vmmov mr0, r2
00149c  1f010002  addli r2, zero, 256
0014a0  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
0014a4  e300dff8  loadli.w r1,  -920(r30)
0014a8  7e0001e0  vmmov mr0, r2
0014ac  1f010004  addli r2, zero, 512
0014b0  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
0014b4  e340dff8  loadli.w r1,  -916(r30)
0014b8  7e0001e0  vmmov mr0, r2
0014bc  1f010008  addli r2, zero, 1024
0014c0  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
0014c4  e300eff8  loadli.w r1,  -912(r30)
0014c8  7e0001e0  vmmov mr0, r2
0014cc  1f010010  addli r2, zero, 2048
0014d0  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
0014d4  e340eff8  loadli.w r1,  -908(r30)
0014d8  7e0001e0  vmmov mr0, r2
0014dc  1f010020  addli r2, zero, 4096
0014e0  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
0014e4  e300fff8  loadli.w r1,  -904(r30)
0014e8  7e0001e0  vmmov mr0, r2
0014ec  1f010040  addli r2, zero, 8192
0014f0  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
0014f4  e340fff8  loadli.w r1,  -900(r30)
0014f8  7e0001e0  vmmov mr0, r2
0014fc  2b410000  lui r2, 4
001500  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
001504  e3000ff9  loadli.w r1,  -896(r30)
001508  7e0001e0  vmmov mr0, r2
00150c  2b810000  lui r2, 8
001510  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
001514  e3400ff9  loadli.w r1,  -892(r30)
001518  7e0001e0  vmmov mr0, r2
00151c  2b010100  lui r2, 16
001520  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
001524  e3001ff9  loadli.w r1,  -888(r30)
001528  7e0001e0  vmmov mr0, r2
00152c  2b010200  lui r2, 32
001530  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
001534  e3401ff9  loadli.w r1,  -884(r30)
001538  7e0001e0  vmmov mr0, r2
00153c  2b010400  lui r2, 64
001540  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
001544  e3002ff9  loadli.w r1,  -880(r30)
001548  7e0001e0  vmmov mr0, r2
00154c  2b010800  lui r2, 128
001550  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
001554  e3402ff9  loadli.w r1,  -876(r30)
001558  7e0001e0  vmmov mr0, r2
00155c  2b011000  lui r2, 256
001560  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
001564  e3003ff9  loadli.w r1,  -872(r30)
001568  7e0001e0  vmmov mr0, r2
00156c  2b012000  lui r2, 512
001570  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
001574  e3403ff9  loadli.w r1,  -868(r30)
001578  7e0001e0  vmmov mr0, r2
00157c  2b014000  lui r2, 1024
001580  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
001584  e3004ff9  loadli.w r1,  -864(r30)
001588  7e0001e0  vmmov mr0, r2
00158c  2b018000  lui r2, 2048
001590  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
001594  e3404ff9  loadli.w r1,  -860(r30)
001598  7e0001e0  vmmov mr0, r2
00159c  2b010001  lui r2, 4096
0015a0  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
0015a4  e3005ff9  loadli.w r1,  -856(r30)
0015a8  7e0001e0  vmmov mr0, r2
0015ac  2b010002  lui r2, 8192
0015b0  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
0015b4  e3405ff9  loadli.w r1,  -852(r30)
0015b8  7e0001e0  vmmov mr0, r2
0015bc  2b010004  lui r2, 16384
0015c0  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
0015c4  e3006ff9  loadli.w r1,  -848(r30)
0015c8  7e0001e0  vmmov mr0, r2
0015cc  2b010008  lui r2, 32768
0015d0  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
0015d4  e3406ff9  loadli.w r1,  -844(r30)
0015d8  7e0001e0  vmmov mr0, r2
0015dc  2b010010  lui r2, 65536
0015e0  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
0015e4  e3007ff9  loadli.w r1,  -840(r30)
0015e8  7e0001e0  vmmov mr0, r2
0015ec  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
0015f0  e3000ffb  loadli.w r1,  -640(r30)
0015f4  63018ffa  loadli.w r2,  -704(r30)
0015f8  7e8001e0  vmmov mr0, r3
0015fc  ab010040  lui r3, 262144
001600  8bd02010  add.hf.rn r1, r1, r2
001604  63417ff9  loadli.w r2,  -836(r30)
001608  ea413130  vor.hf.mh vr3{mr0}, r2, vr3
00160c  63018ff9  loadli.w r2,  -832(r30)
001610  7e8001e0  vmmov mr0, r3
001614  ab010080  lui r3, 524288
001618  b3900020  hfloat2float.rn r1, r1
00161c  ea413130  vor.hf.mh vr3{mr0}, r2, vr3
001620  2b010080  lui r2, 524288
001624  7e8001e0  vmmov mr0, r3
001628  97a02000  xor r1, r1, r2
00162c  63010ffa  loadli.w r2,  -768(r30)
001630  92922002  vadd.f.mz.rn vr5{mr1}, r1, vr2
001634  92105002  vadd.f.mz.rn vr1{mr1}, zero, vr5
001638  12924002  vadd.f.mz.rn vr4{mr1}, r1, vr4
00163c  12114002  vadd.f.mz.rn vr2{mr1}, zero, vr4
001640  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
001644  ea413130  vor.hf.mh vr3{mr0}, r2, vr3
001648  16403002  vadd.hf.mz.rn vr0{mr1}, vr0, vr3
00164c  06310000  vfp162float_l.rn vr2, vr0
001650  92912002  vadd.f.mz.rn vr3{mr1}, r1, vr2
001654  12113002  vadd.f.mz.rn vr2{mr1}, zero, vr3
001658  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
00165c  06710000  vfp162float_h.rn vr2, vr0
001660  12932002  vadd.f.mz.rn vr6{mr1}, r1, vr2
001664  12106002  vadd.f.mz.rn vr0{mr1}, zero, vr6
001668  16900002  vadd.f.mz.rn vr0{mr1}, vr1, vr0
00166c  fa100040  vextracti.f r1, 0(vr0)
001670  7a111040  vextracti.f r2, 1(vr0)
001674  8be02010  add.f.rn r1, r1, r2
001678  7a112040  vextracti.f r2, 2(vr0)
00167c  8b601110  add.f.rn r1, r2, r1
001680  7a113040  vextracti.f r2, 3(vr0)
001684  8b601110  add.f.rn r1, r2, r1
001688  7a114040  vextracti.f r2, 4(vr0)
00168c  8b601110  add.f.rn r1, r2, r1
001690  7a115040  vextracti.f r2, 5(vr0)
001694  8b601110  add.f.rn r1, r2, r1
001698  7a116040  vextracti.f r2, 6(vr0)
00169c  8b601110  add.f.rn r1, r2, r1
0016a0  7a117040  vextracti.f r2, 7(vr0)
0016a4  8b601110  add.f.rn r1, r2, r1
0016a8  7a118040  vextracti.f r2, 8(vr0)
0016ac  8b601110  add.f.rn r1, r2, r1
0016b0  7a119040  vextracti.f r2, 9(vr0)
0016b4  8b601110  add.f.rn r1, r2, r1
0016b8  7a11a040  vextracti.f r2, 10(vr0)
0016bc  8b601110  add.f.rn r1, r2, r1
0016c0  7a11b040  vextracti.f r2, 11(vr0)
0016c4  8b601110  add.f.rn r1, r2, r1
0016c8  7a11c040  vextracti.f r2, 12(vr0)
0016cc  8b601110  add.f.rn r1, r2, r1
0016d0  7a11d040  vextracti.f r2, 13(vr0)
0016d4  8b601110  add.f.rn r1, r2, r1
0016d8  7a11e040  vextracti.f r2, 14(vr0)
0016dc  8b601110  add.f.rn r1, r2, r1
0016e0  7a11f040  vextracti.f r2, 15(vr0)
0016e4  8b601110  add.f.rn r1, r2, r1
0016e8  63415ff6  loadli.w r2,  -1236(r30)
0016ec  73601100  stores.w r1, 0(r2)
0016f0  00a00300  mfence { lm, sm, gm }
0016f4  63024ff6  loadli.w r4,  -1248(r30)
0016f8  80210204  csr_set csr3, r4
0016fc  00d00100  sync_group
001700  6303fff5  loadli.w r6,  -1288(r30)
001704  3b220300  bneq r6, zero, 136
001708  e3426ff6  loadli.w r5,  -1228(r30)
00170c  efc00200  loads.w r1, 0(r5)
001710  6fc14200  loads.w r2, 4(r5)
001714  efc18200  loads.w r3, 8(r5)
001718  8be02010  add.f.rn r1, r1, r2
00171c  6fc1c200  loads.w r2, 12(r5)
001720  8be03010  add.f.rn r1, r1, r3
001724  efc10201  loads.w r3, 16(r5)
001728  8be02010  add.f.rn r1, r1, r2
00172c  6fc14201  loads.w r2, 20(r5)
001730  8be03010  add.f.rn r1, r1, r3
001734  efc18201  loads.w r3, 24(r5)
001738  8be02010  add.f.rn r1, r1, r2
00173c  6fc1c201  loads.w r2, 28(r5)
001740  8be03010  add.f.rn r1, r1, r3
001744  efc10202  loads.w r3, 32(r5)
001748  8be02010  add.f.rn r1, r1, r2
00174c  6fc14202  loads.w r2, 36(r5)
001750  8be03010  add.f.rn r1, r1, r3
001754  efc18202  loads.w r3, 40(r5)
001758  8be02010  add.f.rn r1, r1, r2
00175c  6fc1c202  loads.w r2, 44(r5)
001760  8be03010  add.f.rn r1, r1, r3
001764  efc10203  loads.w r3, 48(r5)
001768  8be02010  add.f.rn r1, r1, r2
00176c  6fc14203  loads.w r2, 52(r5)
001770  8be03010  add.f.rn r1, r1, r3
001774  efc18203  loads.w r3, 56(r5)
001778  8be02010  add.f.rn r1, r1, r2
00177c  6fc1c203  loads.w r2, 60(r5)
001780  8be03010  add.f.rn r1, r1, r3
001784  8be02010  add.f.rn r1, r1, r2
001788  73e01200  stores.w r1, 0(r5)
00178c  0e905202  vmul.f.mz.rn vr0{mr1}, vr5, vr5
001790  8e104202  vmul.f.mz.rn vr1{mr1}, vr4, vr4
001794  0e913102  vmul.f.mz.rn vr2{mr1}, vr3, vr3
001798  9f100000  addli r1, zero, 1
00179c  ab03803a  lui r7, 239616
0017a0  12100002  vadd.f.mz.rn vr0{mr1}, zero, vr0
0017a4  92101002  vadd.f.mz.rn vr1{mr1}, zero, vr1
0017a8  12112002  vadd.f.mz.rn vr2{mr1}, zero, vr2
0017ac  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
0017b0  8e106302  vmul.f.mz.rn vr1{mr1}, vr6, vr6
0017b4  7e8000e0  vmmov mr0, r1
0017b8  92101002  vadd.f.mz.rn vr1{mr1}, zero, vr1
0017bc  00a00300  mfence { lm, sm, gm }
0017c0  80210204  csr_set csr3, r4
0017c4  00d00100  sync_group
0017c8  e3416ff6  loadli.w r3,  -1228(r30)
0017cc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0017d0  efc10100  loads.w r3, 0(r3)
0017d4  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
0017d8  fa100040  vextracti.f r1, 0(vr0)
0017dc  7a111040  vextracti.f r2, 1(vr0)
0017e0  8be02010  add.f.rn r1, r1, r2
0017e4  7a112040  vextracti.f r2, 2(vr0)
0017e8  8be97120  mul.f.rn r19, r3, r7
0017ec  8b601110  add.f.rn r1, r2, r1
0017f0  7a113040  vextracti.f r2, 3(vr0)
0017f4  8b601110  add.f.rn r1, r2, r1
0017f8  7a114040  vextracti.f r2, 4(vr0)
0017fc  8b601110  add.f.rn r1, r2, r1
001800  7a115040  vextracti.f r2, 5(vr0)
001804  8b601110  add.f.rn r1, r2, r1
001808  7a116040  vextracti.f r2, 6(vr0)
00180c  8b601110  add.f.rn r1, r2, r1
001810  7a117040  vextracti.f r2, 7(vr0)
001814  8b601110  add.f.rn r1, r2, r1
001818  7a118040  vextracti.f r2, 8(vr0)
00181c  8b601110  add.f.rn r1, r2, r1
001820  7a119040  vextracti.f r2, 9(vr0)
001824  8b601110  add.f.rn r1, r2, r1
001828  7a11a040  vextracti.f r2, 10(vr0)
00182c  8b601110  add.f.rn r1, r2, r1
001830  7a11b040  vextracti.f r2, 11(vr0)
001834  8b601110  add.f.rn r1, r2, r1
001838  7a11c040  vextracti.f r2, 12(vr0)
00183c  8b601110  add.f.rn r1, r2, r1
001840  7a11d040  vextracti.f r2, 13(vr0)
001844  8b601110  add.f.rn r1, r2, r1
001848  7a11e040  vextracti.f r2, 14(vr0)
00184c  8b601110  add.f.rn r1, r2, r1
001850  7a11f040  vextracti.f r2, 15(vr0)
001854  8b601110  add.f.rn r1, r2, r1
001858  63015ff6  loadli.w r2,  -1240(r30)
00185c  73601100  stores.w r1, 0(r2)
001860  00a00300  mfence { lm, sm, gm }
001864  80210204  csr_set csr3, r4
001868  00d00100  sync_group
00186c  00a00000  mfence { lm }
001870  461c5f82  vstore_mask16.mz vr5{mr1}, 1216(r30)
001874  46104fa2  vstore_mask16.mz vr4{mr1}, 1280(r30)
001878  46143fa2  vstore_mask16.mz vr3{mr1}, 1344(r30)
00187c  46186fa2  vstore_mask16.mz vr6{mr1}, 1408(r30)
001880  bb5503f4  bneq r6, zero, -5772
001884  e3026ff6  loadli.w r5,  -1232(r30)
001888  efc00200  loads.w r1, 0(r5)
00188c  6fc14200  loads.w r2, 4(r5)
001890  efc18200  loads.w r3, 8(r5)
001894  8be02010  add.f.rn r1, r1, r2
001898  6fc1c200  loads.w r2, 12(r5)
00189c  8be03010  add.f.rn r1, r1, r3
0018a0  efc10201  loads.w r3, 16(r5)
0018a4  8be02010  add.f.rn r1, r1, r2
0018a8  6fc14201  loads.w r2, 20(r5)
0018ac  8be03010  add.f.rn r1, r1, r3
0018b0  efc18201  loads.w r3, 24(r5)
0018b4  8be02010  add.f.rn r1, r1, r2
0018b8  6fc1c201  loads.w r2, 28(r5)
0018bc  8be03010  add.f.rn r1, r1, r3
0018c0  efc10202  loads.w r3, 32(r5)
0018c4  8be02010  add.f.rn r1, r1, r2
0018c8  6fc14202  loads.w r2, 36(r5)
0018cc  8be03010  add.f.rn r1, r1, r3
0018d0  efc18202  loads.w r3, 40(r5)
0018d4  8be02010  add.f.rn r1, r1, r2
0018d8  6fc1c202  loads.w r2, 44(r5)
0018dc  8be03010  add.f.rn r1, r1, r3
0018e0  efc10203  loads.w r3, 48(r5)
0018e4  8be02010  add.f.rn r1, r1, r2
0018e8  6fc14203  loads.w r2, 52(r5)
0018ec  8be03010  add.f.rn r1, r1, r3
0018f0  efc18203  loads.w r3, 56(r5)
0018f4  8be02010  add.f.rn r1, r1, r2
0018f8  6fc1c203  loads.w r2, 60(r5)
0018fc  8be03010  add.f.rn r1, r1, r3
001900  8be02010  add.f.rn r1, r1, r2
001904  73e01200  stores.w r1, 0(r5)
001908  db1dfdff  j -5908
00190c  9f0e8ff4  addli sp, r30, -1472
001910  9f8e8e0b  addli sp, sp, 1472
001914  00a00300  mfence { lm, sm, gm }
001918  00100000  exit
00191c  9f8efeff  addli sp, sp, -8
001920  9f000100  addli r1, r2, 0
001924  2bf1ff7f  lui r2, 524287
001928  ab02807f  lui r5, 522240
00192c  67c0ee01  storeli.w r30, 4(sp)
001930  6780fe01  storeli.w r31, 0(sp)
001934  1f8f1e00  addli r30, sp, 8
001938  1b12f1ff  ori r4, r2, 4095
00193c  17814000  and r2, r1, r4
001940  13832204  setlt.u r6, r5, r2
001944  1f810100  addli r2, r3, 0
001948  bb210300  bneq r6, zero, 104
00194c  97014100  and r3, r2, r4
001950  93813204  setlt.u r3, r5, r3
001954  3be10100  bneq r3, zero, 88
001958  abf1ffff  lui r3, 1048575
00195c  17221100  xor r4, r2, r1
001960  9b91f1ff  ori r3, r3, 4095
001964  3fa04100  blt.s r3, r4, 8
001968  5b0b0000  j 88
00196c  9b319100  slli r3, r2, 9
001970  9bb29000  slli r5, r1, 9
001974  1b427101  srli r4, r2, 23
001978  1bc37001  srli r6, r1, 23
00197c  93e32004  setlt.f r7, r1, r2
001980  93810100  seteq r3, r3, zero
001984  93820200  seteq r5, r5, zero
001988  1b02f20f  andi r4, r4, 255
00198c  1b03f30f  andi r6, r6, 255
001990  1b72f20f  setlti r4, r4, 255
001994  1b73f30f  setlti r6, r6, 255
001998  97113200  or r3, r4, r3
00199c  17125300  or r4, r6, r5
0019a0  97013200  and r3, r4, r3
0019a4  97813300  and r3, r7, r3
0019a8  3ba00100  bneq r3, zero, 8
0019ac  1f810000  addli r2, r1, 0
0019b0  e38f0e00  loadli.w r31,  0(sp)
0019b4  63cf0e00  loadli.w r30,  4(sp)
0019b8  9f8e1e00  addli sp, sp, 8
0019bc  5f800f00  jr r31, 0
0019c0  bfcf00fe  blt.s r1, zero, -16
0019c4  5bfdffff  j -24
0019c8  00100000  exit
0019cc  00100000  exit
0019d0  00100000  exit
0019d4  00100000  exit
0019d8  00100000  exit
0019dc  00100000  exit
0019e0  00100000  exit
0019e4  00100000  exit
0019e8  00100000  exit
0019ec  00100000  exit
0019f0  00100000  exit
0019f4  00100000  exit
0019f8  00100000  exit
0019fc  00100000  exit
001a00  00100000  exit
001a04  00100000  exit
001a08  00100000  exit
001a0c  00100000  exit
001a10  00100000  exit
001a14  00100000  exit
001a18  00100000  exit
001a1c  00100000  exit
001a20  00100000  exit
001a24  00100000  exit
001a28  00100000  exit
001a2c  00100000  exit
001a30  00100000  exit
001a34  00100000  exit
001a38  00100000  exit
001a3c  00100000  exit
001a40  00100000  exit
001a44  00100000  exit
001a48  00100000  exit
001a4c  00100000  exit
001a50  00100000  exit
001a54  00100000  exit
001a58  00100000  exit
001a5c  00100000  exit
001a60  00100000  exit
001a64  00100000  exit
001a68  00100000  exit
001a6c  00100000  exit
001a70  00100000  exit
001a74  00100000  exit
001a78  00100000  exit
001a7c  00100000  exit
001a80  00100000  exit
001a84  00100000  exit
001a88  00100000  exit
001a8c  00100000  exit
001a90  00100000  exit
001a94  00100000  exit
001a98  00100000  exit
001a9c  00100000  exit
001aa0  00100000  exit
001aa4  00100000  exit
001aa8  00100000  exit
001aac  00100000  exit
001ab0  00100000  exit
001ab4  00100000  exit
001ab8  00100000  exit
001abc  00100000  exit
001ac0  00100000  exit
001ac4  00100000  exit
001ac8  00100000  exit
001acc  00100000  exit
001ad0  00100000  exit
001ad4  00100000  exit
001ad8  00100000  exit
001adc  00100000  exit
001ae0  00100000  exit
001ae4  00100000  exit
001ae8  00100000  exit
001aec  00100000  exit
001af0  00100000  exit
001af4  00100000  exit
001af8  00100000  exit
001afc  00100000  exit
001b00  00100000  exit
001b04  00100000  exit
001b08  00100000  exit
001b0c  00100000  exit
001b10  00100000  exit
001b14  00100000  exit
001b18  00100000  exit
001b1c  00100000  exit
001b20  00100000  exit
001b24  00100000  exit
001b28  00100000  exit
001b2c  00100000  exit
001b30  00100000  exit
001b34  00100000  exit
001b38  00100000  exit
001b3c  00100000  exit
001b40  00100000  exit
001b44  00100000  exit
001b48  00100000  exit
001b4c  00100000  exit
001b50  00100000  exit
001b54  00100000  exit
001b58  00100000  exit
001b5c  00100000  exit
001b60  00100000  exit
001b64  00100000  exit
001b68  00100000  exit
001b6c  00100000  exit
001b70  00100000  exit
001b74  00100000  exit
001b78  00100000  exit
001b7c  00100000  exit
001b80  00100000  exit
001b84  00100000  exit
001b88  00100000  exit
001b8c  00100000  exit
001b90  00100000  exit
001b94  00100000  exit
001b98  00100000  exit
001b9c  00100000  exit
001ba0  00100000  exit
001ba4  00100000  exit
001ba8  00100000  exit
001bac  00100000  exit
001bb0  00100000  exit
001bb4  00100000  exit
001bb8  00100000  exit
001bbc  00100000  exit
001bc0  00100000  exit
001bc4  00100000  exit
001bc8  00100000  exit
001bcc  00100000  exit
001bd0  00100000  exit
001bd4  00100000  exit
001bd8  00100000  exit
001bdc  00100000  exit
001be0  00100000  exit
001be4  00100000  exit
001be8  00100000  exit
001bec  00100000  exit
001bf0  00100000  exit
001bf4  00100000  exit
001bf8  00100000  exit
001bfc  00100000  exit
001c00  00100000  exit
001c04  00100000  exit
