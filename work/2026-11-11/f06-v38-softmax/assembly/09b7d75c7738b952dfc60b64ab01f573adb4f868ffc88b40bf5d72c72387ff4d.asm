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
0000dc  9f8e0efc  addli sp, sp, -512
0000e0  1f8f8e03  addli r30, sp, 448
0000e4  e34b2f00  loadli.w r23,  20(r30)
0000e8  e3012f00  loadli.w r3,  16(r30)
0000ec  630c3f00  loadli.w r24,  24(r30)
0000f0  0b923b20  mul.s r4, r23, r3
0000f4  80510002  load_param_i r3, 0
0000f8  0b128221  mul.s r4, r4, r24
0000fc  4b7e3200  ble.s r4, r3, 924
000100  80320002  core_id r5
000104  2b434c3f  lui r6, 259268
000108  80d40002  load_param_i r9, 1
00010c  2b080040  lui r16, 262144
000110  2b09803f  lui r18, 260096
000114  1bb55200  slli r10, r5, 5
000118  ab22373d  lui r5, 250738
00011c  9b17a322  ori r15, r6, 554
000120  1b973271  ori r14, r5, 1811
000124  8b928131  div.s r5, r3, r24
000128  9f200000  addli r1, zero, 2
00012c  8b919110  add.s r3, r3, r9
000130  8b927231  div.s r5, r5, r23
000134  9bb2b200  slli r5, r5, 11
000138  8b92a210  add.s r5, r5, r10
00013c  b39c0228  sext_int2long r[26:27], r5
000140  ab0200f0  lui r5, 983040
000144  17b31c02  sll.d r[7:8], r[26:27], r1
000148  9f000001  addli r1, zero, 128
00014c  97925000  or r5, r1, r5
000150  eb500f00  load.d r[2:3], 0(r30)
000154  0ba36010  add.ul r[7:8], r[2:3], r[7:8]
000158  9f008ffc  addli r1, r30, -448
00015c  ff221300  l_gm2lm r5, r1, 0(r[7:8])
000160  9f008ffe  addli r1, r30, -192
000164  00a00000  mfence { lm }
000168  42108fc2  vload_mask16.mz vr0{mr1}, 1600(r30)
00016c  c2100fc3  vload_mask16.mz vr1{mr1}, 1664(r30)
000170  0a111702  vmul.f.mz.rn vr2{mr1}, r14, vr1
000174  0a120702  vmul.f.mz.rn vr4{mr1}, r14, vr0
000178  92311002  vadd.s.mz vr3{mr1}, zero, vr1
00017c  0e912002  vmul.f.mz.rn vr2{mr1}, vr1, vr2
000180  92320002  vadd.s.mz vr5{mr1}, zero, vr0
000184  0e124002  vmul.f.mz.rn vr4{mr1}, vr0, vr4
000188  a6113102  vmac.f.mz.rn vr3{mr1}, vr2, vr3
00018c  0a913702  vmul.f.mz.rn vr2{mr1}, r15, vr3
000190  a6125202  vmac.f.mz.rn vr5{mr1}, vr4, vr5
000194  8a915702  vmul.f.mz.rn vr3{mr1}, r15, vr5
000198  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
00019c  8a113802  vmul.f.mz.rn vr3{mr1}, r16, vr3
0001a0  1a112002  vsub.f.mz.rn vr2{mr1}, zero, vr2
0001a4  9a113002  vsub.f.mz.rn vr3{mr1}, zero, vr3
0001a8  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
0001ac  00a00000  mfence { lm }
0001b0  e3029ffe  loadli.w r5,  -184(r30)
0001b4  63439ffe  loadli.w r6,  -180(r30)
0001b8  6346affe  loadli.w r12,  -172(r30)
0001bc  e305affe  loadli.w r11,  -176(r30)
0001c0  e309cffe  loadli.w r19,  -160(r30)
0001c4  e30d8ffe  loadli.w r27,  -192(r30)
0001c8  634e8ffe  loadli.w r28,  -188(r30)
0001cc  e306bffe  loadli.w r13,  -168(r30)
0001d0  e348bffe  loadli.w r17,  -164(r30)
0001d4  e340cffe  loadli.w r1,  -156(r30)
0001d8  6301fffe  loadli.w r2,  -136(r30)
0001dc  e303dffe  loadli.w r7,  -152(r30)
0001e0  6344dffe  loadli.w r8,  -148(r30)
0001e4  630aeffe  loadli.w r20,  -144(r30)
0001e8  e34aeffe  loadli.w r21,  -140(r30)
0001ec  634bfffe  loadli.w r22,  -132(r30)
0001f0  8f820200  exp.f.rn r5, r5
0001f4  0f030300  exp.f.rn r6, r6
0001f8  0f060600  exp.f.rn r12, r12
0001fc  8f850500  exp.f.rn r11, r11
000200  8f890900  exp.f.rn r19, r19
000204  8f8d0d00  exp.f.rn r27, r27
000208  0f0e0e00  exp.f.rn r28, r28
00020c  8f860600  exp.f.rn r13, r13
000210  8f880800  exp.f.rn r17, r17
000214  8f800000  exp.f.rn r1, r1
000218  0f010100  exp.f.rn r2, r2
00021c  8be22211  add.f.rn r5, r5, r18
000220  0b632311  add.f.rn r6, r6, r18
000224  0b662611  add.f.rn r12, r12, r18
000228  8be52511  add.f.rn r11, r11, r18
00022c  8bed2d11  add.f.rn r27, r27, r18
000230  0b6e2e11  add.f.rn r28, r28, r18
000234  8be62611  add.f.rn r13, r13, r18
000238  8be82811  add.f.rn r17, r17, r18
00023c  8be02011  add.f.rn r1, r1, r18
000240  0b612111  add.f.rn r2, r2, r18
000244  8f025918  div.f.rn r5, r18, r5
000248  0f036918  div.f.rn r6, r18, r6
00024c  8f05b918  div.f.rn r11, r18, r11
000250  8f0db919  div.f.rn r27, r18, r27
000254  0f0ec919  div.f.rn r28, r18, r28
000258  8f06d918  div.f.rn r13, r18, r13
00025c  8f081919  div.f.rn r17, r18, r17
000260  8f001918  div.f.rn r1, r18, r1
000264  0f012918  div.f.rn r2, r18, r2
000268  e7005ffe  storeli.w r5, -248(r30)
00026c  8f02c918  div.f.rn r5, r18, r12
000270  0be62911  add.f.rn r12, r19, r18
000274  e7406ffe  storeli.w r6, -244(r30)
000278  6701bffe  storeli.w r11, -240(r30)
00027c  8f050b00  exp.f.rn r11, r22
000280  67421ffe  storeli.w r1, -220(r30)
000284  6700bfff  storeli.w r27, -256(r30)
000288  6740cfff  storeli.w r28, -252(r30)
00028c  e701dffe  storeli.w r13, -232(r30)
000290  e7411fff  storeli.w r17, -228(r30)
000294  e7032ffe  storeli.w r2, -200(r30)
000298  9f000ffe  addli r1, r30, -256
00029c  0f03c918  div.f.rn r6, r18, r12
0002a0  67415ffe  storeli.w r5, -236(r30)
0002a4  8f820300  exp.f.rn r5, r7
0002a8  8f030400  exp.f.rn r7, r8
0002ac  0f840a00  exp.f.rn r8, r21
0002b0  8be52511  add.f.rn r11, r11, r18
0002b4  67026ffe  storeli.w r6, -224(r30)
0002b8  0f030a00  exp.f.rn r6, r20
0002bc  8f05b918  div.f.rn r11, r18, r11
0002c0  8be22211  add.f.rn r5, r5, r18
0002c4  8be32311  add.f.rn r7, r7, r18
0002c8  0b642411  add.f.rn r8, r8, r18
0002cc  0b632311  add.f.rn r6, r6, r18
0002d0  8f025918  div.f.rn r5, r18, r5
0002d4  8f037918  div.f.rn r7, r18, r7
0002d8  0f048918  div.f.rn r8, r18, r8
0002dc  e743bffe  storeli.w r11, -196(r30)
0002e0  0f036918  div.f.rn r6, r18, r6
0002e4  e7025ffe  storeli.w r5, -216(r30)
0002e8  e7427ffe  storeli.w r7, -212(r30)
0002ec  67438ffe  storeli.w r8, -204(r30)
0002f0  67036ffe  storeli.w r6, -208(r30)
0002f4  00a00000  mfence { lm }
0002f8  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0002fc  9f008fff  addli r1, r30, -64
000300  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
000304  00a00000  mfence { lm }
000308  e3008fff  loadli.w r1,  -64(r30)
00030c  63418fff  loadli.w r2,  -60(r30)
000310  e3029fff  loadli.w r5,  -56(r30)
000314  63439fff  loadli.w r6,  -52(r30)
000318  e303afff  loadli.w r7,  -48(r30)
00031c  6344afff  loadli.w r8,  -44(r30)
000320  e305bfff  loadli.w r11,  -40(r30)
000324  6346bfff  loadli.w r12,  -36(r30)
000328  e306cfff  loadli.w r13,  -32(r30)
00032c  e348cfff  loadli.w r17,  -28(r30)
000330  e309dfff  loadli.w r19,  -24(r30)
000334  634adfff  loadli.w r20,  -20(r30)
000338  e30aefff  loadli.w r21,  -16(r30)
00033c  634befff  loadli.w r22,  -12(r30)
000340  e30dffff  loadli.w r27,  -8(r30)
000344  634effff  loadli.w r28,  -4(r30)
000348  0e103002  vmul.f.mz.rn vr0{mr1}, vr0, vr3
00034c  8f800000  exp.f.rn r1, r1
000350  0f010100  exp.f.rn r2, r2
000354  8f820200  exp.f.rn r5, r5
000358  0f030300  exp.f.rn r6, r6
00035c  8be02011  add.f.rn r1, r1, r18
000360  0b612111  add.f.rn r2, r2, r18
000364  8f001918  div.f.rn r1, r18, r1
000368  0f012918  div.f.rn r2, r18, r2
00036c  67081ffe  storeli.w r1, -128(r30)
000370  8be02211  add.f.rn r1, r5, r18
000374  8f820300  exp.f.rn r5, r7
000378  8f830500  exp.f.rn r7, r11
00037c  8f850600  exp.f.rn r11, r13
000380  67482ffe  storeli.w r2, -124(r30)
000384  0b612311  add.f.rn r2, r6, r18
000388  0f030400  exp.f.rn r6, r8
00038c  0f040600  exp.f.rn r8, r12
000390  8f001918  div.f.rn r1, r18, r1
000394  0f012918  div.f.rn r2, r18, r2
000398  8be22211  add.f.rn r5, r5, r18
00039c  0b632311  add.f.rn r6, r6, r18
0003a0  8be32311  add.f.rn r7, r7, r18
0003a4  0b642411  add.f.rn r8, r8, r18
0003a8  8be52511  add.f.rn r11, r11, r18
0003ac  e7081ffe  storeli.w r1, -120(r30)
0003b0  8f005918  div.f.rn r1, r18, r5
0003b4  8f026918  div.f.rn r5, r18, r6
0003b8  0f037918  div.f.rn r6, r18, r7
0003bc  8f038918  div.f.rn r7, r18, r8
0003c0  0f04b918  div.f.rn r8, r18, r11
0003c4  8f050e00  exp.f.rn r11, r28
0003c8  e7482ffe  storeli.w r2, -116(r30)
0003cc  0f810800  exp.f.rn r2, r17
0003d0  67091ffe  storeli.w r1, -112(r30)
0003d4  8f800900  exp.f.rn r1, r19
0003d8  67495ffe  storeli.w r5, -108(r30)
0003dc  8f020a00  exp.f.rn r5, r20
0003e0  e7096ffe  storeli.w r6, -104(r30)
0003e4  0f830a00  exp.f.rn r6, r21
0003e8  e7497ffe  storeli.w r7, -100(r30)
0003ec  8f030b00  exp.f.rn r7, r22
0003f0  670a8ffe  storeli.w r8, -96(r30)
0003f4  0f840d00  exp.f.rn r8, r27
0003f8  0b612111  add.f.rn r2, r2, r18
0003fc  8be52511  add.f.rn r11, r11, r18
000400  0f012918  div.f.rn r2, r18, r2
000404  8f05b918  div.f.rn r11, r18, r11
000408  8be02011  add.f.rn r1, r1, r18
00040c  8be22211  add.f.rn r5, r5, r18
000410  0b632311  add.f.rn r6, r6, r18
000414  8be32311  add.f.rn r7, r7, r18
000418  0b642411  add.f.rn r8, r8, r18
00041c  8f001918  div.f.rn r1, r18, r1
000420  8f025918  div.f.rn r5, r18, r5
000424  0f036918  div.f.rn r6, r18, r6
000428  8f037918  div.f.rn r7, r18, r7
00042c  0f048918  div.f.rn r8, r18, r8
000430  674a2ffe  storeli.w r2, -92(r30)
000434  e74bbffe  storeli.w r11, -68(r30)
000438  e70a1ffe  storeli.w r1, -88(r30)
00043c  e74a5ffe  storeli.w r5, -84(r30)
000440  670b6ffe  storeli.w r6, -80(r30)
000444  674b7ffe  storeli.w r7, -76(r30)
000448  e70b8ffe  storeli.w r8, -72(r30)
00044c  9f000fff  addli r1, r30, -128
000450  00a00000  mfence { lm }
000454  eb528f00  load.d r[6:7], 8(r30)
000458  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
00045c  9f100000  addli r1, zero, 1
000460  97b01c02  sll.d r[2:3], r[26:27], r1
000464  8ba01210  add.ul r[2:3], r[6:7], r[2:3]
000468  ab0200f0  lui r5, 983040
00046c  1f038000  addli r6, zero, 64
000470  8e902002  vmul.f.mz.rn vr1{mr1}, vr1, vr2
000474  06110000  vfloat2fp16_l.rn vr2, vr0
000478  06d10000  vfloat2fp16_h.rn vr2, vr1
00047c  461c2fc2  vstore_mask16.mz vr2{mr1}, 1728(r30)
000480  97125300  or r5, r6, r5
000484  1f038ffd  addli r6, r30, -320
000488  00a00000  mfence { lm }
00048c  ffb26000  s_lm2gm r5, r6, 0(r[2:3])
000490  00a00000  mfence { lm }
000494  3fc241fe  blt.s r3, r4, -880
000498  9f0e8ffc  addli sp, r30, -448
00049c  9f8e8e03  addli sp, sp, 448
0004a0  00a00300  mfence { lm, sm, gm }
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
0006d4  00100000  exit
0006d8  00100000  exit
0006dc  00100000  exit
0006e0  00100000  exit
0006e4  00100000  exit
