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
0000dc  9f8e0ef3  addli sp, sp, -1664
0000e0  1f8f8e0c  addli r30, sp, 1600
0000e4  e3403f00  loadli.w r1,  28(r30)
0000e8  e3013f00  loadli.w r3,  24(r30)
0000ec  63014f00  loadli.w r2,  32(r30)
0000f0  0b923020  mul.s r4, r1, r3
0000f4  80510002  load_param_i r3, 0
0000f8  8b102220  mul.s r1, r4, r2
0000fc  e74e1ff2  storeli.w r1, -1556(r30)
000100  cbdc3002  ble.s r1, r3, 1844
000104  80d00002  load_param_i r1, 1
000108  80320002  core_id r5
00010c  2b434c3f  lui r6, 259268
000110  9f060ff4  addli r13, r30, -1536
000114  9f050004  addli r11, zero, 512
000118  2b0a0040  lui r20, 262144
00011c  1f068ffc  addli r12, r30, -448
000120  2b0b803f  lui r22, 260096
000124  e70e1ff2  storeli.w r1, -1560(r30)
000128  9bb07200  slli r1, r5, 7
00012c  ab22373d  lui r5, 250738
000130  9b19a322  ori r19, r6, 554
000134  1b993271  ori r18, r5, 1811
000138  674e1ff2  storeli.w r1, -1564(r30)
00013c  e3004f00  loadli.w r1,  32(r30)
000140  e74f3ff2  storeli.w r3, -1540(r30)
000144  2b0500f0  lui r10, 983040
000148  1f0d0ffc  addli r26, r30, -512
00014c  9f0d8ffd  addli r27, r30, -320
000150  1f0e0ffd  addli r28, r30, -384
000154  1f070ffe  addli r14, r30, -256
000158  9f088fff  addli r17, r30, -64
00015c  1795a500  or r10, r11, r10
000160  0b931130  div.s r6, r3, r1
000164  e3403f00  loadli.w r1,  28(r30)
000168  9f210000  addli r3, zero, 2
00016c  0b131330  div.s r6, r6, r1
000170  e340cff3  loadli.w r1,  -1564(r30)
000174  1b33d300  slli r6, r6, 13
000178  0b131310  add.s r6, r6, r1
00017c  9f000008  addli r1, zero, 1024
000180  8b131338  mod.s r7, r6, r1
000184  33140328  sext_int2long r[9:10], r6
000188  2b0300f0  lui r6, 983040
00018c  17986500  or r16, r11, r6
000190  97323402  sll.d r[6:7], r[9:10], r3
000194  73385f9e  store.d r[6:7], -1552(r30)
000198  b3900328  sext_int2long r[2:3], r7
00019c  97b03002  sll.d r[2:3], r[2:3], r3
0001a0  eb510f00  load.d r[4:5], 0(r30)
0001a4  0ba45110  add.ul r[9:10], r[4:5], r[6:7]
0001a8  eb518f00  load.d r[4:5], 8(r30)
0001ac  9f028ffe  addli r5, r30, -192
0001b0  7f28d400  l_gm2lm r16, r13, 0(r[9:10])
0001b4  1f140000  addli r8, zero, 1
0001b8  9f040000  addli r9, zero, 0
0001bc  8ba01110  add.ul r[2:3], r[4:5], r[2:3]
0001c0  9f010ff8  addli r3, r30, -1024
0001c4  7fa53000  l_gm2lm r10, r3, 0(r[2:3])
0001c8  00a00000  mfence { lm }
0001cc  9bb06400  slli r1, r9, 6
0001d0  9f010ff8  addli r3, r30, -1024
0001d4  0b911610  add.s r2, r13, r1
0001d8  8b941110  add.s r9, r3, r1
0001dc  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
0001e0  c2108102  vload_mask16.mz vr1{mr1}, 64(r2)
0001e4  42910402  vload_mask16.mz vr2{mr1}, 0(r9)
0001e8  c2110103  vload_mask16.mz vr3{mr1}, 128(r2)
0001ec  42128103  vload_mask16.mz vr4{mr1}, 192(r2)
0001f0  c2928402  vload_mask16.mz vr5{mr1}, 64(r9)
0001f4  42930403  vload_mask16.mz vr6{mr1}, 128(r9)
0001f8  c2938403  vload_mask16.mz vr7{mr1}, 192(r9)
0001fc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000200  96905002  vadd.f.mz.rn vr1{mr1}, vr1, vr5
000204  16916102  vadd.f.mz.rn vr2{mr1}, vr3, vr6
000208  96117202  vadd.f.mz.rn vr3{mr1}, vr4, vr7
00020c  0a120902  vmul.f.mz.rn vr4{mr1}, r18, vr0
000210  8a121902  vmul.f.mz.rn vr5{mr1}, r18, vr1
000214  0a132902  vmul.f.mz.rn vr6{mr1}, r18, vr2
000218  8a133902  vmul.f.mz.rn vr7{mr1}, r18, vr3
00021c  0e124002  vmul.f.mz.rn vr4{mr1}, vr0, vr4
000220  12340002  vadd.s.mz vr8{mr1}, zero, vr0
000224  8e925002  vmul.f.mz.rn vr5{mr1}, vr1, vr5
000228  0e136102  vmul.f.mz.rn vr6{mr1}, vr2, vr6
00022c  8e937102  vmul.f.mz.rn vr7{mr1}, vr3, vr7
000230  26148202  vmac.f.mz.rn vr8{mr1}, vr4, vr8
000234  12321002  vadd.s.mz vr4{mr1}, zero, vr1
000238  26924202  vmac.f.mz.rn vr4{mr1}, vr5, vr4
00023c  92322002  vadd.s.mz vr5{mr1}, zero, vr2
000240  a6125302  vmac.f.mz.rn vr5{mr1}, vr6, vr5
000244  12333002  vadd.s.mz vr6{mr1}, zero, vr3
000248  0a924902  vmul.f.mz.rn vr4{mr1}, r19, vr4
00024c  26936302  vmac.f.mz.rn vr6{mr1}, vr7, vr6
000250  8a938902  vmul.f.mz.rn vr7{mr1}, r19, vr8
000254  8a925902  vmul.f.mz.rn vr5{mr1}, r19, vr5
000258  0a124a02  vmul.f.mz.rn vr4{mr1}, r20, vr4
00025c  0a936902  vmul.f.mz.rn vr6{mr1}, r19, vr6
000260  8a137a02  vmul.f.mz.rn vr7{mr1}, r20, vr7
000264  9a147002  vsub.f.mz.rn vr9{mr1}, zero, vr7
000268  46109602  vstore_mask16.mz vr9{mr1}, 0(r12)
00026c  8a125a02  vmul.f.mz.rn vr5{mr1}, r20, vr5
000270  0a146a02  vmul.f.mz.rn vr8{mr1}, r20, vr6
000274  9a134002  vsub.f.mz.rn vr7{mr1}, zero, vr4
000278  1a135002  vsub.f.mz.rn vr6{mr1}, zero, vr5
00027c  1a128002  vsub.f.mz.rn vr4{mr1}, zero, vr8
000280  00a00000  mfence { lm }
000284  e3008ffc  loadli.w r1,  -448(r30)
000288  63418ffc  loadli.w r2,  -444(r30)
00028c  63059ffc  loadli.w r10,  -440(r30)
000290  63489ffc  loadli.w r16,  -436(r30)
000294  e345affc  loadli.w r11,  -428(r30)
000298  6342bffc  loadli.w r4,  -420(r30)
00029c  6306bffc  loadli.w r12,  -424(r30)
0002a0  e307cffc  loadli.w r15,  -416(r30)
0002a4  6343cffc  loadli.w r6,  -412(r30)
0002a8  e341dffc  loadli.w r3,  -404(r30)
0002ac  e303dffc  loadli.w r7,  -408(r30)
0002b0  e30aeffc  loadli.w r21,  -400(r30)
0002b4  e34beffc  loadli.w r23,  -396(r30)
0002b8  630cfffc  loadli.w r24,  -392(r30)
0002bc  e34cfffc  loadli.w r25,  -388(r30)
0002c0  8f800000  exp.f.rn r1, r1
0002c4  0f010100  exp.f.rn r2, r2
0002c8  8f060500  exp.f.rn r13, r10
0002cc  0f050800  exp.f.rn r10, r16
0002d0  6308affc  loadli.w r16,  -432(r30)
0002d4  8f850500  exp.f.rn r11, r11
0002d8  0f020200  exp.f.rn r4, r4
0002dc  8f810100  exp.f.rn r3, r3
0002e0  8be06011  add.f.rn r1, r1, r22
0002e4  0b616111  add.f.rn r2, r2, r22
0002e8  8be56511  add.f.rn r11, r11, r22
0002ec  0b626211  add.f.rn r4, r4, r22
0002f0  8be16111  add.f.rn r3, r3, r22
0002f4  8f001b18  div.f.rn r1, r22, r1
0002f8  0f012b18  div.f.rn r2, r22, r2
0002fc  0f024b18  div.f.rn r4, r22, r4
000300  8f013b18  div.f.rn r3, r22, r3
000304  67001ffc  storeli.w r1, -512(r30)
000308  8be06611  add.f.rn r1, r13, r22
00030c  8f060800  exp.f.rn r13, r16
000310  67402ffc  storeli.w r2, -508(r30)
000314  0b616511  add.f.rn r2, r10, r22
000318  0f050600  exp.f.rn r10, r12
00031c  e7414ffc  storeli.w r4, -484(r30)
000320  0f820a00  exp.f.rn r4, r21
000324  e7423ffc  storeli.w r3, -468(r30)
000328  8f001b18  div.f.rn r1, r22, r1
00032c  0f012b18  div.f.rn r2, r22, r2
000330  0be66611  add.f.rn r12, r13, r22
000334  8f860700  exp.f.rn r13, r15
000338  0b656511  add.f.rn r10, r10, r22
00033c  0b626211  add.f.rn r4, r4, r22
000340  e7001ffc  storeli.w r1, -504(r30)
000344  8f00bb18  div.f.rn r1, r22, r11
000348  0f05ab18  div.f.rn r10, r22, r10
00034c  e7402ffc  storeli.w r2, -500(r30)
000350  0f010300  exp.f.rn r2, r6
000354  0f06cb18  div.f.rn r12, r22, r12
000358  0f024b18  div.f.rn r4, r22, r4
00035c  8be56611  add.f.rn r11, r13, r22
000360  0f03bb18  div.f.rn r6, r22, r11
000364  67411ffc  storeli.w r1, -492(r30)
000368  8f800300  exp.f.rn r1, r7
00036c  8f030c00  exp.f.rn r7, r24
000370  e701affc  storeli.w r10, -488(r30)
000374  0f850c00  exp.f.rn r10, r25
000378  0b616111  add.f.rn r2, r2, r22
00037c  6701cffc  storeli.w r12, -496(r30)
000380  67034ffc  storeli.w r4, -464(r30)
000384  0f012b18  div.f.rn r2, r22, r2
000388  67026ffc  storeli.w r6, -480(r30)
00038c  0f830b00  exp.f.rn r6, r23
000390  8be06011  add.f.rn r1, r1, r22
000394  8be36311  add.f.rn r7, r7, r22
000398  0b656511  add.f.rn r10, r10, r22
00039c  8f001b18  div.f.rn r1, r22, r1
0003a0  8f037b18  div.f.rn r7, r22, r7
0003a4  0f05ab18  div.f.rn r10, r22, r10
0003a8  67422ffc  storeli.w r2, -476(r30)
0003ac  0b636311  add.f.rn r6, r6, r22
0003b0  0f036b18  div.f.rn r6, r22, r6
0003b4  e7021ffc  storeli.w r1, -472(r30)
0003b8  e7037ffc  storeli.w r7, -456(r30)
0003bc  e743affc  storeli.w r10, -452(r30)
0003c0  67436ffc  storeli.w r6, -460(r30)
0003c4  00a00000  mfence { lm }
0003c8  46907d02  vstore_mask16.mz vr7{mr1}, 0(r27)
0003cc  c2120d02  vload_mask16.mz vr5{mr1}, 0(r26)
0003d0  00a00000  mfence { lm }
0003d4  e3008ffd  loadli.w r1,  -320(r30)
0003d8  63418ffd  loadli.w r2,  -316(r30)
0003dc  e3019ffd  loadli.w r3,  -312(r30)
0003e0  63429ffd  loadli.w r4,  -308(r30)
0003e4  6343affd  loadli.w r6,  -300(r30)
0003e8  e303bffd  loadli.w r7,  -296(r30)
0003ec  e345bffd  loadli.w r11,  -292(r30)
0003f0  6306cffd  loadli.w r12,  -288(r30)
0003f4  e346cffd  loadli.w r13,  -284(r30)
0003f8  e307dffd  loadli.w r15,  -280(r30)
0003fc  6348dffd  loadli.w r16,  -276(r30)
000400  e30aeffd  loadli.w r21,  -272(r30)
000404  e34beffd  loadli.w r23,  -268(r30)
000408  630cfffd  loadli.w r24,  -264(r30)
00040c  e34cfffd  loadli.w r25,  -260(r30)
000410  8f800000  exp.f.rn r1, r1
000414  0f010100  exp.f.rn r2, r2
000418  8f810100  exp.f.rn r3, r3
00041c  0f050200  exp.f.rn r10, r4
000420  6302affd  loadli.w r4,  -304(r30)
000424  0e105002  vmul.f.mz.rn vr0{mr1}, vr0, vr5
000428  8be06011  add.f.rn r1, r1, r22
00042c  0b616111  add.f.rn r2, r2, r22
000430  8f001b18  div.f.rn r1, r22, r1
000434  0f012b18  div.f.rn r2, r22, r2
000438  67081ffc  storeli.w r1, -384(r30)
00043c  8be06111  add.f.rn r1, r3, r22
000440  8f010200  exp.f.rn r3, r4
000444  0f020300  exp.f.rn r4, r6
000448  0f830300  exp.f.rn r6, r7
00044c  8f830500  exp.f.rn r7, r11
000450  67482ffc  storeli.w r2, -380(r30)
000454  0b616511  add.f.rn r2, r10, r22
000458  0f050600  exp.f.rn r10, r12
00045c  8f001b18  div.f.rn r1, r22, r1
000460  0f012b18  div.f.rn r2, r22, r2
000464  8be16111  add.f.rn r3, r3, r22
000468  0b626211  add.f.rn r4, r4, r22
00046c  0b636311  add.f.rn r6, r6, r22
000470  8be36311  add.f.rn r7, r7, r22
000474  8f013b18  div.f.rn r3, r22, r3
000478  e7081ffc  storeli.w r1, -376(r30)
00047c  8f004b18  div.f.rn r1, r22, r4
000480  0b626511  add.f.rn r4, r10, r22
000484  0f036b18  div.f.rn r6, r22, r6
000488  8f037b18  div.f.rn r7, r22, r7
00048c  0f850c00  exp.f.rn r10, r25
000490  e7482ffc  storeli.w r2, -372(r30)
000494  0f810600  exp.f.rn r2, r13
000498  67093ffc  storeli.w r3, -368(r30)
00049c  8f014b18  div.f.rn r3, r22, r4
0004a0  0f020800  exp.f.rn r4, r16
0004a4  67491ffc  storeli.w r1, -364(r30)
0004a8  8f800700  exp.f.rn r1, r15
0004ac  e7096ffc  storeli.w r6, -360(r30)
0004b0  0f830b00  exp.f.rn r6, r23
0004b4  e7497ffc  storeli.w r7, -356(r30)
0004b8  8f030c00  exp.f.rn r7, r24
0004bc  0b616111  add.f.rn r2, r2, r22
0004c0  0b656511  add.f.rn r10, r10, r22
0004c4  0f012b18  div.f.rn r2, r22, r2
0004c8  0f05ab18  div.f.rn r10, r22, r10
0004cc  670a3ffc  storeli.w r3, -352(r30)
0004d0  8f810a00  exp.f.rn r3, r21
0004d4  8be06011  add.f.rn r1, r1, r22
0004d8  0b626211  add.f.rn r4, r4, r22
0004dc  0b636311  add.f.rn r6, r6, r22
0004e0  8be36311  add.f.rn r7, r7, r22
0004e4  8f001b18  div.f.rn r1, r22, r1
0004e8  0f024b18  div.f.rn r4, r22, r4
0004ec  0f036b18  div.f.rn r6, r22, r6
0004f0  8f037b18  div.f.rn r7, r22, r7
0004f4  674a2ffc  storeli.w r2, -348(r30)
0004f8  e74baffc  storeli.w r10, -324(r30)
0004fc  8be16111  add.f.rn r3, r3, r22
000500  8f013b18  div.f.rn r3, r22, r3
000504  e70a1ffc  storeli.w r1, -344(r30)
000508  e74a4ffc  storeli.w r4, -340(r30)
00050c  674b6ffc  storeli.w r6, -332(r30)
000510  e70b7ffc  storeli.w r7, -328(r30)
000514  670b3ffc  storeli.w r3, -336(r30)
000518  00a00000  mfence { lm }
00051c  46906202  vstore_mask16.mz vr6{mr1}, 0(r5)
000520  c2130e02  vload_mask16.mz vr7{mr1}, 0(r28)
000524  00a00000  mfence { lm }
000528  e3008ffe  loadli.w r1,  -192(r30)
00052c  63418ffe  loadli.w r2,  -188(r30)
000530  e3019ffe  loadli.w r3,  -184(r30)
000534  63429ffe  loadli.w r4,  -180(r30)
000538  6343affe  loadli.w r6,  -172(r30)
00053c  e303bffe  loadli.w r7,  -168(r30)
000540  e345bffe  loadli.w r11,  -164(r30)
000544  6306cffe  loadli.w r12,  -160(r30)
000548  e346cffe  loadli.w r13,  -156(r30)
00054c  e307dffe  loadli.w r15,  -152(r30)
000550  6348dffe  loadli.w r16,  -148(r30)
000554  e30aeffe  loadli.w r21,  -144(r30)
000558  e34beffe  loadli.w r23,  -140(r30)
00055c  630cfffe  loadli.w r24,  -136(r30)
000560  e34cfffe  loadli.w r25,  -132(r30)
000564  8f800000  exp.f.rn r1, r1
000568  0f010100  exp.f.rn r2, r2
00056c  8f810100  exp.f.rn r3, r3
000570  0f050200  exp.f.rn r10, r4
000574  6302affe  loadli.w r4,  -176(r30)
000578  8e907002  vmul.f.mz.rn vr1{mr1}, vr1, vr7
00057c  8be06011  add.f.rn r1, r1, r22
000580  0b616111  add.f.rn r2, r2, r22
000584  8f001b18  div.f.rn r1, r22, r1
000588  0f012b18  div.f.rn r2, r22, r2
00058c  67001ffe  storeli.w r1, -256(r30)
000590  8be06111  add.f.rn r1, r3, r22
000594  8f010200  exp.f.rn r3, r4
000598  0f020300  exp.f.rn r4, r6
00059c  0f830300  exp.f.rn r6, r7
0005a0  8f830500  exp.f.rn r7, r11
0005a4  67402ffe  storeli.w r2, -252(r30)
0005a8  0b616511  add.f.rn r2, r10, r22
0005ac  0f050600  exp.f.rn r10, r12
0005b0  8f001b18  div.f.rn r1, r22, r1
0005b4  0f012b18  div.f.rn r2, r22, r2
0005b8  8be16111  add.f.rn r3, r3, r22
0005bc  0b626211  add.f.rn r4, r4, r22
0005c0  0b636311  add.f.rn r6, r6, r22
0005c4  8be36311  add.f.rn r7, r7, r22
0005c8  8f013b18  div.f.rn r3, r22, r3
0005cc  e7001ffe  storeli.w r1, -248(r30)
0005d0  8f004b18  div.f.rn r1, r22, r4
0005d4  0b626511  add.f.rn r4, r10, r22
0005d8  0f036b18  div.f.rn r6, r22, r6
0005dc  8f037b18  div.f.rn r7, r22, r7
0005e0  0f850c00  exp.f.rn r10, r25
0005e4  e7402ffe  storeli.w r2, -244(r30)
0005e8  0f810600  exp.f.rn r2, r13
0005ec  67013ffe  storeli.w r3, -240(r30)
0005f0  8f014b18  div.f.rn r3, r22, r4
0005f4  0f020800  exp.f.rn r4, r16
0005f8  67411ffe  storeli.w r1, -236(r30)
0005fc  8f800700  exp.f.rn r1, r15
000600  e7016ffe  storeli.w r6, -232(r30)
000604  0f830b00  exp.f.rn r6, r23
000608  e7417ffe  storeli.w r7, -228(r30)
00060c  8f030c00  exp.f.rn r7, r24
000610  0b616111  add.f.rn r2, r2, r22
000614  0b656511  add.f.rn r10, r10, r22
000618  0f012b18  div.f.rn r2, r22, r2
00061c  0f05ab18  div.f.rn r10, r22, r10
000620  67023ffe  storeli.w r3, -224(r30)
000624  8f810a00  exp.f.rn r3, r21
000628  8be06011  add.f.rn r1, r1, r22
00062c  0b626211  add.f.rn r4, r4, r22
000630  0b636311  add.f.rn r6, r6, r22
000634  8be36311  add.f.rn r7, r7, r22
000638  8f001b18  div.f.rn r1, r22, r1
00063c  0f024b18  div.f.rn r4, r22, r4
000640  0f036b18  div.f.rn r6, r22, r6
000644  8f037b18  div.f.rn r7, r22, r7
000648  67422ffe  storeli.w r2, -220(r30)
00064c  e743affe  storeli.w r10, -196(r30)
000650  8be16111  add.f.rn r3, r3, r22
000654  8f013b18  div.f.rn r3, r22, r3
000658  e7021ffe  storeli.w r1, -216(r30)
00065c  e7424ffe  storeli.w r4, -212(r30)
000660  67436ffe  storeli.w r6, -204(r30)
000664  e7037ffe  storeli.w r7, -200(r30)
000668  67033ffe  storeli.w r3, -208(r30)
00066c  00a00000  mfence { lm }
000670  46904802  vstore_mask16.mz vr4{mr1}, 0(r17)
000674  42130702  vload_mask16.mz vr6{mr1}, 0(r14)
000678  00a00000  mfence { lm }
00067c  e3008fff  loadli.w r1,  -64(r30)
000680  63418fff  loadli.w r2,  -60(r30)
000684  e3019fff  loadli.w r3,  -56(r30)
000688  63429fff  loadli.w r4,  -52(r30)
00068c  6303bfff  loadli.w r6,  -40(r30)
000690  e343bfff  loadli.w r7,  -36(r30)
000694  e305cfff  loadli.w r11,  -32(r30)
000698  6346cfff  loadli.w r12,  -28(r30)
00069c  e306dfff  loadli.w r13,  -24(r30)
0006a0  e347dfff  loadli.w r15,  -20(r30)
0006a4  e30aefff  loadli.w r21,  -16(r30)
0006a8  e34befff  loadli.w r23,  -12(r30)
0006ac  630cffff  loadli.w r24,  -8(r30)
0006b0  e34cffff  loadli.w r25,  -4(r30)
0006b4  8f800000  exp.f.rn r1, r1
0006b8  0f010100  exp.f.rn r2, r2
0006bc  0f850100  exp.f.rn r10, r3
0006c0  e301afff  loadli.w r3,  -48(r30)
0006c4  0f080200  exp.f.rn r16, r4
0006c8  6342afff  loadli.w r4,  -44(r30)
0006cc  0f030300  exp.f.rn r6, r6
0006d0  8f830300  exp.f.rn r7, r7
0006d4  0e116102  vmul.f.mz.rn vr2{mr1}, vr2, vr6
0006d8  8f810100  exp.f.rn r3, r3
0006dc  0f020200  exp.f.rn r4, r4
0006e0  8be06011  add.f.rn r1, r1, r22
0006e4  0b616111  add.f.rn r2, r2, r22
0006e8  0b636311  add.f.rn r6, r6, r22
0006ec  8be36311  add.f.rn r7, r7, r22
0006f0  8be16111  add.f.rn r3, r3, r22
0006f4  0b626211  add.f.rn r4, r4, r22
0006f8  8f001b18  div.f.rn r1, r22, r1
0006fc  0f012b18  div.f.rn r2, r22, r2
000700  67081ffe  storeli.w r1, -128(r30)
000704  8b606511  add.f.rn r1, r10, r22
000708  0f850500  exp.f.rn r10, r11
00070c  67482ffe  storeli.w r2, -124(r30)
000710  0b616811  add.f.rn r2, r16, r22
000714  9f050fff  addli r11, r30, -128
000718  8f001b18  div.f.rn r1, r22, r1
00071c  0f012b18  div.f.rn r2, r22, r2
000720  0b656511  add.f.rn r10, r10, r22
000724  e7081ffe  storeli.w r1, -120(r30)
000728  8f003b18  div.f.rn r1, r22, r3
00072c  8f014b18  div.f.rn r3, r22, r4
000730  0f026b18  div.f.rn r4, r22, r6
000734  0f037b18  div.f.rn r6, r22, r7
000738  8f03ab18  div.f.rn r7, r22, r10
00073c  0f850c00  exp.f.rn r10, r25
000740  e7482ffe  storeli.w r2, -116(r30)
000744  0f010600  exp.f.rn r2, r12
000748  1f068ffc  addli r12, r30, -448
00074c  67091ffe  storeli.w r1, -112(r30)
000750  8f800600  exp.f.rn r1, r13
000754  67493ffe  storeli.w r3, -108(r30)
000758  8f810700  exp.f.rn r3, r15
00075c  e7094ffe  storeli.w r4, -104(r30)
000760  0f820a00  exp.f.rn r4, r21
000764  e7496ffe  storeli.w r6, -100(r30)
000768  0f830b00  exp.f.rn r6, r23
00076c  670a7ffe  storeli.w r7, -96(r30)
000770  8f030c00  exp.f.rn r7, r24
000774  0b616111  add.f.rn r2, r2, r22
000778  0b656511  add.f.rn r10, r10, r22
00077c  9f060ff4  addli r13, r30, -1536
000780  0f012b18  div.f.rn r2, r22, r2
000784  0f05ab18  div.f.rn r10, r22, r10
000788  8be06011  add.f.rn r1, r1, r22
00078c  8be16111  add.f.rn r3, r3, r22
000790  0b626211  add.f.rn r4, r4, r22
000794  0b636311  add.f.rn r6, r6, r22
000798  8be36311  add.f.rn r7, r7, r22
00079c  8f001b18  div.f.rn r1, r22, r1
0007a0  8f013b18  div.f.rn r3, r22, r3
0007a4  0f024b18  div.f.rn r4, r22, r4
0007a8  0f036b18  div.f.rn r6, r22, r6
0007ac  8f037b18  div.f.rn r7, r22, r7
0007b0  674a2ffe  storeli.w r2, -92(r30)
0007b4  e74baffe  storeli.w r10, -68(r30)
0007b8  e70a1ffe  storeli.w r1, -88(r30)
0007bc  e74a3ffe  storeli.w r3, -84(r30)
0007c0  670b4ffe  storeli.w r4, -80(r30)
0007c4  674b6ffe  storeli.w r6, -76(r30)
0007c8  e70b7ffe  storeli.w r7, -72(r30)
0007cc  9b001400  andi r1, r8, 1
0007d0  1f040000  addli r8, zero, 0
0007d4  00a00000  mfence { lm }
0007d8  46900402  vstore_mask16.mz vr0{mr1}, 0(r9)
0007dc  42920502  vload_mask16.mz vr4{mr1}, 0(r11)
0007e0  46941402  vstore_mask16.mz vr1{mr1}, 64(r9)
0007e4  46982402  vstore_mask16.mz vr2{mr1}, 128(r9)
0007e8  8e914102  vmul.f.mz.rn vr3{mr1}, vr3, vr4
0007ec  469c3402  vstore_mask16.mz vr3{mr1}, 192(r9)
0007f0  9f440000  addli r9, zero, 4
0007f4  00a00000  mfence { lm }
0007f8  3bd700fc  bneq r1, zero, -1580
0007fc  6b510f01  load.d r[3:4], 16(r30)
000800  6b520f9f  load.d r[5:6], -1552(r30)
000804  ab0000f0  lui r1, 983040
000808  9f050004  addli r11, zero, 512
00080c  97901500  or r1, r11, r1
000810  0b214110  add.ul r[3:4], r[3:4], r[5:6]
000814  1f020ff8  addli r4, r30, -1024
000818  ff304100  s_lm2gm r1, r4, 0(r[3:4])
00081c  e341fff3  loadli.w r3,  -1540(r30)
000820  e300dff3  loadli.w r1,  -1560(r30)
000824  00a00000  mfence { lm }
000828  8b911110  add.s r3, r3, r1
00082c  e340dff3  loadli.w r1,  -1556(r30)
000830  3fb411fc  blt.s r3, r1, -1780
000834  9f0e8ff3  addli sp, r30, -1600
000838  9f8e8e0c  addli sp, sp, 1600
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
