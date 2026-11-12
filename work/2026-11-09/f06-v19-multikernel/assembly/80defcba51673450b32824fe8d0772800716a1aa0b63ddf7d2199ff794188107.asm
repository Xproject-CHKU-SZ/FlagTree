; SHA-256 80defcba51673450b32824fe8d0772800716a1aa0b63ddf7d2199ff794188107
; P800 Cluster · XTDK LLVM 19 · 2411 / 2411 words decoded
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
0000dc  9f8e0eef  addli sp, sp, -2176
0000e0  2b010000  lui r2, 0
0000e4  80300002  core_id r1
0000e8  1f8f8e10  addli r30, sp, 2112
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
000114  674e5ff2  storeli.w r5, -1564(r30)
000118  73e00200  stores.w zero, 0(r5)
00011c  abf20000  lui r5, 15
000120  00a00300  mfence { lm, sm, gm }
000124  9b99f2ff  ori r19, r5, 4095
000128  abf27fff  lui r5, 1046527
00012c  9b92f2ff  ori r5, r5, 4095
000130  80a10904  csr_set csr3, r19
000134  00d00100  sync_group
000138  e70e7ff2  storeli.w r7, -1560(r30)
00013c  73e05300  stores.w r5, 0(r7)
000140  00a00300  mfence { lm, sm, gm }
000144  80a10904  csr_set csr3, r19
000148  00d00100  sync_group
00014c  670e4ff2  storeli.w r4, -1568(r30)
000150  4b488210  ble.s r4, r8, 8720
000154  1f021000  addli r4, zero, 8
000158  9b8d7000  andi r27, r1, 7
00015c  1f2e0000  addli r28, zero, 2
000160  eb540f01  load.d r[10:11], 16(r30)
000164  1f0a0ff8  addli r20, r30, -1024
000168  1f0d0ffc  addli r26, r30, -512
00016c  9f0b8000  addli r23, zero, 64
000170  1f0bf003  addli r22, zero, 504
000174  1f4c0000  addli r24, zero, 4
000178  e74d3ff3  storeli.w r19, -1572(r30)
00017c  0b924030  div.s r4, r1, r4
000180  e706bff3  storeli.w r27, -1688(r30)
000184  e70d4ff2  storeli.w r4, -1576(r30)
000188  1b323200  slli r4, r4, 3
00018c  0b934018  sub.s r6, r1, r4
000190  6b528f00  load.d r[5:6], 8(r30)
000194  9b357300  slli r11, r6, 7
000198  00d30002  load_param_i r6, 1
00019c  9b906501  ori r1, r11, 22
0001a0  670d6ff2  storeli.w r6, -1584(r30)
0001a4  1b931500  ori r6, r11, 1
0001a8  1b960501  ori r12, r11, 16
0001ac  674dbff2  storeli.w r11, -1580(r30)
0001b0  67461ff2  storeli.w r1, -1692(r30)
0001b4  9b907501  ori r1, r11, 23
0001b8  e74c6ff2  storeli.w r6, -1588(r30)
0001bc  1b932500  ori r6, r11, 2
0001c0  6709cff2  storeli.w r12, -1648(r30)
0001c4  1b961501  ori r12, r11, 17
0001c8  67061ff2  storeli.w r1, -1696(r30)
0001cc  9b908501  ori r1, r11, 24
0001d0  e70c6ff2  storeli.w r6, -1592(r30)
0001d4  1b933500  ori r6, r11, 3
0001d8  e748cff2  storeli.w r12, -1652(r30)
0001dc  e7451ff2  storeli.w r1, -1700(r30)
0001e0  9b909501  ori r1, r11, 25
0001e4  674c6ff2  storeli.w r6, -1596(r30)
0001e8  1b934500  ori r6, r11, 4
0001ec  e7051ff2  storeli.w r1, -1704(r30)
0001f0  9b90a501  ori r1, r11, 26
0001f4  670c6ff2  storeli.w r6, -1600(r30)
0001f8  1b935500  ori r6, r11, 5
0001fc  67451ff2  storeli.w r1, -1708(r30)
000200  9b90b501  ori r1, r11, 27
000204  e74b6ff2  storeli.w r6, -1604(r30)
000208  1b936500  ori r6, r11, 6
00020c  67051ff2  storeli.w r1, -1712(r30)
000210  9b90c501  ori r1, r11, 28
000214  e70b6ff2  storeli.w r6, -1608(r30)
000218  1b937500  ori r6, r11, 7
00021c  e7441ff2  storeli.w r1, -1716(r30)
000220  9b90d501  ori r1, r11, 29
000224  674b6ff2  storeli.w r6, -1612(r30)
000228  1b938500  ori r6, r11, 8
00022c  e7041ff2  storeli.w r1, -1720(r30)
000230  9b90e501  ori r1, r11, 30
000234  670b6ff2  storeli.w r6, -1616(r30)
000238  1b939500  ori r6, r11, 9
00023c  67441ff2  storeli.w r1, -1724(r30)
000240  9b90f501  ori r1, r11, 31
000244  e74a6ff2  storeli.w r6, -1620(r30)
000248  1b93a500  ori r6, r11, 10
00024c  67041ff2  storeli.w r1, -1728(r30)
000250  9b900502  ori r1, r11, 32
000254  e70a6ff2  storeli.w r6, -1624(r30)
000258  1b93b500  ori r6, r11, 11
00025c  e7431ff2  storeli.w r1, -1732(r30)
000260  9b901502  ori r1, r11, 33
000264  674a6ff2  storeli.w r6, -1628(r30)
000268  1b93c500  ori r6, r11, 12
00026c  e7031ff2  storeli.w r1, -1736(r30)
000270  9b902502  ori r1, r11, 34
000274  670a6ff2  storeli.w r6, -1632(r30)
000278  1b93d500  ori r6, r11, 13
00027c  67431ff2  storeli.w r1, -1740(r30)
000280  9b903502  ori r1, r11, 35
000284  e7496ff2  storeli.w r6, -1636(r30)
000288  1b93e500  ori r6, r11, 14
00028c  67031ff2  storeli.w r1, -1744(r30)
000290  9b904502  ori r1, r11, 36
000294  e7096ff2  storeli.w r6, -1640(r30)
000298  1b93f500  ori r6, r11, 15
00029c  e7421ff2  storeli.w r1, -1748(r30)
0002a0  9b905502  ori r1, r11, 37
0002a4  67496ff2  storeli.w r6, -1644(r30)
0002a8  33930528  sext_int2long r[7:8], r11
0002ac  e7021ff2  storeli.w r1, -1752(r30)
0002b0  9b906502  ori r1, r11, 38
0002b4  1733c303  sll.d r[7:8], r[7:8], r28
0002b8  67421ff2  storeli.w r1, -1756(r30)
0002bc  9b907502  ori r1, r11, 39
0002c0  0b226210  add.ul r[5:6], r[5:6], r[7:8]
0002c4  67021ff2  storeli.w r1, -1760(r30)
0002c8  9b908502  ori r1, r11, 40
0002cc  73304f98  store.d r[5:6], -1664(r30)
0002d0  2bf2ffff  lui r4, 1048575
0002d4  9b922501  ori r5, r11, 18
0002d8  e7411ff2  storeli.w r1, -1764(r30)
0002dc  9b909502  ori r1, r11, 41
0002e0  1b1202fe  ori r4, r4, 4064
0002e4  e7475ff2  storeli.w r5, -1668(r30)
0002e8  9b923501  ori r5, r11, 19
0002ec  e7011ff2  storeli.w r1, -1768(r30)
0002f0  9b90a502  ori r1, r11, 42
0002f4  97814100  and r3, r3, r4
0002f8  1b924501  ori r4, r11, 20
0002fc  e7075ff2  storeli.w r5, -1672(r30)
000300  67411ff2  storeli.w r1, -1772(r30)
000304  9b90b502  ori r1, r11, 43
000308  0b992110  add.s r18, r3, r2
00030c  1b915501  ori r2, r11, 21
000310  9f010004  addli r3, zero, 512
000314  67474ff2  storeli.w r4, -1676(r30)
000318  67011ff2  storeli.w r1, -1776(r30)
00031c  9b90c502  ori r1, r11, 44
000320  e7462ff2  storeli.w r2, -1684(r30)
000324  67072ff3  storeli.w r18, -1680(r30)
000328  e7401ff2  storeli.w r1, -1780(r30)
00032c  9b90d502  ori r1, r11, 45
000330  e7001ff2  storeli.w r1, -1784(r30)
000334  9b90e502  ori r1, r11, 46
000338  67401ff2  storeli.w r1, -1788(r30)
00033c  9b90f502  ori r1, r11, 47
000340  67001ff2  storeli.w r1, -1792(r30)
000344  9b900503  ori r1, r11, 48
000348  e74f1ff0  storeli.w r1, -1796(r30)
00034c  9b901503  ori r1, r11, 49
000350  e70f1ff0  storeli.w r1, -1800(r30)
000354  9b902503  ori r1, r11, 50
000358  674f1ff0  storeli.w r1, -1804(r30)
00035c  9b903503  ori r1, r11, 51
000360  670f1ff0  storeli.w r1, -1808(r30)
000364  9b904503  ori r1, r11, 52
000368  e74e1ff0  storeli.w r1, -1812(r30)
00036c  9b905503  ori r1, r11, 53
000370  e70e1ff0  storeli.w r1, -1816(r30)
000374  9b906503  ori r1, r11, 54
000378  674e1ff0  storeli.w r1, -1820(r30)
00037c  9b907503  ori r1, r11, 55
000380  670e1ff0  storeli.w r1, -1824(r30)
000384  9b908503  ori r1, r11, 56
000388  e74d1ff0  storeli.w r1, -1828(r30)
00038c  9b909503  ori r1, r11, 57
000390  e70d1ff0  storeli.w r1, -1832(r30)
000394  9b90a503  ori r1, r11, 58
000398  674d1ff0  storeli.w r1, -1836(r30)
00039c  9b90b503  ori r1, r11, 59
0003a0  670d1ff0  storeli.w r1, -1840(r30)
0003a4  9b90c503  ori r1, r11, 60
0003a8  e74c1ff0  storeli.w r1, -1844(r30)
0003ac  9b90d503  ori r1, r11, 61
0003b0  e70c1ff0  storeli.w r1, -1848(r30)
0003b4  9b90e503  ori r1, r11, 62
0003b8  674c1ff0  storeli.w r1, -1852(r30)
0003bc  9b90f503  ori r1, r11, 63
0003c0  670c1ff0  storeli.w r1, -1856(r30)
0003c4  9b900504  ori r1, r11, 64
0003c8  e74b1ff0  storeli.w r1, -1860(r30)
0003cc  9b901504  ori r1, r11, 65
0003d0  e70b1ff0  storeli.w r1, -1864(r30)
0003d4  9b902504  ori r1, r11, 66
0003d8  674b1ff0  storeli.w r1, -1868(r30)
0003dc  9b903504  ori r1, r11, 67
0003e0  670b1ff0  storeli.w r1, -1872(r30)
0003e4  9b904504  ori r1, r11, 68
0003e8  e74a1ff0  storeli.w r1, -1876(r30)
0003ec  9b905504  ori r1, r11, 69
0003f0  e70a1ff0  storeli.w r1, -1880(r30)
0003f4  9b906504  ori r1, r11, 70
0003f8  674a1ff0  storeli.w r1, -1884(r30)
0003fc  9b907504  ori r1, r11, 71
000400  670a1ff0  storeli.w r1, -1888(r30)
000404  9b908504  ori r1, r11, 72
000408  e7491ff0  storeli.w r1, -1892(r30)
00040c  9b909504  ori r1, r11, 73
000410  e7091ff0  storeli.w r1, -1896(r30)
000414  9b90a504  ori r1, r11, 74
000418  67491ff0  storeli.w r1, -1900(r30)
00041c  9b90b504  ori r1, r11, 75
000420  67091ff0  storeli.w r1, -1904(r30)
000424  9b90c504  ori r1, r11, 76
000428  e7481ff0  storeli.w r1, -1908(r30)
00042c  9b90d504  ori r1, r11, 77
000430  e7081ff0  storeli.w r1, -1912(r30)
000434  9b90e504  ori r1, r11, 78
000438  67481ff0  storeli.w r1, -1916(r30)
00043c  9b90f504  ori r1, r11, 79
000440  67081ff0  storeli.w r1, -1920(r30)
000444  9b900505  ori r1, r11, 80
000448  e7471ff0  storeli.w r1, -1924(r30)
00044c  9b901505  ori r1, r11, 81
000450  e7071ff0  storeli.w r1, -1928(r30)
000454  9b902505  ori r1, r11, 82
000458  67471ff0  storeli.w r1, -1932(r30)
00045c  9b903505  ori r1, r11, 83
000460  67071ff0  storeli.w r1, -1936(r30)
000464  9b904505  ori r1, r11, 84
000468  e7461ff0  storeli.w r1, -1940(r30)
00046c  9b905505  ori r1, r11, 85
000470  e7061ff0  storeli.w r1, -1944(r30)
000474  9b906505  ori r1, r11, 86
000478  67461ff0  storeli.w r1, -1948(r30)
00047c  9b907505  ori r1, r11, 87
000480  67061ff0  storeli.w r1, -1952(r30)
000484  9b908505  ori r1, r11, 88
000488  e7451ff0  storeli.w r1, -1956(r30)
00048c  9b909505  ori r1, r11, 89
000490  e7051ff0  storeli.w r1, -1960(r30)
000494  9b90a505  ori r1, r11, 90
000498  67451ff0  storeli.w r1, -1964(r30)
00049c  9b90b505  ori r1, r11, 91
0004a0  67051ff0  storeli.w r1, -1968(r30)
0004a4  9b90c505  ori r1, r11, 92
0004a8  e7441ff0  storeli.w r1, -1972(r30)
0004ac  9b90d505  ori r1, r11, 93
0004b0  e7041ff0  storeli.w r1, -1976(r30)
0004b4  9b90e505  ori r1, r11, 94
0004b8  67441ff0  storeli.w r1, -1980(r30)
0004bc  9b90f505  ori r1, r11, 95
0004c0  67041ff0  storeli.w r1, -1984(r30)
0004c4  9b900506  ori r1, r11, 96
0004c8  e7431ff0  storeli.w r1, -1988(r30)
0004cc  9b901506  ori r1, r11, 97
0004d0  e7031ff0  storeli.w r1, -1992(r30)
0004d4  9b902506  ori r1, r11, 98
0004d8  67431ff0  storeli.w r1, -1996(r30)
0004dc  9b903506  ori r1, r11, 99
0004e0  67031ff0  storeli.w r1, -2000(r30)
0004e4  9b904506  ori r1, r11, 100
0004e8  e7421ff0  storeli.w r1, -2004(r30)
0004ec  9b905506  ori r1, r11, 101
0004f0  e7021ff0  storeli.w r1, -2008(r30)
0004f4  9b906506  ori r1, r11, 102
0004f8  67421ff0  storeli.w r1, -2012(r30)
0004fc  9b907506  ori r1, r11, 103
000500  67021ff0  storeli.w r1, -2016(r30)
000504  9b908506  ori r1, r11, 104
000508  e7411ff0  storeli.w r1, -2020(r30)
00050c  9b909506  ori r1, r11, 105
000510  e7011ff0  storeli.w r1, -2024(r30)
000514  9b90a506  ori r1, r11, 106
000518  67411ff0  storeli.w r1, -2028(r30)
00051c  9b90b506  ori r1, r11, 107
000520  67011ff0  storeli.w r1, -2032(r30)
000524  9b90c506  ori r1, r11, 108
000528  e7401ff0  storeli.w r1, -2036(r30)
00052c  9b90d506  ori r1, r11, 109
000530  e7001ff0  storeli.w r1, -2040(r30)
000534  9b90e506  ori r1, r11, 110
000538  67401ff0  storeli.w r1, -2044(r30)
00053c  9b90f506  ori r1, r11, 111
000540  67001ff0  storeli.w r1, -2048(r30)
000544  9b900507  ori r1, r11, 112
000548  e74f1fee  storeli.w r1, -2052(r30)
00054c  9b901507  ori r1, r11, 113
000550  e70f1fee  storeli.w r1, -2056(r30)
000554  9b902507  ori r1, r11, 114
000558  674f1fee  storeli.w r1, -2060(r30)
00055c  9b903507  ori r1, r11, 115
000560  670f1fee  storeli.w r1, -2064(r30)
000564  9b904507  ori r1, r11, 116
000568  e74e1fee  storeli.w r1, -2068(r30)
00056c  9b905507  ori r1, r11, 117
000570  e70e1fee  storeli.w r1, -2072(r30)
000574  9b906507  ori r1, r11, 118
000578  674e1fee  storeli.w r1, -2076(r30)
00057c  9b907507  ori r1, r11, 119
000580  670e1fee  storeli.w r1, -2080(r30)
000584  9b908507  ori r1, r11, 120
000588  e74d1fee  storeli.w r1, -2084(r30)
00058c  9b909507  ori r1, r11, 121
000590  e70d1fee  storeli.w r1, -2088(r30)
000594  9b90a507  ori r1, r11, 122
000598  674d1fee  storeli.w r1, -2092(r30)
00059c  9b90b507  ori r1, r11, 123
0005a0  670d1fee  storeli.w r1, -2096(r30)
0005a4  9b90c507  ori r1, r11, 124
0005a8  e74c1fee  storeli.w r1, -2100(r30)
0005ac  9b90d507  ori r1, r11, 125
0005b0  e70c1fee  storeli.w r1, -2104(r30)
0005b4  9b90e507  ori r1, r11, 126
0005b8  674c1fee  storeli.w r1, -2108(r30)
0005bc  9b90f507  ori r1, r11, 127
0005c0  670c1fee  storeli.w r1, -2112(r30)
0005c4  9f002940  addli r1, r18, 8208
0005c8  e74e1ff2  storeli.w r1, -1556(r30)
0005cc  9f000000  addli r1, zero, 0
0005d0  0b111a10  add.s r2, r20, r1
0005d4  9f801000  addli r1, r1, 8
0005d8  67000100  storeli.w zero, 0(r2)
0005dc  67400100  storeli.w zero, 4(r2)
0005e0  00a00000  mfence { lm }
0005e4  bbbf30fe  bneq r1, r3, -20
0005e8  e3005f00  loadli.w r1,  40(r30)
0005ec  63414f00  loadli.w r2,  36(r30)
0005f0  9f020004  addli r5, zero, 512
0005f4  e74f8ff6  storeli.w r8, -1028(r30)
0005f8  8b101430  div.s r1, r8, r1
0005fc  8b902030  div.s r1, r1, r2
000600  6301bff3  loadli.w r2,  -1576(r30)
000604  9bb03000  slli r1, r1, 3
000608  8b932010  add.s r7, r1, r2
00060c  e340aff3  loadli.w r1,  -1580(r30)
000610  2b0100f0  lui r2, 983040
000614  1bb6a300  slli r12, r7, 10
000618  17912200  or r2, r5, r2
00061c  8b101610  add.s r1, r12, r1
000620  b3910028  sext_int2long r[4:5], r1
000624  ab0000f0  lui r1, 983040
000628  97b6c103  sll.d r[14:15], r[4:5], r28
00062c  eb510f00  load.d r[4:5], 0(r30)
000630  97901200  or r1, r5, r1
000634  7338dfbe  store.d r[14:15], -1040(r30)
000638  8ba1d110  add.ul r[4:5], r[4:5], r[14:15]
00063c  7fa14101  l_gm2lm r2, r20, 0(r[4:5])
000640  6b510f98  load.d r[3:4], -1664(r30)
000644  ff20a101  l_gm2lm r1, r26, 0(r[3:4])
000648  00a00000  mfence { lm }
00064c  e3000ff8  loadli.w r1,  -1024(r30)
000650  e3010ffc  loadli.w r3,  -512(r30)
000654  63410ff8  loadli.w r2,  -1020(r30)
000658  63420ffc  loadli.w r4,  -508(r30)
00065c  8be03010  add.f.rn r1, r1, r3
000660  0b614110  add.f.rn r2, r2, r4
000664  9f850000  addli r11, r1, 0
000668  9f020100  addli r5, r2, 0
00066c  3fb07301  blt.s r7, r23, 12
000670  ab0580ff  lui r11, 1046528
000674  ab0280ff  lui r5, 1046528
000678  9f410a00  addli r3, r20, 4
00067c  1f030000  addli r6, zero, 0
000680  67443ff6  storeli.w r3, -1212(r30)
000684  db020000  j 20
000688  1f031300  addli r6, r6, 8
00068c  9f020400  addli r5, r8, 0
000690  9f850100  addli r11, r3, 0
000694  37056301  beq r6, r22, 320
000698  0b126a10  add.s r4, r20, r6
00069c  0b146d10  add.s r8, r26, r6
0006a0  e3011200  loadli.w r3,  8(r4)
0006a4  e3061400  loadli.w r13,  8(r8)
0006a8  63421200  loadli.w r4,  12(r4)
0006ac  63441400  loadli.w r8,  12(r8)
0006b0  8be1d110  add.f.rn r3, r3, r13
0006b4  9f860500  addli r13, r11, 0
0006b8  13e7b104  setlt.f r14, r3, r11
0006bc  3b200700  bneq r14, zero, 8
0006c0  9f860100  addli r13, r3, 0
0006c4  1bb79100  slli r14, r3, 9
0006c8  9bb79500  slli r15, r11, 9
0006cc  1bc87101  srli r16, r3, 23
0006d0  9bc87501  srli r17, r11, 23
0006d4  13070700  seteq r14, r14, zero
0006d8  93870700  seteq r15, r15, zero
0006dc  1b08f80f  andi r16, r16, 255
0006e0  9b88f80f  andi r17, r17, 255
0006e4  1b78f80f  setlti r16, r16, 255
0006e8  9bf8f80f  setlti r17, r17, 255
0006ec  1717e800  or r14, r16, r14
0006f0  9797f800  or r15, r17, r15
0006f4  1787e700  and r14, r15, r14
0006f8  b7320700  beq r14, zero, 172
0006fc  1f870500  addli r14, r11, 0
000700  bbc20500  bneq r11, zero, 176
000704  37a00100  beq r3, zero, 8
000708  9f010700  addli r3, r14, 0
00070c  1367d006  setle.f r14, zero, r13
000710  93e70606  setle.f r15, r13, zero
000714  1787e700  and r14, r15, r14
000718  3b200700  bneq r14, zero, 8
00071c  9f810600  addli r3, r13, 0
000720  3fa07301  blt.s r7, r23, 8
000724  9f810500  addli r3, r11, 0
000728  0b648210  add.f.rn r8, r4, r8
00072c  1f820200  addli r4, r5, 0
000730  93655404  setlt.f r11, r8, r5
000734  3ba00500  bneq r11, zero, 8
000738  1f020400  addli r4, r8, 0
00073c  9b359400  slli r11, r8, 9
000740  9bb69200  slli r13, r5, 9
000744  1b477401  srli r14, r8, 23
000748  9bc77201  srli r15, r5, 23
00074c  93850500  seteq r11, r11, zero
000750  93860600  seteq r13, r13, zero
000754  1b07f70f  andi r14, r14, 255
000758  9b87f70f  andi r15, r15, 255
00075c  1b77f70f  setlti r14, r14, 255
000760  9bf7f70f  setlti r15, r15, 255
000764  9715b700  or r11, r14, r11
000768  9796d700  or r13, r15, r13
00076c  9785b600  and r11, r13, r11
000770  37b10500  beq r11, zero, 76
000774  9f850200  addli r11, r5, 0
000778  3bc10200  bneq r5, zero, 80
00077c  37200400  beq r8, zero, 8
000780  1f840500  addli r8, r11, 0
000784  93654006  setle.f r11, zero, r4
000788  93660206  setle.f r13, r4, zero
00078c  9785b600  and r11, r13, r11
000790  3ba00500  bneq r11, zero, 8
000794  1f040200  addli r8, r4, 0
000798  bfcb73ff  blt.s r7, r23, -272
00079c  1f840200  addli r8, r5, 0
0007a0  5bddffff  j -280
0007a4  ab06c07f  lui r13, 523264
0007a8  1f870500  addli r14, r11, 0
0007ac  37ed05fe  beq r11, zero, -168
0007b0  1f870600  addli r14, r13, 0
0007b4  3bdd01fe  bneq r3, zero, -172
0007b8  dbeaffff  j -172
0007bc  2b02c07f  lui r4, 523264
0007c0  9f850200  addli r11, r5, 0
0007c4  b7ee02fe  beq r5, zero, -72
0007c8  9f050200  addli r11, r4, 0
0007cc  bb5e04fe  bneq r8, zero, -76
0007d0  dbf6ffff  j -76
0007d4  93623404  setlt.f r5, r8, r3
0007d8  1f820100  addli r4, r3, 0
0007dc  3ba00200  bneq r5, zero, 8
0007e0  1f020400  addli r4, r8, 0
0007e4  9b329400  slli r5, r8, 9
0007e8  1bb39100  slli r6, r3, 9
0007ec  9b457401  srli r11, r8, 23
0007f0  9bc67101  srli r13, r3, 23
0007f4  93820200  seteq r5, r5, zero
0007f8  13030300  seteq r6, r6, zero
0007fc  9b85f50f  andi r11, r11, 255
000800  9b86f60f  andi r13, r13, 255
000804  9bf5f50f  setlti r11, r11, 255
000808  9bf6f60f  setlti r13, r13, 255
00080c  97925500  or r5, r11, r5
000810  17936600  or r6, r13, r6
000814  97025300  and r5, r6, r5
000818  37ed0200  beq r5, zero, 856
00081c  3bfd0100  bneq r3, zero, 860
000820  37200400  beq r8, zero, 8
000824  1f840100  addli r8, r3, 0
000828  93614006  setle.f r3, zero, r4
00082c  93620206  setle.f r5, r4, zero
000830  97813200  and r3, r5, r3
000834  3ba00100  bneq r3, zero, 8
000838  1f040200  addli r8, r4, 0
00083c  e301dff3  loadli.w r3,  -1560(r30)
000840  73e08100  stores.w r8, 0(r3)
000844  00a00300  mfence { lm, sm, gm }
000848  80a10904  csr_set csr3, r19
00084c  00d00100  sync_group
000850  3b8c0d00  bneq r27, zero, 768
000854  ef420900  loads.w r5, 0(r18)
000858  ef414900  loads.w r3, 4(r18)
00085c  13e35104  setlt.f r6, r3, r5
000860  1f820200  addli r4, r5, 0
000864  3b200300  bneq r6, zero, 8
000868  1f820100  addli r4, r3, 0
00086c  1bb39200  slli r6, r5, 9
000870  1bb49100  slli r8, r3, 9
000874  9bc57201  srli r11, r5, 23
000878  9bc67101  srli r13, r3, 23
00087c  13030300  seteq r6, r6, zero
000880  13040400  seteq r8, r8, zero
000884  9b85f50f  andi r11, r11, 255
000888  9b86f60f  andi r13, r13, 255
00088c  9bf5f50f  setlti r11, r11, 255
000890  9bf6f60f  setlti r13, r13, 255
000894  17936500  or r6, r11, r6
000898  17948600  or r8, r13, r8
00089c  17038300  and r6, r6, r8
0008a0  b758030c  beq r6, zero, 6708
0008a4  bbe8020c  bneq r5, zero, 6712
0008a8  37a00100  beq r3, zero, 8
0008ac  9f810200  addli r3, r5, 0
0008b0  93624006  setle.f r5, zero, r4
0008b4  13630206  setle.f r6, r4, zero
0008b8  97025300  and r5, r6, r5
0008bc  3ba00200  bneq r5, zero, 8
0008c0  9f010200  addli r3, r4, 0
0008c4  ef458900  loads.w r11, 8(r18)
0008c8  1f820100  addli r4, r3, 0
0008cc  93e23504  setlt.f r5, r11, r3
0008d0  3ba00200  bneq r5, zero, 8
0008d4  1f820500  addli r4, r11, 0
0008d8  9bb29500  slli r5, r11, 9
0008dc  1bb39100  slli r6, r3, 9
0008e0  1bc47501  srli r8, r11, 23
0008e4  9bc67101  srli r13, r3, 23
0008e8  93820200  seteq r5, r5, zero
0008ec  13030300  seteq r6, r6, zero
0008f0  1b04f40f  andi r8, r8, 255
0008f4  9b86f60f  andi r13, r13, 255
0008f8  1b74f40f  setlti r8, r8, 255
0008fc  9bf6f60f  setlti r13, r13, 255
000900  97125400  or r5, r8, r5
000904  17936600  or r6, r13, r6
000908  97025300  and r5, r6, r5
00090c  37f7020c  beq r5, zero, 6620
000910  bb87010c  bneq r3, zero, 6624
000914  37a00500  beq r11, zero, 8
000918  9f850100  addli r11, r3, 0
00091c  93614006  setle.f r3, zero, r4
000920  93620206  setle.f r5, r4, zero
000924  97813200  and r3, r5, r3
000928  3ba00100  bneq r3, zero, 8
00092c  9f050200  addli r11, r4, 0
000930  ef46c900  loads.w r13, 12(r18)
000934  6f440901  loads.w r8, 16(r18)
000938  6f434901  loads.w r6, 20(r18)
00093c  ef428901  loads.w r5, 24(r18)
000940  ef41c901  loads.w r3, 28(r18)
000944  1f820500  addli r4, r11, 0
000948  13e7b604  setlt.f r14, r13, r11
00094c  3b200700  bneq r14, zero, 8
000950  1f820600  addli r4, r13, 0
000954  1bb79600  slli r14, r13, 9
000958  9bb79500  slli r15, r11, 9
00095c  1bc87601  srli r16, r13, 23
000960  9bc87501  srli r17, r11, 23
000964  13070700  seteq r14, r14, zero
000968  93870700  seteq r15, r15, zero
00096c  1b08f80f  andi r16, r16, 255
000970  9b88f80f  andi r17, r17, 255
000974  1b78f80f  setlti r16, r16, 255
000978  9bf8f80f  setlti r17, r17, 255
00097c  1717e800  or r14, r16, r14
000980  9797f800  or r15, r17, r15
000984  1787e700  and r14, r15, r14
000988  b755070c  beq r14, zero, 6516
00098c  bbe5050c  bneq r11, zero, 6520
000990  37a00600  beq r13, zero, 8
000994  9f860500  addli r13, r11, 0
000998  93654006  setle.f r11, zero, r4
00099c  13670206  setle.f r14, r4, zero
0009a0  9705b700  and r11, r14, r11
0009a4  3ba00500  bneq r11, zero, 8
0009a8  9f060200  addli r13, r4, 0
0009ac  9365d404  setlt.f r11, r8, r13
0009b0  1f820600  addli r4, r13, 0
0009b4  3ba00500  bneq r11, zero, 8
0009b8  1f020400  addli r4, r8, 0
0009bc  9b359400  slli r11, r8, 9
0009c0  1bb79600  slli r14, r13, 9
0009c4  9b477401  srli r15, r8, 23
0009c8  1bc87601  srli r16, r13, 23
0009cc  93850500  seteq r11, r11, zero
0009d0  13070700  seteq r14, r14, zero
0009d4  9b87f70f  andi r15, r15, 255
0009d8  1b08f80f  andi r16, r16, 255
0009dc  9bf7f70f  setlti r15, r15, 255
0009e0  1b78f80f  setlti r16, r16, 255
0009e4  9795b700  or r11, r15, r11
0009e8  1717e800  or r14, r16, r14
0009ec  9705b700  and r11, r14, r11
0009f0  b784050c  beq r11, zero, 6432
0009f4  bb94060c  bneq r13, zero, 6436
0009f8  37200400  beq r8, zero, 8
0009fc  1f840600  addli r8, r13, 0
000a00  93654006  setle.f r11, zero, r4
000a04  93660206  setle.f r13, r4, zero
000a08  9785b600  and r11, r13, r11
000a0c  3ba00500  bneq r11, zero, 8
000a10  1f040200  addli r8, r4, 0
000a14  93658304  setlt.f r11, r6, r8
000a18  1f020400  addli r4, r8, 0
000a1c  3ba00500  bneq r11, zero, 8
000a20  1f020300  addli r4, r6, 0
000a24  9b359300  slli r11, r6, 9
000a28  9b369400  slli r13, r8, 9
000a2c  1b477301  srli r14, r6, 23
000a30  9b477401  srli r15, r8, 23
000a34  93850500  seteq r11, r11, zero
000a38  93860600  seteq r13, r13, zero
000a3c  1b07f70f  andi r14, r14, 255
000a40  9b87f70f  andi r15, r15, 255
000a44  1b77f70f  setlti r14, r14, 255
000a48  9bf7f70f  setlti r15, r15, 255
000a4c  9715b700  or r11, r14, r11
000a50  9796d700  or r13, r15, r13
000a54  9785b600  and r11, r13, r11
000a58  37b3050c  beq r11, zero, 6348
000a5c  3b43040c  bneq r8, zero, 6352
000a60  37200300  beq r6, zero, 8
000a64  1f030400  addli r6, r8, 0
000a68  13644006  setle.f r8, zero, r4
000a6c  93650206  setle.f r11, r4, zero
000a70  17848500  and r8, r11, r8
000a74  3b200400  bneq r8, zero, 8
000a78  1f030200  addli r6, r4, 0
000a7c  13e46204  setlt.f r8, r5, r6
000a80  1f020300  addli r4, r6, 0
000a84  3b200400  bneq r8, zero, 8
000a88  1f820200  addli r4, r5, 0
000a8c  1bb49200  slli r8, r5, 9
000a90  9b359300  slli r11, r6, 9
000a94  9bc67201  srli r13, r5, 23
000a98  1b477301  srli r14, r6, 23
000a9c  13040400  seteq r8, r8, zero
000aa0  93850500  seteq r11, r11, zero
000aa4  9b86f60f  andi r13, r13, 255
000aa8  1b07f70f  andi r14, r14, 255
000aac  9bf6f60f  setlti r13, r13, 255
000ab0  1b77f70f  setlti r14, r14, 255
000ab4  17948600  or r8, r13, r8
000ab8  9715b700  or r11, r14, r11
000abc  17848500  and r8, r11, r8
000ac0  b761040c  beq r8, zero, 6264
000ac4  bb71030c  bneq r6, zero, 6268
000ac8  37a00200  beq r5, zero, 8
000acc  9f020300  addli r5, r6, 0
000ad0  13634006  setle.f r6, zero, r4
000ad4  13640206  setle.f r8, r4, zero
000ad8  17036400  and r6, r8, r6
000adc  3b200300  bneq r6, zero, 8
000ae0  9f020200  addli r5, r4, 0
000ae4  13e35104  setlt.f r6, r3, r5
000ae8  1f820200  addli r4, r5, 0
000aec  3b200300  bneq r6, zero, 8
000af0  1f820100  addli r4, r3, 0
000af4  1bb39100  slli r6, r3, 9
000af8  1bb49200  slli r8, r5, 9
000afc  9bc57101  srli r11, r3, 23
000b00  9bc67201  srli r13, r5, 23
000b04  13030300  seteq r6, r6, zero
000b08  13040400  seteq r8, r8, zero
000b0c  9b85f50f  andi r11, r11, 255
000b10  9b86f60f  andi r13, r13, 255
000b14  9bf5f50f  setlti r11, r11, 255
000b18  9bf6f60f  setlti r13, r13, 255
000b1c  17936500  or r6, r11, r6
000b20  17948600  or r8, r13, r8
000b24  17036400  and r6, r8, r6
000b28  b710030c  beq r6, zero, 6180
000b2c  bba0020c  bneq r5, zero, 6184
000b30  37a00100  beq r3, zero, 8
000b34  9f810200  addli r3, r5, 0
000b38  93624006  setle.f r5, zero, r4
000b3c  13630206  setle.f r6, r4, zero
000b40  97025300  and r5, r6, r5
000b44  3ba00200  bneq r5, zero, 8
000b48  9f010200  addli r3, r4, 0
000b4c  73603900  stores.w r3, 0(r18)
000b50  00a00300  mfence { lm, sm, gm }
000b54  80a10904  csr_set csr3, r19
000b58  00d00100  sync_group
000b5c  ef420900  loads.w r5, 0(r18)
000b60  bf907301  blt.s r7, r23, 36
000b64  9f050000  addli r11, zero, 0
000b68  9f070000  addli r15, zero, 0
000b6c  5b050000  j 40
000b70  2b02c07f  lui r4, 523264
000b74  b7b201fe  beq r3, zero, -852
000b78  9f010200  addli r3, r4, 0
000b7c  bb2204fe  bneq r8, zero, -856
000b80  5b95ffff  j -856
000b84  8be05018  sub.f.rn r1, r1, r5
000b88  0b615118  sub.f.rn r2, r2, r5
000b8c  8f850000  exp.f.rn r11, r1
000b90  8f070100  exp.f.rn r15, r2
000b94  63019ff3  loadli.w r2,  -1592(r30)
000b98  e3409ff3  loadli.w r1,  -1588(r30)
000b9c  9f010004  addli r3, zero, 512
000ba0  0b12c110  add.s r4, r2, r12
000ba4  63418ff3  loadli.w r2,  -1596(r30)
000ba8  8b90c010  add.s r1, r1, r12
000bac  0b13c110  add.s r6, r2, r12
000bb0  63018ff3  loadli.w r2,  -1600(r30)
000bb4  0b14c110  add.s r8, r2, r12
000bb8  63417ff3  loadli.w r2,  -1604(r30)
000bbc  8b16c110  add.s r13, r2, r12
000bc0  63017ff3  loadli.w r2,  -1608(r30)
000bc4  0b17c110  add.s r14, r2, r12
000bc8  63416ff3  loadli.w r2,  -1612(r30)
000bcc  8b18c110  add.s r17, r2, r12
000bd0  63016ff3  loadli.w r2,  -1616(r30)
000bd4  8b1cc110  add.s r25, r2, r12
000bd8  63415ff3  loadli.w r2,  -1620(r30)
000bdc  0b11c110  add.s r2, r2, r12
000be0  67002ff4  storeli.w r2, -1536(r30)
000be4  63015ff3  loadli.w r2,  -1624(r30)
000be8  0b11c110  add.s r2, r2, r12
000bec  670f2ff2  storeli.w r2, -1552(r30)
000bf0  63414ff3  loadli.w r2,  -1628(r30)
000bf4  8b1ac110  add.s r21, r2, r12
000bf8  63014ff3  loadli.w r2,  -1632(r30)
000bfc  0b11c110  add.s r2, r2, r12
000c00  e7402ff4  storeli.w r2, -1524(r30)
000c04  63413ff3  loadli.w r2,  -1636(r30)
000c08  0b11c110  add.s r2, r2, r12
000c0c  67012ff4  storeli.w r2, -1520(r30)
000c10  63013ff3  loadli.w r2,  -1640(r30)
000c14  0b11c110  add.s r2, r2, r12
000c18  67412ff4  storeli.w r2, -1516(r30)
000c1c  63412ff3  loadli.w r2,  -1644(r30)
000c20  0b11c110  add.s r2, r2, r12
000c24  e7012ff4  storeli.w r2, -1512(r30)
000c28  63012ff3  loadli.w r2,  -1648(r30)
000c2c  0b11c110  add.s r2, r2, r12
000c30  e7412ff4  storeli.w r2, -1508(r30)
000c34  63411ff3  loadli.w r2,  -1652(r30)
000c38  0b11c110  add.s r2, r2, r12
000c3c  67022ff4  storeli.w r2, -1504(r30)
000c40  6341fff2  loadli.w r2,  -1668(r30)
000c44  0b11c110  add.s r2, r2, r12
000c48  67422ff4  storeli.w r2, -1500(r30)
000c4c  6301fff2  loadli.w r2,  -1672(r30)
000c50  0b11c110  add.s r2, r2, r12
000c54  e7022ff4  storeli.w r2, -1496(r30)
000c58  6341eff2  loadli.w r2,  -1676(r30)
000c5c  0b11c110  add.s r2, r2, r12
000c60  e7422ff4  storeli.w r2, -1492(r30)
000c64  6341dff2  loadli.w r2,  -1684(r30)
000c68  0b11c110  add.s r2, r2, r12
000c6c  67032ff4  storeli.w r2, -1488(r30)
000c70  6341cff2  loadli.w r2,  -1692(r30)
000c74  0b11c110  add.s r2, r2, r12
000c78  67432ff4  storeli.w r2, -1484(r30)
000c7c  6301cff2  loadli.w r2,  -1696(r30)
000c80  0b11c110  add.s r2, r2, r12
000c84  e7032ff4  storeli.w r2, -1480(r30)
000c88  6341bff2  loadli.w r2,  -1700(r30)
000c8c  0b11c110  add.s r2, r2, r12
000c90  e7432ff4  storeli.w r2, -1476(r30)
000c94  6301bff2  loadli.w r2,  -1704(r30)
000c98  0b11c110  add.s r2, r2, r12
000c9c  67042ff4  storeli.w r2, -1472(r30)
000ca0  6341aff2  loadli.w r2,  -1708(r30)
000ca4  0b11c110  add.s r2, r2, r12
000ca8  67442ff4  storeli.w r2, -1468(r30)
000cac  6301aff2  loadli.w r2,  -1712(r30)
000cb0  0b11c110  add.s r2, r2, r12
000cb4  e7042ff4  storeli.w r2, -1464(r30)
000cb8  63419ff2  loadli.w r2,  -1716(r30)
000cbc  0b11c110  add.s r2, r2, r12
000cc0  e7442ff4  storeli.w r2, -1460(r30)
000cc4  63019ff2  loadli.w r2,  -1720(r30)
000cc8  0b11c110  add.s r2, r2, r12
000ccc  67052ff4  storeli.w r2, -1456(r30)
000cd0  63418ff2  loadli.w r2,  -1724(r30)
000cd4  0b11c110  add.s r2, r2, r12
000cd8  67452ff4  storeli.w r2, -1452(r30)
000cdc  63018ff2  loadli.w r2,  -1728(r30)
000ce0  0b11c110  add.s r2, r2, r12
000ce4  e7052ff4  storeli.w r2, -1448(r30)
000ce8  63417ff2  loadli.w r2,  -1732(r30)
000cec  0b11c110  add.s r2, r2, r12
000cf0  e7452ff4  storeli.w r2, -1444(r30)
000cf4  63017ff2  loadli.w r2,  -1736(r30)
000cf8  0b11c110  add.s r2, r2, r12
000cfc  67062ff4  storeli.w r2, -1440(r30)
000d00  63416ff2  loadli.w r2,  -1740(r30)
000d04  0b11c110  add.s r2, r2, r12
000d08  67462ff4  storeli.w r2, -1436(r30)
000d0c  63016ff2  loadli.w r2,  -1744(r30)
000d10  0b11c110  add.s r2, r2, r12
000d14  e7062ff4  storeli.w r2, -1432(r30)
000d18  63415ff2  loadli.w r2,  -1748(r30)
000d1c  0b11c110  add.s r2, r2, r12
000d20  e7462ff4  storeli.w r2, -1428(r30)
000d24  63015ff2  loadli.w r2,  -1752(r30)
000d28  0b11c110  add.s r2, r2, r12
000d2c  67072ff4  storeli.w r2, -1424(r30)
000d30  63414ff2  loadli.w r2,  -1756(r30)
000d34  0b11c110  add.s r2, r2, r12
000d38  67472ff4  storeli.w r2, -1420(r30)
000d3c  63014ff2  loadli.w r2,  -1760(r30)
000d40  0b11c110  add.s r2, r2, r12
000d44  e7072ff4  storeli.w r2, -1416(r30)
000d48  63413ff2  loadli.w r2,  -1764(r30)
000d4c  0b11c110  add.s r2, r2, r12
000d50  e7472ff4  storeli.w r2, -1412(r30)
000d54  63013ff2  loadli.w r2,  -1768(r30)
000d58  0b11c110  add.s r2, r2, r12
000d5c  67082ff4  storeli.w r2, -1408(r30)
000d60  63412ff2  loadli.w r2,  -1772(r30)
000d64  0b11c110  add.s r2, r2, r12
000d68  67482ff4  storeli.w r2, -1404(r30)
000d6c  63012ff2  loadli.w r2,  -1776(r30)
000d70  0b11c110  add.s r2, r2, r12
000d74  e7082ff4  storeli.w r2, -1400(r30)
000d78  63411ff2  loadli.w r2,  -1780(r30)
000d7c  0b11c110  add.s r2, r2, r12
000d80  e7482ff4  storeli.w r2, -1396(r30)
000d84  63011ff2  loadli.w r2,  -1784(r30)
000d88  0b11c110  add.s r2, r2, r12
000d8c  67092ff4  storeli.w r2, -1392(r30)
000d90  63410ff2  loadli.w r2,  -1788(r30)
000d94  0b11c110  add.s r2, r2, r12
000d98  67492ff4  storeli.w r2, -1388(r30)
000d9c  63010ff2  loadli.w r2,  -1792(r30)
000da0  0b11c110  add.s r2, r2, r12
000da4  e7092ff4  storeli.w r2, -1384(r30)
000da8  6341fff1  loadli.w r2,  -1796(r30)
000dac  0b11c110  add.s r2, r2, r12
000db0  e7492ff4  storeli.w r2, -1380(r30)
000db4  6301fff1  loadli.w r2,  -1800(r30)
000db8  0b11c110  add.s r2, r2, r12
000dbc  670a2ff4  storeli.w r2, -1376(r30)
000dc0  6341eff1  loadli.w r2,  -1804(r30)
000dc4  0b11c110  add.s r2, r2, r12
000dc8  674a2ff4  storeli.w r2, -1372(r30)
000dcc  6301eff1  loadli.w r2,  -1808(r30)
000dd0  0b11c110  add.s r2, r2, r12
000dd4  e70a2ff4  storeli.w r2, -1368(r30)
000dd8  6341dff1  loadli.w r2,  -1812(r30)
000ddc  0b11c110  add.s r2, r2, r12
000de0  e74a2ff4  storeli.w r2, -1364(r30)
000de4  6301dff1  loadli.w r2,  -1816(r30)
000de8  0b11c110  add.s r2, r2, r12
000dec  670b2ff4  storeli.w r2, -1360(r30)
000df0  6341cff1  loadli.w r2,  -1820(r30)
000df4  0b11c110  add.s r2, r2, r12
000df8  674b2ff4  storeli.w r2, -1356(r30)
000dfc  6301cff1  loadli.w r2,  -1824(r30)
000e00  0b11c110  add.s r2, r2, r12
000e04  e70b2ff4  storeli.w r2, -1352(r30)
000e08  6341bff1  loadli.w r2,  -1828(r30)
000e0c  0b11c110  add.s r2, r2, r12
000e10  e74b2ff4  storeli.w r2, -1348(r30)
000e14  6301bff1  loadli.w r2,  -1832(r30)
000e18  0b11c110  add.s r2, r2, r12
000e1c  670c2ff4  storeli.w r2, -1344(r30)
000e20  6341aff1  loadli.w r2,  -1836(r30)
000e24  0b11c110  add.s r2, r2, r12
000e28  674c2ff4  storeli.w r2, -1340(r30)
000e2c  6301aff1  loadli.w r2,  -1840(r30)
000e30  0b11c110  add.s r2, r2, r12
000e34  e70c2ff4  storeli.w r2, -1336(r30)
000e38  63419ff1  loadli.w r2,  -1844(r30)
000e3c  0b11c110  add.s r2, r2, r12
000e40  e74c2ff4  storeli.w r2, -1332(r30)
000e44  63019ff1  loadli.w r2,  -1848(r30)
000e48  0b11c110  add.s r2, r2, r12
000e4c  670d2ff4  storeli.w r2, -1328(r30)
000e50  63418ff1  loadli.w r2,  -1852(r30)
000e54  0b11c110  add.s r2, r2, r12
000e58  674d2ff4  storeli.w r2, -1324(r30)
000e5c  63018ff1  loadli.w r2,  -1856(r30)
000e60  0b11c110  add.s r2, r2, r12
000e64  e70d2ff4  storeli.w r2, -1320(r30)
000e68  63417ff1  loadli.w r2,  -1860(r30)
000e6c  0b11c110  add.s r2, r2, r12
000e70  e74d2ff4  storeli.w r2, -1316(r30)
000e74  63017ff1  loadli.w r2,  -1864(r30)
000e78  0b11c110  add.s r2, r2, r12
000e7c  670e2ff4  storeli.w r2, -1312(r30)
000e80  63416ff1  loadli.w r2,  -1868(r30)
000e84  0b11c110  add.s r2, r2, r12
000e88  674e2ff4  storeli.w r2, -1308(r30)
000e8c  63016ff1  loadli.w r2,  -1872(r30)
000e90  0b11c110  add.s r2, r2, r12
000e94  e70e2ff4  storeli.w r2, -1304(r30)
000e98  63415ff1  loadli.w r2,  -1876(r30)
000e9c  0b11c110  add.s r2, r2, r12
000ea0  e74e2ff4  storeli.w r2, -1300(r30)
000ea4  63015ff1  loadli.w r2,  -1880(r30)
000ea8  0b11c110  add.s r2, r2, r12
000eac  670f2ff4  storeli.w r2, -1296(r30)
000eb0  63414ff1  loadli.w r2,  -1884(r30)
000eb4  0b11c110  add.s r2, r2, r12
000eb8  674f2ff4  storeli.w r2, -1292(r30)
000ebc  63014ff1  loadli.w r2,  -1888(r30)
000ec0  0b11c110  add.s r2, r2, r12
000ec4  e70f2ff4  storeli.w r2, -1288(r30)
000ec8  63413ff1  loadli.w r2,  -1892(r30)
000ecc  0b11c110  add.s r2, r2, r12
000ed0  e74f2ff4  storeli.w r2, -1284(r30)
000ed4  63013ff1  loadli.w r2,  -1896(r30)
000ed8  0b11c110  add.s r2, r2, r12
000edc  67002ff6  storeli.w r2, -1280(r30)
000ee0  63412ff1  loadli.w r2,  -1900(r30)
000ee4  0b11c110  add.s r2, r2, r12
000ee8  67402ff6  storeli.w r2, -1276(r30)
000eec  63012ff1  loadli.w r2,  -1904(r30)
000ef0  0b11c110  add.s r2, r2, r12
000ef4  e7002ff6  storeli.w r2, -1272(r30)
000ef8  63411ff1  loadli.w r2,  -1908(r30)
000efc  0b11c110  add.s r2, r2, r12
000f00  e7402ff6  storeli.w r2, -1268(r30)
000f04  63011ff1  loadli.w r2,  -1912(r30)
000f08  0b11c110  add.s r2, r2, r12
000f0c  67012ff6  storeli.w r2, -1264(r30)
000f10  63410ff1  loadli.w r2,  -1916(r30)
000f14  0b11c110  add.s r2, r2, r12
000f18  67412ff6  storeli.w r2, -1260(r30)
000f1c  63010ff1  loadli.w r2,  -1920(r30)
000f20  0b11c110  add.s r2, r2, r12
000f24  e7012ff6  storeli.w r2, -1256(r30)
000f28  6341fff0  loadli.w r2,  -1924(r30)
000f2c  0b11c110  add.s r2, r2, r12
000f30  e7412ff6  storeli.w r2, -1252(r30)
000f34  6301fff0  loadli.w r2,  -1928(r30)
000f38  0b11c110  add.s r2, r2, r12
000f3c  67022ff6  storeli.w r2, -1248(r30)
000f40  6341eff0  loadli.w r2,  -1932(r30)
000f44  0b11c110  add.s r2, r2, r12
000f48  67422ff6  storeli.w r2, -1244(r30)
000f4c  6301eff0  loadli.w r2,  -1936(r30)
000f50  0b11c110  add.s r2, r2, r12
000f54  e7022ff6  storeli.w r2, -1240(r30)
000f58  6341dff0  loadli.w r2,  -1940(r30)
000f5c  0b11c110  add.s r2, r2, r12
000f60  e7422ff6  storeli.w r2, -1236(r30)
000f64  6301dff0  loadli.w r2,  -1944(r30)
000f68  0b11c110  add.s r2, r2, r12
000f6c  67032ff6  storeli.w r2, -1232(r30)
000f70  6341cff0  loadli.w r2,  -1948(r30)
000f74  0b11c110  add.s r2, r2, r12
000f78  67432ff6  storeli.w r2, -1228(r30)
000f7c  6301cff0  loadli.w r2,  -1952(r30)
000f80  0b11c110  add.s r2, r2, r12
000f84  e7032ff6  storeli.w r2, -1224(r30)
000f88  6341bff0  loadli.w r2,  -1956(r30)
000f8c  0b11c110  add.s r2, r2, r12
000f90  e7432ff6  storeli.w r2, -1220(r30)
000f94  6301bff0  loadli.w r2,  -1960(r30)
000f98  0b11c110  add.s r2, r2, r12
000f9c  67042ff6  storeli.w r2, -1216(r30)
000fa0  6341aff0  loadli.w r2,  -1964(r30)
000fa4  0b11c110  add.s r2, r2, r12
000fa8  e7042ff6  storeli.w r2, -1208(r30)
000fac  6301aff0  loadli.w r2,  -1968(r30)
000fb0  0b11c110  add.s r2, r2, r12
000fb4  e7442ff6  storeli.w r2, -1204(r30)
000fb8  63419ff0  loadli.w r2,  -1972(r30)
000fbc  0b11c110  add.s r2, r2, r12
000fc0  67052ff6  storeli.w r2, -1200(r30)
000fc4  63019ff0  loadli.w r2,  -1976(r30)
000fc8  0b11c110  add.s r2, r2, r12
000fcc  67452ff6  storeli.w r2, -1196(r30)
000fd0  63418ff0  loadli.w r2,  -1980(r30)
000fd4  0b11c110  add.s r2, r2, r12
000fd8  e7052ff6  storeli.w r2, -1192(r30)
000fdc  63018ff0  loadli.w r2,  -1984(r30)
000fe0  0b11c110  add.s r2, r2, r12
000fe4  e7452ff6  storeli.w r2, -1188(r30)
000fe8  63417ff0  loadli.w r2,  -1988(r30)
000fec  0b11c110  add.s r2, r2, r12
000ff0  67062ff6  storeli.w r2, -1184(r30)
000ff4  63017ff0  loadli.w r2,  -1992(r30)
000ff8  0b11c110  add.s r2, r2, r12
000ffc  67462ff6  storeli.w r2, -1180(r30)
001000  63416ff0  loadli.w r2,  -1996(r30)
001004  0b11c110  add.s r2, r2, r12
001008  e7062ff6  storeli.w r2, -1176(r30)
00100c  63016ff0  loadli.w r2,  -2000(r30)
001010  0b11c110  add.s r2, r2, r12
001014  e7462ff6  storeli.w r2, -1172(r30)
001018  63415ff0  loadli.w r2,  -2004(r30)
00101c  0b11c110  add.s r2, r2, r12
001020  67072ff6  storeli.w r2, -1168(r30)
001024  63015ff0  loadli.w r2,  -2008(r30)
001028  0b11c110  add.s r2, r2, r12
00102c  67472ff6  storeli.w r2, -1164(r30)
001030  63414ff0  loadli.w r2,  -2012(r30)
001034  0b11c110  add.s r2, r2, r12
001038  e7072ff6  storeli.w r2, -1160(r30)
00103c  63014ff0  loadli.w r2,  -2016(r30)
001040  0b11c110  add.s r2, r2, r12
001044  e7472ff6  storeli.w r2, -1156(r30)
001048  63413ff0  loadli.w r2,  -2020(r30)
00104c  0b11c110  add.s r2, r2, r12
001050  67082ff6  storeli.w r2, -1152(r30)
001054  63013ff0  loadli.w r2,  -2024(r30)
001058  0b11c110  add.s r2, r2, r12
00105c  67482ff6  storeli.w r2, -1148(r30)
001060  63412ff0  loadli.w r2,  -2028(r30)
001064  0b11c110  add.s r2, r2, r12
001068  e7082ff6  storeli.w r2, -1144(r30)
00106c  63012ff0  loadli.w r2,  -2032(r30)
001070  0b11c110  add.s r2, r2, r12
001074  e7482ff6  storeli.w r2, -1140(r30)
001078  63411ff0  loadli.w r2,  -2036(r30)
00107c  0b11c110  add.s r2, r2, r12
001080  67092ff6  storeli.w r2, -1136(r30)
001084  63011ff0  loadli.w r2,  -2040(r30)
001088  0b11c110  add.s r2, r2, r12
00108c  67492ff6  storeli.w r2, -1132(r30)
001090  63410ff0  loadli.w r2,  -2044(r30)
001094  0b11c110  add.s r2, r2, r12
001098  e7092ff6  storeli.w r2, -1128(r30)
00109c  63010ff0  loadli.w r2,  -2048(r30)
0010a0  0b11c110  add.s r2, r2, r12
0010a4  e7492ff6  storeli.w r2, -1124(r30)
0010a8  6341ffef  loadli.w r2,  -2052(r30)
0010ac  0b11c110  add.s r2, r2, r12
0010b0  670a2ff6  storeli.w r2, -1120(r30)
0010b4  6301ffef  loadli.w r2,  -2056(r30)
0010b8  0b11c110  add.s r2, r2, r12
0010bc  674a2ff6  storeli.w r2, -1116(r30)
0010c0  6341efef  loadli.w r2,  -2060(r30)
0010c4  0b11c110  add.s r2, r2, r12
0010c8  e70a2ff6  storeli.w r2, -1112(r30)
0010cc  6301efef  loadli.w r2,  -2064(r30)
0010d0  0b11c110  add.s r2, r2, r12
0010d4  e74a2ff6  storeli.w r2, -1108(r30)
0010d8  6341dfef  loadli.w r2,  -2068(r30)
0010dc  0b11c110  add.s r2, r2, r12
0010e0  670b2ff6  storeli.w r2, -1104(r30)
0010e4  6301dfef  loadli.w r2,  -2072(r30)
0010e8  0b11c110  add.s r2, r2, r12
0010ec  674b2ff6  storeli.w r2, -1100(r30)
0010f0  6341cfef  loadli.w r2,  -2076(r30)
0010f4  0b11c110  add.s r2, r2, r12
0010f8  e70b2ff6  storeli.w r2, -1096(r30)
0010fc  6301cfef  loadli.w r2,  -2080(r30)
001100  0b11c110  add.s r2, r2, r12
001104  e70c2ff6  storeli.w r2, -1080(r30)
001108  6341bfef  loadli.w r2,  -2084(r30)
00110c  0b11c110  add.s r2, r2, r12
001110  674c2ff6  storeli.w r2, -1084(r30)
001114  6301bfef  loadli.w r2,  -2088(r30)
001118  0b11c110  add.s r2, r2, r12
00111c  674d2ff6  storeli.w r2, -1068(r30)
001120  6341afef  loadli.w r2,  -2092(r30)
001124  0b11c110  add.s r2, r2, r12
001128  e70d2ff6  storeli.w r2, -1064(r30)
00112c  6301afef  loadli.w r2,  -2096(r30)
001130  0b11c110  add.s r2, r2, r12
001134  e74d2ff6  storeli.w r2, -1060(r30)
001138  63419fef  loadli.w r2,  -2100(r30)
00113c  0b11c110  add.s r2, r2, r12
001140  670e2ff6  storeli.w r2, -1056(r30)
001144  63019fef  loadli.w r2,  -2104(r30)
001148  0b11c110  add.s r2, r2, r12
00114c  674e2ff6  storeli.w r2, -1052(r30)
001150  63418fef  loadli.w r2,  -2108(r30)
001154  0b11c110  add.s r2, r2, r12
001158  e70e2ff6  storeli.w r2, -1048(r30)
00115c  63018fef  loadli.w r2,  -2112(r30)
001160  0b11c110  add.s r2, r2, r12
001164  1f060000  addli r12, zero, 0
001168  e74e2ff6  storeli.w r2, -1044(r30)
00116c  db030000  j 28
001170  1f080000  addli r16, zero, 0
001174  1f090000  addli r18, zero, 0
001178  8be50511  add.f.rn r11, r11, r16
00117c  8be72711  add.f.rn r15, r15, r18
001180  1f061600  addli r12, r12, 8
001184  37216601  beq r12, r22, 72
001188  3fa07301  blt.s r7, r23, 8
00118c  dbfcffff  j -28
001190  0b19cd10  add.s r18, r26, r12
001194  0b18ca10  add.s r16, r20, r12
001198  630b1800  loadli.w r22,  8(r16)
00119c  630d1900  loadli.w r26,  8(r18)
0011a0  63481800  loadli.w r16,  12(r16)
0011a4  63491900  loadli.w r18,  12(r18)
0011a8  0b6bab11  add.f.rn r22, r22, r26
0011ac  0b682811  add.f.rn r16, r16, r18
0011b0  1f0d0ffc  addli r26, r30, -512
0011b4  0b695b18  sub.f.rn r18, r22, r5
0011b8  0b6b5818  sub.f.rn r22, r16, r5
0011bc  0f080900  exp.f.rn r16, r18
0011c0  0f090b00  exp.f.rn r18, r22
0011c4  1f0bf003  addli r22, zero, 504
0011c8  5bf6ffff  j -80
0011cc  8be3f510  add.f.rn r7, r11, r15
0011d0  6341cff3  loadli.w r2,  -1564(r30)
0011d4  73607100  stores.w r7, 0(r2)
0011d8  00a00300  mfence { lm, sm, gm }
0011dc  80a10904  csr_set csr3, r19
0011e0  00d00100  sync_group
0011e4  3ba10d00  bneq r27, zero, 72
0011e8  6341dff3  loadli.w r2,  -1556(r30)
0011ec  ef430100  loads.w r7, 0(r2)
0011f0  ef454100  loads.w r11, 4(r2)
0011f4  6f468100  loads.w r12, 8(r2)
0011f8  8be3b310  add.f.rn r7, r7, r11
0011fc  ef45c100  loads.w r11, 12(r2)
001200  8be3c310  add.f.rn r7, r7, r12
001204  6f460101  loads.w r12, 16(r2)
001208  8be3b310  add.f.rn r7, r7, r11
00120c  ef454101  loads.w r11, 20(r2)
001210  8be3c310  add.f.rn r7, r7, r12
001214  6f468101  loads.w r12, 24(r2)
001218  8be3b310  add.f.rn r7, r7, r11
00121c  ef45c101  loads.w r11, 28(r2)
001220  8be3c310  add.f.rn r7, r7, r12
001224  8be3b310  add.f.rn r7, r7, r11
001228  73607100  stores.w r7, 0(r2)
00122c  00a00300  mfence { lm, sm, gm }
001230  80a10904  csr_set csr3, r19
001234  00d00100  sync_group
001238  6341dff3  loadli.w r2,  -1556(r30)
00123c  9f050000  addli r11, zero, 0
001240  ef430100  loads.w r7, 0(r2)
001244  2b01803f  lui r2, 260096
001248  8f037118  div.f.rn r7, r2, r7
00124c  0b16ba10  add.s r12, r20, r11
001250  8b17bd10  add.s r15, r26, r11
001254  9f851500  addli r11, r11, 8
001258  638b0700  loadli.w r22,  0(r15)
00125c  63080600  loadli.w r16,  0(r12)
001260  63490600  loadli.w r18,  4(r12)
001264  e3c70700  loadli.w r15,  4(r15)
001268  0b686811  add.f.rn r16, r16, r22
00126c  8b67f910  add.f.rn r15, r18, r15
001270  0b685818  sub.f.rn r16, r16, r5
001274  8be75718  sub.f.rn r15, r15, r5
001278  0f080800  exp.f.rn r16, r16
00127c  8f870700  exp.f.rn r15, r15
001280  0be80321  mul.f.rn r16, r7, r16
001284  8be7f320  mul.f.rn r15, r7, r15
001288  67000601  storeli.w r16, 0(r12)
00128c  6740f600  storeli.w r15, 4(r12)
001290  00a00000  mfence { lm }
001294  bbee35fe  bneq r11, r3, -72
001298  e3020ff4  loadli.w r5,  -1536(r30)
00129c  b3150328  sext_int2long r[12:13], r6
0012a0  b3110228  sext_int2long r[4:5], r4
0012a4  b3900028  sext_int2long r[2:3], r1
0012a8  e3498ff6  loadli.w r19,  -1212(r30)
0012ac  b3130428  sext_int2long r[8:9], r8
0012b0  b3970628  sext_int2long r[16:17], r13
0012b4  b3160728  sext_int2long r[14:15], r14
0012b8  b3980828  sext_int2long r[18:19], r17
0012bc  b39c0c28  sext_int2long r[26:27], r25
0012c0  97b1c103  sll.d r[4:5], r[4:5], r28
0012c4  97b0c003  sll.d r[2:3], r[2:3], r28
0012c8  b3920228  sext_int2long r[6:7], r5
0012cc  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0012d0  733c5f9e  store.d r[6:7], -1544(r30)
0012d4  e302eff3  loadli.w r5,  -1552(r30)
0012d8  b3920228  sext_int2long r[6:7], r5
0012dc  73385f9e  store.d r[6:7], -1552(r30)
0012e0  b3920a28  sext_int2long r[6:7], r21
0012e4  9f0a1a00  addli r21, r20, 8
0012e8  73305fa0  store.d r[6:7], -1536(r30)
0012ec  8ba23410  add.ul r[6:7], r[10:11], r[4:5]
0012f0  ab0100f0  lui r3, 983040
0012f4  2b0200f0  lui r4, 983040
0012f8  97113c00  or r3, r24, r3
0012fc  17124c00  or r4, r24, r4
001300  ffb13001  s_lm2gm r3, r19, 0(r[2:3])
001304  7fb25201  s_lm2gm r4, r21, 0(r[6:7])
001308  97b0c503  sll.d r[2:3], r[12:13], r28
00130c  ab0200f0  lui r5, 983040
001310  97b1c303  sll.d r[4:5], r[8:9], r28
001314  9f431a00  addli r7, r20, 12
001318  2b0300f0  lui r6, 983040
00131c  1f042a00  addli r8, r20, 16
001320  9f497a03  addli r19, r20, 444
001324  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001328  97125c00  or r5, r24, r5
00132c  8ba13410  add.ul r[4:5], r[10:11], r[4:5]
001330  17136c00  or r6, r24, r6
001334  ffb27000  s_lm2gm r5, r7, 0(r[2:3])
001338  97b0c703  sll.d r[2:3], r[16:17], r28
00133c  ab0200f0  lui r5, 983040
001340  9f432a00  addli r7, r20, 20
001344  7fb38100  s_lm2gm r6, r8, 0(r[4:5])
001348  97b1c603  sll.d r[4:5], r[14:15], r28
00134c  2b0300f0  lui r6, 983040
001350  1f043a00  addli r8, r20, 24
001354  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001358  97125c00  or r5, r24, r5
00135c  8ba13410  add.ul r[4:5], r[10:11], r[4:5]
001360  17136c00  or r6, r24, r6
001364  ffb27000  s_lm2gm r5, r7, 0(r[2:3])
001368  97b0c803  sll.d r[2:3], r[18:19], r28
00136c  ab0200f0  lui r5, 983040
001370  9f433a00  addli r7, r20, 28
001374  7fb38100  s_lm2gm r6, r8, 0(r[4:5])
001378  97b1cc03  sll.d r[4:5], r[26:27], r28
00137c  2b0300f0  lui r6, 983040
001380  1f044a00  addli r8, r20, 32
001384  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001388  97125c00  or r5, r24, r5
00138c  8ba13410  add.ul r[4:5], r[10:11], r[4:5]
001390  17136c00  or r6, r24, r6
001394  ffb27000  s_lm2gm r5, r7, 0(r[2:3])
001398  eb508f9f  load.d r[2:3], -1544(r30)
00139c  7fb38100  s_lm2gm r6, r8, 0(r[4:5])
0013a0  eb510f9f  load.d r[4:5], -1552(r30)
0013a4  ab0200f0  lui r5, 983040
0013a8  9f434a00  addli r7, r20, 36
0013ac  2b0300f0  lui r6, 983040
0013b0  1f045a00  addli r8, r20, 40
0013b4  97125c00  or r5, r24, r5
0013b8  17136c00  or r6, r24, r6
0013bc  97b0c003  sll.d r[2:3], r[2:3], r28
0013c0  97b1c103  sll.d r[4:5], r[4:5], r28
0013c4  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0013c8  8ba13410  add.ul r[4:5], r[10:11], r[4:5]
0013cc  ffb27000  s_lm2gm r5, r7, 0(r[2:3])
0013d0  eb500fa0  load.d r[2:3], -1536(r30)
0013d4  e3421ff4  loadli.w r5,  -1524(r30)
0013d8  7fb38100  s_lm2gm r6, r8, 0(r[4:5])
0013dc  ab0100f0  lui r3, 983040
0013e0  1f425a00  addli r4, r20, 44
0013e4  97113c00  or r3, r24, r3
0013e8  97b0c003  sll.d r[2:3], r[2:3], r28
0013ec  b3920228  sext_int2long r[6:7], r5
0013f0  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0013f4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0013f8  97b0c203  sll.d r[2:3], r[6:7], r28
0013fc  e3022ff4  loadli.w r5,  -1520(r30)
001400  ab0100f0  lui r3, 983040
001404  1f026a00  addli r4, r20, 48
001408  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
00140c  97113c00  or r3, r24, r3
001410  b3920228  sext_int2long r[6:7], r5
001414  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001418  ab0100f0  lui r3, 983040
00141c  1f426a00  addli r4, r20, 52
001420  97b0c203  sll.d r[2:3], r[6:7], r28
001424  e3422ff4  loadli.w r5,  -1516(r30)
001428  97113c00  or r3, r24, r3
00142c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001430  b3920228  sext_int2long r[6:7], r5
001434  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001438  ab0100f0  lui r3, 983040
00143c  1f027a00  addli r4, r20, 56
001440  97b0c203  sll.d r[2:3], r[6:7], r28
001444  e3023ff4  loadli.w r5,  -1512(r30)
001448  97113c00  or r3, r24, r3
00144c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001450  b3920228  sext_int2long r[6:7], r5
001454  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001458  ab0100f0  lui r3, 983040
00145c  1f427a00  addli r4, r20, 60
001460  97b0c203  sll.d r[2:3], r[6:7], r28
001464  e3423ff4  loadli.w r5,  -1508(r30)
001468  97113c00  or r3, r24, r3
00146c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001470  b3920228  sext_int2long r[6:7], r5
001474  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001478  ab0100f0  lui r3, 983040
00147c  1f028a00  addli r4, r20, 64
001480  97b0c203  sll.d r[2:3], r[6:7], r28
001484  e3024ff4  loadli.w r5,  -1504(r30)
001488  97113c00  or r3, r24, r3
00148c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001490  b3920228  sext_int2long r[6:7], r5
001494  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001498  ab0100f0  lui r3, 983040
00149c  1f428a00  addli r4, r20, 68
0014a0  97b0c203  sll.d r[2:3], r[6:7], r28
0014a4  e3424ff4  loadli.w r5,  -1500(r30)
0014a8  97113c00  or r3, r24, r3
0014ac  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0014b0  b3920228  sext_int2long r[6:7], r5
0014b4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0014b8  ab0100f0  lui r3, 983040
0014bc  1f029a00  addli r4, r20, 72
0014c0  97b0c203  sll.d r[2:3], r[6:7], r28
0014c4  e3025ff4  loadli.w r5,  -1496(r30)
0014c8  97113c00  or r3, r24, r3
0014cc  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0014d0  b3920228  sext_int2long r[6:7], r5
0014d4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0014d8  ab0100f0  lui r3, 983040
0014dc  1f429a00  addli r4, r20, 76
0014e0  97b0c203  sll.d r[2:3], r[6:7], r28
0014e4  e3425ff4  loadli.w r5,  -1492(r30)
0014e8  97113c00  or r3, r24, r3
0014ec  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0014f0  b3920228  sext_int2long r[6:7], r5
0014f4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0014f8  ab0100f0  lui r3, 983040
0014fc  1f02aa00  addli r4, r20, 80
001500  97b0c203  sll.d r[2:3], r[6:7], r28
001504  e3026ff4  loadli.w r5,  -1488(r30)
001508  97113c00  or r3, r24, r3
00150c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001510  b3920228  sext_int2long r[6:7], r5
001514  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001518  ab0100f0  lui r3, 983040
00151c  1f42aa00  addli r4, r20, 84
001520  97b0c203  sll.d r[2:3], r[6:7], r28
001524  e3426ff4  loadli.w r5,  -1484(r30)
001528  97113c00  or r3, r24, r3
00152c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001530  b3920228  sext_int2long r[6:7], r5
001534  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001538  ab0100f0  lui r3, 983040
00153c  1f02ba00  addli r4, r20, 88
001540  97b0c203  sll.d r[2:3], r[6:7], r28
001544  e3027ff4  loadli.w r5,  -1480(r30)
001548  97113c00  or r3, r24, r3
00154c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001550  b3920228  sext_int2long r[6:7], r5
001554  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001558  ab0100f0  lui r3, 983040
00155c  1f42ba00  addli r4, r20, 92
001560  97b0c203  sll.d r[2:3], r[6:7], r28
001564  e3427ff4  loadli.w r5,  -1476(r30)
001568  97113c00  or r3, r24, r3
00156c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001570  b3920228  sext_int2long r[6:7], r5
001574  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001578  ab0100f0  lui r3, 983040
00157c  1f02ca00  addli r4, r20, 96
001580  97b0c203  sll.d r[2:3], r[6:7], r28
001584  e3028ff4  loadli.w r5,  -1472(r30)
001588  97113c00  or r3, r24, r3
00158c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001590  b3920228  sext_int2long r[6:7], r5
001594  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001598  ab0100f0  lui r3, 983040
00159c  1f42ca00  addli r4, r20, 100
0015a0  97b0c203  sll.d r[2:3], r[6:7], r28
0015a4  e3428ff4  loadli.w r5,  -1468(r30)
0015a8  97113c00  or r3, r24, r3
0015ac  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0015b0  b3920228  sext_int2long r[6:7], r5
0015b4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0015b8  ab0100f0  lui r3, 983040
0015bc  1f02da00  addli r4, r20, 104
0015c0  97b0c203  sll.d r[2:3], r[6:7], r28
0015c4  e3029ff4  loadli.w r5,  -1464(r30)
0015c8  97113c00  or r3, r24, r3
0015cc  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0015d0  b3920228  sext_int2long r[6:7], r5
0015d4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0015d8  ab0100f0  lui r3, 983040
0015dc  1f42da00  addli r4, r20, 108
0015e0  97b0c203  sll.d r[2:3], r[6:7], r28
0015e4  e3429ff4  loadli.w r5,  -1460(r30)
0015e8  97113c00  or r3, r24, r3
0015ec  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0015f0  b3920228  sext_int2long r[6:7], r5
0015f4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0015f8  ab0100f0  lui r3, 983040
0015fc  1f02ea00  addli r4, r20, 112
001600  97b0c203  sll.d r[2:3], r[6:7], r28
001604  e302aff4  loadli.w r5,  -1456(r30)
001608  97113c00  or r3, r24, r3
00160c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001610  b3920228  sext_int2long r[6:7], r5
001614  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001618  ab0100f0  lui r3, 983040
00161c  1f42ea00  addli r4, r20, 116
001620  97b0c203  sll.d r[2:3], r[6:7], r28
001624  e342aff4  loadli.w r5,  -1452(r30)
001628  97113c00  or r3, r24, r3
00162c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001630  b3920228  sext_int2long r[6:7], r5
001634  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001638  ab0100f0  lui r3, 983040
00163c  1f02fa00  addli r4, r20, 120
001640  97b0c203  sll.d r[2:3], r[6:7], r28
001644  e302bff4  loadli.w r5,  -1448(r30)
001648  97113c00  or r3, r24, r3
00164c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001650  b3920228  sext_int2long r[6:7], r5
001654  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001658  ab0100f0  lui r3, 983040
00165c  1f42fa00  addli r4, r20, 124
001660  97b0c203  sll.d r[2:3], r[6:7], r28
001664  e342bff4  loadli.w r5,  -1444(r30)
001668  97113c00  or r3, r24, r3
00166c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001670  b3920228  sext_int2long r[6:7], r5
001674  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001678  ab0100f0  lui r3, 983040
00167c  1f020a01  addli r4, r20, 128
001680  97b0c203  sll.d r[2:3], r[6:7], r28
001684  e302cff4  loadli.w r5,  -1440(r30)
001688  97113c00  or r3, r24, r3
00168c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001690  b3920228  sext_int2long r[6:7], r5
001694  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001698  ab0100f0  lui r3, 983040
00169c  1f420a01  addli r4, r20, 132
0016a0  97b0c203  sll.d r[2:3], r[6:7], r28
0016a4  e342cff4  loadli.w r5,  -1436(r30)
0016a8  97113c00  or r3, r24, r3
0016ac  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0016b0  b3920228  sext_int2long r[6:7], r5
0016b4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0016b8  ab0100f0  lui r3, 983040
0016bc  1f021a01  addli r4, r20, 136
0016c0  97b0c203  sll.d r[2:3], r[6:7], r28
0016c4  e302dff4  loadli.w r5,  -1432(r30)
0016c8  97113c00  or r3, r24, r3
0016cc  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0016d0  b3920228  sext_int2long r[6:7], r5
0016d4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0016d8  ab0100f0  lui r3, 983040
0016dc  1f421a01  addli r4, r20, 140
0016e0  97b0c203  sll.d r[2:3], r[6:7], r28
0016e4  e342dff4  loadli.w r5,  -1428(r30)
0016e8  97113c00  or r3, r24, r3
0016ec  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0016f0  b3920228  sext_int2long r[6:7], r5
0016f4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0016f8  ab0100f0  lui r3, 983040
0016fc  1f022a01  addli r4, r20, 144
001700  97b0c203  sll.d r[2:3], r[6:7], r28
001704  e302eff4  loadli.w r5,  -1424(r30)
001708  97113c00  or r3, r24, r3
00170c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001710  b3920228  sext_int2long r[6:7], r5
001714  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001718  ab0100f0  lui r3, 983040
00171c  1f422a01  addli r4, r20, 148
001720  97b0c203  sll.d r[2:3], r[6:7], r28
001724  e342eff4  loadli.w r5,  -1420(r30)
001728  97113c00  or r3, r24, r3
00172c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001730  b3920228  sext_int2long r[6:7], r5
001734  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001738  ab0100f0  lui r3, 983040
00173c  1f023a01  addli r4, r20, 152
001740  97b0c203  sll.d r[2:3], r[6:7], r28
001744  e302fff4  loadli.w r5,  -1416(r30)
001748  97113c00  or r3, r24, r3
00174c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001750  b3920228  sext_int2long r[6:7], r5
001754  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001758  ab0100f0  lui r3, 983040
00175c  1f423a01  addli r4, r20, 156
001760  97b0c203  sll.d r[2:3], r[6:7], r28
001764  e342fff4  loadli.w r5,  -1412(r30)
001768  97113c00  or r3, r24, r3
00176c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001770  b3920228  sext_int2long r[6:7], r5
001774  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001778  ab0100f0  lui r3, 983040
00177c  1f024a01  addli r4, r20, 160
001780  97b0c203  sll.d r[2:3], r[6:7], r28
001784  e3020ff5  loadli.w r5,  -1408(r30)
001788  97113c00  or r3, r24, r3
00178c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001790  b3920228  sext_int2long r[6:7], r5
001794  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001798  ab0100f0  lui r3, 983040
00179c  1f424a01  addli r4, r20, 164
0017a0  97b0c203  sll.d r[2:3], r[6:7], r28
0017a4  e3420ff5  loadli.w r5,  -1404(r30)
0017a8  97113c00  or r3, r24, r3
0017ac  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0017b0  b3920228  sext_int2long r[6:7], r5
0017b4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0017b8  ab0100f0  lui r3, 983040
0017bc  1f025a01  addli r4, r20, 168
0017c0  97b0c203  sll.d r[2:3], r[6:7], r28
0017c4  e3021ff5  loadli.w r5,  -1400(r30)
0017c8  97113c00  or r3, r24, r3
0017cc  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0017d0  b3920228  sext_int2long r[6:7], r5
0017d4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0017d8  ab0100f0  lui r3, 983040
0017dc  1f425a01  addli r4, r20, 172
0017e0  97b0c203  sll.d r[2:3], r[6:7], r28
0017e4  e3421ff5  loadli.w r5,  -1396(r30)
0017e8  97113c00  or r3, r24, r3
0017ec  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0017f0  b3920228  sext_int2long r[6:7], r5
0017f4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0017f8  ab0100f0  lui r3, 983040
0017fc  1f026a01  addli r4, r20, 176
001800  97b0c203  sll.d r[2:3], r[6:7], r28
001804  e3022ff5  loadli.w r5,  -1392(r30)
001808  97113c00  or r3, r24, r3
00180c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001810  b3920228  sext_int2long r[6:7], r5
001814  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001818  ab0100f0  lui r3, 983040
00181c  1f426a01  addli r4, r20, 180
001820  97b0c203  sll.d r[2:3], r[6:7], r28
001824  e3422ff5  loadli.w r5,  -1388(r30)
001828  97113c00  or r3, r24, r3
00182c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001830  b3920228  sext_int2long r[6:7], r5
001834  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001838  ab0100f0  lui r3, 983040
00183c  1f027a01  addli r4, r20, 184
001840  97b0c203  sll.d r[2:3], r[6:7], r28
001844  e3023ff5  loadli.w r5,  -1384(r30)
001848  97113c00  or r3, r24, r3
00184c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001850  b3920228  sext_int2long r[6:7], r5
001854  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001858  ab0100f0  lui r3, 983040
00185c  1f427a01  addli r4, r20, 188
001860  97b0c203  sll.d r[2:3], r[6:7], r28
001864  e3423ff5  loadli.w r5,  -1380(r30)
001868  97113c00  or r3, r24, r3
00186c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001870  b3920228  sext_int2long r[6:7], r5
001874  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001878  ab0100f0  lui r3, 983040
00187c  1f028a01  addli r4, r20, 192
001880  97b0c203  sll.d r[2:3], r[6:7], r28
001884  e3024ff5  loadli.w r5,  -1376(r30)
001888  97113c00  or r3, r24, r3
00188c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001890  b3920228  sext_int2long r[6:7], r5
001894  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001898  ab0100f0  lui r3, 983040
00189c  1f428a01  addli r4, r20, 196
0018a0  97b0c203  sll.d r[2:3], r[6:7], r28
0018a4  e3424ff5  loadli.w r5,  -1372(r30)
0018a8  97113c00  or r3, r24, r3
0018ac  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0018b0  b3920228  sext_int2long r[6:7], r5
0018b4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0018b8  ab0100f0  lui r3, 983040
0018bc  1f029a01  addli r4, r20, 200
0018c0  97b0c203  sll.d r[2:3], r[6:7], r28
0018c4  e3025ff5  loadli.w r5,  -1368(r30)
0018c8  97113c00  or r3, r24, r3
0018cc  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0018d0  b3920228  sext_int2long r[6:7], r5
0018d4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0018d8  ab0100f0  lui r3, 983040
0018dc  1f429a01  addli r4, r20, 204
0018e0  97b0c203  sll.d r[2:3], r[6:7], r28
0018e4  e3425ff5  loadli.w r5,  -1364(r30)
0018e8  97113c00  or r3, r24, r3
0018ec  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0018f0  b3920228  sext_int2long r[6:7], r5
0018f4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0018f8  ab0100f0  lui r3, 983040
0018fc  1f02aa01  addli r4, r20, 208
001900  97b0c203  sll.d r[2:3], r[6:7], r28
001904  e3026ff5  loadli.w r5,  -1360(r30)
001908  97113c00  or r3, r24, r3
00190c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001910  b3920228  sext_int2long r[6:7], r5
001914  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001918  ab0100f0  lui r3, 983040
00191c  1f42aa01  addli r4, r20, 212
001920  97b0c203  sll.d r[2:3], r[6:7], r28
001924  e3426ff5  loadli.w r5,  -1356(r30)
001928  97113c00  or r3, r24, r3
00192c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001930  b3920228  sext_int2long r[6:7], r5
001934  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001938  ab0100f0  lui r3, 983040
00193c  1f02ba01  addli r4, r20, 216
001940  97b0c203  sll.d r[2:3], r[6:7], r28
001944  e3027ff5  loadli.w r5,  -1352(r30)
001948  97113c00  or r3, r24, r3
00194c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001950  b3920228  sext_int2long r[6:7], r5
001954  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001958  ab0100f0  lui r3, 983040
00195c  1f42ba01  addli r4, r20, 220
001960  97b0c203  sll.d r[2:3], r[6:7], r28
001964  e3427ff5  loadli.w r5,  -1348(r30)
001968  97113c00  or r3, r24, r3
00196c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001970  b3920228  sext_int2long r[6:7], r5
001974  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001978  ab0100f0  lui r3, 983040
00197c  1f02ca01  addli r4, r20, 224
001980  97b0c203  sll.d r[2:3], r[6:7], r28
001984  e3028ff5  loadli.w r5,  -1344(r30)
001988  97113c00  or r3, r24, r3
00198c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001990  b3920228  sext_int2long r[6:7], r5
001994  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001998  ab0100f0  lui r3, 983040
00199c  1f42ca01  addli r4, r20, 228
0019a0  97b0c203  sll.d r[2:3], r[6:7], r28
0019a4  e3428ff5  loadli.w r5,  -1340(r30)
0019a8  97113c00  or r3, r24, r3
0019ac  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0019b0  b3920228  sext_int2long r[6:7], r5
0019b4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0019b8  ab0100f0  lui r3, 983040
0019bc  1f02da01  addli r4, r20, 232
0019c0  97b0c203  sll.d r[2:3], r[6:7], r28
0019c4  e3029ff5  loadli.w r5,  -1336(r30)
0019c8  97113c00  or r3, r24, r3
0019cc  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0019d0  b3920228  sext_int2long r[6:7], r5
0019d4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0019d8  ab0100f0  lui r3, 983040
0019dc  1f42da01  addli r4, r20, 236
0019e0  97b0c203  sll.d r[2:3], r[6:7], r28
0019e4  e3429ff5  loadli.w r5,  -1332(r30)
0019e8  97113c00  or r3, r24, r3
0019ec  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0019f0  b3920228  sext_int2long r[6:7], r5
0019f4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0019f8  ab0100f0  lui r3, 983040
0019fc  1f02ea01  addli r4, r20, 240
001a00  97b0c203  sll.d r[2:3], r[6:7], r28
001a04  e302aff5  loadli.w r5,  -1328(r30)
001a08  97113c00  or r3, r24, r3
001a0c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001a10  b3920228  sext_int2long r[6:7], r5
001a14  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001a18  ab0100f0  lui r3, 983040
001a1c  1f42ea01  addli r4, r20, 244
001a20  97b0c203  sll.d r[2:3], r[6:7], r28
001a24  e342aff5  loadli.w r5,  -1324(r30)
001a28  97113c00  or r3, r24, r3
001a2c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001a30  b3920228  sext_int2long r[6:7], r5
001a34  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001a38  ab0100f0  lui r3, 983040
001a3c  1f02fa01  addli r4, r20, 248
001a40  97b0c203  sll.d r[2:3], r[6:7], r28
001a44  e302bff5  loadli.w r5,  -1320(r30)
001a48  97113c00  or r3, r24, r3
001a4c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001a50  b3920228  sext_int2long r[6:7], r5
001a54  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001a58  ab0100f0  lui r3, 983040
001a5c  1f42fa01  addli r4, r20, 252
001a60  97b0c203  sll.d r[2:3], r[6:7], r28
001a64  e342bff5  loadli.w r5,  -1316(r30)
001a68  97113c00  or r3, r24, r3
001a6c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001a70  b3920228  sext_int2long r[6:7], r5
001a74  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001a78  ab0100f0  lui r3, 983040
001a7c  1f020a02  addli r4, r20, 256
001a80  97b0c203  sll.d r[2:3], r[6:7], r28
001a84  e302cff5  loadli.w r5,  -1312(r30)
001a88  97113c00  or r3, r24, r3
001a8c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001a90  b3920228  sext_int2long r[6:7], r5
001a94  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001a98  ab0100f0  lui r3, 983040
001a9c  1f420a02  addli r4, r20, 260
001aa0  97b0c203  sll.d r[2:3], r[6:7], r28
001aa4  e342cff5  loadli.w r5,  -1308(r30)
001aa8  97113c00  or r3, r24, r3
001aac  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001ab0  b3920228  sext_int2long r[6:7], r5
001ab4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001ab8  ab0100f0  lui r3, 983040
001abc  1f021a02  addli r4, r20, 264
001ac0  97b0c203  sll.d r[2:3], r[6:7], r28
001ac4  e302dff5  loadli.w r5,  -1304(r30)
001ac8  97113c00  or r3, r24, r3
001acc  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001ad0  b3920228  sext_int2long r[6:7], r5
001ad4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001ad8  ab0100f0  lui r3, 983040
001adc  1f421a02  addli r4, r20, 268
001ae0  97b0c203  sll.d r[2:3], r[6:7], r28
001ae4  e342dff5  loadli.w r5,  -1300(r30)
001ae8  97113c00  or r3, r24, r3
001aec  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001af0  b3920228  sext_int2long r[6:7], r5
001af4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001af8  ab0100f0  lui r3, 983040
001afc  1f022a02  addli r4, r20, 272
001b00  97b0c203  sll.d r[2:3], r[6:7], r28
001b04  e302eff5  loadli.w r5,  -1296(r30)
001b08  97113c00  or r3, r24, r3
001b0c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001b10  b3920228  sext_int2long r[6:7], r5
001b14  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001b18  ab0100f0  lui r3, 983040
001b1c  1f422a02  addli r4, r20, 276
001b20  97b0c203  sll.d r[2:3], r[6:7], r28
001b24  e342eff5  loadli.w r5,  -1292(r30)
001b28  97113c00  or r3, r24, r3
001b2c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001b30  b3920228  sext_int2long r[6:7], r5
001b34  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001b38  ab0100f0  lui r3, 983040
001b3c  1f023a02  addli r4, r20, 280
001b40  97b0c203  sll.d r[2:3], r[6:7], r28
001b44  e302fff5  loadli.w r5,  -1288(r30)
001b48  97113c00  or r3, r24, r3
001b4c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001b50  b3920228  sext_int2long r[6:7], r5
001b54  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001b58  ab0100f0  lui r3, 983040
001b5c  1f423a02  addli r4, r20, 284
001b60  97b0c203  sll.d r[2:3], r[6:7], r28
001b64  e342fff5  loadli.w r5,  -1284(r30)
001b68  97113c00  or r3, r24, r3
001b6c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001b70  b3920228  sext_int2long r[6:7], r5
001b74  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001b78  ab0100f0  lui r3, 983040
001b7c  1f024a02  addli r4, r20, 288
001b80  97b0c203  sll.d r[2:3], r[6:7], r28
001b84  e3020ff6  loadli.w r5,  -1280(r30)
001b88  97113c00  or r3, r24, r3
001b8c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001b90  b3920228  sext_int2long r[6:7], r5
001b94  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001b98  ab0100f0  lui r3, 983040
001b9c  1f424a02  addli r4, r20, 292
001ba0  97b0c203  sll.d r[2:3], r[6:7], r28
001ba4  e3420ff6  loadli.w r5,  -1276(r30)
001ba8  97113c00  or r3, r24, r3
001bac  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001bb0  b3920228  sext_int2long r[6:7], r5
001bb4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001bb8  ab0100f0  lui r3, 983040
001bbc  1f025a02  addli r4, r20, 296
001bc0  97b0c203  sll.d r[2:3], r[6:7], r28
001bc4  e3021ff6  loadli.w r5,  -1272(r30)
001bc8  97113c00  or r3, r24, r3
001bcc  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001bd0  b3920228  sext_int2long r[6:7], r5
001bd4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001bd8  ab0100f0  lui r3, 983040
001bdc  1f425a02  addli r4, r20, 300
001be0  97b0c203  sll.d r[2:3], r[6:7], r28
001be4  e3421ff6  loadli.w r5,  -1268(r30)
001be8  97113c00  or r3, r24, r3
001bec  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001bf0  b3920228  sext_int2long r[6:7], r5
001bf4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001bf8  ab0100f0  lui r3, 983040
001bfc  1f026a02  addli r4, r20, 304
001c00  97b0c203  sll.d r[2:3], r[6:7], r28
001c04  e3022ff6  loadli.w r5,  -1264(r30)
001c08  97113c00  or r3, r24, r3
001c0c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001c10  b3920228  sext_int2long r[6:7], r5
001c14  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001c18  ab0100f0  lui r3, 983040
001c1c  1f426a02  addli r4, r20, 308
001c20  97b0c203  sll.d r[2:3], r[6:7], r28
001c24  e3422ff6  loadli.w r5,  -1260(r30)
001c28  97113c00  or r3, r24, r3
001c2c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001c30  b3920228  sext_int2long r[6:7], r5
001c34  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001c38  ab0100f0  lui r3, 983040
001c3c  1f027a02  addli r4, r20, 312
001c40  97b0c203  sll.d r[2:3], r[6:7], r28
001c44  e3023ff6  loadli.w r5,  -1256(r30)
001c48  97113c00  or r3, r24, r3
001c4c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001c50  b3920228  sext_int2long r[6:7], r5
001c54  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001c58  ab0100f0  lui r3, 983040
001c5c  1f427a02  addli r4, r20, 316
001c60  97b0c203  sll.d r[2:3], r[6:7], r28
001c64  e3423ff6  loadli.w r5,  -1252(r30)
001c68  97113c00  or r3, r24, r3
001c6c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001c70  b3920228  sext_int2long r[6:7], r5
001c74  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001c78  ab0100f0  lui r3, 983040
001c7c  1f028a02  addli r4, r20, 320
001c80  97b0c203  sll.d r[2:3], r[6:7], r28
001c84  e3024ff6  loadli.w r5,  -1248(r30)
001c88  97113c00  or r3, r24, r3
001c8c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001c90  b3920228  sext_int2long r[6:7], r5
001c94  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001c98  ab0100f0  lui r3, 983040
001c9c  1f428a02  addli r4, r20, 324
001ca0  97b0c203  sll.d r[2:3], r[6:7], r28
001ca4  e3424ff6  loadli.w r5,  -1244(r30)
001ca8  97113c00  or r3, r24, r3
001cac  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001cb0  b3920228  sext_int2long r[6:7], r5
001cb4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001cb8  ab0100f0  lui r3, 983040
001cbc  1f029a02  addli r4, r20, 328
001cc0  97b0c203  sll.d r[2:3], r[6:7], r28
001cc4  e3025ff6  loadli.w r5,  -1240(r30)
001cc8  97113c00  or r3, r24, r3
001ccc  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001cd0  b3920228  sext_int2long r[6:7], r5
001cd4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001cd8  ab0100f0  lui r3, 983040
001cdc  1f429a02  addli r4, r20, 332
001ce0  97b0c203  sll.d r[2:3], r[6:7], r28
001ce4  e3425ff6  loadli.w r5,  -1236(r30)
001ce8  97113c00  or r3, r24, r3
001cec  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001cf0  b3920228  sext_int2long r[6:7], r5
001cf4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001cf8  ab0100f0  lui r3, 983040
001cfc  1f02aa02  addli r4, r20, 336
001d00  97b0c203  sll.d r[2:3], r[6:7], r28
001d04  e3026ff6  loadli.w r5,  -1232(r30)
001d08  97113c00  or r3, r24, r3
001d0c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001d10  b3920228  sext_int2long r[6:7], r5
001d14  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001d18  ab0100f0  lui r3, 983040
001d1c  1f42aa02  addli r4, r20, 340
001d20  97b0c203  sll.d r[2:3], r[6:7], r28
001d24  e3426ff6  loadli.w r5,  -1228(r30)
001d28  97113c00  or r3, r24, r3
001d2c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001d30  b3920228  sext_int2long r[6:7], r5
001d34  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001d38  ab0100f0  lui r3, 983040
001d3c  1f02ba02  addli r4, r20, 344
001d40  97b0c203  sll.d r[2:3], r[6:7], r28
001d44  e3027ff6  loadli.w r5,  -1224(r30)
001d48  97113c00  or r3, r24, r3
001d4c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001d50  b3920228  sext_int2long r[6:7], r5
001d54  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001d58  ab0100f0  lui r3, 983040
001d5c  1f42ba02  addli r4, r20, 348
001d60  97b0c203  sll.d r[2:3], r[6:7], r28
001d64  e3427ff6  loadli.w r5,  -1220(r30)
001d68  97113c00  or r3, r24, r3
001d6c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001d70  b3920228  sext_int2long r[6:7], r5
001d74  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001d78  ab0100f0  lui r3, 983040
001d7c  1f02ca02  addli r4, r20, 352
001d80  97b0c203  sll.d r[2:3], r[6:7], r28
001d84  e3028ff6  loadli.w r5,  -1216(r30)
001d88  97113c00  or r3, r24, r3
001d8c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001d90  b3920228  sext_int2long r[6:7], r5
001d94  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001d98  ab0100f0  lui r3, 983040
001d9c  1f42ca02  addli r4, r20, 356
001da0  97b0c203  sll.d r[2:3], r[6:7], r28
001da4  e3029ff6  loadli.w r5,  -1208(r30)
001da8  97113c00  or r3, r24, r3
001dac  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001db0  b3920228  sext_int2long r[6:7], r5
001db4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001db8  ab0100f0  lui r3, 983040
001dbc  1f02da02  addli r4, r20, 360
001dc0  97b0c203  sll.d r[2:3], r[6:7], r28
001dc4  e3429ff6  loadli.w r5,  -1204(r30)
001dc8  97113c00  or r3, r24, r3
001dcc  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001dd0  b3920228  sext_int2long r[6:7], r5
001dd4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001dd8  ab0100f0  lui r3, 983040
001ddc  1f42da02  addli r4, r20, 364
001de0  97b0c203  sll.d r[2:3], r[6:7], r28
001de4  e302aff6  loadli.w r5,  -1200(r30)
001de8  97113c00  or r3, r24, r3
001dec  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001df0  b3920228  sext_int2long r[6:7], r5
001df4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001df8  ab0100f0  lui r3, 983040
001dfc  1f02ea02  addli r4, r20, 368
001e00  97b0c203  sll.d r[2:3], r[6:7], r28
001e04  e342aff6  loadli.w r5,  -1196(r30)
001e08  97113c00  or r3, r24, r3
001e0c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001e10  b3920228  sext_int2long r[6:7], r5
001e14  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001e18  ab0100f0  lui r3, 983040
001e1c  1f42ea02  addli r4, r20, 372
001e20  97b0c203  sll.d r[2:3], r[6:7], r28
001e24  e302bff6  loadli.w r5,  -1192(r30)
001e28  97113c00  or r3, r24, r3
001e2c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001e30  b3920228  sext_int2long r[6:7], r5
001e34  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001e38  ab0100f0  lui r3, 983040
001e3c  1f02fa02  addli r4, r20, 376
001e40  97b0c203  sll.d r[2:3], r[6:7], r28
001e44  e342bff6  loadli.w r5,  -1188(r30)
001e48  97113c00  or r3, r24, r3
001e4c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001e50  b3920228  sext_int2long r[6:7], r5
001e54  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001e58  ab0100f0  lui r3, 983040
001e5c  1f42fa02  addli r4, r20, 380
001e60  97b0c203  sll.d r[2:3], r[6:7], r28
001e64  e302cff6  loadli.w r5,  -1184(r30)
001e68  97113c00  or r3, r24, r3
001e6c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001e70  b3920228  sext_int2long r[6:7], r5
001e74  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001e78  ab0100f0  lui r3, 983040
001e7c  1f020a03  addli r4, r20, 384
001e80  97b0c203  sll.d r[2:3], r[6:7], r28
001e84  e342cff6  loadli.w r5,  -1180(r30)
001e88  97113c00  or r3, r24, r3
001e8c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001e90  b3920228  sext_int2long r[6:7], r5
001e94  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001e98  ab0100f0  lui r3, 983040
001e9c  1f420a03  addli r4, r20, 388
001ea0  97b0c203  sll.d r[2:3], r[6:7], r28
001ea4  e302dff6  loadli.w r5,  -1176(r30)
001ea8  97113c00  or r3, r24, r3
001eac  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001eb0  b3920228  sext_int2long r[6:7], r5
001eb4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001eb8  ab0100f0  lui r3, 983040
001ebc  1f021a03  addli r4, r20, 392
001ec0  97b0c203  sll.d r[2:3], r[6:7], r28
001ec4  e342dff6  loadli.w r5,  -1172(r30)
001ec8  97113c00  or r3, r24, r3
001ecc  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001ed0  b3920228  sext_int2long r[6:7], r5
001ed4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001ed8  ab0100f0  lui r3, 983040
001edc  1f421a03  addli r4, r20, 396
001ee0  97b0c203  sll.d r[2:3], r[6:7], r28
001ee4  e302eff6  loadli.w r5,  -1168(r30)
001ee8  97113c00  or r3, r24, r3
001eec  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001ef0  b3920228  sext_int2long r[6:7], r5
001ef4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001ef8  ab0100f0  lui r3, 983040
001efc  1f022a03  addli r4, r20, 400
001f00  97b0c203  sll.d r[2:3], r[6:7], r28
001f04  e342eff6  loadli.w r5,  -1164(r30)
001f08  97113c00  or r3, r24, r3
001f0c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001f10  b3920228  sext_int2long r[6:7], r5
001f14  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001f18  6302fff6  loadli.w r4,  -1160(r30)
001f1c  ab0100f0  lui r3, 983040
001f20  97b0c203  sll.d r[2:3], r[6:7], r28
001f24  1f432a03  addli r6, r20, 404
001f28  97113c00  or r3, r24, r3
001f2c  33120228  sext_int2long r[5:6], r4
001f30  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001f34  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
001f38  ab0100f0  lui r3, 983040
001f3c  1732c203  sll.d r[5:6], r[5:6], r28
001f40  8ba04410  add.ul r[2:3], r[10:11], r[5:6]
001f44  1f023a03  addli r4, r20, 408
001f48  97113c00  or r3, r24, r3
001f4c  e342fff6  loadli.w r5,  -1156(r30)
001f50  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001f54  eb510fbf  load.d r[4:5], -1040(r30)
001f58  b3920228  sext_int2long r[6:7], r5
001f5c  8ba13410  add.ul r[4:5], r[10:11], r[4:5]
001f60  97b0c203  sll.d r[2:3], r[6:7], r28
001f64  e3020ff7  loadli.w r5,  -1152(r30)
001f68  73383fbe  store.d r[4:5], -1040(r30)
001f6c  ab0100f0  lui r3, 983040
001f70  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001f74  1f423a03  addli r4, r20, 412
001f78  b3930228  sext_int2long r[8:9], r5
001f7c  e3021ff7  loadli.w r5,  -1144(r30)
001f80  97113c00  or r3, r24, r3
001f84  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001f88  e3400ff7  loadli.w r1,  -1148(r30)
001f8c  97b1c303  sll.d r[4:5], r[8:9], r28
001f90  ab0300f0  lui r7, 983040
001f94  b3950228  sext_int2long r[12:13], r5
001f98  1f044a03  addli r8, r20, 416
001f9c  e3022ff7  loadli.w r5,  -1136(r30)
001fa0  8ba13410  add.ul r[4:5], r[10:11], r[4:5]
001fa4  97137c00  or r7, r24, r7
001fa8  b3900028  sext_int2long r[2:3], r1
001fac  b3960228  sext_int2long r[14:15], r5
001fb0  e3023ff7  loadli.w r5,  -1128(r30)
001fb4  ffb38100  s_lm2gm r7, r8, 0(r[4:5])
001fb8  97b3c503  sll.d r[8:9], r[12:13], r28
001fbc  ab0500f0  lui r11, 983040
001fc0  1f464a03  addli r12, r20, 420
001fc4  e3411ff7  loadli.w r3,  -1140(r30)
001fc8  97b0c003  sll.d r[2:3], r[2:3], r28
001fcc  9715bc00  or r11, r24, r11
001fd0  8ba37410  add.ul r[8:9], r[10:11], r[8:9]
001fd4  b3970228  sext_int2long r[16:17], r5
001fd8  e3024ff7  loadli.w r5,  -1120(r30)
001fdc  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
001fe0  b3910128  sext_int2long r[4:5], r3
001fe4  ffb5c000  s_lm2gm r11, r12, 0(r[2:3])
001fe8  e3402ff7  loadli.w r1,  -1132(r30)
001fec  97b5c603  sll.d r[12:13], r[14:15], r28
001ff0  97b1c103  sll.d r[4:5], r[4:5], r28
001ff4  8ba13410  add.ul r[4:5], r[10:11], r[4:5]
001ff8  8ba5b410  add.ul r[12:13], r[10:11], r[12:13]
001ffc  b3900028  sext_int2long r[2:3], r1
002000  97b0c003  sll.d r[2:3], r[2:3], r28
002004  8ba61410  add.ul r[14:15], r[10:11], r[2:3]
002008  ab0000f0  lui r1, 983040
00200c  1f015a03  addli r2, r20, 424
002010  97101c00  or r1, r24, r1
002014  ffb02300  s_lm2gm r1, r2, 0(r[8:9])
002018  e3403ff7  loadli.w r1,  -1124(r30)
00201c  97b3c703  sll.d r[8:9], r[16:17], r28
002020  8ba87410  add.ul r[18:19], r[10:11], r[8:9]
002024  b3930228  sext_int2long r[8:9], r5
002028  b3900028  sext_int2long r[2:3], r1
00202c  97b0c003  sll.d r[2:3], r[2:3], r28
002030  8bac1410  add.ul r[26:27], r[10:11], r[2:3]
002034  ab0000f0  lui r1, 983040
002038  1f415a03  addli r2, r20, 428
00203c  97101c00  or r1, r24, r1
002040  ffb02100  s_lm2gm r1, r2, 0(r[4:5])
002044  e3404ff7  loadli.w r1,  -1116(r30)
002048  97b1c303  sll.d r[4:5], r[8:9], r28
00204c  8ba23410  add.ul r[6:7], r[10:11], r[4:5]
002050  ab0100f0  lui r3, 983040
002054  1f026a03  addli r4, r20, 432
002058  b3900028  sext_int2long r[2:3], r1
00205c  97113c00  or r3, r24, r3
002060  97b3c003  sll.d r[8:9], r[2:3], r28
002064  e3005ff7  loadli.w r1,  -1112(r30)
002068  ffb14500  s_lm2gm r3, r4, 0(r[12:13])
00206c  8ba37410  add.ul r[8:9], r[10:11], r[8:9]
002070  b3970028  sext_int2long r[16:17], r1
002074  e3405ff7  loadli.w r1,  -1108(r30)
002078  97b5c703  sll.d r[12:13], r[16:17], r28
00207c  b3910028  sext_int2long r[4:5], r1
002080  e3006ff7  loadli.w r1,  -1104(r30)
002084  97b7c103  sll.d r[16:17], r[4:5], r28
002088  8ba1b410  add.ul r[4:5], r[10:11], r[12:13]
00208c  b3950028  sext_int2long r[12:13], r1
002090  e3406ff7  loadli.w r1,  -1100(r30)
002094  8baaf410  add.ul r[22:23], r[10:11], r[16:17]
002098  ab0700f0  lui r15, 983040
00209c  1f486a03  addli r16, r20, 436
0020a0  97b5c503  sll.d r[12:13], r[12:13], r28
0020a4  9717fc00  or r15, r24, r15
0020a8  ffb70601  s_lm2gm r15, r16, 0(r[14:15])
0020ac  b3970028  sext_int2long r[16:17], r1
0020b0  e3007ff7  loadli.w r1,  -1096(r30)
0020b4  8ba6b410  add.ul r[14:15], r[10:11], r[12:13]
0020b8  97b5c703  sll.d r[12:13], r[16:17], r28
0020bc  b3900028  sext_int2long r[2:3], r1
0020c0  8ba7b410  add.ul r[16:17], r[10:11], r[12:13]
0020c4  ab0500f0  lui r11, 983040
0020c8  1f067a03  addli r12, r20, 440
0020cc  97b0c003  sll.d r[2:3], r[2:3], r28
0020d0  9715bc00  or r11, r24, r11
0020d4  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0020d8  ffb5c800  s_lm2gm r11, r12, 0(r[18:19])
0020dc  e3458ff7  loadli.w r11,  -1084(r30)
0020e0  733c1fba  store.d r[2:3], -1096(r30)
0020e4  e3009ff7  loadli.w r1,  -1080(r30)
0020e8  b3950528  sext_int2long r[12:13], r11
0020ec  b3900028  sext_int2long r[2:3], r1
0020f0  97b5c503  sll.d r[12:13], r[12:13], r28
0020f4  97b0c003  sll.d r[2:3], r[2:3], r28
0020f8  8ba81410  add.ul r[18:19], r[10:11], r[2:3]
0020fc  8ba0b410  add.ul r[2:3], r[10:11], r[12:13]
002100  ab0500f0  lui r11, 983040
002104  73341fbc  store.d r[2:3], -1080(r30)
002108  e340aff7  loadli.w r1,  -1068(r30)
00210c  971dbc00  or r27, r24, r11
002110  b3900028  sext_int2long r[2:3], r1
002114  97b0c003  sll.d r[2:3], r[2:3], r28
002118  8ba51410  add.ul r[12:13], r[10:11], r[2:3]
00211c  eb500fbf  load.d r[2:3], -1040(r30)
002120  ffbd4001  s_lm2gm r27, r20, 0(r[2:3])
002124  ab0d00f0  lui r27, 983040
002128  e300bff7  loadli.w r1,  -1064(r30)
00212c  971dbc01  or r27, r24, r27
002130  b3900028  sext_int2long r[2:3], r1
002134  ffbd3c01  s_lm2gm r27, r19, 0(r[26:27])
002138  e349bff7  loadli.w r19,  -1060(r30)
00213c  9f0d8a03  addli r27, r20, 448
002140  97b0c003  sll.d r[2:3], r[2:3], r28
002144  b39c0928  sext_int2long r[26:27], r19
002148  ab0900f0  lui r19, 983040
00214c  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
002150  97193c01  or r19, r24, r19
002154  73381fbe  store.d r[2:3], -1040(r30)
002158  97b0cc03  sll.d r[2:3], r[26:27], r28
00215c  ffb9b201  s_lm2gm r19, r27, 0(r[6:7])
002160  ab0200f0  lui r5, 983040
002164  8bac1410  add.ul r[26:27], r[10:11], r[2:3]
002168  e300cff7  loadli.w r1,  -1056(r30)
00216c  1f438a03  addli r6, r20, 452
002170  9f099a03  addli r19, r20, 456
002174  97125c00  or r5, r24, r5
002178  b3900028  sext_int2long r[2:3], r1
00217c  ffb26300  s_lm2gm r5, r6, 0(r[8:9])
002180  e342cff7  loadli.w r5,  -1052(r30)
002184  97b0c003  sll.d r[2:3], r[2:3], r28
002188  b3920228  sext_int2long r[6:7], r5
00218c  8ba31410  add.ul r[8:9], r[10:11], r[2:3]
002190  97b0c203  sll.d r[2:3], r[6:7], r28
002194  ab0200f0  lui r5, 983040
002198  971d5c00  or r27, r24, r5
00219c  8ba21410  add.ul r[6:7], r[10:11], r[2:3]
0021a0  ab0000f0  lui r1, 983040
0021a4  1f419a03  addli r2, r20, 460
0021a8  ffbd3101  s_lm2gm r27, r19, 0(r[4:5])
0021ac  e301dff7  loadli.w r3,  -1048(r30)
0021b0  97101c00  or r1, r24, r1
0021b4  ab0900f0  lui r19, 983040
0021b8  9f4daa03  addli r27, r20, 468
0021bc  ffb02a00  s_lm2gm r1, r2, 0(r[22:23])
0021c0  97193c01  or r19, r24, r19
0021c4  e340dff7  loadli.w r1,  -1044(r30)
0021c8  b3910128  sext_int2long r[4:5], r3
0021cc  ffb9b701  s_lm2gm r19, r27, 0(r[16:17])
0021d0  eb578fbb  load.d r[16:17], -1096(r30)
0021d4  97b1c103  sll.d r[4:5], r[4:5], r28
0021d8  b3900028  sext_int2long r[2:3], r1
0021dc  8baa3410  add.ul r[22:23], r[10:11], r[4:5]
0021e0  ab0100f0  lui r3, 983040
0021e4  1f02aa03  addli r4, r20, 464
0021e8  97b0c003  sll.d r[2:3], r[2:3], r28
0021ec  97113c00  or r3, r24, r3
0021f0  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0021f4  ffb14600  s_lm2gm r3, r4, 0(r[14:15])
0021f8  ab0600f0  lui r13, 983040
0021fc  ab0100f0  lui r3, 983040
002200  1f47ba03  addli r14, r20, 476
002204  1f02ba03  addli r4, r20, 472
002208  9716dc00  or r13, r24, r13
00220c  97113c00  or r3, r24, r3
002210  ffb6e800  s_lm2gm r13, r14, 0(r[18:19])
002214  ab0600f0  lui r13, 983040
002218  ffb14700  s_lm2gm r3, r4, 0(r[16:17])
00221c  ab0100f0  lui r3, 983040
002220  1f47ca03  addli r14, r20, 484
002224  eb578fbc  load.d r[16:17], -1080(r30)
002228  1f02ca03  addli r4, r20, 480
00222c  9716dc00  or r13, r24, r13
002230  97113c00  or r3, r24, r3
002234  ffb6e500  s_lm2gm r13, r14, 0(r[12:13])
002238  ab0500f0  lui r11, 983040
00223c  ffb14700  s_lm2gm r3, r4, 0(r[16:17])
002240  ab0100f0  lui r3, 983040
002244  1f46da03  addli r12, r20, 492
002248  eb560fbf  load.d r[14:15], -1040(r30)
00224c  1f02da03  addli r4, r20, 488
002250  9715bc00  or r11, r24, r11
002254  97113c00  or r3, r24, r3
002258  ffb5cc00  s_lm2gm r11, r12, 0(r[26:27])
00225c  ab0500f0  lui r11, 983040
002260  ffb14600  s_lm2gm r3, r4, 0(r[14:15])
002264  ab0100f0  lui r3, 983040
002268  1f46ea03  addli r12, r20, 500
00226c  1f02ea03  addli r4, r20, 496
002270  1f0d0ffc  addli r26, r30, -512
002274  9715bc00  or r11, r24, r11
002278  97113c00  or r3, r24, r3
00227c  ffb5c200  s_lm2gm r11, r12, 0(r[6:7])
002280  ab0200f0  lui r5, 983040
002284  ffb14300  s_lm2gm r3, r4, 0(r[8:9])
002288  ab0100f0  lui r3, 983040
00228c  1f43fa03  addli r6, r20, 508
002290  1f02fa03  addli r4, r20, 504
002294  6344fff7  loadli.w r8,  -1028(r30)
002298  97125c00  or r5, r24, r5
00229c  97113c00  or r3, r24, r3
0022a0  ffb26000  s_lm2gm r5, r6, 0(r[2:3])
0022a4  e300aff3  loadli.w r1,  -1584(r30)
0022a8  ffb14a00  s_lm2gm r3, r4, 0(r[22:23])
0022ac  9f010004  addli r3, zero, 512
0022b0  1f0bf003  addli r22, zero, 504
0022b4  00a00000  mfence { lm }
0022b8  e349bff3  loadli.w r19,  -1572(r30)
0022bc  6309eff2  loadli.w r18,  -1680(r30)
0022c0  e30ddff2  loadli.w r27,  -1688(r30)
0022c4  0b141410  add.s r8, r8, r1
0022c8  e300cff3  loadli.w r1,  -1568(r30)
0022cc  3f0c14f0  blt.s r8, r1, -7424
0022d0  5b120000  j 144
0022d4  2b02c07f  lui r4, 523264
0022d8  37c702f2  beq r5, zero, -6704
0022dc  9f020200  addli r5, r4, 0
0022e0  3bb701f2  bneq r3, zero, -6708
0022e4  dbb9fcff  j -6708
0022e8  2b02c07f  lui r4, 523264
0022ec  b7a801f2  beq r3, zero, -6616
0022f0  9f010200  addli r3, r4, 0
0022f4  bb9805f2  bneq r11, zero, -6620
0022f8  dbc4fcff  j -6620
0022fc  2b02c07f  lui r4, 523264
002300  37ca05f2  beq r11, zero, -6512
002304  9f050200  addli r11, r4, 0
002308  3bba06f2  bneq r13, zero, -6516
00230c  dbd1fcff  j -6516
002310  2b02c07f  lui r4, 523264
002314  b79b06f2  beq r13, zero, -6428
002318  9f060200  addli r13, r4, 0
00231c  bb0b04f2  bneq r8, zero, -6432
002320  5bdcfcff  j -6432
002324  2b02c07f  lui r4, 523264
002328  b76c04f2  beq r8, zero, -6344
00232c  1f040200  addli r8, r4, 0
002330  bb5c03f2  bneq r6, zero, -6348
002334  dbe6fcff  j -6348
002338  2b02c07f  lui r4, 523264
00233c  373e03f2  beq r6, zero, -6260
002340  1f030200  addli r6, r4, 0
002344  3bae02f2  bneq r5, zero, -6264
002348  5bf1fcff  j -6264
00234c  2b02c07f  lui r4, 523264
002350  b78f02f2  beq r5, zero, -6176
002354  9f020200  addli r5, r4, 0
002358  3bff01f2  bneq r3, zero, -6180
00235c  dbfbfcff  j -6180
002360  9f8e8e10  addli sp, sp, 2112
002364  00a00300  mfence { lm, sm, gm }
002368  00100000  exit
00236c  00100000  exit
002370  00100000  exit
002374  00100000  exit
002378  00100000  exit
00237c  00100000  exit
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
