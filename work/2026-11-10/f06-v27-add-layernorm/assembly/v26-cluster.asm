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
000078  9f496000  addli r19, zero, 52
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
0000e8  e3495f00  loadli.w r19,  44(r30)
0000ec  e3005f00  loadli.w r1,  40(r30)
0000f0  630a6f00  loadli.w r20,  48(r30)
0000f4  8b901920  mul.s r1, r19, r1
0000f8  0b9b4021  mul.s r22, r1, r20
0000fc  cb215b01  ble.s r22, r21, 104
000100  ab10833a  lui r1, 239665
000104  80db0002  load_param_i r23, 1
000108  1f0c0006  addli r24, zero, 768
00010c  9f0c0010  addli r25, zero, 2048
000110  1f0d8000  addli r26, zero, 64
000114  9b9df026  ori r27, r1, 623
000118  8b904a31  div.s r1, r21, r20
00011c  6b510f02  load.d r[3:4], 32(r30)
000120  6b528f00  load.d r[5:6], 8(r30)
000124  6b530f01  load.d r[7:8], 16(r30)
000128  6b548f01  load.d r[9:10], 24(r30)
00012c  67820e00  storeli.w zero, 32(sp)
000130  e7c10e00  storeli.w zero, 28(sp)
000134  67c18e01  storeli.w r24, 20(sp)
000138  67819e01  storeli.w r25, 16(sp)
00013c  e7c0ae01  storeli.w r26, 12(sp)
000140  e781be01  storeli.w r27, 24(sp)
000144  73b02e00  store.d r[3:4], 0(sp)
000148  6b510f00  load.d r[3:4], 0(r30)
00014c  8b903031  div.s r1, r1, r19
000150  9bb06000  slli r1, r1, 6
000154  e7801e00  storeli.w r1, 8(sp)
000158  572e0000  jal 368
00015c  8b9a7a11  add.s r21, r21, r23
000160  bfee6aff  blt.s r21, r22, -72
000164  9f8e8e00  addli sp, sp, 64
000168  00a00300  mfence { lm, sm, gm }
00016c  00100000  exit
000170  9f8e8ec3  addli sp, sp, -7744
000174  67c1ee3d  storeli.w r30, 7700(sp)
000178  1f8f8e3c  addli r30, sp, 7744
00017c  e7c33e3d  storeli.w r19, 7740(sp)
000180  e7834e3d  storeli.w r20, 7736(sp)
000184  67c35e3d  storeli.w r21, 7732(sp)
000188  67836e3d  storeli.w r22, 7728(sp)
00018c  e7c27e3d  storeli.w r23, 7724(sp)
000190  e7828e3d  storeli.w r24, 7720(sp)
000194  67c29e3d  storeli.w r25, 7716(sp)
000198  6782ae3d  storeli.w r26, 7712(sp)
00019c  e7c1be3d  storeli.w r27, 7708(sp)
0001a0  e781ce3d  storeli.w r28, 7704(sp)
0001a4  6781fe3d  storeli.w r31, 7696(sp)
0001a8  9f003fc5  addli r1, r30, -7528
0001ac  e3452f00  loadli.w r11,  20(r30)
0001b0  63062f00  loadli.w r12,  16(r30)
0001b4  73b08000  store.d r[9:10], 0(r1)
0001b8  9f007fc7  addli r1, r30, -7240
0001bc  73b06000  store.d r[7:8], 0(r1)
0001c0  e3403f00  loadli.w r1,  28(r30)
0001c4  63034f00  loadli.w r6,  32(r30)
0001c8  9f03afc3  addli r7, r30, -7728
0001cc  73b02300  store.d r[3:4], 0(r7)
0001d0  b70a0302  beq r6, zero, 1696
0001d4  63411f00  loadli.w r2,  12(r30)
0001d8  00380002  core_id r16
0001dc  cb49010b  ble.s r2, r16, 5744
0001e0  63012f00  loadli.w r2,  16(r30)
0001e4  63432f00  loadli.w r6,  20(r30)
0001e8  1f048fe7  addli r8, r30, -3136
0001ec  1f050004  addli r10, zero, 512
0001f0  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0001f4  9f010404  addli r3, r8, 512
0001f8  1f070408  addli r14, r8, 1024
0001fc  1f0e8407  addli r28, r8, 960
000200  8b136110  add.s r7, r2, r6
000204  b3040108  fix2float.rn r9, r2
000208  1b311100  slli r2, r2, 1
00020c  67482fc4  storeli.w r2, -7548(r30)
000210  1f018404  addli r2, r8, 576
000214  9ff3f3ff  addli r7, r7, -1
000218  67089fc4  storeli.w r9, -7552(r30)
00021c  9f140000  addli r9, zero, 1
000220  67042fc6  storeli.w r2, -7360(r30)
000224  1f018408  addli r2, r8, 1088
000228  8b966330  div.s r13, r7, r6
00022c  1f03840b  addli r6, r8, 1472
000230  9f030002  addli r7, zero, 256
000234  e7432fc6  storeli.w r2, -7364(r30)
000238  1f010405  addli r2, r8, 640
00023c  674a6fc4  storeli.w r6, -7516(r30)
000240  1f030001  addli r6, zero, 128
000244  e7032fc6  storeli.w r2, -7368(r30)
000248  1f010409  addli r2, r8, 1152
00024c  67432fc6  storeli.w r2, -7372(r30)
000250  1f018405  addli r2, r8, 704
000254  67032fc6  storeli.w r2, -7376(r30)
000258  1f018409  addli r2, r8, 1216
00025c  e7422fc6  storeli.w r2, -7380(r30)
000260  1f010406  addli r2, r8, 768
000264  e7022fc6  storeli.w r2, -7384(r30)
000268  1f01040a  addli r2, r8, 1280
00026c  670c2fc4  storeli.w r2, -7488(r30)
000270  1f018406  addli r2, r8, 832
000274  e74b2fc4  storeli.w r2, -7492(r30)
000278  1f01840a  addli r2, r8, 1344
00027c  e70b2fc4  storeli.w r2, -7496(r30)
000280  1f010407  addli r2, r8, 896
000284  670b2fc4  storeli.w r2, -7504(r30)
000288  1f01040b  addli r2, r8, 1408
00028c  1f044000  addli r8, zero, 32
000290  e70a2fc4  storeli.w r2, -7512(r30)
000294  1f018fc7  addli r2, r30, -7232
000298  1f018103  addli r2, r2, 448
00029c  e7472fc4  storeli.w r2, -7556(r30)
0002a0  2bf1ffff  lui r2, 1048575
0002a4  1b11f1ff  ori r2, r2, 4095
0002a8  670a2fc4  storeli.w r2, -7520(r30)
0002ac  1f018000  addli r2, zero, 64
0002b0  db090000  j 76
0002b4  9f081fc5  addli r17, r30, -7544
0002b8  6b590f00  load.d r[19:20], 0(r30)
0002bc  ebd70800  load.d r[16:17], 0(r17)
0002c0  ab0800f0  lui r17, 983040
0002c4  97b79702  sll.d r[16:17], r[16:17], r9
0002c8  8b27f910  add.ul r[16:17], r[19:20], r[16:17]
0002cc  63490fc5  loadli.w r18,  -7548(r30)
0002d0  97181901  or r17, r18, r17
0002d4  1f098fc7  addli r18, r30, -7232
0002d8  ffb82701  s_lm2gm r17, r18, 0(r[16:17])
0002dc  80570102  load_param_i r15, 2
0002e0  00a00200  mfence { lm, gm }
0002e4  63482fc5  loadli.w r16,  -7532(r30)
0002e8  00a00300  mfence { lm, sm, gm }
0002ec  0b980711  add.s r16, r15, r16
0002f0  e3471f00  loadli.w r15,  12(r30)
0002f4  3f20f800  blt.s r16, r15, 8
0002f8  dbaa0200  j 5460
0002fc  e3071f00  loadli.w r15,  8(r30)
000300  67490fc5  storeli.w r16, -7532(r30)
000304  8b18f810  add.s r17, r16, r15
000308  8b98c820  mul.s r17, r17, r12
00030c  b3970828  sext_int2long r[16:17], r17
000310  9f081fc5  addli r17, r30, -7544
000314  73b0f800  store.d r[16:17], 0(r17)
000318  bf969600  blt.s r13, r9, 420
00031c  9f08afc3  addli r17, r30, -7728
000320  17ba9702  sll.d r[21:22], r[16:17], r9
000324  9f090000  addli r19, zero, 0
000328  1f090000  addli r18, zero, 0
00032c  ebd70800  load.d r[16:17], 0(r17)
000330  9f080000  addli r17, zero, 0
000334  0baa4711  add.ul r[21:22], r[16:17], r[21:22]
000338  db0c0000  j 100
00033c  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
000340  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000344  9f980800  addli r17, r17, 1
000348  6af133c0  vsrl.p vr2, r7, vr3
00034c  6af213c0  vsrl.p vr4, r7, vr1
000350  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
000354  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000358  ea7123c0  vsrl.p vr3, r6, vr2
00035c  6a7213c0  vsrl.p vr4, r6, vr1
000360  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000364  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000368  ea7121c0  vsrl.p vr3, r2, vr2
00036c  6a7211c0  vsrl.p vr4, r2, vr1
000370  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000374  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000378  ea7124c0  vsrl.p vr3, r8, vr2
00037c  6a7214c0  vsrl.p vr4, r8, vr1
000380  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000384  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000388  fa170140  vextracti.f r15, 0(vr2)
00038c  7a980040  vextracti.f r16, 0(vr1)
000390  8be9f910  add.f.rn r19, r19, r15
000394  0b690911  add.f.rn r18, r18, r16
000398  b7b4d800  beq r17, r13, 300
00039c  1f8b0800  addli r22, r17, 0
0003a0  37c07500  beq r11, r7, 16
0003a4  e3074fc5  loadli.w r15,  -7520(r30)
0003a8  17abf800  xor r22, r17, r15
0003ac  0b9b6611  add.s r22, r13, r22
0003b0  1f8c0500  addli r24, r11, 0
0003b4  8b1bbb20  mul.s r23, r22, r11
0003b8  9f078fc7  addli r15, r30, -7232
0003bc  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0003c0  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0003c4  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0003c8  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0003cc  0b1c8b51  fmac.s r24, r22, r24
0003d0  9bbc1b00  slli r25, r23, 1
0003d4  339d0b28  sext_int2long r[27:28], r23
0003d8  0b1bcc40  min.s r22, r24, r12
0003dc  0b1b7b19  sub.s r22, r22, r23
0003e0  8b9b9711  add.s r23, r15, r25
0003e4  173c9d02  sll.d r[25:26], r[27:28], r9
0003e8  ab0d00f0  lui r27, 983040
0003ec  1b3d1b00  slli r26, r22, 1
0003f0  8b278a11  add.ul r[16:17], r[21:22], r[25:26]
0003f4  0b2c8211  add.ul r[25:26], r[5:6], r[25:26]
0003f8  971dbd01  or r27, r26, r27
0003fc  ffad7701  l_gm2lm r27, r23, 0(r[16:17])
000400  ab0700f0  lui r15, 983040
000404  1f088fe7  addli r16, r30, -3136
000408  00a00200  mfence { lm, gm }
00040c  9717fd00  or r15, r26, r15
000410  ff270c01  l_gm2lm r15, r16, 0(r[25:26])
000414  00a00200  mfence { lm, gm }
000418  00a00300  mfence { lm, sm, gm }
00041c  bf0c9bfe  blt.s r22, r9, -224
000420  92300002  vadd.s.mz vr1{mr1}, zero, vr0
000424  12310002  vadd.s.mz vr2{mr1}, zero, vr0
000428  92310002  vadd.s.mz vr3{mr1}, zero, vr0
00042c  12320002  vadd.s.mz vr4{mr1}, zero, vr0
000430  1f0c0000  addli r24, zero, 0
000434  9f0c8fe7  addli r25, r30, -3136
000438  c2820b02  vload.mz vr5{mr1}, 0(r23)
00043c  42830c02  vload.mz vr6{mr1}, 0(r25)
000440  1f888c00  addli r16, r25, 64
000444  9f878b00  addli r15, r23, 64
000448  1f0c8c00  addli r24, r24, 64
00044c  9f8c0c01  addli r25, r25, 128
000450  c2830702  vload.mz vr7{mr1}, 0(r15)
000454  42040802  vload.mz vr8{mr1}, 0(r16)
000458  16c36202  vadd.hf.mz.rn vr6{mr1}, vr5, vr6
00045c  92320002  vadd.s.mz vr5{mr1}, zero, vr0
000460  96c38302  vadd.hf.mz.rn vr7{mr1}, vr7, vr8
000464  06340300  vfp162float_l.rn vr8, vr6
000468  06730300  vfp162float_h.rn vr6, vr6
00046c  86b40300  vfp162float_l.rn vr9, vr7
000470  86f30300  vfp162float_h.rn vr7, vr7
000474  86120400  vfloat2fp16_l.rn vr5, vr8
000478  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
00047c  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
000480  12340002  vadd.s.mz vr8{mr1}, zero, vr0
000484  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
000488  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
00048c  06940400  vfloat2fp16_l.rn vr8, vr9
000490  86520300  vfloat2fp16_h.rn vr5, vr6
000494  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
000498  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00049c  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0004a0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0004a4  06d40300  vfloat2fp16_h.rn vr8, vr7
0004a8  46805b02  vstore.mz vr5{mr1}, 0(r23)
0004ac  9f8b0b01  addli r23, r23, 128
0004b0  46808702  vstore.mz vr8{mr1}, 0(r15)
0004b4  3f1e6cff  blt.s r24, r22, -124
0004b8  dbd0ffff  j -380
0004bc  1f090000  addli r18, zero, 0
0004c0  9f090000  addli r19, zero, 0
0004c4  9f073fc5  addli r15, r30, -7528
0004c8  ebdc0700  load.d r[26:27], 0(r15)
0004cc  bf2796fe  blt.s r12, r9, -536
0004d0  e3070fc5  loadli.w r15,  -7552(r30)
0004d4  9f080000  addli r17, zero, 0
0004d8  8f89f918  div.f.rn r19, r19, r15
0004dc  0f09f918  div.f.rn r18, r18, r15
0004e0  e3073f00  loadli.w r15,  24(r30)
0004e4  0bea3921  mul.f.rn r20, r19, r19
0004e8  8be90958  neg.f r19, r19
0004ec  0b694919  sub.f.rn r18, r18, r20
0004f0  634affc4  loadli.w r20,  -7556(r30)
0004f4  0b69f910  add.f.rn r18, r18, r15
0004f8  ab07803f  lui r15, 260096
0004fc  0f090908  sqrt.f.rn r18, r18
000500  0f892719  div.f.rn r18, r15, r18
000504  db040000  j 36
000508  86900100  vfloat2fp16_l.rn vr1, vr3
00050c  9f880802  addli r17, r17, 256
000510  86500100  vfloat2fp16_h.rn vr1, vr2
000514  46001a02  vstore.mz vr1{mr1}, 0(r20)
000518  1f0a0a04  addli r20, r20, 512
00051c  00a00000  mfence { lm }
000520  3fa0c800  blt.s r17, r12, 8
000524  5bb2ffff  j -624
000528  b7f00000  beq r1, zero, 60
00052c  1f0c7fc7  addli r24, r30, -7240
000530  b3870828  zext_int2long r[16:17], r17
000534  ab0a00f0  lui r21, 983040
000538  6b5b0c00  load.d r[23:24], 0(r24)
00053c  97b79702  sll.d r[16:17], r[16:17], r9
000540  971a5501  or r21, r10, r21
000544  2b0c00f0  lui r24, 983040
000548  0b2bfb10  add.ul r[23:24], r[23:24], r[16:17]
00054c  8ba7fc10  add.ul r[16:17], r[26:27], r[16:17]
000550  ff2a3b00  l_gm2lm r21, r3, 0(r[23:24])
000554  971a8501  or r21, r10, r24
000558  00a00200  mfence { lm, gm }
00055c  ffaae700  l_gm2lm r21, r14, 0(r[16:17])
000560  00a00200  mfence { lm, gm }
000564  1f0b8afc  addli r22, r20, -448
000568  00a00300  mfence { lm, sm, gm }
00056c  c2000b02  vload.mz vr1{mr1}, 0(r22)
000570  06b10000  vfp162float_l.rn vr2, vr1
000574  86f00000  vfp162float_h.rn vr1, vr1
000578  12912902  vadd.f.mz.rn vr2{mr1}, r19, vr2
00057c  92901902  vadd.f.mz.rn vr1{mr1}, r19, vr1
000580  8a112902  vmul.f.mz.rn vr3{mr1}, r18, vr2
000584  0a111902  vmul.f.mz.rn vr2{mr1}, r18, vr1
000588  b7b00000  beq r1, zero, 44
00058c  c2800102  vload.mz vr1{mr1}, 0(r3)
000590  42020702  vload.mz vr4{mr1}, 0(r14)
000594  86b20000  vfp162float_l.rn vr5, vr1
000598  06330200  vfp162float_l.rn vr6, vr4
00059c  86f00000  vfp162float_h.rn vr1, vr1
0005a0  06720200  vfp162float_h.rn vr4, vr4
0005a4  26935102  vmac.f.mz.rn vr6{mr1}, vr3, vr5
0005a8  26121102  vmac.f.mz.rn vr4{mr1}, vr2, vr1
0005ac  92316002  vadd.s.mz vr3{mr1}, zero, vr6
0005b0  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0005b4  9f0a0afd  addli r21, r20, -384
0005b8  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0005bc  12331002  vadd.s.mz vr6{mr1}, zero, vr1
0005c0  42820a02  vload.mz vr4{mr1}, 0(r21)
0005c4  06930100  vfloat2fp16_l.rn vr6, vr3
0005c8  86320200  vfp162float_l.rn vr5, vr4
0005cc  06720200  vfp162float_h.rn vr4, vr4
0005d0  06530100  vfloat2fp16_h.rn vr6, vr2
0005d4  92915902  vadd.f.mz.rn vr3{mr1}, r19, vr5
0005d8  12924902  vadd.f.mz.rn vr4{mr1}, r19, vr4
0005dc  46006b02  vstore.mz vr6{mr1}, 0(r22)
0005e0  8a113902  vmul.f.mz.rn vr3{mr1}, r18, vr3
0005e4  0a114902  vmul.f.mz.rn vr2{mr1}, r18, vr4
0005e8  b7d00000  beq r1, zero, 52
0005ec  e3078fc6  loadli.w r15,  -7360(r30)
0005f0  42820702  vload.mz vr4{mr1}, 0(r15)
0005f4  e3477fc6  loadli.w r15,  -7364(r30)
0005f8  c2820702  vload.mz vr5{mr1}, 0(r15)
0005fc  06330200  vfp162float_l.rn vr6, vr4
000600  06720200  vfp162float_h.rn vr4, vr4
000604  86b30200  vfp162float_l.rn vr7, vr5
000608  86f20200  vfp162float_h.rn vr5, vr5
00060c  a6936102  vmac.f.mz.rn vr7{mr1}, vr3, vr6
000610  a6124102  vmac.f.mz.rn vr5{mr1}, vr2, vr4
000614  92317002  vadd.s.mz vr3{mr1}, zero, vr7
000618  12315002  vadd.s.mz vr2{mr1}, zero, vr5
00061c  1f0b8afd  addli r22, r20, -320
000620  12331002  vadd.s.mz vr6{mr1}, zero, vr1
000624  42020b02  vload.mz vr4{mr1}, 0(r22)
000628  06930100  vfloat2fp16_l.rn vr6, vr3
00062c  86320200  vfp162float_l.rn vr5, vr4
000630  06720200  vfp162float_h.rn vr4, vr4
000634  06530100  vfloat2fp16_h.rn vr6, vr2
000638  92915902  vadd.f.mz.rn vr3{mr1}, r19, vr5
00063c  12924902  vadd.f.mz.rn vr4{mr1}, r19, vr4
000640  46806a02  vstore.mz vr6{mr1}, 0(r21)
000644  8a113902  vmul.f.mz.rn vr3{mr1}, r18, vr3
000648  0a114902  vmul.f.mz.rn vr2{mr1}, r18, vr4
00064c  b7d00000  beq r1, zero, 52
000650  e3077fc6  loadli.w r15,  -7368(r30)
000654  42820702  vload.mz vr4{mr1}, 0(r15)
000658  e3476fc6  loadli.w r15,  -7372(r30)
00065c  c2820702  vload.mz vr5{mr1}, 0(r15)
000660  06330200  vfp162float_l.rn vr6, vr4
000664  06720200  vfp162float_h.rn vr4, vr4
000668  86b30200  vfp162float_l.rn vr7, vr5
00066c  86f20200  vfp162float_h.rn vr5, vr5
000670  a6936102  vmac.f.mz.rn vr7{mr1}, vr3, vr6
000674  a6124102  vmac.f.mz.rn vr5{mr1}, vr2, vr4
000678  92317002  vadd.s.mz vr3{mr1}, zero, vr7
00067c  12315002  vadd.s.mz vr2{mr1}, zero, vr5
000680  9f0a0afe  addli r21, r20, -256
000684  12331002  vadd.s.mz vr6{mr1}, zero, vr1
000688  42820a02  vload.mz vr4{mr1}, 0(r21)
00068c  06930100  vfloat2fp16_l.rn vr6, vr3
000690  86320200  vfp162float_l.rn vr5, vr4
000694  06720200  vfp162float_h.rn vr4, vr4
000698  06530100  vfloat2fp16_h.rn vr6, vr2
00069c  92915902  vadd.f.mz.rn vr3{mr1}, r19, vr5
0006a0  12924902  vadd.f.mz.rn vr4{mr1}, r19, vr4
0006a4  46006b02  vstore.mz vr6{mr1}, 0(r22)
0006a8  8a113902  vmul.f.mz.rn vr3{mr1}, r18, vr3
0006ac  0a114902  vmul.f.mz.rn vr2{mr1}, r18, vr4
0006b0  b7d00000  beq r1, zero, 52
0006b4  e3076fc6  loadli.w r15,  -7376(r30)
0006b8  42820702  vload.mz vr4{mr1}, 0(r15)
0006bc  e3475fc6  loadli.w r15,  -7380(r30)
0006c0  c2820702  vload.mz vr5{mr1}, 0(r15)
0006c4  06330200  vfp162float_l.rn vr6, vr4
0006c8  06720200  vfp162float_h.rn vr4, vr4
0006cc  86b30200  vfp162float_l.rn vr7, vr5
0006d0  86f20200  vfp162float_h.rn vr5, vr5
0006d4  a6936102  vmac.f.mz.rn vr7{mr1}, vr3, vr6
0006d8  a6124102  vmac.f.mz.rn vr5{mr1}, vr2, vr4
0006dc  92317002  vadd.s.mz vr3{mr1}, zero, vr7
0006e0  12315002  vadd.s.mz vr2{mr1}, zero, vr5
0006e4  1f0b8afe  addli r22, r20, -192
0006e8  12331002  vadd.s.mz vr6{mr1}, zero, vr1
0006ec  42020b02  vload.mz vr4{mr1}, 0(r22)
0006f0  06930100  vfloat2fp16_l.rn vr6, vr3
0006f4  86320200  vfp162float_l.rn vr5, vr4
0006f8  06720200  vfp162float_h.rn vr4, vr4
0006fc  06530100  vfloat2fp16_h.rn vr6, vr2
000700  92915902  vadd.f.mz.rn vr3{mr1}, r19, vr5
000704  12924902  vadd.f.mz.rn vr4{mr1}, r19, vr4
000708  46806a02  vstore.mz vr6{mr1}, 0(r21)
00070c  8a113902  vmul.f.mz.rn vr3{mr1}, r18, vr3
000710  0a114902  vmul.f.mz.rn vr2{mr1}, r18, vr4
000714  b7d00000  beq r1, zero, 52
000718  e3075fc6  loadli.w r15,  -7384(r30)
00071c  42820702  vload.mz vr4{mr1}, 0(r15)
000720  e3078fc5  loadli.w r15,  -7488(r30)
000724  c2820702  vload.mz vr5{mr1}, 0(r15)
000728  06330200  vfp162float_l.rn vr6, vr4
00072c  06720200  vfp162float_h.rn vr4, vr4
000730  86b30200  vfp162float_l.rn vr7, vr5
000734  86f20200  vfp162float_h.rn vr5, vr5
000738  a6936102  vmac.f.mz.rn vr7{mr1}, vr3, vr6
00073c  a6124102  vmac.f.mz.rn vr5{mr1}, vr2, vr4
000740  92317002  vadd.s.mz vr3{mr1}, zero, vr7
000744  12315002  vadd.s.mz vr2{mr1}, zero, vr5
000748  9f0a0aff  addli r21, r20, -128
00074c  12331002  vadd.s.mz vr6{mr1}, zero, vr1
000750  42820a02  vload.mz vr4{mr1}, 0(r21)
000754  06930100  vfloat2fp16_l.rn vr6, vr3
000758  86320200  vfp162float_l.rn vr5, vr4
00075c  06720200  vfp162float_h.rn vr4, vr4
000760  06530100  vfloat2fp16_h.rn vr6, vr2
000764  92915902  vadd.f.mz.rn vr3{mr1}, r19, vr5
000768  12924902  vadd.f.mz.rn vr4{mr1}, r19, vr4
00076c  46006b02  vstore.mz vr6{mr1}, 0(r22)
000770  8a113902  vmul.f.mz.rn vr3{mr1}, r18, vr3
000774  0a114902  vmul.f.mz.rn vr2{mr1}, r18, vr4
000778  b7d00000  beq r1, zero, 52
00077c  e3477fc5  loadli.w r15,  -7492(r30)
000780  42820702  vload.mz vr4{mr1}, 0(r15)
000784  e3077fc5  loadli.w r15,  -7496(r30)
000788  c2820702  vload.mz vr5{mr1}, 0(r15)
00078c  06330200  vfp162float_l.rn vr6, vr4
000790  06720200  vfp162float_h.rn vr4, vr4
000794  86b30200  vfp162float_l.rn vr7, vr5
000798  86f20200  vfp162float_h.rn vr5, vr5
00079c  a6936102  vmac.f.mz.rn vr7{mr1}, vr3, vr6
0007a0  a6124102  vmac.f.mz.rn vr5{mr1}, vr2, vr4
0007a4  92317002  vadd.s.mz vr3{mr1}, zero, vr7
0007a8  12315002  vadd.s.mz vr2{mr1}, zero, vr5
0007ac  1f0b8aff  addli r22, r20, -64
0007b0  12331002  vadd.s.mz vr6{mr1}, zero, vr1
0007b4  42020b02  vload.mz vr4{mr1}, 0(r22)
0007b8  06930100  vfloat2fp16_l.rn vr6, vr3
0007bc  86320200  vfp162float_l.rn vr5, vr4
0007c0  06720200  vfp162float_h.rn vr4, vr4
0007c4  06530100  vfloat2fp16_h.rn vr6, vr2
0007c8  92915902  vadd.f.mz.rn vr3{mr1}, r19, vr5
0007cc  12924902  vadd.f.mz.rn vr4{mr1}, r19, vr4
0007d0  46806a02  vstore.mz vr6{mr1}, 0(r21)
0007d4  8a113902  vmul.f.mz.rn vr3{mr1}, r18, vr3
0007d8  0a114902  vmul.f.mz.rn vr2{mr1}, r18, vr4
0007dc  b7d00000  beq r1, zero, 52
0007e0  e3076fc5  loadli.w r15,  -7504(r30)
0007e4  42820702  vload.mz vr4{mr1}, 0(r15)
0007e8  e3075fc5  loadli.w r15,  -7512(r30)
0007ec  c2820702  vload.mz vr5{mr1}, 0(r15)
0007f0  06330200  vfp162float_l.rn vr6, vr4
0007f4  06720200  vfp162float_h.rn vr4, vr4
0007f8  86b30200  vfp162float_l.rn vr7, vr5
0007fc  86f20200  vfp162float_h.rn vr5, vr5
000800  a6936102  vmac.f.mz.rn vr7{mr1}, vr3, vr6
000804  a6124102  vmac.f.mz.rn vr5{mr1}, vr2, vr4
000808  92317002  vadd.s.mz vr3{mr1}, zero, vr7
00080c  12315002  vadd.s.mz vr2{mr1}, zero, vr5
000810  42020a02  vload.mz vr4{mr1}, 0(r20)
000814  12331002  vadd.s.mz vr6{mr1}, zero, vr1
000818  06930100  vfloat2fp16_l.rn vr6, vr3
00081c  86320200  vfp162float_l.rn vr5, vr4
000820  06720200  vfp162float_h.rn vr4, vr4
000824  06530100  vfloat2fp16_h.rn vr6, vr2
000828  92915902  vadd.f.mz.rn vr3{mr1}, r19, vr5
00082c  12924902  vadd.f.mz.rn vr4{mr1}, r19, vr4
000830  46006b02  vstore.mz vr6{mr1}, 0(r22)
000834  8a113902  vmul.f.mz.rn vr3{mr1}, r18, vr3
000838  0a114902  vmul.f.mz.rn vr2{mr1}, r18, vr4
00083c  37b300fe  beq r1, zero, -820
000840  e3474fc5  loadli.w r15,  -7516(r30)
000844  42020e02  vload.mz vr4{mr1}, 0(r28)
000848  c2820702  vload.mz vr5{mr1}, 0(r15)
00084c  06330200  vfp162float_l.rn vr6, vr4
000850  06720200  vfp162float_h.rn vr4, vr4
000854  86b30200  vfp162float_l.rn vr7, vr5
000858  86f20200  vfp162float_h.rn vr5, vr5
00085c  a6936102  vmac.f.mz.rn vr7{mr1}, vr3, vr6
000860  a6124102  vmac.f.mz.rn vr5{mr1}, vr2, vr4
000864  92317002  vadd.s.mz vr3{mr1}, zero, vr7
000868  12315002  vadd.s.mz vr2{mr1}, zero, vr5
00086c  db93ffff  j -868
000870  63012f00  loadli.w r2,  16(r30)
000874  9f010008  addli r3, zero, 1024
000878  bb4b3102  bneq r2, r3, 1776
00087c  63411f00  loadli.w r2,  12(r30)
000880  80340002  core_id r9
000884  4b2f9106  ble.s r2, r9, 4040
000888  63412f00  loadli.w r2,  20(r30)
00088c  9f018fe7  addli r3, r30, -3136
000890  1f2a0000  addli r20, zero, 2
000894  9f0a0002  addli r21, zero, 256
000898  1f0b0008  addli r22, zero, 1024
00089c  9f0b8fc7  addli r23, r30, -7232
0008a0  1f0d4000  addli r26, zero, 32
0008a4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0008a8  9f898108  addli r19, r3, 1088
0008ac  1f8c8110  addli r24, r3, 2112
0008b0  9f8c0109  addli r25, r3, 1152
0008b4  1f830108  addli r6, r3, 1024
0008b8  9f830110  addli r7, r3, 2048
0008bc  1f74f107  addli r8, r2, 1023
0008c0  67443fc5  storeli.w r19, -7612(r30)
0008c4  67048fc5  storeli.w r24, -7616(r30)
0008c8  e7439fc5  storeli.w r25, -7620(r30)
0008cc  0b142430  div.s r8, r8, r2
0008d0  1f818109  addli r2, r3, 1216
0008d4  e7432fc6  storeli.w r2, -7364(r30)
0008d8  1f810111  addli r2, r3, 2176
0008dc  e7032fc6  storeli.w r2, -7368(r30)
0008e0  1f818111  addli r2, r3, 2240
0008e4  67432fc6  storeli.w r2, -7372(r30)
0008e8  1f81010a  addli r2, r3, 1280
0008ec  67032fc6  storeli.w r2, -7376(r30)
0008f0  1f81810a  addli r2, r3, 1344
0008f4  e7422fc6  storeli.w r2, -7380(r30)
0008f8  1f810112  addli r2, r3, 2304
0008fc  e7022fc6  storeli.w r2, -7384(r30)
000900  1f818112  addli r2, r3, 2368
000904  670c2fc4  storeli.w r2, -7488(r30)
000908  1f81010b  addli r2, r3, 1408
00090c  e74b2fc4  storeli.w r2, -7492(r30)
000910  1f81810b  addli r2, r3, 1472
000914  e70b2fc4  storeli.w r2, -7496(r30)
000918  1f810113  addli r2, r3, 2432
00091c  670b2fc4  storeli.w r2, -7504(r30)
000920  1f818113  addli r2, r3, 2496
000924  e70a2fc4  storeli.w r2, -7512(r30)
000928  1f81010c  addli r2, r3, 1536
00092c  674a2fc4  storeli.w r2, -7516(r30)
000930  1f81810c  addli r2, r3, 1600
000934  670a2fc4  storeli.w r2, -7520(r30)
000938  1f810114  addli r2, r3, 2560
00093c  67492fc4  storeli.w r2, -7532(r30)
000940  1f818114  addli r2, r3, 2624
000944  e7082fc4  storeli.w r2, -7544(r30)
000948  1f81010d  addli r2, r3, 1664
00094c  67482fc4  storeli.w r2, -7548(r30)
000950  1f81810d  addli r2, r3, 1728
000954  67082fc4  storeli.w r2, -7552(r30)
000958  1f810115  addli r2, r3, 2688
00095c  e7472fc4  storeli.w r2, -7556(r30)
000960  1f818115  addli r2, r3, 2752
000964  e7072fc4  storeli.w r2, -7560(r30)
000968  1f81010e  addli r2, r3, 1792
00096c  67472fc4  storeli.w r2, -7564(r30)
000970  1f81810e  addli r2, r3, 1856
000974  67072fc4  storeli.w r2, -7568(r30)
000978  1f810116  addli r2, r3, 2816
00097c  e7462fc4  storeli.w r2, -7572(r30)
000980  1f818116  addli r2, r3, 2880
000984  e7062fc4  storeli.w r2, -7576(r30)
000988  1f81010f  addli r2, r3, 1920
00098c  67462fc4  storeli.w r2, -7580(r30)
000990  1f81810f  addli r2, r3, 1984
000994  67062fc4  storeli.w r2, -7584(r30)
000998  1f810117  addli r2, r3, 2944
00099c  e7452fc4  storeli.w r2, -7588(r30)
0009a0  1f818117  addli r2, r3, 3008
0009a4  e7052fc4  storeli.w r2, -7592(r30)
0009a8  2bf1ffff  lui r2, 1048575
0009ac  1b11f1ff  ori r2, r2, 4095
0009b0  67452fc4  storeli.w r2, -7596(r30)
0009b4  1f018fc6  addli r2, r30, -7360
0009b8  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0009bc  5b090000  j 72
0009c0  1f019fc4  addli r2, r30, -7608
0009c4  6b560f00  load.d r[13:14], 0(r30)
0009c8  eb540100  load.d r[10:11], 0(r2)
0009cc  2b0100f0  lui r2, 983040
0009d0  97b44403  sll.d r[10:11], r[10:11], r20
0009d4  8b249610  add.ul r[10:11], r[13:14], r[10:11]
0009d8  1f060020  addli r12, zero, 4096
0009dc  17112600  or r2, r12, r2
0009e0  7fb17401  s_lm2gm r2, r23, 0(r[10:11])
0009e4  00510102  load_param_i r2, 2
0009e8  00a00200  mfence { lm, gm }
0009ec  e304afc4  loadli.w r9,  -7600(r30)
0009f0  00a00300  mfence { lm, sm, gm }
0009f4  8b149110  add.s r9, r2, r9
0009f8  63411f00  loadli.w r2,  12(r30)
0009fc  3fa02400  blt.s r9, r2, 8
000a00  dbc90100  j 3660
000a04  63011f00  loadli.w r2,  8(r30)
000a08  67059fc4  storeli.w r9, -7600(r30)
000a0c  0b912410  add.s r2, r9, r2
000a10  9f049fc4  addli r9, r30, -7608
000a14  1b31a100  slli r2, r2, 10
000a18  33160128  sext_int2long r[13:14], r2
000a1c  1f110000  addli r2, zero, 1
000a20  73b0c400  store.d r[13:14], 0(r9)
000a24  bf762400  blt.s r8, r2, 444
000a28  1f05afc3  addli r10, r30, -7728
000a2c  17364603  sll.d r[13:14], r[13:14], r20
000a30  9f040000  addli r9, zero, 0
000a34  1f010000  addli r2, zero, 0
000a38  6b570500  load.d r[15:16], 0(r10)
000a3c  1f050000  addli r10, zero, 0
000a40  8b2dc710  add.ul r[28:29], r[15:16], r[13:14]
000a44  db0d0000  j 108
000a48  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
000a4c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000a50  1f060001  addli r12, zero, 128
000a54  1f150500  addli r10, r10, 1
000a58  6af13ac0  vsrl.p vr2, r21, vr3
000a5c  6af21ac0  vsrl.p vr4, r21, vr1
000a60  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
000a64  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000a68  ea7126c0  vsrl.p vr3, r12, vr2
000a6c  6a7216c0  vsrl.p vr4, r12, vr1
000a70  1f068000  addli r12, zero, 64
000a74  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000a78  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000a7c  ea7126c0  vsrl.p vr3, r12, vr2
000a80  6a7216c0  vsrl.p vr4, r12, vr1
000a84  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000a88  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000a8c  ea712dc0  vsrl.p vr3, r26, vr2
000a90  6a721dc0  vsrl.p vr4, r26, vr1
000a94  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000a98  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000a9c  7a160140  vextracti.f r12, 0(vr2)
000aa0  fa960040  vextracti.f r13, 0(vr1)
000aa4  8be4c410  add.f.rn r9, r9, r12
000aa8  0b61d110  add.f.rn r2, r2, r13
000aac  b7748500  beq r10, r8, 316
000ab0  1f060500  addli r12, r10, 0
000ab4  37c05501  beq r11, r21, 16
000ab8  6346afc4  loadli.w r12,  -7596(r30)
000abc  1726c500  xor r12, r10, r12
000ac0  0b16c410  add.s r12, r8, r12
000ac4  1f870500  addli r14, r11, 0
000ac8  8b16b620  mul.s r13, r12, r11
000acc  0b17e650  fmac.s r14, r12, r14
000ad0  9bb72600  slli r15, r13, 2
000ad4  33980628  sext_int2long r[17:18], r13
000ad8  0b166741  min.s r12, r14, r22
000adc  0b16d618  sub.s r12, r12, r13
000ae0  8b96fb10  add.s r13, r23, r15
000ae4  17374803  sll.d r[15:16], r[17:18], r20
000ae8  ab0800f0  lui r17, 983040
000aec  1b382600  slli r16, r12, 2
000af0  0ba9ed10  add.ul r[19:20], r[28:29], r[15:16]
000af4  0b27e210  add.ul r[15:16], r[5:6], r[15:16]
000af8  97181801  or r17, r16, r17
000afc  ff28d900  l_gm2lm r17, r13, 0(r[19:20])
000b00  ab0800f0  lui r17, 983040
000b04  00a00200  mfence { lm, gm }
000b08  17181801  or r16, r16, r17
000b0c  7f283700  l_gm2lm r16, r3, 0(r[15:16])
000b10  1f078fc6  addli r14, r30, -7360
000b14  00a00200  mfence { lm, gm }
000b18  00a00300  mfence { lm, sm, gm }
000b1c  c2100702  vload_mask16.mz vr1{mr1}, 0(r14)
000b20  1f170000  addli r14, zero, 1
000b24  12321002  vadd.s.mz vr4{mr1}, zero, vr1
000b28  92311002  vadd.s.mz vr3{mr1}, zero, vr1
000b2c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
000b30  3f6ce6fe  blt.s r12, r14, -232
000b34  1f088fc6  addli r16, r30, -7360
000b38  1f070000  addli r14, zero, 0
000b3c  9f070000  addli r15, zero, 0
000b40  42120802  vload_mask16.mz vr4{mr1}, 0(r16)
000b44  92304002  vadd.s.mz vr1{mr1}, zero, vr4
000b48  12314002  vadd.s.mz vr2{mr1}, zero, vr4
000b4c  92314002  vadd.s.mz vr3{mr1}, zero, vr4
000b50  8b98e110  add.s r17, r3, r14
000b54  0b98e610  add.s r16, r13, r14
000b58  9f878700  addli r15, r15, 64
000b5c  1f070702  addli r14, r14, 256
000b60  9f898800  addli r19, r17, 64
000b64  1f8c0801  addli r24, r17, 128
000b68  c2930802  vload_mask16.mz vr7{mr1}, 0(r17)
000b6c  c2120802  vload_mask16.mz vr5{mr1}, 0(r16)
000b70  1f098800  addli r18, r16, 64
000b74  9f0c8801  addli r25, r16, 192
000b78  9f888801  addli r17, r17, 192
000b7c  42940902  vload_mask16.mz vr8{mr1}, 0(r19)
000b80  9f090801  addli r19, r16, 128
000b84  c2150c02  vload_mask16.mz vr11{mr1}, 0(r24)
000b88  42130902  vload_mask16.mz vr6{mr1}, 0(r18)
000b8c  42950c02  vload_mask16.mz vr10{mr1}, 0(r25)
000b90  42900802  vload_mask16.mz vr0{mr1}, 0(r17)
000b94  c2940902  vload_mask16.mz vr9{mr1}, 0(r19)
000b98  96927202  vadd.f.mz.rn vr5{mr1}, vr5, vr7
000b9c  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
000ba0  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
000ba4  9693b402  vadd.f.mz.rn vr7{mr1}, vr9, vr11
000ba8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000bac  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000bb0  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
000bb4  46106902  vstore_mask16.mz vr6{mr1}, 0(r18)
000bb8  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
000bbc  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
000bc0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000bc4  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
000bc8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000bcc  46907902  vstore_mask16.mz vr7{mr1}, 0(r19)
000bd0  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
000bd4  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
000bd8  bfedc7fe  blt.s r15, r12, -136
000bdc  dbcdffff  j -404
000be0  1f010000  addli r2, zero, 0
000be4  9f040000  addli r9, zero, 0
000be8  2b05803a  lui r10, 239616
000bec  e3498fc4  loadli.w r19,  -7612(r30)
000bf0  630c8fc4  loadli.w r24,  -7616(r30)
000bf4  e34c7fc4  loadli.w r25,  -7620(r30)
000bf8  8be4a420  mul.f.rn r9, r9, r10
000bfc  0b61a120  mul.f.rn r2, r2, r10
000c00  0be59420  mul.f.rn r10, r9, r9
000c04  0bee0458  neg.f r28, r9
000c08  9f040000  addli r9, zero, 0
000c0c  0b61a118  sub.f.rn r2, r2, r10
000c10  63053f00  loadli.w r10,  24(r30)
000c14  0b61a110  add.f.rn r2, r2, r10
000c18  2b05803f  lui r10, 260096
000c1c  0f010108  sqrt.f.rn r2, r2
000c20  8f0d2518  div.f.rn r27, r10, r2
000c24  2bf1ffff  lui r2, 1048575
000c28  1b1101f0  ori r2, r2, 3840
000c2c  db040000  j 36
000c30  1f010102  addli r2, r2, 256
000c34  9f060006  addli r13, zero, 768
000c38  46103602  vstore_mask16.mz vr3{mr1}, 0(r12)
000c3c  46101502  vstore_mask16.mz vr1{mr1}, 0(r10)
000c40  9f840408  addli r9, r9, 1024
000c44  00a00000  mfence { lm }
000c48  9306d104  setlt.u r13, r2, r13
000c4c  b7d506fe  beq r13, zero, -652
000c50  37b10000  beq r1, zero, 76
000c54  1f050102  addli r10, r2, 256
000c58  9f087fc7  addli r17, r30, -7240
000c5c  1f003fc5  addli zero, r30, -7528
000c60  2b0600f0  lui r12, 983040
000c64  b3060528  zext_int2long r[14:15], r10
000c68  ebd70800  load.d r[16:17], 0(r17)
000c6c  eb580000  load.d r[18:19], 0(zero)
000c70  2b0500f0  lui r10, 983040
000c74  1716cb00  or r12, r22, r12
000c78  17200000  xor zero, zero, zero
000c7c  97b64603  sll.d r[14:15], r[14:15], r20
000c80  1715ab00  or r10, r22, r10
000c84  8ba7d710  add.ul r[16:17], r[16:17], r[14:15]
000c88  8ba6d810  add.ul r[14:15], r[18:19], r[14:15]
000c8c  7fa66700  l_gm2lm r12, r6, 0(r[16:17])
000c90  00a00200  mfence { lm, gm }
000c94  7fa57600  l_gm2lm r10, r7, 0(r[14:15])
000c98  00a00200  mfence { lm, gm }
000c9c  0b959b10  add.s r10, r23, r9
000ca0  00a00300  mfence { lm, sm, gm }
000ca4  9f068500  addli r13, r10, 64
000ca8  42100502  vload_mask16.mz vr0{mr1}, 0(r10)
000cac  c2900602  vload_mask16.mz vr1{mr1}, 0(r13)
000cb0  12100e02  vadd.f.mz.rn vr0{mr1}, r28, vr0
000cb4  92101e02  vadd.f.mz.rn vr1{mr1}, r28, vr1
000cb8  0a920d02  vmul.f.mz.rn vr4{mr1}, r27, vr0
000cbc  0a911d02  vmul.f.mz.rn vr2{mr1}, r27, vr1
000cc0  b7900000  beq r1, zero, 36
000cc4  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
000cc8  c2910302  vload_mask16.mz vr3{mr1}, 0(r7)
000ccc  c2900902  vload_mask16.mz vr1{mr1}, 0(r19)
000cd0  c2120c02  vload_mask16.mz vr5{mr1}, 0(r24)
000cd4  a6110202  vmac.f.mz.rn vr3{mr1}, vr4, vr0
000cd8  a6121102  vmac.f.mz.rn vr5{mr1}, vr2, vr1
000cdc  12315002  vadd.s.mz vr2{mr1}, zero, vr5
000ce0  12323002  vadd.s.mz vr4{mr1}, zero, vr3
000ce4  1f060501  addli r12, r10, 128
000ce8  1f078501  addli r14, r10, 192
000cec  46104502  vstore_mask16.mz vr4{mr1}, 0(r10)
000cf0  46902602  vstore_mask16.mz vr2{mr1}, 0(r13)
000cf4  42100602  vload_mask16.mz vr0{mr1}, 0(r12)
000cf8  c2100702  vload_mask16.mz vr1{mr1}, 0(r14)
000cfc  92101e02  vadd.f.mz.rn vr1{mr1}, r28, vr1
000d00  12100e02  vadd.f.mz.rn vr0{mr1}, r28, vr0
000d04  8a910d02  vmul.f.mz.rn vr3{mr1}, r27, vr0
000d08  8a901d02  vmul.f.mz.rn vr1{mr1}, r27, vr1
000d0c  b7c00000  beq r1, zero, 48
000d10  e3467fc6  loadli.w r13,  -7364(r30)
000d14  42900c02  vload_mask16.mz vr0{mr1}, 0(r25)
000d18  42910602  vload_mask16.mz vr2{mr1}, 0(r13)
000d1c  e3067fc6  loadli.w r13,  -7368(r30)
000d20  42920602  vload_mask16.mz vr4{mr1}, 0(r13)
000d24  e3466fc6  loadli.w r13,  -7372(r30)
000d28  c2920602  vload_mask16.mz vr5{mr1}, 0(r13)
000d2c  26920102  vmac.f.mz.rn vr4{mr1}, vr3, vr0
000d30  a6922002  vmac.f.mz.rn vr5{mr1}, vr1, vr2
000d34  92314002  vadd.s.mz vr3{mr1}, zero, vr4
000d38  92305002  vadd.s.mz vr1{mr1}, zero, vr5
000d3c  9f060502  addli r13, r10, 256
000d40  9f078502  addli r15, r10, 320
000d44  46103602  vstore_mask16.mz vr3{mr1}, 0(r12)
000d48  46101702  vstore_mask16.mz vr1{mr1}, 0(r14)
000d4c  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
000d50  42910702  vload_mask16.mz vr2{mr1}, 0(r15)
000d54  12112e02  vadd.f.mz.rn vr2{mr1}, r28, vr2
000d58  12100e02  vadd.f.mz.rn vr0{mr1}, r28, vr0
000d5c  0a920d02  vmul.f.mz.rn vr4{mr1}, r27, vr0
000d60  0a912d02  vmul.f.mz.rn vr2{mr1}, r27, vr2
000d64  b7d00000  beq r1, zero, 52
000d68  63066fc6  loadli.w r12,  -7376(r30)
000d6c  42100602  vload_mask16.mz vr0{mr1}, 0(r12)
000d70  63465fc6  loadli.w r12,  -7380(r30)
000d74  c2100602  vload_mask16.mz vr1{mr1}, 0(r12)
000d78  63065fc6  loadli.w r12,  -7384(r30)
000d7c  c2110602  vload_mask16.mz vr3{mr1}, 0(r12)
000d80  63068fc5  loadli.w r12,  -7488(r30)
000d84  c2120602  vload_mask16.mz vr5{mr1}, 0(r12)
000d88  a6110202  vmac.f.mz.rn vr3{mr1}, vr4, vr0
000d8c  a6121102  vmac.f.mz.rn vr5{mr1}, vr2, vr1
000d90  12323002  vadd.s.mz vr4{mr1}, zero, vr3
000d94  12315002  vadd.s.mz vr2{mr1}, zero, vr5
000d98  1f060503  addli r12, r10, 384
000d9c  1f078503  addli r14, r10, 448
000da0  46904602  vstore_mask16.mz vr4{mr1}, 0(r13)
000da4  46902702  vstore_mask16.mz vr2{mr1}, 0(r15)
000da8  42100602  vload_mask16.mz vr0{mr1}, 0(r12)
000dac  c2100702  vload_mask16.mz vr1{mr1}, 0(r14)
000db0  92101e02  vadd.f.mz.rn vr1{mr1}, r28, vr1
000db4  12100e02  vadd.f.mz.rn vr0{mr1}, r28, vr0
000db8  8a910d02  vmul.f.mz.rn vr3{mr1}, r27, vr0
000dbc  8a901d02  vmul.f.mz.rn vr1{mr1}, r27, vr1
000dc0  b7d00000  beq r1, zero, 52
000dc4  e3467fc5  loadli.w r13,  -7492(r30)
000dc8  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
000dcc  e3067fc5  loadli.w r13,  -7496(r30)
000dd0  42910602  vload_mask16.mz vr2{mr1}, 0(r13)
000dd4  e3066fc5  loadli.w r13,  -7504(r30)
000dd8  42920602  vload_mask16.mz vr4{mr1}, 0(r13)
000ddc  e3065fc5  loadli.w r13,  -7512(r30)
000de0  c2920602  vload_mask16.mz vr5{mr1}, 0(r13)
000de4  26920102  vmac.f.mz.rn vr4{mr1}, vr3, vr0
000de8  a6922002  vmac.f.mz.rn vr5{mr1}, vr1, vr2
000dec  92314002  vadd.s.mz vr3{mr1}, zero, vr4
000df0  92305002  vadd.s.mz vr1{mr1}, zero, vr5
000df4  9f060504  addli r13, r10, 512
000df8  9f078504  addli r15, r10, 576
000dfc  46103602  vstore_mask16.mz vr3{mr1}, 0(r12)
000e00  46101702  vstore_mask16.mz vr1{mr1}, 0(r14)
000e04  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
000e08  42910702  vload_mask16.mz vr2{mr1}, 0(r15)
000e0c  12112e02  vadd.f.mz.rn vr2{mr1}, r28, vr2
000e10  12100e02  vadd.f.mz.rn vr0{mr1}, r28, vr0
000e14  0a920d02  vmul.f.mz.rn vr4{mr1}, r27, vr0
000e18  0a912d02  vmul.f.mz.rn vr2{mr1}, r27, vr2
000e1c  b7d00000  beq r1, zero, 52
000e20  63464fc5  loadli.w r12,  -7516(r30)
000e24  42100602  vload_mask16.mz vr0{mr1}, 0(r12)
000e28  63064fc5  loadli.w r12,  -7520(r30)
000e2c  c2100602  vload_mask16.mz vr1{mr1}, 0(r12)
000e30  63462fc5  loadli.w r12,  -7532(r30)
000e34  c2110602  vload_mask16.mz vr3{mr1}, 0(r12)
000e38  63061fc5  loadli.w r12,  -7544(r30)
000e3c  c2120602  vload_mask16.mz vr5{mr1}, 0(r12)
000e40  a6110202  vmac.f.mz.rn vr3{mr1}, vr4, vr0
000e44  a6121102  vmac.f.mz.rn vr5{mr1}, vr2, vr1
000e48  12323002  vadd.s.mz vr4{mr1}, zero, vr3
000e4c  12315002  vadd.s.mz vr2{mr1}, zero, vr5
000e50  1f060505  addli r12, r10, 640
000e54  1f078505  addli r14, r10, 704
000e58  46904602  vstore_mask16.mz vr4{mr1}, 0(r13)
000e5c  46902702  vstore_mask16.mz vr2{mr1}, 0(r15)
000e60  42100602  vload_mask16.mz vr0{mr1}, 0(r12)
000e64  c2100702  vload_mask16.mz vr1{mr1}, 0(r14)
000e68  92101e02  vadd.f.mz.rn vr1{mr1}, r28, vr1
000e6c  12100e02  vadd.f.mz.rn vr0{mr1}, r28, vr0
000e70  8a910d02  vmul.f.mz.rn vr3{mr1}, r27, vr0
000e74  8a901d02  vmul.f.mz.rn vr1{mr1}, r27, vr1
000e78  b7d00000  beq r1, zero, 52
000e7c  e3460fc5  loadli.w r13,  -7548(r30)
000e80  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
000e84  e3060fc5  loadli.w r13,  -7552(r30)
000e88  42910602  vload_mask16.mz vr2{mr1}, 0(r13)
000e8c  e346ffc4  loadli.w r13,  -7556(r30)
000e90  42920602  vload_mask16.mz vr4{mr1}, 0(r13)
000e94  e306ffc4  loadli.w r13,  -7560(r30)
000e98  c2920602  vload_mask16.mz vr5{mr1}, 0(r13)
000e9c  26920102  vmac.f.mz.rn vr4{mr1}, vr3, vr0
000ea0  a6922002  vmac.f.mz.rn vr5{mr1}, vr1, vr2
000ea4  92314002  vadd.s.mz vr3{mr1}, zero, vr4
000ea8  92305002  vadd.s.mz vr1{mr1}, zero, vr5
000eac  9f060506  addli r13, r10, 768
000eb0  9f078506  addli r15, r10, 832
000eb4  46103602  vstore_mask16.mz vr3{mr1}, 0(r12)
000eb8  46101702  vstore_mask16.mz vr1{mr1}, 0(r14)
000ebc  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
000ec0  42910702  vload_mask16.mz vr2{mr1}, 0(r15)
000ec4  12112e02  vadd.f.mz.rn vr2{mr1}, r28, vr2
000ec8  12100e02  vadd.f.mz.rn vr0{mr1}, r28, vr0
000ecc  0a920d02  vmul.f.mz.rn vr4{mr1}, r27, vr0
000ed0  0a912d02  vmul.f.mz.rn vr2{mr1}, r27, vr2
000ed4  b7d00000  beq r1, zero, 52
000ed8  6346efc4  loadli.w r12,  -7564(r30)
000edc  42100602  vload_mask16.mz vr0{mr1}, 0(r12)
000ee0  6306efc4  loadli.w r12,  -7568(r30)
000ee4  c2100602  vload_mask16.mz vr1{mr1}, 0(r12)
000ee8  6346dfc4  loadli.w r12,  -7572(r30)
000eec  c2110602  vload_mask16.mz vr3{mr1}, 0(r12)
000ef0  6306dfc4  loadli.w r12,  -7576(r30)
000ef4  c2120602  vload_mask16.mz vr5{mr1}, 0(r12)
000ef8  a6110202  vmac.f.mz.rn vr3{mr1}, vr4, vr0
000efc  a6121102  vmac.f.mz.rn vr5{mr1}, vr2, vr1
000f00  12323002  vadd.s.mz vr4{mr1}, zero, vr3
000f04  12315002  vadd.s.mz vr2{mr1}, zero, vr5
000f08  1f060507  addli r12, r10, 896
000f0c  1f058507  addli r10, r10, 960
000f10  46904602  vstore_mask16.mz vr4{mr1}, 0(r13)
000f14  46902702  vstore_mask16.mz vr2{mr1}, 0(r15)
000f18  42100602  vload_mask16.mz vr0{mr1}, 0(r12)
000f1c  c2100502  vload_mask16.mz vr1{mr1}, 0(r10)
000f20  92101e02  vadd.f.mz.rn vr1{mr1}, r28, vr1
000f24  12100e02  vadd.f.mz.rn vr0{mr1}, r28, vr0
000f28  8a910d02  vmul.f.mz.rn vr3{mr1}, r27, vr0
000f2c  8a901d02  vmul.f.mz.rn vr1{mr1}, r27, vr1
000f30  378400fe  beq r1, zero, -768
000f34  e346cfc4  loadli.w r13,  -7580(r30)
000f38  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
000f3c  e306cfc4  loadli.w r13,  -7584(r30)
000f40  42910602  vload_mask16.mz vr2{mr1}, 0(r13)
000f44  e346bfc4  loadli.w r13,  -7588(r30)
000f48  42920602  vload_mask16.mz vr4{mr1}, 0(r13)
000f4c  e306bfc4  loadli.w r13,  -7592(r30)
000f50  c2920602  vload_mask16.mz vr5{mr1}, 0(r13)
000f54  26920102  vmac.f.mz.rn vr4{mr1}, vr3, vr0
000f58  a6922002  vmac.f.mz.rn vr5{mr1}, vr1, vr2
000f5c  92314002  vadd.s.mz vr3{mr1}, zero, vr4
000f60  92305002  vadd.s.mz vr1{mr1}, zero, vr5
000f64  db99ffff  j -820
000f68  63411f00  loadli.w r2,  12(r30)
000f6c  00350002  core_id r10
000f70  4b73a104  ble.s r2, r10, 2268
000f74  63012f00  loadli.w r2,  16(r30)
000f78  e3412f00  loadli.w r3,  20(r30)
000f7c  1f098fe7  addli r18, r30, -3136
000f80  1f0b8fc7  addli r22, r30, -7232
000f84  1f0c0002  addli r24, zero, 256
000f88  9f048fc5  addli r9, r30, -7488
000f8c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000f90  1f048907  addli r8, r18, 960
000f94  1f0e0908  addli r28, r18, 1024
000f98  1f080b04  addli r16, r22, 512
000f9c  9f078b05  addli r15, r22, 704
000fa0  9f0d0b06  addli r27, r22, 768
000fa4  9f038b06  addli r7, r22, 832
000fa8  9f080b07  addli r17, r22, 896
000fac  46900402  vstore_mask16.mz vr0{mr1}, 0(r9)
000fb0  0b133110  add.s r6, r2, r3
000fb4  33010108  fix2float.rn r2, r2
000fb8  e7458fc4  storeli.w r8, -7588(r30)
000fbc  1f04090f  addli r8, r18, 1920
000fc0  e70ccfc3  storeli.w r28, -7736(r30)
000fc4  1f73f3ff  addli r6, r6, -1
000fc8  674c2fc2  storeli.w r2, -7740(r30)
000fcc  e74e8fc2  storeli.w r8, -7700(r30)
000fd0  1f04890f  addli r8, r18, 1984
000fd4  0b113330  div.s r2, r6, r3
000fd8  9f010b03  addli r3, r22, 384
000fdc  1f038b04  addli r6, r22, 576
000fe0  e70e8fc2  storeli.w r8, -7704(r30)
000fe4  1f040917  addli r8, r18, 2944
000fe8  e7423fc6  storeli.w r3, -7380(r30)
000fec  9f010b05  addli r3, r22, 640
000ff0  674e8fc2  storeli.w r8, -7708(r30)
000ff4  1f048917  addli r8, r18, 3008
000ff8  670e8fc2  storeli.w r8, -7712(r30)
000ffc  1f040008  addli r8, zero, 1024
001000  e74b2fc4  storeli.w r2, -7492(r30)
001004  1f010910  addli r2, r18, 2048
001008  e70b2fc4  storeli.w r2, -7496(r30)
00100c  1f018b00  addli r2, r22, 64
001010  67042fc6  storeli.w r2, -7360(r30)
001014  1f018900  addli r2, r18, 64
001018  674a2fc4  storeli.w r2, -7516(r30)
00101c  1f018908  addli r2, r18, 1088
001020  e7052fc4  storeli.w r2, -7592(r30)
001024  1f018910  addli r2, r18, 2112
001028  67452fc4  storeli.w r2, -7596(r30)
00102c  1f010b01  addli r2, r22, 128
001030  e7432fc6  storeli.w r2, -7364(r30)
001034  1f010901  addli r2, r18, 128
001038  670a2fc4  storeli.w r2, -7520(r30)
00103c  1f018b01  addli r2, r22, 192
001040  e7032fc6  storeli.w r2, -7368(r30)
001044  1f018901  addli r2, r18, 192
001048  67492fc4  storeli.w r2, -7532(r30)
00104c  1f010909  addli r2, r18, 1152
001050  67052fc4  storeli.w r2, -7600(r30)
001054  1f018909  addli r2, r18, 1216
001058  e7042fc4  storeli.w r2, -7608(r30)
00105c  1f010911  addli r2, r18, 2176
001060  67442fc4  storeli.w r2, -7612(r30)
001064  1f018911  addli r2, r18, 2240
001068  67042fc4  storeli.w r2, -7616(r30)
00106c  1f010b02  addli r2, r22, 256
001070  67432fc6  storeli.w r2, -7372(r30)
001074  1f010902  addli r2, r18, 256
001078  e7082fc4  storeli.w r2, -7544(r30)
00107c  1f018b02  addli r2, r22, 320
001080  67032fc6  storeli.w r2, -7376(r30)
001084  1f018902  addli r2, r18, 320
001088  67482fc4  storeli.w r2, -7548(r30)
00108c  1f01090a  addli r2, r18, 1280
001090  e7432fc4  storeli.w r2, -7620(r30)
001094  1f01890a  addli r2, r18, 1344
001098  e7032fc4  storeli.w r2, -7624(r30)
00109c  1f010912  addli r2, r18, 2304
0010a0  67432fc4  storeli.w r2, -7628(r30)
0010a4  1f018912  addli r2, r18, 2368
0010a8  67032fc4  storeli.w r2, -7632(r30)
0010ac  2bf1ffff  lui r2, 1048575
0010b0  1b11f1ff  ori r2, r2, 4095
0010b4  e74d2fc2  storeli.w r2, -7716(r30)
0010b8  1f010903  addli r2, r18, 384
0010bc  67082fc4  storeli.w r2, -7552(r30)
0010c0  1f018b03  addli r2, r22, 448
0010c4  e7022fc6  storeli.w r2, -7384(r30)
0010c8  1f018903  addli r2, r18, 448
0010cc  e7472fc4  storeli.w r2, -7556(r30)
0010d0  1f01090b  addli r2, r18, 1408
0010d4  e7422fc4  storeli.w r2, -7636(r30)
0010d8  1f01890b  addli r2, r18, 1472
0010dc  e7022fc4  storeli.w r2, -7640(r30)
0010e0  1f010913  addli r2, r18, 2432
0010e4  67422fc4  storeli.w r2, -7644(r30)
0010e8  1f018913  addli r2, r18, 2496
0010ec  67022fc4  storeli.w r2, -7648(r30)
0010f0  1f010904  addli r2, r18, 512
0010f4  e7072fc4  storeli.w r2, -7560(r30)
0010f8  1f018904  addli r2, r18, 576
0010fc  67472fc4  storeli.w r2, -7564(r30)
001100  1f01090c  addli r2, r18, 1536
001104  e7412fc4  storeli.w r2, -7652(r30)
001108  1f01890c  addli r2, r18, 1600
00110c  e7012fc4  storeli.w r2, -7656(r30)
001110  1f010914  addli r2, r18, 2560
001114  67412fc4  storeli.w r2, -7660(r30)
001118  1f018914  addli r2, r18, 2624
00111c  67012fc4  storeli.w r2, -7664(r30)
001120  1f010905  addli r2, r18, 640
001124  67072fc4  storeli.w r2, -7568(r30)
001128  1f018905  addli r2, r18, 704
00112c  e7462fc4  storeli.w r2, -7572(r30)
001130  1f01090d  addli r2, r18, 1664
001134  e7402fc4  storeli.w r2, -7668(r30)
001138  1f01890d  addli r2, r18, 1728
00113c  e7002fc4  storeli.w r2, -7672(r30)
001140  1f010915  addli r2, r18, 2688
001144  67402fc4  storeli.w r2, -7676(r30)
001148  1f018915  addli r2, r18, 2752
00114c  67002fc4  storeli.w r2, -7680(r30)
001150  1f010906  addli r2, r18, 768
001154  e7062fc4  storeli.w r2, -7576(r30)
001158  1f018906  addli r2, r18, 832
00115c  67462fc4  storeli.w r2, -7580(r30)
001160  1f01090e  addli r2, r18, 1792
001164  e74f2fc2  storeli.w r2, -7684(r30)
001168  1f01890e  addli r2, r18, 1856
00116c  e70f2fc2  storeli.w r2, -7688(r30)
001170  1f010916  addli r2, r18, 2816
001174  674f2fc2  storeli.w r2, -7692(r30)
001178  1f018916  addli r2, r18, 2880
00117c  670f2fc2  storeli.w r2, -7696(r30)
001180  1f010907  addli r2, r18, 896
001184  67062fc4  storeli.w r2, -7584(r30)
001188  1f018b07  addli r2, r22, 960
00118c  5b040000  j 32
001190  63459fc3  loadli.w r10,  -7732(r30)
001194  80540102  load_param_i r9, 2
001198  1f0c0002  addli r24, zero, 256
00119c  0b95a410  add.s r10, r9, r10
0011a0  e3441f00  loadli.w r9,  12(r30)
0011a4  3f209500  blt.s r10, r9, 8
0011a8  dbd40000  j 1700
0011ac  e3041f00  loadli.w r9,  8(r30)
0011b0  9f160000  addli r13, zero, 1
0011b4  e74cafc2  storeli.w r10, -7732(r30)
0011b8  8b149510  add.s r9, r10, r9
0011bc  1f056fc5  addli r10, r30, -7504
0011c0  8b94c420  mul.s r9, r9, r12
0011c4  339a0428  sext_int2long r[21:22], r9
0011c8  e3447fc5  loadli.w r9,  -7492(r30)
0011cc  73304501  store.d r[21:22], 0(r10)
0011d0  bff6d400  blt.s r9, r13, 444
0011d4  9f240000  addli r9, zero, 2
0011d8  1f07afc3  addli r14, r30, -7728
0011dc  9f090000  addli r19, zero, 0
0011e0  9f060000  addli r13, zero, 0
0011e4  9f0b0000  addli r23, zero, 0
0011e8  97349a02  sll.d r[10:11], r[21:22], r9
0011ec  6b5a0700  load.d r[21:22], 0(r14)
0011f0  8b249a10  add.ul r[10:11], r[21:22], r[10:11]
0011f4  5b0f0000  j 120
0011f8  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
0011fc  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001200  1f0c0002  addli r24, zero, 256
001204  1f070001  addli r14, zero, 128
001208  9f9b0b00  addli r23, r23, 1
00120c  6a713cc0  vsrl.p vr2, r24, vr3
001210  6a721cc0  vsrl.p vr4, r24, vr1
001214  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
001218  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
00121c  ea7127c0  vsrl.p vr3, r14, vr2
001220  6a7217c0  vsrl.p vr4, r14, vr1
001224  1f078000  addli r14, zero, 64
001228  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
00122c  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
001230  ea7127c0  vsrl.p vr3, r14, vr2
001234  6a7217c0  vsrl.p vr4, r14, vr1
001238  1f074000  addli r14, zero, 32
00123c  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
001240  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
001244  ea7127c0  vsrl.p vr3, r14, vr2
001248  6a7217c0  vsrl.p vr4, r14, vr1
00124c  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
001250  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
001254  7a170140  vextracti.f r14, 0(vr2)
001258  7a9a0040  vextracti.f r20, 0(vr1)
00125c  8be9e910  add.f.rn r19, r19, r14
001260  8be64611  add.f.rn r13, r13, r20
001264  63477fc5  loadli.w r14,  -7492(r30)
001268  b7b4eb00  beq r23, r14, 300
00126c  1f870b00  addli r14, r23, 0
001270  37d08501  beq r11, r24, 20
001274  6347bfc3  loadli.w r14,  -7716(r30)
001278  634a7fc5  loadli.w r20,  -7492(r30)
00127c  17a7eb00  xor r14, r23, r14
001280  0b17ea10  add.s r14, r20, r14
001284  1f8e0500  addli r28, r11, 0
001288  0b1cb720  mul.s r24, r14, r11
00128c  9f2c0000  addli r25, zero, 2
001290  0b1ec751  fmac.s r28, r14, r28
001294  331a0c28  sext_int2long r[21:22], r24
001298  2b0700f0  lui r14, 983040
00129c  0b1ece40  min.s r28, r28, r12
0012a0  173a9a03  sll.d r[21:22], r[21:22], r25
0012a4  0b1c8e19  sub.s r24, r28, r24
0012a8  8bac4411  add.ul r[26:27], r[10:11], r[21:22]
0012ac  0b2a4211  add.ul r[21:22], r[5:6], r[21:22]
0012b0  1b3e2c00  slli r28, r24, 2
0012b4  1717ee00  or r14, r28, r14
0012b8  7fa76c01  l_gm2lm r14, r22, 0(r[26:27])
0012bc  2b0700f0  lui r14, 983040
0012c0  00a00200  mfence { lm, gm }
0012c4  1717ee00  or r14, r28, r14
0012c8  7f272a01  l_gm2lm r14, r18, 0(r[21:22])
0012cc  1f078fc5  addli r14, r30, -7488
0012d0  00a00200  mfence { lm, gm }
0012d4  00a00300  mfence { lm, sm, gm }
0012d8  c2100702  vload_mask16.mz vr1{mr1}, 0(r14)
0012dc  1f170000  addli r14, zero, 1
0012e0  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0012e4  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0012e8  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0012ec  3f3cecfe  blt.s r24, r14, -244
0012f0  1f0a8fc5  addli r20, r30, -7488
0012f4  1f0e0000  addli r28, zero, 0
0012f8  1f070000  addli r14, zero, 0
0012fc  42120a02  vload_mask16.mz vr4{mr1}, 0(r20)
001300  92304002  vadd.s.mz vr1{mr1}, zero, vr4
001304  12314002  vadd.s.mz vr2{mr1}, zero, vr4
001308  92314002  vadd.s.mz vr3{mr1}, zero, vr4
00130c  0b1acb11  add.s r20, r22, r28
001310  8b1ac911  add.s r21, r18, r28
001314  1f078700  addli r14, r14, 64
001318  1f0e0e02  addli r28, r28, 256
00131c  9f0c8a00  addli r25, r20, 64
001320  1f8d0a01  addli r26, r21, 128
001324  c2120a02  vload_mask16.mz vr5{mr1}, 0(r20)
001328  c2930a02  vload_mask16.mz vr7{mr1}, 0(r21)
00132c  42930c02  vload_mask16.mz vr6{mr1}, 0(r25)
001330  9f8c8a00  addli r25, r21, 64
001334  42150d02  vload_mask16.mz vr10{mr1}, 0(r26)
001338  9f8a8a01  addli r21, r21, 192
00133c  42940c02  vload_mask16.mz vr8{mr1}, 0(r25)
001340  9f0c0a01  addli r25, r20, 128
001344  1f0a8a01  addli r20, r20, 192
001348  42900a02  vload_mask16.mz vr0{mr1}, 0(r21)
00134c  c2940c02  vload_mask16.mz vr9{mr1}, 0(r25)
001350  c2150a02  vload_mask16.mz vr11{mr1}, 0(r20)
001354  96927202  vadd.f.mz.rn vr5{mr1}, vr5, vr7
001358  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
00135c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001360  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001364  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
001368  16900502  vadd.f.mz.rn vr0{mr1}, vr11, vr0
00136c  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001370  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001374  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001378  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00137c  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
001380  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001384  3f2e87ff  blt.s r14, r24, -120
001388  5bceffff  j -400
00138c  9f060000  addli r13, zero, 0
001390  9f090000  addli r19, zero, 0
001394  9f043fc5  addli r9, r30, -7528
001398  630e9fc3  loadli.w r28,  -7736(r30)
00139c  ebdc0400  load.d r[26:27], 0(r9)
0013a0  9f140000  addli r9, zero, 1
0013a4  bf3796fe  blt.s r12, r9, -532
0013a8  63458fc3  loadli.w r10,  -7740(r30)
0013ac  1f076fc5  addli r14, r30, -7504
0013b0  8f84a918  div.f.rn r9, r19, r10
0013b4  0f85a618  div.f.rn r10, r13, r10
0013b8  eb590700  load.d r[20:21], 0(r14)
0013bc  1f075fc5  addli r14, r30, -7512
0013c0  8be69420  mul.f.rn r13, r9, r9
0013c4  0b65d518  sub.f.rn r10, r10, r13
0013c8  e3063f00  loadli.w r13,  24(r30)
0013cc  0b65d510  add.f.rn r10, r10, r13
0013d0  ab06803f  lui r13, 260096
0013d4  0f050508  sqrt.f.rn r10, r10
0013d8  8f86a618  div.f.rn r13, r13, r10
0013dc  1f250000  addli r10, zero, 2
0013e0  97bba902  sll.d r[24:25], r[20:21], r10
0013e4  1f05afc3  addli r10, r30, -7728
0013e8  eb590500  load.d r[20:21], 0(r10)
0013ec  1f056fc5  addli r10, r30, -7504
0013f0  8ba97911  add.ul r[20:21], r[20:21], r[24:25]
0013f4  73303501  store.d r[20:21], 0(r10)
0013f8  8be90458  neg.f r19, r9
0013fc  eb540f00  load.d r[10:11], 0(r30)
001400  8ba47411  add.ul r[10:11], r[10:11], r[24:25]
001404  9f0b0000  addli r23, zero, 0
001408  73309700  store.d r[10:11], 0(r14)
00140c  db070000  j 60
001410  1f0c5fc5  addli r24, r30, -7512
001414  2b0700f0  lui r14, 983040
001418  46903802  vstore_mask16.mz vr3{mr1}, 0(r17)
00141c  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
001420  9f8b0b02  addli r23, r23, 256
001424  6b5a0c00  load.d r[21:22], 0(r24)
001428  1717e400  or r14, r8, r14
00142c  00a00000  mfence { lm }
001430  8b249a10  add.ul r[10:11], r[21:22], r[10:11]
001434  7fb76401  s_lm2gm r14, r22, 0(r[10:11])
001438  00a00200  mfence { lm, gm }
00143c  00a00300  mfence { lm, sm, gm }
001440  3fa0cb00  blt.s r23, r12, 8
001444  dba9ffff  j -692
001448  b3840b28  zext_int2long r[10:11], r23
00144c  1f2a0000  addli r20, zero, 2
001450  1f0c6fc5  addli r24, r30, -7504
001454  2b0700f0  lui r14, 983040
001458  97b44403  sll.d r[10:11], r[10:11], r20
00145c  6b5a0c00  load.d r[21:22], 0(r24)
001460  1717e400  or r14, r8, r14
001464  2b0c00f0  lui r24, 983040
001468  0b2a9a10  add.ul r[21:22], r[21:22], r[10:11]
00146c  7f276a01  l_gm2lm r14, r22, 0(r[21:22])
001470  0b2a9210  add.ul r[21:22], r[5:6], r[10:11]
001474  17178401  or r14, r8, r24
001478  00a00200  mfence { lm, gm }
00147c  7f272a01  l_gm2lm r14, r18, 0(r[21:22])
001480  00a00200  mfence { lm, gm }
001484  b7e00000  beq r1, zero, 56
001488  1f0c7fc7  addli r24, r30, -7240
00148c  2b0700f0  lui r14, 983040
001490  6b5a0c00  load.d r[21:22], 0(r24)
001494  1717e400  or r14, r8, r14
001498  2b0c00f0  lui r24, 983040
00149c  0b2a9a10  add.ul r[21:22], r[21:22], r[10:11]
0014a0  7f27ca01  l_gm2lm r14, r28, 0(r[21:22])
0014a4  17178401  or r14, r8, r24
0014a8  0baa9c10  add.ul r[21:22], r[26:27], r[10:11]
0014ac  00a00200  mfence { lm, gm }
0014b0  630c7fc5  loadli.w r24,  -7496(r30)
0014b4  7f278a01  l_gm2lm r14, r24, 0(r[21:22])
0014b8  00a00200  mfence { lm, gm }
0014bc  00a00300  mfence { lm, sm, gm }
0014c0  63078fc6  loadli.w r14,  -7360(r30)
0014c4  42100b02  vload_mask16.mz vr0{mr1}, 0(r22)
0014c8  42110902  vload_mask16.mz vr2{mr1}, 0(r18)
0014cc  c2100702  vload_mask16.mz vr1{mr1}, 0(r14)
0014d0  63474fc5  loadli.w r14,  -7516(r30)
0014d4  c2110702  vload_mask16.mz vr3{mr1}, 0(r14)
0014d8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0014dc  12900902  vadd.f.mz.rn vr0{mr1}, r19, vr0
0014e0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0014e4  0a920602  vmul.f.mz.rn vr4{mr1}, r13, vr0
0014e8  92901902  vadd.f.mz.rn vr1{mr1}, r19, vr1
0014ec  0a911602  vmul.f.mz.rn vr2{mr1}, r13, vr1
0014f0  b7c00000  beq r1, zero, 48
0014f4  6307bfc4  loadli.w r14,  -7592(r30)
0014f8  42100e02  vload_mask16.mz vr0{mr1}, 0(r28)
0014fc  c2100702  vload_mask16.mz vr1{mr1}, 0(r14)
001500  63077fc5  loadli.w r14,  -7496(r30)
001504  c2110702  vload_mask16.mz vr3{mr1}, 0(r14)
001508  6347afc4  loadli.w r14,  -7596(r30)
00150c  c2120702  vload_mask16.mz vr5{mr1}, 0(r14)
001510  a6110202  vmac.f.mz.rn vr3{mr1}, vr4, vr0
001514  a6121102  vmac.f.mz.rn vr5{mr1}, vr2, vr1
001518  12323002  vadd.s.mz vr4{mr1}, zero, vr3
00151c  12315002  vadd.s.mz vr2{mr1}, zero, vr5
001520  63477fc6  loadli.w r14,  -7364(r30)
001524  46104b02  vstore_mask16.mz vr4{mr1}, 0(r22)
001528  42100702  vload_mask16.mz vr0{mr1}, 0(r14)
00152c  63077fc6  loadli.w r14,  -7368(r30)
001530  c2100702  vload_mask16.mz vr1{mr1}, 0(r14)
001534  63074fc5  loadli.w r14,  -7520(r30)
001538  c2110702  vload_mask16.mz vr3{mr1}, 0(r14)
00153c  63472fc5  loadli.w r14,  -7532(r30)
001540  c2120702  vload_mask16.mz vr5{mr1}, 0(r14)
001544  63078fc6  loadli.w r14,  -7360(r30)
001548  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
00154c  46102702  vstore_mask16.mz vr2{mr1}, 0(r14)
001550  96905002  vadd.f.mz.rn vr1{mr1}, vr1, vr5
001554  12900902  vadd.f.mz.rn vr0{mr1}, r19, vr0
001558  92901902  vadd.f.mz.rn vr1{mr1}, r19, vr1
00155c  8a910602  vmul.f.mz.rn vr3{mr1}, r13, vr0
001560  8a901602  vmul.f.mz.rn vr1{mr1}, r13, vr1
001564  b7d00000  beq r1, zero, 52
001568  6307afc4  loadli.w r14,  -7600(r30)
00156c  42100702  vload_mask16.mz vr0{mr1}, 0(r14)
001570  63079fc4  loadli.w r14,  -7608(r30)
001574  42110702  vload_mask16.mz vr2{mr1}, 0(r14)
001578  63478fc4  loadli.w r14,  -7612(r30)
00157c  42120702  vload_mask16.mz vr4{mr1}, 0(r14)
001580  63078fc4  loadli.w r14,  -7616(r30)
001584  c2120702  vload_mask16.mz vr5{mr1}, 0(r14)
001588  26920102  vmac.f.mz.rn vr4{mr1}, vr3, vr0
00158c  a6922002  vmac.f.mz.rn vr5{mr1}, vr1, vr2
001590  92314002  vadd.s.mz vr3{mr1}, zero, vr4
001594  92305002  vadd.s.mz vr1{mr1}, zero, vr5
001598  63476fc6  loadli.w r14,  -7372(r30)
00159c  42100702  vload_mask16.mz vr0{mr1}, 0(r14)
0015a0  63076fc6  loadli.w r14,  -7376(r30)
0015a4  42110702  vload_mask16.mz vr2{mr1}, 0(r14)
0015a8  63071fc5  loadli.w r14,  -7544(r30)
0015ac  42120702  vload_mask16.mz vr4{mr1}, 0(r14)
0015b0  63470fc5  loadli.w r14,  -7548(r30)
0015b4  c2120702  vload_mask16.mz vr5{mr1}, 0(r14)
0015b8  63477fc6  loadli.w r14,  -7364(r30)
0015bc  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
0015c0  46103702  vstore_mask16.mz vr3{mr1}, 0(r14)
0015c4  63077fc6  loadli.w r14,  -7368(r30)
0015c8  16115102  vadd.f.mz.rn vr2{mr1}, vr2, vr5
0015cc  46101702  vstore_mask16.mz vr1{mr1}, 0(r14)
0015d0  12900902  vadd.f.mz.rn vr0{mr1}, r19, vr0
0015d4  12912902  vadd.f.mz.rn vr2{mr1}, r19, vr2
0015d8  0a920602  vmul.f.mz.rn vr4{mr1}, r13, vr0
0015dc  0a912602  vmul.f.mz.rn vr2{mr1}, r13, vr2
0015e0  b7d00000  beq r1, zero, 52
0015e4  63477fc4  loadli.w r14,  -7620(r30)
0015e8  42100702  vload_mask16.mz vr0{mr1}, 0(r14)
0015ec  63077fc4  loadli.w r14,  -7624(r30)
0015f0  c2100702  vload_mask16.mz vr1{mr1}, 0(r14)
0015f4  63476fc4  loadli.w r14,  -7628(r30)
0015f8  c2110702  vload_mask16.mz vr3{mr1}, 0(r14)
0015fc  63076fc4  loadli.w r14,  -7632(r30)
001600  c2120702  vload_mask16.mz vr5{mr1}, 0(r14)
001604  a6110202  vmac.f.mz.rn vr3{mr1}, vr4, vr0
001608  a6121102  vmac.f.mz.rn vr5{mr1}, vr2, vr1
00160c  12323002  vadd.s.mz vr4{mr1}, zero, vr3
001610  12315002  vadd.s.mz vr2{mr1}, zero, vr5
001614  63475fc6  loadli.w r14,  -7380(r30)
001618  42100702  vload_mask16.mz vr0{mr1}, 0(r14)
00161c  63075fc6  loadli.w r14,  -7384(r30)
001620  c2100702  vload_mask16.mz vr1{mr1}, 0(r14)
001624  63070fc5  loadli.w r14,  -7552(r30)
001628  c2110702  vload_mask16.mz vr3{mr1}, 0(r14)
00162c  6347ffc4  loadli.w r14,  -7556(r30)
001630  c2120702  vload_mask16.mz vr5{mr1}, 0(r14)
001634  63476fc6  loadli.w r14,  -7372(r30)
001638  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
00163c  46104702  vstore_mask16.mz vr4{mr1}, 0(r14)
001640  63076fc6  loadli.w r14,  -7376(r30)
001644  96905002  vadd.f.mz.rn vr1{mr1}, vr1, vr5
001648  46102702  vstore_mask16.mz vr2{mr1}, 0(r14)
00164c  12900902  vadd.f.mz.rn vr0{mr1}, r19, vr0
001650  92901902  vadd.f.mz.rn vr1{mr1}, r19, vr1
001654  8a910602  vmul.f.mz.rn vr3{mr1}, r13, vr0
001658  8a901602  vmul.f.mz.rn vr1{mr1}, r13, vr1
00165c  b7d00000  beq r1, zero, 52
001660  63475fc4  loadli.w r14,  -7636(r30)
001664  42100702  vload_mask16.mz vr0{mr1}, 0(r14)
001668  63075fc4  loadli.w r14,  -7640(r30)
00166c  42110702  vload_mask16.mz vr2{mr1}, 0(r14)
001670  63474fc4  loadli.w r14,  -7644(r30)
001674  42120702  vload_mask16.mz vr4{mr1}, 0(r14)
001678  63074fc4  loadli.w r14,  -7648(r30)
00167c  c2120702  vload_mask16.mz vr5{mr1}, 0(r14)
001680  26920102  vmac.f.mz.rn vr4{mr1}, vr3, vr0
001684  a6922002  vmac.f.mz.rn vr5{mr1}, vr1, vr2
001688  92314002  vadd.s.mz vr3{mr1}, zero, vr4
00168c  92305002  vadd.s.mz vr1{mr1}, zero, vr5
001690  6307ffc4  loadli.w r14,  -7560(r30)
001694  42100802  vload_mask16.mz vr0{mr1}, 0(r16)
001698  42110302  vload_mask16.mz vr2{mr1}, 0(r6)
00169c  42120702  vload_mask16.mz vr4{mr1}, 0(r14)
0016a0  6347efc4  loadli.w r14,  -7564(r30)
0016a4  c2120702  vload_mask16.mz vr5{mr1}, 0(r14)
0016a8  63475fc6  loadli.w r14,  -7380(r30)
0016ac  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
0016b0  46103702  vstore_mask16.mz vr3{mr1}, 0(r14)
0016b4  63075fc6  loadli.w r14,  -7384(r30)
0016b8  16115102  vadd.f.mz.rn vr2{mr1}, vr2, vr5
0016bc  46101702  vstore_mask16.mz vr1{mr1}, 0(r14)
0016c0  12900902  vadd.f.mz.rn vr0{mr1}, r19, vr0
0016c4  12912902  vadd.f.mz.rn vr2{mr1}, r19, vr2
0016c8  0a920602  vmul.f.mz.rn vr4{mr1}, r13, vr0
0016cc  0a912602  vmul.f.mz.rn vr2{mr1}, r13, vr2
0016d0  b7d00000  beq r1, zero, 52
0016d4  63473fc4  loadli.w r14,  -7652(r30)
0016d8  42100702  vload_mask16.mz vr0{mr1}, 0(r14)
0016dc  63073fc4  loadli.w r14,  -7656(r30)
0016e0  c2100702  vload_mask16.mz vr1{mr1}, 0(r14)
0016e4  63472fc4  loadli.w r14,  -7660(r30)
0016e8  c2110702  vload_mask16.mz vr3{mr1}, 0(r14)
0016ec  63072fc4  loadli.w r14,  -7664(r30)
0016f0  c2120702  vload_mask16.mz vr5{mr1}, 0(r14)
0016f4  a6110202  vmac.f.mz.rn vr3{mr1}, vr4, vr0
0016f8  a6121102  vmac.f.mz.rn vr5{mr1}, vr2, vr1
0016fc  12323002  vadd.s.mz vr4{mr1}, zero, vr3
001700  12315002  vadd.s.mz vr2{mr1}, zero, vr5
001704  6307efc4  loadli.w r14,  -7568(r30)
001708  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
00170c  c2900702  vload_mask16.mz vr1{mr1}, 0(r15)
001710  46104802  vstore_mask16.mz vr4{mr1}, 0(r16)
001714  46102302  vstore_mask16.mz vr2{mr1}, 0(r6)
001718  c2110702  vload_mask16.mz vr3{mr1}, 0(r14)
00171c  6347dfc4  loadli.w r14,  -7572(r30)
001720  c2120702  vload_mask16.mz vr5{mr1}, 0(r14)
001724  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
001728  96905002  vadd.f.mz.rn vr1{mr1}, vr1, vr5
00172c  12900902  vadd.f.mz.rn vr0{mr1}, r19, vr0
001730  92901902  vadd.f.mz.rn vr1{mr1}, r19, vr1
001734  8a910602  vmul.f.mz.rn vr3{mr1}, r13, vr0
001738  8a901602  vmul.f.mz.rn vr1{mr1}, r13, vr1
00173c  b7d00000  beq r1, zero, 52
001740  63471fc4  loadli.w r14,  -7668(r30)
001744  42100702  vload_mask16.mz vr0{mr1}, 0(r14)
001748  63071fc4  loadli.w r14,  -7672(r30)
00174c  42110702  vload_mask16.mz vr2{mr1}, 0(r14)
001750  63470fc4  loadli.w r14,  -7676(r30)
001754  42120702  vload_mask16.mz vr4{mr1}, 0(r14)
001758  63070fc4  loadli.w r14,  -7680(r30)
00175c  c2120702  vload_mask16.mz vr5{mr1}, 0(r14)
001760  26920102  vmac.f.mz.rn vr4{mr1}, vr3, vr0
001764  a6922002  vmac.f.mz.rn vr5{mr1}, vr1, vr2
001768  92314002  vadd.s.mz vr3{mr1}, zero, vr4
00176c  92305002  vadd.s.mz vr1{mr1}, zero, vr5
001770  6307dfc4  loadli.w r14,  -7576(r30)
001774  42900d02  vload_mask16.mz vr0{mr1}, 0(r27)
001778  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
00177c  46903102  vstore_mask16.mz vr3{mr1}, 0(r3)
001780  46901702  vstore_mask16.mz vr1{mr1}, 0(r15)
001784  42120702  vload_mask16.mz vr4{mr1}, 0(r14)
001788  6347cfc4  loadli.w r14,  -7580(r30)
00178c  c2120702  vload_mask16.mz vr5{mr1}, 0(r14)
001790  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
001794  16115102  vadd.f.mz.rn vr2{mr1}, vr2, vr5
001798  12900902  vadd.f.mz.rn vr0{mr1}, r19, vr0
00179c  12912902  vadd.f.mz.rn vr2{mr1}, r19, vr2
0017a0  0a920602  vmul.f.mz.rn vr4{mr1}, r13, vr0
0017a4  0a912602  vmul.f.mz.rn vr2{mr1}, r13, vr2
0017a8  b7d00000  beq r1, zero, 52
0017ac  6347ffc3  loadli.w r14,  -7684(r30)
0017b0  42100702  vload_mask16.mz vr0{mr1}, 0(r14)
0017b4  6307ffc3  loadli.w r14,  -7688(r30)
0017b8  c2100702  vload_mask16.mz vr1{mr1}, 0(r14)
0017bc  6347efc3  loadli.w r14,  -7692(r30)
0017c0  c2110702  vload_mask16.mz vr3{mr1}, 0(r14)
0017c4  6307efc3  loadli.w r14,  -7696(r30)
0017c8  c2120702  vload_mask16.mz vr5{mr1}, 0(r14)
0017cc  a6110202  vmac.f.mz.rn vr3{mr1}, vr4, vr0
0017d0  a6121102  vmac.f.mz.rn vr5{mr1}, vr2, vr1
0017d4  12323002  vadd.s.mz vr4{mr1}, zero, vr3
0017d8  12315002  vadd.s.mz vr2{mr1}, zero, vr5
0017dc  6307cfc4  loadli.w r14,  -7584(r30)
0017e0  42900802  vload_mask16.mz vr0{mr1}, 0(r17)
0017e4  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0017e8  46904d02  vstore_mask16.mz vr4{mr1}, 0(r27)
0017ec  46902302  vstore_mask16.mz vr2{mr1}, 0(r7)
0017f0  c2110702  vload_mask16.mz vr3{mr1}, 0(r14)
0017f4  6347bfc4  loadli.w r14,  -7588(r30)
0017f8  c2120702  vload_mask16.mz vr5{mr1}, 0(r14)
0017fc  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
001800  96905002  vadd.f.mz.rn vr1{mr1}, vr1, vr5
001804  12900902  vadd.f.mz.rn vr0{mr1}, r19, vr0
001808  92901902  vadd.f.mz.rn vr1{mr1}, r19, vr1
00180c  8a910602  vmul.f.mz.rn vr3{mr1}, r13, vr0
001810  8a901602  vmul.f.mz.rn vr1{mr1}, r13, vr1
001814  b7ff00fc  beq r1, zero, -1028
001818  6347dfc3  loadli.w r14,  -7700(r30)
00181c  42100702  vload_mask16.mz vr0{mr1}, 0(r14)
001820  6307dfc3  loadli.w r14,  -7704(r30)
001824  42110702  vload_mask16.mz vr2{mr1}, 0(r14)
001828  6347cfc3  loadli.w r14,  -7708(r30)
00182c  42120702  vload_mask16.mz vr4{mr1}, 0(r14)
001830  6307cfc3  loadli.w r14,  -7712(r30)
001834  c2120702  vload_mask16.mz vr5{mr1}, 0(r14)
001838  26920102  vmac.f.mz.rn vr4{mr1}, vr3, vr0
00183c  a6922002  vmac.f.mz.rn vr5{mr1}, vr1, vr2
001840  92314002  vadd.s.mz vr3{mr1}, zero, vr4
001844  92305002  vadd.s.mz vr1{mr1}, zero, vr5
001848  5b79ffff  j -1080
00184c  9f0e8fc3  addli sp, r30, -7744
001850  e38f2e3c  loadli.w r31,  7696(sp)
001854  63cf2e3c  loadli.w r30,  7700(sp)
001858  638e3e3c  loadli.w r28,  7704(sp)
00185c  e3cd3e3c  loadli.w r27,  7708(sp)
001860  638d4e3c  loadli.w r26,  7712(sp)
001864  e3cc4e3c  loadli.w r25,  7716(sp)
001868  638c5e3c  loadli.w r24,  7720(sp)
00186c  e3cb5e3c  loadli.w r23,  7724(sp)
001870  638b6e3c  loadli.w r22,  7728(sp)
001874  e3ca6e3c  loadli.w r21,  7732(sp)
001878  638a7e3c  loadli.w r20,  7736(sp)
00187c  e3c97e3c  loadli.w r19,  7740(sp)
001880  9f8e8e3c  addli sp, sp, 7744
001884  5f800f00  jr r31, 0
001888  00100000  exit
00188c  00100000  exit
001890  00100000  exit
001894  00100000  exit
001898  00100000  exit
00189c  00100000  exit
0018a0  00100000  exit
0018a4  00100000  exit
0018a8  00100000  exit
0018ac  00100000  exit
0018b0  00100000  exit
0018b4  00100000  exit
0018b8  00100000  exit
0018bc  00100000  exit
0018c0  00100000  exit
0018c4  00100000  exit
0018c8  00100000  exit
0018cc  00100000  exit
0018d0  00100000  exit
0018d4  00100000  exit
0018d8  00100000  exit
0018dc  00100000  exit
0018e0  00100000  exit
0018e4  00100000  exit
0018e8  00100000  exit
0018ec  00100000  exit
0018f0  00100000  exit
0018f4  00100000  exit
0018f8  00100000  exit
0018fc  00100000  exit
001900  00100000  exit
001904  00100000  exit
001908  00100000  exit
00190c  00100000  exit
001910  00100000  exit
001914  00100000  exit
001918  00100000  exit
00191c  00100000  exit
001920  00100000  exit
001924  00100000  exit
001928  00100000  exit
00192c  00100000  exit
001930  00100000  exit
001934  00100000  exit
001938  00100000  exit
00193c  00100000  exit
001940  00100000  exit
001944  00100000  exit
001948  00100000  exit
00194c  00100000  exit
001950  00100000  exit
001954  00100000  exit
001958  00100000  exit
00195c  00100000  exit
001960  00100000  exit
001964  00100000  exit
001968  00100000  exit
00196c  00100000  exit
001970  00100000  exit
001974  00100000  exit
001978  00100000  exit
00197c  00100000  exit
001980  00100000  exit
001984  00100000  exit
001988  00100000  exit
00198c  00100000  exit
001990  00100000  exit
001994  00100000  exit
001998  00100000  exit
00199c  00100000  exit
0019a0  00100000  exit
0019a4  00100000  exit
0019a8  00100000  exit
0019ac  00100000  exit
0019b0  00100000  exit
0019b4  00100000  exit
0019b8  00100000  exit
0019bc  00100000  exit
0019c0  00100000  exit
0019c4  00100000  exit
0019c8  00100000  exit
0019cc  00100000  exit
0019d0  00100000  exit
0019d4  00100000  exit
0019d8  00100000  exit
0019dc  00100000  exit
0019e0  00100000  exit
0019e4  00100000  exit
0019e8  00100000  exit
0019ec  00100000  exit
0019f0  00100000  exit
0019f4  00100000  exit
0019f8  00100000  exit
0019fc  00100000  exit
001a00  00100000  exit
001a04  00100000  exit
001a08  00100000  exit
001a0c  00100000  exit
001a10  00100000  exit
001a14  00100000  exit
001a18  00100000  exit
001a1c  00100000  exit
001a20  00100000  exit
001a24  00100000  exit
001a28  00100000  exit
001a2c  00100000  exit
001a30  00100000  exit
001a34  00100000  exit
001a38  00100000  exit
001a3c  00100000  exit
001a40  00100000  exit
001a44  00100000  exit
001a48  00100000  exit
001a4c  00100000  exit
001a50  00100000  exit
001a54  00100000  exit
001a58  00100000  exit
001a5c  00100000  exit
001a60  00100000  exit
001a64  00100000  exit
001a68  00100000  exit
001a6c  00100000  exit
001a70  00100000  exit
001a74  00100000  exit
001a78  00100000  exit
001a7c  00100000  exit
001a80  00100000  exit
001a84  00100000  exit
001a88  00100000  exit
001a8c  00100000  exit
001a90  00100000  exit
001a94  00100000  exit
001a98  00100000  exit
001a9c  00100000  exit
001aa0  00100000  exit
001aa4  00100000  exit
001aa8  00100000  exit
001aac  00100000  exit
001ab0  00100000  exit
001ab4  00100000  exit
001ab8  00100000  exit
001abc  00100000  exit
001ac0  00100000  exit
001ac4  00100000  exit
