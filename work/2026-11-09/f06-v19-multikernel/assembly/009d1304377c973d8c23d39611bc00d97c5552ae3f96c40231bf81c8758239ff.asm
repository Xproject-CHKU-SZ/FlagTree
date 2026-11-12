; SHA-256 009d1304377c973d8c23d39611bc00d97c5552ae3f96c40231bf81c8758239ff
; P800 Cluster · XTDK LLVM 19 · 3442 / 3442 words decoded
; bound names: triton_unk_fused_0
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
0000ec  ab03803f  lui r7, 260096
0000f0  00550002  load_param_i r10, 0
0000f4  1bb12100  slli r2, r3, 2
0000f8  9f800000  addli r1, r1, 0
0000fc  e3444f00  loadli.w r9,  36(r30)
000100  63024f00  loadli.w r4,  32(r30)
000104  63045f00  loadli.w r8,  40(r30)
000108  8b121110  add.s r5, r2, r1
00010c  0b924420  mul.s r4, r9, r4
000110  1f830210  addli r6, r5, 2048
000114  73e00200  stores.w zero, 0(r5)
000118  e7055fea  storeli.w r5, -2728(r30)
00011c  9f820220  addli r5, r5, 4096
000120  8b158220  mul.s r11, r4, r8
000124  67055fea  storeli.w r5, -2736(r30)
000128  73e07200  stores.w r7, 0(r5)
00012c  abf20000  lui r5, 15
000130  67456fea  storeli.w r6, -2732(r30)
000134  73600300  stores.w zero, 0(r6)
000138  00a00300  mfence { lm, sm, gm }
00013c  9b92f2ff  ori r5, r5, 4095
000140  67465fea  storeli.w r5, -2716(r30)
000144  80a10204  csr_set csr3, r5
000148  00d00100  sync_group
00014c  cbb8a518  ble.s r11, r10, 12844
000150  1f021000  addli r4, zero, 8
000154  1b837100  andi r6, r3, 7
000158  abf3ffff  lui r7, 1048575
00015c  1f170000  addli r14, zero, 1
000160  eea5b562  vxor.u.mz vr11{mr1}, vr11, vr11
000164  6e348462  vxor.s.mz vr8{mr1}, vr8, vr8
000168  80d60002  load_param_i r13, 1
00016c  e744bfea  storeli.w r11, -2740(r30)
000170  0b964130  div.s r12, r3, r4
000174  67046fea  storeli.w r6, -2752(r30)
000178  6b528f00  load.d r[5:6], 8(r30)
00017c  6744dfea  storeli.w r13, -2748(r30)
000180  1b333600  slli r6, r12, 3
000184  e704cfea  storeli.w r12, -2744(r30)
000188  8b916118  sub.s r3, r3, r6
00018c  1b9303fe  ori r6, r7, 4064
000190  9bb18100  slli r3, r3, 8
000194  17016100  and r2, r2, r6
000198  33930128  sext_int2long r[7:8], r3
00019c  e7433fea  storeli.w r3, -2756(r30)
0001a0  8b111110  add.s r3, r2, r1
0001a4  9730e302  sll.d r[2:3], r[7:8], r14
0001a8  1f830110  addli r6, r3, 2048
0001ac  9f030ffc  addli r7, r30, -512
0001b0  67063fea  storeli.w r3, -2720(r30)
0001b4  8b201210  add.ul r[2:3], r[5:6], r[2:3]
0001b8  1f026fea  addli r4, r30, -2768
0001bc  e7456fea  storeli.w r6, -2724(r30)
0001c0  9f020ff8  addli r5, r30, -1024
0001c4  1f030004  addli r6, zero, 512
0001c8  73301200  store.d r[2:3], 0(r4)
0001cc  ab00803f  lui r1, 260096
0001d0  1f820120  addli r4, r3, 4096
0001d4  1f71f00f  addli r2, zero, 2047
0001d8  6a90b022  vor.f.mz vr0{mr1}, r1, vr11
0001dc  abf00000  lui r1, 15
0001e0  e7024fea  storeli.w r4, -2776(r30)
0001e4  9ff0f01f  addli r1, r1, 4095
0001e8  7e8000e0  vmmov mr0, r1
0001ec  9f000ff7  addli r1, r30, -1152
0001f0  4690b002  vstore_mask16.mz vr11{mr1}, 0(r1)
0001f4  ee150430  vor.f.mh vr11{mr0}, vr8, vr0
0001f8  9f008feb  addli r1, r30, -2624
0001fc  4690b002  vstore_mask16.mz vr11{mr1}, 0(r1)
000200  ab10833a  lui r1, 239665
000204  9b90f026  ori r1, r1, 623
000208  e7421fea  storeli.w r1, -2772(r30)
00020c  9f000feb  addli r1, r30, -2688
000210  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
000214  5b020000  j 16
000218  0b15d510  add.s r10, r10, r13
00021c  3f20b500  blt.s r10, r11, 8
000220  5b2b0600  j 12632
000224  8b108530  div.s r1, r10, r8
000228  8b909030  div.s r1, r1, r9
00022c  9bb03000  slli r1, r1, 3
000230  8b90c010  add.s r1, r1, r12
000234  bf1f11fe  blt.s r2, r1, -28
000238  1f010000  addli r2, zero, 0
00023c  8b912210  add.s r3, r5, r2
000240  1f410100  addli r2, r2, 4
000244  73900100  store.h zero, 0(r3)
000248  73910100  store.h zero, 2(r3)
00024c  00a00000  mfence { lm }
000250  bb3f61fe  bneq r2, r6, -20
000254  63417fea  loadli.w r2,  -2756(r30)
000258  9bb0b000  slli r1, r1, 11
00025c  9f110000  addli r3, zero, 1
000260  1f02dfea  addli r4, r30, -2712
000264  6747afea  storeli.w r10, -2700(r30)
000268  8b902010  add.s r1, r1, r2
00026c  b3900028  sext_int2long r[2:3], r1
000270  17b43002  sll.d r[9:10], r[2:3], r3
000274  6b510f00  load.d r[3:4], 0(r30)
000278  ab0000f0  lui r1, 983040
00027c  97101300  or r1, r6, r1
000280  73308200  store.d r[9:10], 0(r4)
000284  0b218110  add.ul r[3:4], r[3:4], r[9:10]
000288  ff205100  l_gm2lm r1, r5, 0(r[3:4])
00028c  9f000000  addli r1, zero, 0
000290  0b911310  add.s r2, r7, r1
000294  9fc00000  addli r1, r1, 4
000298  73100100  store.h zero, 0(r2)
00029c  73110100  store.h zero, 2(r2)
0002a0  00a00000  mfence { lm }
0002a4  bbbf60fe  bneq r1, r6, -20
0002a8  9f026fea  addli r5, r30, -2768
0002ac  ab0000f0  lui r1, 983040
0002b0  1f020000  addli r4, zero, 0
0002b4  6bd10200  load.d r[3:4], 0(r5)
0002b8  97101300  or r1, r6, r1
0002bc  ff207100  l_gm2lm r1, r7, 0(r[3:4])
0002c0  00a00000  mfence { lm }
0002c4  6b312fe0  load.hu r2, -510(r30)
0002c8  eb300fe0  load.hu r1, -512(r30)
0002cc  c2140f82  vload_mask16.mz vr9{mr1}, 1024(r30)
0002d0  67052fec  storeli.w r2, -2480(r30)
0002d4  6b314fe0  load.hu r2, -508(r30)
0002d8  b3900020  hfloat2float.rn r1, r1
0002dc  e7052fec  storeli.w r2, -2472(r30)
0002e0  6b316fe0  load.hu r2, -506(r30)
0002e4  67062fec  storeli.w r2, -2464(r30)
0002e8  6b318fe0  load.hu r2, -504(r30)
0002ec  e7062fec  storeli.w r2, -2456(r30)
0002f0  6b31afe0  load.hu r2, -502(r30)
0002f4  67072fec  storeli.w r2, -2448(r30)
0002f8  6b31cfe0  load.hu r2, -500(r30)
0002fc  67472fec  storeli.w r2, -2444(r30)
000300  6b31efe0  load.hu r2, -498(r30)
000304  e7072fec  storeli.w r2, -2440(r30)
000308  6b310fe1  load.hu r2, -496(r30)
00030c  e7472fec  storeli.w r2, -2436(r30)
000310  6b312fe1  load.hu r2, -494(r30)
000314  67082fec  storeli.w r2, -2432(r30)
000318  6b314fe1  load.hu r2, -492(r30)
00031c  670c2fec  storeli.w r2, -2368(r30)
000320  6b316fe1  load.hu r2, -490(r30)
000324  67002fee  storeli.w r2, -2304(r30)
000328  6b318fe1  load.hu r2, -488(r30)
00032c  67042fee  storeli.w r2, -2240(r30)
000330  6b31afe1  load.hu r2, -486(r30)
000334  67082fee  storeli.w r2, -2176(r30)
000338  6b31cfe1  load.hu r2, -484(r30)
00033c  670c2fee  storeli.w r2, -2112(r30)
000340  6b31efe1  load.hu r2, -482(r30)
000344  67042ff0  storeli.w r2, -1984(r30)
000348  6b310fe2  load.hu r2, -480(r30)
00034c  67002ff0  storeli.w r2, -2048(r30)
000350  6b312fe2  load.hu r2, -478(r30)
000354  e74b2ff0  storeli.w r2, -1860(r30)
000358  6b314fe2  load.hu r2, -476(r30)
00035c  67002ff2  storeli.w r2, -1792(r30)
000360  6b316fe2  load.hu r2, -474(r30)
000364  67042ff2  storeli.w r2, -1728(r30)
000368  6b318fe2  load.hu r2, -472(r30)
00036c  67082ff2  storeli.w r2, -1664(r30)
000370  6b31afe2  load.hu r2, -470(r30)
000374  67002ff4  storeli.w r2, -1536(r30)
000378  6b31cfe2  load.hu r2, -468(r30)
00037c  67042ff4  storeli.w r2, -1472(r30)
000380  6b31efe2  load.hu r2, -466(r30)
000384  67082ff4  storeli.w r2, -1408(r30)
000388  6b310fe3  load.hu r2, -464(r30)
00038c  670c2ff4  storeli.w r2, -1344(r30)
000390  6b312fe3  load.hu r2, -462(r30)
000394  67002ff6  storeli.w r2, -1280(r30)
000398  6b314fe3  load.hu r2, -460(r30)
00039c  67042ff6  storeli.w r2, -1216(r30)
0003a0  1f010ff7  addli r2, r30, -1152
0003a4  c2158f82  vload_mask16.mz vr11{mr1}, 1088(r30)
0003a8  eb316fe3  load.hu r3, -458(r30)
0003ac  6b3d8fe3  load.hu r26, -456(r30)
0003b0  eb32afe3  load.hu r5, -454(r30)
0003b4  6b33cfe3  load.hu r6, -452(r30)
0003b8  eb33efe3  load.hu r7, -450(r30)
0003bc  6b340fe4  load.hu r8, -448(r30)
0003c0  eb342fe4  load.hu r9, -446(r30)
0003c4  6b354fe4  load.hu r10, -444(r30)
0003c8  eb356fe4  load.hu r11, -442(r30)
0003cc  6b368fe4  load.hu r12, -440(r30)
0003d0  eb36afe4  load.hu r13, -438(r30)
0003d4  6b37cfe4  load.hu r14, -436(r30)
0003d8  eb37efe4  load.hu r15, -434(r30)
0003dc  6b380fe5  load.hu r16, -432(r30)
0003e0  eb382fe5  load.hu r17, -430(r30)
0003e4  6b394fe5  load.hu r18, -428(r30)
0003e8  eb396fe5  load.hu r19, -426(r30)
0003ec  6b3a8fe5  load.hu r20, -424(r30)
0003f0  eb3aafe5  load.hu r21, -422(r30)
0003f4  6b3bcfe5  load.hu r22, -420(r30)
0003f8  eb3befe5  load.hu r23, -418(r30)
0003fc  6b3c0fe6  load.hu r24, -416(r30)
000400  eb3c2fe6  load.hu r25, -414(r30)
000404  eb3d4fe6  load.hu r27, -412(r30)
000408  6b3e6fe6  load.hu r28, -410(r30)
00040c  06b00500  vfp162float_l.rn vr0, vr11
000410  42150102  vload_mask16.mz vr10{mr1}, 0(r2)
000414  6b318fe6  load.hu r2, -408(r30)
000418  e7032fec  storeli.w r2, -2504(r30)
00041c  6b31afe6  load.hu r2, -406(r30)
000420  e7432fec  storeli.w r2, -2500(r30)
000424  6b31cfe6  load.hu r2, -404(r30)
000428  1231a002  vadd.s.mz vr2{mr1}, zero, vr10
00042c  67042fec  storeli.w r2, -2496(r30)
000430  6b31efe6  load.hu r2, -402(r30)
000434  67442fec  storeli.w r2, -2492(r30)
000438  6b310fe7  load.hu r2, -400(r30)
00043c  e7042fec  storeli.w r2, -2488(r30)
000440  6b312fe7  load.hu r2, -398(r30)
000444  e7442fec  storeli.w r2, -2484(r30)
000448  6b314fe7  load.hu r2, -396(r30)
00044c  67452fec  storeli.w r2, -2476(r30)
000450  6b316fe7  load.hu r2, -394(r30)
000454  e7452fec  storeli.w r2, -2468(r30)
000458  6b318fe7  load.hu r2, -392(r30)
00045c  67462fec  storeli.w r2, -2460(r30)
000460  6b31afe7  load.hu r2, -390(r30)
000464  e7462fec  storeli.w r2, -2452(r30)
000468  6b31cfe7  load.hu r2, -388(r30)
00046c  670c2ff0  storeli.w r2, -1856(r30)
000470  6b31efe7  load.hu r2, -386(r30)
000474  670c2ff2  storeli.w r2, -1600(r30)
000478  1f110000  addli r2, zero, 1
00047c  7e0101e0  vmmov mr2, r2
000480  1f210000  addli r2, zero, 2
000484  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000488  e300afec  loadli.w r1,  -2480(r30)
00048c  fe0101e0  vmmov mr3, r2
000490  1f410000  addli r2, zero, 4
000494  b3900020  hfloat2float.rn r1, r1
000498  7e0001e0  vmmov mr0, r2
00049c  1f011000  addli r2, zero, 8
0004a0  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
0004a4  e300bfec  loadli.w r1,  -2472(r30)
0004a8  b3900020  hfloat2float.rn r1, r1
0004ac  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0004b0  e300cfec  loadli.w r1,  -2464(r30)
0004b4  7e0001e0  vmmov mr0, r2
0004b8  1f012000  addli r2, zero, 16
0004bc  b3900020  hfloat2float.rn r1, r1
0004c0  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0004c4  e300dfec  loadli.w r1,  -2456(r30)
0004c8  7e0001e0  vmmov mr0, r2
0004cc  1f014000  addli r2, zero, 32
0004d0  7e0101e0  vmmov mr2, r2
0004d4  1f018000  addli r2, zero, 64
0004d8  b3900020  hfloat2float.rn r1, r1
0004dc  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0004e0  e300efec  loadli.w r1,  -2448(r30)
0004e4  b3900020  hfloat2float.rn r1, r1
0004e8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0004ec  e340efec  loadli.w r1,  -2444(r30)
0004f0  7e0101e0  vmmov mr2, r2
0004f4  1f010001  addli r2, zero, 128
0004f8  b3900020  hfloat2float.rn r1, r1
0004fc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000500  e300ffec  loadli.w r1,  -2440(r30)
000504  7e0101e0  vmmov mr2, r2
000508  1f010002  addli r2, zero, 256
00050c  b3900020  hfloat2float.rn r1, r1
000510  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000514  e340ffec  loadli.w r1,  -2436(r30)
000518  7e0101e0  vmmov mr2, r2
00051c  1f010004  addli r2, zero, 512
000520  b3900020  hfloat2float.rn r1, r1
000524  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000528  e3000fed  loadli.w r1,  -2432(r30)
00052c  7e0101e0  vmmov mr2, r2
000530  1f010008  addli r2, zero, 1024
000534  b3900020  hfloat2float.rn r1, r1
000538  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00053c  e3008fed  loadli.w r1,  -2368(r30)
000540  7e0101e0  vmmov mr2, r2
000544  1f010010  addli r2, zero, 2048
000548  b3900020  hfloat2float.rn r1, r1
00054c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000550  e3000fee  loadli.w r1,  -2304(r30)
000554  7e0101e0  vmmov mr2, r2
000558  1f010020  addli r2, zero, 4096
00055c  b3900020  hfloat2float.rn r1, r1
000560  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000564  e3008fee  loadli.w r1,  -2240(r30)
000568  7e0101e0  vmmov mr2, r2
00056c  1f010040  addli r2, zero, 8192
000570  2b800000  lui zero, 8
000574  b3900020  hfloat2float.rn r1, r1
000578  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00057c  e3000fef  loadli.w r1,  -2176(r30)
000580  7e0101e0  vmmov mr2, r2
000584  2b410000  lui r2, 4
000588  b3900020  hfloat2float.rn r1, r1
00058c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000590  e3008fef  loadli.w r1,  -2112(r30)
000594  7e0101e0  vmmov mr2, r2
000598  b3900020  hfloat2float.rn r1, r1
00059c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0005a0  e3008ff0  loadli.w r1,  -1984(r30)
0005a4  7e0100e0  vmmov mr2, zero
0005a8  17200000  xor zero, zero, zero
0005ac  63010ff0  loadli.w r2,  -2048(r30)
0005b0  9231a002  vadd.s.mz vr3{mr1}, zero, vr10
0005b4  1232a002  vadd.s.mz vr4{mr1}, zero, vr10
0005b8  9232a002  vadd.s.mz vr5{mr1}, zero, vr10
0005bc  1233a002  vadd.s.mz vr6{mr1}, zero, vr10
0005c0  9230a002  vadd.s.mz vr1{mr1}, zero, vr10
0005c4  1234a002  vadd.s.mz vr8{mr1}, zero, vr10
0005c8  b3900020  hfloat2float.rn r1, r1
0005cc  33110120  hfloat2float.rn r2, r2
0005d0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0005d4  9f100000  addli r1, zero, 1
0005d8  7e8100e0  vmmov mr2, r1
0005dc  ea213134  vor.u.mh vr3{mr2}, r2, vr3
0005e0  e3407ff1  loadli.w r1,  -1860(r30)
0005e4  1f410000  addli r2, zero, 4
0005e8  7e0101e0  vmmov mr2, r2
0005ec  1f011000  addli r2, zero, 8
0005f0  b3900020  hfloat2float.rn r1, r1
0005f4  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
0005f8  e3000ff2  loadli.w r1,  -1792(r30)
0005fc  b3900020  hfloat2float.rn r1, r1
000600  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
000604  e3008ff2  loadli.w r1,  -1728(r30)
000608  7e0101e0  vmmov mr2, r2
00060c  1f014000  addli r2, zero, 32
000610  b3900020  hfloat2float.rn r1, r1
000614  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
000618  e3000ff3  loadli.w r1,  -1664(r30)
00061c  7e0101e0  vmmov mr2, r2
000620  1f018000  addli r2, zero, 64
000624  b3900020  hfloat2float.rn r1, r1
000628  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00062c  e3000ff4  loadli.w r1,  -1536(r30)
000630  b3900020  hfloat2float.rn r1, r1
000634  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
000638  e3008ff4  loadli.w r1,  -1472(r30)
00063c  7e0101e0  vmmov mr2, r2
000640  1f010001  addli r2, zero, 128
000644  b3900020  hfloat2float.rn r1, r1
000648  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
00064c  e3000ff5  loadli.w r1,  -1408(r30)
000650  7e0101e0  vmmov mr2, r2
000654  1f010002  addli r2, zero, 256
000658  b3900020  hfloat2float.rn r1, r1
00065c  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
000660  e3008ff5  loadli.w r1,  -1344(r30)
000664  7e0101e0  vmmov mr2, r2
000668  1f010004  addli r2, zero, 512
00066c  b3900020  hfloat2float.rn r1, r1
000670  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
000674  e3000ff6  loadli.w r1,  -1280(r30)
000678  7e0101e0  vmmov mr2, r2
00067c  1f010008  addli r2, zero, 1024
000680  b3900020  hfloat2float.rn r1, r1
000684  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
000688  e3008ff6  loadli.w r1,  -1216(r30)
00068c  7e0101e0  vmmov mr2, r2
000690  1f010010  addli r2, zero, 2048
000694  b3900020  hfloat2float.rn r1, r1
000698  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
00069c  b3900120  hfloat2float.rn r1, r3
0006a0  7e0101e0  vmmov mr2, r2
0006a4  1f010020  addli r2, zero, 4096
0006a8  ab810000  lui r3, 8
0006ac  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
0006b0  b3100d20  hfloat2float.rn r1, r26
0006b4  7e0101e0  vmmov mr2, r2
0006b8  1f010040  addli r2, zero, 8192
0006bc  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
0006c0  b3900220  hfloat2float.rn r1, r5
0006c4  7e0101e0  vmmov mr2, r2
0006c8  2b410000  lui r2, 4
0006cc  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
0006d0  b3100320  hfloat2float.rn r1, r6
0006d4  7e0101e0  vmmov mr2, r2
0006d8  33110420  hfloat2float.rn r2, r8
0006dc  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
0006e0  b3900320  hfloat2float.rn r1, r7
0006e4  7e8101e0  vmmov mr2, r3
0006e8  ab810000  lui r3, 8
0006ec  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
0006f0  9f100000  addli r1, zero, 1
0006f4  7e8100e0  vmmov mr2, r1
0006f8  b3900420  hfloat2float.rn r1, r9
0006fc  6a224134  vor.u.mh vr4{mr2}, r2, vr4
000700  1f410000  addli r2, zero, 4
000704  7e0101e0  vmmov mr2, r2
000708  1f011000  addli r2, zero, 8
00070c  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
000710  b3100520  hfloat2float.rn r1, r10
000714  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
000718  b3900520  hfloat2float.rn r1, r11
00071c  7e0101e0  vmmov mr2, r2
000720  1f014000  addli r2, zero, 32
000724  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
000728  b3100620  hfloat2float.rn r1, r12
00072c  7e0101e0  vmmov mr2, r2
000730  1f018000  addli r2, zero, 64
000734  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000738  b3900620  hfloat2float.rn r1, r13
00073c  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
000740  b3100720  hfloat2float.rn r1, r14
000744  7e0101e0  vmmov mr2, r2
000748  1f010001  addli r2, zero, 128
00074c  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
000750  b3900720  hfloat2float.rn r1, r15
000754  7e0101e0  vmmov mr2, r2
000758  1f010002  addli r2, zero, 256
00075c  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
000760  b3100820  hfloat2float.rn r1, r16
000764  7e0101e0  vmmov mr2, r2
000768  1f010004  addli r2, zero, 512
00076c  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
000770  b3900820  hfloat2float.rn r1, r17
000774  7e0101e0  vmmov mr2, r2
000778  1f010008  addli r2, zero, 1024
00077c  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
000780  b3100920  hfloat2float.rn r1, r18
000784  7e0101e0  vmmov mr2, r2
000788  1f010010  addli r2, zero, 2048
00078c  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
000790  b3900920  hfloat2float.rn r1, r19
000794  7e0101e0  vmmov mr2, r2
000798  1f010020  addli r2, zero, 4096
00079c  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
0007a0  b3100a20  hfloat2float.rn r1, r20
0007a4  7e0101e0  vmmov mr2, r2
0007a8  1f010040  addli r2, zero, 8192
0007ac  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
0007b0  b3900a20  hfloat2float.rn r1, r21
0007b4  7e0101e0  vmmov mr2, r2
0007b8  2b410000  lui r2, 4
0007bc  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
0007c0  b3100b20  hfloat2float.rn r1, r22
0007c4  7e0101e0  vmmov mr2, r2
0007c8  33110c20  hfloat2float.rn r2, r24
0007cc  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
0007d0  b3900b20  hfloat2float.rn r1, r23
0007d4  7e8101e0  vmmov mr2, r3
0007d8  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
0007dc  9f100000  addli r1, zero, 1
0007e0  7e8100e0  vmmov mr2, r1
0007e4  b3900c20  hfloat2float.rn r1, r25
0007e8  ea225134  vor.u.mh vr5{mr2}, r2, vr5
0007ec  1f410000  addli r2, zero, 4
0007f0  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
0007f4  b3900d20  hfloat2float.rn r1, r27
0007f8  fe0100c0  vmmov mr3, mr0
0007fc  7e0001e0  vmmov mr0, r2
000800  1f011000  addli r2, zero, 8
000804  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000808  b3100e20  hfloat2float.rn r1, r28
00080c  7e0001e0  vmmov mr0, r2
000810  1f014000  addli r2, zero, 32
000814  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000818  e3007fec  loadli.w r1,  -2504(r30)
00081c  7e0001e0  vmmov mr0, r2
000820  1f018000  addli r2, zero, 64
000824  b3900020  hfloat2float.rn r1, r1
000828  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
00082c  e3407fec  loadli.w r1,  -2500(r30)
000830  b3900020  hfloat2float.rn r1, r1
000834  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000838  e3008fec  loadli.w r1,  -2496(r30)
00083c  7e0001e0  vmmov mr0, r2
000840  1f010001  addli r2, zero, 128
000844  b3900020  hfloat2float.rn r1, r1
000848  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
00084c  e3408fec  loadli.w r1,  -2492(r30)
000850  7e0001e0  vmmov mr0, r2
000854  1f010002  addli r2, zero, 256
000858  b3900020  hfloat2float.rn r1, r1
00085c  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000860  e3009fec  loadli.w r1,  -2488(r30)
000864  7e0001e0  vmmov mr0, r2
000868  1f010004  addli r2, zero, 512
00086c  b3900020  hfloat2float.rn r1, r1
000870  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000874  e3409fec  loadli.w r1,  -2484(r30)
000878  7e0001e0  vmmov mr0, r2
00087c  1f010008  addli r2, zero, 1024
000880  b3900020  hfloat2float.rn r1, r1
000884  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000888  e340afec  loadli.w r1,  -2476(r30)
00088c  7e0001e0  vmmov mr0, r2
000890  1f010010  addli r2, zero, 2048
000894  b3900020  hfloat2float.rn r1, r1
000898  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
00089c  e340bfec  loadli.w r1,  -2468(r30)
0008a0  7e0001e0  vmmov mr0, r2
0008a4  1f010020  addli r2, zero, 4096
0008a8  b3900020  hfloat2float.rn r1, r1
0008ac  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0008b0  e340cfec  loadli.w r1,  -2460(r30)
0008b4  7e0001e0  vmmov mr0, r2
0008b8  1f010040  addli r2, zero, 8192
0008bc  b3900020  hfloat2float.rn r1, r1
0008c0  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0008c4  e340dfec  loadli.w r1,  -2452(r30)
0008c8  7e0001e0  vmmov mr0, r2
0008cc  2b410000  lui r2, 4
0008d0  b3900020  hfloat2float.rn r1, r1
0008d4  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0008d8  9f008ff6  addli r1, r30, -1216
0008dc  00a00000  mfence { lm }
0008e0  7e0001e0  vmmov mr0, r2
0008e4  2b810000  lui r2, 8
0008e8  86b30400  vfp162float_l.rn vr7, vr9
0008ec  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0008f0  e3008ff1  loadli.w r1,  -1856(r30)
0008f4  06f00400  vfp162float_h.rn vr0, vr9
0008f8  96147102  vadd.f.mz.rn vr9{mr1}, vr2, vr7
0008fc  16910102  vadd.f.mz.rn vr2{mr1}, vr3, vr0
000900  86f10500  vfp162float_h.rn vr3, vr11
000904  9233a002  vadd.s.mz vr7{mr1}, zero, vr10
000908  06900400  vfloat2fp16_l.rn vr0, vr9
00090c  06500100  vfloat2fp16_h.rn vr0, vr2
000910  86340000  vfp162float_l.rn vr9, vr0
000914  b3900020  hfloat2float.rn r1, r1
000918  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
00091c  e3008ff3  loadli.w r1,  -1600(r30)
000920  7e0001e0  vmmov mr0, r2
000924  1f010ffc  addli r2, r30, -512
000928  b3900020  hfloat2float.rn r1, r1
00092c  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000930  9f008ff6  addli r1, r30, -1216
000934  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000938  abf00000  lui r1, 15
00093c  9ff0f01f  addli r1, r1, 4095
000940  96913202  vadd.f.mz.rn vr3{mr1}, vr5, vr3
000944  7e8000e0  vmmov mr0, r1
000948  9f000feb  addli r1, r30, -2688
00094c  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
000950  16112202  vadd.f.mz.rn vr2{mr1}, vr4, vr2
000954  06720000  vfp162float_h.rn vr4, vr0
000958  9f008ff6  addli r1, r30, -1216
00095c  06100100  vfloat2fp16_l.rn vr0, vr2
000960  06d00100  vfloat2fp16_h.rn vr0, vr3
000964  06710000  vfp162float_h.rn vr2, vr0
000968  6e939230  vor.f.mh vr6{mr0}, vr5, vr9
00096c  ee904230  vor.f.mh vr1{mr0}, vr5, vr4
000970  ee932230  vor.f.mh vr7{mr0}, vr5, vr2
000974  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
000978  9f000ff6  addli r1, r30, -1280
00097c  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000980  86300000  vfp162float_l.rn vr1, vr0
000984  6e941230  vor.f.mh vr8{mr0}, vr5, vr1
000988  9f000ff2  addli r1, r30, -1792
00098c  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
000990  9f008100  addli r1, r2, 64
000994  e7471fea  storeli.w r1, -2692(r30)
000998  9f000101  addli r1, r2, 128
00099c  e7071fea  storeli.w r1, -2696(r30)
0009a0  9f008feb  addli r1, r30, -2624
0009a4  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
0009a8  9f000ff7  addli r1, r30, -1152
0009ac  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0009b0  9f008ff1  addli r1, r30, -1856
0009b4  00a00000  mfence { lm }
0009b8  92318002  vadd.s.mz vr3{mr1}, zero, vr8
0009bc  12358002  vadd.s.mz vr10{mr1}, zero, vr8
0009c0  92358002  vadd.s.mz vr11{mr1}, zero, vr8
0009c4  12309002  vadd.s.mz vr0{mr1}, zero, vr9
0009c8  92309002  vadd.s.mz vr1{mr1}, zero, vr9
0009cc  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
0009d0  9f008ff4  addli r1, r30, -1472
0009d4  1f010ff8  addli r2, r30, -1024
0009d8  e74b4ff0  storeli.w r4, -1860(r30)
0009dc  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
0009e0  9f000ff5  addli r1, r30, -1408
0009e4  0b134110  add.s r6, r2, r4
0009e8  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0009ec  9f008ff5  addli r1, r30, -1344
0009f0  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0009f4  9f008ff2  addli r1, r30, -1728
0009f8  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
0009fc  9f008feb  addli r1, r30, -2624
000a00  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000a04  9f000ff7  addli r1, r30, -1152
000a08  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
000a0c  e300ffea  loadli.w r1,  -2696(r30)
000a10  8b904010  add.s r1, r1, r4
000a14  16121402  vadd.f.mz.rn vr4{mr1}, vr8, vr1
000a18  16111502  vadd.f.mz.rn vr2{mr1}, vr10, vr1
000a1c  96931102  vadd.f.mz.rn vr7{mr1}, vr3, vr1
000a20  6bb4c001  load.hu r8, 28(r1)
000a24  6bb10000  load.hu r2, 0(r1)
000a28  ebb12000  load.hu r3, 2(r1)
000a2c  6bb24000  load.hu r4, 4(r1)
000a30  ebb26000  load.hu r5, 6(r1)
000a34  ebb38000  load.hu r7, 8(r1)
000a38  6bb5a000  load.hu r10, 10(r1)
000a3c  6bb6c000  load.hu r12, 12(r1)
000a40  6bb7e000  load.hu r14, 14(r1)
000a44  ebb80001  load.hu r17, 16(r1)
000a48  6bb92001  load.hu r18, 18(r1)
000a4c  6bba4001  load.hu r20, 20(r1)
000a50  6bbb6001  load.hu r22, 22(r1)
000a54  6bbc8001  load.hu r24, 24(r1)
000a58  6bbda001  load.hu r26, 26(r1)
000a5c  12335002  vadd.s.mz vr6{mr1}, zero, vr5
000a60  e7408fec  storeli.w r8, -2548(r30)
000a64  6bb4e001  load.hu r8, 30(r1)
000a68  33110120  hfloat2float.rn r2, r2
000a6c  e7018fec  storeli.w r8, -2536(r30)
000a70  6bb40002  load.hu r8, 32(r1)
000a74  67418fec  storeli.w r8, -2540(r30)
000a78  6bb42002  load.hu r8, 34(r1)
000a7c  67428fec  storeli.w r8, -2524(r30)
000a80  6bb44002  load.hu r8, 36(r1)
000a84  e7428fec  storeli.w r8, -2516(r30)
000a88  6bb46002  load.hu r8, 38(r1)
000a8c  67438fec  storeli.w r8, -2508(r30)
000a90  6bb48002  load.hu r8, 40(r1)
000a94  e7438fec  storeli.w r8, -2500(r30)
000a98  6bb4a002  load.hu r8, 42(r1)
000a9c  67448fec  storeli.w r8, -2492(r30)
000aa0  6bb4c002  load.hu r8, 44(r1)
000aa4  e7448fec  storeli.w r8, -2484(r30)
000aa8  6bb4e002  load.hu r8, 46(r1)
000aac  67458fec  storeli.w r8, -2476(r30)
000ab0  6bb40003  load.hu r8, 48(r1)
000ab4  e7058fec  storeli.w r8, -2472(r30)
000ab8  6bb42003  load.hu r8, 50(r1)
000abc  67468fec  storeli.w r8, -2460(r30)
000ac0  1f040ff0  addli r8, r30, -2048
000ac4  42100303  vload_mask16.mz vr0{mr1}, 128(r6)
000ac8  46100402  vstore_mask16.mz vr0{mr1}, 0(r8)
000acc  42108303  vload_mask16.mz vr0{mr1}, 192(r6)
000ad0  6bbec004  load.hu r28, 76(r1)
000ad4  1f038ff0  addli r6, r30, -1984
000ad8  ebb44003  load.hu r9, 52(r1)
000adc  6bb48003  load.hu r8, 56(r1)
000ae0  ebb5a003  load.hu r11, 58(r1)
000ae4  ebb6c003  load.hu r13, 60(r1)
000ae8  ebb7e003  load.hu r15, 62(r1)
000aec  6bb80004  load.hu r16, 64(r1)
000af0  ebb92004  load.hu r19, 66(r1)
000af4  ebba4004  load.hu r21, 68(r1)
000af8  ebbb6004  load.hu r23, 70(r1)
000afc  ebbc8004  load.hu r25, 72(r1)
000b00  ebbda004  load.hu r27, 74(r1)
000b04  6701cfed  storeli.w r28, -2544(r30)
000b08  6bbee004  load.hu r28, 78(r1)
000b0c  e741cfed  storeli.w r28, -2532(r30)
000b10  6bbe0005  load.hu r28, 80(r1)
000b14  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
000b18  6bb36003  load.hu r6, 54(r1)
000b1c  12305002  vadd.s.mz vr0{mr1}, zero, vr5
000b20  6702cfed  storeli.w r28, -2528(r30)
000b24  6bbe2005  load.hu r28, 82(r1)
000b28  e702cfed  storeli.w r28, -2520(r30)
000b2c  6bbe4005  load.hu r28, 84(r1)
000b30  6703cfed  storeli.w r28, -2512(r30)
000b34  6bbe6005  load.hu r28, 86(r1)
000b38  e703cfed  storeli.w r28, -2504(r30)
000b3c  6bbe8005  load.hu r28, 88(r1)
000b40  6704cfed  storeli.w r28, -2496(r30)
000b44  6bbea005  load.hu r28, 90(r1)
000b48  e704cfed  storeli.w r28, -2488(r30)
000b4c  6bbec005  load.hu r28, 92(r1)
000b50  6705cfed  storeli.w r28, -2480(r30)
000b54  6bbee005  load.hu r28, 94(r1)
000b58  6706cfed  storeli.w r28, -2464(r30)
000b5c  6bbe0006  load.hu r28, 96(r1)
000b60  e745cfed  storeli.w r28, -2468(r30)
000b64  6bbe2006  load.hu r28, 98(r1)
000b68  e706cfed  storeli.w r28, -2456(r30)
000b6c  6bbe4006  load.hu r28, 100(r1)
000b70  e746cfed  storeli.w r28, -2452(r30)
000b74  6bbe6006  load.hu r28, 102(r1)
000b78  6707cfed  storeli.w r28, -2448(r30)
000b7c  6bbe8006  load.hu r28, 104(r1)
000b80  6747cfed  storeli.w r28, -2444(r30)
000b84  6bbea006  load.hu r28, 106(r1)
000b88  e707cfed  storeli.w r28, -2440(r30)
000b8c  6bbec006  load.hu r28, 108(r1)
000b90  e747cfed  storeli.w r28, -2436(r30)
000b94  6bbee006  load.hu r28, 110(r1)
000b98  00a00000  mfence { lm }
000b9c  6708cfed  storeli.w r28, -2432(r30)
000ba0  6bbe0007  load.hu r28, 112(r1)
000ba4  6708cfef  storeli.w r28, -2176(r30)
000ba8  6bbe2007  load.hu r28, 114(r1)
000bac  670ccfef  storeli.w r28, -2112(r30)
000bb0  6bbe4007  load.hu r28, 116(r1)
000bb4  670ccfed  storeli.w r28, -2368(r30)
000bb8  6bbe6007  load.hu r28, 118(r1)
000bbc  6700cfef  storeli.w r28, -2304(r30)
000bc0  6bbe8007  load.hu r28, 120(r1)
000bc4  6700cff5  storeli.w r28, -1536(r30)
000bc8  6bbea007  load.hu r28, 122(r1)
000bcc  6704cfef  storeli.w r28, -2240(r30)
000bd0  6bbec007  load.hu r28, 124(r1)
000bd4  ebb0e007  load.hu r1, 126(r1)
000bd8  670c1ff2  storeli.w r1, -1600(r30)
000bdc  9f100000  addli r1, zero, 1
000be0  6708cff3  storeli.w r28, -1664(r30)
000be4  7a9ef040  vextracti.f r28, 15(vr1)
000be8  7e8100e0  vmmov mr2, r1
000bec  b3900120  hfloat2float.rn r1, r3
000bf0  ab810000  lui r3, 8
000bf4  6a200134  vor.u.mh vr0{mr2}, r2, vr0
000bf8  1f210000  addli r2, zero, 2
000bfc  7e0001e0  vmmov mr0, r2
000c00  1f410000  addli r2, zero, 4
000c04  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000c08  b3100220  hfloat2float.rn r1, r4
000c0c  7e8001c0  vmmov mr0, mr3
000c10  fe0101e0  vmmov mr3, r2
000c14  1f011000  addli r2, zero, 8
000c18  2b420000  lui r4, 4
000c1c  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
000c20  b3900220  hfloat2float.rn r1, r5
000c24  fe0101e0  vmmov mr3, r2
000c28  1f014000  addli r2, zero, 32
000c2c  ab820000  lui r5, 8
000c30  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
000c34  b3900320  hfloat2float.rn r1, r7
000c38  fe0101e0  vmmov mr3, r2
000c3c  1f018000  addli r2, zero, 64
000c40  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000c44  b3100520  hfloat2float.rn r1, r10
000c48  7a951040  vextracti.f r10, 1(vr1)
000c4c  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
000c50  b3100620  hfloat2float.rn r1, r12
000c54  fe0101e0  vmmov mr3, r2
000c58  1f010001  addli r2, zero, 128
000c5c  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
000c60  b3100720  hfloat2float.rn r1, r14
000c64  fe0101e0  vmmov mr3, r2
000c68  1f010002  addli r2, zero, 256
000c6c  7a979040  vextracti.f r14, 9(vr1)
000c70  7e0101e0  vmmov mr2, r2
000c74  1f010004  addli r2, zero, 512
000c78  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
000c7c  b3900820  hfloat2float.rn r1, r17
000c80  fe0101e0  vmmov mr3, r2
000c84  1f010008  addli r2, zero, 1024
000c88  fa988040  vextracti.f r17, 8(vr1)
000c8c  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
000c90  b3100920  hfloat2float.rn r1, r18
000c94  7a990040  vextracti.f r18, 0(vr1)
000c98  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
000c9c  b3100a20  hfloat2float.rn r1, r20
000ca0  fe0101e0  vmmov mr3, r2
000ca4  1f010010  addli r2, zero, 2048
000ca8  7a1ad140  vextracti.f r20, 13(vr2)
000cac  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
000cb0  b3100b20  hfloat2float.rn r1, r22
000cb4  fe0101e0  vmmov mr3, r2
000cb8  1f010020  addli r2, zero, 4096
000cbc  7a9b7040  vextracti.f r22, 7(vr1)
000cc0  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
000cc4  b3100c20  hfloat2float.rn r1, r24
000cc8  fe0101e0  vmmov mr3, r2
000ccc  1f010040  addli r2, zero, 8192
000cd0  2b4c0000  lui r24, 4
000cd4  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
000cd8  b3100d20  hfloat2float.rn r1, r26
000cdc  fe0101e0  vmmov mr3, r2
000ce0  2b410000  lui r2, 4
000ce4  7a9db040  vextracti.f r26, 11(vr1)
000ce8  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
000cec  e3401fec  loadli.w r1,  -2548(r30)
000cf0  fe0101e0  vmmov mr3, r2
000cf4  b3900020  hfloat2float.rn r1, r1
000cf8  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
000cfc  e3003fec  loadli.w r1,  -2536(r30)
000d00  63412fec  loadli.w r2,  -2540(r30)
000d04  fe8101e0  vmmov mr3, r3
000d08  ab810000  lui r3, 8
000d0c  b3900020  hfloat2float.rn r1, r1
000d10  33110120  hfloat2float.rn r2, r2
000d14  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
000d18  9f100000  addli r1, zero, 1
000d1c  fe8100e0  vmmov mr3, r1
000d20  6a236136  vor.u.mh vr6{mr3}, r2, vr6
000d24  e3404fec  loadli.w r1,  -2524(r30)
000d28  1f210000  addli r2, zero, 2
000d2c  fe0101e0  vmmov mr3, r2
000d30  1f410000  addli r2, zero, 4
000d34  b3900020  hfloat2float.rn r1, r1
000d38  6aa36036  vor.u.mh vr6{mr3}, r1, vr6
000d3c  e3405fec  loadli.w r1,  -2516(r30)
000d40  fe0101e0  vmmov mr3, r2
000d44  1f011000  addli r2, zero, 8
000d48  b3900020  hfloat2float.rn r1, r1
000d4c  6aa36036  vor.u.mh vr6{mr3}, r1, vr6
000d50  e3406fec  loadli.w r1,  -2508(r30)
000d54  fe0101e0  vmmov mr3, r2
000d58  1f014000  addli r2, zero, 32
000d5c  b3900020  hfloat2float.rn r1, r1
000d60  6aa36036  vor.u.mh vr6{mr3}, r1, vr6
000d64  e3407fec  loadli.w r1,  -2500(r30)
000d68  fe0101e0  vmmov mr3, r2
000d6c  1f018000  addli r2, zero, 64
000d70  b3900020  hfloat2float.rn r1, r1
000d74  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
000d78  e3408fec  loadli.w r1,  -2492(r30)
000d7c  b3900020  hfloat2float.rn r1, r1
000d80  6aa36036  vor.u.mh vr6{mr3}, r1, vr6
000d84  e3409fec  loadli.w r1,  -2484(r30)
000d88  fe0101e0  vmmov mr3, r2
000d8c  1f010001  addli r2, zero, 128
000d90  b3900020  hfloat2float.rn r1, r1
000d94  6aa36036  vor.u.mh vr6{mr3}, r1, vr6
000d98  e340afec  loadli.w r1,  -2476(r30)
000d9c  fe0101e0  vmmov mr3, r2
000da0  1f010004  addli r2, zero, 512
000da4  b3900020  hfloat2float.rn r1, r1
000da8  6aa36036  vor.u.mh vr6{mr3}, r1, vr6
000dac  e300bfec  loadli.w r1,  -2472(r30)
000db0  b3900020  hfloat2float.rn r1, r1
000db4  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
000db8  e340cfec  loadli.w r1,  -2460(r30)
000dbc  7e0101e0  vmmov mr2, r2
000dc0  1f010008  addli r2, zero, 1024
000dc4  fe0101e0  vmmov mr3, r2
000dc8  1f010010  addli r2, zero, 2048
000dcc  b3900020  hfloat2float.rn r1, r1
000dd0  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
000dd4  b3900420  hfloat2float.rn r1, r9
000dd8  7e0101e0  vmmov mr2, r2
000ddc  1f010020  addli r2, zero, 4096
000de0  fa14d240  vextracti.f r9, 13(vr4)
000de4  6aa36036  vor.u.mh vr6{mr3}, r1, vr6
000de8  b3100320  hfloat2float.rn r1, r6
000dec  7a134240  vextracti.f r6, 4(vr4)
000df0  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
000df4  b3100420  hfloat2float.rn r1, r8
000df8  7e0101e0  vmmov mr2, r2
000dfc  1f010040  addli r2, zero, 8192
000e00  7a14c240  vextracti.f r8, 12(vr4)
000e04  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
000e08  b3900520  hfloat2float.rn r1, r11
000e0c  7e0101e0  vmmov mr2, r2
000e10  2b410000  lui r2, 4
000e14  fa956040  vextracti.f r11, 6(vr1)
000e18  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
000e1c  b3900620  hfloat2float.rn r1, r13
000e20  7e0101e0  vmmov mr2, r2
000e24  33110820  hfloat2float.rn r2, r16
000e28  7a98a040  vextracti.f r16, 10(vr1)
000e2c  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
000e30  b3900720  hfloat2float.rn r1, r15
000e34  7e8101e0  vmmov mr2, r3
000e38  ab810000  lui r3, 8
000e3c  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
000e40  9f100000  addli r1, zero, 1
000e44  7e8100e0  vmmov mr2, r1
000e48  b3900920  hfloat2float.rn r1, r19
000e4c  ea225134  vor.u.mh vr5{mr2}, r2, vr5
000e50  1f210000  addli r2, zero, 2
000e54  7e0101e0  vmmov mr2, r2
000e58  1f410000  addli r2, zero, 4
000e5c  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
000e60  b3900a20  hfloat2float.rn r1, r21
000e64  7e0101e0  vmmov mr2, r2
000e68  1f011000  addli r2, zero, 8
000e6c  fa9a3040  vextracti.f r21, 3(vr1)
000e70  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
000e74  b3900b20  hfloat2float.rn r1, r23
000e78  7e0101e0  vmmov mr2, r2
000e7c  1f014000  addli r2, zero, 32
000e80  fa1bb140  vextracti.f r23, 11(vr2)
000e84  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
000e88  b3900c20  hfloat2float.rn r1, r25
000e8c  7e0101e0  vmmov mr2, r2
000e90  1f018000  addli r2, zero, 64
000e94  fa9c6340  vextracti.f r25, 6(vr7)
000e98  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000e9c  b3900d20  hfloat2float.rn r1, r27
000ea0  fa9d2040  vextracti.f r27, 2(vr1)
000ea4  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
000ea8  e3002fec  loadli.w r1,  -2544(r30)
000eac  7e0101e0  vmmov mr2, r2
000eb0  1f010001  addli r2, zero, 128
000eb4  b3900020  hfloat2float.rn r1, r1
000eb8  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
000ebc  e3403fec  loadli.w r1,  -2532(r30)
000ec0  7e0101e0  vmmov mr2, r2
000ec4  1f010002  addli r2, zero, 256
000ec8  b3900020  hfloat2float.rn r1, r1
000ecc  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
000ed0  e3004fec  loadli.w r1,  -2528(r30)
000ed4  7e0101e0  vmmov mr2, r2
000ed8  1f010004  addli r2, zero, 512
000edc  b3900020  hfloat2float.rn r1, r1
000ee0  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
000ee4  e3005fec  loadli.w r1,  -2520(r30)
000ee8  7e0101e0  vmmov mr2, r2
000eec  1f010010  addli r2, zero, 2048
000ef0  b3900020  hfloat2float.rn r1, r1
000ef4  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
000ef8  e3006fec  loadli.w r1,  -2512(r30)
000efc  7e0101e0  vmmov mr2, r2
000f00  1f010020  addli r2, zero, 4096
000f04  b3900020  hfloat2float.rn r1, r1
000f08  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
000f0c  e3007fec  loadli.w r1,  -2504(r30)
000f10  b3900020  hfloat2float.rn r1, r1
000f14  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
000f18  e3008fec  loadli.w r1,  -2496(r30)
000f1c  7e0101e0  vmmov mr2, r2
000f20  1f010040  addli r2, zero, 8192
000f24  b3900020  hfloat2float.rn r1, r1
000f28  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
000f2c  e3009fec  loadli.w r1,  -2488(r30)
000f30  7e0101e0  vmmov mr2, r2
000f34  2b410000  lui r2, 4
000f38  b3900020  hfloat2float.rn r1, r1
000f3c  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
000f40  e300afec  loadli.w r1,  -2480(r30)
000f44  7e0101e0  vmmov mr2, r2
000f48  b3900020  hfloat2float.rn r1, r1
000f4c  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
000f50  9f000ff7  addli r1, r30, -1152
000f54  6341bfec  loadli.w r2,  -2468(r30)
000f58  7e8101e0  vmmov mr2, r3
000f5c  9f010040  addli r3, zero, 8192
000f60  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000f64  e300cfec  loadli.w r1,  -2464(r30)
000f68  33110120  hfloat2float.rn r2, r2
000f6c  b3900020  hfloat2float.rn r1, r1
000f70  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
000f74  9f100000  addli r1, zero, 1
000f78  7e8100e0  vmmov mr2, r1
000f7c  ea249134  vor.u.mh vr9{mr2}, r2, vr9
000f80  e300dfec  loadli.w r1,  -2456(r30)
000f84  1f210000  addli r2, zero, 2
000f88  7e0101e0  vmmov mr2, r2
000f8c  1f410000  addli r2, zero, 4
000f90  b3900020  hfloat2float.rn r1, r1
000f94  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
000f98  e340dfec  loadli.w r1,  -2452(r30)
000f9c  7e0101e0  vmmov mr2, r2
000fa0  1f011000  addli r2, zero, 8
000fa4  b3900020  hfloat2float.rn r1, r1
000fa8  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
000fac  e300efec  loadli.w r1,  -2448(r30)
000fb0  7e0101e0  vmmov mr2, r2
000fb4  1f014000  addli r2, zero, 32
000fb8  b3900020  hfloat2float.rn r1, r1
000fbc  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
000fc0  e340efec  loadli.w r1,  -2444(r30)
000fc4  7e8101e0  vmmov mr2, r3
000fc8  fa111240  vextracti.f r3, 1(vr4)
000fcc  b3900020  hfloat2float.rn r1, r1
000fd0  8f013518  div.f.rn r3, r10, r3
000fd4  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000fd8  fe0100c0  vmmov mr3, mr0
000fdc  e300ffec  loadli.w r1,  -2440(r30)
000fe0  7e0001e0  vmmov mr0, r2
000fe4  1f018000  addli r2, zero, 64
000fe8  b3900020  hfloat2float.rn r1, r1
000fec  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000ff0  e340ffec  loadli.w r1,  -2436(r30)
000ff4  7e0001e0  vmmov mr0, r2
000ff8  1f010001  addli r2, zero, 128
000ffc  b3900020  hfloat2float.rn r1, r1
001000  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
001004  e3000fed  loadli.w r1,  -2432(r30)
001008  7e0001e0  vmmov mr0, r2
00100c  1f010002  addli r2, zero, 256
001010  b3900020  hfloat2float.rn r1, r1
001014  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
001018  e3000fef  loadli.w r1,  -2176(r30)
00101c  7e0001e0  vmmov mr0, r2
001020  1f010004  addli r2, zero, 512
001024  b3900020  hfloat2float.rn r1, r1
001028  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
00102c  e3008fef  loadli.w r1,  -2112(r30)
001030  7e0001e0  vmmov mr0, r2
001034  1f010008  addli r2, zero, 1024
001038  b3900020  hfloat2float.rn r1, r1
00103c  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
001040  9f008fef  addli r1, r30, -2112
001044  00a00000  mfence { lm }
001048  7e0001e0  vmmov mr0, r2
00104c  1f010010  addli r2, zero, 2048
001050  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
001054  9f000fef  addli r1, r30, -2176
001058  4690b002  vstore_mask16.mz vr11{mr1}, 0(r1)
00105c  e3008fed  loadli.w r1,  -2368(r30)
001060  96951502  vadd.f.mz.rn vr11{mr1}, vr11, vr1
001064  b3900020  hfloat2float.rn r1, r1
001068  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
00106c  e3000fee  loadli.w r1,  -2304(r30)
001070  7e0001e0  vmmov mr0, r2
001074  1f010ff4  addli r2, r30, -1536
001078  b3900020  hfloat2float.rn r1, r1
00107c  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
001080  e3000ff4  loadli.w r1,  -1536(r30)
001084  00a00000  mfence { lm }
001088  46104102  vstore_mask16.mz vr4{mr1}, 0(r2)
00108c  1f010020  addli r2, zero, 4096
001090  7e0001e0  vmmov mr0, r2
001094  7a110240  vextracti.f r2, 0(vr4)
001098  b3900020  hfloat2float.rn r1, r1
00109c  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
0010a0  9f000ff7  addli r1, r30, -1152
0010a4  0f012918  div.f.rn r2, r18, r2
0010a8  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
0010ac  e3008fee  loadli.w r1,  -2240(r30)
0010b0  b3900020  hfloat2float.rn r1, r1
0010b4  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
0010b8  e3000ff3  loadli.w r1,  -1664(r30)
0010bc  7e0102e0  vmmov mr2, r4
0010c0  7a122240  vextracti.f r4, 2(vr4)
0010c4  b3900020  hfloat2float.rn r1, r1
0010c8  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
0010cc  e3008ff3  loadli.w r1,  -1600(r30)
0010d0  7e8102e0  vmmov mr2, r5
0010d4  9f220000  addli r5, zero, 2
0010d8  b3900020  hfloat2float.rn r1, r1
0010dc  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
0010e0  9f100000  addli r1, zero, 1
0010e4  7e8100e0  vmmov mr2, r1
0010e8  fa103240  vextracti.f r1, 3(vr4)
0010ec  6a248134  vor.u.mh vr8{mr2}, r2, vr8
0010f0  0f814d18  div.f.rn r2, r27, r4
0010f4  7e8102e0  vmmov mr2, r5
0010f8  9f420000  addli r5, zero, 4
0010fc  7a924040  vextracti.f r4, 4(vr1)
001100  6aa48134  vor.u.mh vr8{mr2}, r3, vr8
001104  8f811a18  div.f.rn r3, r21, r1
001108  7e8102e0  vmmov mr2, r5
00110c  9f021000  addli r5, zero, 8
001110  fa905040  vextracti.f r1, 5(vr1)
001114  6a248134  vor.u.mh vr8{mr2}, r2, vr8
001118  0f016218  div.f.rn r2, r4, r6
00111c  7a135240  vextracti.f r6, 5(vr4)
001120  7e8102e0  vmmov mr2, r5
001124  9f024000  addli r5, zero, 32
001128  6aa48134  vor.u.mh vr8{mr2}, r3, vr8
00112c  8f816018  div.f.rn r3, r1, r6
001130  7a136240  vextracti.f r6, 6(vr4)
001134  7e8101c0  vmmov mr2, mr3
001138  fe8102e0  vmmov mr3, r5
00113c  9f028000  addli r5, zero, 64
001140  6a248134  vor.u.mh vr8{mr2}, r2, vr8
001144  0f816518  div.f.rn r2, r11, r6
001148  7a137240  vextracti.f r6, 7(vr4)
00114c  6aa48136  vor.u.mh vr8{mr3}, r3, vr8
001150  8f016b18  div.f.rn r3, r22, r6
001154  7a138240  vextracti.f r6, 8(vr4)
001158  fe8102e0  vmmov mr3, r5
00115c  9f020001  addli r5, zero, 128
001160  6a248136  vor.u.mh vr8{mr3}, r2, vr8
001164  0f816818  div.f.rn r2, r17, r6
001168  7a139240  vextracti.f r6, 9(vr4)
00116c  fe8102e0  vmmov mr3, r5
001170  9f020002  addli r5, zero, 256
001174  6aa48136  vor.u.mh vr8{mr3}, r3, vr8
001178  8f016718  div.f.rn r3, r14, r6
00117c  7a13a240  vextracti.f r6, 10(vr4)
001180  fe8102e0  vmmov mr3, r5
001184  9f020004  addli r5, zero, 512
001188  8f036818  div.f.rn r7, r16, r6
00118c  7a93c040  vextracti.f r6, 12(vr1)
001190  6a248136  vor.u.mh vr8{mr3}, r2, vr8
001194  7a11b240  vextracti.f r2, 11(vr4)
001198  fe8102e0  vmmov mr3, r5
00119c  9f020008  addli r5, zero, 1024
0011a0  6aa48136  vor.u.mh vr8{mr3}, r3, vr8
0011a4  8f012d18  div.f.rn r3, r26, r2
0011a8  fe8102e0  vmmov mr3, r5
0011ac  9f020010  addli r5, zero, 2048
0011b0  7a91d040  vextracti.f r2, 13(vr1)
0011b4  1f060100  addli r12, r2, 0
0011b8  6aa48336  vor.u.mh vr8{mr3}, r7, vr8
0011bc  8f038318  div.f.rn r7, r6, r8
0011c0  fe8102e0  vmmov mr3, r5
0011c4  7a94e040  vextracti.f r8, 14(vr1)
0011c8  9f020040  addli r5, zero, 8192
0011cc  9f090600  addli r19, r12, 0
0011d0  6aa48136  vor.u.mh vr8{mr3}, r3, vr8
0011d4  8f019118  div.f.rn r3, r2, r9
0011d8  fa14e240  vextracti.f r9, 14(vr4)
0011dc  1f018ff3  addli r2, r30, -1600
0011e0  6aa48330  vor.u.mh vr8{mr0}, r7, vr8
0011e4  8f039418  div.f.rn r7, r8, r9
0011e8  fa14f240  vextracti.f r9, 15(vr4)
0011ec  7e8002e0  vmmov mr0, r5
0011f0  00a00000  mfence { lm }
0011f4  4610b102  vstore_mask16.mz vr11{mr1}, 0(r2)
0011f8  7a910540  vextracti.f r2, 0(vr11)
0011fc  ab420000  lui r5, 4
001200  6aa48130  vor.u.mh vr8{mr0}, r3, vr8
001204  8f019e18  div.f.rn r3, r28, r9
001208  7e8002e0  vmmov mr0, r5
00120c  67442fec  storeli.w r2, -2492(r30)
001210  8f042918  div.f.rn r9, r18, r2
001214  ab820000  lui r5, 8
001218  7a911540  vextracti.f r2, 1(vr11)
00121c  fe8102e0  vmmov mr3, r5
001220  9f220000  addli r5, zero, 2
001224  6aa48330  vor.u.mh vr8{mr0}, r7, vr8
001228  67042fec  storeli.w r2, -2496(r30)
00122c  8f032518  div.f.rn r7, r10, r2
001230  7a912540  vextracti.f r2, 2(vr11)
001234  6aa48136  vor.u.mh vr8{mr3}, r3, vr8
001238  9f010ff7  addli r3, r30, -1152
00123c  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
001240  9f110000  addli r3, zero, 1
001244  7e8001e0  vmmov mr0, r3
001248  8f812d18  div.f.rn r3, r27, r2
00124c  6aa24430  vor.u.mh vr4{mr0}, r9, vr4
001250  e7422fec  storeli.w r2, -2516(r30)
001254  7a913540  vextracti.f r2, 3(vr11)
001258  7e8002e0  vmmov mr0, r5
00125c  9f420000  addli r5, zero, 4
001260  6aa24330  vor.u.mh vr4{mr0}, r7, vr4
001264  8f832a18  div.f.rn r7, r21, r2
001268  e7432fec  storeli.w r2, -2500(r30)
00126c  7a914540  vextracti.f r2, 4(vr11)
001270  7e8002e0  vmmov mr0, r5
001274  9f021000  addli r5, zero, 8
001278  6aa24130  vor.u.mh vr4{mr0}, r3, vr4
00127c  8f012218  div.f.rn r3, r4, r2
001280  e7032fec  storeli.w r2, -2504(r30)
001284  7a915540  vextracti.f r2, 5(vr11)
001288  7e8002e0  vmmov mr0, r5
00128c  9f020040  addli r5, zero, 8192
001290  6aa24330  vor.u.mh vr4{mr0}, r7, vr4
001294  8f832018  div.f.rn r7, r1, r2
001298  67432fec  storeli.w r2, -2508(r30)
00129c  7a916540  vextracti.f r2, 6(vr11)
0012a0  8f842518  div.f.rn r9, r11, r2
0012a4  6aa24134  vor.u.mh vr4{mr2}, r3, vr4
0012a8  9f014000  addli r3, zero, 32
0012ac  67062fec  storeli.w r2, -2464(r30)
0012b0  7a917540  vextracti.f r2, 7(vr11)
0012b4  7e8001e0  vmmov mr0, r3
0012b8  9f018000  addli r3, zero, 64
0012bc  6aa24330  vor.u.mh vr4{mr0}, r7, vr4
0012c0  8f032b18  div.f.rn r7, r22, r2
0012c4  e7452fec  storeli.w r2, -2468(r30)
0012c8  7a918540  vextracti.f r2, 8(vr11)
0012cc  7e8001e0  vmmov mr0, r3
0012d0  9f010001  addli r3, zero, 128
0012d4  8f862818  div.f.rn r13, r17, r2
0012d8  6aa24430  vor.u.mh vr4{mr0}, r9, vr4
0012dc  e7052fec  storeli.w r2, -2472(r30)
0012e0  7a919540  vextracti.f r2, 9(vr11)
0012e4  7e8001e0  vmmov mr0, r3
0012e8  9f010002  addli r3, zero, 256
0012ec  fa148140  vextracti.f r9, 8(vr2)
0012f0  6aa24330  vor.u.mh vr4{mr0}, r7, vr4
0012f4  8f032718  div.f.rn r7, r14, r2
0012f8  67452fec  storeli.w r2, -2476(r30)
0012fc  7a91a540  vextracti.f r2, 10(vr11)
001300  7e8001e0  vmmov mr0, r3
001304  9f010004  addli r3, zero, 512
001308  8f072818  div.f.rn r15, r16, r2
00130c  6aa24630  vor.u.mh vr4{mr0}, r13, vr4
001310  67052fec  storeli.w r2, -2480(r30)
001314  7a91b540  vextracti.f r2, 11(vr11)
001318  7e8001e0  vmmov mr0, r3
00131c  9f010008  addli r3, zero, 1024
001320  fa169140  vextracti.f r13, 9(vr2)
001324  6aa24330  vor.u.mh vr4{mr0}, r7, vr4
001328  8f032d18  div.f.rn r7, r26, r2
00132c  e7442fec  storeli.w r2, -2484(r30)
001330  7a91c540  vextracti.f r2, 12(vr11)
001334  7e8001e0  vmmov mr0, r3
001338  9f010010  addli r3, zero, 2048
00133c  6aa24730  vor.u.mh vr4{mr0}, r15, vr4
001340  8f072318  div.f.rn r15, r6, r2
001344  e7042fec  storeli.w r2, -2488(r30)
001348  7a91d540  vextracti.f r2, 13(vr11)
00134c  7e8001e0  vmmov mr0, r3
001350  9f018fee  addli r3, r30, -2240
001354  6aa24330  vor.u.mh vr4{mr0}, r7, vr4
001358  4690a102  vstore_mask16.mz vr10{mr1}, 0(r3)
00135c  8f032618  div.f.rn r7, r12, r2
001360  9f010020  addli r3, zero, 4096
001364  e7022fec  storeli.w r2, -2520(r30)
001368  7a91e540  vextracti.f r2, 14(vr11)
00136c  1f060400  addli r12, r8, 0
001370  670c3fed  storeli.w r19, -2368(r30)
001374  7a14c140  vextracti.f r8, 12(vr2)
001378  7e8001e0  vmmov mr0, r3
00137c  9f010ff3  addli r3, r30, -1664
001380  6aa24730  vor.u.mh vr4{mr0}, r15, vr4
001384  8f072618  div.f.rn r15, r12, r2
001388  67422fec  storeli.w r2, -2524(r30)
00138c  7a91f540  vextracti.f r2, 15(vr11)
001390  7e8002e0  vmmov mr0, r5
001394  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
001398  6708cfec  storeli.w r12, -2432(r30)
00139c  fa110140  vextracti.f r3, 0(vr2)
0013a0  ab420000  lui r5, 4
0013a4  6aa24330  vor.u.mh vr4{mr0}, r7, vr4
0013a8  8f032e18  div.f.rn r7, r28, r2
0013ac  7e8002e0  vmmov mr0, r5
0013b0  67022fec  storeli.w r2, -2528(r30)
0013b4  67463fec  storeli.w r3, -2460(r30)
0013b8  7a111140  vextracti.f r2, 1(vr2)
0013bc  9f020ff7  addli r5, r30, -1152
0013c0  8f013918  div.f.rn r3, r18, r3
0013c4  6aa24730  vor.u.mh vr4{mr0}, r15, vr4
0013c8  e7072fec  storeli.w r2, -2440(r30)
0013cc  8f072518  div.f.rn r15, r10, r2
0013d0  7a112140  vextracti.f r2, 2(vr2)
0013d4  6aa24336  vor.u.mh vr4{mr3}, r7, vr4
0013d8  42950202  vload_mask16.mz vr10{mr1}, 0(r5)
0013dc  9f120000  addli r5, zero, 1
0013e0  7e8002e0  vmmov mr0, r5
0013e4  9f220000  addli r5, zero, 2
0013e8  6aa5a130  vor.u.mh vr10{mr0}, r3, vr10
0013ec  8f812d18  div.f.rn r3, r27, r2
0013f0  e7472fec  storeli.w r2, -2436(r30)
0013f4  7a113140  vextracti.f r2, 3(vr2)
0013f8  7e8002e0  vmmov mr0, r5
0013fc  9f420000  addli r5, zero, 4
001400  8f832a18  div.f.rn r7, r21, r2
001404  6aa5a730  vor.u.mh vr10{mr0}, r15, vr10
001408  67032fec  storeli.w r2, -2512(r30)
00140c  7a114140  vextracti.f r2, 4(vr2)
001410  7e8002e0  vmmov mr0, r5
001414  9f021000  addli r5, zero, 8
001418  8f874919  div.f.rn r15, r19, r20
00141c  fa19f140  vextracti.f r19, 15(vr2)
001420  6aa5a130  vor.u.mh vr10{mr0}, r3, vr10
001424  8f012218  div.f.rn r3, r4, r2
001428  e7062fec  storeli.w r2, -2456(r30)
00142c  7a115140  vextracti.f r2, 5(vr2)
001430  7e8002e0  vmmov mr0, r5
001434  9f024000  addli r5, zero, 32
001438  fe8102e0  vmmov mr3, r5
00143c  9f020002  addli r5, zero, 256
001440  6aa5a330  vor.u.mh vr10{mr0}, r7, vr10
001444  8f832018  div.f.rn r7, r1, r2
001448  67472fec  storeli.w r2, -2444(r30)
00144c  7a116140  vextracti.f r2, 6(vr2)
001450  7e8002e0  vmmov mr0, r5
001454  9f020004  addli r5, zero, 512
001458  6aa5a134  vor.u.mh vr10{mr2}, r3, vr10
00145c  8f812518  div.f.rn r3, r11, r2
001460  67072fec  storeli.w r2, -2448(r30)
001464  7a117140  vextracti.f r2, 7(vr2)
001468  6aa5a336  vor.u.mh vr10{mr3}, r7, vr10
00146c  e7462fec  storeli.w r2, -2452(r30)
001470  8f032b18  div.f.rn r7, r22, r2
001474  1f018000  addli r2, zero, 64
001478  fe0101e0  vmmov mr3, r2
00147c  1f010001  addli r2, zero, 128
001480  6aa5a136  vor.u.mh vr10{mr3}, r3, vr10
001484  8f819818  div.f.rn r3, r17, r9
001488  fe0101e0  vmmov mr3, r2
00148c  7a11a140  vextracti.f r2, 10(vr2)
001490  6aa5a336  vor.u.mh vr10{mr3}, r7, vr10
001494  8f03d718  div.f.rn r7, r14, r13
001498  fe8102e0  vmmov mr3, r5
00149c  9f020008  addli r5, zero, 1024
0014a0  6aa5a130  vor.u.mh vr10{mr0}, r3, vr10
0014a4  8f012818  div.f.rn r3, r16, r2
0014a8  7e8002e0  vmmov mr0, r5
0014ac  9f020010  addli r5, zero, 2048
0014b0  6aa5a336  vor.u.mh vr10{mr3}, r7, vr10
0014b4  8f037d19  div.f.rn r7, r26, r23
0014b8  6aa5a130  vor.u.mh vr10{mr0}, r3, vr10
0014bc  8f018318  div.f.rn r3, r6, r8
0014c0  7e8002e0  vmmov mr0, r5
0014c4  9f020fee  addli r5, r30, -2304
0014c8  6aa5a330  vor.u.mh vr10{mr0}, r7, vr10
0014cc  9f030020  addli r7, zero, 4096
0014d0  46903202  vstore_mask16.mz vr3{mr1}, 0(r5)
0014d4  fa12e140  vextracti.f r5, 14(vr2)
0014d8  7e8003e0  vmmov mr0, r7
0014dc  fa930340  vextracti.f r7, 0(vr7)
0014e0  6aa5a130  vor.u.mh vr10{mr0}, r3, vr10
0014e4  8f015618  div.f.rn r3, r12, r5
0014e8  1f060040  addli r12, zero, 8192
0014ec  0f097918  div.f.rn r18, r18, r7
0014f0  7e0006e0  vmmov mr0, r12
0014f4  7a961340  vextracti.f r12, 1(vr7)
0014f8  6aa5a730  vor.u.mh vr10{mr0}, r15, vr10
0014fc  8f073e19  div.f.rn r15, r28, r19
001500  7e000ce0  vmmov mr0, r24
001504  7a9c2340  vextracti.f r24, 2(vr7)
001508  6aa5a130  vor.u.mh vr10{mr0}, r3, vr10
00150c  8f01c518  div.f.rn r3, r10, r12
001510  2b850000  lui r10, 8
001514  7e0005e0  vmmov mr0, r10
001518  1f050ff7  addli r10, r30, -1152
00151c  6aa5a730  vor.u.mh vr10{mr0}, r15, vr10
001520  c2150502  vload_mask16.mz vr11{mr1}, 0(r10)
001524  1f150000  addli r10, zero, 1
001528  fa973340  vextracti.f r15, 3(vr7)
00152c  7e0005e0  vmmov mr0, r10
001530  0f858d19  div.f.rn r10, r27, r24
001534  fa9de340  vextracti.f r27, 14(vr7)
001538  ea25b930  vor.u.mh vr11{mr0}, r18, vr11
00153c  1f290000  addli r18, zero, 2
001540  7e0009e0  vmmov mr0, r18
001544  1f490000  addli r18, zero, 4
001548  eaa5b130  vor.u.mh vr11{mr0}, r3, vr11
00154c  7e0009e0  vmmov mr0, r18
001550  8f81fa18  div.f.rn r3, r21, r15
001554  1f091000  addli r18, zero, 8
001558  fa9ac340  vextracti.f r21, 12(vr7)
00155c  ea25b530  vor.u.mh vr11{mr0}, r10, vr11
001560  7a954340  vextracti.f r10, 4(vr7)
001564  7e0009e0  vmmov mr0, r18
001568  7a995340  vextracti.f r18, 5(vr7)
00156c  0f02a218  div.f.rn r4, r4, r10
001570  8f802019  div.f.rn r1, r1, r18
001574  eaa5b130  vor.u.mh vr11{mr0}, r3, vr11
001578  9f010ff0  addli r3, r30, -2048
00157c  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
001580  8f819519  div.f.rn r3, r11, r25
001584  86b00100  vfp162float_l.rn vr1, vr3
001588  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
00158c  fa957340  vextracti.f r11, 7(vr7)
001590  86f00100  vfp162float_h.rn vr1, vr3
001594  96101302  vadd.f.mz.rn vr1{mr1}, vr6, vr1
001598  06130000  vfloat2fp16_l.rn vr6, vr0
00159c  06d30000  vfloat2fp16_h.rn vr6, vr1
0015a0  86300300  vfp162float_l.rn vr1, vr6
0015a4  ea25b234  vor.u.mh vr11{mr2}, r4, vr11
0015a8  1f024000  addli r4, zero, 32
0015ac  7e0002e0  vmmov mr0, r4
0015b0  1f028000  addli r4, zero, 64
0015b4  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
0015b8  7e0002e0  vmmov mr0, r4
0015bc  1f020ff7  addli r4, r30, -1152
0015c0  8f00bb18  div.f.rn r1, r22, r11
0015c4  7a9b8340  vextracti.f r22, 8(vr7)
0015c8  eaa5b130  vor.u.mh vr11{mr0}, r3, vr11
0015cc  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
0015d0  1f020feb  addli r4, r30, -2688
0015d4  8f816819  div.f.rn r3, r17, r22
0015d8  fa989340  vextracti.f r17, 9(vr7)
0015dc  42110202  vload_mask16.mz vr2{mr1}, 0(r4)
0015e0  2bf20000  lui r4, 15
0015e4  1f72f21f  addli r4, r4, 4095
0015e8  7e0002e0  vmmov mr0, r4
0015ec  1f020001  addli r4, zero, 128
0015f0  fe0102e0  vmmov mr3, r4
0015f4  1f020002  addli r4, zero, 256
0015f8  6e101130  vor.f.mh vr0{mr0}, vr2, vr1
0015fc  eaa5b036  vor.u.mh vr11{mr3}, r1, vr11
001600  8f001719  div.f.rn r1, r14, r17
001604  7a97a340  vextracti.f r14, 10(vr7)
001608  7e0102e0  vmmov mr2, r4
00160c  1f028ff6  addli r4, r30, -1216
001610  eaa5b134  vor.u.mh vr11{mr2}, r3, vr11
001614  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
001618  8f01e818  div.f.rn r3, r16, r14
00161c  7a98b340  vextracti.f r16, 11(vr7)
001620  1e101002  vsub.f.mz.rn vr0{mr1}, vr0, vr1
001624  46101202  vstore_mask16.mz vr1{mr1}, 0(r4)
001628  1f020ff0  addli r4, r30, -2048
00162c  46100202  vstore_mask16.mz vr0{mr1}, 0(r4)
001630  1f020004  addli r4, zero, 512
001634  8e100002  vmul.f.mz.rn vr1{mr1}, vr0, vr0
001638  fe0102e0  vmmov mr3, r4
00163c  1f020008  addli r4, zero, 1024
001640  eaa5b036  vor.u.mh vr11{mr3}, r1, vr11
001644  8f000d19  div.f.rn r1, r26, r16
001648  7a9df340  vextracti.f r26, 15(vr7)
00164c  7e0102e0  vmmov mr2, r4
001650  1f020010  addli r4, zero, 2048
001654  eaa5b134  vor.u.mh vr11{mr2}, r3, vr11
001658  9f018fef  addli r3, r30, -2112
00165c  7e0102e0  vmmov mr2, r4
001660  1f020020  addli r4, zero, 4096
001664  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
001668  0e101002  vmul.f.mz.rn vr0{mr1}, vr0, vr1
00166c  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
001670  8f015319  div.f.rn r3, r6, r21
001674  eaa5b034  vor.u.mh vr11{mr2}, r1, vr11
001678  9f008ff0  addli r1, r30, -1984
00167c  7a93d340  vextracti.f r6, 13(vr7)
001680  7e0102e0  vmmov mr2, r4
001684  1f020040  addli r4, zero, 8192
001688  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00168c  e3008fed  loadli.w r1,  -2368(r30)
001690  86300000  vfp162float_l.rn vr1, vr0
001694  86710000  vfp162float_h.rn vr3, vr0
001698  96901202  vadd.f.mz.rn vr1{mr1}, vr5, vr1
00169c  86720300  vfp162float_h.rn vr5, vr6
0016a0  96913402  vadd.f.mz.rn vr3{mr1}, vr9, vr3
0016a4  8f806018  div.f.rn r1, r1, r6
0016a8  eaa5b134  vor.u.mh vr11{mr2}, r3, vr11
0016ac  e3010fed  loadli.w r3,  -2432(r30)
0016b0  7e0102e0  vmmov mr2, r4
0016b4  1f020ff7  addli r4, r30, -1152
0016b8  8f81b119  div.f.rn r3, r3, r27
0016bc  eaa5b034  vor.u.mh vr11{mr2}, r1, vr11
0016c0  42130202  vload_mask16.mz vr6{mr1}, 0(r4)
0016c4  2b420000  lui r4, 4
0016c8  8f00ae19  div.f.rn r1, r28, r26
0016cc  7e0102e0  vmmov mr2, r4
0016d0  2b820000  lui r4, 8
0016d4  eaa5b134  vor.u.mh vr11{mr2}, r3, vr11
0016d8  9f010ff7  addli r3, r30, -1152
0016dc  7e0102e0  vmmov mr2, r4
0016e0  6e135130  vor.f.mh vr6{mr0}, vr2, vr5
0016e4  86920000  vfloat2fp16_l.rn vr5, vr1
0016e8  86d20100  vfloat2fp16_h.rn vr5, vr3
0016ec  86b10200  vfp162float_l.rn vr3, vr5
0016f0  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0016f4  eaa5b034  vor.u.mh vr11{mr2}, r1, vr11
0016f8  9f000ff7  addli r1, r30, -1152
0016fc  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001700  9f000ff4  addli r1, r30, -1536
001704  ee103130  vor.f.mh vr1{mr0}, vr2, vr3
001708  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
00170c  76910102  veq.f.mz mr2{mr1}, vr3, vr0
001710  86f10200  vfp162float_h.rn vr3, vr5
001714  fe0001a0  vmmov r1, mr2
001718  73181fbe  store.h r1, -1040(r30)
00171c  e300eff7  loadli.w r1,  -1040(r30)
001720  c2920102  vload_mask16.mz vr5{mr1}, 0(r3)
001724  7e8100e0  vmmov mr2, r1
001728  9f000ff6  addli r1, r30, -1280
00172c  7e010100  vmand mr2, mr2, mr0
001730  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001734  ee123130  vor.f.mh vr5{mr0}, vr2, vr3
001738  9e110302  vsub.f.mz.rn vr3{mr1}, vr6, vr0
00173c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001740  9f000fed  addli r1, r30, -2432
001744  00a00000  mfence { lm }
001748  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
00174c  9f000ff2  addli r1, r30, -1792
001750  8e943102  vmul.f.mz.rn vr9{mr1}, vr3, vr3
001754  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
001758  9f008fed  addli r1, r30, -2368
00175c  9e906002  vsub.f.mz.rn vr1{mr1}, vr1, vr6
001760  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
001764  9f008ff4  addli r1, r30, -1472
001768  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00176c  9f008ff0  addli r1, r30, -1984
001770  1e900202  vsub.f.mz.rn vr0{mr1}, vr5, vr0
001774  8e921002  vmul.f.mz.rn vr5{mr1}, vr1, vr1
001778  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00177c  9f000ff7  addli r1, r30, -1152
001780  0e100002  vmul.f.mz.rn vr0{mr1}, vr0, vr0
001784  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
001788  9f000fef  addli r1, r30, -2176
00178c  6e143134  vor.f.mh vr8{mr2}, vr2, vr3
001790  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
001794  9f008fee  addli r1, r30, -2240
001798  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
00179c  9f000fee  addli r1, r30, -2304
0017a0  8e919102  vmul.f.mz.rn vr3{mr1}, vr3, vr9
0017a4  8e905002  vmul.f.mz.rn vr1{mr1}, vr1, vr5
0017a8  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
0017ac  9f008fee  addli r1, r30, -2240
0017b0  0e900202  vmul.f.mz.rn vr0{mr1}, vr5, vr0
0017b4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0017b8  9f000ff0  addli r1, r30, -2048
0017bc  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0017c0  9f000fef  addli r1, r30, -2176
0017c4  0e108002  vmul.f.mz.rn vr0{mr1}, vr0, vr8
0017c8  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0017cc  9f008fef  addli r1, r30, -2112
0017d0  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0017d4  9f000ff0  addli r1, r30, -2048
0017d8  0e108002  vmul.f.mz.rn vr0{mr1}, vr0, vr8
0017dc  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0017e0  9f000ff7  addli r1, r30, -1152
0017e4  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
0017e8  9f008ff3  addli r1, r30, -1600
0017ec  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0017f0  76118002  veq.f.mz mr2{mr1}, vr0, vr8
0017f4  fe0001a0  vmmov r1, mr2
0017f8  731a1fbe  store.h r1, -1036(r30)
0017fc  9f000ff7  addli r1, r30, -1152
001800  e341eff7  loadli.w r3,  -1036(r30)
001804  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
001808  9f000ff3  addli r1, r30, -1664
00180c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001810  76118002  veq.f.mz mr2{mr1}, vr0, vr8
001814  fe0001a0  vmmov r1, mr2
001818  731c1fbe  store.h r1, -1032(r30)
00181c  9f000ff7  addli r1, r30, -1152
001820  6302fff7  loadli.w r4,  -1032(r30)
001824  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
001828  fe0102e0  vmmov mr3, r4
00182c  76918302  veq.f.mz mr2{mr1}, vr7, vr8
001830  fe0001a0  vmmov r1, mr2
001834  7e8101e0  vmmov mr2, r3
001838  731e1fbe  store.h r1, -1028(r30)
00183c  e340fff7  loadli.w r1,  -1028(r30)
001840  00a00000  mfence { lm }
001844  7e8000e0  vmmov mr0, r1
001848  9f008fef  addli r1, r30, -2112
00184c  7e0000a0  vmmov zero, mr0
001850  67800000  storeli.w zero, 0(r1)
001854  abf00000  lui r1, 15
001858  17200000  xor zero, zero, zero
00185c  9ff0f01f  addli r1, r1, 4095
001860  9f012000  addli r3, zero, 16
001864  7e8000e0  vmmov mr0, r1
001868  9f000ff7  addli r1, r30, -1152
00186c  7e010100  vmand mr2, mr2, mr0
001870  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
001874  6e128134  vor.f.mh vr4{mr2}, vr2, vr8
001878  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
00187c  9f008fef  addli r1, r30, -2112
001880  7e810100  vmand mr2, mr3, mr0
001884  fe8101e0  vmmov mr3, r3
001888  63800000  loadli.w zero,  0(r1)
00188c  9f000ff7  addli r1, r30, -1152
001890  8e914102  vmul.f.mz.rn vr3{mr1}, vr3, vr4
001894  6e158134  vor.f.mh vr10{mr2}, vr2, vr8
001898  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
00189c  9f000fed  addli r1, r30, -2432
0018a0  7e0100e0  vmmov mr2, zero
0018a4  17200000  xor zero, zero, zero
0018a8  7e000100  vmand mr0, mr2, mr0
0018ac  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0018b0  9f008fed  addli r1, r30, -2368
0018b4  8e90a002  vmul.f.mz.rn vr1{mr1}, vr1, vr10
0018b8  ee158130  vor.f.mh vr11{mr0}, vr2, vr8
0018bc  0e144002  vmul.f.mz.rn vr8{mr1}, vr0, vr4
0018c0  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0018c4  9f008ff0  addli r1, r30, -1984
0018c8  0e12a002  vmul.f.mz.rn vr4{mr1}, vr0, vr10
0018cc  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0018d0  9f008fee  addli r1, r30, -2240
0018d4  16134302  vadd.f.mz.rn vr6{mr1}, vr6, vr4
0018d8  8e12b002  vmul.f.mz.rn vr5{mr1}, vr0, vr11
0018dc  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0018e0  9f008ff4  addli r1, r30, -1472
0018e4  0e15b002  vmul.f.mz.rn vr10{mr1}, vr0, vr11
0018e8  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
0018ec  9f008ff6  addli r1, r30, -1216
0018f0  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0018f4  9f000fef  addli r1, r30, -2176
0018f8  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0018fc  9f008ff6  addli r1, r30, -1216
001900  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001904  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001908  9f008ff2  addli r1, r30, -1728
00190c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001910  9f008ff1  addli r1, r30, -1856
001914  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
001918  9f000ff0  addli r1, r30, -2048
00191c  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
001920  9f008ff1  addli r1, r30, -1856
001924  96942402  vadd.f.mz.rn vr9{mr1}, vr9, vr2
001928  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
00192c  9f000ff6  addli r1, r30, -1280
001930  92340002  vadd.s.mz vr9{mr1}, zero, vr0
001934  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001938  9694a402  vadd.f.mz.rn vr9{mr1}, vr9, vr10
00193c  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
001940  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001944  9f000ff4  addli r1, r30, -1536
001948  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
00194c  9f000ff5  addli r1, r30, -1408
001950  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
001954  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
001958  92317002  vadd.s.mz vr3{mr1}, zero, vr7
00195c  9233b002  vadd.s.mz vr7{mr1}, zero, vr11
001960  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
001964  96935302  vadd.f.mz.rn vr7{mr1}, vr7, vr5
001968  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00196c  9f000ff2  addli r1, r30, -1792
001970  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
001974  9f008ff5  addli r1, r30, -1344
001978  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
00197c  16111102  vadd.f.mz.rn vr2{mr1}, vr2, vr1
001980  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
001984  9f008ff3  addli r1, r30, -1600
001988  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
00198c  9f008ff5  addli r1, r30, -1344
001990  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
001994  9f000ff3  addli r1, r30, -1664
001998  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
00199c  e3407ff1  loadli.w r1,  -1860(r30)
0019a0  9f800001  addli r1, r1, 128
0019a4  1f820000  addli r4, r1, 0
0019a8  9f810000  addli r3, r1, 0
0019ac  9f000003  addli r1, zero, 384
0019b0  bb8011f8  bneq r3, r1, -4064
0019b4  9f008ff4  addli r1, r30, -1472
0019b8  e7415fec  storeli.w r5, -2532(r30)
0019bc  e7013fed  storeli.w r19, -2536(r30)
0019c0  e3418fec  loadli.w r3,  -2492(r30)
0019c4  9230a002  vadd.s.mz vr1{mr1}, zero, vr10
0019c8  9f020000  addli r5, zero, 0
0019cc  00a00000  mfence { lm }
0019d0  670cafed  storeli.w r26, -2368(r30)
0019d4  67008fee  storeli.w r8, -2304(r30)
0019d8  67086fee  storeli.w r6, -2176(r30)
0019dc  670c5fef  storeli.w r21, -2112(r30)
0019e0  6701bfec  storeli.w r11, -2544(r30)
0019e4  6704bfef  storeli.w r27, -2240(r30)
0019e8  67084fed  storeli.w r20, -2432(r30)
0019ec  6700dff0  storeli.w r13, -2048(r30)
0019f0  67049ff2  storeli.w r9, -1728(r30)
0019f4  67047ff0  storeli.w r7, -1984(r30)
0019f8  e74b9ff1  storeli.w r25, -1860(r30)
0019fc  6741cfec  storeli.w r12, -2540(r30)
001a00  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
001a04  9f008ff1  addli r1, r30, -1856
001a08  9611b402  vadd.f.mz.rn vr3{mr1}, vr8, vr11
001a0c  63446fec  loadli.w r8,  -2508(r30)
001a10  630d7fec  loadli.w r26,  -2504(r30)
001a14  e34a7fec  loadli.w r21,  -2500(r30)
001a18  63028fec  loadli.w r4,  -2496(r30)
001a1c  63036fec  loadli.w r6,  -2512(r30)
001a20  9f8d0200  addli r27, r5, 0
001a24  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
001a28  9f000ff6  addli r1, r30, -1280
001a2c  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
001a30  9f008ff6  addli r1, r30, -1216
001a34  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
001a38  9f000ff2  addli r1, r30, -1792
001a3c  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
001a40  9f000ff7  addli r1, r30, -1152
001a44  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001a48  76900102  veq.f.mz mr0{mr1}, vr3, vr0
001a4c  12303002  vadd.s.mz vr0{mr1}, zero, vr3
001a50  fe0500a0  vmmov r11, mr0
001a54  9b801500  andi r1, r11, 1
001a58  3bb00000  bneq r1, zero, 12
001a5c  fa100040  vextracti.f r1, 0(vr0)
001a60  8f8d1118  div.f.rn r27, r3, r1
001a64  9bc0f500  srli r1, r11, 15
001a68  9f430000  addli r7, zero, 4
001a6c  e34cbfec  loadli.w r25,  -2468(r30)
001a70  6306bfec  loadli.w r12,  -2472(r30)
001a74  e304afec  loadli.w r9,  -2480(r30)
001a78  e3469fec  loadli.w r13,  -2484(r30)
001a7c  630e9fec  loadli.w r28,  -2488(r30)
001a80  1f0a0d00  addli r20, r26, 0
001a84  9f090400  addli r19, r8, 0
001a88  9b811000  andi r3, r1, 1
001a8c  7e8003e0  vmmov mr0, r7
001a90  9f800200  addli r1, r5, 0
001a94  9f030200  addli r7, r4, 0
001a98  3bc00100  bneq r3, zero, 16
001a9c  fa10f040  vextracti.f r1, 15(vr0)
001aa0  e3014fec  loadli.w r3,  -2528(r30)
001aa4  8f801118  div.f.rn r1, r3, r1
001aa8  9bc1e500  srli r3, r11, 14
001aac  6304cfec  loadli.w r8,  -2464(r30)
001ab0  634dafec  loadli.w r26,  -2476(r30)
001ab4  1f820200  addli r4, r5, 0
001ab8  6744afec  storeli.w r10, -2492(r30)
001abc  9b811100  andi r3, r3, 1
001ac0  3bc00100  bneq r3, zero, 16
001ac4  fa11e040  vextracti.f r3, 14(vr0)
001ac8  63424fec  loadli.w r4,  -2524(r30)
001acc  0f023218  div.f.rn r4, r4, r3
001ad0  9bc1d500  srli r3, r11, 13
001ad4  1f850200  addli r10, r5, 0
001ad8  6742efec  storeli.w r14, -2524(r30)
001adc  9b811100  andi r3, r3, 1
001ae0  3bc00100  bneq r3, zero, 16
001ae4  fa11d040  vextracti.f r3, 13(vr0)
001ae8  63055fec  loadli.w r10,  -2520(r30)
001aec  0f053518  div.f.rn r10, r10, r3
001af0  9bc1c500  srli r3, r11, 12
001af4  1f870200  addli r14, r5, 0
001af8  e7021fed  storeli.w r17, -2520(r30)
001afc  9b811100  andi r3, r3, 1
001b00  3bb00100  bneq r3, zero, 12
001b04  fa11c040  vextracti.f r3, 12(vr0)
001b08  0f073e18  div.f.rn r14, r28, r3
001b0c  9bc1b500  srli r3, r11, 11
001b10  9f880200  addli r17, r5, 0
001b14  9b811100  andi r3, r3, 1
001b18  3bb00100  bneq r3, zero, 12
001b1c  fa11b040  vextracti.f r3, 11(vr0)
001b20  8f883618  div.f.rn r17, r13, r3
001b24  9bc1a500  srli r3, r11, 10
001b28  9f860200  addli r13, r5, 0
001b2c  9b811100  andi r3, r3, 1
001b30  3bb00100  bneq r3, zero, 12
001b34  fa11a040  vextracti.f r3, 10(vr0)
001b38  8f863418  div.f.rn r13, r9, r3
001b3c  9bc19500  srli r3, r11, 9
001b40  9f840200  addli r9, r5, 0
001b44  67050fed  storeli.w r16, -2480(r30)
001b48  9b811100  andi r3, r3, 1
001b4c  3bb00100  bneq r3, zero, 12
001b50  fa119040  vextracti.f r3, 9(vr0)
001b54  8f043d18  div.f.rn r9, r26, r3
001b58  9bc18500  srli r3, r11, 8
001b5c  1f880200  addli r16, r5, 0
001b60  9b811100  andi r3, r3, 1
001b64  3bb00100  bneq r3, zero, 12
001b68  fa118040  vextracti.f r3, 8(vr0)
001b6c  0f083618  div.f.rn r16, r12, r3
001b70  9bc17500  srli r3, r11, 7
001b74  1f860200  addli r12, r5, 0
001b78  e705ffec  storeli.w r15, -2472(r30)
001b7c  9b811100  andi r3, r3, 1
001b80  3bb00100  bneq r3, zero, 12
001b84  fa117040  vextracti.f r3, 7(vr0)
001b88  0f863c18  div.f.rn r12, r25, r3
001b8c  9bc16500  srli r3, r11, 6
001b90  9f0c0900  addli r25, r18, 0
001b94  9b871100  andi r15, r3, 1
001b98  9f810200  addli r3, r5, 0
001b9c  3bb00700  bneq r15, zero, 12
001ba0  fa116040  vextracti.f r3, 6(vr0)
001ba4  8f013418  div.f.rn r3, r8, r3
001ba8  9bc75500  srli r15, r11, 5
001bac  1f890200  addli r18, r5, 0
001bb0  9b871700  andi r15, r15, 1
001bb4  3bb00700  bneq r15, zero, 12
001bb8  fa175040  vextracti.f r15, 5(vr0)
001bbc  0f89f918  div.f.rn r18, r19, r15
001bc0  9bc74500  srli r15, r11, 4
001bc4  9f890200  addli r19, r5, 0
001bc8  9b871700  andi r15, r15, 1
001bcc  3bb00700  bneq r15, zero, 12
001bd0  fa174040  vextracti.f r15, 4(vr0)
001bd4  8f09fa18  div.f.rn r19, r20, r15
001bd8  9bc73500  srli r15, r11, 3
001bdc  1f0e0b00  addli r28, r22, 0
001be0  1f8a0200  addli r20, r5, 0
001be4  9b871700  andi r15, r15, 1
001be8  3bb00700  bneq r15, zero, 12
001bec  fa173040  vextracti.f r15, 3(vr0)
001bf0  0f8afa18  div.f.rn r20, r21, r15
001bf4  9bc72500  srli r15, r11, 2
001bf8  1f8b0200  addli r22, r5, 0
001bfc  9b871700  andi r15, r15, 1
001c00  3bc00700  bneq r15, zero, 16
001c04  fa172040  vextracti.f r15, 2(vr0)
001c08  634b5fec  loadli.w r22,  -2516(r30)
001c0c  0f0bfb18  div.f.rn r22, r22, r15
001c10  9bc51500  srli r11, r11, 1
001c14  e34acfec  loadli.w r21,  -2460(r30)
001c18  9b871500  andi r15, r11, 1
001c1c  9f850200  addli r11, r5, 0
001c20  3bb00700  bneq r15, zero, 12
001c24  fa151040  vextracti.f r11, 1(vr0)
001c28  8f85b318  div.f.rn r11, r7, r11
001c2c  9f030ff7  addli r7, r30, -1152
001c30  96101002  vadd.f.mz.rn vr1{mr1}, vr0, vr1
001c34  c2910302  vload_mask16.mz vr3{mr1}, 0(r7)
001c38  9f130000  addli r7, zero, 1
001c3c  7e8103e0  vmmov mr2, r7
001c40  9f230000  addli r7, zero, 2
001c44  92353002  vadd.s.mz vr11{mr1}, zero, vr3
001c48  eaa5bd34  vor.u.mh vr11{mr2}, r27, vr11
001c4c  7e8103e0  vmmov mr2, r7
001c50  9f031000  addli r7, zero, 8
001c54  eaa5b534  vor.u.mh vr11{mr2}, r11, vr11
001c58  ea25bb30  vor.u.mh vr11{mr0}, r22, vr11
001c5c  7e8003e0  vmmov mr0, r7
001c60  9f034000  addli r7, zero, 32
001c64  ea25ba30  vor.u.mh vr11{mr0}, r20, vr11
001c68  7e8003e0  vmmov mr0, r7
001c6c  9f038000  addli r7, zero, 64
001c70  eaa5b936  vor.u.mh vr11{mr3}, r19, vr11
001c74  ea25b930  vor.u.mh vr11{mr0}, r18, vr11
001c78  7e8003e0  vmmov mr0, r7
001c7c  eaa5b130  vor.u.mh vr11{mr0}, r3, vr11
001c80  9f010001  addli r3, zero, 128
001c84  7e8001e0  vmmov mr0, r3
001c88  9f010002  addli r3, zero, 256
001c8c  ea25b630  vor.u.mh vr11{mr0}, r12, vr11
001c90  7e8001e0  vmmov mr0, r3
001c94  9f010004  addli r3, zero, 512
001c98  ea25b830  vor.u.mh vr11{mr0}, r16, vr11
001c9c  7e8001e0  vmmov mr0, r3
001ca0  9f010008  addli r3, zero, 1024
001ca4  eaa5b430  vor.u.mh vr11{mr0}, r9, vr11
001ca8  7e8001e0  vmmov mr0, r3
001cac  9f010010  addli r3, zero, 2048
001cb0  eaa5b630  vor.u.mh vr11{mr0}, r13, vr11
001cb4  7e8001e0  vmmov mr0, r3
001cb8  9f010020  addli r3, zero, 4096
001cbc  eaa5b830  vor.u.mh vr11{mr0}, r17, vr11
001cc0  7e8001e0  vmmov mr0, r3
001cc4  9f010040  addli r3, zero, 8192
001cc8  ea25b730  vor.u.mh vr11{mr0}, r14, vr11
001ccc  7e8001e0  vmmov mr0, r3
001cd0  9f018ff3  addli r3, r30, -1600
001cd4  ea25b530  vor.u.mh vr11{mr0}, r10, vr11
001cd8  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
001cdc  ab410000  lui r3, 4
001ce0  7e8001e0  vmmov mr0, r3
001ce4  ab810000  lui r3, 8
001ce8  ea25b230  vor.u.mh vr11{mr0}, r4, vr11
001cec  76903002  veq.f.mz mr0{mr1}, vr1, vr3
001cf0  1f820200  addli r4, r5, 0
001cf4  7e0400a0  vmmov r8, mr0
001cf8  7e8001e0  vmmov mr0, r3
001cfc  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
001d00  9b001400  andi r1, r8, 1
001d04  3bb00000  bneq r1, zero, 12
001d08  fa900040  vextracti.f r1, 0(vr1)
001d0c  0f821a18  div.f.rn r4, r21, r1
001d10  9b40f400  srli r1, r8, 15
001d14  e309dfec  loadli.w r19,  -2456(r30)
001d18  6349efec  loadli.w r18,  -2444(r30)
001d1c  e308efec  loadli.w r17,  -2448(r30)
001d20  6348dfec  loadli.w r16,  -2452(r30)
001d24  e3078ff2  loadli.w r15,  -1728(r30)
001d28  63070ff0  loadli.w r14,  -2048(r30)
001d2c  e3050fee  loadli.w r11,  -2304(r30)
001d30  63050fed  loadli.w r10,  -2432(r30)
001d34  e3443fec  loadli.w r9,  -2532(r30)
001d38  e3033fec  loadli.w r7,  -2536(r30)
001d3c  1f0b0e00  addli r22, r28, 0
001d40  9b811000  andi r3, r1, 1
001d44  9f800200  addli r1, r5, 0
001d48  3bb00100  bneq r3, zero, 12
001d4c  fa90f040  vextracti.f r1, 15(vr1)
001d50  8f801318  div.f.rn r1, r7, r1
001d54  9b41e400  srli r3, r8, 14
001d58  1f460000  addli r12, zero, 4
001d5c  630dffec  loadli.w r26,  -2440(r30)
001d60  634effec  loadli.w r28,  -2436(r30)
001d64  9b831100  andi r7, r3, 1
001d68  9f810200  addli r3, r5, 0
001d6c  7e0006e0  vmmov mr0, r12
001d70  3bb00300  bneq r7, zero, 12
001d74  fa91e040  vextracti.f r3, 14(vr1)
001d78  8f813418  div.f.rn r3, r9, r3
001d7c  9b43d400  srli r7, r8, 13
001d80  9b841300  andi r9, r7, 1
001d84  9f830200  addli r7, r5, 0
001d88  3bb00400  bneq r9, zero, 12
001d8c  fa93d040  vextracti.f r7, 13(vr1)
001d90  8f037518  div.f.rn r7, r10, r7
001d94  9b44c400  srli r9, r8, 12
001d98  1b851400  andi r10, r9, 1
001d9c  9f840200  addli r9, r5, 0
001da0  3b300500  bneq r10, zero, 12
001da4  fa94c040  vextracti.f r9, 12(vr1)
001da8  8f849518  div.f.rn r9, r11, r9
001dac  1b45b400  srli r10, r8, 11
001db0  9b051500  andi r11, r10, 1
001db4  1f850200  addli r10, r5, 0
001db8  3bb00500  bneq r11, zero, 12
001dbc  7a95b040  vextracti.f r10, 11(vr1)
001dc0  0f85ab18  div.f.rn r10, r23, r10
001dc4  9b45a400  srli r11, r8, 10
001dc8  1b861500  andi r12, r11, 1
001dcc  9f850200  addli r11, r5, 0
001dd0  3b300600  bneq r12, zero, 12
001dd4  fa95a040  vextracti.f r11, 10(vr1)
001dd8  8f05b118  div.f.rn r11, r2, r11
001ddc  1b469400  srli r12, r8, 9
001de0  9b061600  andi r13, r12, 1
001de4  1f860200  addli r12, r5, 0
001de8  3bb00600  bneq r13, zero, 12
001dec  7a969040  vextracti.f r12, 9(vr1)
001df0  0f06c718  div.f.rn r12, r14, r12
001df4  9b468400  srli r13, r8, 8
001df8  63018fef  loadli.w r2,  -2112(r30)
001dfc  1b871600  andi r14, r13, 1
001e00  9f860200  addli r13, r5, 0
001e04  3b300700  bneq r14, zero, 12
001e08  fa968040  vextracti.f r13, 8(vr1)
001e0c  8f86d718  div.f.rn r13, r15, r13
001e10  1b477400  srli r14, r8, 7
001e14  9b071700  andi r15, r14, 1
001e18  1f870200  addli r14, r5, 0
001e1c  3bb00700  bneq r15, zero, 12
001e20  7a977040  vextracti.f r14, 7(vr1)
001e24  0f07e818  div.f.rn r14, r16, r14
001e28  9b476400  srli r15, r8, 6
001e2c  1b881700  andi r16, r15, 1
001e30  9f870200  addli r15, r5, 0
001e34  3b300800  bneq r16, zero, 12
001e38  fa976040  vextracti.f r15, 6(vr1)
001e3c  8f87f818  div.f.rn r15, r17, r15
001e40  1b485400  srli r16, r8, 5
001e44  9b081800  andi r17, r16, 1
001e48  1f880200  addli r16, r5, 0
001e4c  3bb00800  bneq r17, zero, 12
001e50  7a985040  vextracti.f r16, 5(vr1)
001e54  0f080919  div.f.rn r16, r18, r16
001e58  9b484400  srli r17, r8, 4
001e5c  1b891800  andi r18, r17, 1
001e60  9f880200  addli r17, r5, 0
001e64  3b300900  bneq r18, zero, 12
001e68  fa984040  vextracti.f r17, 4(vr1)
001e6c  8f881919  div.f.rn r17, r19, r17
001e70  1b493400  srli r18, r8, 3
001e74  9b091900  andi r19, r18, 1
001e78  1f890200  addli r18, r5, 0
001e7c  3bb00900  bneq r19, zero, 12
001e80  7a993040  vextracti.f r18, 3(vr1)
001e84  0f092319  div.f.rn r18, r6, r18
001e88  9b492400  srli r19, r8, 2
001e8c  1b8a1900  andi r20, r19, 1
001e90  9f890200  addli r19, r5, 0
001e94  3b300a00  bneq r20, zero, 12
001e98  fa992040  vextracti.f r19, 2(vr1)
001e9c  8f093e19  div.f.rn r19, r28, r19
001ea0  1f038ff2  addli r6, r30, -1728
001ea4  00a00000  mfence { lm }
001ea8  1b441400  srli r8, r8, 1
001eac  46109302  vstore_mask16.mz vr9{mr1}, 0(r6)
001eb0  1f038ff4  addli r6, r30, -1472
001eb4  1b0a1400  andi r20, r8, 1
001eb8  1f840200  addli r8, r5, 0
001ebc  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
001ec0  63038ff0  loadli.w r6,  -1984(r30)
001ec4  3b300a00  bneq r20, zero, 12
001ec8  7a941040  vextracti.f r8, 1(vr1)
001ecc  0f048d18  div.f.rn r8, r26, r8
001ed0  1f0a0ff7  addli r20, r30, -1152
001ed4  16900002  vadd.f.mz.rn vr0{mr1}, vr1, vr0
001ed8  c2140a02  vload_mask16.mz vr9{mr1}, 0(r20)
001edc  1f1a0000  addli r20, zero, 1
001ee0  7e010ae0  vmmov mr2, r20
001ee4  92319002  vadd.s.mz vr3{mr1}, zero, vr9
001ee8  ea213234  vor.u.mh vr3{mr2}, r4, vr3
001eec  1f220000  addli r4, zero, 2
001ef0  7e0102e0  vmmov mr2, r4
001ef4  1f021000  addli r4, zero, 8
001ef8  ea213434  vor.u.mh vr3{mr2}, r8, vr3
001efc  eaa13930  vor.u.mh vr3{mr0}, r19, vr3
001f00  7e0002e0  vmmov mr0, r4
001f04  1f024000  addli r4, zero, 32
001f08  ea213930  vor.u.mh vr3{mr0}, r18, vr3
001f0c  7e0002e0  vmmov mr0, r4
001f10  1f028000  addli r4, zero, 64
001f14  eaa13836  vor.u.mh vr3{mr3}, r17, vr3
001f18  ea213830  vor.u.mh vr3{mr0}, r16, vr3
001f1c  7e0002e0  vmmov mr0, r4
001f20  1f020001  addli r4, zero, 128
001f24  7a180040  vextracti.f r16, 0(vr0)
001f28  eaa13730  vor.u.mh vr3{mr0}, r15, vr3
001f2c  7e0002e0  vmmov mr0, r4
001f30  1f020002  addli r4, zero, 256
001f34  ea213730  vor.u.mh vr3{mr0}, r14, vr3
001f38  7e0002e0  vmmov mr0, r4
001f3c  1f020004  addli r4, zero, 512
001f40  eaa13630  vor.u.mh vr3{mr0}, r13, vr3
001f44  7e0002e0  vmmov mr0, r4
001f48  1f020008  addli r4, zero, 1024
001f4c  ea213630  vor.u.mh vr3{mr0}, r12, vr3
001f50  7e0002e0  vmmov mr0, r4
001f54  1f020010  addli r4, zero, 2048
001f58  1f860200  addli r12, r5, 0
001f5c  eaa13530  vor.u.mh vr3{mr0}, r11, vr3
001f60  7e0002e0  vmmov mr0, r4
001f64  1f020020  addli r4, zero, 4096
001f68  ea213530  vor.u.mh vr3{mr0}, r10, vr3
001f6c  7e0002e0  vmmov mr0, r4
001f70  1f020040  addli r4, zero, 8192
001f74  eaa13430  vor.u.mh vr3{mr0}, r9, vr3
001f78  7e0002e0  vmmov mr0, r4
001f7c  2b420000  lui r4, 4
001f80  eaa13330  vor.u.mh vr3{mr0}, r7, vr3
001f84  7e0002e0  vmmov mr0, r4
001f88  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
001f8c  ab810000  lui r3, 8
001f90  76109002  veq.f.mz mr0{mr1}, vr0, vr9
001f94  fe0600a0  vmmov r13, mr0
001f98  7e8001e0  vmmov mr0, r3
001f9c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
001fa0  9b801600  andi r1, r13, 1
001fa4  3ba00000  bneq r1, zero, 8
001fa8  0f060319  div.f.rn r12, r6, r16
001fac  9bc0f600  srli r1, r13, 15
001fb0  7a12f040  vextracti.f r4, 15(vr0)
001fb4  e3457ff1  loadli.w r11,  -1860(r30)
001fb8  e3010fef  loadli.w r3,  -2176(r30)
001fbc  63038fed  loadli.w r6,  -2368(r30)
001fc0  1f840200  addli r8, r5, 0
001fc4  1f070c00  addli r14, r24, 0
001fc8  9f830c00  addli r7, r25, 0
001fcc  9b801000  andi r1, r1, 1
001fd0  3ba00000  bneq r1, zero, 8
001fd4  0f044318  div.f.rn r8, r6, r4
001fd8  9bc0e600  srli r1, r13, 14
001fdc  7a19e040  vextracti.f r18, 14(vr0)
001fe0  63038fee  loadli.w r6,  -2240(r30)
001fe4  9f840200  addli r9, r5, 0
001fe8  9b801000  andi r1, r1, 1
001fec  3ba00000  bneq r1, zero, 8
001ff0  8f042319  div.f.rn r9, r6, r18
001ff4  9bc0d600  srli r1, r13, 13
001ff8  7a13d040  vextracti.f r6, 13(vr0)
001ffc  1f850200  addli r10, r5, 0
002000  9b801000  andi r1, r1, 1
002004  3ba00000  bneq r1, zero, 8
002008  0f856118  div.f.rn r10, r3, r6
00200c  9bc0c600  srli r1, r13, 12
002010  fa11c040  vextracti.f r3, 12(vr0)
002014  9f870200  addli r15, r5, 0
002018  67046ff0  storeli.w r6, -1984(r30)
00201c  9b801000  andi r1, r1, 1
002020  3ba00000  bneq r1, zero, 8
002024  8f073118  div.f.rn r15, r2, r3
002028  9bc0b600  srli r1, r13, 11
00202c  7a11b040  vextracti.f r2, 11(vr0)
002030  67003ff0  storeli.w r3, -2048(r30)
002034  9f880200  addli r17, r5, 0
002038  00a00000  mfence { lm }
00203c  9b801000  andi r1, r1, 1
002040  67042ff4  storeli.w r2, -1472(r30)
002044  3bc00000  bneq r1, zero, 16
002048  e300afec  loadli.w r1,  -2480(r30)
00204c  63018ff4  loadli.w r2,  -1472(r30)
002050  8f882018  div.f.rn r17, r1, r2
002054  9bc0a600  srli r1, r13, 10
002058  67082ff3  storeli.w r18, -1664(r30)
00205c  7a19a040  vextracti.f r18, 10(vr0)
002060  1f830200  addli r6, r5, 0
002064  9b801000  andi r1, r1, 1
002068  3bb00000  bneq r1, zero, 12
00206c  e3404fec  loadli.w r1,  -2524(r30)
002070  0f832019  div.f.rn r6, r1, r18
002074  9bc09600  srli r1, r13, 9
002078  fa1a9040  vextracti.f r21, 9(vr0)
00207c  9f890200  addli r19, r5, 0
002080  9b801000  andi r1, r1, 1
002084  3bb00000  bneq r1, zero, 12
002088  e3005fec  loadli.w r1,  -2520(r30)
00208c  8f895019  div.f.rn r19, r1, r21
002090  1bc18600  srli r2, r13, 8
002094  fa108040  vextracti.f r1, 8(vr0)
002098  1f8a0200  addli r20, r5, 0
00209c  1b011100  andi r2, r2, 1
0020a0  3b200100  bneq r2, zero, 8
0020a4  0f0a1b18  div.f.rn r20, r22, r1
0020a8  1bc17600  srli r2, r13, 7
0020ac  fa117040  vextracti.f r3, 7(vr0)
0020b0  1f8b0200  addli r22, r5, 0
0020b4  1b011100  andi r2, r2, 1
0020b8  3b300100  bneq r2, zero, 12
0020bc  63012fec  loadli.w r2,  -2544(r30)
0020c0  0f0b3118  div.f.rn r22, r2, r3
0020c4  1bc16600  srli r2, r13, 6
0020c8  9f0c0200  addli r25, r4, 0
0020cc  7a126040  vextracti.f r4, 6(vr0)
0020d0  1f8c0200  addli r24, r5, 0
0020d4  1b011100  andi r2, r2, 1
0020d8  3b200100  bneq r2, zero, 8
0020dc  0f8c4518  div.f.rn r24, r11, r4
0020e0  1bc15600  srli r2, r13, 5
0020e4  fa155040  vextracti.f r11, 5(vr0)
0020e8  1f8d0200  addli r26, r5, 0
0020ec  e7475fed  storeli.w r21, -2436(r30)
0020f0  67002fef  storeli.w r18, -2304(r30)
0020f4  1b011100  andi r2, r2, 1
0020f8  3b200100  bneq r2, zero, 8
0020fc  0f8db318  div.f.rn r26, r7, r11
002100  1bc14600  srli r2, r13, 4
002104  fa1b4040  vextracti.f r23, 4(vr0)
002108  9f8d0200  addli r27, r5, 0
00210c  1b011100  andi r2, r2, 1
002110  3b300100  bneq r2, zero, 12
002114  63418fec  loadli.w r2,  -2492(r30)
002118  8f0d7119  div.f.rn r27, r2, r23
00211c  1bc13600  srli r2, r13, 3
002120  7a193040  vextracti.f r18, 3(vr0)
002124  1f8e0200  addli r28, r5, 0
002128  1b011100  andi r2, r2, 1
00212c  3b300100  bneq r2, zero, 12
002130  6301bfec  loadli.w r2,  -2472(r30)
002134  0f0e2119  div.f.rn r28, r2, r18
002138  1bc12600  srli r2, r13, 2
00213c  fa1a2040  vextracti.f r21, 2(vr0)
002140  9b031100  andi r7, r2, 1
002144  1f810200  addli r2, r5, 0
002148  3ba00300  bneq r7, zero, 8
00214c  0f015719  div.f.rn r2, r14, r21
002150  9bc31600  srli r7, r13, 1
002154  fa161040  vextracti.f r13, 1(vr0)
002158  1b871300  andi r14, r7, 1
00215c  9f830200  addli r7, r5, 0
002160  3b300700  bneq r14, zero, 12
002164  e3432fec  loadli.w r7,  -2540(r30)
002168  8f83d318  div.f.rn r7, r7, r13
00216c  1f070ff7  addli r14, r30, -1152
002170  42100702  vload_mask16.mz vr0{mr1}, 0(r14)
002174  1f170000  addli r14, zero, 1
002178  7e0007e0  vmmov mr0, r14
00217c  1f070040  addli r14, zero, 8192
002180  6a200630  vor.u.mh vr0{mr0}, r12, vr0
002184  1f260000  addli r12, zero, 2
002188  7e0006e0  vmmov mr0, r12
00218c  6aa00330  vor.u.mh vr0{mr0}, r7, vr0
002190  9f430000  addli r7, zero, 4
002194  7e8003e0  vmmov mr0, r7
002198  9f030020  addli r7, zero, 4096
00219c  6a200130  vor.u.mh vr0{mr0}, r2, vr0
0021a0  1f011000  addli r2, zero, 8
0021a4  7e0001e0  vmmov mr0, r2
0021a8  1f014000  addli r2, zero, 32
0021ac  6a200e30  vor.u.mh vr0{mr0}, r28, vr0
0021b0  7e0101e0  vmmov mr2, r2
0021b4  1f018000  addli r2, zero, 64
0021b8  6aa00d36  vor.u.mh vr0{mr3}, r27, vr0
0021bc  9f0d0800  addli r27, r16, 0
0021c0  6a200d34  vor.u.mh vr0{mr2}, r26, vr0
0021c4  7e0101e0  vmmov mr2, r2
0021c8  1f010001  addli r2, zero, 128
0021cc  1f8d0200  addli r26, r5, 0
0021d0  6a200c34  vor.u.mh vr0{mr2}, r24, vr0
0021d4  7e0101e0  vmmov mr2, r2
0021d8  1f010002  addli r2, zero, 256
0021dc  6a200b34  vor.u.mh vr0{mr2}, r22, vr0
0021e0  7e0101e0  vmmov mr2, r2
0021e4  1f010004  addli r2, zero, 512
0021e8  6a200a34  vor.u.mh vr0{mr2}, r20, vr0
0021ec  7e0101e0  vmmov mr2, r2
0021f0  1f010008  addli r2, zero, 1024
0021f4  6aa00934  vor.u.mh vr0{mr2}, r19, vr0
0021f8  7e0101e0  vmmov mr2, r2
0021fc  1f010010  addli r2, zero, 2048
002200  6a200334  vor.u.mh vr0{mr2}, r6, vr0
002204  7e0101e0  vmmov mr2, r2
002208  0be3dd10  add.f.rn r6, r27, r13
00220c  6aa00834  vor.u.mh vr0{mr2}, r17, vr0
002210  7e8103e0  vmmov mr2, r7
002214  1b319300  slli r2, r6, 9
002218  13e66206  setle.f r12, r5, r6
00221c  9b437301  srli r7, r6, 23
002220  6aa00734  vor.u.mh vr0{mr2}, r15, vr0
002224  7e0107e0  vmmov mr2, r14
002228  13010100  seteq r2, r2, zero
00222c  2b470000  lui r14, 4
002230  9b83f30f  andi r7, r7, 255
002234  9bf3f30f  setlti r7, r7, 255
002238  6a200534  vor.u.mh vr0{mr2}, r10, vr0
00223c  13655306  setle.f r10, r6, r5
002240  7e0107e0  vmmov mr2, r14
002244  17912300  or r2, r7, r2
002248  6aa00434  vor.u.mh vr0{mr2}, r9, vr0
00224c  ab840000  lui r9, 8
002250  7e8104e0  vmmov mr2, r9
002254  9703c500  and r7, r10, r12
002258  6a200434  vor.u.mh vr0{mr2}, r8, vr0
00225c  17812300  and r2, r7, r2
002260  3b200100  bneq r2, zero, 8
002264  0f8d6618  div.f.rn r26, r13, r6
002268  0be46a10  add.f.rn r8, r21, r6
00226c  e3090ff3  loadli.w r19,  -1664(r30)
002270  e3078ff0  loadli.w r15,  -1984(r30)
002274  e3080ff0  loadli.w r17,  -2048(r30)
002278  1f8e0200  addli r28, r5, 0
00227c  1f8c0c00  addli r24, r25, 0
002280  1b319400  slli r2, r8, 9
002284  93e48206  setle.f r9, r5, r8
002288  13655406  setle.f r10, r8, r5
00228c  9b437401  srli r7, r8, 23
002290  13010100  seteq r2, r2, zero
002294  9b83f30f  andi r7, r7, 255
002298  9bf3f30f  setlti r7, r7, 255
00229c  17912300  or r2, r7, r2
0022a0  97039500  and r7, r10, r9
0022a4  17812300  and r2, r7, r2
0022a8  3b200100  bneq r2, zero, 8
0022ac  0f8e8a18  div.f.rn r28, r21, r8
0022b0  8b648910  add.f.rn r9, r18, r8
0022b4  1bb19400  slli r2, r9, 9
0022b8  13e59206  setle.f r10, r5, r9
0022bc  13e65406  setle.f r12, r9, r5
0022c0  9bc37401  srli r7, r9, 23
0022c4  13010100  seteq r2, r2, zero
0022c8  9b83f30f  andi r7, r7, 255
0022cc  9bf3f30f  setlti r7, r7, 255
0022d0  17912300  or r2, r7, r2
0022d4  9703a600  and r7, r12, r10
0022d8  17812300  and r2, r7, r2
0022dc  9f830200  addli r7, r5, 0
0022e0  3b200100  bneq r2, zero, 8
0022e4  8f039918  div.f.rn r7, r18, r9
0022e8  0be59b10  add.f.rn r10, r23, r9
0022ec  e74b7ff0  storeli.w r7, -1860(r30)
0022f0  1b319500  slli r2, r10, 9
0022f4  13e6a206  setle.f r12, r5, r10
0022f8  93665506  setle.f r13, r10, r5
0022fc  9b437501  srli r7, r10, 23
002300  13010100  seteq r2, r2, zero
002304  9b83f30f  andi r7, r7, 255
002308  9bf3f30f  setlti r7, r7, 255
00230c  17912300  or r2, r7, r2
002310  9783c600  and r7, r13, r12
002314  17812300  and r2, r7, r2
002318  9f830200  addli r7, r5, 0
00231c  3b200100  bneq r2, zero, 8
002320  8f83ab18  div.f.rn r7, r23, r10
002324  0be6a510  add.f.rn r12, r11, r10
002328  670c7fee  storeli.w r7, -2112(r30)
00232c  1b319600  slli r2, r12, 9
002330  93e6c206  setle.f r13, r5, r12
002334  13675606  setle.f r14, r12, r5
002338  9b437601  srli r7, r12, 23
00233c  13010100  seteq r2, r2, zero
002340  9b83f30f  andi r7, r7, 255
002344  9bf3f30f  setlti r7, r7, 255
002348  17912300  or r2, r7, r2
00234c  9703d700  and r7, r14, r13
002350  17812300  and r2, r7, r2
002354  9f830200  addli r7, r5, 0
002358  3b200100  bneq r2, zero, 8
00235c  8f83c518  div.f.rn r7, r11, r12
002360  0b68c210  add.f.rn r16, r4, r12
002364  67087fee  storeli.w r7, -2176(r30)
002368  6347ffec  loadli.w r14,  -2436(r30)
00236c  1b319800  slli r2, r16, 9
002370  93e50207  setle.f r11, r5, r16
002374  93665806  setle.f r13, r16, r5
002378  9b437801  srli r7, r16, 23
00237c  13010100  seteq r2, r2, zero
002380  9b83f30f  andi r7, r7, 255
002384  9bf3f30f  setlti r7, r7, 255
002388  17912300  or r2, r7, r2
00238c  9783b600  and r7, r13, r11
002390  e3060fee  loadli.w r13,  -2304(r30)
002394  17812300  and r2, r7, r2
002398  9f830200  addli r7, r5, 0
00239c  3b200100  bneq r2, zero, 8
0023a0  8f030219  div.f.rn r7, r4, r16
0023a4  0be90111  add.f.rn r18, r3, r16
0023a8  67047fee  storeli.w r7, -2240(r30)
0023ac  1b319900  slli r2, r18, 9
0023b0  93e32207  setle.f r7, r5, r18
0023b4  93655906  setle.f r11, r18, r5
0023b8  1b427901  srli r4, r18, 23
0023bc  13010100  seteq r2, r2, zero
0023c0  1b02f20f  andi r4, r4, 255
0023c4  1b72f20f  setlti r4, r4, 255
0023c8  17112200  or r2, r4, r2
0023cc  17827500  and r4, r11, r7
0023d0  17012200  and r2, r4, r2
0023d4  1f820200  addli r4, r5, 0
0023d8  3b200100  bneq r2, zero, 8
0023dc  0f822119  div.f.rn r4, r3, r18
0023e0  0bea2011  add.f.rn r20, r1, r18
0023e4  670c4fec  storeli.w r4, -2368(r30)
0023e8  1b319a00  slli r2, r20, 9
0023ec  13e24207  setle.f r4, r5, r20
0023f0  93635a06  setle.f r7, r20, r5
0023f4  9b417a01  srli r3, r20, 23
0023f8  13010100  seteq r2, r2, zero
0023fc  9b81f10f  andi r3, r3, 255
002400  9bf1f10f  setlti r3, r3, 255
002404  17912100  or r2, r3, r2
002408  97814300  and r3, r7, r4
00240c  17812100  and r2, r3, r2
002410  9f810200  addli r3, r5, 0
002414  3b200100  bneq r2, zero, 8
002418  8f814019  div.f.rn r3, r1, r20
00241c  8b6a4711  add.f.rn r21, r14, r20
002420  67083fec  storeli.w r3, -2432(r30)
002424  e3038ff4  loadli.w r7,  -1472(r30)
002428  9bb09a00  slli r1, r21, 9
00242c  93e15207  setle.f r3, r5, r21
002430  13e25a06  setle.f r4, r21, r5
002434  1bc17a01  srli r2, r21, 23
002438  93800000  seteq r1, r1, zero
00243c  1b01f10f  andi r2, r2, 255
002440  1b71f10f  setlti r2, r2, 255
002444  97101100  or r1, r2, r1
002448  17013200  and r2, r4, r3
00244c  97001100  and r1, r2, r1
002450  1f810200  addli r2, r5, 0
002454  3ba00000  bneq r1, zero, 8
002458  0f015719  div.f.rn r2, r14, r21
00245c  8bec5611  add.f.rn r25, r13, r21
002460  e7472fec  storeli.w r2, -2436(r30)
002464  9bb09c00  slli r1, r25, 9
002468  93e19207  setle.f r3, r5, r25
00246c  13e25c06  setle.f r4, r25, r5
002470  1bc17c01  srli r2, r25, 23
002474  93800000  seteq r1, r1, zero
002478  1b01f10f  andi r2, r2, 255
00247c  1b71f10f  setlti r2, r2, 255
002480  97101100  or r1, r2, r1
002484  17013200  and r2, r4, r3
002488  97001100  and r1, r2, r1
00248c  1f810200  addli r2, r5, 0
002490  3ba00000  bneq r1, zero, 8
002494  0f819619  div.f.rn r2, r13, r25
002498  8beb9311  add.f.rn r23, r7, r25
00249c  67002fee  storeli.w r2, -2304(r30)
0024a0  9bb09b00  slli r1, r23, 9
0024a4  93e17207  setle.f r3, r5, r23
0024a8  13e25b06  setle.f r4, r23, r5
0024ac  1bc17b01  srli r2, r23, 23
0024b0  93800000  seteq r1, r1, zero
0024b4  1b01f10f  andi r2, r2, 255
0024b8  1b71f10f  setlti r2, r2, 255
0024bc  97101100  or r1, r2, r1
0024c0  17013200  and r2, r4, r3
0024c4  97001100  and r1, r2, r1
0024c8  1f810200  addli r2, r5, 0
0024cc  3ba00000  bneq r1, zero, 8
0024d0  0f817319  div.f.rn r2, r7, r23
0024d4  0be77811  add.f.rn r14, r17, r23
0024d8  e7072fec  storeli.w r2, -2440(r30)
0024dc  9b309700  slli r1, r14, 9
0024e0  13e2e206  setle.f r4, r5, r14
0024e4  93635706  setle.f r7, r14, r5
0024e8  1b417701  srli r2, r14, 23
0024ec  93800000  seteq r1, r1, zero
0024f0  1b01f10f  andi r2, r2, 255
0024f4  1b71f10f  setlti r2, r2, 255
0024f8  97101100  or r1, r2, r1
0024fc  17814300  and r2, r7, r4
002500  97001100  and r1, r2, r1
002504  1f810200  addli r2, r5, 0
002508  3ba00000  bneq r1, zero, 8
00250c  0f81e818  div.f.rn r2, r17, r14
002510  8be3e710  add.f.rn r7, r15, r14
002514  67002ff0  storeli.w r2, -2048(r30)
002518  9bb09300  slli r1, r7, 9
00251c  93e57206  setle.f r11, r5, r7
002520  93e65306  setle.f r13, r7, r5
002524  1bc17301  srli r2, r7, 23
002528  93800000  seteq r1, r1, zero
00252c  1b01f10f  andi r2, r2, 255
002530  1b71f10f  setlti r2, r2, 255
002534  97101100  or r1, r2, r1
002538  1781b600  and r2, r13, r11
00253c  17011100  and r2, r2, r1
002540  9f800200  addli r1, r5, 0
002544  3b200100  bneq r2, zero, 8
002548  8f807718  div.f.rn r1, r15, r7
00254c  0be17910  add.f.rn r2, r19, r7
002550  12358002  vadd.s.mz vr10{mr1}, zero, vr8
002554  9f810200  addli r3, r5, 0
002558  9b359100  slli r11, r2, 9
00255c  93e72206  setle.f r15, r5, r2
002560  93685106  setle.f r17, r2, r5
002564  9b467101  srli r13, r2, 23
002568  93850500  seteq r11, r11, zero
00256c  9b86f60f  andi r13, r13, 255
002570  9bf6f60f  setlti r13, r13, 255
002574  9795b600  or r11, r13, r11
002578  9786f800  and r13, r17, r15
00257c  9786b600  and r13, r13, r11
002580  3ba00600  bneq r13, zero, 8
002584  8f812918  div.f.rn r3, r19, r2
002588  8b662c10  add.f.rn r13, r24, r2
00258c  12347002  vadd.s.mz vr8{mr1}, zero, vr7
002590  67043ff0  storeli.w r3, -1984(r30)
002594  67081ff2  storeli.w r1, -1664(r30)
002598  6704cff4  storeli.w r12, -1472(r30)
00259c  9bb79600  slli r15, r13, 9
0025a0  93e9d206  setle.f r19, r5, r13
0025a4  13eb5606  setle.f r22, r13, r5
0025a8  9bc87601  srli r17, r13, 23
0025ac  93870700  seteq r15, r15, zero
0025b0  9b88f80f  andi r17, r17, 255
0025b4  9bf8f80f  setlti r17, r17, 255
0025b8  9797f800  or r15, r17, r15
0025bc  97083b01  and r17, r22, r19
0025c0  9787f800  and r15, r17, r15
0025c4  3ba00700  bneq r15, zero, 8
0025c8  8f02dc18  div.f.rn r5, r24, r13
0025cc  9f000ff5  addli r1, r30, -1408
0025d0  e307afea  loadli.w r15,  -2736(r30)
0025d4  9f018ff3  addli r3, r30, -1600
0025d8  e3058fef  loadli.w r11,  -2112(r30)
0025dc  63060fef  loadli.w r12,  -2176(r30)
0025e0  1f020e00  addli r4, r28, 0
0025e4  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0025e8  e3407ff1  loadli.w r1,  -1860(r30)
0025ec  73e0d700  stores.w r13, 0(r15)
0025f0  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0025f4  9e136102  vsub.f.mz.rn vr7{mr1}, vr2, vr6
0025f8  0e91b302  vmul.f.mz.rn vr2{mr1}, vr7, vr11
0025fc  8e937302  vmul.f.mz.rn vr7{mr1}, vr7, vr7
002600  16112302  vadd.f.mz.rn vr2{mr1}, vr6, vr2
002604  8e93a302  vmul.f.mz.rn vr7{mr1}, vr7, vr10
002608  9e922202  vsub.f.mz.rn vr5{mr1}, vr5, vr2
00260c  8e93b302  vmul.f.mz.rn vr7{mr1}, vr7, vr11
002610  0e935102  vmul.f.mz.rn vr6{mr1}, vr3, vr5
002614  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002618  c2930102  vload_mask16.mz vr7{mr1}, 0(r3)
00261c  8e925202  vmul.f.mz.rn vr5{mr1}, vr5, vr5
002620  9f018ff5  addli r3, r30, -1344
002624  16116102  vadd.f.mz.rn vr2{mr1}, vr2, vr6
002628  8e925302  vmul.f.mz.rn vr5{mr1}, vr7, vr5
00262c  c2930102  vload_mask16.mz vr7{mr1}, 0(r3)
002630  9f018ff2  addli r3, r30, -1728
002634  1e132402  vsub.f.mz.rn vr6{mr1}, vr8, vr2
002638  8e915102  vmul.f.mz.rn vr3{mr1}, vr3, vr5
00263c  0e146002  vmul.f.mz.rn vr8{mr1}, vr0, vr6
002640  16924302  vadd.f.mz.rn vr4{mr1}, vr7, vr4
002644  8e126302  vmul.f.mz.rn vr5{mr1}, vr6, vr6
002648  16118102  vadd.f.mz.rn vr2{mr1}, vr2, vr8
00264c  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
002650  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
002654  8e905002  vmul.f.mz.rn vr1{mr1}, vr1, vr5
002658  9f010d00  addli r3, r26, 0
00265c  fa160140  vextracti.f r13, 0(vr2)
002660  fa171140  vextracti.f r15, 1(vr2)
002664  0e101002  vmul.f.mz.rn vr0{mr1}, vr0, vr1
002668  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
00266c  0bebd718  sub.f.rn r22, r15, r13
002670  16900102  vadd.f.mz.rn vr0{mr1}, vr3, vr0
002674  8b676d21  mul.f.rn r15, r26, r22
002678  0b6b6b21  mul.f.rn r22, r22, r22
00267c  8be6f610  add.f.rn r13, r13, r15
002680  fa172140  vextracti.f r15, 2(vr2)
002684  0beb6d21  mul.f.rn r22, r27, r22
002688  fa1d0040  vextracti.f r27, 0(vr0)
00268c  8be7d718  sub.f.rn r15, r15, r13
002690  0beb6121  mul.f.rn r22, r3, r22
002694  e3018fee  loadli.w r3,  -2240(r30)
002698  8b68fe20  mul.f.rn r17, r28, r15
00269c  7a1e1040  vextracti.f r28, 1(vr0)
0026a0  8be7f720  mul.f.rn r15, r15, r15
0026a4  8be61611  add.f.rn r13, r13, r17
0026a8  fa183140  vextracti.f r17, 3(vr2)
0026ac  0b63f320  mul.f.rn r6, r6, r15
0026b0  fa172040  vextracti.f r15, 2(vr0)
0026b4  8be8d818  sub.f.rn r17, r17, r13
0026b8  0b636220  mul.f.rn r6, r4, r6
0026bc  63028fed  loadli.w r4,  -2368(r30)
0026c0  8be91021  mul.f.rn r19, r1, r17
0026c4  8be81821  mul.f.rn r17, r17, r17
0026c8  8be93611  add.f.rn r19, r13, r19
0026cc  fa164140  vextracti.f r13, 4(vr2)
0026d0  0b641421  mul.f.rn r8, r8, r17
0026d4  fa183040  vextracti.f r17, 3(vr0)
0026d8  8be63619  sub.f.rn r13, r13, r19
0026dc  0be48020  mul.f.rn r8, r1, r8
0026e0  e3008ff4  loadli.w r1,  -1472(r30)
0026e4  0becd520  mul.f.rn r24, r11, r13
0026e8  8be6d620  mul.f.rn r13, r13, r13
0026ec  0bec8911  add.f.rn r24, r19, r24
0026f0  fa195140  vextracti.f r19, 5(vr2)
0026f4  8be98919  sub.f.rn r19, r19, r24
0026f8  0b6d3621  mul.f.rn r26, r12, r19
0026fc  0b6cac11  add.f.rn r24, r24, r26
002700  0bedcd11  add.f.rn r26, r27, r28
002704  fa1d6140  vextracti.f r27, 6(vr2)
002708  8bed8d19  sub.f.rn r27, r27, r24
00270c  0b6b6d11  add.f.rn r22, r26, r22
002710  0bedb121  mul.f.rn r26, r3, r27
002714  8be76711  add.f.rn r15, r15, r22
002718  0b6bac11  add.f.rn r22, r24, r26
00271c  7a1c7140  vextracti.f r24, 7(vr2)
002720  0be36710  add.f.rn r6, r15, r6
002724  8b676c19  sub.f.rn r15, r24, r22
002728  0be36810  add.f.rn r6, r17, r6
00272c  8b68f220  mul.f.rn r17, r4, r15
002730  0b638310  add.f.rn r6, r6, r8
002734  0be4d420  mul.f.rn r8, r9, r13
002738  fa164040  vextracti.f r13, 4(vr0)
00273c  8b641b11  add.f.rn r9, r22, r17
002740  fa188140  vextracti.f r17, 8(vr2)
002744  0be36610  add.f.rn r6, r13, r6
002748  0be48520  mul.f.rn r8, r11, r8
00274c  e3050fed  loadli.w r11,  -2432(r30)
002750  8be69818  sub.f.rn r13, r17, r9
002754  8be83921  mul.f.rn r17, r19, r19
002758  0b638310  add.f.rn r6, r6, r8
00275c  0be4d520  mul.f.rn r8, r11, r13
002760  0b651521  mul.f.rn r10, r10, r17
002764  fa185040  vextracti.f r17, 5(vr0)
002768  0be36810  add.f.rn r6, r17, r6
00276c  fa189140  vextracti.f r17, 9(vr2)
002770  0be48410  add.f.rn r8, r9, r8
002774  8b64a620  mul.f.rn r9, r12, r10
002778  0be5bd21  mul.f.rn r10, r27, r27
00277c  8be88818  sub.f.rn r17, r17, r8
002780  0b639310  add.f.rn r6, r6, r9
002784  8be4a020  mul.f.rn r9, r1, r10
002788  e340ffec  loadli.w r1,  -2436(r30)
00278c  7a156040  vextracti.f r10, 6(vr0)
002790  0be61021  mul.f.rn r12, r1, r17
002794  0b636510  add.f.rn r6, r10, r6
002798  8be49120  mul.f.rn r9, r3, r9
00279c  0be5f720  mul.f.rn r10, r15, r15
0027a0  e3010fee  loadli.w r3,  -2304(r30)
0027a4  fa179040  vextracti.f r15, 9(vr0)
0027a8  0b64c410  add.f.rn r8, r8, r12
0027ac  7a16a140  vextracti.f r12, 10(vr2)
0027b0  0b639310  add.f.rn r6, r6, r9
0027b4  8b64a820  mul.f.rn r9, r16, r10
0027b8  7a157040  vextracti.f r10, 7(vr0)
0027bc  0b668618  sub.f.rn r12, r12, r8
0027c0  0b636510  add.f.rn r6, r10, r6
0027c4  8b649220  mul.f.rn r9, r4, r9
0027c8  0be5d620  mul.f.rn r10, r13, r13
0027cc  6302ffec  loadli.w r4,  -2440(r30)
0027d0  8be6c120  mul.f.rn r13, r3, r12
0027d4  0b639310  add.f.rn r6, r6, r9
0027d8  8b64a920  mul.f.rn r9, r18, r10
0027dc  7a158040  vextracti.f r10, 8(vr0)
0027e0  0b64d410  add.f.rn r8, r8, r13
0027e4  fa16b140  vextracti.f r13, 11(vr2)
0027e8  0b636510  add.f.rn r6, r10, r6
0027ec  8be49520  mul.f.rn r9, r11, r9
0027f0  0be51821  mul.f.rn r10, r17, r17
0027f4  e3050ff3  loadli.w r11,  -1664(r30)
0027f8  8be68618  sub.f.rn r13, r13, r8
0027fc  0b639310  add.f.rn r6, r6, r9
002800  8b64aa20  mul.f.rn r9, r20, r10
002804  0b65d220  mul.f.rn r10, r4, r13
002808  8be49020  mul.f.rn r9, r1, r9
00280c  0be36710  add.f.rn r6, r15, r6
002810  e3000ff0  loadli.w r1,  -2048(r30)
002814  8be6d620  mul.f.rn r13, r13, r13
002818  0b64a410  add.f.rn r8, r8, r10
00281c  0b65c620  mul.f.rn r10, r12, r12
002820  7a16c140  vextracti.f r12, 12(vr2)
002824  0b639310  add.f.rn r6, r6, r9
002828  8b648618  sub.f.rn r9, r12, r8
00282c  7a16a040  vextracti.f r12, 10(vr0)
002830  0be5aa20  mul.f.rn r10, r21, r10
002834  0b636610  add.f.rn r6, r12, r6
002838  0be69020  mul.f.rn r12, r1, r9
00283c  0be5a120  mul.f.rn r10, r3, r10
002840  8be49420  mul.f.rn r9, r9, r9
002844  0b64c410  add.f.rn r8, r8, r12
002848  7a16d140  vextracti.f r12, 13(vr2)
00284c  0b63a310  add.f.rn r6, r6, r10
002850  0be5dc20  mul.f.rn r10, r25, r13
002854  fa16b040  vextracti.f r13, 11(vr0)
002858  0b668618  sub.f.rn r12, r12, r8
00285c  8b61a220  mul.f.rn r3, r4, r10
002860  0be36610  add.f.rn r6, r13, r6
002864  0be5c520  mul.f.rn r10, r11, r12
002868  8b613310  add.f.rn r3, r6, r3
00286c  0be39b20  mul.f.rn r6, r23, r9
002870  fa14c040  vextracti.f r9, 12(vr0)
002874  0b64a410  add.f.rn r8, r8, r10
002878  7a15e140  vextracti.f r10, 14(vr2)
00287c  8be13410  add.f.rn r3, r9, r3
002880  0be26020  mul.f.rn r4, r1, r6
002884  0b63c620  mul.f.rn r6, r12, r12
002888  63068ff0  loadli.w r12,  -1984(r30)
00288c  8b648518  sub.f.rn r9, r10, r8
002890  8be14110  add.f.rn r3, r3, r4
002894  0b626720  mul.f.rn r4, r14, r6
002898  7a13d040  vextracti.f r6, 13(vr0)
00289c  0b659620  mul.f.rn r10, r12, r9
0028a0  8b613310  add.f.rn r3, r6, r3
0028a4  8be04520  mul.f.rn r1, r11, r4
0028a8  0be29420  mul.f.rn r4, r9, r9
0028ac  0b63a410  add.f.rn r6, r8, r10
0028b0  7a14f140  vextracti.f r8, 15(vr2)
0028b4  8be01110  add.f.rn r1, r3, r1
0028b8  8be14320  mul.f.rn r3, r7, r4
0028bc  fa13e040  vextracti.f r7, 14(vr0)
0028c0  0b626418  sub.f.rn r4, r8, r6
0028c4  8be01310  add.f.rn r1, r7, r1
0028c8  8b613620  mul.f.rn r3, r12, r3
0028cc  8b634220  mul.f.rn r7, r4, r4
0028d0  8be03010  add.f.rn r1, r1, r3
0028d4  fa11f040  vextracti.f r3, 15(vr0)
0028d8  0be24220  mul.f.rn r4, r5, r4
0028dc  0b617120  mul.f.rn r2, r2, r7
0028e0  8be01110  add.f.rn r1, r3, r1
0028e4  8b614310  add.f.rn r3, r6, r4
0028e8  0be12220  mul.f.rn r2, r5, r2
0028ec  8be02010  add.f.rn r1, r1, r2
0028f0  6301bfea  loadli.w r2,  -2728(r30)
0028f4  73603100  stores.w r3, 0(r2)
0028f8  6341afea  loadli.w r2,  -2732(r30)
0028fc  73601100  stores.w r1, 0(r2)
002900  00a00300  mfence { lm, sm, gm }
002904  e340cfea  loadli.w r1,  -2716(r30)
002908  80a10004  csr_set csr3, r1
00290c  00d00100  sync_group
002910  63018fea  loadli.w r2,  -2752(r30)
002914  bb2b0100  bneq r2, zero, 744
002918  e30c5fea  loadli.w r25,  -2776(r30)
00291c  9f000000  addli r1, zero, 0
002920  6fc20c00  loads.w r4, 0(r25)
002924  efc14c00  loads.w r3, 4(r25)
002928  0b613210  add.f.rn r2, r4, r3
00292c  9b329100  slli r5, r2, 9
002930  93e32006  setle.f r7, r1, r2
002934  13641106  setle.f r8, r2, r1
002938  1b437101  srli r6, r2, 23
00293c  93821200  seteq r5, r5, r1
002940  1b03f30f  andi r6, r6, 255
002944  1b73f30f  setlti r6, r6, 255
002948  97125300  or r5, r6, r5
00294c  17037400  and r6, r8, r7
002950  97025300  and r5, r6, r5
002954  1f830000  addli r6, r1, 0
002958  3ba00200  bneq r5, zero, 8
00295c  0f832118  div.f.rn r6, r3, r2
002960  efc28c00  loads.w r5, 8(r25)
002964  8b615110  add.f.rn r3, r2, r5
002968  9bb39100  slli r7, r3, 9
00296c  93e43006  setle.f r9, r1, r3
002970  13e51106  setle.f r10, r3, r1
002974  1bc47101  srli r8, r3, 23
002978  93831300  seteq r7, r7, r1
00297c  1b04f40f  andi r8, r8, 255
002980  1b74f40f  setlti r8, r8, 255
002984  97137400  or r7, r8, r7
002988  17049500  and r8, r10, r9
00298c  97037400  and r7, r8, r7
002990  1f840000  addli r8, r1, 0
002994  3ba00300  bneq r7, zero, 8
002998  0f843218  div.f.rn r8, r5, r3
00299c  efc3cc00  loads.w r7, 12(r25)
0029a0  8be27110  add.f.rn r5, r3, r7
0029a4  9bb49200  slli r9, r5, 9
0029a8  93e55006  setle.f r11, r1, r5
0029ac  13e61206  setle.f r12, r5, r1
0029b0  1bc57201  srli r10, r5, 23
0029b4  93841400  seteq r9, r9, r1
0029b8  1b05f50f  andi r10, r10, 255
0029bc  1b75f50f  setlti r10, r10, 255
0029c0  97149500  or r9, r10, r9
0029c4  1705b600  and r10, r12, r11
0029c8  97049500  and r9, r10, r9
0029cc  1f850000  addli r10, r1, 0
0029d0  3ba00400  bneq r9, zero, 8
0029d4  0f855318  div.f.rn r10, r7, r5
0029d8  efc40c01  loads.w r9, 16(r25)
0029dc  8be39210  add.f.rn r7, r5, r9
0029e0  9bb59300  slli r11, r7, 9
0029e4  93e67006  setle.f r13, r1, r7
0029e8  13e71306  setle.f r14, r7, r1
0029ec  1bc67301  srli r12, r7, 23
0029f0  93851500  seteq r11, r11, r1
0029f4  1b06f60f  andi r12, r12, 255
0029f8  1b76f60f  setlti r12, r12, 255
0029fc  9715b600  or r11, r12, r11
002a00  1706d700  and r12, r14, r13
002a04  9705b600  and r11, r12, r11
002a08  1f860000  addli r12, r1, 0
002a0c  3ba00500  bneq r11, zero, 8
002a10  0f867418  div.f.rn r12, r9, r7
002a14  efc54c01  loads.w r11, 20(r25)
002a18  8be4b310  add.f.rn r9, r7, r11
002a1c  9bb69400  slli r13, r9, 9
002a20  93e79006  setle.f r15, r1, r9
002a24  13e81406  setle.f r16, r9, r1
002a28  1bc77401  srli r14, r9, 23
002a2c  93861600  seteq r13, r13, r1
002a30  1b07f70f  andi r14, r14, 255
002a34  1b77f70f  setlti r14, r14, 255
002a38  9716d700  or r13, r14, r13
002a3c  1707f800  and r14, r16, r15
002a40  1707d700  and r14, r14, r13
002a44  9f860000  addli r13, r1, 0
002a48  3b200700  bneq r14, zero, 8
002a4c  8f869518  div.f.rn r13, r11, r9
002a50  6fc78c01  loads.w r14, 24(r25)
002a54  8be5e410  add.f.rn r11, r9, r14
002a58  9bb79500  slli r15, r11, 9
002a5c  93e8b006  setle.f r17, r1, r11
002a60  13e91506  setle.f r18, r11, r1
002a64  1bc87501  srli r16, r11, 23
002a68  93871700  seteq r15, r15, r1
002a6c  1b08f80f  andi r16, r16, 255
002a70  1b78f80f  setlti r16, r16, 255
002a74  9717f800  or r15, r16, r15
002a78  17081901  and r16, r18, r17
002a7c  1708f800  and r16, r16, r15
002a80  9f870000  addli r15, r1, 0
002a84  3b200800  bneq r16, zero, 8
002a88  8f07b718  div.f.rn r15, r14, r11
002a8c  6fc8cc01  loads.w r16, 28(r25)
002a90  0be70511  add.f.rn r14, r11, r16
002a94  9b389700  slli r17, r14, 9
002a98  93e9e006  setle.f r19, r1, r14
002a9c  136a1706  setle.f r20, r14, r1
002aa0  1b497701  srli r18, r14, 23
002aa4  93881800  seteq r17, r17, r1
002aa8  1b09f90f  andi r18, r18, 255
002aac  1b79f90f  setlti r18, r18, 255
002ab0  97181901  or r17, r18, r17
002ab4  17093a01  and r18, r20, r19
002ab8  97081901  and r17, r18, r17
002abc  3ba00800  bneq r17, zero, 8
002ac0  8f00e818  div.f.rn r1, r16, r14
002ac4  e30bcfea  loadli.w r23,  -2720(r30)
002ac8  634cbfea  loadli.w r24,  -2724(r30)
002acc  73e0ec00  stores.w r14, 0(r25)
002ad0  6fc80b00  loads.w r16, 0(r23)
002ad4  efc84b00  loads.w r17, 4(r23)
002ad8  efc98b00  loads.w r19, 8(r23)
002adc  6fcacb00  loads.w r20, 12(r23)
002ae0  ef4a0c00  loads.w r21, 0(r24)
002ae4  6f4b4c00  loads.w r22, 4(r24)
002ae8  8be80819  sub.f.rn r17, r17, r16
002aec  0be96820  mul.f.rn r18, r17, r6
002af0  8be81821  mul.f.rn r17, r17, r17
002af4  0b682811  add.f.rn r16, r16, r18
002af8  0be24820  mul.f.rn r4, r17, r4
002afc  0be90919  sub.f.rn r18, r19, r16
002b00  0b626220  mul.f.rn r4, r4, r6
002b04  8b692421  mul.f.rn r19, r8, r18
002b08  0b692921  mul.f.rn r18, r18, r18
002b0c  0b683811  add.f.rn r16, r16, r19
002b10  efc90b01  loads.w r19, 16(r23)
002b14  0b612121  mul.f.rn r2, r2, r18
002b18  8b680a19  sub.f.rn r17, r20, r16
002b1c  0bea6a11  add.f.rn r20, r21, r22
002b20  ef4a8c00  loads.w r21, 8(r24)
002b24  0b612420  mul.f.rn r2, r8, r2
002b28  0b631521  mul.f.rn r6, r10, r17
002b2c  0b624a10  add.f.rn r4, r20, r4
002b30  0be41821  mul.f.rn r8, r17, r17
002b34  0b636810  add.f.rn r6, r16, r6
002b38  0be24a10  add.f.rn r4, r21, r4
002b3c  6f48cc00  loads.w r16, 12(r24)
002b40  8be18120  mul.f.rn r3, r3, r8
002b44  0be96918  sub.f.rn r18, r19, r6
002b48  efc94b01  loads.w r19, 20(r23)
002b4c  0b612210  add.f.rn r2, r4, r2
002b50  8b613520  mul.f.rn r3, r10, r3
002b54  8b682621  mul.f.rn r17, r12, r18
002b58  0b612810  add.f.rn r2, r16, r2
002b5c  0b642921  mul.f.rn r8, r18, r18
002b60  0b621311  add.f.rn r4, r6, r17
002b64  6f430c01  loads.w r6, 16(r24)
002b68  0b613110  add.f.rn r2, r2, r3
002b6c  8be18220  mul.f.rn r3, r5, r8
002b70  6fc48b01  loads.w r8, 24(r23)
002b74  0be54918  sub.f.rn r10, r19, r4
002b78  8b613620  mul.f.rn r3, r12, r3
002b7c  0b612310  add.f.rn r2, r6, r2
002b80  8be2a620  mul.f.rn r5, r13, r10
002b84  0b63a520  mul.f.rn r6, r10, r10
002b88  0b613110  add.f.rn r2, r2, r3
002b8c  0b625210  add.f.rn r4, r4, r5
002b90  ef424c01  loads.w r5, 20(r24)
002b94  0be36320  mul.f.rn r6, r7, r6
002b98  efc3cb01  loads.w r7, 28(r23)
002b9c  8b614418  sub.f.rn r3, r8, r4
002ba0  0be36620  mul.f.rn r6, r13, r6
002ba4  6f448c01  loads.w r8, 24(r24)
002ba8  0be12210  add.f.rn r2, r5, r2
002bac  8be23720  mul.f.rn r5, r15, r3
002bb0  8be13120  mul.f.rn r3, r3, r3
002bb4  0b616110  add.f.rn r2, r2, r6
002bb8  6f43cc01  loads.w r6, 28(r24)
002bbc  0b625210  add.f.rn r4, r4, r5
002bc0  8be13420  mul.f.rn r3, r9, r3
002bc4  0b612410  add.f.rn r2, r8, r2
002bc8  8be24318  sub.f.rn r5, r7, r4
002bcc  8be13720  mul.f.rn r3, r15, r3
002bd0  8be35220  mul.f.rn r7, r5, r5
002bd4  0b613110  add.f.rn r2, r2, r3
002bd8  8be25020  mul.f.rn r5, r1, r5
002bdc  8be17520  mul.f.rn r3, r11, r7
002be0  0b612310  add.f.rn r2, r6, r2
002be4  8be03020  mul.f.rn r1, r1, r3
002be8  8b615210  add.f.rn r3, r4, r5
002bec  8b601110  add.f.rn r1, r2, r1
002bf0  73e03b00  stores.w r3, 0(r23)
002bf4  73601c00  stores.w r1, 0(r24)
002bf8  e340cfea  loadli.w r1,  -2716(r30)
002bfc  00a00300  mfence { lm, sm, gm }
002c00  80a10004  csr_set csr3, r1
002c04  00d00100  sync_group
002c08  e340bfea  loadli.w r1,  -2724(r30)
002c0c  2b01003a  lui r2, 237568
002c10  ab01803f  lui r3, 260096
002c14  efc00000  loads.w r1, 0(r1)
002c18  8be02020  mul.f.rn r1, r1, r2
002c1c  63415fea  loadli.w r2,  -2772(r30)
002c20  8be02010  add.f.rn r1, r1, r2
002c24  6301cfea  loadli.w r2,  -2720(r30)
002c28  6f410100  loads.w r2, 0(r2)
002c2c  00a00000  mfence { lm }
002c30  8f800008  sqrt.f.rn r1, r1
002c34  0f831118  div.f.rn r6, r3, r1
002c38  9f010000  addli r3, zero, 0
002c3c  0b610158  neg.f r2, r2
002c40  e342ffea  loadli.w r5,  -2692(r30)
002c44  9f000ff8  addli r1, r30, -1024
002c48  0b923010  add.s r4, r1, r3
002c4c  9f000ffc  addli r1, r30, -512
002c50  8b933210  add.s r7, r5, r3
002c54  8b903010  add.s r1, r1, r3
002c58  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
002c5c  06330000  vfp162float_l.rn vr6, vr0
002c60  86730000  vfp162float_h.rn vr7, vr0
002c64  9f810101  addli r3, r3, 128
002c68  ebb2c3fe  load.hu r5, -20(r7)
002c6c  ebb423fc  load.hu r9, -62(r7)
002c70  6bb543fc  load.hu r10, -60(r7)
002c74  ebb563fc  load.hu r11, -58(r7)
002c78  6bb683fc  load.hu r12, -56(r7)
002c7c  ebb6a3fc  load.hu r13, -54(r7)
002c80  ebb7c3fc  load.hu r15, -52(r7)
002c84  6bb7e3fc  load.hu r14, -50(r7)
002c88  6bb803fd  load.hu r16, -48(r7)
002c8c  ebb823fd  load.hu r17, -46(r7)
002c90  6bb943fd  load.hu r18, -44(r7)
002c94  ebb963fd  load.hu r19, -42(r7)
002c98  6bba83fd  load.hu r20, -40(r7)
002c9c  ebbaa3fd  load.hu r21, -38(r7)
002ca0  6bbbc3fd  load.hu r22, -36(r7)
002ca4  ebbde3fd  load.hu r27, -34(r7)
002ca8  6bbe03fe  load.hu r28, -32(r7)
002cac  6bbd23fe  load.hu r26, -30(r7)
002cb0  ebbc43fe  load.hu r25, -28(r7)
002cb4  6bbc63fe  load.hu r24, -26(r7)
002cb8  ebbb83fe  load.hu r23, -24(r7)
002cbc  6bb40000  load.hu r8, 0(r1)
002cc0  ebb0a3fe  load.hu r1, -22(r7)
002cc4  e7025fec  storeli.w r5, -2520(r30)
002cc8  ebb2e3fe  load.hu r5, -18(r7)
002ccc  33140420  hfloat2float.rn r8, r8
002cd0  b3900020  hfloat2float.rn r1, r1
002cd4  e7425fec  storeli.w r5, -2516(r30)
002cd8  ebb203ff  load.hu r5, -16(r7)
002cdc  67035fec  storeli.w r5, -2512(r30)
002ce0  ebb223ff  load.hu r5, -14(r7)
002ce4  67435fec  storeli.w r5, -2508(r30)
002ce8  ebb243ff  load.hu r5, -12(r7)
002cec  e7035fec  storeli.w r5, -2504(r30)
002cf0  ebb263ff  load.hu r5, -10(r7)
002cf4  e7435fec  storeli.w r5, -2500(r30)
002cf8  ebb283ff  load.hu r5, -8(r7)
002cfc  67045fec  storeli.w r5, -2496(r30)
002d00  ebb2a3ff  load.hu r5, -6(r7)
002d04  67445fec  storeli.w r5, -2492(r30)
002d08  ebb2c3ff  load.hu r5, -4(r7)
002d0c  e7045fec  storeli.w r5, -2488(r30)
002d10  ebb2e3ff  load.hu r5, -2(r7)
002d14  67055fec  storeli.w r5, -2480(r30)
002d18  ebb20300  load.hu r5, 0(r7)
002d1c  e7445fec  storeli.w r5, -2484(r30)
002d20  ebb22300  load.hu r5, 2(r7)
002d24  67455fec  storeli.w r5, -2476(r30)
002d28  ebb24300  load.hu r5, 4(r7)
002d2c  e7055fec  storeli.w r5, -2472(r30)
002d30  ebb26300  load.hu r5, 6(r7)
002d34  e7455fec  storeli.w r5, -2468(r30)
002d38  ebb28300  load.hu r5, 8(r7)
002d3c  67065fec  storeli.w r5, -2464(r30)
002d40  ebb2a300  load.hu r5, 10(r7)
002d44  67465fec  storeli.w r5, -2460(r30)
002d48  ebb2c300  load.hu r5, 12(r7)
002d4c  e7065fec  storeli.w r5, -2456(r30)
002d50  ebb2e300  load.hu r5, 14(r7)
002d54  e7465fec  storeli.w r5, -2452(r30)
002d58  ebb20301  load.hu r5, 16(r7)
002d5c  67075fec  storeli.w r5, -2448(r30)
002d60  ebb22301  load.hu r5, 18(r7)
002d64  67475fec  storeli.w r5, -2444(r30)
002d68  ebb24301  load.hu r5, 20(r7)
002d6c  e7075fec  storeli.w r5, -2440(r30)
002d70  ebb26301  load.hu r5, 22(r7)
002d74  e7475fec  storeli.w r5, -2436(r30)
002d78  ebb28301  load.hu r5, 24(r7)
002d7c  67085fec  storeli.w r5, -2432(r30)
002d80  ebb2a301  load.hu r5, 26(r7)
002d84  670c5fec  storeli.w r5, -2368(r30)
002d88  ebb2c301  load.hu r5, 28(r7)
002d8c  67005fee  storeli.w r5, -2304(r30)
002d90  ebb2e301  load.hu r5, 30(r7)
002d94  67085fee  storeli.w r5, -2176(r30)
002d98  ebb20302  load.hu r5, 32(r7)
002d9c  67045fee  storeli.w r5, -2240(r30)
002da0  ebb22302  load.hu r5, 34(r7)
002da4  670c5fee  storeli.w r5, -2112(r30)
002da8  ebb24302  load.hu r5, 36(r7)
002dac  67005ff0  storeli.w r5, -2048(r30)
002db0  ebb26302  load.hu r5, 38(r7)
002db4  67045ff0  storeli.w r5, -1984(r30)
002db8  ebb28302  load.hu r5, 40(r7)
002dbc  e74b5ff0  storeli.w r5, -1860(r30)
002dc0  ebb2a302  load.hu r5, 42(r7)
002dc4  670c5ff0  storeli.w r5, -1856(r30)
002dc8  ebb2c302  load.hu r5, 44(r7)
002dcc  67005ff2  storeli.w r5, -1792(r30)
002dd0  ebb2e302  load.hu r5, 46(r7)
002dd4  67045ff2  storeli.w r5, -1728(r30)
002dd8  ebb20303  load.hu r5, 48(r7)
002ddc  67085ff2  storeli.w r5, -1664(r30)
002de0  ebb22303  load.hu r5, 50(r7)
002de4  670c5ff2  storeli.w r5, -1600(r30)
002de8  ebb24303  load.hu r5, 52(r7)
002dec  67005ff4  storeli.w r5, -1536(r30)
002df0  ebb26303  load.hu r5, 54(r7)
002df4  67045ff4  storeli.w r5, -1472(r30)
002df8  ebb28303  load.hu r5, 56(r7)
002dfc  67085ff4  storeli.w r5, -1408(r30)
002e00  ebb2a303  load.hu r5, 58(r7)
002e04  670c5ff4  storeli.w r5, -1344(r30)
002e08  ebb2c303  load.hu r5, 60(r7)
002e0c  ebb3e303  load.hu r7, 62(r7)
002e10  67005ff6  storeli.w r5, -1280(r30)
002e14  9f020ff7  addli r5, r30, -1152
002e18  67047ff6  storeli.w r7, -1216(r30)
002e1c  b3930420  hfloat2float.rn r7, r9
002e20  c2108202  vload_mask16.mz vr1{mr1}, 64(r4)
002e24  c2920202  vload_mask16.mz vr5{mr1}, 0(r5)
002e28  9f120000  addli r5, zero, 1
002e2c  7e8002e0  vmmov mr0, r5
002e30  9f220000  addli r5, zero, 2
002e34  7e8102e0  vmmov mr2, r5
002e38  9f420000  addli r5, zero, 4
002e3c  12315002  vadd.s.mz vr2{mr1}, zero, vr5
002e40  fe8102e0  vmmov mr3, r5
002e44  9f021000  addli r5, zero, 8
002e48  92315002  vadd.s.mz vr3{mr1}, zero, vr5
002e4c  12325002  vadd.s.mz vr4{mr1}, zero, vr5
002e50  6a212430  vor.u.mh vr2{mr0}, r8, vr2
002e54  33140e20  hfloat2float.rn r8, r28
002e58  6aa12334  vor.u.mh vr2{mr2}, r7, vr2
002e5c  b3130520  hfloat2float.rn r7, r10
002e60  6aa12336  vor.u.mh vr2{mr3}, r7, vr2
002e64  b3930520  hfloat2float.rn r7, r11
002e68  fe8102e0  vmmov mr3, r5
002e6c  9f022000  addli r5, zero, 16
002e70  6aa12336  vor.u.mh vr2{mr3}, r7, vr2
002e74  b3130620  hfloat2float.rn r7, r12
002e78  fe8102e0  vmmov mr3, r5
002e7c  9f024000  addli r5, zero, 32
002e80  7e8002e0  vmmov mr0, r5
002e84  9f028000  addli r5, zero, 64
002e88  6aa12336  vor.u.mh vr2{mr3}, r7, vr2
002e8c  b3930620  hfloat2float.rn r7, r13
002e90  6aa12330  vor.u.mh vr2{mr0}, r7, vr2
002e94  b3930720  hfloat2float.rn r7, r15
002e98  7e8002e0  vmmov mr0, r5
002e9c  9f020001  addli r5, zero, 128
002ea0  6aa12330  vor.u.mh vr2{mr0}, r7, vr2
002ea4  b3130720  hfloat2float.rn r7, r14
002ea8  7e8002e0  vmmov mr0, r5
002eac  9f020002  addli r5, zero, 256
002eb0  6aa12330  vor.u.mh vr2{mr0}, r7, vr2
002eb4  b3130820  hfloat2float.rn r7, r16
002eb8  7e8002e0  vmmov mr0, r5
002ebc  9f020004  addli r5, zero, 512
002ec0  6aa12330  vor.u.mh vr2{mr0}, r7, vr2
002ec4  b3930820  hfloat2float.rn r7, r17
002ec8  7e8002e0  vmmov mr0, r5
002ecc  9f020008  addli r5, zero, 1024
002ed0  6aa12330  vor.u.mh vr2{mr0}, r7, vr2
002ed4  b3130920  hfloat2float.rn r7, r18
002ed8  7e8002e0  vmmov mr0, r5
002edc  9f020010  addli r5, zero, 2048
002ee0  6aa12330  vor.u.mh vr2{mr0}, r7, vr2
002ee4  b3930920  hfloat2float.rn r7, r19
002ee8  7e8002e0  vmmov mr0, r5
002eec  9f020020  addli r5, zero, 4096
002ef0  6aa12330  vor.u.mh vr2{mr0}, r7, vr2
002ef4  b3130a20  hfloat2float.rn r7, r20
002ef8  7e8002e0  vmmov mr0, r5
002efc  9f020040  addli r5, zero, 8192
002f00  6aa12330  vor.u.mh vr2{mr0}, r7, vr2
002f04  b3930a20  hfloat2float.rn r7, r21
002f08  7e8002e0  vmmov mr0, r5
002f0c  ab420000  lui r5, 4
002f10  6aa12330  vor.u.mh vr2{mr0}, r7, vr2
002f14  b3130b20  hfloat2float.rn r7, r22
002f18  7e8002e0  vmmov mr0, r5
002f1c  ab820000  lui r5, 8
002f20  6aa12330  vor.u.mh vr2{mr0}, r7, vr2
002f24  7e8002e0  vmmov mr0, r5
002f28  b3930d20  hfloat2float.rn r7, r27
002f2c  9f120000  addli r5, zero, 1
002f30  6aa12330  vor.u.mh vr2{mr0}, r7, vr2
002f34  7e8002e0  vmmov mr0, r5
002f38  b3130d20  hfloat2float.rn r7, r26
002f3c  9f420000  addli r5, zero, 4
002f40  ea213430  vor.u.mh vr3{mr0}, r8, vr3
002f44  fe8102e0  vmmov mr3, r5
002f48  9f021000  addli r5, zero, 8
002f4c  7e8002e0  vmmov mr0, r5
002f50  9f022000  addli r5, zero, 16
002f54  16106102  vadd.f.mz.rn vr0{mr1}, vr2, vr6
002f58  06f30000  vfp162float_h.rn vr6, vr1
002f5c  eaa13334  vor.u.mh vr3{mr2}, r7, vr3
002f60  b3930c20  hfloat2float.rn r7, r25
002f64  eaa13336  vor.u.mh vr3{mr3}, r7, vr3
002f68  b3130c20  hfloat2float.rn r7, r24
002f6c  eaa13330  vor.u.mh vr3{mr0}, r7, vr3
002f70  b3930b20  hfloat2float.rn r7, r23
002f74  7e8002e0  vmmov mr0, r5
002f78  9f024000  addli r5, zero, 32
002f7c  eaa13330  vor.u.mh vr3{mr0}, r7, vr3
002f80  7e8002e0  vmmov mr0, r5
002f84  9f028000  addli r5, zero, 64
002f88  ab830000  lui r7, 8
002f8c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002f90  e3005fec  loadli.w r1,  -2520(r30)
002f94  7e8002e0  vmmov mr0, r5
002f98  9f020001  addli r5, zero, 128
002f9c  b3900020  hfloat2float.rn r1, r1
002fa0  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002fa4  e3405fec  loadli.w r1,  -2516(r30)
002fa8  7e8002e0  vmmov mr0, r5
002fac  9f020002  addli r5, zero, 256
002fb0  b3900020  hfloat2float.rn r1, r1
002fb4  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002fb8  e3006fec  loadli.w r1,  -2512(r30)
002fbc  7e8002e0  vmmov mr0, r5
002fc0  9f020004  addli r5, zero, 512
002fc4  b3900020  hfloat2float.rn r1, r1
002fc8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002fcc  e3406fec  loadli.w r1,  -2508(r30)
002fd0  7e8002e0  vmmov mr0, r5
002fd4  9f020008  addli r5, zero, 1024
002fd8  b3900020  hfloat2float.rn r1, r1
002fdc  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002fe0  e3007fec  loadli.w r1,  -2504(r30)
002fe4  7e8002e0  vmmov mr0, r5
002fe8  9f020010  addli r5, zero, 2048
002fec  b3900020  hfloat2float.rn r1, r1
002ff0  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002ff4  e3407fec  loadli.w r1,  -2500(r30)
002ff8  7e8002e0  vmmov mr0, r5
002ffc  9f020020  addli r5, zero, 4096
003000  b3900020  hfloat2float.rn r1, r1
003004  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003008  e3008fec  loadli.w r1,  -2496(r30)
00300c  7e8002e0  vmmov mr0, r5
003010  9f020040  addli r5, zero, 8192
003014  b3900020  hfloat2float.rn r1, r1
003018  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00301c  e3408fec  loadli.w r1,  -2492(r30)
003020  7e8002e0  vmmov mr0, r5
003024  ab420000  lui r5, 4
003028  b3900020  hfloat2float.rn r1, r1
00302c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003030  e3009fec  loadli.w r1,  -2488(r30)
003034  7e8002e0  vmmov mr0, r5
003038  b3900020  hfloat2float.rn r1, r1
00303c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003040  e300afec  loadli.w r1,  -2480(r30)
003044  e3429fec  loadli.w r5,  -2484(r30)
003048  7e8003e0  vmmov mr0, r7
00304c  ab830000  lui r7, 8
003050  b3900020  hfloat2float.rn r1, r1
003054  b3920220  hfloat2float.rn r5, r5
003058  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00305c  9f100000  addli r1, zero, 1
003060  7e8000e0  vmmov mr0, r1
003064  6aa24230  vor.u.mh vr4{mr0}, r5, vr4
003068  e340afec  loadli.w r1,  -2476(r30)
00306c  9f021000  addli r5, zero, 8
003070  16917102  vadd.f.mz.rn vr2{mr1}, vr3, vr7
003074  86b10000  vfp162float_l.rn vr3, vr1
003078  86100000  vfloat2fp16_l.rn vr1, vr0
00307c  86500100  vfloat2fp16_h.rn vr1, vr2
003080  06b00000  vfp162float_l.rn vr0, vr1
003084  7e8002e0  vmmov mr0, r5
003088  9f022000  addli r5, zero, 16
00308c  06f10000  vfp162float_h.rn vr2, vr1
003090  12100102  vadd.f.mz.rn vr0{mr1}, r2, vr0
003094  92102102  vadd.f.mz.rn vr1{mr1}, r2, vr2
003098  b3900020  hfloat2float.rn r1, r1
00309c  0a100302  vmul.f.mz.rn vr0{mr1}, r6, vr0
0030a0  8a101302  vmul.f.mz.rn vr1{mr1}, r6, vr1
0030a4  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
0030a8  e300bfec  loadli.w r1,  -2472(r30)
0030ac  b3900020  hfloat2float.rn r1, r1
0030b0  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
0030b4  e340bfec  loadli.w r1,  -2468(r30)
0030b8  b3900020  hfloat2float.rn r1, r1
0030bc  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
0030c0  e300cfec  loadli.w r1,  -2464(r30)
0030c4  7e8002e0  vmmov mr0, r5
0030c8  9f024000  addli r5, zero, 32
0030cc  b3900020  hfloat2float.rn r1, r1
0030d0  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
0030d4  e340cfec  loadli.w r1,  -2460(r30)
0030d8  7e8002e0  vmmov mr0, r5
0030dc  9f028000  addli r5, zero, 64
0030e0  fe8102e0  vmmov mr3, r5
0030e4  9f020001  addli r5, zero, 128
0030e8  b3900020  hfloat2float.rn r1, r1
0030ec  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
0030f0  e300dfec  loadli.w r1,  -2456(r30)
0030f4  7e8002e0  vmmov mr0, r5
0030f8  9f020002  addli r5, zero, 256
0030fc  b3900020  hfloat2float.rn r1, r1
003100  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
003104  e340dfec  loadli.w r1,  -2452(r30)
003108  b3900020  hfloat2float.rn r1, r1
00310c  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
003110  e300efec  loadli.w r1,  -2448(r30)
003114  7e8002e0  vmmov mr0, r5
003118  9f020004  addli r5, zero, 512
00311c  b3900020  hfloat2float.rn r1, r1
003120  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
003124  e340efec  loadli.w r1,  -2444(r30)
003128  7e8002e0  vmmov mr0, r5
00312c  9f020008  addli r5, zero, 1024
003130  b3900020  hfloat2float.rn r1, r1
003134  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
003138  e300ffec  loadli.w r1,  -2440(r30)
00313c  7e8002e0  vmmov mr0, r5
003140  9f020010  addli r5, zero, 2048
003144  b3900020  hfloat2float.rn r1, r1
003148  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
00314c  e340ffec  loadli.w r1,  -2436(r30)
003150  7e8002e0  vmmov mr0, r5
003154  9f020020  addli r5, zero, 4096
003158  b3900020  hfloat2float.rn r1, r1
00315c  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
003160  e3000fed  loadli.w r1,  -2432(r30)
003164  7e8002e0  vmmov mr0, r5
003168  9f020040  addli r5, zero, 8192
00316c  b3900020  hfloat2float.rn r1, r1
003170  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
003174  e3008fed  loadli.w r1,  -2368(r30)
003178  7e8002e0  vmmov mr0, r5
00317c  ab420000  lui r5, 4
003180  b3900020  hfloat2float.rn r1, r1
003184  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
003188  e3000fee  loadli.w r1,  -2304(r30)
00318c  7e8002e0  vmmov mr0, r5
003190  b3900020  hfloat2float.rn r1, r1
003194  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
003198  e3000fef  loadli.w r1,  -2176(r30)
00319c  e3028fee  loadli.w r5,  -2240(r30)
0031a0  7e8003e0  vmmov mr0, r7
0031a4  b3900020  hfloat2float.rn r1, r1
0031a8  b3920220  hfloat2float.rn r5, r5
0031ac  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
0031b0  9f100000  addli r1, zero, 1
0031b4  7e8000e0  vmmov mr0, r1
0031b8  eaa25230  vor.u.mh vr5{mr0}, r5, vr5
0031bc  e3008fef  loadli.w r1,  -2112(r30)
0031c0  9f420000  addli r5, zero, 4
0031c4  16113202  vadd.f.mz.rn vr2{mr1}, vr4, vr3
0031c8  06120000  vfloat2fp16_l.rn vr4, vr0
0031cc  06d20000  vfloat2fp16_h.rn vr4, vr1
0031d0  7e8002e0  vmmov mr0, r5
0031d4  9f021000  addli r5, zero, 8
0031d8  b3900020  hfloat2float.rn r1, r1
0031dc  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
0031e0  e3000ff0  loadli.w r1,  -2048(r30)
0031e4  b3900020  hfloat2float.rn r1, r1
0031e8  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0031ec  e3008ff0  loadli.w r1,  -1984(r30)
0031f0  7e8002e0  vmmov mr0, r5
0031f4  9f022000  addli r5, zero, 16
0031f8  b3900020  hfloat2float.rn r1, r1
0031fc  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
003200  e3407ff1  loadli.w r1,  -1860(r30)
003204  7e8002e0  vmmov mr0, r5
003208  9f024000  addli r5, zero, 32
00320c  b3900020  hfloat2float.rn r1, r1
003210  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
003214  e3008ff1  loadli.w r1,  -1856(r30)
003218  7e8002e0  vmmov mr0, r5
00321c  9f020001  addli r5, zero, 128
003220  b3900020  hfloat2float.rn r1, r1
003224  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
003228  e3000ff2  loadli.w r1,  -1792(r30)
00322c  7e8002e0  vmmov mr0, r5
003230  9f020002  addli r5, zero, 256
003234  b3900020  hfloat2float.rn r1, r1
003238  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
00323c  e3008ff2  loadli.w r1,  -1728(r30)
003240  b3900020  hfloat2float.rn r1, r1
003244  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
003248  e3000ff3  loadli.w r1,  -1664(r30)
00324c  7e8002e0  vmmov mr0, r5
003250  9f020004  addli r5, zero, 512
003254  b3900020  hfloat2float.rn r1, r1
003258  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
00325c  e3008ff3  loadli.w r1,  -1600(r30)
003260  7e8002e0  vmmov mr0, r5
003264  9f020008  addli r5, zero, 1024
003268  b3900020  hfloat2float.rn r1, r1
00326c  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
003270  e3000ff4  loadli.w r1,  -1536(r30)
003274  7e8002e0  vmmov mr0, r5
003278  9f020010  addli r5, zero, 2048
00327c  b3900020  hfloat2float.rn r1, r1
003280  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
003284  e3008ff4  loadli.w r1,  -1472(r30)
003288  7e8002e0  vmmov mr0, r5
00328c  9f020020  addli r5, zero, 4096
003290  b3900020  hfloat2float.rn r1, r1
003294  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
003298  e3000ff5  loadli.w r1,  -1408(r30)
00329c  7e8002e0  vmmov mr0, r5
0032a0  9f020040  addli r5, zero, 8192
0032a4  b3900020  hfloat2float.rn r1, r1
0032a8  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0032ac  e3008ff5  loadli.w r1,  -1344(r30)
0032b0  7e8002e0  vmmov mr0, r5
0032b4  ab420000  lui r5, 4
0032b8  b3900020  hfloat2float.rn r1, r1
0032bc  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0032c0  e3000ff6  loadli.w r1,  -1280(r30)
0032c4  7e8002e0  vmmov mr0, r5
0032c8  ab820000  lui r5, 8
0032cc  b3900020  hfloat2float.rn r1, r1
0032d0  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0032d4  e3008ff6  loadli.w r1,  -1216(r30)
0032d8  7e8002e0  vmmov mr0, r5
0032dc  b3900020  hfloat2float.rn r1, r1
0032e0  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0032e4  46104202  vstore_mask16.mz vr4{mr1}, 0(r4)
0032e8  9f000004  addli r1, zero, 512
0032ec  96916202  vadd.f.mz.rn vr3{mr1}, vr5, vr6
0032f0  06100100  vfloat2fp16_l.rn vr0, vr2
0032f4  06d00100  vfloat2fp16_h.rn vr0, vr3
0032f8  86300000  vfp162float_l.rn vr1, vr0
0032fc  06710000  vfp162float_h.rn vr2, vr0
003300  12101102  vadd.f.mz.rn vr0{mr1}, r2, vr1
003304  92102102  vadd.f.mz.rn vr1{mr1}, r2, vr2
003308  0a100302  vmul.f.mz.rn vr0{mr1}, r6, vr0
00330c  8a101302  vmul.f.mz.rn vr1{mr1}, r6, vr1
003310  06110000  vfloat2fp16_l.rn vr2, vr0
003314  06d10000  vfloat2fp16_h.rn vr2, vr1
003318  46142202  vstore_mask16.mz vr2{mr1}, 64(r4)
00331c  00a00000  mfence { lm }
003320  bb8411fc  bneq r3, r1, -1760
003324  1f03dfea  addli r6, r30, -2712
003328  6b510f01  load.d r[3:4], 16(r30)
00332c  ab0000f0  lui r1, 983040
003330  9f030ffc  addli r7, r30, -512
003334  6b520300  load.d r[5:6], 0(r6)
003338  1f030004  addli r6, zero, 512
00333c  0b214110  add.ul r[3:4], r[3:4], r[5:6]
003340  1f020004  addli r4, zero, 512
003344  9f020ff8  addli r5, r30, -1024
003348  97101200  or r1, r4, r1
00334c  1f020ff8  addli r4, r30, -1024
003350  ff304100  s_lm2gm r1, r4, 0(r[3:4])
003354  1f71f00f  addli r2, zero, 2047
003358  00a00000  mfence { lm }
00335c  63045f00  loadli.w r8,  40(r30)
003360  e3444f00  loadli.w r9,  36(r30)
003364  6345efea  loadli.w r10,  -2700(r30)
003368  e3459fea  loadli.w r11,  -2740(r30)
00336c  63069fea  loadli.w r12,  -2744(r30)
003370  e3468fea  loadli.w r13,  -2748(r30)
003374  dbd4f9ff  j -12636
003378  9f0e0fea  addli sp, r30, -2816
00337c  9f8e0e16  addli sp, sp, 2816
003380  00a00300  mfence { lm, sm, gm }
003384  00100000  exit
003388  00100000  exit
00338c  00100000  exit
003390  00100000  exit
003394  00100000  exit
003398  00100000  exit
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
