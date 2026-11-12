; SHA-256 278c3ed750dd4112a1d2c894567d9bbb321e4c7e364f5aed3c56226ed5ea06b1
; P800 Cluster · XTDK LLVM 19 · 632 / 632 words decoded
; bound names: triton_poi_fused_add_silu_0
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
0000dc  9f8e8ef9  addli sp, sp, -832
0000e0  1f8f0e06  addli r30, sp, 768
0000e4  e3004f00  loadli.w r1,  32(r30)
0000e8  e3413f00  loadli.w r3,  28(r30)
0000ec  63414f00  loadli.w r2,  36(r30)
0000f0  0b923020  mul.s r4, r1, r3
0000f4  80510002  load_param_i r3, 0
0000f8  0b122220  mul.s r4, r4, r2
0000fc  4b5a3202  ble.s r4, r3, 1684
000100  80320002  core_id r5
000104  80d50002  load_param_i r11, 1
000108  1f170000  addli r14, zero, 1
00010c  1f080001  addli r16, zero, 128
000110  9f080ffb  addli r17, r30, -640
000114  ab09803f  lui r19, 260096
000118  1bb66200  slli r12, r5, 6
00011c  8b922130  div.s r5, r3, r2
000120  1f030010  addli r6, zero, 2048
000124  ab0d00f0  lui r27, 983040
000128  2b0e00f0  lui r28, 983040
00012c  eb540f00  load.d r[10:11], 0(r30)
000130  6b5a8f00  load.d r[21:22], 8(r30)
000134  9f060ffa  addli r13, r30, -768
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
00017c  42100fa2  vload_mask16.mz vr0{mr1}, 1280(r30)
000180  c2108fa2  vload_mask16.mz vr1{mr1}, 1344(r30)
000184  42110fa3  vload_mask16.mz vr2{mr1}, 1408(r30)
000188  c2118fa3  vload_mask16.mz vr3{mr1}, 1472(r30)
00018c  86f20000  vfp162float_h.rn vr5, vr1
000190  06b20000  vfp162float_l.rn vr4, vr1
000194  06f30100  vfp162float_h.rn vr6, vr3
000198  86b00100  vfp162float_l.rn vr1, vr3
00019c  96916202  vadd.f.mz.rn vr3{mr1}, vr5, vr6
0001a0  86720000  vfp162float_h.rn vr5, vr0
0001a4  06730100  vfp162float_h.rn vr6, vr2
0001a8  96101202  vadd.f.mz.rn vr1{mr1}, vr4, vr1
0001ac  06320000  vfp162float_l.rn vr4, vr0
0001b0  06300100  vfp162float_l.rn vr0, vr2
0001b4  16110202  vadd.f.mz.rn vr2{mr1}, vr4, vr0
0001b8  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
0001bc  86130100  vfloat2fp16_l.rn vr7, vr2
0001c0  86d30200  vfloat2fp16_h.rn vr7, vr5
0001c4  06920000  vfloat2fp16_l.rn vr4, vr1
0001c8  06d20100  vfloat2fp16_h.rn vr4, vr3
0001cc  06b10300  vfp162float_l.rn vr2, vr7
0001d0  9a122002  vsub.f.mz.rn vr5{mr1}, zero, vr2
0001d4  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
0001d8  86f10300  vfp162float_h.rn vr3, vr7
0001dc  06300200  vfp162float_l.rn vr0, vr4
0001e0  86700200  vfp162float_h.rn vr1, vr4
0001e4  1a130002  vsub.f.mz.rn vr6{mr1}, zero, vr0
0001e8  9a133002  vsub.f.mz.rn vr7{mr1}, zero, vr3
0001ec  1a121002  vsub.f.mz.rn vr4{mr1}, zero, vr1
0001f0  00a00000  mfence { lm }
0001f4  e3028ffc  loadli.w r5,  -448(r30)
0001f8  63438ffc  loadli.w r6,  -444(r30)
0001fc  e3039ffc  loadli.w r7,  -440(r30)
000200  63449ffc  loadli.w r8,  -436(r30)
000204  e304affc  loadli.w r9,  -432(r30)
000208  6345affc  loadli.w r10,  -428(r30)
00020c  e306bffc  loadli.w r13,  -424(r30)
000210  e347bffc  loadli.w r15,  -420(r30)
000214  6309cffc  loadli.w r18,  -416(r30)
000218  634acffc  loadli.w r20,  -412(r30)
00021c  e30adffc  loadli.w r21,  -408(r30)
000220  634bdffc  loadli.w r22,  -404(r30)
000224  e30beffc  loadli.w r23,  -400(r30)
000228  634ceffc  loadli.w r24,  -396(r30)
00022c  e30cfffc  loadli.w r25,  -392(r30)
000230  634dfffc  loadli.w r26,  -388(r30)
000234  8f820200  exp.f.rn r5, r5
000238  0f030300  exp.f.rn r6, r6
00023c  8f830300  exp.f.rn r7, r7
000240  0f040400  exp.f.rn r8, r8
000244  8be23211  add.f.rn r5, r5, r19
000248  0b633311  add.f.rn r6, r6, r19
00024c  8f825918  div.f.rn r5, r19, r5
000250  0f836918  div.f.rn r6, r19, r6
000254  67005ffc  storeli.w r5, -512(r30)
000258  8be23311  add.f.rn r5, r7, r19
00025c  8f830400  exp.f.rn r7, r9
000260  8f040500  exp.f.rn r9, r10
000264  0f850700  exp.f.rn r10, r15
000268  67406ffc  storeli.w r6, -508(r30)
00026c  0b633411  add.f.rn r6, r8, r19
000270  0f840600  exp.f.rn r8, r13
000274  8f060900  exp.f.rn r13, r18
000278  8f825918  div.f.rn r5, r19, r5
00027c  0f836918  div.f.rn r6, r19, r6
000280  8be33311  add.f.rn r7, r7, r19
000284  8be43411  add.f.rn r9, r9, r19
000288  0b643411  add.f.rn r8, r8, r19
00028c  0b653511  add.f.rn r10, r10, r19
000290  8f837918  div.f.rn r7, r19, r7
000294  e7005ffc  storeli.w r5, -504(r30)
000298  8f829918  div.f.rn r5, r19, r9
00029c  8be43611  add.f.rn r9, r13, r19
0002a0  0f848918  div.f.rn r8, r19, r8
0002a4  0f85a918  div.f.rn r10, r19, r10
0002a8  8f060d00  exp.f.rn r13, r26
0002ac  e7406ffc  storeli.w r6, -500(r30)
0002b0  0f030a00  exp.f.rn r6, r20
0002b4  67017ffc  storeli.w r7, -496(r30)
0002b8  8f839918  div.f.rn r7, r19, r9
0002bc  8f040c00  exp.f.rn r9, r24
0002c0  67415ffc  storeli.w r5, -492(r30)
0002c4  8f820a00  exp.f.rn r5, r21
0002c8  e7018ffc  storeli.w r8, -488(r30)
0002cc  0f040b00  exp.f.rn r8, r22
0002d0  e741affc  storeli.w r10, -484(r30)
0002d4  0f850c00  exp.f.rn r10, r25
0002d8  0b633311  add.f.rn r6, r6, r19
0002dc  8be63611  add.f.rn r13, r13, r19
0002e0  0f836918  div.f.rn r6, r19, r6
0002e4  8f86d918  div.f.rn r13, r19, r13
0002e8  67027ffc  storeli.w r7, -480(r30)
0002ec  8f830b00  exp.f.rn r7, r23
0002f0  8be23211  add.f.rn r5, r5, r19
0002f4  0b643411  add.f.rn r8, r8, r19
0002f8  8be43411  add.f.rn r9, r9, r19
0002fc  0b653511  add.f.rn r10, r10, r19
000300  8f825918  div.f.rn r5, r19, r5
000304  0f848918  div.f.rn r8, r19, r8
000308  8f849918  div.f.rn r9, r19, r9
00030c  0f85a918  div.f.rn r10, r19, r10
000310  67426ffc  storeli.w r6, -476(r30)
000314  e743dffc  storeli.w r13, -452(r30)
000318  8be33311  add.f.rn r7, r7, r19
00031c  8f837918  div.f.rn r7, r19, r7
000320  e7025ffc  storeli.w r5, -472(r30)
000324  e7428ffc  storeli.w r8, -468(r30)
000328  67439ffc  storeli.w r9, -460(r30)
00032c  e703affc  storeli.w r10, -456(r30)
000330  9f020ffc  addli r5, r30, -512
000334  67037ffc  storeli.w r7, -464(r30)
000338  00a00000  mfence { lm }
00033c  c2920202  vload_mask16.mz vr5{mr1}, 0(r5)
000340  9f028ffd  addli r5, r30, -320
000344  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
000348  00a00000  mfence { lm }
00034c  e3028ffd  loadli.w r5,  -320(r30)
000350  63438ffd  loadli.w r6,  -316(r30)
000354  e3039ffd  loadli.w r7,  -312(r30)
000358  e304affd  loadli.w r9,  -304(r30)
00035c  6345affd  loadli.w r10,  -300(r30)
000360  e306bffd  loadli.w r13,  -296(r30)
000364  e347bffd  loadli.w r15,  -292(r30)
000368  6309cffd  loadli.w r18,  -288(r30)
00036c  634acffd  loadli.w r20,  -284(r30)
000370  e30adffd  loadli.w r21,  -280(r30)
000374  634bdffd  loadli.w r22,  -276(r30)
000378  e30beffd  loadli.w r23,  -272(r30)
00037c  634ceffd  loadli.w r24,  -268(r30)
000380  e30cfffd  loadli.w r25,  -264(r30)
000384  634dfffd  loadli.w r26,  -260(r30)
000388  0e115102  vmul.f.mz.rn vr2{mr1}, vr2, vr5
00038c  8f820200  exp.f.rn r5, r5
000390  0f030300  exp.f.rn r6, r6
000394  8f830300  exp.f.rn r7, r7
000398  0be43211  add.f.rn r8, r5, r19
00039c  0b633311  add.f.rn r6, r6, r19
0003a0  8be33311  add.f.rn r7, r7, r19
0003a4  e3429ffd  loadli.w r5,  -308(r30)
0003a8  8f820200  exp.f.rn r5, r5
0003ac  0f848918  div.f.rn r8, r19, r8
0003b0  0f836918  div.f.rn r6, r19, r6
0003b4  8f837918  div.f.rn r7, r19, r7
0003b8  8be23211  add.f.rn r5, r5, r19
0003bc  67088ffc  storeli.w r8, -384(r30)
0003c0  0f840400  exp.f.rn r8, r9
0003c4  8f040500  exp.f.rn r9, r10
0003c8  0f850700  exp.f.rn r10, r15
0003cc  67486ffc  storeli.w r6, -380(r30)
0003d0  0f830600  exp.f.rn r6, r13
0003d4  8f060900  exp.f.rn r13, r18
0003d8  e7087ffc  storeli.w r7, -376(r30)
0003dc  8f825918  div.f.rn r5, r19, r5
0003e0  0b643411  add.f.rn r8, r8, r19
0003e4  8be43411  add.f.rn r9, r9, r19
0003e8  0b633311  add.f.rn r6, r6, r19
0003ec  0b653511  add.f.rn r10, r10, r19
0003f0  e7485ffc  storeli.w r5, -372(r30)
0003f4  8f020a00  exp.f.rn r5, r20
0003f8  0f848918  div.f.rn r8, r19, r8
0003fc  8f839918  div.f.rn r7, r19, r9
000400  8be43611  add.f.rn r9, r13, r19
000404  0f836918  div.f.rn r6, r19, r6
000408  0f85a918  div.f.rn r10, r19, r10
00040c  8f060d00  exp.f.rn r13, r26
000410  8be23211  add.f.rn r5, r5, r19
000414  67098ffc  storeli.w r8, -368(r30)
000418  0f849918  div.f.rn r8, r19, r9
00041c  8f040c00  exp.f.rn r9, r24
000420  67497ffc  storeli.w r7, -364(r30)
000424  8f030b00  exp.f.rn r7, r22
000428  e7096ffc  storeli.w r6, -360(r30)
00042c  0f830a00  exp.f.rn r6, r21
000430  e749affc  storeli.w r10, -356(r30)
000434  0f850c00  exp.f.rn r10, r25
000438  8be63611  add.f.rn r13, r13, r19
00043c  8f825918  div.f.rn r5, r19, r5
000440  8f86d918  div.f.rn r13, r19, r13
000444  670a8ffc  storeli.w r8, -352(r30)
000448  0f840b00  exp.f.rn r8, r23
00044c  0b633311  add.f.rn r6, r6, r19
000450  8be33311  add.f.rn r7, r7, r19
000454  8be43411  add.f.rn r9, r9, r19
000458  0b653511  add.f.rn r10, r10, r19
00045c  674a5ffc  storeli.w r5, -348(r30)
000460  9f020ffd  addli r5, r30, -384
000464  0f836918  div.f.rn r6, r19, r6
000468  8f837918  div.f.rn r7, r19, r7
00046c  8f849918  div.f.rn r9, r19, r9
000470  0f85a918  div.f.rn r10, r19, r10
000474  e74bdffc  storeli.w r13, -324(r30)
000478  0b643411  add.f.rn r8, r8, r19
00047c  0f848918  div.f.rn r8, r19, r8
000480  e70a6ffc  storeli.w r6, -344(r30)
000484  e74a7ffc  storeli.w r7, -340(r30)
000488  674b9ffc  storeli.w r9, -332(r30)
00048c  e70baffc  storeli.w r10, -328(r30)
000490  670b8ffc  storeli.w r8, -336(r30)
000494  00a00000  mfence { lm }
000498  c2930202  vload_mask16.mz vr7{mr1}, 0(r5)
00049c  9f028ffe  addli r5, r30, -192
0004a0  46906202  vstore_mask16.mz vr6{mr1}, 0(r5)
0004a4  00a00000  mfence { lm }
0004a8  e3028ffe  loadli.w r5,  -192(r30)
0004ac  63438ffe  loadli.w r6,  -188(r30)
0004b0  e3039ffe  loadli.w r7,  -184(r30)
0004b4  e304affe  loadli.w r9,  -176(r30)
0004b8  6345affe  loadli.w r10,  -172(r30)
0004bc  e306bffe  loadli.w r13,  -168(r30)
0004c0  e347bffe  loadli.w r15,  -164(r30)
0004c4  6309cffe  loadli.w r18,  -160(r30)
0004c8  634acffe  loadli.w r20,  -156(r30)
0004cc  e30adffe  loadli.w r21,  -152(r30)
0004d0  634bdffe  loadli.w r22,  -148(r30)
0004d4  e30beffe  loadli.w r23,  -144(r30)
0004d8  634ceffe  loadli.w r24,  -140(r30)
0004dc  e30cfffe  loadli.w r25,  -136(r30)
0004e0  634dfffe  loadli.w r26,  -132(r30)
0004e4  8e917102  vmul.f.mz.rn vr3{mr1}, vr3, vr7
0004e8  8f820200  exp.f.rn r5, r5
0004ec  0f030300  exp.f.rn r6, r6
0004f0  8f830300  exp.f.rn r7, r7
0004f4  0be43211  add.f.rn r8, r5, r19
0004f8  0b633311  add.f.rn r6, r6, r19
0004fc  8be33311  add.f.rn r7, r7, r19
000500  e3429ffe  loadli.w r5,  -180(r30)
000504  8f820200  exp.f.rn r5, r5
000508  0f848918  div.f.rn r8, r19, r8
00050c  0f836918  div.f.rn r6, r19, r6
000510  8f837918  div.f.rn r7, r19, r7
000514  8be23211  add.f.rn r5, r5, r19
000518  67008ffe  storeli.w r8, -256(r30)
00051c  0f840400  exp.f.rn r8, r9
000520  8f040500  exp.f.rn r9, r10
000524  0f850700  exp.f.rn r10, r15
000528  67406ffe  storeli.w r6, -252(r30)
00052c  0f830600  exp.f.rn r6, r13
000530  8f060900  exp.f.rn r13, r18
000534  e7007ffe  storeli.w r7, -248(r30)
000538  8f825918  div.f.rn r5, r19, r5
00053c  0b643411  add.f.rn r8, r8, r19
000540  8be43411  add.f.rn r9, r9, r19
000544  0b633311  add.f.rn r6, r6, r19
000548  0b653511  add.f.rn r10, r10, r19
00054c  e7405ffe  storeli.w r5, -244(r30)
000550  8f020a00  exp.f.rn r5, r20
000554  0f848918  div.f.rn r8, r19, r8
000558  8f839918  div.f.rn r7, r19, r9
00055c  8be43611  add.f.rn r9, r13, r19
000560  0f836918  div.f.rn r6, r19, r6
000564  0f85a918  div.f.rn r10, r19, r10
000568  8f060d00  exp.f.rn r13, r26
00056c  8be23211  add.f.rn r5, r5, r19
000570  67018ffe  storeli.w r8, -240(r30)
000574  0f849918  div.f.rn r8, r19, r9
000578  8f040c00  exp.f.rn r9, r24
00057c  67417ffe  storeli.w r7, -236(r30)
000580  8f030b00  exp.f.rn r7, r22
000584  e7016ffe  storeli.w r6, -232(r30)
000588  0f830a00  exp.f.rn r6, r21
00058c  e741affe  storeli.w r10, -228(r30)
000590  0f850c00  exp.f.rn r10, r25
000594  8be63611  add.f.rn r13, r13, r19
000598  8f825918  div.f.rn r5, r19, r5
00059c  8f86d918  div.f.rn r13, r19, r13
0005a0  67028ffe  storeli.w r8, -224(r30)
0005a4  0f840b00  exp.f.rn r8, r23
0005a8  0b633311  add.f.rn r6, r6, r19
0005ac  8be33311  add.f.rn r7, r7, r19
0005b0  8be43411  add.f.rn r9, r9, r19
0005b4  0b653511  add.f.rn r10, r10, r19
0005b8  67425ffe  storeli.w r5, -220(r30)
0005bc  9f020ffe  addli r5, r30, -256
0005c0  0f836918  div.f.rn r6, r19, r6
0005c4  8f837918  div.f.rn r7, r19, r7
0005c8  8f849918  div.f.rn r9, r19, r9
0005cc  0f85a918  div.f.rn r10, r19, r10
0005d0  e743dffe  storeli.w r13, -196(r30)
0005d4  0b643411  add.f.rn r8, r8, r19
0005d8  0f848918  div.f.rn r8, r19, r8
0005dc  e7026ffe  storeli.w r6, -216(r30)
0005e0  e7427ffe  storeli.w r7, -212(r30)
0005e4  67439ffe  storeli.w r9, -204(r30)
0005e8  e703affe  storeli.w r10, -200(r30)
0005ec  67038ffe  storeli.w r8, -208(r30)
0005f0  00a00000  mfence { lm }
0005f4  42930202  vload_mask16.mz vr6{mr1}, 0(r5)
0005f8  9f028fff  addli r5, r30, -64
0005fc  46904202  vstore_mask16.mz vr4{mr1}, 0(r5)
000600  00a00000  mfence { lm }
000604  e3028fff  loadli.w r5,  -64(r30)
000608  63438fff  loadli.w r6,  -60(r30)
00060c  e3039fff  loadli.w r7,  -56(r30)
000610  6345afff  loadli.w r10,  -44(r30)
000614  e306bfff  loadli.w r13,  -40(r30)
000618  e347bfff  loadli.w r15,  -36(r30)
00061c  6309cfff  loadli.w r18,  -32(r30)
000620  634acfff  loadli.w r20,  -28(r30)
000624  e30adfff  loadli.w r21,  -24(r30)
000628  634bdfff  loadli.w r22,  -20(r30)
00062c  e30befff  loadli.w r23,  -16(r30)
000630  634cefff  loadli.w r24,  -12(r30)
000634  e30cffff  loadli.w r25,  -8(r30)
000638  634dffff  loadli.w r26,  -4(r30)
00063c  0e106002  vmul.f.mz.rn vr0{mr1}, vr0, vr6
000640  8f820200  exp.f.rn r5, r5
000644  0f030300  exp.f.rn r6, r6
000648  0be43211  add.f.rn r8, r5, r19
00064c  8b643311  add.f.rn r9, r6, r19
000650  8f820300  exp.f.rn r5, r7
000654  63439fff  loadli.w r6,  -52(r30)
000658  0f030300  exp.f.rn r6, r6
00065c  8f838918  div.f.rn r7, r19, r8
000660  0f849918  div.f.rn r8, r19, r9
000664  e304afff  loadli.w r9,  -48(r30)
000668  8be23211  add.f.rn r5, r5, r19
00066c  0b633311  add.f.rn r6, r6, r19
000670  67087ffe  storeli.w r7, -128(r30)
000674  8f830400  exp.f.rn r7, r9
000678  8f840600  exp.f.rn r9, r13
00067c  8f060900  exp.f.rn r13, r18
000680  67488ffe  storeli.w r8, -124(r30)
000684  0f040500  exp.f.rn r8, r10
000688  0f850700  exp.f.rn r10, r15
00068c  8f825918  div.f.rn r5, r19, r5
000690  0f836918  div.f.rn r6, r19, r6
000694  8be33311  add.f.rn r7, r7, r19
000698  0b643411  add.f.rn r8, r8, r19
00069c  8be43411  add.f.rn r9, r9, r19
0006a0  0b653511  add.f.rn r10, r10, r19
0006a4  8be63611  add.f.rn r13, r13, r19
0006a8  e7085ffe  storeli.w r5, -120(r30)
0006ac  e7486ffe  storeli.w r6, -116(r30)
0006b0  0f030a00  exp.f.rn r6, r20
0006b4  8f827918  div.f.rn r5, r19, r7
0006b8  8f838918  div.f.rn r7, r19, r8
0006bc  0f849918  div.f.rn r8, r19, r9
0006c0  8f84a918  div.f.rn r9, r19, r10
0006c4  0f85d918  div.f.rn r10, r19, r13
0006c8  8f060d00  exp.f.rn r13, r26
0006cc  0b633311  add.f.rn r6, r6, r19
0006d0  67095ffe  storeli.w r5, -112(r30)
0006d4  8f820a00  exp.f.rn r5, r21
0006d8  67497ffe  storeli.w r7, -108(r30)
0006dc  8f030b00  exp.f.rn r7, r22
0006e0  e7098ffe  storeli.w r8, -104(r30)
0006e4  0f840b00  exp.f.rn r8, r23
0006e8  e7499ffe  storeli.w r9, -100(r30)
0006ec  8f040c00  exp.f.rn r9, r24
0006f0  670aaffe  storeli.w r10, -96(r30)
0006f4  0f850c00  exp.f.rn r10, r25
0006f8  8be63611  add.f.rn r13, r13, r19
0006fc  0f836918  div.f.rn r6, r19, r6
000700  8f86d918  div.f.rn r13, r19, r13
000704  8be23211  add.f.rn r5, r5, r19
000708  8be33311  add.f.rn r7, r7, r19
00070c  0b643411  add.f.rn r8, r8, r19
000710  8be43411  add.f.rn r9, r9, r19
000714  0b653511  add.f.rn r10, r10, r19
000718  674a6ffe  storeli.w r6, -92(r30)
00071c  8f825918  div.f.rn r5, r19, r5
000720  8f837918  div.f.rn r7, r19, r7
000724  0f848918  div.f.rn r8, r19, r8
000728  8f849918  div.f.rn r9, r19, r9
00072c  0f85a918  div.f.rn r10, r19, r10
000730  e74bdffe  storeli.w r13, -68(r30)
000734  e70a5ffe  storeli.w r5, -88(r30)
000738  e74a7ffe  storeli.w r7, -84(r30)
00073c  670b8ffe  storeli.w r8, -80(r30)
000740  674b9ffe  storeli.w r9, -76(r30)
000744  e70baffe  storeli.w r10, -72(r30)
000748  9f020fff  addli r5, r30, -128
00074c  ab0300f0  lui r7, 983040
000750  00a00000  mfence { lm }
000754  42920202  vload_mask16.mz vr4{mr1}, 0(r5)
000758  eb520f01  load.d r[6:7], 16(r30)
00075c  97137800  or r7, r16, r7
000760  8ba2b211  add.ul r[6:7], r[6:7], r[28:29]
000764  8e904002  vmul.f.mz.rn vr1{mr1}, vr1, vr4
000768  06120100  vfloat2fp16_l.rn vr4, vr2
00076c  06d20100  vfloat2fp16_h.rn vr4, vr3
000770  06110000  vfloat2fp16_l.rn vr2, vr0
000774  06d10000  vfloat2fp16_h.rn vr2, vr1
000778  46184fa2  vstore_mask16.mz vr4{mr1}, 1408(r30)
00077c  461c2fa2  vstore_mask16.mz vr2{mr1}, 1472(r30)
000780  00a00000  mfence { lm }
000784  ffb31201  s_lm2gm r7, r17, 0(r[6:7])
000788  00a00000  mfence { lm }
00078c  3fc641fc  blt.s r3, r4, -1648
000790  9f0e0ffa  addli sp, r30, -768
000794  9f8e0e06  addli sp, sp, 768
000798  00a00300  mfence { lm, sm, gm }
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
