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
000104  9b96f2ff  ori r13, r5, 4095
000108  0b942110  add.s r8, r3, r2
00010c  0b924320  mul.s r4, r7, r4
000110  9f042420  addli r9, r8, 4112
000114  0b126220  mul.s r4, r4, r6
000118  e7019ff0  storeli.w r9, -2024(r30)
00011c  73e00400  stores.w zero, 0(r9)
000120  80540002  load_param_i r9, 0
000124  00a00300  mfence { lm, sm, gm }
000128  80a10604  csr_set csr3, r13
00012c  00d00100  sync_group
000130  e7418ff0  storeli.w r8, -2020(r30)
000134  73600400  stores.w zero, 0(r8)
000138  00a00300  mfence { lm, sm, gm }
00013c  80a10604  csr_set csr3, r13
000140  00d00100  sync_group
000144  e70b4fee  storeli.w r4, -2120(r30)
000148  4b49920a  ble.s r4, r9, 5712
00014c  1f022000  addli r4, zero, 16
000150  80d30002  load_param_i r7, 1
000154  1f250000  addli r10, zero, 2
000158  eb528f00  load.d r[6:7], 8(r30)
00015c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000160  6741dff0  storeli.w r13, -2028(r30)
000164  0b924030  div.s r4, r1, r4
000168  674b7fee  storeli.w r7, -2124(r30)
00016c  abf3ffff  lui r7, 1048575
000170  9b9303fc  ori r7, r7, 4032
000174  97817100  and r3, r3, r7
000178  1b344200  slli r8, r4, 4
00017c  1b32b200  slli r4, r4, 11
000180  0b948018  sub.s r8, r1, r8
000184  9b80f000  andi r1, r1, 15
000188  9b337400  slli r7, r8, 7
00018c  0b942110  add.s r8, r3, r2
000190  67401ff0  storeli.w r1, -2044(r30)
000194  33910328  sext_int2long r[3:4], r7
000198  9f002420  addli r1, r8, 4112
00019c  0b924310  add.s r4, r7, r4
0001a0  9f030004  addli r7, zero, 512
0001a4  e7028ff0  storeli.w r8, -2008(r30)
0001a8  1731a102  sll.d r[3:4], r[3:4], r10
0001ac  67421ff0  storeli.w r1, -2012(r30)
0001b0  9f008fef  addli r1, r30, -2112
0001b4  670b4fee  storeli.w r4, -2128(r30)
0001b8  0ba12210  add.ul r[3:4], r[6:7], r[3:4]
0001bc  1f030ff6  addli r6, r30, -1280
0001c0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0001c4  73342f80  store.d r[3:4], -2040(r30)
0001c8  db030000  j 28
0001cc  e3447fef  loadli.w r9,  -2116(r30)
0001d0  e3406fef  loadli.w r1,  -2124(r30)
0001d4  8b941410  add.s r9, r9, r1
0001d8  e3007fef  loadli.w r1,  -2120(r30)
0001dc  3fa01400  blt.s r9, r1, 8
0001e0  5bb70200  j 5560
0001e4  e3005f00  loadli.w r1,  40(r30)
0001e8  63414f00  loadli.w r2,  36(r30)
0001ec  9f110000  addli r3, zero, 1
0001f0  e74b9fee  storeli.w r9, -2116(r30)
0001f4  8b901430  div.s r1, r9, r1
0001f8  8b902030  div.s r1, r1, r2
0001fc  63016fef  loadli.w r2,  -2128(r30)
000200  9bb0e000  slli r1, r1, 14
000204  8b101110  add.s r1, r2, r1
000208  67021ff0  storeli.w r1, -2016(r30)
00020c  9f000000  addli r1, zero, 0
000210  db150000  j 172
000214  00a00300  mfence { lm, sm, gm }
000218  80a10604  csr_set csr3, r13
00021c  00d00100  sync_group
000220  e3404ff0  loadli.w r1,  -2012(r30)
000224  2b01803f  lui r2, 260096
000228  6b520faf  load.d r[5:6], -1296(r30)
00022c  9f030004  addli r7, zero, 512
000230  1f030ff6  addli r6, r30, -1280
000234  efc00000  loads.w r1, 0(r1)
000238  8f001118  div.f.rn r1, r2, r1
00023c  0a912002  vmul.f.mz.rn vr2{mr1}, r1, vr2
000240  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
000244  8a913002  vmul.f.mz.rn vr3{mr1}, r1, vr3
000248  0a924002  vmul.f.mz.rn vr4{mr1}, r1, vr4
00024c  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
000250  8a925002  vmul.f.mz.rn vr5{mr1}, r1, vr5
000254  0a936002  vmul.f.mz.rn vr6{mr1}, r1, vr6
000258  8a937002  vmul.f.mz.rn vr7{mr1}, r1, vr7
00025c  6b510f01  load.d r[3:4], 16(r30)
000260  9f000ff6  addli r1, r30, -1280
000264  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
000268  9f008ff6  addli r1, r30, -1216
00026c  0b214110  add.ul r[3:4], r[3:4], r[5:6]
000270  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000274  9f000ff7  addli r1, r30, -1152
000278  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
00027c  9f008ff7  addli r1, r30, -1088
000280  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
000284  ab0000f0  lui r1, 983040
000288  46101f82  vstore_mask16.mz vr1{mr1}, 1024(r30)
00028c  46145f82  vstore_mask16.mz vr5{mr1}, 1088(r30)
000290  46186f82  vstore_mask16.mz vr6{mr1}, 1152(r30)
000294  461c7f82  vstore_mask16.mz vr7{mr1}, 1216(r30)
000298  00a00000  mfence { lm }
00029c  97901300  or r1, r7, r1
0002a0  ff306100  s_lm2gm r1, r6, 0(r[3:4])
0002a4  9f010000  addli r3, zero, 0
0002a8  00a00000  mfence { lm }
0002ac  e340fff5  loadli.w r1,  -1284(r30)
0002b0  1b811000  andi r2, r1, 1
0002b4  9f000040  addli r1, zero, 8192
0002b8  375c01fe  beq r2, zero, -236
0002bc  63014ff0  loadli.w r2,  -2016(r30)
0002c0  e74f3ff4  storeli.w r3, -1284(r30)
0002c4  9f220000  addli r5, zero, 2
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
000350  634ebffb  loadli.w r28,  -548(r30)
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
000398  e3097ffb  loadli.w r19,  -584(r30)
00039c  634a7ffb  loadli.w r20,  -580(r30)
0003a0  e30a8ffb  loadli.w r21,  -576(r30)
0003a4  634b8ffb  loadli.w r22,  -572(r30)
0003a8  e30b9ffb  loadli.w r23,  -568(r30)
0003ac  634c9ffb  loadli.w r24,  -564(r30)
0003b0  e30caffb  loadli.w r25,  -560(r30)
0003b4  634daffb  loadli.w r26,  -556(r30)
0003b8  e30dbffb  loadli.w r27,  -552(r30)
0003bc  e742cff1  storeli.w r28, -2004(r30)
0003c0  630ecffb  loadli.w r28,  -544(r30)
0003c4  6703cff1  storeli.w r28, -2000(r30)
0003c8  634ecffb  loadli.w r28,  -540(r30)
0003cc  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0003d0  e3000ffa  loadli.w r1,  -768(r30)
0003d4  6743cff1  storeli.w r28, -1996(r30)
0003d8  630edffb  loadli.w r28,  -536(r30)
0003dc  e70e1ff0  storeli.w r1, -1816(r30)
0003e0  e3400ffa  loadli.w r1,  -764(r30)
0003e4  e703cff1  storeli.w r28, -1992(r30)
0003e8  634edffb  loadli.w r28,  -532(r30)
0003ec  670f1ff0  storeli.w r1, -1808(r30)
0003f0  e3001ffa  loadli.w r1,  -760(r30)
0003f4  e743cff1  storeli.w r28, -1988(r30)
0003f8  630eeffb  loadli.w r28,  -528(r30)
0003fc  e70f1ff0  storeli.w r1, -1800(r30)
000400  e3401ffa  loadli.w r1,  -756(r30)
000404  6704cff1  storeli.w r28, -1984(r30)
000408  634eeffb  loadli.w r28,  -524(r30)
00040c  67001ff2  storeli.w r1, -1792(r30)
000410  e3002ffa  loadli.w r1,  -752(r30)
000414  6744cff1  storeli.w r28, -1980(r30)
000418  630efffb  loadli.w r28,  -520(r30)
00041c  e7001ff2  storeli.w r1, -1784(r30)
000420  e3402ffa  loadli.w r1,  -748(r30)
000424  e704cff1  storeli.w r28, -1976(r30)
000428  634efffb  loadli.w r28,  -516(r30)
00042c  67011ff2  storeli.w r1, -1776(r30)
000430  e3003ffa  loadli.w r1,  -744(r30)
000434  e744cff1  storeli.w r28, -1972(r30)
000438  630e0ffc  loadli.w r28,  -512(r30)
00043c  e7011ff2  storeli.w r1, -1768(r30)
000440  e3403ffa  loadli.w r1,  -740(r30)
000444  6705cff1  storeli.w r28, -1968(r30)
000448  634e0ffc  loadli.w r28,  -508(r30)
00044c  67021ff2  storeli.w r1, -1760(r30)
000450  e3004ffa  loadli.w r1,  -736(r30)
000454  6745cff1  storeli.w r28, -1964(r30)
000458  630e1ffc  loadli.w r28,  -504(r30)
00045c  e7021ff2  storeli.w r1, -1752(r30)
000460  e3404ffa  loadli.w r1,  -732(r30)
000464  e705cff1  storeli.w r28, -1960(r30)
000468  634e1ffc  loadli.w r28,  -500(r30)
00046c  67031ff2  storeli.w r1, -1744(r30)
000470  e3005ffa  loadli.w r1,  -728(r30)
000474  e745cff1  storeli.w r28, -1956(r30)
000478  630e2ffc  loadli.w r28,  -496(r30)
00047c  e7031ff2  storeli.w r1, -1736(r30)
000480  e3405ffa  loadli.w r1,  -724(r30)
000484  6706cff1  storeli.w r28, -1952(r30)
000488  634e2ffc  loadli.w r28,  -492(r30)
00048c  67041ff2  storeli.w r1, -1728(r30)
000490  e3006ffa  loadli.w r1,  -720(r30)
000494  6746cff1  storeli.w r28, -1948(r30)
000498  630e3ffc  loadli.w r28,  -488(r30)
00049c  e7041ff2  storeli.w r1, -1720(r30)
0004a0  e3406ffa  loadli.w r1,  -716(r30)
0004a4  e706cff1  storeli.w r28, -1944(r30)
0004a8  634e3ffc  loadli.w r28,  -484(r30)
0004ac  67051ff2  storeli.w r1, -1712(r30)
0004b0  e3007ffa  loadli.w r1,  -712(r30)
0004b4  e746cff1  storeli.w r28, -1940(r30)
0004b8  630e4ffc  loadli.w r28,  -480(r30)
0004bc  e7051ff2  storeli.w r1, -1704(r30)
0004c0  e3407ffa  loadli.w r1,  -708(r30)
0004c4  6707cff1  storeli.w r28, -1936(r30)
0004c8  634e4ffc  loadli.w r28,  -476(r30)
0004cc  67061ff2  storeli.w r1, -1696(r30)
0004d0  e3008ffa  loadli.w r1,  -704(r30)
0004d4  6747cff1  storeli.w r28, -1932(r30)
0004d8  630e5ffc  loadli.w r28,  -472(r30)
0004dc  e7061ff2  storeli.w r1, -1688(r30)
0004e0  e3408ffa  loadli.w r1,  -700(r30)
0004e4  e707cff1  storeli.w r28, -1928(r30)
0004e8  634e5ffc  loadli.w r28,  -468(r30)
0004ec  67071ff2  storeli.w r1, -1680(r30)
0004f0  e3009ffa  loadli.w r1,  -696(r30)
0004f4  e747cff1  storeli.w r28, -1924(r30)
0004f8  630e6ffc  loadli.w r28,  -464(r30)
0004fc  e7071ff2  storeli.w r1, -1672(r30)
000500  e3409ffa  loadli.w r1,  -692(r30)
000504  6708cff1  storeli.w r28, -1920(r30)
000508  634e6ffc  loadli.w r28,  -460(r30)
00050c  67081ff2  storeli.w r1, -1664(r30)
000510  e300affa  loadli.w r1,  -688(r30)
000514  6748cff1  storeli.w r28, -1916(r30)
000518  630e7ffc  loadli.w r28,  -456(r30)
00051c  e7081ff2  storeli.w r1, -1656(r30)
000520  e340affa  loadli.w r1,  -684(r30)
000524  e708cff1  storeli.w r28, -1912(r30)
000528  634e7ffc  loadli.w r28,  -452(r30)
00052c  67091ff2  storeli.w r1, -1648(r30)
000530  e300bffa  loadli.w r1,  -680(r30)
000534  e748cff1  storeli.w r28, -1908(r30)
000538  630e8ffc  loadli.w r28,  -448(r30)
00053c  e7091ff2  storeli.w r1, -1640(r30)
000540  e340bffa  loadli.w r1,  -676(r30)
000544  6709cff1  storeli.w r28, -1904(r30)
000548  634e8ffc  loadli.w r28,  -444(r30)
00054c  670a1ff2  storeli.w r1, -1632(r30)
000550  e300cffa  loadli.w r1,  -672(r30)
000554  6749cff1  storeli.w r28, -1900(r30)
000558  630e9ffc  loadli.w r28,  -440(r30)
00055c  e70a1ff2  storeli.w r1, -1624(r30)
000560  e340cffa  loadli.w r1,  -668(r30)
000564  e709cff1  storeli.w r28, -1896(r30)
000568  634e9ffc  loadli.w r28,  -436(r30)
00056c  e74a1ff2  storeli.w r1, -1620(r30)
000570  e300dffa  loadli.w r1,  -664(r30)
000574  e749cff1  storeli.w r28, -1892(r30)
000578  630eaffc  loadli.w r28,  -432(r30)
00057c  670b1ff2  storeli.w r1, -1616(r30)
000580  e340dffa  loadli.w r1,  -660(r30)
000584  670acff1  storeli.w r28, -1888(r30)
000588  634eaffc  loadli.w r28,  -428(r30)
00058c  674b1ff2  storeli.w r1, -1612(r30)
000590  9f008fef  addli r1, r30, -2112
000594  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000598  e300effa  loadli.w r1,  -656(r30)
00059c  674acff1  storeli.w r28, -1884(r30)
0005a0  630ebffc  loadli.w r28,  -424(r30)
0005a4  e70acff1  storeli.w r28, -1880(r30)
0005a8  634ebffc  loadli.w r28,  -420(r30)
0005ac  92340002  vadd.s.mz vr9{mr1}, zero, vr0
0005b0  12350002  vadd.s.mz vr10{mr1}, zero, vr0
0005b4  e74acff1  storeli.w r28, -1876(r30)
0005b8  630ecffc  loadli.w r28,  -416(r30)
0005bc  670bcff1  storeli.w r28, -1872(r30)
0005c0  634ecffc  loadli.w r28,  -412(r30)
0005c4  674bcff1  storeli.w r28, -1868(r30)
0005c8  630edffc  loadli.w r28,  -408(r30)
0005cc  e70bcff1  storeli.w r28, -1864(r30)
0005d0  634edffc  loadli.w r28,  -404(r30)
0005d4  e74bcff1  storeli.w r28, -1860(r30)
0005d8  630eeffc  loadli.w r28,  -400(r30)
0005dc  670ccff1  storeli.w r28, -1856(r30)
0005e0  634eeffc  loadli.w r28,  -396(r30)
0005e4  674ccff1  storeli.w r28, -1852(r30)
0005e8  630efffc  loadli.w r28,  -392(r30)
0005ec  e70ccff1  storeli.w r28, -1848(r30)
0005f0  634efffc  loadli.w r28,  -388(r30)
0005f4  e74ccff1  storeli.w r28, -1844(r30)
0005f8  630e0ffd  loadli.w r28,  -384(r30)
0005fc  670dcff1  storeli.w r28, -1840(r30)
000600  634e0ffd  loadli.w r28,  -380(r30)
000604  674dcff1  storeli.w r28, -1836(r30)
000608  630e1ffd  loadli.w r28,  -376(r30)
00060c  e70dcff1  storeli.w r28, -1832(r30)
000610  634e1ffd  loadli.w r28,  -372(r30)
000614  e74dcff1  storeli.w r28, -1828(r30)
000618  630e2ffd  loadli.w r28,  -368(r30)
00061c  670ecff1  storeli.w r28, -1824(r30)
000620  634e2ffd  loadli.w r28,  -364(r30)
000624  674ecff1  storeli.w r28, -1820(r30)
000628  630e3ffd  loadli.w r28,  -360(r30)
00062c  e74ecff1  storeli.w r28, -1812(r30)
000630  634e3ffd  loadli.w r28,  -356(r30)
000634  674fcff1  storeli.w r28, -1804(r30)
000638  630e4ffd  loadli.w r28,  -352(r30)
00063c  e74fcff1  storeli.w r28, -1796(r30)
000640  634e4ffd  loadli.w r28,  -348(r30)
000644  6740cff3  storeli.w r28, -1788(r30)
000648  630e5ffd  loadli.w r28,  -344(r30)
00064c  e740cff3  storeli.w r28, -1780(r30)
000650  634e5ffd  loadli.w r28,  -340(r30)
000654  6741cff3  storeli.w r28, -1772(r30)
000658  630e6ffd  loadli.w r28,  -336(r30)
00065c  e741cff3  storeli.w r28, -1764(r30)
000660  634e6ffd  loadli.w r28,  -332(r30)
000664  6742cff3  storeli.w r28, -1756(r30)
000668  630e7ffd  loadli.w r28,  -328(r30)
00066c  e742cff3  storeli.w r28, -1748(r30)
000670  634e7ffd  loadli.w r28,  -324(r30)
000674  6743cff3  storeli.w r28, -1740(r30)
000678  630e8ffd  loadli.w r28,  -320(r30)
00067c  e743cff3  storeli.w r28, -1732(r30)
000680  634e8ffd  loadli.w r28,  -316(r30)
000684  6744cff3  storeli.w r28, -1724(r30)
000688  630e9ffd  loadli.w r28,  -312(r30)
00068c  e744cff3  storeli.w r28, -1716(r30)
000690  634e9ffd  loadli.w r28,  -308(r30)
000694  6745cff3  storeli.w r28, -1708(r30)
000698  630eaffd  loadli.w r28,  -304(r30)
00069c  e745cff3  storeli.w r28, -1700(r30)
0006a0  634eaffd  loadli.w r28,  -300(r30)
0006a4  6746cff3  storeli.w r28, -1692(r30)
0006a8  630ebffd  loadli.w r28,  -296(r30)
0006ac  e746cff3  storeli.w r28, -1684(r30)
0006b0  634ebffd  loadli.w r28,  -292(r30)
0006b4  6747cff3  storeli.w r28, -1676(r30)
0006b8  630ecffd  loadli.w r28,  -288(r30)
0006bc  e747cff3  storeli.w r28, -1668(r30)
0006c0  634ecffd  loadli.w r28,  -284(r30)
0006c4  6748cff3  storeli.w r28, -1660(r30)
0006c8  630edffd  loadli.w r28,  -280(r30)
0006cc  e748cff3  storeli.w r28, -1652(r30)
0006d0  634edffd  loadli.w r28,  -276(r30)
0006d4  6749cff3  storeli.w r28, -1644(r30)
0006d8  630eeffd  loadli.w r28,  -272(r30)
0006dc  e749cff3  storeli.w r28, -1636(r30)
0006e0  634eeffd  loadli.w r28,  -268(r30)
0006e4  674acff3  storeli.w r28, -1628(r30)
0006e8  630efffd  loadli.w r28,  -264(r30)
0006ec  e70bcff3  storeli.w r28, -1608(r30)
0006f0  634efffd  loadli.w r28,  -260(r30)
0006f4  e74bcff3  storeli.w r28, -1604(r30)
0006f8  1f1e0000  addli r28, zero, 1
0006fc  7e010ee0  vmmov mr2, r28
000700  630edff1  loadli.w r28,  -1816(r30)
000704  ea249e34  vor.u.mh vr9{mr2}, r28, vr9
000708  1f2e0000  addli r28, zero, 2
00070c  fe010ee0  vmmov mr3, r28
000710  630eeff1  loadli.w r28,  -1808(r30)
000714  ea249e36  vor.u.mh vr9{mr3}, r28, vr9
000718  1f4e0000  addli r28, zero, 4
00071c  7e000ee0  vmmov mr0, r28
000720  630efff1  loadli.w r28,  -1800(r30)
000724  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
000728  1f0e1000  addli r28, zero, 8
00072c  7e000ee0  vmmov mr0, r28
000730  630e0ff2  loadli.w r28,  -1792(r30)
000734  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
000738  1f0e2000  addli r28, zero, 16
00073c  7e000ee0  vmmov mr0, r28
000740  630e1ff2  loadli.w r28,  -1784(r30)
000744  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
000748  1f0e4000  addli r28, zero, 32
00074c  7e000ee0  vmmov mr0, r28
000750  630e2ff2  loadli.w r28,  -1776(r30)
000754  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
000758  1f0e8000  addli r28, zero, 64
00075c  7e000ee0  vmmov mr0, r28
000760  630e3ff2  loadli.w r28,  -1768(r30)
000764  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
000768  1f0e0001  addli r28, zero, 128
00076c  7e000ee0  vmmov mr0, r28
000770  630e4ff2  loadli.w r28,  -1760(r30)
000774  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
000778  1f0e0002  addli r28, zero, 256
00077c  7e000ee0  vmmov mr0, r28
000780  630e5ff2  loadli.w r28,  -1752(r30)
000784  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
000788  1f0e0004  addli r28, zero, 512
00078c  7e000ee0  vmmov mr0, r28
000790  630e6ff2  loadli.w r28,  -1744(r30)
000794  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
000798  1f0e0008  addli r28, zero, 1024
00079c  7e000ee0  vmmov mr0, r28
0007a0  630e7ff2  loadli.w r28,  -1736(r30)
0007a4  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
0007a8  1f0e0010  addli r28, zero, 2048
0007ac  7e000ee0  vmmov mr0, r28
0007b0  630e8ff2  loadli.w r28,  -1728(r30)
0007b4  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
0007b8  1f0e0020  addli r28, zero, 4096
0007bc  7e000ee0  vmmov mr0, r28
0007c0  630e9ff2  loadli.w r28,  -1720(r30)
0007c4  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
0007c8  1f0e0040  addli r28, zero, 8192
0007cc  1f400000  addli zero, zero, 4
0007d0  7e000ee0  vmmov mr0, r28
0007d4  630eaff2  loadli.w r28,  -1712(r30)
0007d8  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
0007dc  2b4e0000  lui r28, 4
0007e0  7e000ee0  vmmov mr0, r28
0007e4  630ebff2  loadli.w r28,  -1704(r30)
0007e8  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
0007ec  2b8e0000  lui r28, 8
0007f0  7e000ee0  vmmov mr0, r28
0007f4  630ecff2  loadli.w r28,  -1696(r30)
0007f8  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
0007fc  630edff2  loadli.w r28,  -1688(r30)
000800  6a25ae34  vor.u.mh vr10{mr2}, r28, vr10
000804  630eeff2  loadli.w r28,  -1680(r30)
000808  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
00080c  6a25ae36  vor.u.mh vr10{mr3}, r28, vr10
000810  630efff2  loadli.w r28,  -1672(r30)
000814  fe0100e0  vmmov mr3, zero
000818  17200000  xor zero, zero, zero
00081c  1f001000  addli zero, zero, 8
000820  6a25ae36  vor.u.mh vr10{mr3}, r28, vr10
000824  630e0ff3  loadli.w r28,  -1664(r30)
000828  7e0000e0  vmmov mr0, zero
00082c  17200000  xor zero, zero, zero
000830  1f002000  addli zero, zero, 16
000834  6a25ae30  vor.u.mh vr10{mr0}, r28, vr10
000838  630e1ff3  loadli.w r28,  -1656(r30)
00083c  7e0000e0  vmmov mr0, zero
000840  17200000  xor zero, zero, zero
000844  1f004000  addli zero, zero, 32
000848  6a25ae30  vor.u.mh vr10{mr0}, r28, vr10
00084c  630e2ff3  loadli.w r28,  -1648(r30)
000850  7e0000e0  vmmov mr0, zero
000854  17200000  xor zero, zero, zero
000858  1f008000  addli zero, zero, 64
00085c  6a25ae30  vor.u.mh vr10{mr0}, r28, vr10
000860  630e3ff3  loadli.w r28,  -1640(r30)
000864  7e0000e0  vmmov mr0, zero
000868  17200000  xor zero, zero, zero
00086c  1f000001  addli zero, zero, 128
000870  6a25ae30  vor.u.mh vr10{mr0}, r28, vr10
000874  630e4ff3  loadli.w r28,  -1632(r30)
000878  7e0000e0  vmmov mr0, zero
00087c  17200000  xor zero, zero, zero
000880  1f000002  addli zero, zero, 256
000884  6a25ae30  vor.u.mh vr10{mr0}, r28, vr10
000888  630e5ff3  loadli.w r28,  -1624(r30)
00088c  7e0000e0  vmmov mr0, zero
000890  17200000  xor zero, zero, zero
000894  1f000004  addli zero, zero, 512
000898  6a25ae30  vor.u.mh vr10{mr0}, r28, vr10
00089c  634e5ff3  loadli.w r28,  -1620(r30)
0008a0  7e0000e0  vmmov mr0, zero
0008a4  17200000  xor zero, zero, zero
0008a8  1f000008  addli zero, zero, 1024
0008ac  6a25ae30  vor.u.mh vr10{mr0}, r28, vr10
0008b0  630e6ff3  loadli.w r28,  -1616(r30)
0008b4  7e0000e0  vmmov mr0, zero
0008b8  17200000  xor zero, zero, zero
0008bc  1f000010  addli zero, zero, 2048
0008c0  6a25ae30  vor.u.mh vr10{mr0}, r28, vr10
0008c4  634e6ff3  loadli.w r28,  -1612(r30)
0008c8  7e0000e0  vmmov mr0, zero
0008cc  17200000  xor zero, zero, zero
0008d0  92350002  vadd.s.mz vr11{mr1}, zero, vr0
0008d4  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0008d8  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0008dc  12340002  vadd.s.mz vr8{mr1}, zero, vr0
0008e0  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0008e4  6a25ae30  vor.u.mh vr10{mr0}, r28, vr10
0008e8  1f0e0020  addli r28, zero, 4096
0008ec  7e000ee0  vmmov mr0, r28
0008f0  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
0008f4  9f000040  addli r1, zero, 8192
0008f8  7e8000e0  vmmov mr0, r1
0008fc  ab400000  lui r1, 4
000900  6a25a130  vor.u.mh vr10{mr0}, r2, vr10
000904  7e8000e0  vmmov mr0, r1
000908  ab800000  lui r1, 8
00090c  1f010002  addli r2, zero, 256
000910  6aa5a130  vor.u.mh vr10{mr0}, r3, vr10
000914  7e8000e0  vmmov mr0, r1
000918  9f200000  addli r1, zero, 2
00091c  6a25a230  vor.u.mh vr10{mr0}, r4, vr10
000920  eaa5b234  vor.u.mh vr11{mr2}, r5, vr11
000924  7e8100e0  vmmov mr2, r1
000928  9f001000  addli r1, zero, 8
00092c  ea25b334  vor.u.mh vr11{mr2}, r6, vr11
000930  7e8100e0  vmmov mr2, r1
000934  9f002000  addli r1, zero, 16
000938  9694a202  vadd.f.mz.rn vr9{mr1}, vr5, vr10
00093c  eaa5b336  vor.u.mh vr11{mr3}, r7, vr11
000940  ea25b434  vor.u.mh vr11{mr2}, r8, vr11
000944  7e8100e0  vmmov mr2, r1
000948  9f004000  addli r1, zero, 32
00094c  eaa5b434  vor.u.mh vr11{mr2}, r9, vr11
000950  7e8100e0  vmmov mr2, r1
000954  9f008000  addli r1, zero, 64
000958  ea25b534  vor.u.mh vr11{mr2}, r10, vr11
00095c  7e8100e0  vmmov mr2, r1
000960  9f000001  addli r1, zero, 128
000964  fe8100e0  vmmov mr3, r1
000968  9f000002  addli r1, zero, 256
00096c  eaa5b534  vor.u.mh vr11{mr2}, r11, vr11
000970  7e8100e0  vmmov mr2, r1
000974  9f000004  addli r1, zero, 512
000978  ea25b636  vor.u.mh vr11{mr3}, r12, vr11
00097c  eaa5b634  vor.u.mh vr11{mr2}, r13, vr11
000980  7e8100e0  vmmov mr2, r1
000984  9f000008  addli r1, zero, 1024
000988  ea25b734  vor.u.mh vr11{mr2}, r14, vr11
00098c  7e8100e0  vmmov mr2, r1
000990  9f000010  addli r1, zero, 2048
000994  eaa5b734  vor.u.mh vr11{mr2}, r15, vr11
000998  7e8100e0  vmmov mr2, r1
00099c  9f000020  addli r1, zero, 4096
0009a0  ea25b834  vor.u.mh vr11{mr2}, r16, vr11
0009a4  7e8100e0  vmmov mr2, r1
0009a8  9f000040  addli r1, zero, 8192
0009ac  eaa5b834  vor.u.mh vr11{mr2}, r17, vr11
0009b0  7e8100e0  vmmov mr2, r1
0009b4  ab400000  lui r1, 4
0009b8  ea25b934  vor.u.mh vr11{mr2}, r18, vr11
0009bc  7e8100e0  vmmov mr2, r1
0009c0  9f100000  addli r1, zero, 1
0009c4  eaa5b934  vor.u.mh vr11{mr2}, r19, vr11
0009c8  ea25ba30  vor.u.mh vr11{mr0}, r20, vr11
0009cc  7e8000e0  vmmov mr0, r1
0009d0  9f200000  addli r1, zero, 2
0009d4  eaa13a30  vor.u.mh vr3{mr0}, r21, vr3
0009d8  7e8000e0  vmmov mr0, r1
0009dc  9f400000  addli r1, zero, 4
0009e0  1615b302  vadd.f.mz.rn vr10{mr1}, vr6, vr11
0009e4  ea213b30  vor.u.mh vr3{mr0}, r22, vr3
0009e8  7e8000e0  vmmov mr0, r1
0009ec  9f001000  addli r1, zero, 8
0009f0  eaa13b30  vor.u.mh vr3{mr0}, r23, vr3
0009f4  7e8000e0  vmmov mr0, r1
0009f8  9f002000  addli r1, zero, 16
0009fc  ea213c30  vor.u.mh vr3{mr0}, r24, vr3
000a00  7e8000e0  vmmov mr0, r1
000a04  9f004000  addli r1, zero, 32
000a08  eaa13c30  vor.u.mh vr3{mr0}, r25, vr3
000a0c  7e8000e0  vmmov mr0, r1
000a10  9f008000  addli r1, zero, 64
000a14  ea213d30  vor.u.mh vr3{mr0}, r26, vr3
000a18  7e8000e0  vmmov mr0, r1
000a1c  eaa13d30  vor.u.mh vr3{mr0}, r27, vr3
000a20  e3405ff0  loadli.w r1,  -2004(r30)
000a24  7e0001e0  vmmov mr0, r2
000a28  1f010004  addli r2, zero, 512
000a2c  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
000a30  e3006ff0  loadli.w r1,  -2000(r30)
000a34  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000a38  e3406ff0  loadli.w r1,  -1996(r30)
000a3c  7e0001e0  vmmov mr0, r2
000a40  1f010008  addli r2, zero, 1024
000a44  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000a48  e3007ff0  loadli.w r1,  -1992(r30)
000a4c  7e0001e0  vmmov mr0, r2
000a50  1f010010  addli r2, zero, 2048
000a54  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000a58  e3407ff0  loadli.w r1,  -1988(r30)
000a5c  7e0001e0  vmmov mr0, r2
000a60  1f010020  addli r2, zero, 4096
000a64  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000a68  e3008ff0  loadli.w r1,  -1984(r30)
000a6c  7e0001e0  vmmov mr0, r2
000a70  1f010040  addli r2, zero, 8192
000a74  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000a78  e3408ff0  loadli.w r1,  -1980(r30)
000a7c  7e0001e0  vmmov mr0, r2
000a80  2b810000  lui r2, 8
000a84  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000a88  e3009ff0  loadli.w r1,  -1976(r30)
000a8c  7e0001e0  vmmov mr0, r2
000a90  1f110000  addli r2, zero, 1
000a94  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
000a98  e3409ff0  loadli.w r1,  -1972(r30)
000a9c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000aa0  e300aff0  loadli.w r1,  -1968(r30)
000aa4  7e0001e0  vmmov mr0, r2
000aa8  1f210000  addli r2, zero, 2
000aac  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000ab0  e340aff0  loadli.w r1,  -1964(r30)
000ab4  7e0001e0  vmmov mr0, r2
000ab8  1f410000  addli r2, zero, 4
000abc  16933302  vadd.f.mz.rn vr6{mr1}, vr7, vr3
000ac0  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000ac4  e300bff0  loadli.w r1,  -1960(r30)
000ac8  7e0001e0  vmmov mr0, r2
000acc  1f011000  addli r2, zero, 8
000ad0  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000ad4  e340bff0  loadli.w r1,  -1956(r30)
000ad8  7e0001e0  vmmov mr0, r2
000adc  1f012000  addli r2, zero, 16
000ae0  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000ae4  e300cff0  loadli.w r1,  -1952(r30)
000ae8  7e0001e0  vmmov mr0, r2
000aec  1f014000  addli r2, zero, 32
000af0  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000af4  e340cff0  loadli.w r1,  -1948(r30)
000af8  7e0001e0  vmmov mr0, r2
000afc  1f018000  addli r2, zero, 64
000b00  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000b04  e300dff0  loadli.w r1,  -1944(r30)
000b08  7e0001e0  vmmov mr0, r2
000b0c  1f010002  addli r2, zero, 256
000b10  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000b14  e340dff0  loadli.w r1,  -1940(r30)
000b18  7e0001e0  vmmov mr0, r2
000b1c  1f010004  addli r2, zero, 512
000b20  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
000b24  e300eff0  loadli.w r1,  -1936(r30)
000b28  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000b2c  e340eff0  loadli.w r1,  -1932(r30)
000b30  7e0001e0  vmmov mr0, r2
000b34  1f010008  addli r2, zero, 1024
000b38  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000b3c  e300fff0  loadli.w r1,  -1928(r30)
000b40  7e0001e0  vmmov mr0, r2
000b44  1f010010  addli r2, zero, 2048
000b48  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000b4c  e340fff0  loadli.w r1,  -1924(r30)
000b50  7e0001e0  vmmov mr0, r2
000b54  1f010020  addli r2, zero, 4096
000b58  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000b5c  e3000ff1  loadli.w r1,  -1920(r30)
000b60  7e0001e0  vmmov mr0, r2
000b64  1f010040  addli r2, zero, 8192
000b68  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000b6c  e3400ff1  loadli.w r1,  -1916(r30)
000b70  7e0001e0  vmmov mr0, r2
000b74  2b810000  lui r2, 8
000b78  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000b7c  e3001ff1  loadli.w r1,  -1912(r30)
000b80  7e0001e0  vmmov mr0, r2
000b84  1f110000  addli r2, zero, 1
000b88  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000b8c  e3401ff1  loadli.w r1,  -1908(r30)
000b90  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000b94  e3002ff1  loadli.w r1,  -1904(r30)
000b98  7e0001e0  vmmov mr0, r2
000b9c  1f210000  addli r2, zero, 2
000ba0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000ba4  e3402ff1  loadli.w r1,  -1900(r30)
000ba8  7e0001e0  vmmov mr0, r2
000bac  1f410000  addli r2, zero, 4
000bb0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000bb4  e3003ff1  loadli.w r1,  -1896(r30)
000bb8  7e0001e0  vmmov mr0, r2
000bbc  1f011000  addli r2, zero, 8
000bc0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000bc4  e3403ff1  loadli.w r1,  -1892(r30)
000bc8  7e0001e0  vmmov mr0, r2
000bcc  1f012000  addli r2, zero, 16
000bd0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000bd4  e3004ff1  loadli.w r1,  -1888(r30)
000bd8  7e0001e0  vmmov mr0, r2
000bdc  1f014000  addli r2, zero, 32
000be0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000be4  e3404ff1  loadli.w r1,  -1884(r30)
000be8  7e0001e0  vmmov mr0, r2
000bec  1f018000  addli r2, zero, 64
000bf0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000bf4  e3005ff1  loadli.w r1,  -1880(r30)
000bf8  7e0001e0  vmmov mr0, r2
000bfc  1f010002  addli r2, zero, 256
000c00  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000c04  e3405ff1  loadli.w r1,  -1876(r30)
000c08  7e0001e0  vmmov mr0, r2
000c0c  1f010004  addli r2, zero, 512
000c10  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
000c14  e3006ff1  loadli.w r1,  -1872(r30)
000c18  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000c1c  e3406ff1  loadli.w r1,  -1868(r30)
000c20  7e0001e0  vmmov mr0, r2
000c24  1f010008  addli r2, zero, 1024
000c28  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000c2c  e3007ff1  loadli.w r1,  -1864(r30)
000c30  7e0001e0  vmmov mr0, r2
000c34  1f010010  addli r2, zero, 2048
000c38  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000c3c  e3407ff1  loadli.w r1,  -1860(r30)
000c40  7e0001e0  vmmov mr0, r2
000c44  1f010020  addli r2, zero, 4096
000c48  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000c4c  e3008ff1  loadli.w r1,  -1856(r30)
000c50  7e0001e0  vmmov mr0, r2
000c54  1f010040  addli r2, zero, 8192
000c58  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000c5c  e3408ff1  loadli.w r1,  -1852(r30)
000c60  7e0001e0  vmmov mr0, r2
000c64  2b810000  lui r2, 8
000c68  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000c6c  e3009ff1  loadli.w r1,  -1848(r30)
000c70  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
000c74  fe0101c0  vmmov mr3, mr2
000c78  e3409ff1  loadli.w r1,  -1844(r30)
000c7c  7e0101e0  vmmov mr2, r2
000c80  1f110000  addli r2, zero, 1
000c84  7e0001e0  vmmov mr0, r2
000c88  1f210000  addli r2, zero, 2
000c8c  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
000c90  e300aff1  loadli.w r1,  -1840(r30)
000c94  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000c98  e340aff1  loadli.w r1,  -1836(r30)
000c9c  7e0001e0  vmmov mr0, r2
000ca0  1f410000  addli r2, zero, 4
000ca4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000ca8  e300bff1  loadli.w r1,  -1832(r30)
000cac  7e0001e0  vmmov mr0, r2
000cb0  1f011000  addli r2, zero, 8
000cb4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000cb8  e340bff1  loadli.w r1,  -1828(r30)
000cbc  7e0001e0  vmmov mr0, r2
000cc0  1f012000  addli r2, zero, 16
000cc4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000cc8  e300cff1  loadli.w r1,  -1824(r30)
000ccc  7e0001e0  vmmov mr0, r2
000cd0  1f014000  addli r2, zero, 32
000cd4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000cd8  e340cff1  loadli.w r1,  -1820(r30)
000cdc  7e0001e0  vmmov mr0, r2
000ce0  1f018000  addli r2, zero, 64
000ce4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000ce8  e340dff1  loadli.w r1,  -1812(r30)
000cec  7e0001e0  vmmov mr0, r2
000cf0  1f010001  addli r2, zero, 128
000cf4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000cf8  e340eff1  loadli.w r1,  -1804(r30)
000cfc  7e0001e0  vmmov mr0, r2
000d00  1f010002  addli r2, zero, 256
000d04  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000d08  e340fff1  loadli.w r1,  -1796(r30)
000d0c  7e0001e0  vmmov mr0, r2
000d10  1f010004  addli r2, zero, 512
000d14  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000d18  e3400ff2  loadli.w r1,  -1788(r30)
000d1c  7e0001e0  vmmov mr0, r2
000d20  1f010008  addli r2, zero, 1024
000d24  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000d28  e3401ff2  loadli.w r1,  -1780(r30)
000d2c  7e0001e0  vmmov mr0, r2
000d30  1f010010  addli r2, zero, 2048
000d34  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000d38  e3402ff2  loadli.w r1,  -1772(r30)
000d3c  7e0001e0  vmmov mr0, r2
000d40  1f010020  addli r2, zero, 4096
000d44  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000d48  e3403ff2  loadli.w r1,  -1764(r30)
000d4c  7e0001e0  vmmov mr0, r2
000d50  1f010040  addli r2, zero, 8192
000d54  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000d58  e3404ff2  loadli.w r1,  -1756(r30)
000d5c  7e0001e0  vmmov mr0, r2
000d60  1f110000  addli r2, zero, 1
000d64  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000d68  e3405ff2  loadli.w r1,  -1748(r30)
000d6c  7e0001e0  vmmov mr0, r2
000d70  1f210000  addli r2, zero, 2
000d74  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
000d78  e3406ff2  loadli.w r1,  -1740(r30)
000d7c  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000d80  e3407ff2  loadli.w r1,  -1732(r30)
000d84  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000d88  e3408ff2  loadli.w r1,  -1724(r30)
000d8c  7e0001e0  vmmov mr0, r2
000d90  1f410000  addli r2, zero, 4
000d94  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000d98  e3409ff2  loadli.w r1,  -1716(r30)
000d9c  7e0001e0  vmmov mr0, r2
000da0  1f011000  addli r2, zero, 8
000da4  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000da8  e340aff2  loadli.w r1,  -1708(r30)
000dac  7e0001e0  vmmov mr0, r2
000db0  1f012000  addli r2, zero, 16
000db4  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000db8  e340bff2  loadli.w r1,  -1700(r30)
000dbc  7e0001e0  vmmov mr0, r2
000dc0  1f014000  addli r2, zero, 32
000dc4  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000dc8  e340cff2  loadli.w r1,  -1692(r30)
000dcc  7e0001e0  vmmov mr0, r2
000dd0  1f018000  addli r2, zero, 64
000dd4  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000dd8  e340dff2  loadli.w r1,  -1684(r30)
000ddc  7e0001e0  vmmov mr0, r2
000de0  1f010001  addli r2, zero, 128
000de4  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000de8  e340eff2  loadli.w r1,  -1676(r30)
000dec  7e0001e0  vmmov mr0, r2
000df0  1f010002  addli r2, zero, 256
000df4  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000df8  e340fff2  loadli.w r1,  -1668(r30)
000dfc  7e0001e0  vmmov mr0, r2
000e00  1f010004  addli r2, zero, 512
000e04  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000e08  e3400ff3  loadli.w r1,  -1660(r30)
000e0c  7e0001e0  vmmov mr0, r2
000e10  1f010008  addli r2, zero, 1024
000e14  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000e18  e3401ff3  loadli.w r1,  -1652(r30)
000e1c  7e0001e0  vmmov mr0, r2
000e20  1f010010  addli r2, zero, 2048
000e24  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000e28  e3402ff3  loadli.w r1,  -1644(r30)
000e2c  7e0001e0  vmmov mr0, r2
000e30  1f010020  addli r2, zero, 4096
000e34  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000e38  e3403ff3  loadli.w r1,  -1636(r30)
000e3c  7e0001e0  vmmov mr0, r2
000e40  1f010040  addli r2, zero, 8192
000e44  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000e48  e3404ff3  loadli.w r1,  -1628(r30)
000e4c  7e0001e0  vmmov mr0, r2
000e50  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000e54  e3007ff3  loadli.w r1,  -1608(r30)
000e58  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
000e5c  e3407ff3  loadli.w r1,  -1604(r30)
000e60  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
000e64  9f000ff5  addli r1, r30, -1408
000e68  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000e6c  9f008ff4  addli r1, r30, -1472
000e70  96932102  vadd.f.mz.rn vr7{mr1}, vr3, vr2
000e74  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000e78  9f000ff4  addli r1, r30, -1536
000e7c  96128102  vadd.f.mz.rn vr5{mr1}, vr2, vr8
000e80  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000e84  9f008ff3  addli r1, r30, -1600
000e88  16111102  vadd.f.mz.rn vr2{mr1}, vr2, vr1
000e8c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000e90  16900002  vadd.f.mz.rn vr0{mr1}, vr1, vr0
000e94  b6109202  vmax.f.mz vr1{mr1}, vr4, vr9
000e98  b690a002  vmax.f.mz vr1{mr1}, vr1, vr10
000e9c  b6906002  vmax.f.mz vr1{mr1}, vr1, vr6
000ea0  b6907002  vmax.f.mz vr1{mr1}, vr1, vr7
000ea4  b6905002  vmax.f.mz vr1{mr1}, vr1, vr5
000ea8  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
000eac  b6900002  vmax.f.mz vr1{mr1}, vr1, vr0
000eb0  fa900040  vextracti.f r1, 0(vr1)
000eb4  7a911040  vextracti.f r2, 1(vr1)
000eb8  fa912040  vextracti.f r3, 2(vr1)
000ebc  7a923040  vextracti.f r4, 3(vr1)
000ec0  fa924040  vextracti.f r5, 4(vr1)
000ec4  7a935040  vextracti.f r6, 5(vr1)
000ec8  fa936040  vextracti.f r7, 6(vr1)
000ecc  7a947040  vextracti.f r8, 7(vr1)
000ed0  fa948040  vextracti.f r9, 8(vr1)
000ed4  7a959040  vextracti.f r10, 9(vr1)
000ed8  fa95a040  vextracti.f r11, 10(vr1)
000edc  7a96b040  vextracti.f r12, 11(vr1)
000ee0  fa96c040  vextracti.f r13, 12(vr1)
000ee4  7a97d040  vextracti.f r14, 13(vr1)
000ee8  fa97e040  vextracti.f r15, 14(vr1)
000eec  7a98f040  vextracti.f r16, 15(vr1)
000ef0  8be02048  max.f r1, r1, r2
000ef4  63413ff0  loadli.w r2,  -2020(r30)
000ef8  8be03048  max.f r1, r1, r3
000efc  8be04048  max.f r1, r1, r4
000f00  8be05048  max.f r1, r1, r5
000f04  8be06048  max.f r1, r1, r6
000f08  8be07048  max.f r1, r1, r7
000f0c  8be08048  max.f r1, r1, r8
000f10  8be09048  max.f r1, r1, r9
000f14  8be0a048  max.f r1, r1, r10
000f18  8be0b048  max.f r1, r1, r11
000f1c  8be0c048  max.f r1, r1, r12
000f20  8be0d048  max.f r1, r1, r13
000f24  e3462ff0  loadli.w r13,  -2028(r30)
000f28  8be0e048  max.f r1, r1, r14
000f2c  8be0f048  max.f r1, r1, r15
000f30  8be00049  max.f r1, r1, r16
000f34  73601100  stores.w r1, 0(r2)
000f38  00a00300  mfence { lm, sm, gm }
000f3c  80a10604  csr_set csr3, r13
000f40  00d00100  sync_group
000f44  e3470ff0  loadli.w r15,  -2044(r30)
000f48  3ba20700  bneq r15, zero, 136
000f4c  63075ff0  loadli.w r14,  -2008(r30)
000f50  ef400700  loads.w r1, 0(r14)
000f54  6f414700  loads.w r2, 4(r14)
000f58  ef418700  loads.w r3, 8(r14)
000f5c  6f42c700  loads.w r4, 12(r14)
000f60  ef420701  loads.w r5, 16(r14)
000f64  6f434701  loads.w r6, 20(r14)
000f68  ef438701  loads.w r7, 24(r14)
000f6c  6f44c701  loads.w r8, 28(r14)
000f70  ef440702  loads.w r9, 32(r14)
000f74  6f454702  loads.w r10, 36(r14)
000f78  ef458702  loads.w r11, 40(r14)
000f7c  6f46c703  loads.w r12, 60(r14)
000f80  8be02048  max.f r1, r1, r2
000f84  6f41c702  loads.w r2, 44(r14)
000f88  8be03048  max.f r1, r1, r3
000f8c  ef410703  loads.w r3, 48(r14)
000f90  8be04048  max.f r1, r1, r4
000f94  6f424703  loads.w r4, 52(r14)
000f98  8be05048  max.f r1, r1, r5
000f9c  ef428703  loads.w r5, 56(r14)
000fa0  8be06048  max.f r1, r1, r6
000fa4  8be07048  max.f r1, r1, r7
000fa8  8be08048  max.f r1, r1, r8
000fac  8be09048  max.f r1, r1, r9
000fb0  8be0a048  max.f r1, r1, r10
000fb4  8be0b048  max.f r1, r1, r11
000fb8  8be02048  max.f r1, r1, r2
000fbc  8be03048  max.f r1, r1, r3
000fc0  8be04048  max.f r1, r1, r4
000fc4  8be05048  max.f r1, r1, r5
000fc8  8be0c048  max.f r1, r1, r12
000fcc  73601700  stores.w r1, 0(r14)
000fd0  00a00300  mfence { lm, sm, gm }
000fd4  80a10604  csr_set csr3, r13
000fd8  00d00100  sync_group
000fdc  e3005ff0  loadli.w r1,  -2008(r30)
000fe0  2b010080  lui r2, 524288
000fe4  1f030ffe  addli r6, r30, -256
000fe8  efc00000  loads.w r1, 0(r1)
000fec  97a02000  xor r1, r1, r2
000ff0  92914002  vadd.f.mz.rn vr3{mr1}, r1, vr4
000ff4  12929002  vadd.f.mz.rn vr4{mr1}, r1, vr9
000ff8  46103fe2  vstore_mask16.mz vr3{mr1}, 1792(r30)
000ffc  1294a002  vadd.f.mz.rn vr8{mr1}, r1, vr10
001000  46144fe2  vstore_mask16.mz vr4{mr1}, 1856(r30)
001004  12936002  vadd.f.mz.rn vr6{mr1}, r1, vr6
001008  46188fe2  vstore_mask16.mz vr8{mr1}, 1920(r30)
00100c  461c6fe2  vstore_mask16.mz vr6{mr1}, 1984(r30)
001010  92905002  vadd.f.mz.rn vr1{mr1}, r1, vr5
001014  92922002  vadd.f.mz.rn vr5{mr1}, r1, vr2
001018  92937002  vadd.f.mz.rn vr7{mr1}, r1, vr7
00101c  00a00000  mfence { lm }
001020  63010300  loadli.w r2,  0(r6)
001024  e3410300  loadli.w r3,  4(r6)
001028  63021300  loadli.w r4,  8(r6)
00102c  e3421300  loadli.w r5,  12(r6)
001030  0f010100  exp.f.rn r2, r2
001034  8f810100  exp.f.rn r3, r3
001038  0f020200  exp.f.rn r4, r4
00103c  8f820200  exp.f.rn r5, r5
001040  67002300  storeli.w r2, 0(r6)
001044  67403300  storeli.w r3, 4(r6)
001048  e7004300  storeli.w r4, 8(r6)
00104c  e7405300  storeli.w r5, 12(r6)
001050  63012300  loadli.w r2,  16(r6)
001054  e3412300  loadli.w r3,  20(r6)
001058  63023300  loadli.w r4,  24(r6)
00105c  e3423300  loadli.w r5,  28(r6)
001060  0f010100  exp.f.rn r2, r2
001064  8f810100  exp.f.rn r3, r3
001068  0f020200  exp.f.rn r4, r4
00106c  8f820200  exp.f.rn r5, r5
001070  67012300  storeli.w r2, 16(r6)
001074  67413300  storeli.w r3, 20(r6)
001078  e7014300  storeli.w r4, 24(r6)
00107c  e7415300  storeli.w r5, 28(r6)
001080  63014300  loadli.w r2,  32(r6)
001084  e3414300  loadli.w r3,  36(r6)
001088  63025300  loadli.w r4,  40(r6)
00108c  e3425300  loadli.w r5,  44(r6)
001090  0f010100  exp.f.rn r2, r2
001094  8f810100  exp.f.rn r3, r3
001098  0f020200  exp.f.rn r4, r4
00109c  8f820200  exp.f.rn r5, r5
0010a0  67022300  storeli.w r2, 32(r6)
0010a4  67423300  storeli.w r3, 36(r6)
0010a8  e7024300  storeli.w r4, 40(r6)
0010ac  e7425300  storeli.w r5, 44(r6)
0010b0  63016300  loadli.w r2,  48(r6)
0010b4  e3416300  loadli.w r3,  52(r6)
0010b8  63027300  loadli.w r4,  56(r6)
0010bc  e3427300  loadli.w r5,  60(r6)
0010c0  0f010100  exp.f.rn r2, r2
0010c4  8f810100  exp.f.rn r3, r3
0010c8  0f020200  exp.f.rn r4, r4
0010cc  8f820200  exp.f.rn r5, r5
0010d0  67032300  storeli.w r2, 48(r6)
0010d4  67433300  storeli.w r3, 52(r6)
0010d8  e7034300  storeli.w r4, 56(r6)
0010dc  e7435300  storeli.w r5, 60(r6)
0010e0  63018300  loadli.w r2,  64(r6)
0010e4  e3418300  loadli.w r3,  68(r6)
0010e8  63029300  loadli.w r4,  72(r6)
0010ec  e3429300  loadli.w r5,  76(r6)
0010f0  0f010100  exp.f.rn r2, r2
0010f4  8f810100  exp.f.rn r3, r3
0010f8  0f020200  exp.f.rn r4, r4
0010fc  8f820200  exp.f.rn r5, r5
001100  67042300  storeli.w r2, 64(r6)
001104  67443300  storeli.w r3, 68(r6)
001108  e7044300  storeli.w r4, 72(r6)
00110c  e7445300  storeli.w r5, 76(r6)
001110  6301a300  loadli.w r2,  80(r6)
001114  e341a300  loadli.w r3,  84(r6)
001118  6302b300  loadli.w r4,  88(r6)
00111c  e342b300  loadli.w r5,  92(r6)
001120  0f010100  exp.f.rn r2, r2
001124  8f810100  exp.f.rn r3, r3
001128  0f020200  exp.f.rn r4, r4
00112c  8f820200  exp.f.rn r5, r5
001130  67052300  storeli.w r2, 80(r6)
001134  67453300  storeli.w r3, 84(r6)
001138  e7054300  storeli.w r4, 88(r6)
00113c  e7455300  storeli.w r5, 92(r6)
001140  6301c300  loadli.w r2,  96(r6)
001144  e341c300  loadli.w r3,  100(r6)
001148  6302d300  loadli.w r4,  104(r6)
00114c  e342d300  loadli.w r5,  108(r6)
001150  0f010100  exp.f.rn r2, r2
001154  8f810100  exp.f.rn r3, r3
001158  0f020200  exp.f.rn r4, r4
00115c  8f820200  exp.f.rn r5, r5
001160  67062300  storeli.w r2, 96(r6)
001164  67463300  storeli.w r3, 100(r6)
001168  e7064300  storeli.w r4, 104(r6)
00116c  e7465300  storeli.w r5, 108(r6)
001170  6301e300  loadli.w r2,  112(r6)
001174  e341e300  loadli.w r3,  116(r6)
001178  6302f300  loadli.w r4,  120(r6)
00117c  e342f300  loadli.w r5,  124(r6)
001180  0f010100  exp.f.rn r2, r2
001184  8f810100  exp.f.rn r3, r3
001188  0f020200  exp.f.rn r4, r4
00118c  8f820200  exp.f.rn r5, r5
001190  67072300  storeli.w r2, 112(r6)
001194  67473300  storeli.w r3, 116(r6)
001198  e7074300  storeli.w r4, 120(r6)
00119c  e7475300  storeli.w r5, 124(r6)
0011a0  63010301  loadli.w r2,  128(r6)
0011a4  e3410301  loadli.w r3,  132(r6)
0011a8  63021301  loadli.w r4,  136(r6)
0011ac  e3421301  loadli.w r5,  140(r6)
0011b0  0f010100  exp.f.rn r2, r2
0011b4  8f810100  exp.f.rn r3, r3
0011b8  0f020200  exp.f.rn r4, r4
0011bc  8f820200  exp.f.rn r5, r5
0011c0  67082300  storeli.w r2, 128(r6)
0011c4  67483300  storeli.w r3, 132(r6)
0011c8  e7084300  storeli.w r4, 136(r6)
0011cc  e7485300  storeli.w r5, 140(r6)
0011d0  63012301  loadli.w r2,  144(r6)
0011d4  e3412301  loadli.w r3,  148(r6)
0011d8  63023301  loadli.w r4,  152(r6)
0011dc  e3423301  loadli.w r5,  156(r6)
0011e0  0f010100  exp.f.rn r2, r2
0011e4  8f810100  exp.f.rn r3, r3
0011e8  0f020200  exp.f.rn r4, r4
0011ec  8f820200  exp.f.rn r5, r5
0011f0  67092300  storeli.w r2, 144(r6)
0011f4  67493300  storeli.w r3, 148(r6)
0011f8  e7094300  storeli.w r4, 152(r6)
0011fc  e7495300  storeli.w r5, 156(r6)
001200  63014301  loadli.w r2,  160(r6)
001204  e3414301  loadli.w r3,  164(r6)
001208  63025301  loadli.w r4,  168(r6)
00120c  e3425301  loadli.w r5,  172(r6)
001210  0f010100  exp.f.rn r2, r2
001214  8f810100  exp.f.rn r3, r3
001218  0f020200  exp.f.rn r4, r4
00121c  8f820200  exp.f.rn r5, r5
001220  670a2300  storeli.w r2, 160(r6)
001224  674a3300  storeli.w r3, 164(r6)
001228  e70a4300  storeli.w r4, 168(r6)
00122c  e74a5300  storeli.w r5, 172(r6)
001230  63016301  loadli.w r2,  176(r6)
001234  e3416301  loadli.w r3,  180(r6)
001238  63027301  loadli.w r4,  184(r6)
00123c  e3427301  loadli.w r5,  188(r6)
001240  0f010100  exp.f.rn r2, r2
001244  8f810100  exp.f.rn r3, r3
001248  0f020200  exp.f.rn r4, r4
00124c  8f820200  exp.f.rn r5, r5
001250  670b2300  storeli.w r2, 176(r6)
001254  674b3300  storeli.w r3, 180(r6)
001258  e70b4300  storeli.w r4, 184(r6)
00125c  e74b5300  storeli.w r5, 188(r6)
001260  63018301  loadli.w r2,  192(r6)
001264  e3418301  loadli.w r3,  196(r6)
001268  63029301  loadli.w r4,  200(r6)
00126c  e3429301  loadli.w r5,  204(r6)
001270  0f010100  exp.f.rn r2, r2
001274  8f810100  exp.f.rn r3, r3
001278  0f020200  exp.f.rn r4, r4
00127c  8f820200  exp.f.rn r5, r5
001280  670c2300  storeli.w r2, 192(r6)
001284  674c3300  storeli.w r3, 196(r6)
001288  e70c4300  storeli.w r4, 200(r6)
00128c  e74c5300  storeli.w r5, 204(r6)
001290  6301a301  loadli.w r2,  208(r6)
001294  e341a301  loadli.w r3,  212(r6)
001298  6302b301  loadli.w r4,  216(r6)
00129c  e342b301  loadli.w r5,  220(r6)
0012a0  0f010100  exp.f.rn r2, r2
0012a4  8f810100  exp.f.rn r3, r3
0012a8  0f020200  exp.f.rn r4, r4
0012ac  8f820200  exp.f.rn r5, r5
0012b0  670d2300  storeli.w r2, 208(r6)
0012b4  674d3300  storeli.w r3, 212(r6)
0012b8  e70d4300  storeli.w r4, 216(r6)
0012bc  e74d5300  storeli.w r5, 220(r6)
0012c0  6301c301  loadli.w r2,  224(r6)
0012c4  e341c301  loadli.w r3,  228(r6)
0012c8  6302d301  loadli.w r4,  232(r6)
0012cc  e342d301  loadli.w r5,  236(r6)
0012d0  0f010100  exp.f.rn r2, r2
0012d4  8f810100  exp.f.rn r3, r3
0012d8  0f020200  exp.f.rn r4, r4
0012dc  8f820200  exp.f.rn r5, r5
0012e0  670e2300  storeli.w r2, 224(r6)
0012e4  674e3300  storeli.w r3, 228(r6)
0012e8  e70e4300  storeli.w r4, 232(r6)
0012ec  e74e5300  storeli.w r5, 236(r6)
0012f0  6301e301  loadli.w r2,  240(r6)
0012f4  e341e301  loadli.w r3,  244(r6)
0012f8  6302f301  loadli.w r4,  248(r6)
0012fc  e342f301  loadli.w r5,  252(r6)
001300  0f010100  exp.f.rn r2, r2
001304  8f810100  exp.f.rn r3, r3
001308  0f020200  exp.f.rn r4, r4
00130c  8f820200  exp.f.rn r5, r5
001310  670f2300  storeli.w r2, 240(r6)
001314  674f3300  storeli.w r3, 244(r6)
001318  e70f4300  storeli.w r4, 248(r6)
00131c  e74f5300  storeli.w r5, 252(r6)
001320  00a00000  mfence { lm }
001324  12930002  vadd.f.mz.rn vr6{mr1}, r1, vr0
001328  42110fe2  vload_mask16.mz vr2{mr1}, 1792(r30)
00132c  42108fe2  vload_mask16.mz vr0{mr1}, 1856(r30)
001330  c2110fe3  vload_mask16.mz vr3{mr1}, 1920(r30)
001334  42128fe3  vload_mask16.mz vr4{mr1}, 1984(r30)
001338  46107fe2  vstore_mask16.mz vr7{mr1}, 1792(r30)
00133c  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
001340  46185fe2  vstore_mask16.mz vr5{mr1}, 1920(r30)
001344  461c6fe2  vstore_mask16.mz vr6{mr1}, 1984(r30)
001348  00a00000  mfence { lm }
00134c  e3000300  loadli.w r1,  0(r6)
001350  63410300  loadli.w r2,  4(r6)
001354  e3011300  loadli.w r3,  8(r6)
001358  63421300  loadli.w r4,  12(r6)
00135c  8f800000  exp.f.rn r1, r1
001360  0f010100  exp.f.rn r2, r2
001364  8f810100  exp.f.rn r3, r3
001368  0f020200  exp.f.rn r4, r4
00136c  67001300  storeli.w r1, 0(r6)
001370  67402300  storeli.w r2, 4(r6)
001374  e7003300  storeli.w r3, 8(r6)
001378  e7404300  storeli.w r4, 12(r6)
00137c  e3002300  loadli.w r1,  16(r6)
001380  63412300  loadli.w r2,  20(r6)
001384  e3013300  loadli.w r3,  24(r6)
001388  63423300  loadli.w r4,  28(r6)
00138c  8f800000  exp.f.rn r1, r1
001390  0f010100  exp.f.rn r2, r2
001394  8f810100  exp.f.rn r3, r3
001398  0f020200  exp.f.rn r4, r4
00139c  67011300  storeli.w r1, 16(r6)
0013a0  67412300  storeli.w r2, 20(r6)
0013a4  e7013300  storeli.w r3, 24(r6)
0013a8  e7414300  storeli.w r4, 28(r6)
0013ac  e3004300  loadli.w r1,  32(r6)
0013b0  63414300  loadli.w r2,  36(r6)
0013b4  e3015300  loadli.w r3,  40(r6)
0013b8  63425300  loadli.w r4,  44(r6)
0013bc  8f800000  exp.f.rn r1, r1
0013c0  0f010100  exp.f.rn r2, r2
0013c4  8f810100  exp.f.rn r3, r3
0013c8  0f020200  exp.f.rn r4, r4
0013cc  67021300  storeli.w r1, 32(r6)
0013d0  67422300  storeli.w r2, 36(r6)
0013d4  e7023300  storeli.w r3, 40(r6)
0013d8  e7424300  storeli.w r4, 44(r6)
0013dc  e3006300  loadli.w r1,  48(r6)
0013e0  63416300  loadli.w r2,  52(r6)
0013e4  e3017300  loadli.w r3,  56(r6)
0013e8  63427300  loadli.w r4,  60(r6)
0013ec  8f800000  exp.f.rn r1, r1
0013f0  0f010100  exp.f.rn r2, r2
0013f4  8f810100  exp.f.rn r3, r3
0013f8  0f020200  exp.f.rn r4, r4
0013fc  67031300  storeli.w r1, 48(r6)
001400  67432300  storeli.w r2, 52(r6)
001404  e7033300  storeli.w r3, 56(r6)
001408  e7434300  storeli.w r4, 60(r6)
00140c  e3008300  loadli.w r1,  64(r6)
001410  63418300  loadli.w r2,  68(r6)
001414  e3019300  loadli.w r3,  72(r6)
001418  63429300  loadli.w r4,  76(r6)
00141c  8f800000  exp.f.rn r1, r1
001420  0f010100  exp.f.rn r2, r2
001424  8f810100  exp.f.rn r3, r3
001428  0f020200  exp.f.rn r4, r4
00142c  67041300  storeli.w r1, 64(r6)
001430  67442300  storeli.w r2, 68(r6)
001434  e7043300  storeli.w r3, 72(r6)
001438  e7444300  storeli.w r4, 76(r6)
00143c  e300a300  loadli.w r1,  80(r6)
001440  6341a300  loadli.w r2,  84(r6)
001444  e301b300  loadli.w r3,  88(r6)
001448  6342b300  loadli.w r4,  92(r6)
00144c  8f800000  exp.f.rn r1, r1
001450  0f010100  exp.f.rn r2, r2
001454  8f810100  exp.f.rn r3, r3
001458  0f020200  exp.f.rn r4, r4
00145c  67051300  storeli.w r1, 80(r6)
001460  67452300  storeli.w r2, 84(r6)
001464  e7053300  storeli.w r3, 88(r6)
001468  e7454300  storeli.w r4, 92(r6)
00146c  e300c300  loadli.w r1,  96(r6)
001470  6341c300  loadli.w r2,  100(r6)
001474  e301d300  loadli.w r3,  104(r6)
001478  6342d300  loadli.w r4,  108(r6)
00147c  8f800000  exp.f.rn r1, r1
001480  0f010100  exp.f.rn r2, r2
001484  8f810100  exp.f.rn r3, r3
001488  0f020200  exp.f.rn r4, r4
00148c  67061300  storeli.w r1, 96(r6)
001490  67462300  storeli.w r2, 100(r6)
001494  e7063300  storeli.w r3, 104(r6)
001498  e7464300  storeli.w r4, 108(r6)
00149c  e300e300  loadli.w r1,  112(r6)
0014a0  6341e300  loadli.w r2,  116(r6)
0014a4  e301f300  loadli.w r3,  120(r6)
0014a8  6342f300  loadli.w r4,  124(r6)
0014ac  8f800000  exp.f.rn r1, r1
0014b0  0f010100  exp.f.rn r2, r2
0014b4  8f810100  exp.f.rn r3, r3
0014b8  0f020200  exp.f.rn r4, r4
0014bc  67071300  storeli.w r1, 112(r6)
0014c0  67472300  storeli.w r2, 116(r6)
0014c4  e7073300  storeli.w r3, 120(r6)
0014c8  e7474300  storeli.w r4, 124(r6)
0014cc  e3000301  loadli.w r1,  128(r6)
0014d0  63410301  loadli.w r2,  132(r6)
0014d4  e3011301  loadli.w r3,  136(r6)
0014d8  63421301  loadli.w r4,  140(r6)
0014dc  8f800000  exp.f.rn r1, r1
0014e0  0f010100  exp.f.rn r2, r2
0014e4  8f810100  exp.f.rn r3, r3
0014e8  0f020200  exp.f.rn r4, r4
0014ec  67081300  storeli.w r1, 128(r6)
0014f0  67482300  storeli.w r2, 132(r6)
0014f4  e7083300  storeli.w r3, 136(r6)
0014f8  e7484300  storeli.w r4, 140(r6)
0014fc  e3002301  loadli.w r1,  144(r6)
001500  63412301  loadli.w r2,  148(r6)
001504  e3013301  loadli.w r3,  152(r6)
001508  63423301  loadli.w r4,  156(r6)
00150c  8f800000  exp.f.rn r1, r1
001510  0f010100  exp.f.rn r2, r2
001514  8f810100  exp.f.rn r3, r3
001518  0f020200  exp.f.rn r4, r4
00151c  67091300  storeli.w r1, 144(r6)
001520  67492300  storeli.w r2, 148(r6)
001524  e7093300  storeli.w r3, 152(r6)
001528  e7494300  storeli.w r4, 156(r6)
00152c  e3004301  loadli.w r1,  160(r6)
001530  63414301  loadli.w r2,  164(r6)
001534  e3015301  loadli.w r3,  168(r6)
001538  63425301  loadli.w r4,  172(r6)
00153c  8f800000  exp.f.rn r1, r1
001540  0f010100  exp.f.rn r2, r2
001544  8f810100  exp.f.rn r3, r3
001548  0f020200  exp.f.rn r4, r4
00154c  670a1300  storeli.w r1, 160(r6)
001550  674a2300  storeli.w r2, 164(r6)
001554  e70a3300  storeli.w r3, 168(r6)
001558  e74a4300  storeli.w r4, 172(r6)
00155c  e3006301  loadli.w r1,  176(r6)
001560  63416301  loadli.w r2,  180(r6)
001564  e3017301  loadli.w r3,  184(r6)
001568  63427301  loadli.w r4,  188(r6)
00156c  8f800000  exp.f.rn r1, r1
001570  0f010100  exp.f.rn r2, r2
001574  8f810100  exp.f.rn r3, r3
001578  0f020200  exp.f.rn r4, r4
00157c  670b1300  storeli.w r1, 176(r6)
001580  674b2300  storeli.w r2, 180(r6)
001584  e70b3300  storeli.w r3, 184(r6)
001588  e74b4300  storeli.w r4, 188(r6)
00158c  e3008301  loadli.w r1,  192(r6)
001590  63418301  loadli.w r2,  196(r6)
001594  e3019301  loadli.w r3,  200(r6)
001598  63429301  loadli.w r4,  204(r6)
00159c  8f800000  exp.f.rn r1, r1
0015a0  0f010100  exp.f.rn r2, r2
0015a4  8f810100  exp.f.rn r3, r3
0015a8  0f020200  exp.f.rn r4, r4
0015ac  670c1300  storeli.w r1, 192(r6)
0015b0  674c2300  storeli.w r2, 196(r6)
0015b4  e70c3300  storeli.w r3, 200(r6)
0015b8  e74c4300  storeli.w r4, 204(r6)
0015bc  e300a301  loadli.w r1,  208(r6)
0015c0  6341a301  loadli.w r2,  212(r6)
0015c4  e301b301  loadli.w r3,  216(r6)
0015c8  6342b301  loadli.w r4,  220(r6)
0015cc  8f800000  exp.f.rn r1, r1
0015d0  0f010100  exp.f.rn r2, r2
0015d4  8f810100  exp.f.rn r3, r3
0015d8  0f020200  exp.f.rn r4, r4
0015dc  670d1300  storeli.w r1, 208(r6)
0015e0  674d2300  storeli.w r2, 212(r6)
0015e4  e70d3300  storeli.w r3, 216(r6)
0015e8  e74d4300  storeli.w r4, 220(r6)
0015ec  e300c301  loadli.w r1,  224(r6)
0015f0  6341c301  loadli.w r2,  228(r6)
0015f4  e301d301  loadli.w r3,  232(r6)
0015f8  6342d301  loadli.w r4,  236(r6)
0015fc  8f800000  exp.f.rn r1, r1
001600  0f010100  exp.f.rn r2, r2
001604  8f810100  exp.f.rn r3, r3
001608  0f020200  exp.f.rn r4, r4
00160c  670e1300  storeli.w r1, 224(r6)
001610  674e2300  storeli.w r2, 228(r6)
001614  e70e3300  storeli.w r3, 232(r6)
001618  e74e4300  storeli.w r4, 236(r6)
00161c  e300e301  loadli.w r1,  240(r6)
001620  6341e301  loadli.w r2,  244(r6)
001624  e301f301  loadli.w r3,  248(r6)
001628  6342f301  loadli.w r4,  252(r6)
00162c  8f800000  exp.f.rn r1, r1
001630  0f010100  exp.f.rn r2, r2
001634  8f810100  exp.f.rn r3, r3
001638  0f020200  exp.f.rn r4, r4
00163c  670f1300  storeli.w r1, 240(r6)
001640  674f2300  storeli.w r2, 244(r6)
001644  e70f3300  storeli.w r3, 248(r6)
001648  e74f4300  storeli.w r4, 252(r6)
00164c  00a00000  mfence { lm }
001650  c2100fe2  vload_mask16.mz vr1{mr1}, 1792(r30)
001654  96130102  vadd.f.mz.rn vr7{mr1}, vr2, vr0
001658  96923302  vadd.f.mz.rn vr5{mr1}, vr7, vr3
00165c  96924202  vadd.f.mz.rn vr5{mr1}, vr5, vr4
001660  16931202  vadd.f.mz.rn vr6{mr1}, vr5, vr1
001664  c2128fe2  vload_mask16.mz vr5{mr1}, 1856(r30)
001668  96135302  vadd.f.mz.rn vr7{mr1}, vr6, vr5
00166c  42130fe3  vload_mask16.mz vr6{mr1}, 1920(r30)
001670  16946302  vadd.f.mz.rn vr8{mr1}, vr7, vr6
001674  c2138fe3  vload_mask16.mz vr7{mr1}, 1984(r30)
001678  16147402  vadd.f.mz.rn vr8{mr1}, vr8, vr7
00167c  fa100440  vextracti.f r1, 0(vr8)
001680  7a111440  vextracti.f r2, 1(vr8)
001684  8be02010  add.f.rn r1, r1, r2
001688  7a112440  vextracti.f r2, 2(vr8)
00168c  8b601110  add.f.rn r1, r2, r1
001690  7a113440  vextracti.f r2, 3(vr8)
001694  8b601110  add.f.rn r1, r2, r1
001698  7a114440  vextracti.f r2, 4(vr8)
00169c  8b601110  add.f.rn r1, r2, r1
0016a0  7a115440  vextracti.f r2, 5(vr8)
0016a4  8b601110  add.f.rn r1, r2, r1
0016a8  7a116440  vextracti.f r2, 6(vr8)
0016ac  8b601110  add.f.rn r1, r2, r1
0016b0  7a117440  vextracti.f r2, 7(vr8)
0016b4  8b601110  add.f.rn r1, r2, r1
0016b8  7a118440  vextracti.f r2, 8(vr8)
0016bc  8b601110  add.f.rn r1, r2, r1
0016c0  7a119440  vextracti.f r2, 9(vr8)
0016c4  8b601110  add.f.rn r1, r2, r1
0016c8  7a11a440  vextracti.f r2, 10(vr8)
0016cc  8b601110  add.f.rn r1, r2, r1
0016d0  7a11b440  vextracti.f r2, 11(vr8)
0016d4  8b601110  add.f.rn r1, r2, r1
0016d8  7a11c440  vextracti.f r2, 12(vr8)
0016dc  8b601110  add.f.rn r1, r2, r1
0016e0  7a11d440  vextracti.f r2, 13(vr8)
0016e4  8b601110  add.f.rn r1, r2, r1
0016e8  7a11e440  vextracti.f r2, 14(vr8)
0016ec  8b601110  add.f.rn r1, r2, r1
0016f0  7a11f440  vextracti.f r2, 15(vr8)
0016f4  8b601110  add.f.rn r1, r2, r1
0016f8  63013ff0  loadli.w r2,  -2024(r30)
0016fc  73601100  stores.w r1, 0(r2)
001700  00a00300  mfence { lm, sm, gm }
001704  80a10604  csr_set csr3, r13
001708  00d00100  sync_group
00170c  3bac07f4  bneq r15, zero, -5368
001710  63424ff0  loadli.w r4,  -2012(r30)
001714  ef400200  loads.w r1, 0(r4)
001718  6f414200  loads.w r2, 4(r4)
00171c  ef418200  loads.w r3, 8(r4)
001720  8be02010  add.f.rn r1, r1, r2
001724  6f41c200  loads.w r2, 12(r4)
001728  8be03010  add.f.rn r1, r1, r3
00172c  ef410201  loads.w r3, 16(r4)
001730  8be02010  add.f.rn r1, r1, r2
001734  6f414201  loads.w r2, 20(r4)
001738  8be03010  add.f.rn r1, r1, r3
00173c  ef418201  loads.w r3, 24(r4)
001740  8be02010  add.f.rn r1, r1, r2
001744  6f41c201  loads.w r2, 28(r4)
001748  8be03010  add.f.rn r1, r1, r3
00174c  ef410202  loads.w r3, 32(r4)
001750  8be02010  add.f.rn r1, r1, r2
001754  6f414202  loads.w r2, 36(r4)
001758  8be03010  add.f.rn r1, r1, r3
00175c  ef418202  loads.w r3, 40(r4)
001760  8be02010  add.f.rn r1, r1, r2
001764  6f41c202  loads.w r2, 44(r4)
001768  8be03010  add.f.rn r1, r1, r3
00176c  ef410203  loads.w r3, 48(r4)
001770  8be02010  add.f.rn r1, r1, r2
001774  6f414203  loads.w r2, 52(r4)
001778  8be03010  add.f.rn r1, r1, r3
00177c  ef418203  loads.w r3, 56(r4)
001780  8be02010  add.f.rn r1, r1, r2
001784  6f41c203  loads.w r2, 60(r4)
001788  8be03010  add.f.rn r1, r1, r3
00178c  8be02010  add.f.rn r1, r1, r2
001790  73601200  stores.w r1, 0(r4)
001794  5b50fdff  j -5504
001798  9f0e0fef  addli sp, r30, -2176
00179c  9f8e0e11  addli sp, sp, 2176
0017a0  00a00300  mfence { lm, sm, gm }
0017a4  00100000  exit
0017a8  00100000  exit
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
