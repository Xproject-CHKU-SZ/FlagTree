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
000078  9f493000  addli r19, zero, 28
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
0000e4  80510002  load_param_i r3, 0
0000e8  63412f00  loadli.w r2,  20(r30)
0000ec  e3002f00  loadli.w r1,  16(r30)
0000f0  63023f00  loadli.w r4,  24(r30)
0000f4  8b101120  mul.s r1, r2, r1
0000f8  0b924020  mul.s r4, r1, r4
0000fc  4b693204  ble.s r4, r3, 2648
000100  80300002  core_id r1
000104  00d10002  load_param_i r2, 1
000108  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00010c  9f150000  addli r11, zero, 1
000110  1f068ffd  addli r12, r30, -320
000114  1f038000  addli r6, zero, 64
000118  2b09803f  lui r18, 260096
00011c  2b0c4000  lui r24, 1024
000120  e74b2ffc  storeli.w r2, -324(r30)
000124  1bb55000  slli r10, r1, 5
000128  ab20373d  lui r1, 250738
00012c  2b414c3f  lui r2, 259268
000130  1b973071  ori r14, r1, 1811
000134  9b17a122  ori r15, r2, 554
000138  9f002000  addli r1, zero, 16
00013c  2b01807f  lui r2, 522240
000140  eaa00022  vor.u.mz vr1{mr1}, r1, vr0
000144  ab700000  lui r1, 7
000148  6a210122  vor.u.mz vr2{mr1}, r2, vr0
00014c  9b9bf0ff  ori r23, r1, 4095
000150  db210000  j 268
000154  fab30140  vextracti.s r7, 0(vr3)
000158  92310002  vadd.s.mz vr3{mr1}, zero, vr0
00015c  1f100000  addli zero, zero, 1
000160  7e0100e0  vmmov mr2, zero
000164  17200000  xor zero, zero, zero
000168  eaa13334  vor.u.mh vr3{mr2}, r7, vr3
00016c  9f230000  addli r7, zero, 2
000170  7e8103e0  vmmov mr2, r7
000174  9f430000  addli r7, zero, 4
000178  eaa13434  vor.u.mh vr3{mr2}, r9, vr3
00017c  7e8003e0  vmmov mr0, r7
000180  9f031000  addli r7, zero, 8
000184  ea213830  vor.u.mh vr3{mr0}, r16, vr3
000188  7e8003e0  vmmov mr0, r7
00018c  9f032000  addli r7, zero, 16
000190  eaa13630  vor.u.mh vr3{mr0}, r13, vr3
000194  7e8003e0  vmmov mr0, r7
000198  ea213130  vor.u.mh vr3{mr0}, r2, vr3
00019c  1f014000  addli r2, zero, 32
0001a0  7e0001e0  vmmov mr0, r2
0001a4  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0001a8  9f008000  addli r1, zero, 64
0001ac  7e8000e0  vmmov mr0, r1
0001b0  9f000001  addli r1, zero, 128
0001b4  ea213d30  vor.u.mh vr3{mr0}, r26, vr3
0001b8  7e8000e0  vmmov mr0, r1
0001bc  9f000002  addli r1, zero, 256
0001c0  eaa13c30  vor.u.mh vr3{mr0}, r25, vr3
0001c4  7e8000e0  vmmov mr0, r1
0001c8  9f000004  addli r1, zero, 512
0001cc  ea213b30  vor.u.mh vr3{mr0}, r22, vr3
0001d0  7e8000e0  vmmov mr0, r1
0001d4  9f000008  addli r1, zero, 1024
0001d8  ea213a30  vor.u.mh vr3{mr0}, r20, vr3
0001dc  7e8000e0  vmmov mr0, r1
0001e0  9f000010  addli r1, zero, 2048
0001e4  eaa13930  vor.u.mh vr3{mr0}, r19, vr3
0001e8  7e8000e0  vmmov mr0, r1
0001ec  9f000020  addli r1, zero, 4096
0001f0  eaa13830  vor.u.mh vr3{mr0}, r17, vr3
0001f4  7e8000e0  vmmov mr0, r1
0001f8  9f000040  addli r1, zero, 8192
0001fc  ea213430  vor.u.mh vr3{mr0}, r8, vr3
000200  7e8000e0  vmmov mr0, r1
000204  ab400000  lui r1, 4
000208  ea213330  vor.u.mh vr3{mr0}, r6, vr3
00020c  7e8000e0  vmmov mr0, r1
000210  ab800000  lui r1, 8
000214  2b0300f0  lui r6, 983040
000218  eaa13230  vor.u.mh vr3{mr0}, r5, vr3
00021c  7e8000e0  vmmov mr0, r1
000220  9f024600  addli r5, r12, 32
000224  eb508f00  load.d r[2:3], 8(r30)
000228  8ba0b011  add.ul r[2:3], r[2:3], r[28:29]
00022c  eaa13a30  vor.u.mh vr3{mr0}, r21, vr3
000230  62c23216  vscatter.mh vr3{mr3}, vr4{r5}
000234  9f028000  addli r5, zero, 64
000238  00a00000  mfence { lm }
00023c  97926200  or r5, r5, r6
000240  1f038000  addli r6, zero, 64
000244  ffb2c000  s_lm2gm r5, r12, 0(r[2:3])
000248  e3407ffd  loadli.w r1,  -324(r30)
00024c  00a00000  mfence { lm }
000250  8b911110  add.s r3, r3, r1
000254  3fa04100  blt.s r3, r4, 8
000258  db1f0100  j 2300
00025c  e3003f00  loadli.w r1,  24(r30)
000260  63412f00  loadli.w r2,  20(r30)
000264  ab0200f0  lui r5, 983040
000268  8b901130  div.s r1, r3, r1
00026c  8b902030  div.s r1, r1, r2
000270  9bb0b000  slli r1, r1, 11
000274  8b90a010  add.s r1, r1, r10
000278  b3900028  sext_int2long r[2:3], r1
00027c  97bdb002  sll.d r[28:29], r[2:3], r11
000280  97105300  or r1, r6, r5
000284  eb520f00  load.d r[6:7], 0(r30)
000288  8ba2b211  add.ul r[6:7], r[6:7], r[28:29]
00028c  ffa0c200  l_gm2lm r1, r12, 0(r[6:7])
000290  ab000040  lui r1, 262144
000294  00a00000  mfence { lm }
000298  c2118fc3  vload_mask16.mz vr3{mr1}, 1728(r30)
00029c  66423080  vmerge_l.hf vr4, vr0, vr3
0002a0  e64130a0  vmerge_h.hf vr3, vr0, vr3
0002a4  8a124702  vmul.f.mz.rn vr5{mr1}, r14, vr4
0002a8  0a133702  vmul.f.mz.rn vr6{mr1}, r14, vr3
0002ac  8e924202  vmul.f.mz.rn vr5{mr1}, vr5, vr4
0002b0  92334002  vadd.s.mz vr7{mr1}, zero, vr4
0002b4  0e133302  vmul.f.mz.rn vr6{mr1}, vr6, vr3
0002b8  a6937202  vmac.f.mz.rn vr7{mr1}, vr5, vr7
0002bc  92323002  vadd.s.mz vr5{mr1}, zero, vr3
0002c0  a6125302  vmac.f.mz.rn vr5{mr1}, vr6, vr5
0002c4  0a937702  vmul.f.mz.rn vr6{mr1}, r15, vr7
0002c8  8a925702  vmul.f.mz.rn vr5{mr1}, r15, vr5
0002cc  0a936002  vmul.f.mz.rn vr6{mr1}, r1, vr6
0002d0  8a925002  vmul.f.mz.rn vr5{mr1}, r1, vr5
0002d4  9f008ffe  addli r1, r30, -192
0002d8  1a136002  vsub.f.mz.rn vr6{mr1}, zero, vr6
0002dc  9a125002  vsub.f.mz.rn vr5{mr1}, zero, vr5
0002e0  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0002e4  00a00000  mfence { lm }
0002e8  e3428ffe  loadli.w r5,  -188(r30)
0002ec  e3008ffe  loadli.w r1,  -192(r30)
0002f0  63039ffe  loadli.w r6,  -184(r30)
0002f4  e3439ffe  loadli.w r7,  -180(r30)
0002f8  e304affe  loadli.w r9,  -176(r30)
0002fc  e346affe  loadli.w r13,  -172(r30)
000300  6308bffe  loadli.w r16,  -168(r30)
000304  e309cffe  loadli.w r19,  -160(r30)
000308  634acffe  loadli.w r20,  -156(r30)
00030c  e348bffe  loadli.w r17,  -164(r30)
000310  6301dffe  loadli.w r2,  -152(r30)
000314  6344dffe  loadli.w r8,  -148(r30)
000318  e30aeffe  loadli.w r21,  -144(r30)
00031c  634beffe  loadli.w r22,  -140(r30)
000320  e30cfffe  loadli.w r25,  -136(r30)
000324  634dfffe  loadli.w r26,  -132(r30)
000328  8f820200  exp.f.rn r5, r5
00032c  8f800000  exp.f.rn r1, r1
000330  0f030300  exp.f.rn r6, r6
000334  8f830300  exp.f.rn r7, r7
000338  8f840400  exp.f.rn r9, r9
00033c  8f860600  exp.f.rn r13, r13
000340  0f080800  exp.f.rn r16, r16
000344  8f890900  exp.f.rn r19, r19
000348  8f880800  exp.f.rn r17, r17
00034c  8be22211  add.f.rn r5, r5, r18
000350  8be02011  add.f.rn r1, r1, r18
000354  0b632311  add.f.rn r6, r6, r18
000358  8be32311  add.f.rn r7, r7, r18
00035c  8be42411  add.f.rn r9, r9, r18
000360  8be62611  add.f.rn r13, r13, r18
000364  0b682811  add.f.rn r16, r16, r18
000368  8be82811  add.f.rn r17, r17, r18
00036c  8f025918  div.f.rn r5, r18, r5
000370  8f001918  div.f.rn r1, r18, r1
000374  0f036918  div.f.rn r6, r18, r6
000378  8f037918  div.f.rn r7, r18, r7
00037c  8f049918  div.f.rn r9, r18, r9
000380  67405ffe  storeli.w r5, -252(r30)
000384  8be22911  add.f.rn r5, r19, r18
000388  67001ffe  storeli.w r1, -256(r30)
00038c  8f00d918  div.f.rn r1, r18, r13
000390  e7006ffe  storeli.w r6, -248(r30)
000394  0f030919  div.f.rn r6, r18, r16
000398  e7407ffe  storeli.w r7, -244(r30)
00039c  8f030a00  exp.f.rn r7, r20
0003a0  67019ffe  storeli.w r9, -240(r30)
0003a4  8f040d00  exp.f.rn r9, r26
0003a8  8f061919  div.f.rn r13, r18, r17
0003ac  8f025918  div.f.rn r5, r18, r5
0003b0  67411ffe  storeli.w r1, -236(r30)
0003b4  8f000100  exp.f.rn r1, r2
0003b8  0f010400  exp.f.rn r2, r8
0003bc  0f840c00  exp.f.rn r8, r25
0003c0  e7016ffe  storeli.w r6, -232(r30)
0003c4  0be32311  add.f.rn r6, r7, r18
0003c8  8f030b00  exp.f.rn r7, r22
0003cc  8be42411  add.f.rn r9, r9, r18
0003d0  e741dffe  storeli.w r13, -228(r30)
0003d4  67025ffe  storeli.w r5, -224(r30)
0003d8  8f820a00  exp.f.rn r5, r21
0003dc  0f036918  div.f.rn r6, r18, r6
0003e0  8f049918  div.f.rn r9, r18, r9
0003e4  8be02011  add.f.rn r1, r1, r18
0003e8  0b612111  add.f.rn r2, r2, r18
0003ec  8be32311  add.f.rn r7, r7, r18
0003f0  0b642411  add.f.rn r8, r8, r18
0003f4  8be22211  add.f.rn r5, r5, r18
0003f8  8f001918  div.f.rn r1, r18, r1
0003fc  0f012918  div.f.rn r2, r18, r2
000400  8f037918  div.f.rn r7, r18, r7
000404  0f048918  div.f.rn r8, r18, r8
000408  67426ffe  storeli.w r6, -220(r30)
00040c  e7439ffe  storeli.w r9, -196(r30)
000410  8f025918  div.f.rn r5, r18, r5
000414  e7021ffe  storeli.w r1, -216(r30)
000418  e7422ffe  storeli.w r2, -212(r30)
00041c  67437ffe  storeli.w r7, -204(r30)
000420  e7038ffe  storeli.w r8, -200(r30)
000424  9f000ffe  addli r1, r30, -256
000428  67035ffe  storeli.w r5, -208(r30)
00042c  00a00000  mfence { lm }
000430  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
000434  9f008fff  addli r1, r30, -64
000438  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
00043c  00a00000  mfence { lm }
000440  e3008fff  loadli.w r1,  -64(r30)
000444  63418fff  loadli.w r2,  -60(r30)
000448  e3029fff  loadli.w r5,  -56(r30)
00044c  e303afff  loadli.w r7,  -48(r30)
000450  6344afff  loadli.w r8,  -44(r30)
000454  e304bfff  loadli.w r9,  -40(r30)
000458  e346bfff  loadli.w r13,  -36(r30)
00045c  6308cfff  loadli.w r16,  -32(r30)
000460  e348cfff  loadli.w r17,  -28(r30)
000464  e309dfff  loadli.w r19,  -24(r30)
000468  634befff  loadli.w r22,  -12(r30)
00046c  634adfff  loadli.w r20,  -20(r30)
000470  e30aefff  loadli.w r21,  -16(r30)
000474  e30cffff  loadli.w r25,  -8(r30)
000478  634dffff  loadli.w r26,  -4(r30)
00047c  8e126202  vmul.f.mz.rn vr5{mr1}, vr4, vr6
000480  0f010100  exp.f.rn r2, r2
000484  8f800000  exp.f.rn r1, r1
000488  8f820200  exp.f.rn r5, r5
00048c  8f830300  exp.f.rn r7, r7
000490  6eb250c2  vsrl.s.mz vr4{mr1}, vr1, vr5
000494  669302c0  vabs.f vr6, vr5
000498  0be32011  add.f.rn r6, r1, r18
00049c  0b612111  add.f.rn r2, r2, r18
0004a0  e3409fff  loadli.w r1,  -52(r30)
0004a4  8be22211  add.f.rn r5, r5, r18
0004a8  6ab24502  vand.s.mz vr4{mr1}, r11, vr4
0004ac  76216142  vlt.u.mz mr2{mr1}, vr2, vr6
0004b0  6a335c22  vor.s.mz vr6{mr1}, r24, vr5
0004b4  8f800000  exp.f.rn r1, r1
0004b8  16b24202  vadd.s.mz vr4{mr1}, vr5, vr4
0004bc  0f036918  div.f.rn r6, r18, r6
0004c0  0f012918  div.f.rn r2, r18, r2
0004c4  8f025918  div.f.rn r5, r18, r5
0004c8  12b24b02  vadd.s.mz vr4{mr1}, r23, vr4
0004cc  8be02011  add.f.rn r1, r1, r18
0004d0  67086ffe  storeli.w r6, -128(r30)
0004d4  0be32311  add.f.rn r6, r7, r18
0004d8  8f830400  exp.f.rn r7, r9
0004dc  67482ffe  storeli.w r2, -124(r30)
0004e0  0f010400  exp.f.rn r2, r8
0004e4  0f840600  exp.f.rn r8, r13
0004e8  e7085ffe  storeli.w r5, -120(r30)
0004ec  8f020800  exp.f.rn r5, r16
0004f0  8f840800  exp.f.rn r9, r17
0004f4  8f001918  div.f.rn r1, r18, r1
0004f8  0f036918  div.f.rn r6, r18, r6
0004fc  0b612111  add.f.rn r2, r2, r18
000500  8be32311  add.f.rn r7, r7, r18
000504  8be22211  add.f.rn r5, r5, r18
000508  0b642411  add.f.rn r8, r8, r18
00050c  e7481ffe  storeli.w r1, -116(r30)
000510  8f002918  div.f.rn r1, r18, r2
000514  0f017918  div.f.rn r2, r18, r7
000518  8be32411  add.f.rn r7, r9, r18
00051c  67096ffe  storeli.w r6, -112(r30)
000520  0f038918  div.f.rn r6, r18, r8
000524  8f025918  div.f.rn r5, r18, r5
000528  0f840900  exp.f.rn r8, r19
00052c  e7092ffe  storeli.w r2, -104(r30)
000530  0f017918  div.f.rn r2, r18, r7
000534  8f030b00  exp.f.rn r7, r22
000538  67491ffe  storeli.w r1, -108(r30)
00053c  8f000a00  exp.f.rn r1, r20
000540  e7496ffe  storeli.w r6, -100(r30)
000544  0f830a00  exp.f.rn r6, r21
000548  670a5ffe  storeli.w r5, -96(r30)
00054c  8b622411  add.f.rn r5, r8, r18
000550  0f840c00  exp.f.rn r8, r25
000554  8f025918  div.f.rn r5, r18, r5
000558  674a2ffe  storeli.w r2, -92(r30)
00055c  0f010d00  exp.f.rn r2, r26
000560  8be32311  add.f.rn r7, r7, r18
000564  8be02011  add.f.rn r1, r1, r18
000568  0b632311  add.f.rn r6, r6, r18
00056c  0b642411  add.f.rn r8, r8, r18
000570  8f037918  div.f.rn r7, r18, r7
000574  8f001918  div.f.rn r1, r18, r1
000578  0f036918  div.f.rn r6, r18, r6
00057c  e70a5ffe  storeli.w r5, -88(r30)
000580  8f028918  div.f.rn r5, r18, r8
000584  0b612111  add.f.rn r2, r2, r18
000588  0f012918  div.f.rn r2, r18, r2
00058c  674b7ffe  storeli.w r7, -76(r30)
000590  fe0301a0  vmmov r7, mr2
000594  e74a1ffe  storeli.w r1, -84(r30)
000598  670b6ffe  storeli.w r6, -80(r30)
00059c  e70b5ffe  storeli.w r5, -72(r30)
0005a0  9bc0f300  srli r1, r7, 15
0005a4  9b801000  andi r1, r1, 1
0005a8  e74b2ffe  storeli.w r2, -68(r30)
0005ac  00a00000  mfence { lm }
0005b0  3bb00000  bneq r1, zero, 12
0005b4  fa3af240  vextracti.s r21, 15(vr4)
0005b8  5b010000  j 8
0005bc  fa3af340  vextracti.s r21, 15(vr6)
0005c0  9f000fff  addli r1, r30, -128
0005c4  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
0005c8  9bc0e300  srli r1, r7, 14
0005cc  9b801000  andi r1, r1, 1
0005d0  3bb00000  bneq r1, zero, 12
0005d4  fa32e240  vextracti.s r5, 14(vr4)
0005d8  5b010000  j 8
0005dc  fa32e340  vextracti.s r5, 14(vr6)
0005e0  9bc0d300  srli r1, r7, 13
0005e4  9b801000  andi r1, r1, 1
0005e8  3bb00000  bneq r1, zero, 12
0005ec  7a33d240  vextracti.s r6, 13(vr4)
0005f0  5b010000  j 8
0005f4  7a33d340  vextracti.s r6, 13(vr6)
0005f8  9bc0c300  srli r1, r7, 12
0005fc  9b801000  andi r1, r1, 1
000600  3bb00000  bneq r1, zero, 12
000604  7a34c240  vextracti.s r8, 12(vr4)
000608  5b010000  j 8
00060c  7a34c340  vextracti.s r8, 12(vr6)
000610  9bc0b300  srli r1, r7, 11
000614  9b801000  andi r1, r1, 1
000618  3bb00000  bneq r1, zero, 12
00061c  fa38b240  vextracti.s r17, 11(vr4)
000620  5b010000  j 8
000624  fa38b340  vextracti.s r17, 11(vr6)
000628  9bc0a300  srli r1, r7, 10
00062c  9b801000  andi r1, r1, 1
000630  3bb00000  bneq r1, zero, 12
000634  fa39a240  vextracti.s r19, 10(vr4)
000638  5b010000  j 8
00063c  fa39a340  vextracti.s r19, 10(vr6)
000640  9bc09300  srli r1, r7, 9
000644  9b801000  andi r1, r1, 1
000648  3bb00000  bneq r1, zero, 12
00064c  7a3a9240  vextracti.s r20, 9(vr4)
000650  5b010000  j 8
000654  7a3a9340  vextracti.s r20, 9(vr6)
000658  9bc08300  srli r1, r7, 8
00065c  9b801000  andi r1, r1, 1
000660  3bb00000  bneq r1, zero, 12
000664  7a3b8240  vextracti.s r22, 8(vr4)
000668  5b010000  j 8
00066c  7a3b8340  vextracti.s r22, 8(vr6)
000670  9bc07300  srli r1, r7, 7
000674  9b801000  andi r1, r1, 1
000678  3bb00000  bneq r1, zero, 12
00067c  fa3c7240  vextracti.s r25, 7(vr4)
000680  5b010000  j 8
000684  fa3c7340  vextracti.s r25, 7(vr6)
000688  9bc06300  srli r1, r7, 6
00068c  9b801000  andi r1, r1, 1
000690  3bb00000  bneq r1, zero, 12
000694  7a3d6240  vextracti.s r26, 6(vr4)
000698  5b010000  j 8
00069c  7a3d6340  vextracti.s r26, 6(vr6)
0006a0  9bc05300  srli r1, r7, 5
0006a4  9b801000  andi r1, r1, 1
0006a8  3bb00000  bneq r1, zero, 12
0006ac  fa305240  vextracti.s r1, 5(vr4)
0006b0  5b010000  j 8
0006b4  fa305340  vextracti.s r1, 5(vr6)
0006b8  1bc14300  srli r2, r7, 4
0006bc  1b011100  andi r2, r2, 1
0006c0  3b300100  bneq r2, zero, 12
0006c4  7a314240  vextracti.s r2, 4(vr4)
0006c8  5b010000  j 8
0006cc  7a314340  vextracti.s r2, 4(vr6)
0006d0  9bc43300  srli r9, r7, 3
0006d4  9b841400  andi r9, r9, 1
0006d8  3bb00400  bneq r9, zero, 12
0006dc  fa363240  vextracti.s r13, 3(vr4)
0006e0  5b010000  j 8
0006e4  fa363340  vextracti.s r13, 3(vr6)
0006e8  9bc42300  srli r9, r7, 2
0006ec  9b841400  andi r9, r9, 1
0006f0  3bb00400  bneq r9, zero, 12
0006f4  7a382240  vextracti.s r16, 2(vr4)
0006f8  5b010000  j 8
0006fc  7a382340  vextracti.s r16, 2(vr6)
000700  9bc41300  srli r9, r7, 1
000704  9b841400  andi r9, r9, 1
000708  3be00400  bneq r9, zero, 24
00070c  fa341240  vextracti.s r9, 1(vr4)
000710  9b831300  andi r7, r7, 1
000714  37e00300  beq r7, zero, 24
000718  fa330340  vextracti.s r7, 0(vr6)
00071c  db020000  j 20
000720  fa341340  vextracti.s r9, 1(vr6)
000724  9b831300  andi r7, r7, 1
000728  bbcf03fe  bneq r7, zero, -16
00072c  fa330240  vextracti.s r7, 0(vr4)
000730  12330002  vadd.s.mz vr6{mr1}, zero, vr0
000734  1f100000  addli zero, zero, 1
000738  8e925102  vmul.f.mz.rn vr5{mr1}, vr3, vr5
00073c  7e0100e0  vmmov mr2, zero
000740  17200000  xor zero, zero, zero
000744  6aa36334  vor.u.mh vr6{mr2}, r7, vr6
000748  9f230000  addli r7, zero, 2
00074c  12320002  vadd.s.mz vr4{mr1}, zero, vr0
000750  eeb150c2  vsrl.s.mz vr3{mr1}, vr1, vr5
000754  e69302c0  vabs.f vr7, vr5
000758  fe8103e0  vmmov mr3, r7
00075c  9f430000  addli r7, zero, 4
000760  6aa36436  vor.u.mh vr6{mr3}, r9, vr6
000764  7e8003e0  vmmov mr0, r7
000768  9f031000  addli r7, zero, 8
00076c  eab13502  vand.s.mz vr3{mr1}, r11, vr3
000770  6a236830  vor.u.mh vr6{mr0}, r16, vr6
000774  7e8003e0  vmmov mr0, r7
000778  9f032000  addli r7, zero, 16
00077c  96b13202  vadd.s.mz vr3{mr1}, vr5, vr3
000780  ea325c22  vor.s.mz vr5{mr1}, r24, vr5
000784  6aa36630  vor.u.mh vr6{mr0}, r13, vr6
000788  7e8003e0  vmmov mr0, r7
00078c  92b13b02  vadd.s.mz vr3{mr1}, r23, vr3
000790  6a236130  vor.u.mh vr6{mr0}, r2, vr6
000794  1f014000  addli r2, zero, 32
000798  7e0001e0  vmmov mr0, r2
00079c  1f011000  addli r2, zero, 8
0007a0  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
0007a4  9f008000  addli r1, zero, 64
0007a8  7e8000e0  vmmov mr0, r1
0007ac  9f000001  addli r1, zero, 128
0007b0  6a236d30  vor.u.mh vr6{mr0}, r26, vr6
0007b4  7e8000e0  vmmov mr0, r1
0007b8  9f000002  addli r1, zero, 256
0007bc  6aa36c30  vor.u.mh vr6{mr0}, r25, vr6
0007c0  7e8000e0  vmmov mr0, r1
0007c4  9f000004  addli r1, zero, 512
0007c8  6a236b30  vor.u.mh vr6{mr0}, r22, vr6
0007cc  7e8000e0  vmmov mr0, r1
0007d0  9f000008  addli r1, zero, 1024
0007d4  6a236a30  vor.u.mh vr6{mr0}, r20, vr6
0007d8  7e8000e0  vmmov mr0, r1
0007dc  9f000010  addli r1, zero, 2048
0007e0  6aa36930  vor.u.mh vr6{mr0}, r19, vr6
0007e4  7e8000e0  vmmov mr0, r1
0007e8  9f000020  addli r1, zero, 4096
0007ec  6aa36830  vor.u.mh vr6{mr0}, r17, vr6
0007f0  7e8000e0  vmmov mr0, r1
0007f4  9f000040  addli r1, zero, 8192
0007f8  6a236430  vor.u.mh vr6{mr0}, r8, vr6
0007fc  7e8000e0  vmmov mr0, r1
000800  ab400000  lui r1, 4
000804  6a236330  vor.u.mh vr6{mr0}, r6, vr6
000808  7e8000e0  vmmov mr0, r1
00080c  ab800000  lui r1, 8
000810  6aa36230  vor.u.mh vr6{mr0}, r5, vr6
000814  7e8000e0  vmmov mr0, r1
000818  9f400000  addli r1, zero, 4
00081c  6aa36a30  vor.u.mh vr6{mr0}, r21, vr6
000820  6a424034  vor.hf.mh vr4{mr2}, zero, vr4
000824  7e8100e0  vmmov mr2, r1
000828  9f200000  addli r1, zero, 2
00082c  6a424036  vor.hf.mh vr4{mr3}, zero, vr4
000830  6a424034  vor.hf.mh vr4{mr2}, zero, vr4
000834  7e0101e0  vmmov mr2, r2
000838  1f014000  addli r2, zero, 32
00083c  6ac24034  vor.hf.mh vr4{mr2}, r1, vr4
000840  9f002000  addli r1, zero, 16
000844  7e8100e0  vmmov mr2, r1
000848  9f400000  addli r1, zero, 4
00084c  6a424034  vor.hf.mh vr4{mr2}, zero, vr4
000850  7e0101e0  vmmov mr2, r2
000854  1f010001  addli r2, zero, 128
000858  6ac24034  vor.hf.mh vr4{mr2}, r1, vr4
00085c  9f008000  addli r1, zero, 64
000860  7e8100e0  vmmov mr2, r1
000864  9f600000  addli r1, zero, 6
000868  6a424034  vor.hf.mh vr4{mr2}, zero, vr4
00086c  7e0101e0  vmmov mr2, r2
000870  1f010004  addli r2, zero, 512
000874  6ac24034  vor.hf.mh vr4{mr2}, r1, vr4
000878  9f000002  addli r1, zero, 256
00087c  7e8100e0  vmmov mr2, r1
000880  9f001000  addli r1, zero, 8
000884  6a424034  vor.hf.mh vr4{mr2}, zero, vr4
000888  7e0101e0  vmmov mr2, r2
00088c  1f010010  addli r2, zero, 2048
000890  6ac24034  vor.hf.mh vr4{mr2}, r1, vr4
000894  9f000008  addli r1, zero, 1024
000898  7e8100e0  vmmov mr2, r1
00089c  9f201000  addli r1, zero, 10
0008a0  6a424034  vor.hf.mh vr4{mr2}, zero, vr4
0008a4  7e0101e0  vmmov mr2, r2
0008a8  1f010040  addli r2, zero, 8192
0008ac  6ac24034  vor.hf.mh vr4{mr2}, r1, vr4
0008b0  9f000020  addli r1, zero, 4096
0008b4  7e8100e0  vmmov mr2, r1
0008b8  9f401000  addli r1, zero, 12
0008bc  6a424034  vor.hf.mh vr4{mr2}, zero, vr4
0008c0  7e0101e0  vmmov mr2, r2
0008c4  2b010200  lui r2, 32
0008c8  6ac24034  vor.hf.mh vr4{mr2}, r1, vr4
0008cc  ab400000  lui r1, 4
0008d0  7e8100e0  vmmov mr2, r1
0008d4  9f601000  addli r1, zero, 14
0008d8  6a424034  vor.hf.mh vr4{mr2}, zero, vr4
0008dc  76217142  vlt.u.mz mr2{mr1}, vr2, vr7
0008e0  fe0301a0  vmmov r7, mr2
0008e4  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
0008e8  ab000100  lui r1, 16
0008ec  7e8000e0  vmmov mr0, r1
0008f0  9f002000  addli r1, zero, 16
0008f4  6a424030  vor.hf.mh vr4{mr0}, zero, vr4
0008f8  7e0001e0  vmmov mr0, r2
0008fc  2b010800  lui r2, 128
000900  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
000904  ab000400  lui r1, 64
000908  7e8000e0  vmmov mr0, r1
00090c  9f202000  addli r1, zero, 18
000910  6a424030  vor.hf.mh vr4{mr0}, zero, vr4
000914  7e0001e0  vmmov mr0, r2
000918  2b012000  lui r2, 512
00091c  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
000920  ab001000  lui r1, 256
000924  7e8000e0  vmmov mr0, r1
000928  9f402000  addli r1, zero, 20
00092c  6a424030  vor.hf.mh vr4{mr0}, zero, vr4
000930  7e0001e0  vmmov mr0, r2
000934  2b018000  lui r2, 2048
000938  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
00093c  ab004000  lui r1, 1024
000940  7e8000e0  vmmov mr0, r1
000944  9f602000  addli r1, zero, 22
000948  6a424030  vor.hf.mh vr4{mr0}, zero, vr4
00094c  7e0001e0  vmmov mr0, r2
000950  2b010002  lui r2, 8192
000954  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
000958  ab000001  lui r1, 4096
00095c  7e8000e0  vmmov mr0, r1
000960  9f003000  addli r1, zero, 24
000964  6a424030  vor.hf.mh vr4{mr0}, zero, vr4
000968  7e0001e0  vmmov mr0, r2
00096c  2b010008  lui r2, 32768
000970  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
000974  ab000004  lui r1, 16384
000978  7e8000e0  vmmov mr0, r1
00097c  9f203000  addli r1, zero, 26
000980  6a424030  vor.hf.mh vr4{mr0}, zero, vr4
000984  7e0001e0  vmmov mr0, r2
000988  2b010020  lui r2, 131072
00098c  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
000990  ab000010  lui r1, 65536
000994  7e8000e0  vmmov mr0, r1
000998  9f403000  addli r1, zero, 28
00099c  6a424030  vor.hf.mh vr4{mr0}, zero, vr4
0009a0  7e0001e0  vmmov mr0, r2
0009a4  2b010080  lui r2, 524288
0009a8  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
0009ac  ab000040  lui r1, 262144
0009b0  7e8000e0  vmmov mr0, r1
0009b4  9f603000  addli r1, zero, 30
0009b8  6a424030  vor.hf.mh vr4{mr0}, zero, vr4
0009bc  7e0001e0  vmmov mr0, r2
0009c0  2ba1aaaa  lui r2, 699050
0009c4  1f215115  addli r2, r2, 2730
0009c8  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
0009cc  9bc0f300  srli r1, r7, 15
0009d0  fe0101e0  vmmov mr3, r2
0009d4  9b801000  andi r1, r1, 1
0009d8  62426616  vscatter.mh vr6{mr3}, vr4{r12}
0009dc  3bb00000  bneq r1, zero, 12
0009e0  fabaf140  vextracti.s r21, 15(vr3)
0009e4  5b010000  j 8
0009e8  fabaf240  vextracti.s r21, 15(vr5)
0009ec  9bc0e300  srli r1, r7, 14
0009f0  9b801000  andi r1, r1, 1
0009f4  3bb00000  bneq r1, zero, 12
0009f8  fab2e140  vextracti.s r5, 14(vr3)
0009fc  5b010000  j 8
000a00  fab2e240  vextracti.s r5, 14(vr5)
000a04  9bc0d300  srli r1, r7, 13
000a08  9b801000  andi r1, r1, 1
000a0c  3bb00000  bneq r1, zero, 12
000a10  7ab3d140  vextracti.s r6, 13(vr3)
000a14  5b010000  j 8
000a18  7ab3d240  vextracti.s r6, 13(vr5)
000a1c  9bc0c300  srli r1, r7, 12
000a20  9b801000  andi r1, r1, 1
000a24  3bb00000  bneq r1, zero, 12
000a28  7ab4c140  vextracti.s r8, 12(vr3)
000a2c  5b010000  j 8
000a30  7ab4c240  vextracti.s r8, 12(vr5)
000a34  9bc0b300  srli r1, r7, 11
000a38  9b801000  andi r1, r1, 1
000a3c  3bb00000  bneq r1, zero, 12
000a40  fab8b140  vextracti.s r17, 11(vr3)
000a44  5b010000  j 8
000a48  fab8b240  vextracti.s r17, 11(vr5)
000a4c  9bc0a300  srli r1, r7, 10
000a50  9b801000  andi r1, r1, 1
000a54  3bb00000  bneq r1, zero, 12
000a58  fab9a140  vextracti.s r19, 10(vr3)
000a5c  5b010000  j 8
000a60  fab9a240  vextracti.s r19, 10(vr5)
000a64  9bc09300  srli r1, r7, 9
000a68  9b801000  andi r1, r1, 1
000a6c  3bb00000  bneq r1, zero, 12
000a70  7aba9140  vextracti.s r20, 9(vr3)
000a74  5b010000  j 8
000a78  7aba9240  vextracti.s r20, 9(vr5)
000a7c  9bc08300  srli r1, r7, 8
000a80  9b801000  andi r1, r1, 1
000a84  3bb00000  bneq r1, zero, 12
000a88  7abb8140  vextracti.s r22, 8(vr3)
000a8c  5b010000  j 8
000a90  7abb8240  vextracti.s r22, 8(vr5)
000a94  9bc07300  srli r1, r7, 7
000a98  9b801000  andi r1, r1, 1
000a9c  3bb00000  bneq r1, zero, 12
000aa0  fabc7140  vextracti.s r25, 7(vr3)
000aa4  5b010000  j 8
000aa8  fabc7240  vextracti.s r25, 7(vr5)
000aac  9bc06300  srli r1, r7, 6
000ab0  9b801000  andi r1, r1, 1
000ab4  3bb00000  bneq r1, zero, 12
000ab8  7abd6140  vextracti.s r26, 6(vr3)
000abc  5b010000  j 8
000ac0  7abd6240  vextracti.s r26, 6(vr5)
000ac4  9bc05300  srli r1, r7, 5
000ac8  9b801000  andi r1, r1, 1
000acc  3bb00000  bneq r1, zero, 12
000ad0  fab05140  vextracti.s r1, 5(vr3)
000ad4  5b010000  j 8
000ad8  fab05240  vextracti.s r1, 5(vr5)
000adc  1bc14300  srli r2, r7, 4
000ae0  1b011100  andi r2, r2, 1
000ae4  3b300100  bneq r2, zero, 12
000ae8  7ab14140  vextracti.s r2, 4(vr3)
000aec  5b010000  j 8
000af0  7ab14240  vextracti.s r2, 4(vr5)
000af4  9bc43300  srli r9, r7, 3
000af8  9b841400  andi r9, r9, 1
000afc  3bb00400  bneq r9, zero, 12
000b00  fab63140  vextracti.s r13, 3(vr3)
000b04  5b010000  j 8
000b08  fab63240  vextracti.s r13, 3(vr5)
000b0c  9bc42300  srli r9, r7, 2
000b10  9b841400  andi r9, r9, 1
000b14  3bb00400  bneq r9, zero, 12
000b18  7ab82140  vextracti.s r16, 2(vr3)
000b1c  5b010000  j 8
000b20  7ab82240  vextracti.s r16, 2(vr5)
000b24  9bc41300  srli r9, r7, 1
000b28  9b841400  andi r9, r9, 1
000b2c  3bd00400  bneq r9, zero, 20
000b30  fab41140  vextracti.s r9, 1(vr3)
000b34  9b831300  andi r7, r7, 1
000b38  37f803fa  beq r7, zero, -2532
000b3c  5b020000  j 16
000b40  fab41240  vextracti.s r9, 1(vr5)
000b44  9b831300  andi r7, r7, 1
000b48  37b803fa  beq r7, zero, -2548
000b4c  fab30240  vextracti.s r7, 0(vr5)
000b50  5bc1feff  j -2552
000b54  9f0e0ffd  addli sp, r30, -384
000b58  9f8e0e03  addli sp, sp, 384
000b5c  00a00300  mfence { lm, sm, gm }
000b60  00100000  exit
000b64  00100000  exit
000b68  00100000  exit
000b6c  00100000  exit
000b70  00100000  exit
000b74  00100000  exit
000b78  00100000  exit
000b7c  00100000  exit
000b80  00100000  exit
000b84  00100000  exit
000b88  00100000  exit
000b8c  00100000  exit
000b90  00100000  exit
000b94  00100000  exit
000b98  00100000  exit
000b9c  00100000  exit
000ba0  00100000  exit
000ba4  00100000  exit
000ba8  00100000  exit
000bac  00100000  exit
000bb0  00100000  exit
000bb4  00100000  exit
000bb8  00100000  exit
000bbc  00100000  exit
000bc0  00100000  exit
000bc4  00100000  exit
000bc8  00100000  exit
000bcc  00100000  exit
000bd0  00100000  exit
000bd4  00100000  exit
000bd8  00100000  exit
000bdc  00100000  exit
000be0  00100000  exit
000be4  00100000  exit
000be8  00100000  exit
000bec  00100000  exit
000bf0  00100000  exit
000bf4  00100000  exit
000bf8  00100000  exit
000bfc  00100000  exit
000c00  00100000  exit
000c04  00100000  exit
000c08  00100000  exit
000c0c  00100000  exit
000c10  00100000  exit
000c14  00100000  exit
000c18  00100000  exit
000c1c  00100000  exit
000c20  00100000  exit
000c24  00100000  exit
000c28  00100000  exit
000c2c  00100000  exit
000c30  00100000  exit
000c34  00100000  exit
000c38  00100000  exit
000c3c  00100000  exit
000c40  00100000  exit
000c44  00100000  exit
000c48  00100000  exit
000c4c  00100000  exit
000c50  00100000  exit
000c54  00100000  exit
000c58  00100000  exit
000c5c  00100000  exit
000c60  00100000  exit
000c64  00100000  exit
000c68  00100000  exit
000c6c  00100000  exit
000c70  00100000  exit
000c74  00100000  exit
000c78  00100000  exit
000c7c  00100000  exit
000c80  00100000  exit
000c84  00100000  exit
000c88  00100000  exit
000c8c  00100000  exit
000c90  00100000  exit
000c94  00100000  exit
000c98  00100000  exit
000c9c  00100000  exit
000ca0  00100000  exit
000ca4  00100000  exit
000ca8  00100000  exit
000cac  00100000  exit
000cb0  00100000  exit
000cb4  00100000  exit
000cb8  00100000  exit
000cbc  00100000  exit
000cc0  00100000  exit
000cc4  00100000  exit
000cc8  00100000  exit
000ccc  00100000  exit
000cd0  00100000  exit
000cd4  00100000  exit
000cd8  00100000  exit
000cdc  00100000  exit
000ce0  00100000  exit
000ce4  00100000  exit
000ce8  00100000  exit
000cec  00100000  exit
000cf0  00100000  exit
000cf4  00100000  exit
000cf8  00100000  exit
000cfc  00100000  exit
000d00  00100000  exit
000d04  00100000  exit
000d08  00100000  exit
000d0c  00100000  exit
000d10  00100000  exit
000d14  00100000  exit
000d18  00100000  exit
000d1c  00100000  exit
000d20  00100000  exit
000d24  00100000  exit
000d28  00100000  exit
000d2c  00100000  exit
000d30  00100000  exit
000d34  00100000  exit
000d38  00100000  exit
000d3c  00100000  exit
000d40  00100000  exit
000d44  00100000  exit
000d48  00100000  exit
000d4c  00100000  exit
000d50  00100000  exit
000d54  00100000  exit
000d58  00100000  exit
000d5c  00100000  exit
000d60  00100000  exit
000d64  00100000  exit
000d68  00100000  exit
000d6c  00100000  exit
000d70  00100000  exit
000d74  00100000  exit
000d78  00100000  exit
000d7c  00100000  exit
000d80  00100000  exit
000d84  00100000  exit
000d88  00100000  exit
000d8c  00100000  exit
000d90  00100000  exit
000d94  00100000  exit
000d98  00100000  exit
000d9c  00100000  exit
000da0  00100000  exit
