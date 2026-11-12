; SHA-256 8f6f5849be168650fbb545533073ab7e063672ab2f262cc782377fac363fcc64
; P800 Cluster · XTDK LLVM 19 · 3448 / 3448 words decoded
; bound names: triton_red_fused_add_native_layer_norm_0
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
0000e0  ab000000  lui r1, 0
0000e4  80310002  core_id r3
0000e8  1f8f0e16  addli r30, sp, 2816
0000ec  ab04803f  lui r9, 260096
0000f0  1bb12100  slli r2, r3, 2
0000f4  9f800000  addli r1, r1, 0
0000f8  e3434f00  loadli.w r7,  36(r30)
0000fc  63024f00  loadli.w r4,  32(r30)
000100  63035f00  loadli.w r6,  40(r30)
000104  8b121110  add.s r5, r2, r1
000108  0b924320  mul.s r4, r7, r4
00010c  1f840210  addli r8, r5, 2048
000110  73e00200  stores.w zero, 0(r5)
000114  e7055fea  storeli.w r5, -2728(r30)
000118  9f820220  addli r5, r5, 4096
00011c  0b126220  mul.s r4, r4, r6
000120  67055fea  storeli.w r5, -2736(r30)
000124  73e09200  stores.w r9, 0(r5)
000128  abf20000  lui r5, 15
00012c  67458fea  storeli.w r8, -2732(r30)
000130  73600400  stores.w zero, 0(r8)
000134  00540002  load_param_i r8, 0
000138  00a00300  mfence { lm, sm, gm }
00013c  9b92f2ff  ori r5, r5, 4095
000140  e7465fea  storeli.w r5, -2708(r30)
000144  80a10204  csr_set csr3, r5
000148  00d00100  sync_group
00014c  67434fea  storeli.w r4, -2764(r30)
000150  4b098218  ble.s r4, r8, 12864
000154  1f021000  addli r4, zero, 8
000158  80d30002  load_param_i r7, 1
00015c  9f140000  addli r9, zero, 1
000160  eea5b562  vxor.u.mz vr11{mr1}, vr11, vr11
000164  6e348462  vxor.s.mz vr8{mr1}, vr8, vr8
000168  0b934130  div.s r6, r3, r4
00016c  e7427fea  storeli.w r7, -2772(r30)
000170  9b837100  andi r7, r3, 7
000174  6b528f00  load.d r[5:6], 8(r30)
000178  e7447fea  storeli.w r7, -2740(r30)
00017c  abf3ffff  lui r7, 1048575
000180  67036fea  storeli.w r6, -2768(r30)
000184  1b333300  slli r6, r6, 3
000188  8b916118  sub.s r3, r3, r6
00018c  1b9303fe  ori r6, r7, 4064
000190  9bb18100  slli r3, r3, 8
000194  17016100  and r2, r2, r6
000198  33930128  sext_int2long r[7:8], r3
00019c  e7043fea  storeli.w r3, -2744(r30)
0001a0  8b111110  add.s r3, r2, r1
0001a4  97309302  sll.d r[2:3], r[7:8], r9
0001a8  1f830110  addli r6, r3, 2048
0001ac  e7063fea  storeli.w r3, -2712(r30)
0001b0  9f030004  addli r7, zero, 512
0001b4  8b201210  add.ul r[2:3], r[5:6], r[2:3]
0001b8  1f028fea  addli r4, r30, -2752
0001bc  67466fea  storeli.w r6, -2716(r30)
0001c0  9f020ffc  addli r5, r30, -512
0001c4  1f030ff8  addli r6, r30, -1024
0001c8  73301200  store.d r[2:3], 0(r4)
0001cc  ab00803f  lui r1, 260096
0001d0  1f820120  addli r4, r3, 4096
0001d4  9f71f00f  addli r3, zero, 2047
0001d8  6a90b022  vor.f.mz vr0{mr1}, r1, vr11
0001dc  abf00000  lui r1, 15
0001e0  e7034fea  storeli.w r4, -2760(r30)
0001e4  9ff0f01f  addli r1, r1, 4095
0001e8  7e8000e0  vmmov mr0, r1
0001ec  9f000ff7  addli r1, r30, -1152
0001f0  4690b002  vstore_mask16.mz vr11{mr1}, 0(r1)
0001f4  ee150430  vor.f.mh vr11{mr0}, vr8, vr0
0001f8  9f008feb  addli r1, r30, -2624
0001fc  4690b002  vstore_mask16.mz vr11{mr1}, 0(r1)
000200  ab10833a  lui r1, 239665
000204  9b90f026  ori r1, r1, 623
000208  e7431fea  storeli.w r1, -2756(r30)
00020c  9f000feb  addli r1, r30, -2688
000210  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
000214  5b030000  j 24
000218  e3405fea  loadli.w r1,  -2772(r30)
00021c  0b141410  add.s r8, r8, r1
000220  e3406fea  loadli.w r1,  -2764(r30)
000224  3f201400  blt.s r8, r1, 8
000228  5b2d0600  j 12648
00022c  e3005f00  loadli.w r1,  40(r30)
000230  63414f00  loadli.w r2,  36(r30)
000234  9f840201  addli r9, r5, 128
000238  1f858200  addli r10, r5, 64
00023c  1f160000  addli r12, zero, 1
000240  67068fea  storeli.w r8, -2720(r30)
000244  e7479fea  storeli.w r9, -2692(r30)
000248  e700afec  storeli.w r10, -2552(r30)
00024c  8b101430  div.s r1, r8, r1
000250  8b902030  div.s r1, r1, r2
000254  63016fea  loadli.w r2,  -2768(r30)
000258  9bb04000  slli r1, r1, 4
00025c  8b952010  add.s r11, r1, r2
000260  9f000000  addli r1, zero, 0
000264  e745bfea  storeli.w r11, -2724(r30)
000268  00a00000  mfence { lm }
00026c  db020000  j 20
000270  1b011600  andi r2, r12, 1
000274  9f001000  addli r1, zero, 8
000278  1f060000  addli r12, zero, 0
00027c  377e01fe  beq r2, zero, -100
000280  8b901510  add.s r1, r11, r1
000284  bfbf11fe  blt.s r3, r1, -20
000288  1f010000  addli r2, zero, 0
00028c  8b112310  add.s r3, r6, r2
000290  1f410100  addli r2, r2, 4
000294  73900100  store.h zero, 0(r3)
000298  73910100  store.h zero, 2(r3)
00029c  00a00000  mfence { lm }
0002a0  bb3f71fe  bneq r2, r7, -20
0002a4  63019fea  loadli.w r2,  -2744(r30)
0002a8  9bb0b000  slli r1, r1, 11
0002ac  9f110000  addli r3, zero, 1
0002b0  1f02efea  addli r4, r30, -2704
0002b4  e707cfea  storeli.w r12, -2696(r30)
0002b8  8b902010  add.s r1, r1, r2
0002bc  b3900028  sext_int2long r[2:3], r1
0002c0  17b43002  sll.d r[9:10], r[2:3], r3
0002c4  6b510f00  load.d r[3:4], 0(r30)
0002c8  ab0000f0  lui r1, 983040
0002cc  97901300  or r1, r7, r1
0002d0  73308200  store.d r[9:10], 0(r4)
0002d4  0b218110  add.ul r[3:4], r[3:4], r[9:10]
0002d8  ff206100  l_gm2lm r1, r6, 0(r[3:4])
0002dc  9f000000  addli r1, zero, 0
0002e0  0b911210  add.s r2, r5, r1
0002e4  9fc00000  addli r1, r1, 4
0002e8  73100100  store.h zero, 0(r2)
0002ec  73110100  store.h zero, 2(r2)
0002f0  00a00000  mfence { lm }
0002f4  bbbf70fe  bneq r1, r7, -20
0002f8  1f038fea  addli r6, r30, -2752
0002fc  ab0000f0  lui r1, 983040
000300  1f020000  addli r4, zero, 0
000304  6b510300  load.d r[3:4], 0(r6)
000308  97901300  or r1, r7, r1
00030c  ff205100  l_gm2lm r1, r5, 0(r[3:4])
000310  00a00000  mfence { lm }
000314  6b312fe0  load.hu r2, -510(r30)
000318  eb300fe0  load.hu r1, -512(r30)
00031c  c2100f82  vload_mask16.mz vr1{mr1}, 1024(r30)
000320  06b30000  vfp162float_l.rn vr6, vr1
000324  86f30000  vfp162float_h.rn vr7, vr1
000328  e7442fec  storeli.w r2, -2484(r30)
00032c  6b314fe0  load.hu r2, -508(r30)
000330  b3900020  hfloat2float.rn r1, r1
000334  67452fec  storeli.w r2, -2476(r30)
000338  6b316fe0  load.hu r2, -506(r30)
00033c  e7452fec  storeli.w r2, -2468(r30)
000340  6b318fe0  load.hu r2, -504(r30)
000344  67462fec  storeli.w r2, -2460(r30)
000348  6b31afe0  load.hu r2, -502(r30)
00034c  e7462fec  storeli.w r2, -2452(r30)
000350  6b31cfe0  load.hu r2, -500(r30)
000354  67472fec  storeli.w r2, -2444(r30)
000358  6b31efe0  load.hu r2, -498(r30)
00035c  e7472fec  storeli.w r2, -2436(r30)
000360  6b310fe1  load.hu r2, -496(r30)
000364  670c2fec  storeli.w r2, -2368(r30)
000368  6b312fe1  load.hu r2, -494(r30)
00036c  67002fee  storeli.w r2, -2304(r30)
000370  6b314fe1  load.hu r2, -492(r30)
000374  67042fee  storeli.w r2, -2240(r30)
000378  6b316fe1  load.hu r2, -490(r30)
00037c  67082fee  storeli.w r2, -2176(r30)
000380  6b318fe1  load.hu r2, -488(r30)
000384  670c2fee  storeli.w r2, -2112(r30)
000388  6b31afe1  load.hu r2, -486(r30)
00038c  67002ff0  storeli.w r2, -2048(r30)
000390  6b31cfe1  load.hu r2, -484(r30)
000394  67042ff0  storeli.w r2, -1984(r30)
000398  6b31efe1  load.hu r2, -482(r30)
00039c  670c2ff0  storeli.w r2, -1856(r30)
0003a0  6b310fe2  load.hu r2, -480(r30)
0003a4  e74b2ff0  storeli.w r2, -1860(r30)
0003a8  6b312fe2  load.hu r2, -478(r30)
0003ac  67002ff2  storeli.w r2, -1792(r30)
0003b0  6b314fe2  load.hu r2, -476(r30)
0003b4  67042ff2  storeli.w r2, -1728(r30)
0003b8  6b316fe2  load.hu r2, -474(r30)
0003bc  67082ff2  storeli.w r2, -1664(r30)
0003c0  6b318fe2  load.hu r2, -472(r30)
0003c4  670c2ff2  storeli.w r2, -1600(r30)
0003c8  6b31afe2  load.hu r2, -470(r30)
0003cc  67002ff4  storeli.w r2, -1536(r30)
0003d0  6b31cfe2  load.hu r2, -468(r30)
0003d4  67042ff4  storeli.w r2, -1472(r30)
0003d8  6b31efe2  load.hu r2, -466(r30)
0003dc  67082ff4  storeli.w r2, -1408(r30)
0003e0  6b310fe3  load.hu r2, -464(r30)
0003e4  670c2ff4  storeli.w r2, -1344(r30)
0003e8  6b312fe3  load.hu r2, -462(r30)
0003ec  67002ff6  storeli.w r2, -1280(r30)
0003f0  6b314fe3  load.hu r2, -460(r30)
0003f4  67042ff6  storeli.w r2, -1216(r30)
0003f8  1f010ff7  addli r2, r30, -1152
0003fc  42108f82  vload_mask16.mz vr0{mr1}, 1088(r30)
000400  eb316fe3  load.hu r3, -458(r30)
000404  6b378fe3  load.hu r14, -456(r30)
000408  eb32afe3  load.hu r5, -454(r30)
00040c  6b33cfe3  load.hu r6, -452(r30)
000410  eb33efe3  load.hu r7, -450(r30)
000414  6b340fe4  load.hu r8, -448(r30)
000418  eb342fe4  load.hu r9, -446(r30)
00041c  6b354fe4  load.hu r10, -444(r30)
000420  eb356fe4  load.hu r11, -442(r30)
000424  6b368fe4  load.hu r12, -440(r30)
000428  eb36afe4  load.hu r13, -438(r30)
00042c  eb3acfe4  load.hu r21, -436(r30)
000430  eb37efe4  load.hu r15, -434(r30)
000434  6b380fe5  load.hu r16, -432(r30)
000438  eb382fe5  load.hu r17, -430(r30)
00043c  6b394fe5  load.hu r18, -428(r30)
000440  eb396fe5  load.hu r19, -426(r30)
000444  6b3a8fe5  load.hu r20, -424(r30)
000448  6b3dafe5  load.hu r26, -422(r30)
00044c  6b3bcfe5  load.hu r22, -420(r30)
000450  eb3befe5  load.hu r23, -418(r30)
000454  6b3c0fe6  load.hu r24, -416(r30)
000458  eb3c2fe6  load.hu r25, -414(r30)
00045c  eb3d4fe6  load.hu r27, -412(r30)
000460  6b3e6fe6  load.hu r28, -410(r30)
000464  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
000468  6b318fe6  load.hu r2, -408(r30)
00046c  e7032fec  storeli.w r2, -2504(r30)
000470  6b31afe6  load.hu r2, -406(r30)
000474  e7432fec  storeli.w r2, -2500(r30)
000478  6b31cfe6  load.hu r2, -404(r30)
00047c  12319002  vadd.s.mz vr2{mr1}, zero, vr9
000480  67042fec  storeli.w r2, -2496(r30)
000484  6b31efe6  load.hu r2, -402(r30)
000488  67442fec  storeli.w r2, -2492(r30)
00048c  6b310fe7  load.hu r2, -400(r30)
000490  e7042fec  storeli.w r2, -2488(r30)
000494  6b312fe7  load.hu r2, -398(r30)
000498  67052fec  storeli.w r2, -2480(r30)
00049c  6b314fe7  load.hu r2, -396(r30)
0004a0  e7052fec  storeli.w r2, -2472(r30)
0004a4  6b316fe7  load.hu r2, -394(r30)
0004a8  67062fec  storeli.w r2, -2464(r30)
0004ac  6b318fe7  load.hu r2, -392(r30)
0004b0  e7062fec  storeli.w r2, -2456(r30)
0004b4  6b31afe7  load.hu r2, -390(r30)
0004b8  67072fec  storeli.w r2, -2448(r30)
0004bc  6b31cfe7  load.hu r2, -388(r30)
0004c0  e7072fec  storeli.w r2, -2440(r30)
0004c4  6b31efe7  load.hu r2, -386(r30)
0004c8  67082fec  storeli.w r2, -2432(r30)
0004cc  1f110000  addli r2, zero, 1
0004d0  7e0101e0  vmmov mr2, r2
0004d4  1f210000  addli r2, zero, 2
0004d8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0004dc  e3409fec  loadli.w r1,  -2484(r30)
0004e0  fe0101e0  vmmov mr3, r2
0004e4  1f410000  addli r2, zero, 4
0004e8  b3900020  hfloat2float.rn r1, r1
0004ec  7e0001e0  vmmov mr0, r2
0004f0  1f011000  addli r2, zero, 8
0004f4  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
0004f8  e340afec  loadli.w r1,  -2476(r30)
0004fc  b3900020  hfloat2float.rn r1, r1
000500  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000504  e340bfec  loadli.w r1,  -2468(r30)
000508  7e0001e0  vmmov mr0, r2
00050c  1f012000  addli r2, zero, 16
000510  fe0101e0  vmmov mr3, r2
000514  1f014000  addli r2, zero, 32
000518  b3900020  hfloat2float.rn r1, r1
00051c  7e0101e0  vmmov mr2, r2
000520  1f018000  addli r2, zero, 64
000524  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000528  e340cfec  loadli.w r1,  -2460(r30)
00052c  b3900020  hfloat2float.rn r1, r1
000530  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
000534  e340dfec  loadli.w r1,  -2452(r30)
000538  b3900020  hfloat2float.rn r1, r1
00053c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000540  e340efec  loadli.w r1,  -2444(r30)
000544  7e0101e0  vmmov mr2, r2
000548  1f010001  addli r2, zero, 128
00054c  b3900020  hfloat2float.rn r1, r1
000550  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000554  e340ffec  loadli.w r1,  -2436(r30)
000558  7e0101e0  vmmov mr2, r2
00055c  1f010002  addli r2, zero, 256
000560  b3900020  hfloat2float.rn r1, r1
000564  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000568  e3008fed  loadli.w r1,  -2368(r30)
00056c  7e0101e0  vmmov mr2, r2
000570  1f010004  addli r2, zero, 512
000574  b3900020  hfloat2float.rn r1, r1
000578  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00057c  e3000fee  loadli.w r1,  -2304(r30)
000580  7e0101e0  vmmov mr2, r2
000584  1f010008  addli r2, zero, 1024
000588  b3900020  hfloat2float.rn r1, r1
00058c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000590  e3008fee  loadli.w r1,  -2240(r30)
000594  7e0101e0  vmmov mr2, r2
000598  1f010010  addli r2, zero, 2048
00059c  b3900020  hfloat2float.rn r1, r1
0005a0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0005a4  e3000fef  loadli.w r1,  -2176(r30)
0005a8  7e0101e0  vmmov mr2, r2
0005ac  1f010020  addli r2, zero, 4096
0005b0  b3900020  hfloat2float.rn r1, r1
0005b4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0005b8  e3008fef  loadli.w r1,  -2112(r30)
0005bc  7e0101e0  vmmov mr2, r2
0005c0  1f010040  addli r2, zero, 8192
0005c4  2b800000  lui zero, 8
0005c8  b3900020  hfloat2float.rn r1, r1
0005cc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0005d0  e3000ff0  loadli.w r1,  -2048(r30)
0005d4  7e0101e0  vmmov mr2, r2
0005d8  2b410000  lui r2, 4
0005dc  b3900020  hfloat2float.rn r1, r1
0005e0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0005e4  e3008ff0  loadli.w r1,  -1984(r30)
0005e8  7e0101e0  vmmov mr2, r2
0005ec  b3900020  hfloat2float.rn r1, r1
0005f0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0005f4  e3008ff1  loadli.w r1,  -1856(r30)
0005f8  7e0100e0  vmmov mr2, zero
0005fc  17200000  xor zero, zero, zero
000600  63417ff1  loadli.w r2,  -1860(r30)
000604  92319002  vadd.s.mz vr3{mr1}, zero, vr9
000608  12329002  vadd.s.mz vr4{mr1}, zero, vr9
00060c  92329002  vadd.s.mz vr5{mr1}, zero, vr9
000610  12349002  vadd.s.mz vr8{mr1}, zero, vr9
000614  12359002  vadd.s.mz vr10{mr1}, zero, vr9
000618  92359002  vadd.s.mz vr11{mr1}, zero, vr9
00061c  b3900020  hfloat2float.rn r1, r1
000620  33110120  hfloat2float.rn r2, r2
000624  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000628  9f100000  addli r1, zero, 1
00062c  7e8100e0  vmmov mr2, r1
000630  ea213134  vor.u.mh vr3{mr2}, r2, vr3
000634  e3000ff2  loadli.w r1,  -1792(r30)
000638  1f210000  addli r2, zero, 2
00063c  96106102  vadd.f.mz.rn vr1{mr1}, vr2, vr6
000640  06730000  vfp162float_h.rn vr6, vr0
000644  7e0001e0  vmmov mr0, r2
000648  1f410000  addli r2, zero, 4
00064c  b3900020  hfloat2float.rn r1, r1
000650  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000654  e3008ff2  loadli.w r1,  -1728(r30)
000658  7e0001e0  vmmov mr0, r2
00065c  1f011000  addli r2, zero, 8
000660  b3900020  hfloat2float.rn r1, r1
000664  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000668  e3000ff3  loadli.w r1,  -1664(r30)
00066c  7e0001e0  vmmov mr0, r2
000670  1f014000  addli r2, zero, 32
000674  b3900020  hfloat2float.rn r1, r1
000678  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00067c  e3008ff3  loadli.w r1,  -1600(r30)
000680  7e0001e0  vmmov mr0, r2
000684  1f018000  addli r2, zero, 64
000688  b3900020  hfloat2float.rn r1, r1
00068c  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
000690  e3000ff4  loadli.w r1,  -1536(r30)
000694  b3900020  hfloat2float.rn r1, r1
000698  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00069c  e3008ff4  loadli.w r1,  -1472(r30)
0006a0  7e0001e0  vmmov mr0, r2
0006a4  1f010001  addli r2, zero, 128
0006a8  b3900020  hfloat2float.rn r1, r1
0006ac  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0006b0  e3000ff5  loadli.w r1,  -1408(r30)
0006b4  7e0001e0  vmmov mr0, r2
0006b8  1f010002  addli r2, zero, 256
0006bc  b3900020  hfloat2float.rn r1, r1
0006c0  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0006c4  e3008ff5  loadli.w r1,  -1344(r30)
0006c8  7e0001e0  vmmov mr0, r2
0006cc  1f010004  addli r2, zero, 512
0006d0  b3900020  hfloat2float.rn r1, r1
0006d4  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0006d8  e3000ff6  loadli.w r1,  -1280(r30)
0006dc  7e0001e0  vmmov mr0, r2
0006e0  1f010008  addli r2, zero, 1024
0006e4  b3900020  hfloat2float.rn r1, r1
0006e8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0006ec  e3008ff6  loadli.w r1,  -1216(r30)
0006f0  7e0001e0  vmmov mr0, r2
0006f4  1f010010  addli r2, zero, 2048
0006f8  b3900020  hfloat2float.rn r1, r1
0006fc  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000700  b3900120  hfloat2float.rn r1, r3
000704  7e0001e0  vmmov mr0, r2
000708  1f010020  addli r2, zero, 4096
00070c  ab810000  lui r3, 8
000710  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000714  b3100720  hfloat2float.rn r1, r14
000718  7e0001e0  vmmov mr0, r2
00071c  1f010040  addli r2, zero, 8192
000720  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000724  b3900220  hfloat2float.rn r1, r5
000728  7e0001e0  vmmov mr0, r2
00072c  2b410000  lui r2, 4
000730  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000734  b3100320  hfloat2float.rn r1, r6
000738  7e0001e0  vmmov mr0, r2
00073c  33110420  hfloat2float.rn r2, r8
000740  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000744  b3900320  hfloat2float.rn r1, r7
000748  7e8001e0  vmmov mr0, r3
00074c  ab810000  lui r3, 8
000750  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000754  6a224134  vor.u.mh vr4{mr2}, r2, vr4
000758  1f210000  addli r2, zero, 2
00075c  b3900420  hfloat2float.rn r1, r9
000760  7e0001e0  vmmov mr0, r2
000764  1f410000  addli r2, zero, 4
000768  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
00076c  b3100520  hfloat2float.rn r1, r10
000770  7e0001e0  vmmov mr0, r2
000774  1f011000  addli r2, zero, 8
000778  16917102  vadd.f.mz.rn vr2{mr1}, vr3, vr7
00077c  86310000  vfp162float_l.rn vr3, vr0
000780  06900000  vfloat2fp16_l.rn vr0, vr1
000784  06500100  vfloat2fp16_h.rn vr0, vr2
000788  86300000  vfp162float_l.rn vr1, vr0
00078c  92339002  vadd.s.mz vr7{mr1}, zero, vr9
000790  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000794  b3900520  hfloat2float.rn r1, r11
000798  7e0001e0  vmmov mr0, r2
00079c  1f014000  addli r2, zero, 32
0007a0  7e0101e0  vmmov mr2, r2
0007a4  1f018000  addli r2, zero, 64
0007a8  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
0007ac  b3100620  hfloat2float.rn r1, r12
0007b0  7e0001e0  vmmov mr0, r2
0007b4  1f010001  addli r2, zero, 128
0007b8  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
0007bc  b3900620  hfloat2float.rn r1, r13
0007c0  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
0007c4  b3900a20  hfloat2float.rn r1, r21
0007c8  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
0007cc  b3900720  hfloat2float.rn r1, r15
0007d0  7e0001e0  vmmov mr0, r2
0007d4  1f010002  addli r2, zero, 256
0007d8  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
0007dc  b3100820  hfloat2float.rn r1, r16
0007e0  7e0001e0  vmmov mr0, r2
0007e4  1f010004  addli r2, zero, 512
0007e8  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
0007ec  b3900820  hfloat2float.rn r1, r17
0007f0  7e0001e0  vmmov mr0, r2
0007f4  1f010008  addli r2, zero, 1024
0007f8  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
0007fc  b3100920  hfloat2float.rn r1, r18
000800  7e0001e0  vmmov mr0, r2
000804  1f010010  addli r2, zero, 2048
000808  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
00080c  b3900920  hfloat2float.rn r1, r19
000810  7e0001e0  vmmov mr0, r2
000814  1f010020  addli r2, zero, 4096
000818  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
00081c  b3100a20  hfloat2float.rn r1, r20
000820  7e0001e0  vmmov mr0, r2
000824  1f010040  addli r2, zero, 8192
000828  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
00082c  b3100d20  hfloat2float.rn r1, r26
000830  7e0001e0  vmmov mr0, r2
000834  2b410000  lui r2, 4
000838  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
00083c  b3100b20  hfloat2float.rn r1, r22
000840  7e0001e0  vmmov mr0, r2
000844  33110c20  hfloat2float.rn r2, r24
000848  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
00084c  b3900b20  hfloat2float.rn r1, r23
000850  7e8001e0  vmmov mr0, r3
000854  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000858  9f100000  addli r1, zero, 1
00085c  7e8000e0  vmmov mr0, r1
000860  b3900c20  hfloat2float.rn r1, r25
000864  ea225130  vor.u.mh vr5{mr0}, r2, vr5
000868  1f210000  addli r2, zero, 2
00086c  16113202  vadd.f.mz.rn vr2{mr1}, vr4, vr3
000870  06720000  vfp162float_h.rn vr4, vr0
000874  7e0001e0  vmmov mr0, r2
000878  1f410000  addli r2, zero, 4
00087c  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000880  b3900d20  hfloat2float.rn r1, r27
000884  7e0001e0  vmmov mr0, r2
000888  1f011000  addli r2, zero, 8
00088c  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000890  b3100e20  hfloat2float.rn r1, r28
000894  7e0001e0  vmmov mr0, r2
000898  1f018000  addli r2, zero, 64
00089c  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0008a0  e3007fec  loadli.w r1,  -2504(r30)
0008a4  7e0001e0  vmmov mr0, r2
0008a8  1f010001  addli r2, zero, 128
0008ac  b3900020  hfloat2float.rn r1, r1
0008b0  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
0008b4  e3407fec  loadli.w r1,  -2500(r30)
0008b8  b3900020  hfloat2float.rn r1, r1
0008bc  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
0008c0  e3008fec  loadli.w r1,  -2496(r30)
0008c4  b3900020  hfloat2float.rn r1, r1
0008c8  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0008cc  e3408fec  loadli.w r1,  -2492(r30)
0008d0  7e0001e0  vmmov mr0, r2
0008d4  1f010002  addli r2, zero, 256
0008d8  b3900020  hfloat2float.rn r1, r1
0008dc  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0008e0  e3009fec  loadli.w r1,  -2488(r30)
0008e4  7e0001e0  vmmov mr0, r2
0008e8  1f010004  addli r2, zero, 512
0008ec  b3900020  hfloat2float.rn r1, r1
0008f0  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0008f4  e300afec  loadli.w r1,  -2480(r30)
0008f8  7e0001e0  vmmov mr0, r2
0008fc  1f010008  addli r2, zero, 1024
000900  b3900020  hfloat2float.rn r1, r1
000904  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000908  e300bfec  loadli.w r1,  -2472(r30)
00090c  7e0001e0  vmmov mr0, r2
000910  1f010010  addli r2, zero, 2048
000914  b3900020  hfloat2float.rn r1, r1
000918  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
00091c  e300cfec  loadli.w r1,  -2464(r30)
000920  7e0001e0  vmmov mr0, r2
000924  1f010020  addli r2, zero, 4096
000928  b3900020  hfloat2float.rn r1, r1
00092c  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000930  e300dfec  loadli.w r1,  -2456(r30)
000934  7e0001e0  vmmov mr0, r2
000938  1f010040  addli r2, zero, 8192
00093c  b3900020  hfloat2float.rn r1, r1
000940  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000944  e300efec  loadli.w r1,  -2448(r30)
000948  7e0001e0  vmmov mr0, r2
00094c  2b410000  lui r2, 4
000950  b3900020  hfloat2float.rn r1, r1
000954  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000958  e300ffec  loadli.w r1,  -2440(r30)
00095c  7e0001e0  vmmov mr0, r2
000960  2b810000  lui r2, 8
000964  b3900020  hfloat2float.rn r1, r1
000968  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
00096c  e3000fed  loadli.w r1,  -2432(r30)
000970  7e0001e0  vmmov mr0, r2
000974  b3900020  hfloat2float.rn r1, r1
000978  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
00097c  abf00000  lui r1, 15
000980  9ff0f01f  addli r1, r1, 4095
000984  7e8000e0  vmmov mr0, r1
000988  9f000feb  addli r1, r30, -2688
00098c  96916202  vadd.f.mz.rn vr3{mr1}, vr5, vr6
000990  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
000994  9f008ff6  addli r1, r30, -1216
000998  00a00000  mfence { lm }
00099c  06100100  vfloat2fp16_l.rn vr0, vr2
0009a0  06d00100  vfloat2fp16_h.rn vr0, vr3
0009a4  06710000  vfp162float_h.rn vr2, vr0
0009a8  6e941230  vor.f.mh vr8{mr0}, vr5, vr1
0009ac  6e954230  vor.f.mh vr10{mr0}, vr5, vr4
0009b0  86300000  vfp162float_l.rn vr1, vr0
0009b4  ee951230  vor.f.mh vr11{mr0}, vr5, vr1
0009b8  ee932230  vor.f.mh vr7{mr0}, vr5, vr2
0009bc  12309002  vadd.s.mz vr0{mr1}, zero, vr9
0009c0  92309002  vadd.s.mz vr1{mr1}, zero, vr9
0009c4  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
0009c8  9f000ff6  addli r1, r30, -1280
0009cc  4690a002  vstore_mask16.mz vr10{mr1}, 0(r1)
0009d0  9f000ff2  addli r1, r30, -1792
0009d4  4690b002  vstore_mask16.mz vr11{mr1}, 0(r1)
0009d8  9f008feb  addli r1, r30, -2624
0009dc  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
0009e0  9f008ff1  addli r1, r30, -1856
0009e4  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
0009e8  92318002  vadd.s.mz vr3{mr1}, zero, vr8
0009ec  12358002  vadd.s.mz vr10{mr1}, zero, vr8
0009f0  92358002  vadd.s.mz vr11{mr1}, zero, vr8
0009f4  9f008ff4  addli r1, r30, -1472
0009f8  1f010ff8  addli r2, r30, -1024
0009fc  e74b4ff0  storeli.w r4, -1860(r30)
000a00  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
000a04  9f000ff5  addli r1, r30, -1408
000a08  0b134110  add.s r6, r2, r4
000a0c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000a10  9f008ff5  addli r1, r30, -1344
000a14  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000a18  9f008ff2  addli r1, r30, -1728
000a1c  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
000a20  9f008feb  addli r1, r30, -2624
000a24  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000a28  9f000ff7  addli r1, r30, -1152
000a2c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000a30  e340ffea  loadli.w r1,  -2692(r30)
000a34  8b904010  add.s r1, r1, r4
000a38  96931102  vadd.f.mz.rn vr7{mr1}, vr3, vr1
000a3c  6bb4c001  load.hu r8, 28(r1)
000a40  6bb10000  load.hu r2, 0(r1)
000a44  ebb12000  load.hu r3, 2(r1)
000a48  6bb24000  load.hu r4, 4(r1)
000a4c  ebb26000  load.hu r5, 6(r1)
000a50  ebb38000  load.hu r7, 8(r1)
000a54  6bb5a000  load.hu r10, 10(r1)
000a58  6bb6c000  load.hu r12, 12(r1)
000a5c  6bb7e000  load.hu r14, 14(r1)
000a60  ebb80001  load.hu r17, 16(r1)
000a64  6bb92001  load.hu r18, 18(r1)
000a68  6bba4001  load.hu r20, 20(r1)
000a6c  6bbb6001  load.hu r22, 22(r1)
000a70  6bbc8001  load.hu r24, 24(r1)
000a74  6bbda001  load.hu r26, 26(r1)
000a78  e7408fec  storeli.w r8, -2548(r30)
000a7c  6bb4e001  load.hu r8, 30(r1)
000a80  33110120  hfloat2float.rn r2, r2
000a84  e7018fec  storeli.w r8, -2536(r30)
000a88  6bb40002  load.hu r8, 32(r1)
000a8c  67418fec  storeli.w r8, -2540(r30)
000a90  6bb42002  load.hu r8, 34(r1)
000a94  67428fec  storeli.w r8, -2524(r30)
000a98  6bb44002  load.hu r8, 36(r1)
000a9c  e7428fec  storeli.w r8, -2516(r30)
000aa0  6bb46002  load.hu r8, 38(r1)
000aa4  67438fec  storeli.w r8, -2508(r30)
000aa8  6bb48002  load.hu r8, 40(r1)
000aac  e7438fec  storeli.w r8, -2500(r30)
000ab0  6bb4a002  load.hu r8, 42(r1)
000ab4  67448fec  storeli.w r8, -2492(r30)
000ab8  6bb4c002  load.hu r8, 44(r1)
000abc  e7448fec  storeli.w r8, -2484(r30)
000ac0  6bb4e002  load.hu r8, 46(r1)
000ac4  67458fec  storeli.w r8, -2476(r30)
000ac8  6bb40003  load.hu r8, 48(r1)
000acc  e7058fec  storeli.w r8, -2472(r30)
000ad0  6bb42003  load.hu r8, 50(r1)
000ad4  67468fec  storeli.w r8, -2460(r30)
000ad8  1f040ff0  addli r8, r30, -2048
000adc  42110303  vload_mask16.mz vr2{mr1}, 128(r6)
000ae0  46102402  vstore_mask16.mz vr2{mr1}, 0(r8)
000ae4  16111502  vadd.f.mz.rn vr2{mr1}, vr10, vr1
000ae8  42128303  vload_mask16.mz vr4{mr1}, 192(r6)
000aec  6bbec004  load.hu r28, 76(r1)
000af0  1f038ff0  addli r6, r30, -1984
000af4  ebb44003  load.hu r9, 52(r1)
000af8  6bb48003  load.hu r8, 56(r1)
000afc  ebb5a003  load.hu r11, 58(r1)
000b00  ebb6c003  load.hu r13, 60(r1)
000b04  ebb7e003  load.hu r15, 62(r1)
000b08  6bb80004  load.hu r16, 64(r1)
000b0c  ebb92004  load.hu r19, 66(r1)
000b10  ebba4004  load.hu r21, 68(r1)
000b14  ebbb6004  load.hu r23, 70(r1)
000b18  ebbc8004  load.hu r25, 72(r1)
000b1c  ebbda004  load.hu r27, 74(r1)
000b20  6701cfed  storeli.w r28, -2544(r30)
000b24  6bbee004  load.hu r28, 78(r1)
000b28  e741cfed  storeli.w r28, -2532(r30)
000b2c  6bbe0005  load.hu r28, 80(r1)
000b30  46104302  vstore_mask16.mz vr4{mr1}, 0(r6)
000b34  6bb36003  load.hu r6, 54(r1)
000b38  16121402  vadd.f.mz.rn vr4{mr1}, vr8, vr1
000b3c  6702cfed  storeli.w r28, -2528(r30)
000b40  6bbe2005  load.hu r28, 82(r1)
000b44  e702cfed  storeli.w r28, -2520(r30)
000b48  6bbe4005  load.hu r28, 84(r1)
000b4c  6703cfed  storeli.w r28, -2512(r30)
000b50  6bbe6005  load.hu r28, 86(r1)
000b54  e703cfed  storeli.w r28, -2504(r30)
000b58  6bbe8005  load.hu r28, 88(r1)
000b5c  6704cfed  storeli.w r28, -2496(r30)
000b60  6bbea005  load.hu r28, 90(r1)
000b64  e704cfed  storeli.w r28, -2488(r30)
000b68  6bbec005  load.hu r28, 92(r1)
000b6c  6705cfed  storeli.w r28, -2480(r30)
000b70  6bbee005  load.hu r28, 94(r1)
000b74  6706cfed  storeli.w r28, -2464(r30)
000b78  6bbe0006  load.hu r28, 96(r1)
000b7c  e745cfed  storeli.w r28, -2468(r30)
000b80  6bbe2006  load.hu r28, 98(r1)
000b84  e706cfed  storeli.w r28, -2456(r30)
000b88  6bbe4006  load.hu r28, 100(r1)
000b8c  e746cfed  storeli.w r28, -2452(r30)
000b90  6bbe6006  load.hu r28, 102(r1)
000b94  6707cfed  storeli.w r28, -2448(r30)
000b98  6bbe8006  load.hu r28, 104(r1)
000b9c  6747cfed  storeli.w r28, -2444(r30)
000ba0  6bbea006  load.hu r28, 106(r1)
000ba4  e707cfed  storeli.w r28, -2440(r30)
000ba8  6bbec006  load.hu r28, 108(r1)
000bac  e747cfed  storeli.w r28, -2436(r30)
000bb0  6bbee006  load.hu r28, 110(r1)
000bb4  00a00000  mfence { lm }
000bb8  6708cfed  storeli.w r28, -2432(r30)
000bbc  6bbe0007  load.hu r28, 112(r1)
000bc0  6708cfef  storeli.w r28, -2176(r30)
000bc4  6bbe2007  load.hu r28, 114(r1)
000bc8  670ccfef  storeli.w r28, -2112(r30)
000bcc  6bbe4007  load.hu r28, 116(r1)
000bd0  670ccfed  storeli.w r28, -2368(r30)
000bd4  6bbe6007  load.hu r28, 118(r1)
000bd8  6700cfef  storeli.w r28, -2304(r30)
000bdc  6bbe8007  load.hu r28, 120(r1)
000be0  6700cff5  storeli.w r28, -1536(r30)
000be4  6bbea007  load.hu r28, 122(r1)
000be8  6704cfef  storeli.w r28, -2240(r30)
000bec  6bbec007  load.hu r28, 124(r1)
000bf0  ebb0e007  load.hu r1, 126(r1)
000bf4  670c1ff2  storeli.w r1, -1600(r30)
000bf8  9f100000  addli r1, zero, 1
000bfc  6708cff3  storeli.w r28, -1664(r30)
000c00  7a1e8140  vextracti.f r28, 8(vr2)
000c04  7e8100e0  vmmov mr2, r1
000c08  b3900120  hfloat2float.rn r1, r3
000c0c  ab810000  lui r3, 8
000c10  6a200134  vor.u.mh vr0{mr2}, r2, vr0
000c14  1f210000  addli r2, zero, 2
000c18  7e0001e0  vmmov mr0, r2
000c1c  1f410000  addli r2, zero, 4
000c20  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000c24  b3100220  hfloat2float.rn r1, r4
000c28  7e8001c0  vmmov mr0, mr3
000c2c  fe0101e0  vmmov mr3, r2
000c30  1f011000  addli r2, zero, 8
000c34  1f020040  addli r4, zero, 8192
000c38  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
000c3c  b3900220  hfloat2float.rn r1, r5
000c40  fe0101e0  vmmov mr3, r2
000c44  1f014000  addli r2, zero, 32
000c48  ab420000  lui r5, 4
000c4c  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
000c50  b3900320  hfloat2float.rn r1, r7
000c54  fe0101e0  vmmov mr3, r2
000c58  1f018000  addli r2, zero, 64
000c5c  9f031000  addli r7, zero, 8
000c60  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000c64  b3100520  hfloat2float.rn r1, r10
000c68  7a95f040  vextracti.f r10, 15(vr1)
000c6c  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
000c70  b3100620  hfloat2float.rn r1, r12
000c74  fe0101e0  vmmov mr3, r2
000c78  1f010001  addli r2, zero, 128
000c7c  7a969040  vextracti.f r12, 9(vr1)
000c80  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
000c84  b3100720  hfloat2float.rn r1, r14
000c88  fe0101e0  vmmov mr3, r2
000c8c  1f010002  addli r2, zero, 256
000c90  7a97b040  vextracti.f r14, 11(vr1)
000c94  7e0101e0  vmmov mr2, r2
000c98  1f010004  addli r2, zero, 512
000c9c  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
000ca0  b3900820  hfloat2float.rn r1, r17
000ca4  fe0101e0  vmmov mr3, r2
000ca8  1f010008  addli r2, zero, 1024
000cac  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
000cb0  b3100920  hfloat2float.rn r1, r18
000cb4  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
000cb8  b3100a20  hfloat2float.rn r1, r20
000cbc  fe0101e0  vmmov mr3, r2
000cc0  1f010010  addli r2, zero, 2048
000cc4  7a1ad140  vextracti.f r20, 13(vr2)
000cc8  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
000ccc  b3100b20  hfloat2float.rn r1, r22
000cd0  fe0101e0  vmmov mr3, r2
000cd4  1f010020  addli r2, zero, 4096
000cd8  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
000cdc  b3100c20  hfloat2float.rn r1, r24
000ce0  fe0101e0  vmmov mr3, r2
000ce4  1f010040  addli r2, zero, 8192
000ce8  7a9c3040  vextracti.f r24, 3(vr1)
000cec  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
000cf0  b3100d20  hfloat2float.rn r1, r26
000cf4  fe0101e0  vmmov mr3, r2
000cf8  2b410000  lui r2, 4
000cfc  7a9d7340  vextracti.f r26, 7(vr7)
000d00  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
000d04  e3401fec  loadli.w r1,  -2548(r30)
000d08  fe0101e0  vmmov mr3, r2
000d0c  b3900020  hfloat2float.rn r1, r1
000d10  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
000d14  e3003fec  loadli.w r1,  -2536(r30)
000d18  fe8101e0  vmmov mr3, r3
000d1c  63412fec  loadli.w r2,  -2540(r30)
000d20  ab810000  lui r3, 8
000d24  b3900020  hfloat2float.rn r1, r1
000d28  33110120  hfloat2float.rn r2, r2
000d2c  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
000d30  9f000ff7  addli r1, r30, -1152
000d34  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000d38  9f100000  addli r1, zero, 1
000d3c  fe8100e0  vmmov mr3, r1
000d40  ea249136  vor.u.mh vr9{mr3}, r2, vr9
000d44  e3404fec  loadli.w r1,  -2524(r30)
000d48  1f210000  addli r2, zero, 2
000d4c  fe0101e0  vmmov mr3, r2
000d50  1f410000  addli r2, zero, 4
000d54  b3900020  hfloat2float.rn r1, r1
000d58  eaa49036  vor.u.mh vr9{mr3}, r1, vr9
000d5c  e3405fec  loadli.w r1,  -2516(r30)
000d60  fe0101e0  vmmov mr3, r2
000d64  1f011000  addli r2, zero, 8
000d68  b3900020  hfloat2float.rn r1, r1
000d6c  eaa49036  vor.u.mh vr9{mr3}, r1, vr9
000d70  e3406fec  loadli.w r1,  -2508(r30)
000d74  fe0101e0  vmmov mr3, r2
000d78  1f014000  addli r2, zero, 32
000d7c  b3900020  hfloat2float.rn r1, r1
000d80  eaa49036  vor.u.mh vr9{mr3}, r1, vr9
000d84  e3407fec  loadli.w r1,  -2500(r30)
000d88  fe0101e0  vmmov mr3, r2
000d8c  1f018000  addli r2, zero, 64
000d90  b3900020  hfloat2float.rn r1, r1
000d94  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000d98  e3408fec  loadli.w r1,  -2492(r30)
000d9c  b3900020  hfloat2float.rn r1, r1
000da0  eaa49036  vor.u.mh vr9{mr3}, r1, vr9
000da4  e3409fec  loadli.w r1,  -2484(r30)
000da8  fe0101e0  vmmov mr3, r2
000dac  1f010001  addli r2, zero, 128
000db0  b3900020  hfloat2float.rn r1, r1
000db4  eaa49036  vor.u.mh vr9{mr3}, r1, vr9
000db8  e340afec  loadli.w r1,  -2476(r30)
000dbc  fe0101e0  vmmov mr3, r2
000dc0  1f010004  addli r2, zero, 512
000dc4  b3900020  hfloat2float.rn r1, r1
000dc8  eaa49036  vor.u.mh vr9{mr3}, r1, vr9
000dcc  e300bfec  loadli.w r1,  -2472(r30)
000dd0  b3900020  hfloat2float.rn r1, r1
000dd4  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
000dd8  e340cfec  loadli.w r1,  -2460(r30)
000ddc  7e0101e0  vmmov mr2, r2
000de0  1f010008  addli r2, zero, 1024
000de4  fe0101e0  vmmov mr3, r2
000de8  1f010010  addli r2, zero, 2048
000dec  b3900020  hfloat2float.rn r1, r1
000df0  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
000df4  b3900420  hfloat2float.rn r1, r9
000df8  7e0101e0  vmmov mr2, r2
000dfc  1f010020  addli r2, zero, 4096
000e00  9f040001  addli r9, zero, 128
000e04  eaa49036  vor.u.mh vr9{mr3}, r1, vr9
000e08  b3100320  hfloat2float.rn r1, r6
000e0c  2b830000  lui r6, 8
000e10  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
000e14  b3100420  hfloat2float.rn r1, r8
000e18  7e0101e0  vmmov mr2, r2
000e1c  1f010040  addli r2, zero, 8192
000e20  1f044000  addli r8, zero, 32
000e24  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
000e28  b3900520  hfloat2float.rn r1, r11
000e2c  7e0101e0  vmmov mr2, r2
000e30  2b410000  lui r2, 4
000e34  fa95c040  vextracti.f r11, 12(vr1)
000e38  9f880500  addli r17, r11, 0
000e3c  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
000e40  b3900620  hfloat2float.rn r1, r13
000e44  7e0101e0  vmmov mr2, r2
000e48  33110820  hfloat2float.rn r2, r16
000e4c  fa964040  vextracti.f r13, 4(vr1)
000e50  7a988040  vextracti.f r16, 8(vr1)
000e54  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
000e58  b3900720  hfloat2float.rn r1, r15
000e5c  7e8101e0  vmmov mr2, r3
000e60  ab810000  lui r3, 8
000e64  fa971040  vextracti.f r15, 1(vr1)
000e68  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
000e6c  9f000ff7  addli r1, r30, -1152
000e70  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
000e74  9f100000  addli r1, zero, 1
000e78  7e8100e0  vmmov mr2, r1
000e7c  b3900920  hfloat2float.rn r1, r19
000e80  ea225134  vor.u.mh vr5{mr2}, r2, vr5
000e84  1f210000  addli r2, zero, 2
000e88  7e0101e0  vmmov mr2, r2
000e8c  1f410000  addli r2, zero, 4
000e90  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
000e94  b3900a20  hfloat2float.rn r1, r21
000e98  7e0101e0  vmmov mr2, r2
000e9c  1f011000  addli r2, zero, 8
000ea0  fa1ae140  vextracti.f r21, 14(vr2)
000ea4  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
000ea8  b3900b20  hfloat2float.rn r1, r23
000eac  7e0101e0  vmmov mr2, r2
000eb0  1f014000  addli r2, zero, 32
000eb4  fa9bd040  vextracti.f r23, 13(vr1)
000eb8  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
000ebc  b3900c20  hfloat2float.rn r1, r25
000ec0  7e0101e0  vmmov mr2, r2
000ec4  1f018000  addli r2, zero, 64
000ec8  9f0c0500  addli r25, r10, 0
000ecc  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000ed0  b3900d20  hfloat2float.rn r1, r27
000ed4  fa9d2040  vextracti.f r27, 2(vr1)
000ed8  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
000edc  e3002fec  loadli.w r1,  -2544(r30)
000ee0  7e0101e0  vmmov mr2, r2
000ee4  1f010001  addli r2, zero, 128
000ee8  b3900020  hfloat2float.rn r1, r1
000eec  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
000ef0  e3403fec  loadli.w r1,  -2532(r30)
000ef4  7e0101e0  vmmov mr2, r2
000ef8  1f010002  addli r2, zero, 256
000efc  b3900020  hfloat2float.rn r1, r1
000f00  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
000f04  e3004fec  loadli.w r1,  -2528(r30)
000f08  7e0101e0  vmmov mr2, r2
000f0c  1f010004  addli r2, zero, 512
000f10  b3900020  hfloat2float.rn r1, r1
000f14  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
000f18  e3005fec  loadli.w r1,  -2520(r30)
000f1c  7e0101e0  vmmov mr2, r2
000f20  1f010010  addli r2, zero, 2048
000f24  b3900020  hfloat2float.rn r1, r1
000f28  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
000f2c  e3006fec  loadli.w r1,  -2512(r30)
000f30  b3900020  hfloat2float.rn r1, r1
000f34  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
000f38  e3007fec  loadli.w r1,  -2504(r30)
000f3c  fe0101e0  vmmov mr3, r2
000f40  1f010020  addli r2, zero, 4096
000f44  b3900020  hfloat2float.rn r1, r1
000f48  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
000f4c  e3008fec  loadli.w r1,  -2496(r30)
000f50  fe0101e0  vmmov mr3, r2
000f54  1f010040  addli r2, zero, 8192
000f58  b3900020  hfloat2float.rn r1, r1
000f5c  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
000f60  e3009fec  loadli.w r1,  -2488(r30)
000f64  fe0101e0  vmmov mr3, r2
000f68  2b410000  lui r2, 4
000f6c  b3900020  hfloat2float.rn r1, r1
000f70  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
000f74  e300afec  loadli.w r1,  -2480(r30)
000f78  fe0101e0  vmmov mr3, r2
000f7c  b3900020  hfloat2float.rn r1, r1
000f80  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
000f84  9f000ff7  addli r1, r30, -1152
000f88  6341bfec  loadli.w r2,  -2468(r30)
000f8c  fe8101e0  vmmov mr3, r3
000f90  fa910040  vextracti.f r3, 0(vr1)
000f94  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
000f98  e300cfec  loadli.w r1,  -2464(r30)
000f9c  33110120  hfloat2float.rn r2, r2
000fa0  b3900020  hfloat2float.rn r1, r1
000fa4  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
000fa8  9f100000  addli r1, zero, 1
000fac  fe8100e0  vmmov mr3, r1
000fb0  6a236136  vor.u.mh vr6{mr3}, r2, vr6
000fb4  e300dfec  loadli.w r1,  -2456(r30)
000fb8  1f210000  addli r2, zero, 2
000fbc  fe0101e0  vmmov mr3, r2
000fc0  1f410000  addli r2, zero, 4
000fc4  b3900020  hfloat2float.rn r1, r1
000fc8  6aa36036  vor.u.mh vr6{mr3}, r1, vr6
000fcc  e340dfec  loadli.w r1,  -2452(r30)
000fd0  fe0101e0  vmmov mr3, r2
000fd4  1f011000  addli r2, zero, 8
000fd8  b3900020  hfloat2float.rn r1, r1
000fdc  6aa36036  vor.u.mh vr6{mr3}, r1, vr6
000fe0  e300efec  loadli.w r1,  -2448(r30)
000fe4  fe0101e0  vmmov mr3, r2
000fe8  1f014000  addli r2, zero, 32
000fec  b3900020  hfloat2float.rn r1, r1
000ff0  6aa36036  vor.u.mh vr6{mr3}, r1, vr6
000ff4  e340efec  loadli.w r1,  -2444(r30)
000ff8  b3900020  hfloat2float.rn r1, r1
000ffc  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
001000  fe0100c0  vmmov mr3, mr0
001004  e300ffec  loadli.w r1,  -2440(r30)
001008  7e0001e0  vmmov mr0, r2
00100c  1f018000  addli r2, zero, 64
001010  b3900020  hfloat2float.rn r1, r1
001014  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
001018  e340ffec  loadli.w r1,  -2436(r30)
00101c  7e0001e0  vmmov mr0, r2
001020  1f010001  addli r2, zero, 128
001024  b3900020  hfloat2float.rn r1, r1
001028  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
00102c  e3000fed  loadli.w r1,  -2432(r30)
001030  7e0001e0  vmmov mr0, r2
001034  1f010002  addli r2, zero, 256
001038  b3900020  hfloat2float.rn r1, r1
00103c  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
001040  e3000fef  loadli.w r1,  -2176(r30)
001044  7e0001e0  vmmov mr0, r2
001048  1f010008  addli r2, zero, 1024
00104c  b3900020  hfloat2float.rn r1, r1
001050  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
001054  e3008fef  loadli.w r1,  -2112(r30)
001058  7e0001e0  vmmov mr0, r2
00105c  1f010010  addli r2, zero, 2048
001060  b3900020  hfloat2float.rn r1, r1
001064  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
001068  9f008fef  addli r1, r30, -2112
00106c  00a00000  mfence { lm }
001070  7e0102e0  vmmov mr2, r4
001074  7a121240  vextracti.f r4, 1(vr4)
001078  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
00107c  9f000fef  addli r1, r30, -2176
001080  0f824718  div.f.rn r4, r15, r4
001084  4690b002  vstore_mask16.mz vr11{mr1}, 0(r1)
001088  e3008fed  loadli.w r1,  -2368(r30)
00108c  96951502  vadd.f.mz.rn vr11{mr1}, vr11, vr1
001090  b3900020  hfloat2float.rn r1, r1
001094  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
001098  e3000fee  loadli.w r1,  -2304(r30)
00109c  7e0001e0  vmmov mr0, r2
0010a0  1f010ff4  addli r2, r30, -1536
0010a4  b3900020  hfloat2float.rn r1, r1
0010a8  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
0010ac  e3000ff4  loadli.w r1,  -1536(r30)
0010b0  00a00000  mfence { lm }
0010b4  46104102  vstore_mask16.mz vr4{mr1}, 0(r2)
0010b8  1f010020  addli r2, zero, 4096
0010bc  7e0001e0  vmmov mr0, r2
0010c0  7a110240  vextracti.f r2, 0(vr4)
0010c4  b3900020  hfloat2float.rn r1, r1
0010c8  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
0010cc  9f000ff7  addli r1, r30, -1152
0010d0  0f812118  div.f.rn r2, r3, r2
0010d4  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
0010d8  e3008fee  loadli.w r1,  -2240(r30)
0010dc  b3900020  hfloat2float.rn r1, r1
0010e0  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
0010e4  e3000ff3  loadli.w r1,  -1664(r30)
0010e8  7e8102e0  vmmov mr2, r5
0010ec  fa122240  vextracti.f r5, 2(vr4)
0010f0  b3900020  hfloat2float.rn r1, r1
0010f4  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
0010f8  e3008ff3  loadli.w r1,  -1600(r30)
0010fc  7e0103e0  vmmov mr2, r6
001100  1f430000  addli r6, zero, 4
001104  b3900020  hfloat2float.rn r1, r1
001108  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
00110c  9f100000  addli r1, zero, 1
001110  7e8100e0  vmmov mr2, r1
001114  8f805d18  div.f.rn r1, r27, r5
001118  9f220000  addli r5, zero, 2
00111c  6a248134  vor.u.mh vr8{mr2}, r2, vr8
001120  7a113240  vextracti.f r2, 3(vr4)
001124  7e8102e0  vmmov mr2, r5
001128  fa925040  vextracti.f r5, 5(vr1)
00112c  0f012c18  div.f.rn r2, r24, r2
001130  6a248234  vor.u.mh vr8{mr2}, r4, vr8
001134  7a124240  vextracti.f r4, 4(vr4)
001138  7e0103e0  vmmov mr2, r6
00113c  0f834618  div.f.rn r6, r13, r4
001140  7a926040  vextracti.f r4, 6(vr1)
001144  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
001148  fa105240  vextracti.f r1, 5(vr4)
00114c  7e8103e0  vmmov mr2, r7
001150  fa136240  vextracti.f r7, 6(vr4)
001154  6a248134  vor.u.mh vr8{mr2}, r2, vr8
001158  0f811218  div.f.rn r2, r5, r1
00115c  7e8101c0  vmmov mr2, mr3
001160  fa907040  vextracti.f r1, 7(vr1)
001164  fe0104e0  vmmov mr3, r8
001168  1f048000  addli r8, zero, 64
00116c  6a248334  vor.u.mh vr8{mr2}, r6, vr8
001170  0f037218  div.f.rn r6, r4, r7
001174  fa137240  vextracti.f r7, 7(vr4)
001178  6a248136  vor.u.mh vr8{mr3}, r2, vr8
00117c  0f817018  div.f.rn r2, r1, r7
001180  fa138240  vextracti.f r7, 8(vr4)
001184  fe0104e0  vmmov mr3, r8
001188  7a149240  vextracti.f r8, 9(vr4)
00118c  8f037818  div.f.rn r7, r16, r7
001190  6a248336  vor.u.mh vr8{mr3}, r6, vr8
001194  fe8104e0  vmmov mr3, r9
001198  9f040002  addli r9, zero, 256
00119c  7a93a040  vextracti.f r6, 10(vr1)
0011a0  6a248136  vor.u.mh vr8{mr3}, r2, vr8
0011a4  0f018618  div.f.rn r2, r12, r8
0011a8  7a14a240  vextracti.f r8, 10(vr4)
0011ac  fe8104e0  vmmov mr3, r9
0011b0  9f040004  addli r9, zero, 512
0011b4  6aa48336  vor.u.mh vr8{mr3}, r7, vr8
0011b8  8f038318  div.f.rn r7, r6, r8
0011bc  7a14b240  vextracti.f r8, 11(vr4)
0011c0  fe8104e0  vmmov mr3, r9
0011c4  fa14c240  vextracti.f r9, 12(vr4)
0011c8  6a248136  vor.u.mh vr8{mr3}, r2, vr8
0011cc  0f018718  div.f.rn r2, r14, r8
0011d0  1f040008  addli r8, zero, 1024
0011d4  fe0104e0  vmmov mr3, r8
0011d8  7a94e040  vextracti.f r8, 14(vr1)
0011dc  6aa48336  vor.u.mh vr8{mr3}, r7, vr8
0011e0  8f839518  div.f.rn r7, r11, r9
0011e4  9f050010  addli r11, zero, 2048
0011e8  fa14d240  vextracti.f r9, 13(vr4)
0011ec  9f090400  addli r19, r8, 0
0011f0  fe8105e0  vmmov mr3, r11
0011f4  9f050040  addli r11, zero, 8192
0011f8  6a248136  vor.u.mh vr8{mr3}, r2, vr8
0011fc  0f819b18  div.f.rn r2, r23, r9
001200  fa14e240  vextracti.f r9, 14(vr4)
001204  6aa48330  vor.u.mh vr8{mr0}, r7, vr8
001208  8f039418  div.f.rn r7, r8, r9
00120c  fa14f240  vextracti.f r9, 15(vr4)
001210  1f048ff3  addli r8, r30, -1600
001214  7e8005e0  vmmov mr0, r11
001218  00a00000  mfence { lm }
00121c  ab450000  lui r11, 4
001220  4610b402  vstore_mask16.mz vr11{mr1}, 0(r8)
001224  7a940540  vextracti.f r8, 0(vr11)
001228  6a248130  vor.u.mh vr8{mr0}, r2, vr8
00122c  0f019518  div.f.rn r2, r10, r9
001230  7e8005e0  vmmov mr0, r11
001234  ab850000  lui r11, 8
001238  e7448fec  storeli.w r8, -2484(r30)
00123c  8f848118  div.f.rn r9, r3, r8
001240  7a941540  vextracti.f r8, 1(vr11)
001244  fe8105e0  vmmov mr3, r11
001248  6aa48330  vor.u.mh vr8{mr0}, r7, vr8
00124c  e7048fec  storeli.w r8, -2488(r30)
001250  8f838718  div.f.rn r7, r15, r8
001254  7a942540  vextracti.f r8, 2(vr11)
001258  6a248136  vor.u.mh vr8{mr3}, r2, vr8
00125c  1f010ff7  addli r2, r30, -1152
001260  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
001264  1f110000  addli r2, zero, 1
001268  7e0001e0  vmmov mr0, r2
00126c  0f818d18  div.f.rn r2, r27, r8
001270  6aa24430  vor.u.mh vr4{mr0}, r9, vr4
001274  9f240000  addli r9, zero, 2
001278  e7428fec  storeli.w r8, -2516(r30)
00127c  7a943540  vextracti.f r8, 3(vr11)
001280  7e8004e0  vmmov mr0, r9
001284  9f440000  addli r9, zero, 4
001288  6aa24330  vor.u.mh vr4{mr0}, r7, vr4
00128c  8f038c18  div.f.rn r7, r24, r8
001290  67448fec  storeli.w r8, -2492(r30)
001294  7a944540  vextracti.f r8, 4(vr11)
001298  7e8004e0  vmmov mr0, r9
00129c  9f041000  addli r9, zero, 8
0012a0  6a224130  vor.u.mh vr4{mr0}, r2, vr4
0012a4  0f818618  div.f.rn r2, r13, r8
0012a8  67048fec  storeli.w r8, -2496(r30)
0012ac  7a945540  vextracti.f r8, 5(vr11)
0012b0  7e8004e0  vmmov mr0, r9
0012b4  6aa24330  vor.u.mh vr4{mr0}, r7, vr4
0012b8  8f838218  div.f.rn r7, r5, r8
0012bc  e7068fec  storeli.w r8, -2456(r30)
0012c0  7a946540  vextracti.f r8, 6(vr11)
0012c4  8f048218  div.f.rn r9, r4, r8
0012c8  6a224134  vor.u.mh vr4{mr2}, r2, vr4
0012cc  67468fec  storeli.w r8, -2460(r30)
0012d0  1f044000  addli r8, zero, 32
0012d4  7a917540  vextracti.f r2, 7(vr11)
0012d8  7e0004e0  vmmov mr0, r8
0012dc  1f048000  addli r8, zero, 64
0012e0  6aa24330  vor.u.mh vr4{mr0}, r7, vr4
0012e4  8f832018  div.f.rn r7, r1, r2
0012e8  67062fec  storeli.w r2, -2464(r30)
0012ec  7a918540  vextracti.f r2, 8(vr11)
0012f0  7e0004e0  vmmov mr0, r8
0012f4  1f040001  addli r8, zero, 128
0012f8  8f052818  div.f.rn r11, r16, r2
0012fc  6aa24430  vor.u.mh vr4{mr0}, r9, vr4
001300  e7452fec  storeli.w r2, -2468(r30)
001304  7a919540  vextracti.f r2, 9(vr11)
001308  7e0004e0  vmmov mr0, r8
00130c  1f040002  addli r8, zero, 256
001310  9f040010  addli r9, zero, 2048
001314  6aa24330  vor.u.mh vr4{mr0}, r7, vr4
001318  8f032618  div.f.rn r7, r12, r2
00131c  e7052fec  storeli.w r2, -2472(r30)
001320  7a91a540  vextracti.f r2, 10(vr11)
001324  7e0004e0  vmmov mr0, r8
001328  1f040004  addli r8, zero, 512
00132c  0f092318  div.f.rn r18, r6, r2
001330  6aa24530  vor.u.mh vr4{mr0}, r11, vr4
001334  e7022fec  storeli.w r2, -2520(r30)
001338  7a91b540  vextracti.f r2, 11(vr11)
00133c  7e0004e0  vmmov mr0, r8
001340  7a94c540  vextracti.f r8, 12(vr11)
001344  9f050040  addli r11, zero, 8192
001348  6aa24330  vor.u.mh vr4{mr0}, r7, vr4
00134c  67452fec  storeli.w r2, -2476(r30)
001350  8f032718  div.f.rn r7, r14, r2
001354  1f010008  addli r2, zero, 1024
001358  7e0001e0  vmmov mr0, r2
00135c  1f810800  addli r2, r17, 0
001360  fa18b140  vextracti.f r17, 11(vr2)
001364  6a224930  vor.u.mh vr4{mr0}, r18, vr4
001368  0f098118  div.f.rn r18, r2, r8
00136c  67058fec  storeli.w r8, -2480(r30)
001370  7e8004e0  vmmov mr0, r9
001374  7a94d540  vextracti.f r8, 13(vr11)
001378  670c2fec  storeli.w r2, -2368(r30)
00137c  9f040020  addli r9, zero, 4096
001380  6aa24330  vor.u.mh vr4{mr0}, r7, vr4
001384  9f038fee  addli r7, r30, -2240
001388  67428fec  storeli.w r8, -2524(r30)
00138c  7e8004e0  vmmov mr0, r9
001390  9f040ff3  addli r9, r30, -1664
001394  4690a302  vstore_mask16.mz vr10{mr1}, 0(r7)
001398  8f838b18  div.f.rn r7, r23, r8
00139c  7a94e540  vextracti.f r8, 14(vr11)
0013a0  6a224930  vor.u.mh vr4{mr0}, r18, vr4
0013a4  46902402  vstore_mask16.mz vr2{mr1}, 0(r9)
0013a8  fa140140  vextracti.f r9, 0(vr2)
0013ac  7e8005e0  vmmov mr0, r11
0013b0  67083fed  storeli.w r19, -2432(r30)
0013b4  fa159140  vextracti.f r11, 9(vr2)
0013b8  0f898918  div.f.rn r18, r19, r8
0013bc  e7438fec  storeli.w r8, -2500(r30)
0013c0  7a94f540  vextracti.f r8, 15(vr11)
0013c4  0f8b9118  div.f.rn r22, r3, r9
0013c8  6aa24330  vor.u.mh vr4{mr0}, r7, vr4
0013cc  8f038518  div.f.rn r7, r10, r8
0013d0  e7469fec  storeli.w r9, -2452(r30)
0013d4  ab440000  lui r9, 4
0013d8  67028fec  storeli.w r8, -2528(r30)
0013dc  7a141140  vextracti.f r8, 1(vr2)
0013e0  7a15c140  vextracti.f r10, 12(vr2)
0013e4  7e8004e0  vmmov mr0, r9
0013e8  9f240000  addli r9, zero, 2
0013ec  6a224930  vor.u.mh vr4{mr0}, r18, vr4
0013f0  e7478fec  storeli.w r8, -2436(r30)
0013f4  0f898718  div.f.rn r18, r15, r8
0013f8  7a142140  vextracti.f r8, 2(vr2)
0013fc  6aa24336  vor.u.mh vr4{mr3}, r7, vr4
001400  9f030ff7  addli r7, r30, -1152
001404  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
001408  9f130000  addli r7, zero, 1
00140c  7e8003e0  vmmov mr0, r7
001410  8f838d18  div.f.rn r7, r27, r8
001414  6a25ab30  vor.u.mh vr10{mr0}, r22, vr10
001418  67038fec  storeli.w r8, -2512(r30)
00141c  7a143140  vextracti.f r8, 3(vr2)
001420  7e8004e0  vmmov mr0, r9
001424  9f440000  addli r9, zero, 4
001428  0f8b4b19  div.f.rn r22, r23, r20
00142c  6a25a930  vor.u.mh vr10{mr0}, r18, vr10
001430  0f098c18  div.f.rn r18, r24, r8
001434  e7038fec  storeli.w r8, -2504(r30)
001438  7a144140  vextracti.f r8, 4(vr2)
00143c  7e8004e0  vmmov mr0, r9
001440  9f041000  addli r9, zero, 8
001444  6aa5a330  vor.u.mh vr10{mr0}, r7, vr10
001448  8f838618  div.f.rn r7, r13, r8
00144c  e7078fec  storeli.w r8, -2440(r30)
001450  7a145140  vextracti.f r8, 5(vr2)
001454  7e8004e0  vmmov mr0, r9
001458  9f044000  addli r9, zero, 32
00145c  fe8104e0  vmmov mr3, r9
001460  9f040002  addli r9, zero, 256
001464  6a25a930  vor.u.mh vr10{mr0}, r18, vr10
001468  0f898218  div.f.rn r18, r5, r8
00146c  67478fec  storeli.w r8, -2444(r30)
001470  7a146140  vextracti.f r8, 6(vr2)
001474  7e8004e0  vmmov mr0, r9
001478  9f040004  addli r9, zero, 512
00147c  6aa5a334  vor.u.mh vr10{mr2}, r7, vr10
001480  8f038218  div.f.rn r7, r4, r8
001484  67078fec  storeli.w r8, -2448(r30)
001488  7a147140  vextracti.f r8, 7(vr2)
00148c  6a25a936  vor.u.mh vr10{mr3}, r18, vr10
001490  0f898018  div.f.rn r18, r1, r8
001494  67438fec  storeli.w r8, -2508(r30)
001498  1f048000  addli r8, zero, 64
00149c  8f80a019  div.f.rn r1, r1, r26
0014a0  fe0104e0  vmmov mr3, r8
0014a4  1f040001  addli r8, zero, 128
0014a8  6aa5a336  vor.u.mh vr10{mr3}, r7, vr10
0014ac  8f03c819  div.f.rn r7, r16, r28
0014b0  fe0104e0  vmmov mr3, r8
0014b4  7a14a140  vextracti.f r8, 10(vr2)
0014b8  6a25a936  vor.u.mh vr10{mr3}, r18, vr10
0014bc  0f09b618  div.f.rn r18, r12, r11
0014c0  fe8104e0  vmmov mr3, r9
0014c4  9f040008  addli r9, zero, 1024
0014c8  6aa5a330  vor.u.mh vr10{mr0}, r7, vr10
0014cc  8f038318  div.f.rn r7, r6, r8
0014d0  7e8004e0  vmmov mr0, r9
0014d4  9f040040  addli r9, zero, 8192
0014d8  6a25a936  vor.u.mh vr10{mr3}, r18, vr10
0014dc  0f091719  div.f.rn r18, r14, r17
0014e0  6aa5a330  vor.u.mh vr10{mr0}, r7, vr10
0014e4  8f03a118  div.f.rn r7, r2, r10
0014e8  1f010010  addli r2, zero, 2048
0014ec  7e0001e0  vmmov mr0, r2
0014f0  1f010fee  addli r2, r30, -2304
0014f4  6a25a930  vor.u.mh vr10{mr0}, r18, vr10
0014f8  46103102  vstore_mask16.mz vr3{mr1}, 0(r2)
0014fc  1f010020  addli r2, zero, 4096
001500  7a991340  vextracti.f r18, 1(vr7)
001504  7e0001e0  vmmov mr0, r2
001508  0f815919  div.f.rn r2, r19, r21
00150c  fa19f140  vextracti.f r19, 15(vr2)
001510  8f872719  div.f.rn r15, r15, r18
001514  6aa5a330  vor.u.mh vr10{mr0}, r7, vr10
001518  fe0100c0  vmmov mr3, mr0
00151c  7e8004e0  vmmov mr0, r9
001520  9f840c00  addli r9, r25, 0
001524  fa930340  vextracti.f r7, 0(vr7)
001528  8f817118  div.f.rn r3, r3, r7
00152c  6a25ab30  vor.u.mh vr10{mr0}, r22, vr10
001530  0f8b3c19  div.f.rn r22, r25, r19
001534  ab4c0000  lui r25, 4
001538  7e800ce0  vmmov mr0, r25
00153c  ab8c0000  lui r25, 8
001540  6a25a130  vor.u.mh vr10{mr0}, r2, vr10
001544  7e800ce0  vmmov mr0, r25
001548  7a912340  vextracti.f r2, 2(vr7)
00154c  fa9c4340  vextracti.f r25, 4(vr7)
001550  6a25ab30  vor.u.mh vr10{mr0}, r22, vr10
001554  1f0b0ff7  addli r22, r30, -1152
001558  c2150b02  vload_mask16.mz vr11{mr1}, 0(r22)
00155c  1f1b0000  addli r22, zero, 1
001560  7e000be0  vmmov mr0, r22
001564  1f2b0000  addli r22, zero, 2
001568  eaa5b130  vor.u.mh vr11{mr0}, r3, vr11
00156c  8f812d18  div.f.rn r3, r27, r2
001570  fa9d3340  vextracti.f r27, 3(vr7)
001574  7e000be0  vmmov mr0, r22
001578  1f4b0000  addli r22, zero, 4
00157c  eaa5b730  vor.u.mh vr11{mr0}, r15, vr11
001580  8f07bc19  div.f.rn r15, r24, r27
001584  7e000be0  vmmov mr0, r22
001588  7a9cc340  vextracti.f r24, 12(vr7)
00158c  7a9bd340  vextracti.f r22, 13(vr7)
001590  eaa5b130  vor.u.mh vr11{mr0}, r3, vr11
001594  8f819619  div.f.rn r3, r13, r25
001598  9f061000  addli r13, zero, 8
00159c  7e8006e0  vmmov mr0, r13
0015a0  fa965340  vextracti.f r13, 5(vr7)
0015a4  eaa5b730  vor.u.mh vr11{mr0}, r15, vr11
0015a8  9f070ff0  addli r15, r30, -2048
0015ac  8f82d218  div.f.rn r5, r5, r13
0015b0  c2910702  vload_mask16.mz vr3{mr1}, 0(r15)
0015b4  fa976340  vextracti.f r15, 6(vr7)
0015b8  86b00100  vfp162float_l.rn vr1, vr3
0015bc  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
0015c0  86f00100  vfp162float_h.rn vr1, vr3
0015c4  eaa5b134  vor.u.mh vr11{mr2}, r3, vr11
0015c8  96901402  vadd.f.mz.rn vr1{mr1}, vr9, vr1
0015cc  06110000  vfloat2fp16_l.rn vr2, vr0
0015d0  06d10000  vfloat2fp16_h.rn vr2, vr1
0015d4  8f01f218  div.f.rn r3, r4, r15
0015d8  1f024000  addli r4, zero, 32
0015dc  86300100  vfp162float_l.rn vr1, vr2
0015e0  7e0002e0  vmmov mr0, r4
0015e4  1f028000  addli r4, zero, 64
0015e8  eaa5b230  vor.u.mh vr11{mr0}, r5, vr11
0015ec  fa928340  vextracti.f r5, 8(vr7)
0015f0  7e0002e0  vmmov mr0, r4
0015f4  1f020ff7  addli r4, r30, -1152
0015f8  eaa5b130  vor.u.mh vr11{mr0}, r3, vr11
0015fc  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
001600  1f020feb  addli r4, r30, -2688
001604  8f015818  div.f.rn r3, r16, r5
001608  7a989340  vextracti.f r16, 9(vr7)
00160c  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
001610  2bf20000  lui r4, 15
001614  1f72f21f  addli r4, r4, 4095
001618  7e0002e0  vmmov mr0, r4
00161c  1f020001  addli r4, zero, 128
001620  7e0102e0  vmmov mr2, r4
001624  1f020002  addli r4, zero, 256
001628  6e901430  vor.f.mh vr0{mr0}, vr9, vr1
00162c  eaa5b034  vor.u.mh vr11{mr2}, r1, vr11
001630  8f000619  div.f.rn r1, r12, r16
001634  7a96a340  vextracti.f r12, 10(vr7)
001638  7e0102e0  vmmov mr2, r4
00163c  1f028ff6  addli r4, r30, -1216
001640  eaa5b134  vor.u.mh vr11{mr2}, r3, vr11
001644  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
001648  8f01c318  div.f.rn r3, r6, r12
00164c  7a93b340  vextracti.f r6, 11(vr7)
001650  1e101002  vsub.f.mz.rn vr0{mr1}, vr0, vr1
001654  46101202  vstore_mask16.mz vr1{mr1}, 0(r4)
001658  1f020ff0  addli r4, r30, -2048
00165c  46100202  vstore_mask16.mz vr0{mr1}, 0(r4)
001660  1f020004  addli r4, zero, 512
001664  8e100002  vmul.f.mz.rn vr1{mr1}, vr0, vr0
001668  7e0102e0  vmmov mr2, r4
00166c  1f020008  addli r4, zero, 1024
001670  eaa5b034  vor.u.mh vr11{mr2}, r1, vr11
001674  8f006718  div.f.rn r1, r14, r6
001678  7a97f340  vextracti.f r14, 15(vr7)
00167c  7e0102e0  vmmov mr2, r4
001680  1f020010  addli r4, zero, 2048
001684  eaa5b134  vor.u.mh vr11{mr2}, r3, vr11
001688  9f018fef  addli r3, r30, -2112
00168c  7e0102e0  vmmov mr2, r4
001690  1f020040  addli r4, zero, 8192
001694  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
001698  0e101002  vmul.f.mz.rn vr0{mr1}, vr0, vr1
00169c  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
0016a0  e3018fed  loadli.w r3,  -2368(r30)
0016a4  eaa5b034  vor.u.mh vr11{mr2}, r1, vr11
0016a8  9f008ff0  addli r1, r30, -1984
0016ac  7e0102e0  vmmov mr2, r4
0016b0  1f020ff7  addli r4, r30, -1152
0016b4  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0016b8  8f806b19  div.f.rn r1, r23, r22
0016bc  fa9be340  vextracti.f r23, 14(vr7)
0016c0  86710000  vfp162float_h.rn vr3, vr0
0016c4  86300000  vfp162float_l.rn vr1, vr0
0016c8  8f818119  div.f.rn r3, r3, r24
0016cc  96113302  vadd.f.mz.rn vr3{mr1}, vr6, vr3
0016d0  96901202  vadd.f.mz.rn vr1{mr1}, vr5, vr1
0016d4  86720100  vfp162float_h.rn vr5, vr2
0016d8  eaa5b136  vor.u.mh vr11{mr3}, r3, vr11
0016dc  e3010fed  loadli.w r3,  -2432(r30)
0016e0  8f817119  div.f.rn r3, r3, r23
0016e4  eaa5b034  vor.u.mh vr11{mr2}, r1, vr11
0016e8  42130202  vload_mask16.mz vr6{mr1}, 0(r4)
0016ec  2b420000  lui r4, 4
0016f0  8f80e418  div.f.rn r1, r9, r14
0016f4  7e0102e0  vmmov mr2, r4
0016f8  2b820000  lui r4, 8
0016fc  eaa5b134  vor.u.mh vr11{mr2}, r3, vr11
001700  9f010ff7  addli r3, r30, -1152
001704  7e0102e0  vmmov mr2, r4
001708  6e935430  vor.f.mh vr6{mr0}, vr9, vr5
00170c  86920000  vfloat2fp16_l.rn vr5, vr1
001710  86d20100  vfloat2fp16_h.rn vr5, vr3
001714  86b10200  vfp162float_l.rn vr3, vr5
001718  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00171c  eaa5b034  vor.u.mh vr11{mr2}, r1, vr11
001720  9f000ff7  addli r1, r30, -1152
001724  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001728  9f000ff4  addli r1, r30, -1536
00172c  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
001730  ee903430  vor.f.mh vr1{mr0}, vr9, vr3
001734  86f10200  vfp162float_h.rn vr3, vr5
001738  76110102  veq.f.mz mr2{mr1}, vr2, vr0
00173c  12319002  vadd.s.mz vr2{mr1}, zero, vr9
001740  fe0001a0  vmmov r1, mr2
001744  73181fbe  store.h r1, -1040(r30)
001748  e300eff7  loadli.w r1,  -1040(r30)
00174c  c2920102  vload_mask16.mz vr5{mr1}, 0(r3)
001750  7e8100e0  vmmov mr2, r1
001754  9f000ff6  addli r1, r30, -1280
001758  7e010100  vmand mr2, mr2, mr0
00175c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001760  ee923430  vor.f.mh vr5{mr0}, vr9, vr3
001764  9e140302  vsub.f.mz.rn vr9{mr1}, vr6, vr0
001768  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00176c  9f008ff0  addli r1, r30, -1984
001770  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
001774  9f000ff2  addli r1, r30, -1792
001778  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
00177c  9f000fed  addli r1, r30, -2432
001780  00a00000  mfence { lm }
001784  9e916002  vsub.f.mz.rn vr3{mr1}, vr1, vr6
001788  8e909402  vmul.f.mz.rn vr1{mr1}, vr9, vr9
00178c  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
001790  9f008ff4  addli r1, r30, -1472
001794  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001798  9f008fed  addli r1, r30, -2368
00179c  1e900202  vsub.f.mz.rn vr0{mr1}, vr5, vr0
0017a0  8e923102  vmul.f.mz.rn vr5{mr1}, vr3, vr3
0017a4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0017a8  9f000ff7  addli r1, r30, -1152
0017ac  8e140002  vmul.f.mz.rn vr9{mr1}, vr0, vr0
0017b0  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0017b4  9f000fef  addli r1, r30, -2176
0017b8  6e143134  vor.f.mh vr8{mr2}, vr2, vr3
0017bc  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0017c0  9f008fee  addli r1, r30, -2240
0017c4  8e911102  vmul.f.mz.rn vr3{mr1}, vr3, vr1
0017c8  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0017cc  9f000fee  addli r1, r30, -2304
0017d0  8e905002  vmul.f.mz.rn vr1{mr1}, vr1, vr5
0017d4  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
0017d8  9f008fee  addli r1, r30, -2240
0017dc  0e909202  vmul.f.mz.rn vr0{mr1}, vr5, vr9
0017e0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0017e4  9f000ff0  addli r1, r30, -2048
0017e8  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0017ec  9f000fef  addli r1, r30, -2176
0017f0  0e108002  vmul.f.mz.rn vr0{mr1}, vr0, vr8
0017f4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0017f8  9f008fef  addli r1, r30, -2112
0017fc  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001800  9f000ff0  addli r1, r30, -2048
001804  0e108002  vmul.f.mz.rn vr0{mr1}, vr0, vr8
001808  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00180c  9f000ff7  addli r1, r30, -1152
001810  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
001814  9f008ff3  addli r1, r30, -1600
001818  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00181c  76118002  veq.f.mz mr2{mr1}, vr0, vr8
001820  fe0001a0  vmmov r1, mr2
001824  731a1fbe  store.h r1, -1036(r30)
001828  9f000ff7  addli r1, r30, -1152
00182c  e341eff7  loadli.w r3,  -1036(r30)
001830  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
001834  9f000ff3  addli r1, r30, -1664
001838  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00183c  76118002  veq.f.mz mr2{mr1}, vr0, vr8
001840  fe0001a0  vmmov r1, mr2
001844  731c1fbe  store.h r1, -1032(r30)
001848  9f000ff7  addli r1, r30, -1152
00184c  6302fff7  loadli.w r4,  -1032(r30)
001850  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
001854  fe0102e0  vmmov mr3, r4
001858  76918302  veq.f.mz mr2{mr1}, vr7, vr8
00185c  fe0001a0  vmmov r1, mr2
001860  7e8101e0  vmmov mr2, r3
001864  731e1fbe  store.h r1, -1028(r30)
001868  e340fff7  loadli.w r1,  -1028(r30)
00186c  00a00000  mfence { lm }
001870  7e8000e0  vmmov mr0, r1
001874  9f008fef  addli r1, r30, -2112
001878  7e0000a0  vmmov zero, mr0
00187c  67800000  storeli.w zero, 0(r1)
001880  abf00000  lui r1, 15
001884  17200000  xor zero, zero, zero
001888  9ff0f01f  addli r1, r1, 4095
00188c  9f012000  addli r3, zero, 16
001890  7e8000e0  vmmov mr0, r1
001894  9f000ff7  addli r1, r30, -1152
001898  7e010100  vmand mr2, mr2, mr0
00189c  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
0018a0  6e128134  vor.f.mh vr4{mr2}, vr2, vr8
0018a4  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
0018a8  9f008fef  addli r1, r30, -2112
0018ac  7e810100  vmand mr2, mr3, mr0
0018b0  fe8101e0  vmmov mr3, r3
0018b4  63800000  loadli.w zero,  0(r1)
0018b8  9f000ff7  addli r1, r30, -1152
0018bc  8e914102  vmul.f.mz.rn vr3{mr1}, vr3, vr4
0018c0  6e158134  vor.f.mh vr10{mr2}, vr2, vr8
0018c4  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
0018c8  9f008ff0  addli r1, r30, -1984
0018cc  7e0100e0  vmmov mr2, zero
0018d0  17200000  xor zero, zero, zero
0018d4  7e000100  vmand mr0, mr2, mr0
0018d8  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0018dc  9f000fed  addli r1, r30, -2432
0018e0  8e90a002  vmul.f.mz.rn vr1{mr1}, vr1, vr10
0018e4  ee158130  vor.f.mh vr11{mr0}, vr2, vr8
0018e8  0e144002  vmul.f.mz.rn vr8{mr1}, vr0, vr4
0018ec  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0018f0  9f008fed  addli r1, r30, -2368
0018f4  0e12a002  vmul.f.mz.rn vr4{mr1}, vr0, vr10
0018f8  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0018fc  9f008fee  addli r1, r30, -2240
001900  16134302  vadd.f.mz.rn vr6{mr1}, vr6, vr4
001904  8e12b002  vmul.f.mz.rn vr5{mr1}, vr0, vr11
001908  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00190c  9f008ff4  addli r1, r30, -1472
001910  0e15b002  vmul.f.mz.rn vr10{mr1}, vr0, vr11
001914  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
001918  9f008ff6  addli r1, r30, -1216
00191c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001920  9f000fef  addli r1, r30, -2176
001924  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
001928  9f008ff6  addli r1, r30, -1216
00192c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001930  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001934  9f008ff2  addli r1, r30, -1728
001938  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00193c  9f008ff1  addli r1, r30, -1856
001940  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
001944  9f000ff0  addli r1, r30, -2048
001948  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
00194c  9f008ff1  addli r1, r30, -1856
001950  96942402  vadd.f.mz.rn vr9{mr1}, vr9, vr2
001954  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
001958  9f000ff6  addli r1, r30, -1280
00195c  92340002  vadd.s.mz vr9{mr1}, zero, vr0
001960  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001964  9694a402  vadd.f.mz.rn vr9{mr1}, vr9, vr10
001968  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
00196c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001970  9f000ff4  addli r1, r30, -1536
001974  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
001978  9f000ff5  addli r1, r30, -1408
00197c  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
001980  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
001984  92317002  vadd.s.mz vr3{mr1}, zero, vr7
001988  9233b002  vadd.s.mz vr7{mr1}, zero, vr11
00198c  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
001990  96935302  vadd.f.mz.rn vr7{mr1}, vr7, vr5
001994  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001998  9f000ff2  addli r1, r30, -1792
00199c  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0019a0  9f008ff5  addli r1, r30, -1344
0019a4  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0019a8  16111102  vadd.f.mz.rn vr2{mr1}, vr2, vr1
0019ac  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
0019b0  9f008ff3  addli r1, r30, -1600
0019b4  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
0019b8  9f008ff5  addli r1, r30, -1344
0019bc  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0019c0  9f000ff3  addli r1, r30, -1664
0019c4  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0019c8  e3407ff1  loadli.w r1,  -1860(r30)
0019cc  9f800001  addli r1, r1, 128
0019d0  1f820000  addli r4, r1, 0
0019d4  9f810000  addli r3, r1, 0
0019d8  9f000003  addli r1, zero, 384
0019dc  3be011f8  bneq r3, r1, -4072
0019e0  e7415fed  storeli.w r21, -2532(r30)
0019e4  e7013fed  storeli.w r19, -2536(r30)
0019e8  9f008ff1  addli r1, r30, -1856
0019ec  e3419fec  loadli.w r3,  -2484(r30)
0019f0  9230a002  vadd.s.mz vr1{mr1}, zero, vr10
0019f4  12353002  vadd.s.mz vr10{mr1}, zero, vr3
0019f8  9611b402  vadd.f.mz.rn vr3{mr1}, vr8, vr11
0019fc  9f0a0000  addli r21, zero, 0
001a00  00a00000  mfence { lm }
001a04  670cefec  storeli.w r14, -2368(r30)
001a08  6700afee  storeli.w r10, -2304(r30)
001a0c  670c8fef  storeli.w r24, -2112(r30)
001a10  6704cff5  storeli.w r28, -1472(r30)
001a14  67416fec  storeli.w r6, -2540(r30)
001a18  67049ff1  storeli.w r25, -1984(r30)
001a1c  67084fed  storeli.w r20, -2432(r30)
001a20  67047fef  storeli.w r23, -2240(r30)
001a24  67086fef  storeli.w r22, -2176(r30)
001a28  6700bff1  storeli.w r27, -2048(r30)
001a2c  6704bff2  storeli.w r11, -1728(r30)
001a30  67017fec  storeli.w r7, -2544(r30)
001a34  e74baff1  storeli.w r26, -1860(r30)
001a38  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
001a3c  9f000ff6  addli r1, r30, -1280
001a40  63028fec  loadli.w r4,  -2496(r30)
001a44  63478fec  loadli.w r14,  -2492(r30)
001a48  63059fec  loadli.w r10,  -2488(r30)
001a4c  634e6fec  loadli.w r28,  -2508(r30)
001a50  630c7fec  loadli.w r24,  -2504(r30)
001a54  9f8c0a00  addli r25, r21, 0
001a58  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
001a5c  9f008ff6  addli r1, r30, -1216
001a60  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
001a64  9f000ff2  addli r1, r30, -1792
001a68  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
001a6c  9f000ff7  addli r1, r30, -1152
001a70  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001a74  76900102  veq.f.mz mr0{mr1}, vr3, vr0
001a78  7e0300a0  vmmov r6, mr0
001a7c  9b001300  andi r1, r6, 1
001a80  3bb00000  bneq r1, zero, 12
001a84  fa900140  vextracti.f r1, 0(vr3)
001a88  8f8c1118  div.f.rn r25, r3, r1
001a8c  9b40f300  srli r1, r6, 15
001a90  e7445fec  storeli.w r5, -2484(r30)
001a94  9f420000  addli r5, zero, 4
001a98  e30bdfec  loadli.w r23,  -2456(r30)
001a9c  e34dcfec  loadli.w r27,  -2460(r30)
001aa0  630bcfec  loadli.w r22,  -2464(r30)
001aa4  634dbfec  loadli.w r26,  -2468(r30)
001aa8  e304bfec  loadli.w r9,  -2472(r30)
001aac  e345afec  loadli.w r11,  -2476(r30)
001ab0  9f030500  addli r7, r10, 0
001ab4  1f0a0700  addli r20, r14, 0
001ab8  9f090200  addli r19, r4, 0
001abc  9b811000  andi r3, r1, 1
001ac0  9f800a00  addli r1, r21, 0
001ac4  7e8002e0  vmmov mr0, r5
001ac8  3bc00100  bneq r3, zero, 16
001acc  fa90f140  vextracti.f r1, 15(vr3)
001ad0  e3014fec  loadli.w r3,  -2528(r30)
001ad4  8f801118  div.f.rn r1, r3, r1
001ad8  9b41e300  srli r3, r6, 14
001adc  6342dfec  loadli.w r4,  -2452(r30)
001ae0  6307afec  loadli.w r14,  -2480(r30)
001ae4  63457fec  loadli.w r10,  -2500(r30)
001ae8  9b821100  andi r5, r3, 1
001aec  9f810a00  addli r3, r21, 0
001af0  3bb00200  bneq r5, zero, 12
001af4  fa91e140  vextracti.f r3, 14(vr3)
001af8  8f013518  div.f.rn r3, r10, r3
001afc  9b42d300  srli r5, r6, 13
001b00  670ccff2  storeli.w r12, -1600(r30)
001b04  1b851200  andi r10, r5, 1
001b08  9f820a00  addli r5, r21, 0
001b0c  3b400500  bneq r10, zero, 16
001b10  fa92d140  vextracti.f r5, 13(vr3)
001b14  63454fec  loadli.w r10,  -2524(r30)
001b18  8f025518  div.f.rn r5, r10, r5
001b1c  1b45c300  srli r10, r6, 12
001b20  1b061500  andi r12, r10, 1
001b24  1f850a00  addli r10, r21, 0
001b28  3b300600  bneq r12, zero, 12
001b2c  7a95c140  vextracti.f r10, 12(vr3)
001b30  0f05a718  div.f.rn r10, r14, r10
001b34  1b46b300  srli r12, r6, 11
001b38  1b071600  andi r14, r12, 1
001b3c  1f860a00  addli r12, r21, 0
001b40  3b300700  bneq r14, zero, 12
001b44  7a96b140  vextracti.f r12, 11(vr3)
001b48  0f86c518  div.f.rn r12, r11, r12
001b4c  9b45a300  srli r11, r6, 10
001b50  6745dfec  storeli.w r13, -2476(r30)
001b54  1b871500  andi r14, r11, 1
001b58  9f850a00  addli r11, r21, 0
001b5c  3b400700  bneq r14, zero, 16
001b60  fa95a140  vextracti.f r11, 10(vr3)
001b64  e3065fec  loadli.w r13,  -2520(r30)
001b68  8f85b618  div.f.rn r11, r13, r11
001b6c  9b469300  srli r13, r6, 9
001b70  1b871600  andi r14, r13, 1
001b74  9f860a00  addli r13, r21, 0
001b78  3b300700  bneq r14, zero, 12
001b7c  fa969140  vextracti.f r13, 9(vr3)
001b80  8f86d418  div.f.rn r13, r9, r13
001b84  9b448300  srli r9, r6, 8
001b88  e7052fec  storeli.w r2, -2472(r30)
001b8c  1b871400  andi r14, r9, 1
001b90  9f840a00  addli r9, r21, 0
001b94  3b300700  bneq r14, zero, 12
001b98  fa948140  vextracti.f r9, 8(vr3)
001b9c  8f049d18  div.f.rn r9, r26, r9
001ba0  1b417300  srli r2, r6, 7
001ba4  1f8d0700  addli r26, r15, 0
001ba8  1b071100  andi r14, r2, 1
001bac  1f810a00  addli r2, r21, 0
001bb0  3b300700  bneq r14, zero, 12
001bb4  7a917140  vextracti.f r2, 7(vr3)
001bb8  0f012b18  div.f.rn r2, r22, r2
001bbc  1b476300  srli r14, r6, 6
001bc0  1f0b0800  addli r22, r16, 0
001bc4  9b071700  andi r15, r14, 1
001bc8  1f870a00  addli r14, r21, 0
001bcc  3bb00700  bneq r15, zero, 12
001bd0  7a976140  vextracti.f r14, 6(vr3)
001bd4  0f87ed18  div.f.rn r14, r27, r14
001bd8  9b475300  srli r15, r6, 5
001bdc  67462fed  storeli.w r18, -2460(r30)
001be0  1b881700  andi r16, r15, 1
001be4  9f870a00  addli r15, r21, 0
001be8  3b300800  bneq r16, zero, 12
001bec  fa975140  vextracti.f r15, 5(vr3)
001bf0  8f87fb18  div.f.rn r15, r23, r15
001bf4  1b484300  srli r16, r6, 4
001bf8  1b091800  andi r18, r16, 1
001bfc  1f880a00  addli r16, r21, 0
001c00  3b300900  bneq r18, zero, 12
001c04  7a984140  vextracti.f r16, 4(vr3)
001c08  0f880919  div.f.rn r16, r19, r16
001c0c  1b493300  srli r18, r6, 3
001c10  9f890a00  addli r19, r21, 0
001c14  1b091900  andi r18, r18, 1
001c18  3b300900  bneq r18, zero, 12
001c1c  7a993140  vextracti.f r18, 3(vr3)
001c20  8f092a19  div.f.rn r19, r20, r18
001c24  1b492300  srli r18, r6, 2
001c28  1f8a0a00  addli r20, r21, 0
001c2c  1b091900  andi r18, r18, 1
001c30  3b400900  bneq r18, zero, 16
001c34  7a992140  vextracti.f r18, 2(vr3)
001c38  634a5fec  loadli.w r20,  -2516(r30)
001c3c  0f0a2a19  div.f.rn r20, r20, r18
001c40  1b431300  srli r6, r6, 1
001c44  1b091300  andi r18, r6, 1
001c48  1f830a00  addli r6, r21, 0
001c4c  3b300900  bneq r18, zero, 12
001c50  7a931140  vextracti.f r6, 1(vr3)
001c54  0f836318  div.f.rn r6, r7, r6
001c58  9f030ff7  addli r7, r30, -1152
001c5c  96901102  vadd.f.mz.rn vr1{mr1}, vr3, vr1
001c60  42900302  vload_mask16.mz vr0{mr1}, 0(r7)
001c64  9f130000  addli r7, zero, 1
001c68  7e8103e0  vmmov mr2, r7
001c6c  9f230000  addli r7, zero, 2
001c70  92350002  vadd.s.mz vr11{mr1}, zero, vr0
001c74  eaa5bc34  vor.u.mh vr11{mr2}, r25, vr11
001c78  7e8103e0  vmmov mr2, r7
001c7c  ea25b334  vor.u.mh vr11{mr2}, r6, vr11
001c80  1f031000  addli r6, zero, 8
001c84  ea25ba30  vor.u.mh vr11{mr0}, r20, vr11
001c88  7e0003e0  vmmov mr0, r6
001c8c  1f034000  addli r6, zero, 32
001c90  eaa5b930  vor.u.mh vr11{mr0}, r19, vr11
001c94  7e0003e0  vmmov mr0, r6
001c98  1f038000  addli r6, zero, 64
001c9c  ea25b836  vor.u.mh vr11{mr3}, r16, vr11
001ca0  eaa5b730  vor.u.mh vr11{mr0}, r15, vr11
001ca4  7e0003e0  vmmov mr0, r6
001ca8  1f030001  addli r6, zero, 128
001cac  ea25b730  vor.u.mh vr11{mr0}, r14, vr11
001cb0  7e0003e0  vmmov mr0, r6
001cb4  ea25b130  vor.u.mh vr11{mr0}, r2, vr11
001cb8  1f010002  addli r2, zero, 256
001cbc  7e0001e0  vmmov mr0, r2
001cc0  1f010004  addli r2, zero, 512
001cc4  eaa5b430  vor.u.mh vr11{mr0}, r9, vr11
001cc8  7e0001e0  vmmov mr0, r2
001ccc  1f010008  addli r2, zero, 1024
001cd0  eaa5b630  vor.u.mh vr11{mr0}, r13, vr11
001cd4  7e0001e0  vmmov mr0, r2
001cd8  1f010010  addli r2, zero, 2048
001cdc  eaa5b530  vor.u.mh vr11{mr0}, r11, vr11
001ce0  7e0001e0  vmmov mr0, r2
001ce4  1f010020  addli r2, zero, 4096
001ce8  ea25b630  vor.u.mh vr11{mr0}, r12, vr11
001cec  7e0001e0  vmmov mr0, r2
001cf0  1f010040  addli r2, zero, 8192
001cf4  ea25b530  vor.u.mh vr11{mr0}, r10, vr11
001cf8  7e0001e0  vmmov mr0, r2
001cfc  2b410000  lui r2, 4
001d00  eaa5b230  vor.u.mh vr11{mr0}, r5, vr11
001d04  7e0001e0  vmmov mr0, r2
001d08  2b810000  lui r2, 8
001d0c  eaa5b130  vor.u.mh vr11{mr0}, r3, vr11
001d10  76900002  veq.f.mz mr0{mr1}, vr1, vr0
001d14  9f810a00  addli r3, r21, 0
001d18  fe0200a0  vmmov r5, mr0
001d1c  7e0001e0  vmmov mr0, r2
001d20  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
001d24  9b801200  andi r1, r5, 1
001d28  3bb00000  bneq r1, zero, 12
001d2c  fa900040  vextracti.f r1, 0(vr1)
001d30  8f011218  div.f.rn r3, r4, r1
001d34  9bc0f200  srli r1, r5, 15
001d38  634affec  loadli.w r20,  -2436(r30)
001d3c  6309ffec  loadli.w r18,  -2440(r30)
001d40  6348efec  loadli.w r16,  -2444(r30)
001d44  e307efec  loadli.w r15,  -2448(r30)
001d48  e3068ff4  loadli.w r13,  -1472(r30)
001d4c  63068ff2  loadli.w r12,  -1728(r30)
001d50  e3040fee  loadli.w r9,  -2304(r30)
001d54  e3030fed  loadli.w r7,  -2432(r30)
001d58  63433fec  loadli.w r6,  -2532(r30)
001d5c  63023fec  loadli.w r4,  -2536(r30)
001d60  1b811000  andi r2, r1, 1
001d64  9f800a00  addli r1, r21, 0
001d68  3b300100  bneq r2, zero, 12
001d6c  fa90f040  vextracti.f r1, 15(vr1)
001d70  8f001218  div.f.rn r1, r4, r1
001d74  1bc1e200  srli r2, r5, 14
001d78  1f450000  addli r10, zero, 4
001d7c  1b021100  andi r4, r2, 1
001d80  1f810a00  addli r2, r21, 0
001d84  7e0005e0  vmmov mr0, r10
001d88  3b300200  bneq r4, zero, 12
001d8c  7a91e040  vextracti.f r2, 14(vr1)
001d90  0f012318  div.f.rn r2, r6, r2
001d94  1bc2d200  srli r4, r5, 13
001d98  1b031200  andi r6, r4, 1
001d9c  1f820a00  addli r4, r21, 0
001da0  3b300300  bneq r6, zero, 12
001da4  7a92d040  vextracti.f r4, 13(vr1)
001da8  0f824318  div.f.rn r4, r7, r4
001dac  1bc3c200  srli r6, r5, 12
001db0  9b031300  andi r7, r6, 1
001db4  1f830a00  addli r6, r21, 0
001db8  3bb00300  bneq r7, zero, 12
001dbc  7a93c040  vextracti.f r6, 12(vr1)
001dc0  0f836418  div.f.rn r6, r9, r6
001dc4  9bc3b200  srli r7, r5, 11
001dc8  9b841300  andi r9, r7, 1
001dcc  9f830a00  addli r7, r21, 0
001dd0  3bb00400  bneq r9, zero, 12
001dd4  fa93b040  vextracti.f r7, 11(vr1)
001dd8  8f837818  div.f.rn r7, r17, r7
001ddc  9bc4a200  srli r9, r5, 10
001de0  1b851400  andi r10, r9, 1
001de4  9f840a00  addli r9, r21, 0
001de8  3b300500  bneq r10, zero, 12
001dec  fa94a040  vextracti.f r9, 10(vr1)
001df0  8f049418  div.f.rn r9, r8, r9
001df4  1bc59200  srli r10, r5, 9
001df8  9b051500  andi r11, r10, 1
001dfc  1f850a00  addli r10, r21, 0
001e00  3bb00500  bneq r11, zero, 12
001e04  7a959040  vextracti.f r10, 9(vr1)
001e08  0f05a618  div.f.rn r10, r12, r10
001e0c  9bc58200  srli r11, r5, 8
001e10  63048fee  loadli.w r8,  -2240(r30)
001e14  1b861500  andi r12, r11, 1
001e18  9f850a00  addli r11, r21, 0
001e1c  3b300600  bneq r12, zero, 12
001e20  fa958040  vextracti.f r11, 8(vr1)
001e24  8f85b618  div.f.rn r11, r13, r11
001e28  1bc67200  srli r12, r5, 7
001e2c  9b061600  andi r13, r12, 1
001e30  1f860a00  addli r12, r21, 0
001e34  3bb00600  bneq r13, zero, 12
001e38  7a967040  vextracti.f r12, 7(vr1)
001e3c  0f06ce18  div.f.rn r12, r28, r12
001e40  9bc66200  srli r13, r5, 6
001e44  1b871600  andi r14, r13, 1
001e48  9f860a00  addli r13, r21, 0
001e4c  3b300700  bneq r14, zero, 12
001e50  fa966040  vextracti.f r13, 6(vr1)
001e54  8f86d718  div.f.rn r13, r15, r13
001e58  1bc75200  srli r14, r5, 5
001e5c  9b071700  andi r15, r14, 1
001e60  1f870a00  addli r14, r21, 0
001e64  3bb00700  bneq r15, zero, 12
001e68  7a975040  vextracti.f r14, 5(vr1)
001e6c  0f07e818  div.f.rn r14, r16, r14
001e70  9bc74200  srli r15, r5, 4
001e74  1b881700  andi r16, r15, 1
001e78  9f870a00  addli r15, r21, 0
001e7c  3b300800  bneq r16, zero, 12
001e80  fa974040  vextracti.f r15, 4(vr1)
001e84  8f07f918  div.f.rn r15, r18, r15
001e88  1bc83200  srli r16, r5, 3
001e8c  1b091800  andi r18, r16, 1
001e90  1f880a00  addli r16, r21, 0
001e94  3b300900  bneq r18, zero, 12
001e98  7a983040  vextracti.f r16, 3(vr1)
001e9c  0f080c19  div.f.rn r16, r24, r16
001ea0  1bc92200  srli r18, r5, 2
001ea4  9b091900  andi r19, r18, 1
001ea8  1f890a00  addli r18, r21, 0
001eac  3bc00900  bneq r19, zero, 16
001eb0  7a992040  vextracti.f r18, 2(vr1)
001eb4  e3096fec  loadli.w r19,  -2512(r30)
001eb8  0f892919  div.f.rn r18, r19, r18
001ebc  9f080ff3  addli r17, r30, -1664
001ec0  9bc21200  srli r5, r5, 1
001ec4  46903802  vstore_mask16.mz vr3{mr1}, 0(r17)
001ec8  9b891200  andi r19, r5, 1
001ecc  9f088ff2  addli r17, r30, -1728
001ed0  9f820a00  addli r5, r21, 0
001ed4  00a00000  mfence { lm }
001ed8  46909802  vstore_mask16.mz vr9{mr1}, 0(r17)
001edc  3bb00900  bneq r19, zero, 12
001ee0  fa921040  vextracti.f r5, 1(vr1)
001ee4  8f025a18  div.f.rn r5, r20, r5
001ee8  9f080ff7  addli r17, r30, -1152
001eec  1690a002  vadd.f.mz.rn vr0{mr1}, vr1, vr10
001ef0  c2940802  vload_mask16.mz vr9{mr1}, 0(r17)
001ef4  9f180000  addli r17, zero, 1
001ef8  7e8108e0  vmmov mr2, r17
001efc  92319002  vadd.s.mz vr3{mr1}, zero, vr9
001f00  eaa13134  vor.u.mh vr3{mr2}, r3, vr3
001f04  9f210000  addli r3, zero, 2
001f08  7e8101e0  vmmov mr2, r3
001f0c  9f011000  addli r3, zero, 8
001f10  eaa13234  vor.u.mh vr3{mr2}, r5, vr3
001f14  fa120040  vextracti.f r5, 0(vr0)
001f18  ea213930  vor.u.mh vr3{mr0}, r18, vr3
001f1c  7e8001e0  vmmov mr0, r3
001f20  9f014000  addli r3, zero, 32
001f24  ea213830  vor.u.mh vr3{mr0}, r16, vr3
001f28  7e8001e0  vmmov mr0, r3
001f2c  9f018000  addli r3, zero, 64
001f30  eaa13736  vor.u.mh vr3{mr3}, r15, vr3
001f34  ea213730  vor.u.mh vr3{mr0}, r14, vr3
001f38  7e8001e0  vmmov mr0, r3
001f3c  9f010001  addli r3, zero, 128
001f40  eaa13630  vor.u.mh vr3{mr0}, r13, vr3
001f44  7e8001e0  vmmov mr0, r3
001f48  9f010002  addli r3, zero, 256
001f4c  ea213630  vor.u.mh vr3{mr0}, r12, vr3
001f50  7e8001e0  vmmov mr0, r3
001f54  9f010004  addli r3, zero, 512
001f58  eaa13530  vor.u.mh vr3{mr0}, r11, vr3
001f5c  7e8001e0  vmmov mr0, r3
001f60  9f010008  addli r3, zero, 1024
001f64  ea213530  vor.u.mh vr3{mr0}, r10, vr3
001f68  7e8001e0  vmmov mr0, r3
001f6c  9f010010  addli r3, zero, 2048
001f70  eaa13430  vor.u.mh vr3{mr0}, r9, vr3
001f74  7e8001e0  vmmov mr0, r3
001f78  9f010020  addli r3, zero, 4096
001f7c  eaa13330  vor.u.mh vr3{mr0}, r7, vr3
001f80  7e8001e0  vmmov mr0, r3
001f84  9f010040  addli r3, zero, 8192
001f88  ea213330  vor.u.mh vr3{mr0}, r6, vr3
001f8c  7e8001e0  vmmov mr0, r3
001f90  ab410000  lui r3, 4
001f94  ea213230  vor.u.mh vr3{mr0}, r4, vr3
001f98  7e8001e0  vmmov mr0, r3
001f9c  9f810a00  addli r3, r21, 0
001fa0  ea213130  vor.u.mh vr3{mr0}, r2, vr3
001fa4  2b810000  lui r2, 8
001fa8  76109002  veq.f.mz mr0{mr1}, vr0, vr9
001fac  7e0500a0  vmmov r10, mr0
001fb0  7e0001e0  vmmov mr0, r2
001fb4  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
001fb8  9b001500  andi r1, r10, 1
001fbc  3bb00000  bneq r1, zero, 12
001fc0  e3002fec  loadli.w r1,  -2544(r30)
001fc4  8f815018  div.f.rn r3, r1, r5
001fc8  9b40f500  srli r1, r10, 15
001fcc  1f070d00  addli r14, r26, 0
001fd0  fa1bf040  vextracti.f r23, 15(vr0)
001fd4  63068ff0  loadli.w r12,  -1984(r30)
001fd8  634d7ff1  loadli.w r26,  -1860(r30)
001fdc  63020ff0  loadli.w r4,  -2048(r30)
001fe0  63018fef  loadli.w r2,  -2112(r30)
001fe4  e3030fef  loadli.w r7,  -2176(r30)
001fe8  63038fed  loadli.w r6,  -2368(r30)
001fec  9f850a00  addli r11, r21, 0
001ff0  9b801000  andi r1, r1, 1
001ff4  3ba00000  bneq r1, zero, 8
001ff8  8f057319  div.f.rn r11, r6, r23
001ffc  9b40e500  srli r1, r10, 14
002000  fa16e040  vextracti.f r13, 14(vr0)
002004  1f830a00  addli r6, r21, 0
002008  9b801000  andi r1, r1, 1
00200c  3ba00000  bneq r1, zero, 8
002010  0f03d418  div.f.rn r6, r8, r13
002014  9b40d500  srli r1, r10, 13
002018  fa17d040  vextracti.f r15, 13(vr0)
00201c  1f840a00  addli r8, r21, 0
002020  6700bfee  storeli.w r11, -2304(r30)
002024  9b801000  andi r1, r1, 1
002028  3ba00000  bneq r1, zero, 8
00202c  0f84f318  div.f.rn r8, r7, r15
002030  9b40c500  srli r1, r10, 12
002034  fa13c040  vextracti.f r7, 12(vr0)
002038  9f850a00  addli r11, r21, 0
00203c  9b801000  andi r1, r1, 1
002040  3ba00000  bneq r1, zero, 8
002044  8f057118  div.f.rn r11, r2, r7
002048  9b40b500  srli r1, r10, 11
00204c  7a11b040  vextracti.f r2, 11(vr0)
002050  670cdfee  storeli.w r13, -2112(r30)
002054  9f860a00  addli r13, r21, 0
002058  9b801000  andi r1, r1, 1
00205c  67042ff4  storeli.w r2, -1472(r30)
002060  3bc00000  bneq r1, zero, 16
002064  e3402fec  loadli.w r1,  -2540(r30)
002068  63018ff4  loadli.w r2,  -1472(r30)
00206c  8f862018  div.f.rn r13, r1, r2
002070  9b40a500  srli r1, r10, 10
002074  7a11a040  vextracti.f r2, 10(vr0)
002078  9f880a00  addli r17, r21, 0
00207c  9b801000  andi r1, r1, 1
002080  3bb00000  bneq r1, zero, 12
002084  e3008ff3  loadli.w r1,  -1600(r30)
002088  8f882018  div.f.rn r17, r1, r2
00208c  9b409500  srli r1, r10, 9
002090  7a189040  vextracti.f r16, 9(vr0)
002094  1f890a00  addli r18, r21, 0
002098  9b801000  andi r1, r1, 1
00209c  670c0ff3  storeli.w r16, -1600(r30)
0020a0  3bb00000  bneq r1, zero, 12
0020a4  e3008ff3  loadli.w r1,  -1600(r30)
0020a8  0f091b18  div.f.rn r18, r22, r1
0020ac  67042fee  storeli.w r2, -2240(r30)
0020b0  1b418500  srli r2, r10, 8
0020b4  9f800300  addli r1, r7, 0
0020b8  fa138040  vextracti.f r7, 8(vr0)
0020bc  9f890a00  addli r19, r21, 0
0020c0  1b011100  andi r2, r2, 1
0020c4  3b300100  bneq r2, zero, 12
0020c8  63419fec  loadli.w r2,  -2484(r30)
0020cc  8f097118  div.f.rn r19, r2, r7
0020d0  1b417500  srli r2, r10, 7
0020d4  fa1c7040  vextracti.f r25, 7(vr0)
0020d8  1f8b0a00  addli r22, r21, 0
0020dc  1b011100  andi r2, r2, 1
0020e0  3b200100  bneq r2, zero, 8
0020e4  0f0b9d19  div.f.rn r22, r26, r25
0020e8  1b416500  srli r2, r10, 6
0020ec  fa146040  vextracti.f r9, 6(vr0)
0020f0  1f8c0a00  addli r24, r21, 0
0020f4  1b011100  andi r2, r2, 1
0020f8  3b200100  bneq r2, zero, 8
0020fc  0f0c9718  div.f.rn r24, r14, r9
002100  1b415500  srli r2, r10, 5
002104  7a175040  vextracti.f r14, 5(vr0)
002108  1f8d0a00  addli r26, r21, 0
00210c  1b011100  andi r2, r2, 1
002110  3b300100  bneq r2, zero, 12
002114  6341afec  loadli.w r2,  -2476(r30)
002118  0f0de118  div.f.rn r26, r2, r14
00211c  1b414500  srli r2, r10, 4
002120  7a184040  vextracti.f r16, 4(vr0)
002124  9f8d0a00  addli r27, r21, 0
002128  e74bfff0  storeli.w r15, -1860(r30)
00212c  1b011100  andi r2, r2, 1
002130  3b200100  bneq r2, zero, 8
002134  8f0d0619  div.f.rn r27, r12, r16
002138  1b413500  srli r2, r10, 3
00213c  fa173040  vextracti.f r15, 3(vr0)
002140  1f8e0a00  addli r28, r21, 0
002144  1b011100  andi r2, r2, 1
002148  3b200100  bneq r2, zero, 8
00214c  0f0ef218  div.f.rn r28, r4, r15
002150  1b412500  srli r2, r10, 2
002154  7a1a2040  vextracti.f r20, 2(vr0)
002158  1b021100  andi r4, r2, 1
00215c  1f810a00  addli r2, r21, 0
002160  3b300200  bneq r4, zero, 12
002164  6301bfec  loadli.w r2,  -2472(r30)
002168  0f014119  div.f.rn r2, r2, r20
00216c  1b421500  srli r4, r10, 1
002170  7a151040  vextracti.f r10, 1(vr0)
002174  1b061200  andi r12, r4, 1
002178  1f820a00  addli r4, r21, 0
00217c  3b300600  bneq r12, zero, 12
002180  6342cfec  loadli.w r4,  -2460(r30)
002184  0f02a218  div.f.rn r4, r4, r10
002188  1f060ff7  addli r12, r30, -1152
00218c  42100602  vload_mask16.mz vr0{mr1}, 0(r12)
002190  1f160000  addli r12, zero, 1
002194  7e0006e0  vmmov mr0, r12
002198  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
00219c  9f210000  addli r3, zero, 2
0021a0  7e8001e0  vmmov mr0, r3
0021a4  9f410000  addli r3, zero, 4
0021a8  6a200230  vor.u.mh vr0{mr0}, r4, vr0
0021ac  7e8001e0  vmmov mr0, r3
0021b0  1f020020  addli r4, zero, 4096
0021b4  6a200130  vor.u.mh vr0{mr0}, r2, vr0
0021b8  1f011000  addli r2, zero, 8
0021bc  7e0001e0  vmmov mr0, r2
0021c0  1f014000  addli r2, zero, 32
0021c4  6a200e30  vor.u.mh vr0{mr0}, r28, vr0
0021c8  7e0101e0  vmmov mr2, r2
0021cc  1f018000  addli r2, zero, 64
0021d0  6aa00d36  vor.u.mh vr0{mr3}, r27, vr0
0021d4  9f8d0200  addli r27, r5, 0
0021d8  9f020040  addli r5, zero, 8192
0021dc  8be1ad10  add.f.rn r3, r27, r10
0021e0  6a200d34  vor.u.mh vr0{mr2}, r26, vr0
0021e4  7e0101e0  vmmov mr2, r2
0021e8  1f010001  addli r2, zero, 128
0021ec  1f8d0a00  addli r26, r21, 0
0021f0  6a200c34  vor.u.mh vr0{mr2}, r24, vr0
0021f4  7e0101e0  vmmov mr2, r2
0021f8  1f010002  addli r2, zero, 256
0021fc  6a200b34  vor.u.mh vr0{mr2}, r22, vr0
002200  7e0101e0  vmmov mr2, r2
002204  1f010004  addli r2, zero, 512
002208  6aa00934  vor.u.mh vr0{mr2}, r19, vr0
00220c  7e0101e0  vmmov mr2, r2
002210  1f010008  addli r2, zero, 1024
002214  6a200934  vor.u.mh vr0{mr2}, r18, vr0
002218  7e0101e0  vmmov mr2, r2
00221c  1f010010  addli r2, zero, 2048
002220  6aa00834  vor.u.mh vr0{mr2}, r17, vr0
002224  7e0101e0  vmmov mr2, r2
002228  1bb19100  slli r2, r3, 9
00222c  13010100  seteq r2, r2, zero
002230  6aa00634  vor.u.mh vr0{mr2}, r13, vr0
002234  7e0102e0  vmmov mr2, r4
002238  1bc27101  srli r4, r3, 23
00223c  1b02f20f  andi r4, r4, 255
002240  6aa00534  vor.u.mh vr0{mr2}, r11, vr0
002244  7e8102e0  vmmov mr2, r5
002248  93e53a06  setle.f r11, r21, r3
00224c  ab420000  lui r5, 4
002250  1b72f20f  setlti r4, r4, 255
002254  17112200  or r2, r4, r2
002258  6a200434  vor.u.mh vr0{mr2}, r8, vr0
00225c  13e45107  setle.f r8, r3, r21
002260  7e8102e0  vmmov mr2, r5
002264  ab820000  lui r5, 8
002268  6a200334  vor.u.mh vr0{mr2}, r6, vr0
00226c  7e8102e0  vmmov mr2, r5
002270  e3020fee  loadli.w r5,  -2304(r30)
002274  1702b400  and r4, r8, r11
002278  6aa00234  vor.u.mh vr0{mr2}, r5, vr0
00227c  17012200  and r2, r4, r2
002280  3b200100  bneq r2, zero, 8
002284  0f0d3518  div.f.rn r26, r10, r3
002288  8b623a10  add.f.rn r5, r20, r3
00228c  e3088fef  loadli.w r17,  -2112(r30)
002290  1f890a00  addli r18, r21, 0
002294  1f8c0b00  addli r24, r23, 0
002298  1f8b0000  addli r22, r1, 0
00229c  1bb19200  slli r2, r5, 9
0022a0  13e35a06  setle.f r6, r21, r5
0022a4  13e45207  setle.f r8, r5, r21
0022a8  1bc27201  srli r4, r5, 23
0022ac  13010100  seteq r2, r2, zero
0022b0  1b02f20f  andi r4, r4, 255
0022b4  1b72f20f  setlti r4, r4, 255
0022b8  17112200  or r2, r4, r2
0022bc  17026400  and r4, r8, r6
0022c0  17012200  and r2, r4, r2
0022c4  3b200100  bneq r2, zero, 8
0022c8  0f095a18  div.f.rn r18, r20, r5
0022cc  0be35710  add.f.rn r6, r15, r5
0022d0  e30b8fee  loadli.w r23,  -2240(r30)
0022d4  1f8e0a00  addli r28, r21, 0
0022d8  1b319300  slli r2, r6, 9
0022dc  13e46a06  setle.f r8, r21, r6
0022e0  13655307  setle.f r10, r6, r21
0022e4  1b427301  srli r4, r6, 23
0022e8  13010100  seteq r2, r2, zero
0022ec  1b02f20f  andi r4, r4, 255
0022f0  1b72f20f  setlti r4, r4, 255
0022f4  17112200  or r2, r4, r2
0022f8  17028500  and r4, r10, r8
0022fc  17012200  and r2, r4, r2
002300  3b200100  bneq r2, zero, 8
002304  0f8e6718  div.f.rn r28, r15, r6
002308  0b646810  add.f.rn r8, r16, r6
00230c  9f800a00  addli r1, r21, 0
002310  9f870300  addli r15, r7, 0
002314  1b319400  slli r2, r8, 9
002318  13e58a06  setle.f r10, r21, r8
00231c  93655407  setle.f r11, r8, r21
002320  1b427401  srli r4, r8, 23
002324  13010100  seteq r2, r2, zero
002328  1b02f20f  andi r4, r4, 255
00232c  1b72f20f  setlti r4, r4, 255
002330  17112200  or r2, r4, r2
002334  1782a500  and r4, r11, r10
002338  17012200  and r2, r4, r2
00233c  3b200100  bneq r2, zero, 8
002340  8f008818  div.f.rn r1, r16, r8
002344  0b658710  add.f.rn r10, r14, r8
002348  e3467ff1  loadli.w r13,  -1860(r30)
00234c  67041ff0  storeli.w r1, -1984(r30)
002350  9f800a00  addli r1, r21, 0
002354  1b319500  slli r2, r10, 9
002358  93e5aa06  setle.f r11, r21, r10
00235c  13665507  setle.f r12, r10, r21
002360  1b427501  srli r4, r10, 23
002364  13010100  seteq r2, r2, zero
002368  1b02f20f  andi r4, r4, 255
00236c  1b72f20f  setlti r4, r4, 255
002370  17112200  or r2, r4, r2
002374  1702b600  and r4, r12, r11
002378  17012200  and r2, r4, r2
00237c  3b200100  bneq r2, zero, 8
002380  8f00a718  div.f.rn r1, r14, r10
002384  0be7a410  add.f.rn r14, r9, r10
002388  67001ff0  storeli.w r1, -2048(r30)
00238c  9f800a00  addli r1, r21, 0
002390  1b319700  slli r2, r14, 9
002394  93e5ea06  setle.f r11, r21, r14
002398  13665707  setle.f r12, r14, r21
00239c  1b427701  srli r4, r14, 23
0023a0  13010100  seteq r2, r2, zero
0023a4  1b02f20f  andi r4, r4, 255
0023a8  1b72f20f  setlti r4, r4, 255
0023ac  17112200  or r2, r4, r2
0023b0  1702b600  and r4, r12, r11
0023b4  17012200  and r2, r4, r2
0023b8  3b200100  bneq r2, zero, 8
0023bc  8f80e418  div.f.rn r1, r9, r14
0023c0  0be8ec10  add.f.rn r16, r25, r14
0023c4  1b319800  slli r2, r16, 9
0023c8  93e40a07  setle.f r9, r21, r16
0023cc  93655807  setle.f r11, r16, r21
0023d0  1b427801  srli r4, r16, 23
0023d4  13010100  seteq r2, r2, zero
0023d8  1b02f20f  andi r4, r4, 255
0023dc  1b72f20f  setlti r4, r4, 255
0023e0  17112200  or r2, r4, r2
0023e4  17829500  and r4, r11, r9
0023e8  17012200  and r2, r4, r2
0023ec  1f820a00  addli r4, r21, 0
0023f0  3b200100  bneq r2, zero, 8
0023f4  0f820c19  div.f.rn r4, r25, r16
0023f8  8be90711  add.f.rn r19, r15, r16
0023fc  67004fee  storeli.w r4, -2304(r30)
002400  e3058ff3  loadli.w r11,  -1600(r30)
002404  67081fee  storeli.w r1, -2176(r30)
002408  9f800a00  addli r1, r21, 0
00240c  1bb19900  slli r2, r19, 9
002410  93e33a07  setle.f r7, r21, r19
002414  93e45907  setle.f r9, r19, r21
002418  1bc27901  srli r4, r19, 23
00241c  13010100  seteq r2, r2, zero
002420  1b02f20f  andi r4, r4, 255
002424  1b72f20f  setlti r4, r4, 255
002428  17112200  or r2, r4, r2
00242c  17827400  and r4, r9, r7
002430  17012200  and r2, r4, r2
002434  3b200100  bneq r2, zero, 8
002438  8f803719  div.f.rn r1, r15, r19
00243c  0bea3511  add.f.rn r20, r11, r19
002440  670c1fec  storeli.w r1, -2368(r30)
002444  e3048ff4  loadli.w r9,  -1472(r30)
002448  9b309a00  slli r1, r20, 9
00244c  13e24a07  setle.f r4, r21, r20
002450  93635a07  setle.f r7, r20, r21
002454  1b417a01  srli r2, r20, 23
002458  93800000  seteq r1, r1, zero
00245c  1b01f10f  andi r2, r2, 255
002460  1b71f10f  setlti r2, r2, 255
002464  97101100  or r1, r2, r1
002468  17814300  and r2, r7, r4
00246c  97001100  and r1, r2, r1
002470  1f810a00  addli r2, r21, 0
002474  3ba00000  bneq r1, zero, 8
002478  0f814519  div.f.rn r2, r11, r20
00247c  8bec4b11  add.f.rn r25, r23, r20
002480  670c2ff2  storeli.w r2, -1600(r30)
002484  9bb09c00  slli r1, r25, 9
002488  13e29a07  setle.f r4, r21, r25
00248c  93e35c07  setle.f r7, r25, r21
002490  1bc17c01  srli r2, r25, 23
002494  93800000  seteq r1, r1, zero
002498  1b01f10f  andi r2, r2, 255
00249c  1b71f10f  setlti r2, r2, 255
0024a0  97101100  or r1, r2, r1
0024a4  17814300  and r2, r7, r4
0024a8  97001100  and r1, r2, r1
0024ac  1f810a00  addli r2, r21, 0
0024b0  3ba00000  bneq r1, zero, 8
0024b4  0f819b19  div.f.rn r2, r23, r25
0024b8  8beb9411  add.f.rn r23, r9, r25
0024bc  67042fee  storeli.w r2, -2240(r30)
0024c0  9bb09b00  slli r1, r23, 9
0024c4  13e27a07  setle.f r4, r21, r23
0024c8  93e35b07  setle.f r7, r23, r21
0024cc  1bc17b01  srli r2, r23, 23
0024d0  93800000  seteq r1, r1, zero
0024d4  1b01f10f  andi r2, r2, 255
0024d8  1b71f10f  setlti r2, r2, 255
0024dc  97101100  or r1, r2, r1
0024e0  17814300  and r2, r7, r4
0024e4  97001100  and r1, r2, r1
0024e8  1f810a00  addli r2, r21, 0
0024ec  3ba00000  bneq r1, zero, 8
0024f0  0f817419  div.f.rn r2, r9, r23
0024f4  0b667b11  add.f.rn r12, r22, r23
0024f8  67082fec  storeli.w r2, -2432(r30)
0024fc  9b309600  slli r1, r12, 9
002500  13e2ca06  setle.f r4, r21, r12
002504  93635607  setle.f r7, r12, r21
002508  1b417601  srli r2, r12, 23
00250c  93800000  seteq r1, r1, zero
002510  1b01f10f  andi r2, r2, 255
002514  1b71f10f  setlti r2, r2, 255
002518  97101100  or r1, r2, r1
00251c  17814300  and r2, r7, r4
002520  97001100  and r1, r2, r1
002524  1f810a00  addli r2, r21, 0
002528  3ba00000  bneq r1, zero, 8
00252c  0f01cb18  div.f.rn r2, r22, r12
002530  0be2c610  add.f.rn r4, r13, r12
002534  e7472fec  storeli.w r2, -2436(r30)
002538  9b309200  slli r1, r4, 9
00253c  93e44a06  setle.f r9, r21, r4
002540  93655207  setle.f r11, r4, r21
002544  1b417201  srli r2, r4, 23
002548  93800000  seteq r1, r1, zero
00254c  1b01f10f  andi r2, r2, 255
002550  1b71f10f  setlti r2, r2, 255
002554  97101100  or r1, r2, r1
002558  17819500  and r2, r11, r9
00255c  17011100  and r2, r2, r1
002560  9f800a00  addli r1, r21, 0
002564  3b200100  bneq r2, zero, 8
002568  8f804618  div.f.rn r1, r13, r4
00256c  0be14810  add.f.rn r2, r17, r4
002570  12358002  vadd.s.mz vr10{mr1}, zero, vr8
002574  9f830a00  addli r7, r21, 0
002578  9b349100  slli r9, r2, 9
00257c  93e62a06  setle.f r13, r21, r2
002580  93675107  setle.f r15, r2, r21
002584  9b457101  srli r11, r2, 23
002588  93840400  seteq r9, r9, zero
00258c  9b85f50f  andi r11, r11, 255
002590  9bf5f50f  setlti r11, r11, 255
002594  97949500  or r9, r11, r9
002598  9785d700  and r11, r15, r13
00259c  97859500  and r11, r11, r9
0025a0  3ba00500  bneq r11, zero, 8
0025a4  8f832818  div.f.rn r7, r17, r2
0025a8  8b652c10  add.f.rn r11, r24, r2
0025ac  12347002  vadd.s.mz vr8{mr1}, zero, vr7
0025b0  670c7fee  storeli.w r7, -2112(r30)
0025b4  e74b1ff0  storeli.w r1, -1860(r30)
0025b8  6704aff4  storeli.w r10, -1472(r30)
0025bc  9bb69500  slli r13, r11, 9
0025c0  93e8ba06  setle.f r17, r21, r11
0025c4  13eb5507  setle.f r22, r11, r21
0025c8  9bc77501  srli r15, r11, 23
0025cc  93860600  seteq r13, r13, zero
0025d0  9b87f70f  andi r15, r15, 255
0025d4  9bf7f70f  setlti r15, r15, 255
0025d8  9796d700  or r13, r15, r13
0025dc  97071b01  and r15, r22, r17
0025e0  9786d700  and r13, r15, r13
0025e4  3ba00600  bneq r13, zero, 8
0025e8  8f0abc18  div.f.rn r21, r24, r11
0025ec  9f000ff5  addli r1, r30, -1408
0025f0  e306afea  loadli.w r13,  -2736(r30)
0025f4  e3048ff0  loadli.w r9,  -1984(r30)
0025f8  63050ff0  loadli.w r10,  -2048(r30)
0025fc  9f030900  addli r7, r18, 0
002600  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
002604  9f000ff3  addli r1, r30, -1664
002608  73e0b600  stores.w r11, 0(r13)
00260c  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002610  9e136102  vsub.f.mz.rn vr7{mr1}, vr2, vr6
002614  0e91b302  vmul.f.mz.rn vr2{mr1}, vr7, vr11
002618  8e937302  vmul.f.mz.rn vr7{mr1}, vr7, vr7
00261c  16112302  vadd.f.mz.rn vr2{mr1}, vr6, vr2
002620  8e93a302  vmul.f.mz.rn vr7{mr1}, vr7, vr10
002624  9e922202  vsub.f.mz.rn vr5{mr1}, vr5, vr2
002628  8e93b302  vmul.f.mz.rn vr7{mr1}, vr7, vr11
00262c  0e935102  vmul.f.mz.rn vr6{mr1}, vr3, vr5
002630  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002634  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
002638  8e925202  vmul.f.mz.rn vr5{mr1}, vr5, vr5
00263c  9f008ff5  addli r1, r30, -1344
002640  16116102  vadd.f.mz.rn vr2{mr1}, vr2, vr6
002644  8e925302  vmul.f.mz.rn vr5{mr1}, vr7, vr5
002648  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
00264c  9f008ff2  addli r1, r30, -1728
002650  1e132402  vsub.f.mz.rn vr6{mr1}, vr8, vr2
002654  8e915102  vmul.f.mz.rn vr3{mr1}, vr3, vr5
002658  0e146002  vmul.f.mz.rn vr8{mr1}, vr0, vr6
00265c  16924302  vadd.f.mz.rn vr4{mr1}, vr7, vr4
002660  8e126302  vmul.f.mz.rn vr5{mr1}, vr6, vr6
002664  16118102  vadd.f.mz.rn vr2{mr1}, vr2, vr8
002668  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
00266c  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
002670  8e905002  vmul.f.mz.rn vr1{mr1}, vr1, vr5
002674  9f000e00  addli r1, r28, 0
002678  fa150140  vextracti.f r11, 0(vr2)
00267c  fa161140  vextracti.f r13, 1(vr2)
002680  0e101002  vmul.f.mz.rn vr0{mr1}, vr0, vr1
002684  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
002688  0bebb618  sub.f.rn r22, r13, r11
00268c  16900102  vadd.f.mz.rn vr0{mr1}, vr3, vr0
002690  8b666d21  mul.f.rn r13, r26, r22
002694  0b6b6b21  mul.f.rn r22, r22, r22
002698  8be5d510  add.f.rn r11, r11, r13
00269c  fa162140  vextracti.f r13, 2(vr2)
0026a0  0beb6d21  mul.f.rn r22, r27, r22
0026a4  fa1d0040  vextracti.f r27, 0(vr0)
0026a8  8be6b618  sub.f.rn r13, r13, r11
0026ac  8b67d920  mul.f.rn r15, r18, r13
0026b0  1f090d00  addli r18, r26, 0
0026b4  8be6d620  mul.f.rn r13, r13, r13
0026b8  0b6b6921  mul.f.rn r22, r18, r22
0026bc  63090fef  loadli.w r18,  -2176(r30)
0026c0  8be5f510  add.f.rn r11, r11, r15
0026c4  fa173140  vextracti.f r15, 3(vr2)
0026c8  8be1d120  mul.f.rn r3, r3, r13
0026cc  fa162040  vextracti.f r13, 2(vr0)
0026d0  8be7b718  sub.f.rn r15, r15, r11
0026d4  8be13320  mul.f.rn r3, r7, r3
0026d8  e3030fee  loadli.w r7,  -2304(r30)
0026dc  8b68fe20  mul.f.rn r17, r28, r15
0026e0  7a1e1040  vextracti.f r28, 1(vr0)
0026e4  8be7f720  mul.f.rn r15, r15, r15
0026e8  8be81511  add.f.rn r17, r11, r17
0026ec  fa154140  vextracti.f r11, 4(vr2)
0026f0  8be2f220  mul.f.rn r5, r5, r15
0026f4  fa173040  vextracti.f r15, 3(vr0)
0026f8  8be51519  sub.f.rn r11, r11, r17
0026fc  8be25020  mul.f.rn r5, r1, r5
002700  e3008ff4  loadli.w r1,  -1472(r30)
002704  0becb420  mul.f.rn r24, r9, r11
002708  8be5b520  mul.f.rn r11, r11, r11
00270c  0bec8811  add.f.rn r24, r17, r24
002710  fa185140  vextracti.f r17, 5(vr2)
002714  8be88819  sub.f.rn r17, r17, r24
002718  0b6d1521  mul.f.rn r26, r10, r17
00271c  0b6cac11  add.f.rn r24, r24, r26
002720  0bedcd11  add.f.rn r26, r27, r28
002724  fa1d6140  vextracti.f r27, 6(vr2)
002728  8bed8d19  sub.f.rn r27, r27, r24
00272c  0b6b6d11  add.f.rn r22, r26, r22
002730  0b6db921  mul.f.rn r26, r18, r27
002734  8be66611  add.f.rn r13, r13, r22
002738  0b6bac11  add.f.rn r22, r24, r26
00273c  7a1c7140  vextracti.f r24, 7(vr2)
002740  8be13610  add.f.rn r3, r13, r3
002744  8b666c19  sub.f.rn r13, r24, r22
002748  8be13710  add.f.rn r3, r15, r3
00274c  8be7d320  mul.f.rn r15, r7, r13
002750  8be15110  add.f.rn r3, r3, r5
002754  8b62b320  mul.f.rn r5, r6, r11
002758  fa154040  vextracti.f r11, 4(vr0)
00275c  0b63fb10  add.f.rn r6, r22, r15
002760  fa178140  vextracti.f r15, 8(vr2)
002764  8be13510  add.f.rn r3, r11, r3
002768  8be25420  mul.f.rn r5, r9, r5
00276c  e3048fed  loadli.w r9,  -2368(r30)
002770  8be56718  sub.f.rn r11, r15, r6
002774  8be71821  mul.f.rn r15, r17, r17
002778  8be15110  add.f.rn r3, r3, r5
00277c  8be2b420  mul.f.rn r5, r9, r11
002780  0b64f420  mul.f.rn r8, r8, r15
002784  fa175040  vextracti.f r15, 5(vr0)
002788  8be13710  add.f.rn r3, r15, r3
00278c  fa179140  vextracti.f r15, 9(vr2)
002790  8b625310  add.f.rn r5, r6, r5
002794  0b638520  mul.f.rn r6, r10, r8
002798  0be4bd21  mul.f.rn r8, r27, r27
00279c  8be75718  sub.f.rn r15, r15, r5
0027a0  8be16110  add.f.rn r3, r3, r6
0027a4  0be38020  mul.f.rn r6, r1, r8
0027a8  e3008ff3  loadli.w r1,  -1600(r30)
0027ac  7a146040  vextracti.f r8, 6(vr0)
0027b0  0be5f020  mul.f.rn r10, r1, r15
0027b4  8b613410  add.f.rn r3, r8, r3
0027b8  0b636920  mul.f.rn r6, r18, r6
0027bc  0be4d620  mul.f.rn r8, r13, r13
0027c0  fa169040  vextracti.f r13, 9(vr0)
0027c4  8be2a210  add.f.rn r5, r5, r10
0027c8  7a15a140  vextracti.f r10, 10(vr2)
0027cc  8be16110  add.f.rn r3, r3, r6
0027d0  0b638720  mul.f.rn r6, r14, r8
0027d4  7a147040  vextracti.f r8, 7(vr0)
0027d8  0b655518  sub.f.rn r10, r10, r5
0027dc  0be36320  mul.f.rn r6, r7, r6
0027e0  e3038fee  loadli.w r7,  -2240(r30)
0027e4  8b613410  add.f.rn r3, r8, r3
0027e8  0be4b520  mul.f.rn r8, r11, r11
0027ec  8be5a320  mul.f.rn r11, r7, r10
0027f0  8be16110  add.f.rn r3, r3, r6
0027f4  0b638820  mul.f.rn r6, r16, r8
0027f8  7a148040  vextracti.f r8, 8(vr0)
0027fc  8be2b210  add.f.rn r5, r5, r11
002800  fa15b140  vextracti.f r11, 11(vr2)
002804  8b613410  add.f.rn r3, r8, r3
002808  0be36420  mul.f.rn r6, r9, r6
00280c  0be4f720  mul.f.rn r8, r15, r15
002810  e3040fed  loadli.w r9,  -2432(r30)
002814  8be55518  sub.f.rn r11, r11, r5
002818  8be16110  add.f.rn r3, r3, r6
00281c  0be38920  mul.f.rn r6, r19, r8
002820  0be4b420  mul.f.rn r8, r9, r11
002824  0be36020  mul.f.rn r6, r1, r6
002828  8be13610  add.f.rn r3, r13, r3
00282c  e340ffec  loadli.w r1,  -2436(r30)
002830  8be5b520  mul.f.rn r11, r11, r11
002834  8be28210  add.f.rn r5, r5, r8
002838  0b64a520  mul.f.rn r8, r10, r10
00283c  7a15c140  vextracti.f r10, 12(vr2)
002840  8be16110  add.f.rn r3, r3, r6
002844  0b635518  sub.f.rn r6, r10, r5
002848  0b648a20  mul.f.rn r8, r20, r8
00284c  7a15a040  vextracti.f r10, 10(vr0)
002850  8b613510  add.f.rn r3, r10, r3
002854  0be56020  mul.f.rn r10, r1, r6
002858  0be48320  mul.f.rn r8, r7, r8
00285c  0b636320  mul.f.rn r6, r6, r6
002860  8be2a210  add.f.rn r5, r5, r10
002864  7a15d140  vextracti.f r10, 13(vr2)
002868  8be18110  add.f.rn r3, r3, r8
00286c  0be4bc20  mul.f.rn r8, r25, r11
002870  fa15b040  vextracti.f r11, 11(vr0)
002874  0be36b20  mul.f.rn r6, r23, r6
002878  0b655518  sub.f.rn r10, r10, r5
00287c  0be48420  mul.f.rn r8, r9, r8
002880  e3447ff1  loadli.w r9,  -1860(r30)
002884  8be13510  add.f.rn r3, r11, r3
002888  0be36020  mul.f.rn r6, r1, r6
00288c  8be5a420  mul.f.rn r11, r9, r10
002890  8be18110  add.f.rn r3, r3, r8
002894  7a14c040  vextracti.f r8, 12(vr0)
002898  8b63a520  mul.f.rn r7, r10, r10
00289c  8be2b210  add.f.rn r5, r5, r11
0028a0  fa15e140  vextracti.f r11, 14(vr2)
0028a4  8b613410  add.f.rn r3, r8, r3
0028a8  0be45518  sub.f.rn r8, r11, r5
0028ac  e3058fef  loadli.w r11,  -2112(r30)
0028b0  8be16110  add.f.rn r3, r3, r6
0028b4  0b637620  mul.f.rn r6, r12, r7
0028b8  fa13d040  vextracti.f r7, 13(vr0)
0028bc  0be58520  mul.f.rn r10, r11, r8
0028c0  8be13310  add.f.rn r3, r7, r3
0028c4  8be06420  mul.f.rn r1, r9, r6
0028c8  0b638420  mul.f.rn r6, r8, r8
0028cc  fa13f140  vextracti.f r7, 15(vr2)
0028d0  8be2a210  add.f.rn r5, r5, r10
0028d4  8be01110  add.f.rn r1, r3, r1
0028d8  8b616220  mul.f.rn r3, r4, r6
0028dc  7a13e040  vextracti.f r6, 14(vr0)
0028e0  0be25318  sub.f.rn r4, r7, r5
0028e4  8b601310  add.f.rn r1, r6, r1
0028e8  8be13520  mul.f.rn r3, r11, r3
0028ec  0b634220  mul.f.rn r6, r4, r4
0028f0  8be03010  add.f.rn r1, r1, r3
0028f4  fa11f040  vextracti.f r3, 15(vr0)
0028f8  0be24a20  mul.f.rn r4, r21, r4
0028fc  0b616120  mul.f.rn r2, r2, r6
002900  8be01110  add.f.rn r1, r3, r1
002904  8be14210  add.f.rn r3, r5, r4
002908  0be12a20  mul.f.rn r2, r21, r2
00290c  8be02010  add.f.rn r1, r1, r2
002910  6301bfea  loadli.w r2,  -2728(r30)
002914  73603100  stores.w r3, 0(r2)
002918  6341afea  loadli.w r2,  -2732(r30)
00291c  73601100  stores.w r1, 0(r2)
002920  00a00300  mfence { lm, sm, gm }
002924  e340dfea  loadli.w r1,  -2708(r30)
002928  80a10004  csr_set csr3, r1
00292c  00d00100  sync_group
002930  63419fea  loadli.w r2,  -2740(r30)
002934  bb2b0100  bneq r2, zero, 744
002938  e30c7fea  loadli.w r25,  -2760(r30)
00293c  9f000000  addli r1, zero, 0
002940  6fc20c00  loads.w r4, 0(r25)
002944  efc14c00  loads.w r3, 4(r25)
002948  0b613210  add.f.rn r2, r4, r3
00294c  9b329100  slli r5, r2, 9
002950  93e32006  setle.f r7, r1, r2
002954  13641106  setle.f r8, r2, r1
002958  1b437101  srli r6, r2, 23
00295c  93821200  seteq r5, r5, r1
002960  1b03f30f  andi r6, r6, 255
002964  1b73f30f  setlti r6, r6, 255
002968  97125300  or r5, r6, r5
00296c  17037400  and r6, r8, r7
002970  97025300  and r5, r6, r5
002974  1f830000  addli r6, r1, 0
002978  3ba00200  bneq r5, zero, 8
00297c  0f832118  div.f.rn r6, r3, r2
002980  efc28c00  loads.w r5, 8(r25)
002984  8b615110  add.f.rn r3, r2, r5
002988  9bb39100  slli r7, r3, 9
00298c  93e43006  setle.f r9, r1, r3
002990  13e51106  setle.f r10, r3, r1
002994  1bc47101  srli r8, r3, 23
002998  93831300  seteq r7, r7, r1
00299c  1b04f40f  andi r8, r8, 255
0029a0  1b74f40f  setlti r8, r8, 255
0029a4  97137400  or r7, r8, r7
0029a8  17049500  and r8, r10, r9
0029ac  97037400  and r7, r8, r7
0029b0  1f840000  addli r8, r1, 0
0029b4  3ba00300  bneq r7, zero, 8
0029b8  0f843218  div.f.rn r8, r5, r3
0029bc  efc3cc00  loads.w r7, 12(r25)
0029c0  8be27110  add.f.rn r5, r3, r7
0029c4  9bb49200  slli r9, r5, 9
0029c8  93e55006  setle.f r11, r1, r5
0029cc  13e61206  setle.f r12, r5, r1
0029d0  1bc57201  srli r10, r5, 23
0029d4  93841400  seteq r9, r9, r1
0029d8  1b05f50f  andi r10, r10, 255
0029dc  1b75f50f  setlti r10, r10, 255
0029e0  97149500  or r9, r10, r9
0029e4  1705b600  and r10, r12, r11
0029e8  97049500  and r9, r10, r9
0029ec  1f850000  addli r10, r1, 0
0029f0  3ba00400  bneq r9, zero, 8
0029f4  0f855318  div.f.rn r10, r7, r5
0029f8  efc40c01  loads.w r9, 16(r25)
0029fc  8be39210  add.f.rn r7, r5, r9
002a00  9bb59300  slli r11, r7, 9
002a04  93e67006  setle.f r13, r1, r7
002a08  13e71306  setle.f r14, r7, r1
002a0c  1bc67301  srli r12, r7, 23
002a10  93851500  seteq r11, r11, r1
002a14  1b06f60f  andi r12, r12, 255
002a18  1b76f60f  setlti r12, r12, 255
002a1c  9715b600  or r11, r12, r11
002a20  1706d700  and r12, r14, r13
002a24  9705b600  and r11, r12, r11
002a28  1f860000  addli r12, r1, 0
002a2c  3ba00500  bneq r11, zero, 8
002a30  0f867418  div.f.rn r12, r9, r7
002a34  efc54c01  loads.w r11, 20(r25)
002a38  8be4b310  add.f.rn r9, r7, r11
002a3c  9bb69400  slli r13, r9, 9
002a40  93e79006  setle.f r15, r1, r9
002a44  13e81406  setle.f r16, r9, r1
002a48  1bc77401  srli r14, r9, 23
002a4c  93861600  seteq r13, r13, r1
002a50  1b07f70f  andi r14, r14, 255
002a54  1b77f70f  setlti r14, r14, 255
002a58  9716d700  or r13, r14, r13
002a5c  1707f800  and r14, r16, r15
002a60  1707d700  and r14, r14, r13
002a64  9f860000  addli r13, r1, 0
002a68  3b200700  bneq r14, zero, 8
002a6c  8f869518  div.f.rn r13, r11, r9
002a70  6fc78c01  loads.w r14, 24(r25)
002a74  8be5e410  add.f.rn r11, r9, r14
002a78  9bb79500  slli r15, r11, 9
002a7c  93e8b006  setle.f r17, r1, r11
002a80  13e91506  setle.f r18, r11, r1
002a84  1bc87501  srli r16, r11, 23
002a88  93871700  seteq r15, r15, r1
002a8c  1b08f80f  andi r16, r16, 255
002a90  1b78f80f  setlti r16, r16, 255
002a94  9717f800  or r15, r16, r15
002a98  17081901  and r16, r18, r17
002a9c  1708f800  and r16, r16, r15
002aa0  9f870000  addli r15, r1, 0
002aa4  3b200800  bneq r16, zero, 8
002aa8  8f07b718  div.f.rn r15, r14, r11
002aac  6fc8cc01  loads.w r16, 28(r25)
002ab0  0be70511  add.f.rn r14, r11, r16
002ab4  9b389700  slli r17, r14, 9
002ab8  93e9e006  setle.f r19, r1, r14
002abc  136a1706  setle.f r20, r14, r1
002ac0  1b497701  srli r18, r14, 23
002ac4  93881800  seteq r17, r17, r1
002ac8  1b09f90f  andi r18, r18, 255
002acc  1b79f90f  setlti r18, r18, 255
002ad0  97181901  or r17, r18, r17
002ad4  17093a01  and r18, r20, r19
002ad8  97081901  and r17, r18, r17
002adc  3ba00800  bneq r17, zero, 8
002ae0  8f00e818  div.f.rn r1, r16, r14
002ae4  e30bdfea  loadli.w r23,  -2712(r30)
002ae8  634ccfea  loadli.w r24,  -2716(r30)
002aec  73e0ec00  stores.w r14, 0(r25)
002af0  6fc80b00  loads.w r16, 0(r23)
002af4  efc84b00  loads.w r17, 4(r23)
002af8  efc98b00  loads.w r19, 8(r23)
002afc  6fcacb00  loads.w r20, 12(r23)
002b00  ef4a0c00  loads.w r21, 0(r24)
002b04  6f4b4c00  loads.w r22, 4(r24)
002b08  8be80819  sub.f.rn r17, r17, r16
002b0c  0be96820  mul.f.rn r18, r17, r6
002b10  8be81821  mul.f.rn r17, r17, r17
002b14  0b682811  add.f.rn r16, r16, r18
002b18  0be24820  mul.f.rn r4, r17, r4
002b1c  0be90919  sub.f.rn r18, r19, r16
002b20  0b626220  mul.f.rn r4, r4, r6
002b24  8b692421  mul.f.rn r19, r8, r18
002b28  0b692921  mul.f.rn r18, r18, r18
002b2c  0b683811  add.f.rn r16, r16, r19
002b30  efc90b01  loads.w r19, 16(r23)
002b34  0b612121  mul.f.rn r2, r2, r18
002b38  8b680a19  sub.f.rn r17, r20, r16
002b3c  0bea6a11  add.f.rn r20, r21, r22
002b40  ef4a8c00  loads.w r21, 8(r24)
002b44  0b612420  mul.f.rn r2, r8, r2
002b48  0b631521  mul.f.rn r6, r10, r17
002b4c  0b624a10  add.f.rn r4, r20, r4
002b50  0be41821  mul.f.rn r8, r17, r17
002b54  0b636810  add.f.rn r6, r16, r6
002b58  0be24a10  add.f.rn r4, r21, r4
002b5c  6f48cc00  loads.w r16, 12(r24)
002b60  8be18120  mul.f.rn r3, r3, r8
002b64  0be96918  sub.f.rn r18, r19, r6
002b68  efc94b01  loads.w r19, 20(r23)
002b6c  0b612210  add.f.rn r2, r4, r2
002b70  8b613520  mul.f.rn r3, r10, r3
002b74  8b682621  mul.f.rn r17, r12, r18
002b78  0b612810  add.f.rn r2, r16, r2
002b7c  0b642921  mul.f.rn r8, r18, r18
002b80  0b621311  add.f.rn r4, r6, r17
002b84  6f430c01  loads.w r6, 16(r24)
002b88  0b613110  add.f.rn r2, r2, r3
002b8c  8be18220  mul.f.rn r3, r5, r8
002b90  6fc48b01  loads.w r8, 24(r23)
002b94  0be54918  sub.f.rn r10, r19, r4
002b98  8b613620  mul.f.rn r3, r12, r3
002b9c  0b612310  add.f.rn r2, r6, r2
002ba0  8be2a620  mul.f.rn r5, r13, r10
002ba4  0b63a520  mul.f.rn r6, r10, r10
002ba8  0b613110  add.f.rn r2, r2, r3
002bac  0b625210  add.f.rn r4, r4, r5
002bb0  ef424c01  loads.w r5, 20(r24)
002bb4  0be36320  mul.f.rn r6, r7, r6
002bb8  efc3cb01  loads.w r7, 28(r23)
002bbc  8b614418  sub.f.rn r3, r8, r4
002bc0  0be36620  mul.f.rn r6, r13, r6
002bc4  6f448c01  loads.w r8, 24(r24)
002bc8  0be12210  add.f.rn r2, r5, r2
002bcc  8be23720  mul.f.rn r5, r15, r3
002bd0  8be13120  mul.f.rn r3, r3, r3
002bd4  0b616110  add.f.rn r2, r2, r6
002bd8  6f43cc01  loads.w r6, 28(r24)
002bdc  0b625210  add.f.rn r4, r4, r5
002be0  8be13420  mul.f.rn r3, r9, r3
002be4  0b612410  add.f.rn r2, r8, r2
002be8  8be24318  sub.f.rn r5, r7, r4
002bec  8be13720  mul.f.rn r3, r15, r3
002bf0  8be35220  mul.f.rn r7, r5, r5
002bf4  0b613110  add.f.rn r2, r2, r3
002bf8  8be25020  mul.f.rn r5, r1, r5
002bfc  8be17520  mul.f.rn r3, r11, r7
002c00  0b612310  add.f.rn r2, r6, r2
002c04  8be03020  mul.f.rn r1, r1, r3
002c08  8b615210  add.f.rn r3, r4, r5
002c0c  8b601110  add.f.rn r1, r2, r1
002c10  73e03b00  stores.w r3, 0(r23)
002c14  73601c00  stores.w r1, 0(r24)
002c18  e340dfea  loadli.w r1,  -2708(r30)
002c1c  00a00300  mfence { lm, sm, gm }
002c20  80a10004  csr_set csr3, r1
002c24  00d00100  sync_group
002c28  e340cfea  loadli.w r1,  -2716(r30)
002c2c  2b01003a  lui r2, 237568
002c30  ab01803f  lui r3, 260096
002c34  63051fec  loadli.w r10,  -2552(r30)
002c38  efc00000  loads.w r1, 0(r1)
002c3c  8be02020  mul.f.rn r1, r1, r2
002c40  63417fea  loadli.w r2,  -2756(r30)
002c44  8be02010  add.f.rn r1, r1, r2
002c48  6301dfea  loadli.w r2,  -2712(r30)
002c4c  6f410100  loads.w r2, 0(r2)
002c50  00a00000  mfence { lm }
002c54  8f800008  sqrt.f.rn r1, r1
002c58  0f831118  div.f.rn r6, r3, r1
002c5c  9f010000  addli r3, zero, 0
002c60  0b610158  neg.f r2, r2
002c64  8b133510  add.s r7, r10, r3
002c68  9f000ff8  addli r1, r30, -1024
002c6c  ebb2c3fe  load.hu r5, -20(r7)
002c70  0b923010  add.s r4, r1, r3
002c74  9f000ffc  addli r1, r30, -512
002c78  ebb423fc  load.hu r9, -62(r7)
002c7c  6bb543fc  load.hu r10, -60(r7)
002c80  ebb563fc  load.hu r11, -58(r7)
002c84  6bb683fc  load.hu r12, -56(r7)
002c88  ebb6a3fc  load.hu r13, -54(r7)
002c8c  ebb7c3fc  load.hu r15, -52(r7)
002c90  6bb7e3fc  load.hu r14, -50(r7)
002c94  6bb803fd  load.hu r16, -48(r7)
002c98  ebb823fd  load.hu r17, -46(r7)
002c9c  6bb943fd  load.hu r18, -44(r7)
002ca0  ebb963fd  load.hu r19, -42(r7)
002ca4  6bba83fd  load.hu r20, -40(r7)
002ca8  ebbaa3fd  load.hu r21, -38(r7)
002cac  6bbbc3fd  load.hu r22, -36(r7)
002cb0  ebbde3fd  load.hu r27, -34(r7)
002cb4  6bbe03fe  load.hu r28, -32(r7)
002cb8  6bbd23fe  load.hu r26, -30(r7)
002cbc  ebbc43fe  load.hu r25, -28(r7)
002cc0  6bbc63fe  load.hu r24, -26(r7)
002cc4  ebbb83fe  load.hu r23, -24(r7)
002cc8  8b903010  add.s r1, r1, r3
002ccc  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
002cd0  06330000  vfp162float_l.rn vr6, vr0
002cd4  86730000  vfp162float_h.rn vr7, vr0
002cd8  9f810101  addli r3, r3, 128
002cdc  e7025fec  storeli.w r5, -2520(r30)
002ce0  ebb2e3fe  load.hu r5, -18(r7)
002ce4  6bb40000  load.hu r8, 0(r1)
002ce8  ebb0a3fe  load.hu r1, -22(r7)
002cec  e7425fec  storeli.w r5, -2516(r30)
002cf0  ebb203ff  load.hu r5, -16(r7)
002cf4  33140420  hfloat2float.rn r8, r8
002cf8  b3900020  hfloat2float.rn r1, r1
002cfc  67035fec  storeli.w r5, -2512(r30)
002d00  ebb223ff  load.hu r5, -14(r7)
002d04  67435fec  storeli.w r5, -2508(r30)
002d08  ebb243ff  load.hu r5, -12(r7)
002d0c  e7035fec  storeli.w r5, -2504(r30)
002d10  ebb263ff  load.hu r5, -10(r7)
002d14  e7435fec  storeli.w r5, -2500(r30)
002d18  ebb283ff  load.hu r5, -8(r7)
002d1c  67045fec  storeli.w r5, -2496(r30)
002d20  ebb2a3ff  load.hu r5, -6(r7)
002d24  67445fec  storeli.w r5, -2492(r30)
002d28  ebb2c3ff  load.hu r5, -4(r7)
002d2c  e7045fec  storeli.w r5, -2488(r30)
002d30  ebb2e3ff  load.hu r5, -2(r7)
002d34  67055fec  storeli.w r5, -2480(r30)
002d38  ebb20300  load.hu r5, 0(r7)
002d3c  e7445fec  storeli.w r5, -2484(r30)
002d40  ebb22300  load.hu r5, 2(r7)
002d44  67455fec  storeli.w r5, -2476(r30)
002d48  ebb24300  load.hu r5, 4(r7)
002d4c  e7055fec  storeli.w r5, -2472(r30)
002d50  ebb26300  load.hu r5, 6(r7)
002d54  e7455fec  storeli.w r5, -2468(r30)
002d58  ebb28300  load.hu r5, 8(r7)
002d5c  67065fec  storeli.w r5, -2464(r30)
002d60  ebb2a300  load.hu r5, 10(r7)
002d64  67465fec  storeli.w r5, -2460(r30)
002d68  ebb2c300  load.hu r5, 12(r7)
002d6c  e7065fec  storeli.w r5, -2456(r30)
002d70  ebb2e300  load.hu r5, 14(r7)
002d74  e7465fec  storeli.w r5, -2452(r30)
002d78  ebb20301  load.hu r5, 16(r7)
002d7c  67075fec  storeli.w r5, -2448(r30)
002d80  ebb22301  load.hu r5, 18(r7)
002d84  67475fec  storeli.w r5, -2444(r30)
002d88  ebb24301  load.hu r5, 20(r7)
002d8c  e7075fec  storeli.w r5, -2440(r30)
002d90  ebb26301  load.hu r5, 22(r7)
002d94  e7475fec  storeli.w r5, -2436(r30)
002d98  ebb28301  load.hu r5, 24(r7)
002d9c  67085fec  storeli.w r5, -2432(r30)
002da0  ebb2a301  load.hu r5, 26(r7)
002da4  670c5fec  storeli.w r5, -2368(r30)
002da8  ebb2c301  load.hu r5, 28(r7)
002dac  67005fee  storeli.w r5, -2304(r30)
002db0  ebb2e301  load.hu r5, 30(r7)
002db4  67085fee  storeli.w r5, -2176(r30)
002db8  ebb20302  load.hu r5, 32(r7)
002dbc  67045fee  storeli.w r5, -2240(r30)
002dc0  ebb22302  load.hu r5, 34(r7)
002dc4  670c5fee  storeli.w r5, -2112(r30)
002dc8  ebb24302  load.hu r5, 36(r7)
002dcc  67005ff0  storeli.w r5, -2048(r30)
002dd0  ebb26302  load.hu r5, 38(r7)
002dd4  67045ff0  storeli.w r5, -1984(r30)
002dd8  ebb28302  load.hu r5, 40(r7)
002ddc  e74b5ff0  storeli.w r5, -1860(r30)
002de0  ebb2a302  load.hu r5, 42(r7)
002de4  670c5ff0  storeli.w r5, -1856(r30)
002de8  ebb2c302  load.hu r5, 44(r7)
002dec  67005ff2  storeli.w r5, -1792(r30)
002df0  ebb2e302  load.hu r5, 46(r7)
002df4  67045ff2  storeli.w r5, -1728(r30)
002df8  ebb20303  load.hu r5, 48(r7)
002dfc  67085ff2  storeli.w r5, -1664(r30)
002e00  ebb22303  load.hu r5, 50(r7)
002e04  670c5ff2  storeli.w r5, -1600(r30)
002e08  ebb24303  load.hu r5, 52(r7)
002e0c  67005ff4  storeli.w r5, -1536(r30)
002e10  ebb26303  load.hu r5, 54(r7)
002e14  67045ff4  storeli.w r5, -1472(r30)
002e18  ebb28303  load.hu r5, 56(r7)
002e1c  67085ff4  storeli.w r5, -1408(r30)
002e20  ebb2a303  load.hu r5, 58(r7)
002e24  670c5ff4  storeli.w r5, -1344(r30)
002e28  ebb2c303  load.hu r5, 60(r7)
002e2c  ebb3e303  load.hu r7, 62(r7)
002e30  67005ff6  storeli.w r5, -1280(r30)
002e34  9f020ff7  addli r5, r30, -1152
002e38  67047ff6  storeli.w r7, -1216(r30)
002e3c  b3930420  hfloat2float.rn r7, r9
002e40  c2108202  vload_mask16.mz vr1{mr1}, 64(r4)
002e44  c2920202  vload_mask16.mz vr5{mr1}, 0(r5)
002e48  9f120000  addli r5, zero, 1
002e4c  7e8002e0  vmmov mr0, r5
002e50  9f220000  addli r5, zero, 2
002e54  7e8102e0  vmmov mr2, r5
002e58  9f420000  addli r5, zero, 4
002e5c  12315002  vadd.s.mz vr2{mr1}, zero, vr5
002e60  92315002  vadd.s.mz vr3{mr1}, zero, vr5
002e64  12325002  vadd.s.mz vr4{mr1}, zero, vr5
002e68  6a212430  vor.u.mh vr2{mr0}, r8, vr2
002e6c  7e8002e0  vmmov mr0, r5
002e70  9f021000  addli r5, zero, 8
002e74  33140e20  hfloat2float.rn r8, r28
002e78  fe8102e0  vmmov mr3, r5
002e7c  9f022000  addli r5, zero, 16
002e80  6aa12334  vor.u.mh vr2{mr2}, r7, vr2
002e84  b3130520  hfloat2float.rn r7, r10
002e88  63051fec  loadli.w r10,  -2552(r30)
002e8c  6aa12330  vor.u.mh vr2{mr0}, r7, vr2
002e90  b3930520  hfloat2float.rn r7, r11
002e94  6aa12336  vor.u.mh vr2{mr3}, r7, vr2
002e98  b3130620  hfloat2float.rn r7, r12
002e9c  fe8102e0  vmmov mr3, r5
002ea0  9f024000  addli r5, zero, 32
002ea4  6aa12336  vor.u.mh vr2{mr3}, r7, vr2
002ea8  b3930620  hfloat2float.rn r7, r13
002eac  fe8102e0  vmmov mr3, r5
002eb0  9f028000  addli r5, zero, 64
002eb4  6aa12336  vor.u.mh vr2{mr3}, r7, vr2
002eb8  b3930720  hfloat2float.rn r7, r15
002ebc  fe8102e0  vmmov mr3, r5
002ec0  9f020001  addli r5, zero, 128
002ec4  6aa12336  vor.u.mh vr2{mr3}, r7, vr2
002ec8  b3130720  hfloat2float.rn r7, r14
002ecc  fe8102e0  vmmov mr3, r5
002ed0  9f020002  addli r5, zero, 256
002ed4  6aa12336  vor.u.mh vr2{mr3}, r7, vr2
002ed8  b3130820  hfloat2float.rn r7, r16
002edc  fe8102e0  vmmov mr3, r5
002ee0  9f020004  addli r5, zero, 512
002ee4  6aa12336  vor.u.mh vr2{mr3}, r7, vr2
002ee8  b3930820  hfloat2float.rn r7, r17
002eec  fe8102e0  vmmov mr3, r5
002ef0  9f020008  addli r5, zero, 1024
002ef4  6aa12336  vor.u.mh vr2{mr3}, r7, vr2
002ef8  b3130920  hfloat2float.rn r7, r18
002efc  fe8102e0  vmmov mr3, r5
002f00  9f020010  addli r5, zero, 2048
002f04  6aa12336  vor.u.mh vr2{mr3}, r7, vr2
002f08  b3930920  hfloat2float.rn r7, r19
002f0c  fe8102e0  vmmov mr3, r5
002f10  9f020020  addli r5, zero, 4096
002f14  6aa12336  vor.u.mh vr2{mr3}, r7, vr2
002f18  b3130a20  hfloat2float.rn r7, r20
002f1c  fe8102e0  vmmov mr3, r5
002f20  9f020040  addli r5, zero, 8192
002f24  6aa12336  vor.u.mh vr2{mr3}, r7, vr2
002f28  b3930a20  hfloat2float.rn r7, r21
002f2c  fe8102e0  vmmov mr3, r5
002f30  ab420000  lui r5, 4
002f34  6aa12336  vor.u.mh vr2{mr3}, r7, vr2
002f38  b3130b20  hfloat2float.rn r7, r22
002f3c  fe8102e0  vmmov mr3, r5
002f40  ab820000  lui r5, 8
002f44  6aa12336  vor.u.mh vr2{mr3}, r7, vr2
002f48  fe8102e0  vmmov mr3, r5
002f4c  9f120000  addli r5, zero, 1
002f50  b3930d20  hfloat2float.rn r7, r27
002f54  7e8002e0  vmmov mr0, r5
002f58  9f420000  addli r5, zero, 4
002f5c  6aa12336  vor.u.mh vr2{mr3}, r7, vr2
002f60  ea213430  vor.u.mh vr3{mr0}, r8, vr3
002f64  b3130d20  hfloat2float.rn r7, r26
002f68  7e8002e0  vmmov mr0, r5
002f6c  9f021000  addli r5, zero, 8
002f70  eaa13334  vor.u.mh vr3{mr2}, r7, vr3
002f74  b3930c20  hfloat2float.rn r7, r25
002f78  16106102  vadd.f.mz.rn vr0{mr1}, vr2, vr6
002f7c  06f30000  vfp162float_h.rn vr6, vr1
002f80  eaa13330  vor.u.mh vr3{mr0}, r7, vr3
002f84  b3130c20  hfloat2float.rn r7, r24
002f88  7e8002e0  vmmov mr0, r5
002f8c  9f022000  addli r5, zero, 16
002f90  fe8102e0  vmmov mr3, r5
002f94  9f024000  addli r5, zero, 32
002f98  eaa13330  vor.u.mh vr3{mr0}, r7, vr3
002f9c  b3930b20  hfloat2float.rn r7, r23
002fa0  7e8002e0  vmmov mr0, r5
002fa4  9f028000  addli r5, zero, 64
002fa8  eaa13336  vor.u.mh vr3{mr3}, r7, vr3
002fac  ab830000  lui r7, 8
002fb0  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002fb4  e3005fec  loadli.w r1,  -2520(r30)
002fb8  7e8002e0  vmmov mr0, r5
002fbc  9f020001  addli r5, zero, 128
002fc0  b3900020  hfloat2float.rn r1, r1
002fc4  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002fc8  e3405fec  loadli.w r1,  -2516(r30)
002fcc  7e8002e0  vmmov mr0, r5
002fd0  9f020002  addli r5, zero, 256
002fd4  b3900020  hfloat2float.rn r1, r1
002fd8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002fdc  e3006fec  loadli.w r1,  -2512(r30)
002fe0  7e8002e0  vmmov mr0, r5
002fe4  9f020004  addli r5, zero, 512
002fe8  b3900020  hfloat2float.rn r1, r1
002fec  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002ff0  e3406fec  loadli.w r1,  -2508(r30)
002ff4  7e8002e0  vmmov mr0, r5
002ff8  9f020008  addli r5, zero, 1024
002ffc  b3900020  hfloat2float.rn r1, r1
003000  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003004  e3007fec  loadli.w r1,  -2504(r30)
003008  7e8002e0  vmmov mr0, r5
00300c  9f020010  addli r5, zero, 2048
003010  b3900020  hfloat2float.rn r1, r1
003014  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003018  e3407fec  loadli.w r1,  -2500(r30)
00301c  7e8002e0  vmmov mr0, r5
003020  9f020020  addli r5, zero, 4096
003024  b3900020  hfloat2float.rn r1, r1
003028  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00302c  e3008fec  loadli.w r1,  -2496(r30)
003030  7e8002e0  vmmov mr0, r5
003034  9f020040  addli r5, zero, 8192
003038  b3900020  hfloat2float.rn r1, r1
00303c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003040  e3408fec  loadli.w r1,  -2492(r30)
003044  7e8002e0  vmmov mr0, r5
003048  ab420000  lui r5, 4
00304c  b3900020  hfloat2float.rn r1, r1
003050  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003054  e3009fec  loadli.w r1,  -2488(r30)
003058  7e8002e0  vmmov mr0, r5
00305c  b3900020  hfloat2float.rn r1, r1
003060  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003064  e300afec  loadli.w r1,  -2480(r30)
003068  e3429fec  loadli.w r5,  -2484(r30)
00306c  7e8003e0  vmmov mr0, r7
003070  ab830000  lui r7, 8
003074  b3900020  hfloat2float.rn r1, r1
003078  b3920220  hfloat2float.rn r5, r5
00307c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003080  9f100000  addli r1, zero, 1
003084  7e8000e0  vmmov mr0, r1
003088  6aa24230  vor.u.mh vr4{mr0}, r5, vr4
00308c  e340afec  loadli.w r1,  -2476(r30)
003090  9f420000  addli r5, zero, 4
003094  16917102  vadd.f.mz.rn vr2{mr1}, vr3, vr7
003098  86b10000  vfp162float_l.rn vr3, vr1
00309c  86100000  vfloat2fp16_l.rn vr1, vr0
0030a0  86500100  vfloat2fp16_h.rn vr1, vr2
0030a4  06b00000  vfp162float_l.rn vr0, vr1
0030a8  7e8002e0  vmmov mr0, r5
0030ac  9f021000  addli r5, zero, 8
0030b0  06f10000  vfp162float_h.rn vr2, vr1
0030b4  12100102  vadd.f.mz.rn vr0{mr1}, r2, vr0
0030b8  92102102  vadd.f.mz.rn vr1{mr1}, r2, vr2
0030bc  b3900020  hfloat2float.rn r1, r1
0030c0  0a100302  vmul.f.mz.rn vr0{mr1}, r6, vr0
0030c4  8a101302  vmul.f.mz.rn vr1{mr1}, r6, vr1
0030c8  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
0030cc  e300bfec  loadli.w r1,  -2472(r30)
0030d0  b3900020  hfloat2float.rn r1, r1
0030d4  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
0030d8  e340bfec  loadli.w r1,  -2468(r30)
0030dc  7e8002e0  vmmov mr0, r5
0030e0  9f024000  addli r5, zero, 32
0030e4  b3900020  hfloat2float.rn r1, r1
0030e8  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
0030ec  e300cfec  loadli.w r1,  -2464(r30)
0030f0  7e8002e0  vmmov mr0, r5
0030f4  9f028000  addli r5, zero, 64
0030f8  b3900020  hfloat2float.rn r1, r1
0030fc  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
003100  e340cfec  loadli.w r1,  -2460(r30)
003104  fe8102e0  vmmov mr3, r5
003108  9f020001  addli r5, zero, 128
00310c  b3900020  hfloat2float.rn r1, r1
003110  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
003114  e300dfec  loadli.w r1,  -2456(r30)
003118  7e8002e0  vmmov mr0, r5
00311c  9f020002  addli r5, zero, 256
003120  b3900020  hfloat2float.rn r1, r1
003124  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
003128  e340dfec  loadli.w r1,  -2452(r30)
00312c  b3900020  hfloat2float.rn r1, r1
003130  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
003134  e300efec  loadli.w r1,  -2448(r30)
003138  7e8002e0  vmmov mr0, r5
00313c  9f020004  addli r5, zero, 512
003140  b3900020  hfloat2float.rn r1, r1
003144  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
003148  e340efec  loadli.w r1,  -2444(r30)
00314c  7e8002e0  vmmov mr0, r5
003150  9f020008  addli r5, zero, 1024
003154  b3900020  hfloat2float.rn r1, r1
003158  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
00315c  e300ffec  loadli.w r1,  -2440(r30)
003160  7e8002e0  vmmov mr0, r5
003164  9f020010  addli r5, zero, 2048
003168  b3900020  hfloat2float.rn r1, r1
00316c  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
003170  e340ffec  loadli.w r1,  -2436(r30)
003174  7e8002e0  vmmov mr0, r5
003178  9f020020  addli r5, zero, 4096
00317c  b3900020  hfloat2float.rn r1, r1
003180  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
003184  e3000fed  loadli.w r1,  -2432(r30)
003188  7e8002e0  vmmov mr0, r5
00318c  9f020040  addli r5, zero, 8192
003190  b3900020  hfloat2float.rn r1, r1
003194  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
003198  e3008fed  loadli.w r1,  -2368(r30)
00319c  7e8002e0  vmmov mr0, r5
0031a0  ab420000  lui r5, 4
0031a4  b3900020  hfloat2float.rn r1, r1
0031a8  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
0031ac  e3000fee  loadli.w r1,  -2304(r30)
0031b0  7e8002e0  vmmov mr0, r5
0031b4  b3900020  hfloat2float.rn r1, r1
0031b8  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
0031bc  e3000fef  loadli.w r1,  -2176(r30)
0031c0  e3028fee  loadli.w r5,  -2240(r30)
0031c4  7e8003e0  vmmov mr0, r7
0031c8  b3900020  hfloat2float.rn r1, r1
0031cc  b3920220  hfloat2float.rn r5, r5
0031d0  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
0031d4  9f100000  addli r1, zero, 1
0031d8  7e8000e0  vmmov mr0, r1
0031dc  eaa25230  vor.u.mh vr5{mr0}, r5, vr5
0031e0  e3008fef  loadli.w r1,  -2112(r30)
0031e4  9f420000  addli r5, zero, 4
0031e8  16113202  vadd.f.mz.rn vr2{mr1}, vr4, vr3
0031ec  06120000  vfloat2fp16_l.rn vr4, vr0
0031f0  06d20000  vfloat2fp16_h.rn vr4, vr1
0031f4  7e8002e0  vmmov mr0, r5
0031f8  9f021000  addli r5, zero, 8
0031fc  b3900020  hfloat2float.rn r1, r1
003200  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
003204  e3000ff0  loadli.w r1,  -2048(r30)
003208  b3900020  hfloat2float.rn r1, r1
00320c  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
003210  e3008ff0  loadli.w r1,  -1984(r30)
003214  7e8002e0  vmmov mr0, r5
003218  9f022000  addli r5, zero, 16
00321c  b3900020  hfloat2float.rn r1, r1
003220  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
003224  e3407ff1  loadli.w r1,  -1860(r30)
003228  7e8002e0  vmmov mr0, r5
00322c  9f024000  addli r5, zero, 32
003230  b3900020  hfloat2float.rn r1, r1
003234  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
003238  e3008ff1  loadli.w r1,  -1856(r30)
00323c  7e8002e0  vmmov mr0, r5
003240  9f020001  addli r5, zero, 128
003244  b3900020  hfloat2float.rn r1, r1
003248  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
00324c  e3000ff2  loadli.w r1,  -1792(r30)
003250  7e8002e0  vmmov mr0, r5
003254  9f020002  addli r5, zero, 256
003258  b3900020  hfloat2float.rn r1, r1
00325c  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
003260  e3008ff2  loadli.w r1,  -1728(r30)
003264  b3900020  hfloat2float.rn r1, r1
003268  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
00326c  e3000ff3  loadli.w r1,  -1664(r30)
003270  7e8002e0  vmmov mr0, r5
003274  9f020004  addli r5, zero, 512
003278  b3900020  hfloat2float.rn r1, r1
00327c  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
003280  e3008ff3  loadli.w r1,  -1600(r30)
003284  7e8002e0  vmmov mr0, r5
003288  9f020008  addli r5, zero, 1024
00328c  b3900020  hfloat2float.rn r1, r1
003290  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
003294  e3000ff4  loadli.w r1,  -1536(r30)
003298  7e8002e0  vmmov mr0, r5
00329c  9f020010  addli r5, zero, 2048
0032a0  b3900020  hfloat2float.rn r1, r1
0032a4  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0032a8  e3008ff4  loadli.w r1,  -1472(r30)
0032ac  7e8002e0  vmmov mr0, r5
0032b0  9f020020  addli r5, zero, 4096
0032b4  b3900020  hfloat2float.rn r1, r1
0032b8  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0032bc  e3000ff5  loadli.w r1,  -1408(r30)
0032c0  7e8002e0  vmmov mr0, r5
0032c4  9f020040  addli r5, zero, 8192
0032c8  b3900020  hfloat2float.rn r1, r1
0032cc  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0032d0  e3008ff5  loadli.w r1,  -1344(r30)
0032d4  7e8002e0  vmmov mr0, r5
0032d8  ab420000  lui r5, 4
0032dc  b3900020  hfloat2float.rn r1, r1
0032e0  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0032e4  e3000ff6  loadli.w r1,  -1280(r30)
0032e8  7e8002e0  vmmov mr0, r5
0032ec  ab820000  lui r5, 8
0032f0  b3900020  hfloat2float.rn r1, r1
0032f4  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0032f8  e3008ff6  loadli.w r1,  -1216(r30)
0032fc  7e8002e0  vmmov mr0, r5
003300  b3900020  hfloat2float.rn r1, r1
003304  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
003308  46104202  vstore_mask16.mz vr4{mr1}, 0(r4)
00330c  9f000004  addli r1, zero, 512
003310  96916202  vadd.f.mz.rn vr3{mr1}, vr5, vr6
003314  06100100  vfloat2fp16_l.rn vr0, vr2
003318  06d00100  vfloat2fp16_h.rn vr0, vr3
00331c  86300000  vfp162float_l.rn vr1, vr0
003320  06710000  vfp162float_h.rn vr2, vr0
003324  12101102  vadd.f.mz.rn vr0{mr1}, r2, vr1
003328  92102102  vadd.f.mz.rn vr1{mr1}, r2, vr2
00332c  0a100302  vmul.f.mz.rn vr0{mr1}, r6, vr0
003330  8a101302  vmul.f.mz.rn vr1{mr1}, r6, vr1
003334  06110000  vfloat2fp16_l.rn vr2, vr0
003338  06d10000  vfloat2fp16_h.rn vr2, vr1
00333c  46142202  vstore_mask16.mz vr2{mr1}, 64(r4)
003340  00a00000  mfence { lm }
003344  bb8411fc  bneq r3, r1, -1760
003348  1f03efea  addli r6, r30, -2704
00334c  6b510f01  load.d r[3:4], 16(r30)
003350  ab0000f0  lui r1, 983040
003354  9f030004  addli r7, zero, 512
003358  6b520300  load.d r[5:6], 0(r6)
00335c  1f030ff8  addli r6, r30, -1024
003360  0b214110  add.ul r[3:4], r[3:4], r[5:6]
003364  1f020004  addli r4, zero, 512
003368  9f020ffc  addli r5, r30, -512
00336c  97101200  or r1, r4, r1
003370  1f020ff8  addli r4, r30, -1024
003374  ff304100  s_lm2gm r1, r4, 0(r[3:4])
003378  9f71f00f  addli r3, zero, 2047
00337c  00a00000  mfence { lm }
003380  6304cfea  loadli.w r8,  -2720(r30)
003384  e345bfea  loadli.w r11,  -2724(r30)
003388  6306ffea  loadli.w r12,  -2696(r30)
00338c  dbdcf9ff  j -12572
003390  9f0e0fea  addli sp, r30, -2816
003394  9f8e0e16  addli sp, sp, 2816
003398  00a00300  mfence { lm, sm, gm }
00339c  00100000  exit
0033a0  00100000  exit
0033a4  00100000  exit
0033a8  00100000  exit
0033ac  00100000  exit
0033b0  00100000  exit
0033b4  00100000  exit
0033b8  00100000  exit
0033bc  00100000  exit
0033c0  00100000  exit
0033c4  00100000  exit
0033c8  00100000  exit
0033cc  00100000  exit
0033d0  00100000  exit
0033d4  00100000  exit
0033d8  00100000  exit
0033dc  00100000  exit
0033e0  00100000  exit
0033e4  00100000  exit
0033e8  00100000  exit
0033ec  00100000  exit
0033f0  00100000  exit
0033f4  00100000  exit
0033f8  00100000  exit
0033fc  00100000  exit
003400  00100000  exit
003404  00100000  exit
003408  00100000  exit
00340c  00100000  exit
003410  00100000  exit
003414  00100000  exit
003418  00100000  exit
00341c  00100000  exit
003420  00100000  exit
003424  00100000  exit
003428  00100000  exit
00342c  00100000  exit
003430  00100000  exit
003434  00100000  exit
003438  00100000  exit
00343c  00100000  exit
003440  00100000  exit
003444  00100000  exit
003448  00100000  exit
00344c  00100000  exit
003450  00100000  exit
003454  00100000  exit
003458  00100000  exit
00345c  00100000  exit
003460  00100000  exit
003464  00100000  exit
003468  00100000  exit
00346c  00100000  exit
003470  00100000  exit
003474  00100000  exit
003478  00100000  exit
00347c  00100000  exit
003480  00100000  exit
003484  00100000  exit
003488  00100000  exit
00348c  00100000  exit
003490  00100000  exit
003494  00100000  exit
003498  00100000  exit
00349c  00100000  exit
0034a0  00100000  exit
0034a4  00100000  exit
0034a8  00100000  exit
0034ac  00100000  exit
0034b0  00100000  exit
0034b4  00100000  exit
0034b8  00100000  exit
0034bc  00100000  exit
0034c0  00100000  exit
0034c4  00100000  exit
0034c8  00100000  exit
0034cc  00100000  exit
0034d0  00100000  exit
0034d4  00100000  exit
0034d8  00100000  exit
0034dc  00100000  exit
0034e0  00100000  exit
0034e4  00100000  exit
0034e8  00100000  exit
0034ec  00100000  exit
0034f0  00100000  exit
0034f4  00100000  exit
0034f8  00100000  exit
0034fc  00100000  exit
003500  00100000  exit
003504  00100000  exit
003508  00100000  exit
00350c  00100000  exit
003510  00100000  exit
003514  00100000  exit
003518  00100000  exit
00351c  00100000  exit
003520  00100000  exit
003524  00100000  exit
003528  00100000  exit
00352c  00100000  exit
003530  00100000  exit
003534  00100000  exit
003538  00100000  exit
00353c  00100000  exit
003540  00100000  exit
003544  00100000  exit
003548  00100000  exit
00354c  00100000  exit
003550  00100000  exit
003554  00100000  exit
003558  00100000  exit
00355c  00100000  exit
003560  00100000  exit
003564  00100000  exit
003568  00100000  exit
00356c  00100000  exit
003570  00100000  exit
003574  00100000  exit
003578  00100000  exit
00357c  00100000  exit
003580  00100000  exit
003584  00100000  exit
003588  00100000  exit
00358c  00100000  exit
003590  00100000  exit
003594  00100000  exit
003598  00100000  exit
00359c  00100000  exit
0035a0  00100000  exit
0035a4  00100000  exit
0035a8  00100000  exit
0035ac  00100000  exit
0035b0  00100000  exit
0035b4  00100000  exit
0035b8  00100000  exit
0035bc  00100000  exit
0035c0  00100000  exit
0035c4  00100000  exit
0035c8  00100000  exit
0035cc  00100000  exit
0035d0  00100000  exit
0035d4  00100000  exit
0035d8  00100000  exit
0035dc  00100000  exit
