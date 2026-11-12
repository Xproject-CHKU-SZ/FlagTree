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
000164  9f8e8ee1  addli sp, sp, -3904
000168  67c1ee1f  storeli.w r30, 3860(sp)
00016c  1f8f8e1e  addli r30, sp, 3904
000170  e7c33e1f  storeli.w r19, 3900(sp)
000174  e7834e1f  storeli.w r20, 3896(sp)
000178  67c35e1f  storeli.w r21, 3892(sp)
00017c  67836e1f  storeli.w r22, 3888(sp)
000180  e7c27e1f  storeli.w r23, 3884(sp)
000184  e7828e1f  storeli.w r24, 3880(sp)
000188  67c29e1f  storeli.w r25, 3876(sp)
00018c  6782ae1f  storeli.w r26, 3872(sp)
000190  e7c1be1f  storeli.w r27, 3868(sp)
000194  e781ce1f  storeli.w r28, 3864(sp)
000198  6781fe1f  storeli.w r31, 3856(sp)
00019c  9f00efe1  addli r1, r30, -3856
0001a0  e74f9fe0  storeli.w r9, -3844(r30)
0001a4  73b06000  store.d r[7:8], 0(r1)
0001a8  9f00dfe3  addli r1, r30, -3608
0001ac  73b04000  store.d r[5:6], 0(r1)
0001b0  80300002  core_id r1
0001b4  6b520f00  load.d r[5:6], 0(r30)
0001b8  0b949050  fmac.s r8, r1, r9
0001bc  b3160428  sext_int2long r[14:15], r8
0001c0  9330d206  setle.sl r1, r[5:6], r[14:15]
0001c4  1f02dfe1  addli r4, r30, -3864
0001c8  73302200  store.d r[3:4], 0(r4)
0001cc  bb870004  bneq r1, zero, 2528
0001d0  6b518f00  load.d r[3:4], 8(r30)
0001d4  9f008fe2  addli r1, r30, -3776
0001d8  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0001dc  2b52633d  lui r4, 251445
0001e0  ab72313f  lui r5, 258839
0001e4  630d2f00  loadli.w r26,  16(r30)
0001e8  1f1e0000  addli r28, zero, 1
0001ec  ab050080  lui r11, 524288
0001f0  2b0a404b  lui r20, 308224
0001f4  2b0540cb  lui r10, 832512
0001f8  9f7d2000  addli r27, zero, 23
0001fc  2b08803f  lui r16, 260096
000200  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000204  9f000fe2  addli r1, r30, -3840
000208  1b968221  ori r12, r5, 536
00020c  23711100  setlti.d r2, r[3:4], 1
000210  9f010004  addli r3, zero, 512
000214  e74a2fe2  storeli.w r2, -3668(r30)
000218  2b0180ff  lui r2, 1046528
00021c  6a100122  vor.f.mz vr0{mr1}, r2, vr0
000220  33810128  zext_int2long r[3:4], r3
000224  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000228  9f00ffe3  addli r1, r30, -3592
00022c  73b02000  store.d r[3:4], 0(r1)
000230  2bf1ffff  lui r2, 1048575
000234  aba1b83f  lui r3, 261002
000238  ab00fc42  lui r1, 274368
00023c  1b1101fe  ori r2, r2, 4064
000240  9b9cb1a3  ori r25, r3, 2619
000244  ab812139  lui r3, 234008
000248  674e2fe2  storeli.w r2, -3612(r30)
00024c  2bf10000  lui r2, 15
000250  1b939148  ori r6, r3, 1161
000254  1b1c01c0  ori r24, r2, 3072
000258  2bc1ae3a  lui r2, 240364
00025c  9b13f13f  ori r7, r2, 1023
000260  2b911d3c  lui r2, 246233
000264  9b11b155  ori r3, r2, 1371
000268  1b117284  ori r2, r4, 2119
00026c  2bf2753e  lui r4, 255839
000270  9b1402df  ori r9, r4, 3568
000274  db050000  j 44
000278  e342ffe1  loadli.w r5,  -3844(r30)
00027c  00520102  load_param_i r4, 2
000280  1f044fe3  addli r8, r30, -3680
000284  eb560400  load.d r[14:15], 0(r8)
000288  0b125220  mul.s r4, r4, r5
00028c  33120228  sext_int2long r[5:6], r4
000290  8ba64610  add.ul r[14:15], r[14:15], r[5:6]
000294  6b520f00  load.d r[5:6], 0(r30)
000298  13b24604  setlt.sl r4, r[14:15], r[5:6]
00029c  37440204  beq r4, zero, 2320
0002a0  1f024fe3  addli r4, r30, -3680
0002a4  1f04dfe1  addli r8, r30, -3864
0002a8  7330d200  store.d r[14:15], 0(r4)
0002ac  6b528f00  load.d r[5:6], 8(r30)
0002b0  a7080200  addli.d r[18:19], r[5:6], 0
0002b4  0bb21621  mul.sl r[5:6], r[14:15], r[18:19]
0002b8  27870800  addli.d r[15:16], r[18:19], 0
0002bc  9738c203  sll.d r[18:19], r[5:6], r28
0002c0  6b520400  load.d r[5:6], 0(r8)
0002c4  1f04afe3  addli r8, r30, -3632
0002c8  73301401  store.d r[18:19], 0(r8)
0002cc  1f04efe3  addli r8, r30, -3600
0002d0  0b221211  add.ul r[5:6], r[5:6], r[18:19]
0002d4  73304400  store.d r[5:6], 0(r8)
0002d8  2bf2ffff  lui r4, 1048575
0002dc  1b1202fc  ori r4, r4, 4032
0002e0  e74b4fe2  storeli.w r4, -3652(r30)
0002e4  1f020fe2  addli r4, r30, -3840
0002e8  42110202  vload_mask16.mz vr2{mr1}, 0(r4)
0002ec  63425fe3  loadli.w r4,  -3668(r30)
0002f0  3b470200  bneq r4, zero, 464
0002f4  1f020fe6  addli r4, r30, -3328
0002f8  00a00000  mfence { lm }
0002fc  b3080028  zext_int2long r[18:19], zero
000300  7330e200  store.d r[15:16], 0(r4)
000304  1f020fe2  addli r4, r30, -3840
000308  42110202  vload_mask16.mz vr2{mr1}, 0(r4)
00030c  1f028fe6  addli r4, r30, -3264
000310  73301201  store.d r[18:19], 0(r4)
000314  5b070000  j 56
000318  6b578f00  load.d r[15:16], 8(r30)
00031c  9f028fe6  addli r5, r30, -3264
000320  00a00000  mfence { lm }
000324  a7880804  addli.d r[18:19], r[18:19], 512
000328  ebda0200  load.d r[22:23], 0(r5)
00032c  13b2e804  setlt.sl r4, r[18:19], r[15:16]
000330  a79a0a00  addli.d r[22:23], r[22:23], 1
000334  73b05201  store.d r[22:23], 0(r5)
000338  9f020fe6  addli r5, r30, -3328
00033c  ebda0200  load.d r[22:23], 0(r5)
000340  a78a0afc  addli.d r[22:23], r[22:23], 32256
000344  73b05201  store.d r[22:23], 0(r5)
000348  b7650200  beq r4, zero, 376
00034c  1f04ffe3  addli r8, r30, -3592
000350  8b3a1719  sub.sl r[22:23], r[15:16], r[18:19]
000354  9f09efe3  addli r19, r30, -3600
000358  17b2c803  sll.d r[5:6], r[18:19], r28
00035c  eb560400  load.d r[14:15], 0(r8)
000360  2b0400f0  lui r8, 983040
000364  8bbada40  min.sl r[22:23], r[22:23], r[14:15]
000368  6bd70900  load.d r[15:16], 0(r19)
00036c  9f090ff7  addli r19, r30, -1152
000370  9bb61a00  slli r13, r21, 1
000374  0b274710  add.ul r[15:16], r[15:16], r[5:6]
000378  17948600  or r8, r13, r8
00037c  7f243701  l_gm2lm r8, r19, 0(r[15:16])
000380  9f09dfe3  addli r19, r30, -3608
000384  2b0400f0  lui r8, 983040
000388  6bd70900  load.d r[15:16], 0(r19)
00038c  17948600  or r8, r13, r8
000390  9f060fef  addli r13, r30, -2176
000394  00a00200  mfence { lm, gm }
000398  0b224710  add.ul r[5:6], r[15:16], r[5:6]
00039c  7f24d200  l_gm2lm r8, r13, 0(r[5:6])
0003a0  1ff23a00  addli r4, r21, 31
0003a4  00a00200  mfence { lm, gm }
0003a8  e342cfe3  loadli.w r5,  -3612(r30)
0003ac  00a00000  mfence { lm }
0003b0  17045200  and r8, r4, r5
0003b4  4b725401  ble.s r8, r21, 156
0003b8  9f028fe6  addli r5, r30, -3264
0003bc  1f028fe5  addli r4, r30, -3392
0003c0  9f07ffe3  addli r15, r30, -3592
0003c4  ebd60200  load.d r[14:15], 0(r5)
0003c8  73301201  store.d r[18:19], 0(r4)
0003cc  1f121000  addli r4, zero, 9
0003d0  17b24602  sll.d r[5:6], r[14:15], r4
0003d4  eb568f00  load.d r[14:15], 8(r30)
0003d8  0bb24618  sub.sl r[5:6], r[14:15], r[5:6]
0003dc  ebd60700  load.d r[14:15], 0(r15)
0003e0  9f070fe6  addli r15, r30, -3328
0003e4  ebd80700  load.d r[18:19], 0(r15)
0003e8  e3477fe3  loadli.w r15,  -3652(r30)
0003ec  0b32d240  min.sl r[5:6], r[5:6], r[14:15]
0003f0  1b321200  slli r4, r4, 1
0003f4  8bb6d840  min.sl r[14:15], r[18:19], r[14:15]
0003f8  9f627200  addli r5, r4, 62
0003fc  9bbb1600  slli r23, r13, 1
000400  9782f200  and r5, r5, r15
000404  8b994218  sub.s r19, r5, r4
000408  1f020ff7  addli r4, r30, -1152
00040c  8b167211  add.s r13, r4, r23
000410  b7a00900  beq r19, zero, 40
000414  1f020fef  addli r4, r30, -2176
000418  1f0e0000  addli r28, zero, 0
00041c  8b1b7211  add.s r23, r4, r23
000420  0b92cb11  add.s r4, r23, r28
000424  1f1e0e00  addli r28, r28, 1
000428  93023e05  setlt.u r5, r28, r19
00042c  73000200  store.b zero, 0(r4)
000430  bbcf02fe  bneq r5, zero, -16
000434  1f1e0000  addli r28, zero, 1
000438  1f028fe5  addli r4, r30, -3392
00043c  eb580200  load.d r[18:19], 0(r4)
000440  73908601  store.h r24, 0(r13)
000444  9f9a0a00  addli r21, r21, 1
000448  9fa60600  addli r13, r13, 2
00044c  bfdf8afe  blt.s r21, r8, -12
000450  00a00000  mfence { lm }
000454  3f1bc4ff  blt.s r8, r28, -316
000458  6b578f00  load.d r[15:16], 8(r30)
00045c  9f060fef  addli r13, r30, -2176
000460  9f090ff7  addli r19, r30, -1152
000464  9f0a0000  addli r21, zero, 0
000468  5b040000  j 32
00046c  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000470  9f8a4a00  addli r21, r21, 32
000474  9f868600  addli r13, r13, 64
000478  9f898900  addli r19, r19, 64
00047c  36110102  vmax.f.mz vr2{mr1}, vr2, vr0
000480  3fa08a00  blt.s r21, r8, 8
000484  5bd3ffff  j -360
000488  42800902  vload.mz vr0{mr1}, 0(r19)
00048c  c2800602  vload.mz vr1{mr1}, 0(r13)
000490  86310000  vfp162float_l.rn vr3, vr0
000494  06720000  vfp162float_h.rn vr4, vr0
000498  06b00000  vfp162float_l.rn vr0, vr1
00049c  86f00000  vfp162float_h.rn vr1, vr1
0004a0  16900102  vadd.f.mz.rn vr0{mr1}, vr3, vr0
0004a4  96101202  vadd.f.mz.rn vr1{mr1}, vr4, vr1
0004a8  3b1f0dfe  bneq r26, zero, -60
0004ac  86d00000  vfloat2fp16_h.rn vr1, vr1
0004b0  86100000  vfloat2fp16_l.rn vr1, vr0
0004b4  06b00000  vfp162float_l.rn vr0, vr1
0004b8  86f00000  vfp162float_h.rn vr1, vr1
0004bc  5bf6ffff  j -80
0004c0  1f028fe2  addli r4, r30, -3776
0004c4  fa180160  vrmax.f r17, vr2
0004c8  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
0004cc  63425fe3  loadli.w r4,  -3668(r30)
0004d0  3b4c0200  bneq r4, zero, 784
0004d4  1f028fe2  addli r4, r30, -3776
0004d8  e74c1fe3  storeli.w r17, -3636(r30)
0004dc  b30a0028  zext_int2long r[22:23], zero
0004e0  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
0004e4  1f028fe6  addli r4, r30, -3264
0004e8  00a00000  mfence { lm }
0004ec  ea900822  vor.f.mz vr1{mr1}, r17, vr0
0004f0  46101202  vstore_mask16.mz vr1{mr1}, 0(r4)
0004f4  1f02bfe3  addli r4, r30, -3624
0004f8  7330e200  store.d r[15:16], 0(r4)
0004fc  1f020fe4  addli r4, r30, -3584
000500  73305201  store.d r[22:23], 0(r4)
000504  5b070000  j 56
000508  6b578f00  load.d r[15:16], 8(r30)
00050c  9f020fe4  addli r5, r30, -3584
000510  00a00000  mfence { lm }
000514  a78a0a04  addli.d r[22:23], r[22:23], 512
000518  ebd80200  load.d r[18:19], 0(r5)
00051c  13b2ea04  setlt.sl r4, r[22:23], r[15:16]
000520  a7980800  addli.d r[18:19], r[18:19], 1
000524  73b01201  store.d r[18:19], 0(r5)
000528  9f02bfe3  addli r5, r30, -3624
00052c  ebd80200  load.d r[18:19], 0(r5)
000530  a78808fc  addli.d r[18:19], r[18:19], 32256
000534  73b01201  store.d r[18:19], 0(r5)
000538  b71a0200  beq r4, zero, 676
00053c  1f04ffe3  addli r8, r30, -3592
000540  8b385719  sub.sl r[18:19], r[15:16], r[22:23]
000544  17b2ca03  sll.d r[5:6], r[22:23], r28
000548  eb560400  load.d r[14:15], 0(r8)
00054c  2b0400f0  lui r8, 983040
000550  0bb9d840  min.sl r[19:20], r[18:19], r[14:15]
000554  9f08efe3  addli r17, r30, -3600
000558  6bd70800  load.d r[15:16], 0(r17)
00055c  9b361900  slli r13, r18, 1
000560  9f080ff7  addli r17, r30, -1152
000564  17948600  or r8, r13, r8
000568  0b274710  add.ul r[15:16], r[15:16], r[5:6]
00056c  7f241701  l_gm2lm r8, r17, 0(r[15:16])
000570  9f08dfe3  addli r17, r30, -3608
000574  2b0400f0  lui r8, 983040
000578  6bd70800  load.d r[15:16], 0(r17)
00057c  17948600  or r8, r13, r8
000580  9f060fef  addli r13, r30, -2176
000584  00a00200  mfence { lm, gm }
000588  0b224710  add.ul r[5:6], r[15:16], r[5:6]
00058c  7f24d200  l_gm2lm r8, r13, 0(r[5:6])
000590  1f723900  addli r4, r18, 31
000594  00a00200  mfence { lm, gm }
000598  e342cfe3  loadli.w r5,  -3612(r30)
00059c  00a00000  mfence { lm }
0005a0  97085200  and r17, r4, r5
0005a4  cb822801  ble.s r17, r18, 160
0005a8  9f020fe4  addli r5, r30, -3584
0005ac  00a00000  mfence { lm }
0005b0  1f020fe6  addli r4, r30, -3328
0005b4  1f04ffe3  addli r8, r30, -3592
0005b8  ebd60200  load.d r[14:15], 0(r5)
0005bc  73305201  store.d r[22:23], 0(r4)
0005c0  1f121000  addli r4, zero, 9
0005c4  17b24602  sll.d r[5:6], r[14:15], r4
0005c8  eb568f00  load.d r[14:15], 8(r30)
0005cc  0bb24618  sub.sl r[5:6], r[14:15], r[5:6]
0005d0  eb560400  load.d r[14:15], 0(r8)
0005d4  1f04bfe3  addli r8, r30, -3624
0005d8  eb5a0400  load.d r[22:23], 0(r8)
0005dc  63447fe3  loadli.w r8,  -3652(r30)
0005e0  0b32d240  min.sl r[5:6], r[5:6], r[14:15]
0005e4  1b321200  slli r4, r4, 1
0005e8  8bb6da40  min.sl r[14:15], r[22:23], r[14:15]
0005ec  9f627200  addli r5, r4, 62
0005f0  9bbb1600  slli r23, r13, 1
0005f4  97828200  and r5, r5, r8
0005f8  8b964218  sub.s r13, r5, r4
0005fc  1f020ff7  addli r4, r30, -1152
000600  0b147211  add.s r8, r4, r23
000604  b7a00600  beq r13, zero, 40
000608  1f020fef  addli r4, r30, -2176
00060c  1f0e0000  addli r28, zero, 0
000610  8b1b7211  add.s r23, r4, r23
000614  0b92cb11  add.s r4, r23, r28
000618  1f1e0e00  addli r28, r28, 1
00061c  9302de04  setlt.u r5, r28, r13
000620  73000200  store.b zero, 0(r4)
000624  bbcf02fe  bneq r5, zero, -16
000628  1f1e0000  addli r28, zero, 1
00062c  1f020fe6  addli r4, r30, -3328
000630  eb5a0200  load.d r[22:23], 0(r4)
000634  73108401  store.h r24, 0(r8)
000638  1f190900  addli r18, r18, 1
00063c  1f240400  addli r8, r8, 2
000640  bf5f19ff  blt.s r18, r17, -12
000644  00a00000  mfence { lm }
000648  3f8bc8ff  blt.s r17, r28, -320
00064c  6b578f00  load.d r[15:16], 8(r30)
000650  1f040fef  addli r8, r30, -2176
000654  9f060ff7  addli r13, r30, -1152
000658  1f090000  addli r18, zero, 0
00065c  2b02fcc2  lui r4, 798656
000660  00a00000  mfence { lm }
000664  5b270000  j 312
000668  9f028fe5  addli r5, r30, -3392
00066c  6e224262  vxor.u.mz vr4{mr1}, vr4, vr4
000670  1f094900  addli r18, r18, 32
000674  1f048400  addli r8, r8, 64
000678  9f868600  addli r13, r13, 64
00067c  6a214222  vor.u.mz vr2{mr1}, r4, vr4
000680  ea934322  vor.f.mz vr7{mr1}, r7, vr4
000684  6a944122  vor.f.mz vr8{mr1}, r3, vr4
000688  ea144122  vor.f.mz vr9{mr1}, r2, vr4
00068c  6a934422  vor.f.mz vr6{mr1}, r9, vr4
000690  ea124622  vor.f.mz vr5{mr1}, r12, vr4
000694  46901202  vstore_mask16.mz vr1{mr1}, 0(r5)
000698  9f028fe6  addli r5, r30, -3264
00069c  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
0006a0  9f020fe5  addli r5, r30, -3456
0006a4  12356002  vadd.s.mz vr10{mr1}, zero, vr6
0006a8  92355002  vadd.s.mz vr11{mr1}, zero, vr5
0006ac  46902202  vstore_mask16.mz vr2{mr1}, 0(r5)
0006b0  9f028fe4  addli r5, r30, -3520
0006b4  1e101002  vsub.f.mz.rn vr0{mr1}, vr0, vr1
0006b8  0a900c02  vmul.f.mz.rn vr0{mr1}, r25, vr0
0006bc  9a900502  vsub.f.mz.rn vr1{mr1}, r11, vr0
0006c0  72911042  vlt.f.mz mr2{mr1}, r1, vr1
0006c4  6a202034  vor.u.mh vr0{mr2}, zero, vr2
0006c8  12110a02  vadd.f.mz.rn vr2{mr1}, r20, vr0
0006cc  92102502  vadd.f.mz.rn vr1{mr1}, r10, vr2
0006d0  9e111002  vsub.f.mz.rn vr3{mr1}, vr0, vr1
0006d4  12307002  vadd.s.mz vr0{mr1}, zero, vr7
0006d8  92308002  vadd.s.mz vr1{mr1}, zero, vr8
0006dc  22103302  vmac.f.mz.rn vr0{mr1}, r6, vr3
0006e0  a6103002  vmac.f.mz.rn vr1{mr1}, vr0, vr3
0006e4  12309002  vadd.s.mz vr0{mr1}, zero, vr9
0006e8  26903002  vmac.f.mz.rn vr0{mr1}, vr1, vr3
0006ec  eaa04d22  vor.u.mz vr1{mr1}, r27, vr4
0006f0  26153002  vmac.f.mz.rn vr10{mr1}, vr0, vr3
0006f4  46901202  vstore_mask16.mz vr1{mr1}, 0(r5)
0006f8  9f028fe5  addli r5, r30, -3392
0006fc  6eb120a2  vsll.s.mz vr2{mr1}, vr1, vr2
000700  6a104822  vor.f.mz vr0{mr1}, r16, vr4
000704  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
000708  9f028fe6  addli r5, r30, -3264
00070c  a6153502  vmac.f.mz.rn vr11{mr1}, vr10, vr3
000710  42950202  vload_mask16.mz vr10{mr1}, 0(r5)
000714  12312802  vadd.s.mz vr2{mr1}, r16, vr2
000718  9f020fe5  addli r5, r30, -3456
00071c  1e95a002  vsub.f.mz.rn vr10{mr1}, vr1, vr10
000720  92300002  vadd.s.mz vr1{mr1}, zero, vr0
000724  a6903502  vmac.f.mz.rn vr1{mr1}, vr11, vr3
000728  8a91ac02  vmul.f.mz.rn vr3{mr1}, r25, vr10
00072c  0e912002  vmul.f.mz.rn vr2{mr1}, vr1, vr2
000730  9a903502  vsub.f.mz.rn vr1{mr1}, r11, vr3
000734  6a214034  vor.u.mh vr2{mr2}, zero, vr4
000738  72911042  vlt.f.mz mr2{mr1}, r1, vr1
00073c  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
000740  9f028fe4  addli r5, r30, -3520
000744  ea211034  vor.u.mh vr3{mr2}, zero, vr1
000748  92103a02  vadd.f.mz.rn vr1{mr1}, r20, vr3
00074c  12151502  vadd.f.mz.rn vr10{mr1}, r10, vr1
000750  9e91a102  vsub.f.mz.rn vr3{mr1}, vr3, vr10
000754  a2133302  vmac.f.mz.rn vr7{mr1}, r6, vr3
000758  26943302  vmac.f.mz.rn vr8{mr1}, vr7, vr3
00075c  a6143402  vmac.f.mz.rn vr9{mr1}, vr8, vr3
000760  26933402  vmac.f.mz.rn vr6{mr1}, vr9, vr3
000764  a6123302  vmac.f.mz.rn vr5{mr1}, vr6, vr3
000768  42930202  vload_mask16.mz vr6{mr1}, 0(r5)
00076c  9f020fe6  addli r5, r30, -3328
000770  26903202  vmac.f.mz.rn vr0{mr1}, vr5, vr3
000774  ee3013a2  vsll.s.mz vr1{mr1}, vr6, vr1
000778  92301802  vadd.s.mz vr1{mr1}, r16, vr1
00077c  0e101002  vmul.f.mz.rn vr0{mr1}, vr0, vr1
000780  6a204034  vor.u.mh vr0{mr2}, zero, vr4
000784  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
000788  16100102  vadd.f.mz.rn vr0{mr1}, vr2, vr0
00078c  96900002  vadd.f.mz.rn vr1{mr1}, vr1, vr0
000790  12301002  vadd.s.mz vr0{mr1}, zero, vr1
000794  3f201901  blt.s r18, r17, 8
000798  dbaeffff  j -652
00079c  9f020fe6  addli r5, r30, -3328
0007a0  c2000402  vload.mz vr1{mr1}, 0(r8)
0007a4  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
0007a8  42800602  vload.mz vr0{mr1}, 0(r13)
0007ac  06310000  vfp162float_l.rn vr2, vr0
0007b0  86710000  vfp162float_h.rn vr3, vr0
0007b4  06b00000  vfp162float_l.rn vr0, vr1
0007b8  86f00000  vfp162float_h.rn vr1, vr1
0007bc  16100102  vadd.f.mz.rn vr0{mr1}, vr2, vr0
0007c0  96901102  vadd.f.mz.rn vr1{mr1}, vr3, vr1
0007c4  bb1a0dfe  bneq r26, zero, -348
0007c8  86d00000  vfloat2fp16_h.rn vr1, vr1
0007cc  86100000  vfloat2fp16_l.rn vr1, vr0
0007d0  06b00000  vfp162float_l.rn vr0, vr1
0007d4  86f00000  vfp162float_h.rn vr1, vr1
0007d8  5bd2ffff  j -368
0007dc  e3489fe3  loadli.w r17,  -3636(r30)
0007e0  9f06efe1  addli r13, r30, -3856
0007e4  9f07afe3  addli r15, r30, -3632
0007e8  1f040000  addli r8, zero, 0
0007ec  6bd20600  load.d r[5:6], 0(r13)
0007f0  ebd60700  load.d r[14:15], 0(r15)
0007f4  0b22d210  add.ul r[5:6], r[5:6], r[14:15]
0007f8  9f066fe3  addli r13, r30, -3664
0007fc  73b04600  store.d r[5:6], 0(r13)
000800  33020028  zext_int2long r[5:6], zero
000804  9f06bfe3  addli r13, r30, -3624
000808  73b04600  store.d r[5:6], 0(r13)
00080c  1f020fff  addli r4, r30, -128
000810  9f060000  addli r13, zero, 0
000814  9f028000  addli r5, zero, 64
000818  46100202  vstore_mask16.mz vr0{mr1}, 0(r4)
00081c  00a00000  mfence { lm }
000820  0b178210  add.s r14, r4, r8
000824  1f440400  addli r8, r8, 4
000828  63070700  loadli.w r14,  0(r14)
00082c  8be6e610  add.f.rn r13, r13, r14
000830  bb4f54fe  bneq r8, r5, -16
000834  6b578f00  load.d r[15:16], 8(r30)
000838  63425fe3  loadli.w r4,  -3668(r30)
00083c  27090700  addli.d r[19:20], r[15:16], 0
000840  bb6802fc  bneq r4, zero, -1480
000844  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000848  0f04d818  div.f.rn r8, r16, r13
00084c  1f028fe6  addli r4, r30, -3264
000850  00a00000  mfence { lm }
000854  ea900822  vor.f.mz vr1{mr1}, r17, vr0
000858  46101202  vstore_mask16.mz vr1{mr1}, 0(r4)
00085c  1f028fe4  addli r4, r30, -3520
000860  46100202  vstore_mask16.mz vr0{mr1}, 0(r4)
000864  6a100422  vor.f.mz vr0{mr1}, r8, vr0
000868  1f020fe4  addli r4, r30, -3584
00086c  46100202  vstore_mask16.mz vr0{mr1}, 0(r4)
000870  1f02afe3  addli r4, r30, -3632
000874  73302201  store.d r[19:20], 0(r4)
000878  1f02bfe3  addli r4, r30, -3624
00087c  eb5a0200  load.d r[22:23], 0(r4)
000880  db0c0000  j 100
000884  1f046fe3  addli r8, r30, -3664
000888  9f080fe7  addli r17, r30, -3200
00088c  6b598f00  load.d r[19:20], 8(r30)
000890  a78a0a04  addli.d r[22:23], r[22:23], 512
000894  6b520400  load.d r[5:6], 0(r8)
000898  1f048fe3  addli r8, r30, -3648
00089c  eb560400  load.d r[14:15], 0(r8)
0008a0  2b0400f0  lui r8, 983040
0008a4  0b22d210  add.ul r[5:6], r[5:6], r[14:15]
0008a8  63479fe3  loadli.w r14,  -3636(r30)
0008ac  00a00000  mfence { lm }
0008b0  93b62a05  setlt.sl r13, r[22:23], r[19:20]
0008b4  17148700  or r8, r14, r8
0008b8  7f341201  s_lm2gm r8, r17, 0(r[5:6])
0008bc  1f04bfe3  addli r8, r30, -3624
0008c0  00a00200  mfence { lm, gm }
0008c4  6b520400  load.d r[5:6], 0(r8)
0008c8  27120200  addli.d r[5:6], r[5:6], 1
0008cc  73304400  store.d r[5:6], 0(r8)
0008d0  1f04afe3  addli r8, r30, -3632
0008d4  6b520400  load.d r[5:6], 0(r8)
0008d8  270202fc  addli.d r[5:6], r[5:6], 32256
0008dc  73304400  store.d r[5:6], 0(r8)
0008e0  37e606fc  beq r13, zero, -1640
0008e4  1f04ffe3  addli r8, r30, -3592
0008e8  8b385919  sub.sl r[18:19], r[19:20], r[22:23]
0008ec  9f06efe3  addli r13, r30, -3600
0008f0  9f090d00  addli r19, r26, 0
0008f4  278d0a00  addli.d r[27:28], r[22:23], 0
0008f8  6b520400  load.d r[5:6], 0(r8)
0008fc  973acd03  sll.d r[22:23], r[27:28], r28
000900  2b0400f0  lui r8, 983040
000904  8bb84840  min.sl r[18:19], r[18:19], r[5:6]
000908  6bd20600  load.d r[5:6], 0(r13)
00090c  9f060ff7  addli r13, r30, -1152
000910  9bb71800  slli r15, r17, 1
000914  0b225211  add.ul r[5:6], r[5:6], r[22:23]
000918  17948700  or r8, r15, r8
00091c  e74cffe2  storeli.w r15, -3636(r30)
000920  7f24d200  l_gm2lm r8, r13, 0(r[5:6])
000924  9f02dfe3  addli r5, r30, -3608
000928  2b0200f0  lui r4, 983040
00092c  ebd60200  load.d r[14:15], 0(r5)
000930  9f028fe3  addli r5, r30, -3648
000934  17924700  or r4, r15, r4
000938  73b05201  store.d r[22:23], 0(r5)
00093c  9f020fef  addli r5, r30, -2176
000940  8ba65611  add.ul r[14:15], r[14:15], r[22:23]
000944  00a00200  mfence { lm, gm }
000948  a70a0d00  addli.d r[22:23], r[27:28], 0
00094c  9f7d2000  addli r27, zero, 23
000950  1f8d0900  addli r26, r19, 0
000954  7fa25600  l_gm2lm r4, r5, 0(r[14:15])
000958  1ff23800  addli r4, r17, 31
00095c  00a00200  mfence { lm, gm }
000960  e342cfe3  loadli.w r5,  -3612(r30)
000964  00a00000  mfence { lm }
000968  97095200  and r19, r4, r5
00096c  cb821901  ble.s r19, r17, 160
000970  9f02bfe3  addli r5, r30, -3624
000974  00a00000  mfence { lm }
000978  1f020fe6  addli r4, r30, -3328
00097c  1f04ffe3  addli r8, r30, -3592
000980  ebd60200  load.d r[14:15], 0(r5)
000984  73305201  store.d r[22:23], 0(r4)
000988  1f121000  addli r4, zero, 9
00098c  17b24602  sll.d r[5:6], r[14:15], r4
000990  eb568f00  load.d r[14:15], 8(r30)
000994  0bb24618  sub.sl r[5:6], r[14:15], r[5:6]
000998  eb560400  load.d r[14:15], 0(r8)
00099c  1f04afe3  addli r8, r30, -3632
0009a0  eb5a0400  load.d r[22:23], 0(r8)
0009a4  63447fe3  loadli.w r8,  -3652(r30)
0009a8  0b32d240  min.sl r[5:6], r[5:6], r[14:15]
0009ac  1b321200  slli r4, r4, 1
0009b0  8bb6da40  min.sl r[14:15], r[22:23], r[14:15]
0009b4  9f627200  addli r5, r4, 62
0009b8  9bbb1600  slli r23, r13, 1
0009bc  97828200  and r5, r5, r8
0009c0  8b964218  sub.s r13, r5, r4
0009c4  1f020ff7  addli r4, r30, -1152
0009c8  0b147211  add.s r8, r4, r23
0009cc  b7a00600  beq r13, zero, 40
0009d0  1f020fef  addli r4, r30, -2176
0009d4  1f0e0000  addli r28, zero, 0
0009d8  8b1b7211  add.s r23, r4, r23
0009dc  0b92cb11  add.s r4, r23, r28
0009e0  1f1e0e00  addli r28, r28, 1
0009e4  9302de04  setlt.u r5, r28, r13
0009e8  73000200  store.b zero, 0(r4)
0009ec  bbcf02fe  bneq r5, zero, -16
0009f0  1f1e0000  addli r28, zero, 1
0009f4  1f020fe6  addli r4, r30, -3328
0009f8  eb5a0200  load.d r[22:23], 0(r4)
0009fc  73108401  store.h r24, 0(r8)
000a00  9f980800  addli r17, r17, 1
000a04  1f240400  addli r8, r8, 2
000a08  bfdf38ff  blt.s r17, r19, -12
000a0c  2b02fcc2  lui r4, 798656
000a10  00a00000  mfence { lm }
000a14  bfc9c9ff  blt.s r19, r28, -400
000a18  1f040fe7  addli r8, r30, -3200
000a1c  9f060fef  addli r13, r30, -2176
000a20  9f0b0ff7  addli r23, r30, -1152
000a24  9f080000  addli r17, zero, 0
000a28  00a00000  mfence { lm }
000a2c  5b290000  j 328
000a30  9f020fe6  addli r5, r30, -3328
000a34  9f884800  addli r17, r17, 32
000a38  9f868600  addli r13, r13, 64
000a3c  9f8b8b00  addli r23, r23, 64
000a40  46901202  vstore_mask16.mz vr1{mr1}, 0(r5)
000a44  9f028fe6  addli r5, r30, -3264
000a48  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
000a4c  9f028fe4  addli r5, r30, -3520
000a50  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
000a54  9f028fe5  addli r5, r30, -3392
000a58  1e101002  vsub.f.mz.rn vr0{mr1}, vr0, vr1
000a5c  ea212222  vor.u.mz vr3{mr1}, r4, vr2
000a60  ea932322  vor.f.mz vr7{mr1}, r7, vr2
000a64  6a942122  vor.f.mz vr8{mr1}, r3, vr2
000a68  ea142122  vor.f.mz vr9{mr1}, r2, vr2
000a6c  6a932422  vor.f.mz vr6{mr1}, r9, vr2
000a70  ea122622  vor.f.mz vr5{mr1}, r12, vr2
000a74  0a900c02  vmul.f.mz.rn vr0{mr1}, r25, vr0
000a78  46903202  vstore_mask16.mz vr3{mr1}, 0(r5)
000a7c  12356002  vadd.s.mz vr10{mr1}, zero, vr6
000a80  9f020fe5  addli r5, r30, -3456
000a84  92355002  vadd.s.mz vr11{mr1}, zero, vr5
000a88  9a900502  vsub.f.mz.rn vr1{mr1}, r11, vr0
000a8c  72911042  vlt.f.mz mr2{mr1}, r1, vr1
000a90  6a203034  vor.u.mh vr0{mr2}, zero, vr3
000a94  12120a02  vadd.f.mz.rn vr4{mr1}, r20, vr0
000a98  92104502  vadd.f.mz.rn vr1{mr1}, r10, vr4
000a9c  9e111002  vsub.f.mz.rn vr3{mr1}, vr0, vr1
000aa0  12307002  vadd.s.mz vr0{mr1}, zero, vr7
000aa4  92308002  vadd.s.mz vr1{mr1}, zero, vr8
000aa8  22103302  vmac.f.mz.rn vr0{mr1}, r6, vr3
000aac  a6103002  vmac.f.mz.rn vr1{mr1}, vr0, vr3
000ab0  12309002  vadd.s.mz vr0{mr1}, zero, vr9
000ab4  26903002  vmac.f.mz.rn vr0{mr1}, vr1, vr3
000ab8  eaa02d22  vor.u.mz vr1{mr1}, r27, vr2
000abc  26153002  vmac.f.mz.rn vr10{mr1}, vr0, vr3
000ac0  46901202  vstore_mask16.mz vr1{mr1}, 0(r5)
000ac4  9f020fe6  addli r5, r30, -3328
000ac8  6eb240a2  vsll.s.mz vr4{mr1}, vr1, vr4
000acc  6a102822  vor.f.mz vr0{mr1}, r16, vr2
000ad0  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
000ad4  9f028fe6  addli r5, r30, -3264
000ad8  a6153502  vmac.f.mz.rn vr11{mr1}, vr10, vr3
000adc  42950202  vload_mask16.mz vr10{mr1}, 0(r5)
000ae0  9f028fe5  addli r5, r30, -3392
000ae4  1e95a002  vsub.f.mz.rn vr10{mr1}, vr1, vr10
000ae8  92300002  vadd.s.mz vr1{mr1}, zero, vr0
000aec  a6903502  vmac.f.mz.rn vr1{mr1}, vr11, vr3
000af0  92314802  vadd.s.mz vr3{mr1}, r16, vr4
000af4  0a92ac02  vmul.f.mz.rn vr4{mr1}, r25, vr10
000af8  8e913002  vmul.f.mz.rn vr3{mr1}, vr1, vr3
000afc  9a904502  vsub.f.mz.rn vr1{mr1}, r11, vr4
000b00  ea212034  vor.u.mh vr3{mr2}, zero, vr2
000b04  72911042  vlt.f.mz mr2{mr1}, r1, vr1
000b08  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
000b0c  9f020fe5  addli r5, r30, -3456
000b10  6a221034  vor.u.mh vr4{mr2}, zero, vr1
000b14  92104a02  vadd.f.mz.rn vr1{mr1}, r20, vr4
000b18  12151502  vadd.f.mz.rn vr10{mr1}, r10, vr1
000b1c  1e12a202  vsub.f.mz.rn vr4{mr1}, vr4, vr10
000b20  a2134302  vmac.f.mz.rn vr7{mr1}, r6, vr4
000b24  26944302  vmac.f.mz.rn vr8{mr1}, vr7, vr4
000b28  a6144402  vmac.f.mz.rn vr9{mr1}, vr8, vr4
000b2c  26934402  vmac.f.mz.rn vr6{mr1}, vr9, vr4
000b30  a6124302  vmac.f.mz.rn vr5{mr1}, vr6, vr4
000b34  42930202  vload_mask16.mz vr6{mr1}, 0(r5)
000b38  9f020fe4  addli r5, r30, -3584
000b3c  26904202  vmac.f.mz.rn vr0{mr1}, vr5, vr4
000b40  ee3013a2  vsll.s.mz vr1{mr1}, vr6, vr1
000b44  92301802  vadd.s.mz vr1{mr1}, r16, vr1
000b48  0e101002  vmul.f.mz.rn vr0{mr1}, vr0, vr1
000b4c  6a202034  vor.u.mh vr0{mr2}, zero, vr2
000b50  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
000b54  0e100102  vmul.f.mz.rn vr0{mr1}, vr2, vr0
000b58  8e103102  vmul.f.mz.rn vr1{mr1}, vr2, vr3
000b5c  06500000  vfloat2fp16_h.rn vr0, vr0
000b60  06900000  vfloat2fp16_l.rn vr0, vr1
000b64  46000402  vstore.mz vr0{mr1}, 0(r8)
000b68  1f048400  addli r8, r8, 64
000b6c  3fa03801  blt.s r17, r19, 8
000b70  dba2ffff  j -748
000b74  42800b02  vload.mz vr0{mr1}, 0(r23)
000b78  c2800602  vload.mz vr1{mr1}, 0(r13)
000b7c  86310000  vfp162float_l.rn vr3, vr0
000b80  06720000  vfp162float_h.rn vr4, vr0
000b84  06b00000  vfp162float_l.rn vr0, vr1
000b88  86f00000  vfp162float_h.rn vr1, vr1
000b8c  16900102  vadd.f.mz.rn vr0{mr1}, vr3, vr0
000b90  96101202  vadd.f.mz.rn vr1{mr1}, vr4, vr1
000b94  3b7a0dfe  bneq r26, zero, -356
000b98  86d00000  vfloat2fp16_h.rn vr1, vr1
000b9c  86100000  vfloat2fp16_l.rn vr1, vr0
000ba0  06b00000  vfp162float_l.rn vr0, vr1
000ba4  86f00000  vfp162float_h.rn vr1, vr1
000ba8  5bd1ffff  j -376
000bac  9f0e8fe1  addli sp, r30, -3904
000bb0  e38f2e1e  loadli.w r31,  3856(sp)
000bb4  63cf2e1e  loadli.w r30,  3860(sp)
000bb8  638e3e1e  loadli.w r28,  3864(sp)
000bbc  e3cd3e1e  loadli.w r27,  3868(sp)
000bc0  638d4e1e  loadli.w r26,  3872(sp)
000bc4  e3cc4e1e  loadli.w r25,  3876(sp)
000bc8  638c5e1e  loadli.w r24,  3880(sp)
000bcc  e3cb5e1e  loadli.w r23,  3884(sp)
000bd0  638b6e1e  loadli.w r22,  3888(sp)
000bd4  e3ca6e1e  loadli.w r21,  3892(sp)
000bd8  638a7e1e  loadli.w r20,  3896(sp)
000bdc  e3c97e1e  loadli.w r19,  3900(sp)
000be0  9f8e8e1e  addli sp, sp, 3904
000be4  5f800f00  jr r31, 0
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
