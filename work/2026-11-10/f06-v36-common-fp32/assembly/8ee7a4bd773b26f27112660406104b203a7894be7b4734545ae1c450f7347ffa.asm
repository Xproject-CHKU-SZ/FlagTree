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
0000dc  9f8e0efc  addli sp, sp, -512
0000e0  1f8f8e03  addli r30, sp, 448
0000e4  e3054f00  loadli.w r11,  32(r30)
0000e8  e3413f00  loadli.w r3,  28(r30)
0000ec  63464f00  loadli.w r12,  36(r30)
0000f0  0b923520  mul.s r4, r11, r3
0000f4  80510002  load_param_i r3, 0
0000f8  0b12c220  mul.s r4, r4, r12
0000fc  4b4c3200  ble.s r4, r3, 784
000100  80d00002  load_param_i r1, 1
000104  80320002  core_id r5
000108  2b434c3f  lui r6, 259268
00010c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000110  1f088000  addli r16, zero, 64
000114  9f088ffd  addli r17, r30, -320
000118  2b0c803f  lui r24, 260096
00011c  2b0d00c0  lui r26, 786432
000120  6e312162  vxor.s.mz vr2{mr1}, vr2, vr2
000124  67471ffc  storeli.w r1, -396(r30)
000128  9bb04200  slli r1, r5, 4
00012c  ab22373d  lui r5, 250738
000130  1b1aa322  ori r20, r6, 554
000134  2b038041  lui r6, 268288
000138  9b993271  ori r19, r5, 1811
00013c  ab0280c1  lui r5, 792576
000140  67071ffc  storeli.w r1, -400(r30)
000144  abf00000  lui r1, 15
000148  6a901222  vor.f.mz vr0{mr1}, r5, vr1
00014c  ea101322  vor.f.mz vr1{mr1}, r6, vr1
000150  9ff0f01f  addli r1, r1, 4095
000154  7e8000e0  vmmov mr0, r1
000158  8b92c130  div.s r5, r3, r12
00015c  e300effc  loadli.w r1,  -400(r30)
000160  9f260000  addli r13, zero, 2
000164  ab0300f0  lui r7, 983040
000168  2b0e00f0  lui r28, 983040
00016c  1714c801  or r8, r16, r28
000170  97137800  or r7, r16, r7
000174  8b92b230  div.s r5, r5, r11
000178  9bb2a200  slli r5, r5, 10
00017c  8b921210  add.s r5, r5, r1
000180  9f000008  addli r1, zero, 1024
000184  0b931238  mod.s r6, r5, r1
000188  b3940228  sext_int2long r[10:11], r5
00018c  b3100328  sext_int2long r[2:3], r6
000190  97b2d402  sll.d r[6:7], r[10:11], r13
000194  eb540f00  load.d r[10:11], 0(r30)
000198  97b0d002  sll.d r[2:3], r[2:3], r13
00019c  eb568f00  load.d r[14:15], 8(r30)
0001a0  8ba45410  add.ul r[10:11], r[10:11], r[6:7]
0001a4  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
0001a8  9f060ffd  addli r13, r30, -384
0001ac  7fa4d400  l_gm2lm r8, r13, 0(r[10:11])
0001b0  ffa31001  l_gm2lm r7, r17, 0(r[2:3])
0001b4  00a00000  mfence { lm }
0001b8  c2110fc3  vload_mask16.mz vr3{mr1}, 1664(r30)
0001bc  42128fc3  vload_mask16.mz vr4{mr1}, 1728(r30)
0001c0  96914102  vadd.f.mz.rn vr3{mr1}, vr3, vr4
0001c4  0e923102  vmul.f.mz.rn vr4{mr1}, vr3, vr3
0001c8  0e924102  vmul.f.mz.rn vr4{mr1}, vr3, vr4
0001cc  0a924902  vmul.f.mz.rn vr4{mr1}, r19, vr4
0001d0  16924102  vadd.f.mz.rn vr4{mr1}, vr3, vr4
0001d4  0a124a02  vmul.f.mz.rn vr4{mr1}, r20, vr4
0001d8  f6110242  vlt.f.mz mr3{mr1}, vr4, vr0
0001dc  76914042  vlt.f.mz mr2{mr1}, vr1, vr4
0001e0  fe8001a0  vmmov r1, mr3
0001e4  7e0101a0  vmmov r2, mr2
0001e8  731e1fe6  store.h r1, -388(r30)
0001ec  e340fffc  loadli.w r1,  -388(r30)
0001f0  731c2fe6  store.h r2, -392(r30)
0001f4  6301fffc  loadli.w r2,  -392(r30)
0001f8  7e8100e0  vmmov mr2, r1
0001fc  ab000040  lui r1, 262144
000200  7e010100  vmand mr2, mr2, mr0
000204  6e120134  vor.f.mh vr4{mr2}, vr2, vr0
000208  7e0101e0  vmmov mr2, r2
00020c  7e010100  vmand mr2, mr2, mr0
000210  6e121134  vor.f.mh vr4{mr2}, vr2, vr1
000214  0a924002  vmul.f.mz.rn vr4{mr1}, r1, vr4
000218  ab00003f  lui r1, 258048
00021c  8a913002  vmul.f.mz.rn vr3{mr1}, r1, vr3
000220  9f008fff  addli r1, r30, -64
000224  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
000228  00a00000  mfence { lm }
00022c  e3008fff  loadli.w r1,  -64(r30)
000230  63418fff  loadli.w r2,  -60(r30)
000234  e3039fff  loadli.w r7,  -56(r30)
000238  63449fff  loadli.w r8,  -52(r30)
00023c  e304afff  loadli.w r9,  -48(r30)
000240  6345afff  loadli.w r10,  -44(r30)
000244  630ebfff  loadli.w r28,  -40(r30)
000248  6349bfff  loadli.w r18,  -36(r30)
00024c  e306cfff  loadli.w r13,  -32(r30)
000250  e347cfff  loadli.w r15,  -28(r30)
000254  e30adfff  loadli.w r21,  -24(r30)
000258  634bdfff  loadli.w r22,  -20(r30)
00025c  e30befff  loadli.w r23,  -16(r30)
000260  e34cefff  loadli.w r25,  -12(r30)
000264  e30dffff  loadli.w r27,  -8(r30)
000268  6347ffff  loadli.w r14,  -4(r30)
00026c  8f800000  exp.f.rn r1, r1
000270  0f010100  exp.f.rn r2, r2
000274  8f830300  exp.f.rn r7, r7
000278  0f040400  exp.f.rn r8, r8
00027c  8f840400  exp.f.rn r9, r9
000280  0f050500  exp.f.rn r10, r10
000284  0f0e0e00  exp.f.rn r28, r28
000288  0f090900  exp.f.rn r18, r18
00028c  8f860600  exp.f.rn r13, r13
000290  8f870700  exp.f.rn r15, r15
000294  8f8a0a00  exp.f.rn r21, r21
000298  0f0b0b00  exp.f.rn r22, r22
00029c  8f8b0b00  exp.f.rn r23, r23
0002a0  8f8c0c00  exp.f.rn r25, r25
0002a4  8f8d0d00  exp.f.rn r27, r27
0002a8  0f070700  exp.f.rn r14, r14
0002ac  67081ffe  storeli.w r1, -128(r30)
0002b0  67482ffe  storeli.w r2, -124(r30)
0002b4  e7087ffe  storeli.w r7, -120(r30)
0002b8  e7488ffe  storeli.w r8, -116(r30)
0002bc  67099ffe  storeli.w r9, -112(r30)
0002c0  6749affe  storeli.w r10, -108(r30)
0002c4  e709cfff  storeli.w r28, -104(r30)
0002c8  e7492fff  storeli.w r18, -100(r30)
0002cc  670adffe  storeli.w r13, -96(r30)
0002d0  674afffe  storeli.w r15, -92(r30)
0002d4  e70a5fff  storeli.w r21, -88(r30)
0002d8  e74a6fff  storeli.w r22, -84(r30)
0002dc  670b7fff  storeli.w r23, -80(r30)
0002e0  674b9fff  storeli.w r25, -76(r30)
0002e4  e70bbfff  storeli.w r27, -72(r30)
0002e8  e74beffe  storeli.w r14, -68(r30)
0002ec  9f000fff  addli r1, r30, -128
0002f0  00a00000  mfence { lm }
0002f4  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
0002f8  9f008ffe  addli r1, r30, -192
0002fc  12124c02  vadd.f.mz.rn vr4{mr1}, r24, vr4
000300  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
000304  00a00000  mfence { lm }
000308  e3008ffe  loadli.w r1,  -192(r30)
00030c  63418ffe  loadli.w r2,  -188(r30)
000310  e3039ffe  loadli.w r7,  -184(r30)
000314  63449ffe  loadli.w r8,  -180(r30)
000318  e304affe  loadli.w r9,  -176(r30)
00031c  6345affe  loadli.w r10,  -172(r30)
000320  e306bffe  loadli.w r13,  -168(r30)
000324  6347bffe  loadli.w r14,  -164(r30)
000328  e307cffe  loadli.w r15,  -160(r30)
00032c  6349cffe  loadli.w r18,  -156(r30)
000330  e30adffe  loadli.w r21,  -152(r30)
000334  634bdffe  loadli.w r22,  -148(r30)
000338  e30beffe  loadli.w r23,  -144(r30)
00033c  e34ceffe  loadli.w r25,  -140(r30)
000340  e30dfffe  loadli.w r27,  -136(r30)
000344  634efffe  loadli.w r28,  -132(r30)
000348  8f001d18  div.f.rn r1, r26, r1
00034c  0f012d18  div.f.rn r2, r26, r2
000350  67001ffe  storeli.w r1, -256(r30)
000354  8f007d18  div.f.rn r1, r26, r7
000358  8f039d18  div.f.rn r7, r26, r9
00035c  8f04dd18  div.f.rn r9, r26, r13
000360  67402ffe  storeli.w r2, -252(r30)
000364  0f018d18  div.f.rn r2, r26, r8
000368  0f04ad18  div.f.rn r8, r26, r10
00036c  0f05ed18  div.f.rn r10, r26, r14
000370  8f06fd18  div.f.rn r13, r26, r15
000374  e7001ffe  storeli.w r1, -248(r30)
000378  e7402ffe  storeli.w r2, -244(r30)
00037c  67017ffe  storeli.w r7, -240(r30)
000380  67418ffe  storeli.w r8, -236(r30)
000384  e7019ffe  storeli.w r9, -232(r30)
000388  e741affe  storeli.w r10, -228(r30)
00038c  6702dffe  storeli.w r13, -224(r30)
000390  8f002d19  div.f.rn r1, r26, r18
000394  0f015d19  div.f.rn r2, r26, r21
000398  8f036d19  div.f.rn r7, r26, r22
00039c  0f047d19  div.f.rn r8, r26, r23
0003a0  8f049d19  div.f.rn r9, r26, r25
0003a4  0f05bd19  div.f.rn r10, r26, r27
0003a8  8f06cd19  div.f.rn r13, r26, r28
0003ac  67421ffe  storeli.w r1, -220(r30)
0003b0  e7022ffe  storeli.w r2, -216(r30)
0003b4  e7427ffe  storeli.w r7, -212(r30)
0003b8  67038ffe  storeli.w r8, -208(r30)
0003bc  67439ffe  storeli.w r9, -204(r30)
0003c0  e703affe  storeli.w r10, -200(r30)
0003c4  e743dffe  storeli.w r13, -196(r30)
0003c8  9f000ffe  addli r1, r30, -256
0003cc  00a00000  mfence { lm }
0003d0  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
0003d4  eb500f01  load.d r[2:3], 16(r30)
0003d8  8ba05010  add.ul r[2:3], r[2:3], r[6:7]
0003dc  ab0200f0  lui r5, 983040
0003e0  97125800  or r5, r16, r5
0003e4  12124c02  vadd.f.mz.rn vr4{mr1}, r24, vr4
0003e8  12124c02  vadd.f.mz.rn vr4{mr1}, r24, vr4
0003ec  8e914102  vmul.f.mz.rn vr3{mr1}, vr3, vr4
0003f0  461c3fc2  vstore_mask16.mz vr3{mr1}, 1728(r30)
0003f4  00a00000  mfence { lm }
0003f8  ffb21001  s_lm2gm r5, r17, 0(r[2:3])
0003fc  e340effc  loadli.w r1,  -396(r30)
000400  00a00000  mfence { lm }
000404  8b911110  add.s r3, r3, r1
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
