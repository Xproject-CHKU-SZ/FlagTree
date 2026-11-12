; SHA-256 1e6c61ef8e1c957e1c820ce778e95adb56e579c0d64ec56d68d8424c089c45c7
; P800 Cluster · XTDK LLVM 19 · 651 / 651 words decoded
; bound names: _flat_add_act
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
000078  9f494000  addli r19, zero, 36
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
0000dc  9f8e0ef7  addli sp, sp, -1152
0000e0  1f8f8e08  addli r30, sp, 1088
0000e4  e3483f00  loadli.w r17,  28(r30)
0000e8  e3013f00  loadli.w r3,  24(r30)
0000ec  e3054f00  loadli.w r11,  32(r30)
0000f0  0b923820  mul.s r4, r17, r3
0000f4  80510002  load_param_i r3, 0
0000f8  0b12b220  mul.s r4, r4, r11
0000fc  cb0b3202  ble.s r4, r3, 1760
000100  80d00002  load_param_i r1, 1
000104  80320002  core_id r5
000108  2b434c3f  lui r6, 259268
00010c  9f070002  addli r15, zero, 256
000110  2b0a0040  lui r20, 262144
000114  2b0b803f  lui r22, 260096
000118  e74f1ff6  storeli.w r1, -1028(r30)
00011c  9bb06200  slli r1, r5, 6
000120  ab22373d  lui r5, 250738
000124  9b19a322  ori r19, r6, 554
000128  1b993271  ori r18, r5, 1811
00012c  e70f1ff6  storeli.w r1, -1032(r30)
000130  0b93b130  div.s r6, r3, r11
000134  e300fff7  loadli.w r1,  -1032(r30)
000138  2b0400f0  lui r8, 983040
00013c  ab0400f0  lui r9, 983040
000140  1f060ffa  addli r12, r30, -768
000144  17948700  or r8, r15, r8
000148  97949700  or r9, r15, r9
00014c  0b131331  div.s r6, r6, r17
000150  1b33c300  slli r6, r6, 12
000154  0b131310  add.s r6, r6, r1
000158  9f000008  addli r1, zero, 1024
00015c  8b131338  mod.s r7, r6, r1
000160  b31b0328  sext_int2long r[24:25], r6
000164  9f200000  addli r1, zero, 2
000168  b39c0328  sext_int2long r[26:27], r7
00016c  17b31b02  sll.d r[7:8], r[24:25], r1
000170  97bb1c02  sll.d r[24:25], r[26:27], r1
000174  eb500f00  load.d r[2:3], 0(r30)
000178  8bac6010  add.ul r[26:27], r[2:3], r[7:8]
00017c  eb508f00  load.d r[2:3], 8(r30)
000180  8bab7011  add.ul r[24:25], r[2:3], r[24:25]
000184  9f000ff8  addli r1, r30, -1024
000188  7fa41c00  l_gm2lm r8, r1, 0(r[26:27])
00018c  ffa4cb00  l_gm2lm r9, r12, 0(r[24:25])
000190  9f008ffc  addli r1, r30, -448
000194  00a00000  mfence { lm }
000198  c2110f82  vload_mask16.mz vr3{mr1}, 1024(r30)
00019c  42108f82  vload_mask16.mz vr0{mr1}, 1088(r30)
0001a0  c2100f83  vload_mask16.mz vr1{mr1}, 1152(r30)
0001a4  42118f83  vload_mask16.mz vr2{mr1}, 1216(r30)
0001a8  42120fa2  vload_mask16.mz vr4{mr1}, 1280(r30)
0001ac  c2128fa2  vload_mask16.mz vr5{mr1}, 1344(r30)
0001b0  42130fa3  vload_mask16.mz vr6{mr1}, 1408(r30)
0001b4  c2138fa3  vload_mask16.mz vr7{mr1}, 1472(r30)
0001b8  96906002  vadd.f.mz.rn vr1{mr1}, vr1, vr6
0001bc  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
0001c0  16117102  vadd.f.mz.rn vr2{mr1}, vr2, vr7
0001c4  96914102  vadd.f.mz.rn vr3{mr1}, vr3, vr4
0001c8  0a120902  vmul.f.mz.rn vr4{mr1}, r18, vr0
0001cc  8a121902  vmul.f.mz.rn vr5{mr1}, r18, vr1
0001d0  0a132902  vmul.f.mz.rn vr6{mr1}, r18, vr2
0001d4  0e124002  vmul.f.mz.rn vr4{mr1}, vr0, vr4
0001d8  92330002  vadd.s.mz vr7{mr1}, zero, vr0
0001dc  8e925002  vmul.f.mz.rn vr5{mr1}, vr1, vr5
0001e0  12341002  vadd.s.mz vr8{mr1}, zero, vr1
0001e4  0e136102  vmul.f.mz.rn vr6{mr1}, vr2, vr6
0001e8  a6137202  vmac.f.mz.rn vr7{mr1}, vr4, vr7
0001ec  26948202  vmac.f.mz.rn vr8{mr1}, vr5, vr8
0001f0  12322002  vadd.s.mz vr4{mr1}, zero, vr2
0001f4  8a123902  vmul.f.mz.rn vr5{mr1}, r18, vr3
0001f8  26124302  vmac.f.mz.rn vr4{mr1}, vr6, vr4
0001fc  12333002  vadd.s.mz vr6{mr1}, zero, vr3
000200  8e925102  vmul.f.mz.rn vr5{mr1}, vr3, vr5
000204  8a937902  vmul.f.mz.rn vr7{mr1}, r19, vr7
000208  0a948902  vmul.f.mz.rn vr8{mr1}, r19, vr8
00020c  26936202  vmac.f.mz.rn vr6{mr1}, vr5, vr6
000210  8a926902  vmul.f.mz.rn vr5{mr1}, r19, vr6
000214  0a924902  vmul.f.mz.rn vr4{mr1}, r19, vr4
000218  8a137a02  vmul.f.mz.rn vr7{mr1}, r20, vr7
00021c  8a125a02  vmul.f.mz.rn vr5{mr1}, r20, vr5
000220  0a138a02  vmul.f.mz.rn vr6{mr1}, r20, vr8
000224  0a124a02  vmul.f.mz.rn vr4{mr1}, r20, vr4
000228  9a137002  vsub.f.mz.rn vr7{mr1}, zero, vr7
00022c  9a125002  vsub.f.mz.rn vr5{mr1}, zero, vr5
000230  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
000234  1a136002  vsub.f.mz.rn vr6{mr1}, zero, vr6
000238  1a124002  vsub.f.mz.rn vr4{mr1}, zero, vr4
00023c  00a00000  mfence { lm }
000240  e3448ffc  loadli.w r9,  -444(r30)
000244  63048ffc  loadli.w r8,  -448(r30)
000248  6305bffc  loadli.w r10,  -424(r30)
00024c  6347bffc  loadli.w r14,  -420(r30)
000250  e30b9ffc  loadli.w r23,  -440(r30)
000254  6308cffc  loadli.w r16,  -416(r30)
000258  e302effc  loadli.w r5,  -400(r30)
00025c  e340effc  loadli.w r1,  -396(r30)
000260  6301fffc  loadli.w r2,  -392(r30)
000264  e346fffc  loadli.w r13,  -388(r30)
000268  e30caffc  loadli.w r25,  -432(r30)
00026c  634daffc  loadli.w r26,  -428(r30)
000270  e34acffc  loadli.w r21,  -412(r30)
000274  e30ddffc  loadli.w r27,  -408(r30)
000278  634edffc  loadli.w r28,  -404(r30)
00027c  8f840400  exp.f.rn r9, r9
000280  0f040400  exp.f.rn r8, r8
000284  8f8b0b00  exp.f.rn r23, r23
000288  0f080800  exp.f.rn r16, r16
00028c  8f820200  exp.f.rn r5, r5
000290  8f800000  exp.f.rn r1, r1
000294  0f010100  exp.f.rn r2, r2
000298  8f860600  exp.f.rn r13, r13
00029c  8be46411  add.f.rn r9, r9, r22
0002a0  0b6c6411  add.f.rn r24, r8, r22
0002a4  63449ffc  loadli.w r8,  -436(r30)
0002a8  8beb6b11  add.f.rn r23, r23, r22
0002ac  0b686811  add.f.rn r16, r16, r22
0002b0  8be26211  add.f.rn r5, r5, r22
0002b4  8be06011  add.f.rn r1, r1, r22
0002b8  0b616111  add.f.rn r2, r2, r22
0002bc  8be66611  add.f.rn r13, r13, r22
0002c0  0f040400  exp.f.rn r8, r8
0002c4  8f049b18  div.f.rn r9, r22, r9
0002c8  0f0c8b19  div.f.rn r24, r22, r24
0002cc  0f080b19  div.f.rn r16, r22, r16
0002d0  8f025b18  div.f.rn r5, r22, r5
0002d4  8f001b18  div.f.rn r1, r22, r1
0002d8  0f012b18  div.f.rn r2, r22, r2
0002dc  8f06db18  div.f.rn r13, r22, r13
0002e0  0b646411  add.f.rn r8, r8, r22
0002e4  67409ffc  storeli.w r9, -508(r30)
0002e8  8f040500  exp.f.rn r9, r10
0002ec  0f050700  exp.f.rn r10, r14
0002f0  67008ffd  storeli.w r24, -512(r30)
0002f4  0f8c0c00  exp.f.rn r24, r25
0002f8  8f0c0d00  exp.f.rn r25, r26
0002fc  0f077b19  div.f.rn r14, r22, r23
000300  67431ffc  storeli.w r1, -460(r30)
000304  67020ffd  storeli.w r16, -480(r30)
000308  67035ffc  storeli.w r5, -464(r30)
00030c  e7032ffc  storeli.w r2, -456(r30)
000310  e743dffc  storeli.w r13, -452(r30)
000314  9f000ffc  addli r1, r30, -512
000318  0f048b18  div.f.rn r8, r22, r8
00031c  8be46411  add.f.rn r9, r9, r22
000320  0b656511  add.f.rn r10, r10, r22
000324  8b6b6c11  add.f.rn r23, r24, r22
000328  0bec6c11  add.f.rn r24, r25, r22
00032c  e700effc  storeli.w r14, -504(r30)
000330  e7408ffc  storeli.w r8, -500(r30)
000334  0f840a00  exp.f.rn r8, r21
000338  8f049b18  div.f.rn r9, r22, r9
00033c  0f05ab18  div.f.rn r10, r22, r10
000340  8f0b7b19  div.f.rn r23, r22, r23
000344  0f078b19  div.f.rn r14, r22, r24
000348  0b646411  add.f.rn r8, r8, r22
00034c  e7019ffc  storeli.w r9, -488(r30)
000350  8f840d00  exp.f.rn r9, r27
000354  e741affc  storeli.w r10, -484(r30)
000358  0f050e00  exp.f.rn r10, r28
00035c  67017ffd  storeli.w r23, -496(r30)
000360  6741effc  storeli.w r14, -492(r30)
000364  0f048b18  div.f.rn r8, r22, r8
000368  8be46411  add.f.rn r9, r9, r22
00036c  0b656511  add.f.rn r10, r10, r22
000370  67428ffc  storeli.w r8, -476(r30)
000374  8f049b18  div.f.rn r9, r22, r9
000378  0f05ab18  div.f.rn r10, r22, r10
00037c  e7029ffc  storeli.w r9, -472(r30)
000380  e742affc  storeli.w r10, -468(r30)
000384  00a00000  mfence { lm }
000388  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
00038c  9f008ffd  addli r1, r30, -320
000390  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
000394  00a00000  mfence { lm }
000398  e3008ffd  loadli.w r1,  -320(r30)
00039c  63418ffd  loadli.w r2,  -316(r30)
0003a0  e3029ffd  loadli.w r5,  -312(r30)
0003a4  63449ffd  loadli.w r8,  -308(r30)
0003a8  e304affd  loadli.w r9,  -304(r30)
0003ac  6345affd  loadli.w r10,  -300(r30)
0003b0  e306bffd  loadli.w r13,  -296(r30)
0003b4  6347bffd  loadli.w r14,  -292(r30)
0003b8  6308cffd  loadli.w r16,  -288(r30)
0003bc  e34acffd  loadli.w r21,  -284(r30)
0003c0  e30bdffd  loadli.w r23,  -280(r30)
0003c4  634cdffd  loadli.w r24,  -276(r30)
0003c8  e30ceffd  loadli.w r25,  -272(r30)
0003cc  634deffd  loadli.w r26,  -268(r30)
0003d0  e30dfffd  loadli.w r27,  -264(r30)
0003d4  634efffd  loadli.w r28,  -260(r30)
0003d8  8e915102  vmul.f.mz.rn vr3{mr1}, vr3, vr5
0003dc  8f800000  exp.f.rn r1, r1
0003e0  0f010100  exp.f.rn r2, r2
0003e4  8f820200  exp.f.rn r5, r5
0003e8  0f040400  exp.f.rn r8, r8
0003ec  8be06011  add.f.rn r1, r1, r22
0003f0  0b616111  add.f.rn r2, r2, r22
0003f4  8f001b18  div.f.rn r1, r22, r1
0003f8  0f012b18  div.f.rn r2, r22, r2
0003fc  67081ffc  storeli.w r1, -384(r30)
000400  8be06211  add.f.rn r1, r5, r22
000404  8f820400  exp.f.rn r5, r9
000408  8f040500  exp.f.rn r9, r10
00040c  0f050700  exp.f.rn r10, r14
000410  67482ffc  storeli.w r2, -380(r30)
000414  0b616411  add.f.rn r2, r8, r22
000418  0f840600  exp.f.rn r8, r13
00041c  8f060800  exp.f.rn r13, r16
000420  8f001b18  div.f.rn r1, r22, r1
000424  0f012b18  div.f.rn r2, r22, r2
000428  8be26211  add.f.rn r5, r5, r22
00042c  8be46411  add.f.rn r9, r9, r22
000430  0b646411  add.f.rn r8, r8, r22
000434  0b656511  add.f.rn r10, r10, r22
000438  8f025b18  div.f.rn r5, r22, r5
00043c  e7081ffc  storeli.w r1, -376(r30)
000440  8f009b18  div.f.rn r1, r22, r9
000444  8be46611  add.f.rn r9, r13, r22
000448  0f048b18  div.f.rn r8, r22, r8
00044c  0f05ab18  div.f.rn r10, r22, r10
000450  8f060e00  exp.f.rn r13, r28
000454  e7482ffc  storeli.w r2, -372(r30)
000458  0f810a00  exp.f.rn r2, r21
00045c  67095ffc  storeli.w r5, -368(r30)
000460  8f029b18  div.f.rn r5, r22, r9
000464  8f040d00  exp.f.rn r9, r26
000468  67491ffc  storeli.w r1, -364(r30)
00046c  8f800b00  exp.f.rn r1, r23
000470  e7098ffc  storeli.w r8, -360(r30)
000474  0f040c00  exp.f.rn r8, r24
000478  e749affc  storeli.w r10, -356(r30)
00047c  0f850d00  exp.f.rn r10, r27
000480  0b616111  add.f.rn r2, r2, r22
000484  8be66611  add.f.rn r13, r13, r22
000488  0f012b18  div.f.rn r2, r22, r2
00048c  8f06db18  div.f.rn r13, r22, r13
000490  670a5ffc  storeli.w r5, -352(r30)
000494  8f820c00  exp.f.rn r5, r25
000498  8be06011  add.f.rn r1, r1, r22
00049c  0b646411  add.f.rn r8, r8, r22
0004a0  8be46411  add.f.rn r9, r9, r22
0004a4  0b656511  add.f.rn r10, r10, r22
0004a8  8f001b18  div.f.rn r1, r22, r1
0004ac  0f048b18  div.f.rn r8, r22, r8
0004b0  8f049b18  div.f.rn r9, r22, r9
0004b4  0f05ab18  div.f.rn r10, r22, r10
0004b8  674a2ffc  storeli.w r2, -348(r30)
0004bc  e74bdffc  storeli.w r13, -324(r30)
0004c0  8be26211  add.f.rn r5, r5, r22
0004c4  8f025b18  div.f.rn r5, r22, r5
0004c8  e70a1ffc  storeli.w r1, -344(r30)
0004cc  e74a8ffc  storeli.w r8, -340(r30)
0004d0  674b9ffc  storeli.w r9, -332(r30)
0004d4  e70baffc  storeli.w r10, -328(r30)
0004d8  9f000ffd  addli r1, r30, -384
0004dc  670b5ffc  storeli.w r5, -336(r30)
0004e0  00a00000  mfence { lm }
0004e4  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0004e8  9f008ffe  addli r1, r30, -192
0004ec  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0004f0  00a00000  mfence { lm }
0004f4  e3008ffe  loadli.w r1,  -192(r30)
0004f8  63418ffe  loadli.w r2,  -188(r30)
0004fc  e3029ffe  loadli.w r5,  -184(r30)
000500  63449ffe  loadli.w r8,  -180(r30)
000504  e304affe  loadli.w r9,  -176(r30)
000508  6345affe  loadli.w r10,  -172(r30)
00050c  e306bffe  loadli.w r13,  -168(r30)
000510  6347bffe  loadli.w r14,  -164(r30)
000514  6308cffe  loadli.w r16,  -160(r30)
000518  e34acffe  loadli.w r21,  -156(r30)
00051c  e30bdffe  loadli.w r23,  -152(r30)
000520  634cdffe  loadli.w r24,  -148(r30)
000524  e30ceffe  loadli.w r25,  -144(r30)
000528  634deffe  loadli.w r26,  -140(r30)
00052c  e30dfffe  loadli.w r27,  -136(r30)
000530  634efffe  loadli.w r28,  -132(r30)
000534  0e107002  vmul.f.mz.rn vr0{mr1}, vr0, vr7
000538  8f800000  exp.f.rn r1, r1
00053c  0f010100  exp.f.rn r2, r2
000540  8f820200  exp.f.rn r5, r5
000544  0f040400  exp.f.rn r8, r8
000548  8be06011  add.f.rn r1, r1, r22
00054c  0b616111  add.f.rn r2, r2, r22
000550  8f001b18  div.f.rn r1, r22, r1
000554  0f012b18  div.f.rn r2, r22, r2
000558  67001ffe  storeli.w r1, -256(r30)
00055c  8be06211  add.f.rn r1, r5, r22
000560  8f820400  exp.f.rn r5, r9
000564  8f040500  exp.f.rn r9, r10
000568  0f050700  exp.f.rn r10, r14
00056c  67402ffe  storeli.w r2, -252(r30)
000570  0b616411  add.f.rn r2, r8, r22
000574  0f840600  exp.f.rn r8, r13
000578  8f060800  exp.f.rn r13, r16
00057c  8f001b18  div.f.rn r1, r22, r1
000580  0f012b18  div.f.rn r2, r22, r2
000584  8be26211  add.f.rn r5, r5, r22
000588  8be46411  add.f.rn r9, r9, r22
00058c  0b646411  add.f.rn r8, r8, r22
000590  0b656511  add.f.rn r10, r10, r22
000594  8f025b18  div.f.rn r5, r22, r5
000598  e7001ffe  storeli.w r1, -248(r30)
00059c  8f009b18  div.f.rn r1, r22, r9
0005a0  8be46611  add.f.rn r9, r13, r22
0005a4  0f048b18  div.f.rn r8, r22, r8
0005a8  0f05ab18  div.f.rn r10, r22, r10
0005ac  8f060e00  exp.f.rn r13, r28
0005b0  e7402ffe  storeli.w r2, -244(r30)
0005b4  0f810a00  exp.f.rn r2, r21
0005b8  67015ffe  storeli.w r5, -240(r30)
0005bc  8f029b18  div.f.rn r5, r22, r9
0005c0  8f040d00  exp.f.rn r9, r26
0005c4  67411ffe  storeli.w r1, -236(r30)
0005c8  8f800b00  exp.f.rn r1, r23
0005cc  e7018ffe  storeli.w r8, -232(r30)
0005d0  0f040c00  exp.f.rn r8, r24
0005d4  e741affe  storeli.w r10, -228(r30)
0005d8  0f850d00  exp.f.rn r10, r27
0005dc  0b616111  add.f.rn r2, r2, r22
0005e0  8be66611  add.f.rn r13, r13, r22
0005e4  0f012b18  div.f.rn r2, r22, r2
0005e8  8f06db18  div.f.rn r13, r22, r13
0005ec  67025ffe  storeli.w r5, -224(r30)
0005f0  8f820c00  exp.f.rn r5, r25
0005f4  8be06011  add.f.rn r1, r1, r22
0005f8  0b646411  add.f.rn r8, r8, r22
0005fc  8be46411  add.f.rn r9, r9, r22
000600  0b656511  add.f.rn r10, r10, r22
000604  8f001b18  div.f.rn r1, r22, r1
000608  0f048b18  div.f.rn r8, r22, r8
00060c  8f049b18  div.f.rn r9, r22, r9
000610  0f05ab18  div.f.rn r10, r22, r10
000614  67422ffe  storeli.w r2, -220(r30)
000618  e743dffe  storeli.w r13, -196(r30)
00061c  8be26211  add.f.rn r5, r5, r22
000620  8f025b18  div.f.rn r5, r22, r5
000624  e7021ffe  storeli.w r1, -216(r30)
000628  e7428ffe  storeli.w r8, -212(r30)
00062c  67439ffe  storeli.w r9, -204(r30)
000630  e703affe  storeli.w r10, -200(r30)
000634  9f000ffe  addli r1, r30, -256
000638  67035ffe  storeli.w r5, -208(r30)
00063c  00a00000  mfence { lm }
000640  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
000644  9f008fff  addli r1, r30, -64
000648  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
00064c  00a00000  mfence { lm }
000650  e3008fff  loadli.w r1,  -64(r30)
000654  63418fff  loadli.w r2,  -60(r30)
000658  e3449fff  loadli.w r9,  -52(r30)
00065c  e3029fff  loadli.w r5,  -56(r30)
000660  6345afff  loadli.w r10,  -44(r30)
000664  e306bfff  loadli.w r13,  -40(r30)
000668  6347bfff  loadli.w r14,  -36(r30)
00066c  6308cfff  loadli.w r16,  -32(r30)
000670  e34acfff  loadli.w r21,  -28(r30)
000674  e30bdfff  loadli.w r23,  -24(r30)
000678  634cdfff  loadli.w r24,  -20(r30)
00067c  e30cefff  loadli.w r25,  -16(r30)
000680  634defff  loadli.w r26,  -12(r30)
000684  e30dffff  loadli.w r27,  -8(r30)
000688  634effff  loadli.w r28,  -4(r30)
00068c  8e906002  vmul.f.mz.rn vr1{mr1}, vr1, vr6
000690  8f800000  exp.f.rn r1, r1
000694  0f010100  exp.f.rn r2, r2
000698  0f840200  exp.f.rn r8, r5
00069c  8f840400  exp.f.rn r9, r9
0006a0  e302afff  loadli.w r5,  -48(r30)
0006a4  8f820200  exp.f.rn r5, r5
0006a8  8be06011  add.f.rn r1, r1, r22
0006ac  0b616111  add.f.rn r2, r2, r22
0006b0  8be26211  add.f.rn r5, r5, r22
0006b4  8f001b18  div.f.rn r1, r22, r1
0006b8  0f012b18  div.f.rn r2, r22, r2
0006bc  67081ffe  storeli.w r1, -128(r30)
0006c0  8b606411  add.f.rn r1, r8, r22
0006c4  0f040500  exp.f.rn r8, r10
0006c8  0f050700  exp.f.rn r10, r14
0006cc  67482ffe  storeli.w r2, -124(r30)
0006d0  0be16411  add.f.rn r2, r9, r22
0006d4  8f840600  exp.f.rn r9, r13
0006d8  8f060800  exp.f.rn r13, r16
0006dc  8f001b18  div.f.rn r1, r22, r1
0006e0  0f012b18  div.f.rn r2, r22, r2
0006e4  0b646411  add.f.rn r8, r8, r22
0006e8  8be46411  add.f.rn r9, r9, r22
0006ec  0b656511  add.f.rn r10, r10, r22
0006f0  8be66611  add.f.rn r13, r13, r22
0006f4  e7081ffe  storeli.w r1, -120(r30)
0006f8  8f005b18  div.f.rn r1, r22, r5
0006fc  8f028b18  div.f.rn r5, r22, r8
000700  0f049b18  div.f.rn r8, r22, r9
000704  8f04ab18  div.f.rn r9, r22, r10
000708  0f05db18  div.f.rn r10, r22, r13
00070c  8f060e00  exp.f.rn r13, r28
000710  e7482ffe  storeli.w r2, -116(r30)
000714  0f810a00  exp.f.rn r2, r21
000718  67091ffe  storeli.w r1, -112(r30)
00071c  8f800b00  exp.f.rn r1, r23
000720  67495ffe  storeli.w r5, -108(r30)
000724  8f020c00  exp.f.rn r5, r24
000728  e7098ffe  storeli.w r8, -104(r30)
00072c  0f840c00  exp.f.rn r8, r25
000730  e7499ffe  storeli.w r9, -100(r30)
000734  8f040d00  exp.f.rn r9, r26
000738  670aaffe  storeli.w r10, -96(r30)
00073c  0f850d00  exp.f.rn r10, r27
000740  0b616111  add.f.rn r2, r2, r22
000744  8be66611  add.f.rn r13, r13, r22
000748  0f012b18  div.f.rn r2, r22, r2
00074c  8f06db18  div.f.rn r13, r22, r13
000750  8be06011  add.f.rn r1, r1, r22
000754  8be26211  add.f.rn r5, r5, r22
000758  0b646411  add.f.rn r8, r8, r22
00075c  8be46411  add.f.rn r9, r9, r22
000760  0b656511  add.f.rn r10, r10, r22
000764  8f001b18  div.f.rn r1, r22, r1
000768  8f025b18  div.f.rn r5, r22, r5
00076c  0f048b18  div.f.rn r8, r22, r8
000770  8f049b18  div.f.rn r9, r22, r9
000774  0f05ab18  div.f.rn r10, r22, r10
000778  674a2ffe  storeli.w r2, -92(r30)
00077c  e74bdffe  storeli.w r13, -68(r30)
000780  e70a1ffe  storeli.w r1, -88(r30)
000784  e74a5ffe  storeli.w r5, -84(r30)
000788  670b8ffe  storeli.w r8, -80(r30)
00078c  674b9ffe  storeli.w r9, -76(r30)
000790  e70baffe  storeli.w r10, -72(r30)
000794  9f000fff  addli r1, r30, -128
000798  ab0200f0  lui r5, 983040
00079c  00a00000  mfence { lm }
0007a0  46103fa2  vstore_mask16.mz vr3{mr1}, 1280(r30)
0007a4  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
0007a8  eb500f01  load.d r[2:3], 16(r30)
0007ac  46140fa2  vstore_mask16.mz vr0{mr1}, 1344(r30)
0007b0  46181fa2  vstore_mask16.mz vr1{mr1}, 1408(r30)
0007b4  97925700  or r5, r15, r5
0007b8  8ba06010  add.ul r[2:3], r[2:3], r[7:8]
0007bc  0e114102  vmul.f.mz.rn vr2{mr1}, vr2, vr4
0007c0  461c2fa2  vstore_mask16.mz vr2{mr1}, 1472(r30)
0007c4  00a00000  mfence { lm }
0007c8  ffb2c000  s_lm2gm r5, r12, 0(r[2:3])
0007cc  e340fff7  loadli.w r1,  -1028(r30)
0007d0  00a00000  mfence { lm }
0007d4  8b911110  add.s r3, r3, r1
0007d8  3fe541fc  blt.s r3, r4, -1704
0007dc  9f0e8ff7  addli sp, r30, -1088
0007e0  9f8e8e08  addli sp, sp, 1088
0007e4  00a00300  mfence { lm, sm, gm }
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
