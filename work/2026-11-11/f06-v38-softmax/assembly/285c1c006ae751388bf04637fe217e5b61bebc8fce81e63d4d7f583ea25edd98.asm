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
0000dc  9f8e0eff  addli sp, sp, -128
0000e0  1f8f8e00  addli r30, sp, 64
0000e4  805a0002  load_param_i r21, 0
0000e8  e3493f00  loadli.w r19,  28(r30)
0000ec  e3003f00  loadli.w r1,  24(r30)
0000f0  630a4f00  loadli.w r20,  32(r30)
0000f4  8b901920  mul.s r1, r19, r1
0000f8  0b9b4021  mul.s r22, r1, r20
0000fc  4b315b01  ble.s r22, r21, 76
000100  80db0002  load_param_i r23, 1
000104  1f3c0000  addli r24, zero, 3
000108  9f0c4000  addli r25, zero, 32
00010c  1f0d8000  addli r26, zero, 64
000110  9f0d0004  addli r27, zero, 512
000114  8b904a31  div.s r1, r21, r20
000118  6b510f00  load.d r[3:4], 0(r30)
00011c  6b528f00  load.d r[5:6], 8(r30)
000120  6b530f01  load.d r[7:8], 16(r30)
000124  67c0ae01  storeli.w r26, 4(sp)
000128  6780be01  storeli.w r27, 0(sp)
00012c  8b903031  div.s r1, r1, r19
000130  0b948021  mul.s r8, r1, r24
000134  8b908c18  sub.s r1, r25, r8
000138  8b948041  min.s r9, r1, r24
00013c  d72a0000  jal 340
000140  8b9a7a11  add.s r21, r21, r23
000144  3fcf6aff  blt.s r21, r22, -48
000148  9f8e8e00  addli sp, sp, 64
00014c  00a00300  mfence { lm, sm, gm }
000150  00100000  exit
000154  9f8e8ed9  addli sp, sp, -4928
000158  67c1ee27  storeli.w r30, 4884(sp)
00015c  1f8f8e26  addli r30, sp, 4928
000160  e7c33e27  storeli.w r19, 4924(sp)
000164  e7834e27  storeli.w r20, 4920(sp)
000168  67c35e27  storeli.w r21, 4916(sp)
00016c  67836e27  storeli.w r22, 4912(sp)
000170  e7c27e27  storeli.w r23, 4908(sp)
000174  e7828e27  storeli.w r24, 4904(sp)
000178  67c29e27  storeli.w r25, 4900(sp)
00017c  6782ae27  storeli.w r26, 4896(sp)
000180  e7c1be27  storeli.w r27, 4892(sp)
000184  e781ce27  storeli.w r28, 4888(sp)
000188  6781fe27  storeli.w r31, 4880(sp)
00018c  9f00ffda  addli r1, r30, -4744
000190  e7478fdc  storeli.w r8, -4484(r30)
000194  73b06000  store.d r[7:8], 0(r1)
000198  9f00efda  addli r1, r30, -4752
00019c  73b02000  store.d r[3:4], 0(r1)
0001a0  2b010000  lui r2, 0
0001a4  80310002  core_id r3
0001a8  1f010100  addli r2, r2, 0
0001ac  3be00100  bneq r3, zero, 24
0001b0  e3000f00  loadli.w r1,  0(r30)
0001b4  2b0300f0  lui r6, 983040
0001b8  9bb01000  slli r1, r1, 1
0001bc  97906000  or r1, r1, r6
0001c0  ff002200  l_gm2sm r1, r2, 0(r[5:6])
0001c4  abf00000  lui r1, 15
0001c8  1f120000  addli r4, zero, 1
0001cc  00200300  mfence { sm, gm }
0001d0  9b90f0ff  ori r1, r1, 4095
0001d4  674f1fdc  storeli.w r1, -4364(r30)
0001d8  80a10004  csr_set csr3, r1
0001dc  00d00100  sync_group
0001e0  3f964402  blt.s r9, r4, 1412
0001e4  2b150000  lui r10, 1
0001e8  9f030fdf  addli r7, r30, -4224
0001ec  63030f00  loadli.w r6,  0(r30)
0001f0  e3420f00  loadli.w r5,  4(r30)
0001f4  1bb42100  slli r8, r3, 2
0001f8  9ba51100  xori r11, r3, 1
0001fc  2b160000  lui r12, 1
000200  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
000204  ab0cffff  lui r25, 1048560
000208  2b0efc42  lui r28, 274368
00020c  2b0b404b  lui r22, 308224
000210  ab0b40cb  lui r23, 832512
000214  2b0c803f  lui r24, 260096
000218  9f0a0000  addli r21, zero, 0
00021c  9f800310  addli r1, r7, 2048
000220  1f050500  addli r10, r10, 0
000224  9bb52500  slli r11, r11, 2
000228  1f060602  addli r12, r12, 256
00022c  0b195330  div.s r18, r6, r5
000230  b3160328  sext_int2long r[14:15], r6
000234  e74f1fda  storeli.w r1, -4612(r30)
000238  8b10a410  add.s r1, r8, r10
00023c  e7461fda  storeli.w r1, -4756(r30)
000240  9f00efdc  addli r1, r30, -4496
000244  73b0d000  store.d r[14:15], 0(r1)
000248  9bb01200  slli r1, r5, 1
00024c  8b932139  mod.s r7, r3, r18
000250  e7461fdc  storeli.w r1, -4500(r30)
000254  8b90a510  add.s r1, r11, r10
000258  e70f1fd8  storeli.w r1, -4872(r30)
00025c  8b902131  div.s r1, r3, r18
000260  0b935320  mul.s r6, r7, r5
000264  9b311300  slli r3, r6, 1
000268  b3160328  sext_int2long r[14:15], r6
00026c  e7061fdc  storeli.w r1, -4504(r30)
000270  9f00cfdc  addli r1, r30, -4512
000274  73b0d000  store.d r[14:15], 0(r1)
000278  8b902110  add.s r1, r3, r2
00027c  1bb12300  slli r2, r7, 2
000280  9f012000  addli r3, zero, 16
000284  9f038000  addli r7, zero, 64
000288  e74f1fd8  storeli.w r1, -4868(r30)
00028c  8b10c410  add.s r1, r8, r12
000290  0b112418  sub.s r2, r8, r2
000294  eaa32122  vor.u.mz vr7{mr1}, r3, vr2
000298  ab812139  lui r3, 234008
00029c  e7061fda  storeli.w r1, -4760(r30)
0002a0  8b90c510  add.s r1, r11, r12
0002a4  1b9a9148  ori r20, r3, 1161
0002a8  ab51633d  lui r3, 251445
0002ac  674f1fd8  storeli.w r1, -4876(r30)
0002b0  8b10a110  add.s r1, r2, r10
0002b4  9b917184  ori r3, r3, 2119
0002b8  670f1fd8  storeli.w r1, -4880(r30)
0002bc  8b10c110  add.s r1, r2, r12
0002c0  2b0180ff  lui r2, 1046528
0002c4  ea922122  vor.f.mz vr5{mr1}, r3, vr2
0002c8  ab71313f  lui r3, 258839
0002cc  1f060fff  addli r12, r30, -128
0002d0  ea102122  vor.f.mz vr1{mr1}, r2, vr2
0002d4  2ba1b83f  lui r2, 261002
0002d8  e74e1fd8  storeli.w r1, -4884(r30)
0002dc  9f000fdb  addli r1, r30, -4736
0002e0  9b918121  ori r3, r3, 536
0002e4  9b1db1a3  ori r27, r2, 2619
0002e8  2b01fcc2  lui r2, 798656
0002ec  6a232122  vor.u.mz vr6{mr1}, r2, vr2
0002f0  1f712000  addli r2, zero, 23
0002f4  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0002f8  9f008fde  addli r1, r30, -4288
0002fc  ea902122  vor.f.mz vr1{mr1}, r3, vr2
000300  ab01807f  lui r3, 522240
000304  ea252122  vor.u.mz vr11{mr1}, r2, vr2
000308  2bc1ae3a  lui r2, 240364
00030c  1b11f13f  ori r2, r2, 1023
000310  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
000314  9f000fdc  addli r1, r30, -4608
000318  6a142122  vor.f.mz vr8{mr1}, r2, vr2
00031c  2b911d3c  lui r2, 246233
000320  4690b002  vstore_mask16.mz vr11{mr1}, 0(r1)
000324  9f000fdd  addli r1, r30, -4480
000328  1b11b155  ori r2, r2, 1371
00032c  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000330  9f000fda  addli r1, r30, -4864
000334  ea142122  vor.f.mz vr9{mr1}, r2, vr2
000338  2bf1753e  lui r2, 255839
00033c  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
000340  9f000fde  addli r1, r30, -4352
000344  1b1101df  ori r2, r2, 3568
000348  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
00034c  6a102122  vor.f.mz vr0{mr1}, r2, vr2
000350  2b710000  lui r2, 7
000354  1b13f1ff  ori r6, r2, 4095
000358  2b01c07f  lui r2, 523264
00035c  5b030000  j 24
000360  80500102  load_param_i r1, 2
000364  8b902031  div.s r1, r1, r18
000368  8b9a5011  add.s r21, r1, r21
00036c  3fa09a00  blt.s r21, r9, 8
000370  db7e0000  j 1012
000374  e300dfdc  loadli.w r1,  -4504(r30)
000378  8b951a10  add.s r11, r21, r1
00037c  e340ffdc  loadli.w r1,  -4484(r30)
000380  0b941510  add.s r8, r11, r1
000384  9f00efdc  addli r1, r30, -4496
000388  ebd70000  load.d r[16:17], 0(r1)
00038c  b3160428  sext_int2long r[14:15], r8
000390  9f00cfdc  addli r1, r30, -4512
000394  8bb6f620  mul.sl r[14:15], r[14:15], r[16:17]
000398  ebd70000  load.d r[16:17], 0(r1)
00039c  9f00ffdd  addli r1, r30, -4360
0003a0  8ba6f610  add.ul r[14:15], r[14:15], r[16:17]
0003a4  1f280000  addli r16, zero, 2
0003a8  ab0780ff  lui r15, 1046528
0003ac  97b64602  sll.d r[14:15], r[14:15], r4
0003b0  73b0d000  store.d r[14:15], 0(r1)
0003b4  cbc2b400  ble.s r9, r11, 176
0003b8  9f00efda  addli r1, r30, -4752
0003bc  2b0400f0  lui r8, 983040
0003c0  ebd60000  load.d r[14:15], 0(r1)
0003c4  9f00ffdd  addli r1, r30, -4360
0003c8  ebd70000  load.d r[16:17], 0(r1)
0003cc  e340dfdc  loadli.w r1,  -4500(r30)
0003d0  17948000  or r8, r1, r8
0003d4  e340ffdb  loadli.w r1,  -4612(r30)
0003d8  8ba6f610  add.ul r[14:15], r[14:15], r[16:17]
0003dc  7fa41600  l_gm2lm r8, r1, 0(r[14:15])
0003e0  9f000fdb  addli r1, r30, -4736
0003e4  00a00200  mfence { lm, gm }
0003e8  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0003ec  bf814200  blt.s r5, r4, 96
0003f0  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0003f4  e347ffdb  loadli.w r15,  -4612(r30)
0003f8  e348ffd9  loadli.w r17,  -4868(r30)
0003fc  1f040000  addli r8, zero, 0
000400  1f050fdf  addli r10, r30, -4224
000404  ca850802  vloads.mz vr11{mr1}, 0(r17)
000408  c2800702  vload.mz vr1{mr1}, 0(r15)
00040c  9f068500  addli r13, r10, 64
000410  1f044400  addli r8, r8, 32
000414  9f888800  addli r17, r17, 64
000418  9f878700  addli r15, r15, 64
00041c  eeb113a2  vsll.s.mz vr3{mr1}, vr7, vr1
000420  eab01c02  vand.s.mz vr1{mr1}, r25, vr1
000424  6eb2b3a2  vsll.s.mz vr4{mr1}, vr7, vr11
000428  eab5bc02  vand.s.mz vr11{mr1}, r25, vr11
00042c  96914102  vadd.f.mz.rn vr3{mr1}, vr3, vr4
000430  9690b002  vadd.f.mz.rn vr1{mr1}, vr1, vr11
000434  36921102  vmax.f.mz vr4{mr1}, vr3, vr1
000438  46103502  vstore_mask16.mz vr3{mr1}, 0(r10)
00043c  1f050501  addli r10, r10, 128
000440  46901602  vstore_mask16.mz vr1{mr1}, 0(r13)
000444  36154502  vmax.f.mz vr10{mr1}, vr10, vr4
000448  bf7e54fe  blt.s r8, r5, -68
00044c  9f000fdc  addli r1, r30, -4608
000450  fa170560  vrmax.f r15, vr10
000454  1f280000  addli r16, zero, 2
000458  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
00045c  9f000fdd  addli r1, r30, -4480
000460  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000464  bf210901  blt.s r18, r16, 104
000468  e340dfda  loadli.w r1,  -4756(r30)
00046c  73e0f000  stores.w r15, 0(r1)
000470  00a00300  mfence { lm, sm, gm }
000474  e340efdd  loadli.w r1,  -4364(r30)
000478  80a10004  csr_set csr3, r1
00047c  00d00100  sync_group
000480  bb650901  bneq r18, r16, 376
000484  e300ffd9  loadli.w r1,  -4872(r30)
000488  1bb59700  slli r10, r15, 9
00048c  9bc67701  srli r13, r15, 23
000490  13050500  seteq r10, r10, zero
000494  9b86f60f  andi r13, r13, 255
000498  6fc40000  loads.w r8, 0(r1)
00049c  9bf6f60f  setlti r13, r13, 255
0004a0  1795a600  or r10, r13, r10
0004a4  1b379400  slli r14, r8, 9
0004a8  9b487401  srli r17, r8, 23
0004ac  93e98704  setlt.f r19, r15, r8
0004b0  13070700  seteq r14, r14, zero
0004b4  9b88f80f  andi r17, r17, 255
0004b8  9bf8f80f  setlti r17, r17, 255
0004bc  1797e800  or r14, r17, r14
0004c0  1705a700  and r10, r14, r10
0004c4  1785a900  and r10, r19, r10
0004c8  3b200500  bneq r10, zero, 8
0004cc  1f840700  addli r8, r15, 0
0004d0  cbd3b400  ble.s r9, r11, 244
0004d4  1234b002  vadd.s.mz vr8{mr1}, zero, vr11
0004d8  92352002  vadd.s.mz vr11{mr1}, zero, vr2
0004dc  92331002  vadd.s.mz vr7{mr1}, zero, vr1
0004e0  ab000080  lui r1, 524288
0004e4  00a00000  mfence { lm }
0004e8  3fe24200  blt.s r5, r4, 152
0004ec  6a152422  vor.f.mz vr10{mr1}, r8, vr2
0004f0  92352002  vadd.s.mz vr11{mr1}, zero, vr2
0004f4  9f070000  addli r15, zero, 0
0004f8  1f040fdf  addli r8, r30, -4224
0004fc  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
000500  1f050fde  addli r10, r30, -4352
000504  9f872700  addli r15, r15, 16
000508  9e90a002  vsub.f.mz.rn vr1{mr1}, vr1, vr10
00050c  8a901d02  vmul.f.mz.rn vr1{mr1}, r27, vr1
000510  9a911002  vsub.f.mz.rn vr3{mr1}, r1, vr1
000514  72113e42  vlt.f.mz mr2{mr1}, r28, vr3
000518  ea206034  vor.u.mh vr1{mr2}, zero, vr6
00051c  12339002  vadd.s.mz vr6{mr1}, zero, vr9
000520  92111b02  vadd.f.mz.rn vr3{mr1}, r22, vr1
000524  12923b02  vadd.f.mz.rn vr4{mr1}, r23, vr3
000528  ee3134a2  vsll.s.mz vr3{mr1}, vr8, vr3
00052c  9e904002  vsub.f.mz.rn vr1{mr1}, vr1, vr4
000530  42120502  vload_mask16.mz vr4{mr1}, 0(r10)
000534  1f058fde  addli r10, r30, -4288
000538  22121a02  vmac.f.mz.rn vr4{mr1}, r20, vr1
00053c  26131202  vmac.f.mz.rn vr6{mr1}, vr4, vr1
000540  12325002  vadd.s.mz vr4{mr1}, zero, vr5
000544  26121302  vmac.f.mz.rn vr4{mr1}, vr6, vr1
000548  12330002  vadd.s.mz vr6{mr1}, zero, vr0
00054c  26131202  vmac.f.mz.rn vr6{mr1}, vr4, vr1
000550  12327002  vadd.s.mz vr4{mr1}, zero, vr7
000554  26121302  vmac.f.mz.rn vr4{mr1}, vr6, vr1
000558  6a132c22  vor.f.mz vr6{mr1}, r24, vr2
00055c  26131202  vmac.f.mz.rn vr6{mr1}, vr4, vr1
000560  92303c02  vadd.s.mz vr1{mr1}, r24, vr3
000564  8e101302  vmul.f.mz.rn vr1{mr1}, vr6, vr1
000568  42130502  vload_mask16.mz vr6{mr1}, 0(r10)
00056c  ea202034  vor.u.mh vr1{mr2}, zero, vr2
000570  96951502  vadd.f.mz.rn vr11{mr1}, vr11, vr1
000574  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
000578  1f048400  addli r8, r8, 64
00057c  3f8e57fe  blt.s r15, r5, -128
000580  4610b602  vstore_mask16.mz vr11{mr1}, 0(r12)
000584  1f050000  addli r10, zero, 0
000588  1f040000  addli r8, zero, 0
00058c  00a00000  mfence { lm }
000590  8b10a610  add.s r1, r12, r10
000594  1f450500  addli r10, r10, 4
000598  e3800000  loadli.w r1,  0(r1)
00059c  0b641410  add.f.rn r8, r8, r1
0005a0  bb4f75fe  bneq r10, r7, -16
0005a4  9f000fdc  addli r1, r30, -4608
0005a8  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
0005ac  9f000fda  addli r1, r30, -4864
0005b0  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0005b4  9f000fdd  addli r1, r30, -4480
0005b8  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0005bc  3f130901  blt.s r18, r16, 196
0005c0  db010000  j 12
0005c4  1f040000  addli r8, zero, 0
0005c8  bf620901  blt.s r18, r16, 184
0005cc  e300dfda  loadli.w r1,  -4760(r30)
0005d0  73e08000  stores.w r8, 0(r1)
0005d4  00a00300  mfence { lm, sm, gm }
0005d8  e340efdd  loadli.w r1,  -4364(r30)
0005dc  80a10004  csr_set csr3, r1
0005e0  00d00100  sync_group
0005e4  bb710901  bneq r18, r16, 124
0005e8  e340efd9  loadli.w r1,  -4876(r30)
0005ec  efc00000  loads.w r1, 0(r1)
0005f0  0b641410  add.f.rn r8, r8, r1
0005f4  db110000  j 140
0005f8  e308efd9  loadli.w r17,  -4880(r30)
0005fc  1f050900  addli r10, r18, 0
000600  db020000  j 20
000604  1f75f5ff  addli r10, r10, -1
000608  9fc80800  addli r17, r17, 4
00060c  9f070400  addli r15, r8, 0
000610  370b05fe  beq r10, zero, -320
000614  6fc40800  loads.w r8, 0(r17)
000618  9bb69700  slli r13, r15, 9
00061c  1bc77701  srli r14, r15, 23
000620  93860600  seteq r13, r13, zero
000624  1b07f70f  andi r14, r14, 255
000628  1b77f70f  setlti r14, r14, 255
00062c  9716d700  or r13, r14, r13
000630  9b399400  slli r19, r8, 9
000634  9b407401  srli r1, r8, 23
000638  13ed8704  setlt.f r26, r15, r8
00063c  93890900  seteq r19, r19, zero
000640  9b80f00f  andi r1, r1, 255
000644  9bf0f00f  setlti r1, r1, 255
000648  97903001  or r1, r1, r19
00064c  9780d000  and r1, r1, r13
000650  97001d00  and r1, r26, r1
000654  bbce00fe  bneq r1, zero, -80
000658  1f840700  addli r8, r15, 0
00065c  5bf5ffff  j -88
000660  6345dfd9  loadli.w r10,  -4884(r30)
000664  1f040000  addli r8, zero, 0
000668  9f070900  addli r15, r18, 0
00066c  ef400500  loads.w r1, 0(r10)
000670  9ff7f7ff  addli r15, r15, -1
000674  1f450500  addli r10, r10, 4
000678  0b641410  add.f.rn r8, r8, r1
00067c  bbcf07fe  bneq r15, zero, -16
000680  4bc3b400  ble.s r9, r11, 208
000684  00a00000  mfence { lm }
000688  3fa24200  blt.s r5, r4, 136
00068c  8f008c18  div.f.rn r1, r24, r8
000690  1f040fdf  addli r8, r30, -4224
000694  9f050fdf  addli r11, r30, -4224
000698  9f070000  addli r15, zero, 0
00069c  6a952022  vor.f.mz vr10{mr1}, r1, vr2
0006a0  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
0006a4  9f008400  addli r1, r8, 64
0006a8  9f874700  addli r15, r15, 32
0006ac  1f040401  addli r8, r8, 128
0006b0  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0006b4  8e101502  vmul.f.mz.rn vr1{mr1}, vr10, vr1
0006b8  8e113502  vmul.f.mz.rn vr3{mr1}, vr10, vr3
0006bc  6eb213c2  vsrl.s.mz vr4{mr1}, vr7, vr1
0006c0  6eb333c2  vsrl.s.mz vr6{mr1}, vr7, vr3
0006c4  6a324202  vand.s.mz vr4{mr1}, r4, vr4
0006c8  6a336202  vand.s.mz vr6{mr1}, r4, vr6
0006cc  16b24002  vadd.s.mz vr4{mr1}, vr1, vr4
0006d0  e69000c0  vabs.f vr1, vr1
0006d4  16b36102  vadd.s.mz vr6{mr1}, vr3, vr6
0006d8  12324302  vadd.s.mz vr4{mr1}, r6, vr4
0006dc  72a11142  vlt.u.mz mr2{mr1}, r3, vr1
0006e0  e69001c0  vabs.f vr1, vr3
0006e4  12336302  vadd.s.mz vr6{mr1}, r6, vr6
0006e8  6ab24c02  vand.s.mz vr4{mr1}, r25, vr4
0006ec  eab16c02  vand.s.mz vr3{mr1}, r25, vr6
0006f0  6a222134  vor.u.mh vr4{mr2}, r2, vr2
0006f4  72a11142  vlt.u.mz mr2{mr1}, r3, vr1
0006f8  ea212134  vor.u.mh vr3{mr2}, r2, vr2
0006fc  eeb043c2  vsrl.s.mz vr1{mr1}, vr7, vr4
000700  eeb01122  vor.s.mz vr1{mr1}, vr3, vr1
000704  46801502  vstore.mz vr1{mr1}, 0(r11)
000708  9f858500  addli r11, r11, 64
00070c  3fde57fe  blt.s r15, r5, -108
000710  1f04ffda  addli r8, r30, -4744
000714  ab0000f0  lui r1, 983040
000718  6b550400  load.d r[11:12], 0(r8)
00071c  1f04ffdd  addli r8, r30, -4360
000720  eb560400  load.d r[14:15], 0(r8)
000724  6344dfdc  loadli.w r8,  -4500(r30)
000728  00a00000  mfence { lm }
00072c  97101400  or r1, r8, r1
000730  0b25d510  add.ul r[11:12], r[11:12], r[14:15]
000734  1f040fdf  addli r8, r30, -4224
000738  ff308500  s_lm2gm r1, r8, 0(r[11:12])
00073c  9f008fde  addli r1, r30, -4288
000740  00a00200  mfence { lm, gm }
000744  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
000748  9f000fdd  addli r1, r30, -4480
00074c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000750  3f4009ff  blt.s r18, r16, -1008
000754  e340efdd  loadli.w r1,  -4364(r30)
000758  80a10004  csr_set csr3, r1
00075c  00d00100  sync_group
000760  5b80ffff  j -1024
000764  9f0e8fd9  addli sp, r30, -4928
000768  e38f2e26  loadli.w r31,  4880(sp)
00076c  63cf2e26  loadli.w r30,  4884(sp)
000770  638e3e26  loadli.w r28,  4888(sp)
000774  e3cd3e26  loadli.w r27,  4892(sp)
000778  638d4e26  loadli.w r26,  4896(sp)
00077c  e3cc4e26  loadli.w r25,  4900(sp)
000780  638c5e26  loadli.w r24,  4904(sp)
000784  e3cb5e26  loadli.w r23,  4908(sp)
000788  638b6e26  loadli.w r22,  4912(sp)
00078c  e3ca6e26  loadli.w r21,  4916(sp)
000790  638a7e26  loadli.w r20,  4920(sp)
000794  e3c97e26  loadli.w r19,  4924(sp)
000798  9f8e8e26  addli sp, sp, 4928
00079c  5f800f00  jr r31, 0
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
