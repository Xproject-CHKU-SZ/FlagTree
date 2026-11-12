; SHA-256 0c0020b19844fd573fa66e9c9e8c1bce420245b0a813b5c83283385067e4a844
; P800 Cluster · XTDK LLVM 19 · 1161 / 1161 words decoded
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
0000dc  9f8e0ef8  addli sp, sp, -1024
0000e0  2b010000  lui r2, 0
0000e4  80300002  core_id r1
0000e8  1f8f8e07  addli r30, sp, 960
0000ec  abf20000  lui r5, 15
0000f0  80560002  load_param_i r13, 0
0000f4  9bb12000  slli r3, r1, 2
0000f8  1f010100  addli r2, r2, 0
0000fc  e3435f00  loadli.w r7,  44(r30)
000100  63025f00  loadli.w r4,  40(r30)
000104  63036f00  loadli.w r6,  48(r30)
000108  9b92f2ff  ori r5, r5, 4095
00010c  0b942110  add.s r8, r3, r2
000110  0b924320  mul.s r4, r7, r4
000114  9f042440  addli r9, r8, 8208
000118  0b126220  mul.s r4, r4, r6
00011c  67419ffa  storeli.w r9, -748(r30)
000120  73e00400  stores.w zero, 0(r9)
000124  00a00300  mfence { lm, sm, gm }
000128  80a10204  csr_set csr3, r5
00012c  00d00100  sync_group
000130  e7018ffa  storeli.w r8, -744(r30)
000134  73600400  stores.w zero, 0(r8)
000138  00a00300  mfence { lm, sm, gm }
00013c  67015ffa  storeli.w r5, -752(r30)
000140  80a10204  csr_set csr3, r5
000144  00d00100  sync_group
000148  e7404ffa  storeli.w r4, -756(r30)
00014c  4b77d206  ble.s r4, r13, 3548
000150  1f021000  addli r4, zero, 8
000154  80d40002  load_param_i r9, 1
000158  2bf5ffff  lui r10, 1048575
00015c  1f2a0000  addli r20, zero, 2
000160  eb538f01  load.d r[8:9], 24(r30)
000164  eb520f02  load.d r[6:7], 32(r30)
000168  6b578f00  load.d r[15:16], 8(r30)
00016c  6b580f00  load.d r[17:18], 0(r30)
000170  9f0a0001  addli r21, zero, 128
000174  6e248462  vxor.u.mz vr8{mr1}, vr8, vr8
000178  46188f82  vstore_mask16.mz vr8{mr1}, 1152(r30)
00017c  0b924030  div.s r4, r1, r4
000180  e7009ffa  storeli.w r9, -760(r30)
000184  1b1505fe  ori r10, r10, 4064
000188  9781a100  and r3, r3, r10
00018c  0b912110  add.s r2, r3, r2
000190  9b343200  slli r9, r4, 3
000194  67022ffa  storeli.w r2, -736(r30)
000198  1b32a200  slli r4, r4, 10
00019c  8b949018  sub.s r9, r1, r9
0001a0  9b807000  andi r1, r1, 7
0001a4  67404ffa  storeli.w r4, -764(r30)
0001a8  9bb45400  slli r9, r9, 5
0001ac  67001ffa  storeli.w r1, -768(r30)
0001b0  9f002140  addli r1, r2, 8208
0001b4  b3950428  sext_int2long r[12:13], r9
0001b8  e7411ffa  storeli.w r1, -740(r30)
0001bc  17b54503  sll.d r[11:12], r[12:13], r20
0001c0  8ba0a310  add.ul r[2:3], r[8:9], r[11:12]
0001c4  0b27a710  add.ul r[15:16], r[15:16], r[11:12]
0001c8  1f040ffd  addli r8, r30, -384
0001cc  73381fd2  store.d r[2:3], -720(r30)
0001d0  8ba0a210  add.ul r[2:3], r[6:7], r[11:12]
0001d4  733cefd6  store.d r[15:16], -648(r30)
0001d8  73341fd2  store.d r[2:3], -728(r30)
0001dc  8b109210  add.s r1, r4, r9
0001e0  9f040ffe  addli r9, r30, -256
0001e4  e74f1ff8  storeli.w r1, -772(r30)
0001e8  ab10833a  lui r1, 239665
0001ec  9b90f026  ori r1, r1, 623
0001f0  e7471ff8  storeli.w r1, -900(r30)
0001f4  63016f00  loadli.w r2,  48(r30)
0001f8  e3415f00  loadli.w r3,  44(r30)
0001fc  2b0200f0  lui r4, 983040
000200  9f430000  addli r7, zero, 4
000204  6742dffa  storeli.w r13, -732(r30)
000208  12308002  vadd.s.mz vr0{mr1}, zero, vr8
00020c  92308002  vadd.s.mz vr1{mr1}, zero, vr8
000210  9f000000  addli r1, zero, 0
000214  17924300  or r4, r7, r4
000218  0b912630  div.s r2, r13, r2
00021c  0b113130  div.s r2, r2, r3
000220  e3410ffa  loadli.w r3,  -764(r30)
000224  1b31d100  slli r2, r2, 13
000228  8b113110  add.s r3, r2, r3
00022c  b3920128  sext_int2long r[6:7], r3
000230  ab0100f0  lui r3, 983040
000234  97b24203  sll.d r[6:7], r[6:7], r20
000238  97913300  or r3, r7, r3
00023c  9f030ffc  addli r7, r30, -512
000240  8b225810  add.ul r[6:7], r[17:18], r[6:7]
000244  7fa27200  l_gm2lm r4, r7, 0(r[6:7])
000248  6b528f00  load.d r[5:6], 8(r30)
00024c  1f038ffc  addli r6, r30, -448
000250  ff216200  l_gm2lm r3, r6, 0(r[5:6])
000254  00a00000  mfence { lm }
000258  46188fa2  vstore_mask16.mz vr8{mr1}, 1408(r30)
00025c  e3018ffc  loadli.w r3,  -448(r30)
000260  63020ffc  loadli.w r4,  -512(r30)
000264  461c8fa2  vstore_mask16.mz vr8{mr1}, 1472(r30)
000268  00a00000  mfence { lm }
00026c  00a00000  mfence { lm }
000270  8be14110  add.f.rn r3, r3, r4
000274  0be20158  neg.f r4, r3
000278  e341fff9  loadli.w r3,  -772(r30)
00027c  67474ffa  storeli.w r4, -652(r30)
000280  0b9b2110  add.s r22, r3, r2
000284  67076ffb  storeli.w r22, -656(r30)
000288  0b111b10  add.s r2, r22, r1
00028c  2b0200f0  lui r4, 983040
000290  42110fa3  vload_mask16.mz vr2{mr1}, 1408(r30)
000294  12338002  vadd.s.mz vr6{mr1}, zero, vr8
000298  92338002  vadd.s.mz vr7{mr1}, zero, vr8
00029c  33110128  sext_int2long r[3:4], r2
0002a0  17924a00  or r4, r21, r4
0002a4  17314103  sll.d r[3:4], r[3:4], r20
0002a8  0b212810  add.ul r[3:4], r[17:18], r[3:4]
0002ac  7f228100  l_gm2lm r4, r8, 0(r[3:4])
0002b0  33810028  zext_int2long r[3:4], r1
0002b4  2b0200f0  lui r4, 983040
0002b8  c2118fa3  vload_mask16.mz vr3{mr1}, 1472(r30)
0002bc  17314103  sll.d r[3:4], r[3:4], r20
0002c0  17924a00  or r4, r21, r4
0002c4  0b212710  add.ul r[3:4], r[15:16], r[3:4]
0002c8  7f229100  l_gm2lm r4, r9, 0(r[3:4])
0002cc  00a00000  mfence { lm }
0002d0  42120fc3  vload_mask16.mz vr4{mr1}, 1664(r30)
0002d4  c2128fc3  vload_mask16.mz vr5{mr1}, 1728(r30)
0002d8  e303dffe  loadli.w r7,  -152(r30)
0002dc  e3050ffe  loadli.w r11,  -256(r30)
0002e0  63460ffe  loadli.w r12,  -252(r30)
0002e4  e3061ffe  loadli.w r13,  -248(r30)
0002e8  63471ffe  loadli.w r14,  -244(r30)
0002ec  e3072ffe  loadli.w r15,  -240(r30)
0002f0  63482ffe  loadli.w r16,  -236(r30)
0002f4  e3083ffe  loadli.w r17,  -232(r30)
0002f8  63493ffe  loadli.w r18,  -228(r30)
0002fc  630c4ffe  loadli.w r24,  -224(r30)
000300  634b4ffe  loadli.w r22,  -220(r30)
000304  e30b5ffe  loadli.w r23,  -216(r30)
000308  e34a5ffe  loadli.w r21,  -212(r30)
00030c  630a6ffe  loadli.w r20,  -208(r30)
000310  e34c6ffe  loadli.w r25,  -204(r30)
000314  e30d7ffe  loadli.w r27,  -200(r30)
000318  e3497ffe  loadli.w r19,  -196(r30)
00031c  630e8ffe  loadli.w r28,  -192(r30)
000320  634d8ffe  loadli.w r26,  -188(r30)
000324  63019ffe  loadli.w r2,  -184(r30)
000328  e3419ffe  loadli.w r3,  -180(r30)
00032c  6302affe  loadli.w r4,  -176(r30)
000330  e342affe  loadli.w r5,  -172(r30)
000334  6303bffe  loadli.w r6,  -168(r30)
000338  6345bffe  loadli.w r10,  -164(r30)
00033c  e304cffe  loadli.w r9,  -160(r30)
000340  6344cffe  loadli.w r8,  -156(r30)
000344  e7447ffa  storeli.w r7, -692(r30)
000348  e343dffe  loadli.w r7,  -148(r30)
00034c  67057ffa  storeli.w r7, -688(r30)
000350  e303effe  loadli.w r7,  -144(r30)
000354  67457ffa  storeli.w r7, -684(r30)
000358  e343effe  loadli.w r7,  -140(r30)
00035c  e7057ffa  storeli.w r7, -680(r30)
000360  e303fffe  loadli.w r7,  -136(r30)
000364  67467ffa  storeli.w r7, -668(r30)
000368  e343fffe  loadli.w r7,  -132(r30)
00036c  e7067ffa  storeli.w r7, -664(r30)
000370  9f130000  addli r7, zero, 1
000374  00a00000  mfence { lm }
000378  fe8103e0  vmmov mr3, r7
00037c  9f230000  addli r7, zero, 2
000380  6aa36536  vor.u.mh vr6{mr3}, r11, vr6
000384  9f050006  addli r11, zero, 768
000388  7e8103e0  vmmov mr2, r7
00038c  9f430000  addli r7, zero, 4
000390  7e8003e0  vmmov mr0, r7
000394  9f031000  addli r7, zero, 8
000398  6a236634  vor.u.mh vr6{mr2}, r12, vr6
00039c  6aa36630  vor.u.mh vr6{mr0}, r13, vr6
0003a0  7e8003e0  vmmov mr0, r7
0003a4  9f032000  addli r7, zero, 16
0003a8  6a236730  vor.u.mh vr6{mr0}, r14, vr6
0003ac  7e8003e0  vmmov mr0, r7
0003b0  9f034000  addli r7, zero, 32
0003b4  6aa36730  vor.u.mh vr6{mr0}, r15, vr6
0003b8  7e8003e0  vmmov mr0, r7
0003bc  6b578fd7  load.d r[15:16], -648(r30)
0003c0  9f038000  addli r7, zero, 64
0003c4  6a236830  vor.u.mh vr6{mr0}, r16, vr6
0003c8  7e8003e0  vmmov mr0, r7
0003cc  9f030001  addli r7, zero, 128
0003d0  6aa36830  vor.u.mh vr6{mr0}, r17, vr6
0003d4  7e8003e0  vmmov mr0, r7
0003d8  9f030002  addli r7, zero, 256
0003dc  6b580f00  load.d r[17:18], 0(r30)
0003e0  6a236930  vor.u.mh vr6{mr0}, r18, vr6
0003e4  7e8003e0  vmmov mr0, r7
0003e8  9f030004  addli r7, zero, 512
0003ec  6a236c30  vor.u.mh vr6{mr0}, r24, vr6
0003f0  7e8003e0  vmmov mr0, r7
0003f4  9f030008  addli r7, zero, 1024
0003f8  6a236b30  vor.u.mh vr6{mr0}, r22, vr6
0003fc  7e8003e0  vmmov mr0, r7
000400  630beffa  loadli.w r22,  -656(r30)
000404  9f030010  addli r7, zero, 2048
000408  6aa36b30  vor.u.mh vr6{mr0}, r23, vr6
00040c  7e8003e0  vmmov mr0, r7
000410  9f030020  addli r7, zero, 4096
000414  6aa36a30  vor.u.mh vr6{mr0}, r21, vr6
000418  7e8003e0  vmmov mr0, r7
00041c  9f030040  addli r7, zero, 8192
000420  9f0a0001  addli r21, zero, 128
000424  6a236a30  vor.u.mh vr6{mr0}, r20, vr6
000428  7e8003e0  vmmov mr0, r7
00042c  ab430000  lui r7, 4
000430  1f2a0000  addli r20, zero, 2
000434  6aa36c30  vor.u.mh vr6{mr0}, r25, vr6
000438  7e8003e0  vmmov mr0, r7
00043c  ab830000  lui r7, 8
000440  6aa36d30  vor.u.mh vr6{mr0}, r27, vr6
000444  7e8003e0  vmmov mr0, r7
000448  9f430000  addli r7, zero, 4
00044c  6aa36930  vor.u.mh vr6{mr0}, r19, vr6
000450  ea237e36  vor.u.mh vr7{mr3}, r28, vr7
000454  ea237d34  vor.u.mh vr7{mr2}, r26, vr7
000458  7e8103e0  vmmov mr2, r7
00045c  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
000460  ea237134  vor.u.mh vr7{mr2}, r2, vr7
000464  1f011000  addli r2, zero, 8
000468  7e0101e0  vmmov mr2, r2
00046c  1f012000  addli r2, zero, 16
000470  eaa37134  vor.u.mh vr7{mr2}, r3, vr7
000474  7e0101e0  vmmov mr2, r2
000478  1f014000  addli r2, zero, 32
00047c  9f010008  addli r3, zero, 1024
000480  ea237234  vor.u.mh vr7{mr2}, r4, vr7
000484  7e0101e0  vmmov mr2, r2
000488  1f018000  addli r2, zero, 64
00048c  eaa37234  vor.u.mh vr7{mr2}, r5, vr7
000490  7e0101e0  vmmov mr2, r2
000494  1f010001  addli r2, zero, 128
000498  ea237334  vor.u.mh vr7{mr2}, r6, vr7
00049c  7e0101e0  vmmov mr2, r2
0004a0  1f010002  addli r2, zero, 256
0004a4  ea237534  vor.u.mh vr7{mr2}, r10, vr7
0004a8  7e0101e0  vmmov mr2, r2
0004ac  1f010004  addli r2, zero, 512
0004b0  eaa37434  vor.u.mh vr7{mr2}, r9, vr7
0004b4  7e0101e0  vmmov mr2, r2
0004b8  9f040ffe  addli r9, r30, -256
0004bc  ea237434  vor.u.mh vr7{mr2}, r8, vr7
0004c0  63419ffa  loadli.w r2,  -692(r30)
0004c4  7e8101e0  vmmov mr2, r3
0004c8  9f010010  addli r3, zero, 2048
0004cc  1f040ffd  addli r8, r30, -384
0004d0  ea237134  vor.u.mh vr7{mr2}, r2, vr7
0004d4  6301affa  loadli.w r2,  -688(r30)
0004d8  7e8101e0  vmmov mr2, r3
0004dc  6342effa  loadli.w r4,  -652(r30)
0004e0  9f010020  addli r3, zero, 4096
0004e4  12124202  vadd.f.mz.rn vr4{mr1}, r4, vr4
0004e8  16114102  vadd.f.mz.rn vr2{mr1}, vr2, vr4
0004ec  26104202  vmac.f.mz.rn vr0{mr1}, vr4, vr4
0004f0  ea237134  vor.u.mh vr7{mr2}, r2, vr7
0004f4  6341affa  loadli.w r2,  -684(r30)
0004f8  7e8101e0  vmmov mr2, r3
0004fc  9f010040  addli r3, zero, 8192
000500  ea237134  vor.u.mh vr7{mr2}, r2, vr7
000504  6301bffa  loadli.w r2,  -680(r30)
000508  7e8101e0  vmmov mr2, r3
00050c  ab410000  lui r3, 4
000510  ea237134  vor.u.mh vr7{mr2}, r2, vr7
000514  6341cffa  loadli.w r2,  -668(r30)
000518  7e8101e0  vmmov mr2, r3
00051c  ea237134  vor.u.mh vr7{mr2}, r2, vr7
000520  6301dffa  loadli.w r2,  -664(r30)
000524  ea237130  vor.u.mh vr7{mr0}, r2, vr7
000528  1381b004  setlt.u r2, r1, r11
00052c  46182fa2  vstore_mask16.mz vr2{mr1}, 1408(r30)
000530  9f800002  addli r1, r1, 256
000534  96927202  vadd.f.mz.rn vr5{mr1}, vr5, vr7
000538  92125202  vadd.f.mz.rn vr5{mr1}, r4, vr5
00053c  96915102  vadd.f.mz.rn vr3{mr1}, vr3, vr5
000540  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000544  461c3fa2  vstore_mask16.mz vr3{mr1}, 1472(r30)
000548  00a00000  mfence { lm }
00054c  00a00000  mfence { lm }
000550  bb6401fe  bneq r2, zero, -712
000554  42110fa3  vload_mask16.mz vr2{mr1}, 1408(r30)
000558  c2118fa3  vload_mask16.mz vr3{mr1}, 1472(r30)
00055c  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000560  fa100140  vextracti.f r1, 0(vr2)
000564  7a111140  vextracti.f r2, 1(vr2)
000568  8be02010  add.f.rn r1, r1, r2
00056c  7a112140  vextracti.f r2, 2(vr2)
000570  8b601110  add.f.rn r1, r2, r1
000574  7a113140  vextracti.f r2, 3(vr2)
000578  8b601110  add.f.rn r1, r2, r1
00057c  7a114140  vextracti.f r2, 4(vr2)
000580  8b601110  add.f.rn r1, r2, r1
000584  7a115140  vextracti.f r2, 5(vr2)
000588  8b601110  add.f.rn r1, r2, r1
00058c  7a116140  vextracti.f r2, 6(vr2)
000590  8b601110  add.f.rn r1, r2, r1
000594  7a117140  vextracti.f r2, 7(vr2)
000598  8b601110  add.f.rn r1, r2, r1
00059c  7a118140  vextracti.f r2, 8(vr2)
0005a0  8b601110  add.f.rn r1, r2, r1
0005a4  7a119140  vextracti.f r2, 9(vr2)
0005a8  8b601110  add.f.rn r1, r2, r1
0005ac  7a11a140  vextracti.f r2, 10(vr2)
0005b0  8b601110  add.f.rn r1, r2, r1
0005b4  7a11b140  vextracti.f r2, 11(vr2)
0005b8  8b601110  add.f.rn r1, r2, r1
0005bc  7a11c140  vextracti.f r2, 12(vr2)
0005c0  8b601110  add.f.rn r1, r2, r1
0005c4  7a11d140  vextracti.f r2, 13(vr2)
0005c8  8b601110  add.f.rn r1, r2, r1
0005cc  7a11e140  vextracti.f r2, 14(vr2)
0005d0  8b601110  add.f.rn r1, r2, r1
0005d4  7a11f140  vextracti.f r2, 15(vr2)
0005d8  8b601110  add.f.rn r1, r2, r1
0005dc  63013ffa  loadli.w r2,  -744(r30)
0005e0  73601100  stores.w r1, 0(r2)
0005e4  00a00300  mfence { lm, sm, gm }
0005e8  e3022ffa  loadli.w r5,  -752(r30)
0005ec  80a10204  csr_set csr3, r5
0005f0  00d00100  sync_group
0005f4  63030ffa  loadli.w r6,  -768(r30)
0005f8  3b210300  bneq r6, zero, 72
0005fc  63024ffa  loadli.w r4,  -736(r30)
000600  ef400200  loads.w r1, 0(r4)
000604  6f414200  loads.w r2, 4(r4)
000608  ef418200  loads.w r3, 8(r4)
00060c  8be02010  add.f.rn r1, r1, r2
000610  6f41c200  loads.w r2, 12(r4)
000614  8be03010  add.f.rn r1, r1, r3
000618  ef410201  loads.w r3, 16(r4)
00061c  8be02010  add.f.rn r1, r1, r2
000620  6f414201  loads.w r2, 20(r4)
000624  8be03010  add.f.rn r1, r1, r3
000628  ef418201  loads.w r3, 24(r4)
00062c  8be02010  add.f.rn r1, r1, r2
000630  6f41c201  loads.w r2, 28(r4)
000634  8be03010  add.f.rn r1, r1, r3
000638  8be02010  add.f.rn r1, r1, r2
00063c  73601200  stores.w r1, 0(r4)
000640  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
000644  00a00300  mfence { lm, sm, gm }
000648  80a10204  csr_set csr3, r5
00064c  00d00100  sync_group
000650  fa100040  vextracti.f r1, 0(vr0)
000654  7a111040  vextracti.f r2, 1(vr0)
000658  fa11f040  vextracti.f r3, 15(vr0)
00065c  8be02010  add.f.rn r1, r1, r2
000660  7a112040  vextracti.f r2, 2(vr0)
000664  8b601110  add.f.rn r1, r2, r1
000668  7a113040  vextracti.f r2, 3(vr0)
00066c  8b601110  add.f.rn r1, r2, r1
000670  7a114040  vextracti.f r2, 4(vr0)
000674  8b601110  add.f.rn r1, r2, r1
000678  7a115040  vextracti.f r2, 5(vr0)
00067c  8b601110  add.f.rn r1, r2, r1
000680  7a116040  vextracti.f r2, 6(vr0)
000684  8b601110  add.f.rn r1, r2, r1
000688  7a117040  vextracti.f r2, 7(vr0)
00068c  8b601110  add.f.rn r1, r2, r1
000690  7a118040  vextracti.f r2, 8(vr0)
000694  8b601110  add.f.rn r1, r2, r1
000698  7a119040  vextracti.f r2, 9(vr0)
00069c  8b601110  add.f.rn r1, r2, r1
0006a0  7a11a040  vextracti.f r2, 10(vr0)
0006a4  8b601110  add.f.rn r1, r2, r1
0006a8  7a11b040  vextracti.f r2, 11(vr0)
0006ac  8b601110  add.f.rn r1, r2, r1
0006b0  7a11c040  vextracti.f r2, 12(vr0)
0006b4  8b601110  add.f.rn r1, r2, r1
0006b8  7a11d040  vextracti.f r2, 13(vr0)
0006bc  8b601110  add.f.rn r1, r2, r1
0006c0  7a11e040  vextracti.f r2, 14(vr0)
0006c4  0b611110  add.f.rn r2, r2, r1
0006c8  e3004ffa  loadli.w r1,  -736(r30)
0006cc  efc00000  loads.w r1, 0(r1)
0006d0  0be12110  add.f.rn r2, r3, r2
0006d4  e3412ffa  loadli.w r3,  -748(r30)
0006d8  73e02100  stores.w r2, 0(r3)
0006dc  00a00300  mfence { lm, sm, gm }
0006e0  80a10204  csr_set csr3, r5
0006e4  00d00100  sync_group
0006e8  3b210300  bneq r6, zero, 72
0006ec  63433ffa  loadli.w r6,  -740(r30)
0006f0  6f410300  loads.w r2, 0(r6)
0006f4  ef414300  loads.w r3, 4(r6)
0006f8  6f428300  loads.w r4, 8(r6)
0006fc  0b613110  add.f.rn r2, r2, r3
000700  ef41c300  loads.w r3, 12(r6)
000704  0b614110  add.f.rn r2, r2, r4
000708  6f420301  loads.w r4, 16(r6)
00070c  0b613110  add.f.rn r2, r2, r3
000710  ef414301  loads.w r3, 20(r6)
000714  0b614110  add.f.rn r2, r2, r4
000718  6f428301  loads.w r4, 24(r6)
00071c  0b613110  add.f.rn r2, r2, r3
000720  ef41c301  loads.w r3, 28(r6)
000724  0b614110  add.f.rn r2, r2, r4
000728  0b613110  add.f.rn r2, r2, r3
00072c  73602300  stores.w r2, 0(r6)
000730  00a00300  mfence { lm, sm, gm }
000734  80a10204  csr_set csr3, r5
000738  00d00100  sync_group
00073c  63413ffa  loadli.w r2,  -740(r30)
000740  ab01803a  lui r3, 239616
000744  8be93020  mul.f.rn r19, r1, r3
000748  6f410100  loads.w r2, 0(r2)
00074c  8b603120  mul.f.rn r1, r2, r3
000750  0be13921  mul.f.rn r2, r19, r19
000754  9f010000  addli r3, zero, 0
000758  0be12018  sub.f.rn r2, r1, r2
00075c  57e70100  jal 3896
000760  e340fff8  loadli.w r1,  -900(r30)
000764  42140f83  vload_mask16.mz vr8{mr1}, 1152(r30)
000768  9f010ffb  addli r3, r30, -640
00076c  8b601110  add.f.rn r1, r2, r1
000770  2b01803f  lui r2, 260096
000774  8f800008  sqrt.f.rn r1, r1
000778  8f001118  div.f.rn r1, r2, r1
00077c  67041ffa  storeli.w r1, -704(r30)
000780  8be00958  neg.f r1, r19
000784  e7431ffa  storeli.w r1, -708(r30)
000788  9f000000  addli r1, zero, 0
00078c  0b121b10  add.s r4, r22, r1
000790  67461ffa  storeli.w r1, -668(r30)
000794  b3830028  zext_int2long r[8:9], r1
000798  eb500f00  load.d r[2:3], 0(r30)
00079c  2b0300f0  lui r6, 983040
0007a0  92318002  vadd.s.mz vr3{mr1}, zero, vr8
0007a4  12328002  vadd.s.mz vr4{mr1}, zero, vr8
0007a8  12308002  vadd.s.mz vr0{mr1}, zero, vr8
0007ac  92328002  vadd.s.mz vr5{mr1}, zero, vr8
0007b0  33120228  sext_int2long r[5:6], r4
0007b4  97946a00  or r9, r21, r6
0007b8  17324203  sll.d r[5:6], r[5:6], r20
0007bc  0ba54010  add.ul r[11:12], r[2:3], r[5:6]
0007c0  eb508fd7  load.d r[2:3], -648(r30)
0007c4  73344fd6  store.d r[5:6], -664(r30)
0007c8  17b24303  sll.d r[5:6], r[8:9], r20
0007cc  2b0400f0  lui r8, 983040
0007d0  17948a00  or r8, r21, r8
0007d4  733c4fd4  store.d r[5:6], -680(r30)
0007d8  ff243500  l_gm2lm r9, r3, 0(r[11:12])
0007dc  0ba64010  add.ul r[13:14], r[2:3], r[5:6]
0007e0  9f000ffe  addli r1, r30, -256
0007e4  7f241600  l_gm2lm r8, r1, 0(r[13:14])
0007e8  00a00000  mfence { lm }
0007ec  42110fa3  vload_mask16.mz vr2{mr1}, 1408(r30)
0007f0  c2108fa3  vload_mask16.mz vr1{mr1}, 1472(r30)
0007f4  6346dffe  loadli.w r12,  -148(r30)
0007f8  63090ffe  loadli.w r18,  -256(r30)
0007fc  e3490ffe  loadli.w r19,  -252(r30)
000800  630a1ffe  loadli.w r20,  -248(r30)
000804  e34a1ffe  loadli.w r21,  -244(r30)
000808  630b2ffe  loadli.w r22,  -240(r30)
00080c  e34b2ffe  loadli.w r23,  -236(r30)
000810  630c3ffe  loadli.w r24,  -232(r30)
000814  e34c3ffe  loadli.w r25,  -228(r30)
000818  630d4ffe  loadli.w r26,  -224(r30)
00081c  e34d4ffe  loadli.w r27,  -220(r30)
000820  630e5ffe  loadli.w r28,  -216(r30)
000824  e3405ffe  loadli.w r1,  -212(r30)
000828  63016ffe  loadli.w r2,  -208(r30)
00082c  e3416ffe  loadli.w r3,  -204(r30)
000830  63027ffe  loadli.w r4,  -200(r30)
000834  e3427ffe  loadli.w r5,  -196(r30)
000838  63038ffe  loadli.w r6,  -192(r30)
00083c  e3438ffe  loadli.w r7,  -188(r30)
000840  63049ffe  loadli.w r8,  -184(r30)
000844  e3449ffe  loadli.w r9,  -180(r30)
000848  6305affe  loadli.w r10,  -176(r30)
00084c  e345affe  loadli.w r11,  -172(r30)
000850  e308bffe  loadli.w r17,  -168(r30)
000854  6348bffe  loadli.w r16,  -164(r30)
000858  e307cffe  loadli.w r15,  -160(r30)
00085c  6347cffe  loadli.w r14,  -156(r30)
000860  e306dffe  loadli.w r13,  -152(r30)
000864  6744cffa  storeli.w r12, -700(r30)
000868  6306effe  loadli.w r12,  -144(r30)
00086c  e704cffa  storeli.w r12, -696(r30)
000870  6346effe  loadli.w r12,  -140(r30)
000874  e744cffa  storeli.w r12, -692(r30)
000878  6306fffe  loadli.w r12,  -136(r30)
00087c  6705cffa  storeli.w r12, -688(r30)
000880  6346fffe  loadli.w r12,  -132(r30)
000884  6745cffa  storeli.w r12, -684(r30)
000888  1f160000  addli r12, zero, 1
00088c  00a00000  mfence { lm }
000890  7e0006e0  vmmov mr0, r12
000894  1f260000  addli r12, zero, 2
000898  ea213930  vor.u.mh vr3{mr0}, r18, vr3
00089c  7e0006e0  vmmov mr0, r12
0008a0  1f460000  addli r12, zero, 4
0008a4  eaa13930  vor.u.mh vr3{mr0}, r19, vr3
0008a8  7e0006e0  vmmov mr0, r12
0008ac  1f061000  addli r12, zero, 8
0008b0  ea213a30  vor.u.mh vr3{mr0}, r20, vr3
0008b4  7e0006e0  vmmov mr0, r12
0008b8  1f062000  addli r12, zero, 16
0008bc  eaa13a30  vor.u.mh vr3{mr0}, r21, vr3
0008c0  7e0006e0  vmmov mr0, r12
0008c4  1f064000  addli r12, zero, 32
0008c8  ea213b30  vor.u.mh vr3{mr0}, r22, vr3
0008cc  7e0006e0  vmmov mr0, r12
0008d0  1f068000  addli r12, zero, 64
0008d4  eaa13b30  vor.u.mh vr3{mr0}, r23, vr3
0008d8  7e0006e0  vmmov mr0, r12
0008dc  1f060001  addli r12, zero, 128
0008e0  ea213c30  vor.u.mh vr3{mr0}, r24, vr3
0008e4  7e0006e0  vmmov mr0, r12
0008e8  1f060002  addli r12, zero, 256
0008ec  eaa13c30  vor.u.mh vr3{mr0}, r25, vr3
0008f0  7e0006e0  vmmov mr0, r12
0008f4  1f060004  addli r12, zero, 512
0008f8  ea213d30  vor.u.mh vr3{mr0}, r26, vr3
0008fc  7e0006e0  vmmov mr0, r12
000900  1f060008  addli r12, zero, 1024
000904  eaa13d30  vor.u.mh vr3{mr0}, r27, vr3
000908  7e0006e0  vmmov mr0, r12
00090c  1f060010  addli r12, zero, 2048
000910  ea213e30  vor.u.mh vr3{mr0}, r28, vr3
000914  7e0006e0  vmmov mr0, r12
000918  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00091c  9f000020  addli r1, zero, 4096
000920  fe8100e0  vmmov mr3, r1
000924  9f000040  addli r1, zero, 8192
000928  ea213136  vor.u.mh vr3{mr3}, r2, vr3
00092c  7e8100e0  vmmov mr2, r1
000930  ab400000  lui r1, 4
000934  1f010010  addli r2, zero, 2048
000938  7e8000e0  vmmov mr0, r1
00093c  ab800000  lui r1, 8
000940  eaa13134  vor.u.mh vr3{mr2}, r3, vr3
000944  ab410000  lui r3, 4
000948  ea213230  vor.u.mh vr3{mr0}, r4, vr3
00094c  7e8000e0  vmmov mr0, r1
000950  9f100000  addli r1, zero, 1
000954  eaa13230  vor.u.mh vr3{mr0}, r5, vr3
000958  7e8000e0  vmmov mr0, r1
00095c  9f200000  addli r1, zero, 2
000960  6a224330  vor.u.mh vr4{mr0}, r6, vr4
000964  7e8000e0  vmmov mr0, r1
000968  9f400000  addli r1, zero, 4
00096c  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000970  6aa24330  vor.u.mh vr4{mr0}, r7, vr4
000974  7e8000e0  vmmov mr0, r1
000978  9f001000  addli r1, zero, 8
00097c  6a224430  vor.u.mh vr4{mr0}, r8, vr4
000980  7e8000e0  vmmov mr0, r1
000984  9f002000  addli r1, zero, 16
000988  6aa24430  vor.u.mh vr4{mr0}, r9, vr4
00098c  7e8000e0  vmmov mr0, r1
000990  9f004000  addli r1, zero, 32
000994  6a224530  vor.u.mh vr4{mr0}, r10, vr4
000998  7e8000e0  vmmov mr0, r1
00099c  9f008000  addli r1, zero, 64
0009a0  1f050ffe  addli r10, r30, -256
0009a4  6aa24530  vor.u.mh vr4{mr0}, r11, vr4
0009a8  7e8000e0  vmmov mr0, r1
0009ac  9f000001  addli r1, zero, 128
0009b0  6aa24830  vor.u.mh vr4{mr0}, r17, vr4
0009b4  7e8000e0  vmmov mr0, r1
0009b8  9f000002  addli r1, zero, 256
0009bc  6a224830  vor.u.mh vr4{mr0}, r16, vr4
0009c0  7e8000e0  vmmov mr0, r1
0009c4  9f000004  addli r1, zero, 512
0009c8  6aa24730  vor.u.mh vr4{mr0}, r15, vr4
0009cc  7e8000e0  vmmov mr0, r1
0009d0  9f000008  addli r1, zero, 1024
0009d4  6a224730  vor.u.mh vr4{mr0}, r14, vr4
0009d8  7e8000e0  vmmov mr0, r1
0009dc  6aa24630  vor.u.mh vr4{mr0}, r13, vr4
0009e0  e3408ffa  loadli.w r1,  -700(r30)
0009e4  7e0001e0  vmmov mr0, r2
0009e8  2b0100f0  lui r2, 983040
0009ec  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
0009f0  e3009ffa  loadli.w r1,  -696(r30)
0009f4  7e8001e0  vmmov mr0, r3
0009f8  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
0009fc  e3409ffa  loadli.w r1,  -692(r30)
000a00  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
000a04  e301affa  loadli.w r3,  -688(r30)
000a08  ab0000f0  lui r1, 983040
000a0c  6aa24130  vor.u.mh vr4{mr0}, r3, vr4
000a10  9f010001  addli r3, zero, 128
000a14  97901100  or r1, r3, r1
000a18  9f010001  addli r3, zero, 128
000a1c  17912100  or r2, r3, r2
000a20  ab810000  lui r3, 8
000a24  7e8001e0  vmmov mr0, r3
000a28  e341affa  loadli.w r3,  -684(r30)
000a2c  6aa24130  vor.u.mh vr4{mr0}, r3, vr4
000a30  eb510fd3  load.d r[4:5], -720(r30)
000a34  eb538fd5  load.d r[8:9], -680(r30)
000a38  eb528fd2  load.d r[6:7], -728(r30)
000a3c  e344effa  loadli.w r9,  -652(r30)
000a40  12912402  vadd.f.mz.rn vr2{mr1}, r9, vr2
000a44  8ba17110  add.ul r[4:5], r[4:5], r[8:9]
000a48  8ba27210  add.ul r[6:7], r[6:7], r[8:9]
000a4c  63447ffa  loadli.w r8,  -708(r30)
000a50  e3038ffa  loadli.w r7,  -704(r30)
000a54  96914002  vadd.f.mz.rn vr3{mr1}, vr1, vr4
000a58  92102402  vadd.f.mz.rn vr1{mr1}, r8, vr2
000a5c  12913402  vadd.f.mz.rn vr2{mr1}, r9, vr3
000a60  12328002  vadd.s.mz vr4{mr1}, zero, vr8
000a64  12112402  vadd.f.mz.rn vr2{mr1}, r8, vr2
000a68  ffa0a100  l_gm2lm r1, r10, 0(r[4:5])
000a6c  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
000a70  9f000fff  addli r1, r30, -128
000a74  92318002  vadd.s.mz vr3{mr1}, zero, vr8
000a78  0a912302  vmul.f.mz.rn vr2{mr1}, r7, vr2
000a7c  00a00000  mfence { lm }
000a80  6345dffe  loadli.w r10,  -148(r30)
000a84  7fa11200  l_gm2lm r2, r1, 0(r[6:7])
000a88  e3000ffe  loadli.w r1,  -256(r30)
000a8c  63410ffe  loadli.w r2,  -252(r30)
000a90  e3011ffe  loadli.w r3,  -248(r30)
000a94  63421ffe  loadli.w r4,  -244(r30)
000a98  e3022ffe  loadli.w r5,  -240(r30)
000a9c  e3472ffe  loadli.w r15,  -236(r30)
000aa0  63083ffe  loadli.w r16,  -232(r30)
000aa4  e3483ffe  loadli.w r17,  -228(r30)
000aa8  63094ffe  loadli.w r18,  -224(r30)
000aac  e3494ffe  loadli.w r19,  -220(r30)
000ab0  630a5ffe  loadli.w r20,  -216(r30)
000ab4  e34a5ffe  loadli.w r21,  -212(r30)
000ab8  630b6ffe  loadli.w r22,  -208(r30)
000abc  e34b6ffe  loadli.w r23,  -204(r30)
000ac0  630c7ffe  loadli.w r24,  -200(r30)
000ac4  e34c7ffe  loadli.w r25,  -196(r30)
000ac8  630d8ffe  loadli.w r26,  -192(r30)
000acc  e34d8ffe  loadli.w r27,  -188(r30)
000ad0  630e9ffe  loadli.w r28,  -184(r30)
000ad4  63439ffe  loadli.w r6,  -180(r30)
000ad8  e303affe  loadli.w r7,  -176(r30)
000adc  6344affe  loadli.w r8,  -172(r30)
000ae0  e304bffe  loadli.w r9,  -168(r30)
000ae4  6347bffe  loadli.w r14,  -164(r30)
000ae8  e306cffe  loadli.w r13,  -160(r30)
000aec  6346cffe  loadli.w r12,  -156(r30)
000af0  e305dffe  loadli.w r11,  -152(r30)
000af4  e704affa  storeli.w r10, -696(r30)
000af8  6305effe  loadli.w r10,  -144(r30)
000afc  e744affa  storeli.w r10, -692(r30)
000b00  6345effe  loadli.w r10,  -140(r30)
000b04  6705affa  storeli.w r10, -688(r30)
000b08  6305fffe  loadli.w r10,  -136(r30)
000b0c  6745affa  storeli.w r10, -684(r30)
000b10  6345fffe  loadli.w r10,  -132(r30)
000b14  e705affa  storeli.w r10, -680(r30)
000b18  1f150000  addli r10, zero, 1
000b1c  00a00000  mfence { lm }
000b20  7e0005e0  vmmov mr0, r10
000b24  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000b28  9f200000  addli r1, zero, 2
000b2c  7e8000e0  vmmov mr0, r1
000b30  9f400000  addli r1, zero, 4
000b34  6a200130  vor.u.mh vr0{mr0}, r2, vr0
000b38  7e8000e0  vmmov mr0, r1
000b3c  9f001000  addli r1, zero, 8
000b40  1f010010  addli r2, zero, 2048
000b44  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
000b48  7e8000e0  vmmov mr0, r1
000b4c  9f002000  addli r1, zero, 16
000b50  6a200230  vor.u.mh vr0{mr0}, r4, vr0
000b54  7e8000e0  vmmov mr0, r1
000b58  9f004000  addli r1, zero, 32
000b5c  6aa00230  vor.u.mh vr0{mr0}, r5, vr0
000b60  7e8000e0  vmmov mr0, r1
000b64  9f008000  addli r1, zero, 64
000b68  6aa00730  vor.u.mh vr0{mr0}, r15, vr0
000b6c  7e8000e0  vmmov mr0, r1
000b70  9f000001  addli r1, zero, 128
000b74  6a200830  vor.u.mh vr0{mr0}, r16, vr0
000b78  7e8000e0  vmmov mr0, r1
000b7c  9f000002  addli r1, zero, 256
000b80  7e8100e0  vmmov mr2, r1
000b84  9f000004  addli r1, zero, 512
000b88  6aa00830  vor.u.mh vr0{mr0}, r17, vr0
000b8c  fe8100e0  vmmov mr3, r1
000b90  9f000008  addli r1, zero, 1024
000b94  7e8000e0  vmmov mr0, r1
000b98  9f000010  addli r1, zero, 2048
000b9c  6a200934  vor.u.mh vr0{mr2}, r18, vr0
000ba0  6aa00936  vor.u.mh vr0{mr3}, r19, vr0
000ba4  6a200a30  vor.u.mh vr0{mr0}, r20, vr0
000ba8  7e8000e0  vmmov mr0, r1
000bac  9f000020  addli r1, zero, 4096
000bb0  6aa00a30  vor.u.mh vr0{mr0}, r21, vr0
000bb4  7e8000e0  vmmov mr0, r1
000bb8  9f000040  addli r1, zero, 8192
000bbc  6a200b30  vor.u.mh vr0{mr0}, r22, vr0
000bc0  7e8000e0  vmmov mr0, r1
000bc4  ab400000  lui r1, 4
000bc8  6aa00b30  vor.u.mh vr0{mr0}, r23, vr0
000bcc  7e8000e0  vmmov mr0, r1
000bd0  ab800000  lui r1, 8
000bd4  6a200c30  vor.u.mh vr0{mr0}, r24, vr0
000bd8  7e8000e0  vmmov mr0, r1
000bdc  9f100000  addli r1, zero, 1
000be0  6aa00c30  vor.u.mh vr0{mr0}, r25, vr0
000be4  7e8000e0  vmmov mr0, r1
000be8  9f200000  addli r1, zero, 2
000bec  ea213d30  vor.u.mh vr3{mr0}, r26, vr3
000bf0  7e8000e0  vmmov mr0, r1
000bf4  9f400000  addli r1, zero, 4
000bf8  eaa13d30  vor.u.mh vr3{mr0}, r27, vr3
000bfc  7e8000e0  vmmov mr0, r1
000c00  9f001000  addli r1, zero, 8
000c04  ea213e30  vor.u.mh vr3{mr0}, r28, vr3
000c08  7e8000e0  vmmov mr0, r1
000c0c  9f002000  addli r1, zero, 16
000c10  ea213330  vor.u.mh vr3{mr0}, r6, vr3
000c14  7e8000e0  vmmov mr0, r1
000c18  9f004000  addli r1, zero, 32
000c1c  eaa13330  vor.u.mh vr3{mr0}, r7, vr3
000c20  7e8000e0  vmmov mr0, r1
000c24  9f008000  addli r1, zero, 64
000c28  ea213430  vor.u.mh vr3{mr0}, r8, vr3
000c2c  7e8000e0  vmmov mr0, r1
000c30  9f000001  addli r1, zero, 128
000c34  eaa13430  vor.u.mh vr3{mr0}, r9, vr3
000c38  7e8000e0  vmmov mr0, r1
000c3c  9f000008  addli r1, zero, 1024
000c40  ea213730  vor.u.mh vr3{mr0}, r14, vr3
000c44  7e8000e0  vmmov mr0, r1
000c48  eaa13634  vor.u.mh vr3{mr2}, r13, vr3
000c4c  ea213636  vor.u.mh vr3{mr3}, r12, vr3
000c50  eaa13530  vor.u.mh vr3{mr0}, r11, vr3
000c54  e3009ffa  loadli.w r1,  -696(r30)
000c58  7e0001e0  vmmov mr0, r2
000c5c  1f010020  addli r2, zero, 4096
000c60  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000c64  e3409ffa  loadli.w r1,  -692(r30)
000c68  7e0001e0  vmmov mr0, r2
000c6c  1f010040  addli r2, zero, 8192
000c70  7e0101e0  vmmov mr2, r2
000c74  2b410000  lui r2, 4
000c78  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000c7c  e300affa  loadli.w r1,  -688(r30)
000c80  fe0101e0  vmmov mr3, r2
000c84  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
000c88  e340affa  loadli.w r1,  -684(r30)
000c8c  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
000c90  ab800000  lui r1, 8
000c94  7e8000e0  vmmov mr0, r1
000c98  e300bffa  loadli.w r1,  -680(r30)
000c9c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000ca0  00a00000  mfence { lm }
000ca4  6345dfff  loadli.w r10,  -20(r30)
000ca8  e3000fff  loadli.w r1,  -128(r30)
000cac  63410fff  loadli.w r2,  -124(r30)
000cb0  e3011fff  loadli.w r3,  -120(r30)
000cb4  63421fff  loadli.w r4,  -116(r30)
000cb8  e3022fff  loadli.w r5,  -112(r30)
000cbc  e3462fff  loadli.w r13,  -108(r30)
000cc0  63073fff  loadli.w r14,  -104(r30)
000cc4  e3473fff  loadli.w r15,  -100(r30)
000cc8  63084fff  loadli.w r16,  -96(r30)
000ccc  e3484fff  loadli.w r17,  -92(r30)
000cd0  63095fff  loadli.w r18,  -88(r30)
000cd4  e3495fff  loadli.w r19,  -84(r30)
000cd8  630a6fff  loadli.w r20,  -80(r30)
000cdc  e34a6fff  loadli.w r21,  -76(r30)
000ce0  630b7fff  loadli.w r22,  -72(r30)
000ce4  e34b7fff  loadli.w r23,  -68(r30)
000ce8  630c8fff  loadli.w r24,  -64(r30)
000cec  e34c8fff  loadli.w r25,  -60(r30)
000cf0  630d9fff  loadli.w r26,  -56(r30)
000cf4  e34d9fff  loadli.w r27,  -52(r30)
000cf8  630eafff  loadli.w r28,  -48(r30)
000cfc  6343afff  loadli.w r6,  -44(r30)
000d00  e303bfff  loadli.w r7,  -40(r30)
000d04  6344bfff  loadli.w r8,  -36(r30)
000d08  e304cfff  loadli.w r9,  -32(r30)
000d0c  6346cfff  loadli.w r12,  -28(r30)
000d10  e305dfff  loadli.w r11,  -24(r30)
000d14  e704affa  storeli.w r10, -696(r30)
000d18  6305efff  loadli.w r10,  -16(r30)
000d1c  e744affa  storeli.w r10, -692(r30)
000d20  6345efff  loadli.w r10,  -12(r30)
000d24  6705affa  storeli.w r10, -688(r30)
000d28  6305ffff  loadli.w r10,  -8(r30)
000d2c  6745affa  storeli.w r10, -684(r30)
000d30  6345ffff  loadli.w r10,  -4(r30)
000d34  e705affa  storeli.w r10, -680(r30)
000d38  1f150000  addli r10, zero, 1
000d3c  7e0005e0  vmmov mr0, r10
000d40  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000d44  9f200000  addli r1, zero, 2
000d48  7e8000e0  vmmov mr0, r1
000d4c  9f400000  addli r1, zero, 4
000d50  6a224130  vor.u.mh vr4{mr0}, r2, vr4
000d54  7e8000e0  vmmov mr0, r1
000d58  9f001000  addli r1, zero, 8
000d5c  1f010006  addli r2, zero, 768
000d60  6aa24130  vor.u.mh vr4{mr0}, r3, vr4
000d64  7e8000e0  vmmov mr0, r1
000d68  9f002000  addli r1, zero, 16
000d6c  6a224230  vor.u.mh vr4{mr0}, r4, vr4
000d70  7e8000e0  vmmov mr0, r1
000d74  9f004000  addli r1, zero, 32
000d78  2b820000  lui r4, 8
000d7c  6aa24230  vor.u.mh vr4{mr0}, r5, vr4
000d80  7e8000e0  vmmov mr0, r1
000d84  9f008000  addli r1, zero, 64
000d88  9f020ffb  addli r5, r30, -640
000d8c  6aa24630  vor.u.mh vr4{mr0}, r13, vr4
000d90  7e8000e0  vmmov mr0, r1
000d94  9f000001  addli r1, zero, 128
000d98  6a224730  vor.u.mh vr4{mr0}, r14, vr4
000d9c  7e8000e0  vmmov mr0, r1
000da0  9f000002  addli r1, zero, 256
000da4  6aa24730  vor.u.mh vr4{mr0}, r15, vr4
000da8  7e8000e0  vmmov mr0, r1
000dac  9f000004  addli r1, zero, 512
000db0  6a224830  vor.u.mh vr4{mr0}, r16, vr4
000db4  7e8000e0  vmmov mr0, r1
000db8  9f000008  addli r1, zero, 1024
000dbc  6aa24830  vor.u.mh vr4{mr0}, r17, vr4
000dc0  7e8000e0  vmmov mr0, r1
000dc4  9f000010  addli r1, zero, 2048
000dc8  6a224930  vor.u.mh vr4{mr0}, r18, vr4
000dcc  7e8000e0  vmmov mr0, r1
000dd0  9f000020  addli r1, zero, 4096
000dd4  6aa24930  vor.u.mh vr4{mr0}, r19, vr4
000dd8  7e8000e0  vmmov mr0, r1
000ddc  ab800000  lui r1, 8
000de0  6a224a30  vor.u.mh vr4{mr0}, r20, vr4
000de4  7e8000e0  vmmov mr0, r1
000de8  9f100000  addli r1, zero, 1
000dec  1f2a0000  addli r20, zero, 2
000df0  6aa24a34  vor.u.mh vr4{mr2}, r21, vr4
000df4  9f0a0001  addli r21, zero, 128
000df8  6a224b36  vor.u.mh vr4{mr3}, r22, vr4
000dfc  630beffa  loadli.w r22,  -656(r30)
000e00  6aa24b30  vor.u.mh vr4{mr0}, r23, vr4
000e04  7e8000e0  vmmov mr0, r1
000e08  9f200000  addli r1, zero, 2
000e0c  ea225c30  vor.u.mh vr5{mr0}, r24, vr5
000e10  26920002  vmac.f.mz.rn vr4{mr1}, vr1, vr0
000e14  7e8000e0  vmmov mr0, r1
000e18  9f400000  addli r1, zero, 4
000e1c  eaa25c30  vor.u.mh vr5{mr0}, r25, vr5
000e20  7e8000e0  vmmov mr0, r1
000e24  9f001000  addli r1, zero, 8
000e28  ea225d30  vor.u.mh vr5{mr0}, r26, vr5
000e2c  7e8000e0  vmmov mr0, r1
000e30  9f002000  addli r1, zero, 16
000e34  eaa25d30  vor.u.mh vr5{mr0}, r27, vr5
000e38  7e8000e0  vmmov mr0, r1
000e3c  9f004000  addli r1, zero, 32
000e40  ea225e30  vor.u.mh vr5{mr0}, r28, vr5
000e44  7e8000e0  vmmov mr0, r1
000e48  9f008000  addli r1, zero, 64
000e4c  ea225330  vor.u.mh vr5{mr0}, r6, vr5
000e50  7e8000e0  vmmov mr0, r1
000e54  9f000001  addli r1, zero, 128
000e58  eaa25330  vor.u.mh vr5{mr0}, r7, vr5
000e5c  7e8000e0  vmmov mr0, r1
000e60  9f000002  addli r1, zero, 256
000e64  ea225430  vor.u.mh vr5{mr0}, r8, vr5
000e68  7e8000e0  vmmov mr0, r1
000e6c  9f000004  addli r1, zero, 512
000e70  eaa25430  vor.u.mh vr5{mr0}, r9, vr5
000e74  7e8000e0  vmmov mr0, r1
000e78  9f000008  addli r1, zero, 1024
000e7c  ea225630  vor.u.mh vr5{mr0}, r12, vr5
000e80  7e8000e0  vmmov mr0, r1
000e84  9f000010  addli r1, zero, 2048
000e88  eaa25530  vor.u.mh vr5{mr0}, r11, vr5
000e8c  7e8000e0  vmmov mr0, r1
000e90  e3009ffa  loadli.w r1,  -696(r30)
000e94  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000e98  9f000020  addli r1, zero, 4096
000e9c  7e8000e0  vmmov mr0, r1
000ea0  e3409ffa  loadli.w r1,  -692(r30)
000ea4  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000ea8  e300affa  loadli.w r1,  -688(r30)
000eac  7e0002e0  vmmov mr0, r4
000eb0  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
000eb4  e340affa  loadli.w r1,  -684(r30)
000eb8  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
000ebc  e301bffa  loadli.w r3,  -680(r30)
000ec0  ab0000f0  lui r1, 983040
000ec4  97901a00  or r1, r21, r1
000ec8  eaa25130  vor.u.mh vr5{mr0}, r3, vr5
000ecc  6343cffa  loadli.w r6,  -668(r30)
000ed0  eb510f01  load.d r[4:5], 16(r30)
000ed4  eb538fd6  load.d r[8:9], -664(r30)
000ed8  46184fa2  vstore_mask16.mz vr4{mr1}, 1408(r30)
000edc  a6123102  vmac.f.mz.rn vr5{mr1}, vr2, vr3
000ee0  461c5fa2  vstore_mask16.mz vr5{mr1}, 1472(r30)
000ee4  00a00000  mfence { lm }
000ee8  13012304  setlt.u r2, r6, r2
000eec  8ba17110  add.ul r[4:5], r[4:5], r[8:9]
000ef0  ffb05100  s_lm2gm r1, r5, 0(r[4:5])
000ef4  9f010ffb  addli r3, r30, -640
000ef8  9f000302  addli r1, r6, 256
000efc  00a00000  mfence { lm }
000f00  3b3201fc  bneq r2, zero, -1908
000f04  e3464ffa  loadli.w r13,  -732(r30)
000f08  e3001ffa  loadli.w r1,  -760(r30)
000f0c  6b580f00  load.d r[17:18], 0(r30)
000f10  6b578fd7  load.d r[15:16], -648(r30)
000f14  1f040ffd  addli r8, r30, -384
000f18  9f040ffe  addli r9, r30, -256
000f1c  8b961610  add.s r13, r13, r1
000f20  e3401ffa  loadli.w r1,  -756(r30)
000f24  3fcb16f8  blt.s r13, r1, -3376
000f28  9f0e8ff8  addli sp, r30, -960
000f2c  9f8e8e07  addli sp, sp, 960
000f30  00a00300  mfence { lm, sm, gm }
000f34  00100000  exit
000f38  9f8efeff  addli sp, sp, -8
000f3c  9f000100  addli r1, r2, 0
000f40  2bf1ff7f  lui r2, 524287
000f44  ab02807f  lui r5, 522240
000f48  67c0ee01  storeli.w r30, 4(sp)
000f4c  6780fe01  storeli.w r31, 0(sp)
000f50  1f8f1e00  addli r30, sp, 8
000f54  1b12f1ff  ori r4, r2, 4095
000f58  17814000  and r2, r1, r4
000f5c  13832204  setlt.u r6, r5, r2
000f60  1f810100  addli r2, r3, 0
000f64  bb210300  bneq r6, zero, 104
000f68  97014100  and r3, r2, r4
000f6c  93813204  setlt.u r3, r5, r3
000f70  3be10100  bneq r3, zero, 88
000f74  abf1ffff  lui r3, 1048575
000f78  17221100  xor r4, r2, r1
000f7c  9b91f1ff  ori r3, r3, 4095
000f80  3fa04100  blt.s r3, r4, 8
000f84  5b0b0000  j 88
000f88  9b319100  slli r3, r2, 9
000f8c  9bb29000  slli r5, r1, 9
000f90  1b427101  srli r4, r2, 23
000f94  1bc37001  srli r6, r1, 23
000f98  93e32004  setlt.f r7, r1, r2
000f9c  93810100  seteq r3, r3, zero
000fa0  93820200  seteq r5, r5, zero
000fa4  1b02f20f  andi r4, r4, 255
000fa8  1b03f30f  andi r6, r6, 255
000fac  1b72f20f  setlti r4, r4, 255
000fb0  1b73f30f  setlti r6, r6, 255
000fb4  97113200  or r3, r4, r3
000fb8  17125300  or r4, r6, r5
000fbc  97013200  and r3, r4, r3
000fc0  97813300  and r3, r7, r3
000fc4  3ba00100  bneq r3, zero, 8
000fc8  1f810000  addli r2, r1, 0
000fcc  e38f0e00  loadli.w r31,  0(sp)
000fd0  63cf0e00  loadli.w r30,  4(sp)
000fd4  9f8e1e00  addli sp, sp, 8
000fd8  5f800f00  jr r31, 0
000fdc  bfcf00fe  blt.s r1, zero, -16
000fe0  5bfdffff  j -24
000fe4  00100000  exit
000fe8  00100000  exit
000fec  00100000  exit
000ff0  00100000  exit
000ff4  00100000  exit
000ff8  00100000  exit
000ffc  00100000  exit
001000  00100000  exit
001004  00100000  exit
001008  00100000  exit
00100c  00100000  exit
001010  00100000  exit
001014  00100000  exit
001018  00100000  exit
00101c  00100000  exit
001020  00100000  exit
001024  00100000  exit
001028  00100000  exit
00102c  00100000  exit
001030  00100000  exit
001034  00100000  exit
001038  00100000  exit
00103c  00100000  exit
001040  00100000  exit
001044  00100000  exit
001048  00100000  exit
00104c  00100000  exit
001050  00100000  exit
001054  00100000  exit
001058  00100000  exit
00105c  00100000  exit
001060  00100000  exit
001064  00100000  exit
001068  00100000  exit
00106c  00100000  exit
001070  00100000  exit
001074  00100000  exit
001078  00100000  exit
00107c  00100000  exit
001080  00100000  exit
001084  00100000  exit
001088  00100000  exit
00108c  00100000  exit
001090  00100000  exit
001094  00100000  exit
001098  00100000  exit
00109c  00100000  exit
0010a0  00100000  exit
0010a4  00100000  exit
0010a8  00100000  exit
0010ac  00100000  exit
0010b0  00100000  exit
0010b4  00100000  exit
0010b8  00100000  exit
0010bc  00100000  exit
0010c0  00100000  exit
0010c4  00100000  exit
0010c8  00100000  exit
0010cc  00100000  exit
0010d0  00100000  exit
0010d4  00100000  exit
0010d8  00100000  exit
0010dc  00100000  exit
0010e0  00100000  exit
0010e4  00100000  exit
0010e8  00100000  exit
0010ec  00100000  exit
0010f0  00100000  exit
0010f4  00100000  exit
0010f8  00100000  exit
0010fc  00100000  exit
001100  00100000  exit
001104  00100000  exit
001108  00100000  exit
00110c  00100000  exit
001110  00100000  exit
001114  00100000  exit
001118  00100000  exit
00111c  00100000  exit
001120  00100000  exit
001124  00100000  exit
001128  00100000  exit
00112c  00100000  exit
001130  00100000  exit
001134  00100000  exit
001138  00100000  exit
00113c  00100000  exit
001140  00100000  exit
001144  00100000  exit
001148  00100000  exit
00114c  00100000  exit
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
