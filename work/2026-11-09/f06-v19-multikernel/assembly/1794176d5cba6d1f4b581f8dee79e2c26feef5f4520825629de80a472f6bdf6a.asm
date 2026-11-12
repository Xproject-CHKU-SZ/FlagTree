; SHA-256 1794176d5cba6d1f4b581f8dee79e2c26feef5f4520825629de80a472f6bdf6a
; P800 Cluster · XTDK LLVM 19 · 830 / 830 words decoded
; bound names: _dsa_plain_kernel
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
000078  9f494000  addli r19, zero, 36
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
0000dc  9f8e4ef5  addli sp, sp, -1376
0000e0  ab000000  lui r1, 0
0000e4  00310002  core_id r2
0000e8  1f8f4e0a  addli r30, sp, 1312
0000ec  00540002  load_param_i r8, 0
0000f0  9b312100  slli r3, r2, 2
0000f4  9f800000  addli r1, r1, 0
0000f8  63433f00  loadli.w r6,  28(r30)
0000fc  e3024f00  loadli.w r5,  32(r30)
000100  0b921110  add.s r4, r3, r1
000104  e3013f00  loadli.w r3,  24(r30)
000108  67004ff6  storeli.w r4, -1280(r30)
00010c  73600200  stores.w zero, 0(r4)
000110  2bf20000  lui r4, 15
000114  8b113320  mul.s r3, r6, r3
000118  00a00300  mfence { lm, sm, gm }
00011c  9b13f2ff  ori r7, r4, 4095
000120  8b915120  mul.s r3, r3, r5
000124  80a10304  csr_set csr3, r7
000128  00d00100  sync_group
00012c  e74f3ff4  storeli.w r3, -1284(r30)
000130  cbf58104  ble.s r3, r8, 2428
000134  9f210000  addli r3, zero, 2
000138  9b720104  setlti r5, r2, 64
00013c  9f048ffb  addli r9, r30, -576
000140  1f058ffd  addli r10, r30, -320
000144  9f058ff7  addli r11, r30, -1088
000148  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00014c  e70f7ff4  storeli.w r7, -1288(r30)
000150  0b123130  div.s r4, r2, r3
000154  80d10002  load_param_i r3, 1
000158  670f3ff4  storeli.w r3, -1296(r30)
00015c  9b011100  andi r3, r2, 1
000160  e74e3ff4  storeli.w r3, -1300(r30)
000164  abf1ff3f  lui r3, 262143
000168  674f4ff4  storeli.w r4, -1292(r30)
00016c  1b321200  slli r4, r4, 1
000170  9b91e1ff  ori r3, r3, 4094
000174  0b124118  sub.s r4, r2, r4
000178  17013100  and r2, r2, r3
00017c  13030200  seteq r6, r4, zero
000180  1b312100  slli r2, r2, 2
000184  8b101110  add.s r1, r2, r1
000188  e70e1ff4  storeli.w r1, -1304(r30)
00018c  9b307200  slli r1, r4, 7
000190  e7401ff6  storeli.w r1, -1268(r30)
000194  97806200  and r1, r5, r6
000198  674e1ff4  storeli.w r1, -1308(r30)
00019c  5b030000  j 24
0001a0  e300eff5  loadli.w r1,  -1296(r30)
0001a4  0b141410  add.s r8, r8, r1
0001a8  e340fff5  loadli.w r1,  -1284(r30)
0001ac  3f201400  blt.s r8, r1, 8
0001b0  db1f0100  j 2300
0001b4  e3004f00  loadli.w r1,  32(r30)
0001b8  63413f00  loadli.w r2,  28(r30)
0001bc  e7008ff6  storeli.w r8, -1272(r30)
0001c0  9f110000  addli r3, zero, 1
0001c4  8b101430  div.s r1, r8, r1
0001c8  8b902030  div.s r1, r1, r2
0001cc  1f018ff7  addli r2, r30, -1088
0001d0  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0001d4  46100f82  vstore_mask16.mz vr0{mr1}, 1024(r30)
0001d8  46140f82  vstore_mask16.mz vr0{mr1}, 1088(r30)
0001dc  46180f82  vstore_mask16.mz vr0{mr1}, 1152(r30)
0001e0  6341eff5  loadli.w r2,  -1292(r30)
0001e4  461c0f82  vstore_mask16.mz vr0{mr1}, 1216(r30)
0001e8  9bb05000  slli r1, r1, 5
0001ec  8b902010  add.s r1, r1, r2
0001f0  67401ff6  storeli.w r1, -1276(r30)
0001f4  9bb0a000  slli r1, r1, 10
0001f8  46100fa2  vstore_mask16.mz vr0{mr1}, 1280(r30)
0001fc  46140fa2  vstore_mask16.mz vr0{mr1}, 1344(r30)
000200  46180fa2  vstore_mask16.mz vr0{mr1}, 1408(r30)
000204  b3900028  sext_int2long r[2:3], r1
000208  97b03002  sll.d r[2:3], r[2:3], r3
00020c  eb510f00  load.d r[4:5], 0(r30)
000210  8ba01110  add.ul r[2:3], r[4:5], r[2:3]
000214  73381fb0  store.d r[2:3], -1264(r30)
000218  1f010000  addli r2, zero, 0
00021c  00a00000  mfence { lm }
000220  e3401ff6  loadli.w r1,  -1268(r30)
000224  e7412ff6  storeli.w r2, -1252(r30)
000228  9f130000  addli r7, zero, 1
00022c  6b520fb1  load.d r[5:6], -1264(r30)
000230  ab0100f0  lui r3, 983040
000234  1f030002  addli r6, zero, 256
000238  97113300  or r3, r6, r3
00023c  8b101110  add.s r1, r2, r1
000240  b3900028  sext_int2long r[2:3], r1
000244  97b07002  sll.d r[2:3], r[2:3], r7
000248  0b221210  add.ul r[5:6], r[5:6], r[2:3]
00024c  ff219200  l_gm2lm r3, r9, 0(r[5:6])
000250  6b528f00  load.d r[5:6], 8(r30)
000254  ab0100f0  lui r3, 983040
000258  00a00000  mfence { lm }
00025c  97113300  or r3, r6, r3
000260  8b201210  add.ul r[2:3], r[5:6], r[2:3]
000264  ffa1a000  l_gm2lm r3, r10, 0(r[2:3])
000268  9f000000  addli r1, zero, 0
00026c  00a00000  mfence { lm }
000270  1bb18000  slli r2, r1, 8
000274  9bb07000  slli r1, r1, 7
000278  e74b7ff6  storeli.w r7, -1092(r30)
00027c  92330002  vadd.s.mz vr7{mr1}, zero, vr0
000280  12340002  vadd.s.mz vr8{mr1}, zero, vr0
000284  92340002  vadd.s.mz vr9{mr1}, zero, vr0
000288  12350002  vadd.s.mz vr10{mr1}, zero, vr0
00028c  0b9d2510  add.s r26, r11, r2
000290  0b911410  add.s r2, r9, r1
000294  8b101510  add.s r1, r10, r1
000298  42120d02  vload_mask16.mz vr4{mr1}, 0(r26)
00029c  c2118d02  vload_mask16.mz vr3{mr1}, 64(r26)
0002a0  c2100d03  vload_mask16.mz vr1{mr1}, 128(r26)
0002a4  42118d03  vload_mask16.mz vr2{mr1}, 192(r26)
0002a8  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
0002ac  c2128102  vload_mask16.mz vr5{mr1}, 64(r2)
0002b0  6bba6004  load.hu r20, 70(r1)
0002b4  6bb4e001  load.hu r8, 30(r1)
0002b8  6bb10000  load.hu r2, 0(r1)
0002bc  ebb12000  load.hu r3, 2(r1)
0002c0  6bb24000  load.hu r4, 4(r1)
0002c4  ebb26000  load.hu r5, 6(r1)
0002c8  6bb38000  load.hu r6, 8(r1)
0002cc  ebb3a000  load.hu r7, 10(r1)
0002d0  6bb5c000  load.hu r10, 12(r1)
0002d4  ebbbe000  load.hu r23, 14(r1)
0002d8  6bbc0001  load.hu r24, 16(r1)
0002dc  6bbe2001  load.hu r28, 18(r1)
0002e0  6bbb4001  load.hu r22, 20(r1)
0002e4  ebbc6001  load.hu r25, 22(r1)
0002e8  ebb78001  load.hu r15, 24(r1)
0002ec  ebb8a001  load.hu r17, 26(r1)
0002f0  6bb9c001  load.hu r18, 28(r1)
0002f4  ebb44003  load.hu r9, 52(r1)
0002f8  ebb56003  load.hu r11, 54(r1)
0002fc  6bb68003  load.hu r12, 56(r1)
000300  ebbaa003  load.hu r21, 58(r1)
000304  ebb6c003  load.hu r13, 60(r1)
000308  ebb9e003  load.hu r19, 62(r1)
00030c  6bb70004  load.hu r14, 64(r1)
000310  6bb82004  load.hu r16, 66(r1)
000314  ebbd4004  load.hu r27, 68(r1)
000318  86350300  vfp162float_l.rn vr11, vr6
00031c  67024ff7  storeli.w r20, -1248(r30)
000320  6bba8004  load.hu r20, 72(r1)
000324  e7028ff6  storeli.w r8, -1240(r30)
000328  6bb40002  load.hu r8, 32(r1)
00032c  33110120  hfloat2float.rn r2, r2
000330  e7424ff7  storeli.w r20, -1236(r30)
000334  6bbaa004  load.hu r20, 74(r1)
000338  67428ff6  storeli.w r8, -1244(r30)
00033c  6bb42002  load.hu r8, 34(r1)
000340  67034ff7  storeli.w r20, -1232(r30)
000344  6bbac004  load.hu r20, 76(r1)
000348  67438ff6  storeli.w r8, -1228(r30)
00034c  6bb44002  load.hu r8, 36(r1)
000350  e7034ff7  storeli.w r20, -1224(r30)
000354  6bbae004  load.hu r20, 78(r1)
000358  e7438ff6  storeli.w r8, -1220(r30)
00035c  6bb46002  load.hu r8, 38(r1)
000360  67044ff7  storeli.w r20, -1216(r30)
000364  6bba0005  load.hu r20, 80(r1)
000368  67448ff6  storeli.w r8, -1212(r30)
00036c  6bb48002  load.hu r8, 40(r1)
000370  e7044ff7  storeli.w r20, -1208(r30)
000374  6bba2005  load.hu r20, 82(r1)
000378  e7448ff6  storeli.w r8, -1204(r30)
00037c  6bb4a002  load.hu r8, 42(r1)
000380  67054ff7  storeli.w r20, -1200(r30)
000384  6bba4005  load.hu r20, 84(r1)
000388  67458ff6  storeli.w r8, -1196(r30)
00038c  6bb4c002  load.hu r8, 44(r1)
000390  e7054ff7  storeli.w r20, -1192(r30)
000394  6bba6005  load.hu r20, 86(r1)
000398  e7458ff6  storeli.w r8, -1188(r30)
00039c  6bb4e002  load.hu r8, 46(r1)
0003a0  67064ff7  storeli.w r20, -1184(r30)
0003a4  6bba8005  load.hu r20, 88(r1)
0003a8  67468ff6  storeli.w r8, -1180(r30)
0003ac  6bb40003  load.hu r8, 48(r1)
0003b0  e7064ff7  storeli.w r20, -1176(r30)
0003b4  6bbaa005  load.hu r20, 90(r1)
0003b8  e7468ff6  storeli.w r8, -1172(r30)
0003bc  6bb42003  load.hu r8, 50(r1)
0003c0  67074ff7  storeli.w r20, -1168(r30)
0003c4  6bbac005  load.hu r20, 92(r1)
0003c8  67474ff7  storeli.w r20, -1164(r30)
0003cc  6bbae005  load.hu r20, 94(r1)
0003d0  e7474ff7  storeli.w r20, -1156(r30)
0003d4  6bba0006  load.hu r20, 96(r1)
0003d8  e7074ff7  storeli.w r20, -1160(r30)
0003dc  6bba2006  load.hu r20, 98(r1)
0003e0  67084ff7  storeli.w r20, -1152(r30)
0003e4  6bba4006  load.hu r20, 100(r1)
0003e8  67484ff7  storeli.w r20, -1148(r30)
0003ec  6bba6006  load.hu r20, 102(r1)
0003f0  e7084ff7  storeli.w r20, -1144(r30)
0003f4  6bba8006  load.hu r20, 104(r1)
0003f8  e7484ff7  storeli.w r20, -1140(r30)
0003fc  6bbaa006  load.hu r20, 106(r1)
000400  67094ff7  storeli.w r20, -1136(r30)
000404  6bbac006  load.hu r20, 108(r1)
000408  67494ff7  storeli.w r20, -1132(r30)
00040c  6bbae006  load.hu r20, 110(r1)
000410  e7094ff7  storeli.w r20, -1128(r30)
000414  6bba0007  load.hu r20, 112(r1)
000418  e7494ff7  storeli.w r20, -1124(r30)
00041c  6bba2007  load.hu r20, 114(r1)
000420  670a4ff7  storeli.w r20, -1120(r30)
000424  6bba4007  load.hu r20, 116(r1)
000428  674a4ff7  storeli.w r20, -1116(r30)
00042c  6bba6007  load.hu r20, 118(r1)
000430  e70a4ff7  storeli.w r20, -1112(r30)
000434  6bba8007  load.hu r20, 120(r1)
000438  e74a4ff7  storeli.w r20, -1108(r30)
00043c  6bbaa007  load.hu r20, 122(r1)
000440  670b4ff7  storeli.w r20, -1104(r30)
000444  6bbac007  load.hu r20, 124(r1)
000448  ebb0e007  load.hu r1, 126(r1)
00044c  e70b1ff6  storeli.w r1, -1096(r30)
000450  9f100000  addli r1, zero, 1
000454  674b4ff7  storeli.w r20, -1100(r30)
000458  fe8100e0  vmmov mr3, r1
00045c  b3900120  hfloat2float.rn r1, r3
000460  ab810000  lui r3, 8
000464  ea237136  vor.u.mh vr7{mr3}, r2, vr7
000468  1f210000  addli r2, zero, 2
00046c  7e0001e0  vmmov mr0, r2
000470  1f410000  addli r2, zero, 4
000474  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000478  b3100220  hfloat2float.rn r1, r4
00047c  7e0101e0  vmmov mr2, r2
000480  1f011000  addli r2, zero, 8
000484  7e0001e0  vmmov mr0, r2
000488  1f012000  addli r2, zero, 16
00048c  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
000490  b3900220  hfloat2float.rn r1, r5
000494  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000498  b3100320  hfloat2float.rn r1, r6
00049c  7e0001e0  vmmov mr0, r2
0004a0  1f014000  addli r2, zero, 32
0004a4  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0004a8  b3900320  hfloat2float.rn r1, r7
0004ac  7e0001e0  vmmov mr0, r2
0004b0  1f018000  addli r2, zero, 64
0004b4  9f030000  addli r7, zero, 0
0004b8  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0004bc  b3100520  hfloat2float.rn r1, r10
0004c0  7e0001e0  vmmov mr0, r2
0004c4  1f010001  addli r2, zero, 128
0004c8  1f058ffd  addli r10, r30, -320
0004cc  7e0101e0  vmmov mr2, r2
0004d0  1f010002  addli r2, zero, 256
0004d4  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0004d8  b3900b20  hfloat2float.rn r1, r23
0004dc  fe0100c0  vmmov mr3, mr0
0004e0  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
0004e4  b3100c20  hfloat2float.rn r1, r24
0004e8  7e0101e0  vmmov mr2, r2
0004ec  1f010004  addli r2, zero, 512
0004f0  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
0004f4  b3100e20  hfloat2float.rn r1, r28
0004f8  7e0101e0  vmmov mr2, r2
0004fc  1f010008  addli r2, zero, 1024
000500  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
000504  b3100b20  hfloat2float.rn r1, r22
000508  7e0101e0  vmmov mr2, r2
00050c  1f010010  addli r2, zero, 2048
000510  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
000514  b3900c20  hfloat2float.rn r1, r25
000518  7e0101e0  vmmov mr2, r2
00051c  1f010020  addli r2, zero, 4096
000520  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
000524  b3900720  hfloat2float.rn r1, r15
000528  7e0101e0  vmmov mr2, r2
00052c  1f010040  addli r2, zero, 8192
000530  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
000534  b3900820  hfloat2float.rn r1, r17
000538  7e0101e0  vmmov mr2, r2
00053c  2b410000  lui r2, 4
000540  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
000544  b3100920  hfloat2float.rn r1, r18
000548  7e0101e0  vmmov mr2, r2
00054c  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
000550  e3005ff6  loadli.w r1,  -1240(r30)
000554  63414ff6  loadli.w r2,  -1244(r30)
000558  7e8101e0  vmmov mr2, r3
00055c  ab810000  lui r3, 8
000560  b3900020  hfloat2float.rn r1, r1
000564  33110120  hfloat2float.rn r2, r2
000568  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
00056c  9f100000  addli r1, zero, 1
000570  7e8000e0  vmmov mr0, r1
000574  6a248130  vor.u.mh vr8{mr0}, r2, vr8
000578  e3406ff6  loadli.w r1,  -1228(r30)
00057c  1f210000  addli r2, zero, 2
000580  8e937502  vmul.f.mz.rn vr7{mr1}, vr11, vr7
000584  86750300  vfp162float_h.rn vr11, vr6
000588  7e0001e0  vmmov mr0, r2
00058c  1f410000  addli r2, zero, 4
000590  b3900020  hfloat2float.rn r1, r1
000594  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000598  e3407ff6  loadli.w r1,  -1220(r30)
00059c  7e0001e0  vmmov mr0, r2
0005a0  1f011000  addli r2, zero, 8
0005a4  b3900020  hfloat2float.rn r1, r1
0005a8  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0005ac  e3408ff6  loadli.w r1,  -1212(r30)
0005b0  7e0001e0  vmmov mr0, r2
0005b4  1f012000  addli r2, zero, 16
0005b8  b3900020  hfloat2float.rn r1, r1
0005bc  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0005c0  e3409ff6  loadli.w r1,  -1204(r30)
0005c4  7e0001e0  vmmov mr0, r2
0005c8  1f014000  addli r2, zero, 32
0005cc  b3900020  hfloat2float.rn r1, r1
0005d0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0005d4  e340aff6  loadli.w r1,  -1196(r30)
0005d8  7e0001e0  vmmov mr0, r2
0005dc  1f010001  addli r2, zero, 128
0005e0  b3900020  hfloat2float.rn r1, r1
0005e4  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0005e8  e340bff6  loadli.w r1,  -1188(r30)
0005ec  7e0001e0  vmmov mr0, r2
0005f0  1f010002  addli r2, zero, 256
0005f4  b3900020  hfloat2float.rn r1, r1
0005f8  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
0005fc  e340cff6  loadli.w r1,  -1180(r30)
000600  b3900020  hfloat2float.rn r1, r1
000604  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000608  e340dff6  loadli.w r1,  -1172(r30)
00060c  7e0001e0  vmmov mr0, r2
000610  1f010004  addli r2, zero, 512
000614  b3900020  hfloat2float.rn r1, r1
000618  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
00061c  b3100420  hfloat2float.rn r1, r8
000620  7e0001e0  vmmov mr0, r2
000624  1f010008  addli r2, zero, 1024
000628  7e0101e0  vmmov mr2, r2
00062c  1f010010  addli r2, zero, 2048
000630  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000634  b3900420  hfloat2float.rn r1, r9
000638  fe0101e0  vmmov mr3, r2
00063c  1f010020  addli r2, zero, 4096
000640  9f048ffb  addli r9, r30, -576
000644  7e0001e0  vmmov mr0, r2
000648  1f010040  addli r2, zero, 8192
00064c  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
000650  b3900520  hfloat2float.rn r1, r11
000654  9f058ff7  addli r11, r30, -1088
000658  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
00065c  b3100620  hfloat2float.rn r1, r12
000660  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000664  b3900a20  hfloat2float.rn r1, r21
000668  7e0001e0  vmmov mr0, r2
00066c  2b410000  lui r2, 4
000670  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000674  b3900620  hfloat2float.rn r1, r13
000678  7e0001e0  vmmov mr0, r2
00067c  33110720  hfloat2float.rn r2, r14
000680  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000684  b3900920  hfloat2float.rn r1, r19
000688  7e8001e0  vmmov mr0, r3
00068c  ab810000  lui r3, 8
000690  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000694  9f100000  addli r1, zero, 1
000698  7e8000e0  vmmov mr0, r1
00069c  b3100820  hfloat2float.rn r1, r16
0006a0  ea249130  vor.u.mh vr9{mr0}, r2, vr9
0006a4  1f210000  addli r2, zero, 2
0006a8  0e938502  vmul.f.mz.rn vr6{mr1}, vr11, vr8
0006ac  06940300  vfloat2fp16_l.rn vr8, vr7
0006b0  06540300  vfloat2fp16_h.rn vr8, vr6
0006b4  86f30200  vfp162float_h.rn vr7, vr5
0006b8  7e0001e0  vmmov mr0, r2
0006bc  1f410000  addli r2, zero, 4
0006c0  06b30200  vfp162float_l.rn vr6, vr5
0006c4  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
0006c8  b3900d20  hfloat2float.rn r1, r27
0006cc  7e0001e0  vmmov mr0, r2
0006d0  1f011000  addli r2, zero, 8
0006d4  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
0006d8  e3004ff6  loadli.w r1,  -1248(r30)
0006dc  7e0001e0  vmmov mr0, r2
0006e0  1f012000  addli r2, zero, 16
0006e4  b3900020  hfloat2float.rn r1, r1
0006e8  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
0006ec  e3405ff6  loadli.w r1,  -1236(r30)
0006f0  7e0001e0  vmmov mr0, r2
0006f4  1f014000  addli r2, zero, 32
0006f8  b3900020  hfloat2float.rn r1, r1
0006fc  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000700  e3006ff6  loadli.w r1,  -1232(r30)
000704  7e0001e0  vmmov mr0, r2
000708  1f018000  addli r2, zero, 64
00070c  b3900020  hfloat2float.rn r1, r1
000710  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000714  e3007ff6  loadli.w r1,  -1224(r30)
000718  7e0001e0  vmmov mr0, r2
00071c  1f010001  addli r2, zero, 128
000720  b3900020  hfloat2float.rn r1, r1
000724  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000728  e3008ff6  loadli.w r1,  -1216(r30)
00072c  7e0001e0  vmmov mr0, r2
000730  1f010002  addli r2, zero, 256
000734  b3900020  hfloat2float.rn r1, r1
000738  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
00073c  e3009ff6  loadli.w r1,  -1208(r30)
000740  7e0001e0  vmmov mr0, r2
000744  1f010004  addli r2, zero, 512
000748  b3900020  hfloat2float.rn r1, r1
00074c  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000750  e300aff6  loadli.w r1,  -1200(r30)
000754  7e0001e0  vmmov mr0, r2
000758  1f010020  addli r2, zero, 4096
00075c  b3900020  hfloat2float.rn r1, r1
000760  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000764  e300bff6  loadli.w r1,  -1192(r30)
000768  7e0001e0  vmmov mr0, r2
00076c  1f010040  addli r2, zero, 8192
000770  b3900020  hfloat2float.rn r1, r1
000774  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
000778  e300cff6  loadli.w r1,  -1184(r30)
00077c  b3900020  hfloat2float.rn r1, r1
000780  eaa49036  vor.u.mh vr9{mr3}, r1, vr9
000784  e300dff6  loadli.w r1,  -1176(r30)
000788  fe8101e0  vmmov mr3, r3
00078c  b3900020  hfloat2float.rn r1, r1
000790  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000794  e300eff6  loadli.w r1,  -1168(r30)
000798  7e0001e0  vmmov mr0, r2
00079c  2b410000  lui r2, 4
0007a0  b3900020  hfloat2float.rn r1, r1
0007a4  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
0007a8  e340eff6  loadli.w r1,  -1164(r30)
0007ac  7e0001e0  vmmov mr0, r2
0007b0  b3900020  hfloat2float.rn r1, r1
0007b4  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
0007b8  e340fff6  loadli.w r1,  -1156(r30)
0007bc  6301fff6  loadli.w r2,  -1160(r30)
0007c0  b3900020  hfloat2float.rn r1, r1
0007c4  33110120  hfloat2float.rn r2, r2
0007c8  eaa49036  vor.u.mh vr9{mr3}, r1, vr9
0007cc  9f100000  addli r1, zero, 1
0007d0  7e8000e0  vmmov mr0, r1
0007d4  6a25a130  vor.u.mh vr10{mr0}, r2, vr10
0007d8  e3000ff7  loadli.w r1,  -1152(r30)
0007dc  1f210000  addli r2, zero, 2
0007e0  0e139302  vmul.f.mz.rn vr6{mr1}, vr6, vr9
0007e4  7e0001e0  vmmov mr0, r2
0007e8  1f410000  addli r2, zero, 4
0007ec  b3900020  hfloat2float.rn r1, r1
0007f0  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
0007f4  e3400ff7  loadli.w r1,  -1148(r30)
0007f8  7e0001e0  vmmov mr0, r2
0007fc  1f011000  addli r2, zero, 8
000800  b3900020  hfloat2float.rn r1, r1
000804  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000808  e3001ff7  loadli.w r1,  -1144(r30)
00080c  7e0001e0  vmmov mr0, r2
000810  1f012000  addli r2, zero, 16
000814  b3900020  hfloat2float.rn r1, r1
000818  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
00081c  e3401ff7  loadli.w r1,  -1140(r30)
000820  7e0001e0  vmmov mr0, r2
000824  1f014000  addli r2, zero, 32
000828  b3900020  hfloat2float.rn r1, r1
00082c  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000830  e3002ff7  loadli.w r1,  -1136(r30)
000834  7e0001e0  vmmov mr0, r2
000838  1f018000  addli r2, zero, 64
00083c  b3900020  hfloat2float.rn r1, r1
000840  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000844  e3402ff7  loadli.w r1,  -1132(r30)
000848  7e0001e0  vmmov mr0, r2
00084c  1f010001  addli r2, zero, 128
000850  b3900020  hfloat2float.rn r1, r1
000854  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000858  e3003ff7  loadli.w r1,  -1128(r30)
00085c  7e0001e0  vmmov mr0, r2
000860  1f010002  addli r2, zero, 256
000864  b3900020  hfloat2float.rn r1, r1
000868  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
00086c  e3403ff7  loadli.w r1,  -1124(r30)
000870  7e0001e0  vmmov mr0, r2
000874  1f010004  addli r2, zero, 512
000878  b3900020  hfloat2float.rn r1, r1
00087c  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000880  e3004ff7  loadli.w r1,  -1120(r30)
000884  7e0001e0  vmmov mr0, r2
000888  1f010010  addli r2, zero, 2048
00088c  b3900020  hfloat2float.rn r1, r1
000890  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000894  e3404ff7  loadli.w r1,  -1116(r30)
000898  7e0001e0  vmmov mr0, r2
00089c  1f010020  addli r2, zero, 4096
0008a0  b3900020  hfloat2float.rn r1, r1
0008a4  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
0008a8  e3005ff7  loadli.w r1,  -1112(r30)
0008ac  b3900020  hfloat2float.rn r1, r1
0008b0  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
0008b4  e3405ff7  loadli.w r1,  -1108(r30)
0008b8  7e0001e0  vmmov mr0, r2
0008bc  1f010040  addli r2, zero, 8192
0008c0  7e0101e0  vmmov mr2, r2
0008c4  2b410000  lui r2, 4
0008c8  b3900020  hfloat2float.rn r1, r1
0008cc  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
0008d0  e3006ff7  loadli.w r1,  -1104(r30)
0008d4  7e0001e0  vmmov mr0, r2
0008d8  b3900020  hfloat2float.rn r1, r1
0008dc  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
0008e0  e3406ff7  loadli.w r1,  -1100(r30)
0008e4  b3900020  hfloat2float.rn r1, r1
0008e8  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
0008ec  e3007ff7  loadli.w r1,  -1096(r30)
0008f0  b3900020  hfloat2float.rn r1, r1
0008f4  6aa5a036  vor.u.mh vr10{mr3}, r1, vr10
0008f8  8e92a302  vmul.f.mz.rn vr5{mr1}, vr7, vr10
0008fc  86330400  vfp162float_l.rn vr7, vr8
000900  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
000904  86730400  vfp162float_h.rn vr7, vr8
000908  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
00090c  86130300  vfloat2fp16_l.rn vr7, vr6
000910  86d30200  vfloat2fp16_h.rn vr7, vr5
000914  86b20300  vfp162float_l.rn vr5, vr7
000918  96905002  vadd.f.mz.rn vr1{mr1}, vr1, vr5
00091c  86f20300  vfp162float_h.rn vr5, vr7
000920  16115102  vadd.f.mz.rn vr2{mr1}, vr2, vr5
000924  46104d02  vstore_mask16.mz vr4{mr1}, 0(r26)
000928  46143d02  vstore_mask16.mz vr3{mr1}, 64(r26)
00092c  46181d02  vstore_mask16.mz vr1{mr1}, 128(r26)
000930  461c2d02  vstore_mask16.mz vr2{mr1}, 192(r26)
000934  e3407ff7  loadli.w r1,  -1092(r30)
000938  00a00000  mfence { lm }
00093c  1b811000  andi r2, r1, 1
000940  9f100000  addli r1, zero, 1
000944  bb3401fc  bneq r2, zero, -1748
000948  63413ff6  loadli.w r2,  -1252(r30)
00094c  9f000006  addli r1, zero, 768
000950  93001104  setlt.u r1, r2, r1
000954  1f010102  addli r2, r2, 256
000958  3ba300fc  bneq r1, zero, -1848
00095c  9f008ff7  addli r1, r30, -1088
000960  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000964  42110f82  vload_mask16.mz vr2{mr1}, 1024(r30)
000968  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
00096c  42118f82  vload_mask16.mz vr2{mr1}, 1088(r30)
000970  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000974  42110f83  vload_mask16.mz vr2{mr1}, 1152(r30)
000978  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
00097c  42118f83  vload_mask16.mz vr2{mr1}, 1216(r30)
000980  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000984  42110fa2  vload_mask16.mz vr2{mr1}, 1280(r30)
000988  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
00098c  42118fa2  vload_mask16.mz vr2{mr1}, 1344(r30)
000990  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000994  42110fa3  vload_mask16.mz vr2{mr1}, 1408(r30)
000998  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
00099c  fa900040  vextracti.f r1, 0(vr1)
0009a0  7a911040  vextracti.f r2, 1(vr1)
0009a4  8be02010  add.f.rn r1, r1, r2
0009a8  7a912040  vextracti.f r2, 2(vr1)
0009ac  8b601110  add.f.rn r1, r2, r1
0009b0  7a913040  vextracti.f r2, 3(vr1)
0009b4  8b601110  add.f.rn r1, r2, r1
0009b8  7a914040  vextracti.f r2, 4(vr1)
0009bc  8b601110  add.f.rn r1, r2, r1
0009c0  7a915040  vextracti.f r2, 5(vr1)
0009c4  8b601110  add.f.rn r1, r2, r1
0009c8  7a916040  vextracti.f r2, 6(vr1)
0009cc  8b601110  add.f.rn r1, r2, r1
0009d0  7a917040  vextracti.f r2, 7(vr1)
0009d4  8b601110  add.f.rn r1, r2, r1
0009d8  7a918040  vextracti.f r2, 8(vr1)
0009dc  8b601110  add.f.rn r1, r2, r1
0009e0  7a919040  vextracti.f r2, 9(vr1)
0009e4  8b601110  add.f.rn r1, r2, r1
0009e8  7a91a040  vextracti.f r2, 10(vr1)
0009ec  8b601110  add.f.rn r1, r2, r1
0009f0  7a91b040  vextracti.f r2, 11(vr1)
0009f4  8b601110  add.f.rn r1, r2, r1
0009f8  7a91c040  vextracti.f r2, 12(vr1)
0009fc  8b601110  add.f.rn r1, r2, r1
000a00  7a91d040  vextracti.f r2, 13(vr1)
000a04  8b601110  add.f.rn r1, r2, r1
000a08  7a91e040  vextracti.f r2, 14(vr1)
000a0c  8b601110  add.f.rn r1, r2, r1
000a10  7a91f040  vextracti.f r2, 15(vr1)
000a14  8b601110  add.f.rn r1, r2, r1
000a18  63010ff6  loadli.w r2,  -1280(r30)
000a1c  73601100  stores.w r1, 0(r2)
000a20  00a00300  mfence { lm, sm, gm }
000a24  e303fff5  loadli.w r7,  -1288(r30)
000a28  80a10304  csr_set csr3, r7
000a2c  00d00100  sync_group
000a30  e340dff5  loadli.w r1,  -1300(r30)
000a34  3be00000  bneq r1, zero, 24
000a38  e301dff5  loadli.w r3,  -1304(r30)
000a3c  efc00100  loads.w r1, 0(r3)
000a40  6fc14100  loads.w r2, 4(r3)
000a44  8be02010  add.f.rn r1, r1, r2
000a48  73e01100  stores.w r1, 0(r3)
000a4c  00a00300  mfence { lm, sm, gm }
000a50  80a10304  csr_set csr3, r7
000a54  00d00100  sync_group
000a58  63041ff6  loadli.w r8,  -1272(r30)
000a5c  e340cff5  loadli.w r1,  -1308(r30)
000a60  378d00fa  beq r1, zero, -2240
000a64  e300dff5  loadli.w r1,  -1304(r30)
000a68  63410ff6  loadli.w r2,  -1276(r30)
000a6c  9f120000  addli r5, zero, 1
000a70  2b0200f0  lui r4, 983040
000a74  efc00000  loads.w r1, 0(r1)
000a78  33110128  sext_int2long r[3:4], r2
000a7c  17315102  sll.d r[3:4], r[3:4], r5
000a80  eb520f01  load.d r[6:7], 16(r30)
000a84  0ba12210  add.ul r[3:4], r[6:7], r[3:4]
000a88  b3a00000  float2hfloat.rn r1, r1
000a8c  73101ffc  store.h r1, -64(r30)
000a90  9f200000  addli r1, zero, 2
000a94  00a00000  mfence { lm }
000a98  97904000  or r1, r1, r4
000a9c  1f028fff  addli r4, r30, -64
000aa0  ff304100  s_lm2gm r1, r4, 0(r[3:4])
000aa4  00a00000  mfence { lm }
000aa8  5bdffeff  j -2312
000aac  9f8e4e0a  addli sp, sp, 1312
000ab0  00a00300  mfence { lm, sm, gm }
000ab4  00100000  exit
000ab8  00100000  exit
000abc  00100000  exit
000ac0  00100000  exit
000ac4  00100000  exit
000ac8  00100000  exit
000acc  00100000  exit
000ad0  00100000  exit
000ad4  00100000  exit
000ad8  00100000  exit
000adc  00100000  exit
000ae0  00100000  exit
000ae4  00100000  exit
000ae8  00100000  exit
000aec  00100000  exit
000af0  00100000  exit
000af4  00100000  exit
000af8  00100000  exit
000afc  00100000  exit
000b00  00100000  exit
000b04  00100000  exit
000b08  00100000  exit
000b0c  00100000  exit
000b10  00100000  exit
000b14  00100000  exit
000b18  00100000  exit
000b1c  00100000  exit
000b20  00100000  exit
000b24  00100000  exit
000b28  00100000  exit
000b2c  00100000  exit
000b30  00100000  exit
000b34  00100000  exit
000b38  00100000  exit
000b3c  00100000  exit
000b40  00100000  exit
000b44  00100000  exit
000b48  00100000  exit
000b4c  00100000  exit
000b50  00100000  exit
000b54  00100000  exit
000b58  00100000  exit
000b5c  00100000  exit
000b60  00100000  exit
000b64  00100000  exit
000b68  00100000  exit
000b6c  00100000  exit
000b70  00100000  exit
000b74  00100000  exit
000b78  00100000  exit
000b7c  00100000  exit
000b80  00100000  exit
000b84  00100000  exit
000b88  00100000  exit
000b8c  00100000  exit
000b90  00100000  exit
000b94  00100000  exit
000b98  00100000  exit
000b9c  00100000  exit
000ba0  00100000  exit
000ba4  00100000  exit
000ba8  00100000  exit
000bac  00100000  exit
000bb0  00100000  exit
000bb4  00100000  exit
000bb8  00100000  exit
000bbc  00100000  exit
000bc0  00100000  exit
000bc4  00100000  exit
000bc8  00100000  exit
000bcc  00100000  exit
000bd0  00100000  exit
000bd4  00100000  exit
000bd8  00100000  exit
000bdc  00100000  exit
000be0  00100000  exit
000be4  00100000  exit
000be8  00100000  exit
000bec  00100000  exit
000bf0  00100000  exit
000bf4  00100000  exit
000bf8  00100000  exit
000bfc  00100000  exit
000c00  00100000  exit
000c04  00100000  exit
000c08  00100000  exit
000c0c  00100000  exit
000c10  00100000  exit
000c14  00100000  exit
000c18  00100000  exit
000c1c  00100000  exit
000c20  00100000  exit
000c24  00100000  exit
000c28  00100000  exit
000c2c  00100000  exit
000c30  00100000  exit
000c34  00100000  exit
000c38  00100000  exit
000c3c  00100000  exit
000c40  00100000  exit
000c44  00100000  exit
000c48  00100000  exit
000c4c  00100000  exit
000c50  00100000  exit
000c54  00100000  exit
000c58  00100000  exit
000c5c  00100000  exit
000c60  00100000  exit
000c64  00100000  exit
000c68  00100000  exit
000c6c  00100000  exit
000c70  00100000  exit
000c74  00100000  exit
000c78  00100000  exit
000c7c  00100000  exit
000c80  00100000  exit
000c84  00100000  exit
000c88  00100000  exit
000c8c  00100000  exit
000c90  00100000  exit
000c94  00100000  exit
000c98  00100000  exit
000c9c  00100000  exit
000ca0  00100000  exit
000ca4  00100000  exit
000ca8  00100000  exit
000cac  00100000  exit
000cb0  00100000  exit
000cb4  00100000  exit
000cb8  00100000  exit
000cbc  00100000  exit
000cc0  00100000  exit
000cc4  00100000  exit
000cc8  00100000  exit
000ccc  00100000  exit
000cd0  00100000  exit
000cd4  00100000  exit
000cd8  00100000  exit
000cdc  00100000  exit
000ce0  00100000  exit
000ce4  00100000  exit
000ce8  00100000  exit
000cec  00100000  exit
000cf0  00100000  exit
000cf4  00100000  exit
