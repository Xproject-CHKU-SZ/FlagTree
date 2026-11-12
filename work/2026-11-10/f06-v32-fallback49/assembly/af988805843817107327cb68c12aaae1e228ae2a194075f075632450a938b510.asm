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
000078  9f094000  addli r19, zero, 32
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
0000e4  63013f00  loadli.w r2,  24(r30)
0000e8  e3402f00  loadli.w r1,  20(r30)
0000ec  e3413f00  loadli.w r3,  28(r30)
0000f0  8b101120  mul.s r1, r2, r1
0000f4  00510002  load_param_i r2, 0
0000f8  8b903020  mul.s r1, r1, r3
0000fc  e74d1ff8  storeli.w r1, -804(r30)
000100  4bc62002  ble.s r1, r2, 1424
000104  80300002  core_id r1
000108  ab424c3f  lui r5, 259268
00010c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000110  80d10002  load_param_i r3, 1
000114  1f020ffa  addli r4, r30, -768
000118  1f060001  addli r12, zero, 128
00011c  1f070ffb  addli r14, r30, -640
000120  ab07003f  lui r15, 258048
000124  2b090040  lui r18, 262144
000128  9f068ffd  addli r13, r30, -320
00012c  ab0a803f  lui r21, 260096
000130  ab0b00c0  lui r23, 786432
000134  1f0e0ffe  addli r28, r30, -256
000138  6e312162  vxor.s.mz vr2{mr1}, vr2, vr2
00013c  9bb06000  slli r1, r1, 6
000140  9b98a222  ori r17, r5, 554
000144  ab028041  lui r5, 268288
000148  e70d3ff8  storeli.w r3, -808(r30)
00014c  674d1ff8  storeli.w r1, -812(r30)
000150  ab20373d  lui r1, 250738
000154  1b983071  ori r16, r1, 1811
000158  ab0080c1  lui r1, 792576
00015c  6a901022  vor.f.mz vr0{mr1}, r1, vr1
000160  abf00000  lui r1, 15
000164  ea901222  vor.f.mz vr1{mr1}, r5, vr1
000168  9ff0f01f  addli r1, r1, 4095
00016c  7e8000e0  vmmov mr0, r1
000170  e3403f00  loadli.w r1,  28(r30)
000174  e74e2ff8  storeli.w r2, -788(r30)
000178  9f120000  addli r5, zero, 1
00017c  ab0500f0  lui r11, 983040
000180  8b101130  div.s r1, r2, r1
000184  63013f00  loadli.w r2,  24(r30)
000188  8b902030  div.s r1, r1, r2
00018c  6341aff9  loadli.w r2,  -812(r30)
000190  9bb0c000  slli r1, r1, 12
000194  8b902010  add.s r1, r1, r2
000198  1f010008  addli r2, zero, 1024
00019c  0b932038  mod.s r6, r1, r2
0001a0  b3930028  sext_int2long r[8:9], r1
0001a4  6b510f00  load.d r[3:4], 0(r30)
0001a8  ab0000f0  lui r1, 983040
0001ac  97101600  or r1, r12, r1
0001b0  b3140328  sext_int2long r[10:11], r6
0001b4  17b35302  sll.d r[7:8], r[8:9], r5
0001b8  0b236110  add.ul r[7:8], r[3:4], r[7:8]
0001bc  6b518f00  load.d r[3:4], 8(r30)
0001c0  17b45402  sll.d r[9:10], r[10:11], r5
0001c4  1715b600  or r10, r12, r11
0001c8  ff204300  l_gm2lm r1, r4, 0(r[7:8])
0001cc  73306fce  store.d r[7:8], -800(r30)
0001d0  9f000000  addli r1, zero, 0
0001d4  0b248110  add.ul r[9:10], r[3:4], r[9:10]
0001d8  7f25e400  l_gm2lm r10, r14, 0(r[9:10])
0001dc  00a00000  mfence { lm }
0001e0  9bb06000  slli r1, r1, 6
0001e4  8b141210  add.s r9, r4, r1
0001e8  0b141710  add.s r8, r14, r1
0001ec  c2910402  vload_mask16.mz vr3{mr1}, 0(r9)
0001f0  42120402  vload_mask16.mz vr4{mr1}, 0(r8)
0001f4  86b20100  vfp162float_l.rn vr5, vr3
0001f8  06f30100  vfp162float_h.rn vr6, vr3
0001fc  86730200  vfp162float_h.rn vr7, vr4
000200  86310200  vfp162float_l.rn vr3, vr4
000204  16127302  vadd.f.mz.rn vr4{mr1}, vr6, vr7
000208  96913202  vadd.f.mz.rn vr3{mr1}, vr5, vr3
00020c  86920100  vfloat2fp16_l.rn vr5, vr3
000210  86520200  vfloat2fp16_h.rn vr5, vr4
000214  06f20200  vfp162float_h.rn vr4, vr5
000218  0e134202  vmul.f.mz.rn vr6{mr1}, vr4, vr4
00021c  86b10200  vfp162float_l.rn vr3, vr5
000220  8e923102  vmul.f.mz.rn vr5{mr1}, vr3, vr3
000224  0e136202  vmul.f.mz.rn vr6{mr1}, vr4, vr6
000228  8e925102  vmul.f.mz.rn vr5{mr1}, vr3, vr5
00022c  0a136802  vmul.f.mz.rn vr6{mr1}, r16, vr6
000230  96136202  vadd.f.mz.rn vr7{mr1}, vr4, vr6
000234  0a924702  vmul.f.mz.rn vr4{mr1}, r15, vr4
000238  8a125802  vmul.f.mz.rn vr5{mr1}, r16, vr5
00023c  96925102  vadd.f.mz.rn vr5{mr1}, vr3, vr5
000240  0a935802  vmul.f.mz.rn vr6{mr1}, r17, vr5
000244  76110342  vlt.f.mz mr2{mr1}, vr6, vr0
000248  8a913702  vmul.f.mz.rn vr3{mr1}, r15, vr3
00024c  fe0001a0  vmmov r1, mr2
000250  8a927802  vmul.f.mz.rn vr5{mr1}, r17, vr7
000254  76910242  vlt.f.mz mr2{mr1}, vr5, vr0
000258  731e1fce  store.h r1, -772(r30)
00025c  fe0401a0  vmmov r9, mr2
000260  76916042  vlt.f.mz mr2{mr1}, vr1, vr6
000264  e340fff9  loadli.w r1,  -772(r30)
000268  7e0501a0  vmmov r10, mr2
00026c  731a9fce  store.h r9, -780(r30)
000270  e345eff9  loadli.w r11,  -780(r30)
000274  731cafce  store.h r10, -776(r30)
000278  e304fff9  loadli.w r9,  -776(r30)
00027c  7e8100e0  vmmov mr2, r1
000280  7e010100  vmand mr2, mr2, mr0
000284  6e130134  vor.f.mh vr6{mr2}, vr2, vr0
000288  7e8104e0  vmmov mr2, r9
00028c  7e010100  vmand mr2, mr2, mr0
000290  6e131134  vor.f.mh vr6{mr2}, vr2, vr1
000294  76915042  vlt.f.mz mr2{mr1}, vr1, vr5
000298  fe0001a0  vmmov r1, mr2
00029c  7e8105e0  vmmov mr2, r11
0002a0  73181fce  store.h r1, -784(r30)
0002a4  7e010100  vmand mr2, mr2, mr0
0002a8  e300eff9  loadli.w r1,  -784(r30)
0002ac  ee120134  vor.f.mh vr5{mr2}, vr2, vr0
0002b0  0a136902  vmul.f.mz.rn vr6{mr1}, r18, vr6
0002b4  7e8100e0  vmmov mr2, r1
0002b8  7e010100  vmand mr2, mr2, mr0
0002bc  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
0002c0  ee121134  vor.f.mh vr5{mr2}, vr2, vr1
0002c4  00a00000  mfence { lm }
0002c8  e3048ffd  loadli.w r9,  -320(r30)
0002cc  63019ffd  loadli.w r2,  -312(r30)
0002d0  63458ffd  loadli.w r10,  -316(r30)
0002d4  63429ffd  loadli.w r4,  -308(r30)
0002d8  6343affd  loadli.w r6,  -300(r30)
0002dc  e303bffd  loadli.w r7,  -296(r30)
0002e0  e341bffd  loadli.w r3,  -292(r30)
0002e4  e306affd  loadli.w r13,  -304(r30)
0002e8  6306cffd  loadli.w r12,  -288(r30)
0002ec  e349cffd  loadli.w r19,  -284(r30)
0002f0  630adffd  loadli.w r20,  -280(r30)
0002f4  634bdffd  loadli.w r22,  -276(r30)
0002f8  630ceffd  loadli.w r24,  -272(r30)
0002fc  e34ceffd  loadli.w r25,  -268(r30)
000300  630dfffd  loadli.w r26,  -264(r30)
000304  e34dfffd  loadli.w r27,  -260(r30)
000308  8f840400  exp.f.rn r9, r9
00030c  0f010100  exp.f.rn r2, r2
000310  0f050500  exp.f.rn r10, r10
000314  0f020200  exp.f.rn r4, r4
000318  0f030300  exp.f.rn r6, r6
00031c  8f830300  exp.f.rn r7, r7
000320  8f810100  exp.f.rn r3, r3
000324  67089ffc  storeli.w r9, -384(r30)
000328  8f840600  exp.f.rn r9, r13
00032c  e7082ffc  storeli.w r2, -376(r30)
000330  0f010600  exp.f.rn r2, r12
000334  6748affc  storeli.w r10, -380(r30)
000338  e7484ffc  storeli.w r4, -372(r30)
00033c  67496ffc  storeli.w r6, -364(r30)
000340  e7097ffc  storeli.w r7, -360(r30)
000344  e7493ffc  storeli.w r3, -356(r30)
000348  8f810900  exp.f.rn r3, r19
00034c  0f020a00  exp.f.rn r4, r20
000350  0f030b00  exp.f.rn r6, r22
000354  8f830c00  exp.f.rn r7, r25
000358  0f850d00  exp.f.rn r10, r27
00035c  1f060ffd  addli r12, r30, -384
000360  9f068ffc  addli r13, r30, -448
000364  67099ffc  storeli.w r9, -368(r30)
000368  8f040d00  exp.f.rn r9, r26
00036c  670a2ffc  storeli.w r2, -352(r30)
000370  0f010c00  exp.f.rn r2, r24
000374  674a3ffc  storeli.w r3, -348(r30)
000378  e70a4ffc  storeli.w r4, -344(r30)
00037c  e74a6ffc  storeli.w r6, -340(r30)
000380  674b7ffc  storeli.w r7, -332(r30)
000384  e74baffc  storeli.w r10, -324(r30)
000388  1f0d0ffc  addli r26, r30, -512
00038c  670b2ffc  storeli.w r2, -336(r30)
000390  e70b9ffc  storeli.w r9, -328(r30)
000394  00a00000  mfence { lm }
000398  42130602  vload_mask16.mz vr6{mr1}, 0(r12)
00039c  12936a02  vadd.f.mz.rn vr6{mr1}, r21, vr6
0003a0  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
0003a4  0a135902  vmul.f.mz.rn vr6{mr1}, r18, vr5
0003a8  00a00000  mfence { lm }
0003ac  e3008ffc  loadli.w r1,  -448(r30)
0003b0  63418ffc  loadli.w r2,  -444(r30)
0003b4  6303affc  loadli.w r6,  -432(r30)
0003b8  e343affc  loadli.w r7,  -428(r30)
0003bc  e305cffc  loadli.w r11,  -416(r30)
0003c0  e3019ffc  loadli.w r3,  -440(r30)
0003c4  63429ffc  loadli.w r4,  -436(r30)
0003c8  e304bffc  loadli.w r9,  -424(r30)
0003cc  6345bffc  loadli.w r10,  -420(r30)
0003d0  6346cffc  loadli.w r12,  -412(r30)
0003d4  630aeffc  loadli.w r20,  -400(r30)
0003d8  e306dffc  loadli.w r13,  -408(r30)
0003dc  e349dffc  loadli.w r19,  -404(r30)
0003e0  634beffc  loadli.w r22,  -396(r30)
0003e4  630cfffc  loadli.w r24,  -392(r30)
0003e8  e34cfffc  loadli.w r25,  -388(r30)
0003ec  8f801b18  div.f.rn r1, r23, r1
0003f0  0f812b18  div.f.rn r2, r23, r2
0003f4  8f813b18  div.f.rn r3, r23, r3
0003f8  0f824b18  div.f.rn r4, r23, r4
0003fc  67001ffc  storeli.w r1, -512(r30)
000400  8f806b18  div.f.rn r1, r23, r6
000404  67402ffc  storeli.w r2, -508(r30)
000408  0f817b18  div.f.rn r2, r23, r7
00040c  0f839b18  div.f.rn r6, r23, r9
000410  8f83ab18  div.f.rn r7, r23, r10
000414  e7003ffc  storeli.w r3, -504(r30)
000418  e7404ffc  storeli.w r4, -500(r30)
00041c  8f81db18  div.f.rn r3, r23, r13
000420  0f823b19  div.f.rn r4, r23, r19
000424  67011ffc  storeli.w r1, -496(r30)
000428  8f80bb18  div.f.rn r1, r23, r11
00042c  67412ffc  storeli.w r2, -492(r30)
000430  0f81cb18  div.f.rn r2, r23, r12
000434  e7016ffc  storeli.w r6, -488(r30)
000438  e7417ffc  storeli.w r7, -484(r30)
00043c  0f836b19  div.f.rn r6, r23, r22
000440  8f838b19  div.f.rn r7, r23, r24
000444  e7023ffc  storeli.w r3, -472(r30)
000448  e7424ffc  storeli.w r4, -468(r30)
00044c  67021ffc  storeli.w r1, -480(r30)
000450  8f804b19  div.f.rn r1, r23, r20
000454  67422ffc  storeli.w r2, -476(r30)
000458  0f819b19  div.f.rn r2, r23, r25
00045c  67436ffc  storeli.w r6, -460(r30)
000460  e7037ffc  storeli.w r7, -456(r30)
000464  67031ffc  storeli.w r1, -464(r30)
000468  9f008fff  addli r1, r30, -64
00046c  e7432ffc  storeli.w r2, -452(r30)
000470  00a00000  mfence { lm }
000474  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
000478  c2120d02  vload_mask16.mz vr5{mr1}, 0(r26)
00047c  1f0d0fff  addli r26, r30, -128
000480  00a00000  mfence { lm }
000484  e3008fff  loadli.w r1,  -64(r30)
000488  63418fff  loadli.w r2,  -60(r30)
00048c  6303afff  loadli.w r6,  -48(r30)
000490  e3019fff  loadli.w r3,  -56(r30)
000494  63429fff  loadli.w r4,  -52(r30)
000498  e343afff  loadli.w r7,  -44(r30)
00049c  e304bfff  loadli.w r9,  -40(r30)
0004a0  6345bfff  loadli.w r10,  -36(r30)
0004a4  e305cfff  loadli.w r11,  -32(r30)
0004a8  6346cfff  loadli.w r12,  -28(r30)
0004ac  e306dfff  loadli.w r13,  -24(r30)
0004b0  e349dfff  loadli.w r19,  -20(r30)
0004b4  630aefff  loadli.w r20,  -16(r30)
0004b8  634befff  loadli.w r22,  -12(r30)
0004bc  630cffff  loadli.w r24,  -8(r30)
0004c0  e34cffff  loadli.w r25,  -4(r30)
0004c4  8f800000  exp.f.rn r1, r1
0004c8  0f010100  exp.f.rn r2, r2
0004cc  8f810100  exp.f.rn r3, r3
0004d0  0f020200  exp.f.rn r4, r4
0004d4  92925a02  vadd.f.mz.rn vr5{mr1}, r21, vr5
0004d8  67081ffe  storeli.w r1, -128(r30)
0004dc  8f000300  exp.f.rn r1, r6
0004e0  0f830400  exp.f.rn r6, r9
0004e4  67482ffe  storeli.w r2, -124(r30)
0004e8  0f810300  exp.f.rn r2, r7
0004ec  8f030500  exp.f.rn r7, r10
0004f0  e7083ffe  storeli.w r3, -120(r30)
0004f4  e7484ffe  storeli.w r4, -116(r30)
0004f8  8f810600  exp.f.rn r3, r13
0004fc  0f820900  exp.f.rn r4, r19
000500  8f840c00  exp.f.rn r9, r25
000504  67091ffe  storeli.w r1, -112(r30)
000508  8f800500  exp.f.rn r1, r11
00050c  67492ffe  storeli.w r2, -108(r30)
000510  e7096ffe  storeli.w r6, -104(r30)
000514  e7497ffe  storeli.w r7, -100(r30)
000518  0f010600  exp.f.rn r2, r12
00051c  0f030b00  exp.f.rn r6, r22
000520  8f030c00  exp.f.rn r7, r24
000524  e70a3ffe  storeli.w r3, -88(r30)
000528  e74a4ffe  storeli.w r4, -84(r30)
00052c  e74b9ffe  storeli.w r9, -68(r30)
000530  670a1ffe  storeli.w r1, -96(r30)
000534  8f000a00  exp.f.rn r1, r20
000538  674a2ffe  storeli.w r2, -92(r30)
00053c  674b6ffe  storeli.w r6, -76(r30)
000540  e70b7ffe  storeli.w r7, -72(r30)
000544  670b1ffe  storeli.w r1, -80(r30)
000548  9f008ffe  addli r1, r30, -192
00054c  00a00000  mfence { lm }
000550  42130d02  vload_mask16.mz vr6{mr1}, 0(r26)
000554  12936a02  vadd.f.mz.rn vr6{mr1}, r21, vr6
000558  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
00055c  00a00000  mfence { lm }
000560  e3008ffe  loadli.w r1,  -192(r30)
000564  63418ffe  loadli.w r2,  -188(r30)
000568  e3019ffe  loadli.w r3,  -184(r30)
00056c  63429ffe  loadli.w r4,  -180(r30)
000570  6303affe  loadli.w r6,  -176(r30)
000574  e343affe  loadli.w r7,  -172(r30)
000578  e304bffe  loadli.w r9,  -168(r30)
00057c  6345bffe  loadli.w r10,  -164(r30)
000580  e305cffe  loadli.w r11,  -160(r30)
000584  6346cffe  loadli.w r12,  -156(r30)
000588  e306dffe  loadli.w r13,  -152(r30)
00058c  e349dffe  loadli.w r19,  -148(r30)
000590  630aeffe  loadli.w r20,  -144(r30)
000594  634beffe  loadli.w r22,  -140(r30)
000598  630cfffe  loadli.w r24,  -136(r30)
00059c  e34cfffe  loadli.w r25,  -132(r30)
0005a0  8f801b18  div.f.rn r1, r23, r1
0005a4  0f812b18  div.f.rn r2, r23, r2
0005a8  67001ffe  storeli.w r1, -256(r30)
0005ac  8f803b18  div.f.rn r1, r23, r3
0005b0  8f816b18  div.f.rn r3, r23, r6
0005b4  0f839b18  div.f.rn r6, r23, r9
0005b8  67402ffe  storeli.w r2, -252(r30)
0005bc  0f814b18  div.f.rn r2, r23, r4
0005c0  0f827b18  div.f.rn r4, r23, r7
0005c4  8f83ab18  div.f.rn r7, r23, r10
0005c8  8f84bb18  div.f.rn r9, r23, r11
0005cc  e7001ffe  storeli.w r1, -248(r30)
0005d0  e7402ffe  storeli.w r2, -244(r30)
0005d4  0f81db18  div.f.rn r2, r23, r13
0005d8  67013ffe  storeli.w r3, -240(r30)
0005dc  67414ffe  storeli.w r4, -236(r30)
0005e0  e7016ffe  storeli.w r6, -232(r30)
0005e4  e7417ffe  storeli.w r7, -228(r30)
0005e8  67029ffe  storeli.w r9, -224(r30)
0005ec  8f80cb18  div.f.rn r1, r23, r12
0005f0  8f813b19  div.f.rn r3, r23, r19
0005f4  0f824b19  div.f.rn r4, r23, r20
0005f8  0f836b19  div.f.rn r6, r23, r22
0005fc  8f838b19  div.f.rn r7, r23, r24
000600  8f849b19  div.f.rn r9, r23, r25
000604  9f068ffd  addli r13, r30, -320
000608  67421ffe  storeli.w r1, -220(r30)
00060c  e7022ffe  storeli.w r2, -216(r30)
000610  67034ffe  storeli.w r4, -208(r30)
000614  e7423ffe  storeli.w r3, -212(r30)
000618  67436ffe  storeli.w r6, -204(r30)
00061c  e7037ffe  storeli.w r7, -200(r30)
000620  e7439ffe  storeli.w r9, -196(r30)
000624  1b811200  andi r2, r5, 1
000628  1f020ffa  addli r4, r30, -768
00062c  9f100000  addli r1, zero, 1
000630  9f020000  addli r5, zero, 0
000634  00a00000  mfence { lm }
000638  92925a02  vadd.f.mz.rn vr5{mr1}, r21, vr5
00063c  8e915102  vmul.f.mz.rn vr3{mr1}, vr3, vr5
000640  42130e02  vload_mask16.mz vr6{mr1}, 0(r28)
000644  12936a02  vadd.f.mz.rn vr6{mr1}, r21, vr6
000648  12936a02  vadd.f.mz.rn vr6{mr1}, r21, vr6
00064c  0e126202  vmul.f.mz.rn vr4{mr1}, vr4, vr6
000650  86920100  vfloat2fp16_l.rn vr5, vr3
000654  86520200  vfloat2fp16_h.rn vr5, vr4
000658  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
00065c  00a00000  mfence { lm }
000660  3b0e01fc  bneq r2, zero, -1152
000664  ab0000f0  lui r1, 983040
000668  1f060001  addli r12, zero, 128
00066c  6b510fce  load.d r[3:4], -800(r30)
000670  97101600  or r1, r12, r1
000674  ff30e100  s_lm2gm r1, r14, 0(r[3:4])
000678  6341dff9  loadli.w r2,  -788(r30)
00067c  e300bff9  loadli.w r1,  -808(r30)
000680  00a00000  mfence { lm }
000684  0b111110  add.s r2, r2, r1
000688  e340bff9  loadli.w r1,  -804(r30)
00068c  bf1b11fc  blt.s r2, r1, -1308
000690  9f0e8ff9  addli sp, r30, -832
000694  9f8e8e06  addli sp, sp, 832
000698  00a00300  mfence { lm, sm, gm }
00069c  00100000  exit
0006a0  00100000  exit
0006a4  00100000  exit
0006a8  00100000  exit
0006ac  00100000  exit
0006b0  00100000  exit
0006b4  00100000  exit
0006b8  00100000  exit
0006bc  00100000  exit
0006c0  00100000  exit
0006c4  00100000  exit
0006c8  00100000  exit
0006cc  00100000  exit
0006d0  00100000  exit
0006d4  00100000  exit
0006d8  00100000  exit
0006dc  00100000  exit
0006e0  00100000  exit
0006e4  00100000  exit
0006e8  00100000  exit
0006ec  00100000  exit
0006f0  00100000  exit
0006f4  00100000  exit
0006f8  00100000  exit
0006fc  00100000  exit
000700  00100000  exit
000704  00100000  exit
000708  00100000  exit
00070c  00100000  exit
000710  00100000  exit
000714  00100000  exit
000718  00100000  exit
00071c  00100000  exit
000720  00100000  exit
000724  00100000  exit
000728  00100000  exit
00072c  00100000  exit
000730  00100000  exit
000734  00100000  exit
000738  00100000  exit
00073c  00100000  exit
000740  00100000  exit
000744  00100000  exit
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
