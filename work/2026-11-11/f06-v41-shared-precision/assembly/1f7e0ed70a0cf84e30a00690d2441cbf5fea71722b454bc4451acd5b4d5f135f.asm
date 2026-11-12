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
0000fc  4b115b01  ble.s r22, r21, 68
000100  80db0002  load_param_i r23, 1
000104  1f2c0000  addli r24, zero, 2
000108  9f0c0001  addli r25, zero, 128
00010c  1f0d0010  addli r26, zero, 2048
000110  8b904a31  div.s r1, r21, r20
000114  6b510f00  load.d r[3:4], 0(r30)
000118  6b528f00  load.d r[5:6], 8(r30)
00011c  6b530f01  load.d r[7:8], 16(r30)
000120  ab044000  lui r9, 1024
000124  e7808e01  storeli.w r24, 8(sp)
000128  67c09e01  storeli.w r25, 4(sp)
00012c  6780ae01  storeli.w r26, 0(sp)
000130  0b943031  div.s r8, r1, r19
000134  d7290000  jal 332
000138  8b9a7a11  add.s r21, r21, r23
00013c  3fdf6aff  blt.s r21, r22, -44
000140  9f8e8e00  addli sp, sp, 64
000144  00a00300  mfence { lm, sm, gm }
000148  00100000  exit
00014c  9f8e0ed2  addli sp, sp, -5888
000150  67cdee2d  storeli.w r30, 5844(sp)
000154  1f8f0e2e  addli r30, sp, 5888
000158  80500102  load_param_i r1, 2
00015c  00350002  core_id r10
000160  e78f4e2d  storeli.w r20, 5880(sp)
000164  e7cf3e2d  storeli.w r19, 5884(sp)
000168  67cf5e2d  storeli.w r21, 5876(sp)
00016c  678f6e2d  storeli.w r22, 5872(sp)
000170  e7ce7e2d  storeli.w r23, 5868(sp)
000174  e78e8e2d  storeli.w r24, 5864(sp)
000178  67ce9e2d  storeli.w r25, 5860(sp)
00017c  678eae2d  storeli.w r26, 5856(sp)
000180  e7cdbe2d  storeli.w r27, 5852(sp)
000184  e78dce2d  storeli.w r28, 5848(sp)
000188  678dfe2d  storeli.w r31, 5840(sp)
00018c  634a0f00  loadli.w r20,  4(r30)
000190  0b958050  fmac.s r10, r1, r8
000194  8b174521  mul.s r15, r10, r20
000198  cbdcf402  ble.s r9, r15, 1844
00019c  63040f00  loadli.w r8,  0(r30)
0001a0  63470f00  loadli.w r14,  4(r30)
0001a4  9f1b0000  addli r23, zero, 1
0001a8  2b0500f0  lui r10, 983040
0001ac  9f068fe7  addli r13, r30, -3136
0001b0  630b1f00  loadli.w r22,  8(r30)
0001b4  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
0001b8  2b0d803f  lui r26, 260096
0001bc  ab0d0080  lui r27, 524288
0001c0  9f3c0000  addli r25, zero, 3
0001c4  ab08404b  lui r17, 308224
0001c8  2b0940cb  lui r18, 832512
0001cc  1f0e0000  addli r28, zero, 0
0001d0  8b958738  mod.s r11, r15, r8
0001d4  8b101720  mul.s r1, r14, r1
0001d8  1f441000  addli r8, zero, 12
0001dc  1b371700  slli r14, r14, 1
0001e0  0b988020  mul.s r16, r1, r8
0001e4  9710a700  or r1, r14, r10
0001e8  1f240000  addli r8, zero, 2
0001ec  b3950528  sext_int2long r[12:13], r11
0001f0  97b57503  sll.d r[12:13], r[12:13], r23
0001f4  0b22b210  add.ul r[5:6], r[5:6], r[12:13]
0001f8  b3950728  sext_int2long r[12:13], r15
0001fc  ff20d200  l_gm2lm r1, r13, 0(r[5:6])
000200  17b57503  sll.d r[11:12], r[12:13], r23
000204  ab0000f0  lui r1, 983040
000208  1f068fef  addli r12, r30, -2112
00020c  ab06fc42  lui r13, 274368
000210  0b22a110  add.ul r[5:6], r[3:4], r[11:12]
000214  97101700  or r1, r14, r1
000218  33150828  sext_int2long r[11:12], r16
00021c  ff20c200  l_gm2lm r1, r12, 0(r[5:6])
000220  17327503  sll.d r[5:6], r[11:12], r23
000224  00a00200  mfence { lm, gm }
000228  e7059fd4  storeli.w r9, -5544(r30)
00022c  e744efd4  storeli.w r14, -5556(r30)
000230  e7040fd5  storeli.w r16, -5560(r30)
000234  8b204110  add.ul r[2:3], r[3:4], r[5:6]
000238  9f018fd4  addli r3, r30, -5568
00023c  73b01100  store.d r[2:3], 0(r3)
000240  ab20373d  lui r1, 250738
000244  2b41cc3f  lui r2, 261316
000248  1b953071  ori r10, r1, 1811
00024c  aba0b8bf  lui r1, 785290
000250  9b15a122  ori r11, r2, 554
000254  2b812139  lui r2, 234008
000258  1b9cb0a3  ori r24, r1, 2619
00025c  ab00fcc2  lui r1, 798656
000260  9b199148  ori r19, r2, 1161
000264  2b51633d  lui r2, 251445
000268  e74fafd2  storeli.w r10, -5636(r30)
00026c  e70fbfd2  storeli.w r11, -5640(r30)
000270  6aa07022  vor.u.mz vr0{mr1}, r1, vr7
000274  9f000fd7  addli r1, r30, -5248
000278  1b117184  ori r2, r2, 2119
00027c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000280  9f702000  addli r1, zero, 23
000284  6a107122  vor.f.mz vr0{mr1}, r2, vr7
000288  2b71313f  lui r2, 258839
00028c  eaa47022  vor.u.mz vr9{mr1}, r1, vr7
000290  abc0ae3a  lui r1, 240364
000294  1b118121  ori r2, r2, 536
000298  9b90f03f  ori r1, r1, 1023
00029c  6a957022  vor.f.mz vr10{mr1}, r1, vr7
0002a0  ab901d3c  lui r1, 246233
0002a4  9b90b055  ori r1, r1, 1371
0002a8  ea957022  vor.f.mz vr11{mr1}, r1, vr7
0002ac  9f008fd6  addli r1, r30, -5312
0002b0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0002b4  abf0753e  lui r1, 255839
0002b8  9b9000df  ori r1, r1, 3568
0002bc  6a907022  vor.f.mz vr0{mr1}, r1, vr7
0002c0  9f000fd6  addli r1, r30, -5376
0002c4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0002c8  6a107122  vor.f.mz vr0{mr1}, r2, vr7
0002cc  9f008fd5  addli r1, r30, -5440
0002d0  1f010fd5  addli r2, r30, -5504
0002d4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0002d8  ab10f37e  lui r1, 519985
0002dc  6a107d22  vor.f.mz vr0{mr1}, r26, vr7
0002e0  9b9a301c  ori r21, r1, 451
0002e4  ab70b142  lui r1, 273175
0002e8  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0002ec  9b908021  ori r1, r1, 536
0002f0  2bf1ffff  lui r2, 1048575
0002f4  e7471fd4  storeli.w r1, -5508(r30)
0002f8  9b10f1ff  ori r1, r2, 4095
0002fc  2ba1b83f  lui r2, 261002
000300  e7071fd4  storeli.w r1, -5512(r30)
000304  ab703142  lui r1, 271127
000308  9b908021  ori r1, r1, 536
00030c  67471fd4  storeli.w r1, -5516(r30)
000310  9b10b1a3  ori r1, r2, 2619
000314  67071fd4  storeli.w r1, -5520(r30)
000318  9f00afd4  addli r1, r30, -5552
00031c  73b06000  store.d r[7:8], 0(r1)
000320  9f000fd4  addli r1, r30, -5632
000324  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
000328  9f000fd3  addli r1, r30, -5760
00032c  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
000330  9f008fd2  addli r1, r30, -5824
000334  4690a002  vstore_mask16.mz vr10{mr1}, 0(r1)
000338  9f000fd2  addli r1, r30, -5888
00033c  4690b002  vstore_mask16.mz vr11{mr1}, 0(r1)
000340  db110000  j 140
000344  9f00afd4  addli r1, r30, -5552
000348  00a00000  mfence { lm }
00034c  1f068fef  addli r12, r30, -2112
000350  ab06fc42  lui r13, 274368
000354  ab08404b  lui r17, 308224
000358  2b0940cb  lui r18, 832512
00035c  1f240000  addli r8, zero, 2
000360  e304bfd4  loadli.w r9,  -5544(r30)
000364  e347bfd4  loadli.w r15,  -5540(r30)
000368  63479fd4  loadli.w r14,  -5556(r30)
00036c  63089fd4  loadli.w r16,  -5560(r30)
000370  6345ffd3  loadli.w r10,  -5636(r30)
000374  e305ffd3  loadli.w r11,  -5640(r30)
000378  6bd30000  load.d r[7:8], 0(r1)
00037c  9f000fd4  addli r1, r30, -5632
000380  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
000384  9f000fd3  addli r1, r30, -5760
000388  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
00038c  9f008fd2  addli r1, r30, -5824
000390  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000394  9f000fd2  addli r1, r30, -5888
000398  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
00039c  9f01cfd4  addli r3, r30, -5536
0003a0  6342dfd4  loadli.w r4,  -5524(r30)
0003a4  1b2e1e00  xori r28, r28, 1
0003a8  ebd00100  load.d r[2:3], 0(r3)
0003ac  ab0100f0  lui r3, 983040
0003b0  97113700  or r3, r14, r3
0003b4  97b07003  sll.d r[2:3], r[2:3], r23
0003b8  8b201310  add.ul r[2:3], r[7:8], r[2:3]
0003bc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0003c0  00a00200  mfence { lm, gm }
0003c4  3fa09700  blt.s r15, r9, 8
0003c8  dba00000  j 1284
0003cc  9f800700  addli r1, r15, 0
0003d0  9f01cfd4  addli r3, r30, -5536
0003d4  8b970011  add.s r15, r1, r16
0003d8  b3900028  sext_int2long r[2:3], r1
0003dc  73b01100  store.d r[2:3], 0(r3)
0003e0  cbd0f400  ble.s r9, r15, 52
0003e4  ebd00100  load.d r[2:3], 0(r3)
0003e8  1f008fd4  addli zero, r30, -5568
0003ec  9b211e00  xori r3, r28, 1
0003f0  6b520000  load.d r[5:6], 0(zero)
0003f4  9bb1a100  slli r3, r3, 10
0003f8  17200000  xor zero, zero, zero
0003fc  97b07003  sll.d r[2:3], r[2:3], r23
000400  8b113610  add.s r3, r12, r3
000404  8b201210  add.ul r[2:3], r[5:6], r[2:3]
000408  2b0200f0  lui r4, 983040
00040c  17124700  or r4, r14, r4
000410  7fa23000  l_gm2lm r4, r3, 0(r[2:3])
000414  9b30ae00  slli r1, r28, 10
000418  8b101610  add.s r1, r12, r1
00041c  e7461fd4  storeli.w r1, -5524(r30)
000420  3f617a03  blt.s r20, r23, 1112
000424  6342dfd4  loadli.w r4,  -5524(r30)
000428  9f000000  addli r1, zero, 0
00042c  1f018fd7  addli r2, r30, -5184
000430  9f018fe7  addli r3, r30, -3136
000434  db060000  j 52
000438  1a911d02  vsub.f.mz.rn vr2{mr1}, r27, vr1
00043c  72112042  vlt.f.mz mr2{mr1}, zero, vr2
000440  ea207034  vor.u.mh vr1{mr2}, zero, vr7
000444  06100000  vfloat2fp16_l.rn vr0, vr0
000448  06d00000  vfloat2fp16_h.rn vr0, vr1
00044c  46000202  vstore.mz vr0{mr1}, 0(r4)
000450  9f804000  addli r1, r1, 32
000454  1f010101  addli r2, r2, 128
000458  9f818100  addli r3, r3, 64
00045c  1f028200  addli r4, r4, 64
000460  3fa04001  blt.s r1, r20, 8
000464  db820000  j 1044
000468  42000202  vload.mz vr0{mr1}, 0(r4)
00046c  c2800102  vload.mz vr1{mr1}, 0(r3)
000470  06310000  vfp162float_l.rn vr2, vr0
000474  86710000  vfp162float_h.rn vr3, vr0
000478  06b00000  vfp162float_l.rn vr0, vr1
00047c  86f00000  vfp162float_h.rn vr1, vr1
000480  16100102  vadd.f.mz.rn vr0{mr1}, vr2, vr0
000484  96901102  vadd.f.mz.rn vr1{mr1}, vr3, vr1
000488  b7140b00  beq r22, zero, 292
00048c  37607b01  beq r22, r23, 24
000490  bb208b00  bneq r22, r8, 40
000494  9f028100  addli r5, r2, 64
000498  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
00049c  46901202  vstore_mask16.mz vr1{mr1}, 0(r5)
0004a0  5bf6ffff  j -80
0004a4  1a910d02  vsub.f.mz.rn vr2{mr1}, r27, vr0
0004a8  72112042  vlt.f.mz mr2{mr1}, zero, vr2
0004ac  6a207034  vor.u.mh vr0{mr2}, zero, vr7
0004b0  3b040b00  bneq r22, zero, 256
0004b4  5bf2ffff  j -112
0004b8  37309b01  beq r22, r25, 12
0004bc  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0004c0  5b030000  j 24
0004c4  0a110502  vmul.f.mz.rn vr2{mr1}, r10, vr0
0004c8  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0004cc  0e112002  vmul.f.mz.rn vr2{mr1}, vr0, vr2
0004d0  a6912102  vmac.f.mz.rn vr3{mr1}, vr3, vr2
0004d4  0a913502  vmul.f.mz.rn vr2{mr1}, r11, vr3
0004d8  e61101c0  vabs.f vr3, vr2
0004dc  9f020fd7  addli r5, r30, -5248
0004e0  1233b002  vadd.s.mz vr6{mr1}, zero, vr11
0004e4  8a113c02  vmul.f.mz.rn vr3{mr1}, r24, vr3
0004e8  1a923d02  vsub.f.mz.rn vr4{mr1}, r27, vr3
0004ec  72914642  vlt.f.mz mr2{mr1}, r13, vr4
0004f0  42920202  vload_mask16.mz vr4{mr1}, 0(r5)
0004f4  9f028fd6  addli r5, r30, -5312
0004f8  ea214034  vor.u.mh vr3{mr2}, zero, vr4
0004fc  12923802  vadd.f.mz.rn vr4{mr1}, r17, vr3
000500  92124902  vadd.f.mz.rn vr5{mr1}, r18, vr4
000504  6eb244a2  vsll.s.mz vr4{mr1}, vr9, vr4
000508  9e915102  vsub.f.mz.rn vr3{mr1}, vr3, vr5
00050c  9232a002  vadd.s.mz vr5{mr1}, zero, vr10
000510  12324d02  vadd.s.mz vr4{mr1}, r26, vr4
000514  a2923902  vmac.f.mz.rn vr5{mr1}, r19, vr3
000518  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
00051c  c2920202  vload_mask16.mz vr5{mr1}, 0(r5)
000520  9f020fd6  addli r5, r30, -5376
000524  a6123302  vmac.f.mz.rn vr5{mr1}, vr6, vr3
000528  42930202  vload_mask16.mz vr6{mr1}, 0(r5)
00052c  9f028fd5  addli r5, r30, -5440
000530  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
000534  c2920202  vload_mask16.mz vr5{mr1}, 0(r5)
000538  9f020fd5  addli r5, r30, -5504
00053c  42940202  vload_mask16.mz vr8{mr1}, 0(r5)
000540  a6123302  vmac.f.mz.rn vr5{mr1}, vr6, vr3
000544  12338002  vadd.s.mz vr6{mr1}, zero, vr8
000548  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
00054c  0e124302  vmul.f.mz.rn vr4{mr1}, vr6, vr4
000550  12338002  vadd.s.mz vr6{mr1}, zero, vr8
000554  6a227034  vor.u.mh vr4{mr2}, zero, vr7
000558  92124d02  vadd.f.mz.rn vr5{mr1}, r26, vr4
00055c  9ab15a02  vsub.s.mz vr3{mr1}, r21, vr5
000560  9a925d02  vsub.f.mz.rn vr5{mr1}, r27, vr5
000564  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
000568  a6916102  vmac.f.mz.rn vr3{mr1}, vr3, vr6
00056c  12338002  vadd.s.mz vr6{mr1}, zero, vr8
000570  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
000574  a6916102  vmac.f.mz.rn vr3{mr1}, vr3, vr6
000578  12338002  vadd.s.mz vr6{mr1}, zero, vr8
00057c  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
000580  a6916102  vmac.f.mz.rn vr3{mr1}, vr3, vr6
000584  0e924102  vmul.f.mz.rn vr4{mr1}, vr3, vr4
000588  bb609b01  bneq r22, r25, 56
00058c  ab0200c0  lui r5, 786432
000590  6ab12d02  vand.s.mz vr2{mr1}, r27, vr2
000594  22944202  vmac.f.mz.rn vr8{mr1}, r5, vr4
000598  ab02003f  lui r5, 258048
00059c  6e318122  vor.s.mz vr2{mr1}, vr2, vr8
0005a0  12112d02  vadd.f.mz.rn vr2{mr1}, r26, vr2
0005a4  0a912202  vmul.f.mz.rn vr2{mr1}, r5, vr2
0005a8  0e102002  vmul.f.mz.rn vr0{mr1}, vr0, vr2
0005ac  376a0bfe  beq r22, zero, -360
0005b0  372a7bff  beq r22, r23, -376
0005b4  b7439b01  beq r22, r25, 240
0005b8  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0005bc  db1f0000  j 252
0005c0  1a912d02  vsub.f.mz.rn vr2{mr1}, r27, vr2
0005c4  9a920d02  vsub.f.mz.rn vr5{mr1}, r27, vr0
0005c8  ab02ae42  lui r5, 273120
0005cc  f2112042  vlt.f.mz mr3{mr1}, zero, vr2
0005d0  72915242  vlt.f.mz mr2{mr1}, r5, vr5
0005d4  ea214036  vor.u.mh vr3{mr3}, zero, vr4
0005d8  e342ffd4  loadli.w r5,  -5508(r30)
0005dc  6304ffd4  loadli.w r8,  -5512(r30)
0005e0  f2915242  vlt.f.mz mr3{mr1}, r5, vr5
0005e4  fe8201a0  vmmov r5, mr3
0005e8  0e113002  vmul.f.mz.rn vr2{mr1}, vr0, vr3
0005ec  97a28200  xor r5, r5, r8
0005f0  7e0401a0  vmmov r8, mr2
0005f4  97828200  and r5, r5, r8
0005f8  37e20200  beq r5, zero, 152
0005fc  6344efd4  loadli.w r8,  -5516(r30)
000600  1233b002  vadd.s.mz vr6{mr1}, zero, vr11
000604  92110402  vadd.f.mz.rn vr3{mr1}, r8, vr0
000608  6304efd4  loadli.w r8,  -5520(r30)
00060c  8a113402  vmul.f.mz.rn vr3{mr1}, r8, vr3
000610  1f040fd7  addli r8, r30, -5248
000614  1a923d02  vsub.f.mz.rn vr4{mr1}, r27, vr3
000618  72914642  vlt.f.mz mr2{mr1}, r13, vr4
00061c  42120402  vload_mask16.mz vr4{mr1}, 0(r8)
000620  1f048fd6  addli r8, r30, -5312
000624  ea214034  vor.u.mh vr3{mr2}, zero, vr4
000628  12923802  vadd.f.mz.rn vr4{mr1}, r17, vr3
00062c  92124902  vadd.f.mz.rn vr5{mr1}, r18, vr4
000630  6eb244a2  vsll.s.mz vr4{mr1}, vr9, vr4
000634  9e915102  vsub.f.mz.rn vr3{mr1}, vr3, vr5
000638  9232a002  vadd.s.mz vr5{mr1}, zero, vr10
00063c  a2923902  vmac.f.mz.rn vr5{mr1}, r19, vr3
000640  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
000644  c2120402  vload_mask16.mz vr5{mr1}, 0(r8)
000648  1f040fd6  addli r8, r30, -5376
00064c  a6123302  vmac.f.mz.rn vr5{mr1}, vr6, vr3
000650  42130402  vload_mask16.mz vr6{mr1}, 0(r8)
000654  1f048fd5  addli r8, r30, -5440
000658  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
00065c  c2120402  vload_mask16.mz vr5{mr1}, 0(r8)
000660  1f040fd5  addli r8, r30, -5504
000664  a6123302  vmac.f.mz.rn vr5{mr1}, vr6, vr3
000668  42130402  vload_mask16.mz vr6{mr1}, 0(r8)
00066c  2b04801f  lui r8, 129024
000670  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
000674  92314d02  vadd.s.mz vr3{mr1}, r26, vr4
000678  0a120402  vmul.f.mz.rn vr4{mr1}, r8, vr0
00067c  8e113302  vmul.f.mz.rn vr3{mr1}, vr6, vr3
000680  ea217034  vor.u.mh vr3{mr2}, zero, vr7
000684  7e8102e0  vmmov mr2, r5
000688  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
00068c  6a213034  vor.u.mh vr2{mr2}, zero, vr3
000690  6ab00d02  vand.s.mz vr0{mr1}, r27, vr0
000694  1f240000  addli r8, zero, 2
000698  6e302022  vor.s.mz vr0{mr1}, vr0, vr2
00069c  3b5c0bfe  bneq r22, zero, -236
0006a0  dbb4ffff  j -604
0006a4  0a111502  vmul.f.mz.rn vr2{mr1}, r10, vr1
0006a8  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0006ac  0e912002  vmul.f.mz.rn vr2{mr1}, vr1, vr2
0006b0  a6912102  vmac.f.mz.rn vr3{mr1}, vr3, vr2
0006b4  0a913502  vmul.f.mz.rn vr2{mr1}, r11, vr3
0006b8  e61101c0  vabs.f vr3, vr2
0006bc  9f020fd7  addli r5, r30, -5248
0006c0  1233b002  vadd.s.mz vr6{mr1}, zero, vr11
0006c4  8a113c02  vmul.f.mz.rn vr3{mr1}, r24, vr3
0006c8  1a923d02  vsub.f.mz.rn vr4{mr1}, r27, vr3
0006cc  72914642  vlt.f.mz mr2{mr1}, r13, vr4
0006d0  42920202  vload_mask16.mz vr4{mr1}, 0(r5)
0006d4  9f028fd6  addli r5, r30, -5312
0006d8  ea214034  vor.u.mh vr3{mr2}, zero, vr4
0006dc  12923802  vadd.f.mz.rn vr4{mr1}, r17, vr3
0006e0  92124902  vadd.f.mz.rn vr5{mr1}, r18, vr4
0006e4  6eb244a2  vsll.s.mz vr4{mr1}, vr9, vr4
0006e8  9e915102  vsub.f.mz.rn vr3{mr1}, vr3, vr5
0006ec  9232a002  vadd.s.mz vr5{mr1}, zero, vr10
0006f0  12324d02  vadd.s.mz vr4{mr1}, r26, vr4
0006f4  a2923902  vmac.f.mz.rn vr5{mr1}, r19, vr3
0006f8  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
0006fc  c2920202  vload_mask16.mz vr5{mr1}, 0(r5)
000700  9f020fd6  addli r5, r30, -5376
000704  a6123302  vmac.f.mz.rn vr5{mr1}, vr6, vr3
000708  42930202  vload_mask16.mz vr6{mr1}, 0(r5)
00070c  9f028fd5  addli r5, r30, -5440
000710  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
000714  c2920202  vload_mask16.mz vr5{mr1}, 0(r5)
000718  9f020fd5  addli r5, r30, -5504
00071c  42940202  vload_mask16.mz vr8{mr1}, 0(r5)
000720  a6123302  vmac.f.mz.rn vr5{mr1}, vr6, vr3
000724  12338002  vadd.s.mz vr6{mr1}, zero, vr8
000728  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
00072c  0e124302  vmul.f.mz.rn vr4{mr1}, vr6, vr4
000730  12338002  vadd.s.mz vr6{mr1}, zero, vr8
000734  6a227034  vor.u.mh vr4{mr2}, zero, vr7
000738  92124d02  vadd.f.mz.rn vr5{mr1}, r26, vr4
00073c  9ab15a02  vsub.s.mz vr3{mr1}, r21, vr5
000740  9a925d02  vsub.f.mz.rn vr5{mr1}, r27, vr5
000744  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
000748  a6916102  vmac.f.mz.rn vr3{mr1}, vr3, vr6
00074c  12338002  vadd.s.mz vr6{mr1}, zero, vr8
000750  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
000754  a6916102  vmac.f.mz.rn vr3{mr1}, vr3, vr6
000758  12338002  vadd.s.mz vr6{mr1}, zero, vr8
00075c  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
000760  a6916102  vmac.f.mz.rn vr3{mr1}, vr3, vr6
000764  bb409b01  bneq r22, r25, 48
000768  8e914102  vmul.f.mz.rn vr3{mr1}, vr3, vr4
00076c  12328002  vadd.s.mz vr4{mr1}, zero, vr8
000770  ab0200c0  lui r5, 786432
000774  6ab12d02  vand.s.mz vr2{mr1}, r27, vr2
000778  22923202  vmac.f.mz.rn vr4{mr1}, r5, vr3
00077c  ab02003f  lui r5, 258048
000780  6e314122  vor.s.mz vr2{mr1}, vr2, vr4
000784  12112d02  vadd.f.mz.rn vr2{mr1}, r26, vr2
000788  0a912202  vmul.f.mz.rn vr2{mr1}, r5, vr2
00078c  8e902002  vmul.f.mz.rn vr1{mr1}, vr1, vr2
000790  db96ffff  j -844
000794  1a912d02  vsub.f.mz.rn vr2{mr1}, r27, vr2
000798  9a921d02  vsub.f.mz.rn vr5{mr1}, r27, vr1
00079c  0e924102  vmul.f.mz.rn vr4{mr1}, vr3, vr4
0007a0  ab02ae42  lui r5, 273120
0007a4  f2112042  vlt.f.mz mr3{mr1}, zero, vr2
0007a8  72915242  vlt.f.mz mr2{mr1}, r5, vr5
0007ac  ea214036  vor.u.mh vr3{mr3}, zero, vr4
0007b0  e342ffd4  loadli.w r5,  -5508(r30)
0007b4  6304ffd4  loadli.w r8,  -5512(r30)
0007b8  f2915242  vlt.f.mz mr3{mr1}, r5, vr5
0007bc  fe8201a0  vmmov r5, mr3
0007c0  0e913002  vmul.f.mz.rn vr2{mr1}, vr1, vr3
0007c4  97a28200  xor r5, r5, r8
0007c8  7e0401a0  vmmov r8, mr2
0007cc  97828200  and r5, r5, r8
0007d0  37e20200  beq r5, zero, 152
0007d4  6344efd4  loadli.w r8,  -5516(r30)
0007d8  1233b002  vadd.s.mz vr6{mr1}, zero, vr11
0007dc  92111402  vadd.f.mz.rn vr3{mr1}, r8, vr1
0007e0  6304efd4  loadli.w r8,  -5520(r30)
0007e4  8a113402  vmul.f.mz.rn vr3{mr1}, r8, vr3
0007e8  1f040fd7  addli r8, r30, -5248
0007ec  1a923d02  vsub.f.mz.rn vr4{mr1}, r27, vr3
0007f0  72914642  vlt.f.mz mr2{mr1}, r13, vr4
0007f4  42120402  vload_mask16.mz vr4{mr1}, 0(r8)
0007f8  1f048fd6  addli r8, r30, -5312
0007fc  ea214034  vor.u.mh vr3{mr2}, zero, vr4
000800  12923802  vadd.f.mz.rn vr4{mr1}, r17, vr3
000804  92124902  vadd.f.mz.rn vr5{mr1}, r18, vr4
000808  6eb244a2  vsll.s.mz vr4{mr1}, vr9, vr4
00080c  9e915102  vsub.f.mz.rn vr3{mr1}, vr3, vr5
000810  9232a002  vadd.s.mz vr5{mr1}, zero, vr10
000814  a2923902  vmac.f.mz.rn vr5{mr1}, r19, vr3
000818  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
00081c  c2120402  vload_mask16.mz vr5{mr1}, 0(r8)
000820  1f040fd6  addli r8, r30, -5376
000824  a6123302  vmac.f.mz.rn vr5{mr1}, vr6, vr3
000828  42130402  vload_mask16.mz vr6{mr1}, 0(r8)
00082c  1f048fd5  addli r8, r30, -5440
000830  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
000834  c2120402  vload_mask16.mz vr5{mr1}, 0(r8)
000838  1f040fd5  addli r8, r30, -5504
00083c  a6123302  vmac.f.mz.rn vr5{mr1}, vr6, vr3
000840  42130402  vload_mask16.mz vr6{mr1}, 0(r8)
000844  2b04801f  lui r8, 129024
000848  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
00084c  92314d02  vadd.s.mz vr3{mr1}, r26, vr4
000850  0a121402  vmul.f.mz.rn vr4{mr1}, r8, vr1
000854  8e113302  vmul.f.mz.rn vr3{mr1}, vr6, vr3
000858  ea217034  vor.u.mh vr3{mr2}, zero, vr7
00085c  7e8102e0  vmmov mr2, r5
000860  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
000864  6a213034  vor.u.mh vr2{mr2}, zero, vr3
000868  eab01d02  vand.s.mz vr1{mr1}, r27, vr1
00086c  1f240000  addli r8, zero, 2
000870  eeb02022  vor.s.mz vr1{mr1}, vr1, vr2
000874  5b7affff  j -1072
000878  00a00000  mfence { lm }
00087c  bb0c8bfc  bneq r22, r8, -1248
000880  1f018fd7  addli r2, r30, -5184
000884  9f010a00  addli r3, r20, 0
000888  e745ffd4  storeli.w r15, -5540(r30)
00088c  57210100  jal 2312
000890  bf5a7afd  blt.s r20, r23, -1356
000894  e341dfd4  loadli.w r3,  -5524(r30)
000898  9f000000  addli r1, zero, 0
00089c  1f018fd7  addli r2, r30, -5184
0008a0  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
0008a4  1f028100  addli r4, r2, 64
0008a8  9f804000  addli r1, r1, 32
0008ac  1f010101  addli r2, r2, 128
0008b0  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
0008b4  06100000  vfloat2fp16_l.rn vr0, vr0
0008b8  06d00000  vfloat2fp16_h.rn vr0, vr1
0008bc  46800102  vstore.mz vr0{mr1}, 0(r3)
0008c0  9f818100  addli r3, r3, 64
0008c4  3fff40ff  blt.s r1, r20, -36
0008c8  db4fffff  j -1412
0008cc  9f0e0fd2  addli sp, r30, -5888
0008d0  e38fae2d  loadli.w r31,  5840(sp)
0008d4  63cfae2d  loadli.w r30,  5844(sp)
0008d8  638ebe2d  loadli.w r28,  5848(sp)
0008dc  e3cdbe2d  loadli.w r27,  5852(sp)
0008e0  638dce2d  loadli.w r26,  5856(sp)
0008e4  e3ccce2d  loadli.w r25,  5860(sp)
0008e8  638cde2d  loadli.w r24,  5864(sp)
0008ec  e3cbde2d  loadli.w r23,  5868(sp)
0008f0  638bee2d  loadli.w r22,  5872(sp)
0008f4  e3caee2d  loadli.w r21,  5876(sp)
0008f8  638afe2d  loadli.w r20,  5880(sp)
0008fc  e3c9fe2d  loadli.w r19,  5884(sp)
000900  9f8e0e2e  addli sp, sp, 5888
000904  5f800f00  jr r31, 0
000908  9f8efeff  addli sp, sp, -8
00090c  9f100000  addli r1, zero, 1
000910  67c0ee01  storeli.w r30, 4(sp)
000914  6780fe01  storeli.w r31, 0(sp)
000918  1f8f1e00  addli r30, sp, 8
00091c  bf831100  blt.s r3, r1, 224
000920  9f002100  addli r1, r2, 16
000924  2b010080  lui r2, 524288
000928  2b02803f  lui r4, 260096
00092c  9f020000  addli r5, zero, 0
000930  e383e0ff  loadli.w r7,  -16(r1)
000934  63c4e0ff  loadli.w r8,  -12(r1)
000938  6383f0ff  loadli.w r6,  -8(r1)
00093c  63c5f0ff  loadli.w r10,  -4(r1)
000940  63c71000  loadli.w r14,  12(r1)
000944  e3850000  loadli.w r11,  0(r1)
000948  e3c60000  loadli.w r13,  4(r1)
00094c  9f821200  addli r5, r5, 8
000950  97a42300  xor r9, r7, r2
000954  17262400  xor r12, r8, r2
000958  97272300  xor r15, r6, r2
00095c  17282500  xor r16, r10, r2
000960  17292700  xor r18, r14, r2
000964  8f840400  exp.f.rn r9, r9
000968  0f060600  exp.f.rn r12, r12
00096c  8f870700  exp.f.rn r15, r15
000970  0f090900  exp.f.rn r18, r18
000974  8be44410  add.f.rn r9, r9, r4
000978  0b664610  add.f.rn r12, r12, r4
00097c  0b694910  add.f.rn r18, r18, r4
000980  8f839318  div.f.rn r7, r7, r9
000984  e3841000  loadli.w r9,  8(r1)
000988  0f04c418  div.f.rn r8, r8, r12
00098c  0f060800  exp.f.rn r12, r16
000990  17a82600  xor r16, r13, r2
000994  0f080800  exp.f.rn r16, r16
000998  0b664610  add.f.rn r12, r12, r4
00099c  0b684810  add.f.rn r16, r16, r4
0009a0  97a82400  xor r17, r9, r2
0009a4  8f880800  exp.f.rn r17, r17
0009a8  8be84810  add.f.rn r17, r17, r4
0009ac  678f70fe  storeli.w r7, -16(r1)
0009b0  8be34710  add.f.rn r7, r15, r4
0009b4  97a72500  xor r15, r11, r2
0009b8  67cf80fe  storeli.w r8, -12(r1)
0009bc  8f870700  exp.f.rn r15, r15
0009c0  8be74710  add.f.rn r15, r15, r4
0009c4  8f841419  div.f.rn r9, r9, r17
0009c8  0f037318  div.f.rn r6, r6, r7
0009cc  8f03c518  div.f.rn r7, r10, r12
0009d0  0f062719  div.f.rn r12, r14, r18
0009d4  0f85f518  div.f.rn r10, r11, r15
0009d8  8f850619  div.f.rn r11, r13, r16
0009dc  e7809000  storeli.w r9, 8(r1)
0009e0  e78f60fe  storeli.w r6, -8(r1)
0009e4  e7cf70fe  storeli.w r7, -4(r1)
0009e8  e7c0c000  storeli.w r12, 12(r1)
0009ec  6780a000  storeli.w r10, 0(r1)
0009f0  67c0b000  storeli.w r11, 4(r1)
0009f4  9f804000  addli r1, r1, 32
0009f8  bfec32fe  blt.s r5, r3, -200
0009fc  00a00000  mfence { lm }
000a00  e38f0e00  loadli.w r31,  0(sp)
000a04  63cf0e00  loadli.w r30,  4(sp)
000a08  9f8e1e00  addli sp, sp, 8
000a0c  5f800f00  jr r31, 0
000a10  00100000  exit
000a14  00100000  exit
000a18  00100000  exit
000a1c  00100000  exit
000a20  00100000  exit
000a24  00100000  exit
000a28  00100000  exit
000a2c  00100000  exit
000a30  00100000  exit
000a34  00100000  exit
000a38  00100000  exit
000a3c  00100000  exit
000a40  00100000  exit
000a44  00100000  exit
000a48  00100000  exit
000a4c  00100000  exit
000a50  00100000  exit
000a54  00100000  exit
000a58  00100000  exit
000a5c  00100000  exit
000a60  00100000  exit
000a64  00100000  exit
000a68  00100000  exit
000a6c  00100000  exit
000a70  00100000  exit
000a74  00100000  exit
000a78  00100000  exit
000a7c  00100000  exit
000a80  00100000  exit
000a84  00100000  exit
000a88  00100000  exit
000a8c  00100000  exit
000a90  00100000  exit
000a94  00100000  exit
000a98  00100000  exit
000a9c  00100000  exit
000aa0  00100000  exit
000aa4  00100000  exit
000aa8  00100000  exit
000aac  00100000  exit
000ab0  00100000  exit
000ab4  00100000  exit
000ab8  00100000  exit
000abc  00100000  exit
000ac0  00100000  exit
000ac4  00100000  exit
000ac8  00100000  exit
000acc  00100000  exit
000ad0  00100000  exit
000ad4  00100000  exit
000ad8  00100000  exit
000adc  00100000  exit
000ae0  00100000  exit
000ae4  00100000  exit
000ae8  00100000  exit
000aec  00100000  exit
000af0  00100000  exit
000af4  00100000  exit
000af8  00100000  exit
000afc  00100000  exit
000b00  00100000  exit
000b04  00100000  exit
000b08  00100000  exit
000b0c  00100000  exit
000b10  00100000  exit
000b14  00100000  exit
000b18  00100000  exit
000b1c  00100000  exit
000b20  00100000  exit
000b24  00100000  exit
000b28  00100000  exit
000b2c  00100000  exit
000b30  00100000  exit
000b34  00100000  exit
000b38  00100000  exit
000b3c  00100000  exit
000b40  00100000  exit
000b44  00100000  exit
000b48  00100000  exit
000b4c  00100000  exit
000b50  00100000  exit
000b54  00100000  exit
000b58  00100000  exit
000b5c  00100000  exit
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
