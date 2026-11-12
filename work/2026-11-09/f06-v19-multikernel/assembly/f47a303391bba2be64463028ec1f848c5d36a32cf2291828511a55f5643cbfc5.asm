; SHA-256 f47a303391bba2be64463028ec1f848c5d36a32cf2291828511a55f5643cbfc5
; P800 Cluster · XTDK LLVM 19 · 677 / 677 words decoded
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
0000dc  9f8e8efb  addli sp, sp, -576
0000e0  ab000000  lui r1, 0
0000e4  80310002  core_id r3
0000e8  1f8f0e04  addli r30, sp, 512
0000ec  abf20000  lui r5, 15
0000f0  1bb12100  slli r2, r3, 2
0000f4  9f800000  addli r1, r1, 0
0000f8  e3435f00  loadli.w r7,  44(r30)
0000fc  63025f00  loadli.w r4,  40(r30)
000100  63036f00  loadli.w r6,  48(r30)
000104  1b99f2ff  ori r18, r5, 4095
000108  0b141110  add.s r8, r2, r1
00010c  0b924320  mul.s r4, r7, r4
000110  80530002  load_param_i r7, 0
000114  9f042440  addli r9, r8, 8208
000118  0b126220  mul.s r4, r4, r6
00011c  674a9ffc  storeli.w r9, -348(r30)
000120  73e00400  stores.w zero, 0(r9)
000124  00a00300  mfence { lm, sm, gm }
000128  80210904  csr_set csr3, r18
00012c  00d00100  sync_group
000130  e70a8ffc  storeli.w r8, -344(r30)
000134  73600400  stores.w zero, 0(r8)
000138  00a00300  mfence { lm, sm, gm }
00013c  80210904  csr_set csr3, r18
000140  00d00100  sync_group
000144  670a4ffc  storeli.w r4, -352(r30)
000148  4b497202  ble.s r4, r7, 1616
00014c  1f021000  addli r4, zero, 8
000150  80d20002  load_param_i r5, 1
000154  1b8a7100  andi r20, r3, 7
000158  2bf3ffff  lui r6, 1048575
00015c  1f2c0000  addli r24, zero, 2
000160  6b548f00  load.d r[9:10], 8(r30)
000164  eb5a0f00  load.d r[22:23], 0(r30)
000168  1f0d8ffe  addli r26, r30, -192
00016c  9f0c8000  addli r25, zero, 64
000170  9f0d0fff  addli r27, r30, -128
000174  1f0e0007  addli r28, zero, 896
000178  6e224262  vxor.u.mz vr4{mr1}, vr4, vr4
00017c  e7492ffd  storeli.w r18, -356(r30)
000180  46144fc2  vstore_mask16.mz vr4{mr1}, 1600(r30)
000184  0b924130  div.s r4, r3, r4
000188  e7095ffc  storeli.w r5, -360(r30)
00018c  67494ffd  storeli.w r20, -364(r30)
000190  9b323200  slli r5, r4, 3
000194  1b32a200  slli r4, r4, 10
000198  8b915118  sub.s r3, r3, r5
00019c  9b1203fe  ori r5, r6, 4064
0001a0  67094ffc  storeli.w r4, -368(r30)
0001a4  9bb14100  slli r3, r3, 4
0001a8  17015100  and r2, r2, r5
0001ac  b3920128  sext_int2long r[6:7], r3
0001b0  0b151110  add.s r10, r2, r1
0001b4  97b08203  sll.d r[2:3], r[6:7], r24
0001b8  670baffc  storeli.w r10, -336(r30)
0001bc  0b241410  add.ul r[9:10], r[9:10], r[2:3]
0001c0  9f002540  addli r1, r10, 8208
0001c4  e74a1ffc  storeli.w r1, -340(r30)
0001c8  8b103210  add.s r1, r4, r3
0001cc  733c8fea  store.d r[9:10], -328(r30)
0001d0  e7481ffc  storeli.w r1, -372(r30)
0001d4  9f100000  addli r1, zero, 1
0001d8  7e8100e0  vmmov mr2, r1
0001dc  9f200000  addli r1, zero, 2
0001e0  fe8100e0  vmmov mr3, r1
0001e4  ab10833a  lui r1, 239665
0001e8  9b90f026  ori r1, r1, 623
0001ec  e7431ffc  storeli.w r1, -452(r30)
0001f0  63016f00  loadli.w r2,  48(r30)
0001f4  e3415f00  loadli.w r3,  44(r30)
0001f8  674b7ffc  storeli.w r7, -332(r30)
0001fc  2b0200f0  lui r4, 983040
000200  12304002  vadd.s.mz vr0{mr1}, zero, vr4
000204  92304002  vadd.s.mz vr1{mr1}, zero, vr4
000208  9f000000  addli r1, zero, 0
00020c  0b912330  div.s r2, r7, r2
000210  9f430000  addli r7, zero, 4
000214  17924300  or r4, r7, r4
000218  0b113130  div.s r2, r2, r3
00021c  e3012ffd  loadli.w r3,  -368(r30)
000220  1b31d100  slli r2, r2, 13
000224  8b113110  add.s r3, r2, r3
000228  b3920128  sext_int2long r[6:7], r3
00022c  ab0100f0  lui r3, 983040
000230  97b28203  sll.d r[6:7], r[6:7], r24
000234  97913300  or r3, r7, r3
000238  9f038ffd  addli r7, r30, -320
00023c  8ba25a10  add.ul r[6:7], r[22:23], r[6:7]
000240  7fa27200  l_gm2lm r4, r7, 0(r[6:7])
000244  6b528f00  load.d r[5:6], 8(r30)
000248  1f030ffe  addli r6, r30, -256
00024c  ff216200  l_gm2lm r3, r6, 0(r[5:6])
000250  00a00000  mfence { lm }
000254  e3010ffe  loadli.w r3,  -256(r30)
000258  63028ffd  loadli.w r4,  -320(r30)
00025c  8be14110  add.f.rn r3, r3, r4
000260  8beb0158  neg.f r23, r3
000264  e3411ffd  loadli.w r3,  -372(r30)
000268  8b992110  add.s r19, r3, r2
00026c  0b911910  add.s r2, r19, r1
000270  ab0100f0  lui r3, 983040
000274  33830028  zext_int2long r[7:8], r1
000278  92314002  vadd.s.mz vr3{mr1}, zero, vr4
00027c  33120128  sext_int2long r[5:6], r2
000280  17913c00  or r2, r25, r3
000284  17328203  sll.d r[5:6], r[5:6], r24
000288  8ba14a10  add.ul r[4:5], r[22:23], r[5:6]
00028c  97328303  sll.d r[6:7], r[7:8], r24
000290  ab0300f0  lui r7, 983040
000294  8b225410  add.ul r[6:7], r[9:10], r[6:7]
000298  97937c00  or r7, r25, r7
00029c  7fa1a101  l_gm2lm r2, r26, 0(r[4:5])
0002a0  ffa3b201  l_gm2lm r7, r27, 0(r[6:7])
0002a4  00a00000  mfence { lm }
0002a8  42118fe2  vload_mask16.mz vr2{mr1}, 1856(r30)
0002ac  00a00000  mfence { lm }
0002b0  63010fff  loadli.w r2,  -128(r30)
0002b4  e3410fff  loadli.w r3,  -124(r30)
0002b8  63021fff  loadli.w r4,  -120(r30)
0002bc  e3421fff  loadli.w r5,  -116(r30)
0002c0  63032fff  loadli.w r6,  -112(r30)
0002c4  e3432fff  loadli.w r7,  -108(r30)
0002c8  63043fff  loadli.w r8,  -104(r30)
0002cc  e3443fff  loadli.w r9,  -100(r30)
0002d0  63054fff  loadli.w r10,  -96(r30)
0002d4  e3454fff  loadli.w r11,  -92(r30)
0002d8  63065fff  loadli.w r12,  -88(r30)
0002dc  e3465fff  loadli.w r13,  -84(r30)
0002e0  63076fff  loadli.w r14,  -80(r30)
0002e4  e3476fff  loadli.w r15,  -76(r30)
0002e8  63087fff  loadli.w r16,  -72(r30)
0002ec  e3487fff  loadli.w r17,  -68(r30)
0002f0  ea213134  vor.u.mh vr3{mr2}, r2, vr3
0002f4  1f410000  addli r2, zero, 4
0002f8  7e0001e0  vmmov mr0, r2
0002fc  1f011000  addli r2, zero, 8
000300  eaa13136  vor.u.mh vr3{mr3}, r3, vr3
000304  ea213230  vor.u.mh vr3{mr0}, r4, vr3
000308  7e0001e0  vmmov mr0, r2
00030c  1f012000  addli r2, zero, 16
000310  eaa13230  vor.u.mh vr3{mr0}, r5, vr3
000314  7e0001e0  vmmov mr0, r2
000318  1f014000  addli r2, zero, 32
00031c  ea213330  vor.u.mh vr3{mr0}, r6, vr3
000320  7e0001e0  vmmov mr0, r2
000324  1f018000  addli r2, zero, 64
000328  eaa13330  vor.u.mh vr3{mr0}, r7, vr3
00032c  7e0001e0  vmmov mr0, r2
000330  1f010001  addli r2, zero, 128
000334  ea213430  vor.u.mh vr3{mr0}, r8, vr3
000338  7e0001e0  vmmov mr0, r2
00033c  1f010002  addli r2, zero, 256
000340  eaa13430  vor.u.mh vr3{mr0}, r9, vr3
000344  7e0001e0  vmmov mr0, r2
000348  6b548feb  load.d r[9:10], -328(r30)
00034c  1f010004  addli r2, zero, 512
000350  ea213530  vor.u.mh vr3{mr0}, r10, vr3
000354  7e0001e0  vmmov mr0, r2
000358  1f010008  addli r2, zero, 1024
00035c  eaa13530  vor.u.mh vr3{mr0}, r11, vr3
000360  7e0001e0  vmmov mr0, r2
000364  1f010010  addli r2, zero, 2048
000368  ea213630  vor.u.mh vr3{mr0}, r12, vr3
00036c  7e0001e0  vmmov mr0, r2
000370  1f010020  addli r2, zero, 4096
000374  eaa13630  vor.u.mh vr3{mr0}, r13, vr3
000378  7e0001e0  vmmov mr0, r2
00037c  1f010040  addli r2, zero, 8192
000380  ea213730  vor.u.mh vr3{mr0}, r14, vr3
000384  7e0001e0  vmmov mr0, r2
000388  2b410000  lui r2, 4
00038c  eaa13730  vor.u.mh vr3{mr0}, r15, vr3
000390  7e0001e0  vmmov mr0, r2
000394  2b810000  lui r2, 8
000398  ea213830  vor.u.mh vr3{mr0}, r16, vr3
00039c  7e0001e0  vmmov mr0, r2
0003a0  1381c005  setlt.u r2, r1, r28
0003a4  9f800001  addli r1, r1, 128
0003a8  eaa13830  vor.u.mh vr3{mr0}, r17, vr3
0003ac  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0003b0  12912b02  vadd.f.mz.rn vr2{mr1}, r23, vr2
0003b4  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0003b8  26102102  vmac.f.mz.rn vr0{mr1}, vr2, vr2
0003bc  bb4a01fe  bneq r2, zero, -336
0003c0  fa900040  vextracti.f r1, 0(vr1)
0003c4  7a911040  vextracti.f r2, 1(vr1)
0003c8  8be02010  add.f.rn r1, r1, r2
0003cc  7a912040  vextracti.f r2, 2(vr1)
0003d0  8b601110  add.f.rn r1, r2, r1
0003d4  7a913040  vextracti.f r2, 3(vr1)
0003d8  8b601110  add.f.rn r1, r2, r1
0003dc  7a914040  vextracti.f r2, 4(vr1)
0003e0  8b601110  add.f.rn r1, r2, r1
0003e4  7a915040  vextracti.f r2, 5(vr1)
0003e8  8b601110  add.f.rn r1, r2, r1
0003ec  7a916040  vextracti.f r2, 6(vr1)
0003f0  8b601110  add.f.rn r1, r2, r1
0003f4  7a917040  vextracti.f r2, 7(vr1)
0003f8  8b601110  add.f.rn r1, r2, r1
0003fc  7a918040  vextracti.f r2, 8(vr1)
000400  8b601110  add.f.rn r1, r2, r1
000404  7a919040  vextracti.f r2, 9(vr1)
000408  8b601110  add.f.rn r1, r2, r1
00040c  7a91a040  vextracti.f r2, 10(vr1)
000410  8b601110  add.f.rn r1, r2, r1
000414  7a91b040  vextracti.f r2, 11(vr1)
000418  8b601110  add.f.rn r1, r2, r1
00041c  7a91c040  vextracti.f r2, 12(vr1)
000420  8b601110  add.f.rn r1, r2, r1
000424  7a91d040  vextracti.f r2, 13(vr1)
000428  8b601110  add.f.rn r1, r2, r1
00042c  7a91e040  vextracti.f r2, 14(vr1)
000430  8b601110  add.f.rn r1, r2, r1
000434  7a91f040  vextracti.f r2, 15(vr1)
000438  8b601110  add.f.rn r1, r2, r1
00043c  63015ffd  loadli.w r2,  -344(r30)
000440  73601100  stores.w r1, 0(r2)
000444  00a00300  mfence { lm, sm, gm }
000448  80210904  csr_set csr3, r18
00044c  00d00100  sync_group
000450  3b210a00  bneq r20, zero, 72
000454  63026ffd  loadli.w r4,  -336(r30)
000458  ef400200  loads.w r1, 0(r4)
00045c  6f414200  loads.w r2, 4(r4)
000460  ef418200  loads.w r3, 8(r4)
000464  8be02010  add.f.rn r1, r1, r2
000468  6f41c200  loads.w r2, 12(r4)
00046c  8be03010  add.f.rn r1, r1, r3
000470  ef410201  loads.w r3, 16(r4)
000474  8be02010  add.f.rn r1, r1, r2
000478  6f414201  loads.w r2, 20(r4)
00047c  8be03010  add.f.rn r1, r1, r3
000480  ef418201  loads.w r3, 24(r4)
000484  8be02010  add.f.rn r1, r1, r2
000488  6f41c201  loads.w r2, 28(r4)
00048c  8be03010  add.f.rn r1, r1, r3
000490  8be02010  add.f.rn r1, r1, r2
000494  73601200  stores.w r1, 0(r4)
000498  fa100040  vextracti.f r1, 0(vr0)
00049c  7a111040  vextracti.f r2, 1(vr0)
0004a0  00a00300  mfence { lm, sm, gm }
0004a4  80210904  csr_set csr3, r18
0004a8  00d00100  sync_group
0004ac  fa11f040  vextracti.f r3, 15(vr0)
0004b0  8be02010  add.f.rn r1, r1, r2
0004b4  7a112040  vextracti.f r2, 2(vr0)
0004b8  8b601110  add.f.rn r1, r2, r1
0004bc  7a113040  vextracti.f r2, 3(vr0)
0004c0  8b601110  add.f.rn r1, r2, r1
0004c4  7a114040  vextracti.f r2, 4(vr0)
0004c8  8b601110  add.f.rn r1, r2, r1
0004cc  7a115040  vextracti.f r2, 5(vr0)
0004d0  8b601110  add.f.rn r1, r2, r1
0004d4  7a116040  vextracti.f r2, 6(vr0)
0004d8  8b601110  add.f.rn r1, r2, r1
0004dc  7a117040  vextracti.f r2, 7(vr0)
0004e0  8b601110  add.f.rn r1, r2, r1
0004e4  7a118040  vextracti.f r2, 8(vr0)
0004e8  8b601110  add.f.rn r1, r2, r1
0004ec  7a119040  vextracti.f r2, 9(vr0)
0004f0  8b601110  add.f.rn r1, r2, r1
0004f4  7a11a040  vextracti.f r2, 10(vr0)
0004f8  8b601110  add.f.rn r1, r2, r1
0004fc  7a11b040  vextracti.f r2, 11(vr0)
000500  8b601110  add.f.rn r1, r2, r1
000504  7a11c040  vextracti.f r2, 12(vr0)
000508  8b601110  add.f.rn r1, r2, r1
00050c  7a11d040  vextracti.f r2, 13(vr0)
000510  8b601110  add.f.rn r1, r2, r1
000514  7a11e040  vextracti.f r2, 14(vr0)
000518  0b611110  add.f.rn r2, r2, r1
00051c  e3006ffd  loadli.w r1,  -336(r30)
000520  efc00000  loads.w r1, 0(r1)
000524  0be12110  add.f.rn r2, r3, r2
000528  e3414ffd  loadli.w r3,  -348(r30)
00052c  73e02100  stores.w r2, 0(r3)
000530  00a00300  mfence { lm, sm, gm }
000534  80210904  csr_set csr3, r18
000538  00d00100  sync_group
00053c  3b210a00  bneq r20, zero, 72
000540  e3425ffd  loadli.w r5,  -340(r30)
000544  6fc10200  loads.w r2, 0(r5)
000548  efc14200  loads.w r3, 4(r5)
00054c  6fc28200  loads.w r4, 8(r5)
000550  0b613110  add.f.rn r2, r2, r3
000554  efc1c200  loads.w r3, 12(r5)
000558  0b614110  add.f.rn r2, r2, r4
00055c  6fc20201  loads.w r4, 16(r5)
000560  0b613110  add.f.rn r2, r2, r3
000564  efc14201  loads.w r3, 20(r5)
000568  0b614110  add.f.rn r2, r2, r4
00056c  6fc28201  loads.w r4, 24(r5)
000570  0b613110  add.f.rn r2, r2, r3
000574  efc1c201  loads.w r3, 28(r5)
000578  0b614110  add.f.rn r2, r2, r4
00057c  0b613110  add.f.rn r2, r2, r3
000580  73e02200  stores.w r2, 0(r5)
000584  00a00300  mfence { lm, sm, gm }
000588  80210904  csr_set csr3, r18
00058c  00d00100  sync_group
000590  63415ffd  loadli.w r2,  -340(r30)
000594  ab01803a  lui r3, 239616
000598  0bed3020  mul.f.rn r26, r1, r3
00059c  6f410100  loads.w r2, 0(r2)
0005a0  8b603120  mul.f.rn r1, r2, r3
0005a4  0b61ad21  mul.f.rn r2, r26, r26
0005a8  9f010000  addli r3, zero, 0
0005ac  0be12018  sub.f.rn r2, r1, r2
0005b0  57f50000  jal 1960
0005b4  e3407ffc  loadli.w r1,  -452(r30)
0005b8  42128fc2  vload_mask16.mz vr4{mr1}, 1600(r30)
0005bc  1f120000  addli r4, zero, 1
0005c0  eb5a0f00  load.d r[22:23], 0(r30)
0005c4  eb5d8feb  load.d r[28:29], -328(r30)
0005c8  9f010000  addli r3, zero, 0
0005cc  7e0102e0  vmmov mr2, r4
0005d0  1f220000  addli r4, zero, 2
0005d4  8b601110  add.f.rn r1, r2, r1
0005d8  2b01803f  lui r2, 260096
0005dc  fe0102e0  vmmov mr3, r4
0005e0  8f800008  sqrt.f.rn r1, r1
0005e4  8f001118  div.f.rn r1, r2, r1
0005e8  0b610d58  neg.f r2, r26
0005ec  1f0d8ffe  addli r26, r30, -192
0005f0  0b923910  add.s r4, r19, r3
0005f4  2b0300f0  lui r6, 983040
0005f8  b3830128  zext_int2long r[8:9], r3
0005fc  ab0500f0  lui r11, 983040
000600  92304002  vadd.s.mz vr1{mr1}, zero, vr4
000604  33120228  sext_int2long r[5:6], r4
000608  97b38303  sll.d r[8:9], r[8:9], r24
00060c  17936c00  or r6, r25, r6
000610  9795bc00  or r11, r25, r11
000614  17328203  sll.d r[5:6], r[5:6], r24
000618  8ba37d10  add.ul r[8:9], r[28:29], r[8:9]
00061c  8ba44a10  add.ul r[10:11], r[22:23], r[5:6]
000620  7fa3a401  l_gm2lm r6, r26, 0(r[10:11])
000624  1f038fff  addli r6, r30, -64
000628  ffa56300  l_gm2lm r11, r6, 0(r[8:9])
00062c  00a00000  mfence { lm }
000630  42108fe2  vload_mask16.mz vr0{mr1}, 1856(r30)
000634  00a00000  mfence { lm }
000638  63038fff  loadli.w r6,  -64(r30)
00063c  e3438fff  loadli.w r7,  -60(r30)
000640  63049fff  loadli.w r8,  -56(r30)
000644  e3449fff  loadli.w r9,  -52(r30)
000648  6305afff  loadli.w r10,  -48(r30)
00064c  e345afff  loadli.w r11,  -44(r30)
000650  6306bfff  loadli.w r12,  -40(r30)
000654  e346bfff  loadli.w r13,  -36(r30)
000658  6307cfff  loadli.w r14,  -32(r30)
00065c  e347cfff  loadli.w r15,  -28(r30)
000660  6308dfff  loadli.w r16,  -24(r30)
000664  e348dfff  loadli.w r17,  -20(r30)
000668  6309efff  loadli.w r18,  -16(r30)
00066c  634defff  loadli.w r26,  -12(r30)
000670  630cffff  loadli.w r24,  -8(r30)
000674  634affff  loadli.w r20,  -4(r30)
000678  ea201334  vor.u.mh vr1{mr2}, r6, vr1
00067c  1f430000  addli r6, zero, 4
000680  7e0003e0  vmmov mr0, r6
000684  1f031000  addli r6, zero, 8
000688  eaa01336  vor.u.mh vr1{mr3}, r7, vr1
00068c  9f030007  addli r7, zero, 896
000690  93837104  setlt.u r7, r3, r7
000694  9f810101  addli r3, r3, 128
000698  ea201430  vor.u.mh vr1{mr0}, r8, vr1
00069c  7e0003e0  vmmov mr0, r6
0006a0  1f032000  addli r6, zero, 16
0006a4  eaa01430  vor.u.mh vr1{mr0}, r9, vr1
0006a8  7e0003e0  vmmov mr0, r6
0006ac  1f034000  addli r6, zero, 32
0006b0  6b540f01  load.d r[9:10], 16(r30)
0006b4  0b224410  add.ul r[5:6], r[9:10], r[5:6]
0006b8  ea201530  vor.u.mh vr1{mr0}, r10, vr1
0006bc  7e0003e0  vmmov mr0, r6
0006c0  1f038000  addli r6, zero, 64
0006c4  eaa01530  vor.u.mh vr1{mr0}, r11, vr1
0006c8  7e0003e0  vmmov mr0, r6
0006cc  1f030001  addli r6, zero, 128
0006d0  ea201630  vor.u.mh vr1{mr0}, r12, vr1
0006d4  7e0003e0  vmmov mr0, r6
0006d8  1f030002  addli r6, zero, 256
0006dc  eaa01630  vor.u.mh vr1{mr0}, r13, vr1
0006e0  7e0003e0  vmmov mr0, r6
0006e4  1f030004  addli r6, zero, 512
0006e8  ea201730  vor.u.mh vr1{mr0}, r14, vr1
0006ec  7e0003e0  vmmov mr0, r6
0006f0  1f030008  addli r6, zero, 1024
0006f4  eaa01730  vor.u.mh vr1{mr0}, r15, vr1
0006f8  7e0003e0  vmmov mr0, r6
0006fc  1f030010  addli r6, zero, 2048
000700  ea201830  vor.u.mh vr1{mr0}, r16, vr1
000704  7e0003e0  vmmov mr0, r6
000708  1f030020  addli r6, zero, 4096
00070c  eaa01830  vor.u.mh vr1{mr0}, r17, vr1
000710  7e0003e0  vmmov mr0, r6
000714  1f030040  addli r6, zero, 8192
000718  ea201930  vor.u.mh vr1{mr0}, r18, vr1
00071c  7e0003e0  vmmov mr0, r6
000720  2b430000  lui r6, 4
000724  ea201d30  vor.u.mh vr1{mr0}, r26, vr1
000728  7e0003e0  vmmov mr0, r6
00072c  2b830000  lui r6, 8
000730  1f0d8ffe  addli r26, r30, -192
000734  ea201c30  vor.u.mh vr1{mr0}, r24, vr1
000738  7e0003e0  vmmov mr0, r6
00073c  2b0300f0  lui r6, 983040
000740  1f2c0000  addli r24, zero, 2
000744  17936c00  or r6, r25, r6
000748  ea201a30  vor.u.mh vr1{mr0}, r20, vr1
00074c  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
000750  12900b02  vadd.f.mz.rn vr0{mr1}, r23, vr0
000754  12100102  vadd.f.mz.rn vr0{mr1}, r2, vr0
000758  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
00075c  46140fe2  vstore_mask16.mz vr0{mr1}, 1856(r30)
000760  00a00000  mfence { lm }
000764  7f33a201  s_lm2gm r6, r26, 0(r[5:6])
000768  00a00000  mfence { lm }
00076c  3b9a03fe  bneq r7, zero, -380
000770  e3436ffd  loadli.w r7,  -332(r30)
000774  e3003ffd  loadli.w r1,  -360(r30)
000778  63493ffd  loadli.w r18,  -356(r30)
00077c  634a2ffd  loadli.w r20,  -364(r30)
000780  27840d00  addli.d r[9:10], r[28:29], 0
000784  9f0d0fff  addli r27, r30, -128
000788  1f0e0007  addli r28, zero, 896
00078c  8b931310  add.s r7, r7, r1
000790  e3004ffd  loadli.w r1,  -352(r30)
000794  3ff913fc  blt.s r7, r1, -1444
000798  9f0e0ffc  addli sp, r30, -512
00079c  9f8e0e04  addli sp, sp, 512
0007a0  00a00300  mfence { lm, sm, gm }
0007a4  00100000  exit
0007a8  9f8efeff  addli sp, sp, -8
0007ac  9f000100  addli r1, r2, 0
0007b0  2bf1ff7f  lui r2, 524287
0007b4  ab02807f  lui r5, 522240
0007b8  67c0ee01  storeli.w r30, 4(sp)
0007bc  6780fe01  storeli.w r31, 0(sp)
0007c0  1f8f1e00  addli r30, sp, 8
0007c4  1b12f1ff  ori r4, r2, 4095
0007c8  17814000  and r2, r1, r4
0007cc  13832204  setlt.u r6, r5, r2
0007d0  1f810100  addli r2, r3, 0
0007d4  bb210300  bneq r6, zero, 104
0007d8  97014100  and r3, r2, r4
0007dc  93813204  setlt.u r3, r5, r3
0007e0  3be10100  bneq r3, zero, 88
0007e4  abf1ffff  lui r3, 1048575
0007e8  17221100  xor r4, r2, r1
0007ec  9b91f1ff  ori r3, r3, 4095
0007f0  3fa04100  blt.s r3, r4, 8
0007f4  5b0b0000  j 88
0007f8  9b319100  slli r3, r2, 9
0007fc  9bb29000  slli r5, r1, 9
000800  1b427101  srli r4, r2, 23
000804  1bc37001  srli r6, r1, 23
000808  93e32004  setlt.f r7, r1, r2
00080c  93810100  seteq r3, r3, zero
000810  93820200  seteq r5, r5, zero
000814  1b02f20f  andi r4, r4, 255
000818  1b03f30f  andi r6, r6, 255
00081c  1b72f20f  setlti r4, r4, 255
000820  1b73f30f  setlti r6, r6, 255
000824  97113200  or r3, r4, r3
000828  17125300  or r4, r6, r5
00082c  97013200  and r3, r4, r3
000830  97813300  and r3, r7, r3
000834  3ba00100  bneq r3, zero, 8
000838  1f810000  addli r2, r1, 0
00083c  e38f0e00  loadli.w r31,  0(sp)
000840  63cf0e00  loadli.w r30,  4(sp)
000844  9f8e1e00  addli sp, sp, 8
000848  5f800f00  jr r31, 0
00084c  bfcf00fe  blt.s r1, zero, -16
000850  5bfdffff  j -24
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
00098c  00100000  exit
000990  00100000  exit
000994  00100000  exit
000998  00100000  exit
00099c  00100000  exit
0009a0  00100000  exit
0009a4  00100000  exit
0009a8  00100000  exit
0009ac  00100000  exit
0009b0  00100000  exit
0009b4  00100000  exit
0009b8  00100000  exit
0009bc  00100000  exit
0009c0  00100000  exit
0009c4  00100000  exit
0009c8  00100000  exit
0009cc  00100000  exit
0009d0  00100000  exit
0009d4  00100000  exit
0009d8  00100000  exit
0009dc  00100000  exit
0009e0  00100000  exit
0009e4  00100000  exit
0009e8  00100000  exit
0009ec  00100000  exit
0009f0  00100000  exit
0009f4  00100000  exit
0009f8  00100000  exit
0009fc  00100000  exit
000a00  00100000  exit
000a04  00100000  exit
000a08  00100000  exit
000a0c  00100000  exit
000a10  00100000  exit
000a14  00100000  exit
000a18  00100000  exit
000a1c  00100000  exit
000a20  00100000  exit
000a24  00100000  exit
000a28  00100000  exit
000a2c  00100000  exit
000a30  00100000  exit
000a34  00100000  exit
000a38  00100000  exit
000a3c  00100000  exit
000a40  00100000  exit
000a44  00100000  exit
000a48  00100000  exit
000a4c  00100000  exit
000a50  00100000  exit
000a54  00100000  exit
000a58  00100000  exit
000a5c  00100000  exit
000a60  00100000  exit
000a64  00100000  exit
000a68  00100000  exit
000a6c  00100000  exit
000a70  00100000  exit
000a74  00100000  exit
000a78  00100000  exit
000a7c  00100000  exit
000a80  00100000  exit
000a84  00100000  exit
000a88  00100000  exit
000a8c  00100000  exit
000a90  00100000  exit
