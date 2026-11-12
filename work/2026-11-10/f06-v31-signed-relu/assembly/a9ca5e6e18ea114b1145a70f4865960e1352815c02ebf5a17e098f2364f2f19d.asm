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
0000e4  e3403f00  loadli.w r1,  28(r30)
0000e8  e3013f00  loadli.w r3,  24(r30)
0000ec  63014f00  loadli.w r2,  32(r30)
0000f0  0b923020  mul.s r4, r1, r3
0000f4  80510002  load_param_i r3, 0
0000f8  8b102220  mul.s r1, r4, r2
0000fc  e74e1ff6  storeli.w r1, -1044(r30)
000100  cbdc3002  ble.s r1, r3, 1844
000104  80d00002  load_param_i r1, 1
000108  80320002  core_id r5
00010c  2b434c3f  lui r6, 259268
000110  1f060ff8  addli r12, r30, -1024
000114  9f050002  addli r11, zero, 256
000118  ab090040  lui r19, 262144
00011c  ab0a803f  lui r21, 260096
000120  e70e1ff6  storeli.w r1, -1048(r30)
000124  9bb07200  slli r1, r5, 7
000128  ab22373d  lui r5, 250738
00012c  1b19a322  ori r18, r6, 554
000130  9b983271  ori r17, r5, 1811
000134  9f028ffc  addli r5, r30, -448
000138  674e1ff6  storeli.w r1, -1052(r30)
00013c  e3004f00  loadli.w r1,  32(r30)
000140  e74f3ff6  storeli.w r3, -1028(r30)
000144  2b0500f0  lui r10, 983040
000148  9f0c0ffc  addli r25, r30, -512
00014c  1f0d8ffd  addli r26, r30, -320
000150  9f0d0ffd  addli r27, r30, -384
000154  1f0e8ffe  addli r28, r30, -192
000158  9f060ffe  addli r13, r30, -256
00015c  1f088fff  addli r16, r30, -64
000160  1795a500  or r10, r11, r10
000164  0b931130  div.s r6, r3, r1
000168  e3403f00  loadli.w r1,  28(r30)
00016c  9f110000  addli r3, zero, 1
000170  0b131330  div.s r6, r6, r1
000174  e340cff7  loadli.w r1,  -1052(r30)
000178  1b33d300  slli r6, r6, 13
00017c  0b131310  add.s r6, r6, r1
000180  9f000008  addli r1, zero, 1024
000184  8b131338  mod.s r7, r6, r1
000188  33140328  sext_int2long r[9:10], r6
00018c  2b0300f0  lui r6, 983040
000190  97976500  or r15, r11, r6
000194  b3900328  sext_int2long r[2:3], r7
000198  17333402  sll.d r[7:8], r[9:10], r3
00019c  97b03002  sll.d r[2:3], r[2:3], r3
0001a0  eb510f00  load.d r[4:5], 0(r30)
0001a4  73386fbe  store.d r[7:8], -1040(r30)
0001a8  0ba46110  add.ul r[9:10], r[4:5], r[7:8]
0001ac  eb518f00  load.d r[4:5], 8(r30)
0001b0  ff27c400  l_gm2lm r15, r12, 0(r[9:10])
0001b4  1f140000  addli r8, zero, 1
0001b8  9f040000  addli r9, zero, 0
0001bc  8ba01110  add.ul r[2:3], r[4:5], r[2:3]
0001c0  9f010ffa  addli r3, r30, -768
0001c4  7fa53000  l_gm2lm r10, r3, 0(r[2:3])
0001c8  00a00000  mfence { lm }
0001cc  9bb06400  slli r1, r9, 6
0001d0  9f010ffa  addli r3, r30, -768
0001d4  0b111610  add.s r2, r12, r1
0001d8  8b941110  add.s r9, r3, r1
0001dc  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
0001e0  c2108102  vload_mask16.mz vr1{mr1}, 64(r2)
0001e4  42910402  vload_mask16.mz vr2{mr1}, 0(r9)
0001e8  c2918402  vload_mask16.mz vr3{mr1}, 64(r9)
0001ec  96c13002  vadd.hf.mz.rn vr3{mr1}, vr1, vr3
0001f0  16422002  vadd.hf.mz.rn vr4{mr1}, vr0, vr2
0001f4  06b00100  vfp162float_l.rn vr0, vr3
0001f8  86f00100  vfp162float_h.rn vr1, vr3
0001fc  06310200  vfp162float_l.rn vr2, vr4
000200  12342002  vadd.s.mz vr8{mr1}, zero, vr2
000204  8a920802  vmul.f.mz.rn vr5{mr1}, r17, vr0
000208  8a931802  vmul.f.mz.rn vr7{mr1}, r17, vr1
00020c  86710200  vfp162float_h.rn vr3, vr4
000210  0a922802  vmul.f.mz.rn vr4{mr1}, r17, vr2
000214  0a933802  vmul.f.mz.rn vr6{mr1}, r17, vr3
000218  8e125002  vmul.f.mz.rn vr5{mr1}, vr0, vr5
00021c  8e937002  vmul.f.mz.rn vr7{mr1}, vr1, vr7
000220  0e124102  vmul.f.mz.rn vr4{mr1}, vr2, vr4
000224  26148202  vmac.f.mz.rn vr8{mr1}, vr4, vr8
000228  0e936102  vmul.f.mz.rn vr6{mr1}, vr3, vr6
00022c  12323002  vadd.s.mz vr4{mr1}, zero, vr3
000230  26124302  vmac.f.mz.rn vr4{mr1}, vr6, vr4
000234  12330002  vadd.s.mz vr6{mr1}, zero, vr0
000238  26936202  vmac.f.mz.rn vr6{mr1}, vr5, vr6
00023c  92321002  vadd.s.mz vr5{mr1}, zero, vr1
000240  0a124902  vmul.f.mz.rn vr4{mr1}, r18, vr4
000244  a6925302  vmac.f.mz.rn vr5{mr1}, vr7, vr5
000248  8a138902  vmul.f.mz.rn vr7{mr1}, r18, vr8
00024c  0a136902  vmul.f.mz.rn vr6{mr1}, r18, vr6
000250  0a924902  vmul.f.mz.rn vr4{mr1}, r19, vr4
000254  8a125902  vmul.f.mz.rn vr5{mr1}, r18, vr5
000258  0a936902  vmul.f.mz.rn vr6{mr1}, r19, vr6
00025c  8a937902  vmul.f.mz.rn vr7{mr1}, r19, vr7
000260  1a147002  vsub.f.mz.rn vr8{mr1}, zero, vr7
000264  46908202  vstore_mask16.mz vr8{mr1}, 0(r5)
000268  8a925902  vmul.f.mz.rn vr5{mr1}, r19, vr5
00026c  9a134002  vsub.f.mz.rn vr7{mr1}, zero, vr4
000270  1a136002  vsub.f.mz.rn vr6{mr1}, zero, vr6
000274  1a125002  vsub.f.mz.rn vr4{mr1}, zero, vr5
000278  00a00000  mfence { lm }
00027c  e3008ffc  loadli.w r1,  -448(r30)
000280  63418ffc  loadli.w r2,  -444(r30)
000284  63059ffc  loadli.w r10,  -440(r30)
000288  e3479ffc  loadli.w r15,  -436(r30)
00028c  6346affc  loadli.w r12,  -428(r30)
000290  e302bffc  loadli.w r5,  -424(r30)
000294  6342bffc  loadli.w r4,  -420(r30)
000298  6307cffc  loadli.w r14,  -416(r30)
00029c  6343cffc  loadli.w r6,  -412(r30)
0002a0  e341dffc  loadli.w r3,  -404(r30)
0002a4  e303dffc  loadli.w r7,  -408(r30)
0002a8  630aeffc  loadli.w r20,  -400(r30)
0002ac  634beffc  loadli.w r22,  -396(r30)
0002b0  e30bfffc  loadli.w r23,  -392(r30)
0002b4  634cfffc  loadli.w r24,  -388(r30)
0002b8  8f800000  exp.f.rn r1, r1
0002bc  0f010100  exp.f.rn r2, r2
0002c0  8f050500  exp.f.rn r11, r10
0002c4  0f850700  exp.f.rn r10, r15
0002c8  e307affc  loadli.w r15,  -432(r30)
0002cc  0f060600  exp.f.rn r12, r12
0002d0  8f820200  exp.f.rn r5, r5
0002d4  0f020200  exp.f.rn r4, r4
0002d8  8f810100  exp.f.rn r3, r3
0002dc  8be05011  add.f.rn r1, r1, r21
0002e0  0b615111  add.f.rn r2, r2, r21
0002e4  8be25211  add.f.rn r5, r5, r21
0002e8  0b625211  add.f.rn r4, r4, r21
0002ec  8be15111  add.f.rn r3, r3, r21
0002f0  8f801a18  div.f.rn r1, r21, r1
0002f4  0f812a18  div.f.rn r2, r21, r2
0002f8  8f825a18  div.f.rn r5, r21, r5
0002fc  0f824a18  div.f.rn r4, r21, r4
000300  8f813a18  div.f.rn r3, r21, r3
000304  67001ffc  storeli.w r1, -512(r30)
000308  8be05511  add.f.rn r1, r11, r21
00030c  8f850700  exp.f.rn r11, r15
000310  67402ffc  storeli.w r2, -508(r30)
000314  0b615511  add.f.rn r2, r10, r21
000318  e7015ffc  storeli.w r5, -488(r30)
00031c  8f020b00  exp.f.rn r5, r22
000320  e7414ffc  storeli.w r4, -484(r30)
000324  0f020a00  exp.f.rn r4, r20
000328  e7423ffc  storeli.w r3, -468(r30)
00032c  8f801a18  div.f.rn r1, r21, r1
000330  0f812a18  div.f.rn r2, r21, r2
000334  0be55511  add.f.rn r10, r11, r21
000338  8b655611  add.f.rn r11, r12, r21
00033c  0f060700  exp.f.rn r12, r14
000340  0b625211  add.f.rn r4, r4, r21
000344  8be25211  add.f.rn r5, r5, r21
000348  e7001ffc  storeli.w r1, -504(r30)
00034c  8f80ba18  div.f.rn r1, r21, r11
000350  e7402ffc  storeli.w r2, -500(r30)
000354  0f010300  exp.f.rn r2, r6
000358  0f85aa18  div.f.rn r10, r21, r10
00035c  0f824a18  div.f.rn r4, r21, r4
000360  8f825a18  div.f.rn r5, r21, r5
000364  8b655611  add.f.rn r11, r12, r21
000368  0f83ba18  div.f.rn r6, r21, r11
00036c  67411ffc  storeli.w r1, -492(r30)
000370  8f800300  exp.f.rn r1, r7
000374  8f030c00  exp.f.rn r7, r24
000378  0b615111  add.f.rn r2, r2, r21
00037c  6701affc  storeli.w r10, -496(r30)
000380  67034ffc  storeli.w r4, -464(r30)
000384  67435ffc  storeli.w r5, -460(r30)
000388  0f812a18  div.f.rn r2, r21, r2
00038c  67026ffc  storeli.w r6, -480(r30)
000390  0f830b00  exp.f.rn r6, r23
000394  8be05011  add.f.rn r1, r1, r21
000398  8be35311  add.f.rn r7, r7, r21
00039c  8f801a18  div.f.rn r1, r21, r1
0003a0  8f837a18  div.f.rn r7, r21, r7
0003a4  67422ffc  storeli.w r2, -476(r30)
0003a8  0b635311  add.f.rn r6, r6, r21
0003ac  0f836a18  div.f.rn r6, r21, r6
0003b0  e7021ffc  storeli.w r1, -472(r30)
0003b4  e7437ffc  storeli.w r7, -452(r30)
0003b8  e7036ffc  storeli.w r6, -456(r30)
0003bc  00a00000  mfence { lm }
0003c0  46107d02  vstore_mask16.mz vr7{mr1}, 0(r26)
0003c4  c2920c02  vload_mask16.mz vr5{mr1}, 0(r25)
0003c8  00a00000  mfence { lm }
0003cc  e3008ffd  loadli.w r1,  -320(r30)
0003d0  e3019ffd  loadli.w r3,  -312(r30)
0003d4  63418ffd  loadli.w r2,  -316(r30)
0003d8  63429ffd  loadli.w r4,  -308(r30)
0003dc  e342affd  loadli.w r5,  -300(r30)
0003e0  6303bffd  loadli.w r6,  -296(r30)
0003e4  e343bffd  loadli.w r7,  -292(r30)
0003e8  e305cffd  loadli.w r11,  -288(r30)
0003ec  6346cffd  loadli.w r12,  -284(r30)
0003f0  6307dffd  loadli.w r14,  -280(r30)
0003f4  e347dffd  loadli.w r15,  -276(r30)
0003f8  630aeffd  loadli.w r20,  -272(r30)
0003fc  634beffd  loadli.w r22,  -268(r30)
000400  e30bfffd  loadli.w r23,  -264(r30)
000404  634cfffd  loadli.w r24,  -260(r30)
000408  8f800000  exp.f.rn r1, r1
00040c  8f810100  exp.f.rn r3, r3
000410  0f010100  exp.f.rn r2, r2
000414  0f050200  exp.f.rn r10, r4
000418  6302affd  loadli.w r4,  -304(r30)
00041c  0e115102  vmul.f.mz.rn vr2{mr1}, vr2, vr5
000420  8be05011  add.f.rn r1, r1, r21
000424  0b615111  add.f.rn r2, r2, r21
000428  8f801a18  div.f.rn r1, r21, r1
00042c  0f812a18  div.f.rn r2, r21, r2
000430  67081ffc  storeli.w r1, -384(r30)
000434  8be05111  add.f.rn r1, r3, r21
000438  8f010200  exp.f.rn r3, r4
00043c  0f820200  exp.f.rn r4, r5
000440  8f020300  exp.f.rn r5, r6
000444  0f830300  exp.f.rn r6, r7
000448  8f830500  exp.f.rn r7, r11
00044c  67482ffc  storeli.w r2, -380(r30)
000450  0b615511  add.f.rn r2, r10, r21
000454  8f801a18  div.f.rn r1, r21, r1
000458  0f812a18  div.f.rn r2, r21, r2
00045c  8be15111  add.f.rn r3, r3, r21
000460  0b625211  add.f.rn r4, r4, r21
000464  8be25211  add.f.rn r5, r5, r21
000468  0b635311  add.f.rn r6, r6, r21
00046c  8f813a18  div.f.rn r3, r21, r3
000470  e7081ffc  storeli.w r1, -376(r30)
000474  8f804a18  div.f.rn r1, r21, r4
000478  0be25311  add.f.rn r4, r7, r21
00047c  8f825a18  div.f.rn r5, r21, r5
000480  0f836a18  div.f.rn r6, r21, r6
000484  8f030c00  exp.f.rn r7, r24
000488  e7482ffc  storeli.w r2, -372(r30)
00048c  0f010600  exp.f.rn r2, r12
000490  67093ffc  storeli.w r3, -368(r30)
000494  8f814a18  div.f.rn r3, r21, r4
000498  0f820700  exp.f.rn r4, r15
00049c  67491ffc  storeli.w r1, -364(r30)
0004a0  8f000700  exp.f.rn r1, r14
0004a4  e7095ffc  storeli.w r5, -360(r30)
0004a8  8f020b00  exp.f.rn r5, r22
0004ac  e7496ffc  storeli.w r6, -356(r30)
0004b0  0f830b00  exp.f.rn r6, r23
0004b4  0b615111  add.f.rn r2, r2, r21
0004b8  8be35311  add.f.rn r7, r7, r21
0004bc  0f812a18  div.f.rn r2, r21, r2
0004c0  8f837a18  div.f.rn r7, r21, r7
0004c4  670a3ffc  storeli.w r3, -352(r30)
0004c8  8f010a00  exp.f.rn r3, r20
0004cc  8be05011  add.f.rn r1, r1, r21
0004d0  0b625211  add.f.rn r4, r4, r21
0004d4  8be25211  add.f.rn r5, r5, r21
0004d8  0b635311  add.f.rn r6, r6, r21
0004dc  8f801a18  div.f.rn r1, r21, r1
0004e0  0f824a18  div.f.rn r4, r21, r4
0004e4  8f825a18  div.f.rn r5, r21, r5
0004e8  0f836a18  div.f.rn r6, r21, r6
0004ec  674a2ffc  storeli.w r2, -348(r30)
0004f0  e74b7ffc  storeli.w r7, -324(r30)
0004f4  8be15111  add.f.rn r3, r3, r21
0004f8  8f813a18  div.f.rn r3, r21, r3
0004fc  e70a1ffc  storeli.w r1, -344(r30)
000500  e74a4ffc  storeli.w r4, -340(r30)
000504  674b5ffc  storeli.w r5, -332(r30)
000508  e70b6ffc  storeli.w r6, -328(r30)
00050c  670b3ffc  storeli.w r3, -336(r30)
000510  00a00000  mfence { lm }
000514  46106e02  vstore_mask16.mz vr6{mr1}, 0(r28)
000518  c2930d02  vload_mask16.mz vr7{mr1}, 0(r27)
00051c  00a00000  mfence { lm }
000520  e3008ffe  loadli.w r1,  -192(r30)
000524  e3019ffe  loadli.w r3,  -184(r30)
000528  63418ffe  loadli.w r2,  -188(r30)
00052c  63429ffe  loadli.w r4,  -180(r30)
000530  e342affe  loadli.w r5,  -172(r30)
000534  6303bffe  loadli.w r6,  -168(r30)
000538  e343bffe  loadli.w r7,  -164(r30)
00053c  e305cffe  loadli.w r11,  -160(r30)
000540  6346cffe  loadli.w r12,  -156(r30)
000544  6307dffe  loadli.w r14,  -152(r30)
000548  e347dffe  loadli.w r15,  -148(r30)
00054c  630aeffe  loadli.w r20,  -144(r30)
000550  634beffe  loadli.w r22,  -140(r30)
000554  e30bfffe  loadli.w r23,  -136(r30)
000558  634cfffe  loadli.w r24,  -132(r30)
00055c  8f800000  exp.f.rn r1, r1
000560  8f810100  exp.f.rn r3, r3
000564  0f010100  exp.f.rn r2, r2
000568  0f050200  exp.f.rn r10, r4
00056c  6302affe  loadli.w r4,  -176(r30)
000570  8e917102  vmul.f.mz.rn vr3{mr1}, vr3, vr7
000574  8be05011  add.f.rn r1, r1, r21
000578  0b615111  add.f.rn r2, r2, r21
00057c  8f801a18  div.f.rn r1, r21, r1
000580  0f812a18  div.f.rn r2, r21, r2
000584  67001ffe  storeli.w r1, -256(r30)
000588  8be05111  add.f.rn r1, r3, r21
00058c  8f010200  exp.f.rn r3, r4
000590  0f820200  exp.f.rn r4, r5
000594  8f020300  exp.f.rn r5, r6
000598  0f830300  exp.f.rn r6, r7
00059c  8f830500  exp.f.rn r7, r11
0005a0  67402ffe  storeli.w r2, -252(r30)
0005a4  0b615511  add.f.rn r2, r10, r21
0005a8  8f801a18  div.f.rn r1, r21, r1
0005ac  0f812a18  div.f.rn r2, r21, r2
0005b0  8be15111  add.f.rn r3, r3, r21
0005b4  0b625211  add.f.rn r4, r4, r21
0005b8  8be25211  add.f.rn r5, r5, r21
0005bc  0b635311  add.f.rn r6, r6, r21
0005c0  8f813a18  div.f.rn r3, r21, r3
0005c4  e7001ffe  storeli.w r1, -248(r30)
0005c8  8f804a18  div.f.rn r1, r21, r4
0005cc  0be25311  add.f.rn r4, r7, r21
0005d0  8f825a18  div.f.rn r5, r21, r5
0005d4  0f836a18  div.f.rn r6, r21, r6
0005d8  8f030c00  exp.f.rn r7, r24
0005dc  e7402ffe  storeli.w r2, -244(r30)
0005e0  0f010600  exp.f.rn r2, r12
0005e4  67013ffe  storeli.w r3, -240(r30)
0005e8  8f814a18  div.f.rn r3, r21, r4
0005ec  0f820700  exp.f.rn r4, r15
0005f0  67411ffe  storeli.w r1, -236(r30)
0005f4  8f000700  exp.f.rn r1, r14
0005f8  e7015ffe  storeli.w r5, -232(r30)
0005fc  8f020b00  exp.f.rn r5, r22
000600  e7416ffe  storeli.w r6, -228(r30)
000604  0f830b00  exp.f.rn r6, r23
000608  0b615111  add.f.rn r2, r2, r21
00060c  8be35311  add.f.rn r7, r7, r21
000610  0f812a18  div.f.rn r2, r21, r2
000614  8f837a18  div.f.rn r7, r21, r7
000618  67023ffe  storeli.w r3, -224(r30)
00061c  8f010a00  exp.f.rn r3, r20
000620  8be05011  add.f.rn r1, r1, r21
000624  0b625211  add.f.rn r4, r4, r21
000628  8be25211  add.f.rn r5, r5, r21
00062c  0b635311  add.f.rn r6, r6, r21
000630  8f801a18  div.f.rn r1, r21, r1
000634  0f824a18  div.f.rn r4, r21, r4
000638  8f825a18  div.f.rn r5, r21, r5
00063c  0f836a18  div.f.rn r6, r21, r6
000640  67422ffe  storeli.w r2, -220(r30)
000644  e7437ffe  storeli.w r7, -196(r30)
000648  8be15111  add.f.rn r3, r3, r21
00064c  8f813a18  div.f.rn r3, r21, r3
000650  e7021ffe  storeli.w r1, -216(r30)
000654  e7424ffe  storeli.w r4, -212(r30)
000658  67435ffe  storeli.w r5, -204(r30)
00065c  e7036ffe  storeli.w r6, -200(r30)
000660  67033ffe  storeli.w r3, -208(r30)
000664  00a00000  mfence { lm }
000668  46104802  vstore_mask16.mz vr4{mr1}, 0(r16)
00066c  42930602  vload_mask16.mz vr6{mr1}, 0(r13)
000670  00a00000  mfence { lm }
000674  e3008fff  loadli.w r1,  -64(r30)
000678  63418fff  loadli.w r2,  -60(r30)
00067c  e3019fff  loadli.w r3,  -56(r30)
000680  63429fff  loadli.w r4,  -52(r30)
000684  e302bfff  loadli.w r5,  -40(r30)
000688  6343bfff  loadli.w r6,  -36(r30)
00068c  e303cfff  loadli.w r7,  -32(r30)
000690  e345cfff  loadli.w r11,  -28(r30)
000694  6306dfff  loadli.w r12,  -24(r30)
000698  6347dfff  loadli.w r14,  -20(r30)
00069c  630aefff  loadli.w r20,  -16(r30)
0006a0  634befff  loadli.w r22,  -12(r30)
0006a4  e30bffff  loadli.w r23,  -8(r30)
0006a8  634cffff  loadli.w r24,  -4(r30)
0006ac  8f800000  exp.f.rn r1, r1
0006b0  0f010100  exp.f.rn r2, r2
0006b4  0f850100  exp.f.rn r10, r3
0006b8  e301afff  loadli.w r3,  -48(r30)
0006bc  8f070200  exp.f.rn r15, r4
0006c0  6342afff  loadli.w r4,  -44(r30)
0006c4  8f820200  exp.f.rn r5, r5
0006c8  0f030300  exp.f.rn r6, r6
0006cc  8f830300  exp.f.rn r7, r7
0006d0  0e106002  vmul.f.mz.rn vr0{mr1}, vr0, vr6
0006d4  8f810100  exp.f.rn r3, r3
0006d8  0f020200  exp.f.rn r4, r4
0006dc  8be05011  add.f.rn r1, r1, r21
0006e0  0b615111  add.f.rn r2, r2, r21
0006e4  8be25211  add.f.rn r5, r5, r21
0006e8  0b635311  add.f.rn r6, r6, r21
0006ec  8be35311  add.f.rn r7, r7, r21
0006f0  8be15111  add.f.rn r3, r3, r21
0006f4  0b625211  add.f.rn r4, r4, r21
0006f8  8f801a18  div.f.rn r1, r21, r1
0006fc  0f812a18  div.f.rn r2, r21, r2
000700  67081ffe  storeli.w r1, -128(r30)
000704  8b605511  add.f.rn r1, r10, r21
000708  67482ffe  storeli.w r2, -124(r30)
00070c  0be15711  add.f.rn r2, r15, r21
000710  1f050fff  addli r10, r30, -128
000714  8f801a18  div.f.rn r1, r21, r1
000718  0f812a18  div.f.rn r2, r21, r2
00071c  e7081ffe  storeli.w r1, -120(r30)
000720  8f803a18  div.f.rn r1, r21, r3
000724  8f814a18  div.f.rn r3, r21, r4
000728  0f825a18  div.f.rn r4, r21, r5
00072c  8f826a18  div.f.rn r5, r21, r6
000730  0f837a18  div.f.rn r6, r21, r7
000734  8f030c00  exp.f.rn r7, r24
000738  e7482ffe  storeli.w r2, -116(r30)
00073c  0f810500  exp.f.rn r2, r11
000740  67091ffe  storeli.w r1, -112(r30)
000744  8f000600  exp.f.rn r1, r12
000748  67493ffe  storeli.w r3, -108(r30)
00074c  8f010700  exp.f.rn r3, r14
000750  e7094ffe  storeli.w r4, -104(r30)
000754  0f020a00  exp.f.rn r4, r20
000758  e7495ffe  storeli.w r5, -100(r30)
00075c  8f020b00  exp.f.rn r5, r22
000760  670a6ffe  storeli.w r6, -96(r30)
000764  0f830b00  exp.f.rn r6, r23
000768  0b615111  add.f.rn r2, r2, r21
00076c  8be35311  add.f.rn r7, r7, r21
000770  1f060ff8  addli r12, r30, -1024
000774  0f812a18  div.f.rn r2, r21, r2
000778  8f837a18  div.f.rn r7, r21, r7
00077c  8be05011  add.f.rn r1, r1, r21
000780  8be15111  add.f.rn r3, r3, r21
000784  0b625211  add.f.rn r4, r4, r21
000788  8be25211  add.f.rn r5, r5, r21
00078c  0b635311  add.f.rn r6, r6, r21
000790  8f801a18  div.f.rn r1, r21, r1
000794  8f813a18  div.f.rn r3, r21, r3
000798  0f824a18  div.f.rn r4, r21, r4
00079c  8f825a18  div.f.rn r5, r21, r5
0007a0  0f836a18  div.f.rn r6, r21, r6
0007a4  674a2ffe  storeli.w r2, -92(r30)
0007a8  e74b7ffe  storeli.w r7, -68(r30)
0007ac  e70a1ffe  storeli.w r1, -88(r30)
0007b0  674b5ffe  storeli.w r5, -76(r30)
0007b4  e74a3ffe  storeli.w r3, -84(r30)
0007b8  670b4ffe  storeli.w r4, -80(r30)
0007bc  e70b6ffe  storeli.w r6, -72(r30)
0007c0  9b001400  andi r1, r8, 1
0007c4  9f028ffc  addli r5, r30, -448
0007c8  1f040000  addli r8, zero, 0
0007cc  00a00000  mfence { lm }
0007d0  42120502  vload_mask16.mz vr4{mr1}, 0(r10)
0007d4  8e904002  vmul.f.mz.rn vr1{mr1}, vr1, vr4
0007d8  06120100  vfloat2fp16_l.rn vr4, vr2
0007dc  06d20100  vfloat2fp16_h.rn vr4, vr3
0007e0  06110000  vfloat2fp16_l.rn vr2, vr0
0007e4  06d10000  vfloat2fp16_h.rn vr2, vr1
0007e8  46904402  vstore_mask16.mz vr4{mr1}, 0(r9)
0007ec  46942402  vstore_mask16.mz vr2{mr1}, 64(r9)
0007f0  9f240000  addli r9, zero, 2
0007f4  00a00000  mfence { lm }
0007f8  3bd700fc  bneq r1, zero, -1580
0007fc  6b510f01  load.d r[3:4], 16(r30)
000800  6b530fbf  load.d r[7:8], -1040(r30)
000804  ab0000f0  lui r1, 983040
000808  9f050002  addli r11, zero, 256
00080c  1f020ffa  addli r4, r30, -768
000810  97901500  or r1, r11, r1
000814  0b216110  add.ul r[3:4], r[3:4], r[7:8]
000818  ff304100  s_lm2gm r1, r4, 0(r[3:4])
00081c  e341fff7  loadli.w r3,  -1028(r30)
000820  e300dff7  loadli.w r1,  -1048(r30)
000824  00a00000  mfence { lm }
000828  8b911110  add.s r3, r3, r1
00082c  e340dff7  loadli.w r1,  -1044(r30)
000830  3fb411fc  blt.s r3, r1, -1780
000834  9f0e8ff7  addli sp, r30, -1088
000838  9f8e8e08  addli sp, sp, 1088
00083c  00a00300  mfence { lm, sm, gm }
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
