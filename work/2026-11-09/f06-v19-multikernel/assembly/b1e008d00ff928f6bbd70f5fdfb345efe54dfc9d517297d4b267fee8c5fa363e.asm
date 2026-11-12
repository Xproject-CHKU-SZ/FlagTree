; SHA-256 b1e008d00ff928f6bbd70f5fdfb345efe54dfc9d517297d4b267fee8c5fa363e
; P800 Cluster · XTDK LLVM 19 · 2425 / 2425 words decoded
; bound names: triton_red_fused_add_native_layer_norm_0, triton_unk_fused_0
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
000078  9f497000  addli r19, zero, 60
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
0000dc  9f8e0ee8  addli sp, sp, -3072
0000e0  2b010000  lui r2, 0
0000e4  80300002  core_id r1
0000e8  1f8f8e17  addli r30, sp, 3008
0000ec  ab04803f  lui r9, 260096
0000f0  80560002  load_param_i r13, 0
0000f4  9bb12000  slli r3, r1, 2
0000f8  1f010100  addli r2, r2, 0
0000fc  e3436f00  loadli.w r7,  52(r30)
000100  63026f00  loadli.w r4,  48(r30)
000104  63037f00  loadli.w r6,  56(r30)
000108  8b922110  add.s r5, r3, r2
00010c  0b924320  mul.s r4, r7, r4
000110  1f840210  addli r8, r5, 2048
000114  73e00200  stores.w zero, 0(r5)
000118  e7085fe8  storeli.w r5, -2936(r30)
00011c  9f820220  addli r5, r5, 4096
000120  0b126220  mul.s r4, r4, r6
000124  67085fe8  storeli.w r5, -2944(r30)
000128  73e09200  stores.w r9, 0(r5)
00012c  abf20000  lui r5, 15
000130  67488fe8  storeli.w r8, -2940(r30)
000134  73600400  stores.w zero, 0(r8)
000138  00a00300  mfence { lm, sm, gm }
00013c  9b92f2ff  ori r5, r5, 4095
000140  e7495fe8  storeli.w r5, -2916(r30)
000144  80a10204  csr_set csr3, r5
000148  00d00100  sync_group
00014c  67054fe8  storeli.w r4, -2992(r30)
000150  4b19d210  ble.s r4, r13, 8772
000154  1f021000  addli r4, zero, 8
000158  80d50002  load_param_i r11, 1
00015c  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
000160  1f170000  addli r14, zero, 1
000164  6b548f00  load.d r[9:10], 8(r30)
000168  6b530f01  load.d r[7:8], 16(r30)
00016c  eeb13162  vxor.s.mz vr3{mr1}, vr3, vr3
000170  0b954030  div.s r10, r1, r4
000174  e704bfe8  storeli.w r11, -3000(r30)
000178  6b528f01  load.d r[5:6], 24(r30)
00017c  e744afe8  storeli.w r10, -2996(r30)
000180  1b353500  slli r10, r10, 3
000184  0b95a018  sub.s r10, r1, r10
000188  9b807000  andi r1, r1, 7
00018c  9b358500  slli r11, r10, 8
000190  2bf5ffff  lui r10, 1048575
000194  e7451fe8  storeli.w r1, -2980(r30)
000198  1b1505fe  ori r10, r10, 4064
00019c  e747bfe8  storeli.w r11, -2948(r30)
0001a0  b3950528  sext_int2long r[12:13], r11
0001a4  9781a100  and r3, r3, r10
0001a8  97b5e502  sll.d r[12:13], r[12:13], r14
0001ac  1f05efe8  addli r10, r30, -2960
0001b0  0b912110  add.s r2, r3, r2
0001b4  0b24b410  add.ul r[9:10], r[9:10], r[12:13]
0001b8  0b23b310  add.ul r[7:8], r[7:8], r[12:13]
0001bc  0b22b210  add.ul r[5:6], r[5:6], r[12:13]
0001c0  9f000110  addli r1, r2, 2048
0001c4  73308500  store.d r[9:10], 0(r10)
0001c8  1f04dfe8  addli r8, r30, -2968
0001cc  e7092fe8  storeli.w r2, -2920(r30)
0001d0  9f040004  addli r9, zero, 512
0001d4  67491fe8  storeli.w r1, -2924(r30)
0001d8  9f000ff8  addli r1, r30, -1024
0001dc  73306400  store.d r[7:8], 0(r8)
0001e0  1f03cfe8  addli r6, r30, -2976
0001e4  9f73f00f  addli r7, zero, 2047
0001e8  1f040ff0  addli r8, r30, -2048
0001ec  9fe17000  addli r3, r1, 62
0001f0  9f100000  addli r1, zero, 1
0001f4  73304300  store.d r[5:6], 0(r6)
0001f8  1f020120  addli r4, r2, 4096
0001fc  1f010ffc  addli r2, r30, -512
000200  9f020ff4  addli r5, r30, -1536
000204  7e8000e0  vmmov mr0, r1
000208  ab00803f  lui r1, 260096
00020c  1f034100  addli r6, r2, 32
000210  67454fe8  storeli.w r4, -2988(r30)
000214  670b3fe8  storeli.w r3, -2896(r30)
000218  6a907022  vor.f.mz vr0{mr1}, r1, vr7
00021c  abf00000  lui r1, 15
000220  e74a6fe8  storeli.w r6, -2900(r30)
000224  9ff0f01f  addli r1, r1, 4095
000228  7e8100e0  vmmov mr2, r1
00022c  9f000fef  addli r1, r30, -2176
000230  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
000234  ab10833a  lui r1, 239665
000238  ee930134  vor.f.mh vr7{mr2}, vr3, vr0
00023c  9b90f026  ori r1, r1, 623
000240  e7051fe8  storeli.w r1, -2984(r30)
000244  9f000fea  addli r1, r30, -2816
000248  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
00024c  9f008fe9  addli r1, r30, -2880
000250  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
000254  5b030000  j 24
000258  e3009fe8  loadli.w r1,  -3000(r30)
00025c  8b961610  add.s r13, r13, r1
000260  e300afe8  loadli.w r1,  -2992(r30)
000264  3fa01600  blt.s r13, r1, 8
000268  db250400  j 8492
00026c  e3007f00  loadli.w r1,  56(r30)
000270  63416f00  loadli.w r2,  52(r30)
000274  1f858200  addli r10, r5, 64
000278  9fe57200  addli r11, r5, 62
00027c  1f170000  addli r14, zero, 1
000280  6709dfe8  storeli.w r13, -2928(r30)
000284  674bafe8  storeli.w r10, -2892(r30)
000288  6747bfea  storeli.w r11, -2700(r30)
00028c  8b901630  div.s r1, r13, r1
000290  8b902030  div.s r1, r1, r2
000294  63419fe8  loadli.w r2,  -2996(r30)
000298  9bb04000  slli r1, r1, 4
00029c  0b962010  add.s r12, r1, r2
0002a0  9f000000  addli r1, zero, 0
0002a4  e748cfe8  storeli.w r12, -2932(r30)
0002a8  00a00000  mfence { lm }
0002ac  db020000  j 20
0002b0  1b011700  andi r2, r14, 1
0002b4  9f001000  addli r1, zero, 8
0002b8  1f070000  addli r14, zero, 0
0002bc  377e01fe  beq r2, zero, -100
0002c0  8b101610  add.s r1, r12, r1
0002c4  bfbf13fe  blt.s r7, r1, -20
0002c8  9f210000  addli r3, zero, 2
0002cc  1f010000  addli r2, zero, 0
0002d0  7e8101e0  vmmov mr2, r3
0002d4  8b112410  add.s r3, r8, r2
0002d8  1f410100  addli r2, r2, 4
0002dc  73900100  store.h zero, 0(r3)
0002e0  73910100  store.h zero, 2(r3)
0002e4  00a00000  mfence { lm }
0002e8  bb3f91fe  bneq r2, r9, -20
0002ec  6341ffe8  loadli.w r2,  -2948(r30)
0002f0  9bb0b000  slli r1, r1, 11
0002f4  9f110000  addli r3, zero, 1
0002f8  1f024fe9  addli r4, r30, -2912
0002fc  e70aefe8  storeli.w r14, -2904(r30)
000300  8b902010  add.s r1, r1, r2
000304  b3900028  sext_int2long r[2:3], r1
000308  17b33002  sll.d r[7:8], r[2:3], r3
00030c  6b510f00  load.d r[3:4], 0(r30)
000310  ab0000f0  lui r1, 983040
000314  97901400  or r1, r9, r1
000318  73306200  store.d r[7:8], 0(r4)
00031c  0b216110  add.ul r[3:4], r[3:4], r[7:8]
000320  ff208100  l_gm2lm r1, r8, 0(r[3:4])
000324  9f000000  addli r1, zero, 0
000328  0b911210  add.s r2, r5, r1
00032c  9fc00000  addli r1, r1, 4
000330  73100100  store.h zero, 0(r2)
000334  73110100  store.h zero, 2(r2)
000338  00a00000  mfence { lm }
00033c  bbbf90fe  bneq r1, r9, -20
000340  1f02efe8  addli r4, r30, -2960
000344  ab0000f0  lui r1, 983040
000348  6b510200  load.d r[3:4], 0(r4)
00034c  97901400  or r1, r9, r1
000350  ff205100  l_gm2lm r1, r5, 0(r[3:4])
000354  00a00000  mfence { lm }
000358  eb300fa3  load.hu r1, -1488(r30)
00035c  6b390fa0  load.hu r18, -1536(r30)
000360  6b312fa0  load.hu r2, -1534(r30)
000364  eb314fa0  load.hu r3, -1532(r30)
000368  6b326fa0  load.hu r4, -1530(r30)
00036c  6b3e8fa0  load.hu r28, -1528(r30)
000370  eb3dafa0  load.hu r27, -1526(r30)
000374  6b3dcfa0  load.hu r26, -1524(r30)
000378  eb3cefa0  load.hu r25, -1522(r30)
00037c  eb3b0fa1  load.hu r23, -1520(r30)
000380  eb3a2fa1  load.hu r21, -1518(r30)
000384  eb394fa1  load.hu r19, -1516(r30)
000388  eb386fa1  load.hu r17, -1514(r30)
00038c  6b388fa1  load.hu r16, -1512(r30)
000390  eb37afa1  load.hu r15, -1510(r30)
000394  6b37cfa1  load.hu r14, -1508(r30)
000398  6b36efa1  load.hu r12, -1506(r30)
00039c  eb360fa2  load.hu r13, -1504(r30)
0003a0  eb352fa2  load.hu r11, -1502(r30)
0003a4  6b354fa2  load.hu r10, -1500(r30)
0003a8  eb346fa2  load.hu r9, -1498(r30)
0003ac  6b348fa2  load.hu r8, -1496(r30)
0003b0  eb33afa2  load.hu r7, -1494(r30)
0003b4  6b33cfa2  load.hu r6, -1492(r30)
0003b8  eb32efa2  load.hu r5, -1490(r30)
0003bc  6b3c8fa3  load.hu r24, -1480(r30)
0003c0  6b3bafa3  load.hu r22, -1478(r30)
0003c4  6b3acfa3  load.hu r20, -1476(r30)
0003c8  67081fec  storeli.w r1, -2432(r30)
0003cc  eb302fa3  load.hu r1, -1486(r30)
0003d0  e74f1fec  storeli.w r1, -2308(r30)
0003d4  eb304fa3  load.hu r1, -1484(r30)
0003d8  67001fee  storeli.w r1, -2304(r30)
0003dc  eb306fa3  load.hu r1, -1482(r30)
0003e0  67041fee  storeli.w r1, -2240(r30)
0003e4  9f000ff0  addli r1, r30, -2048
0003e8  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0003ec  b3100920  hfloat2float.rn r1, r18
0003f0  1f090fef  addli r18, r30, -2176
0003f4  86320000  vfp162float_l.rn vr5, vr0
0003f8  06730000  vfp162float_h.rn vr6, vr0
0003fc  42140902  vload_mask16.mz vr8{mr1}, 0(r18)
000400  6b39efa3  load.hu r18, -1474(r30)
000404  92308002  vadd.s.mz vr1{mr1}, zero, vr8
000408  12328002  vadd.s.mz vr4{mr1}, zero, vr8
00040c  92348002  vadd.s.mz vr9{mr1}, zero, vr8
000410  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000414  b3100120  hfloat2float.rn r1, r2
000418  1f410000  addli r2, zero, 4
00041c  7e0001e0  vmmov mr0, r2
000420  1f011000  addli r2, zero, 8
000424  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000428  b3900120  hfloat2float.rn r1, r3
00042c  7e0101e0  vmmov mr2, r2
000430  1f012000  addli r2, zero, 16
000434  ab810000  lui r3, 8
000438  fe0101e0  vmmov mr3, r2
00043c  1f014000  addli r2, zero, 32
000440  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000444  b3100220  hfloat2float.rn r1, r4
000448  7e0001e0  vmmov mr0, r2
00044c  1f018000  addli r2, zero, 64
000450  1f020ff8  addli r4, r30, -1024
000454  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000458  b3100e20  hfloat2float.rn r1, r28
00045c  7e0101e0  vmmov mr2, r2
000460  1f010001  addli r2, zero, 128
000464  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
000468  b3900d20  hfloat2float.rn r1, r27
00046c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000470  b3100d20  hfloat2float.rn r1, r26
000474  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000478  b3900c20  hfloat2float.rn r1, r25
00047c  7e0101e0  vmmov mr2, r2
000480  1f010002  addli r2, zero, 256
000484  fe0101e0  vmmov mr3, r2
000488  1f010004  addli r2, zero, 512
00048c  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000490  b3900b20  hfloat2float.rn r1, r23
000494  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
000498  b3900a20  hfloat2float.rn r1, r21
00049c  fe0101e0  vmmov mr3, r2
0004a0  1f010008  addli r2, zero, 1024
0004a4  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
0004a8  b3900920  hfloat2float.rn r1, r19
0004ac  fe0101e0  vmmov mr3, r2
0004b0  1f010010  addli r2, zero, 2048
0004b4  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
0004b8  b3900820  hfloat2float.rn r1, r17
0004bc  fe0101e0  vmmov mr3, r2
0004c0  1f010020  addli r2, zero, 4096
0004c4  7e0101e0  vmmov mr2, r2
0004c8  1f010040  addli r2, zero, 8192
0004cc  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
0004d0  b3100820  hfloat2float.rn r1, r16
0004d4  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0004d8  b3900720  hfloat2float.rn r1, r15
0004dc  7e0101e0  vmmov mr2, r2
0004e0  2b410000  lui r2, 4
0004e4  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0004e8  b3100720  hfloat2float.rn r1, r14
0004ec  7e0101e0  vmmov mr2, r2
0004f0  33910620  hfloat2float.rn r2, r13
0004f4  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0004f8  b3100620  hfloat2float.rn r1, r12
0004fc  7e8101e0  vmmov mr2, r3
000500  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000504  9f100000  addli r1, zero, 1
000508  7e8100e0  vmmov mr2, r1
00050c  b3900520  hfloat2float.rn r1, r11
000510  6a224134  vor.u.mh vr4{mr2}, r2, vr4
000514  1f210000  addli r2, zero, 2
000518  16905002  vadd.f.mz.rn vr0{mr1}, vr1, vr5
00051c  92328002  vadd.s.mz vr5{mr1}, zero, vr8
000520  7e0101e0  vmmov mr2, r2
000524  1f410000  addli r2, zero, 4
000528  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
00052c  b3100520  hfloat2float.rn r1, r10
000530  7e0101e0  vmmov mr2, r2
000534  1f011000  addli r2, zero, 8
000538  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
00053c  b3900420  hfloat2float.rn r1, r9
000540  7e0101e0  vmmov mr2, r2
000544  1f012000  addli r2, zero, 16
000548  9f040004  addli r9, zero, 512
00054c  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
000550  b3100420  hfloat2float.rn r1, r8
000554  7e0101e0  vmmov mr2, r2
000558  1f018000  addli r2, zero, 64
00055c  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
000560  b3900320  hfloat2float.rn r1, r7
000564  7e0101e0  vmmov mr2, r2
000568  1f010001  addli r2, zero, 128
00056c  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000570  b3100320  hfloat2float.rn r1, r6
000574  7e0001e0  vmmov mr0, r2
000578  1f010002  addli r2, zero, 256
00057c  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
000580  b3900220  hfloat2float.rn r1, r5
000584  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000588  e3000fed  loadli.w r1,  -2432(r30)
00058c  7e0001e0  vmmov mr0, r2
000590  1f010004  addli r2, zero, 512
000594  7e0101e0  vmmov mr2, r2
000598  1f010008  addli r2, zero, 1024
00059c  b3900020  hfloat2float.rn r1, r1
0005a0  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
0005a4  e340ffed  loadli.w r1,  -2308(r30)
0005a8  b3900020  hfloat2float.rn r1, r1
0005ac  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
0005b0  e3000fee  loadli.w r1,  -2304(r30)
0005b4  7e0101e0  vmmov mr2, r2
0005b8  1f010020  addli r2, zero, 4096
0005bc  7e0001e0  vmmov mr0, r2
0005c0  1f010040  addli r2, zero, 8192
0005c4  b3900020  hfloat2float.rn r1, r1
0005c8  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
0005cc  e3008fee  loadli.w r1,  -2240(r30)
0005d0  b3900020  hfloat2float.rn r1, r1
0005d4  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
0005d8  b3100c20  hfloat2float.rn r1, r24
0005dc  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
0005e0  b3100b20  hfloat2float.rn r1, r22
0005e4  7e0001e0  vmmov mr0, r2
0005e8  2b410000  lui r2, 4
0005ec  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
0005f0  b3100a20  hfloat2float.rn r1, r20
0005f4  7e0001e0  vmmov mr0, r2
0005f8  2b810000  lui r2, 8
0005fc  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000600  b3100920  hfloat2float.rn r1, r18
000604  7e0001e0  vmmov mr0, r2
000608  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
00060c  abf00000  lui r1, 15
000610  9ff0f01f  addli r1, r1, 4095
000614  96106202  vadd.f.mz.rn vr1{mr1}, vr4, vr6
000618  7e8000e0  vmmov mr0, r1
00061c  06120000  vfloat2fp16_l.rn vr4, vr0
000620  06d20000  vfloat2fp16_h.rn vr4, vr1
000624  06300200  vfp162float_l.rn vr0, vr4
000628  9f000000  addli r1, zero, 0
00062c  86700200  vfp162float_h.rn vr1, vr4
000630  ee940130  vor.f.mh vr9{mr0}, vr3, vr0
000634  ee921130  vor.f.mh vr5{mr0}, vr3, vr1
000638  0b111210  add.s r2, r4, r1
00063c  9fc00000  addli r1, r1, 4
000640  73100100  store.h zero, 0(r2)
000644  73110100  store.h zero, 2(r2)
000648  00a00000  mfence { lm }
00064c  bbbf90fe  bneq r1, r9, -20
000650  9f02dfe8  addli r5, r30, -2968
000654  ab0000f0  lui r1, 983040
000658  92305002  vadd.s.mz vr1{mr1}, zero, vr5
00065c  6bd10200  load.d r[3:4], 0(r5)
000660  97901400  or r1, r9, r1
000664  ff204100  l_gm2lm r1, r4, 0(r[3:4])
000668  9f000000  addli r1, zero, 0
00066c  1f020ffc  addli r4, r30, -512
000670  0b111210  add.s r2, r4, r1
000674  9fc00000  addli r1, r1, 4
000678  73100100  store.h zero, 0(r2)
00067c  73110100  store.h zero, 2(r2)
000680  00a00000  mfence { lm }
000684  bbbf90fe  bneq r1, r9, -20
000688  1f03cfe8  addli r6, r30, -2976
00068c  ab0000f0  lui r1, 983040
000690  12347002  vadd.s.mz vr8{mr1}, zero, vr7
000694  92317002  vadd.s.mz vr3{mr1}, zero, vr7
000698  92339002  vadd.s.mz vr7{mr1}, zero, vr9
00069c  9f020000  addli r5, zero, 0
0006a0  6b510300  load.d r[3:4], 0(r6)
0006a4  97901400  or r1, r9, r1
0006a8  ff204100  l_gm2lm r1, r4, 0(r[3:4])
0006ac  9f000fef  addli r1, r30, -2176
0006b0  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
0006b4  9f008fee  addli r1, r30, -2240
0006b8  00a00000  mfence { lm }
0006bc  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0006c0  12325002  vadd.s.mz vr4{mr1}, zero, vr5
0006c4  9f000fed  addli r1, r30, -2432
0006c8  e74f5fec  storeli.w r5, -2308(r30)
0006cc  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
0006d0  9f000fee  addli r1, r30, -2304
0006d4  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
0006d8  e3406fe9  loadli.w r1,  -2892(r30)
0006dc  0b975010  add.s r14, r1, r5
0006e0  9f000ff0  addli r1, r30, -2048
0006e4  0b935010  add.s r6, r1, r5
0006e8  eb30e702  load.hu r1, 46(r14)
0006ec  eb340700  load.hu r9, 0(r14)
0006f0  6b312700  load.hu r2, 2(r14)
0006f4  eb364700  load.hu r13, 4(r14)
0006f8  eb316700  load.hu r3, 6(r14)
0006fc  6b328700  load.hu r4, 8(r14)
000700  6b3ea700  load.hu r28, 10(r14)
000704  eb3dc700  load.hu r27, 12(r14)
000708  6b3de700  load.hu r26, 14(r14)
00070c  eb3c0701  load.hu r25, 16(r14)
000710  6b3c2701  load.hu r24, 18(r14)
000714  eb3b4701  load.hu r23, 20(r14)
000718  6b3b6701  load.hu r22, 22(r14)
00071c  eb3a8701  load.hu r21, 24(r14)
000720  6b3aa701  load.hu r20, 26(r14)
000724  eb39c701  load.hu r19, 28(r14)
000728  eb38e701  load.hu r17, 30(r14)
00072c  6b390702  load.hu r18, 32(r14)
000730  6b382702  load.hu r16, 34(r14)
000734  eb374702  load.hu r15, 36(r14)
000738  eb326702  load.hu r5, 38(r14)
00073c  eb338702  load.hu r7, 40(r14)
000740  6b36a702  load.hu r12, 42(r14)
000744  6b35c702  load.hu r10, 44(r14)
000748  674f1fea  storeli.w r1, -2572(r30)
00074c  eb300703  load.hu r1, 48(r14)
000750  e74f1fea  storeli.w r1, -2564(r30)
000754  eb302703  load.hu r1, 50(r14)
000758  00a00000  mfence { lm }
00075c  67041fec  storeli.w r1, -2496(r30)
000760  b3900420  hfloat2float.rn r1, r9
000764  42118302  vload_mask16.mz vr2{mr1}, 64(r6)
000768  6b33a703  load.hu r6, 58(r14)
00076c  6b344703  load.hu r8, 52(r14)
000770  eb356703  load.hu r11, 54(r14)
000774  eb348703  load.hu r9, 56(r14)
000778  e70f6fea  storeli.w r6, -2568(r30)
00077c  6b33c703  load.hu r6, 60(r14)
000780  6b37e703  load.hu r14, 62(r14)
000784  67006fec  storeli.w r6, -2560(r30)
000788  1f030fef  addli r6, r30, -2176
00078c  42120302  vload_mask16.mz vr4{mr1}, 0(r6)
000790  1f130000  addli r6, zero, 1
000794  7e0103e0  vmmov mr2, r6
000798  12354002  vadd.s.mz vr10{mr1}, zero, vr4
00079c  12304002  vadd.s.mz vr0{mr1}, zero, vr4
0007a0  12334002  vadd.s.mz vr6{mr1}, zero, vr4
0007a4  92344002  vadd.s.mz vr9{mr1}, zero, vr4
0007a8  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
0007ac  b3100120  hfloat2float.rn r1, r2
0007b0  1f210000  addli r2, zero, 2
0007b4  7e0001e0  vmmov mr0, r2
0007b8  1f410000  addli r2, zero, 4
0007bc  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
0007c0  b3900620  hfloat2float.rn r1, r13
0007c4  fe0101e0  vmmov mr3, r2
0007c8  1f011000  addli r2, zero, 8
0007cc  9f060008  addli r13, zero, 1024
0007d0  6aa5a036  vor.u.mh vr10{mr3}, r1, vr10
0007d4  b3900120  hfloat2float.rn r1, r3
0007d8  fe0101e0  vmmov mr3, r2
0007dc  1f012000  addli r2, zero, 16
0007e0  ab810000  lui r3, 8
0007e4  6aa5a036  vor.u.mh vr10{mr3}, r1, vr10
0007e8  b3100220  hfloat2float.rn r1, r4
0007ec  fe0101e0  vmmov mr3, r2
0007f0  1f014000  addli r2, zero, 32
0007f4  6aa5a036  vor.u.mh vr10{mr3}, r1, vr10
0007f8  b3100e20  hfloat2float.rn r1, r28
0007fc  fe0101e0  vmmov mr3, r2
000800  1f018000  addli r2, zero, 64
000804  6aa5a036  vor.u.mh vr10{mr3}, r1, vr10
000808  b3900d20  hfloat2float.rn r1, r27
00080c  fe0101e0  vmmov mr3, r2
000810  1f010001  addli r2, zero, 128
000814  6aa5a036  vor.u.mh vr10{mr3}, r1, vr10
000818  b3100d20  hfloat2float.rn r1, r26
00081c  fe0101e0  vmmov mr3, r2
000820  1f010002  addli r2, zero, 256
000824  6aa5a036  vor.u.mh vr10{mr3}, r1, vr10
000828  b3900c20  hfloat2float.rn r1, r25
00082c  fe0101e0  vmmov mr3, r2
000830  1f010004  addli r2, zero, 512
000834  6aa5a036  vor.u.mh vr10{mr3}, r1, vr10
000838  b3100c20  hfloat2float.rn r1, r24
00083c  fe0101e0  vmmov mr3, r2
000840  1f010008  addli r2, zero, 1024
000844  6aa5a036  vor.u.mh vr10{mr3}, r1, vr10
000848  b3900b20  hfloat2float.rn r1, r23
00084c  fe0101e0  vmmov mr3, r2
000850  1f010010  addli r2, zero, 2048
000854  6aa5a036  vor.u.mh vr10{mr3}, r1, vr10
000858  b3100b20  hfloat2float.rn r1, r22
00085c  fe0101e0  vmmov mr3, r2
000860  1f010020  addli r2, zero, 4096
000864  7e0101e0  vmmov mr2, r2
000868  1f010040  addli r2, zero, 8192
00086c  6aa5a036  vor.u.mh vr10{mr3}, r1, vr10
000870  b3900a20  hfloat2float.rn r1, r21
000874  7e0001e0  vmmov mr0, r2
000878  2b410000  lui r2, 4
00087c  9f0a0040  addli r21, zero, 8192
000880  fe0101e0  vmmov mr3, r2
000884  33110920  hfloat2float.rn r2, r18
000888  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
00088c  b3100a20  hfloat2float.rn r1, r20
000890  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000894  b3900920  hfloat2float.rn r1, r19
000898  6aa5a036  vor.u.mh vr10{mr3}, r1, vr10
00089c  b3900820  hfloat2float.rn r1, r17
0008a0  fe8101e0  vmmov mr3, r3
0008a4  ab810000  lui r3, 8
0008a8  6aa5a036  vor.u.mh vr10{mr3}, r1, vr10
0008ac  9f100000  addli r1, zero, 1
0008b0  fe8100e0  vmmov mr3, r1
0008b4  b3100820  hfloat2float.rn r1, r16
0008b8  6a200136  vor.u.mh vr0{mr3}, r2, vr0
0008bc  1f210000  addli r2, zero, 2
0008c0  fe0101e0  vmmov mr3, r2
0008c4  1f410000  addli r2, zero, 4
0008c8  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
0008cc  b3900720  hfloat2float.rn r1, r15
0008d0  fe0101e0  vmmov mr3, r2
0008d4  1f011000  addli r2, zero, 8
0008d8  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
0008dc  b3900220  hfloat2float.rn r1, r5
0008e0  fe0101e0  vmmov mr3, r2
0008e4  1f012000  addli r2, zero, 16
0008e8  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
0008ec  b3900320  hfloat2float.rn r1, r7
0008f0  fe0101e0  vmmov mr3, r2
0008f4  1f014000  addli r2, zero, 32
0008f8  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
0008fc  b3100620  hfloat2float.rn r1, r12
000900  fe0101e0  vmmov mr3, r2
000904  1f018000  addli r2, zero, 64
000908  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
00090c  b3100520  hfloat2float.rn r1, r10
000910  fe0101e0  vmmov mr3, r2
000914  1f010001  addli r2, zero, 128
000918  1f050001  addli r10, zero, 128
00091c  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
000920  e340efeb  loadli.w r1,  -2572(r30)
000924  fe0101e0  vmmov mr3, r2
000928  1f010002  addli r2, zero, 256
00092c  b3900020  hfloat2float.rn r1, r1
000930  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
000934  e340ffeb  loadli.w r1,  -2564(r30)
000938  fe0101e0  vmmov mr3, r2
00093c  1f010004  addli r2, zero, 512
000940  b3900020  hfloat2float.rn r1, r1
000944  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
000948  e3008fec  loadli.w r1,  -2496(r30)
00094c  fe0101e0  vmmov mr3, r2
000950  1f010008  addli r2, zero, 1024
000954  b3900020  hfloat2float.rn r1, r1
000958  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
00095c  b3100420  hfloat2float.rn r1, r8
000960  fe0101e0  vmmov mr3, r2
000964  1f010010  addli r2, zero, 2048
000968  1f140000  addli r8, zero, 1
00096c  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
000970  b3900520  hfloat2float.rn r1, r11
000974  fe0101e0  vmmov mr3, r2
000978  1f018fec  addli r2, r30, -2496
00097c  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
000980  b3900420  hfloat2float.rn r1, r9
000984  9f240000  addli r9, zero, 2
000988  fe8106e0  vmmov mr3, r13
00098c  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
000990  e300ffeb  loadli.w r1,  -2568(r30)
000994  7e0104e0  vmmov mr2, r8
000998  b3900020  hfloat2float.rn r1, r1
00099c  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0009a0  e3000fec  loadli.w r1,  -2560(r30)
0009a4  00a00000  mfence { lm }
0009a8  46103102  vstore_mask16.mz vr3{mr1}, 0(r2)
0009ac  1f018fe9  addli r2, r30, -2880
0009b0  86320100  vfp162float_l.rn vr5, vr2
0009b4  96125502  vadd.f.mz.rn vr5{mr1}, vr10, vr5
0009b8  06750100  vfp162float_h.rn vr10, vr2
0009bc  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0009c0  2b410000  lui r2, 4
0009c4  b3900020  hfloat2float.rn r1, r1
0009c8  7e0001e0  vmmov mr0, r2
0009cc  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0009d0  b3100720  hfloat2float.rn r1, r14
0009d4  7e8001e0  vmmov mr0, r3
0009d8  1f070010  addli r14, zero, 2048
0009dc  96911102  vadd.f.mz.rn vr3{mr1}, vr3, vr1
0009e0  7a920040  vextracti.f r4, 0(vr1)
0009e4  fa931040  vextracti.f r7, 1(vr1)
0009e8  7a962040  vextracti.f r12, 2(vr1)
0009ec  7a944040  vextracti.f r8, 4(vr1)
0009f0  fa985040  vextracti.f r17, 5(vr1)
0009f4  fa996040  vextracti.f r19, 6(vr1)
0009f8  7a997040  vextracti.f r18, 7(vr1)
0009fc  7a9a8040  vextracti.f r20, 8(vr1)
000a00  7a989040  vextracti.f r16, 9(vr1)
000a04  fa97b040  vextracti.f r15, 11(vr1)
000a08  fa95c040  vextracti.f r11, 12(vr1)
000a0c  fa91f040  vextracti.f r3, 15(vr1)
000a10  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000a14  9f000fec  addli r1, r30, -2560
000a18  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
000a1c  16141402  vadd.f.mz.rn vr8{mr1}, vr8, vr1
000a20  7a910140  vextracti.f r2, 0(vr3)
000a24  fa901140  vextracti.f r1, 1(vr3)
000a28  7a932140  vextracti.f r6, 2(vr3)
000a2c  fa96d140  vextracti.f r13, 13(vr3)
000a30  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
000a34  06950200  vfloat2fp16_l.rn vr10, vr5
000a38  06550000  vfloat2fp16_h.rn vr10, vr0
000a3c  86320500  vfp162float_l.rn vr5, vr10
000a40  12304002  vadd.s.mz vr0{mr1}, zero, vr4
000a44  0f012218  div.f.rn r2, r4, r2
000a48  8f821318  div.f.rn r5, r7, r1
000a4c  fa903040  vextracti.f r1, 3(vr1)
000a50  7a1d4440  vextracti.f r26, 4(vr8)
000a54  7a1bf440  vextracti.f r22, 15(vr8)
000a58  6a236134  vor.u.mh vr6{mr2}, r2, vr6
000a5c  0f016618  div.f.rn r2, r12, r6
000a60  7a933140  vextracti.f r6, 3(vr3)
000a64  7e8104e0  vmmov mr2, r9
000a68  9f440000  addli r9, zero, 4
000a6c  6aa36234  vor.u.mh vr6{mr2}, r5, vr6
000a70  8f826018  div.f.rn r5, r1, r6
000a74  7a934140  vextracti.f r6, 4(vr3)
000a78  7e8104e0  vmmov mr2, r9
000a7c  9f041000  addli r9, zero, 8
000a80  6a236134  vor.u.mh vr6{mr2}, r2, vr6
000a84  0f016418  div.f.rn r2, r8, r6
000a88  7a935140  vextracti.f r6, 5(vr3)
000a8c  7e8104e0  vmmov mr2, r9
000a90  9f042000  addli r9, zero, 16
000a94  6aa36234  vor.u.mh vr6{mr2}, r5, vr6
000a98  8f826818  div.f.rn r5, r17, r6
000a9c  7a936140  vextracti.f r6, 6(vr3)
000aa0  7e8104e0  vmmov mr2, r9
000aa4  9f044000  addli r9, zero, 32
000aa8  6a236134  vor.u.mh vr6{mr2}, r2, vr6
000aac  0f816918  div.f.rn r2, r19, r6
000ab0  7a937140  vextracti.f r6, 7(vr3)
000ab4  7e8104e0  vmmov mr2, r9
000ab8  9f048000  addli r9, zero, 64
000abc  6aa36234  vor.u.mh vr6{mr2}, r5, vr6
000ac0  8f026918  div.f.rn r5, r18, r6
000ac4  7a938140  vextracti.f r6, 8(vr3)
000ac8  7e8104e0  vmmov mr2, r9
000acc  fa94a040  vextracti.f r9, 10(vr1)
000ad0  6a236134  vor.u.mh vr6{mr2}, r2, vr6
000ad4  0f016a18  div.f.rn r2, r20, r6
000ad8  7a939140  vextracti.f r6, 9(vr3)
000adc  7e0105e0  vmmov mr2, r10
000ae0  1f050002  addli r10, zero, 256
000ae4  6aa36234  vor.u.mh vr6{mr2}, r5, vr6
000ae8  8f026818  div.f.rn r5, r16, r6
000aec  7a93a140  vextracti.f r6, 10(vr3)
000af0  7e0105e0  vmmov mr2, r10
000af4  1f050004  addli r10, zero, 512
000af8  6a236134  vor.u.mh vr6{mr2}, r2, vr6
000afc  0f816418  div.f.rn r2, r9, r6
000b00  7a93b140  vextracti.f r6, 11(vr3)
000b04  7e0105e0  vmmov mr2, r10
000b08  0f856718  div.f.rn r10, r15, r6
000b0c  7a93d040  vextracti.f r6, 13(vr1)
000b10  6aa36234  vor.u.mh vr6{mr2}, r5, vr6
000b14  fa92c140  vextracti.f r5, 12(vr3)
000b18  8f06d318  div.f.rn r13, r6, r13
000b1c  6a236136  vor.u.mh vr6{mr3}, r2, vr6
000b20  0f815518  div.f.rn r2, r11, r5
000b24  fe0107e0  vmmov mr3, r14
000b28  1f070020  addli r14, zero, 4096
000b2c  fa92e040  vextracti.f r5, 14(vr1)
000b30  92304002  vadd.s.mz vr1{mr1}, zero, vr4
000b34  6a236536  vor.u.mh vr6{mr3}, r10, vr6
000b38  7a95e140  vextracti.f r10, 14(vr3)
000b3c  fe0107e0  vmmov mr3, r14
000b40  7a97f140  vextracti.f r14, 15(vr3)
000b44  6a236136  vor.u.mh vr6{mr3}, r2, vr6
000b48  0f81a218  div.f.rn r2, r5, r10
000b4c  fe810ae0  vmmov mr3, r21
000b50  7a150440  vextracti.f r10, 0(vr8)
000b54  ab4a0000  lui r21, 4
000b58  6aa36636  vor.u.mh vr6{mr3}, r13, vr6
000b5c  8f86e118  div.f.rn r13, r3, r14
000b60  fe810ae0  vmmov mr3, r21
000b64  0f07a218  div.f.rn r14, r4, r10
000b68  7a121440  vextracti.f r4, 1(vr8)
000b6c  fa1ae440  vextracti.f r21, 14(vr8)
000b70  8f816119  div.f.rn r3, r3, r22
000b74  6a236136  vor.u.mh vr6{mr3}, r2, vr6
000b78  0f814318  div.f.rn r2, r7, r4
000b7c  fa132440  vextracti.f r7, 2(vr8)
000b80  6aa36630  vor.u.mh vr6{mr0}, r13, vr6
000b84  9f160000  addli r13, zero, 1
000b88  fe0100c0  vmmov mr3, mr0
000b8c  7e8006e0  vmmov mr0, r13
000b90  8f067618  div.f.rn r13, r12, r7
000b94  7a163440  vextracti.f r12, 3(vr8)
000b98  ea201730  vor.u.mh vr1{mr0}, r14, vr1
000b9c  1f270000  addli r14, zero, 2
000ba0  7e0007e0  vmmov mr0, r14
000ba4  8f80c018  div.f.rn r1, r1, r12
000ba8  1f070001  addli r14, zero, 128
000bac  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000bb0  1f410000  addli r2, zero, 4
000bb4  7e0001e0  vmmov mr0, r2
000bb8  0f01a419  div.f.rn r2, r8, r26
000bbc  1f041000  addli r8, zero, 8
000bc0  eaa01630  vor.u.mh vr1{mr0}, r13, vr1
000bc4  fa165440  vextracti.f r13, 5(vr8)
000bc8  7e0004e0  vmmov mr0, r8
000bcc  1f042000  addli r8, zero, 16
000bd0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000bd4  8f80d818  div.f.rn r1, r17, r13
000bd8  fa186440  vextracti.f r17, 6(vr8)
000bdc  7e0004e0  vmmov mr0, r8
000be0  1f044000  addli r8, zero, 32
000be4  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000be8  0f811919  div.f.rn r2, r19, r17
000bec  fa197440  vextracti.f r19, 7(vr8)
000bf0  7e0004e0  vmmov mr0, r8
000bf4  0f043919  div.f.rn r8, r18, r19
000bf8  7a198440  vextracti.f r18, 8(vr8)
000bfc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000c00  9f008000  addli r1, zero, 64
000c04  7e8000e0  vmmov mr0, r1
000c08  fa109440  vextracti.f r1, 9(vr8)
000c0c  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000c10  0f012a19  div.f.rn r2, r20, r18
000c14  7e0007e0  vmmov mr0, r14
000c18  0f071818  div.f.rn r14, r16, r1
000c1c  1f080002  addli r16, zero, 256
000c20  ea201430  vor.u.mh vr1{mr0}, r8, vr1
000c24  7e0008e0  vmmov mr0, r16
000c28  7a14a440  vextracti.f r8, 10(vr8)
000c2c  1f080fea  addli r16, r30, -2816
000c30  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000c34  0f818418  div.f.rn r2, r9, r8
000c38  fa14b440  vextracti.f r9, 11(vr8)
000c3c  ea201734  vor.u.mh vr1{mr2}, r14, vr1
000c40  42110802  vload_mask16.mz vr2{mr1}, 0(r16)
000c44  2bf80000  lui r16, 15
000c48  0f879718  div.f.rn r14, r15, r9
000c4c  fa17c440  vextracti.f r15, 12(vr8)
000c50  1f78f81f  addli r16, r16, 4095
000c54  7e0008e0  vmmov mr0, r16
000c58  1f080008  addli r16, zero, 1024
000c5c  7e0108e0  vmmov mr2, r16
000c60  7a18d440  vextracti.f r16, 13(vr8)
000c64  6e105130  vor.f.mh vr0{mr0}, vr2, vr5
000c68  86720500  vfp162float_h.rn vr5, vr10
000c6c  ee145130  vor.f.mh vr9{mr0}, vr2, vr5
000c70  ea201134  vor.u.mh vr1{mr2}, r2, vr1
000c74  0f81f518  div.f.rn r2, r11, r15
000c78  9f050010  addli r11, zero, 2048
000c7c  7e8105e0  vmmov mr2, r11
000c80  0f030319  div.f.rn r6, r6, r16
000c84  9f050020  addli r11, zero, 4096
000c88  1e107002  vsub.f.mz.rn vr0{mr1}, vr0, vr7
000c8c  ea201734  vor.u.mh vr1{mr2}, r14, vr1
000c90  7e8105e0  vmmov mr2, r11
000c94  9f050040  addli r11, zero, 8192
000c98  8e120002  vmul.f.mz.rn vr5{mr1}, vr0, vr0
000c9c  ea201134  vor.u.mh vr1{mr2}, r2, vr1
000ca0  0f815219  div.f.rn r2, r5, r21
000ca4  7e8105e0  vmmov mr2, r11
000ca8  e342ffed  loadli.w r5,  -2308(r30)
000cac  9f828200  addli r5, r5, 64
000cb0  ea201334  vor.u.mh vr1{mr2}, r6, vr1
000cb4  1f038fee  addli r6, r30, -2240
000cb8  c2150302  vload_mask16.mz vr11{mr1}, 0(r6)
000cbc  2b430000  lui r6, 4
000cc0  7e0103e0  vmmov mr2, r6
000cc4  1f03ffef  addli r6, r30, -2056
000cc8  ea201134  vor.u.mh vr1{mr2}, r2, vr1
000ccc  76914102  veq.f.mz mr2{mr1}, vr3, vr4
000cd0  7e0101a0  vmmov r2, mr2
000cd4  76114402  veq.f.mz mr2{mr1}, vr8, vr4
000cd8  9e94b402  vsub.f.mz.rn vr9{mr1}, vr9, vr11
000cdc  eaa01136  vor.u.mh vr1{mr3}, r3, vr1
000ce0  73102300  store.h r2, 0(r6)
000ce4  1f43ffef  addli r6, r30, -2052
000ce8  fe0101a0  vmmov r3, mr2
000cec  6301ffef  loadli.w r2,  -2056(r30)
000cf0  73103300  store.h r3, 0(r6)
000cf4  9f018fec  addli r3, r30, -2496
000cf8  7e0101e0  vmmov mr2, r2
000cfc  6341ffef  loadli.w r2,  -2052(r30)
000d00  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
000d04  7e010100  vmand mr2, mr2, mr0
000d08  6e134134  vor.f.mh vr6{mr2}, vr2, vr4
000d0c  7e0101e0  vmmov mr2, r2
000d10  1f010fec  addli r2, r30, -2560
000d14  7e010100  vmand mr2, mr2, mr0
000d18  ee104134  vor.f.mh vr1{mr2}, vr2, vr4
000d1c  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
000d20  1f010fee  addli r2, r30, -2304
000d24  8e125502  vmul.f.mz.rn vr5{mr1}, vr10, vr5
000d28  0e959402  vmul.f.mz.rn vr10{mr1}, vr9, vr9
000d2c  0e106002  vmul.f.mz.rn vr0{mr1}, vr0, vr6
000d30  8e926202  vmul.f.mz.rn vr5{mr1}, vr5, vr6
000d34  0e931402  vmul.f.mz.rn vr6{mr1}, vr9, vr1
000d38  96930302  vadd.f.mz.rn vr7{mr1}, vr7, vr0
000d3c  0e12a102  vmul.f.mz.rn vr4{mr1}, vr2, vr10
000d40  96956502  vadd.f.mz.rn vr11{mr1}, vr11, vr6
000d44  8e101202  vmul.f.mz.rn vr1{mr1}, vr4, vr1
000d48  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
000d4c  1f010fed  addli r2, r30, -2432
000d50  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000d54  c2120102  vload_mask16.mz vr5{mr1}, 0(r2)
000d58  1f018fee  addli r2, r30, -2240
000d5c  4610b102  vstore_mask16.mz vr11{mr1}, 0(r2)
000d60  1f018003  addli r2, zero, 448
000d64  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
000d68  3bf522fc  bneq r5, r2, -1700
000d6c  1f018fee  addli r2, r30, -2240
000d70  16908102  vadd.f.mz.rn vr0{mr1}, vr3, vr8
000d74  9f020000  addli r5, zero, 0
000d78  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
000d7c  1f018fe9  addli r2, r30, -2880
000d80  1f830200  addli r6, r5, 0
000d84  42150102  vload_mask16.mz vr10{mr1}, 0(r2)
000d88  1f110000  addli r2, zero, 1
000d8c  fa1d0040  vextracti.f r27, 0(vr0)
000d90  fe0101e0  vmmov mr3, r2
000d94  1f010fef  addli r2, r30, -2176
000d98  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
000d9c  76112002  veq.f.mz mr2{mr1}, vr0, vr2
000da0  fe0501a0  vmmov r11, mr2
000da4  1b811500  andi r2, r11, 1
000da8  3b200100  bneq r2, zero, 8
000dac  0f03b519  div.f.rn r6, r10, r27
000db0  1bc1f500  srli r2, r11, 15
000db4  fa11f040  vextracti.f r3, 15(vr0)
000db8  1f8a0200  addli r20, r5, 0
000dbc  00a00000  mfence { lm }
000dc0  1b011100  andi r2, r2, 1
000dc4  67003fee  storeli.w r3, -2304(r30)
000dc8  3b300100  bneq r2, zero, 12
000dcc  63010fee  loadli.w r2,  -2304(r30)
000dd0  0f0a2b18  div.f.rn r20, r22, r2
000dd4  1bc1e500  srli r2, r11, 14
000dd8  fa11e040  vextracti.f r3, 14(vr0)
000ddc  1f850200  addli r10, r5, 0
000de0  1b011100  andi r2, r2, 1
000de4  e74f3fec  storeli.w r3, -2308(r30)
000de8  7e8001c0  vmmov mr0, mr3
000dec  3b300100  bneq r2, zero, 12
000df0  6341ffed  loadli.w r2,  -2308(r30)
000df4  0f852a18  div.f.rn r10, r21, r2
000df8  1bc1d500  srli r2, r11, 13
000dfc  9f2a0000  addli r21, zero, 2
000e00  7a17d040  vextracti.f r14, 13(vr0)
000e04  9b011100  andi r3, r2, 1
000e08  fe810ae0  vmmov mr3, r21
000e0c  1f810200  addli r2, r5, 0
000e10  7e8101c0  vmmov mr2, mr3
000e14  3ba00100  bneq r3, zero, 8
000e18  0f01e818  div.f.rn r2, r16, r14
000e1c  9bc1c500  srli r3, r11, 12
000e20  1f0b0004  addli r22, zero, 512
000e24  fa1ac040  vextracti.f r21, 12(vr0)
000e28  1f880200  addli r16, r5, 0
000e2c  9b811100  andi r3, r3, 1
000e30  fe010be0  vmmov mr3, r22
000e34  3ba00100  bneq r3, zero, 8
000e38  0f885719  div.f.rn r16, r15, r21
000e3c  9bc1b500  srli r3, r11, 11
000e40  6708efec  storeli.w r14, -2432(r30)
000e44  7a17b040  vextracti.f r14, 11(vr0)
000e48  67045fed  storeli.w r21, -2496(r30)
000e4c  9f8a0200  addli r21, r5, 0
000e50  9b811100  andi r3, r3, 1
000e54  3ba00100  bneq r3, zero, 8
000e58  8f8ae418  div.f.rn r21, r9, r14
000e5c  9bc1a500  srli r3, r11, 10
000e60  fa14a040  vextracti.f r9, 10(vr0)
000e64  1f8b0200  addli r22, r5, 0
000e68  9b811100  andi r3, r3, 1
000e6c  3ba00100  bneq r3, zero, 8
000e70  0f0b9418  div.f.rn r22, r8, r9
000e74  9bc19500  srli r3, r11, 9
000e78  7a149040  vextracti.f r8, 9(vr0)
000e7c  9f8b0200  addli r23, r5, 0
000e80  670f9fea  storeli.w r9, -2576(r30)
000e84  9b811100  andi r3, r3, 1
000e88  3ba00100  bneq r3, zero, 8
000e8c  8f8b8018  div.f.rn r23, r1, r8
000e90  9bc08500  srli r1, r11, 8
000e94  fa118040  vextracti.f r3, 8(vr0)
000e98  1f8c0200  addli r24, r5, 0
000e9c  9b801000  andi r1, r1, 1
000ea0  3ba00000  bneq r1, zero, 8
000ea4  0f0c3918  div.f.rn r24, r18, r3
000ea8  9bc07500  srli r1, r11, 7
000eac  7a197040  vextracti.f r18, 7(vr0)
000eb0  9f8c0200  addli r25, r5, 0
000eb4  9b801000  andi r1, r1, 1
000eb8  3ba00000  bneq r1, zero, 8
000ebc  8f8c2919  div.f.rn r25, r19, r18
000ec0  9bc06500  srli r1, r11, 6
000ec4  fa196040  vextracti.f r19, 6(vr0)
000ec8  6700efec  storeli.w r14, -2560(r30)
000ecc  1f870200  addli r14, r5, 0
000ed0  9b801000  andi r1, r1, 1
000ed4  3ba00000  bneq r1, zero, 8
000ed8  0f873819  div.f.rn r14, r17, r19
000edc  9bc05500  srli r1, r11, 5
000ee0  fa175040  vextracti.f r15, 5(vr0)
000ee4  9f880200  addli r17, r5, 0
000ee8  9b801000  andi r1, r1, 1
000eec  3ba00000  bneq r1, zero, 8
000ef0  8f88f618  div.f.rn r17, r13, r15
000ef4  e70d8fea  storeli.w r8, -2600(r30)
000ef8  1bc44500  srli r8, r11, 4
000efc  fa104040  vextracti.f r1, 4(vr0)
000f00  9f860200  addli r13, r5, 0
000f04  1b041400  andi r8, r8, 1
000f08  3b200400  bneq r8, zero, 8
000f0c  8f061d18  div.f.rn r13, r26, r1
000f10  1bcd3500  srli r26, r11, 3
000f14  7a143040  vextracti.f r8, 3(vr0)
000f18  9f840d00  addli r9, r27, 0
000f1c  9b0d1d00  andi r27, r26, 1
000f20  1f8d0200  addli r26, r5, 0
000f24  3ba00d00  bneq r27, zero, 8
000f28  0f0d8618  div.f.rn r26, r12, r8
000f2c  9bcd2500  srli r27, r11, 2
000f30  7a162040  vextracti.f r12, 2(vr0)
000f34  1b8e1d00  andi r28, r27, 1
000f38  9f8d0200  addli r27, r5, 0
000f3c  3b200e00  bneq r28, zero, 8
000f40  8f8dc318  div.f.rn r27, r7, r12
000f44  9bc51500  srli r11, r11, 1
000f48  fa131040  vextracti.f r7, 1(vr0)
000f4c  1b8e1500  andi r28, r11, 1
000f50  9f850200  addli r11, r5, 0
000f54  3b200e00  bneq r28, zero, 8
000f58  8f057218  div.f.rn r11, r4, r7
000f5c  1f020fef  addli r4, r30, -2176
000f60  1f8e0400  addli r28, r9, 0
000f64  9f040040  addli r9, zero, 8192
000f68  42140202  vload_mask16.mz vr8{mr1}, 0(r4)
000f6c  1f420000  addli r4, zero, 4
000f70  6a248330  vor.u.mh vr8{mr0}, r6, vr8
000f74  7e0002e0  vmmov mr0, r4
000f78  1f021000  addli r4, zero, 8
000f7c  1f030020  addli r6, zero, 4096
000f80  6aa48534  vor.u.mh vr8{mr2}, r11, vr8
000f84  6aa48d30  vor.u.mh vr8{mr0}, r27, vr8
000f88  7e0002e0  vmmov mr0, r4
000f8c  1f022000  addli r4, zero, 16
000f90  6a248d30  vor.u.mh vr8{mr0}, r26, vr8
000f94  7e0002e0  vmmov mr0, r4
000f98  1f024000  addli r4, zero, 32
000f9c  6aa48630  vor.u.mh vr8{mr0}, r13, vr8
000fa0  7e0002e0  vmmov mr0, r4
000fa4  1f028000  addli r4, zero, 64
000fa8  7e0102e0  vmmov mr2, r4
000fac  1f020001  addli r4, zero, 128
000fb0  6aa48830  vor.u.mh vr8{mr0}, r17, vr8
000fb4  6a248734  vor.u.mh vr8{mr2}, r14, vr8
000fb8  7e0102e0  vmmov mr2, r4
000fbc  1f020002  addli r4, zero, 256
000fc0  6aa48c34  vor.u.mh vr8{mr2}, r25, vr8
000fc4  7e0102e0  vmmov mr2, r4
000fc8  1f020008  addli r4, zero, 1024
000fcc  6a248c34  vor.u.mh vr8{mr2}, r24, vr8
000fd0  7e0102e0  vmmov mr2, r4
000fd4  1f020010  addli r4, zero, 2048
000fd8  6aa48b36  vor.u.mh vr8{mr3}, r23, vr8
000fdc  8b6b7e10  add.f.rn r23, r28, r7
000fe0  6a248b34  vor.u.mh vr8{mr2}, r22, vr8
000fe4  7e0102e0  vmmov mr2, r4
000fe8  1bb29b00  slli r4, r23, 9
000fec  93e57207  setle.f r11, r5, r23
000ff0  6aa48a34  vor.u.mh vr8{mr2}, r21, vr8
000ff4  7e0103e0  vmmov mr2, r6
000ff8  13020200  seteq r4, r4, zero
000ffc  1bc37b01  srli r6, r23, 23
001000  1b03f30f  andi r6, r6, 255
001004  6a248834  vor.u.mh vr8{mr2}, r16, vr8
001008  7e8104e0  vmmov mr2, r9
00100c  ab440000  lui r9, 4
001010  1b73f30f  setlti r6, r6, 255
001014  17124300  or r4, r6, r4
001018  2b830000  lui r6, 8
00101c  6a248134  vor.u.mh vr8{mr2}, r2, vr8
001020  13e15b06  setle.f r2, r23, r5
001024  7e8104e0  vmmov mr2, r9
001028  6a248534  vor.u.mh vr8{mr2}, r10, vr8
00102c  7e0103e0  vmmov mr2, r6
001030  1701b100  and r2, r2, r11
001034  6a248a34  vor.u.mh vr8{mr2}, r20, vr8
001038  17014100  and r2, r2, r4
00103c  1f820200  addli r4, r5, 0
001040  3b200100  bneq r2, zero, 8
001044  0f827319  div.f.rn r4, r7, r23
001048  8b647611  add.f.rn r9, r12, r23
00104c  e74f4fea  storeli.w r4, -2564(r30)
001050  e3050fee  loadli.w r11,  -2304(r30)
001054  63050fed  loadli.w r10,  -2432(r30)
001058  63088fec  loadli.w r16,  -2496(r30)
00105c  e306efeb  loadli.w r13,  -2576(r30)
001060  1bb19400  slli r2, r9, 9
001064  13e39206  setle.f r6, r5, r9
001068  93e35406  setle.f r7, r9, r5
00106c  1bc27401  srli r4, r9, 23
001070  13010100  seteq r2, r2, zero
001074  1b02f20f  andi r4, r4, 255
001078  1b72f20f  setlti r4, r4, 255
00107c  17112200  or r2, r4, r2
001080  17826300  and r4, r7, r6
001084  17012200  and r2, r4, r2
001088  1f820200  addli r4, r5, 0
00108c  3b200100  bneq r2, zero, 8
001090  0f029618  div.f.rn r4, r12, r9
001094  0b679410  add.f.rn r14, r8, r9
001098  e70f4fea  storeli.w r4, -2568(r30)
00109c  1b319700  slli r2, r14, 9
0010a0  13e3e206  setle.f r6, r5, r14
0010a4  93635706  setle.f r7, r14, r5
0010a8  1b427701  srli r4, r14, 23
0010ac  13010100  seteq r2, r2, zero
0010b0  1b02f20f  andi r4, r4, 255
0010b4  1b72f20f  setlti r4, r4, 255
0010b8  17112200  or r2, r4, r2
0010bc  17826300  and r4, r7, r6
0010c0  17012200  and r2, r4, r2
0010c4  1f820200  addli r4, r5, 0
0010c8  3b200100  bneq r2, zero, 8
0010cc  0f02e418  div.f.rn r4, r8, r14
0010d0  8be3e010  add.f.rn r7, r1, r14
0010d4  674f4fea  storeli.w r4, -2572(r30)
0010d8  1bb19300  slli r2, r7, 9
0010dc  13e37206  setle.f r6, r5, r7
0010e0  13e45306  setle.f r8, r7, r5
0010e4  1bc27301  srli r4, r7, 23
0010e8  13010100  seteq r2, r2, zero
0010ec  1b02f20f  andi r4, r4, 255
0010f0  1b72f20f  setlti r4, r4, 255
0010f4  17112200  or r2, r4, r2
0010f8  17026400  and r4, r8, r6
0010fc  17012200  and r2, r4, r2
001100  1f820200  addli r4, r5, 0
001104  3b200100  bneq r2, zero, 8
001108  0f827018  div.f.rn r4, r1, r7
00110c  8be87710  add.f.rn r17, r15, r7
001110  e74e4fea  storeli.w r4, -2580(r30)
001114  6344ffed  loadli.w r8,  -2308(r30)
001118  9bb09800  slli r1, r17, 9
00111c  13e21207  setle.f r4, r5, r17
001120  13e35806  setle.f r6, r17, r5
001124  1bc17801  srli r2, r17, 23
001128  93800000  seteq r1, r1, zero
00112c  1b01f10f  andi r2, r2, 255
001130  1b71f10f  setlti r2, r2, 255
001134  97101100  or r1, r2, r1
001138  17014300  and r2, r6, r4
00113c  97001100  and r1, r2, r1
001140  1f810200  addli r2, r5, 0
001144  3ba00000  bneq r1, zero, 8
001148  0f811719  div.f.rn r2, r15, r17
00114c  0bed1911  add.f.rn r26, r19, r17
001150  e70e2fea  storeli.w r2, -2584(r30)
001154  9b309d00  slli r1, r26, 9
001158  13e2a207  setle.f r4, r5, r26
00115c  13635d06  setle.f r6, r26, r5
001160  1b417d01  srli r2, r26, 23
001164  93800000  seteq r1, r1, zero
001168  1b01f10f  andi r2, r2, 255
00116c  1b71f10f  setlti r2, r2, 255
001170  97101100  or r1, r2, r1
001174  17014300  and r2, r6, r4
001178  97001100  and r1, r2, r1
00117c  1f810200  addli r2, r5, 0
001180  3ba00000  bneq r1, zero, 8
001184  0f81a919  div.f.rn r2, r19, r26
001188  8b69a911  add.f.rn r19, r18, r26
00118c  670e2fea  storeli.w r2, -2592(r30)
001190  e3070fec  loadli.w r15,  -2560(r30)
001194  9bb09900  slli r1, r19, 9
001198  13e23207  setle.f r4, r5, r19
00119c  13e35906  setle.f r6, r19, r5
0011a0  1bc17901  srli r2, r19, 23
0011a4  93800000  seteq r1, r1, zero
0011a8  1b01f10f  andi r2, r2, 255
0011ac  1b71f10f  setlti r2, r2, 255
0011b0  97101100  or r1, r2, r1
0011b4  17014300  and r2, r6, r4
0011b8  97001100  and r1, r2, r1
0011bc  1f810200  addli r2, r5, 0
0011c0  3ba00000  bneq r1, zero, 8
0011c4  0f013919  div.f.rn r2, r18, r19
0011c8  0bea3111  add.f.rn r20, r3, r19
0011cc  e74d2fea  storeli.w r2, -2596(r30)
0011d0  9b309a00  slli r1, r20, 9
0011d4  13e24207  setle.f r4, r5, r20
0011d8  13635a06  setle.f r6, r20, r5
0011dc  1b417a01  srli r2, r20, 23
0011e0  93800000  seteq r1, r1, zero
0011e4  1b01f10f  andi r2, r2, 255
0011e8  1b71f10f  setlti r2, r2, 255
0011ec  97101100  or r1, r2, r1
0011f0  17014300  and r2, r6, r4
0011f4  97001100  and r1, r2, r1
0011f8  1f810200  addli r2, r5, 0
0011fc  3ba00000  bneq r1, zero, 8
001200  0f814119  div.f.rn r2, r3, r20
001204  6303bfeb  loadli.w r6,  -2600(r30)
001208  674d2fea  storeli.w r2, -2604(r30)
00120c  674e9fea  storeli.w r9, -2588(r30)
001210  8b6a4311  add.f.rn r21, r6, r20
001214  9bb09a00  slli r1, r21, 9
001218  93e15207  setle.f r3, r5, r21
00121c  13e25a06  setle.f r4, r21, r5
001220  1bc17a01  srli r2, r21, 23
001224  93800000  seteq r1, r1, zero
001228  1b01f10f  andi r2, r2, 255
00122c  1b71f10f  setlti r2, r2, 255
001230  97101100  or r1, r2, r1
001234  17013200  and r2, r4, r3
001238  97001100  and r1, r2, r1
00123c  1f810200  addli r2, r5, 0
001240  3ba00000  bneq r1, zero, 8
001244  0f015319  div.f.rn r2, r6, r21
001248  8be45611  add.f.rn r9, r13, r21
00124c  e70d2fea  storeli.w r2, -2600(r30)
001250  9bb09400  slli r1, r9, 9
001254  93e19206  setle.f r3, r5, r9
001258  13e25406  setle.f r4, r9, r5
00125c  1bc17401  srli r2, r9, 23
001260  93800000  seteq r1, r1, zero
001264  1b01f10f  andi r2, r2, 255
001268  1b71f10f  setlti r2, r2, 255
00126c  97101100  or r1, r2, r1
001270  17013200  and r2, r4, r3
001274  97001100  and r1, r2, r1
001278  1f810200  addli r2, r5, 0
00127c  3ba00000  bneq r1, zero, 8
001280  0f819618  div.f.rn r2, r13, r9
001284  8be69710  add.f.rn r13, r15, r9
001288  670f2fea  storeli.w r2, -2576(r30)
00128c  9bb09600  slli r1, r13, 9
001290  93e1d206  setle.f r3, r5, r13
001294  13e25606  setle.f r4, r13, r5
001298  1bc17601  srli r2, r13, 23
00129c  93800000  seteq r1, r1, zero
0012a0  1b01f10f  andi r2, r2, 255
0012a4  1b71f10f  setlti r2, r2, 255
0012a8  97101100  or r1, r2, r1
0012ac  17013200  and r2, r4, r3
0012b0  97001100  and r1, r2, r1
0012b4  1f810200  addli r2, r5, 0
0012b8  3ba00000  bneq r1, zero, 8
0012bc  0f81d718  div.f.rn r2, r15, r13
0012c0  0b69d810  add.f.rn r18, r16, r13
0012c4  67002fec  storeli.w r2, -2560(r30)
0012c8  9b309900  slli r1, r18, 9
0012cc  93e12207  setle.f r3, r5, r18
0012d0  13625906  setle.f r4, r18, r5
0012d4  1b417901  srli r2, r18, 23
0012d8  93800000  seteq r1, r1, zero
0012dc  1b01f10f  andi r2, r2, 255
0012e0  1b71f10f  setlti r2, r2, 255
0012e4  97101100  or r1, r2, r1
0012e8  17013200  and r2, r4, r3
0012ec  97001100  and r1, r2, r1
0012f0  1f810200  addli r2, r5, 0
0012f4  3ba00000  bneq r1, zero, 8
0012f8  0f012819  div.f.rn r2, r16, r18
0012fc  8b612511  add.f.rn r3, r10, r18
001300  67042fec  storeli.w r2, -2496(r30)
001304  9bb09100  slli r1, r3, 9
001308  13e23206  setle.f r4, r5, r3
00130c  13e35106  setle.f r6, r3, r5
001310  1bc17101  srli r2, r3, 23
001314  93800000  seteq r1, r1, zero
001318  1b01f10f  andi r2, r2, 255
00131c  1b71f10f  setlti r2, r2, 255
001320  97101100  or r1, r2, r1
001324  17014300  and r2, r6, r4
001328  97001100  and r1, r2, r1
00132c  1f810200  addli r2, r5, 0
001330  3ba00000  bneq r1, zero, 8
001334  0f013518  div.f.rn r2, r10, r3
001338  0b6b3410  add.f.rn r22, r8, r3
00133c  67082fec  storeli.w r2, -2432(r30)
001340  9b309b00  slli r1, r22, 9
001344  13e26207  setle.f r4, r5, r22
001348  13635b06  setle.f r6, r22, r5
00134c  1b417b01  srli r2, r22, 23
001350  93800000  seteq r1, r1, zero
001354  1b01f10f  andi r2, r2, 255
001358  1b71f10f  setlti r2, r2, 255
00135c  97101100  or r1, r2, r1
001360  17014300  and r2, r6, r4
001364  97001100  and r1, r2, r1
001368  1f810200  addli r2, r5, 0
00136c  3ba00000  bneq r1, zero, 8
001370  0f016419  div.f.rn r2, r8, r22
001374  8be06511  add.f.rn r1, r11, r22
001378  e74f2fec  storeli.w r2, -2308(r30)
00137c  1bb19000  slli r2, r1, 9
001380  13e41206  setle.f r8, r5, r1
001384  13e55006  setle.f r10, r1, r5
001388  1bc37001  srli r6, r1, 23
00138c  13010100  seteq r2, r2, zero
001390  1b03f30f  andi r6, r6, 255
001394  1b73f30f  setlti r6, r6, 255
001398  17112300  or r2, r6, r2
00139c  17038500  and r6, r10, r8
0013a0  17012300  and r2, r6, r2
0013a4  3b200100  bneq r2, zero, 8
0013a8  8f821518  div.f.rn r5, r11, r1
0013ac  9e107302  vsub.f.mz.rn vr1{mr1}, vr6, vr7
0013b0  63010fe9  loadli.w r2,  -2944(r30)
0013b4  6346ffeb  loadli.w r12,  -2564(r30)
0013b8  630cffeb  loadli.w r24,  -2568(r30)
0013bc  e34defeb  loadli.w r27,  -2572(r30)
0013c0  6342dfeb  loadli.w r4,  -2580(r30)
0013c4  e30cdfeb  loadli.w r25,  -2584(r30)
0013c8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0013cc  73601100  stores.w r1, 0(r2)
0013d0  0e908002  vmul.f.mz.rn vr0{mr1}, vr1, vr8
0013d4  8e901002  vmul.f.mz.rn vr1{mr1}, vr1, vr1
0013d8  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0013dc  8e903002  vmul.f.mz.rn vr1{mr1}, vr1, vr3
0013e0  fa100040  vextracti.f r1, 0(vr0)
0013e4  7a111040  vextracti.f r2, 1(vr0)
0013e8  8e908002  vmul.f.mz.rn vr1{mr1}, vr1, vr8
0013ec  0b611118  sub.f.rn r2, r2, r1
0013f0  96101202  vadd.f.mz.rn vr1{mr1}, vr4, vr1
0013f4  7a980040  vextracti.f r16, 0(vr1)
0013f8  0b632620  mul.f.rn r6, r12, r2
0013fc  0b612120  mul.f.rn r2, r2, r2
001400  8be06010  add.f.rn r1, r1, r6
001404  7a132040  vextracti.f r6, 2(vr0)
001408  0b612e20  mul.f.rn r2, r28, r2
00140c  7a9e1040  vextracti.f r28, 1(vr1)
001410  0b631318  sub.f.rn r6, r6, r1
001414  0b612620  mul.f.rn r2, r12, r2
001418  6306cfeb  loadli.w r12,  -2592(r30)
00141c  0b646c20  mul.f.rn r8, r24, r6
001420  0b636320  mul.f.rn r6, r6, r6
001424  8be08010  add.f.rn r1, r1, r8
001428  7a143040  vextracti.f r8, 3(vr0)
00142c  0be36b20  mul.f.rn r6, r23, r6
001430  0b641418  sub.f.rn r8, r8, r1
001434  0b636c20  mul.f.rn r6, r24, r6
001438  0be58d20  mul.f.rn r10, r27, r8
00143c  0b648420  mul.f.rn r8, r8, r8
001440  8be0a010  add.f.rn r1, r1, r10
001444  7a154040  vextracti.f r10, 4(vr0)
001448  0b651518  sub.f.rn r10, r10, r1
00144c  8b65a220  mul.f.rn r11, r4, r10
001450  0b65a520  mul.f.rn r10, r10, r10
001454  8be5b010  add.f.rn r11, r1, r11
001458  fa105040  vextracti.f r1, 5(vr0)
00145c  8be0b018  sub.f.rn r1, r1, r11
001460  8be71c20  mul.f.rn r15, r25, r1
001464  8be01020  mul.f.rn r1, r1, r1
001468  8be5f510  add.f.rn r11, r11, r15
00146c  8b67c811  add.f.rn r15, r16, r28
001470  7a186040  vextracti.f r16, 6(vr0)
001474  8be01320  mul.f.rn r1, r7, r1
001478  fa935040  vextracti.f r7, 5(vr1)
00147c  0b68b818  sub.f.rn r16, r16, r11
001480  0be12710  add.f.rn r2, r15, r2
001484  fa972040  vextracti.f r15, 2(vr1)
001488  8be01c20  mul.f.rn r1, r25, r1
00148c  8b6b0621  mul.f.rn r23, r12, r16
001490  0be12710  add.f.rn r2, r15, r2
001494  fa177040  vextracti.f r15, 7(vr0)
001498  8be57511  add.f.rn r11, r11, r23
00149c  0b616110  add.f.rn r2, r2, r6
0014a0  6343cfeb  loadli.w r6,  -2588(r30)
0014a4  e34bbfeb  loadli.w r23,  -2596(r30)
0014a8  0b638320  mul.f.rn r6, r6, r8
0014ac  0be4b718  sub.f.rn r8, r15, r11
0014b0  fa973040  vextracti.f r15, 3(vr1)
0014b4  0be12710  add.f.rn r2, r15, r2
0014b8  0be36d20  mul.f.rn r6, r27, r6
0014bc  8be78b20  mul.f.rn r15, r23, r8
0014c0  0b616110  add.f.rn r2, r2, r6
0014c4  0b63a720  mul.f.rn r6, r14, r10
0014c8  7a178040  vextracti.f r14, 8(vr0)
0014cc  0be5f510  add.f.rn r10, r11, r15
0014d0  fa954040  vextracti.f r11, 4(vr1)
0014d4  e307bfeb  loadli.w r15,  -2600(r30)
0014d8  0be12510  add.f.rn r2, r11, r2
0014dc  0b636220  mul.f.rn r6, r4, r6
0014e0  6342afeb  loadli.w r4,  -2604(r30)
0014e4  8b65a718  sub.f.rn r11, r14, r10
0014e8  0b616110  add.f.rn r2, r2, r6
0014ec  0b63b220  mul.f.rn r6, r4, r11
0014f0  0be12310  add.f.rn r2, r7, r2
0014f4  8b630821  mul.f.rn r7, r16, r16
0014f8  0b636510  add.f.rn r6, r10, r6
0014fc  7a159040  vextracti.f r10, 9(vr0)
001500  8b601110  add.f.rn r1, r2, r1
001504  0be17820  mul.f.rn r2, r17, r7
001508  fa936040  vextracti.f r7, 6(vr1)
00150c  0b656518  sub.f.rn r10, r10, r6
001510  8be01310  add.f.rn r1, r7, r1
001514  0b612620  mul.f.rn r2, r12, r2
001518  8b638420  mul.f.rn r7, r8, r8
00151c  7a14a040  vextracti.f r8, 10(vr0)
001520  6306efeb  loadli.w r12,  -2576(r30)
001524  0be7a720  mul.f.rn r14, r15, r10
001528  8be02010  add.f.rn r1, r1, r2
00152c  0b617d20  mul.f.rn r2, r26, r7
001530  fa937040  vextracti.f r7, 7(vr1)
001534  0b63e310  add.f.rn r6, r6, r14
001538  8be01310  add.f.rn r1, r7, r1
00153c  0be12b20  mul.f.rn r2, r23, r2
001540  8be3b520  mul.f.rn r7, r11, r11
001544  0b646418  sub.f.rn r8, r8, r6
001548  8be02010  add.f.rn r1, r1, r2
00154c  0be17920  mul.f.rn r2, r19, r7
001550  fa938040  vextracti.f r7, 8(vr1)
001554  8b658620  mul.f.rn r11, r12, r8
001558  8be01310  add.f.rn r1, r7, r1
00155c  0b612220  mul.f.rn r2, r4, r2
001560  8b63a520  mul.f.rn r7, r10, r10
001564  63020fec  loadli.w r4,  -2560(r30)
001568  0b63b310  add.f.rn r6, r6, r11
00156c  fa15b040  vextracti.f r11, 11(vr0)
001570  8be02010  add.f.rn r1, r1, r2
001574  0b617a20  mul.f.rn r2, r20, r7
001578  0be56518  sub.f.rn r10, r11, r6
00157c  fa959040  vextracti.f r11, 9(vr1)
001580  8be01510  add.f.rn r1, r11, r1
001584  0be12720  mul.f.rn r2, r15, r2
001588  e3058fec  loadli.w r11,  -2496(r30)
00158c  8b63a220  mul.f.rn r7, r4, r10
001590  0b65a520  mul.f.rn r10, r10, r10
001594  8be02010  add.f.rn r1, r1, r2
001598  0b637310  add.f.rn r6, r6, r7
00159c  8b638420  mul.f.rn r7, r8, r8
0015a0  7a14c040  vextracti.f r8, 12(vr0)
0015a4  0b616418  sub.f.rn r2, r8, r6
0015a8  8be37a20  mul.f.rn r7, r21, r7
0015ac  7a94a040  vextracti.f r8, 10(vr1)
0015b0  8b601410  add.f.rn r1, r8, r1
0015b4  0be42520  mul.f.rn r8, r11, r2
0015b8  8b637620  mul.f.rn r7, r12, r7
0015bc  0b612120  mul.f.rn r2, r2, r2
0015c0  0b638310  add.f.rn r6, r6, r8
0015c4  7a14d040  vextracti.f r8, 13(vr0)
0015c8  8be07010  add.f.rn r1, r1, r7
0015cc  8be3a420  mul.f.rn r7, r9, r10
0015d0  fa94b040  vextracti.f r9, 11(vr1)
0015d4  0be12620  mul.f.rn r2, r13, r2
0015d8  6345ffed  loadli.w r10,  -2308(r30)
0015dc  0b646418  sub.f.rn r8, r8, r6
0015e0  8b637220  mul.f.rn r7, r4, r7
0015e4  63020fed  loadli.w r4,  -2432(r30)
0015e8  8be01410  add.f.rn r1, r9, r1
0015ec  0be12520  mul.f.rn r2, r11, r2
0015f0  8b648220  mul.f.rn r9, r4, r8
0015f4  8be07010  add.f.rn r1, r1, r7
0015f8  fa93c040  vextracti.f r7, 12(vr1)
0015fc  0b639310  add.f.rn r6, r6, r9
001600  fa14e040  vextracti.f r9, 14(vr0)
001604  8be01310  add.f.rn r1, r7, r1
001608  8b638420  mul.f.rn r7, r8, r8
00160c  0be46418  sub.f.rn r8, r9, r6
001610  8be02010  add.f.rn r1, r1, r2
001614  0b617920  mul.f.rn r2, r18, r7
001618  fa93d040  vextracti.f r7, 13(vr1)
00161c  8b648520  mul.f.rn r9, r10, r8
001620  8be01310  add.f.rn r1, r7, r1
001624  0b612220  mul.f.rn r2, r4, r2
001628  8b638420  mul.f.rn r7, r8, r8
00162c  7a14f040  vextracti.f r8, 15(vr0)
001630  0b639310  add.f.rn r6, r6, r9
001634  8be02010  add.f.rn r1, r1, r2
001638  0be17120  mul.f.rn r2, r3, r7
00163c  fa93e040  vextracti.f r7, 14(vr1)
001640  8b616418  sub.f.rn r3, r8, r6
001644  8be01310  add.f.rn r1, r7, r1
001648  0b612520  mul.f.rn r2, r10, r2
00164c  0be23120  mul.f.rn r4, r3, r3
001650  8be02010  add.f.rn r1, r1, r2
001654  8be13220  mul.f.rn r3, r5, r3
001658  0b614b20  mul.f.rn r2, r22, r4
00165c  7a92f040  vextracti.f r4, 15(vr1)
001660  8b613310  add.f.rn r3, r6, r3
001664  8b601210  add.f.rn r1, r4, r1
001668  0be12220  mul.f.rn r2, r5, r2
00166c  8be02010  add.f.rn r1, r1, r2
001670  63011fe9  loadli.w r2,  -2936(r30)
001674  73603100  stores.w r3, 0(r2)
001678  63410fe9  loadli.w r2,  -2940(r30)
00167c  73601100  stores.w r1, 0(r2)
001680  00a00300  mfence { lm, sm, gm }
001684  e3403fe9  loadli.w r1,  -2916(r30)
001688  80a10004  csr_set csr3, r1
00168c  00d00100  sync_group
001690  6341bfe8  loadli.w r2,  -2980(r30)
001694  bb2b0100  bneq r2, zero, 744
001698  e34cafe8  loadli.w r25,  -2988(r30)
00169c  9f010000  addli r3, zero, 0
0016a0  efc30c00  loads.w r7, 0(r25)
0016a4  efc04c00  loads.w r1, 4(r25)
0016a8  0be21310  add.f.rn r4, r7, r1
0016ac  1b319200  slli r2, r4, 9
0016b0  13e34106  setle.f r6, r3, r4
0016b4  13643206  setle.f r8, r4, r3
0016b8  9b427201  srli r5, r4, 23
0016bc  13013100  seteq r2, r2, r3
0016c0  9b82f20f  andi r5, r5, 255
0016c4  9bf2f20f  setlti r5, r5, 255
0016c8  17912200  or r2, r5, r2
0016cc  97026400  and r5, r8, r6
0016d0  97822200  and r5, r5, r2
0016d4  1f810100  addli r2, r3, 0
0016d8  3ba00200  bneq r5, zero, 8
0016dc  0f814018  div.f.rn r2, r1, r4
0016e0  efc08c00  loads.w r1, 8(r25)
0016e4  8b621210  add.f.rn r5, r4, r1
0016e8  1bb39200  slli r6, r5, 9
0016ec  93e45106  setle.f r9, r3, r5
0016f0  13e53206  setle.f r10, r5, r3
0016f4  1bc47201  srli r8, r5, 23
0016f8  13033300  seteq r6, r6, r3
0016fc  1b04f40f  andi r8, r8, 255
001700  1b74f40f  setlti r8, r8, 255
001704  17136400  or r6, r8, r6
001708  17049500  and r8, r10, r9
00170c  17036400  and r6, r8, r6
001710  1f840100  addli r8, r3, 0
001714  3b200300  bneq r6, zero, 8
001718  0f845018  div.f.rn r8, r1, r5
00171c  6fc3cc00  loads.w r6, 12(r25)
001720  8be06210  add.f.rn r1, r5, r6
001724  9bb49000  slli r9, r1, 9
001728  93e51106  setle.f r11, r3, r1
00172c  13e63006  setle.f r12, r1, r3
001730  1bc57001  srli r10, r1, 23
001734  93843400  seteq r9, r9, r3
001738  1b05f50f  andi r10, r10, 255
00173c  1b75f50f  setlti r10, r10, 255
001740  97149500  or r9, r10, r9
001744  1705b600  and r10, r12, r11
001748  97049500  and r9, r10, r9
00174c  1f850100  addli r10, r3, 0
001750  3ba00400  bneq r9, zero, 8
001754  0f051318  div.f.rn r10, r6, r1
001758  efc40c01  loads.w r9, 16(r25)
00175c  0be39010  add.f.rn r6, r1, r9
001760  9b359300  slli r11, r6, 9
001764  93e66106  setle.f r13, r3, r6
001768  13673306  setle.f r14, r6, r3
00176c  1b467301  srli r12, r6, 23
001770  93853500  seteq r11, r11, r3
001774  1b06f60f  andi r12, r12, 255
001778  1b76f60f  setlti r12, r12, 255
00177c  9715b600  or r11, r12, r11
001780  1706d700  and r12, r14, r13
001784  9705b600  and r11, r12, r11
001788  1f860100  addli r12, r3, 0
00178c  3ba00500  bneq r11, zero, 8
001790  0f866418  div.f.rn r12, r9, r6
001794  efc54c01  loads.w r11, 20(r25)
001798  8b64b310  add.f.rn r9, r6, r11
00179c  9bb69400  slli r13, r9, 9
0017a0  93e79106  setle.f r15, r3, r9
0017a4  13e83406  setle.f r16, r9, r3
0017a8  1bc77401  srli r14, r9, 23
0017ac  93863600  seteq r13, r13, r3
0017b0  1b07f70f  andi r14, r14, 255
0017b4  1b77f70f  setlti r14, r14, 255
0017b8  9716d700  or r13, r14, r13
0017bc  1707f800  and r14, r16, r15
0017c0  1707d700  and r14, r14, r13
0017c4  9f860100  addli r13, r3, 0
0017c8  3b200700  bneq r14, zero, 8
0017cc  8f869518  div.f.rn r13, r11, r9
0017d0  6fc78c01  loads.w r14, 24(r25)
0017d4  8be5e410  add.f.rn r11, r9, r14
0017d8  9bb79500  slli r15, r11, 9
0017dc  93e8b106  setle.f r17, r3, r11
0017e0  13e93506  setle.f r18, r11, r3
0017e4  1bc87501  srli r16, r11, 23
0017e8  93873700  seteq r15, r15, r3
0017ec  1b08f80f  andi r16, r16, 255
0017f0  1b78f80f  setlti r16, r16, 255
0017f4  9717f800  or r15, r16, r15
0017f8  17081901  and r16, r18, r17
0017fc  1708f800  and r16, r16, r15
001800  9f870100  addli r15, r3, 0
001804  3b200800  bneq r16, zero, 8
001808  8f07b718  div.f.rn r15, r14, r11
00180c  6fc8cc01  loads.w r16, 28(r25)
001810  0be70511  add.f.rn r14, r11, r16
001814  9b389700  slli r17, r14, 9
001818  93e9e106  setle.f r19, r3, r14
00181c  136a3706  setle.f r20, r14, r3
001820  1b497701  srli r18, r14, 23
001824  93883800  seteq r17, r17, r3
001828  1b09f90f  andi r18, r18, 255
00182c  1b79f90f  setlti r18, r18, 255
001830  97181901  or r17, r18, r17
001834  17093a01  and r18, r20, r19
001838  97081901  and r17, r18, r17
00183c  3ba00800  bneq r17, zero, 8
001840  8f01e818  div.f.rn r3, r16, r14
001844  e30b3fe9  loadli.w r23,  -2920(r30)
001848  634c2fe9  loadli.w r24,  -2924(r30)
00184c  73e0ec00  stores.w r14, 0(r25)
001850  6fc80b00  loads.w r16, 0(r23)
001854  efc84b00  loads.w r17, 4(r23)
001858  efc98b00  loads.w r19, 8(r23)
00185c  6fcacb00  loads.w r20, 12(r23)
001860  ef4a0c00  loads.w r21, 0(r24)
001864  6f4b4c00  loads.w r22, 4(r24)
001868  8be80819  sub.f.rn r17, r17, r16
00186c  0be92820  mul.f.rn r18, r17, r2
001870  8be81821  mul.f.rn r17, r17, r17
001874  0b682811  add.f.rn r16, r16, r18
001878  8be37820  mul.f.rn r7, r17, r7
00187c  0be90919  sub.f.rn r18, r19, r16
001880  0be12320  mul.f.rn r2, r7, r2
001884  8b692421  mul.f.rn r19, r8, r18
001888  0b692921  mul.f.rn r18, r18, r18
00188c  0b683811  add.f.rn r16, r16, r19
001890  efc90b01  loads.w r19, 16(r23)
001894  0b622221  mul.f.rn r4, r4, r18
001898  8b680a19  sub.f.rn r17, r20, r16
00189c  0bea6a11  add.f.rn r20, r21, r22
0018a0  ef4a8c00  loads.w r21, 8(r24)
0018a4  0b624420  mul.f.rn r4, r8, r4
0018a8  8b631521  mul.f.rn r7, r10, r17
0018ac  0b612a10  add.f.rn r2, r20, r2
0018b0  0be41821  mul.f.rn r8, r17, r17
0018b4  8b637810  add.f.rn r7, r16, r7
0018b8  0be12a10  add.f.rn r2, r21, r2
0018bc  6f48cc00  loads.w r16, 12(r24)
0018c0  0be97918  sub.f.rn r18, r19, r7
0018c4  efc94b01  loads.w r19, 20(r23)
0018c8  0b614110  add.f.rn r2, r2, r4
0018cc  0be28220  mul.f.rn r4, r5, r8
0018d0  8b682621  mul.f.rn r17, r12, r18
0018d4  0b642921  mul.f.rn r8, r18, r18
0018d8  0b612810  add.f.rn r2, r16, r2
0018dc  0b624520  mul.f.rn r4, r10, r4
0018e0  8be21311  add.f.rn r5, r7, r17
0018e4  ef430c01  loads.w r7, 16(r24)
0018e8  8be08020  mul.f.rn r1, r1, r8
0018ec  0b614110  add.f.rn r2, r2, r4
0018f0  6fc48b01  loads.w r8, 24(r23)
0018f4  0be55918  sub.f.rn r10, r19, r5
0018f8  8b601620  mul.f.rn r1, r12, r1
0018fc  0be12310  add.f.rn r2, r7, r2
001900  0be2a620  mul.f.rn r4, r13, r10
001904  8b63a520  mul.f.rn r7, r10, r10
001908  8b601110  add.f.rn r1, r2, r1
00190c  0be24210  add.f.rn r4, r5, r4
001910  ef424c01  loads.w r5, 20(r24)
001914  0b637320  mul.f.rn r6, r6, r7
001918  efc3cb01  loads.w r7, 28(r23)
00191c  0b614418  sub.f.rn r2, r8, r4
001920  0be36620  mul.f.rn r6, r13, r6
001924  6f448c01  loads.w r8, 24(r24)
001928  8be01210  add.f.rn r1, r5, r1
00192c  8be22720  mul.f.rn r5, r15, r2
001930  0b612120  mul.f.rn r2, r2, r2
001934  8be06010  add.f.rn r1, r1, r6
001938  6f43cc01  loads.w r6, 28(r24)
00193c  0b625210  add.f.rn r4, r4, r5
001940  0be12420  mul.f.rn r2, r9, r2
001944  8b601410  add.f.rn r1, r8, r1
001948  8be24318  sub.f.rn r5, r7, r4
00194c  0be12720  mul.f.rn r2, r15, r2
001950  8be35220  mul.f.rn r7, r5, r5
001954  8be02010  add.f.rn r1, r1, r2
001958  8be25120  mul.f.rn r5, r3, r5
00195c  0be17520  mul.f.rn r2, r11, r7
001960  8b601310  add.f.rn r1, r6, r1
001964  0be12120  mul.f.rn r2, r3, r2
001968  8b615210  add.f.rn r3, r4, r5
00196c  8be02010  add.f.rn r1, r1, r2
001970  73e03b00  stores.w r3, 0(r23)
001974  73601c00  stores.w r1, 0(r24)
001978  e3403fe9  loadli.w r1,  -2916(r30)
00197c  00a00300  mfence { lm, sm, gm }
001980  80a10004  csr_set csr3, r1
001984  00d00100  sync_group
001988  e3402fe9  loadli.w r1,  -2924(r30)
00198c  2b01003a  lui r2, 237568
001990  ab01803f  lui r3, 260096
001994  9f020000  addli r5, zero, 0
001998  efc00000  loads.w r1, 0(r1)
00199c  8be02020  mul.f.rn r1, r1, r2
0019a0  6301bfe8  loadli.w r2,  -2984(r30)
0019a4  8be02010  add.f.rn r1, r1, r2
0019a8  63013fe9  loadli.w r2,  -2920(r30)
0019ac  6f410100  loads.w r2, 0(r2)
0019b0  8f800008  sqrt.f.rn r1, r1
0019b4  8f801118  div.f.rn r1, r3, r1
0019b8  e74b1fe8  storeli.w r1, -2884(r30)
0019bc  8b600158  neg.f r1, r2
0019c0  00a00000  mfence { lm }
0019c4  e345efea  loadli.w r11,  -2700(r30)
0019c8  e70b1fe8  storeli.w r1, -2888(r30)
0019cc  8b995510  add.s r19, r11, r5
0019d0  9f000ff4  addli r1, r30, -1536
0019d4  ebb349ff  load.hu r7, -12(r19)
0019d8  8b905010  add.s r1, r1, r5
0019dc  6bb149fc  load.hu r2, -60(r19)
0019e0  ebb169fc  load.hu r3, -58(r19)
0019e4  6bb289fc  load.hu r4, -56(r19)
0019e8  6bb3a9fc  load.hu r6, -54(r19)
0019ec  6bbec9fc  load.hu r28, -52(r19)
0019f0  ebbde9fc  load.hu r27, -50(r19)
0019f4  6bbd09fd  load.hu r26, -48(r19)
0019f8  ebbc29fd  load.hu r25, -46(r19)
0019fc  6bbc49fd  load.hu r24, -44(r19)
001a00  ebbb69fd  load.hu r23, -42(r19)
001a04  6bbb89fd  load.hu r22, -40(r19)
001a08  ebbaa9fd  load.hu r21, -38(r19)
001a0c  6bbac9fd  load.hu r20, -36(r19)
001a10  6bb9e9fd  load.hu r18, -34(r19)
001a14  6bb809fe  load.hu r16, -32(r19)
001a18  ebb829fe  load.hu r17, -30(r19)
001a1c  ebb749fe  load.hu r15, -28(r19)
001a20  6bb769fe  load.hu r14, -26(r19)
001a24  ebb689fe  load.hu r13, -24(r19)
001a28  6bb6a9fe  load.hu r12, -22(r19)
001a2c  ebb5c9fe  load.hu r11, -20(r19)
001a30  6bb5e9fe  load.hu r10, -18(r19)
001a34  ebb409ff  load.hu r9, -16(r19)
001a38  6bb429ff  load.hu r8, -14(r19)
001a3c  ebb00000  load.hu r1, 0(r1)
001a40  e70f7fea  storeli.w r7, -2568(r30)
001a44  ebb369ff  load.hu r7, -10(r19)
001a48  b3900020  hfloat2float.rn r1, r1
001a4c  e74f7fea  storeli.w r7, -2564(r30)
001a50  ebb389ff  load.hu r7, -8(r19)
001a54  67007fec  storeli.w r7, -2560(r30)
001a58  ebb3a9ff  load.hu r7, -6(r19)
001a5c  67047fec  storeli.w r7, -2496(r30)
001a60  ebb3c9ff  load.hu r7, -4(r19)
001a64  67087fec  storeli.w r7, -2432(r30)
001a68  ebb3e9ff  load.hu r7, -2(r19)
001a6c  ebb90900  load.hu r19, 0(r19)
001a70  e74f7fec  storeli.w r7, -2308(r30)
001a74  9f030fef  addli r7, r30, -2176
001a78  67003fef  storeli.w r19, -2304(r30)
001a7c  9f090ff0  addli r19, r30, -2048
001a80  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
001a84  9f130000  addli r7, zero, 1
001a88  8b995910  add.s r19, r19, r5
001a8c  7e8003e0  vmmov mr0, r7
001a90  c2900902  vload_mask16.mz vr1{mr1}, 0(r19)
001a94  67043fef  storeli.w r19, -2240(r30)
001a98  86b40000  vfp162float_l.rn vr9, vr1
001a9c  12328002  vadd.s.mz vr4{mr1}, zero, vr8
001aa0  92328002  vadd.s.mz vr5{mr1}, zero, vr8
001aa4  12308002  vadd.s.mz vr0{mr1}, zero, vr8
001aa8  12338002  vadd.s.mz vr6{mr1}, zero, vr8
001aac  92338002  vadd.s.mz vr7{mr1}, zero, vr8
001ab0  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
001ab4  b3100120  hfloat2float.rn r1, r2
001ab8  1f210000  addli r2, zero, 2
001abc  7e0101e0  vmmov mr2, r2
001ac0  1f410000  addli r2, zero, 4
001ac4  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
001ac8  b3900120  hfloat2float.rn r1, r3
001acc  7e0101e0  vmmov mr2, r2
001ad0  1f011000  addli r2, zero, 8
001ad4  ab810000  lui r3, 8
001ad8  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
001adc  b3100220  hfloat2float.rn r1, r4
001ae0  7e0101e0  vmmov mr2, r2
001ae4  1f012000  addli r2, zero, 16
001ae8  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
001aec  b3100320  hfloat2float.rn r1, r6
001af0  7e0101e0  vmmov mr2, r2
001af4  1f014000  addli r2, zero, 32
001af8  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
001afc  b3100e20  hfloat2float.rn r1, r28
001b00  7e0101e0  vmmov mr2, r2
001b04  1f018000  addli r2, zero, 64
001b08  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
001b0c  b3900d20  hfloat2float.rn r1, r27
001b10  7e0101e0  vmmov mr2, r2
001b14  1f010001  addli r2, zero, 128
001b18  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
001b1c  b3100d20  hfloat2float.rn r1, r26
001b20  7e0101e0  vmmov mr2, r2
001b24  1f010002  addli r2, zero, 256
001b28  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
001b2c  b3900c20  hfloat2float.rn r1, r25
001b30  7e0101e0  vmmov mr2, r2
001b34  1f010004  addli r2, zero, 512
001b38  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
001b3c  b3100c20  hfloat2float.rn r1, r24
001b40  7e0101e0  vmmov mr2, r2
001b44  1f010008  addli r2, zero, 1024
001b48  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
001b4c  b3900b20  hfloat2float.rn r1, r23
001b50  7e0101e0  vmmov mr2, r2
001b54  1f010010  addli r2, zero, 2048
001b58  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
001b5c  b3100b20  hfloat2float.rn r1, r22
001b60  7e0101e0  vmmov mr2, r2
001b64  1f010020  addli r2, zero, 4096
001b68  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
001b6c  b3900a20  hfloat2float.rn r1, r21
001b70  7e0101e0  vmmov mr2, r2
001b74  1f010040  addli r2, zero, 8192
001b78  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
001b7c  b3100a20  hfloat2float.rn r1, r20
001b80  7e0101e0  vmmov mr2, r2
001b84  2b410000  lui r2, 4
001b88  fe0101e0  vmmov mr3, r2
001b8c  33910820  hfloat2float.rn r2, r17
001b90  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
001b94  b3100920  hfloat2float.rn r1, r18
001b98  7e8101e0  vmmov mr2, r3
001b9c  9f010ff8  addli r3, r30, -1024
001ba0  8b915110  add.s r3, r3, r5
001ba4  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
001ba8  b3100820  hfloat2float.rn r1, r16
001bac  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
001bb0  9f100000  addli r1, zero, 1
001bb4  7e8000e0  vmmov mr0, r1
001bb8  b3900720  hfloat2float.rn r1, r15
001bbc  ea225130  vor.u.mh vr5{mr0}, r2, vr5
001bc0  1f210000  addli r2, zero, 2
001bc4  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
001bc8  86f40000  vfp162float_h.rn vr9, vr1
001bcc  7e0001e0  vmmov mr0, r2
001bd0  1f410000  addli r2, zero, 4
001bd4  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001bd8  b3100720  hfloat2float.rn r1, r14
001bdc  7e0001e0  vmmov mr0, r2
001be0  1f011000  addli r2, zero, 8
001be4  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001be8  b3900620  hfloat2float.rn r1, r13
001bec  7e0001e0  vmmov mr0, r2
001bf0  1f012000  addli r2, zero, 16
001bf4  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001bf8  b3100620  hfloat2float.rn r1, r12
001bfc  7e0001e0  vmmov mr0, r2
001c00  1f014000  addli r2, zero, 32
001c04  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001c08  b3900520  hfloat2float.rn r1, r11
001c0c  7e0001e0  vmmov mr0, r2
001c10  1f018000  addli r2, zero, 64
001c14  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001c18  b3100520  hfloat2float.rn r1, r10
001c1c  7e0001e0  vmmov mr0, r2
001c20  1f010001  addli r2, zero, 128
001c24  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001c28  b3900420  hfloat2float.rn r1, r9
001c2c  7e0001e0  vmmov mr0, r2
001c30  1f010002  addli r2, zero, 256
001c34  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001c38  b3100420  hfloat2float.rn r1, r8
001c3c  7e0001e0  vmmov mr0, r2
001c40  1f010004  addli r2, zero, 512
001c44  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001c48  e300ffeb  loadli.w r1,  -2568(r30)
001c4c  7e0001e0  vmmov mr0, r2
001c50  1f010008  addli r2, zero, 1024
001c54  b3900020  hfloat2float.rn r1, r1
001c58  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001c5c  e340ffeb  loadli.w r1,  -2564(r30)
001c60  7e0001e0  vmmov mr0, r2
001c64  1f010010  addli r2, zero, 2048
001c68  b3900020  hfloat2float.rn r1, r1
001c6c  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001c70  e3000fec  loadli.w r1,  -2560(r30)
001c74  7e0001e0  vmmov mr0, r2
001c78  1f010020  addli r2, zero, 4096
001c7c  b3900020  hfloat2float.rn r1, r1
001c80  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001c84  e3008fec  loadli.w r1,  -2496(r30)
001c88  7e0001e0  vmmov mr0, r2
001c8c  1f010040  addli r2, zero, 8192
001c90  b3900020  hfloat2float.rn r1, r1
001c94  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001c98  e3000fed  loadli.w r1,  -2432(r30)
001c9c  7e0001e0  vmmov mr0, r2
001ca0  b3900020  hfloat2float.rn r1, r1
001ca4  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001ca8  e340ffed  loadli.w r1,  -2308(r30)
001cac  b3900020  hfloat2float.rn r1, r1
001cb0  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
001cb4  e3006fe9  loadli.w r1,  -2896(r30)
001cb8  63010fee  loadli.w r2,  -2304(r30)
001cbc  33110120  hfloat2float.rn r2, r2
001cc0  8b905010  add.s r1, r1, r5
001cc4  ea225134  vor.u.mh vr5{mr2}, r2, vr5
001cc8  6bb1a0fe  load.hu r2, -22(r1)
001ccc  ebb70100  load.hu r15, 0(r3)
001cd0  ebb140fc  load.hu r3, -60(r1)
001cd4  6bb260fc  load.hu r4, -58(r1)
001cd8  6bb380fc  load.hu r6, -56(r1)
001cdc  ebb9a0fc  load.hu r19, -54(r1)
001ce0  ebb3c0fc  load.hu r7, -52(r1)
001ce4  6bb4e0fc  load.hu r8, -50(r1)
001ce8  ebb400fd  load.hu r9, -48(r1)
001cec  6bb520fd  load.hu r10, -46(r1)
001cf0  ebb540fd  load.hu r11, -44(r1)
001cf4  6bb660fd  load.hu r12, -42(r1)
001cf8  ebb680fd  load.hu r13, -40(r1)
001cfc  6bb7a0fd  load.hu r14, -38(r1)
001d00  6bb8c0fd  load.hu r16, -36(r1)
001d04  ebb8e0fd  load.hu r17, -34(r1)
001d08  6bba00fe  load.hu r20, -32(r1)
001d0c  6bb920fe  load.hu r18, -30(r1)
001d10  ebbb40fe  load.hu r23, -28(r1)
001d14  ebbc60fe  load.hu r25, -26(r1)
001d18  ebbd80fe  load.hu r27, -24(r1)
001d1c  e7472fea  storeli.w r2, -2692(r30)
001d20  6bb1c0fe  load.hu r2, -20(r1)
001d24  96905402  vadd.f.mz.rn vr1{mr1}, vr9, vr5
001d28  86120200  vfloat2fp16_l.rn vr5, vr4
001d2c  86d20000  vfloat2fp16_h.rn vr5, vr1
001d30  06f20200  vfp162float_h.rn vr4, vr5
001d34  86b00200  vfp162float_l.rn vr1, vr5
001d38  67482fea  storeli.w r2, -2684(r30)
001d3c  6bb1e0fe  load.hu r2, -18(r1)
001d40  e7482fea  storeli.w r2, -2676(r30)
001d44  6bb100ff  load.hu r2, -16(r1)
001d48  67492fea  storeli.w r2, -2668(r30)
001d4c  6bb120ff  load.hu r2, -14(r1)
001d50  e7492fea  storeli.w r2, -2660(r30)
001d54  6bb140ff  load.hu r2, -12(r1)
001d58  674a2fea  storeli.w r2, -2652(r30)
001d5c  6bb160ff  load.hu r2, -10(r1)
001d60  e74a2fea  storeli.w r2, -2644(r30)
001d64  6bb180ff  load.hu r2, -8(r1)
001d68  674b2fea  storeli.w r2, -2636(r30)
001d6c  6bb1a0ff  load.hu r2, -6(r1)
001d70  e74b2fea  storeli.w r2, -2628(r30)
001d74  6bb1c0ff  load.hu r2, -4(r1)
001d78  674c2fea  storeli.w r2, -2620(r30)
001d7c  6bb1e0ff  load.hu r2, -2(r1)
001d80  ebb00000  load.hu r1, 0(r1)
001d84  674d1fea  storeli.w r1, -2604(r30)
001d88  9f000ffc  addli r1, r30, -512
001d8c  670d2fea  storeli.w r2, -2608(r30)
001d90  33910720  hfloat2float.rn r2, r15
001d94  8b975010  add.s r15, r1, r5
001d98  e3405fe9  loadli.w r1,  -2900(r30)
001d9c  ebb70700  load.hu r15, 0(r15)
001da0  8b905010  add.s r1, r1, r5
001da4  9f828200  addli r5, r5, 64
001da8  6bbea0fe  load.hu r28, -22(r1)
001dac  ebba20fe  load.hu r21, -30(r1)
001db0  6bbb40fe  load.hu r22, -28(r1)
001db4  6bbc60fe  load.hu r24, -26(r1)
001db8  6bbd80fe  load.hu r26, -24(r1)
001dbc  e707cfeb  storeli.w r28, -2696(r30)
001dc0  6bbec0fe  load.hu r28, -20(r1)
001dc4  6708cfeb  storeli.w r28, -2688(r30)
001dc8  6bbee0fe  load.hu r28, -18(r1)
001dcc  e708cfeb  storeli.w r28, -2680(r30)
001dd0  6bbe00ff  load.hu r28, -16(r1)
001dd4  6709cfeb  storeli.w r28, -2672(r30)
001dd8  6bbe20ff  load.hu r28, -14(r1)
001ddc  e709cfeb  storeli.w r28, -2664(r30)
001de0  6bbe40ff  load.hu r28, -12(r1)
001de4  670acfeb  storeli.w r28, -2656(r30)
001de8  6bbe60ff  load.hu r28, -10(r1)
001dec  e70acfeb  storeli.w r28, -2648(r30)
001df0  6bbe80ff  load.hu r28, -8(r1)
001df4  670bcfeb  storeli.w r28, -2640(r30)
001df8  6bbea0ff  load.hu r28, -6(r1)
001dfc  e70bcfeb  storeli.w r28, -2632(r30)
001e00  6bbec0ff  load.hu r28, -4(r1)
001e04  670ccfeb  storeli.w r28, -2624(r30)
001e08  6bbee0ff  load.hu r28, -2(r1)
001e0c  e74ccfeb  storeli.w r28, -2612(r30)
001e10  6bbe0000  load.hu r28, 0(r1)
001e14  e70ccfeb  storeli.w r28, -2616(r30)
001e18  6bbe2000  load.hu r28, 2(r1)
001e1c  e70dcfeb  storeli.w r28, -2600(r30)
001e20  6bbe4000  load.hu r28, 4(r1)
001e24  e74dcfeb  storeli.w r28, -2596(r30)
001e28  6bbe6000  load.hu r28, 6(r1)
001e2c  670ecfeb  storeli.w r28, -2592(r30)
001e30  6bbe8000  load.hu r28, 8(r1)
001e34  674ecfeb  storeli.w r28, -2588(r30)
001e38  6bbea000  load.hu r28, 10(r1)
001e3c  e70ecfeb  storeli.w r28, -2584(r30)
001e40  6bbec000  load.hu r28, 12(r1)
001e44  e74ecfeb  storeli.w r28, -2580(r30)
001e48  6bbee000  load.hu r28, 14(r1)
001e4c  670fcfeb  storeli.w r28, -2576(r30)
001e50  6bbe0001  load.hu r28, 16(r1)
001e54  674fcfeb  storeli.w r28, -2572(r30)
001e58  6bbe2001  load.hu r28, 18(r1)
001e5c  e70fcfeb  storeli.w r28, -2568(r30)
001e60  6bbe4001  load.hu r28, 20(r1)
001e64  e74fcfeb  storeli.w r28, -2564(r30)
001e68  6bbe6001  load.hu r28, 22(r1)
001e6c  6700cfed  storeli.w r28, -2560(r30)
001e70  6bbe8001  load.hu r28, 24(r1)
001e74  6704cfed  storeli.w r28, -2496(r30)
001e78  6bbea001  load.hu r28, 26(r1)
001e7c  6708cfed  storeli.w r28, -2432(r30)
001e80  6bbec001  load.hu r28, 28(r1)
001e84  ebb0e001  load.hu r1, 30(r1)
001e88  67001fee  storeli.w r1, -2304(r30)
001e8c  9f100000  addli r1, zero, 1
001e90  e74fcfed  storeli.w r28, -2308(r30)
001e94  7e8000e0  vmmov mr0, r1
001e98  b3900120  hfloat2float.rn r1, r3
001e9c  ab810000  lui r3, 8
001ea0  6a200130  vor.u.mh vr0{mr0}, r2, vr0
001ea4  1f210000  addli r2, zero, 2
001ea8  7e0001e0  vmmov mr0, r2
001eac  1f410000  addli r2, zero, 4
001eb0  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001eb4  b3100220  hfloat2float.rn r1, r4
001eb8  7e0001e0  vmmov mr0, r2
001ebc  1f011000  addli r2, zero, 8
001ec0  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001ec4  b3100320  hfloat2float.rn r1, r6
001ec8  7e0001e0  vmmov mr0, r2
001ecc  1f012000  addli r2, zero, 16
001ed0  fe0101e0  vmmov mr3, r2
001ed4  1f014000  addli r2, zero, 32
001ed8  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001edc  b3900920  hfloat2float.rn r1, r19
001ee0  7e0001e0  vmmov mr0, r2
001ee4  1f018000  addli r2, zero, 64
001ee8  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
001eec  b3900320  hfloat2float.rn r1, r7
001ef0  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001ef4  b3100420  hfloat2float.rn r1, r8
001ef8  7e0001e0  vmmov mr0, r2
001efc  1f010001  addli r2, zero, 128
001f00  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001f04  b3900420  hfloat2float.rn r1, r9
001f08  7e0001e0  vmmov mr0, r2
001f0c  1f010002  addli r2, zero, 256
001f10  9f040004  addli r9, zero, 512
001f14  7e0101e0  vmmov mr2, r2
001f18  1f010004  addli r2, zero, 512
001f1c  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001f20  b3100520  hfloat2float.rn r1, r10
001f24  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
001f28  b3900520  hfloat2float.rn r1, r11
001f2c  7e0101e0  vmmov mr2, r2
001f30  e345efea  loadli.w r11,  -2700(r30)
001f34  1f010008  addli r2, zero, 1024
001f38  fe0101e0  vmmov mr3, r2
001f3c  1f010010  addli r2, zero, 2048
001f40  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
001f44  b3100620  hfloat2float.rn r1, r12
001f48  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
001f4c  b3900620  hfloat2float.rn r1, r13
001f50  fe0101e0  vmmov mr3, r2
001f54  1f010020  addli r2, zero, 4096
001f58  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
001f5c  b3100720  hfloat2float.rn r1, r14
001f60  fe0101e0  vmmov mr3, r2
001f64  1f010040  addli r2, zero, 8192
001f68  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
001f6c  b3100820  hfloat2float.rn r1, r16
001f70  fe0101e0  vmmov mr3, r2
001f74  2b410000  lui r2, 4
001f78  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
001f7c  b3900820  hfloat2float.rn r1, r17
001f80  fe0101e0  vmmov mr3, r2
001f84  33110920  hfloat2float.rn r2, r18
001f88  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
001f8c  b3100a20  hfloat2float.rn r1, r20
001f90  fe8101e0  vmmov mr3, r3
001f94  ab810000  lui r3, 8
001f98  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
001f9c  9f100000  addli r1, zero, 1
001fa0  fe8100e0  vmmov mr3, r1
001fa4  b3900b20  hfloat2float.rn r1, r23
001fa8  6a236136  vor.u.mh vr6{mr3}, r2, vr6
001fac  1f210000  addli r2, zero, 2
001fb0  fe0101e0  vmmov mr3, r2
001fb4  1f410000  addli r2, zero, 4
001fb8  6aa36036  vor.u.mh vr6{mr3}, r1, vr6
001fbc  b3900c20  hfloat2float.rn r1, r25
001fc0  fe0101e0  vmmov mr3, r2
001fc4  1f011000  addli r2, zero, 8
001fc8  6aa36036  vor.u.mh vr6{mr3}, r1, vr6
001fcc  b3900d20  hfloat2float.rn r1, r27
001fd0  fe0101e0  vmmov mr3, r2
001fd4  1f012000  addli r2, zero, 16
001fd8  6aa36036  vor.u.mh vr6{mr3}, r1, vr6
001fdc  e340ffea  loadli.w r1,  -2692(r30)
001fe0  fe0101e0  vmmov mr3, r2
001fe4  1f014000  addli r2, zero, 32
001fe8  b3900020  hfloat2float.rn r1, r1
001fec  6aa36036  vor.u.mh vr6{mr3}, r1, vr6
001ff0  e3400feb  loadli.w r1,  -2684(r30)
001ff4  fe0101e0  vmmov mr3, r2
001ff8  1f018000  addli r2, zero, 64
001ffc  b3900020  hfloat2float.rn r1, r1
002000  6aa36036  vor.u.mh vr6{mr3}, r1, vr6
002004  e3401feb  loadli.w r1,  -2676(r30)
002008  fe0101e0  vmmov mr3, r2
00200c  1f010002  addli r2, zero, 256
002010  b3900020  hfloat2float.rn r1, r1
002014  6aa36036  vor.u.mh vr6{mr3}, r1, vr6
002018  e3402feb  loadli.w r1,  -2668(r30)
00201c  b3900020  hfloat2float.rn r1, r1
002020  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
002024  e3403feb  loadli.w r1,  -2660(r30)
002028  7e0001e0  vmmov mr0, r2
00202c  1f010008  addli r2, zero, 1024
002030  b3900020  hfloat2float.rn r1, r1
002034  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
002038  e3404feb  loadli.w r1,  -2652(r30)
00203c  7e0001e0  vmmov mr0, r2
002040  1f010010  addli r2, zero, 2048
002044  b3900020  hfloat2float.rn r1, r1
002048  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
00204c  fe0101c0  vmmov mr3, mr2
002050  e3405feb  loadli.w r1,  -2644(r30)
002054  b3900020  hfloat2float.rn r1, r1
002058  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
00205c  e3406feb  loadli.w r1,  -2636(r30)
002060  7e0001e0  vmmov mr0, r2
002064  1f010020  addli r2, zero, 4096
002068  b3900020  hfloat2float.rn r1, r1
00206c  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
002070  e3407feb  loadli.w r1,  -2628(r30)
002074  7e0001e0  vmmov mr0, r2
002078  1f010040  addli r2, zero, 8192
00207c  b3900020  hfloat2float.rn r1, r1
002080  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
002084  e3408feb  loadli.w r1,  -2620(r30)
002088  7e0001e0  vmmov mr0, r2
00208c  2b410000  lui r2, 4
002090  b3900020  hfloat2float.rn r1, r1
002094  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
002098  e300afeb  loadli.w r1,  -2608(r30)
00209c  7e0001e0  vmmov mr0, r2
0020a0  33910720  hfloat2float.rn r2, r15
0020a4  b3900020  hfloat2float.rn r1, r1
0020a8  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
0020ac  e340afeb  loadli.w r1,  -2604(r30)
0020b0  7e8001e0  vmmov mr0, r3
0020b4  b3900020  hfloat2float.rn r1, r1
0020b8  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
0020bc  9f100000  addli r1, zero, 1
0020c0  7e8100e0  vmmov mr2, r1
0020c4  b3900a20  hfloat2float.rn r1, r21
0020c8  ea237134  vor.u.mh vr7{mr2}, r2, vr7
0020cc  1f210000  addli r2, zero, 2
0020d0  7e0101e0  vmmov mr2, r2
0020d4  1f410000  addli r2, zero, 4
0020d8  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
0020dc  b3100b20  hfloat2float.rn r1, r22
0020e0  7e0101e0  vmmov mr2, r2
0020e4  1f011000  addli r2, zero, 8
0020e8  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
0020ec  b3100c20  hfloat2float.rn r1, r24
0020f0  7e0101e0  vmmov mr2, r2
0020f4  1f012000  addli r2, zero, 16
0020f8  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
0020fc  b3100d20  hfloat2float.rn r1, r26
002100  7e0101e0  vmmov mr2, r2
002104  1f014000  addli r2, zero, 32
002108  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
00210c  e300ffea  loadli.w r1,  -2696(r30)
002110  7e0101e0  vmmov mr2, r2
002114  1f018000  addli r2, zero, 64
002118  b3900020  hfloat2float.rn r1, r1
00211c  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
002120  e3000feb  loadli.w r1,  -2688(r30)
002124  7e0101e0  vmmov mr2, r2
002128  1f010001  addli r2, zero, 128
00212c  b3900020  hfloat2float.rn r1, r1
002130  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
002134  e3001feb  loadli.w r1,  -2680(r30)
002138  7e0101e0  vmmov mr2, r2
00213c  1f010002  addli r2, zero, 256
002140  b3900020  hfloat2float.rn r1, r1
002144  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
002148  e3002feb  loadli.w r1,  -2672(r30)
00214c  7e0101e0  vmmov mr2, r2
002150  1f010008  addli r2, zero, 1024
002154  b3900020  hfloat2float.rn r1, r1
002158  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
00215c  e3003feb  loadli.w r1,  -2664(r30)
002160  7e8101c0  vmmov mr2, mr3
002164  fe0101e0  vmmov mr3, r2
002168  1f010010  addli r2, zero, 2048
00216c  b3900020  hfloat2float.rn r1, r1
002170  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
002174  e3004feb  loadli.w r1,  -2656(r30)
002178  b3900020  hfloat2float.rn r1, r1
00217c  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
002180  e3005feb  loadli.w r1,  -2648(r30)
002184  fe0101e0  vmmov mr3, r2
002188  1f010020  addli r2, zero, 4096
00218c  b3900020  hfloat2float.rn r1, r1
002190  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
002194  e3006feb  loadli.w r1,  -2640(r30)
002198  fe0101e0  vmmov mr3, r2
00219c  1f010040  addli r2, zero, 8192
0021a0  b3900020  hfloat2float.rn r1, r1
0021a4  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
0021a8  e3007feb  loadli.w r1,  -2632(r30)
0021ac  fe0101e0  vmmov mr3, r2
0021b0  2b410000  lui r2, 4
0021b4  b3900020  hfloat2float.rn r1, r1
0021b8  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
0021bc  e3008feb  loadli.w r1,  -2624(r30)
0021c0  fe0101e0  vmmov mr3, r2
0021c4  b3900020  hfloat2float.rn r1, r1
0021c8  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
0021cc  e3409feb  loadli.w r1,  -2612(r30)
0021d0  63019feb  loadli.w r2,  -2616(r30)
0021d4  b3900020  hfloat2float.rn r1, r1
0021d8  33110120  hfloat2float.rn r2, r2
0021dc  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0021e0  9f100000  addli r1, zero, 1
0021e4  fe8100e0  vmmov mr3, r1
0021e8  6a248136  vor.u.mh vr8{mr3}, r2, vr8
0021ec  e300bfeb  loadli.w r1,  -2600(r30)
0021f0  1f210000  addli r2, zero, 2
0021f4  fe0101e0  vmmov mr3, r2
0021f8  1f410000  addli r2, zero, 4
0021fc  b3900020  hfloat2float.rn r1, r1
002200  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
002204  e340bfeb  loadli.w r1,  -2596(r30)
002208  fe0101e0  vmmov mr3, r2
00220c  1f011000  addli r2, zero, 8
002210  b3900020  hfloat2float.rn r1, r1
002214  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
002218  e300cfeb  loadli.w r1,  -2592(r30)
00221c  fe0101e0  vmmov mr3, r2
002220  1f012000  addli r2, zero, 16
002224  b3900020  hfloat2float.rn r1, r1
002228  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
00222c  e340cfeb  loadli.w r1,  -2588(r30)
002230  fe0101e0  vmmov mr3, r2
002234  1f014000  addli r2, zero, 32
002238  b3900020  hfloat2float.rn r1, r1
00223c  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
002240  e300dfeb  loadli.w r1,  -2584(r30)
002244  fe0101e0  vmmov mr3, r2
002248  1f018000  addli r2, zero, 64
00224c  b3900020  hfloat2float.rn r1, r1
002250  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
002254  e340dfeb  loadli.w r1,  -2580(r30)
002258  fe0101e0  vmmov mr3, r2
00225c  1f010001  addli r2, zero, 128
002260  b3900020  hfloat2float.rn r1, r1
002264  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
002268  e300efeb  loadli.w r1,  -2576(r30)
00226c  fe0101e0  vmmov mr3, r2
002270  1f010002  addli r2, zero, 256
002274  b3900020  hfloat2float.rn r1, r1
002278  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
00227c  e340efeb  loadli.w r1,  -2572(r30)
002280  fe0101e0  vmmov mr3, r2
002284  1f010008  addli r2, zero, 1024
002288  b3900020  hfloat2float.rn r1, r1
00228c  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
002290  e300ffeb  loadli.w r1,  -2568(r30)
002294  b3900020  hfloat2float.rn r1, r1
002298  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
00229c  e340ffeb  loadli.w r1,  -2564(r30)
0022a0  7e0101e0  vmmov mr2, r2
0022a4  1f010010  addli r2, zero, 2048
0022a8  b3900020  hfloat2float.rn r1, r1
0022ac  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
0022b0  e3000fec  loadli.w r1,  -2560(r30)
0022b4  7e0101e0  vmmov mr2, r2
0022b8  1f010020  addli r2, zero, 4096
0022bc  b3900020  hfloat2float.rn r1, r1
0022c0  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
0022c4  e3008fec  loadli.w r1,  -2496(r30)
0022c8  7e0101e0  vmmov mr2, r2
0022cc  1f010040  addli r2, zero, 8192
0022d0  b3900020  hfloat2float.rn r1, r1
0022d4  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
0022d8  e3000fed  loadli.w r1,  -2432(r30)
0022dc  7e0101e0  vmmov mr2, r2
0022e0  2b410000  lui r2, 4
0022e4  b3900020  hfloat2float.rn r1, r1
0022e8  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
0022ec  e340ffed  loadli.w r1,  -2308(r30)
0022f0  7e0101e0  vmmov mr2, r2
0022f4  b3900020  hfloat2float.rn r1, r1
0022f8  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
0022fc  e3000fee  loadli.w r1,  -2304(r30)
002300  b3900020  hfloat2float.rn r1, r1
002304  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
002308  e3007fe9  loadli.w r1,  -2888(r30)
00230c  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
002310  12924002  vadd.f.mz.rn vr4{mr1}, r1, vr4
002314  e3407fe9  loadli.w r1,  -2884(r30)
002318  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
00231c  0a924002  vmul.f.mz.rn vr4{mr1}, r1, vr4
002320  a6930002  vmac.f.mz.rn vr7{mr1}, vr1, vr0
002324  26146202  vmac.f.mz.rn vr8{mr1}, vr4, vr6
002328  06900300  vfloat2fp16_l.rn vr0, vr7
00232c  06500400  vfloat2fp16_h.rn vr0, vr8
002330  e3008fee  loadli.w r1,  -2240(r30)
002334  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
002338  00a00000  mfence { lm }
00233c  3bca92fa  bneq r5, r9, -2416
002340  1f034fe9  addli r6, r30, -2912
002344  6b510f02  load.d r[3:4], 32(r30)
002348  ab0000f0  lui r1, 983040
00234c  9233a002  vadd.s.mz vr7{mr1}, zero, vr10
002350  9f73f00f  addli r7, zero, 2047
002354  1f040ff0  addli r8, r30, -2048
002358  6b520300  load.d r[5:6], 0(r6)
00235c  97901400  or r1, r9, r1
002360  0b214110  add.ul r[3:4], r[3:4], r[5:6]
002364  1f020ff0  addli r4, r30, -2048
002368  9f020ff4  addli r5, r30, -1536
00236c  ff304100  s_lm2gm r1, r4, 0(r[3:4])
002370  9f000fea  addli r1, r30, -2816
002374  00a00000  mfence { lm }
002378  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
00237c  9f100000  addli r1, zero, 1
002380  e3062fe9  loadli.w r13,  -2928(r30)
002384  63461fe9  loadli.w r12,  -2932(r30)
002388  63075fe9  loadli.w r14,  -2904(r30)
00238c  7e8000e0  vmmov mr0, r1
002390  5be4fbff  j -8416
002394  9f0e8fe8  addli sp, r30, -3008
002398  9f8e8e17  addli sp, sp, 3008
00239c  00a00300  mfence { lm, sm, gm }
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
0025c4  00100000  exit
0025c8  00100000  exit
0025cc  00100000  exit
0025d0  00100000  exit
0025d4  00100000  exit
0025d8  00100000  exit
0025dc  00100000  exit
0025e0  00100000  exit
