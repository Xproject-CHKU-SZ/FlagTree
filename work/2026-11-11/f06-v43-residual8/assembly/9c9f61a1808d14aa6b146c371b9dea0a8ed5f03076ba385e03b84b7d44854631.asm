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
0000dc  9f8e8eff  addli sp, sp, -64
0000e0  1f8f0e00  addli r30, sp, 0
0000e4  805a0002  load_param_i r21, 0
0000e8  e3493f00  loadli.w r19,  28(r30)
0000ec  e3003f00  loadli.w r1,  24(r30)
0000f0  630a4f00  loadli.w r20,  32(r30)
0000f4  8b901920  mul.s r1, r19, r1
0000f8  0b9b4021  mul.s r22, r1, r20
0000fc  cb205b01  ble.s r22, r21, 40
000100  80db0002  load_param_i r23, 1
000104  8b904a31  div.s r1, r21, r20
000108  6b510f00  load.d r[3:4], 0(r30)
00010c  6b528f00  load.d r[5:6], 8(r30)
000110  6b530f01  load.d r[7:8], 16(r30)
000114  0b943031  div.s r8, r1, r19
000118  d7250000  jal 300
00011c  8b9a7a11  add.s r21, r21, r23
000120  bf9f6aff  blt.s r21, r22, -28
000124  00a00300  mfence { lm, sm, gm }
000128  00100000  exit
00012c  9f8e8ed6  addli sp, sp, -5312
000130  67c9ee29  storeli.w r30, 5268(sp)
000134  1f8f8e29  addli r30, sp, 5312
000138  e7cb3e29  storeli.w r19, 5308(sp)
00013c  e78b4e29  storeli.w r20, 5304(sp)
000140  67cb5e29  storeli.w r21, 5300(sp)
000144  678b6e29  storeli.w r22, 5296(sp)
000148  e7ca7e29  storeli.w r23, 5292(sp)
00014c  e78a8e29  storeli.w r24, 5288(sp)
000150  67ca9e29  storeli.w r25, 5284(sp)
000154  678aae29  storeli.w r26, 5280(sp)
000158  e7c9be29  storeli.w r27, 5276(sp)
00015c  e789ce29  storeli.w r28, 5272(sp)
000160  6789fe29  storeli.w r31, 5264(sp)
000164  9f00cfd6  addli r1, r30, -5280
000168  73b06000  store.d r[7:8], 0(r1)
00016c  80300002  core_id r1
000170  3bf00000  bneq r1, zero, 28
000174  1f030020  addli r6, zero, 4096
000178  ab0300f0  lui r7, 983040
00017c  17137300  or r6, r6, r7
000180  ab030000  lui r7, 0
000184  9f830300  addli r7, r7, 0
000188  7f037200  l_gm2sm r6, r7, 0(r[5:6])
00018c  00520102  load_param_i r4, 2
000190  9f140000  addli r9, zero, 1
000194  9f050010  addli r11, zero, 2048
000198  1f058fdf  addli r10, r30, -4160
00019c  8b108250  fmac.s r1, r4, r8
0001a0  2b0400f0  lui r8, 983040
0001a4  9bb2a000  slli r5, r1, 10
0001a8  17948500  or r8, r11, r8
0001ac  33930228  sext_int2long r[7:8], r5
0001b0  17339302  sll.d r[7:8], r[7:8], r9
0001b4  0b236110  add.ul r[7:8], r[3:4], r[7:8]
0001b8  7f24a300  l_gm2lm r8, r10, 0(r[7:8])
0001bc  2bf30000  lui r6, 15
0001c0  9f73f01f  addli r7, zero, 4095
0001c4  00a00200  mfence { lm, gm }
0001c8  1b13f3ff  ori r6, r6, 4095
0001cc  00200300  mfence { sm, gm }
0001d0  80210304  csr_set csr3, r6
0001d4  00d00100  sync_group
0001d8  3ff41302  blt.s r7, r1, 1308
0001dc  9f000060  addli r1, zero, 12288
0001e0  1f050000  addli r10, zero, 0
0001e4  8b101220  mul.s r1, r4, r1
0001e8  1f028fd7  addli r4, r30, -5184
0001ec  e7451fd6  storeli.w r1, -5284(r30)
0001f0  33830028  zext_int2long r[7:8], r1
0001f4  9f100000  addli r1, zero, 1
0001f8  1f068200  addli r12, r4, 64
0001fc  9f060201  addli r13, r4, 128
000200  1f078201  addli r14, r4, 192
000204  9f070202  addli r15, r4, 256
000208  1f088202  addli r16, r4, 320
00020c  9f080203  addli r17, r4, 384
000210  1f098203  addli r18, r4, 448
000214  9f090204  addli r19, r4, 512
000218  1f0a8204  addli r20, r4, 576
00021c  9f0a0205  addli r21, r4, 640
000220  1f0b8205  addli r22, r4, 704
000224  9f0b0206  addli r23, r4, 768
000228  1f0c8206  addli r24, r4, 832
00022c  1f0e0207  addli r28, r4, 896
000230  9f0c8207  addli r25, r4, 960
000234  17331302  sll.d r[7:8], r[7:8], r1
000238  e70adfd6  storeli.w r13, -5208(r30)
00023c  674acfd6  storeli.w r12, -5212(r30)
000240  670aefd6  storeli.w r14, -5216(r30)
000244  e7490fd7  storeli.w r16, -5220(r30)
000248  e709ffd6  storeli.w r15, -5224(r30)
00024c  67494fd7  storeli.w r20, -5228(r30)
000250  67093fd7  storeli.w r19, -5232(r30)
000254  e7482fd7  storeli.w r18, -5236(r30)
000258  e7081fd7  storeli.w r17, -5240(r30)
00025c  67485fd7  storeli.w r21, -5244(r30)
000260  8b206110  add.ul r[2:3], r[3:4], r[7:8]
000264  9f01afd6  addli r3, r30, -5296
000268  73b01100  store.d r[2:3], 0(r3)
00026c  9b100201  ori r1, r4, 16
000270  2bf1ffff  lui r2, 1048575
000274  ab010080  lui r3, 524288
000278  2b02803f  lui r4, 260096
00027c  67081fd6  storeli.w r1, -5248(r30)
000280  abf03f00  lui r1, 1023
000284  9b90f0ff  ori r1, r1, 4095
000288  e7051fd6  storeli.w r1, -5288(r30)
00028c  9b1081ff  ori r1, r2, 4088
000290  e7471fd6  storeli.w r1, -5252(r30)
000294  9f00f001  addli r1, zero, 248
000298  6341bfd6  loadli.w r2,  -5284(r30)
00029c  339d0228  sext_int2long r[27:28], r5
0002a0  0b932210  add.s r6, r5, r2
0002a4  6301bfd6  loadli.w r2,  -5288(r30)
0002a8  67476fd6  storeli.w r6, -5260(r30)
0002ac  bf606100  blt.s r2, r6, 56
0002b0  1f110000  addli r2, zero, 1
0002b4  1f00afd6  addli zero, r30, -5296
0002b8  6b540000  load.d r[9:10], 0(zero)
0002bc  17332d02  sll.d r[7:8], r[27:28], r2
0002c0  1b211500  xori r2, r10, 1
0002c4  17200000  xor zero, zero, zero
0002c8  1b31b100  slli r2, r2, 11
0002cc  0b236410  add.ul r[7:8], r[9:10], r[7:8]
0002d0  2b0400f0  lui r8, 983040
0002d4  9f048fdf  addli r9, r30, -4160
0002d8  0b912410  add.s r2, r9, r2
0002dc  17948500  or r8, r11, r8
0002e0  7f242300  l_gm2lm r8, r2, 0(r[7:8])
0002e4  1f01dfd6  addli r2, r30, -5272
0002e8  1f038fdf  addli r6, r30, -4160
0002ec  e707afd6  storeli.w r10, -5256(r30)
0002f0  7330a101  store.d r[27:28], 0(r2)
0002f4  0b91b238  mod.s r2, r5, r11
0002f8  9b32b500  slli r5, r10, 11
0002fc  8b125310  add.s r5, r6, r5
000300  1f030000  addli r6, zero, 0
000304  670b5fd6  storeli.w r5, -5200(r30)
000308  ab020000  lui r5, 0
00030c  1b311100  slli r2, r2, 1
000310  9f820200  addli r5, r5, 0
000314  0b115110  add.s r2, r2, r5
000318  e74a2fd6  storeli.w r2, -5204(r30)
00031c  63415fd7  loadli.w r2,  -5204(r30)
000320  9b321300  slli r5, r6, 1
000324  e3036fd7  loadli.w r7,  -5200(r30)
000328  9f050b00  addli r11, r22, 0
00032c  1f8d0b00  addli r26, r23, 0
000330  9f040c00  addli r9, r24, 0
000334  0b115110  add.s r2, r2, r5
000338  8b935310  add.s r7, r7, r5
00033c  4a000102  vloads.mz vr0{mr1}, 0(r2)
000340  9f028100  addli r5, r2, 64
000344  42810302  vload.mz vr2{mr1}, 0(r7)
000348  1f848300  addli r8, r7, 64
00034c  1f850302  addli r10, r7, 256
000350  9f8d8302  addli r27, r7, 320
000354  ca810202  vloads.mz vr3{mr1}, 0(r5)
000358  9f020101  addli r5, r2, 128
00035c  42020402  vload.mz vr4{mr1}, 0(r8)
000360  e74b8fd6  storeli.w r8, -5188(r30)
000364  1f840301  addli r8, r7, 128
000368  ca800202  vloads.mz vr1{mr1}, 0(r5)
00036c  9f028fd7  addli r5, r30, -5184
000370  e70b8fd6  storeli.w r8, -5192(r30)
000374  86320100  vfp162float_l.rn vr5, vr2
000378  06710100  vfp162float_h.rn vr2, vr2
00037c  86330200  vfp162float_l.rn vr7, vr4
000380  06720200  vfp162float_h.rn vr4, vr4
000384  06330000  vfp162float_l.rn vr6, vr0
000388  06700000  vfp162float_h.rn vr0, vr0
00038c  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
000390  16100102  vadd.f.mz.rn vr0{mr1}, vr2, vr0
000394  42010402  vload.mz vr2{mr1}, 0(r8)
000398  06b30100  vfp162float_l.rn vr6, vr3
00039c  86f10100  vfp162float_h.rn vr3, vr3
0003a0  1f040e00  addli r8, r28, 0
0003a4  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
0003a8  9f028101  addli r5, r2, 192
0003ac  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
0003b0  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
0003b4  16936302  vadd.f.mz.rn vr6{mr1}, vr7, vr6
0003b8  86b20000  vfp162float_l.rn vr5, vr1
0003bc  86f00000  vfp162float_h.rn vr1, vr1
0003c0  c2030502  vload.mz vr7{mr1}, 0(r10)
0003c4  1f860c00  addli r12, r25, 0
0003c8  06720100  vfp162float_h.rn vr4, vr2
0003cc  06300100  vfp162float_l.rn vr0, vr2
0003d0  4a810202  vloads.mz vr2{mr1}, 0(r5)
0003d4  9f828301  addli r5, r7, 192
0003d8  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
0003dc  674b5fd6  storeli.w r5, -5196(r30)
0003e0  42830202  vload.mz vr6{mr1}, 0(r5)
0003e4  9f020102  addli r5, r2, 256
0003e8  46103702  vstore_mask16.mz vr3{mr1}, 0(r14)
0003ec  96115002  vadd.f.mz.rn vr3{mr1}, vr0, vr5
0003f0  4a800202  vloads.mz vr0{mr1}, 0(r5)
0003f4  96101202  vadd.f.mz.rn vr1{mr1}, vr4, vr1
0003f8  9f028102  addli r5, r2, 320
0003fc  06320300  vfp162float_l.rn vr4, vr6
000400  86720300  vfp162float_h.rn vr5, vr6
000404  46903702  vstore_mask16.mz vr3{mr1}, 0(r15)
000408  46101802  vstore_mask16.mz vr1{mr1}, 0(r16)
00040c  86b10300  vfp162float_l.rn vr3, vr7
000410  06330100  vfp162float_l.rn vr6, vr2
000414  06710100  vfp162float_h.rn vr2, vr2
000418  16912202  vadd.f.mz.rn vr2{mr1}, vr5, vr2
00041c  ca820202  vloads.mz vr5{mr1}, 0(r5)
000420  96106202  vadd.f.mz.rn vr1{mr1}, vr4, vr6
000424  06320000  vfp162float_l.rn vr4, vr0
000428  06f30300  vfp162float_h.rn vr6, vr7
00042c  06700000  vfp162float_h.rn vr0, vr0
000430  9f020103  addli r5, r2, 384
000434  96914102  vadd.f.mz.rn vr3{mr1}, vr3, vr4
000438  42820d02  vload.mz vr4{mr1}, 0(r27)
00043c  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
000440  46901802  vstore_mask16.mz vr1{mr1}, 0(r17)
000444  46102902  vstore_mask16.mz vr2{mr1}, 0(r18)
000448  46100a02  vstore_mask16.mz vr0{mr1}, 0(r20)
00044c  46903902  vstore_mask16.mz vr3{mr1}, 0(r19)
000450  86300200  vfp162float_l.rn vr1, vr4
000454  06700200  vfp162float_h.rn vr0, vr4
000458  4a820202  vloads.mz vr4{mr1}, 0(r5)
00045c  9f028103  addli r5, r2, 448
000460  1f810303  addli r2, r7, 384
000464  06b10200  vfp162float_l.rn vr2, vr5
000468  86f10200  vfp162float_h.rn vr3, vr5
00046c  c2020102  vload.mz vr5{mr1}, 0(r2)
000470  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000474  4a810202  vloads.mz vr2{mr1}, 0(r5)
000478  9f828303  addli r5, r7, 448
00047c  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
000480  86f10200  vfp162float_h.rn vr3, vr5
000484  46901a02  vstore_mask16.mz vr1{mr1}, 0(r21)
000488  c2800202  vload.mz vr1{mr1}, 0(r5)
00048c  46100b02  vstore_mask16.mz vr0{mr1}, 0(r22)
000490  06b00200  vfp162float_l.rn vr0, vr5
000494  86320200  vfp162float_l.rn vr5, vr4
000498  06720200  vfp162float_h.rn vr4, vr4
00049c  06b30000  vfp162float_l.rn vr6, vr1
0004a0  86f00000  vfp162float_h.rn vr1, vr1
0004a4  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
0004a8  96914102  vadd.f.mz.rn vr3{mr1}, vr3, vr4
0004ac  86330100  vfp162float_l.rn vr7, vr2
0004b0  06710100  vfp162float_h.rn vr2, vr2
0004b4  46900b02  vstore_mask16.mz vr0{mr1}, 0(r23)
0004b8  46103c02  vstore_mask16.mz vr3{mr1}, 0(r24)
0004bc  16127302  vadd.f.mz.rn vr4{mr1}, vr6, vr7
0004c0  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0004c4  46104e02  vstore_mask16.mz vr4{mr1}, 0(r28)
0004c8  46101602  vstore_mask16.mz vr1{mr1}, 0(r12)
0004cc  00a00000  mfence { lm }
0004d0  630e0fd7  loadli.w r28,  -5248(r30)
0004d4  6346ffd6  loadli.w r12,  -5252(r30)
0004d8  6347eeff  loadli.w r14,  -12(r28)
0004dc  e306eeff  loadli.w r13,  -16(r28)
0004e0  e308feff  loadli.w r17,  -8(r28)
0004e4  e34a1e00  loadli.w r21,  12(r28)
0004e8  6349feff  loadli.w r18,  -4(r28)
0004ec  e3090e00  loadli.w r19,  0(r28)
0004f0  1f061600  addli r12, r12, 8
0004f4  17283700  xor r16, r14, r3
0004f8  97a73600  xor r15, r13, r3
0004fc  17aa3800  xor r20, r17, r3
000500  17ac3a00  xor r24, r21, r3
000504  0f080800  exp.f.rn r16, r16
000508  8f870700  exp.f.rn r15, r15
00050c  0f0a0a00  exp.f.rn r20, r20
000510  0f0c0c00  exp.f.rn r24, r24
000514  0b684810  add.f.rn r16, r16, r4
000518  8be74710  add.f.rn r15, r15, r4
00051c  0b6c4c10  add.f.rn r24, r24, r4
000520  0f070719  div.f.rn r14, r14, r16
000524  8f86f618  div.f.rn r13, r13, r15
000528  e3470e00  loadli.w r15,  4(r28)
00052c  63081e00  loadli.w r16,  8(r28)
000530  17ab3700  xor r22, r15, r3
000534  972b3800  xor r23, r16, r3
000538  0f0b0b00  exp.f.rn r22, r22
00053c  8f8b0b00  exp.f.rn r23, r23
000540  0b6b4b10  add.f.rn r22, r22, r4
000544  8beb4b10  add.f.rn r23, r23, r4
000548  674feefe  storeli.w r14, -12(r28)
00054c  0b674a10  add.f.rn r14, r20, r4
000550  17aa3900  xor r20, r19, r3
000554  670fdefe  storeli.w r13, -16(r28)
000558  97263900  xor r13, r18, r3
00055c  8f860600  exp.f.rn r13, r13
000560  0f0a0a00  exp.f.rn r20, r20
000564  8be64610  add.f.rn r13, r13, r4
000568  0b6a4a10  add.f.rn r20, r20, r4
00056c  8f876719  div.f.rn r15, r15, r22
000570  0f087819  div.f.rn r16, r16, r23
000574  0f87e818  div.f.rn r14, r17, r14
000578  8f06d918  div.f.rn r13, r18, r13
00057c  8f884919  div.f.rn r17, r19, r20
000580  0f898a19  div.f.rn r18, r21, r24
000584  6740fe00  storeli.w r15, 4(r28)
000588  e7000e01  storeli.w r16, 8(r28)
00058c  e70feefe  storeli.w r14, -8(r28)
000590  13071604  setlt.u r14, r12, r1
000594  e74fdefe  storeli.w r13, -4(r28)
000598  67001e01  storeli.w r17, 0(r28)
00059c  e7402e01  storeli.w r18, 12(r28)
0005a0  1f0e4e00  addli r28, r28, 32
0005a4  bb5c07fe  bneq r14, zero, -204
0005a8  1f068fd7  addli r12, r30, -5184
0005ac  00a00000  mfence { lm }
0005b0  1f8b0500  addli r22, r11, 0
0005b4  9f0b0d00  addli r23, r26, 0
0005b8  1f8c0400  addli r24, r9, 0
0005bc  1f0e0400  addli r28, r8, 0
0005c0  e3065fd7  loadli.w r13,  -5208(r30)
0005c4  63483fd7  loadli.w r16,  -5220(r30)
0005c8  63074fd7  loadli.w r14,  -5216(r30)
0005cc  e3073fd7  loadli.w r15,  -5224(r30)
0005d0  e3081fd7  loadli.w r17,  -5240(r30)
0005d4  63491fd7  loadli.w r18,  -5236(r30)
0005d8  e3092fd7  loadli.w r19,  -5232(r30)
0005dc  634a2fd7  loadli.w r20,  -5228(r30)
0005e0  e34a0fd7  loadli.w r21,  -5244(r30)
0005e4  42100602  vload_mask16.mz vr0{mr1}, 0(r12)
0005e8  63464fd7  loadli.w r12,  -5212(r30)
0005ec  42910602  vload_mask16.mz vr2{mr1}, 0(r13)
0005f0  c2110702  vload_mask16.mz vr3{mr1}, 0(r14)
0005f4  42920702  vload_mask16.mz vr4{mr1}, 0(r15)
0005f8  c2920902  vload_mask16.mz vr5{mr1}, 0(r19)
0005fc  42130a02  vload_mask16.mz vr6{mr1}, 0(r20)
000600  c2100602  vload_mask16.mz vr1{mr1}, 0(r12)
000604  06100000  vfloat2fp16_l.rn vr0, vr0
000608  06d00000  vfloat2fp16_h.rn vr0, vr1
00060c  86100100  vfloat2fp16_l.rn vr1, vr2
000610  42910802  vload_mask16.mz vr2{mr1}, 0(r17)
000614  46800302  vstore.mz vr0{mr1}, 0(r7)
000618  42100802  vload_mask16.mz vr0{mr1}, 0(r16)
00061c  86d00100  vfloat2fp16_h.rn vr1, vr3
000620  e3437fd7  loadli.w r7,  -5188(r30)
000624  c2110902  vload_mask16.mz vr3{mr1}, 0(r18)
000628  46801302  vstore.mz vr1{mr1}, 0(r7)
00062c  e3037fd7  loadli.w r7,  -5192(r30)
000630  c2100b02  vload_mask16.mz vr1{mr1}, 0(r22)
000634  06500000  vfloat2fp16_h.rn vr0, vr0
000638  06100200  vfloat2fp16_l.rn vr0, vr4
00063c  42120e02  vload_mask16.mz vr4{mr1}, 0(r28)
000640  46800302  vstore.mz vr0{mr1}, 0(r7)
000644  06100100  vfloat2fp16_l.rn vr0, vr2
000648  e3436fd7  loadli.w r7,  -5196(r30)
00064c  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
000650  06d00100  vfloat2fp16_h.rn vr0, vr3
000654  c2110c02  vload_mask16.mz vr3{mr1}, 0(r24)
000658  46800302  vstore.mz vr0{mr1}, 0(r7)
00065c  06900200  vfloat2fp16_l.rn vr0, vr5
000660  c2920c02  vload_mask16.mz vr5{mr1}, 0(r25)
000664  9f030006  addli r7, zero, 768
000668  93037304  setlt.u r7, r6, r7
00066c  1f030302  addli r6, r6, 256
000670  06500300  vfloat2fp16_h.rn vr0, vr6
000674  46000502  vstore.mz vr0{mr1}, 0(r10)
000678  42900a02  vload_mask16.mz vr0{mr1}, 0(r21)
00067c  06100000  vfloat2fp16_l.rn vr0, vr0
000680  06d00000  vfloat2fp16_h.rn vr0, vr1
000684  46800d02  vstore.mz vr0{mr1}, 0(r27)
000688  06100100  vfloat2fp16_l.rn vr0, vr2
00068c  06d00100  vfloat2fp16_h.rn vr0, vr3
000690  46000102  vstore.mz vr0{mr1}, 0(r2)
000694  06100200  vfloat2fp16_l.rn vr0, vr4
000698  06d00200  vfloat2fp16_h.rn vr0, vr5
00069c  46800202  vstore.mz vr0{mr1}, 0(r5)
0006a0  bbf103fe  bneq r7, zero, -900
0006a4  9f03dfd6  addli r7, r30, -5272
0006a8  9f04cfd6  addli r9, r30, -5280
0006ac  1f110000  addli r2, zero, 1
0006b0  9f050010  addli r11, zero, 2048
0006b4  ebd20300  load.d r[6:7], 0(r7)
0006b8  ebd30400  load.d r[8:9], 0(r9)
0006bc  00a00000  mfence { lm }
0006c0  97b22202  sll.d r[6:7], r[6:7], r2
0006c4  2b0100f0  lui r2, 983040
0006c8  8ba25310  add.ul r[6:7], r[8:9], r[6:7]
0006cc  e3036fd7  loadli.w r7,  -5200(r30)
0006d0  17912500  or r2, r11, r2
0006d4  7fb17200  s_lm2gm r2, r7, 0(r[6:7])
0006d8  2b014000  lui r2, 1024
0006dc  00a00200  mfence { lm, gm }
0006e0  6305ffd6  loadli.w r10,  -5256(r30)
0006e4  6343efd6  loadli.w r6,  -5260(r30)
0006e8  1b251500  xori r10, r10, 1
0006ec  9f020300  addli r5, r6, 0
0006f0  bf2e23fc  blt.s r6, r2, -1112
0006f4  9f0e8fd6  addli sp, r30, -5312
0006f8  e38f2e29  loadli.w r31,  5264(sp)
0006fc  63cf2e29  loadli.w r30,  5268(sp)
000700  638e3e29  loadli.w r28,  5272(sp)
000704  e3cd3e29  loadli.w r27,  5276(sp)
000708  638d4e29  loadli.w r26,  5280(sp)
00070c  e3cc4e29  loadli.w r25,  5284(sp)
000710  638c5e29  loadli.w r24,  5288(sp)
000714  e3cb5e29  loadli.w r23,  5292(sp)
000718  638b6e29  loadli.w r22,  5296(sp)
00071c  e3ca6e29  loadli.w r21,  5300(sp)
000720  638a7e29  loadli.w r20,  5304(sp)
000724  e3c97e29  loadli.w r19,  5308(sp)
000728  9f8e8e29  addli sp, sp, 5312
00072c  5f800f00  jr r31, 0
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
