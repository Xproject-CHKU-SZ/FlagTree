000000  17200000  xor zero, zero, zero
000004  1f420000  addli r4, zero, 4
000008  1f041000  addli r8, zero, 8
00000c  9f77f0ff  addli r15, zero, -1
000010  80310002  core_id r3
000014  00510102  load_param_i r2, 2
000018  ab800000  lui r1, 8
00001c  ab020000  lui r5, 0
000020  9f82020a  addli r5, r5, 1280
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
000078  9f096000  addli r19, zero, 48
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
0000dc  9f8e8ed6  addli sp, sp, -5312
0000e0  1f8f0e29  addli r30, sp, 5248
0000e4  9f01000a  addli r3, zero, 1280
0000e8  abf2ffff  lui r5, 1048575
0000ec  1f130000  addli r6, zero, 1
0000f0  eb508f02  load.d r[2:3], 40(r30)
0000f4  b381312e  .word 0x2e3181b3
0000f8  9b92e2ff  ori r5, r5, 4094
0000fc  3303632c  .word 0x2c630333
000100  6b5b0f02  load.d r[23:24], 32(r30)
000104  3384822a  .word 0x2a828433
000108  8f911166  .word 0x6611918f
00010c  0bb86148  max.sl r[17:18], r[4:5], r[7:8]
000110  b3025028  .word 0x285002b3
000114  9f03dfd7  addli r7, r30, -5144
000118  97018802  and.d r[4:5], r[17:18], r[9:10]
00011c  1f04cfd7  addli r8, r30, -5152
000120  9f046fd7  addli r9, r30, -5200
000124  13a25100  seteq.d r4, r[4:5], r[6:7]
000128  eb520f01  load.d r[6:7], 16(r30)
00012c  e3013f00  loadli.w r3,  24(r30)
000130  73b05300  store.d r[6:7], 0(r7)
000134  eb528f00  load.d r[6:7], 8(r30)
000138  73305400  store.d r[6:7], 0(r8)
00013c  eb520f00  load.d r[6:7], 0(r30)
000140  73b05400  store.d r[6:7], 0(r9)
000144  9f027fd7  addli r5, r30, -5192
000148  73b06201  store.d r[23:24], 0(r5)
00014c  3b220202  bneq r4, zero, 1160
000150  00320002  core_id r4
000154  9f221000  addli r5, zero, 10
000158  2b050000  lui r10, 0
00015c  93824204  setlt.u r5, r5, r4
000160  1f050500  addli r10, r10, 0
000164  bbb00200  bneq r5, zero, 44
000168  9f120000  addli r5, zero, 1
00016c  97b24200  sll r5, r5, r4
000170  9b821241  andi r5, r5, 1041
000174  37f00200  beq r5, zero, 28
000178  9bb21000  slli r5, r1, 1
00017c  2b0300f0  lui r6, 983040
000180  1f046fd7  addli r8, r30, -5200
000184  97926200  or r5, r5, r6
000188  6b530400  load.d r[7:8], 0(r8)
00018c  ff42a300  bl_gm2lm r5, r10, 0(r[7:8])
000190  80d20002  load_param_i r5, 1
000194  00530102  load_param_i r6, 2
000198  9f077fd7  addli r15, r30, -5192
00019c  80550002  load_param_i r11, 0
0001a0  0b135320  mul.s r6, r6, r5
0001a4  ebd60700  load.d r[14:15], 0(r15)
0001a8  8b954250  fmac.s r11, r5, r4
0001ac  00a00000  mfence { lm }
0001b0  3303632c  .word 0x2c630333
0001b4  3382452e  .word 0x2e458233
0001b8  0f946670  mod.sl r[9:10], r[14:15], r[7:8]
0001bc  0f936664  .word 0x6466930f
0001c0  93358204  setlt.sl r11, r[5:6], r[9:10]
0001c4  0b348240  min.sl r[9:10], r[5:6], r[9:10]
0001c8  0b344350  fmac.sl r[9:10], r[7:8], r[5:6]
0001cc  b385b52e  .word 0x2eb585b3
0001d0  0b22b310  add.ul r[5:6], r[7:8], r[12:13]
0001d4  8b35d440  min.sl r[12:13], r[9:10], r[14:15]
0001d8  0b228210  add.ul r[5:6], r[5:6], r[9:10]
0001dc  0b34d240  min.sl r[9:10], r[5:6], r[14:15]
0001e0  abf20000  lui r5, 15
0001e4  1332b406  setle.sl r4, r[9:10], r[12:13]
0001e8  9b92f2ff  ori r5, r5, 4095
0001ec  80a10204  csr_set csr3, r5
0001f0  00d00100  sync_group
0001f4  3b7d0202  bneq r4, zero, 1884
0001f8  9f470000  addli r15, zero, 4
0001fc  9f020fd8  addli r5, r30, -5120
000200  2383f001  andi.d r[7:8], r[2:3], 31
000204  9f069fd7  addli r13, r30, -5176
000208  8b39b418  sub.sl r[20:21], r[9:10], r[12:13]
00020c  9bba1000  slli r21, r1, 1
000210  1f1e0000  addli r28, zero, 1
000214  1f2d0000  addli r26, zero, 2
000218  0b92f030  div.s r4, r1, r15
00021c  73b06600  store.d r[7:8], 0(r13)
000220  1f890214  addli r18, r5, 2560
000224  1b934200  ori r6, r5, 4
000228  e70b6fd6  storeli.w r6, -5192(r30)
00022c  670c2fd7  storeli.w r18, -5184(r30)
000230  1b3c2200  slli r24, r4, 2
000234  1b323200  slli r4, r4, 3
000238  8b924210  add.s r5, r5, r4
00023c  8b1da210  add.s r27, r4, r10
000240  8b9c8019  sub.s r25, r1, r24
000244  1f02afd7  addli r4, r30, -5168
000248  670b5fd6  storeli.w r5, -5200(r30)
00024c  9f02bfd7  addli r5, r30, -5160
000250  73300201  store.d r[17:18], 0(r4)
000254  73b08200  store.d r[9:10], 0(r5)
000258  db090000  j 76
00025c  9f0bdfd7  addli r23, r30, -5144
000260  1f00ffd7  addli zero, r30, -5128
000264  1f0bbfd7  addli r22, r30, -5160
000268  00a00300  mfence { lm, sm, gm }
00026c  2b0200f0  lui r4, 983040
000270  8ba50511  add.ul r[12:13], r[12:13], r[17:18]
000274  8bb90919  sub.sl r[20:21], r[20:21], r[17:18]
000278  eb560000  load.d r[14:15], 0(zero)
00027c  6bd30b00  load.d r[7:8], 0(r23)
000280  6b540b00  load.d r[9:10], 0(r22)
000284  17200000  xor zero, zero, zero
000288  0b23d310  add.ul r[7:8], r[7:8], r[14:15]
00028c  e306efd7  loadli.w r13,  -5136(r30)
000290  93b28504  setlt.sl r5, r[12:13], r[9:10]
000294  17924600  or r4, r13, r4
000298  7f322301  s_lm2gm r4, r18, 0(r[7:8])
00029c  00a00200  mfence { lm, gm }
0002a0  b7ca0202  beq r5, zero, 1712
0002a4  0b32b418  sub.sl r[5:6], r[9:10], r[12:13]
0002a8  0bb41520  mul.sl r[9:10], r[12:13], r[2:3]
0002ac  1f00cfd7  addli zero, r30, -5152
0002b0  0b320241  min.sl r[5:6], r[5:6], r[17:18]
0002b4  173bc403  sll.d r[23:24], r[9:10], r28
0002b8  2b0400f0  lui r8, 983040
0002bc  eb560000  load.d r[14:15], 0(zero)
0002c0  17200000  xor zero, zero, zero
0002c4  1f00ffd7  addli zero, r30, -5128
0002c8  0b331220  mul.sl r[7:8], r[5:6], r[2:3]
0002cc  8ba66611  add.ul r[14:15], r[14:15], r[23:24]
0002d0  73306001  store.d r[23:24], 0(zero)
0002d4  17200000  xor zero, zero, zero
0002d8  9b341300  slli r9, r6, 1
0002dc  17948400  or r8, r9, r8
0002e0  670f9fd6  storeli.w r9, -5136(r30)
0002e4  7fa42601  l_gm2lm r8, r18, 0(r[14:15])
0002e8  bf12a201  blt.s r4, r26, 164
0002ec  1f089fd7  addli r16, r30, -5176
0002f0  33048028  .word 0x28800433
0002f4  eb560800  load.d r[14:15], 0(r16)
0002f8  13a48600  seteq.d r8, r[14:15], r[9:10]
0002fc  3b160400  bneq r8, zero, 388
000300  63096fd7  loadli.w r18,  -5200(r30)
000304  63047fd7  loadli.w r8,  -5192(r30)
000308  1f0d0000  addli r26, zero, 0
00030c  db020000  j 20
000310  1f1d0d00  addli r26, r26, 1
000314  0b145411  add.s r8, r8, r21
000318  0b195911  add.s r18, r18, r21
00031c  b7664d00  beq r26, r4, 440
000320  3f81f000  blt.s r1, r15, 64
000324  1f070000  addli r14, zero, 0
000328  1f4b0500  addli r22, r10, 4
00032c  9f060400  addli r13, r8, 0
000330  eb34cbff  load.hu r9, -4(r22)
000334  6b38ebff  load.hu r16, -2(r22)
000338  eb380b00  load.hu r17, 0(r22)
00033c  eb3b2b00  load.hu r23, 2(r22)
000340  1f470700  addli r14, r14, 4
000344  1f0b1b00  addli r22, r22, 8
000348  739e96fe  store.h r9, -4(r13)
00034c  739f06ff  store.h r16, -2(r13)
000350  73901601  store.h r17, 0(r13)
000354  73917601  store.h r23, 2(r13)
000358  9f861600  addli r13, r13, 8
00035c  3f5f87ff  blt.s r14, r24, -44
000360  9f840d00  addli r9, r27, 0
000364  9f060900  addli r13, r18, 0
000368  1f870c00  addli r14, r25, 0
00036c  cb9e80ff  ble.s r1, r24, -92
000370  6bb80400  load.hu r16, 0(r9)
000374  1f77f7ff  addli r14, r14, -1
000378  9fa40400  addli r9, r9, 2
00037c  73900601  store.h r16, 0(r13)
000380  9fa60600  addli r13, r13, 2
000384  bb3f07fe  bneq r14, zero, -20
000388  5bf1ffff  j -120
00038c  00a00000  mfence { lm }
000390  2bf2ffff  lui r4, 1048575
000394  1b1202fc  ori r4, r4, 4032
000398  17024300  and r4, r6, r4
00039c  3f02c201  blt.s r4, r28, 128
0003a0  9f020000  addli r5, zero, 0
0003a4  9f060500  addli r13, r10, 0
0003a8  1f070900  addli r14, r18, 0
0003ac  42800602  vload.mz vr0{mr1}, 0(r13)
0003b0  42010702  vload.mz vr2{mr1}, 0(r14)
0003b4  1f848600  addli r8, r13, 64
0003b8  9f828200  addli r5, r5, 64
0003bc  9f860601  addli r13, r13, 128
0003c0  c2000402  vload.mz vr1{mr1}, 0(r8)
0003c4  1f048700  addli r8, r14, 64
0003c8  c2010402  vload.mz vr3{mr1}, 0(r8)
0003cc  06320000  vfp162float_l.rn vr4, vr0
0003d0  06330100  vfp162float_l.rn vr6, vr2
0003d4  06700000  vfp162float_h.rn vr0, vr0
0003d8  06710100  vfp162float_h.rn vr2, vr2
0003dc  86b20000  vfp162float_l.rn vr5, vr1
0003e0  86f00000  vfp162float_h.rn vr1, vr1
0003e4  22934102  vmac.f.mz.rn vr6{mr1}, r3, vr4
0003e8  86b30100  vfp162float_l.rn vr7, vr3
0003ec  22910102  vmac.f.mz.rn vr2{mr1}, r3, vr0
0003f0  86f10100  vfp162float_h.rn vr3, vr3
0003f4  06100300  vfloat2fp16_l.rn vr0, vr6
0003f8  a2935102  vmac.f.mz.rn vr7{mr1}, r3, vr5
0003fc  a2911102  vmac.f.mz.rn vr3{mr1}, r3, vr1
000400  06500100  vfloat2fp16_h.rn vr0, vr2
000404  46000702  vstore.mz vr0{mr1}, 0(r14)
000408  06900300  vfloat2fp16_l.rn vr0, vr7
00040c  1f070701  addli r14, r14, 128
000410  06d00100  vfloat2fp16_h.rn vr0, vr3
000414  46000402  vstore.mz vr0{mr1}, 0(r8)
000418  3fde42fe  blt.s r5, r4, -108
00041c  4b0943fe  ble.s r6, r4, -448
000420  0b343841  min.sl r[9:10], r[17:18], r[20:21]
000424  abf2ffff  lui r5, 1048575
000428  0bb48020  mul.sl r[9:10], r[2:3], r[9:10]
00042c  9b9202f8  ori r5, r5, 3968
000430  1b341400  slli r8, r8, 1
000434  17045400  and r8, r8, r5
000438  8b128910  add.s r5, r18, r8
00043c  8b16a410  add.s r13, r8, r10
000440  42800602  vload.mz vr0{mr1}, 0(r13)
000444  c2800202  vload.mz vr1{mr1}, 0(r5)
000448  1f024200  addli r4, r4, 32
00044c  9f868600  addli r13, r13, 64
000450  06310000  vfp162float_l.rn vr2, vr0
000454  86b10000  vfp162float_l.rn vr3, vr1
000458  06700000  vfp162float_h.rn vr0, vr0
00045c  86f00000  vfp162float_h.rn vr1, vr1
000460  a2912102  vmac.f.mz.rn vr3{mr1}, r3, vr2
000464  a2900102  vmac.f.mz.rn vr1{mr1}, r3, vr0
000468  06900100  vfloat2fp16_l.rn vr0, vr3
00046c  06d00000  vfloat2fp16_h.rn vr0, vr1
000470  46800202  vstore.mz vr0{mr1}, 0(r5)
000474  9f828200  addli r5, r5, 64
000478  3f2f62fe  blt.s r4, r6, -56
00047c  5bbcffff  j -544
000480  9f060fd8  addli r13, r30, -5120
000484  1f070000  addli r14, zero, 0
000488  5b020000  j 16
00048c  1f170700  addli r14, r14, 1
000490  8b965611  add.s r13, r13, r21
000494  37014700  beq r14, r4, 64
000498  bfdfc0ff  blt.s r1, r28, -12
00049c  1f090000  addli r18, zero, 0
0004a0  1f040500  addli r8, r10, 0
0004a4  9f840600  addli r9, r13, 0
0004a8  42000402  vload.mz vr0{mr1}, 0(r8)
0004ac  1f094900  addli r18, r18, 32
0004b0  1f048400  addli r8, r8, 64
0004b4  86300000  vfp162float_l.rn vr1, vr0
0004b8  06700000  vfp162float_h.rn vr0, vr0
0004bc  06500000  vfloat2fp16_h.rn vr0, vr0
0004c0  06900000  vfloat2fp16_l.rn vr0, vr1
0004c4  46800402  vstore.mz vr0{mr1}, 0(r9)
0004c8  9f848400  addli r9, r9, 64
0004cc  3f7f19fe  blt.s r18, r1, -36
0004d0  dbf7ffff  j -68
0004d4  00a00000  mfence { lm }
0004d8  2bf2ffff  lui r4, 1048575
0004dc  63098fd7  loadli.w r18,  -5184(r30)
0004e0  1b1202fc  ori r4, r4, 4032
0004e4  17024300  and r4, r6, r4
0004e8  bf71c201  blt.s r4, r28, 124
0004ec  9f020fd8  addli r5, r30, -5120
0004f0  9f060000  addli r13, zero, 0
0004f4  9f840214  addli r9, r5, 2560
0004f8  42800202  vload.mz vr0{mr1}, 0(r5)
0004fc  1f848200  addli r8, r5, 64
000500  9f868600  addli r13, r13, 64
000504  42810402  vload.mz vr2{mr1}, 0(r9)
000508  c2000402  vload.mz vr1{mr1}, 0(r8)
00050c  1f848214  addli r8, r5, 2624
000510  9f820201  addli r5, r5, 128
000514  42020402  vload.mz vr4{mr1}, 0(r8)
000518  86310000  vfp162float_l.rn vr3, vr0
00051c  06700000  vfp162float_h.rn vr0, vr0
000520  06330100  vfp162float_l.rn vr6, vr2
000524  06710100  vfp162float_h.rn vr2, vr2
000528  86b20000  vfp162float_l.rn vr5, vr1
00052c  86f00000  vfp162float_h.rn vr1, vr1
000530  86330200  vfp162float_l.rn vr7, vr4
000534  06720200  vfp162float_h.rn vr4, vr4
000538  22933102  vmac.f.mz.rn vr6{mr1}, r3, vr3
00053c  22910102  vmac.f.mz.rn vr2{mr1}, r3, vr0
000540  a2935102  vmac.f.mz.rn vr7{mr1}, r3, vr5
000544  22921102  vmac.f.mz.rn vr4{mr1}, r3, vr1
000548  06100300  vfloat2fp16_l.rn vr0, vr6
00054c  06500100  vfloat2fp16_h.rn vr0, vr2
000550  46800402  vstore.mz vr0{mr1}, 0(r9)
000554  06900300  vfloat2fp16_l.rn vr0, vr7
000558  06500200  vfloat2fp16_h.rn vr0, vr4
00055c  46000402  vstore.mz vr0{mr1}, 0(r8)
000560  3fde46fe  blt.s r13, r4, -108
000564  9f02afd7  addli r5, r30, -5168
000568  1f2d0000  addli r26, zero, 2
00056c  6bd80200  load.d r[17:18], 0(r5)
000570  cb3343fe  ble.s r6, r4, -788
000574  0b343841  min.sl r[9:10], r[17:18], r[20:21]
000578  abf2ffff  lui r5, 1048575
00057c  0bb48020  mul.sl r[9:10], r[2:3], r[9:10]
000580  9b9202f8  ori r5, r5, 3968
000584  1b341400  slli r8, r8, 1
000588  97025400  and r5, r8, r5
00058c  1f040fd8  addli r8, r30, -5120
000590  8b125410  add.s r5, r8, r5
000594  1f840214  addli r8, r5, 2560
000598  42800202  vload.mz vr0{mr1}, 0(r5)
00059c  1f024200  addli r4, r4, 32
0005a0  9f828200  addli r5, r5, 64
0005a4  c2000402  vload.mz vr1{mr1}, 0(r8)
0005a8  06310000  vfp162float_l.rn vr2, vr0
0005ac  06700000  vfp162float_h.rn vr0, vr0
0005b0  86b10000  vfp162float_l.rn vr3, vr1
0005b4  86f00000  vfp162float_h.rn vr1, vr1
0005b8  a2912102  vmac.f.mz.rn vr3{mr1}, r3, vr2
0005bc  a2900102  vmac.f.mz.rn vr1{mr1}, r3, vr0
0005c0  06900100  vfloat2fp16_l.rn vr0, vr3
0005c4  06d00000  vfloat2fp16_h.rn vr0, vr1
0005c8  46000402  vstore.mz vr0{mr1}, 0(r8)
0005cc  3f2f62fe  blt.s r4, r6, -56
0005d0  db91ffff  j -884
0005d4  1f020004  addli r4, zero, 512
0005d8  a7f2f003  addli.d r[6:7], r[2:3], 511
0005dc  80530102  load_param_i r7, 2
0005e0  27080b00  addli.d r[17:18], r[23:24], 0
0005e4  3305a228  .word 0x28a20533
0005e8  0f92a260  div.sl r[5:6], r[6:7], r[11:12]
0005ec  00d30002  load_param_i r6, 1
0005f0  8b936320  mul.s r7, r7, r6
0005f4  b383732e  .word 0x2e7383b3
0005f8  23320202  slli.d r[5:6], r[5:6], 32
0005fc  23520202  srai.d r[5:6], r[5:6], 32
000600  0b326221  mul.sl r[5:6], r[5:6], r[23:24]
000604  0f167270  mod.sl r[13:14], r[5:6], r[8:9]
000608  0f177264  .word 0x6472170f
00060c  80330002  core_id r7
000610  00540002  load_param_i r8, 0
000614  0b147350  fmac.s r8, r6, r7
000618  33036428  .word 0x28640333
00061c  0b39c340  min.sl r[19:20], r[7:8], r[13:14]
000620  0b396750  fmac.sl r[19:20], r[15:16], r[7:8]
000624  1333c304  setlt.sl r6, r[7:8], r[13:14]
000628  0b344940  min.sl r[9:10], r[19:20], r[5:6]
00062c  0f1a6461  div.sl r[21:22], r[9:10], r[23:24]
000630  0f1c6471  mod.sl r[25:26], r[9:10], r[23:24]
000634  3303632c  .word 0x2c630333
000638  0b236710  add.ul r[7:8], r[15:16], r[7:8]
00063c  0b232311  add.ul r[7:8], r[7:8], r[19:20]
000640  8b324340  min.sl r[6:7], r[7:8], r[5:6]
000644  9f039fd7  addli r7, r30, -5176
000648  1f121000  addli r4, zero, 9
00064c  73b05300  store.d r[6:7], 0(r7)
000650  13b38206  setle.sl r6, r[6:7], r[9:10]
000654  abf2ffff  lui r5, 1048575
000658  97364a02  sll.d r[14:15], r[21:22], r4
00065c  1f020fd8  addli r4, r30, -5120
000660  0bb9d018  sub.sl r[19:20], r[2:3], r[14:15]
000664  9f0a0210  addli r21, r4, 2048
000668  8b3da940  min.sl r[28:29], r[19:20], r[11:12]
00066c  3b710300  bneq r6, zero, 92
000670  9f076fd7  addli r15, r30, -5200
000674  9f120000  addli r5, zero, 1
000678  2b0600f0  lui r12, 983040
00067c  9bb31d00  slli r7, r27, 1
000680  0b3b1c20  mul.sl r[23:24], r[25:26], r[2:3]
000684  6bd90700  load.d r[19:20], 0(r15)
000688  17b55602  sll.d r[11:12], r[14:15], r5
00068c  1796c300  or r12, r7, r12
000690  173b5b02  sll.d r[23:24], r[23:24], r5
000694  0b29a910  add.ul r[19:20], r[19:20], r[11:12]
000698  7f264900  l_gm2lm r12, r4, 0(r[19:20])
00069c  1f09cfd7  addli r18, r30, -5152
0006a0  6b520900  load.d r[5:6], 0(r18)
0006a4  2b0600f0  lui r12, 983040
0006a8  9793c300  or r7, r7, r12
0006ac  0b226211  add.ul r[5:6], r[5:6], r[23:24]
0006b0  0b22a210  add.ul r[5:6], r[5:6], r[11:12]
0006b4  ff235201  l_gm2lm r7, r21, 0(r[5:6])
0006b8  27820600  addli.d r[5:6], r[14:15], 0
0006bc  00a00200  mfence { lm, gm }
0006c0  37500300  beq r6, zero, 20
0006c4  db510000  j 652
0006c8  1b92f2ff  ori r4, r5, 4095
0006cc  33124228  .word 0x28421233
0006d0  3b0a0300  bneq r6, zero, 640
0006d4  9f030fd8  addli r7, r30, -5120
0006d8  1f030004  addli r6, zero, 512
0006dc  1f058fd7  addli r10, r30, -5184
0006e0  1f090000  addli r18, zero, 0
0006e4  1f1d0000  addli r26, zero, 1
0006e8  9f830310  addli r7, r7, 2048
0006ec  e70d7fd6  storeli.w r7, -5160(r30)
0006f0  3303632c  .word 0x2c630333
0006f4  73306500  store.d r[7:8], 0(r10)
0006f8  1f030fd8  addli r6, r30, -5120
0006fc  9f030000  addli r7, zero, 0
000700  670d6fd6  storeli.w r6, -5168(r30)
000704  5b080000  j 64
000708  1f920300  addli r4, r7, 1
00070c  9f320000  addli r5, zero, 3
000710  1f059fd7  addli r10, r30, -5176
000714  9f05ffd7  addli r11, r30, -5128
000718  a7860900  addli.d r[14:15], r[20:21], 0
00071c  9f0d0b00  addli r27, r22, 0
000720  8b135238  mod.s r7, r4, r5
000724  6b520500  load.d r[5:6], 0(r10)
000728  6bdc0500  load.d r[25:26], 0(r11)
00072c  13334404  setlt.sl r6, r[9:10], r[5:6]
000730  e302bfd7  loadli.w r5,  -5160(r30)
000734  1bb2a300  slli r4, r7, 10
000738  8b9a4210  add.s r21, r5, r4
00073c  27820900  addli.d r[5:6], r[20:21], 0
000740  37480300  beq r6, zero, 528
000744  27140400  addli.d r[9:10], r[9:10], 1
000748  1f131000  addli r6, zero, 9
00074c  9f07ffd7  addli r15, r30, -5128
000750  1f06efd7  addli r12, r30, -5136
000754  8f190467  .word 0x6704198f
000758  0f150475  .word 0x7504150f
00075c  73308601  store.d r[25:26], 0(r12)
000760  97b96902  sll.d r[20:21], r[20:21], r6
000764  1f038fd7  addli r6, r30, -5184
000768  73b0a700  store.d r[11:12], 0(r15)
00076c  6b550300  load.d r[11:12], 0(r6)
000770  0bbb3019  sub.sl r[23:24], r[2:3], r[20:21]
000774  0b3bab40  min.sl r[23:24], r[23:24], r[11:12]
000778  3f52ab01  blt.s r22, r26, 148
00077c  13233203  setneq.d r6, r[5:6], r[20:21]
000780  17bca903  sll.d r[25:26], r[20:21], r26
000784  3b300300  bneq r6, zero, 12
000788  1b331b00  slli r6, r22, 1
00078c  5b060000  j 48
000790  1b36a900  slli r12, r18, 10
000794  1f050fd8  addli r10, r30, -5120
000798  1f086fd7  addli r16, r30, -5200
00079c  ab0700f0  lui r15, 983040
0007a0  1b331b00  slli r6, r22, 1
0007a4  1b260640  xori r12, r12, 1024
0007a8  9717f300  or r15, r6, r15
0007ac  0b16c510  add.s r12, r10, r12
0007b0  6b550800  load.d r[11:12], 0(r16)
0007b4  0b258511  add.ul r[11:12], r[11:12], r[25:26]
0007b8  ff27c500  l_gm2lm r15, r12, 0(r[11:12])
0007bc  9f350000  addli r11, zero, 3
0007c0  1f950300  addli r10, r7, 1
0007c4  1f08ffd7  addli r16, r30, -5128
0007c8  1f00cfd7  addli zero, r30, -5152
0007cc  0b15b538  mod.s r10, r10, r11
0007d0  eb550800  load.d r[12:13], 0(r16)
0007d4  ab0700f0  lui r15, 983040
0007d8  6b580000  load.d r[17:18], 0(zero)
0007dc  17200000  xor zero, zero, zero
0007e0  1713f300  or r6, r6, r15
0007e4  8bb51520  mul.sl r[12:13], r[12:13], r[2:3]
0007e8  97b5a503  sll.d r[12:13], r[12:13], r26
0007ec  1b35a500  slli r10, r10, 10
0007f0  8b25b810  add.ul r[12:13], r[17:18], r[12:13]
0007f4  6308bfd7  loadli.w r16,  -5160(r30)
0007f8  8ba58511  add.ul r[12:13], r[12:13], r[25:26]
0007fc  0b15a810  add.s r10, r16, r10
000800  7fa3a500  l_gm2lm r6, r10, 0(r[12:13])
000804  1f037fd7  addli r6, r30, -5192
000808  6b580300  load.d r[17:18], 0(r6)
00080c  2bf3ffff  lui r6, 1048575
000810  1b1303fc  ori r6, r6, 4032
000814  97876d00  and r15, r27, r6
000818  3f82a701  blt.s r15, r26, 128
00081c  6303afd7  loadli.w r6,  -5168(r30)
000820  1f0c0000  addli r24, zero, 0
000824  1f860a00  addli r12, r21, 0
000828  42000302  vload.mz vr0{mr1}, 0(r6)
00082c  42010602  vload.mz vr2{mr1}, 0(r12)
000830  1f058300  addli r10, r6, 64
000834  1f0c8c00  addli r24, r24, 64
000838  1f030301  addli r6, r6, 128
00083c  c2000502  vload.mz vr1{mr1}, 0(r10)
000840  1f058600  addli r10, r12, 64
000844  c2010502  vload.mz vr3{mr1}, 0(r10)
000848  06320000  vfp162float_l.rn vr4, vr0
00084c  06330100  vfp162float_l.rn vr6, vr2
000850  06700000  vfp162float_h.rn vr0, vr0
000854  06710100  vfp162float_h.rn vr2, vr2
000858  86b20000  vfp162float_l.rn vr5, vr1
00085c  86f00000  vfp162float_h.rn vr1, vr1
000860  22934102  vmac.f.mz.rn vr6{mr1}, r3, vr4
000864  86b30100  vfp162float_l.rn vr7, vr3
000868  22910102  vmac.f.mz.rn vr2{mr1}, r3, vr0
00086c  86f10100  vfp162float_h.rn vr3, vr3
000870  06100300  vfloat2fp16_l.rn vr0, vr6
000874  a2935102  vmac.f.mz.rn vr7{mr1}, r3, vr5
000878  a2911102  vmac.f.mz.rn vr3{mr1}, r3, vr1
00087c  06500100  vfloat2fp16_h.rn vr0, vr2
000880  46000602  vstore.mz vr0{mr1}, 0(r12)
000884  06900300  vfloat2fp16_l.rn vr0, vr7
000888  1f060601  addli r12, r12, 128
00088c  06d00100  vfloat2fp16_h.rn vr0, vr3
000890  46000502  vstore.mz vr0{mr1}, 0(r10)
000894  3f5efcfe  blt.s r24, r15, -108
000898  1bbc1d00  slli r24, r27, 1
00089c  4be1fd00  ble.s r27, r15, 88
0008a0  2bf3ffff  lui r6, 1048575
0008a4  e305afd7  loadli.w r11,  -5168(r30)
0008a8  1b1303f8  ori r6, r6, 3968
0008ac  17056c00  and r10, r24, r6
0008b0  0b93aa10  add.s r6, r21, r10
0008b4  0b96a510  add.s r12, r11, r10
0008b8  42000602  vload.mz vr0{mr1}, 0(r12)
0008bc  c2000302  vload.mz vr1{mr1}, 0(r6)
0008c0  9f874700  addli r15, r15, 32
0008c4  1f068600  addli r12, r12, 64
0008c8  06310000  vfp162float_l.rn vr2, vr0
0008cc  86b10000  vfp162float_l.rn vr3, vr1
0008d0  06700000  vfp162float_h.rn vr0, vr0
0008d4  86f00000  vfp162float_h.rn vr1, vr1
0008d8  a2912102  vmac.f.mz.rn vr3{mr1}, r3, vr2
0008dc  a2900102  vmac.f.mz.rn vr1{mr1}, r3, vr0
0008e0  06900100  vfloat2fp16_l.rn vr0, vr3
0008e4  06d00000  vfloat2fp16_h.rn vr0, vr1
0008e8  46000302  vstore.mz vr0{mr1}, 0(r6)
0008ec  1f038300  addli r6, r6, 64
0008f0  3fafb7ff  blt.s r15, r27, -56
0008f4  9f0cefd7  addli r25, r30, -5136
0008f8  9f0ddfd7  addli r27, r30, -5144
0008fc  17b6a603  sll.d r[13:14], r[14:15], r26
000900  13223201  seteq.d r4, r[5:6], r[20:21]
000904  6bd50c00  load.d r[11:12], 0(r25)
000908  00a00300  mfence { lm, sm, gm }
00090c  6bd70d00  load.d r[15:16], 0(r27)
000910  2b0300f0  lui r6, 983040
000914  0b351520  mul.sl r[11:12], r[11:12], r[2:3]
000918  97126c00  or r5, r24, r6
00091c  1735a503  sll.d r[11:12], r[11:12], r26
000920  0b25a710  add.ul r[11:12], r[15:16], r[11:12]
000924  0b25c510  add.ul r[11:12], r[11:12], r[13:14]
000928  ff325501  s_lm2gm r5, r21, 0(r[11:12])
00092c  9b221900  xori r5, r18, 1
000930  3b500200  bneq r4, zero, 20
000934  1bb3a200  slli r6, r5, 10
000938  1f050fd8  addli r10, r30, -5120
00093c  0b136510  add.s r6, r10, r6
000940  670d6fd6  storeli.w r6, -5168(r30)
000944  3b1702fe  bneq r4, zero, -572
000948  1f890200  addli r18, r5, 0
00094c  dbb7ffff  j -580
000950  9f0e0fd7  addli sp, r30, -5248
000954  9f8e0e29  addli sp, sp, 5248
000958  00a00300  mfence { lm, sm, gm }
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
0009a8  00100000  exit
0009ac  00100000  exit
0009b0  00100000  exit
0009b4  00100000  exit
0009b8  00100000  exit
0009bc  00100000  exit
0009c0  00100000  exit
0009c4  00100000  exit
0009c8  00100000  exit
0009cc  00100000  exit
0009d0  00100000  exit
0009d4  00100000  exit
0009d8  00100000  exit
0009dc  00100000  exit
0009e0  00100000  exit
0009e4  00100000  exit
0009e8  00100000  exit
0009ec  00100000  exit
0009f0  00100000  exit
0009f4  00100000  exit
0009f8  00100000  exit
0009fc  00100000  exit
000a00  00100000  exit
000a04  00100000  exit
000a08  00100000  exit
000a0c  00100000  exit
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
