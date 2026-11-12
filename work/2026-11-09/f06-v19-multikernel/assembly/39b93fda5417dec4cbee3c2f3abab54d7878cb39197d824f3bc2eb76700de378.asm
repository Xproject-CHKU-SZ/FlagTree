; SHA-256 39b93fda5417dec4cbee3c2f3abab54d7878cb39197d824f3bc2eb76700de378
; P800 Cluster · XTDK LLVM 19 · 384 / 384 words decoded
; bound names: triton_poi_fused_add_gelu_1
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
0000fc  cb5a3200  ble.s r4, r3, 692
000100  ab28373d  lui r17, 250738
000104  2b494c3f  lui r18, 259268
000108  00d10002  load_param_i r2, 1
00010c  00350002  core_id r10
000110  1f078000  addli r14, zero, 64
000114  9f078ffd  addli r15, r30, -320
000118  2b0b803f  lui r22, 260096
00011c  2b0c00c0  lui r24, 786432
000120  e7472ffc  storeli.w r2, -388(r30)
000124  1b314500  slli r2, r10, 4
000128  9b983871  ori r17, r17, 1811
00012c  1b19a922  ori r18, r18, 554
000130  e7072ffc  storeli.w r2, -392(r30)
000134  0b9d1130  div.s r26, r3, r1
000138  6301fffc  loadli.w r2,  -392(r30)
00013c  eb550f00  load.d r[12:13], 0(r30)
000140  1f850000  addli r10, r1, 0
000144  ab0200f0  lui r5, 983040
000148  2b0e00f0  lui r28, 983040
00014c  1713c701  or r6, r14, r28
000150  97125700  or r5, r14, r5
000154  0b1d9d30  div.s r26, r26, r9
000158  1b3dad00  slli r26, r26, 10
00015c  0b1d2d10  add.s r26, r26, r2
000160  1f010008  addli r2, zero, 1024
000164  8b1d2d38  mod.s r27, r26, r2
000168  b3130d28  sext_int2long r[8:9], r26
00016c  1f210000  addli r2, zero, 2
000170  97b32302  sll.d r[8:9], r[8:9], r2
000174  339d0d28  sext_int2long r[27:28], r27
000178  97302d02  sll.d r[2:3], r[27:28], r2
00017c  0bad7510  add.ul r[27:28], r[12:13], r[8:9]
000180  eb538f00  load.d r[8:9], 8(r30)
000184  8ba01310  add.ul r[2:3], r[8:9], r[2:3]
000188  9f030ffd  addli r7, r30, -384
00018c  7f237d00  l_gm2lm r6, r7, 0(r[27:28])
000190  ffa2f000  l_gm2lm r5, r15, 0(r[2:3])
000194  ab000040  lui r1, 262144
000198  00a00000  mfence { lm }
00019c  42100fc3  vload_mask16.mz vr0{mr1}, 1664(r30)
0001a0  c2108fc3  vload_mask16.mz vr1{mr1}, 1728(r30)
0001a4  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
0001a8  8e100002  vmul.f.mz.rn vr1{mr1}, vr0, vr0
0001ac  8e101002  vmul.f.mz.rn vr1{mr1}, vr0, vr1
0001b0  8a901802  vmul.f.mz.rn vr1{mr1}, r17, vr1
0001b4  96101002  vadd.f.mz.rn vr1{mr1}, vr0, vr1
0001b8  8a101902  vmul.f.mz.rn vr1{mr1}, r18, vr1
0001bc  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0001c0  ab00003f  lui r1, 258048
0001c4  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
0001c8  9f008fff  addli r1, r30, -64
0001cc  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0001d0  00a00000  mfence { lm }
0001d4  e3008fff  loadli.w r1,  -64(r30)
0001d8  63418fff  loadli.w r2,  -60(r30)
0001dc  e3029fff  loadli.w r5,  -56(r30)
0001e0  63439fff  loadli.w r6,  -52(r30)
0001e4  e303afff  loadli.w r7,  -48(r30)
0001e8  6344afff  loadli.w r8,  -44(r30)
0001ec  630ebfff  loadli.w r28,  -40(r30)
0001f0  6348bfff  loadli.w r16,  -36(r30)
0001f4  e305cfff  loadli.w r11,  -32(r30)
0001f8  e346cfff  loadli.w r13,  -28(r30)
0001fc  e309dfff  loadli.w r19,  -24(r30)
000200  634adfff  loadli.w r20,  -20(r30)
000204  e30aefff  loadli.w r21,  -16(r30)
000208  e34befff  loadli.w r23,  -12(r30)
00020c  e30cffff  loadli.w r25,  -8(r30)
000210  6346ffff  loadli.w r12,  -4(r30)
000214  8f800000  exp.f.rn r1, r1
000218  0f010100  exp.f.rn r2, r2
00021c  8f820200  exp.f.rn r5, r5
000220  0f030300  exp.f.rn r6, r6
000224  8f830300  exp.f.rn r7, r7
000228  0f040400  exp.f.rn r8, r8
00022c  0f0e0e00  exp.f.rn r28, r28
000230  0f080800  exp.f.rn r16, r16
000234  8f850500  exp.f.rn r11, r11
000238  8f860600  exp.f.rn r13, r13
00023c  8f890900  exp.f.rn r19, r19
000240  0f0a0a00  exp.f.rn r20, r20
000244  8f8a0a00  exp.f.rn r21, r21
000248  8f8b0b00  exp.f.rn r23, r23
00024c  8f8c0c00  exp.f.rn r25, r25
000250  0f060600  exp.f.rn r12, r12
000254  67081ffe  storeli.w r1, -128(r30)
000258  67482ffe  storeli.w r2, -124(r30)
00025c  e7085ffe  storeli.w r5, -120(r30)
000260  e7486ffe  storeli.w r6, -116(r30)
000264  67097ffe  storeli.w r7, -112(r30)
000268  67498ffe  storeli.w r8, -108(r30)
00026c  e709cfff  storeli.w r28, -104(r30)
000270  e7490fff  storeli.w r16, -100(r30)
000274  670abffe  storeli.w r11, -96(r30)
000278  674adffe  storeli.w r13, -92(r30)
00027c  e70a3fff  storeli.w r19, -88(r30)
000280  e74a4fff  storeli.w r20, -84(r30)
000284  670b5fff  storeli.w r21, -80(r30)
000288  674b7fff  storeli.w r23, -76(r30)
00028c  e70b9fff  storeli.w r25, -72(r30)
000290  e74bcffe  storeli.w r12, -68(r30)
000294  9f000fff  addli r1, r30, -128
000298  00a00000  mfence { lm }
00029c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0002a0  9f008ffe  addli r1, r30, -192
0002a4  92101b02  vadd.f.mz.rn vr1{mr1}, r22, vr1
0002a8  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0002ac  00a00000  mfence { lm }
0002b0  e3008ffe  loadli.w r1,  -192(r30)
0002b4  63418ffe  loadli.w r2,  -188(r30)
0002b8  e3029ffe  loadli.w r5,  -184(r30)
0002bc  63439ffe  loadli.w r6,  -180(r30)
0002c0  e303affe  loadli.w r7,  -176(r30)
0002c4  6344affe  loadli.w r8,  -172(r30)
0002c8  e305bffe  loadli.w r11,  -168(r30)
0002cc  6346bffe  loadli.w r12,  -164(r30)
0002d0  e306cffe  loadli.w r13,  -160(r30)
0002d4  6348cffe  loadli.w r16,  -156(r30)
0002d8  e309dffe  loadli.w r19,  -152(r30)
0002dc  634adffe  loadli.w r20,  -148(r30)
0002e0  e30aeffe  loadli.w r21,  -144(r30)
0002e4  e34beffe  loadli.w r23,  -140(r30)
0002e8  e30cfffe  loadli.w r25,  -136(r30)
0002ec  634efffe  loadli.w r28,  -132(r30)
0002f0  8f001c18  div.f.rn r1, r24, r1
0002f4  0f012c18  div.f.rn r2, r24, r2
0002f8  67001ffe  storeli.w r1, -256(r30)
0002fc  8f005c18  div.f.rn r1, r24, r5
000300  8f027c18  div.f.rn r5, r24, r7
000304  8f03bc18  div.f.rn r7, r24, r11
000308  67402ffe  storeli.w r2, -252(r30)
00030c  0f016c18  div.f.rn r2, r24, r6
000310  0f038c18  div.f.rn r6, r24, r8
000314  0f04cc18  div.f.rn r8, r24, r12
000318  8f05dc18  div.f.rn r11, r24, r13
00031c  e7001ffe  storeli.w r1, -248(r30)
000320  e7402ffe  storeli.w r2, -244(r30)
000324  67015ffe  storeli.w r5, -240(r30)
000328  67416ffe  storeli.w r6, -236(r30)
00032c  e7017ffe  storeli.w r7, -232(r30)
000330  e7418ffe  storeli.w r8, -228(r30)
000334  6702bffe  storeli.w r11, -224(r30)
000338  8f000c19  div.f.rn r1, r24, r16
00033c  0f013c19  div.f.rn r2, r24, r19
000340  8f024c19  div.f.rn r5, r24, r20
000344  0f035c19  div.f.rn r6, r24, r21
000348  8f037c19  div.f.rn r7, r24, r23
00034c  0f049c19  div.f.rn r8, r24, r25
000350  8f05cc19  div.f.rn r11, r24, r28
000354  67421ffe  storeli.w r1, -220(r30)
000358  e7022ffe  storeli.w r2, -216(r30)
00035c  e7425ffe  storeli.w r5, -212(r30)
000360  67036ffe  storeli.w r6, -208(r30)
000364  67437ffe  storeli.w r7, -204(r30)
000368  e7038ffe  storeli.w r8, -200(r30)
00036c  e743bffe  storeli.w r11, -196(r30)
000370  9f000ffe  addli r1, r30, -256
000374  00a00000  mfence { lm }
000378  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
00037c  ab0000f0  lui r1, 983040
000380  97101700  or r1, r14, r1
000384  92101b02  vadd.f.mz.rn vr1{mr1}, r22, vr1
000388  92101b02  vadd.f.mz.rn vr1{mr1}, r22, vr1
00038c  0e101002  vmul.f.mz.rn vr0{mr1}, vr0, vr1
000390  461c0fc2  vstore_mask16.mz vr0{mr1}, 1728(r30)
000394  00a00000  mfence { lm }
000398  6341fffc  loadli.w r2,  -388(r30)
00039c  ff30fd00  s_lm2gm r1, r15, 0(r[27:28])
0003a0  9f000500  addli r1, r10, 0
0003a4  00a00000  mfence { lm }
0003a8  8b912110  add.s r3, r3, r2
0003ac  3fa641fe  blt.s r3, r4, -632
0003b0  9f0e8ffc  addli sp, r30, -448
0003b4  9f8e8e03  addli sp, sp, 448
0003b8  00a00300  mfence { lm, sm, gm }
0003bc  00100000  exit
0003c0  00100000  exit
0003c4  00100000  exit
0003c8  00100000  exit
0003cc  00100000  exit
0003d0  00100000  exit
0003d4  00100000  exit
0003d8  00100000  exit
0003dc  00100000  exit
0003e0  00100000  exit
0003e4  00100000  exit
0003e8  00100000  exit
0003ec  00100000  exit
0003f0  00100000  exit
0003f4  00100000  exit
0003f8  00100000  exit
0003fc  00100000  exit
000400  00100000  exit
000404  00100000  exit
000408  00100000  exit
00040c  00100000  exit
000410  00100000  exit
000414  00100000  exit
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
