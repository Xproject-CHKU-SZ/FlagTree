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
0000dc  9f8e8ec8  addli sp, sp, -7104
0000e0  ab010000  lui r3, 0
0000e4  00310002  core_id r2
0000e8  1f8f0e37  addli r30, sp, 7040
0000ec  ab400000  lui r1, 4
0000f0  2bf30000  lui r6, 15
0000f4  1b322100  slli r4, r2, 2
0000f8  9f810100  addli r3, r3, 0
0000fc  9b920001  ori r5, r1, 16
000100  63444f00  loadli.w r8,  36(r30)
000104  e3004f00  loadli.w r1,  32(r30)
000108  e3035f00  loadli.w r7,  40(r30)
00010c  1b13f3ff  ori r6, r6, 4095
000110  8b143210  add.s r9, r4, r3
000114  8b101420  mul.s r1, r8, r1
000118  0b955410  add.s r10, r9, r5
00011c  8b907020  mul.s r1, r1, r7
000120  e70fafd0  storeli.w r10, -5896(r30)
000124  73600500  stores.w zero, 0(r10)
000128  00550002  load_param_i r10, 0
00012c  00a00300  mfence { lm, sm, gm }
000130  80210304  csr_set csr3, r6
000134  00d00100  sync_group
000138  e74f9fd0  storeli.w r9, -5892(r30)
00013c  73e00400  stores.w zero, 0(r9)
000140  00a00300  mfence { lm, sm, gm }
000144  67036fda  storeli.w r6, -4816(r30)
000148  80210304  csr_set csr3, r6
00014c  00d00100  sync_group
000150  674f1fd0  storeli.w r1, -5900(r30)
000154  4b87a02c  ble.s r1, r10, 22976
000158  9f400000  addli r1, zero, 4
00015c  1f160000  addli r12, zero, 1
000160  6b538f00  load.d r[7:8], 8(r30)
000164  ab0bffff  lui r23, 1048560
000168  ab084000  lui r17, 1024
00016c  2b09807f  lui r18, 522240
000170  9f0a0ff0  addli r21, r30, -2048
000174  eea49462  vxor.u.mz vr9{mr1}, vr9, vr9
000178  8b101130  div.s r1, r2, r1
00017c  670f1fd0  storeli.w r1, -5904(r30)
000180  9bb02000  slli r1, r1, 2
000184  8b101118  sub.s r1, r2, r1
000188  1b013100  andi r2, r2, 3
00018c  9bb58000  slli r11, r1, 8
000190  80d00002  load_param_i r1, 1
000194  e7422fda  storeli.w r2, -4820(r30)
000198  2bf1ff7f  lui r2, 524287
00019c  e70e1fd0  storeli.w r1, -5912(r30)
0001a0  9b901500  ori r1, r11, 1
0001a4  33940528  sext_int2long r[9:10], r11
0001a8  9b19f1ff  ori r19, r2, 4095
0001ac  e74ebfd0  storeli.w r11, -5908(r30)
0001b0  674e1fd0  storeli.w r1, -5916(r30)
0001b4  9b902500  ori r1, r11, 2
0001b8  1734c402  sll.d r[9:10], r[9:10], r12
0001bc  e74f3fdf  storeli.w r19, -4100(r30)
0001c0  670e1fd0  storeli.w r1, -5920(r30)
0001c4  9b903500  ori r1, r11, 3
0001c8  0b238310  add.ul r[7:8], r[7:8], r[9:10]
0001cc  e74d1fd0  storeli.w r1, -5924(r30)
0001d0  9b904500  ori r1, r11, 4
0001d4  e70d1fd0  storeli.w r1, -5928(r30)
0001d8  9b905500  ori r1, r11, 5
0001dc  674d1fd0  storeli.w r1, -5932(r30)
0001e0  9b906500  ori r1, r11, 6
0001e4  670d1fd0  storeli.w r1, -5936(r30)
0001e8  9b907500  ori r1, r11, 7
0001ec  e74c1fd0  storeli.w r1, -5940(r30)
0001f0  9b908500  ori r1, r11, 8
0001f4  e70c1fd0  storeli.w r1, -5944(r30)
0001f8  9b909500  ori r1, r11, 9
0001fc  674c1fd0  storeli.w r1, -5948(r30)
000200  9b90a500  ori r1, r11, 10
000204  670c1fd0  storeli.w r1, -5952(r30)
000208  9b90b500  ori r1, r11, 11
00020c  e74b1fd0  storeli.w r1, -5956(r30)
000210  9b90c500  ori r1, r11, 12
000214  e70b1fd0  storeli.w r1, -5960(r30)
000218  9b90d500  ori r1, r11, 13
00021c  674b1fd0  storeli.w r1, -5964(r30)
000220  9b90e500  ori r1, r11, 14
000224  670b1fd0  storeli.w r1, -5968(r30)
000228  9b90f500  ori r1, r11, 15
00022c  e74a1fd0  storeli.w r1, -5972(r30)
000230  9b900501  ori r1, r11, 16
000234  e70a1fd0  storeli.w r1, -5976(r30)
000238  abf0ffff  lui r1, 1048575
00023c  9b9000ff  ori r1, r1, 4080
000240  97001200  and r1, r4, r1
000244  1b921501  ori r4, r11, 17
000248  8b903010  add.s r1, r1, r3
00024c  674a4fd0  storeli.w r4, -5980(r30)
000250  1f023fd1  addli r4, r30, -5992
000254  67401fd2  storeli.w r1, -5884(r30)
000258  8b905010  add.s r1, r1, r5
00025c  73306200  store.d r[7:8], 0(r4)
000260  67001fd2  storeli.w r1, -5888(r30)
000264  ab700000  lui r1, 7
000268  9b90f0ff  ori r1, r1, 4095
00026c  e70f1fde  storeli.w r1, -4104(r30)
000270  ab10833a  lui r1, 239665
000274  9b90f026  ori r1, r1, 623
000278  e7431fd0  storeli.w r1, -6084(r30)
00027c  9b902501  ori r1, r11, 18
000280  e7031fd0  storeli.w r1, -6088(r30)
000284  9b903501  ori r1, r11, 19
000288  67431fd0  storeli.w r1, -6092(r30)
00028c  9b904501  ori r1, r11, 20
000290  67031fd0  storeli.w r1, -6096(r30)
000294  9b905501  ori r1, r11, 21
000298  e7421fd0  storeli.w r1, -6100(r30)
00029c  9b906501  ori r1, r11, 22
0002a0  e7021fd0  storeli.w r1, -6104(r30)
0002a4  9b907501  ori r1, r11, 23
0002a8  67421fd0  storeli.w r1, -6108(r30)
0002ac  9b908501  ori r1, r11, 24
0002b0  67021fd0  storeli.w r1, -6112(r30)
0002b4  9b909501  ori r1, r11, 25
0002b8  e7411fd0  storeli.w r1, -6116(r30)
0002bc  9b90a501  ori r1, r11, 26
0002c0  e7011fd0  storeli.w r1, -6120(r30)
0002c4  9b90b501  ori r1, r11, 27
0002c8  67411fd0  storeli.w r1, -6124(r30)
0002cc  9b90c501  ori r1, r11, 28
0002d0  67011fd0  storeli.w r1, -6128(r30)
0002d4  9b90d501  ori r1, r11, 29
0002d8  e7401fd0  storeli.w r1, -6132(r30)
0002dc  9b90e501  ori r1, r11, 30
0002e0  e7001fd0  storeli.w r1, -6136(r30)
0002e4  9b90f501  ori r1, r11, 31
0002e8  67401fd0  storeli.w r1, -6140(r30)
0002ec  9b900502  ori r1, r11, 32
0002f0  67001fd0  storeli.w r1, -6144(r30)
0002f4  9b901502  ori r1, r11, 33
0002f8  e74f1fce  storeli.w r1, -6148(r30)
0002fc  9b902502  ori r1, r11, 34
000300  e70f1fce  storeli.w r1, -6152(r30)
000304  9b903502  ori r1, r11, 35
000308  674f1fce  storeli.w r1, -6156(r30)
00030c  9b904502  ori r1, r11, 36
000310  670f1fce  storeli.w r1, -6160(r30)
000314  9b905502  ori r1, r11, 37
000318  e74e1fce  storeli.w r1, -6164(r30)
00031c  9b906502  ori r1, r11, 38
000320  e70e1fce  storeli.w r1, -6168(r30)
000324  9b907502  ori r1, r11, 39
000328  674e1fce  storeli.w r1, -6172(r30)
00032c  9b908502  ori r1, r11, 40
000330  670e1fce  storeli.w r1, -6176(r30)
000334  9b909502  ori r1, r11, 41
000338  e74d1fce  storeli.w r1, -6180(r30)
00033c  9b90a502  ori r1, r11, 42
000340  e70d1fce  storeli.w r1, -6184(r30)
000344  9b90b502  ori r1, r11, 43
000348  674d1fce  storeli.w r1, -6188(r30)
00034c  9b90c502  ori r1, r11, 44
000350  670d1fce  storeli.w r1, -6192(r30)
000354  9b90d502  ori r1, r11, 45
000358  e74c1fce  storeli.w r1, -6196(r30)
00035c  9b90e502  ori r1, r11, 46
000360  e70c1fce  storeli.w r1, -6200(r30)
000364  9b90f502  ori r1, r11, 47
000368  674c1fce  storeli.w r1, -6204(r30)
00036c  9b900503  ori r1, r11, 48
000370  670c1fce  storeli.w r1, -6208(r30)
000374  9b901503  ori r1, r11, 49
000378  e74b1fce  storeli.w r1, -6212(r30)
00037c  9b902503  ori r1, r11, 50
000380  e70b1fce  storeli.w r1, -6216(r30)
000384  9b903503  ori r1, r11, 51
000388  674b1fce  storeli.w r1, -6220(r30)
00038c  9b904503  ori r1, r11, 52
000390  670b1fce  storeli.w r1, -6224(r30)
000394  9b905503  ori r1, r11, 53
000398  e74a1fce  storeli.w r1, -6228(r30)
00039c  9b906503  ori r1, r11, 54
0003a0  e70a1fce  storeli.w r1, -6232(r30)
0003a4  9b907503  ori r1, r11, 55
0003a8  674a1fce  storeli.w r1, -6236(r30)
0003ac  9b908503  ori r1, r11, 56
0003b0  670a1fce  storeli.w r1, -6240(r30)
0003b4  9b909503  ori r1, r11, 57
0003b8  e7491fce  storeli.w r1, -6244(r30)
0003bc  9b90a503  ori r1, r11, 58
0003c0  e7091fce  storeli.w r1, -6248(r30)
0003c4  9b90b503  ori r1, r11, 59
0003c8  67491fce  storeli.w r1, -6252(r30)
0003cc  9b90c503  ori r1, r11, 60
0003d0  67091fce  storeli.w r1, -6256(r30)
0003d4  9b90d503  ori r1, r11, 61
0003d8  e7481fce  storeli.w r1, -6260(r30)
0003dc  9b90e503  ori r1, r11, 62
0003e0  e7081fce  storeli.w r1, -6264(r30)
0003e4  9b90f503  ori r1, r11, 63
0003e8  67481fce  storeli.w r1, -6268(r30)
0003ec  9b900504  ori r1, r11, 64
0003f0  67081fce  storeli.w r1, -6272(r30)
0003f4  9b901504  ori r1, r11, 65
0003f8  e7471fce  storeli.w r1, -6276(r30)
0003fc  9b902504  ori r1, r11, 66
000400  e7071fce  storeli.w r1, -6280(r30)
000404  9b903504  ori r1, r11, 67
000408  67471fce  storeli.w r1, -6284(r30)
00040c  9b904504  ori r1, r11, 68
000410  67071fce  storeli.w r1, -6288(r30)
000414  9b905504  ori r1, r11, 69
000418  e7461fce  storeli.w r1, -6292(r30)
00041c  9b906504  ori r1, r11, 70
000420  e7061fce  storeli.w r1, -6296(r30)
000424  9b907504  ori r1, r11, 71
000428  67461fce  storeli.w r1, -6300(r30)
00042c  9b908504  ori r1, r11, 72
000430  67061fce  storeli.w r1, -6304(r30)
000434  9b909504  ori r1, r11, 73
000438  e7451fce  storeli.w r1, -6308(r30)
00043c  9b90a504  ori r1, r11, 74
000440  e7051fce  storeli.w r1, -6312(r30)
000444  9b90b504  ori r1, r11, 75
000448  67451fce  storeli.w r1, -6316(r30)
00044c  9b90c504  ori r1, r11, 76
000450  67051fce  storeli.w r1, -6320(r30)
000454  9b90d504  ori r1, r11, 77
000458  e7441fce  storeli.w r1, -6324(r30)
00045c  9b90e504  ori r1, r11, 78
000460  e7041fce  storeli.w r1, -6328(r30)
000464  9b90f504  ori r1, r11, 79
000468  67441fce  storeli.w r1, -6332(r30)
00046c  9b900505  ori r1, r11, 80
000470  67041fce  storeli.w r1, -6336(r30)
000474  9b901505  ori r1, r11, 81
000478  e7431fce  storeli.w r1, -6340(r30)
00047c  9b902505  ori r1, r11, 82
000480  e7031fce  storeli.w r1, -6344(r30)
000484  9b903505  ori r1, r11, 83
000488  67431fce  storeli.w r1, -6348(r30)
00048c  9b904505  ori r1, r11, 84
000490  67031fce  storeli.w r1, -6352(r30)
000494  9b905505  ori r1, r11, 85
000498  e7421fce  storeli.w r1, -6356(r30)
00049c  9b906505  ori r1, r11, 86
0004a0  e7021fce  storeli.w r1, -6360(r30)
0004a4  9b907505  ori r1, r11, 87
0004a8  67421fce  storeli.w r1, -6364(r30)
0004ac  9b908505  ori r1, r11, 88
0004b0  67021fce  storeli.w r1, -6368(r30)
0004b4  9b909505  ori r1, r11, 89
0004b8  e7411fce  storeli.w r1, -6372(r30)
0004bc  9b90a505  ori r1, r11, 90
0004c0  e7011fce  storeli.w r1, -6376(r30)
0004c4  9b90b505  ori r1, r11, 91
0004c8  67411fce  storeli.w r1, -6380(r30)
0004cc  9b90c505  ori r1, r11, 92
0004d0  67011fce  storeli.w r1, -6384(r30)
0004d4  9b90d505  ori r1, r11, 93
0004d8  e7401fce  storeli.w r1, -6388(r30)
0004dc  9b90e505  ori r1, r11, 94
0004e0  e7001fce  storeli.w r1, -6392(r30)
0004e4  9b90f505  ori r1, r11, 95
0004e8  67401fce  storeli.w r1, -6396(r30)
0004ec  9b900506  ori r1, r11, 96
0004f0  67001fce  storeli.w r1, -6400(r30)
0004f4  9b901506  ori r1, r11, 97
0004f8  e74f1fcc  storeli.w r1, -6404(r30)
0004fc  9b902506  ori r1, r11, 98
000500  e70f1fcc  storeli.w r1, -6408(r30)
000504  9b903506  ori r1, r11, 99
000508  674f1fcc  storeli.w r1, -6412(r30)
00050c  9b904506  ori r1, r11, 100
000510  670f1fcc  storeli.w r1, -6416(r30)
000514  9b905506  ori r1, r11, 101
000518  e74e1fcc  storeli.w r1, -6420(r30)
00051c  9b906506  ori r1, r11, 102
000520  e70e1fcc  storeli.w r1, -6424(r30)
000524  9b907506  ori r1, r11, 103
000528  674e1fcc  storeli.w r1, -6428(r30)
00052c  9b908506  ori r1, r11, 104
000530  670e1fcc  storeli.w r1, -6432(r30)
000534  9b909506  ori r1, r11, 105
000538  e74d1fcc  storeli.w r1, -6436(r30)
00053c  9b90a506  ori r1, r11, 106
000540  e70d1fcc  storeli.w r1, -6440(r30)
000544  9b90b506  ori r1, r11, 107
000548  674d1fcc  storeli.w r1, -6444(r30)
00054c  9b90c506  ori r1, r11, 108
000550  670d1fcc  storeli.w r1, -6448(r30)
000554  9b90d506  ori r1, r11, 109
000558  e74c1fcc  storeli.w r1, -6452(r30)
00055c  9b90e506  ori r1, r11, 110
000560  e70c1fcc  storeli.w r1, -6456(r30)
000564  9b90f506  ori r1, r11, 111
000568  674c1fcc  storeli.w r1, -6460(r30)
00056c  9b900507  ori r1, r11, 112
000570  670c1fcc  storeli.w r1, -6464(r30)
000574  9b901507  ori r1, r11, 113
000578  e74b1fcc  storeli.w r1, -6468(r30)
00057c  9b902507  ori r1, r11, 114
000580  e70b1fcc  storeli.w r1, -6472(r30)
000584  9b903507  ori r1, r11, 115
000588  674b1fcc  storeli.w r1, -6476(r30)
00058c  9b904507  ori r1, r11, 116
000590  670b1fcc  storeli.w r1, -6480(r30)
000594  9b905507  ori r1, r11, 117
000598  e74a1fcc  storeli.w r1, -6484(r30)
00059c  9b906507  ori r1, r11, 118
0005a0  e70a1fcc  storeli.w r1, -6488(r30)
0005a4  9b907507  ori r1, r11, 119
0005a8  674a1fcc  storeli.w r1, -6492(r30)
0005ac  9b908507  ori r1, r11, 120
0005b0  670a1fcc  storeli.w r1, -6496(r30)
0005b4  9b909507  ori r1, r11, 121
0005b8  e7491fcc  storeli.w r1, -6500(r30)
0005bc  9b90a507  ori r1, r11, 122
0005c0  e7091fcc  storeli.w r1, -6504(r30)
0005c4  9b90b507  ori r1, r11, 123
0005c8  67491fcc  storeli.w r1, -6508(r30)
0005cc  9b90c507  ori r1, r11, 124
0005d0  67091fcc  storeli.w r1, -6512(r30)
0005d4  9b90d507  ori r1, r11, 125
0005d8  e7481fcc  storeli.w r1, -6516(r30)
0005dc  9b90e507  ori r1, r11, 126
0005e0  e7081fcc  storeli.w r1, -6520(r30)
0005e4  9b90f507  ori r1, r11, 127
0005e8  67481fcc  storeli.w r1, -6524(r30)
0005ec  9b900508  ori r1, r11, 128
0005f0  67081fcc  storeli.w r1, -6528(r30)
0005f4  9b901508  ori r1, r11, 129
0005f8  e7471fcc  storeli.w r1, -6532(r30)
0005fc  9b902508  ori r1, r11, 130
000600  e7071fcc  storeli.w r1, -6536(r30)
000604  9b903508  ori r1, r11, 131
000608  67471fcc  storeli.w r1, -6540(r30)
00060c  9b904508  ori r1, r11, 132
000610  67071fcc  storeli.w r1, -6544(r30)
000614  9b905508  ori r1, r11, 133
000618  e7461fcc  storeli.w r1, -6548(r30)
00061c  9b906508  ori r1, r11, 134
000620  e7061fcc  storeli.w r1, -6552(r30)
000624  9b907508  ori r1, r11, 135
000628  67461fcc  storeli.w r1, -6556(r30)
00062c  9b908508  ori r1, r11, 136
000630  67061fcc  storeli.w r1, -6560(r30)
000634  9b909508  ori r1, r11, 137
000638  e7451fcc  storeli.w r1, -6564(r30)
00063c  9b90a508  ori r1, r11, 138
000640  e7051fcc  storeli.w r1, -6568(r30)
000644  9b90b508  ori r1, r11, 139
000648  67451fcc  storeli.w r1, -6572(r30)
00064c  9b90c508  ori r1, r11, 140
000650  67051fcc  storeli.w r1, -6576(r30)
000654  9b90d508  ori r1, r11, 141
000658  e7441fcc  storeli.w r1, -6580(r30)
00065c  9b90e508  ori r1, r11, 142
000660  e7041fcc  storeli.w r1, -6584(r30)
000664  9b90f508  ori r1, r11, 143
000668  67441fcc  storeli.w r1, -6588(r30)
00066c  9b900509  ori r1, r11, 144
000670  67041fcc  storeli.w r1, -6592(r30)
000674  9b901509  ori r1, r11, 145
000678  e7431fcc  storeli.w r1, -6596(r30)
00067c  9b902509  ori r1, r11, 146
000680  e7031fcc  storeli.w r1, -6600(r30)
000684  9b903509  ori r1, r11, 147
000688  67431fcc  storeli.w r1, -6604(r30)
00068c  9b904509  ori r1, r11, 148
000690  67031fcc  storeli.w r1, -6608(r30)
000694  9b905509  ori r1, r11, 149
000698  e7421fcc  storeli.w r1, -6612(r30)
00069c  9b906509  ori r1, r11, 150
0006a0  e7021fcc  storeli.w r1, -6616(r30)
0006a4  9b907509  ori r1, r11, 151
0006a8  67421fcc  storeli.w r1, -6620(r30)
0006ac  9b908509  ori r1, r11, 152
0006b0  67021fcc  storeli.w r1, -6624(r30)
0006b4  9b909509  ori r1, r11, 153
0006b8  e7411fcc  storeli.w r1, -6628(r30)
0006bc  9b90a509  ori r1, r11, 154
0006c0  e7011fcc  storeli.w r1, -6632(r30)
0006c4  9b90b509  ori r1, r11, 155
0006c8  67411fcc  storeli.w r1, -6636(r30)
0006cc  9b90c509  ori r1, r11, 156
0006d0  67011fcc  storeli.w r1, -6640(r30)
0006d4  9b90d509  ori r1, r11, 157
0006d8  e7401fcc  storeli.w r1, -6644(r30)
0006dc  9b90e509  ori r1, r11, 158
0006e0  e7001fcc  storeli.w r1, -6648(r30)
0006e4  9b90f509  ori r1, r11, 159
0006e8  67401fcc  storeli.w r1, -6652(r30)
0006ec  9b90050a  ori r1, r11, 160
0006f0  67001fcc  storeli.w r1, -6656(r30)
0006f4  9b90150a  ori r1, r11, 161
0006f8  e74f1fca  storeli.w r1, -6660(r30)
0006fc  9b90250a  ori r1, r11, 162
000700  e70f1fca  storeli.w r1, -6664(r30)
000704  9b90350a  ori r1, r11, 163
000708  674f1fca  storeli.w r1, -6668(r30)
00070c  9b90450a  ori r1, r11, 164
000710  670f1fca  storeli.w r1, -6672(r30)
000714  9b90550a  ori r1, r11, 165
000718  e74e1fca  storeli.w r1, -6676(r30)
00071c  9b90650a  ori r1, r11, 166
000720  e70e1fca  storeli.w r1, -6680(r30)
000724  9b90750a  ori r1, r11, 167
000728  674e1fca  storeli.w r1, -6684(r30)
00072c  9b90850a  ori r1, r11, 168
000730  670e1fca  storeli.w r1, -6688(r30)
000734  9b90950a  ori r1, r11, 169
000738  e74d1fca  storeli.w r1, -6692(r30)
00073c  9b90a50a  ori r1, r11, 170
000740  e70d1fca  storeli.w r1, -6696(r30)
000744  9b90b50a  ori r1, r11, 171
000748  674d1fca  storeli.w r1, -6700(r30)
00074c  9b90c50a  ori r1, r11, 172
000750  670d1fca  storeli.w r1, -6704(r30)
000754  9b90d50a  ori r1, r11, 173
000758  e74c1fca  storeli.w r1, -6708(r30)
00075c  9b90e50a  ori r1, r11, 174
000760  e70c1fca  storeli.w r1, -6712(r30)
000764  9b90f50a  ori r1, r11, 175
000768  674c1fca  storeli.w r1, -6716(r30)
00076c  9b90050b  ori r1, r11, 176
000770  670c1fca  storeli.w r1, -6720(r30)
000774  9b90150b  ori r1, r11, 177
000778  e74b1fca  storeli.w r1, -6724(r30)
00077c  9b90250b  ori r1, r11, 178
000780  e70b1fca  storeli.w r1, -6728(r30)
000784  9b90350b  ori r1, r11, 179
000788  674b1fca  storeli.w r1, -6732(r30)
00078c  9b90450b  ori r1, r11, 180
000790  670b1fca  storeli.w r1, -6736(r30)
000794  9b90550b  ori r1, r11, 181
000798  e74a1fca  storeli.w r1, -6740(r30)
00079c  9b90650b  ori r1, r11, 182
0007a0  e70a1fca  storeli.w r1, -6744(r30)
0007a4  9b90750b  ori r1, r11, 183
0007a8  674a1fca  storeli.w r1, -6748(r30)
0007ac  9b90850b  ori r1, r11, 184
0007b0  670a1fca  storeli.w r1, -6752(r30)
0007b4  9b90950b  ori r1, r11, 185
0007b8  e7491fca  storeli.w r1, -6756(r30)
0007bc  9b90a50b  ori r1, r11, 186
0007c0  e7091fca  storeli.w r1, -6760(r30)
0007c4  9b90b50b  ori r1, r11, 187
0007c8  67491fca  storeli.w r1, -6764(r30)
0007cc  9b90c50b  ori r1, r11, 188
0007d0  67091fca  storeli.w r1, -6768(r30)
0007d4  9b90d50b  ori r1, r11, 189
0007d8  e7481fca  storeli.w r1, -6772(r30)
0007dc  9b90e50b  ori r1, r11, 190
0007e0  e7081fca  storeli.w r1, -6776(r30)
0007e4  9b90f50b  ori r1, r11, 191
0007e8  67481fca  storeli.w r1, -6780(r30)
0007ec  9b90050c  ori r1, r11, 192
0007f0  67081fca  storeli.w r1, -6784(r30)
0007f4  9b90150c  ori r1, r11, 193
0007f8  e7471fca  storeli.w r1, -6788(r30)
0007fc  9b90250c  ori r1, r11, 194
000800  e7071fca  storeli.w r1, -6792(r30)
000804  9b90350c  ori r1, r11, 195
000808  67471fca  storeli.w r1, -6796(r30)
00080c  9b90450c  ori r1, r11, 196
000810  67071fca  storeli.w r1, -6800(r30)
000814  9b90550c  ori r1, r11, 197
000818  e7461fca  storeli.w r1, -6804(r30)
00081c  9b90650c  ori r1, r11, 198
000820  e7061fca  storeli.w r1, -6808(r30)
000824  9b90750c  ori r1, r11, 199
000828  67461fca  storeli.w r1, -6812(r30)
00082c  9b90850c  ori r1, r11, 200
000830  67061fca  storeli.w r1, -6816(r30)
000834  9b90950c  ori r1, r11, 201
000838  e7451fca  storeli.w r1, -6820(r30)
00083c  9b90a50c  ori r1, r11, 202
000840  e7051fca  storeli.w r1, -6824(r30)
000844  9b90b50c  ori r1, r11, 203
000848  67451fca  storeli.w r1, -6828(r30)
00084c  9b90c50c  ori r1, r11, 204
000850  67051fca  storeli.w r1, -6832(r30)
000854  9b90d50c  ori r1, r11, 205
000858  e7441fca  storeli.w r1, -6836(r30)
00085c  9b90e50c  ori r1, r11, 206
000860  e7041fca  storeli.w r1, -6840(r30)
000864  9b90f50c  ori r1, r11, 207
000868  67441fca  storeli.w r1, -6844(r30)
00086c  9b90050d  ori r1, r11, 208
000870  67041fca  storeli.w r1, -6848(r30)
000874  9b90150d  ori r1, r11, 209
000878  e7431fca  storeli.w r1, -6852(r30)
00087c  9b90250d  ori r1, r11, 210
000880  e7031fca  storeli.w r1, -6856(r30)
000884  9b90350d  ori r1, r11, 211
000888  67431fca  storeli.w r1, -6860(r30)
00088c  9b90450d  ori r1, r11, 212
000890  67031fca  storeli.w r1, -6864(r30)
000894  9b90550d  ori r1, r11, 213
000898  e7421fca  storeli.w r1, -6868(r30)
00089c  9b90650d  ori r1, r11, 214
0008a0  e7021fca  storeli.w r1, -6872(r30)
0008a4  9b90750d  ori r1, r11, 215
0008a8  67421fca  storeli.w r1, -6876(r30)
0008ac  9b90850d  ori r1, r11, 216
0008b0  67021fca  storeli.w r1, -6880(r30)
0008b4  9b90950d  ori r1, r11, 217
0008b8  e7411fca  storeli.w r1, -6884(r30)
0008bc  9b90a50d  ori r1, r11, 218
0008c0  e7011fca  storeli.w r1, -6888(r30)
0008c4  9b90b50d  ori r1, r11, 219
0008c8  67411fca  storeli.w r1, -6892(r30)
0008cc  9b90c50d  ori r1, r11, 220
0008d0  67011fca  storeli.w r1, -6896(r30)
0008d4  9b90d50d  ori r1, r11, 221
0008d8  e7401fca  storeli.w r1, -6900(r30)
0008dc  9b90e50d  ori r1, r11, 222
0008e0  e7001fca  storeli.w r1, -6904(r30)
0008e4  9b90f50d  ori r1, r11, 223
0008e8  67401fca  storeli.w r1, -6908(r30)
0008ec  9b90050e  ori r1, r11, 224
0008f0  67001fca  storeli.w r1, -6912(r30)
0008f4  9b90150e  ori r1, r11, 225
0008f8  e74f1fc8  storeli.w r1, -6916(r30)
0008fc  9b90250e  ori r1, r11, 226
000900  e70f1fc8  storeli.w r1, -6920(r30)
000904  9b90350e  ori r1, r11, 227
000908  674f1fc8  storeli.w r1, -6924(r30)
00090c  9b90450e  ori r1, r11, 228
000910  670f1fc8  storeli.w r1, -6928(r30)
000914  9b90550e  ori r1, r11, 229
000918  e74e1fc8  storeli.w r1, -6932(r30)
00091c  9b90650e  ori r1, r11, 230
000920  e70e1fc8  storeli.w r1, -6936(r30)
000924  9b90750e  ori r1, r11, 231
000928  674e1fc8  storeli.w r1, -6940(r30)
00092c  9b90850e  ori r1, r11, 232
000930  670e1fc8  storeli.w r1, -6944(r30)
000934  9b90950e  ori r1, r11, 233
000938  e74d1fc8  storeli.w r1, -6948(r30)
00093c  9b90a50e  ori r1, r11, 234
000940  e70d1fc8  storeli.w r1, -6952(r30)
000944  9b90b50e  ori r1, r11, 235
000948  674d1fc8  storeli.w r1, -6956(r30)
00094c  9b90c50e  ori r1, r11, 236
000950  670d1fc8  storeli.w r1, -6960(r30)
000954  9b90d50e  ori r1, r11, 237
000958  e74c1fc8  storeli.w r1, -6964(r30)
00095c  9b90e50e  ori r1, r11, 238
000960  e70c1fc8  storeli.w r1, -6968(r30)
000964  9b90f50e  ori r1, r11, 239
000968  674c1fc8  storeli.w r1, -6972(r30)
00096c  9b90050f  ori r1, r11, 240
000970  670c1fc8  storeli.w r1, -6976(r30)
000974  9b90150f  ori r1, r11, 241
000978  e74b1fc8  storeli.w r1, -6980(r30)
00097c  9b90250f  ori r1, r11, 242
000980  e70b1fc8  storeli.w r1, -6984(r30)
000984  9b90350f  ori r1, r11, 243
000988  674b1fc8  storeli.w r1, -6988(r30)
00098c  9b90450f  ori r1, r11, 244
000990  670b1fc8  storeli.w r1, -6992(r30)
000994  9b90550f  ori r1, r11, 245
000998  e74a1fc8  storeli.w r1, -6996(r30)
00099c  9b90650f  ori r1, r11, 246
0009a0  e70a1fc8  storeli.w r1, -7000(r30)
0009a4  9b90750f  ori r1, r11, 247
0009a8  674a1fc8  storeli.w r1, -7004(r30)
0009ac  9b90850f  ori r1, r11, 248
0009b0  670a1fc8  storeli.w r1, -7008(r30)
0009b4  9b90950f  ori r1, r11, 249
0009b8  e7491fc8  storeli.w r1, -7012(r30)
0009bc  9b90f50f  ori r1, r11, 255
0009c0  e7091fc8  storeli.w r1, -7016(r30)
0009c4  9b90e50f  ori r1, r11, 254
0009c8  67491fc8  storeli.w r1, -7020(r30)
0009cc  9b90d50f  ori r1, r11, 253
0009d0  67091fc8  storeli.w r1, -7024(r30)
0009d4  9b90c50f  ori r1, r11, 252
0009d8  e7481fc8  storeli.w r1, -7028(r30)
0009dc  9b90b50f  ori r1, r11, 251
0009e0  e7081fc8  storeli.w r1, -7032(r30)
0009e4  9b90a50f  ori r1, r11, 250
0009e8  67481fc8  storeli.w r1, -7036(r30)
0009ec  9f008fd0  addli r1, r30, -6080
0009f0  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
0009f4  db110400  j 8332
0009f8  e3425fd2  loadli.w r5,  -5844(r30)
0009fc  9f030fdf  addli r7, r30, -4224
000a00  e3406fd2  loadli.w r1,  -5836(r30)
000a04  e3016fd2  loadli.w r3,  -5840(r30)
000a08  9f1a0000  addli r21, zero, 1
000a0c  eb560f01  load.d r[14:15], 16(r30)
000a10  1f090ff0  addli r18, r30, -2048
000a14  1f2b0000  addli r22, zero, 2
000a18  1f440900  addli r8, r18, 4
000a1c  9f68b903  addli r17, r18, 478
000a20  b39c0228  sext_int2long r[26:27], r5
000a24  e3025fd2  loadli.w r5,  -5848(r30)
000a28  b3900028  sext_int2long r[2:3], r1
000a2c  b3910128  sext_int2long r[4:5], r3
000a30  97b05003  sll.d r[2:3], r[2:3], r21
000a34  b39d0228  sext_int2long r[28:29], r5
000a38  e3424fd2  loadli.w r5,  -5852(r30)
000a3c  b3970228  sext_int2long r[16:17], r5
000a40  e3024fd2  loadli.w r5,  -5856(r30)
000a44  b3990228  sext_int2long r[20:21], r5
000a48  e3423fd2  loadli.w r5,  -5860(r30)
000a4c  b3950228  sext_int2long r[12:13], r5
000a50  e3023fd2  loadli.w r5,  -5864(r30)
000a54  b39b0228  sext_int2long r[24:25], r5
000a58  e3422fd2  loadli.w r5,  -5868(r30)
000a5c  b3920228  sext_int2long r[6:7], r5
000a60  73b05300  store.d r[6:7], 0(r7)
000a64  e3022fd2  loadli.w r5,  -5872(r30)
000a68  9f03efdf  addli r7, r30, -4112
000a6c  b3940228  sext_int2long r[10:11], r5
000a70  e3421fd2  loadli.w r5,  -5876(r30)
000a74  b3920228  sext_int2long r[6:7], r5
000a78  73b05300  store.d r[6:7], 0(r7)
000a7c  17b25103  sll.d r[5:6], r[4:5], r21
000a80  0ba11610  add.ul r[3:4], r[14:15], r[2:3]
000a84  ab0000f0  lui r1, 983040
000a88  9f230900  addli r7, r18, 2
000a8c  8ba24610  add.ul r[6:7], r[14:15], r[5:6]
000a90  2b0200f0  lui r4, 983040
000a94  97101b00  or r1, r22, r1
000a98  17124b00  or r4, r22, r4
000a9c  ff307100  s_lm2gm r1, r7, 0(r[3:4])
000aa0  97b05c03  sll.d r[2:3], r[26:27], r21
000aa4  9f630900  addli r7, r18, 6
000aa8  7fb28200  s_lm2gm r4, r8, 0(r[6:7])
000aac  97b15d03  sll.d r[4:5], r[28:29], r21
000ab0  2b0300f0  lui r6, 983040
000ab4  ab0200f0  lui r5, 983040
000ab8  1f041900  addli r8, r18, 8
000abc  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
000ac0  8ba13610  add.ul r[4:5], r[14:15], r[4:5]
000ac4  17136b00  or r6, r22, r6
000ac8  97125b00  or r5, r22, r5
000acc  7fb38100  s_lm2gm r6, r8, 0(r[4:5])
000ad0  97b15903  sll.d r[4:5], r[20:21], r21
000ad4  2b0300f0  lui r6, 983040
000ad8  ffb27000  s_lm2gm r5, r7, 0(r[2:3])
000adc  97b05703  sll.d r[2:3], r[16:17], r21
000ae0  ab0200f0  lui r5, 983040
000ae4  1f441900  addli r8, r18, 12
000ae8  9f231900  addli r7, r18, 10
000aec  8ba13610  add.ul r[4:5], r[14:15], r[4:5]
000af0  17136b00  or r6, r22, r6
000af4  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
000af8  97125b00  or r5, r22, r5
000afc  7fb38100  s_lm2gm r6, r8, 0(r[4:5])
000b00  97b15b03  sll.d r[4:5], r[24:25], r21
000b04  2b0300f0  lui r6, 983040
000b08  ffb27000  s_lm2gm r5, r7, 0(r[2:3])
000b0c  97b05503  sll.d r[2:3], r[12:13], r21
000b10  ab0200f0  lui r5, 983040
000b14  1f042900  addli r8, r18, 16
000b18  9f631900  addli r7, r18, 14
000b1c  e3458fd9  loadli.w r11,  -4924(r30)
000b20  8ba13610  add.ul r[4:5], r[14:15], r[4:5]
000b24  17136b00  or r6, r22, r6
000b28  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
000b2c  97125b00  or r5, r22, r5
000b30  b3950528  sext_int2long r[12:13], r11
000b34  7fb38100  s_lm2gm r6, r8, 0(r[4:5])
000b38  9f010fdf  addli r3, r30, -4224
000b3c  ffb27000  s_lm2gm r5, r7, 0(r[2:3])
000b40  2b0300f0  lui r6, 983040
000b44  ab0200f0  lui r5, 983040
000b48  1f442900  addli r8, r18, 20
000b4c  9f232900  addli r7, r18, 18
000b50  ebd00100  load.d r[2:3], 0(r3)
000b54  97b15403  sll.d r[4:5], r[10:11], r21
000b58  17136b00  or r6, r22, r6
000b5c  97125b00  or r5, r22, r5
000b60  e3447fd9  loadli.w r9,  -4932(r30)
000b64  8ba13610  add.ul r[4:5], r[14:15], r[4:5]
000b68  97b05003  sll.d r[2:3], r[2:3], r21
000b6c  b3940428  sext_int2long r[10:11], r9
000b70  7fb38100  s_lm2gm r6, r8, 0(r[4:5])
000b74  9f01efdf  addli r3, r30, -4112
000b78  1f622900  addli r4, r18, 22
000b7c  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
000b80  ffb27000  s_lm2gm r5, r7, 0(r[2:3])
000b84  ebd00100  load.d r[2:3], 0(r3)
000b88  e3027fd2  loadli.w r5,  -5832(r30)
000b8c  ab0100f0  lui r3, 983040
000b90  e3436fd9  loadli.w r7,  -4940(r30)
000b94  97113b00  or r3, r22, r3
000b98  97b05003  sll.d r[2:3], r[2:3], r21
000b9c  b3920228  sext_int2long r[6:7], r5
000ba0  b3930328  sext_int2long r[8:9], r7
000ba4  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
000ba8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000bac  97b05203  sll.d r[2:3], r[6:7], r21
000bb0  e3427fd2  loadli.w r5,  -5828(r30)
000bb4  ab0100f0  lui r3, 983040
000bb8  1f023900  addli r4, r18, 24
000bbc  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
000bc0  97113b00  or r3, r22, r3
000bc4  b3920228  sext_int2long r[6:7], r5
000bc8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000bcc  ab0100f0  lui r3, 983040
000bd0  1f223900  addli r4, r18, 26
000bd4  97b05203  sll.d r[2:3], r[6:7], r21
000bd8  e3028fd2  loadli.w r5,  -5824(r30)
000bdc  97113b00  or r3, r22, r3
000be0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
000be4  b3920228  sext_int2long r[6:7], r5
000be8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000bec  ab0100f0  lui r3, 983040
000bf0  1f423900  addli r4, r18, 28
000bf4  97b05203  sll.d r[2:3], r[6:7], r21
000bf8  e3428fd2  loadli.w r5,  -5820(r30)
000bfc  97113b00  or r3, r22, r3
000c00  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
000c04  b3920228  sext_int2long r[6:7], r5
000c08  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c0c  ab0100f0  lui r3, 983040
000c10  1f623900  addli r4, r18, 30
000c14  97b05203  sll.d r[2:3], r[6:7], r21
000c18  e3029fd2  loadli.w r5,  -5816(r30)
000c1c  97113b00  or r3, r22, r3
000c20  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
000c24  b3920228  sext_int2long r[6:7], r5
000c28  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c2c  ab0100f0  lui r3, 983040
000c30  1f024900  addli r4, r18, 32
000c34  97b05203  sll.d r[2:3], r[6:7], r21
000c38  e3429fd2  loadli.w r5,  -5812(r30)
000c3c  97113b00  or r3, r22, r3
000c40  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
000c44  b3920228  sext_int2long r[6:7], r5
000c48  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c4c  ab0100f0  lui r3, 983040
000c50  1f224900  addli r4, r18, 34
000c54  97b05203  sll.d r[2:3], r[6:7], r21
000c58  e302afd2  loadli.w r5,  -5808(r30)
000c5c  97113b00  or r3, r22, r3
000c60  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
000c64  b3920228  sext_int2long r[6:7], r5
000c68  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c6c  ab0100f0  lui r3, 983040
000c70  1f424900  addli r4, r18, 36
000c74  97b05203  sll.d r[2:3], r[6:7], r21
000c78  e342afd2  loadli.w r5,  -5804(r30)
000c7c  97113b00  or r3, r22, r3
000c80  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
000c84  b3920228  sext_int2long r[6:7], r5
000c88  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c8c  ab0100f0  lui r3, 983040
000c90  1f624900  addli r4, r18, 38
000c94  97b05203  sll.d r[2:3], r[6:7], r21
000c98  e302bfd2  loadli.w r5,  -5800(r30)
000c9c  97113b00  or r3, r22, r3
000ca0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
000ca4  b3920228  sext_int2long r[6:7], r5
000ca8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000cac  ab0100f0  lui r3, 983040
000cb0  1f025900  addli r4, r18, 40
000cb4  97b05203  sll.d r[2:3], r[6:7], r21
000cb8  e342bfd2  loadli.w r5,  -5796(r30)
000cbc  97113b00  or r3, r22, r3
000cc0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
000cc4  b3920228  sext_int2long r[6:7], r5
000cc8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ccc  ab0100f0  lui r3, 983040
000cd0  1f225900  addli r4, r18, 42
000cd4  97b05203  sll.d r[2:3], r[6:7], r21
000cd8  e302cfd2  loadli.w r5,  -5792(r30)
000cdc  97113b00  or r3, r22, r3
000ce0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
000ce4  b3920228  sext_int2long r[6:7], r5
000ce8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000cec  ab0100f0  lui r3, 983040
000cf0  1f425900  addli r4, r18, 44
000cf4  97b05203  sll.d r[2:3], r[6:7], r21
000cf8  e342cfd2  loadli.w r5,  -5788(r30)
000cfc  97113b00  or r3, r22, r3
000d00  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
000d04  b3920228  sext_int2long r[6:7], r5
000d08  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d0c  ab0100f0  lui r3, 983040
000d10  1f625900  addli r4, r18, 46
000d14  97b05203  sll.d r[2:3], r[6:7], r21
000d18  e302dfd2  loadli.w r5,  -5784(r30)
000d1c  97113b00  or r3, r22, r3
000d20  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
000d24  b3920228  sext_int2long r[6:7], r5
000d28  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d2c  ab0100f0  lui r3, 983040
000d30  1f026900  addli r4, r18, 48
000d34  97b05203  sll.d r[2:3], r[6:7], r21
000d38  e342dfd2  loadli.w r5,  -5780(r30)
000d3c  97113b00  or r3, r22, r3
000d40  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
000d44  b3920228  sext_int2long r[6:7], r5
000d48  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d4c  ab0100f0  lui r3, 983040
000d50  1f226900  addli r4, r18, 50
000d54  97b05203  sll.d r[2:3], r[6:7], r21
000d58  e302efd2  loadli.w r5,  -5776(r30)
000d5c  97113b00  or r3, r22, r3
000d60  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
000d64  b3920228  sext_int2long r[6:7], r5
000d68  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d6c  ab0100f0  lui r3, 983040
000d70  1f426900  addli r4, r18, 52
000d74  97b05203  sll.d r[2:3], r[6:7], r21
000d78  e342efd2  loadli.w r5,  -5772(r30)
000d7c  97113b00  or r3, r22, r3
000d80  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
000d84  b3920228  sext_int2long r[6:7], r5
000d88  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d8c  ab0100f0  lui r3, 983040
000d90  1f626900  addli r4, r18, 54
000d94  97b05203  sll.d r[2:3], r[6:7], r21
000d98  e302ffd2  loadli.w r5,  -5768(r30)
000d9c  97113b00  or r3, r22, r3
000da0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
000da4  b3920228  sext_int2long r[6:7], r5
000da8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000dac  ab0100f0  lui r3, 983040
000db0  1f027900  addli r4, r18, 56
000db4  97b05203  sll.d r[2:3], r[6:7], r21
000db8  e342ffd2  loadli.w r5,  -5764(r30)
000dbc  97113b00  or r3, r22, r3
000dc0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
000dc4  b3920228  sext_int2long r[6:7], r5
000dc8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000dcc  ab0100f0  lui r3, 983040
000dd0  1f227900  addli r4, r18, 58
000dd4  97b05203  sll.d r[2:3], r[6:7], r21
000dd8  e3020fd3  loadli.w r5,  -5760(r30)
000ddc  97113b00  or r3, r22, r3
000de0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
000de4  b3920228  sext_int2long r[6:7], r5
000de8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000dec  ab0100f0  lui r3, 983040
000df0  1f427900  addli r4, r18, 60
000df4  97b05203  sll.d r[2:3], r[6:7], r21
000df8  e3420fd3  loadli.w r5,  -5756(r30)
000dfc  97113b00  or r3, r22, r3
000e00  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
000e04  b3920228  sext_int2long r[6:7], r5
000e08  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e0c  ab0100f0  lui r3, 983040
000e10  1f627900  addli r4, r18, 62
000e14  97b05203  sll.d r[2:3], r[6:7], r21
000e18  e3021fd3  loadli.w r5,  -5752(r30)
000e1c  97113b00  or r3, r22, r3
000e20  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
000e24  b3920228  sext_int2long r[6:7], r5
000e28  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e2c  63421fd3  loadli.w r4,  -5748(r30)
000e30  ab0100f0  lui r3, 983040
000e34  97b05203  sll.d r[2:3], r[6:7], r21
000e38  63038fd6  loadli.w r6,  -5312(r30)
000e3c  97113b00  or r3, r22, r3
000e40  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
000e44  33120228  sext_int2long r[5:6], r4
000e48  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
000e4c  97305203  sll.d r[2:3], r[5:6], r21
000e50  e3022fd3  loadli.w r5,  -5744(r30)
000e54  ab0100f0  lui r3, 983040
000e58  1f228900  addli r4, r18, 66
000e5c  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
000e60  97113b00  or r3, r22, r3
000e64  b3920228  sext_int2long r[6:7], r5
000e68  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e6c  ab0100f0  lui r3, 983040
000e70  1f428900  addli r4, r18, 68
000e74  97b05203  sll.d r[2:3], r[6:7], r21
000e78  e3422fd3  loadli.w r5,  -5740(r30)
000e7c  97113b00  or r3, r22, r3
000e80  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
000e84  b3920228  sext_int2long r[6:7], r5
000e88  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e8c  ab0100f0  lui r3, 983040
000e90  1f628900  addli r4, r18, 70
000e94  97b05203  sll.d r[2:3], r[6:7], r21
000e98  e3023fd3  loadli.w r5,  -5736(r30)
000e9c  97113b00  or r3, r22, r3
000ea0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
000ea4  b3920228  sext_int2long r[6:7], r5
000ea8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000eac  ab0100f0  lui r3, 983040
000eb0  1f029900  addli r4, r18, 72
000eb4  97b05203  sll.d r[2:3], r[6:7], r21
000eb8  e3423fd3  loadli.w r5,  -5732(r30)
000ebc  97113b00  or r3, r22, r3
000ec0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
000ec4  b3920228  sext_int2long r[6:7], r5
000ec8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ecc  ab0100f0  lui r3, 983040
000ed0  1f229900  addli r4, r18, 74
000ed4  97b05203  sll.d r[2:3], r[6:7], r21
000ed8  e3024fd3  loadli.w r5,  -5728(r30)
000edc  97113b00  or r3, r22, r3
000ee0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
000ee4  b3920228  sext_int2long r[6:7], r5
000ee8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000eec  ab0100f0  lui r3, 983040
000ef0  1f429900  addli r4, r18, 76
000ef4  97b05203  sll.d r[2:3], r[6:7], r21
000ef8  e3424fd3  loadli.w r5,  -5724(r30)
000efc  97113b00  or r3, r22, r3
000f00  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
000f04  b3920228  sext_int2long r[6:7], r5
000f08  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f0c  ab0100f0  lui r3, 983040
000f10  1f629900  addli r4, r18, 78
000f14  97b05203  sll.d r[2:3], r[6:7], r21
000f18  e3025fd3  loadli.w r5,  -5720(r30)
000f1c  97113b00  or r3, r22, r3
000f20  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
000f24  b3920228  sext_int2long r[6:7], r5
000f28  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f2c  ab0100f0  lui r3, 983040
000f30  1f02a900  addli r4, r18, 80
000f34  97b05203  sll.d r[2:3], r[6:7], r21
000f38  e3425fd3  loadli.w r5,  -5716(r30)
000f3c  97113b00  or r3, r22, r3
000f40  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
000f44  b3920228  sext_int2long r[6:7], r5
000f48  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f4c  ab0100f0  lui r3, 983040
000f50  1f22a900  addli r4, r18, 82
000f54  97b05203  sll.d r[2:3], r[6:7], r21
000f58  e3026fd3  loadli.w r5,  -5712(r30)
000f5c  97113b00  or r3, r22, r3
000f60  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
000f64  b3920228  sext_int2long r[6:7], r5
000f68  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f6c  ab0100f0  lui r3, 983040
000f70  1f42a900  addli r4, r18, 84
000f74  97b05203  sll.d r[2:3], r[6:7], r21
000f78  e3426fd3  loadli.w r5,  -5708(r30)
000f7c  97113b00  or r3, r22, r3
000f80  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
000f84  b3920228  sext_int2long r[6:7], r5
000f88  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f8c  ab0100f0  lui r3, 983040
000f90  1f62a900  addli r4, r18, 86
000f94  97b05203  sll.d r[2:3], r[6:7], r21
000f98  e3027fd3  loadli.w r5,  -5704(r30)
000f9c  97113b00  or r3, r22, r3
000fa0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
000fa4  b3920228  sext_int2long r[6:7], r5
000fa8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000fac  ab0100f0  lui r3, 983040
000fb0  1f02b900  addli r4, r18, 88
000fb4  97b05203  sll.d r[2:3], r[6:7], r21
000fb8  e3427fd3  loadli.w r5,  -5700(r30)
000fbc  97113b00  or r3, r22, r3
000fc0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
000fc4  b3920228  sext_int2long r[6:7], r5
000fc8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000fcc  ab0100f0  lui r3, 983040
000fd0  1f22b900  addli r4, r18, 90
000fd4  97b05203  sll.d r[2:3], r[6:7], r21
000fd8  e3028fd3  loadli.w r5,  -5696(r30)
000fdc  97113b00  or r3, r22, r3
000fe0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
000fe4  b3920228  sext_int2long r[6:7], r5
000fe8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000fec  ab0100f0  lui r3, 983040
000ff0  1f42b900  addli r4, r18, 92
000ff4  97b05203  sll.d r[2:3], r[6:7], r21
000ff8  e3428fd3  loadli.w r5,  -5692(r30)
000ffc  97113b00  or r3, r22, r3
001000  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001004  b3920228  sext_int2long r[6:7], r5
001008  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00100c  ab0100f0  lui r3, 983040
001010  1f62b900  addli r4, r18, 94
001014  97b05203  sll.d r[2:3], r[6:7], r21
001018  e3029fd3  loadli.w r5,  -5688(r30)
00101c  97113b00  or r3, r22, r3
001020  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001024  b3920228  sext_int2long r[6:7], r5
001028  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00102c  ab0100f0  lui r3, 983040
001030  1f02c900  addli r4, r18, 96
001034  97b05203  sll.d r[2:3], r[6:7], r21
001038  e3429fd3  loadli.w r5,  -5684(r30)
00103c  97113b00  or r3, r22, r3
001040  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001044  b3920228  sext_int2long r[6:7], r5
001048  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00104c  ab0100f0  lui r3, 983040
001050  1f22c900  addli r4, r18, 98
001054  97b05203  sll.d r[2:3], r[6:7], r21
001058  e302afd3  loadli.w r5,  -5680(r30)
00105c  97113b00  or r3, r22, r3
001060  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001064  b3920228  sext_int2long r[6:7], r5
001068  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00106c  ab0100f0  lui r3, 983040
001070  1f42c900  addli r4, r18, 100
001074  97b05203  sll.d r[2:3], r[6:7], r21
001078  e342afd3  loadli.w r5,  -5676(r30)
00107c  97113b00  or r3, r22, r3
001080  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001084  b3920228  sext_int2long r[6:7], r5
001088  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00108c  ab0100f0  lui r3, 983040
001090  1f62c900  addli r4, r18, 102
001094  97b05203  sll.d r[2:3], r[6:7], r21
001098  e302bfd3  loadli.w r5,  -5672(r30)
00109c  97113b00  or r3, r22, r3
0010a0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0010a4  b3920228  sext_int2long r[6:7], r5
0010a8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0010ac  ab0100f0  lui r3, 983040
0010b0  1f02d900  addli r4, r18, 104
0010b4  97b05203  sll.d r[2:3], r[6:7], r21
0010b8  e342bfd3  loadli.w r5,  -5668(r30)
0010bc  97113b00  or r3, r22, r3
0010c0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0010c4  b3920228  sext_int2long r[6:7], r5
0010c8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0010cc  ab0100f0  lui r3, 983040
0010d0  1f22d900  addli r4, r18, 106
0010d4  97b05203  sll.d r[2:3], r[6:7], r21
0010d8  e302cfd3  loadli.w r5,  -5664(r30)
0010dc  97113b00  or r3, r22, r3
0010e0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0010e4  b3920228  sext_int2long r[6:7], r5
0010e8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0010ec  ab0100f0  lui r3, 983040
0010f0  1f42d900  addli r4, r18, 108
0010f4  97b05203  sll.d r[2:3], r[6:7], r21
0010f8  e342cfd3  loadli.w r5,  -5660(r30)
0010fc  97113b00  or r3, r22, r3
001100  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001104  b3920228  sext_int2long r[6:7], r5
001108  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00110c  ab0100f0  lui r3, 983040
001110  1f62d900  addli r4, r18, 110
001114  97b05203  sll.d r[2:3], r[6:7], r21
001118  e302dfd3  loadli.w r5,  -5656(r30)
00111c  97113b00  or r3, r22, r3
001120  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001124  b3920228  sext_int2long r[6:7], r5
001128  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00112c  ab0100f0  lui r3, 983040
001130  1f02e900  addli r4, r18, 112
001134  97b05203  sll.d r[2:3], r[6:7], r21
001138  e342dfd3  loadli.w r5,  -5652(r30)
00113c  97113b00  or r3, r22, r3
001140  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001144  b3920228  sext_int2long r[6:7], r5
001148  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00114c  ab0100f0  lui r3, 983040
001150  1f22e900  addli r4, r18, 114
001154  97b05203  sll.d r[2:3], r[6:7], r21
001158  e302efd3  loadli.w r5,  -5648(r30)
00115c  97113b00  or r3, r22, r3
001160  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001164  b3920228  sext_int2long r[6:7], r5
001168  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00116c  ab0100f0  lui r3, 983040
001170  1f42e900  addli r4, r18, 116
001174  97b05203  sll.d r[2:3], r[6:7], r21
001178  e342efd3  loadli.w r5,  -5644(r30)
00117c  97113b00  or r3, r22, r3
001180  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001184  b3920228  sext_int2long r[6:7], r5
001188  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00118c  ab0100f0  lui r3, 983040
001190  1f62e900  addli r4, r18, 118
001194  97b05203  sll.d r[2:3], r[6:7], r21
001198  e302ffd3  loadli.w r5,  -5640(r30)
00119c  97113b00  or r3, r22, r3
0011a0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0011a4  b3920228  sext_int2long r[6:7], r5
0011a8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0011ac  ab0100f0  lui r3, 983040
0011b0  1f02f900  addli r4, r18, 120
0011b4  97b05203  sll.d r[2:3], r[6:7], r21
0011b8  e342ffd3  loadli.w r5,  -5636(r30)
0011bc  97113b00  or r3, r22, r3
0011c0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0011c4  b3920228  sext_int2long r[6:7], r5
0011c8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0011cc  ab0100f0  lui r3, 983040
0011d0  1f22f900  addli r4, r18, 122
0011d4  97b05203  sll.d r[2:3], r[6:7], r21
0011d8  e3020fd4  loadli.w r5,  -5632(r30)
0011dc  97113b00  or r3, r22, r3
0011e0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0011e4  b3920228  sext_int2long r[6:7], r5
0011e8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0011ec  ab0100f0  lui r3, 983040
0011f0  1f42f900  addli r4, r18, 124
0011f4  97b05203  sll.d r[2:3], r[6:7], r21
0011f8  e3420fd4  loadli.w r5,  -5628(r30)
0011fc  97113b00  or r3, r22, r3
001200  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001204  b3920228  sext_int2long r[6:7], r5
001208  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00120c  ab0100f0  lui r3, 983040
001210  1f62f900  addli r4, r18, 126
001214  97b05203  sll.d r[2:3], r[6:7], r21
001218  e3021fd4  loadli.w r5,  -5624(r30)
00121c  97113b00  or r3, r22, r3
001220  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001224  b3920228  sext_int2long r[6:7], r5
001228  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00122c  63421fd4  loadli.w r4,  -5620(r30)
001230  ab0100f0  lui r3, 983040
001234  97b05203  sll.d r[2:3], r[6:7], r21
001238  6343afd7  loadli.w r6,  -5164(r30)
00123c  97113b00  or r3, r22, r3
001240  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001244  33120228  sext_int2long r[5:6], r4
001248  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
00124c  97305203  sll.d r[2:3], r[5:6], r21
001250  e3022fd4  loadli.w r5,  -5616(r30)
001254  ab0100f0  lui r3, 983040
001258  1f220901  addli r4, r18, 130
00125c  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001260  97113b00  or r3, r22, r3
001264  b3920228  sext_int2long r[6:7], r5
001268  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00126c  ab0100f0  lui r3, 983040
001270  1f420901  addli r4, r18, 132
001274  97b05203  sll.d r[2:3], r[6:7], r21
001278  e3422fd4  loadli.w r5,  -5612(r30)
00127c  97113b00  or r3, r22, r3
001280  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001284  b3920228  sext_int2long r[6:7], r5
001288  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00128c  ab0100f0  lui r3, 983040
001290  1f620901  addli r4, r18, 134
001294  97b05203  sll.d r[2:3], r[6:7], r21
001298  e3023fd4  loadli.w r5,  -5608(r30)
00129c  97113b00  or r3, r22, r3
0012a0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0012a4  b3920228  sext_int2long r[6:7], r5
0012a8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0012ac  ab0100f0  lui r3, 983040
0012b0  1f021901  addli r4, r18, 136
0012b4  97b05203  sll.d r[2:3], r[6:7], r21
0012b8  e3423fd4  loadli.w r5,  -5604(r30)
0012bc  97113b00  or r3, r22, r3
0012c0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0012c4  b3920228  sext_int2long r[6:7], r5
0012c8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0012cc  ab0100f0  lui r3, 983040
0012d0  1f221901  addli r4, r18, 138
0012d4  97b05203  sll.d r[2:3], r[6:7], r21
0012d8  e3024fd4  loadli.w r5,  -5600(r30)
0012dc  97113b00  or r3, r22, r3
0012e0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0012e4  b3920228  sext_int2long r[6:7], r5
0012e8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0012ec  ab0100f0  lui r3, 983040
0012f0  1f421901  addli r4, r18, 140
0012f4  97b05203  sll.d r[2:3], r[6:7], r21
0012f8  e3424fd4  loadli.w r5,  -5596(r30)
0012fc  97113b00  or r3, r22, r3
001300  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001304  b3920228  sext_int2long r[6:7], r5
001308  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00130c  ab0100f0  lui r3, 983040
001310  1f621901  addli r4, r18, 142
001314  97b05203  sll.d r[2:3], r[6:7], r21
001318  e3025fd4  loadli.w r5,  -5592(r30)
00131c  97113b00  or r3, r22, r3
001320  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001324  b3920228  sext_int2long r[6:7], r5
001328  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00132c  ab0100f0  lui r3, 983040
001330  1f022901  addli r4, r18, 144
001334  97b05203  sll.d r[2:3], r[6:7], r21
001338  e3425fd4  loadli.w r5,  -5588(r30)
00133c  97113b00  or r3, r22, r3
001340  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001344  b3920228  sext_int2long r[6:7], r5
001348  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00134c  ab0100f0  lui r3, 983040
001350  1f222901  addli r4, r18, 146
001354  97b05203  sll.d r[2:3], r[6:7], r21
001358  e3026fd4  loadli.w r5,  -5584(r30)
00135c  97113b00  or r3, r22, r3
001360  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001364  b3920228  sext_int2long r[6:7], r5
001368  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00136c  ab0100f0  lui r3, 983040
001370  1f422901  addli r4, r18, 148
001374  97b05203  sll.d r[2:3], r[6:7], r21
001378  e3426fd4  loadli.w r5,  -5580(r30)
00137c  97113b00  or r3, r22, r3
001380  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001384  b3920228  sext_int2long r[6:7], r5
001388  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00138c  ab0100f0  lui r3, 983040
001390  1f622901  addli r4, r18, 150
001394  97b05203  sll.d r[2:3], r[6:7], r21
001398  e3027fd4  loadli.w r5,  -5576(r30)
00139c  97113b00  or r3, r22, r3
0013a0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0013a4  b3920228  sext_int2long r[6:7], r5
0013a8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0013ac  ab0100f0  lui r3, 983040
0013b0  1f023901  addli r4, r18, 152
0013b4  97b05203  sll.d r[2:3], r[6:7], r21
0013b8  e3427fd4  loadli.w r5,  -5572(r30)
0013bc  97113b00  or r3, r22, r3
0013c0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0013c4  b3920228  sext_int2long r[6:7], r5
0013c8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0013cc  ab0100f0  lui r3, 983040
0013d0  1f223901  addli r4, r18, 154
0013d4  97b05203  sll.d r[2:3], r[6:7], r21
0013d8  e3028fd4  loadli.w r5,  -5568(r30)
0013dc  97113b00  or r3, r22, r3
0013e0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0013e4  b3920228  sext_int2long r[6:7], r5
0013e8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0013ec  ab0100f0  lui r3, 983040
0013f0  1f423901  addli r4, r18, 156
0013f4  97b05203  sll.d r[2:3], r[6:7], r21
0013f8  e3428fd4  loadli.w r5,  -5564(r30)
0013fc  97113b00  or r3, r22, r3
001400  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001404  b3920228  sext_int2long r[6:7], r5
001408  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00140c  ab0100f0  lui r3, 983040
001410  1f623901  addli r4, r18, 158
001414  97b05203  sll.d r[2:3], r[6:7], r21
001418  e3029fd4  loadli.w r5,  -5560(r30)
00141c  97113b00  or r3, r22, r3
001420  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001424  b3920228  sext_int2long r[6:7], r5
001428  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00142c  ab0100f0  lui r3, 983040
001430  1f024901  addli r4, r18, 160
001434  97b05203  sll.d r[2:3], r[6:7], r21
001438  e3429fd4  loadli.w r5,  -5556(r30)
00143c  97113b00  or r3, r22, r3
001440  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001444  b3920228  sext_int2long r[6:7], r5
001448  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00144c  ab0100f0  lui r3, 983040
001450  1f224901  addli r4, r18, 162
001454  97b05203  sll.d r[2:3], r[6:7], r21
001458  e302afd4  loadli.w r5,  -5552(r30)
00145c  97113b00  or r3, r22, r3
001460  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001464  b3920228  sext_int2long r[6:7], r5
001468  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00146c  ab0100f0  lui r3, 983040
001470  1f424901  addli r4, r18, 164
001474  97b05203  sll.d r[2:3], r[6:7], r21
001478  e342afd4  loadli.w r5,  -5548(r30)
00147c  97113b00  or r3, r22, r3
001480  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001484  b3920228  sext_int2long r[6:7], r5
001488  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00148c  ab0100f0  lui r3, 983040
001490  1f624901  addli r4, r18, 166
001494  97b05203  sll.d r[2:3], r[6:7], r21
001498  e302bfd4  loadli.w r5,  -5544(r30)
00149c  97113b00  or r3, r22, r3
0014a0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0014a4  b3920228  sext_int2long r[6:7], r5
0014a8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0014ac  ab0100f0  lui r3, 983040
0014b0  1f025901  addli r4, r18, 168
0014b4  97b05203  sll.d r[2:3], r[6:7], r21
0014b8  e342bfd4  loadli.w r5,  -5540(r30)
0014bc  97113b00  or r3, r22, r3
0014c0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0014c4  b3920228  sext_int2long r[6:7], r5
0014c8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0014cc  ab0100f0  lui r3, 983040
0014d0  1f225901  addli r4, r18, 170
0014d4  97b05203  sll.d r[2:3], r[6:7], r21
0014d8  e302cfd4  loadli.w r5,  -5536(r30)
0014dc  97113b00  or r3, r22, r3
0014e0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0014e4  b3920228  sext_int2long r[6:7], r5
0014e8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0014ec  ab0100f0  lui r3, 983040
0014f0  1f425901  addli r4, r18, 172
0014f4  97b05203  sll.d r[2:3], r[6:7], r21
0014f8  e342cfd4  loadli.w r5,  -5532(r30)
0014fc  97113b00  or r3, r22, r3
001500  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001504  b3920228  sext_int2long r[6:7], r5
001508  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00150c  ab0100f0  lui r3, 983040
001510  1f625901  addli r4, r18, 174
001514  97b05203  sll.d r[2:3], r[6:7], r21
001518  e302dfd4  loadli.w r5,  -5528(r30)
00151c  97113b00  or r3, r22, r3
001520  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001524  b3920228  sext_int2long r[6:7], r5
001528  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00152c  ab0100f0  lui r3, 983040
001530  1f026901  addli r4, r18, 176
001534  97b05203  sll.d r[2:3], r[6:7], r21
001538  e342dfd4  loadli.w r5,  -5524(r30)
00153c  97113b00  or r3, r22, r3
001540  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001544  b3920228  sext_int2long r[6:7], r5
001548  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00154c  ab0100f0  lui r3, 983040
001550  1f226901  addli r4, r18, 178
001554  97b05203  sll.d r[2:3], r[6:7], r21
001558  e302efd4  loadli.w r5,  -5520(r30)
00155c  97113b00  or r3, r22, r3
001560  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001564  b3920228  sext_int2long r[6:7], r5
001568  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00156c  ab0100f0  lui r3, 983040
001570  1f426901  addli r4, r18, 180
001574  97b05203  sll.d r[2:3], r[6:7], r21
001578  e342efd4  loadli.w r5,  -5516(r30)
00157c  97113b00  or r3, r22, r3
001580  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001584  b3920228  sext_int2long r[6:7], r5
001588  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00158c  ab0100f0  lui r3, 983040
001590  1f626901  addli r4, r18, 182
001594  97b05203  sll.d r[2:3], r[6:7], r21
001598  e302ffd4  loadli.w r5,  -5512(r30)
00159c  97113b00  or r3, r22, r3
0015a0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0015a4  b3920228  sext_int2long r[6:7], r5
0015a8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0015ac  ab0100f0  lui r3, 983040
0015b0  1f027901  addli r4, r18, 184
0015b4  97b05203  sll.d r[2:3], r[6:7], r21
0015b8  e342ffd4  loadli.w r5,  -5508(r30)
0015bc  97113b00  or r3, r22, r3
0015c0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0015c4  b3920228  sext_int2long r[6:7], r5
0015c8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0015cc  ab0100f0  lui r3, 983040
0015d0  1f227901  addli r4, r18, 186
0015d4  97b05203  sll.d r[2:3], r[6:7], r21
0015d8  e3020fd5  loadli.w r5,  -5504(r30)
0015dc  97113b00  or r3, r22, r3
0015e0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0015e4  b3920228  sext_int2long r[6:7], r5
0015e8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0015ec  ab0100f0  lui r3, 983040
0015f0  1f427901  addli r4, r18, 188
0015f4  97b05203  sll.d r[2:3], r[6:7], r21
0015f8  e3420fd5  loadli.w r5,  -5500(r30)
0015fc  97113b00  or r3, r22, r3
001600  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001604  b3920228  sext_int2long r[6:7], r5
001608  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00160c  ab0100f0  lui r3, 983040
001610  1f627901  addli r4, r18, 190
001614  97b05203  sll.d r[2:3], r[6:7], r21
001618  e3021fd5  loadli.w r5,  -5496(r30)
00161c  97113b00  or r3, r22, r3
001620  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001624  b3920228  sext_int2long r[6:7], r5
001628  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00162c  63421fd5  loadli.w r4,  -5492(r30)
001630  ab0100f0  lui r3, 983040
001634  97b05203  sll.d r[2:3], r[6:7], r21
001638  6343dfd8  loadli.w r6,  -5012(r30)
00163c  97113b00  or r3, r22, r3
001640  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001644  33120228  sext_int2long r[5:6], r4
001648  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
00164c  97305203  sll.d r[2:3], r[5:6], r21
001650  e3022fd5  loadli.w r5,  -5488(r30)
001654  ab0100f0  lui r3, 983040
001658  1f228901  addli r4, r18, 194
00165c  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001660  97113b00  or r3, r22, r3
001664  b3920228  sext_int2long r[6:7], r5
001668  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00166c  ab0100f0  lui r3, 983040
001670  1f428901  addli r4, r18, 196
001674  97b05203  sll.d r[2:3], r[6:7], r21
001678  e3422fd5  loadli.w r5,  -5484(r30)
00167c  97113b00  or r3, r22, r3
001680  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001684  b3920228  sext_int2long r[6:7], r5
001688  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00168c  ab0100f0  lui r3, 983040
001690  1f628901  addli r4, r18, 198
001694  97b05203  sll.d r[2:3], r[6:7], r21
001698  e3023fd5  loadli.w r5,  -5480(r30)
00169c  97113b00  or r3, r22, r3
0016a0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0016a4  b3920228  sext_int2long r[6:7], r5
0016a8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0016ac  ab0100f0  lui r3, 983040
0016b0  1f029901  addli r4, r18, 200
0016b4  97b05203  sll.d r[2:3], r[6:7], r21
0016b8  e3423fd5  loadli.w r5,  -5476(r30)
0016bc  97113b00  or r3, r22, r3
0016c0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0016c4  b3920228  sext_int2long r[6:7], r5
0016c8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0016cc  ab0100f0  lui r3, 983040
0016d0  1f229901  addli r4, r18, 202
0016d4  97b05203  sll.d r[2:3], r[6:7], r21
0016d8  e3024fd5  loadli.w r5,  -5472(r30)
0016dc  97113b00  or r3, r22, r3
0016e0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0016e4  b3920228  sext_int2long r[6:7], r5
0016e8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0016ec  ab0100f0  lui r3, 983040
0016f0  1f429901  addli r4, r18, 204
0016f4  97b05203  sll.d r[2:3], r[6:7], r21
0016f8  e3424fd5  loadli.w r5,  -5468(r30)
0016fc  97113b00  or r3, r22, r3
001700  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001704  b3920228  sext_int2long r[6:7], r5
001708  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00170c  ab0100f0  lui r3, 983040
001710  1f629901  addli r4, r18, 206
001714  97b05203  sll.d r[2:3], r[6:7], r21
001718  e3025fd5  loadli.w r5,  -5464(r30)
00171c  97113b00  or r3, r22, r3
001720  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001724  b3920228  sext_int2long r[6:7], r5
001728  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00172c  ab0100f0  lui r3, 983040
001730  1f02a901  addli r4, r18, 208
001734  97b05203  sll.d r[2:3], r[6:7], r21
001738  e3425fd5  loadli.w r5,  -5460(r30)
00173c  97113b00  or r3, r22, r3
001740  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001744  b3920228  sext_int2long r[6:7], r5
001748  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00174c  ab0100f0  lui r3, 983040
001750  1f22a901  addli r4, r18, 210
001754  97b05203  sll.d r[2:3], r[6:7], r21
001758  e3026fd5  loadli.w r5,  -5456(r30)
00175c  97113b00  or r3, r22, r3
001760  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001764  b3920228  sext_int2long r[6:7], r5
001768  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00176c  ab0100f0  lui r3, 983040
001770  1f42a901  addli r4, r18, 212
001774  97b05203  sll.d r[2:3], r[6:7], r21
001778  e3426fd5  loadli.w r5,  -5452(r30)
00177c  97113b00  or r3, r22, r3
001780  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001784  b3920228  sext_int2long r[6:7], r5
001788  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00178c  ab0100f0  lui r3, 983040
001790  1f62a901  addli r4, r18, 214
001794  97b05203  sll.d r[2:3], r[6:7], r21
001798  e3027fd5  loadli.w r5,  -5448(r30)
00179c  97113b00  or r3, r22, r3
0017a0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0017a4  b3920228  sext_int2long r[6:7], r5
0017a8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0017ac  ab0100f0  lui r3, 983040
0017b0  1f02b901  addli r4, r18, 216
0017b4  97b05203  sll.d r[2:3], r[6:7], r21
0017b8  e3427fd5  loadli.w r5,  -5444(r30)
0017bc  97113b00  or r3, r22, r3
0017c0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0017c4  b3920228  sext_int2long r[6:7], r5
0017c8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0017cc  ab0100f0  lui r3, 983040
0017d0  1f22b901  addli r4, r18, 218
0017d4  97b05203  sll.d r[2:3], r[6:7], r21
0017d8  e3028fd5  loadli.w r5,  -5440(r30)
0017dc  97113b00  or r3, r22, r3
0017e0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0017e4  b3920228  sext_int2long r[6:7], r5
0017e8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0017ec  ab0100f0  lui r3, 983040
0017f0  1f42b901  addli r4, r18, 220
0017f4  97b05203  sll.d r[2:3], r[6:7], r21
0017f8  e3428fd5  loadli.w r5,  -5436(r30)
0017fc  97113b00  or r3, r22, r3
001800  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001804  b3920228  sext_int2long r[6:7], r5
001808  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00180c  ab0100f0  lui r3, 983040
001810  1f62b901  addli r4, r18, 222
001814  97b05203  sll.d r[2:3], r[6:7], r21
001818  e3029fd5  loadli.w r5,  -5432(r30)
00181c  97113b00  or r3, r22, r3
001820  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001824  b3920228  sext_int2long r[6:7], r5
001828  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00182c  ab0100f0  lui r3, 983040
001830  1f02c901  addli r4, r18, 224
001834  97b05203  sll.d r[2:3], r[6:7], r21
001838  e3429fd5  loadli.w r5,  -5428(r30)
00183c  97113b00  or r3, r22, r3
001840  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001844  b3920228  sext_int2long r[6:7], r5
001848  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00184c  ab0100f0  lui r3, 983040
001850  1f22c901  addli r4, r18, 226
001854  97b05203  sll.d r[2:3], r[6:7], r21
001858  e302afd5  loadli.w r5,  -5424(r30)
00185c  97113b00  or r3, r22, r3
001860  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001864  b3920228  sext_int2long r[6:7], r5
001868  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00186c  ab0100f0  lui r3, 983040
001870  1f42c901  addli r4, r18, 228
001874  97b05203  sll.d r[2:3], r[6:7], r21
001878  e342afd5  loadli.w r5,  -5420(r30)
00187c  97113b00  or r3, r22, r3
001880  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001884  b3920228  sext_int2long r[6:7], r5
001888  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00188c  ab0100f0  lui r3, 983040
001890  1f62c901  addli r4, r18, 230
001894  97b05203  sll.d r[2:3], r[6:7], r21
001898  e302bfd5  loadli.w r5,  -5416(r30)
00189c  97113b00  or r3, r22, r3
0018a0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0018a4  b3920228  sext_int2long r[6:7], r5
0018a8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0018ac  ab0100f0  lui r3, 983040
0018b0  1f02d901  addli r4, r18, 232
0018b4  97b05203  sll.d r[2:3], r[6:7], r21
0018b8  e342bfd5  loadli.w r5,  -5412(r30)
0018bc  97113b00  or r3, r22, r3
0018c0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0018c4  b3920228  sext_int2long r[6:7], r5
0018c8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0018cc  ab0100f0  lui r3, 983040
0018d0  1f22d901  addli r4, r18, 234
0018d4  97b05203  sll.d r[2:3], r[6:7], r21
0018d8  e302cfd5  loadli.w r5,  -5408(r30)
0018dc  97113b00  or r3, r22, r3
0018e0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0018e4  b3920228  sext_int2long r[6:7], r5
0018e8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0018ec  ab0100f0  lui r3, 983040
0018f0  1f42d901  addli r4, r18, 236
0018f4  97b05203  sll.d r[2:3], r[6:7], r21
0018f8  e342cfd5  loadli.w r5,  -5404(r30)
0018fc  97113b00  or r3, r22, r3
001900  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001904  b3920228  sext_int2long r[6:7], r5
001908  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00190c  ab0100f0  lui r3, 983040
001910  1f62d901  addli r4, r18, 238
001914  97b05203  sll.d r[2:3], r[6:7], r21
001918  e302dfd5  loadli.w r5,  -5400(r30)
00191c  97113b00  or r3, r22, r3
001920  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001924  b3920228  sext_int2long r[6:7], r5
001928  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00192c  ab0100f0  lui r3, 983040
001930  1f02e901  addli r4, r18, 240
001934  97b05203  sll.d r[2:3], r[6:7], r21
001938  e342dfd5  loadli.w r5,  -5396(r30)
00193c  97113b00  or r3, r22, r3
001940  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001944  b3920228  sext_int2long r[6:7], r5
001948  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00194c  ab0100f0  lui r3, 983040
001950  1f22e901  addli r4, r18, 242
001954  97b05203  sll.d r[2:3], r[6:7], r21
001958  e302efd5  loadli.w r5,  -5392(r30)
00195c  97113b00  or r3, r22, r3
001960  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001964  b3920228  sext_int2long r[6:7], r5
001968  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00196c  ab0100f0  lui r3, 983040
001970  1f42e901  addli r4, r18, 244
001974  97b05203  sll.d r[2:3], r[6:7], r21
001978  e342efd5  loadli.w r5,  -5388(r30)
00197c  97113b00  or r3, r22, r3
001980  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001984  b3920228  sext_int2long r[6:7], r5
001988  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00198c  ab0100f0  lui r3, 983040
001990  1f62e901  addli r4, r18, 246
001994  97b05203  sll.d r[2:3], r[6:7], r21
001998  e302ffd5  loadli.w r5,  -5384(r30)
00199c  97113b00  or r3, r22, r3
0019a0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0019a4  b3920228  sext_int2long r[6:7], r5
0019a8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0019ac  ab0100f0  lui r3, 983040
0019b0  1f02f901  addli r4, r18, 248
0019b4  97b05203  sll.d r[2:3], r[6:7], r21
0019b8  e342ffd5  loadli.w r5,  -5380(r30)
0019bc  97113b00  or r3, r22, r3
0019c0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0019c4  b3920228  sext_int2long r[6:7], r5
0019c8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0019cc  ab0100f0  lui r3, 983040
0019d0  1f22f901  addli r4, r18, 250
0019d4  97b05203  sll.d r[2:3], r[6:7], r21
0019d8  e3020fd6  loadli.w r5,  -5376(r30)
0019dc  97113b00  or r3, r22, r3
0019e0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0019e4  b3920228  sext_int2long r[6:7], r5
0019e8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0019ec  ab0100f0  lui r3, 983040
0019f0  1f42f901  addli r4, r18, 252
0019f4  97b05203  sll.d r[2:3], r[6:7], r21
0019f8  e3420fd6  loadli.w r5,  -5372(r30)
0019fc  97113b00  or r3, r22, r3
001a00  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001a04  b3920228  sext_int2long r[6:7], r5
001a08  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001a0c  ab0100f0  lui r3, 983040
001a10  1f62f901  addli r4, r18, 254
001a14  97b05203  sll.d r[2:3], r[6:7], r21
001a18  e3021fd6  loadli.w r5,  -5368(r30)
001a1c  97113b00  or r3, r22, r3
001a20  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001a24  b3920228  sext_int2long r[6:7], r5
001a28  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001a2c  63421fd6  loadli.w r4,  -5364(r30)
001a30  ab0100f0  lui r3, 983040
001a34  97b05203  sll.d r[2:3], r[6:7], r21
001a38  63032fda  loadli.w r6,  -4848(r30)
001a3c  97113b00  or r3, r22, r3
001a40  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001a44  33120228  sext_int2long r[5:6], r4
001a48  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
001a4c  97305203  sll.d r[2:3], r[5:6], r21
001a50  e3022fd6  loadli.w r5,  -5360(r30)
001a54  ab0100f0  lui r3, 983040
001a58  1f220902  addli r4, r18, 258
001a5c  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001a60  97113b00  or r3, r22, r3
001a64  b3920228  sext_int2long r[6:7], r5
001a68  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001a6c  ab0100f0  lui r3, 983040
001a70  1f420902  addli r4, r18, 260
001a74  97b05203  sll.d r[2:3], r[6:7], r21
001a78  e3422fd6  loadli.w r5,  -5356(r30)
001a7c  97113b00  or r3, r22, r3
001a80  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001a84  b3920228  sext_int2long r[6:7], r5
001a88  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001a8c  ab0100f0  lui r3, 983040
001a90  1f620902  addli r4, r18, 262
001a94  97b05203  sll.d r[2:3], r[6:7], r21
001a98  e3023fd6  loadli.w r5,  -5352(r30)
001a9c  97113b00  or r3, r22, r3
001aa0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001aa4  b3920228  sext_int2long r[6:7], r5
001aa8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001aac  ab0100f0  lui r3, 983040
001ab0  1f021902  addli r4, r18, 264
001ab4  97b05203  sll.d r[2:3], r[6:7], r21
001ab8  e3423fd6  loadli.w r5,  -5348(r30)
001abc  97113b00  or r3, r22, r3
001ac0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001ac4  b3920228  sext_int2long r[6:7], r5
001ac8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001acc  ab0100f0  lui r3, 983040
001ad0  1f221902  addli r4, r18, 266
001ad4  97b05203  sll.d r[2:3], r[6:7], r21
001ad8  e3024fd6  loadli.w r5,  -5344(r30)
001adc  97113b00  or r3, r22, r3
001ae0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001ae4  b3920228  sext_int2long r[6:7], r5
001ae8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001aec  ab0100f0  lui r3, 983040
001af0  1f421902  addli r4, r18, 268
001af4  97b05203  sll.d r[2:3], r[6:7], r21
001af8  e3424fd6  loadli.w r5,  -5340(r30)
001afc  97113b00  or r3, r22, r3
001b00  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001b04  b3920228  sext_int2long r[6:7], r5
001b08  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001b0c  ab0100f0  lui r3, 983040
001b10  1f621902  addli r4, r18, 270
001b14  97b05203  sll.d r[2:3], r[6:7], r21
001b18  e3025fd6  loadli.w r5,  -5336(r30)
001b1c  97113b00  or r3, r22, r3
001b20  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001b24  b3920228  sext_int2long r[6:7], r5
001b28  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001b2c  ab0100f0  lui r3, 983040
001b30  1f022902  addli r4, r18, 272
001b34  97b05203  sll.d r[2:3], r[6:7], r21
001b38  e3425fd6  loadli.w r5,  -5332(r30)
001b3c  97113b00  or r3, r22, r3
001b40  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001b44  b3920228  sext_int2long r[6:7], r5
001b48  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001b4c  ab0100f0  lui r3, 983040
001b50  1f222902  addli r4, r18, 274
001b54  97b05203  sll.d r[2:3], r[6:7], r21
001b58  e3026fd6  loadli.w r5,  -5328(r30)
001b5c  97113b00  or r3, r22, r3
001b60  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001b64  b3920228  sext_int2long r[6:7], r5
001b68  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001b6c  ab0100f0  lui r3, 983040
001b70  1f422902  addli r4, r18, 276
001b74  97b05203  sll.d r[2:3], r[6:7], r21
001b78  e3426fd6  loadli.w r5,  -5324(r30)
001b7c  97113b00  or r3, r22, r3
001b80  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001b84  b3920228  sext_int2long r[6:7], r5
001b88  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001b8c  ab0100f0  lui r3, 983040
001b90  1f622902  addli r4, r18, 278
001b94  97b05203  sll.d r[2:3], r[6:7], r21
001b98  e3027fd6  loadli.w r5,  -5320(r30)
001b9c  97113b00  or r3, r22, r3
001ba0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001ba4  b3920228  sext_int2long r[6:7], r5
001ba8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001bac  ab0100f0  lui r3, 983040
001bb0  1f023902  addli r4, r18, 280
001bb4  97b05203  sll.d r[2:3], r[6:7], r21
001bb8  e3427fd6  loadli.w r5,  -5316(r30)
001bbc  97113b00  or r3, r22, r3
001bc0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001bc4  b3920228  sext_int2long r[6:7], r5
001bc8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001bcc  ab0100f0  lui r3, 983040
001bd0  1f223902  addli r4, r18, 282
001bd4  97b05203  sll.d r[2:3], r[6:7], r21
001bd8  e3428fd6  loadli.w r5,  -5308(r30)
001bdc  97113b00  or r3, r22, r3
001be0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001be4  b3920228  sext_int2long r[6:7], r5
001be8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001bec  ab0100f0  lui r3, 983040
001bf0  1f423902  addli r4, r18, 284
001bf4  97b05203  sll.d r[2:3], r[6:7], r21
001bf8  e3029fd6  loadli.w r5,  -5304(r30)
001bfc  97113b00  or r3, r22, r3
001c00  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001c04  b3920228  sext_int2long r[6:7], r5
001c08  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001c0c  ab0100f0  lui r3, 983040
001c10  1f623902  addli r4, r18, 286
001c14  97b05203  sll.d r[2:3], r[6:7], r21
001c18  e3429fd6  loadli.w r5,  -5300(r30)
001c1c  97113b00  or r3, r22, r3
001c20  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001c24  b3920228  sext_int2long r[6:7], r5
001c28  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001c2c  ab0100f0  lui r3, 983040
001c30  1f024902  addli r4, r18, 288
001c34  97b05203  sll.d r[2:3], r[6:7], r21
001c38  e302afd6  loadli.w r5,  -5296(r30)
001c3c  97113b00  or r3, r22, r3
001c40  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001c44  b3920228  sext_int2long r[6:7], r5
001c48  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001c4c  ab0100f0  lui r3, 983040
001c50  1f224902  addli r4, r18, 290
001c54  97b05203  sll.d r[2:3], r[6:7], r21
001c58  e342afd6  loadli.w r5,  -5292(r30)
001c5c  97113b00  or r3, r22, r3
001c60  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001c64  b3920228  sext_int2long r[6:7], r5
001c68  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001c6c  ab0100f0  lui r3, 983040
001c70  1f424902  addli r4, r18, 292
001c74  97b05203  sll.d r[2:3], r[6:7], r21
001c78  e302bfd6  loadli.w r5,  -5288(r30)
001c7c  97113b00  or r3, r22, r3
001c80  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001c84  b3920228  sext_int2long r[6:7], r5
001c88  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001c8c  ab0100f0  lui r3, 983040
001c90  1f624902  addli r4, r18, 294
001c94  97b05203  sll.d r[2:3], r[6:7], r21
001c98  e342bfd6  loadli.w r5,  -5284(r30)
001c9c  97113b00  or r3, r22, r3
001ca0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001ca4  b3920228  sext_int2long r[6:7], r5
001ca8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001cac  ab0100f0  lui r3, 983040
001cb0  1f025902  addli r4, r18, 296
001cb4  97b05203  sll.d r[2:3], r[6:7], r21
001cb8  e302cfd6  loadli.w r5,  -5280(r30)
001cbc  97113b00  or r3, r22, r3
001cc0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001cc4  b3920228  sext_int2long r[6:7], r5
001cc8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001ccc  ab0100f0  lui r3, 983040
001cd0  1f225902  addli r4, r18, 298
001cd4  97b05203  sll.d r[2:3], r[6:7], r21
001cd8  e342cfd6  loadli.w r5,  -5276(r30)
001cdc  97113b00  or r3, r22, r3
001ce0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001ce4  b3920228  sext_int2long r[6:7], r5
001ce8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001cec  ab0100f0  lui r3, 983040
001cf0  1f425902  addli r4, r18, 300
001cf4  97b05203  sll.d r[2:3], r[6:7], r21
001cf8  e302dfd6  loadli.w r5,  -5272(r30)
001cfc  97113b00  or r3, r22, r3
001d00  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001d04  b3920228  sext_int2long r[6:7], r5
001d08  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001d0c  ab0100f0  lui r3, 983040
001d10  1f625902  addli r4, r18, 302
001d14  97b05203  sll.d r[2:3], r[6:7], r21
001d18  e342dfd6  loadli.w r5,  -5268(r30)
001d1c  97113b00  or r3, r22, r3
001d20  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001d24  b3920228  sext_int2long r[6:7], r5
001d28  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001d2c  ab0100f0  lui r3, 983040
001d30  1f026902  addli r4, r18, 304
001d34  97b05203  sll.d r[2:3], r[6:7], r21
001d38  e302efd6  loadli.w r5,  -5264(r30)
001d3c  97113b00  or r3, r22, r3
001d40  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001d44  b3920228  sext_int2long r[6:7], r5
001d48  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001d4c  ab0100f0  lui r3, 983040
001d50  1f226902  addli r4, r18, 306
001d54  97b05203  sll.d r[2:3], r[6:7], r21
001d58  e342efd6  loadli.w r5,  -5260(r30)
001d5c  97113b00  or r3, r22, r3
001d60  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001d64  b3920228  sext_int2long r[6:7], r5
001d68  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001d6c  ab0100f0  lui r3, 983040
001d70  1f426902  addli r4, r18, 308
001d74  97b05203  sll.d r[2:3], r[6:7], r21
001d78  e302ffd6  loadli.w r5,  -5256(r30)
001d7c  97113b00  or r3, r22, r3
001d80  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001d84  b3920228  sext_int2long r[6:7], r5
001d88  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001d8c  ab0100f0  lui r3, 983040
001d90  1f626902  addli r4, r18, 310
001d94  97b05203  sll.d r[2:3], r[6:7], r21
001d98  e342ffd6  loadli.w r5,  -5252(r30)
001d9c  97113b00  or r3, r22, r3
001da0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001da4  b3920228  sext_int2long r[6:7], r5
001da8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001dac  ab0100f0  lui r3, 983040
001db0  1f027902  addli r4, r18, 312
001db4  97b05203  sll.d r[2:3], r[6:7], r21
001db8  e3020fd7  loadli.w r5,  -5248(r30)
001dbc  97113b00  or r3, r22, r3
001dc0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001dc4  b3920228  sext_int2long r[6:7], r5
001dc8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001dcc  ab0100f0  lui r3, 983040
001dd0  1f227902  addli r4, r18, 314
001dd4  97b05203  sll.d r[2:3], r[6:7], r21
001dd8  e3420fd7  loadli.w r5,  -5244(r30)
001ddc  97113b00  or r3, r22, r3
001de0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001de4  b3920228  sext_int2long r[6:7], r5
001de8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001dec  ab0100f0  lui r3, 983040
001df0  1f427902  addli r4, r18, 316
001df4  97b05203  sll.d r[2:3], r[6:7], r21
001df8  e3021fd7  loadli.w r5,  -5240(r30)
001dfc  97113b00  or r3, r22, r3
001e00  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001e04  b3920228  sext_int2long r[6:7], r5
001e08  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001e0c  ab0100f0  lui r3, 983040
001e10  1f627902  addli r4, r18, 318
001e14  97b05203  sll.d r[2:3], r[6:7], r21
001e18  e3421fd7  loadli.w r5,  -5236(r30)
001e1c  97113b00  or r3, r22, r3
001e20  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001e24  b3920228  sext_int2long r[6:7], r5
001e28  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001e2c  63022fd7  loadli.w r4,  -5232(r30)
001e30  ab0100f0  lui r3, 983040
001e34  97b05203  sll.d r[2:3], r[6:7], r21
001e38  63432fda  loadli.w r6,  -4844(r30)
001e3c  97113b00  or r3, r22, r3
001e40  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001e44  33120228  sext_int2long r[5:6], r4
001e48  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
001e4c  97305203  sll.d r[2:3], r[5:6], r21
001e50  e3422fd7  loadli.w r5,  -5228(r30)
001e54  ab0100f0  lui r3, 983040
001e58  1f228902  addli r4, r18, 322
001e5c  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001e60  97113b00  or r3, r22, r3
001e64  b3920228  sext_int2long r[6:7], r5
001e68  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001e6c  ab0100f0  lui r3, 983040
001e70  1f428902  addli r4, r18, 324
001e74  97b05203  sll.d r[2:3], r[6:7], r21
001e78  e3023fd7  loadli.w r5,  -5224(r30)
001e7c  97113b00  or r3, r22, r3
001e80  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001e84  b3920228  sext_int2long r[6:7], r5
001e88  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001e8c  ab0100f0  lui r3, 983040
001e90  1f628902  addli r4, r18, 326
001e94  97b05203  sll.d r[2:3], r[6:7], r21
001e98  e3423fd7  loadli.w r5,  -5220(r30)
001e9c  97113b00  or r3, r22, r3
001ea0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001ea4  b3920228  sext_int2long r[6:7], r5
001ea8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001eac  ab0100f0  lui r3, 983040
001eb0  1f029902  addli r4, r18, 328
001eb4  97b05203  sll.d r[2:3], r[6:7], r21
001eb8  e3024fd7  loadli.w r5,  -5216(r30)
001ebc  97113b00  or r3, r22, r3
001ec0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001ec4  b3920228  sext_int2long r[6:7], r5
001ec8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001ecc  ab0100f0  lui r3, 983040
001ed0  1f229902  addli r4, r18, 330
001ed4  97b05203  sll.d r[2:3], r[6:7], r21
001ed8  e3424fd7  loadli.w r5,  -5212(r30)
001edc  97113b00  or r3, r22, r3
001ee0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001ee4  b3920228  sext_int2long r[6:7], r5
001ee8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001eec  ab0100f0  lui r3, 983040
001ef0  1f429902  addli r4, r18, 332
001ef4  97b05203  sll.d r[2:3], r[6:7], r21
001ef8  e3025fd7  loadli.w r5,  -5208(r30)
001efc  97113b00  or r3, r22, r3
001f00  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001f04  b3920228  sext_int2long r[6:7], r5
001f08  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001f0c  ab0100f0  lui r3, 983040
001f10  1f629902  addli r4, r18, 334
001f14  97b05203  sll.d r[2:3], r[6:7], r21
001f18  e3425fd7  loadli.w r5,  -5204(r30)
001f1c  97113b00  or r3, r22, r3
001f20  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001f24  b3920228  sext_int2long r[6:7], r5
001f28  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001f2c  ab0100f0  lui r3, 983040
001f30  1f02a902  addli r4, r18, 336
001f34  97b05203  sll.d r[2:3], r[6:7], r21
001f38  e3026fd7  loadli.w r5,  -5200(r30)
001f3c  97113b00  or r3, r22, r3
001f40  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001f44  b3920228  sext_int2long r[6:7], r5
001f48  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001f4c  ab0100f0  lui r3, 983040
001f50  1f22a902  addli r4, r18, 338
001f54  97b05203  sll.d r[2:3], r[6:7], r21
001f58  e3426fd7  loadli.w r5,  -5196(r30)
001f5c  97113b00  or r3, r22, r3
001f60  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001f64  b3920228  sext_int2long r[6:7], r5
001f68  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001f6c  ab0100f0  lui r3, 983040
001f70  1f42a902  addli r4, r18, 340
001f74  97b05203  sll.d r[2:3], r[6:7], r21
001f78  e3027fd7  loadli.w r5,  -5192(r30)
001f7c  97113b00  or r3, r22, r3
001f80  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001f84  b3920228  sext_int2long r[6:7], r5
001f88  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001f8c  ab0100f0  lui r3, 983040
001f90  1f62a902  addli r4, r18, 342
001f94  97b05203  sll.d r[2:3], r[6:7], r21
001f98  e3427fd7  loadli.w r5,  -5188(r30)
001f9c  97113b00  or r3, r22, r3
001fa0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001fa4  b3920228  sext_int2long r[6:7], r5
001fa8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001fac  ab0100f0  lui r3, 983040
001fb0  1f02b902  addli r4, r18, 344
001fb4  97b05203  sll.d r[2:3], r[6:7], r21
001fb8  e3028fd7  loadli.w r5,  -5184(r30)
001fbc  97113b00  or r3, r22, r3
001fc0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001fc4  b3920228  sext_int2long r[6:7], r5
001fc8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001fcc  ab0100f0  lui r3, 983040
001fd0  1f22b902  addli r4, r18, 346
001fd4  97b05203  sll.d r[2:3], r[6:7], r21
001fd8  e3428fd7  loadli.w r5,  -5180(r30)
001fdc  97113b00  or r3, r22, r3
001fe0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
001fe4  b3920228  sext_int2long r[6:7], r5
001fe8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001fec  ab0100f0  lui r3, 983040
001ff0  1f42b902  addli r4, r18, 348
001ff4  97b05203  sll.d r[2:3], r[6:7], r21
001ff8  e3029fd7  loadli.w r5,  -5176(r30)
001ffc  97113b00  or r3, r22, r3
002000  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
002004  b3920228  sext_int2long r[6:7], r5
002008  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00200c  ab0100f0  lui r3, 983040
002010  1f62b902  addli r4, r18, 350
002014  97b05203  sll.d r[2:3], r[6:7], r21
002018  e3429fd7  loadli.w r5,  -5172(r30)
00201c  97113b00  or r3, r22, r3
002020  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
002024  b3920228  sext_int2long r[6:7], r5
002028  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00202c  ab0100f0  lui r3, 983040
002030  1f02c902  addli r4, r18, 352
002034  97b05203  sll.d r[2:3], r[6:7], r21
002038  e302afd7  loadli.w r5,  -5168(r30)
00203c  97113b00  or r3, r22, r3
002040  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
002044  b3920228  sext_int2long r[6:7], r5
002048  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00204c  ab0100f0  lui r3, 983040
002050  1f22c902  addli r4, r18, 354
002054  97b05203  sll.d r[2:3], r[6:7], r21
002058  e302bfd7  loadli.w r5,  -5160(r30)
00205c  97113b00  or r3, r22, r3
002060  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
002064  b3920228  sext_int2long r[6:7], r5
002068  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00206c  ab0100f0  lui r3, 983040
002070  1f42c902  addli r4, r18, 356
002074  97b05203  sll.d r[2:3], r[6:7], r21
002078  e342bfd7  loadli.w r5,  -5156(r30)
00207c  97113b00  or r3, r22, r3
002080  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
002084  b3920228  sext_int2long r[6:7], r5
002088  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00208c  ab0100f0  lui r3, 983040
002090  1f62c902  addli r4, r18, 358
002094  97b05203  sll.d r[2:3], r[6:7], r21
002098  e302cfd7  loadli.w r5,  -5152(r30)
00209c  97113b00  or r3, r22, r3
0020a0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0020a4  b3920228  sext_int2long r[6:7], r5
0020a8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0020ac  ab0100f0  lui r3, 983040
0020b0  1f02d902  addli r4, r18, 360
0020b4  97b05203  sll.d r[2:3], r[6:7], r21
0020b8  e342cfd7  loadli.w r5,  -5148(r30)
0020bc  97113b00  or r3, r22, r3
0020c0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0020c4  b3920228  sext_int2long r[6:7], r5
0020c8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0020cc  ab0100f0  lui r3, 983040
0020d0  1f22d902  addli r4, r18, 362
0020d4  97b05203  sll.d r[2:3], r[6:7], r21
0020d8  e302dfd7  loadli.w r5,  -5144(r30)
0020dc  97113b00  or r3, r22, r3
0020e0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0020e4  b3920228  sext_int2long r[6:7], r5
0020e8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0020ec  ab0100f0  lui r3, 983040
0020f0  1f42d902  addli r4, r18, 364
0020f4  97b05203  sll.d r[2:3], r[6:7], r21
0020f8  e342dfd7  loadli.w r5,  -5140(r30)
0020fc  97113b00  or r3, r22, r3
002100  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
002104  b3920228  sext_int2long r[6:7], r5
002108  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00210c  ab0100f0  lui r3, 983040
002110  1f62d902  addli r4, r18, 366
002114  97b05203  sll.d r[2:3], r[6:7], r21
002118  e302efd7  loadli.w r5,  -5136(r30)
00211c  97113b00  or r3, r22, r3
002120  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
002124  b3920228  sext_int2long r[6:7], r5
002128  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00212c  ab0100f0  lui r3, 983040
002130  1f02e902  addli r4, r18, 368
002134  97b05203  sll.d r[2:3], r[6:7], r21
002138  e342efd7  loadli.w r5,  -5132(r30)
00213c  97113b00  or r3, r22, r3
002140  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
002144  b3920228  sext_int2long r[6:7], r5
002148  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00214c  ab0100f0  lui r3, 983040
002150  1f22e902  addli r4, r18, 370
002154  97b05203  sll.d r[2:3], r[6:7], r21
002158  e302ffd7  loadli.w r5,  -5128(r30)
00215c  97113b00  or r3, r22, r3
002160  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
002164  b3920228  sext_int2long r[6:7], r5
002168  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00216c  ab0100f0  lui r3, 983040
002170  1f42e902  addli r4, r18, 372
002174  97b05203  sll.d r[2:3], r[6:7], r21
002178  e342ffd7  loadli.w r5,  -5124(r30)
00217c  97113b00  or r3, r22, r3
002180  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
002184  b3920228  sext_int2long r[6:7], r5
002188  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00218c  ab0100f0  lui r3, 983040
002190  1f62e902  addli r4, r18, 374
002194  97b05203  sll.d r[2:3], r[6:7], r21
002198  e3020fd8  loadli.w r5,  -5120(r30)
00219c  97113b00  or r3, r22, r3
0021a0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0021a4  b3920228  sext_int2long r[6:7], r5
0021a8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0021ac  ab0100f0  lui r3, 983040
0021b0  1f02f902  addli r4, r18, 376
0021b4  97b05203  sll.d r[2:3], r[6:7], r21
0021b8  e3420fd8  loadli.w r5,  -5116(r30)
0021bc  97113b00  or r3, r22, r3
0021c0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0021c4  b3920228  sext_int2long r[6:7], r5
0021c8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0021cc  ab0100f0  lui r3, 983040
0021d0  1f22f902  addli r4, r18, 378
0021d4  97b05203  sll.d r[2:3], r[6:7], r21
0021d8  e3021fd8  loadli.w r5,  -5112(r30)
0021dc  97113b00  or r3, r22, r3
0021e0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0021e4  b3920228  sext_int2long r[6:7], r5
0021e8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0021ec  ab0100f0  lui r3, 983040
0021f0  1f42f902  addli r4, r18, 380
0021f4  97b05203  sll.d r[2:3], r[6:7], r21
0021f8  e3421fd8  loadli.w r5,  -5108(r30)
0021fc  97113b00  or r3, r22, r3
002200  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
002204  b3920228  sext_int2long r[6:7], r5
002208  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00220c  ab0100f0  lui r3, 983040
002210  1f62f902  addli r4, r18, 382
002214  97b05203  sll.d r[2:3], r[6:7], r21
002218  e3022fd8  loadli.w r5,  -5104(r30)
00221c  97113b00  or r3, r22, r3
002220  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
002224  b3920228  sext_int2long r[6:7], r5
002228  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00222c  63422fd8  loadli.w r4,  -5100(r30)
002230  ab0100f0  lui r3, 983040
002234  97b05203  sll.d r[2:3], r[6:7], r21
002238  63033fda  loadli.w r6,  -4840(r30)
00223c  97113b00  or r3, r22, r3
002240  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
002244  33120228  sext_int2long r[5:6], r4
002248  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
00224c  97305203  sll.d r[2:3], r[5:6], r21
002250  e3023fd8  loadli.w r5,  -5096(r30)
002254  ab0100f0  lui r3, 983040
002258  1f220903  addli r4, r18, 386
00225c  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
002260  97113b00  or r3, r22, r3
002264  b3920228  sext_int2long r[6:7], r5
002268  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00226c  ab0100f0  lui r3, 983040
002270  1f420903  addli r4, r18, 388
002274  97b05203  sll.d r[2:3], r[6:7], r21
002278  e3423fd8  loadli.w r5,  -5092(r30)
00227c  97113b00  or r3, r22, r3
002280  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
002284  b3920228  sext_int2long r[6:7], r5
002288  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00228c  ab0100f0  lui r3, 983040
002290  1f620903  addli r4, r18, 390
002294  97b05203  sll.d r[2:3], r[6:7], r21
002298  e3024fd8  loadli.w r5,  -5088(r30)
00229c  97113b00  or r3, r22, r3
0022a0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0022a4  b3920228  sext_int2long r[6:7], r5
0022a8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0022ac  ab0100f0  lui r3, 983040
0022b0  1f021903  addli r4, r18, 392
0022b4  97b05203  sll.d r[2:3], r[6:7], r21
0022b8  e3424fd8  loadli.w r5,  -5084(r30)
0022bc  97113b00  or r3, r22, r3
0022c0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0022c4  b3920228  sext_int2long r[6:7], r5
0022c8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0022cc  ab0100f0  lui r3, 983040
0022d0  1f221903  addli r4, r18, 394
0022d4  97b05203  sll.d r[2:3], r[6:7], r21
0022d8  e3025fd8  loadli.w r5,  -5080(r30)
0022dc  97113b00  or r3, r22, r3
0022e0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0022e4  b3920228  sext_int2long r[6:7], r5
0022e8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0022ec  ab0100f0  lui r3, 983040
0022f0  1f421903  addli r4, r18, 396
0022f4  97b05203  sll.d r[2:3], r[6:7], r21
0022f8  e3425fd8  loadli.w r5,  -5076(r30)
0022fc  97113b00  or r3, r22, r3
002300  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
002304  b3920228  sext_int2long r[6:7], r5
002308  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00230c  ab0100f0  lui r3, 983040
002310  1f621903  addli r4, r18, 398
002314  97b05203  sll.d r[2:3], r[6:7], r21
002318  e3026fd8  loadli.w r5,  -5072(r30)
00231c  97113b00  or r3, r22, r3
002320  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
002324  b3920228  sext_int2long r[6:7], r5
002328  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00232c  ab0100f0  lui r3, 983040
002330  1f022903  addli r4, r18, 400
002334  97b05203  sll.d r[2:3], r[6:7], r21
002338  e3426fd8  loadli.w r5,  -5068(r30)
00233c  97113b00  or r3, r22, r3
002340  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
002344  b3920228  sext_int2long r[6:7], r5
002348  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00234c  ab0100f0  lui r3, 983040
002350  1f222903  addli r4, r18, 402
002354  97b05203  sll.d r[2:3], r[6:7], r21
002358  e3027fd8  loadli.w r5,  -5064(r30)
00235c  97113b00  or r3, r22, r3
002360  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
002364  b3920228  sext_int2long r[6:7], r5
002368  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00236c  ab0100f0  lui r3, 983040
002370  1f422903  addli r4, r18, 404
002374  97b05203  sll.d r[2:3], r[6:7], r21
002378  e3427fd8  loadli.w r5,  -5060(r30)
00237c  97113b00  or r3, r22, r3
002380  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
002384  b3920228  sext_int2long r[6:7], r5
002388  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00238c  ab0100f0  lui r3, 983040
002390  1f622903  addli r4, r18, 406
002394  97b05203  sll.d r[2:3], r[6:7], r21
002398  e3028fd8  loadli.w r5,  -5056(r30)
00239c  97113b00  or r3, r22, r3
0023a0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0023a4  b3920228  sext_int2long r[6:7], r5
0023a8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0023ac  ab0100f0  lui r3, 983040
0023b0  1f023903  addli r4, r18, 408
0023b4  97b05203  sll.d r[2:3], r[6:7], r21
0023b8  e3428fd8  loadli.w r5,  -5052(r30)
0023bc  97113b00  or r3, r22, r3
0023c0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0023c4  b3920228  sext_int2long r[6:7], r5
0023c8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0023cc  ab0100f0  lui r3, 983040
0023d0  1f223903  addli r4, r18, 410
0023d4  97b05203  sll.d r[2:3], r[6:7], r21
0023d8  e3029fd8  loadli.w r5,  -5048(r30)
0023dc  97113b00  or r3, r22, r3
0023e0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0023e4  b3920228  sext_int2long r[6:7], r5
0023e8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0023ec  ab0100f0  lui r3, 983040
0023f0  1f423903  addli r4, r18, 412
0023f4  97b05203  sll.d r[2:3], r[6:7], r21
0023f8  e3429fd8  loadli.w r5,  -5044(r30)
0023fc  97113b00  or r3, r22, r3
002400  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
002404  b3920228  sext_int2long r[6:7], r5
002408  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00240c  ab0100f0  lui r3, 983040
002410  1f623903  addli r4, r18, 414
002414  97b05203  sll.d r[2:3], r[6:7], r21
002418  e302afd8  loadli.w r5,  -5040(r30)
00241c  97113b00  or r3, r22, r3
002420  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
002424  b3920228  sext_int2long r[6:7], r5
002428  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00242c  ab0100f0  lui r3, 983040
002430  1f024903  addli r4, r18, 416
002434  97b05203  sll.d r[2:3], r[6:7], r21
002438  e342afd8  loadli.w r5,  -5036(r30)
00243c  97113b00  or r3, r22, r3
002440  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
002444  b3920228  sext_int2long r[6:7], r5
002448  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00244c  ab0100f0  lui r3, 983040
002450  1f224903  addli r4, r18, 418
002454  97b05203  sll.d r[2:3], r[6:7], r21
002458  e302bfd8  loadli.w r5,  -5032(r30)
00245c  97113b00  or r3, r22, r3
002460  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
002464  b3920228  sext_int2long r[6:7], r5
002468  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00246c  ab0100f0  lui r3, 983040
002470  1f424903  addli r4, r18, 420
002474  97b05203  sll.d r[2:3], r[6:7], r21
002478  e342bfd8  loadli.w r5,  -5028(r30)
00247c  97113b00  or r3, r22, r3
002480  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
002484  b3920228  sext_int2long r[6:7], r5
002488  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00248c  ab0100f0  lui r3, 983040
002490  1f624903  addli r4, r18, 422
002494  97b05203  sll.d r[2:3], r[6:7], r21
002498  e302cfd8  loadli.w r5,  -5024(r30)
00249c  97113b00  or r3, r22, r3
0024a0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0024a4  b3920228  sext_int2long r[6:7], r5
0024a8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0024ac  ab0100f0  lui r3, 983040
0024b0  1f025903  addli r4, r18, 424
0024b4  97b05203  sll.d r[2:3], r[6:7], r21
0024b8  e342cfd8  loadli.w r5,  -5020(r30)
0024bc  97113b00  or r3, r22, r3
0024c0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0024c4  b3920228  sext_int2long r[6:7], r5
0024c8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0024cc  ab0100f0  lui r3, 983040
0024d0  1f225903  addli r4, r18, 426
0024d4  97b05203  sll.d r[2:3], r[6:7], r21
0024d8  e302dfd8  loadli.w r5,  -5016(r30)
0024dc  97113b00  or r3, r22, r3
0024e0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0024e4  b3920228  sext_int2long r[6:7], r5
0024e8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0024ec  ab0100f0  lui r3, 983040
0024f0  1f425903  addli r4, r18, 428
0024f4  97b05203  sll.d r[2:3], r[6:7], r21
0024f8  e302efd8  loadli.w r5,  -5008(r30)
0024fc  97113b00  or r3, r22, r3
002500  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
002504  b3920228  sext_int2long r[6:7], r5
002508  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00250c  ab0100f0  lui r3, 983040
002510  1f625903  addli r4, r18, 430
002514  97b05203  sll.d r[2:3], r[6:7], r21
002518  e342efd8  loadli.w r5,  -5004(r30)
00251c  97113b00  or r3, r22, r3
002520  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
002524  b3920228  sext_int2long r[6:7], r5
002528  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00252c  ab0100f0  lui r3, 983040
002530  1f026903  addli r4, r18, 432
002534  97b05203  sll.d r[2:3], r[6:7], r21
002538  e302ffd8  loadli.w r5,  -5000(r30)
00253c  97113b00  or r3, r22, r3
002540  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
002544  b3920228  sext_int2long r[6:7], r5
002548  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00254c  ab0100f0  lui r3, 983040
002550  1f226903  addli r4, r18, 434
002554  97b05203  sll.d r[2:3], r[6:7], r21
002558  e342ffd8  loadli.w r5,  -4996(r30)
00255c  97113b00  or r3, r22, r3
002560  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
002564  b3920228  sext_int2long r[6:7], r5
002568  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00256c  ab0100f0  lui r3, 983040
002570  1f426903  addli r4, r18, 436
002574  97b05203  sll.d r[2:3], r[6:7], r21
002578  e3020fd9  loadli.w r5,  -4992(r30)
00257c  97113b00  or r3, r22, r3
002580  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
002584  b3920228  sext_int2long r[6:7], r5
002588  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00258c  ab0100f0  lui r3, 983040
002590  1f626903  addli r4, r18, 438
002594  97b05203  sll.d r[2:3], r[6:7], r21
002598  e3420fd9  loadli.w r5,  -4988(r30)
00259c  97113b00  or r3, r22, r3
0025a0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0025a4  b3920228  sext_int2long r[6:7], r5
0025a8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0025ac  ab0100f0  lui r3, 983040
0025b0  1f027903  addli r4, r18, 440
0025b4  97b05203  sll.d r[2:3], r[6:7], r21
0025b8  e3021fd9  loadli.w r5,  -4984(r30)
0025bc  97113b00  or r3, r22, r3
0025c0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0025c4  b3920228  sext_int2long r[6:7], r5
0025c8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0025cc  ab0100f0  lui r3, 983040
0025d0  1f227903  addli r4, r18, 442
0025d4  97b05203  sll.d r[2:3], r[6:7], r21
0025d8  e3421fd9  loadli.w r5,  -4980(r30)
0025dc  97113b00  or r3, r22, r3
0025e0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0025e4  b3920228  sext_int2long r[6:7], r5
0025e8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0025ec  ab0100f0  lui r3, 983040
0025f0  1f427903  addli r4, r18, 444
0025f4  97b05203  sll.d r[2:3], r[6:7], r21
0025f8  e3022fd9  loadli.w r5,  -4976(r30)
0025fc  97113b00  or r3, r22, r3
002600  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
002604  b3920228  sext_int2long r[6:7], r5
002608  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00260c  ab0100f0  lui r3, 983040
002610  1f627903  addli r4, r18, 446
002614  97b05203  sll.d r[2:3], r[6:7], r21
002618  e3422fd9  loadli.w r5,  -4972(r30)
00261c  97113b00  or r3, r22, r3
002620  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
002624  b3920228  sext_int2long r[6:7], r5
002628  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00262c  63023fd9  loadli.w r4,  -4968(r30)
002630  ab0100f0  lui r3, 983040
002634  97b05203  sll.d r[2:3], r[6:7], r21
002638  63433fda  loadli.w r6,  -4836(r30)
00263c  97113b00  or r3, r22, r3
002640  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
002644  33120228  sext_int2long r[5:6], r4
002648  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
00264c  97305203  sll.d r[2:3], r[5:6], r21
002650  e3423fd9  loadli.w r5,  -4964(r30)
002654  ab0100f0  lui r3, 983040
002658  1f228903  addli r4, r18, 450
00265c  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
002660  97113b00  or r3, r22, r3
002664  b3920228  sext_int2long r[6:7], r5
002668  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00266c  ab0100f0  lui r3, 983040
002670  1f428903  addli r4, r18, 452
002674  97b05203  sll.d r[2:3], r[6:7], r21
002678  e3024fd9  loadli.w r5,  -4960(r30)
00267c  97113b00  or r3, r22, r3
002680  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
002684  b3920228  sext_int2long r[6:7], r5
002688  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00268c  ab0100f0  lui r3, 983040
002690  1f628903  addli r4, r18, 454
002694  97b05203  sll.d r[2:3], r[6:7], r21
002698  e3424fd9  loadli.w r5,  -4956(r30)
00269c  97113b00  or r3, r22, r3
0026a0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0026a4  b3920228  sext_int2long r[6:7], r5
0026a8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0026ac  ab0100f0  lui r3, 983040
0026b0  1f029903  addli r4, r18, 456
0026b4  97b05203  sll.d r[2:3], r[6:7], r21
0026b8  e3025fd9  loadli.w r5,  -4952(r30)
0026bc  97113b00  or r3, r22, r3
0026c0  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0026c4  b3920228  sext_int2long r[6:7], r5
0026c8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0026cc  63425fd9  loadli.w r4,  -4948(r30)
0026d0  ab0100f0  lui r3, 983040
0026d4  97b05203  sll.d r[2:3], r[6:7], r21
0026d8  1f239903  addli r6, r18, 458
0026dc  97113b00  or r3, r22, r3
0026e0  33120228  sext_int2long r[5:6], r4
0026e4  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0026e8  17325203  sll.d r[5:6], r[5:6], r21
0026ec  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
0026f0  ab0100f0  lui r3, 983040
0026f4  8ba04610  add.ul r[2:3], r[14:15], r[5:6]
0026f8  e3026fd9  loadli.w r5,  -4944(r30)
0026fc  1f429903  addli r4, r18, 460
002700  97113b00  or r3, r22, r3
002704  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002708  b3920228  sext_int2long r[6:7], r5
00270c  97b15203  sll.d r[4:5], r[6:7], r21
002710  9f024fda  addli r5, r30, -4832
002714  1f639903  addli r6, r18, 462
002718  ebd00200  load.d r[2:3], 0(r5)
00271c  ab0200f0  lui r5, 983040
002720  8ba13610  add.ul r[4:5], r[14:15], r[4:5]
002724  97125b00  or r5, r22, r5
002728  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
00272c  ffb26100  s_lm2gm r5, r6, 0(r[4:5])
002730  e3017fd9  loadli.w r3,  -4936(r30)
002734  97b25303  sll.d r[6:7], r[8:9], r21
002738  ab0300f0  lui r7, 983040
00273c  1f04a903  addli r8, r18, 464
002740  8ba25610  add.ul r[6:7], r[14:15], r[6:7]
002744  97137b00  or r7, r22, r7
002748  b3910128  sext_int2long r[4:5], r3
00274c  ffb38200  s_lm2gm r7, r8, 0(r[6:7])
002750  97b35403  sll.d r[8:9], r[10:11], r21
002754  ab0400f0  lui r9, 983040
002758  1f25a903  addli r10, r18, 466
00275c  e3028fd9  loadli.w r5,  -4928(r30)
002760  97b15103  sll.d r[4:5], r[4:5], r21
002764  97149b00  or r9, r22, r9
002768  8ba37610  add.ul r[8:9], r[14:15], r[8:9]
00276c  8ba13610  add.ul r[4:5], r[14:15], r[4:5]
002770  b3920228  sext_int2long r[6:7], r5
002774  ffb4a100  s_lm2gm r9, r10, 0(r[4:5])
002778  97b45503  sll.d r[10:11], r[12:13], r21
00277c  e3459fd9  loadli.w r11,  -4916(r30)
002780  97b25203  sll.d r[6:7], r[6:7], r21
002784  e3019fd9  loadli.w r3,  -4920(r30)
002788  8ba79610  add.ul r[16:17], r[14:15], r[10:11]
00278c  ab0400f0  lui r9, 983040
002790  1f45a903  addli r10, r18, 468
002794  8ba25610  add.ul r[6:7], r[14:15], r[6:7]
002798  b3950528  sext_int2long r[12:13], r11
00279c  b3910128  sext_int2long r[4:5], r3
0027a0  97149b00  or r9, r22, r9
0027a4  97b15103  sll.d r[4:5], r[4:5], r21
0027a8  ffb4a300  s_lm2gm r9, r10, 0(r[8:9])
0027ac  e303afd9  loadli.w r7,  -4912(r30)
0027b0  97b45503  sll.d r[10:11], r[12:13], r21
0027b4  e345afd9  loadli.w r11,  -4908(r30)
0027b8  8ba13610  add.ul r[4:5], r[14:15], r[4:5]
0027bc  8ba99610  add.ul r[20:21], r[14:15], r[10:11]
0027c0  b3930328  sext_int2long r[8:9], r7
0027c4  b3950528  sext_int2long r[12:13], r11
0027c8  97b35303  sll.d r[8:9], r[8:9], r21
0027cc  8ba47610  add.ul r[10:11], r[14:15], r[8:9]
0027d0  ab0300f0  lui r7, 983040
0027d4  1f64a903  addli r8, r18, 470
0027d8  97137b00  or r7, r22, r7
0027dc  ffb38200  s_lm2gm r7, r8, 0(r[6:7])
0027e0  e302bfd9  loadli.w r5,  -4904(r30)
0027e4  97b35503  sll.d r[8:9], r[12:13], r21
0027e8  8bad7610  add.ul r[28:29], r[14:15], r[8:9]
0027ec  e343bfd9  loadli.w r7,  -4900(r30)
0027f0  b3920228  sext_int2long r[6:7], r5
0027f4  97b25203  sll.d r[6:7], r[6:7], r21
0027f8  b3930328  sext_int2long r[8:9], r7
0027fc  8ba55610  add.ul r[12:13], r[14:15], r[6:7]
002800  ab0200f0  lui r5, 983040
002804  1f03b903  addli r6, r18, 472
002808  97b35303  sll.d r[8:9], r[8:9], r21
00280c  97125b00  or r5, r22, r5
002810  ffb26700  s_lm2gm r5, r6, 0(r[16:17])
002814  e302cfd9  loadli.w r5,  -4896(r30)
002818  8ba77610  add.ul r[16:17], r[14:15], r[8:9]
00281c  ab0300f0  lui r7, 983040
002820  1f24b903  addli r8, r18, 474
002824  97137b00  or r7, r22, r7
002828  b3920228  sext_int2long r[6:7], r5
00282c  ffb38100  s_lm2gm r7, r8, 0(r[4:5])
002830  e301dfd9  loadli.w r3,  -4888(r30)
002834  9f038fde  addli r7, r30, -4288
002838  97b25203  sll.d r[6:7], r[6:7], r21
00283c  8bac5610  add.ul r[26:27], r[14:15], r[6:7]
002840  e342cfd9  loadli.w r5,  -4892(r30)
002844  b3910128  sext_int2long r[4:5], r3
002848  97b15103  sll.d r[4:5], r[4:5], r21
00284c  b3920228  sext_int2long r[6:7], r5
002850  8bab3610  add.ul r[24:25], r[14:15], r[4:5]
002854  97b25203  sll.d r[6:7], r[6:7], r21
002858  8ba25610  add.ul r[6:7], r[14:15], r[6:7]
00285c  73b05300  store.d r[6:7], 0(r7)
002860  e342dfd9  loadli.w r5,  -4884(r30)
002864  9f030fdf  addli r7, r30, -4224
002868  b3920228  sext_int2long r[6:7], r5
00286c  97b15203  sll.d r[4:5], r[6:7], r21
002870  ab0200f0  lui r5, 983040
002874  1f43b903  addli r6, r18, 476
002878  97125b00  or r5, r22, r5
00287c  8ba13610  add.ul r[4:5], r[14:15], r[4:5]
002880  73b03300  store.d r[4:5], 0(r7)
002884  e341efd9  loadli.w r3,  -4876(r30)
002888  ffb26900  s_lm2gm r5, r6, 0(r[20:21])
00288c  e302efd9  loadli.w r5,  -4880(r30)
002890  b3910128  sext_int2long r[4:5], r3
002894  b3920228  sext_int2long r[6:7], r5
002898  97b15103  sll.d r[4:5], r[4:5], r21
00289c  97b35203  sll.d r[8:9], r[6:7], r21
0028a0  8ba23610  add.ul r[6:7], r[14:15], r[4:5]
0028a4  8ba17610  add.ul r[4:5], r[14:15], r[8:9]
0028a8  9f03efdf  addli r7, r30, -4112
0028ac  73b03300  store.d r[4:5], 0(r7)
0028b0  ab0300f0  lui r7, 983040
0028b4  e301ffd9  loadli.w r3,  -4872(r30)
0028b8  1f02c903  addli r4, r18, 480
0028bc  97137b00  or r7, r22, r7
0028c0  b3990128  sext_int2long r[20:21], r3
0028c4  ffb32001  s_lm2gm r7, r18, 0(r[2:3])
0028c8  e340ffd9  loadli.w r1,  -4868(r30)
0028cc  97b95903  sll.d r[20:21], r[20:21], r21
0028d0  b3900028  sext_int2long r[2:3], r1
0028d4  8ba33611  add.ul r[8:9], r[14:15], r[20:21]
0028d8  ab0900f0  lui r19, 983040
0028dc  17b15003  sll.d r[3:4], r[2:3], r21
0028e0  97103b01  or r1, r22, r19
0028e4  8ba92610  add.ul r[20:21], r[14:15], r[3:4]
0028e8  ab0100f0  lui r3, 983040
0028ec  ffb01401  s_lm2gm r1, r17, 0(r[10:11])
0028f0  e3000fda  loadli.w r1,  -4864(r30)
0028f4  9f68c903  addli r17, r18, 486
0028f8  97113b00  or r3, r22, r3
0028fc  b3900028  sext_int2long r[2:3], r1
002900  ffb14d00  s_lm2gm r3, r4, 0(r[28:29])
002904  e3410fda  loadli.w r3,  -4860(r30)
002908  97b05003  sll.d r[2:3], r[2:3], r21
00290c  b3910128  sext_int2long r[4:5], r3
002910  8ba41610  add.ul r[10:11], r[14:15], r[2:3]
002914  97b05103  sll.d r[2:3], r[4:5], r21
002918  ab0100f0  lui r3, 983040
00291c  1f22c903  addli r4, r18, 482
002920  97113b00  or r3, r22, r3
002924  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
002928  ffb14500  s_lm2gm r3, r4, 0(r[12:13])
00292c  ab0500f0  lui r11, 983040
002930  e3011fda  loadli.w r3,  -4856(r30)
002934  1f46c903  addli r12, r18, 484
002938  9715bb00  or r11, r22, r11
00293c  b3910128  sext_int2long r[4:5], r3
002940  ffb5c700  s_lm2gm r11, r12, 0(r[16:17])
002944  e3451fda  loadli.w r11,  -4852(r30)
002948  97b15103  sll.d r[4:5], r[4:5], r21
00294c  b3970528  sext_int2long r[16:17], r11
002950  8ba53610  add.ul r[12:13], r[14:15], r[4:5]
002954  97b15703  sll.d r[4:5], r[16:17], r21
002958  ab0700f0  lui r15, 983040
00295c  971dfb00  or r27, r22, r15
002960  8ba73610  add.ul r[16:17], r[14:15], r[4:5]
002964  9f01d903  addli r3, r18, 488
002968  1f098fde  addli r18, r30, -4288
00296c  2b0200f0  lui r4, 983040
002970  ffbd1c01  s_lm2gm r27, r17, 0(r[26:27])
002974  e3486fda  loadli.w r17,  -4812(r30)
002978  17124b00  or r4, r22, r4
00297c  b39c0828  sext_int2long r[26:27], r17
002980  ab0800f0  lui r17, 983040
002984  97bc5c03  sll.d r[26:27], r[26:27], r21
002988  9f0a0ff0  addli r21, r30, -2048
00298c  97181b01  or r17, r22, r17
002990  8bac9611  add.ul r[26:27], r[14:15], r[26:27]
002994  eb560900  load.d r[14:15], 0(r18)
002998  1f090fdf  addli r18, r30, -4224
00299c  9fadda03  addli r27, r21, 490
0029a0  7fb2bb01  s_lm2gm r4, r27, 0(r[24:25])
0029a4  1fc2da03  addli r4, r21, 492
0029a8  ab0bffff  lui r23, 1048560
0029ac  ffb83600  s_lm2gm r17, r3, 0(r[14:15])
0029b0  ab0100f0  lui r3, 983040
0029b4  eb560900  load.d r[14:15], 0(r18)
0029b8  9fa8ea03  addli r17, r21, 498
0029bc  2b09807f  lui r18, 522240
0029c0  97113b00  or r3, r22, r3
0029c4  ffb14600  s_lm2gm r3, r4, 0(r[14:15])
0029c8  2b0200f0  lui r4, 983040
0029cc  9fe1da03  addli r3, r21, 494
0029d0  ab0600f0  lui r13, 983040
0029d4  17124b00  or r4, r22, r4
0029d8  9716db00  or r13, r22, r13
0029dc  7fb23200  s_lm2gm r4, r3, 0(r[6:7])
0029e0  1f03efdf  addli r6, r30, -4112
0029e4  ab0100f0  lui r3, 983040
0029e8  1f82ea03  addli r4, r21, 496
0029ec  ab0200f0  lui r5, 983040
0029f0  eb5d0300  load.d r[28:29], 0(r6)
0029f4  97113b00  or r3, r22, r3
0029f8  2b0300f0  lui r6, 983040
0029fc  17136b00  or r6, r22, r6
002a00  ffb14d00  s_lm2gm r3, r4, 0(r[28:29])
002a04  97115b00  or r3, r22, r5
002a08  1fc2ea03  addli r4, r21, 500
002a0c  9fc2fa03  addli r5, r21, 508
002a10  ffb11301  s_lm2gm r3, r17, 0(r[8:9])
002a14  ab0100f0  lui r3, 983040
002a18  ffb64900  s_lm2gm r13, r4, 0(r[20:21])
002a1c  1fe2ea03  addli r4, r21, 502
002a20  e349ffdf  loadli.w r19,  -4100(r30)
002a24  ab084000  lui r17, 1024
002a28  97113b00  or r3, r22, r3
002a2c  ffb14400  s_lm2gm r3, r4, 0(r[10:11])
002a30  2b0200f0  lui r4, 983040
002a34  9f81fa03  addli r3, r21, 504
002a38  63055fda  loadli.w r10,  -4824(r30)
002a3c  17124b00  or r4, r22, r4
002a40  7fb23000  s_lm2gm r4, r3, 0(r[2:3])
002a44  ab0000f0  lui r1, 983040
002a48  1fa1fa03  addli r2, r21, 506
002a4c  ab0100f0  lui r3, 983040
002a50  97101b00  or r1, r22, r1
002a54  ffb02500  s_lm2gm r1, r2, 0(r[12:13])
002a58  97103b00  or r1, r22, r3
002a5c  1fe1fa03  addli r2, r21, 510
002a60  ffb05700  s_lm2gm r1, r5, 0(r[16:17])
002a64  e300dfd1  loadli.w r1,  -5912(r30)
002a68  7fb32c00  s_lm2gm r6, r2, 0(r[26:27])
002a6c  00a00000  mfence { lm }
002a70  0b151510  add.s r10, r10, r1
002a74  e340efd1  loadli.w r1,  -5900(r30)
002a78  3f201500  blt.s r10, r1, 8
002a7c  5b130600  j 12440
002a80  9f000000  addli r1, zero, 0
002a84  9f020004  addli r5, zero, 512
002a88  0b911a10  add.s r2, r21, r1
002a8c  9fc00000  addli r1, r1, 4
002a90  73100100  store.h zero, 0(r2)
002a94  73110100  store.h zero, 2(r2)
002a98  00a00000  mfence { lm }
002a9c  bbbf50fe  bneq r1, r5, -20
002aa0  e3005f00  loadli.w r1,  40(r30)
002aa4  63414f00  loadli.w r2,  36(r30)
002aa8  1f130000  addli r6, zero, 1
002aac  1f044fda  addli r8, r30, -4832
002ab0  e702afda  storeli.w r10, -4824(r30)
002ab4  8b101530  div.s r1, r10, r1
002ab8  8b902030  div.s r1, r1, r2
002abc  6301efd1  loadli.w r2,  -5904(r30)
002ac0  9bb04000  slli r1, r1, 4
002ac4  8b902010  add.s r1, r1, r2
002ac8  1bb1a000  slli r2, r1, 10
002acc  670f1fde  storeli.w r1, -4112(r30)
002ad0  e340dfd1  loadli.w r1,  -5908(r30)
002ad4  e7002fd2  storeli.w r2, -5880(r30)
002ad8  8b101110  add.s r1, r2, r1
002adc  2b0100f0  lui r2, 983040
002ae0  b3910028  sext_int2long r[4:5], r1
002ae4  17912200  or r2, r5, r2
002ae8  ab0000f0  lui r1, 983040
002aec  17b36102  sll.d r[7:8], r[4:5], r6
002af0  eb510f00  load.d r[4:5], 0(r30)
002af4  97901200  or r1, r5, r1
002af8  73306400  store.d r[7:8], 0(r8)
002afc  8ba16110  add.ul r[4:5], r[4:5], r[7:8]
002b00  7fa15101  l_gm2lm r2, r21, 0(r[4:5])
002b04  1f023fd1  addli r4, r30, -5992
002b08  6b510200  load.d r[3:4], 0(r4)
002b0c  1f020ff4  addli r4, r30, -1536
002b10  ff204100  l_gm2lm r1, r4, 0(r[3:4])
002b14  9f000ff0  addli r1, r30, -2048
002b18  00a00000  mfence { lm }
002b1c  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
002b20  9f008ff0  addli r1, r30, -1984
002b24  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
002b28  9f000ff1  addli r1, r30, -1920
002b2c  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
002b30  9f008ff1  addli r1, r30, -1856
002b34  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
002b38  9f000ff2  addli r1, r30, -1792
002b3c  e6c03480  vmerge_l.hf vr1, vr9, vr3
002b40  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
002b44  9f000fdf  addli r1, r30, -4224
002b48  00a00000  mfence { lm }
002b4c  e6c55480  vmerge_l.hf vr11, vr9, vr5
002b50  66c554a0  vmerge_h.hf vr10, vr9, vr5
002b54  e6c24480  vmerge_l.hf vr5, vr9, vr4
002b58  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
002b5c  9f000ff4  addli r1, r30, -1536
002b60  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
002b64  9f008ff4  addli r1, r30, -1472
002b68  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
002b6c  9f000ff5  addli r1, r30, -1408
002b70  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
002b74  9f008fde  addli r1, r30, -4288
002b78  66c07480  vmerge_l.hf vr0, vr9, vr7
002b7c  16900502  vadd.f.mz.rn vr0{mr1}, vr11, vr0
002b80  e6c544a0  vmerge_h.hf vr11, vr9, vr4
002b84  66c234a0  vmerge_h.hf vr4, vr9, vr3
002b88  e6c12480  vmerge_l.hf vr3, vr9, vr2
002b8c  66c124a0  vmerge_h.hf vr2, vr9, vr2
002b90  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
002b94  66c08480  vmerge_l.hf vr0, vr9, vr8
002b98  66c484a0  vmerge_h.hf vr8, vr9, vr8
002b9c  9f000fde  addli r1, r30, -4352
002ba0  16900002  vadd.f.mz.rn vr0{mr1}, vr1, vr0
002ba4  e6c074a0  vmerge_h.hf vr1, vr9, vr7
002ba8  e6c36480  vmerge_l.hf vr7, vr9, vr6
002bac  66c364a0  vmerge_h.hf vr6, vr9, vr6
002bb0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
002bb4  16108202  vadd.f.mz.rn vr0{mr1}, vr4, vr8
002bb8  9f008fdd  addli r1, r30, -4416
002bbc  16936502  vadd.f.mz.rn vr6{mr1}, vr11, vr6
002bc0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
002bc4  16101502  vadd.f.mz.rn vr0{mr1}, vr10, vr1
002bc8  9f000fdd  addli r1, r30, -4480
002bcc  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
002bd0  9f008ff5  addli r1, r30, -1344
002bd4  16907202  vadd.f.mz.rn vr0{mr1}, vr5, vr7
002bd8  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
002bdc  9f008fdc  addli r1, r30, -4544
002be0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
002be4  9f000ff6  addli r1, r30, -1280
002be8  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
002bec  9f000fdf  addli r1, r30, -4224
002bf0  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
002bf4  66c21480  vmerge_l.hf vr4, vr9, vr1
002bf8  e6c014a0  vmerge_h.hf vr1, vr9, vr1
002bfc  9f000fdc  addli r1, r30, -4608
002c00  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
002c04  9f008fdb  addli r1, r30, -4672
002c08  66c08480  vmerge_l.hf vr0, vr9, vr8
002c0c  96914102  vadd.f.mz.rn vr3{mr1}, vr3, vr4
002c10  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002c14  66c484a0  vmerge_h.hf vr8, vr9, vr8
002c18  66c55480  vmerge_l.hf vr10, vr9, vr5
002c1c  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
002c20  9f000fdb  addli r1, r30, -4736
002c24  e6c154a0  vmerge_h.hf vr3, vr9, vr5
002c28  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
002c2c  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
002c30  9f008fda  addli r1, r30, -4800
002c34  16958102  vadd.f.mz.rn vr10{mr1}, vr3, vr8
002c38  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
002c3c  9f008ff2  addli r1, r30, -1728
002c40  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
002c44  9f008ff6  addli r1, r30, -1216
002c48  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
002c4c  9f000ff3  addli r1, r30, -1664
002c50  e6c50480  vmerge_l.hf vr11, vr9, vr0
002c54  66c004a0  vmerge_h.hf vr0, vr9, vr0
002c58  e6c02480  vmerge_l.hf vr1, vr9, vr2
002c5c  66c124a0  vmerge_h.hf vr2, vr9, vr2
002c60  96951502  vadd.f.mz.rn vr11{mr1}, vr11, vr1
002c64  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
002c68  9f008ff3  addli r1, r30, -1600
002c6c  96132002  vadd.f.mz.rn vr7{mr1}, vr0, vr2
002c70  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
002c74  9f000ff7  addli r1, r30, -1152
002c78  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
002c7c  9f008ff7  addli r1, r30, -1088
002c80  66c41480  vmerge_l.hf vr8, vr9, vr1
002c84  66c314a0  vmerge_h.hf vr6, vr9, vr1
002c88  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
002c8c  9f000fde  addli r1, r30, -4352
002c90  66c224a0  vmerge_h.hf vr4, vr9, vr2
002c94  e6c22480  vmerge_l.hf vr5, vr9, vr2
002c98  66c10480  vmerge_l.hf vr2, vr9, vr0
002c9c  66c004a0  vmerge_h.hf vr0, vr9, vr0
002ca0  e6c11480  vmerge_l.hf vr3, vr9, vr1
002ca4  e6c014a0  vmerge_h.hf vr1, vr9, vr1
002ca8  16112402  vadd.f.mz.rn vr2{mr1}, vr8, vr2
002cac  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
002cb0  96101202  vadd.f.mz.rn vr1{mr1}, vr4, vr1
002cb4  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
002cb8  9f008fdd  addli r1, r30, -4416
002cbc  96913202  vadd.f.mz.rn vr3{mr1}, vr5, vr3
002cc0  46104f82  vstore_mask16.mz vr4{mr1}, 1024(r30)
002cc4  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
002cc8  9f008fde  addli r1, r30, -4288
002ccc  46144f82  vstore_mask16.mz vr4{mr1}, 1088(r30)
002cd0  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
002cd4  9f000fdd  addli r1, r30, -4480
002cd8  46184f82  vstore_mask16.mz vr4{mr1}, 1152(r30)
002cdc  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
002ce0  9f008fdc  addli r1, r30, -4544
002ce4  461c4f82  vstore_mask16.mz vr4{mr1}, 1216(r30)
002ce8  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
002cec  9f000fdc  addli r1, r30, -4608
002cf0  46104fa2  vstore_mask16.mz vr4{mr1}, 1280(r30)
002cf4  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
002cf8  9f008fdb  addli r1, r30, -4672
002cfc  46144fa2  vstore_mask16.mz vr4{mr1}, 1344(r30)
002d00  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
002d04  9f000fdb  addli r1, r30, -4736
002d08  46184fa2  vstore_mask16.mz vr4{mr1}, 1408(r30)
002d0c  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
002d10  9f008fda  addli r1, r30, -4800
002d14  461c4fa2  vstore_mask16.mz vr4{mr1}, 1472(r30)
002d18  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
002d1c  46104fc2  vstore_mask16.mz vr4{mr1}, 1536(r30)
002d20  4614afc2  vstore_mask16.mz vr10{mr1}, 1600(r30)
002d24  4618bfc2  vstore_mask16.mz vr11{mr1}, 1664(r30)
002d28  461c7fc2  vstore_mask16.mz vr7{mr1}, 1728(r30)
002d2c  46102fe2  vstore_mask16.mz vr2{mr1}, 1792(r30)
002d30  46140fe2  vstore_mask16.mz vr0{mr1}, 1856(r30)
002d34  46183fe2  vstore_mask16.mz vr3{mr1}, 1920(r30)
002d38  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
002d3c  00a00000  mfence { lm }
002d40  e30c0ff8  loadli.w r25,  -1024(r30)
002d44  634b0ff8  loadli.w r22,  -1020(r30)
002d48  e30a1ff8  loadli.w r21,  -1016(r30)
002d4c  634a1ff8  loadli.w r20,  -1012(r30)
002d50  e3072ff8  loadli.w r15,  -1008(r30)
002d54  63472ff8  loadli.w r14,  -1004(r30)
002d58  e3063ff8  loadli.w r13,  -1000(r30)
002d5c  63463ff8  loadli.w r12,  -996(r30)
002d60  e3054ff8  loadli.w r11,  -992(r30)
002d64  63454ff8  loadli.w r10,  -988(r30)
002d68  e3045ff8  loadli.w r9,  -984(r30)
002d6c  e3435ff8  loadli.w r7,  -980(r30)
002d70  63036ff8  loadli.w r6,  -976(r30)
002d74  e3426ff8  loadli.w r5,  -972(r30)
002d78  e3017ff8  loadli.w r3,  -968(r30)
002d7c  63417ff8  loadli.w r2,  -964(r30)
002d80  e3008ff8  loadli.w r1,  -960(r30)
002d84  e3408ff8  loadli.w r1,  -956(r30)
002d88  e3009ff8  loadli.w r1,  -952(r30)
002d8c  e3409ff8  loadli.w r1,  -948(r30)
002d90  e300aff8  loadli.w r1,  -944(r30)
002d94  e340aff8  loadli.w r1,  -940(r30)
002d98  e300bff8  loadli.w r1,  -936(r30)
002d9c  e340bff8  loadli.w r1,  -932(r30)
002da0  e300cff8  loadli.w r1,  -928(r30)
002da4  e340cff8  loadli.w r1,  -924(r30)
002da8  e300dff8  loadli.w r1,  -920(r30)
002dac  e340dff8  loadli.w r1,  -916(r30)
002db0  e300eff8  loadli.w r1,  -912(r30)
002db4  e340eff8  loadli.w r1,  -908(r30)
002db8  e300fff8  loadli.w r1,  -904(r30)
002dbc  e340fff8  loadli.w r1,  -900(r30)
002dc0  e3000ff9  loadli.w r1,  -896(r30)
002dc4  e3400ff9  loadli.w r1,  -892(r30)
002dc8  e3001ff9  loadli.w r1,  -888(r30)
002dcc  e3401ff9  loadli.w r1,  -884(r30)
002dd0  e3002ff9  loadli.w r1,  -880(r30)
002dd4  e3402ff9  loadli.w r1,  -876(r30)
002dd8  e3003ff9  loadli.w r1,  -872(r30)
002ddc  e3403ff9  loadli.w r1,  -868(r30)
002de0  e3004ff9  loadli.w r1,  -864(r30)
002de4  e3404ff9  loadli.w r1,  -860(r30)
002de8  e3005ff9  loadli.w r1,  -856(r30)
002dec  e3405ff9  loadli.w r1,  -852(r30)
002df0  e3006ff9  loadli.w r1,  -848(r30)
002df4  e3406ff9  loadli.w r1,  -844(r30)
002df8  e3007ff9  loadli.w r1,  -840(r30)
002dfc  e3407ff9  loadli.w r1,  -836(r30)
002e00  e3008ff9  loadli.w r1,  -832(r30)
002e04  e3408ff9  loadli.w r1,  -828(r30)
002e08  e3009ff9  loadli.w r1,  -824(r30)
002e0c  e3409ff9  loadli.w r1,  -820(r30)
002e10  e300aff9  loadli.w r1,  -816(r30)
002e14  e340aff9  loadli.w r1,  -812(r30)
002e18  e300bff9  loadli.w r1,  -808(r30)
002e1c  e340bff9  loadli.w r1,  -804(r30)
002e20  e300cff9  loadli.w r1,  -800(r30)
002e24  e340cff9  loadli.w r1,  -796(r30)
002e28  e300dff9  loadli.w r1,  -792(r30)
002e2c  e340dff9  loadli.w r1,  -788(r30)
002e30  e300eff9  loadli.w r1,  -784(r30)
002e34  e340eff9  loadli.w r1,  -780(r30)
002e38  e300fff9  loadli.w r1,  -776(r30)
002e3c  e340fff9  loadli.w r1,  -772(r30)
002e40  e3000ffa  loadli.w r1,  -768(r30)
002e44  e3400ffa  loadli.w r1,  -764(r30)
002e48  e3001ffa  loadli.w r1,  -760(r30)
002e4c  e3401ffa  loadli.w r1,  -756(r30)
002e50  e3002ffa  loadli.w r1,  -752(r30)
002e54  e3402ffa  loadli.w r1,  -748(r30)
002e58  e3003ffa  loadli.w r1,  -744(r30)
002e5c  e3403ffa  loadli.w r1,  -740(r30)
002e60  e3004ffa  loadli.w r1,  -736(r30)
002e64  e3404ffa  loadli.w r1,  -732(r30)
002e68  e3005ffa  loadli.w r1,  -728(r30)
002e6c  e3405ffa  loadli.w r1,  -724(r30)
002e70  e3006ffa  loadli.w r1,  -720(r30)
002e74  e3406ffa  loadli.w r1,  -716(r30)
002e78  e3007ffa  loadli.w r1,  -712(r30)
002e7c  e3407ffa  loadli.w r1,  -708(r30)
002e80  e3008ffa  loadli.w r1,  -704(r30)
002e84  e3408ffa  loadli.w r1,  -700(r30)
002e88  e3009ffa  loadli.w r1,  -696(r30)
002e8c  e3409ffa  loadli.w r1,  -692(r30)
002e90  e300affa  loadli.w r1,  -688(r30)
002e94  e340affa  loadli.w r1,  -684(r30)
002e98  e300bffa  loadli.w r1,  -680(r30)
002e9c  e340bffa  loadli.w r1,  -676(r30)
002ea0  e300cffa  loadli.w r1,  -672(r30)
002ea4  e340cffa  loadli.w r1,  -668(r30)
002ea8  e300dffa  loadli.w r1,  -664(r30)
002eac  e340dffa  loadli.w r1,  -660(r30)
002eb0  e300effa  loadli.w r1,  -656(r30)
002eb4  e340effa  loadli.w r1,  -652(r30)
002eb8  e300fffa  loadli.w r1,  -648(r30)
002ebc  e340fffa  loadli.w r1,  -644(r30)
002ec0  e3000ffb  loadli.w r1,  -640(r30)
002ec4  e3400ffb  loadli.w r1,  -636(r30)
002ec8  e3001ffb  loadli.w r1,  -632(r30)
002ecc  e3401ffb  loadli.w r1,  -628(r30)
002ed0  e3002ffb  loadli.w r1,  -624(r30)
002ed4  e3402ffb  loadli.w r1,  -620(r30)
002ed8  e3003ffb  loadli.w r1,  -616(r30)
002edc  e3403ffb  loadli.w r1,  -612(r30)
002ee0  e3004ffb  loadli.w r1,  -608(r30)
002ee4  e3404ffb  loadli.w r1,  -604(r30)
002ee8  e3005ffb  loadli.w r1,  -600(r30)
002eec  e3405ffb  loadli.w r1,  -596(r30)
002ef0  e3006ffb  loadli.w r1,  -592(r30)
002ef4  e3406ffb  loadli.w r1,  -588(r30)
002ef8  e3007ffb  loadli.w r1,  -584(r30)
002efc  e3407ffb  loadli.w r1,  -580(r30)
002f00  e3008ffb  loadli.w r1,  -576(r30)
002f04  e3408ffb  loadli.w r1,  -572(r30)
002f08  e3009ffb  loadli.w r1,  -568(r30)
002f0c  e3409ffb  loadli.w r1,  -564(r30)
002f10  e300affb  loadli.w r1,  -560(r30)
002f14  e340affb  loadli.w r1,  -556(r30)
002f18  e300bffb  loadli.w r1,  -552(r30)
002f1c  e340bffb  loadli.w r1,  -548(r30)
002f20  e300cffb  loadli.w r1,  -544(r30)
002f24  e340cffb  loadli.w r1,  -540(r30)
002f28  e300dffb  loadli.w r1,  -536(r30)
002f2c  e340dffb  loadli.w r1,  -532(r30)
002f30  e300effb  loadli.w r1,  -528(r30)
002f34  e340effb  loadli.w r1,  -524(r30)
002f38  e300fffb  loadli.w r1,  -520(r30)
002f3c  e340fffb  loadli.w r1,  -516(r30)
002f40  e3000ffc  loadli.w r1,  -512(r30)
002f44  e3400ffc  loadli.w r1,  -508(r30)
002f48  e3001ffc  loadli.w r1,  -504(r30)
002f4c  e3401ffc  loadli.w r1,  -500(r30)
002f50  e3002ffc  loadli.w r1,  -496(r30)
002f54  e3402ffc  loadli.w r1,  -492(r30)
002f58  e3003ffc  loadli.w r1,  -488(r30)
002f5c  e3403ffc  loadli.w r1,  -484(r30)
002f60  e3004ffc  loadli.w r1,  -480(r30)
002f64  e3404ffc  loadli.w r1,  -476(r30)
002f68  e3005ffc  loadli.w r1,  -472(r30)
002f6c  e3405ffc  loadli.w r1,  -468(r30)
002f70  e3006ffc  loadli.w r1,  -464(r30)
002f74  e3406ffc  loadli.w r1,  -460(r30)
002f78  e3007ffc  loadli.w r1,  -456(r30)
002f7c  e3407ffc  loadli.w r1,  -452(r30)
002f80  e3008ffc  loadli.w r1,  -448(r30)
002f84  e3408ffc  loadli.w r1,  -444(r30)
002f88  e3009ffc  loadli.w r1,  -440(r30)
002f8c  e3409ffc  loadli.w r1,  -436(r30)
002f90  e300affc  loadli.w r1,  -432(r30)
002f94  e340affc  loadli.w r1,  -428(r30)
002f98  e300bffc  loadli.w r1,  -424(r30)
002f9c  e340bffc  loadli.w r1,  -420(r30)
002fa0  e300cffc  loadli.w r1,  -416(r30)
002fa4  e340cffc  loadli.w r1,  -412(r30)
002fa8  e300dffc  loadli.w r1,  -408(r30)
002fac  e340dffc  loadli.w r1,  -404(r30)
002fb0  e300effc  loadli.w r1,  -400(r30)
002fb4  e340effc  loadli.w r1,  -396(r30)
002fb8  e300fffc  loadli.w r1,  -392(r30)
002fbc  e340fffc  loadli.w r1,  -388(r30)
002fc0  e3000ffd  loadli.w r1,  -384(r30)
002fc4  e3400ffd  loadli.w r1,  -380(r30)
002fc8  e3001ffd  loadli.w r1,  -376(r30)
002fcc  e3401ffd  loadli.w r1,  -372(r30)
002fd0  e3002ffd  loadli.w r1,  -368(r30)
002fd4  e3402ffd  loadli.w r1,  -364(r30)
002fd8  e3003ffd  loadli.w r1,  -360(r30)
002fdc  e3403ffd  loadli.w r1,  -356(r30)
002fe0  e3004ffd  loadli.w r1,  -352(r30)
002fe4  e3404ffd  loadli.w r1,  -348(r30)
002fe8  e3005ffd  loadli.w r1,  -344(r30)
002fec  e3405ffd  loadli.w r1,  -340(r30)
002ff0  e3006ffd  loadli.w r1,  -336(r30)
002ff4  e3406ffd  loadli.w r1,  -332(r30)
002ff8  e3007ffd  loadli.w r1,  -328(r30)
002ffc  e3407ffd  loadli.w r1,  -324(r30)
003000  e3008ffd  loadli.w r1,  -320(r30)
003004  e3408ffd  loadli.w r1,  -316(r30)
003008  e3009ffd  loadli.w r1,  -312(r30)
00300c  e3409ffd  loadli.w r1,  -308(r30)
003010  e300affd  loadli.w r1,  -304(r30)
003014  e340affd  loadli.w r1,  -300(r30)
003018  e300bffd  loadli.w r1,  -296(r30)
00301c  e340bffd  loadli.w r1,  -292(r30)
003020  e300cffd  loadli.w r1,  -288(r30)
003024  e340cffd  loadli.w r1,  -284(r30)
003028  e300dffd  loadli.w r1,  -280(r30)
00302c  e340dffd  loadli.w r1,  -276(r30)
003030  e300effd  loadli.w r1,  -272(r30)
003034  e340effd  loadli.w r1,  -268(r30)
003038  e300fffd  loadli.w r1,  -264(r30)
00303c  e340fffd  loadli.w r1,  -260(r30)
003040  e3000ffe  loadli.w r1,  -256(r30)
003044  e3400ffe  loadli.w r1,  -252(r30)
003048  e3001ffe  loadli.w r1,  -248(r30)
00304c  e3401ffe  loadli.w r1,  -244(r30)
003050  e3002ffe  loadli.w r1,  -240(r30)
003054  e3402ffe  loadli.w r1,  -236(r30)
003058  e3003ffe  loadli.w r1,  -232(r30)
00305c  e3403ffe  loadli.w r1,  -228(r30)
003060  e3004ffe  loadli.w r1,  -224(r30)
003064  e3404ffe  loadli.w r1,  -220(r30)
003068  e3005ffe  loadli.w r1,  -216(r30)
00306c  e3405ffe  loadli.w r1,  -212(r30)
003070  e3006ffe  loadli.w r1,  -208(r30)
003074  e3406ffe  loadli.w r1,  -204(r30)
003078  e3007ffe  loadli.w r1,  -200(r30)
00307c  e3407ffe  loadli.w r1,  -196(r30)
003080  e3008ffe  loadli.w r1,  -192(r30)
003084  e3408ffe  loadli.w r1,  -188(r30)
003088  e3009ffe  loadli.w r1,  -184(r30)
00308c  e3409ffe  loadli.w r1,  -180(r30)
003090  e300affe  loadli.w r1,  -176(r30)
003094  e340affe  loadli.w r1,  -172(r30)
003098  e300bffe  loadli.w r1,  -168(r30)
00309c  e340bffe  loadli.w r1,  -164(r30)
0030a0  e300cffe  loadli.w r1,  -160(r30)
0030a4  e340cffe  loadli.w r1,  -156(r30)
0030a8  e300dffe  loadli.w r1,  -152(r30)
0030ac  e340dffe  loadli.w r1,  -148(r30)
0030b0  e300effe  loadli.w r1,  -144(r30)
0030b4  e340effe  loadli.w r1,  -140(r30)
0030b8  e300fffe  loadli.w r1,  -136(r30)
0030bc  e340fffe  loadli.w r1,  -132(r30)
0030c0  e3000fff  loadli.w r1,  -128(r30)
0030c4  e3400fff  loadli.w r1,  -124(r30)
0030c8  e3001fff  loadli.w r1,  -120(r30)
0030cc  e3401fff  loadli.w r1,  -116(r30)
0030d0  e3002fff  loadli.w r1,  -112(r30)
0030d4  e3402fff  loadli.w r1,  -108(r30)
0030d8  e3003fff  loadli.w r1,  -104(r30)
0030dc  e3403fff  loadli.w r1,  -100(r30)
0030e0  e3004fff  loadli.w r1,  -96(r30)
0030e4  e3404fff  loadli.w r1,  -92(r30)
0030e8  e3005fff  loadli.w r1,  -88(r30)
0030ec  e3405fff  loadli.w r1,  -84(r30)
0030f0  e3006fff  loadli.w r1,  -80(r30)
0030f4  e3406fff  loadli.w r1,  -76(r30)
0030f8  e3007fff  loadli.w r1,  -72(r30)
0030fc  e3407fff  loadli.w r1,  -68(r30)
003100  e3008fff  loadli.w r1,  -64(r30)
003104  e3408fff  loadli.w r1,  -60(r30)
003108  e3009fff  loadli.w r1,  -56(r30)
00310c  e3409fff  loadli.w r1,  -52(r30)
003110  e300afff  loadli.w r1,  -48(r30)
003114  e340afff  loadli.w r1,  -44(r30)
003118  e300bfff  loadli.w r1,  -40(r30)
00311c  e340bfff  loadli.w r1,  -36(r30)
003120  e300cfff  loadli.w r1,  -32(r30)
003124  e340cfff  loadli.w r1,  -28(r30)
003128  6302dfff  loadli.w r4,  -24(r30)
00312c  6342dfff  loadli.w r4,  -20(r30)
003130  6302efff  loadli.w r4,  -16(r30)
003134  6342efff  loadli.w r4,  -12(r30)
003138  6302ffff  loadli.w r4,  -8(r30)
00313c  6342ffff  loadli.w r4,  -4(r30)
003140  630cffdf  loadli.w r24,  -4104(r30)
003144  97803c01  and r1, r25, r19
003148  93001904  setlt.u r1, r18, r1
00314c  3be00000  bneq r1, zero, 24
003150  9bc00c01  srli r1, r25, 16
003154  9b801000  andi r1, r1, 1
003158  8b901c10  add.s r1, r25, r1
00315c  8b9c8011  add.s r25, r1, r24
003160  5b010000  j 8
003164  979c1c01  or r25, r25, r17
003168  97003b01  and r1, r22, r19
00316c  1f028fd0  addli r4, r30, -6080
003170  93001904  setlt.u r1, r18, r1
003174  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
003178  3be00000  bneq r1, zero, 24
00317c  9b400b01  srli r1, r22, 16
003180  9b801000  andi r1, r1, 1
003184  8b101b10  add.s r1, r22, r1
003188  8b908011  add.s r1, r1, r24
00318c  5b010000  j 8
003190  97101b01  or r1, r22, r17
003194  17823a01  and r4, r21, r19
003198  13024904  setlt.u r4, r18, r4
00319c  3b600200  bneq r4, zero, 24
0031a0  1bc20a01  srli r4, r21, 16
0031a4  1b021200  andi r4, r4, 1
0031a8  0b924a10  add.s r4, r21, r4
0031ac  0b148211  add.s r8, r4, r24
0031b0  5b010000  j 8
0031b4  17941a01  or r8, r21, r17
0031b8  17023a01  and r4, r20, r19
0031bc  13024904  setlt.u r4, r18, r4
0031c0  3b600200  bneq r4, zero, 24
0031c4  1b420a01  srli r4, r20, 16
0031c8  1b021200  andi r4, r4, 1
0031cc  0b124a10  add.s r4, r20, r4
0031d0  0b128211  add.s r4, r4, r24
0031d4  5b010000  j 8
0031d8  17121a01  or r4, r20, r17
0031dc  17883701  and r16, r15, r19
0031e0  13080905  setlt.u r16, r18, r16
0031e4  3b600800  bneq r16, zero, 24
0031e8  1bc80701  srli r16, r15, 16
0031ec  1b081800  andi r16, r16, 1
0031f0  8b970711  add.s r15, r15, r16
0031f4  8b978711  add.s r15, r15, r24
0031f8  5b010000  j 8
0031fc  97971701  or r15, r15, r17
003200  17083701  and r16, r14, r19
003204  13080905  setlt.u r16, r18, r16
003208  3b600800  bneq r16, zero, 24
00320c  1b480701  srli r16, r14, 16
003210  1b081800  andi r16, r16, 1
003214  0b170711  add.s r14, r14, r16
003218  0b178711  add.s r14, r14, r24
00321c  5b010000  j 8
003220  17171701  or r14, r14, r17
003224  17883601  and r16, r13, r19
003228  13080905  setlt.u r16, r18, r16
00322c  3b600800  bneq r16, zero, 24
003230  1bc80601  srli r16, r13, 16
003234  1b081800  andi r16, r16, 1
003238  8b960611  add.s r13, r13, r16
00323c  8b968611  add.s r13, r13, r24
003240  5b010000  j 8
003244  97961601  or r13, r13, r17
003248  17083601  and r16, r12, r19
00324c  13080905  setlt.u r16, r18, r16
003250  3b600800  bneq r16, zero, 24
003254  1b480601  srli r16, r12, 16
003258  1b081800  andi r16, r16, 1
00325c  0b160611  add.s r12, r12, r16
003260  0b168611  add.s r12, r12, r24
003264  5b010000  j 8
003268  17161601  or r12, r12, r17
00326c  17883501  and r16, r11, r19
003270  13080905  setlt.u r16, r18, r16
003274  3b600800  bneq r16, zero, 24
003278  1bc80501  srli r16, r11, 16
00327c  1b081800  andi r16, r16, 1
003280  8b950511  add.s r11, r11, r16
003284  8b958511  add.s r11, r11, r24
003288  5b010000  j 8
00328c  97951501  or r11, r11, r17
003290  17083501  and r16, r10, r19
003294  13080905  setlt.u r16, r18, r16
003298  3b600800  bneq r16, zero, 24
00329c  1b480501  srli r16, r10, 16
0032a0  1b081800  andi r16, r16, 1
0032a4  0b150511  add.s r10, r10, r16
0032a8  0b158511  add.s r10, r10, r24
0032ac  5b010000  j 8
0032b0  17151501  or r10, r10, r17
0032b4  17883401  and r16, r9, r19
0032b8  13080905  setlt.u r16, r18, r16
0032bc  3b600800  bneq r16, zero, 24
0032c0  1bc80401  srli r16, r9, 16
0032c4  1b081800  andi r16, r16, 1
0032c8  8b940411  add.s r9, r9, r16
0032cc  8b948411  add.s r9, r9, r24
0032d0  5b010000  j 8
0032d4  97941401  or r9, r9, r17
0032d8  17883301  and r16, r7, r19
0032dc  13080905  setlt.u r16, r18, r16
0032e0  3b600800  bneq r16, zero, 24
0032e4  1bc80301  srli r16, r7, 16
0032e8  1b081800  andi r16, r16, 1
0032ec  8b930311  add.s r7, r7, r16
0032f0  8b938311  add.s r7, r7, r24
0032f4  5b010000  j 8
0032f8  97931301  or r7, r7, r17
0032fc  17083301  and r16, r6, r19
003300  13080905  setlt.u r16, r18, r16
003304  3b600800  bneq r16, zero, 24
003308  1b480301  srli r16, r6, 16
00330c  1b081800  andi r16, r16, 1
003310  0b130311  add.s r6, r6, r16
003314  0b138311  add.s r6, r6, r24
003318  5b010000  j 8
00331c  17131301  or r6, r6, r17
003320  17883201  and r16, r5, r19
003324  13080905  setlt.u r16, r18, r16
003328  3b600800  bneq r16, zero, 24
00332c  1bc80201  srli r16, r5, 16
003330  1b081800  andi r16, r16, 1
003334  8b920211  add.s r5, r5, r16
003338  8b928211  add.s r5, r5, r24
00333c  5b010000  j 8
003340  97921201  or r5, r5, r17
003344  17883101  and r16, r3, r19
003348  13080905  setlt.u r16, r18, r16
00334c  3b600800  bneq r16, zero, 24
003350  1bc80101  srli r16, r3, 16
003354  1b081800  andi r16, r16, 1
003358  8b910111  add.s r3, r3, r16
00335c  8b918111  add.s r3, r3, r24
003360  5b010000  j 8
003364  97911101  or r3, r3, r17
003368  17083101  and r16, r2, r19
00336c  13080905  setlt.u r16, r18, r16
003370  3b600800  bneq r16, zero, 24
003374  1b480101  srli r16, r2, 16
003378  1b081800  andi r16, r16, 1
00337c  0b110111  add.s r2, r2, r16
003380  0b118111  add.s r2, r2, r24
003384  5b010000  j 8
003388  17111101  or r2, r2, r17
00338c  17887c01  and r16, r25, r23
003390  97877701  and r15, r15, r23
003394  17077701  and r14, r14, r23
003398  97807001  and r1, r1, r23
00339c  17047401  and r8, r8, r23
0033a0  97867601  and r13, r13, r23
0033a4  97857501  and r11, r11, r23
0033a8  17057501  and r10, r10, r23
0033ac  97847401  and r9, r9, r23
0033b0  970d7101  and r27, r2, r23
0033b4  6301efdf  loadli.w r2,  -4112(r30)
0033b8  178a7301  and r20, r7, r23
0033bc  178b7201  and r22, r5, r23
0033c0  978c7101  and r25, r3, r23
0033c4  17027201  and r4, r4, r23
0033c8  17067601  and r12, r12, r23
0033cc  970a7301  and r21, r6, r23
0033d0  e7400fdb  storeli.w r16, -4852(r30)
0033d4  1f090800  addli r18, r16, 0
0033d8  e7001fda  storeli.w r1, -4856(r30)
0033dc  9f810000  addli r3, r1, 0
0033e0  1f080400  addli r16, r8, 0
0033e4  e74fffd8  storeli.w r15, -4868(r30)
0033e8  9f890700  addli r19, r15, 0
0033ec  1f0d0700  addli r26, r14, 0
0033f0  9f8b0600  addli r23, r13, 0
0033f4  9f870500  addli r15, r11, 0
0033f8  9f030500  addli r7, r10, 0
0033fc  9f820400  addli r5, r9, 0
003400  9f000004  addli r1, zero, 512
003404  67408fda  storeli.w r8, -4860(r30)
003408  67004fda  storeli.w r4, -4864(r30)
00340c  e70fefd8  storeli.w r14, -4872(r30)
003410  674fdfd8  storeli.w r13, -4876(r30)
003414  670fcfd8  storeli.w r12, -4880(r30)
003418  e74ebfd8  storeli.w r11, -4884(r30)
00341c  e70eafd8  storeli.w r10, -4888(r30)
003420  674e9fd8  storeli.w r9, -4892(r30)
003424  670e4fd9  storeli.w r20, -4896(r30)
003428  e74d5fd9  storeli.w r21, -4900(r30)
00342c  e70d6fd9  storeli.w r22, -4904(r30)
003430  674d9fd9  storeli.w r25, -4908(r30)
003434  670dbfd9  storeli.w r27, -4912(r30)
003438  3f111100  blt.s r2, r1, 68
00343c  1f090000  addli r18, zero, 0
003440  9f010000  addli r3, zero, 0
003444  1f080000  addli r16, zero, 0
003448  1f020000  addli r4, zero, 0
00344c  9f090000  addli r19, zero, 0
003450  1f0d0000  addli r26, zero, 0
003454  9f0b0000  addli r23, zero, 0
003458  1f060000  addli r12, zero, 0
00345c  9f070000  addli r15, zero, 0
003460  9f030000  addli r7, zero, 0
003464  9f020000  addli r5, zero, 0
003468  1f0a0000  addli r20, zero, 0
00346c  9f0a0000  addli r21, zero, 0
003470  1f0b0000  addli r22, zero, 0
003474  9f0c0000  addli r25, zero, 0
003478  9f0d0000  addli r27, zero, 0
00347c  9f000ff0  addli r1, r30, -2048
003480  9f860100  addli r13, r3, 0
003484  1f818000  addli r2, r1, 64
003488  67042fd6  storeli.w r2, -5312(r30)
00348c  1f810001  addli r2, r1, 128
003490  674d2fd6  storeli.w r2, -5164(r30)
003494  1f818001  addli r2, r1, 192
003498  e7462fd8  storeli.w r2, -5012(r30)
00349c  1f810002  addli r2, r1, 256
0034a0  67012fda  storeli.w r2, -4848(r30)
0034a4  1f818002  addli r2, r1, 320
0034a8  67412fda  storeli.w r2, -4844(r30)
0034ac  1f810003  addli r2, r1, 384
0034b0  9f808003  addli r1, r1, 448
0034b4  e7012fda  storeli.w r2, -4840(r30)
0034b8  e7411fda  storeli.w r1, -4836(r30)
0034bc  1f014000  addli r2, zero, 32
0034c0  00a00000  mfence { lm }
0034c4  5b180000  j 192
0034c8  9f000000  addli r1, zero, 0
0034cc  1f020000  addli r4, zero, 0
0034d0  1f080000  addli r16, zero, 0
0034d4  9f090000  addli r19, zero, 0
0034d8  1f0d0000  addli r26, zero, 0
0034dc  1f0e0000  addli r28, zero, 0
0034e0  9f0b0000  addli r23, zero, 0
0034e4  9f010000  addli r3, zero, 0
0034e8  9f080000  addli r17, zero, 0
0034ec  9f030000  addli r7, zero, 0
0034f0  9f020000  addli r5, zero, 0
0034f4  1f040000  addli r8, zero, 0
0034f8  1f030000  addli r6, zero, 0
0034fc  9f040000  addli r9, zero, 0
003500  1f0c0000  addli r24, zero, 0
003504  1f050000  addli r10, zero, 0
003508  0b691910  add.f.rn r18, r18, r1
00350c  e3000fdf  loadli.w r1,  -4224(r30)
003510  8be64610  add.f.rn r13, r13, r4
003514  63028fde  loadli.w r4,  -4288(r30)
003518  1f060700  addli r12, r14, 0
00351c  8be71711  add.f.rn r15, r15, r17
003520  0b6a8a10  add.f.rn r20, r20, r8
003524  8bea6a10  add.f.rn r21, r21, r6
003528  0b6b9b10  add.f.rn r22, r22, r9
00352c  8bec8c11  add.f.rn r25, r25, r24
003530  8bedad10  add.f.rn r27, r27, r10
003534  1f014100  addli r2, r2, 32
003538  9f050004  addli r11, zero, 512
00353c  0b663610  add.f.rn r12, r12, r3
003540  8be00011  add.f.rn r1, r1, r16
003544  0b623211  add.f.rn r4, r4, r19
003548  e3090fde  loadli.w r19,  -4352(r30)
00354c  8be9a911  add.f.rn r19, r19, r26
003550  630d8fdd  loadli.w r26,  -4416(r30)
003554  1f880000  addli r16, r1, 0
003558  e3000fdd  loadli.w r1,  -4480(r30)
00355c  0b6dcd11  add.f.rn r26, r26, r28
003560  8be07011  add.f.rn r1, r1, r23
003564  9f8b0000  addli r23, r1, 0
003568  e3008fdc  loadli.w r1,  -4544(r30)
00356c  8be07010  add.f.rn r1, r1, r7
003570  9f830000  addli r7, r1, 0
003574  e3000fdc  loadli.w r1,  -4608(r30)
003578  8be05010  add.f.rn r1, r1, r5
00357c  9f820000  addli r5, r1, 0
003580  3769b102  beq r2, r11, 1624
003584  9f000ff0  addli r1, r30, -2048
003588  67044fde  storeli.w r4, -4288(r30)
00358c  67005fdc  storeli.w r5, -4608(r30)
003590  92309002  vadd.s.mz vr1{mr1}, zero, vr9
003594  1f170000  addli r14, zero, 1
003598  67047fdc  storeli.w r7, -4544(r30)
00359c  67087fdd  storeli.w r23, -4480(r30)
0035a0  670cafdd  storeli.w r26, -4416(r30)
0035a4  67003fdf  storeli.w r19, -4352(r30)
0035a8  67080fdf  storeli.w r16, -4224(r30)
0035ac  12319002  vadd.s.mz vr2{mr1}, zero, vr9
0035b0  0b922010  add.s r4, r1, r2
0035b4  7e0107e0  vmmov mr2, r14
0035b8  eb320200  load.hu r5, 0(r4)
0035bc  6b332200  load.hu r6, 2(r4)
0035c0  eb31a201  load.hu r3, 26(r4)
0035c4  eb30c201  load.hu r1, 28(r4)
0035c8  eb334200  load.hu r7, 4(r4)
0035cc  6b346200  load.hu r8, 6(r4)
0035d0  eb348200  load.hu r9, 8(r4)
0035d4  6b35a200  load.hu r10, 10(r4)
0035d8  eb35c200  load.hu r11, 12(r4)
0035dc  6b38e200  load.hu r16, 14(r4)
0035e0  eb380201  load.hu r17, 16(r4)
0035e4  eb392201  load.hu r19, 18(r4)
0035e8  eb3b4201  load.hu r23, 20(r4)
0035ec  6b3c6201  load.hu r24, 22(r4)
0035f0  6b3d8201  load.hu r26, 24(r4)
0035f4  6b32e201  load.hu r4, 30(r4)
0035f8  b3920218  bfloat2float.rn r5, r5
0035fc  b3910118  bfloat2float.rn r3, r3
003600  b3900018  bfloat2float.rn r1, r1
003604  eaa01234  vor.u.mh vr1{mr2}, r5, vr1
003608  b3120318  bfloat2float.rn r5, r6
00360c  1f230000  addli r6, zero, 2
003610  fe0103e0  vmmov mr3, r6
003614  1f430000  addli r6, zero, 4
003618  eaa01236  vor.u.mh vr1{mr3}, r5, vr1
00361c  b3920318  bfloat2float.rn r5, r7
003620  7e0003e0  vmmov mr0, r6
003624  1f031000  addli r6, zero, 8
003628  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
00362c  b3120418  bfloat2float.rn r5, r8
003630  7e0003e0  vmmov mr0, r6
003634  1f032000  addli r6, zero, 16
003638  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
00363c  b3920418  bfloat2float.rn r5, r9
003640  7e0003e0  vmmov mr0, r6
003644  1f034000  addli r6, zero, 32
003648  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
00364c  b3120518  bfloat2float.rn r5, r10
003650  7e0003e0  vmmov mr0, r6
003654  1f038000  addli r6, zero, 64
003658  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
00365c  b3920518  bfloat2float.rn r5, r11
003660  7e0003e0  vmmov mr0, r6
003664  1f030001  addli r6, zero, 128
003668  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
00366c  b3120818  bfloat2float.rn r5, r16
003670  7e0003e0  vmmov mr0, r6
003674  1f030002  addli r6, zero, 256
003678  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
00367c  b3920818  bfloat2float.rn r5, r17
003680  7e0003e0  vmmov mr0, r6
003684  1f030004  addli r6, zero, 512
003688  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
00368c  b3920918  bfloat2float.rn r5, r19
003690  7e0003e0  vmmov mr0, r6
003694  1f030008  addli r6, zero, 1024
003698  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
00369c  b3920b18  bfloat2float.rn r5, r23
0036a0  7e0003e0  vmmov mr0, r6
0036a4  1f030010  addli r6, zero, 2048
0036a8  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
0036ac  b3120c18  bfloat2float.rn r5, r24
0036b0  7e0003e0  vmmov mr0, r6
0036b4  1f030020  addli r6, zero, 4096
0036b8  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
0036bc  b3120d18  bfloat2float.rn r5, r26
0036c0  7e0003e0  vmmov mr0, r6
0036c4  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
0036c8  9f020040  addli r5, zero, 8192
0036cc  7e8002e0  vmmov mr0, r5
0036d0  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0036d4  ab410000  lui r3, 4
0036d8  7e8001e0  vmmov mr0, r3
0036dc  9f010ff4  addli r3, r30, -1536
0036e0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0036e4  b3100218  bfloat2float.rn r1, r4
0036e8  2b820000  lui r4, 8
0036ec  8b912110  add.s r3, r3, r2
0036f0  7e0002e0  vmmov mr0, r4
0036f4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0036f8  ebb00100  load.hu r1, 0(r3)
0036fc  6bb22100  load.hu r4, 2(r3)
003700  ebb24100  load.hu r5, 4(r3)
003704  6bb36100  load.hu r6, 6(r3)
003708  ebb38100  load.hu r7, 8(r3)
00370c  6bb4a100  load.hu r8, 10(r3)
003710  ebb4c100  load.hu r9, 12(r3)
003714  6bb5e100  load.hu r10, 14(r3)
003718  ebb50101  load.hu r11, 16(r3)
00371c  6bb82101  load.hu r16, 18(r3)
003720  ebb84101  load.hu r17, 20(r3)
003724  ebb96101  load.hu r19, 22(r3)
003728  ebbb8101  load.hu r23, 24(r3)
00372c  6bbca101  load.hu r24, 26(r3)
003730  6bbdc101  load.hu r26, 28(r3)
003734  ebb1e101  load.hu r3, 30(r3)
003738  b3900018  bfloat2float.rn r1, r1
00373c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003740  b3100218  bfloat2float.rn r1, r4
003744  1f420000  addli r4, zero, 4
003748  7e0102e0  vmmov mr2, r4
00374c  1f021000  addli r4, zero, 8
003750  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
003754  b3900218  bfloat2float.rn r1, r5
003758  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00375c  b3100318  bfloat2float.rn r1, r6
003760  7e0102e0  vmmov mr2, r4
003764  1f022000  addli r4, zero, 16
003768  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00376c  b3900318  bfloat2float.rn r1, r7
003770  7e0102e0  vmmov mr2, r4
003774  1f024000  addli r4, zero, 32
003778  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00377c  b3100418  bfloat2float.rn r1, r8
003780  7e0102e0  vmmov mr2, r4
003784  1f028000  addli r4, zero, 64
003788  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00378c  b3900418  bfloat2float.rn r1, r9
003790  7e0102e0  vmmov mr2, r4
003794  1f020001  addli r4, zero, 128
003798  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00379c  b3100518  bfloat2float.rn r1, r10
0037a0  7e0102e0  vmmov mr2, r4
0037a4  1f020002  addli r4, zero, 256
0037a8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0037ac  b3900518  bfloat2float.rn r1, r11
0037b0  7e0102e0  vmmov mr2, r4
0037b4  1f020004  addli r4, zero, 512
0037b8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0037bc  b3100818  bfloat2float.rn r1, r16
0037c0  7e0102e0  vmmov mr2, r4
0037c4  1f020008  addli r4, zero, 1024
0037c8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0037cc  b3900818  bfloat2float.rn r1, r17
0037d0  7e0102e0  vmmov mr2, r4
0037d4  1f020010  addli r4, zero, 2048
0037d8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0037dc  b3900918  bfloat2float.rn r1, r19
0037e0  7e0102e0  vmmov mr2, r4
0037e4  1f020020  addli r4, zero, 4096
0037e8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0037ec  b3900b18  bfloat2float.rn r1, r23
0037f0  7e0102e0  vmmov mr2, r4
0037f4  1f020040  addli r4, zero, 8192
0037f8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0037fc  b3100c18  bfloat2float.rn r1, r24
003800  7e0102e0  vmmov mr2, r4
003804  2b420000  lui r4, 4
003808  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00380c  b3100d18  bfloat2float.rn r1, r26
003810  7e0102e0  vmmov mr2, r4
003814  2b02807f  lui r4, 522240
003818  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00381c  b3900118  bfloat2float.rn r1, r3
003820  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
003824  9f000fe8  addli r1, r30, -3072
003828  16902002  vadd.f.mz.rn vr0{mr1}, vr1, vr2
00382c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
003830  00a00000  mfence { lm }
003834  63050fe8  loadli.w r10,  -3072(r30)
003838  e3440fe8  loadli.w r9,  -3068(r30)
00383c  e3031fe8  loadli.w r7,  -3064(r30)
003840  63431fe8  loadli.w r6,  -3060(r30)
003844  630e2fe8  loadli.w r28,  -3056(r30)
003848  e3422fe8  loadli.w r5,  -3052(r30)
00384c  e30b3fe8  loadli.w r23,  -3048(r30)
003850  e3413fe8  loadli.w r3,  -3044(r30)
003854  e3084fe8  loadli.w r17,  -3040(r30)
003858  63444fe8  loadli.w r8,  -3036(r30)
00385c  e340ffdf  loadli.w r1,  -4100(r30)
003860  630d5fe8  loadli.w r26,  -3032(r30)
003864  634c5fe8  loadli.w r24,  -3028(r30)
003868  e3096fe8  loadli.w r19,  -3024(r30)
00386c  97001500  and r1, r10, r1
003870  93051204  setlt.u r11, r4, r1
003874  63426fe8  loadli.w r4,  -3020(r30)
003878  63087fe8  loadli.w r16,  -3016(r30)
00387c  e3407fe8  loadli.w r1,  -3012(r30)
003880  3bf00500  bneq r11, zero, 28
003884  9b450501  srli r11, r10, 16
003888  9b851500  andi r11, r11, 1
00388c  0b15b510  add.s r10, r10, r11
003890  e305ffdf  loadli.w r11,  -4104(r30)
003894  0b15b510  add.s r10, r10, r11
003898  db010000  j 12
00389c  ab054000  lui r11, 1024
0038a0  1715b500  or r10, r10, r11
0038a4  670cafda  storeli.w r10, -4672(r30)
0038a8  6345ffdf  loadli.w r10,  -4100(r30)
0038ac  ab05807f  lui r11, 522240
0038b0  1785a400  and r10, r9, r10
0038b4  1385a504  setlt.u r10, r11, r10
0038b8  3b700500  bneq r10, zero, 28
0038bc  1bc50401  srli r10, r9, 16
0038c0  1b051500  andi r10, r10, 1
0038c4  8b94a410  add.s r9, r9, r10
0038c8  6305ffdf  loadli.w r10,  -4104(r30)
0038cc  8b94a410  add.s r9, r9, r10
0038d0  db010000  j 12
0038d4  2b054000  lui r10, 1024
0038d8  9794a400  or r9, r9, r10
0038dc  67089fda  storeli.w r9, -4736(r30)
0038e0  e344ffdf  loadli.w r9,  -4100(r30)
0038e4  2b05807f  lui r10, 522240
0038e8  97849300  and r9, r7, r9
0038ec  93049504  setlt.u r9, r10, r9
0038f0  3bf00400  bneq r9, zero, 28
0038f4  9bc40301  srli r9, r7, 16
0038f8  9b841400  andi r9, r9, 1
0038fc  8b939310  add.s r7, r7, r9
003900  e304ffdf  loadli.w r9,  -4104(r30)
003904  8b939310  add.s r7, r7, r9
003908  db010000  j 12
00390c  ab044000  lui r9, 1024
003910  97939300  or r7, r7, r9
003914  67047fda  storeli.w r7, -4800(r30)
003918  e343ffdf  loadli.w r7,  -4100(r30)
00391c  ab04807f  lui r9, 522240
003920  97037300  and r7, r6, r7
003924  93837404  setlt.u r7, r9, r7
003928  3bf00300  bneq r7, zero, 28
00392c  9b430301  srli r7, r6, 16
003930  9b831300  andi r7, r7, 1
003934  0b137310  add.s r6, r6, r7
003938  e303ffdf  loadli.w r7,  -4104(r30)
00393c  0b137310  add.s r6, r6, r7
003940  db010000  j 12
003944  ab034000  lui r7, 1024
003948  17137300  or r6, r6, r7
00394c  e7436fda  storeli.w r6, -4804(r30)
003950  6343ffdf  loadli.w r6,  -4100(r30)
003954  ab03807f  lui r7, 522240
003958  17036e00  and r6, r28, r6
00395c  13836304  setlt.u r6, r7, r6
003960  3b700300  bneq r6, zero, 28
003964  1b430e01  srli r6, r28, 16
003968  e305ffdf  loadli.w r11,  -4104(r30)
00396c  1b031300  andi r6, r6, 1
003970  0b136e10  add.s r6, r28, r6
003974  0b13b310  add.s r6, r6, r11
003978  5b020000  j 16
00397c  2b034000  lui r6, 1024
003980  e305ffdf  loadli.w r11,  -4104(r30)
003984  17136e00  or r6, r28, r6
003988  e7036fda  storeli.w r6, -4808(r30)
00398c  6343ffdf  loadli.w r6,  -4100(r30)
003990  17836200  and r6, r5, r6
003994  13836304  setlt.u r6, r7, r6
003998  3b600300  bneq r6, zero, 24
00399c  1bc30201  srli r6, r5, 16
0039a0  1b031300  andi r6, r6, 1
0039a4  8b926210  add.s r5, r5, r6
0039a8  8b92b210  add.s r5, r5, r11
0039ac  db010000  j 12
0039b0  2b034000  lui r6, 1024
0039b4  97926200  or r5, r5, r6
0039b8  67435fda  storeli.w r5, -4812(r30)
0039bc  e342ffdf  loadli.w r5,  -4100(r30)
0039c0  2b03807f  lui r6, 522240
0039c4  97825b00  and r5, r23, r5
0039c8  93025304  setlt.u r5, r6, r5
0039cc  3be00200  bneq r5, zero, 24
0039d0  9bc20b01  srli r5, r23, 16
0039d4  9b821200  andi r5, r5, 1
0039d8  8b925b10  add.s r5, r23, r5
0039dc  8b9bb210  add.s r23, r5, r11
0039e0  db010000  j 12
0039e4  ab024000  lui r5, 1024
0039e8  979b5b00  or r23, r23, r5
0039ec  e342ffdf  loadli.w r5,  -4100(r30)
0039f0  97825100  and r5, r3, r5
0039f4  93025304  setlt.u r5, r6, r5
0039f8  3be00200  bneq r5, zero, 24
0039fc  9bc20101  srli r5, r3, 16
003a00  9b821200  andi r5, r5, 1
003a04  8b915110  add.s r3, r3, r5
003a08  8b91b110  add.s r3, r3, r11
003a0c  db010000  j 12
003a10  ab024000  lui r5, 1024
003a14  97915100  or r3, r3, r5
003a18  e342ffdf  loadli.w r5,  -4100(r30)
003a1c  97825800  and r5, r17, r5
003a20  93025304  setlt.u r5, r6, r5
003a24  3be00200  bneq r5, zero, 24
003a28  9bc20801  srli r5, r17, 16
003a2c  9b821200  andi r5, r5, 1
003a30  8b925810  add.s r5, r17, r5
003a34  8b98b210  add.s r17, r5, r11
003a38  db010000  j 12
003a3c  ab024000  lui r5, 1024
003a40  97985800  or r17, r17, r5
003a44  e342ffdf  loadli.w r5,  -4100(r30)
003a48  97025400  and r5, r8, r5
003a4c  93025304  setlt.u r5, r6, r5
003a50  3be00200  bneq r5, zero, 24
003a54  9b420401  srli r5, r8, 16
003a58  9b821200  andi r5, r5, 1
003a5c  8b125410  add.s r5, r8, r5
003a60  0b94b210  add.s r8, r5, r11
003a64  db010000  j 12
003a68  ab024000  lui r5, 1024
003a6c  17145400  or r8, r8, r5
003a70  e342ffdf  loadli.w r5,  -4100(r30)
003a74  1f070600  addli r14, r12, 0
003a78  1f0e0900  addli r28, r18, 0
003a7c  97025d00  and r5, r26, r5
003a80  93025304  setlt.u r5, r6, r5
003a84  3be00200  bneq r5, zero, 24
003a88  9b420d01  srli r5, r26, 16
003a8c  9b821200  andi r5, r5, 1
003a90  8b125d10  add.s r5, r26, r5
003a94  8b92b210  add.s r5, r5, r11
003a98  db010000  j 12
003a9c  ab024000  lui r5, 1024
003aa0  97125d00  or r5, r26, r5
003aa4  634dffdf  loadli.w r26,  -4100(r30)
003aa8  2b09807f  lui r18, 522240
003aac  2b064000  lui r12, 1024
003ab0  1703ac01  and r6, r24, r26
003ab4  13036904  setlt.u r6, r18, r6
003ab8  3b600300  bneq r6, zero, 24
003abc  1b430c01  srli r6, r24, 16
003ac0  1b031300  andi r6, r6, 1
003ac4  0b136c10  add.s r6, r24, r6
003ac8  0b1cb310  add.s r24, r6, r11
003acc  5b010000  j 8
003ad0  171ccc00  or r24, r24, r12
003ad4  1783a901  and r6, r19, r26
003ad8  13036904  setlt.u r6, r18, r6
003adc  3b600300  bneq r6, zero, 24
003ae0  1bc30901  srli r6, r19, 16
003ae4  1b031300  andi r6, r6, 1
003ae8  0b936910  add.s r6, r19, r6
003aec  0b13b310  add.s r6, r6, r11
003af0  5b010000  j 8
003af4  1793c900  or r6, r19, r12
003af8  9703a201  and r7, r4, r26
003afc  93037904  setlt.u r7, r18, r7
003b00  3be00300  bneq r7, zero, 24
003b04  9b430201  srli r7, r4, 16
003b08  9b831300  andi r7, r7, 1
003b0c  0b127210  add.s r4, r4, r7
003b10  8b14b210  add.s r9, r4, r11
003b14  5b010000  j 8
003b18  9714c200  or r9, r4, r12
003b1c  1702a801  and r4, r16, r26
003b20  13024904  setlt.u r4, r18, r4
003b24  3b600200  bneq r4, zero, 24
003b28  1b420801  srli r4, r16, 16
003b2c  1b021200  andi r4, r4, 1
003b30  0b124810  add.s r4, r16, r4
003b34  0b15b210  add.s r10, r4, r11
003b38  5b010000  j 8
003b3c  1715c800  or r10, r16, r12
003b40  1782a001  and r4, r1, r26
003b44  13024904  setlt.u r4, r18, r4
003b48  3b600200  bneq r4, zero, 24
003b4c  1bc20001  srli r4, r1, 16
003b50  1b021200  andi r4, r4, 1
003b54  8b904010  add.s r1, r1, r4
003b58  8b95b010  add.s r11, r1, r11
003b5c  5b010000  j 8
003b60  9795c000  or r11, r1, r12
003b64  6302efdf  loadli.w r4,  -4112(r30)
003b68  1f090e00  addli r18, r28, 0
003b6c  9f000004  addli r1, zero, 512
003b70  3f201200  blt.s r4, r1, 8
003b74  db2affff  j -1708
003b78  e3038fda  loadli.w r7,  -4800(r30)
003b7c  2b06ffff  lui r12, 1048560
003b80  e3008fdb  loadli.w r1,  -4672(r30)
003b84  63020fdb  loadli.w r4,  -4736(r30)
003b88  978bcb00  and r23, r23, r12
003b8c  9781c100  and r3, r3, r12
003b90  9788c800  and r17, r17, r12
003b94  9782c200  and r5, r5, r12
003b98  1703c300  and r6, r6, r12
003b9c  9784c400  and r9, r9, r12
003ba0  1788c300  and r16, r7, r12
003ba4  e3437fda  loadli.w r7,  -4804(r30)
003ba8  9780c000  and r1, r1, r12
003bac  1702c200  and r4, r4, r12
003bb0  9789c300  and r19, r7, r12
003bb4  e3037fda  loadli.w r7,  -4808(r30)
003bb8  178dc300  and r26, r7, r12
003bbc  e3436fda  loadli.w r7,  -4812(r30)
003bc0  178ec300  and r28, r7, r12
003bc4  9703c400  and r7, r8, r12
003bc8  1704cc00  and r8, r24, r12
003bcc  170cc500  and r24, r10, r12
003bd0  1785c500  and r10, r11, r12
003bd4  db26ffff  j -1740
003bd8  8b60d910  add.f.rn r1, r18, r13
003bdc  6341ffd1  loadli.w r2,  -5892(r30)
003be0  8be00011  add.f.rn r1, r1, r16
003be4  8be04010  add.f.rn r1, r1, r4
003be8  8be03011  add.f.rn r1, r1, r19
003bec  8be0a011  add.f.rn r1, r1, r26
003bf0  8be07011  add.f.rn r1, r1, r23
003bf4  8be0c010  add.f.rn r1, r1, r12
003bf8  8be0f010  add.f.rn r1, r1, r15
003bfc  8be07010  add.f.rn r1, r1, r7
003c00  8be05010  add.f.rn r1, r1, r5
003c04  8be04011  add.f.rn r1, r1, r20
003c08  8be05011  add.f.rn r1, r1, r21
003c0c  8be06011  add.f.rn r1, r1, r22
003c10  8be09011  add.f.rn r1, r1, r25
003c14  8be0b011  add.f.rn r1, r1, r27
003c18  73601100  stores.w r1, 0(r2)
003c1c  00a00300  mfence { lm, sm, gm }
003c20  63026fda  loadli.w r4,  -4816(r30)
003c24  80210204  csr_set csr3, r4
003c28  00d00100  sync_group
003c2c  e3405fda  loadli.w r1,  -4820(r30)
003c30  bba00000  bneq r1, zero, 40
003c34  e3420fd2  loadli.w r5,  -5884(r30)
003c38  efc00200  loads.w r1, 0(r5)
003c3c  6fc14200  loads.w r2, 4(r5)
003c40  efc18200  loads.w r3, 8(r5)
003c44  8be02010  add.f.rn r1, r1, r2
003c48  6fc1c200  loads.w r2, 12(r5)
003c4c  8be03010  add.f.rn r1, r1, r3
003c50  8be02010  add.f.rn r1, r1, r2
003c54  73e01200  stores.w r1, 0(r5)
003c58  00a00300  mfence { lm, sm, gm }
003c5c  80210204  csr_set csr3, r4
003c60  00d00100  sync_group
003c64  e3400fd2  loadli.w r1,  -5884(r30)
003c68  2b01803a  lui r2, 239616
003c6c  9f0a0ff0  addli r21, r30, -2048
003c70  efc00000  loads.w r1, 0(r1)
003c74  8be22020  mul.f.rn r5, r1, r2
003c78  e300efdf  loadli.w r1,  -4112(r30)
003c7c  3fa1b000  blt.s r1, r11, 72
003c80  1f0b0000  addli r22, zero, 0
003c84  9f0c0000  addli r25, zero, 0
003c88  9f0d0000  addli r27, zero, 0
003c8c  1f090000  addli r18, zero, 0
003c90  9f040000  addli r9, zero, 0
003c94  1f050000  addli r10, zero, 0
003c98  9f010000  addli r3, zero, 0
003c9c  1f020000  addli r4, zero, 0
003ca0  1f030000  addli r6, zero, 0
003ca4  9f030000  addli r7, zero, 0
003ca8  1f040000  addli r8, zero, 0
003cac  1f060000  addli r12, zero, 0
003cb0  9f060000  addli r13, zero, 0
003cb4  9f090000  addli r19, zero, 0
003cb8  1f070000  addli r14, zero, 0
003cbc  9f070000  addli r15, zero, 0
003cc0  5b1a0000  j 208
003cc4  e3401fda  loadli.w r1,  -4852(r30)
003cc8  63011fda  loadli.w r2,  -4856(r30)
003ccc  6343ffd9  loadli.w r6,  -4868(r30)
003cd0  e303ffd9  loadli.w r7,  -4872(r30)
003cd4  e3410fda  loadli.w r3,  -4860(r30)
003cd8  63020fda  loadli.w r4,  -4864(r30)
003cdc  6344efd9  loadli.w r8,  -4876(r30)
003ce0  e304efd9  loadli.w r9,  -4880(r30)
003ce4  6345dfd9  loadli.w r10,  -4884(r30)
003ce8  e305dfd9  loadli.w r11,  -4888(r30)
003cec  6346cfd9  loadli.w r12,  -4892(r30)
003cf0  e306cfd9  loadli.w r13,  -4896(r30)
003cf4  6347bfd9  loadli.w r14,  -4900(r30)
003cf8  e307bfd9  loadli.w r15,  -4904(r30)
003cfc  6348afd9  loadli.w r16,  -4908(r30)
003d00  e308afd9  loadli.w r17,  -4912(r30)
003d04  8be05018  sub.f.rn r1, r1, r5
003d08  0b615118  sub.f.rn r2, r2, r5
003d0c  0b635318  sub.f.rn r6, r6, r5
003d10  8be35318  sub.f.rn r7, r7, r5
003d14  8be15118  sub.f.rn r3, r3, r5
003d18  0b625218  sub.f.rn r4, r4, r5
003d1c  8be75718  sub.f.rn r15, r15, r5
003d20  0b645418  sub.f.rn r8, r8, r5
003d24  8be45418  sub.f.rn r9, r9, r5
003d28  0b655518  sub.f.rn r10, r10, r5
003d2c  8be55518  sub.f.rn r11, r11, r5
003d30  0b665618  sub.f.rn r12, r12, r5
003d34  8be65618  sub.f.rn r13, r13, r5
003d38  0b675718  sub.f.rn r14, r14, r5
003d3c  0b685818  sub.f.rn r16, r16, r5
003d40  8be85818  sub.f.rn r17, r17, r5
003d44  0beb1020  mul.f.rn r22, r1, r1
003d48  8b6c2120  mul.f.rn r25, r2, r2
003d4c  8b606320  mul.f.rn r1, r6, r6
003d50  0be17320  mul.f.rn r2, r7, r7
003d54  8bed3120  mul.f.rn r27, r3, r3
003d58  0b694220  mul.f.rn r18, r4, r4
003d5c  8b618420  mul.f.rn r3, r8, r8
003d60  0be29420  mul.f.rn r4, r9, r9
003d64  0b63a520  mul.f.rn r6, r10, r10
003d68  8be3b520  mul.f.rn r7, r11, r11
003d6c  0b64c620  mul.f.rn r8, r12, r12
003d70  0be6d620  mul.f.rn r12, r13, r13
003d74  8b66e720  mul.f.rn r13, r14, r14
003d78  8be9f720  mul.f.rn r19, r15, r15
003d7c  9f050004  addli r11, zero, 512
003d80  0b670821  mul.f.rn r14, r16, r16
003d84  8be71821  mul.f.rn r15, r17, r17
003d88  9f840000  addli r9, r1, 0
003d8c  1f050100  addli r10, r2, 0
003d90  e340cfd1  loadli.w r1,  -5916(r30)
003d94  63011fd2  loadli.w r2,  -5880(r30)
003d98  630effdf  loadli.w r28,  -4104(r30)
003d9c  1f0a4000  addli r20, zero, 32
003da0  8b902010  add.s r1, r1, r2
003da4  67431fd2  storeli.w r1, -5836(r30)
003da8  e300cfd1  loadli.w r1,  -5920(r30)
003dac  8b902010  add.s r1, r1, r2
003db0  67031fd2  storeli.w r1, -5840(r30)
003db4  e340bfd1  loadli.w r1,  -5924(r30)
003db8  8b902010  add.s r1, r1, r2
003dbc  e7421fd2  storeli.w r1, -5844(r30)
003dc0  e300bfd1  loadli.w r1,  -5928(r30)
003dc4  8b902010  add.s r1, r1, r2
003dc8  e7021fd2  storeli.w r1, -5848(r30)
003dcc  e340afd1  loadli.w r1,  -5932(r30)
003dd0  8b902010  add.s r1, r1, r2
003dd4  67421fd2  storeli.w r1, -5852(r30)
003dd8  e300afd1  loadli.w r1,  -5936(r30)
003ddc  8b902010  add.s r1, r1, r2
003de0  67021fd2  storeli.w r1, -5856(r30)
003de4  e3409fd1  loadli.w r1,  -5940(r30)
003de8  8b902010  add.s r1, r1, r2
003dec  e7411fd2  storeli.w r1, -5860(r30)
003df0  e3009fd1  loadli.w r1,  -5944(r30)
003df4  8b902010  add.s r1, r1, r2
003df8  e7011fd2  storeli.w r1, -5864(r30)
003dfc  e3408fd1  loadli.w r1,  -5948(r30)
003e00  8b902010  add.s r1, r1, r2
003e04  67411fd2  storeli.w r1, -5868(r30)
003e08  e3008fd1  loadli.w r1,  -5952(r30)
003e0c  8b902010  add.s r1, r1, r2
003e10  67011fd2  storeli.w r1, -5872(r30)
003e14  e3407fd1  loadli.w r1,  -5956(r30)
003e18  8b902010  add.s r1, r1, r2
003e1c  e7401fd2  storeli.w r1, -5876(r30)
003e20  e3007fd1  loadli.w r1,  -5960(r30)
003e24  8b902010  add.s r1, r1, r2
003e28  e7031fd2  storeli.w r1, -5832(r30)
003e2c  e3406fd1  loadli.w r1,  -5964(r30)
003e30  8b902010  add.s r1, r1, r2
003e34  e7431fd2  storeli.w r1, -5828(r30)
003e38  e3006fd1  loadli.w r1,  -5968(r30)
003e3c  8b902010  add.s r1, r1, r2
003e40  67041fd2  storeli.w r1, -5824(r30)
003e44  e3405fd1  loadli.w r1,  -5972(r30)
003e48  8b902010  add.s r1, r1, r2
003e4c  67441fd2  storeli.w r1, -5820(r30)
003e50  e3005fd1  loadli.w r1,  -5976(r30)
003e54  8b902010  add.s r1, r1, r2
003e58  e7041fd2  storeli.w r1, -5816(r30)
003e5c  e3404fd1  loadli.w r1,  -5980(r30)
003e60  8b902010  add.s r1, r1, r2
003e64  e7441fd2  storeli.w r1, -5812(r30)
003e68  e3007fd0  loadli.w r1,  -6088(r30)
003e6c  8b902010  add.s r1, r1, r2
003e70  67051fd2  storeli.w r1, -5808(r30)
003e74  e3406fd0  loadli.w r1,  -6092(r30)
003e78  8b902010  add.s r1, r1, r2
003e7c  67451fd2  storeli.w r1, -5804(r30)
003e80  e3006fd0  loadli.w r1,  -6096(r30)
003e84  8b902010  add.s r1, r1, r2
003e88  e7051fd2  storeli.w r1, -5800(r30)
003e8c  e3405fd0  loadli.w r1,  -6100(r30)
003e90  8b902010  add.s r1, r1, r2
003e94  e7451fd2  storeli.w r1, -5796(r30)
003e98  e3005fd0  loadli.w r1,  -6104(r30)
003e9c  8b902010  add.s r1, r1, r2
003ea0  67061fd2  storeli.w r1, -5792(r30)
003ea4  e3404fd0  loadli.w r1,  -6108(r30)
003ea8  8b902010  add.s r1, r1, r2
003eac  67461fd2  storeli.w r1, -5788(r30)
003eb0  e3004fd0  loadli.w r1,  -6112(r30)
003eb4  8b902010  add.s r1, r1, r2
003eb8  e7061fd2  storeli.w r1, -5784(r30)
003ebc  e3403fd0  loadli.w r1,  -6116(r30)
003ec0  8b902010  add.s r1, r1, r2
003ec4  e7461fd2  storeli.w r1, -5780(r30)
003ec8  e3003fd0  loadli.w r1,  -6120(r30)
003ecc  8b902010  add.s r1, r1, r2
003ed0  67071fd2  storeli.w r1, -5776(r30)
003ed4  e3402fd0  loadli.w r1,  -6124(r30)
003ed8  8b902010  add.s r1, r1, r2
003edc  67471fd2  storeli.w r1, -5772(r30)
003ee0  e3002fd0  loadli.w r1,  -6128(r30)
003ee4  8b902010  add.s r1, r1, r2
003ee8  e7071fd2  storeli.w r1, -5768(r30)
003eec  e3401fd0  loadli.w r1,  -6132(r30)
003ef0  8b902010  add.s r1, r1, r2
003ef4  e7471fd2  storeli.w r1, -5764(r30)
003ef8  e3001fd0  loadli.w r1,  -6136(r30)
003efc  8b902010  add.s r1, r1, r2
003f00  67081fd2  storeli.w r1, -5760(r30)
003f04  e3400fd0  loadli.w r1,  -6140(r30)
003f08  8b902010  add.s r1, r1, r2
003f0c  67481fd2  storeli.w r1, -5756(r30)
003f10  e3000fd0  loadli.w r1,  -6144(r30)
003f14  8b902010  add.s r1, r1, r2
003f18  e7081fd2  storeli.w r1, -5752(r30)
003f1c  e340ffcf  loadli.w r1,  -6148(r30)
003f20  8b902010  add.s r1, r1, r2
003f24  e7481fd2  storeli.w r1, -5748(r30)
003f28  e300ffcf  loadli.w r1,  -6152(r30)
003f2c  8b902010  add.s r1, r1, r2
003f30  67091fd2  storeli.w r1, -5744(r30)
003f34  e340efcf  loadli.w r1,  -6156(r30)
003f38  8b902010  add.s r1, r1, r2
003f3c  67491fd2  storeli.w r1, -5740(r30)
003f40  e300efcf  loadli.w r1,  -6160(r30)
003f44  8b902010  add.s r1, r1, r2
003f48  e7091fd2  storeli.w r1, -5736(r30)
003f4c  e340dfcf  loadli.w r1,  -6164(r30)
003f50  8b902010  add.s r1, r1, r2
003f54  e7491fd2  storeli.w r1, -5732(r30)
003f58  e300dfcf  loadli.w r1,  -6168(r30)
003f5c  8b902010  add.s r1, r1, r2
003f60  670a1fd2  storeli.w r1, -5728(r30)
003f64  e340cfcf  loadli.w r1,  -6172(r30)
003f68  8b902010  add.s r1, r1, r2
003f6c  674a1fd2  storeli.w r1, -5724(r30)
003f70  e300cfcf  loadli.w r1,  -6176(r30)
003f74  8b902010  add.s r1, r1, r2
003f78  e70a1fd2  storeli.w r1, -5720(r30)
003f7c  e340bfcf  loadli.w r1,  -6180(r30)
003f80  8b902010  add.s r1, r1, r2
003f84  e74a1fd2  storeli.w r1, -5716(r30)
003f88  e300bfcf  loadli.w r1,  -6184(r30)
003f8c  8b902010  add.s r1, r1, r2
003f90  670b1fd2  storeli.w r1, -5712(r30)
003f94  e340afcf  loadli.w r1,  -6188(r30)
003f98  8b902010  add.s r1, r1, r2
003f9c  674b1fd2  storeli.w r1, -5708(r30)
003fa0  e300afcf  loadli.w r1,  -6192(r30)
003fa4  8b902010  add.s r1, r1, r2
003fa8  e70b1fd2  storeli.w r1, -5704(r30)
003fac  e3409fcf  loadli.w r1,  -6196(r30)
003fb0  8b902010  add.s r1, r1, r2
003fb4  e74b1fd2  storeli.w r1, -5700(r30)
003fb8  e3009fcf  loadli.w r1,  -6200(r30)
003fbc  8b902010  add.s r1, r1, r2
003fc0  670c1fd2  storeli.w r1, -5696(r30)
003fc4  e3408fcf  loadli.w r1,  -6204(r30)
003fc8  8b902010  add.s r1, r1, r2
003fcc  674c1fd2  storeli.w r1, -5692(r30)
003fd0  e3008fcf  loadli.w r1,  -6208(r30)
003fd4  8b902010  add.s r1, r1, r2
003fd8  e70c1fd2  storeli.w r1, -5688(r30)
003fdc  e3407fcf  loadli.w r1,  -6212(r30)
003fe0  8b902010  add.s r1, r1, r2
003fe4  e74c1fd2  storeli.w r1, -5684(r30)
003fe8  e3007fcf  loadli.w r1,  -6216(r30)
003fec  8b902010  add.s r1, r1, r2
003ff0  670d1fd2  storeli.w r1, -5680(r30)
003ff4  e3406fcf  loadli.w r1,  -6220(r30)
003ff8  8b902010  add.s r1, r1, r2
003ffc  674d1fd2  storeli.w r1, -5676(r30)
004000  e3006fcf  loadli.w r1,  -6224(r30)
004004  8b902010  add.s r1, r1, r2
004008  e70d1fd2  storeli.w r1, -5672(r30)
00400c  e3405fcf  loadli.w r1,  -6228(r30)
004010  8b902010  add.s r1, r1, r2
004014  e74d1fd2  storeli.w r1, -5668(r30)
004018  e3005fcf  loadli.w r1,  -6232(r30)
00401c  8b902010  add.s r1, r1, r2
004020  670e1fd2  storeli.w r1, -5664(r30)
004024  e3404fcf  loadli.w r1,  -6236(r30)
004028  8b902010  add.s r1, r1, r2
00402c  674e1fd2  storeli.w r1, -5660(r30)
004030  e3004fcf  loadli.w r1,  -6240(r30)
004034  8b902010  add.s r1, r1, r2
004038  e70e1fd2  storeli.w r1, -5656(r30)
00403c  e3403fcf  loadli.w r1,  -6244(r30)
004040  8b902010  add.s r1, r1, r2
004044  e74e1fd2  storeli.w r1, -5652(r30)
004048  e3003fcf  loadli.w r1,  -6248(r30)
00404c  8b902010  add.s r1, r1, r2
004050  670f1fd2  storeli.w r1, -5648(r30)
004054  e3402fcf  loadli.w r1,  -6252(r30)
004058  8b902010  add.s r1, r1, r2
00405c  674f1fd2  storeli.w r1, -5644(r30)
004060  e3002fcf  loadli.w r1,  -6256(r30)
004064  8b902010  add.s r1, r1, r2
004068  e70f1fd2  storeli.w r1, -5640(r30)
00406c  e3401fcf  loadli.w r1,  -6260(r30)
004070  8b902010  add.s r1, r1, r2
004074  e74f1fd2  storeli.w r1, -5636(r30)
004078  e3001fcf  loadli.w r1,  -6264(r30)
00407c  8b902010  add.s r1, r1, r2
004080  67001fd4  storeli.w r1, -5632(r30)
004084  e3400fcf  loadli.w r1,  -6268(r30)
004088  8b902010  add.s r1, r1, r2
00408c  67401fd4  storeli.w r1, -5628(r30)
004090  e3000fcf  loadli.w r1,  -6272(r30)
004094  8b902010  add.s r1, r1, r2
004098  e7001fd4  storeli.w r1, -5624(r30)
00409c  e340ffce  loadli.w r1,  -6276(r30)
0040a0  8b902010  add.s r1, r1, r2
0040a4  e7401fd4  storeli.w r1, -5620(r30)
0040a8  e300ffce  loadli.w r1,  -6280(r30)
0040ac  8b902010  add.s r1, r1, r2
0040b0  67011fd4  storeli.w r1, -5616(r30)
0040b4  e340efce  loadli.w r1,  -6284(r30)
0040b8  8b902010  add.s r1, r1, r2
0040bc  67411fd4  storeli.w r1, -5612(r30)
0040c0  e300efce  loadli.w r1,  -6288(r30)
0040c4  8b902010  add.s r1, r1, r2
0040c8  e7011fd4  storeli.w r1, -5608(r30)
0040cc  e340dfce  loadli.w r1,  -6292(r30)
0040d0  8b902010  add.s r1, r1, r2
0040d4  e7411fd4  storeli.w r1, -5604(r30)
0040d8  e300dfce  loadli.w r1,  -6296(r30)
0040dc  8b902010  add.s r1, r1, r2
0040e0  67021fd4  storeli.w r1, -5600(r30)
0040e4  e340cfce  loadli.w r1,  -6300(r30)
0040e8  8b902010  add.s r1, r1, r2
0040ec  67421fd4  storeli.w r1, -5596(r30)
0040f0  e300cfce  loadli.w r1,  -6304(r30)
0040f4  8b902010  add.s r1, r1, r2
0040f8  e7021fd4  storeli.w r1, -5592(r30)
0040fc  e340bfce  loadli.w r1,  -6308(r30)
004100  8b902010  add.s r1, r1, r2
004104  e7421fd4  storeli.w r1, -5588(r30)
004108  e300bfce  loadli.w r1,  -6312(r30)
00410c  8b902010  add.s r1, r1, r2
004110  67031fd4  storeli.w r1, -5584(r30)
004114  e340afce  loadli.w r1,  -6316(r30)
004118  8b902010  add.s r1, r1, r2
00411c  67431fd4  storeli.w r1, -5580(r30)
004120  e300afce  loadli.w r1,  -6320(r30)
004124  8b902010  add.s r1, r1, r2
004128  e7031fd4  storeli.w r1, -5576(r30)
00412c  e3409fce  loadli.w r1,  -6324(r30)
004130  8b902010  add.s r1, r1, r2
004134  e7431fd4  storeli.w r1, -5572(r30)
004138  e3009fce  loadli.w r1,  -6328(r30)
00413c  8b902010  add.s r1, r1, r2
004140  67041fd4  storeli.w r1, -5568(r30)
004144  e3408fce  loadli.w r1,  -6332(r30)
004148  8b902010  add.s r1, r1, r2
00414c  67441fd4  storeli.w r1, -5564(r30)
004150  e3008fce  loadli.w r1,  -6336(r30)
004154  8b902010  add.s r1, r1, r2
004158  e7041fd4  storeli.w r1, -5560(r30)
00415c  e3407fce  loadli.w r1,  -6340(r30)
004160  8b902010  add.s r1, r1, r2
004164  e7441fd4  storeli.w r1, -5556(r30)
004168  e3007fce  loadli.w r1,  -6344(r30)
00416c  8b902010  add.s r1, r1, r2
004170  67051fd4  storeli.w r1, -5552(r30)
004174  e3406fce  loadli.w r1,  -6348(r30)
004178  8b902010  add.s r1, r1, r2
00417c  67451fd4  storeli.w r1, -5548(r30)
004180  e3006fce  loadli.w r1,  -6352(r30)
004184  8b902010  add.s r1, r1, r2
004188  e7051fd4  storeli.w r1, -5544(r30)
00418c  e3405fce  loadli.w r1,  -6356(r30)
004190  8b902010  add.s r1, r1, r2
004194  e7451fd4  storeli.w r1, -5540(r30)
004198  e3005fce  loadli.w r1,  -6360(r30)
00419c  8b902010  add.s r1, r1, r2
0041a0  67061fd4  storeli.w r1, -5536(r30)
0041a4  e3404fce  loadli.w r1,  -6364(r30)
0041a8  8b902010  add.s r1, r1, r2
0041ac  67461fd4  storeli.w r1, -5532(r30)
0041b0  e3004fce  loadli.w r1,  -6368(r30)
0041b4  8b902010  add.s r1, r1, r2
0041b8  e7061fd4  storeli.w r1, -5528(r30)
0041bc  e3403fce  loadli.w r1,  -6372(r30)
0041c0  8b902010  add.s r1, r1, r2
0041c4  e7461fd4  storeli.w r1, -5524(r30)
0041c8  e3003fce  loadli.w r1,  -6376(r30)
0041cc  8b902010  add.s r1, r1, r2
0041d0  67071fd4  storeli.w r1, -5520(r30)
0041d4  e3402fce  loadli.w r1,  -6380(r30)
0041d8  8b902010  add.s r1, r1, r2
0041dc  67471fd4  storeli.w r1, -5516(r30)
0041e0  e3002fce  loadli.w r1,  -6384(r30)
0041e4  8b902010  add.s r1, r1, r2
0041e8  e7071fd4  storeli.w r1, -5512(r30)
0041ec  e3401fce  loadli.w r1,  -6388(r30)
0041f0  8b902010  add.s r1, r1, r2
0041f4  e7471fd4  storeli.w r1, -5508(r30)
0041f8  e3001fce  loadli.w r1,  -6392(r30)
0041fc  8b902010  add.s r1, r1, r2
004200  67081fd4  storeli.w r1, -5504(r30)
004204  e3400fce  loadli.w r1,  -6396(r30)
004208  8b902010  add.s r1, r1, r2
00420c  67481fd4  storeli.w r1, -5500(r30)
004210  e3000fce  loadli.w r1,  -6400(r30)
004214  8b902010  add.s r1, r1, r2
004218  e7081fd4  storeli.w r1, -5496(r30)
00421c  e340ffcd  loadli.w r1,  -6404(r30)
004220  8b902010  add.s r1, r1, r2
004224  e7481fd4  storeli.w r1, -5492(r30)
004228  e300ffcd  loadli.w r1,  -6408(r30)
00422c  8b902010  add.s r1, r1, r2
004230  67091fd4  storeli.w r1, -5488(r30)
004234  e340efcd  loadli.w r1,  -6412(r30)
004238  8b902010  add.s r1, r1, r2
00423c  67491fd4  storeli.w r1, -5484(r30)
004240  e300efcd  loadli.w r1,  -6416(r30)
004244  8b902010  add.s r1, r1, r2
004248  e7091fd4  storeli.w r1, -5480(r30)
00424c  e340dfcd  loadli.w r1,  -6420(r30)
004250  8b902010  add.s r1, r1, r2
004254  e7491fd4  storeli.w r1, -5476(r30)
004258  e300dfcd  loadli.w r1,  -6424(r30)
00425c  8b902010  add.s r1, r1, r2
004260  670a1fd4  storeli.w r1, -5472(r30)
004264  e340cfcd  loadli.w r1,  -6428(r30)
004268  8b902010  add.s r1, r1, r2
00426c  674a1fd4  storeli.w r1, -5468(r30)
004270  e300cfcd  loadli.w r1,  -6432(r30)
004274  8b902010  add.s r1, r1, r2
004278  e70a1fd4  storeli.w r1, -5464(r30)
00427c  e340bfcd  loadli.w r1,  -6436(r30)
004280  8b902010  add.s r1, r1, r2
004284  e74a1fd4  storeli.w r1, -5460(r30)
004288  e300bfcd  loadli.w r1,  -6440(r30)
00428c  8b902010  add.s r1, r1, r2
004290  670b1fd4  storeli.w r1, -5456(r30)
004294  e340afcd  loadli.w r1,  -6444(r30)
004298  8b902010  add.s r1, r1, r2
00429c  674b1fd4  storeli.w r1, -5452(r30)
0042a0  e300afcd  loadli.w r1,  -6448(r30)
0042a4  8b902010  add.s r1, r1, r2
0042a8  e70b1fd4  storeli.w r1, -5448(r30)
0042ac  e3409fcd  loadli.w r1,  -6452(r30)
0042b0  8b902010  add.s r1, r1, r2
0042b4  e74b1fd4  storeli.w r1, -5444(r30)
0042b8  e3009fcd  loadli.w r1,  -6456(r30)
0042bc  8b902010  add.s r1, r1, r2
0042c0  670c1fd4  storeli.w r1, -5440(r30)
0042c4  e3408fcd  loadli.w r1,  -6460(r30)
0042c8  8b902010  add.s r1, r1, r2
0042cc  674c1fd4  storeli.w r1, -5436(r30)
0042d0  e3008fcd  loadli.w r1,  -6464(r30)
0042d4  8b902010  add.s r1, r1, r2
0042d8  e70c1fd4  storeli.w r1, -5432(r30)
0042dc  e3407fcd  loadli.w r1,  -6468(r30)
0042e0  8b902010  add.s r1, r1, r2
0042e4  e74c1fd4  storeli.w r1, -5428(r30)
0042e8  e3007fcd  loadli.w r1,  -6472(r30)
0042ec  8b902010  add.s r1, r1, r2
0042f0  670d1fd4  storeli.w r1, -5424(r30)
0042f4  e3406fcd  loadli.w r1,  -6476(r30)
0042f8  8b902010  add.s r1, r1, r2
0042fc  674d1fd4  storeli.w r1, -5420(r30)
004300  e3006fcd  loadli.w r1,  -6480(r30)
004304  8b902010  add.s r1, r1, r2
004308  e70d1fd4  storeli.w r1, -5416(r30)
00430c  e3405fcd  loadli.w r1,  -6484(r30)
004310  8b902010  add.s r1, r1, r2
004314  e74d1fd4  storeli.w r1, -5412(r30)
004318  e3005fcd  loadli.w r1,  -6488(r30)
00431c  8b902010  add.s r1, r1, r2
004320  670e1fd4  storeli.w r1, -5408(r30)
004324  e3404fcd  loadli.w r1,  -6492(r30)
004328  8b902010  add.s r1, r1, r2
00432c  674e1fd4  storeli.w r1, -5404(r30)
004330  e3004fcd  loadli.w r1,  -6496(r30)
004334  8b902010  add.s r1, r1, r2
004338  e70e1fd4  storeli.w r1, -5400(r30)
00433c  e3403fcd  loadli.w r1,  -6500(r30)
004340  8b902010  add.s r1, r1, r2
004344  e74e1fd4  storeli.w r1, -5396(r30)
004348  e3003fcd  loadli.w r1,  -6504(r30)
00434c  8b902010  add.s r1, r1, r2
004350  670f1fd4  storeli.w r1, -5392(r30)
004354  e3402fcd  loadli.w r1,  -6508(r30)
004358  8b902010  add.s r1, r1, r2
00435c  674f1fd4  storeli.w r1, -5388(r30)
004360  e3002fcd  loadli.w r1,  -6512(r30)
004364  8b902010  add.s r1, r1, r2
004368  e70f1fd4  storeli.w r1, -5384(r30)
00436c  e3401fcd  loadli.w r1,  -6516(r30)
004370  8b902010  add.s r1, r1, r2
004374  e74f1fd4  storeli.w r1, -5380(r30)
004378  e3001fcd  loadli.w r1,  -6520(r30)
00437c  8b902010  add.s r1, r1, r2
004380  67001fd6  storeli.w r1, -5376(r30)
004384  e3400fcd  loadli.w r1,  -6524(r30)
004388  8b902010  add.s r1, r1, r2
00438c  67401fd6  storeli.w r1, -5372(r30)
004390  e3000fcd  loadli.w r1,  -6528(r30)
004394  8b902010  add.s r1, r1, r2
004398  e7001fd6  storeli.w r1, -5368(r30)
00439c  e340ffcc  loadli.w r1,  -6532(r30)
0043a0  8b902010  add.s r1, r1, r2
0043a4  e7401fd6  storeli.w r1, -5364(r30)
0043a8  e300ffcc  loadli.w r1,  -6536(r30)
0043ac  8b902010  add.s r1, r1, r2
0043b0  67011fd6  storeli.w r1, -5360(r30)
0043b4  e340efcc  loadli.w r1,  -6540(r30)
0043b8  8b902010  add.s r1, r1, r2
0043bc  67411fd6  storeli.w r1, -5356(r30)
0043c0  e300efcc  loadli.w r1,  -6544(r30)
0043c4  8b902010  add.s r1, r1, r2
0043c8  e7011fd6  storeli.w r1, -5352(r30)
0043cc  e340dfcc  loadli.w r1,  -6548(r30)
0043d0  8b902010  add.s r1, r1, r2
0043d4  e7411fd6  storeli.w r1, -5348(r30)
0043d8  e300dfcc  loadli.w r1,  -6552(r30)
0043dc  8b902010  add.s r1, r1, r2
0043e0  67021fd6  storeli.w r1, -5344(r30)
0043e4  e340cfcc  loadli.w r1,  -6556(r30)
0043e8  8b902010  add.s r1, r1, r2
0043ec  67421fd6  storeli.w r1, -5340(r30)
0043f0  e300cfcc  loadli.w r1,  -6560(r30)
0043f4  8b902010  add.s r1, r1, r2
0043f8  e7021fd6  storeli.w r1, -5336(r30)
0043fc  e340bfcc  loadli.w r1,  -6564(r30)
004400  8b902010  add.s r1, r1, r2
004404  e7421fd6  storeli.w r1, -5332(r30)
004408  e300bfcc  loadli.w r1,  -6568(r30)
00440c  8b902010  add.s r1, r1, r2
004410  67031fd6  storeli.w r1, -5328(r30)
004414  e340afcc  loadli.w r1,  -6572(r30)
004418  8b902010  add.s r1, r1, r2
00441c  67431fd6  storeli.w r1, -5324(r30)
004420  e300afcc  loadli.w r1,  -6576(r30)
004424  8b902010  add.s r1, r1, r2
004428  e7031fd6  storeli.w r1, -5320(r30)
00442c  e3409fcc  loadli.w r1,  -6580(r30)
004430  8b902010  add.s r1, r1, r2
004434  e7431fd6  storeli.w r1, -5316(r30)
004438  e3009fcc  loadli.w r1,  -6584(r30)
00443c  8b902010  add.s r1, r1, r2
004440  67441fd6  storeli.w r1, -5308(r30)
004444  e3408fcc  loadli.w r1,  -6588(r30)
004448  8b902010  add.s r1, r1, r2
00444c  e7041fd6  storeli.w r1, -5304(r30)
004450  e3008fcc  loadli.w r1,  -6592(r30)
004454  8b902010  add.s r1, r1, r2
004458  e7441fd6  storeli.w r1, -5300(r30)
00445c  e3407fcc  loadli.w r1,  -6596(r30)
004460  8b902010  add.s r1, r1, r2
004464  67051fd6  storeli.w r1, -5296(r30)
004468  e3007fcc  loadli.w r1,  -6600(r30)
00446c  8b902010  add.s r1, r1, r2
004470  67451fd6  storeli.w r1, -5292(r30)
004474  e3406fcc  loadli.w r1,  -6604(r30)
004478  8b902010  add.s r1, r1, r2
00447c  e7051fd6  storeli.w r1, -5288(r30)
004480  e3006fcc  loadli.w r1,  -6608(r30)
004484  8b902010  add.s r1, r1, r2
004488  e7451fd6  storeli.w r1, -5284(r30)
00448c  e3405fcc  loadli.w r1,  -6612(r30)
004490  8b902010  add.s r1, r1, r2
004494  67061fd6  storeli.w r1, -5280(r30)
004498  e3005fcc  loadli.w r1,  -6616(r30)
00449c  8b902010  add.s r1, r1, r2
0044a0  67461fd6  storeli.w r1, -5276(r30)
0044a4  e3404fcc  loadli.w r1,  -6620(r30)
0044a8  8b902010  add.s r1, r1, r2
0044ac  e7061fd6  storeli.w r1, -5272(r30)
0044b0  e3004fcc  loadli.w r1,  -6624(r30)
0044b4  8b902010  add.s r1, r1, r2
0044b8  e7461fd6  storeli.w r1, -5268(r30)
0044bc  e3403fcc  loadli.w r1,  -6628(r30)
0044c0  8b902010  add.s r1, r1, r2
0044c4  67071fd6  storeli.w r1, -5264(r30)
0044c8  e3003fcc  loadli.w r1,  -6632(r30)
0044cc  8b902010  add.s r1, r1, r2
0044d0  67471fd6  storeli.w r1, -5260(r30)
0044d4  e3402fcc  loadli.w r1,  -6636(r30)
0044d8  8b902010  add.s r1, r1, r2
0044dc  e7071fd6  storeli.w r1, -5256(r30)
0044e0  e3002fcc  loadli.w r1,  -6640(r30)
0044e4  8b902010  add.s r1, r1, r2
0044e8  e7471fd6  storeli.w r1, -5252(r30)
0044ec  e3401fcc  loadli.w r1,  -6644(r30)
0044f0  8b902010  add.s r1, r1, r2
0044f4  67081fd6  storeli.w r1, -5248(r30)
0044f8  e3001fcc  loadli.w r1,  -6648(r30)
0044fc  8b902010  add.s r1, r1, r2
004500  67481fd6  storeli.w r1, -5244(r30)
004504  e3400fcc  loadli.w r1,  -6652(r30)
004508  8b902010  add.s r1, r1, r2
00450c  e7081fd6  storeli.w r1, -5240(r30)
004510  e3000fcc  loadli.w r1,  -6656(r30)
004514  8b902010  add.s r1, r1, r2
004518  e7481fd6  storeli.w r1, -5236(r30)
00451c  e340ffcb  loadli.w r1,  -6660(r30)
004520  8b902010  add.s r1, r1, r2
004524  67091fd6  storeli.w r1, -5232(r30)
004528  e300ffcb  loadli.w r1,  -6664(r30)
00452c  8b902010  add.s r1, r1, r2
004530  67491fd6  storeli.w r1, -5228(r30)
004534  e340efcb  loadli.w r1,  -6668(r30)
004538  8b902010  add.s r1, r1, r2
00453c  e7091fd6  storeli.w r1, -5224(r30)
004540  e300efcb  loadli.w r1,  -6672(r30)
004544  8b902010  add.s r1, r1, r2
004548  e7491fd6  storeli.w r1, -5220(r30)
00454c  e340dfcb  loadli.w r1,  -6676(r30)
004550  8b902010  add.s r1, r1, r2
004554  670a1fd6  storeli.w r1, -5216(r30)
004558  e300dfcb  loadli.w r1,  -6680(r30)
00455c  8b902010  add.s r1, r1, r2
004560  674a1fd6  storeli.w r1, -5212(r30)
004564  e340cfcb  loadli.w r1,  -6684(r30)
004568  8b902010  add.s r1, r1, r2
00456c  e70a1fd6  storeli.w r1, -5208(r30)
004570  e300cfcb  loadli.w r1,  -6688(r30)
004574  8b902010  add.s r1, r1, r2
004578  e74a1fd6  storeli.w r1, -5204(r30)
00457c  e340bfcb  loadli.w r1,  -6692(r30)
004580  8b902010  add.s r1, r1, r2
004584  670b1fd6  storeli.w r1, -5200(r30)
004588  e300bfcb  loadli.w r1,  -6696(r30)
00458c  8b902010  add.s r1, r1, r2
004590  674b1fd6  storeli.w r1, -5196(r30)
004594  e340afcb  loadli.w r1,  -6700(r30)
004598  8b902010  add.s r1, r1, r2
00459c  e70b1fd6  storeli.w r1, -5192(r30)
0045a0  e300afcb  loadli.w r1,  -6704(r30)
0045a4  8b902010  add.s r1, r1, r2
0045a8  e74b1fd6  storeli.w r1, -5188(r30)
0045ac  e3409fcb  loadli.w r1,  -6708(r30)
0045b0  8b902010  add.s r1, r1, r2
0045b4  670c1fd6  storeli.w r1, -5184(r30)
0045b8  e3009fcb  loadli.w r1,  -6712(r30)
0045bc  8b902010  add.s r1, r1, r2
0045c0  674c1fd6  storeli.w r1, -5180(r30)
0045c4  e3408fcb  loadli.w r1,  -6716(r30)
0045c8  8b902010  add.s r1, r1, r2
0045cc  e70c1fd6  storeli.w r1, -5176(r30)
0045d0  e3008fcb  loadli.w r1,  -6720(r30)
0045d4  8b902010  add.s r1, r1, r2
0045d8  e74c1fd6  storeli.w r1, -5172(r30)
0045dc  e3407fcb  loadli.w r1,  -6724(r30)
0045e0  8b902010  add.s r1, r1, r2
0045e4  670d1fd6  storeli.w r1, -5168(r30)
0045e8  e3007fcb  loadli.w r1,  -6728(r30)
0045ec  8b902010  add.s r1, r1, r2
0045f0  e70d1fd6  storeli.w r1, -5160(r30)
0045f4  e3406fcb  loadli.w r1,  -6732(r30)
0045f8  8b902010  add.s r1, r1, r2
0045fc  e74d1fd6  storeli.w r1, -5156(r30)
004600  e3006fcb  loadli.w r1,  -6736(r30)
004604  8b902010  add.s r1, r1, r2
004608  670e1fd6  storeli.w r1, -5152(r30)
00460c  e3405fcb  loadli.w r1,  -6740(r30)
004610  8b902010  add.s r1, r1, r2
004614  674e1fd6  storeli.w r1, -5148(r30)
004618  e3005fcb  loadli.w r1,  -6744(r30)
00461c  8b902010  add.s r1, r1, r2
004620  e70e1fd6  storeli.w r1, -5144(r30)
004624  e3404fcb  loadli.w r1,  -6748(r30)
004628  8b902010  add.s r1, r1, r2
00462c  e74e1fd6  storeli.w r1, -5140(r30)
004630  e3004fcb  loadli.w r1,  -6752(r30)
004634  8b902010  add.s r1, r1, r2
004638  670f1fd6  storeli.w r1, -5136(r30)
00463c  e3403fcb  loadli.w r1,  -6756(r30)
004640  8b902010  add.s r1, r1, r2
004644  674f1fd6  storeli.w r1, -5132(r30)
004648  e3003fcb  loadli.w r1,  -6760(r30)
00464c  8b902010  add.s r1, r1, r2
004650  e70f1fd6  storeli.w r1, -5128(r30)
004654  e3402fcb  loadli.w r1,  -6764(r30)
004658  8b902010  add.s r1, r1, r2
00465c  e74f1fd6  storeli.w r1, -5124(r30)
004660  e3002fcb  loadli.w r1,  -6768(r30)
004664  8b902010  add.s r1, r1, r2
004668  67001fd8  storeli.w r1, -5120(r30)
00466c  e3401fcb  loadli.w r1,  -6772(r30)
004670  8b902010  add.s r1, r1, r2
004674  67401fd8  storeli.w r1, -5116(r30)
004678  e3001fcb  loadli.w r1,  -6776(r30)
00467c  8b902010  add.s r1, r1, r2
004680  e7001fd8  storeli.w r1, -5112(r30)
004684  e3400fcb  loadli.w r1,  -6780(r30)
004688  8b902010  add.s r1, r1, r2
00468c  e7401fd8  storeli.w r1, -5108(r30)
004690  e3000fcb  loadli.w r1,  -6784(r30)
004694  8b902010  add.s r1, r1, r2
004698  67011fd8  storeli.w r1, -5104(r30)
00469c  e340ffca  loadli.w r1,  -6788(r30)
0046a0  8b902010  add.s r1, r1, r2
0046a4  67411fd8  storeli.w r1, -5100(r30)
0046a8  e300ffca  loadli.w r1,  -6792(r30)
0046ac  8b902010  add.s r1, r1, r2
0046b0  e7011fd8  storeli.w r1, -5096(r30)
0046b4  e340efca  loadli.w r1,  -6796(r30)
0046b8  8b902010  add.s r1, r1, r2
0046bc  e7411fd8  storeli.w r1, -5092(r30)
0046c0  e300efca  loadli.w r1,  -6800(r30)
0046c4  8b902010  add.s r1, r1, r2
0046c8  67021fd8  storeli.w r1, -5088(r30)
0046cc  e340dfca  loadli.w r1,  -6804(r30)
0046d0  8b902010  add.s r1, r1, r2
0046d4  67421fd8  storeli.w r1, -5084(r30)
0046d8  e300dfca  loadli.w r1,  -6808(r30)
0046dc  8b902010  add.s r1, r1, r2
0046e0  e7021fd8  storeli.w r1, -5080(r30)
0046e4  e340cfca  loadli.w r1,  -6812(r30)
0046e8  8b902010  add.s r1, r1, r2
0046ec  e7421fd8  storeli.w r1, -5076(r30)
0046f0  e300cfca  loadli.w r1,  -6816(r30)
0046f4  8b902010  add.s r1, r1, r2
0046f8  67031fd8  storeli.w r1, -5072(r30)
0046fc  e340bfca  loadli.w r1,  -6820(r30)
004700  8b902010  add.s r1, r1, r2
004704  67431fd8  storeli.w r1, -5068(r30)
004708  e300bfca  loadli.w r1,  -6824(r30)
00470c  8b902010  add.s r1, r1, r2
004710  e7031fd8  storeli.w r1, -5064(r30)
004714  e340afca  loadli.w r1,  -6828(r30)
004718  8b902010  add.s r1, r1, r2
00471c  e7431fd8  storeli.w r1, -5060(r30)
004720  e300afca  loadli.w r1,  -6832(r30)
004724  8b902010  add.s r1, r1, r2
004728  67041fd8  storeli.w r1, -5056(r30)
00472c  e3409fca  loadli.w r1,  -6836(r30)
004730  8b902010  add.s r1, r1, r2
004734  67441fd8  storeli.w r1, -5052(r30)
004738  e3009fca  loadli.w r1,  -6840(r30)
00473c  8b902010  add.s r1, r1, r2
004740  e7041fd8  storeli.w r1, -5048(r30)
004744  e3408fca  loadli.w r1,  -6844(r30)
004748  8b902010  add.s r1, r1, r2
00474c  e7441fd8  storeli.w r1, -5044(r30)
004750  e3008fca  loadli.w r1,  -6848(r30)
004754  8b902010  add.s r1, r1, r2
004758  67051fd8  storeli.w r1, -5040(r30)
00475c  e3407fca  loadli.w r1,  -6852(r30)
004760  8b902010  add.s r1, r1, r2
004764  67451fd8  storeli.w r1, -5036(r30)
004768  e3007fca  loadli.w r1,  -6856(r30)
00476c  8b902010  add.s r1, r1, r2
004770  e7051fd8  storeli.w r1, -5032(r30)
004774  e3406fca  loadli.w r1,  -6860(r30)
004778  8b902010  add.s r1, r1, r2
00477c  e7451fd8  storeli.w r1, -5028(r30)
004780  e3006fca  loadli.w r1,  -6864(r30)
004784  8b902010  add.s r1, r1, r2
004788  67061fd8  storeli.w r1, -5024(r30)
00478c  e3405fca  loadli.w r1,  -6868(r30)
004790  8b902010  add.s r1, r1, r2
004794  67461fd8  storeli.w r1, -5020(r30)
004798  e3005fca  loadli.w r1,  -6872(r30)
00479c  8b902010  add.s r1, r1, r2
0047a0  e7061fd8  storeli.w r1, -5016(r30)
0047a4  e3404fca  loadli.w r1,  -6876(r30)
0047a8  8b902010  add.s r1, r1, r2
0047ac  67071fd8  storeli.w r1, -5008(r30)
0047b0  e3004fca  loadli.w r1,  -6880(r30)
0047b4  8b902010  add.s r1, r1, r2
0047b8  67471fd8  storeli.w r1, -5004(r30)
0047bc  e3403fca  loadli.w r1,  -6884(r30)
0047c0  8b902010  add.s r1, r1, r2
0047c4  e7071fd8  storeli.w r1, -5000(r30)
0047c8  e3003fca  loadli.w r1,  -6888(r30)
0047cc  8b902010  add.s r1, r1, r2
0047d0  e7471fd8  storeli.w r1, -4996(r30)
0047d4  e3402fca  loadli.w r1,  -6892(r30)
0047d8  8b902010  add.s r1, r1, r2
0047dc  67081fd8  storeli.w r1, -4992(r30)
0047e0  e3002fca  loadli.w r1,  -6896(r30)
0047e4  8b902010  add.s r1, r1, r2
0047e8  67481fd8  storeli.w r1, -4988(r30)
0047ec  e3401fca  loadli.w r1,  -6900(r30)
0047f0  8b902010  add.s r1, r1, r2
0047f4  e7081fd8  storeli.w r1, -4984(r30)
0047f8  e3001fca  loadli.w r1,  -6904(r30)
0047fc  8b902010  add.s r1, r1, r2
004800  e7481fd8  storeli.w r1, -4980(r30)
004804  e3400fca  loadli.w r1,  -6908(r30)
004808  8b902010  add.s r1, r1, r2
00480c  67091fd8  storeli.w r1, -4976(r30)
004810  e3000fca  loadli.w r1,  -6912(r30)
004814  8b902010  add.s r1, r1, r2
004818  67491fd8  storeli.w r1, -4972(r30)
00481c  e340ffc9  loadli.w r1,  -6916(r30)
004820  8b902010  add.s r1, r1, r2
004824  e7091fd8  storeli.w r1, -4968(r30)
004828  e300ffc9  loadli.w r1,  -6920(r30)
00482c  8b902010  add.s r1, r1, r2
004830  e7491fd8  storeli.w r1, -4964(r30)
004834  e340efc9  loadli.w r1,  -6924(r30)
004838  8b902010  add.s r1, r1, r2
00483c  670a1fd8  storeli.w r1, -4960(r30)
004840  e300efc9  loadli.w r1,  -6928(r30)
004844  8b902010  add.s r1, r1, r2
004848  674a1fd8  storeli.w r1, -4956(r30)
00484c  e340dfc9  loadli.w r1,  -6932(r30)
004850  8b902010  add.s r1, r1, r2
004854  e70a1fd8  storeli.w r1, -4952(r30)
004858  e300dfc9  loadli.w r1,  -6936(r30)
00485c  8b902010  add.s r1, r1, r2
004860  e74a1fd8  storeli.w r1, -4948(r30)
004864  e340cfc9  loadli.w r1,  -6940(r30)
004868  8b902010  add.s r1, r1, r2
00486c  670b1fd8  storeli.w r1, -4944(r30)
004870  e300cfc9  loadli.w r1,  -6944(r30)
004874  8b902010  add.s r1, r1, r2
004878  674b1fd8  storeli.w r1, -4940(r30)
00487c  e340bfc9  loadli.w r1,  -6948(r30)
004880  8b902010  add.s r1, r1, r2
004884  e70b1fd8  storeli.w r1, -4936(r30)
004888  e300bfc9  loadli.w r1,  -6952(r30)
00488c  8b902010  add.s r1, r1, r2
004890  e74b1fd8  storeli.w r1, -4932(r30)
004894  e340afc9  loadli.w r1,  -6956(r30)
004898  8b902010  add.s r1, r1, r2
00489c  670c1fd8  storeli.w r1, -4928(r30)
0048a0  e300afc9  loadli.w r1,  -6960(r30)
0048a4  8b902010  add.s r1, r1, r2
0048a8  674c1fd8  storeli.w r1, -4924(r30)
0048ac  e3409fc9  loadli.w r1,  -6964(r30)
0048b0  8b902010  add.s r1, r1, r2
0048b4  e70c1fd8  storeli.w r1, -4920(r30)
0048b8  e3009fc9  loadli.w r1,  -6968(r30)
0048bc  8b902010  add.s r1, r1, r2
0048c0  e74c1fd8  storeli.w r1, -4916(r30)
0048c4  e3408fc9  loadli.w r1,  -6972(r30)
0048c8  8b902010  add.s r1, r1, r2
0048cc  670d1fd8  storeli.w r1, -4912(r30)
0048d0  e3008fc9  loadli.w r1,  -6976(r30)
0048d4  8b902010  add.s r1, r1, r2
0048d8  674d1fd8  storeli.w r1, -4908(r30)
0048dc  e3407fc9  loadli.w r1,  -6980(r30)
0048e0  8b902010  add.s r1, r1, r2
0048e4  e70d1fd8  storeli.w r1, -4904(r30)
0048e8  e3007fc9  loadli.w r1,  -6984(r30)
0048ec  8b902010  add.s r1, r1, r2
0048f0  e74d1fd8  storeli.w r1, -4900(r30)
0048f4  e3406fc9  loadli.w r1,  -6988(r30)
0048f8  8b902010  add.s r1, r1, r2
0048fc  670e1fd8  storeli.w r1, -4896(r30)
004900  e3006fc9  loadli.w r1,  -6992(r30)
004904  8b902010  add.s r1, r1, r2
004908  674e1fd8  storeli.w r1, -4892(r30)
00490c  e3405fc9  loadli.w r1,  -6996(r30)
004910  8b902010  add.s r1, r1, r2
004914  e70e1fd8  storeli.w r1, -4888(r30)
004918  e3005fc9  loadli.w r1,  -7000(r30)
00491c  8b902010  add.s r1, r1, r2
004920  e74e1fd8  storeli.w r1, -4884(r30)
004924  e3404fc9  loadli.w r1,  -7004(r30)
004928  8b902010  add.s r1, r1, r2
00492c  674f1fd8  storeli.w r1, -4876(r30)
004930  e3004fc9  loadli.w r1,  -7008(r30)
004934  8b902010  add.s r1, r1, r2
004938  670f1fd8  storeli.w r1, -4880(r30)
00493c  e3403fc9  loadli.w r1,  -7012(r30)
004940  8b902010  add.s r1, r1, r2
004944  e70f1fd8  storeli.w r1, -4872(r30)
004948  e3400fc9  loadli.w r1,  -7036(r30)
00494c  8b902010  add.s r1, r1, r2
004950  e74f1fd8  storeli.w r1, -4868(r30)
004954  e3001fc9  loadli.w r1,  -7032(r30)
004958  8b902010  add.s r1, r1, r2
00495c  67001fda  storeli.w r1, -4864(r30)
004960  e3401fc9  loadli.w r1,  -7028(r30)
004964  8b902010  add.s r1, r1, r2
004968  67401fda  storeli.w r1, -4860(r30)
00496c  e3002fc9  loadli.w r1,  -7024(r30)
004970  8b902010  add.s r1, r1, r2
004974  e7001fda  storeli.w r1, -4856(r30)
004978  e3402fc9  loadli.w r1,  -7020(r30)
00497c  8b902010  add.s r1, r1, r2
004980  e7401fda  storeli.w r1, -4852(r30)
004984  e3003fc9  loadli.w r1,  -7016(r30)
004988  8b902010  add.s r1, r1, r2
00498c  67431fda  storeli.w r1, -4812(r30)
004990  5b180000  j 192
004994  1f010000  addli r2, zero, 0
004998  9f010000  addli r3, zero, 0
00499c  9f030000  addli r7, zero, 0
0049a0  1f020000  addli r4, zero, 0
0049a4  1f0a0000  addli r20, zero, 0
0049a8  1f040000  addli r8, zero, 0
0049ac  9f000000  addli r1, zero, 0
0049b0  9f060000  addli r13, zero, 0
0049b4  1f080000  addli r16, zero, 0
0049b8  9f080000  addli r17, zero, 0
0049bc  9f090000  addli r19, zero, 0
0049c0  9f0b0000  addli r23, zero, 0
0049c4  1f0c0000  addli r24, zero, 0
0049c8  1f0d0000  addli r26, zero, 0
0049cc  1f070000  addli r14, zero, 0
0049d0  9f070000  addli r15, zero, 0
0049d4  8bec3c10  add.f.rn r25, r25, r3
0049d8  e3010fdf  loadli.w r3,  -4224(r30)
0049dc  0b694910  add.f.rn r18, r18, r4
0049e0  63028fde  loadli.w r4,  -4288(r30)
0049e4  0b658510  add.f.rn r10, r10, r8
0049e8  63040fdd  loadli.w r8,  -4480(r30)
0049ec  63030fde  loadli.w r6,  -4352(r30)
0049f0  63068fdc  loadli.w r12,  -4544(r30)
0049f4  8bed7d10  add.f.rn r27, r27, r7
0049f8  e3038fdd  loadli.w r7,  -4416(r30)
0049fc  8be44411  add.f.rn r9, r9, r20
004a00  0b6b2b10  add.f.rn r22, r22, r2
004a04  634a7fda  loadli.w r20,  -4804(r30)
004a08  8be11110  add.f.rn r3, r3, r1
004a0c  e3000fdb  loadli.w r1,  -4736(r30)
004a10  0b62d210  add.f.rn r4, r4, r13
004a14  e3060fdc  loadli.w r13,  -4608(r30)
004a18  0b643411  add.f.rn r8, r8, r19
004a1c  e3098fdb  loadli.w r19,  -4672(r30)
004a20  0b630311  add.f.rn r6, r6, r16
004a24  8be31311  add.f.rn r7, r7, r17
004a28  0b667611  add.f.rn r12, r12, r23
004a2c  1f0a4a00  addli r20, r20, 32
004a30  8be0e010  add.f.rn r1, r1, r14
004a34  8be68611  add.f.rn r13, r13, r24
004a38  8be9a911  add.f.rn r19, r19, r26
004a3c  1f870000  addli r14, r1, 0
004a40  e3008fda  loadli.w r1,  -4800(r30)
004a44  8be0f010  add.f.rn r1, r1, r15
004a48  9f870000  addli r15, r1, 0
004a4c  b70cba02  beq r20, r11, 1824
004a50  67083fde  storeli.w r3, -4224(r30)
004a54  8b914a11  add.s r3, r21, r20
004a58  67044fde  storeli.w r4, -4288(r30)
004a5c  92309002  vadd.s.mz vr1{mr1}, zero, vr9
004a60  1f100000  addli zero, zero, 1
004a64  670c7fdc  storeli.w r7, -4416(r30)
004a68  6704ffda  storeli.w r15, -4800(r30)
004a6c  6708efda  storeli.w r14, -4736(r30)
004a70  670c3fdb  storeli.w r19, -4672(r30)
004a74  6700dfdc  storeli.w r13, -4608(r30)
004a78  6704cfdc  storeli.w r12, -4544(r30)
004a7c  67088fdc  storeli.w r8, -4480(r30)
004a80  6bb20100  load.hu r4, 0(r3)
004a84  ebb32100  load.hu r7, 2(r3)
004a88  7e0100e0  vmmov mr2, zero
004a8c  17200000  xor zero, zero, zero
004a90  6bb1a101  load.hu r2, 26(r3)
004a94  ebb0c101  load.hu r1, 28(r3)
004a98  6bb44100  load.hu r8, 4(r3)
004a9c  6bb66100  load.hu r12, 6(r3)
004aa0  ebb68100  load.hu r13, 8(r3)
004aa4  6bb7a100  load.hu r14, 10(r3)
004aa8  ebb7c100  load.hu r15, 12(r3)
004aac  6bb8e100  load.hu r16, 14(r3)
004ab0  ebb80101  load.hu r17, 16(r3)
004ab4  ebb92101  load.hu r19, 18(r3)
004ab8  ebbb4101  load.hu r23, 20(r3)
004abc  6bbc6101  load.hu r24, 22(r3)
004ac0  6bbd8101  load.hu r26, 24(r3)
004ac4  ebb1e101  load.hu r3, 30(r3)
004ac8  12319002  vadd.s.mz vr2{mr1}, zero, vr9
004acc  33120218  bfloat2float.rn r4, r4
004ad0  33110118  bfloat2float.rn r2, r2
004ad4  b3900018  bfloat2float.rn r1, r1
004ad8  ea201234  vor.u.mh vr1{mr2}, r4, vr1
004adc  33920318  bfloat2float.rn r4, r7
004ae0  9f230000  addli r7, zero, 2
004ae4  fe8103e0  vmmov mr3, r7
004ae8  9f430000  addli r7, zero, 4
004aec  ea201236  vor.u.mh vr1{mr3}, r4, vr1
004af0  33120418  bfloat2float.rn r4, r8
004af4  7e8003e0  vmmov mr0, r7
004af8  9f031000  addli r7, zero, 8
004afc  ea201230  vor.u.mh vr1{mr0}, r4, vr1
004b00  33120618  bfloat2float.rn r4, r12
004b04  7e8003e0  vmmov mr0, r7
004b08  9f032000  addli r7, zero, 16
004b0c  ea201230  vor.u.mh vr1{mr0}, r4, vr1
004b10  33920618  bfloat2float.rn r4, r13
004b14  7e8003e0  vmmov mr0, r7
004b18  9f034000  addli r7, zero, 32
004b1c  ea201230  vor.u.mh vr1{mr0}, r4, vr1
004b20  33120718  bfloat2float.rn r4, r14
004b24  7e8003e0  vmmov mr0, r7
004b28  9f038000  addli r7, zero, 64
004b2c  ea201230  vor.u.mh vr1{mr0}, r4, vr1
004b30  33920718  bfloat2float.rn r4, r15
004b34  7e8003e0  vmmov mr0, r7
004b38  9f030001  addli r7, zero, 128
004b3c  ea201230  vor.u.mh vr1{mr0}, r4, vr1
004b40  33120818  bfloat2float.rn r4, r16
004b44  7e8003e0  vmmov mr0, r7
004b48  9f030002  addli r7, zero, 256
004b4c  ea201230  vor.u.mh vr1{mr0}, r4, vr1
004b50  33920818  bfloat2float.rn r4, r17
004b54  7e8003e0  vmmov mr0, r7
004b58  9f030004  addli r7, zero, 512
004b5c  ea201230  vor.u.mh vr1{mr0}, r4, vr1
004b60  33920918  bfloat2float.rn r4, r19
004b64  7e8003e0  vmmov mr0, r7
004b68  9f030008  addli r7, zero, 1024
004b6c  ea201230  vor.u.mh vr1{mr0}, r4, vr1
004b70  33920b18  bfloat2float.rn r4, r23
004b74  7e8003e0  vmmov mr0, r7
004b78  9f030010  addli r7, zero, 2048
004b7c  ea201230  vor.u.mh vr1{mr0}, r4, vr1
004b80  33120c18  bfloat2float.rn r4, r24
004b84  7e8003e0  vmmov mr0, r7
004b88  9f030020  addli r7, zero, 4096
004b8c  ea201230  vor.u.mh vr1{mr0}, r4, vr1
004b90  33120d18  bfloat2float.rn r4, r26
004b94  7e8003e0  vmmov mr0, r7
004b98  ea201230  vor.u.mh vr1{mr0}, r4, vr1
004b9c  1f020040  addli r4, zero, 8192
004ba0  7e0002e0  vmmov mr0, r4
004ba4  ea201130  vor.u.mh vr1{mr0}, r2, vr1
004ba8  2b410000  lui r2, 4
004bac  7e0001e0  vmmov mr0, r2
004bb0  1f010ff4  addli r2, r30, -1536
004bb4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
004bb8  b3900118  bfloat2float.rn r1, r3
004bbc  ab810000  lui r3, 8
004bc0  0b114111  add.s r2, r2, r20
004bc4  e7434fdb  storeli.w r20, -4804(r30)
004bc8  7e8001e0  vmmov mr0, r3
004bcc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
004bd0  eb300100  load.hu r1, 0(r2)
004bd4  eb312100  load.hu r3, 2(r2)
004bd8  6b324100  load.hu r4, 4(r2)
004bdc  eb336100  load.hu r7, 6(r2)
004be0  6b348100  load.hu r8, 8(r2)
004be4  6b36a100  load.hu r12, 10(r2)
004be8  eb36c100  load.hu r13, 12(r2)
004bec  6b37e100  load.hu r14, 14(r2)
004bf0  eb370101  load.hu r15, 16(r2)
004bf4  6b382101  load.hu r16, 18(r2)
004bf8  eb384101  load.hu r17, 20(r2)
004bfc  eb396101  load.hu r19, 22(r2)
004c00  eb3b8101  load.hu r23, 24(r2)
004c04  6b3ca101  load.hu r24, 26(r2)
004c08  6b3dc101  load.hu r26, 28(r2)
004c0c  6b31e101  load.hu r2, 30(r2)
004c10  b3900018  bfloat2float.rn r1, r1
004c14  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
004c18  b3900118  bfloat2float.rn r1, r3
004c1c  9f410000  addli r3, zero, 4
004c20  7e8101e0  vmmov mr2, r3
004c24  9f011000  addli r3, zero, 8
004c28  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
004c2c  b3100218  bfloat2float.rn r1, r4
004c30  2b02807f  lui r4, 522240
004c34  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
004c38  b3900318  bfloat2float.rn r1, r7
004c3c  7e8101e0  vmmov mr2, r3
004c40  9f012000  addli r3, zero, 16
004c44  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
004c48  b3100418  bfloat2float.rn r1, r8
004c4c  7e8101e0  vmmov mr2, r3
004c50  9f014000  addli r3, zero, 32
004c54  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
004c58  b3100618  bfloat2float.rn r1, r12
004c5c  7e8101e0  vmmov mr2, r3
004c60  9f018000  addli r3, zero, 64
004c64  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
004c68  b3900618  bfloat2float.rn r1, r13
004c6c  7e8101e0  vmmov mr2, r3
004c70  9f010001  addli r3, zero, 128
004c74  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
004c78  b3100718  bfloat2float.rn r1, r14
004c7c  7e8101e0  vmmov mr2, r3
004c80  9f010002  addli r3, zero, 256
004c84  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
004c88  b3900718  bfloat2float.rn r1, r15
004c8c  7e8101e0  vmmov mr2, r3
004c90  9f010004  addli r3, zero, 512
004c94  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
004c98  b3100818  bfloat2float.rn r1, r16
004c9c  7e8101e0  vmmov mr2, r3
004ca0  9f010008  addli r3, zero, 1024
004ca4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
004ca8  b3900818  bfloat2float.rn r1, r17
004cac  7e8101e0  vmmov mr2, r3
004cb0  9f010010  addli r3, zero, 2048
004cb4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
004cb8  b3900918  bfloat2float.rn r1, r19
004cbc  7e8101e0  vmmov mr2, r3
004cc0  9f010020  addli r3, zero, 4096
004cc4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
004cc8  b3900b18  bfloat2float.rn r1, r23
004ccc  7e8101e0  vmmov mr2, r3
004cd0  9f010040  addli r3, zero, 8192
004cd4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
004cd8  b3100c18  bfloat2float.rn r1, r24
004cdc  7e8101e0  vmmov mr2, r3
004ce0  ab410000  lui r3, 4
004ce4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
004ce8  b3100d18  bfloat2float.rn r1, r26
004cec  7e8101e0  vmmov mr2, r3
004cf0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
004cf4  b3100118  bfloat2float.rn r1, r2
004cf8  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
004cfc  9f000fe0  addli r1, r30, -4096
004d00  16902002  vadd.f.mz.rn vr0{mr1}, vr1, vr2
004d04  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
004d08  00a00000  mfence { lm }
004d0c  e3070fe0  loadli.w r15,  -4096(r30)
004d10  63470fe0  loadli.w r14,  -4092(r30)
004d14  63041fe0  loadli.w r8,  -4088(r30)
004d18  e34b1fe0  loadli.w r23,  -4084(r30)
004d1c  630c2fe0  loadli.w r24,  -4080(r30)
004d20  634d2fe0  loadli.w r26,  -4076(r30)
004d24  e3033fe0  loadli.w r7,  -4072(r30)
004d28  e3463fe0  loadli.w r13,  -4068(r30)
004d2c  63064fe0  loadli.w r12,  -4064(r30)
004d30  e3414fe0  loadli.w r3,  -4060(r30)
004d34  e340ffdf  loadli.w r1,  -4100(r30)
004d38  63015fe0  loadli.w r2,  -4056(r30)
004d3c  e3495fe0  loadli.w r19,  -4052(r30)
004d40  e3086fe0  loadli.w r17,  -4048(r30)
004d44  97801700  and r1, r15, r1
004d48  130a1204  setlt.u r20, r4, r1
004d4c  63426fe0  loadli.w r4,  -4044(r30)
004d50  63087fe0  loadli.w r16,  -4040(r30)
004d54  e3407fe0  loadli.w r1,  -4036(r30)
004d58  67006fde  storeli.w r6, -4352(r30)
004d5c  3b600a00  bneq r20, zero, 24
004d60  1bca0701  srli r20, r15, 16
004d64  1b0a1a00  andi r20, r20, 1
004d68  8b974711  add.s r15, r15, r20
004d6c  0b9ac711  add.s r20, r15, r28
004d70  db010000  j 12
004d74  2b034000  lui r6, 1024
004d78  179a6700  or r20, r15, r6
004d7c  6343ffdf  loadli.w r6,  -4100(r30)
004d80  97076700  and r15, r14, r6
004d84  2b03807f  lui r6, 522240
004d88  9307f304  setlt.u r15, r6, r15
004d8c  3be00700  bneq r15, zero, 24
004d90  9b470701  srli r15, r14, 16
004d94  9b871700  andi r15, r15, 1
004d98  0b17f710  add.s r14, r14, r15
004d9c  0b13c711  add.s r6, r14, r28
004da0  db010000  j 12
004da4  2b034000  lui r6, 1024
004da8  17136700  or r6, r14, r6
004dac  e7036fda  storeli.w r6, -4808(r30)
004db0  6343ffdf  loadli.w r6,  -4100(r30)
004db4  17076400  and r14, r8, r6
004db8  2b03807f  lui r6, 522240
004dbc  1307e304  setlt.u r14, r6, r14
004dc0  3b600700  bneq r14, zero, 24
004dc4  1b470401  srli r14, r8, 16
004dc8  1b071700  andi r14, r14, 1
004dcc  0b14e410  add.s r8, r8, r14
004dd0  0b14c411  add.s r8, r8, r28
004dd4  db010000  j 12
004dd8  2b034000  lui r6, 1024
004ddc  17146400  or r8, r8, r6
004de0  6343ffdf  loadli.w r6,  -4100(r30)
004de4  17876b00  and r14, r23, r6
004de8  2b03807f  lui r6, 522240
004dec  1307e304  setlt.u r14, r6, r14
004df0  3b600700  bneq r14, zero, 24
004df4  1bc70b01  srli r14, r23, 16
004df8  1b071700  andi r14, r14, 1
004dfc  0b97eb10  add.s r14, r23, r14
004e00  8b1bc711  add.s r23, r14, r28
004e04  db010000  j 12
004e08  2b034000  lui r6, 1024
004e0c  979b6b00  or r23, r23, r6
004e10  6343ffdf  loadli.w r6,  -4100(r30)
004e14  17076c00  and r14, r24, r6
004e18  2b03807f  lui r6, 522240
004e1c  1307e304  setlt.u r14, r6, r14
004e20  3b600700  bneq r14, zero, 24
004e24  1b470c01  srli r14, r24, 16
004e28  1b071700  andi r14, r14, 1
004e2c  0b17ec10  add.s r14, r24, r14
004e30  0b1cc711  add.s r24, r14, r28
004e34  db010000  j 12
004e38  2b034000  lui r6, 1024
004e3c  171c6c00  or r24, r24, r6
004e40  6343ffdf  loadli.w r6,  -4100(r30)
004e44  17076d00  and r14, r26, r6
004e48  2b03807f  lui r6, 522240
004e4c  1307e304  setlt.u r14, r6, r14
004e50  3b600700  bneq r14, zero, 24
004e54  1b470d01  srli r14, r26, 16
004e58  1b071700  andi r14, r14, 1
004e5c  0b17ed10  add.s r14, r26, r14
004e60  0b1dc711  add.s r26, r14, r28
004e64  db010000  j 12
004e68  2b034000  lui r6, 1024
004e6c  171d6d00  or r26, r26, r6
004e70  6343ffdf  loadli.w r6,  -4100(r30)
004e74  17876300  and r14, r7, r6
004e78  2b03807f  lui r6, 522240
004e7c  1307e304  setlt.u r14, r6, r14
004e80  3b600700  bneq r14, zero, 24
004e84  1bc70301  srli r14, r7, 16
004e88  1b071700  andi r14, r14, 1
004e8c  8b93e310  add.s r7, r7, r14
004e90  8b93c311  add.s r7, r7, r28
004e94  db010000  j 12
004e98  2b034000  lui r6, 1024
004e9c  97936300  or r7, r7, r6
004ea0  6343ffdf  loadli.w r6,  -4100(r30)
004ea4  17876600  and r14, r13, r6
004ea8  2b03807f  lui r6, 522240
004eac  1307e304  setlt.u r14, r6, r14
004eb0  3b600700  bneq r14, zero, 24
004eb4  1bc70601  srli r14, r13, 16
004eb8  1b071700  andi r14, r14, 1
004ebc  8b96e610  add.s r13, r13, r14
004ec0  8b96c611  add.s r13, r13, r28
004ec4  db010000  j 12
004ec8  2b034000  lui r6, 1024
004ecc  97966600  or r13, r13, r6
004ed0  6343ffdf  loadli.w r6,  -4100(r30)
004ed4  17076600  and r14, r12, r6
004ed8  2b03807f  lui r6, 522240
004edc  1307e304  setlt.u r14, r6, r14
004ee0  3b600700  bneq r14, zero, 24
004ee4  1b470601  srli r14, r12, 16
004ee8  1b071700  andi r14, r14, 1
004eec  0b16e610  add.s r12, r12, r14
004ef0  0b16c611  add.s r12, r12, r28
004ef4  db010000  j 12
004ef8  2b034000  lui r6, 1024
004efc  17166600  or r12, r12, r6
004f00  6343ffdf  loadli.w r6,  -4100(r30)
004f04  17876100  and r14, r3, r6
004f08  2b03807f  lui r6, 522240
004f0c  1307e304  setlt.u r14, r6, r14
004f10  3b600700  bneq r14, zero, 24
004f14  1bc70101  srli r14, r3, 16
004f18  1b071700  andi r14, r14, 1
004f1c  8b91e110  add.s r3, r3, r14
004f20  8b91c111  add.s r3, r3, r28
004f24  db010000  j 12
004f28  2b034000  lui r6, 1024
004f2c  97916100  or r3, r3, r6
004f30  6343ffdf  loadli.w r6,  -4100(r30)
004f34  17076100  and r14, r2, r6
004f38  2b03807f  lui r6, 522240
004f3c  1307e304  setlt.u r14, r6, r14
004f40  3b600700  bneq r14, zero, 24
004f44  1b470101  srli r14, r2, 16
004f48  1b071700  andi r14, r14, 1
004f4c  0b11e110  add.s r2, r2, r14
004f50  0b11c111  add.s r2, r2, r28
004f54  db010000  j 12
004f58  2b034000  lui r6, 1024
004f5c  17116100  or r2, r2, r6
004f60  6343ffdf  loadli.w r6,  -4100(r30)
004f64  17876900  and r14, r19, r6
004f68  2b03807f  lui r6, 522240
004f6c  1307e304  setlt.u r14, r6, r14
004f70  3b600700  bneq r14, zero, 24
004f74  1bc70901  srli r14, r19, 16
004f78  1b071700  andi r14, r14, 1
004f7c  0b97e910  add.s r14, r19, r14
004f80  8b19c711  add.s r19, r14, r28
004f84  db010000  j 12
004f88  2b034000  lui r6, 1024
004f8c  97996900  or r19, r19, r6
004f90  6343ffdf  loadli.w r6,  -4100(r30)
004f94  17876800  and r14, r17, r6
004f98  2b03807f  lui r6, 522240
004f9c  1307e304  setlt.u r14, r6, r14
004fa0  3b600700  bneq r14, zero, 24
004fa4  1bc70801  srli r14, r17, 16
004fa8  1b071700  andi r14, r14, 1
004fac  0b97e810  add.s r14, r17, r14
004fb0  8b18c711  add.s r17, r14, r28
004fb4  db010000  j 12
004fb8  2b034000  lui r6, 1024
004fbc  97986800  or r17, r17, r6
004fc0  6343ffdf  loadli.w r6,  -4100(r30)
004fc4  17076200  and r14, r4, r6
004fc8  2b03807f  lui r6, 522240
004fcc  1307e304  setlt.u r14, r6, r14
004fd0  3b600700  bneq r14, zero, 24
004fd4  1b470201  srli r14, r4, 16
004fd8  1b071700  andi r14, r14, 1
004fdc  0b12e210  add.s r4, r4, r14
004fe0  0b12c211  add.s r4, r4, r28
004fe4  db010000  j 12
004fe8  2b034000  lui r6, 1024
004fec  17126200  or r4, r4, r6
004ff0  6343ffdf  loadli.w r6,  -4100(r30)
004ff4  17076800  and r14, r16, r6
004ff8  2b03807f  lui r6, 522240
004ffc  1307e304  setlt.u r14, r6, r14
005000  3b600700  bneq r14, zero, 24
005004  1b470801  srli r14, r16, 16
005008  1b071700  andi r14, r14, 1
00500c  0b17e810  add.s r14, r16, r14
005010  0b17c711  add.s r14, r14, r28
005014  db010000  j 12
005018  2b034000  lui r6, 1024
00501c  17176800  or r14, r16, r6
005020  6343ffdf  loadli.w r6,  -4100(r30)
005024  97876000  and r15, r1, r6
005028  2b03807f  lui r6, 522240
00502c  9307f304  setlt.u r15, r6, r15
005030  3be00700  bneq r15, zero, 24
005034  9bc70001  srli r15, r1, 16
005038  9b871700  andi r15, r15, 1
00503c  8b90f010  add.s r1, r1, r15
005040  8b90c011  add.s r1, r1, r28
005044  db010000  j 12
005048  2b034000  lui r6, 1024
00504c  97906000  or r1, r1, r6
005050  6303efdf  loadli.w r6,  -4112(r30)
005054  3f20b300  blt.s r6, r11, 8
005058  db27ffff  j -1732
00505c  2b03ffff  lui r6, 1048560
005060  e3057fda  loadli.w r11,  -4808(r30)
005064  97076a00  and r15, r20, r6
005068  17046400  and r8, r8, r6
00506c  17066600  and r12, r12, r6
005070  97806000  and r1, r1, r6
005074  97836300  and r7, r7, r6
005078  17016100  and r2, r2, r6
00507c  17026200  and r4, r4, r6
005080  178a6b00  and r20, r23, r6
005084  970b6c00  and r23, r24, r6
005088  170c6d00  and r24, r26, r6
00508c  97866600  and r13, r13, r6
005090  17076700  and r14, r14, r6
005094  97816100  and r3, r3, r6
005098  97896900  and r19, r19, r6
00509c  97886800  and r17, r17, r6
0050a0  17886500  and r16, r11, r6
0050a4  8be75718  sub.f.rn r15, r15, r5
0050a8  0b645418  sub.f.rn r8, r8, r5
0050ac  0bed5318  sub.f.rn r26, r7, r5
0050b0  8b6a5618  sub.f.rn r21, r12, r5
0050b4  1f060500  addli r12, r10, 0
0050b8  1f850c00  addli r10, r25, 0
0050bc  8b6c5118  sub.f.rn r25, r2, r5
0050c0  1f010900  addli r2, r18, 0
0050c4  1f890d00  addli r18, r27, 0
0050c8  0bee5018  sub.f.rn r28, r1, r5
0050cc  8b6d5218  sub.f.rn r27, r4, r5
0050d0  8be65618  sub.f.rn r13, r13, r5
0050d4  0b675718  sub.f.rn r14, r14, r5
0050d8  0b6a5a18  sub.f.rn r20, r20, r5
0050dc  9f830400  addli r7, r9, 0
0050e0  9f040b00  addli r9, r22, 0
0050e4  0be35918  sub.f.rn r6, r19, r5
0050e8  8beb5b18  sub.f.rn r23, r23, r5
0050ec  0b6c5c18  sub.f.rn r24, r24, r5
0050f0  0beb5118  sub.f.rn r22, r3, r5
0050f4  8be55818  sub.f.rn r11, r17, r5
0050f8  0b685818  sub.f.rn r16, r16, r5
0050fc  8be7f720  mul.f.rn r15, r15, r15
005100  8b698420  mul.f.rn r19, r8, r8
005104  8b60ad21  mul.f.rn r1, r26, r26
005108  0bedbd21  mul.f.rn r26, r27, r27
00510c  9f0d0900  addli r27, r18, 0
005110  1f090100  addli r18, r2, 0
005114  0b624a21  mul.f.rn r4, r20, r20
005118  0bea7b21  mul.f.rn r20, r23, r23
00511c  0b648c21  mul.f.rn r8, r24, r24
005120  8b686b21  mul.f.rn r17, r22, r22
005124  1f8b0400  addli r22, r9, 0
005128  9f840300  addli r9, r7, 0
00512c  0becb520  mul.f.rn r24, r11, r11
005130  8be6d620  mul.f.rn r13, r13, r13
005134  8b6b6320  mul.f.rn r23, r6, r6
005138  9f050004  addli r11, zero, 512
00513c  0b67e720  mul.f.rn r14, r14, r14
005140  8b610821  mul.f.rn r3, r16, r16
005144  0be85a21  mul.f.rn r16, r21, r21
005148  9f0a0ff0  addli r21, r30, -2048
00514c  1f810700  addli r2, r15, 0
005150  8b67ce21  mul.f.rn r15, r28, r28
005154  630effdf  loadli.w r28,  -4104(r30)
005158  9f830900  addli r7, r19, 0
00515c  8be99c21  mul.f.rn r19, r25, r25
005160  9f0c0500  addli r25, r10, 0
005164  1f050600  addli r10, r12, 0
005168  db0dffff  j -1940
00516c  8b609b11  add.f.rn r1, r22, r25
005170  6301ffd1  loadli.w r2,  -5896(r30)
005174  8be0b011  add.f.rn r1, r1, r27
005178  8be02011  add.f.rn r1, r1, r18
00517c  8be09010  add.f.rn r1, r1, r9
005180  8be0a010  add.f.rn r1, r1, r10
005184  8be03010  add.f.rn r1, r1, r3
005188  8be04010  add.f.rn r1, r1, r4
00518c  8be06010  add.f.rn r1, r1, r6
005190  8be07010  add.f.rn r1, r1, r7
005194  8be08010  add.f.rn r1, r1, r8
005198  8be0c010  add.f.rn r1, r1, r12
00519c  8be0d010  add.f.rn r1, r1, r13
0051a0  8be03011  add.f.rn r1, r1, r19
0051a4  8be0e010  add.f.rn r1, r1, r14
0051a8  8be0f010  add.f.rn r1, r1, r15
0051ac  73601100  stores.w r1, 0(r2)
0051b0  00a00300  mfence { lm, sm, gm }
0051b4  63026fda  loadli.w r4,  -4816(r30)
0051b8  80210204  csr_set csr3, r4
0051bc  00d00100  sync_group
0051c0  e3405fda  loadli.w r1,  -4820(r30)
0051c4  bba00000  bneq r1, zero, 40
0051c8  63030fd2  loadli.w r6,  -5888(r30)
0051cc  ef400300  loads.w r1, 0(r6)
0051d0  6f414300  loads.w r2, 4(r6)
0051d4  ef418300  loads.w r3, 8(r6)
0051d8  8be02010  add.f.rn r1, r1, r2
0051dc  6f41c300  loads.w r2, 12(r6)
0051e0  8be03010  add.f.rn r1, r1, r3
0051e4  8be02010  add.f.rn r1, r1, r2
0051e8  73601300  stores.w r1, 0(r6)
0051ec  00a00300  mfence { lm, sm, gm }
0051f0  80210204  csr_set csr3, r4
0051f4  00d00100  sync_group
0051f8  e3000fd2  loadli.w r1,  -5888(r30)
0051fc  2b01803a  lui r2, 239616
005200  634dffdf  loadli.w r26,  -4100(r30)
005204  9f010000  addli r3, zero, 0
005208  ab0bffff  lui r23, 1048560
00520c  2b0c4000  lui r24, 1024
005210  2b09807f  lui r18, 522240
005214  efc00000  loads.w r1, 0(r1)
005218  8be02020  mul.f.rn r1, r1, r2
00521c  63417fd0  loadli.w r2,  -6084(r30)
005220  8be02010  add.f.rn r1, r1, r2
005224  2b01803f  lui r2, 260096
005228  8f800008  sqrt.f.rn r1, r1
00522c  0f011118  div.f.rn r2, r2, r1
005230  5b050000  j 40
005234  9b400201  srli r1, r4, 16
005238  9b801000  andi r1, r1, 1
00523c  8b101210  add.s r1, r4, r1
005240  8b90c011  add.s r1, r1, r28
005244  9bc00001  srli r1, r1, 16
005248  9f814100  addli r3, r3, 32
00524c  731f1300  store.h r1, 30(r6)
005250  00a00000  mfence { lm }
005254  b79eb1da  beq r3, r11, -18524
005258  0b933a10  add.s r6, r21, r3
00525c  92309002  vadd.s.mz vr1{mr1}, zero, vr9
005260  1f1b0000  addli r22, zero, 1
005264  12319002  vadd.s.mz vr2{mr1}, zero, vr9
005268  eb330300  load.hu r7, 0(r6)
00526c  6b342300  load.hu r8, 2(r6)
005270  7e010be0  vmmov mr2, r22
005274  6b32a301  load.hu r4, 26(r6)
005278  eb30c301  load.hu r1, 28(r6)
00527c  eb344300  load.hu r9, 4(r6)
005280  6b356300  load.hu r10, 6(r6)
005284  eb358300  load.hu r11, 8(r6)
005288  6b36a300  load.hu r12, 10(r6)
00528c  eb36c300  load.hu r13, 12(r6)
005290  6b37e300  load.hu r14, 14(r6)
005294  eb370301  load.hu r15, 16(r6)
005298  6b382301  load.hu r16, 18(r6)
00529c  eb384301  load.hu r17, 20(r6)
0052a0  eb396301  load.hu r19, 22(r6)
0052a4  6b3a8301  load.hu r20, 24(r6)
0052a8  eb3ae301  load.hu r21, 30(r6)
0052ac  b3930318  bfloat2float.rn r7, r7
0052b0  33120218  bfloat2float.rn r4, r4
0052b4  b3900018  bfloat2float.rn r1, r1
0052b8  eaa01334  vor.u.mh vr1{mr2}, r7, vr1
0052bc  b3130418  bfloat2float.rn r7, r8
0052c0  1f240000  addli r8, zero, 2
0052c4  fe0104e0  vmmov mr3, r8
0052c8  1f440000  addli r8, zero, 4
0052cc  eaa01336  vor.u.mh vr1{mr3}, r7, vr1
0052d0  b3930418  bfloat2float.rn r7, r9
0052d4  7e0004e0  vmmov mr0, r8
0052d8  1f041000  addli r8, zero, 8
0052dc  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
0052e0  b3130518  bfloat2float.rn r7, r10
0052e4  7e0004e0  vmmov mr0, r8
0052e8  1f042000  addli r8, zero, 16
0052ec  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
0052f0  b3930518  bfloat2float.rn r7, r11
0052f4  7e0004e0  vmmov mr0, r8
0052f8  1f044000  addli r8, zero, 32
0052fc  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
005300  b3130618  bfloat2float.rn r7, r12
005304  7e0004e0  vmmov mr0, r8
005308  1f048000  addli r8, zero, 64
00530c  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
005310  b3930618  bfloat2float.rn r7, r13
005314  7e0004e0  vmmov mr0, r8
005318  1f040001  addli r8, zero, 128
00531c  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
005320  b3130718  bfloat2float.rn r7, r14
005324  7e0004e0  vmmov mr0, r8
005328  1f040002  addli r8, zero, 256
00532c  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
005330  b3930718  bfloat2float.rn r7, r15
005334  7e0004e0  vmmov mr0, r8
005338  1f040004  addli r8, zero, 512
00533c  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
005340  b3130818  bfloat2float.rn r7, r16
005344  7e0004e0  vmmov mr0, r8
005348  1f040008  addli r8, zero, 1024
00534c  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
005350  b3930818  bfloat2float.rn r7, r17
005354  7e0004e0  vmmov mr0, r8
005358  1f040010  addli r8, zero, 2048
00535c  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
005360  b3930918  bfloat2float.rn r7, r19
005364  7e0004e0  vmmov mr0, r8
005368  1f040020  addli r8, zero, 4096
00536c  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
005370  b3130a18  bfloat2float.rn r7, r20
005374  7e0004e0  vmmov mr0, r8
005378  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
00537c  9f030040  addli r7, zero, 8192
005380  7e8003e0  vmmov mr0, r7
005384  ab830000  lui r7, 8
005388  ea201230  vor.u.mh vr1{mr0}, r4, vr1
00538c  2b420000  lui r4, 4
005390  7e0002e0  vmmov mr0, r4
005394  1f020ff4  addli r4, r30, -1536
005398  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00539c  b3900a18  bfloat2float.rn r1, r21
0053a0  0b123210  add.s r4, r4, r3
0053a4  7e8003e0  vmmov mr0, r7
0053a8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0053ac  eb300200  load.hu r1, 0(r4)
0053b0  eb332200  load.hu r7, 2(r4)
0053b4  6b344200  load.hu r8, 4(r4)
0053b8  eb346200  load.hu r9, 6(r4)
0053bc  6b358200  load.hu r10, 8(r4)
0053c0  eb35a200  load.hu r11, 10(r4)
0053c4  6b36c200  load.hu r12, 12(r4)
0053c8  eb36e200  load.hu r13, 14(r4)
0053cc  6b370201  load.hu r14, 16(r4)
0053d0  eb372201  load.hu r15, 18(r4)
0053d4  6b384201  load.hu r16, 20(r4)
0053d8  eb386201  load.hu r17, 22(r4)
0053dc  eb398201  load.hu r19, 24(r4)
0053e0  6b3aa201  load.hu r20, 26(r4)
0053e4  eb3ac201  load.hu r21, 28(r4)
0053e8  6b32e201  load.hu r4, 30(r4)
0053ec  b3900018  bfloat2float.rn r1, r1
0053f0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0053f4  b3900318  bfloat2float.rn r1, r7
0053f8  9f430000  addli r7, zero, 4
0053fc  7e8103e0  vmmov mr2, r7
005400  9f031000  addli r7, zero, 8
005404  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
005408  b3100418  bfloat2float.rn r1, r8
00540c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
005410  b3900418  bfloat2float.rn r1, r9
005414  7e8103e0  vmmov mr2, r7
005418  9f032000  addli r7, zero, 16
00541c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
005420  b3100518  bfloat2float.rn r1, r10
005424  7e8103e0  vmmov mr2, r7
005428  9f034000  addli r7, zero, 32
00542c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
005430  b3900518  bfloat2float.rn r1, r11
005434  7e8103e0  vmmov mr2, r7
005438  9f038000  addli r7, zero, 64
00543c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
005440  b3100618  bfloat2float.rn r1, r12
005444  7e8103e0  vmmov mr2, r7
005448  9f030001  addli r7, zero, 128
00544c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
005450  b3900618  bfloat2float.rn r1, r13
005454  7e8103e0  vmmov mr2, r7
005458  9f030002  addli r7, zero, 256
00545c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
005460  b3100718  bfloat2float.rn r1, r14
005464  7e8103e0  vmmov mr2, r7
005468  9f030004  addli r7, zero, 512
00546c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
005470  b3900718  bfloat2float.rn r1, r15
005474  7e8103e0  vmmov mr2, r7
005478  9f030008  addli r7, zero, 1024
00547c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
005480  b3100818  bfloat2float.rn r1, r16
005484  7e8103e0  vmmov mr2, r7
005488  9f030010  addli r7, zero, 2048
00548c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
005490  b3900818  bfloat2float.rn r1, r17
005494  7e8103e0  vmmov mr2, r7
005498  9f030020  addli r7, zero, 4096
00549c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0054a0  b3900918  bfloat2float.rn r1, r19
0054a4  7e8103e0  vmmov mr2, r7
0054a8  9f030040  addli r7, zero, 8192
0054ac  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0054b0  b3100a18  bfloat2float.rn r1, r20
0054b4  7e8103e0  vmmov mr2, r7
0054b8  ab430000  lui r7, 4
0054bc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0054c0  b3900a18  bfloat2float.rn r1, r21
0054c4  7e8103e0  vmmov mr2, r7
0054c8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0054cc  b3100218  bfloat2float.rn r1, r4
0054d0  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0054d4  16902002  vadd.f.mz.rn vr0{mr1}, vr1, vr2
0054d8  46100f82  vstore_mask16.mz vr0{mr1}, 1024(r30)
0054dc  00a00000  mfence { lm }
0054e0  e30a0ff8  loadli.w r21,  -1024(r30)
0054e4  634a0ff8  loadli.w r20,  -1020(r30)
0054e8  e3091ff8  loadli.w r19,  -1016(r30)
0054ec  e3481ff8  loadli.w r17,  -1012(r30)
0054f0  63082ff8  loadli.w r16,  -1008(r30)
0054f4  e3472ff8  loadli.w r15,  -1004(r30)
0054f8  63073ff8  loadli.w r14,  -1000(r30)
0054fc  e3463ff8  loadli.w r13,  -996(r30)
005500  63064ff8  loadli.w r12,  -992(r30)
005504  e3454ff8  loadli.w r11,  -988(r30)
005508  63055ff8  loadli.w r10,  -984(r30)
00550c  e3445ff8  loadli.w r9,  -980(r30)
005510  63046ff8  loadli.w r8,  -976(r30)
005514  63426ff8  loadli.w r4,  -972(r30)
005518  e3037ff8  loadli.w r7,  -968(r30)
00551c  9780aa01  and r1, r21, r26
005520  130b1904  setlt.u r22, r18, r1
005524  e3407ff8  loadli.w r1,  -964(r30)
005528  3b600b00  bneq r22, zero, 24
00552c  1bcb0a01  srli r22, r21, 16
005530  1b0b1b00  andi r22, r22, 1
005534  8b9a6a11  add.s r21, r21, r22
005538  0b9eca11  add.s r28, r21, r28
00553c  5b010000  j 8
005540  179e8a01  or r28, r21, r24
005544  970aaa01  and r21, r20, r26
005548  930a5905  setlt.u r21, r18, r21
00554c  3bf00a00  bneq r21, zero, 28
005550  9b4a0a01  srli r21, r20, 16
005554  9b8a1a00  andi r21, r21, 1
005558  0b1a5a11  add.s r20, r20, r21
00555c  e30affdf  loadli.w r21,  -4104(r30)
005560  8b1d5a11  add.s r27, r20, r21
005564  5b010000  j 8
005568  971d8a01  or r27, r20, r24
00556c  178aa901  and r20, r19, r26
005570  130a4905  setlt.u r20, r18, r20
005574  3b700a00  bneq r20, zero, 28
005578  1bca0901  srli r20, r19, 16
00557c  1b0a1a00  andi r20, r20, 1
005580  8b994911  add.s r19, r19, r20
005584  630affdf  loadli.w r20,  -4104(r30)
005588  8b9c4911  add.s r25, r19, r20
00558c  5b010000  j 8
005590  979c8901  or r25, r19, r24
005594  9789a801  and r19, r17, r26
005598  93093905  setlt.u r19, r18, r19
00559c  3bf00900  bneq r19, zero, 28
0055a0  9bc90801  srli r19, r17, 16
0055a4  9b891900  andi r19, r19, 1
0055a8  8b983811  add.s r17, r17, r19
0055ac  e309ffdf  loadli.w r19,  -4104(r30)
0055b0  0b9b3811  add.s r22, r17, r19
0055b4  5b010000  j 8
0055b8  179b8801  or r22, r17, r24
0055bc  9708a801  and r17, r16, r26
0055c0  93081905  setlt.u r17, r18, r17
0055c4  3bf00800  bneq r17, zero, 28
0055c8  9b480801  srli r17, r16, 16
0055cc  9b881800  andi r17, r17, 1
0055d0  0b181811  add.s r16, r16, r17
0055d4  e308ffdf  loadli.w r17,  -4104(r30)
0055d8  8b1a1811  add.s r21, r16, r17
0055dc  5b010000  j 8
0055e0  971a8801  or r21, r16, r24
0055e4  1788a701  and r16, r15, r26
0055e8  13080905  setlt.u r16, r18, r16
0055ec  3b700800  bneq r16, zero, 28
0055f0  1bc80701  srli r16, r15, 16
0055f4  1b081800  andi r16, r16, 1
0055f8  8b970711  add.s r15, r15, r16
0055fc  6308ffdf  loadli.w r16,  -4104(r30)
005600  0b9a0711  add.s r20, r15, r16
005604  5b010000  j 8
005608  179a8701  or r20, r15, r24
00560c  9707a701  and r15, r14, r26
005610  9307f904  setlt.u r15, r18, r15
005614  3bf00700  bneq r15, zero, 28
005618  9b470701  srli r15, r14, 16
00561c  9b871700  andi r15, r15, 1
005620  0b17f710  add.s r14, r14, r15
005624  e307ffdf  loadli.w r15,  -4104(r30)
005628  8b19f710  add.s r19, r14, r15
00562c  5b010000  j 8
005630  97198701  or r19, r14, r24
005634  1787a601  and r14, r13, r26
005638  1307e904  setlt.u r14, r18, r14
00563c  3b700700  bneq r14, zero, 28
005640  1bc70601  srli r14, r13, 16
005644  1b071700  andi r14, r14, 1
005648  8b96e610  add.s r13, r13, r14
00564c  6307ffdf  loadli.w r14,  -4104(r30)
005650  0b98e610  add.s r16, r13, r14
005654  5b010000  j 8
005658  17988601  or r16, r13, r24
00565c  9706a601  and r13, r12, r26
005660  9306d904  setlt.u r13, r18, r13
005664  3bf00600  bneq r13, zero, 28
005668  9b460601  srli r13, r12, 16
00566c  9b861600  andi r13, r13, 1
005670  0b16d610  add.s r12, r12, r13
005674  e306ffdf  loadli.w r13,  -4104(r30)
005678  8b17d610  add.s r15, r12, r13
00567c  5b010000  j 8
005680  97178601  or r15, r12, r24
005684  1786a501  and r12, r11, r26
005688  1306c904  setlt.u r12, r18, r12
00568c  3b700600  bneq r12, zero, 28
005690  1bc60501  srli r12, r11, 16
005694  1b061600  andi r12, r12, 1
005698  8b95c510  add.s r11, r11, r12
00569c  6306ffdf  loadli.w r12,  -4104(r30)
0056a0  0b97c510  add.s r14, r11, r12
0056a4  5b010000  j 8
0056a8  17978501  or r14, r11, r24
0056ac  9705a501  and r11, r10, r26
0056b0  9305b904  setlt.u r11, r18, r11
0056b4  3bf00500  bneq r11, zero, 28
0056b8  9b450501  srli r11, r10, 16
0056bc  9b851500  andi r11, r11, 1
0056c0  0b15b510  add.s r10, r10, r11
0056c4  e305ffdf  loadli.w r11,  -4104(r30)
0056c8  8b16b510  add.s r13, r10, r11
0056cc  5b010000  j 8
0056d0  97168501  or r13, r10, r24
0056d4  1785a401  and r10, r9, r26
0056d8  1305a904  setlt.u r10, r18, r10
0056dc  3b700500  bneq r10, zero, 28
0056e0  1bc50401  srli r10, r9, 16
0056e4  1b051500  andi r10, r10, 1
0056e8  8b94a410  add.s r9, r9, r10
0056ec  6305ffdf  loadli.w r10,  -4104(r30)
0056f0  0b96a410  add.s r12, r9, r10
0056f4  5b010000  j 8
0056f8  17968401  or r12, r9, r24
0056fc  9704a401  and r9, r8, r26
005700  93049904  setlt.u r9, r18, r9
005704  3bf00400  bneq r9, zero, 28
005708  9b440401  srli r9, r8, 16
00570c  9b841400  andi r9, r9, 1
005710  0b149410  add.s r8, r8, r9
005714  e304ffdf  loadli.w r9,  -4104(r30)
005718  8b159410  add.s r11, r8, r9
00571c  5b010000  j 8
005720  97158401  or r11, r8, r24
005724  1704a201  and r8, r4, r26
005728  13048904  setlt.u r8, r18, r8
00572c  3b700400  bneq r8, zero, 28
005730  1b440201  srli r8, r4, 16
005734  1b041400  andi r8, r8, 1
005738  0b128210  add.s r4, r4, r8
00573c  6304ffdf  loadli.w r8,  -4104(r30)
005740  0b158210  add.s r10, r4, r8
005744  5b010000  j 8
005748  17158201  or r10, r4, r24
00574c  1782a301  and r4, r7, r26
005750  13024904  setlt.u r4, r18, r4
005754  3b700200  bneq r4, zero, 28
005758  1bc20301  srli r4, r7, 16
00575c  1b021200  andi r4, r4, 1
005760  0b924310  add.s r4, r7, r4
005764  e303ffdf  loadli.w r7,  -4104(r30)
005768  8b147210  add.s r9, r4, r7
00576c  5b010000  j 8
005770  97948301  or r9, r7, r24
005774  1782a001  and r4, r1, r26
005778  13024904  setlt.u r4, r18, r4
00577c  3b700200  bneq r4, zero, 28
005780  1bc20001  srli r4, r1, 16
005784  1b021200  andi r4, r4, 1
005788  8b904010  add.s r1, r1, r4
00578c  6302ffdf  loadli.w r4,  -4104(r30)
005790  8b934010  add.s r7, r1, r4
005794  5b010000  j 8
005798  97938001  or r7, r1, r24
00579c  97007e01  and r1, r28, r23
0057a0  8be05018  sub.f.rn r1, r1, r5
0057a4  8b601120  mul.f.rn r1, r2, r1
0057a8  1782a001  and r4, r1, r26
0057ac  13024904  setlt.u r4, r18, r4
0057b0  3b700200  bneq r4, zero, 28
0057b4  1bc20001  srli r4, r1, 16
0057b8  630effdf  loadli.w r28,  -4104(r30)
0057bc  1b021200  andi r4, r4, 1
0057c0  8b904010  add.s r1, r1, r4
0057c4  8b90c011  add.s r1, r1, r28
0057c8  db010000  j 12
0057cc  630effdf  loadli.w r28,  -4104(r30)
0057d0  97908001  or r1, r1, r24
0057d4  17827d01  and r4, r27, r23
0057d8  9bc00001  srli r1, r1, 16
0057dc  0b625218  sub.f.rn r4, r4, r5
0057e0  73101300  store.h r1, 0(r6)
0057e4  0b624120  mul.f.rn r4, r2, r4
0057e8  1704a201  and r8, r4, r26
0057ec  13048904  setlt.u r8, r18, r8
0057f0  3b600400  bneq r8, zero, 24
0057f4  9b400201  srli r1, r4, 16
0057f8  9b801000  andi r1, r1, 1
0057fc  8b101210  add.s r1, r4, r1
005800  8b90c011  add.s r1, r1, r28
005804  5b010000  j 8
005808  97108201  or r1, r4, r24
00580c  17827c01  and r4, r25, r23
005810  9bc00001  srli r1, r1, 16
005814  0b625218  sub.f.rn r4, r4, r5
005818  73111300  store.h r1, 2(r6)
00581c  0b624120  mul.f.rn r4, r2, r4
005820  1704a201  and r8, r4, r26
005824  13048904  setlt.u r8, r18, r8
005828  3b600400  bneq r8, zero, 24
00582c  9b400201  srli r1, r4, 16
005830  9b801000  andi r1, r1, 1
005834  8b101210  add.s r1, r4, r1
005838  8b90c011  add.s r1, r1, r28
00583c  5b010000  j 8
005840  97108201  or r1, r4, r24
005844  17027b01  and r4, r22, r23
005848  9bc00001  srli r1, r1, 16
00584c  0b625218  sub.f.rn r4, r4, r5
005850  73121300  store.h r1, 4(r6)
005854  0b624120  mul.f.rn r4, r2, r4
005858  1704a201  and r8, r4, r26
00585c  13048904  setlt.u r8, r18, r8
005860  3b600400  bneq r8, zero, 24
005864  9b400201  srli r1, r4, 16
005868  9b801000  andi r1, r1, 1
00586c  8b101210  add.s r1, r4, r1
005870  8b90c011  add.s r1, r1, r28
005874  5b010000  j 8
005878  97108201  or r1, r4, r24
00587c  17827a01  and r4, r21, r23
005880  9bc00001  srli r1, r1, 16
005884  0b625218  sub.f.rn r4, r4, r5
005888  73131300  store.h r1, 6(r6)
00588c  0b624120  mul.f.rn r4, r2, r4
005890  1704a201  and r8, r4, r26
005894  13048904  setlt.u r8, r18, r8
005898  3b600400  bneq r8, zero, 24
00589c  9b400201  srli r1, r4, 16
0058a0  9b801000  andi r1, r1, 1
0058a4  8b101210  add.s r1, r4, r1
0058a8  8b90c011  add.s r1, r1, r28
0058ac  5b010000  j 8
0058b0  97108201  or r1, r4, r24
0058b4  17027a01  and r4, r20, r23
0058b8  9bc00001  srli r1, r1, 16
0058bc  9f0a0ff0  addli r21, r30, -2048
0058c0  0b625218  sub.f.rn r4, r4, r5
0058c4  73141300  store.h r1, 8(r6)
0058c8  0b624120  mul.f.rn r4, r2, r4
0058cc  1704a201  and r8, r4, r26
0058d0  13048904  setlt.u r8, r18, r8
0058d4  3b600400  bneq r8, zero, 24
0058d8  9b400201  srli r1, r4, 16
0058dc  9b801000  andi r1, r1, 1
0058e0  8b101210  add.s r1, r4, r1
0058e4  8b90c011  add.s r1, r1, r28
0058e8  5b010000  j 8
0058ec  97108201  or r1, r4, r24
0058f0  17827901  and r4, r19, r23
0058f4  9bc00001  srli r1, r1, 16
0058f8  0b625218  sub.f.rn r4, r4, r5
0058fc  73151300  store.h r1, 10(r6)
005900  0b624120  mul.f.rn r4, r2, r4
005904  1704a201  and r8, r4, r26
005908  13048904  setlt.u r8, r18, r8
00590c  3b600400  bneq r8, zero, 24
005910  9b400201  srli r1, r4, 16
005914  9b801000  andi r1, r1, 1
005918  8b101210  add.s r1, r4, r1
00591c  8b90c011  add.s r1, r1, r28
005920  5b010000  j 8
005924  97108201  or r1, r4, r24
005928  17027801  and r4, r16, r23
00592c  9bc00001  srli r1, r1, 16
005930  0b625218  sub.f.rn r4, r4, r5
005934  73161300  store.h r1, 12(r6)
005938  0b624120  mul.f.rn r4, r2, r4
00593c  1704a201  and r8, r4, r26
005940  13048904  setlt.u r8, r18, r8
005944  3b600400  bneq r8, zero, 24
005948  9b400201  srli r1, r4, 16
00594c  9b801000  andi r1, r1, 1
005950  8b101210  add.s r1, r4, r1
005954  8b90c011  add.s r1, r1, r28
005958  5b010000  j 8
00595c  97108201  or r1, r4, r24
005960  17827701  and r4, r15, r23
005964  9bc00001  srli r1, r1, 16
005968  0b625218  sub.f.rn r4, r4, r5
00596c  73171300  store.h r1, 14(r6)
005970  0b624120  mul.f.rn r4, r2, r4
005974  1704a201  and r8, r4, r26
005978  13048904  setlt.u r8, r18, r8
00597c  3b600400  bneq r8, zero, 24
005980  9b400201  srli r1, r4, 16
005984  9b801000  andi r1, r1, 1
005988  8b101210  add.s r1, r4, r1
00598c  8b90c011  add.s r1, r1, r28
005990  5b010000  j 8
005994  97108201  or r1, r4, r24
005998  17027701  and r4, r14, r23
00599c  9bc00001  srli r1, r1, 16
0059a0  0b625218  sub.f.rn r4, r4, r5
0059a4  73181300  store.h r1, 16(r6)
0059a8  0b624120  mul.f.rn r4, r2, r4
0059ac  1704a201  and r8, r4, r26
0059b0  13048904  setlt.u r8, r18, r8
0059b4  3b600400  bneq r8, zero, 24
0059b8  9b400201  srli r1, r4, 16
0059bc  9b801000  andi r1, r1, 1
0059c0  8b101210  add.s r1, r4, r1
0059c4  8b90c011  add.s r1, r1, r28
0059c8  5b010000  j 8
0059cc  97108201  or r1, r4, r24
0059d0  17827601  and r4, r13, r23
0059d4  9bc00001  srli r1, r1, 16
0059d8  0b625218  sub.f.rn r4, r4, r5
0059dc  73191300  store.h r1, 18(r6)
0059e0  0b624120  mul.f.rn r4, r2, r4
0059e4  1704a201  and r8, r4, r26
0059e8  13048904  setlt.u r8, r18, r8
0059ec  3b600400  bneq r8, zero, 24
0059f0  9b400201  srli r1, r4, 16
0059f4  9b801000  andi r1, r1, 1
0059f8  8b101210  add.s r1, r4, r1
0059fc  8b90c011  add.s r1, r1, r28
005a00  5b010000  j 8
005a04  97108201  or r1, r4, r24
005a08  17027601  and r4, r12, r23
005a0c  9bc00001  srli r1, r1, 16
005a10  0b625218  sub.f.rn r4, r4, r5
005a14  731a1300  store.h r1, 20(r6)
005a18  0b624120  mul.f.rn r4, r2, r4
005a1c  1704a201  and r8, r4, r26
005a20  13048904  setlt.u r8, r18, r8
005a24  3b600400  bneq r8, zero, 24
005a28  9b400201  srli r1, r4, 16
005a2c  9b801000  andi r1, r1, 1
005a30  8b101210  add.s r1, r4, r1
005a34  8b90c011  add.s r1, r1, r28
005a38  5b010000  j 8
005a3c  97108201  or r1, r4, r24
005a40  17827501  and r4, r11, r23
005a44  9bc00001  srli r1, r1, 16
005a48  0b625218  sub.f.rn r4, r4, r5
005a4c  731b1300  store.h r1, 22(r6)
005a50  0b624120  mul.f.rn r4, r2, r4
005a54  1704a201  and r8, r4, r26
005a58  13048904  setlt.u r8, r18, r8
005a5c  3b600400  bneq r8, zero, 24
005a60  9b400201  srli r1, r4, 16
005a64  9b801000  andi r1, r1, 1
005a68  8b101210  add.s r1, r4, r1
005a6c  8b90c011  add.s r1, r1, r28
005a70  5b010000  j 8
005a74  97108201  or r1, r4, r24
005a78  17027501  and r4, r10, r23
005a7c  9bc00001  srli r1, r1, 16
005a80  9f050004  addli r11, zero, 512
005a84  0b625218  sub.f.rn r4, r4, r5
005a88  731c1300  store.h r1, 24(r6)
005a8c  0b624120  mul.f.rn r4, r2, r4
005a90  1704a201  and r8, r4, r26
005a94  13048904  setlt.u r8, r18, r8
005a98  3b600400  bneq r8, zero, 24
005a9c  9b400201  srli r1, r4, 16
005aa0  9b801000  andi r1, r1, 1
005aa4  8b101210  add.s r1, r4, r1
005aa8  8b90c011  add.s r1, r1, r28
005aac  5b010000  j 8
005ab0  97108201  or r1, r4, r24
005ab4  17827401  and r4, r9, r23
005ab8  9bc00001  srli r1, r1, 16
005abc  0b625218  sub.f.rn r4, r4, r5
005ac0  731d1300  store.h r1, 26(r6)
005ac4  0b624120  mul.f.rn r4, r2, r4
005ac8  1704a201  and r8, r4, r26
005acc  13048904  setlt.u r8, r18, r8
005ad0  3b600400  bneq r8, zero, 24
005ad4  9b400201  srli r1, r4, 16
005ad8  9b801000  andi r1, r1, 1
005adc  8b101210  add.s r1, r4, r1
005ae0  8b90c011  add.s r1, r1, r28
005ae4  5b010000  j 8
005ae8  97108201  or r1, r4, r24
005aec  17827301  and r4, r7, r23
005af0  9bc00001  srli r1, r1, 16
005af4  0b625218  sub.f.rn r4, r4, r5
005af8  731e1300  store.h r1, 28(r6)
005afc  0b624120  mul.f.rn r4, r2, r4
005b00  9703a201  and r7, r4, r26
005b04  93037904  setlt.u r7, r18, r7
005b08  b7bc03fa  beq r7, zero, -2260
005b0c  97108201  or r1, r4, r24
005b10  dbe6feff  j -2252
005b14  9f0e0fc9  addli sp, r30, -7040
005b18  9f8e0e37  addli sp, sp, 7040
005b1c  00a00300  mfence { lm, sm, gm }
005b20  00100000  exit
005b24  00100000  exit
005b28  00100000  exit
005b2c  00100000  exit
005b30  00100000  exit
005b34  00100000  exit
005b38  00100000  exit
005b3c  00100000  exit
005b40  00100000  exit
005b44  00100000  exit
005b48  00100000  exit
005b4c  00100000  exit
005b50  00100000  exit
005b54  00100000  exit
005b58  00100000  exit
005b5c  00100000  exit
005b60  00100000  exit
005b64  00100000  exit
005b68  00100000  exit
005b6c  00100000  exit
005b70  00100000  exit
005b74  00100000  exit
005b78  00100000  exit
005b7c  00100000  exit
005b80  00100000  exit
005b84  00100000  exit
005b88  00100000  exit
005b8c  00100000  exit
005b90  00100000  exit
005b94  00100000  exit
005b98  00100000  exit
005b9c  00100000  exit
005ba0  00100000  exit
005ba4  00100000  exit
005ba8  00100000  exit
005bac  00100000  exit
005bb0  00100000  exit
005bb4  00100000  exit
005bb8  00100000  exit
005bbc  00100000  exit
005bc0  00100000  exit
005bc4  00100000  exit
005bc8  00100000  exit
005bcc  00100000  exit
005bd0  00100000  exit
005bd4  00100000  exit
005bd8  00100000  exit
005bdc  00100000  exit
005be0  00100000  exit
005be4  00100000  exit
005be8  00100000  exit
005bec  00100000  exit
005bf0  00100000  exit
005bf4  00100000  exit
005bf8  00100000  exit
005bfc  00100000  exit
005c00  00100000  exit
005c04  00100000  exit
005c08  00100000  exit
005c0c  00100000  exit
005c10  00100000  exit
005c14  00100000  exit
005c18  00100000  exit
005c1c  00100000  exit
005c20  00100000  exit
005c24  00100000  exit
005c28  00100000  exit
005c2c  00100000  exit
005c30  00100000  exit
005c34  00100000  exit
005c38  00100000  exit
005c3c  00100000  exit
005c40  00100000  exit
005c44  00100000  exit
005c48  00100000  exit
005c4c  00100000  exit
005c50  00100000  exit
005c54  00100000  exit
005c58  00100000  exit
005c5c  00100000  exit
005c60  00100000  exit
005c64  00100000  exit
005c68  00100000  exit
005c6c  00100000  exit
005c70  00100000  exit
005c74  00100000  exit
005c78  00100000  exit
005c7c  00100000  exit
005c80  00100000  exit
005c84  00100000  exit
005c88  00100000  exit
005c8c  00100000  exit
005c90  00100000  exit
005c94  00100000  exit
005c98  00100000  exit
005c9c  00100000  exit
005ca0  00100000  exit
005ca4  00100000  exit
005ca8  00100000  exit
005cac  00100000  exit
005cb0  00100000  exit
005cb4  00100000  exit
005cb8  00100000  exit
005cbc  00100000  exit
005cc0  00100000  exit
005cc4  00100000  exit
005cc8  00100000  exit
005ccc  00100000  exit
005cd0  00100000  exit
005cd4  00100000  exit
005cd8  00100000  exit
005cdc  00100000  exit
005ce0  00100000  exit
005ce4  00100000  exit
005ce8  00100000  exit
005cec  00100000  exit
005cf0  00100000  exit
005cf4  00100000  exit
005cf8  00100000  exit
005cfc  00100000  exit
005d00  00100000  exit
005d04  00100000  exit
005d08  00100000  exit
005d0c  00100000  exit
005d10  00100000  exit
005d14  00100000  exit
005d18  00100000  exit
005d1c  00100000  exit
005d20  00100000  exit
005d24  00100000  exit
005d28  00100000  exit
005d2c  00100000  exit
005d30  00100000  exit
005d34  00100000  exit
005d38  00100000  exit
005d3c  00100000  exit
005d40  00100000  exit
005d44  00100000  exit
005d48  00100000  exit
005d4c  00100000  exit
005d50  00100000  exit
005d54  00100000  exit
005d58  00100000  exit
005d5c  00100000  exit
005d60  00100000  exit
