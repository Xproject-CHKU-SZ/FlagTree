; SHA-256 4acadf5ad0a557a83505474690cd88b8639b67807dbe55827203b0d34154421a
; P800 Cluster · XTDK LLVM 19 · 2054 / 2054 words decoded
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
0000dc  9f8e0ee1  addli sp, sp, -3968
0000e0  1f8f8e1e  addli r30, sp, 3904
0000e4  63414f00  loadli.w r2,  36(r30)
0000e8  e3004f00  loadli.w r1,  32(r30)
0000ec  e3015f00  loadli.w r3,  40(r30)
0000f0  8b101120  mul.s r1, r2, r1
0000f4  00510002  load_param_i r2, 0
0000f8  8b903020  mul.s r1, r1, r3
0000fc  e70e1fe0  storeli.w r1, -3864(r30)
000100  4ba3200e  ble.s r1, r2, 7368
000104  80d00002  load_param_i r1, 1
000108  1f040ff4  addli r8, r30, -1536
00010c  9f040ff8  addli r9, r30, -1024
000110  eea5b562  vxor.u.mz vr11{mr1}, vr11, vr11
000114  1f030ff0  addli r6, r30, -2048
000118  9f030fec  addli r7, r30, -2560
00011c  9f0b0fe8  addli r23, r30, -3072
000120  1f0e0004  addli r28, zero, 512
000124  6e324262  vxor.s.mz vr4{mr1}, vr4, vr4
000128  674e1fe0  storeli.w r1, -3868(r30)
00012c  9f008400  addli r1, r8, 64
000130  e70e1fe2  storeli.w r1, -3608(r30)
000134  9f808400  addli r1, r9, 64
000138  674e1fe2  storeli.w r1, -3612(r30)
00013c  9f100000  addli r1, zero, 1
000140  7e8100e0  vmmov mr2, r1
000144  ab00803f  lui r1, 260096
000148  6a90b022  vor.f.mz vr0{mr1}, r1, vr11
00014c  9f000fe2  addli r1, r30, -3840
000150  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000154  ab10833a  lui r1, 239665
000158  9b90f026  ori r1, r1, 623
00015c  670e1fe0  storeli.w r1, -3872(r30)
000160  9f000fe3  addli r1, r30, -3712
000164  4690b002  vstore_mask16.mz vr11{mr1}, 0(r1)
000168  9f008fe2  addli r1, r30, -3776
00016c  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
000170  db030000  j 28
000174  6341dfe1  loadli.w r2,  -3860(r30)
000178  e340cfe1  loadli.w r1,  -3868(r30)
00017c  0b111110  add.s r2, r2, r1
000180  e300dfe1  loadli.w r1,  -3864(r30)
000184  3f201100  blt.s r2, r1, 8
000188  5b880300  j 7232
00018c  e3005f00  loadli.w r1,  40(r30)
000190  e74e2fe0  storeli.w r2, -3860(r30)
000194  8b101130  div.s r1, r2, r1
000198  63414f00  loadli.w r2,  36(r30)
00019c  8b902030  div.s r1, r1, r2
0001a0  00310002  core_id r2
0001a4  9bb06000  slli r1, r1, 6
0001a8  8b101110  add.s r1, r2, r1
0001ac  1f71f00f  addli r2, zero, 2047
0001b0  3f1f11fe  blt.s r2, r1, -60
0001b4  1f010000  addli r2, zero, 0
0001b8  8b112310  add.s r3, r6, r2
0001bc  4690b102  vstore_mask16.mz vr11{mr1}, 0(r3)
0001c0  4694b102  vstore_mask16.mz vr11{mr1}, 64(r3)
0001c4  8b912310  add.s r3, r7, r2
0001c8  00a00000  mfence { lm }
0001cc  4690b102  vstore_mask16.mz vr11{mr1}, 0(r3)
0001d0  4694b102  vstore_mask16.mz vr11{mr1}, 64(r3)
0001d4  8b912b10  add.s r3, r23, r2
0001d8  1f010101  addli r2, r2, 128
0001dc  00a00000  mfence { lm }
0001e0  4690b102  vstore_mask16.mz vr11{mr1}, 0(r3)
0001e4  4694b102  vstore_mask16.mz vr11{mr1}, 64(r3)
0001e8  00a00000  mfence { lm }
0001ec  3b3fc1ff  bneq r2, r28, -52
0001f0  9bb0b000  slli r1, r1, 11
0001f4  67060fe4  storeli.w zero, -3488(r30)
0001f8  e74f1fe0  storeli.w r1, -3844(r30)
0001fc  00a00000  mfence { lm }
000200  db040000  j 36
000204  6301cfe4  loadli.w r2,  -3488(r30)
000208  9f00000f  addli r1, zero, 1920
00020c  93001104  setlt.u r1, r2, r1
000210  1f010101  addli r2, r2, 128
000214  67062fe4  storeli.w r2, -3488(r30)
000218  1f011000  addli r2, zero, 8
00021c  7e0001e0  vmmov mr0, r2
000220  b7bc0002  beq r1, zero, 1836
000224  9f000000  addli r1, zero, 0
000228  0b111410  add.s r2, r8, r1
00022c  9f800001  addli r1, r1, 128
000230  4610b102  vstore_mask16.mz vr11{mr1}, 0(r2)
000234  4614b102  vstore_mask16.mz vr11{mr1}, 64(r2)
000238  00a00000  mfence { lm }
00023c  bbbfc0ff  bneq r1, r28, -20
000240  e340ffe1  loadli.w r1,  -3844(r30)
000244  6301cfe4  loadli.w r2,  -3488(r30)
000248  9f210000  addli r3, zero, 2
00024c  6b520f00  load.d r[5:6], 0(r30)
000250  97101100  or r1, r2, r1
000254  b3900028  sext_int2long r[2:3], r1
000258  97b03002  sll.d r[2:3], r[2:3], r3
00025c  ab0100f0  lui r3, 983040
000260  8b201210  add.ul r[2:3], r[5:6], r[2:3]
000264  97113e00  or r3, r28, r3
000268  ffa18000  l_gm2lm r3, r8, 0(r[2:3])
00026c  9f000000  addli r1, zero, 0
000270  0b911410  add.s r2, r9, r1
000274  9f801000  addli r1, r1, 8
000278  67000100  storeli.w zero, 0(r2)
00027c  67400100  storeli.w zero, 4(r2)
000280  00a00000  mfence { lm }
000284  bbbfc0ff  bneq r1, r28, -20
000288  e300cfe4  loadli.w r1,  -3488(r30)
00028c  9f210000  addli r3, zero, 2
000290  6b528f00  load.d r[5:6], 8(r30)
000294  b3800028  zext_int2long r[2:3], r1
000298  97b03002  sll.d r[2:3], r[2:3], r3
00029c  ab0100f0  lui r3, 983040
0002a0  8b201210  add.ul r[2:3], r[5:6], r[2:3]
0002a4  97113e00  or r3, r28, r3
0002a8  ffa19000  l_gm2lm r3, r9, 0(r[2:3])
0002ac  9f000000  addli r1, zero, 0
0002b0  db7d0000  j 1004
0002b4  2b02803f  lui r4, 260096
0002b8  1e917202  vsub.f.mz.rn vr2{mr1}, vr5, vr7
0002bc  9f020fe7  addli r5, r30, -3200
0002c0  9231b002  vadd.s.mz vr3{mr1}, zero, vr11
0002c4  1f140000  addli r8, zero, 1
0002c8  9e108502  vsub.f.mz.rn vr1{mr1}, vr10, vr8
0002cc  1232b002  vadd.s.mz vr4{mr1}, zero, vr11
0002d0  92146202  vadd.f.mz.rn vr9{mr1}, r4, vr6
0002d4  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
0002d8  7e0004e0  vmmov mr0, r8
0002dc  1f240000  addli r8, zero, 2
0002e0  fa110140  vextracti.f r3, 0(vr2)
0002e4  fa121140  vextracti.f r5, 1(vr2)
0002e8  7a910440  vextracti.f r2, 0(vr9)
0002ec  7a932440  vextracti.f r6, 2(vr9)
0002f0  fa933440  vextracti.f r7, 3(vr9)
0002f4  12100202  vadd.f.mz.rn vr0{mr1}, r4, vr0
0002f8  7a921440  vextracti.f r4, 1(vr9)
0002fc  0f812118  div.f.rn r2, r3, r2
000300  fa91f440  vextracti.f r3, 15(vr9)
000304  0f824218  div.f.rn r4, r5, r4
000308  fa122140  vextracti.f r5, 2(vr2)
00030c  ea213130  vor.u.mh vr3{mr0}, r2, vr3
000310  0f816218  div.f.rn r2, r5, r6
000314  fa123140  vextracti.f r5, 3(vr2)
000318  7e0004e0  vmmov mr0, r8
00031c  1f440000  addli r8, zero, 4
000320  7a934440  vextracti.f r6, 4(vr9)
000324  ea213230  vor.u.mh vr3{mr0}, r4, vr3
000328  0f827218  div.f.rn r4, r5, r7
00032c  fa124140  vextracti.f r5, 4(vr2)
000330  7e0004e0  vmmov mr0, r8
000334  1f041000  addli r8, zero, 8
000338  fa935440  vextracti.f r7, 5(vr9)
00033c  ea213130  vor.u.mh vr3{mr0}, r2, vr3
000340  0f816218  div.f.rn r2, r5, r6
000344  fa125140  vextracti.f r5, 5(vr2)
000348  7e0004e0  vmmov mr0, r8
00034c  1f042000  addli r8, zero, 16
000350  7a936440  vextracti.f r6, 6(vr9)
000354  ea213230  vor.u.mh vr3{mr0}, r4, vr3
000358  0f827218  div.f.rn r4, r5, r7
00035c  fa126140  vextracti.f r5, 6(vr2)
000360  7e0004e0  vmmov mr0, r8
000364  1f044000  addli r8, zero, 32
000368  fa937440  vextracti.f r7, 7(vr9)
00036c  ea213130  vor.u.mh vr3{mr0}, r2, vr3
000370  0f816218  div.f.rn r2, r5, r6
000374  fa127140  vextracti.f r5, 7(vr2)
000378  7e0004e0  vmmov mr0, r8
00037c  1f048000  addli r8, zero, 64
000380  7a938440  vextracti.f r6, 8(vr9)
000384  ea213230  vor.u.mh vr3{mr0}, r4, vr3
000388  0f827218  div.f.rn r4, r5, r7
00038c  fa128140  vextracti.f r5, 8(vr2)
000390  7e0004e0  vmmov mr0, r8
000394  1f040001  addli r8, zero, 128
000398  fa939440  vextracti.f r7, 9(vr9)
00039c  ea213130  vor.u.mh vr3{mr0}, r2, vr3
0003a0  0f816218  div.f.rn r2, r5, r6
0003a4  fa129140  vextracti.f r5, 9(vr2)
0003a8  7e0004e0  vmmov mr0, r8
0003ac  1f040002  addli r8, zero, 256
0003b0  7a93a440  vextracti.f r6, 10(vr9)
0003b4  ea213230  vor.u.mh vr3{mr0}, r4, vr3
0003b8  0f827218  div.f.rn r4, r5, r7
0003bc  fa12a140  vextracti.f r5, 10(vr2)
0003c0  7e0004e0  vmmov mr0, r8
0003c4  1f040004  addli r8, zero, 512
0003c8  fa93b440  vextracti.f r7, 11(vr9)
0003cc  ea213130  vor.u.mh vr3{mr0}, r2, vr3
0003d0  0f816218  div.f.rn r2, r5, r6
0003d4  fa12b140  vextracti.f r5, 11(vr2)
0003d8  7e0004e0  vmmov mr0, r8
0003dc  1f040008  addli r8, zero, 1024
0003e0  7a93c440  vextracti.f r6, 12(vr9)
0003e4  ea213230  vor.u.mh vr3{mr0}, r4, vr3
0003e8  0f827218  div.f.rn r4, r5, r7
0003ec  fa12c140  vextracti.f r5, 12(vr2)
0003f0  7e0004e0  vmmov mr0, r8
0003f4  1f040010  addli r8, zero, 2048
0003f8  fa93d440  vextracti.f r7, 13(vr9)
0003fc  ea213130  vor.u.mh vr3{mr0}, r2, vr3
000400  0f816218  div.f.rn r2, r5, r6
000404  fa12d140  vextracti.f r5, 13(vr2)
000408  7e0004e0  vmmov mr0, r8
00040c  1f040020  addli r8, zero, 4096
000410  7a93e440  vextracti.f r6, 14(vr9)
000414  8f827218  div.f.rn r5, r5, r7
000418  fa13e140  vextracti.f r7, 14(vr2)
00041c  ea213230  vor.u.mh vr3{mr0}, r4, vr3
000420  7e0004e0  vmmov mr0, r8
000424  1f040040  addli r8, zero, 8192
000428  7a12f140  vextracti.f r4, 15(vr2)
00042c  0f836318  div.f.rn r6, r7, r6
000430  7e0104e0  vmmov mr2, r8
000434  fa130040  vextracti.f r7, 0(vr0)
000438  2b440000  lui r8, 4
00043c  8f013218  div.f.rn r3, r4, r3
000440  7a921040  vextracti.f r4, 1(vr1)
000444  ea213130  vor.u.mh vr3{mr0}, r2, vr3
000448  7a111040  vextracti.f r2, 1(vr0)
00044c  7e0004e0  vmmov mr0, r8
000450  0f012218  div.f.rn r2, r4, r2
000454  2b820000  lui r4, 8
000458  eaa13234  vor.u.mh vr3{mr2}, r5, vr3
00045c  fa920040  vextracti.f r5, 0(vr1)
000460  fe0102e0  vmmov mr3, r4
000464  7a123040  vextracti.f r4, 3(vr0)
000468  8f827218  div.f.rn r5, r5, r7
00046c  9f130000  addli r7, zero, 1
000470  ea213330  vor.u.mh vr3{mr0}, r6, vr3
000474  7a132040  vextracti.f r6, 2(vr0)
000478  7e8103e0  vmmov mr2, r7
00047c  9f230000  addli r7, zero, 2
000480  eaa13136  vor.u.mh vr3{mr3}, r3, vr3
000484  fa912040  vextracti.f r3, 2(vr1)
000488  6aa24234  vor.u.mh vr4{mr2}, r5, vr4
00048c  fa923040  vextracti.f r5, 3(vr1)
000490  7e8103e0  vmmov mr2, r7
000494  9f430000  addli r7, zero, 4
000498  8f816118  div.f.rn r3, r3, r6
00049c  7a134040  vextracti.f r6, 4(vr0)
0004a0  96953302  vadd.f.mz.rn vr11{mr1}, vr7, vr3
0004a4  6a224134  vor.u.mh vr4{mr2}, r2, vr4
0004a8  0f814218  div.f.rn r2, r5, r4
0004ac  7a924040  vextracti.f r4, 4(vr1)
0004b0  7e8103e0  vmmov mr2, r7
0004b4  9f031000  addli r7, zero, 8
0004b8  fa125040  vextracti.f r5, 5(vr0)
0004bc  9e92b202  vsub.f.mz.rn vr5{mr1}, vr5, vr11
0004c0  6aa24134  vor.u.mh vr4{mr2}, r3, vr4
0004c4  8f016218  div.f.rn r3, r4, r6
0004c8  7a925040  vextracti.f r4, 5(vr1)
0004cc  7e8103e0  vmmov mr2, r7
0004d0  9f032000  addli r7, zero, 16
0004d4  7a136040  vextracti.f r6, 6(vr0)
0004d8  6a224134  vor.u.mh vr4{mr2}, r2, vr4
0004dc  0f015218  div.f.rn r2, r4, r5
0004e0  7a926040  vextracti.f r4, 6(vr1)
0004e4  7e8103e0  vmmov mr2, r7
0004e8  9f034000  addli r7, zero, 32
0004ec  fa127040  vextracti.f r5, 7(vr0)
0004f0  6aa24134  vor.u.mh vr4{mr2}, r3, vr4
0004f4  8f016218  div.f.rn r3, r4, r6
0004f8  7a927040  vextracti.f r4, 7(vr1)
0004fc  7e8103e0  vmmov mr2, r7
000500  9f038000  addli r7, zero, 64
000504  7a138040  vextracti.f r6, 8(vr0)
000508  6a224134  vor.u.mh vr4{mr2}, r2, vr4
00050c  0f015218  div.f.rn r2, r4, r5
000510  7a928040  vextracti.f r4, 8(vr1)
000514  7e8103e0  vmmov mr2, r7
000518  9f030001  addli r7, zero, 128
00051c  fa129040  vextracti.f r5, 9(vr0)
000520  6aa24134  vor.u.mh vr4{mr2}, r3, vr4
000524  8f016218  div.f.rn r3, r4, r6
000528  7a929040  vextracti.f r4, 9(vr1)
00052c  7e8103e0  vmmov mr2, r7
000530  9f030002  addli r7, zero, 256
000534  7a13a040  vextracti.f r6, 10(vr0)
000538  6a224134  vor.u.mh vr4{mr2}, r2, vr4
00053c  0f015218  div.f.rn r2, r4, r5
000540  7a92a040  vextracti.f r4, 10(vr1)
000544  7e8103e0  vmmov mr2, r7
000548  9f030004  addli r7, zero, 512
00054c  fa12b040  vextracti.f r5, 11(vr0)
000550  6aa24134  vor.u.mh vr4{mr2}, r3, vr4
000554  8f016218  div.f.rn r3, r4, r6
000558  7a92b040  vextracti.f r4, 11(vr1)
00055c  7e8103e0  vmmov mr2, r7
000560  9f030008  addli r7, zero, 1024
000564  7a13c040  vextracti.f r6, 12(vr0)
000568  6a224134  vor.u.mh vr4{mr2}, r2, vr4
00056c  0f015218  div.f.rn r2, r4, r5
000570  7a92c040  vextracti.f r4, 12(vr1)
000574  7e8103e0  vmmov mr2, r7
000578  9f030010  addli r7, zero, 2048
00057c  fa12d040  vextracti.f r5, 13(vr0)
000580  6aa24134  vor.u.mh vr4{mr2}, r3, vr4
000584  8f016218  div.f.rn r3, r4, r6
000588  7a92d040  vextracti.f r4, 13(vr1)
00058c  7e8103e0  vmmov mr2, r7
000590  9f030020  addli r7, zero, 4096
000594  7a13e040  vextracti.f r6, 14(vr0)
000598  6a224134  vor.u.mh vr4{mr2}, r2, vr4
00059c  0f015218  div.f.rn r2, r4, r5
0005a0  7a92e040  vextracti.f r4, 14(vr1)
0005a4  7e8103e0  vmmov mr2, r7
0005a8  fa12f040  vextracti.f r5, 15(vr0)
0005ac  6aa24134  vor.u.mh vr4{mr2}, r3, vr4
0005b0  8f016218  div.f.rn r3, r4, r6
0005b4  1f030040  addli r6, zero, 8192
0005b8  7a92f040  vextracti.f r4, 15(vr1)
0005bc  7e0103e0  vmmov mr2, r6
0005c0  6a224134  vor.u.mh vr4{mr2}, r2, vr4
0005c4  0f015218  div.f.rn r2, r4, r5
0005c8  6aa24130  vor.u.mh vr4{mr0}, r3, vr4
0005cc  6a224136  vor.u.mh vr4{mr3}, r2, vr4
0005d0  1f018fe6  addli r2, r30, -3264
0005d4  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
0005d8  1f010fe6  addli r2, r30, -3328
0005dc  a6115102  vmac.f.mz.rn vr3{mr1}, vr2, vr5
0005e0  9232b002  vadd.s.mz vr5{mr1}, zero, vr11
0005e4  16124402  vadd.f.mz.rn vr4{mr1}, vr8, vr4
0005e8  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
0005ec  1f010fe3  addli r2, r30, -3712
0005f0  c2150102  vload_mask16.mz vr11{mr1}, 0(r2)
0005f4  1f018fe2  addli r2, r30, -3776
0005f8  1e154502  vsub.f.mz.rn vr10{mr1}, vr10, vr4
0005fc  2691a002  vmac.f.mz.rn vr2{mr1}, vr1, vr10
000600  12354002  vadd.s.mz vr10{mr1}, zero, vr4
000604  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
000608  2bf10000  lui r2, 15
00060c  1f0e0004  addli r28, zero, 512
000610  9f800001  addli r1, r1, 128
000614  1f030ff0  addli r6, r30, -2048
000618  9f030fec  addli r7, r30, -2560
00061c  9f0b0fe8  addli r23, r30, -3072
000620  1f040ff4  addli r8, r30, -1536
000624  9f040ff8  addli r9, r30, -1024
000628  1f71f11f  addli r2, r2, 4095
00062c  7e0001e0  vmmov mr0, r2
000630  1f018fe6  addli r2, r30, -3264
000634  ee135230  vor.f.mh vr7{mr0}, vr4, vr5
000638  6e14a230  vor.f.mh vr8{mr0}, vr4, vr10
00063c  6e139230  vor.f.mh vr6{mr0}, vr4, vr9
000640  c2120102  vload_mask16.mz vr5{mr1}, 0(r2)
000644  1f010fe6  addli r2, r30, -3328
000648  ee123230  vor.f.mh vr5{mr0}, vr4, vr3
00064c  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
000650  1f010fe7  addli r2, r30, -3200
000654  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
000658  6341ffe4  loadli.w r2,  -3460(r30)
00065c  46107102  vstore_mask16.mz vr7{mr1}, 0(r2)
000660  46148102  vstore_mask16.mz vr8{mr1}, 64(r2)
000664  00a00000  mfence { lm }
000668  ee112230  vor.f.mh vr3{mr0}, vr4, vr2
00066c  63010fe5  loadli.w r2,  -3456(r30)
000670  ee100230  vor.f.mh vr1{mr0}, vr4, vr0
000674  46105102  vstore_mask16.mz vr5{mr1}, 0(r2)
000678  46143102  vstore_mask16.mz vr3{mr1}, 64(r2)
00067c  00a00000  mfence { lm }
000680  63018fe5  loadli.w r2,  -3392(r30)
000684  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
000688  46141102  vstore_mask16.mz vr1{mr1}, 64(r2)
00068c  1f110000  addli r2, zero, 1
000690  00a00000  mfence { lm }
000694  7e0101e0  vmmov mr2, r2
000698  b7bdc0fd  beq r1, r28, -1172
00069c  0b911b10  add.s r2, r23, r1
0006a0  8b911310  add.s r3, r7, r1
0006a4  1231b002  vadd.s.mz vr2{mr1}, zero, vr11
0006a8  9231b002  vadd.s.mz vr3{mr1}, zero, vr11
0006ac  670c2fe4  storeli.w r2, -3392(r30)
0006b0  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
0006b4  42108102  vload_mask16.mz vr0{mr1}, 64(r2)
0006b8  1f010fe7  addli r2, r30, -3200
0006bc  67083fe4  storeli.w r3, -3456(r30)
0006c0  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0006c4  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
0006c8  1f018fe6  addli r2, r30, -3264
0006cc  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0006d0  0b111310  add.s r2, r6, r1
0006d4  42908102  vload_mask16.mz vr0{mr1}, 64(r3)
0006d8  9f010fe6  addli r3, r30, -3328
0006dc  e7472fe4  storeli.w r2, -3460(r30)
0006e0  c2130102  vload_mask16.mz vr7{mr1}, 0(r2)
0006e4  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
0006e8  8b111410  add.s r3, r8, r1
0006ec  42148102  vload_mask16.mz vr8{mr1}, 64(r2)
0006f0  00a00000  mfence { lm }
0006f4  6301dfe3  loadli.w r2,  -3608(r30)
0006f8  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
0006fc  8b911410  add.s r3, r9, r1
000700  e3870100  loadli.w r15,  0(r3)
000704  0b121110  add.s r4, r2, r1
000708  6341cfe3  loadli.w r2,  -3612(r30)
00070c  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
000710  0b171110  add.s r14, r2, r1
000714  e3444700  loadli.w r9,  36(r14)
000718  634887ff  loadli.w r16,  -60(r14)
00071c  e30897ff  loadli.w r17,  -56(r14)
000720  634997ff  loadli.w r18,  -52(r14)
000724  e309a7ff  loadli.w r19,  -48(r14)
000728  634aa7ff  loadli.w r20,  -44(r14)
00072c  e30ab7ff  loadli.w r21,  -40(r14)
000730  634bb7ff  loadli.w r22,  -36(r14)
000734  e30bc7ff  loadli.w r23,  -32(r14)
000738  634cc7ff  loadli.w r24,  -28(r14)
00073c  e30cd7ff  loadli.w r25,  -24(r14)
000740  634dd7ff  loadli.w r26,  -20(r14)
000744  e30de7ff  loadli.w r27,  -16(r14)
000748  634ee7ff  loadli.w r28,  -12(r14)
00074c  6306f7ff  loadli.w r12,  -8(r14)
000750  6341f7ff  loadli.w r2,  -4(r14)
000754  e3060700  loadli.w r13,  0(r14)
000758  e3450700  loadli.w r11,  4(r14)
00075c  e3011700  loadli.w r3,  8(r14)
000760  63421700  loadli.w r4,  12(r14)
000764  e3022700  loadli.w r5,  16(r14)
000768  63432700  loadli.w r6,  20(r14)
00076c  e3033700  loadli.w r7,  24(r14)
000770  63443700  loadli.w r8,  28(r14)
000774  63054700  loadli.w r10,  32(r14)
000778  67469fe4  storeli.w r9, -3484(r30)
00077c  e3045700  loadli.w r9,  40(r14)
000780  e7069fe4  storeli.w r9, -3480(r30)
000784  e3445700  loadli.w r9,  44(r14)
000788  e7469fe4  storeli.w r9, -3476(r30)
00078c  e3046700  loadli.w r9,  48(r14)
000790  67079fe4  storeli.w r9, -3472(r30)
000794  e3446700  loadli.w r9,  52(r14)
000798  67479fe4  storeli.w r9, -3468(r30)
00079c  e3047700  loadli.w r9,  56(r14)
0007a0  63477700  loadli.w r14,  60(r14)
0007a4  e7079fe4  storeli.w r9, -3464(r30)
0007a8  6aa12734  vor.u.mh vr2{mr2}, r15, vr2
0007ac  9f240000  addli r9, zero, 2
0007b0  fe8104e0  vmmov mr3, r9
0007b4  9f440000  addli r9, zero, 4
0007b8  6a212836  vor.u.mh vr2{mr3}, r16, vr2
0007bc  7e8004e0  vmmov mr0, r9
0007c0  9f041000  addli r9, zero, 8
0007c4  6aa12830  vor.u.mh vr2{mr0}, r17, vr2
0007c8  7e0001c0  vmmov mr0, mr2
0007cc  7e8104e0  vmmov mr2, r9
0007d0  9f042000  addli r9, zero, 16
0007d4  fe8104e0  vmmov mr3, r9
0007d8  9f044000  addli r9, zero, 32
0007dc  6a212934  vor.u.mh vr2{mr2}, r18, vr2
0007e0  6aa12936  vor.u.mh vr2{mr3}, r19, vr2
0007e4  fe8104e0  vmmov mr3, r9
0007e8  9f048000  addli r9, zero, 64
0007ec  6a212a36  vor.u.mh vr2{mr3}, r20, vr2
0007f0  fe8104e0  vmmov mr3, r9
0007f4  9f040001  addli r9, zero, 128
0007f8  6aa12a36  vor.u.mh vr2{mr3}, r21, vr2
0007fc  fe8104e0  vmmov mr3, r9
000800  9f040002  addli r9, zero, 256
000804  6a212b36  vor.u.mh vr2{mr3}, r22, vr2
000808  fe8104e0  vmmov mr3, r9
00080c  9f040004  addli r9, zero, 512
000810  6aa12b36  vor.u.mh vr2{mr3}, r23, vr2
000814  fe8104e0  vmmov mr3, r9
000818  9f040008  addli r9, zero, 1024
00081c  6a212c36  vor.u.mh vr2{mr3}, r24, vr2
000820  fe8104e0  vmmov mr3, r9
000824  9f040010  addli r9, zero, 2048
000828  6aa12c36  vor.u.mh vr2{mr3}, r25, vr2
00082c  fe8104e0  vmmov mr3, r9
000830  9f040020  addli r9, zero, 4096
000834  6a212d36  vor.u.mh vr2{mr3}, r26, vr2
000838  fe8104e0  vmmov mr3, r9
00083c  9f040040  addli r9, zero, 8192
000840  7e8104e0  vmmov mr2, r9
000844  ab440000  lui r9, 4
000848  6aa12d36  vor.u.mh vr2{mr3}, r27, vr2
00084c  fe8104e0  vmmov mr3, r9
000850  ab840000  lui r9, 8
000854  6a212e34  vor.u.mh vr2{mr2}, r28, vr2
000858  6a212636  vor.u.mh vr2{mr3}, r12, vr2
00085c  fe8104e0  vmmov mr3, r9
000860  6a212136  vor.u.mh vr2{mr3}, r2, vr2
000864  eaa13630  vor.u.mh vr3{mr0}, r13, vr3
000868  1f210000  addli r2, zero, 2
00086c  7e0001e0  vmmov mr0, r2
000870  1f410000  addli r2, zero, 4
000874  eaa13530  vor.u.mh vr3{mr0}, r11, vr3
000878  7e0001e0  vmmov mr0, r2
00087c  1f011000  addli r2, zero, 8
000880  96122002  vadd.f.mz.rn vr5{mr1}, vr0, vr2
000884  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
000888  7e0001e0  vmmov mr0, r2
00088c  1f012000  addli r2, zero, 16
000890  9f010004  addli r3, zero, 512
000894  ea213230  vor.u.mh vr3{mr0}, r4, vr3
000898  7e0001e0  vmmov mr0, r2
00089c  1f014000  addli r2, zero, 32
0008a0  eaa13230  vor.u.mh vr3{mr0}, r5, vr3
0008a4  7e0001e0  vmmov mr0, r2
0008a8  1f018000  addli r2, zero, 64
0008ac  ea213330  vor.u.mh vr3{mr0}, r6, vr3
0008b0  7e0001e0  vmmov mr0, r2
0008b4  1f010001  addli r2, zero, 128
0008b8  eaa13330  vor.u.mh vr3{mr0}, r7, vr3
0008bc  7e0001e0  vmmov mr0, r2
0008c0  1f010002  addli r2, zero, 256
0008c4  ea213430  vor.u.mh vr3{mr0}, r8, vr3
0008c8  7e0001e0  vmmov mr0, r2
0008cc  ea213530  vor.u.mh vr3{mr0}, r10, vr3
0008d0  6341cfe4  loadli.w r2,  -3484(r30)
0008d4  7e8001e0  vmmov mr0, r3
0008d8  9f010008  addli r3, zero, 1024
0008dc  ea213130  vor.u.mh vr3{mr0}, r2, vr3
0008e0  6301dfe4  loadli.w r2,  -3480(r30)
0008e4  7e8001e0  vmmov mr0, r3
0008e8  9f010010  addli r3, zero, 2048
0008ec  ea213130  vor.u.mh vr3{mr0}, r2, vr3
0008f0  6341dfe4  loadli.w r2,  -3476(r30)
0008f4  7e8001e0  vmmov mr0, r3
0008f8  9f010020  addli r3, zero, 4096
0008fc  ea213130  vor.u.mh vr3{mr0}, r2, vr3
000900  6301efe4  loadli.w r2,  -3472(r30)
000904  7e8001e0  vmmov mr0, r3
000908  ab410000  lui r3, 4
00090c  ea213130  vor.u.mh vr3{mr0}, r2, vr3
000910  6341efe4  loadli.w r2,  -3468(r30)
000914  7e8001e0  vmmov mr0, r3
000918  ea213134  vor.u.mh vr3{mr2}, r2, vr3
00091c  6301ffe4  loadli.w r2,  -3464(r30)
000920  ea213130  vor.u.mh vr3{mr0}, r2, vr3
000924  ea213736  vor.u.mh vr3{mr3}, r14, vr3
000928  6301cfe4  loadli.w r2,  -3488(r30)
00092c  16953002  vadd.f.mz.rn vr10{mr1}, vr1, vr3
000930  3b1601fc  bneq r2, zero, -1660
000934  1f010fe2  addli r2, r30, -3840
000938  9231b002  vadd.s.mz vr3{mr1}, zero, vr11
00093c  1231b002  vadd.s.mz vr2{mr1}, zero, vr11
000940  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
000944  92340002  vadd.s.mz vr9{mr1}, zero, vr0
000948  5b98ffff  j -832
00094c  9f000fe8  addli r1, r30, -3072
000950  1f810301  addli r2, r7, 128
000954  9f010000  addli r3, zero, 0
000958  1f090003  addli r18, zero, 384
00095c  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000960  9f008fe8  addli r1, r30, -3008
000964  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000968  9f000fec  addli r1, r30, -2560
00096c  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000970  9f000ff0  addli r1, r30, -2048
000974  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
000978  9f008fec  addli r1, r30, -2496
00097c  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000980  9f008ff0  addli r1, r30, -1984
000984  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000988  9f008301  addli r1, r6, 192
00098c  00a00000  mfence { lm }
000990  1f020fe6  addli r4, r30, -3328
000994  12328002  vadd.s.mz vr4{mr1}, zero, vr8
000998  8b123110  add.s r5, r2, r3
00099c  9230b002  vadd.s.mz vr1{mr1}, zero, vr11
0009a0  0b933b10  add.s r6, r23, r3
0009a4  1f170000  addli r14, zero, 1
0009a8  9f072000  addli r15, zero, 16
0009ac  1f084000  addli r16, zero, 32
0009b0  9f088000  addli r17, zero, 64
0009b4  9f090001  addli r19, zero, 128
0009b8  92335002  vadd.s.mz vr7{mr1}, zero, vr5
0009bc  46103202  vstore_mask16.mz vr3{mr1}, 0(r4)
0009c0  1f028fe5  addli r4, r30, -3392
0009c4  7e0107e0  vmmov mr2, r14
0009c8  1f470000  addli r14, zero, 4
0009cc  46109202  vstore_mask16.mz vr9{mr1}, 0(r4)
0009d0  1f020fe5  addli r4, r30, -3456
0009d4  46104202  vstore_mask16.mz vr4{mr1}, 0(r4)
0009d8  0b923010  add.s r4, r1, r3
0009dc  9f810101  addli r3, r3, 128
0009e0  c21582e3  vload_mask16.mz vr11{mr1}, 1984(r4)
0009e4  42930202  vload_mask16.mz vr6{mr1}, 0(r5)
0009e8  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
0009ec  1f020fe7  addli r4, r30, -3200
0009f0  46106202  vstore_mask16.mz vr6{mr1}, 0(r4)
0009f4  1f028fe6  addli r4, r30, -3264
0009f8  1e10a002  vsub.f.mz.rn vr0{mr1}, vr0, vr10
0009fc  42130303  vload_mask16.mz vr6{mr1}, 128(r6)
000a00  42948202  vload_mask16.mz vr8{mr1}, 64(r5)
000a04  96946402  vadd.f.mz.rn vr9{mr1}, vr9, vr6
000a08  7a140340  vextracti.f r8, 0(vr6)
000a0c  7a151340  vextracti.f r10, 1(vr6)
000a10  7a162340  vextracti.f r12, 2(vr6)
000a14  46108202  vstore_mask16.mz vr8{mr1}, 0(r4)
000a18  fa163340  vextracti.f r13, 3(vr6)
000a1c  fa13c340  vextracti.f r7, 12(vr6)
000a20  fa12e340  vextracti.f r5, 14(vr6)
000a24  7a12f340  vextracti.f r4, 15(vr6)
000a28  c2118303  vload_mask16.mz vr3{mr1}, 192(r6)
000a2c  7a13d340  vextracti.f r6, 13(vr6)
000a30  fa940440  vextracti.f r9, 0(vr9)
000a34  fa951440  vextracti.f r11, 1(vr9)
000a38  8f049418  div.f.rn r9, r8, r9
000a3c  0f05b518  div.f.rn r10, r10, r11
000a40  fa952440  vextracti.f r11, 2(vr9)
000a44  7a14b340  vextracti.f r8, 11(vr6)
000a48  16143202  vadd.f.mz.rn vr8{mr1}, vr4, vr3
000a4c  7a1c0440  vextracti.f r24, 0(vr8)
000a50  fa1ca440  vextracti.f r25, 10(vr8)
000a54  fa1db440  vextracti.f r27, 11(vr8)
000a58  7a1bc440  vextracti.f r22, 12(vr8)
000a5c  7a1dd440  vextracti.f r26, 13(vr8)
000a60  eaa01434  vor.u.mh vr1{mr2}, r9, vr1
000a64  8f04b618  div.f.rn r9, r12, r11
000a68  7e0100c0  vmmov mr2, mr0
000a6c  7e0007e0  vmmov mr0, r14
000a70  1f270000  addli r14, zero, 2
000a74  fa953440  vextracti.f r11, 3(vr9)
000a78  7a164340  vextracti.f r12, 4(vr6)
000a7c  fe0107e0  vmmov mr3, r14
000a80  1f072000  addli r14, zero, 16
000a84  ea201536  vor.u.mh vr1{mr3}, r10, vr1
000a88  0f85b618  div.f.rn r10, r13, r11
000a8c  fa954440  vextracti.f r11, 4(vr9)
000a90  fa165340  vextracti.f r13, 5(vr6)
000a94  fe0107e0  vmmov mr3, r14
000a98  1f074000  addli r14, zero, 32
000a9c  eaa01430  vor.u.mh vr1{mr0}, r9, vr1
000aa0  8f04b618  div.f.rn r9, r12, r11
000aa4  fa955440  vextracti.f r11, 5(vr9)
000aa8  7a166340  vextracti.f r12, 6(vr6)
000aac  ea201534  vor.u.mh vr1{mr2}, r10, vr1
000ab0  0f85b618  div.f.rn r10, r13, r11
000ab4  fa956440  vextracti.f r11, 6(vr9)
000ab8  fa167340  vextracti.f r13, 7(vr6)
000abc  eaa01436  vor.u.mh vr1{mr3}, r9, vr1
000ac0  8f04b618  div.f.rn r9, r12, r11
000ac4  fa957440  vextracti.f r11, 7(vr9)
000ac8  fe0107e0  vmmov mr3, r14
000acc  1f078000  addli r14, zero, 64
000ad0  7a168340  vextracti.f r12, 8(vr6)
000ad4  ea201536  vor.u.mh vr1{mr3}, r10, vr1
000ad8  0f85b618  div.f.rn r10, r13, r11
000adc  fa958440  vextracti.f r11, 8(vr9)
000ae0  fe0107e0  vmmov mr3, r14
000ae4  fa169340  vextracti.f r13, 9(vr6)
000ae8  7a17a340  vextracti.f r14, 10(vr6)
000aec  8f05b618  div.f.rn r11, r12, r11
000af0  1f060001  addli r12, zero, 128
000af4  eaa01436  vor.u.mh vr1{mr3}, r9, vr1
000af8  fa949440  vextracti.f r9, 9(vr9)
000afc  fe0106e0  vmmov mr3, r12
000b00  7a96f140  vextracti.f r12, 15(vr3)
000b04  8f849618  div.f.rn r9, r13, r9
000b08  9f060002  addli r13, zero, 256
000b0c  ea201536  vor.u.mh vr1{mr3}, r10, vr1
000b10  7a95a440  vextracti.f r10, 10(vr9)
000b14  fe8106e0  vmmov mr3, r13
000b18  fa963140  vextracti.f r13, 3(vr3)
000b1c  0f05a718  div.f.rn r10, r14, r10
000b20  1f070004  addli r14, zero, 512
000b24  eaa01536  vor.u.mh vr1{mr3}, r11, vr1
000b28  fa95b440  vextracti.f r11, 11(vr9)
000b2c  fe0107e0  vmmov mr3, r14
000b30  1f070008  addli r14, zero, 1024
000b34  0f04b418  div.f.rn r8, r8, r11
000b38  fa951140  vextracti.f r11, 1(vr3)
000b3c  eaa01436  vor.u.mh vr1{mr3}, r9, vr1
000b40  fa94c440  vextracti.f r9, 12(vr9)
000b44  fe0107e0  vmmov mr3, r14
000b48  1f070010  addli r14, zero, 2048
000b4c  8f839318  div.f.rn r7, r7, r9
000b50  fa94d440  vextracti.f r9, 13(vr9)
000b54  ea201536  vor.u.mh vr1{mr3}, r10, vr1
000b58  fe0107e0  vmmov mr3, r14
000b5c  7a950140  vextracti.f r10, 0(vr3)
000b60  7a977140  vextracti.f r14, 7(vr3)
000b64  0f039318  div.f.rn r6, r6, r9
000b68  9f040020  addli r9, zero, 4096
000b6c  ea201436  vor.u.mh vr1{mr3}, r8, vr1
000b70  7a94e440  vextracti.f r8, 14(vr9)
000b74  fe8104e0  vmmov mr3, r9
000b78  8f828218  div.f.rn r5, r5, r8
000b7c  1f040040  addli r8, zero, 8192
000b80  eaa01336  vor.u.mh vr1{mr3}, r7, vr1
000b84  fa93f440  vextracti.f r7, 15(vr9)
000b88  fe0104e0  vmmov mr3, r8
000b8c  2b440000  lui r8, 4
000b90  ea201336  vor.u.mh vr1{mr3}, r6, vr1
000b94  0f037218  div.f.rn r6, r4, r7
000b98  fe0104e0  vmmov mr3, r8
000b9c  8f038519  div.f.rn r7, r10, r24
000ba0  2b850000  lui r10, 8
000ba4  7a121440  vextracti.f r4, 1(vr8)
000ba8  7a942140  vextracti.f r8, 2(vr3)
000bac  8f844518  div.f.rn r9, r11, r4
000bb0  fa955140  vextracti.f r11, 5(vr3)
000bb4  eaa01236  vor.u.mh vr1{mr3}, r5, vr1
000bb8  fe0105e0  vmmov mr3, r10
000bbc  fa122440  vextracti.f r5, 2(vr8)
000bc0  7a954140  vextracti.f r10, 4(vr3)
000bc4  ea201336  vor.u.mh vr1{mr3}, r6, vr1
000bc8  1f030fe3  addli r6, r30, -3712
000bcc  42130302  vload_mask16.mz vr6{mr1}, 0(r6)
000bd0  1f130000  addli r6, zero, 1
000bd4  fe0103e0  vmmov mr3, r6
000bd8  0f035418  div.f.rn r6, r8, r5
000bdc  1f240000  addli r8, zero, 2
000be0  6aa36336  vor.u.mh vr6{mr3}, r7, vr6
000be4  fa133440  vextracti.f r7, 3(vr8)
000be8  fe0104e0  vmmov mr3, r8
000bec  7a144440  vextracti.f r8, 4(vr8)
000bf0  6aa36436  vor.u.mh vr6{mr3}, r9, vr6
000bf4  8f847618  div.f.rn r9, r13, r7
000bf8  fe0100c0  vmmov mr3, mr0
000bfc  7e0001c0  vmmov mr0, mr2
000c00  fa966140  vextracti.f r13, 6(vr3)
000c04  7e8107e0  vmmov mr2, r15
000c08  fa978140  vextracti.f r15, 8(vr3)
000c0c  6a236336  vor.u.mh vr6{mr3}, r6, vr6
000c10  0f038518  div.f.rn r6, r10, r8
000c14  7a155440  vextracti.f r10, 5(vr8)
000c18  6aa36430  vor.u.mh vr6{mr0}, r9, vr6
000c1c  8f84a518  div.f.rn r9, r11, r10
000c20  fa156440  vextracti.f r11, 6(vr8)
000c24  6a236334  vor.u.mh vr6{mr2}, r6, vr6
000c28  0f83b618  div.f.rn r6, r13, r11
000c2c  fa167440  vextracti.f r13, 7(vr8)
000c30  7e0108e0  vmmov mr2, r16
000c34  7a989140  vextracti.f r16, 9(vr3)
000c38  0f07d718  div.f.rn r14, r14, r13
000c3c  6aa36434  vor.u.mh vr6{mr2}, r9, vr6
000c40  fa148440  vextracti.f r9, 8(vr8)
000c44  7e8108e0  vmmov mr2, r17
000c48  fa98a140  vextracti.f r17, 10(vr3)
000c4c  8f879718  div.f.rn r15, r15, r9
000c50  6a236334  vor.u.mh vr6{mr2}, r6, vr6
000c54  7a139440  vextracti.f r6, 9(vr8)
000c58  7e8109e0  vmmov mr2, r19
000c5c  9f090002  addli r19, zero, 256
000c60  6a236734  vor.u.mh vr6{mr2}, r14, vr6
000c64  0f076818  div.f.rn r14, r16, r6
000c68  7e8109e0  vmmov mr2, r19
000c6c  9f090004  addli r19, zero, 512
000c70  7a98b140  vextracti.f r16, 11(vr3)
000c74  6aa36734  vor.u.mh vr6{mr2}, r15, vr6
000c78  8f879819  div.f.rn r15, r17, r25
000c7c  7e8109e0  vmmov mr2, r19
000c80  9f090008  addli r19, zero, 1024
000c84  fa98c140  vextracti.f r17, 12(vr3)
000c88  6a236734  vor.u.mh vr6{mr2}, r14, vr6
000c8c  0f07b819  div.f.rn r14, r16, r27
000c90  7e8109e0  vmmov mr2, r19
000c94  9f090010  addli r19, zero, 2048
000c98  7a98d140  vextracti.f r16, 13(vr3)
000c9c  0f08a819  div.f.rn r16, r16, r26
000ca0  6aa36734  vor.u.mh vr6{mr2}, r15, vr6
000ca4  8f876819  div.f.rn r15, r17, r22
000ca8  7e8109e0  vmmov mr2, r19
000cac  9f090020  addli r19, zero, 4096
000cb0  fa98e140  vextracti.f r17, 14(vr3)
000cb4  9e915502  vsub.f.mz.rn vr3{mr1}, vr11, vr5
000cb8  9232a002  vadd.s.mz vr5{mr1}, zero, vr10
000cbc  12352002  vadd.s.mz vr10{mr1}, zero, vr2
000cc0  0e110002  vmul.f.mz.rn vr2{mr1}, vr0, vr0
000cc4  6a236734  vor.u.mh vr6{mr2}, r14, vr6
000cc8  7e8109e0  vmmov mr2, r19
000ccc  9f090040  addli r19, zero, 8192
000cd0  8e953102  vmul.f.mz.rn vr11{mr1}, vr3, vr3
000cd4  7a17e440  vextracti.f r14, 14(vr8)
000cd8  8f88e818  div.f.rn r17, r17, r14
000cdc  6aa36734  vor.u.mh vr6{mr2}, r15, vr6
000ce0  7e8109e0  vmmov mr2, r19
000ce4  fa17f440  vextracti.f r15, 15(vr8)
000ce8  0f06f618  div.f.rn r12, r12, r15
000cec  6a236834  vor.u.mh vr6{mr2}, r16, vr6
000cf0  1f088fe5  addli r16, r30, -3392
000cf4  42120802  vload_mask16.mz vr4{mr1}, 0(r16)
000cf8  0e12b202  vmul.f.mz.rn vr4{mr1}, vr4, vr11
000cfc  46104802  vstore_mask16.mz vr4{mr1}, 0(r16)
000d00  2b480000  lui r16, 4
000d04  7e0108e0  vmmov mr2, r16
000d08  1f080fe5  addli r16, r30, -3456
000d0c  6aa36834  vor.u.mh vr6{mr2}, r17, vr6
000d10  ab880000  lui r17, 8
000d14  42120802  vload_mask16.mz vr4{mr1}, 0(r16)
000d18  1f080fe3  addli r16, r30, -3712
000d1c  0e112202  vmul.f.mz.rn vr2{mr1}, vr4, vr2
000d20  42120802  vload_mask16.mz vr4{mr1}, 0(r16)
000d24  76914402  veq.f.mz mr2{mr1}, vr9, vr4
000d28  7e0801a0  vmmov r16, mr2
000d2c  7e8108e0  vmmov mr2, r17
000d30  6a236634  vor.u.mh vr6{mr2}, r12, vr6
000d34  1f46ffe7  addli r12, r30, -3076
000d38  73100601  store.h r16, 0(r12)
000d3c  1f080fe3  addli r16, r30, -3712
000d40  6346ffe7  loadli.w r12,  -3076(r30)
000d44  42120802  vload_mask16.mz vr4{mr1}, 0(r16)
000d48  76114402  veq.f.mz mr2{mr1}, vr8, vr4
000d4c  7e0801a0  vmmov r16, mr2
000d50  7e0106e0  vmmov mr2, r12
000d54  1f06ffe7  addli r12, r30, -3080
000d58  73100601  store.h r16, 0(r12)
000d5c  2bf80000  lui r16, 15
000d60  6306ffe7  loadli.w r12,  -3080(r30)
000d64  1f78f81f  addli r16, r16, 4095
000d68  fe0108e0  vmmov mr3, r16
000d6c  1f080fe3  addli r16, r30, -3712
000d70  7e013100  vmand mr2, mr2, mr3
000d74  42120802  vload_mask16.mz vr4{mr1}, 0(r16)
000d78  1f088fe2  addli r16, r30, -3776
000d7c  c2150802  vload_mask16.mz vr11{mr1}, 0(r16)
000d80  ee904534  vor.f.mh vr1{mr2}, vr11, vr4
000d84  7e0106e0  vmmov mr2, r12
000d88  1f060fe3  addli r12, r30, -3712
000d8c  7e013100  vmand mr2, mr2, mr3
000d90  42120602  vload_mask16.mz vr4{mr1}, 0(r12)
000d94  1f060fe7  addli r12, r30, -3200
000d98  8e911102  vmul.f.mz.rn vr3{mr1}, vr3, vr1
000d9c  6e934534  vor.f.mh vr6{mr2}, vr11, vr4
000da0  42120602  vload_mask16.mz vr4{mr1}, 0(r12)
000da4  1f060fe6  addli r12, r30, -3328
000da8  c2150602  vload_mask16.mz vr11{mr1}, 0(r12)
000dac  1f068fe6  addli r12, r30, -3264
000db0  0e116102  vmul.f.mz.rn vr2{mr1}, vr2, vr6
000db4  0e106002  vmul.f.mz.rn vr0{mr1}, vr0, vr6
000db8  16924502  vadd.f.mz.rn vr4{mr1}, vr11, vr4
000dbc  c2150602  vload_mask16.mz vr11{mr1}, 0(r12)
000dc0  1f068fe5  addli r12, r30, -3392
000dc4  9615b502  vadd.f.mz.rn vr11{mr1}, vr10, vr11
000dc8  12355002  vadd.s.mz vr10{mr1}, zero, vr5
000dcc  92327002  vadd.s.mz vr5{mr1}, zero, vr7
000dd0  c2130602  vload_mask16.mz vr7{mr1}, 0(r12)
000dd4  1f060fe3  addli r12, r30, -3712
000dd8  16912502  vadd.f.mz.rn vr2{mr1}, vr11, vr2
000ddc  c2150602  vload_mask16.mz vr11{mr1}, 0(r12)
000de0  96923202  vadd.f.mz.rn vr5{mr1}, vr5, vr3
000de4  16150502  vadd.f.mz.rn vr10{mr1}, vr10, vr0
000de8  8e901302  vmul.f.mz.rn vr1{mr1}, vr7, vr1
000dec  96111202  vadd.f.mz.rn vr3{mr1}, vr4, vr1
000df0  bb8e21fd  bneq r3, r18, -1120
000df4  16908402  vadd.f.mz.rn vr0{mr1}, vr9, vr8
000df8  1f060000  addli r12, zero, 0
000dfc  9f000600  addli r1, r12, 0
000e00  7611b002  veq.f.mz mr2{mr1}, vr0, vr11
000e04  fa190040  vextracti.f r19, 0(vr0)
000e08  7e0101a0  vmmov r2, mr2
000e0c  9b011100  andi r3, r2, 1
000e10  3ba00100  bneq r3, zero, 8
000e14  8f003c19  div.f.rn r1, r24, r19
000e18  9b41f100  srli r3, r2, 15
000e1c  7a1af040  vextracti.f r20, 15(vr0)
000e20  1f080600  addli r16, r12, 0
000e24  9b811100  andi r3, r3, 1
000e28  3ba00100  bneq r3, zero, 8
000e2c  0f884719  div.f.rn r16, r15, r20
000e30  9b41e100  srli r3, r2, 14
000e34  1f190000  addli r18, zero, 1
000e38  fa18e040  vextracti.f r17, 14(vr0)
000e3c  9f070600  addli r15, r12, 0
000e40  9b811100  andi r3, r3, 1
000e44  7e0109e0  vmmov mr2, r18
000e48  3ba00100  bneq r3, zero, 8
000e4c  8f071719  div.f.rn r15, r14, r17
000e50  9b41d100  srli r3, r2, 13
000e54  fa1ad040  vextracti.f r21, 13(vr0)
000e58  1f070600  addli r14, r12, 0
000e5c  00a00000  mfence { lm }
000e60  67080fe5  storeli.w r16, -3456(r30)
000e64  9b811100  andi r3, r3, 1
000e68  3ba00100  bneq r3, zero, 8
000e6c  0f075d19  div.f.rn r14, r26, r21
000e70  9b41c100  srli r3, r2, 12
000e74  7a18c040  vextracti.f r16, 12(vr0)
000e78  6747efe4  storeli.w r14, -3468(r30)
000e7c  e707ffe4  storeli.w r15, -3464(r30)
000e80  1b871100  andi r14, r3, 1
000e84  9f010600  addli r3, r12, 0
000e88  3b200700  bneq r14, zero, 8
000e8c  8f010b19  div.f.rn r3, r22, r16
000e90  1b47b100  srli r14, r2, 11
000e94  fa17b040  vextracti.f r15, 11(vr0)
000e98  1f0c0600  addli r24, r12, 0
000e9c  1b071700  andi r14, r14, 1
000ea0  3b200700  bneq r14, zero, 8
000ea4  0f8cfd18  div.f.rn r24, r27, r15
000ea8  1b47a100  srli r14, r2, 10
000eac  7a1da040  vextracti.f r26, 10(vr0)
000eb0  1f0b0600  addli r22, r12, 0
000eb4  670cffe4  storeli.w r15, -3392(r30)
000eb8  1b071700  andi r14, r14, 1
000ebc  3b200700  bneq r14, zero, 8
000ec0  0f8bac19  div.f.rn r22, r25, r26
000ec4  fa179040  vextracti.f r15, 9(vr0)
000ec8  1b479100  srli r14, r2, 9
000ecc  6708ffe6  storeli.w r15, -3200(r30)
000ed0  9b071700  andi r15, r14, 1
000ed4  1f070600  addli r14, r12, 0
000ed8  3bb00700  bneq r15, zero, 12
000edc  63070fe7  loadli.w r14,  -3200(r30)
000ee0  0f07e318  div.f.rn r14, r6, r14
000ee4  fa178040  vextracti.f r15, 8(vr0)
000ee8  1b438100  srli r6, r2, 8
000eec  67000fe7  storeli.w r16, -3328(r30)
000ef0  1b031300  andi r6, r6, 1
000ef4  6704ffe6  storeli.w r15, -3264(r30)
000ef8  9f070600  addli r15, r12, 0
000efc  3b300300  bneq r6, zero, 12
000f00  63038fe6  loadli.w r6,  -3264(r30)
000f04  8f876418  div.f.rn r15, r9, r6
000f08  1b437100  srli r6, r2, 7
000f0c  fa1d7040  vextracti.f r27, 7(vr0)
000f10  1f080600  addli r16, r12, 0
000f14  1b031300  andi r6, r6, 1
000f18  3b200300  bneq r6, zero, 8
000f1c  0f88b619  div.f.rn r16, r13, r27
000f20  9b466100  srli r13, r2, 6
000f24  7a136040  vextracti.f r6, 6(vr0)
000f28  67061fe5  storeli.w r17, -3488(r30)
000f2c  9b881600  andi r17, r13, 1
000f30  9f060600  addli r13, r12, 0
000f34  3ba00800  bneq r17, zero, 8
000f38  8f866518  div.f.rn r13, r11, r6
000f3c  9b485100  srli r17, r2, 5
000f40  fa155040  vextracti.f r11, 5(vr0)
000f44  1b891800  andi r18, r17, 1
000f48  9f080600  addli r17, r12, 0
000f4c  3b200900  bneq r18, zero, 8
000f50  8f08b518  div.f.rn r17, r10, r11
000f54  1b494100  srli r18, r2, 4
000f58  7a154040  vextracti.f r10, 4(vr0)
000f5c  e7476fe4  storeli.w r6, -3460(r30)
000f60  9f8c0900  addli r25, r19, 0
000f64  1f030d00  addli r6, r26, 0
000f68  9b091900  andi r19, r18, 1
000f6c  1f090600  addli r18, r12, 0
000f70  3ba00900  bneq r19, zero, 8
000f74  0f09a418  div.f.rn r18, r8, r10
000f78  9b493100  srli r19, r2, 3
000f7c  7a143040  vextracti.f r8, 3(vr0)
000f80  1f0d0a00  addli r26, r20, 0
000f84  9f840a00  addli r9, r21, 0
000f88  1b8a1900  andi r20, r19, 1
000f8c  9f090600  addli r19, r12, 0
000f90  3b200a00  bneq r20, zero, 8
000f94  8f898318  div.f.rn r19, r7, r8
000f98  1b4a2100  srli r20, r2, 2
000f9c  fa132040  vextracti.f r7, 2(vr0)
000fa0  9b0a1a00  andi r21, r20, 1
000fa4  1f0a0600  addli r20, r12, 0
000fa8  3ba00a00  bneq r21, zero, 8
000fac  0f8a7218  div.f.rn r20, r5, r7
000fb0  9b421100  srli r5, r2, 1
000fb4  7a111040  vextracti.f r2, 1(vr0)
000fb8  9b8a1200  andi r21, r5, 1
000fbc  9f020600  addli r5, r12, 0
000fc0  3ba00a00  bneq r21, zero, 8
000fc4  8f022218  div.f.rn r5, r4, r2
000fc8  1234b002  vadd.s.mz vr8{mr1}, zero, vr11
000fcc  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
000fd0  9f200000  addli r1, zero, 2
000fd4  fe8100e0  vmmov mr3, r1
000fd8  9f400000  addli r1, zero, 4
000fdc  6aa48236  vor.u.mh vr8{mr3}, r5, vr8
000fe0  7e8000e0  vmmov mr0, r1
000fe4  9f001000  addli r1, zero, 8
000fe8  9f020020  addli r5, zero, 4096
000fec  6a248a30  vor.u.mh vr8{mr0}, r20, vr8
000ff0  7e8000e0  vmmov mr0, r1
000ff4  9f002000  addli r1, zero, 16
000ff8  1f8a0c00  addli r20, r25, 0
000ffc  0b622a10  add.f.rn r4, r20, r2
001000  6aa48930  vor.u.mh vr8{mr0}, r19, vr8
001004  7e8000e0  vmmov mr0, r1
001008  9f004000  addli r1, zero, 32
00100c  6a248930  vor.u.mh vr8{mr0}, r18, vr8
001010  7e8000e0  vmmov mr0, r1
001014  9f008000  addli r1, zero, 64
001018  6aa48830  vor.u.mh vr8{mr0}, r17, vr8
00101c  7e8000e0  vmmov mr0, r1
001020  9f000001  addli r1, zero, 128
001024  6aa48630  vor.u.mh vr8{mr0}, r13, vr8
001028  7e8000e0  vmmov mr0, r1
00102c  9f000002  addli r1, zero, 256
001030  9f060040  addli r13, zero, 8192
001034  6a248830  vor.u.mh vr8{mr0}, r16, vr8
001038  7e8000e0  vmmov mr0, r1
00103c  9f000004  addli r1, zero, 512
001040  6aa48730  vor.u.mh vr8{mr0}, r15, vr8
001044  7e8000e0  vmmov mr0, r1
001048  9f000008  addli r1, zero, 1024
00104c  6a248730  vor.u.mh vr8{mr0}, r14, vr8
001050  7e8000e0  vmmov mr0, r1
001054  9f000010  addli r1, zero, 2048
001058  2b470000  lui r14, 4
00105c  6a248b30  vor.u.mh vr8{mr0}, r22, vr8
001060  7e8000e0  vmmov mr0, r1
001064  9b309200  slli r1, r4, 9
001068  93800000  seteq r1, r1, zero
00106c  6a248c30  vor.u.mh vr8{mr0}, r24, vr8
001070  7e8002e0  vmmov mr0, r5
001074  93624606  setle.f r5, r12, r4
001078  1f0c0600  addli r24, r12, 0
00107c  6aa48130  vor.u.mh vr8{mr0}, r3, vr8
001080  7e8006e0  vmmov mr0, r13
001084  e346efe4  loadli.w r13,  -3468(r30)
001088  9b417201  srli r3, r4, 23
00108c  9b81f10f  andi r3, r3, 255
001090  6aa48630  vor.u.mh vr8{mr0}, r13, vr8
001094  9366c206  setle.f r13, r4, r12
001098  7e0007e0  vmmov mr0, r14
00109c  6307ffe4  loadli.w r14,  -3464(r30)
0010a0  9bf1f10f  setlti r3, r3, 255
0010a4  97901100  or r1, r3, r1
0010a8  6a248730  vor.u.mh vr8{mr0}, r14, vr8
0010ac  97815600  and r3, r13, r5
0010b0  ab820000  lui r5, 8
0010b4  7e8002e0  vmmov mr0, r5
0010b8  e3020fe5  loadli.w r5,  -3456(r30)
0010bc  97801100  and r1, r3, r1
0010c0  6aa48230  vor.u.mh vr8{mr0}, r5, vr8
0010c4  3ba00000  bneq r1, zero, 8
0010c8  0f0c4118  div.f.rn r24, r2, r4
0010cc  8be64310  add.f.rn r13, r7, r4
0010d0  6309cfe4  loadli.w r18,  -3488(r30)
0010d4  63080fe6  loadli.w r16,  -3328(r30)
0010d8  e3078fe5  loadli.w r15,  -3392(r30)
0010dc  9f0a0600  addli r21, r12, 0
0010e0  9f090d00  addli r19, r26, 0
0010e4  9f880400  addli r17, r9, 0
0010e8  9bb09600  slli r1, r13, 9
0010ec  9361d606  setle.f r3, r12, r13
0010f0  93e2c606  setle.f r5, r13, r12
0010f4  1bc17601  srli r2, r13, 23
0010f8  93800000  seteq r1, r1, zero
0010fc  1b01f10f  andi r2, r2, 255
001100  1b71f10f  setlti r2, r2, 255
001104  97101100  or r1, r2, r1
001108  17813200  and r2, r5, r3
00110c  97001100  and r1, r2, r1
001110  3ba00000  bneq r1, zero, 8
001114  8f8ad318  div.f.rn r21, r7, r13
001118  8b60d410  add.f.rn r1, r8, r13
00111c  e344ffe4  loadli.w r9,  -3460(r30)
001120  1f0b0600  addli r22, r12, 0
001124  1f070300  addli r14, r6, 0
001128  1bb19000  slli r2, r1, 9
00112c  93621606  setle.f r5, r12, r1
001130  93e3c006  setle.f r7, r1, r12
001134  9bc17001  srli r3, r1, 23
001138  13010100  seteq r2, r2, zero
00113c  9b81f10f  andi r3, r3, 255
001140  9bf1f10f  setlti r3, r3, 255
001144  17912100  or r2, r3, r2
001148  97815300  and r3, r7, r5
00114c  17812100  and r2, r3, r2
001150  3b200100  bneq r2, zero, 8
001154  0f0b1418  div.f.rn r22, r8, r1
001158  0b611510  add.f.rn r2, r10, r1
00115c  1f0d0600  addli r26, r12, 0
001160  9b319100  slli r3, r2, 9
001164  93632606  setle.f r7, r12, r2
001168  1364c106  setle.f r8, r2, r12
00116c  9b427101  srli r5, r2, 23
001170  93810100  seteq r3, r3, zero
001174  9b82f20f  andi r5, r5, 255
001178  9bf2f20f  setlti r5, r5, 255
00117c  97913200  or r3, r5, r3
001180  97027400  and r5, r8, r7
001184  97813200  and r3, r5, r3
001188  3ba00100  bneq r3, zero, 8
00118c  0f0d2518  div.f.rn r26, r10, r2
001190  8be22510  add.f.rn r5, r11, r2
001194  1f030600  addli r6, r12, 0
001198  9bb19200  slli r3, r5, 9
00119c  13645606  setle.f r8, r12, r5
0011a0  13e5c206  setle.f r10, r5, r12
0011a4  9bc37201  srli r7, r5, 23
0011a8  93810100  seteq r3, r3, zero
0011ac  9b83f30f  andi r7, r7, 255
0011b0  9bf3f30f  setlti r7, r7, 255
0011b4  97913300  or r3, r7, r3
0011b8  97038500  and r7, r10, r8
0011bc  97813300  and r3, r7, r3
0011c0  3ba00100  bneq r3, zero, 8
0011c4  0f835518  div.f.rn r6, r11, r5
0011c8  8bec5410  add.f.rn r25, r9, r5
0011cc  67086fe4  storeli.w r6, -3456(r30)
0011d0  1f030600  addli r6, r12, 0
0011d4  9bb19c00  slli r3, r25, 9
0011d8  13649607  setle.f r8, r12, r25
0011dc  13e5cc06  setle.f r10, r25, r12
0011e0  9bc37c01  srli r7, r25, 23
0011e4  93810100  seteq r3, r3, zero
0011e8  9b83f30f  andi r7, r7, 255
0011ec  9bf3f30f  setlti r7, r7, 255
0011f0  97913300  or r3, r7, r3
0011f4  97038500  and r7, r10, r8
0011f8  97813300  and r3, r7, r3
0011fc  3ba00100  bneq r3, zero, 8
001200  0f839419  div.f.rn r6, r9, r25
001204  8be19d11  add.f.rn r3, r27, r25
001208  e7476fe4  storeli.w r6, -3460(r30)
00120c  e3050fe7  loadli.w r11,  -3200(r30)
001210  1bb39100  slli r6, r3, 9
001214  13643606  setle.f r8, r12, r3
001218  13e5c106  setle.f r10, r3, r12
00121c  9bc37101  srli r7, r3, 23
001220  13030300  seteq r6, r6, zero
001224  9b83f30f  andi r7, r7, 255
001228  9bf3f30f  setlti r7, r7, 255
00122c  17936300  or r6, r7, r6
001230  97038500  and r7, r10, r8
001234  17836300  and r6, r7, r6
001238  9f030600  addli r7, r12, 0
00123c  3b200300  bneq r6, zero, 8
001240  8f833d18  div.f.rn r7, r27, r3
001244  63058fe6  loadli.w r10,  -3264(r30)
001248  e7077fe4  storeli.w r7, -3464(r30)
00124c  8b6d3510  add.f.rn r27, r10, r3
001250  1bb39d00  slli r6, r27, 9
001254  1364b607  setle.f r8, r12, r27
001258  93e4cd06  setle.f r9, r27, r12
00125c  9bc37d01  srli r7, r27, 23
001260  13030300  seteq r6, r6, zero
001264  9b83f30f  andi r7, r7, 255
001268  9bf3f30f  setlti r7, r7, 255
00126c  17936300  or r6, r7, r6
001270  97838400  and r7, r9, r8
001274  17836300  and r6, r7, r6
001278  9f030600  addli r7, r12, 0
00127c  3b200300  bneq r6, zero, 8
001280  8f03b519  div.f.rn r7, r10, r27
001284  0be3b511  add.f.rn r6, r11, r27
001288  67477fe4  storeli.w r7, -3468(r30)
00128c  9b339300  slli r7, r6, 9
001290  93646606  setle.f r9, r12, r6
001294  1365c306  setle.f r10, r6, r12
001298  1b447301  srli r8, r6, 23
00129c  93830300  seteq r7, r7, zero
0012a0  1b04f40f  andi r8, r8, 255
0012a4  1b74f40f  setlti r8, r8, 255
0012a8  97137400  or r7, r8, r7
0012ac  17049500  and r8, r10, r9
0012b0  97037400  and r7, r8, r7
0012b4  1f040600  addli r8, r12, 0
0012b8  3ba00300  bneq r7, zero, 8
0012bc  0f846518  div.f.rn r8, r11, r6
0012c0  8b656710  add.f.rn r11, r14, r6
0012c4  67078fe4  storeli.w r8, -3472(r30)
0012c8  9bb39500  slli r7, r11, 9
0012cc  9364b606  setle.f r9, r12, r11
0012d0  13e5c506  setle.f r10, r11, r12
0012d4  1bc47501  srli r8, r11, 23
0012d8  93830300  seteq r7, r7, zero
0012dc  1b04f40f  andi r8, r8, 255
0012e0  1b74f40f  setlti r8, r8, 255
0012e4  97137400  or r7, r8, r7
0012e8  17049500  and r8, r10, r9
0012ec  97037400  and r7, r8, r7
0012f0  1f040600  addli r8, r12, 0
0012f4  3ba00300  bneq r7, zero, 8
0012f8  0f04b718  div.f.rn r8, r14, r11
0012fc  8be3b710  add.f.rn r7, r15, r11
001300  e7468fe4  storeli.w r8, -3476(r30)
001304  1bb49300  slli r8, r7, 9
001308  13657606  setle.f r10, r12, r7
00130c  13e7c306  setle.f r14, r7, r12
001310  9bc47301  srli r9, r7, 23
001314  13040400  seteq r8, r8, zero
001318  9b84f40f  andi r9, r9, 255
00131c  9bf4f40f  setlti r9, r9, 255
001320  17948400  or r8, r9, r8
001324  9704a700  and r9, r14, r10
001328  17848400  and r8, r9, r8
00132c  9f040600  addli r9, r12, 0
001330  3b200400  bneq r8, zero, 8
001334  8f847718  div.f.rn r9, r15, r7
001338  0b647810  add.f.rn r8, r16, r7
00133c  670c9fe4  storeli.w r9, -3392(r30)
001340  9b349400  slli r9, r8, 9
001344  13678606  setle.f r14, r12, r8
001348  9367c406  setle.f r15, r8, r12
00134c  1b457401  srli r10, r8, 23
001350  93840400  seteq r9, r9, zero
001354  1b05f50f  andi r10, r10, 255
001358  1b75f50f  setlti r10, r10, 255
00135c  97149500  or r9, r10, r9
001360  1785e700  and r10, r15, r14
001364  97049500  and r9, r10, r9
001368  1f050600  addli r10, r12, 0
00136c  3ba00400  bneq r9, zero, 8
001370  0f058818  div.f.rn r10, r16, r8
001374  8be48810  add.f.rn r9, r17, r8
001378  e706afe4  storeli.w r10, -3480(r30)
00137c  1bb59400  slli r10, r9, 9
001380  93679606  setle.f r15, r12, r9
001384  13e8c406  setle.f r16, r9, r12
001388  1bc77401  srli r14, r9, 23
00138c  13050500  seteq r10, r10, zero
001390  1b07f70f  andi r14, r14, 255
001394  1b77f70f  setlti r14, r14, 255
001398  1715a700  or r10, r14, r10
00139c  1707f800  and r14, r16, r15
0013a0  1705a700  and r10, r14, r10
0013a4  1f070600  addli r14, r12, 0
0013a8  3b200500  bneq r10, zero, 8
0013ac  0f879818  div.f.rn r14, r17, r9
0013b0  0b659910  add.f.rn r10, r18, r9
0013b4  6746efe4  storeli.w r14, -3484(r30)
0013b8  1b379500  slli r14, r10, 9
0013bc  1368a606  setle.f r16, r12, r10
0013c0  9368c506  setle.f r17, r10, r12
0013c4  9b477501  srli r15, r10, 23
0013c8  13070700  seteq r14, r14, zero
0013cc  9b87f70f  andi r15, r15, 255
0013d0  9bf7f70f  setlti r15, r15, 255
0013d4  1797e700  or r14, r15, r14
0013d8  97870801  and r15, r17, r16
0013dc  1787e700  and r14, r15, r14
0013e0  9f070600  addli r15, r12, 0
0013e4  3b200700  bneq r14, zero, 8
0013e8  8f07a918  div.f.rn r15, r18, r10
0013ec  0be7a910  add.f.rn r14, r19, r10
0013f0  6706ffe4  storeli.w r15, -3488(r30)
0013f4  67005fe6  storeli.w r5, -3328(r30)
0013f8  67042fe6  storeli.w r2, -3264(r30)
0013fc  67081fe6  storeli.w r1, -3200(r30)
001400  9b379700  slli r15, r14, 9
001404  9368e606  setle.f r17, r12, r14
001408  1369c706  setle.f r18, r14, r12
00140c  1b487701  srli r16, r14, 23
001410  93870700  seteq r15, r15, zero
001414  1b08f80f  andi r16, r16, 255
001418  1b78f80f  setlti r16, r16, 255
00141c  9717f800  or r15, r16, r15
001420  17081901  and r16, r18, r17
001424  9707f800  and r15, r16, r15
001428  3ba00700  bneq r15, zero, 8
00142c  0f86e918  div.f.rn r12, r19, r14
001430  9e105502  vsub.f.mz.rn vr1{mr1}, vr10, vr5
001434  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
001438  e3020fe5  loadli.w r5,  -3456(r30)
00143c  9f000b00  addli r1, r22, 0
001440  1f010d00  addli r2, r26, 0
001444  0e908002  vmul.f.mz.rn vr0{mr1}, vr1, vr8
001448  8e901002  vmul.f.mz.rn vr1{mr1}, vr1, vr1
00144c  16900202  vadd.f.mz.rn vr0{mr1}, vr5, vr0
001450  8e909002  vmul.f.mz.rn vr1{mr1}, vr1, vr9
001454  7a170040  vextracti.f r14, 0(vr0)
001458  fa171040  vextracti.f r15, 1(vr0)
00145c  8e908002  vmul.f.mz.rn vr1{mr1}, vr1, vr8
001460  8be7e718  sub.f.rn r15, r15, r14
001464  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001468  0b68fc20  mul.f.rn r16, r24, r15
00146c  8be7f720  mul.f.rn r15, r15, r15
001470  0b670711  add.f.rn r14, r14, r16
001474  7a182040  vextracti.f r16, 2(vr0)
001478  8b67fa20  mul.f.rn r15, r20, r15
00147c  7a9a0040  vextracti.f r20, 0(vr1)
001480  0b68e818  sub.f.rn r16, r16, r14
001484  8b67fc20  mul.f.rn r15, r24, r15
001488  8be80a21  mul.f.rn r17, r21, r16
00148c  0b680821  mul.f.rn r16, r16, r16
001490  0b671711  add.f.rn r14, r14, r17
001494  fa183040  vextracti.f r17, 3(vr0)
001498  0b620221  mul.f.rn r4, r4, r16
00149c  8be8e818  sub.f.rn r17, r17, r14
0014a0  0b691b21  mul.f.rn r18, r22, r17
0014a4  8be81821  mul.f.rn r17, r17, r17
0014a8  0b672711  add.f.rn r14, r14, r18
0014ac  7a194040  vextracti.f r18, 4(vr0)
0014b0  8be61621  mul.f.rn r13, r13, r17
0014b4  fa187040  vextracti.f r17, 7(vr0)
0014b8  0b69e918  sub.f.rn r18, r18, r14
0014bc  8be6d020  mul.f.rn r13, r1, r13
0014c0  e3000fe7  loadli.w r1,  -3200(r30)
0014c4  8b692d21  mul.f.rn r19, r26, r18
0014c8  1f8d0a00  addli r26, r21, 0
0014cc  fa9a1040  vextracti.f r21, 1(vr1)
0014d0  0b624d20  mul.f.rn r4, r26, r4
0014d4  0b6a5a11  add.f.rn r20, r20, r21
0014d8  fa1a6040  vextracti.f r21, 6(vr0)
0014dc  0b673711  add.f.rn r14, r14, r19
0014e0  fa195040  vextracti.f r19, 5(vr0)
0014e4  8b67fa10  add.f.rn r15, r20, r15
0014e8  7a9a2040  vextracti.f r20, 2(vr1)
0014ec  8be9e918  sub.f.rn r19, r19, r14
0014f0  8b67fa10  add.f.rn r15, r20, r15
0014f4  0beb3221  mul.f.rn r22, r5, r19
0014f8  0be24710  add.f.rn r4, r15, r4
0014fc  fa973040  vextracti.f r15, 3(vr1)
001500  0b676711  add.f.rn r14, r14, r22
001504  0be24710  add.f.rn r4, r15, r4
001508  0be8ea18  sub.f.rn r16, r21, r14
00150c  e34affe4  loadli.w r21,  -3460(r30)
001510  0b62d210  add.f.rn r4, r4, r13
001514  fa964040  vextracti.f r13, 4(vr1)
001518  0bea0a21  mul.f.rn r20, r21, r16
00151c  0be24610  add.f.rn r4, r13, r4
001520  fa168040  vextracti.f r13, 8(vr0)
001524  0b674711  add.f.rn r14, r14, r20
001528  630affe4  loadli.w r20,  -3464(r30)
00152c  8be7e818  sub.f.rn r15, r17, r14
001530  8b682921  mul.f.rn r17, r18, r18
001534  0b69fa20  mul.f.rn r18, r20, r15
001538  8be01021  mul.f.rn r1, r1, r17
00153c  8be83921  mul.f.rn r17, r19, r19
001540  8be7f720  mul.f.rn r15, r15, r15
001544  0b672711  add.f.rn r14, r14, r18
001548  8b601120  mul.f.rn r1, r2, r1
00154c  63018fe6  loadli.w r2,  -3264(r30)
001550  6349efe4  loadli.w r18,  -3468(r30)
001554  0b611121  mul.f.rn r2, r2, r17
001558  8be6e618  sub.f.rn r13, r13, r14
00155c  8b601210  add.f.rn r1, r4, r1
001560  7a925040  vextracti.f r4, 5(vr1)
001564  0be12220  mul.f.rn r2, r5, r2
001568  fa926040  vextracti.f r5, 6(vr1)
00156c  8b68d920  mul.f.rn r17, r18, r13
001570  8b601210  add.f.rn r1, r4, r1
001574  0b620821  mul.f.rn r4, r16, r16
001578  7a189040  vextracti.f r16, 9(vr0)
00157c  8be6d620  mul.f.rn r13, r13, r13
001580  0b671711  add.f.rn r14, r14, r17
001584  8be02010  add.f.rn r1, r1, r2
001588  63010fe6  loadli.w r2,  -3328(r30)
00158c  e348dfe4  loadli.w r17,  -3476(r30)
001590  8be1d120  mul.f.rn r3, r3, r13
001594  0b614120  mul.f.rn r2, r2, r4
001598  0b62e818  sub.f.rn r4, r16, r14
00159c  6308efe4  loadli.w r16,  -3472(r30)
0015a0  8be01210  add.f.rn r1, r5, r1
0015a4  8b613920  mul.f.rn r3, r18, r3
0015a8  0be12a20  mul.f.rn r2, r21, r2
0015ac  8b624820  mul.f.rn r5, r16, r4
0015b0  0b624220  mul.f.rn r4, r4, r4
0015b4  8be02010  add.f.rn r1, r1, r2
0015b8  0b615710  add.f.rn r2, r14, r5
0015bc  8be2fc20  mul.f.rn r5, r25, r15
0015c0  7a977040  vextracti.f r14, 7(vr1)
0015c4  fa17a040  vextracti.f r15, 10(vr0)
0015c8  8b601710  add.f.rn r1, r14, r1
0015cc  0be72718  sub.f.rn r14, r15, r2
0015d0  8b625a20  mul.f.rn r5, r20, r5
0015d4  8be7e820  mul.f.rn r15, r17, r14
0015d8  8be05010  add.f.rn r1, r1, r5
0015dc  fa928040  vextracti.f r5, 8(vr1)
0015e0  0b61f110  add.f.rn r2, r2, r15
0015e4  8be01210  add.f.rn r1, r5, r1
0015e8  fa12b040  vextracti.f r5, 11(vr0)
0015ec  e3078fe5  loadli.w r15,  -3392(r30)
0015f0  8be22218  sub.f.rn r5, r5, r2
0015f4  8be03010  add.f.rn r1, r1, r3
0015f8  8be14d20  mul.f.rn r3, r27, r4
0015fc  7a929040  vextracti.f r4, 9(vr1)
001600  8be65720  mul.f.rn r13, r15, r5
001604  8b601210  add.f.rn r1, r4, r1
001608  8b613820  mul.f.rn r3, r16, r3
00160c  0b62e720  mul.f.rn r4, r14, r14
001610  8be25220  mul.f.rn r5, r5, r5
001614  0b61d110  add.f.rn r2, r2, r13
001618  fa16c040  vextracti.f r13, 12(vr0)
00161c  8be03010  add.f.rn r1, r1, r3
001620  8b614320  mul.f.rn r3, r6, r4
001624  7a93a040  vextracti.f r6, 10(vr1)
001628  0be22618  sub.f.rn r4, r13, r2
00162c  e306dfe4  loadli.w r13,  -3480(r30)
001630  8b601310  add.f.rn r1, r6, r1
001634  8be13820  mul.f.rn r3, r17, r3
001638  0be34620  mul.f.rn r6, r13, r4
00163c  8be03010  add.f.rn r1, r1, r3
001640  8be15520  mul.f.rn r3, r11, r5
001644  fa92b040  vextracti.f r5, 11(vr1)
001648  e345cfe4  loadli.w r11,  -3484(r30)
00164c  0b624220  mul.f.rn r4, r4, r4
001650  0b616110  add.f.rn r2, r2, r6
001654  7a13d040  vextracti.f r6, 13(vr0)
001658  8be01210  add.f.rn r1, r5, r1
00165c  8be13720  mul.f.rn r3, r15, r3
001660  8b622318  sub.f.rn r5, r6, r2
001664  8be03010  add.f.rn r1, r1, r3
001668  8be14320  mul.f.rn r3, r7, r4
00166c  7a92c040  vextracti.f r4, 12(vr1)
001670  e303cfe4  loadli.w r7,  -3488(r30)
001674  0be35520  mul.f.rn r6, r11, r5
001678  8b601210  add.f.rn r1, r4, r1
00167c  7a12e040  vextracti.f r4, 14(vr0)
001680  8be13620  mul.f.rn r3, r13, r3
001684  8be25220  mul.f.rn r5, r5, r5
001688  0b616110  add.f.rn r2, r2, r6
00168c  8be03010  add.f.rn r1, r1, r3
001690  8b615420  mul.f.rn r3, r8, r5
001694  fa92d040  vextracti.f r5, 13(vr1)
001698  0b622218  sub.f.rn r4, r4, r2
00169c  8be01210  add.f.rn r1, r5, r1
0016a0  8be13520  mul.f.rn r3, r11, r3
0016a4  fa12f040  vextracti.f r5, 15(vr0)
0016a8  0be34320  mul.f.rn r6, r7, r4
0016ac  0b624220  mul.f.rn r4, r4, r4
0016b0  8be03010  add.f.rn r1, r1, r3
0016b4  0b616110  add.f.rn r2, r2, r6
0016b8  8be14420  mul.f.rn r3, r9, r4
0016bc  0be22218  sub.f.rn r4, r5, r2
0016c0  fa92e040  vextracti.f r5, 14(vr1)
0016c4  8be13320  mul.f.rn r3, r7, r3
0016c8  8be01210  add.f.rn r1, r5, r1
0016cc  8b624220  mul.f.rn r5, r4, r4
0016d0  8be03010  add.f.rn r1, r1, r3
0016d4  8b615520  mul.f.rn r3, r10, r5
0016d8  fa92f040  vextracti.f r5, 15(vr1)
0016dc  1f050ffc  addli r10, r30, -512
0016e0  8be01210  add.f.rn r1, r5, r1
0016e4  8b613620  mul.f.rn r3, r12, r3
0016e8  8be03010  add.f.rn r1, r1, r3
0016ec  ab01003a  lui r3, 237568
0016f0  8be03020  mul.f.rn r1, r1, r3
0016f4  e301cfe1  loadli.w r3,  -3872(r30)
0016f8  8be03010  add.f.rn r1, r1, r3
0016fc  8b614620  mul.f.rn r3, r12, r4
001700  1f020000  addli r4, zero, 0
001704  8f800008  sqrt.f.rn r1, r1
001708  0b613110  add.f.rn r2, r2, r3
00170c  ab01803f  lui r3, 260096
001710  0b660158  neg.f r12, r2
001714  8f851118  div.f.rn r11, r3, r1
001718  9f000000  addli r1, zero, 0
00171c  0b911b10  add.s r2, r23, r1
001720  9f800001  addli r1, r1, 128
001724  4610b102  vstore_mask16.mz vr11{mr1}, 0(r2)
001728  4614b102  vstore_mask16.mz vr11{mr1}, 64(r2)
00172c  00a00000  mfence { lm }
001730  bbbfc0ff  bneq r1, r28, -20
001734  e340ffe1  loadli.w r1,  -3844(r30)
001738  9f210000  addli r3, zero, 2
00173c  9f03efe1  addli r7, r30, -3856
001740  97101200  or r1, r4, r1
001744  b3900028  sext_int2long r[2:3], r1
001748  97b23002  sll.d r[6:7], r[2:3], r3
00174c  6b510f00  load.d r[3:4], 0(r30)
001750  ab0000f0  lui r1, 983040
001754  97101e00  or r1, r28, r1
001758  73b05300  store.d r[6:7], 0(r7)
00175c  0b215110  add.ul r[3:4], r[3:4], r[6:7]
001760  ff207101  l_gm2lm r1, r23, 0(r[3:4])
001764  9f000000  addli r1, zero, 0
001768  0b111510  add.s r2, r10, r1
00176c  9f801000  addli r1, r1, 8
001770  67000100  storeli.w zero, 0(r2)
001774  67400100  storeli.w zero, 4(r2)
001778  00a00000  mfence { lm }
00177c  bbbfc0ff  bneq r1, r28, -20
001780  b3000228  zext_int2long r[2:3], r4
001784  9f210000  addli r3, zero, 2
001788  e70f4fe0  storeli.w r4, -3848(r30)
00178c  6b528f00  load.d r[5:6], 8(r30)
001790  97b03002  sll.d r[2:3], r[2:3], r3
001794  ab0100f0  lui r3, 983040
001798  8b201210  add.ul r[2:3], r[5:6], r[2:3]
00179c  97113e00  or r3, r28, r3
0017a0  ffa1a000  l_gm2lm r3, r10, 0(r[2:3])
0017a4  9f110000  addli r3, zero, 1
0017a8  9f000000  addli r1, zero, 0
0017ac  00a00000  mfence { lm }
0017b0  0b931b10  add.s r6, r23, r1
0017b4  8b101510  add.s r1, r10, r1
0017b8  67083fe6  storeli.w r3, -3200(r30)
0017bc  1232b002  vadd.s.mz vr4{mr1}, zero, vr11
0017c0  9232b002  vadd.s.mz vr5{mr1}, zero, vr11
0017c4  1233b002  vadd.s.mz vr6{mr1}, zero, vr11
0017c8  9233b002  vadd.s.mz vr7{mr1}, zero, vr11
0017cc  c2110302  vload_mask16.mz vr3{mr1}, 0(r6)
0017d0  42118302  vload_mask16.mz vr2{mr1}, 64(r6)
0017d4  c2100303  vload_mask16.mz vr1{mr1}, 128(r6)
0017d8  42108303  vload_mask16.mz vr0{mr1}, 192(r6)
0017dc  e3cdb000  loadli.w r27,  92(r1)
0017e0  63810000  loadli.w r2,  0(r1)
0017e4  e3c10000  loadli.w r3,  4(r1)
0017e8  63821000  loadli.w r4,  8(r1)
0017ec  e3c21000  loadli.w r5,  12(r1)
0017f0  e3832000  loadli.w r7,  16(r1)
0017f4  63c42000  loadli.w r8,  20(r1)
0017f8  e3843000  loadli.w r9,  24(r1)
0017fc  63c53000  loadli.w r10,  28(r1)
001800  e3864000  loadli.w r13,  32(r1)
001804  63c74000  loadli.w r14,  36(r1)
001808  e3875000  loadli.w r15,  40(r1)
00180c  63c85000  loadli.w r16,  44(r1)
001810  e3886000  loadli.w r17,  48(r1)
001814  63c96000  loadli.w r18,  52(r1)
001818  e3897000  loadli.w r19,  56(r1)
00181c  63ca7000  loadli.w r20,  60(r1)
001820  638e8000  loadli.w r28,  64(r1)
001824  e3ca8000  loadli.w r21,  68(r1)
001828  638b9000  loadli.w r22,  72(r1)
00182c  e3cb9000  loadli.w r23,  76(r1)
001830  638ca000  loadli.w r24,  80(r1)
001834  e3cca000  loadli.w r25,  84(r1)
001838  638db000  loadli.w r26,  88(r1)
00183c  e74ebfe3  storeli.w r27, -3604(r30)
001840  e38dc000  loadli.w r27,  96(r1)
001844  670fbfe3  storeli.w r27, -3600(r30)
001848  e3cdc000  loadli.w r27,  100(r1)
00184c  674fbfe3  storeli.w r27, -3596(r30)
001850  e38dd000  loadli.w r27,  104(r1)
001854  e70fbfe3  storeli.w r27, -3592(r30)
001858  e3cdd000  loadli.w r27,  108(r1)
00185c  e74fbfe3  storeli.w r27, -3588(r30)
001860  e38de000  loadli.w r27,  112(r1)
001864  6700bfe5  storeli.w r27, -3584(r30)
001868  e3cde000  loadli.w r27,  116(r1)
00186c  6740bfe5  storeli.w r27, -3580(r30)
001870  e38df000  loadli.w r27,  120(r1)
001874  e700bfe5  storeli.w r27, -3576(r30)
001878  e3cdf000  loadli.w r27,  124(r1)
00187c  e740bfe5  storeli.w r27, -3572(r30)
001880  e38d0001  loadli.w r27,  128(r1)
001884  6701bfe5  storeli.w r27, -3568(r30)
001888  e3cd0001  loadli.w r27,  132(r1)
00188c  6741bfe5  storeli.w r27, -3564(r30)
001890  e38d1001  loadli.w r27,  136(r1)
001894  e701bfe5  storeli.w r27, -3560(r30)
001898  e3cd1001  loadli.w r27,  140(r1)
00189c  e741bfe5  storeli.w r27, -3556(r30)
0018a0  e38d2001  loadli.w r27,  144(r1)
0018a4  6702bfe5  storeli.w r27, -3552(r30)
0018a8  e3cd2001  loadli.w r27,  148(r1)
0018ac  6742bfe5  storeli.w r27, -3548(r30)
0018b0  e38d3001  loadli.w r27,  152(r1)
0018b4  e702bfe5  storeli.w r27, -3544(r30)
0018b8  e3cd3001  loadli.w r27,  156(r1)
0018bc  e742bfe5  storeli.w r27, -3540(r30)
0018c0  e38d4001  loadli.w r27,  160(r1)
0018c4  6703bfe5  storeli.w r27, -3536(r30)
0018c8  e3cd4001  loadli.w r27,  164(r1)
0018cc  6743bfe5  storeli.w r27, -3532(r30)
0018d0  e38d5001  loadli.w r27,  168(r1)
0018d4  e703bfe5  storeli.w r27, -3528(r30)
0018d8  e3cd5001  loadli.w r27,  172(r1)
0018dc  e743bfe5  storeli.w r27, -3524(r30)
0018e0  e38d6001  loadli.w r27,  176(r1)
0018e4  6704bfe5  storeli.w r27, -3520(r30)
0018e8  e3cd6001  loadli.w r27,  180(r1)
0018ec  6744bfe5  storeli.w r27, -3516(r30)
0018f0  e38d7001  loadli.w r27,  184(r1)
0018f4  e704bfe5  storeli.w r27, -3512(r30)
0018f8  e3cd7001  loadli.w r27,  188(r1)
0018fc  e744bfe5  storeli.w r27, -3508(r30)
001900  e38d8001  loadli.w r27,  192(r1)
001904  6705bfe5  storeli.w r27, -3504(r30)
001908  e3cd8001  loadli.w r27,  196(r1)
00190c  6745bfe5  storeli.w r27, -3500(r30)
001910  e38d9001  loadli.w r27,  200(r1)
001914  e705bfe5  storeli.w r27, -3496(r30)
001918  e3cd9001  loadli.w r27,  204(r1)
00191c  e745bfe5  storeli.w r27, -3492(r30)
001920  e38da001  loadli.w r27,  208(r1)
001924  6706bfe5  storeli.w r27, -3488(r30)
001928  e3cda001  loadli.w r27,  212(r1)
00192c  6746bfe5  storeli.w r27, -3484(r30)
001930  e38db001  loadli.w r27,  216(r1)
001934  e706bfe5  storeli.w r27, -3480(r30)
001938  e3cdb001  loadli.w r27,  220(r1)
00193c  e746bfe5  storeli.w r27, -3476(r30)
001940  e38dc001  loadli.w r27,  224(r1)
001944  6707bfe5  storeli.w r27, -3472(r30)
001948  e3cdc001  loadli.w r27,  228(r1)
00194c  6747bfe5  storeli.w r27, -3468(r30)
001950  e38dd001  loadli.w r27,  232(r1)
001954  e707bfe5  storeli.w r27, -3464(r30)
001958  e3cdd001  loadli.w r27,  236(r1)
00195c  e747bfe5  storeli.w r27, -3460(r30)
001960  e38de001  loadli.w r27,  240(r1)
001964  6708bfe5  storeli.w r27, -3456(r30)
001968  e3cde001  loadli.w r27,  244(r1)
00196c  670cbfe5  storeli.w r27, -3392(r30)
001970  e38df001  loadli.w r27,  248(r1)
001974  e3c0f001  loadli.w r1,  252(r1)
001978  67041fe6  storeli.w r1, -3264(r30)
00197c  9f100000  addli r1, zero, 1
001980  6700bfe7  storeli.w r27, -3328(r30)
001984  7e8000e0  vmmov mr0, r1
001988  9f200000  addli r1, zero, 2
00198c  6a224130  vor.u.mh vr4{mr0}, r2, vr4
001990  1f010001  addli r2, zero, 128
001994  7e8000e0  vmmov mr0, r1
001998  9f400000  addli r1, zero, 4
00199c  fe8100e0  vmmov mr3, r1
0019a0  9f001000  addli r1, zero, 8
0019a4  6aa24130  vor.u.mh vr4{mr0}, r3, vr4
0019a8  ab810000  lui r3, 8
0019ac  7e8100e0  vmmov mr2, r1
0019b0  9f002000  addli r1, zero, 16
0019b4  7e8000e0  vmmov mr0, r1
0019b8  9f004000  addli r1, zero, 32
0019bc  6a224236  vor.u.mh vr4{mr3}, r4, vr4
0019c0  6aa24234  vor.u.mh vr4{mr2}, r5, vr4
0019c4  6aa24330  vor.u.mh vr4{mr0}, r7, vr4
0019c8  7e8000e0  vmmov mr0, r1
0019cc  9f008000  addli r1, zero, 64
0019d0  6a224430  vor.u.mh vr4{mr0}, r8, vr4
0019d4  7e8000e0  vmmov mr0, r1
0019d8  9f000001  addli r1, zero, 128
0019dc  6aa24430  vor.u.mh vr4{mr0}, r9, vr4
0019e0  7e8000e0  vmmov mr0, r1
0019e4  9f000002  addli r1, zero, 256
0019e8  6a224530  vor.u.mh vr4{mr0}, r10, vr4
0019ec  7e8000e0  vmmov mr0, r1
0019f0  9f000004  addli r1, zero, 512
0019f4  1f050ffc  addli r10, r30, -512
0019f8  6aa24630  vor.u.mh vr4{mr0}, r13, vr4
0019fc  7e8000e0  vmmov mr0, r1
001a00  9f000008  addli r1, zero, 1024
001a04  7e8100e0  vmmov mr2, r1
001a08  9f000010  addli r1, zero, 2048
001a0c  6a224730  vor.u.mh vr4{mr0}, r14, vr4
001a10  fe8100e0  vmmov mr3, r1
001a14  9f000020  addli r1, zero, 4096
001a18  6aa24734  vor.u.mh vr4{mr2}, r15, vr4
001a1c  6a224836  vor.u.mh vr4{mr3}, r16, vr4
001a20  fe8100e0  vmmov mr3, r1
001a24  9f000040  addli r1, zero, 8192
001a28  6aa24836  vor.u.mh vr4{mr3}, r17, vr4
001a2c  fe8100e0  vmmov mr3, r1
001a30  ab400000  lui r1, 4
001a34  6a224936  vor.u.mh vr4{mr3}, r18, vr4
001a38  fe8100e0  vmmov mr3, r1
001a3c  ab800000  lui r1, 8
001a40  6aa24936  vor.u.mh vr4{mr3}, r19, vr4
001a44  fe8100e0  vmmov mr3, r1
001a48  9f100000  addli r1, zero, 1
001a4c  7e8000e0  vmmov mr0, r1
001a50  9f200000  addli r1, zero, 2
001a54  6a224a36  vor.u.mh vr4{mr3}, r20, vr4
001a58  ea225e30  vor.u.mh vr5{mr0}, r28, vr5
001a5c  7e8000e0  vmmov mr0, r1
001a60  9f400000  addli r1, zero, 4
001a64  eaa25a30  vor.u.mh vr5{mr0}, r21, vr5
001a68  7e8000e0  vmmov mr0, r1
001a6c  9f001000  addli r1, zero, 8
001a70  96914102  vadd.f.mz.rn vr3{mr1}, vr3, vr4
001a74  92113602  vadd.f.mz.rn vr3{mr1}, r12, vr3
001a78  8a913502  vmul.f.mz.rn vr3{mr1}, r11, vr3
001a7c  ea225b30  vor.u.mh vr5{mr0}, r22, vr5
001a80  7e8000e0  vmmov mr0, r1
001a84  9f002000  addli r1, zero, 16
001a88  eaa25b30  vor.u.mh vr5{mr0}, r23, vr5
001a8c  7e8000e0  vmmov mr0, r1
001a90  9f004000  addli r1, zero, 32
001a94  9f0b0fe8  addli r23, r30, -3072
001a98  ea225c30  vor.u.mh vr5{mr0}, r24, vr5
001a9c  7e8000e0  vmmov mr0, r1
001aa0  9f008000  addli r1, zero, 64
001aa4  eaa25c30  vor.u.mh vr5{mr0}, r25, vr5
001aa8  7e8000e0  vmmov mr0, r1
001aac  ea225d30  vor.u.mh vr5{mr0}, r26, vr5
001ab0  e340dfe3  loadli.w r1,  -3604(r30)
001ab4  7e0001e0  vmmov mr0, r2
001ab8  1f010010  addli r2, zero, 2048
001abc  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001ac0  9f000002  addli r1, zero, 256
001ac4  7e8100e0  vmmov mr2, r1
001ac8  7e0001c0  vmmov mr0, mr2
001acc  e300efe3  loadli.w r1,  -3600(r30)
001ad0  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001ad4  9f000004  addli r1, zero, 512
001ad8  7e0001e0  vmmov mr0, r2
001adc  1f010020  addli r2, zero, 4096
001ae0  fe8100e0  vmmov mr3, r1
001ae4  e340efe3  loadli.w r1,  -3596(r30)
001ae8  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
001aec  9f000008  addli r1, zero, 1024
001af0  7e8100e0  vmmov mr2, r1
001af4  e300ffe3  loadli.w r1,  -3592(r30)
001af8  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
001afc  e340ffe3  loadli.w r1,  -3588(r30)
001b00  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001b04  e3000fe4  loadli.w r1,  -3584(r30)
001b08  7e0001e0  vmmov mr0, r2
001b0c  1f010040  addli r2, zero, 8192
001b10  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001b14  e3400fe4  loadli.w r1,  -3580(r30)
001b18  7e0001e0  vmmov mr0, r2
001b1c  2b410000  lui r2, 4
001b20  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001b24  e3001fe4  loadli.w r1,  -3576(r30)
001b28  7e0001e0  vmmov mr0, r2
001b2c  2b810000  lui r2, 8
001b30  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001b34  e3401fe4  loadli.w r1,  -3572(r30)
001b38  7e0001e0  vmmov mr0, r2
001b3c  1f110000  addli r2, zero, 1
001b40  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001b44  e3002fe4  loadli.w r1,  -3568(r30)
001b48  7e0001e0  vmmov mr0, r2
001b4c  1f210000  addli r2, zero, 2
001b50  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
001b54  e3402fe4  loadli.w r1,  -3564(r30)
001b58  7e0001e0  vmmov mr0, r2
001b5c  1f410000  addli r2, zero, 4
001b60  16115102  vadd.f.mz.rn vr2{mr1}, vr2, vr5
001b64  12112602  vadd.f.mz.rn vr2{mr1}, r12, vr2
001b68  0a912502  vmul.f.mz.rn vr2{mr1}, r11, vr2
001b6c  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
001b70  e3003fe4  loadli.w r1,  -3560(r30)
001b74  7e0001e0  vmmov mr0, r2
001b78  1f011000  addli r2, zero, 8
001b7c  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
001b80  e3403fe4  loadli.w r1,  -3556(r30)
001b84  7e0001e0  vmmov mr0, r2
001b88  1f012000  addli r2, zero, 16
001b8c  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
001b90  e3004fe4  loadli.w r1,  -3552(r30)
001b94  7e0001e0  vmmov mr0, r2
001b98  1f014000  addli r2, zero, 32
001b9c  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
001ba0  e3404fe4  loadli.w r1,  -3548(r30)
001ba4  7e0001e0  vmmov mr0, r2
001ba8  1f018000  addli r2, zero, 64
001bac  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
001bb0  e3005fe4  loadli.w r1,  -3544(r30)
001bb4  7e0001e0  vmmov mr0, r2
001bb8  1f010001  addli r2, zero, 128
001bbc  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
001bc0  e3405fe4  loadli.w r1,  -3540(r30)
001bc4  7e0001e0  vmmov mr0, r2
001bc8  1f010002  addli r2, zero, 256
001bcc  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
001bd0  e3006fe4  loadli.w r1,  -3536(r30)
001bd4  7e0001e0  vmmov mr0, r2
001bd8  1f010010  addli r2, zero, 2048
001bdc  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
001be0  e3406fe4  loadli.w r1,  -3532(r30)
001be4  7e0001e0  vmmov mr0, r2
001be8  1f010020  addli r2, zero, 4096
001bec  6aa36036  vor.u.mh vr6{mr3}, r1, vr6
001bf0  e3007fe4  loadli.w r1,  -3528(r30)
001bf4  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
001bf8  e3407fe4  loadli.w r1,  -3524(r30)
001bfc  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
001c00  e3008fe4  loadli.w r1,  -3520(r30)
001c04  7e0001e0  vmmov mr0, r2
001c08  1f010040  addli r2, zero, 8192
001c0c  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
001c10  e3408fe4  loadli.w r1,  -3516(r30)
001c14  7e0001e0  vmmov mr0, r2
001c18  2b410000  lui r2, 4
001c1c  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
001c20  e3009fe4  loadli.w r1,  -3512(r30)
001c24  7e0001e0  vmmov mr0, r2
001c28  2b810000  lui r2, 8
001c2c  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
001c30  e3409fe4  loadli.w r1,  -3508(r30)
001c34  7e0001e0  vmmov mr0, r2
001c38  1f110000  addli r2, zero, 1
001c3c  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
001c40  e300afe4  loadli.w r1,  -3504(r30)
001c44  7e0001e0  vmmov mr0, r2
001c48  1f210000  addli r2, zero, 2
001c4c  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
001c50  e340afe4  loadli.w r1,  -3500(r30)
001c54  7e0001e0  vmmov mr0, r2
001c58  1f410000  addli r2, zero, 4
001c5c  96906002  vadd.f.mz.rn vr1{mr1}, vr1, vr6
001c60  92101602  vadd.f.mz.rn vr1{mr1}, r12, vr1
001c64  8a901502  vmul.f.mz.rn vr1{mr1}, r11, vr1
001c68  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
001c6c  e300bfe4  loadli.w r1,  -3496(r30)
001c70  7e0001e0  vmmov mr0, r2
001c74  1f011000  addli r2, zero, 8
001c78  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
001c7c  e340bfe4  loadli.w r1,  -3492(r30)
001c80  7e0001e0  vmmov mr0, r2
001c84  1f012000  addli r2, zero, 16
001c88  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
001c8c  e300cfe4  loadli.w r1,  -3488(r30)
001c90  7e0001e0  vmmov mr0, r2
001c94  1f014000  addli r2, zero, 32
001c98  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
001c9c  e340cfe4  loadli.w r1,  -3484(r30)
001ca0  7e0001e0  vmmov mr0, r2
001ca4  1f018000  addli r2, zero, 64
001ca8  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
001cac  e300dfe4  loadli.w r1,  -3480(r30)
001cb0  7e0001e0  vmmov mr0, r2
001cb4  1f010001  addli r2, zero, 128
001cb8  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
001cbc  e340dfe4  loadli.w r1,  -3476(r30)
001cc0  7e0001e0  vmmov mr0, r2
001cc4  1f010002  addli r2, zero, 256
001cc8  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
001ccc  e300efe4  loadli.w r1,  -3472(r30)
001cd0  7e0001e0  vmmov mr0, r2
001cd4  1f010010  addli r2, zero, 2048
001cd8  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
001cdc  e340efe4  loadli.w r1,  -3468(r30)
001ce0  7e0001e0  vmmov mr0, r2
001ce4  1f010020  addli r2, zero, 4096
001ce8  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
001cec  e300ffe4  loadli.w r1,  -3464(r30)
001cf0  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
001cf4  e340ffe4  loadli.w r1,  -3460(r30)
001cf8  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
001cfc  e3000fe5  loadli.w r1,  -3456(r30)
001d00  7e0001e0  vmmov mr0, r2
001d04  1f010040  addli r2, zero, 8192
001d08  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
001d0c  e3008fe5  loadli.w r1,  -3392(r30)
001d10  7e0001e0  vmmov mr0, r2
001d14  2b410000  lui r2, 4
001d18  7e0101e0  vmmov mr2, r2
001d1c  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
001d20  e3000fe6  loadli.w r1,  -3328(r30)
001d24  7e8001e0  vmmov mr0, r3
001d28  9f010000  addli r3, zero, 0
001d2c  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
001d30  e3000fe7  loadli.w r1,  -3200(r30)
001d34  1b811000  andi r2, r1, 1
001d38  e3008fe6  loadli.w r1,  -3264(r30)
001d3c  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
001d40  46103302  vstore_mask16.mz vr3{mr1}, 0(r6)
001d44  46142302  vstore_mask16.mz vr2{mr1}, 64(r6)
001d48  46181302  vstore_mask16.mz vr1{mr1}, 128(r6)
001d4c  9f000002  addli r1, zero, 256
001d50  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
001d54  12100602  vadd.f.mz.rn vr0{mr1}, r12, vr0
001d58  0a900502  vmul.f.mz.rn vr0{mr1}, r11, vr0
001d5c  461c0302  vstore_mask16.mz vr0{mr1}, 192(r6)
001d60  00a00000  mfence { lm }
001d64  3b3901fc  bneq r2, zero, -1460
001d68  1f04efe1  addli r8, r30, -3856
001d6c  eb510f01  load.d r[4:5], 16(r30)
001d70  ab0000f0  lui r1, 983040
001d74  1f0e0004  addli r28, zero, 512
001d78  e302ffe1  loadli.w r5,  -3848(r30)
001d7c  1f01000f  addli r2, zero, 1920
001d80  9f040ff8  addli r9, r30, -1024
001d84  6b530400  load.d r[7:8], 0(r8)
001d88  97101e00  or r1, r28, r1
001d8c  1f040ff4  addli r8, r30, -1536
001d90  13812204  setlt.u r2, r5, r2
001d94  8ba16110  add.ul r[4:5], r[4:5], r[7:8]
001d98  1f030ff0  addli r6, r30, -2048
001d9c  9f030fec  addli r7, r30, -2560
001da0  ffb07101  s_lm2gm r1, r23, 0(r[4:5])
001da4  9f800201  addli r1, r5, 128
001da8  00a00000  mfence { lm }
001dac  1f820000  addli r4, r1, 0
001db0  9f008fe2  addli r1, r30, -3776
001db4  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
001db8  9f100000  addli r1, zero, 1
001dbc  7e8100e0  vmmov mr2, r1
001dc0  3b6501fc  bneq r2, zero, -1704
001dc4  5b76fcff  j -7248
001dc8  9f0e8fe1  addli sp, r30, -3904
001dcc  9f8e8e1e  addli sp, sp, 3904
001dd0  00a00300  mfence { lm, sm, gm }
001dd4  00100000  exit
001dd8  00100000  exit
001ddc  00100000  exit
001de0  00100000  exit
001de4  00100000  exit
001de8  00100000  exit
001dec  00100000  exit
001df0  00100000  exit
001df4  00100000  exit
001df8  00100000  exit
001dfc  00100000  exit
001e00  00100000  exit
001e04  00100000  exit
001e08  00100000  exit
001e0c  00100000  exit
001e10  00100000  exit
001e14  00100000  exit
001e18  00100000  exit
001e1c  00100000  exit
001e20  00100000  exit
001e24  00100000  exit
001e28  00100000  exit
001e2c  00100000  exit
001e30  00100000  exit
001e34  00100000  exit
001e38  00100000  exit
001e3c  00100000  exit
001e40  00100000  exit
001e44  00100000  exit
001e48  00100000  exit
001e4c  00100000  exit
001e50  00100000  exit
001e54  00100000  exit
001e58  00100000  exit
001e5c  00100000  exit
001e60  00100000  exit
001e64  00100000  exit
001e68  00100000  exit
001e6c  00100000  exit
001e70  00100000  exit
001e74  00100000  exit
001e78  00100000  exit
001e7c  00100000  exit
001e80  00100000  exit
001e84  00100000  exit
001e88  00100000  exit
001e8c  00100000  exit
001e90  00100000  exit
001e94  00100000  exit
001e98  00100000  exit
001e9c  00100000  exit
001ea0  00100000  exit
001ea4  00100000  exit
001ea8  00100000  exit
001eac  00100000  exit
001eb0  00100000  exit
001eb4  00100000  exit
001eb8  00100000  exit
001ebc  00100000  exit
001ec0  00100000  exit
001ec4  00100000  exit
001ec8  00100000  exit
001ecc  00100000  exit
001ed0  00100000  exit
001ed4  00100000  exit
001ed8  00100000  exit
001edc  00100000  exit
001ee0  00100000  exit
001ee4  00100000  exit
001ee8  00100000  exit
001eec  00100000  exit
001ef0  00100000  exit
001ef4  00100000  exit
001ef8  00100000  exit
001efc  00100000  exit
001f00  00100000  exit
001f04  00100000  exit
001f08  00100000  exit
001f0c  00100000  exit
001f10  00100000  exit
001f14  00100000  exit
001f18  00100000  exit
001f1c  00100000  exit
001f20  00100000  exit
001f24  00100000  exit
001f28  00100000  exit
001f2c  00100000  exit
001f30  00100000  exit
001f34  00100000  exit
001f38  00100000  exit
001f3c  00100000  exit
001f40  00100000  exit
001f44  00100000  exit
001f48  00100000  exit
001f4c  00100000  exit
001f50  00100000  exit
001f54  00100000  exit
001f58  00100000  exit
001f5c  00100000  exit
001f60  00100000  exit
001f64  00100000  exit
001f68  00100000  exit
001f6c  00100000  exit
001f70  00100000  exit
001f74  00100000  exit
001f78  00100000  exit
001f7c  00100000  exit
001f80  00100000  exit
001f84  00100000  exit
001f88  00100000  exit
001f8c  00100000  exit
001f90  00100000  exit
001f94  00100000  exit
001f98  00100000  exit
001f9c  00100000  exit
001fa0  00100000  exit
001fa4  00100000  exit
001fa8  00100000  exit
001fac  00100000  exit
001fb0  00100000  exit
001fb4  00100000  exit
001fb8  00100000  exit
001fbc  00100000  exit
001fc0  00100000  exit
001fc4  00100000  exit
001fc8  00100000  exit
001fcc  00100000  exit
001fd0  00100000  exit
001fd4  00100000  exit
001fd8  00100000  exit
001fdc  00100000  exit
001fe0  00100000  exit
001fe4  00100000  exit
001fe8  00100000  exit
001fec  00100000  exit
001ff0  00100000  exit
001ff4  00100000  exit
001ff8  00100000  exit
001ffc  00100000  exit
002000  00100000  exit
002004  00100000  exit
002008  00100000  exit
00200c  00100000  exit
002010  00100000  exit
002014  00100000  exit
