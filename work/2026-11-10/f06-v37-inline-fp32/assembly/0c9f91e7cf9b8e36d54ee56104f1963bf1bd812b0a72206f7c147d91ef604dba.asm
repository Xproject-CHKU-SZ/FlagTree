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
0000dc  9f8e0ef5  addli sp, sp, -1408
0000e0  1f8f8e0a  addli r30, sp, 1344
0000e4  e3402f00  loadli.w r1,  20(r30)
0000e8  e3012f00  loadli.w r3,  16(r30)
0000ec  63013f00  loadli.w r2,  24(r30)
0000f0  0b923020  mul.s r4, r1, r3
0000f4  80510002  load_param_i r3, 0
0000f8  8b102220  mul.s r1, r4, r2
0000fc  e74e1ff4  storeli.w r1, -1300(r30)
000100  cbfb3002  ble.s r1, r3, 1788
000104  80d00002  load_param_i r1, 1
000108  80320002  core_id r5
00010c  2b434c3f  lui r6, 259268
000110  9f040ff6  addli r9, r30, -1280
000114  2b080040  lui r16, 262144
000118  2b09803f  lui r18, 260096
00011c  e70e1ff4  storeli.w r1, -1304(r30)
000120  9bb07200  slli r1, r5, 7
000124  ab22373d  lui r5, 250738
000128  9b17a322  ori r15, r6, 554
00012c  1f038ffc  addli r6, r30, -448
000130  1b973271  ori r14, r5, 1811
000134  674e1ff4  storeli.w r1, -1308(r30)
000138  e3003f00  loadli.w r1,  24(r30)
00013c  e74f3ff4  storeli.w r3, -1284(r30)
000140  ab0500f0  lui r11, 983040
000144  1f0b0ffc  addli r22, r30, -512
000148  9f0b8ffd  addli r23, r30, -320
00014c  1f0c0ffd  addli r24, r30, -384
000150  9f0c8ffe  addli r25, r30, -192
000154  1f060ffe  addli r12, r30, -256
000158  1f0d8fff  addli r26, r30, -64
00015c  8b921130  div.s r5, r3, r1
000160  e3402f00  loadli.w r1,  20(r30)
000164  8b921230  div.s r5, r5, r1
000168  e340cff5  loadli.w r1,  -1308(r30)
00016c  9bb2d200  slli r5, r5, 13
000170  8b921210  add.s r5, r5, r1
000174  9f200000  addli r1, zero, 2
000178  33910228  sext_int2long r[3:4], r5
00017c  73382fae  store.d r[3:4], -1296(r30)
000180  97331102  sll.d r[8:9], r[3:4], r1
000184  eb500f00  load.d r[2:3], 0(r30)
000188  8ba37010  add.ul r[8:9], r[2:3], r[8:9]
00018c  9f000004  addli r1, zero, 512
000190  9795b000  or r11, r1, r11
000194  ffa59300  l_gm2lm r11, r9, 0(r[8:9])
000198  9f130000  addli r7, zero, 1
00019c  1f040000  addli r8, zero, 0
0001a0  00a00000  mfence { lm }
0001a4  9b358400  slli r11, r8, 8
0001a8  8b95b410  add.s r11, r9, r11
0001ac  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
0001b0  c2908502  vload_mask16.mz vr1{mr1}, 64(r11)
0001b4  42910503  vload_mask16.mz vr2{mr1}, 128(r11)
0001b8  c2918503  vload_mask16.mz vr3{mr1}, 192(r11)
0001bc  0a121702  vmul.f.mz.rn vr4{mr1}, r14, vr1
0001c0  0a140702  vmul.f.mz.rn vr8{mr1}, r14, vr0
0001c4  8a122702  vmul.f.mz.rn vr5{mr1}, r14, vr2
0001c8  0a133702  vmul.f.mz.rn vr6{mr1}, r14, vr3
0001cc  92331002  vadd.s.mz vr7{mr1}, zero, vr1
0001d0  0e924002  vmul.f.mz.rn vr4{mr1}, vr1, vr4
0001d4  0e148002  vmul.f.mz.rn vr8{mr1}, vr0, vr8
0001d8  8e125102  vmul.f.mz.rn vr5{mr1}, vr2, vr5
0001dc  0e936102  vmul.f.mz.rn vr6{mr1}, vr3, vr6
0001e0  a6137202  vmac.f.mz.rn vr7{mr1}, vr4, vr7
0001e4  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0001e8  26124402  vmac.f.mz.rn vr4{mr1}, vr8, vr4
0001ec  12342002  vadd.s.mz vr8{mr1}, zero, vr2
0001f0  26948202  vmac.f.mz.rn vr8{mr1}, vr5, vr8
0001f4  92323002  vadd.s.mz vr5{mr1}, zero, vr3
0001f8  0a924702  vmul.f.mz.rn vr4{mr1}, r15, vr4
0001fc  a6125302  vmac.f.mz.rn vr5{mr1}, vr6, vr5
000200  0a937702  vmul.f.mz.rn vr6{mr1}, r15, vr7
000204  8a938702  vmul.f.mz.rn vr7{mr1}, r15, vr8
000208  0a124802  vmul.f.mz.rn vr4{mr1}, r16, vr4
00020c  9a144002  vsub.f.mz.rn vr9{mr1}, zero, vr4
000210  46109302  vstore_mask16.mz vr9{mr1}, 0(r6)
000214  0a147802  vmul.f.mz.rn vr8{mr1}, r16, vr7
000218  8a925702  vmul.f.mz.rn vr5{mr1}, r15, vr5
00021c  0a136802  vmul.f.mz.rn vr6{mr1}, r16, vr6
000220  9a136002  vsub.f.mz.rn vr7{mr1}, zero, vr6
000224  8a125802  vmul.f.mz.rn vr5{mr1}, r16, vr5
000228  1a138002  vsub.f.mz.rn vr6{mr1}, zero, vr8
00022c  1a125002  vsub.f.mz.rn vr4{mr1}, zero, vr5
000230  00a00000  mfence { lm }
000234  e300affc  loadli.w r1,  -432(r30)
000238  6341affc  loadli.w r2,  -428(r30)
00023c  e304bffc  loadli.w r9,  -424(r30)
000240  6302cffc  loadli.w r4,  -416(r30)
000244  e3058ffc  loadli.w r11,  -448(r30)
000248  e3468ffc  loadli.w r13,  -444(r30)
00024c  e30d9ffc  loadli.w r27,  -440(r30)
000250  6345bffc  loadli.w r10,  -420(r30)
000254  e341dffc  loadli.w r3,  -404(r30)
000258  e342cffc  loadli.w r5,  -412(r30)
00025c  6303dffc  loadli.w r6,  -408(r30)
000260  e308effc  loadli.w r17,  -400(r30)
000264  e349effc  loadli.w r19,  -396(r30)
000268  630afffc  loadli.w r20,  -392(r30)
00026c  e34afffc  loadli.w r21,  -388(r30)
000270  8f800000  exp.f.rn r1, r1
000274  0f010100  exp.f.rn r2, r2
000278  8f840400  exp.f.rn r9, r9
00027c  0f020200  exp.f.rn r4, r4
000280  8f850500  exp.f.rn r11, r11
000284  8f860600  exp.f.rn r13, r13
000288  8f8d0d00  exp.f.rn r27, r27
00028c  0f050500  exp.f.rn r10, r10
000290  8f810100  exp.f.rn r3, r3
000294  8be02011  add.f.rn r1, r1, r18
000298  0b612111  add.f.rn r2, r2, r18
00029c  8be42411  add.f.rn r9, r9, r18
0002a0  0b622211  add.f.rn r4, r4, r18
0002a4  0bee2511  add.f.rn r28, r11, r18
0002a8  e3459ffc  loadli.w r11,  -436(r30)
0002ac  8be62611  add.f.rn r13, r13, r18
0002b0  0b652511  add.f.rn r10, r10, r18
0002b4  8be12111  add.f.rn r3, r3, r18
0002b8  8bed2d11  add.f.rn r27, r27, r18
0002bc  8f850500  exp.f.rn r11, r11
0002c0  8f001918  div.f.rn r1, r18, r1
0002c4  0f012918  div.f.rn r2, r18, r2
0002c8  8f049918  div.f.rn r9, r18, r9
0002cc  0f024918  div.f.rn r4, r18, r4
0002d0  8f06d918  div.f.rn r13, r18, r13
0002d4  0f0ec919  div.f.rn r28, r18, r28
0002d8  0f05a918  div.f.rn r10, r18, r10
0002dc  8f013918  div.f.rn r3, r18, r3
0002e0  8be52511  add.f.rn r11, r11, r18
0002e4  67011ffc  storeli.w r1, -496(r30)
0002e8  8f800200  exp.f.rn r1, r5
0002ec  8f820900  exp.f.rn r5, r19
0002f0  67412ffc  storeli.w r2, -492(r30)
0002f4  0f010300  exp.f.rn r2, r6
0002f8  0f030a00  exp.f.rn r6, r20
0002fc  e7019ffc  storeli.w r9, -488(r30)
000300  8f840a00  exp.f.rn r9, r21
000304  67024ffc  storeli.w r4, -480(r30)
000308  0f820800  exp.f.rn r4, r17
00030c  6740dffc  storeli.w r13, -508(r30)
000310  8f06b919  div.f.rn r13, r18, r27
000314  6700cffd  storeli.w r28, -512(r30)
000318  e741affc  storeli.w r10, -484(r30)
00031c  e7423ffc  storeli.w r3, -468(r30)
000320  8f05b918  div.f.rn r11, r18, r11
000324  8be02011  add.f.rn r1, r1, r18
000328  0b612111  add.f.rn r2, r2, r18
00032c  0b622211  add.f.rn r4, r4, r18
000330  8be22211  add.f.rn r5, r5, r18
000334  0b632311  add.f.rn r6, r6, r18
000338  8be42411  add.f.rn r9, r9, r18
00033c  e700dffc  storeli.w r13, -504(r30)
000340  e740bffc  storeli.w r11, -500(r30)
000344  8f001918  div.f.rn r1, r18, r1
000348  0f012918  div.f.rn r2, r18, r2
00034c  0f024918  div.f.rn r4, r18, r4
000350  8f025918  div.f.rn r5, r18, r5
000354  0f036918  div.f.rn r6, r18, r6
000358  8f049918  div.f.rn r9, r18, r9
00035c  67421ffc  storeli.w r1, -476(r30)
000360  e7022ffc  storeli.w r2, -472(r30)
000364  67034ffc  storeli.w r4, -464(r30)
000368  67435ffc  storeli.w r5, -460(r30)
00036c  e7036ffc  storeli.w r6, -456(r30)
000370  e7439ffc  storeli.w r9, -452(r30)
000374  00a00000  mfence { lm }
000378  46907b02  vstore_mask16.mz vr7{mr1}, 0(r23)
00037c  c2120b02  vload_mask16.mz vr5{mr1}, 0(r22)
000380  00a00000  mfence { lm }
000384  e3008ffd  loadli.w r1,  -320(r30)
000388  e3019ffd  loadli.w r3,  -312(r30)
00038c  63418ffd  loadli.w r2,  -316(r30)
000390  63429ffd  loadli.w r4,  -308(r30)
000394  e342affd  loadli.w r5,  -300(r30)
000398  6303bffd  loadli.w r6,  -296(r30)
00039c  e344bffd  loadli.w r9,  -292(r30)
0003a0  6305cffd  loadli.w r10,  -288(r30)
0003a4  e346cffd  loadli.w r13,  -284(r30)
0003a8  e308dffd  loadli.w r17,  -280(r30)
0003ac  e349dffd  loadli.w r19,  -276(r30)
0003b0  630aeffd  loadli.w r20,  -272(r30)
0003b4  e34aeffd  loadli.w r21,  -268(r30)
0003b8  e30dfffd  loadli.w r27,  -264(r30)
0003bc  634efffd  loadli.w r28,  -260(r30)
0003c0  8f800000  exp.f.rn r1, r1
0003c4  8f810100  exp.f.rn r3, r3
0003c8  0f010100  exp.f.rn r2, r2
0003cc  8f050200  exp.f.rn r11, r4
0003d0  6302affd  loadli.w r4,  -304(r30)
0003d4  0e105002  vmul.f.mz.rn vr0{mr1}, vr0, vr5
0003d8  8be02011  add.f.rn r1, r1, r18
0003dc  0b612111  add.f.rn r2, r2, r18
0003e0  8f001918  div.f.rn r1, r18, r1
0003e4  0f012918  div.f.rn r2, r18, r2
0003e8  67081ffc  storeli.w r1, -384(r30)
0003ec  8be02111  add.f.rn r1, r3, r18
0003f0  8f010200  exp.f.rn r3, r4
0003f4  0f820200  exp.f.rn r4, r5
0003f8  8f020300  exp.f.rn r5, r6
0003fc  0f830400  exp.f.rn r6, r9
000400  8f040500  exp.f.rn r9, r10
000404  67482ffc  storeli.w r2, -380(r30)
000408  0be12511  add.f.rn r2, r11, r18
00040c  8f001918  div.f.rn r1, r18, r1
000410  0f012918  div.f.rn r2, r18, r2
000414  8be12111  add.f.rn r3, r3, r18
000418  0b622211  add.f.rn r4, r4, r18
00041c  8be22211  add.f.rn r5, r5, r18
000420  0b632311  add.f.rn r6, r6, r18
000424  8f013918  div.f.rn r3, r18, r3
000428  e7081ffc  storeli.w r1, -376(r30)
00042c  8f004918  div.f.rn r1, r18, r4
000430  0be22411  add.f.rn r4, r9, r18
000434  8f025918  div.f.rn r5, r18, r5
000438  0f036918  div.f.rn r6, r18, r6
00043c  8f040e00  exp.f.rn r9, r28
000440  e7482ffc  storeli.w r2, -372(r30)
000444  0f810600  exp.f.rn r2, r13
000448  67093ffc  storeli.w r3, -368(r30)
00044c  8f014918  div.f.rn r3, r18, r4
000450  0f820900  exp.f.rn r4, r19
000454  67491ffc  storeli.w r1, -364(r30)
000458  8f800800  exp.f.rn r1, r17
00045c  e7095ffc  storeli.w r5, -360(r30)
000460  8f820a00  exp.f.rn r5, r21
000464  e7496ffc  storeli.w r6, -356(r30)
000468  0f830d00  exp.f.rn r6, r27
00046c  0b612111  add.f.rn r2, r2, r18
000470  8be42411  add.f.rn r9, r9, r18
000474  0f012918  div.f.rn r2, r18, r2
000478  8f049918  div.f.rn r9, r18, r9
00047c  670a3ffc  storeli.w r3, -352(r30)
000480  8f010a00  exp.f.rn r3, r20
000484  8be02011  add.f.rn r1, r1, r18
000488  0b622211  add.f.rn r4, r4, r18
00048c  8be22211  add.f.rn r5, r5, r18
000490  0b632311  add.f.rn r6, r6, r18
000494  8f001918  div.f.rn r1, r18, r1
000498  0f024918  div.f.rn r4, r18, r4
00049c  8f025918  div.f.rn r5, r18, r5
0004a0  0f036918  div.f.rn r6, r18, r6
0004a4  674a2ffc  storeli.w r2, -348(r30)
0004a8  e74b9ffc  storeli.w r9, -324(r30)
0004ac  8be12111  add.f.rn r3, r3, r18
0004b0  8f013918  div.f.rn r3, r18, r3
0004b4  e70a1ffc  storeli.w r1, -344(r30)
0004b8  e74a4ffc  storeli.w r4, -340(r30)
0004bc  674b5ffc  storeli.w r5, -332(r30)
0004c0  e70b6ffc  storeli.w r6, -328(r30)
0004c4  670b3ffc  storeli.w r3, -336(r30)
0004c8  00a00000  mfence { lm }
0004cc  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
0004d0  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
0004d4  00a00000  mfence { lm }
0004d8  e3008ffe  loadli.w r1,  -192(r30)
0004dc  e3019ffe  loadli.w r3,  -184(r30)
0004e0  63418ffe  loadli.w r2,  -188(r30)
0004e4  63429ffe  loadli.w r4,  -180(r30)
0004e8  e342affe  loadli.w r5,  -172(r30)
0004ec  6303bffe  loadli.w r6,  -168(r30)
0004f0  e344bffe  loadli.w r9,  -164(r30)
0004f4  6305cffe  loadli.w r10,  -160(r30)
0004f8  e346cffe  loadli.w r13,  -156(r30)
0004fc  e308dffe  loadli.w r17,  -152(r30)
000500  e349dffe  loadli.w r19,  -148(r30)
000504  630aeffe  loadli.w r20,  -144(r30)
000508  e34aeffe  loadli.w r21,  -140(r30)
00050c  e30dfffe  loadli.w r27,  -136(r30)
000510  634efffe  loadli.w r28,  -132(r30)
000514  8f800000  exp.f.rn r1, r1
000518  8f810100  exp.f.rn r3, r3
00051c  0f010100  exp.f.rn r2, r2
000520  8f050200  exp.f.rn r11, r4
000524  6302affe  loadli.w r4,  -176(r30)
000528  8e907002  vmul.f.mz.rn vr1{mr1}, vr1, vr7
00052c  8be02011  add.f.rn r1, r1, r18
000530  0b612111  add.f.rn r2, r2, r18
000534  8f001918  div.f.rn r1, r18, r1
000538  0f012918  div.f.rn r2, r18, r2
00053c  67001ffe  storeli.w r1, -256(r30)
000540  8be02111  add.f.rn r1, r3, r18
000544  8f010200  exp.f.rn r3, r4
000548  0f820200  exp.f.rn r4, r5
00054c  8f020300  exp.f.rn r5, r6
000550  0f830400  exp.f.rn r6, r9
000554  8f040500  exp.f.rn r9, r10
000558  67402ffe  storeli.w r2, -252(r30)
00055c  0be12511  add.f.rn r2, r11, r18
000560  8f001918  div.f.rn r1, r18, r1
000564  0f012918  div.f.rn r2, r18, r2
000568  8be12111  add.f.rn r3, r3, r18
00056c  0b622211  add.f.rn r4, r4, r18
000570  8be22211  add.f.rn r5, r5, r18
000574  0b632311  add.f.rn r6, r6, r18
000578  8f013918  div.f.rn r3, r18, r3
00057c  e7001ffe  storeli.w r1, -248(r30)
000580  8f004918  div.f.rn r1, r18, r4
000584  0be22411  add.f.rn r4, r9, r18
000588  8f025918  div.f.rn r5, r18, r5
00058c  0f036918  div.f.rn r6, r18, r6
000590  8f040e00  exp.f.rn r9, r28
000594  e7402ffe  storeli.w r2, -244(r30)
000598  0f810600  exp.f.rn r2, r13
00059c  67013ffe  storeli.w r3, -240(r30)
0005a0  8f014918  div.f.rn r3, r18, r4
0005a4  0f820900  exp.f.rn r4, r19
0005a8  67411ffe  storeli.w r1, -236(r30)
0005ac  8f800800  exp.f.rn r1, r17
0005b0  e7015ffe  storeli.w r5, -232(r30)
0005b4  8f820a00  exp.f.rn r5, r21
0005b8  e7416ffe  storeli.w r6, -228(r30)
0005bc  0f830d00  exp.f.rn r6, r27
0005c0  0b612111  add.f.rn r2, r2, r18
0005c4  8be42411  add.f.rn r9, r9, r18
0005c8  0f012918  div.f.rn r2, r18, r2
0005cc  8f049918  div.f.rn r9, r18, r9
0005d0  67023ffe  storeli.w r3, -224(r30)
0005d4  8f010a00  exp.f.rn r3, r20
0005d8  8be02011  add.f.rn r1, r1, r18
0005dc  0b622211  add.f.rn r4, r4, r18
0005e0  8be22211  add.f.rn r5, r5, r18
0005e4  0b632311  add.f.rn r6, r6, r18
0005e8  8f001918  div.f.rn r1, r18, r1
0005ec  0f024918  div.f.rn r4, r18, r4
0005f0  8f025918  div.f.rn r5, r18, r5
0005f4  0f036918  div.f.rn r6, r18, r6
0005f8  67422ffe  storeli.w r2, -220(r30)
0005fc  e7439ffe  storeli.w r9, -196(r30)
000600  8be12111  add.f.rn r3, r3, r18
000604  8f013918  div.f.rn r3, r18, r3
000608  e7021ffe  storeli.w r1, -216(r30)
00060c  e7424ffe  storeli.w r4, -212(r30)
000610  67435ffe  storeli.w r5, -204(r30)
000614  e7036ffe  storeli.w r6, -200(r30)
000618  67033ffe  storeli.w r3, -208(r30)
00061c  00a00000  mfence { lm }
000620  46104d02  vstore_mask16.mz vr4{mr1}, 0(r26)
000624  42130602  vload_mask16.mz vr6{mr1}, 0(r12)
000628  00a00000  mfence { lm }
00062c  e3008fff  loadli.w r1,  -64(r30)
000630  63418fff  loadli.w r2,  -60(r30)
000634  e3019fff  loadli.w r3,  -56(r30)
000638  63429fff  loadli.w r4,  -52(r30)
00063c  e302bfff  loadli.w r5,  -40(r30)
000640  6343bfff  loadli.w r6,  -36(r30)
000644  e304cfff  loadli.w r9,  -32(r30)
000648  6345cfff  loadli.w r10,  -28(r30)
00064c  e308dfff  loadli.w r17,  -24(r30)
000650  e349dfff  loadli.w r19,  -20(r30)
000654  630aefff  loadli.w r20,  -16(r30)
000658  e34aefff  loadli.w r21,  -12(r30)
00065c  e30dffff  loadli.w r27,  -8(r30)
000660  634effff  loadli.w r28,  -4(r30)
000664  8f800000  exp.f.rn r1, r1
000668  0f010100  exp.f.rn r2, r2
00066c  8f850100  exp.f.rn r11, r3
000670  e301afff  loadli.w r3,  -48(r30)
000674  8f060200  exp.f.rn r13, r4
000678  6342afff  loadli.w r4,  -44(r30)
00067c  8f820200  exp.f.rn r5, r5
000680  0f030300  exp.f.rn r6, r6
000684  8f840400  exp.f.rn r9, r9
000688  0e116102  vmul.f.mz.rn vr2{mr1}, vr2, vr6
00068c  8f810100  exp.f.rn r3, r3
000690  0f020200  exp.f.rn r4, r4
000694  8be02011  add.f.rn r1, r1, r18
000698  0b612111  add.f.rn r2, r2, r18
00069c  8be22211  add.f.rn r5, r5, r18
0006a0  0b632311  add.f.rn r6, r6, r18
0006a4  8be42411  add.f.rn r9, r9, r18
0006a8  8be12111  add.f.rn r3, r3, r18
0006ac  0b622211  add.f.rn r4, r4, r18
0006b0  8f001918  div.f.rn r1, r18, r1
0006b4  0f012918  div.f.rn r2, r18, r2
0006b8  67081ffe  storeli.w r1, -128(r30)
0006bc  8be02511  add.f.rn r1, r11, r18
0006c0  67482ffe  storeli.w r2, -124(r30)
0006c4  0be12611  add.f.rn r2, r13, r18
0006c8  8f001918  div.f.rn r1, r18, r1
0006cc  0f012918  div.f.rn r2, r18, r2
0006d0  e7081ffe  storeli.w r1, -120(r30)
0006d4  8f003918  div.f.rn r1, r18, r3
0006d8  8f014918  div.f.rn r3, r18, r4
0006dc  0f025918  div.f.rn r4, r18, r5
0006e0  8f026918  div.f.rn r5, r18, r6
0006e4  0f039918  div.f.rn r6, r18, r9
0006e8  8f040e00  exp.f.rn r9, r28
0006ec  e7482ffe  storeli.w r2, -116(r30)
0006f0  0f010500  exp.f.rn r2, r10
0006f4  1f050fff  addli r10, r30, -128
0006f8  67091ffe  storeli.w r1, -112(r30)
0006fc  8f800800  exp.f.rn r1, r17
000700  67493ffe  storeli.w r3, -108(r30)
000704  8f810900  exp.f.rn r3, r19
000708  e7094ffe  storeli.w r4, -104(r30)
00070c  0f020a00  exp.f.rn r4, r20
000710  e7495ffe  storeli.w r5, -100(r30)
000714  8f820a00  exp.f.rn r5, r21
000718  670a6ffe  storeli.w r6, -96(r30)
00071c  0f830d00  exp.f.rn r6, r27
000720  0b612111  add.f.rn r2, r2, r18
000724  8be42411  add.f.rn r9, r9, r18
000728  0f012918  div.f.rn r2, r18, r2
00072c  8f049918  div.f.rn r9, r18, r9
000730  8be02011  add.f.rn r1, r1, r18
000734  8be12111  add.f.rn r3, r3, r18
000738  0b622211  add.f.rn r4, r4, r18
00073c  8be22211  add.f.rn r5, r5, r18
000740  0b632311  add.f.rn r6, r6, r18
000744  8f001918  div.f.rn r1, r18, r1
000748  8f013918  div.f.rn r3, r18, r3
00074c  0f024918  div.f.rn r4, r18, r4
000750  8f025918  div.f.rn r5, r18, r5
000754  0f036918  div.f.rn r6, r18, r6
000758  e74b9ffe  storeli.w r9, -68(r30)
00075c  674a2ffe  storeli.w r2, -92(r30)
000760  9f040ff6  addli r9, r30, -1280
000764  e70a1ffe  storeli.w r1, -88(r30)
000768  e70b6ffe  storeli.w r6, -72(r30)
00076c  e74a3ffe  storeli.w r3, -84(r30)
000770  670b4ffe  storeli.w r4, -80(r30)
000774  674b5ffe  storeli.w r5, -76(r30)
000778  9b307400  slli r1, r8, 7
00077c  1f038ffc  addli r6, r30, -448
000780  1f140000  addli r8, zero, 1
000784  00a00000  mfence { lm }
000788  42120502  vload_mask16.mz vr4{mr1}, 0(r10)
00078c  1f050ffa  addli r10, r30, -768
000790  8b101510  add.s r1, r10, r1
000794  8e914102  vmul.f.mz.rn vr3{mr1}, vr3, vr4
000798  06120000  vfloat2fp16_l.rn vr4, vr0
00079c  06d20000  vfloat2fp16_h.rn vr4, vr1
0007a0  06100100  vfloat2fp16_l.rn vr0, vr2
0007a4  06d00100  vfloat2fp16_h.rn vr0, vr3
0007a8  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
0007ac  46940002  vstore_mask16.mz vr0{mr1}, 64(r1)
0007b0  9b801300  andi r1, r7, 1
0007b4  9f030000  addli r7, zero, 0
0007b8  00a00000  mfence { lm }
0007bc  bba700fc  bneq r1, zero, -1560
0007c0  6b510faf  load.d r[3:4], -1296(r30)
0007c4  9f100000  addli r1, zero, 1
0007c8  6b528f00  load.d r[5:6], 8(r30)
0007cc  97301102  sll.d r[2:3], r[3:4], r1
0007d0  ab0100f0  lui r3, 983040
0007d4  8b201210  add.ul r[2:3], r[5:6], r[2:3]
0007d8  1f020002  addli r4, zero, 256
0007dc  97113200  or r3, r4, r3
0007e0  ffb1a000  s_lm2gm r3, r10, 0(r[2:3])
0007e4  e341fff5  loadli.w r3,  -1284(r30)
0007e8  e300dff5  loadli.w r1,  -1304(r30)
0007ec  00a00000  mfence { lm }
0007f0  8b911110  add.s r3, r3, r1
0007f4  e340dff5  loadli.w r1,  -1300(r30)
0007f8  3f8511fc  blt.s r3, r1, -1728
0007fc  9f0e8ff5  addli sp, r30, -1344
000800  9f8e8e0a  addli sp, sp, 1344
000804  00a00300  mfence { lm, sm, gm }
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
000a2c  00100000  exit
000a30  00100000  exit
000a34  00100000  exit
000a38  00100000  exit
000a3c  00100000  exit
000a40  00100000  exit
000a44  00100000  exit
000a48  00100000  exit
