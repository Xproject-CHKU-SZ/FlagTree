; SHA-256 96ed4a7190daaf3d5b4b160f6b86d85f7d844f4208bb127b2d8d270085741387
; P800 Cluster · XTDK LLVM 19 · 616 / 616 words decoded
; bound names: triton_poi_fused_add_silu_1
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
0000dc  9f8e8ef7  addli sp, sp, -1088
0000e0  1f8f0e08  addli r30, sp, 1024
0000e4  e3003f00  loadli.w r1,  24(r30)
0000e8  e3412f00  loadli.w r3,  20(r30)
0000ec  63413f00  loadli.w r2,  28(r30)
0000f0  0b923020  mul.s r4, r1, r3
0000f4  80510002  load_param_i r3, 0
0000f8  0b122220  mul.s r4, r4, r2
0000fc  4b593202  ble.s r4, r3, 1620
000100  00350002  core_id r10
000104  80d40002  load_param_i r9, 1
000108  1f260000  addli r12, zero, 2
00010c  1f070002  addli r14, zero, 256
000110  9f070ffa  addli r15, r30, -768
000114  ab08803f  lui r17, 260096
000118  1b356500  slli r10, r10, 6
00011c  8b9c2130  div.s r25, r3, r2
000120  9f020008  addli r5, zero, 1024
000124  6b590f00  load.d r[19:20], 0(r30)
000128  ab0d00f0  lui r27, 983040
00012c  2b0e00f0  lui r28, 983040
000130  8b919110  add.s r3, r3, r9
000134  971db701  or r27, r14, r27
000138  171ec701  or r28, r14, r28
00013c  8b9c1c30  div.s r25, r25, r1
000140  9bbccc00  slli r25, r25, 12
000144  8b9cac10  add.s r25, r25, r10
000148  0b9d5c38  mod.s r26, r25, r5
00014c  b3920c28  sext_int2long r[6:7], r25
000150  97b2c202  sll.d r[6:7], r[6:7], r12
000154  b31c0d28  sext_int2long r[26:27], r26
000158  97b3cc02  sll.d r[8:9], r[26:27], r12
00015c  8b2c5910  add.ul r[26:27], r[19:20], r[6:7]
000160  eb528f00  load.d r[6:7], 8(r30)
000164  8ba27210  add.ul r[6:7], r[6:7], r[8:9]
000168  9f030ff8  addli r7, r30, -1024
00016c  ffad7c00  l_gm2lm r27, r7, 0(r[26:27])
000170  7faef200  l_gm2lm r28, r15, 0(r[6:7])
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
0001c4  e3028ffc  loadli.w r5,  -448(r30)
0001c8  63438ffc  loadli.w r6,  -444(r30)
0001cc  630e9ffc  loadli.w r28,  -440(r30)
0001d0  6344affc  loadli.w r8,  -428(r30)
0001d4  e34d9ffc  loadli.w r27,  -436(r30)
0001d8  e303affc  loadli.w r7,  -432(r30)
0001dc  e305bffc  loadli.w r11,  -424(r30)
0001e0  e346bffc  loadli.w r13,  -420(r30)
0001e4  6308cffc  loadli.w r16,  -416(r30)
0001e8  6349cffc  loadli.w r18,  -412(r30)
0001ec  e309dffc  loadli.w r19,  -408(r30)
0001f0  634adffc  loadli.w r20,  -404(r30)
0001f4  e30aeffc  loadli.w r21,  -400(r30)
0001f8  634beffc  loadli.w r22,  -396(r30)
0001fc  e30bfffc  loadli.w r23,  -392(r30)
000200  634cfffc  loadli.w r24,  -388(r30)
000204  8f820200  exp.f.rn r5, r5
000208  0f030300  exp.f.rn r6, r6
00020c  0f0e0e00  exp.f.rn r28, r28
000210  0f040400  exp.f.rn r8, r8
000214  8f8d0d00  exp.f.rn r27, r27
000218  8f830300  exp.f.rn r7, r7
00021c  8f850500  exp.f.rn r11, r11
000220  8be21211  add.f.rn r5, r5, r17
000224  0b631311  add.f.rn r6, r6, r17
000228  0b6e1e11  add.f.rn r28, r28, r17
00022c  0b641411  add.f.rn r8, r8, r17
000230  8be31311  add.f.rn r7, r7, r17
000234  8be51511  add.f.rn r11, r11, r17
000238  8bed1d11  add.f.rn r27, r27, r17
00023c  8f825818  div.f.rn r5, r17, r5
000240  0f836818  div.f.rn r6, r17, r6
000244  8f837818  div.f.rn r7, r17, r7
000248  8f85b818  div.f.rn r11, r17, r11
00024c  67005ffc  storeli.w r5, -512(r30)
000250  8f820600  exp.f.rn r5, r13
000254  67406ffc  storeli.w r6, -508(r30)
000258  0f83c819  div.f.rn r6, r17, r28
00025c  8f060800  exp.f.rn r13, r16
000260  0f88b819  div.f.rn r16, r17, r27
000264  67017ffc  storeli.w r7, -496(r30)
000268  8f030900  exp.f.rn r7, r18
00026c  e701bffc  storeli.w r11, -488(r30)
000270  8f050b00  exp.f.rn r11, r22
000274  8be21211  add.f.rn r5, r5, r17
000278  e7006ffc  storeli.w r6, -504(r30)
00027c  0f838818  div.f.rn r6, r17, r8
000280  0be41611  add.f.rn r8, r13, r17
000284  8f860b00  exp.f.rn r13, r23
000288  e7400ffd  storeli.w r16, -500(r30)
00028c  0f080c00  exp.f.rn r16, r24
000290  8be31311  add.f.rn r7, r7, r17
000294  8be51511  add.f.rn r11, r11, r17
000298  8f825818  div.f.rn r5, r17, r5
00029c  0f848818  div.f.rn r8, r17, r8
0002a0  8f837818  div.f.rn r7, r17, r7
0002a4  8f85b818  div.f.rn r11, r17, r11
0002a8  67416ffc  storeli.w r6, -492(r30)
0002ac  0f030a00  exp.f.rn r6, r20
0002b0  8be61611  add.f.rn r13, r13, r17
0002b4  0b681811  add.f.rn r16, r16, r17
0002b8  e7415ffc  storeli.w r5, -484(r30)
0002bc  8f820900  exp.f.rn r5, r19
0002c0  67028ffc  storeli.w r8, -480(r30)
0002c4  0f840a00  exp.f.rn r8, r21
0002c8  8f86d818  div.f.rn r13, r17, r13
0002cc  0f880819  div.f.rn r16, r17, r16
0002d0  67427ffc  storeli.w r7, -476(r30)
0002d4  6743bffc  storeli.w r11, -460(r30)
0002d8  0b631311  add.f.rn r6, r6, r17
0002dc  8be21211  add.f.rn r5, r5, r17
0002e0  0b641411  add.f.rn r8, r8, r17
0002e4  0f836818  div.f.rn r6, r17, r6
0002e8  e703dffc  storeli.w r13, -456(r30)
0002ec  e7430ffd  storeli.w r16, -452(r30)
0002f0  8f825818  div.f.rn r5, r17, r5
0002f4  0f848818  div.f.rn r8, r17, r8
0002f8  e7426ffc  storeli.w r6, -468(r30)
0002fc  e7025ffc  storeli.w r5, -472(r30)
000300  67038ffc  storeli.w r8, -464(r30)
000304  9f020ffc  addli r5, r30, -512
000308  00a00000  mfence { lm }
00030c  c2920202  vload_mask16.mz vr5{mr1}, 0(r5)
000310  9f028ffd  addli r5, r30, -320
000314  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
000318  00a00000  mfence { lm }
00031c  e3028ffd  loadli.w r5,  -320(r30)
000320  e3039ffd  loadli.w r7,  -312(r30)
000324  63438ffd  loadli.w r6,  -316(r30)
000328  63449ffd  loadli.w r8,  -308(r30)
00032c  e345affd  loadli.w r11,  -300(r30)
000330  e306bffd  loadli.w r13,  -296(r30)
000334  6348bffd  loadli.w r16,  -292(r30)
000338  6309cffd  loadli.w r18,  -288(r30)
00033c  e349cffd  loadli.w r19,  -284(r30)
000340  630adffd  loadli.w r20,  -280(r30)
000344  e34adffd  loadli.w r21,  -276(r30)
000348  630beffd  loadli.w r22,  -272(r30)
00034c  e34beffd  loadli.w r23,  -268(r30)
000350  630cfffd  loadli.w r24,  -264(r30)
000354  634efffd  loadli.w r28,  -260(r30)
000358  8e915102  vmul.f.mz.rn vr3{mr1}, vr3, vr5
00035c  8f820200  exp.f.rn r5, r5
000360  8f830300  exp.f.rn r7, r7
000364  0f030300  exp.f.rn r6, r6
000368  8f0d0400  exp.f.rn r27, r8
00036c  6304affd  loadli.w r8,  -304(r30)
000370  8be21211  add.f.rn r5, r5, r17
000374  0b631311  add.f.rn r6, r6, r17
000378  8f825818  div.f.rn r5, r17, r5
00037c  0f836818  div.f.rn r6, r17, r6
000380  67085ffc  storeli.w r5, -384(r30)
000384  8be21311  add.f.rn r5, r7, r17
000388  8f030400  exp.f.rn r7, r8
00038c  0f840500  exp.f.rn r8, r11
000390  8f850600  exp.f.rn r11, r13
000394  8f060800  exp.f.rn r13, r16
000398  0f080900  exp.f.rn r16, r18
00039c  67486ffc  storeli.w r6, -380(r30)
0003a0  0be31d11  add.f.rn r6, r27, r17
0003a4  8f825818  div.f.rn r5, r17, r5
0003a8  0f836818  div.f.rn r6, r17, r6
0003ac  8be31311  add.f.rn r7, r7, r17
0003b0  0b641411  add.f.rn r8, r8, r17
0003b4  8be51511  add.f.rn r11, r11, r17
0003b8  8be61611  add.f.rn r13, r13, r17
0003bc  8f837818  div.f.rn r7, r17, r7
0003c0  e7085ffc  storeli.w r5, -376(r30)
0003c4  8f828818  div.f.rn r5, r17, r8
0003c8  0b641811  add.f.rn r8, r16, r17
0003cc  8f85b818  div.f.rn r11, r17, r11
0003d0  8f86d818  div.f.rn r13, r17, r13
0003d4  0f080e00  exp.f.rn r16, r28
0003d8  e7486ffc  storeli.w r6, -372(r30)
0003dc  0f830900  exp.f.rn r6, r19
0003e0  67097ffc  storeli.w r7, -368(r30)
0003e4  8f838818  div.f.rn r7, r17, r8
0003e8  0f840a00  exp.f.rn r8, r21
0003ec  67495ffc  storeli.w r5, -364(r30)
0003f0  8f020a00  exp.f.rn r5, r20
0003f4  e709bffc  storeli.w r11, -360(r30)
0003f8  8f850b00  exp.f.rn r11, r23
0003fc  e749dffc  storeli.w r13, -356(r30)
000400  8f060c00  exp.f.rn r13, r24
000404  0b631311  add.f.rn r6, r6, r17
000408  0b681811  add.f.rn r16, r16, r17
00040c  0f836818  div.f.rn r6, r17, r6
000410  0f880819  div.f.rn r16, r17, r16
000414  670a7ffc  storeli.w r7, -352(r30)
000418  8f030b00  exp.f.rn r7, r22
00041c  8be21211  add.f.rn r5, r5, r17
000420  0b641411  add.f.rn r8, r8, r17
000424  8be51511  add.f.rn r11, r11, r17
000428  8be61611  add.f.rn r13, r13, r17
00042c  8f825818  div.f.rn r5, r17, r5
000430  0f848818  div.f.rn r8, r17, r8
000434  8f85b818  div.f.rn r11, r17, r11
000438  8f86d818  div.f.rn r13, r17, r13
00043c  674a6ffc  storeli.w r6, -348(r30)
000440  e74b0ffd  storeli.w r16, -324(r30)
000444  8be31311  add.f.rn r7, r7, r17
000448  8f837818  div.f.rn r7, r17, r7
00044c  e70a5ffc  storeli.w r5, -344(r30)
000450  e74a8ffc  storeli.w r8, -340(r30)
000454  674bbffc  storeli.w r11, -332(r30)
000458  e70bdffc  storeli.w r13, -328(r30)
00045c  9f020ffd  addli r5, r30, -384
000460  670b7ffc  storeli.w r7, -336(r30)
000464  00a00000  mfence { lm }
000468  c2930202  vload_mask16.mz vr7{mr1}, 0(r5)
00046c  9f028ffe  addli r5, r30, -192
000470  46906202  vstore_mask16.mz vr6{mr1}, 0(r5)
000474  00a00000  mfence { lm }
000478  e3028ffe  loadli.w r5,  -192(r30)
00047c  e3039ffe  loadli.w r7,  -184(r30)
000480  63438ffe  loadli.w r6,  -188(r30)
000484  63449ffe  loadli.w r8,  -180(r30)
000488  e345affe  loadli.w r11,  -172(r30)
00048c  e306bffe  loadli.w r13,  -168(r30)
000490  6348bffe  loadli.w r16,  -164(r30)
000494  6309cffe  loadli.w r18,  -160(r30)
000498  e349cffe  loadli.w r19,  -156(r30)
00049c  630adffe  loadli.w r20,  -152(r30)
0004a0  e34adffe  loadli.w r21,  -148(r30)
0004a4  630beffe  loadli.w r22,  -144(r30)
0004a8  e34beffe  loadli.w r23,  -140(r30)
0004ac  630cfffe  loadli.w r24,  -136(r30)
0004b0  634efffe  loadli.w r28,  -132(r30)
0004b4  0e107002  vmul.f.mz.rn vr0{mr1}, vr0, vr7
0004b8  8f820200  exp.f.rn r5, r5
0004bc  8f830300  exp.f.rn r7, r7
0004c0  0f030300  exp.f.rn r6, r6
0004c4  8f0d0400  exp.f.rn r27, r8
0004c8  6304affe  loadli.w r8,  -176(r30)
0004cc  8be21211  add.f.rn r5, r5, r17
0004d0  0b631311  add.f.rn r6, r6, r17
0004d4  8f825818  div.f.rn r5, r17, r5
0004d8  0f836818  div.f.rn r6, r17, r6
0004dc  67005ffe  storeli.w r5, -256(r30)
0004e0  8be21311  add.f.rn r5, r7, r17
0004e4  8f030400  exp.f.rn r7, r8
0004e8  0f840500  exp.f.rn r8, r11
0004ec  8f850600  exp.f.rn r11, r13
0004f0  8f060800  exp.f.rn r13, r16
0004f4  0f080900  exp.f.rn r16, r18
0004f8  67406ffe  storeli.w r6, -252(r30)
0004fc  0be31d11  add.f.rn r6, r27, r17
000500  8f825818  div.f.rn r5, r17, r5
000504  0f836818  div.f.rn r6, r17, r6
000508  8be31311  add.f.rn r7, r7, r17
00050c  0b641411  add.f.rn r8, r8, r17
000510  8be51511  add.f.rn r11, r11, r17
000514  8be61611  add.f.rn r13, r13, r17
000518  8f837818  div.f.rn r7, r17, r7
00051c  e7005ffe  storeli.w r5, -248(r30)
000520  8f828818  div.f.rn r5, r17, r8
000524  0b641811  add.f.rn r8, r16, r17
000528  8f85b818  div.f.rn r11, r17, r11
00052c  8f86d818  div.f.rn r13, r17, r13
000530  0f080e00  exp.f.rn r16, r28
000534  e7406ffe  storeli.w r6, -244(r30)
000538  0f830900  exp.f.rn r6, r19
00053c  67017ffe  storeli.w r7, -240(r30)
000540  8f838818  div.f.rn r7, r17, r8
000544  0f840a00  exp.f.rn r8, r21
000548  67415ffe  storeli.w r5, -236(r30)
00054c  8f020a00  exp.f.rn r5, r20
000550  e701bffe  storeli.w r11, -232(r30)
000554  8f850b00  exp.f.rn r11, r23
000558  e741dffe  storeli.w r13, -228(r30)
00055c  8f060c00  exp.f.rn r13, r24
000560  0b631311  add.f.rn r6, r6, r17
000564  0b681811  add.f.rn r16, r16, r17
000568  0f836818  div.f.rn r6, r17, r6
00056c  0f880819  div.f.rn r16, r17, r16
000570  67027ffe  storeli.w r7, -224(r30)
000574  8f030b00  exp.f.rn r7, r22
000578  8be21211  add.f.rn r5, r5, r17
00057c  0b641411  add.f.rn r8, r8, r17
000580  8be51511  add.f.rn r11, r11, r17
000584  8be61611  add.f.rn r13, r13, r17
000588  8f825818  div.f.rn r5, r17, r5
00058c  0f848818  div.f.rn r8, r17, r8
000590  8f85b818  div.f.rn r11, r17, r11
000594  8f86d818  div.f.rn r13, r17, r13
000598  67426ffe  storeli.w r6, -220(r30)
00059c  e7430fff  storeli.w r16, -196(r30)
0005a0  8be31311  add.f.rn r7, r7, r17
0005a4  8f837818  div.f.rn r7, r17, r7
0005a8  e7025ffe  storeli.w r5, -216(r30)
0005ac  e7428ffe  storeli.w r8, -212(r30)
0005b0  6743bffe  storeli.w r11, -204(r30)
0005b4  e703dffe  storeli.w r13, -200(r30)
0005b8  9f020ffe  addli r5, r30, -256
0005bc  67037ffe  storeli.w r7, -208(r30)
0005c0  00a00000  mfence { lm }
0005c4  42930202  vload_mask16.mz vr6{mr1}, 0(r5)
0005c8  9f028fff  addli r5, r30, -64
0005cc  46904202  vstore_mask16.mz vr4{mr1}, 0(r5)
0005d0  00a00000  mfence { lm }
0005d4  e3028fff  loadli.w r5,  -64(r30)
0005d8  63438fff  loadli.w r6,  -60(r30)
0005dc  e3039fff  loadli.w r7,  -56(r30)
0005e0  63449fff  loadli.w r8,  -52(r30)
0005e4  e305bfff  loadli.w r11,  -40(r30)
0005e8  e346bfff  loadli.w r13,  -36(r30)
0005ec  6308cfff  loadli.w r16,  -32(r30)
0005f0  6349cfff  loadli.w r18,  -28(r30)
0005f4  e309dfff  loadli.w r19,  -24(r30)
0005f8  634adfff  loadli.w r20,  -20(r30)
0005fc  e30aefff  loadli.w r21,  -16(r30)
000600  634befff  loadli.w r22,  -12(r30)
000604  e30bffff  loadli.w r23,  -8(r30)
000608  634cffff  loadli.w r24,  -4(r30)
00060c  8e906002  vmul.f.mz.rn vr1{mr1}, vr1, vr6
000610  8f820200  exp.f.rn r5, r5
000614  0f030300  exp.f.rn r6, r6
000618  8f8d0300  exp.f.rn r27, r7
00061c  e303afff  loadli.w r7,  -48(r30)
000620  0f0e0400  exp.f.rn r28, r8
000624  6344afff  loadli.w r8,  -44(r30)
000628  8f850500  exp.f.rn r11, r11
00062c  8f860600  exp.f.rn r13, r13
000630  0f080800  exp.f.rn r16, r16
000634  8f830300  exp.f.rn r7, r7
000638  0f040400  exp.f.rn r8, r8
00063c  8be21211  add.f.rn r5, r5, r17
000640  0b631311  add.f.rn r6, r6, r17
000644  8be51511  add.f.rn r11, r11, r17
000648  8be61611  add.f.rn r13, r13, r17
00064c  0b681811  add.f.rn r16, r16, r17
000650  8be31311  add.f.rn r7, r7, r17
000654  0b641411  add.f.rn r8, r8, r17
000658  8f825818  div.f.rn r5, r17, r5
00065c  0f836818  div.f.rn r6, r17, r6
000660  67085ffe  storeli.w r5, -128(r30)
000664  8be21d11  add.f.rn r5, r27, r17
000668  67486ffe  storeli.w r6, -124(r30)
00066c  0b631e11  add.f.rn r6, r28, r17
000670  8f825818  div.f.rn r5, r17, r5
000674  0f836818  div.f.rn r6, r17, r6
000678  e7085ffe  storeli.w r5, -120(r30)
00067c  8f827818  div.f.rn r5, r17, r7
000680  8f838818  div.f.rn r7, r17, r8
000684  0f84b818  div.f.rn r8, r17, r11
000688  8f85d818  div.f.rn r11, r17, r13
00068c  8f860819  div.f.rn r13, r17, r16
000690  0f080c00  exp.f.rn r16, r24
000694  e7486ffe  storeli.w r6, -116(r30)
000698  0f030900  exp.f.rn r6, r18
00069c  67095ffe  storeli.w r5, -112(r30)
0006a0  8f820900  exp.f.rn r5, r19
0006a4  67497ffe  storeli.w r7, -108(r30)
0006a8  8f030a00  exp.f.rn r7, r20
0006ac  e7098ffe  storeli.w r8, -104(r30)
0006b0  0f840a00  exp.f.rn r8, r21
0006b4  e749bffe  storeli.w r11, -100(r30)
0006b8  8f050b00  exp.f.rn r11, r22
0006bc  670adffe  storeli.w r13, -96(r30)
0006c0  8f860b00  exp.f.rn r13, r23
0006c4  0b631311  add.f.rn r6, r6, r17
0006c8  0b681811  add.f.rn r16, r16, r17
0006cc  0f836818  div.f.rn r6, r17, r6
0006d0  0f880819  div.f.rn r16, r17, r16
0006d4  8be21211  add.f.rn r5, r5, r17
0006d8  8be31311  add.f.rn r7, r7, r17
0006dc  0b641411  add.f.rn r8, r8, r17
0006e0  8be51511  add.f.rn r11, r11, r17
0006e4  8be61611  add.f.rn r13, r13, r17
0006e8  8f825818  div.f.rn r5, r17, r5
0006ec  8f837818  div.f.rn r7, r17, r7
0006f0  0f848818  div.f.rn r8, r17, r8
0006f4  8f85b818  div.f.rn r11, r17, r11
0006f8  8f86d818  div.f.rn r13, r17, r13
0006fc  674a6ffe  storeli.w r6, -92(r30)
000700  e74b0fff  storeli.w r16, -68(r30)
000704  e70a5ffe  storeli.w r5, -88(r30)
000708  e74a7ffe  storeli.w r7, -84(r30)
00070c  670b8ffe  storeli.w r8, -80(r30)
000710  674bbffe  storeli.w r11, -76(r30)
000714  e70bdffe  storeli.w r13, -72(r30)
000718  9f020fff  addli r5, r30, -128
00071c  00a00000  mfence { lm }
000720  46103fa2  vstore_mask16.mz vr3{mr1}, 1280(r30)
000724  42920202  vload_mask16.mz vr4{mr1}, 0(r5)
000728  ab0200f0  lui r5, 983040
00072c  46140fa2  vstore_mask16.mz vr0{mr1}, 1344(r30)
000730  46181fa2  vstore_mask16.mz vr1{mr1}, 1408(r30)
000734  97125700  or r5, r14, r5
000738  0e114102  vmul.f.mz.rn vr2{mr1}, vr2, vr4
00073c  461c2fa2  vstore_mask16.mz vr2{mr1}, 1472(r30)
000740  00a00000  mfence { lm }
000744  ffb2fc00  s_lm2gm r5, r15, 0(r[26:27])
000748  00a00000  mfence { lm }
00074c  3fc741fc  blt.s r3, r4, -1584
000750  9f0e0ff8  addli sp, r30, -1024
000754  9f8e0e08  addli sp, sp, 1024
000758  00a00300  mfence { lm, sm, gm }
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
