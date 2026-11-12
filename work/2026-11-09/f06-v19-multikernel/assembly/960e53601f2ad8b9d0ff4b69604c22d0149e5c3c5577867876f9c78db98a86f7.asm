; SHA-256 960e53601f2ad8b9d0ff4b69604c22d0149e5c3c5577867876f9c78db98a86f7
; P800 Cluster · XTDK LLVM 19 · 3805 / 3805 words decoded
; bound names: triton_per_fused_add_native_layer_norm_0
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
0000dc  9f8e8ee9  addli sp, sp, -2880
0000e0  ab010000  lui r3, 0
0000e4  00310002  core_id r2
0000e8  1f8f0e16  addli r30, sp, 2816
0000ec  abf40000  lui r9, 15
0000f0  1b322100  slli r4, r2, 2
0000f4  9f810100  addli r3, r3, 0
0000f8  63434f00  loadli.w r6,  36(r30)
0000fc  e3004f00  loadli.w r1,  32(r30)
000100  e3025f00  loadli.w r5,  40(r30)
000104  1b95f4ff  ori r10, r9, 4095
000108  80540002  load_param_i r9, 0
00010c  8b133210  add.s r7, r4, r3
000110  8b101320  mul.s r1, r6, r1
000114  1f842340  addli r8, r7, 8208
000118  8b905020  mul.s r1, r1, r5
00011c  e7048fee  storeli.w r8, -2232(r30)
000120  73600400  stores.w zero, 0(r8)
000124  00a00300  mfence { lm, sm, gm }
000128  80210504  csr_set csr3, r10
00012c  00d00100  sync_group
000130  e7447fee  storeli.w r7, -2228(r30)
000134  73e00300  stores.w zero, 0(r7)
000138  00a00300  mfence { lm, sm, gm }
00013c  80210504  csr_set csr3, r10
000140  00d00100  sync_group
000144  67441fee  storeli.w r1, -2236(r30)
000148  4bff901a  ble.s r1, r9, 14300
00014c  9f001000  addli r1, zero, 8
000150  eb528f00  load.d r[6:7], 8(r30)
000154  6e25a562  vxor.u.mz vr10{mr1}, vr10, vr10
000158  6e348462  vxor.s.mz vr8{mr1}, vr8, vr8
00015c  6704afee  storeli.w r10, -2240(r30)
000160  8b101130  div.s r1, r2, r1
000164  e7431fee  storeli.w r1, -2244(r30)
000168  9bb03000  slli r1, r1, 3
00016c  8b101118  sub.s r1, r2, r1
000170  9bb57000  slli r11, r1, 7
000174  80d00002  load_param_i r1, 1
000178  67431fee  storeli.w r1, -2252(r30)
00017c  9b901500  ori r1, r11, 1
000180  b3930528  sext_int2long r[8:9], r11
000184  1b960501  ori r12, r11, 16
000188  e703bfee  storeli.w r11, -2248(r30)
00018c  67031fee  storeli.w r1, -2256(r30)
000190  9b902500  ori r1, r11, 2
000194  674fcfec  storeli.w r12, -2316(r30)
000198  e7421fee  storeli.w r1, -2260(r30)
00019c  9b903500  ori r1, r11, 3
0001a0  e7021fee  storeli.w r1, -2264(r30)
0001a4  9b904500  ori r1, r11, 4
0001a8  67421fee  storeli.w r1, -2268(r30)
0001ac  9b905500  ori r1, r11, 5
0001b0  67021fee  storeli.w r1, -2272(r30)
0001b4  9b906500  ori r1, r11, 6
0001b8  e7411fee  storeli.w r1, -2276(r30)
0001bc  9b907500  ori r1, r11, 7
0001c0  e7011fee  storeli.w r1, -2280(r30)
0001c4  9b908500  ori r1, r11, 8
0001c8  67411fee  storeli.w r1, -2284(r30)
0001cc  9b909500  ori r1, r11, 9
0001d0  67011fee  storeli.w r1, -2288(r30)
0001d4  9b90a500  ori r1, r11, 10
0001d8  e7401fee  storeli.w r1, -2292(r30)
0001dc  9b90b500  ori r1, r11, 11
0001e0  e7001fee  storeli.w r1, -2296(r30)
0001e4  9b90c500  ori r1, r11, 12
0001e8  67401fee  storeli.w r1, -2300(r30)
0001ec  9b90d500  ori r1, r11, 13
0001f0  67001fee  storeli.w r1, -2304(r30)
0001f4  9b90e500  ori r1, r11, 14
0001f8  e74f1fec  storeli.w r1, -2308(r30)
0001fc  9b90f500  ori r1, r11, 15
000200  e70f1fec  storeli.w r1, -2312(r30)
000204  9f200000  addli r1, zero, 2
000208  97b31302  sll.d r[8:9], r[8:9], r1
00020c  9b901501  ori r1, r11, 17
000210  670f1fec  storeli.w r1, -2320(r30)
000214  8ba27210  add.ul r[6:7], r[6:7], r[8:9]
000218  9f00dfed  addli r1, r30, -2328
00021c  9f030ffc  addli r7, r30, -512
000220  73b05000  store.d r[6:7], 0(r1)
000224  abf0ffff  lui r1, 1048575
000228  9b922501  ori r5, r11, 18
00022c  1f030004  addli r6, zero, 512
000230  9b9000fe  ori r1, r1, 4064
000234  674e5fec  storeli.w r5, -2332(r30)
000238  9b923501  ori r5, r11, 19
00023c  97001200  and r1, r4, r1
000240  1b924501  ori r4, r11, 20
000244  670e5fec  storeli.w r5, -2336(r30)
000248  e74d4fec  storeli.w r4, -2340(r30)
00024c  1b027100  andi r4, r2, 7
000250  0b913010  add.s r2, r1, r3
000254  9f100000  addli r1, zero, 1
000258  7e8100e0  vmmov mr2, r1
00025c  9f400000  addli r1, zero, 4
000260  67452fee  storeli.w r2, -2220(r30)
000264  e74e4ff2  storeli.w r4, -1556(r30)
000268  7e8000e0  vmmov mr0, r1
00026c  ab10833a  lui r1, 239665
000270  9b90f026  ori r1, r1, 623
000274  e70d1fec  storeli.w r1, -2344(r30)
000278  9b905501  ori r1, r11, 21
00027c  674d1fec  storeli.w r1, -2348(r30)
000280  9b906501  ori r1, r11, 22
000284  670d1fec  storeli.w r1, -2352(r30)
000288  9b907501  ori r1, r11, 23
00028c  e74c1fec  storeli.w r1, -2356(r30)
000290  9b908501  ori r1, r11, 24
000294  e70c1fec  storeli.w r1, -2360(r30)
000298  9b909501  ori r1, r11, 25
00029c  674c1fec  storeli.w r1, -2364(r30)
0002a0  9b90a501  ori r1, r11, 26
0002a4  670c1fec  storeli.w r1, -2368(r30)
0002a8  9b90b501  ori r1, r11, 27
0002ac  e74b1fec  storeli.w r1, -2372(r30)
0002b0  9b90c501  ori r1, r11, 28
0002b4  e70b1fec  storeli.w r1, -2376(r30)
0002b8  9b90d501  ori r1, r11, 29
0002bc  674b1fec  storeli.w r1, -2380(r30)
0002c0  9b90e501  ori r1, r11, 30
0002c4  670b1fec  storeli.w r1, -2384(r30)
0002c8  9b90f501  ori r1, r11, 31
0002cc  e74a1fec  storeli.w r1, -2388(r30)
0002d0  9b900502  ori r1, r11, 32
0002d4  e70a1fec  storeli.w r1, -2392(r30)
0002d8  9b901502  ori r1, r11, 33
0002dc  674a1fec  storeli.w r1, -2396(r30)
0002e0  9b902502  ori r1, r11, 34
0002e4  670a1fec  storeli.w r1, -2400(r30)
0002e8  9b903502  ori r1, r11, 35
0002ec  e7491fec  storeli.w r1, -2404(r30)
0002f0  9b904502  ori r1, r11, 36
0002f4  e7091fec  storeli.w r1, -2408(r30)
0002f8  9b905502  ori r1, r11, 37
0002fc  67491fec  storeli.w r1, -2412(r30)
000300  9b906502  ori r1, r11, 38
000304  67091fec  storeli.w r1, -2416(r30)
000308  9b907502  ori r1, r11, 39
00030c  e7481fec  storeli.w r1, -2420(r30)
000310  9b908502  ori r1, r11, 40
000314  e7081fec  storeli.w r1, -2424(r30)
000318  9b909502  ori r1, r11, 41
00031c  67481fec  storeli.w r1, -2428(r30)
000320  9b90a502  ori r1, r11, 42
000324  67081fec  storeli.w r1, -2432(r30)
000328  9b90b502  ori r1, r11, 43
00032c  e7471fec  storeli.w r1, -2436(r30)
000330  9b90c502  ori r1, r11, 44
000334  e7071fec  storeli.w r1, -2440(r30)
000338  9b90d502  ori r1, r11, 45
00033c  67471fec  storeli.w r1, -2444(r30)
000340  9b90e502  ori r1, r11, 46
000344  67071fec  storeli.w r1, -2448(r30)
000348  9b90f502  ori r1, r11, 47
00034c  e7461fec  storeli.w r1, -2452(r30)
000350  9b900503  ori r1, r11, 48
000354  e7061fec  storeli.w r1, -2456(r30)
000358  9b901503  ori r1, r11, 49
00035c  67461fec  storeli.w r1, -2460(r30)
000360  9b902503  ori r1, r11, 50
000364  67061fec  storeli.w r1, -2464(r30)
000368  9b903503  ori r1, r11, 51
00036c  e7451fec  storeli.w r1, -2468(r30)
000370  9b904503  ori r1, r11, 52
000374  e7051fec  storeli.w r1, -2472(r30)
000378  9b905503  ori r1, r11, 53
00037c  67451fec  storeli.w r1, -2476(r30)
000380  9b906503  ori r1, r11, 54
000384  67051fec  storeli.w r1, -2480(r30)
000388  9b907503  ori r1, r11, 55
00038c  e7441fec  storeli.w r1, -2484(r30)
000390  9b908503  ori r1, r11, 56
000394  e7041fec  storeli.w r1, -2488(r30)
000398  9b909503  ori r1, r11, 57
00039c  67441fec  storeli.w r1, -2492(r30)
0003a0  9b90a503  ori r1, r11, 58
0003a4  67041fec  storeli.w r1, -2496(r30)
0003a8  9b90b503  ori r1, r11, 59
0003ac  e7431fec  storeli.w r1, -2500(r30)
0003b0  9b90c503  ori r1, r11, 60
0003b4  e7031fec  storeli.w r1, -2504(r30)
0003b8  9b90d503  ori r1, r11, 61
0003bc  67431fec  storeli.w r1, -2508(r30)
0003c0  9b90e503  ori r1, r11, 62
0003c4  67031fec  storeli.w r1, -2512(r30)
0003c8  9b90f503  ori r1, r11, 63
0003cc  e7421fec  storeli.w r1, -2516(r30)
0003d0  9b900504  ori r1, r11, 64
0003d4  e7021fec  storeli.w r1, -2520(r30)
0003d8  9b901504  ori r1, r11, 65
0003dc  67421fec  storeli.w r1, -2524(r30)
0003e0  9b902504  ori r1, r11, 66
0003e4  67021fec  storeli.w r1, -2528(r30)
0003e8  9b903504  ori r1, r11, 67
0003ec  e7411fec  storeli.w r1, -2532(r30)
0003f0  9b904504  ori r1, r11, 68
0003f4  e7011fec  storeli.w r1, -2536(r30)
0003f8  9b905504  ori r1, r11, 69
0003fc  67411fec  storeli.w r1, -2540(r30)
000400  9b906504  ori r1, r11, 70
000404  67011fec  storeli.w r1, -2544(r30)
000408  9b907504  ori r1, r11, 71
00040c  e7401fec  storeli.w r1, -2548(r30)
000410  9b908504  ori r1, r11, 72
000414  e7001fec  storeli.w r1, -2552(r30)
000418  9b909504  ori r1, r11, 73
00041c  67401fec  storeli.w r1, -2556(r30)
000420  9b90a504  ori r1, r11, 74
000424  67001fec  storeli.w r1, -2560(r30)
000428  9b90b504  ori r1, r11, 75
00042c  e74f1fea  storeli.w r1, -2564(r30)
000430  9b90c504  ori r1, r11, 76
000434  e70f1fea  storeli.w r1, -2568(r30)
000438  9b90d504  ori r1, r11, 77
00043c  674f1fea  storeli.w r1, -2572(r30)
000440  9b90e504  ori r1, r11, 78
000444  670f1fea  storeli.w r1, -2576(r30)
000448  9b90f504  ori r1, r11, 79
00044c  e74e1fea  storeli.w r1, -2580(r30)
000450  9b900505  ori r1, r11, 80
000454  e70e1fea  storeli.w r1, -2584(r30)
000458  9b901505  ori r1, r11, 81
00045c  674e1fea  storeli.w r1, -2588(r30)
000460  9b902505  ori r1, r11, 82
000464  670e1fea  storeli.w r1, -2592(r30)
000468  9b903505  ori r1, r11, 83
00046c  e74d1fea  storeli.w r1, -2596(r30)
000470  9b904505  ori r1, r11, 84
000474  e70d1fea  storeli.w r1, -2600(r30)
000478  9b905505  ori r1, r11, 85
00047c  674d1fea  storeli.w r1, -2604(r30)
000480  9b906505  ori r1, r11, 86
000484  670d1fea  storeli.w r1, -2608(r30)
000488  9b907505  ori r1, r11, 87
00048c  e74c1fea  storeli.w r1, -2612(r30)
000490  9b908505  ori r1, r11, 88
000494  e70c1fea  storeli.w r1, -2616(r30)
000498  9b909505  ori r1, r11, 89
00049c  674c1fea  storeli.w r1, -2620(r30)
0004a0  9b90a505  ori r1, r11, 90
0004a4  670c1fea  storeli.w r1, -2624(r30)
0004a8  9b90b505  ori r1, r11, 91
0004ac  e74b1fea  storeli.w r1, -2628(r30)
0004b0  9b90c505  ori r1, r11, 92
0004b4  e70b1fea  storeli.w r1, -2632(r30)
0004b8  9b90d505  ori r1, r11, 93
0004bc  674b1fea  storeli.w r1, -2636(r30)
0004c0  9b90e505  ori r1, r11, 94
0004c4  670b1fea  storeli.w r1, -2640(r30)
0004c8  9b90f505  ori r1, r11, 95
0004cc  e74a1fea  storeli.w r1, -2644(r30)
0004d0  9b900506  ori r1, r11, 96
0004d4  e70a1fea  storeli.w r1, -2648(r30)
0004d8  9b901506  ori r1, r11, 97
0004dc  674a1fea  storeli.w r1, -2652(r30)
0004e0  9b902506  ori r1, r11, 98
0004e4  670a1fea  storeli.w r1, -2656(r30)
0004e8  9b903506  ori r1, r11, 99
0004ec  e7491fea  storeli.w r1, -2660(r30)
0004f0  9b904506  ori r1, r11, 100
0004f4  e7091fea  storeli.w r1, -2664(r30)
0004f8  9b905506  ori r1, r11, 101
0004fc  67491fea  storeli.w r1, -2668(r30)
000500  9b906506  ori r1, r11, 102
000504  67091fea  storeli.w r1, -2672(r30)
000508  9b907506  ori r1, r11, 103
00050c  e7481fea  storeli.w r1, -2676(r30)
000510  9b908506  ori r1, r11, 104
000514  e7081fea  storeli.w r1, -2680(r30)
000518  9b909506  ori r1, r11, 105
00051c  67481fea  storeli.w r1, -2684(r30)
000520  9b90a506  ori r1, r11, 106
000524  67081fea  storeli.w r1, -2688(r30)
000528  9b90b506  ori r1, r11, 107
00052c  e7471fea  storeli.w r1, -2692(r30)
000530  9b90c506  ori r1, r11, 108
000534  e7071fea  storeli.w r1, -2696(r30)
000538  9b90d506  ori r1, r11, 109
00053c  67471fea  storeli.w r1, -2700(r30)
000540  9b90e506  ori r1, r11, 110
000544  67071fea  storeli.w r1, -2704(r30)
000548  9b90f506  ori r1, r11, 111
00054c  e7461fea  storeli.w r1, -2708(r30)
000550  9b900507  ori r1, r11, 112
000554  e7061fea  storeli.w r1, -2712(r30)
000558  9b901507  ori r1, r11, 113
00055c  67461fea  storeli.w r1, -2716(r30)
000560  9b902507  ori r1, r11, 114
000564  67061fea  storeli.w r1, -2720(r30)
000568  9b903507  ori r1, r11, 115
00056c  e7451fea  storeli.w r1, -2724(r30)
000570  9b904507  ori r1, r11, 116
000574  e7051fea  storeli.w r1, -2728(r30)
000578  9b905507  ori r1, r11, 117
00057c  67451fea  storeli.w r1, -2732(r30)
000580  9b906507  ori r1, r11, 118
000584  67051fea  storeli.w r1, -2736(r30)
000588  9b907507  ori r1, r11, 119
00058c  e7441fea  storeli.w r1, -2740(r30)
000590  9b908507  ori r1, r11, 120
000594  e7041fea  storeli.w r1, -2744(r30)
000598  9b909507  ori r1, r11, 121
00059c  67441fea  storeli.w r1, -2748(r30)
0005a0  9b90a507  ori r1, r11, 122
0005a4  67041fea  storeli.w r1, -2752(r30)
0005a8  9b90b507  ori r1, r11, 123
0005ac  e7431fea  storeli.w r1, -2756(r30)
0005b0  9b90c507  ori r1, r11, 124
0005b4  e7031fea  storeli.w r1, -2760(r30)
0005b8  9b90d507  ori r1, r11, 125
0005bc  67431fea  storeli.w r1, -2764(r30)
0005c0  9b90e507  ori r1, r11, 126
0005c4  67031fea  storeli.w r1, -2768(r30)
0005c8  9b90f507  ori r1, r11, 127
0005cc  9f050ff8  addli r11, r30, -1024
0005d0  e7421fea  storeli.w r1, -2772(r30)
0005d4  9f002140  addli r1, r2, 8208
0005d8  67051fee  storeli.w r1, -2224(r30)
0005dc  9f000ff3  addli r1, r30, -1664
0005e0  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
0005e4  9f000000  addli r1, zero, 0
0005e8  0b911510  add.s r2, r11, r1
0005ec  9f800001  addli r1, r1, 128
0005f0  4610a102  vstore_mask16.mz vr10{mr1}, 0(r2)
0005f4  4614a102  vstore_mask16.mz vr10{mr1}, 64(r2)
0005f8  00a00000  mfence { lm }
0005fc  bbbf60fe  bneq r1, r6, -20
000600  e3005f00  loadli.w r1,  40(r30)
000604  63414f00  loadli.w r2,  36(r30)
000608  9f220000  addli r5, zero, 2
00060c  e7479ff2  storeli.w r9, -1668(r30)
000610  9233a002  vadd.s.mz vr7{mr1}, zero, vr10
000614  8b901430  div.s r1, r9, r1
000618  92357002  vadd.s.mz vr11{mr1}, zero, vr7
00061c  8b902030  div.s r1, r1, r2
000620  63417fee  loadli.w r2,  -2244(r30)
000624  9bb03000  slli r1, r1, 3
000628  8b9d2010  add.s r27, r1, r2
00062c  e3007fee  loadli.w r1,  -2248(r30)
000630  2b0100f0  lui r2, 983040
000634  1bb8ad00  slli r16, r27, 10
000638  17112300  or r2, r6, r2
00063c  8b101810  add.s r1, r16, r1
000640  b3910028  sext_int2long r[4:5], r1
000644  ab0000f0  lui r1, 983040
000648  17b45102  sll.d r[9:10], r[4:5], r5
00064c  eb510f00  load.d r[4:5], 0(r30)
000650  97101300  or r1, r6, r1
000654  73388f96  store.d r[9:10], -1680(r30)
000658  8ba18110  add.ul r[4:5], r[4:5], r[9:10]
00065c  7fa1b100  l_gm2lm r2, r11, 0(r[4:5])
000660  1f02dfed  addli r4, r30, -2328
000664  6b510200  load.d r[3:4], 0(r4)
000668  ff207100  l_gm2lm r1, r7, 0(r[3:4])
00066c  9f008ff5  addli r1, r30, -1344
000670  00a00000  mfence { lm }
000674  c2110f82  vload_mask16.mz vr3{mr1}, 1024(r30)
000678  42108f82  vload_mask16.mz vr0{mr1}, 1088(r30)
00067c  00a00000  mfence { lm }
000680  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000684  9f008ff7  addli r1, r30, -1088
000688  42100f83  vload_mask16.mz vr0{mr1}, 1152(r30)
00068c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000690  9f000ff7  addli r1, r30, -1152
000694  42108f83  vload_mask16.mz vr0{mr1}, 1216(r30)
000698  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00069c  9f000ff5  addli r1, r30, -1408
0006a0  42100fa2  vload_mask16.mz vr0{mr1}, 1280(r30)
0006a4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0006a8  9f008ff6  addli r1, r30, -1216
0006ac  42128fa2  vload_mask16.mz vr4{mr1}, 1344(r30)
0006b0  42100fa3  vload_mask16.mz vr0{mr1}, 1408(r30)
0006b4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0006b8  9f000ff6  addli r1, r30, -1280
0006bc  42108fa3  vload_mask16.mz vr0{mr1}, 1472(r30)
0006c0  630c8ffd  loadli.w r24,  -320(r30)
0006c4  e305cffc  loadli.w r11,  -416(r30)
0006c8  6301dffc  loadli.w r2,  -408(r30)
0006cc  e341dffc  loadli.w r3,  -404(r30)
0006d0  6302effc  loadli.w r4,  -400(r30)
0006d4  e342effc  loadli.w r5,  -396(r30)
0006d8  6303fffc  loadli.w r6,  -392(r30)
0006dc  e343fffc  loadli.w r7,  -388(r30)
0006e0  63040ffd  loadli.w r8,  -384(r30)
0006e4  e3440ffd  loadli.w r9,  -380(r30)
0006e8  63061ffd  loadli.w r12,  -376(r30)
0006ec  e3461ffd  loadli.w r13,  -372(r30)
0006f0  63072ffd  loadli.w r14,  -368(r30)
0006f4  e3472ffd  loadli.w r15,  -364(r30)
0006f8  e3083ffd  loadli.w r17,  -360(r30)
0006fc  63493ffd  loadli.w r18,  -356(r30)
000700  e3094ffd  loadli.w r19,  -352(r30)
000704  634a4ffd  loadli.w r20,  -348(r30)
000708  e30a5ffd  loadli.w r21,  -344(r30)
00070c  634b5ffd  loadli.w r22,  -340(r30)
000710  e30b6ffd  loadli.w r23,  -336(r30)
000714  e34c6ffd  loadli.w r25,  -332(r30)
000718  630d7ffd  loadli.w r26,  -328(r30)
00071c  634e7ffd  loadli.w r28,  -324(r30)
000720  67068ff1  storeli.w r24, -1952(r30)
000724  634c8ffd  loadli.w r24,  -316(r30)
000728  67468ff1  storeli.w r24, -1948(r30)
00072c  630c9ffd  loadli.w r24,  -312(r30)
000730  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000734  e3000ffc  loadli.w r1,  -512(r30)
000738  e7068ff1  storeli.w r24, -1944(r30)
00073c  634c9ffd  loadli.w r24,  -308(r30)
000740  67041ff2  storeli.w r1, -1728(r30)
000744  e3400ffc  loadli.w r1,  -508(r30)
000748  e7468ff1  storeli.w r24, -1940(r30)
00074c  630caffd  loadli.w r24,  -304(r30)
000750  e7041ff2  storeli.w r1, -1720(r30)
000754  e3001ffc  loadli.w r1,  -504(r30)
000758  67078ff1  storeli.w r24, -1936(r30)
00075c  634caffd  loadli.w r24,  -300(r30)
000760  67051ff2  storeli.w r1, -1712(r30)
000764  e3401ffc  loadli.w r1,  -500(r30)
000768  67478ff1  storeli.w r24, -1932(r30)
00076c  630cbffd  loadli.w r24,  -296(r30)
000770  e7051ff2  storeli.w r1, -1704(r30)
000774  e3002ffc  loadli.w r1,  -496(r30)
000778  e7078ff1  storeli.w r24, -1928(r30)
00077c  634cbffd  loadli.w r24,  -292(r30)
000780  67061ff2  storeli.w r1, -1696(r30)
000784  e3402ffc  loadli.w r1,  -492(r30)
000788  e7478ff1  storeli.w r24, -1924(r30)
00078c  630ccffd  loadli.w r24,  -288(r30)
000790  e7061ff2  storeli.w r1, -1688(r30)
000794  e3003ffc  loadli.w r1,  -488(r30)
000798  67088ff1  storeli.w r24, -1920(r30)
00079c  634ccffd  loadli.w r24,  -284(r30)
0007a0  670f1ff2  storeli.w r1, -1552(r30)
0007a4  e3403ffc  loadli.w r1,  -484(r30)
0007a8  67488ff1  storeli.w r24, -1916(r30)
0007ac  630cdffd  loadli.w r24,  -280(r30)
0007b0  e70f1ff2  storeli.w r1, -1544(r30)
0007b4  e3004ffc  loadli.w r1,  -480(r30)
0007b8  e7088ff1  storeli.w r24, -1912(r30)
0007bc  634cdffd  loadli.w r24,  -276(r30)
0007c0  67001ff4  storeli.w r1, -1536(r30)
0007c4  e3404ffc  loadli.w r1,  -476(r30)
0007c8  e7488ff1  storeli.w r24, -1908(r30)
0007cc  630ceffd  loadli.w r24,  -272(r30)
0007d0  e7001ff4  storeli.w r1, -1528(r30)
0007d4  e3005ffc  loadli.w r1,  -472(r30)
0007d8  67098ff1  storeli.w r24, -1904(r30)
0007dc  634ceffd  loadli.w r24,  -268(r30)
0007e0  67011ff4  storeli.w r1, -1520(r30)
0007e4  e3405ffc  loadli.w r1,  -468(r30)
0007e8  67498ff1  storeli.w r24, -1900(r30)
0007ec  630cfffd  loadli.w r24,  -264(r30)
0007f0  e7011ff4  storeli.w r1, -1512(r30)
0007f4  e3006ffc  loadli.w r1,  -464(r30)
0007f8  e7098ff1  storeli.w r24, -1896(r30)
0007fc  634cfffd  loadli.w r24,  -260(r30)
000800  67021ff4  storeli.w r1, -1504(r30)
000804  e3406ffc  loadli.w r1,  -460(r30)
000808  e7498ff1  storeli.w r24, -1892(r30)
00080c  630c0ffe  loadli.w r24,  -256(r30)
000810  e7021ff4  storeli.w r1, -1496(r30)
000814  e3007ffc  loadli.w r1,  -456(r30)
000818  670a8ff1  storeli.w r24, -1888(r30)
00081c  634c0ffe  loadli.w r24,  -252(r30)
000820  67031ff4  storeli.w r1, -1488(r30)
000824  e3407ffc  loadli.w r1,  -452(r30)
000828  674a8ff1  storeli.w r24, -1884(r30)
00082c  630c1ffe  loadli.w r24,  -248(r30)
000830  e7031ff4  storeli.w r1, -1480(r30)
000834  e3008ffc  loadli.w r1,  -448(r30)
000838  e70a8ff1  storeli.w r24, -1880(r30)
00083c  634c1ffe  loadli.w r24,  -244(r30)
000840  67041ff4  storeli.w r1, -1472(r30)
000844  e3408ffc  loadli.w r1,  -444(r30)
000848  e74a8ff1  storeli.w r24, -1876(r30)
00084c  630c2ffe  loadli.w r24,  -240(r30)
000850  e7041ff4  storeli.w r1, -1464(r30)
000854  e3009ffc  loadli.w r1,  -440(r30)
000858  670b8ff1  storeli.w r24, -1872(r30)
00085c  634c2ffe  loadli.w r24,  -236(r30)
000860  67051ff4  storeli.w r1, -1456(r30)
000864  e3409ffc  loadli.w r1,  -436(r30)
000868  674b8ff1  storeli.w r24, -1868(r30)
00086c  630c3ffe  loadli.w r24,  -232(r30)
000870  e7051ff4  storeli.w r1, -1448(r30)
000874  e300affc  loadli.w r1,  -432(r30)
000878  e70b8ff1  storeli.w r24, -1864(r30)
00087c  634c3ffe  loadli.w r24,  -228(r30)
000880  67061ff4  storeli.w r1, -1440(r30)
000884  e340affc  loadli.w r1,  -428(r30)
000888  e74b8ff1  storeli.w r24, -1860(r30)
00088c  630c4ffe  loadli.w r24,  -224(r30)
000890  e7061ff4  storeli.w r1, -1432(r30)
000894  e300bffc  loadli.w r1,  -424(r30)
000898  670c8ff1  storeli.w r24, -1856(r30)
00089c  634c4ffe  loadli.w r24,  -220(r30)
0008a0  67071ff4  storeli.w r1, -1424(r30)
0008a4  e340bffc  loadli.w r1,  -420(r30)
0008a8  674c8ff1  storeli.w r24, -1852(r30)
0008ac  630c5ffe  loadli.w r24,  -216(r30)
0008b0  e7071ff4  storeli.w r1, -1416(r30)
0008b4  e340cffc  loadli.w r1,  -412(r30)
0008b8  e70c8ff1  storeli.w r24, -1848(r30)
0008bc  634c5ffe  loadli.w r24,  -212(r30)
0008c0  e74c8ff1  storeli.w r24, -1844(r30)
0008c4  630c6ffe  loadli.w r24,  -208(r30)
0008c8  670d8ff1  storeli.w r24, -1840(r30)
0008cc  634c6ffe  loadli.w r24,  -204(r30)
0008d0  674d8ff1  storeli.w r24, -1836(r30)
0008d4  630c7ffe  loadli.w r24,  -200(r30)
0008d8  e70d8ff1  storeli.w r24, -1832(r30)
0008dc  634c7ffe  loadli.w r24,  -196(r30)
0008e0  e74d8ff1  storeli.w r24, -1828(r30)
0008e4  630c8ffe  loadli.w r24,  -192(r30)
0008e8  670e8ff1  storeli.w r24, -1824(r30)
0008ec  634c8ffe  loadli.w r24,  -188(r30)
0008f0  674e8ff1  storeli.w r24, -1820(r30)
0008f4  630c9ffe  loadli.w r24,  -184(r30)
0008f8  e70e8ff1  storeli.w r24, -1816(r30)
0008fc  634c9ffe  loadli.w r24,  -180(r30)
000900  e74e8ff1  storeli.w r24, -1812(r30)
000904  630caffe  loadli.w r24,  -176(r30)
000908  670f8ff1  storeli.w r24, -1808(r30)
00090c  634caffe  loadli.w r24,  -172(r30)
000910  674f8ff1  storeli.w r24, -1804(r30)
000914  630cbffe  loadli.w r24,  -168(r30)
000918  e70f8ff1  storeli.w r24, -1800(r30)
00091c  634cbffe  loadli.w r24,  -164(r30)
000920  e74f8ff1  storeli.w r24, -1796(r30)
000924  630ccffe  loadli.w r24,  -160(r30)
000928  67008ff3  storeli.w r24, -1792(r30)
00092c  634ccffe  loadli.w r24,  -156(r30)
000930  67408ff3  storeli.w r24, -1788(r30)
000934  630cdffe  loadli.w r24,  -152(r30)
000938  e7008ff3  storeli.w r24, -1784(r30)
00093c  634cdffe  loadli.w r24,  -148(r30)
000940  e7408ff3  storeli.w r24, -1780(r30)
000944  630ceffe  loadli.w r24,  -144(r30)
000948  67018ff3  storeli.w r24, -1776(r30)
00094c  634ceffe  loadli.w r24,  -140(r30)
000950  67418ff3  storeli.w r24, -1772(r30)
000954  630cfffe  loadli.w r24,  -136(r30)
000958  e7018ff3  storeli.w r24, -1768(r30)
00095c  634cfffe  loadli.w r24,  -132(r30)
000960  e7418ff3  storeli.w r24, -1764(r30)
000964  630c0fff  loadli.w r24,  -128(r30)
000968  67028ff3  storeli.w r24, -1760(r30)
00096c  634c0fff  loadli.w r24,  -124(r30)
000970  67428ff3  storeli.w r24, -1756(r30)
000974  630c1fff  loadli.w r24,  -120(r30)
000978  e7028ff3  storeli.w r24, -1752(r30)
00097c  634c1fff  loadli.w r24,  -116(r30)
000980  e7428ff3  storeli.w r24, -1748(r30)
000984  630c2fff  loadli.w r24,  -112(r30)
000988  67038ff3  storeli.w r24, -1744(r30)
00098c  634c2fff  loadli.w r24,  -108(r30)
000990  67438ff3  storeli.w r24, -1740(r30)
000994  630c3fff  loadli.w r24,  -104(r30)
000998  e7038ff3  storeli.w r24, -1736(r30)
00099c  634c3fff  loadli.w r24,  -100(r30)
0009a0  e7438ff3  storeli.w r24, -1732(r30)
0009a4  630c4fff  loadli.w r24,  -96(r30)
0009a8  67448ff3  storeli.w r24, -1724(r30)
0009ac  634c4fff  loadli.w r24,  -92(r30)
0009b0  e7448ff3  storeli.w r24, -1716(r30)
0009b4  630c5fff  loadli.w r24,  -88(r30)
0009b8  67458ff3  storeli.w r24, -1708(r30)
0009bc  634c5fff  loadli.w r24,  -84(r30)
0009c0  e7458ff3  storeli.w r24, -1700(r30)
0009c4  630c6fff  loadli.w r24,  -80(r30)
0009c8  67468ff3  storeli.w r24, -1692(r30)
0009cc  634c6fff  loadli.w r24,  -76(r30)
0009d0  e7468ff3  storeli.w r24, -1684(r30)
0009d4  630c7fff  loadli.w r24,  -72(r30)
0009d8  674f8ff3  storeli.w r24, -1548(r30)
0009dc  634c7fff  loadli.w r24,  -68(r30)
0009e0  e74f8ff3  storeli.w r24, -1540(r30)
0009e4  630c8fff  loadli.w r24,  -64(r30)
0009e8  67408ff5  storeli.w r24, -1532(r30)
0009ec  634c8fff  loadli.w r24,  -60(r30)
0009f0  e7408ff5  storeli.w r24, -1524(r30)
0009f4  630c9fff  loadli.w r24,  -56(r30)
0009f8  67418ff5  storeli.w r24, -1516(r30)
0009fc  634c9fff  loadli.w r24,  -52(r30)
000a00  e7418ff5  storeli.w r24, -1508(r30)
000a04  630cafff  loadli.w r24,  -48(r30)
000a08  67428ff5  storeli.w r24, -1500(r30)
000a0c  634cafff  loadli.w r24,  -44(r30)
000a10  e7428ff5  storeli.w r24, -1492(r30)
000a14  630cbfff  loadli.w r24,  -40(r30)
000a18  67438ff5  storeli.w r24, -1484(r30)
000a1c  634cbfff  loadli.w r24,  -36(r30)
000a20  e7438ff5  storeli.w r24, -1476(r30)
000a24  630ccfff  loadli.w r24,  -32(r30)
000a28  67448ff5  storeli.w r24, -1468(r30)
000a2c  634ccfff  loadli.w r24,  -28(r30)
000a30  e7448ff5  storeli.w r24, -1460(r30)
000a34  630cdfff  loadli.w r24,  -24(r30)
000a38  67458ff5  storeli.w r24, -1452(r30)
000a3c  634cdfff  loadli.w r24,  -20(r30)
000a40  e7458ff5  storeli.w r24, -1444(r30)
000a44  630cefff  loadli.w r24,  -16(r30)
000a48  67468ff5  storeli.w r24, -1436(r30)
000a4c  634cefff  loadli.w r24,  -12(r30)
000a50  e7468ff5  storeli.w r24, -1428(r30)
000a54  630cffff  loadli.w r24,  -8(r30)
000a58  67478ff5  storeli.w r24, -1420(r30)
000a5c  634cffff  loadli.w r24,  -4(r30)
000a60  e7478ff5  storeli.w r24, -1412(r30)
000a64  630c8ff2  loadli.w r24,  -1728(r30)
000a68  6a25ac34  vor.u.mh vr10{mr2}, r24, vr10
000a6c  1f2c0000  addli r24, zero, 2
000a70  7e010ce0  vmmov mr2, r24
000a74  630c9ff2  loadli.w r24,  -1720(r30)
000a78  6a25ac34  vor.u.mh vr10{mr2}, r24, vr10
000a7c  630caff2  loadli.w r24,  -1712(r30)
000a80  6a25ac30  vor.u.mh vr10{mr0}, r24, vr10
000a84  1f0c1000  addli r24, zero, 8
000a88  fe010ce0  vmmov mr3, r24
000a8c  630cbff2  loadli.w r24,  -1704(r30)
000a90  6a25ac36  vor.u.mh vr10{mr3}, r24, vr10
000a94  1f0c2000  addli r24, zero, 16
000a98  fe0100c0  vmmov mr3, mr0
000a9c  7e000ce0  vmmov mr0, r24
000aa0  630ccff2  loadli.w r24,  -1696(r30)
000aa4  6a25ac30  vor.u.mh vr10{mr0}, r24, vr10
000aa8  1f0c4000  addli r24, zero, 32
000aac  7e010ce0  vmmov mr2, r24
000ab0  630cdff2  loadli.w r24,  -1688(r30)
000ab4  6a25ac34  vor.u.mh vr10{mr2}, r24, vr10
000ab8  1f0c8000  addli r24, zero, 64
000abc  7e010ce0  vmmov mr2, r24
000ac0  630ceff3  loadli.w r24,  -1552(r30)
000ac4  6a25ac34  vor.u.mh vr10{mr2}, r24, vr10
000ac8  1f0c0001  addli r24, zero, 128
000acc  7e010ce0  vmmov mr2, r24
000ad0  630cfff3  loadli.w r24,  -1544(r30)
000ad4  6a25ac34  vor.u.mh vr10{mr2}, r24, vr10
000ad8  1f0c0002  addli r24, zero, 256
000adc  7e010ce0  vmmov mr2, r24
000ae0  630c0ff4  loadli.w r24,  -1536(r30)
000ae4  6a25ac34  vor.u.mh vr10{mr2}, r24, vr10
000ae8  1f0c0004  addli r24, zero, 512
000aec  7e010ce0  vmmov mr2, r24
000af0  630c1ff4  loadli.w r24,  -1528(r30)
000af4  6a25ac34  vor.u.mh vr10{mr2}, r24, vr10
000af8  1f0c0008  addli r24, zero, 1024
000afc  7e010ce0  vmmov mr2, r24
000b00  630c2ff4  loadli.w r24,  -1520(r30)
000b04  6a25ac34  vor.u.mh vr10{mr2}, r24, vr10
000b08  1f0c0010  addli r24, zero, 2048
000b0c  7e010ce0  vmmov mr2, r24
000b10  630c3ff4  loadli.w r24,  -1512(r30)
000b14  6a25ac34  vor.u.mh vr10{mr2}, r24, vr10
000b18  1f0c0020  addli r24, zero, 4096
000b1c  7e010ce0  vmmov mr2, r24
000b20  630c4ff4  loadli.w r24,  -1504(r30)
000b24  6a25ac34  vor.u.mh vr10{mr2}, r24, vr10
000b28  1f0c0040  addli r24, zero, 8192
000b2c  1f100000  addli zero, zero, 1
000b30  7e010ce0  vmmov mr2, r24
000b34  630c5ff4  loadli.w r24,  -1496(r30)
000b38  6a25ac34  vor.u.mh vr10{mr2}, r24, vr10
000b3c  2b4c0000  lui r24, 4
000b40  7e010ce0  vmmov mr2, r24
000b44  630c6ff4  loadli.w r24,  -1488(r30)
000b48  6a25ac34  vor.u.mh vr10{mr2}, r24, vr10
000b4c  2b8c0000  lui r24, 8
000b50  7e010ce0  vmmov mr2, r24
000b54  630c7ff4  loadli.w r24,  -1480(r30)
000b58  6a25ac34  vor.u.mh vr10{mr2}, r24, vr10
000b5c  630c8ff4  loadli.w r24,  -1472(r30)
000b60  7e0100e0  vmmov mr2, zero
000b64  17200000  xor zero, zero, zero
000b68  1f200000  addli zero, zero, 2
000b6c  ea25bc34  vor.u.mh vr11{mr2}, r24, vr11
000b70  630c9ff4  loadli.w r24,  -1464(r30)
000b74  7e0000e0  vmmov mr0, zero
000b78  17200000  xor zero, zero, zero
000b7c  1f001000  addli zero, zero, 8
000b80  ea25bc30  vor.u.mh vr11{mr0}, r24, vr11
000b84  630caff4  loadli.w r24,  -1456(r30)
000b88  7e0000e0  vmmov mr0, zero
000b8c  17200000  xor zero, zero, zero
000b90  1f002000  addli zero, zero, 16
000b94  ea25bc36  vor.u.mh vr11{mr3}, r24, vr11
000b98  630cbff4  loadli.w r24,  -1448(r30)
000b9c  ea25bc30  vor.u.mh vr11{mr0}, r24, vr11
000ba0  630ccff4  loadli.w r24,  -1440(r30)
000ba4  7e0000e0  vmmov mr0, zero
000ba8  17200000  xor zero, zero, zero
000bac  1f004000  addli zero, zero, 32
000bb0  ea25bc30  vor.u.mh vr11{mr0}, r24, vr11
000bb4  630cdff4  loadli.w r24,  -1432(r30)
000bb8  7e0000e0  vmmov mr0, zero
000bbc  17200000  xor zero, zero, zero
000bc0  1f008000  addli zero, zero, 64
000bc4  ea25bc30  vor.u.mh vr11{mr0}, r24, vr11
000bc8  630ceff4  loadli.w r24,  -1424(r30)
000bcc  7e0000e0  vmmov mr0, zero
000bd0  17200000  xor zero, zero, zero
000bd4  1f000001  addli zero, zero, 128
000bd8  ea25bc30  vor.u.mh vr11{mr0}, r24, vr11
000bdc  630cfff4  loadli.w r24,  -1416(r30)
000be0  7e0000e0  vmmov mr0, zero
000be4  17200000  xor zero, zero, zero
000be8  12307002  vadd.s.mz vr0{mr1}, zero, vr7
000bec  92347002  vadd.s.mz vr9{mr1}, zero, vr7
000bf0  92307002  vadd.s.mz vr1{mr1}, zero, vr7
000bf4  92327002  vadd.s.mz vr5{mr1}, zero, vr7
000bf8  12347002  vadd.s.mz vr8{mr1}, zero, vr7
000bfc  12337002  vadd.s.mz vr6{mr1}, zero, vr7
000c00  ea25bc30  vor.u.mh vr11{mr0}, r24, vr11
000c04  1f0c0002  addli r24, zero, 256
000c08  7e000ce0  vmmov mr0, r24
000c0c  eaa5b530  vor.u.mh vr11{mr0}, r11, vr11
000c10  9f050004  addli r11, zero, 512
000c14  7e8005e0  vmmov mr0, r11
000c18  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000c1c  9f000008  addli r1, zero, 1024
000c20  7e8000e0  vmmov mr0, r1
000c24  9f000010  addli r1, zero, 2048
000c28  ea25b130  vor.u.mh vr11{mr0}, r2, vr11
000c2c  7e8000e0  vmmov mr0, r1
000c30  9f000020  addli r1, zero, 4096
000c34  1f210000  addli r2, zero, 2
000c38  eaa5b130  vor.u.mh vr11{mr0}, r3, vr11
000c3c  7e8000e0  vmmov mr0, r1
000c40  9f000040  addli r1, zero, 8192
000c44  ea25b230  vor.u.mh vr11{mr0}, r4, vr11
000c48  7e8000e0  vmmov mr0, r1
000c4c  ab400000  lui r1, 4
000c50  eaa5b230  vor.u.mh vr11{mr0}, r5, vr11
000c54  7e8000e0  vmmov mr0, r1
000c58  ab800000  lui r1, 8
000c5c  ea25b330  vor.u.mh vr11{mr0}, r6, vr11
000c60  7e8000e0  vmmov mr0, r1
000c64  9f200000  addli r1, zero, 2
000c68  eaa5b330  vor.u.mh vr11{mr0}, r7, vr11
000c6c  6a200434  vor.u.mh vr0{mr2}, r8, vr0
000c70  7e8000e0  vmmov mr0, r1
000c74  9f001000  addli r1, zero, 8
000c78  6aa00430  vor.u.mh vr0{mr0}, r9, vr0
000c7c  7e8000e0  vmmov mr0, r1
000c80  9f002000  addli r1, zero, 16
000c84  6a200636  vor.u.mh vr0{mr3}, r12, vr0
000c88  6aa00630  vor.u.mh vr0{mr0}, r13, vr0
000c8c  7e8000e0  vmmov mr0, r1
000c90  9f004000  addli r1, zero, 32
000c94  6a200730  vor.u.mh vr0{mr0}, r14, vr0
000c98  7e8000e0  vmmov mr0, r1
000c9c  9f008000  addli r1, zero, 64
000ca0  6aa00730  vor.u.mh vr0{mr0}, r15, vr0
000ca4  7e8000e0  vmmov mr0, r1
000ca8  9f000001  addli r1, zero, 128
000cac  6aa00830  vor.u.mh vr0{mr0}, r17, vr0
000cb0  7e8000e0  vmmov mr0, r1
000cb4  9f000002  addli r1, zero, 256
000cb8  6a200930  vor.u.mh vr0{mr0}, r18, vr0
000cbc  7e8000e0  vmmov mr0, r1
000cc0  9f000004  addli r1, zero, 512
000cc4  6aa00930  vor.u.mh vr0{mr0}, r19, vr0
000cc8  7e8000e0  vmmov mr0, r1
000ccc  9f000008  addli r1, zero, 1024
000cd0  6a200a30  vor.u.mh vr0{mr0}, r20, vr0
000cd4  7e8000e0  vmmov mr0, r1
000cd8  9f000010  addli r1, zero, 2048
000cdc  6aa00a30  vor.u.mh vr0{mr0}, r21, vr0
000ce0  7e8000e0  vmmov mr0, r1
000ce4  9f000020  addli r1, zero, 4096
000ce8  6a200b30  vor.u.mh vr0{mr0}, r22, vr0
000cec  7e8000e0  vmmov mr0, r1
000cf0  9f000040  addli r1, zero, 8192
000cf4  6aa00b30  vor.u.mh vr0{mr0}, r23, vr0
000cf8  7e8000e0  vmmov mr0, r1
000cfc  ab400000  lui r1, 4
000d00  6aa00c30  vor.u.mh vr0{mr0}, r25, vr0
000d04  7e8000e0  vmmov mr0, r1
000d08  ab800000  lui r1, 8
000d0c  6a200d30  vor.u.mh vr0{mr0}, r26, vr0
000d10  7e8000e0  vmmov mr0, r1
000d14  6a200e30  vor.u.mh vr0{mr0}, r28, vr0
000d18  e300cff0  loadli.w r1,  -1952(r30)
000d1c  7e0001e0  vmmov mr0, r2
000d20  1f011000  addli r2, zero, 8
000d24  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
000d28  e340cff0  loadli.w r1,  -1948(r30)
000d2c  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000d30  e300dff0  loadli.w r1,  -1944(r30)
000d34  7e0001e0  vmmov mr0, r2
000d38  1f012000  addli r2, zero, 16
000d3c  eaa49036  vor.u.mh vr9{mr3}, r1, vr9
000d40  e340dff0  loadli.w r1,  -1940(r30)
000d44  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000d48  e300eff0  loadli.w r1,  -1936(r30)
000d4c  7e0001e0  vmmov mr0, r2
000d50  1f014000  addli r2, zero, 32
000d54  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000d58  e340eff0  loadli.w r1,  -1932(r30)
000d5c  7e0001e0  vmmov mr0, r2
000d60  1f018000  addli r2, zero, 64
000d64  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000d68  e300fff0  loadli.w r1,  -1928(r30)
000d6c  7e0001e0  vmmov mr0, r2
000d70  1f010001  addli r2, zero, 128
000d74  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000d78  e340fff0  loadli.w r1,  -1924(r30)
000d7c  7e0001e0  vmmov mr0, r2
000d80  1f010002  addli r2, zero, 256
000d84  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000d88  e3000ff1  loadli.w r1,  -1920(r30)
000d8c  7e0001e0  vmmov mr0, r2
000d90  1f010004  addli r2, zero, 512
000d94  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000d98  e3400ff1  loadli.w r1,  -1916(r30)
000d9c  7e0001e0  vmmov mr0, r2
000da0  1f010008  addli r2, zero, 1024
000da4  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000da8  e3001ff1  loadli.w r1,  -1912(r30)
000dac  7e0001e0  vmmov mr0, r2
000db0  1f010010  addli r2, zero, 2048
000db4  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000db8  e3401ff1  loadli.w r1,  -1908(r30)
000dbc  7e0001e0  vmmov mr0, r2
000dc0  1f010020  addli r2, zero, 4096
000dc4  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000dc8  e3002ff1  loadli.w r1,  -1904(r30)
000dcc  7e0001e0  vmmov mr0, r2
000dd0  1f010040  addli r2, zero, 8192
000dd4  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000dd8  e3402ff1  loadli.w r1,  -1900(r30)
000ddc  7e0001e0  vmmov mr0, r2
000de0  2b410000  lui r2, 4
000de4  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000de8  e3003ff1  loadli.w r1,  -1896(r30)
000dec  7e0001e0  vmmov mr0, r2
000df0  2b810000  lui r2, 8
000df4  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000df8  e3403ff1  loadli.w r1,  -1892(r30)
000dfc  7e0001e0  vmmov mr0, r2
000e00  1f210000  addli r2, zero, 2
000e04  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000e08  e3004ff1  loadli.w r1,  -1888(r30)
000e0c  7e0001c0  vmmov mr0, mr2
000e10  7e0101e0  vmmov mr2, r2
000e14  1f011000  addli r2, zero, 8
000e18  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000e1c  e3404ff1  loadli.w r1,  -1884(r30)
000e20  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000e24  e3005ff1  loadli.w r1,  -1880(r30)
000e28  7e0101e0  vmmov mr2, r2
000e2c  1f012000  addli r2, zero, 16
000e30  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
000e34  e3405ff1  loadli.w r1,  -1876(r30)
000e38  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000e3c  e3006ff1  loadli.w r1,  -1872(r30)
000e40  7e0101e0  vmmov mr2, r2
000e44  1f014000  addli r2, zero, 32
000e48  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000e4c  e3406ff1  loadli.w r1,  -1868(r30)
000e50  7e0101e0  vmmov mr2, r2
000e54  1f018000  addli r2, zero, 64
000e58  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000e5c  e3007ff1  loadli.w r1,  -1864(r30)
000e60  7e0101e0  vmmov mr2, r2
000e64  1f010001  addli r2, zero, 128
000e68  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000e6c  e3407ff1  loadli.w r1,  -1860(r30)
000e70  7e0101e0  vmmov mr2, r2
000e74  1f010002  addli r2, zero, 256
000e78  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000e7c  e3008ff1  loadli.w r1,  -1856(r30)
000e80  7e0101e0  vmmov mr2, r2
000e84  1f010004  addli r2, zero, 512
000e88  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000e8c  e3408ff1  loadli.w r1,  -1852(r30)
000e90  7e0101e0  vmmov mr2, r2
000e94  1f010008  addli r2, zero, 1024
000e98  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000e9c  e3009ff1  loadli.w r1,  -1848(r30)
000ea0  7e0101e0  vmmov mr2, r2
000ea4  1f010010  addli r2, zero, 2048
000ea8  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000eac  e3409ff1  loadli.w r1,  -1844(r30)
000eb0  7e0101e0  vmmov mr2, r2
000eb4  1f010020  addli r2, zero, 4096
000eb8  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000ebc  e300aff1  loadli.w r1,  -1840(r30)
000ec0  7e0101e0  vmmov mr2, r2
000ec4  1f010040  addli r2, zero, 8192
000ec8  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000ecc  e340aff1  loadli.w r1,  -1836(r30)
000ed0  7e0101e0  vmmov mr2, r2
000ed4  2b410000  lui r2, 4
000ed8  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000edc  e300bff1  loadli.w r1,  -1832(r30)
000ee0  7e0101e0  vmmov mr2, r2
000ee4  2b810000  lui r2, 8
000ee8  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000eec  e340bff1  loadli.w r1,  -1828(r30)
000ef0  7e0101e0  vmmov mr2, r2
000ef4  1f210000  addli r2, zero, 2
000ef8  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000efc  e300cff1  loadli.w r1,  -1824(r30)
000f00  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000f04  7e0100c0  vmmov mr2, mr0
000f08  e340cff1  loadli.w r1,  -1820(r30)
000f0c  7e0001e0  vmmov mr0, r2
000f10  1f011000  addli r2, zero, 8
000f14  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000f18  e300dff1  loadli.w r1,  -1816(r30)
000f1c  7e8001c0  vmmov mr0, mr3
000f20  fe0101e0  vmmov mr3, r2
000f24  1f012000  addli r2, zero, 16
000f28  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000f2c  e340dff1  loadli.w r1,  -1812(r30)
000f30  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
000f34  e300eff1  loadli.w r1,  -1808(r30)
000f38  fe0101e0  vmmov mr3, r2
000f3c  1f014000  addli r2, zero, 32
000f40  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
000f44  e340eff1  loadli.w r1,  -1804(r30)
000f48  fe0101e0  vmmov mr3, r2
000f4c  1f018000  addli r2, zero, 64
000f50  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
000f54  e300fff1  loadli.w r1,  -1800(r30)
000f58  fe0101e0  vmmov mr3, r2
000f5c  1f010001  addli r2, zero, 128
000f60  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
000f64  e340fff1  loadli.w r1,  -1796(r30)
000f68  fe0101e0  vmmov mr3, r2
000f6c  1f010002  addli r2, zero, 256
000f70  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
000f74  e3000ff2  loadli.w r1,  -1792(r30)
000f78  fe0101e0  vmmov mr3, r2
000f7c  1f010004  addli r2, zero, 512
000f80  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
000f84  e3400ff2  loadli.w r1,  -1788(r30)
000f88  fe0101e0  vmmov mr3, r2
000f8c  1f010008  addli r2, zero, 1024
000f90  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
000f94  e3001ff2  loadli.w r1,  -1784(r30)
000f98  fe0101e0  vmmov mr3, r2
000f9c  1f010010  addli r2, zero, 2048
000fa0  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
000fa4  e3401ff2  loadli.w r1,  -1780(r30)
000fa8  fe0101e0  vmmov mr3, r2
000fac  1f010020  addli r2, zero, 4096
000fb0  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
000fb4  e3002ff2  loadli.w r1,  -1776(r30)
000fb8  fe0101e0  vmmov mr3, r2
000fbc  1f010040  addli r2, zero, 8192
000fc0  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
000fc4  e3402ff2  loadli.w r1,  -1772(r30)
000fc8  fe0101e0  vmmov mr3, r2
000fcc  2b410000  lui r2, 4
000fd0  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
000fd4  e3003ff2  loadli.w r1,  -1768(r30)
000fd8  fe0101e0  vmmov mr3, r2
000fdc  2b810000  lui r2, 8
000fe0  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
000fe4  e3403ff2  loadli.w r1,  -1764(r30)
000fe8  fe0101e0  vmmov mr3, r2
000fec  1f210000  addli r2, zero, 2
000ff0  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
000ff4  e3004ff2  loadli.w r1,  -1760(r30)
000ff8  fe0101e0  vmmov mr3, r2
000ffc  1f011000  addli r2, zero, 8
001000  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
001004  e3404ff2  loadli.w r1,  -1756(r30)
001008  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
00100c  e3005ff2  loadli.w r1,  -1752(r30)
001010  fe0101e0  vmmov mr3, r2
001014  1f012000  addli r2, zero, 16
001018  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
00101c  e3405ff2  loadli.w r1,  -1748(r30)
001020  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
001024  e3006ff2  loadli.w r1,  -1744(r30)
001028  fe0101e0  vmmov mr3, r2
00102c  1f014000  addli r2, zero, 32
001030  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
001034  e3406ff2  loadli.w r1,  -1740(r30)
001038  fe0101e0  vmmov mr3, r2
00103c  1f018000  addli r2, zero, 64
001040  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
001044  e3007ff2  loadli.w r1,  -1736(r30)
001048  fe0101e0  vmmov mr3, r2
00104c  1f010001  addli r2, zero, 128
001050  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
001054  e3407ff2  loadli.w r1,  -1732(r30)
001058  fe0101e0  vmmov mr3, r2
00105c  1f010002  addli r2, zero, 256
001060  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
001064  e3408ff2  loadli.w r1,  -1724(r30)
001068  fe0101e0  vmmov mr3, r2
00106c  1f010004  addli r2, zero, 512
001070  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
001074  e3409ff2  loadli.w r1,  -1716(r30)
001078  fe0101e0  vmmov mr3, r2
00107c  1f010008  addli r2, zero, 1024
001080  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
001084  e340aff2  loadli.w r1,  -1708(r30)
001088  fe0101e0  vmmov mr3, r2
00108c  1f010010  addli r2, zero, 2048
001090  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
001094  e340bff2  loadli.w r1,  -1700(r30)
001098  fe0101e0  vmmov mr3, r2
00109c  1f010020  addli r2, zero, 4096
0010a0  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
0010a4  e340cff2  loadli.w r1,  -1692(r30)
0010a8  fe0101e0  vmmov mr3, r2
0010ac  1f010040  addli r2, zero, 8192
0010b0  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
0010b4  e340dff2  loadli.w r1,  -1684(r30)
0010b8  fe0101e0  vmmov mr3, r2
0010bc  2b410000  lui r2, 4
0010c0  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
0010c4  e340eff3  loadli.w r1,  -1548(r30)
0010c8  fe0101e0  vmmov mr3, r2
0010cc  2b810000  lui r2, 8
0010d0  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
0010d4  e340fff3  loadli.w r1,  -1540(r30)
0010d8  fe0101e0  vmmov mr3, r2
0010dc  1f210000  addli r2, zero, 2
0010e0  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
0010e4  e3400ff4  loadli.w r1,  -1532(r30)
0010e8  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
0010ec  e3401ff4  loadli.w r1,  -1524(r30)
0010f0  7e0101e0  vmmov mr2, r2
0010f4  1f011000  addli r2, zero, 8
0010f8  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
0010fc  e3402ff4  loadli.w r1,  -1516(r30)
001100  7e0101e0  vmmov mr2, r2
001104  1f012000  addli r2, zero, 16
001108  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
00110c  e3403ff4  loadli.w r1,  -1508(r30)
001110  7e0001e0  vmmov mr0, r2
001114  1f014000  addli r2, zero, 32
001118  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
00111c  e3404ff4  loadli.w r1,  -1500(r30)
001120  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
001124  e3405ff4  loadli.w r1,  -1492(r30)
001128  7e0001e0  vmmov mr0, r2
00112c  1f018000  addli r2, zero, 64
001130  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
001134  e3406ff4  loadli.w r1,  -1484(r30)
001138  7e0001e0  vmmov mr0, r2
00113c  1f010001  addli r2, zero, 128
001140  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
001144  e3407ff4  loadli.w r1,  -1476(r30)
001148  7e0001e0  vmmov mr0, r2
00114c  1f010002  addli r2, zero, 256
001150  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
001154  e3408ff4  loadli.w r1,  -1468(r30)
001158  7e0001e0  vmmov mr0, r2
00115c  1f010004  addli r2, zero, 512
001160  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
001164  e3409ff4  loadli.w r1,  -1460(r30)
001168  7e0001e0  vmmov mr0, r2
00116c  1f010008  addli r2, zero, 1024
001170  7e0101e0  vmmov mr2, r2
001174  1f010010  addli r2, zero, 2048
001178  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
00117c  e340aff4  loadli.w r1,  -1452(r30)
001180  7e0001e0  vmmov mr0, r2
001184  1f010020  addli r2, zero, 4096
001188  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
00118c  e340bff4  loadli.w r1,  -1444(r30)
001190  7e0101e0  vmmov mr2, r2
001194  1f010040  addli r2, zero, 8192
001198  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
00119c  e340cff4  loadli.w r1,  -1436(r30)
0011a0  7e0001e0  vmmov mr0, r2
0011a4  2b410000  lui r2, 4
0011a8  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
0011ac  e340dff4  loadli.w r1,  -1428(r30)
0011b0  7e0101e0  vmmov mr2, r2
0011b4  1f018000  addli r2, zero, 64
0011b8  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0011bc  7e8001c0  vmmov mr0, mr3
0011c0  e340eff4  loadli.w r1,  -1420(r30)
0011c4  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
0011c8  e340fff4  loadli.w r1,  -1412(r30)
0011cc  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0011d0  9f000500  addli r1, r10, 0
0011d4  3fa02d00  blt.s r27, r2, 8
0011d8  9f000000  addli r1, zero, 0
0011dc  1f018ff5  addli r2, r30, -1344
0011e0  1691a102  vadd.f.mz.rn vr2{mr1}, vr3, vr10
0011e4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0011e8  7e8000e0  vmmov mr0, r1
0011ec  9f000ff3  addli r1, r30, -1664
0011f0  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
0011f4  1f010ff5  addli r2, r30, -1408
0011f8  9695b102  vadd.f.mz.rn vr11{mr1}, vr3, vr11
0011fc  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
001200  1f018ff7  addli r2, r30, -1088
001204  c2120102  vload_mask16.mz vr5{mr1}, 0(r2)
001208  1f010ff7  addli r2, r30, -1152
00120c  96901102  vadd.f.mz.rn vr1{mr1}, vr3, vr1
001210  16950202  vadd.f.mz.rn vr10{mr1}, vr5, vr0
001214  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
001218  1f018ff7  addli r2, r30, -1088
00121c  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
001220  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001224  1f018ff6  addli r2, r30, -1216
001228  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
00122c  1f010ff6  addli r2, r30, -1280
001230  c2120102  vload_mask16.mz vr5{mr1}, 0(r2)
001234  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
001238  96927202  vadd.f.mz.rn vr5{mr1}, vr5, vr7
00123c  92336002  vadd.s.mz vr7{mr1}, zero, vr6
001240  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
001244  9f008ff5  addli r1, r30, -1344
001248  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
00124c  9f000ff6  addli r1, r30, -1280
001250  12347002  vadd.s.mz vr8{mr1}, zero, vr7
001254  4690b002  vstore_mask16.mz vr11{mr1}, 0(r1)
001258  92317002  vadd.s.mz vr3{mr1}, zero, vr7
00125c  9f008ff6  addli r1, r30, -1216
001260  92347002  vadd.s.mz vr9{mr1}, zero, vr7
001264  4690a002  vstore_mask16.mz vr10{mr1}, 0(r1)
001268  9f008ff7  addli r1, r30, -1088
00126c  6e14b330  vor.f.mh vr8{mr0}, vr6, vr11
001270  92357002  vadd.s.mz vr11{mr1}, zero, vr7
001274  ee112330  vor.f.mh vr3{mr0}, vr6, vr2
001278  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
00127c  ee14a330  vor.f.mh vr9{mr0}, vr6, vr10
001280  00a00000  mfence { lm }
001284  ee151330  vor.f.mh vr11{mr0}, vr6, vr1
001288  92307002  vadd.s.mz vr1{mr1}, zero, vr7
00128c  ee104330  vor.f.mh vr1{mr0}, vr6, vr4
001290  12327002  vadd.s.mz vr4{mr1}, zero, vr7
001294  9691b102  vadd.f.mz.rn vr3{mr1}, vr3, vr11
001298  6e120330  vor.f.mh vr4{mr0}, vr6, vr0
00129c  12307002  vadd.s.mz vr0{mr1}, zero, vr7
0012a0  96101402  vadd.f.mz.rn vr1{mr1}, vr8, vr1
0012a4  6e102330  vor.f.mh vr0{mr0}, vr6, vr2
0012a8  12317002  vadd.s.mz vr2{mr1}, zero, vr7
0012ac  ee135330  vor.f.mh vr7{mr0}, vr6, vr5
0012b0  16924402  vadd.f.mz.rn vr4{mr1}, vr9, vr4
0012b4  96901102  vadd.f.mz.rn vr1{mr1}, vr3, vr1
0012b8  7e0000a0  vmmov zero, mr0
0012bc  67080ff6  storeli.w zero, -1152(r30)
0012c0  17200000  xor zero, zero, zero
0012c4  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
0012c8  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0012cc  16900002  vadd.f.mz.rn vr0{mr1}, vr1, vr0
0012d0  fa100040  vextracti.f r1, 0(vr0)
0012d4  7a111040  vextracti.f r2, 1(vr0)
0012d8  8be02010  add.f.rn r1, r1, r2
0012dc  7a112040  vextracti.f r2, 2(vr0)
0012e0  8b601110  add.f.rn r1, r2, r1
0012e4  7a113040  vextracti.f r2, 3(vr0)
0012e8  8b601110  add.f.rn r1, r2, r1
0012ec  7a114040  vextracti.f r2, 4(vr0)
0012f0  8b601110  add.f.rn r1, r2, r1
0012f4  7a115040  vextracti.f r2, 5(vr0)
0012f8  8b601110  add.f.rn r1, r2, r1
0012fc  7a116040  vextracti.f r2, 6(vr0)
001300  8b601110  add.f.rn r1, r2, r1
001304  7a117040  vextracti.f r2, 7(vr0)
001308  8b601110  add.f.rn r1, r2, r1
00130c  7a118040  vextracti.f r2, 8(vr0)
001310  8b601110  add.f.rn r1, r2, r1
001314  7a119040  vextracti.f r2, 9(vr0)
001318  8b601110  add.f.rn r1, r2, r1
00131c  7a11a040  vextracti.f r2, 10(vr0)
001320  8b601110  add.f.rn r1, r2, r1
001324  7a11b040  vextracti.f r2, 11(vr0)
001328  8b601110  add.f.rn r1, r2, r1
00132c  7a11c040  vextracti.f r2, 12(vr0)
001330  8b601110  add.f.rn r1, r2, r1
001334  7a11d040  vextracti.f r2, 13(vr0)
001338  8b601110  add.f.rn r1, r2, r1
00133c  7a11e040  vextracti.f r2, 14(vr0)
001340  8b601110  add.f.rn r1, r2, r1
001344  7a11f040  vextracti.f r2, 15(vr0)
001348  8b601110  add.f.rn r1, r2, r1
00134c  63419fee  loadli.w r2,  -2228(r30)
001350  73601100  stores.w r1, 0(r2)
001354  00a00300  mfence { lm, sm, gm }
001358  80210504  csr_set csr3, r10
00135c  00d00100  sync_group
001360  634cdff3  loadli.w r24,  -1556(r30)
001364  3b210c00  bneq r24, zero, 72
001368  6342afee  loadli.w r4,  -2220(r30)
00136c  ef400200  loads.w r1, 0(r4)
001370  6f414200  loads.w r2, 4(r4)
001374  ef418200  loads.w r3, 8(r4)
001378  8be02010  add.f.rn r1, r1, r2
00137c  6f41c200  loads.w r2, 12(r4)
001380  8be03010  add.f.rn r1, r1, r3
001384  ef410201  loads.w r3, 16(r4)
001388  8be02010  add.f.rn r1, r1, r2
00138c  6f414201  loads.w r2, 20(r4)
001390  8be03010  add.f.rn r1, r1, r3
001394  ef418201  loads.w r3, 24(r4)
001398  8be02010  add.f.rn r1, r1, r2
00139c  6f41c201  loads.w r2, 28(r4)
0013a0  8be03010  add.f.rn r1, r1, r3
0013a4  8be02010  add.f.rn r1, r1, r2
0013a8  73601200  stores.w r1, 0(r4)
0013ac  abf00000  lui r1, 15
0013b0  92342002  vadd.s.mz vr9{mr1}, zero, vr2
0013b4  92352002  vadd.s.mz vr11{mr1}, zero, vr2
0013b8  92332002  vadd.s.mz vr7{mr1}, zero, vr2
0013bc  9b90f0ff  ori r1, r1, 4095
0013c0  e7071ff4  storeli.w r1, -1416(r30)
0013c4  00a00300  mfence { lm, sm, gm }
0013c8  80a10004  csr_set csr3, r1
0013cc  00d00100  sync_group
0013d0  e340afee  loadli.w r1,  -2220(r30)
0013d4  efc00000  loads.w r1, 0(r1)
0013d8  e7471ff4  storeli.w r1, -1412(r30)
0013dc  9f000ff5  addli r1, r30, -1408
0013e0  c2120fa2  vload_mask16.mz vr5{mr1}, 1280(r30)
0013e4  c2108fa2  vload_mask16.mz vr1{mr1}, 1344(r30)
0013e8  42100fa3  vload_mask16.mz vr0{mr1}, 1408(r30)
0013ec  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0013f0  12302002  vadd.s.mz vr0{mr1}, zero, vr2
0013f4  42138fa3  vload_mask16.mz vr6{mr1}, 1472(r30)
0013f8  e3003ffe  loadli.w r1,  -232(r30)
0013fc  630d7fff  loadli.w r26,  -72(r30)
001400  e3070ffe  loadli.w r15,  -256(r30)
001404  634c0ffe  loadli.w r24,  -252(r30)
001408  e30d1ffe  loadli.w r27,  -248(r30)
00140c  634a1ffe  loadli.w r20,  -244(r30)
001410  e30a2ffe  loadli.w r21,  -240(r30)
001414  e34b2ffe  loadli.w r23,  -236(r30)
001418  6341dffe  loadli.w r2,  -148(r30)
00141c  e301effe  loadli.w r3,  -144(r30)
001420  6342effe  loadli.w r4,  -140(r30)
001424  e302fffe  loadli.w r5,  -136(r30)
001428  6343fffe  loadli.w r6,  -132(r30)
00142c  e3030fff  loadli.w r7,  -128(r30)
001430  63440fff  loadli.w r8,  -124(r30)
001434  e3041fff  loadli.w r9,  -120(r30)
001438  63451fff  loadli.w r10,  -116(r30)
00143c  e3052fff  loadli.w r11,  -112(r30)
001440  63462fff  loadli.w r12,  -108(r30)
001444  e3063fff  loadli.w r13,  -104(r30)
001448  63473fff  loadli.w r14,  -100(r30)
00144c  e3084fff  loadli.w r17,  -96(r30)
001450  63494fff  loadli.w r18,  -92(r30)
001454  e3095fff  loadli.w r19,  -88(r30)
001458  634b5fff  loadli.w r22,  -84(r30)
00145c  e30c6fff  loadli.w r25,  -80(r30)
001460  634e6fff  loadli.w r28,  -76(r30)
001464  e7061ff2  storeli.w r1, -1688(r30)
001468  e3403ffe  loadli.w r1,  -228(r30)
00146c  6706aff3  storeli.w r26, -1696(r30)
001470  634d7fff  loadli.w r26,  -68(r30)
001474  67461ff2  storeli.w r1, -1692(r30)
001478  e3004ffe  loadli.w r1,  -224(r30)
00147c  e746aff3  storeli.w r26, -1684(r30)
001480  630d8fff  loadli.w r26,  -64(r30)
001484  670f1ff2  storeli.w r1, -1552(r30)
001488  e3404ffe  loadli.w r1,  -220(r30)
00148c  674faff3  storeli.w r26, -1548(r30)
001490  634d8fff  loadli.w r26,  -60(r30)
001494  e70f1ff2  storeli.w r1, -1544(r30)
001498  e3005ffe  loadli.w r1,  -216(r30)
00149c  e74faff3  storeli.w r26, -1540(r30)
0014a0  630d9fff  loadli.w r26,  -56(r30)
0014a4  67001ff4  storeli.w r1, -1536(r30)
0014a8  e3405ffe  loadli.w r1,  -212(r30)
0014ac  6740aff5  storeli.w r26, -1532(r30)
0014b0  634d9fff  loadli.w r26,  -52(r30)
0014b4  e7001ff4  storeli.w r1, -1528(r30)
0014b8  e3006ffe  loadli.w r1,  -208(r30)
0014bc  e740aff5  storeli.w r26, -1524(r30)
0014c0  630dafff  loadli.w r26,  -48(r30)
0014c4  67011ff4  storeli.w r1, -1520(r30)
0014c8  e3406ffe  loadli.w r1,  -204(r30)
0014cc  6741aff5  storeli.w r26, -1516(r30)
0014d0  634dafff  loadli.w r26,  -44(r30)
0014d4  e7011ff4  storeli.w r1, -1512(r30)
0014d8  e3007ffe  loadli.w r1,  -200(r30)
0014dc  e741aff5  storeli.w r26, -1508(r30)
0014e0  630dbfff  loadli.w r26,  -40(r30)
0014e4  67021ff4  storeli.w r1, -1504(r30)
0014e8  e3407ffe  loadli.w r1,  -196(r30)
0014ec  6742aff5  storeli.w r26, -1500(r30)
0014f0  634dbfff  loadli.w r26,  -36(r30)
0014f4  e7021ff4  storeli.w r1, -1496(r30)
0014f8  e3008ffe  loadli.w r1,  -192(r30)
0014fc  e742aff5  storeli.w r26, -1492(r30)
001500  630dcfff  loadli.w r26,  -32(r30)
001504  67031ff4  storeli.w r1, -1488(r30)
001508  e3408ffe  loadli.w r1,  -188(r30)
00150c  6743aff5  storeli.w r26, -1484(r30)
001510  634dcfff  loadli.w r26,  -28(r30)
001514  e7031ff4  storeli.w r1, -1480(r30)
001518  e3009ffe  loadli.w r1,  -184(r30)
00151c  e743aff5  storeli.w r26, -1476(r30)
001520  630ddfff  loadli.w r26,  -24(r30)
001524  67041ff4  storeli.w r1, -1472(r30)
001528  e3409ffe  loadli.w r1,  -180(r30)
00152c  e704aff5  storeli.w r26, -1464(r30)
001530  634ddfff  loadli.w r26,  -20(r30)
001534  67441ff4  storeli.w r1, -1468(r30)
001538  e300affe  loadli.w r1,  -176(r30)
00153c  6705aff5  storeli.w r26, -1456(r30)
001540  630defff  loadli.w r26,  -16(r30)
001544  e7441ff4  storeli.w r1, -1460(r30)
001548  e340affe  loadli.w r1,  -172(r30)
00154c  e706aff5  storeli.w r26, -1432(r30)
001550  634defff  loadli.w r26,  -12(r30)
001554  67451ff4  storeli.w r1, -1452(r30)
001558  e300bffe  loadli.w r1,  -168(r30)
00155c  e746aff5  storeli.w r26, -1428(r30)
001560  630dffff  loadli.w r26,  -8(r30)
001564  e7051ff4  storeli.w r1, -1448(r30)
001568  e340bffe  loadli.w r1,  -164(r30)
00156c  6707aff5  storeli.w r26, -1424(r30)
001570  634dffff  loadli.w r26,  -4(r30)
001574  e7451ff4  storeli.w r1, -1444(r30)
001578  e300cffe  loadli.w r1,  -160(r30)
00157c  6747aff5  storeli.w r26, -1420(r30)
001580  1f1d0000  addli r26, zero, 1
001584  fe010de0  vmmov mr3, r26
001588  67061ff4  storeli.w r1, -1440(r30)
00158c  e340cffe  loadli.w r1,  -156(r30)
001590  67461ff4  storeli.w r1, -1436(r30)
001594  e300dffe  loadli.w r1,  -152(r30)
001598  6aa00736  vor.u.mh vr0{mr3}, r15, vr0
00159c  9f270000  addli r15, zero, 2
0015a0  fe8107e0  vmmov mr3, r15
0015a4  9f470000  addli r15, zero, 4
0015a8  6a200c36  vor.u.mh vr0{mr3}, r24, vr0
0015ac  7e8007e0  vmmov mr0, r15
0015b0  9f071000  addli r15, zero, 8
0015b4  7e8107e0  vmmov mr2, r15
0015b8  9f072000  addli r15, zero, 16
0015bc  6aa00d30  vor.u.mh vr0{mr0}, r27, vr0
0015c0  6a200a34  vor.u.mh vr0{mr2}, r20, vr0
0015c4  7e8107e0  vmmov mr2, r15
0015c8  9f074000  addli r15, zero, 32
0015cc  1f1a0000  addli r20, zero, 1
0015d0  6aa00a34  vor.u.mh vr0{mr2}, r21, vr0
0015d4  7e8107e0  vmmov mr2, r15
0015d8  9f078000  addli r15, zero, 64
0015dc  6aa00b34  vor.u.mh vr0{mr2}, r23, vr0
0015e0  7e8107e0  vmmov mr2, r15
0015e4  e307dff2  loadli.w r15,  -1688(r30)
0015e8  6aa00734  vor.u.mh vr0{mr2}, r15, vr0
0015ec  9f070001  addli r15, zero, 128
0015f0  7e8107e0  vmmov mr2, r15
0015f4  e347cff2  loadli.w r15,  -1692(r30)
0015f8  6aa00734  vor.u.mh vr0{mr2}, r15, vr0
0015fc  9f070002  addli r15, zero, 256
001600  7e8107e0  vmmov mr2, r15
001604  e307eff3  loadli.w r15,  -1552(r30)
001608  6aa00734  vor.u.mh vr0{mr2}, r15, vr0
00160c  9f070004  addli r15, zero, 512
001610  7e8107e0  vmmov mr2, r15
001614  e307fff3  loadli.w r15,  -1544(r30)
001618  6aa00734  vor.u.mh vr0{mr2}, r15, vr0
00161c  9f070008  addli r15, zero, 1024
001620  7e8107e0  vmmov mr2, r15
001624  e3070ff4  loadli.w r15,  -1536(r30)
001628  6aa00734  vor.u.mh vr0{mr2}, r15, vr0
00162c  9f070010  addli r15, zero, 2048
001630  7e8107e0  vmmov mr2, r15
001634  e3071ff4  loadli.w r15,  -1528(r30)
001638  6aa00734  vor.u.mh vr0{mr2}, r15, vr0
00163c  9f070020  addli r15, zero, 4096
001640  7e8107e0  vmmov mr2, r15
001644  e3072ff4  loadli.w r15,  -1520(r30)
001648  6aa00734  vor.u.mh vr0{mr2}, r15, vr0
00164c  9f070040  addli r15, zero, 8192
001650  7e8107e0  vmmov mr2, r15
001654  e3073ff4  loadli.w r15,  -1512(r30)
001658  6aa00734  vor.u.mh vr0{mr2}, r15, vr0
00165c  ab470000  lui r15, 4
001660  7e8107e0  vmmov mr2, r15
001664  e3074ff4  loadli.w r15,  -1504(r30)
001668  6aa00734  vor.u.mh vr0{mr2}, r15, vr0
00166c  ab870000  lui r15, 8
001670  7e8107e0  vmmov mr2, r15
001674  e3075ff4  loadli.w r15,  -1496(r30)
001678  6aa00734  vor.u.mh vr0{mr2}, r15, vr0
00167c  e3076ff4  loadli.w r15,  -1488(r30)
001680  7e010ae0  vmmov mr2, r20
001684  1f0a1000  addli r20, zero, 8
001688  eaa49734  vor.u.mh vr9{mr2}, r15, vr9
00168c  e3077ff4  loadli.w r15,  -1480(r30)
001690  7e010ae0  vmmov mr2, r20
001694  1f0a2000  addli r20, zero, 16
001698  eaa49736  vor.u.mh vr9{mr3}, r15, vr9
00169c  e3078ff4  loadli.w r15,  -1472(r30)
0016a0  eaa49730  vor.u.mh vr9{mr0}, r15, vr9
0016a4  e3478ff4  loadli.w r15,  -1468(r30)
0016a8  eaa49734  vor.u.mh vr9{mr2}, r15, vr9
0016ac  e3479ff4  loadli.w r15,  -1460(r30)
0016b0  7e010ae0  vmmov mr2, r20
0016b4  1f0a4000  addli r20, zero, 32
0016b8  eaa49734  vor.u.mh vr9{mr2}, r15, vr9
0016bc  e347aff4  loadli.w r15,  -1452(r30)
0016c0  7e010ae0  vmmov mr2, r20
0016c4  1f0a8000  addli r20, zero, 64
0016c8  eaa49734  vor.u.mh vr9{mr2}, r15, vr9
0016cc  e307bff4  loadli.w r15,  -1448(r30)
0016d0  7e010ae0  vmmov mr2, r20
0016d4  1f0a0001  addli r20, zero, 128
0016d8  eaa49734  vor.u.mh vr9{mr2}, r15, vr9
0016dc  e347bff4  loadli.w r15,  -1444(r30)
0016e0  7e010ae0  vmmov mr2, r20
0016e4  1f0a0002  addli r20, zero, 256
0016e8  eaa49734  vor.u.mh vr9{mr2}, r15, vr9
0016ec  e307cff4  loadli.w r15,  -1440(r30)
0016f0  7e010ae0  vmmov mr2, r20
0016f4  1f0a0004  addli r20, zero, 512
0016f8  eaa49734  vor.u.mh vr9{mr2}, r15, vr9
0016fc  e347cff4  loadli.w r15,  -1436(r30)
001700  7e010ae0  vmmov mr2, r20
001704  eaa49734  vor.u.mh vr9{mr2}, r15, vr9
001708  9f070008  addli r15, zero, 1024
00170c  7e8107e0  vmmov mr2, r15
001710  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
001714  9f000010  addli r1, zero, 2048
001718  7e8100e0  vmmov mr2, r1
00171c  9f000020  addli r1, zero, 4096
001720  ea249134  vor.u.mh vr9{mr2}, r2, vr9
001724  7e8100e0  vmmov mr2, r1
001728  9f000040  addli r1, zero, 8192
00172c  2b410000  lui r2, 4
001730  eaa49134  vor.u.mh vr9{mr2}, r3, vr9
001734  7e8100e0  vmmov mr2, r1
001738  ab400000  lui r1, 4
00173c  ea249234  vor.u.mh vr9{mr2}, r4, vr9
001740  7e8100e0  vmmov mr2, r1
001744  ab800000  lui r1, 8
001748  eaa49234  vor.u.mh vr9{mr2}, r5, vr9
00174c  7e8100e0  vmmov mr2, r1
001750  9f100000  addli r1, zero, 1
001754  ea249334  vor.u.mh vr9{mr2}, r6, vr9
001758  7e8100e0  vmmov mr2, r1
00175c  9f001000  addli r1, zero, 8
001760  eaa5b334  vor.u.mh vr11{mr2}, r7, vr11
001764  e303fff4  loadli.w r7,  -1416(r30)
001768  7e8100e0  vmmov mr2, r1
00176c  9f002000  addli r1, zero, 16
001770  96909002  vadd.f.mz.rn vr1{mr1}, vr1, vr9
001774  ea25b436  vor.u.mh vr11{mr3}, r8, vr11
001778  eaa5b430  vor.u.mh vr11{mr0}, r9, vr11
00177c  ea25b534  vor.u.mh vr11{mr2}, r10, vr11
001780  7e8100e0  vmmov mr2, r1
001784  9f004000  addli r1, zero, 32
001788  eaa5b534  vor.u.mh vr11{mr2}, r11, vr11
00178c  7e8100e0  vmmov mr2, r1
001790  9f008000  addli r1, zero, 64
001794  ea25b634  vor.u.mh vr11{mr2}, r12, vr11
001798  7e8100e0  vmmov mr2, r1
00179c  9f000001  addli r1, zero, 128
0017a0  eaa5b634  vor.u.mh vr11{mr2}, r13, vr11
0017a4  7e8100e0  vmmov mr2, r1
0017a8  9f000002  addli r1, zero, 256
0017ac  ea25b734  vor.u.mh vr11{mr2}, r14, vr11
0017b0  7e8100e0  vmmov mr2, r1
0017b4  9f000004  addli r1, zero, 512
0017b8  eaa5b834  vor.u.mh vr11{mr2}, r17, vr11
0017bc  7e8100e0  vmmov mr2, r1
0017c0  9f000008  addli r1, zero, 1024
0017c4  ea25b934  vor.u.mh vr11{mr2}, r18, vr11
0017c8  7e8100e0  vmmov mr2, r1
0017cc  9f000010  addli r1, zero, 2048
0017d0  eaa5b934  vor.u.mh vr11{mr2}, r19, vr11
0017d4  7e8100e0  vmmov mr2, r1
0017d8  9f000020  addli r1, zero, 4096
0017dc  ea25bb34  vor.u.mh vr11{mr2}, r22, vr11
0017e0  7e8100e0  vmmov mr2, r1
0017e4  9f000040  addli r1, zero, 8192
0017e8  eaa5bc34  vor.u.mh vr11{mr2}, r25, vr11
0017ec  7e8100e0  vmmov mr2, r1
0017f0  ea25be34  vor.u.mh vr11{mr2}, r28, vr11
0017f4  e300cff2  loadli.w r1,  -1696(r30)
0017f8  7e0101e0  vmmov mr2, r2
0017fc  2b810000  lui r2, 8
001800  eaa5b034  vor.u.mh vr11{mr2}, r1, vr11
001804  e340dff2  loadli.w r1,  -1684(r30)
001808  7e0101e0  vmmov mr2, r2
00180c  1f110000  addli r2, zero, 1
001810  eaa5b034  vor.u.mh vr11{mr2}, r1, vr11
001814  e340eff3  loadli.w r1,  -1548(r30)
001818  7e0101e0  vmmov mr2, r2
00181c  1f011000  addli r2, zero, 8
001820  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
001824  e340fff3  loadli.w r1,  -1540(r30)
001828  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
00182c  e3400ff4  loadli.w r1,  -1532(r30)
001830  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
001834  e3401ff4  loadli.w r1,  -1524(r30)
001838  7e0001e0  vmmov mr0, r2
00183c  1f012000  addli r2, zero, 16
001840  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
001844  e3402ff4  loadli.w r1,  -1516(r30)
001848  7e0001e0  vmmov mr0, r2
00184c  1f014000  addli r2, zero, 32
001850  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
001854  e3403ff4  loadli.w r1,  -1508(r30)
001858  7e0001e0  vmmov mr0, r2
00185c  1f018000  addli r2, zero, 64
001860  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
001864  e3404ff4  loadli.w r1,  -1500(r30)
001868  7e0001e0  vmmov mr0, r2
00186c  1f010001  addli r2, zero, 128
001870  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
001874  e3405ff4  loadli.w r1,  -1492(r30)
001878  7e0001e0  vmmov mr0, r2
00187c  1f010002  addli r2, zero, 256
001880  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
001884  e3406ff4  loadli.w r1,  -1484(r30)
001888  7e0001e0  vmmov mr0, r2
00188c  1f010004  addli r2, zero, 512
001890  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
001894  e3407ff4  loadli.w r1,  -1476(r30)
001898  7e0001e0  vmmov mr0, r2
00189c  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0018a0  6341fff4  loadli.w r2,  -1412(r30)
0018a4  ab0080ba  lui r1, 763904
0018a8  0b631120  mul.f.rn r6, r2, r1
0018ac  1f010008  addli r2, zero, 1024
0018b0  e3009ff4  loadli.w r1,  -1464(r30)
0018b4  92101302  vadd.f.mz.rn vr1{mr1}, r6, vr1
0018b8  8e901002  vmul.f.mz.rn vr1{mr1}, vr1, vr1
0018bc  7e0001e0  vmmov mr0, r2
0018c0  1f010010  addli r2, zero, 2048
0018c4  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0018c8  e300aff4  loadli.w r1,  -1456(r30)
0018cc  7e0001e0  vmmov mr0, r2
0018d0  1f010020  addli r2, zero, 4096
0018d4  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0018d8  9f008ff5  addli r1, r30, -1344
0018dc  7e0001e0  vmmov mr0, r2
0018e0  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0018e4  9f000ff6  addli r1, r30, -1280
0018e8  12153302  vadd.f.mz.rn vr10{mr1}, r6, vr3
0018ec  0e12a502  vmul.f.mz.rn vr4{mr1}, vr10, vr10
0018f0  12352002  vadd.s.mz vr10{mr1}, zero, vr2
0018f4  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0018f8  e300dff4  loadli.w r1,  -1432(r30)
0018fc  92113302  vadd.f.mz.rn vr3{mr1}, r6, vr3
001900  0e913102  vmul.f.mz.rn vr2{mr1}, vr3, vr3
001904  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
001908  9f000ff3  addli r1, r30, -1664
00190c  9231a002  vadd.s.mz vr3{mr1}, zero, vr10
001910  63000ff7  loadli.w zero,  -1152(r30)
001914  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
001918  e340dff4  loadli.w r1,  -1428(r30)
00191c  7e0000e0  vmmov mr0, zero
001920  17200000  xor zero, zero, zero
001924  1f010040  addli r2, zero, 8192
001928  fe0101e0  vmmov mr3, r2
00192c  2b410000  lui r2, 4
001930  ee114430  vor.f.mh vr3{mr0}, vr8, vr4
001934  1232a002  vadd.s.mz vr4{mr1}, zero, vr10
001938  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
00193c  9f008ff6  addli r1, r30, -1216
001940  fe0101e0  vmmov mr3, r2
001944  2b810000  lui r2, 8
001948  7e0101e0  vmmov mr2, r2
00194c  6e122430  vor.f.mh vr4{mr0}, vr8, vr2
001950  16910202  vadd.f.mz.rn vr2{mr1}, vr5, vr0
001954  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
001958  1230a002  vadd.s.mz vr0{mr1}, zero, vr10
00195c  e300eff4  loadli.w r1,  -1424(r30)
001960  92125302  vadd.f.mz.rn vr5{mr1}, r6, vr5
001964  12112302  vadd.f.mz.rn vr2{mr1}, r6, vr2
001968  8e925202  vmul.f.mz.rn vr5{mr1}, vr5, vr5
00196c  0e112102  vmul.f.mz.rn vr2{mr1}, vr2, vr2
001970  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
001974  9f000ff5  addli r1, r30, -1408
001978  6e105430  vor.f.mh vr0{mr0}, vr8, vr5
00197c  9232a002  vadd.s.mz vr5{mr1}, zero, vr10
001980  ee122430  vor.f.mh vr5{mr0}, vr8, vr2
001984  1231a002  vadd.s.mz vr2{mr1}, zero, vr10
001988  6e111430  vor.f.mh vr2{mr0}, vr8, vr1
00198c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
001990  e340eff4  loadli.w r1,  -1420(r30)
001994  96915102  vadd.f.mz.rn vr3{mr1}, vr3, vr5
001998  9232a002  vadd.s.mz vr5{mr1}, zero, vr10
00199c  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
0019a0  9f008ff7  addli r1, r30, -1088
0019a4  16112202  vadd.f.mz.rn vr2{mr1}, vr4, vr2
0019a8  9690b002  vadd.f.mz.rn vr1{mr1}, vr1, vr11
0019ac  92101302  vadd.f.mz.rn vr1{mr1}, r6, vr1
0019b0  16127302  vadd.f.mz.rn vr4{mr1}, vr6, vr7
0019b4  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
0019b8  8e901002  vmul.f.mz.rn vr1{mr1}, vr1, vr1
0019bc  12136302  vadd.f.mz.rn vr6{mr1}, r6, vr6
0019c0  12124302  vadd.f.mz.rn vr4{mr1}, r6, vr4
0019c4  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
0019c8  9231a002  vadd.s.mz vr3{mr1}, zero, vr10
0019cc  0e124202  vmul.f.mz.rn vr4{mr1}, vr4, vr4
0019d0  0e136302  vmul.f.mz.rn vr6{mr1}, vr6, vr6
0019d4  ee121430  vor.f.mh vr5{mr0}, vr8, vr1
0019d8  9230a002  vadd.s.mz vr1{mr1}, zero, vr10
0019dc  ee114430  vor.f.mh vr3{mr0}, vr8, vr4
0019e0  ee106430  vor.f.mh vr1{mr0}, vr8, vr6
0019e4  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
0019e8  16100102  vadd.f.mz.rn vr0{mr1}, vr2, vr0
0019ec  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0019f0  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
0019f4  fa100040  vextracti.f r1, 0(vr0)
0019f8  7a111040  vextracti.f r2, 1(vr0)
0019fc  8be02010  add.f.rn r1, r1, r2
001a00  7a112040  vextracti.f r2, 2(vr0)
001a04  8b601110  add.f.rn r1, r2, r1
001a08  7a113040  vextracti.f r2, 3(vr0)
001a0c  8b601110  add.f.rn r1, r2, r1
001a10  7a114040  vextracti.f r2, 4(vr0)
001a14  8b601110  add.f.rn r1, r2, r1
001a18  7a115040  vextracti.f r2, 5(vr0)
001a1c  8b601110  add.f.rn r1, r2, r1
001a20  7a116040  vextracti.f r2, 6(vr0)
001a24  8b601110  add.f.rn r1, r2, r1
001a28  7a117040  vextracti.f r2, 7(vr0)
001a2c  8b601110  add.f.rn r1, r2, r1
001a30  7a118040  vextracti.f r2, 8(vr0)
001a34  8b601110  add.f.rn r1, r2, r1
001a38  7a119040  vextracti.f r2, 9(vr0)
001a3c  8b601110  add.f.rn r1, r2, r1
001a40  7a11a040  vextracti.f r2, 10(vr0)
001a44  8b601110  add.f.rn r1, r2, r1
001a48  7a11b040  vextracti.f r2, 11(vr0)
001a4c  8b601110  add.f.rn r1, r2, r1
001a50  7a11c040  vextracti.f r2, 12(vr0)
001a54  8b601110  add.f.rn r1, r2, r1
001a58  7a11d040  vextracti.f r2, 13(vr0)
001a5c  8b601110  add.f.rn r1, r2, r1
001a60  7a11e040  vextracti.f r2, 14(vr0)
001a64  8b601110  add.f.rn r1, r2, r1
001a68  7a11f040  vextracti.f r2, 15(vr0)
001a6c  8b601110  add.f.rn r1, r2, r1
001a70  63019fee  loadli.w r2,  -2232(r30)
001a74  73601100  stores.w r1, 0(r2)
001a78  00a00300  mfence { lm, sm, gm }
001a7c  80a10304  csr_set csr3, r7
001a80  00d00100  sync_group
001a84  6342dff3  loadli.w r4,  -1556(r30)
001a88  3b210200  bneq r4, zero, 72
001a8c  e302afee  loadli.w r5,  -2224(r30)
001a90  efc00200  loads.w r1, 0(r5)
001a94  6fc14200  loads.w r2, 4(r5)
001a98  efc18200  loads.w r3, 8(r5)
001a9c  8be02010  add.f.rn r1, r1, r2
001aa0  6fc1c200  loads.w r2, 12(r5)
001aa4  8be03010  add.f.rn r1, r1, r3
001aa8  efc10201  loads.w r3, 16(r5)
001aac  8be02010  add.f.rn r1, r1, r2
001ab0  6fc14201  loads.w r2, 20(r5)
001ab4  8be03010  add.f.rn r1, r1, r3
001ab8  efc18201  loads.w r3, 24(r5)
001abc  8be02010  add.f.rn r1, r1, r2
001ac0  6fc1c201  loads.w r2, 28(r5)
001ac4  8be03010  add.f.rn r1, r1, r3
001ac8  8be02010  add.f.rn r1, r1, r2
001acc  73e01200  stores.w r1, 0(r5)
001ad0  e3006fee  loadli.w r1,  -2256(r30)
001ad4  9f010ff8  addli r3, r30, -1024
001ad8  1f120000  addli r4, zero, 1
001adc  8b900011  add.s r1, r1, r16
001ae0  67081fee  storeli.w r1, -2176(r30)
001ae4  e3405fee  loadli.w r1,  -2260(r30)
001ae8  8b900011  add.s r1, r1, r16
001aec  e7471fee  storeli.w r1, -2180(r30)
001af0  e3005fee  loadli.w r1,  -2264(r30)
001af4  8b900011  add.s r1, r1, r16
001af8  e7071fee  storeli.w r1, -2184(r30)
001afc  e3404fee  loadli.w r1,  -2268(r30)
001b00  8b900011  add.s r1, r1, r16
001b04  67471fee  storeli.w r1, -2188(r30)
001b08  e3004fee  loadli.w r1,  -2272(r30)
001b0c  8b900011  add.s r1, r1, r16
001b10  67071fee  storeli.w r1, -2192(r30)
001b14  e3403fee  loadli.w r1,  -2276(r30)
001b18  8b900011  add.s r1, r1, r16
001b1c  e7461fee  storeli.w r1, -2196(r30)
001b20  00a00300  mfence { lm, sm, gm }
001b24  80a10304  csr_set csr3, r7
001b28  00d00100  sync_group
001b2c  63013fee  loadli.w r2,  -2280(r30)
001b30  e300afee  loadli.w r1,  -2224(r30)
001b34  0b110111  add.s r2, r2, r16
001b38  efc00000  loads.w r1, 0(r1)
001b3c  e7062fee  storeli.w r2, -2200(r30)
001b40  63412fee  loadli.w r2,  -2284(r30)
001b44  0b110111  add.s r2, r2, r16
001b48  67462fee  storeli.w r2, -2204(r30)
001b4c  63012fee  loadli.w r2,  -2288(r30)
001b50  0b110111  add.s r2, r2, r16
001b54  67062fee  storeli.w r2, -2208(r30)
001b58  63411fee  loadli.w r2,  -2292(r30)
001b5c  0b110111  add.s r2, r2, r16
001b60  e7452fee  storeli.w r2, -2212(r30)
001b64  63011fee  loadli.w r2,  -2296(r30)
001b68  0b110111  add.s r2, r2, r16
001b6c  e7052fee  storeli.w r2, -2216(r30)
001b70  63410fee  loadli.w r2,  -2300(r30)
001b74  0b110111  add.s r2, r2, r16
001b78  e7082fee  storeli.w r2, -2168(r30)
001b7c  63010fee  loadli.w r2,  -2304(r30)
001b80  0b110111  add.s r2, r2, r16
001b84  e7482fee  storeli.w r2, -2164(r30)
001b88  6341ffed  loadli.w r2,  -2308(r30)
001b8c  0b110111  add.s r2, r2, r16
001b90  67092fee  storeli.w r2, -2160(r30)
001b94  6301ffed  loadli.w r2,  -2312(r30)
001b98  0b110111  add.s r2, r2, r16
001b9c  67492fee  storeli.w r2, -2156(r30)
001ba0  6341efed  loadli.w r2,  -2316(r30)
001ba4  0b110111  add.s r2, r2, r16
001ba8  e7092fee  storeli.w r2, -2152(r30)
001bac  2b01803a  lui r2, 239616
001bb0  8be02020  mul.f.rn r1, r1, r2
001bb4  6301efed  loadli.w r2,  -2320(r30)
001bb8  0b110111  add.s r2, r2, r16
001bbc  e7492fee  storeli.w r2, -2148(r30)
001bc0  6341cfed  loadli.w r2,  -2332(r30)
001bc4  0b110111  add.s r2, r2, r16
001bc8  670a2fee  storeli.w r2, -2144(r30)
001bcc  6301cfed  loadli.w r2,  -2336(r30)
001bd0  0b110111  add.s r2, r2, r16
001bd4  e70a2fee  storeli.w r2, -2136(r30)
001bd8  6341bfed  loadli.w r2,  -2340(r30)
001bdc  0b110111  add.s r2, r2, r16
001be0  e74a2fee  storeli.w r2, -2132(r30)
001be4  6341afed  loadli.w r2,  -2348(r30)
001be8  0b110111  add.s r2, r2, r16
001bec  670b2fee  storeli.w r2, -2128(r30)
001bf0  6301bfed  loadli.w r2,  -2344(r30)
001bf4  8be02010  add.f.rn r1, r1, r2
001bf8  6301afed  loadli.w r2,  -2352(r30)
001bfc  0b110111  add.s r2, r2, r16
001c00  674b2fee  storeli.w r2, -2124(r30)
001c04  63419fed  loadli.w r2,  -2356(r30)
001c08  8f800008  sqrt.f.rn r1, r1
001c0c  0b110111  add.s r2, r2, r16
001c10  e70b2fee  storeli.w r2, -2120(r30)
001c14  63019fed  loadli.w r2,  -2360(r30)
001c18  0b110111  add.s r2, r2, r16
001c1c  e74b2fee  storeli.w r2, -2116(r30)
001c20  63418fed  loadli.w r2,  -2364(r30)
001c24  0b110111  add.s r2, r2, r16
001c28  670c2fee  storeli.w r2, -2112(r30)
001c2c  63018fed  loadli.w r2,  -2368(r30)
001c30  0b110111  add.s r2, r2, r16
001c34  674c2fee  storeli.w r2, -2108(r30)
001c38  63417fed  loadli.w r2,  -2372(r30)
001c3c  0b110111  add.s r2, r2, r16
001c40  e70c2fee  storeli.w r2, -2104(r30)
001c44  63017fed  loadli.w r2,  -2376(r30)
001c48  0b110111  add.s r2, r2, r16
001c4c  e74c2fee  storeli.w r2, -2100(r30)
001c50  63416fed  loadli.w r2,  -2380(r30)
001c54  0b110111  add.s r2, r2, r16
001c58  670d2fee  storeli.w r2, -2096(r30)
001c5c  63016fed  loadli.w r2,  -2384(r30)
001c60  0b110111  add.s r2, r2, r16
001c64  674d2fee  storeli.w r2, -2092(r30)
001c68  63415fed  loadli.w r2,  -2388(r30)
001c6c  0b110111  add.s r2, r2, r16
001c70  e70d2fee  storeli.w r2, -2088(r30)
001c74  63015fed  loadli.w r2,  -2392(r30)
001c78  0b110111  add.s r2, r2, r16
001c7c  e74d2fee  storeli.w r2, -2084(r30)
001c80  63414fed  loadli.w r2,  -2396(r30)
001c84  0b110111  add.s r2, r2, r16
001c88  670e2fee  storeli.w r2, -2080(r30)
001c8c  63014fed  loadli.w r2,  -2400(r30)
001c90  0b110111  add.s r2, r2, r16
001c94  674e2fee  storeli.w r2, -2076(r30)
001c98  63413fed  loadli.w r2,  -2404(r30)
001c9c  0b110111  add.s r2, r2, r16
001ca0  e70e2fee  storeli.w r2, -2072(r30)
001ca4  63013fed  loadli.w r2,  -2408(r30)
001ca8  0b110111  add.s r2, r2, r16
001cac  e74e2fee  storeli.w r2, -2068(r30)
001cb0  63412fed  loadli.w r2,  -2412(r30)
001cb4  0b110111  add.s r2, r2, r16
001cb8  670f2fee  storeli.w r2, -2064(r30)
001cbc  63012fed  loadli.w r2,  -2416(r30)
001cc0  0b110111  add.s r2, r2, r16
001cc4  e70f2fee  storeli.w r2, -2056(r30)
001cc8  63411fed  loadli.w r2,  -2420(r30)
001ccc  0b110111  add.s r2, r2, r16
001cd0  e74f2fee  storeli.w r2, -2052(r30)
001cd4  63011fed  loadli.w r2,  -2424(r30)
001cd8  0b110111  add.s r2, r2, r16
001cdc  67002ff0  storeli.w r2, -2048(r30)
001ce0  63410fed  loadli.w r2,  -2428(r30)
001ce4  0b110111  add.s r2, r2, r16
001ce8  67402ff0  storeli.w r2, -2044(r30)
001cec  63010fed  loadli.w r2,  -2432(r30)
001cf0  0b110111  add.s r2, r2, r16
001cf4  e7002ff0  storeli.w r2, -2040(r30)
001cf8  6341ffec  loadli.w r2,  -2436(r30)
001cfc  0b110111  add.s r2, r2, r16
001d00  e7402ff0  storeli.w r2, -2036(r30)
001d04  6301ffec  loadli.w r2,  -2440(r30)
001d08  0b110111  add.s r2, r2, r16
001d0c  67012ff0  storeli.w r2, -2032(r30)
001d10  6341efec  loadli.w r2,  -2444(r30)
001d14  0b110111  add.s r2, r2, r16
001d18  67412ff0  storeli.w r2, -2028(r30)
001d1c  6301efec  loadli.w r2,  -2448(r30)
001d20  0b110111  add.s r2, r2, r16
001d24  e7012ff0  storeli.w r2, -2024(r30)
001d28  6341dfec  loadli.w r2,  -2452(r30)
001d2c  0b110111  add.s r2, r2, r16
001d30  e7412ff0  storeli.w r2, -2020(r30)
001d34  6301dfec  loadli.w r2,  -2456(r30)
001d38  0b110111  add.s r2, r2, r16
001d3c  67022ff0  storeli.w r2, -2016(r30)
001d40  6341cfec  loadli.w r2,  -2460(r30)
001d44  0b110111  add.s r2, r2, r16
001d48  67422ff0  storeli.w r2, -2012(r30)
001d4c  6301cfec  loadli.w r2,  -2464(r30)
001d50  0b110111  add.s r2, r2, r16
001d54  e7022ff0  storeli.w r2, -2008(r30)
001d58  6341bfec  loadli.w r2,  -2468(r30)
001d5c  0b110111  add.s r2, r2, r16
001d60  e7422ff0  storeli.w r2, -2004(r30)
001d64  6301bfec  loadli.w r2,  -2472(r30)
001d68  0b110111  add.s r2, r2, r16
001d6c  67032ff0  storeli.w r2, -2000(r30)
001d70  6341afec  loadli.w r2,  -2476(r30)
001d74  0b110111  add.s r2, r2, r16
001d78  67432ff0  storeli.w r2, -1996(r30)
001d7c  6301afec  loadli.w r2,  -2480(r30)
001d80  0b110111  add.s r2, r2, r16
001d84  e7032ff0  storeli.w r2, -1992(r30)
001d88  63419fec  loadli.w r2,  -2484(r30)
001d8c  0b110111  add.s r2, r2, r16
001d90  e7432ff0  storeli.w r2, -1988(r30)
001d94  63019fec  loadli.w r2,  -2488(r30)
001d98  0b110111  add.s r2, r2, r16
001d9c  67442ff0  storeli.w r2, -1980(r30)
001da0  63418fec  loadli.w r2,  -2492(r30)
001da4  0b110111  add.s r2, r2, r16
001da8  e7042ff0  storeli.w r2, -1976(r30)
001dac  63018fec  loadli.w r2,  -2496(r30)
001db0  0b110111  add.s r2, r2, r16
001db4  e7442ff0  storeli.w r2, -1972(r30)
001db8  63417fec  loadli.w r2,  -2500(r30)
001dbc  0b110111  add.s r2, r2, r16
001dc0  67052ff0  storeli.w r2, -1968(r30)
001dc4  63017fec  loadli.w r2,  -2504(r30)
001dc8  0b110111  add.s r2, r2, r16
001dcc  67452ff0  storeli.w r2, -1964(r30)
001dd0  63416fec  loadli.w r2,  -2508(r30)
001dd4  0b110111  add.s r2, r2, r16
001dd8  e7052ff0  storeli.w r2, -1960(r30)
001ddc  63016fec  loadli.w r2,  -2512(r30)
001de0  0b110111  add.s r2, r2, r16
001de4  e7452ff0  storeli.w r2, -1956(r30)
001de8  63415fec  loadli.w r2,  -2516(r30)
001dec  0b110111  add.s r2, r2, r16
001df0  67062ff0  storeli.w r2, -1952(r30)
001df4  63015fec  loadli.w r2,  -2520(r30)
001df8  0b110111  add.s r2, r2, r16
001dfc  67462ff0  storeli.w r2, -1948(r30)
001e00  63414fec  loadli.w r2,  -2524(r30)
001e04  0b110111  add.s r2, r2, r16
001e08  e7062ff0  storeli.w r2, -1944(r30)
001e0c  63014fec  loadli.w r2,  -2528(r30)
001e10  0b110111  add.s r2, r2, r16
001e14  e7462ff0  storeli.w r2, -1940(r30)
001e18  63413fec  loadli.w r2,  -2532(r30)
001e1c  0b110111  add.s r2, r2, r16
001e20  67072ff0  storeli.w r2, -1936(r30)
001e24  63013fec  loadli.w r2,  -2536(r30)
001e28  0b110111  add.s r2, r2, r16
001e2c  67472ff0  storeli.w r2, -1932(r30)
001e30  63412fec  loadli.w r2,  -2540(r30)
001e34  0b110111  add.s r2, r2, r16
001e38  e7072ff0  storeli.w r2, -1928(r30)
001e3c  63012fec  loadli.w r2,  -2544(r30)
001e40  0b110111  add.s r2, r2, r16
001e44  e7472ff0  storeli.w r2, -1924(r30)
001e48  63411fec  loadli.w r2,  -2548(r30)
001e4c  0b110111  add.s r2, r2, r16
001e50  67082ff0  storeli.w r2, -1920(r30)
001e54  63011fec  loadli.w r2,  -2552(r30)
001e58  0b110111  add.s r2, r2, r16
001e5c  67482ff0  storeli.w r2, -1916(r30)
001e60  63410fec  loadli.w r2,  -2556(r30)
001e64  0b110111  add.s r2, r2, r16
001e68  e7082ff0  storeli.w r2, -1912(r30)
001e6c  63010fec  loadli.w r2,  -2560(r30)
001e70  0b110111  add.s r2, r2, r16
001e74  67092ff0  storeli.w r2, -1904(r30)
001e78  6341ffeb  loadli.w r2,  -2564(r30)
001e7c  0b110111  add.s r2, r2, r16
001e80  67492ff0  storeli.w r2, -1900(r30)
001e84  6301ffeb  loadli.w r2,  -2568(r30)
001e88  0b110111  add.s r2, r2, r16
001e8c  e7092ff0  storeli.w r2, -1896(r30)
001e90  6341efeb  loadli.w r2,  -2572(r30)
001e94  0b110111  add.s r2, r2, r16
001e98  e7492ff0  storeli.w r2, -1892(r30)
001e9c  6301efeb  loadli.w r2,  -2576(r30)
001ea0  0b110111  add.s r2, r2, r16
001ea4  670a2ff0  storeli.w r2, -1888(r30)
001ea8  6341dfeb  loadli.w r2,  -2580(r30)
001eac  0b110111  add.s r2, r2, r16
001eb0  674a2ff0  storeli.w r2, -1884(r30)
001eb4  6301dfeb  loadli.w r2,  -2584(r30)
001eb8  0b110111  add.s r2, r2, r16
001ebc  e70a2ff0  storeli.w r2, -1880(r30)
001ec0  6341cfeb  loadli.w r2,  -2588(r30)
001ec4  0b110111  add.s r2, r2, r16
001ec8  e74a2ff0  storeli.w r2, -1876(r30)
001ecc  6301cfeb  loadli.w r2,  -2592(r30)
001ed0  0b110111  add.s r2, r2, r16
001ed4  670b2ff0  storeli.w r2, -1872(r30)
001ed8  6341bfeb  loadli.w r2,  -2596(r30)
001edc  0b110111  add.s r2, r2, r16
001ee0  674b2ff0  storeli.w r2, -1868(r30)
001ee4  6301bfeb  loadli.w r2,  -2600(r30)
001ee8  0b110111  add.s r2, r2, r16
001eec  e70b2ff0  storeli.w r2, -1864(r30)
001ef0  6341afeb  loadli.w r2,  -2604(r30)
001ef4  0b110111  add.s r2, r2, r16
001ef8  e74b2ff0  storeli.w r2, -1860(r30)
001efc  6301afeb  loadli.w r2,  -2608(r30)
001f00  0b110111  add.s r2, r2, r16
001f04  670c2ff0  storeli.w r2, -1856(r30)
001f08  63419feb  loadli.w r2,  -2612(r30)
001f0c  0b110111  add.s r2, r2, r16
001f10  674c2ff0  storeli.w r2, -1852(r30)
001f14  63019feb  loadli.w r2,  -2616(r30)
001f18  0b110111  add.s r2, r2, r16
001f1c  e70c2ff0  storeli.w r2, -1848(r30)
001f20  63418feb  loadli.w r2,  -2620(r30)
001f24  0b110111  add.s r2, r2, r16
001f28  e74c2ff0  storeli.w r2, -1844(r30)
001f2c  63018feb  loadli.w r2,  -2624(r30)
001f30  0b110111  add.s r2, r2, r16
001f34  670d2ff0  storeli.w r2, -1840(r30)
001f38  63417feb  loadli.w r2,  -2628(r30)
001f3c  0b110111  add.s r2, r2, r16
001f40  674d2ff0  storeli.w r2, -1836(r30)
001f44  63017feb  loadli.w r2,  -2632(r30)
001f48  0b110111  add.s r2, r2, r16
001f4c  e74d2ff0  storeli.w r2, -1828(r30)
001f50  63416feb  loadli.w r2,  -2636(r30)
001f54  0b110111  add.s r2, r2, r16
001f58  670e2ff0  storeli.w r2, -1824(r30)
001f5c  63016feb  loadli.w r2,  -2640(r30)
001f60  0b110111  add.s r2, r2, r16
001f64  674e2ff0  storeli.w r2, -1820(r30)
001f68  63415feb  loadli.w r2,  -2644(r30)
001f6c  0b110111  add.s r2, r2, r16
001f70  e70e2ff0  storeli.w r2, -1816(r30)
001f74  63015feb  loadli.w r2,  -2648(r30)
001f78  0b110111  add.s r2, r2, r16
001f7c  e74e2ff0  storeli.w r2, -1812(r30)
001f80  63414feb  loadli.w r2,  -2652(r30)
001f84  0b110111  add.s r2, r2, r16
001f88  670f2ff0  storeli.w r2, -1808(r30)
001f8c  63014feb  loadli.w r2,  -2656(r30)
001f90  0b110111  add.s r2, r2, r16
001f94  674f2ff0  storeli.w r2, -1804(r30)
001f98  63413feb  loadli.w r2,  -2660(r30)
001f9c  0b110111  add.s r2, r2, r16
001fa0  e70f2ff0  storeli.w r2, -1800(r30)
001fa4  63013feb  loadli.w r2,  -2664(r30)
001fa8  0b110111  add.s r2, r2, r16
001fac  e74f2ff0  storeli.w r2, -1796(r30)
001fb0  63412feb  loadli.w r2,  -2668(r30)
001fb4  0b110111  add.s r2, r2, r16
001fb8  67002ff2  storeli.w r2, -1792(r30)
001fbc  63012feb  loadli.w r2,  -2672(r30)
001fc0  0b110111  add.s r2, r2, r16
001fc4  67402ff2  storeli.w r2, -1788(r30)
001fc8  63411feb  loadli.w r2,  -2676(r30)
001fcc  0b110111  add.s r2, r2, r16
001fd0  e7002ff2  storeli.w r2, -1784(r30)
001fd4  63011feb  loadli.w r2,  -2680(r30)
001fd8  0b110111  add.s r2, r2, r16
001fdc  e7402ff2  storeli.w r2, -1780(r30)
001fe0  63410feb  loadli.w r2,  -2684(r30)
001fe4  0b110111  add.s r2, r2, r16
001fe8  67012ff2  storeli.w r2, -1776(r30)
001fec  63010feb  loadli.w r2,  -2688(r30)
001ff0  0b110111  add.s r2, r2, r16
001ff4  67412ff2  storeli.w r2, -1772(r30)
001ff8  6341ffea  loadli.w r2,  -2692(r30)
001ffc  0b110111  add.s r2, r2, r16
002000  e7012ff2  storeli.w r2, -1768(r30)
002004  6301ffea  loadli.w r2,  -2696(r30)
002008  0b110111  add.s r2, r2, r16
00200c  e7412ff2  storeli.w r2, -1764(r30)
002010  6341efea  loadli.w r2,  -2700(r30)
002014  0b110111  add.s r2, r2, r16
002018  67022ff2  storeli.w r2, -1760(r30)
00201c  6301efea  loadli.w r2,  -2704(r30)
002020  0b110111  add.s r2, r2, r16
002024  67422ff2  storeli.w r2, -1756(r30)
002028  6341dfea  loadli.w r2,  -2708(r30)
00202c  0b110111  add.s r2, r2, r16
002030  e7022ff2  storeli.w r2, -1752(r30)
002034  6301dfea  loadli.w r2,  -2712(r30)
002038  0b110111  add.s r2, r2, r16
00203c  e7422ff2  storeli.w r2, -1748(r30)
002040  6341cfea  loadli.w r2,  -2716(r30)
002044  0b110111  add.s r2, r2, r16
002048  67032ff2  storeli.w r2, -1744(r30)
00204c  6301cfea  loadli.w r2,  -2720(r30)
002050  0b110111  add.s r2, r2, r16
002054  67432ff2  storeli.w r2, -1740(r30)
002058  6341bfea  loadli.w r2,  -2724(r30)
00205c  0b110111  add.s r2, r2, r16
002060  e7032ff2  storeli.w r2, -1736(r30)
002064  6301bfea  loadli.w r2,  -2728(r30)
002068  0b110111  add.s r2, r2, r16
00206c  e7432ff2  storeli.w r2, -1732(r30)
002070  6341afea  loadli.w r2,  -2732(r30)
002074  0b110111  add.s r2, r2, r16
002078  67042ff2  storeli.w r2, -1728(r30)
00207c  6301afea  loadli.w r2,  -2736(r30)
002080  0b110111  add.s r2, r2, r16
002084  67442ff2  storeli.w r2, -1724(r30)
002088  63419fea  loadli.w r2,  -2740(r30)
00208c  0b110111  add.s r2, r2, r16
002090  e7042ff2  storeli.w r2, -1720(r30)
002094  63019fea  loadli.w r2,  -2744(r30)
002098  0b110111  add.s r2, r2, r16
00209c  67052ff2  storeli.w r2, -1712(r30)
0020a0  63418fea  loadli.w r2,  -2748(r30)
0020a4  0b110111  add.s r2, r2, r16
0020a8  e7442ff2  storeli.w r2, -1716(r30)
0020ac  63018fea  loadli.w r2,  -2752(r30)
0020b0  0b110111  add.s r2, r2, r16
0020b4  e7052ff2  storeli.w r2, -1704(r30)
0020b8  63417fea  loadli.w r2,  -2756(r30)
0020bc  0b110111  add.s r2, r2, r16
0020c0  e7452ff2  storeli.w r2, -1700(r30)
0020c4  63017fea  loadli.w r2,  -2760(r30)
0020c8  0b110111  add.s r2, r2, r16
0020cc  67062ff2  storeli.w r2, -1696(r30)
0020d0  63416fea  loadli.w r2,  -2764(r30)
0020d4  0b110111  add.s r2, r2, r16
0020d8  67462ff2  storeli.w r2, -1692(r30)
0020dc  63016fea  loadli.w r2,  -2768(r30)
0020e0  0b110111  add.s r2, r2, r16
0020e4  e7062ff2  storeli.w r2, -1688(r30)
0020e8  63415fea  loadli.w r2,  -2772(r30)
0020ec  0b110111  add.s r2, r2, r16
0020f0  e7462ff2  storeli.w r2, -1684(r30)
0020f4  2b01803f  lui r2, 260096
0020f8  8f001118  div.f.rn r1, r2, r1
0020fc  670f1ff2  storeli.w r1, -1552(r30)
002100  9f808100  addli r1, r3, 64
002104  67481fee  storeli.w r1, -2172(r30)
002108  9f800101  addli r1, r3, 128
00210c  674a1fee  storeli.w r1, -2140(r30)
002110  9f808101  addli r1, r3, 192
002114  674f1fee  storeli.w r1, -2060(r30)
002118  9f800102  addli r1, r3, 256
00211c  67041ff0  storeli.w r1, -1984(r30)
002120  9f808102  addli r1, r3, 320
002124  e7481ff0  storeli.w r1, -1908(r30)
002128  9f800103  addli r1, r3, 384
00212c  e70d1ff0  storeli.w r1, -1832(r30)
002130  9f808103  addli r1, r3, 448
002134  67451ff2  storeli.w r1, -1708(r30)
002138  9f000000  addli r1, zero, 0
00213c  00a00000  mfence { lm }
002140  1f010ffc  addli r2, r30, -512
002144  8b921110  add.s r5, r3, r1
002148  670c4ff6  storeli.w r4, -1088(r30)
00214c  9230a002  vadd.s.mz vr1{mr1}, zero, vr10
002150  1233a002  vadd.s.mz vr6{mr1}, zero, vr10
002154  9232a002  vadd.s.mz vr5{mr1}, zero, vr10
002158  9233a002  vadd.s.mz vr7{mr1}, zero, vr10
00215c  8b101110  add.s r1, r2, r1
002160  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
002164  42928202  vload_mask16.mz vr4{mr1}, 64(r5)
002168  c2910203  vload_mask16.mz vr3{mr1}, 128(r5)
00216c  42918203  vload_mask16.mz vr2{mr1}, 192(r5)
002170  638dc000  loadli.w r26,  96(r1)
002174  63810000  loadli.w r2,  0(r1)
002178  e3c10000  loadli.w r3,  4(r1)
00217c  63821000  loadli.w r4,  8(r1)
002180  e3c31000  loadli.w r7,  12(r1)
002184  63842000  loadli.w r8,  16(r1)
002188  e3c42000  loadli.w r9,  20(r1)
00218c  63853000  loadli.w r10,  24(r1)
002190  e3c53000  loadli.w r11,  28(r1)
002194  63864000  loadli.w r12,  32(r1)
002198  e3c64000  loadli.w r13,  36(r1)
00219c  63875000  loadli.w r14,  40(r1)
0021a0  e3c75000  loadli.w r15,  44(r1)
0021a4  63886000  loadli.w r16,  48(r1)
0021a8  63cc6000  loadli.w r24,  52(r1)
0021ac  e38d7000  loadli.w r27,  56(r1)
0021b0  e3c87000  loadli.w r17,  60(r1)
0021b4  63898000  loadli.w r18,  64(r1)
0021b8  e3c98000  loadli.w r19,  68(r1)
0021bc  638e9000  loadli.w r28,  72(r1)
0021c0  63ca9000  loadli.w r20,  76(r1)
0021c4  e38aa000  loadli.w r21,  80(r1)
0021c8  63cba000  loadli.w r22,  84(r1)
0021cc  e38bb000  loadli.w r23,  88(r1)
0021d0  e3ccb000  loadli.w r25,  92(r1)
0021d4  674faff3  storeli.w r26, -1548(r30)
0021d8  63cdc000  loadli.w r26,  100(r1)
0021dc  e70faff3  storeli.w r26, -1544(r30)
0021e0  638dd000  loadli.w r26,  104(r1)
0021e4  e74faff3  storeli.w r26, -1540(r30)
0021e8  63cdd000  loadli.w r26,  108(r1)
0021ec  6700aff5  storeli.w r26, -1536(r30)
0021f0  638de000  loadli.w r26,  112(r1)
0021f4  6740aff5  storeli.w r26, -1532(r30)
0021f8  63cde000  loadli.w r26,  116(r1)
0021fc  e700aff5  storeli.w r26, -1528(r30)
002200  638df000  loadli.w r26,  120(r1)
002204  e740aff5  storeli.w r26, -1524(r30)
002208  63cdf000  loadli.w r26,  124(r1)
00220c  6701aff5  storeli.w r26, -1520(r30)
002210  638d0001  loadli.w r26,  128(r1)
002214  6741aff5  storeli.w r26, -1516(r30)
002218  63cd0001  loadli.w r26,  132(r1)
00221c  e701aff5  storeli.w r26, -1512(r30)
002220  638d1001  loadli.w r26,  136(r1)
002224  e741aff5  storeli.w r26, -1508(r30)
002228  63cd1001  loadli.w r26,  140(r1)
00222c  6702aff5  storeli.w r26, -1504(r30)
002230  638d2001  loadli.w r26,  144(r1)
002234  6742aff5  storeli.w r26, -1500(r30)
002238  63cd2001  loadli.w r26,  148(r1)
00223c  e702aff5  storeli.w r26, -1496(r30)
002240  638d3001  loadli.w r26,  152(r1)
002244  e742aff5  storeli.w r26, -1492(r30)
002248  63cd3001  loadli.w r26,  156(r1)
00224c  6703aff5  storeli.w r26, -1488(r30)
002250  638d4001  loadli.w r26,  160(r1)
002254  6743aff5  storeli.w r26, -1484(r30)
002258  63cd4001  loadli.w r26,  164(r1)
00225c  e703aff5  storeli.w r26, -1480(r30)
002260  638d5001  loadli.w r26,  168(r1)
002264  e743aff5  storeli.w r26, -1476(r30)
002268  63cd5001  loadli.w r26,  172(r1)
00226c  6704aff5  storeli.w r26, -1472(r30)
002270  638d6001  loadli.w r26,  176(r1)
002274  6744aff5  storeli.w r26, -1468(r30)
002278  63cd6001  loadli.w r26,  180(r1)
00227c  e704aff5  storeli.w r26, -1464(r30)
002280  638d7001  loadli.w r26,  184(r1)
002284  e744aff5  storeli.w r26, -1460(r30)
002288  63cd7001  loadli.w r26,  188(r1)
00228c  6705aff5  storeli.w r26, -1456(r30)
002290  638d8001  loadli.w r26,  192(r1)
002294  6745aff5  storeli.w r26, -1452(r30)
002298  63cd8001  loadli.w r26,  196(r1)
00229c  e705aff5  storeli.w r26, -1448(r30)
0022a0  638d9001  loadli.w r26,  200(r1)
0022a4  e745aff5  storeli.w r26, -1444(r30)
0022a8  63cd9001  loadli.w r26,  204(r1)
0022ac  6706aff5  storeli.w r26, -1440(r30)
0022b0  638da001  loadli.w r26,  208(r1)
0022b4  6746aff5  storeli.w r26, -1436(r30)
0022b8  63cda001  loadli.w r26,  212(r1)
0022bc  e706aff5  storeli.w r26, -1432(r30)
0022c0  638db001  loadli.w r26,  216(r1)
0022c4  e746aff5  storeli.w r26, -1428(r30)
0022c8  63cdb001  loadli.w r26,  220(r1)
0022cc  6707aff5  storeli.w r26, -1424(r30)
0022d0  638dc001  loadli.w r26,  224(r1)
0022d4  6747aff5  storeli.w r26, -1420(r30)
0022d8  63cdc001  loadli.w r26,  228(r1)
0022dc  e707aff5  storeli.w r26, -1416(r30)
0022e0  638dd001  loadli.w r26,  232(r1)
0022e4  e747aff5  storeli.w r26, -1412(r30)
0022e8  63cdd001  loadli.w r26,  236(r1)
0022ec  6708aff5  storeli.w r26, -1408(r30)
0022f0  638de001  loadli.w r26,  240(r1)
0022f4  670caff5  storeli.w r26, -1344(r30)
0022f8  63cde001  loadli.w r26,  244(r1)
0022fc  6700aff7  storeli.w r26, -1280(r30)
002300  638df001  loadli.w r26,  248(r1)
002304  e3c0f001  loadli.w r1,  252(r1)
002308  67081ff6  storeli.w r1, -1152(r30)
00230c  9f100000  addli r1, zero, 1
002310  6704aff7  storeli.w r26, -1216(r30)
002314  7e8100e0  vmmov mr2, r1
002318  9f200000  addli r1, zero, 2
00231c  ea201134  vor.u.mh vr1{mr2}, r2, vr1
002320  1f010004  addli r2, zero, 512
002324  7e8000e0  vmmov mr0, r1
002328  9f400000  addli r1, zero, 4
00232c  fe8100e0  vmmov mr3, r1
002330  9f001000  addli r1, zero, 8
002334  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
002338  9f010ff8  addli r3, r30, -1024
00233c  7e8000e0  vmmov mr0, r1
002340  9f002000  addli r1, zero, 16
002344  ea201236  vor.u.mh vr1{mr3}, r4, vr1
002348  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
00234c  7e8000e0  vmmov mr0, r1
002350  9f004000  addli r1, zero, 32
002354  ab830000  lui r7, 8
002358  7e8100e0  vmmov mr2, r1
00235c  9f008000  addli r1, zero, 64
002360  ea201430  vor.u.mh vr1{mr0}, r8, vr1
002364  fe8100e0  vmmov mr3, r1
002368  9f000001  addli r1, zero, 128
00236c  eaa01434  vor.u.mh vr1{mr2}, r9, vr1
002370  ea201536  vor.u.mh vr1{mr3}, r10, vr1
002374  fe8100e0  vmmov mr3, r1
002378  9f000002  addli r1, zero, 256
00237c  eaa01536  vor.u.mh vr1{mr3}, r11, vr1
002380  fe8100e0  vmmov mr3, r1
002384  9f000004  addli r1, zero, 512
002388  ea201636  vor.u.mh vr1{mr3}, r12, vr1
00238c  fe8100e0  vmmov mr3, r1
002390  9f000008  addli r1, zero, 1024
002394  7e8000e0  vmmov mr0, r1
002398  9f000010  addli r1, zero, 2048
00239c  eaa01636  vor.u.mh vr1{mr3}, r13, vr1
0023a0  ea201730  vor.u.mh vr1{mr0}, r14, vr1
0023a4  7e8000e0  vmmov mr0, r1
0023a8  9f000020  addli r1, zero, 4096
0023ac  eaa01730  vor.u.mh vr1{mr0}, r15, vr1
0023b0  7e8000e0  vmmov mr0, r1
0023b4  9f000040  addli r1, zero, 8192
0023b8  ea201830  vor.u.mh vr1{mr0}, r16, vr1
0023bc  7e8000e0  vmmov mr0, r1
0023c0  ab400000  lui r1, 4
0023c4  ea201c30  vor.u.mh vr1{mr0}, r24, vr1
0023c8  7e8000e0  vmmov mr0, r1
0023cc  ab800000  lui r1, 8
0023d0  eaa01d30  vor.u.mh vr1{mr0}, r27, vr1
0023d4  7e8000e0  vmmov mr0, r1
0023d8  9f100000  addli r1, zero, 1
0023dc  eaa01830  vor.u.mh vr1{mr0}, r17, vr1
0023e0  7e8000e0  vmmov mr0, r1
0023e4  9f200000  addli r1, zero, 2
0023e8  6a236930  vor.u.mh vr6{mr0}, r18, vr6
0023ec  7e8000e0  vmmov mr0, r1
0023f0  9f400000  addli r1, zero, 4
0023f4  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
0023f8  6aa36930  vor.u.mh vr6{mr0}, r19, vr6
0023fc  7e8000e0  vmmov mr0, r1
002400  9f001000  addli r1, zero, 8
002404  12100302  vadd.f.mz.rn vr0{mr1}, r6, vr0
002408  7e8100e0  vmmov mr2, r1
00240c  9f002000  addli r1, zero, 16
002410  6a236e30  vor.u.mh vr6{mr0}, r28, vr6
002414  fe8100e0  vmmov mr3, r1
002418  9f004000  addli r1, zero, 32
00241c  7e8000e0  vmmov mr0, r1
002420  9f008000  addli r1, zero, 64
002424  6a236a34  vor.u.mh vr6{mr2}, r20, vr6
002428  6aa36a36  vor.u.mh vr6{mr3}, r21, vr6
00242c  6a236b30  vor.u.mh vr6{mr0}, r22, vr6
002430  7e8000e0  vmmov mr0, r1
002434  9f000001  addli r1, zero, 128
002438  6aa36b30  vor.u.mh vr6{mr0}, r23, vr6
00243c  7e8000e0  vmmov mr0, r1
002440  9f000002  addli r1, zero, 256
002444  6aa36c30  vor.u.mh vr6{mr0}, r25, vr6
002448  7e8000e0  vmmov mr0, r1
00244c  e340eff3  loadli.w r1,  -1548(r30)
002450  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
002454  e300fff3  loadli.w r1,  -1544(r30)
002458  7e0001e0  vmmov mr0, r2
00245c  1f010008  addli r2, zero, 1024
002460  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
002464  e340fff3  loadli.w r1,  -1540(r30)
002468  7e0001e0  vmmov mr0, r2
00246c  1f010010  addli r2, zero, 2048
002470  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
002474  e3000ff4  loadli.w r1,  -1536(r30)
002478  7e0001e0  vmmov mr0, r2
00247c  1f010020  addli r2, zero, 4096
002480  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
002484  e3400ff4  loadli.w r1,  -1532(r30)
002488  7e0001e0  vmmov mr0, r2
00248c  1f010040  addli r2, zero, 8192
002490  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
002494  e3001ff4  loadli.w r1,  -1528(r30)
002498  7e0001e0  vmmov mr0, r2
00249c  2b410000  lui r2, 4
0024a0  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
0024a4  e3401ff4  loadli.w r1,  -1524(r30)
0024a8  7e0001e0  vmmov mr0, r2
0024ac  2b810000  lui r2, 8
0024b0  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
0024b4  e3002ff4  loadli.w r1,  -1520(r30)
0024b8  7e0001e0  vmmov mr0, r2
0024bc  1f110000  addli r2, zero, 1
0024c0  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
0024c4  e3402ff4  loadli.w r1,  -1516(r30)
0024c8  7e0001e0  vmmov mr0, r2
0024cc  1f210000  addli r2, zero, 2
0024d0  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0024d4  e3003ff4  loadli.w r1,  -1512(r30)
0024d8  7e0001e0  vmmov mr0, r2
0024dc  1f410000  addli r2, zero, 4
0024e0  96106202  vadd.f.mz.rn vr1{mr1}, vr4, vr6
0024e4  92101302  vadd.f.mz.rn vr1{mr1}, r6, vr1
0024e8  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0024ec  e3403ff4  loadli.w r1,  -1508(r30)
0024f0  7e0001e0  vmmov mr0, r2
0024f4  1f014000  addli r2, zero, 32
0024f8  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0024fc  e3004ff4  loadli.w r1,  -1504(r30)
002500  7e0001e0  vmmov mr0, r2
002504  1f018000  addli r2, zero, 64
002508  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
00250c  e3404ff4  loadli.w r1,  -1500(r30)
002510  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
002514  e3005ff4  loadli.w r1,  -1496(r30)
002518  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
00251c  e3405ff4  loadli.w r1,  -1492(r30)
002520  7e0001e0  vmmov mr0, r2
002524  1f010001  addli r2, zero, 128
002528  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
00252c  e3006ff4  loadli.w r1,  -1488(r30)
002530  7e0001e0  vmmov mr0, r2
002534  1f010002  addli r2, zero, 256
002538  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
00253c  e3406ff4  loadli.w r1,  -1484(r30)
002540  7e0001e0  vmmov mr0, r2
002544  1f010004  addli r2, zero, 512
002548  fe0101e0  vmmov mr3, r2
00254c  1f010008  addli r2, zero, 1024
002550  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
002554  e3007ff4  loadli.w r1,  -1480(r30)
002558  7e0101e0  vmmov mr2, r2
00255c  1f010010  addli r2, zero, 2048
002560  7e0001e0  vmmov mr0, r2
002564  1f010020  addli r2, zero, 4096
002568  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
00256c  e3407ff4  loadli.w r1,  -1476(r30)
002570  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
002574  e3008ff4  loadli.w r1,  -1472(r30)
002578  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
00257c  e3408ff4  loadli.w r1,  -1468(r30)
002580  7e0001e0  vmmov mr0, r2
002584  1f010040  addli r2, zero, 8192
002588  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
00258c  e3009ff4  loadli.w r1,  -1464(r30)
002590  7e0001e0  vmmov mr0, r2
002594  2b410000  lui r2, 4
002598  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
00259c  e3409ff4  loadli.w r1,  -1460(r30)
0025a0  7e0001e0  vmmov mr0, r2
0025a4  2b810000  lui r2, 8
0025a8  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0025ac  e300aff4  loadli.w r1,  -1456(r30)
0025b0  7e0001e0  vmmov mr0, r2
0025b4  1f110000  addli r2, zero, 1
0025b8  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0025bc  e340aff4  loadli.w r1,  -1452(r30)
0025c0  7e0001e0  vmmov mr0, r2
0025c4  1f210000  addli r2, zero, 2
0025c8  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0025cc  e300bff4  loadli.w r1,  -1448(r30)
0025d0  7e0001e0  vmmov mr0, r2
0025d4  1f410000  addli r2, zero, 4
0025d8  96915102  vadd.f.mz.rn vr3{mr1}, vr3, vr5
0025dc  92113302  vadd.f.mz.rn vr3{mr1}, r6, vr3
0025e0  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0025e4  e340bff4  loadli.w r1,  -1444(r30)
0025e8  7e0001e0  vmmov mr0, r2
0025ec  1f011000  addli r2, zero, 8
0025f0  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0025f4  e300cff4  loadli.w r1,  -1440(r30)
0025f8  7e0001e0  vmmov mr0, r2
0025fc  1f012000  addli r2, zero, 16
002600  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
002604  e340cff4  loadli.w r1,  -1436(r30)
002608  7e0001e0  vmmov mr0, r2
00260c  1f014000  addli r2, zero, 32
002610  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
002614  e300dff4  loadli.w r1,  -1432(r30)
002618  7e0001e0  vmmov mr0, r2
00261c  1f018000  addli r2, zero, 64
002620  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
002624  e340dff4  loadli.w r1,  -1428(r30)
002628  7e0001e0  vmmov mr0, r2
00262c  1f010001  addli r2, zero, 128
002630  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
002634  e300eff4  loadli.w r1,  -1424(r30)
002638  7e0001e0  vmmov mr0, r2
00263c  1f010002  addli r2, zero, 256
002640  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
002644  e340eff4  loadli.w r1,  -1420(r30)
002648  7e0001e0  vmmov mr0, r2
00264c  1f010010  addli r2, zero, 2048
002650  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
002654  e300fff4  loadli.w r1,  -1416(r30)
002658  7e0001e0  vmmov mr0, r2
00265c  1f010020  addli r2, zero, 4096
002660  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
002664  e340fff4  loadli.w r1,  -1412(r30)
002668  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
00266c  e3000ff5  loadli.w r1,  -1408(r30)
002670  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
002674  e3008ff5  loadli.w r1,  -1344(r30)
002678  7e0001e0  vmmov mr0, r2
00267c  1f010040  addli r2, zero, 8192
002680  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
002684  e3000ff6  loadli.w r1,  -1280(r30)
002688  7e0001e0  vmmov mr0, r2
00268c  2b410000  lui r2, 4
002690  7e0101e0  vmmov mr2, r2
002694  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
002698  e3008ff6  loadli.w r1,  -1216(r30)
00269c  7e8003e0  vmmov mr0, r7
0026a0  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
0026a4  e3008ff7  loadli.w r1,  -1088(r30)
0026a8  63020ff7  loadli.w r4,  -1152(r30)
0026ac  1b811000  andi r2, r1, 1
0026b0  e300eff3  loadli.w r1,  -1552(r30)
0026b4  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
0026b8  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0026bc  8a913002  vmul.f.mz.rn vr3{mr1}, r1, vr3
0026c0  ea237230  vor.u.mh vr7{mr0}, r4, vr7
0026c4  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
0026c8  46941202  vstore_mask16.mz vr1{mr1}, 64(r5)
0026cc  46983202  vstore_mask16.mz vr3{mr1}, 128(r5)
0026d0  1f020000  addli r4, zero, 0
0026d4  16117102  vadd.f.mz.rn vr2{mr1}, vr2, vr7
0026d8  12102302  vadd.f.mz.rn vr0{mr1}, r6, vr2
0026dc  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
0026e0  469c0202  vstore_mask16.mz vr0{mr1}, 192(r5)
0026e4  9f000002  addli r1, zero, 256
0026e8  00a00000  mfence { lm }
0026ec  3b5901fc  bneq r2, zero, -1452
0026f0  e341ffee  loadli.w r3,  -2180(r30)
0026f4  e3000fef  loadli.w r1,  -2176(r30)
0026f8  1f2c0000  addli r24, zero, 2
0026fc  eb5d0f01  load.d r[28:29], 16(r30)
002700  1f060ff8  addli r12, r30, -1024
002704  9f490000  addli r19, zero, 4
002708  1f061600  addli r12, r12, 8
00270c  33930128  sext_int2long r[7:8], r3
002710  e301ffee  loadli.w r3,  -2184(r30)
002714  b3900028  sext_int2long r[2:3], r1
002718  97b08003  sll.d r[2:3], r[2:3], r24
00271c  17338303  sll.d r[7:8], r[7:8], r24
002720  339b0128  sext_int2long r[23:24], r3
002724  e341efee  loadli.w r3,  -2188(r30)
002728  0ba36d10  add.ul r[7:8], r[28:29], r[7:8]
00272c  33920128  sext_int2long r[5:6], r3
002730  e301efee  loadli.w r3,  -2192(r30)
002734  339a0128  sext_int2long r[21:22], r3
002738  e341dfee  loadli.w r3,  -2196(r30)
00273c  33940128  sext_int2long r[9:10], r3
002740  e301dfee  loadli.w r3,  -2200(r30)
002744  b3970128  sext_int2long r[16:17], r3
002748  e341cfee  loadli.w r3,  -2204(r30)
00274c  b3980128  sext_int2long r[18:19], r3
002750  e301cfee  loadli.w r3,  -2208(r30)
002754  b3960128  sext_int2long r[14:15], r3
002758  e341bfee  loadli.w r3,  -2212(r30)
00275c  33950128  sext_int2long r[11:12], r3
002760  e301bfee  loadli.w r3,  -2216(r30)
002764  7330afbc  store.d r[11:12], -1088(r30)
002768  2b0500f0  lui r10, 983040
00276c  9f450000  addli r11, zero, 4
002770  b39c0128  sext_int2long r[26:27], r3
002774  0ba11d10  add.ul r[3:4], r[28:29], r[2:3]
002778  ab0000f0  lui r1, 983040
00277c  1795a500  or r10, r11, r10
002780  97901500  or r1, r11, r1
002784  9f050ff8  addli r11, r30, -1024
002788  7f35c300  s_lm2gm r10, r12, 0(r[7:8])
00278c  2b0300f0  lui r6, 983040
002790  9f430000  addli r7, zero, 4
002794  1f050ff8  addli r10, r30, -1024
002798  9fc50500  addli r11, r11, 4
00279c  17936300  or r6, r7, r6
0027a0  1f052500  addli r10, r10, 16
0027a4  ff30b100  s_lm2gm r1, r11, 0(r[3:4])
0027a8  97318203  sll.d r[4:5], r[5:6], r24
0027ac  ab0200f0  lui r5, 983040
0027b0  97308b03  sll.d r[2:3], r[23:24], r24
0027b4  e3054ff2  loadli.w r11,  -1760(r30)
0027b8  97925300  or r5, r7, r5
0027bc  9f030ff8  addli r7, r30, -1024
0027c0  8ba13d10  add.ul r[4:5], r[28:29], r[4:5]
0027c4  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0027c8  b3950528  sext_int2long r[12:13], r11
0027cc  9fc31300  addli r7, r7, 12
0027d0  7fb3a100  s_lm2gm r6, r10, 0(r[4:5])
0027d4  2b0300f0  lui r6, 983040
0027d8  97318403  sll.d r[4:5], r[9:10], r24
0027dc  1f040ff8  addli r8, r30, -1024
0027e0  9f440000  addli r9, zero, 4
0027e4  ffb27000  s_lm2gm r5, r7, 0(r[2:3])
0027e8  9f430000  addli r7, zero, 4
0027ec  ab0200f0  lui r5, 983040
0027f0  97308a03  sll.d r[2:3], r[21:22], r24
0027f4  8ba13d10  add.ul r[4:5], r[28:29], r[4:5]
0027f8  1f043400  addli r8, r8, 24
0027fc  1f2a0000  addli r20, zero, 2
002800  17936300  or r6, r7, r6
002804  97925300  or r5, r7, r5
002808  9f030ff8  addli r7, r30, -1024
00280c  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002810  9fc32300  addli r7, r7, 20
002814  7fb38100  s_lm2gm r6, r8, 0(r[4:5])
002818  97b18803  sll.d r[4:5], r[18:19], r24
00281c  2b0300f0  lui r6, 983040
002820  1f040ff8  addli r8, r30, -1024
002824  ffb27000  s_lm2gm r5, r7, 0(r[2:3])
002828  97b08703  sll.d r[2:3], r[16:17], r24
00282c  ab0200f0  lui r5, 983040
002830  9f030ff8  addli r7, r30, -1024
002834  8ba13d10  add.ul r[4:5], r[28:29], r[4:5]
002838  17936400  or r6, r9, r6
00283c  1f044400  addli r8, r8, 32
002840  e3076ff2  loadli.w r15,  -1744(r30)
002844  97925400  or r5, r9, r5
002848  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
00284c  9fc33300  addli r7, r7, 28
002850  7fb38100  s_lm2gm r6, r8, 0(r[4:5])
002854  eb510fbc  load.d r[4:5], -1088(r30)
002858  2b0300f0  lui r6, 983040
00285c  1f040ff8  addli r8, r30, -1024
002860  e3043ff2  loadli.w r9,  -1768(r30)
002864  b3970728  sext_int2long r[16:17], r15
002868  ffb27000  s_lm2gm r5, r7, 0(r[2:3])
00286c  9f430000  addli r7, zero, 4
002870  ab0200f0  lui r5, 983040
002874  97b08603  sll.d r[2:3], r[14:15], r24
002878  1f045400  addli r8, r8, 40
00287c  e3065ff2  loadli.w r13,  -1752(r30)
002880  97b18103  sll.d r[4:5], r[4:5], r24
002884  b3940428  sext_int2long r[10:11], r9
002888  97925300  or r5, r7, r5
00288c  17936300  or r6, r7, r6
002890  9f030ff8  addli r7, r30, -1024
002894  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002898  8ba13d10  add.ul r[4:5], r[28:29], r[4:5]
00289c  b3960628  sext_int2long r[14:15], r13
0028a0  9fc34300  addli r7, r7, 36
0028a4  7fb38100  s_lm2gm r6, r8, 0(r[4:5])
0028a8  ab0100f0  lui r3, 983040
0028ac  1f020ff8  addli r4, r30, -1024
0028b0  ffb27000  s_lm2gm r5, r7, 0(r[2:3])
0028b4  e3021fef  loadli.w r5,  -2168(r30)
0028b8  97b08c03  sll.d r[2:3], r[26:27], r24
0028bc  e3032ff2  loadli.w r7,  -1776(r30)
0028c0  ab0c00f0  lui r25, 983040
0028c4  97913900  or r3, r19, r3
0028c8  1f425200  addli r4, r4, 44
0028cc  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0028d0  979c9901  or r25, r19, r25
0028d4  b3920228  sext_int2long r[6:7], r5
0028d8  b3930328  sext_int2long r[8:9], r7
0028dc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0028e0  ab0100f0  lui r3, 983040
0028e4  1f020ff8  addli r4, r30, -1024
0028e8  97b08203  sll.d r[2:3], r[6:7], r24
0028ec  e3421fef  loadli.w r5,  -2164(r30)
0028f0  97913900  or r3, r19, r3
0028f4  1f026200  addli r4, r4, 48
0028f8  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0028fc  b3920228  sext_int2long r[6:7], r5
002900  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002904  ab0100f0  lui r3, 983040
002908  1f020ff8  addli r4, r30, -1024
00290c  97b08203  sll.d r[2:3], r[6:7], r24
002910  e3022fef  loadli.w r5,  -2160(r30)
002914  97913900  or r3, r19, r3
002918  1f426200  addli r4, r4, 52
00291c  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002920  b3920228  sext_int2long r[6:7], r5
002924  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002928  ab0100f0  lui r3, 983040
00292c  1f020ff8  addli r4, r30, -1024
002930  97b08203  sll.d r[2:3], r[6:7], r24
002934  e3422fef  loadli.w r5,  -2156(r30)
002938  97913900  or r3, r19, r3
00293c  1f027200  addli r4, r4, 56
002940  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002944  b3920228  sext_int2long r[6:7], r5
002948  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00294c  ab0100f0  lui r3, 983040
002950  1f020ff8  addli r4, r30, -1024
002954  97b08203  sll.d r[2:3], r[6:7], r24
002958  e3023fef  loadli.w r5,  -2152(r30)
00295c  97913900  or r3, r19, r3
002960  1f427200  addli r4, r4, 60
002964  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002968  b3920228  sext_int2long r[6:7], r5
00296c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002970  63423fef  loadli.w r4,  -2148(r30)
002974  ab0100f0  lui r3, 983040
002978  97b08203  sll.d r[2:3], r[6:7], r24
00297c  63430fef  loadli.w r6,  -2172(r30)
002980  97913900  or r3, r19, r3
002984  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002988  33120228  sext_int2long r[5:6], r4
00298c  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
002990  97308203  sll.d r[2:3], r[5:6], r24
002994  e3024fef  loadli.w r5,  -2144(r30)
002998  ab0100f0  lui r3, 983040
00299c  1f020ff8  addli r4, r30, -1024
0029a0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0029a4  97913900  or r3, r19, r3
0029a8  1f428200  addli r4, r4, 68
0029ac  b3920228  sext_int2long r[6:7], r5
0029b0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0029b4  ab0100f0  lui r3, 983040
0029b8  1f020ff8  addli r4, r30, -1024
0029bc  97b08203  sll.d r[2:3], r[6:7], r24
0029c0  e3025fef  loadli.w r5,  -2136(r30)
0029c4  97913900  or r3, r19, r3
0029c8  1f029200  addli r4, r4, 72
0029cc  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0029d0  b3920228  sext_int2long r[6:7], r5
0029d4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0029d8  ab0100f0  lui r3, 983040
0029dc  1f020ff8  addli r4, r30, -1024
0029e0  97b08203  sll.d r[2:3], r[6:7], r24
0029e4  e3425fef  loadli.w r5,  -2132(r30)
0029e8  97913900  or r3, r19, r3
0029ec  1f429200  addli r4, r4, 76
0029f0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0029f4  b3920228  sext_int2long r[6:7], r5
0029f8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0029fc  ab0100f0  lui r3, 983040
002a00  1f020ff8  addli r4, r30, -1024
002a04  97b08203  sll.d r[2:3], r[6:7], r24
002a08  e3026fef  loadli.w r5,  -2128(r30)
002a0c  97913900  or r3, r19, r3
002a10  1f02a200  addli r4, r4, 80
002a14  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002a18  b3920228  sext_int2long r[6:7], r5
002a1c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002a20  ab0100f0  lui r3, 983040
002a24  1f020ff8  addli r4, r30, -1024
002a28  97b08203  sll.d r[2:3], r[6:7], r24
002a2c  e3426fef  loadli.w r5,  -2124(r30)
002a30  97913900  or r3, r19, r3
002a34  1f42a200  addli r4, r4, 84
002a38  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002a3c  b3920228  sext_int2long r[6:7], r5
002a40  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002a44  ab0100f0  lui r3, 983040
002a48  1f020ff8  addli r4, r30, -1024
002a4c  97b08203  sll.d r[2:3], r[6:7], r24
002a50  e3027fef  loadli.w r5,  -2120(r30)
002a54  97913900  or r3, r19, r3
002a58  1f02b200  addli r4, r4, 88
002a5c  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002a60  b3920228  sext_int2long r[6:7], r5
002a64  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002a68  ab0100f0  lui r3, 983040
002a6c  1f020ff8  addli r4, r30, -1024
002a70  97b08203  sll.d r[2:3], r[6:7], r24
002a74  e3427fef  loadli.w r5,  -2116(r30)
002a78  97913900  or r3, r19, r3
002a7c  1f42b200  addli r4, r4, 92
002a80  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002a84  b3920228  sext_int2long r[6:7], r5
002a88  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002a8c  ab0100f0  lui r3, 983040
002a90  1f020ff8  addli r4, r30, -1024
002a94  97b08203  sll.d r[2:3], r[6:7], r24
002a98  e3028fef  loadli.w r5,  -2112(r30)
002a9c  97913900  or r3, r19, r3
002aa0  1f02c200  addli r4, r4, 96
002aa4  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002aa8  b3920228  sext_int2long r[6:7], r5
002aac  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002ab0  ab0100f0  lui r3, 983040
002ab4  1f020ff8  addli r4, r30, -1024
002ab8  97b08203  sll.d r[2:3], r[6:7], r24
002abc  e3428fef  loadli.w r5,  -2108(r30)
002ac0  97913900  or r3, r19, r3
002ac4  1f42c200  addli r4, r4, 100
002ac8  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002acc  b3920228  sext_int2long r[6:7], r5
002ad0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002ad4  ab0100f0  lui r3, 983040
002ad8  1f020ff8  addli r4, r30, -1024
002adc  97b08203  sll.d r[2:3], r[6:7], r24
002ae0  e3029fef  loadli.w r5,  -2104(r30)
002ae4  97913900  or r3, r19, r3
002ae8  1f02d200  addli r4, r4, 104
002aec  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002af0  b3920228  sext_int2long r[6:7], r5
002af4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002af8  ab0100f0  lui r3, 983040
002afc  1f020ff8  addli r4, r30, -1024
002b00  97b08203  sll.d r[2:3], r[6:7], r24
002b04  e3429fef  loadli.w r5,  -2100(r30)
002b08  97913900  or r3, r19, r3
002b0c  1f42d200  addli r4, r4, 108
002b10  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002b14  b3920228  sext_int2long r[6:7], r5
002b18  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002b1c  ab0100f0  lui r3, 983040
002b20  1f020ff8  addli r4, r30, -1024
002b24  97b08203  sll.d r[2:3], r[6:7], r24
002b28  e302afef  loadli.w r5,  -2096(r30)
002b2c  97913900  or r3, r19, r3
002b30  1f02e200  addli r4, r4, 112
002b34  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002b38  b3920228  sext_int2long r[6:7], r5
002b3c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002b40  ab0100f0  lui r3, 983040
002b44  1f020ff8  addli r4, r30, -1024
002b48  97b08203  sll.d r[2:3], r[6:7], r24
002b4c  e342afef  loadli.w r5,  -2092(r30)
002b50  97913900  or r3, r19, r3
002b54  1f42e200  addli r4, r4, 116
002b58  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002b5c  b3920228  sext_int2long r[6:7], r5
002b60  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002b64  ab0100f0  lui r3, 983040
002b68  1f020ff8  addli r4, r30, -1024
002b6c  97b08203  sll.d r[2:3], r[6:7], r24
002b70  e302bfef  loadli.w r5,  -2088(r30)
002b74  97913900  or r3, r19, r3
002b78  1f02f200  addli r4, r4, 120
002b7c  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002b80  b3920228  sext_int2long r[6:7], r5
002b84  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002b88  ab0100f0  lui r3, 983040
002b8c  1f020ff8  addli r4, r30, -1024
002b90  97b08203  sll.d r[2:3], r[6:7], r24
002b94  e342bfef  loadli.w r5,  -2084(r30)
002b98  97913900  or r3, r19, r3
002b9c  1f42f200  addli r4, r4, 124
002ba0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002ba4  b3920228  sext_int2long r[6:7], r5
002ba8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002bac  6302cfef  loadli.w r4,  -2080(r30)
002bb0  ab0100f0  lui r3, 983040
002bb4  97b08203  sll.d r[2:3], r[6:7], r24
002bb8  63434fef  loadli.w r6,  -2140(r30)
002bbc  97913900  or r3, r19, r3
002bc0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002bc4  33120228  sext_int2long r[5:6], r4
002bc8  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
002bcc  97308203  sll.d r[2:3], r[5:6], r24
002bd0  e342cfef  loadli.w r5,  -2076(r30)
002bd4  ab0100f0  lui r3, 983040
002bd8  1f020ff8  addli r4, r30, -1024
002bdc  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002be0  97913900  or r3, r19, r3
002be4  1f420201  addli r4, r4, 132
002be8  b3920228  sext_int2long r[6:7], r5
002bec  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002bf0  ab0100f0  lui r3, 983040
002bf4  1f020ff8  addli r4, r30, -1024
002bf8  97b08203  sll.d r[2:3], r[6:7], r24
002bfc  e302dfef  loadli.w r5,  -2072(r30)
002c00  97913900  or r3, r19, r3
002c04  1f021201  addli r4, r4, 136
002c08  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002c0c  b3920228  sext_int2long r[6:7], r5
002c10  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002c14  ab0100f0  lui r3, 983040
002c18  1f020ff8  addli r4, r30, -1024
002c1c  97b08203  sll.d r[2:3], r[6:7], r24
002c20  e342dfef  loadli.w r5,  -2068(r30)
002c24  97913900  or r3, r19, r3
002c28  1f421201  addli r4, r4, 140
002c2c  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002c30  b3920228  sext_int2long r[6:7], r5
002c34  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002c38  ab0100f0  lui r3, 983040
002c3c  1f020ff8  addli r4, r30, -1024
002c40  97b08203  sll.d r[2:3], r[6:7], r24
002c44  e302efef  loadli.w r5,  -2064(r30)
002c48  97913900  or r3, r19, r3
002c4c  1f022201  addli r4, r4, 144
002c50  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002c54  b3920228  sext_int2long r[6:7], r5
002c58  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002c5c  ab0100f0  lui r3, 983040
002c60  1f020ff8  addli r4, r30, -1024
002c64  97b08203  sll.d r[2:3], r[6:7], r24
002c68  e302ffef  loadli.w r5,  -2056(r30)
002c6c  97913900  or r3, r19, r3
002c70  1f422201  addli r4, r4, 148
002c74  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002c78  b3920228  sext_int2long r[6:7], r5
002c7c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002c80  ab0100f0  lui r3, 983040
002c84  1f020ff8  addli r4, r30, -1024
002c88  97b08203  sll.d r[2:3], r[6:7], r24
002c8c  e342ffef  loadli.w r5,  -2052(r30)
002c90  97913900  or r3, r19, r3
002c94  1f023201  addli r4, r4, 152
002c98  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002c9c  b3920228  sext_int2long r[6:7], r5
002ca0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002ca4  ab0100f0  lui r3, 983040
002ca8  1f020ff8  addli r4, r30, -1024
002cac  97b08203  sll.d r[2:3], r[6:7], r24
002cb0  e3020ff0  loadli.w r5,  -2048(r30)
002cb4  97913900  or r3, r19, r3
002cb8  1f423201  addli r4, r4, 156
002cbc  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002cc0  b3920228  sext_int2long r[6:7], r5
002cc4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002cc8  ab0100f0  lui r3, 983040
002ccc  1f020ff8  addli r4, r30, -1024
002cd0  97b08203  sll.d r[2:3], r[6:7], r24
002cd4  e3420ff0  loadli.w r5,  -2044(r30)
002cd8  97913900  or r3, r19, r3
002cdc  1f024201  addli r4, r4, 160
002ce0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002ce4  b3920228  sext_int2long r[6:7], r5
002ce8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002cec  ab0100f0  lui r3, 983040
002cf0  1f020ff8  addli r4, r30, -1024
002cf4  97b08203  sll.d r[2:3], r[6:7], r24
002cf8  e3021ff0  loadli.w r5,  -2040(r30)
002cfc  97913900  or r3, r19, r3
002d00  1f424201  addli r4, r4, 164
002d04  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002d08  b3920228  sext_int2long r[6:7], r5
002d0c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002d10  ab0100f0  lui r3, 983040
002d14  1f020ff8  addli r4, r30, -1024
002d18  97b08203  sll.d r[2:3], r[6:7], r24
002d1c  e3421ff0  loadli.w r5,  -2036(r30)
002d20  97913900  or r3, r19, r3
002d24  1f025201  addli r4, r4, 168
002d28  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002d2c  b3920228  sext_int2long r[6:7], r5
002d30  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002d34  ab0100f0  lui r3, 983040
002d38  1f020ff8  addli r4, r30, -1024
002d3c  97b08203  sll.d r[2:3], r[6:7], r24
002d40  e3022ff0  loadli.w r5,  -2032(r30)
002d44  97913900  or r3, r19, r3
002d48  1f425201  addli r4, r4, 172
002d4c  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002d50  b3920228  sext_int2long r[6:7], r5
002d54  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002d58  ab0100f0  lui r3, 983040
002d5c  1f020ff8  addli r4, r30, -1024
002d60  97b08203  sll.d r[2:3], r[6:7], r24
002d64  e3422ff0  loadli.w r5,  -2028(r30)
002d68  97913900  or r3, r19, r3
002d6c  1f026201  addli r4, r4, 176
002d70  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002d74  b3920228  sext_int2long r[6:7], r5
002d78  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002d7c  ab0100f0  lui r3, 983040
002d80  1f020ff8  addli r4, r30, -1024
002d84  97b08203  sll.d r[2:3], r[6:7], r24
002d88  e3023ff0  loadli.w r5,  -2024(r30)
002d8c  97913900  or r3, r19, r3
002d90  1f426201  addli r4, r4, 180
002d94  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002d98  b3920228  sext_int2long r[6:7], r5
002d9c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002da0  ab0100f0  lui r3, 983040
002da4  1f020ff8  addli r4, r30, -1024
002da8  97b08203  sll.d r[2:3], r[6:7], r24
002dac  e3423ff0  loadli.w r5,  -2020(r30)
002db0  97913900  or r3, r19, r3
002db4  1f027201  addli r4, r4, 184
002db8  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002dbc  b3920228  sext_int2long r[6:7], r5
002dc0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002dc4  ab0100f0  lui r3, 983040
002dc8  1f020ff8  addli r4, r30, -1024
002dcc  97b08203  sll.d r[2:3], r[6:7], r24
002dd0  e3024ff0  loadli.w r5,  -2016(r30)
002dd4  97913900  or r3, r19, r3
002dd8  1f427201  addli r4, r4, 188
002ddc  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002de0  b3920228  sext_int2long r[6:7], r5
002de4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002de8  63424ff0  loadli.w r4,  -2012(r30)
002dec  ab0100f0  lui r3, 983040
002df0  97b08203  sll.d r[2:3], r[6:7], r24
002df4  6343efef  loadli.w r6,  -2060(r30)
002df8  97913900  or r3, r19, r3
002dfc  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002e00  33120228  sext_int2long r[5:6], r4
002e04  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
002e08  97308203  sll.d r[2:3], r[5:6], r24
002e0c  e3025ff0  loadli.w r5,  -2008(r30)
002e10  ab0100f0  lui r3, 983040
002e14  1f020ff8  addli r4, r30, -1024
002e18  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002e1c  97913900  or r3, r19, r3
002e20  1f428201  addli r4, r4, 196
002e24  b3920228  sext_int2long r[6:7], r5
002e28  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002e2c  ab0100f0  lui r3, 983040
002e30  1f020ff8  addli r4, r30, -1024
002e34  97b08203  sll.d r[2:3], r[6:7], r24
002e38  e3425ff0  loadli.w r5,  -2004(r30)
002e3c  97913900  or r3, r19, r3
002e40  1f029201  addli r4, r4, 200
002e44  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002e48  b3920228  sext_int2long r[6:7], r5
002e4c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002e50  ab0100f0  lui r3, 983040
002e54  1f020ff8  addli r4, r30, -1024
002e58  97b08203  sll.d r[2:3], r[6:7], r24
002e5c  e3026ff0  loadli.w r5,  -2000(r30)
002e60  97913900  or r3, r19, r3
002e64  1f429201  addli r4, r4, 204
002e68  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002e6c  b3920228  sext_int2long r[6:7], r5
002e70  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002e74  ab0100f0  lui r3, 983040
002e78  1f020ff8  addli r4, r30, -1024
002e7c  97b08203  sll.d r[2:3], r[6:7], r24
002e80  e3426ff0  loadli.w r5,  -1996(r30)
002e84  97913900  or r3, r19, r3
002e88  1f02a201  addli r4, r4, 208
002e8c  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002e90  b3920228  sext_int2long r[6:7], r5
002e94  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002e98  ab0100f0  lui r3, 983040
002e9c  1f020ff8  addli r4, r30, -1024
002ea0  97b08203  sll.d r[2:3], r[6:7], r24
002ea4  e3027ff0  loadli.w r5,  -1992(r30)
002ea8  97913900  or r3, r19, r3
002eac  1f42a201  addli r4, r4, 212
002eb0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002eb4  b3920228  sext_int2long r[6:7], r5
002eb8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002ebc  ab0100f0  lui r3, 983040
002ec0  1f020ff8  addli r4, r30, -1024
002ec4  97b08203  sll.d r[2:3], r[6:7], r24
002ec8  e3427ff0  loadli.w r5,  -1988(r30)
002ecc  97913900  or r3, r19, r3
002ed0  1f02b201  addli r4, r4, 216
002ed4  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002ed8  b3920228  sext_int2long r[6:7], r5
002edc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002ee0  ab0100f0  lui r3, 983040
002ee4  1f020ff8  addli r4, r30, -1024
002ee8  97b08203  sll.d r[2:3], r[6:7], r24
002eec  e3428ff0  loadli.w r5,  -1980(r30)
002ef0  97913900  or r3, r19, r3
002ef4  1f42b201  addli r4, r4, 220
002ef8  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002efc  b3920228  sext_int2long r[6:7], r5
002f00  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002f04  ab0100f0  lui r3, 983040
002f08  1f020ff8  addli r4, r30, -1024
002f0c  97b08203  sll.d r[2:3], r[6:7], r24
002f10  e3029ff0  loadli.w r5,  -1976(r30)
002f14  97913900  or r3, r19, r3
002f18  1f02c201  addli r4, r4, 224
002f1c  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002f20  b3920228  sext_int2long r[6:7], r5
002f24  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002f28  ab0100f0  lui r3, 983040
002f2c  1f020ff8  addli r4, r30, -1024
002f30  97b08203  sll.d r[2:3], r[6:7], r24
002f34  e3429ff0  loadli.w r5,  -1972(r30)
002f38  97913900  or r3, r19, r3
002f3c  1f42c201  addli r4, r4, 228
002f40  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002f44  b3920228  sext_int2long r[6:7], r5
002f48  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002f4c  ab0100f0  lui r3, 983040
002f50  1f020ff8  addli r4, r30, -1024
002f54  97b08203  sll.d r[2:3], r[6:7], r24
002f58  e302aff0  loadli.w r5,  -1968(r30)
002f5c  97913900  or r3, r19, r3
002f60  1f02d201  addli r4, r4, 232
002f64  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002f68  b3920228  sext_int2long r[6:7], r5
002f6c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002f70  ab0100f0  lui r3, 983040
002f74  1f020ff8  addli r4, r30, -1024
002f78  97b08203  sll.d r[2:3], r[6:7], r24
002f7c  e342aff0  loadli.w r5,  -1964(r30)
002f80  97913900  or r3, r19, r3
002f84  1f42d201  addli r4, r4, 236
002f88  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002f8c  b3920228  sext_int2long r[6:7], r5
002f90  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002f94  ab0100f0  lui r3, 983040
002f98  1f020ff8  addli r4, r30, -1024
002f9c  97b08203  sll.d r[2:3], r[6:7], r24
002fa0  e302bff0  loadli.w r5,  -1960(r30)
002fa4  97913900  or r3, r19, r3
002fa8  1f02e201  addli r4, r4, 240
002fac  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002fb0  b3920228  sext_int2long r[6:7], r5
002fb4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002fb8  ab0100f0  lui r3, 983040
002fbc  1f020ff8  addli r4, r30, -1024
002fc0  97b08203  sll.d r[2:3], r[6:7], r24
002fc4  e342bff0  loadli.w r5,  -1956(r30)
002fc8  97913900  or r3, r19, r3
002fcc  1f42e201  addli r4, r4, 244
002fd0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002fd4  b3920228  sext_int2long r[6:7], r5
002fd8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002fdc  ab0100f0  lui r3, 983040
002fe0  1f020ff8  addli r4, r30, -1024
002fe4  97b08203  sll.d r[2:3], r[6:7], r24
002fe8  e302cff0  loadli.w r5,  -1952(r30)
002fec  97913900  or r3, r19, r3
002ff0  1f02f201  addli r4, r4, 248
002ff4  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
002ff8  b3920228  sext_int2long r[6:7], r5
002ffc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
003000  ab0100f0  lui r3, 983040
003004  1f020ff8  addli r4, r30, -1024
003008  97b08203  sll.d r[2:3], r[6:7], r24
00300c  e342cff0  loadli.w r5,  -1948(r30)
003010  97913900  or r3, r19, r3
003014  1f42f201  addli r4, r4, 252
003018  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
00301c  b3920228  sext_int2long r[6:7], r5
003020  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
003024  6302dff0  loadli.w r4,  -1944(r30)
003028  ab0100f0  lui r3, 983040
00302c  97b08203  sll.d r[2:3], r[6:7], r24
003030  63038ff0  loadli.w r6,  -1984(r30)
003034  97913900  or r3, r19, r3
003038  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
00303c  33120228  sext_int2long r[5:6], r4
003040  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
003044  97308203  sll.d r[2:3], r[5:6], r24
003048  e342dff0  loadli.w r5,  -1940(r30)
00304c  ab0100f0  lui r3, 983040
003050  1f020ff8  addli r4, r30, -1024
003054  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003058  97913900  or r3, r19, r3
00305c  1f420202  addli r4, r4, 260
003060  b3920228  sext_int2long r[6:7], r5
003064  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
003068  ab0100f0  lui r3, 983040
00306c  1f020ff8  addli r4, r30, -1024
003070  97b08203  sll.d r[2:3], r[6:7], r24
003074  e302eff0  loadli.w r5,  -1936(r30)
003078  97913900  or r3, r19, r3
00307c  1f021202  addli r4, r4, 264
003080  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003084  b3920228  sext_int2long r[6:7], r5
003088  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00308c  ab0100f0  lui r3, 983040
003090  1f020ff8  addli r4, r30, -1024
003094  97b08203  sll.d r[2:3], r[6:7], r24
003098  e342eff0  loadli.w r5,  -1932(r30)
00309c  97913900  or r3, r19, r3
0030a0  1f421202  addli r4, r4, 268
0030a4  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0030a8  b3920228  sext_int2long r[6:7], r5
0030ac  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0030b0  ab0100f0  lui r3, 983040
0030b4  1f020ff8  addli r4, r30, -1024
0030b8  97b08203  sll.d r[2:3], r[6:7], r24
0030bc  e302fff0  loadli.w r5,  -1928(r30)
0030c0  97913900  or r3, r19, r3
0030c4  1f022202  addli r4, r4, 272
0030c8  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0030cc  b3920228  sext_int2long r[6:7], r5
0030d0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0030d4  ab0100f0  lui r3, 983040
0030d8  1f020ff8  addli r4, r30, -1024
0030dc  97b08203  sll.d r[2:3], r[6:7], r24
0030e0  e342fff0  loadli.w r5,  -1924(r30)
0030e4  97913900  or r3, r19, r3
0030e8  1f422202  addli r4, r4, 276
0030ec  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0030f0  b3920228  sext_int2long r[6:7], r5
0030f4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0030f8  ab0100f0  lui r3, 983040
0030fc  1f020ff8  addli r4, r30, -1024
003100  97b08203  sll.d r[2:3], r[6:7], r24
003104  e3020ff1  loadli.w r5,  -1920(r30)
003108  97913900  or r3, r19, r3
00310c  1f023202  addli r4, r4, 280
003110  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003114  b3920228  sext_int2long r[6:7], r5
003118  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00311c  ab0100f0  lui r3, 983040
003120  1f020ff8  addli r4, r30, -1024
003124  97b08203  sll.d r[2:3], r[6:7], r24
003128  e3420ff1  loadli.w r5,  -1916(r30)
00312c  97913900  or r3, r19, r3
003130  1f423202  addli r4, r4, 284
003134  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003138  b3920228  sext_int2long r[6:7], r5
00313c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
003140  ab0100f0  lui r3, 983040
003144  1f020ff8  addli r4, r30, -1024
003148  97b08203  sll.d r[2:3], r[6:7], r24
00314c  e3021ff1  loadli.w r5,  -1912(r30)
003150  97913900  or r3, r19, r3
003154  1f024202  addli r4, r4, 288
003158  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
00315c  b3920228  sext_int2long r[6:7], r5
003160  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
003164  ab0100f0  lui r3, 983040
003168  1f020ff8  addli r4, r30, -1024
00316c  97b08203  sll.d r[2:3], r[6:7], r24
003170  e3022ff1  loadli.w r5,  -1904(r30)
003174  97913900  or r3, r19, r3
003178  1f424202  addli r4, r4, 292
00317c  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003180  b3920228  sext_int2long r[6:7], r5
003184  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
003188  ab0100f0  lui r3, 983040
00318c  1f020ff8  addli r4, r30, -1024
003190  97b08203  sll.d r[2:3], r[6:7], r24
003194  e3422ff1  loadli.w r5,  -1900(r30)
003198  97913900  or r3, r19, r3
00319c  1f025202  addli r4, r4, 296
0031a0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0031a4  b3920228  sext_int2long r[6:7], r5
0031a8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0031ac  ab0100f0  lui r3, 983040
0031b0  1f020ff8  addli r4, r30, -1024
0031b4  97b08203  sll.d r[2:3], r[6:7], r24
0031b8  e3023ff1  loadli.w r5,  -1896(r30)
0031bc  97913900  or r3, r19, r3
0031c0  1f425202  addli r4, r4, 300
0031c4  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0031c8  b3920228  sext_int2long r[6:7], r5
0031cc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0031d0  ab0100f0  lui r3, 983040
0031d4  1f020ff8  addli r4, r30, -1024
0031d8  97b08203  sll.d r[2:3], r[6:7], r24
0031dc  e3423ff1  loadli.w r5,  -1892(r30)
0031e0  97913900  or r3, r19, r3
0031e4  1f026202  addli r4, r4, 304
0031e8  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0031ec  b3920228  sext_int2long r[6:7], r5
0031f0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0031f4  ab0100f0  lui r3, 983040
0031f8  1f020ff8  addli r4, r30, -1024
0031fc  97b08203  sll.d r[2:3], r[6:7], r24
003200  e3024ff1  loadli.w r5,  -1888(r30)
003204  97913900  or r3, r19, r3
003208  1f426202  addli r4, r4, 308
00320c  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003210  b3920228  sext_int2long r[6:7], r5
003214  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
003218  ab0100f0  lui r3, 983040
00321c  1f020ff8  addli r4, r30, -1024
003220  97b08203  sll.d r[2:3], r[6:7], r24
003224  e3424ff1  loadli.w r5,  -1884(r30)
003228  97913900  or r3, r19, r3
00322c  1f027202  addli r4, r4, 312
003230  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003234  b3920228  sext_int2long r[6:7], r5
003238  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00323c  ab0100f0  lui r3, 983040
003240  1f020ff8  addli r4, r30, -1024
003244  97b08203  sll.d r[2:3], r[6:7], r24
003248  e3025ff1  loadli.w r5,  -1880(r30)
00324c  97913900  or r3, r19, r3
003250  1f427202  addli r4, r4, 316
003254  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003258  b3920228  sext_int2long r[6:7], r5
00325c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
003260  63425ff1  loadli.w r4,  -1876(r30)
003264  ab0100f0  lui r3, 983040
003268  97b08203  sll.d r[2:3], r[6:7], r24
00326c  63431ff1  loadli.w r6,  -1908(r30)
003270  97913900  or r3, r19, r3
003274  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003278  33120228  sext_int2long r[5:6], r4
00327c  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
003280  97308203  sll.d r[2:3], r[5:6], r24
003284  e3026ff1  loadli.w r5,  -1872(r30)
003288  ab0100f0  lui r3, 983040
00328c  1f020ff8  addli r4, r30, -1024
003290  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003294  97913900  or r3, r19, r3
003298  1f428202  addli r4, r4, 324
00329c  b3920228  sext_int2long r[6:7], r5
0032a0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0032a4  ab0100f0  lui r3, 983040
0032a8  1f020ff8  addli r4, r30, -1024
0032ac  97b08203  sll.d r[2:3], r[6:7], r24
0032b0  e3426ff1  loadli.w r5,  -1868(r30)
0032b4  97913900  or r3, r19, r3
0032b8  1f029202  addli r4, r4, 328
0032bc  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0032c0  b3920228  sext_int2long r[6:7], r5
0032c4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0032c8  ab0100f0  lui r3, 983040
0032cc  1f020ff8  addli r4, r30, -1024
0032d0  97b08203  sll.d r[2:3], r[6:7], r24
0032d4  e3027ff1  loadli.w r5,  -1864(r30)
0032d8  97913900  or r3, r19, r3
0032dc  1f429202  addli r4, r4, 332
0032e0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0032e4  b3920228  sext_int2long r[6:7], r5
0032e8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0032ec  ab0100f0  lui r3, 983040
0032f0  1f020ff8  addli r4, r30, -1024
0032f4  97b08203  sll.d r[2:3], r[6:7], r24
0032f8  e3427ff1  loadli.w r5,  -1860(r30)
0032fc  97913900  or r3, r19, r3
003300  1f02a202  addli r4, r4, 336
003304  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003308  b3920228  sext_int2long r[6:7], r5
00330c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
003310  ab0100f0  lui r3, 983040
003314  1f020ff8  addli r4, r30, -1024
003318  97b08203  sll.d r[2:3], r[6:7], r24
00331c  e3028ff1  loadli.w r5,  -1856(r30)
003320  97913900  or r3, r19, r3
003324  1f42a202  addli r4, r4, 340
003328  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
00332c  b3920228  sext_int2long r[6:7], r5
003330  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
003334  ab0100f0  lui r3, 983040
003338  1f020ff8  addli r4, r30, -1024
00333c  97b08203  sll.d r[2:3], r[6:7], r24
003340  e3428ff1  loadli.w r5,  -1852(r30)
003344  97913900  or r3, r19, r3
003348  1f02b202  addli r4, r4, 344
00334c  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003350  b3920228  sext_int2long r[6:7], r5
003354  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
003358  ab0100f0  lui r3, 983040
00335c  1f020ff8  addli r4, r30, -1024
003360  97b08203  sll.d r[2:3], r[6:7], r24
003364  e3029ff1  loadli.w r5,  -1848(r30)
003368  97913900  or r3, r19, r3
00336c  1f42b202  addli r4, r4, 348
003370  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003374  b3920228  sext_int2long r[6:7], r5
003378  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00337c  ab0100f0  lui r3, 983040
003380  1f020ff8  addli r4, r30, -1024
003384  97b08203  sll.d r[2:3], r[6:7], r24
003388  e3429ff1  loadli.w r5,  -1844(r30)
00338c  97913900  or r3, r19, r3
003390  1f02c202  addli r4, r4, 352
003394  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003398  b3920228  sext_int2long r[6:7], r5
00339c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0033a0  ab0100f0  lui r3, 983040
0033a4  1f020ff8  addli r4, r30, -1024
0033a8  97b08203  sll.d r[2:3], r[6:7], r24
0033ac  e302aff1  loadli.w r5,  -1840(r30)
0033b0  97913900  or r3, r19, r3
0033b4  1f42c202  addli r4, r4, 356
0033b8  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0033bc  b3920228  sext_int2long r[6:7], r5
0033c0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0033c4  ab0100f0  lui r3, 983040
0033c8  1f020ff8  addli r4, r30, -1024
0033cc  97b08203  sll.d r[2:3], r[6:7], r24
0033d0  e342aff1  loadli.w r5,  -1836(r30)
0033d4  97913900  or r3, r19, r3
0033d8  1f02d202  addli r4, r4, 360
0033dc  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0033e0  b3920228  sext_int2long r[6:7], r5
0033e4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0033e8  ab0100f0  lui r3, 983040
0033ec  1f020ff8  addli r4, r30, -1024
0033f0  97b08203  sll.d r[2:3], r[6:7], r24
0033f4  e342bff1  loadli.w r5,  -1828(r30)
0033f8  97913900  or r3, r19, r3
0033fc  1f42d202  addli r4, r4, 364
003400  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003404  b3920228  sext_int2long r[6:7], r5
003408  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00340c  ab0100f0  lui r3, 983040
003410  1f020ff8  addli r4, r30, -1024
003414  97b08203  sll.d r[2:3], r[6:7], r24
003418  e302cff1  loadli.w r5,  -1824(r30)
00341c  97913900  or r3, r19, r3
003420  1f02e202  addli r4, r4, 368
003424  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003428  b3920228  sext_int2long r[6:7], r5
00342c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
003430  ab0100f0  lui r3, 983040
003434  1f020ff8  addli r4, r30, -1024
003438  97b08203  sll.d r[2:3], r[6:7], r24
00343c  e342cff1  loadli.w r5,  -1820(r30)
003440  97913900  or r3, r19, r3
003444  1f42e202  addli r4, r4, 372
003448  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
00344c  b3920228  sext_int2long r[6:7], r5
003450  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
003454  ab0100f0  lui r3, 983040
003458  1f020ff8  addli r4, r30, -1024
00345c  97b08203  sll.d r[2:3], r[6:7], r24
003460  e302dff1  loadli.w r5,  -1816(r30)
003464  97913900  or r3, r19, r3
003468  1f02f202  addli r4, r4, 376
00346c  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003470  b3920228  sext_int2long r[6:7], r5
003474  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
003478  ab0100f0  lui r3, 983040
00347c  1f020ff8  addli r4, r30, -1024
003480  97b08203  sll.d r[2:3], r[6:7], r24
003484  e342dff1  loadli.w r5,  -1812(r30)
003488  97913900  or r3, r19, r3
00348c  1f42f202  addli r4, r4, 380
003490  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003494  b3920228  sext_int2long r[6:7], r5
003498  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00349c  6302eff1  loadli.w r4,  -1808(r30)
0034a0  ab0100f0  lui r3, 983040
0034a4  97b08203  sll.d r[2:3], r[6:7], r24
0034a8  6303bff1  loadli.w r6,  -1832(r30)
0034ac  97913900  or r3, r19, r3
0034b0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0034b4  33120228  sext_int2long r[5:6], r4
0034b8  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
0034bc  97308203  sll.d r[2:3], r[5:6], r24
0034c0  e342eff1  loadli.w r5,  -1804(r30)
0034c4  ab0100f0  lui r3, 983040
0034c8  1f020ff8  addli r4, r30, -1024
0034cc  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0034d0  97913900  or r3, r19, r3
0034d4  1f420203  addli r4, r4, 388
0034d8  b3920228  sext_int2long r[6:7], r5
0034dc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0034e0  ab0100f0  lui r3, 983040
0034e4  1f020ff8  addli r4, r30, -1024
0034e8  97b08203  sll.d r[2:3], r[6:7], r24
0034ec  e302fff1  loadli.w r5,  -1800(r30)
0034f0  97913900  or r3, r19, r3
0034f4  1f021203  addli r4, r4, 392
0034f8  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0034fc  b3920228  sext_int2long r[6:7], r5
003500  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
003504  ab0100f0  lui r3, 983040
003508  1f020ff8  addli r4, r30, -1024
00350c  97b08203  sll.d r[2:3], r[6:7], r24
003510  e342fff1  loadli.w r5,  -1796(r30)
003514  97913900  or r3, r19, r3
003518  1f421203  addli r4, r4, 396
00351c  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003520  b3920228  sext_int2long r[6:7], r5
003524  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
003528  ab0100f0  lui r3, 983040
00352c  1f020ff8  addli r4, r30, -1024
003530  97b08203  sll.d r[2:3], r[6:7], r24
003534  e3020ff2  loadli.w r5,  -1792(r30)
003538  97913900  or r3, r19, r3
00353c  1f022203  addli r4, r4, 400
003540  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003544  b3920228  sext_int2long r[6:7], r5
003548  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00354c  ab0100f0  lui r3, 983040
003550  1f020ff8  addli r4, r30, -1024
003554  97b08203  sll.d r[2:3], r[6:7], r24
003558  e3420ff2  loadli.w r5,  -1788(r30)
00355c  97913900  or r3, r19, r3
003560  1f422203  addli r4, r4, 404
003564  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
003568  b3920228  sext_int2long r[6:7], r5
00356c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
003570  63021ff2  loadli.w r4,  -1784(r30)
003574  ab0100f0  lui r3, 983040
003578  97b08203  sll.d r[2:3], r[6:7], r24
00357c  1f030ff8  addli r6, r30, -1024
003580  97913900  or r3, r19, r3
003584  33120228  sext_int2long r[5:6], r4
003588  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
00358c  1f033303  addli r6, r6, 408
003590  17328203  sll.d r[5:6], r[5:6], r24
003594  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
003598  ab0100f0  lui r3, 983040
00359c  8ba04d10  add.ul r[2:3], r[28:29], r[5:6]
0035a0  e3421ff2  loadli.w r5,  -1780(r30)
0035a4  1f020ff8  addli r4, r30, -1024
0035a8  97913900  or r3, r19, r3
0035ac  1f423203  addli r4, r4, 412
0035b0  b3920228  sext_int2long r[6:7], r5
0035b4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0035b8  eb500f97  load.d r[2:3], -1680(r30)
0035bc  97b18203  sll.d r[4:5], r[6:7], r24
0035c0  ab0200f0  lui r5, 983040
0035c4  1f030ff8  addli r6, r30, -1024
0035c8  8ba13d10  add.ul r[4:5], r[28:29], r[4:5]
0035cc  1f034303  addli r6, r6, 416
0035d0  97925900  or r5, r19, r5
0035d4  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0035d8  ffb26100  s_lm2gm r5, r6, 0(r[4:5])
0035dc  e3412ff2  loadli.w r3,  -1772(r30)
0035e0  97b24303  sll.d r[6:7], r[8:9], r20
0035e4  ab0300f0  lui r7, 983040
0035e8  1f040ff8  addli r8, r30, -1024
0035ec  8ba25d10  add.ul r[6:7], r[28:29], r[6:7]
0035f0  1f444403  addli r8, r8, 420
0035f4  97937900  or r7, r19, r7
0035f8  b3910128  sext_int2long r[4:5], r3
0035fc  ffb38200  s_lm2gm r7, r8, 0(r[6:7])
003600  97b34403  sll.d r[8:9], r[10:11], r20
003604  ab0400f0  lui r9, 983040
003608  1f050ff8  addli r10, r30, -1024
00360c  e3423ff2  loadli.w r5,  -1764(r30)
003610  97b14103  sll.d r[4:5], r[4:5], r20
003614  1f055503  addli r10, r10, 424
003618  97949900  or r9, r19, r9
00361c  8ba37d10  add.ul r[8:9], r[28:29], r[8:9]
003620  8ba13d10  add.ul r[4:5], r[28:29], r[4:5]
003624  b3920228  sext_int2long r[6:7], r5
003628  ffb4a100  s_lm2gm r9, r10, 0(r[4:5])
00362c  97b44503  sll.d r[10:11], r[12:13], r20
003630  ab0500f0  lui r11, 983040
003634  1f060ff8  addli r12, r30, -1024
003638  97b24203  sll.d r[6:7], r[6:7], r20
00363c  e3414ff2  loadli.w r3,  -1756(r30)
003640  1f465603  addli r12, r12, 428
003644  9795b900  or r11, r19, r11
003648  8ba25d10  add.ul r[6:7], r[28:29], r[6:7]
00364c  8ba49d10  add.ul r[10:11], r[28:29], r[10:11]
003650  b3910128  sext_int2long r[4:5], r3
003654  ffb5c300  s_lm2gm r11, r12, 0(r[8:9])
003658  e3435ff2  loadli.w r7,  -1748(r30)
00365c  97b54603  sll.d r[12:13], r[14:15], r20
003660  97b14103  sll.d r[4:5], r[4:5], r20
003664  8ba5bd10  add.ul r[12:13], r[28:29], r[12:13]
003668  b3930328  sext_int2long r[8:9], r7
00366c  8ba13d10  add.ul r[4:5], r[28:29], r[4:5]
003670  97b34303  sll.d r[8:9], r[8:9], r20
003674  8ba67d10  add.ul r[14:15], r[28:29], r[8:9]
003678  ab0300f0  lui r7, 983040
00367c  1f040ff8  addli r8, r30, -1024
003680  1f046403  addli r8, r8, 432
003684  97937900  or r7, r19, r7
003688  ffb38200  s_lm2gm r7, r8, 0(r[6:7])
00368c  e3426ff2  loadli.w r5,  -1740(r30)
003690  97b34703  sll.d r[8:9], r[16:17], r20
003694  8ba87d10  add.ul r[18:19], r[28:29], r[8:9]
003698  e3037ff2  loadli.w r7,  -1736(r30)
00369c  b3920228  sext_int2long r[6:7], r5
0036a0  97b24203  sll.d r[6:7], r[6:7], r20
0036a4  b3930328  sext_int2long r[8:9], r7
0036a8  8baa5d10  add.ul r[22:23], r[28:29], r[6:7]
0036ac  ab0200f0  lui r5, 983040
0036b0  1f030ff8  addli r6, r30, -1024
0036b4  97b34303  sll.d r[8:9], r[8:9], r20
0036b8  1f436303  addli r6, r6, 436
0036bc  97925900  or r5, r19, r5
0036c0  8bab7d10  add.ul r[24:25], r[28:29], r[8:9]
0036c4  ffb26400  s_lm2gm r5, r6, 0(r[10:11])
0036c8  e3427ff2  loadli.w r5,  -1732(r30)
0036cc  ab0400f0  lui r9, 983040
0036d0  97949900  or r9, r19, r9
0036d4  b3920228  sext_int2long r[6:7], r5
0036d8  97b24203  sll.d r[6:7], r[6:7], r20
0036dc  8ba25d10  add.ul r[6:7], r[28:29], r[6:7]
0036e0  73305fbc  store.d r[6:7], -1088(r30)
0036e4  e3028ff2  loadli.w r5,  -1728(r30)
0036e8  b3930228  sext_int2long r[8:9], r5
0036ec  9f020ff8  addli r5, r30, -1024
0036f0  1f857203  addli r10, r5, 440
0036f4  97b34303  sll.d r[8:9], r[8:9], r20
0036f8  9f220000  addli r5, zero, 2
0036fc  ffb4a100  s_lm2gm r9, r10, 0(r[4:5])
003700  e3418ff2  loadli.w r3,  -1724(r30)
003704  8ba77d10  add.ul r[16:17], r[28:29], r[8:9]
003708  e3039ff2  loadli.w r7,  -1720(r30)
00370c  b3910128  sext_int2long r[4:5], r3
003710  b3940328  sext_int2long r[10:11], r7
003714  97b14103  sll.d r[4:5], r[4:5], r20
003718  8ba13d10  add.ul r[4:5], r[28:29], r[4:5]
00371c  73303fb8  store.d r[4:5], -1152(r30)
003720  97b14403  sll.d r[4:5], r[10:11], r20
003724  ab0400f0  lui r9, 983040
003728  1f050ff8  addli r10, r30, -1024
00372c  8ba33d10  add.ul r[8:9], r[28:29], r[4:5]
003730  e301aff2  loadli.w r3,  -1712(r30)
003734  1f457503  addli r10, r10, 444
003738  97949900  or r9, r19, r9
00373c  ffb4a500  s_lm2gm r9, r10, 0(r[12:13])
003740  e3449ff2  loadli.w r9,  -1716(r30)
003744  b3910128  sext_int2long r[4:5], r3
003748  b3940428  sext_int2long r[10:11], r9
00374c  97b14103  sll.d r[4:5], r[4:5], r20
003750  97b54403  sll.d r[12:13], r[10:11], r20
003754  8ba43d10  add.ul r[10:11], r[28:29], r[4:5]
003758  e301bff2  loadli.w r3,  -1704(r30)
00375c  8ba5bd10  add.ul r[12:13], r[28:29], r[12:13]
003760  b3910128  sext_int2long r[4:5], r3
003764  97b14103  sll.d r[4:5], r[4:5], r20
003768  1f0a0ff8  addli r20, r30, -1024
00376c  ffbc4001  s_lm2gm r25, r20, 0(r[2:3])
003770  ab0c00f0  lui r25, 983040
003774  634aaff2  loadli.w r20,  -1708(r30)
003778  e340bff2  loadli.w r1,  -1700(r30)
00377c  8ba13d10  add.ul r[4:5], r[28:29], r[4:5]
003780  979c9901  or r25, r19, r25
003784  b3900028  sext_int2long r[2:3], r1
003788  ffbc4601  s_lm2gm r25, r20, 0(r[14:15])
00378c  ab0c00f0  lui r25, 983040
003790  1f0a0ff8  addli r20, r30, -1024
003794  e306cff2  loadli.w r13,  -1696(r30)
003798  97b05002  sll.d r[2:3], r[2:3], r5
00379c  1f4d8a03  addli r26, r20, 452
0037a0  979c9901  or r25, r19, r25
0037a4  b3960628  sext_int2long r[14:15], r13
0037a8  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0037ac  ffbca801  s_lm2gm r25, r26, 0(r[18:19])
0037b0  ab0c00f0  lui r25, 983040
0037b4  1f0d9a03  addli r26, r20, 456
0037b8  e348cff2  loadli.w r17,  -1692(r30)
0037bc  97b65602  sll.d r[14:15], r[14:15], r5
0037c0  979c9901  or r25, r19, r25
0037c4  b3980828  sext_int2long r[18:19], r17
0037c8  8ba6dd10  add.ul r[14:15], r[28:29], r[14:15]
0037cc  ffbcaa01  s_lm2gm r25, r26, 0(r[22:23])
0037d0  1f4b9a03  addli r22, r20, 460
0037d4  630adff2  loadli.w r20,  -1688(r30)
0037d8  ab0a00f0  lui r21, 983040
0037dc  97b85802  sll.d r[18:19], r[18:19], r5
0037e0  979a5901  or r21, r19, r21
0037e4  9f090ff8  addli r19, r30, -1024
0037e8  b31c0a28  sext_int2long r[26:27], r20
0037ec  634adff2  loadli.w r20,  -1684(r30)
0037f0  8ba81d11  add.ul r[18:19], r[28:29], r[18:19]
0037f4  ffba6b01  s_lm2gm r21, r22, 0(r[24:25])
0037f8  97bb5c02  sll.d r[24:25], r[26:27], r5
0037fc  b31a0a28  sext_int2long r[22:23], r20
003800  1f4a0000  addli r20, zero, 4
003804  97bc5a02  sll.d r[26:27], r[22:23], r5
003808  8baa7d11  add.ul r[22:23], r[28:29], r[24:25]
00380c  eb520fbc  load.d r[6:7], -1088(r30)
003810  8bab9d11  add.ul r[24:25], r[28:29], r[26:27]
003814  ab0c00f0  lui r25, 983040
003818  1f8da903  addli r26, r19, 464
00381c  ab0d00f0  lui r27, 983040
003820  1fcea903  addli r28, r19, 468
003824  ab0900f0  lui r19, 983040
003828  971c9a01  or r25, r20, r25
00382c  971dba01  or r27, r20, r27
003830  ffbca201  s_lm2gm r25, r26, 0(r[6:7])
003834  ab0200f0  lui r5, 983040
003838  9f4c0000  addli r25, zero, 4
00383c  1f030ff8  addli r6, r30, -1024
003840  ffbdc701  s_lm2gm r27, r28, 0(r[16:17])
003844  eb570fb8  load.d r[16:17], -1152(r30)
003848  97125a00  or r5, r20, r5
00384c  1f0a0ff8  addli r20, r30, -1024
003850  97993c01  or r19, r25, r19
003854  1f03b303  addli r6, r6, 472
003858  1f4aba03  addli r20, r20, 476
00385c  ffb26700  s_lm2gm r5, r6, 0(r[16:17])
003860  ab0200f0  lui r5, 983040
003864  1f030ff8  addli r6, r30, -1024
003868  ffb94301  s_lm2gm r19, r20, 0(r[8:9])
00386c  ab0300f0  lui r7, 983040
003870  1f040ff8  addli r8, r30, -1024
003874  1f03c303  addli r6, r6, 480
003878  97925c00  or r5, r25, r5
00387c  1f44c403  addli r8, r8, 484
003880  97937c00  or r7, r25, r7
003884  ffb26400  s_lm2gm r5, r6, 0(r[10:11])
003888  ab0200f0  lui r5, 983040
00388c  e344fff2  loadli.w r9,  -1668(r30)
003890  ffb38500  s_lm2gm r7, r8, 0(r[12:13])
003894  9f050ff8  addli r11, r30, -1024
003898  ab0300f0  lui r7, 983040
00389c  97925c00  or r5, r25, r5
0038a0  1fc4d503  addli r8, r11, 492
0038a4  97937c00  or r7, r25, r7
0038a8  1f83d503  addli r6, r11, 488
0038ac  ffb38000  s_lm2gm r7, r8, 0(r[2:3])
0038b0  ab0000f0  lui r1, 983040
0038b4  ffb26100  s_lm2gm r5, r6, 0(r[4:5])
0038b8  ab0100f0  lui r3, 983040
0038bc  1f81e503  addli r2, r11, 496
0038c0  1fc2e503  addli r4, r11, 500
0038c4  1f030004  addli r6, zero, 512
0038c8  9f030ffc  addli r7, r30, -512
0038cc  97901c00  or r1, r25, r1
0038d0  97913c00  or r3, r25, r3
0038d4  ffb02600  s_lm2gm r1, r2, 0(r[14:15])
0038d8  ab0000f0  lui r1, 983040
0038dc  ffb14800  s_lm2gm r3, r4, 0(r[18:19])
0038e0  ab0100f0  lui r3, 983040
0038e4  1f81f503  addli r2, r11, 504
0038e8  1fc2f503  addli r4, r11, 508
0038ec  97901c00  or r1, r25, r1
0038f0  97913c00  or r3, r25, r3
0038f4  ffb02a00  s_lm2gm r1, r2, 0(r[22:23])
0038f8  e3406fee  loadli.w r1,  -2252(r30)
0038fc  ffb14b00  s_lm2gm r3, r4, 0(r[24:25])
003900  1f410000  addli r2, zero, 4
003904  00a00000  mfence { lm }
003908  7e0001e0  vmmov mr0, r2
00390c  1f110000  addli r2, zero, 1
003910  63058fee  loadli.w r10,  -2240(r30)
003914  8b941410  add.s r9, r9, r1
003918  e3408fee  loadli.w r1,  -2236(r30)
00391c  7e0101e0  vmmov mr2, r2
003920  3f9314e6  blt.s r9, r1, -13116
003924  9f0e0fea  addli sp, r30, -2816
003928  9f8e0e16  addli sp, sp, 2816
00392c  00a00300  mfence { lm, sm, gm }
003930  00100000  exit
003934  00100000  exit
003938  00100000  exit
00393c  00100000  exit
003940  00100000  exit
003944  00100000  exit
003948  00100000  exit
00394c  00100000  exit
003950  00100000  exit
003954  00100000  exit
003958  00100000  exit
00395c  00100000  exit
003960  00100000  exit
003964  00100000  exit
003968  00100000  exit
00396c  00100000  exit
003970  00100000  exit
003974  00100000  exit
003978  00100000  exit
00397c  00100000  exit
003980  00100000  exit
003984  00100000  exit
003988  00100000  exit
00398c  00100000  exit
003990  00100000  exit
003994  00100000  exit
003998  00100000  exit
00399c  00100000  exit
0039a0  00100000  exit
0039a4  00100000  exit
0039a8  00100000  exit
0039ac  00100000  exit
0039b0  00100000  exit
0039b4  00100000  exit
0039b8  00100000  exit
0039bc  00100000  exit
0039c0  00100000  exit
0039c4  00100000  exit
0039c8  00100000  exit
0039cc  00100000  exit
0039d0  00100000  exit
0039d4  00100000  exit
0039d8  00100000  exit
0039dc  00100000  exit
0039e0  00100000  exit
0039e4  00100000  exit
0039e8  00100000  exit
0039ec  00100000  exit
0039f0  00100000  exit
0039f4  00100000  exit
0039f8  00100000  exit
0039fc  00100000  exit
003a00  00100000  exit
003a04  00100000  exit
003a08  00100000  exit
003a0c  00100000  exit
003a10  00100000  exit
003a14  00100000  exit
003a18  00100000  exit
003a1c  00100000  exit
003a20  00100000  exit
003a24  00100000  exit
003a28  00100000  exit
003a2c  00100000  exit
003a30  00100000  exit
003a34  00100000  exit
003a38  00100000  exit
003a3c  00100000  exit
003a40  00100000  exit
003a44  00100000  exit
003a48  00100000  exit
003a4c  00100000  exit
003a50  00100000  exit
003a54  00100000  exit
003a58  00100000  exit
003a5c  00100000  exit
003a60  00100000  exit
003a64  00100000  exit
003a68  00100000  exit
003a6c  00100000  exit
003a70  00100000  exit
003a74  00100000  exit
003a78  00100000  exit
003a7c  00100000  exit
003a80  00100000  exit
003a84  00100000  exit
003a88  00100000  exit
003a8c  00100000  exit
003a90  00100000  exit
003a94  00100000  exit
003a98  00100000  exit
003a9c  00100000  exit
003aa0  00100000  exit
003aa4  00100000  exit
003aa8  00100000  exit
003aac  00100000  exit
003ab0  00100000  exit
003ab4  00100000  exit
003ab8  00100000  exit
003abc  00100000  exit
003ac0  00100000  exit
003ac4  00100000  exit
003ac8  00100000  exit
003acc  00100000  exit
003ad0  00100000  exit
003ad4  00100000  exit
003ad8  00100000  exit
003adc  00100000  exit
003ae0  00100000  exit
003ae4  00100000  exit
003ae8  00100000  exit
003aec  00100000  exit
003af0  00100000  exit
003af4  00100000  exit
003af8  00100000  exit
003afc  00100000  exit
003b00  00100000  exit
003b04  00100000  exit
003b08  00100000  exit
003b0c  00100000  exit
003b10  00100000  exit
003b14  00100000  exit
003b18  00100000  exit
003b1c  00100000  exit
003b20  00100000  exit
003b24  00100000  exit
003b28  00100000  exit
003b2c  00100000  exit
003b30  00100000  exit
003b34  00100000  exit
003b38  00100000  exit
003b3c  00100000  exit
003b40  00100000  exit
003b44  00100000  exit
003b48  00100000  exit
003b4c  00100000  exit
003b50  00100000  exit
003b54  00100000  exit
003b58  00100000  exit
003b5c  00100000  exit
003b60  00100000  exit
003b64  00100000  exit
003b68  00100000  exit
003b6c  00100000  exit
003b70  00100000  exit
