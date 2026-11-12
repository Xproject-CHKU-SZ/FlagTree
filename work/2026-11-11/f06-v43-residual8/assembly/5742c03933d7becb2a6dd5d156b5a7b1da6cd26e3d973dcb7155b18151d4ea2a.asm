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
000078  9f493000  addli r19, zero, 28
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
0000dc  9f8e8eff  addli sp, sp, -64
0000e0  1f8f0e00  addli r30, sp, 0
0000e4  805a0002  load_param_i r21, 0
0000e8  e3492f00  loadli.w r19,  20(r30)
0000ec  e3002f00  loadli.w r1,  16(r30)
0000f0  630a3f00  loadli.w r20,  24(r30)
0000f4  8b901920  mul.s r1, r19, r1
0000f8  0b9b4021  mul.s r22, r1, r20
0000fc  cb105b01  ble.s r22, r21, 36
000100  80db0002  load_param_i r23, 1
000104  8b904a31  div.s r1, r21, r20
000108  6b510f00  load.d r[3:4], 0(r30)
00010c  6b528f00  load.d r[5:6], 8(r30)
000110  0b933031  div.s r6, r1, r19
000114  57250000  jal 296
000118  8b9a7a11  add.s r21, r21, r23
00011c  bfaf6aff  blt.s r21, r22, -24
000120  00a00300  mfence { lm, sm, gm }
000124  00100000  exit
000128  9f8e0eeb  addli sp, sp, -2688
00012c  80500102  load_param_i r1, 2
000130  80330002  core_id r7
000134  1f250000  addli r10, zero, 2
000138  67c5ee15  storeli.w r30, 2644(sp)
00013c  1f8f0e15  addli r30, sp, 2688
000140  1f060008  addli r12, zero, 1024
000144  e7c73e15  storeli.w r19, 2684(sp)
000148  e7874e15  storeli.w r20, 2680(sp)
00014c  67c75e15  storeli.w r21, 2676(sp)
000150  67876e15  storeli.w r22, 2672(sp)
000154  e7c67e15  storeli.w r23, 2668(sp)
000158  e7868e15  storeli.w r24, 2664(sp)
00015c  67c69e15  storeli.w r25, 2660(sp)
000160  6786ae15  storeli.w r26, 2656(sp)
000164  e7c5be15  storeli.w r27, 2652(sp)
000168  e785ce15  storeli.w r28, 2648(sp)
00016c  6785fe15  storeli.w r31, 2640(sp)
000170  8b936050  fmac.s r7, r1, r6
000174  9f058fef  addli r11, r30, -2112
000178  1bb38300  slli r6, r7, 8
00017c  33140328  sext_int2long r[9:10], r6
000180  1734a402  sll.d r[9:10], r[9:10], r10
000184  2b0500f0  lui r10, 983040
000188  0b248110  add.ul r[9:10], r[3:4], r[9:10]
00018c  1715a600  or r10, r12, r10
000190  7f25b400  l_gm2lm r10, r11, 0(r[9:10])
000194  1f74f07f  addli r8, zero, 16383
000198  9f047feb  addli r9, r30, -2632
00019c  00a00200  mfence { lm, gm }
0001a0  73b04400  store.d r[5:6], 0(r9)
0001a4  3f1f7400  blt.s r8, r7, 964
0001a8  1f020018  addli r4, zero, 3072
0001ac  9f038feb  addli r7, r30, -2624
0001b0  ab0a0080  lui r21, 524288
0001b4  2b0b803f  lui r22, 260096
0001b8  9f0be001  addli r23, zero, 240
0001bc  9f0d0000  addli r27, zero, 0
0001c0  8b904020  mul.s r1, r1, r4
0001c4  1f828300  addli r4, r7, 64
0001c8  670b4fea  storeli.w r4, -2640(r30)
0001cc  674b1fea  storeli.w r1, -2636(r30)
0001d0  33820028  zext_int2long r[5:6], r1
0001d4  9f800301  addli r1, r7, 128
0001d8  e74a1fea  storeli.w r1, -2644(r30)
0001dc  9f200000  addli r1, zero, 2
0001e0  17321202  sll.d r[5:6], r[5:6], r1
0001e4  9f808301  addli r1, r7, 192
0001e8  e70a1fea  storeli.w r1, -2648(r30)
0001ec  8b204110  add.ul r[2:3], r[3:4], r[5:6]
0001f0  9f010feb  addli r3, r30, -2688
0001f4  73b01100  store.d r[2:3], 0(r3)
0001f8  9f800302  addli r1, r7, 256
0001fc  2bf1ffff  lui r2, 1048575
000200  674a1fea  storeli.w r1, -2652(r30)
000204  9f808302  addli r1, r7, 320
000208  670a1fea  storeli.w r1, -2656(r30)
00020c  9f800303  addli r1, r7, 384
000210  e7491fea  storeli.w r1, -2660(r30)
000214  9f808303  addli r1, r7, 448
000218  e7091fea  storeli.w r1, -2664(r30)
00021c  9f008fef  addli r1, r30, -2112
000220  9b900002  ori r1, r1, 32
000224  67491fea  storeli.w r1, -2668(r30)
000228  abf03f00  lui r1, 1023
00022c  9b90f0ff  ori r1, r1, 4095
000230  67091fea  storeli.w r1, -2672(r30)
000234  9b1001ff  ori r1, r2, 4080
000238  e7481fea  storeli.w r1, -2676(r30)
00023c  63416feb  loadli.w r2,  -2636(r30)
000240  9f000300  addli r1, r6, 0
000244  e3012feb  loadli.w r3,  -2672(r30)
000248  0b932010  add.s r6, r1, r2
00024c  b3900028  sext_int2long r[2:3], r1
000250  bfe06100  blt.s r3, r6, 56
000254  9f040feb  addli r9, r30, -2688
000258  9f210000  addli r3, zero, 2
00025c  9ba21d00  xori r5, r27, 1
000260  ebd30400  load.d r[8:9], 0(r9)
000264  97b13002  sll.d r[4:5], r[2:3], r3
000268  9bb2a200  slli r5, r5, 10
00026c  8ba13310  add.ul r[4:5], r[8:9], r[4:5]
000270  1f048fef  addli r8, r30, -2112
000274  ab0300f0  lui r7, 983040
000278  8b125410  add.s r5, r8, r5
00027c  1f040008  addli r8, zero, 1024
000280  97137400  or r7, r8, r7
000284  ffa35100  l_gm2lm r7, r5, 0(r[4:5])
000288  e3422feb  loadli.w r5,  -2668(r30)
00028c  1bb2ad00  slli r4, r27, 10
000290  9f018fef  addli r3, r30, -2112
000294  634a1feb  loadli.w r20,  -2676(r30)
000298  8b914110  add.s r3, r3, r4
00029c  0b944210  add.s r8, r5, r4
0002a0  6302c4ff  loadli.w r4,  -32(r8)
0002a4  6305d4ff  loadli.w r10,  -24(r8)
0002a8  e342c4ff  loadli.w r5,  -28(r8)
0002ac  634cd4ff  loadli.w r24,  -20(r8)
0002b0  e3490400  loadli.w r19,  4(r8)
0002b4  e34ce4ff  loadli.w r25,  -12(r8)
0002b8  6347f4ff  loadli.w r14,  -4(r8)
0002bc  e3080400  loadli.w r17,  0(r8)
0002c0  630d1400  loadli.w r26,  8(r8)
0002c4  e3072400  loadli.w r15,  16(r8)
0002c8  63492400  loadli.w r18,  20(r8)
0002cc  630e3400  loadli.w r28,  24(r8)
0002d0  e3443400  loadli.w r9,  28(r8)
0002d4  1f0a2a00  addli r20, r20, 16
0002d8  97235201  xor r7, r4, r21
0002dc  17265501  xor r12, r10, r21
0002e0  97a55201  xor r11, r5, r21
0002e4  97265c01  xor r13, r24, r21
0002e8  8f830300  exp.f.rn r7, r7
0002ec  0f060600  exp.f.rn r12, r12
0002f0  8f850500  exp.f.rn r11, r11
0002f4  8be36311  add.f.rn r7, r7, r22
0002f8  0b666611  add.f.rn r12, r12, r22
0002fc  8be56511  add.f.rn r11, r11, r22
000300  8f037218  div.f.rn r7, r4, r7
000304  0f02c518  div.f.rn r4, r10, r12
000308  8f85b218  div.f.rn r11, r5, r11
00030c  0f850600  exp.f.rn r10, r13
000310  e302e4ff  loadli.w r5,  -16(r8)
000314  0b686511  add.f.rn r16, r10, r22
000318  e3461400  loadli.w r13,  12(r8)
00031c  17a65201  xor r12, r5, r21
000320  0f050600  exp.f.rn r10, r12
000324  0b656511  add.f.rn r10, r10, r22
000328  6306f4ff  loadli.w r12,  -8(r8)
00032c  e70e44fe  storeli.w r4, -24(r8)
000330  0f020c19  div.f.rn r4, r24, r16
000334  17ac5901  xor r24, r19, r21
000338  17a85801  xor r16, r17, r21
00033c  670e74fe  storeli.w r7, -32(r8)
000340  97a35c01  xor r7, r25, r21
000344  674eb4fe  storeli.w r11, -28(r8)
000348  97255701  xor r11, r14, r21
00034c  0f0c0c00  exp.f.rn r24, r24
000350  8f830300  exp.f.rn r7, r7
000354  8f850500  exp.f.rn r11, r11
000358  0f080800  exp.f.rn r16, r16
00035c  0b6c6c11  add.f.rn r24, r24, r22
000360  8be36311  add.f.rn r7, r7, r22
000364  8be56511  add.f.rn r11, r11, r22
000368  0b686811  add.f.rn r16, r16, r22
00036c  8f82a218  div.f.rn r5, r5, r10
000370  17255601  xor r10, r12, r21
000374  0f050500  exp.f.rn r10, r10
000378  0b656511  add.f.rn r10, r10, r22
00037c  e74e44fe  storeli.w r4, -20(r8)
000380  0f828919  div.f.rn r4, r19, r24
000384  8f837c18  div.f.rn r7, r25, r7
000388  8f05b718  div.f.rn r11, r14, r11
00038c  670f54fe  storeli.w r5, -16(r8)
000390  97225d01  xor r5, r26, r21
000394  0f05a618  div.f.rn r10, r12, r10
000398  0f860819  div.f.rn r12, r17, r16
00039c  67404400  storeli.w r4, 4(r8)
0003a0  0f820200  exp.f.rn r4, r5
0003a4  97a25601  xor r5, r13, r21
0003a8  674f74fe  storeli.w r7, -12(r8)
0003ac  97a35701  xor r7, r15, r21
0003b0  e74fb4fe  storeli.w r11, -4(r8)
0003b4  97255e01  xor r11, r28, r21
0003b8  0b626211  add.f.rn r4, r4, r22
0003bc  8f820200  exp.f.rn r5, r5
0003c0  8f830300  exp.f.rn r7, r7
0003c4  8f850500  exp.f.rn r11, r11
0003c8  8be26211  add.f.rn r5, r5, r22
0003cc  8be36311  add.f.rn r7, r7, r22
0003d0  8be56511  add.f.rn r11, r11, r22
0003d4  e70fa4fe  storeli.w r10, -8(r8)
0003d8  17255901  xor r10, r18, r21
0003dc  6700c400  storeli.w r12, 0(r8)
0003e0  17a65401  xor r12, r9, r21
0003e4  0f050500  exp.f.rn r10, r10
0003e8  0f060600  exp.f.rn r12, r12
0003ec  0b656511  add.f.rn r10, r10, r22
0003f0  0b666611  add.f.rn r12, r12, r22
0003f4  0f024d18  div.f.rn r4, r26, r4
0003f8  8f825618  div.f.rn r5, r13, r5
0003fc  8f837718  div.f.rn r7, r15, r7
000400  8f05be18  div.f.rn r11, r28, r11
000404  0f05a918  div.f.rn r10, r18, r10
000408  8f84c418  div.f.rn r9, r9, r12
00040c  e7004400  storeli.w r4, 8(r8)
000410  13027a05  setlt.u r4, r20, r23
000414  e7405400  storeli.w r5, 12(r8)
000418  67017400  storeli.w r7, 16(r8)
00041c  e701b400  storeli.w r11, 24(r8)
000420  6741a400  storeli.w r10, 20(r8)
000424  e7419400  storeli.w r9, 28(r8)
000428  1f048400  addli r8, r8, 64
00042c  bb5902fe  bneq r4, zero, -396
000430  00a00000  mfence { lm }
000434  1f828100  addli r4, r3, 64
000438  9f820101  addli r5, r3, 128
00043c  9f038feb  addli r7, r30, -2624
000440  1f047feb  addli r8, r30, -2632
000444  9bad1d00  xori r27, r27, 1
000448  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
00044c  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
000450  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
000454  1f828101  addli r4, r3, 192
000458  9f820102  addli r5, r3, 256
00045c  c2110202  vload_mask16.mz vr3{mr1}, 0(r4)
000460  1f828102  addli r4, r3, 320
000464  42920202  vload_mask16.mz vr4{mr1}, 0(r5)
000468  e3026feb  loadli.w r5,  -2640(r30)
00046c  06100000  vfloat2fp16_l.rn vr0, vr0
000470  06110100  vfloat2fp16_l.rn vr2, vr2
000474  06d00000  vfloat2fp16_h.rn vr0, vr1
000478  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
00047c  1f820103  addli r4, r3, 384
000480  06d10100  vfloat2fp16_h.rn vr2, vr3
000484  46800302  vstore.mz vr0{mr1}, 0(r7)
000488  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
00048c  1f828103  addli r4, r3, 448
000490  46802202  vstore.mz vr2{mr1}, 0(r5)
000494  e3425feb  loadli.w r5,  -2644(r30)
000498  86d00000  vfloat2fp16_h.rn vr1, vr1
00049c  c2110202  vload_mask16.mz vr3{mr1}, 0(r4)
0004a0  1f820104  addli r4, r3, 512
0004a4  42110202  vload_mask16.mz vr2{mr1}, 0(r4)
0004a8  1f828104  addli r4, r3, 576
0004ac  86100200  vfloat2fp16_l.rn vr1, vr4
0004b0  06100000  vfloat2fp16_l.rn vr0, vr0
0004b4  42120202  vload_mask16.mz vr4{mr1}, 0(r4)
0004b8  1f820105  addli r4, r3, 640
0004bc  46801202  vstore.mz vr1{mr1}, 0(r5)
0004c0  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
0004c4  1f828105  addli r4, r3, 704
0004c8  06d00100  vfloat2fp16_h.rn vr0, vr3
0004cc  e3025feb  loadli.w r5,  -2648(r30)
0004d0  06110100  vfloat2fp16_l.rn vr2, vr2
0004d4  c2110202  vload_mask16.mz vr3{mr1}, 0(r4)
0004d8  1f820106  addli r4, r3, 768
0004dc  46800202  vstore.mz vr0{mr1}, 0(r5)
0004e0  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
0004e4  1f828106  addli r4, r3, 832
0004e8  06510200  vfloat2fp16_h.rn vr2, vr4
0004ec  86900000  vfloat2fp16_l.rn vr1, vr1
0004f0  42120202  vload_mask16.mz vr4{mr1}, 0(r4)
0004f4  1f820107  addli r4, r3, 896
0004f8  9f818107  addli r3, r3, 960
0004fc  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
000500  e3414feb  loadli.w r3,  -2652(r30)
000504  c2120202  vload_mask16.mz vr5{mr1}, 0(r4)
000508  6b520400  load.d r[5:6], 0(r8)
00050c  06100000  vfloat2fp16_l.rn vr0, vr0
000510  86d00100  vfloat2fp16_h.rn vr1, vr3
000514  46802102  vstore.mz vr2{mr1}, 0(r3)
000518  e3014feb  loadli.w r3,  -2656(r30)
00051c  06500200  vfloat2fp16_h.rn vr0, vr4
000520  46801102  vstore.mz vr1{mr1}, 0(r3)
000524  e3413feb  loadli.w r3,  -2660(r30)
000528  46800102  vstore.mz vr0{mr1}, 0(r3)
00052c  06900200  vfloat2fp16_l.rn vr0, vr5
000530  e3013feb  loadli.w r3,  -2664(r30)
000534  06500300  vfloat2fp16_h.rn vr0, vr6
000538  46800102  vstore.mz vr0{mr1}, 0(r3)
00053c  9f110000  addli r3, zero, 1
000540  00a00000  mfence { lm }
000544  97b03002  sll.d r[2:3], r[2:3], r3
000548  ab0100f0  lui r3, 983040
00054c  8b201210  add.ul r[2:3], r[5:6], r[2:3]
000550  1f020004  addli r4, zero, 512
000554  97113200  or r3, r4, r3
000558  ffb17000  s_lm2gm r3, r7, 0(r[2:3])
00055c  ab004000  lui r1, 1024
000560  00a00200  mfence { lm, gm }
000564  3f6313fe  blt.s r6, r1, -808
000568  9f0e0feb  addli sp, r30, -2688
00056c  e38fae14  loadli.w r31,  2640(sp)
000570  63cfae14  loadli.w r30,  2644(sp)
000574  638ebe14  loadli.w r28,  2648(sp)
000578  e3cdbe14  loadli.w r27,  2652(sp)
00057c  638dce14  loadli.w r26,  2656(sp)
000580  e3ccce14  loadli.w r25,  2660(sp)
000584  638cde14  loadli.w r24,  2664(sp)
000588  e3cbde14  loadli.w r23,  2668(sp)
00058c  638bee14  loadli.w r22,  2672(sp)
000590  e3caee14  loadli.w r21,  2676(sp)
000594  638afe14  loadli.w r20,  2680(sp)
000598  e3c9fe14  loadli.w r19,  2684(sp)
00059c  9f8e0e15  addli sp, sp, 2688
0005a0  5f800f00  jr r31, 0
0005a4  00100000  exit
0005a8  00100000  exit
0005ac  00100000  exit
0005b0  00100000  exit
0005b4  00100000  exit
0005b8  00100000  exit
0005bc  00100000  exit
0005c0  00100000  exit
0005c4  00100000  exit
0005c8  00100000  exit
0005cc  00100000  exit
0005d0  00100000  exit
0005d4  00100000  exit
0005d8  00100000  exit
0005dc  00100000  exit
0005e0  00100000  exit
0005e4  00100000  exit
0005e8  00100000  exit
0005ec  00100000  exit
0005f0  00100000  exit
0005f4  00100000  exit
0005f8  00100000  exit
0005fc  00100000  exit
000600  00100000  exit
000604  00100000  exit
000608  00100000  exit
00060c  00100000  exit
000610  00100000  exit
000614  00100000  exit
000618  00100000  exit
00061c  00100000  exit
000620  00100000  exit
000624  00100000  exit
000628  00100000  exit
00062c  00100000  exit
000630  00100000  exit
000634  00100000  exit
000638  00100000  exit
00063c  00100000  exit
000640  00100000  exit
000644  00100000  exit
000648  00100000  exit
00064c  00100000  exit
000650  00100000  exit
000654  00100000  exit
000658  00100000  exit
00065c  00100000  exit
000660  00100000  exit
000664  00100000  exit
000668  00100000  exit
00066c  00100000  exit
000670  00100000  exit
000674  00100000  exit
000678  00100000  exit
00067c  00100000  exit
000680  00100000  exit
000684  00100000  exit
000688  00100000  exit
00068c  00100000  exit
000690  00100000  exit
000694  00100000  exit
000698  00100000  exit
00069c  00100000  exit
0006a0  00100000  exit
0006a4  00100000  exit
0006a8  00100000  exit
0006ac  00100000  exit
0006b0  00100000  exit
0006b4  00100000  exit
0006b8  00100000  exit
0006bc  00100000  exit
0006c0  00100000  exit
0006c4  00100000  exit
0006c8  00100000  exit
0006cc  00100000  exit
0006d0  00100000  exit
0006d4  00100000  exit
0006d8  00100000  exit
0006dc  00100000  exit
0006e0  00100000  exit
0006e4  00100000  exit
0006e8  00100000  exit
0006ec  00100000  exit
0006f0  00100000  exit
0006f4  00100000  exit
0006f8  00100000  exit
0006fc  00100000  exit
000700  00100000  exit
000704  00100000  exit
000708  00100000  exit
00070c  00100000  exit
000710  00100000  exit
000714  00100000  exit
000718  00100000  exit
00071c  00100000  exit
000720  00100000  exit
000724  00100000  exit
000728  00100000  exit
00072c  00100000  exit
000730  00100000  exit
000734  00100000  exit
000738  00100000  exit
00073c  00100000  exit
000740  00100000  exit
000744  00100000  exit
000748  00100000  exit
00074c  00100000  exit
000750  00100000  exit
000754  00100000  exit
000758  00100000  exit
00075c  00100000  exit
000760  00100000  exit
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
