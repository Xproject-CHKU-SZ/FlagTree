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
0000fc  cb015b01  ble.s r22, r21, 96
000100  ab400000  lui r1, 4
000104  1f510000  addli r2, zero, 5
000108  80db0002  load_param_i r23, 1
00010c  1f1c0000  addli r24, zero, 1
000110  33010128  zext_int2long r[3:4], r2
000114  9b901000  ori r1, r1, 1
000118  733c2ffe  store.d r[3:4], -8(r30)
00011c  b3800028  zext_int2long r[2:3], r1
000120  73381ffe  store.d r[2:3], -16(r30)
000124  8b904a31  div.s r1, r21, r20
000128  6b528f00  load.d r[5:6], 8(r30)
00012c  6b530f01  load.d r[7:8], 16(r30)
000130  9f540000  addli r9, zero, 5
000134  67818e01  storeli.w r24, 16(sp)
000138  0b943031  div.s r8, r1, r19
00013c  eb508fff  load.d r[2:3], -8(r30)
000140  73b01e00  store.d r[2:3], 0(sp)
000144  eb500fff  load.d r[2:3], -16(r30)
000148  73b41e00  store.d r[2:3], 8(sp)
00014c  6b510f00  load.d r[3:4], 0(r30)
000150  572d0000  jal 360
000154  8b9a7a11  add.s r21, r21, r23
000158  3fbf6aff  blt.s r21, r22, -52
00015c  9f8e8e00  addli sp, sp, 64
000160  00a00300  mfence { lm, sm, gm }
000164  00100000  exit
000168  9f8e8ec6  addli sp, sp, -7360
00016c  67c9ee39  storeli.w r30, 7316(sp)
000170  1f8f8e39  addli r30, sp, 7360
000174  e7cb3e39  storeli.w r19, 7356(sp)
000178  e78b4e39  storeli.w r20, 7352(sp)
00017c  67cb5e39  storeli.w r21, 7348(sp)
000180  678b6e39  storeli.w r22, 7344(sp)
000184  e7ca7e39  storeli.w r23, 7340(sp)
000188  e78a8e39  storeli.w r24, 7336(sp)
00018c  67ca9e39  storeli.w r25, 7332(sp)
000190  678aae39  storeli.w r26, 7328(sp)
000194  e7c9be39  storeli.w r27, 7324(sp)
000198  e789ce39  storeli.w r28, 7320(sp)
00019c  6789fe39  storeli.w r31, 7312(sp)
0001a0  9f00efc6  addli r1, r30, -7312
0001a4  e7479fc6  storeli.w r9, -7300(r30)
0001a8  73b06000  store.d r[7:8], 0(r1)
0001ac  9f005fc8  addli r1, r30, -7128
0001b0  73b04000  store.d r[5:6], 0(r1)
0001b4  80300002  core_id r1
0001b8  6b520f00  load.d r[5:6], 0(r30)
0001bc  0b949050  fmac.s r8, r1, r9
0001c0  b3160428  sext_int2long r[14:15], r8
0001c4  9330d206  setle.sl r1, r[5:6], r[14:15]
0001c8  1f02dfc6  addli r4, r30, -7320
0001cc  73302200  store.d r[3:4], 0(r4)
0001d0  bbe40004  bneq r1, zero, 2360
0001d4  eb508f00  load.d r[2:3], 8(r30)
0001d8  2b0880ff  lui r16, 1046528
0001dc  eea25262  vxor.u.mz vr5{mr1}, vr5, vr5
0001e0  9f017fc8  addli r3, r30, -7112
0001e4  2b72313f  lui r4, 258839
0001e8  2b04803f  lui r8, 260096
0001ec  9f2d0000  addli r27, zero, 2
0001f0  2b0d0080  lui r26, 524288
0001f4  2b0efc42  lui r28, 274368
0001f8  2b0a404b  lui r20, 308224
0001fc  ab0540cb  lui r11, 832512
000200  6a105822  vor.f.mz vr0{mr1}, r16, vr5
000204  1b168221  ori r12, r4, 536
000208  a7880000  addli.d r[18:19], r[2:3], 0
00020c  a3f01000  setlti.d r1, r[2:3], 1
000210  1f010fc7  addli r2, r30, -7296
000214  674f1fc6  storeli.w r1, -7180(r30)
000218  9f000004  addli r1, zero, 512
00021c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000220  b3800028  zext_int2long r[2:3], r1
000224  73b01100  store.d r[2:3], 0(r3)
000228  abf0ffff  lui r1, 1048575
00022c  9b9000fe  ori r1, r1, 4064
000230  67421fc8  storeli.w r1, -7132(r30)
000234  aba0b83f  lui r1, 261002
000238  9b9cb0a3  ori r25, r1, 2619
00023c  ab00fcc2  lui r1, 798656
000240  6aa35022  vor.u.mz vr6{mr1}, r1, vr5
000244  9f702000  addli r1, zero, 23
000248  eaa05022  vor.u.mz vr1{mr1}, r1, vr5
00024c  abc0ae3a  lui r1, 240364
000250  1b91f03f  ori r2, r1, 1023
000254  ab802139  lui r1, 234008
000258  1b939048  ori r6, r1, 1161
00025c  ab901d3c  lui r1, 246233
000260  e74f2fc6  storeli.w r2, -7172(r30)
000264  ea135122  vor.f.mz vr7{mr1}, r2, vr5
000268  2b51633d  lui r2, 251445
00026c  9b93b055  ori r7, r1, 1371
000270  1b1c7184  ori r24, r2, 2119
000274  9f008fcd  addli r1, r30, -6464
000278  6a905322  vor.f.mz vr0{mr1}, r7, vr5
00027c  e70f8fc7  storeli.w r24, -7176(r30)
000280  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000284  6a105c22  vor.f.mz vr0{mr1}, r24, vr5
000288  9f000fca  addli r1, r30, -6912
00028c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000290  abf0753e  lui r1, 255839
000294  9b9400df  ori r9, r1, 3568
000298  9f008fc9  addli r1, r30, -6976
00029c  6a905422  vor.f.mz vr0{mr1}, r9, vr5
0002a0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0002a4  6a105622  vor.f.mz vr0{mr1}, r12, vr5
0002a8  9f000fc9  addli r1, r30, -7040
0002ac  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0002b0  6a105422  vor.f.mz vr0{mr1}, r8, vr5
0002b4  9f008fc8  addli r1, r30, -7104
0002b8  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0002bc  9f000fcc  addli r1, r30, -6656
0002c0  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
0002c4  9f000fce  addli r1, r30, -6400
0002c8  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0002cc  9f000fcb  addli r1, r30, -6784
0002d0  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0002d4  9f008fca  addli r1, r30, -6848
0002d8  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
0002dc  5b060000  j 48
0002e0  6341ffc6  loadli.w r2,  -7300(r30)
0002e4  80500102  load_param_i r1, 2
0002e8  9f01dfc7  addli r3, r30, -7192
0002ec  a7080900  addli.d r[18:19], r[19:20], 0
0002f0  ebd60100  load.d r[14:15], 0(r3)
0002f4  8b902020  mul.s r1, r1, r2
0002f8  b3900028  sext_int2long r[2:3], r1
0002fc  8ba61610  add.ul r[14:15], r[14:15], r[2:3]
000300  eb500f00  load.d r[2:3], 0(r30)
000304  93b01604  setlt.sl r1, r[14:15], r[2:3]
000308  37800004  beq r1, zero, 2048
00030c  a78b0800  addli.d r[24:25], r[18:19], 0
000310  9f00dfc7  addli r1, r30, -7192
000314  0bb27621  mul.sl r[5:6], r[14:15], r[24:25]
000318  73b0d000  store.d r[14:15], 0(r1)
00031c  9731b203  sll.d r[4:5], r[5:6], r27
000320  9f02dfc6  addli r5, r30, -7320
000324  ebd00200  load.d r[2:3], 0(r5)
000328  9f028fcb  addli r5, r30, -6720
00032c  00a00000  mfence { lm }
000330  73b03200  store.d r[4:5], 0(r5)
000334  8ba03010  add.ul r[2:3], r[2:3], r[4:5]
000338  9f016fc8  addli r3, r30, -7120
00033c  73b01100  store.d r[2:3], 0(r3)
000340  abf0ffff  lui r1, 1048575
000344  9b9000f8  ori r1, r1, 3968
000348  e7401fc8  storeli.w r1, -7156(r30)
00034c  9f000fc7  addli r1, r30, -7296
000350  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000354  e340efc7  loadli.w r1,  -7180(r30)
000358  bbc50000  bneq r1, zero, 368
00035c  9f000fc7  addli r1, r30, -7296
000360  33020028  zext_int2long r[5:6], zero
000364  a7860b00  addli.d r[14:15], r[24:25], 0
000368  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
00036c  a70a0200  addli.d r[22:23], r[5:6], 0
000370  5b040000  j 32
000374  eb5b8f00  load.d r[24:25], 8(r30)
000378  a78a0a04  addli.d r[22:23], r[22:23], 512
00037c  27120200  addli.d r[5:6], r[5:6], 1
000380  a78606fc  addli.d r[14:15], r[14:15], 32256
000384  00a00000  mfence { lm }
000388  93b07a05  setlt.sl r1, r[22:23], r[24:25]
00038c  b7f40000  beq r1, zero, 316
000390  9f017fc8  addli r3, r30, -7112
000394  8bb85b19  sub.sl r[18:19], r[24:25], r[22:23]
000398  9f076fc8  addli r15, r30, -7120
00039c  97bbba03  sll.d r[24:25], r[22:23], r27
0003a0  ebd00100  load.d r[2:3], 0(r3)
0003a4  8bb81840  min.sl r[18:19], r[18:19], r[2:3]
0003a8  6bd10700  load.d r[3:4], 0(r15)
0003ac  ab0000f0  lui r1, 983040
0003b0  9f070fef  addli r15, r30, -2176
0003b4  1bb52800  slli r10, r17, 2
0003b8  0b217111  add.ul r[3:4], r[3:4], r[24:25]
0003bc  97101500  or r1, r10, r1
0003c0  ff20f100  l_gm2lm r1, r15, 0(r[3:4])
0003c4  9f075fc8  addli r15, r30, -7128
0003c8  ab0000f0  lui r1, 983040
0003cc  6bd10700  load.d r[3:4], 0(r15)
0003d0  97101500  or r1, r10, r1
0003d4  1f050fdf  addli r10, r30, -4224
0003d8  00a00200  mfence { lm, gm }
0003dc  0b217111  add.ul r[3:4], r[3:4], r[24:25]
0003e0  ff20a100  l_gm2lm r1, r10, 0(r[3:4])
0003e4  9ff03800  addli r1, r17, 31
0003e8  00a00200  mfence { lm, gm }
0003ec  63414fc8  loadli.w r2,  -7132(r30)
0003f0  00a00000  mfence { lm }
0003f4  97802000  and r1, r1, r2
0003f8  cbe11001  ble.s r1, r17, 120
0003fc  1f111000  addli r2, zero, 9
000400  eb5b8f00  load.d r[24:25], 8(r30)
000404  1f057fc8  addli r10, r30, -7112
000408  17312202  sll.d r[3:4], r[5:6], r2
00040c  0bb12b18  sub.sl r[3:4], r[24:25], r[3:4]
000410  eb5b0500  load.d r[24:25], 0(r10)
000414  63451fc8  loadli.w r10,  -7156(r30)
000418  0b317141  min.sl r[3:4], r[3:4], r[24:25]
00041c  8bbb7641  min.sl r[24:25], r[14:15], r[24:25]
000420  1b312100  slli r2, r2, 2
000424  9f41f100  addli r3, r2, 124
000428  9781a100  and r3, r3, r10
00042c  1bb52b00  slli r10, r23, 2
000430  8b992118  sub.s r19, r3, r2
000434  1f010fef  addli r2, r30, -2176
000438  8b17a110  add.s r15, r2, r10
00043c  b7900900  beq r19, zero, 36
000440  1f010fdf  addli r2, r30, -4224
000444  8b1ba110  add.s r23, r2, r10
000448  1f050000  addli r10, zero, 0
00044c  0b91ab10  add.s r2, r23, r10
000450  1f150500  addli r10, r10, 1
000454  93013505  setlt.u r3, r10, r19
000458  73000100  store.b zero, 0(r2)
00045c  bbcf01fe  bneq r3, zero, -16
000460  67800701  storeli.w r16, 0(r15)
000464  9f980800  addli r17, r17, 1
000468  9fc70700  addli r15, r15, 4
00046c  bfdf18fe  blt.s r17, r1, -12
000470  1f110000  addli r2, zero, 1
000474  00a00000  mfence { lm }
000478  bffb20fe  blt.s r1, r2, -260
00047c  eb5b8f00  load.d r[24:25], 8(r30)
000480  9f070fdf  addli r15, r30, -4224
000484  9f080fef  addli r17, r30, -2176
000488  1f090000  addli r18, zero, 0
00048c  1f818800  addli r2, r17, 64
000490  42900802  vload_mask16.mz vr0{mr1}, 0(r17)
000494  c2910702  vload_mask16.mz vr3{mr1}, 0(r15)
000498  1f094900  addli r18, r18, 32
00049c  9f880801  addli r17, r17, 128
0004a0  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
0004a4  1f818700  addli r2, r15, 64
0004a8  9f870701  addli r15, r15, 128
0004ac  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
0004b0  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
0004b4  16114102  vadd.f.mz.rn vr2{mr1}, vr2, vr4
0004b8  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
0004bc  b6900002  vmax.f.mz vr1{mr1}, vr1, vr0
0004c0  3f3f19fe  blt.s r18, r1, -52
0004c4  dbd6ffff  j -332
0004c8  7a950060  vrmax.f r10, vr1
0004cc  12325002  vadd.s.mz vr4{mr1}, zero, vr5
0004d0  e340efc7  loadli.w r1,  -7180(r30)
0004d4  ab06fcc2  lui r13, 798656
0004d8  3b9b0000  bneq r1, zero, 708
0004dc  92305002  vadd.s.mz vr1{mr1}, zero, vr5
0004e0  33020028  zext_int2long r[5:6], zero
0004e4  9f008fcc  addli r1, r30, -6592
0004e8  6702afc8  storeli.w r10, -7136(r30)
0004ec  73b07001  store.d r[24:25], 0(r1)
0004f0  a70a0200  addli.d r[22:23], r[5:6], 0
0004f4  9f000fcd  addli r1, r30, -6528
0004f8  6a101522  vor.f.mz vr0{mr1}, r10, vr1
0004fc  12321002  vadd.s.mz vr4{mr1}, zero, vr1
000500  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000504  5b060000  j 48
000508  eb5b8f00  load.d r[24:25], 8(r30)
00050c  ab06fcc2  lui r13, 798656
000510  a78a0a04  addli.d r[22:23], r[22:23], 512
000514  1f058fcc  addli r10, r30, -6592
000518  00a00000  mfence { lm }
00051c  27120200  addli.d r[5:6], r[5:6], 1
000520  93b07a05  setlt.sl r1, r[22:23], r[24:25]
000524  6b510500  load.d r[3:4], 0(r10)
000528  270101fc  addli.d r[3:4], r[3:4], 32256
00052c  73302500  store.d r[3:4], 0(r10)
000530  b7890000  beq r1, zero, 608
000534  9f017fc8  addli r3, r30, -7112
000538  8bb05b19  sub.sl r[2:3], r[24:25], r[22:23]
00053c  97bbba03  sll.d r[24:25], r[22:23], r27
000540  ebd60100  load.d r[14:15], 0(r3)
000544  9f016fc8  addli r3, r30, -7120
000548  8bb8d040  min.sl r[18:19], r[2:3], r[14:15]
00054c  ebd60100  load.d r[14:15], 0(r3)
000550  ab0000f0  lui r1, 983040
000554  9f010fef  addli r3, r30, -2176
000558  1bb12800  slli r2, r17, 2
00055c  8ba67611  add.ul r[14:15], r[14:15], r[24:25]
000560  97101100  or r1, r2, r1
000564  ffa03600  l_gm2lm r1, r3, 0(r[14:15])
000568  9f015fc8  addli r3, r30, -7128
00056c  ab0000f0  lui r1, 983040
000570  ebd60100  load.d r[14:15], 0(r3)
000574  97101100  or r1, r2, r1
000578  1f010fdf  addli r2, r30, -4224
00057c  00a00200  mfence { lm, gm }
000580  8ba67611  add.ul r[14:15], r[14:15], r[24:25]
000584  ffa02600  l_gm2lm r1, r2, 0(r[14:15])
000588  9ff03800  addli r1, r17, 31
00058c  00a00200  mfence { lm, gm }
000590  63414fc8  loadli.w r2,  -7132(r30)
000594  00a00000  mfence { lm }
000598  97872000  and r15, r1, r2
00059c  4b821701  ble.s r15, r17, 128
0005a0  9f101000  addli r1, zero, 9
0005a4  eb568f00  load.d r[14:15], 8(r30)
0005a8  9f017fc8  addli r3, r30, -7112
0005ac  97301202  sll.d r[2:3], r[5:6], r1
0005b0  8bb01618  sub.sl r[2:3], r[14:15], r[2:3]
0005b4  ebd60100  load.d r[14:15], 0(r3)
0005b8  9f018fcc  addli r3, r30, -6592
0005bc  ebdb0100  load.d r[24:25], 0(r3)
0005c0  e3411fc8  loadli.w r3,  -7156(r30)
0005c4  8bb0d040  min.sl r[2:3], r[2:3], r[14:15]
0005c8  9bb02000  slli r1, r1, 2
0005cc  8bb6db40  min.sl r[14:15], r[24:25], r[14:15]
0005d0  1fc1f000  addli r2, r1, 124
0005d4  1bb52600  slli r10, r13, 2
0005d8  17013100  and r2, r2, r3
0005dc  8b191118  sub.s r19, r2, r1
0005e0  9f000fef  addli r1, r30, -2176
0005e4  8b90a010  add.s r1, r1, r10
0005e8  b7900900  beq r19, zero, 36
0005ec  1f010fdf  addli r2, r30, -4224
0005f0  8b1ba110  add.s r23, r2, r10
0005f4  1f050000  addli r10, zero, 0
0005f8  0b91ab10  add.s r2, r23, r10
0005fc  1f150500  addli r10, r10, 1
000600  93013505  setlt.u r3, r10, r19
000604  73000100  store.b zero, 0(r2)
000608  bbcf01fe  bneq r3, zero, -16
00060c  67800001  storeli.w r16, 0(r1)
000610  9f980800  addli r17, r17, 1
000614  9fc00000  addli r1, r1, 4
000618  bfdff8fe  blt.s r17, r15, -12
00061c  9f100000  addli r1, zero, 1
000620  00a00000  mfence { lm }
000624  bf9b17fe  blt.s r15, r1, -284
000628  eb5b8f00  load.d r[24:25], 8(r30)
00062c  9f000fdf  addli r1, r30, -4224
000630  9f080fef  addli r17, r30, -2176
000634  1f090000  addli r18, zero, 0
000638  ab06fcc2  lui r13, 798656
00063c  1f018fce  addli r2, r30, -6336
000640  42900802  vload_mask16.mz vr0{mr1}, 0(r17)
000644  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000648  9f818000  addli r3, r1, 64
00064c  1f094900  addli r18, r18, 32
000650  9f800001  addli r1, r1, 128
000654  46104102  vstore_mask16.mz vr4{mr1}, 0(r2)
000658  1f010fcd  addli r2, r30, -6528
00065c  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
000660  c2130102  vload_mask16.mz vr7{mr1}, 0(r2)
000664  1f818800  addli r2, r17, 64
000668  9f880801  addli r17, r17, 128
00066c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000670  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
000674  1f010fce  addli r2, r30, -6400
000678  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
00067c  1f018fca  addli r2, r30, -6848
000680  1e107002  vsub.f.mz.rn vr0{mr1}, vr0, vr7
000684  96914102  vadd.f.mz.rn vr3{mr1}, vr3, vr4
000688  0a900c02  vmul.f.mz.rn vr0{mr1}, r25, vr0
00068c  9e917102  vsub.f.mz.rn vr3{mr1}, vr3, vr7
000690  1a110d02  vsub.f.mz.rn vr2{mr1}, r26, vr0
000694  8a913c02  vmul.f.mz.rn vr3{mr1}, r25, vr3
000698  72112e42  vlt.f.mz mr2{mr1}, r28, vr2
00069c  6a201034  vor.u.mh vr0{mr2}, zero, vr1
0006a0  42150102  vload_mask16.mz vr10{mr1}, 0(r2)
0006a4  1f018fcd  addli r2, r30, -6464
0006a8  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
0006ac  1f010fca  addli r2, r30, -6912
0006b0  12110a02  vadd.f.mz.rn vr2{mr1}, r20, vr0
0006b4  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
0006b8  1f018fc9  addli r2, r30, -6976
0006bc  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0006c0  1f010fc9  addli r2, r30, -7040
0006c4  92922502  vadd.f.mz.rn vr5{mr1}, r11, vr2
0006c8  42140102  vload_mask16.mz vr8{mr1}, 0(r2)
0006cc  1f010fcb  addli r2, r30, -6784
0006d0  c2150102  vload_mask16.mz vr11{mr1}, 0(r2)
0006d4  1f018fc8  addli r2, r30, -7104
0006d8  1e105002  vsub.f.mz.rn vr0{mr1}, vr0, vr5
0006dc  9232a002  vadd.s.mz vr5{mr1}, zero, vr10
0006e0  12328002  vadd.s.mz vr4{mr1}, zero, vr8
0006e4  a2120302  vmac.f.mz.rn vr5{mr1}, r6, vr0
0006e8  6eb125a2  vsll.s.mz vr2{mr1}, vr11, vr2
0006ec  26930202  vmac.f.mz.rn vr6{mr1}, vr5, vr0
0006f0  92329002  vadd.s.mz vr5{mr1}, zero, vr9
0006f4  12312402  vadd.s.mz vr2{mr1}, r8, vr2
0006f8  a6120302  vmac.f.mz.rn vr5{mr1}, vr6, vr0
0006fc  12331002  vadd.s.mz vr6{mr1}, zero, vr1
000700  26930202  vmac.f.mz.rn vr6{mr1}, vr5, vr0
000704  26120302  vmac.f.mz.rn vr4{mr1}, vr6, vr0
000708  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
00070c  1f010fcc  addli r2, r30, -6656
000710  c2130102  vload_mask16.mz vr7{mr1}, 0(r2)
000714  1f010fce  addli r2, r30, -6400
000718  92326002  vadd.s.mz vr5{mr1}, zero, vr6
00071c  a6120202  vmac.f.mz.rn vr5{mr1}, vr4, vr0
000720  0e902202  vmul.f.mz.rn vr0{mr1}, vr5, vr2
000724  1a113d02  vsub.f.mz.rn vr2{mr1}, r26, vr3
000728  6a207034  vor.u.mh vr0{mr2}, zero, vr7
00072c  72112e42  vlt.f.mz mr2{mr1}, r28, vr2
000730  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
000734  1f018fcd  addli r2, r30, -6464
000738  ea212034  vor.u.mh vr3{mr2}, zero, vr2
00073c  c2120102  vload_mask16.mz vr5{mr1}, 0(r2)
000740  1f018fce  addli r2, r30, -6336
000744  12113a02  vadd.f.mz.rn vr2{mr1}, r20, vr3
000748  12922502  vadd.f.mz.rn vr4{mr1}, r11, vr2
00074c  6eb125a2  vsll.s.mz vr2{mr1}, vr11, vr2
000750  9e914102  vsub.f.mz.rn vr3{mr1}, vr3, vr4
000754  12312402  vadd.s.mz vr2{mr1}, r8, vr2
000758  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
00075c  22153302  vmac.f.mz.rn vr10{mr1}, r6, vr3
000760  a6123502  vmac.f.mz.rn vr5{mr1}, vr10, vr3
000764  a6943202  vmac.f.mz.rn vr9{mr1}, vr5, vr3
000768  92326002  vadd.s.mz vr5{mr1}, zero, vr6
00076c  a6903402  vmac.f.mz.rn vr1{mr1}, vr9, vr3
000770  26943002  vmac.f.mz.rn vr8{mr1}, vr1, vr3
000774  a6123402  vmac.f.mz.rn vr5{mr1}, vr8, vr3
000778  0e912202  vmul.f.mz.rn vr2{mr1}, vr5, vr2
00077c  6a217034  vor.u.mh vr2{mr2}, zero, vr7
000780  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000784  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
000788  bf5af9fe  blt.s r18, r15, -332
00078c  dbb0ffff  j -636
000790  9f000fcc  addli r1, r30, -6656
000794  63054fc8  loadli.w r10,  -7136(r30)
000798  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
00079c  1f02efc6  addli r4, r30, -7312
0007a0  1f078fcb  addli r14, r30, -6720
0007a4  27890b00  addli.d r[19:20], r[24:25], 0
0007a8  9f000000  addli r1, zero, 0
0007ac  6b510200  load.d r[3:4], 0(r4)
0007b0  6b520700  load.d r[5:6], 0(r14)
0007b4  0b214110  add.ul r[3:4], r[3:4], r[5:6]
0007b8  1f020fc8  addli r4, r30, -7168
0007bc  9f028000  addli r5, zero, 64
0007c0  73302200  store.d r[3:4], 0(r4)
0007c4  9f010fff  addli r3, r30, -128
0007c8  1f020000  addli r4, zero, 0
0007cc  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
0007d0  00a00000  mfence { lm }
0007d4  0b911110  add.s r2, r3, r1
0007d8  9fc00000  addli r1, r1, 4
0007dc  63010100  loadli.w r2,  0(r2)
0007e0  0b622210  add.f.rn r4, r4, r2
0007e4  bbcf50fe  bneq r1, r5, -16
0007e8  e340efc7  loadli.w r1,  -7180(r30)
0007ec  630cffc7  loadli.w r24,  -7176(r30)
0007f0  bbcb00fc  bneq r1, zero, -1296
0007f4  8f004418  div.f.rn r1, r8, r4
0007f8  6e224262  vxor.u.mz vr4{mr1}, vr4, vr4
0007fc  33020028  zext_int2long r[5:6], zero
000800  27070900  addli.d r[15:16], r[19:20], 0
000804  00a00000  mfence { lm }
000808  6a104522  vor.f.mz vr0{mr1}, r10, vr4
00080c  a70a0200  addli.d r[22:23], r[5:6], 0
000810  6a914022  vor.f.mz vr2{mr1}, r1, vr4
000814  9f008fcb  addli r1, r30, -6720
000818  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
00081c  9f008fce  addli r1, r30, -6336
000820  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000824  db0c0000  j 100
000828  9f010fc8  addli r3, r30, -7168
00082c  12303002  vadd.s.mz vr0{mr1}, zero, vr3
000830  27120200  addli.d r[5:6], r[5:6], 1
000834  270707fc  addli.d r[15:16], r[15:16], 32256
000838  9f2d0000  addli r27, zero, 2
00083c  ebd00100  load.d r[2:3], 0(r3)
000840  9f013fc8  addli r3, r30, -7144
000844  ebd80100  load.d r[18:19], 0(r3)
000848  9f012fc8  addli r3, r30, -7152
00084c  ebda0100  load.d r[22:23], 0(r3)
000850  ab0100f0  lui r3, 983040
000854  8ba01011  add.ul r[2:3], r[2:3], r[18:19]
000858  e3084fc8  loadli.w r17,  -7136(r30)
00085c  6b598f00  load.d r[19:20], 8(r30)
000860  00a00000  mfence { lm }
000864  a78a0a04  addli.d r[22:23], r[22:23], 512
000868  97913800  or r3, r17, r3
00086c  9f080fcf  addli r17, r30, -6272
000870  13b52a05  setlt.sl r10, r[22:23], r[19:20]
000874  ffb11001  s_lm2gm r3, r17, 0(r[2:3])
000878  9f000fcc  addli r1, r30, -6656
00087c  00a00200  mfence { lm, gm }
000880  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
000884  377905fc  beq r10, zero, -1444
000888  8b305919  sub.sl r[2:3], r[19:20], r[22:23]
00088c  a7880a00  addli.d r[18:19], r[22:23], 0
000890  9f012fc8  addli r3, r30, -7152
000894  a70a0200  addli.d r[22:23], r[5:6], 0
000898  27020700  addli.d r[5:6], r[15:16], 0
00089c  1f056fc8  addli r10, r30, -7120
0008a0  73b01101  store.d r[18:19], 0(r3)
0008a4  9f017fc8  addli r3, r30, -7112
0008a8  17b7b803  sll.d r[15:16], r[18:19], r27
0008ac  ebd80100  load.d r[18:19], 0(r3)
0008b0  8bb81041  min.sl r[18:19], r[2:3], r[18:19]
0008b4  6b510500  load.d r[3:4], 0(r10)
0008b8  ab0000f0  lui r1, 983040
0008bc  1f050fef  addli r10, r30, -2176
0008c0  9bb92800  slli r19, r17, 2
0008c4  0b21e110  add.ul r[3:4], r[3:4], r[15:16]
0008c8  97901900  or r1, r19, r1
0008cc  67023fc9  storeli.w r19, -7136(r30)
0008d0  ff20a100  l_gm2lm r1, r10, 0(r[3:4])
0008d4  1f055fc8  addli r10, r30, -7128
0008d8  ab0000f0  lui r1, 983040
0008dc  6b510500  load.d r[3:4], 0(r10)
0008e0  1f053fc8  addli r10, r30, -7144
0008e4  97901900  or r1, r19, r1
0008e8  7330e500  store.d r[15:16], 0(r10)
0008ec  1f050fdf  addli r10, r30, -4224
0008f0  0b21e110  add.ul r[3:4], r[3:4], r[15:16]
0008f4  00a00200  mfence { lm, gm }
0008f8  27070200  addli.d r[15:16], r[5:6], 0
0008fc  27820a00  addli.d r[5:6], r[22:23], 0
000900  ff20a100  l_gm2lm r1, r10, 0(r[3:4])
000904  9ff03800  addli r1, r17, 31
000908  00a00200  mfence { lm, gm }
00090c  63414fc8  loadli.w r2,  -7132(r30)
000910  00a00000  mfence { lm }
000914  97892000  and r19, r1, r2
000918  4b821901  ble.s r19, r17, 128
00091c  9f101000  addli r1, zero, 9
000920  eb5b8f00  load.d r[24:25], 8(r30)
000924  9f017fc8  addli r3, r30, -7112
000928  97301202  sll.d r[2:3], r[5:6], r1
00092c  8bb01b18  sub.sl r[2:3], r[24:25], r[2:3]
000930  ebdb0100  load.d r[24:25], 0(r3)
000934  e3411fc8  loadli.w r3,  -7156(r30)
000938  8bb07041  min.sl r[2:3], r[2:3], r[24:25]
00093c  8b3b7741  min.sl r[24:25], r[15:16], r[24:25]
000940  9bb02000  slli r1, r1, 2
000944  1bb52b00  slli r10, r23, 2
000948  1fc1f000  addli r2, r1, 124
00094c  17013100  and r2, r2, r3
000950  8b1d1118  sub.s r27, r2, r1
000954  9f000fef  addli r1, r30, -2176
000958  8b90a010  add.s r1, r1, r10
00095c  b7a00d00  beq r27, zero, 40
000960  1f010fdf  addli r2, r30, -4224
000964  9f060000  addli r13, zero, 0
000968  0b15a110  add.s r10, r2, r10
00096c  0b11d510  add.s r2, r10, r13
000970  9f960600  addli r13, r13, 1
000974  9381b605  setlt.u r3, r13, r27
000978  73000100  store.b zero, 0(r2)
00097c  bbcf01fe  bneq r3, zero, -16
000980  ab06fcc2  lui r13, 798656
000984  630cffc7  loadli.w r24,  -7176(r30)
000988  67800001  storeli.w r16, 0(r1)
00098c  9f980800  addli r17, r17, 1
000990  9fc00000  addli r1, r1, 4
000994  bfdf38ff  blt.s r17, r19, -12
000998  00a00000  mfence { lm }
00099c  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0009a0  9f100000  addli r1, zero, 1
0009a4  1f752000  addli r10, zero, 23
0009a8  e34bffc7  loadli.w r23,  -7172(r30)
0009ac  bff919fe  blt.s r19, r1, -388
0009b0  9f000fcf  addli r1, r30, -6272
0009b4  9f080fdf  addli r17, r30, -4224
0009b8  1f090fef  addli r18, r30, -2176
0009bc  9f0d0000  addli r27, zero, 0
0009c0  42100902  vload_mask16.mz vr0{mr1}, 0(r18)
0009c4  c2900802  vload_mask16.mz vr1{mr1}, 0(r17)
0009c8  1f018900  addli r2, r18, 64
0009cc  9f818800  addli r3, r17, 64
0009d0  9f0a0fcd  addli r21, r30, -6528
0009d4  ea924b22  vor.f.mz vr5{mr1}, r23, vr4
0009d8  6a154622  vor.f.mz vr10{mr1}, r12, vr4
0009dc  9f8d4d00  addli r27, r27, 32
0009e0  9f880801  addli r17, r17, 128
0009e4  1f090901  addli r18, r18, 128
0009e8  42140102  vload_mask16.mz vr8{mr1}, 0(r2)
0009ec  1f018fcc  addli r2, r30, -6592
0009f0  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
0009f4  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0009f8  1e103002  vsub.f.mz.rn vr0{mr1}, vr0, vr3
0009fc  96101402  vadd.f.mz.rn vr1{mr1}, vr8, vr1
000a00  6a144422  vor.f.mz vr8{mr1}, r8, vr4
000a04  8a910c02  vmul.f.mz.rn vr3{mr1}, r25, vr0
000a08  6aa04622  vor.u.mz vr0{mr1}, r13, vr4
000a0c  1a113d02  vsub.f.mz.rn vr2{mr1}, r26, vr3
000a10  46900a02  vstore_mask16.mz vr0{mr1}, 0(r21)
000a14  72112e42  vlt.f.mz mr2{mr1}, r28, vr2
000a18  6a114c22  vor.f.mz vr2{mr1}, r24, vr4
000a1c  ea210034  vor.u.mh vr3{mr2}, zero, vr0
000a20  46105102  vstore_mask16.mz vr5{mr1}, 0(r2)
000a24  1f018fce  addli r2, r30, -6336
000a28  92332002  vadd.s.mz vr7{mr1}, zero, vr2
000a2c  92153a02  vadd.f.mz.rn vr11{mr1}, r20, vr3
000a30  1290b502  vadd.f.mz.rn vr0{mr1}, r11, vr11
000a34  9e940102  vsub.f.mz.rn vr9{mr1}, vr3, vr0
000a38  ea914322  vor.f.mz vr3{mr1}, r7, vr4
000a3c  6a904422  vor.f.mz vr0{mr1}, r9, vr4
000a40  a2129302  vmac.f.mz.rn vr5{mr1}, r6, vr9
000a44  12333002  vadd.s.mz vr6{mr1}, zero, vr3
000a48  26939202  vmac.f.mz.rn vr6{mr1}, vr5, vr9
000a4c  92320002  vadd.s.mz vr5{mr1}, zero, vr0
000a50  a6139302  vmac.f.mz.rn vr7{mr1}, vr6, vr9
000a54  1233a002  vadd.s.mz vr6{mr1}, zero, vr10
000a58  a6929302  vmac.f.mz.rn vr5{mr1}, vr7, vr9
000a5c  ea234522  vor.u.mz vr7{mr1}, r10, vr4
000a60  26939202  vmac.f.mz.rn vr6{mr1}, vr5, vr9
000a64  eeb2b3a2  vsll.s.mz vr5{mr1}, vr7, vr11
000a68  c2150102  vload_mask16.mz vr11{mr1}, 0(r2)
000a6c  1f010fcd  addli r2, r30, -6528
000a70  92325402  vadd.s.mz vr5{mr1}, r8, vr5
000a74  9e90b002  vsub.f.mz.rn vr1{mr1}, vr1, vr11
000a78  92358002  vadd.s.mz vr11{mr1}, zero, vr8
000a7c  a6159302  vmac.f.mz.rn vr11{mr1}, vr6, vr9
000a80  0a931c02  vmul.f.mz.rn vr6{mr1}, r25, vr1
000a84  8e905502  vmul.f.mz.rn vr1{mr1}, vr11, vr5
000a88  9a126d02  vsub.f.mz.rn vr5{mr1}, r26, vr6
000a8c  ea204034  vor.u.mh vr1{mr2}, zero, vr4
000a90  72115e42  vlt.f.mz mr2{mr1}, r28, vr5
000a94  c2120102  vload_mask16.mz vr5{mr1}, 0(r2)
000a98  1f018fcc  addli r2, r30, -6592
000a9c  6a235034  vor.u.mh vr6{mr2}, zero, vr5
000aa0  92126a02  vadd.f.mz.rn vr5{mr1}, r20, vr6
000aa4  92945502  vadd.f.mz.rn vr9{mr1}, r11, vr5
000aa8  1e139302  vsub.f.mz.rn vr6{mr1}, vr6, vr9
000aac  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
000ab0  1f018fce  addli r2, r30, -6336
000ab4  a2146302  vmac.f.mz.rn vr9{mr1}, r6, vr6
000ab8  a6916402  vmac.f.mz.rn vr3{mr1}, vr9, vr6
000abc  26916102  vmac.f.mz.rn vr2{mr1}, vr3, vr6
000ac0  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
000ac4  1f018fcb  addli r2, r30, -6720
000ac8  26106102  vmac.f.mz.rn vr0{mr1}, vr2, vr6
000acc  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
000ad0  1f818000  addli r2, r1, 64
000ad4  26156002  vmac.f.mz.rn vr10{mr1}, vr0, vr6
000ad8  6eb053a2  vsll.s.mz vr0{mr1}, vr7, vr5
000adc  8e101102  vmul.f.mz.rn vr1{mr1}, vr2, vr1
000ae0  26146502  vmac.f.mz.rn vr8{mr1}, vr10, vr6
000ae4  12300402  vadd.s.mz vr0{mr1}, r8, vr0
000ae8  0e100402  vmul.f.mz.rn vr0{mr1}, vr8, vr0
000aec  6a204034  vor.u.mh vr0{mr2}, zero, vr4
000af0  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000af4  9f800001  addli r1, r1, 128
000af8  0e100102  vmul.f.mz.rn vr0{mr1}, vr2, vr0
000afc  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000b00  3f8b3dff  blt.s r27, r19, -320
000b04  dba4ffff  j -732
000b08  9f0e8fc6  addli sp, r30, -7360
000b0c  e38f2e39  loadli.w r31,  7312(sp)
000b10  63cf2e39  loadli.w r30,  7316(sp)
000b14  638e3e39  loadli.w r28,  7320(sp)
000b18  e3cd3e39  loadli.w r27,  7324(sp)
000b1c  638d4e39  loadli.w r26,  7328(sp)
000b20  e3cc4e39  loadli.w r25,  7332(sp)
000b24  638c5e39  loadli.w r24,  7336(sp)
000b28  e3cb5e39  loadli.w r23,  7340(sp)
000b2c  638b6e39  loadli.w r22,  7344(sp)
000b30  e3ca6e39  loadli.w r21,  7348(sp)
000b34  638a7e39  loadli.w r20,  7352(sp)
000b38  e3c97e39  loadli.w r19,  7356(sp)
000b3c  9f8e8e39  addli sp, sp, 7360
000b40  5f800f00  jr r31, 0
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
