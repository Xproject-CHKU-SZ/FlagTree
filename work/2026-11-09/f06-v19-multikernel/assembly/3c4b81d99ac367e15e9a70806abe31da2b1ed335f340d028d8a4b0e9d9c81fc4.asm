; SHA-256 3c4b81d99ac367e15e9a70806abe31da2b1ed335f340d028d8a4b0e9d9c81fc4
; P800 Cluster · XTDK LLVM 19 · 636 / 636 words decoded
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
0000dc  9f8e0ef3  addli sp, sp, -1664
0000e0  1f8f8e0c  addli r30, sp, 1600
0000e4  e3403f00  loadli.w r1,  28(r30)
0000e8  e3013f00  loadli.w r3,  24(r30)
0000ec  63014f00  loadli.w r2,  32(r30)
0000f0  0b923020  mul.s r4, r1, r3
0000f4  80510002  load_param_i r3, 0
0000f8  8b102220  mul.s r1, r4, r2
0000fc  e74e1ff2  storeli.w r1, -1556(r30)
000100  cb8a3002  ble.s r1, r3, 1696
000104  80d00002  load_param_i r1, 1
000108  80320002  core_id r5
00010c  1f070ff4  addli r14, r30, -1536
000110  9f070004  addli r15, zero, 512
000114  9f080ff8  addli r17, r30, -1024
000118  1f028ffc  addli r4, r30, -448
00011c  ab09803f  lui r19, 260096
000120  e70e1ff2  storeli.w r1, -1560(r30)
000124  9bb08200  slli r1, r5, 8
000128  674e1ff2  storeli.w r1, -1564(r30)
00012c  e3004f00  loadli.w r1,  32(r30)
000130  e74f3ff2  storeli.w r3, -1540(r30)
000134  9f0a0ffc  addli r21, r30, -512
000138  1f0b8ffd  addli r22, r30, -320
00013c  9f0b0ffd  addli r23, r30, -384
000140  1f0c8ffe  addli r24, r30, -192
000144  9f0c0ffe  addli r25, r30, -256
000148  1f0d8fff  addli r26, r30, -64
00014c  8b921130  div.s r5, r3, r1
000150  e3403f00  loadli.w r1,  28(r30)
000154  8b921230  div.s r5, r5, r1
000158  e340cff3  loadli.w r1,  -1564(r30)
00015c  9bb2e200  slli r5, r5, 14
000160  8b921210  add.s r5, r5, r1
000164  9f000010  addli r1, zero, 2048
000168  0b931238  mod.s r6, r5, r1
00016c  b3930228  sext_int2long r[8:9], r5
000170  9f100000  addli r1, zero, 1
000174  ab0200f0  lui r5, 983040
000178  97b51302  sll.d r[12:13], r[8:9], r1
00017c  97925700  or r5, r15, r5
000180  7338bf9e  store.d r[12:13], -1552(r30)
000184  b3140328  sext_int2long r[10:11], r6
000188  2b0300f0  lui r6, 983040
00018c  97b31402  sll.d r[8:9], r[10:11], r1
000190  eb500f00  load.d r[2:3], 0(r30)
000194  17936700  or r6, r15, r6
000198  8ba4b010  add.ul r[10:11], r[2:3], r[12:13]
00019c  eb508f00  load.d r[2:3], 8(r30)
0001a0  ffa2e400  l_gm2lm r5, r14, 0(r[10:11])
0001a4  9f020000  addli r5, zero, 0
0001a8  8ba37010  add.ul r[8:9], r[2:3], r[8:9]
0001ac  7fa31301  l_gm2lm r6, r17, 0(r[8:9])
0001b0  00a00000  mfence { lm }
0001b4  8b135710  add.s r7, r14, r5
0001b8  0b935810  add.s r6, r17, r5
0001bc  9f820201  addli r5, r5, 128
0001c0  42900302  vload_mask16.mz vr0{mr1}, 0(r7)
0001c4  c2908302  vload_mask16.mz vr1{mr1}, 64(r7)
0001c8  42110302  vload_mask16.mz vr2{mr1}, 0(r6)
0001cc  c2118302  vload_mask16.mz vr3{mr1}, 64(r6)
0001d0  96c13002  vadd.hf.mz.rn vr3{mr1}, vr1, vr3
0001d4  16422002  vadd.hf.mz.rn vr4{mr1}, vr0, vr2
0001d8  06310200  vfp162float_l.rn vr2, vr4
0001dc  9a122002  vsub.f.mz.rn vr5{mr1}, zero, vr2
0001e0  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
0001e4  06b00100  vfp162float_l.rn vr0, vr3
0001e8  86f00100  vfp162float_h.rn vr1, vr3
0001ec  1a130002  vsub.f.mz.rn vr6{mr1}, zero, vr0
0001f0  86710200  vfp162float_h.rn vr3, vr4
0001f4  9a133002  vsub.f.mz.rn vr7{mr1}, zero, vr3
0001f8  1a121002  vsub.f.mz.rn vr4{mr1}, zero, vr1
0001fc  00a00000  mfence { lm }
000200  e3038ffc  loadli.w r7,  -448(r30)
000204  63448ffc  loadli.w r8,  -444(r30)
000208  e3049ffc  loadli.w r9,  -440(r30)
00020c  63459ffc  loadli.w r10,  -436(r30)
000210  e340affc  loadli.w r1,  -428(r30)
000214  6301bffc  loadli.w r2,  -424(r30)
000218  e305cffc  loadli.w r11,  -416(r30)
00021c  6308affc  loadli.w r16,  -432(r30)
000220  6346cffc  loadli.w r12,  -412(r30)
000224  e341effc  loadli.w r3,  -396(r30)
000228  e346bffc  loadli.w r13,  -420(r30)
00022c  6302dffc  loadli.w r4,  -408(r30)
000230  e34ddffc  loadli.w r27,  -404(r30)
000234  630eeffc  loadli.w r28,  -400(r30)
000238  6309fffc  loadli.w r18,  -392(r30)
00023c  634afffc  loadli.w r20,  -388(r30)
000240  8f830300  exp.f.rn r7, r7
000244  0f040400  exp.f.rn r8, r8
000248  8f840400  exp.f.rn r9, r9
00024c  0f050500  exp.f.rn r10, r10
000250  8f800000  exp.f.rn r1, r1
000254  0f010100  exp.f.rn r2, r2
000258  8f850500  exp.f.rn r11, r11
00025c  8f810100  exp.f.rn r3, r3
000260  8be33311  add.f.rn r7, r7, r19
000264  0b643411  add.f.rn r8, r8, r19
000268  8be03011  add.f.rn r1, r1, r19
00026c  0b613111  add.f.rn r2, r2, r19
000270  8be13111  add.f.rn r3, r3, r19
000274  8f837918  div.f.rn r7, r19, r7
000278  0f848918  div.f.rn r8, r19, r8
00027c  8f801918  div.f.rn r1, r19, r1
000280  0f812918  div.f.rn r2, r19, r2
000284  8f813918  div.f.rn r3, r19, r3
000288  67007ffc  storeli.w r7, -512(r30)
00028c  8be33411  add.f.rn r7, r9, r19
000290  8f040800  exp.f.rn r9, r16
000294  67408ffc  storeli.w r8, -508(r30)
000298  0b643511  add.f.rn r8, r10, r19
00029c  0f850600  exp.f.rn r10, r13
0002a0  67411ffc  storeli.w r1, -492(r30)
0002a4  8f000200  exp.f.rn r1, r4
0002a8  e7012ffc  storeli.w r2, -488(r30)
0002ac  0f810d00  exp.f.rn r2, r27
0002b0  67433ffc  storeli.w r3, -460(r30)
0002b4  8f837918  div.f.rn r7, r19, r7
0002b8  0f848918  div.f.rn r8, r19, r8
0002bc  8be43411  add.f.rn r9, r9, r19
0002c0  0b653511  add.f.rn r10, r10, r19
0002c4  8be03011  add.f.rn r1, r1, r19
0002c8  0b613111  add.f.rn r2, r2, r19
0002cc  e7007ffc  storeli.w r7, -504(r30)
0002d0  8be33511  add.f.rn r7, r11, r19
0002d4  8f849918  div.f.rn r9, r19, r9
0002d8  e7408ffc  storeli.w r8, -500(r30)
0002dc  0f040600  exp.f.rn r8, r12
0002e0  0f85a918  div.f.rn r10, r19, r10
0002e4  8f801918  div.f.rn r1, r19, r1
0002e8  0f812918  div.f.rn r2, r19, r2
0002ec  8f837918  div.f.rn r7, r19, r7
0002f0  0b623411  add.f.rn r4, r8, r19
0002f4  0f040900  exp.f.rn r8, r18
0002f8  67019ffc  storeli.w r9, -496(r30)
0002fc  8f040a00  exp.f.rn r9, r20
000300  e741affc  storeli.w r10, -484(r30)
000304  e7021ffc  storeli.w r1, -472(r30)
000308  e7422ffc  storeli.w r2, -468(r30)
00030c  67027ffc  storeli.w r7, -480(r30)
000310  8f030e00  exp.f.rn r7, r28
000314  0f824918  div.f.rn r4, r19, r4
000318  0b643411  add.f.rn r8, r8, r19
00031c  8be43411  add.f.rn r9, r9, r19
000320  8be33311  add.f.rn r7, r7, r19
000324  0f848918  div.f.rn r8, r19, r8
000328  8f849918  div.f.rn r9, r19, r9
00032c  67424ffc  storeli.w r4, -476(r30)
000330  8f837918  div.f.rn r7, r19, r7
000334  e7038ffc  storeli.w r8, -456(r30)
000338  e7439ffc  storeli.w r9, -452(r30)
00033c  67037ffc  storeli.w r7, -464(r30)
000340  00a00000  mfence { lm }
000344  46107b02  vstore_mask16.mz vr7{mr1}, 0(r22)
000348  c2920a02  vload_mask16.mz vr5{mr1}, 0(r21)
00034c  00a00000  mfence { lm }
000350  e3008ffd  loadli.w r1,  -320(r30)
000354  63418ffd  loadli.w r2,  -316(r30)
000358  e3019ffd  loadli.w r3,  -312(r30)
00035c  63429ffd  loadli.w r4,  -308(r30)
000360  6344affd  loadli.w r8,  -300(r30)
000364  e304bffd  loadli.w r9,  -296(r30)
000368  6345bffd  loadli.w r10,  -292(r30)
00036c  e305cffd  loadli.w r11,  -288(r30)
000370  6346cffd  loadli.w r12,  -284(r30)
000374  e306dffd  loadli.w r13,  -280(r30)
000378  6348dffd  loadli.w r16,  -276(r30)
00037c  6309effd  loadli.w r18,  -272(r30)
000380  634aeffd  loadli.w r20,  -268(r30)
000384  e30dfffd  loadli.w r27,  -264(r30)
000388  634efffd  loadli.w r28,  -260(r30)
00038c  8f800000  exp.f.rn r1, r1
000390  0f010100  exp.f.rn r2, r2
000394  8f810100  exp.f.rn r3, r3
000398  8f030200  exp.f.rn r7, r4
00039c  6302affd  loadli.w r4,  -304(r30)
0003a0  0e115102  vmul.f.mz.rn vr2{mr1}, vr2, vr5
0003a4  8be03011  add.f.rn r1, r1, r19
0003a8  0b613111  add.f.rn r2, r2, r19
0003ac  8f801918  div.f.rn r1, r19, r1
0003b0  0f812918  div.f.rn r2, r19, r2
0003b4  67081ffc  storeli.w r1, -384(r30)
0003b8  8be03111  add.f.rn r1, r3, r19
0003bc  8f010200  exp.f.rn r3, r4
0003c0  0f020400  exp.f.rn r4, r8
0003c4  0f040500  exp.f.rn r8, r10
0003c8  67482ffc  storeli.w r2, -380(r30)
0003cc  0be13311  add.f.rn r2, r7, r19
0003d0  8f830400  exp.f.rn r7, r9
0003d4  8f840500  exp.f.rn r9, r11
0003d8  8f801918  div.f.rn r1, r19, r1
0003dc  0f812918  div.f.rn r2, r19, r2
0003e0  8be13111  add.f.rn r3, r3, r19
0003e4  0b623211  add.f.rn r4, r4, r19
0003e8  8be33311  add.f.rn r7, r7, r19
0003ec  0b643411  add.f.rn r8, r8, r19
0003f0  8f813918  div.f.rn r3, r19, r3
0003f4  e7081ffc  storeli.w r1, -376(r30)
0003f8  8f804918  div.f.rn r1, r19, r4
0003fc  0be23411  add.f.rn r4, r9, r19
000400  8f837918  div.f.rn r7, r19, r7
000404  0f848918  div.f.rn r8, r19, r8
000408  8f040e00  exp.f.rn r9, r28
00040c  e7482ffc  storeli.w r2, -372(r30)
000410  0f010600  exp.f.rn r2, r12
000414  67093ffc  storeli.w r3, -368(r30)
000418  8f814918  div.f.rn r3, r19, r4
00041c  0f020800  exp.f.rn r4, r16
000420  67491ffc  storeli.w r1, -364(r30)
000424  8f800600  exp.f.rn r1, r13
000428  e7097ffc  storeli.w r7, -360(r30)
00042c  8f030a00  exp.f.rn r7, r20
000430  e7498ffc  storeli.w r8, -356(r30)
000434  0f840d00  exp.f.rn r8, r27
000438  0b613111  add.f.rn r2, r2, r19
00043c  8be43411  add.f.rn r9, r9, r19
000440  0f812918  div.f.rn r2, r19, r2
000444  8f849918  div.f.rn r9, r19, r9
000448  670a3ffc  storeli.w r3, -352(r30)
00044c  8f010900  exp.f.rn r3, r18
000450  8be03011  add.f.rn r1, r1, r19
000454  0b623211  add.f.rn r4, r4, r19
000458  8be33311  add.f.rn r7, r7, r19
00045c  0b643411  add.f.rn r8, r8, r19
000460  8f801918  div.f.rn r1, r19, r1
000464  0f824918  div.f.rn r4, r19, r4
000468  8f837918  div.f.rn r7, r19, r7
00046c  0f848918  div.f.rn r8, r19, r8
000470  674a2ffc  storeli.w r2, -348(r30)
000474  e74b9ffc  storeli.w r9, -324(r30)
000478  8be13111  add.f.rn r3, r3, r19
00047c  8f813918  div.f.rn r3, r19, r3
000480  e70a1ffc  storeli.w r1, -344(r30)
000484  e74a4ffc  storeli.w r4, -340(r30)
000488  674b7ffc  storeli.w r7, -332(r30)
00048c  e70b8ffc  storeli.w r8, -328(r30)
000490  670b3ffc  storeli.w r3, -336(r30)
000494  00a00000  mfence { lm }
000498  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
00049c  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
0004a0  00a00000  mfence { lm }
0004a4  e3008ffe  loadli.w r1,  -192(r30)
0004a8  63418ffe  loadli.w r2,  -188(r30)
0004ac  e3019ffe  loadli.w r3,  -184(r30)
0004b0  63429ffe  loadli.w r4,  -180(r30)
0004b4  6344affe  loadli.w r8,  -172(r30)
0004b8  e304bffe  loadli.w r9,  -168(r30)
0004bc  6345bffe  loadli.w r10,  -164(r30)
0004c0  e305cffe  loadli.w r11,  -160(r30)
0004c4  6346cffe  loadli.w r12,  -156(r30)
0004c8  e306dffe  loadli.w r13,  -152(r30)
0004cc  6348dffe  loadli.w r16,  -148(r30)
0004d0  6309effe  loadli.w r18,  -144(r30)
0004d4  634aeffe  loadli.w r20,  -140(r30)
0004d8  e30dfffe  loadli.w r27,  -136(r30)
0004dc  634efffe  loadli.w r28,  -132(r30)
0004e0  8f800000  exp.f.rn r1, r1
0004e4  0f010100  exp.f.rn r2, r2
0004e8  8f810100  exp.f.rn r3, r3
0004ec  8f030200  exp.f.rn r7, r4
0004f0  6302affe  loadli.w r4,  -176(r30)
0004f4  8e917102  vmul.f.mz.rn vr3{mr1}, vr3, vr7
0004f8  8be03011  add.f.rn r1, r1, r19
0004fc  0b613111  add.f.rn r2, r2, r19
000500  8f801918  div.f.rn r1, r19, r1
000504  0f812918  div.f.rn r2, r19, r2
000508  67001ffe  storeli.w r1, -256(r30)
00050c  8be03111  add.f.rn r1, r3, r19
000510  8f010200  exp.f.rn r3, r4
000514  0f020400  exp.f.rn r4, r8
000518  0f040500  exp.f.rn r8, r10
00051c  67402ffe  storeli.w r2, -252(r30)
000520  0be13311  add.f.rn r2, r7, r19
000524  8f830400  exp.f.rn r7, r9
000528  8f840500  exp.f.rn r9, r11
00052c  8f801918  div.f.rn r1, r19, r1
000530  0f812918  div.f.rn r2, r19, r2
000534  8be13111  add.f.rn r3, r3, r19
000538  0b623211  add.f.rn r4, r4, r19
00053c  8be33311  add.f.rn r7, r7, r19
000540  0b643411  add.f.rn r8, r8, r19
000544  8f813918  div.f.rn r3, r19, r3
000548  e7001ffe  storeli.w r1, -248(r30)
00054c  8f804918  div.f.rn r1, r19, r4
000550  0be23411  add.f.rn r4, r9, r19
000554  8f837918  div.f.rn r7, r19, r7
000558  0f848918  div.f.rn r8, r19, r8
00055c  8f040e00  exp.f.rn r9, r28
000560  e7402ffe  storeli.w r2, -244(r30)
000564  0f010600  exp.f.rn r2, r12
000568  67013ffe  storeli.w r3, -240(r30)
00056c  8f814918  div.f.rn r3, r19, r4
000570  0f020800  exp.f.rn r4, r16
000574  67411ffe  storeli.w r1, -236(r30)
000578  8f800600  exp.f.rn r1, r13
00057c  e7017ffe  storeli.w r7, -232(r30)
000580  8f030a00  exp.f.rn r7, r20
000584  e7418ffe  storeli.w r8, -228(r30)
000588  0f840d00  exp.f.rn r8, r27
00058c  0b613111  add.f.rn r2, r2, r19
000590  8be43411  add.f.rn r9, r9, r19
000594  0f812918  div.f.rn r2, r19, r2
000598  8f849918  div.f.rn r9, r19, r9
00059c  67023ffe  storeli.w r3, -224(r30)
0005a0  8f010900  exp.f.rn r3, r18
0005a4  8be03011  add.f.rn r1, r1, r19
0005a8  0b623211  add.f.rn r4, r4, r19
0005ac  8be33311  add.f.rn r7, r7, r19
0005b0  0b643411  add.f.rn r8, r8, r19
0005b4  8f801918  div.f.rn r1, r19, r1
0005b8  0f824918  div.f.rn r4, r19, r4
0005bc  8f837918  div.f.rn r7, r19, r7
0005c0  0f848918  div.f.rn r8, r19, r8
0005c4  67422ffe  storeli.w r2, -220(r30)
0005c8  e7439ffe  storeli.w r9, -196(r30)
0005cc  8be13111  add.f.rn r3, r3, r19
0005d0  8f813918  div.f.rn r3, r19, r3
0005d4  e7021ffe  storeli.w r1, -216(r30)
0005d8  e7424ffe  storeli.w r4, -212(r30)
0005dc  67437ffe  storeli.w r7, -204(r30)
0005e0  e7038ffe  storeli.w r8, -200(r30)
0005e4  67033ffe  storeli.w r3, -208(r30)
0005e8  00a00000  mfence { lm }
0005ec  46104d02  vstore_mask16.mz vr4{mr1}, 0(r26)
0005f0  42930c02  vload_mask16.mz vr6{mr1}, 0(r25)
0005f4  00a00000  mfence { lm }
0005f8  e3008fff  loadli.w r1,  -64(r30)
0005fc  63418fff  loadli.w r2,  -60(r30)
000600  e3019fff  loadli.w r3,  -56(r30)
000604  63429fff  loadli.w r4,  -52(r30)
000608  e304bfff  loadli.w r9,  -40(r30)
00060c  6345bfff  loadli.w r10,  -36(r30)
000610  e305cfff  loadli.w r11,  -32(r30)
000614  6346cfff  loadli.w r12,  -28(r30)
000618  e306dfff  loadli.w r13,  -24(r30)
00061c  6348dfff  loadli.w r16,  -20(r30)
000620  6309efff  loadli.w r18,  -16(r30)
000624  634aefff  loadli.w r20,  -12(r30)
000628  e30dffff  loadli.w r27,  -8(r30)
00062c  634effff  loadli.w r28,  -4(r30)
000630  8f800000  exp.f.rn r1, r1
000634  0f010100  exp.f.rn r2, r2
000638  8f830100  exp.f.rn r7, r3
00063c  0f040200  exp.f.rn r8, r4
000640  e301afff  loadli.w r3,  -48(r30)
000644  6342afff  loadli.w r4,  -44(r30)
000648  0e106002  vmul.f.mz.rn vr0{mr1}, vr0, vr6
00064c  8f810100  exp.f.rn r3, r3
000650  0f020200  exp.f.rn r4, r4
000654  8be03011  add.f.rn r1, r1, r19
000658  0b613111  add.f.rn r2, r2, r19
00065c  8be13111  add.f.rn r3, r3, r19
000660  0b623211  add.f.rn r4, r4, r19
000664  8f801918  div.f.rn r1, r19, r1
000668  0f812918  div.f.rn r2, r19, r2
00066c  67081ffe  storeli.w r1, -128(r30)
000670  8be03311  add.f.rn r1, r7, r19
000674  8f830400  exp.f.rn r7, r9
000678  8f840500  exp.f.rn r9, r11
00067c  67482ffe  storeli.w r2, -124(r30)
000680  0b613411  add.f.rn r2, r8, r19
000684  0f040500  exp.f.rn r8, r10
000688  1f050fff  addli r10, r30, -128
00068c  8f801918  div.f.rn r1, r19, r1
000690  0f812918  div.f.rn r2, r19, r2
000694  8be33311  add.f.rn r7, r7, r19
000698  0b643411  add.f.rn r8, r8, r19
00069c  8be43411  add.f.rn r9, r9, r19
0006a0  e7081ffe  storeli.w r1, -120(r30)
0006a4  8f803918  div.f.rn r1, r19, r3
0006a8  8f814918  div.f.rn r3, r19, r4
0006ac  0f827918  div.f.rn r4, r19, r7
0006b0  8f838918  div.f.rn r7, r19, r8
0006b4  0f849918  div.f.rn r8, r19, r9
0006b8  8f040e00  exp.f.rn r9, r28
0006bc  e7482ffe  storeli.w r2, -116(r30)
0006c0  0f010600  exp.f.rn r2, r12
0006c4  67091ffe  storeli.w r1, -112(r30)
0006c8  8f800600  exp.f.rn r1, r13
0006cc  67493ffe  storeli.w r3, -108(r30)
0006d0  8f010800  exp.f.rn r3, r16
0006d4  e7094ffe  storeli.w r4, -104(r30)
0006d8  0f020900  exp.f.rn r4, r18
0006dc  e7497ffe  storeli.w r7, -100(r30)
0006e0  8f030a00  exp.f.rn r7, r20
0006e4  670a8ffe  storeli.w r8, -96(r30)
0006e8  0f840d00  exp.f.rn r8, r27
0006ec  0b613111  add.f.rn r2, r2, r19
0006f0  8be43411  add.f.rn r9, r9, r19
0006f4  0f812918  div.f.rn r2, r19, r2
0006f8  8f849918  div.f.rn r9, r19, r9
0006fc  8be03011  add.f.rn r1, r1, r19
000700  8be13111  add.f.rn r3, r3, r19
000704  0b623211  add.f.rn r4, r4, r19
000708  8be33311  add.f.rn r7, r7, r19
00070c  0b643411  add.f.rn r8, r8, r19
000710  8f801918  div.f.rn r1, r19, r1
000714  8f813918  div.f.rn r3, r19, r3
000718  0f824918  div.f.rn r4, r19, r4
00071c  8f837918  div.f.rn r7, r19, r7
000720  0f848918  div.f.rn r8, r19, r8
000724  674a2ffe  storeli.w r2, -92(r30)
000728  e74b9ffe  storeli.w r9, -68(r30)
00072c  670b4ffe  storeli.w r4, -80(r30)
000730  e70a1ffe  storeli.w r1, -88(r30)
000734  e74a3ffe  storeli.w r3, -84(r30)
000738  674b7ffe  storeli.w r7, -76(r30)
00073c  e70b8ffe  storeli.w r8, -72(r30)
000740  1f028ffc  addli r4, r30, -448
000744  00a00000  mfence { lm }
000748  42120502  vload_mask16.mz vr4{mr1}, 0(r10)
00074c  8e904002  vmul.f.mz.rn vr1{mr1}, vr1, vr4
000750  06120100  vfloat2fp16_l.rn vr4, vr2
000754  06d20100  vfloat2fp16_h.rn vr4, vr3
000758  06110000  vfloat2fp16_l.rn vr2, vr0
00075c  06d10000  vfloat2fp16_h.rn vr2, vr1
000760  46104302  vstore_mask16.mz vr4{mr1}, 0(r6)
000764  46142302  vstore_mask16.mz vr2{mr1}, 64(r6)
000768  00a00000  mfence { lm }
00076c  3ba9f2fc  bneq r5, r15, -1464
000770  6b510f01  load.d r[3:4], 16(r30)
000774  eb520f9f  load.d r[6:7], -1552(r30)
000778  ab0000f0  lui r1, 983040
00077c  97901700  or r1, r15, r1
000780  0b215110  add.ul r[3:4], r[3:4], r[6:7]
000784  ff301101  s_lm2gm r1, r17, 0(r[3:4])
000788  e341fff3  loadli.w r3,  -1540(r30)
00078c  e300dff3  loadli.w r1,  -1560(r30)
000790  00a00000  mfence { lm }
000794  8b911110  add.s r3, r3, r1
000798  e340dff3  loadli.w r1,  -1556(r30)
00079c  3fc611fc  blt.s r3, r1, -1648
0007a0  9f0e8ff3  addli sp, r30, -1600
0007a4  9f8e8e0c  addli sp, sp, 1600
0007a8  00a00300  mfence { lm, sm, gm }
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
