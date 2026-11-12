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
0000dc  9f8e8eee  addli sp, sp, -2240
0000e0  2b010000  lui r2, 0
0000e4  80300002  core_id r1
0000e8  1f8f0e11  addli r30, sp, 2176
0000ec  abf20000  lui r5, 15
0000f0  9bb12000  slli r3, r1, 2
0000f4  1f010100  addli r2, r2, 0
0000f8  e3434f00  loadli.w r7,  36(r30)
0000fc  63024f00  loadli.w r4,  32(r30)
000100  63035f00  loadli.w r6,  40(r30)
000104  1b99f2ff  ori r18, r5, 4095
000108  0b942110  add.s r8, r3, r2
00010c  0b924320  mul.s r4, r7, r4
000110  9f042420  addli r9, r8, 4112
000114  0b126220  mul.s r4, r4, r6
000118  67419ff0  storeli.w r9, -2028(r30)
00011c  73e00400  stores.w zero, 0(r9)
000120  80540002  load_param_i r9, 0
000124  00a00300  mfence { lm, sm, gm }
000128  80210904  csr_set csr3, r18
00012c  00d00100  sync_group
000130  e7018ff0  storeli.w r8, -2024(r30)
000134  73600400  stores.w zero, 0(r8)
000138  00a00300  mfence { lm, sm, gm }
00013c  80210904  csr_set csr3, r18
000140  00d00100  sync_group
000144  e70b4fee  storeli.w r4, -2120(r30)
000148  4b69920a  ble.s r4, r9, 5720
00014c  1f022000  addli r4, zero, 16
000150  80d30002  load_param_i r7, 1
000154  1f250000  addli r10, zero, 2
000158  eb528f00  load.d r[6:7], 8(r30)
00015c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000160  0b924030  div.s r4, r1, r4
000164  674b7fee  storeli.w r7, -2124(r30)
000168  abf3ffff  lui r7, 1048575
00016c  9b9303fc  ori r7, r7, 4032
000170  97817100  and r3, r3, r7
000174  1b344200  slli r8, r4, 4
000178  1b32b200  slli r4, r4, 11
00017c  0b948018  sub.s r8, r1, r8
000180  9b80f000  andi r1, r1, 15
000184  9b337400  slli r7, r8, 7
000188  0b942110  add.s r8, r3, r2
00018c  67401ff0  storeli.w r1, -2044(r30)
000190  33910328  sext_int2long r[3:4], r7
000194  9f002420  addli r1, r8, 4112
000198  0b924310  add.s r4, r7, r4
00019c  9f030004  addli r7, zero, 512
0001a0  67428ff0  storeli.w r8, -2012(r30)
0001a4  1731a102  sll.d r[3:4], r[3:4], r10
0001a8  67021ff0  storeli.w r1, -2016(r30)
0001ac  9f008fef  addli r1, r30, -2112
0001b0  670b4fee  storeli.w r4, -2128(r30)
0001b4  0ba12210  add.ul r[3:4], r[6:7], r[3:4]
0001b8  1f030ff6  addli r6, r30, -1280
0001bc  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0001c0  73342f80  store.d r[3:4], -2040(r30)
0001c4  db030000  j 28
0001c8  e3447fef  loadli.w r9,  -2116(r30)
0001cc  e3406fef  loadli.w r1,  -2124(r30)
0001d0  8b941410  add.s r9, r9, r1
0001d4  e3007fef  loadli.w r1,  -2120(r30)
0001d8  3fa01400  blt.s r9, r1, 8
0001dc  dbb80200  j 5572
0001e0  e3005f00  loadli.w r1,  40(r30)
0001e4  63414f00  loadli.w r2,  36(r30)
0001e8  9f110000  addli r3, zero, 1
0001ec  e74b9fee  storeli.w r9, -2116(r30)
0001f0  8b901430  div.s r1, r9, r1
0001f4  8b902030  div.s r1, r1, r2
0001f8  63016fef  loadli.w r2,  -2128(r30)
0001fc  9bb0e000  slli r1, r1, 14
000200  8b101110  add.s r1, r2, r1
000204  e7411ff0  storeli.w r1, -2020(r30)
000208  9f000000  addli r1, zero, 0
00020c  db150000  j 172
000210  00a00300  mfence { lm, sm, gm }
000214  80210904  csr_set csr3, r18
000218  00d00100  sync_group
00021c  e3004ff0  loadli.w r1,  -2016(r30)
000220  2b01803f  lui r2, 260096
000224  6b520faf  load.d r[5:6], -1296(r30)
000228  9f030004  addli r7, zero, 512
00022c  1f030ff6  addli r6, r30, -1280
000230  efc00000  loads.w r1, 0(r1)
000234  8f001118  div.f.rn r1, r2, r1
000238  0a912002  vmul.f.mz.rn vr2{mr1}, r1, vr2
00023c  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
000240  8a913002  vmul.f.mz.rn vr3{mr1}, r1, vr3
000244  0a924002  vmul.f.mz.rn vr4{mr1}, r1, vr4
000248  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
00024c  8a925002  vmul.f.mz.rn vr5{mr1}, r1, vr5
000250  0a936002  vmul.f.mz.rn vr6{mr1}, r1, vr6
000254  8a937002  vmul.f.mz.rn vr7{mr1}, r1, vr7
000258  6b510f01  load.d r[3:4], 16(r30)
00025c  9f000ff6  addli r1, r30, -1280
000260  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
000264  9f008ff6  addli r1, r30, -1216
000268  0b214110  add.ul r[3:4], r[3:4], r[5:6]
00026c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000270  9f000ff7  addli r1, r30, -1152
000274  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
000278  9f008ff7  addli r1, r30, -1088
00027c  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
000280  ab0000f0  lui r1, 983040
000284  46101f82  vstore_mask16.mz vr1{mr1}, 1024(r30)
000288  46145f82  vstore_mask16.mz vr5{mr1}, 1088(r30)
00028c  46186f82  vstore_mask16.mz vr6{mr1}, 1152(r30)
000290  461c7f82  vstore_mask16.mz vr7{mr1}, 1216(r30)
000294  00a00000  mfence { lm }
000298  97901300  or r1, r7, r1
00029c  ff306100  s_lm2gm r1, r6, 0(r[3:4])
0002a0  9f010000  addli r3, zero, 0
0002a4  00a00000  mfence { lm }
0002a8  e340fff5  loadli.w r1,  -1284(r30)
0002ac  1b811000  andi r2, r1, 1
0002b0  9f000040  addli r1, zero, 8192
0002b4  375c01fe  beq r2, zero, -236
0002b8  63413ff0  loadli.w r2,  -2020(r30)
0002bc  e74f3ff4  storeli.w r3, -1284(r30)
0002c0  9f220000  addli r5, zero, 2
0002c4  9f090900  addli r19, r18, 0
0002c8  8b101110  add.s r1, r2, r1
0002cc  2b0100f0  lui r2, 983040
0002d0  b3910028  sext_int2long r[4:5], r1
0002d4  17912300  or r2, r7, r2
0002d8  ab0000f0  lui r1, 983040
0002dc  17b45102  sll.d r[9:10], r[4:5], r5
0002e0  eb510f00  load.d r[4:5], 0(r30)
0002e4  97901300  or r1, r7, r1
0002e8  73388fae  store.d r[9:10], -1296(r30)
0002ec  8ba18110  add.ul r[4:5], r[4:5], r[9:10]
0002f0  7fa16100  l_gm2lm r2, r6, 0(r[4:5])
0002f4  6b518f80  load.d r[3:4], -2040(r30)
0002f8  1f020ffa  addli r4, r30, -768
0002fc  ff204100  l_gm2lm r1, r4, 0(r[3:4])
000300  9f000ff6  addli r1, r30, -1280
000304  00a00000  mfence { lm }
000308  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
00030c  9f008ff6  addli r1, r30, -1216
000310  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
000314  9f000ff7  addli r1, r30, -1152
000318  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
00031c  9f008ff7  addli r1, r30, -1088
000320  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
000324  42100f82  vload_mask16.mz vr0{mr1}, 1024(r30)
000328  9f000ff5  addli r1, r30, -1408
00032c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000330  9f008ff4  addli r1, r30, -1472
000334  42108f82  vload_mask16.mz vr0{mr1}, 1088(r30)
000338  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00033c  9f000ff4  addli r1, r30, -1536
000340  42100f83  vload_mask16.mz vr0{mr1}, 1152(r30)
000344  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000348  9f008ff3  addli r1, r30, -1600
00034c  42108f83  vload_mask16.mz vr0{mr1}, 1216(r30)
000350  630ebffb  loadli.w r28,  -552(r30)
000354  6341effa  loadli.w r2,  -652(r30)
000358  e301fffa  loadli.w r3,  -648(r30)
00035c  6342fffa  loadli.w r4,  -644(r30)
000360  e3020ffb  loadli.w r5,  -640(r30)
000364  63430ffb  loadli.w r6,  -636(r30)
000368  e3031ffb  loadli.w r7,  -632(r30)
00036c  63441ffb  loadli.w r8,  -628(r30)
000370  e3042ffb  loadli.w r9,  -624(r30)
000374  63452ffb  loadli.w r10,  -620(r30)
000378  e3053ffb  loadli.w r11,  -616(r30)
00037c  63463ffb  loadli.w r12,  -612(r30)
000380  e3064ffb  loadli.w r13,  -608(r30)
000384  63474ffb  loadli.w r14,  -604(r30)
000388  e3075ffb  loadli.w r15,  -600(r30)
00038c  63485ffb  loadli.w r16,  -596(r30)
000390  e3086ffb  loadli.w r17,  -592(r30)
000394  63496ffb  loadli.w r18,  -588(r30)
000398  630a7ffb  loadli.w r20,  -584(r30)
00039c  e34a7ffb  loadli.w r21,  -580(r30)
0003a0  630b8ffb  loadli.w r22,  -576(r30)
0003a4  e34b8ffb  loadli.w r23,  -572(r30)
0003a8  630c9ffb  loadli.w r24,  -568(r30)
0003ac  e34c9ffb  loadli.w r25,  -564(r30)
0003b0  630daffb  loadli.w r26,  -560(r30)
0003b4  e34daffb  loadli.w r27,  -556(r30)
0003b8  e702cff1  storeli.w r28, -2008(r30)
0003bc  634ebffb  loadli.w r28,  -548(r30)
0003c0  e742cff1  storeli.w r28, -2004(r30)
0003c4  630ecffb  loadli.w r28,  -544(r30)
0003c8  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0003cc  e3000ffa  loadli.w r1,  -768(r30)
0003d0  6703cff1  storeli.w r28, -2000(r30)
0003d4  634ecffb  loadli.w r28,  -540(r30)
0003d8  e70e1ff0  storeli.w r1, -1816(r30)
0003dc  e3400ffa  loadli.w r1,  -764(r30)
0003e0  6743cff1  storeli.w r28, -1996(r30)
0003e4  630edffb  loadli.w r28,  -536(r30)
0003e8  670f1ff0  storeli.w r1, -1808(r30)
0003ec  e3001ffa  loadli.w r1,  -760(r30)
0003f0  e703cff1  storeli.w r28, -1992(r30)
0003f4  634edffb  loadli.w r28,  -532(r30)
0003f8  e70f1ff0  storeli.w r1, -1800(r30)
0003fc  e3401ffa  loadli.w r1,  -756(r30)
000400  e743cff1  storeli.w r28, -1988(r30)
000404  630eeffb  loadli.w r28,  -528(r30)
000408  67001ff2  storeli.w r1, -1792(r30)
00040c  e3002ffa  loadli.w r1,  -752(r30)
000410  6704cff1  storeli.w r28, -1984(r30)
000414  634eeffb  loadli.w r28,  -524(r30)
000418  e7001ff2  storeli.w r1, -1784(r30)
00041c  e3402ffa  loadli.w r1,  -748(r30)
000420  6744cff1  storeli.w r28, -1980(r30)
000424  630efffb  loadli.w r28,  -520(r30)
000428  67011ff2  storeli.w r1, -1776(r30)
00042c  e3003ffa  loadli.w r1,  -744(r30)
000430  e704cff1  storeli.w r28, -1976(r30)
000434  634efffb  loadli.w r28,  -516(r30)
000438  e7011ff2  storeli.w r1, -1768(r30)
00043c  e3403ffa  loadli.w r1,  -740(r30)
000440  e744cff1  storeli.w r28, -1972(r30)
000444  630e0ffc  loadli.w r28,  -512(r30)
000448  67021ff2  storeli.w r1, -1760(r30)
00044c  e3004ffa  loadli.w r1,  -736(r30)
000450  6705cff1  storeli.w r28, -1968(r30)
000454  634e0ffc  loadli.w r28,  -508(r30)
000458  e7021ff2  storeli.w r1, -1752(r30)
00045c  e3404ffa  loadli.w r1,  -732(r30)
000460  6745cff1  storeli.w r28, -1964(r30)
000464  630e1ffc  loadli.w r28,  -504(r30)
000468  67031ff2  storeli.w r1, -1744(r30)
00046c  e3005ffa  loadli.w r1,  -728(r30)
000470  e705cff1  storeli.w r28, -1960(r30)
000474  634e1ffc  loadli.w r28,  -500(r30)
000478  e7031ff2  storeli.w r1, -1736(r30)
00047c  e3405ffa  loadli.w r1,  -724(r30)
000480  e745cff1  storeli.w r28, -1956(r30)
000484  630e2ffc  loadli.w r28,  -496(r30)
000488  67041ff2  storeli.w r1, -1728(r30)
00048c  e3006ffa  loadli.w r1,  -720(r30)
000490  6706cff1  storeli.w r28, -1952(r30)
000494  634e2ffc  loadli.w r28,  -492(r30)
000498  e7041ff2  storeli.w r1, -1720(r30)
00049c  e3406ffa  loadli.w r1,  -716(r30)
0004a0  6746cff1  storeli.w r28, -1948(r30)
0004a4  630e3ffc  loadli.w r28,  -488(r30)
0004a8  67051ff2  storeli.w r1, -1712(r30)
0004ac  e3007ffa  loadli.w r1,  -712(r30)
0004b0  e706cff1  storeli.w r28, -1944(r30)
0004b4  634e3ffc  loadli.w r28,  -484(r30)
0004b8  e7051ff2  storeli.w r1, -1704(r30)
0004bc  e3407ffa  loadli.w r1,  -708(r30)
0004c0  e746cff1  storeli.w r28, -1940(r30)
0004c4  630e4ffc  loadli.w r28,  -480(r30)
0004c8  67061ff2  storeli.w r1, -1696(r30)
0004cc  e3008ffa  loadli.w r1,  -704(r30)
0004d0  6707cff1  storeli.w r28, -1936(r30)
0004d4  634e4ffc  loadli.w r28,  -476(r30)
0004d8  e7061ff2  storeli.w r1, -1688(r30)
0004dc  e3408ffa  loadli.w r1,  -700(r30)
0004e0  6747cff1  storeli.w r28, -1932(r30)
0004e4  630e5ffc  loadli.w r28,  -472(r30)
0004e8  67071ff2  storeli.w r1, -1680(r30)
0004ec  e3009ffa  loadli.w r1,  -696(r30)
0004f0  e707cff1  storeli.w r28, -1928(r30)
0004f4  634e5ffc  loadli.w r28,  -468(r30)
0004f8  e7071ff2  storeli.w r1, -1672(r30)
0004fc  e3409ffa  loadli.w r1,  -692(r30)
000500  e747cff1  storeli.w r28, -1924(r30)
000504  630e6ffc  loadli.w r28,  -464(r30)
000508  67081ff2  storeli.w r1, -1664(r30)
00050c  e300affa  loadli.w r1,  -688(r30)
000510  6708cff1  storeli.w r28, -1920(r30)
000514  634e6ffc  loadli.w r28,  -460(r30)
000518  e7081ff2  storeli.w r1, -1656(r30)
00051c  e340affa  loadli.w r1,  -684(r30)
000520  6748cff1  storeli.w r28, -1916(r30)
000524  630e7ffc  loadli.w r28,  -456(r30)
000528  67091ff2  storeli.w r1, -1648(r30)
00052c  e300bffa  loadli.w r1,  -680(r30)
000530  e708cff1  storeli.w r28, -1912(r30)
000534  634e7ffc  loadli.w r28,  -452(r30)
000538  e7091ff2  storeli.w r1, -1640(r30)
00053c  e340bffa  loadli.w r1,  -676(r30)
000540  e748cff1  storeli.w r28, -1908(r30)
000544  630e8ffc  loadli.w r28,  -448(r30)
000548  670a1ff2  storeli.w r1, -1632(r30)
00054c  e300cffa  loadli.w r1,  -672(r30)
000550  6709cff1  storeli.w r28, -1904(r30)
000554  634e8ffc  loadli.w r28,  -444(r30)
000558  e70a1ff2  storeli.w r1, -1624(r30)
00055c  e340cffa  loadli.w r1,  -668(r30)
000560  6749cff1  storeli.w r28, -1900(r30)
000564  630e9ffc  loadli.w r28,  -440(r30)
000568  e74a1ff2  storeli.w r1, -1620(r30)
00056c  e300dffa  loadli.w r1,  -664(r30)
000570  e709cff1  storeli.w r28, -1896(r30)
000574  634e9ffc  loadli.w r28,  -436(r30)
000578  670b1ff2  storeli.w r1, -1616(r30)
00057c  e340dffa  loadli.w r1,  -660(r30)
000580  e749cff1  storeli.w r28, -1892(r30)
000584  630eaffc  loadli.w r28,  -432(r30)
000588  674b1ff2  storeli.w r1, -1612(r30)
00058c  9f008fef  addli r1, r30, -2112
000590  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000594  e300effa  loadli.w r1,  -656(r30)
000598  670acff1  storeli.w r28, -1888(r30)
00059c  634eaffc  loadli.w r28,  -428(r30)
0005a0  674acff1  storeli.w r28, -1884(r30)
0005a4  630ebffc  loadli.w r28,  -424(r30)
0005a8  92340002  vadd.s.mz vr9{mr1}, zero, vr0
0005ac  12350002  vadd.s.mz vr10{mr1}, zero, vr0
0005b0  e70acff1  storeli.w r28, -1880(r30)
0005b4  634ebffc  loadli.w r28,  -420(r30)
0005b8  e74acff1  storeli.w r28, -1876(r30)
0005bc  630ecffc  loadli.w r28,  -416(r30)
0005c0  670bcff1  storeli.w r28, -1872(r30)
0005c4  634ecffc  loadli.w r28,  -412(r30)
0005c8  674bcff1  storeli.w r28, -1868(r30)
0005cc  630edffc  loadli.w r28,  -408(r30)
0005d0  e70bcff1  storeli.w r28, -1864(r30)
0005d4  634edffc  loadli.w r28,  -404(r30)
0005d8  e74bcff1  storeli.w r28, -1860(r30)
0005dc  630eeffc  loadli.w r28,  -400(r30)
0005e0  670ccff1  storeli.w r28, -1856(r30)
0005e4  634eeffc  loadli.w r28,  -396(r30)
0005e8  674ccff1  storeli.w r28, -1852(r30)
0005ec  630efffc  loadli.w r28,  -392(r30)
0005f0  e70ccff1  storeli.w r28, -1848(r30)
0005f4  634efffc  loadli.w r28,  -388(r30)
0005f8  e74ccff1  storeli.w r28, -1844(r30)
0005fc  630e0ffd  loadli.w r28,  -384(r30)
000600  670dcff1  storeli.w r28, -1840(r30)
000604  634e0ffd  loadli.w r28,  -380(r30)
000608  674dcff1  storeli.w r28, -1836(r30)
00060c  630e1ffd  loadli.w r28,  -376(r30)
000610  e70dcff1  storeli.w r28, -1832(r30)
000614  634e1ffd  loadli.w r28,  -372(r30)
000618  e74dcff1  storeli.w r28, -1828(r30)
00061c  630e2ffd  loadli.w r28,  -368(r30)
000620  670ecff1  storeli.w r28, -1824(r30)
000624  634e2ffd  loadli.w r28,  -364(r30)
000628  674ecff1  storeli.w r28, -1820(r30)
00062c  630e3ffd  loadli.w r28,  -360(r30)
000630  e74ecff1  storeli.w r28, -1812(r30)
000634  634e3ffd  loadli.w r28,  -356(r30)
000638  674fcff1  storeli.w r28, -1804(r30)
00063c  630e4ffd  loadli.w r28,  -352(r30)
000640  e74fcff1  storeli.w r28, -1796(r30)
000644  634e4ffd  loadli.w r28,  -348(r30)
000648  6740cff3  storeli.w r28, -1788(r30)
00064c  630e5ffd  loadli.w r28,  -344(r30)
000650  e740cff3  storeli.w r28, -1780(r30)
000654  634e5ffd  loadli.w r28,  -340(r30)
000658  6741cff3  storeli.w r28, -1772(r30)
00065c  630e6ffd  loadli.w r28,  -336(r30)
000660  e741cff3  storeli.w r28, -1764(r30)
000664  634e6ffd  loadli.w r28,  -332(r30)
000668  6742cff3  storeli.w r28, -1756(r30)
00066c  630e7ffd  loadli.w r28,  -328(r30)
000670  e742cff3  storeli.w r28, -1748(r30)
000674  634e7ffd  loadli.w r28,  -324(r30)
000678  6743cff3  storeli.w r28, -1740(r30)
00067c  630e8ffd  loadli.w r28,  -320(r30)
000680  e743cff3  storeli.w r28, -1732(r30)
000684  634e8ffd  loadli.w r28,  -316(r30)
000688  6744cff3  storeli.w r28, -1724(r30)
00068c  630e9ffd  loadli.w r28,  -312(r30)
000690  e744cff3  storeli.w r28, -1716(r30)
000694  634e9ffd  loadli.w r28,  -308(r30)
000698  6745cff3  storeli.w r28, -1708(r30)
00069c  630eaffd  loadli.w r28,  -304(r30)
0006a0  e745cff3  storeli.w r28, -1700(r30)
0006a4  634eaffd  loadli.w r28,  -300(r30)
0006a8  6746cff3  storeli.w r28, -1692(r30)
0006ac  630ebffd  loadli.w r28,  -296(r30)
0006b0  e746cff3  storeli.w r28, -1684(r30)
0006b4  634ebffd  loadli.w r28,  -292(r30)
0006b8  6747cff3  storeli.w r28, -1676(r30)
0006bc  630ecffd  loadli.w r28,  -288(r30)
0006c0  e747cff3  storeli.w r28, -1668(r30)
0006c4  634ecffd  loadli.w r28,  -284(r30)
0006c8  6748cff3  storeli.w r28, -1660(r30)
0006cc  630edffd  loadli.w r28,  -280(r30)
0006d0  e748cff3  storeli.w r28, -1652(r30)
0006d4  634edffd  loadli.w r28,  -276(r30)
0006d8  6749cff3  storeli.w r28, -1644(r30)
0006dc  630eeffd  loadli.w r28,  -272(r30)
0006e0  e749cff3  storeli.w r28, -1636(r30)
0006e4  634eeffd  loadli.w r28,  -268(r30)
0006e8  674acff3  storeli.w r28, -1628(r30)
0006ec  630efffd  loadli.w r28,  -264(r30)
0006f0  e70bcff3  storeli.w r28, -1608(r30)
0006f4  634efffd  loadli.w r28,  -260(r30)
0006f8  e74bcff3  storeli.w r28, -1604(r30)
0006fc  1f1e0000  addli r28, zero, 1
000700  7e010ee0  vmmov mr2, r28
000704  630edff1  loadli.w r28,  -1816(r30)
000708  ea249e34  vor.u.mh vr9{mr2}, r28, vr9
00070c  1f2e0000  addli r28, zero, 2
000710  fe010ee0  vmmov mr3, r28
000714  630eeff1  loadli.w r28,  -1808(r30)
000718  ea249e36  vor.u.mh vr9{mr3}, r28, vr9
00071c  1f4e0000  addli r28, zero, 4
000720  7e000ee0  vmmov mr0, r28
000724  630efff1  loadli.w r28,  -1800(r30)
000728  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
00072c  1f0e1000  addli r28, zero, 8
000730  7e000ee0  vmmov mr0, r28
000734  630e0ff2  loadli.w r28,  -1792(r30)
000738  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
00073c  1f0e2000  addli r28, zero, 16
000740  7e000ee0  vmmov mr0, r28
000744  630e1ff2  loadli.w r28,  -1784(r30)
000748  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
00074c  1f0e4000  addli r28, zero, 32
000750  7e000ee0  vmmov mr0, r28
000754  630e2ff2  loadli.w r28,  -1776(r30)
000758  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
00075c  1f0e8000  addli r28, zero, 64
000760  7e000ee0  vmmov mr0, r28
000764  630e3ff2  loadli.w r28,  -1768(r30)
000768  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
00076c  1f0e0001  addli r28, zero, 128
000770  7e000ee0  vmmov mr0, r28
000774  630e4ff2  loadli.w r28,  -1760(r30)
000778  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
00077c  1f0e0002  addli r28, zero, 256
000780  7e000ee0  vmmov mr0, r28
000784  630e5ff2  loadli.w r28,  -1752(r30)
000788  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
00078c  1f0e0004  addli r28, zero, 512
000790  7e000ee0  vmmov mr0, r28
000794  630e6ff2  loadli.w r28,  -1744(r30)
000798  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
00079c  1f0e0008  addli r28, zero, 1024
0007a0  7e000ee0  vmmov mr0, r28
0007a4  630e7ff2  loadli.w r28,  -1736(r30)
0007a8  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
0007ac  1f0e0010  addli r28, zero, 2048
0007b0  7e000ee0  vmmov mr0, r28
0007b4  630e8ff2  loadli.w r28,  -1728(r30)
0007b8  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
0007bc  1f0e0020  addli r28, zero, 4096
0007c0  7e000ee0  vmmov mr0, r28
0007c4  630e9ff2  loadli.w r28,  -1720(r30)
0007c8  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
0007cc  1f0e0040  addli r28, zero, 8192
0007d0  1f400000  addli zero, zero, 4
0007d4  7e000ee0  vmmov mr0, r28
0007d8  630eaff2  loadli.w r28,  -1712(r30)
0007dc  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
0007e0  2b4e0000  lui r28, 4
0007e4  7e000ee0  vmmov mr0, r28
0007e8  630ebff2  loadli.w r28,  -1704(r30)
0007ec  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
0007f0  2b8e0000  lui r28, 8
0007f4  7e000ee0  vmmov mr0, r28
0007f8  630ecff2  loadli.w r28,  -1696(r30)
0007fc  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
000800  630edff2  loadli.w r28,  -1688(r30)
000804  6a25ae34  vor.u.mh vr10{mr2}, r28, vr10
000808  630eeff2  loadli.w r28,  -1680(r30)
00080c  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
000810  6a25ae36  vor.u.mh vr10{mr3}, r28, vr10
000814  630efff2  loadli.w r28,  -1672(r30)
000818  fe0100e0  vmmov mr3, zero
00081c  17200000  xor zero, zero, zero
000820  1f001000  addli zero, zero, 8
000824  6a25ae36  vor.u.mh vr10{mr3}, r28, vr10
000828  630e0ff3  loadli.w r28,  -1664(r30)
00082c  7e0000e0  vmmov mr0, zero
000830  17200000  xor zero, zero, zero
000834  1f002000  addli zero, zero, 16
000838  6a25ae30  vor.u.mh vr10{mr0}, r28, vr10
00083c  630e1ff3  loadli.w r28,  -1656(r30)
000840  7e0000e0  vmmov mr0, zero
000844  17200000  xor zero, zero, zero
000848  1f004000  addli zero, zero, 32
00084c  6a25ae30  vor.u.mh vr10{mr0}, r28, vr10
000850  630e2ff3  loadli.w r28,  -1648(r30)
000854  7e0000e0  vmmov mr0, zero
000858  17200000  xor zero, zero, zero
00085c  1f008000  addli zero, zero, 64
000860  6a25ae30  vor.u.mh vr10{mr0}, r28, vr10
000864  630e3ff3  loadli.w r28,  -1640(r30)
000868  7e0000e0  vmmov mr0, zero
00086c  17200000  xor zero, zero, zero
000870  1f000001  addli zero, zero, 128
000874  6a25ae30  vor.u.mh vr10{mr0}, r28, vr10
000878  630e4ff3  loadli.w r28,  -1632(r30)
00087c  7e0000e0  vmmov mr0, zero
000880  17200000  xor zero, zero, zero
000884  1f000002  addli zero, zero, 256
000888  6a25ae30  vor.u.mh vr10{mr0}, r28, vr10
00088c  630e5ff3  loadli.w r28,  -1624(r30)
000890  7e0000e0  vmmov mr0, zero
000894  17200000  xor zero, zero, zero
000898  1f000004  addli zero, zero, 512
00089c  6a25ae30  vor.u.mh vr10{mr0}, r28, vr10
0008a0  634e5ff3  loadli.w r28,  -1620(r30)
0008a4  7e0000e0  vmmov mr0, zero
0008a8  17200000  xor zero, zero, zero
0008ac  1f000008  addli zero, zero, 1024
0008b0  6a25ae30  vor.u.mh vr10{mr0}, r28, vr10
0008b4  630e6ff3  loadli.w r28,  -1616(r30)
0008b8  7e0000e0  vmmov mr0, zero
0008bc  17200000  xor zero, zero, zero
0008c0  1f000010  addli zero, zero, 2048
0008c4  6a25ae30  vor.u.mh vr10{mr0}, r28, vr10
0008c8  634e6ff3  loadli.w r28,  -1612(r30)
0008cc  7e0000e0  vmmov mr0, zero
0008d0  17200000  xor zero, zero, zero
0008d4  92350002  vadd.s.mz vr11{mr1}, zero, vr0
0008d8  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0008dc  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0008e0  12340002  vadd.s.mz vr8{mr1}, zero, vr0
0008e4  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0008e8  6a25ae30  vor.u.mh vr10{mr0}, r28, vr10
0008ec  1f0e0020  addli r28, zero, 4096
0008f0  7e000ee0  vmmov mr0, r28
0008f4  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
0008f8  9f000040  addli r1, zero, 8192
0008fc  7e8000e0  vmmov mr0, r1
000900  ab400000  lui r1, 4
000904  6a25a130  vor.u.mh vr10{mr0}, r2, vr10
000908  7e8000e0  vmmov mr0, r1
00090c  ab800000  lui r1, 8
000910  1f010001  addli r2, zero, 128
000914  6aa5a130  vor.u.mh vr10{mr0}, r3, vr10
000918  7e8000e0  vmmov mr0, r1
00091c  9f200000  addli r1, zero, 2
000920  6a25a230  vor.u.mh vr10{mr0}, r4, vr10
000924  eaa5b234  vor.u.mh vr11{mr2}, r5, vr11
000928  7e8100e0  vmmov mr2, r1
00092c  9f001000  addli r1, zero, 8
000930  ea25b334  vor.u.mh vr11{mr2}, r6, vr11
000934  7e8100e0  vmmov mr2, r1
000938  9f002000  addli r1, zero, 16
00093c  9694a202  vadd.f.mz.rn vr9{mr1}, vr5, vr10
000940  eaa5b336  vor.u.mh vr11{mr3}, r7, vr11
000944  ea25b434  vor.u.mh vr11{mr2}, r8, vr11
000948  7e8100e0  vmmov mr2, r1
00094c  9f004000  addli r1, zero, 32
000950  eaa5b434  vor.u.mh vr11{mr2}, r9, vr11
000954  7e8100e0  vmmov mr2, r1
000958  9f008000  addli r1, zero, 64
00095c  fe8100e0  vmmov mr3, r1
000960  9f000001  addli r1, zero, 128
000964  ea25b534  vor.u.mh vr11{mr2}, r10, vr11
000968  7e8100e0  vmmov mr2, r1
00096c  9f000002  addli r1, zero, 256
000970  eaa5b536  vor.u.mh vr11{mr3}, r11, vr11
000974  ea25b634  vor.u.mh vr11{mr2}, r12, vr11
000978  7e8100e0  vmmov mr2, r1
00097c  9f000004  addli r1, zero, 512
000980  eaa5b634  vor.u.mh vr11{mr2}, r13, vr11
000984  7e8100e0  vmmov mr2, r1
000988  9f000008  addli r1, zero, 1024
00098c  ea25b734  vor.u.mh vr11{mr2}, r14, vr11
000990  7e8100e0  vmmov mr2, r1
000994  9f000010  addli r1, zero, 2048
000998  eaa5b734  vor.u.mh vr11{mr2}, r15, vr11
00099c  7e8100e0  vmmov mr2, r1
0009a0  9f000020  addli r1, zero, 4096
0009a4  ea25b834  vor.u.mh vr11{mr2}, r16, vr11
0009a8  7e8100e0  vmmov mr2, r1
0009ac  9f000040  addli r1, zero, 8192
0009b0  eaa5b834  vor.u.mh vr11{mr2}, r17, vr11
0009b4  7e8100e0  vmmov mr2, r1
0009b8  ab400000  lui r1, 4
0009bc  ea25b934  vor.u.mh vr11{mr2}, r18, vr11
0009c0  7e8100e0  vmmov mr2, r1
0009c4  9f100000  addli r1, zero, 1
0009c8  1f890900  addli r18, r19, 0
0009cc  ea25ba34  vor.u.mh vr11{mr2}, r20, vr11
0009d0  eaa5ba30  vor.u.mh vr11{mr0}, r21, vr11
0009d4  7e8000e0  vmmov mr0, r1
0009d8  9f200000  addli r1, zero, 2
0009dc  ea213b30  vor.u.mh vr3{mr0}, r22, vr3
0009e0  7e8000e0  vmmov mr0, r1
0009e4  9f400000  addli r1, zero, 4
0009e8  1615b302  vadd.f.mz.rn vr10{mr1}, vr6, vr11
0009ec  eaa13b30  vor.u.mh vr3{mr0}, r23, vr3
0009f0  7e8000e0  vmmov mr0, r1
0009f4  9f001000  addli r1, zero, 8
0009f8  ea213c30  vor.u.mh vr3{mr0}, r24, vr3
0009fc  7e8000e0  vmmov mr0, r1
000a00  9f002000  addli r1, zero, 16
000a04  eaa13c30  vor.u.mh vr3{mr0}, r25, vr3
000a08  7e8000e0  vmmov mr0, r1
000a0c  9f004000  addli r1, zero, 32
000a10  ea213d30  vor.u.mh vr3{mr0}, r26, vr3
000a14  7e8000e0  vmmov mr0, r1
000a18  eaa13d30  vor.u.mh vr3{mr0}, r27, vr3
000a1c  e3005ff0  loadli.w r1,  -2008(r30)
000a20  7e0001e0  vmmov mr0, r2
000a24  1f010002  addli r2, zero, 256
000a28  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
000a2c  e3405ff0  loadli.w r1,  -2004(r30)
000a30  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000a34  e3006ff0  loadli.w r1,  -2000(r30)
000a38  7e0001e0  vmmov mr0, r2
000a3c  1f010004  addli r2, zero, 512
000a40  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000a44  e3406ff0  loadli.w r1,  -1996(r30)
000a48  7e0001e0  vmmov mr0, r2
000a4c  1f010008  addli r2, zero, 1024
000a50  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000a54  e3007ff0  loadli.w r1,  -1992(r30)
000a58  7e0001e0  vmmov mr0, r2
000a5c  1f010010  addli r2, zero, 2048
000a60  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000a64  e3407ff0  loadli.w r1,  -1988(r30)
000a68  7e0001e0  vmmov mr0, r2
000a6c  1f010020  addli r2, zero, 4096
000a70  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000a74  e3008ff0  loadli.w r1,  -1984(r30)
000a78  7e0001e0  vmmov mr0, r2
000a7c  1f010040  addli r2, zero, 8192
000a80  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000a84  e3408ff0  loadli.w r1,  -1980(r30)
000a88  7e0001e0  vmmov mr0, r2
000a8c  2b810000  lui r2, 8
000a90  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000a94  e3009ff0  loadli.w r1,  -1976(r30)
000a98  7e0001e0  vmmov mr0, r2
000a9c  1f110000  addli r2, zero, 1
000aa0  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
000aa4  e3409ff0  loadli.w r1,  -1972(r30)
000aa8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000aac  e300aff0  loadli.w r1,  -1968(r30)
000ab0  7e0001e0  vmmov mr0, r2
000ab4  1f210000  addli r2, zero, 2
000ab8  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000abc  e340aff0  loadli.w r1,  -1964(r30)
000ac0  7e0001e0  vmmov mr0, r2
000ac4  1f410000  addli r2, zero, 4
000ac8  16933302  vadd.f.mz.rn vr6{mr1}, vr7, vr3
000acc  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000ad0  e300bff0  loadli.w r1,  -1960(r30)
000ad4  7e0001e0  vmmov mr0, r2
000ad8  1f011000  addli r2, zero, 8
000adc  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000ae0  e340bff0  loadli.w r1,  -1956(r30)
000ae4  7e0001e0  vmmov mr0, r2
000ae8  1f012000  addli r2, zero, 16
000aec  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000af0  e300cff0  loadli.w r1,  -1952(r30)
000af4  7e0001e0  vmmov mr0, r2
000af8  1f014000  addli r2, zero, 32
000afc  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000b00  e340cff0  loadli.w r1,  -1948(r30)
000b04  7e0001e0  vmmov mr0, r2
000b08  1f010001  addli r2, zero, 128
000b0c  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000b10  e300dff0  loadli.w r1,  -1944(r30)
000b14  7e0001e0  vmmov mr0, r2
000b18  1f010002  addli r2, zero, 256
000b1c  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
000b20  e340dff0  loadli.w r1,  -1940(r30)
000b24  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000b28  e300eff0  loadli.w r1,  -1936(r30)
000b2c  7e0001e0  vmmov mr0, r2
000b30  1f010004  addli r2, zero, 512
000b34  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000b38  e340eff0  loadli.w r1,  -1932(r30)
000b3c  7e0001e0  vmmov mr0, r2
000b40  1f010008  addli r2, zero, 1024
000b44  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000b48  e300fff0  loadli.w r1,  -1928(r30)
000b4c  7e0001e0  vmmov mr0, r2
000b50  1f010010  addli r2, zero, 2048
000b54  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000b58  e340fff0  loadli.w r1,  -1924(r30)
000b5c  7e0001e0  vmmov mr0, r2
000b60  1f010020  addli r2, zero, 4096
000b64  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000b68  e3000ff1  loadli.w r1,  -1920(r30)
000b6c  7e0001e0  vmmov mr0, r2
000b70  1f010040  addli r2, zero, 8192
000b74  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000b78  e3400ff1  loadli.w r1,  -1916(r30)
000b7c  7e0001e0  vmmov mr0, r2
000b80  2b810000  lui r2, 8
000b84  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000b88  e3001ff1  loadli.w r1,  -1912(r30)
000b8c  7e0001e0  vmmov mr0, r2
000b90  1f110000  addli r2, zero, 1
000b94  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000b98  e3401ff1  loadli.w r1,  -1908(r30)
000b9c  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000ba0  e3002ff1  loadli.w r1,  -1904(r30)
000ba4  7e0001e0  vmmov mr0, r2
000ba8  1f210000  addli r2, zero, 2
000bac  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000bb0  e3402ff1  loadli.w r1,  -1900(r30)
000bb4  7e0001e0  vmmov mr0, r2
000bb8  1f410000  addli r2, zero, 4
000bbc  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000bc0  e3003ff1  loadli.w r1,  -1896(r30)
000bc4  7e0001e0  vmmov mr0, r2
000bc8  1f011000  addli r2, zero, 8
000bcc  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000bd0  e3403ff1  loadli.w r1,  -1892(r30)
000bd4  7e0001e0  vmmov mr0, r2
000bd8  1f012000  addli r2, zero, 16
000bdc  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000be0  e3004ff1  loadli.w r1,  -1888(r30)
000be4  7e0001e0  vmmov mr0, r2
000be8  1f014000  addli r2, zero, 32
000bec  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000bf0  e3404ff1  loadli.w r1,  -1884(r30)
000bf4  7e0001e0  vmmov mr0, r2
000bf8  1f010001  addli r2, zero, 128
000bfc  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000c00  e3005ff1  loadli.w r1,  -1880(r30)
000c04  7e0001e0  vmmov mr0, r2
000c08  1f010002  addli r2, zero, 256
000c0c  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
000c10  e3405ff1  loadli.w r1,  -1876(r30)
000c14  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000c18  e3006ff1  loadli.w r1,  -1872(r30)
000c1c  7e0001e0  vmmov mr0, r2
000c20  1f010004  addli r2, zero, 512
000c24  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000c28  e3406ff1  loadli.w r1,  -1868(r30)
000c2c  7e0001e0  vmmov mr0, r2
000c30  1f010008  addli r2, zero, 1024
000c34  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000c38  e3007ff1  loadli.w r1,  -1864(r30)
000c3c  7e0001e0  vmmov mr0, r2
000c40  1f010010  addli r2, zero, 2048
000c44  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000c48  e3407ff1  loadli.w r1,  -1860(r30)
000c4c  7e0001e0  vmmov mr0, r2
000c50  1f010020  addli r2, zero, 4096
000c54  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000c58  e3008ff1  loadli.w r1,  -1856(r30)
000c5c  7e0001e0  vmmov mr0, r2
000c60  1f010040  addli r2, zero, 8192
000c64  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000c68  e3408ff1  loadli.w r1,  -1852(r30)
000c6c  7e0001e0  vmmov mr0, r2
000c70  2b810000  lui r2, 8
000c74  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000c78  e3009ff1  loadli.w r1,  -1848(r30)
000c7c  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
000c80  fe0101c0  vmmov mr3, mr2
000c84  e3409ff1  loadli.w r1,  -1844(r30)
000c88  7e0101e0  vmmov mr2, r2
000c8c  1f110000  addli r2, zero, 1
000c90  7e0001e0  vmmov mr0, r2
000c94  1f210000  addli r2, zero, 2
000c98  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
000c9c  e300aff1  loadli.w r1,  -1840(r30)
000ca0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000ca4  e340aff1  loadli.w r1,  -1836(r30)
000ca8  7e0001e0  vmmov mr0, r2
000cac  1f410000  addli r2, zero, 4
000cb0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000cb4  e300bff1  loadli.w r1,  -1832(r30)
000cb8  7e0001e0  vmmov mr0, r2
000cbc  1f011000  addli r2, zero, 8
000cc0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000cc4  e340bff1  loadli.w r1,  -1828(r30)
000cc8  7e0001e0  vmmov mr0, r2
000ccc  1f012000  addli r2, zero, 16
000cd0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000cd4  e300cff1  loadli.w r1,  -1824(r30)
000cd8  7e0001e0  vmmov mr0, r2
000cdc  1f014000  addli r2, zero, 32
000ce0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000ce4  e340cff1  loadli.w r1,  -1820(r30)
000ce8  7e0001e0  vmmov mr0, r2
000cec  1f018000  addli r2, zero, 64
000cf0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000cf4  e340dff1  loadli.w r1,  -1812(r30)
000cf8  7e0001e0  vmmov mr0, r2
000cfc  1f010001  addli r2, zero, 128
000d00  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000d04  e340eff1  loadli.w r1,  -1804(r30)
000d08  7e0001e0  vmmov mr0, r2
000d0c  1f010002  addli r2, zero, 256
000d10  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000d14  e340fff1  loadli.w r1,  -1796(r30)
000d18  7e0001e0  vmmov mr0, r2
000d1c  1f010004  addli r2, zero, 512
000d20  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000d24  e3400ff2  loadli.w r1,  -1788(r30)
000d28  7e0001e0  vmmov mr0, r2
000d2c  1f010008  addli r2, zero, 1024
000d30  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000d34  e3401ff2  loadli.w r1,  -1780(r30)
000d38  7e0001e0  vmmov mr0, r2
000d3c  1f010010  addli r2, zero, 2048
000d40  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000d44  e3402ff2  loadli.w r1,  -1772(r30)
000d48  7e0001e0  vmmov mr0, r2
000d4c  1f010020  addli r2, zero, 4096
000d50  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000d54  e3403ff2  loadli.w r1,  -1764(r30)
000d58  7e0001e0  vmmov mr0, r2
000d5c  1f010040  addli r2, zero, 8192
000d60  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000d64  e3404ff2  loadli.w r1,  -1756(r30)
000d68  7e0001e0  vmmov mr0, r2
000d6c  1f110000  addli r2, zero, 1
000d70  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000d74  e3405ff2  loadli.w r1,  -1748(r30)
000d78  7e0001e0  vmmov mr0, r2
000d7c  1f210000  addli r2, zero, 2
000d80  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
000d84  e3406ff2  loadli.w r1,  -1740(r30)
000d88  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000d8c  e3407ff2  loadli.w r1,  -1732(r30)
000d90  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000d94  e3408ff2  loadli.w r1,  -1724(r30)
000d98  7e0001e0  vmmov mr0, r2
000d9c  1f410000  addli r2, zero, 4
000da0  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000da4  e3409ff2  loadli.w r1,  -1716(r30)
000da8  7e0001e0  vmmov mr0, r2
000dac  1f011000  addli r2, zero, 8
000db0  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000db4  e340aff2  loadli.w r1,  -1708(r30)
000db8  7e0001e0  vmmov mr0, r2
000dbc  1f012000  addli r2, zero, 16
000dc0  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000dc4  e340bff2  loadli.w r1,  -1700(r30)
000dc8  7e0001e0  vmmov mr0, r2
000dcc  1f014000  addli r2, zero, 32
000dd0  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000dd4  e340cff2  loadli.w r1,  -1692(r30)
000dd8  7e0001e0  vmmov mr0, r2
000ddc  1f018000  addli r2, zero, 64
000de0  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000de4  e340dff2  loadli.w r1,  -1684(r30)
000de8  7e0001e0  vmmov mr0, r2
000dec  1f010001  addli r2, zero, 128
000df0  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000df4  e340eff2  loadli.w r1,  -1676(r30)
000df8  7e0001e0  vmmov mr0, r2
000dfc  1f010002  addli r2, zero, 256
000e00  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000e04  e340fff2  loadli.w r1,  -1668(r30)
000e08  7e0001e0  vmmov mr0, r2
000e0c  1f010004  addli r2, zero, 512
000e10  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000e14  e3400ff3  loadli.w r1,  -1660(r30)
000e18  7e0001e0  vmmov mr0, r2
000e1c  1f010008  addli r2, zero, 1024
000e20  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000e24  e3401ff3  loadli.w r1,  -1652(r30)
000e28  7e0001e0  vmmov mr0, r2
000e2c  1f010010  addli r2, zero, 2048
000e30  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000e34  e3402ff3  loadli.w r1,  -1644(r30)
000e38  7e0001e0  vmmov mr0, r2
000e3c  1f010020  addli r2, zero, 4096
000e40  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000e44  e3403ff3  loadli.w r1,  -1636(r30)
000e48  7e0001e0  vmmov mr0, r2
000e4c  1f010040  addli r2, zero, 8192
000e50  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000e54  e3404ff3  loadli.w r1,  -1628(r30)
000e58  7e0001e0  vmmov mr0, r2
000e5c  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000e60  e3007ff3  loadli.w r1,  -1608(r30)
000e64  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
000e68  e3407ff3  loadli.w r1,  -1604(r30)
000e6c  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
000e70  9f000ff5  addli r1, r30, -1408
000e74  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000e78  9f008ff4  addli r1, r30, -1472
000e7c  96932102  vadd.f.mz.rn vr7{mr1}, vr3, vr2
000e80  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000e84  9f000ff4  addli r1, r30, -1536
000e88  96128102  vadd.f.mz.rn vr5{mr1}, vr2, vr8
000e8c  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000e90  9f008ff3  addli r1, r30, -1600
000e94  16111102  vadd.f.mz.rn vr2{mr1}, vr2, vr1
000e98  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000e9c  16900002  vadd.f.mz.rn vr0{mr1}, vr1, vr0
000ea0  b6109202  vmax.f.mz vr1{mr1}, vr4, vr9
000ea4  b690a002  vmax.f.mz vr1{mr1}, vr1, vr10
000ea8  b6906002  vmax.f.mz vr1{mr1}, vr1, vr6
000eac  b6907002  vmax.f.mz vr1{mr1}, vr1, vr7
000eb0  b6905002  vmax.f.mz vr1{mr1}, vr1, vr5
000eb4  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
000eb8  b6900002  vmax.f.mz vr1{mr1}, vr1, vr0
000ebc  fa900040  vextracti.f r1, 0(vr1)
000ec0  7a911040  vextracti.f r2, 1(vr1)
000ec4  fa912040  vextracti.f r3, 2(vr1)
000ec8  7a923040  vextracti.f r4, 3(vr1)
000ecc  fa924040  vextracti.f r5, 4(vr1)
000ed0  7a935040  vextracti.f r6, 5(vr1)
000ed4  fa936040  vextracti.f r7, 6(vr1)
000ed8  7a947040  vextracti.f r8, 7(vr1)
000edc  fa948040  vextracti.f r9, 8(vr1)
000ee0  7a959040  vextracti.f r10, 9(vr1)
000ee4  fa95a040  vextracti.f r11, 10(vr1)
000ee8  7a96b040  vextracti.f r12, 11(vr1)
000eec  fa96c040  vextracti.f r13, 12(vr1)
000ef0  7a97d040  vextracti.f r14, 13(vr1)
000ef4  fa97e040  vextracti.f r15, 14(vr1)
000ef8  7a98f040  vextracti.f r16, 15(vr1)
000efc  8be02048  max.f r1, r1, r2
000f00  63013ff0  loadli.w r2,  -2024(r30)
000f04  8be03048  max.f r1, r1, r3
000f08  8be04048  max.f r1, r1, r4
000f0c  8be05048  max.f r1, r1, r5
000f10  8be06048  max.f r1, r1, r6
000f14  8be07048  max.f r1, r1, r7
000f18  8be08048  max.f r1, r1, r8
000f1c  8be09048  max.f r1, r1, r9
000f20  8be0a048  max.f r1, r1, r10
000f24  8be0b048  max.f r1, r1, r11
000f28  8be0c048  max.f r1, r1, r12
000f2c  8be0d048  max.f r1, r1, r13
000f30  8be0e048  max.f r1, r1, r14
000f34  8be0f048  max.f r1, r1, r15
000f38  8be00049  max.f r1, r1, r16
000f3c  73601100  stores.w r1, 0(r2)
000f40  00a00300  mfence { lm, sm, gm }
000f44  80210904  csr_set csr3, r18
000f48  00d00100  sync_group
000f4c  e3490ff0  loadli.w r19,  -2044(r30)
000f50  3ba20900  bneq r19, zero, 136
000f54  e3464ff0  loadli.w r13,  -2012(r30)
000f58  efc00600  loads.w r1, 0(r13)
000f5c  6fc14600  loads.w r2, 4(r13)
000f60  efc18600  loads.w r3, 8(r13)
000f64  6fc2c600  loads.w r4, 12(r13)
000f68  efc20601  loads.w r5, 16(r13)
000f6c  6fc34601  loads.w r6, 20(r13)
000f70  efc38601  loads.w r7, 24(r13)
000f74  6fc4c601  loads.w r8, 28(r13)
000f78  efc40602  loads.w r9, 32(r13)
000f7c  6fc54602  loads.w r10, 36(r13)
000f80  efc58602  loads.w r11, 40(r13)
000f84  6fc6c603  loads.w r12, 60(r13)
000f88  8be02048  max.f r1, r1, r2
000f8c  6fc1c602  loads.w r2, 44(r13)
000f90  8be03048  max.f r1, r1, r3
000f94  efc10603  loads.w r3, 48(r13)
000f98  8be04048  max.f r1, r1, r4
000f9c  6fc24603  loads.w r4, 52(r13)
000fa0  8be05048  max.f r1, r1, r5
000fa4  efc28603  loads.w r5, 56(r13)
000fa8  8be06048  max.f r1, r1, r6
000fac  8be07048  max.f r1, r1, r7
000fb0  8be08048  max.f r1, r1, r8
000fb4  8be09048  max.f r1, r1, r9
000fb8  8be0a048  max.f r1, r1, r10
000fbc  8be0b048  max.f r1, r1, r11
000fc0  8be02048  max.f r1, r1, r2
000fc4  8be03048  max.f r1, r1, r3
000fc8  8be04048  max.f r1, r1, r4
000fcc  8be05048  max.f r1, r1, r5
000fd0  8be0c048  max.f r1, r1, r12
000fd4  73e01600  stores.w r1, 0(r13)
000fd8  00a00300  mfence { lm, sm, gm }
000fdc  80210904  csr_set csr3, r18
000fe0  00d00100  sync_group
000fe4  e3404ff0  loadli.w r1,  -2012(r30)
000fe8  2b010080  lui r2, 524288
000fec  1f0a0ffe  addli r20, r30, -256
000ff0  efc00000  loads.w r1, 0(r1)
000ff4  97a02000  xor r1, r1, r2
000ff8  92914002  vadd.f.mz.rn vr3{mr1}, r1, vr4
000ffc  12929002  vadd.f.mz.rn vr4{mr1}, r1, vr9
001000  46103fe2  vstore_mask16.mz vr3{mr1}, 1792(r30)
001004  1294a002  vadd.f.mz.rn vr8{mr1}, r1, vr10
001008  46144fe2  vstore_mask16.mz vr4{mr1}, 1856(r30)
00100c  12936002  vadd.f.mz.rn vr6{mr1}, r1, vr6
001010  46188fe2  vstore_mask16.mz vr8{mr1}, 1920(r30)
001014  461c6fe2  vstore_mask16.mz vr6{mr1}, 1984(r30)
001018  92905002  vadd.f.mz.rn vr1{mr1}, r1, vr5
00101c  92922002  vadd.f.mz.rn vr5{mr1}, r1, vr2
001020  92937002  vadd.f.mz.rn vr7{mr1}, r1, vr7
001024  00a00000  mfence { lm }
001028  63010a00  loadli.w r2,  0(r20)
00102c  e3410a00  loadli.w r3,  4(r20)
001030  63021a00  loadli.w r4,  8(r20)
001034  e3421a00  loadli.w r5,  12(r20)
001038  63032a00  loadli.w r6,  16(r20)
00103c  e3432a00  loadli.w r7,  20(r20)
001040  63043a00  loadli.w r8,  24(r20)
001044  e3443a00  loadli.w r9,  28(r20)
001048  63054a00  loadli.w r10,  32(r20)
00104c  e3454a00  loadli.w r11,  36(r20)
001050  63065a00  loadli.w r12,  40(r20)
001054  e3465a00  loadli.w r13,  44(r20)
001058  63076a00  loadli.w r14,  48(r20)
00105c  e3476a00  loadli.w r15,  52(r20)
001060  63087a00  loadli.w r16,  56(r20)
001064  e3487a00  loadli.w r17,  60(r20)
001068  0f010100  exp.f.rn r2, r2
00106c  8f810100  exp.f.rn r3, r3
001070  0f020200  exp.f.rn r4, r4
001074  8f820200  exp.f.rn r5, r5
001078  0f030300  exp.f.rn r6, r6
00107c  8f830300  exp.f.rn r7, r7
001080  0f040400  exp.f.rn r8, r8
001084  8f840400  exp.f.rn r9, r9
001088  0f050500  exp.f.rn r10, r10
00108c  8f850500  exp.f.rn r11, r11
001090  0f060600  exp.f.rn r12, r12
001094  8f860600  exp.f.rn r13, r13
001098  0f070700  exp.f.rn r14, r14
00109c  8f870700  exp.f.rn r15, r15
0010a0  0f080800  exp.f.rn r16, r16
0010a4  8f880800  exp.f.rn r17, r17
0010a8  67002a00  storeli.w r2, 0(r20)
0010ac  67403a00  storeli.w r3, 4(r20)
0010b0  e7004a00  storeli.w r4, 8(r20)
0010b4  e7405a00  storeli.w r5, 12(r20)
0010b8  67016a00  storeli.w r6, 16(r20)
0010bc  67417a00  storeli.w r7, 20(r20)
0010c0  e7018a00  storeli.w r8, 24(r20)
0010c4  e7419a00  storeli.w r9, 28(r20)
0010c8  6702aa00  storeli.w r10, 32(r20)
0010cc  6742ba00  storeli.w r11, 36(r20)
0010d0  e702ca00  storeli.w r12, 40(r20)
0010d4  e742da00  storeli.w r13, 44(r20)
0010d8  6703ea00  storeli.w r14, 48(r20)
0010dc  6743fa00  storeli.w r15, 52(r20)
0010e0  e7030a01  storeli.w r16, 56(r20)
0010e4  e7431a01  storeli.w r17, 60(r20)
0010e8  63018a00  loadli.w r2,  64(r20)
0010ec  e3418a00  loadli.w r3,  68(r20)
0010f0  63029a00  loadli.w r4,  72(r20)
0010f4  e3429a00  loadli.w r5,  76(r20)
0010f8  6303aa00  loadli.w r6,  80(r20)
0010fc  e343aa00  loadli.w r7,  84(r20)
001100  6304ba00  loadli.w r8,  88(r20)
001104  e344ba00  loadli.w r9,  92(r20)
001108  6305ca00  loadli.w r10,  96(r20)
00110c  e345ca00  loadli.w r11,  100(r20)
001110  6306da00  loadli.w r12,  104(r20)
001114  e346da00  loadli.w r13,  108(r20)
001118  6307ea00  loadli.w r14,  112(r20)
00111c  e347ea00  loadli.w r15,  116(r20)
001120  6308fa00  loadli.w r16,  120(r20)
001124  e348fa00  loadli.w r17,  124(r20)
001128  0f010100  exp.f.rn r2, r2
00112c  8f810100  exp.f.rn r3, r3
001130  0f020200  exp.f.rn r4, r4
001134  8f820200  exp.f.rn r5, r5
001138  0f030300  exp.f.rn r6, r6
00113c  8f830300  exp.f.rn r7, r7
001140  0f040400  exp.f.rn r8, r8
001144  8f840400  exp.f.rn r9, r9
001148  0f050500  exp.f.rn r10, r10
00114c  8f850500  exp.f.rn r11, r11
001150  0f060600  exp.f.rn r12, r12
001154  8f860600  exp.f.rn r13, r13
001158  0f070700  exp.f.rn r14, r14
00115c  8f870700  exp.f.rn r15, r15
001160  0f080800  exp.f.rn r16, r16
001164  8f880800  exp.f.rn r17, r17
001168  67042a00  storeli.w r2, 64(r20)
00116c  67443a00  storeli.w r3, 68(r20)
001170  e7044a00  storeli.w r4, 72(r20)
001174  e7445a00  storeli.w r5, 76(r20)
001178  67056a00  storeli.w r6, 80(r20)
00117c  67457a00  storeli.w r7, 84(r20)
001180  e7058a00  storeli.w r8, 88(r20)
001184  e7459a00  storeli.w r9, 92(r20)
001188  6706aa00  storeli.w r10, 96(r20)
00118c  6746ba00  storeli.w r11, 100(r20)
001190  e706ca00  storeli.w r12, 104(r20)
001194  e746da00  storeli.w r13, 108(r20)
001198  6707ea00  storeli.w r14, 112(r20)
00119c  6747fa00  storeli.w r15, 116(r20)
0011a0  e7070a01  storeli.w r16, 120(r20)
0011a4  e7471a01  storeli.w r17, 124(r20)
0011a8  63010a01  loadli.w r2,  128(r20)
0011ac  e3410a01  loadli.w r3,  132(r20)
0011b0  63021a01  loadli.w r4,  136(r20)
0011b4  e3421a01  loadli.w r5,  140(r20)
0011b8  63032a01  loadli.w r6,  144(r20)
0011bc  e3432a01  loadli.w r7,  148(r20)
0011c0  63043a01  loadli.w r8,  152(r20)
0011c4  e3443a01  loadli.w r9,  156(r20)
0011c8  63054a01  loadli.w r10,  160(r20)
0011cc  e3454a01  loadli.w r11,  164(r20)
0011d0  63065a01  loadli.w r12,  168(r20)
0011d4  e3465a01  loadli.w r13,  172(r20)
0011d8  63076a01  loadli.w r14,  176(r20)
0011dc  e3476a01  loadli.w r15,  180(r20)
0011e0  63087a01  loadli.w r16,  184(r20)
0011e4  e3487a01  loadli.w r17,  188(r20)
0011e8  0f010100  exp.f.rn r2, r2
0011ec  8f810100  exp.f.rn r3, r3
0011f0  0f020200  exp.f.rn r4, r4
0011f4  8f820200  exp.f.rn r5, r5
0011f8  0f030300  exp.f.rn r6, r6
0011fc  8f830300  exp.f.rn r7, r7
001200  0f040400  exp.f.rn r8, r8
001204  8f840400  exp.f.rn r9, r9
001208  0f050500  exp.f.rn r10, r10
00120c  8f850500  exp.f.rn r11, r11
001210  0f060600  exp.f.rn r12, r12
001214  8f860600  exp.f.rn r13, r13
001218  0f070700  exp.f.rn r14, r14
00121c  8f870700  exp.f.rn r15, r15
001220  0f080800  exp.f.rn r16, r16
001224  8f880800  exp.f.rn r17, r17
001228  67082a00  storeli.w r2, 128(r20)
00122c  67483a00  storeli.w r3, 132(r20)
001230  e7084a00  storeli.w r4, 136(r20)
001234  e7485a00  storeli.w r5, 140(r20)
001238  67096a00  storeli.w r6, 144(r20)
00123c  67497a00  storeli.w r7, 148(r20)
001240  e7098a00  storeli.w r8, 152(r20)
001244  e7499a00  storeli.w r9, 156(r20)
001248  670aaa00  storeli.w r10, 160(r20)
00124c  674aba00  storeli.w r11, 164(r20)
001250  e70aca00  storeli.w r12, 168(r20)
001254  e74ada00  storeli.w r13, 172(r20)
001258  670bea00  storeli.w r14, 176(r20)
00125c  674bfa00  storeli.w r15, 180(r20)
001260  e70b0a01  storeli.w r16, 184(r20)
001264  e74b1a01  storeli.w r17, 188(r20)
001268  63018a01  loadli.w r2,  192(r20)
00126c  e3418a01  loadli.w r3,  196(r20)
001270  63029a01  loadli.w r4,  200(r20)
001274  e3429a01  loadli.w r5,  204(r20)
001278  6303aa01  loadli.w r6,  208(r20)
00127c  e343aa01  loadli.w r7,  212(r20)
001280  6304ba01  loadli.w r8,  216(r20)
001284  e344ba01  loadli.w r9,  220(r20)
001288  6305ca01  loadli.w r10,  224(r20)
00128c  e345ca01  loadli.w r11,  228(r20)
001290  6306da01  loadli.w r12,  232(r20)
001294  e346da01  loadli.w r13,  236(r20)
001298  6307ea01  loadli.w r14,  240(r20)
00129c  e347ea01  loadli.w r15,  244(r20)
0012a0  6308fa01  loadli.w r16,  248(r20)
0012a4  e348fa01  loadli.w r17,  252(r20)
0012a8  0f010100  exp.f.rn r2, r2
0012ac  8f810100  exp.f.rn r3, r3
0012b0  0f020200  exp.f.rn r4, r4
0012b4  8f820200  exp.f.rn r5, r5
0012b8  0f030300  exp.f.rn r6, r6
0012bc  8f830300  exp.f.rn r7, r7
0012c0  0f040400  exp.f.rn r8, r8
0012c4  8f840400  exp.f.rn r9, r9
0012c8  0f050500  exp.f.rn r10, r10
0012cc  8f850500  exp.f.rn r11, r11
0012d0  0f060600  exp.f.rn r12, r12
0012d4  8f860600  exp.f.rn r13, r13
0012d8  0f070700  exp.f.rn r14, r14
0012dc  8f870700  exp.f.rn r15, r15
0012e0  0f080800  exp.f.rn r16, r16
0012e4  8f880800  exp.f.rn r17, r17
0012e8  670c2a00  storeli.w r2, 192(r20)
0012ec  674c3a00  storeli.w r3, 196(r20)
0012f0  e70c4a00  storeli.w r4, 200(r20)
0012f4  e74c5a00  storeli.w r5, 204(r20)
0012f8  670d6a00  storeli.w r6, 208(r20)
0012fc  674d7a00  storeli.w r7, 212(r20)
001300  e70d8a00  storeli.w r8, 216(r20)
001304  e74d9a00  storeli.w r9, 220(r20)
001308  670eaa00  storeli.w r10, 224(r20)
00130c  674eba00  storeli.w r11, 228(r20)
001310  e70eca00  storeli.w r12, 232(r20)
001314  e74eda00  storeli.w r13, 236(r20)
001318  670fea00  storeli.w r14, 240(r20)
00131c  674ffa00  storeli.w r15, 244(r20)
001320  e70f0a01  storeli.w r16, 248(r20)
001324  e74f1a01  storeli.w r17, 252(r20)
001328  00a00000  mfence { lm }
00132c  12930002  vadd.f.mz.rn vr6{mr1}, r1, vr0
001330  42110fe2  vload_mask16.mz vr2{mr1}, 1792(r30)
001334  42108fe2  vload_mask16.mz vr0{mr1}, 1856(r30)
001338  c2110fe3  vload_mask16.mz vr3{mr1}, 1920(r30)
00133c  42128fe3  vload_mask16.mz vr4{mr1}, 1984(r30)
001340  46107fe2  vstore_mask16.mz vr7{mr1}, 1792(r30)
001344  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
001348  46185fe2  vstore_mask16.mz vr5{mr1}, 1920(r30)
00134c  461c6fe2  vstore_mask16.mz vr6{mr1}, 1984(r30)
001350  00a00000  mfence { lm }
001354  e3000a00  loadli.w r1,  0(r20)
001358  63410a00  loadli.w r2,  4(r20)
00135c  e3011a00  loadli.w r3,  8(r20)
001360  63421a00  loadli.w r4,  12(r20)
001364  e3022a00  loadli.w r5,  16(r20)
001368  63432a00  loadli.w r6,  20(r20)
00136c  e3033a00  loadli.w r7,  24(r20)
001370  63443a00  loadli.w r8,  28(r20)
001374  e3044a00  loadli.w r9,  32(r20)
001378  63454a00  loadli.w r10,  36(r20)
00137c  e3055a00  loadli.w r11,  40(r20)
001380  63465a00  loadli.w r12,  44(r20)
001384  e3066a00  loadli.w r13,  48(r20)
001388  63476a00  loadli.w r14,  52(r20)
00138c  e3077a00  loadli.w r15,  56(r20)
001390  63487a00  loadli.w r16,  60(r20)
001394  8f800000  exp.f.rn r1, r1
001398  0f010100  exp.f.rn r2, r2
00139c  8f810100  exp.f.rn r3, r3
0013a0  0f020200  exp.f.rn r4, r4
0013a4  8f820200  exp.f.rn r5, r5
0013a8  0f030300  exp.f.rn r6, r6
0013ac  8f830300  exp.f.rn r7, r7
0013b0  0f040400  exp.f.rn r8, r8
0013b4  8f840400  exp.f.rn r9, r9
0013b8  0f050500  exp.f.rn r10, r10
0013bc  8f850500  exp.f.rn r11, r11
0013c0  0f060600  exp.f.rn r12, r12
0013c4  8f860600  exp.f.rn r13, r13
0013c8  0f070700  exp.f.rn r14, r14
0013cc  8f870700  exp.f.rn r15, r15
0013d0  0f080800  exp.f.rn r16, r16
0013d4  67001a00  storeli.w r1, 0(r20)
0013d8  67402a00  storeli.w r2, 4(r20)
0013dc  e7003a00  storeli.w r3, 8(r20)
0013e0  e7404a00  storeli.w r4, 12(r20)
0013e4  67015a00  storeli.w r5, 16(r20)
0013e8  67416a00  storeli.w r6, 20(r20)
0013ec  e7017a00  storeli.w r7, 24(r20)
0013f0  e7418a00  storeli.w r8, 28(r20)
0013f4  67029a00  storeli.w r9, 32(r20)
0013f8  6742aa00  storeli.w r10, 36(r20)
0013fc  e702ba00  storeli.w r11, 40(r20)
001400  e742ca00  storeli.w r12, 44(r20)
001404  6703da00  storeli.w r13, 48(r20)
001408  6743ea00  storeli.w r14, 52(r20)
00140c  e703fa00  storeli.w r15, 56(r20)
001410  e7430a01  storeli.w r16, 60(r20)
001414  e3008a00  loadli.w r1,  64(r20)
001418  63418a00  loadli.w r2,  68(r20)
00141c  e3019a00  loadli.w r3,  72(r20)
001420  63429a00  loadli.w r4,  76(r20)
001424  e302aa00  loadli.w r5,  80(r20)
001428  6343aa00  loadli.w r6,  84(r20)
00142c  e303ba00  loadli.w r7,  88(r20)
001430  6344ba00  loadli.w r8,  92(r20)
001434  e304ca00  loadli.w r9,  96(r20)
001438  6345ca00  loadli.w r10,  100(r20)
00143c  e305da00  loadli.w r11,  104(r20)
001440  6346da00  loadli.w r12,  108(r20)
001444  e306ea00  loadli.w r13,  112(r20)
001448  6347ea00  loadli.w r14,  116(r20)
00144c  e307fa00  loadli.w r15,  120(r20)
001450  6348fa00  loadli.w r16,  124(r20)
001454  8f800000  exp.f.rn r1, r1
001458  0f010100  exp.f.rn r2, r2
00145c  8f810100  exp.f.rn r3, r3
001460  0f020200  exp.f.rn r4, r4
001464  8f820200  exp.f.rn r5, r5
001468  0f030300  exp.f.rn r6, r6
00146c  8f830300  exp.f.rn r7, r7
001470  0f040400  exp.f.rn r8, r8
001474  8f840400  exp.f.rn r9, r9
001478  0f050500  exp.f.rn r10, r10
00147c  8f850500  exp.f.rn r11, r11
001480  0f060600  exp.f.rn r12, r12
001484  8f860600  exp.f.rn r13, r13
001488  0f070700  exp.f.rn r14, r14
00148c  8f870700  exp.f.rn r15, r15
001490  0f080800  exp.f.rn r16, r16
001494  67041a00  storeli.w r1, 64(r20)
001498  67442a00  storeli.w r2, 68(r20)
00149c  e7043a00  storeli.w r3, 72(r20)
0014a0  e7444a00  storeli.w r4, 76(r20)
0014a4  67055a00  storeli.w r5, 80(r20)
0014a8  67456a00  storeli.w r6, 84(r20)
0014ac  e7057a00  storeli.w r7, 88(r20)
0014b0  e7458a00  storeli.w r8, 92(r20)
0014b4  67069a00  storeli.w r9, 96(r20)
0014b8  6746aa00  storeli.w r10, 100(r20)
0014bc  e706ba00  storeli.w r11, 104(r20)
0014c0  e746ca00  storeli.w r12, 108(r20)
0014c4  6707da00  storeli.w r13, 112(r20)
0014c8  6747ea00  storeli.w r14, 116(r20)
0014cc  e707fa00  storeli.w r15, 120(r20)
0014d0  e7470a01  storeli.w r16, 124(r20)
0014d4  e3000a01  loadli.w r1,  128(r20)
0014d8  63410a01  loadli.w r2,  132(r20)
0014dc  e3011a01  loadli.w r3,  136(r20)
0014e0  63421a01  loadli.w r4,  140(r20)
0014e4  e3022a01  loadli.w r5,  144(r20)
0014e8  63432a01  loadli.w r6,  148(r20)
0014ec  e3033a01  loadli.w r7,  152(r20)
0014f0  63443a01  loadli.w r8,  156(r20)
0014f4  e3044a01  loadli.w r9,  160(r20)
0014f8  63454a01  loadli.w r10,  164(r20)
0014fc  e3055a01  loadli.w r11,  168(r20)
001500  63465a01  loadli.w r12,  172(r20)
001504  e3066a01  loadli.w r13,  176(r20)
001508  63476a01  loadli.w r14,  180(r20)
00150c  e3077a01  loadli.w r15,  184(r20)
001510  63487a01  loadli.w r16,  188(r20)
001514  8f800000  exp.f.rn r1, r1
001518  0f010100  exp.f.rn r2, r2
00151c  8f810100  exp.f.rn r3, r3
001520  0f020200  exp.f.rn r4, r4
001524  8f820200  exp.f.rn r5, r5
001528  0f030300  exp.f.rn r6, r6
00152c  8f830300  exp.f.rn r7, r7
001530  0f040400  exp.f.rn r8, r8
001534  8f840400  exp.f.rn r9, r9
001538  0f050500  exp.f.rn r10, r10
00153c  8f850500  exp.f.rn r11, r11
001540  0f060600  exp.f.rn r12, r12
001544  8f860600  exp.f.rn r13, r13
001548  0f070700  exp.f.rn r14, r14
00154c  8f870700  exp.f.rn r15, r15
001550  0f080800  exp.f.rn r16, r16
001554  67081a00  storeli.w r1, 128(r20)
001558  67482a00  storeli.w r2, 132(r20)
00155c  e7083a00  storeli.w r3, 136(r20)
001560  e7484a00  storeli.w r4, 140(r20)
001564  67095a00  storeli.w r5, 144(r20)
001568  67496a00  storeli.w r6, 148(r20)
00156c  e7097a00  storeli.w r7, 152(r20)
001570  e7498a00  storeli.w r8, 156(r20)
001574  670a9a00  storeli.w r9, 160(r20)
001578  674aaa00  storeli.w r10, 164(r20)
00157c  e70aba00  storeli.w r11, 168(r20)
001580  e74aca00  storeli.w r12, 172(r20)
001584  670bda00  storeli.w r13, 176(r20)
001588  674bea00  storeli.w r14, 180(r20)
00158c  e70bfa00  storeli.w r15, 184(r20)
001590  e74b0a01  storeli.w r16, 188(r20)
001594  e3008a01  loadli.w r1,  192(r20)
001598  63418a01  loadli.w r2,  196(r20)
00159c  e3019a01  loadli.w r3,  200(r20)
0015a0  63429a01  loadli.w r4,  204(r20)
0015a4  e302aa01  loadli.w r5,  208(r20)
0015a8  6343aa01  loadli.w r6,  212(r20)
0015ac  e303ba01  loadli.w r7,  216(r20)
0015b0  6344ba01  loadli.w r8,  220(r20)
0015b4  e304ca01  loadli.w r9,  224(r20)
0015b8  6345ca01  loadli.w r10,  228(r20)
0015bc  e305da01  loadli.w r11,  232(r20)
0015c0  6346da01  loadli.w r12,  236(r20)
0015c4  e306ea01  loadli.w r13,  240(r20)
0015c8  6347ea01  loadli.w r14,  244(r20)
0015cc  e307fa01  loadli.w r15,  248(r20)
0015d0  6348fa01  loadli.w r16,  252(r20)
0015d4  8f800000  exp.f.rn r1, r1
0015d8  0f010100  exp.f.rn r2, r2
0015dc  8f810100  exp.f.rn r3, r3
0015e0  0f020200  exp.f.rn r4, r4
0015e4  8f820200  exp.f.rn r5, r5
0015e8  0f030300  exp.f.rn r6, r6
0015ec  8f830300  exp.f.rn r7, r7
0015f0  0f040400  exp.f.rn r8, r8
0015f4  8f840400  exp.f.rn r9, r9
0015f8  0f050500  exp.f.rn r10, r10
0015fc  8f850500  exp.f.rn r11, r11
001600  0f060600  exp.f.rn r12, r12
001604  8f860600  exp.f.rn r13, r13
001608  0f070700  exp.f.rn r14, r14
00160c  8f870700  exp.f.rn r15, r15
001610  0f080800  exp.f.rn r16, r16
001614  670c1a00  storeli.w r1, 192(r20)
001618  674c2a00  storeli.w r2, 196(r20)
00161c  e70c3a00  storeli.w r3, 200(r20)
001620  e74c4a00  storeli.w r4, 204(r20)
001624  670d5a00  storeli.w r5, 208(r20)
001628  674d6a00  storeli.w r6, 212(r20)
00162c  e70d7a00  storeli.w r7, 216(r20)
001630  e74d8a00  storeli.w r8, 220(r20)
001634  670e9a00  storeli.w r9, 224(r20)
001638  674eaa00  storeli.w r10, 228(r20)
00163c  e70eba00  storeli.w r11, 232(r20)
001640  e74eca00  storeli.w r12, 236(r20)
001644  670fda00  storeli.w r13, 240(r20)
001648  674fea00  storeli.w r14, 244(r20)
00164c  e70ffa00  storeli.w r15, 248(r20)
001650  e74f0a01  storeli.w r16, 252(r20)
001654  00a00000  mfence { lm }
001658  c2100fe2  vload_mask16.mz vr1{mr1}, 1792(r30)
00165c  96130102  vadd.f.mz.rn vr7{mr1}, vr2, vr0
001660  96923302  vadd.f.mz.rn vr5{mr1}, vr7, vr3
001664  96924202  vadd.f.mz.rn vr5{mr1}, vr5, vr4
001668  16931202  vadd.f.mz.rn vr6{mr1}, vr5, vr1
00166c  c2128fe2  vload_mask16.mz vr5{mr1}, 1856(r30)
001670  96135302  vadd.f.mz.rn vr7{mr1}, vr6, vr5
001674  42130fe3  vload_mask16.mz vr6{mr1}, 1920(r30)
001678  16946302  vadd.f.mz.rn vr8{mr1}, vr7, vr6
00167c  c2138fe3  vload_mask16.mz vr7{mr1}, 1984(r30)
001680  16147402  vadd.f.mz.rn vr8{mr1}, vr8, vr7
001684  fa100440  vextracti.f r1, 0(vr8)
001688  7a111440  vextracti.f r2, 1(vr8)
00168c  8be02010  add.f.rn r1, r1, r2
001690  7a112440  vextracti.f r2, 2(vr8)
001694  8b601110  add.f.rn r1, r2, r1
001698  7a113440  vextracti.f r2, 3(vr8)
00169c  8b601110  add.f.rn r1, r2, r1
0016a0  7a114440  vextracti.f r2, 4(vr8)
0016a4  8b601110  add.f.rn r1, r2, r1
0016a8  7a115440  vextracti.f r2, 5(vr8)
0016ac  8b601110  add.f.rn r1, r2, r1
0016b0  7a116440  vextracti.f r2, 6(vr8)
0016b4  8b601110  add.f.rn r1, r2, r1
0016b8  7a117440  vextracti.f r2, 7(vr8)
0016bc  8b601110  add.f.rn r1, r2, r1
0016c0  7a118440  vextracti.f r2, 8(vr8)
0016c4  8b601110  add.f.rn r1, r2, r1
0016c8  7a119440  vextracti.f r2, 9(vr8)
0016cc  8b601110  add.f.rn r1, r2, r1
0016d0  7a11a440  vextracti.f r2, 10(vr8)
0016d4  8b601110  add.f.rn r1, r2, r1
0016d8  7a11b440  vextracti.f r2, 11(vr8)
0016dc  8b601110  add.f.rn r1, r2, r1
0016e0  7a11c440  vextracti.f r2, 12(vr8)
0016e4  8b601110  add.f.rn r1, r2, r1
0016e8  7a11d440  vextracti.f r2, 13(vr8)
0016ec  8b601110  add.f.rn r1, r2, r1
0016f0  7a11e440  vextracti.f r2, 14(vr8)
0016f4  8b601110  add.f.rn r1, r2, r1
0016f8  7a11f440  vextracti.f r2, 15(vr8)
0016fc  8b601110  add.f.rn r1, r2, r1
001700  63412ff0  loadli.w r2,  -2028(r30)
001704  73601100  stores.w r1, 0(r2)
001708  00a00300  mfence { lm, sm, gm }
00170c  80210904  csr_set csr3, r18
001710  00d00100  sync_group
001714  bbfb09f4  bneq r19, zero, -5380
001718  63024ff0  loadli.w r4,  -2016(r30)
00171c  ef400200  loads.w r1, 0(r4)
001720  6f414200  loads.w r2, 4(r4)
001724  ef418200  loads.w r3, 8(r4)
001728  8be02010  add.f.rn r1, r1, r2
00172c  6f41c200  loads.w r2, 12(r4)
001730  8be03010  add.f.rn r1, r1, r3
001734  ef410201  loads.w r3, 16(r4)
001738  8be02010  add.f.rn r1, r1, r2
00173c  6f414201  loads.w r2, 20(r4)
001740  8be03010  add.f.rn r1, r1, r3
001744  ef418201  loads.w r3, 24(r4)
001748  8be02010  add.f.rn r1, r1, r2
00174c  6f41c201  loads.w r2, 28(r4)
001750  8be03010  add.f.rn r1, r1, r3
001754  ef410202  loads.w r3, 32(r4)
001758  8be02010  add.f.rn r1, r1, r2
00175c  6f414202  loads.w r2, 36(r4)
001760  8be03010  add.f.rn r1, r1, r3
001764  ef418202  loads.w r3, 40(r4)
001768  8be02010  add.f.rn r1, r1, r2
00176c  6f41c202  loads.w r2, 44(r4)
001770  8be03010  add.f.rn r1, r1, r3
001774  ef410203  loads.w r3, 48(r4)
001778  8be02010  add.f.rn r1, r1, r2
00177c  6f414203  loads.w r2, 52(r4)
001780  8be03010  add.f.rn r1, r1, r3
001784  ef418203  loads.w r3, 56(r4)
001788  8be02010  add.f.rn r1, r1, r2
00178c  6f41c203  loads.w r2, 60(r4)
001790  8be03010  add.f.rn r1, r1, r3
001794  8be02010  add.f.rn r1, r1, r2
001798  73601200  stores.w r1, 0(r4)
00179c  db4efdff  j -5516
0017a0  9f0e0fef  addli sp, r30, -2176
0017a4  9f8e0e11  addli sp, sp, 2176
0017a8  00a00300  mfence { lm, sm, gm }
0017ac  00100000  exit
0017b0  00100000  exit
0017b4  00100000  exit
0017b8  00100000  exit
0017bc  00100000  exit
0017c0  00100000  exit
0017c4  00100000  exit
0017c8  00100000  exit
0017cc  00100000  exit
0017d0  00100000  exit
0017d4  00100000  exit
0017d8  00100000  exit
0017dc  00100000  exit
0017e0  00100000  exit
0017e4  00100000  exit
0017e8  00100000  exit
0017ec  00100000  exit
0017f0  00100000  exit
0017f4  00100000  exit
0017f8  00100000  exit
0017fc  00100000  exit
001800  00100000  exit
001804  00100000  exit
001808  00100000  exit
00180c  00100000  exit
001810  00100000  exit
001814  00100000  exit
001818  00100000  exit
00181c  00100000  exit
001820  00100000  exit
001824  00100000  exit
001828  00100000  exit
00182c  00100000  exit
001830  00100000  exit
001834  00100000  exit
001838  00100000  exit
00183c  00100000  exit
001840  00100000  exit
001844  00100000  exit
001848  00100000  exit
00184c  00100000  exit
001850  00100000  exit
001854  00100000  exit
001858  00100000  exit
00185c  00100000  exit
001860  00100000  exit
001864  00100000  exit
001868  00100000  exit
00186c  00100000  exit
001870  00100000  exit
001874  00100000  exit
001878  00100000  exit
00187c  00100000  exit
001880  00100000  exit
001884  00100000  exit
001888  00100000  exit
00188c  00100000  exit
001890  00100000  exit
001894  00100000  exit
001898  00100000  exit
00189c  00100000  exit
0018a0  00100000  exit
0018a4  00100000  exit
0018a8  00100000  exit
0018ac  00100000  exit
0018b0  00100000  exit
0018b4  00100000  exit
0018b8  00100000  exit
0018bc  00100000  exit
0018c0  00100000  exit
0018c4  00100000  exit
0018c8  00100000  exit
0018cc  00100000  exit
0018d0  00100000  exit
0018d4  00100000  exit
0018d8  00100000  exit
0018dc  00100000  exit
0018e0  00100000  exit
0018e4  00100000  exit
0018e8  00100000  exit
0018ec  00100000  exit
0018f0  00100000  exit
0018f4  00100000  exit
0018f8  00100000  exit
0018fc  00100000  exit
001900  00100000  exit
001904  00100000  exit
001908  00100000  exit
00190c  00100000  exit
001910  00100000  exit
001914  00100000  exit
001918  00100000  exit
00191c  00100000  exit
001920  00100000  exit
001924  00100000  exit
001928  00100000  exit
00192c  00100000  exit
001930  00100000  exit
001934  00100000  exit
001938  00100000  exit
00193c  00100000  exit
001940  00100000  exit
001944  00100000  exit
001948  00100000  exit
00194c  00100000  exit
001950  00100000  exit
001954  00100000  exit
001958  00100000  exit
00195c  00100000  exit
001960  00100000  exit
001964  00100000  exit
001968  00100000  exit
00196c  00100000  exit
001970  00100000  exit
001974  00100000  exit
001978  00100000  exit
00197c  00100000  exit
001980  00100000  exit
001984  00100000  exit
001988  00100000  exit
00198c  00100000  exit
001990  00100000  exit
001994  00100000  exit
001998  00100000  exit
00199c  00100000  exit
0019a0  00100000  exit
0019a4  00100000  exit
0019a8  00100000  exit
0019ac  00100000  exit
0019b0  00100000  exit
0019b4  00100000  exit
0019b8  00100000  exit
0019bc  00100000  exit
0019c0  00100000  exit
0019c4  00100000  exit
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
