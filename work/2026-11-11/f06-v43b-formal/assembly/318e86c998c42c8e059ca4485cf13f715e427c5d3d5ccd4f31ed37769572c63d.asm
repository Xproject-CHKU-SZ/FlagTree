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
000104  1f6c0000  addli r24, zero, 6
000108  9f0c8000  addli r25, zero, 64
00010c  1f0d0001  addli r26, zero, 128
000110  9f0d0008  addli r27, zero, 1024
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
0001d4  e74f1fdc  storeli.w r1, -4356(r30)
0001d8  80a10004  csr_set csr3, r1
0001dc  00d00100  sync_group
0001e0  3fb54402  blt.s r9, r4, 1356
0001e4  ab150000  lui r11, 1
0001e8  9f030fdf  addli r7, r30, -4224
0001ec  63030f00  loadli.w r6,  0(r30)
0001f0  e3420f00  loadli.w r5,  4(r30)
0001f4  1bb52100  slli r10, r3, 2
0001f8  1ba61100  xori r12, r3, 1
0001fc  ab160000  lui r13, 1
000200  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
000204  ab0cffff  lui r25, 1048560
000208  9f290000  addli r19, zero, 2
00020c  2b0e0080  lui r28, 524288
000210  2b08fc42  lui r16, 274368
000214  2b0b404b  lui r22, 308224
000218  ab0b40cb  lui r23, 832512
00021c  2b0c803f  lui r24, 260096
000220  9f800310  addli r1, r7, 2048
000224  9f850500  addli r11, r11, 0
000228  1b362600  slli r12, r12, 2
00022c  9f860602  addli r13, r13, 256
000230  0b145330  div.s r8, r6, r5
000234  33170328  sext_int2long r[15:16], r6
000238  e74f1fda  storeli.w r1, -4612(r30)
00023c  8b10b510  add.s r1, r10, r11
000240  e7461fda  storeli.w r1, -4756(r30)
000244  9f00efdc  addli r1, r30, -4496
000248  73b0e000  store.d r[15:16], 0(r1)
00024c  9bb01200  slli r1, r5, 1
000250  8b938138  mod.s r7, r3, r8
000254  e7461fdc  storeli.w r1, -4500(r30)
000258  8b10b610  add.s r1, r12, r11
00025c  e70f1fd8  storeli.w r1, -4872(r30)
000260  8b908130  div.s r1, r3, r8
000264  0b935320  mul.s r6, r7, r5
000268  9b311300  slli r3, r6, 1
00026c  33170328  sext_int2long r[15:16], r6
000270  e7061fdc  storeli.w r1, -4504(r30)
000274  9f00cfdc  addli r1, r30, -4512
000278  73b0e000  store.d r[15:16], 0(r1)
00027c  8b902110  add.s r1, r3, r2
000280  1bb12300  slli r2, r7, 2
000284  9f012000  addli r3, zero, 16
000288  9f038000  addli r7, zero, 64
00028c  e74f1fd8  storeli.w r1, -4868(r30)
000290  8b10d510  add.s r1, r10, r13
000294  0b112518  sub.s r2, r10, r2
000298  eaa32122  vor.u.mz vr7{mr1}, r3, vr2
00029c  ab812139  lui r3, 234008
0002a0  e7061fda  storeli.w r1, -4760(r30)
0002a4  8b10d610  add.s r1, r12, r13
0002a8  1b9a9148  ori r20, r3, 1161
0002ac  ab51633d  lui r3, 251445
0002b0  1f060fff  addli r12, r30, -128
0002b4  674f1fd8  storeli.w r1, -4876(r30)
0002b8  8b10b110  add.s r1, r2, r11
0002bc  9b917184  ori r3, r3, 2119
0002c0  670f1fd8  storeli.w r1, -4880(r30)
0002c4  8b10d110  add.s r1, r2, r13
0002c8  2b0180ff  lui r2, 1046528
0002cc  ea922122  vor.f.mz vr5{mr1}, r3, vr2
0002d0  ab71313f  lui r3, 258839
0002d4  ea102122  vor.f.mz vr1{mr1}, r2, vr2
0002d8  2ba1b83f  lui r2, 261002
0002dc  e74e1fd8  storeli.w r1, -4884(r30)
0002e0  9f000fdb  addli r1, r30, -4736
0002e4  9b918121  ori r3, r3, 536
0002e8  9b1db1a3  ori r27, r2, 2619
0002ec  2b01fcc2  lui r2, 798656
0002f0  6a232122  vor.u.mz vr6{mr1}, r2, vr2
0002f4  1f712000  addli r2, zero, 23
0002f8  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0002fc  9f008fde  addli r1, r30, -4288
000300  ea902122  vor.f.mz vr1{mr1}, r3, vr2
000304  9f010000  addli r3, zero, 0
000308  ea252122  vor.u.mz vr11{mr1}, r2, vr2
00030c  2bc1ae3a  lui r2, 240364
000310  1b11f13f  ori r2, r2, 1023
000314  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
000318  9f000fdc  addli r1, r30, -4608
00031c  6a142122  vor.f.mz vr8{mr1}, r2, vr2
000320  2b911d3c  lui r2, 246233
000324  4690b002  vstore_mask16.mz vr11{mr1}, 0(r1)
000328  9f000fdd  addli r1, r30, -4480
00032c  1b11b155  ori r2, r2, 1371
000330  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000334  9f000fda  addli r1, r30, -4864
000338  ea142122  vor.f.mz vr9{mr1}, r2, vr2
00033c  2bf1753e  lui r2, 255839
000340  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
000344  9f000fde  addli r1, r30, -4352
000348  1b1101df  ori r2, r2, 3568
00034c  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
000350  6a102122  vor.f.mz vr0{mr1}, r2, vr2
000354  2b710000  lui r2, 7
000358  1b13f1ff  ori r6, r2, 4095
00035c  5b030000  j 24
000360  80500102  load_param_i r1, 2
000364  8b908030  div.s r1, r1, r8
000368  8b913010  add.s r3, r1, r3
00036c  3fa09100  blt.s r3, r9, 8
000370  db770000  j 956
000374  e300dfdc  loadli.w r1,  -4504(r30)
000378  ab0a80ff  lui r21, 1046528
00037c  0b911110  add.s r2, r3, r1
000380  e340ffdc  loadli.w r1,  -4484(r30)
000384  0b151110  add.s r10, r2, r1
000388  9f00efdc  addli r1, r30, -4496
00038c  ebd60000  load.d r[14:15], 0(r1)
000390  33150528  sext_int2long r[11:12], r10
000394  9f00cfdc  addli r1, r30, -4512
000398  0b35d520  mul.sl r[11:12], r[11:12], r[14:15]
00039c  ebd60000  load.d r[14:15], 0(r1)
0003a0  0b25d510  add.ul r[11:12], r[11:12], r[14:15]
0003a4  97364502  sll.d r[14:15], r[11:12], r4
0003a8  cb922400  ble.s r9, r2, 164
0003ac  9f00efda  addli r1, r30, -4752
0003b0  2b0500f0  lui r10, 983040
0003b4  ebd80000  load.d r[18:19], 0(r1)
0003b8  e340dfdc  loadli.w r1,  -4500(r30)
0003bc  1795a000  or r10, r1, r10
0003c0  e340ffdb  loadli.w r1,  -4612(r30)
0003c4  8ba8d810  add.ul r[18:19], r[18:19], r[14:15]
0003c8  7fa51800  l_gm2lm r10, r1, 0(r[18:19])
0003cc  9f000fdb  addli r1, r30, -4736
0003d0  00a00200  mfence { lm, gm }
0003d4  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0003d8  bf814200  blt.s r5, r4, 96
0003dc  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0003e0  e347ffdb  loadli.w r15,  -4612(r30)
0003e4  e34affd9  loadli.w r21,  -4868(r30)
0003e8  1f050000  addli r10, zero, 0
0003ec  9f050fdf  addli r11, r30, -4224
0003f0  ca850a02  vloads.mz vr11{mr1}, 0(r21)
0003f4  c2800702  vload.mz vr1{mr1}, 0(r15)
0003f8  9f888500  addli r17, r11, 64
0003fc  1f054500  addli r10, r10, 32
000400  9f8a8a00  addli r21, r21, 64
000404  9f878700  addli r15, r15, 64
000408  eeb113a2  vsll.s.mz vr3{mr1}, vr7, vr1
00040c  eab01c02  vand.s.mz vr1{mr1}, r25, vr1
000410  6eb2b3a2  vsll.s.mz vr4{mr1}, vr7, vr11
000414  eab5bc02  vand.s.mz vr11{mr1}, r25, vr11
000418  96914102  vadd.f.mz.rn vr3{mr1}, vr3, vr4
00041c  9690b002  vadd.f.mz.rn vr1{mr1}, vr1, vr11
000420  36921102  vmax.f.mz vr4{mr1}, vr3, vr1
000424  46903502  vstore_mask16.mz vr3{mr1}, 0(r11)
000428  9f850501  addli r11, r11, 128
00042c  46901802  vstore_mask16.mz vr1{mr1}, 0(r17)
000430  36154502  vmax.f.mz vr10{mr1}, vr10, vr4
000434  bf7e55fe  blt.s r10, r5, -68
000438  9f000fdc  addli r1, r30, -4608
00043c  fa1a0560  vrmax.f r21, vr10
000440  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
000444  9f000fdd  addli r1, r30, -4480
000448  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
00044c  bf213401  blt.s r8, r19, 104
000450  e340dfda  loadli.w r1,  -4756(r30)
000454  73e05001  stores.w r21, 0(r1)
000458  00a00300  mfence { lm, sm, gm }
00045c  e340ffdd  loadli.w r1,  -4356(r30)
000460  80a10004  csr_set csr3, r1
000464  00d00100  sync_group
000468  bb753401  bneq r8, r19, 380
00046c  e300ffd9  loadli.w r1,  -4872(r30)
000470  1bb59a00  slli r10, r21, 9
000474  9bc77a01  srli r15, r21, 23
000478  13050500  seteq r10, r10, zero
00047c  9b87f70f  andi r15, r15, 255
000480  efc50000  loads.w r11, 0(r1)
000484  9bf7f70f  setlti r15, r15, 255
000488  1795a700  or r10, r15, r10
00048c  9bb89500  slli r17, r11, 9
000490  1bc97501  srli r18, r11, 23
000494  93e9ba04  setlt.f r19, r21, r11
000498  93880800  seteq r17, r17, zero
00049c  1b09f90f  andi r18, r18, 255
0004a0  1b79f90f  setlti r18, r18, 255
0004a4  97181901  or r17, r18, r17
0004a8  1785a800  and r10, r17, r10
0004ac  1785a900  and r10, r19, r10
0004b0  3b200500  bneq r10, zero, 8
0004b4  9f850a00  addli r11, r21, 0
0004b8  cbd32400  ble.s r9, r2, 244
0004bc  1234b002  vadd.s.mz vr8{mr1}, zero, vr11
0004c0  92352002  vadd.s.mz vr11{mr1}, zero, vr2
0004c4  92331002  vadd.s.mz vr7{mr1}, zero, vr1
0004c8  00a00000  mfence { lm }
0004cc  3fe24200  blt.s r5, r4, 152
0004d0  6a952522  vor.f.mz vr10{mr1}, r11, vr2
0004d4  92352002  vadd.s.mz vr11{mr1}, zero, vr2
0004d8  9f0a0000  addli r21, zero, 0
0004dc  9f050fdf  addli r11, r30, -4224
0004e0  c2900502  vload_mask16.mz vr1{mr1}, 0(r11)
0004e4  9f000fde  addli r1, r30, -4352
0004e8  9f8a2a00  addli r21, r21, 16
0004ec  9e90a002  vsub.f.mz.rn vr1{mr1}, vr1, vr10
0004f0  8a901d02  vmul.f.mz.rn vr1{mr1}, r27, vr1
0004f4  9a111e02  vsub.f.mz.rn vr3{mr1}, r28, vr1
0004f8  72113842  vlt.f.mz mr2{mr1}, r16, vr3
0004fc  ea206034  vor.u.mh vr1{mr2}, zero, vr6
000500  12339002  vadd.s.mz vr6{mr1}, zero, vr9
000504  92111b02  vadd.f.mz.rn vr3{mr1}, r22, vr1
000508  12923b02  vadd.f.mz.rn vr4{mr1}, r23, vr3
00050c  ee3134a2  vsll.s.mz vr3{mr1}, vr8, vr3
000510  9e904002  vsub.f.mz.rn vr1{mr1}, vr1, vr4
000514  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
000518  9f008fde  addli r1, r30, -4288
00051c  22121a02  vmac.f.mz.rn vr4{mr1}, r20, vr1
000520  26131202  vmac.f.mz.rn vr6{mr1}, vr4, vr1
000524  12325002  vadd.s.mz vr4{mr1}, zero, vr5
000528  26121302  vmac.f.mz.rn vr4{mr1}, vr6, vr1
00052c  12330002  vadd.s.mz vr6{mr1}, zero, vr0
000530  26131202  vmac.f.mz.rn vr6{mr1}, vr4, vr1
000534  12327002  vadd.s.mz vr4{mr1}, zero, vr7
000538  26121302  vmac.f.mz.rn vr4{mr1}, vr6, vr1
00053c  6a132c22  vor.f.mz vr6{mr1}, r24, vr2
000540  26131202  vmac.f.mz.rn vr6{mr1}, vr4, vr1
000544  92303c02  vadd.s.mz vr1{mr1}, r24, vr3
000548  8e101302  vmul.f.mz.rn vr1{mr1}, vr6, vr1
00054c  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
000550  ea202034  vor.u.mh vr1{mr2}, zero, vr2
000554  96951502  vadd.f.mz.rn vr11{mr1}, vr11, vr1
000558  46901502  vstore_mask16.mz vr1{mr1}, 0(r11)
00055c  9f858500  addli r11, r11, 64
000560  3f8e5afe  blt.s r21, r5, -128
000564  4610b602  vstore_mask16.mz vr11{mr1}, 0(r12)
000568  1f050000  addli r10, zero, 0
00056c  9f050000  addli r11, zero, 0
000570  9f290000  addli r19, zero, 2
000574  00a00000  mfence { lm }
000578  8b10a610  add.s r1, r12, r10
00057c  1f450500  addli r10, r10, 4
000580  e3800000  loadli.w r1,  0(r1)
000584  8be51510  add.f.rn r11, r11, r1
000588  bb4f75fe  bneq r10, r7, -16
00058c  9f000fdc  addli r1, r30, -4608
000590  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
000594  9f000fda  addli r1, r30, -4864
000598  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
00059c  9f000fdd  addli r1, r30, -4480
0005a0  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0005a4  3f233401  blt.s r8, r19, 200
0005a8  5b020000  j 16
0005ac  9f050000  addli r11, zero, 0
0005b0  9f290000  addli r19, zero, 2
0005b4  bf623401  blt.s r8, r19, 184
0005b8  e300dfda  loadli.w r1,  -4760(r30)
0005bc  73e0b000  stores.w r11, 0(r1)
0005c0  00a00300  mfence { lm, sm, gm }
0005c4  e340ffdd  loadli.w r1,  -4356(r30)
0005c8  80a10004  csr_set csr3, r1
0005cc  00d00100  sync_group
0005d0  bb713401  bneq r8, r19, 124
0005d4  e340efd9  loadli.w r1,  -4876(r30)
0005d8  efc00000  loads.w r1, 0(r1)
0005dc  8be51510  add.f.rn r11, r11, r1
0005e0  db110000  j 140
0005e4  e307efd9  loadli.w r15,  -4880(r30)
0005e8  1f050400  addli r10, r8, 0
0005ec  db020000  j 20
0005f0  1f75f5ff  addli r10, r10, -1
0005f4  9fc70700  addli r15, r15, 4
0005f8  9f8a0500  addli r21, r11, 0
0005fc  b77a05fe  beq r10, zero, -324
000600  efc50700  loads.w r11, 0(r15)
000604  9bb89a00  slli r17, r21, 9
000608  1bc97a01  srli r18, r21, 23
00060c  93880800  seteq r17, r17, zero
000610  1b09f90f  andi r18, r18, 255
000614  1b79f90f  setlti r18, r18, 255
000618  97181901  or r17, r18, r17
00061c  9bb99500  slli r19, r11, 9
000620  9bc07501  srli r1, r11, 23
000624  13edba04  setlt.f r26, r21, r11
000628  93890900  seteq r19, r19, zero
00062c  9b80f00f  andi r1, r1, 255
000630  9bf0f00f  setlti r1, r1, 255
000634  97903001  or r1, r1, r19
000638  97801001  and r1, r1, r17
00063c  97001d00  and r1, r26, r1
000640  bbce00fe  bneq r1, zero, -80
000644  9f850a00  addli r11, r21, 0
000648  5bf5ffff  j -88
00064c  6345dfd9  loadli.w r10,  -4884(r30)
000650  9f050000  addli r11, zero, 0
000654  9f070400  addli r15, r8, 0
000658  ef400500  loads.w r1, 0(r10)
00065c  9ff7f7ff  addli r15, r15, -1
000660  1f450500  addli r10, r10, 4
000664  8be51510  add.f.rn r11, r11, r1
000668  bbcf07fe  bneq r15, zero, -16
00066c  cbb22400  ble.s r9, r2, 172
000670  00a00000  mfence { lm }
000674  bfb14200  blt.s r5, r4, 108
000678  8f00bc18  div.f.rn r1, r24, r11
00067c  1f010fdf  addli r2, r30, -4224
000680  1f050fdf  addli r10, r30, -4224
000684  9f050000  addli r11, zero, 0
000688  6a952022  vor.f.mz vr10{mr1}, r1, vr2
00068c  9f008100  addli r1, r2, 64
000690  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
000694  9f854500  addli r11, r11, 32
000698  1f010101  addli r2, r2, 128
00069c  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0006a0  8e101502  vmul.f.mz.rn vr1{mr1}, vr10, vr1
0006a4  8e113502  vmul.f.mz.rn vr3{mr1}, vr10, vr3
0006a8  6eb213c2  vsrl.s.mz vr4{mr1}, vr7, vr1
0006ac  6eb333c2  vsrl.s.mz vr6{mr1}, vr7, vr3
0006b0  6a324202  vand.s.mz vr4{mr1}, r4, vr4
0006b4  6a336202  vand.s.mz vr6{mr1}, r4, vr6
0006b8  96b04002  vadd.s.mz vr1{mr1}, vr1, vr4
0006bc  96b16102  vadd.s.mz vr3{mr1}, vr3, vr6
0006c0  92301302  vadd.s.mz vr1{mr1}, r6, vr1
0006c4  92313302  vadd.s.mz vr3{mr1}, r6, vr3
0006c8  eeb013c2  vsrl.s.mz vr1{mr1}, vr7, vr1
0006cc  eab13c02  vand.s.mz vr3{mr1}, r25, vr3
0006d0  eeb01122  vor.s.mz vr1{mr1}, vr3, vr1
0006d4  46001502  vstore.mz vr1{mr1}, 0(r10)
0006d8  1f058500  addli r10, r10, 64
0006dc  bfce55fe  blt.s r11, r5, -80
0006e0  1f01ffda  addli r2, r30, -4744
0006e4  ab0000f0  lui r1, 983040
0006e8  6b550100  load.d r[11:12], 0(r2)
0006ec  6341dfdc  loadli.w r2,  -4500(r30)
0006f0  00a00000  mfence { lm }
0006f4  97101100  or r1, r2, r1
0006f8  0b25d510  add.ul r[11:12], r[11:12], r[14:15]
0006fc  1f010fdf  addli r2, r30, -4224
000700  ff302500  s_lm2gm r1, r2, 0(r[11:12])
000704  9f008fde  addli r1, r30, -4288
000708  00a00200  mfence { lm, gm }
00070c  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
000710  9f000fdd  addli r1, r30, -4480
000714  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000718  3f2134ff  blt.s r8, r19, -952
00071c  e340ffdd  loadli.w r1,  -4356(r30)
000720  80a10004  csr_set csr3, r1
000724  00d00100  sync_group
000728  5b87ffff  j -968
00072c  9f0e8fd9  addli sp, r30, -4928
000730  e38f2e26  loadli.w r31,  4880(sp)
000734  63cf2e26  loadli.w r30,  4884(sp)
000738  638e3e26  loadli.w r28,  4888(sp)
00073c  e3cd3e26  loadli.w r27,  4892(sp)
000740  638d4e26  loadli.w r26,  4896(sp)
000744  e3cc4e26  loadli.w r25,  4900(sp)
000748  638c5e26  loadli.w r24,  4904(sp)
00074c  e3cb5e26  loadli.w r23,  4908(sp)
000750  638b6e26  loadli.w r22,  4912(sp)
000754  e3ca6e26  loadli.w r21,  4916(sp)
000758  638a7e26  loadli.w r20,  4920(sp)
00075c  e3c97e26  loadli.w r19,  4924(sp)
000760  9f8e8e26  addli sp, sp, 4928
000764  5f800f00  jr r31, 0
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
0009a4  00100000  exit
