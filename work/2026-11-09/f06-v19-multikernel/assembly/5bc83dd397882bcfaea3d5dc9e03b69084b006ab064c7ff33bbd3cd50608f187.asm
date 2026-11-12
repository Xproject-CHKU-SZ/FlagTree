; SHA-256 5bc83dd397882bcfaea3d5dc9e03b69084b006ab064c7ff33bbd3cd50608f187
; P800 Cluster · XTDK LLVM 19 · 652 / 652 words decoded
; bound names: ew_gelu_tanh
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
0000dc  9f8e0ef7  addli sp, sp, -1152
0000e0  1f8f8e08  addli r30, sp, 1088
0000e4  e3003f00  loadli.w r1,  24(r30)
0000e8  e3412f00  loadli.w r3,  20(r30)
0000ec  63413f00  loadli.w r2,  28(r30)
0000f0  0b923020  mul.s r4, r1, r3
0000f4  80510002  load_param_i r3, 0
0000f8  8b102220  mul.s r1, r4, r2
0000fc  e74e1ff6  storeli.w r1, -1044(r30)
000100  cb8b3002  ble.s r1, r3, 1760
000104  80d00002  load_param_i r1, 1
000108  80320002  core_id r5
00010c  2b434c3f  lui r6, 259268
000110  1f020004  addli r4, zero, 512
000114  2b080040  lui r16, 262144
000118  1f048ffc  addli r8, r30, -448
00011c  2b09803f  lui r18, 260096
000120  e70e1ff6  storeli.w r1, -1048(r30)
000124  9bb07200  slli r1, r5, 7
000128  ab22373d  lui r5, 250738
00012c  9b17a322  ori r15, r6, 554
000130  1b973271  ori r14, r5, 1811
000134  674e1ff6  storeli.w r1, -1052(r30)
000138  e3403f00  loadli.w r1,  28(r30)
00013c  e74f3ff6  storeli.w r3, -1028(r30)
000140  1f1e0000  addli r28, zero, 1
000144  9f0a0ffc  addli r21, r30, -512
000148  1f0b8ffd  addli r22, r30, -320
00014c  9f0b0ffd  addli r23, r30, -384
000150  1f0c8ffe  addli r24, r30, -192
000154  9f0c0ffe  addli r25, r30, -256
000158  1f068fff  addli r12, r30, -64
00015c  8b921130  div.s r5, r3, r1
000160  e3003f00  loadli.w r1,  24(r30)
000164  8b921230  div.s r5, r5, r1
000168  e340cff7  loadli.w r1,  -1052(r30)
00016c  9bb2d200  slli r5, r5, 13
000170  8b921210  add.s r5, r5, r1
000174  9f200000  addli r1, zero, 2
000178  b3920228  sext_int2long r[6:7], r5
00017c  17b31202  sll.d r[7:8], r[6:7], r1
000180  eb500f00  load.d r[2:3], 0(r30)
000184  ab0200f0  lui r5, 983040
000188  73386fbe  store.d r[7:8], -1040(r30)
00018c  97125200  or r5, r4, r5
000190  0ba36010  add.ul r[7:8], r[2:3], r[7:8]
000194  9f000ff8  addli r1, r30, -1024
000198  ff221300  l_gm2lm r5, r1, 0(r[7:8])
00019c  9f020000  addli r5, zero, 0
0001a0  00a00000  mfence { lm }
0001a4  9f000ff8  addli r1, r30, -1024
0001a8  8b925010  add.s r5, r1, r5
0001ac  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
0001b0  c2908202  vload_mask16.mz vr1{mr1}, 64(r5)
0001b4  42910203  vload_mask16.mz vr2{mr1}, 128(r5)
0001b8  c2918203  vload_mask16.mz vr3{mr1}, 192(r5)
0001bc  8a130702  vmul.f.mz.rn vr7{mr1}, r14, vr0
0001c0  0a121702  vmul.f.mz.rn vr4{mr1}, r14, vr1
0001c4  8a122702  vmul.f.mz.rn vr5{mr1}, r14, vr2
0001c8  0a133702  vmul.f.mz.rn vr6{mr1}, r14, vr3
0001cc  8e137002  vmul.f.mz.rn vr7{mr1}, vr0, vr7
0001d0  12340002  vadd.s.mz vr8{mr1}, zero, vr0
0001d4  0e924002  vmul.f.mz.rn vr4{mr1}, vr1, vr4
0001d8  8e125102  vmul.f.mz.rn vr5{mr1}, vr2, vr5
0001dc  0e936102  vmul.f.mz.rn vr6{mr1}, vr3, vr6
0001e0  26948302  vmac.f.mz.rn vr8{mr1}, vr7, vr8
0001e4  92331002  vadd.s.mz vr7{mr1}, zero, vr1
0001e8  a6137202  vmac.f.mz.rn vr7{mr1}, vr4, vr7
0001ec  12322002  vadd.s.mz vr4{mr1}, zero, vr2
0001f0  26924202  vmac.f.mz.rn vr4{mr1}, vr5, vr4
0001f4  92323002  vadd.s.mz vr5{mr1}, zero, vr3
0001f8  8a937702  vmul.f.mz.rn vr7{mr1}, r15, vr7
0001fc  a6125302  vmac.f.mz.rn vr5{mr1}, vr6, vr5
000200  0a938702  vmul.f.mz.rn vr6{mr1}, r15, vr8
000204  0a924702  vmul.f.mz.rn vr4{mr1}, r15, vr4
000208  8a137802  vmul.f.mz.rn vr7{mr1}, r16, vr7
00020c  8a925702  vmul.f.mz.rn vr5{mr1}, r15, vr5
000210  0a136802  vmul.f.mz.rn vr6{mr1}, r16, vr6
000214  1a146002  vsub.f.mz.rn vr8{mr1}, zero, vr6
000218  0a124802  vmul.f.mz.rn vr4{mr1}, r16, vr4
00021c  46108402  vstore_mask16.mz vr8{mr1}, 0(r8)
000220  9a137002  vsub.f.mz.rn vr7{mr1}, zero, vr7
000224  8a125802  vmul.f.mz.rn vr5{mr1}, r16, vr5
000228  1a134002  vsub.f.mz.rn vr6{mr1}, zero, vr4
00022c  1a125002  vsub.f.mz.rn vr4{mr1}, zero, vr5
000230  00a00000  mfence { lm }
000234  e3438ffc  loadli.w r7,  -444(r30)
000238  63049ffc  loadli.w r8,  -440(r30)
00023c  63038ffc  loadli.w r6,  -448(r30)
000240  e300affc  loadli.w r1,  -432(r30)
000244  6341affc  loadli.w r2,  -428(r30)
000248  6305cffc  loadli.w r10,  -416(r30)
00024c  e306bffc  loadli.w r13,  -424(r30)
000250  6342cffc  loadli.w r4,  -412(r30)
000254  e344bffc  loadli.w r9,  -420(r30)
000258  e301effc  loadli.w r3,  -400(r30)
00025c  630ddffc  loadli.w r26,  -408(r30)
000260  e34ddffc  loadli.w r27,  -404(r30)
000264  e348effc  loadli.w r17,  -396(r30)
000268  e309fffc  loadli.w r19,  -392(r30)
00026c  634afffc  loadli.w r20,  -388(r30)
000270  8f830300  exp.f.rn r7, r7
000274  0f040400  exp.f.rn r8, r8
000278  0f030300  exp.f.rn r6, r6
00027c  8f800000  exp.f.rn r1, r1
000280  0f010100  exp.f.rn r2, r2
000284  0f050500  exp.f.rn r10, r10
000288  8f840400  exp.f.rn r9, r9
00028c  8f810100  exp.f.rn r3, r3
000290  8be32311  add.f.rn r7, r7, r18
000294  0b642411  add.f.rn r8, r8, r18
000298  8b652311  add.f.rn r11, r6, r18
00029c  63439ffc  loadli.w r6,  -436(r30)
0002a0  8be02011  add.f.rn r1, r1, r18
0002a4  0b612111  add.f.rn r2, r2, r18
0002a8  8be42411  add.f.rn r9, r9, r18
0002ac  8be12111  add.f.rn r3, r3, r18
0002b0  0f030300  exp.f.rn r6, r6
0002b4  8f037918  div.f.rn r7, r18, r7
0002b8  0f048918  div.f.rn r8, r18, r8
0002bc  8f001918  div.f.rn r1, r18, r1
0002c0  0f012918  div.f.rn r2, r18, r2
0002c4  8f05b918  div.f.rn r11, r18, r11
0002c8  8f049918  div.f.rn r9, r18, r9
0002cc  8f013918  div.f.rn r3, r18, r3
0002d0  0b632311  add.f.rn r6, r6, r18
0002d4  67407ffc  storeli.w r7, -508(r30)
0002d8  8f830600  exp.f.rn r7, r13
0002dc  e7008ffc  storeli.w r8, -504(r30)
0002e0  0b642511  add.f.rn r8, r10, r18
0002e4  67011ffc  storeli.w r1, -496(r30)
0002e8  8f000200  exp.f.rn r1, r4
0002ec  67412ffc  storeli.w r2, -492(r30)
0002f0  0f010d00  exp.f.rn r2, r26
0002f4  6700bffc  storeli.w r11, -512(r30)
0002f8  e7419ffc  storeli.w r9, -484(r30)
0002fc  67033ffc  storeli.w r3, -464(r30)
000300  0f036918  div.f.rn r6, r18, r6
000304  0f028918  div.f.rn r4, r18, r8
000308  0f040a00  exp.f.rn r8, r20
00030c  8be32311  add.f.rn r7, r7, r18
000310  8be02011  add.f.rn r1, r1, r18
000314  0b612111  add.f.rn r2, r2, r18
000318  e7406ffc  storeli.w r6, -500(r30)
00031c  0f830d00  exp.f.rn r6, r27
000320  8f037918  div.f.rn r7, r18, r7
000324  67024ffc  storeli.w r4, -480(r30)
000328  0f820800  exp.f.rn r4, r17
00032c  0b642411  add.f.rn r8, r8, r18
000330  8f001918  div.f.rn r1, r18, r1
000334  0f012918  div.f.rn r2, r18, r2
000338  0b632311  add.f.rn r6, r6, r18
00033c  0f048918  div.f.rn r8, r18, r8
000340  e7017ffc  storeli.w r7, -488(r30)
000344  8f830900  exp.f.rn r7, r19
000348  0b622211  add.f.rn r4, r4, r18
00034c  67421ffc  storeli.w r1, -476(r30)
000350  e7022ffc  storeli.w r2, -472(r30)
000354  0f036918  div.f.rn r6, r18, r6
000358  0f024918  div.f.rn r4, r18, r4
00035c  e7438ffc  storeli.w r8, -452(r30)
000360  8be32311  add.f.rn r7, r7, r18
000364  e7426ffc  storeli.w r6, -468(r30)
000368  8f037918  div.f.rn r7, r18, r7
00036c  67434ffc  storeli.w r4, -460(r30)
000370  e7037ffc  storeli.w r7, -456(r30)
000374  00a00000  mfence { lm }
000378  46107b02  vstore_mask16.mz vr7{mr1}, 0(r22)
00037c  c2920a02  vload_mask16.mz vr5{mr1}, 0(r21)
000380  00a00000  mfence { lm }
000384  e3008ffd  loadli.w r1,  -320(r30)
000388  63418ffd  loadli.w r2,  -316(r30)
00038c  e3019ffd  loadli.w r3,  -312(r30)
000390  63429ffd  loadli.w r4,  -308(r30)
000394  e343affd  loadli.w r7,  -300(r30)
000398  6304bffd  loadli.w r8,  -296(r30)
00039c  e344bffd  loadli.w r9,  -292(r30)
0003a0  6305cffd  loadli.w r10,  -288(r30)
0003a4  e345cffd  loadli.w r11,  -284(r30)
0003a8  e306dffd  loadli.w r13,  -280(r30)
0003ac  e348dffd  loadli.w r17,  -276(r30)
0003b0  e309effd  loadli.w r19,  -272(r30)
0003b4  634aeffd  loadli.w r20,  -268(r30)
0003b8  630dfffd  loadli.w r26,  -264(r30)
0003bc  e34dfffd  loadli.w r27,  -260(r30)
0003c0  8f800000  exp.f.rn r1, r1
0003c4  0f010100  exp.f.rn r2, r2
0003c8  8f810100  exp.f.rn r3, r3
0003cc  0f030200  exp.f.rn r6, r4
0003d0  6302affd  loadli.w r4,  -304(r30)
0003d4  0e105002  vmul.f.mz.rn vr0{mr1}, vr0, vr5
0003d8  8be02011  add.f.rn r1, r1, r18
0003dc  0b612111  add.f.rn r2, r2, r18
0003e0  8f001918  div.f.rn r1, r18, r1
0003e4  0f012918  div.f.rn r2, r18, r2
0003e8  67081ffc  storeli.w r1, -384(r30)
0003ec  8be02111  add.f.rn r1, r3, r18
0003f0  8f010200  exp.f.rn r3, r4
0003f4  0f820300  exp.f.rn r4, r7
0003f8  8f830400  exp.f.rn r7, r9
0003fc  67482ffc  storeli.w r2, -380(r30)
000400  0b612311  add.f.rn r2, r6, r18
000404  0f030400  exp.f.rn r6, r8
000408  0f040500  exp.f.rn r8, r10
00040c  8f001918  div.f.rn r1, r18, r1
000410  0f012918  div.f.rn r2, r18, r2
000414  8be12111  add.f.rn r3, r3, r18
000418  0b622211  add.f.rn r4, r4, r18
00041c  0b632311  add.f.rn r6, r6, r18
000420  8be32311  add.f.rn r7, r7, r18
000424  8f013918  div.f.rn r3, r18, r3
000428  e7081ffc  storeli.w r1, -376(r30)
00042c  8f004918  div.f.rn r1, r18, r4
000430  0b622411  add.f.rn r4, r8, r18
000434  0f036918  div.f.rn r6, r18, r6
000438  8f037918  div.f.rn r7, r18, r7
00043c  0f840d00  exp.f.rn r8, r27
000440  e7482ffc  storeli.w r2, -372(r30)
000444  0f810500  exp.f.rn r2, r11
000448  67093ffc  storeli.w r3, -368(r30)
00044c  8f014918  div.f.rn r3, r18, r4
000450  0f820800  exp.f.rn r4, r17
000454  67491ffc  storeli.w r1, -364(r30)
000458  8f800600  exp.f.rn r1, r13
00045c  e7096ffc  storeli.w r6, -360(r30)
000460  0f030a00  exp.f.rn r6, r20
000464  e7497ffc  storeli.w r7, -356(r30)
000468  8f030d00  exp.f.rn r7, r26
00046c  0b612111  add.f.rn r2, r2, r18
000470  0b642411  add.f.rn r8, r8, r18
000474  0f012918  div.f.rn r2, r18, r2
000478  0f048918  div.f.rn r8, r18, r8
00047c  670a3ffc  storeli.w r3, -352(r30)
000480  8f810900  exp.f.rn r3, r19
000484  8be02011  add.f.rn r1, r1, r18
000488  0b622211  add.f.rn r4, r4, r18
00048c  0b632311  add.f.rn r6, r6, r18
000490  8be32311  add.f.rn r7, r7, r18
000494  8f001918  div.f.rn r1, r18, r1
000498  0f024918  div.f.rn r4, r18, r4
00049c  0f036918  div.f.rn r6, r18, r6
0004a0  8f037918  div.f.rn r7, r18, r7
0004a4  674a2ffc  storeli.w r2, -348(r30)
0004a8  e74b8ffc  storeli.w r8, -324(r30)
0004ac  8be12111  add.f.rn r3, r3, r18
0004b0  8f013918  div.f.rn r3, r18, r3
0004b4  e70a1ffc  storeli.w r1, -344(r30)
0004b8  e74a4ffc  storeli.w r4, -340(r30)
0004bc  674b6ffc  storeli.w r6, -332(r30)
0004c0  e70b7ffc  storeli.w r7, -328(r30)
0004c4  670b3ffc  storeli.w r3, -336(r30)
0004c8  00a00000  mfence { lm }
0004cc  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
0004d0  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
0004d4  00a00000  mfence { lm }
0004d8  e3008ffe  loadli.w r1,  -192(r30)
0004dc  63418ffe  loadli.w r2,  -188(r30)
0004e0  e3019ffe  loadli.w r3,  -184(r30)
0004e4  63429ffe  loadli.w r4,  -180(r30)
0004e8  e343affe  loadli.w r7,  -172(r30)
0004ec  6304bffe  loadli.w r8,  -168(r30)
0004f0  e344bffe  loadli.w r9,  -164(r30)
0004f4  6305cffe  loadli.w r10,  -160(r30)
0004f8  e345cffe  loadli.w r11,  -156(r30)
0004fc  e306dffe  loadli.w r13,  -152(r30)
000500  e348dffe  loadli.w r17,  -148(r30)
000504  e309effe  loadli.w r19,  -144(r30)
000508  634aeffe  loadli.w r20,  -140(r30)
00050c  630dfffe  loadli.w r26,  -136(r30)
000510  e34dfffe  loadli.w r27,  -132(r30)
000514  8f800000  exp.f.rn r1, r1
000518  0f010100  exp.f.rn r2, r2
00051c  8f810100  exp.f.rn r3, r3
000520  0f030200  exp.f.rn r6, r4
000524  6302affe  loadli.w r4,  -176(r30)
000528  8e907002  vmul.f.mz.rn vr1{mr1}, vr1, vr7
00052c  8be02011  add.f.rn r1, r1, r18
000530  0b612111  add.f.rn r2, r2, r18
000534  8f001918  div.f.rn r1, r18, r1
000538  0f012918  div.f.rn r2, r18, r2
00053c  67001ffe  storeli.w r1, -256(r30)
000540  8be02111  add.f.rn r1, r3, r18
000544  8f010200  exp.f.rn r3, r4
000548  0f820300  exp.f.rn r4, r7
00054c  8f830400  exp.f.rn r7, r9
000550  67402ffe  storeli.w r2, -252(r30)
000554  0b612311  add.f.rn r2, r6, r18
000558  0f030400  exp.f.rn r6, r8
00055c  0f040500  exp.f.rn r8, r10
000560  8f001918  div.f.rn r1, r18, r1
000564  0f012918  div.f.rn r2, r18, r2
000568  8be12111  add.f.rn r3, r3, r18
00056c  0b622211  add.f.rn r4, r4, r18
000570  0b632311  add.f.rn r6, r6, r18
000574  8be32311  add.f.rn r7, r7, r18
000578  8f013918  div.f.rn r3, r18, r3
00057c  e7001ffe  storeli.w r1, -248(r30)
000580  8f004918  div.f.rn r1, r18, r4
000584  0b622411  add.f.rn r4, r8, r18
000588  0f036918  div.f.rn r6, r18, r6
00058c  8f037918  div.f.rn r7, r18, r7
000590  0f840d00  exp.f.rn r8, r27
000594  e7402ffe  storeli.w r2, -244(r30)
000598  0f810500  exp.f.rn r2, r11
00059c  67013ffe  storeli.w r3, -240(r30)
0005a0  8f014918  div.f.rn r3, r18, r4
0005a4  0f820800  exp.f.rn r4, r17
0005a8  67411ffe  storeli.w r1, -236(r30)
0005ac  8f800600  exp.f.rn r1, r13
0005b0  e7016ffe  storeli.w r6, -232(r30)
0005b4  0f030a00  exp.f.rn r6, r20
0005b8  e7417ffe  storeli.w r7, -228(r30)
0005bc  8f030d00  exp.f.rn r7, r26
0005c0  0b612111  add.f.rn r2, r2, r18
0005c4  0b642411  add.f.rn r8, r8, r18
0005c8  0f012918  div.f.rn r2, r18, r2
0005cc  0f048918  div.f.rn r8, r18, r8
0005d0  67023ffe  storeli.w r3, -224(r30)
0005d4  8f810900  exp.f.rn r3, r19
0005d8  8be02011  add.f.rn r1, r1, r18
0005dc  0b622211  add.f.rn r4, r4, r18
0005e0  0b632311  add.f.rn r6, r6, r18
0005e4  8be32311  add.f.rn r7, r7, r18
0005e8  8f001918  div.f.rn r1, r18, r1
0005ec  0f024918  div.f.rn r4, r18, r4
0005f0  0f036918  div.f.rn r6, r18, r6
0005f4  8f037918  div.f.rn r7, r18, r7
0005f8  67422ffe  storeli.w r2, -220(r30)
0005fc  e7438ffe  storeli.w r8, -196(r30)
000600  8be12111  add.f.rn r3, r3, r18
000604  8f013918  div.f.rn r3, r18, r3
000608  e7021ffe  storeli.w r1, -216(r30)
00060c  e7424ffe  storeli.w r4, -212(r30)
000610  67436ffe  storeli.w r6, -204(r30)
000614  e7037ffe  storeli.w r7, -200(r30)
000618  67033ffe  storeli.w r3, -208(r30)
00061c  00a00000  mfence { lm }
000620  46104602  vstore_mask16.mz vr4{mr1}, 0(r12)
000624  42930c02  vload_mask16.mz vr6{mr1}, 0(r25)
000628  00a00000  mfence { lm }
00062c  e3008fff  loadli.w r1,  -64(r30)
000630  63418fff  loadli.w r2,  -60(r30)
000634  e3019fff  loadli.w r3,  -56(r30)
000638  63429fff  loadli.w r4,  -52(r30)
00063c  6304bfff  loadli.w r8,  -40(r30)
000640  e344bfff  loadli.w r9,  -36(r30)
000644  6305cfff  loadli.w r10,  -32(r30)
000648  e345cfff  loadli.w r11,  -28(r30)
00064c  e306dfff  loadli.w r13,  -24(r30)
000650  e348dfff  loadli.w r17,  -20(r30)
000654  e309efff  loadli.w r19,  -16(r30)
000658  634aefff  loadli.w r20,  -12(r30)
00065c  630dffff  loadli.w r26,  -8(r30)
000660  e34dffff  loadli.w r27,  -4(r30)
000664  8f800000  exp.f.rn r1, r1
000668  0f010100  exp.f.rn r2, r2
00066c  0f830100  exp.f.rn r6, r3
000670  8f030200  exp.f.rn r7, r4
000674  e301afff  loadli.w r3,  -48(r30)
000678  6342afff  loadli.w r4,  -44(r30)
00067c  0e116102  vmul.f.mz.rn vr2{mr1}, vr2, vr6
000680  8f810100  exp.f.rn r3, r3
000684  0f020200  exp.f.rn r4, r4
000688  8be02011  add.f.rn r1, r1, r18
00068c  0b612111  add.f.rn r2, r2, r18
000690  8be12111  add.f.rn r3, r3, r18
000694  0b622211  add.f.rn r4, r4, r18
000698  8f001918  div.f.rn r1, r18, r1
00069c  0f012918  div.f.rn r2, r18, r2
0006a0  67081ffe  storeli.w r1, -128(r30)
0006a4  8b602311  add.f.rn r1, r6, r18
0006a8  0f030400  exp.f.rn r6, r8
0006ac  0f040500  exp.f.rn r8, r10
0006b0  67482ffe  storeli.w r2, -124(r30)
0006b4  0be12311  add.f.rn r2, r7, r18
0006b8  8f830400  exp.f.rn r7, r9
0006bc  9f040fff  addli r9, r30, -128
0006c0  8f001918  div.f.rn r1, r18, r1
0006c4  0f012918  div.f.rn r2, r18, r2
0006c8  0b632311  add.f.rn r6, r6, r18
0006cc  8be32311  add.f.rn r7, r7, r18
0006d0  0b642411  add.f.rn r8, r8, r18
0006d4  e7081ffe  storeli.w r1, -120(r30)
0006d8  8f003918  div.f.rn r1, r18, r3
0006dc  8f014918  div.f.rn r3, r18, r4
0006e0  0f026918  div.f.rn r4, r18, r6
0006e4  0f037918  div.f.rn r6, r18, r7
0006e8  8f038918  div.f.rn r7, r18, r8
0006ec  0f840d00  exp.f.rn r8, r27
0006f0  e7482ffe  storeli.w r2, -116(r30)
0006f4  0f810500  exp.f.rn r2, r11
0006f8  67091ffe  storeli.w r1, -112(r30)
0006fc  8f800600  exp.f.rn r1, r13
000700  67493ffe  storeli.w r3, -108(r30)
000704  8f810800  exp.f.rn r3, r17
000708  e7094ffe  storeli.w r4, -104(r30)
00070c  0f820900  exp.f.rn r4, r19
000710  e7496ffe  storeli.w r6, -100(r30)
000714  0f030a00  exp.f.rn r6, r20
000718  670a7ffe  storeli.w r7, -96(r30)
00071c  8f030d00  exp.f.rn r7, r26
000720  0b612111  add.f.rn r2, r2, r18
000724  0b642411  add.f.rn r8, r8, r18
000728  0f012918  div.f.rn r2, r18, r2
00072c  0f048918  div.f.rn r8, r18, r8
000730  8be02011  add.f.rn r1, r1, r18
000734  8be12111  add.f.rn r3, r3, r18
000738  0b622211  add.f.rn r4, r4, r18
00073c  0b632311  add.f.rn r6, r6, r18
000740  8be32311  add.f.rn r7, r7, r18
000744  8f001918  div.f.rn r1, r18, r1
000748  8f013918  div.f.rn r3, r18, r3
00074c  0f024918  div.f.rn r4, r18, r4
000750  0f036918  div.f.rn r6, r18, r6
000754  8f037918  div.f.rn r7, r18, r7
000758  e74b8ffe  storeli.w r8, -68(r30)
00075c  674a2ffe  storeli.w r2, -92(r30)
000760  1f048ffc  addli r8, r30, -448
000764  e70a1ffe  storeli.w r1, -88(r30)
000768  e74a3ffe  storeli.w r3, -84(r30)
00076c  670b4ffe  storeli.w r4, -80(r30)
000770  674b6ffe  storeli.w r6, -76(r30)
000774  e70b7ffe  storeli.w r7, -72(r30)
000778  9b001e00  andi r1, r28, 1
00077c  1f0e0000  addli r28, zero, 0
000780  00a00000  mfence { lm }
000784  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
000788  42920402  vload_mask16.mz vr4{mr1}, 0(r9)
00078c  46941202  vstore_mask16.mz vr1{mr1}, 64(r5)
000790  46982202  vstore_mask16.mz vr2{mr1}, 128(r5)
000794  8e914102  vmul.f.mz.rn vr3{mr1}, vr3, vr4
000798  469c3202  vstore_mask16.mz vr3{mr1}, 192(r5)
00079c  9f020002  addli r5, zero, 256
0007a0  00a00000  mfence { lm }
0007a4  3b8800fc  bneq r1, zero, -1536
0007a8  6b518f00  load.d r[3:4], 8(r30)
0007ac  6b520fbf  load.d r[5:6], -1040(r30)
0007b0  ab0000f0  lui r1, 983040
0007b4  0b214110  add.ul r[3:4], r[3:4], r[5:6]
0007b8  1f020004  addli r4, zero, 512
0007bc  9f020ff8  addli r5, r30, -1024
0007c0  97101200  or r1, r4, r1
0007c4  ff305100  s_lm2gm r1, r5, 0(r[3:4])
0007c8  e341fff7  loadli.w r3,  -1028(r30)
0007cc  e300dff7  loadli.w r1,  -1048(r30)
0007d0  00a00000  mfence { lm }
0007d4  8b911110  add.s r3, r3, r1
0007d8  e340dff7  loadli.w r1,  -1044(r30)
0007dc  3ff511fc  blt.s r3, r1, -1700
0007e0  9f0e8ff7  addli sp, r30, -1088
0007e4  9f8e8e08  addli sp, sp, 1088
0007e8  00a00300  mfence { lm, sm, gm }
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
000a2c  00100000  exit
