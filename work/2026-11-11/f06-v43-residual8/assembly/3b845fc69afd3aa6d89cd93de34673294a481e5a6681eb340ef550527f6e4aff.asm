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
000078  9f495000  addli r19, zero, 44
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
0000dc  9f8e0ede  addli sp, sp, -4352
0000e0  1f8f8e21  addli r30, sp, 4288
0000e4  80520002  load_param_i r5, 0
0000e8  e3004f00  loadli.w r1,  32(r30)
0000ec  63414f00  loadli.w r2,  36(r30)
0000f0  e3015f00  loadli.w r3,  40(r30)
0000f4  8b101120  mul.s r1, r2, r1
0000f8  8b903020  mul.s r1, r1, r3
0000fc  67071fde  storeli.w r1, -4240(r30)
000100  4bf05006  ble.s r1, r5, 3100
000104  e3002f00  loadli.w r1,  16(r30)
000108  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00010c  00510102  load_param_i r2, 2
000110  80310002  core_id r3
000114  ab094000  lui r19, 1024
000118  00d20002  load_param_i r4, 1
00011c  1f0c0010  addli r24, zero, 2048
000120  33970228  sext_int2long r[15:16], r5
000124  1f241000  addli r8, zero, 10
000128  1f1d0000  addli r26, zero, 1
00012c  9f040fe0  addli r9, r30, -4096
000130  1f091000  addli r18, zero, 8
000134  33980128  sext_int2long r[17:18], r3
000138  33160128  sext_int2long r[13:14], r2
00013c  9f011fdf  addli r3, r30, -4216
000140  e7464fde  storeli.w r4, -4244(r30)
000144  33150228  sext_int2long r[11:12], r4
000148  2b02807f  lui r4, 522240
00014c  33030c28  zext_int2long r[7:8], r24
000150  b3800008  fix2float.rn r1, r1
000154  ea210222  vor.u.mz vr3{mr1}, r4, vr0
000158  1f02ffde  addli r4, r30, -4232
00015c  ea900022  vor.f.mz vr1{mr1}, r1, vr0
000160  abf03f00  lui r1, 1023
000164  73306200  store.d r[7:8], 0(r4)
000168  1f026fdf  addli r4, r30, -4176
00016c  9b90f0ff  ori r1, r1, 4095
000170  7330a200  store.d r[11:12], 0(r4)
000174  1f025fdf  addli r4, r30, -4184
000178  338a0028  zext_int2long r[21:22], r1
00017c  b3800928  zext_int2long r[2:3], r19
000180  7330c200  store.d r[13:14], 0(r4)
000184  1f024fdf  addli r4, r30, -4192
000188  73b01100  store.d r[2:3], 0(r3)
00018c  9f000008  addli r1, zero, 1024
000190  9f010fdf  addli r3, r30, -4224
000194  7330e200  store.d r[15:16], 0(r4)
000198  1f023fdf  addli r4, r30, -4200
00019c  b3800028  zext_int2long r[2:3], r1
0001a0  73300201  store.d r[17:18], 0(r4)
0001a4  1f022fdf  addli r4, r30, -4208
0001a8  73b01100  store.d r[2:3], 0(r3)
0001ac  aba0aaaa  lui r1, 699050
0001b0  ab515555  lui r3, 349525
0001b4  1f010ff0  addli r2, r30, -2048
0001b8  73304201  store.d r[21:22], 0(r4)
0001bc  9fa05015  addli r1, r1, 2730
0001c0  9fd1a10a  addli r3, r3, 1365
0001c4  7e8000e0  vmmov mr0, r1
0001c8  9f002000  addli r1, zero, 16
0001cc  7e8101e0  vmmov mr2, r3
0001d0  ab710000  lui r3, 7
0001d4  6aa10022  vor.u.mz vr2{mr1}, r1, vr0
0001d8  9b91f1ff  ori r3, r3, 4095
0001dc  db030000  j 28
0001e0  e342efde  loadli.w r5,  -4236(r30)
0001e4  6342dfde  loadli.w r4,  -4244(r30)
0001e8  8b924210  add.s r5, r5, r4
0001ec  6302efde  loadli.w r4,  -4240(r30)
0001f0  3fa04200  blt.s r5, r4, 8
0001f4  5b650100  j 2856
0001f8  9f030000  addli r7, zero, 0
0001fc  67475fde  storeli.w r5, -4236(r30)
000200  db0b0000  j 92
000204  1f067fdf  addli r12, r30, -4168
000208  eb528f01  load.d r[6:7], 24(r30)
00020c  2b0200f0  lui r4, 983040
000210  1f091000  addli r18, zero, 8
000214  6b550600  load.d r[11:12], 0(r12)
000218  17124400  or r4, r8, r4
00021c  1f241000  addli r8, zero, 10
000220  8ba2a210  add.ul r[6:7], r[6:7], r[11:12]
000224  7fb22200  s_lm2gm r4, r2, 0(r[6:7])
000228  1f026fdf  addli r4, r30, -4176
00022c  00a00000  mfence { lm }
000230  6b550200  load.d r[11:12], 0(r4)
000234  1f025fdf  addli r4, r30, -4184
000238  6b560200  load.d r[13:14], 0(r4)
00023c  1f024fdf  addli r4, r30, -4192
000240  6b570200  load.d r[15:16], 0(r4)
000244  1f023fdf  addli r4, r30, -4200
000248  6b580200  load.d r[17:18], 0(r4)
00024c  1f022fdf  addli r4, r30, -4208
000250  6b5a0200  load.d r[21:22], 0(r4)
000254  9f930300  addli r7, r7, 1
000258  37ae23ff  beq r7, r18, -120
00025c  33820328  zext_int2long r[5:6], r7
000260  0b324620  mul.sl r[5:6], r[13:14], r[5:6]
000264  0b220211  add.ul r[5:6], r[5:6], r[17:18]
000268  0b32a220  mul.sl r[5:6], r[5:6], r[11:12]
00026c  0b22e210  add.ul r[5:6], r[5:6], r[15:16]
000270  17328202  sll.d r[5:6], r[5:6], r8
000274  13334a04  setlt.sl r6, r[21:22], r[5:6]
000278  3b7f03fe  bneq r6, zero, -36
00027c  1f03ffde  addli r6, r30, -4232
000280  1f341000  addli r8, zero, 11
000284  33070028  zext_int2long r[15:16], zero
000288  9738a203  sll.d r[18:19], r[5:6], r26
00028c  9f0c0000  addli r25, zero, 0
000290  6b550300  load.d r[11:12], 0(r6)
000294  1f031fdf  addli r6, r30, -4216
000298  6b560300  load.d r[13:14], 0(r6)
00029c  2b0300f0  lui r6, 983040
0002a0  0f15a260  div.sl r[11:12], r[5:6], r[11:12]
0002a4  0b364618  sub.sl r[13:14], r[13:14], r[5:6]
0002a8  0b36e648  max.sl r[13:14], r[13:14], r[15:16]
0002ac  2b0700f0  lui r14, 983040
0002b0  17358502  sll.d r[11:12], r[11:12], r8
0002b4  1f040fdf  addli r8, r30, -4224
0002b8  eb570400  load.d r[16:17], 0(r8)
0002bc  1f047fdf  addli r8, r30, -4168
0002c0  0b32a218  sub.sl r[5:6], r[5:6], r[11:12]
0002c4  6b550f00  load.d r[11:12], 0(r30)
0002c8  73301401  store.d r[18:19], 0(r8)
0002cc  1732a203  sll.d r[5:6], r[5:6], r26
0002d0  0b36f640  min.sl r[13:14], r[13:14], r[16:17]
0002d4  0b251511  add.ul r[11:12], r[11:12], r[18:19]
0002d8  1b341600  slli r8, r12, 1
0002dc  6b568f00  load.d r[13:14], 8(r30)
0002e0  17136400  or r6, r8, r6
0002e4  0b224610  add.ul r[5:6], r[13:14], r[5:6]
0002e8  1716e400  or r12, r8, r14
0002ec  7f239500  l_gm2lm r6, r9, 0(r[11:12])
0002f0  7f262200  l_gm2lm r12, r2, 0(r[5:6])
0002f4  00a00000  mfence { lm }
0002f8  5b1c0000  j 224
0002fc  fa3d0240  vextracti.s r27, 0(vr4)
000300  12320002  vadd.s.mz vr4{mr1}, zero, vr0
000304  1f1e0000  addli r28, zero, 1
000308  9f8c0c01  addli r25, r25, 128
00030c  fe010ee0  vmmov mr3, r28
000310  6aa24d36  vor.u.mh vr4{mr3}, r27, vr4
000314  9f2d0000  addli r27, zero, 2
000318  fe810de0  vmmov mr3, r27
00031c  6aa24b36  vor.u.mh vr4{mr3}, r23, vr4
000320  9f4b0000  addli r23, zero, 4
000324  fe810be0  vmmov mr3, r23
000328  6a224b36  vor.u.mh vr4{mr3}, r22, vr4
00032c  1f0b1000  addli r22, zero, 8
000330  fe010be0  vmmov mr3, r22
000334  6aa24a36  vor.u.mh vr4{mr3}, r21, vr4
000338  9f0a2000  addli r21, zero, 16
00033c  fe810ae0  vmmov mr3, r21
000340  6a224a36  vor.u.mh vr4{mr3}, r20, vr4
000344  1f0a4000  addli r20, zero, 32
000348  fe010ae0  vmmov mr3, r20
00034c  6aa24836  vor.u.mh vr4{mr3}, r17, vr4
000350  9f088000  addli r17, zero, 64
000354  fe8108e0  vmmov mr3, r17
000358  6a224836  vor.u.mh vr4{mr3}, r16, vr4
00035c  1f080001  addli r16, zero, 128
000360  fe0108e0  vmmov mr3, r16
000364  6aa24736  vor.u.mh vr4{mr3}, r15, vr4
000368  9f070002  addli r15, zero, 256
00036c  fe8107e0  vmmov mr3, r15
000370  6a224736  vor.u.mh vr4{mr3}, r14, vr4
000374  1f070004  addli r14, zero, 512
000378  fe0107e0  vmmov mr3, r14
00037c  6aa24636  vor.u.mh vr4{mr3}, r13, vr4
000380  9f060008  addli r13, zero, 1024
000384  fe8106e0  vmmov mr3, r13
000388  6a224636  vor.u.mh vr4{mr3}, r12, vr4
00038c  1f060010  addli r12, zero, 2048
000390  fe0106e0  vmmov mr3, r12
000394  6aa24536  vor.u.mh vr4{mr3}, r11, vr4
000398  9f050020  addli r11, zero, 4096
00039c  fe8105e0  vmmov mr3, r11
0003a0  6a224536  vor.u.mh vr4{mr3}, r10, vr4
0003a4  1f050040  addli r10, zero, 8192
0003a8  fe0105e0  vmmov mr3, r10
0003ac  6a224336  vor.u.mh vr4{mr3}, r6, vr4
0003b0  2b430000  lui r6, 4
0003b4  fe0103e0  vmmov mr3, r6
0003b8  6aa24236  vor.u.mh vr4{mr3}, r5, vr4
0003bc  ab820000  lui r5, 8
0003c0  fe8102e0  vmmov mr3, r5
0003c4  6a224236  vor.u.mh vr4{mr3}, r4, vr4
0003c8  6af240c0  vsrl.p vr4, r1, vr4
0003cc  46004914  vstore.mh vr4{mr2}, 0(r18)
0003d0  00a00000  mfence { lm }
0003d4  b7c88cff  beq r25, r24, -464
0003d8  0b929411  add.s r4, r9, r25
0003dc  8b1d9111  add.s r27, r2, r25
0003e0  c2050200  vload.mz vr11{mr0}, 0(r4)
0003e4  42040204  vload.mz vr8{mr2}, 0(r4)
0003e8  1f028200  addli r4, r4, 64
0003ec  42820d00  vload.mz vr4{mr0}, 0(r27)
0003f0  1f898d00  addli r18, r27, 64
0003f4  c2840d04  vload.mz vr9{mr2}, 0(r27)
0003f8  a6151202  vmac.f.mz.rn vr11{mr1}, vr4, vr1
0003fc  ee32b1c2  vsrl.s.mz vr5{mr1}, vr2, vr11
000400  42020204  vload.mz vr4{mr2}, 0(r4)
000404  42030200  vload.mz vr6{mr0}, 0(r4)
000408  1f028fdf  addli r4, r30, -4160
00040c  c2030900  vload.mz vr7{mr0}, 0(r18)
000410  6a355d02  vand.s.mz vr10{mr1}, r26, vr5
000414  c2020904  vload.mz vr5{mr2}, 0(r18)
000418  46104202  vstore_mask16.mz vr4{mr1}, 0(r4)
00041c  669205c0  vabs.f vr4, vr11
000420  16b5a502  vadd.s.mz vr10{mr1}, vr11, vr10
000424  eab5b922  vor.s.mz vr11{mr1}, r19, vr11
000428  f6a14142  vlt.u.mz mr3{mr1}, vr3, vr4
00042c  7e8501a0  vmmov r10, mr3
000430  12b5a102  vadd.s.mz vr10{mr1}, r3, vr10
000434  1b42f500  srli r4, r10, 15
000438  1b021200  andi r4, r4, 1
00043c  3b300200  bneq r4, zero, 12
000440  7a3ef540  vextracti.s r28, 15(vr10)
000444  5b010000  j 8
000448  7abef540  vextracti.s r28, 15(vr11)
00044c  1b42e500  srli r4, r10, 14
000450  1b021200  andi r4, r4, 1
000454  3b300200  bneq r4, zero, 12
000458  7a32e540  vextracti.s r4, 14(vr10)
00045c  5b010000  j 8
000460  7ab2e540  vextracti.s r4, 14(vr11)
000464  9b42d500  srli r5, r10, 13
000468  9b821200  andi r5, r5, 1
00046c  3bb00200  bneq r5, zero, 12
000470  fa32d540  vextracti.s r5, 13(vr10)
000474  5b010000  j 8
000478  fab2d540  vextracti.s r5, 13(vr11)
00047c  1b43c500  srli r6, r10, 12
000480  1b031300  andi r6, r6, 1
000484  3b300300  bneq r6, zero, 12
000488  7a33c540  vextracti.s r6, 12(vr10)
00048c  5b010000  j 8
000490  7ab3c540  vextracti.s r6, 12(vr11)
000494  9b45b500  srli r11, r10, 11
000498  9b851500  andi r11, r11, 1
00049c  3bb00500  bneq r11, zero, 12
0004a0  fa35b540  vextracti.s r11, 11(vr10)
0004a4  5b010000  j 8
0004a8  fab5b540  vextracti.s r11, 11(vr11)
0004ac  1b46a500  srli r12, r10, 10
0004b0  1b061600  andi r12, r12, 1
0004b4  3b300600  bneq r12, zero, 12
0004b8  7a36a540  vextracti.s r12, 10(vr10)
0004bc  5b010000  j 8
0004c0  7ab6a540  vextracti.s r12, 10(vr11)
0004c4  9b469500  srli r13, r10, 9
0004c8  9b861600  andi r13, r13, 1
0004cc  3bb00600  bneq r13, zero, 12
0004d0  fa369540  vextracti.s r13, 9(vr10)
0004d4  5b010000  j 8
0004d8  fab69540  vextracti.s r13, 9(vr11)
0004dc  1b478500  srli r14, r10, 8
0004e0  1b071700  andi r14, r14, 1
0004e4  3b300700  bneq r14, zero, 12
0004e8  7a378540  vextracti.s r14, 8(vr10)
0004ec  5b010000  j 8
0004f0  7ab78540  vextracti.s r14, 8(vr11)
0004f4  9b477500  srli r15, r10, 7
0004f8  9b871700  andi r15, r15, 1
0004fc  3bb00700  bneq r15, zero, 12
000500  fa377540  vextracti.s r15, 7(vr10)
000504  5b010000  j 8
000508  fab77540  vextracti.s r15, 7(vr11)
00050c  1b486500  srli r16, r10, 6
000510  1b081800  andi r16, r16, 1
000514  3b300800  bneq r16, zero, 12
000518  7a386540  vextracti.s r16, 6(vr10)
00051c  5b010000  j 8
000520  7ab86540  vextracti.s r16, 6(vr11)
000524  9b485500  srli r17, r10, 5
000528  9b881800  andi r17, r17, 1
00052c  3bb00800  bneq r17, zero, 12
000530  fa385540  vextracti.s r17, 5(vr10)
000534  5b010000  j 8
000538  fab85540  vextracti.s r17, 5(vr11)
00053c  1b4a4500  srli r20, r10, 4
000540  1b0a1a00  andi r20, r20, 1
000544  3b300a00  bneq r20, zero, 12
000548  7a3a4540  vextracti.s r20, 4(vr10)
00054c  5b010000  j 8
000550  7aba4540  vextracti.s r20, 4(vr11)
000554  9b4a3500  srli r21, r10, 3
000558  9b8a1a00  andi r21, r21, 1
00055c  3bb00a00  bneq r21, zero, 12
000560  fa3a3540  vextracti.s r21, 3(vr10)
000564  5b010000  j 8
000568  faba3540  vextracti.s r21, 3(vr11)
00056c  1b4b2500  srli r22, r10, 2
000570  1b0b1b00  andi r22, r22, 1
000574  3b300b00  bneq r22, zero, 12
000578  7a3b2540  vextracti.s r22, 2(vr10)
00057c  5b010000  j 8
000580  7abb2540  vextracti.s r22, 2(vr11)
000584  9b4b1500  srli r23, r10, 1
000588  9b8b1b00  andi r23, r23, 1
00058c  3be00b00  bneq r23, zero, 24
000590  fa3b1540  vextracti.s r23, 1(vr10)
000594  1b051500  andi r10, r10, 1
000598  37600500  beq r10, zero, 24
00059c  7ab50540  vextracti.s r10, 0(vr11)
0005a0  db020000  j 20
0005a4  fabb1540  vextracti.s r23, 1(vr11)
0005a8  1b051500  andi r10, r10, 1
0005ac  bb4f05fe  bneq r10, zero, -16
0005b0  7a350540  vextracti.s r10, 0(vr10)
0005b4  12350002  vadd.s.mz vr10{mr1}, zero, vr0
0005b8  1f100000  addli zero, zero, 1
0005bc  e6450400  vshuffle2.hf vr11, vr8
0005c0  66c20400  vshuffle2.hf vr4, vr9
0005c4  a6151202  vmac.f.mz.rn vr11{mr1}, vr4, vr1
0005c8  6e32b1c2  vsrl.s.mz vr4{mr1}, vr2, vr11
0005cc  669405c0  vabs.f vr8, vr11
0005d0  eab4b922  vor.s.mz vr9{mr1}, r19, vr11
0005d4  fe0100e0  vmmov mr3, zero
0005d8  17200000  xor zero, zero, zero
0005dc  6a25a536  vor.u.mh vr10{mr3}, r10, vr10
0005e0  1f250000  addli r10, zero, 2
0005e4  6a324d02  vand.s.mz vr4{mr1}, r26, vr4
0005e8  fe0105e0  vmmov mr3, r10
0005ec  1f450000  addli r10, zero, 4
0005f0  6aa5ab36  vor.u.mh vr10{mr3}, r23, vr10
0005f4  fe0105e0  vmmov mr3, r10
0005f8  1f051000  addli r10, zero, 8
0005fc  16b24502  vadd.s.mz vr4{mr1}, vr11, vr4
000600  6a25ab36  vor.u.mh vr10{mr3}, r22, vr10
000604  fe0105e0  vmmov mr3, r10
000608  1f052000  addli r10, zero, 16
00060c  6aa5aa36  vor.u.mh vr10{mr3}, r21, vr10
000610  fe0105e0  vmmov mr3, r10
000614  1f054000  addli r10, zero, 32
000618  6a25aa36  vor.u.mh vr10{mr3}, r20, vr10
00061c  fe0105e0  vmmov mr3, r10
000620  1f058000  addli r10, zero, 64
000624  6aa5a836  vor.u.mh vr10{mr3}, r17, vr10
000628  fe0105e0  vmmov mr3, r10
00062c  1f050001  addli r10, zero, 128
000630  6a25a836  vor.u.mh vr10{mr3}, r16, vr10
000634  fe0105e0  vmmov mr3, r10
000638  1f050002  addli r10, zero, 256
00063c  6aa5a736  vor.u.mh vr10{mr3}, r15, vr10
000640  fe0105e0  vmmov mr3, r10
000644  1f050004  addli r10, zero, 512
000648  6a25a736  vor.u.mh vr10{mr3}, r14, vr10
00064c  fe0105e0  vmmov mr3, r10
000650  1f050008  addli r10, zero, 1024
000654  6aa5a636  vor.u.mh vr10{mr3}, r13, vr10
000658  fe0105e0  vmmov mr3, r10
00065c  1f050010  addli r10, zero, 2048
000660  6a25a636  vor.u.mh vr10{mr3}, r12, vr10
000664  fe0105e0  vmmov mr3, r10
000668  1f050020  addli r10, zero, 4096
00066c  6aa5a536  vor.u.mh vr10{mr3}, r11, vr10
000670  fe0105e0  vmmov mr3, r10
000674  6a25a336  vor.u.mh vr10{mr3}, r6, vr10
000678  1f030040  addli r6, zero, 8192
00067c  fe0103e0  vmmov mr3, r6
000680  6aa5a236  vor.u.mh vr10{mr3}, r5, vr10
000684  ab420000  lui r5, 4
000688  fe8102e0  vmmov mr3, r5
00068c  6a25a236  vor.u.mh vr10{mr3}, r4, vr10
000690  2b820000  lui r4, 8
000694  f6a18142  vlt.u.mz mr3{mr1}, vr3, vr8
000698  12b44102  vadd.s.mz vr8{mr1}, r3, vr4
00069c  7e8301a0  vmmov r6, mr3
0006a0  fe0102e0  vmmov mr3, r4
0006a4  1b42f300  srli r4, r6, 15
0006a8  6a25ae36  vor.u.mh vr10{mr3}, r28, vr10
0006ac  1b021200  andi r4, r4, 1
0006b0  4680ad10  vstore.mh vr10{mr0}, 0(r27)
0006b4  3b300200  bneq r4, zero, 12
0006b8  7a3ef440  vextracti.s r28, 15(vr8)
0006bc  5b010000  j 8
0006c0  7abef440  vextracti.s r28, 15(vr9)
0006c4  1b42e300  srli r4, r6, 14
0006c8  1b021200  andi r4, r4, 1
0006cc  3b300200  bneq r4, zero, 12
0006d0  7a32e440  vextracti.s r4, 14(vr8)
0006d4  5b010000  j 8
0006d8  7ab2e440  vextracti.s r4, 14(vr9)
0006dc  9b42d300  srli r5, r6, 13
0006e0  9b821200  andi r5, r5, 1
0006e4  3bb00200  bneq r5, zero, 12
0006e8  fa32d440  vextracti.s r5, 13(vr8)
0006ec  5b010000  j 8
0006f0  fab2d440  vextracti.s r5, 13(vr9)
0006f4  1b45c300  srli r10, r6, 12
0006f8  1b051500  andi r10, r10, 1
0006fc  3b300500  bneq r10, zero, 12
000700  7a35c440  vextracti.s r10, 12(vr8)
000704  5b010000  j 8
000708  7ab5c440  vextracti.s r10, 12(vr9)
00070c  9b45b300  srli r11, r6, 11
000710  9b851500  andi r11, r11, 1
000714  3bb00500  bneq r11, zero, 12
000718  fa35b440  vextracti.s r11, 11(vr8)
00071c  5b010000  j 8
000720  fab5b440  vextracti.s r11, 11(vr9)
000724  1b46a300  srli r12, r6, 10
000728  1b061600  andi r12, r12, 1
00072c  3b300600  bneq r12, zero, 12
000730  7a36a440  vextracti.s r12, 10(vr8)
000734  5b010000  j 8
000738  7ab6a440  vextracti.s r12, 10(vr9)
00073c  9b469300  srli r13, r6, 9
000740  9b861600  andi r13, r13, 1
000744  3bb00600  bneq r13, zero, 12
000748  fa369440  vextracti.s r13, 9(vr8)
00074c  5b010000  j 8
000750  fab69440  vextracti.s r13, 9(vr9)
000754  1b478300  srli r14, r6, 8
000758  1b071700  andi r14, r14, 1
00075c  3b300700  bneq r14, zero, 12
000760  7a378440  vextracti.s r14, 8(vr8)
000764  5b010000  j 8
000768  7ab78440  vextracti.s r14, 8(vr9)
00076c  9b477300  srli r15, r6, 7
000770  9b871700  andi r15, r15, 1
000774  3bb00700  bneq r15, zero, 12
000778  fa377440  vextracti.s r15, 7(vr8)
00077c  5b010000  j 8
000780  fab77440  vextracti.s r15, 7(vr9)
000784  1b486300  srli r16, r6, 6
000788  1b081800  andi r16, r16, 1
00078c  3b300800  bneq r16, zero, 12
000790  7a386440  vextracti.s r16, 6(vr8)
000794  5b010000  j 8
000798  7ab86440  vextracti.s r16, 6(vr9)
00079c  9b485300  srli r17, r6, 5
0007a0  9b881800  andi r17, r17, 1
0007a4  3bb00800  bneq r17, zero, 12
0007a8  fa385440  vextracti.s r17, 5(vr8)
0007ac  5b010000  j 8
0007b0  fab85440  vextracti.s r17, 5(vr9)
0007b4  1b4a4300  srli r20, r6, 4
0007b8  1b0a1a00  andi r20, r20, 1
0007bc  3b300a00  bneq r20, zero, 12
0007c0  7a3a4440  vextracti.s r20, 4(vr8)
0007c4  5b010000  j 8
0007c8  7aba4440  vextracti.s r20, 4(vr9)
0007cc  9b4a3300  srli r21, r6, 3
0007d0  9b8a1a00  andi r21, r21, 1
0007d4  3bb00a00  bneq r21, zero, 12
0007d8  fa3a3440  vextracti.s r21, 3(vr8)
0007dc  5b010000  j 8
0007e0  faba3440  vextracti.s r21, 3(vr9)
0007e4  1b4b2300  srli r22, r6, 2
0007e8  1b0b1b00  andi r22, r22, 1
0007ec  3b300b00  bneq r22, zero, 12
0007f0  7a3b2440  vextracti.s r22, 2(vr8)
0007f4  5b010000  j 8
0007f8  7abb2440  vextracti.s r22, 2(vr9)
0007fc  9b4b1300  srli r23, r6, 1
000800  9b8b1b00  andi r23, r23, 1
000804  3be00b00  bneq r23, zero, 24
000808  fa3b1440  vextracti.s r23, 1(vr8)
00080c  1b031300  andi r6, r6, 1
000810  37600300  beq r6, zero, 24
000814  7ab30440  vextracti.s r6, 0(vr9)
000818  db020000  j 20
00081c  fabb1440  vextracti.s r23, 1(vr9)
000820  1b031300  andi r6, r6, 1
000824  bb4f03fe  bneq r6, zero, -16
000828  7a330440  vextracti.s r6, 0(vr8)
00082c  12340002  vadd.s.mz vr8{mr1}, zero, vr0
000830  1f100000  addli zero, zero, 1
000834  26931302  vmac.f.mz.rn vr6{mr1}, vr7, vr1
000838  6e3261c2  vsrl.s.mz vr4{mr1}, vr2, vr6
00083c  e61303c0  vabs.f vr7, vr6
000840  fe0100e0  vmmov mr3, zero
000844  17200000  xor zero, zero, zero
000848  6a248336  vor.u.mh vr8{mr3}, r6, vr8
00084c  1f230000  addli r6, zero, 2
000850  6a324d02  vand.s.mz vr4{mr1}, r26, vr4
000854  fe0103e0  vmmov mr3, r6
000858  1f430000  addli r6, zero, 4
00085c  6aa48b36  vor.u.mh vr8{mr3}, r23, vr8
000860  fe0103e0  vmmov mr3, r6
000864  1f031000  addli r6, zero, 8
000868  16324302  vadd.s.mz vr4{mr1}, vr6, vr4
00086c  6ab36922  vor.s.mz vr6{mr1}, r19, vr6
000870  6a248b36  vor.u.mh vr8{mr3}, r22, vr8
000874  fe0103e0  vmmov mr3, r6
000878  1f032000  addli r6, zero, 16
00087c  6aa48a36  vor.u.mh vr8{mr3}, r21, vr8
000880  fe0103e0  vmmov mr3, r6
000884  1f034000  addli r6, zero, 32
000888  6a248a36  vor.u.mh vr8{mr3}, r20, vr8
00088c  fe0103e0  vmmov mr3, r6
000890  1f038000  addli r6, zero, 64
000894  6aa48836  vor.u.mh vr8{mr3}, r17, vr8
000898  fe0103e0  vmmov mr3, r6
00089c  1f030001  addli r6, zero, 128
0008a0  6a248836  vor.u.mh vr8{mr3}, r16, vr8
0008a4  fe0103e0  vmmov mr3, r6
0008a8  1f030002  addli r6, zero, 256
0008ac  6aa48736  vor.u.mh vr8{mr3}, r15, vr8
0008b0  fe0103e0  vmmov mr3, r6
0008b4  1f030004  addli r6, zero, 512
0008b8  6a248736  vor.u.mh vr8{mr3}, r14, vr8
0008bc  fe0103e0  vmmov mr3, r6
0008c0  1f030008  addli r6, zero, 1024
0008c4  6aa48636  vor.u.mh vr8{mr3}, r13, vr8
0008c8  fe0103e0  vmmov mr3, r6
0008cc  1f030010  addli r6, zero, 2048
0008d0  6a248636  vor.u.mh vr8{mr3}, r12, vr8
0008d4  fe0103e0  vmmov mr3, r6
0008d8  1f030020  addli r6, zero, 4096
0008dc  6aa48536  vor.u.mh vr8{mr3}, r11, vr8
0008e0  fe0103e0  vmmov mr3, r6
0008e4  1f030040  addli r6, zero, 8192
0008e8  6a248536  vor.u.mh vr8{mr3}, r10, vr8
0008ec  fe0103e0  vmmov mr3, r6
0008f0  6aa48236  vor.u.mh vr8{mr3}, r5, vr8
0008f4  ab420000  lui r5, 4
0008f8  fe8102e0  vmmov mr3, r5
0008fc  6a248236  vor.u.mh vr8{mr3}, r4, vr8
000900  2b820000  lui r4, 8
000904  fe0102e0  vmmov mr3, r4
000908  6a248e36  vor.u.mh vr8{mr3}, r28, vr8
00090c  f6a17142  vlt.u.mz mr3{mr1}, vr3, vr7
000910  92b34102  vadd.s.mz vr7{mr1}, r3, vr4
000914  7e8e01a0  vmmov r28, mr3
000918  1b42fe00  srli r4, r28, 15
00091c  6af280c0  vsrl.p vr4, r1, vr8
000920  1b021200  andi r4, r4, 1
000924  46804d14  vstore.mh vr4{mr2}, 0(r27)
000928  3b300200  bneq r4, zero, 12
00092c  fabdf340  vextracti.s r27, 15(vr7)
000930  5b010000  j 8
000934  fa3df340  vextracti.s r27, 15(vr6)
000938  1b42ee00  srli r4, r28, 14
00093c  1b021200  andi r4, r4, 1
000940  3b300200  bneq r4, zero, 12
000944  7ab2e340  vextracti.s r4, 14(vr7)
000948  5b010000  j 8
00094c  7a32e340  vextracti.s r4, 14(vr6)
000950  9b42de00  srli r5, r28, 13
000954  9b821200  andi r5, r5, 1
000958  3bb00200  bneq r5, zero, 12
00095c  fab2d340  vextracti.s r5, 13(vr7)
000960  5b010000  j 8
000964  fa32d340  vextracti.s r5, 13(vr6)
000968  1b43ce00  srli r6, r28, 12
00096c  1b031300  andi r6, r6, 1
000970  3b300300  bneq r6, zero, 12
000974  7ab3c340  vextracti.s r6, 12(vr7)
000978  5b010000  j 8
00097c  7a33c340  vextracti.s r6, 12(vr6)
000980  1b45be00  srli r10, r28, 11
000984  1b051500  andi r10, r10, 1
000988  3b300500  bneq r10, zero, 12
00098c  7ab5b340  vextracti.s r10, 11(vr7)
000990  5b010000  j 8
000994  7a35b340  vextracti.s r10, 11(vr6)
000998  9b45ae00  srli r11, r28, 10
00099c  9b851500  andi r11, r11, 1
0009a0  3bb00500  bneq r11, zero, 12
0009a4  fab5a340  vextracti.s r11, 10(vr7)
0009a8  5b010000  j 8
0009ac  fa35a340  vextracti.s r11, 10(vr6)
0009b0  1b469e00  srli r12, r28, 9
0009b4  1b061600  andi r12, r12, 1
0009b8  3b300600  bneq r12, zero, 12
0009bc  7ab69340  vextracti.s r12, 9(vr7)
0009c0  5b010000  j 8
0009c4  7a369340  vextracti.s r12, 9(vr6)
0009c8  9b468e00  srli r13, r28, 8
0009cc  9b861600  andi r13, r13, 1
0009d0  3bb00600  bneq r13, zero, 12
0009d4  fab68340  vextracti.s r13, 8(vr7)
0009d8  5b010000  j 8
0009dc  fa368340  vextracti.s r13, 8(vr6)
0009e0  1b477e00  srli r14, r28, 7
0009e4  1b071700  andi r14, r14, 1
0009e8  3b300700  bneq r14, zero, 12
0009ec  7ab77340  vextracti.s r14, 7(vr7)
0009f0  5b010000  j 8
0009f4  7a377340  vextracti.s r14, 7(vr6)
0009f8  9b476e00  srli r15, r28, 6
0009fc  9b871700  andi r15, r15, 1
000a00  3bb00700  bneq r15, zero, 12
000a04  fab76340  vextracti.s r15, 6(vr7)
000a08  5b010000  j 8
000a0c  fa376340  vextracti.s r15, 6(vr6)
000a10  1b485e00  srli r16, r28, 5
000a14  1b081800  andi r16, r16, 1
000a18  3b300800  bneq r16, zero, 12
000a1c  7ab85340  vextracti.s r16, 5(vr7)
000a20  5b010000  j 8
000a24  7a385340  vextracti.s r16, 5(vr6)
000a28  9b484e00  srli r17, r28, 4
000a2c  9b881800  andi r17, r17, 1
000a30  3bb00800  bneq r17, zero, 12
000a34  fab84340  vextracti.s r17, 4(vr7)
000a38  5b010000  j 8
000a3c  fa384340  vextracti.s r17, 4(vr6)
000a40  1b4a3e00  srli r20, r28, 3
000a44  1b0a1a00  andi r20, r20, 1
000a48  3b300a00  bneq r20, zero, 12
000a4c  7aba3340  vextracti.s r20, 3(vr7)
000a50  5b010000  j 8
000a54  7a3a3340  vextracti.s r20, 3(vr6)
000a58  9b4a2e00  srli r21, r28, 2
000a5c  9b8a1a00  andi r21, r21, 1
000a60  3bb00a00  bneq r21, zero, 12
000a64  faba2340  vextracti.s r21, 2(vr7)
000a68  5b010000  j 8
000a6c  fa3a2340  vextracti.s r21, 2(vr6)
000a70  1b4b1e00  srli r22, r28, 1
000a74  1b0b1b00  andi r22, r22, 1
000a78  3b600b00  bneq r22, zero, 24
000a7c  7abb1340  vextracti.s r22, 1(vr7)
000a80  9b0b1e00  andi r23, r28, 1
000a84  37e00b00  beq r23, zero, 24
000a88  fa3b0340  vextracti.s r23, 0(vr6)
000a8c  db020000  j 20
000a90  7a3b1340  vextracti.s r22, 1(vr6)
000a94  9b0b1e00  andi r23, r28, 1
000a98  bbcf0bfe  bneq r23, zero, -16
000a9c  fabb0340  vextracti.s r23, 0(vr7)
000aa0  12330002  vadd.s.mz vr6{mr1}, zero, vr0
000aa4  1f1e0000  addli r28, zero, 1
000aa8  fe010ee0  vmmov mr3, r28
000aac  6aa36b36  vor.u.mh vr6{mr3}, r23, vr6
000ab0  9f2b0000  addli r23, zero, 2
000ab4  fe810be0  vmmov mr3, r23
000ab8  6a236b36  vor.u.mh vr6{mr3}, r22, vr6
000abc  1f4b0000  addli r22, zero, 4
000ac0  fe010be0  vmmov mr3, r22
000ac4  6aa36a36  vor.u.mh vr6{mr3}, r21, vr6
000ac8  9f0a1000  addli r21, zero, 8
000acc  fe810ae0  vmmov mr3, r21
000ad0  6a236a36  vor.u.mh vr6{mr3}, r20, vr6
000ad4  1f0a2000  addli r20, zero, 16
000ad8  fe010ae0  vmmov mr3, r20
000adc  6aa36836  vor.u.mh vr6{mr3}, r17, vr6
000ae0  9f084000  addli r17, zero, 32
000ae4  fe8108e0  vmmov mr3, r17
000ae8  6a236836  vor.u.mh vr6{mr3}, r16, vr6
000aec  1f088000  addli r16, zero, 64
000af0  fe0108e0  vmmov mr3, r16
000af4  6aa36736  vor.u.mh vr6{mr3}, r15, vr6
000af8  9f070001  addli r15, zero, 128
000afc  fe8107e0  vmmov mr3, r15
000b00  6a236736  vor.u.mh vr6{mr3}, r14, vr6
000b04  1f070002  addli r14, zero, 256
000b08  fe0107e0  vmmov mr3, r14
000b0c  6aa36636  vor.u.mh vr6{mr3}, r13, vr6
000b10  9f060004  addli r13, zero, 512
000b14  fe8106e0  vmmov mr3, r13
000b18  6a236636  vor.u.mh vr6{mr3}, r12, vr6
000b1c  1f060008  addli r12, zero, 1024
000b20  fe0106e0  vmmov mr3, r12
000b24  6aa36536  vor.u.mh vr6{mr3}, r11, vr6
000b28  9f058fdf  addli r11, r30, -4160
000b2c  42920502  vload_mask16.mz vr4{mr1}, 0(r11)
000b30  9f050010  addli r11, zero, 2048
000b34  fe8105e0  vmmov mr3, r11
000b38  6a236536  vor.u.mh vr6{mr3}, r10, vr6
000b3c  1f050020  addli r10, zero, 4096
000b40  fe0105e0  vmmov mr3, r10
000b44  e6430200  vshuffle2.hf vr7, vr4
000b48  66c20200  vshuffle2.hf vr4, vr5
000b4c  a6131202  vmac.f.mz.rn vr7{mr1}, vr4, vr1
000b50  6e3271c2  vsrl.s.mz vr4{mr1}, vr2, vr7
000b54  6a236336  vor.u.mh vr6{mr3}, r6, vr6
000b58  1f030040  addli r6, zero, 8192
000b5c  e69203c0  vabs.f vr5, vr7
000b60  fe0103e0  vmmov mr3, r6
000b64  6a324d02  vand.s.mz vr4{mr1}, r26, vr4
000b68  6aa36236  vor.u.mh vr6{mr3}, r5, vr6
000b6c  ab420000  lui r5, 4
000b70  fe8102e0  vmmov mr3, r5
000b74  16b24302  vadd.s.mz vr4{mr1}, vr7, vr4
000b78  6a236236  vor.u.mh vr6{mr3}, r4, vr6
000b7c  2b820000  lui r4, 8
000b80  f6a15142  vlt.u.mz mr3{mr1}, vr3, vr5
000b84  eab27922  vor.s.mz vr5{mr1}, r19, vr7
000b88  7e8e01a0  vmmov r28, mr3
000b8c  fe0102e0  vmmov mr3, r4
000b90  1b42fe00  srli r4, r28, 15
000b94  6aa36d36  vor.u.mh vr6{mr3}, r27, vr6
000b98  12b24102  vadd.s.mz vr4{mr1}, r3, vr4
000b9c  1b021200  andi r4, r4, 1
000ba0  46006910  vstore.mh vr6{mr0}, 0(r18)
000ba4  3b300200  bneq r4, zero, 12
000ba8  7a32f240  vextracti.s r4, 15(vr4)
000bac  5b010000  j 8
000bb0  7ab2f240  vextracti.s r4, 15(vr5)
000bb4  9b42ee00  srli r5, r28, 14
000bb8  9b821200  andi r5, r5, 1
000bbc  3bb00200  bneq r5, zero, 12
000bc0  fa32e240  vextracti.s r5, 14(vr4)
000bc4  5b010000  j 8
000bc8  fab2e240  vextracti.s r5, 14(vr5)
000bcc  1b43de00  srli r6, r28, 13
000bd0  1b031300  andi r6, r6, 1
000bd4  3b300300  bneq r6, zero, 12
000bd8  7a33d240  vextracti.s r6, 13(vr4)
000bdc  5b010000  j 8
000be0  7ab3d240  vextracti.s r6, 13(vr5)
000be4  1b45ce00  srli r10, r28, 12
000be8  1b051500  andi r10, r10, 1
000bec  3b300500  bneq r10, zero, 12
000bf0  7a35c240  vextracti.s r10, 12(vr4)
000bf4  5b010000  j 8
000bf8  7ab5c240  vextracti.s r10, 12(vr5)
000bfc  9b45be00  srli r11, r28, 11
000c00  9b851500  andi r11, r11, 1
000c04  3bb00500  bneq r11, zero, 12
000c08  fa35b240  vextracti.s r11, 11(vr4)
000c0c  5b010000  j 8
000c10  fab5b240  vextracti.s r11, 11(vr5)
000c14  1b46ae00  srli r12, r28, 10
000c18  1b061600  andi r12, r12, 1
000c1c  3b300600  bneq r12, zero, 12
000c20  7a36a240  vextracti.s r12, 10(vr4)
000c24  5b010000  j 8
000c28  7ab6a240  vextracti.s r12, 10(vr5)
000c2c  9b469e00  srli r13, r28, 9
000c30  9b861600  andi r13, r13, 1
000c34  3bb00600  bneq r13, zero, 12
000c38  fa369240  vextracti.s r13, 9(vr4)
000c3c  5b010000  j 8
000c40  fab69240  vextracti.s r13, 9(vr5)
000c44  1b478e00  srli r14, r28, 8
000c48  1b071700  andi r14, r14, 1
000c4c  3b300700  bneq r14, zero, 12
000c50  7a378240  vextracti.s r14, 8(vr4)
000c54  5b010000  j 8
000c58  7ab78240  vextracti.s r14, 8(vr5)
000c5c  9b477e00  srli r15, r28, 7
000c60  9b871700  andi r15, r15, 1
000c64  3bb00700  bneq r15, zero, 12
000c68  fa377240  vextracti.s r15, 7(vr4)
000c6c  5b010000  j 8
000c70  fab77240  vextracti.s r15, 7(vr5)
000c74  1b486e00  srli r16, r28, 6
000c78  1b081800  andi r16, r16, 1
000c7c  3b300800  bneq r16, zero, 12
000c80  7a386240  vextracti.s r16, 6(vr4)
000c84  5b010000  j 8
000c88  7ab86240  vextracti.s r16, 6(vr5)
000c8c  9b485e00  srli r17, r28, 5
000c90  9b881800  andi r17, r17, 1
000c94  3bb00800  bneq r17, zero, 12
000c98  fa385240  vextracti.s r17, 5(vr4)
000c9c  5b010000  j 8
000ca0  fab85240  vextracti.s r17, 5(vr5)
000ca4  1b4a4e00  srli r20, r28, 4
000ca8  1b0a1a00  andi r20, r20, 1
000cac  3b300a00  bneq r20, zero, 12
000cb0  7a3a4240  vextracti.s r20, 4(vr4)
000cb4  5b010000  j 8
000cb8  7aba4240  vextracti.s r20, 4(vr5)
000cbc  9b4a3e00  srli r21, r28, 3
000cc0  9b8a1a00  andi r21, r21, 1
000cc4  3bb00a00  bneq r21, zero, 12
000cc8  fa3a3240  vextracti.s r21, 3(vr4)
000ccc  5b010000  j 8
000cd0  faba3240  vextracti.s r21, 3(vr5)
000cd4  1b4b2e00  srli r22, r28, 2
000cd8  1b0b1b00  andi r22, r22, 1
000cdc  3b300b00  bneq r22, zero, 12
000ce0  7a3b2240  vextracti.s r22, 2(vr4)
000ce4  5b010000  j 8
000ce8  7abb2240  vextracti.s r22, 2(vr5)
000cec  9b4b1e00  srli r23, r28, 1
000cf0  9b8b1b00  andi r23, r23, 1
000cf4  3bd00b00  bneq r23, zero, 20
000cf8  fa3b1240  vextracti.s r23, 1(vr4)
000cfc  9b0d1e00  andi r27, r28, 1
000d00  b7f70dfa  beq r27, zero, -2564
000d04  5b020000  j 16
000d08  fabb1240  vextracti.s r23, 1(vr5)
000d0c  9b0d1e00  andi r27, r28, 1
000d10  b7b70dfa  beq r27, zero, -2580
000d14  fabd0240  vextracti.s r27, 0(vr5)
000d18  5bbdfeff  j -2584
000d1c  9f0e8fde  addli sp, r30, -4288
000d20  9f8e8e21  addli sp, sp, 4288
000d24  00a00300  mfence { lm, sm, gm }
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
000e30  00100000  exit
000e34  00100000  exit
000e38  00100000  exit
000e3c  00100000  exit
000e40  00100000  exit
000e44  00100000  exit
000e48  00100000  exit
000e4c  00100000  exit
000e50  00100000  exit
000e54  00100000  exit
000e58  00100000  exit
000e5c  00100000  exit
000e60  00100000  exit
000e64  00100000  exit
000e68  00100000  exit
000e6c  00100000  exit
000e70  00100000  exit
000e74  00100000  exit
000e78  00100000  exit
000e7c  00100000  exit
000e80  00100000  exit
000e84  00100000  exit
000e88  00100000  exit
000e8c  00100000  exit
000e90  00100000  exit
000e94  00100000  exit
000e98  00100000  exit
000e9c  00100000  exit
000ea0  00100000  exit
000ea4  00100000  exit
000ea8  00100000  exit
000eac  00100000  exit
000eb0  00100000  exit
000eb4  00100000  exit
000eb8  00100000  exit
000ebc  00100000  exit
000ec0  00100000  exit
000ec4  00100000  exit
000ec8  00100000  exit
000ecc  00100000  exit
000ed0  00100000  exit
000ed4  00100000  exit
000ed8  00100000  exit
000edc  00100000  exit
000ee0  00100000  exit
000ee4  00100000  exit
000ee8  00100000  exit
000eec  00100000  exit
000ef0  00100000  exit
000ef4  00100000  exit
000ef8  00100000  exit
000efc  00100000  exit
000f00  00100000  exit
000f04  00100000  exit
000f08  00100000  exit
000f0c  00100000  exit
000f10  00100000  exit
000f14  00100000  exit
000f18  00100000  exit
000f1c  00100000  exit
000f20  00100000  exit
000f24  00100000  exit
000f28  00100000  exit
000f2c  00100000  exit
000f30  00100000  exit
000f34  00100000  exit
000f38  00100000  exit
000f3c  00100000  exit
000f40  00100000  exit
000f44  00100000  exit
000f48  00100000  exit
000f4c  00100000  exit
000f50  00100000  exit
000f54  00100000  exit
000f58  00100000  exit
000f5c  00100000  exit
000f60  00100000  exit
000f64  00100000  exit
000f68  00100000  exit
