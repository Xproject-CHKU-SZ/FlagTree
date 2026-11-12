; SHA-256 56bbecc57ceaf3959cafb366d36cbd41e8de9aa023b471ce4c70313048159ccf
; P800 Cluster · XTDK LLVM 19 · 1253 / 1253 words decoded
; bound names: triton_per_fused_mul_sum_0
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
0000dc  9f8e8ef4  addli sp, sp, -1472
0000e0  2b010000  lui r2, 0
0000e4  80300002  core_id r1
0000e8  1f8f0e0b  addli r30, sp, 1408
0000ec  00560002  load_param_i r12, 0
0000f0  9bb12000  slli r3, r1, 2
0000f4  1f010100  addli r2, r2, 0
0000f8  63454f00  loadli.w r10,  36(r30)
0000fc  e3045f00  loadli.w r9,  40(r30)
000100  0b922110  add.s r4, r3, r2
000104  e3014f00  loadli.w r3,  32(r30)
000108  670d4ff4  storeli.w r4, -1328(r30)
00010c  73600200  stores.w zero, 0(r4)
000110  2bf20000  lui r4, 15
000114  8b113520  mul.s r3, r10, r3
000118  00a00300  mfence { lm, sm, gm }
00011c  9b15f2ff  ori r11, r4, 4095
000120  8b969120  mul.s r13, r3, r9
000124  80a10504  csr_set csr3, r11
000128  00d00100  sync_group
00012c  4be0c608  ble.s r13, r12, 4120
000130  9f410000  addli r3, zero, 4
000134  9b823000  andi r5, r1, 3
000138  2bf3ff3f  lui r6, 262143
00013c  1f180000  addli r16, zero, 1
000140  80d70002  load_param_i r15, 1
000144  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000148  eeb5b562  vxor.s.mz vr11{mr1}, vr11, vr11
00014c  e74cbff4  storeli.w r11, -1332(r30)
000150  e70cdff4  storeli.w r13, -1336(r30)
000154  0b973030  div.s r14, r1, r3
000158  e74b5ff4  storeli.w r5, -1348(r30)
00015c  1b13c3ff  ori r6, r6, 4092
000160  eb518f00  load.d r[4:5], 8(r30)
000164  670cfff4  storeli.w r15, -1344(r30)
000168  17836000  and r6, r1, r6
00016c  1b332300  slli r6, r6, 2
000170  9b322700  slli r5, r14, 2
000174  0b112310  add.s r2, r6, r2
000178  674ceff4  storeli.w r14, -1340(r30)
00017c  8b925018  sub.s r5, r1, r5
000180  9bf00004  setlti r1, r1, 64
000184  e70a2ff4  storeli.w r2, -1368(r30)
000188  9bb38200  slli r7, r5, 8
00018c  93820200  seteq r5, r5, zero
000190  e70b7ff4  storeli.w r7, -1352(r30)
000194  b3930328  sext_int2long r[8:9], r7
000198  97b30303  sll.d r[8:9], r[8:9], r16
00019c  1f080004  addli r16, zero, 512
0001a0  8ba17110  add.ul r[4:5], r[4:5], r[8:9]
0001a4  9f73f003  addli r7, zero, 511
0001a8  1f048ff7  addli r8, r30, -1088
0001ac  97805000  and r1, r1, r5
0001b0  73383faa  store.d r[4:5], -1360(r30)
0001b4  e74a1ff4  storeli.w r1, -1364(r30)
0001b8  5b020000  j 16
0001bc  0b16f610  add.s r12, r12, r15
0001c0  3f20d600  blt.s r12, r13, 8
0001c4  5bf00100  j 3968
0001c8  8b109630  div.s r1, r12, r9
0001cc  8b90a030  div.s r1, r1, r10
0001d0  9bb04000  slli r1, r1, 4
0001d4  8b91e010  add.s r3, r1, r14
0001d8  bf9f33fe  blt.s r7, r3, -28
0001dc  9f000000  addli r1, zero, 0
0001e0  e70dcff4  storeli.w r12, -1320(r30)
0001e4  0b111410  add.s r2, r8, r1
0001e8  9fc00000  addli r1, r1, 4
0001ec  73100100  store.h zero, 0(r2)
0001f0  73110100  store.h zero, 2(r2)
0001f4  00a00000  mfence { lm }
0001f8  bbbf00ff  bneq r1, r16, -20
0001fc  63017ff5  loadli.w r2,  -1352(r30)
000200  9bb0a100  slli r1, r3, 10
000204  674d3ff4  storeli.w r3, -1324(r30)
000208  9f120000  addli r5, zero, 1
00020c  92310002  vadd.s.mz vr3{mr1}, zero, vr0
000210  8b902010  add.s r1, r1, r2
000214  2b0100f0  lui r2, 983040
000218  b3910028  sext_int2long r[4:5], r1
00021c  17112800  or r2, r16, r2
000220  ab0000f0  lui r1, 983040
000224  97b15102  sll.d r[4:5], r[4:5], r5
000228  eb520f00  load.d r[6:7], 0(r30)
00022c  97101800  or r1, r16, r1
000230  8ba13210  add.ul r[4:5], r[6:7], r[4:5]
000234  7fa18100  l_gm2lm r2, r8, 0(r[4:5])
000238  6b510fab  load.d r[3:4], -1360(r30)
00023c  1f028ffb  addli r4, r30, -576
000240  ff204100  l_gm2lm r1, r4, 0(r[3:4])
000244  00a00000  mfence { lm }
000248  6b312fdc  load.hu r2, -574(r30)
00024c  eb300fdc  load.hu r1, -576(r30)
000250  e74f2ff4  storeli.w r2, -1284(r30)
000254  6b314fdc  load.hu r2, -572(r30)
000258  b3900020  hfloat2float.rn r1, r1
00025c  67402ff6  storeli.w r2, -1276(r30)
000260  6b316fdc  load.hu r2, -570(r30)
000264  e7402ff6  storeli.w r2, -1268(r30)
000268  6b318fdc  load.hu r2, -568(r30)
00026c  67412ff6  storeli.w r2, -1260(r30)
000270  6b31afdc  load.hu r2, -566(r30)
000274  e7412ff6  storeli.w r2, -1252(r30)
000278  6b31cfdc  load.hu r2, -564(r30)
00027c  e7022ff6  storeli.w r2, -1240(r30)
000280  6b31efdc  load.hu r2, -562(r30)
000284  e7422ff6  storeli.w r2, -1236(r30)
000288  6b310fdd  load.hu r2, -560(r30)
00028c  67032ff6  storeli.w r2, -1232(r30)
000290  6b312fdd  load.hu r2, -558(r30)
000294  67432ff6  storeli.w r2, -1228(r30)
000298  6b314fdd  load.hu r2, -556(r30)
00029c  e7032ff6  storeli.w r2, -1224(r30)
0002a0  6b316fdd  load.hu r2, -554(r30)
0002a4  e7432ff6  storeli.w r2, -1220(r30)
0002a8  6b318fdd  load.hu r2, -552(r30)
0002ac  67042ff6  storeli.w r2, -1216(r30)
0002b0  6b31afdd  load.hu r2, -550(r30)
0002b4  67442ff6  storeli.w r2, -1212(r30)
0002b8  6b31cfdd  load.hu r2, -548(r30)
0002bc  e7042ff6  storeli.w r2, -1208(r30)
0002c0  6b31efdd  load.hu r2, -546(r30)
0002c4  67052ff6  storeli.w r2, -1200(r30)
0002c8  6b310fde  load.hu r2, -544(r30)
0002cc  e7442ff6  storeli.w r2, -1204(r30)
0002d0  6b312fde  load.hu r2, -542(r30)
0002d4  67452ff6  storeli.w r2, -1196(r30)
0002d8  6b314fde  load.hu r2, -540(r30)
0002dc  e7052ff6  storeli.w r2, -1192(r30)
0002e0  6b316fde  load.hu r2, -538(r30)
0002e4  67062ff6  storeli.w r2, -1184(r30)
0002e8  6b318fde  load.hu r2, -536(r30)
0002ec  67462ff6  storeli.w r2, -1180(r30)
0002f0  6b31afde  load.hu r2, -534(r30)
0002f4  e7062ff6  storeli.w r2, -1176(r30)
0002f8  6b31cfde  load.hu r2, -532(r30)
0002fc  e7462ff6  storeli.w r2, -1172(r30)
000300  6b31efde  load.hu r2, -530(r30)
000304  67072ff6  storeli.w r2, -1168(r30)
000308  6b310fdf  load.hu r2, -528(r30)
00030c  67472ff6  storeli.w r2, -1164(r30)
000310  6b312fdf  load.hu r2, -526(r30)
000314  e7072ff6  storeli.w r2, -1160(r30)
000318  6b314fdf  load.hu r2, -524(r30)
00031c  e7472ff6  storeli.w r2, -1156(r30)
000320  6b316fdf  load.hu r2, -522(r30)
000324  00a00000  mfence { lm }
000328  67082ff6  storeli.w r2, -1152(r30)
00032c  1f018ff7  addli r2, r30, -1088
000330  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
000334  42130f82  vload_mask16.mz vr6{mr1}, 1024(r30)
000338  6b31cfe2  load.hu r2, -468(r30)
00033c  eb318fdf  load.hu r3, -520(r30)
000340  6b32afdf  load.hu r4, -518(r30)
000344  eb32cfdf  load.hu r5, -516(r30)
000348  eb33efdf  load.hu r7, -514(r30)
00034c  6b330fe0  load.hu r6, -512(r30)
000350  6b342fe0  load.hu r8, -510(r30)
000354  eb344fe0  load.hu r9, -508(r30)
000358  6b356fe0  load.hu r10, -506(r30)
00035c  eb358fe0  load.hu r11, -504(r30)
000360  6b36afe0  load.hu r12, -502(r30)
000364  eb36cfe0  load.hu r13, -500(r30)
000368  6b37efe0  load.hu r14, -498(r30)
00036c  eb370fe1  load.hu r15, -496(r30)
000370  6b382fe1  load.hu r16, -494(r30)
000374  eb384fe1  load.hu r17, -492(r30)
000378  6b396fe1  load.hu r18, -490(r30)
00037c  eb398fe1  load.hu r19, -488(r30)
000380  6b3aafe1  load.hu r20, -486(r30)
000384  eb3acfe1  load.hu r21, -484(r30)
000388  eb3befe1  load.hu r23, -482(r30)
00038c  6b3b0fe2  load.hu r22, -480(r30)
000390  6b3c2fe2  load.hu r24, -478(r30)
000394  eb3c4fe2  load.hu r25, -476(r30)
000398  6b3d6fe2  load.hu r26, -474(r30)
00039c  eb3d8fe2  load.hu r27, -472(r30)
0003a0  6b3eafe2  load.hu r28, -470(r30)
0003a4  06340100  vfp162float_l.rn vr8, vr2
0003a8  86740100  vfp162float_h.rn vr9, vr2
0003ac  670f2ff4  storeli.w r2, -1296(r30)
0003b0  6b31efe2  load.hu r2, -466(r30)
0003b4  674f2ff4  storeli.w r2, -1292(r30)
0003b8  6b310fe3  load.hu r2, -464(r30)
0003bc  e70f2ff4  storeli.w r2, -1288(r30)
0003c0  6b312fe3  load.hu r2, -462(r30)
0003c4  67002ff6  storeli.w r2, -1280(r30)
0003c8  6b314fe3  load.hu r2, -460(r30)
0003cc  e7002ff6  storeli.w r2, -1272(r30)
0003d0  6b316fe3  load.hu r2, -458(r30)
0003d4  67012ff6  storeli.w r2, -1264(r30)
0003d8  6b318fe3  load.hu r2, -456(r30)
0003dc  e7012ff6  storeli.w r2, -1256(r30)
0003e0  6b31afe3  load.hu r2, -454(r30)
0003e4  67422ff6  storeli.w r2, -1244(r30)
0003e8  6b31cfe3  load.hu r2, -452(r30)
0003ec  67022ff6  storeli.w r2, -1248(r30)
0003f0  6b31efe3  load.hu r2, -450(r30)
0003f4  e7452ff6  storeli.w r2, -1188(r30)
0003f8  1f110000  addli r2, zero, 1
0003fc  fe0101e0  vmmov mr3, r2
000400  1f210000  addli r2, zero, 2
000404  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
000408  e340fff5  loadli.w r1,  -1284(r30)
00040c  7e0001e0  vmmov mr0, r2
000410  1f410000  addli r2, zero, 4
000414  b3900020  hfloat2float.rn r1, r1
000418  7e0101e0  vmmov mr2, r2
00041c  1f011000  addli r2, zero, 8
000420  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000424  e3400ff6  loadli.w r1,  -1276(r30)
000428  fe0101e0  vmmov mr3, r2
00042c  1f012000  addli r2, zero, 16
000430  7e0001e0  vmmov mr0, r2
000434  1f014000  addli r2, zero, 32
000438  b3900020  hfloat2float.rn r1, r1
00043c  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
000440  e3401ff6  loadli.w r1,  -1268(r30)
000444  7e0101e0  vmmov mr2, r2
000448  1f018000  addli r2, zero, 64
00044c  b3900020  hfloat2float.rn r1, r1
000450  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
000454  e3402ff6  loadli.w r1,  -1260(r30)
000458  fe0101e0  vmmov mr3, r2
00045c  1f010001  addli r2, zero, 128
000460  b3900020  hfloat2float.rn r1, r1
000464  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000468  e3403ff6  loadli.w r1,  -1252(r30)
00046c  7e0001e0  vmmov mr0, r2
000470  1f010002  addli r2, zero, 256
000474  b3900020  hfloat2float.rn r1, r1
000478  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
00047c  e3005ff6  loadli.w r1,  -1240(r30)
000480  7e0101e0  vmmov mr2, r2
000484  1f010004  addli r2, zero, 512
000488  b3900020  hfloat2float.rn r1, r1
00048c  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
000490  e3405ff6  loadli.w r1,  -1236(r30)
000494  fe0101e0  vmmov mr3, r2
000498  1f010008  addli r2, zero, 1024
00049c  b3900020  hfloat2float.rn r1, r1
0004a0  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0004a4  e3006ff6  loadli.w r1,  -1232(r30)
0004a8  7e0001e0  vmmov mr0, r2
0004ac  1f010010  addli r2, zero, 2048
0004b0  b3900020  hfloat2float.rn r1, r1
0004b4  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
0004b8  e3406ff6  loadli.w r1,  -1228(r30)
0004bc  7e0101e0  vmmov mr2, r2
0004c0  1f010020  addli r2, zero, 4096
0004c4  b3900020  hfloat2float.rn r1, r1
0004c8  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
0004cc  e3007ff6  loadli.w r1,  -1224(r30)
0004d0  fe0101e0  vmmov mr3, r2
0004d4  1f010040  addli r2, zero, 8192
0004d8  2b800000  lui zero, 8
0004dc  b3900020  hfloat2float.rn r1, r1
0004e0  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0004e4  e3407ff6  loadli.w r1,  -1220(r30)
0004e8  7e0001e0  vmmov mr0, r2
0004ec  2b410000  lui r2, 4
0004f0  b3900020  hfloat2float.rn r1, r1
0004f4  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
0004f8  e3008ff6  loadli.w r1,  -1216(r30)
0004fc  7e0101e0  vmmov mr2, r2
000500  b3900020  hfloat2float.rn r1, r1
000504  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
000508  e3408ff6  loadli.w r1,  -1212(r30)
00050c  fe0100e0  vmmov mr3, zero
000510  17200000  xor zero, zero, zero
000514  12320002  vadd.s.mz vr4{mr1}, zero, vr0
000518  92320002  vadd.s.mz vr5{mr1}, zero, vr0
00051c  92330002  vadd.s.mz vr7{mr1}, zero, vr0
000520  12310002  vadd.s.mz vr2{mr1}, zero, vr0
000524  b3900020  hfloat2float.rn r1, r1
000528  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00052c  e3009ff6  loadli.w r1,  -1208(r30)
000530  b3900020  hfloat2float.rn r1, r1
000534  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
000538  e300aff6  loadli.w r1,  -1200(r30)
00053c  63419ff6  loadli.w r2,  -1204(r30)
000540  b3900020  hfloat2float.rn r1, r1
000544  33110120  hfloat2float.rn r2, r2
000548  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
00054c  9f100000  addli r1, zero, 1
000550  7e8000e0  vmmov mr0, r1
000554  6a224130  vor.u.mh vr4{mr0}, r2, vr4
000558  e340aff6  loadli.w r1,  -1196(r30)
00055c  1f210000  addli r2, zero, 2
000560  0e948102  vmul.f.mz.rn vr8{mr1}, vr3, vr8
000564  92310002  vadd.s.mz vr3{mr1}, zero, vr0
000568  7e0101e0  vmmov mr2, r2
00056c  1f410000  addli r2, zero, 4
000570  b3900020  hfloat2float.rn r1, r1
000574  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
000578  e300bff6  loadli.w r1,  -1192(r30)
00057c  7e0101e0  vmmov mr2, r2
000580  1f011000  addli r2, zero, 8
000584  b3900020  hfloat2float.rn r1, r1
000588  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
00058c  e300cff6  loadli.w r1,  -1184(r30)
000590  7e0101e0  vmmov mr2, r2
000594  1f012000  addli r2, zero, 16
000598  b3900020  hfloat2float.rn r1, r1
00059c  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
0005a0  e340cff6  loadli.w r1,  -1180(r30)
0005a4  7e0101e0  vmmov mr2, r2
0005a8  1f014000  addli r2, zero, 32
0005ac  b3900020  hfloat2float.rn r1, r1
0005b0  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
0005b4  e300dff6  loadli.w r1,  -1176(r30)
0005b8  7e0101e0  vmmov mr2, r2
0005bc  1f018000  addli r2, zero, 64
0005c0  b3900020  hfloat2float.rn r1, r1
0005c4  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
0005c8  e340dff6  loadli.w r1,  -1172(r30)
0005cc  7e0101e0  vmmov mr2, r2
0005d0  1f010001  addli r2, zero, 128
0005d4  b3900020  hfloat2float.rn r1, r1
0005d8  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
0005dc  e300eff6  loadli.w r1,  -1168(r30)
0005e0  7e0101e0  vmmov mr2, r2
0005e4  1f010002  addli r2, zero, 256
0005e8  b3900020  hfloat2float.rn r1, r1
0005ec  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
0005f0  e340eff6  loadli.w r1,  -1164(r30)
0005f4  7e0101e0  vmmov mr2, r2
0005f8  1f010004  addli r2, zero, 512
0005fc  b3900020  hfloat2float.rn r1, r1
000600  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
000604  e300fff6  loadli.w r1,  -1160(r30)
000608  7e0101e0  vmmov mr2, r2
00060c  1f010008  addli r2, zero, 1024
000610  b3900020  hfloat2float.rn r1, r1
000614  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
000618  e340fff6  loadli.w r1,  -1156(r30)
00061c  7e0101e0  vmmov mr2, r2
000620  1f010010  addli r2, zero, 2048
000624  b3900020  hfloat2float.rn r1, r1
000628  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
00062c  e3000ff7  loadli.w r1,  -1152(r30)
000630  7e0101e0  vmmov mr2, r2
000634  1f010020  addli r2, zero, 4096
000638  b3900020  hfloat2float.rn r1, r1
00063c  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
000640  b3900120  hfloat2float.rn r1, r3
000644  7e0101e0  vmmov mr2, r2
000648  1f010040  addli r2, zero, 8192
00064c  ab810000  lui r3, 8
000650  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
000654  b3100220  hfloat2float.rn r1, r4
000658  7e0101e0  vmmov mr2, r2
00065c  2b410000  lui r2, 4
000660  fe0101e0  vmmov mr3, r2
000664  33110320  hfloat2float.rn r2, r6
000668  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
00066c  b3900220  hfloat2float.rn r1, r5
000670  7e8101e0  vmmov mr2, r3
000674  ab810000  lui r3, 8
000678  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
00067c  b3900320  hfloat2float.rn r1, r7
000680  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
000684  ea225130  vor.u.mh vr5{mr0}, r2, vr5
000688  1f210000  addli r2, zero, 2
00068c  b3100420  hfloat2float.rn r1, r8
000690  1f040000  addli r8, zero, 0
000694  7e0001e0  vmmov mr0, r2
000698  1f410000  addli r2, zero, 4
00069c  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0006a0  b3900420  hfloat2float.rn r1, r9
0006a4  7e0001e0  vmmov mr0, r2
0006a8  1f011000  addli r2, zero, 8
0006ac  8e149202  vmul.f.mz.rn vr9{mr1}, vr4, vr9
0006b0  06150400  vfloat2fp16_l.rn vr10, vr8
0006b4  06d50400  vfloat2fp16_h.rn vr10, vr9
0006b8  06340300  vfp162float_l.rn vr8, vr6
0006bc  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0006c0  86740300  vfp162float_h.rn vr9, vr6
0006c4  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0006c8  b3100520  hfloat2float.rn r1, r10
0006cc  7e0001e0  vmmov mr0, r2
0006d0  1f012000  addli r2, zero, 16
0006d4  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0006d8  b3900520  hfloat2float.rn r1, r11
0006dc  7e0001e0  vmmov mr0, r2
0006e0  1f014000  addli r2, zero, 32
0006e4  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0006e8  b3100620  hfloat2float.rn r1, r12
0006ec  7e0001e0  vmmov mr0, r2
0006f0  1f018000  addli r2, zero, 64
0006f4  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0006f8  b3900620  hfloat2float.rn r1, r13
0006fc  7e0001e0  vmmov mr0, r2
000700  1f010001  addli r2, zero, 128
000704  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000708  b3100720  hfloat2float.rn r1, r14
00070c  7e0001e0  vmmov mr0, r2
000710  1f010002  addli r2, zero, 256
000714  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000718  b3900720  hfloat2float.rn r1, r15
00071c  7e0001e0  vmmov mr0, r2
000720  1f010004  addli r2, zero, 512
000724  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000728  b3100820  hfloat2float.rn r1, r16
00072c  7e0001e0  vmmov mr0, r2
000730  1f010008  addli r2, zero, 1024
000734  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000738  b3900820  hfloat2float.rn r1, r17
00073c  7e0001e0  vmmov mr0, r2
000740  1f010010  addli r2, zero, 2048
000744  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000748  b3100920  hfloat2float.rn r1, r18
00074c  7e0001e0  vmmov mr0, r2
000750  1f010020  addli r2, zero, 4096
000754  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000758  b3900920  hfloat2float.rn r1, r19
00075c  7e0001e0  vmmov mr0, r2
000760  1f010040  addli r2, zero, 8192
000764  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000768  b3100a20  hfloat2float.rn r1, r20
00076c  7e0001e0  vmmov mr0, r2
000770  33110b20  hfloat2float.rn r2, r22
000774  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000778  b3900a20  hfloat2float.rn r1, r21
00077c  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
000780  b3900b20  hfloat2float.rn r1, r23
000784  7e8101c0  vmmov mr2, mr3
000788  fe8101e0  vmmov mr3, r3
00078c  9f010040  addli r3, zero, 8192
000790  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
000794  9f100000  addli r1, zero, 1
000798  7e8000e0  vmmov mr0, r1
00079c  b3100c20  hfloat2float.rn r1, r24
0007a0  ea237130  vor.u.mh vr7{mr0}, r2, vr7
0007a4  1f210000  addli r2, zero, 2
0007a8  0e948202  vmul.f.mz.rn vr8{mr1}, vr5, vr8
0007ac  92320002  vadd.s.mz vr5{mr1}, zero, vr0
0007b0  7e0001e0  vmmov mr0, r2
0007b4  1f410000  addli r2, zero, 4
0007b8  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0007bc  b3900c20  hfloat2float.rn r1, r25
0007c0  7e0001e0  vmmov mr0, r2
0007c4  1f011000  addli r2, zero, 8
0007c8  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0007cc  b3100d20  hfloat2float.rn r1, r26
0007d0  7e0001e0  vmmov mr0, r2
0007d4  1f012000  addli r2, zero, 16
0007d8  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0007dc  b3900d20  hfloat2float.rn r1, r27
0007e0  7e0001e0  vmmov mr0, r2
0007e4  1f014000  addli r2, zero, 32
0007e8  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0007ec  b3100e20  hfloat2float.rn r1, r28
0007f0  7e0001e0  vmmov mr0, r2
0007f4  1f018000  addli r2, zero, 64
0007f8  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0007fc  e300eff5  loadli.w r1,  -1296(r30)
000800  7e0001e0  vmmov mr0, r2
000804  1f010001  addli r2, zero, 128
000808  b3900020  hfloat2float.rn r1, r1
00080c  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000810  e340eff5  loadli.w r1,  -1292(r30)
000814  7e0001e0  vmmov mr0, r2
000818  1f010002  addli r2, zero, 256
00081c  b3900020  hfloat2float.rn r1, r1
000820  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000824  e300fff5  loadli.w r1,  -1288(r30)
000828  7e0001e0  vmmov mr0, r2
00082c  1f010004  addli r2, zero, 512
000830  b3900020  hfloat2float.rn r1, r1
000834  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000838  e3000ff6  loadli.w r1,  -1280(r30)
00083c  7e0001e0  vmmov mr0, r2
000840  1f010008  addli r2, zero, 1024
000844  b3900020  hfloat2float.rn r1, r1
000848  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
00084c  e3001ff6  loadli.w r1,  -1272(r30)
000850  7e0001e0  vmmov mr0, r2
000854  1f010010  addli r2, zero, 2048
000858  b3900020  hfloat2float.rn r1, r1
00085c  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000860  e3002ff6  loadli.w r1,  -1264(r30)
000864  7e0001e0  vmmov mr0, r2
000868  1f010020  addli r2, zero, 4096
00086c  b3900020  hfloat2float.rn r1, r1
000870  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000874  e3003ff6  loadli.w r1,  -1256(r30)
000878  7e0001e0  vmmov mr0, r2
00087c  b3900020  hfloat2float.rn r1, r1
000880  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000884  e3404ff6  loadli.w r1,  -1244(r30)
000888  63014ff6  loadli.w r2,  -1248(r30)
00088c  7e8001e0  vmmov mr0, r3
000890  b3900020  hfloat2float.rn r1, r1
000894  33110120  hfloat2float.rn r2, r2
000898  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
00089c  ea237134  vor.u.mh vr7{mr2}, r2, vr7
0008a0  e340bff6  loadli.w r1,  -1188(r30)
0008a4  2b810000  lui r2, 8
0008a8  7e0001e0  vmmov mr0, r2
0008ac  b3900020  hfloat2float.rn r1, r1
0008b0  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0008b4  abf00000  lui r1, 15
0008b8  9ff0f01f  addli r1, r1, 4095
0008bc  7e8000e0  vmmov mr0, r1
0008c0  9f008ff7  addli r1, r30, -1088
0008c4  0e939302  vmul.f.mz.rn vr6{mr1}, vr7, vr9
0008c8  86330500  vfp162float_l.rn vr7, vr10
0008cc  86740500  vfp162float_h.rn vr9, vr10
0008d0  6e917530  vor.f.mh vr2{mr0}, vr11, vr7
0008d4  86130400  vfloat2fp16_l.rn vr7, vr8
0008d8  86530300  vfloat2fp16_h.rn vr7, vr6
0008dc  06b30300  vfp162float_l.rn vr6, vr7
0008e0  06f40300  vfp162float_h.rn vr8, vr7
0008e4  ee919530  vor.f.mh vr3{mr0}, vr11, vr9
0008e8  6e926530  vor.f.mh vr4{mr0}, vr11, vr6
0008ec  ee928530  vor.f.mh vr5{mr0}, vr11, vr8
0008f0  9f808001  addli r1, r1, 192
0008f4  670e1ff4  storeli.w r1, -1312(r30)
0008f8  9f008ffb  addli r1, r30, -576
0008fc  9f800001  addli r1, r1, 128
000900  e74d1ff4  storeli.w r1, -1316(r30)
000904  00a00000  mfence { lm }
000908  9f000ff7  addli r1, r30, -1152
00090c  6301cff5  loadli.w r2,  -1312(r30)
000910  12340002  vadd.s.mz vr8{mr1}, zero, vr0
000914  92340002  vadd.s.mz vr9{mr1}, zero, vr0
000918  12350002  vadd.s.mz vr10{mr1}, zero, vr0
00091c  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
000920  e340bff5  loadli.w r1,  -1316(r30)
000924  92324002  vadd.s.mz vr5{mr1}, zero, vr4
000928  12323002  vadd.s.mz vr4{mr1}, zero, vr3
00092c  92312002  vadd.s.mz vr3{mr1}, zero, vr2
000930  1231b002  vadd.s.mz vr2{mr1}, zero, vr11
000934  92350002  vadd.s.mz vr11{mr1}, zero, vr0
000938  0b138110  add.s r6, r2, r8
00093c  8b908010  add.s r1, r1, r8
000940  1f040401  addli r8, r8, 128
000944  ebb4c001  load.hu r9, 28(r1)
000948  6bb10000  load.hu r2, 0(r1)
00094c  ebb12000  load.hu r3, 2(r1)
000950  6bb24000  load.hu r4, 4(r1)
000954  ebb26000  load.hu r5, 6(r1)
000958  ebb38000  load.hu r7, 8(r1)
00095c  ebb5a000  load.hu r11, 10(r1)
000960  ebb6c000  load.hu r13, 12(r1)
000964  ebb7e000  load.hu r15, 14(r1)
000968  6bb90001  load.hu r18, 16(r1)
00096c  ebb92001  load.hu r19, 18(r1)
000970  ebba4001  load.hu r21, 20(r1)
000974  ebbb6001  load.hu r23, 22(r1)
000978  ebbc8001  load.hu r25, 24(r1)
00097c  ebbda001  load.hu r27, 26(r1)
000980  e70e9ff4  storeli.w r9, -1304(r30)
000984  ebb4e001  load.hu r9, 30(r1)
000988  33110120  hfloat2float.rn r2, r2
00098c  674f9ff4  storeli.w r9, -1292(r30)
000990  ebb40002  load.hu r9, 32(r1)
000994  670f9ff4  storeli.w r9, -1296(r30)
000998  ebb42002  load.hu r9, 34(r1)
00099c  67009ff6  storeli.w r9, -1280(r30)
0009a0  ebb44002  load.hu r9, 36(r1)
0009a4  e7009ff6  storeli.w r9, -1272(r30)
0009a8  ebb46002  load.hu r9, 38(r1)
0009ac  67019ff6  storeli.w r9, -1264(r30)
0009b0  ebb48002  load.hu r9, 40(r1)
0009b4  e7019ff6  storeli.w r9, -1256(r30)
0009b8  ebb4a002  load.hu r9, 42(r1)
0009bc  67029ff6  storeli.w r9, -1248(r30)
0009c0  ebb4c002  load.hu r9, 44(r1)
0009c4  e7029ff6  storeli.w r9, -1240(r30)
0009c8  ebb4e002  load.hu r9, 46(r1)
0009cc  67039ff6  storeli.w r9, -1232(r30)
0009d0  ebb40003  load.hu r9, 48(r1)
0009d4  e7439ff6  storeli.w r9, -1220(r30)
0009d8  ebb42003  load.hu r9, 50(r1)
0009dc  67049ff6  storeli.w r9, -1216(r30)
0009e0  c21383e3  vload_mask16.mz vr7{mr1}, 1984(r6)
0009e4  6bbea004  load.hu r28, 74(r1)
0009e8  42130302  vload_mask16.mz vr6{mr1}, 0(r6)
0009ec  6bb54003  load.hu r10, 52(r1)
0009f0  6bb36003  load.hu r6, 54(r1)
0009f4  ebb48003  load.hu r9, 56(r1)
0009f8  6bb6a003  load.hu r12, 58(r1)
0009fc  6bb7c003  load.hu r14, 60(r1)
000a00  6bb8e003  load.hu r16, 62(r1)
000a04  ebb80004  load.hu r17, 64(r1)
000a08  6bba2004  load.hu r20, 66(r1)
000a0c  6bbb4004  load.hu r22, 68(r1)
000a10  6bbc6004  load.hu r24, 70(r1)
000a14  6bbd8004  load.hu r26, 72(r1)
000a18  86b00300  vfp162float_l.rn vr1, vr7
000a1c  674ecff5  storeli.w r28, -1308(r30)
000a20  6bbec004  load.hu r28, 76(r1)
000a24  e74ecff5  storeli.w r28, -1300(r30)
000a28  6bbee004  load.hu r28, 78(r1)
000a2c  e70fcff5  storeli.w r28, -1288(r30)
000a30  6bbe0005  load.hu r28, 80(r1)
000a34  e74fcff5  storeli.w r28, -1284(r30)
000a38  6bbe2005  load.hu r28, 82(r1)
000a3c  6740cff7  storeli.w r28, -1276(r30)
000a40  6bbe4005  load.hu r28, 84(r1)
000a44  e740cff7  storeli.w r28, -1268(r30)
000a48  6bbe6005  load.hu r28, 86(r1)
000a4c  6741cff7  storeli.w r28, -1260(r30)
000a50  6bbe8005  load.hu r28, 88(r1)
000a54  e741cff7  storeli.w r28, -1252(r30)
000a58  6bbea005  load.hu r28, 90(r1)
000a5c  6742cff7  storeli.w r28, -1244(r30)
000a60  6bbec005  load.hu r28, 92(r1)
000a64  e742cff7  storeli.w r28, -1236(r30)
000a68  6bbee005  load.hu r28, 94(r1)
000a6c  e703cff7  storeli.w r28, -1224(r30)
000a70  6bbe0006  load.hu r28, 96(r1)
000a74  6743cff7  storeli.w r28, -1228(r30)
000a78  6bbe2006  load.hu r28, 98(r1)
000a7c  6744cff7  storeli.w r28, -1212(r30)
000a80  6bbe4006  load.hu r28, 100(r1)
000a84  e704cff7  storeli.w r28, -1208(r30)
000a88  6bbe6006  load.hu r28, 102(r1)
000a8c  e744cff7  storeli.w r28, -1204(r30)
000a90  6bbe8006  load.hu r28, 104(r1)
000a94  6705cff7  storeli.w r28, -1200(r30)
000a98  6bbea006  load.hu r28, 106(r1)
000a9c  6745cff7  storeli.w r28, -1196(r30)
000aa0  6bbec006  load.hu r28, 108(r1)
000aa4  e705cff7  storeli.w r28, -1192(r30)
000aa8  6bbee006  load.hu r28, 110(r1)
000aac  e745cff7  storeli.w r28, -1188(r30)
000ab0  6bbe0007  load.hu r28, 112(r1)
000ab4  6706cff7  storeli.w r28, -1184(r30)
000ab8  6bbe2007  load.hu r28, 114(r1)
000abc  6746cff7  storeli.w r28, -1180(r30)
000ac0  6bbe4007  load.hu r28, 116(r1)
000ac4  e706cff7  storeli.w r28, -1176(r30)
000ac8  6bbe6007  load.hu r28, 118(r1)
000acc  e746cff7  storeli.w r28, -1172(r30)
000ad0  6bbe8007  load.hu r28, 120(r1)
000ad4  6707cff7  storeli.w r28, -1168(r30)
000ad8  6bbea007  load.hu r28, 122(r1)
000adc  6747cff7  storeli.w r28, -1164(r30)
000ae0  6bbec007  load.hu r28, 124(r1)
000ae4  ebb0e007  load.hu r1, 126(r1)
000ae8  e7471ff6  storeli.w r1, -1156(r30)
000aec  9f100000  addli r1, zero, 1
000af0  e707cff7  storeli.w r28, -1160(r30)
000af4  7e8100e0  vmmov mr2, r1
000af8  b3900120  hfloat2float.rn r1, r3
000afc  ab810000  lui r3, 8
000b00  6a248134  vor.u.mh vr8{mr2}, r2, vr8
000b04  1f210000  addli r2, zero, 2
000b08  fe0101e0  vmmov mr3, r2
000b0c  1f410000  addli r2, zero, 4
000b10  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
000b14  b3100220  hfloat2float.rn r1, r4
000b18  7e0001e0  vmmov mr0, r2
000b1c  1f011000  addli r2, zero, 8
000b20  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000b24  b3900220  hfloat2float.rn r1, r5
000b28  7e0100c0  vmmov mr2, mr0
000b2c  7e0001e0  vmmov mr0, r2
000b30  1f012000  addli r2, zero, 16
000b34  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000b38  b3900320  hfloat2float.rn r1, r7
000b3c  7e0001e0  vmmov mr0, r2
000b40  1f014000  addli r2, zero, 32
000b44  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000b48  b3900520  hfloat2float.rn r1, r11
000b4c  7e0001e0  vmmov mr0, r2
000b50  1f018000  addli r2, zero, 64
000b54  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000b58  b3900620  hfloat2float.rn r1, r13
000b5c  7e0001e0  vmmov mr0, r2
000b60  1f010001  addli r2, zero, 128
000b64  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000b68  b3900720  hfloat2float.rn r1, r15
000b6c  7e0001e0  vmmov mr0, r2
000b70  1f010002  addli r2, zero, 256
000b74  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000b78  b3100920  hfloat2float.rn r1, r18
000b7c  7e0001e0  vmmov mr0, r2
000b80  1f010004  addli r2, zero, 512
000b84  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000b88  b3900920  hfloat2float.rn r1, r19
000b8c  7e0001e0  vmmov mr0, r2
000b90  1f010008  addli r2, zero, 1024
000b94  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000b98  b3900a20  hfloat2float.rn r1, r21
000b9c  7e0001e0  vmmov mr0, r2
000ba0  1f010010  addli r2, zero, 2048
000ba4  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000ba8  b3900b20  hfloat2float.rn r1, r23
000bac  7e0001e0  vmmov mr0, r2
000bb0  1f010020  addli r2, zero, 4096
000bb4  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000bb8  b3900c20  hfloat2float.rn r1, r25
000bbc  7e0001e0  vmmov mr0, r2
000bc0  1f010040  addli r2, zero, 8192
000bc4  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000bc8  b3900d20  hfloat2float.rn r1, r27
000bcc  7e0001e0  vmmov mr0, r2
000bd0  2b410000  lui r2, 4
000bd4  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000bd8  e300dff5  loadli.w r1,  -1304(r30)
000bdc  7e0001e0  vmmov mr0, r2
000be0  b3900020  hfloat2float.rn r1, r1
000be4  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000be8  e340eff5  loadli.w r1,  -1292(r30)
000bec  6301eff5  loadli.w r2,  -1296(r30)
000bf0  7e8001e0  vmmov mr0, r3
000bf4  ab810000  lui r3, 8
000bf8  b3900020  hfloat2float.rn r1, r1
000bfc  33110120  hfloat2float.rn r2, r2
000c00  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000c04  9f100000  addli r1, zero, 1
000c08  7e8000e0  vmmov mr0, r1
000c0c  ea249130  vor.u.mh vr9{mr0}, r2, vr9
000c10  e3000ff6  loadli.w r1,  -1280(r30)
000c14  7e8001c0  vmmov mr0, mr3
000c18  1f011000  addli r2, zero, 8
000c1c  8e101402  vmul.f.mz.rn vr1{mr1}, vr8, vr1
000c20  06f40300  vfp162float_h.rn vr8, vr7
000c24  b3900020  hfloat2float.rn r1, r1
000c28  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000c2c  e3001ff6  loadli.w r1,  -1272(r30)
000c30  7e0001e0  vmmov mr0, r2
000c34  1f012000  addli r2, zero, 16
000c38  fe0101e0  vmmov mr3, r2
000c3c  1f014000  addli r2, zero, 32
000c40  b3900020  hfloat2float.rn r1, r1
000c44  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
000c48  e3002ff6  loadli.w r1,  -1264(r30)
000c4c  b3900020  hfloat2float.rn r1, r1
000c50  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000c54  e3003ff6  loadli.w r1,  -1256(r30)
000c58  7e0001e0  vmmov mr0, r2
000c5c  1f018000  addli r2, zero, 64
000c60  b3900020  hfloat2float.rn r1, r1
000c64  eaa49036  vor.u.mh vr9{mr3}, r1, vr9
000c68  e3004ff6  loadli.w r1,  -1248(r30)
000c6c  b3900020  hfloat2float.rn r1, r1
000c70  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000c74  e3005ff6  loadli.w r1,  -1240(r30)
000c78  7e0001e0  vmmov mr0, r2
000c7c  1f010001  addli r2, zero, 128
000c80  b3900020  hfloat2float.rn r1, r1
000c84  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000c88  e3006ff6  loadli.w r1,  -1232(r30)
000c8c  7e0001e0  vmmov mr0, r2
000c90  1f010002  addli r2, zero, 256
000c94  b3900020  hfloat2float.rn r1, r1
000c98  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000c9c  e3407ff6  loadli.w r1,  -1220(r30)
000ca0  7e0001e0  vmmov mr0, r2
000ca4  1f010004  addli r2, zero, 512
000ca8  b3900020  hfloat2float.rn r1, r1
000cac  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000cb0  e3008ff6  loadli.w r1,  -1216(r30)
000cb4  7e0001e0  vmmov mr0, r2
000cb8  1f010008  addli r2, zero, 1024
000cbc  b3900020  hfloat2float.rn r1, r1
000cc0  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000cc4  b3100520  hfloat2float.rn r1, r10
000cc8  7e0001e0  vmmov mr0, r2
000ccc  1f010010  addli r2, zero, 2048
000cd0  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000cd4  b3100320  hfloat2float.rn r1, r6
000cd8  7e0001e0  vmmov mr0, r2
000cdc  1f010020  addli r2, zero, 4096
000ce0  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000ce4  b3900420  hfloat2float.rn r1, r9
000ce8  7e0001e0  vmmov mr0, r2
000cec  1f010040  addli r2, zero, 8192
000cf0  7e0101e0  vmmov mr2, r2
000cf4  2b410000  lui r2, 4
000cf8  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000cfc  b3100620  hfloat2float.rn r1, r12
000d00  7e0001e0  vmmov mr0, r2
000d04  33910820  hfloat2float.rn r2, r17
000d08  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
000d0c  b3100720  hfloat2float.rn r1, r14
000d10  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000d14  b3100820  hfloat2float.rn r1, r16
000d18  7e8001e0  vmmov mr0, r3
000d1c  ab810000  lui r3, 8
000d20  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000d24  9f100000  addli r1, zero, 1
000d28  7e8000e0  vmmov mr0, r1
000d2c  b3100a20  hfloat2float.rn r1, r20
000d30  6a25a130  vor.u.mh vr10{mr0}, r2, vr10
000d34  1f210000  addli r2, zero, 2
000d38  8e938402  vmul.f.mz.rn vr7{mr1}, vr9, vr8
000d3c  06940000  vfloat2fp16_l.rn vr8, vr1
000d40  06d40300  vfloat2fp16_h.rn vr8, vr7
000d44  86300300  vfp162float_l.rn vr1, vr6
000d48  86740300  vfp162float_h.rn vr9, vr6
000d4c  7e0001e0  vmmov mr0, r2
000d50  1f410000  addli r2, zero, 4
000d54  92330002  vadd.s.mz vr7{mr1}, zero, vr0
000d58  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000d5c  b3100b20  hfloat2float.rn r1, r22
000d60  7e0001e0  vmmov mr0, r2
000d64  1f011000  addli r2, zero, 8
000d68  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000d6c  b3100c20  hfloat2float.rn r1, r24
000d70  7e0001e0  vmmov mr0, r2
000d74  1f014000  addli r2, zero, 32
000d78  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000d7c  b3100d20  hfloat2float.rn r1, r26
000d80  7e0001e0  vmmov mr0, r2
000d84  1f018000  addli r2, zero, 64
000d88  6aa5a036  vor.u.mh vr10{mr3}, r1, vr10
000d8c  e340cff5  loadli.w r1,  -1308(r30)
000d90  b3900020  hfloat2float.rn r1, r1
000d94  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000d98  e340dff5  loadli.w r1,  -1300(r30)
000d9c  7e0001e0  vmmov mr0, r2
000da0  1f010001  addli r2, zero, 128
000da4  b3900020  hfloat2float.rn r1, r1
000da8  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000dac  e300fff5  loadli.w r1,  -1288(r30)
000db0  7e0001e0  vmmov mr0, r2
000db4  1f010002  addli r2, zero, 256
000db8  b3900020  hfloat2float.rn r1, r1
000dbc  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000dc0  e340fff5  loadli.w r1,  -1284(r30)
000dc4  7e0001e0  vmmov mr0, r2
000dc8  1f010004  addli r2, zero, 512
000dcc  b3900020  hfloat2float.rn r1, r1
000dd0  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000dd4  e3400ff6  loadli.w r1,  -1276(r30)
000dd8  7e0001e0  vmmov mr0, r2
000ddc  1f010008  addli r2, zero, 1024
000de0  b3900020  hfloat2float.rn r1, r1
000de4  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000de8  e3401ff6  loadli.w r1,  -1268(r30)
000dec  7e0001e0  vmmov mr0, r2
000df0  1f010010  addli r2, zero, 2048
000df4  b3900020  hfloat2float.rn r1, r1
000df8  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000dfc  e3402ff6  loadli.w r1,  -1260(r30)
000e00  7e0001e0  vmmov mr0, r2
000e04  1f010020  addli r2, zero, 4096
000e08  b3900020  hfloat2float.rn r1, r1
000e0c  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000e10  e3403ff6  loadli.w r1,  -1252(r30)
000e14  7e0001e0  vmmov mr0, r2
000e18  2b410000  lui r2, 4
000e1c  b3900020  hfloat2float.rn r1, r1
000e20  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000e24  e3404ff6  loadli.w r1,  -1244(r30)
000e28  7e0001e0  vmmov mr0, r2
000e2c  b3900020  hfloat2float.rn r1, r1
000e30  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
000e34  e3405ff6  loadli.w r1,  -1236(r30)
000e38  b3900020  hfloat2float.rn r1, r1
000e3c  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000e40  e3007ff6  loadli.w r1,  -1224(r30)
000e44  63416ff6  loadli.w r2,  -1228(r30)
000e48  7e8001e0  vmmov mr0, r3
000e4c  b3900020  hfloat2float.rn r1, r1
000e50  33110120  hfloat2float.rn r2, r2
000e54  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000e58  9f100000  addli r1, zero, 1
000e5c  7e8000e0  vmmov mr0, r1
000e60  ea25b130  vor.u.mh vr11{mr0}, r2, vr11
000e64  e3408ff6  loadli.w r1,  -1212(r30)
000e68  1f210000  addli r2, zero, 2
000e6c  8e101502  vmul.f.mz.rn vr1{mr1}, vr10, vr1
000e70  06750400  vfp162float_h.rn vr10, vr8
000e74  7e0001e0  vmmov mr0, r2
000e78  1f410000  addli r2, zero, 4
000e7c  b3900020  hfloat2float.rn r1, r1
000e80  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000e84  e3009ff6  loadli.w r1,  -1208(r30)
000e88  7e0001e0  vmmov mr0, r2
000e8c  1f011000  addli r2, zero, 8
000e90  b3900020  hfloat2float.rn r1, r1
000e94  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000e98  e3409ff6  loadli.w r1,  -1204(r30)
000e9c  7e0001e0  vmmov mr0, r2
000ea0  1f014000  addli r2, zero, 32
000ea4  b3900020  hfloat2float.rn r1, r1
000ea8  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000eac  e300aff6  loadli.w r1,  -1200(r30)
000eb0  7e0001e0  vmmov mr0, r2
000eb4  1f018000  addli r2, zero, 64
000eb8  b3900020  hfloat2float.rn r1, r1
000ebc  eaa5b036  vor.u.mh vr11{mr3}, r1, vr11
000ec0  e340aff6  loadli.w r1,  -1196(r30)
000ec4  b3900020  hfloat2float.rn r1, r1
000ec8  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000ecc  e300bff6  loadli.w r1,  -1192(r30)
000ed0  7e0001e0  vmmov mr0, r2
000ed4  1f010001  addli r2, zero, 128
000ed8  b3900020  hfloat2float.rn r1, r1
000edc  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000ee0  e340bff6  loadli.w r1,  -1188(r30)
000ee4  7e0001e0  vmmov mr0, r2
000ee8  1f010002  addli r2, zero, 256
000eec  b3900020  hfloat2float.rn r1, r1
000ef0  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000ef4  e300cff6  loadli.w r1,  -1184(r30)
000ef8  7e0001e0  vmmov mr0, r2
000efc  1f010004  addli r2, zero, 512
000f00  b3900020  hfloat2float.rn r1, r1
000f04  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000f08  e340cff6  loadli.w r1,  -1180(r30)
000f0c  7e0001e0  vmmov mr0, r2
000f10  1f010008  addli r2, zero, 1024
000f14  b3900020  hfloat2float.rn r1, r1
000f18  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000f1c  e300dff6  loadli.w r1,  -1176(r30)
000f20  7e0001e0  vmmov mr0, r2
000f24  1f010010  addli r2, zero, 2048
000f28  b3900020  hfloat2float.rn r1, r1
000f2c  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000f30  e340dff6  loadli.w r1,  -1172(r30)
000f34  7e0001e0  vmmov mr0, r2
000f38  1f010020  addli r2, zero, 4096
000f3c  b3900020  hfloat2float.rn r1, r1
000f40  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000f44  e300eff6  loadli.w r1,  -1168(r30)
000f48  7e0001e0  vmmov mr0, r2
000f4c  2b410000  lui r2, 4
000f50  b3900020  hfloat2float.rn r1, r1
000f54  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000f58  e340eff6  loadli.w r1,  -1164(r30)
000f5c  7e0001e0  vmmov mr0, r2
000f60  2b810000  lui r2, 8
000f64  b3900020  hfloat2float.rn r1, r1
000f68  eaa5b034  vor.u.mh vr11{mr2}, r1, vr11
000f6c  e300fff6  loadli.w r1,  -1160(r30)
000f70  b3900020  hfloat2float.rn r1, r1
000f74  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000f78  e340fff6  loadli.w r1,  -1156(r30)
000f7c  7e0001e0  vmmov mr0, r2
000f80  b3900020  hfloat2float.rn r1, r1
000f84  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000f88  9f000ff7  addli r1, r30, -1152
000f8c  0e939502  vmul.f.mz.rn vr6{mr1}, vr11, vr9
000f90  92352002  vadd.s.mz vr11{mr1}, zero, vr2
000f94  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000f98  92314002  vadd.s.mz vr3{mr1}, zero, vr4
000f9c  12325002  vadd.s.mz vr4{mr1}, zero, vr5
000fa0  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
000fa4  abf00000  lui r1, 15
000fa8  86340400  vfp162float_l.rn vr9, vr8
000fac  12340002  vadd.s.mz vr8{mr1}, zero, vr0
000fb0  9ff0f01f  addli r1, r1, 4095
000fb4  7e8000e0  vmmov mr0, r1
000fb8  9f000003  addli r1, zero, 384
000fbc  ee939530  vor.f.mh vr7{mr0}, vr11, vr9
000fc0  92340002  vadd.s.mz vr9{mr1}, zero, vr0
000fc4  ee94a530  vor.f.mh vr9{mr0}, vr11, vr10
000fc8  06950000  vfloat2fp16_l.rn vr10, vr1
000fcc  06550300  vfloat2fp16_h.rn vr10, vr6
000fd0  86300500  vfp162float_l.rn vr1, vr10
000fd4  6e941530  vor.f.mh vr8{mr0}, vr11, vr1
000fd8  06730500  vfp162float_h.rn vr6, vr10
000fdc  16117102  vadd.f.mz.rn vr2{mr1}, vr2, vr7
000fe0  92300002  vadd.s.mz vr1{mr1}, zero, vr0
000fe4  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
000fe8  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
000fec  ee906530  vor.f.mh vr1{mr0}, vr11, vr6
000ff0  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
000ff4  3b5414fc  bneq r8, r1, -1772
000ff8  96103102  vadd.f.mz.rn vr1{mr1}, vr2, vr3
000ffc  9f73f003  addli r7, zero, 511
001000  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
001004  16915002  vadd.f.mz.rn vr2{mr1}, vr1, vr5
001008  fa100140  vextracti.f r1, 0(vr2)
00100c  7a111140  vextracti.f r2, 1(vr2)
001010  8be02010  add.f.rn r1, r1, r2
001014  7a112140  vextracti.f r2, 2(vr2)
001018  8b601110  add.f.rn r1, r2, r1
00101c  7a113140  vextracti.f r2, 3(vr2)
001020  8b601110  add.f.rn r1, r2, r1
001024  7a114140  vextracti.f r2, 4(vr2)
001028  8b601110  add.f.rn r1, r2, r1
00102c  7a115140  vextracti.f r2, 5(vr2)
001030  8b601110  add.f.rn r1, r2, r1
001034  7a116140  vextracti.f r2, 6(vr2)
001038  8b601110  add.f.rn r1, r2, r1
00103c  7a117140  vextracti.f r2, 7(vr2)
001040  8b601110  add.f.rn r1, r2, r1
001044  7a118140  vextracti.f r2, 8(vr2)
001048  8b601110  add.f.rn r1, r2, r1
00104c  7a119140  vextracti.f r2, 9(vr2)
001050  8b601110  add.f.rn r1, r2, r1
001054  7a11a140  vextracti.f r2, 10(vr2)
001058  8b601110  add.f.rn r1, r2, r1
00105c  7a11b140  vextracti.f r2, 11(vr2)
001060  8b601110  add.f.rn r1, r2, r1
001064  7a11c140  vextracti.f r2, 12(vr2)
001068  8b601110  add.f.rn r1, r2, r1
00106c  7a11d140  vextracti.f r2, 13(vr2)
001070  8b601110  add.f.rn r1, r2, r1
001074  7a11e140  vextracti.f r2, 14(vr2)
001078  8b601110  add.f.rn r1, r2, r1
00107c  7a11f140  vextracti.f r2, 15(vr2)
001080  8b601110  add.f.rn r1, r2, r1
001084  6301aff5  loadli.w r2,  -1328(r30)
001088  73601100  stores.w r1, 0(r2)
00108c  00a00300  mfence { lm, sm, gm }
001090  e3045f00  loadli.w r9,  40(r30)
001094  63454f00  loadli.w r10,  36(r30)
001098  e3459ff5  loadli.w r11,  -1332(r30)
00109c  80a10504  csr_set csr3, r11
0010a0  00d00100  sync_group
0010a4  6306bff5  loadli.w r12,  -1320(r30)
0010a8  e3069ff5  loadli.w r13,  -1336(r30)
0010ac  63478ff5  loadli.w r14,  -1340(r30)
0010b0  e3078ff5  loadli.w r15,  -1344(r30)
0010b4  e3407ff5  loadli.w r1,  -1348(r30)
0010b8  bba00000  bneq r1, zero, 40
0010bc  63025ff5  loadli.w r4,  -1368(r30)
0010c0  ef400200  loads.w r1, 0(r4)
0010c4  6f414200  loads.w r2, 4(r4)
0010c8  ef418200  loads.w r3, 8(r4)
0010cc  8be02010  add.f.rn r1, r1, r2
0010d0  6f41c200  loads.w r2, 12(r4)
0010d4  8be03010  add.f.rn r1, r1, r3
0010d8  8be02010  add.f.rn r1, r1, r2
0010dc  73601200  stores.w r1, 0(r4)
0010e0  00a00300  mfence { lm, sm, gm }
0010e4  80a10504  csr_set csr3, r11
0010e8  00d00100  sync_group
0010ec  e3405ff5  loadli.w r1,  -1364(r30)
0010f0  6341aff5  loadli.w r2,  -1324(r30)
0010f4  1f048ff7  addli r8, r30, -1088
0010f8  1f080004  addli r16, zero, 512
0010fc  378300f8  beq r1, zero, -3904
001100  e3005ff5  loadli.w r1,  -1368(r30)
001104  33110128  sext_int2long r[3:4], r2
001108  9f120000  addli r5, zero, 1
00110c  2b0200f0  lui r4, 983040
001110  17315102  sll.d r[3:4], r[3:4], r5
001114  eb520f01  load.d r[6:7], 16(r30)
001118  efc00000  loads.w r1, 0(r1)
00111c  0ba12210  add.ul r[3:4], r[6:7], r[3:4]
001120  b3a00000  float2hfloat.rn r1, r1
001124  73101ffc  store.h r1, -64(r30)
001128  9f200000  addli r1, zero, 2
00112c  00a00000  mfence { lm }
001130  97904000  or r1, r1, r4
001134  1f028fff  addli r4, r30, -64
001138  ff304100  s_lm2gm r1, r4, 0(r[3:4])
00113c  00a00000  mfence { lm }
001140  db0ffeff  j -3972
001144  9f0e0ff5  addli sp, r30, -1408
001148  9f8e0e0b  addli sp, sp, 1408
00114c  00a00300  mfence { lm, sm, gm }
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
001244  00100000  exit
001248  00100000  exit
00124c  00100000  exit
001250  00100000  exit
001254  00100000  exit
001258  00100000  exit
00125c  00100000  exit
001260  00100000  exit
001264  00100000  exit
001268  00100000  exit
00126c  00100000  exit
001270  00100000  exit
001274  00100000  exit
001278  00100000  exit
00127c  00100000  exit
001280  00100000  exit
001284  00100000  exit
001288  00100000  exit
00128c  00100000  exit
001290  00100000  exit
001294  00100000  exit
001298  00100000  exit
00129c  00100000  exit
0012a0  00100000  exit
0012a4  00100000  exit
0012a8  00100000  exit
0012ac  00100000  exit
0012b0  00100000  exit
0012b4  00100000  exit
0012b8  00100000  exit
0012bc  00100000  exit
0012c0  00100000  exit
0012c4  00100000  exit
0012c8  00100000  exit
0012cc  00100000  exit
0012d0  00100000  exit
0012d4  00100000  exit
0012d8  00100000  exit
0012dc  00100000  exit
0012e0  00100000  exit
0012e4  00100000  exit
0012e8  00100000  exit
0012ec  00100000  exit
0012f0  00100000  exit
0012f4  00100000  exit
0012f8  00100000  exit
0012fc  00100000  exit
001300  00100000  exit
001304  00100000  exit
001308  00100000  exit
00130c  00100000  exit
001310  00100000  exit
001314  00100000  exit
001318  00100000  exit
00131c  00100000  exit
001320  00100000  exit
001324  00100000  exit
001328  00100000  exit
00132c  00100000  exit
001330  00100000  exit
001334  00100000  exit
001338  00100000  exit
00133c  00100000  exit
001340  00100000  exit
001344  00100000  exit
001348  00100000  exit
00134c  00100000  exit
001350  00100000  exit
001354  00100000  exit
001358  00100000  exit
00135c  00100000  exit
001360  00100000  exit
001364  00100000  exit
001368  00100000  exit
00136c  00100000  exit
001370  00100000  exit
001374  00100000  exit
001378  00100000  exit
00137c  00100000  exit
001380  00100000  exit
001384  00100000  exit
001388  00100000  exit
00138c  00100000  exit
001390  00100000  exit
