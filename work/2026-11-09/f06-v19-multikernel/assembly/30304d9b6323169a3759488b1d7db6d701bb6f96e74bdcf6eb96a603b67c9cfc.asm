; SHA-256 30304d9b6323169a3759488b1d7db6d701bb6f96e74bdcf6eb96a603b67c9cfc
; P800 Cluster · XTDK LLVM 19 · 611 / 611 words decoded
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
0000dc  9f8e6efd  addli sp, sp, -336
0000e0  2b010000  lui r2, 0
0000e4  80300002  core_id r1
0000e8  1f8f2e02  addli r30, sp, 272
0000ec  80520002  load_param_i r5, 0
0000f0  9bb12000  slli r3, r1, 2
0000f4  1f010100  addli r2, r2, 0
0000f8  e3454f00  loadli.w r11,  36(r30)
0000fc  63055f00  loadli.w r10,  40(r30)
000100  0b922110  add.s r4, r3, r2
000104  e3014f00  loadli.w r3,  32(r30)
000108  e7014ffe  storeli.w r4, -232(r30)
00010c  73600200  stores.w zero, 0(r4)
000110  2bf20000  lui r4, 15
000114  8b913520  mul.s r3, r11, r3
000118  00a00300  mfence { lm, sm, gm }
00011c  1b16f2ff  ori r12, r4, 4095
000120  8b96a120  mul.s r13, r3, r10
000124  80210604  csr_set csr3, r12
000128  00d00100  sync_group
00012c  4bd85602  ble.s r13, r5, 1556
000130  9f014000  addli r3, zero, 32
000134  1b83f001  andi r6, r1, 31
000138  abf3ff3f  lui r7, 262143
00013c  1f180000  addli r16, zero, 1
000140  80d70002  load_param_i r15, 1
000144  9f0a8ffe  addli r21, r30, -192
000148  1f0b8000  addli r22, zero, 64
00014c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000150  eeb01062  vxor.s.mz vr1{mr1}, vr1, vr1
000154  6741cffe  storeli.w r12, -236(r30)
000158  6701dffe  storeli.w r13, -240(r30)
00015c  0b973030  div.s r14, r1, r3
000160  67406ffe  storeli.w r6, -252(r30)
000164  9b9303fe  ori r7, r7, 4064
000168  eb518f00  load.d r[4:5], 8(r30)
00016c  e700fffe  storeli.w r15, -248(r30)
000170  97837000  and r7, r1, r7
000174  9bb32300  slli r7, r7, 2
000178  1b335700  slli r6, r14, 5
00017c  0b992310  add.s r18, r7, r2
000180  e740effe  storeli.w r14, -244(r30)
000184  0b936018  sub.s r6, r1, r6
000188  9bf00004  setlti r1, r1, 64
00018c  1b345300  slli r8, r6, 5
000190  13030300  seteq r6, r6, zero
000194  67008ffe  storeli.w r8, -256(r30)
000198  33140428  sext_int2long r[9:10], r8
00019c  17340403  sll.d r[9:10], r[9:10], r16
0001a0  8ba18110  add.ul r[4:5], r[4:5], r[9:10]
0001a4  1f747000  addli r8, zero, 63
0001a8  97806000  and r1, r1, r6
0001ac  733c3fee  store.d r[4:5], -264(r30)
0001b0  674f1ffc  storeli.w r1, -268(r30)
0001b4  5b020000  j 16
0001b8  8b92f210  add.s r5, r5, r15
0001bc  3fa0d200  blt.s r5, r13, 8
0001c0  5bb00000  j 1408
0001c4  8b90a230  div.s r1, r5, r10
0001c8  8b90b030  div.s r1, r1, r11
0001cc  9bb01000  slli r1, r1, 1
0001d0  8b91e010  add.s r3, r1, r14
0001d4  bf1f34fe  blt.s r8, r3, -28
0001d8  9f000000  addli r1, zero, 0
0001dc  0b911a10  add.s r2, r21, r1
0001e0  9fc00000  addli r1, r1, 4
0001e4  73100100  store.h zero, 0(r2)
0001e8  73110100  store.h zero, 2(r2)
0001ec  00a00000  mfence { lm }
0001f0  bbbf60ff  bneq r1, r22, -20
0001f4  63010ffe  loadli.w r2,  -256(r30)
0001f8  9bb0a100  slli r1, r3, 10
0001fc  e7433ffe  storeli.w r3, -196(r30)
000200  1f130000  addli r6, zero, 1
000204  92310002  vadd.s.mz vr3{mr1}, zero, vr0
000208  1f100000  addli zero, zero, 1
00020c  fe0100e0  vmmov mr3, zero
000210  17200000  xor zero, zero, zero
000214  8b902010  add.s r1, r1, r2
000218  2b0100f0  lui r2, 983040
00021c  12320002  vadd.s.mz vr4{mr1}, zero, vr0
000220  b3910028  sext_int2long r[4:5], r1
000224  17112b00  or r2, r22, r2
000228  ab0000f0  lui r1, 983040
00022c  97b16102  sll.d r[4:5], r[4:5], r6
000230  6b530f00  load.d r[7:8], 0(r30)
000234  97101b00  or r1, r22, r1
000238  8b213310  add.ul r[4:5], r[7:8], r[4:5]
00023c  7fa15101  l_gm2lm r2, r21, 0(r[4:5])
000240  6b518fef  load.d r[3:4], -264(r30)
000244  1f020fff  addli r4, r30, -128
000248  ff204100  l_gm2lm r1, r4, 0(r[3:4])
00024c  00a00000  mfence { lm }
000250  eb308ffa  load.hu r1, -88(r30)
000254  6b320ff8  load.hu r4, -128(r30)
000258  6b312ff8  load.hu r2, -126(r30)
00025c  42118fe2  vload_mask16.mz vr2{mr1}, 1856(r30)
000260  eb314ff8  load.hu r3, -124(r30)
000264  6b3c6ff8  load.hu r24, -122(r30)
000268  6b348ff8  load.hu r8, -120(r30)
00026c  eb33aff8  load.hu r7, -118(r30)
000270  6b3ecff8  load.hu r28, -116(r30)
000274  eb3deff8  load.hu r27, -114(r30)
000278  6b330ff9  load.hu r6, -112(r30)
00027c  eb342ff9  load.hu r9, -110(r30)
000280  6b354ff9  load.hu r10, -108(r30)
000284  eb396ff9  load.hu r19, -106(r30)
000288  eb388ff9  load.hu r17, -104(r30)
00028c  6b38aff9  load.hu r16, -102(r30)
000290  6b3acff9  load.hu r20, -100(r30)
000294  eb35eff9  load.hu r11, -98(r30)
000298  6b370ffa  load.hu r14, -96(r30)
00029c  eb362ffa  load.hu r13, -94(r30)
0002a0  eb3b4ffa  load.hu r23, -92(r30)
0002a4  eb3c6ffa  load.hu r25, -90(r30)
0002a8  6b3d8ffb  load.hu r26, -72(r30)
0002ac  6b36cffb  load.hu r12, -68(r30)
0002b0  eb37effb  load.hu r15, -66(r30)
0002b4  86320100  vfp162float_l.rn vr5, vr2
0002b8  06730100  vfp162float_h.rn vr6, vr2
0002bc  e7411ffe  storeli.w r1, -228(r30)
0002c0  eb30affa  load.hu r1, -86(r30)
0002c4  67021ffe  storeli.w r1, -224(r30)
0002c8  eb30cffa  load.hu r1, -84(r30)
0002cc  67421ffe  storeli.w r1, -220(r30)
0002d0  eb30effa  load.hu r1, -82(r30)
0002d4  e7021ffe  storeli.w r1, -216(r30)
0002d8  eb300ffb  load.hu r1, -80(r30)
0002dc  e7421ffe  storeli.w r1, -212(r30)
0002e0  eb302ffb  load.hu r1, -78(r30)
0002e4  67031ffe  storeli.w r1, -208(r30)
0002e8  eb304ffb  load.hu r1, -76(r30)
0002ec  67431ffe  storeli.w r1, -204(r30)
0002f0  eb306ffb  load.hu r1, -74(r30)
0002f4  e7031ffe  storeli.w r1, -200(r30)
0002f8  b3100220  hfloat2float.rn r1, r4
0002fc  6b32affb  load.hu r4, -70(r30)
000300  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
000304  b3100120  hfloat2float.rn r1, r2
000308  1f210000  addli r2, zero, 2
00030c  7e0001e0  vmmov mr0, r2
000310  1f410000  addli r2, zero, 4
000314  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000318  b3900120  hfloat2float.rn r1, r3
00031c  7e0101e0  vmmov mr2, r2
000320  1f011000  addli r2, zero, 8
000324  ab810000  lui r3, 8
000328  7e0001e0  vmmov mr0, r2
00032c  1f012000  addli r2, zero, 16
000330  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
000334  b3100c20  hfloat2float.rn r1, r24
000338  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00033c  b3100420  hfloat2float.rn r1, r8
000340  7e0001e0  vmmov mr0, r2
000344  1f014000  addli r2, zero, 32
000348  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00034c  b3900320  hfloat2float.rn r1, r7
000350  7e0001e0  vmmov mr0, r2
000354  1f018000  addli r2, zero, 64
000358  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00035c  b3100e20  hfloat2float.rn r1, r28
000360  7e0001e0  vmmov mr0, r2
000364  1f010001  addli r2, zero, 128
000368  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00036c  b3900d20  hfloat2float.rn r1, r27
000370  7e0001e0  vmmov mr0, r2
000374  1f010002  addli r2, zero, 256
000378  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00037c  b3100320  hfloat2float.rn r1, r6
000380  7e0001e0  vmmov mr0, r2
000384  1f010004  addli r2, zero, 512
000388  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00038c  b3900420  hfloat2float.rn r1, r9
000390  7e0001e0  vmmov mr0, r2
000394  1f010008  addli r2, zero, 1024
000398  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00039c  b3100520  hfloat2float.rn r1, r10
0003a0  7e0001e0  vmmov mr0, r2
0003a4  1f010010  addli r2, zero, 2048
0003a8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0003ac  b3900920  hfloat2float.rn r1, r19
0003b0  7e0001e0  vmmov mr0, r2
0003b4  1f010020  addli r2, zero, 4096
0003b8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0003bc  b3900820  hfloat2float.rn r1, r17
0003c0  7e0001e0  vmmov mr0, r2
0003c4  1f010040  addli r2, zero, 8192
0003c8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0003cc  b3100820  hfloat2float.rn r1, r16
0003d0  7e0001e0  vmmov mr0, r2
0003d4  2b410000  lui r2, 4
0003d8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0003dc  b3100a20  hfloat2float.rn r1, r20
0003e0  7e0001e0  vmmov mr0, r2
0003e4  33110720  hfloat2float.rn r2, r14
0003e8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0003ec  b3900520  hfloat2float.rn r1, r11
0003f0  7e8001e0  vmmov mr0, r3
0003f4  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0003f8  6a224136  vor.u.mh vr4{mr3}, r2, vr4
0003fc  1f210000  addli r2, zero, 2
000400  b3900620  hfloat2float.rn r1, r13
000404  fe0101e0  vmmov mr3, r2
000408  1f011000  addli r2, zero, 8
00040c  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
000410  b3900b20  hfloat2float.rn r1, r23
000414  0e915102  vmul.f.mz.rn vr2{mr1}, vr3, vr5
000418  92320002  vadd.s.mz vr5{mr1}, zero, vr0
00041c  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
000420  b3900c20  hfloat2float.rn r1, r25
000424  7e0101e0  vmmov mr2, r2
000428  1f012000  addli r2, zero, 16
00042c  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
000430  e3403ffe  loadli.w r1,  -228(r30)
000434  7e0101e0  vmmov mr2, r2
000438  1f014000  addli r2, zero, 32
00043c  b3900020  hfloat2float.rn r1, r1
000440  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
000444  e3004ffe  loadli.w r1,  -224(r30)
000448  7e0101e0  vmmov mr2, r2
00044c  1f018000  addli r2, zero, 64
000450  b3900020  hfloat2float.rn r1, r1
000454  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
000458  e3404ffe  loadli.w r1,  -220(r30)
00045c  7e0101e0  vmmov mr2, r2
000460  1f010001  addli r2, zero, 128
000464  b3900020  hfloat2float.rn r1, r1
000468  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
00046c  e3005ffe  loadli.w r1,  -216(r30)
000470  7e0101e0  vmmov mr2, r2
000474  1f010002  addli r2, zero, 256
000478  b3900020  hfloat2float.rn r1, r1
00047c  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
000480  e3405ffe  loadli.w r1,  -212(r30)
000484  7e0101e0  vmmov mr2, r2
000488  1f010004  addli r2, zero, 512
00048c  b3900020  hfloat2float.rn r1, r1
000490  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
000494  e3006ffe  loadli.w r1,  -208(r30)
000498  7e0101e0  vmmov mr2, r2
00049c  1f010008  addli r2, zero, 1024
0004a0  b3900020  hfloat2float.rn r1, r1
0004a4  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
0004a8  e3406ffe  loadli.w r1,  -204(r30)
0004ac  7e0101e0  vmmov mr2, r2
0004b0  1f010010  addli r2, zero, 2048
0004b4  b3900020  hfloat2float.rn r1, r1
0004b8  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
0004bc  e3007ffe  loadli.w r1,  -200(r30)
0004c0  7e0101e0  vmmov mr2, r2
0004c4  1f010020  addli r2, zero, 4096
0004c8  b3900020  hfloat2float.rn r1, r1
0004cc  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
0004d0  b3100d20  hfloat2float.rn r1, r26
0004d4  7e0101e0  vmmov mr2, r2
0004d8  1f010040  addli r2, zero, 8192
0004dc  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
0004e0  b3100220  hfloat2float.rn r1, r4
0004e4  7e0101e0  vmmov mr2, r2
0004e8  2b410000  lui r2, 4
0004ec  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
0004f0  b3100620  hfloat2float.rn r1, r12
0004f4  7e0101e0  vmmov mr2, r2
0004f8  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
0004fc  b3900720  hfloat2float.rn r1, r15
000500  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000504  abf00000  lui r1, 15
000508  9ff0f01f  addli r1, r1, 4095
00050c  8e114302  vmul.f.mz.rn vr3{mr1}, vr6, vr4
000510  12320002  vadd.s.mz vr4{mr1}, zero, vr0
000514  7e8000e0  vmmov mr0, r1
000518  06130100  vfloat2fp16_l.rn vr6, vr2
00051c  06d30100  vfloat2fp16_h.rn vr6, vr3
000520  06310300  vfp162float_l.rn vr2, vr6
000524  86710300  vfp162float_h.rn vr3, vr6
000528  ee923030  vor.f.mh vr5{mr0}, vr1, vr3
00052c  6e922030  vor.f.mh vr4{mr0}, vr1, vr2
000530  16115202  vadd.f.mz.rn vr2{mr1}, vr4, vr5
000534  fa100140  vextracti.f r1, 0(vr2)
000538  7a111140  vextracti.f r2, 1(vr2)
00053c  8be02010  add.f.rn r1, r1, r2
000540  7a112140  vextracti.f r2, 2(vr2)
000544  8b601110  add.f.rn r1, r2, r1
000548  7a113140  vextracti.f r2, 3(vr2)
00054c  8b601110  add.f.rn r1, r2, r1
000550  7a114140  vextracti.f r2, 4(vr2)
000554  8b601110  add.f.rn r1, r2, r1
000558  7a115140  vextracti.f r2, 5(vr2)
00055c  8b601110  add.f.rn r1, r2, r1
000560  7a116140  vextracti.f r2, 6(vr2)
000564  8b601110  add.f.rn r1, r2, r1
000568  7a117140  vextracti.f r2, 7(vr2)
00056c  8b601110  add.f.rn r1, r2, r1
000570  7a118140  vextracti.f r2, 8(vr2)
000574  8b601110  add.f.rn r1, r2, r1
000578  7a119140  vextracti.f r2, 9(vr2)
00057c  8b601110  add.f.rn r1, r2, r1
000580  7a11a140  vextracti.f r2, 10(vr2)
000584  8b601110  add.f.rn r1, r2, r1
000588  7a11b140  vextracti.f r2, 11(vr2)
00058c  8b601110  add.f.rn r1, r2, r1
000590  7a11c140  vextracti.f r2, 12(vr2)
000594  8b601110  add.f.rn r1, r2, r1
000598  7a11d140  vextracti.f r2, 13(vr2)
00059c  8b601110  add.f.rn r1, r2, r1
0005a0  7a11e140  vextracti.f r2, 14(vr2)
0005a4  8b601110  add.f.rn r1, r2, r1
0005a8  7a11f140  vextracti.f r2, 15(vr2)
0005ac  8b601110  add.f.rn r1, r2, r1
0005b0  63013ffe  loadli.w r2,  -232(r30)
0005b4  73601100  stores.w r1, 0(r2)
0005b8  00a00300  mfence { lm, sm, gm }
0005bc  63462ffe  loadli.w r12,  -236(r30)
0005c0  80210604  csr_set csr3, r12
0005c4  00d00100  sync_group
0005c8  e3400ffe  loadli.w r1,  -252(r30)
0005cc  3b940000  bneq r1, zero, 260
0005d0  ef400900  loads.w r1, 0(r18)
0005d4  6f414900  loads.w r2, 4(r18)
0005d8  ef418900  loads.w r3, 8(r18)
0005dc  8be02010  add.f.rn r1, r1, r2
0005e0  6f41c900  loads.w r2, 12(r18)
0005e4  8be03010  add.f.rn r1, r1, r3
0005e8  ef410901  loads.w r3, 16(r18)
0005ec  8be02010  add.f.rn r1, r1, r2
0005f0  6f414901  loads.w r2, 20(r18)
0005f4  8be03010  add.f.rn r1, r1, r3
0005f8  ef418901  loads.w r3, 24(r18)
0005fc  8be02010  add.f.rn r1, r1, r2
000600  6f41c901  loads.w r2, 28(r18)
000604  8be03010  add.f.rn r1, r1, r3
000608  ef410902  loads.w r3, 32(r18)
00060c  8be02010  add.f.rn r1, r1, r2
000610  6f414902  loads.w r2, 36(r18)
000614  8be03010  add.f.rn r1, r1, r3
000618  ef418902  loads.w r3, 40(r18)
00061c  8be02010  add.f.rn r1, r1, r2
000620  6f41c902  loads.w r2, 44(r18)
000624  8be03010  add.f.rn r1, r1, r3
000628  ef410903  loads.w r3, 48(r18)
00062c  8be02010  add.f.rn r1, r1, r2
000630  6f414903  loads.w r2, 52(r18)
000634  8be03010  add.f.rn r1, r1, r3
000638  ef418903  loads.w r3, 56(r18)
00063c  8be02010  add.f.rn r1, r1, r2
000640  6f41c903  loads.w r2, 60(r18)
000644  8be03010  add.f.rn r1, r1, r3
000648  ef410904  loads.w r3, 64(r18)
00064c  8be02010  add.f.rn r1, r1, r2
000650  6f414904  loads.w r2, 68(r18)
000654  8be03010  add.f.rn r1, r1, r3
000658  ef418904  loads.w r3, 72(r18)
00065c  8be02010  add.f.rn r1, r1, r2
000660  6f41c904  loads.w r2, 76(r18)
000664  8be03010  add.f.rn r1, r1, r3
000668  ef410905  loads.w r3, 80(r18)
00066c  8be02010  add.f.rn r1, r1, r2
000670  6f414905  loads.w r2, 84(r18)
000674  8be03010  add.f.rn r1, r1, r3
000678  ef418905  loads.w r3, 88(r18)
00067c  8be02010  add.f.rn r1, r1, r2
000680  6f41c905  loads.w r2, 92(r18)
000684  8be03010  add.f.rn r1, r1, r3
000688  ef410906  loads.w r3, 96(r18)
00068c  8be02010  add.f.rn r1, r1, r2
000690  6f414906  loads.w r2, 100(r18)
000694  8be03010  add.f.rn r1, r1, r3
000698  ef418906  loads.w r3, 104(r18)
00069c  8be02010  add.f.rn r1, r1, r2
0006a0  6f41c906  loads.w r2, 108(r18)
0006a4  8be03010  add.f.rn r1, r1, r3
0006a8  ef410907  loads.w r3, 112(r18)
0006ac  8be02010  add.f.rn r1, r1, r2
0006b0  6f414907  loads.w r2, 116(r18)
0006b4  8be03010  add.f.rn r1, r1, r3
0006b8  ef418907  loads.w r3, 120(r18)
0006bc  8be02010  add.f.rn r1, r1, r2
0006c0  6f41c907  loads.w r2, 124(r18)
0006c4  8be03010  add.f.rn r1, r1, r3
0006c8  8be02010  add.f.rn r1, r1, r2
0006cc  73601900  stores.w r1, 0(r18)
0006d0  00a00300  mfence { lm, sm, gm }
0006d4  80210604  csr_set csr3, r12
0006d8  00d00100  sync_group
0006dc  63055f00  loadli.w r10,  40(r30)
0006e0  e3454f00  loadli.w r11,  36(r30)
0006e4  e3062ffe  loadli.w r13,  -240(r30)
0006e8  63471ffe  loadli.w r14,  -244(r30)
0006ec  e3071ffe  loadli.w r15,  -248(r30)
0006f0  e340effd  loadli.w r1,  -268(r30)
0006f4  63417ffe  loadli.w r2,  -196(r30)
0006f8  1f747000  addli r8, zero, 63
0006fc  b7fa00fc  beq r1, zero, -1348
000700  ef400900  loads.w r1, 0(r18)
000704  33110128  sext_int2long r[3:4], r2
000708  1f130000  addli r6, zero, 1
00070c  2b0200f0  lui r4, 983040
000710  17316102  sll.d r[3:4], r[3:4], r6
000714  6b530f01  load.d r[7:8], 16(r30)
000718  0b212310  add.ul r[3:4], r[7:8], r[3:4]
00071c  b3a00000  float2hfloat.rn r1, r1
000720  73101ffc  store.h r1, -64(r30)
000724  9f200000  addli r1, zero, 2
000728  00a00000  mfence { lm }
00072c  97904000  or r1, r1, r4
000730  1f028fff  addli r4, r30, -64
000734  ff304100  s_lm2gm r1, r4, 0(r[3:4])
000738  00a00000  mfence { lm }
00073c  db4fffff  j -1412
000740  9f8e2e02  addli sp, sp, 272
000744  00a00300  mfence { lm, sm, gm }
000748  00100000  exit
00074c  00100000  exit
000750  00100000  exit
000754  00100000  exit
000758  00100000  exit
00075c  00100000  exit
000760  00100000  exit
000764  00100000  exit
000768  00100000  exit
00076c  00100000  exit
000770  00100000  exit
000774  00100000  exit
000778  00100000  exit
00077c  00100000  exit
000780  00100000  exit
000784  00100000  exit
000788  00100000  exit
00078c  00100000  exit
000790  00100000  exit
000794  00100000  exit
000798  00100000  exit
00079c  00100000  exit
0007a0  00100000  exit
0007a4  00100000  exit
0007a8  00100000  exit
0007ac  00100000  exit
0007b0  00100000  exit
0007b4  00100000  exit
0007b8  00100000  exit
0007bc  00100000  exit
0007c0  00100000  exit
0007c4  00100000  exit
0007c8  00100000  exit
0007cc  00100000  exit
0007d0  00100000  exit
0007d4  00100000  exit
0007d8  00100000  exit
0007dc  00100000  exit
0007e0  00100000  exit
0007e4  00100000  exit
0007e8  00100000  exit
0007ec  00100000  exit
0007f0  00100000  exit
0007f4  00100000  exit
0007f8  00100000  exit
0007fc  00100000  exit
000800  00100000  exit
000804  00100000  exit
000808  00100000  exit
00080c  00100000  exit
000810  00100000  exit
000814  00100000  exit
000818  00100000  exit
00081c  00100000  exit
000820  00100000  exit
000824  00100000  exit
000828  00100000  exit
00082c  00100000  exit
000830  00100000  exit
000834  00100000  exit
000838  00100000  exit
00083c  00100000  exit
000840  00100000  exit
000844  00100000  exit
000848  00100000  exit
00084c  00100000  exit
000850  00100000  exit
000854  00100000  exit
000858  00100000  exit
00085c  00100000  exit
000860  00100000  exit
000864  00100000  exit
000868  00100000  exit
00086c  00100000  exit
000870  00100000  exit
000874  00100000  exit
000878  00100000  exit
00087c  00100000  exit
000880  00100000  exit
000884  00100000  exit
000888  00100000  exit
00088c  00100000  exit
000890  00100000  exit
000894  00100000  exit
000898  00100000  exit
00089c  00100000  exit
0008a0  00100000  exit
0008a4  00100000  exit
0008a8  00100000  exit
0008ac  00100000  exit
0008b0  00100000  exit
0008b4  00100000  exit
0008b8  00100000  exit
0008bc  00100000  exit
0008c0  00100000  exit
0008c4  00100000  exit
0008c8  00100000  exit
0008cc  00100000  exit
0008d0  00100000  exit
0008d4  00100000  exit
0008d8  00100000  exit
0008dc  00100000  exit
0008e0  00100000  exit
0008e4  00100000  exit
0008e8  00100000  exit
0008ec  00100000  exit
0008f0  00100000  exit
0008f4  00100000  exit
0008f8  00100000  exit
0008fc  00100000  exit
000900  00100000  exit
000904  00100000  exit
000908  00100000  exit
00090c  00100000  exit
000910  00100000  exit
000914  00100000  exit
000918  00100000  exit
00091c  00100000  exit
000920  00100000  exit
000924  00100000  exit
000928  00100000  exit
00092c  00100000  exit
000930  00100000  exit
000934  00100000  exit
000938  00100000  exit
00093c  00100000  exit
000940  00100000  exit
000944  00100000  exit
000948  00100000  exit
00094c  00100000  exit
000950  00100000  exit
000954  00100000  exit
000958  00100000  exit
00095c  00100000  exit
000960  00100000  exit
000964  00100000  exit
000968  00100000  exit
00096c  00100000  exit
000970  00100000  exit
000974  00100000  exit
000978  00100000  exit
00097c  00100000  exit
000980  00100000  exit
000984  00100000  exit
000988  00100000  exit
