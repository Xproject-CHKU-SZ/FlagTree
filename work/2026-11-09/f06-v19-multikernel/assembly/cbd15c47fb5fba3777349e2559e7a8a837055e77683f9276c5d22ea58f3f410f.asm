; SHA-256 cbd15c47fb5fba3777349e2559e7a8a837055e77683f9276c5d22ea58f3f410f
; P800 Cluster · XTDK LLVM 19 · 908 / 908 words decoded
; bound names: triton_poi_fused_add_gelu_0
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
0000dc  9f8e8efc  addli sp, sp, -448
0000e0  1f8f0e03  addli r30, sp, 384
0000e4  00520002  load_param_i r4, 0
0000e8  63014f00  loadli.w r2,  32(r30)
0000ec  e3403f00  loadli.w r1,  28(r30)
0000f0  e3414f00  loadli.w r3,  36(r30)
0000f4  8b101120  mul.s r1, r2, r1
0000f8  8b903020  mul.s r1, r1, r3
0000fc  e7491ffc  storeli.w r1, -356(r30)
000100  cb8b4004  ble.s r1, r4, 2784
000104  80300002  core_id r1
000108  00d10002  load_param_i r2, 1
00010c  9f048000  addli r9, zero, 64
000110  9f078ffe  addli r15, r30, -192
000114  ab09807f  lui r19, 522240
000118  2b0a4000  lui r20, 1024
00011c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000120  9bb05000  slli r1, r1, 5
000124  e7092ffc  storeli.w r2, -360(r30)
000128  2bf1ff7f  lui r2, 524287
00012c  67491ffc  storeli.w r1, -364(r30)
000130  ab700000  lui r1, 7
000134  1b19f1ff  ori r18, r2, 4095
000138  2b414c3f  lui r2, 259268
00013c  9b98f0ff  ori r17, r1, 4095
000140  ab20373d  lui r1, 250738
000144  e70b2ffd  storeli.w r18, -328(r30)
000148  9b903071  ori r1, r1, 1811
00014c  e74b1ffd  storeli.w r17, -324(r30)
000150  674b1ffc  storeli.w r1, -332(r30)
000154  9b10a122  ori r1, r2, 554
000158  670b1ffc  storeli.w r1, -336(r30)
00015c  9f200000  addli r1, zero, 2
000160  fe8100e0  vmmov mr3, r1
000164  db070000  j 60
000168  6b510f01  load.d r[3:4], 16(r30)
00016c  6b520fea  load.d r[5:6], -352(r30)
000170  ab0000f0  lui r1, 983040
000174  9f048000  addli r9, zero, 64
000178  97901400  or r1, r9, r1
00017c  0b214110  add.ul r[3:4], r[3:4], r[5:6]
000180  63425ffd  loadli.w r4,  -340(r30)
000184  ff30f100  s_lm2gm r1, r15, 0(r[3:4])
000188  e3003ffd  loadli.w r1,  -360(r30)
00018c  00a00000  mfence { lm }
000190  0b121210  add.s r4, r4, r1
000194  e3403ffd  loadli.w r1,  -356(r30)
000198  3f201200  blt.s r4, r1, 8
00019c  db480100  j 2628
0001a0  e3404f00  loadli.w r1,  36(r30)
0001a4  63014f00  loadli.w r2,  32(r30)
0001a8  e74a4ffc  storeli.w r4, -340(r30)
0001ac  9f130000  addli r7, zero, 1
0001b0  8b101230  div.s r1, r4, r1
0001b4  8b902030  div.s r1, r1, r2
0001b8  63412ffd  loadli.w r2,  -364(r30)
0001bc  9bb0b000  slli r1, r1, 11
0001c0  8b902010  add.s r1, r1, r2
0001c4  1f010008  addli r2, zero, 1024
0001c8  0b912038  mod.s r2, r1, r2
0001cc  b3910028  sext_int2long r[4:5], r1
0001d0  ab0000f0  lui r1, 983040
0001d4  17b57102  sll.d r[11:12], r[4:5], r7
0001d8  97901400  or r1, r9, r1
0001dc  7330afea  store.d r[11:12], -352(r30)
0001e0  b3120128  sext_int2long r[6:7], r2
0001e4  2b0100f0  lui r2, 983040
0001e8  97b17202  sll.d r[4:5], r[6:7], r7
0001ec  eb520f00  load.d r[6:7], 0(r30)
0001f0  eb538f00  load.d r[8:9], 8(r30)
0001f4  17912400  or r2, r9, r2
0001f8  8ba13310  add.ul r[4:5], r[8:9], r[4:5]
0001fc  8ba2a210  add.ul r[6:7], r[6:7], r[11:12]
000200  9f030ffe  addli r7, r30, -256
000204  ffa07200  l_gm2lm r1, r7, 0(r[6:7])
000208  7fa1f100  l_gm2lm r2, r15, 0(r[4:5])
00020c  1f110000  addli r2, zero, 1
000210  9f010000  addli r3, zero, 0
000214  00a00000  mfence { lm }
000218  db9a0000  j 1236
00021c  1b430e01  srli r6, r28, 16
000220  1b031300  andi r6, r6, 1
000224  0b136e10  add.s r6, r28, r6
000228  0b1d1311  add.s r26, r6, r17
00022c  ab09ffff  lui r19, 1048560
000230  17813301  and r2, r7, r19
000234  17023701  and r4, r14, r19
000238  e3436ffd  loadli.w r7,  -332(r30)
00023c  178a3001  and r20, r1, r19
000240  97003601  and r1, r12, r19
000244  17873a01  and r14, r21, r19
000248  97813101  and r3, r3, r19
00024c  97873701  and r15, r15, r19
000250  170d3d01  and r26, r26, r19
000254  0b632120  mul.f.rn r6, r2, r2
000258  0b684220  mul.f.rn r16, r4, r4
00025c  e70e4ffc  storeli.w r4, -280(r30)
000260  e74e2ffc  storeli.w r2, -276(r30)
000264  0b694a21  mul.f.rn r18, r20, r20
000268  8bea1020  mul.f.rn r21, r1, r1
00026c  0b6ee720  mul.f.rn r28, r14, r14
000270  674e1ffc  storeli.w r1, -284(r30)
000274  e70d3ffc  storeli.w r3, -296(r30)
000278  0b632320  mul.f.rn r6, r6, r2
00027c  0b684820  mul.f.rn r16, r16, r4
000280  0b637320  mul.f.rn r6, r6, r7
000284  0b687820  mul.f.rn r16, r16, r7
000288  0b632310  add.f.rn r6, r6, r2
00028c  8b684810  add.f.rn r17, r16, r4
000290  63026ffd  loadli.w r4,  -336(r30)
000294  17083501  and r16, r10, r19
000298  2b05803f  lui r10, 260096
00029c  17813501  and r2, r11, r19
0002a0  97853201  and r11, r5, r19
0002a4  0b660821  mul.f.rn r12, r16, r16
0002a8  8b6d2120  mul.f.rn r27, r2, r2
0002ac  670e2ffc  storeli.w r2, -288(r30)
0002b0  0b634320  mul.f.rn r6, r6, r4
0002b4  8be84820  mul.f.rn r17, r17, r4
0002b8  8b620621  mul.f.rn r5, r12, r16
0002bc  0f030300  exp.f.rn r6, r6
0002c0  8f880800  exp.f.rn r17, r17
0002c4  8be27220  mul.f.rn r5, r5, r7
0002c8  0f066518  div.f.rn r12, r10, r6
0002cc  0f0b1519  div.f.rn r22, r10, r17
0002d0  8be20211  add.f.rn r5, r5, r16
0002d4  0b64c318  sub.f.rn r8, r6, r12
0002d8  0b63c310  add.f.rn r6, r6, r12
0002dc  0b664921  mul.f.rn r12, r18, r20
0002e0  8be24220  mul.f.rn r5, r5, r4
0002e4  0be96819  sub.f.rn r18, r17, r22
0002e8  8be86811  add.f.rn r17, r17, r22
0002ec  0bebb520  mul.f.rn r22, r11, r11
0002f0  0f036418  div.f.rn r6, r8, r6
0002f4  0b647620  mul.f.rn r8, r12, r7
0002f8  0be61a20  mul.f.rn r12, r21, r1
0002fc  8bea2d20  mul.f.rn r21, r27, r2
000300  8b6dee20  mul.f.rn r27, r28, r14
000304  8f820200  exp.f.rn r5, r5
000308  0b6bbb20  mul.f.rn r22, r22, r11
00030c  0b644411  add.f.rn r8, r8, r20
000310  0b667620  mul.f.rn r12, r12, r7
000314  8bea7a20  mul.f.rn r21, r21, r7
000318  8bed7d20  mul.f.rn r27, r27, r7
00031c  0b6b7b20  mul.f.rn r22, r22, r7
000320  e74d6ffc  storeli.w r6, -292(r30)
000324  0be33120  mul.f.rn r6, r3, r3
000328  0b644420  mul.f.rn r8, r8, r4
00032c  0b661610  add.f.rn r12, r12, r1
000330  8bea2a10  add.f.rn r21, r21, r2
000334  8f001919  div.f.rn r1, r18, r17
000338  8f085518  div.f.rn r17, r10, r5
00033c  0be9ed10  add.f.rn r18, r27, r14
000340  0b6bbb10  add.f.rn r22, r22, r11
000344  0b633320  mul.f.rn r6, r6, r3
000348  0f040400  exp.f.rn r8, r8
00034c  0b664620  mul.f.rn r12, r12, r4
000350  8bea4a20  mul.f.rn r21, r21, r4
000354  8bed1219  sub.f.rn r27, r5, r17
000358  8be21211  add.f.rn r5, r5, r17
00035c  8b684920  mul.f.rn r17, r18, r4
000360  0b637320  mul.f.rn r6, r6, r7
000364  674d1ffc  storeli.w r1, -300(r30)
000368  0b694b20  mul.f.rn r18, r22, r4
00036c  0f060600  exp.f.rn r12, r12
000370  8f8a0a00  exp.f.rn r21, r21
000374  0f0e8518  div.f.rn r28, r10, r8
000378  8f805d18  div.f.rn r1, r27, r5
00037c  8f880800  exp.f.rn r17, r17
000380  0b633310  add.f.rn r6, r6, r3
000384  0f090900  exp.f.rn r18, r18
000388  8f0d5519  div.f.rn r27, r10, r21
00038c  0b634320  mul.f.rn r6, r6, r4
000390  8b64c419  sub.f.rn r9, r8, r28
000394  0b64c411  add.f.rn r8, r8, r28
000398  0f0ec518  div.f.rn r28, r10, r12
00039c  670c1ffc  storeli.w r1, -320(r30)
0003a0  0f012519  div.f.rn r2, r10, r18
0003a4  0f030300  exp.f.rn r6, r6
0003a8  0f8b8418  div.f.rn r22, r9, r8
0003ac  0f041519  div.f.rn r8, r10, r17
0003b0  8b64c619  sub.f.rn r9, r12, r28
0003b4  0b66c611  add.f.rn r12, r12, r28
0003b8  0beeba19  sub.f.rn r28, r21, r27
0003bc  8beaba11  add.f.rn r21, r21, r27
0003c0  8f066518  div.f.rn r13, r10, r6
0003c4  8f80c418  div.f.rn r1, r9, r12
0003c8  8bed8818  sub.f.rn r27, r17, r8
0003cc  0be48810  add.f.rn r8, r17, r8
0003d0  8b682918  sub.f.rn r17, r18, r2
0003d4  0b612910  add.f.rn r2, r18, r2
0003d8  0b6bab10  add.f.rn r22, r22, r10
0003dc  8b64d318  sub.f.rn r9, r6, r13
0003e0  0b63d310  add.f.rn r6, r6, r13
0003e4  670d1ffc  storeli.w r1, -304(r30)
0003e8  8f005e19  div.f.rn r1, r28, r21
0003ec  978a3b01  and r21, r23, r19
0003f0  8bebf720  mul.f.rn r23, r15, r15
0003f4  0be65a21  mul.f.rn r12, r21, r21
0003f8  0f8e6418  div.f.rn r28, r9, r6
0003fc  97843c01  and r9, r25, r19
000400  8bebfb20  mul.f.rn r23, r23, r15
000404  e74c1ffc  storeli.w r1, -308(r30)
000408  8f808d18  div.f.rn r1, r27, r8
00040c  17043c01  and r8, r24, r19
000410  0be99420  mul.f.rn r18, r9, r9
000414  0b6cad21  mul.f.rn r24, r26, r26
000418  0b665621  mul.f.rn r12, r12, r21
00041c  8beb7b20  mul.f.rn r23, r23, r7
000420  0b6eae10  add.f.rn r28, r28, r10
000424  0b699920  mul.f.rn r18, r18, r9
000428  0b6cac21  mul.f.rn r24, r24, r26
00042c  e70c1ffc  storeli.w r1, -312(r30)
000430  8f802818  div.f.rn r1, r17, r2
000434  8b688420  mul.f.rn r17, r8, r8
000438  0b667620  mul.f.rn r12, r12, r7
00043c  8bebfb10  add.f.rn r23, r23, r15
000440  0b697920  mul.f.rn r18, r18, r7
000444  0b6c7c20  mul.f.rn r24, r24, r7
000448  8be88820  mul.f.rn r17, r17, r8
00044c  0b665611  add.f.rn r12, r12, r21
000450  674c1ffc  storeli.w r1, -316(r30)
000454  e340effd  loadli.w r1,  -268(r30)
000458  17833001  and r6, r1, r19
00045c  e300effd  loadli.w r1,  -272(r30)
000460  8beb4b20  mul.f.rn r23, r23, r4
000464  0b699910  add.f.rn r18, r18, r9
000468  0b6cac11  add.f.rn r24, r24, r26
00046c  8b6d6320  mul.f.rn r27, r6, r6
000470  8be87820  mul.f.rn r17, r17, r7
000474  0b664620  mul.f.rn r12, r12, r4
000478  97863001  and r13, r1, r19
00047c  8be9d620  mul.f.rn r19, r13, r13
000480  8f8b0b00  exp.f.rn r23, r23
000484  0b694920  mul.f.rn r18, r18, r4
000488  0b6c4c20  mul.f.rn r24, r24, r4
00048c  8bed6d20  mul.f.rn r27, r27, r6
000490  8be88810  add.f.rn r17, r17, r8
000494  0f060600  exp.f.rn r12, r12
000498  8be9d920  mul.f.rn r19, r19, r13
00049c  0f090900  exp.f.rn r18, r18
0004a0  0f0c0c00  exp.f.rn r24, r24
0004a4  8bed7d20  mul.f.rn r27, r27, r7
0004a8  8be84820  mul.f.rn r17, r17, r4
0004ac  8f0cc518  div.f.rn r25, r10, r12
0004b0  8be97920  mul.f.rn r19, r19, r7
0004b4  8bed6d10  add.f.rn r27, r27, r6
0004b8  8f880800  exp.f.rn r17, r17
0004bc  8b629619  sub.f.rn r5, r12, r25
0004c0  0b669611  add.f.rn r12, r12, r25
0004c4  8f0c2519  div.f.rn r25, r10, r18
0004c8  8be9d910  add.f.rn r19, r19, r13
0004cc  8bed4d20  mul.f.rn r27, r27, r4
0004d0  8f001519  div.f.rn r1, r10, r17
0004d4  8f82c218  div.f.rn r5, r5, r12
0004d8  0f068519  div.f.rn r12, r10, r24
0004dc  8be94920  mul.f.rn r19, r19, r4
0004e0  8f8d0d00  exp.f.rn r27, r27
0004e4  0be21818  sub.f.rn r4, r17, r1
0004e8  8be11810  add.f.rn r3, r17, r1
0004ec  8b609919  sub.f.rn r1, r18, r25
0004f0  8b6c9911  add.f.rn r25, r18, r25
0004f4  8f890900  exp.f.rn r19, r19
0004f8  8be2a210  add.f.rn r5, r5, r10
0004fc  0f01b519  div.f.rn r2, r10, r27
000500  8f839019  div.f.rn r7, r1, r25
000504  8f013218  div.f.rn r3, r4, r3
000508  8f083519  div.f.rn r17, r10, r19
00050c  0be92d18  sub.f.rn r18, r27, r2
000510  0be12d10  add.f.rn r2, r27, r2
000514  8be3a310  add.f.rn r7, r7, r10
000518  8be1a110  add.f.rn r3, r3, r10
00051c  8bed1919  sub.f.rn r27, r19, r17
000520  8be81911  add.f.rn r17, r19, r17
000524  8f097519  div.f.rn r19, r10, r23
000528  8f002918  div.f.rn r1, r18, r2
00052c  6341dffd  loadli.w r2,  -276(r30)
000530  8f881d19  div.f.rn r17, r27, r17
000534  0be23b19  sub.f.rn r4, r23, r19
000538  0be93b11  add.f.rn r18, r23, r19
00053c  8b69cc18  sub.f.rn r19, r24, r12
000540  0b66cc10  add.f.rn r12, r24, r12
000544  674f1ffc  storeli.w r1, -268(r30)
000548  ab00003f  lui r1, 258048
00054c  8b6b1120  mul.f.rn r23, r2, r1
000550  6301dffd  loadli.w r2,  -280(r30)
000554  0b681820  mul.f.rn r16, r16, r1
000558  0b6a1a20  mul.f.rn r20, r20, r1
00055c  8bea1a20  mul.f.rn r21, r21, r1
000560  0b671720  mul.f.rn r14, r14, r1
000564  8be71720  mul.f.rn r15, r15, r1
000568  0b641420  mul.f.rn r8, r8, r1
00056c  8be41420  mul.f.rn r9, r9, r1
000570  8be51520  mul.f.rn r11, r11, r1
000574  0b631320  mul.f.rn r6, r6, r1
000578  8be61620  mul.f.rn r13, r13, r1
00057c  0f022219  div.f.rn r4, r4, r18
000580  0f86c918  div.f.rn r12, r19, r12
000584  8be8a810  add.f.rn r17, r17, r10
000588  0b6c1120  mul.f.rn r24, r2, r1
00058c  6341bffd  loadli.w r2,  -292(r30)
000590  8b6ca110  add.f.rn r25, r2, r10
000594  6341affd  loadli.w r2,  -300(r30)
000598  8be25a20  mul.f.rn r5, r21, r5
00059c  8b6a1d20  mul.f.rn r21, r26, r1
0005a0  8be37420  mul.f.rn r7, r9, r7
0005a4  8b613420  mul.f.rn r3, r8, r3
0005a8  0b62a210  add.f.rn r4, r4, r10
0005ac  0b66a610  add.f.rn r12, r12, r10
0005b0  8b6da110  add.f.rn r27, r2, r10
0005b4  63018ffd  loadli.w r2,  -320(r30)
0005b8  0b61a110  add.f.rn r2, r2, r10
0005bc  0be99b21  mul.f.rn r18, r23, r25
0005c0  e30baffd  loadli.w r23,  -304(r30)
0005c4  e30c9ffd  loadli.w r25,  -312(r30)
0005c8  b3920200  float2bfloat.rn r5, r5
0005cc  0be24720  mul.f.rn r4, r15, r4
0005d0  9f078ffe  addli r15, r30, -192
0005d4  0be4ca20  mul.f.rn r8, r21, r12
0005d8  8bebab10  add.f.rn r23, r23, r10
0005dc  8becac10  add.f.rn r25, r25, r10
0005e0  8b69bc21  mul.f.rn r19, r24, r27
0005e4  634c9ffd  loadli.w r24,  -308(r30)
0005e8  e34d8ffd  loadli.w r27,  -316(r30)
0005ec  0b682820  mul.f.rn r16, r16, r2
0005f0  0b616a21  mul.f.rn r2, r20, r22
0005f4  8bedad10  add.f.rn r27, r27, r10
0005f8  0b6cac10  add.f.rn r24, r24, r10
0005fc  33160900  float2bfloat.rn r12, r18
000600  0b679721  mul.f.rn r14, r14, r25
000604  670f2ffc  storeli.w r2, -272(r30)
000608  6341cffd  loadli.w r2,  -284(r30)
00060c  8be5b521  mul.f.rn r11, r11, r27
000610  0b6a1120  mul.f.rn r20, r2, r1
000614  6301cffd  loadli.w r2,  -288(r30)
000618  0b6b1120  mul.f.rn r22, r2, r1
00061c  6301bffd  loadli.w r2,  -296(r30)
000620  b3950500  float2bfloat.rn r11, r11
000624  0b611120  mul.f.rn r2, r2, r1
000628  e340effd  loadli.w r1,  -268(r30)
00062c  0b6a7a21  mul.f.rn r20, r20, r23
000630  0b6b8b21  mul.f.rn r22, r22, r24
000634  8b6bc121  mul.f.rn r23, r2, r28
000638  0be1a010  add.f.rn r2, r1, r10
00063c  e300fffd  loadli.w r1,  -264(r30)
000640  6305effd  loadli.w r10,  -272(r30)
000644  8b941710  add.s r9, r15, r1
000648  b3100800  float2bfloat.rn r1, r16
00064c  73921400  store.h r1, 4(r9)
000650  b3100a00  float2bfloat.rn r1, r20
000654  7390c400  store.h r12, 0(r9)
000658  33160500  float2bfloat.rn r12, r10
00065c  7397b400  store.h r11, 14(r9)
000660  73995400  store.h r5, 18(r9)
000664  2b0a4000  lui r20, 1024
000668  0b612320  mul.f.rn r2, r6, r2
00066c  0be31621  mul.f.rn r6, r13, r17
000670  b3960900  float2bfloat.rn r13, r19
000674  ab09807f  lui r19, 522240
000678  73941400  store.h r1, 8(r9)
00067c  b3100700  float2bfloat.rn r1, r14
000680  7393c400  store.h r12, 6(r9)
000684  33160b00  float2bfloat.rn r12, r22
000688  7391d400  store.h r13, 2(r9)
00068c  73961400  store.h r1, 12(r9)
000690  b3900b00  float2bfloat.rn r1, r23
000694  7395c400  store.h r12, 10(r9)
000698  73981400  store.h r1, 16(r9)
00069c  b3900100  float2bfloat.rn r1, r3
0006a0  b3910300  float2bfloat.rn r3, r7
0006a4  739a1400  store.h r1, 20(r9)
0006a8  b3100100  float2bfloat.rn r1, r2
0006ac  33110300  float2bfloat.rn r2, r6
0006b0  739b3400  store.h r3, 22(r9)
0006b4  9f014000  addli r3, zero, 32
0006b8  739c1400  store.h r1, 24(r9)
0006bc  739d2400  store.h r2, 26(r9)
0006c0  b3100200  float2bfloat.rn r1, r4
0006c4  33110400  float2bfloat.rn r2, r8
0006c8  739f2400  store.h r2, 30(r9)
0006cc  739e1400  store.h r1, 28(r9)
0006d0  1f010000  addli r2, zero, 0
0006d4  00a00000  mfence { lm }
0006d8  e340fffd  loadli.w r1,  -260(r30)
0006dc  e3487ffd  loadli.w r17,  -324(r30)
0006e0  63097ffd  loadli.w r18,  -328(r30)
0006e4  9b801000  andi r1, r1, 1
0006e8  378a00fc  beq r1, zero, -1408
0006ec  e70f3ffc  storeli.w r3, -264(r30)
0006f0  eb310ff0  load.hu r3, -256(r30)
0006f4  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0006f8  9f1a0000  addli r21, zero, 1
0006fc  6b322ff0  load.hu r4, -254(r30)
000700  eb30cff1  load.hu r1, -228(r30)
000704  e74f2ffc  storeli.w r2, -260(r30)
000708  6b31aff1  load.hu r2, -230(r30)
00070c  eb324ff0  load.hu r5, -252(r30)
000710  6b336ff0  load.hu r6, -250(r30)
000714  eb338ff0  load.hu r7, -248(r30)
000718  6b34aff0  load.hu r8, -246(r30)
00071c  eb34cff0  load.hu r9, -244(r30)
000720  6b35eff0  load.hu r10, -242(r30)
000724  eb350ff1  load.hu r11, -240(r30)
000728  6b362ff1  load.hu r12, -238(r30)
00072c  eb364ff1  load.hu r13, -236(r30)
000730  6b376ff1  load.hu r14, -234(r30)
000734  eb378ff1  load.hu r15, -232(r30)
000738  6b38eff1  load.hu r16, -226(r30)
00073c  12310002  vadd.s.mz vr2{mr1}, zero, vr0
000740  7e810ae0  vmmov mr2, r21
000744  b3910118  bfloat2float.rn r3, r3
000748  33110118  bfloat2float.rn r2, r2
00074c  b3900018  bfloat2float.rn r1, r1
000750  eaa01134  vor.u.mh vr1{mr2}, r3, vr1
000754  b3110218  bfloat2float.rn r3, r4
000758  1f420000  addli r4, zero, 4
00075c  7e0002e0  vmmov mr0, r4
000760  1f021000  addli r4, zero, 8
000764  eaa01136  vor.u.mh vr1{mr3}, r3, vr1
000768  b3910218  bfloat2float.rn r3, r5
00076c  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000770  b3110318  bfloat2float.rn r3, r6
000774  7e0002e0  vmmov mr0, r4
000778  1f022000  addli r4, zero, 16
00077c  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000780  b3910318  bfloat2float.rn r3, r7
000784  7e0002e0  vmmov mr0, r4
000788  1f024000  addli r4, zero, 32
00078c  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000790  b3110418  bfloat2float.rn r3, r8
000794  7e0002e0  vmmov mr0, r4
000798  1f028000  addli r4, zero, 64
00079c  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0007a0  b3910418  bfloat2float.rn r3, r9
0007a4  7e0002e0  vmmov mr0, r4
0007a8  1f020001  addli r4, zero, 128
0007ac  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0007b0  b3110518  bfloat2float.rn r3, r10
0007b4  7e0002e0  vmmov mr0, r4
0007b8  1f020002  addli r4, zero, 256
0007bc  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0007c0  b3910518  bfloat2float.rn r3, r11
0007c4  7e0002e0  vmmov mr0, r4
0007c8  1f020004  addli r4, zero, 512
0007cc  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0007d0  b3110618  bfloat2float.rn r3, r12
0007d4  7e0002e0  vmmov mr0, r4
0007d8  1f020008  addli r4, zero, 1024
0007dc  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0007e0  b3910618  bfloat2float.rn r3, r13
0007e4  7e0002e0  vmmov mr0, r4
0007e8  1f020010  addli r4, zero, 2048
0007ec  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0007f0  b3110718  bfloat2float.rn r3, r14
0007f4  7e0002e0  vmmov mr0, r4
0007f8  1f020020  addli r4, zero, 4096
0007fc  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000800  b3910718  bfloat2float.rn r3, r15
000804  7e0002e0  vmmov mr0, r4
000808  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
00080c  9f010040  addli r3, zero, 8192
000810  7e8001e0  vmmov mr0, r3
000814  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000818  2b410000  lui r2, 4
00081c  7e0001e0  vmmov mr0, r2
000820  2b810000  lui r2, 8
000824  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000828  b3100818  bfloat2float.rn r1, r16
00082c  7e0001e0  vmmov mr0, r2
000830  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000834  eb300ff4  load.hu r1, -192(r30)
000838  6b312ff4  load.hu r2, -190(r30)
00083c  eb314ff4  load.hu r3, -188(r30)
000840  6b326ff4  load.hu r4, -186(r30)
000844  eb328ff4  load.hu r5, -184(r30)
000848  6b33aff4  load.hu r6, -182(r30)
00084c  eb33cff4  load.hu r7, -180(r30)
000850  6b34eff4  load.hu r8, -178(r30)
000854  eb340ff5  load.hu r9, -176(r30)
000858  6b352ff5  load.hu r10, -174(r30)
00085c  eb354ff5  load.hu r11, -172(r30)
000860  6b366ff5  load.hu r12, -170(r30)
000864  eb368ff5  load.hu r13, -168(r30)
000868  6b37aff5  load.hu r14, -166(r30)
00086c  eb37cff5  load.hu r15, -164(r30)
000870  6b38eff5  load.hu r16, -162(r30)
000874  b3900018  bfloat2float.rn r1, r1
000878  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00087c  b3100118  bfloat2float.rn r1, r2
000880  1f410000  addli r2, zero, 4
000884  7e0101e0  vmmov mr2, r2
000888  1f011000  addli r2, zero, 8
00088c  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
000890  b3900118  bfloat2float.rn r1, r3
000894  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000898  b3100218  bfloat2float.rn r1, r4
00089c  7e0101e0  vmmov mr2, r2
0008a0  1f012000  addli r2, zero, 16
0008a4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0008a8  b3900218  bfloat2float.rn r1, r5
0008ac  7e0101e0  vmmov mr2, r2
0008b0  1f014000  addli r2, zero, 32
0008b4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0008b8  b3100318  bfloat2float.rn r1, r6
0008bc  7e0101e0  vmmov mr2, r2
0008c0  1f018000  addli r2, zero, 64
0008c4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0008c8  b3900318  bfloat2float.rn r1, r7
0008cc  7e0101e0  vmmov mr2, r2
0008d0  1f010001  addli r2, zero, 128
0008d4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0008d8  b3100418  bfloat2float.rn r1, r8
0008dc  7e0101e0  vmmov mr2, r2
0008e0  1f010002  addli r2, zero, 256
0008e4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0008e8  b3900418  bfloat2float.rn r1, r9
0008ec  7e0101e0  vmmov mr2, r2
0008f0  1f010004  addli r2, zero, 512
0008f4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0008f8  b3100518  bfloat2float.rn r1, r10
0008fc  7e0101e0  vmmov mr2, r2
000900  1f010008  addli r2, zero, 1024
000904  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000908  b3900518  bfloat2float.rn r1, r11
00090c  7e0101e0  vmmov mr2, r2
000910  1f010010  addli r2, zero, 2048
000914  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000918  b3100618  bfloat2float.rn r1, r12
00091c  7e0101e0  vmmov mr2, r2
000920  1f010020  addli r2, zero, 4096
000924  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000928  b3900618  bfloat2float.rn r1, r13
00092c  7e0101e0  vmmov mr2, r2
000930  1f010040  addli r2, zero, 8192
000934  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000938  b3100718  bfloat2float.rn r1, r14
00093c  7e0101e0  vmmov mr2, r2
000940  2b410000  lui r2, 4
000944  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000948  b3900718  bfloat2float.rn r1, r15
00094c  7e0101e0  vmmov mr2, r2
000950  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000954  b3100818  bfloat2float.rn r1, r16
000958  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
00095c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000960  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
000964  00a00000  mfence { lm }
000968  e3030fff  loadli.w r7,  -128(r30)
00096c  63460fff  loadli.w r12,  -124(r30)
000970  63051fff  loadli.w r10,  -120(r30)
000974  e3401fff  loadli.w r1,  -116(r30)
000978  e3052fff  loadli.w r11,  -112(r30)
00097c  63432fff  loadli.w r6,  -108(r30)
000980  63023fff  loadli.w r4,  -104(r30)
000984  e3423fff  loadli.w r5,  -100(r30)
000988  e3014fff  loadli.w r3,  -96(r30)
00098c  63444fff  loadli.w r8,  -92(r30)
000990  e3045fff  loadli.w r9,  -88(r30)
000994  e3465fff  loadli.w r13,  -84(r30)
000998  17812301  and r2, r7, r18
00099c  13872904  setlt.u r14, r19, r2
0009a0  63016fff  loadli.w r2,  -80(r30)
0009a4  63486fff  loadli.w r16,  -76(r30)
0009a8  e3077fff  loadli.w r15,  -72(r30)
0009ac  634e7fff  loadli.w r28,  -68(r30)
0009b0  3b600700  bneq r14, zero, 24
0009b4  1bc70301  srli r14, r7, 16
0009b8  1b071700  andi r14, r14, 1
0009bc  8b93e310  add.s r7, r7, r14
0009c0  8b931311  add.s r7, r7, r17
0009c4  5b010000  j 8
0009c8  97934301  or r7, r7, r20
0009cc  17072601  and r14, r12, r18
0009d0  1387e904  setlt.u r14, r19, r14
0009d4  3b600700  bneq r14, zero, 24
0009d8  1b470601  srli r14, r12, 16
0009dc  1b071700  andi r14, r14, 1
0009e0  0b16e610  add.s r12, r12, r14
0009e4  0b171611  add.s r14, r12, r17
0009e8  5b010000  j 8
0009ec  17174601  or r14, r12, r20
0009f0  17062501  and r12, r10, r18
0009f4  1386c904  setlt.u r12, r19, r12
0009f8  3b600600  bneq r12, zero, 24
0009fc  1b460501  srli r12, r10, 16
000a00  1b061600  andi r12, r12, 1
000a04  0b15c510  add.s r10, r10, r12
000a08  0b151511  add.s r10, r10, r17
000a0c  5b010000  j 8
000a10  17154501  or r10, r10, r20
000a14  17862001  and r12, r1, r18
000a18  1386c904  setlt.u r12, r19, r12
000a1c  3b600600  bneq r12, zero, 24
000a20  1bc60001  srli r12, r1, 16
000a24  1b061600  andi r12, r12, 1
000a28  8b90c010  add.s r1, r1, r12
000a2c  8b901011  add.s r1, r1, r17
000a30  5b010000  j 8
000a34  97904001  or r1, r1, r20
000a38  17862501  and r12, r11, r18
000a3c  1386c904  setlt.u r12, r19, r12
000a40  3b600600  bneq r12, zero, 24
000a44  1bc60501  srli r12, r11, 16
000a48  1b061600  andi r12, r12, 1
000a4c  8b95c510  add.s r11, r11, r12
000a50  0b961511  add.s r12, r11, r17
000a54  5b010000  j 8
000a58  17964501  or r12, r11, r20
000a5c  97052301  and r11, r6, r18
000a60  9385b904  setlt.u r11, r19, r11
000a64  3be00500  bneq r11, zero, 24
000a68  9b450301  srli r11, r6, 16
000a6c  9b851500  andi r11, r11, 1
000a70  0b13b310  add.s r6, r6, r11
000a74  8b151311  add.s r11, r6, r17
000a78  5b010000  j 8
000a7c  97154301  or r11, r6, r20
000a80  17032201  and r6, r4, r18
000a84  13836904  setlt.u r6, r19, r6
000a88  3b600300  bneq r6, zero, 24
000a8c  1b430201  srli r6, r4, 16
000a90  1b031300  andi r6, r6, 1
000a94  0b126210  add.s r4, r4, r6
000a98  8b1a1211  add.s r21, r4, r17
000a9c  5b010000  j 8
000aa0  971a4201  or r21, r4, r20
000aa4  17832201  and r6, r5, r18
000aa8  13836904  setlt.u r6, r19, r6
000aac  3b600300  bneq r6, zero, 24
000ab0  1bc30201  srli r6, r5, 16
000ab4  1b031300  andi r6, r6, 1
000ab8  8b926210  add.s r5, r5, r6
000abc  8b921211  add.s r5, r5, r17
000ac0  5b010000  j 8
000ac4  97924201  or r5, r5, r20
000ac8  17832101  and r6, r3, r18
000acc  13836904  setlt.u r6, r19, r6
000ad0  3b600300  bneq r6, zero, 24
000ad4  1bc30101  srli r6, r3, 16
000ad8  1b031300  andi r6, r6, 1
000adc  8b916110  add.s r3, r3, r6
000ae0  8b911111  add.s r3, r3, r17
000ae4  5b010000  j 8
000ae8  97914101  or r3, r3, r20
000aec  17032401  and r6, r8, r18
000af0  13836904  setlt.u r6, r19, r6
000af4  3b600300  bneq r6, zero, 24
000af8  1b430401  srli r6, r8, 16
000afc  1b031300  andi r6, r6, 1
000b00  0b136410  add.s r6, r8, r6
000b04  8b1b1311  add.s r23, r6, r17
000b08  5b010000  j 8
000b0c  971b4401  or r23, r8, r20
000b10  17832401  and r6, r9, r18
000b14  13836904  setlt.u r6, r19, r6
000b18  3b600300  bneq r6, zero, 24
000b1c  1bc30401  srli r6, r9, 16
000b20  1b031300  andi r6, r6, 1
000b24  0b936410  add.s r6, r9, r6
000b28  0b1c1311  add.s r24, r6, r17
000b2c  5b010000  j 8
000b30  179c4401  or r24, r9, r20
000b34  17832601  and r6, r13, r18
000b38  13836904  setlt.u r6, r19, r6
000b3c  3b600300  bneq r6, zero, 24
000b40  1bc30601  srli r6, r13, 16
000b44  1b031300  andi r6, r6, 1
000b48  0b936610  add.s r6, r13, r6
000b4c  8b1c1311  add.s r25, r6, r17
000b50  5b010000  j 8
000b54  979c4601  or r25, r13, r20
000b58  17032101  and r6, r2, r18
000b5c  13836904  setlt.u r6, r19, r6
000b60  3b600300  bneq r6, zero, 24
000b64  1b430101  srli r6, r2, 16
000b68  1b031300  andi r6, r6, 1
000b6c  0b116110  add.s r2, r2, r6
000b70  0b111111  add.s r2, r2, r17
000b74  5b010000  j 8
000b78  17114101  or r2, r2, r20
000b7c  17032801  and r6, r16, r18
000b80  674f2ffc  storeli.w r2, -268(r30)
000b84  13836904  setlt.u r6, r19, r6
000b88  3b600300  bneq r6, zero, 24
000b8c  1b430801  srli r6, r16, 16
000b90  1b031300  andi r6, r6, 1
000b94  0b136810  add.s r6, r16, r6
000b98  0b111311  add.s r2, r6, r17
000b9c  5b010000  j 8
000ba0  17114801  or r2, r16, r20
000ba4  17832701  and r6, r15, r18
000ba8  670f2ffc  storeli.w r2, -272(r30)
000bac  13836904  setlt.u r6, r19, r6
000bb0  3b600300  bneq r6, zero, 24
000bb4  1bc30701  srli r6, r15, 16
000bb8  1b031300  andi r6, r6, 1
000bbc  0b936710  add.s r6, r15, r6
000bc0  8b171311  add.s r15, r6, r17
000bc4  5b010000  j 8
000bc8  97974701  or r15, r15, r20
000bcc  17032e01  and r6, r28, r18
000bd0  13836904  setlt.u r6, r19, r6
000bd4  372903fa  beq r6, zero, -2488
000bd8  171d4e01  or r26, r28, r20
000bdc  5bcafeff  j -2480
000be0  9f0e0ffd  addli sp, r30, -384
000be4  9f8e0e03  addli sp, sp, 384
000be8  00a00300  mfence { lm, sm, gm }
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
000da4  00100000  exit
000da8  00100000  exit
000dac  00100000  exit
000db0  00100000  exit
000db4  00100000  exit
000db8  00100000  exit
000dbc  00100000  exit
000dc0  00100000  exit
000dc4  00100000  exit
000dc8  00100000  exit
000dcc  00100000  exit
000dd0  00100000  exit
000dd4  00100000  exit
000dd8  00100000  exit
000ddc  00100000  exit
000de0  00100000  exit
000de4  00100000  exit
000de8  00100000  exit
000dec  00100000  exit
000df0  00100000  exit
000df4  00100000  exit
000df8  00100000  exit
000dfc  00100000  exit
000e00  00100000  exit
000e04  00100000  exit
000e08  00100000  exit
000e0c  00100000  exit
000e10  00100000  exit
000e14  00100000  exit
000e18  00100000  exit
000e1c  00100000  exit
000e20  00100000  exit
000e24  00100000  exit
000e28  00100000  exit
000e2c  00100000  exit
