000000  xor zero, zero, zero
000004  addli r4, zero, 4
000008  addli r8, zero, 8
00000c  addli r15, zero, -1
000010  core_id r3
000014  load_param_i r2, 2
000018  lui r1, 8
00001c  lui r5, 0
000020  addli r5, r5, 0
000024  sub.u r1, r1, r5
000028  andi r10, r3, 15
00002c  ori r9, zero, 4
000030  blt.s r3, r4, 12
000034  addli r10, r10, -4
000038  ori r9, zero, 6
00003c  mod.u r10, r10, r9
000040  addli r20, r2, 15
000044  srli r11, r20, 4
000048  srli r12, r3, 4
00004c  div.u r13, r1, r11
000050  addli r12, r12, 1
000054  mul.u r1, r12, r13
000058  add.u r1, r1, r5
00005c  addli sp, r1, 0
000060  slli r20, r15, 6
000064  and sp, sp, r20
000068  bneq zero, r3, 32
00006c  load_param_i r5, 4
000070  load_param_i r4, 3
000074  lui r19, 983040
000078  addli r19, zero, 44
00007c  mfence { sm, gm }
000080  l_gm2sm r19, zero, 0(r[5:6])
000084  mfence { sm, gm }
000088  lui r21, 15
00008c  ori r21, r21, 4095
000090  csr_set csr3, r21
000094  sync_group
000098  jal 176
00009c  mfence { lm, sm }
0000a0  sync_group
0000a4  vmmov mr1, r15
0000a8  vmmovh mr1, r15
0000ac  jal 220
0000b0  vmmov mr1, r15
0000b4  vmmovh mr1, r15
0000b8  addli r20, sp, -64
0000bc  vloads_mask16.mz vr0{mr1}, 0(zero)
0000c0  vstore.mz vr0{mr1}, 0(r20)
0000c4  mfence { lm, sm }
0000c8  sync_group
0000cc  xor r1, r1, r1
0000d0  addli r30, sp, 0
0000d4  jal 220
0000d8  trap
0000dc  addli sp, sp, -1408
0000e0  lui r1, 0
0000e4  core_id r12
0000e8  addli r30, sp, 1344
0000ec  lui r5, 15
0000f0  slli r2, r12, 2
0000f4  addli r1, r1, 0
0000f8  loadli.w r4,  36(r30)
0000fc  loadli.w r6,  32(r30)
000100  ori r5, r5, 4095
000104  loadli.w r3,  40(r30)
000108  add.s r7, r2, r1
00010c  addli r8, r7, 4112
000110  storeli.w r8, -1292(r30)
000114  stores.w zero, 0(r8)
000118  mfence { lm, sm, gm }
00011c  csr_set csr3, r5
000120  sync_group
000124  storeli.w r7, -1288(r30)
000128  stores.w zero, 0(r7)
00012c  mul.s r7, r4, r6
000130  load_param_i r4, 0
000134  mfence { lm, sm, gm }
000138  csr_set csr3, r5
00013c  sync_group
000140  mul.s r3, r7, r3
000144  storeli.w r3, -1300(r30)
000148  ble.s r3, r4, 2664
00014c  addli r10, zero, 16
000150  lui r20, 1048575
000154  load_param_i r3, 1
000158  load.d r[18:19], 8(r30)
00015c  andi r27, r12, 15
000160  addli r8, r30, -1280
000164  addli r9, zero, 256
000168  addli r11, zero, 64
00016c  addli r13, zero, 32
000170  addli r22, zero, 256
000174  addli r23, zero, 128
000178  addli r25, zero, 64
00017c  div.s r16, r12, r10
000180  storeli.w r3, -1304(r30)
000184  addli r3, zero, 2
000188  addli r10, zero, 128
00018c  slli r19, r16, 4
000190  slli r16, r16, 11
000194  sub.s r6, r12, r19
000198  ori r19, r20, 4032
00019c  slli r6, r6, 7
0001a0  and r2, r2, r19
0001a4  sext_int2long r[20:21], r6
0001a8  sll.d r[20:21], r[20:21], r3
0001ac  add.s r3, r6, r16
0001b0  add.s r16, r2, r1
0001b4  addli r6, zero, 512
0001b8  lui r1, 983040
0001bc  addli r2, r30, -768
0001c0  add.ul r[20:21], r[18:19], r[20:21]
0001c4  or r1, r6, r1
0001c8  storeli.w r3, -1308(r30)
0001cc  addli r18, r16, 4112
0001d0  l_gm2lm r1, r2, 0(r[20:21])
0001d4  mfence { lm }
0001d8  j 28
0001dc  loadli.w r4,  -1296(r30)
0001e0  loadli.w r1,  -1304(r30)
0001e4  add.s r4, r4, r1
0001e8  loadli.w r1,  -1300(r30)
0001ec  blt.s r4, r1, 8
0001f0  j 2496
0001f4  loadli.w r1,  40(r30)
0001f8  loadli.w r2,  36(r30)
0001fc  addli r28, zero, 1
000200  storeli.w r4, -1296(r30)
000204  div.s r1, r4, r1
000208  div.s r1, r1, r2
00020c  loadli.w r2,  -1308(r30)
000210  slli r1, r1, 14
000214  add.s r1, r2, r1
000218  storeli.w r1, -1284(r30)
00021c  addli r1, zero, 0
000220  j 160
000224  mfence { lm, sm, gm }
000228  csr_set csr3, r5
00022c  sync_group
000230  loads.w r3, 0(r18)
000234  lui r4, 260096
000238  load.d r[7:8], 16(r30)
00023c  addli r8, r30, -1280
000240  add.ul r[2:3], r[7:8], r[2:3]
000244  addli r6, zero, 512
000248  div.f.rn r3, r4, r3
00024c  vmul.f.mz.rn vr1{mr1}, r3, vr1
000250  vmul.f.mz.rn vr0{mr1}, r3, vr0
000254  vmul.f.mz.rn vr2{mr1}, r3, vr2
000258  vmul.f.mz.rn vr3{mr1}, r3, vr3
00025c  vmul.f.mz.rn vr4{mr1}, r3, vr4
000260  vmul.f.mz.rn vr5{mr1}, r3, vr5
000264  vmul.f.mz.rn vr6{mr1}, r3, vr6
000268  vmul.f.mz.rn vr7{mr1}, r3, vr7
00026c  addli r3, r30, -1280
000270  vstore_mask16.mz vr1{mr1}, 0(r3)
000274  addli r3, r30, -1216
000278  vstore_mask16.mz vr0{mr1}, 0(r3)
00027c  addli r3, r30, -1152
000280  vstore_mask16.mz vr2{mr1}, 0(r3)
000284  addli r3, r30, -1088
000288  vstore_mask16.mz vr3{mr1}, 0(r3)
00028c  lui r3, 983040
000290  vstore_mask16.mz vr4{mr1}, 1024(r30)
000294  vstore_mask16.mz vr5{mr1}, 1088(r30)
000298  vstore_mask16.mz vr6{mr1}, 1152(r30)
00029c  vstore_mask16.mz vr7{mr1}, 1216(r30)
0002a0  mfence { lm }
0002a4  or r3, r6, r3
0002a8  s_lm2gm r3, r8, 0(r[2:3])
0002ac  andi r2, r28, 1
0002b0  addli r1, zero, 8192
0002b4  addli r28, zero, 0
0002b8  mfence { lm }
0002bc  beq r2, zero, -224
0002c0  loadli.w r2,  -1284(r30)
0002c4  addli r3, zero, 2
0002c8  lui r12, 983040
0002cc  or r12, r6, r12
0002d0  add.s r1, r2, r1
0002d4  sext_int2long r[2:3], r1
0002d8  sll.d r[2:3], r[2:3], r3
0002dc  load.d r[4:5], 0(r30)
0002e0  add.ul r[7:8], r[4:5], r[2:3]
0002e4  addli r3, r30, -1280
0002e8  l_gm2lm r12, r8, 0(r[7:8])
0002ec  mfence { lm }
0002f0  vload_mask16.mz vr0{mr1}, 0(r3)
0002f4  addli r3, r30, -1216
0002f8  vload_mask16.mz vr1{mr1}, 0(r3)
0002fc  addli r3, r30, -1152
000300  vload_mask16.mz vr3{mr1}, 0(r3)
000304  addli r3, r30, -1088
000308  vload_mask16.mz vr4{mr1}, 0(r3)
00030c  vload_mask16.mz vr5{mr1}, 1024(r30)
000310  vload_mask16.mz vr2{mr1}, 1280(r30)
000314  vload_mask16.mz vr6{mr1}, 1088(r30)
000318  vload_mask16.mz vr8{mr1}, 1152(r30)
00031c  vload_mask16.mz vr9{mr1}, 1216(r30)
000320  vload_mask16.mz vr10{mr1}, 1344(r30)
000324  vload_mask16.mz vr11{mr1}, 1408(r30)
000328  vadd.f.mz.rn vr7{mr1}, vr0, vr2
00032c  vload_mask16.mz vr0{mr1}, 1472(r30)
000330  vadd.f.mz.rn vr2{mr1}, vr1, vr10
000334  vload_mask16.mz vr1{mr1}, 1536(r30)
000338  vload_mask16.mz vr10{mr1}, 1600(r30)
00033c  vadd.f.mz.rn vr3{mr1}, vr3, vr11
000340  vadd.f.mz.rn vr4{mr1}, vr4, vr0
000344  vload_mask16.mz vr0{mr1}, 1664(r30)
000348  vadd.f.mz.rn vr5{mr1}, vr5, vr1
00034c  vload_mask16.mz vr11{mr1}, 1728(r30)
000350  vadd.f.mz.rn vr6{mr1}, vr6, vr10
000354  loadli.w r3,  -1288(r30)
000358  vadd.f.mz.rn vr1{mr1}, vr8, vr0
00035c  vmax.f.mz vr8{mr1}, vr7, vr2
000360  vadd.f.mz.rn vr0{mr1}, vr9, vr11
000364  vmax.f.mz vr8{mr1}, vr8, vr3
000368  vmax.f.mz vr8{mr1}, vr8, vr4
00036c  vmax.f.mz vr8{mr1}, vr8, vr5
000370  vmax.f.mz vr8{mr1}, vr8, vr6
000374  vmax.f.mz vr8{mr1}, vr8, vr1
000378  vmax.f.mz vr8{mr1}, vr8, vr0
00037c  vsrl.p vr9, r9, vr8
000380  vmax.f.mz vr8{mr1}, vr8, vr9
000384  vsrl.p vr9, r10, vr8
000388  vmax.f.mz vr8{mr1}, vr8, vr9
00038c  vsrl.p vr9, r11, vr8
000390  vmax.f.mz vr8{mr1}, vr8, vr9
000394  vsrl.p vr9, r13, vr8
000398  vmax.f.mz vr8{mr1}, vr8, vr9
00039c  vextracti.f r6, 0(vr8)
0003a0  stores.w r6, 0(r3)
0003a4  mfence { lm, sm, gm }
0003a8  csr_set csr3, r5
0003ac  sync_group
0003b0  bneq r27, zero, 132
0003b4  loads.w r6, 0(r16)
0003b8  loads.w r7, 4(r16)
0003bc  loads.w r12, 8(r16)
0003c0  loads.w r15, 12(r16)
0003c4  loads.w r8, 16(r16)
0003c8  loads.w r9, 20(r16)
0003cc  loads.w r10, 24(r16)
0003d0  loads.w r11, 28(r16)
0003d4  loads.w r13, 32(r16)
0003d8  loads.w r24, 36(r16)
0003dc  loads.w r26, 40(r16)
0003e0  loads.w r3, 60(r16)
0003e4  max.f r6, r6, r7
0003e8  loads.w r7, 44(r16)
0003ec  max.f r6, r6, r12
0003f0  loads.w r12, 52(r16)
0003f4  max.f r6, r6, r15
0003f8  loads.w r15, 56(r16)
0003fc  max.f r6, r6, r8
000400  loads.w r8, 48(r16)
000404  max.f r6, r6, r9
000408  max.f r6, r6, r10
00040c  max.f r6, r6, r11
000410  max.f r6, r6, r13
000414  max.f r6, r6, r24
000418  max.f r6, r6, r26
00041c  max.f r6, r6, r7
000420  max.f r6, r6, r8
000424  max.f r6, r6, r12
000428  max.f r6, r6, r15
00042c  max.f r3, r6, r3
000430  stores.w r3, 0(r16)
000434  mfence { lm, sm, gm }
000438  csr_set csr3, r5
00043c  sync_group
000440  loads.w r3, 0(r16)
000444  lui r4, 524288
000448  addli r14, r30, -256
00044c  xor r3, r3, r4
000450  vadd.f.mz.rn vr7{mr1}, r3, vr7
000454  vadd.f.mz.rn vr8{mr1}, r3, vr4
000458  vstore_mask16.mz vr7{mr1}, 1792(r30)
00045c  vadd.f.mz.rn vr2{mr1}, r3, vr2
000460  vadd.f.mz.rn vr3{mr1}, r3, vr3
000464  vstore_mask16.mz vr2{mr1}, 1856(r30)
000468  vstore_mask16.mz vr3{mr1}, 1920(r30)
00046c  vstore_mask16.mz vr8{mr1}, 1984(r30)
000470  vadd.f.mz.rn vr4{mr1}, r3, vr6
000474  vadd.f.mz.rn vr6{mr1}, r3, vr1
000478  vadd.f.mz.rn vr5{mr1}, r3, vr5
00047c  mfence { lm }
000480  loadli.w r6,  0(r14)
000484  loadli.w r7,  4(r14)
000488  loadli.w r8,  8(r14)
00048c  loadli.w r9,  12(r14)
000490  loadli.w r10,  16(r14)
000494  loadli.w r11,  20(r14)
000498  loadli.w r12,  24(r14)
00049c  loadli.w r13,  28(r14)
0004a0  loadli.w r15,  32(r14)
0004a4  loadli.w r24,  36(r14)
0004a8  loadli.w r26,  40(r14)
0004ac  loadli.w r4,  44(r14)
0004b0  loadli.w r17,  48(r14)
0004b4  loadli.w r19,  52(r14)
0004b8  loadli.w r20,  56(r14)
0004bc  loadli.w r21,  60(r14)
0004c0  exp.f.rn r6, r6
0004c4  exp.f.rn r7, r7
0004c8  exp.f.rn r8, r8
0004cc  exp.f.rn r9, r9
0004d0  exp.f.rn r10, r10
0004d4  exp.f.rn r11, r11
0004d8  exp.f.rn r12, r12
0004dc  exp.f.rn r13, r13
0004e0  exp.f.rn r15, r15
0004e4  exp.f.rn r24, r24
0004e8  exp.f.rn r26, r26
0004ec  exp.f.rn r4, r4
0004f0  exp.f.rn r17, r17
0004f4  exp.f.rn r19, r19
0004f8  exp.f.rn r20, r20
0004fc  exp.f.rn r21, r21
000500  storeli.w r6, 0(r14)
000504  storeli.w r7, 4(r14)
000508  storeli.w r8, 8(r14)
00050c  storeli.w r9, 12(r14)
000510  storeli.w r10, 16(r14)
000514  storeli.w r11, 20(r14)
000518  storeli.w r12, 24(r14)
00051c  storeli.w r13, 28(r14)
000520  storeli.w r15, 32(r14)
000524  storeli.w r24, 36(r14)
000528  storeli.w r26, 40(r14)
00052c  storeli.w r4, 44(r14)
000530  storeli.w r17, 48(r14)
000534  storeli.w r19, 52(r14)
000538  storeli.w r20, 56(r14)
00053c  storeli.w r21, 60(r14)
000540  loadli.w r6,  64(r14)
000544  loadli.w r7,  68(r14)
000548  loadli.w r8,  72(r14)
00054c  loadli.w r9,  76(r14)
000550  loadli.w r10,  80(r14)
000554  loadli.w r11,  84(r14)
000558  loadli.w r12,  88(r14)
00055c  loadli.w r13,  92(r14)
000560  loadli.w r15,  96(r14)
000564  loadli.w r24,  100(r14)
000568  loadli.w r26,  104(r14)
00056c  loadli.w r4,  108(r14)
000570  loadli.w r17,  112(r14)
000574  loadli.w r19,  116(r14)
000578  loadli.w r20,  120(r14)
00057c  loadli.w r21,  124(r14)
000580  exp.f.rn r6, r6
000584  exp.f.rn r7, r7
000588  exp.f.rn r8, r8
00058c  exp.f.rn r9, r9
000590  exp.f.rn r10, r10
000594  exp.f.rn r11, r11
000598  exp.f.rn r12, r12
00059c  exp.f.rn r13, r13
0005a0  exp.f.rn r15, r15
0005a4  exp.f.rn r24, r24
0005a8  exp.f.rn r26, r26
0005ac  exp.f.rn r4, r4
0005b0  exp.f.rn r17, r17
0005b4  exp.f.rn r19, r19
0005b8  exp.f.rn r20, r20
0005bc  exp.f.rn r21, r21
0005c0  storeli.w r6, 64(r14)
0005c4  storeli.w r7, 68(r14)
0005c8  storeli.w r8, 72(r14)
0005cc  storeli.w r9, 76(r14)
0005d0  storeli.w r10, 80(r14)
0005d4  storeli.w r11, 84(r14)
0005d8  storeli.w r12, 88(r14)
0005dc  storeli.w r13, 92(r14)
0005e0  storeli.w r15, 96(r14)
0005e4  storeli.w r24, 100(r14)
0005e8  storeli.w r26, 104(r14)
0005ec  storeli.w r4, 108(r14)
0005f0  storeli.w r17, 112(r14)
0005f4  storeli.w r19, 116(r14)
0005f8  storeli.w r20, 120(r14)
0005fc  storeli.w r21, 124(r14)
000600  loadli.w r6,  128(r14)
000604  loadli.w r7,  132(r14)
000608  loadli.w r8,  136(r14)
00060c  loadli.w r9,  140(r14)
000610  loadli.w r10,  144(r14)
000614  loadli.w r11,  148(r14)
000618  loadli.w r12,  152(r14)
00061c  loadli.w r13,  156(r14)
000620  loadli.w r15,  160(r14)
000624  loadli.w r24,  164(r14)
000628  loadli.w r26,  168(r14)
00062c  loadli.w r4,  172(r14)
000630  loadli.w r17,  176(r14)
000634  loadli.w r19,  180(r14)
000638  loadli.w r20,  184(r14)
00063c  loadli.w r21,  188(r14)
000640  exp.f.rn r6, r6
000644  exp.f.rn r7, r7
000648  exp.f.rn r8, r8
00064c  exp.f.rn r9, r9
000650  exp.f.rn r10, r10
000654  exp.f.rn r11, r11
000658  exp.f.rn r12, r12
00065c  exp.f.rn r13, r13
000660  exp.f.rn r15, r15
000664  exp.f.rn r24, r24
000668  exp.f.rn r26, r26
00066c  exp.f.rn r4, r4
000670  exp.f.rn r17, r17
000674  exp.f.rn r19, r19
000678  exp.f.rn r20, r20
00067c  exp.f.rn r21, r21
000680  storeli.w r6, 128(r14)
000684  storeli.w r7, 132(r14)
000688  storeli.w r8, 136(r14)
00068c  storeli.w r9, 140(r14)
000690  storeli.w r10, 144(r14)
000694  storeli.w r11, 148(r14)
000698  storeli.w r12, 152(r14)
00069c  storeli.w r13, 156(r14)
0006a0  storeli.w r15, 160(r14)
0006a4  storeli.w r24, 164(r14)
0006a8  storeli.w r26, 168(r14)
0006ac  storeli.w r4, 172(r14)
0006b0  storeli.w r17, 176(r14)
0006b4  storeli.w r19, 180(r14)
0006b8  storeli.w r20, 184(r14)
0006bc  storeli.w r21, 188(r14)
0006c0  loadli.w r6,  192(r14)
0006c4  loadli.w r7,  196(r14)
0006c8  loadli.w r8,  200(r14)
0006cc  loadli.w r9,  204(r14)
0006d0  loadli.w r10,  208(r14)
0006d4  loadli.w r11,  212(r14)
0006d8  loadli.w r12,  216(r14)
0006dc  loadli.w r13,  220(r14)
0006e0  loadli.w r15,  224(r14)
0006e4  loadli.w r24,  228(r14)
0006e8  loadli.w r26,  232(r14)
0006ec  loadli.w r4,  236(r14)
0006f0  loadli.w r17,  240(r14)
0006f4  loadli.w r19,  244(r14)
0006f8  loadli.w r20,  248(r14)
0006fc  loadli.w r21,  252(r14)
000700  exp.f.rn r6, r6
000704  exp.f.rn r7, r7
000708  exp.f.rn r8, r8
00070c  exp.f.rn r9, r9
000710  exp.f.rn r10, r10
000714  exp.f.rn r11, r11
000718  exp.f.rn r12, r12
00071c  exp.f.rn r13, r13
000720  exp.f.rn r15, r15
000724  exp.f.rn r24, r24
000728  exp.f.rn r26, r26
00072c  exp.f.rn r4, r4
000730  exp.f.rn r17, r17
000734  exp.f.rn r19, r19
000738  exp.f.rn r20, r20
00073c  exp.f.rn r21, r21
000740  storeli.w r6, 192(r14)
000744  storeli.w r7, 196(r14)
000748  storeli.w r8, 200(r14)
00074c  storeli.w r9, 204(r14)
000750  storeli.w r10, 208(r14)
000754  storeli.w r11, 212(r14)
000758  storeli.w r12, 216(r14)
00075c  storeli.w r13, 220(r14)
000760  storeli.w r15, 224(r14)
000764  storeli.w r24, 228(r14)
000768  storeli.w r26, 232(r14)
00076c  storeli.w r4, 236(r14)
000770  storeli.w r17, 240(r14)
000774  storeli.w r19, 244(r14)
000778  storeli.w r20, 248(r14)
00077c  storeli.w r21, 252(r14)
000780  mfence { lm }
000784  vadd.f.mz.rn vr7{mr1}, r3, vr0
000788  vload_mask16.mz vr1{mr1}, 1792(r30)
00078c  vload_mask16.mz vr0{mr1}, 1856(r30)
000790  vload_mask16.mz vr2{mr1}, 1920(r30)
000794  vload_mask16.mz vr3{mr1}, 1984(r30)
000798  vstore_mask16.mz vr5{mr1}, 1792(r30)
00079c  vstore_mask16.mz vr4{mr1}, 1856(r30)
0007a0  vstore_mask16.mz vr6{mr1}, 1920(r30)
0007a4  vstore_mask16.mz vr7{mr1}, 1984(r30)
0007a8  mfence { lm }
0007ac  loadli.w r3,  0(r14)
0007b0  loadli.w r4,  4(r14)
0007b4  loadli.w r6,  8(r14)
0007b8  loadli.w r7,  12(r14)
0007bc  loadli.w r8,  16(r14)
0007c0  loadli.w r9,  20(r14)
0007c4  loadli.w r10,  24(r14)
0007c8  loadli.w r11,  28(r14)
0007cc  loadli.w r12,  32(r14)
0007d0  loadli.w r13,  36(r14)
0007d4  loadli.w r15,  40(r14)
0007d8  loadli.w r17,  44(r14)
0007dc  loadli.w r19,  48(r14)
0007e0  loadli.w r20,  52(r14)
0007e4  loadli.w r21,  56(r14)
0007e8  loadli.w r24,  60(r14)
0007ec  exp.f.rn r3, r3
0007f0  exp.f.rn r4, r4
0007f4  exp.f.rn r6, r6
0007f8  exp.f.rn r7, r7
0007fc  exp.f.rn r8, r8
000800  exp.f.rn r9, r9
000804  exp.f.rn r10, r10
000808  exp.f.rn r11, r11
00080c  exp.f.rn r12, r12
000810  exp.f.rn r13, r13
000814  exp.f.rn r15, r15
000818  exp.f.rn r17, r17
00081c  exp.f.rn r19, r19
000820  exp.f.rn r20, r20
000824  exp.f.rn r21, r21
000828  exp.f.rn r24, r24
00082c  storeli.w r3, 0(r14)
000830  storeli.w r4, 4(r14)
000834  storeli.w r6, 8(r14)
000838  storeli.w r7, 12(r14)
00083c  storeli.w r8, 16(r14)
000840  storeli.w r9, 20(r14)
000844  storeli.w r10, 24(r14)
000848  storeli.w r11, 28(r14)
00084c  storeli.w r12, 32(r14)
000850  storeli.w r13, 36(r14)
000854  storeli.w r15, 40(r14)
000858  storeli.w r17, 44(r14)
00085c  storeli.w r19, 48(r14)
000860  storeli.w r20, 52(r14)
000864  storeli.w r21, 56(r14)
000868  storeli.w r24, 60(r14)
00086c  loadli.w r3,  64(r14)
000870  loadli.w r4,  68(r14)
000874  loadli.w r6,  72(r14)
000878  loadli.w r7,  76(r14)
00087c  loadli.w r8,  80(r14)
000880  loadli.w r9,  84(r14)
000884  loadli.w r10,  88(r14)
000888  loadli.w r11,  92(r14)
00088c  loadli.w r12,  96(r14)
000890  loadli.w r13,  100(r14)
000894  loadli.w r15,  104(r14)
000898  loadli.w r17,  108(r14)
00089c  loadli.w r19,  112(r14)
0008a0  loadli.w r20,  116(r14)
0008a4  loadli.w r21,  120(r14)
0008a8  loadli.w r24,  124(r14)
0008ac  exp.f.rn r3, r3
0008b0  exp.f.rn r4, r4
0008b4  exp.f.rn r6, r6
0008b8  exp.f.rn r7, r7
0008bc  exp.f.rn r8, r8
0008c0  exp.f.rn r9, r9
0008c4  exp.f.rn r10, r10
0008c8  exp.f.rn r11, r11
0008cc  exp.f.rn r12, r12
0008d0  exp.f.rn r13, r13
0008d4  exp.f.rn r15, r15
0008d8  exp.f.rn r17, r17
0008dc  exp.f.rn r19, r19
0008e0  exp.f.rn r20, r20
0008e4  exp.f.rn r21, r21
0008e8  exp.f.rn r24, r24
0008ec  storeli.w r3, 64(r14)
0008f0  storeli.w r4, 68(r14)
0008f4  storeli.w r6, 72(r14)
0008f8  storeli.w r7, 76(r14)
0008fc  storeli.w r8, 80(r14)
000900  storeli.w r9, 84(r14)
000904  storeli.w r10, 88(r14)
000908  storeli.w r11, 92(r14)
00090c  storeli.w r12, 96(r14)
000910  storeli.w r13, 100(r14)
000914  storeli.w r15, 104(r14)
000918  storeli.w r17, 108(r14)
00091c  storeli.w r19, 112(r14)
000920  storeli.w r20, 116(r14)
000924  storeli.w r21, 120(r14)
000928  storeli.w r24, 124(r14)
00092c  loadli.w r3,  128(r14)
000930  loadli.w r4,  132(r14)
000934  loadli.w r6,  136(r14)
000938  loadli.w r7,  140(r14)
00093c  loadli.w r8,  144(r14)
000940  loadli.w r9,  148(r14)
000944  loadli.w r10,  152(r14)
000948  loadli.w r11,  156(r14)
00094c  loadli.w r12,  160(r14)
000950  loadli.w r13,  164(r14)
000954  loadli.w r15,  168(r14)
000958  loadli.w r17,  172(r14)
00095c  loadli.w r19,  176(r14)
000960  loadli.w r20,  180(r14)
000964  loadli.w r21,  184(r14)
000968  loadli.w r24,  188(r14)
00096c  exp.f.rn r3, r3
000970  exp.f.rn r4, r4
000974  exp.f.rn r6, r6
000978  exp.f.rn r7, r7
00097c  exp.f.rn r8, r8
000980  exp.f.rn r9, r9
000984  exp.f.rn r10, r10
000988  exp.f.rn r11, r11
00098c  exp.f.rn r12, r12
000990  exp.f.rn r13, r13
000994  exp.f.rn r15, r15
000998  exp.f.rn r17, r17
00099c  exp.f.rn r19, r19
0009a0  exp.f.rn r20, r20
0009a4  exp.f.rn r21, r21
0009a8  exp.f.rn r24, r24
0009ac  storeli.w r3, 128(r14)
0009b0  storeli.w r4, 132(r14)
0009b4  storeli.w r6, 136(r14)
0009b8  storeli.w r7, 140(r14)
0009bc  storeli.w r8, 144(r14)
0009c0  storeli.w r9, 148(r14)
0009c4  storeli.w r10, 152(r14)
0009c8  storeli.w r11, 156(r14)
0009cc  storeli.w r12, 160(r14)
0009d0  storeli.w r13, 164(r14)
0009d4  storeli.w r15, 168(r14)
0009d8  storeli.w r17, 172(r14)
0009dc  storeli.w r19, 176(r14)
0009e0  storeli.w r20, 180(r14)
0009e4  storeli.w r21, 184(r14)
0009e8  storeli.w r24, 188(r14)
0009ec  loadli.w r3,  192(r14)
0009f0  loadli.w r4,  196(r14)
0009f4  loadli.w r6,  200(r14)
0009f8  loadli.w r7,  204(r14)
0009fc  loadli.w r8,  208(r14)
000a00  loadli.w r9,  212(r14)
000a04  loadli.w r10,  216(r14)
000a08  loadli.w r11,  220(r14)
000a0c  loadli.w r12,  224(r14)
000a10  loadli.w r13,  228(r14)
000a14  loadli.w r15,  232(r14)
000a18  loadli.w r17,  236(r14)
000a1c  loadli.w r19,  240(r14)
000a20  loadli.w r20,  244(r14)
000a24  loadli.w r21,  248(r14)
000a28  loadli.w r24,  252(r14)
000a2c  exp.f.rn r3, r3
000a30  exp.f.rn r4, r4
000a34  exp.f.rn r6, r6
000a38  exp.f.rn r7, r7
000a3c  exp.f.rn r8, r8
000a40  exp.f.rn r9, r9
000a44  exp.f.rn r10, r10
000a48  exp.f.rn r11, r11
000a4c  exp.f.rn r12, r12
000a50  exp.f.rn r13, r13
000a54  exp.f.rn r15, r15
000a58  exp.f.rn r17, r17
000a5c  exp.f.rn r19, r19
000a60  exp.f.rn r20, r20
000a64  exp.f.rn r21, r21
000a68  exp.f.rn r24, r24
000a6c  storeli.w r3, 192(r14)
000a70  storeli.w r4, 196(r14)
000a74  storeli.w r6, 200(r14)
000a78  storeli.w r7, 204(r14)
000a7c  storeli.w r8, 208(r14)
000a80  storeli.w r9, 212(r14)
000a84  storeli.w r10, 216(r14)
000a88  storeli.w r11, 220(r14)
000a8c  storeli.w r12, 224(r14)
000a90  storeli.w r13, 228(r14)
000a94  storeli.w r15, 232(r14)
000a98  storeli.w r17, 236(r14)
000a9c  storeli.w r19, 240(r14)
000aa0  storeli.w r20, 244(r14)
000aa4  storeli.w r21, 248(r14)
000aa8  storeli.w r24, 252(r14)
000aac  mfence { lm }
000ab0  vload_mask16.mz vr4{mr1}, 1792(r30)
000ab4  addli r3, zero, 32
000ab8  addli r9, zero, 256
000abc  addli r10, zero, 128
000ac0  addli r11, zero, 64
000ac4  addli r13, zero, 32
000ac8  vadd.f.mz.rn vr5{mr1}, vr1, vr0
000acc  vadd.f.mz.rn vr5{mr1}, vr5, vr2
000ad0  vadd.f.mz.rn vr5{mr1}, vr5, vr3
000ad4  vadd.f.mz.rn vr6{mr1}, vr5, vr4
000ad8  vload_mask16.mz vr5{mr1}, 1856(r30)
000adc  vadd.f.mz.rn vr7{mr1}, vr6, vr5
000ae0  vload_mask16.mz vr6{mr1}, 1920(r30)
000ae4  vadd.f.mz.rn vr8{mr1}, vr7, vr6
000ae8  vload_mask16.mz vr7{mr1}, 1984(r30)
000aec  loadli.w r4,  -1292(r30)
000af0  vadd.f.mz.rn vr8{mr1}, vr8, vr7
000af4  vsrl.p vr9, r22, vr8
000af8  vadd.f.mz.rn vr8{mr1}, vr8, vr9
000afc  vsrl.p vr9, r23, vr8
000b00  vadd.f.mz.rn vr8{mr1}, vr8, vr9
000b04  vsrl.p vr9, r25, vr8
000b08  vadd.f.mz.rn vr8{mr1}, vr8, vr9
000b0c  vsrl.p vr9, r3, vr8
000b10  vadd.f.mz.rn vr8{mr1}, vr8, vr9
000b14  vextracti.f r3, 0(vr8)
000b18  stores.w r3, 0(r4)
000b1c  mfence { lm, sm, gm }
000b20  csr_set csr3, r5
000b24  sync_group
000b28  bneq r27, zero, -2308
000b2c  loads.w r3, 0(r18)
000b30  loads.w r4, 4(r18)
000b34  loads.w r6, 8(r18)
000b38  add.f.rn r3, r3, r4
000b3c  loads.w r4, 12(r18)
000b40  add.f.rn r3, r3, r6
000b44  loads.w r6, 16(r18)
000b48  add.f.rn r3, r3, r4
000b4c  loads.w r4, 20(r18)
000b50  add.f.rn r3, r3, r6
000b54  loads.w r6, 24(r18)
000b58  add.f.rn r3, r3, r4
000b5c  loads.w r4, 28(r18)
000b60  add.f.rn r3, r3, r6
000b64  loads.w r6, 32(r18)
000b68  add.f.rn r3, r3, r4
000b6c  loads.w r4, 36(r18)
000b70  add.f.rn r3, r3, r6
000b74  loads.w r6, 40(r18)
000b78  add.f.rn r3, r3, r4
000b7c  loads.w r4, 44(r18)
000b80  add.f.rn r3, r3, r6
000b84  loads.w r6, 48(r18)
000b88  add.f.rn r3, r3, r4
000b8c  loads.w r4, 52(r18)
000b90  add.f.rn r3, r3, r6
000b94  loads.w r6, 56(r18)
000b98  add.f.rn r3, r3, r4
000b9c  loads.w r4, 60(r18)
000ba0  add.f.rn r3, r3, r6
000ba4  add.f.rn r3, r3, r4
000ba8  stores.w r3, 0(r18)
000bac  j -2440
000bb0  addli sp, r30, -1344
000bb4  addli sp, sp, 1344
000bb8  mfence { lm, sm, gm }
000bbc  exit
000bc0  exit
000bc4  exit
000bc8  exit
000bcc  exit
000bd0  exit
000bd4  exit
000bd8  exit
000bdc  exit
000be0  exit
000be4  exit
000be8  exit
000bec  exit
000bf0  exit
000bf4  exit
000bf8  exit
000bfc  exit
000c00  exit
000c04  exit
000c08  exit
000c0c  exit
000c10  exit
000c14  exit
000c18  exit
000c1c  exit
000c20  exit
000c24  exit
000c28  exit
000c2c  exit
000c30  exit
000c34  exit
000c38  exit
000c3c  exit
000c40  exit
000c44  exit
000c48  exit
000c4c  exit
000c50  exit
000c54  exit
000c58  exit
000c5c  exit
000c60  exit
000c64  exit
000c68  exit
000c6c  exit
000c70  exit
000c74  exit
000c78  exit
000c7c  exit
000c80  exit
000c84  exit
000c88  exit
000c8c  exit
000c90  exit
000c94  exit
000c98  exit
000c9c  exit
000ca0  exit
000ca4  exit
000ca8  exit
000cac  exit
000cb0  exit
000cb4  exit
000cb8  exit
000cbc  exit
000cc0  exit
000cc4  exit
000cc8  exit
000ccc  exit
000cd0  exit
000cd4  exit
000cd8  exit
000cdc  exit
000ce0  exit
000ce4  exit
000ce8  exit
000cec  exit
000cf0  exit
000cf4  exit
000cf8  exit
000cfc  exit
000d00  exit
000d04  exit
000d08  exit
000d0c  exit
000d10  exit
000d14  exit
000d18  exit
000d1c  exit
000d20  exit
000d24  exit
000d28  exit
000d2c  exit
000d30  exit
000d34  exit
000d38  exit
000d3c  exit
000d40  exit
000d44  exit
000d48  exit
000d4c  exit
000d50  exit
000d54  exit
000d58  exit
000d5c  exit
000d60  exit
000d64  exit
000d68  exit
000d6c  exit
000d70  exit
000d74  exit
000d78  exit
000d7c  exit
000d80  exit
000d84  exit
000d88  exit
000d8c  exit
000d90  exit
000d94  exit
000d98  exit
000d9c  exit
000da0  exit
000da4  exit
000da8  exit
000dac  exit
000db0  exit
000db4  exit
000db8  exit
000dbc  exit
000dc0  exit
000dc4  exit
000dc8  exit
000dcc  exit
000dd0  exit
000dd4  exit
000dd8  exit
000ddc  exit
000de0  exit
000de4  exit
000de8  exit
000dec  exit
000df0  exit
000df4  exit
000df8  exit
000dfc  exit
