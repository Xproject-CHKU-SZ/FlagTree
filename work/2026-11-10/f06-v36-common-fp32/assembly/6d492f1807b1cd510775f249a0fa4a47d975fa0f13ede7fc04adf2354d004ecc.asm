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
0000dc  9f8e0efc  addli sp, sp, -512
0000e0  1f8f8e03  addli r30, sp, 448
0000e4  e3043f00  loadli.w r9,  24(r30)
0000e8  e3412f00  loadli.w r3,  20(r30)
0000ec  e3403f00  loadli.w r1,  28(r30)
0000f0  0b923420  mul.s r4, r9, r3
0000f4  80510002  load_param_i r3, 0
0000f8  0b121220  mul.s r4, r4, r1
0000fc  4b4c3200  ble.s r4, r3, 784
000100  00d10002  load_param_i r2, 1
000104  00350002  core_id r10
000108  ab0980c1  lui r19, 792576
00010c  2b0a8041  lui r20, 268288
000110  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000114  ab28373d  lui r17, 250738
000118  2b494c3f  lui r18, 259268
00011c  1f078000  addli r14, zero, 64
000120  9f078ffd  addli r15, r30, -320
000124  2b0b803f  lui r22, 260096
000128  2b0c00c0  lui r24, 786432
00012c  6e312162  vxor.s.mz vr2{mr1}, vr2, vr2
000130  67472ffc  storeli.w r2, -396(r30)
000134  1b314500  slli r2, r10, 4
000138  6a901922  vor.f.mz vr0{mr1}, r19, vr1
00013c  ea101a22  vor.f.mz vr1{mr1}, r20, vr1
000140  9b983871  ori r17, r17, 1811
000144  1b19a922  ori r18, r18, 554
000148  67072ffc  storeli.w r2, -400(r30)
00014c  2bf10000  lui r2, 15
000150  1f71f11f  addli r2, r2, 4095
000154  7e0001e0  vmmov mr0, r2
000158  0b9d1130  div.s r26, r3, r1
00015c  6301effc  loadli.w r2,  -400(r30)
000160  eb550f00  load.d r[12:13], 0(r30)
000164  1f850000  addli r10, r1, 0
000168  ab0200f0  lui r5, 983040
00016c  2b0e00f0  lui r28, 983040
000170  1713c701  or r6, r14, r28
000174  97125700  or r5, r14, r5
000178  0b1d9d30  div.s r26, r26, r9
00017c  1b3dad00  slli r26, r26, 10
000180  0b1d2d10  add.s r26, r26, r2
000184  1f010008  addli r2, zero, 1024
000188  8b1d2d38  mod.s r27, r26, r2
00018c  b3130d28  sext_int2long r[8:9], r26
000190  1f210000  addli r2, zero, 2
000194  97b32302  sll.d r[8:9], r[8:9], r2
000198  339d0d28  sext_int2long r[27:28], r27
00019c  97302d02  sll.d r[2:3], r[27:28], r2
0001a0  0bad7510  add.ul r[27:28], r[12:13], r[8:9]
0001a4  eb538f00  load.d r[8:9], 8(r30)
0001a8  8ba01310  add.ul r[2:3], r[8:9], r[2:3]
0001ac  9f030ffd  addli r7, r30, -384
0001b0  7f237d00  l_gm2lm r6, r7, 0(r[27:28])
0001b4  ffa2f000  l_gm2lm r5, r15, 0(r[2:3])
0001b8  00a00000  mfence { lm }
0001bc  c2110fc3  vload_mask16.mz vr3{mr1}, 1664(r30)
0001c0  42128fc3  vload_mask16.mz vr4{mr1}, 1728(r30)
0001c4  96914102  vadd.f.mz.rn vr3{mr1}, vr3, vr4
0001c8  0e923102  vmul.f.mz.rn vr4{mr1}, vr3, vr3
0001cc  0e924102  vmul.f.mz.rn vr4{mr1}, vr3, vr4
0001d0  0a924802  vmul.f.mz.rn vr4{mr1}, r17, vr4
0001d4  16924102  vadd.f.mz.rn vr4{mr1}, vr3, vr4
0001d8  0a124902  vmul.f.mz.rn vr4{mr1}, r18, vr4
0001dc  f6110242  vlt.f.mz mr3{mr1}, vr4, vr0
0001e0  76914042  vlt.f.mz mr2{mr1}, vr1, vr4
0001e4  fe8001a0  vmmov r1, mr3
0001e8  7e0101a0  vmmov r2, mr2
0001ec  731e1fe6  store.h r1, -388(r30)
0001f0  e340fffc  loadli.w r1,  -388(r30)
0001f4  731c2fe6  store.h r2, -392(r30)
0001f8  6301fffc  loadli.w r2,  -392(r30)
0001fc  7e8100e0  vmmov mr2, r1
000200  ab000040  lui r1, 262144
000204  7e010100  vmand mr2, mr2, mr0
000208  6e120134  vor.f.mh vr4{mr2}, vr2, vr0
00020c  7e0101e0  vmmov mr2, r2
000210  7e010100  vmand mr2, mr2, mr0
000214  6e121134  vor.f.mh vr4{mr2}, vr2, vr1
000218  0a924002  vmul.f.mz.rn vr4{mr1}, r1, vr4
00021c  ab00003f  lui r1, 258048
000220  8a913002  vmul.f.mz.rn vr3{mr1}, r1, vr3
000224  9f008fff  addli r1, r30, -64
000228  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
00022c  00a00000  mfence { lm }
000230  e3008fff  loadli.w r1,  -64(r30)
000234  63418fff  loadli.w r2,  -60(r30)
000238  e3029fff  loadli.w r5,  -56(r30)
00023c  63439fff  loadli.w r6,  -52(r30)
000240  e303afff  loadli.w r7,  -48(r30)
000244  6344afff  loadli.w r8,  -44(r30)
000248  630ebfff  loadli.w r28,  -40(r30)
00024c  6348bfff  loadli.w r16,  -36(r30)
000250  e305cfff  loadli.w r11,  -32(r30)
000254  e346cfff  loadli.w r13,  -28(r30)
000258  e309dfff  loadli.w r19,  -24(r30)
00025c  634adfff  loadli.w r20,  -20(r30)
000260  e30aefff  loadli.w r21,  -16(r30)
000264  e34befff  loadli.w r23,  -12(r30)
000268  e30cffff  loadli.w r25,  -8(r30)
00026c  6346ffff  loadli.w r12,  -4(r30)
000270  8f800000  exp.f.rn r1, r1
000274  0f010100  exp.f.rn r2, r2
000278  8f820200  exp.f.rn r5, r5
00027c  0f030300  exp.f.rn r6, r6
000280  8f830300  exp.f.rn r7, r7
000284  0f040400  exp.f.rn r8, r8
000288  0f0e0e00  exp.f.rn r28, r28
00028c  0f080800  exp.f.rn r16, r16
000290  8f850500  exp.f.rn r11, r11
000294  8f860600  exp.f.rn r13, r13
000298  8f890900  exp.f.rn r19, r19
00029c  0f0a0a00  exp.f.rn r20, r20
0002a0  8f8a0a00  exp.f.rn r21, r21
0002a4  8f8b0b00  exp.f.rn r23, r23
0002a8  8f8c0c00  exp.f.rn r25, r25
0002ac  0f060600  exp.f.rn r12, r12
0002b0  67081ffe  storeli.w r1, -128(r30)
0002b4  67482ffe  storeli.w r2, -124(r30)
0002b8  e7085ffe  storeli.w r5, -120(r30)
0002bc  e7486ffe  storeli.w r6, -116(r30)
0002c0  67097ffe  storeli.w r7, -112(r30)
0002c4  67498ffe  storeli.w r8, -108(r30)
0002c8  e709cfff  storeli.w r28, -104(r30)
0002cc  e7490fff  storeli.w r16, -100(r30)
0002d0  670abffe  storeli.w r11, -96(r30)
0002d4  674adffe  storeli.w r13, -92(r30)
0002d8  e70a3fff  storeli.w r19, -88(r30)
0002dc  e74a4fff  storeli.w r20, -84(r30)
0002e0  670b5fff  storeli.w r21, -80(r30)
0002e4  674b7fff  storeli.w r23, -76(r30)
0002e8  e70b9fff  storeli.w r25, -72(r30)
0002ec  e74bcffe  storeli.w r12, -68(r30)
0002f0  9f000fff  addli r1, r30, -128
0002f4  00a00000  mfence { lm }
0002f8  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
0002fc  9f008ffe  addli r1, r30, -192
000300  12124b02  vadd.f.mz.rn vr4{mr1}, r22, vr4
000304  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
000308  00a00000  mfence { lm }
00030c  e3008ffe  loadli.w r1,  -192(r30)
000310  63418ffe  loadli.w r2,  -188(r30)
000314  e3029ffe  loadli.w r5,  -184(r30)
000318  63439ffe  loadli.w r6,  -180(r30)
00031c  e303affe  loadli.w r7,  -176(r30)
000320  6344affe  loadli.w r8,  -172(r30)
000324  e305bffe  loadli.w r11,  -168(r30)
000328  6346bffe  loadli.w r12,  -164(r30)
00032c  e306cffe  loadli.w r13,  -160(r30)
000330  6348cffe  loadli.w r16,  -156(r30)
000334  e309dffe  loadli.w r19,  -152(r30)
000338  634adffe  loadli.w r20,  -148(r30)
00033c  e30aeffe  loadli.w r21,  -144(r30)
000340  e34beffe  loadli.w r23,  -140(r30)
000344  e30cfffe  loadli.w r25,  -136(r30)
000348  634efffe  loadli.w r28,  -132(r30)
00034c  8f001c18  div.f.rn r1, r24, r1
000350  0f012c18  div.f.rn r2, r24, r2
000354  67001ffe  storeli.w r1, -256(r30)
000358  8f005c18  div.f.rn r1, r24, r5
00035c  8f027c18  div.f.rn r5, r24, r7
000360  8f03bc18  div.f.rn r7, r24, r11
000364  67402ffe  storeli.w r2, -252(r30)
000368  0f016c18  div.f.rn r2, r24, r6
00036c  0f038c18  div.f.rn r6, r24, r8
000370  0f04cc18  div.f.rn r8, r24, r12
000374  8f05dc18  div.f.rn r11, r24, r13
000378  e7001ffe  storeli.w r1, -248(r30)
00037c  e7402ffe  storeli.w r2, -244(r30)
000380  67015ffe  storeli.w r5, -240(r30)
000384  67416ffe  storeli.w r6, -236(r30)
000388  e7017ffe  storeli.w r7, -232(r30)
00038c  e7418ffe  storeli.w r8, -228(r30)
000390  6702bffe  storeli.w r11, -224(r30)
000394  8f000c19  div.f.rn r1, r24, r16
000398  0f013c19  div.f.rn r2, r24, r19
00039c  8f024c19  div.f.rn r5, r24, r20
0003a0  0f035c19  div.f.rn r6, r24, r21
0003a4  8f037c19  div.f.rn r7, r24, r23
0003a8  0f049c19  div.f.rn r8, r24, r25
0003ac  8f05cc19  div.f.rn r11, r24, r28
0003b0  67421ffe  storeli.w r1, -220(r30)
0003b4  e7022ffe  storeli.w r2, -216(r30)
0003b8  e7425ffe  storeli.w r5, -212(r30)
0003bc  67036ffe  storeli.w r6, -208(r30)
0003c0  67437ffe  storeli.w r7, -204(r30)
0003c4  e7038ffe  storeli.w r8, -200(r30)
0003c8  e743bffe  storeli.w r11, -196(r30)
0003cc  9f000ffe  addli r1, r30, -256
0003d0  00a00000  mfence { lm }
0003d4  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
0003d8  ab0000f0  lui r1, 983040
0003dc  97101700  or r1, r14, r1
0003e0  12124b02  vadd.f.mz.rn vr4{mr1}, r22, vr4
0003e4  12124b02  vadd.f.mz.rn vr4{mr1}, r22, vr4
0003e8  8e914102  vmul.f.mz.rn vr3{mr1}, vr3, vr4
0003ec  461c3fc2  vstore_mask16.mz vr3{mr1}, 1728(r30)
0003f0  00a00000  mfence { lm }
0003f4  6341effc  loadli.w r2,  -396(r30)
0003f8  ff30fd00  s_lm2gm r1, r15, 0(r[27:28])
0003fc  9f000500  addli r1, r10, 0
000400  00a00000  mfence { lm }
000404  8b912110  add.s r3, r3, r2
000408  3fc541fe  blt.s r3, r4, -688
00040c  9f0e8ffc  addli sp, r30, -448
000410  9f8e8e03  addli sp, sp, 448
000414  00a00300  mfence { lm, sm, gm }
000418  00100000  exit
00041c  00100000  exit
000420  00100000  exit
000424  00100000  exit
000428  00100000  exit
00042c  00100000  exit
000430  00100000  exit
000434  00100000  exit
000438  00100000  exit
00043c  00100000  exit
000440  00100000  exit
000444  00100000  exit
000448  00100000  exit
00044c  00100000  exit
000450  00100000  exit
000454  00100000  exit
000458  00100000  exit
00045c  00100000  exit
000460  00100000  exit
000464  00100000  exit
000468  00100000  exit
00046c  00100000  exit
000470  00100000  exit
000474  00100000  exit
000478  00100000  exit
00047c  00100000  exit
000480  00100000  exit
000484  00100000  exit
000488  00100000  exit
00048c  00100000  exit
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
