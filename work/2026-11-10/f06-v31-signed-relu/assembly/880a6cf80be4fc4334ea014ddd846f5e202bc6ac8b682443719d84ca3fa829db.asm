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
0000dc  9f8e0ef9  addli sp, sp, -896
0000e0  1f8f8e06  addli r30, sp, 832
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
00010c  9f070001  addli r15, zero, 128
000110  2b0a0040  lui r20, 262144
000114  2b0b803f  lui r22, 260096
000118  e74f1ff8  storeli.w r1, -772(r30)
00011c  9bb06200  slli r1, r5, 6
000120  ab22373d  lui r5, 250738
000124  9b19a322  ori r19, r6, 554
000128  1b993271  ori r18, r5, 1811
00012c  e70f1ff8  storeli.w r1, -776(r30)
000130  0b93b130  div.s r6, r3, r11
000134  e300fff9  loadli.w r1,  -776(r30)
000138  2b0400f0  lui r8, 983040
00013c  ab0400f0  lui r9, 983040
000140  1f060ffb  addli r12, r30, -640
000144  17948700  or r8, r15, r8
000148  97949700  or r9, r15, r9
00014c  0b131331  div.s r6, r6, r17
000150  1b33c300  slli r6, r6, 12
000154  0b131310  add.s r6, r6, r1
000158  9f000008  addli r1, zero, 1024
00015c  8b131338  mod.s r7, r6, r1
000160  b31b0328  sext_int2long r[24:25], r6
000164  9f100000  addli r1, zero, 1
000168  b39c0328  sext_int2long r[26:27], r7
00016c  17b31b02  sll.d r[7:8], r[24:25], r1
000170  97bb1c02  sll.d r[24:25], r[26:27], r1
000174  eb500f00  load.d r[2:3], 0(r30)
000178  8bac6010  add.ul r[26:27], r[2:3], r[7:8]
00017c  eb508f00  load.d r[2:3], 8(r30)
000180  8bab7011  add.ul r[24:25], r[2:3], r[24:25]
000184  9f000ffa  addli r1, r30, -768
000188  7fa41c00  l_gm2lm r8, r1, 0(r[26:27])
00018c  ffa4cb00  l_gm2lm r9, r12, 0(r[24:25])
000190  9f008ffc  addli r1, r30, -448
000194  00a00000  mfence { lm }
000198  42100fa2  vload_mask16.mz vr0{mr1}, 1280(r30)
00019c  c2108fa2  vload_mask16.mz vr1{mr1}, 1344(r30)
0001a0  42110fa3  vload_mask16.mz vr2{mr1}, 1408(r30)
0001a4  c2118fa3  vload_mask16.mz vr3{mr1}, 1472(r30)
0001a8  96c13002  vadd.hf.mz.rn vr3{mr1}, vr1, vr3
0001ac  16422002  vadd.hf.mz.rn vr4{mr1}, vr0, vr2
0001b0  06b00100  vfp162float_l.rn vr0, vr3
0001b4  86f00100  vfp162float_h.rn vr1, vr3
0001b8  0a110902  vmul.f.mz.rn vr2{mr1}, r18, vr0
0001bc  8e132002  vmul.f.mz.rn vr7{mr1}, vr0, vr2
0001c0  12331002  vadd.s.mz vr6{mr1}, zero, vr1
0001c4  92320002  vadd.s.mz vr5{mr1}, zero, vr0
0001c8  8a111902  vmul.f.mz.rn vr3{mr1}, r18, vr1
0001cc  0e943002  vmul.f.mz.rn vr8{mr1}, vr1, vr3
0001d0  06310200  vfp162float_l.rn vr2, vr4
0001d4  26136402  vmac.f.mz.rn vr6{mr1}, vr8, vr6
0001d8  a6925302  vmac.f.mz.rn vr5{mr1}, vr7, vr5
0001dc  86710200  vfp162float_h.rn vr3, vr4
0001e0  0a122902  vmul.f.mz.rn vr4{mr1}, r18, vr2
0001e4  12342002  vadd.s.mz vr8{mr1}, zero, vr2
0001e8  8a133902  vmul.f.mz.rn vr7{mr1}, r18, vr3
0001ec  0a936902  vmul.f.mz.rn vr6{mr1}, r19, vr6
0001f0  8a146a02  vmul.f.mz.rn vr9{mr1}, r20, vr6
0001f4  8a925902  vmul.f.mz.rn vr5{mr1}, r19, vr5
0001f8  0e124102  vmul.f.mz.rn vr4{mr1}, vr2, vr4
0001fc  26148202  vmac.f.mz.rn vr8{mr1}, vr4, vr8
000200  8e937102  vmul.f.mz.rn vr7{mr1}, vr3, vr7
000204  0a938902  vmul.f.mz.rn vr6{mr1}, r19, vr8
000208  8a125a02  vmul.f.mz.rn vr5{mr1}, r20, vr5
00020c  12323002  vadd.s.mz vr4{mr1}, zero, vr3
000210  0a136a02  vmul.f.mz.rn vr6{mr1}, r20, vr6
000214  1a146002  vsub.f.mz.rn vr8{mr1}, zero, vr6
000218  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
00021c  26924302  vmac.f.mz.rn vr4{mr1}, vr7, vr4
000220  1a135002  vsub.f.mz.rn vr6{mr1}, zero, vr5
000224  0a924902  vmul.f.mz.rn vr4{mr1}, r19, vr4
000228  0a124a02  vmul.f.mz.rn vr4{mr1}, r20, vr4
00022c  9a134002  vsub.f.mz.rn vr7{mr1}, zero, vr4
000230  1a129002  vsub.f.mz.rn vr4{mr1}, zero, vr9
000234  00a00000  mfence { lm }
000238  63048ffc  loadli.w r8,  -448(r30)
00023c  e3448ffc  loadli.w r9,  -444(r30)
000240  e30b9ffc  loadli.w r23,  -440(r30)
000244  634c9ffc  loadli.w r24,  -436(r30)
000248  6305bffc  loadli.w r10,  -424(r30)
00024c  e30caffc  loadli.w r25,  -432(r30)
000250  634daffc  loadli.w r26,  -428(r30)
000254  6347bffc  loadli.w r14,  -420(r30)
000258  6308cffc  loadli.w r16,  -416(r30)
00025c  e302effc  loadli.w r5,  -400(r30)
000260  e340effc  loadli.w r1,  -396(r30)
000264  6301fffc  loadli.w r2,  -392(r30)
000268  e346fffc  loadli.w r13,  -388(r30)
00026c  e34acffc  loadli.w r21,  -412(r30)
000270  e30ddffc  loadli.w r27,  -408(r30)
000274  634edffc  loadli.w r28,  -404(r30)
000278  0f040400  exp.f.rn r8, r8
00027c  8f840400  exp.f.rn r9, r9
000280  8f8b0b00  exp.f.rn r23, r23
000284  0f050500  exp.f.rn r10, r10
000288  0f0c0c00  exp.f.rn r24, r24
00028c  0f070700  exp.f.rn r14, r14
000290  0f080800  exp.f.rn r16, r16
000294  8f820200  exp.f.rn r5, r5
000298  8f800000  exp.f.rn r1, r1
00029c  0f010100  exp.f.rn r2, r2
0002a0  8f860600  exp.f.rn r13, r13
0002a4  0b646411  add.f.rn r8, r8, r22
0002a8  8be46411  add.f.rn r9, r9, r22
0002ac  0b656511  add.f.rn r10, r10, r22
0002b0  0b676711  add.f.rn r14, r14, r22
0002b4  0b686811  add.f.rn r16, r16, r22
0002b8  8be26211  add.f.rn r5, r5, r22
0002bc  8be06011  add.f.rn r1, r1, r22
0002c0  0b616111  add.f.rn r2, r2, r22
0002c4  8be66611  add.f.rn r13, r13, r22
0002c8  0f048b18  div.f.rn r8, r22, r8
0002cc  8f049b18  div.f.rn r9, r22, r9
0002d0  0f05ab18  div.f.rn r10, r22, r10
0002d4  0f07eb18  div.f.rn r14, r22, r14
0002d8  0f080b19  div.f.rn r16, r22, r16
0002dc  8f025b18  div.f.rn r5, r22, r5
0002e0  8f001b18  div.f.rn r1, r22, r1
0002e4  0f012b18  div.f.rn r2, r22, r2
0002e8  8f06db18  div.f.rn r13, r22, r13
0002ec  67008ffc  storeli.w r8, -512(r30)
0002f0  0be46b11  add.f.rn r8, r23, r22
0002f4  8f8b0c00  exp.f.rn r23, r25
0002f8  8f0c0d00  exp.f.rn r25, r26
0002fc  67409ffc  storeli.w r9, -508(r30)
000300  8b646c11  add.f.rn r9, r24, r22
000304  e701affc  storeli.w r10, -488(r30)
000308  0f050e00  exp.f.rn r10, r28
00030c  67431ffc  storeli.w r1, -460(r30)
000310  e741effc  storeli.w r14, -484(r30)
000314  67020ffd  storeli.w r16, -480(r30)
000318  67035ffc  storeli.w r5, -464(r30)
00031c  e7032ffc  storeli.w r2, -456(r30)
000320  e743dffc  storeli.w r13, -452(r30)
000324  9f000ffc  addli r1, r30, -512
000328  0f048b18  div.f.rn r8, r22, r8
00032c  8f049b18  div.f.rn r9, r22, r9
000330  0bec6c11  add.f.rn r24, r25, r22
000334  8beb6b11  add.f.rn r23, r23, r22
000338  0b656511  add.f.rn r10, r10, r22
00033c  e7008ffc  storeli.w r8, -504(r30)
000340  0f048b19  div.f.rn r8, r22, r24
000344  e7409ffc  storeli.w r9, -500(r30)
000348  8f840a00  exp.f.rn r9, r21
00034c  8f0b7b19  div.f.rn r23, r22, r23
000350  0f05ab18  div.f.rn r10, r22, r10
000354  67418ffc  storeli.w r8, -492(r30)
000358  0f840d00  exp.f.rn r8, r27
00035c  8be46411  add.f.rn r9, r9, r22
000360  67017ffd  storeli.w r23, -496(r30)
000364  e742affc  storeli.w r10, -468(r30)
000368  8f049b18  div.f.rn r9, r22, r9
00036c  0b646411  add.f.rn r8, r8, r22
000370  0f048b18  div.f.rn r8, r22, r8
000374  67429ffc  storeli.w r9, -476(r30)
000378  e7028ffc  storeli.w r8, -472(r30)
00037c  00a00000  mfence { lm }
000380  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
000384  9f008ffd  addli r1, r30, -320
000388  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
00038c  00a00000  mfence { lm }
000390  e3008ffd  loadli.w r1,  -320(r30)
000394  63418ffd  loadli.w r2,  -316(r30)
000398  e3029ffd  loadli.w r5,  -312(r30)
00039c  63449ffd  loadli.w r8,  -308(r30)
0003a0  e304affd  loadli.w r9,  -304(r30)
0003a4  6345affd  loadli.w r10,  -300(r30)
0003a8  e306bffd  loadli.w r13,  -296(r30)
0003ac  6347bffd  loadli.w r14,  -292(r30)
0003b0  6308cffd  loadli.w r16,  -288(r30)
0003b4  e34acffd  loadli.w r21,  -284(r30)
0003b8  e30bdffd  loadli.w r23,  -280(r30)
0003bc  634cdffd  loadli.w r24,  -276(r30)
0003c0  e30ceffd  loadli.w r25,  -272(r30)
0003c4  634deffd  loadli.w r26,  -268(r30)
0003c8  e30dfffd  loadli.w r27,  -264(r30)
0003cc  634efffd  loadli.w r28,  -260(r30)
0003d0  0e115102  vmul.f.mz.rn vr2{mr1}, vr2, vr5
0003d4  8f800000  exp.f.rn r1, r1
0003d8  0f010100  exp.f.rn r2, r2
0003dc  8f820200  exp.f.rn r5, r5
0003e0  0f040400  exp.f.rn r8, r8
0003e4  8be06011  add.f.rn r1, r1, r22
0003e8  0b616111  add.f.rn r2, r2, r22
0003ec  8f001b18  div.f.rn r1, r22, r1
0003f0  0f012b18  div.f.rn r2, r22, r2
0003f4  67081ffc  storeli.w r1, -384(r30)
0003f8  8be06211  add.f.rn r1, r5, r22
0003fc  8f820400  exp.f.rn r5, r9
000400  8f040500  exp.f.rn r9, r10
000404  0f050700  exp.f.rn r10, r14
000408  67482ffc  storeli.w r2, -380(r30)
00040c  0b616411  add.f.rn r2, r8, r22
000410  0f840600  exp.f.rn r8, r13
000414  8f060800  exp.f.rn r13, r16
000418  8f001b18  div.f.rn r1, r22, r1
00041c  0f012b18  div.f.rn r2, r22, r2
000420  8be26211  add.f.rn r5, r5, r22
000424  8be46411  add.f.rn r9, r9, r22
000428  0b646411  add.f.rn r8, r8, r22
00042c  0b656511  add.f.rn r10, r10, r22
000430  8f025b18  div.f.rn r5, r22, r5
000434  e7081ffc  storeli.w r1, -376(r30)
000438  8f009b18  div.f.rn r1, r22, r9
00043c  8be46611  add.f.rn r9, r13, r22
000440  0f048b18  div.f.rn r8, r22, r8
000444  0f05ab18  div.f.rn r10, r22, r10
000448  8f060e00  exp.f.rn r13, r28
00044c  e7482ffc  storeli.w r2, -372(r30)
000450  0f810a00  exp.f.rn r2, r21
000454  67095ffc  storeli.w r5, -368(r30)
000458  8f029b18  div.f.rn r5, r22, r9
00045c  8f040d00  exp.f.rn r9, r26
000460  67491ffc  storeli.w r1, -364(r30)
000464  8f800b00  exp.f.rn r1, r23
000468  e7098ffc  storeli.w r8, -360(r30)
00046c  0f040c00  exp.f.rn r8, r24
000470  e749affc  storeli.w r10, -356(r30)
000474  0f850d00  exp.f.rn r10, r27
000478  0b616111  add.f.rn r2, r2, r22
00047c  8be66611  add.f.rn r13, r13, r22
000480  0f012b18  div.f.rn r2, r22, r2
000484  8f06db18  div.f.rn r13, r22, r13
000488  670a5ffc  storeli.w r5, -352(r30)
00048c  8f820c00  exp.f.rn r5, r25
000490  8be06011  add.f.rn r1, r1, r22
000494  0b646411  add.f.rn r8, r8, r22
000498  8be46411  add.f.rn r9, r9, r22
00049c  0b656511  add.f.rn r10, r10, r22
0004a0  8f001b18  div.f.rn r1, r22, r1
0004a4  0f048b18  div.f.rn r8, r22, r8
0004a8  8f049b18  div.f.rn r9, r22, r9
0004ac  0f05ab18  div.f.rn r10, r22, r10
0004b0  674a2ffc  storeli.w r2, -348(r30)
0004b4  e74bdffc  storeli.w r13, -324(r30)
0004b8  8be26211  add.f.rn r5, r5, r22
0004bc  8f025b18  div.f.rn r5, r22, r5
0004c0  e70a1ffc  storeli.w r1, -344(r30)
0004c4  e74a8ffc  storeli.w r8, -340(r30)
0004c8  674b9ffc  storeli.w r9, -332(r30)
0004cc  e70baffc  storeli.w r10, -328(r30)
0004d0  9f000ffd  addli r1, r30, -384
0004d4  670b5ffc  storeli.w r5, -336(r30)
0004d8  00a00000  mfence { lm }
0004dc  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0004e0  9f008ffe  addli r1, r30, -192
0004e4  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0004e8  00a00000  mfence { lm }
0004ec  e3008ffe  loadli.w r1,  -192(r30)
0004f0  63418ffe  loadli.w r2,  -188(r30)
0004f4  e3029ffe  loadli.w r5,  -184(r30)
0004f8  63449ffe  loadli.w r8,  -180(r30)
0004fc  e304affe  loadli.w r9,  -176(r30)
000500  6345affe  loadli.w r10,  -172(r30)
000504  e306bffe  loadli.w r13,  -168(r30)
000508  6347bffe  loadli.w r14,  -164(r30)
00050c  6308cffe  loadli.w r16,  -160(r30)
000510  e34acffe  loadli.w r21,  -156(r30)
000514  e30bdffe  loadli.w r23,  -152(r30)
000518  634cdffe  loadli.w r24,  -148(r30)
00051c  e30ceffe  loadli.w r25,  -144(r30)
000520  634deffe  loadli.w r26,  -140(r30)
000524  e30dfffe  loadli.w r27,  -136(r30)
000528  634efffe  loadli.w r28,  -132(r30)
00052c  8e917102  vmul.f.mz.rn vr3{mr1}, vr3, vr7
000530  8f800000  exp.f.rn r1, r1
000534  0f010100  exp.f.rn r2, r2
000538  8f820200  exp.f.rn r5, r5
00053c  0f040400  exp.f.rn r8, r8
000540  8be06011  add.f.rn r1, r1, r22
000544  0b616111  add.f.rn r2, r2, r22
000548  8f001b18  div.f.rn r1, r22, r1
00054c  0f012b18  div.f.rn r2, r22, r2
000550  67001ffe  storeli.w r1, -256(r30)
000554  8be06211  add.f.rn r1, r5, r22
000558  8f820400  exp.f.rn r5, r9
00055c  8f040500  exp.f.rn r9, r10
000560  0f050700  exp.f.rn r10, r14
000564  67402ffe  storeli.w r2, -252(r30)
000568  0b616411  add.f.rn r2, r8, r22
00056c  0f840600  exp.f.rn r8, r13
000570  8f060800  exp.f.rn r13, r16
000574  8f001b18  div.f.rn r1, r22, r1
000578  0f012b18  div.f.rn r2, r22, r2
00057c  8be26211  add.f.rn r5, r5, r22
000580  8be46411  add.f.rn r9, r9, r22
000584  0b646411  add.f.rn r8, r8, r22
000588  0b656511  add.f.rn r10, r10, r22
00058c  8f025b18  div.f.rn r5, r22, r5
000590  e7001ffe  storeli.w r1, -248(r30)
000594  8f009b18  div.f.rn r1, r22, r9
000598  8be46611  add.f.rn r9, r13, r22
00059c  0f048b18  div.f.rn r8, r22, r8
0005a0  0f05ab18  div.f.rn r10, r22, r10
0005a4  8f060e00  exp.f.rn r13, r28
0005a8  e7402ffe  storeli.w r2, -244(r30)
0005ac  0f810a00  exp.f.rn r2, r21
0005b0  67015ffe  storeli.w r5, -240(r30)
0005b4  8f029b18  div.f.rn r5, r22, r9
0005b8  8f040d00  exp.f.rn r9, r26
0005bc  67411ffe  storeli.w r1, -236(r30)
0005c0  8f800b00  exp.f.rn r1, r23
0005c4  e7018ffe  storeli.w r8, -232(r30)
0005c8  0f040c00  exp.f.rn r8, r24
0005cc  e741affe  storeli.w r10, -228(r30)
0005d0  0f850d00  exp.f.rn r10, r27
0005d4  0b616111  add.f.rn r2, r2, r22
0005d8  8be66611  add.f.rn r13, r13, r22
0005dc  0f012b18  div.f.rn r2, r22, r2
0005e0  8f06db18  div.f.rn r13, r22, r13
0005e4  67025ffe  storeli.w r5, -224(r30)
0005e8  8f820c00  exp.f.rn r5, r25
0005ec  8be06011  add.f.rn r1, r1, r22
0005f0  0b646411  add.f.rn r8, r8, r22
0005f4  8be46411  add.f.rn r9, r9, r22
0005f8  0b656511  add.f.rn r10, r10, r22
0005fc  8f001b18  div.f.rn r1, r22, r1
000600  0f048b18  div.f.rn r8, r22, r8
000604  8f049b18  div.f.rn r9, r22, r9
000608  0f05ab18  div.f.rn r10, r22, r10
00060c  67422ffe  storeli.w r2, -220(r30)
000610  e743dffe  storeli.w r13, -196(r30)
000614  8be26211  add.f.rn r5, r5, r22
000618  8f025b18  div.f.rn r5, r22, r5
00061c  e7021ffe  storeli.w r1, -216(r30)
000620  e7428ffe  storeli.w r8, -212(r30)
000624  67439ffe  storeli.w r9, -204(r30)
000628  e703affe  storeli.w r10, -200(r30)
00062c  9f000ffe  addli r1, r30, -256
000630  67035ffe  storeli.w r5, -208(r30)
000634  00a00000  mfence { lm }
000638  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
00063c  9f008fff  addli r1, r30, -64
000640  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
000644  00a00000  mfence { lm }
000648  e3008fff  loadli.w r1,  -64(r30)
00064c  63418fff  loadli.w r2,  -60(r30)
000650  e3449fff  loadli.w r9,  -52(r30)
000654  e3029fff  loadli.w r5,  -56(r30)
000658  6345afff  loadli.w r10,  -44(r30)
00065c  e306bfff  loadli.w r13,  -40(r30)
000660  6347bfff  loadli.w r14,  -36(r30)
000664  6308cfff  loadli.w r16,  -32(r30)
000668  e34acfff  loadli.w r21,  -28(r30)
00066c  e30bdfff  loadli.w r23,  -24(r30)
000670  634cdfff  loadli.w r24,  -20(r30)
000674  e30cefff  loadli.w r25,  -16(r30)
000678  634defff  loadli.w r26,  -12(r30)
00067c  e30dffff  loadli.w r27,  -8(r30)
000680  634effff  loadli.w r28,  -4(r30)
000684  0e106002  vmul.f.mz.rn vr0{mr1}, vr0, vr6
000688  8f800000  exp.f.rn r1, r1
00068c  0f010100  exp.f.rn r2, r2
000690  0f840200  exp.f.rn r8, r5
000694  8f840400  exp.f.rn r9, r9
000698  e302afff  loadli.w r5,  -48(r30)
00069c  8f820200  exp.f.rn r5, r5
0006a0  8be06011  add.f.rn r1, r1, r22
0006a4  0b616111  add.f.rn r2, r2, r22
0006a8  8be26211  add.f.rn r5, r5, r22
0006ac  8f001b18  div.f.rn r1, r22, r1
0006b0  0f012b18  div.f.rn r2, r22, r2
0006b4  67081ffe  storeli.w r1, -128(r30)
0006b8  8b606411  add.f.rn r1, r8, r22
0006bc  0f040500  exp.f.rn r8, r10
0006c0  0f050700  exp.f.rn r10, r14
0006c4  67482ffe  storeli.w r2, -124(r30)
0006c8  0be16411  add.f.rn r2, r9, r22
0006cc  8f840600  exp.f.rn r9, r13
0006d0  8f060800  exp.f.rn r13, r16
0006d4  8f001b18  div.f.rn r1, r22, r1
0006d8  0f012b18  div.f.rn r2, r22, r2
0006dc  0b646411  add.f.rn r8, r8, r22
0006e0  8be46411  add.f.rn r9, r9, r22
0006e4  0b656511  add.f.rn r10, r10, r22
0006e8  8be66611  add.f.rn r13, r13, r22
0006ec  e7081ffe  storeli.w r1, -120(r30)
0006f0  8f005b18  div.f.rn r1, r22, r5
0006f4  8f028b18  div.f.rn r5, r22, r8
0006f8  0f049b18  div.f.rn r8, r22, r9
0006fc  8f04ab18  div.f.rn r9, r22, r10
000700  0f05db18  div.f.rn r10, r22, r13
000704  8f060e00  exp.f.rn r13, r28
000708  e7482ffe  storeli.w r2, -116(r30)
00070c  0f810a00  exp.f.rn r2, r21
000710  67091ffe  storeli.w r1, -112(r30)
000714  8f800b00  exp.f.rn r1, r23
000718  67495ffe  storeli.w r5, -108(r30)
00071c  8f020c00  exp.f.rn r5, r24
000720  e7098ffe  storeli.w r8, -104(r30)
000724  0f840c00  exp.f.rn r8, r25
000728  e7499ffe  storeli.w r9, -100(r30)
00072c  8f040d00  exp.f.rn r9, r26
000730  670aaffe  storeli.w r10, -96(r30)
000734  0f850d00  exp.f.rn r10, r27
000738  0b616111  add.f.rn r2, r2, r22
00073c  8be66611  add.f.rn r13, r13, r22
000740  0f012b18  div.f.rn r2, r22, r2
000744  8f06db18  div.f.rn r13, r22, r13
000748  8be06011  add.f.rn r1, r1, r22
00074c  8be26211  add.f.rn r5, r5, r22
000750  0b646411  add.f.rn r8, r8, r22
000754  8be46411  add.f.rn r9, r9, r22
000758  0b656511  add.f.rn r10, r10, r22
00075c  8f001b18  div.f.rn r1, r22, r1
000760  8f025b18  div.f.rn r5, r22, r5
000764  0f048b18  div.f.rn r8, r22, r8
000768  8f049b18  div.f.rn r9, r22, r9
00076c  0f05ab18  div.f.rn r10, r22, r10
000770  674a2ffe  storeli.w r2, -92(r30)
000774  e74bdffe  storeli.w r13, -68(r30)
000778  e70a1ffe  storeli.w r1, -88(r30)
00077c  e74a5ffe  storeli.w r5, -84(r30)
000780  670b8ffe  storeli.w r8, -80(r30)
000784  674b9ffe  storeli.w r9, -76(r30)
000788  e70baffe  storeli.w r10, -72(r30)
00078c  9f000fff  addli r1, r30, -128
000790  ab0200f0  lui r5, 983040
000794  00a00000  mfence { lm }
000798  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
00079c  eb500f01  load.d r[2:3], 16(r30)
0007a0  97925700  or r5, r15, r5
0007a4  8ba06010  add.ul r[2:3], r[2:3], r[7:8]
0007a8  8e904002  vmul.f.mz.rn vr1{mr1}, vr1, vr4
0007ac  06120100  vfloat2fp16_l.rn vr4, vr2
0007b0  06d20100  vfloat2fp16_h.rn vr4, vr3
0007b4  06110000  vfloat2fp16_l.rn vr2, vr0
0007b8  06d10000  vfloat2fp16_h.rn vr2, vr1
0007bc  46184fa2  vstore_mask16.mz vr4{mr1}, 1408(r30)
0007c0  461c2fa2  vstore_mask16.mz vr2{mr1}, 1472(r30)
0007c4  00a00000  mfence { lm }
0007c8  ffb2c000  s_lm2gm r5, r12, 0(r[2:3])
0007cc  e340fff9  loadli.w r1,  -772(r30)
0007d0  00a00000  mfence { lm }
0007d4  8b911110  add.s r3, r3, r1
0007d8  3fe541fc  blt.s r3, r4, -1704
0007dc  9f0e8ff9  addli sp, r30, -832
0007e0  9f8e8e06  addli sp, sp, 832
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
