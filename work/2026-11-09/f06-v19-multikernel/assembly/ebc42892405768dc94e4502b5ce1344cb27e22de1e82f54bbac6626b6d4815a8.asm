; SHA-256 ebc42892405768dc94e4502b5ce1344cb27e22de1e82f54bbac6626b6d4815a8
; P800 Cluster · XTDK LLVM 19 · 2417 / 2417 words decoded
; bound names: triton_per_fused__softmax_add_exp_prepare_softmax_online_sub_0
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
0000dc  9f8e0ef3  addli sp, sp, -1664
0000e0  2b010000  lui r2, 0
0000e4  80300002  core_id r1
0000e8  1f8f8e0c  addli r30, sp, 1600
0000ec  9bb12000  slli r3, r1, 2
0000f0  1f010100  addli r2, r2, 0
0000f4  63444f00  loadli.w r8,  36(r30)
0000f8  63024f00  loadli.w r4,  32(r30)
0000fc  63035f00  loadli.w r6,  40(r30)
000100  8b932110  add.s r7, r3, r2
000104  0b124420  mul.s r4, r8, r4
000108  00540002  load_param_i r8, 0
00010c  9f822340  addli r5, r7, 8208
000110  0b126220  mul.s r4, r4, r6
000114  674e5ff6  storeli.w r5, -1052(r30)
000118  73e00200  stores.w zero, 0(r5)
00011c  abf20000  lui r5, 15
000120  00a00300  mfence { lm, sm, gm }
000124  1b9df2ff  ori r26, r5, 4095
000128  abf27fff  lui r5, 1046527
00012c  9b92f2ff  ori r5, r5, 4095
000130  80210d04  csr_set csr3, r26
000134  00d00100  sync_group
000138  e70e7ff6  storeli.w r7, -1048(r30)
00013c  73e05300  stores.w r5, 0(r7)
000140  00a00300  mfence { lm, sm, gm }
000144  80210d04  csr_set csr3, r26
000148  00d00100  sync_group
00014c  670e4ff6  storeli.w r4, -1056(r30)
000150  cb288210  ble.s r4, r8, 8744
000154  1f021000  addli r4, zero, 8
000158  1f1e0000  addli r28, zero, 1
00015c  eb540f01  load.d r[10:11], 16(r30)
000160  1f0a0ffc  addli r20, r30, -512
000164  1f0c0002  addli r24, zero, 256
000168  9f0d0ffe  addli r27, r30, -256
00016c  9f090004  addli r19, zero, 512
000170  9f4bf001  addli r23, zero, 252
000174  e74daff7  storeli.w r26, -1060(r30)
000178  0b924030  div.s r4, r1, r4
00017c  e70d4ff6  storeli.w r4, -1064(r30)
000180  1b323200  slli r4, r4, 3
000184  0b934018  sub.s r6, r1, r4
000188  9b807000  andi r1, r1, 7
00018c  6b528f00  load.d r[5:6], 8(r30)
000190  9b357300  slli r11, r6, 7
000194  e74f1ffa  storeli.w r1, -516(r30)
000198  00d30002  load_param_i r6, 1
00019c  9b906501  ori r1, r11, 22
0001a0  670d6ff6  storeli.w r6, -1072(r30)
0001a4  1b931500  ori r6, r11, 1
0001a8  1b960501  ori r12, r11, 16
0001ac  674dbff6  storeli.w r11, -1068(r30)
0001b0  e7061ff6  storeli.w r1, -1176(r30)
0001b4  9b907501  ori r1, r11, 23
0001b8  e74c6ff6  storeli.w r6, -1076(r30)
0001bc  1b932500  ori r6, r11, 2
0001c0  6709cff6  storeli.w r12, -1136(r30)
0001c4  1b961501  ori r12, r11, 17
0001c8  67461ff6  storeli.w r1, -1180(r30)
0001cc  9b908501  ori r1, r11, 24
0001d0  e70c6ff6  storeli.w r6, -1080(r30)
0001d4  1b933500  ori r6, r11, 3
0001d8  e748cff6  storeli.w r12, -1140(r30)
0001dc  67061ff6  storeli.w r1, -1184(r30)
0001e0  9b909501  ori r1, r11, 25
0001e4  674c6ff6  storeli.w r6, -1084(r30)
0001e8  1b934500  ori r6, r11, 4
0001ec  e7451ff6  storeli.w r1, -1188(r30)
0001f0  9b90a501  ori r1, r11, 26
0001f4  670c6ff6  storeli.w r6, -1088(r30)
0001f8  1b935500  ori r6, r11, 5
0001fc  e7051ff6  storeli.w r1, -1192(r30)
000200  9b90b501  ori r1, r11, 27
000204  e74b6ff6  storeli.w r6, -1092(r30)
000208  1b936500  ori r6, r11, 6
00020c  67451ff6  storeli.w r1, -1196(r30)
000210  9b90c501  ori r1, r11, 28
000214  e70b6ff6  storeli.w r6, -1096(r30)
000218  1b937500  ori r6, r11, 7
00021c  67051ff6  storeli.w r1, -1200(r30)
000220  9b90d501  ori r1, r11, 29
000224  674b6ff6  storeli.w r6, -1100(r30)
000228  1b938500  ori r6, r11, 8
00022c  e7441ff6  storeli.w r1, -1204(r30)
000230  9b90e501  ori r1, r11, 30
000234  670b6ff6  storeli.w r6, -1104(r30)
000238  1b939500  ori r6, r11, 9
00023c  e7041ff6  storeli.w r1, -1208(r30)
000240  9b90f501  ori r1, r11, 31
000244  e74a6ff6  storeli.w r6, -1108(r30)
000248  1b93a500  ori r6, r11, 10
00024c  67441ff6  storeli.w r1, -1212(r30)
000250  9b900502  ori r1, r11, 32
000254  e70a6ff6  storeli.w r6, -1112(r30)
000258  1b93b500  ori r6, r11, 11
00025c  67041ff6  storeli.w r1, -1216(r30)
000260  9b901502  ori r1, r11, 33
000264  674a6ff6  storeli.w r6, -1116(r30)
000268  1b93c500  ori r6, r11, 12
00026c  e7431ff6  storeli.w r1, -1220(r30)
000270  9b902502  ori r1, r11, 34
000274  670a6ff6  storeli.w r6, -1120(r30)
000278  1b93d500  ori r6, r11, 13
00027c  e7031ff6  storeli.w r1, -1224(r30)
000280  9b903502  ori r1, r11, 35
000284  e7496ff6  storeli.w r6, -1124(r30)
000288  1b93e500  ori r6, r11, 14
00028c  67431ff6  storeli.w r1, -1228(r30)
000290  9b904502  ori r1, r11, 36
000294  e7096ff6  storeli.w r6, -1128(r30)
000298  1b93f500  ori r6, r11, 15
00029c  67031ff6  storeli.w r1, -1232(r30)
0002a0  9b905502  ori r1, r11, 37
0002a4  67496ff6  storeli.w r6, -1132(r30)
0002a8  33930528  sext_int2long r[7:8], r11
0002ac  e7421ff6  storeli.w r1, -1236(r30)
0002b0  9b906502  ori r1, r11, 38
0002b4  1733c303  sll.d r[7:8], r[7:8], r28
0002b8  e7021ff6  storeli.w r1, -1240(r30)
0002bc  9b907502  ori r1, r11, 39
0002c0  0b226210  add.ul r[5:6], r[5:6], r[7:8]
0002c4  67421ff6  storeli.w r1, -1244(r30)
0002c8  9b908502  ori r1, r11, 40
0002cc  73304fb8  store.d r[5:6], -1152(r30)
0002d0  2bf2ffff  lui r4, 1048575
0002d4  9b922501  ori r5, r11, 18
0002d8  67021ff6  storeli.w r1, -1248(r30)
0002dc  9b909502  ori r1, r11, 41
0002e0  1b1202fe  ori r4, r4, 4064
0002e4  e7475ff6  storeli.w r5, -1156(r30)
0002e8  9b923501  ori r5, r11, 19
0002ec  e7411ff6  storeli.w r1, -1252(r30)
0002f0  9b90a502  ori r1, r11, 42
0002f4  97814100  and r3, r3, r4
0002f8  1b924501  ori r4, r11, 20
0002fc  e7075ff6  storeli.w r5, -1160(r30)
000300  e7011ff6  storeli.w r1, -1256(r30)
000304  9b90b502  ori r1, r11, 43
000308  8b9a2110  add.s r21, r3, r2
00030c  67474ff6  storeli.w r4, -1164(r30)
000310  1b915501  ori r2, r11, 21
000314  1f220000  addli r4, zero, 2
000318  67411ff6  storeli.w r1, -1260(r30)
00031c  9b90c502  ori r1, r11, 44
000320  e7462ff6  storeli.w r2, -1172(r30)
000324  67075ff7  storeli.w r21, -1168(r30)
000328  67011ff6  storeli.w r1, -1264(r30)
00032c  9b90d502  ori r1, r11, 45
000330  e7401ff6  storeli.w r1, -1268(r30)
000334  9b90e502  ori r1, r11, 46
000338  e7001ff6  storeli.w r1, -1272(r30)
00033c  9b90f502  ori r1, r11, 47
000340  67401ff6  storeli.w r1, -1276(r30)
000344  9b900503  ori r1, r11, 48
000348  67001ff6  storeli.w r1, -1280(r30)
00034c  9b901503  ori r1, r11, 49
000350  e74f1ff4  storeli.w r1, -1284(r30)
000354  9b902503  ori r1, r11, 50
000358  e70f1ff4  storeli.w r1, -1288(r30)
00035c  9b903503  ori r1, r11, 51
000360  674f1ff4  storeli.w r1, -1292(r30)
000364  9b904503  ori r1, r11, 52
000368  670f1ff4  storeli.w r1, -1296(r30)
00036c  9b905503  ori r1, r11, 53
000370  e74e1ff4  storeli.w r1, -1300(r30)
000374  9b906503  ori r1, r11, 54
000378  e70e1ff4  storeli.w r1, -1304(r30)
00037c  9b907503  ori r1, r11, 55
000380  674e1ff4  storeli.w r1, -1308(r30)
000384  9b908503  ori r1, r11, 56
000388  670e1ff4  storeli.w r1, -1312(r30)
00038c  9b909503  ori r1, r11, 57
000390  e74d1ff4  storeli.w r1, -1316(r30)
000394  9b90a503  ori r1, r11, 58
000398  e70d1ff4  storeli.w r1, -1320(r30)
00039c  9b90b503  ori r1, r11, 59
0003a0  674d1ff4  storeli.w r1, -1324(r30)
0003a4  9b90c503  ori r1, r11, 60
0003a8  670d1ff4  storeli.w r1, -1328(r30)
0003ac  9b90d503  ori r1, r11, 61
0003b0  e74c1ff4  storeli.w r1, -1332(r30)
0003b4  9b90e503  ori r1, r11, 62
0003b8  e70c1ff4  storeli.w r1, -1336(r30)
0003bc  9b90f503  ori r1, r11, 63
0003c0  674c1ff4  storeli.w r1, -1340(r30)
0003c4  9b900504  ori r1, r11, 64
0003c8  670c1ff4  storeli.w r1, -1344(r30)
0003cc  9b901504  ori r1, r11, 65
0003d0  e74b1ff4  storeli.w r1, -1348(r30)
0003d4  9b902504  ori r1, r11, 66
0003d8  e70b1ff4  storeli.w r1, -1352(r30)
0003dc  9b903504  ori r1, r11, 67
0003e0  674b1ff4  storeli.w r1, -1356(r30)
0003e4  9b904504  ori r1, r11, 68
0003e8  670b1ff4  storeli.w r1, -1360(r30)
0003ec  9b905504  ori r1, r11, 69
0003f0  e74a1ff4  storeli.w r1, -1364(r30)
0003f4  9b906504  ori r1, r11, 70
0003f8  e70a1ff4  storeli.w r1, -1368(r30)
0003fc  9b907504  ori r1, r11, 71
000400  674a1ff4  storeli.w r1, -1372(r30)
000404  9b908504  ori r1, r11, 72
000408  670a1ff4  storeli.w r1, -1376(r30)
00040c  9b909504  ori r1, r11, 73
000410  e7491ff4  storeli.w r1, -1380(r30)
000414  9b90a504  ori r1, r11, 74
000418  e7091ff4  storeli.w r1, -1384(r30)
00041c  9b90b504  ori r1, r11, 75
000420  67491ff4  storeli.w r1, -1388(r30)
000424  9b90c504  ori r1, r11, 76
000428  67091ff4  storeli.w r1, -1392(r30)
00042c  9b90d504  ori r1, r11, 77
000430  e7481ff4  storeli.w r1, -1396(r30)
000434  9b90e504  ori r1, r11, 78
000438  e7081ff4  storeli.w r1, -1400(r30)
00043c  9b90f504  ori r1, r11, 79
000440  67481ff4  storeli.w r1, -1404(r30)
000444  9b900505  ori r1, r11, 80
000448  67081ff4  storeli.w r1, -1408(r30)
00044c  9b901505  ori r1, r11, 81
000450  e7471ff4  storeli.w r1, -1412(r30)
000454  9b902505  ori r1, r11, 82
000458  e7071ff4  storeli.w r1, -1416(r30)
00045c  9b903505  ori r1, r11, 83
000460  67471ff4  storeli.w r1, -1420(r30)
000464  9b904505  ori r1, r11, 84
000468  67071ff4  storeli.w r1, -1424(r30)
00046c  9b905505  ori r1, r11, 85
000470  e7461ff4  storeli.w r1, -1428(r30)
000474  9b906505  ori r1, r11, 86
000478  e7061ff4  storeli.w r1, -1432(r30)
00047c  9b907505  ori r1, r11, 87
000480  67461ff4  storeli.w r1, -1436(r30)
000484  9b908505  ori r1, r11, 88
000488  67061ff4  storeli.w r1, -1440(r30)
00048c  9b909505  ori r1, r11, 89
000490  e7451ff4  storeli.w r1, -1444(r30)
000494  9b90a505  ori r1, r11, 90
000498  e7051ff4  storeli.w r1, -1448(r30)
00049c  9b90b505  ori r1, r11, 91
0004a0  67451ff4  storeli.w r1, -1452(r30)
0004a4  9b90c505  ori r1, r11, 92
0004a8  67051ff4  storeli.w r1, -1456(r30)
0004ac  9b90d505  ori r1, r11, 93
0004b0  e7441ff4  storeli.w r1, -1460(r30)
0004b4  9b90e505  ori r1, r11, 94
0004b8  e7041ff4  storeli.w r1, -1464(r30)
0004bc  9b90f505  ori r1, r11, 95
0004c0  67441ff4  storeli.w r1, -1468(r30)
0004c4  9b900506  ori r1, r11, 96
0004c8  67041ff4  storeli.w r1, -1472(r30)
0004cc  9b901506  ori r1, r11, 97
0004d0  e7431ff4  storeli.w r1, -1476(r30)
0004d4  9b902506  ori r1, r11, 98
0004d8  e7031ff4  storeli.w r1, -1480(r30)
0004dc  9b903506  ori r1, r11, 99
0004e0  67431ff4  storeli.w r1, -1484(r30)
0004e4  9b904506  ori r1, r11, 100
0004e8  67031ff4  storeli.w r1, -1488(r30)
0004ec  9b905506  ori r1, r11, 101
0004f0  e7421ff4  storeli.w r1, -1492(r30)
0004f4  9b906506  ori r1, r11, 102
0004f8  e7021ff4  storeli.w r1, -1496(r30)
0004fc  9b907506  ori r1, r11, 103
000500  67421ff4  storeli.w r1, -1500(r30)
000504  9b908506  ori r1, r11, 104
000508  67021ff4  storeli.w r1, -1504(r30)
00050c  9b909506  ori r1, r11, 105
000510  e7411ff4  storeli.w r1, -1508(r30)
000514  9b90a506  ori r1, r11, 106
000518  e7011ff4  storeli.w r1, -1512(r30)
00051c  9b90b506  ori r1, r11, 107
000520  67411ff4  storeli.w r1, -1516(r30)
000524  9b90c506  ori r1, r11, 108
000528  67011ff4  storeli.w r1, -1520(r30)
00052c  9b90d506  ori r1, r11, 109
000530  e7401ff4  storeli.w r1, -1524(r30)
000534  9b90e506  ori r1, r11, 110
000538  e7001ff4  storeli.w r1, -1528(r30)
00053c  9b90f506  ori r1, r11, 111
000540  67401ff4  storeli.w r1, -1532(r30)
000544  9b900507  ori r1, r11, 112
000548  67001ff4  storeli.w r1, -1536(r30)
00054c  9b901507  ori r1, r11, 113
000550  e74f1ff2  storeli.w r1, -1540(r30)
000554  9b902507  ori r1, r11, 114
000558  e70f1ff2  storeli.w r1, -1544(r30)
00055c  9b903507  ori r1, r11, 115
000560  674f1ff2  storeli.w r1, -1548(r30)
000564  9b904507  ori r1, r11, 116
000568  670f1ff2  storeli.w r1, -1552(r30)
00056c  9b905507  ori r1, r11, 117
000570  e74e1ff2  storeli.w r1, -1556(r30)
000574  9b906507  ori r1, r11, 118
000578  e70e1ff2  storeli.w r1, -1560(r30)
00057c  9b907507  ori r1, r11, 119
000580  674e1ff2  storeli.w r1, -1564(r30)
000584  9b908507  ori r1, r11, 120
000588  670e1ff2  storeli.w r1, -1568(r30)
00058c  9b909507  ori r1, r11, 121
000590  e74d1ff2  storeli.w r1, -1572(r30)
000594  9b90a507  ori r1, r11, 122
000598  e70d1ff2  storeli.w r1, -1576(r30)
00059c  9b90b507  ori r1, r11, 123
0005a0  674d1ff2  storeli.w r1, -1580(r30)
0005a4  9b90c507  ori r1, r11, 124
0005a8  670d1ff2  storeli.w r1, -1584(r30)
0005ac  9b90d507  ori r1, r11, 125
0005b0  e74c1ff2  storeli.w r1, -1588(r30)
0005b4  9b90e507  ori r1, r11, 126
0005b8  e70c1ff2  storeli.w r1, -1592(r30)
0005bc  9b90f507  ori r1, r11, 127
0005c0  674c1ff2  storeli.w r1, -1596(r30)
0005c4  9f802a40  addli r1, r21, 8208
0005c8  e74e1ff6  storeli.w r1, -1044(r30)
0005cc  9f000000  addli r1, zero, 0
0005d0  0b111a10  add.s r2, r20, r1
0005d4  9fc00000  addli r1, r1, 4
0005d8  73100100  store.h zero, 0(r2)
0005dc  73110100  store.h zero, 2(r2)
0005e0  00a00000  mfence { lm }
0005e4  bbbf80ff  bneq r1, r24, -20
0005e8  e3005f00  loadli.w r1,  40(r30)
0005ec  63414f00  loadli.w r2,  36(r30)
0005f0  e70f8ffa  storeli.w r8, -520(r30)
0005f4  8b101430  div.s r1, r8, r1
0005f8  8b902030  div.s r1, r1, r2
0005fc  6301bff7  loadli.w r2,  -1064(r30)
000600  9bb03000  slli r1, r1, 3
000604  8b932010  add.s r7, r1, r2
000608  e340aff7  loadli.w r1,  -1068(r30)
00060c  2b0100f0  lui r2, 983040
000610  1bb6a300  slli r12, r7, 10
000614  17112c00  or r2, r24, r2
000618  8b101610  add.s r1, r12, r1
00061c  b3920028  sext_int2long r[6:7], r1
000620  ab0000f0  lui r1, 983040
000624  97b6c203  sll.d r[14:15], r[6:7], r28
000628  eb520f00  load.d r[6:7], 0(r30)
00062c  97101c00  or r1, r24, r1
000630  7338dfde  store.d r[14:15], -528(r30)
000634  8ba2d210  add.ul r[6:7], r[6:7], r[14:15]
000638  7fa14201  l_gm2lm r2, r20, 0(r[6:7])
00063c  6b510fb8  load.d r[3:4], -1152(r30)
000640  ff20b101  l_gm2lm r1, r27, 0(r[3:4])
000644  00a00000  mfence { lm }
000648  eb300fe0  load.hu r1, -512(r30)
00064c  eb310ff0  load.hu r3, -256(r30)
000650  6b312fe0  load.hu r2, -510(r30)
000654  eb322ff0  load.hu r5, -254(r30)
000658  8bd03010  add.hf.rn r1, r1, r3
00065c  0b515110  add.hf.rn r2, r2, r5
000660  b3900020  hfloat2float.rn r1, r1
000664  33110120  hfloat2float.rn r2, r2
000668  9f850000  addli r11, r1, 0
00066c  9f020100  addli r5, r2, 0
000670  3fb03301  blt.s r7, r19, 12
000674  ab0580ff  lui r11, 1046528
000678  ab0280ff  lui r5, 1046528
00067c  9f210a00  addli r3, r20, 2
000680  1f030000  addli r6, zero, 0
000684  e7043ffa  storeli.w r3, -696(r30)
000688  db020000  j 20
00068c  1f430300  addli r6, r6, 4
000690  9f020400  addli r5, r8, 0
000694  9f850100  addli r11, r3, 0
000698  37257301  beq r6, r23, 328
00069c  0b146a10  add.s r8, r20, r6
0006a0  8b966d10  add.s r13, r27, r6
0006a4  eb314400  load.hu r3, 4(r8)
0006a8  6bb74600  load.hu r14, 4(r13)
0006ac  6b346400  load.hu r8, 6(r8)
0006b0  ebb66600  load.hu r13, 6(r13)
0006b4  8bd1e110  add.hf.rn r3, r3, r14
0006b8  1f870500  addli r14, r11, 0
0006bc  b3910120  hfloat2float.rn r3, r3
0006c0  93e7b104  setlt.f r15, r3, r11
0006c4  3ba00700  bneq r15, zero, 8
0006c8  1f870100  addli r14, r3, 0
0006cc  9bb79100  slli r15, r3, 9
0006d0  1bb89500  slli r16, r11, 9
0006d4  9bc87101  srli r17, r3, 23
0006d8  1bc97501  srli r18, r11, 23
0006dc  93870700  seteq r15, r15, zero
0006e0  13080800  seteq r16, r16, zero
0006e4  9b88f80f  andi r17, r17, 255
0006e8  1b09f90f  andi r18, r18, 255
0006ec  9bf8f80f  setlti r17, r17, 255
0006f0  1b79f90f  setlti r18, r18, 255
0006f4  9797f800  or r15, r17, r15
0006f8  17180901  or r16, r18, r16
0006fc  9707f800  and r15, r16, r15
000700  b7c20700  beq r15, zero, 176
000704  9f870500  addli r15, r11, 0
000708  bbd20500  bneq r11, zero, 180
00070c  37a00100  beq r3, zero, 8
000710  9f810700  addli r3, r15, 0
000714  9367e006  setle.f r15, zero, r14
000718  13680706  setle.f r16, r14, zero
00071c  9707f800  and r15, r16, r15
000720  3ba00700  bneq r15, zero, 8
000724  9f010700  addli r3, r14, 0
000728  3fa03301  blt.s r7, r19, 8
00072c  9f810500  addli r3, r11, 0
000730  0b54d410  add.hf.rn r8, r8, r13
000734  9f850200  addli r11, r5, 0
000738  33140420  hfloat2float.rn r8, r8
00073c  93665404  setlt.f r13, r8, r5
000740  3ba00600  bneq r13, zero, 8
000744  9f050400  addli r11, r8, 0
000748  9b369400  slli r13, r8, 9
00074c  1bb79200  slli r14, r5, 9
000750  9b477401  srli r15, r8, 23
000754  1bc87201  srli r16, r5, 23
000758  93860600  seteq r13, r13, zero
00075c  13070700  seteq r14, r14, zero
000760  9b87f70f  andi r15, r15, 255
000764  1b08f80f  andi r16, r16, 255
000768  9bf7f70f  setlti r15, r15, 255
00076c  1b78f80f  setlti r16, r16, 255
000770  9796d700  or r13, r15, r13
000774  1717e800  or r14, r16, r14
000778  9706d700  and r13, r14, r13
00077c  37b10600  beq r13, zero, 76
000780  9f860200  addli r13, r5, 0
000784  3bc10200  bneq r5, zero, 80
000788  37200400  beq r8, zero, 8
00078c  1f840600  addli r8, r13, 0
000790  9366b006  setle.f r13, zero, r11
000794  13e70506  setle.f r14, r11, zero
000798  9706d700  and r13, r14, r13
00079c  3ba00600  bneq r13, zero, 8
0007a0  1f840500  addli r8, r11, 0
0007a4  bfab33ff  blt.s r7, r19, -280
0007a8  1f840200  addli r8, r5, 0
0007ac  5bdcffff  j -288
0007b0  2b07c07f  lui r14, 523264
0007b4  9f870500  addli r15, r11, 0
0007b8  37dd05fe  beq r11, zero, -172
0007bc  9f070700  addli r15, r14, 0
0007c0  3bcd01fe  bneq r3, zero, -176
0007c4  5beaffff  j -176
0007c8  ab05c07f  lui r11, 523264
0007cc  9f860200  addli r13, r5, 0
0007d0  b7ee02fe  beq r5, zero, -72
0007d4  9f860500  addli r13, r11, 0
0007d8  bb5e04fe  bneq r8, zero, -76
0007dc  dbf6ffff  j -76
0007e0  13633404  setlt.f r6, r8, r3
0007e4  9f820100  addli r5, r3, 0
0007e8  3b200300  bneq r6, zero, 8
0007ec  9f020400  addli r5, r8, 0
0007f0  1b339400  slli r6, r8, 9
0007f4  9bb59100  slli r11, r3, 9
0007f8  9b467401  srli r13, r8, 23
0007fc  1bc77101  srli r14, r3, 23
000800  13030300  seteq r6, r6, zero
000804  93850500  seteq r11, r11, zero
000808  9b86f60f  andi r13, r13, 255
00080c  1b07f70f  andi r14, r14, 255
000810  9bf6f60f  setlti r13, r13, 255
000814  1b77f70f  setlti r14, r14, 255
000818  17936600  or r6, r13, r6
00081c  9715b700  or r11, r14, r11
000820  17836500  and r6, r11, r6
000824  377d0300  beq r6, zero, 860
000828  bb8d0100  bneq r3, zero, 864
00082c  37200400  beq r8, zero, 8
000830  1f840100  addli r8, r3, 0
000834  93615006  setle.f r3, zero, r5
000838  13e30206  setle.f r6, r5, zero
00083c  97013300  and r3, r6, r3
000840  3ba00100  bneq r3, zero, 8
000844  1f840200  addli r8, r5, 0
000848  e301dff7  loadli.w r3,  -1048(r30)
00084c  73e08100  stores.w r8, 0(r3)
000850  00a00300  mfence { lm, sm, gm }
000854  80210d04  csr_set csr3, r26
000858  00d00100  sync_group
00085c  e341fffb  loadli.w r3,  -516(r30)
000860  3b8c0100  bneq r3, zero, 768
000864  6fc30a00  loads.w r6, 0(r21)
000868  efc14a00  loads.w r3, 4(r21)
00086c  13e46104  setlt.f r8, r3, r6
000870  9f020300  addli r5, r6, 0
000874  3b200400  bneq r8, zero, 8
000878  9f820100  addli r5, r3, 0
00087c  1b349300  slli r8, r6, 9
000880  9bb59100  slli r11, r3, 9
000884  9b467301  srli r13, r6, 23
000888  1bc77101  srli r14, r3, 23
00088c  13040400  seteq r8, r8, zero
000890  93850500  seteq r11, r11, zero
000894  9b86f60f  andi r13, r13, 255
000898  1b07f70f  andi r14, r14, 255
00089c  9bf6f60f  setlti r13, r13, 255
0008a0  1b77f70f  setlti r14, r14, 255
0008a4  17948600  or r8, r13, r8
0008a8  9715b700  or r11, r14, r11
0008ac  1704b400  and r8, r8, r11
0008b0  b778040c  beq r8, zero, 6716
0008b4  3b09030c  bneq r6, zero, 6720
0008b8  37a00100  beq r3, zero, 8
0008bc  9f010300  addli r3, r6, 0
0008c0  13635006  setle.f r6, zero, r5
0008c4  13e40206  setle.f r8, r5, zero
0008c8  17036400  and r6, r8, r6
0008cc  3b200300  bneq r6, zero, 8
0008d0  9f810200  addli r3, r5, 0
0008d4  efc58a00  loads.w r11, 8(r21)
0008d8  9f820100  addli r5, r3, 0
0008dc  13e33504  setlt.f r6, r11, r3
0008e0  3b200300  bneq r6, zero, 8
0008e4  9f820500  addli r5, r11, 0
0008e8  1bb39500  slli r6, r11, 9
0008ec  1bb49100  slli r8, r3, 9
0008f0  9bc67501  srli r13, r11, 23
0008f4  1bc77101  srli r14, r3, 23
0008f8  13030300  seteq r6, r6, zero
0008fc  13040400  seteq r8, r8, zero
000900  9b86f60f  andi r13, r13, 255
000904  1b07f70f  andi r14, r14, 255
000908  9bf6f60f  setlti r13, r13, 255
00090c  1b77f70f  setlti r14, r14, 255
000910  17936600  or r6, r13, r6
000914  17148700  or r8, r14, r8
000918  17036400  and r6, r8, r6
00091c  b717030c  beq r6, zero, 6628
000920  bba7010c  bneq r3, zero, 6632
000924  37a00500  beq r11, zero, 8
000928  9f850100  addli r11, r3, 0
00092c  93615006  setle.f r3, zero, r5
000930  13e30206  setle.f r6, r5, zero
000934  97013300  and r3, r6, r3
000938  3ba00100  bneq r3, zero, 8
00093c  9f850200  addli r11, r5, 0
000940  efc6ca00  loads.w r13, 12(r21)
000944  6fc40a01  loads.w r8, 16(r21)
000948  efc14a01  loads.w r3, 20(r21)
00094c  6fc38a01  loads.w r6, 24(r21)
000950  efc2ca01  loads.w r5, 28(r21)
000954  1f870500  addli r14, r11, 0
000958  93e7b604  setlt.f r15, r13, r11
00095c  3ba00700  bneq r15, zero, 8
000960  1f870600  addli r14, r13, 0
000964  9bb79600  slli r15, r13, 9
000968  1bb89500  slli r16, r11, 9
00096c  9bc87601  srli r17, r13, 23
000970  1bc97501  srli r18, r11, 23
000974  93870700  seteq r15, r15, zero
000978  13080800  seteq r16, r16, zero
00097c  9b88f80f  andi r17, r17, 255
000980  1b09f90f  andi r18, r18, 255
000984  9bf8f80f  setlti r17, r17, 255
000988  1b79f90f  setlti r18, r18, 255
00098c  9797f800  or r15, r17, r15
000990  17180901  or r16, r18, r16
000994  9707f800  and r15, r16, r15
000998  b7f5070c  beq r15, zero, 6524
00099c  3b86050c  bneq r11, zero, 6528
0009a0  37a00600  beq r13, zero, 8
0009a4  9f860500  addli r13, r11, 0
0009a8  9365e006  setle.f r11, zero, r14
0009ac  93670706  setle.f r15, r14, zero
0009b0  9785b700  and r11, r15, r11
0009b4  3ba00500  bneq r11, zero, 8
0009b8  9f060700  addli r13, r14, 0
0009bc  1367d404  setlt.f r14, r8, r13
0009c0  9f850600  addli r11, r13, 0
0009c4  3b200700  bneq r14, zero, 8
0009c8  9f050400  addli r11, r8, 0
0009cc  1b379400  slli r14, r8, 9
0009d0  9bb79600  slli r15, r13, 9
0009d4  1b487401  srli r16, r8, 23
0009d8  9bc87601  srli r17, r13, 23
0009dc  13070700  seteq r14, r14, zero
0009e0  93870700  seteq r15, r15, zero
0009e4  1b08f80f  andi r16, r16, 255
0009e8  9b88f80f  andi r17, r17, 255
0009ec  1b78f80f  setlti r16, r16, 255
0009f0  9bf8f80f  setlti r17, r17, 255
0009f4  1717e800  or r14, r16, r14
0009f8  9797f800  or r15, r17, r15
0009fc  1787e700  and r14, r15, r14
000a00  b724070c  beq r14, zero, 6440
000a04  bbb4060c  bneq r13, zero, 6444
000a08  37200400  beq r8, zero, 8
000a0c  1f840600  addli r8, r13, 0
000a10  9366b006  setle.f r13, zero, r11
000a14  13e70506  setle.f r14, r11, zero
000a18  9706d700  and r13, r14, r13
000a1c  3ba00600  bneq r13, zero, 8
000a20  1f840500  addli r8, r11, 0
000a24  93e68104  setlt.f r13, r3, r8
000a28  9f050400  addli r11, r8, 0
000a2c  3ba00600  bneq r13, zero, 8
000a30  9f850100  addli r11, r3, 0
000a34  9bb69100  slli r13, r3, 9
000a38  1b379400  slli r14, r8, 9
000a3c  9bc77101  srli r15, r3, 23
000a40  1b487401  srli r16, r8, 23
000a44  93860600  seteq r13, r13, zero
000a48  13070700  seteq r14, r14, zero
000a4c  9b87f70f  andi r15, r15, 255
000a50  1b08f80f  andi r16, r16, 255
000a54  9bf7f70f  setlti r15, r15, 255
000a58  1b78f80f  setlti r16, r16, 255
000a5c  9796d700  or r13, r15, r13
000a60  1717e800  or r14, r16, r14
000a64  9706d700  and r13, r14, r13
000a68  37d3060c  beq r13, zero, 6356
000a6c  3b63040c  bneq r8, zero, 6360
000a70  37a00100  beq r3, zero, 8
000a74  9f010400  addli r3, r8, 0
000a78  1364b006  setle.f r8, zero, r11
000a7c  93e60506  setle.f r13, r11, zero
000a80  17848600  and r8, r13, r8
000a84  3b200400  bneq r8, zero, 8
000a88  9f810500  addli r3, r11, 0
000a8c  93653304  setlt.f r11, r6, r3
000a90  1f840100  addli r8, r3, 0
000a94  3ba00500  bneq r11, zero, 8
000a98  1f040300  addli r8, r6, 0
000a9c  9b359300  slli r11, r6, 9
000aa0  9bb69100  slli r13, r3, 9
000aa4  1b477301  srli r14, r6, 23
000aa8  9bc77101  srli r15, r3, 23
000aac  93850500  seteq r11, r11, zero
000ab0  93860600  seteq r13, r13, zero
000ab4  1b07f70f  andi r14, r14, 255
000ab8  9b87f70f  andi r15, r15, 255
000abc  1b77f70f  setlti r14, r14, 255
000ac0  9bf7f70f  setlti r15, r15, 255
000ac4  9715b700  or r11, r14, r11
000ac8  9796d700  or r13, r15, r13
000acc  9785b600  and r11, r13, r11
000ad0  3782050c  beq r11, zero, 6272
000ad4  3b92010c  bneq r3, zero, 6276
000ad8  37200300  beq r6, zero, 8
000adc  1f830100  addli r6, r3, 0
000ae0  93618006  setle.f r3, zero, r8
000ae4  93650406  setle.f r11, r8, zero
000ae8  97813500  and r3, r11, r3
000aec  3ba00100  bneq r3, zero, 8
000af0  1f030400  addli r6, r8, 0
000af4  13e46204  setlt.f r8, r5, r6
000af8  9f010300  addli r3, r6, 0
000afc  3b200400  bneq r8, zero, 8
000b00  9f810200  addli r3, r5, 0
000b04  1bb49200  slli r8, r5, 9
000b08  9b359300  slli r11, r6, 9
000b0c  9bc67201  srli r13, r5, 23
000b10  1b477301  srli r14, r6, 23
000b14  13040400  seteq r8, r8, zero
000b18  93850500  seteq r11, r11, zero
000b1c  9b86f60f  andi r13, r13, 255
000b20  1b07f70f  andi r14, r14, 255
000b24  9bf6f60f  setlti r13, r13, 255
000b28  1b77f70f  setlti r14, r14, 255
000b2c  17948600  or r8, r13, r8
000b30  9715b700  or r11, r14, r11
000b34  17848500  and r8, r11, r8
000b38  b730040c  beq r8, zero, 6188
000b3c  bb40030c  bneq r6, zero, 6192
000b40  37a00200  beq r5, zero, 8
000b44  9f020300  addli r5, r6, 0
000b48  13633006  setle.f r6, zero, r3
000b4c  13e40106  setle.f r8, r3, zero
000b50  17036400  and r6, r8, r6
000b54  3b200300  bneq r6, zero, 8
000b58  9f820100  addli r5, r3, 0
000b5c  73e05a00  stores.w r5, 0(r21)
000b60  00a00300  mfence { lm, sm, gm }
000b64  80210d04  csr_set csr3, r26
000b68  00d00100  sync_group
000b6c  efc20a00  loads.w r5, 0(r21)
000b70  bf903301  blt.s r7, r19, 36
000b74  9f050000  addli r11, zero, 0
000b78  9f070000  addli r15, zero, 0
000b7c  5b050000  j 40
000b80  ab02c07f  lui r5, 523264
000b84  b7a201fe  beq r3, zero, -856
000b88  9f810200  addli r3, r5, 0
000b8c  bb1204fe  bneq r8, zero, -860
000b90  db94ffff  j -860
000b94  8be05018  sub.f.rn r1, r1, r5
000b98  0b615118  sub.f.rn r2, r2, r5
000b9c  8f850000  exp.f.rn r11, r1
000ba0  8f070100  exp.f.rn r15, r2
000ba4  63084ff7  loadli.w r16,  -1120(r30)
000ba8  e3418ff7  loadli.w r3,  -1084(r30)
000bac  e3409ff7  loadli.w r1,  -1076(r30)
000bb0  63019ff7  loadli.w r2,  -1080(r30)
000bb4  0b18c810  add.s r16, r16, r12
000bb8  0b93c110  add.s r6, r3, r12
000bbc  e3018ff7  loadli.w r3,  -1088(r30)
000bc0  8b90c010  add.s r1, r1, r12
000bc4  0b11c110  add.s r2, r2, r12
000bc8  e7400ff9  storeli.w r16, -1012(r30)
000bcc  63483ff7  loadli.w r16,  -1124(r30)
000bd0  0b94c110  add.s r8, r3, r12
000bd4  e3417ff7  loadli.w r3,  -1092(r30)
000bd8  0b18c810  add.s r16, r16, r12
000bdc  8b96c110  add.s r13, r3, r12
000be0  e3017ff7  loadli.w r3,  -1096(r30)
000be4  67010ff9  storeli.w r16, -1008(r30)
000be8  63083ff7  loadli.w r16,  -1128(r30)
000bec  0b97c110  add.s r14, r3, r12
000bf0  e3416ff7  loadli.w r3,  -1100(r30)
000bf4  0b18c810  add.s r16, r16, r12
000bf8  67410ff9  storeli.w r16, -1004(r30)
000bfc  63482ff7  loadli.w r16,  -1132(r30)
000c00  8b98c110  add.s r17, r3, r12
000c04  e3016ff7  loadli.w r3,  -1104(r30)
000c08  0b18c810  add.s r16, r16, r12
000c0c  8b9cc110  add.s r25, r3, r12
000c10  e3415ff7  loadli.w r3,  -1108(r30)
000c14  e7010ff9  storeli.w r16, -1000(r30)
000c18  63082ff7  loadli.w r16,  -1136(r30)
000c1c  8b9ac110  add.s r21, r3, r12
000c20  e3015ff7  loadli.w r3,  -1112(r30)
000c24  0b18c810  add.s r16, r16, r12
000c28  0b9bc110  add.s r22, r3, r12
000c2c  e3414ff7  loadli.w r3,  -1116(r30)
000c30  e7410ff9  storeli.w r16, -996(r30)
000c34  63481ff7  loadli.w r16,  -1140(r30)
000c38  8b91c110  add.s r3, r3, r12
000c3c  0b18c810  add.s r16, r16, r12
000c40  67020ff9  storeli.w r16, -992(r30)
000c44  6348fff6  loadli.w r16,  -1156(r30)
000c48  0b18c810  add.s r16, r16, r12
000c4c  67420ff9  storeli.w r16, -988(r30)
000c50  6308fff6  loadli.w r16,  -1160(r30)
000c54  0b18c810  add.s r16, r16, r12
000c58  e7020ff9  storeli.w r16, -984(r30)
000c5c  6348eff6  loadli.w r16,  -1164(r30)
000c60  0b18c810  add.s r16, r16, r12
000c64  e7420ff9  storeli.w r16, -980(r30)
000c68  6348dff6  loadli.w r16,  -1172(r30)
000c6c  0b18c810  add.s r16, r16, r12
000c70  67030ff9  storeli.w r16, -976(r30)
000c74  6308dff6  loadli.w r16,  -1176(r30)
000c78  0b18c810  add.s r16, r16, r12
000c7c  67430ff9  storeli.w r16, -972(r30)
000c80  6348cff6  loadli.w r16,  -1180(r30)
000c84  0b18c810  add.s r16, r16, r12
000c88  e7030ff9  storeli.w r16, -968(r30)
000c8c  6308cff6  loadli.w r16,  -1184(r30)
000c90  0b18c810  add.s r16, r16, r12
000c94  e7430ff9  storeli.w r16, -964(r30)
000c98  6348bff6  loadli.w r16,  -1188(r30)
000c9c  0b18c810  add.s r16, r16, r12
000ca0  67040ff9  storeli.w r16, -960(r30)
000ca4  6308bff6  loadli.w r16,  -1192(r30)
000ca8  0b18c810  add.s r16, r16, r12
000cac  67440ff9  storeli.w r16, -956(r30)
000cb0  6348aff6  loadli.w r16,  -1196(r30)
000cb4  0b18c810  add.s r16, r16, r12
000cb8  e7040ff9  storeli.w r16, -952(r30)
000cbc  6308aff6  loadli.w r16,  -1200(r30)
000cc0  0b18c810  add.s r16, r16, r12
000cc4  e7440ff9  storeli.w r16, -948(r30)
000cc8  63489ff6  loadli.w r16,  -1204(r30)
000ccc  0b18c810  add.s r16, r16, r12
000cd0  67050ff9  storeli.w r16, -944(r30)
000cd4  63089ff6  loadli.w r16,  -1208(r30)
000cd8  0b18c810  add.s r16, r16, r12
000cdc  67450ff9  storeli.w r16, -940(r30)
000ce0  63488ff6  loadli.w r16,  -1212(r30)
000ce4  0b18c810  add.s r16, r16, r12
000ce8  e7050ff9  storeli.w r16, -936(r30)
000cec  63088ff6  loadli.w r16,  -1216(r30)
000cf0  0b18c810  add.s r16, r16, r12
000cf4  e7450ff9  storeli.w r16, -932(r30)
000cf8  63487ff6  loadli.w r16,  -1220(r30)
000cfc  0b18c810  add.s r16, r16, r12
000d00  67060ff9  storeli.w r16, -928(r30)
000d04  63087ff6  loadli.w r16,  -1224(r30)
000d08  0b18c810  add.s r16, r16, r12
000d0c  67460ff9  storeli.w r16, -924(r30)
000d10  63486ff6  loadli.w r16,  -1228(r30)
000d14  0b18c810  add.s r16, r16, r12
000d18  e7060ff9  storeli.w r16, -920(r30)
000d1c  63086ff6  loadli.w r16,  -1232(r30)
000d20  0b18c810  add.s r16, r16, r12
000d24  e7460ff9  storeli.w r16, -916(r30)
000d28  63485ff6  loadli.w r16,  -1236(r30)
000d2c  0b18c810  add.s r16, r16, r12
000d30  67070ff9  storeli.w r16, -912(r30)
000d34  63085ff6  loadli.w r16,  -1240(r30)
000d38  0b18c810  add.s r16, r16, r12
000d3c  67470ff9  storeli.w r16, -908(r30)
000d40  63484ff6  loadli.w r16,  -1244(r30)
000d44  0b18c810  add.s r16, r16, r12
000d48  e7070ff9  storeli.w r16, -904(r30)
000d4c  63084ff6  loadli.w r16,  -1248(r30)
000d50  0b18c810  add.s r16, r16, r12
000d54  e7470ff9  storeli.w r16, -900(r30)
000d58  63483ff6  loadli.w r16,  -1252(r30)
000d5c  0b18c810  add.s r16, r16, r12
000d60  67080ff9  storeli.w r16, -896(r30)
000d64  63083ff6  loadli.w r16,  -1256(r30)
000d68  0b18c810  add.s r16, r16, r12
000d6c  67480ff9  storeli.w r16, -892(r30)
000d70  63482ff6  loadli.w r16,  -1260(r30)
000d74  0b18c810  add.s r16, r16, r12
000d78  e7080ff9  storeli.w r16, -888(r30)
000d7c  63082ff6  loadli.w r16,  -1264(r30)
000d80  0b18c810  add.s r16, r16, r12
000d84  e7480ff9  storeli.w r16, -884(r30)
000d88  63481ff6  loadli.w r16,  -1268(r30)
000d8c  0b18c810  add.s r16, r16, r12
000d90  67090ff9  storeli.w r16, -880(r30)
000d94  63081ff6  loadli.w r16,  -1272(r30)
000d98  0b18c810  add.s r16, r16, r12
000d9c  67490ff9  storeli.w r16, -876(r30)
000da0  63480ff6  loadli.w r16,  -1276(r30)
000da4  0b18c810  add.s r16, r16, r12
000da8  e7090ff9  storeli.w r16, -872(r30)
000dac  63080ff6  loadli.w r16,  -1280(r30)
000db0  0b18c810  add.s r16, r16, r12
000db4  e7490ff9  storeli.w r16, -868(r30)
000db8  6348fff5  loadli.w r16,  -1284(r30)
000dbc  0b18c810  add.s r16, r16, r12
000dc0  670a0ff9  storeli.w r16, -864(r30)
000dc4  6308fff5  loadli.w r16,  -1288(r30)
000dc8  0b18c810  add.s r16, r16, r12
000dcc  674a0ff9  storeli.w r16, -860(r30)
000dd0  6348eff5  loadli.w r16,  -1292(r30)
000dd4  0b18c810  add.s r16, r16, r12
000dd8  e70a0ff9  storeli.w r16, -856(r30)
000ddc  6308eff5  loadli.w r16,  -1296(r30)
000de0  0b18c810  add.s r16, r16, r12
000de4  e74a0ff9  storeli.w r16, -852(r30)
000de8  6348dff5  loadli.w r16,  -1300(r30)
000dec  0b18c810  add.s r16, r16, r12
000df0  670b0ff9  storeli.w r16, -848(r30)
000df4  6308dff5  loadli.w r16,  -1304(r30)
000df8  0b18c810  add.s r16, r16, r12
000dfc  674b0ff9  storeli.w r16, -844(r30)
000e00  6348cff5  loadli.w r16,  -1308(r30)
000e04  0b18c810  add.s r16, r16, r12
000e08  e70b0ff9  storeli.w r16, -840(r30)
000e0c  6308cff5  loadli.w r16,  -1312(r30)
000e10  0b18c810  add.s r16, r16, r12
000e14  e74b0ff9  storeli.w r16, -836(r30)
000e18  6348bff5  loadli.w r16,  -1316(r30)
000e1c  0b18c810  add.s r16, r16, r12
000e20  670c0ff9  storeli.w r16, -832(r30)
000e24  6308bff5  loadli.w r16,  -1320(r30)
000e28  0b18c810  add.s r16, r16, r12
000e2c  674c0ff9  storeli.w r16, -828(r30)
000e30  6348aff5  loadli.w r16,  -1324(r30)
000e34  0b18c810  add.s r16, r16, r12
000e38  e70c0ff9  storeli.w r16, -824(r30)
000e3c  6308aff5  loadli.w r16,  -1328(r30)
000e40  0b18c810  add.s r16, r16, r12
000e44  e74c0ff9  storeli.w r16, -820(r30)
000e48  63489ff5  loadli.w r16,  -1332(r30)
000e4c  0b18c810  add.s r16, r16, r12
000e50  670d0ff9  storeli.w r16, -816(r30)
000e54  63089ff5  loadli.w r16,  -1336(r30)
000e58  0b18c810  add.s r16, r16, r12
000e5c  674d0ff9  storeli.w r16, -812(r30)
000e60  63488ff5  loadli.w r16,  -1340(r30)
000e64  0b18c810  add.s r16, r16, r12
000e68  e70d0ff9  storeli.w r16, -808(r30)
000e6c  63088ff5  loadli.w r16,  -1344(r30)
000e70  0b18c810  add.s r16, r16, r12
000e74  e74d0ff9  storeli.w r16, -804(r30)
000e78  63487ff5  loadli.w r16,  -1348(r30)
000e7c  0b18c810  add.s r16, r16, r12
000e80  670e0ff9  storeli.w r16, -800(r30)
000e84  63087ff5  loadli.w r16,  -1352(r30)
000e88  0b18c810  add.s r16, r16, r12
000e8c  674e0ff9  storeli.w r16, -796(r30)
000e90  63486ff5  loadli.w r16,  -1356(r30)
000e94  0b18c810  add.s r16, r16, r12
000e98  e70e0ff9  storeli.w r16, -792(r30)
000e9c  63086ff5  loadli.w r16,  -1360(r30)
000ea0  0b18c810  add.s r16, r16, r12
000ea4  e74e0ff9  storeli.w r16, -788(r30)
000ea8  63485ff5  loadli.w r16,  -1364(r30)
000eac  0b18c810  add.s r16, r16, r12
000eb0  670f0ff9  storeli.w r16, -784(r30)
000eb4  63085ff5  loadli.w r16,  -1368(r30)
000eb8  0b18c810  add.s r16, r16, r12
000ebc  674f0ff9  storeli.w r16, -780(r30)
000ec0  63484ff5  loadli.w r16,  -1372(r30)
000ec4  0b18c810  add.s r16, r16, r12
000ec8  e70f0ff9  storeli.w r16, -776(r30)
000ecc  63084ff5  loadli.w r16,  -1376(r30)
000ed0  0b18c810  add.s r16, r16, r12
000ed4  e74f0ff9  storeli.w r16, -772(r30)
000ed8  63483ff5  loadli.w r16,  -1380(r30)
000edc  0b18c810  add.s r16, r16, r12
000ee0  67000ffb  storeli.w r16, -768(r30)
000ee4  63083ff5  loadli.w r16,  -1384(r30)
000ee8  0b18c810  add.s r16, r16, r12
000eec  67400ffb  storeli.w r16, -764(r30)
000ef0  63482ff5  loadli.w r16,  -1388(r30)
000ef4  0b18c810  add.s r16, r16, r12
000ef8  e7000ffb  storeli.w r16, -760(r30)
000efc  63082ff5  loadli.w r16,  -1392(r30)
000f00  0b18c810  add.s r16, r16, r12
000f04  e7400ffb  storeli.w r16, -756(r30)
000f08  63481ff5  loadli.w r16,  -1396(r30)
000f0c  0b18c810  add.s r16, r16, r12
000f10  67010ffb  storeli.w r16, -752(r30)
000f14  63081ff5  loadli.w r16,  -1400(r30)
000f18  0b18c810  add.s r16, r16, r12
000f1c  67410ffb  storeli.w r16, -748(r30)
000f20  63480ff5  loadli.w r16,  -1404(r30)
000f24  0b18c810  add.s r16, r16, r12
000f28  e7010ffb  storeli.w r16, -744(r30)
000f2c  63080ff5  loadli.w r16,  -1408(r30)
000f30  0b18c810  add.s r16, r16, r12
000f34  e7410ffb  storeli.w r16, -740(r30)
000f38  6348fff4  loadli.w r16,  -1412(r30)
000f3c  0b18c810  add.s r16, r16, r12
000f40  67020ffb  storeli.w r16, -736(r30)
000f44  6308fff4  loadli.w r16,  -1416(r30)
000f48  0b18c810  add.s r16, r16, r12
000f4c  67420ffb  storeli.w r16, -732(r30)
000f50  6348eff4  loadli.w r16,  -1420(r30)
000f54  0b18c810  add.s r16, r16, r12
000f58  e7020ffb  storeli.w r16, -728(r30)
000f5c  6308eff4  loadli.w r16,  -1424(r30)
000f60  0b18c810  add.s r16, r16, r12
000f64  e7420ffb  storeli.w r16, -724(r30)
000f68  6348dff4  loadli.w r16,  -1428(r30)
000f6c  0b18c810  add.s r16, r16, r12
000f70  67030ffb  storeli.w r16, -720(r30)
000f74  6308dff4  loadli.w r16,  -1432(r30)
000f78  0b18c810  add.s r16, r16, r12
000f7c  67430ffb  storeli.w r16, -716(r30)
000f80  6348cff4  loadli.w r16,  -1436(r30)
000f84  0b18c810  add.s r16, r16, r12
000f88  e7030ffb  storeli.w r16, -712(r30)
000f8c  6308cff4  loadli.w r16,  -1440(r30)
000f90  0b18c810  add.s r16, r16, r12
000f94  e7430ffb  storeli.w r16, -708(r30)
000f98  6348bff4  loadli.w r16,  -1444(r30)
000f9c  0b18c810  add.s r16, r16, r12
000fa0  67040ffb  storeli.w r16, -704(r30)
000fa4  6308bff4  loadli.w r16,  -1448(r30)
000fa8  0b18c810  add.s r16, r16, r12
000fac  67440ffb  storeli.w r16, -700(r30)
000fb0  6348aff4  loadli.w r16,  -1452(r30)
000fb4  0b18c810  add.s r16, r16, r12
000fb8  e7440ffb  storeli.w r16, -692(r30)
000fbc  6308aff4  loadli.w r16,  -1456(r30)
000fc0  0b18c810  add.s r16, r16, r12
000fc4  67050ffb  storeli.w r16, -688(r30)
000fc8  63489ff4  loadli.w r16,  -1460(r30)
000fcc  0b18c810  add.s r16, r16, r12
000fd0  67450ffb  storeli.w r16, -684(r30)
000fd4  63089ff4  loadli.w r16,  -1464(r30)
000fd8  0b18c810  add.s r16, r16, r12
000fdc  e7050ffb  storeli.w r16, -680(r30)
000fe0  63488ff4  loadli.w r16,  -1468(r30)
000fe4  0b18c810  add.s r16, r16, r12
000fe8  e7450ffb  storeli.w r16, -676(r30)
000fec  63088ff4  loadli.w r16,  -1472(r30)
000ff0  0b18c810  add.s r16, r16, r12
000ff4  67060ffb  storeli.w r16, -672(r30)
000ff8  63487ff4  loadli.w r16,  -1476(r30)
000ffc  0b18c810  add.s r16, r16, r12
001000  67460ffb  storeli.w r16, -668(r30)
001004  63087ff4  loadli.w r16,  -1480(r30)
001008  0b18c810  add.s r16, r16, r12
00100c  e7060ffb  storeli.w r16, -664(r30)
001010  63486ff4  loadli.w r16,  -1484(r30)
001014  0b18c810  add.s r16, r16, r12
001018  e7460ffb  storeli.w r16, -660(r30)
00101c  63086ff4  loadli.w r16,  -1488(r30)
001020  0b18c810  add.s r16, r16, r12
001024  67070ffb  storeli.w r16, -656(r30)
001028  63485ff4  loadli.w r16,  -1492(r30)
00102c  0b18c810  add.s r16, r16, r12
001030  67470ffb  storeli.w r16, -652(r30)
001034  63085ff4  loadli.w r16,  -1496(r30)
001038  0b18c810  add.s r16, r16, r12
00103c  e7070ffb  storeli.w r16, -648(r30)
001040  63484ff4  loadli.w r16,  -1500(r30)
001044  0b18c810  add.s r16, r16, r12
001048  e7470ffb  storeli.w r16, -644(r30)
00104c  63084ff4  loadli.w r16,  -1504(r30)
001050  0b18c810  add.s r16, r16, r12
001054  67080ffb  storeli.w r16, -640(r30)
001058  63483ff4  loadli.w r16,  -1508(r30)
00105c  0b18c810  add.s r16, r16, r12
001060  67480ffb  storeli.w r16, -636(r30)
001064  63083ff4  loadli.w r16,  -1512(r30)
001068  0b18c810  add.s r16, r16, r12
00106c  e7080ffb  storeli.w r16, -632(r30)
001070  63482ff4  loadli.w r16,  -1516(r30)
001074  0b18c810  add.s r16, r16, r12
001078  e7480ffb  storeli.w r16, -628(r30)
00107c  63082ff4  loadli.w r16,  -1520(r30)
001080  0b18c810  add.s r16, r16, r12
001084  67090ffb  storeli.w r16, -624(r30)
001088  63481ff4  loadli.w r16,  -1524(r30)
00108c  0b18c810  add.s r16, r16, r12
001090  67490ffb  storeli.w r16, -620(r30)
001094  63081ff4  loadli.w r16,  -1528(r30)
001098  0b18c810  add.s r16, r16, r12
00109c  e7090ffb  storeli.w r16, -616(r30)
0010a0  63480ff4  loadli.w r16,  -1532(r30)
0010a4  0b18c810  add.s r16, r16, r12
0010a8  e7490ffb  storeli.w r16, -612(r30)
0010ac  63080ff4  loadli.w r16,  -1536(r30)
0010b0  0b18c810  add.s r16, r16, r12
0010b4  670a0ffb  storeli.w r16, -608(r30)
0010b8  6348fff3  loadli.w r16,  -1540(r30)
0010bc  0b18c810  add.s r16, r16, r12
0010c0  674a0ffb  storeli.w r16, -604(r30)
0010c4  6308fff3  loadli.w r16,  -1544(r30)
0010c8  0b18c810  add.s r16, r16, r12
0010cc  e70a0ffb  storeli.w r16, -600(r30)
0010d0  6348eff3  loadli.w r16,  -1548(r30)
0010d4  0b18c810  add.s r16, r16, r12
0010d8  e74a0ffb  storeli.w r16, -596(r30)
0010dc  6308eff3  loadli.w r16,  -1552(r30)
0010e0  0b18c810  add.s r16, r16, r12
0010e4  670b0ffb  storeli.w r16, -592(r30)
0010e8  6348dff3  loadli.w r16,  -1556(r30)
0010ec  0b18c810  add.s r16, r16, r12
0010f0  674b0ffb  storeli.w r16, -588(r30)
0010f4  6308dff3  loadli.w r16,  -1560(r30)
0010f8  0b18c810  add.s r16, r16, r12
0010fc  e70b0ffb  storeli.w r16, -584(r30)
001100  6348cff3  loadli.w r16,  -1564(r30)
001104  0b18c810  add.s r16, r16, r12
001108  e70c0ffb  storeli.w r16, -568(r30)
00110c  6308cff3  loadli.w r16,  -1568(r30)
001110  0b18c810  add.s r16, r16, r12
001114  674c0ffb  storeli.w r16, -572(r30)
001118  6348bff3  loadli.w r16,  -1572(r30)
00111c  0b18c810  add.s r16, r16, r12
001120  670d0ffb  storeli.w r16, -560(r30)
001124  6308bff3  loadli.w r16,  -1576(r30)
001128  0b18c810  add.s r16, r16, r12
00112c  e70d0ffb  storeli.w r16, -552(r30)
001130  6348aff3  loadli.w r16,  -1580(r30)
001134  0b18c810  add.s r16, r16, r12
001138  e74d0ffb  storeli.w r16, -548(r30)
00113c  6308aff3  loadli.w r16,  -1584(r30)
001140  0b18c810  add.s r16, r16, r12
001144  670e0ffb  storeli.w r16, -544(r30)
001148  63489ff3  loadli.w r16,  -1588(r30)
00114c  0b18c810  add.s r16, r16, r12
001150  674e0ffb  storeli.w r16, -540(r30)
001154  63089ff3  loadli.w r16,  -1592(r30)
001158  0b18c810  add.s r16, r16, r12
00115c  e70e0ffb  storeli.w r16, -536(r30)
001160  63488ff3  loadli.w r16,  -1596(r30)
001164  0b16c810  add.s r12, r16, r12
001168  e74ecffa  storeli.w r12, -532(r30)
00116c  1f060000  addli r12, zero, 0
001170  db030000  j 28
001174  1f080000  addli r16, zero, 0
001178  1f090000  addli r18, zero, 0
00117c  8be50511  add.f.rn r11, r11, r16
001180  8be72711  add.f.rn r15, r15, r18
001184  1f460600  addli r12, r12, 4
001188  37417601  beq r12, r23, 80
00118c  3fa03301  blt.s r7, r19, 8
001190  dbfcffff  j -28
001194  0b18ca10  add.s r16, r20, r12
001198  0b99cd10  add.s r18, r27, r12
00119c  eb3b4800  load.hu r23, 4(r16)
0011a0  6b3c4900  load.hu r24, 4(r18)
0011a4  6b386800  load.hu r16, 6(r16)
0011a8  6b396900  load.hu r18, 6(r18)
0011ac  0b582811  add.hf.rn r16, r16, r18
0011b0  8bdb8b11  add.hf.rn r23, r23, r24
0011b4  1f0c0002  addli r24, zero, 256
0011b8  33990b20  hfloat2float.rn r18, r23
0011bc  33180820  hfloat2float.rn r16, r16
0011c0  0b695918  sub.f.rn r18, r18, r5
0011c4  8b6b5818  sub.f.rn r23, r16, r5
0011c8  0f080900  exp.f.rn r16, r18
0011cc  0f890b00  exp.f.rn r18, r23
0011d0  9f4bf001  addli r23, zero, 252
0011d4  5bf5ffff  j -88
0011d8  8be3f510  add.f.rn r7, r11, r15
0011dc  e345cff7  loadli.w r11,  -1052(r30)
0011e0  73e07500  stores.w r7, 0(r11)
0011e4  00a00300  mfence { lm, sm, gm }
0011e8  80210d04  csr_set csr3, r26
0011ec  00d00100  sync_group
0011f0  e343fffb  loadli.w r7,  -516(r30)
0011f4  3ba10300  bneq r7, zero, 72
0011f8  e347dff7  loadli.w r15,  -1044(r30)
0011fc  efc30700  loads.w r7, 0(r15)
001200  efc54700  loads.w r11, 4(r15)
001204  6fc68700  loads.w r12, 8(r15)
001208  8be3b310  add.f.rn r7, r7, r11
00120c  efc5c700  loads.w r11, 12(r15)
001210  8be3c310  add.f.rn r7, r7, r12
001214  6fc60701  loads.w r12, 16(r15)
001218  8be3b310  add.f.rn r7, r7, r11
00121c  efc54701  loads.w r11, 20(r15)
001220  8be3c310  add.f.rn r7, r7, r12
001224  6fc68701  loads.w r12, 24(r15)
001228  8be3b310  add.f.rn r7, r7, r11
00122c  efc5c701  loads.w r11, 28(r15)
001230  8be3c310  add.f.rn r7, r7, r12
001234  8be3b310  add.f.rn r7, r7, r11
001238  73e07700  stores.w r7, 0(r15)
00123c  00a00300  mfence { lm, sm, gm }
001240  80210d04  csr_set csr3, r26
001244  00d00100  sync_group
001248  e343dff7  loadli.w r7,  -1044(r30)
00124c  ab05803f  lui r11, 260096
001250  efc30300  loads.w r7, 0(r7)
001254  8f837518  div.f.rn r7, r11, r7
001258  9f050000  addli r11, zero, 0
00125c  0b16ba10  add.s r12, r20, r11
001260  8b97bd10  add.s r15, r27, r11
001264  9fc50500  addli r11, r11, 4
001268  ebbb0700  load.hu r23, 0(r15)
00126c  6b380600  load.hu r16, 0(r12)
001270  6b392600  load.hu r18, 2(r12)
001274  ebb72700  load.hu r15, 2(r15)
001278  0b587811  add.hf.rn r16, r16, r23
00127c  8b57f910  add.hf.rn r15, r18, r15
001280  33180820  hfloat2float.rn r16, r16
001284  b3970720  hfloat2float.rn r15, r15
001288  0b685818  sub.f.rn r16, r16, r5
00128c  8be75718  sub.f.rn r15, r15, r5
001290  0f080800  exp.f.rn r16, r16
001294  8f870700  exp.f.rn r15, r15
001298  0be80321  mul.f.rn r16, r7, r16
00129c  8be7f320  mul.f.rn r15, r7, r15
0012a0  33280800  float2hfloat.rn r16, r16
0012a4  b3a70700  float2hfloat.rn r15, r15
0012a8  73100601  store.h r16, 0(r12)
0012ac  7311f600  store.h r15, 2(r12)
0012b0  00a00000  mfence { lm }
0012b4  bbae85ff  bneq r11, r24, -88
0012b8  b3150328  sext_int2long r[12:13], r6
0012bc  b3920a28  sext_int2long r[6:7], r21
0012c0  b39b0028  sext_int2long r[24:25], r1
0012c4  b3100128  sext_int2long r[2:3], r2
0012c8  b3130428  sext_int2long r[8:9], r8
0012cc  b3970628  sext_int2long r[16:17], r13
0012d0  b3160728  sext_int2long r[14:15], r14
0012d4  b3980828  sext_int2long r[18:19], r17
0012d8  b39c0c28  sext_int2long r[26:27], r25
0012dc  733c5fbe  store.d r[6:7], -1032(r30)
0012e0  b3120b28  sext_int2long r[6:7], r22
0012e4  97bac003  sll.d r[22:23], r[2:3], r28
0012e8  73385fbe  store.d r[6:7], -1040(r30)
0012ec  b3920128  sext_int2long r[6:7], r3
0012f0  ab0100f0  lui r3, 983040
0012f4  73305fc0  store.d r[6:7], -1024(r30)
0012f8  97b2cb03  sll.d r[6:7], r[24:25], r28
0012fc  e30b9ffa  loadli.w r23,  -696(r30)
001300  97113200  or r3, r4, r3
001304  8ba05410  add.ul r[2:3], r[10:11], r[6:7]
001308  8ba25411  add.ul r[6:7], r[10:11], r[22:23]
00130c  ab0a00f0  lui r21, 983040
001310  1f4b0a00  addli r22, r20, 4
001314  ffb17001  s_lm2gm r3, r23, 0(r[2:3])
001318  97b0c503  sll.d r[2:3], r[12:13], r28
00131c  ab0100f0  lui r3, 983040
001320  971a5201  or r21, r4, r21
001324  9f051a00  addli r11, r20, 8
001328  ffba6201  s_lm2gm r21, r22, 0(r[6:7])
00132c  97b2c303  sll.d r[6:7], r[8:9], r28
001330  ab0300f0  lui r7, 983040
001334  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001338  97113200  or r3, r4, r3
00133c  1f640a00  addli r8, r20, 6
001340  ffb18000  s_lm2gm r3, r8, 0(r[2:3])
001344  97b0c703  sll.d r[2:3], r[16:17], r28
001348  ab0100f0  lui r3, 983040
00134c  8ba25410  add.ul r[6:7], r[10:11], r[6:7]
001350  97137200  or r7, r4, r7
001354  1f241a00  addli r8, r20, 10
001358  ffb3b200  s_lm2gm r7, r11, 0(r[6:7])
00135c  97b2c603  sll.d r[6:7], r[14:15], r28
001360  ab0300f0  lui r7, 983040
001364  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001368  97113200  or r3, r4, r3
00136c  9f451a00  addli r11, r20, 12
001370  ffb18000  s_lm2gm r3, r8, 0(r[2:3])
001374  97b0c803  sll.d r[2:3], r[18:19], r28
001378  ab0100f0  lui r3, 983040
00137c  8ba25410  add.ul r[6:7], r[10:11], r[6:7]
001380  97137200  or r7, r4, r7
001384  1f641a00  addli r8, r20, 14
001388  ffb3b200  s_lm2gm r7, r11, 0(r[6:7])
00138c  97b2cc03  sll.d r[6:7], r[26:27], r28
001390  ab0300f0  lui r7, 983040
001394  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001398  97113200  or r3, r4, r3
00139c  9f052a00  addli r11, r20, 16
0013a0  ffb18000  s_lm2gm r3, r8, 0(r[2:3])
0013a4  eb508fbf  load.d r[2:3], -1032(r30)
0013a8  8ba25410  add.ul r[6:7], r[10:11], r[6:7]
0013ac  97137200  or r7, r4, r7
0013b0  ab0100f0  lui r3, 983040
0013b4  1f242a00  addli r8, r20, 18
0013b8  ffb3b200  s_lm2gm r7, r11, 0(r[6:7])
0013bc  eb520fbf  load.d r[6:7], -1040(r30)
0013c0  ab0300f0  lui r7, 983040
0013c4  97113200  or r3, r4, r3
0013c8  9f452a00  addli r11, r20, 20
0013cc  97b0c003  sll.d r[2:3], r[2:3], r28
0013d0  97137200  or r7, r4, r7
0013d4  97b2c203  sll.d r[6:7], r[6:7], r28
0013d8  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0013dc  ffb18000  s_lm2gm r3, r8, 0(r[2:3])
0013e0  eb500fc0  load.d r[2:3], -1024(r30)
0013e4  8ba25410  add.ul r[6:7], r[10:11], r[6:7]
0013e8  ab0100f0  lui r3, 983040
0013ec  63041ffb  loadli.w r8,  -632(r30)
0013f0  ffb3b200  s_lm2gm r7, r11, 0(r[6:7])
0013f4  63431ff8  loadli.w r6,  -1012(r30)
0013f8  97113200  or r3, r4, r3
0013fc  9f622a00  addli r5, r20, 22
001400  97b0c003  sll.d r[2:3], r[2:3], r28
001404  b3150428  sext_int2long r[12:13], r8
001408  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
00140c  33130328  sext_int2long r[7:8], r6
001410  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001414  9730c303  sll.d r[2:3], r[7:8], r28
001418  63032ff8  loadli.w r6,  -1008(r30)
00141c  ab0100f0  lui r3, 983040
001420  9f023a00  addli r5, r20, 24
001424  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001428  97113200  or r3, r4, r3
00142c  33130328  sext_int2long r[7:8], r6
001430  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001434  ab0100f0  lui r3, 983040
001438  9f223a00  addli r5, r20, 26
00143c  9730c303  sll.d r[2:3], r[7:8], r28
001440  63432ff8  loadli.w r6,  -1004(r30)
001444  97113200  or r3, r4, r3
001448  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
00144c  33130328  sext_int2long r[7:8], r6
001450  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001454  ab0100f0  lui r3, 983040
001458  9f423a00  addli r5, r20, 28
00145c  9730c303  sll.d r[2:3], r[7:8], r28
001460  63033ff8  loadli.w r6,  -1000(r30)
001464  97113200  or r3, r4, r3
001468  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
00146c  33130328  sext_int2long r[7:8], r6
001470  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001474  ab0100f0  lui r3, 983040
001478  9f623a00  addli r5, r20, 30
00147c  9730c303  sll.d r[2:3], r[7:8], r28
001480  63433ff8  loadli.w r6,  -996(r30)
001484  97113200  or r3, r4, r3
001488  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
00148c  33130328  sext_int2long r[7:8], r6
001490  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001494  ab0100f0  lui r3, 983040
001498  9f024a00  addli r5, r20, 32
00149c  9730c303  sll.d r[2:3], r[7:8], r28
0014a0  63034ff8  loadli.w r6,  -992(r30)
0014a4  97113200  or r3, r4, r3
0014a8  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0014ac  33130328  sext_int2long r[7:8], r6
0014b0  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
0014b4  ab0100f0  lui r3, 983040
0014b8  9f224a00  addli r5, r20, 34
0014bc  9730c303  sll.d r[2:3], r[7:8], r28
0014c0  63434ff8  loadli.w r6,  -988(r30)
0014c4  97113200  or r3, r4, r3
0014c8  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0014cc  33130328  sext_int2long r[7:8], r6
0014d0  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
0014d4  ab0100f0  lui r3, 983040
0014d8  9f424a00  addli r5, r20, 36
0014dc  9730c303  sll.d r[2:3], r[7:8], r28
0014e0  63035ff8  loadli.w r6,  -984(r30)
0014e4  97113200  or r3, r4, r3
0014e8  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0014ec  33130328  sext_int2long r[7:8], r6
0014f0  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
0014f4  ab0100f0  lui r3, 983040
0014f8  9f624a00  addli r5, r20, 38
0014fc  9730c303  sll.d r[2:3], r[7:8], r28
001500  63435ff8  loadli.w r6,  -980(r30)
001504  97113200  or r3, r4, r3
001508  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
00150c  33130328  sext_int2long r[7:8], r6
001510  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001514  ab0100f0  lui r3, 983040
001518  9f025a00  addli r5, r20, 40
00151c  9730c303  sll.d r[2:3], r[7:8], r28
001520  63036ff8  loadli.w r6,  -976(r30)
001524  97113200  or r3, r4, r3
001528  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
00152c  33130328  sext_int2long r[7:8], r6
001530  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001534  ab0100f0  lui r3, 983040
001538  9f225a00  addli r5, r20, 42
00153c  9730c303  sll.d r[2:3], r[7:8], r28
001540  63436ff8  loadli.w r6,  -972(r30)
001544  97113200  or r3, r4, r3
001548  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
00154c  33130328  sext_int2long r[7:8], r6
001550  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001554  ab0100f0  lui r3, 983040
001558  9f425a00  addli r5, r20, 44
00155c  9730c303  sll.d r[2:3], r[7:8], r28
001560  63037ff8  loadli.w r6,  -968(r30)
001564  97113200  or r3, r4, r3
001568  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
00156c  33130328  sext_int2long r[7:8], r6
001570  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001574  ab0100f0  lui r3, 983040
001578  9f625a00  addli r5, r20, 46
00157c  9730c303  sll.d r[2:3], r[7:8], r28
001580  63437ff8  loadli.w r6,  -964(r30)
001584  97113200  or r3, r4, r3
001588  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
00158c  33130328  sext_int2long r[7:8], r6
001590  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001594  ab0100f0  lui r3, 983040
001598  9f026a00  addli r5, r20, 48
00159c  9730c303  sll.d r[2:3], r[7:8], r28
0015a0  63038ff8  loadli.w r6,  -960(r30)
0015a4  97113200  or r3, r4, r3
0015a8  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0015ac  33130328  sext_int2long r[7:8], r6
0015b0  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
0015b4  ab0100f0  lui r3, 983040
0015b8  9f226a00  addli r5, r20, 50
0015bc  9730c303  sll.d r[2:3], r[7:8], r28
0015c0  63438ff8  loadli.w r6,  -956(r30)
0015c4  97113200  or r3, r4, r3
0015c8  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0015cc  33130328  sext_int2long r[7:8], r6
0015d0  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
0015d4  ab0100f0  lui r3, 983040
0015d8  9f426a00  addli r5, r20, 52
0015dc  9730c303  sll.d r[2:3], r[7:8], r28
0015e0  63039ff8  loadli.w r6,  -952(r30)
0015e4  97113200  or r3, r4, r3
0015e8  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0015ec  33130328  sext_int2long r[7:8], r6
0015f0  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
0015f4  ab0100f0  lui r3, 983040
0015f8  9f626a00  addli r5, r20, 54
0015fc  9730c303  sll.d r[2:3], r[7:8], r28
001600  63439ff8  loadli.w r6,  -948(r30)
001604  97113200  or r3, r4, r3
001608  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
00160c  33130328  sext_int2long r[7:8], r6
001610  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001614  ab0100f0  lui r3, 983040
001618  9f027a00  addli r5, r20, 56
00161c  9730c303  sll.d r[2:3], r[7:8], r28
001620  6303aff8  loadli.w r6,  -944(r30)
001624  97113200  or r3, r4, r3
001628  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
00162c  33130328  sext_int2long r[7:8], r6
001630  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001634  ab0100f0  lui r3, 983040
001638  9f227a00  addli r5, r20, 58
00163c  9730c303  sll.d r[2:3], r[7:8], r28
001640  6343aff8  loadli.w r6,  -940(r30)
001644  97113200  or r3, r4, r3
001648  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
00164c  33130328  sext_int2long r[7:8], r6
001650  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001654  ab0100f0  lui r3, 983040
001658  9f427a00  addli r5, r20, 60
00165c  9730c303  sll.d r[2:3], r[7:8], r28
001660  6303bff8  loadli.w r6,  -936(r30)
001664  97113200  or r3, r4, r3
001668  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
00166c  33130328  sext_int2long r[7:8], r6
001670  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001674  ab0100f0  lui r3, 983040
001678  9f627a00  addli r5, r20, 62
00167c  9730c303  sll.d r[2:3], r[7:8], r28
001680  6343bff8  loadli.w r6,  -932(r30)
001684  97113200  or r3, r4, r3
001688  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
00168c  33130328  sext_int2long r[7:8], r6
001690  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001694  ab0100f0  lui r3, 983040
001698  9f028a00  addli r5, r20, 64
00169c  9730c303  sll.d r[2:3], r[7:8], r28
0016a0  6303cff8  loadli.w r6,  -928(r30)
0016a4  97113200  or r3, r4, r3
0016a8  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0016ac  33130328  sext_int2long r[7:8], r6
0016b0  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
0016b4  ab0100f0  lui r3, 983040
0016b8  9f228a00  addli r5, r20, 66
0016bc  9730c303  sll.d r[2:3], r[7:8], r28
0016c0  6343cff8  loadli.w r6,  -924(r30)
0016c4  97113200  or r3, r4, r3
0016c8  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0016cc  33130328  sext_int2long r[7:8], r6
0016d0  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
0016d4  ab0100f0  lui r3, 983040
0016d8  9f428a00  addli r5, r20, 68
0016dc  9730c303  sll.d r[2:3], r[7:8], r28
0016e0  6303dff8  loadli.w r6,  -920(r30)
0016e4  97113200  or r3, r4, r3
0016e8  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0016ec  33130328  sext_int2long r[7:8], r6
0016f0  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
0016f4  ab0100f0  lui r3, 983040
0016f8  9f628a00  addli r5, r20, 70
0016fc  9730c303  sll.d r[2:3], r[7:8], r28
001700  6343dff8  loadli.w r6,  -916(r30)
001704  97113200  or r3, r4, r3
001708  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
00170c  33130328  sext_int2long r[7:8], r6
001710  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001714  ab0100f0  lui r3, 983040
001718  9f029a00  addli r5, r20, 72
00171c  9730c303  sll.d r[2:3], r[7:8], r28
001720  6303eff8  loadli.w r6,  -912(r30)
001724  97113200  or r3, r4, r3
001728  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
00172c  33130328  sext_int2long r[7:8], r6
001730  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001734  ab0100f0  lui r3, 983040
001738  9f229a00  addli r5, r20, 74
00173c  9730c303  sll.d r[2:3], r[7:8], r28
001740  6343eff8  loadli.w r6,  -908(r30)
001744  97113200  or r3, r4, r3
001748  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
00174c  33130328  sext_int2long r[7:8], r6
001750  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001754  ab0100f0  lui r3, 983040
001758  9f429a00  addli r5, r20, 76
00175c  9730c303  sll.d r[2:3], r[7:8], r28
001760  6303fff8  loadli.w r6,  -904(r30)
001764  97113200  or r3, r4, r3
001768  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
00176c  33130328  sext_int2long r[7:8], r6
001770  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001774  ab0100f0  lui r3, 983040
001778  9f629a00  addli r5, r20, 78
00177c  9730c303  sll.d r[2:3], r[7:8], r28
001780  6343fff8  loadli.w r6,  -900(r30)
001784  97113200  or r3, r4, r3
001788  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
00178c  33130328  sext_int2long r[7:8], r6
001790  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001794  ab0100f0  lui r3, 983040
001798  9f02aa00  addli r5, r20, 80
00179c  9730c303  sll.d r[2:3], r[7:8], r28
0017a0  63030ff9  loadli.w r6,  -896(r30)
0017a4  97113200  or r3, r4, r3
0017a8  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0017ac  33130328  sext_int2long r[7:8], r6
0017b0  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
0017b4  ab0100f0  lui r3, 983040
0017b8  9f22aa00  addli r5, r20, 82
0017bc  9730c303  sll.d r[2:3], r[7:8], r28
0017c0  63430ff9  loadli.w r6,  -892(r30)
0017c4  97113200  or r3, r4, r3
0017c8  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0017cc  33130328  sext_int2long r[7:8], r6
0017d0  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
0017d4  ab0100f0  lui r3, 983040
0017d8  9f42aa00  addli r5, r20, 84
0017dc  9730c303  sll.d r[2:3], r[7:8], r28
0017e0  63031ff9  loadli.w r6,  -888(r30)
0017e4  97113200  or r3, r4, r3
0017e8  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0017ec  33130328  sext_int2long r[7:8], r6
0017f0  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
0017f4  ab0100f0  lui r3, 983040
0017f8  9f62aa00  addli r5, r20, 86
0017fc  9730c303  sll.d r[2:3], r[7:8], r28
001800  63431ff9  loadli.w r6,  -884(r30)
001804  97113200  or r3, r4, r3
001808  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
00180c  33130328  sext_int2long r[7:8], r6
001810  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001814  ab0100f0  lui r3, 983040
001818  9f02ba00  addli r5, r20, 88
00181c  9730c303  sll.d r[2:3], r[7:8], r28
001820  63032ff9  loadli.w r6,  -880(r30)
001824  97113200  or r3, r4, r3
001828  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
00182c  33130328  sext_int2long r[7:8], r6
001830  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001834  ab0100f0  lui r3, 983040
001838  9f22ba00  addli r5, r20, 90
00183c  9730c303  sll.d r[2:3], r[7:8], r28
001840  63432ff9  loadli.w r6,  -876(r30)
001844  97113200  or r3, r4, r3
001848  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
00184c  33130328  sext_int2long r[7:8], r6
001850  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001854  ab0100f0  lui r3, 983040
001858  9f42ba00  addli r5, r20, 92
00185c  9730c303  sll.d r[2:3], r[7:8], r28
001860  63033ff9  loadli.w r6,  -872(r30)
001864  97113200  or r3, r4, r3
001868  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
00186c  33130328  sext_int2long r[7:8], r6
001870  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001874  ab0100f0  lui r3, 983040
001878  9f62ba00  addli r5, r20, 94
00187c  9730c303  sll.d r[2:3], r[7:8], r28
001880  63433ff9  loadli.w r6,  -868(r30)
001884  97113200  or r3, r4, r3
001888  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
00188c  33130328  sext_int2long r[7:8], r6
001890  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001894  ab0100f0  lui r3, 983040
001898  9f02ca00  addli r5, r20, 96
00189c  9730c303  sll.d r[2:3], r[7:8], r28
0018a0  63034ff9  loadli.w r6,  -864(r30)
0018a4  97113200  or r3, r4, r3
0018a8  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0018ac  33130328  sext_int2long r[7:8], r6
0018b0  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
0018b4  ab0100f0  lui r3, 983040
0018b8  9f22ca00  addli r5, r20, 98
0018bc  9730c303  sll.d r[2:3], r[7:8], r28
0018c0  63434ff9  loadli.w r6,  -860(r30)
0018c4  97113200  or r3, r4, r3
0018c8  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0018cc  33130328  sext_int2long r[7:8], r6
0018d0  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
0018d4  ab0100f0  lui r3, 983040
0018d8  9f42ca00  addli r5, r20, 100
0018dc  9730c303  sll.d r[2:3], r[7:8], r28
0018e0  63035ff9  loadli.w r6,  -856(r30)
0018e4  97113200  or r3, r4, r3
0018e8  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0018ec  33130328  sext_int2long r[7:8], r6
0018f0  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
0018f4  ab0100f0  lui r3, 983040
0018f8  9f62ca00  addli r5, r20, 102
0018fc  9730c303  sll.d r[2:3], r[7:8], r28
001900  63435ff9  loadli.w r6,  -852(r30)
001904  97113200  or r3, r4, r3
001908  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
00190c  33130328  sext_int2long r[7:8], r6
001910  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001914  ab0100f0  lui r3, 983040
001918  9f02da00  addli r5, r20, 104
00191c  9730c303  sll.d r[2:3], r[7:8], r28
001920  63036ff9  loadli.w r6,  -848(r30)
001924  97113200  or r3, r4, r3
001928  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
00192c  33130328  sext_int2long r[7:8], r6
001930  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001934  ab0100f0  lui r3, 983040
001938  9f22da00  addli r5, r20, 106
00193c  9730c303  sll.d r[2:3], r[7:8], r28
001940  63436ff9  loadli.w r6,  -844(r30)
001944  97113200  or r3, r4, r3
001948  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
00194c  33130328  sext_int2long r[7:8], r6
001950  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001954  ab0100f0  lui r3, 983040
001958  9f42da00  addli r5, r20, 108
00195c  9730c303  sll.d r[2:3], r[7:8], r28
001960  63037ff9  loadli.w r6,  -840(r30)
001964  97113200  or r3, r4, r3
001968  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
00196c  33130328  sext_int2long r[7:8], r6
001970  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001974  ab0100f0  lui r3, 983040
001978  9f62da00  addli r5, r20, 110
00197c  9730c303  sll.d r[2:3], r[7:8], r28
001980  63437ff9  loadli.w r6,  -836(r30)
001984  97113200  or r3, r4, r3
001988  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
00198c  33130328  sext_int2long r[7:8], r6
001990  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001994  ab0100f0  lui r3, 983040
001998  9f02ea00  addli r5, r20, 112
00199c  9730c303  sll.d r[2:3], r[7:8], r28
0019a0  63038ff9  loadli.w r6,  -832(r30)
0019a4  97113200  or r3, r4, r3
0019a8  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0019ac  33130328  sext_int2long r[7:8], r6
0019b0  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
0019b4  ab0100f0  lui r3, 983040
0019b8  9f22ea00  addli r5, r20, 114
0019bc  9730c303  sll.d r[2:3], r[7:8], r28
0019c0  63438ff9  loadli.w r6,  -828(r30)
0019c4  97113200  or r3, r4, r3
0019c8  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0019cc  33130328  sext_int2long r[7:8], r6
0019d0  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
0019d4  ab0100f0  lui r3, 983040
0019d8  9f42ea00  addli r5, r20, 116
0019dc  9730c303  sll.d r[2:3], r[7:8], r28
0019e0  63039ff9  loadli.w r6,  -824(r30)
0019e4  97113200  or r3, r4, r3
0019e8  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0019ec  33130328  sext_int2long r[7:8], r6
0019f0  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
0019f4  ab0100f0  lui r3, 983040
0019f8  9f62ea00  addli r5, r20, 118
0019fc  9730c303  sll.d r[2:3], r[7:8], r28
001a00  63439ff9  loadli.w r6,  -820(r30)
001a04  97113200  or r3, r4, r3
001a08  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001a0c  33130328  sext_int2long r[7:8], r6
001a10  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001a14  ab0100f0  lui r3, 983040
001a18  9f02fa00  addli r5, r20, 120
001a1c  9730c303  sll.d r[2:3], r[7:8], r28
001a20  6303aff9  loadli.w r6,  -816(r30)
001a24  97113200  or r3, r4, r3
001a28  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001a2c  33130328  sext_int2long r[7:8], r6
001a30  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001a34  ab0100f0  lui r3, 983040
001a38  9f22fa00  addli r5, r20, 122
001a3c  9730c303  sll.d r[2:3], r[7:8], r28
001a40  6343aff9  loadli.w r6,  -812(r30)
001a44  97113200  or r3, r4, r3
001a48  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001a4c  33130328  sext_int2long r[7:8], r6
001a50  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001a54  ab0100f0  lui r3, 983040
001a58  9f42fa00  addli r5, r20, 124
001a5c  9730c303  sll.d r[2:3], r[7:8], r28
001a60  6303bff9  loadli.w r6,  -808(r30)
001a64  97113200  or r3, r4, r3
001a68  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001a6c  33130328  sext_int2long r[7:8], r6
001a70  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001a74  ab0100f0  lui r3, 983040
001a78  9f62fa00  addli r5, r20, 126
001a7c  9730c303  sll.d r[2:3], r[7:8], r28
001a80  6343bff9  loadli.w r6,  -804(r30)
001a84  97113200  or r3, r4, r3
001a88  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001a8c  33130328  sext_int2long r[7:8], r6
001a90  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001a94  ab0100f0  lui r3, 983040
001a98  9f020a01  addli r5, r20, 128
001a9c  9730c303  sll.d r[2:3], r[7:8], r28
001aa0  6303cff9  loadli.w r6,  -800(r30)
001aa4  97113200  or r3, r4, r3
001aa8  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001aac  33130328  sext_int2long r[7:8], r6
001ab0  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001ab4  ab0100f0  lui r3, 983040
001ab8  9f220a01  addli r5, r20, 130
001abc  9730c303  sll.d r[2:3], r[7:8], r28
001ac0  6343cff9  loadli.w r6,  -796(r30)
001ac4  97113200  or r3, r4, r3
001ac8  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001acc  33130328  sext_int2long r[7:8], r6
001ad0  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001ad4  ab0100f0  lui r3, 983040
001ad8  9f420a01  addli r5, r20, 132
001adc  9730c303  sll.d r[2:3], r[7:8], r28
001ae0  6303dff9  loadli.w r6,  -792(r30)
001ae4  97113200  or r3, r4, r3
001ae8  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001aec  33130328  sext_int2long r[7:8], r6
001af0  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001af4  ab0100f0  lui r3, 983040
001af8  9f620a01  addli r5, r20, 134
001afc  9730c303  sll.d r[2:3], r[7:8], r28
001b00  6343dff9  loadli.w r6,  -788(r30)
001b04  97113200  or r3, r4, r3
001b08  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001b0c  33130328  sext_int2long r[7:8], r6
001b10  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001b14  ab0100f0  lui r3, 983040
001b18  9f021a01  addli r5, r20, 136
001b1c  9730c303  sll.d r[2:3], r[7:8], r28
001b20  6303eff9  loadli.w r6,  -784(r30)
001b24  97113200  or r3, r4, r3
001b28  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001b2c  33130328  sext_int2long r[7:8], r6
001b30  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001b34  ab0100f0  lui r3, 983040
001b38  9f221a01  addli r5, r20, 138
001b3c  9730c303  sll.d r[2:3], r[7:8], r28
001b40  6343eff9  loadli.w r6,  -780(r30)
001b44  97113200  or r3, r4, r3
001b48  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001b4c  33130328  sext_int2long r[7:8], r6
001b50  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001b54  ab0100f0  lui r3, 983040
001b58  9f421a01  addli r5, r20, 140
001b5c  9730c303  sll.d r[2:3], r[7:8], r28
001b60  6303fff9  loadli.w r6,  -776(r30)
001b64  97113200  or r3, r4, r3
001b68  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001b6c  33130328  sext_int2long r[7:8], r6
001b70  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001b74  ab0100f0  lui r3, 983040
001b78  9f621a01  addli r5, r20, 142
001b7c  9730c303  sll.d r[2:3], r[7:8], r28
001b80  6343fff9  loadli.w r6,  -772(r30)
001b84  97113200  or r3, r4, r3
001b88  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001b8c  33130328  sext_int2long r[7:8], r6
001b90  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001b94  ab0100f0  lui r3, 983040
001b98  9f022a01  addli r5, r20, 144
001b9c  9730c303  sll.d r[2:3], r[7:8], r28
001ba0  63030ffa  loadli.w r6,  -768(r30)
001ba4  97113200  or r3, r4, r3
001ba8  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001bac  33130328  sext_int2long r[7:8], r6
001bb0  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001bb4  ab0100f0  lui r3, 983040
001bb8  9f222a01  addli r5, r20, 146
001bbc  9730c303  sll.d r[2:3], r[7:8], r28
001bc0  63430ffa  loadli.w r6,  -764(r30)
001bc4  97113200  or r3, r4, r3
001bc8  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001bcc  33130328  sext_int2long r[7:8], r6
001bd0  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001bd4  ab0100f0  lui r3, 983040
001bd8  9f422a01  addli r5, r20, 148
001bdc  9730c303  sll.d r[2:3], r[7:8], r28
001be0  63031ffa  loadli.w r6,  -760(r30)
001be4  97113200  or r3, r4, r3
001be8  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001bec  33130328  sext_int2long r[7:8], r6
001bf0  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001bf4  ab0100f0  lui r3, 983040
001bf8  9f622a01  addli r5, r20, 150
001bfc  9730c303  sll.d r[2:3], r[7:8], r28
001c00  63431ffa  loadli.w r6,  -756(r30)
001c04  97113200  or r3, r4, r3
001c08  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001c0c  33130328  sext_int2long r[7:8], r6
001c10  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001c14  ab0100f0  lui r3, 983040
001c18  9f023a01  addli r5, r20, 152
001c1c  9730c303  sll.d r[2:3], r[7:8], r28
001c20  63032ffa  loadli.w r6,  -752(r30)
001c24  97113200  or r3, r4, r3
001c28  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001c2c  33130328  sext_int2long r[7:8], r6
001c30  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001c34  ab0100f0  lui r3, 983040
001c38  9f223a01  addli r5, r20, 154
001c3c  9730c303  sll.d r[2:3], r[7:8], r28
001c40  63432ffa  loadli.w r6,  -748(r30)
001c44  97113200  or r3, r4, r3
001c48  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001c4c  33130328  sext_int2long r[7:8], r6
001c50  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001c54  ab0100f0  lui r3, 983040
001c58  9f423a01  addli r5, r20, 156
001c5c  9730c303  sll.d r[2:3], r[7:8], r28
001c60  63033ffa  loadli.w r6,  -744(r30)
001c64  97113200  or r3, r4, r3
001c68  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001c6c  33130328  sext_int2long r[7:8], r6
001c70  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001c74  ab0100f0  lui r3, 983040
001c78  9f623a01  addli r5, r20, 158
001c7c  9730c303  sll.d r[2:3], r[7:8], r28
001c80  63433ffa  loadli.w r6,  -740(r30)
001c84  97113200  or r3, r4, r3
001c88  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001c8c  33130328  sext_int2long r[7:8], r6
001c90  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001c94  ab0100f0  lui r3, 983040
001c98  9f024a01  addli r5, r20, 160
001c9c  9730c303  sll.d r[2:3], r[7:8], r28
001ca0  63034ffa  loadli.w r6,  -736(r30)
001ca4  97113200  or r3, r4, r3
001ca8  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001cac  33130328  sext_int2long r[7:8], r6
001cb0  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001cb4  ab0100f0  lui r3, 983040
001cb8  9f224a01  addli r5, r20, 162
001cbc  9730c303  sll.d r[2:3], r[7:8], r28
001cc0  63434ffa  loadli.w r6,  -732(r30)
001cc4  97113200  or r3, r4, r3
001cc8  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001ccc  33130328  sext_int2long r[7:8], r6
001cd0  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001cd4  ab0100f0  lui r3, 983040
001cd8  9f424a01  addli r5, r20, 164
001cdc  9730c303  sll.d r[2:3], r[7:8], r28
001ce0  63035ffa  loadli.w r6,  -728(r30)
001ce4  97113200  or r3, r4, r3
001ce8  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001cec  33130328  sext_int2long r[7:8], r6
001cf0  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001cf4  ab0100f0  lui r3, 983040
001cf8  9f624a01  addli r5, r20, 166
001cfc  9730c303  sll.d r[2:3], r[7:8], r28
001d00  63435ffa  loadli.w r6,  -724(r30)
001d04  97113200  or r3, r4, r3
001d08  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001d0c  33130328  sext_int2long r[7:8], r6
001d10  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001d14  ab0100f0  lui r3, 983040
001d18  9f025a01  addli r5, r20, 168
001d1c  9730c303  sll.d r[2:3], r[7:8], r28
001d20  63036ffa  loadli.w r6,  -720(r30)
001d24  97113200  or r3, r4, r3
001d28  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001d2c  33130328  sext_int2long r[7:8], r6
001d30  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001d34  ab0100f0  lui r3, 983040
001d38  9f225a01  addli r5, r20, 170
001d3c  9730c303  sll.d r[2:3], r[7:8], r28
001d40  63436ffa  loadli.w r6,  -716(r30)
001d44  97113200  or r3, r4, r3
001d48  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001d4c  33130328  sext_int2long r[7:8], r6
001d50  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001d54  ab0100f0  lui r3, 983040
001d58  9f425a01  addli r5, r20, 172
001d5c  9730c303  sll.d r[2:3], r[7:8], r28
001d60  63037ffa  loadli.w r6,  -712(r30)
001d64  97113200  or r3, r4, r3
001d68  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001d6c  33130328  sext_int2long r[7:8], r6
001d70  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001d74  ab0100f0  lui r3, 983040
001d78  9f625a01  addli r5, r20, 174
001d7c  9730c303  sll.d r[2:3], r[7:8], r28
001d80  63437ffa  loadli.w r6,  -708(r30)
001d84  97113200  or r3, r4, r3
001d88  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001d8c  33130328  sext_int2long r[7:8], r6
001d90  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001d94  ab0100f0  lui r3, 983040
001d98  9f026a01  addli r5, r20, 176
001d9c  9730c303  sll.d r[2:3], r[7:8], r28
001da0  63038ffa  loadli.w r6,  -704(r30)
001da4  97113200  or r3, r4, r3
001da8  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001dac  33130328  sext_int2long r[7:8], r6
001db0  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001db4  ab0100f0  lui r3, 983040
001db8  9f226a01  addli r5, r20, 178
001dbc  9730c303  sll.d r[2:3], r[7:8], r28
001dc0  63438ffa  loadli.w r6,  -700(r30)
001dc4  97113200  or r3, r4, r3
001dc8  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001dcc  33130328  sext_int2long r[7:8], r6
001dd0  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001dd4  ab0100f0  lui r3, 983040
001dd8  9f426a01  addli r5, r20, 180
001ddc  9730c303  sll.d r[2:3], r[7:8], r28
001de0  63439ffa  loadli.w r6,  -692(r30)
001de4  97113200  or r3, r4, r3
001de8  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001dec  33130328  sext_int2long r[7:8], r6
001df0  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001df4  ab0100f0  lui r3, 983040
001df8  9f626a01  addli r5, r20, 182
001dfc  9730c303  sll.d r[2:3], r[7:8], r28
001e00  6303affa  loadli.w r6,  -688(r30)
001e04  97113200  or r3, r4, r3
001e08  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001e0c  33130328  sext_int2long r[7:8], r6
001e10  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001e14  ab0100f0  lui r3, 983040
001e18  9f027a01  addli r5, r20, 184
001e1c  9730c303  sll.d r[2:3], r[7:8], r28
001e20  6343affa  loadli.w r6,  -684(r30)
001e24  97113200  or r3, r4, r3
001e28  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001e2c  33130328  sext_int2long r[7:8], r6
001e30  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001e34  ab0100f0  lui r3, 983040
001e38  9f227a01  addli r5, r20, 186
001e3c  9730c303  sll.d r[2:3], r[7:8], r28
001e40  6303bffa  loadli.w r6,  -680(r30)
001e44  97113200  or r3, r4, r3
001e48  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001e4c  33130328  sext_int2long r[7:8], r6
001e50  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001e54  ab0100f0  lui r3, 983040
001e58  9f427a01  addli r5, r20, 188
001e5c  9730c303  sll.d r[2:3], r[7:8], r28
001e60  6343bffa  loadli.w r6,  -676(r30)
001e64  97113200  or r3, r4, r3
001e68  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001e6c  33130328  sext_int2long r[7:8], r6
001e70  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001e74  ab0100f0  lui r3, 983040
001e78  9f627a01  addli r5, r20, 190
001e7c  9730c303  sll.d r[2:3], r[7:8], r28
001e80  6303cffa  loadli.w r6,  -672(r30)
001e84  97113200  or r3, r4, r3
001e88  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001e8c  33130328  sext_int2long r[7:8], r6
001e90  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001e94  ab0100f0  lui r3, 983040
001e98  9f028a01  addli r5, r20, 192
001e9c  9730c303  sll.d r[2:3], r[7:8], r28
001ea0  6343cffa  loadli.w r6,  -668(r30)
001ea4  97113200  or r3, r4, r3
001ea8  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001eac  33130328  sext_int2long r[7:8], r6
001eb0  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001eb4  ab0100f0  lui r3, 983040
001eb8  9f228a01  addli r5, r20, 194
001ebc  9730c303  sll.d r[2:3], r[7:8], r28
001ec0  6303dffa  loadli.w r6,  -664(r30)
001ec4  97113200  or r3, r4, r3
001ec8  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001ecc  33130328  sext_int2long r[7:8], r6
001ed0  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001ed4  ab0100f0  lui r3, 983040
001ed8  9f428a01  addli r5, r20, 196
001edc  9730c303  sll.d r[2:3], r[7:8], r28
001ee0  6343dffa  loadli.w r6,  -660(r30)
001ee4  97113200  or r3, r4, r3
001ee8  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001eec  33130328  sext_int2long r[7:8], r6
001ef0  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001ef4  ab0100f0  lui r3, 983040
001ef8  9f628a01  addli r5, r20, 198
001efc  9730c303  sll.d r[2:3], r[7:8], r28
001f00  6303effa  loadli.w r6,  -656(r30)
001f04  97113200  or r3, r4, r3
001f08  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001f0c  33130328  sext_int2long r[7:8], r6
001f10  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001f14  ab0100f0  lui r3, 983040
001f18  9f029a01  addli r5, r20, 200
001f1c  9730c303  sll.d r[2:3], r[7:8], r28
001f20  6343effa  loadli.w r6,  -652(r30)
001f24  97113200  or r3, r4, r3
001f28  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001f2c  33130328  sext_int2long r[7:8], r6
001f30  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001f34  e302fffa  loadli.w r5,  -648(r30)
001f38  ab0100f0  lui r3, 983040
001f3c  9730c303  sll.d r[2:3], r[7:8], r28
001f40  9f239a01  addli r7, r20, 202
001f44  97113200  or r3, r4, r3
001f48  b3920228  sext_int2long r[6:7], r5
001f4c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001f50  97b2c203  sll.d r[6:7], r[6:7], r28
001f54  ffb17000  s_lm2gm r3, r7, 0(r[2:3])
001f58  ab0100f0  lui r3, 983040
001f5c  8ba05410  add.ul r[2:3], r[10:11], r[6:7]
001f60  6343fffa  loadli.w r6,  -644(r30)
001f64  9f429a01  addli r5, r20, 204
001f68  97113200  or r3, r4, r3
001f6c  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001f70  ab0100f0  lui r3, 983040
001f74  33130328  sext_int2long r[7:8], r6
001f78  97113200  or r3, r4, r3
001f7c  9730c303  sll.d r[2:3], r[7:8], r28
001f80  eb520fdf  load.d r[6:7], -528(r30)
001f84  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001f88  8ba25410  add.ul r[6:7], r[10:11], r[6:7]
001f8c  73385fde  store.d r[6:7], -528(r30)
001f90  63030ffb  loadli.w r6,  -640(r30)
001f94  9f629a01  addli r5, r20, 206
001f98  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
001f9c  ab0100f0  lui r3, 983040
001fa0  e3400ffb  loadli.w r1,  -636(r30)
001fa4  33130328  sext_int2long r[7:8], r6
001fa8  97113200  or r3, r4, r3
001fac  9732c303  sll.d r[6:7], r[7:8], r28
001fb0  9f03aa01  addli r7, r20, 208
001fb4  b3900028  sext_int2long r[2:3], r1
001fb8  8ba25410  add.ul r[6:7], r[10:11], r[6:7]
001fbc  97b0c003  sll.d r[2:3], r[2:3], r28
001fc0  ffb17200  s_lm2gm r3, r7, 0(r[6:7])
001fc4  e3411ffb  loadli.w r3,  -628(r30)
001fc8  97b3c503  sll.d r[8:9], r[12:13], r28
001fcc  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001fd0  9f25aa01  addli r11, r20, 210
001fd4  63062ffb  loadli.w r12,  -624(r30)
001fd8  8ba37410  add.ul r[8:9], r[10:11], r[8:9]
001fdc  b3920128  sext_int2long r[6:7], r3
001fe0  ab0100f0  lui r3, 983040
001fe4  33160628  sext_int2long r[13:14], r12
001fe8  97113200  or r3, r4, r3
001fec  97b2c203  sll.d r[6:7], r[6:7], r28
001ff0  ffb1b000  s_lm2gm r3, r11, 0(r[2:3])
001ff4  e3402ffb  loadli.w r1,  -620(r30)
001ff8  9735c603  sll.d r[12:13], r[13:14], r28
001ffc  8ba25410  add.ul r[6:7], r[10:11], r[6:7]
002000  e3013ffb  loadli.w r3,  -616(r30)
002004  8ba5b410  add.ul r[12:13], r[10:11], r[12:13]
002008  b3900028  sext_int2long r[2:3], r1
00200c  b3970128  sext_int2long r[16:17], r3
002010  e3014ffb  loadli.w r3,  -608(r30)
002014  97b0c003  sll.d r[2:3], r[2:3], r28
002018  8ba61410  add.ul r[14:15], r[10:11], r[2:3]
00201c  ab0000f0  lui r1, 983040
002020  1f41aa01  addli r2, r20, 212
002024  97101200  or r1, r4, r1
002028  ffb02300  s_lm2gm r1, r2, 0(r[8:9])
00202c  e3403ffb  loadli.w r1,  -612(r30)
002030  97b3c703  sll.d r[8:9], r[16:17], r28
002034  9f27ba01  addli r15, r20, 218
002038  8ba87410  add.ul r[18:19], r[10:11], r[8:9]
00203c  b3930128  sext_int2long r[8:9], r3
002040  e3015ffb  loadli.w r3,  -600(r30)
002044  b3900028  sext_int2long r[2:3], r1
002048  97b0c003  sll.d r[2:3], r[2:3], r28
00204c  8bab1410  add.ul r[24:25], r[10:11], r[2:3]
002050  ab0000f0  lui r1, 983040
002054  1f61aa01  addli r2, r20, 214
002058  97101200  or r1, r4, r1
00205c  ffb02200  s_lm2gm r1, r2, 0(r[6:7])
002060  e3404ffb  loadli.w r1,  -604(r30)
002064  97b2c303  sll.d r[6:7], r[8:9], r28
002068  b3930128  sext_int2long r[8:9], r3
00206c  ab0100f0  lui r3, 983040
002070  97b3c303  sll.d r[8:9], r[8:9], r28
002074  8baa5410  add.ul r[22:23], r[10:11], r[6:7]
002078  97113200  or r3, r4, r3
00207c  b3900028  sext_int2long r[2:3], r1
002080  8ba27410  add.ul r[6:7], r[10:11], r[8:9]
002084  ffb1f600  s_lm2gm r3, r15, 0(r[14:15])
002088  ab0100f0  lui r3, 983040
00208c  97b0c003  sll.d r[2:3], r[2:3], r28
002090  97113200  or r3, r4, r3
002094  8bac1410  add.ul r[26:27], r[10:11], r[2:3]
002098  ab0000f0  lui r1, 983040
00209c  1f01ba01  addli r2, r20, 216
0020a0  97101200  or r1, r4, r1
0020a4  ffb02500  s_lm2gm r1, r2, 0(r[12:13])
0020a8  e3405ffb  loadli.w r1,  -596(r30)
0020ac  b3900028  sext_int2long r[2:3], r1
0020b0  97b5c003  sll.d r[12:13], r[2:3], r28
0020b4  e3006ffb  loadli.w r1,  -592(r30)
0020b8  8ba3b410  add.ul r[8:9], r[10:11], r[12:13]
0020bc  b3950028  sext_int2long r[12:13], r1
0020c0  e3406ffb  loadli.w r1,  -588(r30)
0020c4  97b5c503  sll.d r[12:13], r[12:13], r28
0020c8  b3970028  sext_int2long r[16:17], r1
0020cc  e3007ffb  loadli.w r1,  -584(r30)
0020d0  8ba6b410  add.ul r[14:15], r[10:11], r[12:13]
0020d4  97b5c703  sll.d r[12:13], r[16:17], r28
0020d8  b3900028  sext_int2long r[2:3], r1
0020dc  8ba7b410  add.ul r[16:17], r[10:11], r[12:13]
0020e0  9f45ba01  addli r11, r20, 220
0020e4  97b0c003  sll.d r[2:3], r[2:3], r28
0020e8  ffb1b800  s_lm2gm r3, r11, 0(r[18:19])
0020ec  e3418ffb  loadli.w r3,  -572(r30)
0020f0  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0020f4  733c1fda  store.d r[2:3], -584(r30)
0020f8  e3009ffb  loadli.w r1,  -568(r30)
0020fc  b3950128  sext_int2long r[12:13], r3
002100  ab0100f0  lui r3, 983040
002104  97b5c503  sll.d r[12:13], r[12:13], r28
002108  97113200  or r3, r4, r3
00210c  b3900028  sext_int2long r[2:3], r1
002110  97b0c003  sll.d r[2:3], r[2:3], r28
002114  8ba81410  add.ul r[18:19], r[10:11], r[2:3]
002118  8ba0b410  add.ul r[2:3], r[10:11], r[12:13]
00211c  9f65ba01  addli r11, r20, 222
002120  73341fdc  store.d r[2:3], -568(r30)
002124  e300affb  loadli.w r1,  -560(r30)
002128  b3900028  sext_int2long r[2:3], r1
00212c  97b0c003  sll.d r[2:3], r[2:3], r28
002130  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
002134  73381fdc  store.d r[2:3], -560(r30)
002138  eb500fdf  load.d r[2:3], -528(r30)
00213c  ffb14001  s_lm2gm r3, r20, 0(r[2:3])
002140  ab0100f0  lui r3, 983040
002144  e300bffb  loadli.w r1,  -552(r30)
002148  97113200  or r3, r4, r3
00214c  b3900028  sext_int2long r[2:3], r1
002150  ffb1bb00  s_lm2gm r3, r11, 0(r[24:25])
002154  e341bffb  loadli.w r3,  -548(r30)
002158  9f0bca01  addli r23, r20, 224
00215c  97b0c003  sll.d r[2:3], r[2:3], r28
002160  b3950128  sext_int2long r[12:13], r3
002164  ab0100f0  lui r3, 983040
002168  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
00216c  97113200  or r3, r4, r3
002170  73381fde  store.d r[2:3], -528(r30)
002174  97b0c503  sll.d r[2:3], r[12:13], r28
002178  ffb17a01  s_lm2gm r3, r23, 0(r[22:23])
00217c  ab0100f0  lui r3, 983040
002180  8ba51410  add.ul r[12:13], r[10:11], r[2:3]
002184  e300cffb  loadli.w r1,  -544(r30)
002188  9f2aca01  addli r21, r20, 226
00218c  97113200  or r3, r4, r3
002190  b3900028  sext_int2long r[2:3], r1
002194  ffb15c01  s_lm2gm r3, r21, 0(r[26:27])
002198  e341cffb  loadli.w r3,  -540(r30)
00219c  9f4cca01  addli r25, r20, 228
0021a0  97b0c003  sll.d r[2:3], r[2:3], r28
0021a4  b39b0128  sext_int2long r[24:25], r3
0021a8  8baa1410  add.ul r[22:23], r[10:11], r[2:3]
0021ac  ab0100f0  lui r3, 983040
0021b0  97b0cb03  sll.d r[2:3], r[24:25], r28
0021b4  97113200  or r3, r4, r3
0021b8  8bab1410  add.ul r[24:25], r[10:11], r[2:3]
0021bc  ab0000f0  lui r1, 983040
0021c0  1f61ca01  addli r2, r20, 230
0021c4  ffb19201  s_lm2gm r3, r25, 0(r[6:7])
0021c8  e301dffb  loadli.w r3,  -536(r30)
0021cc  9f2cda01  addli r25, r20, 234
0021d0  97101200  or r1, r4, r1
0021d4  b3920128  sext_int2long r[6:7], r3
0021d8  ab0100f0  lui r3, 983040
0021dc  ffb02300  s_lm2gm r1, r2, 0(r[8:9])
0021e0  e340dffb  loadli.w r1,  -532(r30)
0021e4  97b2c203  sll.d r[6:7], r[6:7], r28
0021e8  97113200  or r3, r4, r3
0021ec  b3900028  sext_int2long r[2:3], r1
0021f0  97b3c003  sll.d r[8:9], r[2:3], r28
0021f4  8ba05410  add.ul r[2:3], r[10:11], r[6:7]
0021f8  8ba27410  add.ul r[6:7], r[10:11], r[8:9]
0021fc  2b0400f0  lui r8, 983040
002200  9f03da01  addli r7, r20, 232
002204  17148200  or r8, r4, r8
002208  ffb17600  s_lm2gm r3, r7, 0(r[14:15])
00220c  ab0100f0  lui r3, 983040
002210  9f43da01  addli r7, r20, 236
002214  9f66da01  addli r13, r20, 238
002218  7fb49701  s_lm2gm r8, r25, 0(r[16:17])
00221c  6b578fdb  load.d r[15:16], -584(r30)
002220  97113200  or r3, r4, r3
002224  2b0400f0  lui r8, 983040
002228  17148200  or r8, r4, r8
00222c  ff317700  s_lm2gm r3, r7, 0(r[15:16])
002230  ab0100f0  lui r3, 983040
002234  6b578fdc  load.d r[15:16], -568(r30)
002238  9f03ea01  addli r7, r20, 240
00223c  7fb4d800  s_lm2gm r8, r13, 0(r[18:19])
002240  2b0400f0  lui r8, 983040
002244  9f26ea01  addli r13, r20, 242
002248  97113200  or r3, r4, r3
00224c  17148200  or r8, r4, r8
002250  ff317700  s_lm2gm r3, r7, 0(r[15:16])
002254  6b570fdd  load.d r[15:16], -560(r30)
002258  ab0100f0  lui r3, 983040
00225c  9f43ea01  addli r7, r20, 244
002260  97113200  or r3, r4, r3
002264  7f34d700  s_lm2gm r8, r13, 0(r[15:16])
002268  2b0400f0  lui r8, 983040
00226c  6b570fdf  load.d r[15:16], -528(r30)
002270  9f66ea01  addli r13, r20, 246
002274  17148200  or r8, r4, r8
002278  ff317700  s_lm2gm r3, r7, 0(r[15:16])
00227c  ab0100f0  lui r3, 983040
002280  9f03fa01  addli r7, r20, 248
002284  7fb4d500  s_lm2gm r8, r13, 0(r[12:13])
002288  2b0400f0  lui r8, 983040
00228c  9f25fa01  addli r11, r20, 250
002290  97113200  or r3, r4, r3
002294  17148200  or r8, r4, r8
002298  ffb17a00  s_lm2gm r3, r7, 0(r[22:23])
00229c  ab0100f0  lui r3, 983040
0022a0  9f43fa01  addli r7, r20, 252
0022a4  7fb4bb00  s_lm2gm r8, r11, 0(r[24:25])
0022a8  2b0400f0  lui r8, 983040
0022ac  9f65fa01  addli r11, r20, 254
0022b0  1f0c0002  addli r24, zero, 256
0022b4  9f4bf001  addli r23, zero, 252
0022b8  97113200  or r3, r4, r3
0022bc  17148200  or r8, r4, r8
0022c0  ffb17000  s_lm2gm r3, r7, 0(r[2:3])
0022c4  e300aff7  loadli.w r1,  -1072(r30)
0022c8  7fb4b200  s_lm2gm r8, r11, 0(r[6:7])
0022cc  6304fffb  loadli.w r8,  -520(r30)
0022d0  00a00000  mfence { lm }
0022d4  634dbff7  loadli.w r26,  -1060(r30)
0022d8  e30aeff6  loadli.w r21,  -1168(r30)
0022dc  0b141410  add.s r8, r8, r1
0022e0  e300cff7  loadli.w r1,  -1056(r30)
0022e4  bf2b14f0  blt.s r8, r1, -7448
0022e8  5b120000  j 144
0022ec  ab02c07f  lui r5, 523264
0022f0  372703f2  beq r6, zero, -6712
0022f4  1f830200  addli r6, r5, 0
0022f8  3b9701f2  bneq r3, zero, -6716
0022fc  dbb8fcff  j -6716
002300  ab02c07f  lui r5, 523264
002304  b78801f2  beq r3, zero, -6624
002308  9f810200  addli r3, r5, 0
00230c  3bf805f2  bneq r11, zero, -6628
002310  dbc3fcff  j -6628
002314  2b07c07f  lui r14, 523264
002318  37aa05f2  beq r11, zero, -6520
00231c  9f050700  addli r11, r14, 0
002320  3b9a06f2  bneq r13, zero, -6524
002324  dbd0fcff  j -6524
002328  ab05c07f  lui r11, 523264
00232c  37fb06f2  beq r13, zero, -6436
002330  9f860500  addli r13, r11, 0
002334  3b6b04f2  bneq r8, zero, -6440
002338  5bdbfcff  j -6440
00233c  ab05c07f  lui r11, 523264
002340  b74c04f2  beq r8, zero, -6352
002344  1f840500  addli r8, r11, 0
002348  bbbc01f2  bneq r3, zero, -6356
00234c  dbe5fcff  j -6356
002350  2b04c07f  lui r8, 523264
002354  379e01f2  beq r3, zero, -6268
002358  9f010400  addli r3, r8, 0
00235c  3b0e03f2  bneq r6, zero, -6272
002360  5bf0fcff  j -6272
002364  ab01c07f  lui r3, 523264
002368  376f03f2  beq r6, zero, -6184
00236c  1f830100  addli r6, r3, 0
002370  3bdf02f2  bneq r5, zero, -6188
002374  dbfafcff  j -6188
002378  9f8e8e0c  addli sp, sp, 1600
00237c  00a00300  mfence { lm, sm, gm }
002380  00100000  exit
002384  00100000  exit
002388  00100000  exit
00238c  00100000  exit
002390  00100000  exit
002394  00100000  exit
002398  00100000  exit
00239c  00100000  exit
0023a0  00100000  exit
0023a4  00100000  exit
0023a8  00100000  exit
0023ac  00100000  exit
0023b0  00100000  exit
0023b4  00100000  exit
0023b8  00100000  exit
0023bc  00100000  exit
0023c0  00100000  exit
0023c4  00100000  exit
0023c8  00100000  exit
0023cc  00100000  exit
0023d0  00100000  exit
0023d4  00100000  exit
0023d8  00100000  exit
0023dc  00100000  exit
0023e0  00100000  exit
0023e4  00100000  exit
0023e8  00100000  exit
0023ec  00100000  exit
0023f0  00100000  exit
0023f4  00100000  exit
0023f8  00100000  exit
0023fc  00100000  exit
002400  00100000  exit
002404  00100000  exit
002408  00100000  exit
00240c  00100000  exit
002410  00100000  exit
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
