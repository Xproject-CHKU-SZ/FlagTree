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
0000dc  9f8e0efa  addli sp, sp, -768
0000e0  1f8f8e05  addli r30, sp, 704
0000e4  e30a4f00  loadli.w r21,  32(r30)
0000e8  e3413f00  loadli.w r3,  28(r30)
0000ec  e3404f00  loadli.w r1,  36(r30)
0000f0  0b923a20  mul.s r4, r21, r3
0000f4  80510002  load_param_i r3, 0
0000f8  0b181220  mul.s r16, r4, r1
0000fc  cb353802  ble.s r16, r3, 1388
000100  00d10002  load_param_i r2, 1
000104  80320002  core_id r5
000108  2b434c3f  lui r6, 259268
00010c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000110  2b0c803f  lui r24, 260096
000114  2b0d00c0  lui r26, 786432
000118  9f098000  addli r19, zero, 64
00011c  2b0a0040  lui r20, 262144
000120  6e312162  vxor.s.mz vr2{mr1}, vr2, vr2
000124  e7462ffa  storeli.w r2, -660(r30)
000128  1bb15200  slli r2, r5, 5
00012c  ab22373d  lui r5, 250738
000130  e7062ffa  storeli.w r2, -664(r30)
000134  1b913271  ori r2, r5, 1811
000138  ab0280c1  lui r5, 792576
00013c  67462ffa  storeli.w r2, -668(r30)
000140  1b11a322  ori r2, r6, 554
000144  2b038041  lui r6, 268288
000148  6a901222  vor.f.mz vr0{mr1}, r5, vr1
00014c  67062ffa  storeli.w r2, -672(r30)
000150  2bf10000  lui r2, 15
000154  ea101322  vor.f.mz vr1{mr1}, r6, vr1
000158  1f71f11f  addli r2, r2, 4095
00015c  7e0001e0  vmmov mr0, r2
000160  0b941130  div.s r8, r3, r1
000164  6301dffa  loadli.w r2,  -664(r30)
000168  1f820000  addli r4, r1, 0
00016c  9f120000  addli r5, zero, 1
000170  2b0500f0  lui r10, 983040
000174  ab0600f0  lui r13, 983040
000178  1795a900  or r10, r19, r10
00017c  9796d900  or r13, r19, r13
000180  0b145431  div.s r8, r8, r21
000184  1b34b400  slli r8, r8, 11
000188  0b142410  add.s r8, r8, r2
00018c  1f010008  addli r2, zero, 1024
000190  8b142438  mod.s r9, r8, r2
000194  331b0428  sext_int2long r[23:24], r8
000198  b3900428  sext_int2long r[2:3], r9
00019c  17345b02  sll.d r[9:10], r[23:24], r5
0001a0  97b05002  sll.d r[2:3], r[2:3], r5
0001a4  eb520f00  load.d r[6:7], 0(r30)
0001a8  0bab8210  add.ul r[23:24], r[6:7], r[9:10]
0001ac  eb528f00  load.d r[6:7], 8(r30)
0001b0  8ba01210  add.ul r[2:3], r[6:7], r[2:3]
0001b4  9f020ffb  addli r5, r30, -640
0001b8  7f255b00  l_gm2lm r10, r5, 0(r[23:24])
0001bc  9f028ffb  addli r5, r30, -576
0001c0  ffa65000  l_gm2lm r13, r5, 0(r[2:3])
0001c4  00a00000  mfence { lm }
0001c8  c2110fa3  vload_mask16.mz vr3{mr1}, 1408(r30)
0001cc  42128fa3  vload_mask16.mz vr4{mr1}, 1472(r30)
0001d0  86b20100  vfp162float_l.rn vr5, vr3
0001d4  06f30100  vfp162float_h.rn vr6, vr3
0001d8  86730200  vfp162float_h.rn vr7, vr4
0001dc  e340cffa  loadli.w r1,  -668(r30)
0001e0  86310200  vfp162float_l.rn vr3, vr4
0001e4  16127302  vadd.f.mz.rn vr4{mr1}, vr6, vr7
0001e8  96913202  vadd.f.mz.rn vr3{mr1}, vr5, vr3
0001ec  86920100  vfloat2fp16_l.rn vr5, vr3
0001f0  86520200  vfloat2fp16_h.rn vr5, vr4
0001f4  06f20200  vfp162float_h.rn vr4, vr5
0001f8  0e134202  vmul.f.mz.rn vr6{mr1}, vr4, vr4
0001fc  86b10200  vfp162float_l.rn vr3, vr5
000200  8e923102  vmul.f.mz.rn vr5{mr1}, vr3, vr3
000204  0e136202  vmul.f.mz.rn vr6{mr1}, vr4, vr6
000208  8e925102  vmul.f.mz.rn vr5{mr1}, vr3, vr5
00020c  0a936002  vmul.f.mz.rn vr6{mr1}, r1, vr6
000210  96136202  vadd.f.mz.rn vr7{mr1}, vr4, vr6
000214  8a925002  vmul.f.mz.rn vr5{mr1}, r1, vr5
000218  e300cffa  loadli.w r1,  -672(r30)
00021c  96925102  vadd.f.mz.rn vr5{mr1}, vr3, vr5
000220  0a935002  vmul.f.mz.rn vr6{mr1}, r1, vr5
000224  76110342  vlt.f.mz mr2{mr1}, vr6, vr0
000228  8a927002  vmul.f.mz.rn vr5{mr1}, r1, vr7
00022c  fe0001a0  vmmov r1, mr2
000230  76910242  vlt.f.mz mr2{mr1}, vr5, vr0
000234  731e1fd6  store.h r1, -644(r30)
000238  7e0101a0  vmmov r2, mr2
00023c  76916042  vlt.f.mz mr2{mr1}, vr1, vr6
000240  e340fffa  loadli.w r1,  -644(r30)
000244  fe0601a0  vmmov r13, mr2
000248  731a2fd6  store.h r2, -652(r30)
00024c  6345effa  loadli.w r10,  -652(r30)
000250  731cdfd6  store.h r13, -648(r30)
000254  6301fffa  loadli.w r2,  -648(r30)
000258  7e8100e0  vmmov mr2, r1
00025c  ab00003f  lui r1, 258048
000260  8a913002  vmul.f.mz.rn vr3{mr1}, r1, vr3
000264  0a924002  vmul.f.mz.rn vr4{mr1}, r1, vr4
000268  7e010100  vmand mr2, mr2, mr0
00026c  6e130134  vor.f.mh vr6{mr2}, vr2, vr0
000270  7e0101e0  vmmov mr2, r2
000274  7e010100  vmand mr2, mr2, mr0
000278  6e131134  vor.f.mh vr6{mr2}, vr2, vr1
00027c  76915042  vlt.f.mz mr2{mr1}, vr1, vr5
000280  fe0001a0  vmmov r1, mr2
000284  7e0105e0  vmmov mr2, r10
000288  73181fd6  store.h r1, -656(r30)
00028c  9f008ffd  addli r1, r30, -320
000290  7e010100  vmand mr2, mr2, mr0
000294  e306effa  loadli.w r13,  -656(r30)
000298  ee120134  vor.f.mh vr5{mr2}, vr2, vr0
00029c  0a136a02  vmul.f.mz.rn vr6{mr1}, r20, vr6
0002a0  7e8106e0  vmmov mr2, r13
0002a4  7e010100  vmand mr2, mr2, mr0
0002a8  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0002ac  ee121134  vor.f.mh vr5{mr2}, vr2, vr1
0002b0  00a00000  mfence { lm }
0002b4  e3008ffd  loadli.w r1,  -320(r30)
0002b8  63418ffd  loadli.w r2,  -316(r30)
0002bc  630b9ffd  loadli.w r22,  -312(r30)
0002c0  e34caffd  loadli.w r25,  -300(r30)
0002c4  e302cffd  loadli.w r5,  -288(r30)
0002c8  e307affd  loadli.w r15,  -304(r30)
0002cc  e305fffd  loadli.w r11,  -264(r30)
0002d0  6346fffd  loadli.w r12,  -260(r30)
0002d4  e34b9ffd  loadli.w r23,  -308(r30)
0002d8  e30dbffd  loadli.w r27,  -296(r30)
0002dc  634ebffd  loadli.w r28,  -292(r30)
0002e0  6343cffd  loadli.w r6,  -284(r30)
0002e4  e303dffd  loadli.w r7,  -280(r30)
0002e8  6347dffd  loadli.w r14,  -276(r30)
0002ec  e308effd  loadli.w r17,  -272(r30)
0002f0  6349effd  loadli.w r18,  -268(r30)
0002f4  8f800000  exp.f.rn r1, r1
0002f8  0f010100  exp.f.rn r2, r2
0002fc  8f870700  exp.f.rn r15, r15
000300  8f850500  exp.f.rn r11, r11
000304  0f060600  exp.f.rn r12, r12
000308  67081ffc  storeli.w r1, -384(r30)
00030c  8f000b00  exp.f.rn r1, r22
000310  67482ffc  storeli.w r2, -380(r30)
000314  0f810c00  exp.f.rn r2, r25
000318  0f8b0b00  exp.f.rn r22, r23
00031c  8f8b0d00  exp.f.rn r23, r27
000320  8f0c0e00  exp.f.rn r25, r28
000324  6709fffc  storeli.w r15, -368(r30)
000328  e70bbffc  storeli.w r11, -328(r30)
00032c  e74bcffc  storeli.w r12, -324(r30)
000330  e7081ffc  storeli.w r1, -376(r30)
000334  8f800200  exp.f.rn r1, r5
000338  8f820300  exp.f.rn r5, r7
00033c  67492ffc  storeli.w r2, -364(r30)
000340  0f010300  exp.f.rn r2, r6
000344  0f030700  exp.f.rn r6, r14
000348  8f030900  exp.f.rn r7, r18
00034c  e7486ffd  storeli.w r22, -372(r30)
000350  e7097ffd  storeli.w r23, -360(r30)
000354  e7499ffd  storeli.w r25, -356(r30)
000358  670a1ffc  storeli.w r1, -352(r30)
00035c  8f800800  exp.f.rn r1, r17
000360  674a2ffc  storeli.w r2, -348(r30)
000364  e70a5ffc  storeli.w r5, -344(r30)
000368  e74a6ffc  storeli.w r6, -340(r30)
00036c  674b7ffc  storeli.w r7, -332(r30)
000370  670b1ffc  storeli.w r1, -336(r30)
000374  9f000ffd  addli r1, r30, -384
000378  00a00000  mfence { lm }
00037c  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
000380  9f008ffc  addli r1, r30, -448
000384  12136c02  vadd.f.mz.rn vr6{mr1}, r24, vr6
000388  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
00038c  0a135a02  vmul.f.mz.rn vr6{mr1}, r20, vr5
000390  00a00000  mfence { lm }
000394  e3008ffc  loadli.w r1,  -448(r30)
000398  63418ffc  loadli.w r2,  -444(r30)
00039c  e303affc  loadli.w r7,  -432(r30)
0003a0  6345affc  loadli.w r10,  -428(r30)
0003a4  e3029ffc  loadli.w r5,  -440(r30)
0003a8  63439ffc  loadli.w r6,  -436(r30)
0003ac  e305bffc  loadli.w r11,  -424(r30)
0003b0  6346bffc  loadli.w r12,  -420(r30)
0003b4  e306cffc  loadli.w r13,  -416(r30)
0003b8  6347cffc  loadli.w r14,  -412(r30)
0003bc  e307dffc  loadli.w r15,  -408(r30)
0003c0  e348dffc  loadli.w r17,  -404(r30)
0003c4  6309effc  loadli.w r18,  -400(r30)
0003c8  634beffc  loadli.w r22,  -396(r30)
0003cc  e30bfffc  loadli.w r23,  -392(r30)
0003d0  e34cfffc  loadli.w r25,  -388(r30)
0003d4  8f001d18  div.f.rn r1, r26, r1
0003d8  0f012d18  div.f.rn r2, r26, r2
0003dc  8f025d18  div.f.rn r5, r26, r5
0003e0  0f036d18  div.f.rn r6, r26, r6
0003e4  67001ffc  storeli.w r1, -512(r30)
0003e8  8f007d18  div.f.rn r1, r26, r7
0003ec  67402ffc  storeli.w r2, -508(r30)
0003f0  0f01ad18  div.f.rn r2, r26, r10
0003f4  8f03bd18  div.f.rn r7, r26, r11
0003f8  0f05cd18  div.f.rn r10, r26, r12
0003fc  e7005ffc  storeli.w r5, -504(r30)
000400  e7406ffc  storeli.w r6, -500(r30)
000404  8f02fd18  div.f.rn r5, r26, r15
000408  0f031d19  div.f.rn r6, r26, r17
00040c  67011ffc  storeli.w r1, -496(r30)
000410  8f00dd18  div.f.rn r1, r26, r13
000414  67412ffc  storeli.w r2, -492(r30)
000418  0f01ed18  div.f.rn r2, r26, r14
00041c  e7017ffc  storeli.w r7, -488(r30)
000420  e741affc  storeli.w r10, -484(r30)
000424  8f036d19  div.f.rn r7, r26, r22
000428  0f057d19  div.f.rn r10, r26, r23
00042c  e7025ffc  storeli.w r5, -472(r30)
000430  e7426ffc  storeli.w r6, -468(r30)
000434  67021ffc  storeli.w r1, -480(r30)
000438  8f002d19  div.f.rn r1, r26, r18
00043c  67422ffc  storeli.w r2, -476(r30)
000440  0f019d19  div.f.rn r2, r26, r25
000444  67437ffc  storeli.w r7, -460(r30)
000448  e703affc  storeli.w r10, -456(r30)
00044c  67031ffc  storeli.w r1, -464(r30)
000450  e7432ffc  storeli.w r2, -452(r30)
000454  9f000ffc  addli r1, r30, -512
000458  00a00000  mfence { lm }
00045c  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
000460  9f008fff  addli r1, r30, -64
000464  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
000468  00a00000  mfence { lm }
00046c  e3008fff  loadli.w r1,  -64(r30)
000470  63418fff  loadli.w r2,  -60(r30)
000474  e303afff  loadli.w r7,  -48(r30)
000478  e3029fff  loadli.w r5,  -56(r30)
00047c  63439fff  loadli.w r6,  -52(r30)
000480  6345afff  loadli.w r10,  -44(r30)
000484  e305bfff  loadli.w r11,  -40(r30)
000488  6346bfff  loadli.w r12,  -36(r30)
00048c  e306cfff  loadli.w r13,  -32(r30)
000490  6347cfff  loadli.w r14,  -28(r30)
000494  e307dfff  loadli.w r15,  -24(r30)
000498  e348dfff  loadli.w r17,  -20(r30)
00049c  6309efff  loadli.w r18,  -16(r30)
0004a0  634befff  loadli.w r22,  -12(r30)
0004a4  e30bffff  loadli.w r23,  -8(r30)
0004a8  e34cffff  loadli.w r25,  -4(r30)
0004ac  92125c02  vadd.f.mz.rn vr5{mr1}, r24, vr5
0004b0  8f800000  exp.f.rn r1, r1
0004b4  0f010100  exp.f.rn r2, r2
0004b8  8f820200  exp.f.rn r5, r5
0004bc  0f030300  exp.f.rn r6, r6
0004c0  67081ffe  storeli.w r1, -128(r30)
0004c4  8f800300  exp.f.rn r1, r7
0004c8  8f830500  exp.f.rn r7, r11
0004cc  67482ffe  storeli.w r2, -124(r30)
0004d0  0f010500  exp.f.rn r2, r10
0004d4  0f050600  exp.f.rn r10, r12
0004d8  e7085ffe  storeli.w r5, -120(r30)
0004dc  e7486ffe  storeli.w r6, -116(r30)
0004e0  8f820700  exp.f.rn r5, r15
0004e4  0f830800  exp.f.rn r6, r17
0004e8  8f850c00  exp.f.rn r11, r25
0004ec  67091ffe  storeli.w r1, -112(r30)
0004f0  8f800600  exp.f.rn r1, r13
0004f4  67492ffe  storeli.w r2, -108(r30)
0004f8  e7097ffe  storeli.w r7, -104(r30)
0004fc  e749affe  storeli.w r10, -100(r30)
000500  0f010700  exp.f.rn r2, r14
000504  8f030b00  exp.f.rn r7, r22
000508  0f850b00  exp.f.rn r10, r23
00050c  e70a5ffe  storeli.w r5, -88(r30)
000510  e74a6ffe  storeli.w r6, -84(r30)
000514  e74bbffe  storeli.w r11, -68(r30)
000518  670a1ffe  storeli.w r1, -96(r30)
00051c  8f000900  exp.f.rn r1, r18
000520  674a2ffe  storeli.w r2, -92(r30)
000524  674b7ffe  storeli.w r7, -76(r30)
000528  e70baffe  storeli.w r10, -72(r30)
00052c  670b1ffe  storeli.w r1, -80(r30)
000530  9f000fff  addli r1, r30, -128
000534  00a00000  mfence { lm }
000538  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
00053c  9f008ffe  addli r1, r30, -192
000540  12136c02  vadd.f.mz.rn vr6{mr1}, r24, vr6
000544  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
000548  00a00000  mfence { lm }
00054c  e3008ffe  loadli.w r1,  -192(r30)
000550  63418ffe  loadli.w r2,  -188(r30)
000554  e3029ffe  loadli.w r5,  -184(r30)
000558  63439ffe  loadli.w r6,  -180(r30)
00055c  e303affe  loadli.w r7,  -176(r30)
000560  6345affe  loadli.w r10,  -172(r30)
000564  e305bffe  loadli.w r11,  -168(r30)
000568  6346bffe  loadli.w r12,  -164(r30)
00056c  e306cffe  loadli.w r13,  -160(r30)
000570  6347cffe  loadli.w r14,  -156(r30)
000574  e307dffe  loadli.w r15,  -152(r30)
000578  e348dffe  loadli.w r17,  -148(r30)
00057c  6309effe  loadli.w r18,  -144(r30)
000580  634beffe  loadli.w r22,  -140(r30)
000584  e30bfffe  loadli.w r23,  -136(r30)
000588  e34cfffe  loadli.w r25,  -132(r30)
00058c  8f001d18  div.f.rn r1, r26, r1
000590  0f012d18  div.f.rn r2, r26, r2
000594  67001ffe  storeli.w r1, -256(r30)
000598  8f005d18  div.f.rn r1, r26, r5
00059c  8f027d18  div.f.rn r5, r26, r7
0005a0  8f03bd18  div.f.rn r7, r26, r11
0005a4  67402ffe  storeli.w r2, -252(r30)
0005a8  0f016d18  div.f.rn r2, r26, r6
0005ac  0f03ad18  div.f.rn r6, r26, r10
0005b0  0f05cd18  div.f.rn r10, r26, r12
0005b4  8f05dd18  div.f.rn r11, r26, r13
0005b8  e7001ffe  storeli.w r1, -248(r30)
0005bc  e7402ffe  storeli.w r2, -244(r30)
0005c0  67015ffe  storeli.w r5, -240(r30)
0005c4  67416ffe  storeli.w r6, -236(r30)
0005c8  e7017ffe  storeli.w r7, -232(r30)
0005cc  e741affe  storeli.w r10, -228(r30)
0005d0  6702bffe  storeli.w r11, -224(r30)
0005d4  8f00ed18  div.f.rn r1, r26, r14
0005d8  0f01fd18  div.f.rn r2, r26, r15
0005dc  8f021d19  div.f.rn r5, r26, r17
0005e0  0f032d19  div.f.rn r6, r26, r18
0005e4  8f036d19  div.f.rn r7, r26, r22
0005e8  0f057d19  div.f.rn r10, r26, r23
0005ec  8f059d19  div.f.rn r11, r26, r25
0005f0  67421ffe  storeli.w r1, -220(r30)
0005f4  e7425ffe  storeli.w r5, -212(r30)
0005f8  67036ffe  storeli.w r6, -208(r30)
0005fc  e7022ffe  storeli.w r2, -216(r30)
000600  67437ffe  storeli.w r7, -204(r30)
000604  e703affe  storeli.w r10, -200(r30)
000608  e743bffe  storeli.w r11, -196(r30)
00060c  9f000ffe  addli r1, r30, -256
000610  ab0200f0  lui r5, 983040
000614  1f038ffb  addli r6, r30, -576
000618  00a00000  mfence { lm }
00061c  92125c02  vadd.f.mz.rn vr5{mr1}, r24, vr5
000620  8e915102  vmul.f.mz.rn vr3{mr1}, vr3, vr5
000624  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
000628  eb500f01  load.d r[2:3], 16(r30)
00062c  97925900  or r5, r19, r5
000630  8ba08010  add.ul r[2:3], r[2:3], r[9:10]
000634  12136c02  vadd.f.mz.rn vr6{mr1}, r24, vr6
000638  12136c02  vadd.f.mz.rn vr6{mr1}, r24, vr6
00063c  0e126202  vmul.f.mz.rn vr4{mr1}, vr4, vr6
000640  86920100  vfloat2fp16_l.rn vr5, vr3
000644  86520200  vfloat2fp16_h.rn vr5, vr4
000648  461c5fa2  vstore_mask16.mz vr5{mr1}, 1472(r30)
00064c  00a00000  mfence { lm }
000650  ffb26000  s_lm2gm r5, r6, 0(r[2:3])
000654  6341dffa  loadli.w r2,  -660(r30)
000658  9f000200  addli r1, r4, 0
00065c  00a00000  mfence { lm }
000660  8b912110  add.s r3, r3, r2
000664  bffb01fd  blt.s r3, r16, -1284
000668  9f0e8ffa  addli sp, r30, -704
00066c  9f8e8e05  addli sp, sp, 704
000670  00a00300  mfence { lm, sm, gm }
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
00071c  00100000  exit
000720  00100000  exit
000724  00100000  exit
000728  00100000  exit
00072c  00100000  exit
000730  00100000  exit
000734  00100000  exit
000738  00100000  exit
00073c  00100000  exit
000740  00100000  exit
000744  00100000  exit
000748  00100000  exit
00074c  00100000  exit
000750  00100000  exit
000754  00100000  exit
000758  00100000  exit
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
