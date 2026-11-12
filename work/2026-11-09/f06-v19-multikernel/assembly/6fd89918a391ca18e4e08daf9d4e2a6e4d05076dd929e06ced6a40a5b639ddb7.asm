; SHA-256 6fd89918a391ca18e4e08daf9d4e2a6e4d05076dd929e06ced6a40a5b639ddb7
; P800 Cluster · XTDK LLVM 19 · 2972 / 2972 words decoded
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
0000dc  9f8e0ed6  addli sp, sp, -5376
0000e0  2b010000  lui r2, 0
0000e4  80300002  core_id r1
0000e8  1f8f8e29  addli r30, sp, 5312
0000ec  ab04803f  lui r9, 260096
0000f0  9bb12000  slli r3, r1, 2
0000f4  1f010100  addli r2, r2, 0
0000f8  e3436f00  loadli.w r7,  52(r30)
0000fc  63026f00  loadli.w r4,  48(r30)
000100  63037f00  loadli.w r6,  56(r30)
000104  8b922110  add.s r5, r3, r2
000108  0b924320  mul.s r4, r7, r4
00010c  80530002  load_param_i r7, 0
000110  1f840220  addli r8, r5, 4096
000114  73e00200  stores.w zero, 0(r5)
000118  67485fd6  storeli.w r5, -5244(r30)
00011c  9f820240  addli r5, r5, 8192
000120  0b126220  mul.s r4, r4, r6
000124  1f830300  addli r6, r7, 0
000128  e7475fd6  storeli.w r5, -5252(r30)
00012c  73e09200  stores.w r9, 0(r5)
000130  abf20000  lui r5, 15
000134  67088fd6  storeli.w r8, -5248(r30)
000138  73600400  stores.w zero, 0(r8)
00013c  00a00300  mfence { lm, sm, gm }
000140  9b92f2ff  ori r5, r5, 4095
000144  67095fd6  storeli.w r5, -5232(r30)
000148  80a10204  csr_set csr3, r5
00014c  00d00100  sync_group
000150  670a4fd6  storeli.w r4, -5216(r30)
000154  4b3b6214  ble.s r4, r6, 10956
000158  1f420000  addli r4, zero, 4
00015c  1f050ff0  addli r10, r30, -2048
000160  6e224262  vxor.u.mz vr4{mr1}, vr4, vr4
000164  9f040ff4  addli r9, r30, -1536
000168  9f030fec  addli r7, r30, -2560
00016c  1f040fe8  addli r8, r30, -3072
000170  1f0c0fe4  addli r24, r30, -3584
000174  9f050004  addli r11, zero, 512
000178  eeb5b562  vxor.s.mz vr11{mr1}, vr11, vr11
00017c  8b924030  div.s r5, r1, r4
000180  00d20002  load_param_i r4, 1
000184  e7094fd6  storeli.w r4, -5224(r30)
000188  2bf2ffff  lui r4, 1048575
00018c  1b1202ff  ori r4, r4, 4080
000190  97814100  and r3, r3, r4
000194  e7495fd6  storeli.w r5, -5220(r30)
000198  9bb22200  slli r5, r5, 2
00019c  1f020300  addli r4, r6, 0
0001a0  8b925018  sub.s r5, r1, r5
0001a4  0b912110  add.s r2, r3, r2
0001a8  9b803000  andi r1, r1, 3
0001ac  e7071fd6  storeli.w r1, -5256(r30)
0001b0  9f000120  addli r1, r2, 4096
0001b4  9bb27200  slli r5, r5, 7
0001b8  e7482fd6  storeli.w r2, -5236(r30)
0001bc  e7081fd6  storeli.w r1, -5240(r30)
0001c0  9f000140  addli r1, r2, 8192
0001c4  e70b5fd6  storeli.w r5, -5192(r30)
0001c8  67491fd6  storeli.w r1, -5228(r30)
0001cc  9f008500  addli r1, r10, 64
0001d0  e7451fd8  storeli.w r1, -5028(r30)
0001d4  9f100000  addli r1, zero, 1
0001d8  7e8100e0  vmmov mr2, r1
0001dc  ab00803f  lui r1, 260096
0001e0  6a904022  vor.f.mz vr0{mr1}, r1, vr4
0001e4  9f008fd7  addli r1, r30, -5184
0001e8  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0001ec  ab10833a  lui r1, 239665
0001f0  9b90f026  ori r1, r1, 623
0001f4  67471fd6  storeli.w r1, -5260(r30)
0001f8  9f000fe3  addli r1, r30, -3712
0001fc  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
000200  9f000fd8  addli r1, r30, -5120
000204  4690b002  vstore_mask16.mz vr11{mr1}, 0(r1)
000208  db030000  j 28
00020c  63424fd7  loadli.w r4,  -5212(r30)
000210  e3003fd7  loadli.w r1,  -5224(r30)
000214  0b121210  add.s r4, r4, r1
000218  e3004fd7  loadli.w r1,  -5216(r30)
00021c  3f201200  blt.s r4, r1, 8
000220  5b400500  j 10752
000224  e3007f00  loadli.w r1,  56(r30)
000228  63416f00  loadli.w r2,  52(r30)
00022c  674a4fd6  storeli.w r4, -5212(r30)
000230  8b101230  div.s r1, r4, r1
000234  8b902030  div.s r1, r1, r2
000238  63413fd7  loadli.w r2,  -5220(r30)
00023c  9bb04000  slli r1, r1, 4
000240  8b902010  add.s r1, r1, r2
000244  1f71f00f  addli r2, zero, 2047
000248  3f1f11fe  blt.s r2, r1, -60
00024c  1f010000  addli r2, zero, 0
000250  8b912310  add.s r3, r7, r2
000254  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
000258  46944102  vstore_mask16.mz vr4{mr1}, 64(r3)
00025c  8b112410  add.s r3, r8, r2
000260  00a00000  mfence { lm }
000264  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
000268  46944102  vstore_mask16.mz vr4{mr1}, 64(r3)
00026c  8b112c10  add.s r3, r24, r2
000270  1f010101  addli r2, r2, 128
000274  00a00000  mfence { lm }
000278  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
00027c  46944102  vstore_mask16.mz vr4{mr1}, 64(r3)
000280  00a00000  mfence { lm }
000284  3b3fb1fe  bneq r2, r11, -52
000288  9bb0b000  slli r1, r1, 11
00028c  9f060000  addli r13, zero, 0
000290  e74b1fd6  storeli.w r1, -5188(r30)
000294  9f808400  addli r1, r9, 64
000298  e7421fde  storeli.w r1, -4308(r30)
00029c  00a00000  mfence { lm }
0002a0  db020000  j 20
0002a4  9f00000c  addli r1, zero, 1536
0002a8  93801604  setlt.u r1, r13, r1
0002ac  9f860604  addli r13, r13, 512
0002b0  b7ec0002  beq r1, zero, 1848
0002b4  e3007fd7  loadli.w r1,  -5192(r30)
0002b8  1f020000  addli r4, zero, 0
0002bc  8b911610  add.s r3, r13, r1
0002c0  8b124510  add.s r5, r10, r4
0002c4  1f020201  addli r4, r4, 128
0002c8  46904202  vstore_mask16.mz vr4{mr1}, 0(r5)
0002cc  46944202  vstore_mask16.mz vr4{mr1}, 64(r5)
0002d0  00a00000  mfence { lm }
0002d4  bb3fb2fe  bneq r4, r11, -20
0002d8  e3407fd7  loadli.w r1,  -5188(r30)
0002dc  2b0300f0  lui r6, 983040
0002e0  17936500  or r6, r11, r6
0002e4  0b921110  add.s r4, r3, r1
0002e8  9f200000  addli r1, zero, 2
0002ec  33120228  sext_int2long r[5:6], r4
0002f0  17321202  sll.d r[5:6], r[5:6], r1
0002f4  eb500f00  load.d r[2:3], 0(r30)
0002f8  0ba24010  add.ul r[5:6], r[2:3], r[5:6]
0002fc  7f23a200  l_gm2lm r6, r10, 0(r[5:6])
000300  1f020000  addli r4, zero, 0
000304  8b924410  add.s r5, r9, r4
000308  1f021200  addli r4, r4, 8
00030c  67800200  storeli.w zero, 0(r5)
000310  67c00200  storeli.w zero, 4(r5)
000314  00a00000  mfence { lm }
000318  bb3fb2fe  bneq r4, r11, -20
00031c  b3910128  sext_int2long r[4:5], r3
000320  9f200000  addli r1, zero, 2
000324  ab0200f0  lui r5, 983040
000328  97b11102  sll.d r[4:5], r[4:5], r1
00032c  eb508f00  load.d r[2:3], 8(r30)
000330  97925500  or r5, r11, r5
000334  8ba13010  add.ul r[4:5], r[2:3], r[4:5]
000338  ffa29100  l_gm2lm r5, r9, 0(r[4:5])
00033c  9f010000  addli r3, zero, 0
000340  5b7e0000  j 1008
000344  2b02803f  lui r4, 260096
000348  1e917202  vsub.f.mz.rn vr2{mr1}, vr5, vr7
00034c  9f028fe2  addli r5, r30, -3776
000350  92314002  vadd.s.mz vr3{mr1}, zero, vr4
000354  1f140000  addli r8, zero, 1
000358  9e108502  vsub.f.mz.rn vr1{mr1}, vr10, vr8
00035c  92146202  vadd.f.mz.rn vr9{mr1}, r4, vr6
000360  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
000364  7e0004e0  vmmov mr0, r8
000368  1f240000  addli r8, zero, 2
00036c  7a110140  vextracti.f r2, 0(vr2)
000370  fa900440  vextracti.f r1, 0(vr9)
000374  fa922440  vextracti.f r5, 2(vr9)
000378  7a933440  vextracti.f r6, 3(vr9)
00037c  fa93f440  vextracti.f r7, 15(vr9)
000380  12100202  vadd.f.mz.rn vr0{mr1}, r4, vr0
000384  7a921440  vextracti.f r4, 1(vr9)
000388  8f001118  div.f.rn r1, r2, r1
00038c  7a111140  vextracti.f r2, 1(vr2)
000390  0f014118  div.f.rn r2, r2, r4
000394  7a122140  vextracti.f r4, 2(vr2)
000398  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00039c  8f005218  div.f.rn r1, r4, r5
0003a0  7a123140  vextracti.f r4, 3(vr2)
0003a4  7e0004e0  vmmov mr0, r8
0003a8  1f440000  addli r8, zero, 4
0003ac  fa924440  vextracti.f r5, 4(vr9)
0003b0  ea213130  vor.u.mh vr3{mr0}, r2, vr3
0003b4  0f016218  div.f.rn r2, r4, r6
0003b8  7a124140  vextracti.f r4, 4(vr2)
0003bc  7e0004e0  vmmov mr0, r8
0003c0  1f041000  addli r8, zero, 8
0003c4  7a935440  vextracti.f r6, 5(vr9)
0003c8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0003cc  8f005218  div.f.rn r1, r4, r5
0003d0  7a125140  vextracti.f r4, 5(vr2)
0003d4  7e0004e0  vmmov mr0, r8
0003d8  1f042000  addli r8, zero, 16
0003dc  fa926440  vextracti.f r5, 6(vr9)
0003e0  ea213130  vor.u.mh vr3{mr0}, r2, vr3
0003e4  0f016218  div.f.rn r2, r4, r6
0003e8  7a126140  vextracti.f r4, 6(vr2)
0003ec  7e0004e0  vmmov mr0, r8
0003f0  1f044000  addli r8, zero, 32
0003f4  7a937440  vextracti.f r6, 7(vr9)
0003f8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0003fc  8f005218  div.f.rn r1, r4, r5
000400  7a127140  vextracti.f r4, 7(vr2)
000404  7e0004e0  vmmov mr0, r8
000408  1f048000  addli r8, zero, 64
00040c  fa928440  vextracti.f r5, 8(vr9)
000410  ea213130  vor.u.mh vr3{mr0}, r2, vr3
000414  0f016218  div.f.rn r2, r4, r6
000418  7a128140  vextracti.f r4, 8(vr2)
00041c  7e0004e0  vmmov mr0, r8
000420  1f040001  addli r8, zero, 128
000424  7a939440  vextracti.f r6, 9(vr9)
000428  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00042c  8f005218  div.f.rn r1, r4, r5
000430  7a129140  vextracti.f r4, 9(vr2)
000434  7e0004e0  vmmov mr0, r8
000438  1f040002  addli r8, zero, 256
00043c  fa92a440  vextracti.f r5, 10(vr9)
000440  ea213130  vor.u.mh vr3{mr0}, r2, vr3
000444  0f016218  div.f.rn r2, r4, r6
000448  7a12a140  vextracti.f r4, 10(vr2)
00044c  7e0004e0  vmmov mr0, r8
000450  1f040004  addli r8, zero, 512
000454  7a93b440  vextracti.f r6, 11(vr9)
000458  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00045c  8f005218  div.f.rn r1, r4, r5
000460  7a12b140  vextracti.f r4, 11(vr2)
000464  7e0004e0  vmmov mr0, r8
000468  1f040008  addli r8, zero, 1024
00046c  fa92c440  vextracti.f r5, 12(vr9)
000470  ea213130  vor.u.mh vr3{mr0}, r2, vr3
000474  0f016218  div.f.rn r2, r4, r6
000478  7a12c140  vextracti.f r4, 12(vr2)
00047c  7e0004e0  vmmov mr0, r8
000480  1f040010  addli r8, zero, 2048
000484  7a93d440  vextracti.f r6, 13(vr9)
000488  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00048c  8f005218  div.f.rn r1, r4, r5
000490  7a12d140  vextracti.f r4, 13(vr2)
000494  7e0004e0  vmmov mr0, r8
000498  fa92e440  vextracti.f r5, 14(vr9)
00049c  7a14f140  vextracti.f r8, 15(vr2)
0004a0  8f046218  div.f.rn r9, r4, r6
0004a4  1f020020  addli r4, zero, 4096
0004a8  7a931040  vextracti.f r6, 1(vr1)
0004ac  ea213130  vor.u.mh vr3{mr0}, r2, vr3
0004b0  7a11e140  vextracti.f r2, 14(vr2)
0004b4  7e0002e0  vmmov mr0, r4
0004b8  1f020040  addli r4, zero, 8192
0004bc  0f055118  div.f.rn r10, r2, r5
0004c0  7e0102e0  vmmov mr2, r4
0004c4  8f027418  div.f.rn r5, r8, r7
0004c8  ab430000  lui r7, 4
0004cc  7a110040  vextracti.f r2, 0(vr0)
0004d0  7a920040  vextracti.f r4, 0(vr1)
0004d4  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0004d8  fa101040  vextracti.f r1, 1(vr0)
0004dc  7e8003e0  vmmov mr0, r7
0004e0  9f030fe3  addli r7, r30, -3712
0004e4  0f012218  div.f.rn r2, r4, r2
0004e8  7a122040  vextracti.f r4, 2(vr0)
0004ec  8f001318  div.f.rn r1, r6, r1
0004f0  2b830000  lui r6, 8
0004f4  eaa13434  vor.u.mh vr3{mr2}, r9, vr3
0004f8  fe0103e0  vmmov mr3, r6
0004fc  7a133040  vextracti.f r6, 3(vr0)
000500  ea213530  vor.u.mh vr3{mr0}, r10, vr3
000504  eaa13236  vor.u.mh vr3{mr3}, r5, vr3
000508  42920302  vload_mask16.mz vr4{mr1}, 0(r7)
00050c  9f130000  addli r7, zero, 1
000510  fa922040  vextracti.f r5, 2(vr1)
000514  7e8103e0  vmmov mr2, r7
000518  9f230000  addli r7, zero, 2
00051c  96953302  vadd.f.mz.rn vr11{mr1}, vr7, vr3
000520  6a224134  vor.u.mh vr4{mr2}, r2, vr4
000524  0f814218  div.f.rn r2, r5, r4
000528  7a923040  vextracti.f r4, 3(vr1)
00052c  7e8103e0  vmmov mr2, r7
000530  9f430000  addli r7, zero, 4
000534  fa124040  vextracti.f r5, 4(vr0)
000538  9e92b202  vsub.f.mz.rn vr5{mr1}, vr5, vr11
00053c  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
000540  8f006218  div.f.rn r1, r4, r6
000544  7a924040  vextracti.f r4, 4(vr1)
000548  7e8103e0  vmmov mr2, r7
00054c  9f031000  addli r7, zero, 8
000550  7a135040  vextracti.f r6, 5(vr0)
000554  6a224134  vor.u.mh vr4{mr2}, r2, vr4
000558  0f015218  div.f.rn r2, r4, r5
00055c  7a925040  vextracti.f r4, 5(vr1)
000560  7e8103e0  vmmov mr2, r7
000564  9f032000  addli r7, zero, 16
000568  fa126040  vextracti.f r5, 6(vr0)
00056c  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
000570  8f006218  div.f.rn r1, r4, r6
000574  7a926040  vextracti.f r4, 6(vr1)
000578  7e8103e0  vmmov mr2, r7
00057c  9f034000  addli r7, zero, 32
000580  7a137040  vextracti.f r6, 7(vr0)
000584  6a224134  vor.u.mh vr4{mr2}, r2, vr4
000588  0f015218  div.f.rn r2, r4, r5
00058c  7a927040  vextracti.f r4, 7(vr1)
000590  7e8103e0  vmmov mr2, r7
000594  9f038000  addli r7, zero, 64
000598  fa128040  vextracti.f r5, 8(vr0)
00059c  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
0005a0  8f006218  div.f.rn r1, r4, r6
0005a4  7a928040  vextracti.f r4, 8(vr1)
0005a8  7e8103e0  vmmov mr2, r7
0005ac  9f030001  addli r7, zero, 128
0005b0  7a139040  vextracti.f r6, 9(vr0)
0005b4  6a224134  vor.u.mh vr4{mr2}, r2, vr4
0005b8  0f015218  div.f.rn r2, r4, r5
0005bc  7a929040  vextracti.f r4, 9(vr1)
0005c0  7e8103e0  vmmov mr2, r7
0005c4  9f030002  addli r7, zero, 256
0005c8  fa12a040  vextracti.f r5, 10(vr0)
0005cc  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
0005d0  8f006218  div.f.rn r1, r4, r6
0005d4  7a92a040  vextracti.f r4, 10(vr1)
0005d8  7e8103e0  vmmov mr2, r7
0005dc  9f030004  addli r7, zero, 512
0005e0  7a13b040  vextracti.f r6, 11(vr0)
0005e4  6a224134  vor.u.mh vr4{mr2}, r2, vr4
0005e8  0f015218  div.f.rn r2, r4, r5
0005ec  7a92b040  vextracti.f r4, 11(vr1)
0005f0  7e8103e0  vmmov mr2, r7
0005f4  9f030008  addli r7, zero, 1024
0005f8  fa12c040  vextracti.f r5, 12(vr0)
0005fc  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
000600  8f006218  div.f.rn r1, r4, r6
000604  7a92c040  vextracti.f r4, 12(vr1)
000608  7e8103e0  vmmov mr2, r7
00060c  9f030010  addli r7, zero, 2048
000610  7a13d040  vextracti.f r6, 13(vr0)
000614  6a224134  vor.u.mh vr4{mr2}, r2, vr4
000618  0f015218  div.f.rn r2, r4, r5
00061c  7a92d040  vextracti.f r4, 13(vr1)
000620  7e8103e0  vmmov mr2, r7
000624  9f030020  addli r7, zero, 4096
000628  fa12e040  vextracti.f r5, 14(vr0)
00062c  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
000630  8f006218  div.f.rn r1, r4, r6
000634  7a92e040  vextracti.f r4, 14(vr1)
000638  7e8103e0  vmmov mr2, r7
00063c  7a13f040  vextracti.f r6, 15(vr0)
000640  6a224134  vor.u.mh vr4{mr2}, r2, vr4
000644  0f015218  div.f.rn r2, r4, r5
000648  9f020040  addli r5, zero, 8192
00064c  7a92f040  vextracti.f r4, 15(vr1)
000650  7e8102e0  vmmov mr2, r5
000654  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
000658  8f006218  div.f.rn r1, r4, r6
00065c  6a224130  vor.u.mh vr4{mr0}, r2, vr4
000660  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
000664  9f000fe2  addli r1, r30, -3840
000668  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
00066c  9f008fe1  addli r1, r30, -3904
000670  a6115102  vmac.f.mz.rn vr3{mr1}, vr2, vr5
000674  9232b002  vadd.s.mz vr5{mr1}, zero, vr11
000678  16124402  vadd.f.mz.rn vr4{mr1}, vr8, vr4
00067c  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000680  9f000fd8  addli r1, r30, -5120
000684  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
000688  9f000fe3  addli r1, r30, -3712
00068c  1e154502  vsub.f.mz.rn vr10{mr1}, vr10, vr4
000690  2691a002  vmac.f.mz.rn vr2{mr1}, vr1, vr10
000694  12354002  vadd.s.mz vr10{mr1}, zero, vr4
000698  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
00069c  abf00000  lui r1, 15
0006a0  9f050004  addli r11, zero, 512
0006a4  9f810101  addli r3, r3, 128
0006a8  9f040ff4  addli r9, r30, -1536
0006ac  9f030fec  addli r7, r30, -2560
0006b0  1f040fe8  addli r8, r30, -3072
0006b4  1f0c0fe4  addli r24, r30, -3584
0006b8  1f050ff0  addli r10, r30, -2048
0006bc  9ff0f01f  addli r1, r1, 4095
0006c0  7e8000e0  vmmov mr0, r1
0006c4  9f000fe2  addli r1, r30, -3840
0006c8  ee935530  vor.f.mh vr7{mr0}, vr11, vr5
0006cc  6e94a530  vor.f.mh vr8{mr0}, vr11, vr10
0006d0  6e939530  vor.f.mh vr6{mr0}, vr11, vr9
0006d4  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
0006d8  9f008fe1  addli r1, r30, -3904
0006dc  ee923530  vor.f.mh vr5{mr0}, vr11, vr3
0006e0  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0006e4  9f008fe2  addli r1, r30, -3776
0006e8  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0006ec  e3000fe0  loadli.w r1,  -4096(r30)
0006f0  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
0006f4  46948002  vstore_mask16.mz vr8{mr1}, 64(r1)
0006f8  00a00000  mfence { lm }
0006fc  ee912530  vor.f.mh vr3{mr0}, vr11, vr2
000700  e3008fe0  loadli.w r1,  -4032(r30)
000704  ee900530  vor.f.mh vr1{mr0}, vr11, vr0
000708  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
00070c  46943002  vstore_mask16.mz vr3{mr1}, 64(r1)
000710  00a00000  mfence { lm }
000714  e3000fe1  loadli.w r1,  -3968(r30)
000718  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
00071c  46941002  vstore_mask16.mz vr1{mr1}, 64(r1)
000720  9f100000  addli r1, zero, 1
000724  00a00000  mfence { lm }
000728  7e8100e0  vmmov mr2, r1
00072c  b7edb1fc  beq r3, r11, -1160
000730  8b103c10  add.s r1, r24, r3
000734  0b113410  add.s r2, r8, r3
000738  12314002  vadd.s.mz vr2{mr1}, zero, vr4
00073c  92314002  vadd.s.mz vr3{mr1}, zero, vr4
000740  67081fe0  storeli.w r1, -3968(r30)
000744  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
000748  42908002  vload_mask16.mz vr0{mr1}, 64(r1)
00074c  9f008fe2  addli r1, r30, -3776
000750  67042fe0  storeli.w r2, -4032(r30)
000754  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000758  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
00075c  9f000fe2  addli r1, r30, -3840
000760  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000764  8b903310  add.s r1, r7, r3
000768  8b133510  add.s r7, r10, r3
00076c  42108102  vload_mask16.mz vr0{mr1}, 64(r2)
000770  1f018fe1  addli r2, r30, -3904
000774  67001fe0  storeli.w r1, -4096(r30)
000778  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
00077c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000780  42948002  vload_mask16.mz vr8{mr1}, 64(r1)
000784  00a00000  mfence { lm }
000788  e340bfd8  loadli.w r1,  -5028(r30)
00078c  42900302  vload_mask16.mz vr0{mr1}, 0(r7)
000790  8b933410  add.s r7, r9, r3
000794  e3880300  loadli.w r17,  0(r7)
000798  0b943010  add.s r8, r1, r3
00079c  e3405fde  loadli.w r1,  -4308(r30)
0007a0  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
0007a4  0b983010  add.s r16, r1, r3
0007a8  63074800  loadli.w r14,  32(r16)
0007ac  634988ff  loadli.w r18,  -60(r16)
0007b0  e30998ff  loadli.w r19,  -56(r16)
0007b4  634a98ff  loadli.w r20,  -52(r16)
0007b8  e30aa8ff  loadli.w r21,  -48(r16)
0007bc  634ba8ff  loadli.w r22,  -44(r16)
0007c0  e30bb8ff  loadli.w r23,  -40(r16)
0007c4  634cb8ff  loadli.w r24,  -36(r16)
0007c8  e30cc8ff  loadli.w r25,  -32(r16)
0007cc  634dc8ff  loadli.w r26,  -28(r16)
0007d0  e30dd8ff  loadli.w r27,  -24(r16)
0007d4  634ed8ff  loadli.w r28,  -20(r16)
0007d8  e300e8ff  loadli.w r1,  -16(r16)
0007dc  6341e8ff  loadli.w r2,  -12(r16)
0007e0  6302f8ff  loadli.w r4,  -8(r16)
0007e4  e342f8ff  loadli.w r5,  -4(r16)
0007e8  63030800  loadli.w r6,  0(r16)
0007ec  e3430800  loadli.w r7,  4(r16)
0007f0  63041800  loadli.w r8,  8(r16)
0007f4  e3441800  loadli.w r9,  12(r16)
0007f8  63052800  loadli.w r10,  16(r16)
0007fc  e3452800  loadli.w r11,  20(r16)
000800  63063800  loadli.w r12,  24(r16)
000804  e3473800  loadli.w r15,  28(r16)
000808  6703efde  storeli.w r14, -4304(r30)
00080c  63474800  loadli.w r14,  36(r16)
000810  6743efde  storeli.w r14, -4300(r30)
000814  63075800  loadli.w r14,  40(r16)
000818  e703efde  storeli.w r14, -4296(r30)
00081c  63475800  loadli.w r14,  44(r16)
000820  e743efde  storeli.w r14, -4292(r30)
000824  63076800  loadli.w r14,  48(r16)
000828  6704efde  storeli.w r14, -4288(r30)
00082c  63476800  loadli.w r14,  52(r16)
000830  e74befde  storeli.w r14, -4164(r30)
000834  63077800  loadli.w r14,  56(r16)
000838  63487800  loadli.w r16,  60(r16)
00083c  670cefde  storeli.w r14, -4160(r30)
000840  1f270000  addli r14, zero, 2
000844  00a00000  mfence { lm }
000848  6aa12834  vor.u.mh vr2{mr2}, r17, vr2
00084c  fe0107e0  vmmov mr3, r14
000850  1f470000  addli r14, zero, 4
000854  7e0007e0  vmmov mr0, r14
000858  1f071000  addli r14, zero, 8
00085c  6a212936  vor.u.mh vr2{mr3}, r18, vr2
000860  6aa12930  vor.u.mh vr2{mr0}, r19, vr2
000864  7e0001c0  vmmov mr0, mr2
000868  7e0107e0  vmmov mr2, r14
00086c  1f072000  addli r14, zero, 16
000870  fe0107e0  vmmov mr3, r14
000874  1f074000  addli r14, zero, 32
000878  6a212a34  vor.u.mh vr2{mr2}, r20, vr2
00087c  6aa12a36  vor.u.mh vr2{mr3}, r21, vr2
000880  fe0107e0  vmmov mr3, r14
000884  1f078000  addli r14, zero, 64
000888  6a212b36  vor.u.mh vr2{mr3}, r22, vr2
00088c  fe0107e0  vmmov mr3, r14
000890  1f070001  addli r14, zero, 128
000894  6aa12b36  vor.u.mh vr2{mr3}, r23, vr2
000898  fe0107e0  vmmov mr3, r14
00089c  1f070002  addli r14, zero, 256
0008a0  6a212c36  vor.u.mh vr2{mr3}, r24, vr2
0008a4  fe0107e0  vmmov mr3, r14
0008a8  1f070004  addli r14, zero, 512
0008ac  6aa12c36  vor.u.mh vr2{mr3}, r25, vr2
0008b0  fe0107e0  vmmov mr3, r14
0008b4  1f070008  addli r14, zero, 1024
0008b8  6a212d36  vor.u.mh vr2{mr3}, r26, vr2
0008bc  fe0107e0  vmmov mr3, r14
0008c0  1f070010  addli r14, zero, 2048
0008c4  6aa12d36  vor.u.mh vr2{mr3}, r27, vr2
0008c8  fe0107e0  vmmov mr3, r14
0008cc  1f070020  addli r14, zero, 4096
0008d0  6a212e36  vor.u.mh vr2{mr3}, r28, vr2
0008d4  fe0107e0  vmmov mr3, r14
0008d8  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
0008dc  9f000040  addli r1, zero, 8192
0008e0  7e8100e0  vmmov mr2, r1
0008e4  ab400000  lui r1, 4
0008e8  6a212134  vor.u.mh vr2{mr2}, r2, vr2
0008ec  fe8100e0  vmmov mr3, r1
0008f0  ab800000  lui r1, 8
0008f4  1f010002  addli r2, zero, 256
0008f8  6a212236  vor.u.mh vr2{mr3}, r4, vr2
0008fc  fe8100e0  vmmov mr3, r1
000900  9f200000  addli r1, zero, 2
000904  6aa12236  vor.u.mh vr2{mr3}, r5, vr2
000908  ea213330  vor.u.mh vr3{mr0}, r6, vr3
00090c  7e8000e0  vmmov mr0, r1
000910  9f400000  addli r1, zero, 4
000914  eaa13330  vor.u.mh vr3{mr0}, r7, vr3
000918  7e8000e0  vmmov mr0, r1
00091c  9f001000  addli r1, zero, 8
000920  96122002  vadd.f.mz.rn vr5{mr1}, vr0, vr2
000924  ea213430  vor.u.mh vr3{mr0}, r8, vr3
000928  7e8000e0  vmmov mr0, r1
00092c  9f002000  addli r1, zero, 16
000930  eaa13430  vor.u.mh vr3{mr0}, r9, vr3
000934  7e8000e0  vmmov mr0, r1
000938  9f004000  addli r1, zero, 32
00093c  ea213530  vor.u.mh vr3{mr0}, r10, vr3
000940  7e8000e0  vmmov mr0, r1
000944  9f008000  addli r1, zero, 64
000948  eaa13530  vor.u.mh vr3{mr0}, r11, vr3
00094c  7e8000e0  vmmov mr0, r1
000950  9f000001  addli r1, zero, 128
000954  ea213630  vor.u.mh vr3{mr0}, r12, vr3
000958  7e8000e0  vmmov mr0, r1
00095c  eaa13730  vor.u.mh vr3{mr0}, r15, vr3
000960  e3006fde  loadli.w r1,  -4304(r30)
000964  7e0001e0  vmmov mr0, r2
000968  1f010004  addli r2, zero, 512
00096c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000970  e3406fde  loadli.w r1,  -4300(r30)
000974  7e0001e0  vmmov mr0, r2
000978  1f010008  addli r2, zero, 1024
00097c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000980  e3007fde  loadli.w r1,  -4296(r30)
000984  7e0001e0  vmmov mr0, r2
000988  1f010010  addli r2, zero, 2048
00098c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000990  e3407fde  loadli.w r1,  -4292(r30)
000994  7e0001e0  vmmov mr0, r2
000998  1f010020  addli r2, zero, 4096
00099c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0009a0  e3008fde  loadli.w r1,  -4288(r30)
0009a4  7e0001e0  vmmov mr0, r2
0009a8  2b410000  lui r2, 4
0009ac  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0009b0  e3407fdf  loadli.w r1,  -4164(r30)
0009b4  7e0001e0  vmmov mr0, r2
0009b8  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
0009bc  e3008fdf  loadli.w r1,  -4160(r30)
0009c0  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0009c4  ea213836  vor.u.mh vr3{mr3}, r16, vr3
0009c8  16953002  vadd.f.mz.rn vr10{mr1}, vr1, vr3
0009cc  bbe506fc  bneq r13, zero, -1672
0009d0  9f008fd7  addli r1, r30, -5184
0009d4  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0009d8  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0009dc  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0009e0  92340002  vadd.s.mz vr9{mr1}, zero, vr0
0009e4  5b97ffff  j -840
0009e8  9f000fe4  addli r1, r30, -3584
0009ec  1f010401  addli r2, r8, 128
0009f0  9f010000  addli r3, zero, 0
0009f4  9f0c0003  addli r25, zero, 384
0009f8  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0009fc  9f008fe4  addli r1, r30, -3520
000a00  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000a04  9f000fe8  addli r1, r30, -3072
000a08  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000a0c  9f000fec  addli r1, r30, -2560
000a10  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
000a14  9f008fe8  addli r1, r30, -3008
000a18  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000a1c  9f008fe2  addli r1, r30, -3776
000a20  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000a24  9f008fec  addli r1, r30, -2496
000a28  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000a2c  9f808301  addli r1, r7, 192
000a30  00a00000  mfence { lm }
000a34  1f020fe1  addli r4, r30, -3968
000a38  12318002  vadd.s.mz vr2{mr1}, zero, vr8
000a3c  9f030fe3  addli r7, r30, -3712
000a40  8b123110  add.s r5, r2, r3
000a44  0b133c10  add.s r6, r24, r3
000a48  1f170000  addli r14, zero, 1
000a4c  9f071000  addli r15, zero, 8
000a50  1f082000  addli r16, zero, 16
000a54  1f098000  addli r18, zero, 64
000a58  1f0a0002  addli r20, zero, 256
000a5c  9f0a0004  addli r21, zero, 512
000a60  9233a002  vadd.s.mz vr7{mr1}, zero, vr10
000a64  46103202  vstore_mask16.mz vr3{mr1}, 0(r4)
000a68  1f028fe0  addli r4, r30, -4032
000a6c  42920302  vload_mask16.mz vr4{mr1}, 0(r7)
000a70  7e0107e0  vmmov mr2, r14
000a74  1f270000  addli r14, zero, 2
000a78  46109202  vstore_mask16.mz vr9{mr1}, 0(r4)
000a7c  1f020fe0  addli r4, r30, -4096
000a80  7e0007e0  vmmov mr0, r14
000a84  1f470000  addli r14, zero, 4
000a88  46102202  vstore_mask16.mz vr2{mr1}, 0(r4)
000a8c  0b923010  add.s r4, r1, r3
000a90  fe0107e0  vmmov mr3, r14
000a94  1f071000  addli r14, zero, 8
000a98  9f810101  addli r3, r3, 128
000a9c  c21582e3  vload_mask16.mz vr11{mr1}, 1984(r4)
000aa0  42930202  vload_mask16.mz vr6{mr1}, 0(r5)
000aa4  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
000aa8  1f020fe2  addli r4, r30, -3840
000aac  92304002  vadd.s.mz vr1{mr1}, zero, vr4
000ab0  46106202  vstore_mask16.mz vr6{mr1}, 0(r4)
000ab4  1f028fe1  addli r4, r30, -3904
000ab8  1e10a002  vsub.f.mz.rn vr0{mr1}, vr0, vr10
000abc  12355002  vadd.s.mz vr10{mr1}, zero, vr5
000ac0  42130303  vload_mask16.mz vr6{mr1}, 128(r6)
000ac4  42948202  vload_mask16.mz vr8{mr1}, 64(r5)
000ac8  96946402  vadd.f.mz.rn vr9{mr1}, vr9, vr6
000acc  46108202  vstore_mask16.mz vr8{mr1}, 0(r4)
000ad0  7a120340  vextracti.f r4, 0(vr6)
000ad4  7a151340  vextracti.f r10, 1(vr6)
000ad8  7a162340  vextracti.f r12, 2(vr6)
000adc  fa163340  vextracti.f r13, 3(vr6)
000ae0  7a14c340  vextracti.f r8, 12(vr6)
000ae4  fa13d340  vextracti.f r7, 13(vr6)
000ae8  fa12f340  vextracti.f r5, 15(vr6)
000aec  c2118303  vload_mask16.mz vr3{mr1}, 192(r6)
000af0  7a13e340  vextracti.f r6, 14(vr6)
000af4  fa940440  vextracti.f r9, 0(vr9)
000af8  fa951440  vextracti.f r11, 1(vr9)
000afc  0f029218  div.f.rn r4, r4, r9
000b00  0f05b518  div.f.rn r10, r10, r11
000b04  fa952440  vextracti.f r11, 2(vr9)
000b08  fa14b340  vextracti.f r9, 11(vr6)
000b0c  16143102  vadd.f.mz.rn vr8{mr1}, vr2, vr3
000b10  fa988140  vextracti.f r17, 8(vr3)
000b14  fa99a140  vextracti.f r19, 10(vr3)
000b18  0e110002  vmul.f.mz.rn vr2{mr1}, vr0, vr0
000b1c  fa1bc440  vextracti.f r23, 12(vr8)
000b20  7a1bd440  vextracti.f r22, 13(vr8)
000b24  ea201234  vor.u.mh vr1{mr2}, r4, vr1
000b28  0f02b618  div.f.rn r4, r12, r11
000b2c  fa953440  vextracti.f r11, 3(vr9)
000b30  7a164340  vextracti.f r12, 4(vr6)
000b34  ea201530  vor.u.mh vr1{mr0}, r10, vr1
000b38  0f85b618  div.f.rn r10, r13, r11
000b3c  fa954440  vextracti.f r11, 4(vr9)
000b40  fa165340  vextracti.f r13, 5(vr6)
000b44  7e0007e0  vmmov mr0, r14
000b48  1f072000  addli r14, zero, 16
000b4c  ea201236  vor.u.mh vr1{mr3}, r4, vr1
000b50  0f02b618  div.f.rn r4, r12, r11
000b54  fa955440  vextracti.f r11, 5(vr9)
000b58  7a166340  vextracti.f r12, 6(vr6)
000b5c  ea201530  vor.u.mh vr1{mr0}, r10, vr1
000b60  0f85b618  div.f.rn r10, r13, r11
000b64  fa956440  vextracti.f r11, 6(vr9)
000b68  7e0007e0  vmmov mr0, r14
000b6c  1f074000  addli r14, zero, 32
000b70  fa167340  vextracti.f r13, 7(vr6)
000b74  ea201230  vor.u.mh vr1{mr0}, r4, vr1
000b78  0f02b618  div.f.rn r4, r12, r11
000b7c  fa957440  vextracti.f r11, 7(vr9)
000b80  7e0007e0  vmmov mr0, r14
000b84  1f078000  addli r14, zero, 64
000b88  7a168340  vextracti.f r12, 8(vr6)
000b8c  ea201530  vor.u.mh vr1{mr0}, r10, vr1
000b90  0f85b618  div.f.rn r10, r13, r11
000b94  fa958440  vextracti.f r11, 8(vr9)
000b98  7e0007e0  vmmov mr0, r14
000b9c  1f070001  addli r14, zero, 128
000ba0  fa169340  vextracti.f r13, 9(vr6)
000ba4  8f05b618  div.f.rn r11, r12, r11
000ba8  7a16a340  vextracti.f r12, 10(vr6)
000bac  12334002  vadd.s.mz vr6{mr1}, zero, vr4
000bb0  ea201230  vor.u.mh vr1{mr0}, r4, vr1
000bb4  7a929440  vextracti.f r4, 9(vr9)
000bb8  7e0007e0  vmmov mr0, r14
000bbc  1f070002  addli r14, zero, 256
000bc0  ea201530  vor.u.mh vr1{mr0}, r10, vr1
000bc4  0f854618  div.f.rn r10, r13, r4
000bc8  fa96a440  vextracti.f r13, 10(vr9)
000bcc  7e0007e0  vmmov mr0, r14
000bd0  1f070004  addli r14, zero, 512
000bd4  7a92f140  vextracti.f r4, 15(vr3)
000bd8  eaa01530  vor.u.mh vr1{mr0}, r11, vr1
000bdc  8f05d618  div.f.rn r11, r12, r13
000be0  7a96b440  vextracti.f r12, 11(vr9)
000be4  7e0007e0  vmmov mr0, r14
000be8  1f070008  addli r14, zero, 1024
000bec  fa963140  vextracti.f r13, 3(vr3)
000bf0  8f84c418  div.f.rn r9, r9, r12
000bf4  7a961140  vextracti.f r12, 1(vr3)
000bf8  ea201530  vor.u.mh vr1{mr0}, r10, vr1
000bfc  7a95c440  vextracti.f r10, 12(vr9)
000c00  7e0007e0  vmmov mr0, r14
000c04  1f070010  addli r14, zero, 2048
000c08  0f04a418  div.f.rn r8, r8, r10
000c0c  7a95d440  vextracti.f r10, 13(vr9)
000c10  eaa01530  vor.u.mh vr1{mr0}, r11, vr1
000c14  7e0007e0  vmmov mr0, r14
000c18  fa950140  vextracti.f r11, 0(vr3)
000c1c  1f470000  addli r14, zero, 4
000c20  eaa01430  vor.u.mh vr1{mr0}, r9, vr1
000c24  8f84a318  div.f.rn r9, r7, r10
000c28  1f050020  addli r10, zero, 4096
000c2c  fa93e440  vextracti.f r7, 14(vr9)
000c30  fe0105e0  vmmov mr3, r10
000c34  1f050040  addli r10, zero, 8192
000c38  0f037318  div.f.rn r6, r6, r7
000c3c  fa130440  vextracti.f r7, 0(vr8)
000c40  ea201436  vor.u.mh vr1{mr3}, r8, vr1
000c44  7a94f440  vextracti.f r8, 15(vr9)
000c48  7e0105e0  vmmov mr2, r10
000c4c  2b450000  lui r10, 4
000c50  0f848218  div.f.rn r8, r5, r8
000c54  fa121440  vextracti.f r5, 1(vr8)
000c58  eaa01434  vor.u.mh vr1{mr2}, r9, vr1
000c5c  7e0105e0  vmmov mr2, r10
000c60  8f847518  div.f.rn r9, r11, r7
000c64  7a952140  vextracti.f r10, 2(vr3)
000c68  8f055618  div.f.rn r11, r12, r5
000c6c  2b860000  lui r12, 8
000c70  ea201334  vor.u.mh vr1{mr2}, r6, vr1
000c74  7e0106e0  vmmov mr2, r12
000c78  7a132440  vextracti.f r6, 2(vr8)
000c7c  7a964140  vextracti.f r12, 4(vr3)
000c80  0f056518  div.f.rn r10, r10, r6
000c84  ea201434  vor.u.mh vr1{mr2}, r8, vr1
000c88  1f140000  addli r8, zero, 1
000c8c  7e0104e0  vmmov mr2, r8
000c90  7a143440  vextracti.f r8, 3(vr8)
000c94  6aa36434  vor.u.mh vr6{mr2}, r9, vr6
000c98  9f240000  addli r9, zero, 2
000c9c  7e8104e0  vmmov mr2, r9
000ca0  fa144440  vextracti.f r9, 4(vr8)
000ca4  6aa36534  vor.u.mh vr6{mr2}, r11, vr6
000ca8  8f858618  div.f.rn r11, r13, r8
000cac  7e0107e0  vmmov mr2, r14
000cb0  fa965140  vextracti.f r13, 5(vr3)
000cb4  7a976140  vextracti.f r14, 6(vr3)
000cb8  0f069618  div.f.rn r12, r12, r9
000cbc  6a236534  vor.u.mh vr6{mr2}, r10, vr6
000cc0  7a155440  vextracti.f r10, 5(vr8)
000cc4  7e8107e0  vmmov mr2, r15
000cc8  fa977140  vextracti.f r15, 7(vr3)
000ccc  8f86a618  div.f.rn r13, r13, r10
000cd0  6aa36534  vor.u.mh vr6{mr2}, r11, vr6
000cd4  fa156440  vextracti.f r11, 6(vr8)
000cd8  7e0108e0  vmmov mr2, r16
000cdc  0f08b718  div.f.rn r16, r14, r11
000ce0  1f074000  addli r14, zero, 32
000ce4  6a236634  vor.u.mh vr6{mr2}, r12, vr6
000ce8  7a167440  vextracti.f r12, 7(vr8)
000cec  7e0107e0  vmmov mr2, r14
000cf0  7a178440  vextracti.f r14, 8(vr8)
000cf4  6aa36634  vor.u.mh vr6{mr2}, r13, vr6
000cf8  8f86c718  div.f.rn r13, r15, r12
000cfc  7e0109e0  vmmov mr2, r18
000d00  1f090001  addli r18, zero, 128
000d04  fa979140  vextracti.f r15, 9(vr3)
000d08  6a236834  vor.u.mh vr6{mr2}, r16, vr6
000d0c  0f88e818  div.f.rn r16, r17, r14
000d10  fa189440  vextracti.f r17, 9(vr8)
000d14  7e0109e0  vmmov mr2, r18
000d18  7a19a440  vextracti.f r18, 10(vr8)
000d1c  8f892919  div.f.rn r19, r19, r18
000d20  6aa36634  vor.u.mh vr6{mr2}, r13, vr6
000d24  8f861719  div.f.rn r13, r15, r17
000d28  7e010ae0  vmmov mr2, r20
000d2c  fa97b140  vextracti.f r15, 11(vr3)
000d30  7a9ac140  vextracti.f r20, 12(vr3)
000d34  0f0a7a19  div.f.rn r20, r20, r23
000d38  6a236834  vor.u.mh vr6{mr2}, r16, vr6
000d3c  7a18b440  vextracti.f r16, 11(vr8)
000d40  7e810ae0  vmmov mr2, r21
000d44  9f0a0008  addli r21, zero, 1024
000d48  6aa36634  vor.u.mh vr6{mr2}, r13, vr6
000d4c  8f860719  div.f.rn r13, r15, r16
000d50  7e810ae0  vmmov mr2, r21
000d54  fa97d140  vextracti.f r15, 13(vr3)
000d58  fa9ae140  vextracti.f r21, 14(vr3)
000d5c  9e915502  vsub.f.mz.rn vr3{mr1}, vr11, vr5
000d60  6aa36934  vor.u.mh vr6{mr2}, r19, vr6
000d64  fa19e440  vextracti.f r19, 14(vr8)
000d68  8e953102  vmul.f.mz.rn vr11{mr1}, vr3, vr3
000d6c  76914402  veq.f.mz mr2{mr1}, vr9, vr4
000d70  6aa36630  vor.u.mh vr6{mr0}, r13, vr6
000d74  8f866719  div.f.rn r13, r15, r22
000d78  fa17f440  vextracti.f r15, 15(vr8)
000d7c  0f02f218  div.f.rn r4, r4, r15
000d80  6a236a36  vor.u.mh vr6{mr3}, r20, vr6
000d84  0f8a3a19  div.f.rn r20, r21, r19
000d88  9f0a0040  addli r21, zero, 8192
000d8c  7e800ae0  vmmov mr0, r21
000d90  6aa36630  vor.u.mh vr6{mr0}, r13, vr6
000d94  9f068fe0  addli r13, r30, -4032
000d98  c2920602  vload_mask16.mz vr5{mr1}, 0(r13)
000d9c  8e92b202  vmul.f.mz.rn vr5{mr1}, vr5, vr11
000da0  46905602  vstore_mask16.mz vr5{mr1}, 0(r13)
000da4  ab460000  lui r13, 4
000da8  7e8006e0  vmmov mr0, r13
000dac  9f060fe0  addli r13, r30, -4096
000db0  6a236a30  vor.u.mh vr6{mr0}, r20, vr6
000db4  2b8a0000  lui r20, 8
000db8  c2920602  vload_mask16.mz vr5{mr1}, 0(r13)
000dbc  fe0601a0  vmmov r13, mr2
000dc0  76114402  veq.f.mz mr2{mr1}, vr8, vr4
000dc4  7e000ae0  vmmov mr0, r20
000dc8  6a236230  vor.u.mh vr6{mr0}, r4, vr6
000dcc  1f42ffe3  addli r4, r30, -3588
000dd0  7310d200  store.h r13, 0(r4)
000dd4  fe0601a0  vmmov r13, mr2
000dd8  6342ffe3  loadli.w r4,  -3588(r30)
000ddc  0e912202  vmul.f.mz.rn vr2{mr1}, vr5, vr2
000de0  7e0102e0  vmmov mr2, r4
000de4  1f02ffe3  addli r4, r30, -3592
000de8  7310d200  store.h r13, 0(r4)
000dec  abf60000  lui r13, 15
000df0  6302ffe3  loadli.w r4,  -3592(r30)
000df4  9ff6f61f  addli r13, r13, 4095
000df8  7e8006e0  vmmov mr0, r13
000dfc  9f060fd8  addli r13, r30, -5120
000e00  7e010100  vmand mr2, mr2, mr0
000e04  c2950602  vload_mask16.mz vr11{mr1}, 0(r13)
000e08  ee904534  vor.f.mh vr1{mr2}, vr11, vr4
000e0c  7e0102e0  vmmov mr2, r4
000e10  1f020fe2  addli r4, r30, -3840
000e14  7e010100  vmand mr2, mr2, mr0
000e18  6e934534  vor.f.mh vr6{mr2}, vr11, vr4
000e1c  42120202  vload_mask16.mz vr4{mr1}, 0(r4)
000e20  1f020fe1  addli r4, r30, -3968
000e24  c2120202  vload_mask16.mz vr5{mr1}, 0(r4)
000e28  1f028fe2  addli r4, r30, -3776
000e2c  8e911102  vmul.f.mz.rn vr3{mr1}, vr3, vr1
000e30  0e106002  vmul.f.mz.rn vr0{mr1}, vr0, vr6
000e34  0e116102  vmul.f.mz.rn vr2{mr1}, vr2, vr6
000e38  16924202  vadd.f.mz.rn vr4{mr1}, vr5, vr4
000e3c  c2120202  vload_mask16.mz vr5{mr1}, 0(r4)
000e40  1f028fe1  addli r4, r30, -3904
000e44  c2150202  vload_mask16.mz vr11{mr1}, 0(r4)
000e48  1f028fe0  addli r4, r30, -4032
000e4c  9695b202  vadd.f.mz.rn vr11{mr1}, vr5, vr11
000e50  9232a002  vadd.s.mz vr5{mr1}, zero, vr10
000e54  12357002  vadd.s.mz vr10{mr1}, zero, vr7
000e58  c2130202  vload_mask16.mz vr7{mr1}, 0(r4)
000e5c  1f028fe2  addli r4, r30, -3776
000e60  16150502  vadd.f.mz.rn vr10{mr1}, vr10, vr0
000e64  16902502  vadd.f.mz.rn vr0{mr1}, vr11, vr2
000e68  96923202  vadd.f.mz.rn vr5{mr1}, vr5, vr3
000e6c  8e901302  vmul.f.mz.rn vr1{mr1}, vr7, vr1
000e70  46100202  vstore_mask16.mz vr0{mr1}, 0(r4)
000e74  96111202  vadd.f.mz.rn vr3{mr1}, vr4, vr1
000e78  bbfe91fd  bneq r3, r25, -1092
000e7c  9f000fe3  addli r1, r30, -3712
000e80  16908402  vadd.f.mz.rn vr0{mr1}, vr9, vr8
000e84  9f0c0000  addli r25, zero, 0
000e88  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
000e8c  1f8a0c00  addli r20, r25, 0
000e90  7a1c0040  vextracti.f r24, 0(vr0)
000e94  76114002  veq.f.mz mr2{mr1}, vr0, vr4
000e98  fe0a01a0  vmmov r21, mr2
000e9c  9b801a00  andi r1, r21, 1
000ea0  3ba00000  bneq r1, zero, 8
000ea4  0f8a8319  div.f.rn r20, r7, r24
000ea8  9bc0fa00  srli r1, r21, 15
000eac  7a11f040  vextracti.f r2, 15(vr0)
000eb0  9f860c00  addli r13, r25, 0
000eb4  9b801000  andi r1, r1, 1
000eb8  3ba00000  bneq r1, zero, 8
000ebc  8f862718  div.f.rn r13, r15, r2
000ec0  9bc0ea00  srli r1, r21, 14
000ec4  1f120000  addli r4, zero, 1
000ec8  fa11e040  vextracti.f r3, 14(vr0)
000ecc  9f870c00  addli r15, r25, 0
000ed0  9b801000  andi r1, r1, 1
000ed4  7e0102e0  vmmov mr2, r4
000ed8  3ba00000  bneq r1, zero, 8
000edc  8f873918  div.f.rn r15, r19, r3
000ee0  9bc0da00  srli r1, r21, 13
000ee4  7a12d040  vextracti.f r4, 13(vr0)
000ee8  9f890c00  addli r19, r25, 0
000eec  9b801000  andi r1, r1, 1
000ef0  3ba00000  bneq r1, zero, 8
000ef4  8f094b18  div.f.rn r19, r22, r4
000ef8  9bc0ca00  srli r1, r21, 12
000efc  fa13c040  vextracti.f r7, 12(vr0)
000f00  1f8b0c00  addli r22, r25, 0
000f04  9b801000  andi r1, r1, 1
000f08  3ba00000  bneq r1, zero, 8
000f0c  0f8b7b18  div.f.rn r22, r23, r7
000f10  670c7fde  storeli.w r7, -4160(r30)
000f14  9bc0ba00  srli r1, r21, 11
000f18  9f8b0c00  addli r23, r25, 0
000f1c  00a00000  mfence { lm }
000f20  67004fe0  storeli.w r4, -4096(r30)
000f24  7a12b040  vextracti.f r4, 11(vr0)
000f28  67043fe0  storeli.w r3, -4032(r30)
000f2c  67082fe0  storeli.w r2, -3968(r30)
000f30  9b801000  andi r1, r1, 1
000f34  3ba00000  bneq r1, zero, 8
000f38  8f0b4818  div.f.rn r23, r16, r4
000f3c  9bc0aa00  srli r1, r21, 10
000f40  fa11a040  vextracti.f r3, 10(vr0)
000f44  1f8d0c00  addli r26, r25, 0
000f48  9b801000  andi r1, r1, 1
000f4c  3ba00000  bneq r1, zero, 8
000f50  0f0d3918  div.f.rn r26, r18, r3
000f54  9bc09a00  srli r1, r21, 9
000f58  7a119040  vextracti.f r2, 9(vr0)
000f5c  9f8d0c00  addli r27, r25, 0
000f60  9b801000  andi r1, r1, 1
000f64  67002fe2  storeli.w r2, -3840(r30)
000f68  3bb00000  bneq r1, zero, 12
000f6c  e3000fe2  loadli.w r1,  -3840(r30)
000f70  8f8d1818  div.f.rn r27, r17, r1
000f74  9bc08a00  srli r1, r21, 8
000f78  7a118040  vextracti.f r2, 8(vr0)
000f7c  9f880c00  addli r17, r25, 0
000f80  9b801000  andi r1, r1, 1
000f84  670c2fe0  storeli.w r2, -3904(r30)
000f88  3bb00000  bneq r1, zero, 12
000f8c  e3008fe1  loadli.w r1,  -3904(r30)
000f90  8f081718  div.f.rn r17, r14, r1
000f94  1bc17a00  srli r2, r21, 7
000f98  fa107040  vextracti.f r1, 7(vr0)
000f9c  1f870c00  addli r14, r25, 0
000fa0  1b011100  andi r2, r2, 1
000fa4  3b200100  bneq r2, zero, 8
000fa8  0f071618  div.f.rn r14, r12, r1
000fac  1bc16a00  srli r2, r21, 6
000fb0  7a196040  vextracti.f r18, 6(vr0)
000fb4  1f860c00  addli r12, r25, 0
000fb8  1b011100  andi r2, r2, 1
000fbc  3b200100  bneq r2, zero, 8
000fc0  0f862519  div.f.rn r12, r11, r18
000fc4  1bc15a00  srli r2, r21, 5
000fc8  fa155040  vextracti.f r11, 5(vr0)
000fcc  1f8e0c00  addli r28, r25, 0
000fd0  1b011100  andi r2, r2, 1
000fd4  3b200100  bneq r2, zero, 8
000fd8  0f0eb518  div.f.rn r28, r10, r11
000fdc  1bc14a00  srli r2, r21, 4
000fe0  7a154040  vextracti.f r10, 4(vr0)
000fe4  e74b4fde  storeli.w r4, -4164(r30)
000fe8  1b021100  andi r4, r2, 1
000fec  1f810c00  addli r2, r25, 0
000ff0  3b200200  bneq r4, zero, 8
000ff4  0f81a418  div.f.rn r2, r9, r10
000ff8  1bc23a00  srli r4, r21, 3
000ffc  fa143040  vextracti.f r9, 3(vr0)
001000  9b031200  andi r7, r4, 1
001004  1f820c00  addli r4, r25, 0
001008  3ba00300  bneq r7, zero, 8
00100c  0f029418  div.f.rn r4, r8, r9
001010  9bc32a00  srli r7, r21, 2
001014  7a142040  vextracti.f r8, 2(vr0)
001018  1b881300  andi r16, r7, 1
00101c  9f830c00  addli r7, r25, 0
001020  3b200800  bneq r16, zero, 8
001024  8f038318  div.f.rn r7, r6, r8
001028  1bc81a00  srli r16, r21, 1
00102c  7a131040  vextracti.f r6, 1(vr0)
001030  9f8a0c00  addli r21, r25, 0
001034  1b081800  andi r16, r16, 1
001038  3b200800  bneq r16, zero, 8
00103c  8f8a6218  div.f.rn r21, r5, r6
001040  12344002  vadd.s.mz vr8{mr1}, zero, vr4
001044  9f220000  addli r5, zero, 2
001048  fe8102e0  vmmov mr3, r5
00104c  9f420000  addli r5, zero, 4
001050  6a248a34  vor.u.mh vr8{mr2}, r20, vr8
001054  7e8002e0  vmmov mr0, r5
001058  9f021000  addli r5, zero, 8
00105c  6aa48a36  vor.u.mh vr8{mr3}, r21, vr8
001060  6aa48330  vor.u.mh vr8{mr0}, r7, vr8
001064  7e8002e0  vmmov mr0, r5
001068  8b626c10  add.f.rn r5, r24, r6
00106c  6a248230  vor.u.mh vr8{mr0}, r4, vr8
001070  1f022000  addli r4, zero, 16
001074  7e0002e0  vmmov mr0, r4
001078  1f020020  addli r4, zero, 4096
00107c  93e35c06  setle.f r7, r25, r5
001080  6a248130  vor.u.mh vr8{mr0}, r2, vr8
001084  1f014000  addli r2, zero, 32
001088  7e0001e0  vmmov mr0, r2
00108c  1f018000  addli r2, zero, 64
001090  6a248e30  vor.u.mh vr8{mr0}, r28, vr8
001094  7e0001e0  vmmov mr0, r2
001098  1f010001  addli r2, zero, 128
00109c  6a248630  vor.u.mh vr8{mr0}, r12, vr8
0010a0  7e0001e0  vmmov mr0, r2
0010a4  1f010002  addli r2, zero, 256
0010a8  1f060040  addli r12, zero, 8192
0010ac  6a248730  vor.u.mh vr8{mr0}, r14, vr8
0010b0  7e0001e0  vmmov mr0, r2
0010b4  1f010004  addli r2, zero, 512
0010b8  2b470000  lui r14, 4
0010bc  6aa48830  vor.u.mh vr8{mr0}, r17, vr8
0010c0  7e0001e0  vmmov mr0, r2
0010c4  1f010008  addli r2, zero, 1024
0010c8  6aa48d30  vor.u.mh vr8{mr0}, r27, vr8
0010cc  7e0001e0  vmmov mr0, r2
0010d0  1f010010  addli r2, zero, 2048
0010d4  6a248d30  vor.u.mh vr8{mr0}, r26, vr8
0010d8  7e0001e0  vmmov mr0, r2
0010dc  e7038fdf  storeli.w r24, -4296(r30)
0010e0  1bb19200  slli r2, r5, 9
0010e4  1f8d0c00  addli r26, r25, 0
0010e8  13010100  seteq r2, r2, zero
0010ec  6aa48b30  vor.u.mh vr8{mr0}, r23, vr8
0010f0  7e0002e0  vmmov mr0, r4
0010f4  1bc27201  srli r4, r5, 23
0010f8  1b02f20f  andi r4, r4, 255
0010fc  6a248b30  vor.u.mh vr8{mr0}, r22, vr8
001100  7e0006e0  vmmov mr0, r12
001104  13e69207  setle.f r12, r5, r25
001108  1b72f20f  setlti r4, r4, 255
00110c  17112200  or r2, r4, r2
001110  6aa48930  vor.u.mh vr8{mr0}, r19, vr8
001114  7e0007e0  vmmov mr0, r14
001118  17027600  and r4, r12, r7
00111c  ab830000  lui r7, 8
001120  6aa48730  vor.u.mh vr8{mr0}, r15, vr8
001124  7e8003e0  vmmov mr0, r7
001128  17012200  and r2, r4, r2
00112c  6aa48630  vor.u.mh vr8{mr0}, r13, vr8
001130  3b200100  bneq r2, zero, 8
001134  0f0d5318  div.f.rn r26, r6, r5
001138  0b635410  add.f.rn r6, r8, r5
00113c  e30b0fe1  loadli.w r23,  -3968(r30)
001140  e3098fe0  loadli.w r19,  -4032(r30)
001144  63070fe0  loadli.w r14,  -4096(r30)
001148  e3068fdf  loadli.w r13,  -4160(r30)
00114c  1f8e0c00  addli r28, r25, 0
001150  1f880100  addli r16, r3, 0
001154  1b319300  slli r2, r6, 9
001158  93e36c06  setle.f r7, r25, r6
00115c  13669307  setle.f r12, r6, r25
001160  1b427301  srli r4, r6, 23
001164  13010100  seteq r2, r2, zero
001168  1b02f20f  andi r4, r4, 255
00116c  1b72f20f  setlti r4, r4, 255
001170  17112200  or r2, r4, r2
001174  17027600  and r4, r12, r7
001178  17012200  and r2, r4, r2
00117c  3b200100  bneq r2, zero, 8
001180  0f0e6418  div.f.rn r28, r8, r6
001184  0be46410  add.f.rn r8, r9, r6
001188  1b319400  slli r2, r8, 9
00118c  93e38c06  setle.f r7, r25, r8
001190  13669407  setle.f r12, r8, r25
001194  1b427401  srli r4, r8, 23
001198  13010100  seteq r2, r2, zero
00119c  1b02f20f  andi r4, r4, 255
0011a0  1b72f20f  setlti r4, r4, 255
0011a4  17112200  or r2, r4, r2
0011a8  17027600  and r4, r12, r7
0011ac  17012200  and r2, r4, r2
0011b0  1f820c00  addli r4, r25, 0
0011b4  3b200100  bneq r2, zero, 8
0011b8  0f828418  div.f.rn r4, r9, r8
0011bc  8b648510  add.f.rn r9, r10, r8
0011c0  67044fde  storeli.w r4, -4288(r30)
0011c4  9f810c00  addli r3, r25, 0
0011c8  1bb19400  slli r2, r9, 9
0011cc  93e39c06  setle.f r7, r25, r9
0011d0  13e69407  setle.f r12, r9, r25
0011d4  1bc27401  srli r4, r9, 23
0011d8  13010100  seteq r2, r2, zero
0011dc  1b02f20f  andi r4, r4, 255
0011e0  1b72f20f  setlti r4, r4, 255
0011e4  17112200  or r2, r4, r2
0011e8  17027600  and r4, r12, r7
0011ec  17012200  and r2, r4, r2
0011f0  3b200100  bneq r2, zero, 8
0011f4  8f019518  div.f.rn r3, r10, r9
0011f8  0be69510  add.f.rn r12, r11, r9
0011fc  9f8d0c00  addli r27, r25, 0
001200  e7433fde  storeli.w r3, -4292(r30)
001204  1b319600  slli r2, r12, 9
001208  93e3cc06  setle.f r7, r25, r12
00120c  13659607  setle.f r10, r12, r25
001210  1b427601  srli r4, r12, 23
001214  13010100  seteq r2, r2, zero
001218  1b02f20f  andi r4, r4, 255
00121c  1b72f20f  setlti r4, r4, 255
001220  17112200  or r2, r4, r2
001224  17027500  and r4, r10, r7
001228  17012200  and r2, r4, r2
00122c  3b200100  bneq r2, zero, 8
001230  8f8dc518  div.f.rn r27, r11, r12
001234  8b67c910  add.f.rn r15, r18, r12
001238  1bb19700  slli r2, r15, 9
00123c  93e3fc06  setle.f r7, r25, r15
001240  13e59707  setle.f r10, r15, r25
001244  1bc27701  srli r4, r15, 23
001248  13010100  seteq r2, r2, zero
00124c  1b02f20f  andi r4, r4, 255
001250  1b72f20f  setlti r4, r4, 255
001254  17112200  or r2, r4, r2
001258  17027500  and r4, r10, r7
00125c  17012200  and r2, r4, r2
001260  1f820c00  addli r4, r25, 0
001264  3b200100  bneq r2, zero, 8
001268  0f02f918  div.f.rn r4, r18, r15
00126c  0be9f010  add.f.rn r18, r1, r15
001270  67434fde  storeli.w r4, -4300(r30)
001274  1b319900  slli r2, r18, 9
001278  93e32c07  setle.f r7, r25, r18
00127c  13659907  setle.f r10, r18, r25
001280  1b427901  srli r4, r18, 23
001284  13010100  seteq r2, r2, zero
001288  1b02f20f  andi r4, r4, 255
00128c  1b72f20f  setlti r4, r4, 255
001290  17112200  or r2, r4, r2
001294  17027500  and r4, r10, r7
001298  17012200  and r2, r4, r2
00129c  1f820c00  addli r4, r25, 0
0012a0  3b200100  bneq r2, zero, 8
0012a4  0f822019  div.f.rn r4, r1, r18
0012a8  e3018fe1  loadli.w r3,  -3904(r30)
0012ac  67034fde  storeli.w r4, -4304(r30)
0012b0  63050fe2  loadli.w r10,  -3840(r30)
0012b4  0bea2111  add.f.rn r20, r3, r18
0012b8  9b309a00  slli r1, r20, 9
0012bc  13e24c07  setle.f r4, r25, r20
0012c0  93639a07  setle.f r7, r20, r25
0012c4  1b417a01  srli r2, r20, 23
0012c8  93800000  seteq r1, r1, zero
0012cc  1b01f10f  andi r2, r2, 255
0012d0  1b71f10f  setlti r2, r2, 255
0012d4  97101100  or r1, r2, r1
0012d8  17814300  and r2, r7, r4
0012dc  97001100  and r1, r2, r1
0012e0  1f810c00  addli r2, r25, 0
0012e4  3ba00000  bneq r1, zero, 8
0012e8  0f814119  div.f.rn r2, r3, r20
0012ec  8b6a4511  add.f.rn r21, r10, r20
0012f0  670c2fe0  storeli.w r2, -3904(r30)
0012f4  e3437fdf  loadli.w r7,  -4164(r30)
0012f8  9bb09a00  slli r1, r21, 9
0012fc  93e15c07  setle.f r3, r25, r21
001300  13e29a07  setle.f r4, r21, r25
001304  1bc17a01  srli r2, r21, 23
001308  93800000  seteq r1, r1, zero
00130c  1b01f10f  andi r2, r2, 255
001310  1b71f10f  setlti r2, r2, 255
001314  97101100  or r1, r2, r1
001318  17013200  and r2, r4, r3
00131c  97001100  and r1, r2, r1
001320  1f810c00  addli r2, r25, 0
001324  3ba00000  bneq r1, zero, 8
001328  0f015519  div.f.rn r2, r10, r21
00132c  0b6c5811  add.f.rn r24, r16, r21
001330  e7422fde  storeli.w r2, -4308(r30)
001334  9b309c00  slli r1, r24, 9
001338  93e18c07  setle.f r3, r25, r24
00133c  13629c07  setle.f r4, r24, r25
001340  1b417c01  srli r2, r24, 23
001344  93800000  seteq r1, r1, zero
001348  1b01f10f  andi r2, r2, 255
00134c  1b71f10f  setlti r2, r2, 255
001350  97101100  or r1, r2, r1
001354  17013200  and r2, r4, r3
001358  97001100  and r1, r2, r1
00135c  1f810c00  addli r2, r25, 0
001360  3ba00000  bneq r1, zero, 8
001364  0f018819  div.f.rn r2, r16, r24
001368  0be88311  add.f.rn r16, r7, r24
00136c  e7022fde  storeli.w r2, -4312(r30)
001370  9b309800  slli r1, r16, 9
001374  93e10c07  setle.f r3, r25, r16
001378  13629807  setle.f r4, r16, r25
00137c  1b417801  srli r2, r16, 23
001380  93800000  seteq r1, r1, zero
001384  1b01f10f  andi r2, r2, 255
001388  1b71f10f  setlti r2, r2, 255
00138c  97101100  or r1, r2, r1
001390  17013200  and r2, r4, r3
001394  97001100  and r1, r2, r1
001398  1f810c00  addli r2, r25, 0
00139c  3ba00000  bneq r1, zero, 8
0013a0  0f810319  div.f.rn r2, r7, r16
0013a4  8be30611  add.f.rn r7, r13, r16
0013a8  e74b2fde  storeli.w r2, -4164(r30)
0013ac  9bb09300  slli r1, r7, 9
0013b0  13e27c06  setle.f r4, r25, r7
0013b4  13e59307  setle.f r10, r7, r25
0013b8  1bc17301  srli r2, r7, 23
0013bc  93800000  seteq r1, r1, zero
0013c0  1b01f10f  andi r2, r2, 255
0013c4  1b71f10f  setlti r2, r2, 255
0013c8  97101100  or r1, r2, r1
0013cc  17014500  and r2, r10, r4
0013d0  97001100  and r1, r2, r1
0013d4  1f810c00  addli r2, r25, 0
0013d8  3ba00000  bneq r1, zero, 8
0013dc  0f817618  div.f.rn r2, r13, r7
0013e0  0b627710  add.f.rn r4, r14, r7
0013e4  670c2fde  storeli.w r2, -4160(r30)
0013e8  9b309200  slli r1, r4, 9
0013ec  93e54c06  setle.f r11, r25, r4
0013f0  93669207  setle.f r13, r4, r25
0013f4  1b417201  srli r2, r4, 23
0013f8  93800000  seteq r1, r1, zero
0013fc  1b01f10f  andi r2, r2, 255
001400  1b71f10f  setlti r2, r2, 255
001404  97101100  or r1, r2, r1
001408  1781b600  and r2, r13, r11
00140c  17011100  and r2, r2, r1
001410  9f800c00  addli r1, r25, 0
001414  3b200100  bneq r2, zero, 8
001418  8f004718  div.f.rn r1, r14, r4
00141c  0be14910  add.f.rn r2, r19, r4
001420  9f810c00  addli r3, r25, 0
001424  9b359100  slli r11, r2, 9
001428  13e72c06  setle.f r14, r25, r2
00142c  93689107  setle.f r17, r2, r25
001430  9b467101  srli r13, r2, 23
001434  93850500  seteq r11, r11, zero
001438  9b86f60f  andi r13, r13, 255
00143c  9bf6f60f  setlti r13, r13, 255
001440  9795b600  or r11, r13, r11
001444  9786e800  and r13, r17, r14
001448  9786b600  and r13, r13, r11
00144c  3ba00600  bneq r13, zero, 8
001450  8f812918  div.f.rn r3, r19, r2
001454  8be62b10  add.f.rn r13, r23, r2
001458  67003fe0  storeli.w r3, -4096(r30)
00145c  67041fe0  storeli.w r1, -4032(r30)
001460  6700cfe2  storeli.w r12, -3840(r30)
001464  1bb79600  slli r14, r13, 9
001468  93e9dc06  setle.f r19, r25, r13
00146c  13eb9607  setle.f r22, r13, r25
001470  9bc87601  srli r17, r13, 23
001474  13070700  seteq r14, r14, zero
001478  9b88f80f  andi r17, r17, 255
00147c  9bf8f80f  setlti r17, r17, 255
001480  1797e800  or r14, r17, r14
001484  97083b01  and r17, r22, r19
001488  1787e800  and r14, r17, r14
00148c  3b200700  bneq r14, zero, 8
001490  8f8cdb18  div.f.rn r25, r23, r13
001494  9e105502  vsub.f.mz.rn vr1{mr1}, vr10, vr5
001498  6347ffd6  loadli.w r14,  -5252(r30)
00149c  e3008fde  loadli.w r1,  -4288(r30)
0014a0  e3457fde  loadli.w r11,  -4292(r30)
0014a4  9f018fe2  addli r3, r30, -3776
0014a8  1f860d00  addli r12, r27, 0
0014ac  63057fde  loadli.w r10,  -4296(r30)
0014b0  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
0014b4  9f010d00  addli r3, r26, 0
0014b8  7360d700  stores.w r13, 0(r14)
0014bc  0e908002  vmul.f.mz.rn vr0{mr1}, vr1, vr8
0014c0  8e901002  vmul.f.mz.rn vr1{mr1}, vr1, vr1
0014c4  16900202  vadd.f.mz.rn vr0{mr1}, vr5, vr0
0014c8  8e909002  vmul.f.mz.rn vr1{mr1}, vr1, vr9
0014cc  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
0014d0  fa160040  vextracti.f r13, 0(vr0)
0014d4  7a171040  vextracti.f r14, 1(vr0)
0014d8  8e908002  vmul.f.mz.rn vr1{mr1}, vr1, vr8
0014dc  0b67d718  sub.f.rn r14, r14, r13
0014e0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0014e4  fa9d0040  vextracti.f r27, 0(vr1)
0014e8  8b68ed20  mul.f.rn r17, r26, r14
0014ec  0b67e720  mul.f.rn r14, r14, r14
0014f0  8be61611  add.f.rn r13, r13, r17
0014f4  fa182040  vextracti.f r17, 2(vr0)
0014f8  0b67e520  mul.f.rn r14, r10, r14
0014fc  1f050e00  addli r10, r28, 0
001500  8be8d818  sub.f.rn r17, r17, r13
001504  0be7e120  mul.f.rn r14, r3, r14
001508  e3416fde  loadli.w r3,  -4300(r30)
00150c  8b691e21  mul.f.rn r19, r28, r17
001510  7a9e1040  vextracti.f r28, 1(vr1)
001514  8be81821  mul.f.rn r17, r17, r17
001518  8be63611  add.f.rn r13, r13, r19
00151c  fa193040  vextracti.f r19, 3(vr0)
001520  8be21221  mul.f.rn r5, r5, r17
001524  fa982040  vextracti.f r17, 2(vr1)
001528  8be9d918  sub.f.rn r19, r19, r13
00152c  8b625520  mul.f.rn r5, r10, r5
001530  63056fde  loadli.w r10,  -4304(r30)
001534  0beb3021  mul.f.rn r22, r1, r19
001538  8be66611  add.f.rn r13, r13, r22
00153c  7a1b4040  vextracti.f r22, 4(vr0)
001540  0b6bdb18  sub.f.rn r22, r22, r13
001544  8beb6521  mul.f.rn r23, r11, r22
001548  8beb7611  add.f.rn r23, r13, r23
00154c  fa165040  vextracti.f r13, 5(vr0)
001550  8be67619  sub.f.rn r13, r13, r23
001554  0b6dd620  mul.f.rn r26, r12, r13
001558  8be6d620  mul.f.rn r13, r13, r13
00155c  8bebab11  add.f.rn r23, r23, r26
001560  0bedcd11  add.f.rn r26, r27, r28
001564  fa1d6040  vextracti.f r27, 6(vr0)
001568  8be4d420  mul.f.rn r9, r9, r13
00156c  fa965040  vextracti.f r13, 5(vr1)
001570  8bed7d19  sub.f.rn r27, r27, r23
001574  0b67ed10  add.f.rn r14, r26, r14
001578  0bedb121  mul.f.rn r26, r3, r27
00157c  0be7e810  add.f.rn r14, r17, r14
001580  8be83921  mul.f.rn r17, r19, r19
001584  8be9ab11  add.f.rn r19, r23, r26
001588  fa1b7040  vextracti.f r23, 7(vr0)
00158c  0b631321  mul.f.rn r6, r6, r17
001590  8b625710  add.f.rn r5, r14, r5
001594  fa983040  vextracti.f r17, 3(vr1)
001598  0be73b19  sub.f.rn r14, r23, r19
00159c  8be25810  add.f.rn r5, r17, r5
0015a0  0be36020  mul.f.rn r6, r1, r6
0015a4  8b686b21  mul.f.rn r17, r22, r22
0015a8  e3000fe2  loadli.w r1,  -3840(r30)
0015ac  0b6be520  mul.f.rn r22, r10, r14
0015b0  8be26210  add.f.rn r5, r5, r6
0015b4  0b631421  mul.f.rn r6, r8, r17
0015b8  fa984040  vextracti.f r17, 4(vr1)
0015bc  0be46911  add.f.rn r8, r19, r22
0015c0  fa198040  vextracti.f r19, 8(vr0)
0015c4  8be25810  add.f.rn r5, r17, r5
0015c8  0be36520  mul.f.rn r6, r11, r6
0015cc  e3058fe1  loadli.w r11,  -3904(r30)
0015d0  8be88918  sub.f.rn r17, r19, r8
0015d4  8be26210  add.f.rn r5, r5, r6
0015d8  0be31521  mul.f.rn r6, r11, r17
0015dc  8be25610  add.f.rn r5, r13, r5
0015e0  fa169040  vextracti.f r13, 9(vr0)
0015e4  0b636410  add.f.rn r6, r8, r6
0015e8  0b649620  mul.f.rn r8, r12, r9
0015ec  8be4bd21  mul.f.rn r9, r27, r27
0015f0  8be66618  sub.f.rn r13, r13, r6
0015f4  8be28210  add.f.rn r5, r5, r8
0015f8  0be49020  mul.f.rn r8, r1, r9
0015fc  e3405fde  loadli.w r1,  -4308(r30)
001600  fa946040  vextracti.f r9, 6(vr1)
001604  0be6d020  mul.f.rn r12, r1, r13
001608  8be25410  add.f.rn r5, r9, r5
00160c  0be48120  mul.f.rn r8, r3, r8
001610  8b64e720  mul.f.rn r9, r14, r14
001614  e3015fde  loadli.w r3,  -4312(r30)
001618  0b63c310  add.f.rn r6, r6, r12
00161c  7a16a040  vextracti.f r12, 10(vr0)
001620  8be28210  add.f.rn r5, r5, r8
001624  0be49720  mul.f.rn r8, r15, r9
001628  fa947040  vextracti.f r9, 7(vr1)
00162c  0b666618  sub.f.rn r12, r12, r6
001630  8be25410  add.f.rn r5, r9, r5
001634  0b648520  mul.f.rn r8, r10, r8
001638  8be41821  mul.f.rn r9, r17, r17
00163c  63457fdf  loadli.w r10,  -4164(r30)
001640  0be7c120  mul.f.rn r14, r3, r12
001644  8be28210  add.f.rn r5, r5, r8
001648  0b649920  mul.f.rn r8, r18, r9
00164c  fa948040  vextracti.f r9, 8(vr1)
001650  0b63e310  add.f.rn r6, r6, r14
001654  7a17b040  vextracti.f r14, 11(vr0)
001658  8be25410  add.f.rn r5, r9, r5
00165c  0be48520  mul.f.rn r8, r11, r8
001660  8be4d620  mul.f.rn r9, r13, r13
001664  e3050fe0  loadli.w r11,  -4096(r30)
001668  8b666718  sub.f.rn r13, r14, r6
00166c  8be28210  add.f.rn r5, r5, r8
001670  0b649a20  mul.f.rn r8, r20, r9
001674  7a979040  vextracti.f r14, 9(vr1)
001678  8b64d520  mul.f.rn r9, r10, r13
00167c  0be48020  mul.f.rn r8, r1, r8
001680  8b625710  add.f.rn r5, r14, r5
001684  e3008fdf  loadli.w r1,  -4160(r30)
001688  8be6d620  mul.f.rn r13, r13, r13
00168c  0b639310  add.f.rn r6, r6, r9
001690  8b64c620  mul.f.rn r9, r12, r12
001694  7a16c040  vextracti.f r12, 12(vr0)
001698  8be28210  add.f.rn r5, r5, r8
00169c  0b646618  sub.f.rn r8, r12, r6
0016a0  8be49a20  mul.f.rn r9, r21, r9
0016a4  7a96a040  vextracti.f r12, 10(vr1)
0016a8  8b625610  add.f.rn r5, r12, r5
0016ac  0be68020  mul.f.rn r12, r1, r8
0016b0  8be49120  mul.f.rn r9, r3, r9
0016b4  0b648420  mul.f.rn r8, r8, r8
0016b8  0b63c310  add.f.rn r6, r6, r12
0016bc  7a16d040  vextracti.f r12, 13(vr0)
0016c0  8be29210  add.f.rn r5, r5, r9
0016c4  8b64dc20  mul.f.rn r9, r24, r13
0016c8  fa96b040  vextracti.f r13, 11(vr1)
0016cc  1f0c0fe4  addli r24, r30, -3584
0016d0  0b666618  sub.f.rn r12, r12, r6
0016d4  8b619520  mul.f.rn r3, r10, r9
0016d8  63058fe0  loadli.w r10,  -4032(r30)
0016dc  8be25610  add.f.rn r5, r13, r5
0016e0  8b64c520  mul.f.rn r9, r10, r12
0016e4  8be13210  add.f.rn r3, r5, r3
0016e8  8b628820  mul.f.rn r5, r16, r8
0016ec  7a94c040  vextracti.f r8, 12(vr1)
0016f0  0b639310  add.f.rn r6, r6, r9
0016f4  fa14e040  vextracti.f r9, 14(vr0)
0016f8  8b613410  add.f.rn r3, r8, r3
0016fc  8be25020  mul.f.rn r5, r1, r5
001700  0b64c620  mul.f.rn r8, r12, r12
001704  8be46418  sub.f.rn r9, r9, r6
001708  8be15110  add.f.rn r3, r3, r5
00170c  8be28320  mul.f.rn r5, r7, r8
001710  fa93d040  vextracti.f r7, 13(vr1)
001714  0be49520  mul.f.rn r8, r11, r9
001718  8be13310  add.f.rn r3, r7, r3
00171c  8b605520  mul.f.rn r1, r10, r5
001720  8be29420  mul.f.rn r5, r9, r9
001724  fa13f040  vextracti.f r7, 15(vr0)
001728  0b638310  add.f.rn r6, r6, r8
00172c  8be01110  add.f.rn r1, r3, r1
001730  8b615220  mul.f.rn r3, r4, r5
001734  fa92e040  vextracti.f r5, 14(vr1)
001738  0be26318  sub.f.rn r4, r7, r6
00173c  8be01210  add.f.rn r1, r5, r1
001740  8be13520  mul.f.rn r3, r11, r3
001744  8b624220  mul.f.rn r5, r4, r4
001748  8be03010  add.f.rn r1, r1, r3
00174c  fa91f040  vextracti.f r3, 15(vr1)
001750  0be24c20  mul.f.rn r4, r25, r4
001754  0b615120  mul.f.rn r2, r2, r5
001758  8be01110  add.f.rn r1, r3, r1
00175c  8b614310  add.f.rn r3, r6, r4
001760  0be12c20  mul.f.rn r2, r25, r2
001764  8be02010  add.f.rn r1, r1, r2
001768  63410fd7  loadli.w r2,  -5244(r30)
00176c  73603100  stores.w r3, 0(r2)
001770  63010fd7  loadli.w r2,  -5248(r30)
001774  73601100  stores.w r1, 0(r2)
001778  00a00300  mfence { lm, sm, gm }
00177c  e3002fd7  loadli.w r1,  -5232(r30)
001780  80a10004  csr_set csr3, r1
001784  00d00100  sync_group
001788  6301ffd6  loadli.w r2,  -5256(r30)
00178c  bb150100  bneq r2, zero, 356
001790  63412fd7  loadli.w r2,  -5228(r30)
001794  9f000000  addli r1, zero, 0
001798  ef410100  loads.w r3, 0(r2)
00179c  6f424100  loads.w r4, 4(r2)
0017a0  0be14110  add.f.rn r2, r3, r4
0017a4  9b329100  slli r5, r2, 9
0017a8  93e32006  setle.f r7, r1, r2
0017ac  13641106  setle.f r8, r2, r1
0017b0  1b437101  srli r6, r2, 23
0017b4  93821200  seteq r5, r5, r1
0017b8  1b03f30f  andi r6, r6, 255
0017bc  1b73f30f  setlti r6, r6, 255
0017c0  97125300  or r5, r6, r5
0017c4  17037400  and r6, r8, r7
0017c8  17035300  and r6, r6, r5
0017cc  9f820000  addli r5, r1, 0
0017d0  3b200300  bneq r6, zero, 8
0017d4  8f022218  div.f.rn r5, r4, r2
0017d8  63422fd7  loadli.w r4,  -5228(r30)
0017dc  6f438200  loads.w r6, 8(r4)
0017e0  0b626110  add.f.rn r4, r2, r6
0017e4  9b339200  slli r7, r4, 9
0017e8  93e44006  setle.f r9, r1, r4
0017ec  13651206  setle.f r10, r4, r1
0017f0  1b447201  srli r8, r4, 23
0017f4  93831300  seteq r7, r7, r1
0017f8  1b04f40f  andi r8, r8, 255
0017fc  1b74f40f  setlti r8, r8, 255
001800  97137400  or r7, r8, r7
001804  17049500  and r8, r10, r9
001808  17047400  and r8, r8, r7
00180c  9f830000  addli r7, r1, 0
001810  3b200400  bneq r8, zero, 8
001814  8f034318  div.f.rn r7, r6, r4
001818  63432fd7  loadli.w r6,  -5228(r30)
00181c  6f44c300  loads.w r8, 12(r6)
001820  0b638210  add.f.rn r6, r4, r8
001824  9b349300  slli r9, r6, 9
001828  93e56006  setle.f r11, r1, r6
00182c  13661306  setle.f r12, r6, r1
001830  1b457301  srli r10, r6, 23
001834  93841400  seteq r9, r9, r1
001838  1b05f50f  andi r10, r10, 255
00183c  1b75f50f  setlti r10, r10, 255
001840  97149500  or r9, r10, r9
001844  1705b600  and r10, r12, r11
001848  97049500  and r9, r10, r9
00184c  3ba00400  bneq r9, zero, 8
001850  8f006418  div.f.rn r1, r8, r6
001854  e3471fd7  loadli.w r15,  -5236(r30)
001858  63081fd7  loadli.w r16,  -5240(r30)
00185c  6fc40700  loads.w r8, 0(r15)
001860  efc44700  loads.w r9, 4(r15)
001864  efc58700  loads.w r11, 8(r15)
001868  6f464800  loads.w r12, 4(r16)
00186c  efc6c700  loads.w r13, 12(r15)
001870  6f478800  loads.w r14, 8(r16)
001874  8be48418  sub.f.rn r9, r9, r8
001878  0be55420  mul.f.rn r10, r9, r5
00187c  8be49420  mul.f.rn r9, r9, r9
001880  0b64a410  add.f.rn r8, r8, r10
001884  6f450800  loads.w r10, 0(r16)
001888  8be13420  mul.f.rn r3, r9, r3
00188c  8be58518  sub.f.rn r11, r11, r8
001890  8be15120  mul.f.rn r3, r3, r5
001894  0b65c510  add.f.rn r10, r10, r12
001898  8be4b320  mul.f.rn r9, r7, r11
00189c  8be2b520  mul.f.rn r5, r11, r11
0018a0  8b613510  add.f.rn r3, r10, r3
0018a4  0b649410  add.f.rn r8, r8, r9
0018a8  0b615120  mul.f.rn r2, r2, r5
0018ac  ef44c800  loads.w r9, 12(r16)
0018b0  8b613710  add.f.rn r3, r14, r3
0018b4  8be28618  sub.f.rn r5, r13, r8
0018b8  0be12320  mul.f.rn r2, r7, r2
0018bc  8be35220  mul.f.rn r7, r5, r5
0018c0  0be12110  add.f.rn r2, r3, r2
0018c4  8b617220  mul.f.rn r3, r4, r7
0018c8  0be25020  mul.f.rn r4, r1, r5
0018cc  0be12410  add.f.rn r2, r9, r2
0018d0  8be03020  mul.f.rn r1, r1, r3
0018d4  8b614410  add.f.rn r3, r8, r4
0018d8  8b601110  add.f.rn r1, r2, r1
0018dc  73e03700  stores.w r3, 0(r15)
0018e0  73601800  stores.w r1, 0(r16)
0018e4  e3402fd7  loadli.w r1,  -5228(r30)
0018e8  73e06000  stores.w r6, 0(r1)
0018ec  e3002fd7  loadli.w r1,  -5232(r30)
0018f0  00a00300  mfence { lm, sm, gm }
0018f4  80a10004  csr_set csr3, r1
0018f8  00d00100  sync_group
0018fc  e3001fd7  loadli.w r1,  -5240(r30)
001900  2b01003a  lui r2, 237568
001904  ab01803f  lui r3, 260096
001908  1f020000  addli r4, zero, 0
00190c  9f040ff4  addli r9, r30, -1536
001910  9f050004  addli r11, zero, 512
001914  1f030ff8  addli r6, r30, -1024
001918  efc00000  loads.w r1, 0(r1)
00191c  8be02020  mul.f.rn r1, r1, r2
001920  6341efd6  loadli.w r2,  -5260(r30)
001924  8be02010  add.f.rn r1, r1, r2
001928  63411fd7  loadli.w r2,  -5236(r30)
00192c  6f410100  loads.w r2, 0(r2)
001930  8f800008  sqrt.f.rn r1, r1
001934  0f861118  div.f.rn r12, r3, r1
001938  8b660158  neg.f r13, r2
00193c  6706dfd8  storeli.w r13, -5024(r30)
001940  6746cfd8  storeli.w r12, -5020(r30)
001944  00a00000  mfence { lm }
001948  e3007fd7  loadli.w r1,  -5192(r30)
00194c  1f010000  addli r2, zero, 0
001950  8b101210  add.s r1, r4, r1
001954  8b112c10  add.s r3, r24, r2
001958  1f010101  addli r2, r2, 128
00195c  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
001960  46944102  vstore_mask16.mz vr4{mr1}, 64(r3)
001964  00a00000  mfence { lm }
001968  bb3fb1fe  bneq r2, r11, -20
00196c  63417fd7  loadli.w r2,  -5188(r30)
001970  674b4fd6  storeli.w r4, -5196(r30)
001974  1f220000  addli r4, zero, 2
001978  9f025fd7  addli r5, r30, -5208
00197c  0b912010  add.s r2, r1, r2
001980  33110128  sext_int2long r[3:4], r2
001984  97334102  sll.d r[8:9], r[3:4], r4
001988  eb510f00  load.d r[4:5], 0(r30)
00198c  2b0100f0  lui r2, 983040
001990  17912500  or r2, r11, r2
001994  73b07200  store.d r[8:9], 0(r5)
001998  8ba17110  add.ul r[4:5], r[4:5], r[8:9]
00199c  9f030ffc  addli r7, r30, -512
0019a0  7fa18101  l_gm2lm r2, r24, 0(r[4:5])
0019a4  1f010000  addli r2, zero, 0
0019a8  8b912410  add.s r3, r9, r2
0019ac  1f011100  addli r2, r2, 8
0019b0  67800100  storeli.w zero, 0(r3)
0019b4  67c00100  storeli.w zero, 4(r3)
0019b8  00a00000  mfence { lm }
0019bc  bb3fb1fe  bneq r2, r11, -20
0019c0  b3900028  sext_int2long r[2:3], r1
0019c4  9f210000  addli r3, zero, 2
0019c8  6b528f00  load.d r[5:6], 8(r30)
0019cc  97b03002  sll.d r[2:3], r[2:3], r3
0019d0  ab0100f0  lui r3, 983040
0019d4  0b221210  add.ul r[5:6], r[5:6], r[2:3]
0019d8  97913500  or r3, r11, r3
0019dc  ff219200  l_gm2lm r3, r9, 0(r[5:6])
0019e0  9f010000  addli r3, zero, 0
0019e4  0b123310  add.s r4, r6, r3
0019e8  9f811100  addli r3, r3, 8
0019ec  67000200  storeli.w zero, 0(r4)
0019f0  67400200  storeli.w zero, 4(r4)
0019f4  00a00000  mfence { lm }
0019f8  bbbfb1fe  bneq r3, r11, -20
0019fc  6b520f01  load.d r[5:6], 16(r30)
001a00  ab0100f0  lui r3, 983040
001a04  97913500  or r3, r11, r3
001a08  0b221210  add.ul r[5:6], r[5:6], r[2:3]
001a0c  ff216200  l_gm2lm r3, r6, 0(r[5:6])
001a10  9f010000  addli r3, zero, 0
001a14  00a00000  mfence { lm }
001a18  0b923310  add.s r4, r7, r3
001a1c  9f811100  addli r3, r3, 8
001a20  67000200  storeli.w zero, 0(r4)
001a24  67400200  storeli.w zero, 4(r4)
001a28  00a00000  mfence { lm }
001a2c  bbbfb1fe  bneq r3, r11, -20
001a30  6b528f01  load.d r[5:6], 24(r30)
001a34  ab0100f0  lui r3, 983040
001a38  97913500  or r3, r11, r3
001a3c  8b201210  add.ul r[2:3], r[5:6], r[2:3]
001a40  ffa17000  l_gm2lm r3, r7, 0(r[2:3])
001a44  9f110000  addli r3, zero, 1
001a48  9f000000  addli r1, zero, 0
001a4c  00a00000  mfence { lm }
001a50  00a00000  mfence { lm }
001a54  00a00000  mfence { lm }
001a58  1bb18000  slli r2, r1, 8
001a5c  67043fe2  storeli.w r3, -3776(r30)
001a60  92344002  vadd.s.mz vr9{mr1}, zero, vr4
001a64  12354002  vadd.s.mz vr10{mr1}, zero, vr4
001a68  92354002  vadd.s.mz vr11{mr1}, zero, vr4
001a6c  12334002  vadd.s.mz vr6{mr1}, zero, vr4
001a70  92324002  vadd.s.mz vr5{mr1}, zero, vr4
001a74  8b102310  add.s r1, r6, r2
001a78  9f010100  addli r3, r2, 0
001a7c  63810000  loadli.w r2,  0(r1)
001a80  674f3fd8  storeli.w r3, -4876(r30)
001a84  e74a2fda  storeli.w r2, -4692(r30)
001a88  63c10000  loadli.w r2,  4(r1)
001a8c  670b2fda  storeli.w r2, -4688(r30)
001a90  63811000  loadli.w r2,  8(r1)
001a94  674b2fda  storeli.w r2, -4684(r30)
001a98  63c11000  loadli.w r2,  12(r1)
001a9c  e70b2fda  storeli.w r2, -4680(r30)
001aa0  63812000  loadli.w r2,  16(r1)
001aa4  e74b2fda  storeli.w r2, -4676(r30)
001aa8  63c12000  loadli.w r2,  20(r1)
001aac  670c2fda  storeli.w r2, -4672(r30)
001ab0  63813000  loadli.w r2,  24(r1)
001ab4  674c2fda  storeli.w r2, -4668(r30)
001ab8  63c13000  loadli.w r2,  28(r1)
001abc  e70c2fda  storeli.w r2, -4664(r30)
001ac0  63814000  loadli.w r2,  32(r1)
001ac4  e74c2fda  storeli.w r2, -4660(r30)
001ac8  63c14000  loadli.w r2,  36(r1)
001acc  670d2fda  storeli.w r2, -4656(r30)
001ad0  63815000  loadli.w r2,  40(r1)
001ad4  674d2fda  storeli.w r2, -4652(r30)
001ad8  63c15000  loadli.w r2,  44(r1)
001adc  e70d2fda  storeli.w r2, -4648(r30)
001ae0  63816000  loadli.w r2,  48(r1)
001ae4  e74d2fda  storeli.w r2, -4644(r30)
001ae8  63c16000  loadli.w r2,  52(r1)
001aec  670e2fda  storeli.w r2, -4640(r30)
001af0  63817000  loadli.w r2,  56(r1)
001af4  674e2fda  storeli.w r2, -4636(r30)
001af8  63c17000  loadli.w r2,  60(r1)
001afc  e70e2fda  storeli.w r2, -4632(r30)
001b00  63818000  loadli.w r2,  64(r1)
001b04  e74e2fda  storeli.w r2, -4628(r30)
001b08  63c18000  loadli.w r2,  68(r1)
001b0c  670f2fda  storeli.w r2, -4624(r30)
001b10  63819000  loadli.w r2,  72(r1)
001b14  674f2fda  storeli.w r2, -4620(r30)
001b18  63c19000  loadli.w r2,  76(r1)
001b1c  e70f2fda  storeli.w r2, -4616(r30)
001b20  6381a000  loadli.w r2,  80(r1)
001b24  e74f2fda  storeli.w r2, -4612(r30)
001b28  63c1a000  loadli.w r2,  84(r1)
001b2c  67002fdc  storeli.w r2, -4608(r30)
001b30  6381b000  loadli.w r2,  88(r1)
001b34  67402fdc  storeli.w r2, -4604(r30)
001b38  63c1b000  loadli.w r2,  92(r1)
001b3c  e7002fdc  storeli.w r2, -4600(r30)
001b40  6381c000  loadli.w r2,  96(r1)
001b44  e7402fdc  storeli.w r2, -4596(r30)
001b48  63c1c000  loadli.w r2,  100(r1)
001b4c  67012fdc  storeli.w r2, -4592(r30)
001b50  6381d000  loadli.w r2,  104(r1)
001b54  67412fdc  storeli.w r2, -4588(r30)
001b58  63c1d000  loadli.w r2,  108(r1)
001b5c  e7012fdc  storeli.w r2, -4584(r30)
001b60  6381e000  loadli.w r2,  112(r1)
001b64  e7412fdc  storeli.w r2, -4580(r30)
001b68  63c1e000  loadli.w r2,  116(r1)
001b6c  67022fdc  storeli.w r2, -4576(r30)
001b70  6381f000  loadli.w r2,  120(r1)
001b74  67422fdc  storeli.w r2, -4572(r30)
001b78  63c1f000  loadli.w r2,  124(r1)
001b7c  e7022fdc  storeli.w r2, -4568(r30)
001b80  63810001  loadli.w r2,  128(r1)
001b84  e7422fdc  storeli.w r2, -4564(r30)
001b88  63c10001  loadli.w r2,  132(r1)
001b8c  67032fdc  storeli.w r2, -4560(r30)
001b90  63811001  loadli.w r2,  136(r1)
001b94  67432fdc  storeli.w r2, -4556(r30)
001b98  63c11001  loadli.w r2,  140(r1)
001b9c  e7032fdc  storeli.w r2, -4552(r30)
001ba0  63812001  loadli.w r2,  144(r1)
001ba4  e7432fdc  storeli.w r2, -4548(r30)
001ba8  63c12001  loadli.w r2,  148(r1)
001bac  67042fdc  storeli.w r2, -4544(r30)
001bb0  63813001  loadli.w r2,  152(r1)
001bb4  67442fdc  storeli.w r2, -4540(r30)
001bb8  63c13001  loadli.w r2,  156(r1)
001bbc  e7042fdc  storeli.w r2, -4536(r30)
001bc0  63814001  loadli.w r2,  160(r1)
001bc4  e7442fdc  storeli.w r2, -4532(r30)
001bc8  63c14001  loadli.w r2,  164(r1)
001bcc  67052fdc  storeli.w r2, -4528(r30)
001bd0  63815001  loadli.w r2,  168(r1)
001bd4  67452fdc  storeli.w r2, -4524(r30)
001bd8  63c15001  loadli.w r2,  172(r1)
001bdc  e7052fdc  storeli.w r2, -4520(r30)
001be0  63816001  loadli.w r2,  176(r1)
001be4  e7452fdc  storeli.w r2, -4516(r30)
001be8  63c16001  loadli.w r2,  180(r1)
001bec  67062fdc  storeli.w r2, -4512(r30)
001bf0  63817001  loadli.w r2,  184(r1)
001bf4  67462fdc  storeli.w r2, -4508(r30)
001bf8  63c17001  loadli.w r2,  188(r1)
001bfc  e7062fdc  storeli.w r2, -4504(r30)
001c00  63818001  loadli.w r2,  192(r1)
001c04  e7462fdc  storeli.w r2, -4500(r30)
001c08  63c18001  loadli.w r2,  196(r1)
001c0c  67072fdc  storeli.w r2, -4496(r30)
001c10  63819001  loadli.w r2,  200(r1)
001c14  67472fdc  storeli.w r2, -4492(r30)
001c18  63c19001  loadli.w r2,  204(r1)
001c1c  e7072fdc  storeli.w r2, -4488(r30)
001c20  6381a001  loadli.w r2,  208(r1)
001c24  e7472fdc  storeli.w r2, -4484(r30)
001c28  63c1a001  loadli.w r2,  212(r1)
001c2c  e7022fde  storeli.w r2, -4312(r30)
001c30  6381b001  loadli.w r2,  216(r1)
001c34  e7422fde  storeli.w r2, -4308(r30)
001c38  63c1b001  loadli.w r2,  220(r1)
001c3c  67032fde  storeli.w r2, -4304(r30)
001c40  6381c001  loadli.w r2,  224(r1)
001c44  67432fde  storeli.w r2, -4300(r30)
001c48  63c1c001  loadli.w r2,  228(r1)
001c4c  e7032fde  storeli.w r2, -4296(r30)
001c50  6381d001  loadli.w r2,  232(r1)
001c54  e7432fde  storeli.w r2, -4292(r30)
001c58  63c1d001  loadli.w r2,  236(r1)
001c5c  00a00000  mfence { lm }
001c60  67042fde  storeli.w r2, -4288(r30)
001c64  6381e001  loadli.w r2,  240(r1)
001c68  e74b2fde  storeli.w r2, -4164(r30)
001c6c  63c1e001  loadli.w r2,  244(r1)
001c70  67042fe0  storeli.w r2, -4032(r30)
001c74  6381f001  loadli.w r2,  248(r1)
001c78  e3c0f001  loadli.w r1,  252(r1)
001c7c  67082fe0  storeli.w r2, -3968(r30)
001c80  0b113c10  add.s r2, r24, r3
001c84  67001fe2  storeli.w r1, -3840(r30)
001c88  9f008fdd  addli r1, r30, -4416
001c8c  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
001c90  670c2fe0  storeli.w r2, -3904(r30)
001c94  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001c98  9f000fdd  addli r1, r30, -4480
001c9c  42108102  vload_mask16.mz vr0{mr1}, 64(r2)
001ca0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001ca4  9f008fdf  addli r1, r30, -4160
001ca8  42100103  vload_mask16.mz vr0{mr1}, 128(r2)
001cac  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001cb0  8b903410  add.s r1, r9, r3
001cb4  42108103  vload_mask16.mz vr0{mr1}, 192(r2)
001cb8  1f010fe0  addli r2, r30, -4096
001cbc  638ed000  loadli.w r28,  104(r1)
001cc0  e3c10000  loadli.w r3,  4(r1)
001cc4  63821000  loadli.w r4,  8(r1)
001cc8  e3c21000  loadli.w r5,  12(r1)
001ccc  63832000  loadli.w r6,  16(r1)
001cd0  e3c32000  loadli.w r7,  20(r1)
001cd4  63843000  loadli.w r8,  24(r1)
001cd8  e3c43000  loadli.w r9,  28(r1)
001cdc  63854000  loadli.w r10,  32(r1)
001ce0  e3c54000  loadli.w r11,  36(r1)
001ce4  63865000  loadli.w r12,  40(r1)
001ce8  e3c65000  loadli.w r13,  44(r1)
001cec  63876000  loadli.w r14,  48(r1)
001cf0  e3c76000  loadli.w r15,  52(r1)
001cf4  63887000  loadli.w r16,  56(r1)
001cf8  e3c87000  loadli.w r17,  60(r1)
001cfc  63898000  loadli.w r18,  64(r1)
001d00  e3c98000  loadli.w r19,  68(r1)
001d04  638a9000  loadli.w r20,  72(r1)
001d08  e3ca9000  loadli.w r21,  76(r1)
001d0c  638ba000  loadli.w r22,  80(r1)
001d10  e3cba000  loadli.w r23,  84(r1)
001d14  638cb000  loadli.w r24,  88(r1)
001d18  e3ccb000  loadli.w r25,  92(r1)
001d1c  638dc000  loadli.w r26,  96(r1)
001d20  e3cdc000  loadli.w r27,  100(r1)
001d24  e706cfd9  storeli.w r28, -5016(r30)
001d28  63ced000  loadli.w r28,  108(r1)
001d2c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001d30  63810000  loadli.w r2,  0(r1)
001d34  12304002  vadd.s.mz vr0{mr1}, zero, vr4
001d38  e746cfd9  storeli.w r28, -5012(r30)
001d3c  638ee000  loadli.w r28,  112(r1)
001d40  6707cfd9  storeli.w r28, -5008(r30)
001d44  63cee000  loadli.w r28,  116(r1)
001d48  6747cfd9  storeli.w r28, -5004(r30)
001d4c  638ef000  loadli.w r28,  120(r1)
001d50  e707cfd9  storeli.w r28, -5000(r30)
001d54  63cef000  loadli.w r28,  124(r1)
001d58  6700cfdb  storeli.w r28, -4864(r30)
001d5c  638e0001  loadli.w r28,  128(r1)
001d60  e747cfd9  storeli.w r28, -4996(r30)
001d64  63ce0001  loadli.w r28,  132(r1)
001d68  6708cfd9  storeli.w r28, -4992(r30)
001d6c  638e1001  loadli.w r28,  136(r1)
001d70  6748cfd9  storeli.w r28, -4988(r30)
001d74  63ce1001  loadli.w r28,  140(r1)
001d78  e708cfd9  storeli.w r28, -4984(r30)
001d7c  638e2001  loadli.w r28,  144(r1)
001d80  e748cfd9  storeli.w r28, -4980(r30)
001d84  63ce2001  loadli.w r28,  148(r1)
001d88  6709cfd9  storeli.w r28, -4976(r30)
001d8c  638e3001  loadli.w r28,  152(r1)
001d90  6749cfd9  storeli.w r28, -4972(r30)
001d94  63ce3001  loadli.w r28,  156(r1)
001d98  e709cfd9  storeli.w r28, -4968(r30)
001d9c  638e4001  loadli.w r28,  160(r1)
001da0  e749cfd9  storeli.w r28, -4964(r30)
001da4  63ce4001  loadli.w r28,  164(r1)
001da8  670acfd9  storeli.w r28, -4960(r30)
001dac  638e5001  loadli.w r28,  168(r1)
001db0  674acfd9  storeli.w r28, -4956(r30)
001db4  63ce5001  loadli.w r28,  172(r1)
001db8  e70acfd9  storeli.w r28, -4952(r30)
001dbc  638e6001  loadli.w r28,  176(r1)
001dc0  e74acfd9  storeli.w r28, -4948(r30)
001dc4  63ce6001  loadli.w r28,  180(r1)
001dc8  670bcfd9  storeli.w r28, -4944(r30)
001dcc  638e7001  loadli.w r28,  184(r1)
001dd0  674bcfd9  storeli.w r28, -4940(r30)
001dd4  63ce7001  loadli.w r28,  188(r1)
001dd8  e70bcfd9  storeli.w r28, -4936(r30)
001ddc  638e8001  loadli.w r28,  192(r1)
001de0  e74bcfd9  storeli.w r28, -4932(r30)
001de4  63ce8001  loadli.w r28,  196(r1)
001de8  670ccfd9  storeli.w r28, -4928(r30)
001dec  638e9001  loadli.w r28,  200(r1)
001df0  674ccfd9  storeli.w r28, -4924(r30)
001df4  63ce9001  loadli.w r28,  204(r1)
001df8  e70ccfd9  storeli.w r28, -4920(r30)
001dfc  638ea001  loadli.w r28,  208(r1)
001e00  e74ccfd9  storeli.w r28, -4916(r30)
001e04  63cea001  loadli.w r28,  212(r1)
001e08  670dcfd9  storeli.w r28, -4912(r30)
001e0c  638eb001  loadli.w r28,  216(r1)
001e10  674dcfd9  storeli.w r28, -4908(r30)
001e14  63ceb001  loadli.w r28,  220(r1)
001e18  e70dcfd9  storeli.w r28, -4904(r30)
001e1c  638ec001  loadli.w r28,  224(r1)
001e20  e74dcfd9  storeli.w r28, -4900(r30)
001e24  63cec001  loadli.w r28,  228(r1)
001e28  670ecfd9  storeli.w r28, -4896(r30)
001e2c  638ed001  loadli.w r28,  232(r1)
001e30  674ecfd9  storeli.w r28, -4892(r30)
001e34  63ced001  loadli.w r28,  236(r1)
001e38  e70ecfd9  storeli.w r28, -4888(r30)
001e3c  638ee001  loadli.w r28,  240(r1)
001e40  e74ecfd9  storeli.w r28, -4884(r30)
001e44  63cee001  loadli.w r28,  244(r1)
001e48  670fcfd9  storeli.w r28, -4880(r30)
001e4c  638ef001  loadli.w r28,  248(r1)
001e50  e3c0f001  loadli.w r1,  252(r1)
001e54  e74f1fd8  storeli.w r1, -4868(r30)
001e58  9f100000  addli r1, zero, 1
001e5c  e70fcfd9  storeli.w r28, -4872(r30)
001e60  00a00000  mfence { lm }
001e64  fe8100e0  vmmov mr3, r1
001e68  9f200000  addli r1, zero, 2
001e6c  6a200136  vor.u.mh vr0{mr3}, r2, vr0
001e70  1f010008  addli r2, zero, 1024
001e74  fe8100e0  vmmov mr3, r1
001e78  9f400000  addli r1, zero, 4
001e7c  6aa00136  vor.u.mh vr0{mr3}, r3, vr0
001e80  7e8101c0  vmmov mr2, mr3
001e84  fe8100e0  vmmov mr3, r1
001e88  9f001000  addli r1, zero, 8
001e8c  6a200236  vor.u.mh vr0{mr3}, r4, vr0
001e90  fe8100e0  vmmov mr3, r1
001e94  9f002000  addli r1, zero, 16
001e98  6aa00236  vor.u.mh vr0{mr3}, r5, vr0
001e9c  fe8100e0  vmmov mr3, r1
001ea0  9f004000  addli r1, zero, 32
001ea4  6a200336  vor.u.mh vr0{mr3}, r6, vr0
001ea8  fe8100e0  vmmov mr3, r1
001eac  9f008000  addli r1, zero, 64
001eb0  6aa00336  vor.u.mh vr0{mr3}, r7, vr0
001eb4  fe8100e0  vmmov mr3, r1
001eb8  9f000001  addli r1, zero, 128
001ebc  6a200436  vor.u.mh vr0{mr3}, r8, vr0
001ec0  fe8100e0  vmmov mr3, r1
001ec4  9f000002  addli r1, zero, 256
001ec8  6aa00436  vor.u.mh vr0{mr3}, r9, vr0
001ecc  fe8100e0  vmmov mr3, r1
001ed0  9f000004  addli r1, zero, 512
001ed4  6a200536  vor.u.mh vr0{mr3}, r10, vr0
001ed8  fe8100e0  vmmov mr3, r1
001edc  9f000008  addli r1, zero, 1024
001ee0  6aa00536  vor.u.mh vr0{mr3}, r11, vr0
001ee4  fe8100e0  vmmov mr3, r1
001ee8  9f000010  addli r1, zero, 2048
001eec  6a200636  vor.u.mh vr0{mr3}, r12, vr0
001ef0  fe8100e0  vmmov mr3, r1
001ef4  9f000020  addli r1, zero, 4096
001ef8  6aa00636  vor.u.mh vr0{mr3}, r13, vr0
001efc  fe8100e0  vmmov mr3, r1
001f00  9f000040  addli r1, zero, 8192
001f04  6a200736  vor.u.mh vr0{mr3}, r14, vr0
001f08  fe8100e0  vmmov mr3, r1
001f0c  ab400000  lui r1, 4
001f10  7e8000e0  vmmov mr0, r1
001f14  ab800000  lui r1, 8
001f18  6aa00736  vor.u.mh vr0{mr3}, r15, vr0
001f1c  6a200830  vor.u.mh vr0{mr0}, r16, vr0
001f20  7e8000e0  vmmov mr0, r1
001f24  9f008fda  addli r1, r30, -4800
001f28  6aa00830  vor.u.mh vr0{mr0}, r17, vr0
001f2c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001f30  12304002  vadd.s.mz vr0{mr1}, zero, vr4
001f34  9f100000  addli r1, zero, 1
001f38  fe8100e0  vmmov mr3, r1
001f3c  9f400000  addli r1, zero, 4
001f40  6a200936  vor.u.mh vr0{mr3}, r18, vr0
001f44  7e8000e0  vmmov mr0, r1
001f48  9f001000  addli r1, zero, 8
001f4c  6aa00934  vor.u.mh vr0{mr2}, r19, vr0
001f50  6a200a30  vor.u.mh vr0{mr0}, r20, vr0
001f54  7e8000e0  vmmov mr0, r1
001f58  9f002000  addli r1, zero, 16
001f5c  6aa00a30  vor.u.mh vr0{mr0}, r21, vr0
001f60  7e8000e0  vmmov mr0, r1
001f64  9f004000  addli r1, zero, 32
001f68  6a200b30  vor.u.mh vr0{mr0}, r22, vr0
001f6c  7e8000e0  vmmov mr0, r1
001f70  9f008000  addli r1, zero, 64
001f74  6aa00b30  vor.u.mh vr0{mr0}, r23, vr0
001f78  7e8000e0  vmmov mr0, r1
001f7c  9f000001  addli r1, zero, 128
001f80  6a200c30  vor.u.mh vr0{mr0}, r24, vr0
001f84  7e8000e0  vmmov mr0, r1
001f88  9f000002  addli r1, zero, 256
001f8c  6aa00c30  vor.u.mh vr0{mr0}, r25, vr0
001f90  7e8000e0  vmmov mr0, r1
001f94  9f000004  addli r1, zero, 512
001f98  6a200d30  vor.u.mh vr0{mr0}, r26, vr0
001f9c  7e8000e0  vmmov mr0, r1
001fa0  6aa00d30  vor.u.mh vr0{mr0}, r27, vr0
001fa4  e300dfd8  loadli.w r1,  -5016(r30)
001fa8  7e0001e0  vmmov mr0, r2
001fac  1f010010  addli r2, zero, 2048
001fb0  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001fb4  e340dfd8  loadli.w r1,  -5012(r30)
001fb8  7e0001e0  vmmov mr0, r2
001fbc  1f010020  addli r2, zero, 4096
001fc0  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001fc4  e300efd8  loadli.w r1,  -5008(r30)
001fc8  7e0001e0  vmmov mr0, r2
001fcc  2b410000  lui r2, 4
001fd0  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001fd4  9f000040  addli r1, zero, 8192
001fd8  7e0001e0  vmmov mr0, r2
001fdc  2b810000  lui r2, 8
001fe0  7e8100e0  vmmov mr2, r1
001fe4  e340efd8  loadli.w r1,  -5004(r30)
001fe8  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
001fec  e300ffd8  loadli.w r1,  -5000(r30)
001ff0  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001ff4  e3000fda  loadli.w r1,  -4864(r30)
001ff8  7e0001e0  vmmov mr0, r2
001ffc  1f210000  addli r2, zero, 2
002000  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
002004  9f000fda  addli r1, r30, -4864
002008  00a00000  mfence { lm }
00200c  7e0001e0  vmmov mr0, r2
002010  1f410000  addli r2, zero, 4
002014  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
002018  e340ffd8  loadli.w r1,  -4996(r30)
00201c  eaa49036  vor.u.mh vr9{mr3}, r1, vr9
002020  e3000fd9  loadli.w r1,  -4992(r30)
002024  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
002028  e3400fd9  loadli.w r1,  -4988(r30)
00202c  7e0001e0  vmmov mr0, r2
002030  1f011000  addli r2, zero, 8
002034  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
002038  e3001fd9  loadli.w r1,  -4984(r30)
00203c  7e0001e0  vmmov mr0, r2
002040  1f012000  addli r2, zero, 16
002044  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
002048  e3401fd9  loadli.w r1,  -4980(r30)
00204c  7e0001e0  vmmov mr0, r2
002050  1f014000  addli r2, zero, 32
002054  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
002058  e3002fd9  loadli.w r1,  -4976(r30)
00205c  7e0001e0  vmmov mr0, r2
002060  1f018000  addli r2, zero, 64
002064  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
002068  e3402fd9  loadli.w r1,  -4972(r30)
00206c  7e0001e0  vmmov mr0, r2
002070  1f010001  addli r2, zero, 128
002074  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
002078  e3003fd9  loadli.w r1,  -4968(r30)
00207c  7e0001e0  vmmov mr0, r2
002080  1f010002  addli r2, zero, 256
002084  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
002088  e3403fd9  loadli.w r1,  -4964(r30)
00208c  7e0001e0  vmmov mr0, r2
002090  1f010004  addli r2, zero, 512
002094  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
002098  e3004fd9  loadli.w r1,  -4960(r30)
00209c  7e0001e0  vmmov mr0, r2
0020a0  1f010008  addli r2, zero, 1024
0020a4  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
0020a8  e3404fd9  loadli.w r1,  -4956(r30)
0020ac  7e0001e0  vmmov mr0, r2
0020b0  1f010010  addli r2, zero, 2048
0020b4  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
0020b8  e3005fd9  loadli.w r1,  -4952(r30)
0020bc  7e0001e0  vmmov mr0, r2
0020c0  1f010020  addli r2, zero, 4096
0020c4  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
0020c8  e3405fd9  loadli.w r1,  -4948(r30)
0020cc  7e0001e0  vmmov mr0, r2
0020d0  2b410000  lui r2, 4
0020d4  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
0020d8  e3006fd9  loadli.w r1,  -4944(r30)
0020dc  7e0001e0  vmmov mr0, r2
0020e0  1f011000  addli r2, zero, 8
0020e4  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
0020e8  e3406fd9  loadli.w r1,  -4940(r30)
0020ec  7e0101e0  vmmov mr2, r2
0020f0  1f012000  addli r2, zero, 16
0020f4  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
0020f8  ab800000  lui r1, 8
0020fc  7e8000e0  vmmov mr0, r1
002100  e3007fd9  loadli.w r1,  -4936(r30)
002104  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
002108  e3407fd9  loadli.w r1,  -4932(r30)
00210c  6aa5a036  vor.u.mh vr10{mr3}, r1, vr10
002110  9f200000  addli r1, zero, 2
002114  fe8100e0  vmmov mr3, r1
002118  e3008fd9  loadli.w r1,  -4928(r30)
00211c  6aa5a036  vor.u.mh vr10{mr3}, r1, vr10
002120  9f400000  addli r1, zero, 4
002124  fe8100e0  vmmov mr3, r1
002128  e3408fd9  loadli.w r1,  -4924(r30)
00212c  6aa5a036  vor.u.mh vr10{mr3}, r1, vr10
002130  e3009fd9  loadli.w r1,  -4920(r30)
002134  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
002138  e3409fd9  loadli.w r1,  -4916(r30)
00213c  7e0101e0  vmmov mr2, r2
002140  1f014000  addli r2, zero, 32
002144  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
002148  e300afd9  loadli.w r1,  -4912(r30)
00214c  7e0101e0  vmmov mr2, r2
002150  1f018000  addli r2, zero, 64
002154  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
002158  e340afd9  loadli.w r1,  -4908(r30)
00215c  7e0101e0  vmmov mr2, r2
002160  1f010001  addli r2, zero, 128
002164  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
002168  e300bfd9  loadli.w r1,  -4904(r30)
00216c  7e0101e0  vmmov mr2, r2
002170  1f010002  addli r2, zero, 256
002174  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
002178  e340bfd9  loadli.w r1,  -4900(r30)
00217c  7e0101e0  vmmov mr2, r2
002180  1f010004  addli r2, zero, 512
002184  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
002188  e300cfd9  loadli.w r1,  -4896(r30)
00218c  7e0101e0  vmmov mr2, r2
002190  1f010008  addli r2, zero, 1024
002194  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
002198  e340cfd9  loadli.w r1,  -4892(r30)
00219c  7e0101e0  vmmov mr2, r2
0021a0  1f010010  addli r2, zero, 2048
0021a4  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
0021a8  e300dfd9  loadli.w r1,  -4888(r30)
0021ac  7e0101e0  vmmov mr2, r2
0021b0  1f010020  addli r2, zero, 4096
0021b4  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
0021b8  e340dfd9  loadli.w r1,  -4884(r30)
0021bc  7e0101e0  vmmov mr2, r2
0021c0  1f010040  addli r2, zero, 8192
0021c4  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
0021c8  e300efd9  loadli.w r1,  -4880(r30)
0021cc  7e0101e0  vmmov mr2, r2
0021d0  2b410000  lui r2, 4
0021d4  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
0021d8  e300ffd9  loadli.w r1,  -4872(r30)
0021dc  7e0101e0  vmmov mr2, r2
0021e0  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
0021e4  6341efd9  loadli.w r2,  -4876(r30)
0021e8  9f000ffc  addli r1, r30, -512
0021ec  8b902010  add.s r1, r1, r2
0021f0  6341ffd9  loadli.w r2,  -4868(r30)
0021f4  6a25a130  vor.u.mh vr10{mr0}, r2, vr10
0021f8  638ed000  loadli.w r28,  104(r1)
0021fc  63810000  loadli.w r2,  0(r1)
002200  e3c10000  loadli.w r3,  4(r1)
002204  63821000  loadli.w r4,  8(r1)
002208  e3c21000  loadli.w r5,  12(r1)
00220c  63832000  loadli.w r6,  16(r1)
002210  e3c32000  loadli.w r7,  20(r1)
002214  63843000  loadli.w r8,  24(r1)
002218  e3c43000  loadli.w r9,  28(r1)
00221c  63854000  loadli.w r10,  32(r1)
002220  e3c54000  loadli.w r11,  36(r1)
002224  63865000  loadli.w r12,  40(r1)
002228  e3c65000  loadli.w r13,  44(r1)
00222c  63876000  loadli.w r14,  48(r1)
002230  e3c76000  loadli.w r15,  52(r1)
002234  63887000  loadli.w r16,  56(r1)
002238  e3c87000  loadli.w r17,  60(r1)
00223c  638d8000  loadli.w r26,  64(r1)
002240  63c98000  loadli.w r18,  68(r1)
002244  e3899000  loadli.w r19,  72(r1)
002248  63ca9000  loadli.w r20,  76(r1)
00224c  e38aa000  loadli.w r21,  80(r1)
002250  63cba000  loadli.w r22,  84(r1)
002254  e38bb000  loadli.w r23,  88(r1)
002258  63ccb000  loadli.w r24,  92(r1)
00225c  e38cc000  loadli.w r25,  96(r1)
002260  e3cdc000  loadli.w r27,  100(r1)
002264  e746cfd9  storeli.w r28, -5012(r30)
002268  63ced000  loadli.w r28,  108(r1)
00226c  6707cfd9  storeli.w r28, -5008(r30)
002270  638ee000  loadli.w r28,  112(r1)
002274  6747cfd9  storeli.w r28, -5004(r30)
002278  63cee000  loadli.w r28,  116(r1)
00227c  e707cfd9  storeli.w r28, -5000(r30)
002280  638ef000  loadli.w r28,  120(r1)
002284  e747cfd9  storeli.w r28, -4996(r30)
002288  63cef000  loadli.w r28,  124(r1)
00228c  6708cfd9  storeli.w r28, -4992(r30)
002290  638e0001  loadli.w r28,  128(r1)
002294  6748cfd9  storeli.w r28, -4988(r30)
002298  63ce0001  loadli.w r28,  132(r1)
00229c  e708cfd9  storeli.w r28, -4984(r30)
0022a0  638e1001  loadli.w r28,  136(r1)
0022a4  e748cfd9  storeli.w r28, -4980(r30)
0022a8  63ce1001  loadli.w r28,  140(r1)
0022ac  6709cfd9  storeli.w r28, -4976(r30)
0022b0  638e2001  loadli.w r28,  144(r1)
0022b4  6749cfd9  storeli.w r28, -4972(r30)
0022b8  63ce2001  loadli.w r28,  148(r1)
0022bc  e709cfd9  storeli.w r28, -4968(r30)
0022c0  638e3001  loadli.w r28,  152(r1)
0022c4  e749cfd9  storeli.w r28, -4964(r30)
0022c8  63ce3001  loadli.w r28,  156(r1)
0022cc  670acfd9  storeli.w r28, -4960(r30)
0022d0  638e4001  loadli.w r28,  160(r1)
0022d4  674acfd9  storeli.w r28, -4956(r30)
0022d8  63ce4001  loadli.w r28,  164(r1)
0022dc  e70acfd9  storeli.w r28, -4952(r30)
0022e0  638e5001  loadli.w r28,  168(r1)
0022e4  e74acfd9  storeli.w r28, -4948(r30)
0022e8  63ce5001  loadli.w r28,  172(r1)
0022ec  670bcfd9  storeli.w r28, -4944(r30)
0022f0  638e6001  loadli.w r28,  176(r1)
0022f4  674bcfd9  storeli.w r28, -4940(r30)
0022f8  63ce6001  loadli.w r28,  180(r1)
0022fc  e70bcfd9  storeli.w r28, -4936(r30)
002300  638e7001  loadli.w r28,  184(r1)
002304  e74bcfd9  storeli.w r28, -4932(r30)
002308  63ce7001  loadli.w r28,  188(r1)
00230c  670ccfd9  storeli.w r28, -4928(r30)
002310  638e8001  loadli.w r28,  192(r1)
002314  674ccfd9  storeli.w r28, -4924(r30)
002318  63ce8001  loadli.w r28,  196(r1)
00231c  e70ccfd9  storeli.w r28, -4920(r30)
002320  638e9001  loadli.w r28,  200(r1)
002324  e74ccfd9  storeli.w r28, -4916(r30)
002328  63ce9001  loadli.w r28,  204(r1)
00232c  670dcfd9  storeli.w r28, -4912(r30)
002330  638ea001  loadli.w r28,  208(r1)
002334  674dcfd9  storeli.w r28, -4908(r30)
002338  63cea001  loadli.w r28,  212(r1)
00233c  e70dcfd9  storeli.w r28, -4904(r30)
002340  638eb001  loadli.w r28,  216(r1)
002344  e74dcfd9  storeli.w r28, -4900(r30)
002348  63ceb001  loadli.w r28,  220(r1)
00234c  670ecfd9  storeli.w r28, -4896(r30)
002350  638ec001  loadli.w r28,  224(r1)
002354  674ecfd9  storeli.w r28, -4892(r30)
002358  63cec001  loadli.w r28,  228(r1)
00235c  e70ecfd9  storeli.w r28, -4888(r30)
002360  638ed001  loadli.w r28,  232(r1)
002364  e74ecfd9  storeli.w r28, -4884(r30)
002368  63ced001  loadli.w r28,  236(r1)
00236c  670fcfd9  storeli.w r28, -4880(r30)
002370  638ee001  loadli.w r28,  240(r1)
002374  674fcfd9  storeli.w r28, -4876(r30)
002378  63cee001  loadli.w r28,  244(r1)
00237c  e70fcfd9  storeli.w r28, -4872(r30)
002380  638ef001  loadli.w r28,  248(r1)
002384  e3c0f001  loadli.w r1,  252(r1)
002388  e74fcfd9  storeli.w r28, -4868(r30)
00238c  1f1e0000  addli r28, zero, 1
002390  7e000ee0  vmmov mr0, r28
002394  ea25b130  vor.u.mh vr11{mr0}, r2, vr11
002398  1f210000  addli r2, zero, 2
00239c  7e0001e0  vmmov mr0, r2
0023a0  1f011000  addli r2, zero, 8
0023a4  eaa5b130  vor.u.mh vr11{mr0}, r3, vr11
0023a8  7e0001e0  vmmov mr0, r2
0023ac  1f012000  addli r2, zero, 16
0023b0  9f010008  addli r3, zero, 1024
0023b4  ea25b236  vor.u.mh vr11{mr3}, r4, vr11
0023b8  eaa5b230  vor.u.mh vr11{mr0}, r5, vr11
0023bc  7e0001e0  vmmov mr0, r2
0023c0  1f014000  addli r2, zero, 32
0023c4  7e0101e0  vmmov mr2, r2
0023c8  1f018000  addli r2, zero, 64
0023cc  ea25b330  vor.u.mh vr11{mr0}, r6, vr11
0023d0  7e0001e0  vmmov mr0, r2
0023d4  1f010001  addli r2, zero, 128
0023d8  1f030ff8  addli r6, r30, -1024
0023dc  eaa5b334  vor.u.mh vr11{mr2}, r7, vr11
0023e0  ea25b430  vor.u.mh vr11{mr0}, r8, vr11
0023e4  7e0001e0  vmmov mr0, r2
0023e8  1f010002  addli r2, zero, 256
0023ec  fe0101e0  vmmov mr3, r2
0023f0  1f010004  addli r2, zero, 512
0023f4  eaa5b430  vor.u.mh vr11{mr0}, r9, vr11
0023f8  7e0001e0  vmmov mr0, r2
0023fc  1f010008  addli r2, zero, 1024
002400  9f040ff4  addli r9, r30, -1536
002404  ea25b536  vor.u.mh vr11{mr3}, r10, vr11
002408  eaa5b530  vor.u.mh vr11{mr0}, r11, vr11
00240c  7e0001e0  vmmov mr0, r2
002410  1f010010  addli r2, zero, 2048
002414  ea25b630  vor.u.mh vr11{mr0}, r12, vr11
002418  7e0001e0  vmmov mr0, r2
00241c  6346cfd8  loadli.w r12,  -5020(r30)
002420  1f010020  addli r2, zero, 4096
002424  eaa5b630  vor.u.mh vr11{mr0}, r13, vr11
002428  7e0001e0  vmmov mr0, r2
00242c  e306cfd8  loadli.w r13,  -5024(r30)
002430  1f010040  addli r2, zero, 8192
002434  ea25b730  vor.u.mh vr11{mr0}, r14, vr11
002438  7e0001e0  vmmov mr0, r2
00243c  2b410000  lui r2, 4
002440  eaa5b730  vor.u.mh vr11{mr0}, r15, vr11
002444  7e0001e0  vmmov mr0, r2
002448  2b810000  lui r2, 8
00244c  ea25b830  vor.u.mh vr11{mr0}, r16, vr11
002450  7e0001e0  vmmov mr0, r2
002454  1f110000  addli r2, zero, 1
002458  eaa5b830  vor.u.mh vr11{mr0}, r17, vr11
00245c  7e0001e0  vmmov mr0, r2
002460  1f210000  addli r2, zero, 2
002464  6a236d30  vor.u.mh vr6{mr0}, r26, vr6
002468  7e0001e0  vmmov mr0, r2
00246c  1f410000  addli r2, zero, 4
002470  6a236930  vor.u.mh vr6{mr0}, r18, vr6
002474  7e0001e0  vmmov mr0, r2
002478  1f011000  addli r2, zero, 8
00247c  6aa36930  vor.u.mh vr6{mr0}, r19, vr6
002480  7e0001e0  vmmov mr0, r2
002484  1f012000  addli r2, zero, 16
002488  6a236a30  vor.u.mh vr6{mr0}, r20, vr6
00248c  7e0001e0  vmmov mr0, r2
002490  1f018000  addli r2, zero, 64
002494  6aa36a30  vor.u.mh vr6{mr0}, r21, vr6
002498  6a236b34  vor.u.mh vr6{mr2}, r22, vr6
00249c  7e0101e0  vmmov mr2, r2
0024a0  1f010001  addli r2, zero, 128
0024a4  7e0001c0  vmmov mr0, mr2
0024a8  6aa36b30  vor.u.mh vr6{mr0}, r23, vr6
0024ac  7e0001e0  vmmov mr0, r2
0024b0  1f010004  addli r2, zero, 512
0024b4  7e0101e0  vmmov mr2, r2
0024b8  6a236c30  vor.u.mh vr6{mr0}, r24, vr6
0024bc  1f0c0fe4  addli r24, r30, -3584
0024c0  6aa36c36  vor.u.mh vr6{mr3}, r25, vr6
0024c4  7e0001c0  vmmov mr0, mr2
0024c8  6aa36d30  vor.u.mh vr6{mr0}, r27, vr6
0024cc  6341dfd8  loadli.w r2,  -5012(r30)
0024d0  7e8001e0  vmmov mr0, r3
0024d4  9f010010  addli r3, zero, 2048
0024d8  6a236130  vor.u.mh vr6{mr0}, r2, vr6
0024dc  6301efd8  loadli.w r2,  -5008(r30)
0024e0  7e8001e0  vmmov mr0, r3
0024e4  9f010020  addli r3, zero, 4096
0024e8  6a236130  vor.u.mh vr6{mr0}, r2, vr6
0024ec  6341efd8  loadli.w r2,  -5004(r30)
0024f0  7e8001e0  vmmov mr0, r3
0024f4  9f010040  addli r3, zero, 8192
0024f8  6a236130  vor.u.mh vr6{mr0}, r2, vr6
0024fc  6301ffd8  loadli.w r2,  -5000(r30)
002500  7e8001e0  vmmov mr0, r3
002504  ab410000  lui r3, 4
002508  6a236130  vor.u.mh vr6{mr0}, r2, vr6
00250c  6341ffd8  loadli.w r2,  -4996(r30)
002510  7e8001e0  vmmov mr0, r3
002514  ab810000  lui r3, 8
002518  6a236130  vor.u.mh vr6{mr0}, r2, vr6
00251c  63010fd9  loadli.w r2,  -4992(r30)
002520  7e8001e0  vmmov mr0, r3
002524  9f110000  addli r3, zero, 1
002528  6a236130  vor.u.mh vr6{mr0}, r2, vr6
00252c  63410fd9  loadli.w r2,  -4988(r30)
002530  7e8001e0  vmmov mr0, r3
002534  9f210000  addli r3, zero, 2
002538  ea225130  vor.u.mh vr5{mr0}, r2, vr5
00253c  63011fd9  loadli.w r2,  -4984(r30)
002540  7e8001e0  vmmov mr0, r3
002544  9f410000  addli r3, zero, 4
002548  ea225130  vor.u.mh vr5{mr0}, r2, vr5
00254c  63411fd9  loadli.w r2,  -4980(r30)
002550  7e8001e0  vmmov mr0, r3
002554  9f014000  addli r3, zero, 32
002558  ea225130  vor.u.mh vr5{mr0}, r2, vr5
00255c  1f011000  addli r2, zero, 8
002560  7e8001e0  vmmov mr0, r3
002564  9f018000  addli r3, zero, 64
002568  7e0101e0  vmmov mr2, r2
00256c  63012fd9  loadli.w r2,  -4976(r30)
002570  ea225134  vor.u.mh vr5{mr2}, r2, vr5
002574  1f012000  addli r2, zero, 16
002578  fe0101e0  vmmov mr3, r2
00257c  63412fd9  loadli.w r2,  -4972(r30)
002580  ea225136  vor.u.mh vr5{mr3}, r2, vr5
002584  63013fd9  loadli.w r2,  -4968(r30)
002588  ea225130  vor.u.mh vr5{mr0}, r2, vr5
00258c  63413fd9  loadli.w r2,  -4964(r30)
002590  7e8001e0  vmmov mr0, r3
002594  9f010001  addli r3, zero, 128
002598  ea225130  vor.u.mh vr5{mr0}, r2, vr5
00259c  63014fd9  loadli.w r2,  -4960(r30)
0025a0  7e8001e0  vmmov mr0, r3
0025a4  9f010002  addli r3, zero, 256
0025a8  ea225130  vor.u.mh vr5{mr0}, r2, vr5
0025ac  63414fd9  loadli.w r2,  -4956(r30)
0025b0  7e8001e0  vmmov mr0, r3
0025b4  9f010004  addli r3, zero, 512
0025b8  ea225130  vor.u.mh vr5{mr0}, r2, vr5
0025bc  63015fd9  loadli.w r2,  -4952(r30)
0025c0  7e8001e0  vmmov mr0, r3
0025c4  9f010008  addli r3, zero, 1024
0025c8  ea225130  vor.u.mh vr5{mr0}, r2, vr5
0025cc  63415fd9  loadli.w r2,  -4948(r30)
0025d0  7e8001e0  vmmov mr0, r3
0025d4  9f010010  addli r3, zero, 2048
0025d8  ea225130  vor.u.mh vr5{mr0}, r2, vr5
0025dc  63016fd9  loadli.w r2,  -4944(r30)
0025e0  7e8001e0  vmmov mr0, r3
0025e4  9f010020  addli r3, zero, 4096
0025e8  ea225130  vor.u.mh vr5{mr0}, r2, vr5
0025ec  63416fd9  loadli.w r2,  -4940(r30)
0025f0  7e8001e0  vmmov mr0, r3
0025f4  9f010040  addli r3, zero, 8192
0025f8  ea225130  vor.u.mh vr5{mr0}, r2, vr5
0025fc  63017fd9  loadli.w r2,  -4936(r30)
002600  7e8001e0  vmmov mr0, r3
002604  ab410000  lui r3, 4
002608  ea225130  vor.u.mh vr5{mr0}, r2, vr5
00260c  63417fd9  loadli.w r2,  -4932(r30)
002610  7e8001e0  vmmov mr0, r3
002614  ab810000  lui r3, 8
002618  ea225130  vor.u.mh vr5{mr0}, r2, vr5
00261c  63018fd9  loadli.w r2,  -4928(r30)
002620  7e8001e0  vmmov mr0, r3
002624  9f110000  addli r3, zero, 1
002628  ea225130  vor.u.mh vr5{mr0}, r2, vr5
00262c  1f010fe3  addli r2, r30, -3712
002630  7e8001e0  vmmov mr0, r3
002634  9f210000  addli r3, zero, 2
002638  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
00263c  63418fd9  loadli.w r2,  -4924(r30)
002640  6a224130  vor.u.mh vr4{mr0}, r2, vr4
002644  63019fd9  loadli.w r2,  -4920(r30)
002648  7e8001e0  vmmov mr0, r3
00264c  9f410000  addli r3, zero, 4
002650  6a224130  vor.u.mh vr4{mr0}, r2, vr4
002654  63419fd9  loadli.w r2,  -4916(r30)
002658  7e8001e0  vmmov mr0, r3
00265c  9f014000  addli r3, zero, 32
002660  6a224130  vor.u.mh vr4{mr0}, r2, vr4
002664  6301afd9  loadli.w r2,  -4912(r30)
002668  7e8001e0  vmmov mr0, r3
00266c  9f018000  addli r3, zero, 64
002670  6a224134  vor.u.mh vr4{mr2}, r2, vr4
002674  6341afd9  loadli.w r2,  -4908(r30)
002678  6a224136  vor.u.mh vr4{mr3}, r2, vr4
00267c  6301bfd9  loadli.w r2,  -4904(r30)
002680  6a224130  vor.u.mh vr4{mr0}, r2, vr4
002684  6341bfd9  loadli.w r2,  -4900(r30)
002688  7e8001e0  vmmov mr0, r3
00268c  9f010001  addli r3, zero, 128
002690  6a224130  vor.u.mh vr4{mr0}, r2, vr4
002694  6301cfd9  loadli.w r2,  -4896(r30)
002698  7e8001e0  vmmov mr0, r3
00269c  9f010002  addli r3, zero, 256
0026a0  6a224130  vor.u.mh vr4{mr0}, r2, vr4
0026a4  6341cfd9  loadli.w r2,  -4892(r30)
0026a8  7e8001e0  vmmov mr0, r3
0026ac  9f010020  addli r3, zero, 4096
0026b0  6a224130  vor.u.mh vr4{mr0}, r2, vr4
0026b4  1f010004  addli r2, zero, 512
0026b8  7e0001e0  vmmov mr0, r2
0026bc  6301dfd9  loadli.w r2,  -4888(r30)
0026c0  6a224130  vor.u.mh vr4{mr0}, r2, vr4
0026c4  1f010008  addli r2, zero, 1024
0026c8  7e0001e0  vmmov mr0, r2
0026cc  6341dfd9  loadli.w r2,  -4884(r30)
0026d0  6a224130  vor.u.mh vr4{mr0}, r2, vr4
0026d4  1f010010  addli r2, zero, 2048
0026d8  7e0001e0  vmmov mr0, r2
0026dc  6301efd9  loadli.w r2,  -4880(r30)
0026e0  6a224130  vor.u.mh vr4{mr0}, r2, vr4
0026e4  6341efd9  loadli.w r2,  -4876(r30)
0026e8  7e8001e0  vmmov mr0, r3
0026ec  9f010040  addli r3, zero, 8192
0026f0  6a224130  vor.u.mh vr4{mr0}, r2, vr4
0026f4  6301ffd9  loadli.w r2,  -4872(r30)
0026f8  7e8001e0  vmmov mr0, r3
0026fc  ab410000  lui r3, 4
002700  6a224130  vor.u.mh vr4{mr0}, r2, vr4
002704  6341ffd9  loadli.w r2,  -4868(r30)
002708  7e8001e0  vmmov mr0, r3
00270c  9f010000  addli r3, zero, 0
002710  6a224130  vor.u.mh vr4{mr0}, r2, vr4
002714  2b810000  lui r2, 8
002718  7e0001e0  vmmov mr0, r2
00271c  1f110000  addli r2, zero, 1
002720  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
002724  9f000fe3  addli r1, r30, -3712
002728  7e0101e0  vmmov mr2, r2
00272c  1f210000  addli r2, zero, 2
002730  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
002734  e3405fdb  loadli.w r1,  -4692(r30)
002738  7e0001e0  vmmov mr0, r2
00273c  1f410000  addli r2, zero, 4
002740  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
002744  e3006fdb  loadli.w r1,  -4688(r30)
002748  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00274c  e3406fdb  loadli.w r1,  -4684(r30)
002750  7e0001e0  vmmov mr0, r2
002754  1f011000  addli r2, zero, 8
002758  fe0101e0  vmmov mr3, r2
00275c  1f012000  addli r2, zero, 16
002760  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002764  e3007fdb  loadli.w r1,  -4680(r30)
002768  7e0001e0  vmmov mr0, r2
00276c  1f014000  addli r2, zero, 32
002770  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
002774  e3407fdb  loadli.w r1,  -4676(r30)
002778  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00277c  e3008fdb  loadli.w r1,  -4672(r30)
002780  7e0001e0  vmmov mr0, r2
002784  1f018000  addli r2, zero, 64
002788  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00278c  e3408fdb  loadli.w r1,  -4668(r30)
002790  7e0001e0  vmmov mr0, r2
002794  1f010001  addli r2, zero, 128
002798  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00279c  e3009fdb  loadli.w r1,  -4664(r30)
0027a0  7e0001e0  vmmov mr0, r2
0027a4  1f010002  addli r2, zero, 256
0027a8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0027ac  e3409fdb  loadli.w r1,  -4660(r30)
0027b0  7e0001e0  vmmov mr0, r2
0027b4  1f010004  addli r2, zero, 512
0027b8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0027bc  e300afdb  loadli.w r1,  -4656(r30)
0027c0  7e0001e0  vmmov mr0, r2
0027c4  1f010008  addli r2, zero, 1024
0027c8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0027cc  e340afdb  loadli.w r1,  -4652(r30)
0027d0  7e0001e0  vmmov mr0, r2
0027d4  1f010010  addli r2, zero, 2048
0027d8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0027dc  e300bfdb  loadli.w r1,  -4648(r30)
0027e0  7e0001e0  vmmov mr0, r2
0027e4  1f010020  addli r2, zero, 4096
0027e8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0027ec  e340bfdb  loadli.w r1,  -4644(r30)
0027f0  7e0001e0  vmmov mr0, r2
0027f4  1f010040  addli r2, zero, 8192
0027f8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0027fc  e300cfdb  loadli.w r1,  -4640(r30)
002800  7e0001e0  vmmov mr0, r2
002804  2b410000  lui r2, 4
002808  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00280c  e340cfdb  loadli.w r1,  -4636(r30)
002810  7e0001e0  vmmov mr0, r2
002814  2b810000  lui r2, 8
002818  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00281c  e300dfdb  loadli.w r1,  -4632(r30)
002820  7e0001e0  vmmov mr0, r2
002824  1f210000  addli r2, zero, 2
002828  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00282c  9f000fe3  addli r1, r30, -3712
002830  7e0001e0  vmmov mr0, r2
002834  1f410000  addli r2, zero, 4
002838  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
00283c  e340dfdb  loadli.w r1,  -4628(r30)
002840  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002844  e300efdb  loadli.w r1,  -4624(r30)
002848  7e0101e0  vmmov mr2, r2
00284c  1f012000  addli r2, zero, 16
002850  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
002854  e340efdb  loadli.w r1,  -4620(r30)
002858  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00285c  e300ffdb  loadli.w r1,  -4616(r30)
002860  7e0101e0  vmmov mr2, r2
002864  1f014000  addli r2, zero, 32
002868  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
00286c  e340ffdb  loadli.w r1,  -4612(r30)
002870  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002874  e3000fdc  loadli.w r1,  -4608(r30)
002878  7e0101e0  vmmov mr2, r2
00287c  1f018000  addli r2, zero, 64
002880  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002884  e3400fdc  loadli.w r1,  -4604(r30)
002888  7e0101e0  vmmov mr2, r2
00288c  1f010001  addli r2, zero, 128
002890  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002894  e3001fdc  loadli.w r1,  -4600(r30)
002898  7e0101e0  vmmov mr2, r2
00289c  1f010002  addli r2, zero, 256
0028a0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0028a4  e3401fdc  loadli.w r1,  -4596(r30)
0028a8  7e0101e0  vmmov mr2, r2
0028ac  1f010004  addli r2, zero, 512
0028b0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0028b4  e3002fdc  loadli.w r1,  -4592(r30)
0028b8  7e0101e0  vmmov mr2, r2
0028bc  1f010008  addli r2, zero, 1024
0028c0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0028c4  e3402fdc  loadli.w r1,  -4588(r30)
0028c8  7e0101e0  vmmov mr2, r2
0028cc  1f010010  addli r2, zero, 2048
0028d0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0028d4  e3003fdc  loadli.w r1,  -4584(r30)
0028d8  7e0101e0  vmmov mr2, r2
0028dc  1f010020  addli r2, zero, 4096
0028e0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0028e4  e3403fdc  loadli.w r1,  -4580(r30)
0028e8  7e0101e0  vmmov mr2, r2
0028ec  1f010040  addli r2, zero, 8192
0028f0  fe0101e0  vmmov mr3, r2
0028f4  2b410000  lui r2, 4
0028f8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0028fc  e3004fdc  loadli.w r1,  -4576(r30)
002900  7e0101e0  vmmov mr2, r2
002904  2b810000  lui r2, 8
002908  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
00290c  e3404fdc  loadli.w r1,  -4572(r30)
002910  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002914  e3005fdc  loadli.w r1,  -4568(r30)
002918  7e0101e0  vmmov mr2, r2
00291c  1f110000  addli r2, zero, 1
002920  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002924  9f000fe3  addli r1, r30, -3712
002928  7e0101e0  vmmov mr2, r2
00292c  1f410000  addli r2, zero, 4
002930  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
002934  e3405fdc  loadli.w r1,  -4564(r30)
002938  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
00293c  e3006fdc  loadli.w r1,  -4560(r30)
002940  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002944  e3406fdc  loadli.w r1,  -4556(r30)
002948  7e0001e0  vmmov mr0, r2
00294c  1f011000  addli r2, zero, 8
002950  7e0101e0  vmmov mr2, r2
002954  1f012000  addli r2, zero, 16
002958  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00295c  e3007fdc  loadli.w r1,  -4552(r30)
002960  7e0001e0  vmmov mr0, r2
002964  1f014000  addli r2, zero, 32
002968  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
00296c  e3407fdc  loadli.w r1,  -4548(r30)
002970  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002974  e3008fdc  loadli.w r1,  -4544(r30)
002978  7e0001e0  vmmov mr0, r2
00297c  1f018000  addli r2, zero, 64
002980  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002984  e3408fdc  loadli.w r1,  -4540(r30)
002988  7e0001e0  vmmov mr0, r2
00298c  1f010001  addli r2, zero, 128
002990  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002994  e3009fdc  loadli.w r1,  -4536(r30)
002998  7e0001e0  vmmov mr0, r2
00299c  1f010002  addli r2, zero, 256
0029a0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0029a4  e3409fdc  loadli.w r1,  -4532(r30)
0029a8  7e0001e0  vmmov mr0, r2
0029ac  1f010004  addli r2, zero, 512
0029b0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0029b4  e300afdc  loadli.w r1,  -4528(r30)
0029b8  7e0001e0  vmmov mr0, r2
0029bc  1f010008  addli r2, zero, 1024
0029c0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0029c4  e340afdc  loadli.w r1,  -4524(r30)
0029c8  7e0001e0  vmmov mr0, r2
0029cc  1f010010  addli r2, zero, 2048
0029d0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0029d4  e300bfdc  loadli.w r1,  -4520(r30)
0029d8  7e0001e0  vmmov mr0, r2
0029dc  1f010020  addli r2, zero, 4096
0029e0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0029e4  e340bfdc  loadli.w r1,  -4516(r30)
0029e8  7e0001e0  vmmov mr0, r2
0029ec  2b410000  lui r2, 4
0029f0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0029f4  e300cfdc  loadli.w r1,  -4512(r30)
0029f8  7e0001e0  vmmov mr0, r2
0029fc  2b810000  lui r2, 8
002a00  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002a04  e340cfdc  loadli.w r1,  -4508(r30)
002a08  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002a0c  e300dfdc  loadli.w r1,  -4504(r30)
002a10  7e0001e0  vmmov mr0, r2
002a14  1f110000  addli r2, zero, 1
002a18  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002a1c  9f000fe3  addli r1, r30, -3712
002a20  7e0001e0  vmmov mr0, r2
002a24  1f210000  addli r2, zero, 2
002a28  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
002a2c  e340dfdc  loadli.w r1,  -4500(r30)
002a30  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
002a34  e300efdc  loadli.w r1,  -4496(r30)
002a38  7e0001e0  vmmov mr0, r2
002a3c  1f410000  addli r2, zero, 4
002a40  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
002a44  e340efdc  loadli.w r1,  -4492(r30)
002a48  7e0001e0  vmmov mr0, r2
002a4c  1f012000  addli r2, zero, 16
002a50  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
002a54  e300ffdc  loadli.w r1,  -4488(r30)
002a58  7e0001e0  vmmov mr0, r2
002a5c  1f014000  addli r2, zero, 32
002a60  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
002a64  e340ffdc  loadli.w r1,  -4484(r30)
002a68  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
002a6c  e3005fde  loadli.w r1,  -4312(r30)
002a70  7e0001e0  vmmov mr0, r2
002a74  1f018000  addli r2, zero, 64
002a78  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
002a7c  e3405fde  loadli.w r1,  -4308(r30)
002a80  7e0001e0  vmmov mr0, r2
002a84  1f010001  addli r2, zero, 128
002a88  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
002a8c  e3006fde  loadli.w r1,  -4304(r30)
002a90  7e0001e0  vmmov mr0, r2
002a94  1f010002  addli r2, zero, 256
002a98  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
002a9c  e3406fde  loadli.w r1,  -4300(r30)
002aa0  7e0001e0  vmmov mr0, r2
002aa4  1f010004  addli r2, zero, 512
002aa8  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
002aac  e3007fde  loadli.w r1,  -4296(r30)
002ab0  7e0001e0  vmmov mr0, r2
002ab4  1f010008  addli r2, zero, 1024
002ab8  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
002abc  e3407fde  loadli.w r1,  -4292(r30)
002ac0  7e0001e0  vmmov mr0, r2
002ac4  1f010010  addli r2, zero, 2048
002ac8  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
002acc  e3008fde  loadli.w r1,  -4288(r30)
002ad0  7e0001e0  vmmov mr0, r2
002ad4  1f010020  addli r2, zero, 4096
002ad8  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
002adc  9f008fdd  addli r1, r30, -4416
002ae0  7e0001e0  vmmov mr0, r2
002ae4  2b410000  lui r2, 4
002ae8  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
002aec  9f008fda  addli r1, r30, -4800
002af0  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
002af4  9f008fde  addli r1, r30, -4288
002af8  00a00000  mfence { lm }
002afc  96938302  vadd.f.mz.rn vr7{mr1}, vr7, vr8
002b00  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
002b04  9f000fdd  addli r1, r30, -4480
002b08  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
002b0c  9f000fda  addli r1, r30, -4864
002b10  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
002b14  e3407fdf  loadli.w r1,  -4164(r30)
002b18  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
002b1c  9f008fde  addli r1, r30, -4288
002b20  7e0001e0  vmmov mr0, r2
002b24  2b810000  lui r2, 8
002b28  16948302  vadd.f.mz.rn vr8{mr1}, vr7, vr8
002b2c  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
002b30  9f008fdf  addli r1, r30, -4160
002b34  92937602  vadd.f.mz.rn vr7{mr1}, r13, vr7
002b38  8a137602  vmul.f.mz.rn vr7{mr1}, r12, vr7
002b3c  a6953302  vmac.f.mz.rn vr11{mr1}, vr7, vr3
002b40  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
002b44  e3008fe0  loadli.w r1,  -4032(r30)
002b48  92938602  vadd.f.mz.rn vr7{mr1}, r13, vr8
002b4c  8a137602  vmul.f.mz.rn vr7{mr1}, r12, vr7
002b50  26932302  vmac.f.mz.rn vr6{mr1}, vr7, vr2
002b54  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
002b58  e3000fe1  loadli.w r1,  -3968(r30)
002b5c  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
002b60  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
002b64  9f000fe0  addli r1, r30, -4096
002b68  7e0001e0  vmmov mr0, r2
002b6c  92913602  vadd.f.mz.rn vr3{mr1}, r13, vr3
002b70  8a113602  vmul.f.mz.rn vr3{mr1}, r12, vr3
002b74  a6921102  vmac.f.mz.rn vr5{mr1}, vr3, vr1
002b78  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
002b7c  e3000fe2  loadli.w r1,  -3840(r30)
002b80  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
002b84  e3008fe1  loadli.w r1,  -3904(r30)
002b88  1611a102  vadd.f.mz.rn vr2{mr1}, vr2, vr10
002b8c  92902602  vadd.f.mz.rn vr1{mr1}, r13, vr2
002b90  4690b002  vstore_mask16.mz vr11{mr1}, 0(r1)
002b94  46946002  vstore_mask16.mz vr6{mr1}, 64(r1)
002b98  46985002  vstore_mask16.mz vr5{mr1}, 128(r1)
002b9c  8a101602  vmul.f.mz.rn vr1{mr1}, r12, vr1
002ba0  26920002  vmac.f.mz.rn vr4{mr1}, vr1, vr0
002ba4  469c4002  vstore_mask16.mz vr4{mr1}, 192(r1)
002ba8  9f000fe3  addli r1, r30, -3712
002bac  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
002bb0  e3008fe2  loadli.w r1,  -3776(r30)
002bb4  00a00000  mfence { lm }
002bb8  1b811000  andi r2, r1, 1
002bbc  9f100000  addli r1, zero, 1
002bc0  3b6a01f6  bneq r2, zero, -4456
002bc4  1f055fd7  addli r10, r30, -5208
002bc8  eb510f02  load.d r[4:5], 32(r30)
002bcc  ab0000f0  lui r1, 983040
002bd0  9f050004  addli r11, zero, 512
002bd4  e3426fd7  loadli.w r5,  -5196(r30)
002bd8  1f01000c  addli r2, zero, 1536
002bdc  eb530500  load.d r[8:9], 0(r10)
002be0  97901500  or r1, r11, r1
002be4  1f050ff0  addli r10, r30, -2048
002be8  13812204  setlt.u r2, r5, r2
002bec  8ba17110  add.ul r[4:5], r[4:5], r[8:9]
002bf0  9f030fec  addli r7, r30, -2560
002bf4  1f040fe8  addli r8, r30, -3072
002bf8  ffb08101  s_lm2gm r1, r24, 0(r[4:5])
002bfc  9f800204  addli r1, r5, 512
002c00  00a00000  mfence { lm }
002c04  1f820000  addli r4, r1, 0
002c08  9f000fd8  addli r1, r30, -5120
002c0c  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
002c10  9f100000  addli r1, zero, 1
002c14  7e8100e0  vmmov mr2, r1
002c18  bb4401f6  bneq r2, zero, -4816
002c1c  5bbefaff  j -10768
002c20  9f0e8fd6  addli sp, r30, -5312
002c24  9f8e8e29  addli sp, sp, 5312
002c28  00a00300  mfence { lm, sm, gm }
002c2c  00100000  exit
002c30  00100000  exit
002c34  00100000  exit
002c38  00100000  exit
002c3c  00100000  exit
002c40  00100000  exit
002c44  00100000  exit
002c48  00100000  exit
002c4c  00100000  exit
002c50  00100000  exit
002c54  00100000  exit
002c58  00100000  exit
002c5c  00100000  exit
002c60  00100000  exit
002c64  00100000  exit
002c68  00100000  exit
002c6c  00100000  exit
002c70  00100000  exit
002c74  00100000  exit
002c78  00100000  exit
002c7c  00100000  exit
002c80  00100000  exit
002c84  00100000  exit
002c88  00100000  exit
002c8c  00100000  exit
002c90  00100000  exit
002c94  00100000  exit
002c98  00100000  exit
002c9c  00100000  exit
002ca0  00100000  exit
002ca4  00100000  exit
002ca8  00100000  exit
002cac  00100000  exit
002cb0  00100000  exit
002cb4  00100000  exit
002cb8  00100000  exit
002cbc  00100000  exit
002cc0  00100000  exit
002cc4  00100000  exit
002cc8  00100000  exit
002ccc  00100000  exit
002cd0  00100000  exit
002cd4  00100000  exit
002cd8  00100000  exit
002cdc  00100000  exit
002ce0  00100000  exit
002ce4  00100000  exit
002ce8  00100000  exit
002cec  00100000  exit
002cf0  00100000  exit
002cf4  00100000  exit
002cf8  00100000  exit
002cfc  00100000  exit
002d00  00100000  exit
002d04  00100000  exit
002d08  00100000  exit
002d0c  00100000  exit
002d10  00100000  exit
002d14  00100000  exit
002d18  00100000  exit
002d1c  00100000  exit
002d20  00100000  exit
002d24  00100000  exit
002d28  00100000  exit
002d2c  00100000  exit
002d30  00100000  exit
002d34  00100000  exit
002d38  00100000  exit
002d3c  00100000  exit
002d40  00100000  exit
002d44  00100000  exit
002d48  00100000  exit
002d4c  00100000  exit
002d50  00100000  exit
002d54  00100000  exit
002d58  00100000  exit
002d5c  00100000  exit
002d60  00100000  exit
002d64  00100000  exit
002d68  00100000  exit
002d6c  00100000  exit
002d70  00100000  exit
002d74  00100000  exit
002d78  00100000  exit
002d7c  00100000  exit
002d80  00100000  exit
002d84  00100000  exit
002d88  00100000  exit
002d8c  00100000  exit
002d90  00100000  exit
002d94  00100000  exit
002d98  00100000  exit
002d9c  00100000  exit
002da0  00100000  exit
002da4  00100000  exit
002da8  00100000  exit
002dac  00100000  exit
002db0  00100000  exit
002db4  00100000  exit
002db8  00100000  exit
002dbc  00100000  exit
002dc0  00100000  exit
002dc4  00100000  exit
002dc8  00100000  exit
002dcc  00100000  exit
002dd0  00100000  exit
002dd4  00100000  exit
002dd8  00100000  exit
002ddc  00100000  exit
002de0  00100000  exit
002de4  00100000  exit
002de8  00100000  exit
002dec  00100000  exit
002df0  00100000  exit
002df4  00100000  exit
002df8  00100000  exit
002dfc  00100000  exit
002e00  00100000  exit
002e04  00100000  exit
002e08  00100000  exit
002e0c  00100000  exit
002e10  00100000  exit
002e14  00100000  exit
002e18  00100000  exit
002e1c  00100000  exit
002e20  00100000  exit
002e24  00100000  exit
002e28  00100000  exit
002e2c  00100000  exit
002e30  00100000  exit
002e34  00100000  exit
002e38  00100000  exit
002e3c  00100000  exit
002e40  00100000  exit
002e44  00100000  exit
002e48  00100000  exit
002e4c  00100000  exit
002e50  00100000  exit
002e54  00100000  exit
002e58  00100000  exit
002e5c  00100000  exit
002e60  00100000  exit
002e64  00100000  exit
002e68  00100000  exit
002e6c  00100000  exit
