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
0000dc  9f8e5efb  addli sp, sp, -600
0000e0  2b010000  lui r2, 0
0000e4  80300002  core_id r1
0000e8  1f8f3e04  addli r30, sp, 536
0000ec  80520002  load_param_i r5, 0
0000f0  9bb12000  slli r3, r1, 2
0000f4  1f010100  addli r2, r2, 0
0000f8  e3454f00  loadli.w r11,  36(r30)
0000fc  63055f00  loadli.w r10,  40(r30)
000100  0b922110  add.s r4, r3, r2
000104  e3014f00  loadli.w r3,  32(r30)
000108  67414ffc  storeli.w r4, -492(r30)
00010c  73600200  stores.w zero, 0(r4)
000110  2bf20000  lui r4, 15
000114  8b913520  mul.s r3, r11, r3
000118  00a00300  mfence { lm, sm, gm }
00011c  1b16f2ff  ori r12, r4, 4095
000120  8b96a120  mul.s r13, r3, r10
000124  80210604  csr_set csr3, r12
000128  00d00100  sync_group
00012c  4bd55604  ble.s r13, r5, 2388
000130  9f012000  addli r3, zero, 16
000134  1b83f000  andi r6, r1, 15
000138  abf3ff3f  lui r7, 262143
00013c  1f180000  addli r16, zero, 1
000140  80d70002  load_param_i r15, 1
000144  9f0a8ffd  addli r21, r30, -320
000148  1f0b0001  addli r22, zero, 128
00014c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000150  eeb01062  vxor.s.mz vr1{mr1}, vr1, vr1
000154  6701cffc  storeli.w r12, -496(r30)
000158  e740dffc  storeli.w r13, -500(r30)
00015c  0b973030  div.s r14, r1, r3
000160  67006ffc  storeli.w r6, -512(r30)
000164  9b9303ff  ori r7, r7, 4080
000168  eb518f00  load.d r[4:5], 8(r30)
00016c  6740fffc  storeli.w r15, -508(r30)
000170  97837000  and r7, r1, r7
000174  9bb32300  slli r7, r7, 2
000178  1b334700  slli r6, r14, 4
00017c  8b992310  add.s r19, r7, r2
000180  e700effc  storeli.w r14, -504(r30)
000184  0b936018  sub.s r6, r1, r6
000188  9bf00004  setlti r1, r1, 64
00018c  1b346300  slli r8, r6, 6
000190  13030300  seteq r6, r6, zero
000194  e74f8ffa  storeli.w r8, -516(r30)
000198  33140428  sext_int2long r[9:10], r8
00019c  17340403  sll.d r[9:10], r[9:10], r16
0001a0  8ba18110  add.ul r[4:5], r[4:5], r[9:10]
0001a4  1f747000  addli r8, zero, 63
0001a8  97806000  and r1, r1, r6
0001ac  73383fde  store.d r[4:5], -528(r30)
0001b0  e74e1ffa  storeli.w r1, -532(r30)
0001b4  5b020000  j 16
0001b8  8b92f210  add.s r5, r5, r15
0001bc  3fa0d200  blt.s r5, r13, 8
0001c0  5b180100  j 2240
0001c4  8b90a230  div.s r1, r5, r10
0001c8  8b90b030  div.s r1, r1, r11
0001cc  9bb02000  slli r1, r1, 2
0001d0  8b91e010  add.s r3, r1, r14
0001d4  bf1f34fe  blt.s r8, r3, -28
0001d8  9f000000  addli r1, zero, 0
0001dc  0b911a10  add.s r2, r21, r1
0001e0  9fc00000  addli r1, r1, 4
0001e4  73100100  store.h zero, 0(r2)
0001e8  73110100  store.h zero, 2(r2)
0001ec  00a00000  mfence { lm }
0001f0  bbbf60ff  bneq r1, r22, -20
0001f4  6341fffb  loadli.w r2,  -516(r30)
0001f8  9bb0a100  slli r1, r3, 10
0001fc  e74b3ffc  storeli.w r3, -324(r30)
000200  1f130000  addli r6, zero, 1
000204  12320002  vadd.s.mz vr4{mr1}, zero, vr0
000208  8b902010  add.s r1, r1, r2
00020c  2b0100f0  lui r2, 983040
000210  b3910028  sext_int2long r[4:5], r1
000214  17112b00  or r2, r22, r2
000218  ab0000f0  lui r1, 983040
00021c  97b16102  sll.d r[4:5], r[4:5], r6
000220  6b530f00  load.d r[7:8], 0(r30)
000224  97101b00  or r1, r22, r1
000228  8b213310  add.ul r[4:5], r[7:8], r[4:5]
00022c  7fa15101  l_gm2lm r2, r21, 0(r[4:5])
000230  6b510fdf  load.d r[3:4], -528(r30)
000234  1f028ffe  addli r4, r30, -192
000238  ff204100  l_gm2lm r1, r4, 0(r[3:4])
00023c  00a00000  mfence { lm }
000240  6b312ff4  load.hu r2, -190(r30)
000244  42118fc3  vload_mask16.mz vr2{mr1}, 1728(r30)
000248  eb300ff4  load.hu r1, -192(r30)
00024c  86340100  vfp162float_l.rn vr9, vr2
000250  06750100  vfp162float_h.rn vr10, vr2
000254  67032ffc  storeli.w r2, -464(r30)
000258  6b314ff4  load.hu r2, -188(r30)
00025c  339a0020  hfloat2float.rn r20, r1
000260  e7032ffc  storeli.w r2, -456(r30)
000264  6b316ff4  load.hu r2, -186(r30)
000268  67042ffc  storeli.w r2, -448(r30)
00026c  6b318ff4  load.hu r2, -184(r30)
000270  e7042ffc  storeli.w r2, -440(r30)
000274  6b31aff4  load.hu r2, -182(r30)
000278  67052ffc  storeli.w r2, -432(r30)
00027c  6b31cff4  load.hu r2, -180(r30)
000280  e7052ffc  storeli.w r2, -424(r30)
000284  6b31eff4  load.hu r2, -178(r30)
000288  67062ffc  storeli.w r2, -416(r30)
00028c  6b310ff5  load.hu r2, -176(r30)
000290  67462ffc  storeli.w r2, -412(r30)
000294  6b312ff5  load.hu r2, -174(r30)
000298  e7062ffc  storeli.w r2, -408(r30)
00029c  6b314ff5  load.hu r2, -172(r30)
0002a0  e7462ffc  storeli.w r2, -404(r30)
0002a4  6b316ff5  load.hu r2, -170(r30)
0002a8  67072ffc  storeli.w r2, -400(r30)
0002ac  6b318ff5  load.hu r2, -168(r30)
0002b0  67472ffc  storeli.w r2, -396(r30)
0002b4  6b31aff5  load.hu r2, -166(r30)
0002b8  e7072ffc  storeli.w r2, -392(r30)
0002bc  6b31cff5  load.hu r2, -164(r30)
0002c0  e7472ffc  storeli.w r2, -388(r30)
0002c4  6b31eff5  load.hu r2, -162(r30)
0002c8  67482ffc  storeli.w r2, -380(r30)
0002cc  6b310ff6  load.hu r2, -160(r30)
0002d0  67082ffc  storeli.w r2, -384(r30)
0002d4  6b312ff6  load.hu r2, -158(r30)
0002d8  e7082ffc  storeli.w r2, -376(r30)
0002dc  6b314ff6  load.hu r2, -156(r30)
0002e0  e7482ffc  storeli.w r2, -372(r30)
0002e4  6b316ff6  load.hu r2, -154(r30)
0002e8  67092ffc  storeli.w r2, -368(r30)
0002ec  6b318ff6  load.hu r2, -152(r30)
0002f0  e7492ffc  storeli.w r2, -356(r30)
0002f4  6b31aff6  load.hu r2, -150(r30)
0002f8  670a2ffc  storeli.w r2, -352(r30)
0002fc  6b31cff6  load.hu r2, -148(r30)
000300  674a2ffc  storeli.w r2, -348(r30)
000304  6b31eff6  load.hu r2, -146(r30)
000308  e70a2ffc  storeli.w r2, -344(r30)
00030c  6b310ff7  load.hu r2, -144(r30)
000310  e74a2ffc  storeli.w r2, -340(r30)
000314  6b312ff7  load.hu r2, -142(r30)
000318  670b2ffc  storeli.w r2, -336(r30)
00031c  6b314ff7  load.hu r2, -140(r30)
000320  674b2ffc  storeli.w r2, -332(r30)
000324  6b316ff7  load.hu r2, -138(r30)
000328  e70b2ffc  storeli.w r2, -328(r30)
00032c  c2110fe2  vload_mask16.mz vr3{mr1}, 1792(r30)
000330  eb384ffa  load.hu r17, -92(r30)
000334  6b388ff7  load.hu r16, -136(r30)
000338  6b37aff7  load.hu r14, -134(r30)
00033c  eb30aff8  load.hu r1, -118(r30)
000340  eb3bcff7  load.hu r23, -132(r30)
000344  6b3eeff7  load.hu r28, -130(r30)
000348  6b3c0ff8  load.hu r24, -128(r30)
00034c  eb3d2ff8  load.hu r27, -126(r30)
000350  eb3c4ff8  load.hu r25, -124(r30)
000354  6b3d6ff8  load.hu r26, -122(r30)
000358  6b398ff8  load.hu r18, -120(r30)
00035c  6b31cff8  load.hu r2, -116(r30)
000360  eb31eff8  load.hu r3, -114(r30)
000364  6b320ff9  load.hu r4, -112(r30)
000368  6b332ff9  load.hu r6, -110(r30)
00036c  eb334ff9  load.hu r7, -108(r30)
000370  6b346ff9  load.hu r8, -106(r30)
000374  eb348ff9  load.hu r9, -104(r30)
000378  6b35aff9  load.hu r10, -102(r30)
00037c  eb35cff9  load.hu r11, -100(r30)
000380  eb36eff9  load.hu r13, -98(r30)
000384  6b360ffa  load.hu r12, -96(r30)
000388  eb372ffa  load.hu r15, -94(r30)
00038c  e7011ffd  storeli.w r17, -488(r30)
000390  eb386ffa  load.hu r17, -90(r30)
000394  33180820  hfloat2float.rn r16, r16
000398  33170720  hfloat2float.rn r14, r14
00039c  b3900020  hfloat2float.rn r1, r1
0003a0  e7411ffd  storeli.w r17, -484(r30)
0003a4  eb388ffa  load.hu r17, -88(r30)
0003a8  67021ffd  storeli.w r17, -480(r30)
0003ac  eb38affa  load.hu r17, -86(r30)
0003b0  67421ffd  storeli.w r17, -476(r30)
0003b4  eb38cffa  load.hu r17, -84(r30)
0003b8  e7021ffd  storeli.w r17, -472(r30)
0003bc  eb38effa  load.hu r17, -82(r30)
0003c0  e7421ffd  storeli.w r17, -468(r30)
0003c4  eb380ffb  load.hu r17, -80(r30)
0003c8  67431ffd  storeli.w r17, -460(r30)
0003cc  eb382ffb  load.hu r17, -78(r30)
0003d0  e7431ffd  storeli.w r17, -452(r30)
0003d4  eb384ffb  load.hu r17, -76(r30)
0003d8  67441ffd  storeli.w r17, -444(r30)
0003dc  eb386ffb  load.hu r17, -74(r30)
0003e0  e7441ffd  storeli.w r17, -436(r30)
0003e4  eb388ffb  load.hu r17, -72(r30)
0003e8  67451ffd  storeli.w r17, -428(r30)
0003ec  eb38affb  load.hu r17, -70(r30)
0003f0  e7451ffd  storeli.w r17, -420(r30)
0003f4  eb38cffb  load.hu r17, -68(r30)
0003f8  e7091ffd  storeli.w r17, -360(r30)
0003fc  eb38effb  load.hu r17, -66(r30)
000400  67491ffd  storeli.w r17, -364(r30)
000404  9f180000  addli r17, zero, 1
000408  fe8108e0  vmmov mr3, r17
00040c  6a224a36  vor.u.mh vr4{mr3}, r20, vr4
000410  e3086ffc  loadli.w r17,  -464(r30)
000414  339a0820  hfloat2float.rn r20, r17
000418  9f280000  addli r17, zero, 2
00041c  7e8008e0  vmmov mr0, r17
000420  6a224a30  vor.u.mh vr4{mr0}, r20, vr4
000424  e3087ffc  loadli.w r17,  -456(r30)
000428  339a0820  hfloat2float.rn r20, r17
00042c  9f480000  addli r17, zero, 4
000430  7e8108e0  vmmov mr2, r17
000434  6a224a34  vor.u.mh vr4{mr2}, r20, vr4
000438  fe0101c0  vmmov mr3, mr2
00043c  e3088ffc  loadli.w r17,  -448(r30)
000440  339a0820  hfloat2float.rn r20, r17
000444  9f081000  addli r17, zero, 8
000448  7e8008e0  vmmov mr0, r17
00044c  6a224a30  vor.u.mh vr4{mr0}, r20, vr4
000450  e3089ffc  loadli.w r17,  -440(r30)
000454  339a0820  hfloat2float.rn r20, r17
000458  9f082000  addli r17, zero, 16
00045c  7e8008e0  vmmov mr0, r17
000460  6a224a30  vor.u.mh vr4{mr0}, r20, vr4
000464  e308affc  loadli.w r17,  -432(r30)
000468  339a0820  hfloat2float.rn r20, r17
00046c  9f084000  addli r17, zero, 32
000470  7e8008e0  vmmov mr0, r17
000474  6a224a30  vor.u.mh vr4{mr0}, r20, vr4
000478  e308bffc  loadli.w r17,  -424(r30)
00047c  339a0820  hfloat2float.rn r20, r17
000480  9f088000  addli r17, zero, 64
000484  7e8008e0  vmmov mr0, r17
000488  6a224a30  vor.u.mh vr4{mr0}, r20, vr4
00048c  e308cffc  loadli.w r17,  -416(r30)
000490  339a0820  hfloat2float.rn r20, r17
000494  9f080001  addli r17, zero, 128
000498  7e8008e0  vmmov mr0, r17
00049c  6a224a30  vor.u.mh vr4{mr0}, r20, vr4
0004a0  e348cffc  loadli.w r17,  -412(r30)
0004a4  339a0820  hfloat2float.rn r20, r17
0004a8  9f080002  addli r17, zero, 256
0004ac  7e8008e0  vmmov mr0, r17
0004b0  6a224a30  vor.u.mh vr4{mr0}, r20, vr4
0004b4  e308dffc  loadli.w r17,  -408(r30)
0004b8  339a0820  hfloat2float.rn r20, r17
0004bc  9f080004  addli r17, zero, 512
0004c0  7e8008e0  vmmov mr0, r17
0004c4  6a224a30  vor.u.mh vr4{mr0}, r20, vr4
0004c8  e348dffc  loadli.w r17,  -404(r30)
0004cc  339a0820  hfloat2float.rn r20, r17
0004d0  9f080008  addli r17, zero, 1024
0004d4  7e8008e0  vmmov mr0, r17
0004d8  6a224a30  vor.u.mh vr4{mr0}, r20, vr4
0004dc  e308effc  loadli.w r17,  -400(r30)
0004e0  339a0820  hfloat2float.rn r20, r17
0004e4  9f080010  addli r17, zero, 2048
0004e8  7e8008e0  vmmov mr0, r17
0004ec  6a224a30  vor.u.mh vr4{mr0}, r20, vr4
0004f0  e348effc  loadli.w r17,  -396(r30)
0004f4  339a0820  hfloat2float.rn r20, r17
0004f8  9f080020  addli r17, zero, 4096
0004fc  7e8008e0  vmmov mr0, r17
000500  6a224a30  vor.u.mh vr4{mr0}, r20, vr4
000504  e308fffc  loadli.w r17,  -392(r30)
000508  339a0820  hfloat2float.rn r20, r17
00050c  9f080040  addli r17, zero, 8192
000510  2b800000  lui zero, 8
000514  7e8008e0  vmmov mr0, r17
000518  6a224a30  vor.u.mh vr4{mr0}, r20, vr4
00051c  e348fffc  loadli.w r17,  -388(r30)
000520  339a0820  hfloat2float.rn r20, r17
000524  ab480000  lui r17, 4
000528  7e8008e0  vmmov mr0, r17
00052c  6a224a30  vor.u.mh vr4{mr0}, r20, vr4
000530  e3480ffd  loadli.w r17,  -380(r30)
000534  7e0000e0  vmmov mr0, zero
000538  17200000  xor zero, zero, zero
00053c  92320002  vadd.s.mz vr5{mr1}, zero, vr0
000540  12330002  vadd.s.mz vr6{mr1}, zero, vr0
000544  92330002  vadd.s.mz vr7{mr1}, zero, vr0
000548  12340002  vadd.s.mz vr8{mr1}, zero, vr0
00054c  339a0820  hfloat2float.rn r20, r17
000550  e3080ffd  loadli.w r17,  -384(r30)
000554  6a224a30  vor.u.mh vr4{mr0}, r20, vr4
000558  1f1a0000  addli r20, zero, 1
00055c  b3980820  hfloat2float.rn r17, r17
000560  7e010ae0  vmmov mr2, r20
000564  1f2a0000  addli r20, zero, 2
000568  eaa25834  vor.u.mh vr5{mr2}, r17, vr5
00056c  e3081ffd  loadli.w r17,  -376(r30)
000570  7e000ae0  vmmov mr0, r20
000574  1f0a1000  addli r20, zero, 8
000578  0e129202  vmul.f.mz.rn vr4{mr1}, vr4, vr9
00057c  92340002  vadd.s.mz vr9{mr1}, zero, vr0
000580  b3980820  hfloat2float.rn r17, r17
000584  eaa25830  vor.u.mh vr5{mr0}, r17, vr5
000588  e3481ffd  loadli.w r17,  -372(r30)
00058c  b3980820  hfloat2float.rn r17, r17
000590  eaa25836  vor.u.mh vr5{mr3}, r17, vr5
000594  e3082ffd  loadli.w r17,  -368(r30)
000598  fe010ae0  vmmov mr3, r20
00059c  1f0a2000  addli r20, zero, 16
0005a0  7e000ae0  vmmov mr0, r20
0005a4  1f0a4000  addli r20, zero, 32
0005a8  b3980820  hfloat2float.rn r17, r17
0005ac  eaa25836  vor.u.mh vr5{mr3}, r17, vr5
0005b0  e3483ffd  loadli.w r17,  -356(r30)
0005b4  b3980820  hfloat2float.rn r17, r17
0005b8  eaa25830  vor.u.mh vr5{mr0}, r17, vr5
0005bc  e3084ffd  loadli.w r17,  -352(r30)
0005c0  7e000ae0  vmmov mr0, r20
0005c4  1f0a8000  addli r20, zero, 64
0005c8  b3980820  hfloat2float.rn r17, r17
0005cc  eaa25830  vor.u.mh vr5{mr0}, r17, vr5
0005d0  e3484ffd  loadli.w r17,  -348(r30)
0005d4  7e000ae0  vmmov mr0, r20
0005d8  1f0a0001  addli r20, zero, 128
0005dc  b3980820  hfloat2float.rn r17, r17
0005e0  eaa25830  vor.u.mh vr5{mr0}, r17, vr5
0005e4  e3085ffd  loadli.w r17,  -344(r30)
0005e8  7e000ae0  vmmov mr0, r20
0005ec  1f0a0002  addli r20, zero, 256
0005f0  b3980820  hfloat2float.rn r17, r17
0005f4  eaa25830  vor.u.mh vr5{mr0}, r17, vr5
0005f8  e3485ffd  loadli.w r17,  -340(r30)
0005fc  7e000ae0  vmmov mr0, r20
000600  1f0a0004  addli r20, zero, 512
000604  b3980820  hfloat2float.rn r17, r17
000608  eaa25830  vor.u.mh vr5{mr0}, r17, vr5
00060c  e3086ffd  loadli.w r17,  -336(r30)
000610  7e000ae0  vmmov mr0, r20
000614  1f0a0008  addli r20, zero, 1024
000618  b3980820  hfloat2float.rn r17, r17
00061c  eaa25830  vor.u.mh vr5{mr0}, r17, vr5
000620  e3486ffd  loadli.w r17,  -332(r30)
000624  7e000ae0  vmmov mr0, r20
000628  1f0a0010  addli r20, zero, 2048
00062c  b3980820  hfloat2float.rn r17, r17
000630  eaa25830  vor.u.mh vr5{mr0}, r17, vr5
000634  e3087ffd  loadli.w r17,  -328(r30)
000638  7e000ae0  vmmov mr0, r20
00063c  b3980820  hfloat2float.rn r17, r17
000640  eaa25830  vor.u.mh vr5{mr0}, r17, vr5
000644  9f080020  addli r17, zero, 4096
000648  7e8008e0  vmmov mr0, r17
00064c  ab880000  lui r17, 8
000650  ea225830  vor.u.mh vr5{mr0}, r16, vr5
000654  1f080040  addli r16, zero, 8192
000658  7e0008e0  vmmov mr0, r16
00065c  2b480000  lui r16, 4
000660  ea225730  vor.u.mh vr5{mr0}, r14, vr5
000664  33970b20  hfloat2float.rn r14, r23
000668  7e0008e0  vmmov mr0, r16
00066c  33180c20  hfloat2float.rn r16, r24
000670  ea225730  vor.u.mh vr5{mr0}, r14, vr5
000674  33170e20  hfloat2float.rn r14, r28
000678  7e8008e0  vmmov mr0, r17
00067c  ea225730  vor.u.mh vr5{mr0}, r14, vr5
000680  6a236834  vor.u.mh vr6{mr2}, r16, vr6
000684  1f280000  addli r16, zero, 2
000688  33970d20  hfloat2float.rn r14, r27
00068c  7e0008e0  vmmov mr0, r16
000690  1f480000  addli r16, zero, 4
000694  6a236730  vor.u.mh vr6{mr0}, r14, vr6
000698  33970c20  hfloat2float.rn r14, r25
00069c  7e0108e0  vmmov mr2, r16
0006a0  1f082000  addli r16, zero, 16
0006a4  0e91a202  vmul.f.mz.rn vr2{mr1}, vr5, vr10
0006a8  86b20100  vfp162float_l.rn vr5, vr3
0006ac  06f50100  vfp162float_h.rn vr10, vr3
0006b0  86110200  vfloat2fp16_l.rn vr3, vr4
0006b4  86510100  vfloat2fp16_h.rn vr3, vr2
0006b8  06f20100  vfp162float_h.rn vr4, vr3
0006bc  06b10100  vfp162float_l.rn vr2, vr3
0006c0  7e0008e0  vmmov mr0, r16
0006c4  6a236734  vor.u.mh vr6{mr2}, r14, vr6
0006c8  33170d20  hfloat2float.rn r14, r26
0006cc  6a236736  vor.u.mh vr6{mr3}, r14, vr6
0006d0  33170920  hfloat2float.rn r14, r18
0006d4  6a236730  vor.u.mh vr6{mr0}, r14, vr6
0006d8  1f074000  addli r14, zero, 32
0006dc  7e0007e0  vmmov mr0, r14
0006e0  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
0006e4  b3100120  hfloat2float.rn r1, r2
0006e8  1f018000  addli r2, zero, 64
0006ec  7e0001e0  vmmov mr0, r2
0006f0  1f010001  addli r2, zero, 128
0006f4  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
0006f8  b3900120  hfloat2float.rn r1, r3
0006fc  7e0001e0  vmmov mr0, r2
000700  1f010002  addli r2, zero, 256
000704  ab810000  lui r3, 8
000708  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
00070c  b3100220  hfloat2float.rn r1, r4
000710  7e0001e0  vmmov mr0, r2
000714  1f010004  addli r2, zero, 512
000718  7e0101e0  vmmov mr2, r2
00071c  1f010008  addli r2, zero, 1024
000720  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
000724  b3100320  hfloat2float.rn r1, r6
000728  fe0101e0  vmmov mr3, r2
00072c  1f010010  addli r2, zero, 2048
000730  7e0001e0  vmmov mr0, r2
000734  1f010020  addli r2, zero, 4096
000738  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
00073c  b3900320  hfloat2float.rn r1, r7
000740  6aa36036  vor.u.mh vr6{mr3}, r1, vr6
000744  b3100420  hfloat2float.rn r1, r8
000748  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
00074c  b3900420  hfloat2float.rn r1, r9
000750  7e0001e0  vmmov mr0, r2
000754  1f010040  addli r2, zero, 8192
000758  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
00075c  b3100520  hfloat2float.rn r1, r10
000760  7e0001e0  vmmov mr0, r2
000764  2b410000  lui r2, 4
000768  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
00076c  b3900520  hfloat2float.rn r1, r11
000770  7e0001e0  vmmov mr0, r2
000774  33110620  hfloat2float.rn r2, r12
000778  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
00077c  b3900620  hfloat2float.rn r1, r13
000780  7e8001e0  vmmov mr0, r3
000784  ab410000  lui r3, 4
000788  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
00078c  9f100000  addli r1, zero, 1
000790  7e8000e0  vmmov mr0, r1
000794  b3900720  hfloat2float.rn r1, r15
000798  ea237130  vor.u.mh vr7{mr0}, r2, vr7
00079c  1f210000  addli r2, zero, 2
0007a0  7e0001e0  vmmov mr0, r2
0007a4  1f410000  addli r2, zero, 4
0007a8  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0007ac  e3003ffc  loadli.w r1,  -488(r30)
0007b0  7e0001e0  vmmov mr0, r2
0007b4  1f011000  addli r2, zero, 8
0007b8  b3900020  hfloat2float.rn r1, r1
0007bc  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0007c0  e3403ffc  loadli.w r1,  -484(r30)
0007c4  7e0001e0  vmmov mr0, r2
0007c8  1f012000  addli r2, zero, 16
0007cc  b3900020  hfloat2float.rn r1, r1
0007d0  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0007d4  e3004ffc  loadli.w r1,  -480(r30)
0007d8  7e0001e0  vmmov mr0, r2
0007dc  1f014000  addli r2, zero, 32
0007e0  b3900020  hfloat2float.rn r1, r1
0007e4  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0007e8  e3404ffc  loadli.w r1,  -476(r30)
0007ec  7e0001e0  vmmov mr0, r2
0007f0  1f018000  addli r2, zero, 64
0007f4  b3900020  hfloat2float.rn r1, r1
0007f8  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0007fc  e3005ffc  loadli.w r1,  -472(r30)
000800  7e0001e0  vmmov mr0, r2
000804  1f010001  addli r2, zero, 128
000808  b3900020  hfloat2float.rn r1, r1
00080c  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000810  e3405ffc  loadli.w r1,  -468(r30)
000814  7e0001e0  vmmov mr0, r2
000818  1f010002  addli r2, zero, 256
00081c  b3900020  hfloat2float.rn r1, r1
000820  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000824  e3406ffc  loadli.w r1,  -460(r30)
000828  7e0001e0  vmmov mr0, r2
00082c  1f010010  addli r2, zero, 2048
000830  b3900020  hfloat2float.rn r1, r1
000834  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000838  e3407ffc  loadli.w r1,  -452(r30)
00083c  7e8001e0  vmmov mr0, r3
000840  b3900020  hfloat2float.rn r1, r1
000844  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
000848  e3408ffc  loadli.w r1,  -444(r30)
00084c  7e0101e0  vmmov mr2, r2
000850  1f010020  addli r2, zero, 4096
000854  b3900020  hfloat2float.rn r1, r1
000858  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
00085c  e3409ffc  loadli.w r1,  -436(r30)
000860  b3900020  hfloat2float.rn r1, r1
000864  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
000868  e340affc  loadli.w r1,  -428(r30)
00086c  7e0101e0  vmmov mr2, r2
000870  1f010040  addli r2, zero, 8192
000874  b3900020  hfloat2float.rn r1, r1
000878  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
00087c  e340bffc  loadli.w r1,  -420(r30)
000880  7e0101e0  vmmov mr2, r2
000884  b3900020  hfloat2float.rn r1, r1
000888  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
00088c  e3003ffd  loadli.w r1,  -360(r30)
000890  63412ffd  loadli.w r2,  -364(r30)
000894  b3900020  hfloat2float.rn r1, r1
000898  33110120  hfloat2float.rn r2, r2
00089c  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0008a0  ab800000  lui r1, 8
0008a4  7e8000e0  vmmov mr0, r1
0008a8  abf00000  lui r1, 15
0008ac  9ff0f01f  addli r1, r1, 4095
0008b0  ea237130  vor.u.mh vr7{mr0}, r2, vr7
0008b4  7e8000e0  vmmov mr0, r1
0008b8  6e942030  vor.f.mh vr8{mr0}, vr1, vr2
0008bc  ee944030  vor.f.mh vr9{mr0}, vr1, vr4
0008c0  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0008c4  0e115302  vmul.f.mz.rn vr2{mr1}, vr6, vr5
0008c8  8e91a302  vmul.f.mz.rn vr3{mr1}, vr7, vr10
0008cc  06130100  vfloat2fp16_l.rn vr6, vr2
0008d0  06d30100  vfloat2fp16_h.rn vr6, vr3
0008d4  06310300  vfp162float_l.rn vr2, vr6
0008d8  86710300  vfp162float_h.rn vr3, vr6
0008dc  6e922030  vor.f.mh vr4{mr0}, vr1, vr2
0008e0  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0008e4  96129402  vadd.f.mz.rn vr5{mr1}, vr8, vr9
0008e8  6e913030  vor.f.mh vr2{mr0}, vr1, vr3
0008ec  96914202  vadd.f.mz.rn vr3{mr1}, vr5, vr4
0008f0  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
0008f4  fa100140  vextracti.f r1, 0(vr2)
0008f8  7a111140  vextracti.f r2, 1(vr2)
0008fc  8be02010  add.f.rn r1, r1, r2
000900  7a112140  vextracti.f r2, 2(vr2)
000904  8b601110  add.f.rn r1, r2, r1
000908  7a113140  vextracti.f r2, 3(vr2)
00090c  8b601110  add.f.rn r1, r2, r1
000910  7a114140  vextracti.f r2, 4(vr2)
000914  8b601110  add.f.rn r1, r2, r1
000918  7a115140  vextracti.f r2, 5(vr2)
00091c  8b601110  add.f.rn r1, r2, r1
000920  7a116140  vextracti.f r2, 6(vr2)
000924  8b601110  add.f.rn r1, r2, r1
000928  7a117140  vextracti.f r2, 7(vr2)
00092c  8b601110  add.f.rn r1, r2, r1
000930  7a118140  vextracti.f r2, 8(vr2)
000934  8b601110  add.f.rn r1, r2, r1
000938  7a119140  vextracti.f r2, 9(vr2)
00093c  8b601110  add.f.rn r1, r2, r1
000940  7a11a140  vextracti.f r2, 10(vr2)
000944  8b601110  add.f.rn r1, r2, r1
000948  7a11b140  vextracti.f r2, 11(vr2)
00094c  8b601110  add.f.rn r1, r2, r1
000950  7a11c140  vextracti.f r2, 12(vr2)
000954  8b601110  add.f.rn r1, r2, r1
000958  7a11d140  vextracti.f r2, 13(vr2)
00095c  8b601110  add.f.rn r1, r2, r1
000960  7a11e140  vextracti.f r2, 14(vr2)
000964  8b601110  add.f.rn r1, r2, r1
000968  7a11f140  vextracti.f r2, 15(vr2)
00096c  8b601110  add.f.rn r1, r2, r1
000970  63412ffc  loadli.w r2,  -492(r30)
000974  73601100  stores.w r1, 0(r2)
000978  00a00300  mfence { lm, sm, gm }
00097c  63062ffc  loadli.w r12,  -496(r30)
000980  80210604  csr_set csr3, r12
000984  00d00100  sync_group
000988  e3000ffc  loadli.w r1,  -512(r30)
00098c  3b920000  bneq r1, zero, 132
000990  efc00900  loads.w r1, 0(r19)
000994  6fc14900  loads.w r2, 4(r19)
000998  efc18900  loads.w r3, 8(r19)
00099c  8be02010  add.f.rn r1, r1, r2
0009a0  6fc1c900  loads.w r2, 12(r19)
0009a4  8be03010  add.f.rn r1, r1, r3
0009a8  efc10901  loads.w r3, 16(r19)
0009ac  8be02010  add.f.rn r1, r1, r2
0009b0  6fc14901  loads.w r2, 20(r19)
0009b4  8be03010  add.f.rn r1, r1, r3
0009b8  efc18901  loads.w r3, 24(r19)
0009bc  8be02010  add.f.rn r1, r1, r2
0009c0  6fc1c901  loads.w r2, 28(r19)
0009c4  8be03010  add.f.rn r1, r1, r3
0009c8  efc10902  loads.w r3, 32(r19)
0009cc  8be02010  add.f.rn r1, r1, r2
0009d0  6fc14902  loads.w r2, 36(r19)
0009d4  8be03010  add.f.rn r1, r1, r3
0009d8  efc18902  loads.w r3, 40(r19)
0009dc  8be02010  add.f.rn r1, r1, r2
0009e0  6fc1c902  loads.w r2, 44(r19)
0009e4  8be03010  add.f.rn r1, r1, r3
0009e8  efc10903  loads.w r3, 48(r19)
0009ec  8be02010  add.f.rn r1, r1, r2
0009f0  6fc14903  loads.w r2, 52(r19)
0009f4  8be03010  add.f.rn r1, r1, r3
0009f8  efc18903  loads.w r3, 56(r19)
0009fc  8be02010  add.f.rn r1, r1, r2
000a00  6fc1c903  loads.w r2, 60(r19)
000a04  8be03010  add.f.rn r1, r1, r3
000a08  8be02010  add.f.rn r1, r1, r2
000a0c  73e01900  stores.w r1, 0(r19)
000a10  00a00300  mfence { lm, sm, gm }
000a14  80210604  csr_set csr3, r12
000a18  00d00100  sync_group
000a1c  63055f00  loadli.w r10,  40(r30)
000a20  e3454f00  loadli.w r11,  36(r30)
000a24  e3461ffc  loadli.w r13,  -500(r30)
000a28  63071ffc  loadli.w r14,  -504(r30)
000a2c  e3470ffc  loadli.w r15,  -508(r30)
000a30  e340dffb  loadli.w r1,  -532(r30)
000a34  63417ffd  loadli.w r2,  -324(r30)
000a38  1f747000  addli r8, zero, 63
000a3c  b7fd00fa  beq r1, zero, -2180
000a40  efc00900  loads.w r1, 0(r19)
000a44  33110128  sext_int2long r[3:4], r2
000a48  1f130000  addli r6, zero, 1
000a4c  2b0200f0  lui r4, 983040
000a50  17316102  sll.d r[3:4], r[3:4], r6
000a54  6b530f01  load.d r[7:8], 16(r30)
000a58  0b212310  add.ul r[3:4], r[7:8], r[3:4]
000a5c  b3a00000  float2hfloat.rn r1, r1
000a60  73101ffc  store.h r1, -64(r30)
000a64  9f200000  addli r1, zero, 2
000a68  00a00000  mfence { lm }
000a6c  97904000  or r1, r1, r4
000a70  1f028fff  addli r4, r30, -64
000a74  ff304100  s_lm2gm r1, r4, 0(r[3:4])
000a78  00a00000  mfence { lm }
000a7c  dbe7feff  j -2244
000a80  9f8e3e04  addli sp, sp, 536
000a84  00a00300  mfence { lm, sm, gm }
000a88  00100000  exit
000a8c  00100000  exit
000a90  00100000  exit
000a94  00100000  exit
000a98  00100000  exit
000a9c  00100000  exit
000aa0  00100000  exit
000aa4  00100000  exit
000aa8  00100000  exit
000aac  00100000  exit
000ab0  00100000  exit
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
