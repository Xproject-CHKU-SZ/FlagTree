; SHA-256 fa57dab2fdedfd275838838d9ab2f2e3f6603ebe37bc80ce5532da4f1df2476a
; P800 Cluster · XTDK LLVM 19 · 641 / 641 words decoded
; bound names: triton_unk_fused_0
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
000078  9f095000  addli r19, zero, 40
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
0000e4  e3004f00  loadli.w r1,  32(r30)
0000e8  e3413f00  loadli.w r3,  28(r30)
0000ec  63414f00  loadli.w r2,  36(r30)
0000f0  0b923020  mul.s r4, r1, r3
0000f4  80510002  load_param_i r3, 0
0000f8  8b102220  mul.s r1, r4, r2
0000fc  e74e1ff2  storeli.w r1, -1556(r30)
000100  cbda3002  ble.s r1, r3, 1716
000104  80d00002  load_param_i r1, 1
000108  80320002  core_id r5
00010c  9f070ff4  addli r15, r30, -1536
000110  1f020004  addli r4, zero, 512
000114  9f080ff8  addli r17, r30, -1024
000118  9f058ffc  addli r11, r30, -448
00011c  ab09803f  lui r19, 260096
000120  1f0a0ffc  addli r20, r30, -512
000124  9f0a8ffd  addli r21, r30, -320
000128  1f0b0ffd  addli r22, r30, -384
00012c  9f0b8ffe  addli r23, r30, -192
000130  1f0c0ffe  addli r24, r30, -256
000134  9f0c8fff  addli r25, r30, -64
000138  1f0d0fff  addli r26, r30, -128
00013c  e70e1ff2  storeli.w r1, -1560(r30)
000140  9bb07200  slli r1, r5, 7
000144  674e1ff2  storeli.w r1, -1564(r30)
000148  e3404f00  loadli.w r1,  36(r30)
00014c  e74f3ff2  storeli.w r3, -1540(r30)
000150  8b921130  div.s r5, r3, r1
000154  e3004f00  loadli.w r1,  32(r30)
000158  8b921230  div.s r5, r5, r1
00015c  e340cff3  loadli.w r1,  -1564(r30)
000160  9bb2d200  slli r5, r5, 13
000164  8b921210  add.s r5, r5, r1
000168  9f000010  addli r1, zero, 2048
00016c  0b931238  mod.s r6, r5, r1
000170  b3930228  sext_int2long r[8:9], r5
000174  9f200000  addli r1, zero, 2
000178  ab0200f0  lui r5, 983040
00017c  17b61302  sll.d r[13:14], r[8:9], r1
000180  97125200  or r5, r4, r5
000184  7338cf9e  store.d r[13:14], -1552(r30)
000188  b3140328  sext_int2long r[10:11], r6
00018c  2b0300f0  lui r6, 983040
000190  97b31402  sll.d r[8:9], r[10:11], r1
000194  eb500f00  load.d r[2:3], 0(r30)
000198  17136200  or r6, r4, r6
00019c  8ba4c010  add.ul r[10:11], r[2:3], r[13:14]
0001a0  eb508f00  load.d r[2:3], 8(r30)
0001a4  ffa2f400  l_gm2lm r5, r15, 0(r[10:11])
0001a8  9f120000  addli r5, zero, 1
0001ac  8ba37010  add.ul r[8:9], r[2:3], r[8:9]
0001b0  7fa31301  l_gm2lm r6, r17, 0(r[8:9])
0001b4  1f030000  addli r6, zero, 0
0001b8  00a00000  mfence { lm }
0001bc  1b336300  slli r6, r6, 6
0001c0  8b936710  add.s r7, r15, r6
0001c4  0b936810  add.s r6, r17, r6
0001c8  42900302  vload_mask16.mz vr0{mr1}, 0(r7)
0001cc  c2908302  vload_mask16.mz vr1{mr1}, 64(r7)
0001d0  42110302  vload_mask16.mz vr2{mr1}, 0(r6)
0001d4  c2910303  vload_mask16.mz vr3{mr1}, 128(r7)
0001d8  42928303  vload_mask16.mz vr4{mr1}, 192(r7)
0001dc  c2128302  vload_mask16.mz vr5{mr1}, 64(r6)
0001e0  42130303  vload_mask16.mz vr6{mr1}, 128(r6)
0001e4  c2138303  vload_mask16.mz vr7{mr1}, 192(r6)
0001e8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0001ec  96905002  vadd.f.mz.rn vr1{mr1}, vr1, vr5
0001f0  9a120002  vsub.f.mz.rn vr5{mr1}, zero, vr0
0001f4  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
0001f8  16916102  vadd.f.mz.rn vr2{mr1}, vr3, vr6
0001fc  96117202  vadd.f.mz.rn vr3{mr1}, vr4, vr7
000200  9a131002  vsub.f.mz.rn vr7{mr1}, zero, vr1
000204  1a132002  vsub.f.mz.rn vr6{mr1}, zero, vr2
000208  1a123002  vsub.f.mz.rn vr4{mr1}, zero, vr3
00020c  00a00000  mfence { lm }
000210  e3038ffc  loadli.w r7,  -448(r30)
000214  63448ffc  loadli.w r8,  -444(r30)
000218  e3049ffc  loadli.w r9,  -440(r30)
00021c  63459ffc  loadli.w r10,  -436(r30)
000220  e340affc  loadli.w r1,  -428(r30)
000224  6301bffc  loadli.w r2,  -424(r30)
000228  e305cffc  loadli.w r11,  -416(r30)
00022c  e306affc  loadli.w r13,  -432(r30)
000230  6346cffc  loadli.w r12,  -412(r30)
000234  e301fffc  loadli.w r3,  -392(r30)
000238  6347bffc  loadli.w r14,  -420(r30)
00023c  6302dffc  loadli.w r4,  -408(r30)
000240  6348dffc  loadli.w r16,  -404(r30)
000244  e30deffc  loadli.w r27,  -400(r30)
000248  634eeffc  loadli.w r28,  -396(r30)
00024c  6349fffc  loadli.w r18,  -388(r30)
000250  8f830300  exp.f.rn r7, r7
000254  0f040400  exp.f.rn r8, r8
000258  8f840400  exp.f.rn r9, r9
00025c  0f050500  exp.f.rn r10, r10
000260  8f800000  exp.f.rn r1, r1
000264  0f010100  exp.f.rn r2, r2
000268  8f850500  exp.f.rn r11, r11
00026c  8f810100  exp.f.rn r3, r3
000270  8be33311  add.f.rn r7, r7, r19
000274  0b643411  add.f.rn r8, r8, r19
000278  8be03011  add.f.rn r1, r1, r19
00027c  0b613111  add.f.rn r2, r2, r19
000280  8be13111  add.f.rn r3, r3, r19
000284  8f837918  div.f.rn r7, r19, r7
000288  0f848918  div.f.rn r8, r19, r8
00028c  8f801918  div.f.rn r1, r19, r1
000290  0f812918  div.f.rn r2, r19, r2
000294  8f813918  div.f.rn r3, r19, r3
000298  67007ffc  storeli.w r7, -512(r30)
00029c  8be33411  add.f.rn r7, r9, r19
0002a0  8f840600  exp.f.rn r9, r13
0002a4  67408ffc  storeli.w r8, -508(r30)
0002a8  0b643511  add.f.rn r8, r10, r19
0002ac  0f050700  exp.f.rn r10, r14
0002b0  67411ffc  storeli.w r1, -492(r30)
0002b4  8f000200  exp.f.rn r1, r4
0002b8  e7012ffc  storeli.w r2, -488(r30)
0002bc  0f010800  exp.f.rn r2, r16
0002c0  e7033ffc  storeli.w r3, -456(r30)
0002c4  8f837918  div.f.rn r7, r19, r7
0002c8  0f848918  div.f.rn r8, r19, r8
0002cc  8be43411  add.f.rn r9, r9, r19
0002d0  0b653511  add.f.rn r10, r10, r19
0002d4  8be03011  add.f.rn r1, r1, r19
0002d8  0b613111  add.f.rn r2, r2, r19
0002dc  e7007ffc  storeli.w r7, -504(r30)
0002e0  8be33511  add.f.rn r7, r11, r19
0002e4  8f849918  div.f.rn r9, r19, r9
0002e8  e7408ffc  storeli.w r8, -500(r30)
0002ec  0f040600  exp.f.rn r8, r12
0002f0  0f85a918  div.f.rn r10, r19, r10
0002f4  8f801918  div.f.rn r1, r19, r1
0002f8  0f812918  div.f.rn r2, r19, r2
0002fc  8f837918  div.f.rn r7, r19, r7
000300  0b623411  add.f.rn r4, r8, r19
000304  0f040e00  exp.f.rn r8, r28
000308  67019ffc  storeli.w r9, -496(r30)
00030c  8f040900  exp.f.rn r9, r18
000310  e741affc  storeli.w r10, -484(r30)
000314  e7021ffc  storeli.w r1, -472(r30)
000318  e7422ffc  storeli.w r2, -468(r30)
00031c  67027ffc  storeli.w r7, -480(r30)
000320  8f830d00  exp.f.rn r7, r27
000324  0f824918  div.f.rn r4, r19, r4
000328  0b643411  add.f.rn r8, r8, r19
00032c  8be43411  add.f.rn r9, r9, r19
000330  8be33311  add.f.rn r7, r7, r19
000334  0f848918  div.f.rn r8, r19, r8
000338  8f849918  div.f.rn r9, r19, r9
00033c  67424ffc  storeli.w r4, -476(r30)
000340  8f837918  div.f.rn r7, r19, r7
000344  67438ffc  storeli.w r8, -460(r30)
000348  e7439ffc  storeli.w r9, -452(r30)
00034c  67037ffc  storeli.w r7, -464(r30)
000350  00a00000  mfence { lm }
000354  46907a02  vstore_mask16.mz vr7{mr1}, 0(r21)
000358  c2120a02  vload_mask16.mz vr5{mr1}, 0(r20)
00035c  00a00000  mfence { lm }
000360  e3008ffd  loadli.w r1,  -320(r30)
000364  63418ffd  loadli.w r2,  -316(r30)
000368  e3019ffd  loadli.w r3,  -312(r30)
00036c  63429ffd  loadli.w r4,  -308(r30)
000370  6344affd  loadli.w r8,  -300(r30)
000374  e304bffd  loadli.w r9,  -296(r30)
000378  6345bffd  loadli.w r10,  -292(r30)
00037c  e305cffd  loadli.w r11,  -288(r30)
000380  6346cffd  loadli.w r12,  -284(r30)
000384  e306dffd  loadli.w r13,  -280(r30)
000388  6347dffd  loadli.w r14,  -276(r30)
00038c  6308effd  loadli.w r16,  -272(r30)
000390  6349effd  loadli.w r18,  -268(r30)
000394  e30dfffd  loadli.w r27,  -264(r30)
000398  634efffd  loadli.w r28,  -260(r30)
00039c  8f800000  exp.f.rn r1, r1
0003a0  0f010100  exp.f.rn r2, r2
0003a4  8f810100  exp.f.rn r3, r3
0003a8  8f030200  exp.f.rn r7, r4
0003ac  6302affd  loadli.w r4,  -304(r30)
0003b0  0e105002  vmul.f.mz.rn vr0{mr1}, vr0, vr5
0003b4  8be03011  add.f.rn r1, r1, r19
0003b8  0b613111  add.f.rn r2, r2, r19
0003bc  8f801918  div.f.rn r1, r19, r1
0003c0  0f812918  div.f.rn r2, r19, r2
0003c4  67081ffc  storeli.w r1, -384(r30)
0003c8  8be03111  add.f.rn r1, r3, r19
0003cc  8f010200  exp.f.rn r3, r4
0003d0  0f020400  exp.f.rn r4, r8
0003d4  0f040500  exp.f.rn r8, r10
0003d8  67482ffc  storeli.w r2, -380(r30)
0003dc  0be13311  add.f.rn r2, r7, r19
0003e0  8f830400  exp.f.rn r7, r9
0003e4  8f840500  exp.f.rn r9, r11
0003e8  8f801918  div.f.rn r1, r19, r1
0003ec  0f812918  div.f.rn r2, r19, r2
0003f0  8be13111  add.f.rn r3, r3, r19
0003f4  0b623211  add.f.rn r4, r4, r19
0003f8  8be33311  add.f.rn r7, r7, r19
0003fc  0b643411  add.f.rn r8, r8, r19
000400  8f813918  div.f.rn r3, r19, r3
000404  e7081ffc  storeli.w r1, -376(r30)
000408  8f804918  div.f.rn r1, r19, r4
00040c  0be23411  add.f.rn r4, r9, r19
000410  8f837918  div.f.rn r7, r19, r7
000414  0f848918  div.f.rn r8, r19, r8
000418  8f040e00  exp.f.rn r9, r28
00041c  e7482ffc  storeli.w r2, -372(r30)
000420  0f010600  exp.f.rn r2, r12
000424  67093ffc  storeli.w r3, -368(r30)
000428  8f814918  div.f.rn r3, r19, r4
00042c  0f020700  exp.f.rn r4, r14
000430  67491ffc  storeli.w r1, -364(r30)
000434  8f800600  exp.f.rn r1, r13
000438  e7097ffc  storeli.w r7, -360(r30)
00043c  8f030900  exp.f.rn r7, r18
000440  e7498ffc  storeli.w r8, -356(r30)
000444  0f840d00  exp.f.rn r8, r27
000448  0b613111  add.f.rn r2, r2, r19
00044c  8be43411  add.f.rn r9, r9, r19
000450  0f812918  div.f.rn r2, r19, r2
000454  8f849918  div.f.rn r9, r19, r9
000458  670a3ffc  storeli.w r3, -352(r30)
00045c  8f010800  exp.f.rn r3, r16
000460  8be03011  add.f.rn r1, r1, r19
000464  0b623211  add.f.rn r4, r4, r19
000468  8be33311  add.f.rn r7, r7, r19
00046c  0b643411  add.f.rn r8, r8, r19
000470  8f801918  div.f.rn r1, r19, r1
000474  0f824918  div.f.rn r4, r19, r4
000478  8f837918  div.f.rn r7, r19, r7
00047c  0f848918  div.f.rn r8, r19, r8
000480  674a2ffc  storeli.w r2, -348(r30)
000484  e74b9ffc  storeli.w r9, -324(r30)
000488  8be13111  add.f.rn r3, r3, r19
00048c  8f813918  div.f.rn r3, r19, r3
000490  e70a1ffc  storeli.w r1, -344(r30)
000494  e74a4ffc  storeli.w r4, -340(r30)
000498  674b7ffc  storeli.w r7, -332(r30)
00049c  e70b8ffc  storeli.w r8, -328(r30)
0004a0  670b3ffc  storeli.w r3, -336(r30)
0004a4  00a00000  mfence { lm }
0004a8  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
0004ac  c2130b02  vload_mask16.mz vr7{mr1}, 0(r22)
0004b0  00a00000  mfence { lm }
0004b4  e3008ffe  loadli.w r1,  -192(r30)
0004b8  63418ffe  loadli.w r2,  -188(r30)
0004bc  e3019ffe  loadli.w r3,  -184(r30)
0004c0  63429ffe  loadli.w r4,  -180(r30)
0004c4  6344affe  loadli.w r8,  -172(r30)
0004c8  e304bffe  loadli.w r9,  -168(r30)
0004cc  6345bffe  loadli.w r10,  -164(r30)
0004d0  e305cffe  loadli.w r11,  -160(r30)
0004d4  6346cffe  loadli.w r12,  -156(r30)
0004d8  e306dffe  loadli.w r13,  -152(r30)
0004dc  6347dffe  loadli.w r14,  -148(r30)
0004e0  6308effe  loadli.w r16,  -144(r30)
0004e4  6349effe  loadli.w r18,  -140(r30)
0004e8  e30dfffe  loadli.w r27,  -136(r30)
0004ec  634efffe  loadli.w r28,  -132(r30)
0004f0  8f800000  exp.f.rn r1, r1
0004f4  0f010100  exp.f.rn r2, r2
0004f8  8f810100  exp.f.rn r3, r3
0004fc  8f030200  exp.f.rn r7, r4
000500  6302affe  loadli.w r4,  -176(r30)
000504  8e907002  vmul.f.mz.rn vr1{mr1}, vr1, vr7
000508  8be03011  add.f.rn r1, r1, r19
00050c  0b613111  add.f.rn r2, r2, r19
000510  8f801918  div.f.rn r1, r19, r1
000514  0f812918  div.f.rn r2, r19, r2
000518  67001ffe  storeli.w r1, -256(r30)
00051c  8be03111  add.f.rn r1, r3, r19
000520  8f010200  exp.f.rn r3, r4
000524  0f020400  exp.f.rn r4, r8
000528  0f040500  exp.f.rn r8, r10
00052c  67402ffe  storeli.w r2, -252(r30)
000530  0be13311  add.f.rn r2, r7, r19
000534  8f830400  exp.f.rn r7, r9
000538  8f840500  exp.f.rn r9, r11
00053c  8f801918  div.f.rn r1, r19, r1
000540  0f812918  div.f.rn r2, r19, r2
000544  8be13111  add.f.rn r3, r3, r19
000548  0b623211  add.f.rn r4, r4, r19
00054c  8be33311  add.f.rn r7, r7, r19
000550  0b643411  add.f.rn r8, r8, r19
000554  8f813918  div.f.rn r3, r19, r3
000558  e7001ffe  storeli.w r1, -248(r30)
00055c  8f804918  div.f.rn r1, r19, r4
000560  0be23411  add.f.rn r4, r9, r19
000564  8f837918  div.f.rn r7, r19, r7
000568  0f848918  div.f.rn r8, r19, r8
00056c  8f040e00  exp.f.rn r9, r28
000570  e7402ffe  storeli.w r2, -244(r30)
000574  0f010600  exp.f.rn r2, r12
000578  67013ffe  storeli.w r3, -240(r30)
00057c  8f814918  div.f.rn r3, r19, r4
000580  0f020700  exp.f.rn r4, r14
000584  67411ffe  storeli.w r1, -236(r30)
000588  8f800600  exp.f.rn r1, r13
00058c  e7017ffe  storeli.w r7, -232(r30)
000590  8f030900  exp.f.rn r7, r18
000594  e7418ffe  storeli.w r8, -228(r30)
000598  0f840d00  exp.f.rn r8, r27
00059c  0b613111  add.f.rn r2, r2, r19
0005a0  8be43411  add.f.rn r9, r9, r19
0005a4  0f812918  div.f.rn r2, r19, r2
0005a8  8f849918  div.f.rn r9, r19, r9
0005ac  67023ffe  storeli.w r3, -224(r30)
0005b0  8f010800  exp.f.rn r3, r16
0005b4  8be03011  add.f.rn r1, r1, r19
0005b8  0b623211  add.f.rn r4, r4, r19
0005bc  8be33311  add.f.rn r7, r7, r19
0005c0  0b643411  add.f.rn r8, r8, r19
0005c4  8f801918  div.f.rn r1, r19, r1
0005c8  0f824918  div.f.rn r4, r19, r4
0005cc  8f837918  div.f.rn r7, r19, r7
0005d0  0f848918  div.f.rn r8, r19, r8
0005d4  67422ffe  storeli.w r2, -220(r30)
0005d8  e7439ffe  storeli.w r9, -196(r30)
0005dc  8be13111  add.f.rn r3, r3, r19
0005e0  8f813918  div.f.rn r3, r19, r3
0005e4  e7021ffe  storeli.w r1, -216(r30)
0005e8  e7424ffe  storeli.w r4, -212(r30)
0005ec  67437ffe  storeli.w r7, -204(r30)
0005f0  e7038ffe  storeli.w r8, -200(r30)
0005f4  67033ffe  storeli.w r3, -208(r30)
0005f8  00a00000  mfence { lm }
0005fc  46904c02  vstore_mask16.mz vr4{mr1}, 0(r25)
000600  42130c02  vload_mask16.mz vr6{mr1}, 0(r24)
000604  00a00000  mfence { lm }
000608  e3008fff  loadli.w r1,  -64(r30)
00060c  63418fff  loadli.w r2,  -60(r30)
000610  e3019fff  loadli.w r3,  -56(r30)
000614  63429fff  loadli.w r4,  -52(r30)
000618  e304bfff  loadli.w r9,  -40(r30)
00061c  6345bfff  loadli.w r10,  -36(r30)
000620  e305cfff  loadli.w r11,  -32(r30)
000624  6346cfff  loadli.w r12,  -28(r30)
000628  e306dfff  loadli.w r13,  -24(r30)
00062c  6347dfff  loadli.w r14,  -20(r30)
000630  6308efff  loadli.w r16,  -16(r30)
000634  6349efff  loadli.w r18,  -12(r30)
000638  e30dffff  loadli.w r27,  -8(r30)
00063c  634effff  loadli.w r28,  -4(r30)
000640  8f800000  exp.f.rn r1, r1
000644  0f010100  exp.f.rn r2, r2
000648  8f830100  exp.f.rn r7, r3
00064c  0f040200  exp.f.rn r8, r4
000650  e301afff  loadli.w r3,  -48(r30)
000654  6342afff  loadli.w r4,  -44(r30)
000658  0e116102  vmul.f.mz.rn vr2{mr1}, vr2, vr6
00065c  8f810100  exp.f.rn r3, r3
000660  0f020200  exp.f.rn r4, r4
000664  8be03011  add.f.rn r1, r1, r19
000668  0b613111  add.f.rn r2, r2, r19
00066c  8be13111  add.f.rn r3, r3, r19
000670  0b623211  add.f.rn r4, r4, r19
000674  8f801918  div.f.rn r1, r19, r1
000678  0f812918  div.f.rn r2, r19, r2
00067c  67081ffe  storeli.w r1, -128(r30)
000680  8be03311  add.f.rn r1, r7, r19
000684  8f830400  exp.f.rn r7, r9
000688  8f840500  exp.f.rn r9, r11
00068c  67482ffe  storeli.w r2, -124(r30)
000690  0b613411  add.f.rn r2, r8, r19
000694  0f040500  exp.f.rn r8, r10
000698  9f058ffc  addli r11, r30, -448
00069c  8f801918  div.f.rn r1, r19, r1
0006a0  0f812918  div.f.rn r2, r19, r2
0006a4  8be33311  add.f.rn r7, r7, r19
0006a8  0b643411  add.f.rn r8, r8, r19
0006ac  8be43411  add.f.rn r9, r9, r19
0006b0  e7081ffe  storeli.w r1, -120(r30)
0006b4  8f803918  div.f.rn r1, r19, r3
0006b8  8f814918  div.f.rn r3, r19, r4
0006bc  0f827918  div.f.rn r4, r19, r7
0006c0  8f838918  div.f.rn r7, r19, r8
0006c4  0f849918  div.f.rn r8, r19, r9
0006c8  8f040e00  exp.f.rn r9, r28
0006cc  e7482ffe  storeli.w r2, -116(r30)
0006d0  0f010600  exp.f.rn r2, r12
0006d4  67091ffe  storeli.w r1, -112(r30)
0006d8  8f800600  exp.f.rn r1, r13
0006dc  67493ffe  storeli.w r3, -108(r30)
0006e0  8f010700  exp.f.rn r3, r14
0006e4  e7094ffe  storeli.w r4, -104(r30)
0006e8  0f020800  exp.f.rn r4, r16
0006ec  e7497ffe  storeli.w r7, -100(r30)
0006f0  8f030900  exp.f.rn r7, r18
0006f4  670a8ffe  storeli.w r8, -96(r30)
0006f8  0f840d00  exp.f.rn r8, r27
0006fc  0b613111  add.f.rn r2, r2, r19
000700  8be43411  add.f.rn r9, r9, r19
000704  0f812918  div.f.rn r2, r19, r2
000708  8f849918  div.f.rn r9, r19, r9
00070c  8be03011  add.f.rn r1, r1, r19
000710  8be13111  add.f.rn r3, r3, r19
000714  0b623211  add.f.rn r4, r4, r19
000718  8be33311  add.f.rn r7, r7, r19
00071c  0b643411  add.f.rn r8, r8, r19
000720  8f801918  div.f.rn r1, r19, r1
000724  8f813918  div.f.rn r3, r19, r3
000728  0f824918  div.f.rn r4, r19, r4
00072c  8f837918  div.f.rn r7, r19, r7
000730  0f848918  div.f.rn r8, r19, r8
000734  674a2ffe  storeli.w r2, -92(r30)
000738  e74b9ffe  storeli.w r9, -68(r30)
00073c  e70a1ffe  storeli.w r1, -88(r30)
000740  e74a3ffe  storeli.w r3, -84(r30)
000744  670b4ffe  storeli.w r4, -80(r30)
000748  674b7ffe  storeli.w r7, -76(r30)
00074c  e70b8ffe  storeli.w r8, -72(r30)
000750  9b801200  andi r1, r5, 1
000754  9f020000  addli r5, zero, 0
000758  00a00000  mfence { lm }
00075c  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
000760  42120d02  vload_mask16.mz vr4{mr1}, 0(r26)
000764  46141302  vstore_mask16.mz vr1{mr1}, 64(r6)
000768  46182302  vstore_mask16.mz vr2{mr1}, 128(r6)
00076c  8e914102  vmul.f.mz.rn vr3{mr1}, vr3, vr4
000770  461c3302  vstore_mask16.mz vr3{mr1}, 192(r6)
000774  1f430000  addli r6, zero, 4
000778  00a00000  mfence { lm }
00077c  3b8900fc  bneq r1, zero, -1472
000780  6b510f01  load.d r[3:4], 16(r30)
000784  6b520f9f  load.d r[5:6], -1552(r30)
000788  ab0000f0  lui r1, 983040
00078c  0b214110  add.ul r[3:4], r[3:4], r[5:6]
000790  1f020004  addli r4, zero, 512
000794  97101200  or r1, r4, r1
000798  ff301101  s_lm2gm r1, r17, 0(r[3:4])
00079c  e341fff3  loadli.w r3,  -1540(r30)
0007a0  e300dff3  loadli.w r1,  -1560(r30)
0007a4  00a00000  mfence { lm }
0007a8  8b911110  add.s r3, r3, r1
0007ac  e340dff3  loadli.w r1,  -1556(r30)
0007b0  3fe611fc  blt.s r3, r1, -1640
0007b4  9f0e8ff3  addli sp, r30, -1600
0007b8  9f8e8e0c  addli sp, sp, 1600
0007bc  00a00300  mfence { lm, sm, gm }
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
