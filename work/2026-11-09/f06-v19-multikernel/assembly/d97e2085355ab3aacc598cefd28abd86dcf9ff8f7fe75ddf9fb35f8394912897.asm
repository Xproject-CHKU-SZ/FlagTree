; SHA-256 d97e2085355ab3aacc598cefd28abd86dcf9ff8f7fe75ddf9fb35f8394912897
; P800 Cluster · XTDK LLVM 19 · 1289 / 1289 words decoded
; bound names: _flat_row_reduce
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
000078  9f496000  addli r19, zero, 52
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
0000dc  9f8e8ef2  addli sp, sp, -1728
0000e0  ab000000  lui r1, 0
0000e4  00320002  core_id r4
0000e8  1f8f0e0d  addli r30, sp, 1664
0000ec  2b410000  lui r2, 4
0000f0  2bf30000  lui r6, 15
0000f4  9b312200  slli r3, r4, 2
0000f8  9f800000  addli r1, r1, 0
0000fc  63445f00  loadli.w r8,  44(r30)
000100  e3025f00  loadli.w r5,  40(r30)
000104  1b110101  ori r2, r2, 16
000108  e3036f00  loadli.w r7,  48(r30)
00010c  1b13f3ff  ori r6, r6, 4095
000110  8b941110  add.s r9, r3, r1
000114  8b125420  mul.s r5, r8, r5
000118  00540002  load_param_i r8, 0
00011c  0b952410  add.s r10, r9, r2
000120  8b927220  mul.s r5, r5, r7
000124  6745aff4  storeli.w r10, -1452(r30)
000128  73600500  stores.w zero, 0(r10)
00012c  00a00300  mfence { lm, sm, gm }
000130  80210304  csr_set csr3, r6
000134  00d00100  sync_group
000138  e7059ff4  storeli.w r9, -1448(r30)
00013c  73e00400  stores.w zero, 0(r9)
000140  00a00300  mfence { lm, sm, gm }
000144  67056ff4  storeli.w r6, -1456(r30)
000148  80210304  csr_set csr3, r6
00014c  00d00100  sync_group
000150  e7445ff4  storeli.w r5, -1460(r30)
000154  4bdf8206  ble.s r5, r8, 4052
000158  9f420000  addli r5, zero, 4
00015c  00d30002  load_param_i r6, 1
000160  abf3ffff  lui r7, 1048575
000164  1f2a0000  addli r20, zero, 2
000168  eb548f00  load.d r[10:11], 8(r30)
00016c  eb550f00  load.d r[12:13], 0(r30)
000170  1f0b0002  addli r22, zero, 256
000174  9f0b0ffe  addli r23, r30, -256
000178  6e248462  vxor.u.mz vr8{mr1}, vr8, vr8
00017c  8b125230  div.s r5, r4, r5
000180  e7046ff4  storeli.w r6, -1464(r30)
000184  1b033200  andi r6, r4, 3
000188  67446ff4  storeli.w r6, -1468(r30)
00018c  1bb32200  slli r6, r5, 2
000190  0b126218  sub.s r4, r4, r6
000194  1b9303ff  ori r6, r7, 4080
000198  97816100  and r3, r3, r6
00019c  1b326200  slli r4, r4, 6
0001a0  8b901110  add.s r1, r3, r1
0001a4  9bb1a200  slli r3, r5, 10
0001a8  33130228  sext_int2long r[7:8], r4
0001ac  67061ff4  storeli.w r1, -1440(r30)
0001b0  8b902010  add.s r1, r1, r2
0001b4  17334303  sll.d r[7:8], r[7:8], r20
0001b8  67043ff4  storeli.w r3, -1472(r30)
0001bc  e7451ff4  storeli.w r1, -1444(r30)
0001c0  8b904110  add.s r1, r3, r4
0001c4  8ba46410  add.ul r[10:11], r[10:11], r[7:8]
0001c8  9f030ffc  addli r7, r30, -512
0001cc  e7431ff4  storeli.w r1, -1476(r30)
0001d0  ab10833a  lui r1, 239665
0001d4  733c9fc6  store.d r[10:11], -904(r30)
0001d8  9b90f026  ori r1, r1, 623
0001dc  e74b1ff2  storeli.w r1, -1604(r30)
0001e0  9f008ff3  addli r1, r30, -1600
0001e4  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
0001e8  e3006f00  loadli.w r1,  48(r30)
0001ec  63415f00  loadli.w r2,  44(r30)
0001f0  ab0100f0  lui r3, 983040
0001f4  1f430000  addli r6, zero, 4
0001f8  67468ff4  storeli.w r8, -1436(r30)
0001fc  92338002  vadd.s.mz vr7{mr1}, zero, vr8
000200  92308002  vadd.s.mz vr1{mr1}, zero, vr8
000204  12318002  vadd.s.mz vr2{mr1}, zero, vr8
000208  92318002  vadd.s.mz vr3{mr1}, zero, vr8
00020c  9f0a0000  addli r21, zero, 0
000210  97113300  or r3, r6, r3
000214  8b101430  div.s r1, r8, r1
000218  8b902030  div.s r1, r1, r2
00021c  63018ff4  loadli.w r2,  -1472(r30)
000220  9bb0e000  slli r1, r1, 14
000224  0b912010  add.s r2, r1, r2
000228  33120128  sext_int2long r[5:6], r2
00022c  2b0100f0  lui r2, 983040
000230  17324203  sll.d r[5:6], r[5:6], r20
000234  17112300  or r2, r6, r2
000238  1f030ffb  addli r6, r30, -640
00023c  0ba24510  add.ul r[5:6], r[12:13], r[5:6]
000240  ff216200  l_gm2lm r3, r6, 0(r[5:6])
000244  eb518f00  load.d r[4:5], 8(r30)
000248  9f028ffb  addli r5, r30, -576
00024c  7fa15100  l_gm2lm r2, r5, 0(r[4:5])
000250  00a00000  mfence { lm }
000254  46188f82  vstore_mask16.mz vr8{mr1}, 1152(r30)
000258  63018ffb  loadli.w r2,  -576(r30)
00025c  e3010ffb  loadli.w r3,  -640(r30)
000260  461c8f82  vstore_mask16.mz vr8{mr1}, 1216(r30)
000264  46108fa2  vstore_mask16.mz vr8{mr1}, 1280(r30)
000268  46148fa2  vstore_mask16.mz vr8{mr1}, 1344(r30)
00026c  00a00000  mfence { lm }
000270  00a00000  mfence { lm }
000274  0b613110  add.f.rn r2, r2, r3
000278  8b6c0158  neg.f r25, r2
00027c  63417ff4  loadli.w r2,  -1476(r30)
000280  67479ff9  storeli.w r25, -908(r30)
000284  0b1c1110  add.s r24, r2, r1
000288  67078ff9  storeli.w r24, -912(r30)
00028c  00a00000  mfence { lm }
000290  42100f83  vload_mask16.mz vr0{mr1}, 1152(r30)
000294  1f018ff6  addli r2, r30, -1216
000298  8b105c11  add.s r1, r24, r21
00029c  ab0100f0  lui r3, 983040
0002a0  1f020ff7  addli r4, r30, -1152
0002a4  12328002  vadd.s.mz vr4{mr1}, zero, vr8
0002a8  92328002  vadd.s.mz vr5{mr1}, zero, vr8
0002ac  12338002  vadd.s.mz vr6{mr1}, zero, vr8
0002b0  97113b00  or r3, r22, r3
0002b4  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0002b8  b3900028  sext_int2long r[2:3], r1
0002bc  42108f83  vload_mask16.mz vr0{mr1}, 1216(r30)
0002c0  97b04003  sll.d r[2:3], r[2:3], r20
0002c4  8ba01510  add.ul r[2:3], r[12:13], r[2:3]
0002c8  ffa17000  l_gm2lm r3, r7, 0(r[2:3])
0002cc  9f018ff7  addli r3, r30, -1088
0002d0  b3800a28  zext_int2long r[2:3], r21
0002d4  46100202  vstore_mask16.mz vr0{mr1}, 0(r4)
0002d8  42100fa2  vload_mask16.mz vr0{mr1}, 1280(r30)
0002dc  97b04003  sll.d r[2:3], r[2:3], r20
0002e0  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0002e4  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
0002e8  ab0100f0  lui r3, 983040
0002ec  42108fa2  vload_mask16.mz vr0{mr1}, 1344(r30)
0002f0  97113b00  or r3, r22, r3
0002f4  ffa17001  l_gm2lm r3, r23, 0(r[2:3])
0002f8  9f000ff6  addli r1, r30, -1280
0002fc  46100f82  vstore_mask16.mz vr0{mr1}, 1024(r30)
000300  00a00000  mfence { lm }
000304  42150fc2  vload_mask16.mz vr10{mr1}, 1536(r30)
000308  c2158fc2  vload_mask16.mz vr11{mr1}, 1600(r30)
00030c  c2140fc3  vload_mask16.mz vr9{mr1}, 1664(r30)
000310  42108fc3  vload_mask16.mz vr0{mr1}, 1728(r30)
000314  630adffe  loadli.w r20,  -152(r30)
000318  630b0ffe  loadli.w r22,  -256(r30)
00031c  e34b0ffe  loadli.w r23,  -252(r30)
000320  630c1ffe  loadli.w r24,  -248(r30)
000324  e34c1ffe  loadli.w r25,  -244(r30)
000328  630d2ffe  loadli.w r26,  -240(r30)
00032c  e34d2ffe  loadli.w r27,  -236(r30)
000330  630e3ffe  loadli.w r28,  -232(r30)
000334  63014ffe  loadli.w r2,  -224(r30)
000338  e3414ffe  loadli.w r3,  -220(r30)
00033c  63025ffe  loadli.w r4,  -216(r30)
000340  e3425ffe  loadli.w r5,  -212(r30)
000344  63036ffe  loadli.w r6,  -208(r30)
000348  e3436ffe  loadli.w r7,  -204(r30)
00034c  63047ffe  loadli.w r8,  -200(r30)
000350  e3447ffe  loadli.w r9,  -196(r30)
000354  63058ffe  loadli.w r10,  -192(r30)
000358  e3458ffe  loadli.w r11,  -188(r30)
00035c  63069ffe  loadli.w r12,  -184(r30)
000360  e3469ffe  loadli.w r13,  -180(r30)
000364  6307affe  loadli.w r14,  -176(r30)
000368  e347affe  loadli.w r15,  -172(r30)
00036c  6308bffe  loadli.w r16,  -168(r30)
000370  e348bffe  loadli.w r17,  -164(r30)
000374  6309cffe  loadli.w r18,  -160(r30)
000378  e349cffe  loadli.w r19,  -156(r30)
00037c  e7064ff5  storeli.w r20, -1432(r30)
000380  634adffe  loadli.w r20,  -148(r30)
000384  e7464ff5  storeli.w r20, -1428(r30)
000388  630aeffe  loadli.w r20,  -144(r30)
00038c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000390  12308002  vadd.s.mz vr0{mr1}, zero, vr8
000394  e3403ffe  loadli.w r1,  -228(r30)
000398  67074ff5  storeli.w r20, -1424(r30)
00039c  634aeffe  loadli.w r20,  -140(r30)
0003a0  67474ff5  storeli.w r20, -1420(r30)
0003a4  630afffe  loadli.w r20,  -136(r30)
0003a8  e7074ff5  storeli.w r20, -1416(r30)
0003ac  634afffe  loadli.w r20,  -132(r30)
0003b0  e7474ff5  storeli.w r20, -1412(r30)
0003b4  630a0fff  loadli.w r20,  -128(r30)
0003b8  67084ff5  storeli.w r20, -1408(r30)
0003bc  634a0fff  loadli.w r20,  -124(r30)
0003c0  67484ff5  storeli.w r20, -1404(r30)
0003c4  630a1fff  loadli.w r20,  -120(r30)
0003c8  e7084ff5  storeli.w r20, -1400(r30)
0003cc  634a1fff  loadli.w r20,  -116(r30)
0003d0  e7484ff5  storeli.w r20, -1396(r30)
0003d4  630a2fff  loadli.w r20,  -112(r30)
0003d8  67094ff5  storeli.w r20, -1392(r30)
0003dc  634a2fff  loadli.w r20,  -108(r30)
0003e0  67494ff5  storeli.w r20, -1388(r30)
0003e4  630a3fff  loadli.w r20,  -104(r30)
0003e8  e7094ff5  storeli.w r20, -1384(r30)
0003ec  634a3fff  loadli.w r20,  -100(r30)
0003f0  e7494ff5  storeli.w r20, -1380(r30)
0003f4  630a4fff  loadli.w r20,  -96(r30)
0003f8  670a4ff5  storeli.w r20, -1376(r30)
0003fc  634a4fff  loadli.w r20,  -92(r30)
000400  674a4ff5  storeli.w r20, -1372(r30)
000404  630a5fff  loadli.w r20,  -88(r30)
000408  e70a4ff5  storeli.w r20, -1368(r30)
00040c  634a5fff  loadli.w r20,  -84(r30)
000410  e74a4ff5  storeli.w r20, -1364(r30)
000414  630a6fff  loadli.w r20,  -80(r30)
000418  670b4ff5  storeli.w r20, -1360(r30)
00041c  634a6fff  loadli.w r20,  -76(r30)
000420  674b4ff5  storeli.w r20, -1356(r30)
000424  630a7fff  loadli.w r20,  -72(r30)
000428  e70b4ff5  storeli.w r20, -1352(r30)
00042c  634a7fff  loadli.w r20,  -68(r30)
000430  e74b4ff5  storeli.w r20, -1348(r30)
000434  630a8fff  loadli.w r20,  -64(r30)
000438  670c4ff5  storeli.w r20, -1344(r30)
00043c  634a8fff  loadli.w r20,  -60(r30)
000440  674c4ff5  storeli.w r20, -1340(r30)
000444  630a9fff  loadli.w r20,  -56(r30)
000448  e70c4ff5  storeli.w r20, -1336(r30)
00044c  634a9fff  loadli.w r20,  -52(r30)
000450  e74c4ff5  storeli.w r20, -1332(r30)
000454  630aafff  loadli.w r20,  -48(r30)
000458  670d4ff5  storeli.w r20, -1328(r30)
00045c  634aafff  loadli.w r20,  -44(r30)
000460  674d4ff5  storeli.w r20, -1324(r30)
000464  630abfff  loadli.w r20,  -40(r30)
000468  e70d4ff5  storeli.w r20, -1320(r30)
00046c  634abfff  loadli.w r20,  -36(r30)
000470  e74d4ff5  storeli.w r20, -1316(r30)
000474  630acfff  loadli.w r20,  -32(r30)
000478  670e4ff5  storeli.w r20, -1312(r30)
00047c  634acfff  loadli.w r20,  -28(r30)
000480  674e4ff5  storeli.w r20, -1308(r30)
000484  630adfff  loadli.w r20,  -24(r30)
000488  e70e4ff5  storeli.w r20, -1304(r30)
00048c  634adfff  loadli.w r20,  -20(r30)
000490  e74e4ff5  storeli.w r20, -1300(r30)
000494  630aefff  loadli.w r20,  -16(r30)
000498  670f4ff5  storeli.w r20, -1296(r30)
00049c  634aefff  loadli.w r20,  -12(r30)
0004a0  674f4ff5  storeli.w r20, -1292(r30)
0004a4  630affff  loadli.w r20,  -8(r30)
0004a8  e70f4ff5  storeli.w r20, -1288(r30)
0004ac  634affff  loadli.w r20,  -4(r30)
0004b0  e74f4ff5  storeli.w r20, -1284(r30)
0004b4  1f1a0000  addli r20, zero, 1
0004b8  00a00000  mfence { lm }
0004bc  7e010ae0  vmmov mr2, r20
0004c0  1f2a0000  addli r20, zero, 2
0004c4  6a200b34  vor.u.mh vr0{mr2}, r22, vr0
0004c8  1f0b0002  addli r22, zero, 256
0004cc  fe010ae0  vmmov mr3, r20
0004d0  1f4a0000  addli r20, zero, 4
0004d4  7e8001c0  vmmov mr0, mr3
0004d8  6aa00b30  vor.u.mh vr0{mr0}, r23, vr0
0004dc  7e000ae0  vmmov mr0, r20
0004e0  1f0a1000  addli r20, zero, 8
0004e4  9f0b0ffe  addli r23, r30, -256
0004e8  6a200c30  vor.u.mh vr0{mr0}, r24, vr0
0004ec  fe0101c0  vmmov mr3, mr2
0004f0  7e010ae0  vmmov mr2, r20
0004f4  1f0a2000  addli r20, zero, 16
0004f8  1f0c0006  addli r24, zero, 768
0004fc  6aa00c34  vor.u.mh vr0{mr2}, r25, vr0
000500  7e010ae0  vmmov mr2, r20
000504  e34ceff8  loadli.w r25,  -908(r30)
000508  1f0a4000  addli r20, zero, 32
00050c  6a200d34  vor.u.mh vr0{mr2}, r26, vr0
000510  7e010ae0  vmmov mr2, r20
000514  1f0a8000  addli r20, zero, 64
000518  6aa00d34  vor.u.mh vr0{mr2}, r27, vr0
00051c  7e010ae0  vmmov mr2, r20
000520  1f0a0001  addli r20, zero, 128
000524  6a200e34  vor.u.mh vr0{mr2}, r28, vr0
000528  7e010ae0  vmmov mr2, r20
00052c  1f2a0000  addli r20, zero, 2
000530  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
000534  9f000002  addli r1, zero, 256
000538  7e8100e0  vmmov mr2, r1
00053c  9f000004  addli r1, zero, 512
000540  6a200134  vor.u.mh vr0{mr2}, r2, vr0
000544  7e8100e0  vmmov mr2, r1
000548  9f000008  addli r1, zero, 1024
00054c  1f010008  addli r2, zero, 1024
000550  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
000554  7e8100e0  vmmov mr2, r1
000558  9f000010  addli r1, zero, 2048
00055c  6a200234  vor.u.mh vr0{mr2}, r4, vr0
000560  7e8100e0  vmmov mr2, r1
000564  9f000020  addli r1, zero, 4096
000568  6aa00234  vor.u.mh vr0{mr2}, r5, vr0
00056c  7e8100e0  vmmov mr2, r1
000570  9f000040  addli r1, zero, 8192
000574  6a200334  vor.u.mh vr0{mr2}, r6, vr0
000578  7e8100e0  vmmov mr2, r1
00057c  ab400000  lui r1, 4
000580  6aa00334  vor.u.mh vr0{mr2}, r7, vr0
000584  7e8100e0  vmmov mr2, r1
000588  ab800000  lui r1, 8
00058c  9f030ffc  addli r7, r30, -512
000590  6a200434  vor.u.mh vr0{mr2}, r8, vr0
000594  7e8100e0  vmmov mr2, r1
000598  9f200000  addli r1, zero, 2
00059c  7e8000e0  vmmov mr0, r1
0005a0  9f400000  addli r1, zero, 4
0005a4  6aa00434  vor.u.mh vr0{mr2}, r9, vr0
0005a8  6a224536  vor.u.mh vr4{mr3}, r10, vr4
0005ac  eb548fc7  load.d r[10:11], -904(r30)
0005b0  7e8100e0  vmmov mr2, r1
0005b4  9f001000  addli r1, zero, 8
0005b8  6aa24530  vor.u.mh vr4{mr0}, r11, vr4
0005bc  7e8000e0  vmmov mr0, r1
0005c0  9f002000  addli r1, zero, 16
0005c4  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
0005c8  12950c02  vadd.f.mz.rn vr10{mr1}, r25, vr0
0005cc  a613a502  vmac.f.mz.rn vr7{mr1}, vr10, vr10
0005d0  6a224634  vor.u.mh vr4{mr2}, r12, vr4
0005d4  eb550f00  load.d r[12:13], 0(r30)
0005d8  6aa24630  vor.u.mh vr4{mr0}, r13, vr4
0005dc  7e8000e0  vmmov mr0, r1
0005e0  9f004000  addli r1, zero, 32
0005e4  6a224730  vor.u.mh vr4{mr0}, r14, vr4
0005e8  7e8000e0  vmmov mr0, r1
0005ec  9f008000  addli r1, zero, 64
0005f0  6aa24730  vor.u.mh vr4{mr0}, r15, vr4
0005f4  7e8000e0  vmmov mr0, r1
0005f8  9f000001  addli r1, zero, 128
0005fc  6a224830  vor.u.mh vr4{mr0}, r16, vr4
000600  7e8000e0  vmmov mr0, r1
000604  9f000002  addli r1, zero, 256
000608  6aa24830  vor.u.mh vr4{mr0}, r17, vr4
00060c  7e8000e0  vmmov mr0, r1
000610  9f000004  addli r1, zero, 512
000614  6a224930  vor.u.mh vr4{mr0}, r18, vr4
000618  7e8000e0  vmmov mr0, r1
00061c  6aa24930  vor.u.mh vr4{mr0}, r19, vr4
000620  e300dff4  loadli.w r1,  -1432(r30)
000624  7e0001e0  vmmov mr0, r2
000628  1f010010  addli r2, zero, 2048
00062c  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000630  e340dff4  loadli.w r1,  -1428(r30)
000634  7e0001e0  vmmov mr0, r2
000638  1f010020  addli r2, zero, 4096
00063c  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000640  e300eff4  loadli.w r1,  -1424(r30)
000644  7e0001e0  vmmov mr0, r2
000648  1f010040  addli r2, zero, 8192
00064c  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000650  e340eff4  loadli.w r1,  -1420(r30)
000654  7e0001e0  vmmov mr0, r2
000658  2b410000  lui r2, 4
00065c  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000660  e300fff4  loadli.w r1,  -1416(r30)
000664  7e0001e0  vmmov mr0, r2
000668  2b810000  lui r2, 8
00066c  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000670  e340fff4  loadli.w r1,  -1412(r30)
000674  7e0001e0  vmmov mr0, r2
000678  1f210000  addli r2, zero, 2
00067c  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000680  e3000ff5  loadli.w r1,  -1408(r30)
000684  7e0001e0  vmmov mr0, r2
000688  1f011000  addli r2, zero, 8
00068c  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
000690  e3400ff5  loadli.w r1,  -1404(r30)
000694  16924502  vadd.f.mz.rn vr4{mr1}, vr11, vr4
000698  12924c02  vadd.f.mz.rn vr4{mr1}, r25, vr4
00069c  a6104202  vmac.f.mz.rn vr1{mr1}, vr4, vr4
0006a0  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0006a4  e3001ff5  loadli.w r1,  -1400(r30)
0006a8  7e0001e0  vmmov mr0, r2
0006ac  1f012000  addli r2, zero, 16
0006b0  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
0006b4  e3401ff5  loadli.w r1,  -1396(r30)
0006b8  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0006bc  e3002ff5  loadli.w r1,  -1392(r30)
0006c0  7e0001e0  vmmov mr0, r2
0006c4  1f014000  addli r2, zero, 32
0006c8  7e0101e0  vmmov mr2, r2
0006cc  1f018000  addli r2, zero, 64
0006d0  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0006d4  e3402ff5  loadli.w r1,  -1388(r30)
0006d8  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
0006dc  e3003ff5  loadli.w r1,  -1384(r30)
0006e0  7e0101e0  vmmov mr2, r2
0006e4  1f010001  addli r2, zero, 128
0006e8  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
0006ec  e3403ff5  loadli.w r1,  -1380(r30)
0006f0  7e0101e0  vmmov mr2, r2
0006f4  1f010002  addli r2, zero, 256
0006f8  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
0006fc  e3004ff5  loadli.w r1,  -1376(r30)
000700  7e0101e0  vmmov mr2, r2
000704  1f010004  addli r2, zero, 512
000708  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
00070c  e3404ff5  loadli.w r1,  -1372(r30)
000710  7e0101e0  vmmov mr2, r2
000714  1f010008  addli r2, zero, 1024
000718  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
00071c  e3005ff5  loadli.w r1,  -1368(r30)
000720  7e0101e0  vmmov mr2, r2
000724  1f010010  addli r2, zero, 2048
000728  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
00072c  e3405ff5  loadli.w r1,  -1364(r30)
000730  7e0101e0  vmmov mr2, r2
000734  1f010020  addli r2, zero, 4096
000738  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
00073c  e3006ff5  loadli.w r1,  -1360(r30)
000740  7e0101e0  vmmov mr2, r2
000744  1f010040  addli r2, zero, 8192
000748  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
00074c  e3406ff5  loadli.w r1,  -1356(r30)
000750  7e0101e0  vmmov mr2, r2
000754  2b410000  lui r2, 4
000758  7e0001e0  vmmov mr0, r2
00075c  2b810000  lui r2, 8
000760  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
000764  e3007ff5  loadli.w r1,  -1352(r30)
000768  7e0101e0  vmmov mr2, r2
00076c  1f210000  addli r2, zero, 2
000770  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000774  e3407ff5  loadli.w r1,  -1348(r30)
000778  7e0001e0  vmmov mr0, r2
00077c  1f410000  addli r2, zero, 4
000780  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
000784  e3008ff5  loadli.w r1,  -1344(r30)
000788  6aa36036  vor.u.mh vr6{mr3}, r1, vr6
00078c  e3408ff5  loadli.w r1,  -1340(r30)
000790  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
000794  92925c02  vadd.f.mz.rn vr5{mr1}, r25, vr5
000798  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00079c  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
0007a0  e3009ff5  loadli.w r1,  -1336(r30)
0007a4  7e0001e0  vmmov mr0, r2
0007a8  1f011000  addli r2, zero, 8
0007ac  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
0007b0  e3409ff5  loadli.w r1,  -1332(r30)
0007b4  7e0001e0  vmmov mr0, r2
0007b8  1f012000  addli r2, zero, 16
0007bc  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
0007c0  e300aff5  loadli.w r1,  -1328(r30)
0007c4  7e0001e0  vmmov mr0, r2
0007c8  1f014000  addli r2, zero, 32
0007cc  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
0007d0  e340aff5  loadli.w r1,  -1324(r30)
0007d4  7e0001e0  vmmov mr0, r2
0007d8  1f018000  addli r2, zero, 64
0007dc  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
0007e0  e300bff5  loadli.w r1,  -1320(r30)
0007e4  7e0001e0  vmmov mr0, r2
0007e8  1f010001  addli r2, zero, 128
0007ec  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
0007f0  e340bff5  loadli.w r1,  -1316(r30)
0007f4  7e0001e0  vmmov mr0, r2
0007f8  1f010002  addli r2, zero, 256
0007fc  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
000800  e300cff5  loadli.w r1,  -1312(r30)
000804  7e0001e0  vmmov mr0, r2
000808  1f010004  addli r2, zero, 512
00080c  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
000810  e340cff5  loadli.w r1,  -1308(r30)
000814  7e0001e0  vmmov mr0, r2
000818  1f010008  addli r2, zero, 1024
00081c  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
000820  e300dff5  loadli.w r1,  -1304(r30)
000824  7e0001e0  vmmov mr0, r2
000828  1f010010  addli r2, zero, 2048
00082c  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
000830  e340dff5  loadli.w r1,  -1300(r30)
000834  7e0001e0  vmmov mr0, r2
000838  1f010020  addli r2, zero, 4096
00083c  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
000840  e300eff5  loadli.w r1,  -1296(r30)
000844  7e0001e0  vmmov mr0, r2
000848  1f010040  addli r2, zero, 8192
00084c  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
000850  e340eff5  loadli.w r1,  -1292(r30)
000854  7e0001e0  vmmov mr0, r2
000858  2b410000  lui r2, 4
00085c  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
000860  e300fff5  loadli.w r1,  -1288(r30)
000864  7e0001e0  vmmov mr0, r2
000868  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
00086c  9f008ff6  addli r1, r30, -1216
000870  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000874  e340fff5  loadli.w r1,  -1284(r30)
000878  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
00087c  9f000ff7  addli r1, r30, -1152
000880  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000884  9f000ff6  addli r1, r30, -1280
000888  1610a002  vadd.f.mz.rn vr0{mr1}, vr0, vr10
00088c  46180f82  vstore_mask16.mz vr0{mr1}, 1152(r30)
000890  96944402  vadd.f.mz.rn vr9{mr1}, vr9, vr4
000894  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
000898  9f008ff7  addli r1, r30, -1088
00089c  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
0008a0  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
0008a4  461c9f82  vstore_mask16.mz vr9{mr1}, 1216(r30)
0008a8  12904c02  vadd.f.mz.rn vr0{mr1}, r25, vr4
0008ac  93808a05  setlt.u r1, r21, r24
0008b0  a6110002  vmac.f.mz.rn vr3{mr1}, vr0, vr0
0008b4  9f8a0a02  addli r21, r21, 256
0008b8  42120f82  vload_mask16.mz vr4{mr1}, 1024(r30)
0008bc  630ceff8  loadli.w r24,  -912(r30)
0008c0  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
0008c4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0008c8  46106fa2  vstore_mask16.mz vr6{mr1}, 1280(r30)
0008cc  46144fa2  vstore_mask16.mz vr4{mr1}, 1344(r30)
0008d0  00a00000  mfence { lm }
0008d4  00a00000  mfence { lm }
0008d8  bbe600fc  bneq r1, zero, -1608
0008dc  42100f83  vload_mask16.mz vr0{mr1}, 1152(r30)
0008e0  42128f83  vload_mask16.mz vr4{mr1}, 1216(r30)
0008e4  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
0008e8  42120fa2  vload_mask16.mz vr4{mr1}, 1280(r30)
0008ec  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
0008f0  42128fa2  vload_mask16.mz vr4{mr1}, 1344(r30)
0008f4  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
0008f8  fa100040  vextracti.f r1, 0(vr0)
0008fc  7a111040  vextracti.f r2, 1(vr0)
000900  8be02010  add.f.rn r1, r1, r2
000904  7a112040  vextracti.f r2, 2(vr0)
000908  8b601110  add.f.rn r1, r2, r1
00090c  7a113040  vextracti.f r2, 3(vr0)
000910  8b601110  add.f.rn r1, r2, r1
000914  7a114040  vextracti.f r2, 4(vr0)
000918  8b601110  add.f.rn r1, r2, r1
00091c  7a115040  vextracti.f r2, 5(vr0)
000920  8b601110  add.f.rn r1, r2, r1
000924  7a116040  vextracti.f r2, 6(vr0)
000928  8b601110  add.f.rn r1, r2, r1
00092c  7a117040  vextracti.f r2, 7(vr0)
000930  8b601110  add.f.rn r1, r2, r1
000934  7a118040  vextracti.f r2, 8(vr0)
000938  8b601110  add.f.rn r1, r2, r1
00093c  7a119040  vextracti.f r2, 9(vr0)
000940  8b601110  add.f.rn r1, r2, r1
000944  7a11a040  vextracti.f r2, 10(vr0)
000948  8b601110  add.f.rn r1, r2, r1
00094c  7a11b040  vextracti.f r2, 11(vr0)
000950  8b601110  add.f.rn r1, r2, r1
000954  7a11c040  vextracti.f r2, 12(vr0)
000958  8b601110  add.f.rn r1, r2, r1
00095c  7a11d040  vextracti.f r2, 13(vr0)
000960  8b601110  add.f.rn r1, r2, r1
000964  7a11e040  vextracti.f r2, 14(vr0)
000968  8b601110  add.f.rn r1, r2, r1
00096c  7a11f040  vextracti.f r2, 15(vr0)
000970  8b601110  add.f.rn r1, r2, r1
000974  6301bff4  loadli.w r2,  -1448(r30)
000978  73601100  stores.w r1, 0(r2)
00097c  00a00300  mfence { lm, sm, gm }
000980  e302aff4  loadli.w r5,  -1456(r30)
000984  80a10204  csr_set csr3, r5
000988  00d00100  sync_group
00098c  63428ff4  loadli.w r4,  -1468(r30)
000990  bb200200  bneq r4, zero, 40
000994  6303cff4  loadli.w r6,  -1440(r30)
000998  ef400300  loads.w r1, 0(r6)
00099c  6f414300  loads.w r2, 4(r6)
0009a0  ef418300  loads.w r3, 8(r6)
0009a4  8be02010  add.f.rn r1, r1, r2
0009a8  6f41c300  loads.w r2, 12(r6)
0009ac  8be03010  add.f.rn r1, r1, r3
0009b0  8be02010  add.f.rn r1, r1, r2
0009b4  73601300  stores.w r1, 0(r6)
0009b8  16901302  vadd.f.mz.rn vr0{mr1}, vr7, vr1
0009bc  00a00300  mfence { lm, sm, gm }
0009c0  80a10204  csr_set csr3, r5
0009c4  00d00100  sync_group
0009c8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009cc  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
0009d0  fa100040  vextracti.f r1, 0(vr0)
0009d4  7a111040  vextracti.f r2, 1(vr0)
0009d8  fa11f040  vextracti.f r3, 15(vr0)
0009dc  8be02010  add.f.rn r1, r1, r2
0009e0  7a112040  vextracti.f r2, 2(vr0)
0009e4  8b601110  add.f.rn r1, r2, r1
0009e8  7a113040  vextracti.f r2, 3(vr0)
0009ec  8b601110  add.f.rn r1, r2, r1
0009f0  7a114040  vextracti.f r2, 4(vr0)
0009f4  8b601110  add.f.rn r1, r2, r1
0009f8  7a115040  vextracti.f r2, 5(vr0)
0009fc  8b601110  add.f.rn r1, r2, r1
000a00  7a116040  vextracti.f r2, 6(vr0)
000a04  8b601110  add.f.rn r1, r2, r1
000a08  7a117040  vextracti.f r2, 7(vr0)
000a0c  8b601110  add.f.rn r1, r2, r1
000a10  7a118040  vextracti.f r2, 8(vr0)
000a14  8b601110  add.f.rn r1, r2, r1
000a18  7a119040  vextracti.f r2, 9(vr0)
000a1c  8b601110  add.f.rn r1, r2, r1
000a20  7a11a040  vextracti.f r2, 10(vr0)
000a24  8b601110  add.f.rn r1, r2, r1
000a28  7a11b040  vextracti.f r2, 11(vr0)
000a2c  8b601110  add.f.rn r1, r2, r1
000a30  7a11c040  vextracti.f r2, 12(vr0)
000a34  8b601110  add.f.rn r1, r2, r1
000a38  7a11d040  vextracti.f r2, 13(vr0)
000a3c  8b601110  add.f.rn r1, r2, r1
000a40  7a11e040  vextracti.f r2, 14(vr0)
000a44  0b611110  add.f.rn r2, r2, r1
000a48  e300cff4  loadli.w r1,  -1440(r30)
000a4c  efc00000  loads.w r1, 0(r1)
000a50  0be12110  add.f.rn r2, r3, r2
000a54  e341aff4  loadli.w r3,  -1452(r30)
000a58  73e02100  stores.w r2, 0(r3)
000a5c  00a00300  mfence { lm, sm, gm }
000a60  80a10204  csr_set csr3, r5
000a64  00d00100  sync_group
000a68  bb200200  bneq r4, zero, 40
000a6c  6343bff4  loadli.w r6,  -1444(r30)
000a70  6f410300  loads.w r2, 0(r6)
000a74  ef414300  loads.w r3, 4(r6)
000a78  6f428300  loads.w r4, 8(r6)
000a7c  0b613110  add.f.rn r2, r2, r3
000a80  ef41c300  loads.w r3, 12(r6)
000a84  0b614110  add.f.rn r2, r2, r4
000a88  0b613110  add.f.rn r2, r2, r3
000a8c  73602300  stores.w r2, 0(r6)
000a90  00a00300  mfence { lm, sm, gm }
000a94  80a10204  csr_set csr3, r5
000a98  00d00100  sync_group
000a9c  6341bff4  loadli.w r2,  -1444(r30)
000aa0  ab01803a  lui r3, 239616
000aa4  8be93020  mul.f.rn r19, r1, r3
000aa8  6f410100  loads.w r2, 0(r2)
000aac  8b603120  mul.f.rn r1, r2, r3
000ab0  0be13921  mul.f.rn r2, r19, r19
000ab4  9f010000  addli r3, zero, 0
000ab8  0be12018  sub.f.rn r2, r1, r2
000abc  57270200  jal 4408
000ac0  e3407ff3  loadli.w r1,  -1604(r30)
000ac4  9f010000  addli r3, zero, 0
000ac8  1f040ff9  addli r8, r30, -896
000acc  8b601110  add.f.rn r1, r2, r1
000ad0  2b01803f  lui r2, 260096
000ad4  8f800008  sqrt.f.rn r1, r1
000ad8  8f001118  div.f.rn r1, r2, r1
000adc  67471ff4  storeli.w r1, -1420(r30)
000ae0  8be00958  neg.f r1, r19
000ae4  67071ff4  storeli.w r1, -1424(r30)
000ae8  9f008ff3  addli r1, r30, -1600
000aec  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000af0  00a00000  mfence { lm }
000af4  8b103c10  add.s r1, r24, r3
000af8  33830128  zext_int2long r[7:8], r3
000afc  2b0100f0  lui r2, 983040
000b00  12328002  vadd.s.mz vr4{mr1}, zero, vr8
000b04  92328002  vadd.s.mz vr5{mr1}, zero, vr8
000b08  12338002  vadd.s.mz vr6{mr1}, zero, vr8
000b0c  92338002  vadd.s.mz vr7{mr1}, zero, vr8
000b10  33920028  sext_int2long r[5:6], r1
000b14  17334303  sll.d r[7:8], r[7:8], r20
000b18  97102b00  or r1, r22, r2
000b1c  17112b00  or r2, r22, r2
000b20  97344203  sll.d r[10:11], r[5:6], r20
000b24  6b520f00  load.d r[5:6], 0(r30)
000b28  73309fc0  store.d r[10:11], -1024(r30)
000b2c  0b229210  add.ul r[5:6], r[5:6], r[10:11]
000b30  eb548fc7  load.d r[10:11], -904(r30)
000b34  ff208200  l_gm2lm r1, r8, 0(r[5:6])
000b38  0ba36410  add.ul r[7:8], r[10:11], r[7:8]
000b3c  7f217301  l_gm2lm r2, r23, 0(r[7:8])
000b40  00a00000  mfence { lm }
000b44  c2110f83  vload_mask16.mz vr3{mr1}, 1152(r30)
000b48  42118f83  vload_mask16.mz vr2{mr1}, 1216(r30)
000b4c  c2100fa2  vload_mask16.mz vr1{mr1}, 1280(r30)
000b50  42108fa2  vload_mask16.mz vr0{mr1}, 1344(r30)
000b54  630edffe  loadli.w r28,  -152(r30)
000b58  e3000ffe  loadli.w r1,  -256(r30)
000b5c  63410ffe  loadli.w r2,  -252(r30)
000b60  63021ffe  loadli.w r4,  -248(r30)
000b64  e3421ffe  loadli.w r5,  -244(r30)
000b68  63032ffe  loadli.w r6,  -240(r30)
000b6c  e3432ffe  loadli.w r7,  -236(r30)
000b70  63043ffe  loadli.w r8,  -232(r30)
000b74  e3443ffe  loadli.w r9,  -228(r30)
000b78  63054ffe  loadli.w r10,  -224(r30)
000b7c  e3454ffe  loadli.w r11,  -220(r30)
000b80  63065ffe  loadli.w r12,  -216(r30)
000b84  e3465ffe  loadli.w r13,  -212(r30)
000b88  63076ffe  loadli.w r14,  -208(r30)
000b8c  e3476ffe  loadli.w r15,  -204(r30)
000b90  63087ffe  loadli.w r16,  -200(r30)
000b94  e3487ffe  loadli.w r17,  -196(r30)
000b98  63098ffe  loadli.w r18,  -192(r30)
000b9c  e3498ffe  loadli.w r19,  -188(r30)
000ba0  630a9ffe  loadli.w r20,  -184(r30)
000ba4  e34a9ffe  loadli.w r21,  -180(r30)
000ba8  630baffe  loadli.w r22,  -176(r30)
000bac  e34baffe  loadli.w r23,  -172(r30)
000bb0  630cbffe  loadli.w r24,  -168(r30)
000bb4  e34cbffe  loadli.w r25,  -164(r30)
000bb8  630dcffe  loadli.w r26,  -160(r30)
000bbc  e34dcffe  loadli.w r27,  -156(r30)
000bc0  e707cff5  storeli.w r28, -1416(r30)
000bc4  634edffe  loadli.w r28,  -148(r30)
000bc8  e747cff5  storeli.w r28, -1412(r30)
000bcc  630eeffe  loadli.w r28,  -144(r30)
000bd0  6708cff5  storeli.w r28, -1408(r30)
000bd4  634eeffe  loadli.w r28,  -140(r30)
000bd8  6748cff5  storeli.w r28, -1404(r30)
000bdc  630efffe  loadli.w r28,  -136(r30)
000be0  e708cff5  storeli.w r28, -1400(r30)
000be4  634efffe  loadli.w r28,  -132(r30)
000be8  e748cff5  storeli.w r28, -1396(r30)
000bec  630e0fff  loadli.w r28,  -128(r30)
000bf0  6709cff5  storeli.w r28, -1392(r30)
000bf4  634e0fff  loadli.w r28,  -124(r30)
000bf8  6749cff5  storeli.w r28, -1388(r30)
000bfc  630e1fff  loadli.w r28,  -120(r30)
000c00  e709cff5  storeli.w r28, -1384(r30)
000c04  634e1fff  loadli.w r28,  -116(r30)
000c08  e749cff5  storeli.w r28, -1380(r30)
000c0c  630e2fff  loadli.w r28,  -112(r30)
000c10  670acff5  storeli.w r28, -1376(r30)
000c14  634e2fff  loadli.w r28,  -108(r30)
000c18  674acff5  storeli.w r28, -1372(r30)
000c1c  630e3fff  loadli.w r28,  -104(r30)
000c20  e70acff5  storeli.w r28, -1368(r30)
000c24  634e3fff  loadli.w r28,  -100(r30)
000c28  e74acff5  storeli.w r28, -1364(r30)
000c2c  630e4fff  loadli.w r28,  -96(r30)
000c30  670bcff5  storeli.w r28, -1360(r30)
000c34  634e4fff  loadli.w r28,  -92(r30)
000c38  674bcff5  storeli.w r28, -1356(r30)
000c3c  630e5fff  loadli.w r28,  -88(r30)
000c40  e70bcff5  storeli.w r28, -1352(r30)
000c44  634e5fff  loadli.w r28,  -84(r30)
000c48  e74bcff5  storeli.w r28, -1348(r30)
000c4c  630e6fff  loadli.w r28,  -80(r30)
000c50  670ccff5  storeli.w r28, -1344(r30)
000c54  634e6fff  loadli.w r28,  -76(r30)
000c58  674ccff5  storeli.w r28, -1340(r30)
000c5c  630e7fff  loadli.w r28,  -72(r30)
000c60  e70ccff5  storeli.w r28, -1336(r30)
000c64  634e7fff  loadli.w r28,  -68(r30)
000c68  e74ccff5  storeli.w r28, -1332(r30)
000c6c  630e8fff  loadli.w r28,  -64(r30)
000c70  670dcff5  storeli.w r28, -1328(r30)
000c74  634e8fff  loadli.w r28,  -60(r30)
000c78  674dcff5  storeli.w r28, -1324(r30)
000c7c  630e9fff  loadli.w r28,  -56(r30)
000c80  e70dcff5  storeli.w r28, -1320(r30)
000c84  634e9fff  loadli.w r28,  -52(r30)
000c88  e74dcff5  storeli.w r28, -1316(r30)
000c8c  630eafff  loadli.w r28,  -48(r30)
000c90  670ecff5  storeli.w r28, -1312(r30)
000c94  634eafff  loadli.w r28,  -44(r30)
000c98  674ecff5  storeli.w r28, -1308(r30)
000c9c  630ebfff  loadli.w r28,  -40(r30)
000ca0  e70ecff5  storeli.w r28, -1304(r30)
000ca4  634ebfff  loadli.w r28,  -36(r30)
000ca8  e74ecff5  storeli.w r28, -1300(r30)
000cac  630ecfff  loadli.w r28,  -32(r30)
000cb0  670fcff5  storeli.w r28, -1296(r30)
000cb4  634ecfff  loadli.w r28,  -28(r30)
000cb8  674fcff5  storeli.w r28, -1292(r30)
000cbc  630edfff  loadli.w r28,  -24(r30)
000cc0  e70fcff5  storeli.w r28, -1288(r30)
000cc4  634edfff  loadli.w r28,  -20(r30)
000cc8  e74fcff5  storeli.w r28, -1284(r30)
000ccc  630eefff  loadli.w r28,  -16(r30)
000cd0  6700cff7  storeli.w r28, -1280(r30)
000cd4  634eefff  loadli.w r28,  -12(r30)
000cd8  6704cff7  storeli.w r28, -1216(r30)
000cdc  630effff  loadli.w r28,  -8(r30)
000ce0  6708cff7  storeli.w r28, -1152(r30)
000ce4  634effff  loadli.w r28,  -4(r30)
000ce8  670ccff7  storeli.w r28, -1088(r30)
000cec  1f1e0000  addli r28, zero, 1
000cf0  00a00000  mfence { lm }
000cf4  7e010ee0  vmmov mr2, r28
000cf8  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
000cfc  9f200000  addli r1, zero, 2
000d00  7e8000e0  vmmov mr0, r1
000d04  9f400000  addli r1, zero, 4
000d08  6a224130  vor.u.mh vr4{mr0}, r2, vr4
000d0c  7e8000e0  vmmov mr0, r1
000d10  9f001000  addli r1, zero, 8
000d14  1f010006  addli r2, zero, 768
000d18  fe8100e0  vmmov mr3, r1
000d1c  9f002000  addli r1, zero, 16
000d20  13812104  setlt.u r2, r3, r2
000d24  9f810102  addli r3, r3, 256
000d28  6a224230  vor.u.mh vr4{mr0}, r4, vr4
000d2c  7e8000e0  vmmov mr0, r1
000d30  9f004000  addli r1, zero, 32
000d34  1f020008  addli r4, zero, 1024
000d38  6aa24236  vor.u.mh vr4{mr3}, r5, vr4
000d3c  ab820000  lui r5, 8
000d40  6a224330  vor.u.mh vr4{mr0}, r6, vr4
000d44  7e8000e0  vmmov mr0, r1
000d48  9f008000  addli r1, zero, 64
000d4c  6aa24330  vor.u.mh vr4{mr0}, r7, vr4
000d50  7e8000e0  vmmov mr0, r1
000d54  9f000001  addli r1, zero, 128
000d58  6a224430  vor.u.mh vr4{mr0}, r8, vr4
000d5c  7e8000e0  vmmov mr0, r1
000d60  9f000002  addli r1, zero, 256
000d64  1f040ff9  addli r8, r30, -896
000d68  6aa24430  vor.u.mh vr4{mr0}, r9, vr4
000d6c  7e8000e0  vmmov mr0, r1
000d70  9f000004  addli r1, zero, 512
000d74  6a224530  vor.u.mh vr4{mr0}, r10, vr4
000d78  7e8000e0  vmmov mr0, r1
000d7c  9f000008  addli r1, zero, 1024
000d80  6aa24530  vor.u.mh vr4{mr0}, r11, vr4
000d84  7e8000e0  vmmov mr0, r1
000d88  9f000010  addli r1, zero, 2048
000d8c  6a224630  vor.u.mh vr4{mr0}, r12, vr4
000d90  7e8000e0  vmmov mr0, r1
000d94  9f000020  addli r1, zero, 4096
000d98  6aa24630  vor.u.mh vr4{mr0}, r13, vr4
000d9c  7e8000e0  vmmov mr0, r1
000da0  9f000040  addli r1, zero, 8192
000da4  7e8100e0  vmmov mr2, r1
000da8  ab400000  lui r1, 4
000dac  6a224730  vor.u.mh vr4{mr0}, r14, vr4
000db0  fe8100e0  vmmov mr3, r1
000db4  ab800000  lui r1, 8
000db8  6aa24734  vor.u.mh vr4{mr2}, r15, vr4
000dbc  6a224836  vor.u.mh vr4{mr3}, r16, vr4
000dc0  fe8100e0  vmmov mr3, r1
000dc4  9f100000  addli r1, zero, 1
000dc8  7e8000e0  vmmov mr0, r1
000dcc  9f200000  addli r1, zero, 2
000dd0  6aa24836  vor.u.mh vr4{mr3}, r17, vr4
000dd4  ea225930  vor.u.mh vr5{mr0}, r18, vr5
000dd8  7e8000e0  vmmov mr0, r1
000ddc  9f400000  addli r1, zero, 4
000de0  eaa25930  vor.u.mh vr5{mr0}, r19, vr5
000de4  7e8000e0  vmmov mr0, r1
000de8  9f001000  addli r1, zero, 8
000dec  96914102  vadd.f.mz.rn vr3{mr1}, vr3, vr4
000df0  ea225a30  vor.u.mh vr5{mr0}, r20, vr5
000df4  7e8000e0  vmmov mr0, r1
000df8  9f002000  addli r1, zero, 16
000dfc  1f2a0000  addli r20, zero, 2
000e00  eaa25a30  vor.u.mh vr5{mr0}, r21, vr5
000e04  7e8000e0  vmmov mr0, r1
000e08  9f004000  addli r1, zero, 32
000e0c  7e8100e0  vmmov mr2, r1
000e10  9f008000  addli r1, zero, 64
000e14  ea225b30  vor.u.mh vr5{mr0}, r22, vr5
000e18  1f0b0002  addli r22, zero, 256
000e1c  eaa25b34  vor.u.mh vr5{mr2}, r23, vr5
000e20  7e8100e0  vmmov mr2, r1
000e24  9f000001  addli r1, zero, 128
000e28  9f0b0ffe  addli r23, r30, -256
000e2c  fe8100e0  vmmov mr3, r1
000e30  9f000002  addli r1, zero, 256
000e34  ea225c34  vor.u.mh vr5{mr2}, r24, vr5
000e38  630ceff8  loadli.w r24,  -912(r30)
000e3c  7e8000e0  vmmov mr0, r1
000e40  9f000004  addli r1, zero, 512
000e44  eaa25c36  vor.u.mh vr5{mr3}, r25, vr5
000e48  6343eff8  loadli.w r6,  -908(r30)
000e4c  92113302  vadd.f.mz.rn vr3{mr1}, r6, vr3
000e50  ea225d30  vor.u.mh vr5{mr0}, r26, vr5
000e54  7e8000e0  vmmov mr0, r1
000e58  eaa25d30  vor.u.mh vr5{mr0}, r27, vr5
000e5c  e300fff4  loadli.w r1,  -1416(r30)
000e60  7e0002e0  vmmov mr0, r4
000e64  1f020010  addli r4, zero, 2048
000e68  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000e6c  e340fff4  loadli.w r1,  -1412(r30)
000e70  7e0002e0  vmmov mr0, r4
000e74  1f020020  addli r4, zero, 4096
000e78  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000e7c  e3000ff5  loadli.w r1,  -1408(r30)
000e80  7e0002e0  vmmov mr0, r4
000e84  1f020040  addli r4, zero, 8192
000e88  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000e8c  e3400ff5  loadli.w r1,  -1404(r30)
000e90  7e0002e0  vmmov mr0, r4
000e94  2b420000  lui r4, 4
000e98  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000e9c  e3001ff5  loadli.w r1,  -1400(r30)
000ea0  7e0002e0  vmmov mr0, r4
000ea4  2b820000  lui r4, 8
000ea8  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000eac  e3401ff5  loadli.w r1,  -1396(r30)
000eb0  7e0002e0  vmmov mr0, r4
000eb4  1f120000  addli r4, zero, 1
000eb8  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000ebc  e3002ff5  loadli.w r1,  -1392(r30)
000ec0  7e0002e0  vmmov mr0, r4
000ec4  1f220000  addli r4, zero, 2
000ec8  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
000ecc  e3402ff5  loadli.w r1,  -1388(r30)
000ed0  7e0002e0  vmmov mr0, r4
000ed4  1f420000  addli r4, zero, 4
000ed8  16115102  vadd.f.mz.rn vr2{mr1}, vr2, vr5
000edc  12112302  vadd.f.mz.rn vr2{mr1}, r6, vr2
000ee0  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
000ee4  e3003ff5  loadli.w r1,  -1384(r30)
000ee8  7e0002e0  vmmov mr0, r4
000eec  1f021000  addli r4, zero, 8
000ef0  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
000ef4  e3403ff5  loadli.w r1,  -1380(r30)
000ef8  7e0002e0  vmmov mr0, r4
000efc  1f022000  addli r4, zero, 16
000f00  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
000f04  e3004ff5  loadli.w r1,  -1376(r30)
000f08  7e0002e0  vmmov mr0, r4
000f0c  1f024000  addli r4, zero, 32
000f10  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
000f14  e3404ff5  loadli.w r1,  -1372(r30)
000f18  7e0002e0  vmmov mr0, r4
000f1c  1f020002  addli r4, zero, 256
000f20  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
000f24  e3005ff5  loadli.w r1,  -1368(r30)
000f28  7e0002e0  vmmov mr0, r4
000f2c  1f020004  addli r4, zero, 512
000f30  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
000f34  e3405ff5  loadli.w r1,  -1364(r30)
000f38  7e0102e0  vmmov mr2, r4
000f3c  1f020008  addli r4, zero, 1024
000f40  6aa36036  vor.u.mh vr6{mr3}, r1, vr6
000f44  e3006ff5  loadli.w r1,  -1360(r30)
000f48  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
000f4c  e3406ff5  loadli.w r1,  -1356(r30)
000f50  7e0002e0  vmmov mr0, r4
000f54  1f020010  addli r4, zero, 2048
000f58  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
000f5c  e3007ff5  loadli.w r1,  -1352(r30)
000f60  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
000f64  e3407ff5  loadli.w r1,  -1348(r30)
000f68  7e0002e0  vmmov mr0, r4
000f6c  1f020020  addli r4, zero, 4096
000f70  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
000f74  e3008ff5  loadli.w r1,  -1344(r30)
000f78  7e0002e0  vmmov mr0, r4
000f7c  1f020040  addli r4, zero, 8192
000f80  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
000f84  e3408ff5  loadli.w r1,  -1340(r30)
000f88  7e0002e0  vmmov mr0, r4
000f8c  2b420000  lui r4, 4
000f90  fe0102e0  vmmov mr3, r4
000f94  2b820000  lui r4, 8
000f98  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
000f9c  e3009ff5  loadli.w r1,  -1336(r30)
000fa0  7e0002e0  vmmov mr0, r4
000fa4  1f120000  addli r4, zero, 1
000fa8  6aa36036  vor.u.mh vr6{mr3}, r1, vr6
000fac  e3409ff5  loadli.w r1,  -1332(r30)
000fb0  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
000fb4  e300aff5  loadli.w r1,  -1328(r30)
000fb8  7e0002e0  vmmov mr0, r4
000fbc  1f220000  addli r4, zero, 2
000fc0  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000fc4  e340aff5  loadli.w r1,  -1324(r30)
000fc8  7e0002e0  vmmov mr0, r4
000fcc  1f420000  addli r4, zero, 4
000fd0  96906002  vadd.f.mz.rn vr1{mr1}, vr1, vr6
000fd4  92101302  vadd.f.mz.rn vr1{mr1}, r6, vr1
000fd8  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000fdc  e300bff5  loadli.w r1,  -1320(r30)
000fe0  7e0002e0  vmmov mr0, r4
000fe4  1f021000  addli r4, zero, 8
000fe8  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000fec  e340bff5  loadli.w r1,  -1316(r30)
000ff0  7e0002e0  vmmov mr0, r4
000ff4  1f022000  addli r4, zero, 16
000ff8  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000ffc  e300cff5  loadli.w r1,  -1312(r30)
001000  7e0002e0  vmmov mr0, r4
001004  1f024000  addli r4, zero, 32
001008  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
00100c  e340cff5  loadli.w r1,  -1308(r30)
001010  7e0002e0  vmmov mr0, r4
001014  1f028000  addli r4, zero, 64
001018  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
00101c  e300dff5  loadli.w r1,  -1304(r30)
001020  7e0002e0  vmmov mr0, r4
001024  1f020001  addli r4, zero, 128
001028  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
00102c  e340dff5  loadli.w r1,  -1300(r30)
001030  7e0002e0  vmmov mr0, r4
001034  1f020002  addli r4, zero, 256
001038  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
00103c  e300eff5  loadli.w r1,  -1296(r30)
001040  7e0002e0  vmmov mr0, r4
001044  1f020008  addli r4, zero, 1024
001048  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
00104c  e340eff5  loadli.w r1,  -1292(r30)
001050  7e0002e0  vmmov mr0, r4
001054  1f020010  addli r4, zero, 2048
001058  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
00105c  e300fff5  loadli.w r1,  -1288(r30)
001060  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
001064  e340fff5  loadli.w r1,  -1284(r30)
001068  7e0002e0  vmmov mr0, r4
00106c  1f020020  addli r4, zero, 4096
001070  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
001074  e3000ff6  loadli.w r1,  -1280(r30)
001078  7e0002e0  vmmov mr0, r4
00107c  1f020040  addli r4, zero, 8192
001080  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
001084  e3008ff6  loadli.w r1,  -1216(r30)
001088  7e0002e0  vmmov mr0, r4
00108c  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
001090  e3000ff7  loadli.w r1,  -1152(r30)
001094  7e8002e0  vmmov mr0, r5
001098  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
00109c  63028ff7  loadli.w r4,  -1088(r30)
0010a0  ab0000f0  lui r1, 983040
0010a4  97101b00  or r1, r22, r1
0010a8  ea237230  vor.u.mh vr7{mr0}, r4, vr7
0010ac  6b520f01  load.d r[5:6], 16(r30)
0010b0  eb540fc0  load.d r[10:11], -1024(r30)
0010b4  e343eff4  loadli.w r7,  -1420(r30)
0010b8  0b229210  add.ul r[5:6], r[5:6], r[10:11]
0010bc  e304eff4  loadli.w r9,  -1424(r30)
0010c0  92913402  vadd.f.mz.rn vr3{mr1}, r9, vr3
0010c4  12912402  vadd.f.mz.rn vr2{mr1}, r9, vr2
0010c8  92901402  vadd.f.mz.rn vr1{mr1}, r9, vr1
0010cc  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
0010d0  8a913302  vmul.f.mz.rn vr3{mr1}, r7, vr3
0010d4  0a912302  vmul.f.mz.rn vr2{mr1}, r7, vr2
0010d8  46183f82  vstore_mask16.mz vr3{mr1}, 1152(r30)
0010dc  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
0010e0  461c2f82  vstore_mask16.mz vr2{mr1}, 1216(r30)
0010e4  46101fa2  vstore_mask16.mz vr1{mr1}, 1280(r30)
0010e8  12100302  vadd.f.mz.rn vr0{mr1}, r6, vr0
0010ec  12900402  vadd.f.mz.rn vr0{mr1}, r9, vr0
0010f0  0a900302  vmul.f.mz.rn vr0{mr1}, r7, vr0
0010f4  46140fa2  vstore_mask16.mz vr0{mr1}, 1344(r30)
0010f8  00a00000  mfence { lm }
0010fc  ff308200  s_lm2gm r1, r8, 0(r[5:6])
001100  00a00000  mfence { lm }
001104  bb4701fc  bneq r2, zero, -1552
001108  6344cff4  loadli.w r8,  -1436(r30)
00110c  e3009ff4  loadli.w r1,  -1464(r30)
001110  eb550f00  load.d r[12:13], 0(r30)
001114  eb548fc7  load.d r[10:11], -904(r30)
001118  9f030ffc  addli r7, r30, -512
00111c  0b141410  add.s r8, r8, r1
001120  e3409ff4  loadli.w r1,  -1460(r30)
001124  3f1314f8  blt.s r8, r1, -3900
001128  9f0e0ff3  addli sp, r30, -1664
00112c  9f8e0e0d  addli sp, sp, 1664
001130  00a00300  mfence { lm, sm, gm }
001134  00100000  exit
001138  9f8efeff  addli sp, sp, -8
00113c  9f000100  addli r1, r2, 0
001140  2bf1ff7f  lui r2, 524287
001144  ab02807f  lui r5, 522240
001148  67c0ee01  storeli.w r30, 4(sp)
00114c  6780fe01  storeli.w r31, 0(sp)
001150  1f8f1e00  addli r30, sp, 8
001154  1b12f1ff  ori r4, r2, 4095
001158  17814000  and r2, r1, r4
00115c  13832204  setlt.u r6, r5, r2
001160  1f810100  addli r2, r3, 0
001164  bb210300  bneq r6, zero, 104
001168  97014100  and r3, r2, r4
00116c  93813204  setlt.u r3, r5, r3
001170  3be10100  bneq r3, zero, 88
001174  abf1ffff  lui r3, 1048575
001178  17221100  xor r4, r2, r1
00117c  9b91f1ff  ori r3, r3, 4095
001180  3fa04100  blt.s r3, r4, 8
001184  5b0b0000  j 88
001188  9b319100  slli r3, r2, 9
00118c  9bb29000  slli r5, r1, 9
001190  1b427101  srli r4, r2, 23
001194  1bc37001  srli r6, r1, 23
001198  93e32004  setlt.f r7, r1, r2
00119c  93810100  seteq r3, r3, zero
0011a0  93820200  seteq r5, r5, zero
0011a4  1b02f20f  andi r4, r4, 255
0011a8  1b03f30f  andi r6, r6, 255
0011ac  1b72f20f  setlti r4, r4, 255
0011b0  1b73f30f  setlti r6, r6, 255
0011b4  97113200  or r3, r4, r3
0011b8  17125300  or r4, r6, r5
0011bc  97013200  and r3, r4, r3
0011c0  97813300  and r3, r7, r3
0011c4  3ba00100  bneq r3, zero, 8
0011c8  1f810000  addli r2, r1, 0
0011cc  e38f0e00  loadli.w r31,  0(sp)
0011d0  63cf0e00  loadli.w r30,  4(sp)
0011d4  9f8e1e00  addli sp, sp, 8
0011d8  5f800f00  jr r31, 0
0011dc  bfcf00fe  blt.s r1, zero, -16
0011e0  5bfdffff  j -24
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
001394  00100000  exit
001398  00100000  exit
00139c  00100000  exit
0013a0  00100000  exit
0013a4  00100000  exit
0013a8  00100000  exit
0013ac  00100000  exit
0013b0  00100000  exit
0013b4  00100000  exit
0013b8  00100000  exit
0013bc  00100000  exit
0013c0  00100000  exit
0013c4  00100000  exit
0013c8  00100000  exit
0013cc  00100000  exit
0013d0  00100000  exit
0013d4  00100000  exit
0013d8  00100000  exit
0013dc  00100000  exit
0013e0  00100000  exit
0013e4  00100000  exit
0013e8  00100000  exit
0013ec  00100000  exit
0013f0  00100000  exit
0013f4  00100000  exit
0013f8  00100000  exit
0013fc  00100000  exit
001400  00100000  exit
001404  00100000  exit
001408  00100000  exit
00140c  00100000  exit
001410  00100000  exit
001414  00100000  exit
001418  00100000  exit
00141c  00100000  exit
001420  00100000  exit
