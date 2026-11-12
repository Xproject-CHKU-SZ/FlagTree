; SHA-256 28332f395b4c49a9f14dccc6ef0eaed1e35978eda6fece819928c82ac9474a37
; P800 Cluster · XTDK LLVM 19 · 2454 / 2454 words decoded
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
000078  9f497000  addli r19, zero, 60
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
0000dc  9f8e8eeb  addli sp, sp, -2624
0000e0  ab010000  lui r3, 0
0000e4  80300002  core_id r1
0000e8  1f8f0e14  addli r30, sp, 2560
0000ec  abf40000  lui r9, 15
0000f0  80560002  load_param_i r13, 0
0000f4  1bb22000  slli r4, r1, 2
0000f8  9f810100  addli r3, r3, 0
0000fc  63436f00  loadli.w r6,  52(r30)
000100  63016f00  loadli.w r2,  48(r30)
000104  e3027f00  loadli.w r5,  56(r30)
000108  8b133210  add.s r7, r4, r3
00010c  0b112320  mul.s r2, r6, r2
000110  1f842320  addli r8, r7, 4112
000114  0b115120  mul.s r2, r2, r5
000118  670b8fee  storeli.w r8, -2128(r30)
00011c  73600400  stores.w zero, 0(r8)
000120  1b94f4ff  ori r8, r9, 4095
000124  00a00300  mfence { lm, sm, gm }
000128  80210404  csr_set csr3, r8
00012c  00d00100  sync_group
000130  674b7fee  storeli.w r7, -2124(r30)
000134  73e00300  stores.w zero, 0(r7)
000138  00a00300  mfence { lm, sm, gm }
00013c  e74f8ff6  storeli.w r8, -1028(r30)
000140  80210404  csr_set csr3, r8
000144  00d00100  sync_group
000148  e74a2fee  storeli.w r2, -2132(r30)
00014c  cb7ad110  ble.s r2, r13, 8892
000150  1f012000  addli r2, zero, 16
000154  9f270000  addli r15, zero, 2
000158  eb548f00  load.d r[10:11], 8(r30)
00015c  eb530f01  load.d r[8:9], 16(r30)
000160  eb528f01  load.d r[6:7], 24(r30)
000164  eea25262  vxor.u.mz vr5{mr1}, vr5, vr5
000168  6e300062  vxor.s.mz vr0{mr1}, vr0, vr0
00016c  0b912030  div.s r2, r1, r2
000170  e70a2fee  storeli.w r2, -2136(r30)
000174  1b314100  slli r2, r2, 4
000178  0b912018  sub.s r2, r1, r2
00017c  9b80f000  andi r1, r1, 15
000180  e7031fee  storeli.w r1, -2248(r30)
000184  ab10833a  lui r1, 239665
000188  1b376100  slli r14, r2, 6
00018c  00d10002  load_param_i r2, 1
000190  9b90f026  ori r1, r1, 623
000194  670a2fee  storeli.w r2, -2144(r30)
000198  1b111700  ori r2, r14, 1
00019c  b3150728  sext_int2long r[12:13], r14
0001a0  674aefee  storeli.w r14, -2140(r30)
0001a4  e74b1fec  storeli.w r1, -2372(r30)
0001a8  9b103701  ori r1, r14, 19
0001ac  e7492fee  storeli.w r2, -2148(r30)
0001b0  1b112700  ori r2, r14, 2
0001b4  97b5f502  sll.d r[12:13], r[12:13], r15
0001b8  e70b1fec  storeli.w r1, -2376(r30)
0001bc  9b104701  ori r1, r14, 20
0001c0  e7092fee  storeli.w r2, -2152(r30)
0001c4  1b113700  ori r2, r14, 3
0001c8  8ba4b410  add.ul r[10:11], r[10:11], r[12:13]
0001cc  8ba3b310  add.ul r[8:9], r[8:9], r[12:13]
0001d0  8ba2b210  add.ul r[6:7], r[6:7], r[12:13]
0001d4  674b1fec  storeli.w r1, -2380(r30)
0001d8  9b105701  ori r1, r14, 21
0001dc  67492fee  storeli.w r2, -2156(r30)
0001e0  1b114700  ori r2, r14, 4
0001e4  670b1fec  storeli.w r1, -2384(r30)
0001e8  9b106701  ori r1, r14, 22
0001ec  67092fee  storeli.w r2, -2160(r30)
0001f0  1b115700  ori r2, r14, 5
0001f4  e74a1fec  storeli.w r1, -2388(r30)
0001f8  9b107701  ori r1, r14, 23
0001fc  e7482fee  storeli.w r2, -2164(r30)
000200  1b116700  ori r2, r14, 6
000204  e70a1fec  storeli.w r1, -2392(r30)
000208  9b108701  ori r1, r14, 24
00020c  e7082fee  storeli.w r2, -2168(r30)
000210  1b117700  ori r2, r14, 7
000214  674a1fec  storeli.w r1, -2396(r30)
000218  9b109701  ori r1, r14, 25
00021c  67482fee  storeli.w r2, -2172(r30)
000220  1b118700  ori r2, r14, 8
000224  670a1fec  storeli.w r1, -2400(r30)
000228  9b10a701  ori r1, r14, 26
00022c  67082fee  storeli.w r2, -2176(r30)
000230  1b119700  ori r2, r14, 9
000234  e7491fec  storeli.w r1, -2404(r30)
000238  9b10b701  ori r1, r14, 27
00023c  e7472fee  storeli.w r2, -2180(r30)
000240  1b11a700  ori r2, r14, 10
000244  e7091fec  storeli.w r1, -2408(r30)
000248  9b10c701  ori r1, r14, 28
00024c  e7072fee  storeli.w r2, -2184(r30)
000250  1b11b700  ori r2, r14, 11
000254  67491fec  storeli.w r1, -2412(r30)
000258  9b10d701  ori r1, r14, 29
00025c  67472fee  storeli.w r2, -2188(r30)
000260  1b11c700  ori r2, r14, 12
000264  67091fec  storeli.w r1, -2416(r30)
000268  9b10e701  ori r1, r14, 30
00026c  67072fee  storeli.w r2, -2192(r30)
000270  1b11d700  ori r2, r14, 13
000274  e7481fec  storeli.w r1, -2420(r30)
000278  9b10f701  ori r1, r14, 31
00027c  e7462fee  storeli.w r2, -2196(r30)
000280  1b11e700  ori r2, r14, 14
000284  e7081fec  storeli.w r1, -2424(r30)
000288  9b100702  ori r1, r14, 32
00028c  e7062fee  storeli.w r2, -2200(r30)
000290  1b11f700  ori r2, r14, 15
000294  67481fec  storeli.w r1, -2428(r30)
000298  9b101702  ori r1, r14, 33
00029c  67462fee  storeli.w r2, -2204(r30)
0002a0  1f01bfee  addli r2, r30, -2216
0002a4  67081fec  storeli.w r1, -2432(r30)
0002a8  9b102702  ori r1, r14, 34
0002ac  73309100  store.d r[10:11], 0(r2)
0002b0  1f01afee  addli r2, r30, -2224
0002b4  1f050ff8  addli r10, r30, -1024
0002b8  e7471fec  storeli.w r1, -2436(r30)
0002bc  9b103702  ori r1, r14, 35
0002c0  73307100  store.d r[8:9], 0(r2)
0002c4  1f019fee  addli r2, r30, -2232
0002c8  e7071fec  storeli.w r1, -2440(r30)
0002cc  9b104702  ori r1, r14, 36
0002d0  73305100  store.d r[6:7], 0(r2)
0002d4  2bf1ffff  lui r2, 1048575
0002d8  9b120701  ori r5, r14, 16
0002dc  67471fec  storeli.w r1, -2444(r30)
0002e0  9b105702  ori r1, r14, 37
0002e4  1b1101fc  ori r2, r2, 4032
0002e8  67445fee  storeli.w r5, -2236(r30)
0002ec  9b121701  ori r5, r14, 17
0002f0  67071fec  storeli.w r1, -2448(r30)
0002f4  9b106702  ori r1, r14, 38
0002f8  17012200  and r2, r4, r2
0002fc  1b122701  ori r4, r14, 18
000300  67045fee  storeli.w r5, -2240(r30)
000304  e7461fec  storeli.w r1, -2452(r30)
000308  9b107702  ori r1, r14, 39
00030c  0b113110  add.s r2, r2, r3
000310  9f018fed  addli r3, r30, -2368
000314  e7434fee  storeli.w r4, -2244(r30)
000318  e7061fec  storeli.w r1, -2456(r30)
00031c  9b108702  ori r1, r14, 40
000320  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
000324  e74b2fee  storeli.w r2, -2116(r30)
000328  67461fec  storeli.w r1, -2460(r30)
00032c  9b109702  ori r1, r14, 41
000330  67061fec  storeli.w r1, -2464(r30)
000334  9b10a702  ori r1, r14, 42
000338  e7451fec  storeli.w r1, -2468(r30)
00033c  9b10b702  ori r1, r14, 43
000340  e7051fec  storeli.w r1, -2472(r30)
000344  9b10c702  ori r1, r14, 44
000348  67451fec  storeli.w r1, -2476(r30)
00034c  9b10d702  ori r1, r14, 45
000350  67051fec  storeli.w r1, -2480(r30)
000354  9b10e702  ori r1, r14, 46
000358  e7441fec  storeli.w r1, -2484(r30)
00035c  9b10f702  ori r1, r14, 47
000360  e7041fec  storeli.w r1, -2488(r30)
000364  9b100703  ori r1, r14, 48
000368  67441fec  storeli.w r1, -2492(r30)
00036c  9b101703  ori r1, r14, 49
000370  67041fec  storeli.w r1, -2496(r30)
000374  9b102703  ori r1, r14, 50
000378  e7431fec  storeli.w r1, -2500(r30)
00037c  9b103703  ori r1, r14, 51
000380  e7031fec  storeli.w r1, -2504(r30)
000384  9b104703  ori r1, r14, 52
000388  67431fec  storeli.w r1, -2508(r30)
00038c  9b105703  ori r1, r14, 53
000390  67031fec  storeli.w r1, -2512(r30)
000394  9b106703  ori r1, r14, 54
000398  e7421fec  storeli.w r1, -2516(r30)
00039c  9b107703  ori r1, r14, 55
0003a0  e7021fec  storeli.w r1, -2520(r30)
0003a4  9b108703  ori r1, r14, 56
0003a8  67421fec  storeli.w r1, -2524(r30)
0003ac  9b109703  ori r1, r14, 57
0003b0  67021fec  storeli.w r1, -2528(r30)
0003b4  9b10a703  ori r1, r14, 58
0003b8  e7411fec  storeli.w r1, -2532(r30)
0003bc  9b10b703  ori r1, r14, 59
0003c0  e7011fec  storeli.w r1, -2536(r30)
0003c4  9b10c703  ori r1, r14, 60
0003c8  67411fec  storeli.w r1, -2540(r30)
0003cc  9b10d703  ori r1, r14, 61
0003d0  67011fec  storeli.w r1, -2544(r30)
0003d4  9b10e703  ori r1, r14, 62
0003d8  e7401fec  storeli.w r1, -2548(r30)
0003dc  9b10f703  ori r1, r14, 63
0003e0  e7001fec  storeli.w r1, -2552(r30)
0003e4  9f002120  addli r1, r2, 4112
0003e8  e70b1fee  storeli.w r1, -2120(r30)
0003ec  9f000ff7  addli r1, r30, -1152
0003f0  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
0003f4  5b9e0100  j 3312
0003f8  b3980828  sext_int2long r[18:19], r17
0003fc  339d0028  sext_int2long r[27:28], r1
000400  331c0128  sext_int2long r[25:26], r2
000404  b3900128  sext_int2long r[2:3], r3
000408  b3110228  sext_int2long r[4:5], r4
00040c  12358002  vadd.s.mz vr10{mr1}, zero, vr8
000410  92358002  vadd.s.mz vr11{mr1}, zero, vr8
000414  12308002  vadd.s.mz vr0{mr1}, zero, vr8
000418  92308002  vadd.s.mz vr1{mr1}, zero, vr8
00041c  9f040002  addli r9, zero, 256
000420  b3960228  sext_int2long r[14:15], r5
000424  1f2e0000  addli r28, zero, 2
000428  ab0900f0  lui r19, 983040
00042c  1f4a0000  addli r20, zero, 4
000430  b3950328  sext_int2long r[12:13], r7
000434  b3130428  sext_int2long r[8:9], r8
000438  b3120328  sext_int2long r[6:7], r6
00043c  b3970728  sext_int2long r[16:17], r15
000440  73341f93  store.d r[18:19], -1752(r30)
000444  73383f92  store.d r[4:5], -1744(r30)
000448  1f120000  addli r4, zero, 1
00044c  b3980a28  sext_int2long r[18:19], r21
000450  97b6c603  sll.d r[14:15], r[14:15], r28
000454  9f0a0ff8  addli r21, r30, -1024
000458  97193a01  or r19, r20, r19
00045c  97b0c003  sll.d r[2:3], r[2:3], r28
000460  00a00300  mfence { lm, sm, gm }
000464  80210504  csr_set csr3, r10
000468  00d00100  sync_group
00046c  e3017fef  loadli.w r3,  -2120(r30)
000470  6b5b0f02  load.d r[23:24], 32(r30)
000474  6fc50100  loads.w r10, 0(r3)
000478  9f110000  addli r3, zero, 1
00047c  8b26db10  add.ul r[14:15], r[23:24], r[14:15]
000480  8b201b10  add.ul r[2:3], r[23:24], r[2:3]
000484  7e8101e0  vmmov mr2, r3
000488  e301dff4  loadli.w r3,  -1432(r30)
00048c  6aa5a134  vor.u.mh vr10{mr2}, r3, vr10
000490  9f210000  addli r3, zero, 2
000494  fe8101e0  vmmov mr3, r3
000498  e341dff4  loadli.w r3,  -1428(r30)
00049c  6aa5a136  vor.u.mh vr10{mr3}, r3, vr10
0004a0  9f410000  addli r3, zero, 4
0004a4  fe8101e0  vmmov mr3, r3
0004a8  e301eff4  loadli.w r3,  -1424(r30)
0004ac  6aa5a136  vor.u.mh vr10{mr3}, r3, vr10
0004b0  9f011000  addli r3, zero, 8
0004b4  7e8101e0  vmmov mr2, r3
0004b8  e341eff4  loadli.w r3,  -1420(r30)
0004bc  6aa5a134  vor.u.mh vr10{mr2}, r3, vr10
0004c0  9f012000  addli r3, zero, 16
0004c4  7e8101e0  vmmov mr2, r3
0004c8  e301fff4  loadli.w r3,  -1416(r30)
0004cc  6aa5a134  vor.u.mh vr10{mr2}, r3, vr10
0004d0  9f014000  addli r3, zero, 32
0004d4  7e8101e0  vmmov mr2, r3
0004d8  e341fff4  loadli.w r3,  -1412(r30)
0004dc  6aa5a134  vor.u.mh vr10{mr2}, r3, vr10
0004e0  9f018000  addli r3, zero, 64
0004e4  7e8101e0  vmmov mr2, r3
0004e8  e3010ff5  loadli.w r3,  -1408(r30)
0004ec  6aa5a134  vor.u.mh vr10{mr2}, r3, vr10
0004f0  9f010001  addli r3, zero, 128
0004f4  7e8101e0  vmmov mr2, r3
0004f8  e3410ff5  loadli.w r3,  -1404(r30)
0004fc  6aa5a134  vor.u.mh vr10{mr2}, r3, vr10
000500  9f010002  addli r3, zero, 256
000504  7e8101e0  vmmov mr2, r3
000508  e3011ff5  loadli.w r3,  -1400(r30)
00050c  6aa5a134  vor.u.mh vr10{mr2}, r3, vr10
000510  9f010004  addli r3, zero, 512
000514  7e8101e0  vmmov mr2, r3
000518  e3411ff5  loadli.w r3,  -1396(r30)
00051c  6aa5a134  vor.u.mh vr10{mr2}, r3, vr10
000520  9f010008  addli r3, zero, 1024
000524  7e8101e0  vmmov mr2, r3
000528  e3012ff5  loadli.w r3,  -1392(r30)
00052c  6aa5a134  vor.u.mh vr10{mr2}, r3, vr10
000530  9f010010  addli r3, zero, 2048
000534  7e8101e0  vmmov mr2, r3
000538  e3412ff5  loadli.w r3,  -1388(r30)
00053c  6aa5a134  vor.u.mh vr10{mr2}, r3, vr10
000540  9f010020  addli r3, zero, 4096
000544  7e0001c0  vmmov mr0, mr2
000548  7e8101e0  vmmov mr2, r3
00054c  e3013ff5  loadli.w r3,  -1384(r30)
000550  6aa5a134  vor.u.mh vr10{mr2}, r3, vr10
000554  9f010040  addli r3, zero, 8192
000558  7e8101e0  vmmov mr2, r3
00055c  e3413ff5  loadli.w r3,  -1380(r30)
000560  6aa5a134  vor.u.mh vr10{mr2}, r3, vr10
000564  ab410000  lui r3, 4
000568  7e8101e0  vmmov mr2, r3
00056c  e3014ff5  loadli.w r3,  -1376(r30)
000570  6aa5a134  vor.u.mh vr10{mr2}, r3, vr10
000574  ab810000  lui r3, 8
000578  7e8101e0  vmmov mr2, r3
00057c  e3414ff5  loadli.w r3,  -1372(r30)
000580  6aa5a134  vor.u.mh vr10{mr2}, r3, vr10
000584  e3015ff5  loadli.w r3,  -1368(r30)
000588  7e0102e0  vmmov mr2, r4
00058c  1f220000  addli r4, zero, 2
000590  eaa5b134  vor.u.mh vr11{mr2}, r3, vr11
000594  e3415ff5  loadli.w r3,  -1364(r30)
000598  7e0102e0  vmmov mr2, r4
00059c  1f021000  addli r4, zero, 8
0005a0  eaa5b134  vor.u.mh vr11{mr2}, r3, vr11
0005a4  e3016ff5  loadli.w r3,  -1360(r30)
0005a8  7e0102e0  vmmov mr2, r4
0005ac  1f022000  addli r4, zero, 16
0005b0  eaa5b136  vor.u.mh vr11{mr3}, r3, vr11
0005b4  e3416ff5  loadli.w r3,  -1356(r30)
0005b8  eaa5b134  vor.u.mh vr11{mr2}, r3, vr11
0005bc  e3017ff5  loadli.w r3,  -1352(r30)
0005c0  7e0102e0  vmmov mr2, r4
0005c4  1f024000  addli r4, zero, 32
0005c8  eaa5b134  vor.u.mh vr11{mr2}, r3, vr11
0005cc  e3417ff5  loadli.w r3,  -1348(r30)
0005d0  7e0102e0  vmmov mr2, r4
0005d4  1f028000  addli r4, zero, 64
0005d8  eaa5b134  vor.u.mh vr11{mr2}, r3, vr11
0005dc  e3018ff5  loadli.w r3,  -1344(r30)
0005e0  7e0102e0  vmmov mr2, r4
0005e4  1f020001  addli r4, zero, 128
0005e8  eaa5b134  vor.u.mh vr11{mr2}, r3, vr11
0005ec  e3418ff5  loadli.w r3,  -1340(r30)
0005f0  7e0102e0  vmmov mr2, r4
0005f4  1f020002  addli r4, zero, 256
0005f8  eaa5b134  vor.u.mh vr11{mr2}, r3, vr11
0005fc  e3019ff5  loadli.w r3,  -1336(r30)
000600  7e0102e0  vmmov mr2, r4
000604  1f020004  addli r4, zero, 512
000608  eaa5b134  vor.u.mh vr11{mr2}, r3, vr11
00060c  e3419ff5  loadli.w r3,  -1332(r30)
000610  7e0102e0  vmmov mr2, r4
000614  1f020008  addli r4, zero, 1024
000618  eaa5b134  vor.u.mh vr11{mr2}, r3, vr11
00061c  e301aff5  loadli.w r3,  -1328(r30)
000620  7e0102e0  vmmov mr2, r4
000624  1f020020  addli r4, zero, 4096
000628  eaa5b134  vor.u.mh vr11{mr2}, r3, vr11
00062c  e341aff5  loadli.w r3,  -1324(r30)
000630  eaa5b130  vor.u.mh vr11{mr0}, r3, vr11
000634  e301bff5  loadli.w r3,  -1320(r30)
000638  7e0002e0  vmmov mr0, r4
00063c  1f020040  addli r4, zero, 8192
000640  eaa5b130  vor.u.mh vr11{mr0}, r3, vr11
000644  e341bff5  loadli.w r3,  -1316(r30)
000648  7e0002e0  vmmov mr0, r4
00064c  2b420000  lui r4, 4
000650  7e0102e0  vmmov mr2, r4
000654  2b820000  lui r4, 8
000658  eaa5b130  vor.u.mh vr11{mr0}, r3, vr11
00065c  e301cff5  loadli.w r3,  -1312(r30)
000660  7e0002e0  vmmov mr0, r4
000664  1f120000  addli r4, zero, 1
000668  eaa5b134  vor.u.mh vr11{mr2}, r3, vr11
00066c  e341cff5  loadli.w r3,  -1308(r30)
000670  eaa5b130  vor.u.mh vr11{mr0}, r3, vr11
000674  e301dff5  loadli.w r3,  -1304(r30)
000678  7e0002e0  vmmov mr0, r4
00067c  1f220000  addli r4, zero, 2
000680  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
000684  e341dff5  loadli.w r3,  -1300(r30)
000688  7e0002e0  vmmov mr0, r4
00068c  1f021000  addli r4, zero, 8
000690  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
000694  e301eff5  loadli.w r3,  -1296(r30)
000698  7e0002e0  vmmov mr0, r4
00069c  1f022000  addli r4, zero, 16
0006a0  6aa00136  vor.u.mh vr0{mr3}, r3, vr0
0006a4  e341eff5  loadli.w r3,  -1292(r30)
0006a8  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
0006ac  e301fff5  loadli.w r3,  -1288(r30)
0006b0  7e0002e0  vmmov mr0, r4
0006b4  1f024000  addli r4, zero, 32
0006b8  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
0006bc  e341fff5  loadli.w r3,  -1284(r30)
0006c0  7e0002e0  vmmov mr0, r4
0006c4  1f028000  addli r4, zero, 64
0006c8  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
0006cc  e3010ff6  loadli.w r3,  -1280(r30)
0006d0  7e0002e0  vmmov mr0, r4
0006d4  1f020001  addli r4, zero, 128
0006d8  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
0006dc  e3410ff6  loadli.w r3,  -1276(r30)
0006e0  7e0002e0  vmmov mr0, r4
0006e4  1f020002  addli r4, zero, 256
0006e8  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
0006ec  e3011ff6  loadli.w r3,  -1272(r30)
0006f0  7e0002e0  vmmov mr0, r4
0006f4  1f020004  addli r4, zero, 512
0006f8  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
0006fc  e3411ff6  loadli.w r3,  -1268(r30)
000700  7e0002e0  vmmov mr0, r4
000704  1f020008  addli r4, zero, 1024
000708  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
00070c  e3012ff6  loadli.w r3,  -1264(r30)
000710  7e0002e0  vmmov mr0, r4
000714  1f020010  addli r4, zero, 2048
000718  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
00071c  e3412ff6  loadli.w r3,  -1260(r30)
000720  7e0002e0  vmmov mr0, r4
000724  1f020020  addli r4, zero, 4096
000728  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
00072c  e3013ff6  loadli.w r3,  -1256(r30)
000730  7e0002e0  vmmov mr0, r4
000734  1f020040  addli r4, zero, 8192
000738  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
00073c  e3413ff6  loadli.w r3,  -1252(r30)
000740  7e0002e0  vmmov mr0, r4
000744  2b820000  lui r4, 8
000748  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
00074c  e3014ff6  loadli.w r3,  -1248(r30)
000750  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
000754  7e0001c0  vmmov mr0, mr2
000758  e3414ff6  loadli.w r3,  -1244(r30)
00075c  7e0102e0  vmmov mr2, r4
000760  1f120000  addli r4, zero, 1
000764  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
000768  e3015ff6  loadli.w r3,  -1240(r30)
00076c  7e0102e0  vmmov mr2, r4
000770  1f220000  addli r4, zero, 2
000774  eaa01134  vor.u.mh vr1{mr2}, r3, vr1
000778  e3415ff6  loadli.w r3,  -1236(r30)
00077c  7e0102e0  vmmov mr2, r4
000780  1f021000  addli r4, zero, 8
000784  eaa01134  vor.u.mh vr1{mr2}, r3, vr1
000788  e3016ff6  loadli.w r3,  -1232(r30)
00078c  7e0102e0  vmmov mr2, r4
000790  1f022000  addli r4, zero, 16
000794  eaa01136  vor.u.mh vr1{mr3}, r3, vr1
000798  e3416ff6  loadli.w r3,  -1228(r30)
00079c  eaa01134  vor.u.mh vr1{mr2}, r3, vr1
0007a0  e3017ff6  loadli.w r3,  -1224(r30)
0007a4  7e0102e0  vmmov mr2, r4
0007a8  1f024000  addli r4, zero, 32
0007ac  eaa01134  vor.u.mh vr1{mr2}, r3, vr1
0007b0  e3417ff6  loadli.w r3,  -1220(r30)
0007b4  7e0102e0  vmmov mr2, r4
0007b8  1f028000  addli r4, zero, 64
0007bc  eaa01134  vor.u.mh vr1{mr2}, r3, vr1
0007c0  e3018ff6  loadli.w r3,  -1216(r30)
0007c4  7e0102e0  vmmov mr2, r4
0007c8  1f020001  addli r4, zero, 128
0007cc  eaa01134  vor.u.mh vr1{mr2}, r3, vr1
0007d0  e3418ff6  loadli.w r3,  -1212(r30)
0007d4  7e0102e0  vmmov mr2, r4
0007d8  eaa01134  vor.u.mh vr1{mr2}, r3, vr1
0007dc  63029ff6  loadli.w r4,  -1208(r30)
0007e0  ab01803a  lui r3, 239616
0007e4  7e8104e0  vmmov mr2, r9
0007e8  9f040004  addli r9, zero, 512
0007ec  8b613520  mul.f.rn r3, r10, r3
0007f0  2b0500f0  lui r10, 983040
0007f4  ea201234  vor.u.mh vr1{mr2}, r4, vr1
0007f8  63429ff6  loadli.w r4,  -1204(r30)
0007fc  7e8104e0  vmmov mr2, r9
000800  9f040008  addli r9, zero, 1024
000804  1715aa00  or r10, r20, r10
000808  1fca0a00  addli r20, r21, 4
00080c  9f8a1a00  addli r21, r21, 8
000810  ea201234  vor.u.mh vr1{mr2}, r4, vr1
000814  63427fed  loadli.w r4,  -2372(r30)
000818  7e8104e0  vmmov mr2, r9
00081c  9f040010  addli r9, zero, 2048
000820  8be14110  add.f.rn r3, r3, r4
000824  6302aff6  loadli.w r4,  -1200(r30)
000828  ea201234  vor.u.mh vr1{mr2}, r4, vr1
00082c  6342aff6  loadli.w r4,  -1196(r30)
000830  7e8104e0  vmmov mr2, r9
000834  9f040020  addli r9, zero, 4096
000838  8f810108  sqrt.f.rn r3, r3
00083c  ea201234  vor.u.mh vr1{mr2}, r4, vr1
000840  6302bff6  loadli.w r4,  -1192(r30)
000844  7e8104e0  vmmov mr2, r9
000848  9f040040  addli r9, zero, 8192
00084c  ea201234  vor.u.mh vr1{mr2}, r4, vr1
000850  2b02803f  lui r4, 260096
000854  7e8104e0  vmmov mr2, r9
000858  9f040ff8  addli r9, r30, -1024
00085c  8f013218  div.f.rn r3, r4, r3
000860  6342bff6  loadli.w r4,  -1188(r30)
000864  8a949102  vmul.f.mz.rn vr9{mr1}, r3, vr9
000868  ea201234  vor.u.mh vr1{mr2}, r4, vr1
00086c  6302cff6  loadli.w r4,  -1184(r30)
000870  ea201230  vor.u.mh vr1{mr0}, r4, vr1
000874  1f028ff1  addli r4, r30, -1856
000878  42130202  vload_mask16.mz vr6{mr1}, 0(r4)
00087c  1f020ff1  addli r4, r30, -1920
000880  0a936102  vmul.f.mz.rn vr6{mr1}, r3, vr6
000884  c2130202  vload_mask16.mz vr7{mr1}, 0(r4)
000888  1f028ff0  addli r4, r30, -1984
00088c  8a937102  vmul.f.mz.rn vr7{mr1}, r3, vr7
000890  42140202  vload_mask16.mz vr8{mr1}, 0(r4)
000894  2b820000  lui r4, 8
000898  0a948102  vmul.f.mz.rn vr8{mr1}, r3, vr8
00089c  e301dff6  loadli.w r3,  -1176(r30)
0008a0  26120402  vmac.f.mz.rn vr4{mr1}, vr8, vr0
0008a4  7e0002e0  vmmov mr0, r4
0008a8  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0008ac  9f010ff0  addli r3, r30, -2048
0008b0  a6921402  vmac.f.mz.rn vr5{mr1}, vr9, vr1
0008b4  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
0008b8  9f018fef  addli r3, r30, -2112
0008bc  2611a302  vmac.f.mz.rn vr2{mr1}, vr6, vr10
0008c0  46102f82  vstore_mask16.mz vr2{mr1}, 1024(r30)
0008c4  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
0008c8  9731cd03  sll.d r[4:5], r[27:28], r28
0008cc  a691b302  vmac.f.mz.rn vr3{mr1}, vr7, vr11
0008d0  46143f82  vstore_mask16.mz vr3{mr1}, 1088(r30)
0008d4  46184f82  vstore_mask16.mz vr4{mr1}, 1152(r30)
0008d8  461c5f82  vstore_mask16.mz vr5{mr1}, 1216(r30)
0008dc  8b213b10  add.ul r[4:5], r[23:24], r[4:5]
0008e0  00a00000  mfence { lm }
0008e4  ffb95601  s_lm2gm r19, r21, 0(r[14:15])
0008e8  ab0600f0  lui r13, 983040
0008ec  1f470000  addli r14, zero, 4
0008f0  9f090ff8  addli r19, r30, -1024
0008f4  7fb54101  s_lm2gm r10, r20, 0(r[4:5])
0008f8  9731cc03  sll.d r[4:5], r[25:26], r28
0008fc  2b0500f0  lui r10, 983040
000900  1f4c0000  addli r24, zero, 4
000904  9716d700  or r13, r14, r13
000908  1715a700  or r10, r14, r10
00090c  1fc71900  addli r14, r19, 12
000910  8b213b10  add.ul r[4:5], r[23:24], r[4:5]
000914  9f892900  addli r19, r19, 16
000918  7fb5e100  s_lm2gm r10, r14, 0(r[4:5])
00091c  97b1c303  sll.d r[4:5], r[8:9], r28
000920  ffb63001  s_lm2gm r13, r19, 0(r[2:3])
000924  97b0c503  sll.d r[2:3], r[12:13], r28
000928  ab0300f0  lui r7, 983040
00092c  1f450000  addli r10, zero, 4
000930  2b0400f0  lui r8, 983040
000934  9f050ff8  addli r11, r30, -1024
000938  e3467ff3  loadli.w r13,  -1604(r30)
00093c  97137500  or r7, r10, r7
000940  17148500  or r8, r10, r8
000944  1fc52500  addli r10, r11, 20
000948  8b201b10  add.ul r[2:3], r[23:24], r[2:3]
00094c  8b213b10  add.ul r[4:5], r[23:24], r[4:5]
000950  9f853500  addli r11, r11, 24
000954  b3960628  sext_int2long r[14:15], r13
000958  ffb3a000  s_lm2gm r7, r10, 0(r[2:3])
00095c  97b0c203  sll.d r[2:3], r[6:7], r28
000960  7fb4b100  s_lm2gm r8, r11, 0(r[4:5])
000964  ab0200f0  lui r5, 983040
000968  9f430000  addli r7, zero, 4
00096c  2b0300f0  lui r6, 983040
000970  1f040ff8  addli r8, r30, -1024
000974  97b1c703  sll.d r[4:5], r[16:17], r28
000978  e3478ff3  loadli.w r15,  -1596(r30)
00097c  97925300  or r5, r7, r5
000980  17936300  or r6, r7, r6
000984  9f433400  addli r7, r8, 28
000988  8b201b10  add.ul r[2:3], r[23:24], r[2:3]
00098c  8b213b10  add.ul r[4:5], r[23:24], r[4:5]
000990  1f044400  addli r8, r8, 32
000994  b3970728  sext_int2long r[16:17], r15
000998  ffb27000  s_lm2gm r5, r7, 0(r[2:3])
00099c  eb508f92  load.d r[2:3], -1752(r30)
0009a0  7fb38100  s_lm2gm r6, r8, 0(r[4:5])
0009a4  ab0200f0  lui r5, 983040
0009a8  9f430000  addli r7, zero, 4
0009ac  2b0300f0  lui r6, 983040
0009b0  97b1c803  sll.d r[4:5], r[18:19], r28
0009b4  1f845400  addli r8, r9, 40
0009b8  97925300  or r5, r7, r5
0009bc  17936300  or r6, r7, r6
0009c0  9fc34400  addli r7, r9, 36
0009c4  8b213b10  add.ul r[4:5], r[23:24], r[4:5]
0009c8  97b0c003  sll.d r[2:3], r[2:3], r28
0009cc  7fb38100  s_lm2gm r6, r8, 0(r[4:5])
0009d0  2b0300f0  lui r6, 983040
0009d4  eb510f93  load.d r[4:5], -1744(r30)
0009d8  1f846400  addli r8, r9, 48
0009dc  8b201b10  add.ul r[2:3], r[23:24], r[2:3]
0009e0  ffb27000  s_lm2gm r5, r7, 0(r[2:3])
0009e4  e3007ff2  loadli.w r1,  -1736(r30)
0009e8  9f430000  addli r7, zero, 4
0009ec  97b1c103  sll.d r[4:5], r[4:5], r28
0009f0  ab0200f0  lui r5, 983040
0009f4  17936300  or r6, r7, r6
0009f8  97925300  or r5, r7, r5
0009fc  8b213b10  add.ul r[4:5], r[23:24], r[4:5]
000a00  9fc35400  addli r7, r9, 44
000a04  b3900028  sext_int2long r[2:3], r1
000a08  ffb27100  s_lm2gm r5, r7, 0(r[4:5])
000a0c  e3417ff2  loadli.w r3,  -1732(r30)
000a10  ab0200f0  lui r5, 983040
000a14  9f430000  addli r7, zero, 4
000a18  97b0c003  sll.d r[2:3], r[2:3], r28
000a1c  97925300  or r5, r7, r5
000a20  8b201b10  add.ul r[2:3], r[23:24], r[2:3]
000a24  b3910128  sext_int2long r[4:5], r3
000a28  7fb38000  s_lm2gm r6, r8, 0(r[2:3])
000a2c  e3008ff2  loadli.w r1,  -1728(r30)
000a30  2b0300f0  lui r6, 983040
000a34  97b1c103  sll.d r[4:5], r[4:5], r28
000a38  1f847400  addli r8, r9, 56
000a3c  17936300  or r6, r7, r6
000a40  9fc36400  addli r7, r9, 52
000a44  8b213b10  add.ul r[4:5], r[23:24], r[4:5]
000a48  b3900028  sext_int2long r[2:3], r1
000a4c  7fb38100  s_lm2gm r6, r8, 0(r[4:5])
000a50  e3418ff2  loadli.w r3,  -1724(r30)
000a54  2b0300f0  lui r6, 983040
000a58  1f848400  addli r8, r9, 64
000a5c  97b0c003  sll.d r[2:3], r[2:3], r28
000a60  8b201b10  add.ul r[2:3], r[23:24], r[2:3]
000a64  b3910128  sext_int2long r[4:5], r3
000a68  ffb27000  s_lm2gm r5, r7, 0(r[2:3])
000a6c  e3009ff2  loadli.w r1,  -1720(r30)
000a70  9f430000  addli r7, zero, 4
000a74  ab0200f0  lui r5, 983040
000a78  97b1c103  sll.d r[4:5], r[4:5], r28
000a7c  97925300  or r5, r7, r5
000a80  17936300  or r6, r7, r6
000a84  9fc37400  addli r7, r9, 60
000a88  8b213b10  add.ul r[4:5], r[23:24], r[4:5]
000a8c  b3900028  sext_int2long r[2:3], r1
000a90  7fb38100  s_lm2gm r6, r8, 0(r[4:5])
000a94  e3419ff2  loadli.w r3,  -1716(r30)
000a98  2b0300f0  lui r6, 983040
000a9c  1f849400  addli r8, r9, 72
000aa0  97b0c003  sll.d r[2:3], r[2:3], r28
000aa4  8b201b10  add.ul r[2:3], r[23:24], r[2:3]
000aa8  b3910128  sext_int2long r[4:5], r3
000aac  ffb27000  s_lm2gm r5, r7, 0(r[2:3])
000ab0  e300aff2  loadli.w r1,  -1712(r30)
000ab4  9f430000  addli r7, zero, 4
000ab8  ab0200f0  lui r5, 983040
000abc  97b1c103  sll.d r[4:5], r[4:5], r28
000ac0  97925300  or r5, r7, r5
000ac4  17936300  or r6, r7, r6
000ac8  9fc38400  addli r7, r9, 68
000acc  8b213b10  add.ul r[4:5], r[23:24], r[4:5]
000ad0  b3900028  sext_int2long r[2:3], r1
000ad4  7fb38100  s_lm2gm r6, r8, 0(r[4:5])
000ad8  e341aff2  loadli.w r3,  -1708(r30)
000adc  2b0300f0  lui r6, 983040
000ae0  1f84a400  addli r8, r9, 80
000ae4  97b0c003  sll.d r[2:3], r[2:3], r28
000ae8  8b201b10  add.ul r[2:3], r[23:24], r[2:3]
000aec  b3910128  sext_int2long r[4:5], r3
000af0  ffb27000  s_lm2gm r5, r7, 0(r[2:3])
000af4  e300bff2  loadli.w r1,  -1704(r30)
000af8  9f430000  addli r7, zero, 4
000afc  ab0200f0  lui r5, 983040
000b00  97b1c103  sll.d r[4:5], r[4:5], r28
000b04  97925300  or r5, r7, r5
000b08  17936300  or r6, r7, r6
000b0c  9fc39400  addli r7, r9, 76
000b10  8b213b10  add.ul r[4:5], r[23:24], r[4:5]
000b14  b3900028  sext_int2long r[2:3], r1
000b18  7fb38100  s_lm2gm r6, r8, 0(r[4:5])
000b1c  e341bff2  loadli.w r3,  -1700(r30)
000b20  2b0300f0  lui r6, 983040
000b24  1f84b400  addli r8, r9, 88
000b28  97b0c003  sll.d r[2:3], r[2:3], r28
000b2c  8b201b10  add.ul r[2:3], r[23:24], r[2:3]
000b30  b3910128  sext_int2long r[4:5], r3
000b34  ffb27000  s_lm2gm r5, r7, 0(r[2:3])
000b38  e300cff2  loadli.w r1,  -1696(r30)
000b3c  9f430000  addli r7, zero, 4
000b40  ab0200f0  lui r5, 983040
000b44  97b1c103  sll.d r[4:5], r[4:5], r28
000b48  97925300  or r5, r7, r5
000b4c  17936300  or r6, r7, r6
000b50  9fc3a400  addli r7, r9, 84
000b54  8b213b10  add.ul r[4:5], r[23:24], r[4:5]
000b58  b3900028  sext_int2long r[2:3], r1
000b5c  7fb38100  s_lm2gm r6, r8, 0(r[4:5])
000b60  ab0100f0  lui r3, 983040
000b64  1fc2b400  addli r4, r9, 92
000b68  63445ff3  loadli.w r8,  -1620(r30)
000b6c  97b0c003  sll.d r[2:3], r[2:3], r28
000b70  97113c00  or r3, r24, r3
000b74  8b201b10  add.ul r[2:3], r[23:24], r[2:3]
000b78  33150428  sext_int2long r[11:12], r8
000b7c  2b0400f0  lui r8, 983040
000b80  ffb27000  s_lm2gm r5, r7, 0(r[2:3])
000b84  e340cff2  loadli.w r1,  -1692(r30)
000b88  e302dff2  loadli.w r5,  -1688(r30)
000b8c  9f834401  addli r7, r9, 160
000b90  17148c00  or r8, r24, r8
000b94  b3900028  sext_int2long r[2:3], r1
000b98  b3920228  sext_int2long r[6:7], r5
000b9c  97b0c003  sll.d r[2:3], r[2:3], r28
000ba0  8b201b10  add.ul r[2:3], r[23:24], r[2:3]
000ba4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ba8  97b0c203  sll.d r[2:3], r[6:7], r28
000bac  e342dff2  loadli.w r5,  -1684(r30)
000bb0  ab0100f0  lui r3, 983040
000bb4  1f82c400  addli r4, r9, 96
000bb8  8b201b10  add.ul r[2:3], r[23:24], r[2:3]
000bbc  97113c00  or r3, r24, r3
000bc0  b3920228  sext_int2long r[6:7], r5
000bc4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000bc8  ab0100f0  lui r3, 983040
000bcc  1fc2c400  addli r4, r9, 100
000bd0  97b0c203  sll.d r[2:3], r[6:7], r28
000bd4  e302eff2  loadli.w r5,  -1680(r30)
000bd8  97113c00  or r3, r24, r3
000bdc  8b201b10  add.ul r[2:3], r[23:24], r[2:3]
000be0  b3920228  sext_int2long r[6:7], r5
000be4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000be8  ab0100f0  lui r3, 983040
000bec  1f82d400  addli r4, r9, 104
000bf0  97b0c203  sll.d r[2:3], r[6:7], r28
000bf4  e342eff2  loadli.w r5,  -1676(r30)
000bf8  97113c00  or r3, r24, r3
000bfc  8b201b10  add.ul r[2:3], r[23:24], r[2:3]
000c00  b3920228  sext_int2long r[6:7], r5
000c04  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c08  ab0100f0  lui r3, 983040
000c0c  1fc2d400  addli r4, r9, 108
000c10  97b0c203  sll.d r[2:3], r[6:7], r28
000c14  e302fff2  loadli.w r5,  -1672(r30)
000c18  97113c00  or r3, r24, r3
000c1c  8b201b10  add.ul r[2:3], r[23:24], r[2:3]
000c20  b3920228  sext_int2long r[6:7], r5
000c24  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c28  ab0100f0  lui r3, 983040
000c2c  1f82e400  addli r4, r9, 112
000c30  97b0c203  sll.d r[2:3], r[6:7], r28
000c34  e342fff2  loadli.w r5,  -1668(r30)
000c38  97113c00  or r3, r24, r3
000c3c  8b201b10  add.ul r[2:3], r[23:24], r[2:3]
000c40  b3920228  sext_int2long r[6:7], r5
000c44  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c48  ab0100f0  lui r3, 983040
000c4c  1fc2e400  addli r4, r9, 116
000c50  97b0c203  sll.d r[2:3], r[6:7], r28
000c54  e3020ff3  loadli.w r5,  -1664(r30)
000c58  97113c00  or r3, r24, r3
000c5c  8b201b10  add.ul r[2:3], r[23:24], r[2:3]
000c60  b3920228  sext_int2long r[6:7], r5
000c64  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c68  ab0100f0  lui r3, 983040
000c6c  1f82f400  addli r4, r9, 120
000c70  97b0c203  sll.d r[2:3], r[6:7], r28
000c74  e3420ff3  loadli.w r5,  -1660(r30)
000c78  97113c00  or r3, r24, r3
000c7c  8b201b10  add.ul r[2:3], r[23:24], r[2:3]
000c80  b3920228  sext_int2long r[6:7], r5
000c84  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c88  ab0100f0  lui r3, 983040
000c8c  1fc2f400  addli r4, r9, 124
000c90  97b0c203  sll.d r[2:3], r[6:7], r28
000c94  e3021ff3  loadli.w r5,  -1656(r30)
000c98  97113c00  or r3, r24, r3
000c9c  8b201b10  add.ul r[2:3], r[23:24], r[2:3]
000ca0  b3920228  sext_int2long r[6:7], r5
000ca4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ca8  ab0100f0  lui r3, 983040
000cac  1f820401  addli r4, r9, 128
000cb0  97b0c203  sll.d r[2:3], r[6:7], r28
000cb4  e3421ff3  loadli.w r5,  -1652(r30)
000cb8  97113c00  or r3, r24, r3
000cbc  8b201b10  add.ul r[2:3], r[23:24], r[2:3]
000cc0  b3920228  sext_int2long r[6:7], r5
000cc4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000cc8  ab0100f0  lui r3, 983040
000ccc  1fc20401  addli r4, r9, 132
000cd0  97b0c203  sll.d r[2:3], r[6:7], r28
000cd4  e3022ff3  loadli.w r5,  -1648(r30)
000cd8  97113c00  or r3, r24, r3
000cdc  8b201b10  add.ul r[2:3], r[23:24], r[2:3]
000ce0  b3920228  sext_int2long r[6:7], r5
000ce4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ce8  ab0100f0  lui r3, 983040
000cec  1f821401  addli r4, r9, 136
000cf0  97b0c203  sll.d r[2:3], r[6:7], r28
000cf4  e3422ff3  loadli.w r5,  -1644(r30)
000cf8  97113c00  or r3, r24, r3
000cfc  8b201b10  add.ul r[2:3], r[23:24], r[2:3]
000d00  b3920228  sext_int2long r[6:7], r5
000d04  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d08  ab0100f0  lui r3, 983040
000d0c  1fc21401  addli r4, r9, 140
000d10  97b0c203  sll.d r[2:3], r[6:7], r28
000d14  e3023ff3  loadli.w r5,  -1640(r30)
000d18  97113c00  or r3, r24, r3
000d1c  8b201b10  add.ul r[2:3], r[23:24], r[2:3]
000d20  b3920228  sext_int2long r[6:7], r5
000d24  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d28  ab0100f0  lui r3, 983040
000d2c  1f822401  addli r4, r9, 144
000d30  97b0c203  sll.d r[2:3], r[6:7], r28
000d34  e3423ff3  loadli.w r5,  -1636(r30)
000d38  97113c00  or r3, r24, r3
000d3c  8b201b10  add.ul r[2:3], r[23:24], r[2:3]
000d40  b3920228  sext_int2long r[6:7], r5
000d44  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d48  63024ff3  loadli.w r4,  -1632(r30)
000d4c  ab0100f0  lui r3, 983040
000d50  97b0c203  sll.d r[2:3], r[6:7], r28
000d54  1fc32401  addli r6, r9, 148
000d58  97113c00  or r3, r24, r3
000d5c  33120228  sext_int2long r[5:6], r4
000d60  8b201b10  add.ul r[2:3], r[23:24], r[2:3]
000d64  1732c203  sll.d r[5:6], r[5:6], r28
000d68  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
000d6c  ab0100f0  lui r3, 983040
000d70  1f833401  addli r6, r9, 152
000d74  8b204b10  add.ul r[2:3], r[23:24], r[5:6]
000d78  63424ff3  loadli.w r4,  -1628(r30)
000d7c  97113c00  or r3, r24, r3
000d80  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
000d84  ab0100f0  lui r3, 983040
000d88  33120228  sext_int2long r[5:6], r4
000d8c  97113c00  or r3, r24, r3
000d90  1732c203  sll.d r[5:6], r[5:6], r28
000d94  8b204b10  add.ul r[2:3], r[23:24], r[5:6]
000d98  e3025ff3  loadli.w r5,  -1624(r30)
000d9c  1fc23401  addli r4, r9, 156
000da0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000da4  6b510fb7  load.d r[3:4], -1168(r30)
000da8  9f808401  addli r1, r9, 192
000dac  b3920228  sext_int2long r[6:7], r5
000db0  17b2c203  sll.d r[5:6], r[6:7], r28
000db4  2b0300f0  lui r6, 983040
000db8  0b212b10  add.ul r[3:4], r[23:24], r[3:4]
000dbc  0b224b10  add.ul r[5:6], r[23:24], r[5:6]
000dc0  17136c00  or r6, r24, r6
000dc4  7f337200  s_lm2gm r6, r7, 0(r[5:6])
000dc8  63026ff3  loadli.w r4,  -1616(r30)
000dcc  1733c503  sll.d r[7:8], r[11:12], r28
000dd0  e3456ff3  loadli.w r11,  -1612(r30)
000dd4  1fc54401  addli r10, r9, 164
000dd8  0b236b10  add.ul r[7:8], r[23:24], r[7:8]
000ddc  33120228  sext_int2long r[5:6], r4
000de0  b3950528  sext_int2long r[12:13], r11
000de4  7f34a300  s_lm2gm r8, r10, 0(r[7:8])
000de8  2b0400f0  lui r8, 983040
000dec  63037ff3  loadli.w r6,  -1608(r30)
000df0  1732c203  sll.d r[5:6], r[5:6], r28
000df4  17b5c503  sll.d r[11:12], r[12:13], r28
000df8  1f865401  addli r12, r9, 168
000dfc  17148c00  or r8, r24, r8
000e00  0b224b10  add.ul r[5:6], r[23:24], r[5:6]
000e04  0b25ab10  add.ul r[11:12], r[23:24], r[11:12]
000e08  33130328  sext_int2long r[7:8], r6
000e0c  7f34c200  s_lm2gm r8, r12, 0(r[5:6])
000e10  2b0400f0  lui r8, 983040
000e14  17b6c603  sll.d r[13:14], r[14:15], r28
000e18  1fc75401  addli r14, r9, 172
000e1c  1733c303  sll.d r[7:8], r[7:8], r28
000e20  63028ff3  loadli.w r4,  -1600(r30)
000e24  17148c00  or r8, r24, r8
000e28  0b236b10  add.ul r[7:8], r[23:24], r[7:8]
000e2c  0b26cb10  add.ul r[13:14], r[23:24], r[13:14]
000e30  33120228  sext_int2long r[5:6], r4
000e34  7f34e500  s_lm2gm r8, r14, 0(r[11:12])
000e38  63049ff3  loadli.w r8,  -1592(r30)
000e3c  17b7c703  sll.d r[15:16], r[16:17], r28
000e40  1732c203  sll.d r[5:6], r[5:6], r28
000e44  0b27eb10  add.ul r[15:16], r[23:24], r[15:16]
000e48  33150428  sext_int2long r[11:12], r8
000e4c  2b0400f0  lui r8, 983040
000e50  0b224b10  add.ul r[5:6], r[23:24], r[5:6]
000e54  1735c503  sll.d r[11:12], r[11:12], r28
000e58  17148c00  or r8, r24, r8
000e5c  0b28ab10  add.ul r[17:18], r[23:24], r[11:12]
000e60  1f856401  addli r10, r9, 176
000e64  e3459ff3  loadli.w r11,  -1588(r30)
000e68  7f34a300  s_lm2gm r8, r10, 0(r[7:8])
000e6c  6303aff3  loadli.w r6,  -1584(r30)
000e70  6344aff3  loadli.w r8,  -1580(r30)
000e74  33990528  sext_int2long r[19:20], r11
000e78  33130328  sext_int2long r[7:8], r6
000e7c  1735c903  sll.d r[11:12], r[19:20], r28
000e80  1733c303  sll.d r[7:8], r[7:8], r28
000e84  0b2aab10  add.ul r[21:22], r[23:24], r[11:12]
000e88  33150428  sext_int2long r[11:12], r8
000e8c  2b0400f0  lui r8, 983040
000e90  0b296b10  add.ul r[19:20], r[23:24], r[7:8]
000e94  2b0300f0  lui r6, 983040
000e98  9fc36401  addli r7, r9, 180
000e9c  17148c00  or r8, r24, r8
000ea0  1735c503  sll.d r[11:12], r[11:12], r28
000ea4  17136c00  or r6, r24, r6
000ea8  0b2dab10  add.ul r[27:28], r[23:24], r[11:12]
000eac  7f337600  s_lm2gm r6, r7, 0(r[13:14])
000eb0  1f867401  addli r12, r9, 184
000eb4  6303bff3  loadli.w r6,  -1576(r30)
000eb8  7f34c200  s_lm2gm r8, r12, 0(r[5:6])
000ebc  6302cff3  loadli.w r4,  -1568(r30)
000ec0  6344cff3  loadli.w r8,  -1564(r30)
000ec4  33130328  sext_int2long r[7:8], r6
000ec8  33120228  sext_int2long r[5:6], r4
000ecc  33160428  sext_int2long r[13:14], r8
000ed0  2b0400f0  lui r8, 983040
000ed4  1733c303  sll.d r[7:8], r[7:8], r28
000ed8  1732c203  sll.d r[5:6], r[5:6], r28
000edc  17148c00  or r8, r24, r8
000ee0  0b236b10  add.ul r[7:8], r[23:24], r[7:8]
000ee4  0b224b10  add.ul r[5:6], r[23:24], r[5:6]
000ee8  73386fb6  store.d r[7:8], -1168(r30)
000eec  6343bff3  loadli.w r6,  -1572(r30)
000ef0  73304fb6  store.d r[5:6], -1184(r30)
000ef4  1732c603  sll.d r[5:6], r[13:14], r28
000ef8  1fc67401  addli r12, r9, 188
000efc  33150328  sext_int2long r[11:12], r6
000f00  7f34c700  s_lm2gm r8, r12, 0(r[15:16])
000f04  6304dff3  loadli.w r8,  -1560(r30)
000f08  1735c503  sll.d r[11:12], r[11:12], r28
000f0c  33160428  sext_int2long r[13:14], r8
000f10  2b0400f0  lui r8, 983040
000f14  0b23ab10  add.ul r[7:8], r[23:24], r[11:12]
000f18  0b254b10  add.ul r[11:12], r[23:24], r[5:6]
000f1c  6342dff3  loadli.w r4,  -1556(r30)
000f20  17148c00  or r8, r24, r8
000f24  1737c603  sll.d r[15:16], r[13:14], r28
000f28  33120228  sext_int2long r[5:6], r4
000f2c  7f349100  s_lm2gm r8, r9, 0(r[3:4])
000f30  2b0400f0  lui r8, 983040
000f34  6341eff3  loadli.w r2,  -1548(r30)
000f38  0b27eb10  add.ul r[15:16], r[23:24], r[15:16]
000f3c  1732c203  sll.d r[5:6], r[5:6], r28
000f40  17148c00  or r8, r24, r8
000f44  0b264b10  add.ul r[13:14], r[23:24], r[5:6]
000f48  6302eff3  loadli.w r4,  -1552(r30)
000f4c  33110128  sext_int2long r[3:4], r2
000f50  7f341800  s_lm2gm r8, r1, 0(r[17:18])
000f54  e300fff3  loadli.w r1,  -1544(r30)
000f58  1fc48401  addli r8, r9, 196
000f5c  1731c103  sll.d r[3:4], r[3:4], r28
000f60  33120228  sext_int2long r[5:6], r4
000f64  33980028  sext_int2long r[17:18], r1
000f68  ab0000f0  lui r1, 983040
000f6c  0b212b10  add.ul r[3:4], r[23:24], r[3:4]
000f70  1732c203  sll.d r[5:6], r[5:6], r28
000f74  97101c00  or r1, r24, r1
000f78  1738c803  sll.d r[17:18], r[17:18], r28
000f7c  0b224b10  add.ul r[5:6], r[23:24], r[5:6]
000f80  ff308a00  s_lm2gm r1, r8, 0(r[21:22])
000f84  e340fff3  loadli.w r1,  -1540(r30)
000f88  1f849401  addli r8, r9, 200
000f8c  0b280b11  add.ul r[17:18], r[23:24], r[17:18]
000f90  73344fb6  store.d r[5:6], -1176(r30)
000f94  6b520fb7  load.d r[5:6], -1168(r30)
000f98  339a0028  sext_int2long r[21:22], r1
000f9c  ab0000f0  lui r1, 983040
000fa0  97101c00  or r1, r24, r1
000fa4  173aca03  sll.d r[21:22], r[21:22], r28
000fa8  ff308900  s_lm2gm r1, r8, 0(r[19:20])
000fac  ab0000f0  lui r1, 983040
000fb0  1fc49401  addli r8, r9, 204
000fb4  0b2a4b11  add.ul r[21:22], r[23:24], r[21:22]
000fb8  1f490000  addli r18, zero, 4
000fbc  97101c00  or r1, r24, r1
000fc0  630c0ff4  loadli.w r24,  -1536(r30)
000fc4  ff308d00  s_lm2gm r1, r8, 0(r[27:28])
000fc8  e3404ff2  loadli.w r1,  -1756(r30)
000fcc  331c0c28  sext_int2long r[25:26], r24
000fd0  33940028  sext_int2long r[9:10], r1
000fd4  173ccc03  sll.d r[25:26], r[25:26], r28
000fd8  ab0000f0  lui r1, 983040
000fdc  173dc403  sll.d r[27:28], r[9:10], r28
000fe0  0b248b11  add.ul r[9:10], r[23:24], r[25:26]
000fe4  97101900  or r1, r18, r1
000fe8  0b2cab11  add.ul r[25:26], r[23:24], r[27:28]
000fec  9f0b0ff8  addli r23, r30, -1024
000ff0  ab0d00f0  lui r27, 983040
000ff4  1f8dab01  addli r26, r23, 208
000ff8  1fceab01  addli r28, r23, 212
000ffc  971db901  or r27, r18, r27
001000  1fcbbb01  addli r22, r23, 220
001004  ff30a201  s_lm2gm r1, r26, 0(r[5:6])
001008  ff3dc301  s_lm2gm r27, r28, 0(r[7:8])
00100c  ab0000f0  lui r1, 983040
001010  ab0300f0  lui r7, 983040
001014  6b520fb6  load.d r[5:6], -1184(r30)
001018  1f83bb01  addli r6, r23, 216
00101c  97101900  or r1, r18, r1
001020  97137900  or r7, r18, r7
001024  ff306200  s_lm2gm r1, r6, 0(r[5:6])
001028  ff336501  s_lm2gm r7, r22, 0(r[11:12])
00102c  ab0000f0  lui r1, 983040
001030  ab0300f0  lui r7, 983040
001034  1f83cb01  addli r6, r23, 224
001038  1fc5cb01  addli r10, r23, 228
00103c  6b528fb6  load.d r[5:6], -1176(r30)
001040  97101900  or r1, r18, r1
001044  97137900  or r7, r18, r7
001048  ff306600  s_lm2gm r1, r6, 0(r[13:14])
00104c  ff33a700  s_lm2gm r7, r10, 0(r[15:16])
001050  ab0000f0  lui r1, 983040
001054  1f050ff8  addli r10, r30, -1024
001058  ab0300f0  lui r7, 983040
00105c  1f83db01  addli r6, r23, 232
001060  e346fff6  loadli.w r13,  -1156(r30)
001064  9f270000  addli r15, zero, 2
001068  97101900  or r1, r18, r1
00106c  1f45d501  addli r10, r10, 236
001070  97137900  or r7, r18, r7
001074  ff306200  s_lm2gm r1, r6, 0(r[5:6])
001078  ff33a100  s_lm2gm r7, r10, 0(r[3:4])
00107c  1f050ff8  addli r10, r30, -1024
001080  ab0000f0  lui r1, 983040
001084  ab0100f0  lui r3, 983040
001088  9f420000  addli r5, zero, 4
00108c  1f01e501  addli r2, r10, 240
001090  97101900  or r1, r18, r1
001094  1f42e501  addli r4, r10, 244
001098  97113900  or r3, r18, r3
00109c  ff302800  s_lm2gm r1, r2, 0(r[17:18])
0010a0  ff314a00  s_lm2gm r3, r4, 0(r[21:22])
0010a4  ab0000f0  lui r1, 983040
0010a8  ab0100f0  lui r3, 983040
0010ac  1f01f501  addli r2, r10, 248
0010b0  1f42f501  addli r4, r10, 252
0010b4  97101900  or r1, r18, r1
0010b8  97913200  or r3, r5, r3
0010bc  ff302400  s_lm2gm r1, r2, 0(r[9:10])
0010c0  ff314c00  s_lm2gm r3, r4, 0(r[25:26])
0010c4  1f010ff7  addli r2, r30, -1152
0010c8  e3004fef  loadli.w r1,  -2144(r30)
0010cc  00a00000  mfence { lm }
0010d0  c2120102  vload_mask16.mz vr5{mr1}, 0(r2)
0010d4  8b961610  add.s r13, r13, r1
0010d8  e3405fef  loadli.w r1,  -2132(r30)
0010dc  3fa01600  blt.s r13, r1, 8
0010e0  5b650200  j 4904
0010e4  e3007f00  loadli.w r1,  56(r30)
0010e8  63416f00  loadli.w r2,  52(r30)
0010ec  e747dff6  storeli.w r13, -1156(r30)
0010f0  46105f82  vstore_mask16.mz vr5{mr1}, 1024(r30)
0010f4  46145f82  vstore_mask16.mz vr5{mr1}, 1088(r30)
0010f8  1f040002  addli r8, zero, 256
0010fc  ab0100f0  lui r3, 983040
001100  2b0200f0  lui r4, 983040
001104  ab0200f0  lui r5, 983040
001108  12335002  vadd.s.mz vr6{mr1}, zero, vr5
00110c  92335002  vadd.s.mz vr7{mr1}, zero, vr5
001110  12345002  vadd.s.mz vr8{mr1}, zero, vr5
001114  92345002  vadd.s.mz vr9{mr1}, zero, vr5
001118  12305002  vadd.s.mz vr0{mr1}, zero, vr5
00111c  12325002  vadd.s.mz vr4{mr1}, zero, vr5
001120  00a00000  mfence { lm }
001124  46185f82  vstore_mask16.mz vr5{mr1}, 1152(r30)
001128  63035fef  loadli.w r6,  -2136(r30)
00112c  8b901630  div.s r1, r13, r1
001130  8b902030  div.s r1, r1, r2
001134  2b0100f0  lui r2, 983040
001138  17112400  or r2, r8, r2
00113c  9bb02000  slli r1, r1, 2
001140  8b906010  add.s r1, r1, r6
001144  67001ff4  storeli.w r1, -1536(r30)
001148  461c5f82  vstore_mask16.mz vr5{mr1}, 1216(r30)
00114c  1bbca000  slli r24, r1, 10
001150  00a00000  mfence { lm }
001154  e3404fef  loadli.w r1,  -2140(r30)
001158  8b101c10  add.s r1, r24, r1
00115c  33930028  sext_int2long r[7:8], r1
001160  97103400  or r1, r8, r3
001164  97114400  or r3, r8, r4
001168  17125400  or r4, r8, r5
00116c  9735f302  sll.d r[12:13], r[7:8], r15
001170  6b530f00  load.d r[7:8], 0(r30)
001174  7338bfb6  store.d r[12:13], -1168(r30)
001178  0b23b310  add.ul r[7:8], r[7:8], r[12:13]
00117c  7f21a300  l_gm2lm r2, r10, 0(r[7:8])
001180  1f01bfee  addli r2, r30, -2216
001184  eb520100  load.d r[6:7], 0(r2)
001188  1f010ffa  addli r2, r30, -768
00118c  ffa02200  l_gm2lm r1, r2, 0(r[6:7])
001190  9f02afee  addli r5, r30, -2224
001194  ebd00200  load.d r[2:3], 0(r5)
001198  9f020ffc  addli r5, r30, -512
00119c  ffa15000  l_gm2lm r3, r5, 0(r[2:3])
0011a0  9f019fee  addli r3, r30, -2232
0011a4  00a00000  mfence { lm }
0011a8  ebd00100  load.d r[2:3], 0(r3)
0011ac  9f010ffe  addli r3, r30, -256
0011b0  7fa23000  l_gm2lm r4, r3, 0(r[2:3])
0011b4  e3000ffc  loadli.w r1,  -512(r30)
0011b8  e7061ff4  storeli.w r1, -1432(r30)
0011bc  e3400ffc  loadli.w r1,  -508(r30)
0011c0  e7461ff4  storeli.w r1, -1428(r30)
0011c4  e3001ffc  loadli.w r1,  -504(r30)
0011c8  67071ff4  storeli.w r1, -1424(r30)
0011cc  e3401ffc  loadli.w r1,  -500(r30)
0011d0  67471ff4  storeli.w r1, -1420(r30)
0011d4  e3002ffc  loadli.w r1,  -496(r30)
0011d8  e7071ff4  storeli.w r1, -1416(r30)
0011dc  e3402ffc  loadli.w r1,  -492(r30)
0011e0  e7471ff4  storeli.w r1, -1412(r30)
0011e4  e3003ffc  loadli.w r1,  -488(r30)
0011e8  67081ff4  storeli.w r1, -1408(r30)
0011ec  e3403ffc  loadli.w r1,  -484(r30)
0011f0  67481ff4  storeli.w r1, -1404(r30)
0011f4  e3004ffc  loadli.w r1,  -480(r30)
0011f8  e7081ff4  storeli.w r1, -1400(r30)
0011fc  e3404ffc  loadli.w r1,  -476(r30)
001200  e7481ff4  storeli.w r1, -1396(r30)
001204  e3005ffc  loadli.w r1,  -472(r30)
001208  67091ff4  storeli.w r1, -1392(r30)
00120c  e3405ffc  loadli.w r1,  -468(r30)
001210  67491ff4  storeli.w r1, -1388(r30)
001214  e3006ffc  loadli.w r1,  -464(r30)
001218  e7091ff4  storeli.w r1, -1384(r30)
00121c  e3406ffc  loadli.w r1,  -460(r30)
001220  e7491ff4  storeli.w r1, -1380(r30)
001224  e3007ffc  loadli.w r1,  -456(r30)
001228  670a1ff4  storeli.w r1, -1376(r30)
00122c  e3407ffc  loadli.w r1,  -452(r30)
001230  674a1ff4  storeli.w r1, -1372(r30)
001234  e3008ffc  loadli.w r1,  -448(r30)
001238  e70a1ff4  storeli.w r1, -1368(r30)
00123c  e3408ffc  loadli.w r1,  -444(r30)
001240  e74a1ff4  storeli.w r1, -1364(r30)
001244  e3009ffc  loadli.w r1,  -440(r30)
001248  670b1ff4  storeli.w r1, -1360(r30)
00124c  e3409ffc  loadli.w r1,  -436(r30)
001250  674b1ff4  storeli.w r1, -1356(r30)
001254  e300affc  loadli.w r1,  -432(r30)
001258  e70b1ff4  storeli.w r1, -1352(r30)
00125c  e340affc  loadli.w r1,  -428(r30)
001260  e74b1ff4  storeli.w r1, -1348(r30)
001264  e300bffc  loadli.w r1,  -424(r30)
001268  670c1ff4  storeli.w r1, -1344(r30)
00126c  e340bffc  loadli.w r1,  -420(r30)
001270  674c1ff4  storeli.w r1, -1340(r30)
001274  e300cffc  loadli.w r1,  -416(r30)
001278  e70c1ff4  storeli.w r1, -1336(r30)
00127c  e340cffc  loadli.w r1,  -412(r30)
001280  e74c1ff4  storeli.w r1, -1332(r30)
001284  e300dffc  loadli.w r1,  -408(r30)
001288  670d1ff4  storeli.w r1, -1328(r30)
00128c  e340dffc  loadli.w r1,  -404(r30)
001290  674d1ff4  storeli.w r1, -1324(r30)
001294  e300effc  loadli.w r1,  -400(r30)
001298  e70d1ff4  storeli.w r1, -1320(r30)
00129c  e340effc  loadli.w r1,  -396(r30)
0012a0  e74d1ff4  storeli.w r1, -1316(r30)
0012a4  e300fffc  loadli.w r1,  -392(r30)
0012a8  670e1ff4  storeli.w r1, -1312(r30)
0012ac  e340fffc  loadli.w r1,  -388(r30)
0012b0  674e1ff4  storeli.w r1, -1308(r30)
0012b4  e3000ffd  loadli.w r1,  -384(r30)
0012b8  e70e1ff4  storeli.w r1, -1304(r30)
0012bc  e3400ffd  loadli.w r1,  -380(r30)
0012c0  e74e1ff4  storeli.w r1, -1300(r30)
0012c4  e3001ffd  loadli.w r1,  -376(r30)
0012c8  670f1ff4  storeli.w r1, -1296(r30)
0012cc  e3401ffd  loadli.w r1,  -372(r30)
0012d0  674f1ff4  storeli.w r1, -1292(r30)
0012d4  e3002ffd  loadli.w r1,  -368(r30)
0012d8  e70f1ff4  storeli.w r1, -1288(r30)
0012dc  e3402ffd  loadli.w r1,  -364(r30)
0012e0  e74f1ff4  storeli.w r1, -1284(r30)
0012e4  e3003ffd  loadli.w r1,  -360(r30)
0012e8  67001ff6  storeli.w r1, -1280(r30)
0012ec  e3403ffd  loadli.w r1,  -356(r30)
0012f0  67401ff6  storeli.w r1, -1276(r30)
0012f4  e3004ffd  loadli.w r1,  -352(r30)
0012f8  e7001ff6  storeli.w r1, -1272(r30)
0012fc  e3404ffd  loadli.w r1,  -348(r30)
001300  e7401ff6  storeli.w r1, -1268(r30)
001304  e3005ffd  loadli.w r1,  -344(r30)
001308  67011ff6  storeli.w r1, -1264(r30)
00130c  e3405ffd  loadli.w r1,  -340(r30)
001310  67411ff6  storeli.w r1, -1260(r30)
001314  e3006ffd  loadli.w r1,  -336(r30)
001318  e7011ff6  storeli.w r1, -1256(r30)
00131c  e3406ffd  loadli.w r1,  -332(r30)
001320  e7411ff6  storeli.w r1, -1252(r30)
001324  e3007ffd  loadli.w r1,  -328(r30)
001328  67021ff6  storeli.w r1, -1248(r30)
00132c  e3407ffd  loadli.w r1,  -324(r30)
001330  67421ff6  storeli.w r1, -1244(r30)
001334  e3008ffd  loadli.w r1,  -320(r30)
001338  e7021ff6  storeli.w r1, -1240(r30)
00133c  e3408ffd  loadli.w r1,  -316(r30)
001340  e7421ff6  storeli.w r1, -1236(r30)
001344  e3009ffd  loadli.w r1,  -312(r30)
001348  67031ff6  storeli.w r1, -1232(r30)
00134c  e3409ffd  loadli.w r1,  -308(r30)
001350  67431ff6  storeli.w r1, -1228(r30)
001354  e300affd  loadli.w r1,  -304(r30)
001358  e7031ff6  storeli.w r1, -1224(r30)
00135c  e340affd  loadli.w r1,  -300(r30)
001360  e7431ff6  storeli.w r1, -1220(r30)
001364  e300bffd  loadli.w r1,  -296(r30)
001368  67041ff6  storeli.w r1, -1216(r30)
00136c  e340bffd  loadli.w r1,  -292(r30)
001370  67441ff6  storeli.w r1, -1212(r30)
001374  e300cffd  loadli.w r1,  -288(r30)
001378  e7041ff6  storeli.w r1, -1208(r30)
00137c  e340cffd  loadli.w r1,  -284(r30)
001380  e7441ff6  storeli.w r1, -1204(r30)
001384  e300dffd  loadli.w r1,  -280(r30)
001388  67051ff6  storeli.w r1, -1200(r30)
00138c  e340dffd  loadli.w r1,  -276(r30)
001390  67451ff6  storeli.w r1, -1196(r30)
001394  e300effd  loadli.w r1,  -272(r30)
001398  e7051ff6  storeli.w r1, -1192(r30)
00139c  e340effd  loadli.w r1,  -268(r30)
0013a0  e7451ff6  storeli.w r1, -1188(r30)
0013a4  e300fffd  loadli.w r1,  -264(r30)
0013a8  67061ff6  storeli.w r1, -1184(r30)
0013ac  e340fffd  loadli.w r1,  -260(r30)
0013b0  e7061ff6  storeli.w r1, -1176(r30)
0013b4  00a00000  mfence { lm }
0013b8  630edffa  loadli.w r28,  -664(r30)
0013bc  e3000ffa  loadli.w r1,  -768(r30)
0013c0  63410ffa  loadli.w r2,  -764(r30)
0013c4  e3011ffa  loadli.w r3,  -760(r30)
0013c8  63421ffa  loadli.w r4,  -756(r30)
0013cc  e3022ffa  loadli.w r5,  -752(r30)
0013d0  63432ffa  loadli.w r6,  -748(r30)
0013d4  e3033ffa  loadli.w r7,  -744(r30)
0013d8  63443ffa  loadli.w r8,  -740(r30)
0013dc  e3044ffa  loadli.w r9,  -736(r30)
0013e0  63454ffa  loadli.w r10,  -732(r30)
0013e4  e3055ffa  loadli.w r11,  -728(r30)
0013e8  63465ffa  loadli.w r12,  -724(r30)
0013ec  e3066ffa  loadli.w r13,  -720(r30)
0013f0  63476ffa  loadli.w r14,  -716(r30)
0013f4  e3077ffa  loadli.w r15,  -712(r30)
0013f8  63487ffa  loadli.w r16,  -708(r30)
0013fc  630a8ffa  loadli.w r20,  -704(r30)
001400  e3488ffa  loadli.w r17,  -700(r30)
001404  63099ffa  loadli.w r18,  -696(r30)
001408  e3499ffa  loadli.w r19,  -692(r30)
00140c  e30aaffa  loadli.w r21,  -688(r30)
001410  634baffa  loadli.w r22,  -684(r30)
001414  e30bbffa  loadli.w r23,  -680(r30)
001418  e34cbffa  loadli.w r25,  -676(r30)
00141c  630dcffa  loadli.w r26,  -672(r30)
001420  e34dcffa  loadli.w r27,  -668(r30)
001424  e706cff3  storeli.w r28, -1688(r30)
001428  634edffa  loadli.w r28,  -660(r30)
00142c  e746cff3  storeli.w r28, -1684(r30)
001430  630eeffa  loadli.w r28,  -656(r30)
001434  6707cff3  storeli.w r28, -1680(r30)
001438  634eeffa  loadli.w r28,  -652(r30)
00143c  6747cff3  storeli.w r28, -1676(r30)
001440  630efffa  loadli.w r28,  -648(r30)
001444  e707cff3  storeli.w r28, -1672(r30)
001448  634efffa  loadli.w r28,  -644(r30)
00144c  e747cff3  storeli.w r28, -1668(r30)
001450  630e0ffb  loadli.w r28,  -640(r30)
001454  6708cff3  storeli.w r28, -1664(r30)
001458  634e0ffb  loadli.w r28,  -636(r30)
00145c  6748cff3  storeli.w r28, -1660(r30)
001460  630e1ffb  loadli.w r28,  -632(r30)
001464  e708cff3  storeli.w r28, -1656(r30)
001468  634e1ffb  loadli.w r28,  -628(r30)
00146c  e748cff3  storeli.w r28, -1652(r30)
001470  630e2ffb  loadli.w r28,  -624(r30)
001474  6709cff3  storeli.w r28, -1648(r30)
001478  634e2ffb  loadli.w r28,  -620(r30)
00147c  6749cff3  storeli.w r28, -1644(r30)
001480  630e3ffb  loadli.w r28,  -616(r30)
001484  e709cff3  storeli.w r28, -1640(r30)
001488  634e3ffb  loadli.w r28,  -612(r30)
00148c  e749cff3  storeli.w r28, -1636(r30)
001490  630e4ffb  loadli.w r28,  -608(r30)
001494  670acff3  storeli.w r28, -1632(r30)
001498  634e4ffb  loadli.w r28,  -604(r30)
00149c  674acff3  storeli.w r28, -1628(r30)
0014a0  630e5ffb  loadli.w r28,  -600(r30)
0014a4  e70acff3  storeli.w r28, -1624(r30)
0014a8  634e5ffb  loadli.w r28,  -596(r30)
0014ac  e74acff3  storeli.w r28, -1620(r30)
0014b0  630e6ffb  loadli.w r28,  -592(r30)
0014b4  670bcff3  storeli.w r28, -1616(r30)
0014b8  634e6ffb  loadli.w r28,  -588(r30)
0014bc  674bcff3  storeli.w r28, -1612(r30)
0014c0  630e7ffb  loadli.w r28,  -584(r30)
0014c4  e70bcff3  storeli.w r28, -1608(r30)
0014c8  634e7ffb  loadli.w r28,  -580(r30)
0014cc  e74bcff3  storeli.w r28, -1604(r30)
0014d0  630e8ffb  loadli.w r28,  -576(r30)
0014d4  670ccff3  storeli.w r28, -1600(r30)
0014d8  634e8ffb  loadli.w r28,  -572(r30)
0014dc  674ccff3  storeli.w r28, -1596(r30)
0014e0  630e9ffb  loadli.w r28,  -568(r30)
0014e4  e70ccff3  storeli.w r28, -1592(r30)
0014e8  634e9ffb  loadli.w r28,  -564(r30)
0014ec  e74ccff3  storeli.w r28, -1588(r30)
0014f0  630eaffb  loadli.w r28,  -560(r30)
0014f4  670dcff3  storeli.w r28, -1584(r30)
0014f8  634eaffb  loadli.w r28,  -556(r30)
0014fc  674dcff3  storeli.w r28, -1580(r30)
001500  630ebffb  loadli.w r28,  -552(r30)
001504  e70dcff3  storeli.w r28, -1576(r30)
001508  634ebffb  loadli.w r28,  -548(r30)
00150c  e74dcff3  storeli.w r28, -1572(r30)
001510  630ecffb  loadli.w r28,  -544(r30)
001514  670ecff3  storeli.w r28, -1568(r30)
001518  634ecffb  loadli.w r28,  -540(r30)
00151c  674ecff3  storeli.w r28, -1564(r30)
001520  630edffb  loadli.w r28,  -536(r30)
001524  e70ecff3  storeli.w r28, -1560(r30)
001528  634edffb  loadli.w r28,  -532(r30)
00152c  e74ecff3  storeli.w r28, -1556(r30)
001530  630eeffb  loadli.w r28,  -528(r30)
001534  670fcff3  storeli.w r28, -1552(r30)
001538  634eeffb  loadli.w r28,  -524(r30)
00153c  674fcff3  storeli.w r28, -1548(r30)
001540  630efffb  loadli.w r28,  -520(r30)
001544  e70fcff3  storeli.w r28, -1544(r30)
001548  634efffb  loadli.w r28,  -516(r30)
00154c  e74fcff3  storeli.w r28, -1540(r30)
001550  1f1e0000  addli r28, zero, 1
001554  7e010ee0  vmmov mr2, r28
001558  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
00155c  9f200000  addli r1, zero, 2
001560  7e8000e0  vmmov mr0, r1
001564  9f400000  addli r1, zero, 4
001568  6a236130  vor.u.mh vr6{mr0}, r2, vr6
00156c  fe8100e0  vmmov mr3, r1
001570  9f001000  addli r1, zero, 8
001574  1f010008  addli r2, zero, 1024
001578  7e8100e0  vmmov mr2, r1
00157c  9f002000  addli r1, zero, 16
001580  6aa36136  vor.u.mh vr6{mr3}, r3, vr6
001584  7e8000e0  vmmov mr0, r1
001588  9f004000  addli r1, zero, 32
00158c  6a236234  vor.u.mh vr6{mr2}, r4, vr6
001590  6aa36230  vor.u.mh vr6{mr0}, r5, vr6
001594  7e8000e0  vmmov mr0, r1
001598  9f008000  addli r1, zero, 64
00159c  6a236330  vor.u.mh vr6{mr0}, r6, vr6
0015a0  7e8000e0  vmmov mr0, r1
0015a4  9f000001  addli r1, zero, 128
0015a8  6aa36330  vor.u.mh vr6{mr0}, r7, vr6
0015ac  7e8000e0  vmmov mr0, r1
0015b0  9f000002  addli r1, zero, 256
0015b4  6a236430  vor.u.mh vr6{mr0}, r8, vr6
0015b8  7e8000e0  vmmov mr0, r1
0015bc  9f000004  addli r1, zero, 512
0015c0  6aa36430  vor.u.mh vr6{mr0}, r9, vr6
0015c4  7e8000e0  vmmov mr0, r1
0015c8  9f000008  addli r1, zero, 1024
0015cc  6a236530  vor.u.mh vr6{mr0}, r10, vr6
0015d0  7e8000e0  vmmov mr0, r1
0015d4  9f000010  addli r1, zero, 2048
0015d8  6aa36530  vor.u.mh vr6{mr0}, r11, vr6
0015dc  7e8000e0  vmmov mr0, r1
0015e0  9f000020  addli r1, zero, 4096
0015e4  6a236630  vor.u.mh vr6{mr0}, r12, vr6
0015e8  7e8000e0  vmmov mr0, r1
0015ec  9f000040  addli r1, zero, 8192
0015f0  6aa36630  vor.u.mh vr6{mr0}, r13, vr6
0015f4  7e8000e0  vmmov mr0, r1
0015f8  ab400000  lui r1, 4
0015fc  6a236730  vor.u.mh vr6{mr0}, r14, vr6
001600  7e8000e0  vmmov mr0, r1
001604  ab800000  lui r1, 8
001608  6aa36730  vor.u.mh vr6{mr0}, r15, vr6
00160c  7e8000e0  vmmov mr0, r1
001610  9f100000  addli r1, zero, 1
001614  6a236830  vor.u.mh vr6{mr0}, r16, vr6
001618  7e8000e0  vmmov mr0, r1
00161c  9f200000  addli r1, zero, 2
001620  ea237a30  vor.u.mh vr7{mr0}, r20, vr7
001624  7e8000e0  vmmov mr0, r1
001628  9f400000  addli r1, zero, 4
00162c  fe8100e0  vmmov mr3, r1
001630  9f002000  addli r1, zero, 16
001634  eaa37830  vor.u.mh vr7{mr0}, r17, vr7
001638  ea237936  vor.u.mh vr7{mr3}, r18, vr7
00163c  fe8100e0  vmmov mr3, r1
001640  9f004000  addli r1, zero, 32
001644  eaa37934  vor.u.mh vr7{mr2}, r19, vr7
001648  eaa37a36  vor.u.mh vr7{mr3}, r21, vr7
00164c  fe8100e0  vmmov mr3, r1
001650  9f008000  addli r1, zero, 64
001654  7e8100e0  vmmov mr2, r1
001658  9f000001  addli r1, zero, 128
00165c  ea237b36  vor.u.mh vr7{mr3}, r22, vr7
001660  eaa37b34  vor.u.mh vr7{mr2}, r23, vr7
001664  7e8100e0  vmmov mr2, r1
001668  9f000002  addli r1, zero, 256
00166c  eaa37c34  vor.u.mh vr7{mr2}, r25, vr7
001670  7e8100e0  vmmov mr2, r1
001674  9f000004  addli r1, zero, 512
001678  ea237d34  vor.u.mh vr7{mr2}, r26, vr7
00167c  7e8100e0  vmmov mr2, r1
001680  eaa37d34  vor.u.mh vr7{mr2}, r27, vr7
001684  e300dff2  loadli.w r1,  -1688(r30)
001688  7e0101e0  vmmov mr2, r2
00168c  1f010010  addli r2, zero, 2048
001690  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
001694  e340dff2  loadli.w r1,  -1684(r30)
001698  7e0101e0  vmmov mr2, r2
00169c  1f010020  addli r2, zero, 4096
0016a0  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
0016a4  e300eff2  loadli.w r1,  -1680(r30)
0016a8  7e0101e0  vmmov mr2, r2
0016ac  1f010040  addli r2, zero, 8192
0016b0  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
0016b4  e340eff2  loadli.w r1,  -1676(r30)
0016b8  7e0101e0  vmmov mr2, r2
0016bc  2b410000  lui r2, 4
0016c0  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
0016c4  e300fff2  loadli.w r1,  -1672(r30)
0016c8  7e0101e0  vmmov mr2, r2
0016cc  2b810000  lui r2, 8
0016d0  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
0016d4  e340fff2  loadli.w r1,  -1668(r30)
0016d8  7e0101e0  vmmov mr2, r2
0016dc  1f110000  addli r2, zero, 1
0016e0  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
0016e4  e3000ff3  loadli.w r1,  -1664(r30)
0016e8  7e0101e0  vmmov mr2, r2
0016ec  1f011000  addli r2, zero, 8
0016f0  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
0016f4  e3400ff3  loadli.w r1,  -1660(r30)
0016f8  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0016fc  9f400000  addli r1, zero, 4
001700  7e8100e0  vmmov mr2, r1
001704  e3001ff3  loadli.w r1,  -1656(r30)
001708  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
00170c  e3401ff3  loadli.w r1,  -1652(r30)
001710  7e0101e0  vmmov mr2, r2
001714  1f018000  addli r2, zero, 64
001718  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
00171c  9f002000  addli r1, zero, 16
001720  7e8100e0  vmmov mr2, r1
001724  e3002ff3  loadli.w r1,  -1648(r30)
001728  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
00172c  e3402ff3  loadli.w r1,  -1644(r30)
001730  7e0101e0  vmmov mr2, r2
001734  1f010002  addli r2, zero, 256
001738  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
00173c  e3003ff3  loadli.w r1,  -1640(r30)
001740  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
001744  9f000001  addli r1, zero, 128
001748  7e8100e0  vmmov mr2, r1
00174c  e3403ff3  loadli.w r1,  -1636(r30)
001750  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
001754  e3004ff3  loadli.w r1,  -1632(r30)
001758  7e0101e0  vmmov mr2, r2
00175c  1f110000  addli r2, zero, 1
001760  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
001764  9f000004  addli r1, zero, 512
001768  7e8100e0  vmmov mr2, r1
00176c  e3404ff3  loadli.w r1,  -1628(r30)
001770  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
001774  9f000008  addli r1, zero, 1024
001778  7e8100e0  vmmov mr2, r1
00177c  e3005ff3  loadli.w r1,  -1624(r30)
001780  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
001784  9f000010  addli r1, zero, 2048
001788  7e8100e0  vmmov mr2, r1
00178c  e3405ff3  loadli.w r1,  -1620(r30)
001790  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
001794  9f000020  addli r1, zero, 4096
001798  7e8100e0  vmmov mr2, r1
00179c  e3006ff3  loadli.w r1,  -1616(r30)
0017a0  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
0017a4  9f000040  addli r1, zero, 8192
0017a8  7e8100e0  vmmov mr2, r1
0017ac  e3406ff3  loadli.w r1,  -1612(r30)
0017b0  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
0017b4  ab400000  lui r1, 4
0017b8  7e8100e0  vmmov mr2, r1
0017bc  e3007ff3  loadli.w r1,  -1608(r30)
0017c0  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
0017c4  ab800000  lui r1, 8
0017c8  7e8100e0  vmmov mr2, r1
0017cc  e3407ff3  loadli.w r1,  -1604(r30)
0017d0  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
0017d4  e3008ff3  loadli.w r1,  -1600(r30)
0017d8  7e0101e0  vmmov mr2, r2
0017dc  1f410000  addli r2, zero, 4
0017e0  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
0017e4  e3408ff3  loadli.w r1,  -1596(r30)
0017e8  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
0017ec  e3009ff3  loadli.w r1,  -1592(r30)
0017f0  7e0001e0  vmmov mr0, r2
0017f4  1f011000  addli r2, zero, 8
0017f8  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
0017fc  e3409ff3  loadli.w r1,  -1588(r30)
001800  7e0001e0  vmmov mr0, r2
001804  1f012000  addli r2, zero, 16
001808  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
00180c  e300aff3  loadli.w r1,  -1584(r30)
001810  7e0001e0  vmmov mr0, r2
001814  1f018000  addli r2, zero, 64
001818  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
00181c  e340aff3  loadli.w r1,  -1580(r30)
001820  7e0001e0  vmmov mr0, r2
001824  1f010001  addli r2, zero, 128
001828  eaa49036  vor.u.mh vr9{mr3}, r1, vr9
00182c  e300bff3  loadli.w r1,  -1576(r30)
001830  fe0101e0  vmmov mr3, r2
001834  1f010002  addli r2, zero, 256
001838  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
00183c  e340bff3  loadli.w r1,  -1572(r30)
001840  7e0001e0  vmmov mr0, r2
001844  1f010004  addli r2, zero, 512
001848  eaa49036  vor.u.mh vr9{mr3}, r1, vr9
00184c  e300cff3  loadli.w r1,  -1568(r30)
001850  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
001854  e340cff3  loadli.w r1,  -1564(r30)
001858  7e0001e0  vmmov mr0, r2
00185c  1f010008  addli r2, zero, 1024
001860  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
001864  e300dff3  loadli.w r1,  -1560(r30)
001868  7e0001e0  vmmov mr0, r2
00186c  1f010010  addli r2, zero, 2048
001870  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
001874  e340dff3  loadli.w r1,  -1556(r30)
001878  7e0001e0  vmmov mr0, r2
00187c  1f010020  addli r2, zero, 4096
001880  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
001884  e300eff3  loadli.w r1,  -1552(r30)
001888  7e0001e0  vmmov mr0, r2
00188c  1f010040  addli r2, zero, 8192
001890  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
001894  e340eff3  loadli.w r1,  -1548(r30)
001898  7e0001e0  vmmov mr0, r2
00189c  2b410000  lui r2, 4
0018a0  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
0018a4  e300fff3  loadli.w r1,  -1544(r30)
0018a8  7e0001e0  vmmov mr0, r2
0018ac  2b810000  lui r2, 8
0018b0  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
0018b4  e340fff3  loadli.w r1,  -1540(r30)
0018b8  7e0001e0  vmmov mr0, r2
0018bc  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
0018c0  e30ddffe  loadli.w r27,  -152(r30)
0018c4  e3000ffe  loadli.w r1,  -256(r30)
0018c8  63410ffe  loadli.w r2,  -252(r30)
0018cc  e3011ffe  loadli.w r3,  -248(r30)
0018d0  63421ffe  loadli.w r4,  -244(r30)
0018d4  e3022ffe  loadli.w r5,  -240(r30)
0018d8  63432ffe  loadli.w r6,  -236(r30)
0018dc  e3033ffe  loadli.w r7,  -232(r30)
0018e0  63443ffe  loadli.w r8,  -228(r30)
0018e4  e3044ffe  loadli.w r9,  -224(r30)
0018e8  63454ffe  loadli.w r10,  -220(r30)
0018ec  e3055ffe  loadli.w r11,  -216(r30)
0018f0  63465ffe  loadli.w r12,  -212(r30)
0018f4  e3066ffe  loadli.w r13,  -208(r30)
0018f8  63476ffe  loadli.w r14,  -204(r30)
0018fc  e3077ffe  loadli.w r15,  -200(r30)
001900  63487ffe  loadli.w r16,  -196(r30)
001904  630a8ffe  loadli.w r20,  -192(r30)
001908  e3498ffe  loadli.w r19,  -188(r30)
00190c  63099ffe  loadli.w r18,  -184(r30)
001910  e3489ffe  loadli.w r17,  -180(r30)
001914  e30aaffe  loadli.w r21,  -176(r30)
001918  634baffe  loadli.w r22,  -172(r30)
00191c  e30bbffe  loadli.w r23,  -168(r30)
001920  e34cbffe  loadli.w r25,  -164(r30)
001924  630ecffe  loadli.w r28,  -160(r30)
001928  634dcffe  loadli.w r26,  -156(r30)
00192c  e706bff3  storeli.w r27, -1688(r30)
001930  e34ddffe  loadli.w r27,  -148(r30)
001934  e746bff3  storeli.w r27, -1684(r30)
001938  e30deffe  loadli.w r27,  -144(r30)
00193c  6707bff3  storeli.w r27, -1680(r30)
001940  e34deffe  loadli.w r27,  -140(r30)
001944  6747bff3  storeli.w r27, -1676(r30)
001948  e30dfffe  loadli.w r27,  -136(r30)
00194c  e707bff3  storeli.w r27, -1672(r30)
001950  e34dfffe  loadli.w r27,  -132(r30)
001954  e747bff3  storeli.w r27, -1668(r30)
001958  e30d0fff  loadli.w r27,  -128(r30)
00195c  6708bff3  storeli.w r27, -1664(r30)
001960  e34d0fff  loadli.w r27,  -124(r30)
001964  6748bff3  storeli.w r27, -1660(r30)
001968  e30d1fff  loadli.w r27,  -120(r30)
00196c  e708bff3  storeli.w r27, -1656(r30)
001970  e34d1fff  loadli.w r27,  -116(r30)
001974  e748bff3  storeli.w r27, -1652(r30)
001978  e30d2fff  loadli.w r27,  -112(r30)
00197c  6709bff3  storeli.w r27, -1648(r30)
001980  e34d2fff  loadli.w r27,  -108(r30)
001984  6749bff3  storeli.w r27, -1644(r30)
001988  e30d3fff  loadli.w r27,  -104(r30)
00198c  e709bff3  storeli.w r27, -1640(r30)
001990  e34d3fff  loadli.w r27,  -100(r30)
001994  e749bff3  storeli.w r27, -1636(r30)
001998  e30d4fff  loadli.w r27,  -96(r30)
00199c  670abff3  storeli.w r27, -1632(r30)
0019a0  e34d4fff  loadli.w r27,  -92(r30)
0019a4  674abff3  storeli.w r27, -1628(r30)
0019a8  e30d5fff  loadli.w r27,  -88(r30)
0019ac  e70abff3  storeli.w r27, -1624(r30)
0019b0  e34d5fff  loadli.w r27,  -84(r30)
0019b4  e74abff3  storeli.w r27, -1620(r30)
0019b8  e30d6fff  loadli.w r27,  -80(r30)
0019bc  670bbff3  storeli.w r27, -1616(r30)
0019c0  e34d6fff  loadli.w r27,  -76(r30)
0019c4  674bbff3  storeli.w r27, -1612(r30)
0019c8  e30d7fff  loadli.w r27,  -72(r30)
0019cc  e70bbff3  storeli.w r27, -1608(r30)
0019d0  e34d7fff  loadli.w r27,  -68(r30)
0019d4  e74bbff3  storeli.w r27, -1604(r30)
0019d8  e30d8fff  loadli.w r27,  -64(r30)
0019dc  670cbff3  storeli.w r27, -1600(r30)
0019e0  e34d8fff  loadli.w r27,  -60(r30)
0019e4  674cbff3  storeli.w r27, -1596(r30)
0019e8  e30d9fff  loadli.w r27,  -56(r30)
0019ec  e70cbff3  storeli.w r27, -1592(r30)
0019f0  e34d9fff  loadli.w r27,  -52(r30)
0019f4  e74cbff3  storeli.w r27, -1588(r30)
0019f8  e30dafff  loadli.w r27,  -48(r30)
0019fc  670dbff3  storeli.w r27, -1584(r30)
001a00  e34dafff  loadli.w r27,  -44(r30)
001a04  674dbff3  storeli.w r27, -1580(r30)
001a08  e30dbfff  loadli.w r27,  -40(r30)
001a0c  e70dbff3  storeli.w r27, -1576(r30)
001a10  e34dbfff  loadli.w r27,  -36(r30)
001a14  e74dbff3  storeli.w r27, -1572(r30)
001a18  e30dcfff  loadli.w r27,  -32(r30)
001a1c  670ebff3  storeli.w r27, -1568(r30)
001a20  e34dcfff  loadli.w r27,  -28(r30)
001a24  674ebff3  storeli.w r27, -1564(r30)
001a28  e30ddfff  loadli.w r27,  -24(r30)
001a2c  e70ebff3  storeli.w r27, -1560(r30)
001a30  e34ddfff  loadli.w r27,  -20(r30)
001a34  e74ebff3  storeli.w r27, -1556(r30)
001a38  e30defff  loadli.w r27,  -16(r30)
001a3c  670fbff3  storeli.w r27, -1552(r30)
001a40  e34defff  loadli.w r27,  -12(r30)
001a44  674fbff3  storeli.w r27, -1548(r30)
001a48  e30dffff  loadli.w r27,  -8(r30)
001a4c  e70fbff3  storeli.w r27, -1544(r30)
001a50  e34dffff  loadli.w r27,  -4(r30)
001a54  e74fbff3  storeli.w r27, -1540(r30)
001a58  9f1d0000  addli r27, zero, 1
001a5c  7e800de0  vmmov mr0, r27
001a60  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001a64  9f200000  addli r1, zero, 2
001a68  7e8000e0  vmmov mr0, r1
001a6c  9f400000  addli r1, zero, 4
001a70  6a200130  vor.u.mh vr0{mr0}, r2, vr0
001a74  7e8100e0  vmmov mr2, r1
001a78  9f001000  addli r1, zero, 8
001a7c  1f010008  addli r2, zero, 1024
001a80  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
001a84  7e8100e0  vmmov mr2, r1
001a88  9f002000  addli r1, zero, 16
001a8c  6a200234  vor.u.mh vr0{mr2}, r4, vr0
001a90  7e8100e0  vmmov mr2, r1
001a94  9f004000  addli r1, zero, 32
001a98  6aa00234  vor.u.mh vr0{mr2}, r5, vr0
001a9c  7e8100e0  vmmov mr2, r1
001aa0  9f008000  addli r1, zero, 64
001aa4  6a200334  vor.u.mh vr0{mr2}, r6, vr0
001aa8  7e8100e0  vmmov mr2, r1
001aac  9f000002  addli r1, zero, 256
001ab0  6aa00334  vor.u.mh vr0{mr2}, r7, vr0
001ab4  7e8100e0  vmmov mr2, r1
001ab8  9f000004  addli r1, zero, 512
001abc  6a200436  vor.u.mh vr0{mr3}, r8, vr0
001ac0  6aa00434  vor.u.mh vr0{mr2}, r9, vr0
001ac4  7e8100e0  vmmov mr2, r1
001ac8  9f000008  addli r1, zero, 1024
001acc  6a200534  vor.u.mh vr0{mr2}, r10, vr0
001ad0  7e8100e0  vmmov mr2, r1
001ad4  9f000010  addli r1, zero, 2048
001ad8  6aa00534  vor.u.mh vr0{mr2}, r11, vr0
001adc  7e8100e0  vmmov mr2, r1
001ae0  9f000020  addli r1, zero, 4096
001ae4  6a200634  vor.u.mh vr0{mr2}, r12, vr0
001ae8  7e8100e0  vmmov mr2, r1
001aec  9f000040  addli r1, zero, 8192
001af0  6aa00634  vor.u.mh vr0{mr2}, r13, vr0
001af4  7e8100e0  vmmov mr2, r1
001af8  ab400000  lui r1, 4
001afc  6a200734  vor.u.mh vr0{mr2}, r14, vr0
001b00  7e8100e0  vmmov mr2, r1
001b04  ab800000  lui r1, 8
001b08  6aa00734  vor.u.mh vr0{mr2}, r15, vr0
001b0c  7e8100e0  vmmov mr2, r1
001b10  9f000ff0  addli r1, r30, -2048
001b14  6a200834  vor.u.mh vr0{mr2}, r16, vr0
001b18  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001b1c  12305002  vadd.s.mz vr0{mr1}, zero, vr5
001b20  9f100000  addli r1, zero, 1
001b24  7e8100e0  vmmov mr2, r1
001b28  9f400000  addli r1, zero, 4
001b2c  6a200a34  vor.u.mh vr0{mr2}, r20, vr0
001b30  7e8100e0  vmmov mr2, r1
001b34  9f001000  addli r1, zero, 8
001b38  6aa00930  vor.u.mh vr0{mr0}, r19, vr0
001b3c  6a200934  vor.u.mh vr0{mr2}, r18, vr0
001b40  7e8100e0  vmmov mr2, r1
001b44  9f002000  addli r1, zero, 16
001b48  6aa00834  vor.u.mh vr0{mr2}, r17, vr0
001b4c  7e8100e0  vmmov mr2, r1
001b50  9f004000  addli r1, zero, 32
001b54  6aa00a34  vor.u.mh vr0{mr2}, r21, vr0
001b58  7e8100e0  vmmov mr2, r1
001b5c  9f008000  addli r1, zero, 64
001b60  6a200b34  vor.u.mh vr0{mr2}, r22, vr0
001b64  7e8100e0  vmmov mr2, r1
001b68  9f000002  addli r1, zero, 256
001b6c  6aa00b34  vor.u.mh vr0{mr2}, r23, vr0
001b70  6aa00c36  vor.u.mh vr0{mr3}, r25, vr0
001b74  fe8100e0  vmmov mr3, r1
001b78  9f000004  addli r1, zero, 512
001b7c  6a200e36  vor.u.mh vr0{mr3}, r28, vr0
001b80  fe8100e0  vmmov mr3, r1
001b84  6a200d36  vor.u.mh vr0{mr3}, r26, vr0
001b88  e300dff2  loadli.w r1,  -1688(r30)
001b8c  fe0101e0  vmmov mr3, r2
001b90  1f010010  addli r2, zero, 2048
001b94  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
001b98  e340dff2  loadli.w r1,  -1684(r30)
001b9c  fe0101e0  vmmov mr3, r2
001ba0  1f010020  addli r2, zero, 4096
001ba4  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
001ba8  e300eff2  loadli.w r1,  -1680(r30)
001bac  fe0101e0  vmmov mr3, r2
001bb0  1f010040  addli r2, zero, 8192
001bb4  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
001bb8  e340eff2  loadli.w r1,  -1676(r30)
001bbc  fe0101e0  vmmov mr3, r2
001bc0  2b410000  lui r2, 4
001bc4  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
001bc8  e300fff2  loadli.w r1,  -1672(r30)
001bcc  fe0101e0  vmmov mr3, r2
001bd0  2b810000  lui r2, 8
001bd4  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
001bd8  e340fff2  loadli.w r1,  -1668(r30)
001bdc  fe0101e0  vmmov mr3, r2
001be0  1f110000  addli r2, zero, 1
001be4  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
001be8  9f008fef  addli r1, r30, -2112
001bec  fe0101e0  vmmov mr3, r2
001bf0  1f410000  addli r2, zero, 4
001bf4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001bf8  e3000ff3  loadli.w r1,  -1664(r30)
001bfc  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
001c00  e3400ff3  loadli.w r1,  -1660(r30)
001c04  fe0101e0  vmmov mr3, r2
001c08  1f011000  addli r2, zero, 8
001c0c  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
001c10  e3001ff3  loadli.w r1,  -1656(r30)
001c14  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
001c18  e3401ff3  loadli.w r1,  -1652(r30)
001c1c  fe0101e0  vmmov mr3, r2
001c20  1f012000  addli r2, zero, 16
001c24  7e0101e0  vmmov mr2, r2
001c28  1f014000  addli r2, zero, 32
001c2c  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
001c30  e3002ff3  loadli.w r1,  -1648(r30)
001c34  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
001c38  e3402ff3  loadli.w r1,  -1644(r30)
001c3c  7e0101e0  vmmov mr2, r2
001c40  1f018000  addli r2, zero, 64
001c44  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
001c48  e3003ff3  loadli.w r1,  -1640(r30)
001c4c  7e0101e0  vmmov mr2, r2
001c50  1f010001  addli r2, zero, 128
001c54  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
001c58  e3403ff3  loadli.w r1,  -1636(r30)
001c5c  7e0101e0  vmmov mr2, r2
001c60  1f010002  addli r2, zero, 256
001c64  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
001c68  e3004ff3  loadli.w r1,  -1632(r30)
001c6c  7e0101e0  vmmov mr2, r2
001c70  1f010004  addli r2, zero, 512
001c74  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
001c78  e3404ff3  loadli.w r1,  -1628(r30)
001c7c  7e0101e0  vmmov mr2, r2
001c80  1f010008  addli r2, zero, 1024
001c84  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
001c88  e3005ff3  loadli.w r1,  -1624(r30)
001c8c  7e0101e0  vmmov mr2, r2
001c90  1f010010  addli r2, zero, 2048
001c94  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
001c98  e3405ff3  loadli.w r1,  -1620(r30)
001c9c  7e0101e0  vmmov mr2, r2
001ca0  1f010020  addli r2, zero, 4096
001ca4  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
001ca8  e3006ff3  loadli.w r1,  -1616(r30)
001cac  7e0101e0  vmmov mr2, r2
001cb0  1f010040  addli r2, zero, 8192
001cb4  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
001cb8  e3406ff3  loadli.w r1,  -1612(r30)
001cbc  7e0101e0  vmmov mr2, r2
001cc0  2b410000  lui r2, 4
001cc4  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
001cc8  e3007ff3  loadli.w r1,  -1608(r30)
001ccc  7e0101e0  vmmov mr2, r2
001cd0  2b810000  lui r2, 8
001cd4  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
001cd8  e3407ff3  loadli.w r1,  -1604(r30)
001cdc  7e0101e0  vmmov mr2, r2
001ce0  1f110000  addli r2, zero, 1
001ce4  fe0101e0  vmmov mr3, r2
001ce8  1f011000  addli r2, zero, 8
001cec  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
001cf0  9f400000  addli r1, zero, 4
001cf4  7e8100e0  vmmov mr2, r1
001cf8  e3008ff3  loadli.w r1,  -1600(r30)
001cfc  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
001d00  e3408ff3  loadli.w r1,  -1596(r30)
001d04  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001d08  e3009ff3  loadli.w r1,  -1592(r30)
001d0c  7e0001e0  vmmov mr0, r2
001d10  1f012000  addli r2, zero, 16
001d14  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
001d18  e3409ff3  loadli.w r1,  -1588(r30)
001d1c  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001d20  e300aff3  loadli.w r1,  -1584(r30)
001d24  7e0001e0  vmmov mr0, r2
001d28  1f014000  addli r2, zero, 32
001d2c  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001d30  e340aff3  loadli.w r1,  -1580(r30)
001d34  7e0001e0  vmmov mr0, r2
001d38  1f018000  addli r2, zero, 64
001d3c  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001d40  e300bff3  loadli.w r1,  -1576(r30)
001d44  7e0001e0  vmmov mr0, r2
001d48  1f010001  addli r2, zero, 128
001d4c  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001d50  e340bff3  loadli.w r1,  -1572(r30)
001d54  7e0001e0  vmmov mr0, r2
001d58  1f010002  addli r2, zero, 256
001d5c  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001d60  e300cff3  loadli.w r1,  -1568(r30)
001d64  7e0001e0  vmmov mr0, r2
001d68  1f010004  addli r2, zero, 512
001d6c  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001d70  e340cff3  loadli.w r1,  -1564(r30)
001d74  7e0001e0  vmmov mr0, r2
001d78  1f010008  addli r2, zero, 1024
001d7c  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001d80  e300dff3  loadli.w r1,  -1560(r30)
001d84  7e0001e0  vmmov mr0, r2
001d88  1f010010  addli r2, zero, 2048
001d8c  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001d90  e340dff3  loadli.w r1,  -1556(r30)
001d94  7e0001e0  vmmov mr0, r2
001d98  1f010020  addli r2, zero, 4096
001d9c  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001da0  e300eff3  loadli.w r1,  -1552(r30)
001da4  7e0001e0  vmmov mr0, r2
001da8  1f010040  addli r2, zero, 8192
001dac  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001db0  e340eff3  loadli.w r1,  -1548(r30)
001db4  7e0001e0  vmmov mr0, r2
001db8  2b410000  lui r2, 4
001dbc  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001dc0  e300fff3  loadli.w r1,  -1544(r30)
001dc4  7e0001e0  vmmov mr0, r2
001dc8  2b810000  lui r2, 8
001dcc  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001dd0  e340fff3  loadli.w r1,  -1540(r30)
001dd4  7e0001e0  vmmov mr0, r2
001dd8  1f018000  addli r2, zero, 64
001ddc  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001de0  e340fff7  loadli.w r1,  -1028(r30)
001de4  e3010ff4  loadli.w r3,  -1536(r30)
001de8  3fa02100  blt.s r3, r2, 8
001dec  9f000000  addli r1, zero, 0
001df0  42100f82  vload_mask16.mz vr0{mr1}, 1024(r30)
001df4  c2108f82  vload_mask16.mz vr1{mr1}, 1088(r30)
001df8  42150f83  vload_mask16.mz vr10{mr1}, 1152(r30)
001dfc  7e8100e0  vmmov mr2, r1
001e00  9f000ff7  addli r1, r30, -1152
001e04  c2158f83  vload_mask16.mz vr11{mr1}, 1216(r30)
001e08  16917002  vadd.f.mz.rn vr2{mr1}, vr1, vr7
001e0c  96136002  vadd.f.mz.rn vr7{mr1}, vr0, vr6
001e10  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001e14  9f008fed  addli r1, r30, -2368
001e18  96118502  vadd.f.mz.rn vr3{mr1}, vr10, vr8
001e1c  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
001e20  9f000ff4  addli r1, r30, -1536
001e24  00a00000  mfence { lm }
001e28  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
001e2c  92300002  vadd.s.mz vr1{mr1}, zero, vr0
001e30  12330002  vadd.s.mz vr6{mr1}, zero, vr0
001e34  12350002  vadd.s.mz vr10{mr1}, zero, vr0
001e38  ee102434  vor.f.mh vr1{mr2}, vr8, vr2
001e3c  12317002  vadd.s.mz vr2{mr1}, zero, vr7
001e40  92338002  vadd.s.mz vr7{mr1}, zero, vr8
001e44  16949502  vadd.f.mz.rn vr8{mr1}, vr11, vr9
001e48  92343002  vadd.s.mz vr9{mr1}, zero, vr3
001e4c  92318002  vadd.s.mz vr3{mr1}, zero, vr8
001e50  6e932334  vor.f.mh vr6{mr2}, vr7, vr2
001e54  12340002  vadd.s.mz vr8{mr1}, zero, vr0
001e58  6e959334  vor.f.mh vr10{mr2}, vr7, vr9
001e5c  16101302  vadd.f.mz.rn vr0{mr1}, vr6, vr1
001e60  92308002  vadd.s.mz vr1{mr1}, zero, vr8
001e64  ee903334  vor.f.mh vr1{mr2}, vr7, vr3
001e68  1610a002  vadd.f.mz.rn vr0{mr1}, vr0, vr10
001e6c  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
001e70  fa100040  vextracti.f r1, 0(vr0)
001e74  7a111040  vextracti.f r2, 1(vr0)
001e78  8be02010  add.f.rn r1, r1, r2
001e7c  7a112040  vextracti.f r2, 2(vr0)
001e80  8b601110  add.f.rn r1, r2, r1
001e84  7a113040  vextracti.f r2, 3(vr0)
001e88  8b601110  add.f.rn r1, r2, r1
001e8c  7a114040  vextracti.f r2, 4(vr0)
001e90  8b601110  add.f.rn r1, r2, r1
001e94  7a115040  vextracti.f r2, 5(vr0)
001e98  8b601110  add.f.rn r1, r2, r1
001e9c  7a116040  vextracti.f r2, 6(vr0)
001ea0  8b601110  add.f.rn r1, r2, r1
001ea4  7a117040  vextracti.f r2, 7(vr0)
001ea8  8b601110  add.f.rn r1, r2, r1
001eac  7a118040  vextracti.f r2, 8(vr0)
001eb0  8b601110  add.f.rn r1, r2, r1
001eb4  7a119040  vextracti.f r2, 9(vr0)
001eb8  8b601110  add.f.rn r1, r2, r1
001ebc  7a11a040  vextracti.f r2, 10(vr0)
001ec0  8b601110  add.f.rn r1, r2, r1
001ec4  7a11b040  vextracti.f r2, 11(vr0)
001ec8  8b601110  add.f.rn r1, r2, r1
001ecc  7a11c040  vextracti.f r2, 12(vr0)
001ed0  8b601110  add.f.rn r1, r2, r1
001ed4  7a11d040  vextracti.f r2, 13(vr0)
001ed8  8b601110  add.f.rn r1, r2, r1
001edc  7a11e040  vextracti.f r2, 14(vr0)
001ee0  8b601110  add.f.rn r1, r2, r1
001ee4  7a11f040  vextracti.f r2, 15(vr0)
001ee8  8b601110  add.f.rn r1, r2, r1
001eec  63416fef  loadli.w r2,  -2124(r30)
001ef0  73601100  stores.w r1, 0(r2)
001ef4  00a00300  mfence { lm, sm, gm }
001ef8  e340fff7  loadli.w r1,  -1028(r30)
001efc  80a10004  csr_set csr3, r1
001f00  00d00100  sync_group
001f04  e3067fee  loadli.w r13,  -2248(r30)
001f08  3ba20600  bneq r13, zero, 136
001f0c  63427fef  loadli.w r4,  -2116(r30)
001f10  ef400200  loads.w r1, 0(r4)
001f14  6f414200  loads.w r2, 4(r4)
001f18  ef418200  loads.w r3, 8(r4)
001f1c  8be02010  add.f.rn r1, r1, r2
001f20  6f41c200  loads.w r2, 12(r4)
001f24  8be03010  add.f.rn r1, r1, r3
001f28  ef410201  loads.w r3, 16(r4)
001f2c  8be02010  add.f.rn r1, r1, r2
001f30  6f414201  loads.w r2, 20(r4)
001f34  8be03010  add.f.rn r1, r1, r3
001f38  ef418201  loads.w r3, 24(r4)
001f3c  8be02010  add.f.rn r1, r1, r2
001f40  6f41c201  loads.w r2, 28(r4)
001f44  8be03010  add.f.rn r1, r1, r3
001f48  ef410202  loads.w r3, 32(r4)
001f4c  8be02010  add.f.rn r1, r1, r2
001f50  6f414202  loads.w r2, 36(r4)
001f54  8be03010  add.f.rn r1, r1, r3
001f58  ef418202  loads.w r3, 40(r4)
001f5c  8be02010  add.f.rn r1, r1, r2
001f60  6f41c202  loads.w r2, 44(r4)
001f64  8be03010  add.f.rn r1, r1, r3
001f68  ef410203  loads.w r3, 48(r4)
001f6c  8be02010  add.f.rn r1, r1, r2
001f70  6f414203  loads.w r2, 52(r4)
001f74  8be03010  add.f.rn r1, r1, r3
001f78  ef418203  loads.w r3, 56(r4)
001f7c  8be02010  add.f.rn r1, r1, r2
001f80  6f41c203  loads.w r2, 60(r4)
001f84  8be03010  add.f.rn r1, r1, r3
001f88  8be02010  add.f.rn r1, r1, r2
001f8c  73601200  stores.w r1, 0(r4)
001f90  abf00000  lui r1, 15
001f94  00a00300  mfence { lm, sm, gm }
001f98  2b0180ba  lui r2, 763904
001f9c  12308002  vadd.s.mz vr0{mr1}, zero, vr8
001fa0  92308002  vadd.s.mz vr1{mr1}, zero, vr8
001fa4  12358002  vadd.s.mz vr10{mr1}, zero, vr8
001fa8  1b95f0ff  ori r10, r1, 4095
001fac  80210504  csr_set csr3, r10
001fb0  00d00100  sync_group
001fb4  e3407fef  loadli.w r1,  -2116(r30)
001fb8  e3050fef  loadli.w r11,  -2176(r30)
001fbc  6306efee  loadli.w r12,  -2192(r30)
001fc0  e3012fef  loadli.w r3,  -2160(r30)
001fc4  efc00000  loads.w r1, 0(r1)
001fc8  8b978511  add.s r15, r11, r24
001fcc  0b168611  add.s r12, r12, r24
001fd0  8b918111  add.s r3, r3, r24
001fd4  e703cff2  storeli.w r12, -1736(r30)
001fd8  6346cfee  loadli.w r12,  -2204(r30)
001fdc  0b168611  add.s r12, r12, r24
001fe0  e704cff2  storeli.w r12, -1720(r30)
001fe4  63468fee  loadli.w r12,  -2236(r30)
001fe8  0b168611  add.s r12, r12, r24
001fec  8be02020  mul.f.rn r1, r1, r2
001ff0  1f018ff1  addli r2, r30, -1856
001ff4  12932002  vadd.f.mz.rn vr6{mr1}, r1, vr2
001ff8  8e156302  vmul.f.mz.rn vr11{mr1}, vr6, vr6
001ffc  92949002  vadd.f.mz.rn vr9{mr1}, r1, vr9
002000  6744cff2  storeli.w r12, -1724(r30)
002004  63067fed  loadli.w r12,  -2376(r30)
002008  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
00200c  1f010ff4  addli r2, r30, -1536
002010  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
002014  1f010ff1  addli r2, r30, -1920
002018  6e90b334  vor.f.mh vr0{mr2}, vr7, vr11
00201c  8e959402  vmul.f.mz.rn vr11{mr1}, vr9, vr9
002020  0b168611  add.s r12, r12, r24
002024  12936002  vadd.f.mz.rn vr6{mr1}, r1, vr6
002028  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
00202c  0e136302  vmul.f.mz.rn vr6{mr1}, vr6, vr6
002030  1f018ff0  addli r2, r30, -1984
002034  e705cff2  storeli.w r12, -1704(r30)
002038  63466fed  loadli.w r12,  -2380(r30)
00203c  46109102  vstore_mask16.mz vr9{mr1}, 0(r2)
002040  92943002  vadd.f.mz.rn vr9{mr1}, r1, vr3
002044  6e95b334  vor.f.mh vr10{mr2}, vr7, vr11
002048  0b168611  add.s r12, r12, r24
00204c  ee906334  vor.f.mh vr1{mr2}, vr7, vr6
002050  0e939402  vmul.f.mz.rn vr6{mr1}, vr9, vr9
002054  6745cff2  storeli.w r12, -1708(r30)
002058  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
00205c  92308002  vadd.s.mz vr1{mr1}, zero, vr8
002060  ee906334  vor.f.mh vr1{mr2}, vr7, vr6
002064  1610a002  vadd.f.mz.rn vr0{mr1}, vr0, vr10
002068  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
00206c  fa100040  vextracti.f r1, 0(vr0)
002070  7a111040  vextracti.f r2, 1(vr0)
002074  7a13b040  vextracti.f r6, 11(vr0)
002078  fa14c040  vextracti.f r9, 12(vr0)
00207c  fa15d040  vextracti.f r11, 13(vr0)
002080  8be02010  add.f.rn r1, r1, r2
002084  7a112040  vextracti.f r2, 2(vr0)
002088  8b601110  add.f.rn r1, r2, r1
00208c  7a113040  vextracti.f r2, 3(vr0)
002090  8b601110  add.f.rn r1, r2, r1
002094  7a114040  vextracti.f r2, 4(vr0)
002098  8b601110  add.f.rn r1, r2, r1
00209c  7a115040  vextracti.f r2, 5(vr0)
0020a0  8b601110  add.f.rn r1, r2, r1
0020a4  7a116040  vextracti.f r2, 6(vr0)
0020a8  8b601110  add.f.rn r1, r2, r1
0020ac  7a117040  vextracti.f r2, 7(vr0)
0020b0  8b601110  add.f.rn r1, r2, r1
0020b4  7a118040  vextracti.f r2, 8(vr0)
0020b8  8b601110  add.f.rn r1, r2, r1
0020bc  7a119040  vextracti.f r2, 9(vr0)
0020c0  8b601110  add.f.rn r1, r2, r1
0020c4  7a11a040  vextracti.f r2, 10(vr0)
0020c8  0b621110  add.f.rn r4, r2, r1
0020cc  63013fef  loadli.w r2,  -2152(r30)
0020d0  e3403fef  loadli.w r1,  -2148(r30)
0020d4  8b128111  add.s r5, r2, r24
0020d8  63412fef  loadli.w r2,  -2156(r30)
0020dc  8b908011  add.s r1, r1, r24
0020e0  0b624310  add.f.rn r4, r6, r4
0020e4  63431fef  loadli.w r6,  -2164(r30)
0020e8  0b118111  add.s r2, r2, r24
0020ec  8b138311  add.s r7, r6, r24
0020f0  63031fef  loadli.w r6,  -2168(r30)
0020f4  8be44410  add.f.rn r9, r9, r4
0020f8  6342ffee  loadli.w r4,  -2180(r30)
0020fc  0b148311  add.s r8, r6, r24
002100  63430fef  loadli.w r6,  -2172(r30)
002104  8b188211  add.s r17, r4, r24
002108  6302ffee  loadli.w r4,  -2184(r30)
00210c  0b138311  add.s r6, r6, r24
002110  8be49510  add.f.rn r9, r11, r9
002114  e345dfee  loadli.w r11,  -2196(r30)
002118  8b1a8211  add.s r21, r4, r24
00211c  6342efee  loadli.w r4,  -2188(r30)
002120  8b958511  add.s r11, r11, r24
002124  0b128211  add.s r4, r4, r24
002128  6704bff2  storeli.w r11, -1728(r30)
00212c  e305dfee  loadli.w r11,  -2200(r30)
002130  8b958511  add.s r11, r11, r24
002134  e743bff2  storeli.w r11, -1732(r30)
002138  fa15e040  vextracti.f r11, 14(vr0)
00213c  8be49510  add.f.rn r9, r11, r9
002140  e3058fee  loadli.w r11,  -2240(r30)
002144  8b958511  add.s r11, r11, r24
002148  6705bff2  storeli.w r11, -1712(r30)
00214c  e3457fee  loadli.w r11,  -2244(r30)
002150  8b958511  add.s r11, r11, r24
002154  e744bff2  storeli.w r11, -1716(r30)
002158  fa15f040  vextracti.f r11, 15(vr0)
00215c  8be49510  add.f.rn r9, r11, r9
002160  e3056fed  loadli.w r11,  -2384(r30)
002164  8b958511  add.s r11, r11, r24
002168  6706bff2  storeli.w r11, -1696(r30)
00216c  e3455fed  loadli.w r11,  -2388(r30)
002170  8b958511  add.s r11, r11, r24
002174  e745bff2  storeli.w r11, -1700(r30)
002178  e3055fed  loadli.w r11,  -2392(r30)
00217c  8b958511  add.s r11, r11, r24
002180  6746bff2  storeli.w r11, -1692(r30)
002184  e3454fed  loadli.w r11,  -2396(r30)
002188  8b958511  add.s r11, r11, r24
00218c  e706bff2  storeli.w r11, -1688(r30)
002190  e3054fed  loadli.w r11,  -2400(r30)
002194  8b958511  add.s r11, r11, r24
002198  e746bff2  storeli.w r11, -1684(r30)
00219c  e3056fef  loadli.w r11,  -2128(r30)
0021a0  73e09500  stores.w r9, 0(r11)
0021a4  e3443fed  loadli.w r9,  -2404(r30)
0021a8  8b948411  add.s r9, r9, r24
0021ac  67079ff2  storeli.w r9, -1680(r30)
0021b0  e3043fed  loadli.w r9,  -2408(r30)
0021b4  8b948411  add.s r9, r9, r24
0021b8  67479ff2  storeli.w r9, -1676(r30)
0021bc  e3442fed  loadli.w r9,  -2412(r30)
0021c0  8b948411  add.s r9, r9, r24
0021c4  e7079ff2  storeli.w r9, -1672(r30)
0021c8  e3042fed  loadli.w r9,  -2416(r30)
0021cc  8b948411  add.s r9, r9, r24
0021d0  e7479ff2  storeli.w r9, -1668(r30)
0021d4  e3441fed  loadli.w r9,  -2420(r30)
0021d8  8b948411  add.s r9, r9, r24
0021dc  67089ff2  storeli.w r9, -1664(r30)
0021e0  e3041fed  loadli.w r9,  -2424(r30)
0021e4  8b948411  add.s r9, r9, r24
0021e8  67489ff2  storeli.w r9, -1660(r30)
0021ec  e3440fed  loadli.w r9,  -2428(r30)
0021f0  8b948411  add.s r9, r9, r24
0021f4  e7089ff2  storeli.w r9, -1656(r30)
0021f8  e3040fed  loadli.w r9,  -2432(r30)
0021fc  8b948411  add.s r9, r9, r24
002200  e7489ff2  storeli.w r9, -1652(r30)
002204  e344ffec  loadli.w r9,  -2436(r30)
002208  8b948411  add.s r9, r9, r24
00220c  67099ff2  storeli.w r9, -1648(r30)
002210  e304ffec  loadli.w r9,  -2440(r30)
002214  8b948411  add.s r9, r9, r24
002218  67499ff2  storeli.w r9, -1644(r30)
00221c  e344efec  loadli.w r9,  -2444(r30)
002220  8b948411  add.s r9, r9, r24
002224  e7099ff2  storeli.w r9, -1640(r30)
002228  e304efec  loadli.w r9,  -2448(r30)
00222c  8b948411  add.s r9, r9, r24
002230  e7499ff2  storeli.w r9, -1636(r30)
002234  e344dfec  loadli.w r9,  -2452(r30)
002238  8b948411  add.s r9, r9, r24
00223c  670a9ff2  storeli.w r9, -1632(r30)
002240  e304dfec  loadli.w r9,  -2456(r30)
002244  8b948411  add.s r9, r9, r24
002248  674a9ff2  storeli.w r9, -1628(r30)
00224c  e344cfec  loadli.w r9,  -2460(r30)
002250  8b948411  add.s r9, r9, r24
002254  e70a9ff2  storeli.w r9, -1624(r30)
002258  e304cfec  loadli.w r9,  -2464(r30)
00225c  8b948411  add.s r9, r9, r24
002260  e74a9ff2  storeli.w r9, -1620(r30)
002264  e344bfec  loadli.w r9,  -2468(r30)
002268  8b948411  add.s r9, r9, r24
00226c  670b9ff2  storeli.w r9, -1616(r30)
002270  e304bfec  loadli.w r9,  -2472(r30)
002274  8b948411  add.s r9, r9, r24
002278  674b9ff2  storeli.w r9, -1612(r30)
00227c  e344afec  loadli.w r9,  -2476(r30)
002280  8b948411  add.s r9, r9, r24
002284  e70b9ff2  storeli.w r9, -1608(r30)
002288  e304afec  loadli.w r9,  -2480(r30)
00228c  8b948411  add.s r9, r9, r24
002290  e74b9ff2  storeli.w r9, -1604(r30)
002294  e3449fec  loadli.w r9,  -2484(r30)
002298  8b948411  add.s r9, r9, r24
00229c  670c9ff2  storeli.w r9, -1600(r30)
0022a0  e3049fec  loadli.w r9,  -2488(r30)
0022a4  8b948411  add.s r9, r9, r24
0022a8  674c9ff2  storeli.w r9, -1596(r30)
0022ac  e3448fec  loadli.w r9,  -2492(r30)
0022b0  8b948411  add.s r9, r9, r24
0022b4  e70c9ff2  storeli.w r9, -1592(r30)
0022b8  e3048fec  loadli.w r9,  -2496(r30)
0022bc  8b948411  add.s r9, r9, r24
0022c0  e74c9ff2  storeli.w r9, -1588(r30)
0022c4  e3447fec  loadli.w r9,  -2500(r30)
0022c8  8b948411  add.s r9, r9, r24
0022cc  670d9ff2  storeli.w r9, -1584(r30)
0022d0  e3047fec  loadli.w r9,  -2504(r30)
0022d4  8b948411  add.s r9, r9, r24
0022d8  674d9ff2  storeli.w r9, -1580(r30)
0022dc  e3446fec  loadli.w r9,  -2508(r30)
0022e0  8b948411  add.s r9, r9, r24
0022e4  e70d9ff2  storeli.w r9, -1576(r30)
0022e8  e3046fec  loadli.w r9,  -2512(r30)
0022ec  8b948411  add.s r9, r9, r24
0022f0  e74d9ff2  storeli.w r9, -1572(r30)
0022f4  e3445fec  loadli.w r9,  -2516(r30)
0022f8  8b948411  add.s r9, r9, r24
0022fc  670e9ff2  storeli.w r9, -1568(r30)
002300  e3045fec  loadli.w r9,  -2520(r30)
002304  8b948411  add.s r9, r9, r24
002308  674e9ff2  storeli.w r9, -1564(r30)
00230c  e3444fec  loadli.w r9,  -2524(r30)
002310  8b948411  add.s r9, r9, r24
002314  e74e9ff2  storeli.w r9, -1556(r30)
002318  e3044fec  loadli.w r9,  -2528(r30)
00231c  8b948411  add.s r9, r9, r24
002320  e70e9ff2  storeli.w r9, -1560(r30)
002324  e3443fec  loadli.w r9,  -2532(r30)
002328  8b948411  add.s r9, r9, r24
00232c  670f9ff2  storeli.w r9, -1552(r30)
002330  e3043fec  loadli.w r9,  -2536(r30)
002334  8b948411  add.s r9, r9, r24
002338  674f9ff2  storeli.w r9, -1548(r30)
00233c  e3442fec  loadli.w r9,  -2540(r30)
002340  8b948411  add.s r9, r9, r24
002344  e70f9ff2  storeli.w r9, -1544(r30)
002348  e3042fec  loadli.w r9,  -2544(r30)
00234c  8b948411  add.s r9, r9, r24
002350  e74f9ff2  storeli.w r9, -1540(r30)
002354  e3441fec  loadli.w r9,  -2548(r30)
002358  00a00000  mfence { lm }
00235c  8b948411  add.s r9, r9, r24
002360  67009ff4  storeli.w r9, -1536(r30)
002364  e3041fec  loadli.w r9,  -2552(r30)
002368  8b948411  add.s r9, r9, r24
00236c  67429ff2  storeli.w r9, -1756(r30)
002370  00a00300  mfence { lm, sm, gm }
002374  80210504  csr_set csr3, r10
002378  00d00100  sync_group
00237c  bbf106f0  bneq r13, zero, -8068
002380  63077fef  loadli.w r14,  -2120(r30)
002384  ef450700  loads.w r11, 0(r14)
002388  6f464700  loads.w r12, 4(r14)
00238c  ef468700  loads.w r13, 8(r14)
002390  8be5c510  add.f.rn r11, r11, r12
002394  6f46c700  loads.w r12, 12(r14)
002398  8be5d510  add.f.rn r11, r11, r13
00239c  ef460701  loads.w r13, 16(r14)
0023a0  8be5c510  add.f.rn r11, r11, r12
0023a4  6f464701  loads.w r12, 20(r14)
0023a8  8be5d510  add.f.rn r11, r11, r13
0023ac  ef468701  loads.w r13, 24(r14)
0023b0  8be5c510  add.f.rn r11, r11, r12
0023b4  6f46c701  loads.w r12, 28(r14)
0023b8  8be5d510  add.f.rn r11, r11, r13
0023bc  ef460702  loads.w r13, 32(r14)
0023c0  8be5c510  add.f.rn r11, r11, r12
0023c4  6f464702  loads.w r12, 36(r14)
0023c8  8be5d510  add.f.rn r11, r11, r13
0023cc  ef468702  loads.w r13, 40(r14)
0023d0  8be5c510  add.f.rn r11, r11, r12
0023d4  6f46c702  loads.w r12, 44(r14)
0023d8  8be5d510  add.f.rn r11, r11, r13
0023dc  ef460703  loads.w r13, 48(r14)
0023e0  8be5c510  add.f.rn r11, r11, r12
0023e4  6f464703  loads.w r12, 52(r14)
0023e8  8be5d510  add.f.rn r11, r11, r13
0023ec  ef468703  loads.w r13, 56(r14)
0023f0  8be5c510  add.f.rn r11, r11, r12
0023f4  6f46c703  loads.w r12, 60(r14)
0023f8  8be5d510  add.f.rn r11, r11, r13
0023fc  8be5c510  add.f.rn r11, r11, r12
002400  7360b700  stores.w r11, 0(r14)
002404  dbfefbff  j -8204
002408  9f0e0fec  addli sp, r30, -2560
00240c  9f8e0e14  addli sp, sp, 2560
002410  00a00300  mfence { lm, sm, gm }
002414  00100000  exit
002418  00100000  exit
00241c  00100000  exit
002420  00100000  exit
002424  00100000  exit
002428  00100000  exit
00242c  00100000  exit
002430  00100000  exit
002434  00100000  exit
002438  00100000  exit
00243c  00100000  exit
002440  00100000  exit
002444  00100000  exit
002448  00100000  exit
00244c  00100000  exit
002450  00100000  exit
002454  00100000  exit
002458  00100000  exit
00245c  00100000  exit
002460  00100000  exit
002464  00100000  exit
002468  00100000  exit
00246c  00100000  exit
002470  00100000  exit
002474  00100000  exit
002478  00100000  exit
00247c  00100000  exit
002480  00100000  exit
002484  00100000  exit
002488  00100000  exit
00248c  00100000  exit
002490  00100000  exit
002494  00100000  exit
002498  00100000  exit
00249c  00100000  exit
0024a0  00100000  exit
0024a4  00100000  exit
0024a8  00100000  exit
0024ac  00100000  exit
0024b0  00100000  exit
0024b4  00100000  exit
0024b8  00100000  exit
0024bc  00100000  exit
0024c0  00100000  exit
0024c4  00100000  exit
0024c8  00100000  exit
0024cc  00100000  exit
0024d0  00100000  exit
0024d4  00100000  exit
0024d8  00100000  exit
0024dc  00100000  exit
0024e0  00100000  exit
0024e4  00100000  exit
0024e8  00100000  exit
0024ec  00100000  exit
0024f0  00100000  exit
0024f4  00100000  exit
0024f8  00100000  exit
0024fc  00100000  exit
002500  00100000  exit
002504  00100000  exit
002508  00100000  exit
00250c  00100000  exit
002510  00100000  exit
002514  00100000  exit
002518  00100000  exit
00251c  00100000  exit
002520  00100000  exit
002524  00100000  exit
002528  00100000  exit
00252c  00100000  exit
002530  00100000  exit
002534  00100000  exit
002538  00100000  exit
00253c  00100000  exit
002540  00100000  exit
002544  00100000  exit
002548  00100000  exit
00254c  00100000  exit
002550  00100000  exit
002554  00100000  exit
002558  00100000  exit
00255c  00100000  exit
002560  00100000  exit
002564  00100000  exit
002568  00100000  exit
00256c  00100000  exit
002570  00100000  exit
002574  00100000  exit
002578  00100000  exit
00257c  00100000  exit
002580  00100000  exit
002584  00100000  exit
002588  00100000  exit
00258c  00100000  exit
002590  00100000  exit
002594  00100000  exit
002598  00100000  exit
00259c  00100000  exit
0025a0  00100000  exit
0025a4  00100000  exit
0025a8  00100000  exit
0025ac  00100000  exit
0025b0  00100000  exit
0025b4  00100000  exit
0025b8  00100000  exit
0025bc  00100000  exit
0025c0  00100000  exit
0025c4  00100000  exit
0025c8  00100000  exit
0025cc  00100000  exit
0025d0  00100000  exit
0025d4  00100000  exit
0025d8  00100000  exit
0025dc  00100000  exit
0025e0  00100000  exit
0025e4  00100000  exit
0025e8  00100000  exit
0025ec  00100000  exit
0025f0  00100000  exit
0025f4  00100000  exit
0025f8  00100000  exit
0025fc  00100000  exit
002600  00100000  exit
002604  00100000  exit
002608  00100000  exit
00260c  00100000  exit
002610  00100000  exit
002614  00100000  exit
002618  00100000  exit
00261c  00100000  exit
002620  00100000  exit
002624  00100000  exit
002628  00100000  exit
00262c  00100000  exit
002630  00100000  exit
002634  00100000  exit
002638  00100000  exit
00263c  00100000  exit
002640  00100000  exit
002644  00100000  exit
002648  00100000  exit
00264c  00100000  exit
002650  00100000  exit
002654  00100000  exit
