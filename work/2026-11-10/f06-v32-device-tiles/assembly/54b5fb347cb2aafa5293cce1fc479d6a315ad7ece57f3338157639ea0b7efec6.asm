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
000078  9f493000  addli r19, zero, 28
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
0000dc  9f8e8ef8  addli sp, sp, -960
0000e0  1f8f0e07  addli r30, sp, 896
0000e4  00520002  load_param_i r4, 0
0000e8  63412f00  loadli.w r2,  20(r30)
0000ec  e3002f00  loadli.w r1,  16(r30)
0000f0  e3013f00  loadli.w r3,  24(r30)
0000f4  8b101120  mul.s r1, r2, r1
0000f8  8b903020  mul.s r1, r1, r3
0000fc  e74a1ff8  storeli.w r1, -852(r30)
000100  4baa4008  ble.s r1, r4, 4744
000104  80300002  core_id r1
000108  00d10002  load_param_i r2, 1
00010c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000110  9f050ffa  addli r11, r30, -768
000114  9f020002  addli r5, zero, 256
000118  ab070040  lui r15, 262144
00011c  ab08803f  lui r17, 260096
000120  1f1d0000  addli r26, zero, 1
000124  2b0e4000  lui r28, 1024
000128  1f490000  addli r18, zero, 4
00012c  9f290000  addli r19, zero, 2
000130  9bb07000  slli r1, r1, 7
000134  e70a2ff8  storeli.w r2, -856(r30)
000138  2b414c3f  lui r2, 259268
00013c  674a1ff8  storeli.w r1, -860(r30)
000140  ab20373d  lui r1, 250738
000144  1b17a122  ori r14, r2, 554
000148  2b01807f  lui r2, 522240
00014c  9b963071  ori r13, r1, 1811
000150  9f002000  addli r1, zero, 16
000154  6a210122  vor.u.mz vr2{mr1}, r2, vr0
000158  eaa00022  vor.u.mz vr1{mr1}, r1, vr0
00015c  ab700000  lui r1, 7
000160  9b9df0ff  ori r27, r1, 4095
000164  461c1f82  vstore_mask16.mz vr1{mr1}, 1216(r30)
000168  db070000  j 60
00016c  6b518f00  load.d r[3:4], 8(r30)
000170  6b520fcb  load.d r[5:6], -848(r30)
000174  ab0000f0  lui r1, 983040
000178  0b214110  add.ul r[3:4], r[3:4], r[5:6]
00017c  9f020002  addli r5, zero, 256
000180  63427ff9  loadli.w r4,  -836(r30)
000184  97901200  or r1, r5, r1
000188  ff30b100  s_lm2gm r1, r11, 0(r[3:4])
00018c  e3005ff9  loadli.w r1,  -856(r30)
000190  00a00000  mfence { lm }
000194  0b121210  add.s r4, r4, r1
000198  e3405ff9  loadli.w r1,  -852(r30)
00019c  3f201200  blt.s r4, r1, 8
0001a0  5b3d0200  j 4584
0001a4  e3003f00  loadli.w r1,  24(r30)
0001a8  63412f00  loadli.w r2,  20(r30)
0001ac  e74b4ff8  storeli.w r4, -836(r30)
0001b0  1f1a0000  addli r20, zero, 1
0001b4  8b101230  div.s r1, r4, r1
0001b8  8b902030  div.s r1, r1, r2
0001bc  63414ff9  loadli.w r2,  -860(r30)
0001c0  9bb0d000  slli r1, r1, 13
0001c4  8b902010  add.s r1, r1, r2
0001c8  b3900028  sext_int2long r[2:3], r1
0001cc  17b3a003  sll.d r[7:8], r[2:3], r26
0001d0  6b510f00  load.d r[3:4], 0(r30)
0001d4  ab0000f0  lui r1, 983040
0001d8  97901200  or r1, r5, r1
0001dc  73386fca  store.d r[7:8], -848(r30)
0001e0  0b216110  add.ul r[3:4], r[3:4], r[7:8]
0001e4  ff20b100  l_gm2lm r1, r11, 0(r[3:4])
0001e8  9f000000  addli r1, zero, 0
0001ec  00a00000  mfence { lm }
0001f0  5b1e0000  j 240
0001f4  fab20140  vextracti.s r5, 0(vr3)
0001f8  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0001fc  1f100000  addli zero, zero, 1
000200  7e0100e0  vmmov mr2, zero
000204  17200000  xor zero, zero, zero
000208  eaa13234  vor.u.mh vr3{mr2}, r5, vr3
00020c  9f220000  addli r5, zero, 2
000210  7e8102e0  vmmov mr2, r5
000214  ea213834  vor.u.mh vr3{mr2}, r16, vr3
000218  eaa13136  vor.u.mh vr3{mr3}, r3, vr3
00021c  9f011000  addli r3, zero, 8
000220  7e8001e0  vmmov mr0, r3
000224  9f012000  addli r3, zero, 16
000228  ea213230  vor.u.mh vr3{mr0}, r4, vr3
00022c  7e8001e0  vmmov mr0, r3
000230  9f014000  addli r3, zero, 32
000234  ea213530  vor.u.mh vr3{mr0}, r10, vr3
000238  7e8001e0  vmmov mr0, r3
00023c  9f018000  addli r3, zero, 64
000240  eaa13430  vor.u.mh vr3{mr0}, r9, vr3
000244  7e8001e0  vmmov mr0, r3
000248  9f010001  addli r3, zero, 128
00024c  ea213630  vor.u.mh vr3{mr0}, r12, vr3
000250  7e8001e0  vmmov mr0, r3
000254  aba1aaaa  lui r3, 699050
000258  9fa15115  addli r3, r3, 2730
00025c  ea213130  vor.u.mh vr3{mr0}, r2, vr3
000260  1f010002  addli r2, zero, 256
000264  7e0001e0  vmmov mr0, r2
000268  1b011a00  andi r2, r20, 1
00026c  1f0a0000  addli r20, zero, 0
000270  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000274  9f000004  addli r1, zero, 512
000278  7e8000e0  vmmov mr0, r1
00027c  9f000008  addli r1, zero, 1024
000280  ea213430  vor.u.mh vr3{mr0}, r8, vr3
000284  7e8000e0  vmmov mr0, r1
000288  9f000010  addli r1, zero, 2048
00028c  eaa13330  vor.u.mh vr3{mr0}, r7, vr3
000290  7e8000e0  vmmov mr0, r1
000294  9f000020  addli r1, zero, 4096
000298  ea213330  vor.u.mh vr3{mr0}, r6, vr3
00029c  7e8000e0  vmmov mr0, r1
0002a0  9f000040  addli r1, zero, 8192
0002a4  ea213c30  vor.u.mh vr3{mr0}, r24, vr3
0002a8  7e8000e0  vmmov mr0, r1
0002ac  ab400000  lui r1, 4
0002b0  eaa13c30  vor.u.mh vr3{mr0}, r25, vr3
0002b4  7e8000e0  vmmov mr0, r1
0002b8  ab800000  lui r1, 8
0002bc  eaa13b30  vor.u.mh vr3{mr0}, r23, vr3
0002c0  7e8000e0  vmmov mr0, r1
0002c4  9f80ca00  addli r1, r21, 96
0002c8  ea213b30  vor.u.mh vr3{mr0}, r22, vr3
0002cc  7e8001e0  vmmov mr0, r3
0002d0  62c33010  vscatter.mh vr3{mr0}, vr6{r1}
0002d4  9f000001  addli r1, zero, 128
0002d8  00a00000  mfence { lm }
0002dc  374a01fe  beq r2, zero, -368
0002e0  8b9a1510  add.s r21, r11, r1
0002e4  9f008ffc  addli r1, r30, -448
0002e8  c2920a02  vload_mask16.mz vr5{mr1}, 0(r21)
0002ec  c2918a02  vload_mask16.mz vr3{mr1}, 64(r21)
0002f0  66423080  vmerge_l.hf vr4, vr0, vr3
0002f4  66435080  vmerge_l.hf vr6, vr0, vr5
0002f8  e64250a0  vmerge_h.hf vr5, vr0, vr5
0002fc  8a934602  vmul.f.mz.rn vr7{mr1}, r13, vr4
000300  e64130a0  vmerge_h.hf vr3, vr0, vr3
000304  0a956602  vmul.f.mz.rn vr10{mr1}, r13, vr6
000308  8a955602  vmul.f.mz.rn vr11{mr1}, r13, vr5
00030c  0a943602  vmul.f.mz.rn vr8{mr1}, r13, vr3
000310  92344002  vadd.s.mz vr9{mr1}, zero, vr4
000314  8e934302  vmul.f.mz.rn vr7{mr1}, vr7, vr4
000318  0e156502  vmul.f.mz.rn vr10{mr1}, vr10, vr6
00031c  8e955502  vmul.f.mz.rn vr11{mr1}, vr11, vr5
000320  0e143402  vmul.f.mz.rn vr8{mr1}, vr8, vr3
000324  a6949302  vmac.f.mz.rn vr9{mr1}, vr7, vr9
000328  92336002  vadd.s.mz vr7{mr1}, zero, vr6
00032c  a6137502  vmac.f.mz.rn vr7{mr1}, vr10, vr7
000330  12355002  vadd.s.mz vr10{mr1}, zero, vr5
000334  8a149702  vmul.f.mz.rn vr9{mr1}, r14, vr9
000338  2695a502  vmac.f.mz.rn vr10{mr1}, vr11, vr10
00033c  92353002  vadd.s.mz vr11{mr1}, zero, vr3
000340  8a137702  vmul.f.mz.rn vr7{mr1}, r14, vr7
000344  a615b402  vmac.f.mz.rn vr11{mr1}, vr8, vr11
000348  0a14a702  vmul.f.mz.rn vr8{mr1}, r14, vr10
00034c  0a15b702  vmul.f.mz.rn vr10{mr1}, r14, vr11
000350  8a937702  vmul.f.mz.rn vr7{mr1}, r15, vr7
000354  9a107002  vsub.f.mz.rn vr1{mr1}, zero, vr7
000358  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
00035c  0a948702  vmul.f.mz.rn vr8{mr1}, r15, vr8
000360  8a959702  vmul.f.mz.rn vr11{mr1}, r15, vr9
000364  0a95a702  vmul.f.mz.rn vr10{mr1}, r15, vr10
000368  9a148002  vsub.f.mz.rn vr9{mr1}, zero, vr8
00036c  9a13a002  vsub.f.mz.rn vr7{mr1}, zero, vr10
000370  1a14b002  vsub.f.mz.rn vr8{mr1}, zero, vr11
000374  00a00000  mfence { lm }
000378  e3008ffc  loadli.w r1,  -448(r30)
00037c  63418ffc  loadli.w r2,  -444(r30)
000380  e3019ffc  loadli.w r3,  -440(r30)
000384  e302affc  loadli.w r5,  -432(r30)
000388  6343affc  loadli.w r6,  -428(r30)
00038c  e303bffc  loadli.w r7,  -424(r30)
000390  6344bffc  loadli.w r8,  -420(r30)
000394  e304cffc  loadli.w r9,  -416(r30)
000398  6345cffc  loadli.w r10,  -412(r30)
00039c  6306dffc  loadli.w r12,  -408(r30)
0003a0  6348dffc  loadli.w r16,  -404(r30)
0003a4  630beffc  loadli.w r22,  -400(r30)
0003a8  e34beffc  loadli.w r23,  -396(r30)
0003ac  630cfffc  loadli.w r24,  -392(r30)
0003b0  e34cfffc  loadli.w r25,  -388(r30)
0003b4  8f800000  exp.f.rn r1, r1
0003b8  0f010100  exp.f.rn r2, r2
0003bc  8f810100  exp.f.rn r3, r3
0003c0  0be21011  add.f.rn r4, r1, r17
0003c4  0b611111  add.f.rn r2, r2, r17
0003c8  8be11111  add.f.rn r3, r3, r17
0003cc  e3409ffc  loadli.w r1,  -436(r30)
0003d0  8f800000  exp.f.rn r1, r1
0003d4  0f824818  div.f.rn r4, r17, r4
0003d8  0f812818  div.f.rn r2, r17, r2
0003dc  8f813818  div.f.rn r3, r17, r3
0003e0  8be01011  add.f.rn r1, r1, r17
0003e4  67004ffc  storeli.w r4, -512(r30)
0003e8  0f820200  exp.f.rn r4, r5
0003ec  8f020300  exp.f.rn r5, r6
0003f0  0f030400  exp.f.rn r6, r8
0003f4  67402ffc  storeli.w r2, -508(r30)
0003f8  0f810300  exp.f.rn r2, r7
0003fc  8f830400  exp.f.rn r7, r9
000400  e7003ffc  storeli.w r3, -504(r30)
000404  8f801818  div.f.rn r1, r17, r1
000408  0b621211  add.f.rn r4, r4, r17
00040c  8be21211  add.f.rn r5, r5, r17
000410  0b611111  add.f.rn r2, r2, r17
000414  0b631311  add.f.rn r6, r6, r17
000418  e7401ffc  storeli.w r1, -500(r30)
00041c  8f000500  exp.f.rn r1, r10
000420  0f824818  div.f.rn r4, r17, r4
000424  8f815818  div.f.rn r3, r17, r5
000428  8be21311  add.f.rn r5, r7, r17
00042c  0f812818  div.f.rn r2, r17, r2
000430  0f836818  div.f.rn r6, r17, r6
000434  8f830c00  exp.f.rn r7, r25
000438  8be01011  add.f.rn r1, r1, r17
00043c  67014ffc  storeli.w r4, -496(r30)
000440  0f825818  div.f.rn r4, r17, r5
000444  8f820b00  exp.f.rn r5, r23
000448  67413ffc  storeli.w r3, -492(r30)
00044c  8f010800  exp.f.rn r3, r16
000450  e7012ffc  storeli.w r2, -488(r30)
000454  0f010600  exp.f.rn r2, r12
000458  e7416ffc  storeli.w r6, -484(r30)
00045c  0f030c00  exp.f.rn r6, r24
000460  8be31311  add.f.rn r7, r7, r17
000464  8f801818  div.f.rn r1, r17, r1
000468  8f837818  div.f.rn r7, r17, r7
00046c  67024ffc  storeli.w r4, -480(r30)
000470  0f020b00  exp.f.rn r4, r22
000474  0b611111  add.f.rn r2, r2, r17
000478  8be11111  add.f.rn r3, r3, r17
00047c  8be21211  add.f.rn r5, r5, r17
000480  0b631311  add.f.rn r6, r6, r17
000484  67421ffc  storeli.w r1, -476(r30)
000488  9f000ffc  addli r1, r30, -512
00048c  0f812818  div.f.rn r2, r17, r2
000490  8f813818  div.f.rn r3, r17, r3
000494  8f825818  div.f.rn r5, r17, r5
000498  0f836818  div.f.rn r6, r17, r6
00049c  e7437ffc  storeli.w r7, -452(r30)
0004a0  0b621211  add.f.rn r4, r4, r17
0004a4  0f824818  div.f.rn r4, r17, r4
0004a8  e7022ffc  storeli.w r2, -472(r30)
0004ac  e7423ffc  storeli.w r3, -468(r30)
0004b0  67435ffc  storeli.w r5, -460(r30)
0004b4  e7036ffc  storeli.w r6, -456(r30)
0004b8  67034ffc  storeli.w r4, -464(r30)
0004bc  00a00000  mfence { lm }
0004c0  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0004c4  9f008ffd  addli r1, r30, -320
0004c8  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
0004cc  00a00000  mfence { lm }
0004d0  e3008ffd  loadli.w r1,  -320(r30)
0004d4  63418ffd  loadli.w r2,  -316(r30)
0004d8  e3019ffd  loadli.w r3,  -312(r30)
0004dc  e302affd  loadli.w r5,  -304(r30)
0004e0  6343affd  loadli.w r6,  -300(r30)
0004e4  e303bffd  loadli.w r7,  -296(r30)
0004e8  6344bffd  loadli.w r8,  -292(r30)
0004ec  e304cffd  loadli.w r9,  -288(r30)
0004f0  6345cffd  loadli.w r10,  -284(r30)
0004f4  6306dffd  loadli.w r12,  -280(r30)
0004f8  6348dffd  loadli.w r16,  -276(r30)
0004fc  630beffd  loadli.w r22,  -272(r30)
000500  e34beffd  loadli.w r23,  -268(r30)
000504  630cfffd  loadli.w r24,  -264(r30)
000508  e34cfffd  loadli.w r25,  -260(r30)
00050c  8e10a302  vmul.f.mz.rn vr1{mr1}, vr6, vr10
000510  8f800000  exp.f.rn r1, r1
000514  0f010100  exp.f.rn r2, r2
000518  8f810100  exp.f.rn r3, r3
00051c  669500c0  vabs.f vr10, vr1
000520  0be21011  add.f.rn r4, r1, r17
000524  0b611111  add.f.rn r2, r2, r17
000528  8be11111  add.f.rn r3, r3, r17
00052c  e3409ffd  loadli.w r1,  -308(r30)
000530  7621a142  vlt.u.mz mr2{mr1}, vr2, vr10
000534  6a351e22  vor.s.mz vr10{mr1}, r28, vr1
000538  8f800000  exp.f.rn r1, r1
00053c  0f824818  div.f.rn r4, r17, r4
000540  0f812818  div.f.rn r2, r17, r2
000544  8f813818  div.f.rn r3, r17, r3
000548  8be01011  add.f.rn r1, r1, r17
00054c  67084ffc  storeli.w r4, -384(r30)
000550  0f820200  exp.f.rn r4, r5
000554  8f020300  exp.f.rn r5, r6
000558  0f030400  exp.f.rn r6, r8
00055c  67482ffc  storeli.w r2, -380(r30)
000560  0f810300  exp.f.rn r2, r7
000564  8f830400  exp.f.rn r7, r9
000568  e7083ffc  storeli.w r3, -376(r30)
00056c  8f801818  div.f.rn r1, r17, r1
000570  0b621211  add.f.rn r4, r4, r17
000574  8be21211  add.f.rn r5, r5, r17
000578  0b611111  add.f.rn r2, r2, r17
00057c  0b631311  add.f.rn r6, r6, r17
000580  e7481ffc  storeli.w r1, -372(r30)
000584  8f000500  exp.f.rn r1, r10
000588  0f824818  div.f.rn r4, r17, r4
00058c  8f815818  div.f.rn r3, r17, r5
000590  8be21311  add.f.rn r5, r7, r17
000594  0f812818  div.f.rn r2, r17, r2
000598  0f836818  div.f.rn r6, r17, r6
00059c  8f830c00  exp.f.rn r7, r25
0005a0  8be01011  add.f.rn r1, r1, r17
0005a4  67094ffc  storeli.w r4, -368(r30)
0005a8  0f825818  div.f.rn r4, r17, r5
0005ac  8f820b00  exp.f.rn r5, r23
0005b0  67493ffc  storeli.w r3, -364(r30)
0005b4  8f010800  exp.f.rn r3, r16
0005b8  e7092ffc  storeli.w r2, -360(r30)
0005bc  0f010600  exp.f.rn r2, r12
0005c0  e7496ffc  storeli.w r6, -356(r30)
0005c4  0f030c00  exp.f.rn r6, r24
0005c8  8be31311  add.f.rn r7, r7, r17
0005cc  8f801818  div.f.rn r1, r17, r1
0005d0  8f837818  div.f.rn r7, r17, r7
0005d4  670a4ffc  storeli.w r4, -352(r30)
0005d8  0f020b00  exp.f.rn r4, r22
0005dc  0b611111  add.f.rn r2, r2, r17
0005e0  8be11111  add.f.rn r3, r3, r17
0005e4  8be21211  add.f.rn r5, r5, r17
0005e8  0b631311  add.f.rn r6, r6, r17
0005ec  674a1ffc  storeli.w r1, -348(r30)
0005f0  9f000ffd  addli r1, r30, -384
0005f4  0f812818  div.f.rn r2, r17, r2
0005f8  8f813818  div.f.rn r3, r17, r3
0005fc  8f825818  div.f.rn r5, r17, r5
000600  0f836818  div.f.rn r6, r17, r6
000604  e74b7ffc  storeli.w r7, -324(r30)
000608  0b621211  add.f.rn r4, r4, r17
00060c  0f824818  div.f.rn r4, r17, r4
000610  e70a2ffc  storeli.w r2, -344(r30)
000614  e74a3ffc  storeli.w r3, -340(r30)
000618  674b5ffc  storeli.w r5, -332(r30)
00061c  e70b6ffc  storeli.w r6, -328(r30)
000620  670b4ffc  storeli.w r4, -336(r30)
000624  00a00000  mfence { lm }
000628  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
00062c  9f008ffe  addli r1, r30, -192
000630  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
000634  00a00000  mfence { lm }
000638  e3008ffe  loadli.w r1,  -192(r30)
00063c  63418ffe  loadli.w r2,  -188(r30)
000640  e3019ffe  loadli.w r3,  -184(r30)
000644  e302affe  loadli.w r5,  -176(r30)
000648  6343affe  loadli.w r6,  -172(r30)
00064c  e303bffe  loadli.w r7,  -168(r30)
000650  6344bffe  loadli.w r8,  -164(r30)
000654  e304cffe  loadli.w r9,  -160(r30)
000658  6345cffe  loadli.w r10,  -156(r30)
00065c  6306dffe  loadli.w r12,  -152(r30)
000660  6348dffe  loadli.w r16,  -148(r30)
000664  630beffe  loadli.w r22,  -144(r30)
000668  e34beffe  loadli.w r23,  -140(r30)
00066c  630cfffe  loadli.w r24,  -136(r30)
000670  e34cfffe  loadli.w r25,  -132(r30)
000674  8f800000  exp.f.rn r1, r1
000678  0f010100  exp.f.rn r2, r2
00067c  8f810100  exp.f.rn r3, r3
000680  0be21011  add.f.rn r4, r1, r17
000684  0b611111  add.f.rn r2, r2, r17
000688  8be11111  add.f.rn r3, r3, r17
00068c  e3409ffe  loadli.w r1,  -180(r30)
000690  8f800000  exp.f.rn r1, r1
000694  0f824818  div.f.rn r4, r17, r4
000698  0f812818  div.f.rn r2, r17, r2
00069c  8f813818  div.f.rn r3, r17, r3
0006a0  8be01011  add.f.rn r1, r1, r17
0006a4  67004ffe  storeli.w r4, -256(r30)
0006a8  0f820200  exp.f.rn r4, r5
0006ac  8f020300  exp.f.rn r5, r6
0006b0  0f030400  exp.f.rn r6, r8
0006b4  67402ffe  storeli.w r2, -252(r30)
0006b8  0f810300  exp.f.rn r2, r7
0006bc  8f830400  exp.f.rn r7, r9
0006c0  e7003ffe  storeli.w r3, -248(r30)
0006c4  8f801818  div.f.rn r1, r17, r1
0006c8  0b621211  add.f.rn r4, r4, r17
0006cc  8be21211  add.f.rn r5, r5, r17
0006d0  0b611111  add.f.rn r2, r2, r17
0006d4  0b631311  add.f.rn r6, r6, r17
0006d8  e7401ffe  storeli.w r1, -244(r30)
0006dc  8f000500  exp.f.rn r1, r10
0006e0  0f824818  div.f.rn r4, r17, r4
0006e4  8f815818  div.f.rn r3, r17, r5
0006e8  8be21311  add.f.rn r5, r7, r17
0006ec  0f812818  div.f.rn r2, r17, r2
0006f0  0f836818  div.f.rn r6, r17, r6
0006f4  8f830c00  exp.f.rn r7, r25
0006f8  8be01011  add.f.rn r1, r1, r17
0006fc  67014ffe  storeli.w r4, -240(r30)
000700  0f825818  div.f.rn r4, r17, r5
000704  8f820b00  exp.f.rn r5, r23
000708  67413ffe  storeli.w r3, -236(r30)
00070c  8f010800  exp.f.rn r3, r16
000710  e7012ffe  storeli.w r2, -232(r30)
000714  0f010600  exp.f.rn r2, r12
000718  e7416ffe  storeli.w r6, -228(r30)
00071c  0f030c00  exp.f.rn r6, r24
000720  8be31311  add.f.rn r7, r7, r17
000724  8f801818  div.f.rn r1, r17, r1
000728  8f837818  div.f.rn r7, r17, r7
00072c  67024ffe  storeli.w r4, -224(r30)
000730  0f020b00  exp.f.rn r4, r22
000734  0b611111  add.f.rn r2, r2, r17
000738  8be11111  add.f.rn r3, r3, r17
00073c  8be21211  add.f.rn r5, r5, r17
000740  0b631311  add.f.rn r6, r6, r17
000744  67421ffe  storeli.w r1, -220(r30)
000748  9f000ffe  addli r1, r30, -256
00074c  0f812818  div.f.rn r2, r17, r2
000750  8f813818  div.f.rn r3, r17, r3
000754  8f825818  div.f.rn r5, r17, r5
000758  0f836818  div.f.rn r6, r17, r6
00075c  e7437ffe  storeli.w r7, -196(r30)
000760  0b621211  add.f.rn r4, r4, r17
000764  0f824818  div.f.rn r4, r17, r4
000768  e7022ffe  storeli.w r2, -216(r30)
00076c  e7423ffe  storeli.w r3, -212(r30)
000770  67435ffe  storeli.w r5, -204(r30)
000774  e7036ffe  storeli.w r6, -200(r30)
000778  67034ffe  storeli.w r4, -208(r30)
00077c  00a00000  mfence { lm }
000780  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000784  9f008fff  addli r1, r30, -64
000788  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
00078c  00a00000  mfence { lm }
000790  e3008fff  loadli.w r1,  -64(r30)
000794  63418fff  loadli.w r2,  -60(r30)
000798  e3019fff  loadli.w r3,  -56(r30)
00079c  e302afff  loadli.w r5,  -48(r30)
0007a0  6343afff  loadli.w r6,  -44(r30)
0007a4  e303bfff  loadli.w r7,  -40(r30)
0007a8  6344bfff  loadli.w r8,  -36(r30)
0007ac  e304cfff  loadli.w r9,  -32(r30)
0007b0  6345cfff  loadli.w r10,  -28(r30)
0007b4  6306dfff  loadli.w r12,  -24(r30)
0007b8  6348dfff  loadli.w r16,  -20(r30)
0007bc  630befff  loadli.w r22,  -16(r30)
0007c0  e34befff  loadli.w r23,  -12(r30)
0007c4  630cffff  loadli.w r24,  -8(r30)
0007c8  e34cffff  loadli.w r25,  -4(r30)
0007cc  c2158f83  vload_mask16.mz vr11{mr1}, 1216(r30)
0007d0  0f010100  exp.f.rn r2, r2
0007d4  8f800000  exp.f.rn r1, r1
0007d8  8f810100  exp.f.rn r3, r3
0007dc  8f820200  exp.f.rn r5, r5
0007e0  6eb315c2  vsrl.s.mz vr6{mr1}, vr11, vr1
0007e4  0be21011  add.f.rn r4, r1, r17
0007e8  0b611111  add.f.rn r2, r2, r17
0007ec  e3409fff  loadli.w r1,  -52(r30)
0007f0  8be11111  add.f.rn r3, r3, r17
0007f4  8be21211  add.f.rn r5, r5, r17
0007f8  6a336d02  vand.s.mz vr6{mr1}, r26, vr6
0007fc  8f800000  exp.f.rn r1, r1
000800  16b36002  vadd.s.mz vr6{mr1}, vr1, vr6
000804  0f824818  div.f.rn r4, r17, r4
000808  0f812818  div.f.rn r2, r17, r2
00080c  12b36d02  vadd.s.mz vr6{mr1}, r27, vr6
000810  8be01011  add.f.rn r1, r1, r17
000814  67084ffe  storeli.w r4, -128(r30)
000818  0f820300  exp.f.rn r4, r7
00081c  67482ffe  storeli.w r2, -124(r30)
000820  0f813818  div.f.rn r2, r17, r3
000824  8f010300  exp.f.rn r3, r6
000828  0f030400  exp.f.rn r6, r8
00082c  8f830400  exp.f.rn r7, r9
000830  8f801818  div.f.rn r1, r17, r1
000834  e7082ffe  storeli.w r2, -120(r30)
000838  0be11111  add.f.rn r2, r3, r17
00083c  8f815818  div.f.rn r3, r17, r5
000840  8b621311  add.f.rn r5, r6, r17
000844  0be31311  add.f.rn r6, r7, r17
000848  0b621211  add.f.rn r4, r4, r17
00084c  8f030500  exp.f.rn r7, r10
000850  e7481ffe  storeli.w r1, -116(r30)
000854  8f804818  div.f.rn r1, r17, r4
000858  0f825818  div.f.rn r4, r17, r5
00085c  8f826818  div.f.rn r5, r17, r6
000860  0f812818  div.f.rn r2, r17, r2
000864  0f030c00  exp.f.rn r6, r24
000868  67093ffe  storeli.w r3, -112(r30)
00086c  8be11311  add.f.rn r3, r7, r17
000870  8f830c00  exp.f.rn r7, r25
000874  67492ffe  storeli.w r2, -108(r30)
000878  0f010600  exp.f.rn r2, r12
00087c  e7091ffe  storeli.w r1, -104(r30)
000880  8f803818  div.f.rn r1, r17, r3
000884  e7494ffe  storeli.w r4, -100(r30)
000888  670a5ffe  storeli.w r5, -96(r30)
00088c  8f010800  exp.f.rn r3, r16
000890  0f020b00  exp.f.rn r4, r22
000894  8f820b00  exp.f.rn r5, r23
000898  0b611111  add.f.rn r2, r2, r17
00089c  674a1ffe  storeli.w r1, -92(r30)
0008a0  8be01111  add.f.rn r1, r3, r17
0008a4  8b611211  add.f.rn r3, r4, r17
0008a8  0be21211  add.f.rn r4, r5, r17
0008ac  8b621311  add.f.rn r5, r6, r17
0008b0  0be31311  add.f.rn r6, r7, r17
0008b4  0f812818  div.f.rn r2, r17, r2
0008b8  8f801818  div.f.rn r1, r17, r1
0008bc  8f813818  div.f.rn r3, r17, r3
0008c0  0f824818  div.f.rn r4, r17, r4
0008c4  8f825818  div.f.rn r5, r17, r5
0008c8  0f836818  div.f.rn r6, r17, r6
0008cc  e74a1ffe  storeli.w r1, -84(r30)
0008d0  e70b5ffe  storeli.w r5, -72(r30)
0008d4  e70a2ffe  storeli.w r2, -88(r30)
0008d8  670b3ffe  storeli.w r3, -80(r30)
0008dc  674b4ffe  storeli.w r4, -76(r30)
0008e0  e74b6ffe  storeli.w r6, -68(r30)
0008e4  9f000fff  addli r1, r30, -128
0008e8  fe0201a0  vmmov r5, mr2
0008ec  00a00000  mfence { lm }
0008f0  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0008f4  9bc0f200  srli r1, r5, 15
0008f8  9b801000  andi r1, r1, 1
0008fc  3bb00000  bneq r1, zero, 12
000900  7a3bf340  vextracti.s r22, 15(vr6)
000904  5b010000  j 8
000908  7a3bf540  vextracti.s r22, 15(vr10)
00090c  9bc0e200  srli r1, r5, 14
000910  9b801000  andi r1, r1, 1
000914  3bb00000  bneq r1, zero, 12
000918  fa3be340  vextracti.s r23, 14(vr6)
00091c  5b010000  j 8
000920  fa3be540  vextracti.s r23, 14(vr10)
000924  9bc0d200  srli r1, r5, 13
000928  9b801000  andi r1, r1, 1
00092c  3bb00000  bneq r1, zero, 12
000930  fa3cd340  vextracti.s r25, 13(vr6)
000934  5b010000  j 8
000938  fa3cd540  vextracti.s r25, 13(vr10)
00093c  9bc0c200  srli r1, r5, 12
000940  9b801000  andi r1, r1, 1
000944  3bb00000  bneq r1, zero, 12
000948  7a3cc340  vextracti.s r24, 12(vr6)
00094c  5b010000  j 8
000950  7a3cc540  vextracti.s r24, 12(vr10)
000954  9bc0b200  srli r1, r5, 11
000958  9b801000  andi r1, r1, 1
00095c  3bb00000  bneq r1, zero, 12
000960  7a33b340  vextracti.s r6, 11(vr6)
000964  5b010000  j 8
000968  7a33b540  vextracti.s r6, 11(vr10)
00096c  9bc0a200  srli r1, r5, 10
000970  9b801000  andi r1, r1, 1
000974  3bb00000  bneq r1, zero, 12
000978  fa33a340  vextracti.s r7, 10(vr6)
00097c  5b010000  j 8
000980  fa33a540  vextracti.s r7, 10(vr10)
000984  9bc09200  srli r1, r5, 9
000988  9b801000  andi r1, r1, 1
00098c  3bb00000  bneq r1, zero, 12
000990  7a349340  vextracti.s r8, 9(vr6)
000994  5b010000  j 8
000998  7a349540  vextracti.s r8, 9(vr10)
00099c  9bc08200  srli r1, r5, 8
0009a0  9b801000  andi r1, r1, 1
0009a4  3bb00000  bneq r1, zero, 12
0009a8  fa308340  vextracti.s r1, 8(vr6)
0009ac  5b010000  j 8
0009b0  fa308540  vextracti.s r1, 8(vr10)
0009b4  1bc17200  srli r2, r5, 7
0009b8  1b011100  andi r2, r2, 1
0009bc  3b300100  bneq r2, zero, 12
0009c0  7a317340  vextracti.s r2, 7(vr6)
0009c4  5b010000  j 8
0009c8  7a317540  vextracti.s r2, 7(vr10)
0009cc  9bc16200  srli r3, r5, 6
0009d0  9b811100  andi r3, r3, 1
0009d4  3bb00100  bneq r3, zero, 12
0009d8  7a366340  vextracti.s r12, 6(vr6)
0009dc  5b010000  j 8
0009e0  7a366540  vextracti.s r12, 6(vr10)
0009e4  9bc15200  srli r3, r5, 5
0009e8  9b811100  andi r3, r3, 1
0009ec  3bb00100  bneq r3, zero, 12
0009f0  fa345340  vextracti.s r9, 5(vr6)
0009f4  5b010000  j 8
0009f8  fa345540  vextracti.s r9, 5(vr10)
0009fc  9bc14200  srli r3, r5, 4
000a00  9b811100  andi r3, r3, 1
000a04  3bb00100  bneq r3, zero, 12
000a08  7a354340  vextracti.s r10, 4(vr6)
000a0c  5b010000  j 8
000a10  7a354540  vextracti.s r10, 4(vr10)
000a14  9bc13200  srli r3, r5, 3
000a18  9b811100  andi r3, r3, 1
000a1c  3bb00100  bneq r3, zero, 12
000a20  7a323340  vextracti.s r4, 3(vr6)
000a24  5b010000  j 8
000a28  7a323540  vextracti.s r4, 3(vr10)
000a2c  9bc12200  srli r3, r5, 2
000a30  9b811100  andi r3, r3, 1
000a34  3bb00100  bneq r3, zero, 12
000a38  fa312340  vextracti.s r3, 2(vr6)
000a3c  5b010000  j 8
000a40  fa312540  vextracti.s r3, 2(vr10)
000a44  1bc81200  srli r16, r5, 1
000a48  1b081800  andi r16, r16, 1
000a4c  3b600800  bneq r16, zero, 24
000a50  7a381340  vextracti.s r16, 1(vr6)
000a54  9b821200  andi r5, r5, 1
000a58  37e00200  beq r5, zero, 24
000a5c  fa320540  vextracti.s r5, 0(vr10)
000a60  db020000  j 20
000a64  7a381540  vextracti.s r16, 1(vr10)
000a68  9b821200  andi r5, r5, 1
000a6c  bbcf02fe  bneq r5, zero, -16
000a70  fa320340  vextracti.s r5, 0(vr6)
000a74  12350002  vadd.s.mz vr10{mr1}, zero, vr0
000a78  1f100000  addli zero, zero, 1
000a7c  8e949202  vmul.f.mz.rn vr9{mr1}, vr5, vr9
000a80  7e0100e0  vmmov mr2, zero
000a84  17200000  xor zero, zero, zero
000a88  6aa5a234  vor.u.mh vr10{mr2}, r5, vr10
000a8c  9f220000  addli r5, zero, 2
000a90  12330002  vadd.s.mz vr6{mr1}, zero, vr0
000a94  eeb095c2  vsrl.s.mz vr1{mr1}, vr11, vr9
000a98  e69204c0  vabs.f vr5, vr9
000a9c  fe8102e0  vmmov mr3, r5
000aa0  9f420000  addli r5, zero, 4
000aa4  6a25a836  vor.u.mh vr10{mr3}, r16, vr10
000aa8  fe8102e0  vmmov mr3, r5
000aac  ea301d02  vand.s.mz vr1{mr1}, r26, vr1
000ab0  6aa5a136  vor.u.mh vr10{mr3}, r3, vr10
000ab4  9f011000  addli r3, zero, 8
000ab8  96b01402  vadd.s.mz vr1{mr1}, vr9, vr1
000abc  ea349e22  vor.s.mz vr9{mr1}, r28, vr9
000ac0  7e8001e0  vmmov mr0, r3
000ac4  9f012000  addli r3, zero, 16
000ac8  6a25a230  vor.u.mh vr10{mr0}, r4, vr10
000acc  7e8101e0  vmmov mr2, r3
000ad0  9f014000  addli r3, zero, 32
000ad4  6a25a534  vor.u.mh vr10{mr2}, r10, vr10
000ad8  7e8101e0  vmmov mr2, r3
000adc  9f018000  addli r3, zero, 64
000ae0  6aa5a434  vor.u.mh vr10{mr2}, r9, vr10
000ae4  7e8101e0  vmmov mr2, r3
000ae8  9f010001  addli r3, zero, 128
000aec  6a25a634  vor.u.mh vr10{mr2}, r12, vr10
000af0  7e8101e0  vmmov mr2, r3
000af4  6a25a134  vor.u.mh vr10{mr2}, r2, vr10
000af8  1f010002  addli r2, zero, 256
000afc  7e0101e0  vmmov mr2, r2
000b00  1f010001  addli r2, zero, 128
000b04  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
000b08  9f000004  addli r1, zero, 512
000b0c  7e8100e0  vmmov mr2, r1
000b10  9f000008  addli r1, zero, 1024
000b14  6a25a434  vor.u.mh vr10{mr2}, r8, vr10
000b18  7e8100e0  vmmov mr2, r1
000b1c  9f000010  addli r1, zero, 2048
000b20  6aa5a334  vor.u.mh vr10{mr2}, r7, vr10
000b24  7e8100e0  vmmov mr2, r1
000b28  9f000020  addli r1, zero, 4096
000b2c  6a25a334  vor.u.mh vr10{mr2}, r6, vr10
000b30  7e8100e0  vmmov mr2, r1
000b34  9f000040  addli r1, zero, 8192
000b38  6a25ac34  vor.u.mh vr10{mr2}, r24, vr10
000b3c  7e8100e0  vmmov mr2, r1
000b40  ab400000  lui r1, 4
000b44  6aa5ac34  vor.u.mh vr10{mr2}, r25, vr10
000b48  7e8100e0  vmmov mr2, r1
000b4c  ab800000  lui r1, 8
000b50  6aa5ab34  vor.u.mh vr10{mr2}, r23, vr10
000b54  7e8100e0  vmmov mr2, r1
000b58  9f100000  addli r1, zero, 1
000b5c  fe8100e0  vmmov mr3, r1
000b60  9f200000  addli r1, zero, 2
000b64  6a25ab34  vor.u.mh vr10{mr2}, r22, vr10
000b68  6a436036  vor.hf.mh vr6{mr3}, zero, vr6
000b6c  fe8100e0  vmmov mr3, r1
000b70  9f400000  addli r1, zero, 4
000b74  6a436036  vor.hf.mh vr6{mr3}, zero, vr6
000b78  fe8100e0  vmmov mr3, r1
000b7c  9f002000  addli r1, zero, 16
000b80  6a436036  vor.hf.mh vr6{mr3}, zero, vr6
000b84  6ac36930  vor.hf.mh vr6{mr0}, r19, vr6
000b88  7e8000e0  vmmov mr0, r1
000b8c  9f004000  addli r1, zero, 32
000b90  6a436030  vor.hf.mh vr6{mr0}, zero, vr6
000b94  7e8000e0  vmmov mr0, r1
000b98  9f008000  addli r1, zero, 64
000b9c  6a436930  vor.hf.mh vr6{mr0}, r18, vr6
000ba0  7e8000e0  vmmov mr0, r1
000ba4  9f600000  addli r1, zero, 6
000ba8  6a436030  vor.hf.mh vr6{mr0}, zero, vr6
000bac  7e0001e0  vmmov mr0, r2
000bb0  1f010004  addli r2, zero, 512
000bb4  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
000bb8  9f000002  addli r1, zero, 256
000bbc  7e8000e0  vmmov mr0, r1
000bc0  9f001000  addli r1, zero, 8
000bc4  6a436030  vor.hf.mh vr6{mr0}, zero, vr6
000bc8  7e0001e0  vmmov mr0, r2
000bcc  1f010010  addli r2, zero, 2048
000bd0  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
000bd4  9f000008  addli r1, zero, 1024
000bd8  7e8000e0  vmmov mr0, r1
000bdc  9f201000  addli r1, zero, 10
000be0  6a436030  vor.hf.mh vr6{mr0}, zero, vr6
000be4  7e0001e0  vmmov mr0, r2
000be8  1f010040  addli r2, zero, 8192
000bec  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
000bf0  9f000020  addli r1, zero, 4096
000bf4  7e8000e0  vmmov mr0, r1
000bf8  9f401000  addli r1, zero, 12
000bfc  6a436030  vor.hf.mh vr6{mr0}, zero, vr6
000c00  7e0001e0  vmmov mr0, r2
000c04  2b010200  lui r2, 32
000c08  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
000c0c  ab400000  lui r1, 4
000c10  7e8000e0  vmmov mr0, r1
000c14  9f601000  addli r1, zero, 14
000c18  6a436030  vor.hf.mh vr6{mr0}, zero, vr6
000c1c  6ac36034  vor.hf.mh vr6{mr2}, r1, vr6
000c20  ab000100  lui r1, 16
000c24  76215142  vlt.u.mz mr2{mr1}, vr2, vr5
000c28  92b21d02  vadd.s.mz vr5{mr1}, r27, vr1
000c2c  fe0201a0  vmmov r5, mr2
000c30  7e8000e0  vmmov mr0, r1
000c34  9f002000  addli r1, zero, 16
000c38  6a436030  vor.hf.mh vr6{mr0}, zero, vr6
000c3c  7e0001e0  vmmov mr0, r2
000c40  2b010800  lui r2, 128
000c44  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
000c48  ab000400  lui r1, 64
000c4c  7e8000e0  vmmov mr0, r1
000c50  9f202000  addli r1, zero, 18
000c54  6a436030  vor.hf.mh vr6{mr0}, zero, vr6
000c58  7e0001e0  vmmov mr0, r2
000c5c  2b012000  lui r2, 512
000c60  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
000c64  ab001000  lui r1, 256
000c68  7e8000e0  vmmov mr0, r1
000c6c  9f402000  addli r1, zero, 20
000c70  6a436030  vor.hf.mh vr6{mr0}, zero, vr6
000c74  7e0001e0  vmmov mr0, r2
000c78  2b018000  lui r2, 2048
000c7c  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
000c80  ab004000  lui r1, 1024
000c84  7e8000e0  vmmov mr0, r1
000c88  9f602000  addli r1, zero, 22
000c8c  6a436030  vor.hf.mh vr6{mr0}, zero, vr6
000c90  7e0001e0  vmmov mr0, r2
000c94  2b010002  lui r2, 8192
000c98  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
000c9c  ab000001  lui r1, 4096
000ca0  7e8000e0  vmmov mr0, r1
000ca4  9f003000  addli r1, zero, 24
000ca8  6a436030  vor.hf.mh vr6{mr0}, zero, vr6
000cac  7e0001e0  vmmov mr0, r2
000cb0  2b010008  lui r2, 32768
000cb4  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
000cb8  ab000004  lui r1, 16384
000cbc  7e8000e0  vmmov mr0, r1
000cc0  9f203000  addli r1, zero, 26
000cc4  6a436030  vor.hf.mh vr6{mr0}, zero, vr6
000cc8  7e0001e0  vmmov mr0, r2
000ccc  2b010020  lui r2, 131072
000cd0  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
000cd4  ab000010  lui r1, 65536
000cd8  7e8000e0  vmmov mr0, r1
000cdc  9f403000  addli r1, zero, 28
000ce0  6a436030  vor.hf.mh vr6{mr0}, zero, vr6
000ce4  7e0001e0  vmmov mr0, r2
000ce8  2b010080  lui r2, 524288
000cec  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
000cf0  ab000040  lui r1, 262144
000cf4  7e8000e0  vmmov mr0, r1
000cf8  9f603000  addli r1, zero, 30
000cfc  6a436030  vor.hf.mh vr6{mr0}, zero, vr6
000d00  7e0001e0  vmmov mr0, r2
000d04  2ba1aaaa  lui r2, 699050
000d08  1f215115  addli r2, r2, 2730
000d0c  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
000d10  9bc0f200  srli r1, r5, 15
000d14  7e0001e0  vmmov mr0, r2
000d18  9b801000  andi r1, r1, 1
000d1c  62c3aa10  vscatter.mh vr10{mr0}, vr6{r21}
000d20  3bb00000  bneq r1, zero, 12
000d24  7abbf240  vextracti.s r22, 15(vr5)
000d28  5b010000  j 8
000d2c  7abbf440  vextracti.s r22, 15(vr9)
000d30  9bc0e200  srli r1, r5, 14
000d34  9b801000  andi r1, r1, 1
000d38  3bb00000  bneq r1, zero, 12
000d3c  fabbe240  vextracti.s r23, 14(vr5)
000d40  5b010000  j 8
000d44  fabbe440  vextracti.s r23, 14(vr9)
000d48  9bc0d200  srli r1, r5, 13
000d4c  9b801000  andi r1, r1, 1
000d50  3bb00000  bneq r1, zero, 12
000d54  fabcd240  vextracti.s r25, 13(vr5)
000d58  5b010000  j 8
000d5c  fabcd440  vextracti.s r25, 13(vr9)
000d60  9bc0c200  srli r1, r5, 12
000d64  9b801000  andi r1, r1, 1
000d68  3bb00000  bneq r1, zero, 12
000d6c  7abcc240  vextracti.s r24, 12(vr5)
000d70  5b010000  j 8
000d74  7abcc440  vextracti.s r24, 12(vr9)
000d78  9bc0b200  srli r1, r5, 11
000d7c  9b801000  andi r1, r1, 1
000d80  3bb00000  bneq r1, zero, 12
000d84  7ab3b240  vextracti.s r6, 11(vr5)
000d88  5b010000  j 8
000d8c  7ab3b440  vextracti.s r6, 11(vr9)
000d90  9bc0a200  srli r1, r5, 10
000d94  9b801000  andi r1, r1, 1
000d98  3bb00000  bneq r1, zero, 12
000d9c  fab3a240  vextracti.s r7, 10(vr5)
000da0  5b010000  j 8
000da4  fab3a440  vextracti.s r7, 10(vr9)
000da8  9bc09200  srli r1, r5, 9
000dac  9b801000  andi r1, r1, 1
000db0  3bb00000  bneq r1, zero, 12
000db4  7ab49240  vextracti.s r8, 9(vr5)
000db8  5b010000  j 8
000dbc  7ab49440  vextracti.s r8, 9(vr9)
000dc0  9bc08200  srli r1, r5, 8
000dc4  9b801000  andi r1, r1, 1
000dc8  3bb00000  bneq r1, zero, 12
000dcc  fab08240  vextracti.s r1, 8(vr5)
000dd0  5b010000  j 8
000dd4  fab08440  vextracti.s r1, 8(vr9)
000dd8  1bc17200  srli r2, r5, 7
000ddc  1b011100  andi r2, r2, 1
000de0  3b300100  bneq r2, zero, 12
000de4  7ab17240  vextracti.s r2, 7(vr5)
000de8  5b010000  j 8
000dec  7ab17440  vextracti.s r2, 7(vr9)
000df0  9bc16200  srli r3, r5, 6
000df4  9b811100  andi r3, r3, 1
000df8  3bb00100  bneq r3, zero, 12
000dfc  7ab66240  vextracti.s r12, 6(vr5)
000e00  5b010000  j 8
000e04  7ab66440  vextracti.s r12, 6(vr9)
000e08  9bc15200  srli r3, r5, 5
000e0c  9b811100  andi r3, r3, 1
000e10  3bb00100  bneq r3, zero, 12
000e14  fab45240  vextracti.s r9, 5(vr5)
000e18  5b010000  j 8
000e1c  fab45440  vextracti.s r9, 5(vr9)
000e20  9bc14200  srli r3, r5, 4
000e24  9b811100  andi r3, r3, 1
000e28  3bb00100  bneq r3, zero, 12
000e2c  7ab54240  vextracti.s r10, 4(vr5)
000e30  5b010000  j 8
000e34  7ab54440  vextracti.s r10, 4(vr9)
000e38  9bc13200  srli r3, r5, 3
000e3c  9b811100  andi r3, r3, 1
000e40  3bb00100  bneq r3, zero, 12
000e44  7ab23240  vextracti.s r4, 3(vr5)
000e48  5b010000  j 8
000e4c  7ab23440  vextracti.s r4, 3(vr9)
000e50  9bc12200  srli r3, r5, 2
000e54  9b811100  andi r3, r3, 1
000e58  3bb00100  bneq r3, zero, 12
000e5c  fab12240  vextracti.s r3, 2(vr5)
000e60  5b010000  j 8
000e64  fab12440  vextracti.s r3, 2(vr9)
000e68  1bc81200  srli r16, r5, 1
000e6c  1b081800  andi r16, r16, 1
000e70  3b600800  bneq r16, zero, 24
000e74  7ab81240  vextracti.s r16, 1(vr5)
000e78  9b821200  andi r5, r5, 1
000e7c  37e00200  beq r5, zero, 24
000e80  fab20440  vextracti.s r5, 0(vr9)
000e84  db020000  j 20
000e88  7ab81440  vextracti.s r16, 1(vr9)
000e8c  9b821200  andi r5, r5, 1
000e90  bbcf02fe  bneq r5, zero, -16
000e94  fab20240  vextracti.s r5, 0(vr5)
000e98  92340002  vadd.s.mz vr9{mr1}, zero, vr0
000e9c  1f100000  addli zero, zero, 1
000ea0  8e128202  vmul.f.mz.rn vr5{mr1}, vr4, vr8
000ea4  7e0100e0  vmmov mr2, zero
000ea8  17200000  xor zero, zero, zero
000eac  eaa49234  vor.u.mh vr9{mr2}, r5, vr9
000eb0  9f220000  addli r5, zero, 2
000eb4  eeb055c2  vsrl.s.mz vr1{mr1}, vr11, vr5
000eb8  669202c0  vabs.f vr4, vr5
000ebc  7e8102e0  vmmov mr2, r5
000ec0  ea249834  vor.u.mh vr9{mr2}, r16, vr9
000ec4  ea301d02  vand.s.mz vr1{mr1}, r26, vr1
000ec8  eaa49136  vor.u.mh vr9{mr3}, r3, vr9
000ecc  9f011000  addli r3, zero, 8
000ed0  96b01202  vadd.s.mz vr1{mr1}, vr5, vr1
000ed4  ea325e22  vor.s.mz vr5{mr1}, r28, vr5
000ed8  7e8001e0  vmmov mr0, r3
000edc  9f012000  addli r3, zero, 16
000ee0  ea249230  vor.u.mh vr9{mr0}, r4, vr9
000ee4  7e8101e0  vmmov mr2, r3
000ee8  9f014000  addli r3, zero, 32
000eec  76204142  vlt.u.mz mr0{mr1}, vr2, vr4
000ef0  12b21d02  vadd.s.mz vr4{mr1}, r27, vr1
000ef4  fe0200a0  vmmov r5, mr0
000ef8  ea249534  vor.u.mh vr9{mr2}, r10, vr9
000efc  7e8101e0  vmmov mr2, r3
000f00  9f018000  addli r3, zero, 64
000f04  eaa49434  vor.u.mh vr9{mr2}, r9, vr9
000f08  7e8101e0  vmmov mr2, r3
000f0c  9f010001  addli r3, zero, 128
000f10  ea249634  vor.u.mh vr9{mr2}, r12, vr9
000f14  7e8101e0  vmmov mr2, r3
000f18  aba1aaaa  lui r3, 699050
000f1c  9fa15115  addli r3, r3, 2730
000f20  ea249134  vor.u.mh vr9{mr2}, r2, vr9
000f24  1f010002  addli r2, zero, 256
000f28  7e0101e0  vmmov mr2, r2
000f2c  2b810000  lui r2, 8
000f30  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
000f34  9f000004  addli r1, zero, 512
000f38  7e0001e0  vmmov mr0, r2
000f3c  1bc1f200  srli r2, r5, 15
000f40  7e8100e0  vmmov mr2, r1
000f44  9f000008  addli r1, zero, 1024
000f48  1b011100  andi r2, r2, 1
000f4c  ea249434  vor.u.mh vr9{mr2}, r8, vr9
000f50  7e8100e0  vmmov mr2, r1
000f54  9f000010  addli r1, zero, 2048
000f58  eaa49334  vor.u.mh vr9{mr2}, r7, vr9
000f5c  7e8100e0  vmmov mr2, r1
000f60  9f000020  addli r1, zero, 4096
000f64  ea249334  vor.u.mh vr9{mr2}, r6, vr9
000f68  7e8100e0  vmmov mr2, r1
000f6c  9f000040  addli r1, zero, 8192
000f70  ea249c34  vor.u.mh vr9{mr2}, r24, vr9
000f74  7e8100e0  vmmov mr2, r1
000f78  ab400000  lui r1, 4
000f7c  eaa49c34  vor.u.mh vr9{mr2}, r25, vr9
000f80  7e8100e0  vmmov mr2, r1
000f84  9f804a00  addli r1, r21, 32
000f88  eaa49b34  vor.u.mh vr9{mr2}, r23, vr9
000f8c  ea249b30  vor.u.mh vr9{mr0}, r22, vr9
000f90  7e8001e0  vmmov mr0, r3
000f94  62c39010  vscatter.mh vr9{mr0}, vr6{r1}
000f98  3b300100  bneq r2, zero, 12
000f9c  7a3bf240  vextracti.s r22, 15(vr4)
000fa0  5b010000  j 8
000fa4  7abbf240  vextracti.s r22, 15(vr5)
000fa8  9bc0e200  srli r1, r5, 14
000fac  9b801000  andi r1, r1, 1
000fb0  3bb00000  bneq r1, zero, 12
000fb4  fa3be240  vextracti.s r23, 14(vr4)
000fb8  5b010000  j 8
000fbc  fabbe240  vextracti.s r23, 14(vr5)
000fc0  9bc0d200  srli r1, r5, 13
000fc4  9b801000  andi r1, r1, 1
000fc8  3bb00000  bneq r1, zero, 12
000fcc  fa3cd240  vextracti.s r25, 13(vr4)
000fd0  5b010000  j 8
000fd4  fabcd240  vextracti.s r25, 13(vr5)
000fd8  9bc0c200  srli r1, r5, 12
000fdc  9b801000  andi r1, r1, 1
000fe0  3bb00000  bneq r1, zero, 12
000fe4  7a3cc240  vextracti.s r24, 12(vr4)
000fe8  5b010000  j 8
000fec  7abcc240  vextracti.s r24, 12(vr5)
000ff0  9bc0b200  srli r1, r5, 11
000ff4  9b801000  andi r1, r1, 1
000ff8  3bb00000  bneq r1, zero, 12
000ffc  7a33b240  vextracti.s r6, 11(vr4)
001000  5b010000  j 8
001004  7ab3b240  vextracti.s r6, 11(vr5)
001008  9bc0a200  srli r1, r5, 10
00100c  9b801000  andi r1, r1, 1
001010  3bb00000  bneq r1, zero, 12
001014  fa33a240  vextracti.s r7, 10(vr4)
001018  5b010000  j 8
00101c  fab3a240  vextracti.s r7, 10(vr5)
001020  9bc09200  srli r1, r5, 9
001024  9b801000  andi r1, r1, 1
001028  3bb00000  bneq r1, zero, 12
00102c  7a349240  vextracti.s r8, 9(vr4)
001030  5b010000  j 8
001034  7ab49240  vextracti.s r8, 9(vr5)
001038  9bc08200  srli r1, r5, 8
00103c  9b801000  andi r1, r1, 1
001040  3bb00000  bneq r1, zero, 12
001044  fa308240  vextracti.s r1, 8(vr4)
001048  5b010000  j 8
00104c  fab08240  vextracti.s r1, 8(vr5)
001050  1bc17200  srli r2, r5, 7
001054  1b011100  andi r2, r2, 1
001058  3b300100  bneq r2, zero, 12
00105c  7a317240  vextracti.s r2, 7(vr4)
001060  5b010000  j 8
001064  7ab17240  vextracti.s r2, 7(vr5)
001068  9bc16200  srli r3, r5, 6
00106c  9b811100  andi r3, r3, 1
001070  3bb00100  bneq r3, zero, 12
001074  7a366240  vextracti.s r12, 6(vr4)
001078  5b010000  j 8
00107c  7ab66240  vextracti.s r12, 6(vr5)
001080  9bc15200  srli r3, r5, 5
001084  9b811100  andi r3, r3, 1
001088  3bb00100  bneq r3, zero, 12
00108c  fa345240  vextracti.s r9, 5(vr4)
001090  5b010000  j 8
001094  fab45240  vextracti.s r9, 5(vr5)
001098  9bc14200  srli r3, r5, 4
00109c  9b811100  andi r3, r3, 1
0010a0  3bb00100  bneq r3, zero, 12
0010a4  7a354240  vextracti.s r10, 4(vr4)
0010a8  5b010000  j 8
0010ac  7ab54240  vextracti.s r10, 4(vr5)
0010b0  9bc13200  srli r3, r5, 3
0010b4  9b811100  andi r3, r3, 1
0010b8  3bb00100  bneq r3, zero, 12
0010bc  7a323240  vextracti.s r4, 3(vr4)
0010c0  5b010000  j 8
0010c4  7ab23240  vextracti.s r4, 3(vr5)
0010c8  9bc12200  srli r3, r5, 2
0010cc  9b811100  andi r3, r3, 1
0010d0  3bb00100  bneq r3, zero, 12
0010d4  fa312240  vextracti.s r3, 2(vr4)
0010d8  5b010000  j 8
0010dc  fab12240  vextracti.s r3, 2(vr5)
0010e0  1bc81200  srli r16, r5, 1
0010e4  1b081800  andi r16, r16, 1
0010e8  3b600800  bneq r16, zero, 24
0010ec  7a381240  vextracti.s r16, 1(vr4)
0010f0  9b821200  andi r5, r5, 1
0010f4  37e00200  beq r5, zero, 24
0010f8  fab20240  vextracti.s r5, 0(vr5)
0010fc  db020000  j 20
001100  7ab81240  vextracti.s r16, 1(vr5)
001104  9b821200  andi r5, r5, 1
001108  bbcf02fe  bneq r5, zero, -16
00110c  fa320240  vextracti.s r5, 0(vr4)
001110  92320002  vadd.s.mz vr5{mr1}, zero, vr0
001114  1f100000  addli zero, zero, 1
001118  0e927102  vmul.f.mz.rn vr4{mr1}, vr3, vr7
00111c  7e0100e0  vmmov mr2, zero
001120  17200000  xor zero, zero, zero
001124  eaa25234  vor.u.mh vr5{mr2}, r5, vr5
001128  9f220000  addli r5, zero, 2
00112c  eeb045c2  vsrl.s.mz vr1{mr1}, vr11, vr4
001130  e61102c0  vabs.f vr3, vr4
001134  7e8102e0  vmmov mr2, r5
001138  ea225834  vor.u.mh vr5{mr2}, r16, vr5
00113c  ea301d02  vand.s.mz vr1{mr1}, r26, vr1
001140  eaa25136  vor.u.mh vr5{mr3}, r3, vr5
001144  9f011000  addli r3, zero, 8
001148  96301202  vadd.s.mz vr1{mr1}, vr4, vr1
00114c  6a324e22  vor.s.mz vr4{mr1}, r28, vr4
001150  7e8001e0  vmmov mr0, r3
001154  9f012000  addli r3, zero, 16
001158  ea225230  vor.u.mh vr5{mr0}, r4, vr5
00115c  7e8101e0  vmmov mr2, r3
001160  9f014000  addli r3, zero, 32
001164  76203142  vlt.u.mz mr0{mr1}, vr2, vr3
001168  92b11d02  vadd.s.mz vr3{mr1}, r27, vr1
00116c  fe0200a0  vmmov r5, mr0
001170  ea225534  vor.u.mh vr5{mr2}, r10, vr5
001174  7e8101e0  vmmov mr2, r3
001178  9f018000  addli r3, zero, 64
00117c  eaa25434  vor.u.mh vr5{mr2}, r9, vr5
001180  7e8101e0  vmmov mr2, r3
001184  9f010001  addli r3, zero, 128
001188  ea225634  vor.u.mh vr5{mr2}, r12, vr5
00118c  7e8101e0  vmmov mr2, r3
001190  aba1aaaa  lui r3, 699050
001194  9fa15115  addli r3, r3, 2730
001198  ea225134  vor.u.mh vr5{mr2}, r2, vr5
00119c  1f010002  addli r2, zero, 256
0011a0  7e0101e0  vmmov mr2, r2
0011a4  2b810000  lui r2, 8
0011a8  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
0011ac  9f000004  addli r1, zero, 512
0011b0  7e0001e0  vmmov mr0, r2
0011b4  1bc1f200  srli r2, r5, 15
0011b8  7e8100e0  vmmov mr2, r1
0011bc  9f000008  addli r1, zero, 1024
0011c0  1b011100  andi r2, r2, 1
0011c4  ea225434  vor.u.mh vr5{mr2}, r8, vr5
0011c8  7e8100e0  vmmov mr2, r1
0011cc  9f000010  addli r1, zero, 2048
0011d0  eaa25334  vor.u.mh vr5{mr2}, r7, vr5
0011d4  7e8100e0  vmmov mr2, r1
0011d8  9f000020  addli r1, zero, 4096
0011dc  ea225334  vor.u.mh vr5{mr2}, r6, vr5
0011e0  7e8100e0  vmmov mr2, r1
0011e4  9f000040  addli r1, zero, 8192
0011e8  ea225c34  vor.u.mh vr5{mr2}, r24, vr5
0011ec  7e8100e0  vmmov mr2, r1
0011f0  ab400000  lui r1, 4
0011f4  eaa25c34  vor.u.mh vr5{mr2}, r25, vr5
0011f8  7e8100e0  vmmov mr2, r1
0011fc  9f808a00  addli r1, r21, 64
001200  eaa25b34  vor.u.mh vr5{mr2}, r23, vr5
001204  ea225b30  vor.u.mh vr5{mr0}, r22, vr5
001208  7e8001e0  vmmov mr0, r3
00120c  62c35010  vscatter.mh vr5{mr0}, vr6{r1}
001210  3b300100  bneq r2, zero, 12
001214  7abbf140  vextracti.s r22, 15(vr3)
001218  5b010000  j 8
00121c  7a3bf240  vextracti.s r22, 15(vr4)
001220  9bc0e200  srli r1, r5, 14
001224  9b801000  andi r1, r1, 1
001228  3bb00000  bneq r1, zero, 12
00122c  fabbe140  vextracti.s r23, 14(vr3)
001230  5b010000  j 8
001234  fa3be240  vextracti.s r23, 14(vr4)
001238  9bc0d200  srli r1, r5, 13
00123c  9b801000  andi r1, r1, 1
001240  3bb00000  bneq r1, zero, 12
001244  fabcd140  vextracti.s r25, 13(vr3)
001248  5b010000  j 8
00124c  fa3cd240  vextracti.s r25, 13(vr4)
001250  9bc0c200  srli r1, r5, 12
001254  9b801000  andi r1, r1, 1
001258  3bb00000  bneq r1, zero, 12
00125c  7abcc140  vextracti.s r24, 12(vr3)
001260  5b010000  j 8
001264  7a3cc240  vextracti.s r24, 12(vr4)
001268  9bc0b200  srli r1, r5, 11
00126c  9b801000  andi r1, r1, 1
001270  3bb00000  bneq r1, zero, 12
001274  7ab3b140  vextracti.s r6, 11(vr3)
001278  5b010000  j 8
00127c  7a33b240  vextracti.s r6, 11(vr4)
001280  9bc0a200  srli r1, r5, 10
001284  9b801000  andi r1, r1, 1
001288  3bb00000  bneq r1, zero, 12
00128c  fab3a140  vextracti.s r7, 10(vr3)
001290  5b010000  j 8
001294  fa33a240  vextracti.s r7, 10(vr4)
001298  9bc09200  srli r1, r5, 9
00129c  9b801000  andi r1, r1, 1
0012a0  3bb00000  bneq r1, zero, 12
0012a4  7ab49140  vextracti.s r8, 9(vr3)
0012a8  5b010000  j 8
0012ac  7a349240  vextracti.s r8, 9(vr4)
0012b0  9bc08200  srli r1, r5, 8
0012b4  9b801000  andi r1, r1, 1
0012b8  3bb00000  bneq r1, zero, 12
0012bc  fab08140  vextracti.s r1, 8(vr3)
0012c0  5b010000  j 8
0012c4  fa308240  vextracti.s r1, 8(vr4)
0012c8  1bc17200  srli r2, r5, 7
0012cc  1b011100  andi r2, r2, 1
0012d0  3b300100  bneq r2, zero, 12
0012d4  7ab17140  vextracti.s r2, 7(vr3)
0012d8  5b010000  j 8
0012dc  7a317240  vextracti.s r2, 7(vr4)
0012e0  9bc16200  srli r3, r5, 6
0012e4  9b811100  andi r3, r3, 1
0012e8  3bb00100  bneq r3, zero, 12
0012ec  7ab66140  vextracti.s r12, 6(vr3)
0012f0  5b010000  j 8
0012f4  7a366240  vextracti.s r12, 6(vr4)
0012f8  9bc15200  srli r3, r5, 5
0012fc  9b811100  andi r3, r3, 1
001300  3bb00100  bneq r3, zero, 12
001304  fab45140  vextracti.s r9, 5(vr3)
001308  5b010000  j 8
00130c  fa345240  vextracti.s r9, 5(vr4)
001310  9bc14200  srli r3, r5, 4
001314  9b811100  andi r3, r3, 1
001318  3bb00100  bneq r3, zero, 12
00131c  7ab54140  vextracti.s r10, 4(vr3)
001320  5b010000  j 8
001324  7a354240  vextracti.s r10, 4(vr4)
001328  9bc13200  srli r3, r5, 3
00132c  9b811100  andi r3, r3, 1
001330  3bb00100  bneq r3, zero, 12
001334  7ab23140  vextracti.s r4, 3(vr3)
001338  5b010000  j 8
00133c  7a323240  vextracti.s r4, 3(vr4)
001340  9bc12200  srli r3, r5, 2
001344  9b811100  andi r3, r3, 1
001348  3bb00100  bneq r3, zero, 12
00134c  fab12140  vextracti.s r3, 2(vr3)
001350  5b010000  j 8
001354  fa312240  vextracti.s r3, 2(vr4)
001358  1bc81200  srli r16, r5, 1
00135c  1b081800  andi r16, r16, 1
001360  3b500800  bneq r16, zero, 20
001364  7ab81140  vextracti.s r16, 1(vr3)
001368  9b821200  andi r5, r5, 1
00136c  37aa02f6  beq r5, zero, -4472
001370  5b020000  j 16
001374  7a381240  vextracti.s r16, 1(vr4)
001378  9b821200  andi r5, r5, 1
00137c  b7e902f6  beq r5, zero, -4488
001380  fa320240  vextracti.s r5, 0(vr4)
001384  dbcefdff  j -4492
001388  9f0e0ff9  addli sp, r30, -896
00138c  9f8e0e07  addli sp, sp, 896
001390  00a00300  mfence { lm, sm, gm }
001394  00100000  exit
001398  00100000  exit
00139c  00100000  exit
0013a0  00100000  exit
0013a4  00100000  exit
0013a8  00100000  exit
0013ac  00100000  exit
0013b0  00100000  exit
0013b4  00100000  exit
0013b8  00100000  exit
0013bc  00100000  exit
0013c0  00100000  exit
0013c4  00100000  exit
0013c8  00100000  exit
0013cc  00100000  exit
0013d0  00100000  exit
0013d4  00100000  exit
0013d8  00100000  exit
0013dc  00100000  exit
0013e0  00100000  exit
0013e4  00100000  exit
0013e8  00100000  exit
0013ec  00100000  exit
0013f0  00100000  exit
0013f4  00100000  exit
0013f8  00100000  exit
0013fc  00100000  exit
001400  00100000  exit
001404  00100000  exit
001408  00100000  exit
00140c  00100000  exit
001410  00100000  exit
001414  00100000  exit
001418  00100000  exit
00141c  00100000  exit
001420  00100000  exit
001424  00100000  exit
001428  00100000  exit
00142c  00100000  exit
001430  00100000  exit
001434  00100000  exit
001438  00100000  exit
00143c  00100000  exit
001440  00100000  exit
001444  00100000  exit
001448  00100000  exit
00144c  00100000  exit
001450  00100000  exit
001454  00100000  exit
001458  00100000  exit
00145c  00100000  exit
001460  00100000  exit
001464  00100000  exit
001468  00100000  exit
00146c  00100000  exit
001470  00100000  exit
001474  00100000  exit
001478  00100000  exit
00147c  00100000  exit
001480  00100000  exit
001484  00100000  exit
001488  00100000  exit
00148c  00100000  exit
001490  00100000  exit
001494  00100000  exit
001498  00100000  exit
00149c  00100000  exit
0014a0  00100000  exit
0014a4  00100000  exit
0014a8  00100000  exit
0014ac  00100000  exit
0014b0  00100000  exit
0014b4  00100000  exit
0014b8  00100000  exit
0014bc  00100000  exit
0014c0  00100000  exit
0014c4  00100000  exit
0014c8  00100000  exit
0014cc  00100000  exit
0014d0  00100000  exit
0014d4  00100000  exit
0014d8  00100000  exit
0014dc  00100000  exit
0014e0  00100000  exit
0014e4  00100000  exit
0014e8  00100000  exit
0014ec  00100000  exit
0014f0  00100000  exit
0014f4  00100000  exit
0014f8  00100000  exit
0014fc  00100000  exit
001500  00100000  exit
001504  00100000  exit
001508  00100000  exit
00150c  00100000  exit
001510  00100000  exit
001514  00100000  exit
001518  00100000  exit
00151c  00100000  exit
001520  00100000  exit
001524  00100000  exit
001528  00100000  exit
00152c  00100000  exit
001530  00100000  exit
001534  00100000  exit
001538  00100000  exit
00153c  00100000  exit
001540  00100000  exit
001544  00100000  exit
001548  00100000  exit
00154c  00100000  exit
001550  00100000  exit
001554  00100000  exit
001558  00100000  exit
00155c  00100000  exit
001560  00100000  exit
001564  00100000  exit
001568  00100000  exit
00156c  00100000  exit
001570  00100000  exit
001574  00100000  exit
001578  00100000  exit
00157c  00100000  exit
001580  00100000  exit
001584  00100000  exit
001588  00100000  exit
00158c  00100000  exit
001590  00100000  exit
001594  00100000  exit
001598  00100000  exit
00159c  00100000  exit
0015a0  00100000  exit
0015a4  00100000  exit
0015a8  00100000  exit
0015ac  00100000  exit
0015b0  00100000  exit
0015b4  00100000  exit
0015b8  00100000  exit
0015bc  00100000  exit
0015c0  00100000  exit
0015c4  00100000  exit
0015c8  00100000  exit
0015cc  00100000  exit
0015d0  00100000  exit
0015d4  00100000  exit
