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
0000fc  4b215b01  ble.s r22, r21, 72
000100  80db0002  load_param_i r23, 1
000104  1f3c5001  addli r24, zero, 171
000108  9f0c0010  addli r25, zero, 2048
00010c  1f0d0008  addli r26, zero, 1024
000110  8b904a31  div.s r1, r21, r20
000114  6b510f00  load.d r[3:4], 0(r30)
000118  6b528f00  load.d r[5:6], 8(r30)
00011c  6b530f01  load.d r[7:8], 16(r30)
000120  67c0ae01  storeli.w r26, 4(sp)
000124  67809e01  storeli.w r25, 0(sp)
000128  8b903031  div.s r1, r1, r19
00012c  0b948021  mul.s r8, r1, r24
000130  8b908c18  sub.s r1, r25, r8
000134  8b948041  min.s r9, r1, r24
000138  572a0000  jal 336
00013c  8b9a7a11  add.s r21, r21, r23
000140  3fcf6aff  blt.s r21, r22, -48
000144  9f8e8e00  addli sp, sp, 64
000148  00a00300  mfence { lm, sm, gm }
00014c  00100000  exit
000150  9f8e8ed9  addli sp, sp, -4928
000154  67c1ee27  storeli.w r30, 4884(sp)
000158  1f8f8e26  addli r30, sp, 4928
00015c  e7c33e27  storeli.w r19, 4924(sp)
000160  e7834e27  storeli.w r20, 4920(sp)
000164  67c35e27  storeli.w r21, 4916(sp)
000168  67836e27  storeli.w r22, 4912(sp)
00016c  e7c27e27  storeli.w r23, 4908(sp)
000170  e7828e27  storeli.w r24, 4904(sp)
000174  67c29e27  storeli.w r25, 4900(sp)
000178  6782ae27  storeli.w r26, 4896(sp)
00017c  e7c1be27  storeli.w r27, 4892(sp)
000180  e781ce27  storeli.w r28, 4888(sp)
000184  6781fe27  storeli.w r31, 4880(sp)
000188  9f00ffda  addli r1, r30, -4744
00018c  e7478fdc  storeli.w r8, -4484(r30)
000190  73b06000  store.d r[7:8], 0(r1)
000194  9f00efda  addli r1, r30, -4752
000198  73b02000  store.d r[3:4], 0(r1)
00019c  2b010000  lui r2, 0
0001a0  80310002  core_id r3
0001a4  1f010100  addli r2, r2, 0
0001a8  3be00100  bneq r3, zero, 24
0001ac  e3000f00  loadli.w r1,  0(r30)
0001b0  2b0300f0  lui r6, 983040
0001b4  9bb01000  slli r1, r1, 1
0001b8  97906000  or r1, r1, r6
0001bc  ff002200  l_gm2sm r1, r2, 0(r[5:6])
0001c0  abf00000  lui r1, 15
0001c4  1f120000  addli r4, zero, 1
0001c8  00200300  mfence { sm, gm }
0001cc  9b90f0ff  ori r1, r1, 4095
0001d0  e74f1fdc  storeli.w r1, -4356(r30)
0001d4  80a10004  csr_set csr3, r1
0001d8  00d00100  sync_group
0001dc  3fb54402  blt.s r9, r4, 1356
0001e0  ab150000  lui r11, 1
0001e4  9f030fdf  addli r7, r30, -4224
0001e8  63030f00  loadli.w r6,  0(r30)
0001ec  e3420f00  loadli.w r5,  4(r30)
0001f0  1bb52100  slli r10, r3, 2
0001f4  1ba61100  xori r12, r3, 1
0001f8  ab160000  lui r13, 1
0001fc  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
000200  ab0cffff  lui r25, 1048560
000204  9f290000  addli r19, zero, 2
000208  2b0e0080  lui r28, 524288
00020c  2b08fc42  lui r16, 274368
000210  2b0b404b  lui r22, 308224
000214  ab0b40cb  lui r23, 832512
000218  2b0c803f  lui r24, 260096
00021c  9f800310  addli r1, r7, 2048
000220  9f850500  addli r11, r11, 0
000224  1b362600  slli r12, r12, 2
000228  9f860602  addli r13, r13, 256
00022c  0b145330  div.s r8, r6, r5
000230  33170328  sext_int2long r[15:16], r6
000234  e74f1fda  storeli.w r1, -4612(r30)
000238  8b10b510  add.s r1, r10, r11
00023c  e7461fda  storeli.w r1, -4756(r30)
000240  9f00efdc  addli r1, r30, -4496
000244  73b0e000  store.d r[15:16], 0(r1)
000248  9bb01200  slli r1, r5, 1
00024c  8b938138  mod.s r7, r3, r8
000250  e7461fdc  storeli.w r1, -4500(r30)
000254  8b10b610  add.s r1, r12, r11
000258  e70f1fd8  storeli.w r1, -4872(r30)
00025c  8b908130  div.s r1, r3, r8
000260  0b935320  mul.s r6, r7, r5
000264  9b311300  slli r3, r6, 1
000268  33170328  sext_int2long r[15:16], r6
00026c  e7061fdc  storeli.w r1, -4504(r30)
000270  9f00cfdc  addli r1, r30, -4512
000274  73b0e000  store.d r[15:16], 0(r1)
000278  8b902110  add.s r1, r3, r2
00027c  1bb12300  slli r2, r7, 2
000280  9f012000  addli r3, zero, 16
000284  9f038000  addli r7, zero, 64
000288  e74f1fd8  storeli.w r1, -4868(r30)
00028c  8b10d510  add.s r1, r10, r13
000290  0b112518  sub.s r2, r10, r2
000294  eaa32122  vor.u.mz vr7{mr1}, r3, vr2
000298  ab812139  lui r3, 234008
00029c  e7061fda  storeli.w r1, -4760(r30)
0002a0  8b10d610  add.s r1, r12, r13
0002a4  1b9a9148  ori r20, r3, 1161
0002a8  ab51633d  lui r3, 251445
0002ac  1f060fff  addli r12, r30, -128
0002b0  674f1fd8  storeli.w r1, -4876(r30)
0002b4  8b10b110  add.s r1, r2, r11
0002b8  9b917184  ori r3, r3, 2119
0002bc  670f1fd8  storeli.w r1, -4880(r30)
0002c0  8b10d110  add.s r1, r2, r13
0002c4  2b0180ff  lui r2, 1046528
0002c8  ea922122  vor.f.mz vr5{mr1}, r3, vr2
0002cc  ab71313f  lui r3, 258839
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
000300  9f010000  addli r3, zero, 0
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
000358  5b030000  j 24
00035c  80500102  load_param_i r1, 2
000360  8b908030  div.s r1, r1, r8
000364  8b913010  add.s r3, r1, r3
000368  3fa09100  blt.s r3, r9, 8
00036c  db770000  j 956
000370  e300dfdc  loadli.w r1,  -4504(r30)
000374  ab0a80ff  lui r21, 1046528
000378  0b911110  add.s r2, r3, r1
00037c  e340ffdc  loadli.w r1,  -4484(r30)
000380  0b151110  add.s r10, r2, r1
000384  9f00efdc  addli r1, r30, -4496
000388  ebd60000  load.d r[14:15], 0(r1)
00038c  33150528  sext_int2long r[11:12], r10
000390  9f00cfdc  addli r1, r30, -4512
000394  0b35d520  mul.sl r[11:12], r[11:12], r[14:15]
000398  ebd60000  load.d r[14:15], 0(r1)
00039c  0b25d510  add.ul r[11:12], r[11:12], r[14:15]
0003a0  97364502  sll.d r[14:15], r[11:12], r4
0003a4  cb922400  ble.s r9, r2, 164
0003a8  9f00efda  addli r1, r30, -4752
0003ac  2b0500f0  lui r10, 983040
0003b0  ebd80000  load.d r[18:19], 0(r1)
0003b4  e340dfdc  loadli.w r1,  -4500(r30)
0003b8  1795a000  or r10, r1, r10
0003bc  e340ffdb  loadli.w r1,  -4612(r30)
0003c0  8ba8d810  add.ul r[18:19], r[18:19], r[14:15]
0003c4  7fa51800  l_gm2lm r10, r1, 0(r[18:19])
0003c8  9f000fdb  addli r1, r30, -4736
0003cc  00a00200  mfence { lm, gm }
0003d0  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0003d4  bf814200  blt.s r5, r4, 96
0003d8  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0003dc  e347ffdb  loadli.w r15,  -4612(r30)
0003e0  e34affd9  loadli.w r21,  -4868(r30)
0003e4  1f050000  addli r10, zero, 0
0003e8  9f050fdf  addli r11, r30, -4224
0003ec  ca850a02  vloads.mz vr11{mr1}, 0(r21)
0003f0  c2800702  vload.mz vr1{mr1}, 0(r15)
0003f4  9f888500  addli r17, r11, 64
0003f8  1f054500  addli r10, r10, 32
0003fc  9f8a8a00  addli r21, r21, 64
000400  9f878700  addli r15, r15, 64
000404  eeb113a2  vsll.s.mz vr3{mr1}, vr7, vr1
000408  eab01c02  vand.s.mz vr1{mr1}, r25, vr1
00040c  6eb2b3a2  vsll.s.mz vr4{mr1}, vr7, vr11
000410  eab5bc02  vand.s.mz vr11{mr1}, r25, vr11
000414  96914102  vadd.f.mz.rn vr3{mr1}, vr3, vr4
000418  9690b002  vadd.f.mz.rn vr1{mr1}, vr1, vr11
00041c  36921102  vmax.f.mz vr4{mr1}, vr3, vr1
000420  46903502  vstore_mask16.mz vr3{mr1}, 0(r11)
000424  9f850501  addli r11, r11, 128
000428  46901802  vstore_mask16.mz vr1{mr1}, 0(r17)
00042c  36154502  vmax.f.mz vr10{mr1}, vr10, vr4
000430  bf7e55fe  blt.s r10, r5, -68
000434  9f000fdc  addli r1, r30, -4608
000438  fa1a0560  vrmax.f r21, vr10
00043c  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
000440  9f000fdd  addli r1, r30, -4480
000444  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000448  bf213401  blt.s r8, r19, 104
00044c  e340dfda  loadli.w r1,  -4756(r30)
000450  73e05001  stores.w r21, 0(r1)
000454  00a00300  mfence { lm, sm, gm }
000458  e340ffdd  loadli.w r1,  -4356(r30)
00045c  80a10004  csr_set csr3, r1
000460  00d00100  sync_group
000464  bb753401  bneq r8, r19, 380
000468  e300ffd9  loadli.w r1,  -4872(r30)
00046c  1bb59a00  slli r10, r21, 9
000470  9bc77a01  srli r15, r21, 23
000474  13050500  seteq r10, r10, zero
000478  9b87f70f  andi r15, r15, 255
00047c  efc50000  loads.w r11, 0(r1)
000480  9bf7f70f  setlti r15, r15, 255
000484  1795a700  or r10, r15, r10
000488  9bb89500  slli r17, r11, 9
00048c  1bc97501  srli r18, r11, 23
000490  93e9ba04  setlt.f r19, r21, r11
000494  93880800  seteq r17, r17, zero
000498  1b09f90f  andi r18, r18, 255
00049c  1b79f90f  setlti r18, r18, 255
0004a0  97181901  or r17, r18, r17
0004a4  1785a800  and r10, r17, r10
0004a8  1785a900  and r10, r19, r10
0004ac  3b200500  bneq r10, zero, 8
0004b0  9f850a00  addli r11, r21, 0
0004b4  cbd32400  ble.s r9, r2, 244
0004b8  1234b002  vadd.s.mz vr8{mr1}, zero, vr11
0004bc  92352002  vadd.s.mz vr11{mr1}, zero, vr2
0004c0  92331002  vadd.s.mz vr7{mr1}, zero, vr1
0004c4  00a00000  mfence { lm }
0004c8  3fe24200  blt.s r5, r4, 152
0004cc  6a952522  vor.f.mz vr10{mr1}, r11, vr2
0004d0  92352002  vadd.s.mz vr11{mr1}, zero, vr2
0004d4  9f0a0000  addli r21, zero, 0
0004d8  9f050fdf  addli r11, r30, -4224
0004dc  c2900502  vload_mask16.mz vr1{mr1}, 0(r11)
0004e0  9f000fde  addli r1, r30, -4352
0004e4  9f8a2a00  addli r21, r21, 16
0004e8  9e90a002  vsub.f.mz.rn vr1{mr1}, vr1, vr10
0004ec  8a901d02  vmul.f.mz.rn vr1{mr1}, r27, vr1
0004f0  9a111e02  vsub.f.mz.rn vr3{mr1}, r28, vr1
0004f4  72113842  vlt.f.mz mr2{mr1}, r16, vr3
0004f8  ea206034  vor.u.mh vr1{mr2}, zero, vr6
0004fc  12339002  vadd.s.mz vr6{mr1}, zero, vr9
000500  92111b02  vadd.f.mz.rn vr3{mr1}, r22, vr1
000504  12923b02  vadd.f.mz.rn vr4{mr1}, r23, vr3
000508  ee3134a2  vsll.s.mz vr3{mr1}, vr8, vr3
00050c  9e904002  vsub.f.mz.rn vr1{mr1}, vr1, vr4
000510  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
000514  9f008fde  addli r1, r30, -4288
000518  22121a02  vmac.f.mz.rn vr4{mr1}, r20, vr1
00051c  26131202  vmac.f.mz.rn vr6{mr1}, vr4, vr1
000520  12325002  vadd.s.mz vr4{mr1}, zero, vr5
000524  26121302  vmac.f.mz.rn vr4{mr1}, vr6, vr1
000528  12330002  vadd.s.mz vr6{mr1}, zero, vr0
00052c  26131202  vmac.f.mz.rn vr6{mr1}, vr4, vr1
000530  12327002  vadd.s.mz vr4{mr1}, zero, vr7
000534  26121302  vmac.f.mz.rn vr4{mr1}, vr6, vr1
000538  6a132c22  vor.f.mz vr6{mr1}, r24, vr2
00053c  26131202  vmac.f.mz.rn vr6{mr1}, vr4, vr1
000540  92303c02  vadd.s.mz vr1{mr1}, r24, vr3
000544  8e101302  vmul.f.mz.rn vr1{mr1}, vr6, vr1
000548  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
00054c  ea202034  vor.u.mh vr1{mr2}, zero, vr2
000550  96951502  vadd.f.mz.rn vr11{mr1}, vr11, vr1
000554  46901502  vstore_mask16.mz vr1{mr1}, 0(r11)
000558  9f858500  addli r11, r11, 64
00055c  3f8e5afe  blt.s r21, r5, -128
000560  4610b602  vstore_mask16.mz vr11{mr1}, 0(r12)
000564  1f050000  addli r10, zero, 0
000568  9f050000  addli r11, zero, 0
00056c  9f290000  addli r19, zero, 2
000570  00a00000  mfence { lm }
000574  8b10a610  add.s r1, r12, r10
000578  1f450500  addli r10, r10, 4
00057c  e3800000  loadli.w r1,  0(r1)
000580  8be51510  add.f.rn r11, r11, r1
000584  bb4f75fe  bneq r10, r7, -16
000588  9f000fdc  addli r1, r30, -4608
00058c  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
000590  9f000fda  addli r1, r30, -4864
000594  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
000598  9f000fdd  addli r1, r30, -4480
00059c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0005a0  3f233401  blt.s r8, r19, 200
0005a4  5b020000  j 16
0005a8  9f050000  addli r11, zero, 0
0005ac  9f290000  addli r19, zero, 2
0005b0  bf623401  blt.s r8, r19, 184
0005b4  e300dfda  loadli.w r1,  -4760(r30)
0005b8  73e0b000  stores.w r11, 0(r1)
0005bc  00a00300  mfence { lm, sm, gm }
0005c0  e340ffdd  loadli.w r1,  -4356(r30)
0005c4  80a10004  csr_set csr3, r1
0005c8  00d00100  sync_group
0005cc  bb713401  bneq r8, r19, 124
0005d0  e340efd9  loadli.w r1,  -4876(r30)
0005d4  efc00000  loads.w r1, 0(r1)
0005d8  8be51510  add.f.rn r11, r11, r1
0005dc  db110000  j 140
0005e0  e307efd9  loadli.w r15,  -4880(r30)
0005e4  1f050400  addli r10, r8, 0
0005e8  db020000  j 20
0005ec  1f75f5ff  addli r10, r10, -1
0005f0  9fc70700  addli r15, r15, 4
0005f4  9f8a0500  addli r21, r11, 0
0005f8  b77a05fe  beq r10, zero, -324
0005fc  efc50700  loads.w r11, 0(r15)
000600  9bb89a00  slli r17, r21, 9
000604  1bc97a01  srli r18, r21, 23
000608  93880800  seteq r17, r17, zero
00060c  1b09f90f  andi r18, r18, 255
000610  1b79f90f  setlti r18, r18, 255
000614  97181901  or r17, r18, r17
000618  9bb99500  slli r19, r11, 9
00061c  9bc07501  srli r1, r11, 23
000620  13edba04  setlt.f r26, r21, r11
000624  93890900  seteq r19, r19, zero
000628  9b80f00f  andi r1, r1, 255
00062c  9bf0f00f  setlti r1, r1, 255
000630  97903001  or r1, r1, r19
000634  97801001  and r1, r1, r17
000638  97001d00  and r1, r26, r1
00063c  bbce00fe  bneq r1, zero, -80
000640  9f850a00  addli r11, r21, 0
000644  5bf5ffff  j -88
000648  6345dfd9  loadli.w r10,  -4884(r30)
00064c  9f050000  addli r11, zero, 0
000650  9f070400  addli r15, r8, 0
000654  ef400500  loads.w r1, 0(r10)
000658  9ff7f7ff  addli r15, r15, -1
00065c  1f450500  addli r10, r10, 4
000660  8be51510  add.f.rn r11, r11, r1
000664  bbcf07fe  bneq r15, zero, -16
000668  cbb22400  ble.s r9, r2, 172
00066c  00a00000  mfence { lm }
000670  bfb14200  blt.s r5, r4, 108
000674  8f00bc18  div.f.rn r1, r24, r11
000678  1f010fdf  addli r2, r30, -4224
00067c  1f050fdf  addli r10, r30, -4224
000680  9f050000  addli r11, zero, 0
000684  6a952022  vor.f.mz vr10{mr1}, r1, vr2
000688  9f008100  addli r1, r2, 64
00068c  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
000690  9f854500  addli r11, r11, 32
000694  1f010101  addli r2, r2, 128
000698  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
00069c  8e101502  vmul.f.mz.rn vr1{mr1}, vr10, vr1
0006a0  8e113502  vmul.f.mz.rn vr3{mr1}, vr10, vr3
0006a4  6eb213c2  vsrl.s.mz vr4{mr1}, vr7, vr1
0006a8  6eb333c2  vsrl.s.mz vr6{mr1}, vr7, vr3
0006ac  6a324202  vand.s.mz vr4{mr1}, r4, vr4
0006b0  6a336202  vand.s.mz vr6{mr1}, r4, vr6
0006b4  96b04002  vadd.s.mz vr1{mr1}, vr1, vr4
0006b8  96b16102  vadd.s.mz vr3{mr1}, vr3, vr6
0006bc  92301302  vadd.s.mz vr1{mr1}, r6, vr1
0006c0  92313302  vadd.s.mz vr3{mr1}, r6, vr3
0006c4  eeb013c2  vsrl.s.mz vr1{mr1}, vr7, vr1
0006c8  eab13c02  vand.s.mz vr3{mr1}, r25, vr3
0006cc  eeb01122  vor.s.mz vr1{mr1}, vr3, vr1
0006d0  46001502  vstore.mz vr1{mr1}, 0(r10)
0006d4  1f058500  addli r10, r10, 64
0006d8  bfce55fe  blt.s r11, r5, -80
0006dc  1f01ffda  addli r2, r30, -4744
0006e0  ab0000f0  lui r1, 983040
0006e4  6b550100  load.d r[11:12], 0(r2)
0006e8  6341dfdc  loadli.w r2,  -4500(r30)
0006ec  00a00000  mfence { lm }
0006f0  97101100  or r1, r2, r1
0006f4  0b25d510  add.ul r[11:12], r[11:12], r[14:15]
0006f8  1f010fdf  addli r2, r30, -4224
0006fc  ff302500  s_lm2gm r1, r2, 0(r[11:12])
000700  9f008fde  addli r1, r30, -4288
000704  00a00200  mfence { lm, gm }
000708  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
00070c  9f000fdd  addli r1, r30, -4480
000710  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000714  3f2134ff  blt.s r8, r19, -952
000718  e340ffdd  loadli.w r1,  -4356(r30)
00071c  80a10004  csr_set csr3, r1
000720  00d00100  sync_group
000724  5b87ffff  j -968
000728  9f0e8fd9  addli sp, r30, -4928
00072c  e38f2e26  loadli.w r31,  4880(sp)
000730  63cf2e26  loadli.w r30,  4884(sp)
000734  638e3e26  loadli.w r28,  4888(sp)
000738  e3cd3e26  loadli.w r27,  4892(sp)
00073c  638d4e26  loadli.w r26,  4896(sp)
000740  e3cc4e26  loadli.w r25,  4900(sp)
000744  638c5e26  loadli.w r24,  4904(sp)
000748  e3cb5e26  loadli.w r23,  4908(sp)
00074c  638b6e26  loadli.w r22,  4912(sp)
000750  e3ca6e26  loadli.w r21,  4916(sp)
000754  638a7e26  loadli.w r20,  4920(sp)
000758  e3c97e26  loadli.w r19,  4924(sp)
00075c  9f8e8e26  addli sp, sp, 4928
000760  5f800f00  jr r31, 0
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
