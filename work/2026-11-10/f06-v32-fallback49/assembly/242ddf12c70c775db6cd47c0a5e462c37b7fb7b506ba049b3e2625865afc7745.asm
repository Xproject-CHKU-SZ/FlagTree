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
0000dc  9f8e8ef7  addli sp, sp, -1088
0000e0  1f8f0e08  addli r30, sp, 1024
0000e4  e3004f00  loadli.w r1,  32(r30)
0000e8  e3413f00  loadli.w r3,  28(r30)
0000ec  63414f00  loadli.w r2,  36(r30)
0000f0  0b923020  mul.s r4, r1, r3
0000f4  80510002  load_param_i r3, 0
0000f8  0b122220  mul.s r4, r4, r2
0000fc  4b793202  ble.s r4, r3, 1628
000100  80320002  core_id r5
000104  80d50002  load_param_i r11, 1
000108  1f270000  addli r14, zero, 2
00010c  1f080002  addli r16, zero, 256
000110  9f080ffa  addli r17, r30, -768
000114  ab09803f  lui r19, 260096
000118  1bb66200  slli r12, r5, 6
00011c  8b922130  div.s r5, r3, r2
000120  1f030010  addli r6, zero, 2048
000124  ab0d00f0  lui r27, 983040
000128  2b0e00f0  lui r28, 983040
00012c  eb540f00  load.d r[10:11], 0(r30)
000130  6b5a8f00  load.d r[21:22], 8(r30)
000134  9f060ff8  addli r13, r30, -1024
000138  8b91b110  add.s r3, r3, r11
00013c  9713b801  or r7, r16, r27
000140  1714c801  or r8, r16, r28
000144  8b921230  div.s r5, r5, r1
000148  9bb2c200  slli r5, r5, 12
00014c  8b92c210  add.s r5, r5, r12
000150  0b936238  mod.s r6, r5, r6
000154  b39d0228  sext_int2long r[28:29], r5
000158  97bded02  sll.d r[28:29], r[28:29], r14
00015c  8ba4b411  add.ul r[10:11], r[10:11], r[28:29]
000160  b3120328  sext_int2long r[6:7], r6
000164  ffa3d400  l_gm2lm r7, r13, 0(r[10:11])
000168  97b2e202  sll.d r[6:7], r[6:7], r14
00016c  8b225a10  add.ul r[6:7], r[21:22], r[6:7]
000170  7fa41201  l_gm2lm r8, r17, 0(r[6:7])
000174  9f028ffc  addli r5, r30, -448
000178  00a00000  mfence { lm }
00017c  c2110f82  vload_mask16.mz vr3{mr1}, 1024(r30)
000180  42108f82  vload_mask16.mz vr0{mr1}, 1088(r30)
000184  c2100f83  vload_mask16.mz vr1{mr1}, 1152(r30)
000188  42118f83  vload_mask16.mz vr2{mr1}, 1216(r30)
00018c  42120fa2  vload_mask16.mz vr4{mr1}, 1280(r30)
000190  c2128fa2  vload_mask16.mz vr5{mr1}, 1344(r30)
000194  42130fa3  vload_mask16.mz vr6{mr1}, 1408(r30)
000198  c2138fa3  vload_mask16.mz vr7{mr1}, 1472(r30)
00019c  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
0001a0  96914102  vadd.f.mz.rn vr3{mr1}, vr3, vr4
0001a4  9a123002  vsub.f.mz.rn vr5{mr1}, zero, vr3
0001a8  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
0001ac  96906002  vadd.f.mz.rn vr1{mr1}, vr1, vr6
0001b0  16117102  vadd.f.mz.rn vr2{mr1}, vr2, vr7
0001b4  9a130002  vsub.f.mz.rn vr7{mr1}, zero, vr0
0001b8  1a131002  vsub.f.mz.rn vr6{mr1}, zero, vr1
0001bc  1a122002  vsub.f.mz.rn vr4{mr1}, zero, vr2
0001c0  00a00000  mfence { lm }
0001c4  e3038ffc  loadli.w r7,  -448(r30)
0001c8  63448ffc  loadli.w r8,  -444(r30)
0001cc  63039ffc  loadli.w r6,  -440(r30)
0001d0  e304affc  loadli.w r9,  -432(r30)
0001d4  6345affc  loadli.w r10,  -428(r30)
0001d8  e3429ffc  loadli.w r5,  -436(r30)
0001dc  e306bffc  loadli.w r13,  -424(r30)
0001e0  e347bffc  loadli.w r15,  -420(r30)
0001e4  6309cffc  loadli.w r18,  -416(r30)
0001e8  634acffc  loadli.w r20,  -412(r30)
0001ec  e30adffc  loadli.w r21,  -408(r30)
0001f0  634bdffc  loadli.w r22,  -404(r30)
0001f4  e30beffc  loadli.w r23,  -400(r30)
0001f8  634ceffc  loadli.w r24,  -396(r30)
0001fc  e30cfffc  loadli.w r25,  -392(r30)
000200  634dfffc  loadli.w r26,  -388(r30)
000204  8f830300  exp.f.rn r7, r7
000208  0f040400  exp.f.rn r8, r8
00020c  0f030300  exp.f.rn r6, r6
000210  8f840400  exp.f.rn r9, r9
000214  0f050500  exp.f.rn r10, r10
000218  8f820200  exp.f.rn r5, r5
00021c  8f860600  exp.f.rn r13, r13
000220  8be33311  add.f.rn r7, r7, r19
000224  0b643411  add.f.rn r8, r8, r19
000228  0b633311  add.f.rn r6, r6, r19
00022c  8be23211  add.f.rn r5, r5, r19
000230  8be63611  add.f.rn r13, r13, r19
000234  8f837918  div.f.rn r7, r19, r7
000238  0f848918  div.f.rn r8, r19, r8
00023c  0f836918  div.f.rn r6, r19, r6
000240  8f825918  div.f.rn r5, r19, r5
000244  67007ffc  storeli.w r7, -512(r30)
000248  8f830700  exp.f.rn r7, r15
00024c  67408ffc  storeli.w r8, -508(r30)
000250  0be43411  add.f.rn r8, r9, r19
000254  8b643511  add.f.rn r9, r10, r19
000258  0f050900  exp.f.rn r10, r18
00025c  e7006ffc  storeli.w r6, -504(r30)
000260  e7405ffc  storeli.w r5, -500(r30)
000264  8f020a00  exp.f.rn r5, r20
000268  0f848918  div.f.rn r8, r19, r8
00026c  0f839918  div.f.rn r6, r19, r9
000270  8be33311  add.f.rn r7, r7, r19
000274  8b643511  add.f.rn r9, r10, r19
000278  0f85d918  div.f.rn r10, r19, r13
00027c  8f060d00  exp.f.rn r13, r26
000280  8be23211  add.f.rn r5, r5, r19
000284  8f837918  div.f.rn r7, r19, r7
000288  67018ffc  storeli.w r8, -496(r30)
00028c  0f849918  div.f.rn r8, r19, r9
000290  8f040c00  exp.f.rn r9, r24
000294  67416ffc  storeli.w r6, -492(r30)
000298  0f830a00  exp.f.rn r6, r21
00029c  8f825918  div.f.rn r5, r19, r5
0002a0  e701affc  storeli.w r10, -488(r30)
0002a4  0f850c00  exp.f.rn r10, r25
0002a8  8be63611  add.f.rn r13, r13, r19
0002ac  e7417ffc  storeli.w r7, -484(r30)
0002b0  8f030b00  exp.f.rn r7, r22
0002b4  67028ffc  storeli.w r8, -480(r30)
0002b8  0f840b00  exp.f.rn r8, r23
0002bc  0b633311  add.f.rn r6, r6, r19
0002c0  8be43411  add.f.rn r9, r9, r19
0002c4  8f86d918  div.f.rn r13, r19, r13
0002c8  67425ffc  storeli.w r5, -476(r30)
0002cc  9f020ffc  addli r5, r30, -512
0002d0  0b653511  add.f.rn r10, r10, r19
0002d4  0f836918  div.f.rn r6, r19, r6
0002d8  8f849918  div.f.rn r9, r19, r9
0002dc  8be33311  add.f.rn r7, r7, r19
0002e0  0b643411  add.f.rn r8, r8, r19
0002e4  0f85a918  div.f.rn r10, r19, r10
0002e8  e743dffc  storeli.w r13, -452(r30)
0002ec  8f837918  div.f.rn r7, r19, r7
0002f0  0f848918  div.f.rn r8, r19, r8
0002f4  e7026ffc  storeli.w r6, -472(r30)
0002f8  67439ffc  storeli.w r9, -460(r30)
0002fc  e703affc  storeli.w r10, -456(r30)
000300  e7427ffc  storeli.w r7, -468(r30)
000304  67038ffc  storeli.w r8, -464(r30)
000308  00a00000  mfence { lm }
00030c  c2920202  vload_mask16.mz vr5{mr1}, 0(r5)
000310  9f028ffd  addli r5, r30, -320
000314  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
000318  00a00000  mfence { lm }
00031c  e3028ffd  loadli.w r5,  -320(r30)
000320  63438ffd  loadli.w r6,  -316(r30)
000324  e3039ffd  loadli.w r7,  -312(r30)
000328  e304affd  loadli.w r9,  -304(r30)
00032c  6345affd  loadli.w r10,  -300(r30)
000330  e306bffd  loadli.w r13,  -296(r30)
000334  e347bffd  loadli.w r15,  -292(r30)
000338  6309cffd  loadli.w r18,  -288(r30)
00033c  634acffd  loadli.w r20,  -284(r30)
000340  e30adffd  loadli.w r21,  -280(r30)
000344  634bdffd  loadli.w r22,  -276(r30)
000348  e30beffd  loadli.w r23,  -272(r30)
00034c  634ceffd  loadli.w r24,  -268(r30)
000350  e30cfffd  loadli.w r25,  -264(r30)
000354  634dfffd  loadli.w r26,  -260(r30)
000358  8e915102  vmul.f.mz.rn vr3{mr1}, vr3, vr5
00035c  8f820200  exp.f.rn r5, r5
000360  0f030300  exp.f.rn r6, r6
000364  8f830300  exp.f.rn r7, r7
000368  0be43211  add.f.rn r8, r5, r19
00036c  0b633311  add.f.rn r6, r6, r19
000370  8be33311  add.f.rn r7, r7, r19
000374  e3429ffd  loadli.w r5,  -308(r30)
000378  8f820200  exp.f.rn r5, r5
00037c  0f848918  div.f.rn r8, r19, r8
000380  0f836918  div.f.rn r6, r19, r6
000384  8f837918  div.f.rn r7, r19, r7
000388  8be23211  add.f.rn r5, r5, r19
00038c  67088ffc  storeli.w r8, -384(r30)
000390  0f840400  exp.f.rn r8, r9
000394  8f040500  exp.f.rn r9, r10
000398  0f850700  exp.f.rn r10, r15
00039c  67486ffc  storeli.w r6, -380(r30)
0003a0  0f830600  exp.f.rn r6, r13
0003a4  8f060900  exp.f.rn r13, r18
0003a8  e7087ffc  storeli.w r7, -376(r30)
0003ac  8f825918  div.f.rn r5, r19, r5
0003b0  0b643411  add.f.rn r8, r8, r19
0003b4  8be43411  add.f.rn r9, r9, r19
0003b8  0b633311  add.f.rn r6, r6, r19
0003bc  0b653511  add.f.rn r10, r10, r19
0003c0  e7485ffc  storeli.w r5, -372(r30)
0003c4  8f020a00  exp.f.rn r5, r20
0003c8  0f848918  div.f.rn r8, r19, r8
0003cc  8f839918  div.f.rn r7, r19, r9
0003d0  8be43611  add.f.rn r9, r13, r19
0003d4  0f836918  div.f.rn r6, r19, r6
0003d8  0f85a918  div.f.rn r10, r19, r10
0003dc  8f060d00  exp.f.rn r13, r26
0003e0  8be23211  add.f.rn r5, r5, r19
0003e4  67098ffc  storeli.w r8, -368(r30)
0003e8  0f849918  div.f.rn r8, r19, r9
0003ec  8f040c00  exp.f.rn r9, r24
0003f0  67497ffc  storeli.w r7, -364(r30)
0003f4  8f030b00  exp.f.rn r7, r22
0003f8  e7096ffc  storeli.w r6, -360(r30)
0003fc  0f830a00  exp.f.rn r6, r21
000400  e749affc  storeli.w r10, -356(r30)
000404  0f850c00  exp.f.rn r10, r25
000408  8be63611  add.f.rn r13, r13, r19
00040c  8f825918  div.f.rn r5, r19, r5
000410  8f86d918  div.f.rn r13, r19, r13
000414  670a8ffc  storeli.w r8, -352(r30)
000418  0f840b00  exp.f.rn r8, r23
00041c  0b633311  add.f.rn r6, r6, r19
000420  8be33311  add.f.rn r7, r7, r19
000424  8be43411  add.f.rn r9, r9, r19
000428  0b653511  add.f.rn r10, r10, r19
00042c  674a5ffc  storeli.w r5, -348(r30)
000430  9f020ffd  addli r5, r30, -384
000434  0f836918  div.f.rn r6, r19, r6
000438  8f837918  div.f.rn r7, r19, r7
00043c  8f849918  div.f.rn r9, r19, r9
000440  0f85a918  div.f.rn r10, r19, r10
000444  e74bdffc  storeli.w r13, -324(r30)
000448  0b643411  add.f.rn r8, r8, r19
00044c  0f848918  div.f.rn r8, r19, r8
000450  e70a6ffc  storeli.w r6, -344(r30)
000454  e74a7ffc  storeli.w r7, -340(r30)
000458  674b9ffc  storeli.w r9, -332(r30)
00045c  e70baffc  storeli.w r10, -328(r30)
000460  670b8ffc  storeli.w r8, -336(r30)
000464  00a00000  mfence { lm }
000468  c2930202  vload_mask16.mz vr7{mr1}, 0(r5)
00046c  9f028ffe  addli r5, r30, -192
000470  46906202  vstore_mask16.mz vr6{mr1}, 0(r5)
000474  00a00000  mfence { lm }
000478  e3028ffe  loadli.w r5,  -192(r30)
00047c  63438ffe  loadli.w r6,  -188(r30)
000480  e3039ffe  loadli.w r7,  -184(r30)
000484  e304affe  loadli.w r9,  -176(r30)
000488  6345affe  loadli.w r10,  -172(r30)
00048c  e306bffe  loadli.w r13,  -168(r30)
000490  e347bffe  loadli.w r15,  -164(r30)
000494  6309cffe  loadli.w r18,  -160(r30)
000498  634acffe  loadli.w r20,  -156(r30)
00049c  e30adffe  loadli.w r21,  -152(r30)
0004a0  634bdffe  loadli.w r22,  -148(r30)
0004a4  e30beffe  loadli.w r23,  -144(r30)
0004a8  634ceffe  loadli.w r24,  -140(r30)
0004ac  e30cfffe  loadli.w r25,  -136(r30)
0004b0  634dfffe  loadli.w r26,  -132(r30)
0004b4  0e107002  vmul.f.mz.rn vr0{mr1}, vr0, vr7
0004b8  8f820200  exp.f.rn r5, r5
0004bc  0f030300  exp.f.rn r6, r6
0004c0  8f830300  exp.f.rn r7, r7
0004c4  0be43211  add.f.rn r8, r5, r19
0004c8  0b633311  add.f.rn r6, r6, r19
0004cc  8be33311  add.f.rn r7, r7, r19
0004d0  e3429ffe  loadli.w r5,  -180(r30)
0004d4  8f820200  exp.f.rn r5, r5
0004d8  0f848918  div.f.rn r8, r19, r8
0004dc  0f836918  div.f.rn r6, r19, r6
0004e0  8f837918  div.f.rn r7, r19, r7
0004e4  8be23211  add.f.rn r5, r5, r19
0004e8  67008ffe  storeli.w r8, -256(r30)
0004ec  0f840400  exp.f.rn r8, r9
0004f0  8f040500  exp.f.rn r9, r10
0004f4  0f850700  exp.f.rn r10, r15
0004f8  67406ffe  storeli.w r6, -252(r30)
0004fc  0f830600  exp.f.rn r6, r13
000500  8f060900  exp.f.rn r13, r18
000504  e7007ffe  storeli.w r7, -248(r30)
000508  8f825918  div.f.rn r5, r19, r5
00050c  0b643411  add.f.rn r8, r8, r19
000510  8be43411  add.f.rn r9, r9, r19
000514  0b633311  add.f.rn r6, r6, r19
000518  0b653511  add.f.rn r10, r10, r19
00051c  e7405ffe  storeli.w r5, -244(r30)
000520  8f020a00  exp.f.rn r5, r20
000524  0f848918  div.f.rn r8, r19, r8
000528  8f839918  div.f.rn r7, r19, r9
00052c  8be43611  add.f.rn r9, r13, r19
000530  0f836918  div.f.rn r6, r19, r6
000534  0f85a918  div.f.rn r10, r19, r10
000538  8f060d00  exp.f.rn r13, r26
00053c  8be23211  add.f.rn r5, r5, r19
000540  67018ffe  storeli.w r8, -240(r30)
000544  0f849918  div.f.rn r8, r19, r9
000548  8f040c00  exp.f.rn r9, r24
00054c  67417ffe  storeli.w r7, -236(r30)
000550  8f030b00  exp.f.rn r7, r22
000554  e7016ffe  storeli.w r6, -232(r30)
000558  0f830a00  exp.f.rn r6, r21
00055c  e741affe  storeli.w r10, -228(r30)
000560  0f850c00  exp.f.rn r10, r25
000564  8be63611  add.f.rn r13, r13, r19
000568  8f825918  div.f.rn r5, r19, r5
00056c  8f86d918  div.f.rn r13, r19, r13
000570  67028ffe  storeli.w r8, -224(r30)
000574  0f840b00  exp.f.rn r8, r23
000578  0b633311  add.f.rn r6, r6, r19
00057c  8be33311  add.f.rn r7, r7, r19
000580  8be43411  add.f.rn r9, r9, r19
000584  0b653511  add.f.rn r10, r10, r19
000588  67425ffe  storeli.w r5, -220(r30)
00058c  9f020ffe  addli r5, r30, -256
000590  0f836918  div.f.rn r6, r19, r6
000594  8f837918  div.f.rn r7, r19, r7
000598  8f849918  div.f.rn r9, r19, r9
00059c  0f85a918  div.f.rn r10, r19, r10
0005a0  e743dffe  storeli.w r13, -196(r30)
0005a4  0b643411  add.f.rn r8, r8, r19
0005a8  0f848918  div.f.rn r8, r19, r8
0005ac  e7026ffe  storeli.w r6, -216(r30)
0005b0  e7427ffe  storeli.w r7, -212(r30)
0005b4  67439ffe  storeli.w r9, -204(r30)
0005b8  e703affe  storeli.w r10, -200(r30)
0005bc  67038ffe  storeli.w r8, -208(r30)
0005c0  00a00000  mfence { lm }
0005c4  42930202  vload_mask16.mz vr6{mr1}, 0(r5)
0005c8  9f028fff  addli r5, r30, -64
0005cc  46904202  vstore_mask16.mz vr4{mr1}, 0(r5)
0005d0  00a00000  mfence { lm }
0005d4  e3028fff  loadli.w r5,  -64(r30)
0005d8  63438fff  loadli.w r6,  -60(r30)
0005dc  e3039fff  loadli.w r7,  -56(r30)
0005e0  6345afff  loadli.w r10,  -44(r30)
0005e4  e306bfff  loadli.w r13,  -40(r30)
0005e8  e347bfff  loadli.w r15,  -36(r30)
0005ec  6309cfff  loadli.w r18,  -32(r30)
0005f0  634acfff  loadli.w r20,  -28(r30)
0005f4  e30adfff  loadli.w r21,  -24(r30)
0005f8  634bdfff  loadli.w r22,  -20(r30)
0005fc  e30befff  loadli.w r23,  -16(r30)
000600  634cefff  loadli.w r24,  -12(r30)
000604  e30cffff  loadli.w r25,  -8(r30)
000608  634dffff  loadli.w r26,  -4(r30)
00060c  8e906002  vmul.f.mz.rn vr1{mr1}, vr1, vr6
000610  8f820200  exp.f.rn r5, r5
000614  0f030300  exp.f.rn r6, r6
000618  0be43211  add.f.rn r8, r5, r19
00061c  8b643311  add.f.rn r9, r6, r19
000620  8f820300  exp.f.rn r5, r7
000624  63439fff  loadli.w r6,  -52(r30)
000628  0f030300  exp.f.rn r6, r6
00062c  8f838918  div.f.rn r7, r19, r8
000630  0f849918  div.f.rn r8, r19, r9
000634  e304afff  loadli.w r9,  -48(r30)
000638  8be23211  add.f.rn r5, r5, r19
00063c  0b633311  add.f.rn r6, r6, r19
000640  67087ffe  storeli.w r7, -128(r30)
000644  8f830400  exp.f.rn r7, r9
000648  8f840600  exp.f.rn r9, r13
00064c  8f060900  exp.f.rn r13, r18
000650  67488ffe  storeli.w r8, -124(r30)
000654  0f040500  exp.f.rn r8, r10
000658  0f850700  exp.f.rn r10, r15
00065c  8f825918  div.f.rn r5, r19, r5
000660  0f836918  div.f.rn r6, r19, r6
000664  8be33311  add.f.rn r7, r7, r19
000668  0b643411  add.f.rn r8, r8, r19
00066c  8be43411  add.f.rn r9, r9, r19
000670  0b653511  add.f.rn r10, r10, r19
000674  8be63611  add.f.rn r13, r13, r19
000678  e7085ffe  storeli.w r5, -120(r30)
00067c  e7486ffe  storeli.w r6, -116(r30)
000680  0f030a00  exp.f.rn r6, r20
000684  8f827918  div.f.rn r5, r19, r7
000688  8f838918  div.f.rn r7, r19, r8
00068c  0f849918  div.f.rn r8, r19, r9
000690  8f84a918  div.f.rn r9, r19, r10
000694  0f85d918  div.f.rn r10, r19, r13
000698  8f060d00  exp.f.rn r13, r26
00069c  0b633311  add.f.rn r6, r6, r19
0006a0  67095ffe  storeli.w r5, -112(r30)
0006a4  8f820a00  exp.f.rn r5, r21
0006a8  67497ffe  storeli.w r7, -108(r30)
0006ac  8f030b00  exp.f.rn r7, r22
0006b0  e7098ffe  storeli.w r8, -104(r30)
0006b4  0f840b00  exp.f.rn r8, r23
0006b8  e7499ffe  storeli.w r9, -100(r30)
0006bc  8f040c00  exp.f.rn r9, r24
0006c0  670aaffe  storeli.w r10, -96(r30)
0006c4  0f850c00  exp.f.rn r10, r25
0006c8  8be63611  add.f.rn r13, r13, r19
0006cc  0f836918  div.f.rn r6, r19, r6
0006d0  8f86d918  div.f.rn r13, r19, r13
0006d4  8be23211  add.f.rn r5, r5, r19
0006d8  8be33311  add.f.rn r7, r7, r19
0006dc  0b643411  add.f.rn r8, r8, r19
0006e0  8be43411  add.f.rn r9, r9, r19
0006e4  0b653511  add.f.rn r10, r10, r19
0006e8  674a6ffe  storeli.w r6, -92(r30)
0006ec  8f825918  div.f.rn r5, r19, r5
0006f0  8f837918  div.f.rn r7, r19, r7
0006f4  0f848918  div.f.rn r8, r19, r8
0006f8  8f849918  div.f.rn r9, r19, r9
0006fc  0f85a918  div.f.rn r10, r19, r10
000700  e74bdffe  storeli.w r13, -68(r30)
000704  e70a5ffe  storeli.w r5, -88(r30)
000708  e74a7ffe  storeli.w r7, -84(r30)
00070c  670b8ffe  storeli.w r8, -80(r30)
000710  674b9ffe  storeli.w r9, -76(r30)
000714  e70baffe  storeli.w r10, -72(r30)
000718  9f020fff  addli r5, r30, -128
00071c  ab0300f0  lui r7, 983040
000720  00a00000  mfence { lm }
000724  46103fa2  vstore_mask16.mz vr3{mr1}, 1280(r30)
000728  42920202  vload_mask16.mz vr4{mr1}, 0(r5)
00072c  eb520f01  load.d r[6:7], 16(r30)
000730  46140fa2  vstore_mask16.mz vr0{mr1}, 1344(r30)
000734  46181fa2  vstore_mask16.mz vr1{mr1}, 1408(r30)
000738  97137800  or r7, r16, r7
00073c  8ba2b211  add.ul r[6:7], r[6:7], r[28:29]
000740  0e114102  vmul.f.mz.rn vr2{mr1}, vr2, vr4
000744  461c2fa2  vstore_mask16.mz vr2{mr1}, 1472(r30)
000748  00a00000  mfence { lm }
00074c  ffb31201  s_lm2gm r7, r17, 0(r[6:7])
000750  00a00000  mfence { lm }
000754  3fa741fc  blt.s r3, r4, -1592
000758  9f0e0ff8  addli sp, r30, -1024
00075c  9f8e0e08  addli sp, sp, 1024
000760  00a00300  mfence { lm, sm, gm }
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
