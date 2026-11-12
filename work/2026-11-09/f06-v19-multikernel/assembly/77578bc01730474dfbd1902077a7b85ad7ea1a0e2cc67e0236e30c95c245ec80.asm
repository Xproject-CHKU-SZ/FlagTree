; SHA-256 77578bc01730474dfbd1902077a7b85ad7ea1a0e2cc67e0236e30c95c245ec80
; P800 Cluster · XTDK LLVM 19 · 1169 / 1169 words decoded
; bound names: triton_unk_fused_0
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
0000ec  00550002  load_param_i r10, 0
0000f0  9bb12000  slli r3, r1, 2
0000f4  1f010100  addli r2, r2, 0
0000f8  63434f00  loadli.w r6,  36(r30)
0000fc  e3025f00  loadli.w r5,  40(r30)
000100  0b922110  add.s r4, r3, r2
000104  e3014f00  loadli.w r3,  32(r30)
000108  e7014ff0  storeli.w r4, -2024(r30)
00010c  73600200  stores.w zero, 0(r4)
000110  2bf20000  lui r4, 15
000114  8b113320  mul.s r3, r6, r3
000118  00a00300  mfence { lm, sm, gm }
00011c  9b14f2ff  ori r9, r4, 4095
000120  8b915120  mul.s r3, r3, r5
000124  80a10404  csr_set csr3, r9
000128  00d00100  sync_group
00012c  670f3fee  storeli.w r3, -2064(r30)
000130  4b9ba106  ble.s r3, r10, 3780
000134  9f051000  addli r11, zero, 8
000138  00d30002  load_param_i r6, 1
00013c  1f260000  addli r12, zero, 2
000140  eb518f00  load.d r[4:5], 8(r30)
000144  1f0b8ff7  addli r22, r30, -1088
000148  9f0b0004  addli r23, zero, 512
00014c  eea25262  vxor.u.mz vr5{mr1}, vr5, vr5
000150  eeb37362  vxor.s.mz vr7{mr1}, vr7, vr7
000154  67419ff0  storeli.w r9, -2028(r30)
000158  8b92b030  div.s r5, r1, r11
00015c  e70e6fee  storeli.w r6, -2072(r30)
000160  1b837000  andi r6, r1, 7
000164  67016ff0  storeli.w r6, -2032(r30)
000168  2bf3ff3f  lui r6, 262143
00016c  1b1383ff  ori r6, r6, 4088
000170  e74e5fee  storeli.w r5, -2068(r30)
000174  9bb23200  slli r5, r5, 3
000178  17836000  and r6, r1, r6
00017c  8b925018  sub.s r5, r1, r5
000180  1b332300  slli r6, r6, 2
000184  9bf00004  setlti r1, r1, 64
000188  9bb37200  slli r7, r5, 7
00018c  93820200  seteq r5, r5, zero
000190  0b112310  add.s r2, r6, r2
000194  e7407ff0  storeli.w r7, -2036(r30)
000198  b3930328  sext_int2long r[8:9], r7
00019c  e70f2fee  storeli.w r2, -2056(r30)
0001a0  97b3c302  sll.d r[8:9], r[8:9], r12
0001a4  8ba17110  add.ul r[4:5], r[4:5], r[8:9]
0001a8  9f73f003  addli r7, zero, 511
0001ac  97805000  and r1, r1, r5
0001b0  73303f80  store.d r[4:5], -2048(r30)
0001b4  e74f1fee  storeli.w r1, -2052(r30)
0001b8  db030000  j 28
0001bc  6345efef  loadli.w r10,  -2060(r30)
0001c0  e300dfef  loadli.w r1,  -2072(r30)
0001c4  0b151510  add.s r10, r10, r1
0001c8  e300efef  loadli.w r1,  -2064(r30)
0001cc  3f201500  blt.s r10, r1, 8
0001d0  dbc40100  j 3620
0001d4  e3005f00  loadli.w r1,  40(r30)
0001d8  63414f00  loadli.w r2,  36(r30)
0001dc  1f0e0000  addli r28, zero, 0
0001e0  674fafee  storeli.w r10, -2060(r30)
0001e4  8b101530  div.s r1, r10, r1
0001e8  8b902030  div.s r1, r1, r2
0001ec  6341dfef  loadli.w r2,  -2068(r30)
0001f0  9bb06000  slli r1, r1, 6
0001f4  0b942010  add.s r8, r1, r2
0001f8  e7418ff0  storeli.w r8, -2020(r30)
0001fc  db010000  j 12
000200  1f1e0e00  addli r28, r28, 1
000204  b76ebefe  beq r28, r11, -72
000208  9b303e00  slli r1, r28, 3
00020c  8b111410  add.s r3, r8, r1
000210  bfcf33fe  blt.s r7, r3, -16
000214  9f000000  addli r1, zero, 0
000218  0b111b10  add.s r2, r22, r1
00021c  9f800001  addli r1, r1, 128
000220  46105102  vstore_mask16.mz vr5{mr1}, 0(r2)
000224  46145102  vstore_mask16.mz vr5{mr1}, 64(r2)
000228  00a00000  mfence { lm }
00022c  bbbf70ff  bneq r1, r23, -20
000230  63411ff0  loadli.w r2,  -2036(r30)
000234  9bb0a100  slli r1, r3, 10
000238  e74b3ff6  storeli.w r3, -1092(r30)
00023c  9f220000  addli r5, zero, 2
000240  12335002  vadd.s.mz vr6{mr1}, zero, vr5
000244  92355002  vadd.s.mz vr11{mr1}, zero, vr5
000248  8b902010  add.s r1, r1, r2
00024c  2b0100f0  lui r2, 983040
000250  b3910028  sext_int2long r[4:5], r1
000254  17912b00  or r2, r23, r2
000258  ab0000f0  lui r1, 983040
00025c  97b15102  sll.d r[4:5], r[4:5], r5
000260  eb520f00  load.d r[6:7], 0(r30)
000264  97901b00  or r1, r23, r1
000268  8ba13210  add.ul r[4:5], r[6:7], r[4:5]
00026c  7fa16101  l_gm2lm r2, r22, 0(r[4:5])
000270  6b510f80  load.d r[3:4], -2048(r30)
000274  1f028ffb  addli r4, r30, -576
000278  ff204100  l_gm2lm r1, r4, 0(r[3:4])
00027c  9f008ff7  addli r1, r30, -1088
000280  00a00000  mfence { lm }
000284  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000288  9f000ff4  addli r1, r30, -1536
00028c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000290  9f008ff3  addli r1, r30, -1600
000294  42100f82  vload_mask16.mz vr0{mr1}, 1024(r30)
000298  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00029c  9f008ff5  addli r1, r30, -1344
0002a0  c2148f82  vload_mask16.mz vr9{mr1}, 1088(r30)
0002a4  42100f83  vload_mask16.mz vr0{mr1}, 1152(r30)
0002a8  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0002ac  9f000ff5  addli r1, r30, -1408
0002b0  42108f83  vload_mask16.mz vr0{mr1}, 1216(r30)
0002b4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0002b8  9f008ff4  addli r1, r30, -1472
0002bc  42100fa2  vload_mask16.mz vr0{mr1}, 1280(r30)
0002c0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0002c4  9f000ff6  addli r1, r30, -1280
0002c8  42108fa2  vload_mask16.mz vr0{mr1}, 1344(r30)
0002cc  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0002d0  9f008ff6  addli r1, r30, -1216
0002d4  42100fa3  vload_mask16.mz vr0{mr1}, 1408(r30)
0002d8  e30d2ffd  loadli.w r27,  -368(r30)
0002dc  63416ffc  loadli.w r2,  -460(r30)
0002e0  e3017ffc  loadli.w r3,  -456(r30)
0002e4  63427ffc  loadli.w r4,  -452(r30)
0002e8  e3028ffc  loadli.w r5,  -448(r30)
0002ec  63438ffc  loadli.w r6,  -444(r30)
0002f0  e3039ffc  loadli.w r7,  -440(r30)
0002f4  63449ffc  loadli.w r8,  -436(r30)
0002f8  e304affc  loadli.w r9,  -432(r30)
0002fc  6345affc  loadli.w r10,  -428(r30)
000300  e305bffc  loadli.w r11,  -424(r30)
000304  6346bffc  loadli.w r12,  -420(r30)
000308  e306cffc  loadli.w r13,  -416(r30)
00030c  6347cffc  loadli.w r14,  -412(r30)
000310  e307dffc  loadli.w r15,  -408(r30)
000314  6348dffc  loadli.w r16,  -404(r30)
000318  e308effc  loadli.w r17,  -400(r30)
00031c  6349effc  loadli.w r18,  -396(r30)
000320  e309fffc  loadli.w r19,  -392(r30)
000324  634afffc  loadli.w r20,  -388(r30)
000328  e30a0ffd  loadli.w r21,  -384(r30)
00032c  634c0ffd  loadli.w r24,  -380(r30)
000330  e30c1ffd  loadli.w r25,  -376(r30)
000334  634d1ffd  loadli.w r26,  -372(r30)
000338  6702bff1  storeli.w r27, -2016(r30)
00033c  e34d2ffd  loadli.w r27,  -364(r30)
000340  6742bff1  storeli.w r27, -2012(r30)
000344  e30d3ffd  loadli.w r27,  -360(r30)
000348  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00034c  e3008ffb  loadli.w r1,  -576(r30)
000350  e702bff1  storeli.w r27, -2008(r30)
000354  e34d3ffd  loadli.w r27,  -356(r30)
000358  e70e1ff0  storeli.w r1, -1816(r30)
00035c  e3408ffb  loadli.w r1,  -572(r30)
000360  e742bff1  storeli.w r27, -2004(r30)
000364  e30d4ffd  loadli.w r27,  -352(r30)
000368  670f1ff0  storeli.w r1, -1808(r30)
00036c  e3009ffb  loadli.w r1,  -568(r30)
000370  6703bff1  storeli.w r27, -2000(r30)
000374  e34d4ffd  loadli.w r27,  -348(r30)
000378  e70f1ff0  storeli.w r1, -1800(r30)
00037c  e3409ffb  loadli.w r1,  -564(r30)
000380  6743bff1  storeli.w r27, -1996(r30)
000384  e30d5ffd  loadli.w r27,  -344(r30)
000388  67001ff2  storeli.w r1, -1792(r30)
00038c  e300affb  loadli.w r1,  -560(r30)
000390  e703bff1  storeli.w r27, -1992(r30)
000394  e34d5ffd  loadli.w r27,  -340(r30)
000398  e7001ff2  storeli.w r1, -1784(r30)
00039c  e340affb  loadli.w r1,  -556(r30)
0003a0  e743bff1  storeli.w r27, -1988(r30)
0003a4  e30d6ffd  loadli.w r27,  -336(r30)
0003a8  67011ff2  storeli.w r1, -1776(r30)
0003ac  e300bffb  loadli.w r1,  -552(r30)
0003b0  6704bff1  storeli.w r27, -1984(r30)
0003b4  e34d6ffd  loadli.w r27,  -332(r30)
0003b8  e7011ff2  storeli.w r1, -1768(r30)
0003bc  e340bffb  loadli.w r1,  -548(r30)
0003c0  6744bff1  storeli.w r27, -1980(r30)
0003c4  e30d7ffd  loadli.w r27,  -328(r30)
0003c8  67021ff2  storeli.w r1, -1760(r30)
0003cc  e300cffb  loadli.w r1,  -544(r30)
0003d0  e704bff1  storeli.w r27, -1976(r30)
0003d4  e34d7ffd  loadli.w r27,  -324(r30)
0003d8  e7021ff2  storeli.w r1, -1752(r30)
0003dc  e340cffb  loadli.w r1,  -540(r30)
0003e0  e744bff1  storeli.w r27, -1972(r30)
0003e4  e30d8ffd  loadli.w r27,  -320(r30)
0003e8  67031ff2  storeli.w r1, -1744(r30)
0003ec  e300dffb  loadli.w r1,  -536(r30)
0003f0  6705bff1  storeli.w r27, -1968(r30)
0003f4  e34d8ffd  loadli.w r27,  -316(r30)
0003f8  e7031ff2  storeli.w r1, -1736(r30)
0003fc  e340dffb  loadli.w r1,  -532(r30)
000400  6745bff1  storeli.w r27, -1964(r30)
000404  e30d9ffd  loadli.w r27,  -312(r30)
000408  67041ff2  storeli.w r1, -1728(r30)
00040c  e300effb  loadli.w r1,  -528(r30)
000410  e705bff1  storeli.w r27, -1960(r30)
000414  e34d9ffd  loadli.w r27,  -308(r30)
000418  e7041ff2  storeli.w r1, -1720(r30)
00041c  e340effb  loadli.w r1,  -524(r30)
000420  e745bff1  storeli.w r27, -1956(r30)
000424  e30daffd  loadli.w r27,  -304(r30)
000428  67051ff2  storeli.w r1, -1712(r30)
00042c  e300fffb  loadli.w r1,  -520(r30)
000430  6706bff1  storeli.w r27, -1952(r30)
000434  e34daffd  loadli.w r27,  -300(r30)
000438  e7051ff2  storeli.w r1, -1704(r30)
00043c  e340fffb  loadli.w r1,  -516(r30)
000440  6746bff1  storeli.w r27, -1948(r30)
000444  e30dbffd  loadli.w r27,  -296(r30)
000448  67061ff2  storeli.w r1, -1696(r30)
00044c  e3000ffc  loadli.w r1,  -512(r30)
000450  e706bff1  storeli.w r27, -1944(r30)
000454  e34dbffd  loadli.w r27,  -292(r30)
000458  e7061ff2  storeli.w r1, -1688(r30)
00045c  e3400ffc  loadli.w r1,  -508(r30)
000460  e746bff1  storeli.w r27, -1940(r30)
000464  e30dcffd  loadli.w r27,  -288(r30)
000468  67071ff2  storeli.w r1, -1680(r30)
00046c  e3001ffc  loadli.w r1,  -504(r30)
000470  6707bff1  storeli.w r27, -1936(r30)
000474  e34dcffd  loadli.w r27,  -284(r30)
000478  e7071ff2  storeli.w r1, -1672(r30)
00047c  e3401ffc  loadli.w r1,  -500(r30)
000480  6747bff1  storeli.w r27, -1932(r30)
000484  e30ddffd  loadli.w r27,  -280(r30)
000488  67081ff2  storeli.w r1, -1664(r30)
00048c  e3002ffc  loadli.w r1,  -496(r30)
000490  e707bff1  storeli.w r27, -1928(r30)
000494  e34ddffd  loadli.w r27,  -276(r30)
000498  e7081ff2  storeli.w r1, -1656(r30)
00049c  e3402ffc  loadli.w r1,  -492(r30)
0004a0  e747bff1  storeli.w r27, -1924(r30)
0004a4  e30deffd  loadli.w r27,  -272(r30)
0004a8  67091ff2  storeli.w r1, -1648(r30)
0004ac  e3003ffc  loadli.w r1,  -488(r30)
0004b0  6708bff1  storeli.w r27, -1920(r30)
0004b4  e34deffd  loadli.w r27,  -268(r30)
0004b8  e7091ff2  storeli.w r1, -1640(r30)
0004bc  e3403ffc  loadli.w r1,  -484(r30)
0004c0  6748bff1  storeli.w r27, -1916(r30)
0004c4  e30dfffd  loadli.w r27,  -264(r30)
0004c8  e7491ff2  storeli.w r1, -1636(r30)
0004cc  e3004ffc  loadli.w r1,  -480(r30)
0004d0  e708bff1  storeli.w r27, -1912(r30)
0004d4  e34dfffd  loadli.w r27,  -260(r30)
0004d8  670a1ff2  storeli.w r1, -1632(r30)
0004dc  e3404ffc  loadli.w r1,  -476(r30)
0004e0  e748bff1  storeli.w r27, -1908(r30)
0004e4  e30d0ffe  loadli.w r27,  -256(r30)
0004e8  674a1ff2  storeli.w r1, -1628(r30)
0004ec  e3005ffc  loadli.w r1,  -472(r30)
0004f0  6709bff1  storeli.w r27, -1904(r30)
0004f4  e34d0ffe  loadli.w r27,  -252(r30)
0004f8  e70a1ff2  storeli.w r1, -1624(r30)
0004fc  e3405ffc  loadli.w r1,  -468(r30)
000500  6749bff1  storeli.w r27, -1900(r30)
000504  e30d1ffe  loadli.w r27,  -248(r30)
000508  e74a1ff2  storeli.w r1, -1620(r30)
00050c  e3006ffc  loadli.w r1,  -464(r30)
000510  e709bff1  storeli.w r27, -1896(r30)
000514  e34d1ffe  loadli.w r27,  -244(r30)
000518  e749bff1  storeli.w r27, -1892(r30)
00051c  e30d2ffe  loadli.w r27,  -240(r30)
000520  670abff1  storeli.w r27, -1888(r30)
000524  e34d2ffe  loadli.w r27,  -236(r30)
000528  674abff1  storeli.w r27, -1884(r30)
00052c  e30d3ffe  loadli.w r27,  -232(r30)
000530  e70abff1  storeli.w r27, -1880(r30)
000534  e34d3ffe  loadli.w r27,  -228(r30)
000538  e74abff1  storeli.w r27, -1876(r30)
00053c  e30d4ffe  loadli.w r27,  -224(r30)
000540  670bbff1  storeli.w r27, -1872(r30)
000544  e34d4ffe  loadli.w r27,  -220(r30)
000548  674bbff1  storeli.w r27, -1868(r30)
00054c  e30d5ffe  loadli.w r27,  -216(r30)
000550  e70bbff1  storeli.w r27, -1864(r30)
000554  e34d5ffe  loadli.w r27,  -212(r30)
000558  e74bbff1  storeli.w r27, -1860(r30)
00055c  e30d6ffe  loadli.w r27,  -208(r30)
000560  670cbff1  storeli.w r27, -1856(r30)
000564  e34d6ffe  loadli.w r27,  -204(r30)
000568  674cbff1  storeli.w r27, -1852(r30)
00056c  e30d7ffe  loadli.w r27,  -200(r30)
000570  e70cbff1  storeli.w r27, -1848(r30)
000574  e34d7ffe  loadli.w r27,  -196(r30)
000578  e74cbff1  storeli.w r27, -1844(r30)
00057c  e30d8ffe  loadli.w r27,  -192(r30)
000580  670dbff1  storeli.w r27, -1840(r30)
000584  e34d8ffe  loadli.w r27,  -188(r30)
000588  674dbff1  storeli.w r27, -1836(r30)
00058c  e30d9ffe  loadli.w r27,  -184(r30)
000590  e70dbff1  storeli.w r27, -1832(r30)
000594  e34d9ffe  loadli.w r27,  -180(r30)
000598  e74dbff1  storeli.w r27, -1828(r30)
00059c  e30daffe  loadli.w r27,  -176(r30)
0005a0  670ebff1  storeli.w r27, -1824(r30)
0005a4  e34daffe  loadli.w r27,  -172(r30)
0005a8  674ebff1  storeli.w r27, -1820(r30)
0005ac  e30dbffe  loadli.w r27,  -168(r30)
0005b0  e74ebff1  storeli.w r27, -1812(r30)
0005b4  e34dbffe  loadli.w r27,  -164(r30)
0005b8  674fbff1  storeli.w r27, -1804(r30)
0005bc  e30dcffe  loadli.w r27,  -160(r30)
0005c0  e74fbff1  storeli.w r27, -1796(r30)
0005c4  e34dcffe  loadli.w r27,  -156(r30)
0005c8  6740bff3  storeli.w r27, -1788(r30)
0005cc  e30ddffe  loadli.w r27,  -152(r30)
0005d0  e740bff3  storeli.w r27, -1780(r30)
0005d4  e34ddffe  loadli.w r27,  -148(r30)
0005d8  6741bff3  storeli.w r27, -1772(r30)
0005dc  e30deffe  loadli.w r27,  -144(r30)
0005e0  e741bff3  storeli.w r27, -1764(r30)
0005e4  e34deffe  loadli.w r27,  -140(r30)
0005e8  6742bff3  storeli.w r27, -1756(r30)
0005ec  e30dfffe  loadli.w r27,  -136(r30)
0005f0  e742bff3  storeli.w r27, -1748(r30)
0005f4  e34dfffe  loadli.w r27,  -132(r30)
0005f8  6743bff3  storeli.w r27, -1740(r30)
0005fc  e30d0fff  loadli.w r27,  -128(r30)
000600  e743bff3  storeli.w r27, -1732(r30)
000604  e34d0fff  loadli.w r27,  -124(r30)
000608  6744bff3  storeli.w r27, -1724(r30)
00060c  e30d1fff  loadli.w r27,  -120(r30)
000610  e744bff3  storeli.w r27, -1716(r30)
000614  e34d1fff  loadli.w r27,  -116(r30)
000618  6745bff3  storeli.w r27, -1708(r30)
00061c  e30d2fff  loadli.w r27,  -112(r30)
000620  e745bff3  storeli.w r27, -1700(r30)
000624  e34d2fff  loadli.w r27,  -108(r30)
000628  6746bff3  storeli.w r27, -1692(r30)
00062c  e30d3fff  loadli.w r27,  -104(r30)
000630  e746bff3  storeli.w r27, -1684(r30)
000634  e34d3fff  loadli.w r27,  -100(r30)
000638  6747bff3  storeli.w r27, -1676(r30)
00063c  e30d4fff  loadli.w r27,  -96(r30)
000640  e747bff3  storeli.w r27, -1668(r30)
000644  e34d4fff  loadli.w r27,  -92(r30)
000648  6748bff3  storeli.w r27, -1660(r30)
00064c  e30d5fff  loadli.w r27,  -88(r30)
000650  e748bff3  storeli.w r27, -1652(r30)
000654  e34d5fff  loadli.w r27,  -84(r30)
000658  6749bff3  storeli.w r27, -1644(r30)
00065c  e30d6fff  loadli.w r27,  -80(r30)
000660  670bbff3  storeli.w r27, -1616(r30)
000664  e34d6fff  loadli.w r27,  -76(r30)
000668  674bbff3  storeli.w r27, -1612(r30)
00066c  e30d7fff  loadli.w r27,  -72(r30)
000670  e70bbff3  storeli.w r27, -1608(r30)
000674  e34d7fff  loadli.w r27,  -68(r30)
000678  e74bbff3  storeli.w r27, -1604(r30)
00067c  9f1d0000  addli r27, zero, 1
000680  fe810de0  vmmov mr3, r27
000684  e30ddff1  loadli.w r27,  -1816(r30)
000688  6aa36d36  vor.u.mh vr6{mr3}, r27, vr6
00068c  9f2d0000  addli r27, zero, 2
000690  fe810de0  vmmov mr3, r27
000694  e30deff1  loadli.w r27,  -1808(r30)
000698  6aa36d36  vor.u.mh vr6{mr3}, r27, vr6
00069c  9f4d0000  addli r27, zero, 4
0006a0  7e810de0  vmmov mr2, r27
0006a4  e30dfff1  loadli.w r27,  -1800(r30)
0006a8  6aa36d34  vor.u.mh vr6{mr2}, r27, vr6
0006ac  9f0d1000  addli r27, zero, 8
0006b0  7e810de0  vmmov mr2, r27
0006b4  e30d0ff2  loadli.w r27,  -1792(r30)
0006b8  6aa36d34  vor.u.mh vr6{mr2}, r27, vr6
0006bc  9f0d2000  addli r27, zero, 16
0006c0  7e800de0  vmmov mr0, r27
0006c4  e30d1ff2  loadli.w r27,  -1784(r30)
0006c8  6aa36d30  vor.u.mh vr6{mr0}, r27, vr6
0006cc  9f0d4000  addli r27, zero, 32
0006d0  7e800de0  vmmov mr0, r27
0006d4  e30d2ff2  loadli.w r27,  -1776(r30)
0006d8  6aa36d30  vor.u.mh vr6{mr0}, r27, vr6
0006dc  9f0d8000  addli r27, zero, 64
0006e0  7e800de0  vmmov mr0, r27
0006e4  e30d3ff2  loadli.w r27,  -1768(r30)
0006e8  6aa36d30  vor.u.mh vr6{mr0}, r27, vr6
0006ec  9f0d0001  addli r27, zero, 128
0006f0  7e800de0  vmmov mr0, r27
0006f4  e30d4ff2  loadli.w r27,  -1760(r30)
0006f8  6aa36d30  vor.u.mh vr6{mr0}, r27, vr6
0006fc  9f0d0002  addli r27, zero, 256
000700  7e800de0  vmmov mr0, r27
000704  e30d5ff2  loadli.w r27,  -1752(r30)
000708  6aa36d30  vor.u.mh vr6{mr0}, r27, vr6
00070c  9f0d0004  addli r27, zero, 512
000710  7e800de0  vmmov mr0, r27
000714  e30d6ff2  loadli.w r27,  -1744(r30)
000718  6aa36d30  vor.u.mh vr6{mr0}, r27, vr6
00071c  9f0d0008  addli r27, zero, 1024
000720  7e800de0  vmmov mr0, r27
000724  e30d7ff2  loadli.w r27,  -1736(r30)
000728  6aa36d30  vor.u.mh vr6{mr0}, r27, vr6
00072c  9f0d0010  addli r27, zero, 2048
000730  7e800de0  vmmov mr0, r27
000734  e30d8ff2  loadli.w r27,  -1728(r30)
000738  6aa36d30  vor.u.mh vr6{mr0}, r27, vr6
00073c  9f0d0020  addli r27, zero, 4096
000740  7e800de0  vmmov mr0, r27
000744  e30d9ff2  loadli.w r27,  -1720(r30)
000748  6aa36d30  vor.u.mh vr6{mr0}, r27, vr6
00074c  9f0d0040  addli r27, zero, 8192
000750  1f100000  addli zero, zero, 1
000754  7e800de0  vmmov mr0, r27
000758  e30daff2  loadli.w r27,  -1712(r30)
00075c  6aa36d30  vor.u.mh vr6{mr0}, r27, vr6
000760  ab4d0000  lui r27, 4
000764  7e800de0  vmmov mr0, r27
000768  e30dbff2  loadli.w r27,  -1704(r30)
00076c  6aa36d30  vor.u.mh vr6{mr0}, r27, vr6
000770  ab8d0000  lui r27, 8
000774  7e800de0  vmmov mr0, r27
000778  e30dcff2  loadli.w r27,  -1696(r30)
00077c  6aa36d30  vor.u.mh vr6{mr0}, r27, vr6
000780  e30ddff2  loadli.w r27,  -1688(r30)
000784  7e0000e0  vmmov mr0, zero
000788  17200000  xor zero, zero, zero
00078c  1f400000  addli zero, zero, 4
000790  eaa5bd30  vor.u.mh vr11{mr0}, r27, vr11
000794  e30deff2  loadli.w r27,  -1680(r30)
000798  7e0000e0  vmmov mr0, zero
00079c  17200000  xor zero, zero, zero
0007a0  1f002000  addli zero, zero, 16
0007a4  eaa5bd36  vor.u.mh vr11{mr3}, r27, vr11
0007a8  e30dfff2  loadli.w r27,  -1672(r30)
0007ac  eaa5bd30  vor.u.mh vr11{mr0}, r27, vr11
0007b0  e30d0ff3  loadli.w r27,  -1664(r30)
0007b4  7e0000e0  vmmov mr0, zero
0007b8  17200000  xor zero, zero, zero
0007bc  1f004000  addli zero, zero, 32
0007c0  eaa5bd34  vor.u.mh vr11{mr2}, r27, vr11
0007c4  e30d1ff3  loadli.w r27,  -1656(r30)
0007c8  eaa5bd30  vor.u.mh vr11{mr0}, r27, vr11
0007cc  e30d2ff3  loadli.w r27,  -1648(r30)
0007d0  7e0000e0  vmmov mr0, zero
0007d4  17200000  xor zero, zero, zero
0007d8  1f008000  addli zero, zero, 64
0007dc  eaa5bd30  vor.u.mh vr11{mr0}, r27, vr11
0007e0  e30d3ff3  loadli.w r27,  -1640(r30)
0007e4  7e0000e0  vmmov mr0, zero
0007e8  17200000  xor zero, zero, zero
0007ec  1f000001  addli zero, zero, 128
0007f0  eaa5bd30  vor.u.mh vr11{mr0}, r27, vr11
0007f4  e34d3ff3  loadli.w r27,  -1636(r30)
0007f8  7e0000e0  vmmov mr0, zero
0007fc  17200000  xor zero, zero, zero
000800  1f000002  addli zero, zero, 256
000804  eaa5bd30  vor.u.mh vr11{mr0}, r27, vr11
000808  e30d4ff3  loadli.w r27,  -1632(r30)
00080c  7e0000e0  vmmov mr0, zero
000810  17200000  xor zero, zero, zero
000814  1f000004  addli zero, zero, 512
000818  eaa5bd30  vor.u.mh vr11{mr0}, r27, vr11
00081c  e34d4ff3  loadli.w r27,  -1628(r30)
000820  7e0000e0  vmmov mr0, zero
000824  17200000  xor zero, zero, zero
000828  1f000008  addli zero, zero, 1024
00082c  eaa5bd30  vor.u.mh vr11{mr0}, r27, vr11
000830  e30d5ff3  loadli.w r27,  -1624(r30)
000834  7e0000e0  vmmov mr0, zero
000838  17200000  xor zero, zero, zero
00083c  1f000010  addli zero, zero, 2048
000840  eaa5bd30  vor.u.mh vr11{mr0}, r27, vr11
000844  e34d5ff3  loadli.w r27,  -1620(r30)
000848  7e0000e0  vmmov mr0, zero
00084c  17200000  xor zero, zero, zero
000850  12305002  vadd.s.mz vr0{mr1}, zero, vr5
000854  12355002  vadd.s.mz vr10{mr1}, zero, vr5
000858  92305002  vadd.s.mz vr1{mr1}, zero, vr5
00085c  12315002  vadd.s.mz vr2{mr1}, zero, vr5
000860  92315002  vadd.s.mz vr3{mr1}, zero, vr5
000864  12325002  vadd.s.mz vr4{mr1}, zero, vr5
000868  eaa5bd30  vor.u.mh vr11{mr0}, r27, vr11
00086c  9f0d0020  addli r27, zero, 4096
000870  7e800de0  vmmov mr0, r27
000874  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000878  9f000040  addli r1, zero, 8192
00087c  fe8100e0  vmmov mr3, r1
000880  ab400000  lui r1, 4
000884  ea25b136  vor.u.mh vr11{mr3}, r2, vr11
000888  7e8100e0  vmmov mr2, r1
00088c  ab800000  lui r1, 8
000890  1f012000  addli r2, zero, 16
000894  7e8000e0  vmmov mr0, r1
000898  9f100000  addli r1, zero, 1
00089c  eaa5b134  vor.u.mh vr11{mr2}, r3, vr11
0008a0  ea25b230  vor.u.mh vr11{mr0}, r4, vr11
0008a4  7e8000e0  vmmov mr0, r1
0008a8  9f200000  addli r1, zero, 2
0008ac  6aa00230  vor.u.mh vr0{mr0}, r5, vr0
0008b0  7e8000e0  vmmov mr0, r1
0008b4  9f400000  addli r1, zero, 4
0008b8  6a200330  vor.u.mh vr0{mr0}, r6, vr0
0008bc  7e8000e0  vmmov mr0, r1
0008c0  9f001000  addli r1, zero, 8
0008c4  6aa00330  vor.u.mh vr0{mr0}, r7, vr0
0008c8  7e8000e0  vmmov mr0, r1
0008cc  9f002000  addli r1, zero, 16
0008d0  6a200430  vor.u.mh vr0{mr0}, r8, vr0
0008d4  7e8000e0  vmmov mr0, r1
0008d8  9f004000  addli r1, zero, 32
0008dc  6aa00430  vor.u.mh vr0{mr0}, r9, vr0
0008e0  7e8000e0  vmmov mr0, r1
0008e4  9f008000  addli r1, zero, 64
0008e8  6a200530  vor.u.mh vr0{mr0}, r10, vr0
0008ec  7e8000e0  vmmov mr0, r1
0008f0  9f000001  addli r1, zero, 128
0008f4  6aa00530  vor.u.mh vr0{mr0}, r11, vr0
0008f8  7e8000e0  vmmov mr0, r1
0008fc  9f000002  addli r1, zero, 256
000900  6a200630  vor.u.mh vr0{mr0}, r12, vr0
000904  7e8000e0  vmmov mr0, r1
000908  9f000004  addli r1, zero, 512
00090c  6aa00630  vor.u.mh vr0{mr0}, r13, vr0
000910  7e8000e0  vmmov mr0, r1
000914  9f000008  addli r1, zero, 1024
000918  6a200730  vor.u.mh vr0{mr0}, r14, vr0
00091c  7e8000e0  vmmov mr0, r1
000920  9f000010  addli r1, zero, 2048
000924  6aa00730  vor.u.mh vr0{mr0}, r15, vr0
000928  7e8000e0  vmmov mr0, r1
00092c  9f000020  addli r1, zero, 4096
000930  6a200830  vor.u.mh vr0{mr0}, r16, vr0
000934  7e8000e0  vmmov mr0, r1
000938  ab800000  lui r1, 8
00093c  6aa00830  vor.u.mh vr0{mr0}, r17, vr0
000940  7e8000e0  vmmov mr0, r1
000944  9f100000  addli r1, zero, 1
000948  6a200936  vor.u.mh vr0{mr3}, r18, vr0
00094c  6aa00934  vor.u.mh vr0{mr2}, r19, vr0
000950  6a200a30  vor.u.mh vr0{mr0}, r20, vr0
000954  7e8000e0  vmmov mr0, r1
000958  9f200000  addli r1, zero, 2
00095c  6aa5aa30  vor.u.mh vr10{mr0}, r21, vr10
000960  7e8000e0  vmmov mr0, r1
000964  9f400000  addli r1, zero, 4
000968  8e940402  vmul.f.mz.rn vr9{mr1}, vr9, vr0
00096c  12305002  vadd.s.mz vr0{mr1}, zero, vr5
000970  6a25ac30  vor.u.mh vr10{mr0}, r24, vr10
000974  7e8000e0  vmmov mr0, r1
000978  9f001000  addli r1, zero, 8
00097c  6aa5ac30  vor.u.mh vr10{mr0}, r25, vr10
000980  7e8000e0  vmmov mr0, r1
000984  6a25ad30  vor.u.mh vr10{mr0}, r26, vr10
000988  e3004ff0  loadli.w r1,  -2016(r30)
00098c  7e0001e0  vmmov mr0, r2
000990  1f014000  addli r2, zero, 32
000994  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000998  e3404ff0  loadli.w r1,  -2012(r30)
00099c  7e0001e0  vmmov mr0, r2
0009a0  1f018000  addli r2, zero, 64
0009a4  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
0009a8  e3005ff0  loadli.w r1,  -2008(r30)
0009ac  7e0001e0  vmmov mr0, r2
0009b0  1f010001  addli r2, zero, 128
0009b4  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
0009b8  e3405ff0  loadli.w r1,  -2004(r30)
0009bc  7e0001e0  vmmov mr0, r2
0009c0  1f010002  addli r2, zero, 256
0009c4  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
0009c8  e3006ff0  loadli.w r1,  -2000(r30)
0009cc  7e0001e0  vmmov mr0, r2
0009d0  1f010004  addli r2, zero, 512
0009d4  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
0009d8  e3406ff0  loadli.w r1,  -1996(r30)
0009dc  7e0001e0  vmmov mr0, r2
0009e0  1f010008  addli r2, zero, 1024
0009e4  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
0009e8  e3007ff0  loadli.w r1,  -1992(r30)
0009ec  7e0001e0  vmmov mr0, r2
0009f0  1f010010  addli r2, zero, 2048
0009f4  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
0009f8  e3407ff0  loadli.w r1,  -1988(r30)
0009fc  7e0001e0  vmmov mr0, r2
000a00  1f010020  addli r2, zero, 4096
000a04  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000a08  e3008ff0  loadli.w r1,  -1984(r30)
000a0c  7e0001e0  vmmov mr0, r2
000a10  2b810000  lui r2, 8
000a14  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000a18  e3408ff0  loadli.w r1,  -1980(r30)
000a1c  7e0001e0  vmmov mr0, r2
000a20  1f110000  addli r2, zero, 1
000a24  6aa5a036  vor.u.mh vr10{mr3}, r1, vr10
000a28  e3009ff0  loadli.w r1,  -1976(r30)
000a2c  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
000a30  e3409ff0  loadli.w r1,  -1972(r30)
000a34  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000a38  e300aff0  loadli.w r1,  -1968(r30)
000a3c  7e0001e0  vmmov mr0, r2
000a40  1f210000  addli r2, zero, 2
000a44  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000a48  e340aff0  loadli.w r1,  -1964(r30)
000a4c  7e0001e0  vmmov mr0, r2
000a50  1f410000  addli r2, zero, 4
000a54  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000a58  e300bff0  loadli.w r1,  -1960(r30)
000a5c  7e0001e0  vmmov mr0, r2
000a60  1f011000  addli r2, zero, 8
000a64  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000a68  e340bff0  loadli.w r1,  -1956(r30)
000a6c  7e0001e0  vmmov mr0, r2
000a70  1f012000  addli r2, zero, 16
000a74  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000a78  e300cff0  loadli.w r1,  -1952(r30)
000a7c  7e0001e0  vmmov mr0, r2
000a80  1f014000  addli r2, zero, 32
000a84  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000a88  e340cff0  loadli.w r1,  -1948(r30)
000a8c  7e0001e0  vmmov mr0, r2
000a90  1f018000  addli r2, zero, 64
000a94  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000a98  e300dff0  loadli.w r1,  -1944(r30)
000a9c  7e0001e0  vmmov mr0, r2
000aa0  1f010001  addli r2, zero, 128
000aa4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000aa8  e340dff0  loadli.w r1,  -1940(r30)
000aac  7e0001e0  vmmov mr0, r2
000ab0  1f010002  addli r2, zero, 256
000ab4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000ab8  e300eff0  loadli.w r1,  -1936(r30)
000abc  7e0001e0  vmmov mr0, r2
000ac0  1f010004  addli r2, zero, 512
000ac4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000ac8  e340eff0  loadli.w r1,  -1932(r30)
000acc  7e0001e0  vmmov mr0, r2
000ad0  1f010008  addli r2, zero, 1024
000ad4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000ad8  e300fff0  loadli.w r1,  -1928(r30)
000adc  7e0001e0  vmmov mr0, r2
000ae0  1f010010  addli r2, zero, 2048
000ae4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000ae8  e340fff0  loadli.w r1,  -1924(r30)
000aec  7e0001e0  vmmov mr0, r2
000af0  1f010020  addli r2, zero, 4096
000af4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000af8  e3000ff1  loadli.w r1,  -1920(r30)
000afc  7e0001e0  vmmov mr0, r2
000b00  2b810000  lui r2, 8
000b04  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000b08  e3400ff1  loadli.w r1,  -1916(r30)
000b0c  7e0001e0  vmmov mr0, r2
000b10  1f110000  addli r2, zero, 1
000b14  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
000b18  e3001ff1  loadli.w r1,  -1912(r30)
000b1c  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000b20  e3401ff1  loadli.w r1,  -1908(r30)
000b24  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000b28  e3002ff1  loadli.w r1,  -1904(r30)
000b2c  7e0001e0  vmmov mr0, r2
000b30  1f210000  addli r2, zero, 2
000b34  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000b38  e3402ff1  loadli.w r1,  -1900(r30)
000b3c  7e0001e0  vmmov mr0, r2
000b40  1f410000  addli r2, zero, 4
000b44  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000b48  e3003ff1  loadli.w r1,  -1896(r30)
000b4c  7e0001e0  vmmov mr0, r2
000b50  1f011000  addli r2, zero, 8
000b54  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000b58  e3403ff1  loadli.w r1,  -1892(r30)
000b5c  7e0001e0  vmmov mr0, r2
000b60  1f012000  addli r2, zero, 16
000b64  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000b68  e3004ff1  loadli.w r1,  -1888(r30)
000b6c  7e0001e0  vmmov mr0, r2
000b70  1f014000  addli r2, zero, 32
000b74  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000b78  e3404ff1  loadli.w r1,  -1884(r30)
000b7c  7e0001e0  vmmov mr0, r2
000b80  1f018000  addli r2, zero, 64
000b84  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000b88  e3005ff1  loadli.w r1,  -1880(r30)
000b8c  7e0001e0  vmmov mr0, r2
000b90  1f010001  addli r2, zero, 128
000b94  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000b98  e3405ff1  loadli.w r1,  -1876(r30)
000b9c  7e0001e0  vmmov mr0, r2
000ba0  1f010002  addli r2, zero, 256
000ba4  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000ba8  e3006ff1  loadli.w r1,  -1872(r30)
000bac  7e0001e0  vmmov mr0, r2
000bb0  1f010004  addli r2, zero, 512
000bb4  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000bb8  e3406ff1  loadli.w r1,  -1868(r30)
000bbc  7e0001e0  vmmov mr0, r2
000bc0  1f010008  addli r2, zero, 1024
000bc4  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000bc8  e3007ff1  loadli.w r1,  -1864(r30)
000bcc  7e0001e0  vmmov mr0, r2
000bd0  1f010010  addli r2, zero, 2048
000bd4  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000bd8  e3407ff1  loadli.w r1,  -1860(r30)
000bdc  7e0001e0  vmmov mr0, r2
000be0  1f010020  addli r2, zero, 4096
000be4  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000be8  e3008ff1  loadli.w r1,  -1856(r30)
000bec  7e0001e0  vmmov mr0, r2
000bf0  2b810000  lui r2, 8
000bf4  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000bf8  e3408ff1  loadli.w r1,  -1852(r30)
000bfc  7e0001e0  vmmov mr0, r2
000c00  1f110000  addli r2, zero, 1
000c04  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
000c08  e3009ff1  loadli.w r1,  -1848(r30)
000c0c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000c10  fe0101c0  vmmov mr3, mr2
000c14  e3409ff1  loadli.w r1,  -1844(r30)
000c18  7e0101e0  vmmov mr2, r2
000c1c  1f210000  addli r2, zero, 2
000c20  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000c24  e300aff1  loadli.w r1,  -1840(r30)
000c28  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
000c2c  e340aff1  loadli.w r1,  -1836(r30)
000c30  7e0101e0  vmmov mr2, r2
000c34  1f410000  addli r2, zero, 4
000c38  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
000c3c  e300bff1  loadli.w r1,  -1832(r30)
000c40  7e0101e0  vmmov mr2, r2
000c44  1f011000  addli r2, zero, 8
000c48  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
000c4c  e340bff1  loadli.w r1,  -1828(r30)
000c50  7e0101e0  vmmov mr2, r2
000c54  1f012000  addli r2, zero, 16
000c58  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
000c5c  e300cff1  loadli.w r1,  -1824(r30)
000c60  7e0101e0  vmmov mr2, r2
000c64  1f014000  addli r2, zero, 32
000c68  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
000c6c  e340cff1  loadli.w r1,  -1820(r30)
000c70  7e0101e0  vmmov mr2, r2
000c74  1f018000  addli r2, zero, 64
000c78  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
000c7c  e340dff1  loadli.w r1,  -1812(r30)
000c80  7e0101e0  vmmov mr2, r2
000c84  1f010001  addli r2, zero, 128
000c88  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
000c8c  e340eff1  loadli.w r1,  -1804(r30)
000c90  7e0101e0  vmmov mr2, r2
000c94  1f010002  addli r2, zero, 256
000c98  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
000c9c  e340fff1  loadli.w r1,  -1796(r30)
000ca0  7e0101e0  vmmov mr2, r2
000ca4  1f010004  addli r2, zero, 512
000ca8  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
000cac  e3400ff2  loadli.w r1,  -1788(r30)
000cb0  7e0101e0  vmmov mr2, r2
000cb4  1f010008  addli r2, zero, 1024
000cb8  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
000cbc  e3401ff2  loadli.w r1,  -1780(r30)
000cc0  7e0101e0  vmmov mr2, r2
000cc4  1f010010  addli r2, zero, 2048
000cc8  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
000ccc  e3402ff2  loadli.w r1,  -1772(r30)
000cd0  7e0101e0  vmmov mr2, r2
000cd4  1f010020  addli r2, zero, 4096
000cd8  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
000cdc  e3403ff2  loadli.w r1,  -1764(r30)
000ce0  7e0101e0  vmmov mr2, r2
000ce4  1f010040  addli r2, zero, 8192
000ce8  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
000cec  e3404ff2  loadli.w r1,  -1756(r30)
000cf0  7e0101e0  vmmov mr2, r2
000cf4  1f110000  addli r2, zero, 1
000cf8  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
000cfc  e3405ff2  loadli.w r1,  -1748(r30)
000d00  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
000d04  e3406ff2  loadli.w r1,  -1740(r30)
000d08  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000d0c  e3407ff2  loadli.w r1,  -1732(r30)
000d10  7e0001e0  vmmov mr0, r2
000d14  1f210000  addli r2, zero, 2
000d18  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000d1c  e3408ff2  loadli.w r1,  -1724(r30)
000d20  7e0001e0  vmmov mr0, r2
000d24  1f410000  addli r2, zero, 4
000d28  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000d2c  e3409ff2  loadli.w r1,  -1716(r30)
000d30  7e0001e0  vmmov mr0, r2
000d34  1f011000  addli r2, zero, 8
000d38  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000d3c  e340aff2  loadli.w r1,  -1708(r30)
000d40  7e0001e0  vmmov mr0, r2
000d44  1f012000  addli r2, zero, 16
000d48  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000d4c  e340bff2  loadli.w r1,  -1700(r30)
000d50  7e0001e0  vmmov mr0, r2
000d54  1f014000  addli r2, zero, 32
000d58  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000d5c  e340cff2  loadli.w r1,  -1692(r30)
000d60  7e0001e0  vmmov mr0, r2
000d64  1f018000  addli r2, zero, 64
000d68  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000d6c  e340dff2  loadli.w r1,  -1684(r30)
000d70  7e0001e0  vmmov mr0, r2
000d74  1f010001  addli r2, zero, 128
000d78  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000d7c  e340eff2  loadli.w r1,  -1676(r30)
000d80  7e0001e0  vmmov mr0, r2
000d84  1f010002  addli r2, zero, 256
000d88  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000d8c  e340fff2  loadli.w r1,  -1668(r30)
000d90  7e0001e0  vmmov mr0, r2
000d94  1f010004  addli r2, zero, 512
000d98  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000d9c  e3400ff3  loadli.w r1,  -1660(r30)
000da0  7e0001e0  vmmov mr0, r2
000da4  1f010008  addli r2, zero, 1024
000da8  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000dac  e3401ff3  loadli.w r1,  -1652(r30)
000db0  7e0001e0  vmmov mr0, r2
000db4  1f010010  addli r2, zero, 2048
000db8  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000dbc  e3402ff3  loadli.w r1,  -1644(r30)
000dc0  7e0001e0  vmmov mr0, r2
000dc4  1f010020  addli r2, zero, 4096
000dc8  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000dcc  9f000ff4  addli r1, r30, -1536
000dd0  7e0001e0  vmmov mr0, r2
000dd4  2b810000  lui r2, 8
000dd8  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000ddc  9f008ff3  addli r1, r30, -1600
000de0  0e136402  vmul.f.mz.rn vr6{mr1}, vr8, vr6
000de4  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000de8  e3006ff3  loadli.w r1,  -1616(r30)
000dec  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000df0  abf00000  lui r1, 15
000df4  9ff0f01f  addli r1, r1, 4095
000df8  0e14b402  vmul.f.mz.rn vr8{mr1}, vr8, vr11
000dfc  92355002  vadd.s.mz vr11{mr1}, zero, vr5
000e00  7e8000e0  vmmov mr0, r1
000e04  e3406ff3  loadli.w r1,  -1612(r30)
000e08  6e909330  vor.f.mh vr0{mr0}, vr7, vr9
000e0c  92345002  vadd.s.mz vr9{mr1}, zero, vr5
000e10  ee956330  vor.f.mh vr11{mr0}, vr7, vr6
000e14  12335002  vadd.s.mz vr6{mr1}, zero, vr5
000e18  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
000e1c  9f000ff5  addli r1, r30, -1408
000e20  7e0101e0  vmmov mr2, r2
000e24  6e938330  vor.f.mh vr6{mr0}, vr7, vr8
000e28  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000e2c  9f008ff4  addli r1, r30, -1472
000e30  8e101402  vmul.f.mz.rn vr1{mr1}, vr8, vr1
000e34  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000e38  9f008ff5  addli r1, r30, -1344
000e3c  ee941330  vor.f.mh vr9{mr0}, vr7, vr1
000e40  92305002  vadd.s.mz vr1{mr1}, zero, vr5
000e44  0e112402  vmul.f.mz.rn vr2{mr1}, vr8, vr2
000e48  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000e4c  e3007ff3  loadli.w r1,  -1608(r30)
000e50  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
000e54  9f000ff6  addli r1, r30, -1280
000e58  ee902330  vor.f.mh vr1{mr0}, vr7, vr2
000e5c  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000e60  e3407ff3  loadli.w r1,  -1604(r30)
000e64  0e14a402  vmul.f.mz.rn vr8{mr1}, vr8, vr10
000e68  96101302  vadd.f.mz.rn vr1{mr1}, vr6, vr1
000e6c  12335002  vadd.s.mz vr6{mr1}, zero, vr5
000e70  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
000e74  9f008ff6  addli r1, r30, -1216
000e78  0e113102  vmul.f.mz.rn vr2{mr1}, vr2, vr3
000e7c  96919502  vadd.f.mz.rn vr3{mr1}, vr11, vr9
000e80  6e932330  vor.f.mh vr6{mr0}, vr7, vr2
000e84  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000e88  96901102  vadd.f.mz.rn vr1{mr1}, vr3, vr1
000e8c  92315002  vadd.s.mz vr3{mr1}, zero, vr5
000e90  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
000e94  0e114102  vmul.f.mz.rn vr2{mr1}, vr2, vr4
000e98  12325002  vadd.s.mz vr4{mr1}, zero, vr5
000e9c  16900002  vadd.f.mz.rn vr0{mr1}, vr1, vr0
000ea0  6e928330  vor.f.mh vr4{mr0}, vr7, vr8
000ea4  ee912330  vor.f.mh vr3{mr0}, vr7, vr2
000ea8  96103202  vadd.f.mz.rn vr1{mr1}, vr4, vr3
000eac  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
000eb0  fa100040  vextracti.f r1, 0(vr0)
000eb4  7a111040  vextracti.f r2, 1(vr0)
000eb8  8be02010  add.f.rn r1, r1, r2
000ebc  7a112040  vextracti.f r2, 2(vr0)
000ec0  8b601110  add.f.rn r1, r2, r1
000ec4  7a113040  vextracti.f r2, 3(vr0)
000ec8  8b601110  add.f.rn r1, r2, r1
000ecc  7a114040  vextracti.f r2, 4(vr0)
000ed0  8b601110  add.f.rn r1, r2, r1
000ed4  7a115040  vextracti.f r2, 5(vr0)
000ed8  8b601110  add.f.rn r1, r2, r1
000edc  7a116040  vextracti.f r2, 6(vr0)
000ee0  8b601110  add.f.rn r1, r2, r1
000ee4  7a117040  vextracti.f r2, 7(vr0)
000ee8  8b601110  add.f.rn r1, r2, r1
000eec  7a118040  vextracti.f r2, 8(vr0)
000ef0  8b601110  add.f.rn r1, r2, r1
000ef4  7a119040  vextracti.f r2, 9(vr0)
000ef8  8b601110  add.f.rn r1, r2, r1
000efc  7a11a040  vextracti.f r2, 10(vr0)
000f00  8b601110  add.f.rn r1, r2, r1
000f04  7a11b040  vextracti.f r2, 11(vr0)
000f08  8b601110  add.f.rn r1, r2, r1
000f0c  7a11c040  vextracti.f r2, 12(vr0)
000f10  8b601110  add.f.rn r1, r2, r1
000f14  7a11d040  vextracti.f r2, 13(vr0)
000f18  8b601110  add.f.rn r1, r2, r1
000f1c  7a11e040  vextracti.f r2, 14(vr0)
000f20  8b601110  add.f.rn r1, r2, r1
000f24  7a11f040  vextracti.f r2, 15(vr0)
000f28  8b601110  add.f.rn r1, r2, r1
000f2c  63013ff0  loadli.w r2,  -2024(r30)
000f30  73601100  stores.w r1, 0(r2)
000f34  00a00300  mfence { lm, sm, gm }
000f38  e3442ff0  loadli.w r9,  -2028(r30)
000f3c  80a10404  csr_set csr3, r9
000f40  00d00100  sync_group
000f44  e3002ff0  loadli.w r1,  -2032(r30)
000f48  3ba10000  bneq r1, zero, 72
000f4c  6302ffef  loadli.w r4,  -2056(r30)
000f50  ef400200  loads.w r1, 0(r4)
000f54  6f414200  loads.w r2, 4(r4)
000f58  ef418200  loads.w r3, 8(r4)
000f5c  8be02010  add.f.rn r1, r1, r2
000f60  6f41c200  loads.w r2, 12(r4)
000f64  8be03010  add.f.rn r1, r1, r3
000f68  ef410201  loads.w r3, 16(r4)
000f6c  8be02010  add.f.rn r1, r1, r2
000f70  6f414201  loads.w r2, 20(r4)
000f74  8be03010  add.f.rn r1, r1, r3
000f78  ef418201  loads.w r3, 24(r4)
000f7c  8be02010  add.f.rn r1, r1, r2
000f80  6f41c201  loads.w r2, 28(r4)
000f84  8be03010  add.f.rn r1, r1, r3
000f88  8be02010  add.f.rn r1, r1, r2
000f8c  73601200  stores.w r1, 0(r4)
000f90  00a00300  mfence { lm, sm, gm }
000f94  80a10404  csr_set csr3, r9
000f98  00d00100  sync_group
000f9c  e340ffef  loadli.w r1,  -2052(r30)
000fa0  63443ff0  loadli.w r8,  -2020(r30)
000fa4  63417ff7  loadli.w r2,  -1092(r30)
000fa8  9f051000  addli r11, zero, 8
000fac  9f73f003  addli r7, zero, 511
000fb0  37c900f8  beq r1, zero, -3504
000fb4  e300ffef  loadli.w r1,  -2056(r30)
000fb8  33110128  sext_int2long r[3:4], r2
000fbc  1f220000  addli r4, zero, 2
000fc0  eb520f01  load.d r[6:7], 16(r30)
000fc4  17314102  sll.d r[3:4], r[3:4], r4
000fc8  2b0200f0  lui r4, 983040
000fcc  efc00000  loads.w r1, 0(r1)
000fd0  0ba12210  add.ul r[3:4], r[6:7], r[3:4]
000fd4  670c1ffe  storeli.w r1, -64(r30)
000fd8  9f400000  addli r1, zero, 4
000fdc  00a00000  mfence { lm }
000fe0  97904000  or r1, r1, r4
000fe4  1f028fff  addli r4, r30, -64
000fe8  ff304100  s_lm2gm r1, r4, 0(r[3:4])
000fec  00a00000  mfence { lm }
000ff0  5b42feff  j -3568
000ff4  9f0e8fef  addli sp, r30, -2112
000ff8  9f8e8e10  addli sp, sp, 2112
000ffc  00a00300  mfence { lm, sm, gm }
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
001220  00100000  exit
001224  00100000  exit
001228  00100000  exit
00122c  00100000  exit
001230  00100000  exit
001234  00100000  exit
001238  00100000  exit
00123c  00100000  exit
001240  00100000  exit
