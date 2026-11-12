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
0000dc  9f8e8efc  addli sp, sp, -448
0000e0  1f8f0e03  addli r30, sp, 384
0000e4  e3403f00  loadli.w r1,  28(r30)
0000e8  e3013f00  loadli.w r3,  24(r30)
0000ec  63014f00  loadli.w r2,  32(r30)
0000f0  0b923020  mul.s r4, r1, r3
0000f4  80510002  load_param_i r3, 0
0000f8  0b122220  mul.s r4, r4, r2
0000fc  4b2e3200  ble.s r4, r3, 904
000100  80320002  core_id r5
000104  80d50002  load_param_i r11, 1
000108  9f160000  addli r13, zero, 1
00010c  9f078000  addli r15, zero, 64
000110  9f088ffd  addli r17, r30, -320
000114  ab09803f  lui r19, 260096
000118  1bb65200  slli r12, r5, 5
00011c  8b922130  div.s r5, r3, r2
000120  1f030008  addli r6, zero, 1024
000124  ab0b00f0  lui r23, 983040
000128  2b0c00f0  lui r24, 983040
00012c  eb530f00  load.d r[8:9], 0(r30)
000130  8b91b110  add.s r3, r3, r11
000134  979c7701  or r25, r15, r23
000138  179d8701  or r26, r15, r24
00013c  8b921230  div.s r5, r5, r1
000140  9bb2b200  slli r5, r5, 11
000144  8b92c210  add.s r5, r5, r12
000148  0b936238  mod.s r6, r5, r6
00014c  b39b0228  sext_int2long r[24:25], r5
000150  97bbdb02  sll.d r[24:25], r[24:25], r13
000154  8bad7311  add.ul r[28:29], r[8:9], r[24:25]
000158  eb538f00  load.d r[8:9], 8(r30)
00015c  b3120328  sext_int2long r[6:7], r6
000160  97b2d202  sll.d r[6:7], r[6:7], r13
000164  8ba25310  add.ul r[6:7], r[8:9], r[6:7]
000168  9f030ffd  addli r7, r30, -384
00016c  ffac7d00  l_gm2lm r25, r7, 0(r[28:29])
000170  7fad1201  l_gm2lm r26, r17, 0(r[6:7])
000174  9f028ffe  addli r5, r30, -192
000178  00a00000  mfence { lm }
00017c  42100fc3  vload_mask16.mz vr0{mr1}, 1664(r30)
000180  c2108fc3  vload_mask16.mz vr1{mr1}, 1728(r30)
000184  06310000  vfp162float_l.rn vr2, vr0
000188  86710000  vfp162float_h.rn vr3, vr0
00018c  06f20000  vfp162float_h.rn vr4, vr1
000190  06b00000  vfp162float_l.rn vr0, vr1
000194  96904102  vadd.f.mz.rn vr1{mr1}, vr3, vr4
000198  16100102  vadd.f.mz.rn vr0{mr1}, vr2, vr0
00019c  9a110002  vsub.f.mz.rn vr3{mr1}, zero, vr0
0001a0  46903202  vstore_mask16.mz vr3{mr1}, 0(r5)
0001a4  1a111002  vsub.f.mz.rn vr2{mr1}, zero, vr1
0001a8  00a00000  mfence { lm }
0001ac  e303affe  loadli.w r7,  -176(r30)
0001b0  6344affe  loadli.w r8,  -172(r30)
0001b4  e304bffe  loadli.w r9,  -168(r30)
0001b8  6345bffe  loadli.w r10,  -164(r30)
0001bc  6307cffe  loadli.w r14,  -160(r30)
0001c0  e30c8ffe  loadli.w r25,  -192(r30)
0001c4  634d8ffe  loadli.w r26,  -188(r30)
0001c8  e30d9ffe  loadli.w r27,  -184(r30)
0001cc  634e9ffe  loadli.w r28,  -180(r30)
0001d0  e302dffe  loadli.w r5,  -152(r30)
0001d4  6343dffe  loadli.w r6,  -148(r30)
0001d8  6348cffe  loadli.w r16,  -156(r30)
0001dc  6309effe  loadli.w r18,  -144(r30)
0001e0  634aeffe  loadli.w r20,  -140(r30)
0001e4  e30afffe  loadli.w r21,  -136(r30)
0001e8  634bfffe  loadli.w r22,  -132(r30)
0001ec  8f830300  exp.f.rn r7, r7
0001f0  0f040400  exp.f.rn r8, r8
0001f4  8f840400  exp.f.rn r9, r9
0001f8  0f050500  exp.f.rn r10, r10
0001fc  0f070700  exp.f.rn r14, r14
000200  8f8c0c00  exp.f.rn r25, r25
000204  0f0d0d00  exp.f.rn r26, r26
000208  8f8d0d00  exp.f.rn r27, r27
00020c  0f0e0e00  exp.f.rn r28, r28
000210  8f820200  exp.f.rn r5, r5
000214  0f030300  exp.f.rn r6, r6
000218  8be33311  add.f.rn r7, r7, r19
00021c  0b643411  add.f.rn r8, r8, r19
000220  8be43411  add.f.rn r9, r9, r19
000224  0b653511  add.f.rn r10, r10, r19
000228  0b673711  add.f.rn r14, r14, r19
00022c  8bec3c11  add.f.rn r25, r25, r19
000230  0b6d3d11  add.f.rn r26, r26, r19
000234  8bed3d11  add.f.rn r27, r27, r19
000238  0b6e3e11  add.f.rn r28, r28, r19
00023c  8be23211  add.f.rn r5, r5, r19
000240  0b633311  add.f.rn r6, r6, r19
000244  8f837918  div.f.rn r7, r19, r7
000248  0f848918  div.f.rn r8, r19, r8
00024c  8f849918  div.f.rn r9, r19, r9
000250  0f85a918  div.f.rn r10, r19, r10
000254  0f87e918  div.f.rn r14, r19, r14
000258  8f8c9919  div.f.rn r25, r19, r25
00025c  0f8da919  div.f.rn r26, r19, r26
000260  8f8db919  div.f.rn r27, r19, r27
000264  0f8ec919  div.f.rn r28, r19, r28
000268  8f825918  div.f.rn r5, r19, r5
00026c  0f836918  div.f.rn r6, r19, r6
000270  67017ffe  storeli.w r7, -240(r30)
000274  8f030800  exp.f.rn r7, r16
000278  67418ffe  storeli.w r8, -236(r30)
00027c  0f040900  exp.f.rn r8, r18
000280  e7019ffe  storeli.w r9, -232(r30)
000284  8f040a00  exp.f.rn r9, r20
000288  e741affe  storeli.w r10, -228(r30)
00028c  0f850a00  exp.f.rn r10, r21
000290  6702effe  storeli.w r14, -224(r30)
000294  0f070b00  exp.f.rn r14, r22
000298  e7025ffe  storeli.w r5, -216(r30)
00029c  67009fff  storeli.w r25, -256(r30)
0002a0  6740afff  storeli.w r26, -252(r30)
0002a4  e700bfff  storeli.w r27, -248(r30)
0002a8  e740cfff  storeli.w r28, -244(r30)
0002ac  e7426ffe  storeli.w r6, -212(r30)
0002b0  9f020ffe  addli r5, r30, -256
0002b4  8be33311  add.f.rn r7, r7, r19
0002b8  0b643411  add.f.rn r8, r8, r19
0002bc  8be43411  add.f.rn r9, r9, r19
0002c0  0b653511  add.f.rn r10, r10, r19
0002c4  0b673711  add.f.rn r14, r14, r19
0002c8  8f837918  div.f.rn r7, r19, r7
0002cc  0f848918  div.f.rn r8, r19, r8
0002d0  8f849918  div.f.rn r9, r19, r9
0002d4  0f85a918  div.f.rn r10, r19, r10
0002d8  0f87e918  div.f.rn r14, r19, r14
0002dc  67427ffe  storeli.w r7, -220(r30)
0002e0  67038ffe  storeli.w r8, -208(r30)
0002e4  67439ffe  storeli.w r9, -204(r30)
0002e8  e703affe  storeli.w r10, -200(r30)
0002ec  e743effe  storeli.w r14, -196(r30)
0002f0  00a00000  mfence { lm }
0002f4  c2910202  vload_mask16.mz vr3{mr1}, 0(r5)
0002f8  9f028fff  addli r5, r30, -64
0002fc  46902202  vstore_mask16.mz vr2{mr1}, 0(r5)
000300  00a00000  mfence { lm }
000304  e3028fff  loadli.w r5,  -64(r30)
000308  63438fff  loadli.w r6,  -60(r30)
00030c  e3039fff  loadli.w r7,  -56(r30)
000310  6345afff  loadli.w r10,  -44(r30)
000314  6307bfff  loadli.w r14,  -40(r30)
000318  6348bfff  loadli.w r16,  -36(r30)
00031c  6309cfff  loadli.w r18,  -32(r30)
000320  634acfff  loadli.w r20,  -28(r30)
000324  e30adfff  loadli.w r21,  -24(r30)
000328  634bdfff  loadli.w r22,  -20(r30)
00032c  e30cefff  loadli.w r25,  -16(r30)
000330  634defff  loadli.w r26,  -12(r30)
000334  e30dffff  loadli.w r27,  -8(r30)
000338  634effff  loadli.w r28,  -4(r30)
00033c  0e103002  vmul.f.mz.rn vr0{mr1}, vr0, vr3
000340  8f820200  exp.f.rn r5, r5
000344  0f030300  exp.f.rn r6, r6
000348  0be43211  add.f.rn r8, r5, r19
00034c  8b643311  add.f.rn r9, r6, r19
000350  8f820300  exp.f.rn r5, r7
000354  63439fff  loadli.w r6,  -52(r30)
000358  0f030300  exp.f.rn r6, r6
00035c  8f838918  div.f.rn r7, r19, r8
000360  0f849918  div.f.rn r8, r19, r9
000364  e304afff  loadli.w r9,  -48(r30)
000368  8be23211  add.f.rn r5, r5, r19
00036c  0b633311  add.f.rn r6, r6, r19
000370  67087ffe  storeli.w r7, -128(r30)
000374  8f830400  exp.f.rn r7, r9
000378  8f040700  exp.f.rn r9, r14
00037c  0f070900  exp.f.rn r14, r18
000380  67488ffe  storeli.w r8, -124(r30)
000384  0f040500  exp.f.rn r8, r10
000388  0f050800  exp.f.rn r10, r16
00038c  8f825918  div.f.rn r5, r19, r5
000390  0f836918  div.f.rn r6, r19, r6
000394  8be33311  add.f.rn r7, r7, r19
000398  0b643411  add.f.rn r8, r8, r19
00039c  8be43411  add.f.rn r9, r9, r19
0003a0  0b653511  add.f.rn r10, r10, r19
0003a4  0b673711  add.f.rn r14, r14, r19
0003a8  e7085ffe  storeli.w r5, -120(r30)
0003ac  e7486ffe  storeli.w r6, -116(r30)
0003b0  0f030a00  exp.f.rn r6, r20
0003b4  8f827918  div.f.rn r5, r19, r7
0003b8  8f838918  div.f.rn r7, r19, r8
0003bc  0f849918  div.f.rn r8, r19, r9
0003c0  8f84a918  div.f.rn r9, r19, r10
0003c4  0f85e918  div.f.rn r10, r19, r14
0003c8  0f070e00  exp.f.rn r14, r28
0003cc  0b633311  add.f.rn r6, r6, r19
0003d0  67095ffe  storeli.w r5, -112(r30)
0003d4  8f820a00  exp.f.rn r5, r21
0003d8  67497ffe  storeli.w r7, -108(r30)
0003dc  8f030b00  exp.f.rn r7, r22
0003e0  e7098ffe  storeli.w r8, -104(r30)
0003e4  0f840c00  exp.f.rn r8, r25
0003e8  e7499ffe  storeli.w r9, -100(r30)
0003ec  8f040d00  exp.f.rn r9, r26
0003f0  670aaffe  storeli.w r10, -96(r30)
0003f4  0f850d00  exp.f.rn r10, r27
0003f8  0b673711  add.f.rn r14, r14, r19
0003fc  0f836918  div.f.rn r6, r19, r6
000400  0f87e918  div.f.rn r14, r19, r14
000404  8be23211  add.f.rn r5, r5, r19
000408  8be33311  add.f.rn r7, r7, r19
00040c  0b643411  add.f.rn r8, r8, r19
000410  8be43411  add.f.rn r9, r9, r19
000414  0b653511  add.f.rn r10, r10, r19
000418  674a6ffe  storeli.w r6, -92(r30)
00041c  8f825918  div.f.rn r5, r19, r5
000420  8f837918  div.f.rn r7, r19, r7
000424  0f848918  div.f.rn r8, r19, r8
000428  8f849918  div.f.rn r9, r19, r9
00042c  0f85a918  div.f.rn r10, r19, r10
000430  e74beffe  storeli.w r14, -68(r30)
000434  e70a5ffe  storeli.w r5, -88(r30)
000438  e74a7ffe  storeli.w r7, -84(r30)
00043c  670b8ffe  storeli.w r8, -80(r30)
000440  674b9ffe  storeli.w r9, -76(r30)
000444  e70baffe  storeli.w r10, -72(r30)
000448  9f020fff  addli r5, r30, -128
00044c  ab0300f0  lui r7, 983040
000450  00a00000  mfence { lm }
000454  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
000458  eb520f01  load.d r[6:7], 16(r30)
00045c  97937700  or r7, r15, r7
000460  8ba27211  add.ul r[6:7], r[6:7], r[24:25]
000464  8e902002  vmul.f.mz.rn vr1{mr1}, vr1, vr2
000468  06110000  vfloat2fp16_l.rn vr2, vr0
00046c  06d10000  vfloat2fp16_h.rn vr2, vr1
000470  461c2fc2  vstore_mask16.mz vr2{mr1}, 1728(r30)
000474  00a00000  mfence { lm }
000478  ffb31201  s_lm2gm r7, r17, 0(r[6:7])
00047c  00a00000  mfence { lm }
000480  3ff241fe  blt.s r3, r4, -868
000484  9f0e0ffd  addli sp, r30, -384
000488  9f8e0e03  addli sp, sp, 384
00048c  00a00300  mfence { lm, sm, gm }
000490  00100000  exit
000494  00100000  exit
000498  00100000  exit
00049c  00100000  exit
0004a0  00100000  exit
0004a4  00100000  exit
0004a8  00100000  exit
0004ac  00100000  exit
0004b0  00100000  exit
0004b4  00100000  exit
0004b8  00100000  exit
0004bc  00100000  exit
0004c0  00100000  exit
0004c4  00100000  exit
0004c8  00100000  exit
0004cc  00100000  exit
0004d0  00100000  exit
0004d4  00100000  exit
0004d8  00100000  exit
0004dc  00100000  exit
0004e0  00100000  exit
0004e4  00100000  exit
0004e8  00100000  exit
0004ec  00100000  exit
0004f0  00100000  exit
0004f4  00100000  exit
0004f8  00100000  exit
0004fc  00100000  exit
000500  00100000  exit
000504  00100000  exit
000508  00100000  exit
00050c  00100000  exit
000510  00100000  exit
000514  00100000  exit
000518  00100000  exit
00051c  00100000  exit
000520  00100000  exit
000524  00100000  exit
000528  00100000  exit
00052c  00100000  exit
000530  00100000  exit
000534  00100000  exit
000538  00100000  exit
00053c  00100000  exit
000540  00100000  exit
000544  00100000  exit
000548  00100000  exit
00054c  00100000  exit
000550  00100000  exit
000554  00100000  exit
000558  00100000  exit
00055c  00100000  exit
000560  00100000  exit
000564  00100000  exit
000568  00100000  exit
00056c  00100000  exit
000570  00100000  exit
000574  00100000  exit
000578  00100000  exit
00057c  00100000  exit
000580  00100000  exit
000584  00100000  exit
000588  00100000  exit
00058c  00100000  exit
000590  00100000  exit
000594  00100000  exit
000598  00100000  exit
00059c  00100000  exit
0005a0  00100000  exit
0005a4  00100000  exit
0005a8  00100000  exit
0005ac  00100000  exit
0005b0  00100000  exit
0005b4  00100000  exit
0005b8  00100000  exit
0005bc  00100000  exit
0005c0  00100000  exit
0005c4  00100000  exit
0005c8  00100000  exit
0005cc  00100000  exit
0005d0  00100000  exit
0005d4  00100000  exit
0005d8  00100000  exit
0005dc  00100000  exit
0005e0  00100000  exit
0005e4  00100000  exit
0005e8  00100000  exit
0005ec  00100000  exit
0005f0  00100000  exit
0005f4  00100000  exit
0005f8  00100000  exit
0005fc  00100000  exit
000600  00100000  exit
000604  00100000  exit
000608  00100000  exit
00060c  00100000  exit
000610  00100000  exit
000614  00100000  exit
000618  00100000  exit
00061c  00100000  exit
000620  00100000  exit
000624  00100000  exit
000628  00100000  exit
00062c  00100000  exit
000630  00100000  exit
000634  00100000  exit
000638  00100000  exit
00063c  00100000  exit
000640  00100000  exit
000644  00100000  exit
000648  00100000  exit
00064c  00100000  exit
000650  00100000  exit
000654  00100000  exit
000658  00100000  exit
00065c  00100000  exit
000660  00100000  exit
000664  00100000  exit
000668  00100000  exit
00066c  00100000  exit
000670  00100000  exit
000674  00100000  exit
000678  00100000  exit
00067c  00100000  exit
000680  00100000  exit
000684  00100000  exit
000688  00100000  exit
00068c  00100000  exit
000690  00100000  exit
000694  00100000  exit
000698  00100000  exit
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
