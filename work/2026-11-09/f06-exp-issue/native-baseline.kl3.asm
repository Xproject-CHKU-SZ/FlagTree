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
000078  9f495000  addli r19, zero, 44
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
0000dc  9f8e8ef0  addli sp, sp, -1984
0000e0  2b010000  lui r2, 0
0000e4  80300002  core_id r1
0000e8  1f8f0e0f  addli r30, sp, 1920
0000ec  abf20000  lui r5, 15
0000f0  9bb12000  slli r3, r1, 2
0000f4  1f010100  addli r2, r2, 0
0000f8  e3434f00  loadli.w r7,  36(r30)
0000fc  63024f00  loadli.w r4,  32(r30)
000100  63035f00  loadli.w r6,  40(r30)
000104  9b96f2ff  ori r13, r5, 4095
000108  0b942110  add.s r8, r3, r2
00010c  0b924320  mul.s r4, r7, r4
000110  9f042420  addli r9, r8, 4112
000114  0b126220  mul.s r4, r4, r6
000118  e70d9ff0  storeli.w r9, -1832(r30)
00011c  73e00400  stores.w zero, 0(r9)
000120  80540002  load_param_i r9, 0
000124  00a00300  mfence { lm, sm, gm }
000128  80a10604  csr_set csr3, r13
00012c  00d00100  sync_group
000130  e74d8ff0  storeli.w r8, -1828(r30)
000134  73600400  stores.w zero, 0(r8)
000138  00a00300  mfence { lm, sm, gm }
00013c  80a10604  csr_set csr3, r13
000140  00d00100  sync_group
000144  e74b4ff0  storeli.w r4, -1860(r30)
000148  cb27920c  ble.s r4, r9, 6632
00014c  1f022000  addli r4, zero, 16
000150  80d30002  load_param_i r7, 1
000154  1f250000  addli r10, zero, 2
000158  eb528f00  load.d r[6:7], 8(r30)
00015c  6e25a562  vxor.u.mz vr10{mr1}, vr10, vr10
000160  674ddff0  storeli.w r13, -1836(r30)
000164  0b924030  div.s r4, r1, r4
000168  e70b7ff0  storeli.w r7, -1864(r30)
00016c  abf3ffff  lui r7, 1048575
000170  9b9303fc  ori r7, r7, 4032
000174  97817100  and r3, r3, r7
000178  1b344200  slli r8, r4, 4
00017c  1b32b200  slli r4, r4, 11
000180  0b948018  sub.s r8, r1, r8
000184  9b80f000  andi r1, r1, 15
000188  9b337400  slli r7, r8, 7
00018c  0b942110  add.s r8, r3, r2
000190  674c1ff0  storeli.w r1, -1852(r30)
000194  33910328  sext_int2long r[3:4], r7
000198  0b924310  add.s r4, r7, r4
00019c  9f002420  addli r1, r8, 4112
0001a0  9f030004  addli r7, zero, 512
0001a4  e70e8ff0  storeli.w r8, -1816(r30)
0001a8  1731a102  sll.d r[3:4], r[3:4], r10
0001ac  674b4ff0  storeli.w r4, -1868(r30)
0001b0  674e1ff0  storeli.w r1, -1820(r30)
0001b4  0ba12210  add.ul r[3:4], r[6:7], r[3:4]
0001b8  1f030ff8  addli r6, r30, -1024
0001bc  73342f8c  store.d r[3:4], -1848(r30)
0001c0  db030000  j 28
0001c4  e3048ff1  loadli.w r9,  -1856(r30)
0001c8  e3007ff1  loadli.w r1,  -1864(r30)
0001cc  8b941410  add.s r9, r9, r1
0001d0  e3407ff1  loadli.w r1,  -1860(r30)
0001d4  3fa01400  blt.s r9, r1, 8
0001d8  5b2b0300  j 6488
0001dc  e3005f00  loadli.w r1,  40(r30)
0001e0  63414f00  loadli.w r2,  36(r30)
0001e4  9f110000  addli r3, zero, 1
0001e8  670c9ff0  storeli.w r9, -1856(r30)
0001ec  8b901430  div.s r1, r9, r1
0001f0  8b902030  div.s r1, r1, r2
0001f4  63416ff1  loadli.w r2,  -1868(r30)
0001f8  9bb0e000  slli r1, r1, 14
0001fc  8b101110  add.s r1, r2, r1
000200  670e1ff0  storeli.w r1, -1824(r30)
000204  9f000000  addli r1, zero, 0
000208  db130000  j 156
00020c  00a00300  mfence { lm, sm, gm }
000210  80a10604  csr_set csr3, r13
000214  00d00100  sync_group
000218  e340cff1  loadli.w r1,  -1820(r30)
00021c  2b01803f  lui r2, 260096
000220  6b520fbf  load.d r[5:6], -1040(r30)
000224  9f030004  addli r7, zero, 512
000228  1f030ff8  addli r6, r30, -1024
00022c  efc00000  loads.w r1, 0(r1)
000230  8f001118  div.f.rn r1, r2, r1
000234  6b510f01  load.d r[3:4], 16(r30)
000238  0a901002  vmul.f.mz.rn vr0{mr1}, r1, vr1
00023c  8a903002  vmul.f.mz.rn vr1{mr1}, r1, vr3
000240  8a915002  vmul.f.mz.rn vr3{mr1}, r1, vr5
000244  8a927002  vmul.f.mz.rn vr5{mr1}, r1, vr7
000248  8a938002  vmul.f.mz.rn vr7{mr1}, r1, vr8
00024c  0a936002  vmul.f.mz.rn vr6{mr1}, r1, vr6
000250  0a924002  vmul.f.mz.rn vr4{mr1}, r1, vr4
000254  0a912002  vmul.f.mz.rn vr2{mr1}, r1, vr2
000258  46100f82  vstore_mask16.mz vr0{mr1}, 1024(r30)
00025c  46141f82  vstore_mask16.mz vr1{mr1}, 1088(r30)
000260  46183f82  vstore_mask16.mz vr3{mr1}, 1152(r30)
000264  461c5f82  vstore_mask16.mz vr5{mr1}, 1216(r30)
000268  46107fa2  vstore_mask16.mz vr7{mr1}, 1280(r30)
00026c  46146fa2  vstore_mask16.mz vr6{mr1}, 1344(r30)
000270  46184fa2  vstore_mask16.mz vr4{mr1}, 1408(r30)
000274  461c2fa2  vstore_mask16.mz vr2{mr1}, 1472(r30)
000278  ab0000f0  lui r1, 983040
00027c  00a00000  mfence { lm }
000280  0b214110  add.ul r[3:4], r[3:4], r[5:6]
000284  97901300  or r1, r7, r1
000288  ff306100  s_lm2gm r1, r6, 0(r[3:4])
00028c  9f010000  addli r3, zero, 0
000290  00a00000  mfence { lm }
000294  e340fff7  loadli.w r1,  -1028(r30)
000298  1b811000  andi r2, r1, 1
00029c  9f000040  addli r1, zero, 8192
0002a0  b71c01fe  beq r2, zero, -220
0002a4  6301cff1  loadli.w r2,  -1824(r30)
0002a8  e74f3ff6  storeli.w r3, -1028(r30)
0002ac  9f220000  addli r5, zero, 2
0002b0  9234a002  vadd.s.mz vr9{mr1}, zero, vr10
0002b4  8b101110  add.s r1, r2, r1
0002b8  2b0100f0  lui r2, 983040
0002bc  b3910028  sext_int2long r[4:5], r1
0002c0  17912300  or r2, r7, r2
0002c4  ab0000f0  lui r1, 983040
0002c8  17b45102  sll.d r[9:10], r[4:5], r5
0002cc  eb510f00  load.d r[4:5], 0(r30)
0002d0  97901300  or r1, r7, r1
0002d4  73388fbe  store.d r[9:10], -1040(r30)
0002d8  8ba18110  add.ul r[4:5], r[4:5], r[9:10]
0002dc  7fa16100  l_gm2lm r2, r6, 0(r[4:5])
0002e0  6b518f8c  load.d r[3:4], -1848(r30)
0002e4  1f020ffc  addli r4, r30, -512
0002e8  ff204100  l_gm2lm r1, r4, 0(r[3:4])
0002ec  9f000ff5  addli r1, r30, -1408
0002f0  00a00000  mfence { lm }
0002f4  42120f82  vload_mask16.mz vr4{mr1}, 1024(r30)
0002f8  c2128f82  vload_mask16.mz vr5{mr1}, 1088(r30)
0002fc  42100f83  vload_mask16.mz vr0{mr1}, 1152(r30)
000300  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000304  9f000ff7  addli r1, r30, -1152
000308  c2138f83  vload_mask16.mz vr7{mr1}, 1216(r30)
00030c  42100fa2  vload_mask16.mz vr0{mr1}, 1280(r30)
000310  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000314  9f008ff6  addli r1, r30, -1216
000318  42108fa2  vload_mask16.mz vr0{mr1}, 1344(r30)
00031c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000320  9f000ff6  addli r1, r30, -1280
000324  42100fa3  vload_mask16.mz vr0{mr1}, 1408(r30)
000328  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00032c  9f008ff5  addli r1, r30, -1344
000330  42108fa3  vload_mask16.mz vr0{mr1}, 1472(r30)
000334  634ebffd  loadli.w r28,  -292(r30)
000338  6341effc  loadli.w r2,  -396(r30)
00033c  e301fffc  loadli.w r3,  -392(r30)
000340  6342fffc  loadli.w r4,  -388(r30)
000344  e3020ffd  loadli.w r5,  -384(r30)
000348  63430ffd  loadli.w r6,  -380(r30)
00034c  e3031ffd  loadli.w r7,  -376(r30)
000350  63441ffd  loadli.w r8,  -372(r30)
000354  e3042ffd  loadli.w r9,  -368(r30)
000358  63452ffd  loadli.w r10,  -364(r30)
00035c  e3053ffd  loadli.w r11,  -360(r30)
000360  63463ffd  loadli.w r12,  -356(r30)
000364  e3064ffd  loadli.w r13,  -352(r30)
000368  63474ffd  loadli.w r14,  -348(r30)
00036c  e3075ffd  loadli.w r15,  -344(r30)
000370  63485ffd  loadli.w r16,  -340(r30)
000374  e3086ffd  loadli.w r17,  -336(r30)
000378  63496ffd  loadli.w r18,  -332(r30)
00037c  e3097ffd  loadli.w r19,  -328(r30)
000380  634a7ffd  loadli.w r20,  -324(r30)
000384  e30a8ffd  loadli.w r21,  -320(r30)
000388  634b8ffd  loadli.w r22,  -316(r30)
00038c  e30b9ffd  loadli.w r23,  -312(r30)
000390  634c9ffd  loadli.w r24,  -308(r30)
000394  e30caffd  loadli.w r25,  -304(r30)
000398  634daffd  loadli.w r26,  -300(r30)
00039c  e30dbffd  loadli.w r27,  -296(r30)
0003a0  e74ecff1  storeli.w r28, -1812(r30)
0003a4  630ecffd  loadli.w r28,  -288(r30)
0003a8  670fcff1  storeli.w r28, -1808(r30)
0003ac  634ecffd  loadli.w r28,  -284(r30)
0003b0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0003b4  e3000ffc  loadli.w r1,  -512(r30)
0003b8  1230a002  vadd.s.mz vr0{mr1}, zero, vr10
0003bc  674fcff1  storeli.w r28, -1804(r30)
0003c0  630edffd  loadli.w r28,  -280(r30)
0003c4  e70a1ff2  storeli.w r1, -1624(r30)
0003c8  e3400ffc  loadli.w r1,  -508(r30)
0003cc  e70fcff1  storeli.w r28, -1800(r30)
0003d0  634edffd  loadli.w r28,  -276(r30)
0003d4  670b1ff2  storeli.w r1, -1616(r30)
0003d8  e3001ffc  loadli.w r1,  -504(r30)
0003dc  e74fcff1  storeli.w r28, -1796(r30)
0003e0  630eeffd  loadli.w r28,  -272(r30)
0003e4  e70b1ff2  storeli.w r1, -1608(r30)
0003e8  e3401ffc  loadli.w r1,  -500(r30)
0003ec  6700cff3  storeli.w r28, -1792(r30)
0003f0  634eeffd  loadli.w r28,  -268(r30)
0003f4  670c1ff2  storeli.w r1, -1600(r30)
0003f8  e3002ffc  loadli.w r1,  -496(r30)
0003fc  6740cff3  storeli.w r28, -1788(r30)
000400  630efffd  loadli.w r28,  -264(r30)
000404  e70c1ff2  storeli.w r1, -1592(r30)
000408  e3402ffc  loadli.w r1,  -492(r30)
00040c  e700cff3  storeli.w r28, -1784(r30)
000410  634efffd  loadli.w r28,  -260(r30)
000414  670d1ff2  storeli.w r1, -1584(r30)
000418  e3003ffc  loadli.w r1,  -488(r30)
00041c  e740cff3  storeli.w r28, -1780(r30)
000420  630e0ffe  loadli.w r28,  -256(r30)
000424  e70d1ff2  storeli.w r1, -1576(r30)
000428  e3403ffc  loadli.w r1,  -484(r30)
00042c  6701cff3  storeli.w r28, -1776(r30)
000430  634e0ffe  loadli.w r28,  -252(r30)
000434  670e1ff2  storeli.w r1, -1568(r30)
000438  e3004ffc  loadli.w r1,  -480(r30)
00043c  6741cff3  storeli.w r28, -1772(r30)
000440  630e1ffe  loadli.w r28,  -248(r30)
000444  e70e1ff2  storeli.w r1, -1560(r30)
000448  e3404ffc  loadli.w r1,  -476(r30)
00044c  e701cff3  storeli.w r28, -1768(r30)
000450  634e1ffe  loadli.w r28,  -244(r30)
000454  670f1ff2  storeli.w r1, -1552(r30)
000458  e3005ffc  loadli.w r1,  -472(r30)
00045c  e741cff3  storeli.w r28, -1764(r30)
000460  630e2ffe  loadli.w r28,  -240(r30)
000464  e70f1ff2  storeli.w r1, -1544(r30)
000468  e3405ffc  loadli.w r1,  -468(r30)
00046c  6702cff3  storeli.w r28, -1760(r30)
000470  634e2ffe  loadli.w r28,  -236(r30)
000474  67001ff4  storeli.w r1, -1536(r30)
000478  e3006ffc  loadli.w r1,  -464(r30)
00047c  6742cff3  storeli.w r28, -1756(r30)
000480  630e3ffe  loadli.w r28,  -232(r30)
000484  e7001ff4  storeli.w r1, -1528(r30)
000488  e3406ffc  loadli.w r1,  -460(r30)
00048c  e702cff3  storeli.w r28, -1752(r30)
000490  634e3ffe  loadli.w r28,  -228(r30)
000494  67011ff4  storeli.w r1, -1520(r30)
000498  e3007ffc  loadli.w r1,  -456(r30)
00049c  e742cff3  storeli.w r28, -1748(r30)
0004a0  630e4ffe  loadli.w r28,  -224(r30)
0004a4  e7011ff4  storeli.w r1, -1512(r30)
0004a8  e3407ffc  loadli.w r1,  -452(r30)
0004ac  6703cff3  storeli.w r28, -1744(r30)
0004b0  634e4ffe  loadli.w r28,  -220(r30)
0004b4  67021ff4  storeli.w r1, -1504(r30)
0004b8  e3008ffc  loadli.w r1,  -448(r30)
0004bc  6743cff3  storeli.w r28, -1740(r30)
0004c0  630e5ffe  loadli.w r28,  -216(r30)
0004c4  e7021ff4  storeli.w r1, -1496(r30)
0004c8  e3408ffc  loadli.w r1,  -444(r30)
0004cc  e703cff3  storeli.w r28, -1736(r30)
0004d0  634e5ffe  loadli.w r28,  -212(r30)
0004d4  67031ff4  storeli.w r1, -1488(r30)
0004d8  e3009ffc  loadli.w r1,  -440(r30)
0004dc  e743cff3  storeli.w r28, -1732(r30)
0004e0  630e6ffe  loadli.w r28,  -208(r30)
0004e4  e7031ff4  storeli.w r1, -1480(r30)
0004e8  e3409ffc  loadli.w r1,  -436(r30)
0004ec  6704cff3  storeli.w r28, -1728(r30)
0004f0  634e6ffe  loadli.w r28,  -204(r30)
0004f4  67041ff4  storeli.w r1, -1472(r30)
0004f8  e300affc  loadli.w r1,  -432(r30)
0004fc  6744cff3  storeli.w r28, -1724(r30)
000500  630e7ffe  loadli.w r28,  -200(r30)
000504  e7041ff4  storeli.w r1, -1464(r30)
000508  e340affc  loadli.w r1,  -428(r30)
00050c  e704cff3  storeli.w r28, -1720(r30)
000510  634e7ffe  loadli.w r28,  -196(r30)
000514  67051ff4  storeli.w r1, -1456(r30)
000518  e300bffc  loadli.w r1,  -424(r30)
00051c  e744cff3  storeli.w r28, -1716(r30)
000520  630e8ffe  loadli.w r28,  -192(r30)
000524  e7051ff4  storeli.w r1, -1448(r30)
000528  e340bffc  loadli.w r1,  -420(r30)
00052c  6705cff3  storeli.w r28, -1712(r30)
000530  634e8ffe  loadli.w r28,  -188(r30)
000534  67061ff4  storeli.w r1, -1440(r30)
000538  e300cffc  loadli.w r1,  -416(r30)
00053c  6745cff3  storeli.w r28, -1708(r30)
000540  630e9ffe  loadli.w r28,  -184(r30)
000544  e7061ff4  storeli.w r1, -1432(r30)
000548  e340cffc  loadli.w r1,  -412(r30)
00054c  e705cff3  storeli.w r28, -1704(r30)
000550  634e9ffe  loadli.w r28,  -180(r30)
000554  e7461ff4  storeli.w r1, -1428(r30)
000558  e300dffc  loadli.w r1,  -408(r30)
00055c  e745cff3  storeli.w r28, -1700(r30)
000560  630eaffe  loadli.w r28,  -176(r30)
000564  67071ff4  storeli.w r1, -1424(r30)
000568  e340dffc  loadli.w r1,  -404(r30)
00056c  6706cff3  storeli.w r28, -1696(r30)
000570  634eaffe  loadli.w r28,  -172(r30)
000574  67471ff4  storeli.w r1, -1420(r30)
000578  e300effc  loadli.w r1,  -400(r30)
00057c  6746cff3  storeli.w r28, -1692(r30)
000580  630ebffe  loadli.w r28,  -168(r30)
000584  e706cff3  storeli.w r28, -1688(r30)
000588  634ebffe  loadli.w r28,  -164(r30)
00058c  e746cff3  storeli.w r28, -1684(r30)
000590  630ecffe  loadli.w r28,  -160(r30)
000594  6707cff3  storeli.w r28, -1680(r30)
000598  634ecffe  loadli.w r28,  -156(r30)
00059c  6747cff3  storeli.w r28, -1676(r30)
0005a0  630edffe  loadli.w r28,  -152(r30)
0005a4  e707cff3  storeli.w r28, -1672(r30)
0005a8  634edffe  loadli.w r28,  -148(r30)
0005ac  e747cff3  storeli.w r28, -1668(r30)
0005b0  630eeffe  loadli.w r28,  -144(r30)
0005b4  6708cff3  storeli.w r28, -1664(r30)
0005b8  634eeffe  loadli.w r28,  -140(r30)
0005bc  6748cff3  storeli.w r28, -1660(r30)
0005c0  630efffe  loadli.w r28,  -136(r30)
0005c4  e708cff3  storeli.w r28, -1656(r30)
0005c8  634efffe  loadli.w r28,  -132(r30)
0005cc  e748cff3  storeli.w r28, -1652(r30)
0005d0  630e0fff  loadli.w r28,  -128(r30)
0005d4  6709cff3  storeli.w r28, -1648(r30)
0005d8  634e0fff  loadli.w r28,  -124(r30)
0005dc  6749cff3  storeli.w r28, -1644(r30)
0005e0  630e1fff  loadli.w r28,  -120(r30)
0005e4  e709cff3  storeli.w r28, -1640(r30)
0005e8  634e1fff  loadli.w r28,  -116(r30)
0005ec  e749cff3  storeli.w r28, -1636(r30)
0005f0  630e2fff  loadli.w r28,  -112(r30)
0005f4  670acff3  storeli.w r28, -1632(r30)
0005f8  634e2fff  loadli.w r28,  -108(r30)
0005fc  674acff3  storeli.w r28, -1628(r30)
000600  630e3fff  loadli.w r28,  -104(r30)
000604  e74acff3  storeli.w r28, -1620(r30)
000608  634e3fff  loadli.w r28,  -100(r30)
00060c  674bcff3  storeli.w r28, -1612(r30)
000610  630e4fff  loadli.w r28,  -96(r30)
000614  e74bcff3  storeli.w r28, -1604(r30)
000618  634e4fff  loadli.w r28,  -92(r30)
00061c  674ccff3  storeli.w r28, -1596(r30)
000620  630e5fff  loadli.w r28,  -88(r30)
000624  e74ccff3  storeli.w r28, -1588(r30)
000628  634e5fff  loadli.w r28,  -84(r30)
00062c  674dcff3  storeli.w r28, -1580(r30)
000630  630e6fff  loadli.w r28,  -80(r30)
000634  e74dcff3  storeli.w r28, -1572(r30)
000638  634e6fff  loadli.w r28,  -76(r30)
00063c  674ecff3  storeli.w r28, -1564(r30)
000640  630e7fff  loadli.w r28,  -72(r30)
000644  e74ecff3  storeli.w r28, -1556(r30)
000648  634e7fff  loadli.w r28,  -68(r30)
00064c  674fcff3  storeli.w r28, -1548(r30)
000650  630e8fff  loadli.w r28,  -64(r30)
000654  e74fcff3  storeli.w r28, -1540(r30)
000658  634e8fff  loadli.w r28,  -60(r30)
00065c  6740cff5  storeli.w r28, -1532(r30)
000660  630e9fff  loadli.w r28,  -56(r30)
000664  e740cff5  storeli.w r28, -1524(r30)
000668  634e9fff  loadli.w r28,  -52(r30)
00066c  6741cff5  storeli.w r28, -1516(r30)
000670  630eafff  loadli.w r28,  -48(r30)
000674  e741cff5  storeli.w r28, -1508(r30)
000678  634eafff  loadli.w r28,  -44(r30)
00067c  6742cff5  storeli.w r28, -1500(r30)
000680  630ebfff  loadli.w r28,  -40(r30)
000684  e742cff5  storeli.w r28, -1492(r30)
000688  634ebfff  loadli.w r28,  -36(r30)
00068c  6743cff5  storeli.w r28, -1484(r30)
000690  630ecfff  loadli.w r28,  -32(r30)
000694  e743cff5  storeli.w r28, -1476(r30)
000698  634ecfff  loadli.w r28,  -28(r30)
00069c  6744cff5  storeli.w r28, -1468(r30)
0006a0  630edfff  loadli.w r28,  -24(r30)
0006a4  e744cff5  storeli.w r28, -1460(r30)
0006a8  634edfff  loadli.w r28,  -20(r30)
0006ac  6745cff5  storeli.w r28, -1452(r30)
0006b0  630eefff  loadli.w r28,  -16(r30)
0006b4  e745cff5  storeli.w r28, -1444(r30)
0006b8  634eefff  loadli.w r28,  -12(r30)
0006bc  6746cff5  storeli.w r28, -1436(r30)
0006c0  630effff  loadli.w r28,  -8(r30)
0006c4  e707cff5  storeli.w r28, -1416(r30)
0006c8  634effff  loadli.w r28,  -4(r30)
0006cc  e747cff5  storeli.w r28, -1412(r30)
0006d0  1f1e0000  addli r28, zero, 1
0006d4  7e010ee0  vmmov mr2, r28
0006d8  630e5ff3  loadli.w r28,  -1624(r30)
0006dc  ea249e34  vor.u.mh vr9{mr2}, r28, vr9
0006e0  1f2e0000  addli r28, zero, 2
0006e4  fe010ee0  vmmov mr3, r28
0006e8  630e6ff3  loadli.w r28,  -1616(r30)
0006ec  ea249e36  vor.u.mh vr9{mr3}, r28, vr9
0006f0  1f4e0000  addli r28, zero, 4
0006f4  7e000ee0  vmmov mr0, r28
0006f8  630e7ff3  loadli.w r28,  -1608(r30)
0006fc  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
000700  1f0e1000  addli r28, zero, 8
000704  7e000ee0  vmmov mr0, r28
000708  630e8ff3  loadli.w r28,  -1600(r30)
00070c  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
000710  1f0e2000  addli r28, zero, 16
000714  7e000ee0  vmmov mr0, r28
000718  630e9ff3  loadli.w r28,  -1592(r30)
00071c  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
000720  1f0e4000  addli r28, zero, 32
000724  7e000ee0  vmmov mr0, r28
000728  630eaff3  loadli.w r28,  -1584(r30)
00072c  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
000730  1f0e8000  addli r28, zero, 64
000734  7e000ee0  vmmov mr0, r28
000738  630ebff3  loadli.w r28,  -1576(r30)
00073c  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
000740  1f0e0001  addli r28, zero, 128
000744  7e000ee0  vmmov mr0, r28
000748  630ecff3  loadli.w r28,  -1568(r30)
00074c  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
000750  1f0e0002  addli r28, zero, 256
000754  7e000ee0  vmmov mr0, r28
000758  630edff3  loadli.w r28,  -1560(r30)
00075c  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
000760  1f0e0004  addli r28, zero, 512
000764  7e000ee0  vmmov mr0, r28
000768  630eeff3  loadli.w r28,  -1552(r30)
00076c  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
000770  1f0e0008  addli r28, zero, 1024
000774  7e000ee0  vmmov mr0, r28
000778  630efff3  loadli.w r28,  -1544(r30)
00077c  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
000780  1f0e0010  addli r28, zero, 2048
000784  7e0100c0  vmmov mr2, mr0
000788  7e000ee0  vmmov mr0, r28
00078c  630e0ff4  loadli.w r28,  -1536(r30)
000790  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
000794  1f0e0020  addli r28, zero, 4096
000798  7e000ee0  vmmov mr0, r28
00079c  630e1ff4  loadli.w r28,  -1528(r30)
0007a0  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
0007a4  1f0e0040  addli r28, zero, 8192
0007a8  1f100000  addli zero, zero, 1
0007ac  7e000ee0  vmmov mr0, r28
0007b0  630e2ff4  loadli.w r28,  -1520(r30)
0007b4  fe0100e0  vmmov mr3, zero
0007b8  17200000  xor zero, zero, zero
0007bc  1f200000  addli zero, zero, 2
0007c0  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
0007c4  2b4e0000  lui r28, 4
0007c8  7e000ee0  vmmov mr0, r28
0007cc  630e3ff4  loadli.w r28,  -1512(r30)
0007d0  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
0007d4  2b8e0000  lui r28, 8
0007d8  7e000ee0  vmmov mr0, r28
0007dc  630e4ff4  loadli.w r28,  -1504(r30)
0007e0  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
0007e4  630e5ff4  loadli.w r28,  -1496(r30)
0007e8  7e0000e0  vmmov mr0, zero
0007ec  17200000  xor zero, zero, zero
0007f0  1f400000  addli zero, zero, 4
0007f4  6a25ae36  vor.u.mh vr10{mr3}, r28, vr10
0007f8  630e6ff4  loadli.w r28,  -1488(r30)
0007fc  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
000800  6a25ae30  vor.u.mh vr10{mr0}, r28, vr10
000804  630e7ff4  loadli.w r28,  -1480(r30)
000808  7e0000e0  vmmov mr0, zero
00080c  17200000  xor zero, zero, zero
000810  1f001000  addli zero, zero, 8
000814  6a25ae30  vor.u.mh vr10{mr0}, r28, vr10
000818  630e8ff4  loadli.w r28,  -1472(r30)
00081c  7e0000e0  vmmov mr0, zero
000820  17200000  xor zero, zero, zero
000824  1f002000  addli zero, zero, 16
000828  6a25ae30  vor.u.mh vr10{mr0}, r28, vr10
00082c  630e9ff4  loadli.w r28,  -1464(r30)
000830  7e0000e0  vmmov mr0, zero
000834  17200000  xor zero, zero, zero
000838  1f004000  addli zero, zero, 32
00083c  6a25ae30  vor.u.mh vr10{mr0}, r28, vr10
000840  630eaff4  loadli.w r28,  -1456(r30)
000844  7e0000e0  vmmov mr0, zero
000848  17200000  xor zero, zero, zero
00084c  1f008000  addli zero, zero, 64
000850  6a25ae30  vor.u.mh vr10{mr0}, r28, vr10
000854  630ebff4  loadli.w r28,  -1448(r30)
000858  7e0000e0  vmmov mr0, zero
00085c  17200000  xor zero, zero, zero
000860  1f000001  addli zero, zero, 128
000864  6a25ae30  vor.u.mh vr10{mr0}, r28, vr10
000868  630ecff4  loadli.w r28,  -1440(r30)
00086c  7e0000e0  vmmov mr0, zero
000870  17200000  xor zero, zero, zero
000874  1f000002  addli zero, zero, 256
000878  6a25ae30  vor.u.mh vr10{mr0}, r28, vr10
00087c  630edff4  loadli.w r28,  -1432(r30)
000880  7e0000e0  vmmov mr0, zero
000884  17200000  xor zero, zero, zero
000888  1f000004  addli zero, zero, 512
00088c  6a25ae30  vor.u.mh vr10{mr0}, r28, vr10
000890  634edff4  loadli.w r28,  -1428(r30)
000894  7e0000e0  vmmov mr0, zero
000898  17200000  xor zero, zero, zero
00089c  1f000010  addli zero, zero, 2048
0008a0  6a25ae30  vor.u.mh vr10{mr0}, r28, vr10
0008a4  630eeff4  loadli.w r28,  -1424(r30)
0008a8  7e0000e0  vmmov mr0, zero
0008ac  17200000  xor zero, zero, zero
0008b0  92350002  vadd.s.mz vr11{mr1}, zero, vr0
0008b4  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0008b8  12340002  vadd.s.mz vr8{mr1}, zero, vr0
0008bc  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0008c0  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0008c4  12330002  vadd.s.mz vr6{mr1}, zero, vr0
0008c8  6a25ae34  vor.u.mh vr10{mr2}, r28, vr10
0008cc  634eeff4  loadli.w r28,  -1420(r30)
0008d0  6a25ae30  vor.u.mh vr10{mr0}, r28, vr10
0008d4  1f0e0020  addli r28, zero, 4096
0008d8  7e010ee0  vmmov mr2, r28
0008dc  7e0001c0  vmmov mr0, mr2
0008e0  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
0008e4  9f000040  addli r1, zero, 8192
0008e8  7e8100e0  vmmov mr2, r1
0008ec  ab400000  lui r1, 4
0008f0  6a25a134  vor.u.mh vr10{mr2}, r2, vr10
0008f4  7e8000e0  vmmov mr0, r1
0008f8  ab800000  lui r1, 8
0008fc  1f010001  addli r2, zero, 128
000900  6aa5a130  vor.u.mh vr10{mr0}, r3, vr10
000904  7e8000e0  vmmov mr0, r1
000908  9f200000  addli r1, zero, 2
00090c  6a25a230  vor.u.mh vr10{mr0}, r4, vr10
000910  eaa5b236  vor.u.mh vr11{mr3}, r5, vr11
000914  7e8000e0  vmmov mr0, r1
000918  9f400000  addli r1, zero, 4
00091c  ea25b330  vor.u.mh vr11{mr0}, r6, vr11
000920  7e8000e0  vmmov mr0, r1
000924  9f001000  addli r1, zero, 8
000928  9692a202  vadd.f.mz.rn vr5{mr1}, vr5, vr10
00092c  eaa5b330  vor.u.mh vr11{mr0}, r7, vr11
000930  7e8000e0  vmmov mr0, r1
000934  9f002000  addli r1, zero, 16
000938  ea25b430  vor.u.mh vr11{mr0}, r8, vr11
00093c  7e8000e0  vmmov mr0, r1
000940  9f004000  addli r1, zero, 32
000944  eaa5b430  vor.u.mh vr11{mr0}, r9, vr11
000948  7e8000e0  vmmov mr0, r1
00094c  9f008000  addli r1, zero, 64
000950  ea25b530  vor.u.mh vr11{mr0}, r10, vr11
000954  7e8000e0  vmmov mr0, r1
000958  9f000001  addli r1, zero, 128
00095c  eaa5b530  vor.u.mh vr11{mr0}, r11, vr11
000960  7e8000e0  vmmov mr0, r1
000964  9f000002  addli r1, zero, 256
000968  ea25b630  vor.u.mh vr11{mr0}, r12, vr11
00096c  7e8000e0  vmmov mr0, r1
000970  9f000004  addli r1, zero, 512
000974  eaa5b630  vor.u.mh vr11{mr0}, r13, vr11
000978  7e8000e0  vmmov mr0, r1
00097c  9f000008  addli r1, zero, 1024
000980  ea25b730  vor.u.mh vr11{mr0}, r14, vr11
000984  7e8000e0  vmmov mr0, r1
000988  9f000010  addli r1, zero, 2048
00098c  eaa5b730  vor.u.mh vr11{mr0}, r15, vr11
000990  7e8000e0  vmmov mr0, r1
000994  9f000020  addli r1, zero, 4096
000998  fe8100e0  vmmov mr3, r1
00099c  ab400000  lui r1, 4
0009a0  ea25b830  vor.u.mh vr11{mr0}, r16, vr11
0009a4  7e8000e0  vmmov mr0, r1
0009a8  ab800000  lui r1, 8
0009ac  eaa5b836  vor.u.mh vr11{mr3}, r17, vr11
0009b0  ea25b934  vor.u.mh vr11{mr2}, r18, vr11
0009b4  eaa5b930  vor.u.mh vr11{mr0}, r19, vr11
0009b8  7e8000e0  vmmov mr0, r1
0009bc  ab800000  lui r1, 8
0009c0  7e8100e0  vmmov mr2, r1
0009c4  9f100000  addli r1, zero, 1
0009c8  ea25ba30  vor.u.mh vr11{mr0}, r20, vr11
0009cc  7e8000e0  vmmov mr0, r1
0009d0  9f200000  addli r1, zero, 2
0009d4  eaa13a30  vor.u.mh vr3{mr0}, r21, vr3
0009d8  7e8000e0  vmmov mr0, r1
0009dc  9f400000  addli r1, zero, 4
0009e0  ea213b30  vor.u.mh vr3{mr0}, r22, vr3
0009e4  7e8000e0  vmmov mr0, r1
0009e8  9f001000  addli r1, zero, 8
0009ec  eaa13b30  vor.u.mh vr3{mr0}, r23, vr3
0009f0  7e8000e0  vmmov mr0, r1
0009f4  9f002000  addli r1, zero, 16
0009f8  ea213c30  vor.u.mh vr3{mr0}, r24, vr3
0009fc  7e8000e0  vmmov mr0, r1
000a00  9f004000  addli r1, zero, 32
000a04  eaa13c30  vor.u.mh vr3{mr0}, r25, vr3
000a08  7e8000e0  vmmov mr0, r1
000a0c  9f008000  addli r1, zero, 64
000a10  ea213d30  vor.u.mh vr3{mr0}, r26, vr3
000a14  7e8000e0  vmmov mr0, r1
000a18  eaa13d30  vor.u.mh vr3{mr0}, r27, vr3
000a1c  e340dff1  loadli.w r1,  -1812(r30)
000a20  7e0001e0  vmmov mr0, r2
000a24  1f010002  addli r2, zero, 256
000a28  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000a2c  e300eff1  loadli.w r1,  -1808(r30)
000a30  7e0001e0  vmmov mr0, r2
000a34  1f010004  addli r2, zero, 512
000a38  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000a3c  e340eff1  loadli.w r1,  -1804(r30)
000a40  7e0001e0  vmmov mr0, r2
000a44  1f010008  addli r2, zero, 1024
000a48  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000a4c  e300fff1  loadli.w r1,  -1800(r30)
000a50  7e0001e0  vmmov mr0, r2
000a54  1f010010  addli r2, zero, 2048
000a58  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000a5c  e340fff1  loadli.w r1,  -1796(r30)
000a60  7e0001e0  vmmov mr0, r2
000a64  1f010040  addli r2, zero, 8192
000a68  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000a6c  e3000ff2  loadli.w r1,  -1792(r30)
000a70  7e0001e0  vmmov mr0, r2
000a74  2b410000  lui r2, 4
000a78  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
000a7c  e3400ff2  loadli.w r1,  -1788(r30)
000a80  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000a84  e3001ff2  loadli.w r1,  -1784(r30)
000a88  7e0001e0  vmmov mr0, r2
000a8c  1f110000  addli r2, zero, 1
000a90  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000a94  e3401ff2  loadli.w r1,  -1780(r30)
000a98  7e0001e0  vmmov mr0, r2
000a9c  1f210000  addli r2, zero, 2
000aa0  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
000aa4  e3002ff2  loadli.w r1,  -1776(r30)
000aa8  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000aac  e3402ff2  loadli.w r1,  -1772(r30)
000ab0  7e0001e0  vmmov mr0, r2
000ab4  1f410000  addli r2, zero, 4
000ab8  96933302  vadd.f.mz.rn vr7{mr1}, vr7, vr3
000abc  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000ac0  e3003ff2  loadli.w r1,  -1768(r30)
000ac4  7e0001e0  vmmov mr0, r2
000ac8  1f011000  addli r2, zero, 8
000acc  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000ad0  e3403ff2  loadli.w r1,  -1764(r30)
000ad4  7e0001e0  vmmov mr0, r2
000ad8  1f012000  addli r2, zero, 16
000adc  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000ae0  e3004ff2  loadli.w r1,  -1760(r30)
000ae4  7e0001e0  vmmov mr0, r2
000ae8  1f014000  addli r2, zero, 32
000aec  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000af0  e3404ff2  loadli.w r1,  -1756(r30)
000af4  7e0001e0  vmmov mr0, r2
000af8  1f018000  addli r2, zero, 64
000afc  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000b00  e3005ff2  loadli.w r1,  -1752(r30)
000b04  7e0001e0  vmmov mr0, r2
000b08  1f010001  addli r2, zero, 128
000b0c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000b10  e3405ff2  loadli.w r1,  -1748(r30)
000b14  7e0001e0  vmmov mr0, r2
000b18  1f010002  addli r2, zero, 256
000b1c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000b20  e3006ff2  loadli.w r1,  -1744(r30)
000b24  7e0001e0  vmmov mr0, r2
000b28  1f010004  addli r2, zero, 512
000b2c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000b30  e3406ff2  loadli.w r1,  -1740(r30)
000b34  7e0001e0  vmmov mr0, r2
000b38  1f010008  addli r2, zero, 1024
000b3c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000b40  e3007ff2  loadli.w r1,  -1736(r30)
000b44  7e0001e0  vmmov mr0, r2
000b48  1f010010  addli r2, zero, 2048
000b4c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000b50  e3407ff2  loadli.w r1,  -1732(r30)
000b54  7e0001e0  vmmov mr0, r2
000b58  1f010040  addli r2, zero, 8192
000b5c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000b60  e3008ff2  loadli.w r1,  -1728(r30)
000b64  7e0001e0  vmmov mr0, r2
000b68  2b410000  lui r2, 4
000b6c  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
000b70  e3408ff2  loadli.w r1,  -1724(r30)
000b74  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000b78  e3009ff2  loadli.w r1,  -1720(r30)
000b7c  7e0001e0  vmmov mr0, r2
000b80  1f110000  addli r2, zero, 1
000b84  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000b88  e3409ff2  loadli.w r1,  -1716(r30)
000b8c  7e0001e0  vmmov mr0, r2
000b90  1f210000  addli r2, zero, 2
000b94  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
000b98  e300aff2  loadli.w r1,  -1712(r30)
000b9c  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000ba0  e340aff2  loadli.w r1,  -1708(r30)
000ba4  7e0001e0  vmmov mr0, r2
000ba8  1f410000  addli r2, zero, 4
000bac  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000bb0  e300bff2  loadli.w r1,  -1704(r30)
000bb4  7e0001e0  vmmov mr0, r2
000bb8  1f011000  addli r2, zero, 8
000bbc  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000bc0  e340bff2  loadli.w r1,  -1700(r30)
000bc4  7e0001e0  vmmov mr0, r2
000bc8  1f012000  addli r2, zero, 16
000bcc  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000bd0  e300cff2  loadli.w r1,  -1696(r30)
000bd4  7e0001e0  vmmov mr0, r2
000bd8  1f014000  addli r2, zero, 32
000bdc  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000be0  e340cff2  loadli.w r1,  -1692(r30)
000be4  7e0001e0  vmmov mr0, r2
000be8  1f018000  addli r2, zero, 64
000bec  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000bf0  e300dff2  loadli.w r1,  -1688(r30)
000bf4  7e0001e0  vmmov mr0, r2
000bf8  1f010001  addli r2, zero, 128
000bfc  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000c00  e340dff2  loadli.w r1,  -1684(r30)
000c04  7e0001e0  vmmov mr0, r2
000c08  1f010002  addli r2, zero, 256
000c0c  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000c10  e300eff2  loadli.w r1,  -1680(r30)
000c14  7e0001e0  vmmov mr0, r2
000c18  1f010004  addli r2, zero, 512
000c1c  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000c20  e340eff2  loadli.w r1,  -1676(r30)
000c24  7e0001e0  vmmov mr0, r2
000c28  1f010008  addli r2, zero, 1024
000c2c  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000c30  e300fff2  loadli.w r1,  -1672(r30)
000c34  7e0001e0  vmmov mr0, r2
000c38  1f010010  addli r2, zero, 2048
000c3c  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000c40  e340fff2  loadli.w r1,  -1668(r30)
000c44  7e0001e0  vmmov mr0, r2
000c48  1f010040  addli r2, zero, 8192
000c4c  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000c50  e3000ff3  loadli.w r1,  -1664(r30)
000c54  7e0001e0  vmmov mr0, r2
000c58  2b410000  lui r2, 4
000c5c  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
000c60  e3400ff3  loadli.w r1,  -1660(r30)
000c64  fe0101e0  vmmov mr3, r2
000c68  1f110000  addli r2, zero, 1
000c6c  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000c70  e3001ff3  loadli.w r1,  -1656(r30)
000c74  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
000c78  e3401ff3  loadli.w r1,  -1652(r30)
000c7c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000c80  7e0001c0  vmmov mr0, mr2
000c84  e3002ff3  loadli.w r1,  -1648(r30)
000c88  7e0101e0  vmmov mr2, r2
000c8c  1f210000  addli r2, zero, 2
000c90  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000c94  e3402ff3  loadli.w r1,  -1644(r30)
000c98  7e0101e0  vmmov mr2, r2
000c9c  1f410000  addli r2, zero, 4
000ca0  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000ca4  e3003ff3  loadli.w r1,  -1640(r30)
000ca8  7e0101e0  vmmov mr2, r2
000cac  1f011000  addli r2, zero, 8
000cb0  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000cb4  e3403ff3  loadli.w r1,  -1636(r30)
000cb8  7e0101e0  vmmov mr2, r2
000cbc  1f012000  addli r2, zero, 16
000cc0  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000cc4  e3004ff3  loadli.w r1,  -1632(r30)
000cc8  7e0101e0  vmmov mr2, r2
000ccc  1f014000  addli r2, zero, 32
000cd0  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000cd4  e3404ff3  loadli.w r1,  -1628(r30)
000cd8  7e0101e0  vmmov mr2, r2
000cdc  1f018000  addli r2, zero, 64
000ce0  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000ce4  e3405ff3  loadli.w r1,  -1620(r30)
000ce8  7e0101e0  vmmov mr2, r2
000cec  1f010001  addli r2, zero, 128
000cf0  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000cf4  e3406ff3  loadli.w r1,  -1612(r30)
000cf8  7e0101e0  vmmov mr2, r2
000cfc  1f010002  addli r2, zero, 256
000d00  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000d04  e3407ff3  loadli.w r1,  -1604(r30)
000d08  7e0101e0  vmmov mr2, r2
000d0c  1f010004  addli r2, zero, 512
000d10  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000d14  e3408ff3  loadli.w r1,  -1596(r30)
000d18  7e0101e0  vmmov mr2, r2
000d1c  1f010008  addli r2, zero, 1024
000d20  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000d24  e3409ff3  loadli.w r1,  -1588(r30)
000d28  7e0101e0  vmmov mr2, r2
000d2c  1f010010  addli r2, zero, 2048
000d30  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000d34  e340aff3  loadli.w r1,  -1580(r30)
000d38  7e0101e0  vmmov mr2, r2
000d3c  1f010020  addli r2, zero, 4096
000d40  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000d44  e340bff3  loadli.w r1,  -1572(r30)
000d48  7e0101e0  vmmov mr2, r2
000d4c  1f010040  addli r2, zero, 8192
000d50  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000d54  e340cff3  loadli.w r1,  -1564(r30)
000d58  7e0101e0  vmmov mr2, r2
000d5c  1f110000  addli r2, zero, 1
000d60  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000d64  e340dff3  loadli.w r1,  -1556(r30)
000d68  7e0101e0  vmmov mr2, r2
000d6c  1f210000  addli r2, zero, 2
000d70  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
000d74  e340eff3  loadli.w r1,  -1548(r30)
000d78  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000d7c  e340fff3  loadli.w r1,  -1540(r30)
000d80  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
000d84  e3400ff4  loadli.w r1,  -1532(r30)
000d88  7e0101e0  vmmov mr2, r2
000d8c  1f410000  addli r2, zero, 4
000d90  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
000d94  e3401ff4  loadli.w r1,  -1524(r30)
000d98  7e0101e0  vmmov mr2, r2
000d9c  1f011000  addli r2, zero, 8
000da0  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
000da4  e3402ff4  loadli.w r1,  -1516(r30)
000da8  7e0101e0  vmmov mr2, r2
000dac  1f012000  addli r2, zero, 16
000db0  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
000db4  e3403ff4  loadli.w r1,  -1508(r30)
000db8  7e0101e0  vmmov mr2, r2
000dbc  1f014000  addli r2, zero, 32
000dc0  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
000dc4  e3404ff4  loadli.w r1,  -1500(r30)
000dc8  7e0101e0  vmmov mr2, r2
000dcc  1f018000  addli r2, zero, 64
000dd0  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
000dd4  e3405ff4  loadli.w r1,  -1492(r30)
000dd8  7e0101e0  vmmov mr2, r2
000ddc  1f010001  addli r2, zero, 128
000de0  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
000de4  e3406ff4  loadli.w r1,  -1484(r30)
000de8  7e0101e0  vmmov mr2, r2
000dec  1f010002  addli r2, zero, 256
000df0  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
000df4  e3407ff4  loadli.w r1,  -1476(r30)
000df8  7e0101e0  vmmov mr2, r2
000dfc  1f010004  addli r2, zero, 512
000e00  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
000e04  e3408ff4  loadli.w r1,  -1468(r30)
000e08  7e0101e0  vmmov mr2, r2
000e0c  1f010008  addli r2, zero, 1024
000e10  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
000e14  e3409ff4  loadli.w r1,  -1460(r30)
000e18  7e0101e0  vmmov mr2, r2
000e1c  1f010010  addli r2, zero, 2048
000e20  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
000e24  e340aff4  loadli.w r1,  -1452(r30)
000e28  7e0101e0  vmmov mr2, r2
000e2c  1f010020  addli r2, zero, 4096
000e30  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
000e34  e340bff4  loadli.w r1,  -1444(r30)
000e38  7e0101e0  vmmov mr2, r2
000e3c  1f010040  addli r2, zero, 8192
000e40  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
000e44  e340cff4  loadli.w r1,  -1436(r30)
000e48  7e0101e0  vmmov mr2, r2
000e4c  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
000e50  e300fff4  loadli.w r1,  -1416(r30)
000e54  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
000e58  9f000ff5  addli r1, r30, -1408
000e5c  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000e60  e340fff4  loadli.w r1,  -1412(r30)
000e64  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000e68  9f000ff7  addli r1, r30, -1152
000e6c  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000e70  9f008ff6  addli r1, r30, -1216
000e74  9694b402  vadd.f.mz.rn vr9{mr1}, vr9, vr11
000e78  16948102  vadd.f.mz.rn vr8{mr1}, vr3, vr8
000e7c  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000e80  9f000ff6  addli r1, r30, -1280
000e84  96952102  vadd.f.mz.rn vr11{mr1}, vr3, vr2
000e88  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000e8c  9f008ff5  addli r1, r30, -1344
000e90  16111102  vadd.f.mz.rn vr2{mr1}, vr2, vr1
000e94  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000e98  9f008ff6  addli r1, r30, -1216
000e9c  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
000ea0  9f000ff7  addli r1, r30, -1152
000ea4  96900002  vadd.f.mz.rn vr1{mr1}, vr1, vr0
000ea8  36105202  vmax.f.mz vr0{mr1}, vr4, vr5
000eac  36109002  vmax.f.mz vr0{mr1}, vr0, vr9
000eb0  36107002  vmax.f.mz vr0{mr1}, vr0, vr7
000eb4  36108002  vmax.f.mz vr0{mr1}, vr0, vr8
000eb8  3610b002  vmax.f.mz vr0{mr1}, vr0, vr11
000ebc  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000ec0  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
000ec4  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000ec8  fa100040  vextracti.f r1, 0(vr0)
000ecc  7a111040  vextracti.f r2, 1(vr0)
000ed0  fa112040  vextracti.f r3, 2(vr0)
000ed4  7a123040  vextracti.f r4, 3(vr0)
000ed8  fa124040  vextracti.f r5, 4(vr0)
000edc  7a135040  vextracti.f r6, 5(vr0)
000ee0  fa136040  vextracti.f r7, 6(vr0)
000ee4  7a147040  vextracti.f r8, 7(vr0)
000ee8  fa148040  vextracti.f r9, 8(vr0)
000eec  7a159040  vextracti.f r10, 9(vr0)
000ef0  fa15a040  vextracti.f r11, 10(vr0)
000ef4  7a16b040  vextracti.f r12, 11(vr0)
000ef8  fa16c040  vextracti.f r13, 12(vr0)
000efc  7a17d040  vextracti.f r14, 13(vr0)
000f00  fa17e040  vextracti.f r15, 14(vr0)
000f04  7a18f040  vextracti.f r16, 15(vr0)
000f08  8be02048  max.f r1, r1, r2
000f0c  6341bff1  loadli.w r2,  -1828(r30)
000f10  8be03048  max.f r1, r1, r3
000f14  8be04048  max.f r1, r1, r4
000f18  8be05048  max.f r1, r1, r5
000f1c  8be06048  max.f r1, r1, r6
000f20  8be07048  max.f r1, r1, r7
000f24  8be08048  max.f r1, r1, r8
000f28  8be09048  max.f r1, r1, r9
000f2c  8be0a048  max.f r1, r1, r10
000f30  8be0b048  max.f r1, r1, r11
000f34  8be0c048  max.f r1, r1, r12
000f38  8be0d048  max.f r1, r1, r13
000f3c  e346aff1  loadli.w r13,  -1836(r30)
000f40  8be0e048  max.f r1, r1, r14
000f44  8be0f048  max.f r1, r1, r15
000f48  8be00049  max.f r1, r1, r16
000f4c  73601100  stores.w r1, 0(r2)
000f50  00a00300  mfence { lm, sm, gm }
000f54  80a10604  csr_set csr3, r13
000f58  00d00100  sync_group
000f5c  e3478ff1  loadli.w r15,  -1852(r30)
000f60  3ba20700  bneq r15, zero, 136
000f64  6307dff1  loadli.w r14,  -1816(r30)
000f68  ef400700  loads.w r1, 0(r14)
000f6c  6f414700  loads.w r2, 4(r14)
000f70  ef418700  loads.w r3, 8(r14)
000f74  6f42c700  loads.w r4, 12(r14)
000f78  ef420701  loads.w r5, 16(r14)
000f7c  6f434701  loads.w r6, 20(r14)
000f80  ef438701  loads.w r7, 24(r14)
000f84  6f44c701  loads.w r8, 28(r14)
000f88  ef440702  loads.w r9, 32(r14)
000f8c  6f454702  loads.w r10, 36(r14)
000f90  ef458702  loads.w r11, 40(r14)
000f94  6f46c703  loads.w r12, 60(r14)
000f98  8be02048  max.f r1, r1, r2
000f9c  6f41c702  loads.w r2, 44(r14)
000fa0  8be03048  max.f r1, r1, r3
000fa4  ef410703  loads.w r3, 48(r14)
000fa8  8be04048  max.f r1, r1, r4
000fac  6f424703  loads.w r4, 52(r14)
000fb0  8be05048  max.f r1, r1, r5
000fb4  ef428703  loads.w r5, 56(r14)
000fb8  8be06048  max.f r1, r1, r6
000fbc  8be07048  max.f r1, r1, r7
000fc0  8be08048  max.f r1, r1, r8
000fc4  8be09048  max.f r1, r1, r9
000fc8  8be0a048  max.f r1, r1, r10
000fcc  8be0b048  max.f r1, r1, r11
000fd0  8be02048  max.f r1, r1, r2
000fd4  8be03048  max.f r1, r1, r3
000fd8  8be04048  max.f r1, r1, r4
000fdc  8be05048  max.f r1, r1, r5
000fe0  8be0c048  max.f r1, r1, r12
000fe4  73601700  stores.w r1, 0(r14)
000fe8  00a00300  mfence { lm, sm, gm }
000fec  80a10604  csr_set csr3, r13
000ff0  00d00100  sync_group
000ff4  e300dff1  loadli.w r1,  -1816(r30)
000ff8  2b010080  lui r2, 524288
000ffc  12356002  vadd.s.mz vr10{mr1}, zero, vr6
001000  9f120000  addli r5, zero, 1
001004  1f030040  addli r6, zero, 8192
001008  7e8102e0  vmmov mr2, r5
00100c  9f220000  addli r5, zero, 2
001010  efc00000  loads.w r1, 0(r1)
001014  9230a002  vadd.s.mz vr1{mr1}, zero, vr10
001018  9231a002  vadd.s.mz vr3{mr1}, zero, vr10
00101c  97a02000  xor r1, r1, r2
001020  12904002  vadd.f.mz.rn vr0{mr1}, r1, vr4
001024  7a110040  vextracti.f r2, 0(vr0)
001028  fa111040  vextracti.f r3, 1(vr0)
00102c  7a122040  vextracti.f r4, 2(vr0)
001030  12915002  vadd.f.mz.rn vr2{mr1}, r1, vr5
001034  9232a002  vadd.s.mz vr5{mr1}, zero, vr10
001038  1232a002  vadd.s.mz vr4{mr1}, zero, vr10
00103c  0f010100  exp.f.rn r2, r2
001040  8f810100  exp.f.rn r3, r3
001044  ea201134  vor.u.mh vr1{mr2}, r2, vr1
001048  0f010200  exp.f.rn r2, r4
00104c  7a123040  vextracti.f r4, 3(vr0)
001050  7e8102e0  vmmov mr2, r5
001054  9f420000  addli r5, zero, 4
001058  eaa01134  vor.u.mh vr1{mr2}, r3, vr1
00105c  8f010200  exp.f.rn r3, r4
001060  7a124040  vextracti.f r4, 4(vr0)
001064  7e8102e0  vmmov mr2, r5
001068  9f021000  addli r5, zero, 8
00106c  ea201134  vor.u.mh vr1{mr2}, r2, vr1
001070  0f010200  exp.f.rn r2, r4
001074  7a125040  vextracti.f r4, 5(vr0)
001078  7e8102e0  vmmov mr2, r5
00107c  9f022000  addli r5, zero, 16
001080  eaa01134  vor.u.mh vr1{mr2}, r3, vr1
001084  8f010200  exp.f.rn r3, r4
001088  7a126040  vextracti.f r4, 6(vr0)
00108c  7e8102e0  vmmov mr2, r5
001090  9f024000  addli r5, zero, 32
001094  ea201134  vor.u.mh vr1{mr2}, r2, vr1
001098  0f010200  exp.f.rn r2, r4
00109c  7a127040  vextracti.f r4, 7(vr0)
0010a0  7e8102e0  vmmov mr2, r5
0010a4  9f028000  addli r5, zero, 64
0010a8  eaa01134  vor.u.mh vr1{mr2}, r3, vr1
0010ac  8f010200  exp.f.rn r3, r4
0010b0  7a128040  vextracti.f r4, 8(vr0)
0010b4  7e8102e0  vmmov mr2, r5
0010b8  9f020001  addli r5, zero, 128
0010bc  ea201134  vor.u.mh vr1{mr2}, r2, vr1
0010c0  0f010200  exp.f.rn r2, r4
0010c4  7a129040  vextracti.f r4, 9(vr0)
0010c8  7e8102e0  vmmov mr2, r5
0010cc  9f020002  addli r5, zero, 256
0010d0  fe8102e0  vmmov mr3, r5
0010d4  9f020004  addli r5, zero, 512
0010d8  eaa01134  vor.u.mh vr1{mr2}, r3, vr1
0010dc  8f010200  exp.f.rn r3, r4
0010e0  7a12a040  vextracti.f r4, 10(vr0)
0010e4  7e8002e0  vmmov mr0, r5
0010e8  9f020008  addli r5, zero, 1024
0010ec  7e8102e0  vmmov mr2, r5
0010f0  9f020010  addli r5, zero, 2048
0010f4  ea201136  vor.u.mh vr1{mr3}, r2, vr1
0010f8  0f010200  exp.f.rn r2, r4
0010fc  7a12b040  vextracti.f r4, 11(vr0)
001100  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
001104  8f010200  exp.f.rn r3, r4
001108  7a12c040  vextracti.f r4, 12(vr0)
00110c  ea201134  vor.u.mh vr1{mr2}, r2, vr1
001110  0f010200  exp.f.rn r2, r4
001114  7a12d040  vextracti.f r4, 13(vr0)
001118  7e8102e0  vmmov mr2, r5
00111c  9f020020  addli r5, zero, 4096
001120  eaa01134  vor.u.mh vr1{mr2}, r3, vr1
001124  8f010200  exp.f.rn r3, r4
001128  7a12e040  vextracti.f r4, 14(vr0)
00112c  7e8102e0  vmmov mr2, r5
001130  fa120140  vextracti.f r5, 0(vr2)
001134  ea201134  vor.u.mh vr1{mr2}, r2, vr1
001138  0f010200  exp.f.rn r2, r4
00113c  7a12f040  vextracti.f r4, 15(vr0)
001140  7e0103e0  vmmov mr2, r6
001144  2b430000  lui r6, 4
001148  12909002  vadd.f.mz.rn vr0{mr1}, r1, vr9
00114c  eaa01134  vor.u.mh vr1{mr2}, r3, vr1
001150  8f010200  exp.f.rn r3, r4
001154  7e0103e0  vmmov mr2, r6
001158  0f820200  exp.f.rn r4, r5
00115c  fa121140  vextracti.f r5, 1(vr2)
001160  2b830000  lui r6, 8
001164  ea201134  vor.u.mh vr1{mr2}, r2, vr1
001168  7e0103e0  vmmov mr2, r6
00116c  0f810200  exp.f.rn r2, r5
001170  fa122140  vextracti.f r5, 2(vr2)
001174  1f030040  addli r6, zero, 8192
001178  eaa01134  vor.u.mh vr1{mr2}, r3, vr1
00117c  9f110000  addli r3, zero, 1
001180  7e8101e0  vmmov mr2, r3
001184  8f810200  exp.f.rn r3, r5
001188  9f220000  addli r5, zero, 2
00118c  ea213234  vor.u.mh vr3{mr2}, r4, vr3
001190  7a123140  vextracti.f r4, 3(vr2)
001194  7e8102e0  vmmov mr2, r5
001198  9f420000  addli r5, zero, 4
00119c  ea213134  vor.u.mh vr3{mr2}, r2, vr3
0011a0  0f010200  exp.f.rn r2, r4
0011a4  7a124140  vextracti.f r4, 4(vr2)
0011a8  7e8102e0  vmmov mr2, r5
0011ac  9f021000  addli r5, zero, 8
0011b0  eaa13134  vor.u.mh vr3{mr2}, r3, vr3
0011b4  8f010200  exp.f.rn r3, r4
0011b8  7a125140  vextracti.f r4, 5(vr2)
0011bc  7e8102e0  vmmov mr2, r5
0011c0  9f022000  addli r5, zero, 16
0011c4  ea213134  vor.u.mh vr3{mr2}, r2, vr3
0011c8  0f010200  exp.f.rn r2, r4
0011cc  7a126140  vextracti.f r4, 6(vr2)
0011d0  7e8102e0  vmmov mr2, r5
0011d4  9f024000  addli r5, zero, 32
0011d8  eaa13134  vor.u.mh vr3{mr2}, r3, vr3
0011dc  8f010200  exp.f.rn r3, r4
0011e0  7a127140  vextracti.f r4, 7(vr2)
0011e4  7e8102e0  vmmov mr2, r5
0011e8  9f028000  addli r5, zero, 64
0011ec  ea213134  vor.u.mh vr3{mr2}, r2, vr3
0011f0  0f010200  exp.f.rn r2, r4
0011f4  7a128140  vextracti.f r4, 8(vr2)
0011f8  7e8102e0  vmmov mr2, r5
0011fc  9f020001  addli r5, zero, 128
001200  eaa13134  vor.u.mh vr3{mr2}, r3, vr3
001204  8f010200  exp.f.rn r3, r4
001208  7a129140  vextracti.f r4, 9(vr2)
00120c  7e8102e0  vmmov mr2, r5
001210  9f020008  addli r5, zero, 1024
001214  ea213134  vor.u.mh vr3{mr2}, r2, vr3
001218  0f010200  exp.f.rn r2, r4
00121c  7a12a140  vextracti.f r4, 10(vr2)
001220  eaa13136  vor.u.mh vr3{mr3}, r3, vr3
001224  8f010200  exp.f.rn r3, r4
001228  7a12b140  vextracti.f r4, 11(vr2)
00122c  fe8102e0  vmmov mr3, r5
001230  9f020010  addli r5, zero, 2048
001234  ea213130  vor.u.mh vr3{mr0}, r2, vr3
001238  0f010200  exp.f.rn r2, r4
00123c  7a12c140  vextracti.f r4, 12(vr2)
001240  7e8002e0  vmmov mr0, r5
001244  9f020020  addli r5, zero, 4096
001248  7e8102e0  vmmov mr2, r5
00124c  fa120040  vextracti.f r5, 0(vr0)
001250  eaa13136  vor.u.mh vr3{mr3}, r3, vr3
001254  8f010200  exp.f.rn r3, r4
001258  7a12d140  vextracti.f r4, 13(vr2)
00125c  ea213130  vor.u.mh vr3{mr0}, r2, vr3
001260  0f010200  exp.f.rn r2, r4
001264  7a12e140  vextracti.f r4, 14(vr2)
001268  7e0003e0  vmmov mr0, r6
00126c  2b430000  lui r6, 4
001270  eaa13134  vor.u.mh vr3{mr2}, r3, vr3
001274  8f010200  exp.f.rn r3, r4
001278  7a12f140  vextracti.f r4, 15(vr2)
00127c  12917002  vadd.f.mz.rn vr2{mr1}, r1, vr7
001280  9233a002  vadd.s.mz vr7{mr1}, zero, vr10
001284  ea213130  vor.u.mh vr3{mr0}, r2, vr3
001288  0f010200  exp.f.rn r2, r4
00128c  7e0003e0  vmmov mr0, r6
001290  0f820200  exp.f.rn r4, r5
001294  fa121040  vextracti.f r5, 1(vr0)
001298  2b830000  lui r6, 8
00129c  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
0012a0  7e0003e0  vmmov mr0, r6
0012a4  8f810200  exp.f.rn r3, r5
0012a8  fa122040  vextracti.f r5, 2(vr0)
0012ac  1f030040  addli r6, zero, 8192
0012b0  ea213130  vor.u.mh vr3{mr0}, r2, vr3
0012b4  1f110000  addli r2, zero, 1
0012b8  7e0001e0  vmmov mr0, r2
0012bc  0f810200  exp.f.rn r2, r5
0012c0  9f220000  addli r5, zero, 2
0012c4  ea225230  vor.u.mh vr5{mr0}, r4, vr5
0012c8  7a123040  vextracti.f r4, 3(vr0)
0012cc  7e8002e0  vmmov mr0, r5
0012d0  9f420000  addli r5, zero, 4
0012d4  eaa25130  vor.u.mh vr5{mr0}, r3, vr5
0012d8  8f010200  exp.f.rn r3, r4
0012dc  7a124040  vextracti.f r4, 4(vr0)
0012e0  7e8002e0  vmmov mr0, r5
0012e4  9f021000  addli r5, zero, 8
0012e8  ea225130  vor.u.mh vr5{mr0}, r2, vr5
0012ec  0f010200  exp.f.rn r2, r4
0012f0  7a125040  vextracti.f r4, 5(vr0)
0012f4  7e8002e0  vmmov mr0, r5
0012f8  9f022000  addli r5, zero, 16
0012fc  eaa25130  vor.u.mh vr5{mr0}, r3, vr5
001300  8f010200  exp.f.rn r3, r4
001304  7a126040  vextracti.f r4, 6(vr0)
001308  7e8002e0  vmmov mr0, r5
00130c  9f024000  addli r5, zero, 32
001310  ea225130  vor.u.mh vr5{mr0}, r2, vr5
001314  0f010200  exp.f.rn r2, r4
001318  7a127040  vextracti.f r4, 7(vr0)
00131c  7e8002e0  vmmov mr0, r5
001320  9f028000  addli r5, zero, 64
001324  eaa25130  vor.u.mh vr5{mr0}, r3, vr5
001328  8f010200  exp.f.rn r3, r4
00132c  7a128040  vextracti.f r4, 8(vr0)
001330  7e8002e0  vmmov mr0, r5
001334  9f020001  addli r5, zero, 128
001338  ea225130  vor.u.mh vr5{mr0}, r2, vr5
00133c  0f010200  exp.f.rn r2, r4
001340  7a129040  vextracti.f r4, 9(vr0)
001344  7e8002e0  vmmov mr0, r5
001348  9f020002  addli r5, zero, 256
00134c  eaa25130  vor.u.mh vr5{mr0}, r3, vr5
001350  8f010200  exp.f.rn r3, r4
001354  7a12a040  vextracti.f r4, 10(vr0)
001358  7e8002e0  vmmov mr0, r5
00135c  9f020004  addli r5, zero, 512
001360  ea225130  vor.u.mh vr5{mr0}, r2, vr5
001364  0f010200  exp.f.rn r2, r4
001368  7a12b040  vextracti.f r4, 11(vr0)
00136c  7e8002e0  vmmov mr0, r5
001370  9f020010  addli r5, zero, 2048
001374  eaa25130  vor.u.mh vr5{mr0}, r3, vr5
001378  8f010200  exp.f.rn r3, r4
00137c  7a12c040  vextracti.f r4, 12(vr0)
001380  7e8002e0  vmmov mr0, r5
001384  fa120140  vextracti.f r5, 0(vr2)
001388  ea225136  vor.u.mh vr5{mr3}, r2, vr5
00138c  0f010200  exp.f.rn r2, r4
001390  7a12d040  vextracti.f r4, 13(vr0)
001394  eaa25130  vor.u.mh vr5{mr0}, r3, vr5
001398  8f010200  exp.f.rn r3, r4
00139c  7a12e040  vextracti.f r4, 14(vr0)
0013a0  7e0003e0  vmmov mr0, r6
0013a4  2b430000  lui r6, 4
0013a8  ea225134  vor.u.mh vr5{mr2}, r2, vr5
0013ac  0f010200  exp.f.rn r2, r4
0013b0  7a12f040  vextracti.f r4, 15(vr0)
0013b4  12908002  vadd.f.mz.rn vr0{mr1}, r1, vr8
0013b8  1234a002  vadd.s.mz vr8{mr1}, zero, vr10
0013bc  eaa25130  vor.u.mh vr5{mr0}, r3, vr5
0013c0  8f010200  exp.f.rn r3, r4
0013c4  7e0003e0  vmmov mr0, r6
0013c8  0f820200  exp.f.rn r4, r5
0013cc  fa121140  vextracti.f r5, 1(vr2)
0013d0  2b830000  lui r6, 8
0013d4  ea225130  vor.u.mh vr5{mr0}, r2, vr5
0013d8  7e0003e0  vmmov mr0, r6
0013dc  0f810200  exp.f.rn r2, r5
0013e0  fa122140  vextracti.f r5, 2(vr2)
0013e4  1f030040  addli r6, zero, 8192
0013e8  eaa25130  vor.u.mh vr5{mr0}, r3, vr5
0013ec  9f110000  addli r3, zero, 1
0013f0  7e8001e0  vmmov mr0, r3
0013f4  8f810200  exp.f.rn r3, r5
0013f8  9f220000  addli r5, zero, 2
0013fc  ea237230  vor.u.mh vr7{mr0}, r4, vr7
001400  7a123140  vextracti.f r4, 3(vr2)
001404  7e8002e0  vmmov mr0, r5
001408  9f420000  addli r5, zero, 4
00140c  ea237130  vor.u.mh vr7{mr0}, r2, vr7
001410  0f010200  exp.f.rn r2, r4
001414  7a124140  vextracti.f r4, 4(vr2)
001418  7e8002e0  vmmov mr0, r5
00141c  9f021000  addli r5, zero, 8
001420  eaa37130  vor.u.mh vr7{mr0}, r3, vr7
001424  8f010200  exp.f.rn r3, r4
001428  7a125140  vextracti.f r4, 5(vr2)
00142c  7e8002e0  vmmov mr0, r5
001430  9f022000  addli r5, zero, 16
001434  ea237130  vor.u.mh vr7{mr0}, r2, vr7
001438  0f010200  exp.f.rn r2, r4
00143c  7a126140  vextracti.f r4, 6(vr2)
001440  7e8002e0  vmmov mr0, r5
001444  9f024000  addli r5, zero, 32
001448  eaa37130  vor.u.mh vr7{mr0}, r3, vr7
00144c  8f010200  exp.f.rn r3, r4
001450  7a127140  vextracti.f r4, 7(vr2)
001454  7e8002e0  vmmov mr0, r5
001458  9f028000  addli r5, zero, 64
00145c  ea237130  vor.u.mh vr7{mr0}, r2, vr7
001460  0f010200  exp.f.rn r2, r4
001464  7a128140  vextracti.f r4, 8(vr2)
001468  7e8002e0  vmmov mr0, r5
00146c  9f020001  addli r5, zero, 128
001470  eaa37130  vor.u.mh vr7{mr0}, r3, vr7
001474  8f010200  exp.f.rn r3, r4
001478  7a129140  vextracti.f r4, 9(vr2)
00147c  7e8002e0  vmmov mr0, r5
001480  9f020002  addli r5, zero, 256
001484  ea237130  vor.u.mh vr7{mr0}, r2, vr7
001488  0f010200  exp.f.rn r2, r4
00148c  7a12a140  vextracti.f r4, 10(vr2)
001490  7e8002e0  vmmov mr0, r5
001494  9f020004  addli r5, zero, 512
001498  eaa37130  vor.u.mh vr7{mr0}, r3, vr7
00149c  8f010200  exp.f.rn r3, r4
0014a0  7a12b140  vextracti.f r4, 11(vr2)
0014a4  7e8002e0  vmmov mr0, r5
0014a8  9f020010  addli r5, zero, 2048
0014ac  ea237130  vor.u.mh vr7{mr0}, r2, vr7
0014b0  0f010200  exp.f.rn r2, r4
0014b4  7a12c140  vextracti.f r4, 12(vr2)
0014b8  7e8002e0  vmmov mr0, r5
0014bc  fa120040  vextracti.f r5, 0(vr0)
0014c0  eaa37136  vor.u.mh vr7{mr3}, r3, vr7
0014c4  8f010200  exp.f.rn r3, r4
0014c8  7a12d140  vextracti.f r4, 13(vr2)
0014cc  ea237130  vor.u.mh vr7{mr0}, r2, vr7
0014d0  0f010200  exp.f.rn r2, r4
0014d4  7a12e140  vextracti.f r4, 14(vr2)
0014d8  eaa37134  vor.u.mh vr7{mr2}, r3, vr7
0014dc  8f010200  exp.f.rn r3, r4
0014e0  7a12f140  vextracti.f r4, 15(vr2)
0014e4  7e0103e0  vmmov mr2, r6
0014e8  2b430000  lui r6, 4
0014ec  1291b002  vadd.f.mz.rn vr2{mr1}, r1, vr11
0014f0  7e0003e0  vmmov mr0, r6
0014f4  2b830000  lui r6, 8
0014f8  ea237134  vor.u.mh vr7{mr2}, r2, vr7
0014fc  0f010200  exp.f.rn r2, r4
001500  0f820200  exp.f.rn r4, r5
001504  fa121040  vextracti.f r5, 1(vr0)
001508  eaa37130  vor.u.mh vr7{mr0}, r3, vr7
00150c  7e0003e0  vmmov mr0, r6
001510  8f810200  exp.f.rn r3, r5
001514  fa122040  vextracti.f r5, 2(vr0)
001518  2b430000  lui r6, 4
00151c  ea237130  vor.u.mh vr7{mr0}, r2, vr7
001520  1f110000  addli r2, zero, 1
001524  fe0101e0  vmmov mr3, r2
001528  0f810200  exp.f.rn r2, r5
00152c  9f220000  addli r5, zero, 2
001530  6a248236  vor.u.mh vr8{mr3}, r4, vr8
001534  7a123040  vextracti.f r4, 3(vr0)
001538  fe8102e0  vmmov mr3, r5
00153c  9f420000  addli r5, zero, 4
001540  6aa48136  vor.u.mh vr8{mr3}, r3, vr8
001544  8f010200  exp.f.rn r3, r4
001548  7a124040  vextracti.f r4, 4(vr0)
00154c  fe8102e0  vmmov mr3, r5
001550  9f021000  addli r5, zero, 8
001554  6a248136  vor.u.mh vr8{mr3}, r2, vr8
001558  0f010200  exp.f.rn r2, r4
00155c  7a125040  vextracti.f r4, 5(vr0)
001560  fe8102e0  vmmov mr3, r5
001564  9f022000  addli r5, zero, 16
001568  6aa48136  vor.u.mh vr8{mr3}, r3, vr8
00156c  8f010200  exp.f.rn r3, r4
001570  7a126040  vextracti.f r4, 6(vr0)
001574  fe8102e0  vmmov mr3, r5
001578  9f024000  addli r5, zero, 32
00157c  6a248136  vor.u.mh vr8{mr3}, r2, vr8
001580  0f010200  exp.f.rn r2, r4
001584  7a127040  vextracti.f r4, 7(vr0)
001588  fe8102e0  vmmov mr3, r5
00158c  9f028000  addli r5, zero, 64
001590  7e8002e0  vmmov mr0, r5
001594  9f020001  addli r5, zero, 128
001598  6aa48136  vor.u.mh vr8{mr3}, r3, vr8
00159c  8f010200  exp.f.rn r3, r4
0015a0  7a128040  vextracti.f r4, 8(vr0)
0015a4  fe8102e0  vmmov mr3, r5
0015a8  9f020002  addli r5, zero, 256
0015ac  6a248130  vor.u.mh vr8{mr0}, r2, vr8
0015b0  0f010200  exp.f.rn r2, r4
0015b4  7a129040  vextracti.f r4, 9(vr0)
0015b8  7e8002e0  vmmov mr0, r5
0015bc  9f020004  addli r5, zero, 512
0015c0  6aa48136  vor.u.mh vr8{mr3}, r3, vr8
0015c4  8f010200  exp.f.rn r3, r4
0015c8  7a12a040  vextracti.f r4, 10(vr0)
0015cc  6a248130  vor.u.mh vr8{mr0}, r2, vr8
0015d0  0f010200  exp.f.rn r2, r4
0015d4  7a12b040  vextracti.f r4, 11(vr0)
0015d8  7e8002e0  vmmov mr0, r5
0015dc  9f020008  addli r5, zero, 1024
0015e0  6aa48130  vor.u.mh vr8{mr0}, r3, vr8
0015e4  8f010200  exp.f.rn r3, r4
0015e8  7a12c040  vextracti.f r4, 12(vr0)
0015ec  7e8002e0  vmmov mr0, r5
0015f0  9f020010  addli r5, zero, 2048
0015f4  6a248130  vor.u.mh vr8{mr0}, r2, vr8
0015f8  0f010200  exp.f.rn r2, r4
0015fc  7a12d040  vextracti.f r4, 13(vr0)
001600  7e8002e0  vmmov mr0, r5
001604  9f020020  addli r5, zero, 4096
001608  6aa48130  vor.u.mh vr8{mr0}, r3, vr8
00160c  8f010200  exp.f.rn r3, r4
001610  7a12e040  vextracti.f r4, 14(vr0)
001614  7e8002e0  vmmov mr0, r5
001618  fa120140  vextracti.f r5, 0(vr2)
00161c  6a248130  vor.u.mh vr8{mr0}, r2, vr8
001620  0f010200  exp.f.rn r2, r4
001624  7a12f040  vextracti.f r4, 15(vr0)
001628  7e0003e0  vmmov mr0, r6
00162c  2b830000  lui r6, 8
001630  6aa48134  vor.u.mh vr8{mr2}, r3, vr8
001634  8f010200  exp.f.rn r3, r4
001638  0f820200  exp.f.rn r4, r5
00163c  fa121140  vextracti.f r5, 1(vr2)
001640  7e0103e0  vmmov mr2, r6
001644  1f030040  addli r6, zero, 8192
001648  6a248130  vor.u.mh vr8{mr0}, r2, vr8
00164c  0f810200  exp.f.rn r2, r5
001650  fa122140  vextracti.f r5, 2(vr2)
001654  6aa48134  vor.u.mh vr8{mr2}, r3, vr8
001658  9f110000  addli r3, zero, 1
00165c  7e8001e0  vmmov mr0, r3
001660  8f810200  exp.f.rn r3, r5
001664  9f220000  addli r5, zero, 2
001668  6a236230  vor.u.mh vr6{mr0}, r4, vr6
00166c  7a123140  vextracti.f r4, 3(vr2)
001670  7e8002e0  vmmov mr0, r5
001674  9f420000  addli r5, zero, 4
001678  6a236130  vor.u.mh vr6{mr0}, r2, vr6
00167c  0f010200  exp.f.rn r2, r4
001680  7a124140  vextracti.f r4, 4(vr2)
001684  7e8002e0  vmmov mr0, r5
001688  9f021000  addli r5, zero, 8
00168c  6aa36130  vor.u.mh vr6{mr0}, r3, vr6
001690  8f010200  exp.f.rn r3, r4
001694  7a125140  vextracti.f r4, 5(vr2)
001698  7e8002e0  vmmov mr0, r5
00169c  9f022000  addli r5, zero, 16
0016a0  6a236130  vor.u.mh vr6{mr0}, r2, vr6
0016a4  0f010200  exp.f.rn r2, r4
0016a8  7a126140  vextracti.f r4, 6(vr2)
0016ac  7e8002e0  vmmov mr0, r5
0016b0  9f024000  addli r5, zero, 32
0016b4  6aa36130  vor.u.mh vr6{mr0}, r3, vr6
0016b8  8f010200  exp.f.rn r3, r4
0016bc  7a127140  vextracti.f r4, 7(vr2)
0016c0  7e8002e0  vmmov mr0, r5
0016c4  9f028000  addli r5, zero, 64
0016c8  6a236130  vor.u.mh vr6{mr0}, r2, vr6
0016cc  0f010200  exp.f.rn r2, r4
0016d0  7a128140  vextracti.f r4, 8(vr2)
0016d4  7e8002e0  vmmov mr0, r5
0016d8  9f020002  addli r5, zero, 256
0016dc  6aa36130  vor.u.mh vr6{mr0}, r3, vr6
0016e0  8f010200  exp.f.rn r3, r4
0016e4  7a129140  vextracti.f r4, 9(vr2)
0016e8  7e8002e0  vmmov mr0, r5
0016ec  9f020004  addli r5, zero, 512
0016f0  6a236136  vor.u.mh vr6{mr3}, r2, vr6
0016f4  0f010200  exp.f.rn r2, r4
0016f8  7a12a140  vextracti.f r4, 10(vr2)
0016fc  6aa36130  vor.u.mh vr6{mr0}, r3, vr6
001700  8f010200  exp.f.rn r3, r4
001704  7a12b140  vextracti.f r4, 11(vr2)
001708  7e8002e0  vmmov mr0, r5
00170c  9f020008  addli r5, zero, 1024
001710  6a236130  vor.u.mh vr6{mr0}, r2, vr6
001714  0f010200  exp.f.rn r2, r4
001718  7a12c140  vextracti.f r4, 12(vr2)
00171c  7e8002e0  vmmov mr0, r5
001720  9f020010  addli r5, zero, 2048
001724  fe8102e0  vmmov mr3, r5
001728  9f028ff6  addli r5, r30, -1216
00172c  6aa36130  vor.u.mh vr6{mr0}, r3, vr6
001730  8f010200  exp.f.rn r3, r4
001734  7a12d140  vextracti.f r4, 13(vr2)
001738  6a236136  vor.u.mh vr6{mr3}, r2, vr6
00173c  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
001740  0f010200  exp.f.rn r2, r4
001744  9f020020  addli r5, zero, 4096
001748  7a12e140  vextracti.f r4, 14(vr2)
00174c  92940002  vadd.f.mz.rn vr9{mr1}, r1, vr0
001750  7e8002e0  vmmov mr0, r5
001754  fa920440  vextracti.f r5, 0(vr9)
001758  6aa36130  vor.u.mh vr6{mr0}, r3, vr6
00175c  8f010200  exp.f.rn r3, r4
001760  7a12f140  vextracti.f r4, 15(vr2)
001764  7e0003e0  vmmov mr0, r6
001768  2b430000  lui r6, 4
00176c  1231a002  vadd.s.mz vr2{mr1}, zero, vr10
001770  6a236130  vor.u.mh vr6{mr0}, r2, vr6
001774  0f010200  exp.f.rn r2, r4
001778  7e0003e0  vmmov mr0, r6
00177c  0f820200  exp.f.rn r4, r5
001780  fa921440  vextracti.f r5, 1(vr9)
001784  6aa36130  vor.u.mh vr6{mr0}, r3, vr6
001788  8f810200  exp.f.rn r3, r5
00178c  fa922440  vextracti.f r5, 2(vr9)
001790  6a236134  vor.u.mh vr6{mr2}, r2, vr6
001794  1f110000  addli r2, zero, 1
001798  7e0101e0  vmmov mr2, r2
00179c  0f810200  exp.f.rn r2, r5
0017a0  9f220000  addli r5, zero, 2
0017a4  6a224234  vor.u.mh vr4{mr2}, r4, vr4
0017a8  7a923440  vextracti.f r4, 3(vr9)
0017ac  7e8102e0  vmmov mr2, r5
0017b0  9f420000  addli r5, zero, 4
0017b4  6aa24134  vor.u.mh vr4{mr2}, r3, vr4
0017b8  8f010200  exp.f.rn r3, r4
0017bc  7a924440  vextracti.f r4, 4(vr9)
0017c0  7e8102e0  vmmov mr2, r5
0017c4  9f021000  addli r5, zero, 8
0017c8  6a224134  vor.u.mh vr4{mr2}, r2, vr4
0017cc  0f010200  exp.f.rn r2, r4
0017d0  7a925440  vextracti.f r4, 5(vr9)
0017d4  7e8102e0  vmmov mr2, r5
0017d8  9f022000  addli r5, zero, 16
0017dc  6aa24134  vor.u.mh vr4{mr2}, r3, vr4
0017e0  8f010200  exp.f.rn r3, r4
0017e4  7a926440  vextracti.f r4, 6(vr9)
0017e8  7e8102e0  vmmov mr2, r5
0017ec  9f024000  addli r5, zero, 32
0017f0  6a224134  vor.u.mh vr4{mr2}, r2, vr4
0017f4  0f010200  exp.f.rn r2, r4
0017f8  7a927440  vextracti.f r4, 7(vr9)
0017fc  7e8102e0  vmmov mr2, r5
001800  9f028000  addli r5, zero, 64
001804  6aa24134  vor.u.mh vr4{mr2}, r3, vr4
001808  8f010200  exp.f.rn r3, r4
00180c  7a928440  vextracti.f r4, 8(vr9)
001810  7e8102e0  vmmov mr2, r5
001814  9f020001  addli r5, zero, 128
001818  6a224134  vor.u.mh vr4{mr2}, r2, vr4
00181c  0f010200  exp.f.rn r2, r4
001820  7a929440  vextracti.f r4, 9(vr9)
001824  7e8102e0  vmmov mr2, r5
001828  9f020002  addli r5, zero, 256
00182c  6aa24134  vor.u.mh vr4{mr2}, r3, vr4
001830  8f010200  exp.f.rn r3, r4
001834  7a92a440  vextracti.f r4, 10(vr9)
001838  7e8102e0  vmmov mr2, r5
00183c  9f020004  addli r5, zero, 512
001840  6a224134  vor.u.mh vr4{mr2}, r2, vr4
001844  0f010200  exp.f.rn r2, r4
001848  7a92b440  vextracti.f r4, 11(vr9)
00184c  7e8102e0  vmmov mr2, r5
001850  9f020008  addli r5, zero, 1024
001854  7e8002e0  vmmov mr0, r5
001858  9f020ff7  addli r5, r30, -1152
00185c  6aa24134  vor.u.mh vr4{mr2}, r3, vr4
001860  8f010200  exp.f.rn r3, r4
001864  7a92c440  vextracti.f r4, 12(vr9)
001868  6a224130  vor.u.mh vr4{mr0}, r2, vr4
00186c  0f010200  exp.f.rn r2, r4
001870  7a92d440  vextracti.f r4, 13(vr9)
001874  6aa24136  vor.u.mh vr4{mr3}, r3, vr4
001878  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
00187c  8f010200  exp.f.rn r3, r4
001880  7a92e440  vextracti.f r4, 14(vr9)
001884  9f020040  addli r5, zero, 8192
001888  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
00188c  9f000020  addli r1, zero, 4096
001890  7e8102e0  vmmov mr2, r5
001894  ab420000  lui r5, 4
001898  7e8000e0  vmmov mr0, r1
00189c  8f000200  exp.f.rn r1, r4
0018a0  7a120040  vextracti.f r4, 0(vr0)
0018a4  6a224130  vor.u.mh vr4{mr0}, r2, vr4
0018a8  7a91f440  vextracti.f r2, 15(vr9)
0018ac  7e0001c0  vmmov mr0, mr2
0018b0  7e8102e0  vmmov mr2, r5
0018b4  ab820000  lui r5, 8
0018b8  96943002  vadd.f.mz.rn vr9{mr1}, vr1, vr3
0018bc  0f010100  exp.f.rn r2, r2
0018c0  6aa24130  vor.u.mh vr4{mr0}, r3, vr4
0018c4  8f010200  exp.f.rn r3, r4
0018c8  7a121040  vextracti.f r4, 1(vr0)
0018cc  7e8002e0  vmmov mr0, r5
0018d0  96945402  vadd.f.mz.rn vr9{mr1}, vr9, vr5
0018d4  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
0018d8  8f000200  exp.f.rn r1, r4
0018dc  7a122040  vextracti.f r4, 2(vr0)
0018e0  96947402  vadd.f.mz.rn vr9{mr1}, vr9, vr7
0018e4  6a224130  vor.u.mh vr4{mr0}, r2, vr4
0018e8  1f110000  addli r2, zero, 1
0018ec  fe0101e0  vmmov mr3, r2
0018f0  0f010200  exp.f.rn r2, r4
0018f4  1f220000  addli r4, zero, 2
0018f8  6aa12136  vor.u.mh vr2{mr3}, r3, vr2
0018fc  fa113040  vextracti.f r3, 3(vr0)
001900  fe0102e0  vmmov mr3, r4
001904  1f420000  addli r4, zero, 4
001908  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
00190c  8f800100  exp.f.rn r1, r3
001910  fa114040  vextracti.f r3, 4(vr0)
001914  fe0102e0  vmmov mr3, r4
001918  1f021000  addli r4, zero, 8
00191c  6a212136  vor.u.mh vr2{mr3}, r2, vr2
001920  0f810100  exp.f.rn r2, r3
001924  fa115040  vextracti.f r3, 5(vr0)
001928  fe0102e0  vmmov mr3, r4
00192c  1f022000  addli r4, zero, 16
001930  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
001934  8f800100  exp.f.rn r1, r3
001938  fa116040  vextracti.f r3, 6(vr0)
00193c  fe0102e0  vmmov mr3, r4
001940  1f024000  addli r4, zero, 32
001944  6a212136  vor.u.mh vr2{mr3}, r2, vr2
001948  0f810100  exp.f.rn r2, r3
00194c  fa117040  vextracti.f r3, 7(vr0)
001950  fe0102e0  vmmov mr3, r4
001954  1f028000  addli r4, zero, 64
001958  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
00195c  8f800100  exp.f.rn r1, r3
001960  fa118040  vextracti.f r3, 8(vr0)
001964  fe0102e0  vmmov mr3, r4
001968  1f020001  addli r4, zero, 128
00196c  6a212136  vor.u.mh vr2{mr3}, r2, vr2
001970  0f810100  exp.f.rn r2, r3
001974  fa119040  vextracti.f r3, 9(vr0)
001978  fe0102e0  vmmov mr3, r4
00197c  1f020002  addli r4, zero, 256
001980  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
001984  8f800100  exp.f.rn r1, r3
001988  fa11a040  vextracti.f r3, 10(vr0)
00198c  fe0102e0  vmmov mr3, r4
001990  1f020004  addli r4, zero, 512
001994  6a212136  vor.u.mh vr2{mr3}, r2, vr2
001998  0f810100  exp.f.rn r2, r3
00199c  fa11b040  vextracti.f r3, 11(vr0)
0019a0  fe0102e0  vmmov mr3, r4
0019a4  1f020008  addli r4, zero, 1024
0019a8  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
0019ac  8f800100  exp.f.rn r1, r3
0019b0  fa11c040  vextracti.f r3, 12(vr0)
0019b4  fe0102e0  vmmov mr3, r4
0019b8  1f020010  addli r4, zero, 2048
0019bc  6a212136  vor.u.mh vr2{mr3}, r2, vr2
0019c0  0f810100  exp.f.rn r2, r3
0019c4  fa11d040  vextracti.f r3, 13(vr0)
0019c8  fe0102e0  vmmov mr3, r4
0019cc  1f020020  addli r4, zero, 4096
0019d0  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
0019d4  8f800100  exp.f.rn r1, r3
0019d8  fa11e040  vextracti.f r3, 14(vr0)
0019dc  fe0102e0  vmmov mr3, r4
0019e0  1f020040  addli r4, zero, 8192
0019e4  6a212136  vor.u.mh vr2{mr3}, r2, vr2
0019e8  0f810100  exp.f.rn r2, r3
0019ec  fa11f040  vextracti.f r3, 15(vr0)
0019f0  fe0102e0  vmmov mr3, r4
0019f4  16908402  vadd.f.mz.rn vr0{mr1}, vr9, vr8
0019f8  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
0019fc  8f800100  exp.f.rn r1, r3
001a00  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
001a04  6a212134  vor.u.mh vr2{mr2}, r2, vr2
001a08  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
001a0c  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
001a10  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001a14  fa100040  vextracti.f r1, 0(vr0)
001a18  7a111040  vextracti.f r2, 1(vr0)
001a1c  8be02010  add.f.rn r1, r1, r2
001a20  7a112040  vextracti.f r2, 2(vr0)
001a24  8b601110  add.f.rn r1, r2, r1
001a28  7a113040  vextracti.f r2, 3(vr0)
001a2c  8b601110  add.f.rn r1, r2, r1
001a30  7a114040  vextracti.f r2, 4(vr0)
001a34  8b601110  add.f.rn r1, r2, r1
001a38  7a115040  vextracti.f r2, 5(vr0)
001a3c  8b601110  add.f.rn r1, r2, r1
001a40  7a116040  vextracti.f r2, 6(vr0)
001a44  8b601110  add.f.rn r1, r2, r1
001a48  7a117040  vextracti.f r2, 7(vr0)
001a4c  8b601110  add.f.rn r1, r2, r1
001a50  7a118040  vextracti.f r2, 8(vr0)
001a54  8b601110  add.f.rn r1, r2, r1
001a58  7a119040  vextracti.f r2, 9(vr0)
001a5c  8b601110  add.f.rn r1, r2, r1
001a60  7a11a040  vextracti.f r2, 10(vr0)
001a64  8b601110  add.f.rn r1, r2, r1
001a68  7a11b040  vextracti.f r2, 11(vr0)
001a6c  8b601110  add.f.rn r1, r2, r1
001a70  7a11c040  vextracti.f r2, 12(vr0)
001a74  8b601110  add.f.rn r1, r2, r1
001a78  7a11d040  vextracti.f r2, 13(vr0)
001a7c  8b601110  add.f.rn r1, r2, r1
001a80  7a11e040  vextracti.f r2, 14(vr0)
001a84  8b601110  add.f.rn r1, r2, r1
001a88  7a11f040  vextracti.f r2, 15(vr0)
001a8c  8b601110  add.f.rn r1, r2, r1
001a90  6301bff1  loadli.w r2,  -1832(r30)
001a94  73601100  stores.w r1, 0(r2)
001a98  00a00300  mfence { lm, sm, gm }
001a9c  80a10604  csr_set csr3, r13
001aa0  00d00100  sync_group
001aa4  bbad07f2  bneq r15, zero, -6296
001aa8  6342cff1  loadli.w r4,  -1820(r30)
001aac  ef400200  loads.w r1, 0(r4)
001ab0  6f414200  loads.w r2, 4(r4)
001ab4  ef418200  loads.w r3, 8(r4)
001ab8  8be02010  add.f.rn r1, r1, r2
001abc  6f41c200  loads.w r2, 12(r4)
001ac0  8be03010  add.f.rn r1, r1, r3
001ac4  ef410201  loads.w r3, 16(r4)
001ac8  8be02010  add.f.rn r1, r1, r2
001acc  6f414201  loads.w r2, 20(r4)
001ad0  8be03010  add.f.rn r1, r1, r3
001ad4  ef418201  loads.w r3, 24(r4)
001ad8  8be02010  add.f.rn r1, r1, r2
001adc  6f41c201  loads.w r2, 28(r4)
001ae0  8be03010  add.f.rn r1, r1, r3
001ae4  ef410202  loads.w r3, 32(r4)
001ae8  8be02010  add.f.rn r1, r1, r2
001aec  6f414202  loads.w r2, 36(r4)
001af0  8be03010  add.f.rn r1, r1, r3
001af4  ef418202  loads.w r3, 40(r4)
001af8  8be02010  add.f.rn r1, r1, r2
001afc  6f41c202  loads.w r2, 44(r4)
001b00  8be03010  add.f.rn r1, r1, r3
001b04  ef410203  loads.w r3, 48(r4)
001b08  8be02010  add.f.rn r1, r1, r2
001b0c  6f414203  loads.w r2, 52(r4)
001b10  8be03010  add.f.rn r1, r1, r3
001b14  ef418203  loads.w r3, 56(r4)
001b18  8be02010  add.f.rn r1, r1, r2
001b1c  6f41c203  loads.w r2, 60(r4)
001b20  8be03010  add.f.rn r1, r1, r3
001b24  8be02010  add.f.rn r1, r1, r2
001b28  73601200  stores.w r1, 0(r4)
001b2c  5bdcfcff  j -6432
001b30  9f0e0ff1  addli sp, r30, -1920
001b34  9f8e0e0f  addli sp, sp, 1920
001b38  00a00300  mfence { lm, sm, gm }
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
001c08  00100000  exit
001c0c  00100000  exit
001c10  00100000  exit
001c14  00100000  exit
001c18  00100000  exit
001c1c  00100000  exit
001c20  00100000  exit
001c24  00100000  exit
001c28  00100000  exit
001c2c  00100000  exit
001c30  00100000  exit
001c34  00100000  exit
001c38  00100000  exit
001c3c  00100000  exit
001c40  00100000  exit
001c44  00100000  exit
001c48  00100000  exit
001c4c  00100000  exit
001c50  00100000  exit
001c54  00100000  exit
001c58  00100000  exit
001c5c  00100000  exit
001c60  00100000  exit
001c64  00100000  exit
001c68  00100000  exit
001c6c  00100000  exit
001c70  00100000  exit
001c74  00100000  exit
001c78  00100000  exit
001c7c  00100000  exit
001c80  00100000  exit
001c84  00100000  exit
001c88  00100000  exit
001c8c  00100000  exit
001c90  00100000  exit
001c94  00100000  exit
001c98  00100000  exit
001c9c  00100000  exit
001ca0  00100000  exit
001ca4  00100000  exit
001ca8  00100000  exit
001cac  00100000  exit
001cb0  00100000  exit
001cb4  00100000  exit
001cb8  00100000  exit
001cbc  00100000  exit
001cc0  00100000  exit
001cc4  00100000  exit
001cc8  00100000  exit
001ccc  00100000  exit
001cd0  00100000  exit
001cd4  00100000  exit
001cd8  00100000  exit
001cdc  00100000  exit
001ce0  00100000  exit
001ce4  00100000  exit
001ce8  00100000  exit
001cec  00100000  exit
001cf0  00100000  exit
001cf4  00100000  exit
001cf8  00100000  exit
001cfc  00100000  exit
001d00  00100000  exit
001d04  00100000  exit
001d08  00100000  exit
001d0c  00100000  exit
001d10  00100000  exit
001d14  00100000  exit
001d18  00100000  exit
001d1c  00100000  exit
001d20  00100000  exit
001d24  00100000  exit
001d28  00100000  exit
001d2c  00100000  exit
001d30  00100000  exit
001d34  00100000  exit
001d38  00100000  exit
001d3c  00100000  exit
001d40  00100000  exit
001d44  00100000  exit
001d48  00100000  exit
001d4c  00100000  exit
001d50  00100000  exit
001d54  00100000  exit
001d58  00100000  exit
001d5c  00100000  exit
001d60  00100000  exit
001d64  00100000  exit
001d68  00100000  exit
001d6c  00100000  exit
001d70  00100000  exit
001d74  00100000  exit
001d78  00100000  exit
001d7c  00100000  exit
