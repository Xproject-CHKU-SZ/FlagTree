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
0000dc  9f8e0efc  addli sp, sp, -512
0000e0  1f8f8e03  addli r30, sp, 448
0000e4  e3453f00  loadli.w r11,  28(r30)
0000e8  e3013f00  loadli.w r3,  24(r30)
0000ec  e3084f00  loadli.w r17,  32(r30)
0000f0  0b923520  mul.s r4, r11, r3
0000f4  80510002  load_param_i r3, 0
0000f8  0b121221  mul.s r4, r4, r17
0000fc  4b4f3200  ble.s r4, r3, 976
000100  80d00002  load_param_i r1, 1
000104  80320002  core_id r5
000108  2b434c3f  lui r6, 259268
00010c  9f078000  addli r15, zero, 64
000110  2b0a0040  lui r20, 262144
000114  2b0b803f  lui r22, 260096
000118  e7471ffc  storeli.w r1, -388(r30)
00011c  9bb05200  slli r1, r5, 5
000120  ab22373d  lui r5, 250738
000124  9b19a322  ori r19, r6, 554
000128  1b993271  ori r18, r5, 1811
00012c  e7071ffc  storeli.w r1, -392(r30)
000130  8b921131  div.s r5, r3, r17
000134  e300fffc  loadli.w r1,  -392(r30)
000138  ab0300f0  lui r7, 983040
00013c  2b0400f0  lui r8, 983040
000140  1f068ffd  addli r12, r30, -320
000144  97937700  or r7, r15, r7
000148  17948700  or r8, r15, r8
00014c  8b92b230  div.s r5, r5, r11
000150  9bb2b200  slli r5, r5, 11
000154  8b921210  add.s r5, r5, r1
000158  9f000008  addli r1, zero, 1024
00015c  0b931238  mod.s r6, r5, r1
000160  b3940228  sext_int2long r[10:11], r5
000164  9f100000  addli r1, zero, 1
000168  17bd1402  sll.d r[27:28], r[10:11], r1
00016c  b3120328  sext_int2long r[6:7], r6
000170  97b21202  sll.d r[6:7], r[6:7], r1
000174  eb500f00  load.d r[2:3], 0(r30)
000178  8ba4a011  add.ul r[10:11], r[2:3], r[27:28]
00017c  eb508f00  load.d r[2:3], 8(r30)
000180  8ba25010  add.ul r[6:7], r[2:3], r[6:7]
000184  9f000ffd  addli r1, r30, -384
000188  ffa31400  l_gm2lm r7, r1, 0(r[10:11])
00018c  7fa4c200  l_gm2lm r8, r12, 0(r[6:7])
000190  9f008ffe  addli r1, r30, -192
000194  00a00000  mfence { lm }
000198  42100fc3  vload_mask16.mz vr0{mr1}, 1664(r30)
00019c  c2108fc3  vload_mask16.mz vr1{mr1}, 1728(r30)
0001a0  16411002  vadd.hf.mz.rn vr2{mr1}, vr0, vr1
0001a4  06300100  vfp162float_l.rn vr0, vr2
0001a8  86700100  vfp162float_h.rn vr1, vr2
0001ac  8a111902  vmul.f.mz.rn vr3{mr1}, r18, vr1
0001b0  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0001b4  0a110902  vmul.f.mz.rn vr2{mr1}, r18, vr0
0001b8  8e913002  vmul.f.mz.rn vr3{mr1}, vr1, vr3
0001bc  0e112002  vmul.f.mz.rn vr2{mr1}, vr0, vr2
0001c0  26124102  vmac.f.mz.rn vr4{mr1}, vr2, vr4
0001c4  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0001c8  26912102  vmac.f.mz.rn vr2{mr1}, vr3, vr2
0001cc  8a914902  vmul.f.mz.rn vr3{mr1}, r19, vr4
0001d0  0a912902  vmul.f.mz.rn vr2{mr1}, r19, vr2
0001d4  8a113a02  vmul.f.mz.rn vr3{mr1}, r20, vr3
0001d8  0a112a02  vmul.f.mz.rn vr2{mr1}, r20, vr2
0001dc  9a113002  vsub.f.mz.rn vr3{mr1}, zero, vr3
0001e0  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
0001e4  1a112002  vsub.f.mz.rn vr2{mr1}, zero, vr2
0001e8  00a00000  mfence { lm }
0001ec  e3428ffe  loadli.w r5,  -188(r30)
0001f0  63039ffe  loadli.w r6,  -184(r30)
0001f4  e3439ffe  loadli.w r7,  -180(r30)
0001f8  6305affe  loadli.w r10,  -176(r30)
0001fc  6347affe  loadli.w r14,  -172(r30)
000200  e300cffe  loadli.w r1,  -160(r30)
000204  630e8ffe  loadli.w r28,  -192(r30)
000208  6308bffe  loadli.w r16,  -168(r30)
00020c  e34abffe  loadli.w r21,  -164(r30)
000210  e34bcffe  loadli.w r23,  -156(r30)
000214  6304dffe  loadli.w r8,  -152(r30)
000218  e344dffe  loadli.w r9,  -148(r30)
00021c  6301effe  loadli.w r2,  -144(r30)
000220  634ceffe  loadli.w r24,  -140(r30)
000224  e30cfffe  loadli.w r25,  -136(r30)
000228  e346fffe  loadli.w r13,  -132(r30)
00022c  8f820200  exp.f.rn r5, r5
000230  0f030300  exp.f.rn r6, r6
000234  8f830300  exp.f.rn r7, r7
000238  0f050500  exp.f.rn r10, r10
00023c  0f070700  exp.f.rn r14, r14
000240  8f800000  exp.f.rn r1, r1
000244  0f0e0e00  exp.f.rn r28, r28
000248  0f080800  exp.f.rn r16, r16
00024c  8f8a0a00  exp.f.rn r21, r21
000250  8be26211  add.f.rn r5, r5, r22
000254  0b636311  add.f.rn r6, r6, r22
000258  8be36311  add.f.rn r7, r7, r22
00025c  8be06011  add.f.rn r1, r1, r22
000260  0b656511  add.f.rn r10, r10, r22
000264  0b676711  add.f.rn r14, r14, r22
000268  0b6e6e11  add.f.rn r28, r28, r22
00026c  0b686811  add.f.rn r16, r16, r22
000270  8bea6a11  add.f.rn r21, r21, r22
000274  8f025b18  div.f.rn r5, r22, r5
000278  0f036b18  div.f.rn r6, r22, r6
00027c  8f037b18  div.f.rn r7, r22, r7
000280  8f001b18  div.f.rn r1, r22, r1
000284  0f0ecb19  div.f.rn r28, r22, r28
000288  67405ffe  storeli.w r5, -252(r30)
00028c  8f02ab18  div.f.rn r5, r22, r10
000290  e7006ffe  storeli.w r6, -248(r30)
000294  0f03eb18  div.f.rn r6, r22, r14
000298  e7407ffe  storeli.w r7, -244(r30)
00029c  8f830400  exp.f.rn r7, r9
0002a0  8f840600  exp.f.rn r9, r13
0002a4  67021ffe  storeli.w r1, -224(r30)
0002a8  8f000100  exp.f.rn r1, r2
0002ac  0f010c00  exp.f.rn r2, r24
0002b0  0f050b19  div.f.rn r10, r22, r16
0002b4  0f075b19  div.f.rn r14, r22, r21
0002b8  6700cfff  storeli.w r28, -256(r30)
0002bc  67015ffe  storeli.w r5, -240(r30)
0002c0  8f820b00  exp.f.rn r5, r23
0002c4  67416ffe  storeli.w r6, -236(r30)
0002c8  0f030400  exp.f.rn r6, r8
0002cc  0f840c00  exp.f.rn r8, r25
0002d0  8be36311  add.f.rn r7, r7, r22
0002d4  8be06011  add.f.rn r1, r1, r22
0002d8  0b616111  add.f.rn r2, r2, r22
0002dc  8be46411  add.f.rn r9, r9, r22
0002e0  e701affe  storeli.w r10, -232(r30)
0002e4  e741effe  storeli.w r14, -228(r30)
0002e8  8f037b18  div.f.rn r7, r22, r7
0002ec  8f001b18  div.f.rn r1, r22, r1
0002f0  0f012b18  div.f.rn r2, r22, r2
0002f4  8f049b18  div.f.rn r9, r22, r9
0002f8  8be26211  add.f.rn r5, r5, r22
0002fc  0b636311  add.f.rn r6, r6, r22
000300  0b646411  add.f.rn r8, r8, r22
000304  8f025b18  div.f.rn r5, r22, r5
000308  0f036b18  div.f.rn r6, r22, r6
00030c  0f048b18  div.f.rn r8, r22, r8
000310  67031ffe  storeli.w r1, -208(r30)
000314  e7427ffe  storeli.w r7, -212(r30)
000318  67432ffe  storeli.w r2, -204(r30)
00031c  e7439ffe  storeli.w r9, -196(r30)
000320  9f000ffe  addli r1, r30, -256
000324  67425ffe  storeli.w r5, -220(r30)
000328  e7026ffe  storeli.w r6, -216(r30)
00032c  e7038ffe  storeli.w r8, -200(r30)
000330  00a00000  mfence { lm }
000334  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000338  9f008fff  addli r1, r30, -64
00033c  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
000340  00a00000  mfence { lm }
000344  e3008fff  loadli.w r1,  -64(r30)
000348  63418fff  loadli.w r2,  -60(r30)
00034c  e3029fff  loadli.w r5,  -56(r30)
000350  63439fff  loadli.w r6,  -52(r30)
000354  e303afff  loadli.w r7,  -48(r30)
000358  6344afff  loadli.w r8,  -44(r30)
00035c  e304bfff  loadli.w r9,  -40(r30)
000360  6345bfff  loadli.w r10,  -36(r30)
000364  e306cfff  loadli.w r13,  -32(r30)
000368  6347cfff  loadli.w r14,  -28(r30)
00036c  6308dfff  loadli.w r16,  -24(r30)
000370  e34adfff  loadli.w r21,  -20(r30)
000374  e30befff  loadli.w r23,  -16(r30)
000378  634cefff  loadli.w r24,  -12(r30)
00037c  e30cffff  loadli.w r25,  -8(r30)
000380  634effff  loadli.w r28,  -4(r30)
000384  0e103002  vmul.f.mz.rn vr0{mr1}, vr0, vr3
000388  8f800000  exp.f.rn r1, r1
00038c  0f010100  exp.f.rn r2, r2
000390  8f820200  exp.f.rn r5, r5
000394  0f030300  exp.f.rn r6, r6
000398  8be06011  add.f.rn r1, r1, r22
00039c  0b616111  add.f.rn r2, r2, r22
0003a0  8f001b18  div.f.rn r1, r22, r1
0003a4  0f012b18  div.f.rn r2, r22, r2
0003a8  67081ffe  storeli.w r1, -128(r30)
0003ac  8be06211  add.f.rn r1, r5, r22
0003b0  8f820300  exp.f.rn r5, r7
0003b4  8f830400  exp.f.rn r7, r9
0003b8  8f840600  exp.f.rn r9, r13
0003bc  67482ffe  storeli.w r2, -124(r30)
0003c0  0b616311  add.f.rn r2, r6, r22
0003c4  0f030400  exp.f.rn r6, r8
0003c8  0f040500  exp.f.rn r8, r10
0003cc  8f001b18  div.f.rn r1, r22, r1
0003d0  0f012b18  div.f.rn r2, r22, r2
0003d4  8be26211  add.f.rn r5, r5, r22
0003d8  0b636311  add.f.rn r6, r6, r22
0003dc  8be36311  add.f.rn r7, r7, r22
0003e0  0b646411  add.f.rn r8, r8, r22
0003e4  8be46411  add.f.rn r9, r9, r22
0003e8  e7081ffe  storeli.w r1, -120(r30)
0003ec  8f005b18  div.f.rn r1, r22, r5
0003f0  8f026b18  div.f.rn r5, r22, r6
0003f4  0f037b18  div.f.rn r6, r22, r7
0003f8  8f038b18  div.f.rn r7, r22, r8
0003fc  0f049b18  div.f.rn r8, r22, r9
000400  8f040e00  exp.f.rn r9, r28
000404  e7482ffe  storeli.w r2, -116(r30)
000408  0f010700  exp.f.rn r2, r14
00040c  67091ffe  storeli.w r1, -112(r30)
000410  8f000800  exp.f.rn r1, r16
000414  67495ffe  storeli.w r5, -108(r30)
000418  8f820a00  exp.f.rn r5, r21
00041c  e7096ffe  storeli.w r6, -104(r30)
000420  0f830b00  exp.f.rn r6, r23
000424  e7497ffe  storeli.w r7, -100(r30)
000428  8f030c00  exp.f.rn r7, r24
00042c  670a8ffe  storeli.w r8, -96(r30)
000430  0f840c00  exp.f.rn r8, r25
000434  0b616111  add.f.rn r2, r2, r22
000438  8be46411  add.f.rn r9, r9, r22
00043c  0f012b18  div.f.rn r2, r22, r2
000440  8f049b18  div.f.rn r9, r22, r9
000444  8be06011  add.f.rn r1, r1, r22
000448  8be26211  add.f.rn r5, r5, r22
00044c  0b636311  add.f.rn r6, r6, r22
000450  8be36311  add.f.rn r7, r7, r22
000454  0b646411  add.f.rn r8, r8, r22
000458  8f001b18  div.f.rn r1, r22, r1
00045c  8f025b18  div.f.rn r5, r22, r5
000460  0f036b18  div.f.rn r6, r22, r6
000464  8f037b18  div.f.rn r7, r22, r7
000468  0f048b18  div.f.rn r8, r22, r8
00046c  674a2ffe  storeli.w r2, -92(r30)
000470  e74b9ffe  storeli.w r9, -68(r30)
000474  e70a1ffe  storeli.w r1, -88(r30)
000478  e74a5ffe  storeli.w r5, -84(r30)
00047c  670b6ffe  storeli.w r6, -80(r30)
000480  674b7ffe  storeli.w r7, -76(r30)
000484  e70b8ffe  storeli.w r8, -72(r30)
000488  9f000fff  addli r1, r30, -128
00048c  ab0200f0  lui r5, 983040
000490  00a00000  mfence { lm }
000494  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000498  eb500f01  load.d r[2:3], 16(r30)
00049c  97925700  or r5, r15, r5
0004a0  8ba0a011  add.ul r[2:3], r[2:3], r[27:28]
0004a4  8e902002  vmul.f.mz.rn vr1{mr1}, vr1, vr2
0004a8  06110000  vfloat2fp16_l.rn vr2, vr0
0004ac  06d10000  vfloat2fp16_h.rn vr2, vr1
0004b0  461c2fc2  vstore_mask16.mz vr2{mr1}, 1728(r30)
0004b4  00a00000  mfence { lm }
0004b8  ffb2c000  s_lm2gm r5, r12, 0(r[2:3])
0004bc  e340fffc  loadli.w r1,  -388(r30)
0004c0  00a00000  mfence { lm }
0004c4  8b911110  add.s r3, r3, r1
0004c8  bfa141fe  blt.s r3, r4, -920
0004cc  9f0e8ffc  addli sp, r30, -448
0004d0  9f8e8e03  addli sp, sp, 448
0004d4  00a00300  mfence { lm, sm, gm }
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
0006d4  00100000  exit
0006d8  00100000  exit
0006dc  00100000  exit
0006e0  00100000  exit
0006e4  00100000  exit
0006e8  00100000  exit
0006ec  00100000  exit
0006f0  00100000  exit
0006f4  00100000  exit
0006f8  00100000  exit
0006fc  00100000  exit
000700  00100000  exit
000704  00100000  exit
000708  00100000  exit
00070c  00100000  exit
000710  00100000  exit
000714  00100000  exit
000718  00100000  exit
