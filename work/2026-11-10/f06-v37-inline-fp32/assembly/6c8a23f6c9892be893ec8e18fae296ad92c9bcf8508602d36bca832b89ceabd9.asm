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
000100  4bbb3002  ble.s r1, r3, 1740
000104  80d00002  load_param_i r1, 1
000108  80320002  core_id r5
00010c  9f060ff8  addli r13, r30, -1024
000110  1f020002  addli r4, zero, 256
000114  1f080ffa  addli r16, r30, -768
000118  9f058ffc  addli r11, r30, -448
00011c  2b09803f  lui r18, 260096
000120  9f090ffc  addli r19, r30, -512
000124  1f0a8ffd  addli r20, r30, -320
000128  9f0a0ffd  addli r21, r30, -384
00012c  1f0b8ffe  addli r22, r30, -192
000130  9f0b0ffe  addli r23, r30, -256
000134  1f0c8fff  addli r24, r30, -64
000138  9f0c0fff  addli r25, r30, -128
00013c  e70e1ff6  storeli.w r1, -1048(r30)
000140  9bb07200  slli r1, r5, 7
000144  674e1ff6  storeli.w r1, -1052(r30)
000148  e3004f00  loadli.w r1,  32(r30)
00014c  e74f3ff6  storeli.w r3, -1028(r30)
000150  8b921130  div.s r5, r3, r1
000154  e3403f00  loadli.w r1,  28(r30)
000158  8b921230  div.s r5, r5, r1
00015c  e340cff7  loadli.w r1,  -1052(r30)
000160  9bb2d200  slli r5, r5, 13
000164  8b921210  add.s r5, r5, r1
000168  9f000008  addli r1, zero, 1024
00016c  0b931238  mod.s r6, r5, r1
000170  b3930228  sext_int2long r[8:9], r5
000174  9f100000  addli r1, zero, 1
000178  ab0200f0  lui r5, 983040
00017c  17b71302  sll.d r[15:16], r[8:9], r1
000180  97125200  or r5, r4, r5
000184  7338efbe  store.d r[15:16], -1040(r30)
000188  b3140328  sext_int2long r[10:11], r6
00018c  2b0300f0  lui r6, 983040
000190  97b31402  sll.d r[8:9], r[10:11], r1
000194  eb500f00  load.d r[2:3], 0(r30)
000198  17136200  or r6, r4, r6
00019c  8ba4e010  add.ul r[10:11], r[2:3], r[15:16]
0001a0  eb508f00  load.d r[2:3], 8(r30)
0001a4  ffa2d400  l_gm2lm r5, r13, 0(r[10:11])
0001a8  9f120000  addli r5, zero, 1
0001ac  8ba37010  add.ul r[8:9], r[2:3], r[8:9]
0001b0  7fa30301  l_gm2lm r6, r16, 0(r[8:9])
0001b4  1f030000  addli r6, zero, 0
0001b8  00a00000  mfence { lm }
0001bc  1b336300  slli r6, r6, 6
0001c0  8b936610  add.s r7, r13, r6
0001c4  0b136810  add.s r6, r16, r6
0001c8  42900302  vload_mask16.mz vr0{mr1}, 0(r7)
0001cc  c2908302  vload_mask16.mz vr1{mr1}, 64(r7)
0001d0  42110302  vload_mask16.mz vr2{mr1}, 0(r6)
0001d4  c2118302  vload_mask16.mz vr3{mr1}, 64(r6)
0001d8  06b20000  vfp162float_l.rn vr4, vr1
0001dc  86f20000  vfp162float_h.rn vr5, vr1
0001e0  06730000  vfp162float_h.rn vr6, vr0
0001e4  86730100  vfp162float_h.rn vr7, vr2
0001e8  06f40100  vfp162float_h.rn vr8, vr3
0001ec  86300000  vfp162float_l.rn vr1, vr0
0001f0  06300100  vfp162float_l.rn vr0, vr2
0001f4  06b10100  vfp162float_l.rn vr2, vr3
0001f8  96918202  vadd.f.mz.rn vr3{mr1}, vr5, vr8
0001fc  16900002  vadd.f.mz.rn vr0{mr1}, vr1, vr0
000200  9a120002  vsub.f.mz.rn vr5{mr1}, zero, vr0
000204  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
000208  96107302  vadd.f.mz.rn vr1{mr1}, vr6, vr7
00020c  16112202  vadd.f.mz.rn vr2{mr1}, vr4, vr2
000210  9a131002  vsub.f.mz.rn vr7{mr1}, zero, vr1
000214  1a132002  vsub.f.mz.rn vr6{mr1}, zero, vr2
000218  1a123002  vsub.f.mz.rn vr4{mr1}, zero, vr3
00021c  00a00000  mfence { lm }
000220  63448ffc  loadli.w r8,  -444(r30)
000224  e3038ffc  loadli.w r7,  -448(r30)
000228  e3049ffc  loadli.w r9,  -440(r30)
00022c  e340affc  loadli.w r1,  -428(r30)
000230  6301bffc  loadli.w r2,  -424(r30)
000234  e345bffc  loadli.w r11,  -420(r30)
000238  6306cffc  loadli.w r12,  -416(r30)
00023c  634dcffc  loadli.w r26,  -412(r30)
000240  e301fffc  loadli.w r3,  -392(r30)
000244  e307affc  loadli.w r15,  -432(r30)
000248  6302dffc  loadli.w r4,  -408(r30)
00024c  6347dffc  loadli.w r14,  -404(r30)
000250  e30deffc  loadli.w r27,  -400(r30)
000254  634eeffc  loadli.w r28,  -396(r30)
000258  e348fffc  loadli.w r17,  -388(r30)
00025c  0f040400  exp.f.rn r8, r8
000260  8f830300  exp.f.rn r7, r7
000264  8f840400  exp.f.rn r9, r9
000268  8f800000  exp.f.rn r1, r1
00026c  0f010100  exp.f.rn r2, r2
000270  8f810100  exp.f.rn r3, r3
000274  0b642411  add.f.rn r8, r8, r18
000278  0be52311  add.f.rn r10, r7, r18
00027c  e3439ffc  loadli.w r7,  -436(r30)
000280  8be42411  add.f.rn r9, r9, r18
000284  8be02011  add.f.rn r1, r1, r18
000288  0b612111  add.f.rn r2, r2, r18
00028c  8be12111  add.f.rn r3, r3, r18
000290  8f830300  exp.f.rn r7, r7
000294  0f048918  div.f.rn r8, r18, r8
000298  8f049918  div.f.rn r9, r18, r9
00029c  0f05a918  div.f.rn r10, r18, r10
0002a0  8f001918  div.f.rn r1, r18, r1
0002a4  0f012918  div.f.rn r2, r18, r2
0002a8  8f013918  div.f.rn r3, r18, r3
0002ac  8be32311  add.f.rn r7, r7, r18
0002b0  67408ffc  storeli.w r8, -508(r30)
0002b4  0f840500  exp.f.rn r8, r11
0002b8  8f050600  exp.f.rn r11, r12
0002bc  e7009ffc  storeli.w r9, -504(r30)
0002c0  6700affc  storeli.w r10, -512(r30)
0002c4  0f850700  exp.f.rn r10, r15
0002c8  67411ffc  storeli.w r1, -492(r30)
0002cc  8f000200  exp.f.rn r1, r4
0002d0  e7012ffc  storeli.w r2, -488(r30)
0002d4  0f010700  exp.f.rn r2, r14
0002d8  e7033ffc  storeli.w r3, -456(r30)
0002dc  8f037918  div.f.rn r7, r18, r7
0002e0  0b642411  add.f.rn r8, r8, r18
0002e4  8be42511  add.f.rn r9, r11, r18
0002e8  0b652511  add.f.rn r10, r10, r18
0002ec  8be02011  add.f.rn r1, r1, r18
0002f0  0b612111  add.f.rn r2, r2, r18
0002f4  e7407ffc  storeli.w r7, -500(r30)
0002f8  8f030d00  exp.f.rn r7, r26
0002fc  0f048918  div.f.rn r8, r18, r8
000300  8f049918  div.f.rn r9, r18, r9
000304  0f05a918  div.f.rn r10, r18, r10
000308  8f001918  div.f.rn r1, r18, r1
00030c  0f012918  div.f.rn r2, r18, r2
000310  0be22311  add.f.rn r4, r7, r18
000314  8f830d00  exp.f.rn r7, r27
000318  e7418ffc  storeli.w r8, -484(r30)
00031c  0f040e00  exp.f.rn r8, r28
000320  67029ffc  storeli.w r9, -480(r30)
000324  8f840800  exp.f.rn r9, r17
000328  6701affc  storeli.w r10, -496(r30)
00032c  e7021ffc  storeli.w r1, -472(r30)
000330  e7422ffc  storeli.w r2, -468(r30)
000334  0f024918  div.f.rn r4, r18, r4
000338  8be32311  add.f.rn r7, r7, r18
00033c  0b642411  add.f.rn r8, r8, r18
000340  8be42411  add.f.rn r9, r9, r18
000344  8f037918  div.f.rn r7, r18, r7
000348  67424ffc  storeli.w r4, -476(r30)
00034c  0f048918  div.f.rn r8, r18, r8
000350  8f049918  div.f.rn r9, r18, r9
000354  67037ffc  storeli.w r7, -464(r30)
000358  67438ffc  storeli.w r8, -460(r30)
00035c  e7439ffc  storeli.w r9, -452(r30)
000360  00a00000  mfence { lm }
000364  46107a02  vstore_mask16.mz vr7{mr1}, 0(r20)
000368  c2920902  vload_mask16.mz vr5{mr1}, 0(r19)
00036c  00a00000  mfence { lm }
000370  e3008ffd  loadli.w r1,  -320(r30)
000374  63418ffd  loadli.w r2,  -316(r30)
000378  e3019ffd  loadli.w r3,  -312(r30)
00037c  63429ffd  loadli.w r4,  -308(r30)
000380  6344affd  loadli.w r8,  -300(r30)
000384  e304bffd  loadli.w r9,  -296(r30)
000388  6345bffd  loadli.w r10,  -292(r30)
00038c  e305cffd  loadli.w r11,  -288(r30)
000390  6346cffd  loadli.w r12,  -284(r30)
000394  6307dffd  loadli.w r14,  -280(r30)
000398  e347dffd  loadli.w r15,  -276(r30)
00039c  e308effd  loadli.w r17,  -272(r30)
0003a0  634deffd  loadli.w r26,  -268(r30)
0003a4  e30dfffd  loadli.w r27,  -264(r30)
0003a8  634efffd  loadli.w r28,  -260(r30)
0003ac  8f800000  exp.f.rn r1, r1
0003b0  0f010100  exp.f.rn r2, r2
0003b4  8f810100  exp.f.rn r3, r3
0003b8  8f030200  exp.f.rn r7, r4
0003bc  6302affd  loadli.w r4,  -304(r30)
0003c0  0e105002  vmul.f.mz.rn vr0{mr1}, vr0, vr5
0003c4  8be02011  add.f.rn r1, r1, r18
0003c8  0b612111  add.f.rn r2, r2, r18
0003cc  8f001918  div.f.rn r1, r18, r1
0003d0  0f012918  div.f.rn r2, r18, r2
0003d4  67081ffc  storeli.w r1, -384(r30)
0003d8  8be02111  add.f.rn r1, r3, r18
0003dc  8f010200  exp.f.rn r3, r4
0003e0  0f020400  exp.f.rn r4, r8
0003e4  0f040500  exp.f.rn r8, r10
0003e8  67482ffc  storeli.w r2, -380(r30)
0003ec  0be12311  add.f.rn r2, r7, r18
0003f0  8f830400  exp.f.rn r7, r9
0003f4  8f840500  exp.f.rn r9, r11
0003f8  8f001918  div.f.rn r1, r18, r1
0003fc  0f012918  div.f.rn r2, r18, r2
000400  8be12111  add.f.rn r3, r3, r18
000404  0b622211  add.f.rn r4, r4, r18
000408  8be32311  add.f.rn r7, r7, r18
00040c  0b642411  add.f.rn r8, r8, r18
000410  8f013918  div.f.rn r3, r18, r3
000414  e7081ffc  storeli.w r1, -376(r30)
000418  8f004918  div.f.rn r1, r18, r4
00041c  0be22411  add.f.rn r4, r9, r18
000420  8f037918  div.f.rn r7, r18, r7
000424  0f048918  div.f.rn r8, r18, r8
000428  8f040e00  exp.f.rn r9, r28
00042c  e7482ffc  storeli.w r2, -372(r30)
000430  0f010600  exp.f.rn r2, r12
000434  67093ffc  storeli.w r3, -368(r30)
000438  8f014918  div.f.rn r3, r18, r4
00043c  0f820700  exp.f.rn r4, r15
000440  67491ffc  storeli.w r1, -364(r30)
000444  8f000700  exp.f.rn r1, r14
000448  e7097ffc  storeli.w r7, -360(r30)
00044c  8f030d00  exp.f.rn r7, r26
000450  e7498ffc  storeli.w r8, -356(r30)
000454  0f840d00  exp.f.rn r8, r27
000458  0b612111  add.f.rn r2, r2, r18
00045c  8be42411  add.f.rn r9, r9, r18
000460  0f012918  div.f.rn r2, r18, r2
000464  8f049918  div.f.rn r9, r18, r9
000468  670a3ffc  storeli.w r3, -352(r30)
00046c  8f810800  exp.f.rn r3, r17
000470  8be02011  add.f.rn r1, r1, r18
000474  0b622211  add.f.rn r4, r4, r18
000478  8be32311  add.f.rn r7, r7, r18
00047c  0b642411  add.f.rn r8, r8, r18
000480  8f001918  div.f.rn r1, r18, r1
000484  0f024918  div.f.rn r4, r18, r4
000488  8f037918  div.f.rn r7, r18, r7
00048c  0f048918  div.f.rn r8, r18, r8
000490  674a2ffc  storeli.w r2, -348(r30)
000494  e74b9ffc  storeli.w r9, -324(r30)
000498  8be12111  add.f.rn r3, r3, r18
00049c  8f013918  div.f.rn r3, r18, r3
0004a0  e70a1ffc  storeli.w r1, -344(r30)
0004a4  e74a4ffc  storeli.w r4, -340(r30)
0004a8  674b7ffc  storeli.w r7, -332(r30)
0004ac  e70b8ffc  storeli.w r8, -328(r30)
0004b0  670b3ffc  storeli.w r3, -336(r30)
0004b4  00a00000  mfence { lm }
0004b8  46106b02  vstore_mask16.mz vr6{mr1}, 0(r22)
0004bc  c2930a02  vload_mask16.mz vr7{mr1}, 0(r21)
0004c0  00a00000  mfence { lm }
0004c4  e3008ffe  loadli.w r1,  -192(r30)
0004c8  63418ffe  loadli.w r2,  -188(r30)
0004cc  e3019ffe  loadli.w r3,  -184(r30)
0004d0  63429ffe  loadli.w r4,  -180(r30)
0004d4  6344affe  loadli.w r8,  -172(r30)
0004d8  e304bffe  loadli.w r9,  -168(r30)
0004dc  6345bffe  loadli.w r10,  -164(r30)
0004e0  e305cffe  loadli.w r11,  -160(r30)
0004e4  6346cffe  loadli.w r12,  -156(r30)
0004e8  6307dffe  loadli.w r14,  -152(r30)
0004ec  e347dffe  loadli.w r15,  -148(r30)
0004f0  e308effe  loadli.w r17,  -144(r30)
0004f4  634deffe  loadli.w r26,  -140(r30)
0004f8  e30dfffe  loadli.w r27,  -136(r30)
0004fc  634efffe  loadli.w r28,  -132(r30)
000500  8f800000  exp.f.rn r1, r1
000504  0f010100  exp.f.rn r2, r2
000508  8f810100  exp.f.rn r3, r3
00050c  8f030200  exp.f.rn r7, r4
000510  6302affe  loadli.w r4,  -176(r30)
000514  8e907002  vmul.f.mz.rn vr1{mr1}, vr1, vr7
000518  8be02011  add.f.rn r1, r1, r18
00051c  0b612111  add.f.rn r2, r2, r18
000520  8f001918  div.f.rn r1, r18, r1
000524  0f012918  div.f.rn r2, r18, r2
000528  67001ffe  storeli.w r1, -256(r30)
00052c  8be02111  add.f.rn r1, r3, r18
000530  8f010200  exp.f.rn r3, r4
000534  0f020400  exp.f.rn r4, r8
000538  0f040500  exp.f.rn r8, r10
00053c  67402ffe  storeli.w r2, -252(r30)
000540  0be12311  add.f.rn r2, r7, r18
000544  8f830400  exp.f.rn r7, r9
000548  8f840500  exp.f.rn r9, r11
00054c  8f001918  div.f.rn r1, r18, r1
000550  0f012918  div.f.rn r2, r18, r2
000554  8be12111  add.f.rn r3, r3, r18
000558  0b622211  add.f.rn r4, r4, r18
00055c  8be32311  add.f.rn r7, r7, r18
000560  0b642411  add.f.rn r8, r8, r18
000564  8f013918  div.f.rn r3, r18, r3
000568  e7001ffe  storeli.w r1, -248(r30)
00056c  8f004918  div.f.rn r1, r18, r4
000570  0be22411  add.f.rn r4, r9, r18
000574  8f037918  div.f.rn r7, r18, r7
000578  0f048918  div.f.rn r8, r18, r8
00057c  8f040e00  exp.f.rn r9, r28
000580  e7402ffe  storeli.w r2, -244(r30)
000584  0f010600  exp.f.rn r2, r12
000588  67013ffe  storeli.w r3, -240(r30)
00058c  8f014918  div.f.rn r3, r18, r4
000590  0f820700  exp.f.rn r4, r15
000594  67411ffe  storeli.w r1, -236(r30)
000598  8f000700  exp.f.rn r1, r14
00059c  e7017ffe  storeli.w r7, -232(r30)
0005a0  8f030d00  exp.f.rn r7, r26
0005a4  e7418ffe  storeli.w r8, -228(r30)
0005a8  0f840d00  exp.f.rn r8, r27
0005ac  0b612111  add.f.rn r2, r2, r18
0005b0  8be42411  add.f.rn r9, r9, r18
0005b4  0f012918  div.f.rn r2, r18, r2
0005b8  8f049918  div.f.rn r9, r18, r9
0005bc  67023ffe  storeli.w r3, -224(r30)
0005c0  8f810800  exp.f.rn r3, r17
0005c4  8be02011  add.f.rn r1, r1, r18
0005c8  0b622211  add.f.rn r4, r4, r18
0005cc  8be32311  add.f.rn r7, r7, r18
0005d0  0b642411  add.f.rn r8, r8, r18
0005d4  8f001918  div.f.rn r1, r18, r1
0005d8  0f024918  div.f.rn r4, r18, r4
0005dc  8f037918  div.f.rn r7, r18, r7
0005e0  0f048918  div.f.rn r8, r18, r8
0005e4  67422ffe  storeli.w r2, -220(r30)
0005e8  e7439ffe  storeli.w r9, -196(r30)
0005ec  8be12111  add.f.rn r3, r3, r18
0005f0  8f013918  div.f.rn r3, r18, r3
0005f4  e7021ffe  storeli.w r1, -216(r30)
0005f8  e7424ffe  storeli.w r4, -212(r30)
0005fc  67437ffe  storeli.w r7, -204(r30)
000600  e7038ffe  storeli.w r8, -200(r30)
000604  67033ffe  storeli.w r3, -208(r30)
000608  00a00000  mfence { lm }
00060c  46104c02  vstore_mask16.mz vr4{mr1}, 0(r24)
000610  42930b02  vload_mask16.mz vr6{mr1}, 0(r23)
000614  00a00000  mfence { lm }
000618  e3008fff  loadli.w r1,  -64(r30)
00061c  63418fff  loadli.w r2,  -60(r30)
000620  e3019fff  loadli.w r3,  -56(r30)
000624  63429fff  loadli.w r4,  -52(r30)
000628  e304bfff  loadli.w r9,  -40(r30)
00062c  6345bfff  loadli.w r10,  -36(r30)
000630  e305cfff  loadli.w r11,  -32(r30)
000634  6346cfff  loadli.w r12,  -28(r30)
000638  6307dfff  loadli.w r14,  -24(r30)
00063c  e347dfff  loadli.w r15,  -20(r30)
000640  e308efff  loadli.w r17,  -16(r30)
000644  634defff  loadli.w r26,  -12(r30)
000648  e30dffff  loadli.w r27,  -8(r30)
00064c  634effff  loadli.w r28,  -4(r30)
000650  8f800000  exp.f.rn r1, r1
000654  0f010100  exp.f.rn r2, r2
000658  8f830100  exp.f.rn r7, r3
00065c  0f040200  exp.f.rn r8, r4
000660  e301afff  loadli.w r3,  -48(r30)
000664  6342afff  loadli.w r4,  -44(r30)
000668  0e116102  vmul.f.mz.rn vr2{mr1}, vr2, vr6
00066c  8f810100  exp.f.rn r3, r3
000670  0f020200  exp.f.rn r4, r4
000674  8be02011  add.f.rn r1, r1, r18
000678  0b612111  add.f.rn r2, r2, r18
00067c  8be12111  add.f.rn r3, r3, r18
000680  0b622211  add.f.rn r4, r4, r18
000684  8f001918  div.f.rn r1, r18, r1
000688  0f012918  div.f.rn r2, r18, r2
00068c  67081ffe  storeli.w r1, -128(r30)
000690  8be02311  add.f.rn r1, r7, r18
000694  8f830400  exp.f.rn r7, r9
000698  8f840500  exp.f.rn r9, r11
00069c  67482ffe  storeli.w r2, -124(r30)
0006a0  0b612411  add.f.rn r2, r8, r18
0006a4  0f040500  exp.f.rn r8, r10
0006a8  9f058ffc  addli r11, r30, -448
0006ac  8f001918  div.f.rn r1, r18, r1
0006b0  0f012918  div.f.rn r2, r18, r2
0006b4  8be32311  add.f.rn r7, r7, r18
0006b8  0b642411  add.f.rn r8, r8, r18
0006bc  8be42411  add.f.rn r9, r9, r18
0006c0  e7081ffe  storeli.w r1, -120(r30)
0006c4  8f003918  div.f.rn r1, r18, r3
0006c8  8f014918  div.f.rn r3, r18, r4
0006cc  0f027918  div.f.rn r4, r18, r7
0006d0  8f038918  div.f.rn r7, r18, r8
0006d4  0f049918  div.f.rn r8, r18, r9
0006d8  8f040e00  exp.f.rn r9, r28
0006dc  e7482ffe  storeli.w r2, -116(r30)
0006e0  0f010600  exp.f.rn r2, r12
0006e4  67091ffe  storeli.w r1, -112(r30)
0006e8  8f000700  exp.f.rn r1, r14
0006ec  67493ffe  storeli.w r3, -108(r30)
0006f0  8f810700  exp.f.rn r3, r15
0006f4  e7094ffe  storeli.w r4, -104(r30)
0006f8  0f820800  exp.f.rn r4, r17
0006fc  e7497ffe  storeli.w r7, -100(r30)
000700  8f030d00  exp.f.rn r7, r26
000704  670a8ffe  storeli.w r8, -96(r30)
000708  0f840d00  exp.f.rn r8, r27
00070c  0b612111  add.f.rn r2, r2, r18
000710  8be42411  add.f.rn r9, r9, r18
000714  0f012918  div.f.rn r2, r18, r2
000718  8f049918  div.f.rn r9, r18, r9
00071c  8be02011  add.f.rn r1, r1, r18
000720  8be12111  add.f.rn r3, r3, r18
000724  0b622211  add.f.rn r4, r4, r18
000728  8be32311  add.f.rn r7, r7, r18
00072c  0b642411  add.f.rn r8, r8, r18
000730  8f001918  div.f.rn r1, r18, r1
000734  8f013918  div.f.rn r3, r18, r3
000738  0f024918  div.f.rn r4, r18, r4
00073c  8f037918  div.f.rn r7, r18, r7
000740  0f048918  div.f.rn r8, r18, r8
000744  674a2ffe  storeli.w r2, -92(r30)
000748  e74b9ffe  storeli.w r9, -68(r30)
00074c  e70a1ffe  storeli.w r1, -88(r30)
000750  e74a3ffe  storeli.w r3, -84(r30)
000754  670b4ffe  storeli.w r4, -80(r30)
000758  674b7ffe  storeli.w r7, -76(r30)
00075c  e70b8ffe  storeli.w r8, -72(r30)
000760  9b801200  andi r1, r5, 1
000764  9f020000  addli r5, zero, 0
000768  00a00000  mfence { lm }
00076c  42920c02  vload_mask16.mz vr4{mr1}, 0(r25)
000770  8e914102  vmul.f.mz.rn vr3{mr1}, vr3, vr4
000774  06120000  vfloat2fp16_l.rn vr4, vr0
000778  06d20000  vfloat2fp16_h.rn vr4, vr1
00077c  06100100  vfloat2fp16_l.rn vr0, vr2
000780  06d00100  vfloat2fp16_h.rn vr0, vr3
000784  46104302  vstore_mask16.mz vr4{mr1}, 0(r6)
000788  46140302  vstore_mask16.mz vr0{mr1}, 64(r6)
00078c  1f230000  addli r6, zero, 2
000790  00a00000  mfence { lm }
000794  bba800fc  bneq r1, zero, -1496
000798  6b510f01  load.d r[3:4], 16(r30)
00079c  6b520fbf  load.d r[5:6], -1040(r30)
0007a0  ab0000f0  lui r1, 983040
0007a4  0b214110  add.ul r[3:4], r[3:4], r[5:6]
0007a8  1f020002  addli r4, zero, 256
0007ac  97101200  or r1, r4, r1
0007b0  ff300101  s_lm2gm r1, r16, 0(r[3:4])
0007b4  e341fff7  loadli.w r3,  -1028(r30)
0007b8  e300dff7  loadli.w r1,  -1048(r30)
0007bc  00a00000  mfence { lm }
0007c0  8b911110  add.s r3, r3, r1
0007c4  e340dff7  loadli.w r1,  -1044(r30)
0007c8  3f8611fc  blt.s r3, r1, -1664
0007cc  9f0e8ff7  addli sp, r30, -1088
0007d0  9f8e8e08  addli sp, sp, 1088
0007d4  00a00300  mfence { lm, sm, gm }
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
