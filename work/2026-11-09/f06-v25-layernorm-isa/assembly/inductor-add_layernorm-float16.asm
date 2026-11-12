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
0000dc  9f8e8eec  addli sp, sp, -2496
0000e0  2b010000  lui r2, 0
0000e4  80300002  core_id r1
0000e8  1f8f0e13  addli r30, sp, 2432
0000ec  abf40000  lui r9, 15
0000f0  9bb12000  slli r3, r1, 2
0000f4  1f010100  addli r2, r2, 0
0000f8  63434f00  loadli.w r6,  36(r30)
0000fc  63024f00  loadli.w r4,  32(r30)
000100  e3025f00  loadli.w r5,  40(r30)
000104  8b932110  add.s r7, r3, r2
000108  0b124320  mul.s r4, r6, r4
00010c  1f842340  addli r8, r7, 8208
000110  0b125220  mul.s r4, r4, r5
000114  670b8ff0  storeli.w r8, -1872(r30)
000118  73600400  stores.w zero, 0(r8)
00011c  1b94f4ff  ori r8, r9, 4095
000120  80540002  load_param_i r9, 0
000124  00a00300  mfence { lm, sm, gm }
000128  80210404  csr_set csr3, r8
00012c  00d00100  sync_group
000130  674b7ff0  storeli.w r7, -1868(r30)
000134  73e00300  stores.w zero, 0(r7)
000138  00a00300  mfence { lm, sm, gm }
00013c  e7438ff6  storeli.w r8, -1220(r30)
000140  80210404  csr_set csr3, r8
000144  00d00100  sync_group
000148  e74a4ff0  storeli.w r4, -1876(r30)
00014c  cb3a921c  ble.s r4, r9, 15020
000150  1f021000  addli r4, zero, 8
000154  1f150000  addli r10, zero, 1
000158  eea49462  vxor.u.mz vr9{mr1}, vr9, vr9
00015c  eeb5b562  vxor.s.mz vr11{mr1}, vr11, vr11
000160  0b924030  div.s r4, r1, r4
000164  e70a4ff0  storeli.w r4, -1880(r30)
000168  1b323200  slli r4, r4, 3
00016c  0b934018  sub.s r6, r1, r4
000170  9b807000  andi r1, r1, 7
000174  6b528f00  load.d r[5:6], 8(r30)
000178  e7031ff6  storeli.w r1, -1224(r30)
00017c  9f100000  addli r1, zero, 1
000180  1b347300  slli r8, r6, 7
000184  00d30002  load_param_i r6, 1
000188  7e8100e0  vmmov mr2, r1
00018c  9f400000  addli r1, zero, 4
000190  670a6ff0  storeli.w r6, -1888(r30)
000194  1b131400  ori r6, r8, 1
000198  9b150401  ori r11, r8, 16
00019c  674a8ff0  storeli.w r8, -1884(r30)
0001a0  7e8000e0  vmmov mr0, r1
0001a4  ab10833a  lui r1, 239665
0001a8  e7496ff0  storeli.w r6, -1892(r30)
0001ac  1b132400  ori r6, r8, 2
0001b0  6706bff0  storeli.w r11, -1952(r30)
0001b4  9b90f026  ori r1, r1, 623
0001b8  e7096ff0  storeli.w r6, -1896(r30)
0001bc  1b133400  ori r6, r8, 3
0001c0  67041ff0  storeli.w r1, -1984(r30)
0001c4  9b105401  ori r1, r8, 21
0001c8  67496ff0  storeli.w r6, -1900(r30)
0001cc  1b134400  ori r6, r8, 4
0001d0  e7431ff0  storeli.w r1, -1988(r30)
0001d4  9b106401  ori r1, r8, 22
0001d8  67096ff0  storeli.w r6, -1904(r30)
0001dc  1b135400  ori r6, r8, 5
0001e0  e7031ff0  storeli.w r1, -1992(r30)
0001e4  9b107401  ori r1, r8, 23
0001e8  e7486ff0  storeli.w r6, -1908(r30)
0001ec  1b136400  ori r6, r8, 6
0001f0  67431ff0  storeli.w r1, -1996(r30)
0001f4  9b108401  ori r1, r8, 24
0001f8  e7086ff0  storeli.w r6, -1912(r30)
0001fc  1b137400  ori r6, r8, 7
000200  67031ff0  storeli.w r1, -2000(r30)
000204  9b109401  ori r1, r8, 25
000208  67486ff0  storeli.w r6, -1916(r30)
00020c  1b138400  ori r6, r8, 8
000210  e7421ff0  storeli.w r1, -2004(r30)
000214  9b10a401  ori r1, r8, 26
000218  67086ff0  storeli.w r6, -1920(r30)
00021c  1b139400  ori r6, r8, 9
000220  e7021ff0  storeli.w r1, -2008(r30)
000224  9b10b401  ori r1, r8, 27
000228  e7476ff0  storeli.w r6, -1924(r30)
00022c  1b13a400  ori r6, r8, 10
000230  67421ff0  storeli.w r1, -2012(r30)
000234  9b10c401  ori r1, r8, 28
000238  e7076ff0  storeli.w r6, -1928(r30)
00023c  1b13b400  ori r6, r8, 11
000240  67021ff0  storeli.w r1, -2016(r30)
000244  9b10d401  ori r1, r8, 29
000248  67476ff0  storeli.w r6, -1932(r30)
00024c  1b13c400  ori r6, r8, 12
000250  e7411ff0  storeli.w r1, -2020(r30)
000254  9b10e401  ori r1, r8, 30
000258  67076ff0  storeli.w r6, -1936(r30)
00025c  1b13d400  ori r6, r8, 13
000260  e7011ff0  storeli.w r1, -2024(r30)
000264  9b10f401  ori r1, r8, 31
000268  e7466ff0  storeli.w r6, -1940(r30)
00026c  1b13e400  ori r6, r8, 14
000270  67411ff0  storeli.w r1, -2028(r30)
000274  9b100402  ori r1, r8, 32
000278  e7066ff0  storeli.w r6, -1944(r30)
00027c  1b13f400  ori r6, r8, 15
000280  67011ff0  storeli.w r1, -2032(r30)
000284  9b101402  ori r1, r8, 33
000288  67466ff0  storeli.w r6, -1948(r30)
00028c  33130428  sext_int2long r[7:8], r8
000290  e7401ff0  storeli.w r1, -2036(r30)
000294  9b102402  ori r1, r8, 34
000298  1733a302  sll.d r[7:8], r[7:8], r10
00029c  1b151401  ori r10, r8, 17
0002a0  e7001ff0  storeli.w r1, -2040(r30)
0002a4  9b103402  ori r1, r8, 35
0002a8  0b226210  add.ul r[5:6], r[5:6], r[7:8]
0002ac  e745aff0  storeli.w r10, -1956(r30)
0002b0  1f050ffc  addli r10, r30, -512
0002b4  9f030002  addli r7, zero, 256
0002b8  67401ff0  storeli.w r1, -2044(r30)
0002bc  9b104402  ori r1, r8, 36
0002c0  73384f84  store.d r[5:6], -1968(r30)
0002c4  2bf2ffff  lui r4, 1048575
0002c8  9b122401  ori r5, r8, 18
0002cc  67001ff0  storeli.w r1, -2048(r30)
0002d0  9b105402  ori r1, r8, 37
0002d4  1b1202fe  ori r4, r4, 4064
0002d8  e7445ff0  storeli.w r5, -1972(r30)
0002dc  9b123401  ori r5, r8, 19
0002e0  e74f1fee  storeli.w r1, -2052(r30)
0002e4  9b106402  ori r1, r8, 38
0002e8  97814100  and r3, r3, r4
0002ec  1b124401  ori r4, r8, 20
0002f0  e7045ff0  storeli.w r5, -1976(r30)
0002f4  e70f1fee  storeli.w r1, -2056(r30)
0002f8  9b107402  ori r1, r8, 39
0002fc  0b912110  add.s r2, r3, r2
000300  67444ff0  storeli.w r4, -1980(r30)
000304  674f1fee  storeli.w r1, -2060(r30)
000308  9b108402  ori r1, r8, 40
00030c  e74b2ff0  storeli.w r2, -1860(r30)
000310  670f1fee  storeli.w r1, -2064(r30)
000314  9b109402  ori r1, r8, 41
000318  e74e1fee  storeli.w r1, -2068(r30)
00031c  9b10a402  ori r1, r8, 42
000320  e70e1fee  storeli.w r1, -2072(r30)
000324  9b10b402  ori r1, r8, 43
000328  674e1fee  storeli.w r1, -2076(r30)
00032c  9b10c402  ori r1, r8, 44
000330  670e1fee  storeli.w r1, -2080(r30)
000334  9b10d402  ori r1, r8, 45
000338  e74d1fee  storeli.w r1, -2084(r30)
00033c  9b10e402  ori r1, r8, 46
000340  e70d1fee  storeli.w r1, -2088(r30)
000344  9b10f402  ori r1, r8, 47
000348  674d1fee  storeli.w r1, -2092(r30)
00034c  9b100403  ori r1, r8, 48
000350  670d1fee  storeli.w r1, -2096(r30)
000354  9b101403  ori r1, r8, 49
000358  e74c1fee  storeli.w r1, -2100(r30)
00035c  9b102403  ori r1, r8, 50
000360  e70c1fee  storeli.w r1, -2104(r30)
000364  9b103403  ori r1, r8, 51
000368  674c1fee  storeli.w r1, -2108(r30)
00036c  9b104403  ori r1, r8, 52
000370  670c1fee  storeli.w r1, -2112(r30)
000374  9b105403  ori r1, r8, 53
000378  e74b1fee  storeli.w r1, -2116(r30)
00037c  9b106403  ori r1, r8, 54
000380  e70b1fee  storeli.w r1, -2120(r30)
000384  9b107403  ori r1, r8, 55
000388  674b1fee  storeli.w r1, -2124(r30)
00038c  9b108403  ori r1, r8, 56
000390  670b1fee  storeli.w r1, -2128(r30)
000394  9b109403  ori r1, r8, 57
000398  e74a1fee  storeli.w r1, -2132(r30)
00039c  9b10a403  ori r1, r8, 58
0003a0  e70a1fee  storeli.w r1, -2136(r30)
0003a4  9b10b403  ori r1, r8, 59
0003a8  674a1fee  storeli.w r1, -2140(r30)
0003ac  9b10c403  ori r1, r8, 60
0003b0  670a1fee  storeli.w r1, -2144(r30)
0003b4  9b10d403  ori r1, r8, 61
0003b8  e7491fee  storeli.w r1, -2148(r30)
0003bc  9b10e403  ori r1, r8, 62
0003c0  e7091fee  storeli.w r1, -2152(r30)
0003c4  9b10f403  ori r1, r8, 63
0003c8  67491fee  storeli.w r1, -2156(r30)
0003cc  9b100404  ori r1, r8, 64
0003d0  67091fee  storeli.w r1, -2160(r30)
0003d4  9b101404  ori r1, r8, 65
0003d8  e7481fee  storeli.w r1, -2164(r30)
0003dc  9b102404  ori r1, r8, 66
0003e0  e7081fee  storeli.w r1, -2168(r30)
0003e4  9b103404  ori r1, r8, 67
0003e8  67481fee  storeli.w r1, -2172(r30)
0003ec  9b104404  ori r1, r8, 68
0003f0  67081fee  storeli.w r1, -2176(r30)
0003f4  9b105404  ori r1, r8, 69
0003f8  e7471fee  storeli.w r1, -2180(r30)
0003fc  9b106404  ori r1, r8, 70
000400  e7071fee  storeli.w r1, -2184(r30)
000404  9b107404  ori r1, r8, 71
000408  67471fee  storeli.w r1, -2188(r30)
00040c  9b108404  ori r1, r8, 72
000410  67071fee  storeli.w r1, -2192(r30)
000414  9b109404  ori r1, r8, 73
000418  e7461fee  storeli.w r1, -2196(r30)
00041c  9b10a404  ori r1, r8, 74
000420  e7061fee  storeli.w r1, -2200(r30)
000424  9b10b404  ori r1, r8, 75
000428  67461fee  storeli.w r1, -2204(r30)
00042c  9b10c404  ori r1, r8, 76
000430  67061fee  storeli.w r1, -2208(r30)
000434  9b10d404  ori r1, r8, 77
000438  e7451fee  storeli.w r1, -2212(r30)
00043c  9b10e404  ori r1, r8, 78
000440  e7051fee  storeli.w r1, -2216(r30)
000444  9b10f404  ori r1, r8, 79
000448  67451fee  storeli.w r1, -2220(r30)
00044c  9b100405  ori r1, r8, 80
000450  67051fee  storeli.w r1, -2224(r30)
000454  9b101405  ori r1, r8, 81
000458  e7441fee  storeli.w r1, -2228(r30)
00045c  9b102405  ori r1, r8, 82
000460  e7041fee  storeli.w r1, -2232(r30)
000464  9b103405  ori r1, r8, 83
000468  67441fee  storeli.w r1, -2236(r30)
00046c  9b104405  ori r1, r8, 84
000470  67041fee  storeli.w r1, -2240(r30)
000474  9b105405  ori r1, r8, 85
000478  e7431fee  storeli.w r1, -2244(r30)
00047c  9b106405  ori r1, r8, 86
000480  e7031fee  storeli.w r1, -2248(r30)
000484  9b107405  ori r1, r8, 87
000488  67431fee  storeli.w r1, -2252(r30)
00048c  9b108405  ori r1, r8, 88
000490  67031fee  storeli.w r1, -2256(r30)
000494  9b109405  ori r1, r8, 89
000498  e7421fee  storeli.w r1, -2260(r30)
00049c  9b10a405  ori r1, r8, 90
0004a0  e7021fee  storeli.w r1, -2264(r30)
0004a4  9b10b405  ori r1, r8, 91
0004a8  67421fee  storeli.w r1, -2268(r30)
0004ac  9b10c405  ori r1, r8, 92
0004b0  67021fee  storeli.w r1, -2272(r30)
0004b4  9b10d405  ori r1, r8, 93
0004b8  e7411fee  storeli.w r1, -2276(r30)
0004bc  9b10e405  ori r1, r8, 94
0004c0  e7011fee  storeli.w r1, -2280(r30)
0004c4  9b10f405  ori r1, r8, 95
0004c8  67411fee  storeli.w r1, -2284(r30)
0004cc  9b100406  ori r1, r8, 96
0004d0  67011fee  storeli.w r1, -2288(r30)
0004d4  9b101406  ori r1, r8, 97
0004d8  e7401fee  storeli.w r1, -2292(r30)
0004dc  9b102406  ori r1, r8, 98
0004e0  e7001fee  storeli.w r1, -2296(r30)
0004e4  9b103406  ori r1, r8, 99
0004e8  67401fee  storeli.w r1, -2300(r30)
0004ec  9b104406  ori r1, r8, 100
0004f0  67001fee  storeli.w r1, -2304(r30)
0004f4  9b105406  ori r1, r8, 101
0004f8  e74f1fec  storeli.w r1, -2308(r30)
0004fc  9b106406  ori r1, r8, 102
000500  e70f1fec  storeli.w r1, -2312(r30)
000504  9b107406  ori r1, r8, 103
000508  674f1fec  storeli.w r1, -2316(r30)
00050c  9b108406  ori r1, r8, 104
000510  670f1fec  storeli.w r1, -2320(r30)
000514  9b109406  ori r1, r8, 105
000518  e74e1fec  storeli.w r1, -2324(r30)
00051c  9b10a406  ori r1, r8, 106
000520  e70e1fec  storeli.w r1, -2328(r30)
000524  9b10b406  ori r1, r8, 107
000528  674e1fec  storeli.w r1, -2332(r30)
00052c  9b10c406  ori r1, r8, 108
000530  670e1fec  storeli.w r1, -2336(r30)
000534  9b10d406  ori r1, r8, 109
000538  e74d1fec  storeli.w r1, -2340(r30)
00053c  9b10e406  ori r1, r8, 110
000540  e70d1fec  storeli.w r1, -2344(r30)
000544  9b10f406  ori r1, r8, 111
000548  674d1fec  storeli.w r1, -2348(r30)
00054c  9b100407  ori r1, r8, 112
000550  670d1fec  storeli.w r1, -2352(r30)
000554  9b101407  ori r1, r8, 113
000558  e74c1fec  storeli.w r1, -2356(r30)
00055c  9b102407  ori r1, r8, 114
000560  e70c1fec  storeli.w r1, -2360(r30)
000564  9b103407  ori r1, r8, 115
000568  674c1fec  storeli.w r1, -2364(r30)
00056c  9b104407  ori r1, r8, 116
000570  670c1fec  storeli.w r1, -2368(r30)
000574  9b105407  ori r1, r8, 117
000578  e74b1fec  storeli.w r1, -2372(r30)
00057c  9b106407  ori r1, r8, 118
000580  e70b1fec  storeli.w r1, -2376(r30)
000584  9b107407  ori r1, r8, 119
000588  674b1fec  storeli.w r1, -2380(r30)
00058c  9b108407  ori r1, r8, 120
000590  670b1fec  storeli.w r1, -2384(r30)
000594  9b109407  ori r1, r8, 121
000598  e74a1fec  storeli.w r1, -2388(r30)
00059c  9b10a407  ori r1, r8, 122
0005a0  e70a1fec  storeli.w r1, -2392(r30)
0005a4  9b10b407  ori r1, r8, 123
0005a8  674a1fec  storeli.w r1, -2396(r30)
0005ac  9b10c407  ori r1, r8, 124
0005b0  670a1fec  storeli.w r1, -2400(r30)
0005b4  9b10d407  ori r1, r8, 125
0005b8  e7491fec  storeli.w r1, -2404(r30)
0005bc  9b10e407  ori r1, r8, 126
0005c0  e7091fec  storeli.w r1, -2408(r30)
0005c4  9b10f407  ori r1, r8, 127
0005c8  1f040ffe  addli r8, r30, -256
0005cc  67491fec  storeli.w r1, -2412(r30)
0005d0  9f002140  addli r1, r2, 8208
0005d4  e70b1ff0  storeli.w r1, -1864(r30)
0005d8  9f000ff7  addli r1, r30, -1152
0005dc  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
0005e0  9f008ff6  addli r1, r30, -1216
0005e4  4690b002  vstore_mask16.mz vr11{mr1}, 0(r1)
0005e8  9f000000  addli r1, zero, 0
0005ec  0b111510  add.s r2, r10, r1
0005f0  9fc00000  addli r1, r1, 4
0005f4  73100100  store.h zero, 0(r2)
0005f8  73110100  store.h zero, 2(r2)
0005fc  00a00000  mfence { lm }
000600  bbbf70fe  bneq r1, r7, -20
000604  e3005f00  loadli.w r1,  40(r30)
000608  63414f00  loadli.w r2,  36(r30)
00060c  1f130000  addli r6, zero, 1
000610  67439ff6  storeli.w r9, -1228(r30)
000614  12339002  vadd.s.mz vr6{mr1}, zero, vr9
000618  8b901430  div.s r1, r9, r1
00061c  8b902030  div.s r1, r1, r2
000620  63015ff1  loadli.w r2,  -1880(r30)
000624  9bb03000  slli r1, r1, 3
000628  8b902010  add.s r1, r1, r2
00062c  2b0100f0  lui r2, 983040
000630  67041ffa  storeli.w r1, -704(r30)
000634  9bb2a000  slli r5, r1, 10
000638  e3404ff1  loadli.w r1,  -1884(r30)
00063c  17912300  or r2, r7, r2
000640  8b901210  add.s r1, r5, r1
000644  b3910028  sext_int2long r[4:5], r1
000648  ab0000f0  lui r1, 983040
00064c  97b56102  sll.d r[12:13], r[4:5], r6
000650  eb510f00  load.d r[4:5], 0(r30)
000654  97901300  or r1, r7, r1
000658  7334bfb2  store.d r[12:13], -1240(r30)
00065c  8ba1b110  add.ul r[4:5], r[4:5], r[12:13]
000660  7fa1a100  l_gm2lm r2, r10, 0(r[4:5])
000664  6b510f85  load.d r[3:4], -1968(r30)
000668  ff208100  l_gm2lm r1, r8, 0(r[3:4])
00066c  00a00000  mfence { lm }
000670  6b314ff0  load.hu r2, -252(r30)
000674  eb300ff0  load.hu r1, -256(r30)
000678  6b3e2ff0  load.hu r28, -254(r30)
00067c  42120fc2  vload_mask16.mz vr4{mr1}, 1536(r30)
000680  e7002ff8  storeli.w r2, -1016(r30)
000684  6b316ff0  load.hu r2, -250(r30)
000688  b3900020  hfloat2float.rn r1, r1
00068c  331e0e20  hfloat2float.rn r28, r28
000690  67012ff8  storeli.w r2, -1008(r30)
000694  6b318ff0  load.hu r2, -248(r30)
000698  e7012ff8  storeli.w r2, -1000(r30)
00069c  6b31aff0  load.hu r2, -246(r30)
0006a0  67022ff8  storeli.w r2, -992(r30)
0006a4  6b31cff0  load.hu r2, -244(r30)
0006a8  e7022ff8  storeli.w r2, -984(r30)
0006ac  6b31eff0  load.hu r2, -242(r30)
0006b0  67032ff8  storeli.w r2, -976(r30)
0006b4  6b310ff1  load.hu r2, -240(r30)
0006b8  e7032ff8  storeli.w r2, -968(r30)
0006bc  6b312ff1  load.hu r2, -238(r30)
0006c0  67042ff8  storeli.w r2, -960(r30)
0006c4  6b314ff1  load.hu r2, -236(r30)
0006c8  e7042ff8  storeli.w r2, -952(r30)
0006cc  6b316ff1  load.hu r2, -234(r30)
0006d0  e7442ff8  storeli.w r2, -948(r30)
0006d4  6b318ff1  load.hu r2, -232(r30)
0006d8  67052ff8  storeli.w r2, -944(r30)
0006dc  6b31aff1  load.hu r2, -230(r30)
0006e0  67452ff8  storeli.w r2, -940(r30)
0006e4  6b31cff1  load.hu r2, -228(r30)
0006e8  e7052ff8  storeli.w r2, -936(r30)
0006ec  6b31eff1  load.hu r2, -226(r30)
0006f0  67062ff8  storeli.w r2, -928(r30)
0006f4  6b310ff2  load.hu r2, -224(r30)
0006f8  e7452ff8  storeli.w r2, -932(r30)
0006fc  6b312ff2  load.hu r2, -222(r30)
000700  67462ff8  storeli.w r2, -924(r30)
000704  6b314ff2  load.hu r2, -220(r30)
000708  e7062ff8  storeli.w r2, -920(r30)
00070c  6b316ff2  load.hu r2, -218(r30)
000710  e7462ff8  storeli.w r2, -916(r30)
000714  6b318ff2  load.hu r2, -216(r30)
000718  67072ff8  storeli.w r2, -912(r30)
00071c  6b31aff2  load.hu r2, -214(r30)
000720  67472ff8  storeli.w r2, -908(r30)
000724  6b31cff2  load.hu r2, -212(r30)
000728  e7072ff8  storeli.w r2, -904(r30)
00072c  6b31eff2  load.hu r2, -210(r30)
000730  e7472ff8  storeli.w r2, -900(r30)
000734  6b310ff3  load.hu r2, -208(r30)
000738  67082ff8  storeli.w r2, -896(r30)
00073c  6b312ff3  load.hu r2, -206(r30)
000740  670c2ff8  storeli.w r2, -832(r30)
000744  42108fc2  vload_mask16.mz vr0{mr1}, 1600(r30)
000748  00a00000  mfence { lm }
00074c  46100fa2  vstore_mask16.mz vr0{mr1}, 1280(r30)
000750  42100fc3  vload_mask16.mz vr0{mr1}, 1664(r30)
000754  46180fa2  vstore_mask16.mz vr0{mr1}, 1408(r30)
000758  42108fc3  vload_mask16.mz vr0{mr1}, 1728(r30)
00075c  670d1ff2  storeli.w r1, -1584(r30)
000760  eb306ff6  load.hu r1, -154(r30)
000764  6b314ff3  load.hu r2, -204(r30)
000768  eb316ff3  load.hu r3, -202(r30)
00076c  6b328ff3  load.hu r4, -200(r30)
000770  6b33aff3  load.hu r6, -198(r30)
000774  eb33cff3  load.hu r7, -196(r30)
000778  6b34eff3  load.hu r8, -194(r30)
00077c  eb340ff4  load.hu r9, -192(r30)
000780  6b352ff4  load.hu r10, -190(r30)
000784  eb354ff4  load.hu r11, -188(r30)
000788  6b366ff4  load.hu r12, -186(r30)
00078c  eb368ff4  load.hu r13, -184(r30)
000790  6b37aff4  load.hu r14, -182(r30)
000794  eb37cff4  load.hu r15, -180(r30)
000798  6b38eff4  load.hu r16, -178(r30)
00079c  eb380ff5  load.hu r17, -176(r30)
0007a0  6b392ff5  load.hu r18, -174(r30)
0007a4  eb394ff5  load.hu r19, -172(r30)
0007a8  6b3a6ff5  load.hu r20, -170(r30)
0007ac  eb3d8ff5  load.hu r27, -168(r30)
0007b0  eb3aaff5  load.hu r21, -166(r30)
0007b4  6b3bcff5  load.hu r22, -164(r30)
0007b8  6b3ceff5  load.hu r24, -162(r30)
0007bc  eb3b0ff6  load.hu r23, -160(r30)
0007c0  eb3c2ff6  load.hu r25, -158(r30)
0007c4  6b3d4ff6  load.hu r26, -156(r30)
0007c8  e70c1ff2  storeli.w r1, -1592(r30)
0007cc  eb308ff6  load.hu r1, -152(r30)
0007d0  e74c1ff2  storeli.w r1, -1588(r30)
0007d4  eb30aff6  load.hu r1, -150(r30)
0007d8  461c0fa2  vstore_mask16.mz vr0{mr1}, 1472(r30)
0007dc  674d1ff2  storeli.w r1, -1580(r30)
0007e0  eb30cff6  load.hu r1, -148(r30)
0007e4  e70d1ff2  storeli.w r1, -1576(r30)
0007e8  eb30eff6  load.hu r1, -146(r30)
0007ec  e74d1ff2  storeli.w r1, -1572(r30)
0007f0  eb300ff7  load.hu r1, -144(r30)
0007f4  670e1ff2  storeli.w r1, -1568(r30)
0007f8  eb302ff7  load.hu r1, -142(r30)
0007fc  674e1ff2  storeli.w r1, -1564(r30)
000800  eb304ff7  load.hu r1, -140(r30)
000804  e70e1ff2  storeli.w r1, -1560(r30)
000808  eb306ff7  load.hu r1, -138(r30)
00080c  e74e1ff2  storeli.w r1, -1556(r30)
000810  eb308ff7  load.hu r1, -136(r30)
000814  670f1ff2  storeli.w r1, -1552(r30)
000818  eb30aff7  load.hu r1, -134(r30)
00081c  674f1ff2  storeli.w r1, -1548(r30)
000820  eb30cff7  load.hu r1, -132(r30)
000824  e70f1ff2  storeli.w r1, -1544(r30)
000828  eb30eff7  load.hu r1, -130(r30)
00082c  67001ff4  storeli.w r1, -1536(r30)
000830  eb300ff8  load.hu r1, -128(r30)
000834  e74f1ff2  storeli.w r1, -1540(r30)
000838  eb302ff8  load.hu r1, -126(r30)
00083c  67401ff4  storeli.w r1, -1532(r30)
000840  eb304ff8  load.hu r1, -124(r30)
000844  e7001ff4  storeli.w r1, -1528(r30)
000848  eb306ff8  load.hu r1, -122(r30)
00084c  e7401ff4  storeli.w r1, -1524(r30)
000850  eb308ff8  load.hu r1, -120(r30)
000854  67011ff4  storeli.w r1, -1520(r30)
000858  eb30aff8  load.hu r1, -118(r30)
00085c  67411ff4  storeli.w r1, -1516(r30)
000860  eb30cff8  load.hu r1, -116(r30)
000864  e7011ff4  storeli.w r1, -1512(r30)
000868  eb30eff8  load.hu r1, -114(r30)
00086c  e7411ff4  storeli.w r1, -1508(r30)
000870  eb300ff9  load.hu r1, -112(r30)
000874  67021ff4  storeli.w r1, -1504(r30)
000878  eb302ff9  load.hu r1, -110(r30)
00087c  67421ff4  storeli.w r1, -1500(r30)
000880  eb304ff9  load.hu r1, -108(r30)
000884  e7021ff4  storeli.w r1, -1496(r30)
000888  eb306ff9  load.hu r1, -106(r30)
00088c  e7421ff4  storeli.w r1, -1492(r30)
000890  eb308ff9  load.hu r1, -104(r30)
000894  67031ff4  storeli.w r1, -1488(r30)
000898  eb30aff9  load.hu r1, -102(r30)
00089c  67431ff4  storeli.w r1, -1484(r30)
0008a0  eb30cff9  load.hu r1, -100(r30)
0008a4  e7031ff4  storeli.w r1, -1480(r30)
0008a8  eb30eff9  load.hu r1, -98(r30)
0008ac  67041ff4  storeli.w r1, -1472(r30)
0008b0  eb300ffa  load.hu r1, -96(r30)
0008b4  e7431ff4  storeli.w r1, -1476(r30)
0008b8  eb302ffa  load.hu r1, -94(r30)
0008bc  67441ff4  storeli.w r1, -1468(r30)
0008c0  eb304ffa  load.hu r1, -92(r30)
0008c4  e7041ff4  storeli.w r1, -1464(r30)
0008c8  eb306ffa  load.hu r1, -90(r30)
0008cc  e7441ff4  storeli.w r1, -1460(r30)
0008d0  eb308ffa  load.hu r1, -88(r30)
0008d4  67051ff4  storeli.w r1, -1456(r30)
0008d8  eb30affa  load.hu r1, -86(r30)
0008dc  67451ff4  storeli.w r1, -1452(r30)
0008e0  eb30cffa  load.hu r1, -84(r30)
0008e4  e7051ff4  storeli.w r1, -1448(r30)
0008e8  eb30effa  load.hu r1, -82(r30)
0008ec  e7451ff4  storeli.w r1, -1444(r30)
0008f0  eb300ffb  load.hu r1, -80(r30)
0008f4  67061ff4  storeli.w r1, -1440(r30)
0008f8  eb302ffb  load.hu r1, -78(r30)
0008fc  67461ff4  storeli.w r1, -1436(r30)
000900  eb304ffb  load.hu r1, -76(r30)
000904  e7061ff4  storeli.w r1, -1432(r30)
000908  eb306ffb  load.hu r1, -74(r30)
00090c  e7461ff4  storeli.w r1, -1428(r30)
000910  eb308ffb  load.hu r1, -72(r30)
000914  67071ff4  storeli.w r1, -1424(r30)
000918  eb30affb  load.hu r1, -70(r30)
00091c  67471ff4  storeli.w r1, -1420(r30)
000920  eb30cffb  load.hu r1, -68(r30)
000924  e7071ff4  storeli.w r1, -1416(r30)
000928  eb30effb  load.hu r1, -66(r30)
00092c  67081ff4  storeli.w r1, -1408(r30)
000930  eb300ffc  load.hu r1, -64(r30)
000934  e7471ff4  storeli.w r1, -1412(r30)
000938  eb302ffc  load.hu r1, -62(r30)
00093c  67481ff4  storeli.w r1, -1404(r30)
000940  eb304ffc  load.hu r1, -60(r30)
000944  e7081ff4  storeli.w r1, -1400(r30)
000948  eb306ffc  load.hu r1, -58(r30)
00094c  e7481ff4  storeli.w r1, -1396(r30)
000950  eb308ffc  load.hu r1, -56(r30)
000954  67091ff4  storeli.w r1, -1392(r30)
000958  eb30affc  load.hu r1, -54(r30)
00095c  67491ff4  storeli.w r1, -1388(r30)
000960  eb30cffc  load.hu r1, -52(r30)
000964  e7091ff4  storeli.w r1, -1384(r30)
000968  eb30effc  load.hu r1, -50(r30)
00096c  e7491ff4  storeli.w r1, -1380(r30)
000970  eb300ffd  load.hu r1, -48(r30)
000974  670a1ff4  storeli.w r1, -1376(r30)
000978  eb302ffd  load.hu r1, -46(r30)
00097c  674a1ff4  storeli.w r1, -1372(r30)
000980  eb304ffd  load.hu r1, -44(r30)
000984  e70a1ff4  storeli.w r1, -1368(r30)
000988  eb306ffd  load.hu r1, -42(r30)
00098c  e74a1ff4  storeli.w r1, -1364(r30)
000990  eb308ffd  load.hu r1, -40(r30)
000994  670b1ff4  storeli.w r1, -1360(r30)
000998  eb30affd  load.hu r1, -38(r30)
00099c  674b1ff4  storeli.w r1, -1356(r30)
0009a0  eb30cffd  load.hu r1, -36(r30)
0009a4  e70b1ff4  storeli.w r1, -1352(r30)
0009a8  eb30effd  load.hu r1, -34(r30)
0009ac  670c1ff4  storeli.w r1, -1344(r30)
0009b0  eb300ffe  load.hu r1, -32(r30)
0009b4  e74b1ff4  storeli.w r1, -1348(r30)
0009b8  eb302ffe  load.hu r1, -30(r30)
0009bc  67421ff6  storeli.w r1, -1244(r30)
0009c0  eb304ffe  load.hu r1, -28(r30)
0009c4  670f1ff6  storeli.w r1, -1040(r30)
0009c8  eb306ffe  load.hu r1, -26(r30)
0009cc  674f1ff6  storeli.w r1, -1036(r30)
0009d0  eb308ffe  load.hu r1, -24(r30)
0009d4  e70f1ff6  storeli.w r1, -1032(r30)
0009d8  eb30affe  load.hu r1, -22(r30)
0009dc  e74f1ff6  storeli.w r1, -1028(r30)
0009e0  eb30cffe  load.hu r1, -20(r30)
0009e4  67001ff8  storeli.w r1, -1024(r30)
0009e8  eb30effe  load.hu r1, -18(r30)
0009ec  67401ff8  storeli.w r1, -1020(r30)
0009f0  eb300fff  load.hu r1, -16(r30)
0009f4  e7401ff8  storeli.w r1, -1012(r30)
0009f8  eb302fff  load.hu r1, -14(r30)
0009fc  67411ff8  storeli.w r1, -1004(r30)
000a00  eb304fff  load.hu r1, -12(r30)
000a04  e7411ff8  storeli.w r1, -996(r30)
000a08  eb306fff  load.hu r1, -10(r30)
000a0c  67421ff8  storeli.w r1, -988(r30)
000a10  eb308fff  load.hu r1, -8(r30)
000a14  e7421ff8  storeli.w r1, -980(r30)
000a18  eb30afff  load.hu r1, -6(r30)
000a1c  67431ff8  storeli.w r1, -972(r30)
000a20  eb30cfff  load.hu r1, -4(r30)
000a24  e7431ff8  storeli.w r1, -964(r30)
000a28  eb30efff  load.hu r1, -2(r30)
000a2c  67441ff8  storeli.w r1, -956(r30)
000a30  e300aff3  loadli.w r1,  -1584(r30)
000a34  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
000a38  9f200000  addli r1, zero, 2
000a3c  7e8100e0  vmmov mr2, r1
000a40  6a236e34  vor.u.mh vr6{mr2}, r28, vr6
000a44  e3001ff8  loadli.w r1,  -1016(r30)
000a48  339e0020  hfloat2float.rn r28, r1
000a4c  6a236e30  vor.u.mh vr6{mr0}, r28, vr6
000a50  e3002ff8  loadli.w r1,  -1008(r30)
000a54  339e0020  hfloat2float.rn r28, r1
000a58  9f001000  addli r1, zero, 8
000a5c  fe8100e0  vmmov mr3, r1
000a60  6a236e36  vor.u.mh vr6{mr3}, r28, vr6
000a64  e3003ff8  loadli.w r1,  -1000(r30)
000a68  fe0100c0  vmmov mr3, mr0
000a6c  339e0020  hfloat2float.rn r28, r1
000a70  9f002000  addli r1, zero, 16
000a74  7e8000e0  vmmov mr0, r1
000a78  6a236e30  vor.u.mh vr6{mr0}, r28, vr6
000a7c  e3004ff8  loadli.w r1,  -992(r30)
000a80  339e0020  hfloat2float.rn r28, r1
000a84  9f004000  addli r1, zero, 32
000a88  7e8100e0  vmmov mr2, r1
000a8c  6a236e34  vor.u.mh vr6{mr2}, r28, vr6
000a90  e3005ff8  loadli.w r1,  -984(r30)
000a94  339e0020  hfloat2float.rn r28, r1
000a98  9f008000  addli r1, zero, 64
000a9c  7e8100e0  vmmov mr2, r1
000aa0  6a236e34  vor.u.mh vr6{mr2}, r28, vr6
000aa4  e3006ff8  loadli.w r1,  -976(r30)
000aa8  339e0020  hfloat2float.rn r28, r1
000aac  9f000001  addli r1, zero, 128
000ab0  7e8100e0  vmmov mr2, r1
000ab4  6a236e34  vor.u.mh vr6{mr2}, r28, vr6
000ab8  e3007ff8  loadli.w r1,  -968(r30)
000abc  339e0020  hfloat2float.rn r28, r1
000ac0  9f000002  addli r1, zero, 256
000ac4  7e8100e0  vmmov mr2, r1
000ac8  6a236e34  vor.u.mh vr6{mr2}, r28, vr6
000acc  e3008ff8  loadli.w r1,  -960(r30)
000ad0  339e0020  hfloat2float.rn r28, r1
000ad4  9f000004  addli r1, zero, 512
000ad8  7e8100e0  vmmov mr2, r1
000adc  6a236e34  vor.u.mh vr6{mr2}, r28, vr6
000ae0  e3009ff8  loadli.w r1,  -952(r30)
000ae4  339e0020  hfloat2float.rn r28, r1
000ae8  9f000008  addli r1, zero, 1024
000aec  7e8100e0  vmmov mr2, r1
000af0  6a236e34  vor.u.mh vr6{mr2}, r28, vr6
000af4  e3409ff8  loadli.w r1,  -948(r30)
000af8  339e0020  hfloat2float.rn r28, r1
000afc  9f000010  addli r1, zero, 2048
000b00  7e8100e0  vmmov mr2, r1
000b04  6a236e34  vor.u.mh vr6{mr2}, r28, vr6
000b08  e300aff8  loadli.w r1,  -944(r30)
000b0c  339e0020  hfloat2float.rn r28, r1
000b10  9f000020  addli r1, zero, 4096
000b14  7e8100e0  vmmov mr2, r1
000b18  6a236e34  vor.u.mh vr6{mr2}, r28, vr6
000b1c  e340aff8  loadli.w r1,  -940(r30)
000b20  339e0020  hfloat2float.rn r28, r1
000b24  9f000040  addli r1, zero, 8192
000b28  2b800000  lui zero, 8
000b2c  7e8100e0  vmmov mr2, r1
000b30  6a236e34  vor.u.mh vr6{mr2}, r28, vr6
000b34  e300bff8  loadli.w r1,  -936(r30)
000b38  339e0020  hfloat2float.rn r28, r1
000b3c  ab400000  lui r1, 4
000b40  7e8100e0  vmmov mr2, r1
000b44  6a236e34  vor.u.mh vr6{mr2}, r28, vr6
000b48  e300cff8  loadli.w r1,  -928(r30)
000b4c  7e0100e0  vmmov mr2, zero
000b50  17200000  xor zero, zero, zero
000b54  92339002  vadd.s.mz vr7{mr1}, zero, vr9
000b58  12349002  vadd.s.mz vr8{mr1}, zero, vr9
000b5c  92309002  vadd.s.mz vr1{mr1}, zero, vr9
000b60  339e0020  hfloat2float.rn r28, r1
000b64  e340bff8  loadli.w r1,  -932(r30)
000b68  6a236e34  vor.u.mh vr6{mr2}, r28, vr6
000b6c  1f1e0000  addli r28, zero, 1
000b70  b3900020  hfloat2float.rn r1, r1
000b74  12351002  vadd.s.mz vr10{mr1}, zero, vr1
000b78  92351002  vadd.s.mz vr11{mr1}, zero, vr1
000b7c  12301002  vadd.s.mz vr0{mr1}, zero, vr1
000b80  7e000ee0  vmmov mr0, r28
000b84  1f2e0000  addli r28, zero, 2
000b88  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000b8c  e340cff8  loadli.w r1,  -924(r30)
000b90  7e010ee0  vmmov mr2, r28
000b94  1f0e1000  addli r28, zero, 8
000b98  b3900020  hfloat2float.rn r1, r1
000b9c  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
000ba0  e300dff8  loadli.w r1,  -920(r30)
000ba4  7e010ee0  vmmov mr2, r28
000ba8  1f0e2000  addli r28, zero, 16
000bac  b3900020  hfloat2float.rn r1, r1
000bb0  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
000bb4  e340dff8  loadli.w r1,  -916(r30)
000bb8  b3900020  hfloat2float.rn r1, r1
000bbc  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
000bc0  e300eff8  loadli.w r1,  -912(r30)
000bc4  7e010ee0  vmmov mr2, r28
000bc8  1f0e4000  addli r28, zero, 32
000bcc  b3900020  hfloat2float.rn r1, r1
000bd0  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
000bd4  e340eff8  loadli.w r1,  -908(r30)
000bd8  7e010ee0  vmmov mr2, r28
000bdc  1f0e8000  addli r28, zero, 64
000be0  b3900020  hfloat2float.rn r1, r1
000be4  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
000be8  e300fff8  loadli.w r1,  -904(r30)
000bec  7e010ee0  vmmov mr2, r28
000bf0  1f0e0001  addli r28, zero, 128
000bf4  b3900020  hfloat2float.rn r1, r1
000bf8  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
000bfc  e340fff8  loadli.w r1,  -900(r30)
000c00  7e010ee0  vmmov mr2, r28
000c04  1f0e0002  addli r28, zero, 256
000c08  b3900020  hfloat2float.rn r1, r1
000c0c  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
000c10  e3000ff9  loadli.w r1,  -896(r30)
000c14  7e010ee0  vmmov mr2, r28
000c18  1f0e0004  addli r28, zero, 512
000c1c  b3900020  hfloat2float.rn r1, r1
000c20  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
000c24  e3008ff9  loadli.w r1,  -832(r30)
000c28  7e010ee0  vmmov mr2, r28
000c2c  b3900020  hfloat2float.rn r1, r1
000c30  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
000c34  b3100120  hfloat2float.rn r1, r2
000c38  1f010008  addli r2, zero, 1024
000c3c  7e0101e0  vmmov mr2, r2
000c40  1f010010  addli r2, zero, 2048
000c44  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
000c48  b3900120  hfloat2float.rn r1, r3
000c4c  7e0101e0  vmmov mr2, r2
000c50  1f010020  addli r2, zero, 4096
000c54  ab810000  lui r3, 8
000c58  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
000c5c  b3100220  hfloat2float.rn r1, r4
000c60  7e0101e0  vmmov mr2, r2
000c64  1f010040  addli r2, zero, 8192
000c68  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
000c6c  b3100320  hfloat2float.rn r1, r6
000c70  7e0101e0  vmmov mr2, r2
000c74  2b410000  lui r2, 4
000c78  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
000c7c  b3900320  hfloat2float.rn r1, r7
000c80  7e0101e0  vmmov mr2, r2
000c84  33910420  hfloat2float.rn r2, r9
000c88  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
000c8c  b3100420  hfloat2float.rn r1, r8
000c90  7e8101e0  vmmov mr2, r3
000c94  ab810000  lui r3, 8
000c98  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
000c9c  6a248130  vor.u.mh vr8{mr0}, r2, vr8
000ca0  1f210000  addli r2, zero, 2
000ca4  b3100520  hfloat2float.rn r1, r10
000ca8  7e0001e0  vmmov mr0, r2
000cac  1f011000  addli r2, zero, 8
000cb0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000cb4  b3900520  hfloat2float.rn r1, r11
000cb8  7e0101e0  vmmov mr2, r2
000cbc  1f012000  addli r2, zero, 16
000cc0  7e0001e0  vmmov mr0, r2
000cc4  1f014000  addli r2, zero, 32
000cc8  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
000ccc  b3100620  hfloat2float.rn r1, r12
000cd0  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
000cd4  b3900620  hfloat2float.rn r1, r13
000cd8  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000cdc  b3100720  hfloat2float.rn r1, r14
000ce0  7e0001e0  vmmov mr0, r2
000ce4  1f018000  addli r2, zero, 64
000ce8  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000cec  b3900720  hfloat2float.rn r1, r15
000cf0  7e0001e0  vmmov mr0, r2
000cf4  1f010001  addli r2, zero, 128
000cf8  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000cfc  b3100820  hfloat2float.rn r1, r16
000d00  7e0001e0  vmmov mr0, r2
000d04  1f010002  addli r2, zero, 256
000d08  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000d0c  b3900820  hfloat2float.rn r1, r17
000d10  7e0001e0  vmmov mr0, r2
000d14  1f010004  addli r2, zero, 512
000d18  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000d1c  b3100920  hfloat2float.rn r1, r18
000d20  7e0001e0  vmmov mr0, r2
000d24  1f010008  addli r2, zero, 1024
000d28  fe0101e0  vmmov mr3, r2
000d2c  1f010010  addli r2, zero, 2048
000d30  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000d34  b3900920  hfloat2float.rn r1, r19
000d38  7e0001e0  vmmov mr0, r2
000d3c  1f010020  addli r2, zero, 4096
000d40  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
000d44  b3100a20  hfloat2float.rn r1, r20
000d48  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000d4c  b3900d20  hfloat2float.rn r1, r27
000d50  7e0001e0  vmmov mr0, r2
000d54  1f010040  addli r2, zero, 8192
000d58  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000d5c  b3900a20  hfloat2float.rn r1, r21
000d60  7e0001e0  vmmov mr0, r2
000d64  2b410000  lui r2, 4
000d68  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000d6c  b3100b20  hfloat2float.rn r1, r22
000d70  7e0001e0  vmmov mr0, r2
000d74  33910b20  hfloat2float.rn r2, r23
000d78  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000d7c  b3100c20  hfloat2float.rn r1, r24
000d80  7e8001e0  vmmov mr0, r3
000d84  ab810000  lui r3, 8
000d88  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000d8c  9f100000  addli r1, zero, 1
000d90  7e8100e0  vmmov mr2, r1
000d94  b3900c20  hfloat2float.rn r1, r25
000d98  ea249134  vor.u.mh vr9{mr2}, r2, vr9
000d9c  1f210000  addli r2, zero, 2
000da0  7e0001e0  vmmov mr0, r2
000da4  1f410000  addli r2, zero, 4
000da8  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000dac  b3100d20  hfloat2float.rn r1, r26
000db0  fe0101e0  vmmov mr3, r2
000db4  1f011000  addli r2, zero, 8
000db8  7e0001e0  vmmov mr0, r2
000dbc  1f012000  addli r2, zero, 16
000dc0  eaa49036  vor.u.mh vr9{mr3}, r1, vr9
000dc4  e3009ff3  loadli.w r1,  -1592(r30)
000dc8  b3900020  hfloat2float.rn r1, r1
000dcc  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000dd0  e3409ff3  loadli.w r1,  -1588(r30)
000dd4  7e0001e0  vmmov mr0, r2
000dd8  1f014000  addli r2, zero, 32
000ddc  b3900020  hfloat2float.rn r1, r1
000de0  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000de4  e340aff3  loadli.w r1,  -1580(r30)
000de8  7e0001e0  vmmov mr0, r2
000dec  1f018000  addli r2, zero, 64
000df0  b3900020  hfloat2float.rn r1, r1
000df4  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000df8  e300bff3  loadli.w r1,  -1576(r30)
000dfc  7e0001e0  vmmov mr0, r2
000e00  1f010001  addli r2, zero, 128
000e04  b3900020  hfloat2float.rn r1, r1
000e08  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000e0c  e340bff3  loadli.w r1,  -1572(r30)
000e10  7e0001e0  vmmov mr0, r2
000e14  1f010002  addli r2, zero, 256
000e18  b3900020  hfloat2float.rn r1, r1
000e1c  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000e20  e300cff3  loadli.w r1,  -1568(r30)
000e24  7e0001e0  vmmov mr0, r2
000e28  1f010004  addli r2, zero, 512
000e2c  b3900020  hfloat2float.rn r1, r1
000e30  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000e34  e340cff3  loadli.w r1,  -1564(r30)
000e38  7e0001e0  vmmov mr0, r2
000e3c  1f010008  addli r2, zero, 1024
000e40  b3900020  hfloat2float.rn r1, r1
000e44  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000e48  e300dff3  loadli.w r1,  -1560(r30)
000e4c  7e0001e0  vmmov mr0, r2
000e50  1f010010  addli r2, zero, 2048
000e54  b3900020  hfloat2float.rn r1, r1
000e58  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000e5c  e340dff3  loadli.w r1,  -1556(r30)
000e60  7e0001e0  vmmov mr0, r2
000e64  1f010020  addli r2, zero, 4096
000e68  b3900020  hfloat2float.rn r1, r1
000e6c  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000e70  e300eff3  loadli.w r1,  -1552(r30)
000e74  7e0001e0  vmmov mr0, r2
000e78  1f010040  addli r2, zero, 8192
000e7c  b3900020  hfloat2float.rn r1, r1
000e80  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000e84  e340eff3  loadli.w r1,  -1548(r30)
000e88  7e0001e0  vmmov mr0, r2
000e8c  2b410000  lui r2, 4
000e90  b3900020  hfloat2float.rn r1, r1
000e94  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000e98  e300fff3  loadli.w r1,  -1544(r30)
000e9c  7e0001e0  vmmov mr0, r2
000ea0  b3900020  hfloat2float.rn r1, r1
000ea4  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000ea8  e3000ff4  loadli.w r1,  -1536(r30)
000eac  6341fff3  loadli.w r2,  -1540(r30)
000eb0  7e8001e0  vmmov mr0, r3
000eb4  ab810000  lui r3, 8
000eb8  b3900020  hfloat2float.rn r1, r1
000ebc  33110120  hfloat2float.rn r2, r2
000ec0  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000ec4  6a25a134  vor.u.mh vr10{mr2}, r2, vr10
000ec8  e3400ff4  loadli.w r1,  -1532(r30)
000ecc  1f210000  addli r2, zero, 2
000ed0  7e0001e0  vmmov mr0, r2
000ed4  1f011000  addli r2, zero, 8
000ed8  b3900020  hfloat2float.rn r1, r1
000edc  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000ee0  e3001ff4  loadli.w r1,  -1528(r30)
000ee4  7e0001e0  vmmov mr0, r2
000ee8  1f012000  addli r2, zero, 16
000eec  b3900020  hfloat2float.rn r1, r1
000ef0  6aa5a036  vor.u.mh vr10{mr3}, r1, vr10
000ef4  e3401ff4  loadli.w r1,  -1524(r30)
000ef8  fe0101e0  vmmov mr3, r2
000efc  1f014000  addli r2, zero, 32
000f00  b3900020  hfloat2float.rn r1, r1
000f04  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000f08  e3002ff4  loadli.w r1,  -1520(r30)
000f0c  7e0001e0  vmmov mr0, r2
000f10  1f018000  addli r2, zero, 64
000f14  b3900020  hfloat2float.rn r1, r1
000f18  6aa5a036  vor.u.mh vr10{mr3}, r1, vr10
000f1c  e3402ff4  loadli.w r1,  -1516(r30)
000f20  b3900020  hfloat2float.rn r1, r1
000f24  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000f28  e3003ff4  loadli.w r1,  -1512(r30)
000f2c  7e0001e0  vmmov mr0, r2
000f30  1f010001  addli r2, zero, 128
000f34  b3900020  hfloat2float.rn r1, r1
000f38  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000f3c  e3403ff4  loadli.w r1,  -1508(r30)
000f40  7e0001e0  vmmov mr0, r2
000f44  1f010002  addli r2, zero, 256
000f48  b3900020  hfloat2float.rn r1, r1
000f4c  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000f50  e3004ff4  loadli.w r1,  -1504(r30)
000f54  7e0001e0  vmmov mr0, r2
000f58  1f010004  addli r2, zero, 512
000f5c  b3900020  hfloat2float.rn r1, r1
000f60  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000f64  e3404ff4  loadli.w r1,  -1500(r30)
000f68  7e0001e0  vmmov mr0, r2
000f6c  1f010008  addli r2, zero, 1024
000f70  b3900020  hfloat2float.rn r1, r1
000f74  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000f78  e3005ff4  loadli.w r1,  -1496(r30)
000f7c  7e0001e0  vmmov mr0, r2
000f80  1f010010  addli r2, zero, 2048
000f84  b3900020  hfloat2float.rn r1, r1
000f88  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000f8c  e3405ff4  loadli.w r1,  -1492(r30)
000f90  7e0001e0  vmmov mr0, r2
000f94  1f010020  addli r2, zero, 4096
000f98  b3900020  hfloat2float.rn r1, r1
000f9c  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000fa0  e3006ff4  loadli.w r1,  -1488(r30)
000fa4  7e0001e0  vmmov mr0, r2
000fa8  1f010040  addli r2, zero, 8192
000fac  b3900020  hfloat2float.rn r1, r1
000fb0  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000fb4  e3406ff4  loadli.w r1,  -1484(r30)
000fb8  7e0001e0  vmmov mr0, r2
000fbc  2b410000  lui r2, 4
000fc0  b3900020  hfloat2float.rn r1, r1
000fc4  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000fc8  e3007ff4  loadli.w r1,  -1480(r30)
000fcc  7e0001e0  vmmov mr0, r2
000fd0  b3900020  hfloat2float.rn r1, r1
000fd4  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000fd8  e3008ff4  loadli.w r1,  -1472(r30)
000fdc  63417ff4  loadli.w r2,  -1476(r30)
000fe0  7e8001e0  vmmov mr0, r3
000fe4  ab810000  lui r3, 8
000fe8  b3900020  hfloat2float.rn r1, r1
000fec  33110120  hfloat2float.rn r2, r2
000ff0  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000ff4  ea25b134  vor.u.mh vr11{mr2}, r2, vr11
000ff8  e3408ff4  loadli.w r1,  -1468(r30)
000ffc  1f210000  addli r2, zero, 2
001000  7e0001e0  vmmov mr0, r2
001004  1f410000  addli r2, zero, 4
001008  b3900020  hfloat2float.rn r1, r1
00100c  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
001010  e3009ff4  loadli.w r1,  -1464(r30)
001014  7e0001e0  vmmov mr0, r2
001018  1f011000  addli r2, zero, 8
00101c  fe0101e0  vmmov mr3, r2
001020  1f012000  addli r2, zero, 16
001024  b3900020  hfloat2float.rn r1, r1
001028  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
00102c  e3409ff4  loadli.w r1,  -1460(r30)
001030  b3900020  hfloat2float.rn r1, r1
001034  eaa5b036  vor.u.mh vr11{mr3}, r1, vr11
001038  e300aff4  loadli.w r1,  -1456(r30)
00103c  fe0101e0  vmmov mr3, r2
001040  1f014000  addli r2, zero, 32
001044  b3900020  hfloat2float.rn r1, r1
001048  eaa5b036  vor.u.mh vr11{mr3}, r1, vr11
00104c  e340aff4  loadli.w r1,  -1452(r30)
001050  fe0101e0  vmmov mr3, r2
001054  1f018000  addli r2, zero, 64
001058  b3900020  hfloat2float.rn r1, r1
00105c  eaa5b036  vor.u.mh vr11{mr3}, r1, vr11
001060  e300bff4  loadli.w r1,  -1448(r30)
001064  fe0101e0  vmmov mr3, r2
001068  1f010001  addli r2, zero, 128
00106c  b3900020  hfloat2float.rn r1, r1
001070  eaa5b036  vor.u.mh vr11{mr3}, r1, vr11
001074  e340bff4  loadli.w r1,  -1444(r30)
001078  fe0101e0  vmmov mr3, r2
00107c  1f010002  addli r2, zero, 256
001080  b3900020  hfloat2float.rn r1, r1
001084  eaa5b036  vor.u.mh vr11{mr3}, r1, vr11
001088  e300cff4  loadli.w r1,  -1440(r30)
00108c  fe0101e0  vmmov mr3, r2
001090  1f010004  addli r2, zero, 512
001094  b3900020  hfloat2float.rn r1, r1
001098  eaa5b036  vor.u.mh vr11{mr3}, r1, vr11
00109c  e340cff4  loadli.w r1,  -1436(r30)
0010a0  fe0101e0  vmmov mr3, r2
0010a4  1f010008  addli r2, zero, 1024
0010a8  b3900020  hfloat2float.rn r1, r1
0010ac  eaa5b036  vor.u.mh vr11{mr3}, r1, vr11
0010b0  e300dff4  loadli.w r1,  -1432(r30)
0010b4  fe0101e0  vmmov mr3, r2
0010b8  1f010010  addli r2, zero, 2048
0010bc  b3900020  hfloat2float.rn r1, r1
0010c0  eaa5b036  vor.u.mh vr11{mr3}, r1, vr11
0010c4  e340dff4  loadli.w r1,  -1428(r30)
0010c8  fe0101e0  vmmov mr3, r2
0010cc  1f010020  addli r2, zero, 4096
0010d0  b3900020  hfloat2float.rn r1, r1
0010d4  eaa5b036  vor.u.mh vr11{mr3}, r1, vr11
0010d8  e300eff4  loadli.w r1,  -1424(r30)
0010dc  fe0101e0  vmmov mr3, r2
0010e0  1f010040  addli r2, zero, 8192
0010e4  b3900020  hfloat2float.rn r1, r1
0010e8  eaa5b036  vor.u.mh vr11{mr3}, r1, vr11
0010ec  e340eff4  loadli.w r1,  -1420(r30)
0010f0  fe0101e0  vmmov mr3, r2
0010f4  2b410000  lui r2, 4
0010f8  b3900020  hfloat2float.rn r1, r1
0010fc  eaa5b036  vor.u.mh vr11{mr3}, r1, vr11
001100  e300fff4  loadli.w r1,  -1416(r30)
001104  fe0101e0  vmmov mr3, r2
001108  b3900020  hfloat2float.rn r1, r1
00110c  eaa5b036  vor.u.mh vr11{mr3}, r1, vr11
001110  e3000ff5  loadli.w r1,  -1408(r30)
001114  6341fff4  loadli.w r2,  -1412(r30)
001118  fe8101e0  vmmov mr3, r3
00111c  ab810000  lui r3, 8
001120  b3900020  hfloat2float.rn r1, r1
001124  33110120  hfloat2float.rn r2, r2
001128  eaa5b036  vor.u.mh vr11{mr3}, r1, vr11
00112c  6a200134  vor.u.mh vr0{mr2}, r2, vr0
001130  e3400ff5  loadli.w r1,  -1404(r30)
001134  1f210000  addli r2, zero, 2
001138  fe0101e0  vmmov mr3, r2
00113c  1f011000  addli r2, zero, 8
001140  b3900020  hfloat2float.rn r1, r1
001144  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
001148  e3001ff5  loadli.w r1,  -1400(r30)
00114c  fe0101e0  vmmov mr3, r2
001150  1f012000  addli r2, zero, 16
001154  b3900020  hfloat2float.rn r1, r1
001158  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
00115c  e3401ff5  loadli.w r1,  -1396(r30)
001160  b3900020  hfloat2float.rn r1, r1
001164  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
001168  e3002ff5  loadli.w r1,  -1392(r30)
00116c  fe0101e0  vmmov mr3, r2
001170  1f014000  addli r2, zero, 32
001174  b3900020  hfloat2float.rn r1, r1
001178  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
00117c  e3402ff5  loadli.w r1,  -1388(r30)
001180  fe0101e0  vmmov mr3, r2
001184  1f018000  addli r2, zero, 64
001188  b3900020  hfloat2float.rn r1, r1
00118c  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
001190  e3003ff5  loadli.w r1,  -1384(r30)
001194  fe0101e0  vmmov mr3, r2
001198  1f010001  addli r2, zero, 128
00119c  b3900020  hfloat2float.rn r1, r1
0011a0  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
0011a4  e3403ff5  loadli.w r1,  -1380(r30)
0011a8  fe0101e0  vmmov mr3, r2
0011ac  1f010002  addli r2, zero, 256
0011b0  b3900020  hfloat2float.rn r1, r1
0011b4  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
0011b8  e3004ff5  loadli.w r1,  -1376(r30)
0011bc  fe0101e0  vmmov mr3, r2
0011c0  1f010004  addli r2, zero, 512
0011c4  b3900020  hfloat2float.rn r1, r1
0011c8  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
0011cc  e3404ff5  loadli.w r1,  -1372(r30)
0011d0  fe0101e0  vmmov mr3, r2
0011d4  1f010008  addli r2, zero, 1024
0011d8  b3900020  hfloat2float.rn r1, r1
0011dc  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
0011e0  e3005ff5  loadli.w r1,  -1368(r30)
0011e4  fe0101e0  vmmov mr3, r2
0011e8  1f010010  addli r2, zero, 2048
0011ec  b3900020  hfloat2float.rn r1, r1
0011f0  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
0011f4  e3405ff5  loadli.w r1,  -1364(r30)
0011f8  fe0101e0  vmmov mr3, r2
0011fc  1f010020  addli r2, zero, 4096
001200  b3900020  hfloat2float.rn r1, r1
001204  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
001208  e3006ff5  loadli.w r1,  -1360(r30)
00120c  fe0101e0  vmmov mr3, r2
001210  1f010040  addli r2, zero, 8192
001214  b3900020  hfloat2float.rn r1, r1
001218  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
00121c  e3406ff5  loadli.w r1,  -1356(r30)
001220  fe0101e0  vmmov mr3, r2
001224  2b410000  lui r2, 4
001228  b3900020  hfloat2float.rn r1, r1
00122c  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
001230  e3007ff5  loadli.w r1,  -1352(r30)
001234  fe0101e0  vmmov mr3, r2
001238  b3900020  hfloat2float.rn r1, r1
00123c  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
001240  e3008ff5  loadli.w r1,  -1344(r30)
001244  63417ff5  loadli.w r2,  -1348(r30)
001248  fe8101e0  vmmov mr3, r3
00124c  b3900020  hfloat2float.rn r1, r1
001250  33110120  hfloat2float.rn r2, r2
001254  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
001258  ea201134  vor.u.mh vr1{mr2}, r2, vr1
00125c  e3404ff6  loadli.w r1,  -1244(r30)
001260  1f210000  addli r2, zero, 2
001264  7e0101e0  vmmov mr2, r2
001268  1f010010  addli r2, zero, 2048
00126c  b3900020  hfloat2float.rn r1, r1
001270  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
001274  e300eff7  loadli.w r1,  -1040(r30)
001278  b3900020  hfloat2float.rn r1, r1
00127c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001280  9f002000  addli r1, zero, 16
001284  7e8000e0  vmmov mr0, r1
001288  9f001000  addli r1, zero, 8
00128c  fe8100e0  vmmov mr3, r1
001290  e340eff7  loadli.w r1,  -1036(r30)
001294  b3900020  hfloat2float.rn r1, r1
001298  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
00129c  e300fff7  loadli.w r1,  -1032(r30)
0012a0  b3900020  hfloat2float.rn r1, r1
0012a4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0012a8  9f004000  addli r1, zero, 32
0012ac  7e8100e0  vmmov mr2, r1
0012b0  e340fff7  loadli.w r1,  -1028(r30)
0012b4  b3900020  hfloat2float.rn r1, r1
0012b8  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0012bc  9f000002  addli r1, zero, 256
0012c0  7e8100e0  vmmov mr2, r1
0012c4  9f008000  addli r1, zero, 64
0012c8  7e8000e0  vmmov mr0, r1
0012cc  e3000ff8  loadli.w r1,  -1024(r30)
0012d0  b3900020  hfloat2float.rn r1, r1
0012d4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0012d8  9f000001  addli r1, zero, 128
0012dc  7e8000e0  vmmov mr0, r1
0012e0  e3400ff8  loadli.w r1,  -1020(r30)
0012e4  b3900020  hfloat2float.rn r1, r1
0012e8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0012ec  9f000004  addli r1, zero, 512
0012f0  7e8000e0  vmmov mr0, r1
0012f4  e3401ff8  loadli.w r1,  -1012(r30)
0012f8  b3900020  hfloat2float.rn r1, r1
0012fc  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
001300  9f000008  addli r1, zero, 1024
001304  7e8100e0  vmmov mr2, r1
001308  e3402ff8  loadli.w r1,  -1004(r30)
00130c  b3900020  hfloat2float.rn r1, r1
001310  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001314  e3403ff8  loadli.w r1,  -996(r30)
001318  7e0001e0  vmmov mr0, r2
00131c  1f010040  addli r2, zero, 8192
001320  b3900020  hfloat2float.rn r1, r1
001324  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
001328  9f000020  addli r1, zero, 4096
00132c  7e8100e0  vmmov mr2, r1
001330  e3404ff8  loadli.w r1,  -988(r30)
001334  b3900020  hfloat2float.rn r1, r1
001338  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00133c  e3405ff8  loadli.w r1,  -980(r30)
001340  7e0001e0  vmmov mr0, r2
001344  1f010004  addli r2, zero, 512
001348  b3900020  hfloat2float.rn r1, r1
00134c  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
001350  ab400000  lui r1, 4
001354  7e8100e0  vmmov mr2, r1
001358  e3406ff8  loadli.w r1,  -972(r30)
00135c  b3900020  hfloat2float.rn r1, r1
001360  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001364  ab800000  lui r1, 8
001368  7e8000e0  vmmov mr0, r1
00136c  e3407ff8  loadli.w r1,  -964(r30)
001370  b3900020  hfloat2float.rn r1, r1
001374  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
001378  e3408ff8  loadli.w r1,  -956(r30)
00137c  b3900020  hfloat2float.rn r1, r1
001380  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001384  e3407ff6  loadli.w r1,  -1220(r30)
001388  e3018ffa  loadli.w r3,  -704(r30)
00138c  bfd12100  blt.s r3, r2, 116
001390  42110fa3  vload_mask16.mz vr2{mr1}, 1408(r30)
001394  86310100  vfp162float_l.rn vr3, vr2
001398  00a00000  mfence { lm }
00139c  86720100  vfp162float_h.rn vr5, vr2
0013a0  461c3f82  vstore_mask16.mz vr3{mr1}, 1216(r30)
0013a4  46144fa2  vstore_mask16.mz vr4{mr1}, 1344(r30)
0013a8  9f000000  addli r1, zero, 0
0013ac  42118fa3  vload_mask16.mz vr2{mr1}, 1472(r30)
0013b0  86710100  vfp162float_h.rn vr3, vr2
0013b4  06320100  vfp162float_l.rn vr4, vr2
0013b8  96925502  vadd.f.mz.rn vr5{mr1}, vr11, vr5
0013bc  42118f83  vload_mask16.mz vr2{mr1}, 1216(r30)
0013c0  96913002  vadd.f.mz.rn vr3{mr1}, vr1, vr3
0013c4  16112502  vadd.f.mz.rn vr2{mr1}, vr10, vr2
0013c8  461c2f82  vstore_mask16.mz vr2{mr1}, 1216(r30)
0013cc  16114002  vadd.f.mz.rn vr2{mr1}, vr0, vr4
0013d0  42128f83  vload_mask16.mz vr4{mr1}, 1216(r30)
0013d4  46182f82  vstore_mask16.mz vr2{mr1}, 1152(r30)
0013d8  06110200  vfloat2fp16_l.rn vr2, vr4
0013dc  06d10200  vfloat2fp16_h.rn vr2, vr5
0013e0  42120f83  vload_mask16.mz vr4{mr1}, 1152(r30)
0013e4  86120200  vfloat2fp16_l.rn vr5, vr4
0013e8  86d20100  vfloat2fp16_h.rn vr5, vr3
0013ec  86310100  vfp162float_l.rn vr3, vr2
0013f0  86710100  vfp162float_h.rn vr3, vr2
0013f4  06b10200  vfp162float_l.rn vr2, vr5
0013f8  06f10200  vfp162float_h.rn vr2, vr5
0013fc  42128fa2  vload_mask16.mz vr4{mr1}, 1344(r30)
001400  06310200  vfp162float_l.rn vr2, vr4
001404  86710200  vfp162float_h.rn vr3, vr4
001408  7e8000e0  vmmov mr0, r1
00140c  9f000ff7  addli r1, r30, -1152
001410  1f018ff5  addli r2, r30, -1344
001414  16112302  vadd.f.mz.rn vr2{mr1}, vr6, vr2
001418  42130fa2  vload_mask16.mz vr6{mr1}, 1280(r30)
00141c  86720300  vfp162float_h.rn vr5, vr6
001420  06320300  vfp162float_l.rn vr4, vr6
001424  96913302  vadd.f.mz.rn vr3{mr1}, vr7, vr3
001428  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
00142c  16124402  vadd.f.mz.rn vr4{mr1}, vr8, vr4
001430  06140100  vfloat2fp16_l.rn vr8, vr2
001434  06d40100  vfloat2fp16_h.rn vr8, vr3
001438  86130200  vfloat2fp16_l.rn vr7, vr4
00143c  86d30200  vfloat2fp16_h.rn vr7, vr5
001440  06730400  vfp162float_h.rn vr6, vr8
001444  06b10300  vfp162float_l.rn vr2, vr7
001448  86320400  vfp162float_l.rn vr5, vr8
00144c  00a00000  mfence { lm }
001450  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
001454  46145fa2  vstore_mask16.mz vr5{mr1}, 1344(r30)
001458  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
00145c  c2140fa3  vload_mask16.mz vr9{mr1}, 1408(r30)
001460  86f10400  vfp162float_h.rn vr3, vr9
001464  9f008ff6  addli r1, r30, -1216
001468  06b10400  vfp162float_l.rn vr2, vr9
00146c  46186fa2  vstore_mask16.mz vr6{mr1}, 1408(r30)
001470  96913502  vadd.f.mz.rn vr3{mr1}, vr11, vr3
001474  c2158fa3  vload_mask16.mz vr11{mr1}, 1472(r30)
001478  16112502  vadd.f.mz.rn vr2{mr1}, vr10, vr2
00147c  86b40500  vfp162float_l.rn vr9, vr11
001480  06f50500  vfp162float_h.rn vr10, vr11
001484  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
001488  9690a002  vadd.f.mz.rn vr1{mr1}, vr1, vr10
00148c  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
001490  06150100  vfloat2fp16_l.rn vr10, vr2
001494  06d50100  vfloat2fp16_h.rn vr10, vr3
001498  06110000  vfloat2fp16_l.rn vr2, vr0
00149c  06d10000  vfloat2fp16_h.rn vr2, vr1
0014a0  06300500  vfp162float_l.rn vr0, vr10
0014a4  86700500  vfp162float_h.rn vr1, vr10
0014a8  86310100  vfp162float_l.rn vr3, vr2
0014ac  9f008ff5  addli r1, r30, -1344
0014b0  06750100  vfp162float_h.rn vr10, vr2
0014b4  12318002  vadd.s.mz vr2{mr1}, zero, vr8
0014b8  92348002  vadd.s.mz vr9{mr1}, zero, vr8
0014bc  12328002  vadd.s.mz vr4{mr1}, zero, vr8
0014c0  6e910530  vor.f.mh vr2{mr0}, vr11, vr0
0014c4  12308002  vadd.s.mz vr0{mr1}, zero, vr8
0014c8  ee946530  vor.f.mh vr9{mr0}, vr11, vr6
0014cc  6e925530  vor.f.mh vr4{mr0}, vr11, vr5
0014d0  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
0014d4  6e901530  vor.f.mh vr0{mr0}, vr11, vr1
0014d8  92308002  vadd.s.mz vr1{mr1}, zero, vr8
0014dc  16122202  vadd.f.mz.rn vr4{mr1}, vr4, vr2
0014e0  06f10300  vfp162float_h.rn vr2, vr7
0014e4  00a00000  mfence { lm }
0014e8  ee903530  vor.f.mh vr1{mr0}, vr11, vr3
0014ec  92318002  vadd.s.mz vr3{mr1}, zero, vr8
0014f0  16900402  vadd.f.mz.rn vr0{mr1}, vr9, vr0
0014f4  92348002  vadd.s.mz vr9{mr1}, zero, vr8
0014f8  ee91a530  vor.f.mh vr3{mr0}, vr11, vr10
0014fc  12358002  vadd.s.mz vr10{mr1}, zero, vr8
001500  92339002  vadd.s.mz vr7{mr1}, zero, vr9
001504  16100202  vadd.f.mz.rn vr0{mr1}, vr4, vr0
001508  7e0000a0  vmmov zero, mr0
00150c  670c0ffa  storeli.w zero, -576(r30)
001510  17200000  xor zero, zero, zero
001514  6e955530  vor.f.mh vr10{mr0}, vr11, vr5
001518  ee932530  vor.f.mh vr7{mr0}, vr11, vr2
00151c  96101502  vadd.f.mz.rn vr1{mr1}, vr10, vr1
001520  96913302  vadd.f.mz.rn vr3{mr1}, vr7, vr3
001524  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
001528  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
00152c  fa100040  vextracti.f r1, 0(vr0)
001530  7a111040  vextracti.f r2, 1(vr0)
001534  8be02010  add.f.rn r1, r1, r2
001538  7a112040  vextracti.f r2, 2(vr0)
00153c  8b601110  add.f.rn r1, r2, r1
001540  7a113040  vextracti.f r2, 3(vr0)
001544  8b601110  add.f.rn r1, r2, r1
001548  7a114040  vextracti.f r2, 4(vr0)
00154c  8b601110  add.f.rn r1, r2, r1
001550  7a115040  vextracti.f r2, 5(vr0)
001554  8b601110  add.f.rn r1, r2, r1
001558  7a116040  vextracti.f r2, 6(vr0)
00155c  8b601110  add.f.rn r1, r2, r1
001560  7a117040  vextracti.f r2, 7(vr0)
001564  8b601110  add.f.rn r1, r2, r1
001568  7a118040  vextracti.f r2, 8(vr0)
00156c  8b601110  add.f.rn r1, r2, r1
001570  7a119040  vextracti.f r2, 9(vr0)
001574  8b601110  add.f.rn r1, r2, r1
001578  7a11a040  vextracti.f r2, 10(vr0)
00157c  8b601110  add.f.rn r1, r2, r1
001580  7a11b040  vextracti.f r2, 11(vr0)
001584  8b601110  add.f.rn r1, r2, r1
001588  7a11c040  vextracti.f r2, 12(vr0)
00158c  8b601110  add.f.rn r1, r2, r1
001590  7a11d040  vextracti.f r2, 13(vr0)
001594  8b601110  add.f.rn r1, r2, r1
001598  7a11e040  vextracti.f r2, 14(vr0)
00159c  8b601110  add.f.rn r1, r2, r1
0015a0  7a11f040  vextracti.f r2, 15(vr0)
0015a4  8b601110  add.f.rn r1, r2, r1
0015a8  63416ff1  loadli.w r2,  -1868(r30)
0015ac  73601100  stores.w r1, 0(r2)
0015b0  00a00300  mfence { lm, sm, gm }
0015b4  e3407ff6  loadli.w r1,  -1220(r30)
0015b8  80a10004  csr_set csr3, r1
0015bc  00d00100  sync_group
0015c0  e3007ff6  loadli.w r1,  -1224(r30)
0015c4  3ba10000  bneq r1, zero, 72
0015c8  63427ff1  loadli.w r4,  -1860(r30)
0015cc  ef400200  loads.w r1, 0(r4)
0015d0  6f414200  loads.w r2, 4(r4)
0015d4  ef418200  loads.w r3, 8(r4)
0015d8  8be02010  add.f.rn r1, r1, r2
0015dc  6f41c200  loads.w r2, 12(r4)
0015e0  8be03010  add.f.rn r1, r1, r3
0015e4  ef410201  loads.w r3, 16(r4)
0015e8  8be02010  add.f.rn r1, r1, r2
0015ec  6f414201  loads.w r2, 20(r4)
0015f0  8be03010  add.f.rn r1, r1, r3
0015f4  ef418201  loads.w r3, 24(r4)
0015f8  8be02010  add.f.rn r1, r1, r2
0015fc  6f41c201  loads.w r2, 28(r4)
001600  8be03010  add.f.rn r1, r1, r3
001604  8be02010  add.f.rn r1, r1, r2
001608  73601200  stores.w r1, 0(r4)
00160c  abf00000  lui r1, 15
001610  12349002  vadd.s.mz vr8{mr1}, zero, vr9
001614  9b90f0ff  ori r1, r1, 4095
001618  670c1ff8  storeli.w r1, -832(r30)
00161c  00a00300  mfence { lm, sm, gm }
001620  80a10004  csr_set csr3, r1
001624  00d00100  sync_group
001628  6b312ff8  load.hu r2, -126(r30)
00162c  e3407ff1  loadli.w r1,  -1860(r30)
001630  67402ff8  storeli.w r2, -1020(r30)
001634  6b314ff8  load.hu r2, -124(r30)
001638  efc00000  loads.w r1, 0(r1)
00163c  e7402ff8  storeli.w r2, -1012(r30)
001640  6b316ff8  load.hu r2, -122(r30)
001644  67412ff8  storeli.w r2, -1004(r30)
001648  6b318ff8  load.hu r2, -120(r30)
00164c  e7412ff8  storeli.w r2, -996(r30)
001650  6b31aff8  load.hu r2, -118(r30)
001654  67001ffa  storeli.w r1, -768(r30)
001658  eb300ff8  load.hu r1, -128(r30)
00165c  67022ff8  storeli.w r2, -992(r30)
001660  6b31cff8  load.hu r2, -116(r30)
001664  b3900020  hfloat2float.rn r1, r1
001668  e7022ff8  storeli.w r2, -984(r30)
00166c  6b31eff8  load.hu r2, -114(r30)
001670  e7422ff8  storeli.w r2, -980(r30)
001674  6b310ff9  load.hu r2, -112(r30)
001678  67032ff8  storeli.w r2, -976(r30)
00167c  6b312ff9  load.hu r2, -110(r30)
001680  e7032ff8  storeli.w r2, -968(r30)
001684  6b314ff9  load.hu r2, -108(r30)
001688  e7432ff8  storeli.w r2, -964(r30)
00168c  6b316ff9  load.hu r2, -106(r30)
001690  67042ff8  storeli.w r2, -960(r30)
001694  6b318ff9  load.hu r2, -104(r30)
001698  67442ff8  storeli.w r2, -956(r30)
00169c  6b31aff9  load.hu r2, -102(r30)
0016a0  e7042ff8  storeli.w r2, -952(r30)
0016a4  6b31cff9  load.hu r2, -100(r30)
0016a8  e7442ff8  storeli.w r2, -948(r30)
0016ac  6b31eff9  load.hu r2, -98(r30)
0016b0  67452ff8  storeli.w r2, -940(r30)
0016b4  6b310ffa  load.hu r2, -96(r30)
0016b8  67052ff8  storeli.w r2, -944(r30)
0016bc  6b312ffa  load.hu r2, -94(r30)
0016c0  e7052ff8  storeli.w r2, -936(r30)
0016c4  6b314ffa  load.hu r2, -92(r30)
0016c8  e7452ff8  storeli.w r2, -932(r30)
0016cc  6b316ffa  load.hu r2, -90(r30)
0016d0  67062ff8  storeli.w r2, -928(r30)
0016d4  6b318ffa  load.hu r2, -88(r30)
0016d8  67462ff8  storeli.w r2, -924(r30)
0016dc  6b31affa  load.hu r2, -86(r30)
0016e0  e7062ff8  storeli.w r2, -920(r30)
0016e4  6b31cffa  load.hu r2, -84(r30)
0016e8  e7462ff8  storeli.w r2, -916(r30)
0016ec  6b31effa  load.hu r2, -82(r30)
0016f0  67072ff8  storeli.w r2, -912(r30)
0016f4  6b310ffb  load.hu r2, -80(r30)
0016f8  67472ff8  storeli.w r2, -908(r30)
0016fc  6b312ffb  load.hu r2, -78(r30)
001700  e7072ff8  storeli.w r2, -904(r30)
001704  c2130fc3  vload_mask16.mz vr7{mr1}, 1664(r30)
001708  c2118fc3  vload_mask16.mz vr3{mr1}, 1728(r30)
00170c  6b316ffe  load.hu r2, -26(r30)
001710  eb314ffb  load.hu r3, -76(r30)
001714  6b326ffb  load.hu r4, -74(r30)
001718  6b338ffb  load.hu r6, -72(r30)
00171c  eb33affb  load.hu r7, -70(r30)
001720  6b34cffb  load.hu r8, -68(r30)
001724  6b35effb  load.hu r10, -66(r30)
001728  eb340ffc  load.hu r9, -64(r30)
00172c  eb352ffc  load.hu r11, -62(r30)
001730  6b364ffc  load.hu r12, -60(r30)
001734  eb366ffc  load.hu r13, -58(r30)
001738  6b378ffc  load.hu r14, -56(r30)
00173c  eb37affc  load.hu r15, -54(r30)
001740  6b38cffc  load.hu r16, -52(r30)
001744  eb38effc  load.hu r17, -50(r30)
001748  6b390ffd  load.hu r18, -48(r30)
00174c  eb392ffd  load.hu r19, -46(r30)
001750  6b3a4ffd  load.hu r20, -44(r30)
001754  eb3a6ffd  load.hu r21, -42(r30)
001758  6b3b8ffd  load.hu r22, -40(r30)
00175c  eb3baffd  load.hu r23, -38(r30)
001760  6b3ccffd  load.hu r24, -36(r30)
001764  6b3deffd  load.hu r26, -34(r30)
001768  eb3c0ffe  load.hu r25, -32(r30)
00176c  eb3d2ffe  load.hu r27, -30(r30)
001770  6b3e4ffe  load.hu r28, -28(r30)
001774  67422ff6  storeli.w r2, -1244(r30)
001778  6b318ffe  load.hu r2, -24(r30)
00177c  670f2ff6  storeli.w r2, -1040(r30)
001780  6b31affe  load.hu r2, -22(r30)
001784  674f2ff6  storeli.w r2, -1036(r30)
001788  6b31cffe  load.hu r2, -20(r30)
00178c  e70f2ff6  storeli.w r2, -1032(r30)
001790  6b31effe  load.hu r2, -18(r30)
001794  e74f2ff6  storeli.w r2, -1028(r30)
001798  6b310fff  load.hu r2, -16(r30)
00179c  67002ff8  storeli.w r2, -1024(r30)
0017a0  6b312fff  load.hu r2, -14(r30)
0017a4  e7002ff8  storeli.w r2, -1016(r30)
0017a8  6b314fff  load.hu r2, -12(r30)
0017ac  67012ff8  storeli.w r2, -1008(r30)
0017b0  6b316fff  load.hu r2, -10(r30)
0017b4  e7012ff8  storeli.w r2, -1000(r30)
0017b8  6b318fff  load.hu r2, -8(r30)
0017bc  67422ff8  storeli.w r2, -988(r30)
0017c0  6b31afff  load.hu r2, -6(r30)
0017c4  67432ff8  storeli.w r2, -972(r30)
0017c8  6b31cfff  load.hu r2, -4(r30)
0017cc  e7472ff8  storeli.w r2, -900(r30)
0017d0  6b31efff  load.hu r2, -2(r30)
0017d4  67082ff8  storeli.w r2, -896(r30)
0017d8  1f110000  addli r2, zero, 1
0017dc  fe0101e0  vmmov mr3, r2
0017e0  1f210000  addli r2, zero, 2
0017e4  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
0017e8  e3400ff8  loadli.w r1,  -1020(r30)
0017ec  fe0101e0  vmmov mr3, r2
0017f0  1f410000  addli r2, zero, 4
0017f4  b3900020  hfloat2float.rn r1, r1
0017f8  7e0001e0  vmmov mr0, r2
0017fc  1f011000  addli r2, zero, 8
001800  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
001804  e3401ff8  loadli.w r1,  -1012(r30)
001808  7e0101e0  vmmov mr2, r2
00180c  1f012000  addli r2, zero, 16
001810  b3900020  hfloat2float.rn r1, r1
001814  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
001818  e3402ff8  loadli.w r1,  -1004(r30)
00181c  b3900020  hfloat2float.rn r1, r1
001820  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
001824  e3403ff8  loadli.w r1,  -996(r30)
001828  7e0101e0  vmmov mr2, r2
00182c  1f014000  addli r2, zero, 32
001830  b3900020  hfloat2float.rn r1, r1
001834  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
001838  e3004ff8  loadli.w r1,  -992(r30)
00183c  7e0101e0  vmmov mr2, r2
001840  1f018000  addli r2, zero, 64
001844  b3900020  hfloat2float.rn r1, r1
001848  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
00184c  e3005ff8  loadli.w r1,  -984(r30)
001850  7e0101e0  vmmov mr2, r2
001854  1f010001  addli r2, zero, 128
001858  b3900020  hfloat2float.rn r1, r1
00185c  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
001860  e3405ff8  loadli.w r1,  -980(r30)
001864  7e0101e0  vmmov mr2, r2
001868  1f010002  addli r2, zero, 256
00186c  b3900020  hfloat2float.rn r1, r1
001870  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
001874  e3006ff8  loadli.w r1,  -976(r30)
001878  7e0101e0  vmmov mr2, r2
00187c  1f010004  addli r2, zero, 512
001880  b3900020  hfloat2float.rn r1, r1
001884  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
001888  e3007ff8  loadli.w r1,  -968(r30)
00188c  7e0101e0  vmmov mr2, r2
001890  1f010008  addli r2, zero, 1024
001894  b3900020  hfloat2float.rn r1, r1
001898  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
00189c  e3407ff8  loadli.w r1,  -964(r30)
0018a0  7e0101e0  vmmov mr2, r2
0018a4  1f010010  addli r2, zero, 2048
0018a8  b3900020  hfloat2float.rn r1, r1
0018ac  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
0018b0  e3008ff8  loadli.w r1,  -960(r30)
0018b4  7e0101e0  vmmov mr2, r2
0018b8  1f010020  addli r2, zero, 4096
0018bc  b3900020  hfloat2float.rn r1, r1
0018c0  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
0018c4  e3408ff8  loadli.w r1,  -956(r30)
0018c8  7e0101e0  vmmov mr2, r2
0018cc  1f010040  addli r2, zero, 8192
0018d0  2b800000  lui zero, 8
0018d4  b3900020  hfloat2float.rn r1, r1
0018d8  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
0018dc  e3009ff8  loadli.w r1,  -952(r30)
0018e0  7e0101e0  vmmov mr2, r2
0018e4  2b410000  lui r2, 4
0018e8  b3900020  hfloat2float.rn r1, r1
0018ec  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
0018f0  e3409ff8  loadli.w r1,  -948(r30)
0018f4  7e0101e0  vmmov mr2, r2
0018f8  b3900020  hfloat2float.rn r1, r1
0018fc  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
001900  e340aff8  loadli.w r1,  -940(r30)
001904  7e0100e0  vmmov mr2, zero
001908  17200000  xor zero, zero, zero
00190c  6301aff8  loadli.w r2,  -944(r30)
001910  12309002  vadd.s.mz vr0{mr1}, zero, vr9
001914  b3900020  hfloat2float.rn r1, r1
001918  33110120  hfloat2float.rn r2, r2
00191c  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
001920  9f100000  addli r1, zero, 1
001924  7e8100e0  vmmov mr2, r1
001928  6a200134  vor.u.mh vr0{mr2}, r2, vr0
00192c  e300bff8  loadli.w r1,  -936(r30)
001930  1f011000  addli r2, zero, 8
001934  7e0101e0  vmmov mr2, r2
001938  1f012000  addli r2, zero, 16
00193c  b3900020  hfloat2float.rn r1, r1
001940  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
001944  e340bff8  loadli.w r1,  -932(r30)
001948  b3900020  hfloat2float.rn r1, r1
00194c  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001950  e300cff8  loadli.w r1,  -928(r30)
001954  b3900020  hfloat2float.rn r1, r1
001958  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
00195c  e340cff8  loadli.w r1,  -924(r30)
001960  7e0101e0  vmmov mr2, r2
001964  1f014000  addli r2, zero, 32
001968  b3900020  hfloat2float.rn r1, r1
00196c  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
001970  e300dff8  loadli.w r1,  -920(r30)
001974  7e0101e0  vmmov mr2, r2
001978  1f018000  addli r2, zero, 64
00197c  b3900020  hfloat2float.rn r1, r1
001980  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
001984  e340dff8  loadli.w r1,  -916(r30)
001988  7e0101e0  vmmov mr2, r2
00198c  1f010001  addli r2, zero, 128
001990  b3900020  hfloat2float.rn r1, r1
001994  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
001998  e300eff8  loadli.w r1,  -912(r30)
00199c  7e0101e0  vmmov mr2, r2
0019a0  1f010002  addli r2, zero, 256
0019a4  b3900020  hfloat2float.rn r1, r1
0019a8  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
0019ac  e340eff8  loadli.w r1,  -908(r30)
0019b0  7e0101e0  vmmov mr2, r2
0019b4  1f010004  addli r2, zero, 512
0019b8  b3900020  hfloat2float.rn r1, r1
0019bc  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
0019c0  e300fff8  loadli.w r1,  -904(r30)
0019c4  7e0101e0  vmmov mr2, r2
0019c8  1f010008  addli r2, zero, 1024
0019cc  b3900020  hfloat2float.rn r1, r1
0019d0  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
0019d4  b3900120  hfloat2float.rn r1, r3
0019d8  7e0101e0  vmmov mr2, r2
0019dc  1f010010  addli r2, zero, 2048
0019e0  ab810000  lui r3, 8
0019e4  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
0019e8  b3100220  hfloat2float.rn r1, r4
0019ec  7e0101e0  vmmov mr2, r2
0019f0  1f010020  addli r2, zero, 4096
0019f4  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
0019f8  b3100320  hfloat2float.rn r1, r6
0019fc  7e0101e0  vmmov mr2, r2
001a00  1f010040  addli r2, zero, 8192
001a04  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
001a08  b3900320  hfloat2float.rn r1, r7
001a0c  7e0101e0  vmmov mr2, r2
001a10  e3038ff9  loadli.w r7,  -832(r30)
001a14  2b410000  lui r2, 4
001a18  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
001a1c  b3100420  hfloat2float.rn r1, r8
001a20  7e0101e0  vmmov mr2, r2
001a24  33910420  hfloat2float.rn r2, r9
001a28  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
001a2c  b3100520  hfloat2float.rn r1, r10
001a30  7e8101e0  vmmov mr2, r3
001a34  ab810000  lui r3, 8
001a38  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
001a3c  9f000ff7  addli r1, r30, -1152
001a40  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
001a44  9f100000  addli r1, zero, 1
001a48  7e8100e0  vmmov mr2, r1
001a4c  b3900520  hfloat2float.rn r1, r11
001a50  ea249134  vor.u.mh vr9{mr2}, r2, vr9
001a54  1f011000  addli r2, zero, 8
001a58  7e0101e0  vmmov mr2, r2
001a5c  1f012000  addli r2, zero, 16
001a60  eaa49036  vor.u.mh vr9{mr3}, r1, vr9
001a64  b3100620  hfloat2float.rn r1, r12
001a68  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
001a6c  b3900620  hfloat2float.rn r1, r13
001a70  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
001a74  b3100720  hfloat2float.rn r1, r14
001a78  7e0101e0  vmmov mr2, r2
001a7c  1f014000  addli r2, zero, 32
001a80  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
001a84  b3900720  hfloat2float.rn r1, r15
001a88  7e0101e0  vmmov mr2, r2
001a8c  1f018000  addli r2, zero, 64
001a90  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
001a94  b3100820  hfloat2float.rn r1, r16
001a98  7e0101e0  vmmov mr2, r2
001a9c  1f010001  addli r2, zero, 128
001aa0  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
001aa4  b3900820  hfloat2float.rn r1, r17
001aa8  7e0101e0  vmmov mr2, r2
001aac  1f010002  addli r2, zero, 256
001ab0  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
001ab4  b3100920  hfloat2float.rn r1, r18
001ab8  7e0101e0  vmmov mr2, r2
001abc  1f010004  addli r2, zero, 512
001ac0  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
001ac4  b3900920  hfloat2float.rn r1, r19
001ac8  7e0101e0  vmmov mr2, r2
001acc  1f010008  addli r2, zero, 1024
001ad0  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
001ad4  b3100a20  hfloat2float.rn r1, r20
001ad8  7e0101e0  vmmov mr2, r2
001adc  1f010010  addli r2, zero, 2048
001ae0  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
001ae4  b3900a20  hfloat2float.rn r1, r21
001ae8  7e0101e0  vmmov mr2, r2
001aec  1f010020  addli r2, zero, 4096
001af0  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
001af4  b3100b20  hfloat2float.rn r1, r22
001af8  7e0101e0  vmmov mr2, r2
001afc  1f010040  addli r2, zero, 8192
001b00  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
001b04  b3900b20  hfloat2float.rn r1, r23
001b08  7e0101e0  vmmov mr2, r2
001b0c  2b410000  lui r2, 4
001b10  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
001b14  b3100c20  hfloat2float.rn r1, r24
001b18  7e0101e0  vmmov mr2, r2
001b1c  33910c20  hfloat2float.rn r2, r25
001b20  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
001b24  b3100d20  hfloat2float.rn r1, r26
001b28  7e8101e0  vmmov mr2, r3
001b2c  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
001b30  9f000ff7  addli r1, r30, -1152
001b34  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
001b38  9f100000  addli r1, zero, 1
001b3c  7e8100e0  vmmov mr2, r1
001b40  b3900d20  hfloat2float.rn r1, r27
001b44  ea201134  vor.u.mh vr1{mr2}, r2, vr1
001b48  1f011000  addli r2, zero, 8
001b4c  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
001b50  b3100e20  hfloat2float.rn r1, r28
001b54  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001b58  e3404ff6  loadli.w r1,  -1244(r30)
001b5c  7e0001e0  vmmov mr0, r2
001b60  1f012000  addli r2, zero, 16
001b64  b3900020  hfloat2float.rn r1, r1
001b68  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001b6c  e300eff7  loadli.w r1,  -1040(r30)
001b70  7e0001e0  vmmov mr0, r2
001b74  1f014000  addli r2, zero, 32
001b78  b3900020  hfloat2float.rn r1, r1
001b7c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001b80  e340eff7  loadli.w r1,  -1036(r30)
001b84  7e0001e0  vmmov mr0, r2
001b88  1f018000  addli r2, zero, 64
001b8c  b3900020  hfloat2float.rn r1, r1
001b90  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001b94  e300fff7  loadli.w r1,  -1032(r30)
001b98  7e0001e0  vmmov mr0, r2
001b9c  1f010001  addli r2, zero, 128
001ba0  b3900020  hfloat2float.rn r1, r1
001ba4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001ba8  e340fff7  loadli.w r1,  -1028(r30)
001bac  7e0001e0  vmmov mr0, r2
001bb0  1f010002  addli r2, zero, 256
001bb4  b3900020  hfloat2float.rn r1, r1
001bb8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001bbc  e3000ff8  loadli.w r1,  -1024(r30)
001bc0  7e0001e0  vmmov mr0, r2
001bc4  1f010004  addli r2, zero, 512
001bc8  b3900020  hfloat2float.rn r1, r1
001bcc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001bd0  e3001ff8  loadli.w r1,  -1016(r30)
001bd4  7e0001e0  vmmov mr0, r2
001bd8  2b0180ba  lui r2, 763904
001bdc  b3900020  hfloat2float.rn r1, r1
001be0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001be4  e3010ffa  loadli.w r3,  -768(r30)
001be8  e3002ff8  loadli.w r1,  -1008(r30)
001bec  0be32120  mul.f.rn r6, r3, r2
001bf0  1f010008  addli r2, zero, 1024
001bf4  b3900020  hfloat2float.rn r1, r1
001bf8  92125302  vadd.f.mz.rn vr5{mr1}, r6, vr5
001bfc  12112302  vadd.f.mz.rn vr2{mr1}, r6, vr2
001c00  0e112102  vmul.f.mz.rn vr2{mr1}, vr2, vr2
001c04  7e0001e0  vmmov mr0, r2
001c08  1f010010  addli r2, zero, 2048
001c0c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001c10  e3003ff8  loadli.w r1,  -1000(r30)
001c14  7e0001e0  vmmov mr0, r2
001c18  1f010020  addli r2, zero, 4096
001c1c  b3900020  hfloat2float.rn r1, r1
001c20  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001c24  e3404ff8  loadli.w r1,  -988(r30)
001c28  7e0001e0  vmmov mr0, r2
001c2c  42128fa2  vload_mask16.mz vr4{mr1}, 1344(r30)
001c30  12134302  vadd.f.mz.rn vr6{mr1}, r6, vr4
001c34  0e156302  vmul.f.mz.rn vr10{mr1}, vr6, vr6
001c38  b3900020  hfloat2float.rn r1, r1
001c3c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001c40  63008ffb  loadli.w zero,  -576(r30)
001c44  9f000ff7  addli r1, r30, -1152
001c48  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
001c4c  e3406ff8  loadli.w r1,  -972(r30)
001c50  7e0000e0  vmmov mr0, zero
001c54  17200000  xor zero, zero, zero
001c58  1f010040  addli r2, zero, 8192
001c5c  b3900020  hfloat2float.rn r1, r1
001c60  fe0101e0  vmmov mr3, r2
001c64  2b410000  lui r2, 4
001c68  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
001c6c  42120fa3  vload_mask16.mz vr4{mr1}, 1408(r30)
001c70  6e93a530  vor.f.mh vr6{mr0}, vr11, vr10
001c74  06b50300  vfp162float_l.rn vr10, vr7
001c78  9f000ff7  addli r1, r30, -1152
001c7c  1614a402  vadd.f.mz.rn vr8{mr1}, vr8, vr10
001c80  8e955202  vmul.f.mz.rn vr11{mr1}, vr5, vr5
001c84  12124302  vadd.f.mz.rn vr4{mr1}, r6, vr4
001c88  0e154202  vmul.f.mz.rn vr10{mr1}, vr4, vr4
001c8c  fe0101e0  vmmov mr3, r2
001c90  2b810000  lui r2, 8
001c94  06f20300  vfp162float_h.rn vr4, vr7
001c98  96124002  vadd.f.mz.rn vr5{mr1}, vr0, vr4
001c9c  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
001ca0  9f008ff6  addli r1, r30, -1216
001ca4  7e0101e0  vmmov mr2, r2
001ca8  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001cac  9f000ff7  addli r1, r30, -1152
001cb0  6e12a030  vor.f.mh vr4{mr0}, vr0, vr10
001cb4  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001cb8  9f008ff6  addli r1, r30, -1216
001cbc  06150400  vfloat2fp16_l.rn vr10, vr8
001cc0  06d50200  vfloat2fp16_h.rn vr10, vr5
001cc4  86320500  vfp162float_l.rn vr5, vr10
001cc8  06740500  vfp162float_h.rn vr8, vr10
001ccc  92125302  vadd.f.mz.rn vr5{mr1}, r6, vr5
001cd0  12148302  vadd.f.mz.rn vr8{mr1}, r6, vr8
001cd4  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
001cd8  8e925202  vmul.f.mz.rn vr5{mr1}, vr5, vr5
001cdc  0e148402  vmul.f.mz.rn vr8{mr1}, vr8, vr8
001ce0  6e90b330  vor.f.mh vr0{mr0}, vr7, vr11
001ce4  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
001ce8  9f000ff7  addli r1, r30, -1152
001cec  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
001cf0  e340fff8  loadli.w r1,  -900(r30)
001cf4  b3900020  hfloat2float.rn r1, r1
001cf8  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
001cfc  9f000ff7  addli r1, r30, -1152
001d00  ee935530  vor.f.mh vr7{mr0}, vr11, vr5
001d04  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
001d08  e3000ff9  loadli.w r1,  -896(r30)
001d0c  b3900020  hfloat2float.rn r1, r1
001d10  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
001d14  9f000ff7  addli r1, r30, -1152
001d18  ee928530  vor.f.mh vr5{mr0}, vr11, vr8
001d1c  06b40100  vfp162float_l.rn vr8, vr3
001d20  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
001d24  86f40100  vfp162float_h.rn vr9, vr3
001d28  96117302  vadd.f.mz.rn vr3{mr1}, vr6, vr7
001d2c  96909002  vadd.f.mz.rn vr1{mr1}, vr1, vr9
001d30  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
001d34  06130400  vfloat2fp16_l.rn vr6, vr8
001d38  06d30000  vfloat2fp16_h.rn vr6, vr1
001d3c  86730300  vfp162float_h.rn vr7, vr6
001d40  86300300  vfp162float_l.rn vr1, vr6
001d44  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001d48  12137302  vadd.f.mz.rn vr6{mr1}, r6, vr7
001d4c  92101302  vadd.f.mz.rn vr1{mr1}, r6, vr1
001d50  0e136302  vmul.f.mz.rn vr6{mr1}, vr6, vr6
001d54  8e901002  vmul.f.mz.rn vr1{mr1}, vr1, vr1
001d58  96914102  vadd.f.mz.rn vr3{mr1}, vr3, vr4
001d5c  92329002  vadd.s.mz vr5{mr1}, zero, vr9
001d60  ee921530  vor.f.mh vr5{mr0}, vr11, vr1
001d64  92309002  vadd.s.mz vr1{mr1}, zero, vr9
001d68  ee902530  vor.f.mh vr1{mr0}, vr11, vr2
001d6c  12319002  vadd.s.mz vr2{mr1}, zero, vr9
001d70  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
001d74  6e916530  vor.f.mh vr2{mr0}, vr11, vr6
001d78  16900102  vadd.f.mz.rn vr0{mr1}, vr3, vr0
001d7c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
001d80  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
001d84  fa100040  vextracti.f r1, 0(vr0)
001d88  7a111040  vextracti.f r2, 1(vr0)
001d8c  8be02010  add.f.rn r1, r1, r2
001d90  7a112040  vextracti.f r2, 2(vr0)
001d94  8b601110  add.f.rn r1, r2, r1
001d98  7a113040  vextracti.f r2, 3(vr0)
001d9c  8b601110  add.f.rn r1, r2, r1
001da0  7a114040  vextracti.f r2, 4(vr0)
001da4  8b601110  add.f.rn r1, r2, r1
001da8  7a115040  vextracti.f r2, 5(vr0)
001dac  8b601110  add.f.rn r1, r2, r1
001db0  7a116040  vextracti.f r2, 6(vr0)
001db4  8b601110  add.f.rn r1, r2, r1
001db8  7a117040  vextracti.f r2, 7(vr0)
001dbc  8b601110  add.f.rn r1, r2, r1
001dc0  7a118040  vextracti.f r2, 8(vr0)
001dc4  8b601110  add.f.rn r1, r2, r1
001dc8  7a119040  vextracti.f r2, 9(vr0)
001dcc  8b601110  add.f.rn r1, r2, r1
001dd0  7a11a040  vextracti.f r2, 10(vr0)
001dd4  8b601110  add.f.rn r1, r2, r1
001dd8  7a11b040  vextracti.f r2, 11(vr0)
001ddc  8b601110  add.f.rn r1, r2, r1
001de0  7a11c040  vextracti.f r2, 12(vr0)
001de4  8b601110  add.f.rn r1, r2, r1
001de8  7a11d040  vextracti.f r2, 13(vr0)
001dec  8b601110  add.f.rn r1, r2, r1
001df0  7a11e040  vextracti.f r2, 14(vr0)
001df4  8b601110  add.f.rn r1, r2, r1
001df8  7a11f040  vextracti.f r2, 15(vr0)
001dfc  8b601110  add.f.rn r1, r2, r1
001e00  63016ff1  loadli.w r2,  -1872(r30)
001e04  73601100  stores.w r1, 0(r2)
001e08  00a00300  mfence { lm, sm, gm }
001e0c  80a10304  csr_set csr3, r7
001e10  00d00100  sync_group
001e14  e3007ff6  loadli.w r1,  -1224(r30)
001e18  3ba10000  bneq r1, zero, 72
001e1c  63027ff1  loadli.w r4,  -1864(r30)
001e20  ef400200  loads.w r1, 0(r4)
001e24  6f414200  loads.w r2, 4(r4)
001e28  ef418200  loads.w r3, 8(r4)
001e2c  8be02010  add.f.rn r1, r1, r2
001e30  6f41c200  loads.w r2, 12(r4)
001e34  8be03010  add.f.rn r1, r1, r3
001e38  ef410201  loads.w r3, 16(r4)
001e3c  8be02010  add.f.rn r1, r1, r2
001e40  6f414201  loads.w r2, 20(r4)
001e44  8be03010  add.f.rn r1, r1, r3
001e48  ef418201  loads.w r3, 24(r4)
001e4c  8be02010  add.f.rn r1, r1, r2
001e50  6f41c201  loads.w r2, 28(r4)
001e54  8be03010  add.f.rn r1, r1, r3
001e58  8be02010  add.f.rn r1, r1, r2
001e5c  73601200  stores.w r1, 0(r4)
001e60  00a00300  mfence { lm, sm, gm }
001e64  80a10304  csr_set csr3, r7
001e68  00d00100  sync_group
001e6c  63413ff1  loadli.w r2,  -1892(r30)
001e70  e3007ff1  loadli.w r1,  -1864(r30)
001e74  9f040ffc  addli r9, r30, -512
001e78  9f150000  addli r11, zero, 1
001e7c  0b115110  add.s r2, r2, r5
001e80  efc00000  loads.w r1, 0(r1)
001e84  e70e2ff0  storeli.w r2, -1816(r30)
001e88  63013ff1  loadli.w r2,  -1896(r30)
001e8c  0b115110  add.s r2, r2, r5
001e90  674e2ff0  storeli.w r2, -1820(r30)
001e94  63412ff1  loadli.w r2,  -1900(r30)
001e98  0b115110  add.s r2, r2, r5
001e9c  670e2ff0  storeli.w r2, -1824(r30)
001ea0  63012ff1  loadli.w r2,  -1904(r30)
001ea4  0b115110  add.s r2, r2, r5
001ea8  e74d2ff0  storeli.w r2, -1828(r30)
001eac  63411ff1  loadli.w r2,  -1908(r30)
001eb0  0b115110  add.s r2, r2, r5
001eb4  e70d2ff0  storeli.w r2, -1832(r30)
001eb8  63011ff1  loadli.w r2,  -1912(r30)
001ebc  0b115110  add.s r2, r2, r5
001ec0  674d2ff0  storeli.w r2, -1836(r30)
001ec4  63410ff1  loadli.w r2,  -1916(r30)
001ec8  0b115110  add.s r2, r2, r5
001ecc  670d2ff0  storeli.w r2, -1840(r30)
001ed0  63010ff1  loadli.w r2,  -1920(r30)
001ed4  0b115110  add.s r2, r2, r5
001ed8  e74c2ff0  storeli.w r2, -1844(r30)
001edc  6341fff0  loadli.w r2,  -1924(r30)
001ee0  0b115110  add.s r2, r2, r5
001ee4  e70c2ff0  storeli.w r2, -1848(r30)
001ee8  6301fff0  loadli.w r2,  -1928(r30)
001eec  0b115110  add.s r2, r2, r5
001ef0  674c2ff0  storeli.w r2, -1852(r30)
001ef4  2b01803a  lui r2, 239616
001ef8  8be02020  mul.f.rn r1, r1, r2
001efc  6341eff0  loadli.w r2,  -1932(r30)
001f00  0b115110  add.s r2, r2, r5
001f04  670c2ff0  storeli.w r2, -1856(r30)
001f08  6301eff0  loadli.w r2,  -1936(r30)
001f0c  0b115110  add.s r2, r2, r5
001f10  e74e2ff0  storeli.w r2, -1812(r30)
001f14  6341dff0  loadli.w r2,  -1940(r30)
001f18  0b115110  add.s r2, r2, r5
001f1c  670f2ff0  storeli.w r2, -1808(r30)
001f20  6301dff0  loadli.w r2,  -1944(r30)
001f24  0b115110  add.s r2, r2, r5
001f28  674f2ff0  storeli.w r2, -1804(r30)
001f2c  6341cff0  loadli.w r2,  -1948(r30)
001f30  0b115110  add.s r2, r2, r5
001f34  e70f2ff0  storeli.w r2, -1800(r30)
001f38  63018ff0  loadli.w r2,  -1984(r30)
001f3c  8be02010  add.f.rn r1, r1, r2
001f40  6301cff0  loadli.w r2,  -1952(r30)
001f44  0b115110  add.s r2, r2, r5
001f48  e74f2ff0  storeli.w r2, -1796(r30)
001f4c  6341bff0  loadli.w r2,  -1956(r30)
001f50  8f800008  sqrt.f.rn r1, r1
001f54  0b115110  add.s r2, r2, r5
001f58  67002ff2  storeli.w r2, -1792(r30)
001f5c  63419ff0  loadli.w r2,  -1972(r30)
001f60  0b115110  add.s r2, r2, r5
001f64  67402ff2  storeli.w r2, -1788(r30)
001f68  63019ff0  loadli.w r2,  -1976(r30)
001f6c  0b115110  add.s r2, r2, r5
001f70  e7402ff2  storeli.w r2, -1780(r30)
001f74  63418ff0  loadli.w r2,  -1980(r30)
001f78  0b115110  add.s r2, r2, r5
001f7c  67012ff2  storeli.w r2, -1776(r30)
001f80  63417ff0  loadli.w r2,  -1988(r30)
001f84  0b115110  add.s r2, r2, r5
001f88  67412ff2  storeli.w r2, -1772(r30)
001f8c  63017ff0  loadli.w r2,  -1992(r30)
001f90  0b115110  add.s r2, r2, r5
001f94  e7012ff2  storeli.w r2, -1768(r30)
001f98  63416ff0  loadli.w r2,  -1996(r30)
001f9c  0b115110  add.s r2, r2, r5
001fa0  e7412ff2  storeli.w r2, -1764(r30)
001fa4  63016ff0  loadli.w r2,  -2000(r30)
001fa8  0b115110  add.s r2, r2, r5
001fac  67022ff2  storeli.w r2, -1760(r30)
001fb0  63415ff0  loadli.w r2,  -2004(r30)
001fb4  0b115110  add.s r2, r2, r5
001fb8  67422ff2  storeli.w r2, -1756(r30)
001fbc  63015ff0  loadli.w r2,  -2008(r30)
001fc0  0b115110  add.s r2, r2, r5
001fc4  e7022ff2  storeli.w r2, -1752(r30)
001fc8  2b01803f  lui r2, 260096
001fcc  8f001118  div.f.rn r1, r2, r1
001fd0  670f1ff6  storeli.w r1, -1040(r30)
001fd4  e3404ff0  loadli.w r1,  -2012(r30)
001fd8  8b905010  add.s r1, r1, r5
001fdc  e7421ff2  storeli.w r1, -1748(r30)
001fe0  e3004ff0  loadli.w r1,  -2016(r30)
001fe4  8b905010  add.s r1, r1, r5
001fe8  67031ff2  storeli.w r1, -1744(r30)
001fec  e3403ff0  loadli.w r1,  -2020(r30)
001ff0  8b905010  add.s r1, r1, r5
001ff4  67431ff2  storeli.w r1, -1740(r30)
001ff8  e3003ff0  loadli.w r1,  -2024(r30)
001ffc  8b905010  add.s r1, r1, r5
002000  e7031ff2  storeli.w r1, -1736(r30)
002004  e3402ff0  loadli.w r1,  -2028(r30)
002008  8b905010  add.s r1, r1, r5
00200c  e7431ff2  storeli.w r1, -1732(r30)
002010  e3002ff0  loadli.w r1,  -2032(r30)
002014  8b905010  add.s r1, r1, r5
002018  67041ff2  storeli.w r1, -1728(r30)
00201c  e3401ff0  loadli.w r1,  -2036(r30)
002020  8b905010  add.s r1, r1, r5
002024  67441ff2  storeli.w r1, -1724(r30)
002028  e3001ff0  loadli.w r1,  -2040(r30)
00202c  8b905010  add.s r1, r1, r5
002030  e7041ff2  storeli.w r1, -1720(r30)
002034  e3400ff0  loadli.w r1,  -2044(r30)
002038  8b905010  add.s r1, r1, r5
00203c  e7441ff2  storeli.w r1, -1716(r30)
002040  e3000ff0  loadli.w r1,  -2048(r30)
002044  8b905010  add.s r1, r1, r5
002048  67051ff2  storeli.w r1, -1712(r30)
00204c  e340ffef  loadli.w r1,  -2052(r30)
002050  8b905010  add.s r1, r1, r5
002054  67451ff2  storeli.w r1, -1708(r30)
002058  e300ffef  loadli.w r1,  -2056(r30)
00205c  8b905010  add.s r1, r1, r5
002060  e7051ff2  storeli.w r1, -1704(r30)
002064  e340efef  loadli.w r1,  -2060(r30)
002068  8b905010  add.s r1, r1, r5
00206c  e7451ff2  storeli.w r1, -1700(r30)
002070  e300efef  loadli.w r1,  -2064(r30)
002074  8b905010  add.s r1, r1, r5
002078  67061ff2  storeli.w r1, -1696(r30)
00207c  e340dfef  loadli.w r1,  -2068(r30)
002080  8b905010  add.s r1, r1, r5
002084  67461ff2  storeli.w r1, -1692(r30)
002088  e300dfef  loadli.w r1,  -2072(r30)
00208c  8b905010  add.s r1, r1, r5
002090  e7061ff2  storeli.w r1, -1688(r30)
002094  e340cfef  loadli.w r1,  -2076(r30)
002098  8b905010  add.s r1, r1, r5
00209c  e7461ff2  storeli.w r1, -1684(r30)
0020a0  e300cfef  loadli.w r1,  -2080(r30)
0020a4  8b905010  add.s r1, r1, r5
0020a8  67071ff2  storeli.w r1, -1680(r30)
0020ac  e340bfef  loadli.w r1,  -2084(r30)
0020b0  8b905010  add.s r1, r1, r5
0020b4  67471ff2  storeli.w r1, -1676(r30)
0020b8  e300bfef  loadli.w r1,  -2088(r30)
0020bc  8b905010  add.s r1, r1, r5
0020c0  e7071ff2  storeli.w r1, -1672(r30)
0020c4  e340afef  loadli.w r1,  -2092(r30)
0020c8  8b905010  add.s r1, r1, r5
0020cc  e7471ff2  storeli.w r1, -1668(r30)
0020d0  e300afef  loadli.w r1,  -2096(r30)
0020d4  8b905010  add.s r1, r1, r5
0020d8  67081ff2  storeli.w r1, -1664(r30)
0020dc  e3409fef  loadli.w r1,  -2100(r30)
0020e0  8b905010  add.s r1, r1, r5
0020e4  67481ff2  storeli.w r1, -1660(r30)
0020e8  e3009fef  loadli.w r1,  -2104(r30)
0020ec  8b905010  add.s r1, r1, r5
0020f0  e7081ff2  storeli.w r1, -1656(r30)
0020f4  e3408fef  loadli.w r1,  -2108(r30)
0020f8  8b905010  add.s r1, r1, r5
0020fc  e7481ff2  storeli.w r1, -1652(r30)
002100  e3008fef  loadli.w r1,  -2112(r30)
002104  8b905010  add.s r1, r1, r5
002108  67091ff2  storeli.w r1, -1648(r30)
00210c  e3407fef  loadli.w r1,  -2116(r30)
002110  8b905010  add.s r1, r1, r5
002114  67491ff2  storeli.w r1, -1644(r30)
002118  e3007fef  loadli.w r1,  -2120(r30)
00211c  8b905010  add.s r1, r1, r5
002120  e7091ff2  storeli.w r1, -1640(r30)
002124  e3406fef  loadli.w r1,  -2124(r30)
002128  8b905010  add.s r1, r1, r5
00212c  e7491ff2  storeli.w r1, -1636(r30)
002130  e3006fef  loadli.w r1,  -2128(r30)
002134  8b905010  add.s r1, r1, r5
002138  674a1ff2  storeli.w r1, -1628(r30)
00213c  e3405fef  loadli.w r1,  -2132(r30)
002140  8b905010  add.s r1, r1, r5
002144  e70a1ff2  storeli.w r1, -1624(r30)
002148  e3005fef  loadli.w r1,  -2136(r30)
00214c  8b905010  add.s r1, r1, r5
002150  e74a1ff2  storeli.w r1, -1620(r30)
002154  e3404fef  loadli.w r1,  -2140(r30)
002158  8b905010  add.s r1, r1, r5
00215c  670b1ff2  storeli.w r1, -1616(r30)
002160  e3004fef  loadli.w r1,  -2144(r30)
002164  8b905010  add.s r1, r1, r5
002168  674b1ff2  storeli.w r1, -1612(r30)
00216c  e3403fef  loadli.w r1,  -2148(r30)
002170  8b905010  add.s r1, r1, r5
002174  e70b1ff2  storeli.w r1, -1608(r30)
002178  e3003fef  loadli.w r1,  -2152(r30)
00217c  8b905010  add.s r1, r1, r5
002180  e74b1ff2  storeli.w r1, -1604(r30)
002184  e3402fef  loadli.w r1,  -2156(r30)
002188  8b905010  add.s r1, r1, r5
00218c  670c1ff2  storeli.w r1, -1600(r30)
002190  e3002fef  loadli.w r1,  -2160(r30)
002194  8b905010  add.s r1, r1, r5
002198  674c1ff2  storeli.w r1, -1596(r30)
00219c  e3401fef  loadli.w r1,  -2164(r30)
0021a0  8b905010  add.s r1, r1, r5
0021a4  e70c1ff2  storeli.w r1, -1592(r30)
0021a8  e3001fef  loadli.w r1,  -2168(r30)
0021ac  8b905010  add.s r1, r1, r5
0021b0  e74c1ff2  storeli.w r1, -1588(r30)
0021b4  e3400fef  loadli.w r1,  -2172(r30)
0021b8  8b905010  add.s r1, r1, r5
0021bc  670d1ff2  storeli.w r1, -1584(r30)
0021c0  e3000fef  loadli.w r1,  -2176(r30)
0021c4  8b905010  add.s r1, r1, r5
0021c8  674d1ff2  storeli.w r1, -1580(r30)
0021cc  e340ffee  loadli.w r1,  -2180(r30)
0021d0  8b905010  add.s r1, r1, r5
0021d4  e70d1ff2  storeli.w r1, -1576(r30)
0021d8  e300ffee  loadli.w r1,  -2184(r30)
0021dc  8b905010  add.s r1, r1, r5
0021e0  e74d1ff2  storeli.w r1, -1572(r30)
0021e4  e340efee  loadli.w r1,  -2188(r30)
0021e8  8b905010  add.s r1, r1, r5
0021ec  670e1ff2  storeli.w r1, -1568(r30)
0021f0  e300efee  loadli.w r1,  -2192(r30)
0021f4  8b905010  add.s r1, r1, r5
0021f8  674e1ff2  storeli.w r1, -1564(r30)
0021fc  e340dfee  loadli.w r1,  -2196(r30)
002200  8b905010  add.s r1, r1, r5
002204  e70e1ff2  storeli.w r1, -1560(r30)
002208  e300dfee  loadli.w r1,  -2200(r30)
00220c  8b905010  add.s r1, r1, r5
002210  e74e1ff2  storeli.w r1, -1556(r30)
002214  e340cfee  loadli.w r1,  -2204(r30)
002218  8b905010  add.s r1, r1, r5
00221c  670f1ff2  storeli.w r1, -1552(r30)
002220  e300cfee  loadli.w r1,  -2208(r30)
002224  8b905010  add.s r1, r1, r5
002228  674f1ff2  storeli.w r1, -1548(r30)
00222c  e340bfee  loadli.w r1,  -2212(r30)
002230  8b905010  add.s r1, r1, r5
002234  e70f1ff2  storeli.w r1, -1544(r30)
002238  e300bfee  loadli.w r1,  -2216(r30)
00223c  8b905010  add.s r1, r1, r5
002240  e74f1ff2  storeli.w r1, -1540(r30)
002244  e340afee  loadli.w r1,  -2220(r30)
002248  8b905010  add.s r1, r1, r5
00224c  67001ff4  storeli.w r1, -1536(r30)
002250  e300afee  loadli.w r1,  -2224(r30)
002254  8b905010  add.s r1, r1, r5
002258  67401ff4  storeli.w r1, -1532(r30)
00225c  e3409fee  loadli.w r1,  -2228(r30)
002260  8b905010  add.s r1, r1, r5
002264  e7001ff4  storeli.w r1, -1528(r30)
002268  e3009fee  loadli.w r1,  -2232(r30)
00226c  8b905010  add.s r1, r1, r5
002270  e7401ff4  storeli.w r1, -1524(r30)
002274  e3408fee  loadli.w r1,  -2236(r30)
002278  8b905010  add.s r1, r1, r5
00227c  67011ff4  storeli.w r1, -1520(r30)
002280  e3008fee  loadli.w r1,  -2240(r30)
002284  8b905010  add.s r1, r1, r5
002288  67411ff4  storeli.w r1, -1516(r30)
00228c  e3407fee  loadli.w r1,  -2244(r30)
002290  8b905010  add.s r1, r1, r5
002294  e7011ff4  storeli.w r1, -1512(r30)
002298  e3007fee  loadli.w r1,  -2248(r30)
00229c  8b905010  add.s r1, r1, r5
0022a0  e7411ff4  storeli.w r1, -1508(r30)
0022a4  e3406fee  loadli.w r1,  -2252(r30)
0022a8  8b905010  add.s r1, r1, r5
0022ac  67021ff4  storeli.w r1, -1504(r30)
0022b0  e3006fee  loadli.w r1,  -2256(r30)
0022b4  8b905010  add.s r1, r1, r5
0022b8  67421ff4  storeli.w r1, -1500(r30)
0022bc  e3405fee  loadli.w r1,  -2260(r30)
0022c0  8b905010  add.s r1, r1, r5
0022c4  e7021ff4  storeli.w r1, -1496(r30)
0022c8  e3005fee  loadli.w r1,  -2264(r30)
0022cc  8b905010  add.s r1, r1, r5
0022d0  e7421ff4  storeli.w r1, -1492(r30)
0022d4  e3404fee  loadli.w r1,  -2268(r30)
0022d8  8b905010  add.s r1, r1, r5
0022dc  67031ff4  storeli.w r1, -1488(r30)
0022e0  e3004fee  loadli.w r1,  -2272(r30)
0022e4  8b905010  add.s r1, r1, r5
0022e8  67431ff4  storeli.w r1, -1484(r30)
0022ec  e3403fee  loadli.w r1,  -2276(r30)
0022f0  8b905010  add.s r1, r1, r5
0022f4  e7431ff4  storeli.w r1, -1476(r30)
0022f8  e3003fee  loadli.w r1,  -2280(r30)
0022fc  8b905010  add.s r1, r1, r5
002300  67041ff4  storeli.w r1, -1472(r30)
002304  e3402fee  loadli.w r1,  -2284(r30)
002308  8b905010  add.s r1, r1, r5
00230c  67441ff4  storeli.w r1, -1468(r30)
002310  e3002fee  loadli.w r1,  -2288(r30)
002314  8b905010  add.s r1, r1, r5
002318  e7041ff4  storeli.w r1, -1464(r30)
00231c  e3401fee  loadli.w r1,  -2292(r30)
002320  8b905010  add.s r1, r1, r5
002324  e7441ff4  storeli.w r1, -1460(r30)
002328  e3001fee  loadli.w r1,  -2296(r30)
00232c  8b905010  add.s r1, r1, r5
002330  67051ff4  storeli.w r1, -1456(r30)
002334  e3400fee  loadli.w r1,  -2300(r30)
002338  8b905010  add.s r1, r1, r5
00233c  67451ff4  storeli.w r1, -1452(r30)
002340  e3000fee  loadli.w r1,  -2304(r30)
002344  8b905010  add.s r1, r1, r5
002348  e7051ff4  storeli.w r1, -1448(r30)
00234c  e340ffed  loadli.w r1,  -2308(r30)
002350  8b905010  add.s r1, r1, r5
002354  e7451ff4  storeli.w r1, -1444(r30)
002358  e300ffed  loadli.w r1,  -2312(r30)
00235c  8b905010  add.s r1, r1, r5
002360  67061ff4  storeli.w r1, -1440(r30)
002364  e340efed  loadli.w r1,  -2316(r30)
002368  8b905010  add.s r1, r1, r5
00236c  67461ff4  storeli.w r1, -1436(r30)
002370  e300efed  loadli.w r1,  -2320(r30)
002374  8b905010  add.s r1, r1, r5
002378  e7061ff4  storeli.w r1, -1432(r30)
00237c  e340dfed  loadli.w r1,  -2324(r30)
002380  8b905010  add.s r1, r1, r5
002384  e7461ff4  storeli.w r1, -1428(r30)
002388  e300dfed  loadli.w r1,  -2328(r30)
00238c  8b905010  add.s r1, r1, r5
002390  67071ff4  storeli.w r1, -1424(r30)
002394  e340cfed  loadli.w r1,  -2332(r30)
002398  8b905010  add.s r1, r1, r5
00239c  67471ff4  storeli.w r1, -1420(r30)
0023a0  e300cfed  loadli.w r1,  -2336(r30)
0023a4  8b905010  add.s r1, r1, r5
0023a8  e7071ff4  storeli.w r1, -1416(r30)
0023ac  e340bfed  loadli.w r1,  -2340(r30)
0023b0  8b905010  add.s r1, r1, r5
0023b4  e7471ff4  storeli.w r1, -1412(r30)
0023b8  e300bfed  loadli.w r1,  -2344(r30)
0023bc  8b905010  add.s r1, r1, r5
0023c0  67081ff4  storeli.w r1, -1408(r30)
0023c4  e340afed  loadli.w r1,  -2348(r30)
0023c8  8b905010  add.s r1, r1, r5
0023cc  67481ff4  storeli.w r1, -1404(r30)
0023d0  e300afed  loadli.w r1,  -2352(r30)
0023d4  8b905010  add.s r1, r1, r5
0023d8  e7081ff4  storeli.w r1, -1400(r30)
0023dc  e3409fed  loadli.w r1,  -2356(r30)
0023e0  8b905010  add.s r1, r1, r5
0023e4  e7481ff4  storeli.w r1, -1396(r30)
0023e8  e3009fed  loadli.w r1,  -2360(r30)
0023ec  8b905010  add.s r1, r1, r5
0023f0  67091ff4  storeli.w r1, -1392(r30)
0023f4  e3408fed  loadli.w r1,  -2364(r30)
0023f8  8b905010  add.s r1, r1, r5
0023fc  67491ff4  storeli.w r1, -1388(r30)
002400  e3008fed  loadli.w r1,  -2368(r30)
002404  8b905010  add.s r1, r1, r5
002408  e7091ff4  storeli.w r1, -1384(r30)
00240c  e3407fed  loadli.w r1,  -2372(r30)
002410  8b905010  add.s r1, r1, r5
002414  e7491ff4  storeli.w r1, -1380(r30)
002418  e3007fed  loadli.w r1,  -2376(r30)
00241c  8b905010  add.s r1, r1, r5
002420  670a1ff4  storeli.w r1, -1376(r30)
002424  e3406fed  loadli.w r1,  -2380(r30)
002428  8b905010  add.s r1, r1, r5
00242c  e70a1ff4  storeli.w r1, -1368(r30)
002430  e3006fed  loadli.w r1,  -2384(r30)
002434  8b905010  add.s r1, r1, r5
002438  674a1ff4  storeli.w r1, -1372(r30)
00243c  e3405fed  loadli.w r1,  -2388(r30)
002440  8b905010  add.s r1, r1, r5
002444  e74a1ff4  storeli.w r1, -1364(r30)
002448  e3005fed  loadli.w r1,  -2392(r30)
00244c  8b905010  add.s r1, r1, r5
002450  670b1ff4  storeli.w r1, -1360(r30)
002454  e3404fed  loadli.w r1,  -2396(r30)
002458  8b905010  add.s r1, r1, r5
00245c  674b1ff4  storeli.w r1, -1356(r30)
002460  e3004fed  loadli.w r1,  -2400(r30)
002464  8b905010  add.s r1, r1, r5
002468  e70b1ff4  storeli.w r1, -1352(r30)
00246c  e3403fed  loadli.w r1,  -2404(r30)
002470  8b905010  add.s r1, r1, r5
002474  e74b1ff4  storeli.w r1, -1348(r30)
002478  e3003fed  loadli.w r1,  -2408(r30)
00247c  8b905010  add.s r1, r1, r5
002480  670c1ff4  storeli.w r1, -1344(r30)
002484  e3402fed  loadli.w r1,  -2412(r30)
002488  8b905010  add.s r1, r1, r5
00248c  67421ff6  storeli.w r1, -1244(r30)
002490  9f808400  addli r1, r9, 64
002494  e7001ff2  storeli.w r1, -1784(r30)
002498  9f800401  addli r1, r9, 128
00249c  670a1ff2  storeli.w r1, -1632(r30)
0024a0  9f808401  addli r1, r9, 192
0024a4  e7031ff4  storeli.w r1, -1480(r30)
0024a8  9f000000  addli r1, zero, 0
0024ac  00a00000  mfence { lm }
0024b0  1f010ffe  addli r2, r30, -256
0024b4  8b921410  add.s r5, r9, r1
0024b8  12329002  vadd.s.mz vr4{mr1}, zero, vr9
0024bc  92329002  vadd.s.mz vr5{mr1}, zero, vr9
0024c0  12309002  vadd.s.mz vr0{mr1}, zero, vr9
0024c4  92309002  vadd.s.mz vr1{mr1}, zero, vr9
0024c8  0b161110  add.s r12, r2, r1
0024cc  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
0024d0  06330100  vfp162float_l.rn vr6, vr2
0024d4  86730100  vfp162float_h.rn vr7, vr2
0024d8  6b35e602  load.hu r10, 46(r12)
0024dc  eb360600  load.hu r13, 0(r12)
0024e0  eb33e601  load.hu r7, 30(r12)
0024e4  eb302602  load.hu r1, 34(r12)
0024e8  6b372600  load.hu r14, 2(r12)
0024ec  eb374600  load.hu r15, 4(r12)
0024f0  6b3e6600  load.hu r28, 6(r12)
0024f4  eb3a8600  load.hu r21, 8(r12)
0024f8  6b3aa600  load.hu r20, 10(r12)
0024fc  eb39c600  load.hu r19, 12(r12)
002500  eb38e600  load.hu r17, 14(r12)
002504  6b380601  load.hu r16, 16(r12)
002508  6b392601  load.hu r18, 18(r12)
00250c  6b3b4601  load.hu r22, 20(r12)
002510  eb3b6601  load.hu r23, 22(r12)
002514  6b3c8601  load.hu r24, 24(r12)
002518  eb3da601  load.hu r27, 26(r12)
00251c  eb3cc601  load.hu r25, 28(r12)
002520  6b3d0602  load.hu r26, 32(r12)
002524  6b314602  load.hu r2, 36(r12)
002528  eb316602  load.hu r3, 38(r12)
00252c  6b328602  load.hu r4, 40(r12)
002530  6b34a602  load.hu r8, 42(r12)
002534  eb34c602  load.hu r9, 44(r12)
002538  674faff6  storeli.w r10, -1036(r30)
00253c  6b350603  load.hu r10, 48(r12)
002540  b3960620  hfloat2float.rn r13, r13
002544  b3930320  hfloat2float.rn r7, r7
002548  b3900020  hfloat2float.rn r1, r1
00254c  e70faff6  storeli.w r10, -1032(r30)
002550  6b352603  load.hu r10, 50(r12)
002554  e74faff6  storeli.w r10, -1028(r30)
002558  6b354603  load.hu r10, 52(r12)
00255c  6700aff8  storeli.w r10, -1024(r30)
002560  6b356603  load.hu r10, 54(r12)
002564  6740aff8  storeli.w r10, -1020(r30)
002568  6b358603  load.hu r10, 56(r12)
00256c  e700aff8  storeli.w r10, -1016(r30)
002570  6b35a603  load.hu r10, 58(r12)
002574  e740aff8  storeli.w r10, -1012(r30)
002578  6b35c603  load.hu r10, 60(r12)
00257c  6701aff8  storeli.w r10, -1008(r30)
002580  6b35e603  load.hu r10, 62(r12)
002584  e701aff8  storeli.w r10, -1000(r30)
002588  6b350604  load.hu r10, 64(r12)
00258c  6741aff8  storeli.w r10, -1004(r30)
002590  6b352604  load.hu r10, 66(r12)
002594  e741aff8  storeli.w r10, -996(r30)
002598  6b354604  load.hu r10, 68(r12)
00259c  6702aff8  storeli.w r10, -992(r30)
0025a0  6b356604  load.hu r10, 70(r12)
0025a4  6742aff8  storeli.w r10, -988(r30)
0025a8  6b358604  load.hu r10, 72(r12)
0025ac  e702aff8  storeli.w r10, -984(r30)
0025b0  6b35a604  load.hu r10, 74(r12)
0025b4  e742aff8  storeli.w r10, -980(r30)
0025b8  6b35c604  load.hu r10, 76(r12)
0025bc  6703aff8  storeli.w r10, -976(r30)
0025c0  6b35e604  load.hu r10, 78(r12)
0025c4  6743aff8  storeli.w r10, -972(r30)
0025c8  6b350605  load.hu r10, 80(r12)
0025cc  e703aff8  storeli.w r10, -968(r30)
0025d0  6b352605  load.hu r10, 82(r12)
0025d4  e743aff8  storeli.w r10, -964(r30)
0025d8  6b354605  load.hu r10, 84(r12)
0025dc  6704aff8  storeli.w r10, -960(r30)
0025e0  6b356605  load.hu r10, 86(r12)
0025e4  6744aff8  storeli.w r10, -956(r30)
0025e8  6b358605  load.hu r10, 88(r12)
0025ec  e704aff8  storeli.w r10, -952(r30)
0025f0  6b35a605  load.hu r10, 90(r12)
0025f4  e744aff8  storeli.w r10, -948(r30)
0025f8  6b35c605  load.hu r10, 92(r12)
0025fc  6705aff8  storeli.w r10, -944(r30)
002600  6b35e605  load.hu r10, 94(r12)
002604  e705aff8  storeli.w r10, -936(r30)
002608  6b350606  load.hu r10, 96(r12)
00260c  6745aff8  storeli.w r10, -940(r30)
002610  6b352606  load.hu r10, 98(r12)
002614  e745aff8  storeli.w r10, -932(r30)
002618  6b354606  load.hu r10, 100(r12)
00261c  6706aff8  storeli.w r10, -928(r30)
002620  6b356606  load.hu r10, 102(r12)
002624  6746aff8  storeli.w r10, -924(r30)
002628  6b358606  load.hu r10, 104(r12)
00262c  e706aff8  storeli.w r10, -920(r30)
002630  6b35a606  load.hu r10, 106(r12)
002634  e746aff8  storeli.w r10, -916(r30)
002638  6b35c606  load.hu r10, 108(r12)
00263c  6707aff8  storeli.w r10, -912(r30)
002640  6b35e606  load.hu r10, 110(r12)
002644  6747aff8  storeli.w r10, -908(r30)
002648  6b350607  load.hu r10, 112(r12)
00264c  e707aff8  storeli.w r10, -904(r30)
002650  6b352607  load.hu r10, 114(r12)
002654  e747aff8  storeli.w r10, -900(r30)
002658  6b354607  load.hu r10, 116(r12)
00265c  6708aff8  storeli.w r10, -896(r30)
002660  6b356607  load.hu r10, 118(r12)
002664  670caff8  storeli.w r10, -832(r30)
002668  6b358607  load.hu r10, 120(r12)
00266c  6700affa  storeli.w r10, -768(r30)
002670  6b35a607  load.hu r10, 122(r12)
002674  6704affa  storeli.w r10, -704(r30)
002678  6b35c607  load.hu r10, 124(r12)
00267c  6b36e607  load.hu r12, 126(r12)
002680  6708affa  storeli.w r10, -640(r30)
002684  1f150000  addli r10, zero, 1
002688  670ccffa  storeli.w r12, -576(r30)
00268c  33160720  hfloat2float.rn r12, r14
002690  c2918202  vload_mask16.mz vr3{mr1}, 64(r5)
002694  7e0105e0  vmmov mr2, r10
002698  1f250000  addli r10, zero, 2
00269c  6aa24634  vor.u.mh vr4{mr2}, r13, vr4
0026a0  7e0005e0  vmmov mr0, r10
0026a4  1f450000  addli r10, zero, 4
0026a8  fe0105e0  vmmov mr3, r10
0026ac  1f051000  addli r10, zero, 8
0026b0  6a224630  vor.u.mh vr4{mr0}, r12, vr4
0026b4  33960720  hfloat2float.rn r12, r15
0026b8  7e0005e0  vmmov mr0, r10
0026bc  1f052000  addli r10, zero, 16
0026c0  6a224636  vor.u.mh vr4{mr3}, r12, vr4
0026c4  33160e20  hfloat2float.rn r12, r28
0026c8  fe0105e0  vmmov mr3, r10
0026cc  1f054000  addli r10, zero, 32
0026d0  6a224630  vor.u.mh vr4{mr0}, r12, vr4
0026d4  33960a20  hfloat2float.rn r12, r21
0026d8  7e0005e0  vmmov mr0, r10
0026dc  1f058000  addli r10, zero, 64
0026e0  6a224636  vor.u.mh vr4{mr3}, r12, vr4
0026e4  33160a20  hfloat2float.rn r12, r20
0026e8  6a224630  vor.u.mh vr4{mr0}, r12, vr4
0026ec  33960920  hfloat2float.rn r12, r19
0026f0  7e0005e0  vmmov mr0, r10
0026f4  1f050001  addli r10, zero, 128
0026f8  6a224630  vor.u.mh vr4{mr0}, r12, vr4
0026fc  33960820  hfloat2float.rn r12, r17
002700  7e0005e0  vmmov mr0, r10
002704  1f050002  addli r10, zero, 256
002708  7e0105e0  vmmov mr2, r10
00270c  1f050004  addli r10, zero, 512
002710  6a224630  vor.u.mh vr4{mr0}, r12, vr4
002714  33160820  hfloat2float.rn r12, r16
002718  7e0005e0  vmmov mr0, r10
00271c  1f050008  addli r10, zero, 1024
002720  6a224634  vor.u.mh vr4{mr2}, r12, vr4
002724  33160920  hfloat2float.rn r12, r18
002728  6a224630  vor.u.mh vr4{mr0}, r12, vr4
00272c  33160b20  hfloat2float.rn r12, r22
002730  7e0005e0  vmmov mr0, r10
002734  1f050010  addli r10, zero, 2048
002738  6a224630  vor.u.mh vr4{mr0}, r12, vr4
00273c  33960b20  hfloat2float.rn r12, r23
002740  7e0005e0  vmmov mr0, r10
002744  1f050020  addli r10, zero, 4096
002748  6a224630  vor.u.mh vr4{mr0}, r12, vr4
00274c  33160c20  hfloat2float.rn r12, r24
002750  7e0005e0  vmmov mr0, r10
002754  1f050040  addli r10, zero, 8192
002758  6a224630  vor.u.mh vr4{mr0}, r12, vr4
00275c  33960d20  hfloat2float.rn r12, r27
002760  7e0005e0  vmmov mr0, r10
002764  2b450000  lui r10, 4
002768  6a224630  vor.u.mh vr4{mr0}, r12, vr4
00276c  33960c20  hfloat2float.rn r12, r25
002770  7e0005e0  vmmov mr0, r10
002774  2b850000  lui r10, 8
002778  6a224630  vor.u.mh vr4{mr0}, r12, vr4
00277c  7e0005e0  vmmov mr0, r10
002780  33160d20  hfloat2float.rn r12, r26
002784  6aa24330  vor.u.mh vr4{mr0}, r7, vr4
002788  9f130000  addli r7, zero, 1
00278c  7e8003e0  vmmov mr0, r7
002790  9f230000  addli r7, zero, 2
002794  ea225630  vor.u.mh vr5{mr0}, r12, vr5
002798  7e8003e0  vmmov mr0, r7
00279c  16116202  vadd.f.mz.rn vr2{mr1}, vr4, vr6
0027a0  06f30100  vfp162float_h.rn vr6, vr3
0027a4  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0027a8  b3100120  hfloat2float.rn r1, r2
0027ac  1f410000  addli r2, zero, 4
0027b0  7e0001e0  vmmov mr0, r2
0027b4  1f011000  addli r2, zero, 8
0027b8  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0027bc  b3900120  hfloat2float.rn r1, r3
0027c0  7e0001e0  vmmov mr0, r2
0027c4  1f014000  addli r2, zero, 32
0027c8  ab810000  lui r3, 8
0027cc  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0027d0  b3100220  hfloat2float.rn r1, r4
0027d4  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
0027d8  b3100420  hfloat2float.rn r1, r8
0027dc  fe0101e0  vmmov mr3, r2
0027e0  1f018000  addli r2, zero, 64
0027e4  7e0001e0  vmmov mr0, r2
0027e8  1f010001  addli r2, zero, 128
0027ec  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
0027f0  b3900420  hfloat2float.rn r1, r9
0027f4  9f040ffc  addli r9, r30, -512
0027f8  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0027fc  e340eff7  loadli.w r1,  -1036(r30)
002800  7e0001e0  vmmov mr0, r2
002804  1f010004  addli r2, zero, 512
002808  b3900020  hfloat2float.rn r1, r1
00280c  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
002810  e300fff7  loadli.w r1,  -1032(r30)
002814  b3900020  hfloat2float.rn r1, r1
002818  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
00281c  e340fff7  loadli.w r1,  -1028(r30)
002820  7e0101e0  vmmov mr2, r2
002824  1f010008  addli r2, zero, 1024
002828  b3900020  hfloat2float.rn r1, r1
00282c  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
002830  e3000ff8  loadli.w r1,  -1024(r30)
002834  7e0101e0  vmmov mr2, r2
002838  1f010010  addli r2, zero, 2048
00283c  b3900020  hfloat2float.rn r1, r1
002840  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
002844  e3400ff8  loadli.w r1,  -1020(r30)
002848  7e0101e0  vmmov mr2, r2
00284c  1f010020  addli r2, zero, 4096
002850  b3900020  hfloat2float.rn r1, r1
002854  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
002858  e3001ff8  loadli.w r1,  -1016(r30)
00285c  7e0101e0  vmmov mr2, r2
002860  1f010040  addli r2, zero, 8192
002864  b3900020  hfloat2float.rn r1, r1
002868  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
00286c  e3401ff8  loadli.w r1,  -1012(r30)
002870  7e0101e0  vmmov mr2, r2
002874  2b410000  lui r2, 4
002878  b3900020  hfloat2float.rn r1, r1
00287c  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
002880  e3002ff8  loadli.w r1,  -1008(r30)
002884  7e0101e0  vmmov mr2, r2
002888  b3900020  hfloat2float.rn r1, r1
00288c  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
002890  e3003ff8  loadli.w r1,  -1000(r30)
002894  63412ff8  loadli.w r2,  -1004(r30)
002898  7e8101e0  vmmov mr2, r3
00289c  ab810000  lui r3, 8
0028a0  b3900020  hfloat2float.rn r1, r1
0028a4  33110120  hfloat2float.rn r2, r2
0028a8  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
0028ac  9f100000  addli r1, zero, 1
0028b0  7e8000e0  vmmov mr0, r1
0028b4  6a200130  vor.u.mh vr0{mr0}, r2, vr0
0028b8  e3403ff8  loadli.w r1,  -996(r30)
0028bc  1f210000  addli r2, zero, 2
0028c0  16927202  vadd.f.mz.rn vr4{mr1}, vr5, vr7
0028c4  86b20100  vfp162float_l.rn vr5, vr3
0028c8  86110100  vfloat2fp16_l.rn vr3, vr2
0028cc  86510200  vfloat2fp16_h.rn vr3, vr4
0028d0  06b10100  vfp162float_l.rn vr2, vr3
0028d4  7e0101e0  vmmov mr2, r2
0028d8  1f410000  addli r2, zero, 4
0028dc  12112302  vadd.f.mz.rn vr2{mr1}, r6, vr2
0028e0  06f20100  vfp162float_h.rn vr4, vr3
0028e4  92114302  vadd.f.mz.rn vr3{mr1}, r6, vr4
0028e8  b3900020  hfloat2float.rn r1, r1
0028ec  7e0001e0  vmmov mr0, r2
0028f0  1f011000  addli r2, zero, 8
0028f4  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
0028f8  e3004ff8  loadli.w r1,  -992(r30)
0028fc  b3900020  hfloat2float.rn r1, r1
002900  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
002904  e3404ff8  loadli.w r1,  -988(r30)
002908  7e0001e0  vmmov mr0, r2
00290c  1f012000  addli r2, zero, 16
002910  7e0101e0  vmmov mr2, r2
002914  1f018000  addli r2, zero, 64
002918  b3900020  hfloat2float.rn r1, r1
00291c  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
002920  e3005ff8  loadli.w r1,  -984(r30)
002924  7e0001e0  vmmov mr0, r2
002928  1f010001  addli r2, zero, 128
00292c  b3900020  hfloat2float.rn r1, r1
002930  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
002934  e3405ff8  loadli.w r1,  -980(r30)
002938  b3900020  hfloat2float.rn r1, r1
00293c  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
002940  e3006ff8  loadli.w r1,  -976(r30)
002944  b3900020  hfloat2float.rn r1, r1
002948  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
00294c  e3406ff8  loadli.w r1,  -972(r30)
002950  7e0001e0  vmmov mr0, r2
002954  1f010002  addli r2, zero, 256
002958  b3900020  hfloat2float.rn r1, r1
00295c  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
002960  e3007ff8  loadli.w r1,  -968(r30)
002964  7e0001e0  vmmov mr0, r2
002968  1f010004  addli r2, zero, 512
00296c  7e0101e0  vmmov mr2, r2
002970  1f010008  addli r2, zero, 1024
002974  b3900020  hfloat2float.rn r1, r1
002978  fe0101e0  vmmov mr3, r2
00297c  1f010010  addli r2, zero, 2048
002980  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
002984  e3407ff8  loadli.w r1,  -964(r30)
002988  7e0001e0  vmmov mr0, r2
00298c  1f010020  addli r2, zero, 4096
002990  b3900020  hfloat2float.rn r1, r1
002994  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
002998  e3008ff8  loadli.w r1,  -960(r30)
00299c  b3900020  hfloat2float.rn r1, r1
0029a0  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
0029a4  e3408ff8  loadli.w r1,  -956(r30)
0029a8  b3900020  hfloat2float.rn r1, r1
0029ac  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0029b0  e3009ff8  loadli.w r1,  -952(r30)
0029b4  7e0001e0  vmmov mr0, r2
0029b8  1f010040  addli r2, zero, 8192
0029bc  b3900020  hfloat2float.rn r1, r1
0029c0  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0029c4  e3409ff8  loadli.w r1,  -948(r30)
0029c8  7e0001e0  vmmov mr0, r2
0029cc  2b410000  lui r2, 4
0029d0  b3900020  hfloat2float.rn r1, r1
0029d4  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0029d8  e300aff8  loadli.w r1,  -944(r30)
0029dc  7e0001e0  vmmov mr0, r2
0029e0  b3900020  hfloat2float.rn r1, r1
0029e4  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0029e8  e300bff8  loadli.w r1,  -936(r30)
0029ec  6341aff8  loadli.w r2,  -940(r30)
0029f0  7e8001e0  vmmov mr0, r3
0029f4  ab810000  lui r3, 8
0029f8  b3900020  hfloat2float.rn r1, r1
0029fc  33110120  hfloat2float.rn r2, r2
002a00  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
002a04  9f100000  addli r1, zero, 1
002a08  7e8000e0  vmmov mr0, r1
002a0c  ea201130  vor.u.mh vr1{mr0}, r2, vr1
002a10  e340bff8  loadli.w r1,  -932(r30)
002a14  1f210000  addli r2, zero, 2
002a18  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
002a1c  7e0001e0  vmmov mr0, r2
002a20  1f410000  addli r2, zero, 4
002a24  b3900020  hfloat2float.rn r1, r1
002a28  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002a2c  e300cff8  loadli.w r1,  -928(r30)
002a30  7e0001e0  vmmov mr0, r2
002a34  1f011000  addli r2, zero, 8
002a38  b3900020  hfloat2float.rn r1, r1
002a3c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002a40  e340cff8  loadli.w r1,  -924(r30)
002a44  7e0001e0  vmmov mr0, r2
002a48  1f012000  addli r2, zero, 16
002a4c  b3900020  hfloat2float.rn r1, r1
002a50  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002a54  e300dff8  loadli.w r1,  -920(r30)
002a58  7e0001e0  vmmov mr0, r2
002a5c  1f014000  addli r2, zero, 32
002a60  b3900020  hfloat2float.rn r1, r1
002a64  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002a68  e340dff8  loadli.w r1,  -916(r30)
002a6c  7e0001e0  vmmov mr0, r2
002a70  1f018000  addli r2, zero, 64
002a74  b3900020  hfloat2float.rn r1, r1
002a78  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002a7c  e300eff8  loadli.w r1,  -912(r30)
002a80  7e0001e0  vmmov mr0, r2
002a84  1f010001  addli r2, zero, 128
002a88  b3900020  hfloat2float.rn r1, r1
002a8c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002a90  e340eff8  loadli.w r1,  -908(r30)
002a94  7e0001e0  vmmov mr0, r2
002a98  1f010002  addli r2, zero, 256
002a9c  b3900020  hfloat2float.rn r1, r1
002aa0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002aa4  e300fff8  loadli.w r1,  -904(r30)
002aa8  7e0001e0  vmmov mr0, r2
002aac  1f010010  addli r2, zero, 2048
002ab0  b3900020  hfloat2float.rn r1, r1
002ab4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002ab8  e340fff8  loadli.w r1,  -900(r30)
002abc  7e0001e0  vmmov mr0, r2
002ac0  1f010020  addli r2, zero, 4096
002ac4  b3900020  hfloat2float.rn r1, r1
002ac8  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002acc  e3000ff9  loadli.w r1,  -896(r30)
002ad0  b3900020  hfloat2float.rn r1, r1
002ad4  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002ad8  e3008ff9  loadli.w r1,  -832(r30)
002adc  b3900020  hfloat2float.rn r1, r1
002ae0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002ae4  e3000ffa  loadli.w r1,  -768(r30)
002ae8  7e0001e0  vmmov mr0, r2
002aec  1f010040  addli r2, zero, 8192
002af0  b3900020  hfloat2float.rn r1, r1
002af4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002af8  e3008ffa  loadli.w r1,  -704(r30)
002afc  7e0001e0  vmmov mr0, r2
002b00  2b410000  lui r2, 4
002b04  b3900020  hfloat2float.rn r1, r1
002b08  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002b0c  e3000ffb  loadli.w r1,  -640(r30)
002b10  7e0001e0  vmmov mr0, r2
002b14  1b811500  andi r2, r11, 1
002b18  9f050000  addli r11, zero, 0
002b1c  b3900020  hfloat2float.rn r1, r1
002b20  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002b24  e3008ffb  loadli.w r1,  -576(r30)
002b28  7e8001e0  vmmov mr0, r3
002b2c  b3900020  hfloat2float.rn r1, r1
002b30  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002b34  e300eff7  loadli.w r1,  -1040(r30)
002b38  0a912002  vmul.f.mz.rn vr2{mr1}, r1, vr2
002b3c  8a913002  vmul.f.mz.rn vr3{mr1}, r1, vr3
002b40  06120100  vfloat2fp16_l.rn vr4, vr2
002b44  06d20100  vfloat2fp16_h.rn vr4, vr3
002b48  46904202  vstore_mask16.mz vr4{mr1}, 0(r5)
002b4c  96906002  vadd.f.mz.rn vr1{mr1}, vr1, vr6
002b50  06110000  vfloat2fp16_l.rn vr2, vr0
002b54  06d10000  vfloat2fp16_h.rn vr2, vr1
002b58  06300100  vfp162float_l.rn vr0, vr2
002b5c  86700100  vfp162float_h.rn vr1, vr2
002b60  12100302  vadd.f.mz.rn vr0{mr1}, r6, vr0
002b64  92101302  vadd.f.mz.rn vr1{mr1}, r6, vr1
002b68  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
002b6c  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002b70  06110000  vfloat2fp16_l.rn vr2, vr0
002b74  06d10000  vfloat2fp16_h.rn vr2, vr1
002b78  46942202  vstore_mask16.mz vr2{mr1}, 64(r5)
002b7c  9f000001  addli r1, zero, 128
002b80  00a00000  mfence { lm }
002b84  bb3401fc  bneq r2, zero, -1748
002b88  e302cff1  loadli.w r5,  -1824(r30)
002b8c  e300dff1  loadli.w r1,  -1816(r30)
002b90  e341cff1  loadli.w r3,  -1820(r30)
002b94  9f160000  addli r13, zero, 1
002b98  eb5d0f01  load.d r[28:29], 16(r30)
002b9c  1f090ffc  addli r18, r30, -512
002ba0  9f280000  addli r17, zero, 2
002ba4  9fa40400  addli r9, r9, 2
002ba8  1f450900  addli r10, r18, 4
002bac  33970228  sext_int2long r[15:16], r5
002bb0  e342bff1  loadli.w r5,  -1828(r30)
002bb4  b3900028  sext_int2long r[2:3], r1
002bb8  b3910128  sext_int2long r[4:5], r3
002bbc  97b0d002  sll.d r[2:3], r[2:3], r13
002bc0  b3930228  sext_int2long r[8:9], r5
002bc4  e302bff1  loadli.w r5,  -1832(r30)
002bc8  b3950228  sext_int2long r[12:13], r5
002bcc  e342aff1  loadli.w r5,  -1836(r30)
002bd0  339a0228  sext_int2long r[21:22], r5
002bd4  e302aff1  loadli.w r5,  -1840(r30)
002bd8  b39c0228  sext_int2long r[26:27], r5
002bdc  e3429ff1  loadli.w r5,  -1844(r30)
002be0  339b0228  sext_int2long r[23:24], r5
002be4  e3029ff1  loadli.w r5,  -1848(r30)
002be8  b3920228  sext_int2long r[6:7], r5
002bec  73305fd8  store.d r[6:7], -640(r30)
002bf0  e3428ff1  loadli.w r5,  -1852(r30)
002bf4  b3920228  sext_int2long r[6:7], r5
002bf8  73305fd4  store.d r[6:7], -704(r30)
002bfc  e3028ff1  loadli.w r5,  -1856(r30)
002c00  b3920228  sext_int2long r[6:7], r5
002c04  73305fdc  store.d r[6:7], -576(r30)
002c08  97b2d102  sll.d r[6:7], r[4:5], r13
002c0c  8ba11d10  add.ul r[4:5], r[28:29], r[2:3]
002c10  ab0000f0  lui r1, 983040
002c14  2b0100f0  lui r2, 983040
002c18  97901800  or r1, r17, r1
002c1c  8ba25d10  add.ul r[6:7], r[28:29], r[6:7]
002c20  17912800  or r2, r17, r2
002c24  ffb09100  s_lm2gm r1, r9, 0(r[4:5])
002c28  7fb1a200  s_lm2gm r2, r10, 0(r[6:7])
002c2c  9730d702  sll.d r[2:3], r[15:16], r13
002c30  ab0200f0  lui r5, 983040
002c34  97b1d302  sll.d r[4:5], r[8:9], r13
002c38  9f630900  addli r7, r18, 6
002c3c  2b0300f0  lui r6, 983040
002c40  1f041900  addli r8, r18, 8
002c44  e304eff4  loadli.w r9,  -1424(r30)
002c48  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002c4c  97925800  or r5, r17, r5
002c50  8ba13d10  add.ul r[4:5], r[28:29], r[4:5]
002c54  17936800  or r6, r17, r6
002c58  b3940428  sext_int2long r[10:11], r9
002c5c  ffb27000  s_lm2gm r5, r7, 0(r[2:3])
002c60  97b0d502  sll.d r[2:3], r[12:13], r13
002c64  ab0200f0  lui r5, 983040
002c68  9f231900  addli r7, r18, 10
002c6c  7fb38100  s_lm2gm r6, r8, 0(r[4:5])
002c70  9731da02  sll.d r[4:5], r[21:22], r13
002c74  2b0300f0  lui r6, 983040
002c78  1f441900  addli r8, r18, 12
002c7c  e305fff4  loadli.w r11,  -1416(r30)
002c80  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002c84  97925800  or r5, r17, r5
002c88  8ba13d10  add.ul r[4:5], r[28:29], r[4:5]
002c8c  17936800  or r6, r17, r6
002c90  b3950528  sext_int2long r[12:13], r11
002c94  ffb27000  s_lm2gm r5, r7, 0(r[2:3])
002c98  97b0dc02  sll.d r[2:3], r[26:27], r13
002c9c  ab0200f0  lui r5, 983040
002ca0  9f631900  addli r7, r18, 14
002ca4  7fb38100  s_lm2gm r6, r8, 0(r[4:5])
002ca8  9731db02  sll.d r[4:5], r[23:24], r13
002cac  2b0300f0  lui r6, 983040
002cb0  1f042900  addli r8, r18, 16
002cb4  1f1d0000  addli r26, zero, 1
002cb8  ab0c00f0  lui r25, 983040
002cbc  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002cc0  97925800  or r5, r17, r5
002cc4  8ba13d10  add.ul r[4:5], r[28:29], r[4:5]
002cc8  17936800  or r6, r17, r6
002ccc  979c9801  or r25, r17, r25
002cd0  ffb27000  s_lm2gm r5, r7, 0(r[2:3])
002cd4  eb500fd8  load.d r[2:3], -640(r30)
002cd8  7fb38100  s_lm2gm r6, r8, 0(r[4:5])
002cdc  eb510fd4  load.d r[4:5], -704(r30)
002ce0  ab0200f0  lui r5, 983040
002ce4  9f232900  addli r7, r18, 18
002ce8  2b0300f0  lui r6, 983040
002cec  1f442900  addli r8, r18, 20
002cf0  97925800  or r5, r17, r5
002cf4  17936800  or r6, r17, r6
002cf8  97b0d002  sll.d r[2:3], r[2:3], r13
002cfc  97b1d102  sll.d r[4:5], r[4:5], r13
002d00  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002d04  8ba13d10  add.ul r[4:5], r[28:29], r[4:5]
002d08  ffb27000  s_lm2gm r5, r7, 0(r[2:3])
002d0c  eb500fdc  load.d r[2:3], -576(r30)
002d10  e342dff1  loadli.w r5,  -1812(r30)
002d14  7fb38100  s_lm2gm r6, r8, 0(r[4:5])
002d18  ab0100f0  lui r3, 983040
002d1c  1f622900  addli r4, r18, 22
002d20  e303dff4  loadli.w r7,  -1432(r30)
002d24  97913800  or r3, r17, r3
002d28  97b0d002  sll.d r[2:3], r[2:3], r13
002d2c  b3920228  sext_int2long r[6:7], r5
002d30  b3930328  sext_int2long r[8:9], r7
002d34  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002d38  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002d3c  97b0d202  sll.d r[2:3], r[6:7], r13
002d40  e302eff1  loadli.w r5,  -1808(r30)
002d44  ab0100f0  lui r3, 983040
002d48  1f023900  addli r4, r18, 24
002d4c  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002d50  97913800  or r3, r17, r3
002d54  b3920228  sext_int2long r[6:7], r5
002d58  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002d5c  ab0100f0  lui r3, 983040
002d60  1f223900  addli r4, r18, 26
002d64  97b0d202  sll.d r[2:3], r[6:7], r13
002d68  e342eff1  loadli.w r5,  -1804(r30)
002d6c  97913800  or r3, r17, r3
002d70  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002d74  b3920228  sext_int2long r[6:7], r5
002d78  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002d7c  ab0100f0  lui r3, 983040
002d80  1f423900  addli r4, r18, 28
002d84  97b0d202  sll.d r[2:3], r[6:7], r13
002d88  e302fff1  loadli.w r5,  -1800(r30)
002d8c  97913800  or r3, r17, r3
002d90  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002d94  b3920228  sext_int2long r[6:7], r5
002d98  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002d9c  ab0100f0  lui r3, 983040
002da0  1f623900  addli r4, r18, 30
002da4  97b0d202  sll.d r[2:3], r[6:7], r13
002da8  e342fff1  loadli.w r5,  -1796(r30)
002dac  97913800  or r3, r17, r3
002db0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002db4  b3920228  sext_int2long r[6:7], r5
002db8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002dbc  ab0100f0  lui r3, 983040
002dc0  1f024900  addli r4, r18, 32
002dc4  97b0d202  sll.d r[2:3], r[6:7], r13
002dc8  e3020ff2  loadli.w r5,  -1792(r30)
002dcc  97913800  or r3, r17, r3
002dd0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002dd4  b3920228  sext_int2long r[6:7], r5
002dd8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002ddc  ab0100f0  lui r3, 983040
002de0  1f224900  addli r4, r18, 34
002de4  97b0d202  sll.d r[2:3], r[6:7], r13
002de8  e3420ff2  loadli.w r5,  -1788(r30)
002dec  97913800  or r3, r17, r3
002df0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002df4  b3920228  sext_int2long r[6:7], r5
002df8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002dfc  ab0100f0  lui r3, 983040
002e00  1f424900  addli r4, r18, 36
002e04  97b0d202  sll.d r[2:3], r[6:7], r13
002e08  e3421ff2  loadli.w r5,  -1780(r30)
002e0c  97913800  or r3, r17, r3
002e10  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002e14  b3920228  sext_int2long r[6:7], r5
002e18  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002e1c  ab0100f0  lui r3, 983040
002e20  1f624900  addli r4, r18, 38
002e24  97b0d202  sll.d r[2:3], r[6:7], r13
002e28  e3022ff2  loadli.w r5,  -1776(r30)
002e2c  97913800  or r3, r17, r3
002e30  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002e34  b3920228  sext_int2long r[6:7], r5
002e38  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002e3c  ab0100f0  lui r3, 983040
002e40  1f025900  addli r4, r18, 40
002e44  97b0d202  sll.d r[2:3], r[6:7], r13
002e48  e3422ff2  loadli.w r5,  -1772(r30)
002e4c  97913800  or r3, r17, r3
002e50  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002e54  b3920228  sext_int2long r[6:7], r5
002e58  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002e5c  ab0100f0  lui r3, 983040
002e60  1f225900  addli r4, r18, 42
002e64  97b0d202  sll.d r[2:3], r[6:7], r13
002e68  e3023ff2  loadli.w r5,  -1768(r30)
002e6c  97913800  or r3, r17, r3
002e70  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002e74  b3920228  sext_int2long r[6:7], r5
002e78  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002e7c  ab0100f0  lui r3, 983040
002e80  1f425900  addli r4, r18, 44
002e84  97b0d202  sll.d r[2:3], r[6:7], r13
002e88  e3423ff2  loadli.w r5,  -1764(r30)
002e8c  97913800  or r3, r17, r3
002e90  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002e94  b3920228  sext_int2long r[6:7], r5
002e98  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002e9c  ab0100f0  lui r3, 983040
002ea0  1f625900  addli r4, r18, 46
002ea4  97b0d202  sll.d r[2:3], r[6:7], r13
002ea8  e3024ff2  loadli.w r5,  -1760(r30)
002eac  97913800  or r3, r17, r3
002eb0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002eb4  b3920228  sext_int2long r[6:7], r5
002eb8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002ebc  ab0100f0  lui r3, 983040
002ec0  1f026900  addli r4, r18, 48
002ec4  97b0d202  sll.d r[2:3], r[6:7], r13
002ec8  e3424ff2  loadli.w r5,  -1756(r30)
002ecc  97913800  or r3, r17, r3
002ed0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002ed4  b3920228  sext_int2long r[6:7], r5
002ed8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002edc  ab0100f0  lui r3, 983040
002ee0  1f226900  addli r4, r18, 50
002ee4  97b0d202  sll.d r[2:3], r[6:7], r13
002ee8  e3025ff2  loadli.w r5,  -1752(r30)
002eec  97913800  or r3, r17, r3
002ef0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002ef4  b3920228  sext_int2long r[6:7], r5
002ef8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002efc  ab0100f0  lui r3, 983040
002f00  1f426900  addli r4, r18, 52
002f04  97b0d202  sll.d r[2:3], r[6:7], r13
002f08  e3425ff2  loadli.w r5,  -1748(r30)
002f0c  97913800  or r3, r17, r3
002f10  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002f14  b3920228  sext_int2long r[6:7], r5
002f18  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002f1c  ab0100f0  lui r3, 983040
002f20  1f626900  addli r4, r18, 54
002f24  97b0d202  sll.d r[2:3], r[6:7], r13
002f28  e3026ff2  loadli.w r5,  -1744(r30)
002f2c  97913800  or r3, r17, r3
002f30  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002f34  b3920228  sext_int2long r[6:7], r5
002f38  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002f3c  ab0100f0  lui r3, 983040
002f40  1f027900  addli r4, r18, 56
002f44  97b0d202  sll.d r[2:3], r[6:7], r13
002f48  e3426ff2  loadli.w r5,  -1740(r30)
002f4c  97913800  or r3, r17, r3
002f50  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002f54  b3920228  sext_int2long r[6:7], r5
002f58  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002f5c  ab0100f0  lui r3, 983040
002f60  1f227900  addli r4, r18, 58
002f64  97b0d202  sll.d r[2:3], r[6:7], r13
002f68  e3027ff2  loadli.w r5,  -1736(r30)
002f6c  97913800  or r3, r17, r3
002f70  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002f74  b3920228  sext_int2long r[6:7], r5
002f78  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002f7c  ab0100f0  lui r3, 983040
002f80  1f427900  addli r4, r18, 60
002f84  97b0d202  sll.d r[2:3], r[6:7], r13
002f88  e3427ff2  loadli.w r5,  -1732(r30)
002f8c  97913800  or r3, r17, r3
002f90  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002f94  b3920228  sext_int2long r[6:7], r5
002f98  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002f9c  ab0100f0  lui r3, 983040
002fa0  1f627900  addli r4, r18, 62
002fa4  97b0d202  sll.d r[2:3], r[6:7], r13
002fa8  e3028ff2  loadli.w r5,  -1728(r30)
002fac  97913800  or r3, r17, r3
002fb0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002fb4  b3920228  sext_int2long r[6:7], r5
002fb8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002fbc  63428ff2  loadli.w r4,  -1724(r30)
002fc0  ab0100f0  lui r3, 983040
002fc4  97b0d202  sll.d r[2:3], r[6:7], r13
002fc8  63031ff2  loadli.w r6,  -1784(r30)
002fcc  97913800  or r3, r17, r3
002fd0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002fd4  33120228  sext_int2long r[5:6], r4
002fd8  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
002fdc  9730d202  sll.d r[2:3], r[5:6], r13
002fe0  e3029ff2  loadli.w r5,  -1720(r30)
002fe4  ab0100f0  lui r3, 983040
002fe8  1f228900  addli r4, r18, 66
002fec  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002ff0  97913800  or r3, r17, r3
002ff4  b3920228  sext_int2long r[6:7], r5
002ff8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002ffc  ab0100f0  lui r3, 983040
003000  1f428900  addli r4, r18, 68
003004  97b0d202  sll.d r[2:3], r[6:7], r13
003008  e3429ff2  loadli.w r5,  -1716(r30)
00300c  97913800  or r3, r17, r3
003010  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003014  b3920228  sext_int2long r[6:7], r5
003018  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00301c  ab0100f0  lui r3, 983040
003020  1f628900  addli r4, r18, 70
003024  97b0d202  sll.d r[2:3], r[6:7], r13
003028  e302aff2  loadli.w r5,  -1712(r30)
00302c  97913800  or r3, r17, r3
003030  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003034  b3920228  sext_int2long r[6:7], r5
003038  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00303c  ab0100f0  lui r3, 983040
003040  1f029900  addli r4, r18, 72
003044  97b0d202  sll.d r[2:3], r[6:7], r13
003048  e342aff2  loadli.w r5,  -1708(r30)
00304c  97913800  or r3, r17, r3
003050  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003054  b3920228  sext_int2long r[6:7], r5
003058  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00305c  ab0100f0  lui r3, 983040
003060  1f229900  addli r4, r18, 74
003064  97b0d202  sll.d r[2:3], r[6:7], r13
003068  e302bff2  loadli.w r5,  -1704(r30)
00306c  97913800  or r3, r17, r3
003070  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003074  b3920228  sext_int2long r[6:7], r5
003078  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00307c  ab0100f0  lui r3, 983040
003080  1f429900  addli r4, r18, 76
003084  97b0d202  sll.d r[2:3], r[6:7], r13
003088  e342bff2  loadli.w r5,  -1700(r30)
00308c  97913800  or r3, r17, r3
003090  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003094  b3920228  sext_int2long r[6:7], r5
003098  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00309c  ab0100f0  lui r3, 983040
0030a0  1f629900  addli r4, r18, 78
0030a4  97b0d202  sll.d r[2:3], r[6:7], r13
0030a8  e302cff2  loadli.w r5,  -1696(r30)
0030ac  97913800  or r3, r17, r3
0030b0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0030b4  b3920228  sext_int2long r[6:7], r5
0030b8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0030bc  ab0100f0  lui r3, 983040
0030c0  1f02a900  addli r4, r18, 80
0030c4  97b0d202  sll.d r[2:3], r[6:7], r13
0030c8  e342cff2  loadli.w r5,  -1692(r30)
0030cc  97913800  or r3, r17, r3
0030d0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0030d4  b3920228  sext_int2long r[6:7], r5
0030d8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0030dc  ab0100f0  lui r3, 983040
0030e0  1f22a900  addli r4, r18, 82
0030e4  97b0d202  sll.d r[2:3], r[6:7], r13
0030e8  e302dff2  loadli.w r5,  -1688(r30)
0030ec  97913800  or r3, r17, r3
0030f0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0030f4  b3920228  sext_int2long r[6:7], r5
0030f8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0030fc  ab0100f0  lui r3, 983040
003100  1f42a900  addli r4, r18, 84
003104  97b0d202  sll.d r[2:3], r[6:7], r13
003108  e342dff2  loadli.w r5,  -1684(r30)
00310c  97913800  or r3, r17, r3
003110  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003114  b3920228  sext_int2long r[6:7], r5
003118  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00311c  ab0100f0  lui r3, 983040
003120  1f62a900  addli r4, r18, 86
003124  97b0d202  sll.d r[2:3], r[6:7], r13
003128  e302eff2  loadli.w r5,  -1680(r30)
00312c  97913800  or r3, r17, r3
003130  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003134  b3920228  sext_int2long r[6:7], r5
003138  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00313c  ab0100f0  lui r3, 983040
003140  1f02b900  addli r4, r18, 88
003144  97b0d202  sll.d r[2:3], r[6:7], r13
003148  e342eff2  loadli.w r5,  -1676(r30)
00314c  97913800  or r3, r17, r3
003150  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003154  b3920228  sext_int2long r[6:7], r5
003158  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00315c  ab0100f0  lui r3, 983040
003160  1f22b900  addli r4, r18, 90
003164  97b0d202  sll.d r[2:3], r[6:7], r13
003168  e302fff2  loadli.w r5,  -1672(r30)
00316c  97913800  or r3, r17, r3
003170  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003174  b3920228  sext_int2long r[6:7], r5
003178  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00317c  ab0100f0  lui r3, 983040
003180  1f42b900  addli r4, r18, 92
003184  97b0d202  sll.d r[2:3], r[6:7], r13
003188  e342fff2  loadli.w r5,  -1668(r30)
00318c  97913800  or r3, r17, r3
003190  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003194  b3920228  sext_int2long r[6:7], r5
003198  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00319c  ab0100f0  lui r3, 983040
0031a0  1f62b900  addli r4, r18, 94
0031a4  97b0d202  sll.d r[2:3], r[6:7], r13
0031a8  e3020ff3  loadli.w r5,  -1664(r30)
0031ac  97913800  or r3, r17, r3
0031b0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0031b4  b3920228  sext_int2long r[6:7], r5
0031b8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0031bc  ab0100f0  lui r3, 983040
0031c0  1f02c900  addli r4, r18, 96
0031c4  97b0d202  sll.d r[2:3], r[6:7], r13
0031c8  e3420ff3  loadli.w r5,  -1660(r30)
0031cc  97913800  or r3, r17, r3
0031d0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0031d4  b3920228  sext_int2long r[6:7], r5
0031d8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0031dc  ab0100f0  lui r3, 983040
0031e0  1f22c900  addli r4, r18, 98
0031e4  97b0d202  sll.d r[2:3], r[6:7], r13
0031e8  e3021ff3  loadli.w r5,  -1656(r30)
0031ec  97913800  or r3, r17, r3
0031f0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0031f4  b3920228  sext_int2long r[6:7], r5
0031f8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0031fc  ab0100f0  lui r3, 983040
003200  1f42c900  addli r4, r18, 100
003204  97b0d202  sll.d r[2:3], r[6:7], r13
003208  e3421ff3  loadli.w r5,  -1652(r30)
00320c  97913800  or r3, r17, r3
003210  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003214  b3920228  sext_int2long r[6:7], r5
003218  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00321c  ab0100f0  lui r3, 983040
003220  1f62c900  addli r4, r18, 102
003224  97b0d202  sll.d r[2:3], r[6:7], r13
003228  e3022ff3  loadli.w r5,  -1648(r30)
00322c  97913800  or r3, r17, r3
003230  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003234  b3920228  sext_int2long r[6:7], r5
003238  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00323c  ab0100f0  lui r3, 983040
003240  1f02d900  addli r4, r18, 104
003244  97b0d202  sll.d r[2:3], r[6:7], r13
003248  e3422ff3  loadli.w r5,  -1644(r30)
00324c  97913800  or r3, r17, r3
003250  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003254  b3920228  sext_int2long r[6:7], r5
003258  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00325c  ab0100f0  lui r3, 983040
003260  1f22d900  addli r4, r18, 106
003264  97b0d202  sll.d r[2:3], r[6:7], r13
003268  e3023ff3  loadli.w r5,  -1640(r30)
00326c  97913800  or r3, r17, r3
003270  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003274  b3920228  sext_int2long r[6:7], r5
003278  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00327c  ab0100f0  lui r3, 983040
003280  1f42d900  addli r4, r18, 108
003284  97b0d202  sll.d r[2:3], r[6:7], r13
003288  e3423ff3  loadli.w r5,  -1636(r30)
00328c  97913800  or r3, r17, r3
003290  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003294  b3920228  sext_int2long r[6:7], r5
003298  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00329c  ab0100f0  lui r3, 983040
0032a0  1f62d900  addli r4, r18, 110
0032a4  97b0d202  sll.d r[2:3], r[6:7], r13
0032a8  e3424ff3  loadli.w r5,  -1628(r30)
0032ac  97913800  or r3, r17, r3
0032b0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0032b4  b3920228  sext_int2long r[6:7], r5
0032b8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0032bc  ab0100f0  lui r3, 983040
0032c0  1f02e900  addli r4, r18, 112
0032c4  97b0d202  sll.d r[2:3], r[6:7], r13
0032c8  e3025ff3  loadli.w r5,  -1624(r30)
0032cc  97913800  or r3, r17, r3
0032d0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0032d4  b3920228  sext_int2long r[6:7], r5
0032d8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0032dc  ab0100f0  lui r3, 983040
0032e0  1f22e900  addli r4, r18, 114
0032e4  97b0d202  sll.d r[2:3], r[6:7], r13
0032e8  e3425ff3  loadli.w r5,  -1620(r30)
0032ec  97913800  or r3, r17, r3
0032f0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0032f4  b3920228  sext_int2long r[6:7], r5
0032f8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0032fc  ab0100f0  lui r3, 983040
003300  1f42e900  addli r4, r18, 116
003304  97b0d202  sll.d r[2:3], r[6:7], r13
003308  e3026ff3  loadli.w r5,  -1616(r30)
00330c  97913800  or r3, r17, r3
003310  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003314  b3920228  sext_int2long r[6:7], r5
003318  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00331c  ab0100f0  lui r3, 983040
003320  1f62e900  addli r4, r18, 118
003324  97b0d202  sll.d r[2:3], r[6:7], r13
003328  e3426ff3  loadli.w r5,  -1612(r30)
00332c  97913800  or r3, r17, r3
003330  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003334  b3920228  sext_int2long r[6:7], r5
003338  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00333c  ab0100f0  lui r3, 983040
003340  1f02f900  addli r4, r18, 120
003344  97b0d202  sll.d r[2:3], r[6:7], r13
003348  e3027ff3  loadli.w r5,  -1608(r30)
00334c  97913800  or r3, r17, r3
003350  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003354  b3920228  sext_int2long r[6:7], r5
003358  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00335c  ab0100f0  lui r3, 983040
003360  1f22f900  addli r4, r18, 122
003364  97b0d202  sll.d r[2:3], r[6:7], r13
003368  e3427ff3  loadli.w r5,  -1604(r30)
00336c  97913800  or r3, r17, r3
003370  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003374  b3920228  sext_int2long r[6:7], r5
003378  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00337c  ab0100f0  lui r3, 983040
003380  1f42f900  addli r4, r18, 124
003384  97b0d202  sll.d r[2:3], r[6:7], r13
003388  e3028ff3  loadli.w r5,  -1600(r30)
00338c  97913800  or r3, r17, r3
003390  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003394  b3920228  sext_int2long r[6:7], r5
003398  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00339c  ab0100f0  lui r3, 983040
0033a0  1f62f900  addli r4, r18, 126
0033a4  97b0d202  sll.d r[2:3], r[6:7], r13
0033a8  e3428ff3  loadli.w r5,  -1596(r30)
0033ac  97913800  or r3, r17, r3
0033b0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0033b4  b3920228  sext_int2long r[6:7], r5
0033b8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0033bc  63029ff3  loadli.w r4,  -1592(r30)
0033c0  ab0100f0  lui r3, 983040
0033c4  97b0d202  sll.d r[2:3], r[6:7], r13
0033c8  63034ff3  loadli.w r6,  -1632(r30)
0033cc  97913800  or r3, r17, r3
0033d0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0033d4  33120228  sext_int2long r[5:6], r4
0033d8  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
0033dc  9730d202  sll.d r[2:3], r[5:6], r13
0033e0  e3429ff3  loadli.w r5,  -1588(r30)
0033e4  ab0100f0  lui r3, 983040
0033e8  1f220901  addli r4, r18, 130
0033ec  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0033f0  97913800  or r3, r17, r3
0033f4  b3920228  sext_int2long r[6:7], r5
0033f8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0033fc  ab0100f0  lui r3, 983040
003400  1f420901  addli r4, r18, 132
003404  97b0d202  sll.d r[2:3], r[6:7], r13
003408  e302aff3  loadli.w r5,  -1584(r30)
00340c  97913800  or r3, r17, r3
003410  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003414  b3920228  sext_int2long r[6:7], r5
003418  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00341c  ab0100f0  lui r3, 983040
003420  1f620901  addli r4, r18, 134
003424  97b0d202  sll.d r[2:3], r[6:7], r13
003428  e342aff3  loadli.w r5,  -1580(r30)
00342c  97913800  or r3, r17, r3
003430  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003434  b3920228  sext_int2long r[6:7], r5
003438  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00343c  ab0100f0  lui r3, 983040
003440  1f021901  addli r4, r18, 136
003444  97b0d202  sll.d r[2:3], r[6:7], r13
003448  e302bff3  loadli.w r5,  -1576(r30)
00344c  97913800  or r3, r17, r3
003450  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003454  b3920228  sext_int2long r[6:7], r5
003458  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00345c  ab0100f0  lui r3, 983040
003460  1f221901  addli r4, r18, 138
003464  97b0d202  sll.d r[2:3], r[6:7], r13
003468  e342bff3  loadli.w r5,  -1572(r30)
00346c  97913800  or r3, r17, r3
003470  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003474  b3920228  sext_int2long r[6:7], r5
003478  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00347c  ab0100f0  lui r3, 983040
003480  1f421901  addli r4, r18, 140
003484  97b0d202  sll.d r[2:3], r[6:7], r13
003488  e302cff3  loadli.w r5,  -1568(r30)
00348c  97913800  or r3, r17, r3
003490  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003494  b3920228  sext_int2long r[6:7], r5
003498  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00349c  ab0100f0  lui r3, 983040
0034a0  1f621901  addli r4, r18, 142
0034a4  97b0d202  sll.d r[2:3], r[6:7], r13
0034a8  e342cff3  loadli.w r5,  -1564(r30)
0034ac  97913800  or r3, r17, r3
0034b0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0034b4  b3920228  sext_int2long r[6:7], r5
0034b8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0034bc  ab0100f0  lui r3, 983040
0034c0  1f022901  addli r4, r18, 144
0034c4  97b0d202  sll.d r[2:3], r[6:7], r13
0034c8  e302dff3  loadli.w r5,  -1560(r30)
0034cc  97913800  or r3, r17, r3
0034d0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0034d4  b3920228  sext_int2long r[6:7], r5
0034d8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0034dc  ab0100f0  lui r3, 983040
0034e0  1f222901  addli r4, r18, 146
0034e4  97b0d202  sll.d r[2:3], r[6:7], r13
0034e8  e342dff3  loadli.w r5,  -1556(r30)
0034ec  97913800  or r3, r17, r3
0034f0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0034f4  b3920228  sext_int2long r[6:7], r5
0034f8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0034fc  ab0100f0  lui r3, 983040
003500  1f422901  addli r4, r18, 148
003504  97b0d202  sll.d r[2:3], r[6:7], r13
003508  e302eff3  loadli.w r5,  -1552(r30)
00350c  97913800  or r3, r17, r3
003510  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003514  b3920228  sext_int2long r[6:7], r5
003518  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00351c  ab0100f0  lui r3, 983040
003520  1f622901  addli r4, r18, 150
003524  97b0d202  sll.d r[2:3], r[6:7], r13
003528  e342eff3  loadli.w r5,  -1548(r30)
00352c  97913800  or r3, r17, r3
003530  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003534  b3920228  sext_int2long r[6:7], r5
003538  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00353c  ab0100f0  lui r3, 983040
003540  1f023901  addli r4, r18, 152
003544  97b0d202  sll.d r[2:3], r[6:7], r13
003548  e302fff3  loadli.w r5,  -1544(r30)
00354c  97913800  or r3, r17, r3
003550  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003554  b3920228  sext_int2long r[6:7], r5
003558  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00355c  ab0100f0  lui r3, 983040
003560  1f223901  addli r4, r18, 154
003564  97b0d202  sll.d r[2:3], r[6:7], r13
003568  e342fff3  loadli.w r5,  -1540(r30)
00356c  97913800  or r3, r17, r3
003570  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003574  b3920228  sext_int2long r[6:7], r5
003578  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00357c  ab0100f0  lui r3, 983040
003580  1f423901  addli r4, r18, 156
003584  97b0d202  sll.d r[2:3], r[6:7], r13
003588  e3020ff4  loadli.w r5,  -1536(r30)
00358c  97913800  or r3, r17, r3
003590  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003594  b3920228  sext_int2long r[6:7], r5
003598  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00359c  ab0100f0  lui r3, 983040
0035a0  1f623901  addli r4, r18, 158
0035a4  97b0d202  sll.d r[2:3], r[6:7], r13
0035a8  e3420ff4  loadli.w r5,  -1532(r30)
0035ac  97913800  or r3, r17, r3
0035b0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0035b4  b3920228  sext_int2long r[6:7], r5
0035b8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0035bc  ab0100f0  lui r3, 983040
0035c0  1f024901  addli r4, r18, 160
0035c4  97b0d202  sll.d r[2:3], r[6:7], r13
0035c8  e3021ff4  loadli.w r5,  -1528(r30)
0035cc  97913800  or r3, r17, r3
0035d0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0035d4  b3920228  sext_int2long r[6:7], r5
0035d8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0035dc  ab0100f0  lui r3, 983040
0035e0  1f224901  addli r4, r18, 162
0035e4  97b0d202  sll.d r[2:3], r[6:7], r13
0035e8  e3421ff4  loadli.w r5,  -1524(r30)
0035ec  97913800  or r3, r17, r3
0035f0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0035f4  b3920228  sext_int2long r[6:7], r5
0035f8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0035fc  ab0100f0  lui r3, 983040
003600  1f424901  addli r4, r18, 164
003604  97b0d202  sll.d r[2:3], r[6:7], r13
003608  e3022ff4  loadli.w r5,  -1520(r30)
00360c  97913800  or r3, r17, r3
003610  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003614  b3920228  sext_int2long r[6:7], r5
003618  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00361c  ab0100f0  lui r3, 983040
003620  1f624901  addli r4, r18, 166
003624  97b0d202  sll.d r[2:3], r[6:7], r13
003628  e3422ff4  loadli.w r5,  -1516(r30)
00362c  97913800  or r3, r17, r3
003630  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003634  b3920228  sext_int2long r[6:7], r5
003638  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00363c  ab0100f0  lui r3, 983040
003640  1f025901  addli r4, r18, 168
003644  97b0d202  sll.d r[2:3], r[6:7], r13
003648  e3023ff4  loadli.w r5,  -1512(r30)
00364c  97913800  or r3, r17, r3
003650  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003654  b3920228  sext_int2long r[6:7], r5
003658  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00365c  ab0100f0  lui r3, 983040
003660  1f225901  addli r4, r18, 170
003664  97b0d202  sll.d r[2:3], r[6:7], r13
003668  e3423ff4  loadli.w r5,  -1508(r30)
00366c  97913800  or r3, r17, r3
003670  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003674  b3920228  sext_int2long r[6:7], r5
003678  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00367c  ab0100f0  lui r3, 983040
003680  1f425901  addli r4, r18, 172
003684  97b0d202  sll.d r[2:3], r[6:7], r13
003688  e3024ff4  loadli.w r5,  -1504(r30)
00368c  97913800  or r3, r17, r3
003690  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003694  b3920228  sext_int2long r[6:7], r5
003698  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00369c  ab0100f0  lui r3, 983040
0036a0  1f625901  addli r4, r18, 174
0036a4  97b0d202  sll.d r[2:3], r[6:7], r13
0036a8  e3424ff4  loadli.w r5,  -1500(r30)
0036ac  97913800  or r3, r17, r3
0036b0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0036b4  b3920228  sext_int2long r[6:7], r5
0036b8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0036bc  ab0100f0  lui r3, 983040
0036c0  1f026901  addli r4, r18, 176
0036c4  97b0d202  sll.d r[2:3], r[6:7], r13
0036c8  e3025ff4  loadli.w r5,  -1496(r30)
0036cc  97913800  or r3, r17, r3
0036d0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0036d4  b3920228  sext_int2long r[6:7], r5
0036d8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0036dc  ab0100f0  lui r3, 983040
0036e0  1f226901  addli r4, r18, 178
0036e4  97b0d202  sll.d r[2:3], r[6:7], r13
0036e8  e3425ff4  loadli.w r5,  -1492(r30)
0036ec  97913800  or r3, r17, r3
0036f0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0036f4  b3920228  sext_int2long r[6:7], r5
0036f8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0036fc  ab0100f0  lui r3, 983040
003700  1f426901  addli r4, r18, 180
003704  97b0d202  sll.d r[2:3], r[6:7], r13
003708  e3026ff4  loadli.w r5,  -1488(r30)
00370c  97913800  or r3, r17, r3
003710  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003714  b3920228  sext_int2long r[6:7], r5
003718  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00371c  ab0100f0  lui r3, 983040
003720  1f626901  addli r4, r18, 182
003724  97b0d202  sll.d r[2:3], r[6:7], r13
003728  e3426ff4  loadli.w r5,  -1484(r30)
00372c  97913800  or r3, r17, r3
003730  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003734  b3920228  sext_int2long r[6:7], r5
003738  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00373c  ab0100f0  lui r3, 983040
003740  1f027901  addli r4, r18, 184
003744  97b0d202  sll.d r[2:3], r[6:7], r13
003748  e3427ff4  loadli.w r5,  -1476(r30)
00374c  97913800  or r3, r17, r3
003750  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003754  b3920228  sext_int2long r[6:7], r5
003758  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00375c  ab0100f0  lui r3, 983040
003760  1f227901  addli r4, r18, 186
003764  97b0d202  sll.d r[2:3], r[6:7], r13
003768  e3028ff4  loadli.w r5,  -1472(r30)
00376c  97913800  or r3, r17, r3
003770  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003774  b3920228  sext_int2long r[6:7], r5
003778  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00377c  ab0100f0  lui r3, 983040
003780  1f427901  addli r4, r18, 188
003784  97b0d202  sll.d r[2:3], r[6:7], r13
003788  e3428ff4  loadli.w r5,  -1468(r30)
00378c  97913800  or r3, r17, r3
003790  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003794  b3920228  sext_int2long r[6:7], r5
003798  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00379c  ab0100f0  lui r3, 983040
0037a0  1f627901  addli r4, r18, 190
0037a4  97b0d202  sll.d r[2:3], r[6:7], r13
0037a8  e3029ff4  loadli.w r5,  -1464(r30)
0037ac  97913800  or r3, r17, r3
0037b0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0037b4  b3920228  sext_int2long r[6:7], r5
0037b8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0037bc  63429ff4  loadli.w r4,  -1460(r30)
0037c0  ab0100f0  lui r3, 983040
0037c4  97b0d202  sll.d r[2:3], r[6:7], r13
0037c8  63037ff4  loadli.w r6,  -1480(r30)
0037cc  97913800  or r3, r17, r3
0037d0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0037d4  33120228  sext_int2long r[5:6], r4
0037d8  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
0037dc  9730d202  sll.d r[2:3], r[5:6], r13
0037e0  e302aff4  loadli.w r5,  -1456(r30)
0037e4  ab0100f0  lui r3, 983040
0037e8  1f228901  addli r4, r18, 194
0037ec  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0037f0  97913800  or r3, r17, r3
0037f4  b3920228  sext_int2long r[6:7], r5
0037f8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0037fc  ab0100f0  lui r3, 983040
003800  1f428901  addli r4, r18, 196
003804  97b0d202  sll.d r[2:3], r[6:7], r13
003808  e342aff4  loadli.w r5,  -1452(r30)
00380c  97913800  or r3, r17, r3
003810  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003814  b3920228  sext_int2long r[6:7], r5
003818  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00381c  ab0100f0  lui r3, 983040
003820  1f628901  addli r4, r18, 198
003824  97b0d202  sll.d r[2:3], r[6:7], r13
003828  e302bff4  loadli.w r5,  -1448(r30)
00382c  97913800  or r3, r17, r3
003830  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003834  b3920228  sext_int2long r[6:7], r5
003838  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00383c  ab0100f0  lui r3, 983040
003840  1f029901  addli r4, r18, 200
003844  97b0d202  sll.d r[2:3], r[6:7], r13
003848  e342bff4  loadli.w r5,  -1444(r30)
00384c  97913800  or r3, r17, r3
003850  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003854  b3920228  sext_int2long r[6:7], r5
003858  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00385c  6302cff4  loadli.w r4,  -1440(r30)
003860  ab0100f0  lui r3, 983040
003864  97b0d202  sll.d r[2:3], r[6:7], r13
003868  1f239901  addli r6, r18, 202
00386c  97913800  or r3, r17, r3
003870  33120228  sext_int2long r[5:6], r4
003874  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003878  1732d202  sll.d r[5:6], r[5:6], r13
00387c  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
003880  ab0100f0  lui r3, 983040
003884  8ba04d10  add.ul r[2:3], r[28:29], r[5:6]
003888  e342cff4  loadli.w r5,  -1436(r30)
00388c  1f429901  addli r4, r18, 204
003890  97913800  or r3, r17, r3
003894  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
003898  eb508fb2  load.d r[2:3], -1240(r30)
00389c  b3920228  sext_int2long r[6:7], r5
0038a0  97b1d202  sll.d r[4:5], r[6:7], r13
0038a4  ab0200f0  lui r5, 983040
0038a8  1f639901  addli r6, r18, 206
0038ac  e3060ff5  loadli.w r13,  -1408(r30)
0038b0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0038b4  8ba13d10  add.ul r[4:5], r[28:29], r[4:5]
0038b8  97925800  or r5, r17, r5
0038bc  ffbc2001  s_lm2gm r25, r18, 0(r[2:3])
0038c0  ab0c00f0  lui r25, 983040
0038c4  e3006ff5  loadli.w r1,  -1360(r30)
0038c8  b3960628  sext_int2long r[14:15], r13
0038cc  ffb26100  s_lm2gm r5, r6, 0(r[4:5])
0038d0  e341dff4  loadli.w r3,  -1428(r30)
0038d4  97b2a303  sll.d r[6:7], r[8:9], r26
0038d8  ab0300f0  lui r7, 983040
0038dc  1f04a901  addli r8, r18, 208
0038e0  979c9801  or r25, r17, r25
0038e4  b3900028  sext_int2long r[2:3], r1
0038e8  8ba25d10  add.ul r[6:7], r[28:29], r[6:7]
0038ec  97937800  or r7, r17, r7
0038f0  b3910128  sext_int2long r[4:5], r3
0038f4  ffb38200  s_lm2gm r7, r8, 0(r[6:7])
0038f8  97b3a403  sll.d r[8:9], r[10:11], r26
0038fc  ab0400f0  lui r9, 983040
003900  1f25a901  addli r10, r18, 210
003904  e342eff4  loadli.w r5,  -1420(r30)
003908  97b1a103  sll.d r[4:5], r[4:5], r26
00390c  97949800  or r9, r17, r9
003910  8ba37d10  add.ul r[8:9], r[28:29], r[8:9]
003914  8ba13d10  add.ul r[4:5], r[28:29], r[4:5]
003918  b3920228  sext_int2long r[6:7], r5
00391c  ffb4a100  s_lm2gm r9, r10, 0(r[4:5])
003920  97b4a503  sll.d r[10:11], r[12:13], r26
003924  ab0500f0  lui r11, 983040
003928  1f46a901  addli r12, r18, 212
00392c  97b2a203  sll.d r[6:7], r[6:7], r26
003930  e341fff4  loadli.w r3,  -1412(r30)
003934  9795b800  or r11, r17, r11
003938  8ba25d10  add.ul r[6:7], r[28:29], r[6:7]
00393c  8ba49d10  add.ul r[10:11], r[28:29], r[10:11]
003940  b3910128  sext_int2long r[4:5], r3
003944  ffb5c300  s_lm2gm r11, r12, 0(r[8:9])
003948  e3430ff5  loadli.w r7,  -1404(r30)
00394c  97b5a603  sll.d r[12:13], r[14:15], r26
003950  97b1a103  sll.d r[4:5], r[4:5], r26
003954  8ba6bd10  add.ul r[14:15], r[28:29], r[12:13]
003958  e3051ff5  loadli.w r11,  -1400(r30)
00395c  b3930328  sext_int2long r[8:9], r7
003960  8ba13d10  add.ul r[4:5], r[28:29], r[4:5]
003964  97b3a303  sll.d r[8:9], r[8:9], r26
003968  b3950528  sext_int2long r[12:13], r11
00396c  8ba77d10  add.ul r[16:17], r[28:29], r[8:9]
003970  ab0300f0  lui r7, 983040
003974  1f64a901  addli r8, r18, 214
003978  97937800  or r7, r17, r7
00397c  ffb38200  s_lm2gm r7, r8, 0(r[6:7])
003980  e3421ff5  loadli.w r5,  -1396(r30)
003984  97b3a503  sll.d r[8:9], r[12:13], r26
003988  8baa7d10  add.ul r[22:23], r[28:29], r[8:9]
00398c  e3032ff5  loadli.w r7,  -1392(r30)
003990  b3920228  sext_int2long r[6:7], r5
003994  97b2a203  sll.d r[6:7], r[6:7], r26
003998  b3930328  sext_int2long r[8:9], r7
00399c  8ba55d10  add.ul r[12:13], r[28:29], r[6:7]
0039a0  ab0200f0  lui r5, 983040
0039a4  1f03b901  addli r6, r18, 216
0039a8  97b3a303  sll.d r[8:9], r[8:9], r26
0039ac  97925800  or r5, r17, r5
0039b0  8bab7d10  add.ul r[24:25], r[28:29], r[8:9]
0039b4  ab0300f0  lui r7, 983040
0039b8  1f24b901  addli r8, r18, 218
0039bc  ffb26400  s_lm2gm r5, r6, 0(r[10:11])
0039c0  e3422ff5  loadli.w r5,  -1388(r30)
0039c4  97937800  or r7, r17, r7
0039c8  ffb38100  s_lm2gm r7, r8, 0(r[4:5])
0039cc  e3413ff5  loadli.w r3,  -1380(r30)
0039d0  9f43b901  addli r7, r18, 220
0039d4  b3920228  sext_int2long r[6:7], r5
0039d8  97b2a203  sll.d r[6:7], r[6:7], r26
0039dc  b3910128  sext_int2long r[4:5], r3
0039e0  8ba95d10  add.ul r[20:21], r[28:29], r[6:7]
0039e4  e3023ff5  loadli.w r5,  -1384(r30)
0039e8  97b1a103  sll.d r[4:5], r[4:5], r26
0039ec  8ba43d10  add.ul r[10:11], r[28:29], r[4:5]
0039f0  b3920228  sext_int2long r[6:7], r5
0039f4  97b2a203  sll.d r[6:7], r[6:7], r26
0039f8  8ba25d10  add.ul r[6:7], r[28:29], r[6:7]
0039fc  73305fd4  store.d r[6:7], -704(r30)
003a00  e3024ff5  loadli.w r5,  -1376(r30)
003a04  b3920228  sext_int2long r[6:7], r5
003a08  97b1a203  sll.d r[4:5], r[6:7], r26
003a0c  ab0200f0  lui r5, 983040
003a10  17945800  or r8, r17, r5
003a14  8ba23d10  add.ul r[6:7], r[28:29], r[4:5]
003a18  e3015ff5  loadli.w r3,  -1368(r30)
003a1c  7fb47600  s_lm2gm r8, r7, 0(r[14:15])
003a20  e3434ff5  loadli.w r7,  -1372(r30)
003a24  b3910128  sext_int2long r[4:5], r3
003a28  b3930328  sext_int2long r[8:9], r7
003a2c  97b1a103  sll.d r[4:5], r[4:5], r26
003a30  97b3a303  sll.d r[8:9], r[8:9], r26
003a34  8ba63d10  add.ul r[14:15], r[28:29], r[4:5]
003a38  8ba17d10  add.ul r[4:5], r[28:29], r[8:9]
003a3c  73303fdc  store.d r[4:5], -576(r30)
003a40  e3415ff5  loadli.w r3,  -1364(r30)
003a44  b3930128  sext_int2long r[8:9], r3
003a48  9f110000  addli r3, zero, 1
003a4c  97b3a303  sll.d r[8:9], r[8:9], r26
003a50  1f6db901  addli r26, r18, 222
003a54  97b03002  sll.d r[2:3], r[2:3], r3
003a58  8ba37d10  add.ul r[8:9], r[28:29], r[8:9]
003a5c  ffbca701  s_lm2gm r25, r26, 0(r[16:17])
003a60  ab0c00f0  lui r25, 983040
003a64  1f0dc901  addli r26, r18, 224
003a68  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003a6c  73307fd8  store.d r[8:9], -640(r30)
003a70  e3436ff5  loadli.w r7,  -1356(r30)
003a74  979c9801  or r25, r17, r25
003a78  ffbcaa01  s_lm2gm r25, r26, 0(r[22:23])
003a7c  ab0c00f0  lui r25, 983040
003a80  1f2dc901  addli r26, r18, 226
003a84  b3970328  sext_int2long r[16:17], r7
003a88  e3037ff5  loadli.w r7,  -1352(r30)
003a8c  979c9801  or r25, r17, r25
003a90  97b73702  sll.d r[16:17], r[16:17], r3
003a94  b39a0328  sext_int2long r[22:23], r7
003a98  e3437ff5  loadli.w r7,  -1348(r30)
003a9c  ffbca501  s_lm2gm r25, r26, 0(r[12:13])
003aa0  e3058ff5  loadli.w r11,  -1344(r30)
003aa4  1f66d901  addli r12, r18, 238
003aa8  8ba7fd10  add.ul r[16:17], r[28:29], r[16:17]
003aac  97ba3a02  sll.d r[22:23], r[22:23], r3
003ab0  b39c0328  sext_int2long r[26:27], r7
003ab4  8ba35d11  add.ul r[8:9], r[28:29], r[22:23]
003ab8  97ba3c02  sll.d r[22:23], r[26:27], r3
003abc  ab0c00f0  lui r25, 983040
003ac0  1f4dc901  addli r26, r18, 228
003ac4  979c9801  or r25, r17, r25
003ac8  8baa5d11  add.ul r[22:23], r[28:29], r[22:23]
003acc  ffbcab01  s_lm2gm r25, r26, 0(r[24:25])
003ad0  ab0b00f0  lui r23, 983040
003ad4  b39c0528  sext_int2long r[26:27], r11
003ad8  e3454ff6  loadli.w r11,  -1244(r30)
003adc  1f6cc901  addli r24, r18, 230
003ae0  979b7801  or r23, r17, r23
003ae4  ffbb8901  s_lm2gm r23, r24, 0(r[20:21])
003ae8  b3990528  sext_int2long r[20:21], r11
003aec  97bb3c02  sll.d r[24:25], r[26:27], r3
003af0  ab0500f0  lui r11, 983040
003af4  97bc3902  sll.d r[26:27], r[20:21], r3
003af8  8ba97d11  add.ul r[20:21], r[28:29], r[24:25]
003afc  eb510fd4  load.d r[4:5], -704(r30)
003b00  9795b800  or r11, r17, r11
003b04  8bab9d11  add.ul r[24:25], r[28:29], r[26:27]
003b08  ab0d00f0  lui r27, 983040
003b0c  1f2ed901  addli r28, r18, 234
003b10  ab0c00f0  lui r25, 983040
003b14  1f0dd901  addli r26, r18, 232
003b18  ffb5c600  s_lm2gm r11, r12, 0(r[14:15])
003b1c  979db801  or r27, r17, r27
003b20  979c9801  or r25, r17, r25
003b24  ffbdc401  s_lm2gm r27, r28, 0(r[10:11])
003b28  ab0400f0  lui r9, 983040
003b2c  1f45d901  addli r10, r18, 236
003b30  ffbca101  s_lm2gm r25, r26, 0(r[4:5])
003b34  eb510fdc  load.d r[4:5], -576(r30)
003b38  97949800  or r9, r17, r9
003b3c  ffb4a200  s_lm2gm r9, r10, 0(r[6:7])
003b40  ab0200f0  lui r5, 983040
003b44  1f03e901  addli r6, r18, 240
003b48  ab0400f0  lui r9, 983040
003b4c  1f25e901  addli r10, r18, 242
003b50  97925800  or r5, r17, r5
003b54  97949800  or r9, r17, r9
003b58  ffb26100  s_lm2gm r5, r6, 0(r[4:5])
003b5c  eb510fd8  load.d r[4:5], -640(r30)
003b60  ab0200f0  lui r5, 983040
003b64  97925800  or r5, r17, r5
003b68  ffb4a100  s_lm2gm r9, r10, 0(r[4:5])
003b6c  1f050ffc  addli r10, r30, -512
003b70  ab0100f0  lui r3, 983040
003b74  e3446ff6  loadli.w r9,  -1228(r30)
003b78  1f42e501  addli r4, r10, 244
003b7c  97913800  or r3, r17, r3
003b80  1f63e501  addli r6, r10, 246
003b84  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
003b88  ab0000f0  lui r1, 983040
003b8c  ab0100f0  lui r3, 983040
003b90  1f01f501  addli r2, r10, 248
003b94  1f22f501  addli r4, r10, 250
003b98  ffb26700  s_lm2gm r5, r6, 0(r[16:17])
003b9c  97901800  or r1, r17, r1
003ba0  97913800  or r3, r17, r3
003ba4  ffb02300  s_lm2gm r1, r2, 0(r[8:9])
003ba8  ab0000f0  lui r1, 983040
003bac  ffb14a00  s_lm2gm r3, r4, 0(r[22:23])
003bb0  ab0100f0  lui r3, 983040
003bb4  1f41f501  addli r2, r10, 252
003bb8  1f62f501  addli r4, r10, 254
003bbc  9f030002  addli r7, zero, 256
003bc0  1f040ffe  addli r8, r30, -256
003bc4  97901800  or r1, r17, r1
003bc8  97913800  or r3, r17, r3
003bcc  ffb02900  s_lm2gm r1, r2, 0(r[20:21])
003bd0  e3004ff1  loadli.w r1,  -1888(r30)
003bd4  ffb14b00  s_lm2gm r3, r4, 0(r[24:25])
003bd8  1f410000  addli r2, zero, 4
003bdc  00a00000  mfence { lm }
003be0  7e0001e0  vmmov mr0, r2
003be4  1f110000  addli r2, zero, 1
003be8  8b941410  add.s r9, r9, r1
003bec  e3405ff1  loadli.w r1,  -1876(r30)
003bf0  7e0101e0  vmmov mr2, r2
003bf4  bfd714e4  blt.s r9, r1, -13836
003bf8  9f0e0fed  addli sp, r30, -2432
003bfc  9f8e0e13  addli sp, sp, 2432
003c00  00a00300  mfence { lm, sm, gm }
003c04  00100000  exit
003c08  00100000  exit
003c0c  00100000  exit
003c10  00100000  exit
003c14  00100000  exit
003c18  00100000  exit
003c1c  00100000  exit
003c20  00100000  exit
003c24  00100000  exit
003c28  00100000  exit
003c2c  00100000  exit
003c30  00100000  exit
003c34  00100000  exit
003c38  00100000  exit
003c3c  00100000  exit
003c40  00100000  exit
003c44  00100000  exit
003c48  00100000  exit
003c4c  00100000  exit
003c50  00100000  exit
003c54  00100000  exit
003c58  00100000  exit
003c5c  00100000  exit
003c60  00100000  exit
003c64  00100000  exit
003c68  00100000  exit
003c6c  00100000  exit
003c70  00100000  exit
003c74  00100000  exit
003c78  00100000  exit
003c7c  00100000  exit
003c80  00100000  exit
003c84  00100000  exit
003c88  00100000  exit
003c8c  00100000  exit
003c90  00100000  exit
003c94  00100000  exit
003c98  00100000  exit
003c9c  00100000  exit
003ca0  00100000  exit
003ca4  00100000  exit
003ca8  00100000  exit
003cac  00100000  exit
003cb0  00100000  exit
003cb4  00100000  exit
003cb8  00100000  exit
003cbc  00100000  exit
003cc0  00100000  exit
003cc4  00100000  exit
003cc8  00100000  exit
003ccc  00100000  exit
003cd0  00100000  exit
003cd4  00100000  exit
003cd8  00100000  exit
003cdc  00100000  exit
003ce0  00100000  exit
003ce4  00100000  exit
003ce8  00100000  exit
003cec  00100000  exit
003cf0  00100000  exit
003cf4  00100000  exit
003cf8  00100000  exit
003cfc  00100000  exit
003d00  00100000  exit
003d04  00100000  exit
003d08  00100000  exit
003d0c  00100000  exit
003d10  00100000  exit
003d14  00100000  exit
003d18  00100000  exit
003d1c  00100000  exit
003d20  00100000  exit
003d24  00100000  exit
003d28  00100000  exit
003d2c  00100000  exit
003d30  00100000  exit
003d34  00100000  exit
003d38  00100000  exit
003d3c  00100000  exit
003d40  00100000  exit
003d44  00100000  exit
003d48  00100000  exit
003d4c  00100000  exit
003d50  00100000  exit
003d54  00100000  exit
003d58  00100000  exit
003d5c  00100000  exit
003d60  00100000  exit
003d64  00100000  exit
003d68  00100000  exit
003d6c  00100000  exit
003d70  00100000  exit
003d74  00100000  exit
003d78  00100000  exit
003d7c  00100000  exit
003d80  00100000  exit
003d84  00100000  exit
003d88  00100000  exit
003d8c  00100000  exit
003d90  00100000  exit
003d94  00100000  exit
003d98  00100000  exit
003d9c  00100000  exit
003da0  00100000  exit
003da4  00100000  exit
003da8  00100000  exit
003dac  00100000  exit
003db0  00100000  exit
003db4  00100000  exit
003db8  00100000  exit
003dbc  00100000  exit
003dc0  00100000  exit
003dc4  00100000  exit
003dc8  00100000  exit
003dcc  00100000  exit
003dd0  00100000  exit
003dd4  00100000  exit
003dd8  00100000  exit
003ddc  00100000  exit
003de0  00100000  exit
003de4  00100000  exit
003de8  00100000  exit
003dec  00100000  exit
003df0  00100000  exit
003df4  00100000  exit
003df8  00100000  exit
003dfc  00100000  exit
003e00  00100000  exit
003e04  00100000  exit
003e08  00100000  exit
003e0c  00100000  exit
003e10  00100000  exit
003e14  00100000  exit
003e18  00100000  exit
003e1c  00100000  exit
003e20  00100000  exit
003e24  00100000  exit
003e28  00100000  exit
003e2c  00100000  exit
003e30  00100000  exit
003e34  00100000  exit
003e38  00100000  exit
003e3c  00100000  exit
003e40  00100000  exit
003e44  00100000  exit
