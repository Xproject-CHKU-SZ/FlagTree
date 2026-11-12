; SHA-256 e102b73e1cb30cf5bfa2fdcb402c5577145f3cb885a7801e1c81c504297350d2
; P800 Cluster · XTDK LLVM 19 · 1160 / 1160 words decoded
; bound names: triton_per_fused_mul_sum_0, triton_unk_fused_0
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
0000dc  9f8e0eef  addli sp, sp, -2176
0000e0  2b010000  lui r2, 0
0000e4  80300002  core_id r1
0000e8  1f8f8e10  addli r30, sp, 2112
0000ec  80520002  load_param_i r5, 0
0000f0  9bb12000  slli r3, r1, 2
0000f4  1f010100  addli r2, r2, 0
0000f8  e3454f00  loadli.w r11,  36(r30)
0000fc  63055f00  loadli.w r10,  40(r30)
000100  0b922110  add.s r4, r3, r2
000104  e3014f00  loadli.w r3,  32(r30)
000108  e7414ff0  storeli.w r4, -2020(r30)
00010c  73600200  stores.w zero, 0(r4)
000110  2bf20000  lui r4, 15
000114  8b913520  mul.s r3, r11, r3
000118  00a00300  mfence { lm, sm, gm }
00011c  1b16f2ff  ori r12, r4, 4095
000120  8b96a120  mul.s r13, r3, r10
000124  80210604  csr_set csr3, r12
000128  00d00100  sync_group
00012c  cb9a5606  ble.s r13, r5, 3748
000130  9f011000  addli r3, zero, 8
000134  1b837000  andi r6, r1, 7
000138  abf3ff3f  lui r7, 262143
00013c  1f280000  addli r16, zero, 2
000140  80d70002  load_param_i r15, 1
000144  9f0a8ff7  addli r21, r30, -1088
000148  1f0b0004  addli r22, zero, 512
00014c  eea25262  vxor.u.mz vr5{mr1}, vr5, vr5
000150  eeb37362  vxor.s.mz vr7{mr1}, vr7, vr7
000154  e701cff0  storeli.w r12, -2024(r30)
000158  6741dff0  storeli.w r13, -2028(r30)
00015c  0b973030  div.s r14, r1, r3
000160  e7006ff0  storeli.w r6, -2040(r30)
000164  9b9383ff  ori r7, r7, 4088
000168  eb518f00  load.d r[4:5], 8(r30)
00016c  e740fff0  storeli.w r15, -2036(r30)
000170  97837000  and r7, r1, r7
000174  9bb32300  slli r7, r7, 2
000178  1b333700  slli r6, r14, 3
00017c  0b912310  add.s r2, r7, r2
000180  6701eff0  storeli.w r14, -2032(r30)
000184  0b936018  sub.s r6, r1, r6
000188  9bf00004  setlti r1, r1, 64
00018c  670f2fee  storeli.w r2, -2064(r30)
000190  1b347300  slli r8, r6, 7
000194  13030300  seteq r6, r6, zero
000198  67408ff0  storeli.w r8, -2044(r30)
00019c  33140428  sext_int2long r[9:10], r8
0001a0  17340403  sll.d r[9:10], r[9:10], r16
0001a4  8ba18110  add.ul r[4:5], r[4:5], r[9:10]
0001a8  1f04ffef  addli r8, r30, -2056
0001ac  97806000  and r1, r1, r6
0001b0  73303400  store.d r[4:5], 0(r8)
0001b4  1f74f003  addli r8, zero, 511
0001b8  674f1fee  storeli.w r1, -2060(r30)
0001bc  5b020000  j 16
0001c0  8b92f210  add.s r5, r5, r15
0001c4  3fa0d200  blt.s r5, r13, 8
0001c8  5bc10100  j 3592
0001cc  8b90a230  div.s r1, r5, r10
0001d0  8b90b030  div.s r1, r1, r11
0001d4  9bb03000  slli r1, r1, 3
0001d8  8b91e010  add.s r3, r1, r14
0001dc  bf1f34fe  blt.s r8, r3, -28
0001e0  9f000000  addli r1, zero, 0
0001e4  0b911a10  add.s r2, r21, r1
0001e8  9f800001  addli r1, r1, 128
0001ec  46105102  vstore_mask16.mz vr5{mr1}, 0(r2)
0001f0  46145102  vstore_mask16.mz vr5{mr1}, 64(r2)
0001f4  00a00000  mfence { lm }
0001f8  bbbf60ff  bneq r1, r22, -20
0001fc  63410ff0  loadli.w r2,  -2044(r30)
000200  9bb0a100  slli r1, r3, 10
000204  e74b3ff6  storeli.w r3, -1092(r30)
000208  1f230000  addli r6, zero, 2
00020c  12335002  vadd.s.mz vr6{mr1}, zero, vr5
000210  92355002  vadd.s.mz vr11{mr1}, zero, vr5
000214  8b902010  add.s r1, r1, r2
000218  2b0100f0  lui r2, 983040
00021c  b3910028  sext_int2long r[4:5], r1
000220  17112b00  or r2, r22, r2
000224  ab0000f0  lui r1, 983040
000228  97b16102  sll.d r[4:5], r[4:5], r6
00022c  6b530f00  load.d r[7:8], 0(r30)
000230  97101b00  or r1, r22, r1
000234  8b213310  add.ul r[4:5], r[7:8], r[4:5]
000238  7fa15101  l_gm2lm r2, r21, 0(r[4:5])
00023c  1f02ffef  addli r4, r30, -2056
000240  6b510200  load.d r[3:4], 0(r4)
000244  1f028ffb  addli r4, r30, -576
000248  ff204100  l_gm2lm r1, r4, 0(r[3:4])
00024c  9f008ff7  addli r1, r30, -1088
000250  00a00000  mfence { lm }
000254  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000258  9f000ff4  addli r1, r30, -1536
00025c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000260  9f008ff3  addli r1, r30, -1600
000264  42100f82  vload_mask16.mz vr0{mr1}, 1024(r30)
000268  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00026c  9f008ff5  addli r1, r30, -1344
000270  c2148f82  vload_mask16.mz vr9{mr1}, 1088(r30)
000274  42100f83  vload_mask16.mz vr0{mr1}, 1152(r30)
000278  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00027c  9f000ff5  addli r1, r30, -1408
000280  42108f83  vload_mask16.mz vr0{mr1}, 1216(r30)
000284  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000288  9f008ff4  addli r1, r30, -1472
00028c  42100fa2  vload_mask16.mz vr0{mr1}, 1280(r30)
000290  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000294  9f000ff6  addli r1, r30, -1280
000298  42108fa2  vload_mask16.mz vr0{mr1}, 1344(r30)
00029c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0002a0  9f008ff6  addli r1, r30, -1216
0002a4  42100fa3  vload_mask16.mz vr0{mr1}, 1408(r30)
0002a8  630e2ffd  loadli.w r28,  -368(r30)
0002ac  63416ffc  loadli.w r2,  -460(r30)
0002b0  e3017ffc  loadli.w r3,  -456(r30)
0002b4  63427ffc  loadli.w r4,  -452(r30)
0002b8  63038ffc  loadli.w r6,  -448(r30)
0002bc  e3438ffc  loadli.w r7,  -444(r30)
0002c0  63049ffc  loadli.w r8,  -440(r30)
0002c4  e3449ffc  loadli.w r9,  -436(r30)
0002c8  6305affc  loadli.w r10,  -432(r30)
0002cc  e345affc  loadli.w r11,  -428(r30)
0002d0  6306bffc  loadli.w r12,  -424(r30)
0002d4  e346bffc  loadli.w r13,  -420(r30)
0002d8  6307cffc  loadli.w r14,  -416(r30)
0002dc  e347cffc  loadli.w r15,  -412(r30)
0002e0  6308dffc  loadli.w r16,  -408(r30)
0002e4  e348dffc  loadli.w r17,  -404(r30)
0002e8  6309effc  loadli.w r18,  -400(r30)
0002ec  e349effc  loadli.w r19,  -396(r30)
0002f0  630afffc  loadli.w r20,  -392(r30)
0002f4  e34bfffc  loadli.w r23,  -388(r30)
0002f8  630c0ffd  loadli.w r24,  -384(r30)
0002fc  e34c0ffd  loadli.w r25,  -380(r30)
000300  630d1ffd  loadli.w r26,  -376(r30)
000304  e34d1ffd  loadli.w r27,  -372(r30)
000308  6702cff1  storeli.w r28, -2016(r30)
00030c  634e2ffd  loadli.w r28,  -364(r30)
000310  6742cff1  storeli.w r28, -2012(r30)
000314  630e3ffd  loadli.w r28,  -360(r30)
000318  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00031c  e3008ffb  loadli.w r1,  -576(r30)
000320  e702cff1  storeli.w r28, -2008(r30)
000324  634e3ffd  loadli.w r28,  -356(r30)
000328  e70e1ff0  storeli.w r1, -1816(r30)
00032c  e3408ffb  loadli.w r1,  -572(r30)
000330  e742cff1  storeli.w r28, -2004(r30)
000334  630e4ffd  loadli.w r28,  -352(r30)
000338  670f1ff0  storeli.w r1, -1808(r30)
00033c  e3009ffb  loadli.w r1,  -568(r30)
000340  6703cff1  storeli.w r28, -2000(r30)
000344  634e4ffd  loadli.w r28,  -348(r30)
000348  e70f1ff0  storeli.w r1, -1800(r30)
00034c  e3409ffb  loadli.w r1,  -564(r30)
000350  6743cff1  storeli.w r28, -1996(r30)
000354  630e5ffd  loadli.w r28,  -344(r30)
000358  67001ff2  storeli.w r1, -1792(r30)
00035c  e300affb  loadli.w r1,  -560(r30)
000360  e703cff1  storeli.w r28, -1992(r30)
000364  634e5ffd  loadli.w r28,  -340(r30)
000368  e7001ff2  storeli.w r1, -1784(r30)
00036c  e340affb  loadli.w r1,  -556(r30)
000370  e743cff1  storeli.w r28, -1988(r30)
000374  630e6ffd  loadli.w r28,  -336(r30)
000378  67011ff2  storeli.w r1, -1776(r30)
00037c  e300bffb  loadli.w r1,  -552(r30)
000380  6704cff1  storeli.w r28, -1984(r30)
000384  634e6ffd  loadli.w r28,  -332(r30)
000388  e7011ff2  storeli.w r1, -1768(r30)
00038c  e340bffb  loadli.w r1,  -548(r30)
000390  6744cff1  storeli.w r28, -1980(r30)
000394  630e7ffd  loadli.w r28,  -328(r30)
000398  67021ff2  storeli.w r1, -1760(r30)
00039c  e300cffb  loadli.w r1,  -544(r30)
0003a0  e704cff1  storeli.w r28, -1976(r30)
0003a4  634e7ffd  loadli.w r28,  -324(r30)
0003a8  e7021ff2  storeli.w r1, -1752(r30)
0003ac  e340cffb  loadli.w r1,  -540(r30)
0003b0  e744cff1  storeli.w r28, -1972(r30)
0003b4  630e8ffd  loadli.w r28,  -320(r30)
0003b8  67031ff2  storeli.w r1, -1744(r30)
0003bc  e300dffb  loadli.w r1,  -536(r30)
0003c0  6705cff1  storeli.w r28, -1968(r30)
0003c4  634e8ffd  loadli.w r28,  -316(r30)
0003c8  e7031ff2  storeli.w r1, -1736(r30)
0003cc  e340dffb  loadli.w r1,  -532(r30)
0003d0  6745cff1  storeli.w r28, -1964(r30)
0003d4  630e9ffd  loadli.w r28,  -312(r30)
0003d8  67041ff2  storeli.w r1, -1728(r30)
0003dc  e300effb  loadli.w r1,  -528(r30)
0003e0  e705cff1  storeli.w r28, -1960(r30)
0003e4  634e9ffd  loadli.w r28,  -308(r30)
0003e8  e7041ff2  storeli.w r1, -1720(r30)
0003ec  e340effb  loadli.w r1,  -524(r30)
0003f0  e745cff1  storeli.w r28, -1956(r30)
0003f4  630eaffd  loadli.w r28,  -304(r30)
0003f8  67051ff2  storeli.w r1, -1712(r30)
0003fc  e300fffb  loadli.w r1,  -520(r30)
000400  6706cff1  storeli.w r28, -1952(r30)
000404  634eaffd  loadli.w r28,  -300(r30)
000408  e7051ff2  storeli.w r1, -1704(r30)
00040c  e340fffb  loadli.w r1,  -516(r30)
000410  6746cff1  storeli.w r28, -1948(r30)
000414  630ebffd  loadli.w r28,  -296(r30)
000418  67061ff2  storeli.w r1, -1696(r30)
00041c  e3000ffc  loadli.w r1,  -512(r30)
000420  e706cff1  storeli.w r28, -1944(r30)
000424  634ebffd  loadli.w r28,  -292(r30)
000428  e7061ff2  storeli.w r1, -1688(r30)
00042c  e3400ffc  loadli.w r1,  -508(r30)
000430  e746cff1  storeli.w r28, -1940(r30)
000434  630ecffd  loadli.w r28,  -288(r30)
000438  67071ff2  storeli.w r1, -1680(r30)
00043c  e3001ffc  loadli.w r1,  -504(r30)
000440  6707cff1  storeli.w r28, -1936(r30)
000444  634ecffd  loadli.w r28,  -284(r30)
000448  e7071ff2  storeli.w r1, -1672(r30)
00044c  e3401ffc  loadli.w r1,  -500(r30)
000450  6747cff1  storeli.w r28, -1932(r30)
000454  630edffd  loadli.w r28,  -280(r30)
000458  67081ff2  storeli.w r1, -1664(r30)
00045c  e3002ffc  loadli.w r1,  -496(r30)
000460  e707cff1  storeli.w r28, -1928(r30)
000464  634edffd  loadli.w r28,  -276(r30)
000468  e7081ff2  storeli.w r1, -1656(r30)
00046c  e3402ffc  loadli.w r1,  -492(r30)
000470  e747cff1  storeli.w r28, -1924(r30)
000474  630eeffd  loadli.w r28,  -272(r30)
000478  67091ff2  storeli.w r1, -1648(r30)
00047c  e3003ffc  loadli.w r1,  -488(r30)
000480  6708cff1  storeli.w r28, -1920(r30)
000484  634eeffd  loadli.w r28,  -268(r30)
000488  e7091ff2  storeli.w r1, -1640(r30)
00048c  e3403ffc  loadli.w r1,  -484(r30)
000490  6748cff1  storeli.w r28, -1916(r30)
000494  630efffd  loadli.w r28,  -264(r30)
000498  e7491ff2  storeli.w r1, -1636(r30)
00049c  e3004ffc  loadli.w r1,  -480(r30)
0004a0  e708cff1  storeli.w r28, -1912(r30)
0004a4  634efffd  loadli.w r28,  -260(r30)
0004a8  670a1ff2  storeli.w r1, -1632(r30)
0004ac  e3404ffc  loadli.w r1,  -476(r30)
0004b0  e748cff1  storeli.w r28, -1908(r30)
0004b4  630e0ffe  loadli.w r28,  -256(r30)
0004b8  674a1ff2  storeli.w r1, -1628(r30)
0004bc  e3005ffc  loadli.w r1,  -472(r30)
0004c0  6709cff1  storeli.w r28, -1904(r30)
0004c4  634e0ffe  loadli.w r28,  -252(r30)
0004c8  e70a1ff2  storeli.w r1, -1624(r30)
0004cc  e3405ffc  loadli.w r1,  -468(r30)
0004d0  6749cff1  storeli.w r28, -1900(r30)
0004d4  630e1ffe  loadli.w r28,  -248(r30)
0004d8  e74a1ff2  storeli.w r1, -1620(r30)
0004dc  e3006ffc  loadli.w r1,  -464(r30)
0004e0  e709cff1  storeli.w r28, -1896(r30)
0004e4  634e1ffe  loadli.w r28,  -244(r30)
0004e8  e749cff1  storeli.w r28, -1892(r30)
0004ec  630e2ffe  loadli.w r28,  -240(r30)
0004f0  670acff1  storeli.w r28, -1888(r30)
0004f4  634e2ffe  loadli.w r28,  -236(r30)
0004f8  674acff1  storeli.w r28, -1884(r30)
0004fc  630e3ffe  loadli.w r28,  -232(r30)
000500  e70acff1  storeli.w r28, -1880(r30)
000504  634e3ffe  loadli.w r28,  -228(r30)
000508  e74acff1  storeli.w r28, -1876(r30)
00050c  630e4ffe  loadli.w r28,  -224(r30)
000510  670bcff1  storeli.w r28, -1872(r30)
000514  634e4ffe  loadli.w r28,  -220(r30)
000518  674bcff1  storeli.w r28, -1868(r30)
00051c  630e5ffe  loadli.w r28,  -216(r30)
000520  e70bcff1  storeli.w r28, -1864(r30)
000524  634e5ffe  loadli.w r28,  -212(r30)
000528  e74bcff1  storeli.w r28, -1860(r30)
00052c  630e6ffe  loadli.w r28,  -208(r30)
000530  670ccff1  storeli.w r28, -1856(r30)
000534  634e6ffe  loadli.w r28,  -204(r30)
000538  674ccff1  storeli.w r28, -1852(r30)
00053c  630e7ffe  loadli.w r28,  -200(r30)
000540  e70ccff1  storeli.w r28, -1848(r30)
000544  634e7ffe  loadli.w r28,  -196(r30)
000548  e74ccff1  storeli.w r28, -1844(r30)
00054c  630e8ffe  loadli.w r28,  -192(r30)
000550  670dcff1  storeli.w r28, -1840(r30)
000554  634e8ffe  loadli.w r28,  -188(r30)
000558  674dcff1  storeli.w r28, -1836(r30)
00055c  630e9ffe  loadli.w r28,  -184(r30)
000560  e70dcff1  storeli.w r28, -1832(r30)
000564  634e9ffe  loadli.w r28,  -180(r30)
000568  e74dcff1  storeli.w r28, -1828(r30)
00056c  630eaffe  loadli.w r28,  -176(r30)
000570  670ecff1  storeli.w r28, -1824(r30)
000574  634eaffe  loadli.w r28,  -172(r30)
000578  674ecff1  storeli.w r28, -1820(r30)
00057c  630ebffe  loadli.w r28,  -168(r30)
000580  e74ecff1  storeli.w r28, -1812(r30)
000584  634ebffe  loadli.w r28,  -164(r30)
000588  674fcff1  storeli.w r28, -1804(r30)
00058c  630ecffe  loadli.w r28,  -160(r30)
000590  e74fcff1  storeli.w r28, -1796(r30)
000594  634ecffe  loadli.w r28,  -156(r30)
000598  6740cff3  storeli.w r28, -1788(r30)
00059c  630edffe  loadli.w r28,  -152(r30)
0005a0  e740cff3  storeli.w r28, -1780(r30)
0005a4  634edffe  loadli.w r28,  -148(r30)
0005a8  6741cff3  storeli.w r28, -1772(r30)
0005ac  630eeffe  loadli.w r28,  -144(r30)
0005b0  e741cff3  storeli.w r28, -1764(r30)
0005b4  634eeffe  loadli.w r28,  -140(r30)
0005b8  6742cff3  storeli.w r28, -1756(r30)
0005bc  630efffe  loadli.w r28,  -136(r30)
0005c0  e742cff3  storeli.w r28, -1748(r30)
0005c4  634efffe  loadli.w r28,  -132(r30)
0005c8  6743cff3  storeli.w r28, -1740(r30)
0005cc  630e0fff  loadli.w r28,  -128(r30)
0005d0  e743cff3  storeli.w r28, -1732(r30)
0005d4  634e0fff  loadli.w r28,  -124(r30)
0005d8  6744cff3  storeli.w r28, -1724(r30)
0005dc  630e1fff  loadli.w r28,  -120(r30)
0005e0  e744cff3  storeli.w r28, -1716(r30)
0005e4  634e1fff  loadli.w r28,  -116(r30)
0005e8  6745cff3  storeli.w r28, -1708(r30)
0005ec  630e2fff  loadli.w r28,  -112(r30)
0005f0  e745cff3  storeli.w r28, -1700(r30)
0005f4  634e2fff  loadli.w r28,  -108(r30)
0005f8  6746cff3  storeli.w r28, -1692(r30)
0005fc  630e3fff  loadli.w r28,  -104(r30)
000600  e746cff3  storeli.w r28, -1684(r30)
000604  634e3fff  loadli.w r28,  -100(r30)
000608  6747cff3  storeli.w r28, -1676(r30)
00060c  630e4fff  loadli.w r28,  -96(r30)
000610  e747cff3  storeli.w r28, -1668(r30)
000614  634e4fff  loadli.w r28,  -92(r30)
000618  6748cff3  storeli.w r28, -1660(r30)
00061c  630e5fff  loadli.w r28,  -88(r30)
000620  e748cff3  storeli.w r28, -1652(r30)
000624  634e5fff  loadli.w r28,  -84(r30)
000628  6749cff3  storeli.w r28, -1644(r30)
00062c  630e6fff  loadli.w r28,  -80(r30)
000630  670bcff3  storeli.w r28, -1616(r30)
000634  634e6fff  loadli.w r28,  -76(r30)
000638  674bcff3  storeli.w r28, -1612(r30)
00063c  630e7fff  loadli.w r28,  -72(r30)
000640  e70bcff3  storeli.w r28, -1608(r30)
000644  634e7fff  loadli.w r28,  -68(r30)
000648  e74bcff3  storeli.w r28, -1604(r30)
00064c  1f1e0000  addli r28, zero, 1
000650  fe010ee0  vmmov mr3, r28
000654  630edff1  loadli.w r28,  -1816(r30)
000658  6a236e36  vor.u.mh vr6{mr3}, r28, vr6
00065c  1f2e0000  addli r28, zero, 2
000660  fe010ee0  vmmov mr3, r28
000664  630eeff1  loadli.w r28,  -1808(r30)
000668  6a236e36  vor.u.mh vr6{mr3}, r28, vr6
00066c  1f4e0000  addli r28, zero, 4
000670  7e010ee0  vmmov mr2, r28
000674  630efff1  loadli.w r28,  -1800(r30)
000678  6a236e34  vor.u.mh vr6{mr2}, r28, vr6
00067c  1f0e1000  addli r28, zero, 8
000680  7e010ee0  vmmov mr2, r28
000684  630e0ff2  loadli.w r28,  -1792(r30)
000688  6a236e34  vor.u.mh vr6{mr2}, r28, vr6
00068c  1f0e2000  addli r28, zero, 16
000690  7e000ee0  vmmov mr0, r28
000694  630e1ff2  loadli.w r28,  -1784(r30)
000698  6a236e30  vor.u.mh vr6{mr0}, r28, vr6
00069c  1f0e4000  addli r28, zero, 32
0006a0  7e000ee0  vmmov mr0, r28
0006a4  630e2ff2  loadli.w r28,  -1776(r30)
0006a8  6a236e30  vor.u.mh vr6{mr0}, r28, vr6
0006ac  1f0e8000  addli r28, zero, 64
0006b0  7e000ee0  vmmov mr0, r28
0006b4  630e3ff2  loadli.w r28,  -1768(r30)
0006b8  6a236e30  vor.u.mh vr6{mr0}, r28, vr6
0006bc  1f0e0001  addli r28, zero, 128
0006c0  7e000ee0  vmmov mr0, r28
0006c4  630e4ff2  loadli.w r28,  -1760(r30)
0006c8  6a236e30  vor.u.mh vr6{mr0}, r28, vr6
0006cc  1f0e0002  addli r28, zero, 256
0006d0  7e000ee0  vmmov mr0, r28
0006d4  630e5ff2  loadli.w r28,  -1752(r30)
0006d8  6a236e30  vor.u.mh vr6{mr0}, r28, vr6
0006dc  1f0e0004  addli r28, zero, 512
0006e0  7e000ee0  vmmov mr0, r28
0006e4  630e6ff2  loadli.w r28,  -1744(r30)
0006e8  6a236e30  vor.u.mh vr6{mr0}, r28, vr6
0006ec  1f0e0008  addli r28, zero, 1024
0006f0  7e000ee0  vmmov mr0, r28
0006f4  630e7ff2  loadli.w r28,  -1736(r30)
0006f8  6a236e30  vor.u.mh vr6{mr0}, r28, vr6
0006fc  1f0e0010  addli r28, zero, 2048
000700  7e000ee0  vmmov mr0, r28
000704  630e8ff2  loadli.w r28,  -1728(r30)
000708  6a236e30  vor.u.mh vr6{mr0}, r28, vr6
00070c  1f0e0020  addli r28, zero, 4096
000710  7e000ee0  vmmov mr0, r28
000714  630e9ff2  loadli.w r28,  -1720(r30)
000718  6a236e30  vor.u.mh vr6{mr0}, r28, vr6
00071c  1f0e0040  addli r28, zero, 8192
000720  1f100000  addli zero, zero, 1
000724  7e000ee0  vmmov mr0, r28
000728  630eaff2  loadli.w r28,  -1712(r30)
00072c  6a236e30  vor.u.mh vr6{mr0}, r28, vr6
000730  2b4e0000  lui r28, 4
000734  7e000ee0  vmmov mr0, r28
000738  630ebff2  loadli.w r28,  -1704(r30)
00073c  6a236e30  vor.u.mh vr6{mr0}, r28, vr6
000740  2b8e0000  lui r28, 8
000744  7e000ee0  vmmov mr0, r28
000748  630ecff2  loadli.w r28,  -1696(r30)
00074c  6a236e30  vor.u.mh vr6{mr0}, r28, vr6
000750  630edff2  loadli.w r28,  -1688(r30)
000754  7e0000e0  vmmov mr0, zero
000758  17200000  xor zero, zero, zero
00075c  1f400000  addli zero, zero, 4
000760  ea25be30  vor.u.mh vr11{mr0}, r28, vr11
000764  630eeff2  loadli.w r28,  -1680(r30)
000768  7e0000e0  vmmov mr0, zero
00076c  17200000  xor zero, zero, zero
000770  1f002000  addli zero, zero, 16
000774  ea25be36  vor.u.mh vr11{mr3}, r28, vr11
000778  630efff2  loadli.w r28,  -1672(r30)
00077c  ea25be30  vor.u.mh vr11{mr0}, r28, vr11
000780  630e0ff3  loadli.w r28,  -1664(r30)
000784  7e0000e0  vmmov mr0, zero
000788  17200000  xor zero, zero, zero
00078c  1f004000  addli zero, zero, 32
000790  ea25be34  vor.u.mh vr11{mr2}, r28, vr11
000794  630e1ff3  loadli.w r28,  -1656(r30)
000798  ea25be30  vor.u.mh vr11{mr0}, r28, vr11
00079c  630e2ff3  loadli.w r28,  -1648(r30)
0007a0  7e0000e0  vmmov mr0, zero
0007a4  17200000  xor zero, zero, zero
0007a8  1f008000  addli zero, zero, 64
0007ac  ea25be30  vor.u.mh vr11{mr0}, r28, vr11
0007b0  630e3ff3  loadli.w r28,  -1640(r30)
0007b4  7e0000e0  vmmov mr0, zero
0007b8  17200000  xor zero, zero, zero
0007bc  1f000001  addli zero, zero, 128
0007c0  ea25be30  vor.u.mh vr11{mr0}, r28, vr11
0007c4  634e3ff3  loadli.w r28,  -1636(r30)
0007c8  7e0000e0  vmmov mr0, zero
0007cc  17200000  xor zero, zero, zero
0007d0  1f000002  addli zero, zero, 256
0007d4  ea25be30  vor.u.mh vr11{mr0}, r28, vr11
0007d8  630e4ff3  loadli.w r28,  -1632(r30)
0007dc  7e0000e0  vmmov mr0, zero
0007e0  17200000  xor zero, zero, zero
0007e4  1f000004  addli zero, zero, 512
0007e8  ea25be30  vor.u.mh vr11{mr0}, r28, vr11
0007ec  634e4ff3  loadli.w r28,  -1628(r30)
0007f0  7e0000e0  vmmov mr0, zero
0007f4  17200000  xor zero, zero, zero
0007f8  1f000008  addli zero, zero, 1024
0007fc  ea25be30  vor.u.mh vr11{mr0}, r28, vr11
000800  630e5ff3  loadli.w r28,  -1624(r30)
000804  7e0000e0  vmmov mr0, zero
000808  17200000  xor zero, zero, zero
00080c  1f000010  addli zero, zero, 2048
000810  ea25be30  vor.u.mh vr11{mr0}, r28, vr11
000814  634e5ff3  loadli.w r28,  -1620(r30)
000818  7e0000e0  vmmov mr0, zero
00081c  17200000  xor zero, zero, zero
000820  12305002  vadd.s.mz vr0{mr1}, zero, vr5
000824  12355002  vadd.s.mz vr10{mr1}, zero, vr5
000828  92305002  vadd.s.mz vr1{mr1}, zero, vr5
00082c  12315002  vadd.s.mz vr2{mr1}, zero, vr5
000830  92315002  vadd.s.mz vr3{mr1}, zero, vr5
000834  12325002  vadd.s.mz vr4{mr1}, zero, vr5
000838  ea25be30  vor.u.mh vr11{mr0}, r28, vr11
00083c  1f0e0020  addli r28, zero, 4096
000840  7e000ee0  vmmov mr0, r28
000844  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000848  9f000040  addli r1, zero, 8192
00084c  fe8100e0  vmmov mr3, r1
000850  ab400000  lui r1, 4
000854  ea25b136  vor.u.mh vr11{mr3}, r2, vr11
000858  7e8100e0  vmmov mr2, r1
00085c  ab800000  lui r1, 8
000860  1f012000  addli r2, zero, 16
000864  7e8000e0  vmmov mr0, r1
000868  9f100000  addli r1, zero, 1
00086c  eaa5b134  vor.u.mh vr11{mr2}, r3, vr11
000870  ea25b230  vor.u.mh vr11{mr0}, r4, vr11
000874  7e8000e0  vmmov mr0, r1
000878  9f200000  addli r1, zero, 2
00087c  6a200330  vor.u.mh vr0{mr0}, r6, vr0
000880  7e8000e0  vmmov mr0, r1
000884  9f400000  addli r1, zero, 4
000888  6aa00330  vor.u.mh vr0{mr0}, r7, vr0
00088c  7e8000e0  vmmov mr0, r1
000890  9f001000  addli r1, zero, 8
000894  6a200430  vor.u.mh vr0{mr0}, r8, vr0
000898  7e8000e0  vmmov mr0, r1
00089c  9f002000  addli r1, zero, 16
0008a0  6aa00430  vor.u.mh vr0{mr0}, r9, vr0
0008a4  7e8000e0  vmmov mr0, r1
0008a8  9f004000  addli r1, zero, 32
0008ac  6a200530  vor.u.mh vr0{mr0}, r10, vr0
0008b0  7e8000e0  vmmov mr0, r1
0008b4  9f008000  addli r1, zero, 64
0008b8  6aa00530  vor.u.mh vr0{mr0}, r11, vr0
0008bc  7e8000e0  vmmov mr0, r1
0008c0  9f000001  addli r1, zero, 128
0008c4  6a200630  vor.u.mh vr0{mr0}, r12, vr0
0008c8  7e8000e0  vmmov mr0, r1
0008cc  9f000002  addli r1, zero, 256
0008d0  6aa00630  vor.u.mh vr0{mr0}, r13, vr0
0008d4  7e8000e0  vmmov mr0, r1
0008d8  9f000004  addli r1, zero, 512
0008dc  6a200730  vor.u.mh vr0{mr0}, r14, vr0
0008e0  7e8000e0  vmmov mr0, r1
0008e4  9f000008  addli r1, zero, 1024
0008e8  6aa00730  vor.u.mh vr0{mr0}, r15, vr0
0008ec  7e8000e0  vmmov mr0, r1
0008f0  9f000010  addli r1, zero, 2048
0008f4  6a200830  vor.u.mh vr0{mr0}, r16, vr0
0008f8  7e8000e0  vmmov mr0, r1
0008fc  9f000020  addli r1, zero, 4096
000900  6aa00830  vor.u.mh vr0{mr0}, r17, vr0
000904  7e8000e0  vmmov mr0, r1
000908  ab800000  lui r1, 8
00090c  6a200930  vor.u.mh vr0{mr0}, r18, vr0
000910  7e8000e0  vmmov mr0, r1
000914  9f100000  addli r1, zero, 1
000918  6aa00936  vor.u.mh vr0{mr3}, r19, vr0
00091c  6a200a34  vor.u.mh vr0{mr2}, r20, vr0
000920  6aa00b30  vor.u.mh vr0{mr0}, r23, vr0
000924  7e8000e0  vmmov mr0, r1
000928  9f200000  addli r1, zero, 2
00092c  6a25ac30  vor.u.mh vr10{mr0}, r24, vr10
000930  7e8000e0  vmmov mr0, r1
000934  9f400000  addli r1, zero, 4
000938  8e940402  vmul.f.mz.rn vr9{mr1}, vr9, vr0
00093c  12305002  vadd.s.mz vr0{mr1}, zero, vr5
000940  6aa5ac30  vor.u.mh vr10{mr0}, r25, vr10
000944  7e8000e0  vmmov mr0, r1
000948  9f001000  addli r1, zero, 8
00094c  6a25ad30  vor.u.mh vr10{mr0}, r26, vr10
000950  7e8000e0  vmmov mr0, r1
000954  6aa5ad30  vor.u.mh vr10{mr0}, r27, vr10
000958  e3004ff0  loadli.w r1,  -2016(r30)
00095c  7e0001e0  vmmov mr0, r2
000960  1f014000  addli r2, zero, 32
000964  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000968  e3404ff0  loadli.w r1,  -2012(r30)
00096c  7e0001e0  vmmov mr0, r2
000970  1f018000  addli r2, zero, 64
000974  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000978  e3005ff0  loadli.w r1,  -2008(r30)
00097c  7e0001e0  vmmov mr0, r2
000980  1f010001  addli r2, zero, 128
000984  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000988  e3405ff0  loadli.w r1,  -2004(r30)
00098c  7e0001e0  vmmov mr0, r2
000990  1f010002  addli r2, zero, 256
000994  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000998  e3006ff0  loadli.w r1,  -2000(r30)
00099c  7e0001e0  vmmov mr0, r2
0009a0  1f010004  addli r2, zero, 512
0009a4  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
0009a8  e3406ff0  loadli.w r1,  -1996(r30)
0009ac  7e0001e0  vmmov mr0, r2
0009b0  1f010008  addli r2, zero, 1024
0009b4  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
0009b8  e3007ff0  loadli.w r1,  -1992(r30)
0009bc  7e0001e0  vmmov mr0, r2
0009c0  1f010010  addli r2, zero, 2048
0009c4  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
0009c8  e3407ff0  loadli.w r1,  -1988(r30)
0009cc  7e0001e0  vmmov mr0, r2
0009d0  1f010020  addli r2, zero, 4096
0009d4  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
0009d8  e3008ff0  loadli.w r1,  -1984(r30)
0009dc  7e0001e0  vmmov mr0, r2
0009e0  2b810000  lui r2, 8
0009e4  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
0009e8  e3408ff0  loadli.w r1,  -1980(r30)
0009ec  7e0001e0  vmmov mr0, r2
0009f0  1f110000  addli r2, zero, 1
0009f4  6aa5a036  vor.u.mh vr10{mr3}, r1, vr10
0009f8  e3009ff0  loadli.w r1,  -1976(r30)
0009fc  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
000a00  e3409ff0  loadli.w r1,  -1972(r30)
000a04  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000a08  e300aff0  loadli.w r1,  -1968(r30)
000a0c  7e0001e0  vmmov mr0, r2
000a10  1f210000  addli r2, zero, 2
000a14  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000a18  e340aff0  loadli.w r1,  -1964(r30)
000a1c  7e0001e0  vmmov mr0, r2
000a20  1f410000  addli r2, zero, 4
000a24  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000a28  e300bff0  loadli.w r1,  -1960(r30)
000a2c  7e0001e0  vmmov mr0, r2
000a30  1f011000  addli r2, zero, 8
000a34  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000a38  e340bff0  loadli.w r1,  -1956(r30)
000a3c  7e0001e0  vmmov mr0, r2
000a40  1f012000  addli r2, zero, 16
000a44  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000a48  e300cff0  loadli.w r1,  -1952(r30)
000a4c  7e0001e0  vmmov mr0, r2
000a50  1f014000  addli r2, zero, 32
000a54  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000a58  e340cff0  loadli.w r1,  -1948(r30)
000a5c  7e0001e0  vmmov mr0, r2
000a60  1f018000  addli r2, zero, 64
000a64  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000a68  e300dff0  loadli.w r1,  -1944(r30)
000a6c  7e0001e0  vmmov mr0, r2
000a70  1f010001  addli r2, zero, 128
000a74  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000a78  e340dff0  loadli.w r1,  -1940(r30)
000a7c  7e0001e0  vmmov mr0, r2
000a80  1f010002  addli r2, zero, 256
000a84  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000a88  e300eff0  loadli.w r1,  -1936(r30)
000a8c  7e0001e0  vmmov mr0, r2
000a90  1f010004  addli r2, zero, 512
000a94  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000a98  e340eff0  loadli.w r1,  -1932(r30)
000a9c  7e0001e0  vmmov mr0, r2
000aa0  1f010008  addli r2, zero, 1024
000aa4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000aa8  e300fff0  loadli.w r1,  -1928(r30)
000aac  7e0001e0  vmmov mr0, r2
000ab0  1f010010  addli r2, zero, 2048
000ab4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000ab8  e340fff0  loadli.w r1,  -1924(r30)
000abc  7e0001e0  vmmov mr0, r2
000ac0  1f010020  addli r2, zero, 4096
000ac4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000ac8  e3000ff1  loadli.w r1,  -1920(r30)
000acc  7e0001e0  vmmov mr0, r2
000ad0  2b810000  lui r2, 8
000ad4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000ad8  e3400ff1  loadli.w r1,  -1916(r30)
000adc  7e0001e0  vmmov mr0, r2
000ae0  1f110000  addli r2, zero, 1
000ae4  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
000ae8  e3001ff1  loadli.w r1,  -1912(r30)
000aec  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000af0  e3401ff1  loadli.w r1,  -1908(r30)
000af4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000af8  e3002ff1  loadli.w r1,  -1904(r30)
000afc  7e0001e0  vmmov mr0, r2
000b00  1f210000  addli r2, zero, 2
000b04  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000b08  e3402ff1  loadli.w r1,  -1900(r30)
000b0c  7e0001e0  vmmov mr0, r2
000b10  1f410000  addli r2, zero, 4
000b14  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000b18  e3003ff1  loadli.w r1,  -1896(r30)
000b1c  7e0001e0  vmmov mr0, r2
000b20  1f011000  addli r2, zero, 8
000b24  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000b28  e3403ff1  loadli.w r1,  -1892(r30)
000b2c  7e0001e0  vmmov mr0, r2
000b30  1f012000  addli r2, zero, 16
000b34  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000b38  e3004ff1  loadli.w r1,  -1888(r30)
000b3c  7e0001e0  vmmov mr0, r2
000b40  1f014000  addli r2, zero, 32
000b44  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000b48  e3404ff1  loadli.w r1,  -1884(r30)
000b4c  7e0001e0  vmmov mr0, r2
000b50  1f018000  addli r2, zero, 64
000b54  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000b58  e3005ff1  loadli.w r1,  -1880(r30)
000b5c  7e0001e0  vmmov mr0, r2
000b60  1f010001  addli r2, zero, 128
000b64  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000b68  e3405ff1  loadli.w r1,  -1876(r30)
000b6c  7e0001e0  vmmov mr0, r2
000b70  1f010002  addli r2, zero, 256
000b74  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000b78  e3006ff1  loadli.w r1,  -1872(r30)
000b7c  7e0001e0  vmmov mr0, r2
000b80  1f010004  addli r2, zero, 512
000b84  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000b88  e3406ff1  loadli.w r1,  -1868(r30)
000b8c  7e0001e0  vmmov mr0, r2
000b90  1f010008  addli r2, zero, 1024
000b94  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000b98  e3007ff1  loadli.w r1,  -1864(r30)
000b9c  7e0001e0  vmmov mr0, r2
000ba0  1f010010  addli r2, zero, 2048
000ba4  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000ba8  e3407ff1  loadli.w r1,  -1860(r30)
000bac  7e0001e0  vmmov mr0, r2
000bb0  1f010020  addli r2, zero, 4096
000bb4  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000bb8  e3008ff1  loadli.w r1,  -1856(r30)
000bbc  7e0001e0  vmmov mr0, r2
000bc0  2b810000  lui r2, 8
000bc4  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000bc8  e3408ff1  loadli.w r1,  -1852(r30)
000bcc  7e0001e0  vmmov mr0, r2
000bd0  1f110000  addli r2, zero, 1
000bd4  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
000bd8  e3009ff1  loadli.w r1,  -1848(r30)
000bdc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000be0  fe0101c0  vmmov mr3, mr2
000be4  e3409ff1  loadli.w r1,  -1844(r30)
000be8  7e0101e0  vmmov mr2, r2
000bec  1f210000  addli r2, zero, 2
000bf0  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000bf4  e300aff1  loadli.w r1,  -1840(r30)
000bf8  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
000bfc  e340aff1  loadli.w r1,  -1836(r30)
000c00  7e0101e0  vmmov mr2, r2
000c04  1f410000  addli r2, zero, 4
000c08  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
000c0c  e300bff1  loadli.w r1,  -1832(r30)
000c10  7e0101e0  vmmov mr2, r2
000c14  1f011000  addli r2, zero, 8
000c18  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
000c1c  e340bff1  loadli.w r1,  -1828(r30)
000c20  7e0101e0  vmmov mr2, r2
000c24  1f012000  addli r2, zero, 16
000c28  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
000c2c  e300cff1  loadli.w r1,  -1824(r30)
000c30  7e0101e0  vmmov mr2, r2
000c34  1f014000  addli r2, zero, 32
000c38  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
000c3c  e340cff1  loadli.w r1,  -1820(r30)
000c40  7e0101e0  vmmov mr2, r2
000c44  1f018000  addli r2, zero, 64
000c48  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
000c4c  e340dff1  loadli.w r1,  -1812(r30)
000c50  7e0101e0  vmmov mr2, r2
000c54  1f010001  addli r2, zero, 128
000c58  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
000c5c  e340eff1  loadli.w r1,  -1804(r30)
000c60  7e0101e0  vmmov mr2, r2
000c64  1f010002  addli r2, zero, 256
000c68  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
000c6c  e340fff1  loadli.w r1,  -1796(r30)
000c70  7e0101e0  vmmov mr2, r2
000c74  1f010004  addli r2, zero, 512
000c78  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
000c7c  e3400ff2  loadli.w r1,  -1788(r30)
000c80  7e0101e0  vmmov mr2, r2
000c84  1f010008  addli r2, zero, 1024
000c88  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
000c8c  e3401ff2  loadli.w r1,  -1780(r30)
000c90  7e0101e0  vmmov mr2, r2
000c94  1f010010  addli r2, zero, 2048
000c98  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
000c9c  e3402ff2  loadli.w r1,  -1772(r30)
000ca0  7e0101e0  vmmov mr2, r2
000ca4  1f010020  addli r2, zero, 4096
000ca8  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
000cac  e3403ff2  loadli.w r1,  -1764(r30)
000cb0  7e0101e0  vmmov mr2, r2
000cb4  1f010040  addli r2, zero, 8192
000cb8  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
000cbc  e3404ff2  loadli.w r1,  -1756(r30)
000cc0  7e0101e0  vmmov mr2, r2
000cc4  1f110000  addli r2, zero, 1
000cc8  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
000ccc  e3405ff2  loadli.w r1,  -1748(r30)
000cd0  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
000cd4  e3406ff2  loadli.w r1,  -1740(r30)
000cd8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000cdc  e3407ff2  loadli.w r1,  -1732(r30)
000ce0  7e0001e0  vmmov mr0, r2
000ce4  1f210000  addli r2, zero, 2
000ce8  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000cec  e3408ff2  loadli.w r1,  -1724(r30)
000cf0  7e0001e0  vmmov mr0, r2
000cf4  1f410000  addli r2, zero, 4
000cf8  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000cfc  e3409ff2  loadli.w r1,  -1716(r30)
000d00  7e0001e0  vmmov mr0, r2
000d04  1f011000  addli r2, zero, 8
000d08  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000d0c  e340aff2  loadli.w r1,  -1708(r30)
000d10  7e0001e0  vmmov mr0, r2
000d14  1f012000  addli r2, zero, 16
000d18  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000d1c  e340bff2  loadli.w r1,  -1700(r30)
000d20  7e0001e0  vmmov mr0, r2
000d24  1f014000  addli r2, zero, 32
000d28  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000d2c  e340cff2  loadli.w r1,  -1692(r30)
000d30  7e0001e0  vmmov mr0, r2
000d34  1f018000  addli r2, zero, 64
000d38  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000d3c  e340dff2  loadli.w r1,  -1684(r30)
000d40  7e0001e0  vmmov mr0, r2
000d44  1f010001  addli r2, zero, 128
000d48  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000d4c  e340eff2  loadli.w r1,  -1676(r30)
000d50  7e0001e0  vmmov mr0, r2
000d54  1f010002  addli r2, zero, 256
000d58  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000d5c  e340fff2  loadli.w r1,  -1668(r30)
000d60  7e0001e0  vmmov mr0, r2
000d64  1f010004  addli r2, zero, 512
000d68  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000d6c  e3400ff3  loadli.w r1,  -1660(r30)
000d70  7e0001e0  vmmov mr0, r2
000d74  1f010008  addli r2, zero, 1024
000d78  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000d7c  e3401ff3  loadli.w r1,  -1652(r30)
000d80  7e0001e0  vmmov mr0, r2
000d84  1f010010  addli r2, zero, 2048
000d88  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000d8c  e3402ff3  loadli.w r1,  -1644(r30)
000d90  7e0001e0  vmmov mr0, r2
000d94  1f010020  addli r2, zero, 4096
000d98  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000d9c  9f000ff4  addli r1, r30, -1536
000da0  7e0001e0  vmmov mr0, r2
000da4  2b810000  lui r2, 8
000da8  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000dac  9f008ff3  addli r1, r30, -1600
000db0  0e136402  vmul.f.mz.rn vr6{mr1}, vr8, vr6
000db4  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000db8  e3006ff3  loadli.w r1,  -1616(r30)
000dbc  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000dc0  abf00000  lui r1, 15
000dc4  9ff0f01f  addli r1, r1, 4095
000dc8  0e14b402  vmul.f.mz.rn vr8{mr1}, vr8, vr11
000dcc  92355002  vadd.s.mz vr11{mr1}, zero, vr5
000dd0  7e8000e0  vmmov mr0, r1
000dd4  e3406ff3  loadli.w r1,  -1612(r30)
000dd8  6e909330  vor.f.mh vr0{mr0}, vr7, vr9
000ddc  92345002  vadd.s.mz vr9{mr1}, zero, vr5
000de0  ee956330  vor.f.mh vr11{mr0}, vr7, vr6
000de4  12335002  vadd.s.mz vr6{mr1}, zero, vr5
000de8  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
000dec  9f000ff5  addli r1, r30, -1408
000df0  7e0101e0  vmmov mr2, r2
000df4  6e938330  vor.f.mh vr6{mr0}, vr7, vr8
000df8  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000dfc  9f008ff4  addli r1, r30, -1472
000e00  8e101402  vmul.f.mz.rn vr1{mr1}, vr8, vr1
000e04  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000e08  9f008ff5  addli r1, r30, -1344
000e0c  ee941330  vor.f.mh vr9{mr0}, vr7, vr1
000e10  92305002  vadd.s.mz vr1{mr1}, zero, vr5
000e14  0e112402  vmul.f.mz.rn vr2{mr1}, vr8, vr2
000e18  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000e1c  e3007ff3  loadli.w r1,  -1608(r30)
000e20  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
000e24  9f000ff6  addli r1, r30, -1280
000e28  ee902330  vor.f.mh vr1{mr0}, vr7, vr2
000e2c  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000e30  e3407ff3  loadli.w r1,  -1604(r30)
000e34  0e14a402  vmul.f.mz.rn vr8{mr1}, vr8, vr10
000e38  96101302  vadd.f.mz.rn vr1{mr1}, vr6, vr1
000e3c  12335002  vadd.s.mz vr6{mr1}, zero, vr5
000e40  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
000e44  9f008ff6  addli r1, r30, -1216
000e48  0e113102  vmul.f.mz.rn vr2{mr1}, vr2, vr3
000e4c  96919502  vadd.f.mz.rn vr3{mr1}, vr11, vr9
000e50  6e932330  vor.f.mh vr6{mr0}, vr7, vr2
000e54  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000e58  96901102  vadd.f.mz.rn vr1{mr1}, vr3, vr1
000e5c  92315002  vadd.s.mz vr3{mr1}, zero, vr5
000e60  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
000e64  0e114102  vmul.f.mz.rn vr2{mr1}, vr2, vr4
000e68  12325002  vadd.s.mz vr4{mr1}, zero, vr5
000e6c  16900002  vadd.f.mz.rn vr0{mr1}, vr1, vr0
000e70  6e928330  vor.f.mh vr4{mr0}, vr7, vr8
000e74  ee912330  vor.f.mh vr3{mr0}, vr7, vr2
000e78  96103202  vadd.f.mz.rn vr1{mr1}, vr4, vr3
000e7c  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
000e80  fa100040  vextracti.f r1, 0(vr0)
000e84  7a111040  vextracti.f r2, 1(vr0)
000e88  8be02010  add.f.rn r1, r1, r2
000e8c  7a112040  vextracti.f r2, 2(vr0)
000e90  8b601110  add.f.rn r1, r2, r1
000e94  7a113040  vextracti.f r2, 3(vr0)
000e98  8b601110  add.f.rn r1, r2, r1
000e9c  7a114040  vextracti.f r2, 4(vr0)
000ea0  8b601110  add.f.rn r1, r2, r1
000ea4  7a115040  vextracti.f r2, 5(vr0)
000ea8  8b601110  add.f.rn r1, r2, r1
000eac  7a116040  vextracti.f r2, 6(vr0)
000eb0  8b601110  add.f.rn r1, r2, r1
000eb4  7a117040  vextracti.f r2, 7(vr0)
000eb8  8b601110  add.f.rn r1, r2, r1
000ebc  7a118040  vextracti.f r2, 8(vr0)
000ec0  8b601110  add.f.rn r1, r2, r1
000ec4  7a119040  vextracti.f r2, 9(vr0)
000ec8  8b601110  add.f.rn r1, r2, r1
000ecc  7a11a040  vextracti.f r2, 10(vr0)
000ed0  8b601110  add.f.rn r1, r2, r1
000ed4  7a11b040  vextracti.f r2, 11(vr0)
000ed8  8b601110  add.f.rn r1, r2, r1
000edc  7a11c040  vextracti.f r2, 12(vr0)
000ee0  8b601110  add.f.rn r1, r2, r1
000ee4  7a11d040  vextracti.f r2, 13(vr0)
000ee8  8b601110  add.f.rn r1, r2, r1
000eec  7a11e040  vextracti.f r2, 14(vr0)
000ef0  8b601110  add.f.rn r1, r2, r1
000ef4  7a11f040  vextracti.f r2, 15(vr0)
000ef8  8b601110  add.f.rn r1, r2, r1
000efc  63413ff0  loadli.w r2,  -2020(r30)
000f00  73601100  stores.w r1, 0(r2)
000f04  00a00300  mfence { lm, sm, gm }
000f08  63063ff0  loadli.w r12,  -2024(r30)
000f0c  80210604  csr_set csr3, r12
000f10  00d00100  sync_group
000f14  e3001ff0  loadli.w r1,  -2040(r30)
000f18  3ba10000  bneq r1, zero, 72
000f1c  6302efef  loadli.w r4,  -2064(r30)
000f20  ef400200  loads.w r1, 0(r4)
000f24  6f414200  loads.w r2, 4(r4)
000f28  ef418200  loads.w r3, 8(r4)
000f2c  8be02010  add.f.rn r1, r1, r2
000f30  6f41c200  loads.w r2, 12(r4)
000f34  8be03010  add.f.rn r1, r1, r3
000f38  ef410201  loads.w r3, 16(r4)
000f3c  8be02010  add.f.rn r1, r1, r2
000f40  6f414201  loads.w r2, 20(r4)
000f44  8be03010  add.f.rn r1, r1, r3
000f48  ef418201  loads.w r3, 24(r4)
000f4c  8be02010  add.f.rn r1, r1, r2
000f50  6f41c201  loads.w r2, 28(r4)
000f54  8be03010  add.f.rn r1, r1, r3
000f58  8be02010  add.f.rn r1, r1, r2
000f5c  73601200  stores.w r1, 0(r4)
000f60  00a00300  mfence { lm, sm, gm }
000f64  80210604  csr_set csr3, r12
000f68  00d00100  sync_group
000f6c  63055f00  loadli.w r10,  40(r30)
000f70  e3454f00  loadli.w r11,  36(r30)
000f74  e3462ff0  loadli.w r13,  -2028(r30)
000f78  63072ff0  loadli.w r14,  -2032(r30)
000f7c  e3471ff0  loadli.w r15,  -2036(r30)
000f80  e340efef  loadli.w r1,  -2060(r30)
000f84  63417ff7  loadli.w r2,  -1092(r30)
000f88  1f74f003  addli r8, zero, 511
000f8c  b7d800f8  beq r1, zero, -3532
000f90  e300efef  loadli.w r1,  -2064(r30)
000f94  33110128  sext_int2long r[3:4], r2
000f98  1f220000  addli r4, zero, 2
000f9c  6b530f01  load.d r[7:8], 16(r30)
000fa0  17314102  sll.d r[3:4], r[3:4], r4
000fa4  2b0200f0  lui r4, 983040
000fa8  efc00000  loads.w r1, 0(r1)
000fac  0b212310  add.ul r[3:4], r[7:8], r[3:4]
000fb0  670c1ffe  storeli.w r1, -64(r30)
000fb4  9f400000  addli r1, zero, 4
000fb8  00a00000  mfence { lm }
000fbc  97904000  or r1, r1, r4
000fc0  1f028fff  addli r4, r30, -64
000fc4  ff304100  s_lm2gm r1, r4, 0(r[3:4])
000fc8  00a00000  mfence { lm }
000fcc  db3efeff  j -3596
000fd0  9f0e8fef  addli sp, r30, -2112
000fd4  9f8e8e10  addli sp, sp, 2112
000fd8  00a00300  mfence { lm, sm, gm }
000fdc  00100000  exit
000fe0  00100000  exit
000fe4  00100000  exit
000fe8  00100000  exit
000fec  00100000  exit
000ff0  00100000  exit
000ff4  00100000  exit
000ff8  00100000  exit
000ffc  00100000  exit
001000  00100000  exit
001004  00100000  exit
001008  00100000  exit
00100c  00100000  exit
001010  00100000  exit
001014  00100000  exit
001018  00100000  exit
00101c  00100000  exit
001020  00100000  exit
001024  00100000  exit
001028  00100000  exit
00102c  00100000  exit
001030  00100000  exit
001034  00100000  exit
001038  00100000  exit
00103c  00100000  exit
001040  00100000  exit
001044  00100000  exit
001048  00100000  exit
00104c  00100000  exit
001050  00100000  exit
001054  00100000  exit
001058  00100000  exit
00105c  00100000  exit
001060  00100000  exit
001064  00100000  exit
001068  00100000  exit
00106c  00100000  exit
001070  00100000  exit
001074  00100000  exit
001078  00100000  exit
00107c  00100000  exit
001080  00100000  exit
001084  00100000  exit
001088  00100000  exit
00108c  00100000  exit
001090  00100000  exit
001094  00100000  exit
001098  00100000  exit
00109c  00100000  exit
0010a0  00100000  exit
0010a4  00100000  exit
0010a8  00100000  exit
0010ac  00100000  exit
0010b0  00100000  exit
0010b4  00100000  exit
0010b8  00100000  exit
0010bc  00100000  exit
0010c0  00100000  exit
0010c4  00100000  exit
0010c8  00100000  exit
0010cc  00100000  exit
0010d0  00100000  exit
0010d4  00100000  exit
0010d8  00100000  exit
0010dc  00100000  exit
0010e0  00100000  exit
0010e4  00100000  exit
0010e8  00100000  exit
0010ec  00100000  exit
0010f0  00100000  exit
0010f4  00100000  exit
0010f8  00100000  exit
0010fc  00100000  exit
001100  00100000  exit
001104  00100000  exit
001108  00100000  exit
00110c  00100000  exit
001110  00100000  exit
001114  00100000  exit
001118  00100000  exit
00111c  00100000  exit
001120  00100000  exit
001124  00100000  exit
001128  00100000  exit
00112c  00100000  exit
001130  00100000  exit
001134  00100000  exit
001138  00100000  exit
00113c  00100000  exit
001140  00100000  exit
001144  00100000  exit
001148  00100000  exit
00114c  00100000  exit
001150  00100000  exit
001154  00100000  exit
001158  00100000  exit
00115c  00100000  exit
001160  00100000  exit
001164  00100000  exit
001168  00100000  exit
00116c  00100000  exit
001170  00100000  exit
001174  00100000  exit
001178  00100000  exit
00117c  00100000  exit
001180  00100000  exit
001184  00100000  exit
001188  00100000  exit
00118c  00100000  exit
001190  00100000  exit
001194  00100000  exit
001198  00100000  exit
00119c  00100000  exit
0011a0  00100000  exit
0011a4  00100000  exit
0011a8  00100000  exit
0011ac  00100000  exit
0011b0  00100000  exit
0011b4  00100000  exit
0011b8  00100000  exit
0011bc  00100000  exit
0011c0  00100000  exit
0011c4  00100000  exit
0011c8  00100000  exit
0011cc  00100000  exit
0011d0  00100000  exit
0011d4  00100000  exit
0011d8  00100000  exit
0011dc  00100000  exit
0011e0  00100000  exit
0011e4  00100000  exit
0011e8  00100000  exit
0011ec  00100000  exit
0011f0  00100000  exit
0011f4  00100000  exit
0011f8  00100000  exit
0011fc  00100000  exit
001200  00100000  exit
001204  00100000  exit
001208  00100000  exit
00120c  00100000  exit
001210  00100000  exit
001214  00100000  exit
001218  00100000  exit
00121c  00100000  exit
