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
0000fc  4b715b01  ble.s r22, r21, 92
000100  ab800000  lui r1, 8
000104  1f114000  addli r2, zero, 33
000108  80db0002  load_param_i r23, 1
00010c  1f1c0000  addli r24, zero, 1
000110  b3810028  zext_int2long r[4:5], r1
000114  b3000128  zext_int2long r[2:3], r2
000118  733c3ffe  store.d r[4:5], -8(r30)
00011c  73381ffe  store.d r[2:3], -16(r30)
000120  8b904a31  div.s r1, r21, r20
000124  6b528f00  load.d r[5:6], 8(r30)
000128  6b530f01  load.d r[7:8], 16(r30)
00012c  9f441000  addli r9, zero, 12
000130  67818e01  storeli.w r24, 16(sp)
000134  0b943031  div.s r8, r1, r19
000138  eb508fff  load.d r[2:3], -8(r30)
00013c  73b41e00  store.d r[2:3], 8(sp)
000140  eb500fff  load.d r[2:3], -16(r30)
000144  73b01e00  store.d r[2:3], 0(sp)
000148  6b510f00  load.d r[3:4], 0(r30)
00014c  d72c0000  jal 356
000150  8b9a7a11  add.s r21, r21, r23
000154  3fbf6aff  blt.s r21, r22, -52
000158  9f8e8e00  addli sp, sp, 64
00015c  00a00300  mfence { lm, sm, gm }
000160  00100000  exit
000164  9f8e8ee0  addli sp, sp, -4032
000168  67c9ee1f  storeli.w r30, 3988(sp)
00016c  1f8f8e1f  addli r30, sp, 4032
000170  e7cb3e1f  storeli.w r19, 4028(sp)
000174  e78b4e1f  storeli.w r20, 4024(sp)
000178  67cb5e1f  storeli.w r21, 4020(sp)
00017c  678b6e1f  storeli.w r22, 4016(sp)
000180  e7ca7e1f  storeli.w r23, 4012(sp)
000184  e78a8e1f  storeli.w r24, 4008(sp)
000188  67ca9e1f  storeli.w r25, 4004(sp)
00018c  678aae1f  storeli.w r26, 4000(sp)
000190  e7c9be1f  storeli.w r27, 3996(sp)
000194  e789ce1f  storeli.w r28, 3992(sp)
000198  6789fe1f  storeli.w r31, 3984(sp)
00019c  9f00efe0  addli r1, r30, -3984
0001a0  e7479fe0  storeli.w r9, -3972(r30)
0001a4  73b06000  store.d r[7:8], 0(r1)
0001a8  9f005fe2  addli r1, r30, -3800
0001ac  73b04000  store.d r[5:6], 0(r1)
0001b0  80300002  core_id r1
0001b4  6b520f00  load.d r[5:6], 0(r30)
0001b8  0b949050  fmac.s r8, r1, r9
0001bc  33170428  sext_int2long r[15:16], r8
0001c0  9330e206  setle.sl r1, r[5:6], r[15:16]
0001c4  1f02dfe0  addli r4, r30, -3992
0001c8  73302200  store.d r[3:4], 0(r4)
0001cc  bbbc0004  bneq r1, zero, 2860
0001d0  eb588f00  load.d r[18:19], 8(r30)
0001d4  2b0180ff  lui r2, 1046528
0001d8  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0001dc  9f010004  addli r3, zero, 512
0001e0  2b822139  lui r4, 234008
0001e4  1f140000  addli r8, zero, 1
0001e8  2b0dffff  lui r26, 1048560
0001ec  2b0e807f  lui r28, 522240
0001f0  2b0ac07f  lui r20, 523264
0001f4  ab0b0080  lui r23, 524288
0001f8  2b08fc42  lui r16, 274368
0001fc  2b03404b  lui r6, 308224
000200  2b0b803f  lui r22, 260096
000204  ea100122  vor.f.mz vr1{mr1}, r2, vr0
000208  1b169248  ori r12, r4, 1161
00020c  2b52633d  lui r4, 251445
000210  a3f01800  setlti.d r1, r[18:19], 1
000214  9b157284  ori r11, r4, 2119
000218  2b72313f  lui r4, 258839
00021c  674e1fe0  storeli.w r1, -3868(r30)
000220  9f000fe1  addli r1, r30, -3968
000224  9b198221  ori r19, r4, 536
000228  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
00022c  b3800128  zext_int2long r[2:3], r3
000230  9f017fe2  addli r3, r30, -3784
000234  73b01100  store.d r[2:3], 0(r3)
000238  2bf10000  lui r2, 15
00023c  abf0ffff  lui r1, 1048575
000240  ab0140cb  lui r3, 832512
000244  9b1c01f8  ori r25, r2, 3968
000248  1f018fe2  addli r2, r30, -3776
00024c  9b9000fe  ori r1, r1, 4064
000250  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000254  2b710000  lui r2, 7
000258  67421fe2  storeli.w r1, -3804(r30)
00025c  9f002000  addli r1, zero, 16
000260  9b1df1ff  ori r27, r2, 4095
000264  2ba1b83f  lui r2, 261002
000268  6aa30022  vor.u.mz vr6{mr1}, r1, vr0
00026c  9f000fe6  addli r1, r30, -3328
000270  1b15b1a3  ori r10, r2, 2619
000274  2bc1ae3a  lui r2, 240364
000278  9b14f13f  ori r9, r2, 1023
00027c  2b911d3c  lui r2, 246233
000280  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
000284  9b16b155  ori r13, r2, 1371
000288  2bf1753e  lui r2, 255839
00028c  9b1a01df  ori r21, r2, 3568
000290  db050000  j 44
000294  6341ffe0  loadli.w r2,  -3972(r30)
000298  80500102  load_param_i r1, 2
00029c  1f02bfe1  addli r4, r30, -3880
0002a0  6b570200  load.d r[15:16], 0(r4)
0002a4  8b902020  mul.s r1, r1, r2
0002a8  b3900028  sext_int2long r[2:3], r1
0002ac  0b271710  add.ul r[15:16], r[15:16], r[2:3]
0002b0  eb500f00  load.d r[2:3], 0(r30)
0002b4  93301704  setlt.sl r1, r[15:16], r[2:3]
0002b8  37890004  beq r1, zero, 2624
0002bc  9f00bfe1  addli r1, r30, -3880
0002c0  9f03dfe0  addli r7, r30, -3992
0002c4  0b321721  mul.sl r[5:6], r[15:16], r[18:19]
0002c8  73b0e000  store.d r[15:16], 0(r1)
0002cc  ebd00300  load.d r[2:3], 0(r7)
0002d0  17328202  sll.d r[5:6], r[5:6], r8
0002d4  9f032fe2  addli r7, r30, -3824
0002d8  73b04300  store.d r[5:6], 0(r7)
0002dc  8ba04010  add.ul r[2:3], r[2:3], r[5:6]
0002e0  1f026fe2  addli r4, r30, -3792
0002e4  73301200  store.d r[2:3], 0(r4)
0002e8  abf0ffff  lui r1, 1048575
0002ec  9b9000fc  ori r1, r1, 4032
0002f0  674f1fe0  storeli.w r1, -3852(r30)
0002f4  9f000fe1  addli r1, r30, -3968
0002f8  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0002fc  e340cfe1  loadli.w r1,  -3868(r30)
000300  3bd80000  bneq r1, zero, 532
000304  1f028fe5  addli r4, r30, -3392
000308  00a00000  mfence { lm }
00030c  b3000028  zext_int2long r[2:3], zero
000310  73301201  store.d r[18:19], 0(r4)
000314  1f020fe1  addli r4, r30, -3968
000318  27870000  addli.d r[15:16], r[2:3], 0
00031c  c2110202  vload_mask16.mz vr3{mr1}, 0(r4)
000320  1f028fe6  addli r4, r30, -3264
000324  73301200  store.d r[2:3], 0(r4)
000328  5b080000  j 64
00032c  eb588f00  load.d r[18:19], 8(r30)
000330  9f000fe5  addli r1, r30, -3456
000334  1f018fe6  addli r2, r30, -3264
000338  6bd70000  load.d r[15:16], 0(r1)
00033c  00a00000  mfence { lm }
000340  6b520100  load.d r[5:6], 0(r2)
000344  27070704  addli.d r[15:16], r[15:16], 512
000348  27120200  addli.d r[5:6], r[5:6], 1
00034c  93301705  setlt.sl r1, r[15:16], r[18:19]
000350  73304100  store.d r[5:6], 0(r2)
000354  1f018fe5  addli r2, r30, -3392
000358  6b520100  load.d r[5:6], 0(r2)
00035c  270202fc  addli.d r[5:6], r[5:6], 32256
000360  73304100  store.d r[5:6], 0(r2)
000364  b7c60000  beq r1, zero, 432
000368  9f000fe5  addli r1, r30, -3456
00036c  9f037fe2  addli r7, r30, -3784
000370  0bb2e818  sub.sl r[5:6], r[18:19], r[15:16]
000374  73b0e000  store.d r[15:16], 0(r1)
000378  97308702  sll.d r[2:3], r[15:16], r8
00037c  6bd70300  load.d r[15:16], 0(r7)
000380  9f036fe2  addli r7, r30, -3792
000384  ebd80300  load.d r[18:19], 0(r7)
000388  9f030ff7  addli r7, r30, -1152
00038c  0b37e240  min.sl r[15:16], r[5:6], r[15:16]
000390  2b0200f0  lui r4, 983040
000394  9b321700  slli r5, r14, 1
000398  8ba81810  add.ul r[18:19], r[18:19], r[2:3]
00039c  17924200  or r4, r5, r4
0003a0  7fa27800  l_gm2lm r4, r7, 0(r[18:19])
0003a4  9f035fe2  addli r7, r30, -3800
0003a8  2b0200f0  lui r4, 983040
0003ac  ebd80300  load.d r[18:19], 0(r7)
0003b0  17924200  or r4, r5, r4
0003b4  9f020fef  addli r5, r30, -2176
0003b8  00a00200  mfence { lm, gm }
0003bc  8ba01810  add.ul r[2:3], r[18:19], r[2:3]
0003c0  7fa25000  l_gm2lm r4, r5, 0(r[2:3])
0003c4  9f703700  addli r1, r14, 31
0003c8  00a00200  mfence { lm, gm }
0003cc  63414fe2  loadli.w r2,  -3804(r30)
0003d0  00a00000  mfence { lm }
0003d4  178c2000  and r24, r1, r2
0003d8  4b22ec00  ble.s r24, r14, 136
0003dc  1f018fe6  addli r2, r30, -3264
0003e0  9f101000  addli r1, zero, 9
0003e4  9f037fe2  addli r7, r30, -3784
0003e8  6b520100  load.d r[5:6], 0(r2)
0003ec  97301202  sll.d r[2:3], r[5:6], r1
0003f0  6b528f00  load.d r[5:6], 8(r30)
0003f4  8b301218  sub.sl r[2:3], r[5:6], r[2:3]
0003f8  6bd20300  load.d r[5:6], 0(r7)
0003fc  9f038fe5  addli r7, r30, -3392
000400  ebd80300  load.d r[18:19], 0(r7)
000404  e343efe1  loadli.w r7,  -3852(r30)
000408  8bb04040  min.sl r[2:3], r[2:3], r[5:6]
00040c  9bb01000  slli r1, r1, 1
000410  0bb24840  min.sl r[5:6], r[18:19], r[5:6]
000414  1fe17000  addli r2, r1, 62
000418  1b321200  slli r4, r4, 1
00041c  17017100  and r2, r2, r7
000420  0b111118  sub.s r2, r2, r1
000424  9f000ff7  addli r1, r30, -1152
000428  8b934010  add.s r7, r1, r4
00042c  b7100100  beq r2, zero, 36
000430  9f000fef  addli r1, r30, -2176
000434  9f020000  addli r5, zero, 0
000438  0b924010  add.s r4, r1, r4
00043c  8b105210  add.s r1, r4, r5
000440  9f920200  addli r5, r5, 1
000444  93882204  setlt.u r17, r5, r2
000448  73800000  store.b zero, 0(r1)
00044c  bbcf08fe  bneq r17, zero, -16
000450  73909301  store.h r25, 0(r7)
000454  1f170700  addli r14, r14, 1
000458  9fa30300  addli r7, r7, 2
00045c  bf5f87ff  blt.s r14, r24, -12
000460  00a00000  mfence { lm }
000464  3f2b8cfe  blt.s r24, r8, -312
000468  eb588f00  load.d r[18:19], 8(r30)
00046c  e3002f00  loadli.w r1,  16(r30)
000470  1f070fef  addli r14, r30, -2176
000474  9f070ff7  addli r15, r30, -1152
000478  9f030000  addli r7, zero, 0
00047c  5b040000  j 32
000480  36900002  vmax.f.mz vr0{mr1}, vr1, vr0
000484  9f834300  addli r7, r7, 32
000488  1f078700  addli r14, r14, 64
00048c  9f878700  addli r15, r15, 64
000490  b6910102  vmax.f.mz vr3{mr1}, vr3, vr0
000494  3fa08301  blt.s r7, r24, 8
000498  5bd3ffff  j -360
00049c  c2000702  vload.mz vr1{mr1}, 0(r14)
0004a0  42800702  vload.mz vr0{mr1}, 0(r15)
0004a4  6e3103a2  vsll.s.mz vr2{mr1}, vr6, vr0
0004a8  6a300d02  vand.s.mz vr0{mr1}, r26, vr0
0004ac  ea321d02  vand.s.mz vr5{mr1}, r26, vr1
0004b0  6e3213a2  vsll.s.mz vr4{mr1}, vr6, vr1
0004b4  96104102  vadd.f.mz.rn vr1{mr1}, vr2, vr4
0004b8  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
0004bc  3b9f00fe  bneq r1, zero, -60
0004c0  6e3113c2  vsrl.s.mz vr2{mr1}, vr6, vr1
0004c4  6e3203c2  vsrl.s.mz vr4{mr1}, vr6, vr0
0004c8  1f018fe2  addli r2, r30, -3776
0004cc  6a312402  vand.s.mz vr2{mr1}, r8, vr2
0004d0  6a324402  vand.s.mz vr4{mr1}, r8, vr4
0004d4  16b12002  vadd.s.mz vr2{mr1}, vr1, vr2
0004d8  16324002  vadd.s.mz vr4{mr1}, vr0, vr4
0004dc  e69000c0  vabs.f vr1, vr1
0004e0  661000c0  vabs.f vr0, vr0
0004e4  12b12d02  vadd.s.mz vr2{mr1}, r27, vr2
0004e8  12b24d02  vadd.s.mz vr4{mr1}, r27, vr4
0004ec  72211e42  vlt.u.mz mr2{mr1}, r28, vr1
0004f0  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0004f4  6a312d02  vand.s.mz vr2{mr1}, r26, vr2
0004f8  6a324d02  vand.s.mz vr4{mr1}, r26, vr4
0004fc  6a211a34  vor.u.mh vr2{mr2}, r20, vr1
000500  72210e42  vlt.u.mz mr2{mr1}, r28, vr0
000504  6a221a34  vor.u.mh vr4{mr2}, r20, vr1
000508  92302002  vadd.s.mz vr1{mr1}, zero, vr2
00050c  12304002  vadd.s.mz vr0{mr1}, zero, vr4
000510  5beeffff  j -144
000514  9f008fe2  addli r1, r30, -3776
000518  7a9c0160  vrmax.f r24, vr3
00051c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000520  e340cfe1  loadli.w r1,  -3868(r30)
000524  3bbe0000  bneq r1, zero, 908
000528  9f008fe2  addli r1, r30, -3776
00052c  e7008fe3  storeli.w r24, -3832(r30)
000530  1f020fe3  addli r4, r30, -3712
000534  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000538  9f008fe6  addli r1, r30, -3264
00053c  00a00000  mfence { lm }
000540  73301201  store.d r[18:19], 0(r4)
000544  1f028fe3  addli r4, r30, -3648
000548  ea100c22  vor.f.mz vr1{mr1}, r24, vr0
00054c  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000550  b3000028  zext_int2long r[2:3], zero
000554  27870000  addli.d r[15:16], r[2:3], 0
000558  73301200  store.d r[2:3], 0(r4)
00055c  5b080000  j 64
000560  eb588f00  load.d r[18:19], 8(r30)
000564  9f003fe2  addli r1, r30, -3816
000568  1f018fe3  addli r2, r30, -3648
00056c  6bd70000  load.d r[15:16], 0(r1)
000570  00a00000  mfence { lm }
000574  6b520100  load.d r[5:6], 0(r2)
000578  27070704  addli.d r[15:16], r[15:16], 512
00057c  27120200  addli.d r[5:6], r[5:6], 1
000580  93301705  setlt.sl r1, r[15:16], r[18:19]
000584  73304100  store.d r[5:6], 0(r2)
000588  1f010fe3  addli r2, r30, -3712
00058c  6b520100  load.d r[5:6], 0(r2)
000590  270202fc  addli.d r[5:6], r[5:6], 32256
000594  73304100  store.d r[5:6], 0(r2)
000598  37dc0000  beq r1, zero, 788
00059c  1f023fe2  addli r4, r30, -3816
0005a0  9f037fe2  addli r7, r30, -3784
0005a4  8bb0e818  sub.sl r[2:3], r[18:19], r[15:16]
0005a8  7330e200  store.d r[15:16], 0(r4)
0005ac  6bd20300  load.d r[5:6], 0(r7)
0005b0  9f036fe2  addli r7, r30, -3792
0005b4  17378702  sll.d r[15:16], r[15:16], r8
0005b8  ebd80300  load.d r[18:19], 0(r7)
0005bc  9f030ff7  addli r7, r30, -1152
0005c0  0bb24040  min.sl r[5:6], r[2:3], r[5:6]
0005c4  ab0000f0  lui r1, 983040
0005c8  1b311200  slli r2, r4, 1
0005cc  8ba8e810  add.ul r[18:19], r[18:19], r[15:16]
0005d0  97101100  or r1, r2, r1
0005d4  ffa07800  l_gm2lm r1, r7, 0(r[18:19])
0005d8  9f035fe2  addli r7, r30, -3800
0005dc  ab0000f0  lui r1, 983040
0005e0  ebd80300  load.d r[18:19], 0(r7)
0005e4  97101100  or r1, r2, r1
0005e8  1f010fef  addli r2, r30, -2176
0005ec  00a00200  mfence { lm, gm }
0005f0  0ba7e810  add.ul r[15:16], r[18:19], r[15:16]
0005f4  ff202700  l_gm2lm r1, r2, 0(r[15:16])
0005f8  9f703200  addli r1, r4, 31
0005fc  00a00200  mfence { lm, gm }
000600  63414fe2  loadli.w r2,  -3804(r30)
000604  00a00000  mfence { lm }
000608  178c2000  and r24, r1, r2
00060c  4b224c00  ble.s r24, r4, 136
000610  1f018fe3  addli r2, r30, -3648
000614  9f101000  addli r1, zero, 9
000618  9f037fe2  addli r7, r30, -3784
00061c  6b570100  load.d r[15:16], 0(r2)
000620  97301702  sll.d r[2:3], r[15:16], r1
000624  6b578f00  load.d r[15:16], 8(r30)
000628  8b301718  sub.sl r[2:3], r[15:16], r[2:3]
00062c  6bd70300  load.d r[15:16], 0(r7)
000630  9f030fe3  addli r7, r30, -3712
000634  ebd80300  load.d r[18:19], 0(r7)
000638  e343efe1  loadli.w r7,  -3852(r30)
00063c  8bb0e040  min.sl r[2:3], r[2:3], r[15:16]
000640  9bb01000  slli r1, r1, 1
000644  0bb7e840  min.sl r[15:16], r[18:19], r[15:16]
000648  1fe17000  addli r2, r1, 62
00064c  1b371700  slli r14, r14, 1
000650  17017100  and r2, r2, r7
000654  0b111118  sub.s r2, r2, r1
000658  9f000ff7  addli r1, r30, -1152
00065c  8b93e010  add.s r7, r1, r14
000660  b7100100  beq r2, zero, 36
000664  9f000fef  addli r1, r30, -2176
000668  9f070000  addli r15, zero, 0
00066c  0b97e010  add.s r14, r1, r14
000670  8b10f710  add.s r1, r14, r15
000674  9f970700  addli r15, r15, 1
000678  93882704  setlt.u r17, r15, r2
00067c  73800000  store.b zero, 0(r1)
000680  bbcf08fe  bneq r17, zero, -16
000684  73909301  store.h r25, 0(r7)
000688  1f120200  addli r4, r4, 1
00068c  9fa30300  addli r7, r7, 2
000690  bf5f82ff  blt.s r4, r24, -12
000694  1f012000  addli r2, zero, 16
000698  ab02fcc2  lui r5, 798656
00069c  9f732000  addli r7, zero, 23
0006a0  00a00000  mfence { lm }
0006a4  bf7a8cfe  blt.s r24, r8, -324
0006a8  eb588f00  load.d r[18:19], 8(r30)
0006ac  e3002f00  loadli.w r1,  16(r30)
0006b0  1f070fef  addli r14, r30, -2176
0006b4  9f070ff7  addli r15, r30, -1152
0006b8  1f020000  addli r4, zero, 0
0006bc  db360000  j 436
0006c0  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0006c4  6a211122  vor.u.mz vr2{mr1}, r2, vr1
0006c8  ee3101c2  vsrl.s.mz vr3{mr1}, vr2, vr0
0006cc  6e3141c2  vsrl.s.mz vr2{mr1}, vr2, vr4
0006d0  ea313402  vand.s.mz vr3{mr1}, r8, vr3
0006d4  6a312402  vand.s.mz vr2{mr1}, r8, vr2
0006d8  96313002  vadd.s.mz vr3{mr1}, vr0, vr3
0006dc  16312202  vadd.s.mz vr2{mr1}, vr4, vr2
0006e0  661000c0  vabs.f vr0, vr0
0006e4  661202c0  vabs.f vr4, vr4
0006e8  92b13d02  vadd.s.mz vr3{mr1}, r27, vr3
0006ec  12b12d02  vadd.s.mz vr2{mr1}, r27, vr2
0006f0  72210e42  vlt.u.mz mr2{mr1}, r28, vr0
0006f4  ea313d02  vand.s.mz vr3{mr1}, r26, vr3
0006f8  ea322d02  vand.s.mz vr5{mr1}, r26, vr2
0006fc  ea211a34  vor.u.mh vr3{mr2}, r20, vr1
000700  72214e42  vlt.u.mz mr2{mr1}, r28, vr4
000704  ea221a34  vor.u.mh vr5{mr2}, r20, vr1
000708  12303002  vadd.s.mz vr0{mr1}, zero, vr3
00070c  1f000fe5  addli zero, r30, -3456
000710  46105002  vstore_mask16.mz vr5{mr1}, 0(zero)
000714  17200000  xor zero, zero, zero
000718  6e236362  vxor.u.mz vr6{mr1}, vr6, vr6
00071c  1f024200  addli r4, r4, 32
000720  1f078700  addli r14, r14, 64
000724  9f878700  addli r15, r15, 64
000728  1f008fe6  addli zero, r30, -3264
00072c  6aa16222  vor.u.mz vr2{mr1}, r5, vr6
000730  6a946422  vor.f.mz vr8{mr1}, r9, vr6
000734  ea946622  vor.f.mz vr9{mr1}, r13, vr6
000738  6a956522  vor.f.mz vr10{mr1}, r11, vr6
00073c  ea936a22  vor.f.mz vr7{mr1}, r21, vr6
000740  ea926922  vor.f.mz vr5{mr1}, r19, vr6
000744  c2100002  vload_mask16.mz vr1{mr1}, 0(zero)
000748  17200000  xor zero, zero, zero
00074c  1f008fe4  addli zero, r30, -3520
000750  46102002  vstore_mask16.mz vr2{mr1}, 0(zero)
000754  17200000  xor zero, zero, zero
000758  92357002  vadd.s.mz vr11{mr1}, zero, vr7
00075c  1e101002  vsub.f.mz.rn vr0{mr1}, vr0, vr1
000760  0a100502  vmul.f.mz.rn vr0{mr1}, r10, vr0
000764  9a900b02  vsub.f.mz.rn vr1{mr1}, r23, vr0
000768  72111842  vlt.f.mz mr2{mr1}, r16, vr1
00076c  6a202034  vor.u.mh vr0{mr2}, zero, vr2
000770  6a116b22  vor.f.mz vr2{mr1}, r22, vr6
000774  92110302  vadd.f.mz.rn vr3{mr1}, r6, vr0
000778  92903102  vadd.f.mz.rn vr1{mr1}, r3, vr3
00077c  1e121002  vsub.f.mz.rn vr4{mr1}, vr0, vr1
000780  12308002  vadd.s.mz vr0{mr1}, zero, vr8
000784  92309002  vadd.s.mz vr1{mr1}, zero, vr9
000788  22104602  vmac.f.mz.rn vr0{mr1}, r12, vr4
00078c  a6104002  vmac.f.mz.rn vr1{mr1}, vr0, vr4
000790  1230a002  vadd.s.mz vr0{mr1}, zero, vr10
000794  1f000fe4  addli zero, r30, -3584
000798  26904002  vmac.f.mz.rn vr0{mr1}, vr1, vr4
00079c  a6154002  vmac.f.mz.rn vr11{mr1}, vr0, vr4
0007a0  6aa06322  vor.u.mz vr0{mr1}, r7, vr6
0007a4  46100002  vstore_mask16.mz vr0{mr1}, 0(zero)
0007a8  17200000  xor zero, zero, zero
0007ac  ee3130a2  vsll.s.mz vr3{mr1}, vr0, vr3
0007b0  92305002  vadd.s.mz vr1{mr1}, zero, vr5
0007b4  1f000fe5  addli zero, r30, -3456
0007b8  42100002  vload_mask16.mz vr0{mr1}, 0(zero)
0007bc  17200000  xor zero, zero, zero
0007c0  1f008fe6  addli zero, r30, -3264
0007c4  a6904502  vmac.f.mz.rn vr1{mr1}, vr11, vr4
0007c8  c2150002  vload_mask16.mz vr11{mr1}, 0(zero)
0007cc  17200000  xor zero, zero, zero
0007d0  9e15b002  vsub.f.mz.rn vr11{mr1}, vr0, vr11
0007d4  12302002  vadd.s.mz vr0{mr1}, zero, vr2
0007d8  26904002  vmac.f.mz.rn vr0{mr1}, vr1, vr4
0007dc  92303b02  vadd.s.mz vr1{mr1}, r22, vr3
0007e0  0a12b502  vmul.f.mz.rn vr4{mr1}, r10, vr11
0007e4  8e111002  vmul.f.mz.rn vr3{mr1}, vr0, vr1
0007e8  1a904b02  vsub.f.mz.rn vr0{mr1}, r23, vr4
0007ec  ea216034  vor.u.mh vr3{mr2}, zero, vr6
0007f0  1f008fe4  addli zero, r30, -3520
0007f4  72110842  vlt.f.mz mr2{mr1}, r16, vr0
0007f8  42100002  vload_mask16.mz vr0{mr1}, 0(zero)
0007fc  17200000  xor zero, zero, zero
000800  6a220034  vor.u.mh vr4{mr2}, zero, vr0
000804  1f000fe4  addli zero, r30, -3584
000808  12104302  vadd.f.mz.rn vr0{mr1}, r6, vr4
00080c  92900102  vadd.f.mz.rn vr1{mr1}, r3, vr0
000810  9e101202  vsub.f.mz.rn vr1{mr1}, vr4, vr1
000814  42120002  vload_mask16.mz vr4{mr1}, 0(zero)
000818  17200000  xor zero, zero, zero
00081c  22141602  vmac.f.mz.rn vr8{mr1}, r12, vr1
000820  6e3002a2  vsll.s.mz vr0{mr1}, vr4, vr0
000824  a6141402  vmac.f.mz.rn vr9{mr1}, vr8, vr1
000828  12300b02  vadd.s.mz vr0{mr1}, r22, vr0
00082c  26951402  vmac.f.mz.rn vr10{mr1}, vr9, vr1
000830  a6131502  vmac.f.mz.rn vr7{mr1}, vr10, vr1
000834  a6921302  vmac.f.mz.rn vr5{mr1}, vr7, vr1
000838  26911202  vmac.f.mz.rn vr2{mr1}, vr5, vr1
00083c  0e100102  vmul.f.mz.rn vr0{mr1}, vr2, vr0
000840  6a206034  vor.u.mh vr0{mr2}, zero, vr6
000844  1f008fe5  addli zero, r30, -3392
000848  c2100002  vload_mask16.mz vr1{mr1}, 0(zero)
00084c  17200000  xor zero, zero, zero
000850  16900102  vadd.f.mz.rn vr0{mr1}, vr3, vr0
000854  96900002  vadd.f.mz.rn vr1{mr1}, vr1, vr0
000858  12301002  vadd.s.mz vr0{mr1}, zero, vr1
00085c  1f000fe6  addli zero, r30, -3328
000860  42130002  vload_mask16.mz vr6{mr1}, 0(zero)
000864  17200000  xor zero, zero, zero
000868  3f208201  blt.s r4, r24, 8
00086c  5b9fffff  j -776
000870  1f008fe5  addli zero, r30, -3392
000874  c2000702  vload.mz vr1{mr1}, 0(r14)
000878  46100002  vstore_mask16.mz vr0{mr1}, 0(zero)
00087c  42800702  vload.mz vr0{mr1}, 0(r15)
000880  17200000  xor zero, zero, zero
000884  6e3103a2  vsll.s.mz vr2{mr1}, vr6, vr0
000888  ea310d02  vand.s.mz vr3{mr1}, r26, vr0
00088c  6e3013a2  vsll.s.mz vr0{mr1}, vr6, vr1
000890  ea301d02  vand.s.mz vr1{mr1}, r26, vr1
000894  16100102  vadd.f.mz.rn vr0{mr1}, vr2, vr0
000898  16921102  vadd.f.mz.rn vr4{mr1}, vr3, vr1
00089c  b79800fe  beq r1, zero, -476
0008a0  1f000fe5  addli zero, r30, -3456
0008a4  46104002  vstore_mask16.mz vr4{mr1}, 0(zero)
0008a8  dbcdffff  j -404
0008ac  630c1fe2  loadli.w r24,  -3832(r30)
0008b0  9f00efe0  addli r1, r30, -3984
0008b4  1f010000  addli r2, zero, 0
0008b8  9f038000  addli r7, zero, 64
0008bc  6bd20000  load.d r[5:6], 0(r1)
0008c0  9f002fe2  addli r1, r30, -3824
0008c4  6bd70000  load.d r[15:16], 0(r1)
0008c8  9f00dfe1  addli r1, r30, -3864
0008cc  0b22e210  add.ul r[5:6], r[5:6], r[15:16]
0008d0  73b04000  store.d r[5:6], 0(r1)
0008d4  9f020fff  addli r5, r30, -128
0008d8  1f020000  addli r4, zero, 0
0008dc  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
0008e0  00a00000  mfence { lm }
0008e4  8b902210  add.s r1, r5, r2
0008e8  1f410100  addli r2, r2, 4
0008ec  e3800000  loadli.w r1,  0(r1)
0008f0  0b621210  add.f.rn r4, r4, r1
0008f4  bb4f71fe  bneq r2, r7, -16
0008f8  e340cfe1  loadli.w r1,  -3868(r30)
0008fc  3be600fc  bneq r1, zero, -1640
000900  8f004b18  div.f.rn r1, r22, r4
000904  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
000908  1f018fe6  addli r2, r30, -3264
00090c  00a00000  mfence { lm }
000910  1f022fe2  addli r4, r30, -3824
000914  6a103c22  vor.f.mz vr0{mr1}, r24, vr3
000918  73301201  store.d r[18:19], 0(r4)
00091c  1f023fe2  addli r4, r30, -3816
000920  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000924  6a903022  vor.f.mz vr0{mr1}, r1, vr3
000928  9f000fe3  addli r1, r30, -3712
00092c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000930  b3000028  zext_int2long r[2:3], zero
000934  27870000  addli.d r[15:16], r[2:3], 0
000938  73301200  store.d r[2:3], 0(r4)
00093c  db0d0000  j 108
000940  1f02dfe1  addli r4, r30, -3864
000944  9f03ffe1  addli r7, r30, -3848
000948  eb588f00  load.d r[18:19], 8(r30)
00094c  eb500200  load.d r[2:3], 0(r4)
000950  6bd20300  load.d r[5:6], 0(r7)
000954  e3430fe2  loadli.w r7,  -3836(r30)
000958  8ba04010  add.ul r[2:3], r[2:3], r[5:6]
00095c  1f021fe2  addli r4, r30, -3832
000960  6b570200  load.d r[15:16], 0(r4)
000964  2b0200f0  lui r4, 983040
000968  00a00000  mfence { lm }
00096c  17924300  or r4, r7, r4
000970  9f030fe7  addli r7, r30, -3200
000974  27070704  addli.d r[15:16], r[15:16], 512
000978  7fb27000  s_lm2gm r4, r7, 0(r[2:3])
00097c  1f023fe2  addli r4, r30, -3816
000980  00a00200  mfence { lm, gm }
000984  93321705  setlt.sl r5, r[15:16], r[18:19]
000988  eb500200  load.d r[2:3], 0(r4)
00098c  a7900000  addli.d r[2:3], r[2:3], 1
000990  73301200  store.d r[2:3], 0(r4)
000994  1f022fe2  addli r4, r30, -3824
000998  eb500200  load.d r[2:3], 0(r4)
00099c  a78000fc  addli.d r[2:3], r[2:3], 32256
0009a0  73301200  store.d r[2:3], 0(r4)
0009a4  b7c302fc  beq r5, zero, -1808
0009a8  1f021fe2  addli r4, r30, -3832
0009ac  9f037fe2  addli r7, r30, -3784
0009b0  8bb0e818  sub.sl r[2:3], r[18:19], r[15:16]
0009b4  973b8702  sll.d r[24:25], r[15:16], r8
0009b8  7330e200  store.d r[15:16], 0(r4)
0009bc  6bd20300  load.d r[5:6], 0(r7)
0009c0  0bb74040  min.sl r[15:16], r[2:3], r[5:6]
0009c4  1f016fe2  addli r2, r30, -3792
0009c8  ab0000f0  lui r1, 983040
0009cc  6b520100  load.d r[5:6], 0(r2)
0009d0  9b331700  slli r7, r14, 1
0009d4  1f010ff7  addli r2, r30, -1152
0009d8  97901300  or r1, r7, r1
0009dc  67407fe2  storeli.w r7, -3836(r30)
0009e0  8b287211  add.ul r[18:19], r[5:6], r[24:25]
0009e4  ffa02800  l_gm2lm r1, r2, 0(r[18:19])
0009e8  1f015fe2  addli r2, r30, -3800
0009ec  ab0000f0  lui r1, 983040
0009f0  6b520100  load.d r[5:6], 0(r2)
0009f4  1f01ffe1  addli r2, r30, -3848
0009f8  97901300  or r1, r7, r1
0009fc  73307101  store.d r[24:25], 0(r2)
000a00  1f010fef  addli r2, r30, -2176
000a04  8b287211  add.ul r[18:19], r[5:6], r[24:25]
000a08  00a00200  mfence { lm, gm }
000a0c  ab0b0080  lui r23, 524288
000a10  ffa02800  l_gm2lm r1, r2, 0(r[18:19])
000a14  9f703700  addli r1, r14, 31
000a18  00a00200  mfence { lm, gm }
000a1c  63414fe2  loadli.w r2,  -3804(r30)
000a20  00a00000  mfence { lm }
000a24  178c2000  and r24, r1, r2
000a28  4b22ec00  ble.s r24, r14, 136
000a2c  1f013fe2  addli r2, r30, -3816
000a30  9f101000  addli r1, zero, 9
000a34  9f037fe2  addli r7, r30, -3784
000a38  6b520100  load.d r[5:6], 0(r2)
000a3c  97301202  sll.d r[2:3], r[5:6], r1
000a40  6b528f00  load.d r[5:6], 8(r30)
000a44  8b301218  sub.sl r[2:3], r[5:6], r[2:3]
000a48  6bd20300  load.d r[5:6], 0(r7)
000a4c  9f032fe2  addli r7, r30, -3824
000a50  ebd80300  load.d r[18:19], 0(r7)
000a54  8bb04040  min.sl r[2:3], r[2:3], r[5:6]
000a58  9bb01000  slli r1, r1, 1
000a5c  8bb84840  min.sl r[18:19], r[18:19], r[5:6]
000a60  6342efe1  loadli.w r4,  -3852(r30)
000a64  1fe17000  addli r2, r1, 62
000a68  9bb81800  slli r17, r17, 1
000a6c  17014100  and r2, r2, r4
000a70  0b111118  sub.s r2, r2, r1
000a74  9f000ff7  addli r1, r30, -1152
000a78  8b931011  add.s r7, r1, r17
000a7c  b7100100  beq r2, zero, 36
000a80  9f000fef  addli r1, r30, -2176
000a84  1f090000  addli r18, zero, 0
000a88  8b981011  add.s r17, r1, r17
000a8c  8b902811  add.s r1, r17, r18
000a90  1f190900  addli r18, r18, 1
000a94  13022904  setlt.u r4, r18, r2
000a98  73800000  store.b zero, 0(r1)
000a9c  bb4f02fe  bneq r4, zero, -16
000aa0  73909301  store.h r25, 0(r7)
000aa4  1f170700  addli r14, r14, 1
000aa8  9fa30300  addli r7, r7, 2
000aac  bf5f87ff  blt.s r14, r24, -12
000ab0  00a00000  mfence { lm }
000ab4  e3002f00  loadli.w r1,  16(r30)
000ab8  1f012000  addli r2, zero, 16
000abc  2b02fcc2  lui r4, 798656
000ac0  9f722000  addli r5, zero, 23
000ac4  bf798cfe  blt.s r24, r8, -388
000ac8  1f070fe7  addli r14, r30, -3200
000acc  9f070fef  addli r15, r30, -2176
000ad0  9f080ff7  addli r17, r30, -1152
000ad4  1f090000  addli r18, zero, 0
000ad8  db3c0000  j 484
000adc  eeb002c2  vsrl.s.mz vr1{mr1}, vr5, vr0
000ae0  6eb142c2  vsrl.s.mz vr2{mr1}, vr5, vr4
000ae4  9f030fe5  addli r7, r30, -3456
000ae8  ea301402  vand.s.mz vr1{mr1}, r8, vr1
000aec  6a312402  vand.s.mz vr2{mr1}, r8, vr2
000af0  96301002  vadd.s.mz vr1{mr1}, vr0, vr1
000af4  16312202  vadd.s.mz vr2{mr1}, vr4, vr2
000af8  661000c0  vabs.f vr0, vr0
000afc  661202c0  vabs.f vr4, vr4
000b00  92b01d02  vadd.s.mz vr1{mr1}, r27, vr1
000b04  12b12d02  vadd.s.mz vr2{mr1}, r27, vr2
000b08  72210e42  vlt.u.mz mr2{mr1}, r28, vr0
000b0c  ea301d02  vand.s.mz vr1{mr1}, r26, vr1
000b10  6a312d02  vand.s.mz vr2{mr1}, r26, vr2
000b14  ea203a34  vor.u.mh vr1{mr2}, r20, vr3
000b18  72214e42  vlt.u.mz mr2{mr1}, r28, vr4
000b1c  6a213a34  vor.u.mh vr2{mr2}, r20, vr3
000b20  12301002  vadd.s.mz vr0{mr1}, zero, vr1
000b24  46902302  vstore_mask16.mz vr2{mr1}, 0(r7)
000b28  9f038fe6  addli r7, r30, -3264
000b2c  6a213222  vor.u.mz vr2{mr1}, r4, vr3
000b30  ea943422  vor.f.mz vr9{mr1}, r9, vr3
000b34  6a953622  vor.f.mz vr10{mr1}, r13, vr3
000b38  ea953522  vor.f.mz vr11{mr1}, r11, vr3
000b3c  ea933a22  vor.f.mz vr7{mr1}, r21, vr3
000b40  6a933922  vor.f.mz vr6{mr1}, r19, vr3
000b44  6a143b22  vor.f.mz vr8{mr1}, r22, vr3
000b48  1f094900  addli r18, r18, 32
000b4c  9f878700  addli r15, r15, 64
000b50  9f888800  addli r17, r17, 64
000b54  c2900302  vload_mask16.mz vr1{mr1}, 0(r7)
000b58  9f038fe4  addli r7, r30, -3520
000b5c  46902302  vstore_mask16.mz vr2{mr1}, 0(r7)
000b60  9f030fe4  addli r7, r30, -3584
000b64  1232b002  vadd.s.mz vr4{mr1}, zero, vr11
000b68  1e101002  vsub.f.mz.rn vr0{mr1}, vr0, vr1
000b6c  0a100502  vmul.f.mz.rn vr0{mr1}, r10, vr0
000b70  9a900b02  vsub.f.mz.rn vr1{mr1}, r23, vr0
000b74  72111842  vlt.f.mz mr2{mr1}, r16, vr1
000b78  6a202034  vor.u.mh vr0{mr2}, zero, vr2
000b7c  1231a002  vadd.s.mz vr2{mr1}, zero, vr10
000b80  92100302  vadd.f.mz.rn vr1{mr1}, r6, vr0
000b84  46901302  vstore_mask16.mz vr1{mr1}, 0(r7)
000b88  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
000b8c  9f038fe3  addli r7, r30, -3648
000b90  9e121002  vsub.f.mz.rn vr5{mr1}, vr0, vr1
000b94  12309002  vadd.s.mz vr0{mr1}, zero, vr9
000b98  92307002  vadd.s.mz vr1{mr1}, zero, vr7
000b9c  22105602  vmac.f.mz.rn vr0{mr1}, r12, vr5
000ba0  26115002  vmac.f.mz.rn vr2{mr1}, vr0, vr5
000ba4  12306002  vadd.s.mz vr0{mr1}, zero, vr6
000ba8  26125102  vmac.f.mz.rn vr4{mr1}, vr2, vr5
000bac  6aa13222  vor.u.mz vr2{mr1}, r5, vr3
000bb0  a6105202  vmac.f.mz.rn vr1{mr1}, vr4, vr5
000bb4  46902302  vstore_mask16.mz vr2{mr1}, 0(r7)
000bb8  9f030fe4  addli r7, r30, -3584
000bbc  26905002  vmac.f.mz.rn vr0{mr1}, vr1, vr5
000bc0  c2900302  vload_mask16.mz vr1{mr1}, 0(r7)
000bc4  9f030fe5  addli r7, r30, -3456
000bc8  6e3211a2  vsll.s.mz vr4{mr1}, vr2, vr1
000bcc  c2900302  vload_mask16.mz vr1{mr1}, 0(r7)
000bd0  9f038fe6  addli r7, r30, -3264
000bd4  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
000bd8  9f038fe4  addli r7, r30, -3520
000bdc  9e902002  vsub.f.mz.rn vr1{mr1}, vr1, vr2
000be0  12318002  vadd.s.mz vr2{mr1}, zero, vr8
000be4  26115002  vmac.f.mz.rn vr2{mr1}, vr0, vr5
000be8  12304b02  vadd.s.mz vr0{mr1}, r22, vr4
000bec  8a101502  vmul.f.mz.rn vr1{mr1}, r10, vr1
000bf0  8e120102  vmul.f.mz.rn vr5{mr1}, vr2, vr0
000bf4  1a901b02  vsub.f.mz.rn vr0{mr1}, r23, vr1
000bf8  ea223034  vor.u.mh vr5{mr2}, zero, vr3
000bfc  72110842  vlt.f.mz mr2{mr1}, r16, vr0
000c00  42900302  vload_mask16.mz vr0{mr1}, 0(r7)
000c04  9f038fe3  addli r7, r30, -3648
000c08  ea200034  vor.u.mh vr1{mr2}, zero, vr0
000c0c  12101302  vadd.f.mz.rn vr0{mr1}, r6, vr1
000c10  12910102  vadd.f.mz.rn vr2{mr1}, r3, vr0
000c14  9e902002  vsub.f.mz.rn vr1{mr1}, vr1, vr2
000c18  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
000c1c  9f030fe3  addli r7, r30, -3712
000c20  42920302  vload_mask16.mz vr4{mr1}, 0(r7)
000c24  9f038fe5  addli r7, r30, -3392
000c28  a2141602  vmac.f.mz.rn vr9{mr1}, r12, vr1
000c2c  6e3001a2  vsll.s.mz vr0{mr1}, vr2, vr0
000c30  26951402  vmac.f.mz.rn vr10{mr1}, vr9, vr1
000c34  12300b02  vadd.s.mz vr0{mr1}, r22, vr0
000c38  a6151502  vmac.f.mz.rn vr11{mr1}, vr10, vr1
000c3c  a6931502  vmac.f.mz.rn vr7{mr1}, vr11, vr1
000c40  26931302  vmac.f.mz.rn vr6{mr1}, vr7, vr1
000c44  26141302  vmac.f.mz.rn vr8{mr1}, vr6, vr1
000c48  8e105202  vmul.f.mz.rn vr1{mr1}, vr4, vr5
000c4c  0e100402  vmul.f.mz.rn vr0{mr1}, vr8, vr0
000c50  6a203034  vor.u.mh vr0{mr2}, zero, vr3
000c54  c2920302  vload_mask16.mz vr5{mr1}, 0(r7)
000c58  9f030fe6  addli r7, r30, -3328
000c5c  0e100202  vmul.f.mz.rn vr0{mr1}, vr4, vr0
000c60  6eb112c2  vsrl.s.mz vr2{mr1}, vr5, vr1
000c64  6eb202c2  vsrl.s.mz vr4{mr1}, vr5, vr0
000c68  6a312402  vand.s.mz vr2{mr1}, r8, vr2
000c6c  6a324402  vand.s.mz vr4{mr1}, r8, vr4
000c70  16b12002  vadd.s.mz vr2{mr1}, vr1, vr2
000c74  e69000c0  vabs.f vr1, vr1
000c78  16324002  vadd.s.mz vr4{mr1}, vr0, vr4
000c7c  661000c0  vabs.f vr0, vr0
000c80  12b12d02  vadd.s.mz vr2{mr1}, r27, vr2
000c84  72211e42  vlt.u.mz mr2{mr1}, r28, vr1
000c88  12b24d02  vadd.s.mz vr4{mr1}, r27, vr4
000c8c  6a312d02  vand.s.mz vr2{mr1}, r26, vr2
000c90  ea304d02  vand.s.mz vr1{mr1}, r26, vr4
000c94  6a213a34  vor.u.mh vr2{mr2}, r20, vr3
000c98  72210e42  vlt.u.mz mr2{mr1}, r28, vr0
000c9c  ea203a34  vor.u.mh vr1{mr2}, r20, vr3
000ca0  42930302  vload_mask16.mz vr6{mr1}, 0(r7)
000ca4  6eb122c2  vsrl.s.mz vr2{mr1}, vr5, vr2
000ca8  6eb02022  vor.s.mz vr0{mr1}, vr1, vr2
000cac  46000702  vstore.mz vr0{mr1}, 0(r14)
000cb0  1f078700  addli r14, r14, 64
000cb4  3f208901  blt.s r18, r24, 8
000cb8  5b91ffff  j -888
000cbc  42800802  vload.mz vr0{mr1}, 0(r17)
000cc0  c2800702  vload.mz vr1{mr1}, 0(r15)
000cc4  ea223122  vor.u.mz vr5{mr1}, r2, vr3
000cc8  9f038fe5  addli r7, r30, -3392
000ccc  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
000cd0  6eb102a2  vsll.s.mz vr2{mr1}, vr5, vr0
000cd4  6a320d02  vand.s.mz vr4{mr1}, r26, vr0
000cd8  6eb012a2  vsll.s.mz vr0{mr1}, vr5, vr1
000cdc  ea301d02  vand.s.mz vr1{mr1}, r26, vr1
000ce0  16100102  vadd.f.mz.rn vr0{mr1}, vr2, vr0
000ce4  16121202  vadd.f.mz.rn vr4{mr1}, vr4, vr1
000ce8  b7d700fe  beq r1, zero, -524
000cec  9f030fe5  addli r7, r30, -3456
000cf0  46904302  vstore_mask16.mz vr4{mr1}, 0(r7)
000cf4  dbc6ffff  j -460
000cf8  9f0e8fe0  addli sp, r30, -4032
000cfc  e38f2e1f  loadli.w r31,  3984(sp)
000d00  63cf2e1f  loadli.w r30,  3988(sp)
000d04  638e3e1f  loadli.w r28,  3992(sp)
000d08  e3cd3e1f  loadli.w r27,  3996(sp)
000d0c  638d4e1f  loadli.w r26,  4000(sp)
000d10  e3cc4e1f  loadli.w r25,  4004(sp)
000d14  638c5e1f  loadli.w r24,  4008(sp)
000d18  e3cb5e1f  loadli.w r23,  4012(sp)
000d1c  638b6e1f  loadli.w r22,  4016(sp)
000d20  e3ca6e1f  loadli.w r21,  4020(sp)
000d24  638a7e1f  loadli.w r20,  4024(sp)
000d28  e3c97e1f  loadli.w r19,  4028(sp)
000d2c  9f8e8e1f  addli sp, sp, 4032
000d30  5f800f00  jr r31, 0
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
000f6c  00100000  exit
000f70  00100000  exit
