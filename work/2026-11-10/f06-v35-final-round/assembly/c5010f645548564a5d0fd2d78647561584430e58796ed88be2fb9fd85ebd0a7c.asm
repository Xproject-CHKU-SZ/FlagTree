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
0000fc  cb415b01  ble.s r22, r21, 112
000100  ab10833a  lui r1, 239665
000104  80db0002  load_param_i r23, 1
000108  1f0c6001  addli r24, zero, 176
00010c  9f0c0010  addli r25, zero, 2048
000110  1f0d0006  addli r26, zero, 768
000114  9b9df026  ori r27, r1, 623
000118  8b904a31  div.s r1, r21, r20
00011c  eb510f01  load.d r[4:5], 16(r30)
000120  67820e00  storeli.w zero, 32(sp)
000124  e7c10e00  storeli.w zero, 28(sp)
000128  67c1ae01  storeli.w r26, 20(sp)
00012c  67819e01  storeli.w r25, 16(sp)
000130  e781be01  storeli.w r27, 24(sp)
000134  73b03e00  store.d r[4:5], 0(sp)
000138  6b528f00  load.d r[5:6], 8(r30)
00013c  8b903031  div.s r1, r1, r19
000140  27030200  addli.d r[7:8], r[5:6], 0
000144  27040200  addli.d r[9:10], r[5:6], 0
000148  8b908021  mul.s r1, r1, r24
00014c  0b911c18  sub.s r2, r25, r1
000150  e7801e00  storeli.w r1, 8(sp)
000154  0b118141  min.s r2, r2, r24
000158  e7c02e00  storeli.w r2, 12(sp)
00015c  6b510f00  load.d r[3:4], 0(r30)
000160  572f0000  jal 376
000164  8b9a7a11  add.s r21, r21, r23
000168  bfce6aff  blt.s r21, r22, -80
00016c  9f8e8e00  addli sp, sp, 64
000170  00a00300  mfence { lm, sm, gm }
000174  00100000  exit
000178  9f8e0ed5  addli sp, sp, -5504
00017c  67c5ee2b  storeli.w r30, 5460(sp)
000180  1f8f0e2b  addli r30, sp, 5504
000184  1f150000  addli r10, zero, 1
000188  e7c73e2b  storeli.w r19, 5500(sp)
00018c  e7874e2b  storeli.w r20, 5496(sp)
000190  67c75e2b  storeli.w r21, 5492(sp)
000194  67876e2b  storeli.w r22, 5488(sp)
000198  e7c67e2b  storeli.w r23, 5484(sp)
00019c  e7868e2b  storeli.w r24, 5480(sp)
0001a0  67c69e2b  storeli.w r25, 5476(sp)
0001a4  6786ae2b  storeli.w r26, 5472(sp)
0001a8  e7c5be2b  storeli.w r27, 5468(sp)
0001ac  e785ce2b  storeli.w r28, 5464(sp)
0001b0  6785fe2b  storeli.w r31, 5456(sp)
0001b4  e3004f00  loadli.w r1,  32(r30)
0001b8  63472f00  loadli.w r14,  20(r30)
0001bc  e3072f00  loadli.w r15,  16(r30)
0001c0  e3461f00  loadli.w r13,  12(r30)
0001c4  9f057fd6  addli r11, r30, -5320
0001c8  73b02500  store.d r[3:4], 0(r11)
0001cc  37b1a000  beq r1, r10, 76
0001d0  1f210000  addli r2, zero, 2
0001d4  3b922000  bneq r1, r2, 132
0001d8  e3403f00  loadli.w r1,  28(r30)
0001dc  37930000  beq r1, zero, 196
0001e0  80350002  core_id r11
0001e4  9f200000  addli r1, zero, 2
0001e8  37b3150a  beq r11, r1, 5324
0001ec  9f100000  addli r1, zero, 1
0001f0  3792150a  beq r11, r1, 5252
0001f4  3bf3050a  bneq r11, zero, 5340
0001f8  e3002f00  loadli.w r1,  16(r30)
0001fc  2b0100f0  lui r2, 983040
000200  9bb01000  slli r1, r1, 1
000204  97902000  or r1, r1, r2
000208  2b010000  lui r2, 0
00020c  1f010100  addli r2, r2, 0
000210  ff002200  l_gm2sm r1, r2, 0(r[5:6])
000214  db970200  j 5308
000218  e3403f00  loadli.w r1,  28(r30)
00021c  b7980002  beq r1, zero, 1572
000220  80300002  core_id r1
000224  1f210000  addli r2, zero, 2
000228  379a200c  beq r1, r2, 6788
00022c  1f110000  addli r2, zero, 1
000230  b791200a  beq r1, r2, 5220
000234  3bda000c  bneq r1, zero, 6804
000238  63012f00  loadli.w r2,  16(r30)
00023c  ab0100f0  lui r3, 983040
000240  1b311100  slli r2, r2, 1
000244  17113100  or r2, r2, r3
000248  ab410000  lui r3, 4
00024c  9f810100  addli r3, r3, 0
000250  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000254  db4e0300  j 6772
000258  e3403f00  loadli.w r1,  28(r30)
00025c  37f50004  beq r1, zero, 2396
000260  e3002f00  loadli.w r1,  16(r30)
000264  1f010010  addli r2, zero, 2048
000268  3b912008  bneq r1, r2, 4164
00026c  00350002  core_id r10
000270  9f200000  addli r1, zero, 2
000274  3719150e  beq r10, r1, 7748
000278  9f100000  addli r1, zero, 1
00027c  3708150e  beq r10, r1, 7680
000280  3b49050e  bneq r10, zero, 7760
000284  9f000040  addli r1, zero, 8192
000288  2b0100f0  lui r2, 983040
00028c  97902000  or r1, r1, r2
000290  2b810000  lui r2, 8
000294  1f010100  addli r2, r2, 0
000298  ff002200  l_gm2sm r1, r2, 0(r[5:6])
00029c  dbc60300  j 7732
0002a0  00330002  core_id r6
0002a4  bb000300  bneq r6, zero, 32
0002a8  e3002f00  loadli.w r1,  16(r30)
0002ac  2b0100f0  lui r2, 983040
0002b0  9bb01000  slli r1, r1, 1
0002b4  97902000  or r1, r1, r2
0002b8  2b310000  lui r2, 3
0002bc  1f010100  addli r2, r2, 0
0002c0  ff002200  l_gm2sm r1, r2, 0(r[5:6])
0002c4  abf00000  lui r1, 15
0002c8  63411f00  loadli.w r2,  12(r30)
0002cc  00200300  mfence { sm, gm }
0002d0  9b90f0ff  ori r1, r1, 4095
0002d4  80a10004  csr_set csr3, r1
0002d8  00d00100  sync_group
0002dc  4b556114  ble.s r2, r6, 10580
0002e0  e3002f00  loadli.w r1,  16(r30)
0002e4  63412f00  loadli.w r2,  20(r30)
0002e8  9f062000  addli r13, zero, 16
0002ec  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0002f0  1f140000  addli r8, zero, 1
0002f4  1f058fd7  addli r10, r30, -5184
0002f8  1f060002  addli r12, zero, 256
0002fc  2b08ffff  lui r16, 1048560
000300  2b09807f  lui r18, 522240
000304  ab09c07f  lui r19, 523264
000308  1f0a0001  addli r20, zero, 128
00030c  9f0a8000  addli r21, zero, 64
000310  1f0b4000  addli r22, zero, 32
000314  1bb21000  slli r4, r1, 1
000318  8b912010  add.s r3, r1, r2
00031c  b3800008  fix2float.rn r1, r1
000320  9b321100  slli r5, r2, 1
000324  e70b1fd4  storeli.w r1, -5448(r30)
000328  9ff0f1ff  addli r1, r3, -1
00032c  e74b4fd4  storeli.w r4, -5444(r30)
000330  8b932030  div.s r7, r1, r2
000334  abf0ffff  lui r1, 1048575
000338  9b95f0ff  ori r11, r1, 4095
00033c  9f000fd7  addli r1, r30, -5248
000340  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000344  6aa00622  vor.u.mz vr0{mr1}, r13, vr0
000348  9f008fd6  addli r1, r30, -5312
00034c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000350  ab700000  lui r1, 7
000354  9b98f0ff  ori r17, r1, 4095
000358  db080000  j 68
00035c  1f028fd5  addli r4, r30, -5440
000360  00a00000  mfence { lm }
000364  6b510f00  load.d r[3:4], 0(r30)
000368  ab0000f0  lui r1, 983040
00036c  eb540200  load.d r[10:11], 0(r4)
000370  63427fd5  loadli.w r4,  -5444(r30)
000374  0b219110  add.ul r[3:4], r[3:4], r[10:11]
000378  97101200  or r1, r4, r1
00037c  1f058fd7  addli r10, r30, -5184
000380  80540102  load_param_i r9, 2
000384  ff30a100  s_lm2gm r1, r10, 0(r[3:4])
000388  0b936410  add.s r6, r9, r6
00038c  00a00200  mfence { lm, gm }
000390  e3401f00  loadli.w r1,  12(r30)
000394  3f201300  blt.s r6, r1, 8
000398  5b130500  j 10392
00039c  e3001f00  loadli.w r1,  8(r30)
0003a0  9f047fd6  addli r9, r30, -5320
0003a4  8b101310  add.s r1, r6, r1
0003a8  8b90f020  mul.s r1, r1, r15
0003ac  b3900028  sext_int2long r[2:3], r1
0003b0  97bb8002  sll.d r[24:25], r[2:3], r8
0003b4  6bd10400  load.d r[3:4], 0(r9)
0003b8  ab0000f0  lui r1, 983040
0003bc  9f048fd5  addli r9, r30, -5440
0003c0  97101200  or r1, r4, r1
0003c4  73b07401  store.d r[24:25], 0(r9)
0003c8  0b217111  add.ul r[3:4], r[3:4], r[24:25]
0003cc  ff20a100  l_gm2lm r1, r10, 0(r[3:4])
0003d0  00a00200  mfence { lm, gm }
0003d4  bfdc8300  blt.s r7, r8, 820
0003d8  1f0e0000  addli r28, zero, 0
0003dc  9f0d0000  addli r27, zero, 0
0003e0  9f0b0000  addli r23, zero, 0
0003e4  db0c0000  j 100
0003e8  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
0003ec  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
0003f0  9f9b0b00  addli r23, r23, 1
0003f4  6a7106c0  vsrl.p vr2, r12, vr0
0003f8  ea7116c0  vsrl.p vr3, r12, vr1
0003fc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000400  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000404  6a710ac0  vsrl.p vr2, r20, vr0
000408  ea711ac0  vsrl.p vr3, r20, vr1
00040c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000410  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000414  6af10ac0  vsrl.p vr2, r21, vr0
000418  eaf11ac0  vsrl.p vr3, r21, vr1
00041c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000420  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000424  6a710bc0  vsrl.p vr2, r22, vr0
000428  ea711bc0  vsrl.p vr3, r22, vr1
00042c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000430  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000434  fa100040  vextracti.f r1, 0(vr0)
000438  7a910040  vextracti.f r2, 0(vr1)
00043c  0b6e1e10  add.f.rn r28, r28, r1
000440  8bed2d10  add.f.rn r27, r27, r2
000444  37bb7b00  beq r23, r7, 716
000448  9f800b00  addli r1, r23, 0
00044c  3730c700  beq r14, r12, 12
000450  97a0bb00  xor r1, r23, r11
000454  8b901310  add.s r1, r7, r1
000458  0b91e020  mul.s r2, r1, r14
00045c  0b912718  sub.s r2, r15, r2
000460  0b15e140  min.s r10, r2, r14
000464  1f010fd7  addli r2, r30, -5248
000468  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
00046c  92322002  vadd.s.mz vr5{mr1}, zero, vr2
000470  12322002  vadd.s.mz vr4{mr1}, zero, vr2
000474  92312002  vadd.s.mz vr3{mr1}, zero, vr2
000478  bf4d85fe  blt.s r10, r8, -144
00047c  8b911220  mul.s r3, r5, r1
000480  9f000fd7  addli r1, r30, -5248
000484  2b3c0000  lui r24, 3
000488  1f010000  addli r2, zero, 0
00048c  9f048fd7  addli r9, r30, -5184
000490  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
000494  1f0c0c00  addli r24, r24, 0
000498  12315002  vadd.s.mz vr2{mr1}, zero, vr5
00049c  92315002  vadd.s.mz vr3{mr1}, zero, vr5
0004a0  12325002  vadd.s.mz vr4{mr1}, zero, vr5
0004a4  8b1c3c10  add.s r25, r24, r3
0004a8  8b903410  add.s r1, r9, r3
0004ac  1f028fd6  addli r4, r30, -5312
0004b0  4a830c02  vloads.mz vr6{mr1}, 0(r25)
0004b4  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
0004b8  c2830002  vload.mz vr7{mr1}, 0(r1)
0004bc  1f020fd7  addli r4, r30, -5248
0004c0  1f8d8c00  addli r26, r25, 64
0004c4  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
0004c8  1f028100  addli r4, r2, 64
0004cc  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
0004d0  6a357802  vand.s.mz vr10{mr1}, r16, vr7
0004d4  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
0004d8  6a336802  vand.s.mz vr6{mr1}, r16, vr6
0004dc  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
0004e0  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0004e4  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
0004e8  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
0004ec  669503c0  vabs.f vr10, vr7
0004f0  6a348402  vand.s.mz vr8{mr1}, r8, vr8
0004f4  ea349402  vand.s.mz vr9{mr1}, r8, vr9
0004f8  7221a942  vlt.u.mz mr2{mr1}, r18, vr10
0004fc  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
000500  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
000504  12b48802  vadd.s.mz vr8{mr1}, r17, vr8
000508  92b49802  vadd.s.mz vr9{mr1}, r17, vr9
00050c  ea338802  vand.s.mz vr7{mr1}, r16, vr8
000510  661403c0  vabs.f vr8, vr6
000514  6a339802  vand.s.mz vr6{mr1}, r16, vr9
000518  eaa30934  vor.u.mh vr7{mr2}, r19, vr0
00051c  72218942  vlt.u.mz mr2{mr1}, r18, vr8
000520  6aa30934  vor.u.mh vr6{mr2}, r19, vr0
000524  4a040d02  vloads.mz vr8{mr1}, 0(r26)
000528  1f8d8000  addli r26, r1, 64
00052c  c2040d02  vload.mz vr9{mr1}, 0(r26)
000530  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
000534  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
000538  6a336802  vand.s.mz vr6{mr1}, r16, vr6
00053c  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
000540  ea349802  vand.s.mz vr9{mr1}, r16, vr9
000544  46807002  vstore.mz vr7{mr1}, 0(r1)
000548  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
00054c  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
000550  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
000554  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
000558  6a348802  vand.s.mz vr8{mr1}, r16, vr8
00055c  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
000560  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
000564  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
000568  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
00056c  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
000570  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
000574  ea349402  vand.s.mz vr9{mr1}, r8, vr9
000578  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
00057c  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
000580  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
000584  661505c0  vabs.f vr10, vr10
000588  661404c0  vabs.f vr8, vr8
00058c  92b49802  vadd.s.mz vr9{mr1}, r17, vr9
000590  92b5b802  vadd.s.mz vr11{mr1}, r17, vr11
000594  7221a942  vlt.u.mz mr2{mr1}, r18, vr10
000598  ea349802  vand.s.mz vr9{mr1}, r16, vr9
00059c  6a35b802  vand.s.mz vr10{mr1}, r16, vr11
0005a0  eaa40934  vor.u.mh vr9{mr2}, r19, vr0
0005a4  72218942  vlt.u.mz mr2{mr1}, r18, vr8
0005a8  6aa50934  vor.u.mh vr10{mr2}, r19, vr0
0005ac  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
0005b0  ea34a802  vand.s.mz vr9{mr1}, r16, vr10
0005b4  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
0005b8  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
0005bc  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
0005c0  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
0005c4  46008d02  vstore.mz vr8{mr1}, 0(r26)
0005c8  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0005cc  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0005d0  4b6845fe  ble.s r10, r4, -488
0005d4  1f820c01  addli r4, r25, 128
0005d8  1f8d0001  addli r26, r1, 128
0005dc  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
0005e0  9f808001  addli r1, r1, 192
0005e4  1f010101  addli r2, r2, 128
0005e8  1f0c0c02  addli r24, r24, 256
0005ec  9f840402  addli r9, r9, 256
0005f0  6aa37622  vor.u.mz vr6{mr1}, r13, vr7
0005f4  4a040202  vloads.mz vr8{mr1}, 0(r4)
0005f8  c2040d02  vload.mz vr9{mr1}, 0(r26)
0005fc  1f828c01  addli r4, r25, 192
000600  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
000604  6a309802  vand.s.mz vr0{mr1}, r16, vr9
000608  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
00060c  6a348802  vand.s.mz vr8{mr1}, r16, vr8
000610  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
000614  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
000618  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
00061c  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
000620  e69504c0  vabs.f vr11, vr9
000624  6a300402  vand.s.mz vr0{mr1}, r8, vr0
000628  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
00062c  7221b942  vlt.u.mz mr2{mr1}, r18, vr11
000630  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
000634  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
000638  12b00802  vadd.s.mz vr0{mr1}, r17, vr0
00063c  12b5a802  vadd.s.mz vr10{mr1}, r17, vr10
000640  ea340802  vand.s.mz vr9{mr1}, r16, vr0
000644  661004c0  vabs.f vr0, vr8
000648  6a34a802  vand.s.mz vr8{mr1}, r16, vr10
00064c  eaa47934  vor.u.mh vr9{mr2}, r19, vr7
000650  72210942  vlt.u.mz mr2{mr1}, r18, vr0
000654  6aa47934  vor.u.mh vr8{mr2}, r19, vr7
000658  4a000202  vloads.mz vr0{mr1}, 0(r4)
00065c  42850002  vload.mz vr10{mr1}, 0(r1)
000660  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
000664  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
000668  6a35a802  vand.s.mz vr10{mr1}, r16, vr10
00066c  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
000670  6a348802  vand.s.mz vr8{mr1}, r16, vr8
000674  46009d02  vstore.mz vr9{mr1}, 0(r26)
000678  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
00067c  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
000680  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
000684  6a300802  vand.s.mz vr0{mr1}, r16, vr0
000688  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
00068c  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
000690  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
000694  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
000698  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
00069c  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
0006a0  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
0006a4  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
0006a8  e69000c0  vabs.f vr1, vr1
0006ac  661000c0  vabs.f vr0, vr0
0006b0  12b5a802  vadd.s.mz vr10{mr1}, r17, vr10
0006b4  92b5b802  vadd.s.mz vr11{mr1}, r17, vr11
0006b8  72211942  vlt.u.mz mr2{mr1}, r18, vr1
0006bc  6a35a802  vand.s.mz vr10{mr1}, r16, vr10
0006c0  ea30b802  vand.s.mz vr1{mr1}, r16, vr11
0006c4  6aa57934  vor.u.mh vr10{mr2}, r19, vr7
0006c8  72210942  vlt.u.mz mr2{mr1}, r18, vr0
0006cc  eaa07934  vor.u.mh vr1{mr2}, r19, vr7
0006d0  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
0006d4  ea331802  vand.s.mz vr7{mr1}, r16, vr1
0006d8  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
0006dc  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
0006e0  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0006e4  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0006e8  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
0006ec  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
0006f0  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
0006f4  46800002  vstore.mz vr0{mr1}, 0(r1)
0006f8  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
0006fc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000700  bf16a1fe  blt.s r2, r10, -604
000704  db9cffff  j -796
000708  9f0d0000  addli r27, zero, 0
00070c  1f0e0000  addli r28, zero, 0
000710  00a00000  mfence { lm }
000714  3fa187fe  blt.s r15, r8, -952
000718  e3007fd5  loadli.w r1,  -5448(r30)
00071c  9f040000  addli r9, zero, 0
000720  0f011e18  div.f.rn r2, r28, r1
000724  8f801d18  div.f.rn r1, r27, r1
000728  8b612120  mul.f.rn r3, r2, r2
00072c  0b610158  neg.f r2, r2
000730  8be03018  sub.f.rn r1, r1, r3
000734  e3013f00  loadli.w r3,  24(r30)
000738  8be03010  add.f.rn r1, r1, r3
00073c  ab01803f  lui r3, 260096
000740  8f800008  sqrt.f.rn r1, r1
000744  8f801118  div.f.rn r1, r3, r1
000748  9f018fd7  addli r3, r30, -5184
00074c  42820102  vload.mz vr4{mr1}, 0(r3)
000750  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
000754  1f854400  addli r10, r9, 32
000758  eaa12622  vor.u.mz vr3{mr1}, r13, vr2
00075c  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
000760  6a324802  vand.s.mz vr4{mr1}, r16, vr4
000764  92125102  vadd.f.mz.rn vr5{mr1}, r2, vr5
000768  12124102  vadd.f.mz.rn vr4{mr1}, r2, vr4
00076c  8a925002  vmul.f.mz.rn vr5{mr1}, r1, vr5
000770  0a924002  vmul.f.mz.rn vr4{mr1}, r1, vr4
000774  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
000778  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
00077c  6a336402  vand.s.mz vr6{mr1}, r8, vr6
000780  ea337402  vand.s.mz vr7{mr1}, r8, vr7
000784  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
000788  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
00078c  e69202c0  vabs.f vr5, vr5
000790  661202c0  vabs.f vr4, vr4
000794  12b36802  vadd.s.mz vr6{mr1}, r17, vr6
000798  92b37802  vadd.s.mz vr7{mr1}, r17, vr7
00079c  72215942  vlt.u.mz mr2{mr1}, r18, vr5
0007a0  6a336802  vand.s.mz vr6{mr1}, r16, vr6
0007a4  ea327802  vand.s.mz vr5{mr1}, r16, vr7
0007a8  6aa32934  vor.u.mh vr6{mr2}, r19, vr2
0007ac  72214942  vlt.u.mz mr2{mr1}, r18, vr4
0007b0  eaa22934  vor.u.mh vr5{mr2}, r19, vr2
0007b4  6eb261c2  vsrl.s.mz vr4{mr1}, vr3, vr6
0007b8  6eb24222  vor.s.mz vr4{mr1}, vr5, vr4
0007bc  46804102  vstore.mz vr4{mr1}, 0(r3)
0007c0  4bfea7fc  ble.s r15, r10, -1124
0007c4  1f858100  addli r10, r3, 64
0007c8  9f848400  addli r9, r9, 64
0007cc  9f810101  addli r3, r3, 128
0007d0  42020502  vload.mz vr4{mr1}, 0(r10)
0007d4  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
0007d8  6a324802  vand.s.mz vr4{mr1}, r16, vr4
0007dc  92125102  vadd.f.mz.rn vr5{mr1}, r2, vr5
0007e0  12124102  vadd.f.mz.rn vr4{mr1}, r2, vr4
0007e4  8a925002  vmul.f.mz.rn vr5{mr1}, r1, vr5
0007e8  0a924002  vmul.f.mz.rn vr4{mr1}, r1, vr4
0007ec  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
0007f0  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
0007f4  6a336402  vand.s.mz vr6{mr1}, r8, vr6
0007f8  ea337402  vand.s.mz vr7{mr1}, r8, vr7
0007fc  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
000800  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
000804  e69202c0  vabs.f vr5, vr5
000808  661202c0  vabs.f vr4, vr4
00080c  12b36802  vadd.s.mz vr6{mr1}, r17, vr6
000810  92b37802  vadd.s.mz vr7{mr1}, r17, vr7
000814  72215942  vlt.u.mz mr2{mr1}, r18, vr5
000818  6a336802  vand.s.mz vr6{mr1}, r16, vr6
00081c  ea327802  vand.s.mz vr5{mr1}, r16, vr7
000820  6aa32934  vor.u.mh vr6{mr2}, r19, vr2
000824  72214942  vlt.u.mz mr2{mr1}, r18, vr4
000828  eaa22934  vor.u.mh vr5{mr2}, r19, vr2
00082c  eeb161c2  vsrl.s.mz vr3{mr1}, vr3, vr6
000830  6eb13222  vor.s.mz vr2{mr1}, vr5, vr3
000834  46002502  vstore.mz vr2{mr1}, 0(r10)
000838  3fdcf4fe  blt.s r9, r15, -236
00083c  5b64ffff  j -1248
000840  80300002  core_id r1
000844  bb800000  bneq r1, zero, 32
000848  63012f00  loadli.w r2,  16(r30)
00084c  ab0100f0  lui r3, 983040
000850  1b311100  slli r2, r2, 1
000854  17113100  or r2, r2, r3
000858  ab710000  lui r3, 7
00085c  9f810100  addli r3, r3, 0
000860  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000864  2bf10000  lui r2, 15
000868  e3411f00  loadli.w r3,  12(r30)
00086c  00200300  mfence { sm, gm }
000870  1b11f1ff  ori r2, r2, 4095
000874  80210104  csr_set csr3, r2
000878  00d00100  sync_group
00087c  cbde1110  ble.s r3, r1, 9140
000880  63012f00  loadli.w r2,  16(r30)
000884  e3412f00  loadli.w r3,  20(r30)
000888  ab790000  lui r19, 7
00088c  1f140000  addli r8, zero, 1
000890  1f098fd7  addli r18, r30, -5184
000894  1f060002  addli r12, zero, 256
000898  9f060001  addli r13, zero, 128
00089c  1f088000  addli r16, zero, 64
0008a0  9f084000  addli r17, zero, 32
0008a4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0008a8  9f890900  addli r19, r19, 0
0008ac  0b133110  add.s r6, r2, r3
0008b0  1b321100  slli r4, r2, 1
0008b4  b3020108  fix2float.rn r5, r2
0008b8  1f71f3ff  addli r2, r6, -1
0008bc  1bb31100  slli r6, r3, 1
0008c0  8b133130  div.s r7, r2, r3
0008c4  2bf1ffff  lui r2, 1048575
0008c8  9b15f1ff  ori r11, r2, 4095
0008cc  5b070000  j 56
0008d0  00a00000  mfence { lm }
0008d4  eb540f00  load.d r[10:11], 0(r30)
0008d8  2b0100f0  lui r2, 983040
0008dc  1f098fd7  addli r18, r30, -5184
0008e0  80510102  load_param_i r3, 2
0008e4  17112200  or r2, r4, r2
0008e8  8b901110  add.s r1, r3, r1
0008ec  0baa4411  add.ul r[21:22], r[10:11], r[21:22]
0008f0  7f312a01  s_lm2gm r2, r18, 0(r[21:22])
0008f4  00a00200  mfence { lm, gm }
0008f8  63411f00  loadli.w r2,  12(r30)
0008fc  3fa02000  blt.s r1, r2, 8
000900  5b660400  j 9008
000904  63011f00  loadli.w r2,  8(r30)
000908  0b912010  add.s r2, r1, r2
00090c  0b11f120  mul.s r2, r2, r15
000910  33110128  sext_int2long r[3:4], r2
000914  173a8102  sll.d r[21:22], r[3:4], r8
000918  9f017fd6  addli r3, r30, -5320
00091c  2b0100f0  lui r2, 983040
000920  ebd40100  load.d r[10:11], 0(r3)
000924  17112200  or r2, r4, r2
000928  0bab4411  add.ul r[23:24], r[10:11], r[21:22]
00092c  7f212b01  l_gm2lm r2, r18, 0(r[23:24])
000930  00a00200  mfence { lm, gm }
000934  3fc78300  blt.s r7, r8, 464
000938  9f010000  addli r3, zero, 0
00093c  1f010000  addli r2, zero, 0
000940  1f050000  addli r10, zero, 0
000944  db0c0000  j 100
000948  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
00094c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000950  1f150500  addli r10, r10, 1
000954  6a7136c0  vsrl.p vr2, r12, vr3
000958  6a7216c0  vsrl.p vr4, r12, vr1
00095c  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
000960  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000964  eaf126c0  vsrl.p vr3, r13, vr2
000968  6af216c0  vsrl.p vr4, r13, vr1
00096c  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000970  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000974  ea7128c0  vsrl.p vr3, r16, vr2
000978  6a7218c0  vsrl.p vr4, r16, vr1
00097c  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000980  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000984  eaf128c0  vsrl.p vr3, r17, vr2
000988  6af218c0  vsrl.p vr4, r17, vr1
00098c  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000990  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000994  fa140140  vextracti.f r9, 0(vr2)
000998  7a990040  vextracti.f r18, 0(vr1)
00099c  8be19110  add.f.rn r3, r3, r9
0009a0  0b612111  add.f.rn r2, r2, r18
0009a4  b7257500  beq r10, r7, 360
0009a8  1f0c0500  addli r24, r10, 0
0009ac  3730c700  beq r14, r12, 12
0009b0  172bb500  xor r22, r10, r11
0009b4  0b9c6311  add.s r24, r7, r22
0009b8  0b1bec20  mul.s r22, r24, r14
0009bc  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0009c0  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0009c4  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0009c8  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0009cc  0b9b6719  sub.s r22, r15, r22
0009d0  0b1beb40  min.s r22, r22, r14
0009d4  bf5d8bfe  blt.s r22, r8, -140
0009d8  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0009dc  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0009e0  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0009e4  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0009e8  9f0b0000  addli r23, zero, 0
0009ec  0b1c8321  mul.s r24, r6, r24
0009f0  9f0c8fd7  addli r25, r30, -5184
0009f4  1f8d0900  addli r26, r19, 0
0009f8  8b1d8d11  add.s r27, r26, r24
0009fc  9f848b00  addli r9, r23, 64
000a00  ca820d02  vloads.mz vr5{mr1}, 0(r27)
000a04  1f8e8d00  addli r28, r27, 64
000a08  4a030e02  vloads.mz vr6{mr1}, 0(r28)
000a0c  0b9e8c11  add.s r28, r25, r24
000a10  c2030e02  vload.mz vr7{mr1}, 0(r28)
000a14  1f098e00  addli r18, r28, 64
000a18  42040902  vload.mz vr8{mr1}, 0(r18)
000a1c  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
000a20  92320002  vadd.s.mz vr5{mr1}, zero, vr0
000a24  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
000a28  06b40300  vfp162float_l.rn vr8, vr7
000a2c  86f30300  vfp162float_h.rn vr7, vr7
000a30  86340300  vfp162float_l.rn vr9, vr6
000a34  06730300  vfp162float_h.rn vr6, vr6
000a38  86120400  vfloat2fp16_l.rn vr5, vr8
000a3c  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
000a40  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
000a44  12340002  vadd.s.mz vr8{mr1}, zero, vr0
000a48  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
000a4c  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
000a50  06940400  vfloat2fp16_l.rn vr8, vr9
000a54  86d20300  vfloat2fp16_h.rn vr5, vr7
000a58  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
000a5c  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
000a60  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
000a64  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000a68  06540300  vfloat2fp16_h.rn vr8, vr6
000a6c  46005e02  vstore.mz vr5{mr1}, 0(r28)
000a70  46008902  vstore.mz vr8{mr1}, 0(r18)
000a74  4b5b9bfe  ble.s r22, r9, -300
000a78  9f840d01  addli r9, r27, 128
000a7c  1f090e01  addli r18, r28, 128
000a80  9f8b0b01  addli r23, r23, 128
000a84  1f0d0d02  addli r26, r26, 256
000a88  9f8c0c02  addli r25, r25, 256
000a8c  ca820402  vloads.mz vr5{mr1}, 0(r9)
000a90  9f848d01  addli r9, r27, 192
000a94  c2030902  vload.mz vr7{mr1}, 0(r18)
000a98  4a830402  vloads.mz vr6{mr1}, 0(r9)
000a9c  9f048e01  addli r9, r28, 192
000aa0  42840402  vload.mz vr8{mr1}, 0(r9)
000aa4  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
000aa8  92320002  vadd.s.mz vr5{mr1}, zero, vr0
000aac  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
000ab0  12330002  vadd.s.mz vr6{mr1}, zero, vr0
000ab4  86b40300  vfp162float_l.rn vr9, vr7
000ab8  86f30300  vfp162float_h.rn vr7, vr7
000abc  86920400  vfloat2fp16_l.rn vr5, vr9
000ac0  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
000ac4  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
000ac8  86340400  vfp162float_l.rn vr9, vr8
000acc  06740400  vfp162float_h.rn vr8, vr8
000ad0  06930400  vfloat2fp16_l.rn vr6, vr9
000ad4  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
000ad8  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
000adc  86d20300  vfloat2fp16_h.rn vr5, vr7
000ae0  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
000ae4  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
000ae8  06530400  vfloat2fp16_h.rn vr6, vr8
000aec  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
000af0  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
000af4  46005902  vstore.mz vr5{mr1}, 0(r18)
000af8  46806402  vstore.mz vr6{mr1}, 0(r9)
000afc  bffb6bff  blt.s r23, r22, -260
000b00  5bc9ffff  j -440
000b04  1f010000  addli r2, zero, 0
000b08  9f010000  addli r3, zero, 0
000b0c  00a00000  mfence { lm }
000b10  3f8787fe  blt.s r15, r8, -576
000b14  8f815118  div.f.rn r3, r3, r5
000b18  0f015118  div.f.rn r2, r2, r5
000b1c  e3043f00  loadli.w r9,  24(r30)
000b20  1f0b0000  addli r22, zero, 0
000b24  0be53120  mul.f.rn r10, r3, r3
000b28  8be10158  neg.f r3, r3
000b2c  0b61a118  sub.f.rn r2, r2, r10
000b30  1f058fd7  addli r10, r30, -5184
000b34  0b619110  add.f.rn r2, r2, r9
000b38  ab04803f  lui r9, 260096
000b3c  0f010108  sqrt.f.rn r2, r2
000b40  0f812418  div.f.rn r2, r9, r2
000b44  c2000502  vload.mz vr1{mr1}, 0(r10)
000b48  9f0b4b00  addli r23, r22, 32
000b4c  06b10000  vfp162float_l.rn vr2, vr1
000b50  86f00000  vfp162float_h.rn vr1, vr1
000b54  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
000b58  92911102  vadd.f.mz.rn vr3{mr1}, r3, vr1
000b5c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000b60  12321002  vadd.s.mz vr4{mr1}, zero, vr1
000b64  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
000b68  8a113102  vmul.f.mz.rn vr3{mr1}, r2, vr3
000b6c  06120100  vfloat2fp16_l.rn vr4, vr2
000b70  06d20100  vfloat2fp16_h.rn vr4, vr3
000b74  46004502  vstore.mz vr4{mr1}, 0(r10)
000b78  4be577ff  ble.s r15, r23, -680
000b7c  9f0b8500  addli r23, r10, 64
000b80  1f0b8b00  addli r22, r22, 64
000b84  1f050501  addli r10, r10, 128
000b88  42810b02  vload.mz vr2{mr1}, 0(r23)
000b8c  86310100  vfp162float_l.rn vr3, vr2
000b90  06710100  vfp162float_h.rn vr2, vr2
000b94  92913102  vadd.f.mz.rn vr3{mr1}, r3, vr3
000b98  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
000b9c  8a113102  vmul.f.mz.rn vr3{mr1}, r2, vr3
000ba0  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
000ba4  86900100  vfloat2fp16_l.rn vr1, vr3
000ba8  86500100  vfloat2fp16_h.rn vr1, vr2
000bac  46801b02  vstore.mz vr1{mr1}, 0(r23)
000bb0  3f5efbfe  blt.s r22, r15, -108
000bb4  dba3ffff  j -740
000bb8  e3002f00  loadli.w r1,  16(r30)
000bbc  1f010010  addli r2, zero, 2048
000bc0  bb9c2002  bneq r1, r2, 1828
000bc4  003d0002  core_id r26
000bc8  3b700d00  bneq r26, zero, 28
000bcc  9f000040  addli r1, zero, 8192
000bd0  2b0100f0  lui r2, 983040
000bd4  97902000  or r1, r1, r2
000bd8  2b110100  lui r2, 17
000bdc  1f010108  addli r2, r2, 1024
000be0  ff002200  l_gm2sm r1, r2, 0(r[5:6])
000be4  abf00000  lui r1, 15
000be8  00200300  mfence { sm, gm }
000bec  9b0d1d00  andi r27, r26, 1
000bf0  9f020006  addli r5, zero, 768
000bf4  9b90f0ff  ori r1, r1, 4095
000bf8  80a10004  csr_set csr3, r1
000bfc  9f000006  addli r1, zero, 768
000c00  00d00100  sync_group
000c04  37a00d00  beq r27, zero, 8
000c08  9f02000a  addli r5, zero, 1280
000c0c  63411f00  loadli.w r2,  12(r30)
000c10  9f110000  addli r3, zero, 1
000c14  3f703110  blt.s r2, r3, 8220
000c18  0b921d20  mul.s r4, r27, r1
000c1c  abf0ffff  lui r1, 1048575
000c20  2b1a0100  lui r20, 17
000c24  2b3c0100  lui r24, 19
000c28  2b380100  lui r16, 19
000c2c  00510102  load_param_i r2, 2
000c30  9f030000  addli r7, zero, 0
000c34  1b471d00  srli r14, r26, 1
000c38  9bb72200  slli r15, r5, 2
000c3c  1f2b0000  addli r22, zero, 2
000c40  9f088fd7  addli r17, r30, -5184
000c44  9f0a0005  addli r21, zero, 640
000c48  9f0b0001  addli r23, zero, 128
000c4c  9f058000  addli r11, zero, 64
000c50  1f064000  addli r12, zero, 32
000c54  1f0e0003  addli r28, zero, 384
000c58  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000c5c  9b9000f8  ori r1, r1, 3968
000c60  9b441100  srli r9, r2, 1
000c64  1f010fd7  addli r2, r30, -5248
000c68  1f0a0a08  addli r20, r20, 1024
000c6c  1f0c0c08  addli r24, r24, 1024
000c70  1f08080c  addli r16, r16, 1536
000c74  67041fd6  storeli.w r1, -5312(r30)
000c78  abf00000  lui r1, 15
000c7c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000c80  9b9cf0ff  ori r25, r1, 4095
000c84  db030000  j 28
000c88  00a00300  mfence { lm, sm, gm }
000c8c  80a10c04  csr_set csr3, r25
000c90  00d00100  sync_group
000c94  8b939310  add.s r7, r7, r9
000c98  3fa0d300  blt.s r7, r13, 8
000c9c  5b6f0300  j 7032
000ca0  8b90e310  add.s r1, r7, r14
000ca4  cb9f16fe  ble.s r13, r1, -28
000ca8  63011f00  loadli.w r2,  8(r30)
000cac  1f037fd6  addli r6, r30, -5320
000cb0  8b902010  add.s r1, r1, r2
000cb4  9bb0b000  slli r1, r1, 11
000cb8  97904000  or r1, r1, r4
000cbc  b3900028  sext_int2long r[2:3], r1
000cc0  17b96003  sll.d r[19:20], r[2:3], r22
000cc4  6b510300  load.d r[3:4], 0(r6)
000cc8  ab0000f0  lui r1, 983040
000ccc  97901700  or r1, r15, r1
000cd0  0b212111  add.ul r[3:4], r[3:4], r[19:20]
000cd4  ff201101  l_gm2lm r1, r17, 0(r[3:4])
000cd8  00a00200  mfence { lm, gm }
000cdc  3ba60d00  bneq r27, zero, 392
000ce0  9f010fd7  addli r3, r30, -5248
000ce4  63018fd6  loadli.w r2,  -5312(r30)
000ce8  9f000000  addli r1, zero, 0
000cec  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
000cf0  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000cf4  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000cf8  12323002  vadd.s.mz vr4{mr1}, zero, vr3
000cfc  0b954011  add.s r10, r1, r20
000d00  8b911810  add.s r3, r17, r1
000d04  1f010101  addli r2, r2, 128
000d08  9f800004  addli r1, r1, 512
000d0c  1f030501  addli r6, r10, 128
000d10  4a100502  vloads_mask16.mz vr0{mr1}, 0(r10)
000d14  1f048500  addli r8, r10, 64
000d18  42940102  vload_mask16.mz vr8{mr1}, 0(r3)
000d1c  9f868101  addli r13, r3, 192
000d20  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
000d24  1f038501  addli r6, r10, 192
000d28  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
000d2c  1f848100  addli r8, r3, 64
000d30  c2950602  vload_mask16.mz vr11{mr1}, 0(r13)
000d34  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
000d38  1f830101  addli r6, r3, 128
000d3c  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
000d40  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
000d44  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
000d48  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
000d4c  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
000d50  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
000d54  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000d58  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
000d5c  46108302  vstore_mask16.mz vr8{mr1}, 0(r6)
000d60  1f030502  addli r6, r10, 256
000d64  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
000d68  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
000d6c  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
000d70  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
000d74  1f840103  addli r8, r3, 384
000d78  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
000d7c  1f038502  addli r6, r10, 320
000d80  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
000d84  9f860102  addli r13, r3, 256
000d88  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000d8c  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
000d90  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000d94  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
000d98  1f030503  addli r6, r10, 384
000d9c  c2930602  vload_mask16.mz vr7{mr1}, 0(r13)
000da0  1f058503  addli r10, r10, 448
000da4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000da8  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
000dac  1f838102  addli r6, r3, 320
000db0  4a150502  vloads_mask16.mz vr10{mr1}, 0(r10)
000db4  9f818103  addli r3, r3, 448
000db8  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
000dbc  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
000dc0  c2130402  vload_mask16.mz vr7{mr1}, 0(r8)
000dc4  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
000dc8  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
000dcc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000dd0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
000dd4  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
000dd8  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
000ddc  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
000de0  13035105  setlt.u r6, r2, r21
000de4  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
000de8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000dec  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000df0  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
000df4  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
000df8  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
000dfc  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
000e00  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
000e04  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000e08  bb5b03fe  bneq r6, zero, -268
000e0c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
000e10  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000e14  9f000002  addli r1, zero, 256
000e18  6af100c0  vsrl.p vr2, r1, vr0
000e1c  eaf110c0  vsrl.p vr3, r1, vr1
000e20  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000e24  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000e28  6af10bc0  vsrl.p vr2, r23, vr0
000e2c  eaf11bc0  vsrl.p vr3, r23, vr1
000e30  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000e34  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000e38  6af105c0  vsrl.p vr2, r11, vr0
000e3c  eaf115c0  vsrl.p vr3, r11, vr1
000e40  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000e44  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000e48  6a7106c0  vsrl.p vr2, r12, vr0
000e4c  ea7116c0  vsrl.p vr3, r12, vr1
000e50  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000e54  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000e58  fa110040  vextracti.f r3, 0(vr0)
000e5c  fa900040  vextracti.f r1, 0(vr1)
000e60  5b650000  j 808
000e64  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000e68  2bf1ffff  lui r2, 1048575
000e6c  1f8b0d00  addli r22, r27, 0
000e70  9f000000  addli r1, zero, 0
000e74  12311002  vadd.s.mz vr2{mr1}, zero, vr1
000e78  12321002  vadd.s.mz vr4{mr1}, zero, vr1
000e7c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
000e80  1b1101f8  ori r2, r2, 3968
000e84  0b151a10  add.s r10, r20, r1
000e88  8b911810  add.s r3, r17, r1
000e8c  1f010101  addli r2, r2, 128
000e90  9f800004  addli r1, r1, 512
000e94  1f030531  addli r6, r10, 6272
000e98  9f060530  addli r13, r10, 6144
000e9c  1f048531  addli r8, r10, 6336
000ea0  9f8d0118  addli r27, r3, 3072
000ea4  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
000ea8  ca920602  vloads_mask16.mz vr5{mr1}, 0(r13)
000eac  9f068530  addli r13, r10, 6208
000eb0  ca140402  vloads_mask16.mz vr9{mr1}, 0(r8)
000eb4  1f840119  addli r8, r3, 3200
000eb8  1f838118  addli r6, r3, 3136
000ebc  42930d02  vload_mask16.mz vr6{mr1}, 0(r27)
000ec0  4a940602  vloads_mask16.mz vr8{mr1}, 0(r13)
000ec4  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
000ec8  9f868119  addli r13, r3, 3264
000ecc  c2150302  vload_mask16.mz vr11{mr1}, 0(r6)
000ed0  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
000ed4  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
000ed8  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
000edc  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
000ee0  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
000ee4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000ee8  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
000eec  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
000ef0  1f040532  addli r8, r10, 6400
000ef4  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
000ef8  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
000efc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000f00  46906d02  vstore_mask16.mz vr6{mr1}, 0(r27)
000f04  9f86011a  addli r13, r3, 3328
000f08  c2930602  vload_mask16.mz vr7{mr1}, 0(r13)
000f0c  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
000f10  1f83011b  addli r6, r3, 3456
000f14  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
000f18  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
000f1c  4a100402  vloads_mask16.mz vr0{mr1}, 0(r8)
000f20  1f048532  addli r8, r10, 6464
000f24  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000f28  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000f2c  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
000f30  1f040533  addli r8, r10, 6528
000f34  1f058533  addli r10, r10, 6592
000f38  4a140402  vloads_mask16.mz vr8{mr1}, 0(r8)
000f3c  1f84811a  addli r8, r3, 3392
000f40  4a150502  vloads_mask16.mz vr10{mr1}, 0(r10)
000f44  9f81811b  addli r3, r3, 3520
000f48  c2140402  vload_mask16.mz vr9{mr1}, 0(r8)
000f4c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
000f50  c2130302  vload_mask16.mz vr7{mr1}, 0(r6)
000f54  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
000f58  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
000f5c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000f60  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
000f64  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
000f68  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
000f6c  46106402  vstore_mask16.mz vr6{mr1}, 0(r8)
000f70  1304c105  setlt.u r8, r2, r28
000f74  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
000f78  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000f7c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000f80  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
000f84  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
000f88  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
000f8c  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
000f90  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
000f94  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000f98  bb3b04fe  bneq r8, zero, -276
000f9c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000fa0  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
000fa4  9f000002  addli r1, zero, 256
000fa8  2bf3ffff  lui r6, 1048575
000fac  9f010000  addli r3, zero, 0
000fb0  1b1503f8  ori r10, r6, 3968
000fb4  eaf110c0  vsrl.p vr3, r1, vr1
000fb8  6af100c0  vsrl.p vr2, r1, vr0
000fbc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000fc0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000fc4  eaf11bc0  vsrl.p vr3, r23, vr1
000fc8  6af10bc0  vsrl.p vr2, r23, vr0
000fcc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000fd0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000fd4  eaf115c0  vsrl.p vr3, r11, vr1
000fd8  6af105c0  vsrl.p vr2, r11, vr0
000fdc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000fe0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000fe4  ea7116c0  vsrl.p vr3, r12, vr1
000fe8  6a7106c0  vsrl.p vr2, r12, vr0
000fec  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000ff0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000ff4  7a910040  vextracti.f r2, 0(vr1)
000ff8  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000ffc  fa100040  vextracti.f r1, 0(vr0)
001000  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001004  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001008  92311002  vadd.s.mz vr3{mr1}, zero, vr1
00100c  8b1d3a10  add.s r27, r20, r3
001010  8b963810  add.s r13, r17, r3
001014  1f050501  addli r10, r10, 128
001018  9f810104  addli r3, r3, 512
00101c  1f830d18  addli r6, r27, 3072
001020  1f840d19  addli r8, r27, 3200
001024  42940602  vload_mask16.mz vr8{mr1}, 0(r13)
001028  1f8d8601  addli r26, r13, 192
00102c  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
001030  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
001034  1f838d18  addli r6, r27, 3136
001038  1f848d19  addli r8, r27, 3264
00103c  c2150d02  vload_mask16.mz vr11{mr1}, 0(r26)
001040  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
001044  1f830601  addli r6, r13, 128
001048  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
00104c  1f848600  addli r8, r13, 64
001050  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
001054  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
001058  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
00105c  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
001060  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
001064  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
001068  46108302  vstore_mask16.mz vr8{mr1}, 0(r6)
00106c  1f830d1a  addli r6, r27, 3328
001070  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
001074  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001078  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
00107c  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
001080  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
001084  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
001088  1f838d1a  addli r6, r27, 3392
00108c  46106d02  vstore_mask16.mz vr6{mr1}, 0(r26)
001090  1f8d0602  addli r26, r13, 256
001094  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
001098  1f840603  addli r8, r13, 384
00109c  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0010a0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0010a4  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
0010a8  1f830d1b  addli r6, r27, 3456
0010ac  c2130d02  vload_mask16.mz vr7{mr1}, 0(r26)
0010b0  9f8d8d1b  addli r27, r27, 3520
0010b4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0010b8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0010bc  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
0010c0  1f838602  addli r6, r13, 320
0010c4  4a950d02  vloads_mask16.mz vr10{mr1}, 0(r27)
0010c8  9f868603  addli r13, r13, 448
0010cc  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
0010d0  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0010d4  c2130402  vload_mask16.mz vr7{mr1}, 0(r8)
0010d8  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0010dc  c2940602  vload_mask16.mz vr9{mr1}, 0(r13)
0010e0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0010e4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0010e8  46100d02  vstore_mask16.mz vr0{mr1}, 0(r26)
0010ec  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0010f0  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
0010f4  13035505  setlt.u r6, r10, r21
0010f8  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0010fc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001100  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
001104  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
001108  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
00110c  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
001110  46907602  vstore_mask16.mz vr7{mr1}, 0(r13)
001114  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
001118  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00111c  bb4b03fe  bneq r6, zero, -272
001120  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
001124  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001128  9f010002  addli r3, zero, 256
00112c  9f0d0b00  addli r27, r22, 0
001130  003d0002  core_id r26
001134  1f2b0000  addli r22, zero, 2
001138  6af101c0  vsrl.p vr2, r3, vr0
00113c  eaf111c0  vsrl.p vr3, r3, vr1
001140  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001144  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001148  6af10bc0  vsrl.p vr2, r23, vr0
00114c  eaf11bc0  vsrl.p vr3, r23, vr1
001150  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001154  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001158  6af105c0  vsrl.p vr2, r11, vr0
00115c  eaf115c0  vsrl.p vr3, r11, vr1
001160  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001164  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001168  6a7106c0  vsrl.p vr2, r12, vr0
00116c  ea7116c0  vsrl.p vr3, r12, vr1
001170  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001174  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001178  fa110040  vextracti.f r3, 0(vr0)
00117c  7a930040  vextracti.f r6, 0(vr1)
001180  8be13010  add.f.rn r3, r1, r3
001184  8b606110  add.f.rn r1, r2, r6
001188  0b819330  div.u r2, r7, r9
00118c  1f050000  addli r10, zero, 0
001190  1b316100  slli r2, r2, 6
001194  1b010104  andi r2, r2, 64
001198  1711a101  or r2, r2, r26
00119c  1b332100  slli r6, r2, 2
0011a0  1b01e107  andi r2, r2, 126
0011a4  0b148311  add.s r8, r6, r24
0011a8  1b312100  slli r2, r2, 2
0011ac  73603400  stores.w r3, 0(r8)
0011b0  8b110311  add.s r3, r6, r16
0011b4  1b134300  ori r6, r6, 4
0011b8  73e01100  stores.w r1, 0(r3)
0011bc  8b108311  add.s r1, r6, r24
0011c0  8b118111  add.s r3, r2, r24
0011c4  0b130311  add.s r6, r6, r16
0011c8  0b110111  add.s r2, r2, r16
0011cc  00a00300  mfence { lm, sm, gm }
0011d0  80a10c04  csr_set csr3, r25
0011d4  00d00100  sync_group
0011d8  efc00000  loads.w r1, 0(r1)
0011dc  efc10100  loads.w r3, 0(r3)
0011e0  6f430300  loads.w r6, 0(r6)
0011e4  6f410100  loads.w r2, 0(r2)
0011e8  8be03010  add.f.rn r1, r1, r3
0011ec  0b612310  add.f.rn r2, r6, r2
0011f0  2b03003a  lui r6, 237568
0011f4  8be16020  mul.f.rn r3, r1, r6
0011f8  8b606120  mul.f.rn r1, r2, r6
0011fc  0be13120  mul.f.rn r2, r3, r3
001200  8be02018  sub.f.rn r1, r1, r2
001204  63013f00  loadli.w r2,  24(r30)
001208  8be02010  add.f.rn r1, r1, r2
00120c  2b01803f  lui r2, 260096
001210  8f800008  sqrt.f.rn r1, r1
001214  8f001118  div.f.rn r1, r2, r1
001218  0be10158  neg.f r2, r3
00121c  9f018fd7  addli r3, r30, -5184
001220  1f838100  addli r6, r3, 64
001224  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
001228  1f044500  addli r8, r10, 32
00122c  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
001230  13848206  setle.u r8, r5, r8
001234  12100102  vadd.f.mz.rn vr0{mr1}, r2, vr0
001238  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
00123c  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
001240  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
001244  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
001248  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
00124c  bb700400  bneq r8, zero, 60
001250  1f830101  addli r6, r3, 128
001254  1f848101  addli r8, r3, 192
001258  1f058500  addli r10, r10, 64
00125c  9f810102  addli r3, r3, 256
001260  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
001264  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
001268  93065504  setlt.u r13, r10, r5
00126c  12100102  vadd.f.mz.rn vr0{mr1}, r2, vr0
001270  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
001274  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
001278  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
00127c  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
001280  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
001284  3bfe06fe  bneq r13, zero, -100
001288  6b510f00  load.d r[3:4], 0(r30)
00128c  ab0000f0  lui r1, 983040
001290  00a00000  mfence { lm }
001294  97901700  or r1, r15, r1
001298  0b212111  add.ul r[3:4], r[3:4], r[19:20]
00129c  ff301101  s_lm2gm r1, r17, 0(r[3:4])
0012a0  00a00200  mfence { lm, gm }
0012a4  e3461f00  loadli.w r13,  12(r30)
0012a8  db3dffff  j -1556
0012ac  80300002  core_id r1
0012b0  1f210000  addli r2, zero, 2
0012b4  b7d5200a  beq r1, r2, 5492
0012b8  1f110000  addli r2, zero, 1
0012bc  37f72006  beq r1, r2, 3548
0012c0  3b96000a  bneq r1, zero, 5508
0012c4  63012f00  loadli.w r2,  16(r30)
0012c8  ab0100f0  lui r3, 983040
0012cc  1b312100  slli r2, r2, 2
0012d0  17113100  or r2, r2, r3
0012d4  abe10000  lui r3, 14
0012d8  9f810108  addli r3, r3, 1024
0012dc  7f013200  l_gm2sm r2, r3, 0(r[5:6])
0012e0  dbac0200  j 5476
0012e4  80300002  core_id r1
0012e8  bb800000  bneq r1, zero, 32
0012ec  63012f00  loadli.w r2,  16(r30)
0012f0  ab0100f0  lui r3, 983040
0012f4  1b312100  slli r2, r2, 2
0012f8  17113100  or r2, r2, r3
0012fc  ab410100  lui r3, 20
001300  9f8101f0  addli r3, r3, -2048
001304  7f013200  l_gm2sm r2, r3, 0(r[5:6])
001308  2bf10000  lui r2, 15
00130c  e3411f00  loadli.w r3,  12(r30)
001310  00200300  mfence { sm, gm }
001314  1b11f1ff  ori r2, r2, 4095
001318  80210104  csr_set csr3, r2
00131c  00d00100  sync_group
001320  4bc4110c  ble.s r3, r1, 6416
001324  63012f00  loadli.w r2,  16(r30)
001328  e3412f00  loadli.w r3,  20(r30)
00132c  2b4a0100  lui r20, 20
001330  1f058fd7  addli r10, r30, -5184
001334  9f150000  addli r11, zero, 1
001338  9f060002  addli r13, zero, 256
00133c  1f080001  addli r16, zero, 128
001340  9f088000  addli r17, zero, 64
001344  1f094000  addli r18, zero, 32
001348  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00134c  1f0a0af0  addli r20, r20, -2048
001350  0b133110  add.s r6, r2, r3
001354  1b322100  slli r4, r2, 2
001358  33010108  fix2float.rn r2, r2
00135c  67042fd6  storeli.w r2, -5312(r30)
001360  1f71f3ff  addli r2, r6, -1
001364  1bb32100  slli r6, r3, 2
001368  8b133130  div.s r7, r2, r3
00136c  2bf1ffff  lui r2, 1048575
001370  1b16f1ff  ori r12, r2, 4095
001374  1f010fd7  addli r2, r30, -5248
001378  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
00137c  5b070000  j 56
001380  00a00000  mfence { lm }
001384  6b540f00  load.d r[9:10], 0(r30)
001388  2b0100f0  lui r2, 983040
00138c  1f058fd7  addli r10, r30, -5184
001390  80510102  load_param_i r3, 2
001394  17112200  or r2, r4, r2
001398  8b901110  add.s r1, r3, r1
00139c  8b2a5411  add.ul r[22:23], r[9:10], r[22:23]
0013a0  7fb1aa00  s_lm2gm r2, r10, 0(r[22:23])
0013a4  00a00200  mfence { lm, gm }
0013a8  63411f00  loadli.w r2,  12(r30)
0013ac  3fa02000  blt.s r1, r2, 8
0013b0  5b100300  j 6272
0013b4  63011f00  loadli.w r2,  8(r30)
0013b8  9f220000  addli r5, zero, 2
0013bc  0b912010  add.s r2, r1, r2
0013c0  0b11f120  mul.s r2, r2, r15
0013c4  33110128  sext_int2long r[3:4], r2
0013c8  973a5102  sll.d r[22:23], r[3:4], r5
0013cc  9f017fd6  addli r3, r30, -5320
0013d0  2b0100f0  lui r2, 983040
0013d4  6bd40100  load.d r[9:10], 0(r3)
0013d8  17112200  or r2, r4, r2
0013dc  8b2b5411  add.ul r[24:25], r[9:10], r[22:23]
0013e0  7fa1ab00  l_gm2lm r2, r10, 0(r[24:25])
0013e4  00a00200  mfence { lm, gm }
0013e8  bf97b300  blt.s r7, r11, 484
0013ec  9f010000  addli r3, zero, 0
0013f0  1f010000  addli r2, zero, 0
0013f4  1f050000  addli r10, zero, 0
0013f8  db0c0000  j 100
0013fc  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001400  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001404  1f150500  addli r10, r10, 1
001408  6af106c0  vsrl.p vr2, r13, vr0
00140c  eaf116c0  vsrl.p vr3, r13, vr1
001410  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001414  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001418  6a7108c0  vsrl.p vr2, r16, vr0
00141c  ea7118c0  vsrl.p vr3, r16, vr1
001420  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001424  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001428  6af108c0  vsrl.p vr2, r17, vr0
00142c  eaf118c0  vsrl.p vr3, r17, vr1
001430  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001434  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001438  6a7109c0  vsrl.p vr2, r18, vr0
00143c  ea7119c0  vsrl.p vr3, r18, vr1
001440  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001444  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001448  fa120040  vextracti.f r5, 0(vr0)
00144c  7a940040  vextracti.f r8, 0(vr1)
001450  8be15110  add.f.rn r3, r3, r5
001454  0b618110  add.f.rn r2, r2, r8
001458  b7757500  beq r10, r7, 380
00145c  9f090500  addli r19, r10, 0
001460  3730d700  beq r14, r13, 12
001464  9729c500  xor r19, r10, r12
001468  8b993311  add.s r19, r7, r19
00146c  9f020fd7  addli r5, r30, -5248
001470  8b9be920  mul.s r23, r19, r14
001474  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
001478  8b9b7719  sub.s r23, r15, r23
00147c  8b9beb40  min.s r23, r23, r14
001480  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001484  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001488  12311002  vadd.s.mz vr2{mr1}, zero, vr1
00148c  bfcdbbfe  blt.s r23, r11, -144
001490  42920202  vload_mask16.mz vr4{mr1}, 0(r5)
001494  1f0c0000  addli r24, zero, 0
001498  8b1c3321  mul.s r25, r6, r19
00149c  1f0d8fd7  addli r26, r30, -5184
0014a0  9f0d0a00  addli r27, r20, 0
0014a4  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0014a8  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0014ac  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0014b0  8b999d11  add.s r19, r27, r25
0014b4  0b1e9d11  add.s r28, r26, r25
0014b8  1f848900  addli r8, r19, 64
0014bc  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
0014c0  9f848901  addli r9, r19, 192
0014c4  c2140e02  vload_mask16.mz vr9{mr1}, 0(r28)
0014c8  9f028e01  addli r5, r28, 192
0014cc  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
0014d0  1f840901  addli r8, r19, 128
0014d4  4a940402  vloads_mask16.mz vr8{mr1}, 0(r9)
0014d8  9f040e01  addli r9, r28, 128
0014dc  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
0014e0  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
0014e4  c2950402  vload_mask16.mz vr11{mr1}, 0(r9)
0014e8  1f048e00  addli r8, r28, 64
0014ec  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
0014f0  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0014f4  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0014f8  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
0014fc  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
001500  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001504  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001508  46105e02  vstore_mask16.mz vr5{mr1}, 0(r28)
00150c  46106402  vstore_mask16.mz vr6{mr1}, 0(r8)
001510  1f048c00  addli r8, r24, 64
001514  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
001518  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
00151c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001520  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001524  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001528  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
00152c  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
001530  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001534  4bab8bfe  ble.s r23, r8, -312
001538  1f840902  addli r8, r19, 256
00153c  9f848902  addli r9, r19, 320
001540  9f020e02  addli r5, r28, 256
001544  1f0c0c01  addli r24, r24, 128
001548  9f8d0d04  addli r27, r27, 512
00154c  1f0d0d04  addli r26, r26, 512
001550  4a100402  vloads_mask16.mz vr0{mr1}, 0(r8)
001554  1f840903  addli r8, r19, 384
001558  ca920402  vloads_mask16.mz vr5{mr1}, 0(r9)
00155c  42930202  vload_mask16.mz vr6{mr1}, 0(r5)
001560  9f048e02  addli r9, r28, 320
001564  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
001568  1f848903  addli r8, r19, 448
00156c  9f098e03  addli r19, r28, 448
001570  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
001574  4a140402  vloads_mask16.mz vr8{mr1}, 0(r8)
001578  1f040e03  addli r8, r28, 384
00157c  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
001580  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
001584  42930902  vload_mask16.mz vr6{mr1}, 0(r19)
001588  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
00158c  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
001590  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001594  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001598  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
00159c  46905402  vstore_mask16.mz vr5{mr1}, 0(r9)
0015a0  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0015a4  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0015a8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0015ac  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
0015b0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0015b4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0015b8  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0015bc  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0015c0  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
0015c4  bf3b7cff  blt.s r24, r23, -276
0015c8  dbc6ffff  j -460
0015cc  1f010000  addli r2, zero, 0
0015d0  9f010000  addli r3, zero, 0
0015d4  00a00000  mfence { lm }
0015d8  bfa6b7fe  blt.s r15, r11, -600
0015dc  e3028fd6  loadli.w r5,  -5312(r30)
0015e0  9f090000  addli r19, zero, 0
0015e4  8f815118  div.f.rn r3, r3, r5
0015e8  0f015118  div.f.rn r2, r2, r5
0015ec  e3023f00  loadli.w r5,  24(r30)
0015f0  0be53120  mul.f.rn r10, r3, r3
0015f4  8be10158  neg.f r3, r3
0015f8  0b61a118  sub.f.rn r2, r2, r10
0015fc  1f058fd7  addli r10, r30, -5184
001600  0b615110  add.f.rn r2, r2, r5
001604  ab02803f  lui r5, 260096
001608  0f010108  sqrt.f.rn r2, r2
00160c  0f812218  div.f.rn r2, r5, r2
001610  9f0b8500  addli r23, r10, 64
001614  c2100502  vload_mask16.mz vr1{mr1}, 0(r10)
001618  1f8c4900  addli r24, r19, 32
00161c  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
001620  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
001624  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
001628  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
00162c  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
001630  46101502  vstore_mask16.mz vr1{mr1}, 0(r10)
001634  46902b02  vstore_mask16.mz vr2{mr1}, 0(r23)
001638  4ba587ff  ble.s r15, r24, -696
00163c  9f0b0501  addli r23, r10, 128
001640  1f0c8501  addli r24, r10, 192
001644  9f898900  addli r19, r19, 64
001648  1f050502  addli r10, r10, 256
00164c  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
001650  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
001654  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
001658  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
00165c  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
001660  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
001664  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
001668  46102c02  vstore_mask16.mz vr2{mr1}, 0(r24)
00166c  bf9ef9fe  blt.s r19, r15, -92
001670  5ba2ffff  j -752
001674  e3002f00  loadli.w r1,  16(r30)
001678  2b0100f0  lui r2, 983040
00167c  9bb01000  slli r1, r1, 1
001680  97902000  or r1, r1, r2
001684  2b110000  lui r2, 1
001688  1f010100  addli r2, r2, 0
00168c  ff002300  l_gm2sm r1, r2, 0(r[7:8])
001690  5b080000  j 64
001694  63012f00  loadli.w r2,  16(r30)
001698  ab0100f0  lui r3, 983040
00169c  1b311100  slli r2, r2, 1
0016a0  17113100  or r2, r2, r3
0016a4  ab510000  lui r3, 5
0016a8  9f810100  addli r3, r3, 0
0016ac  7f013300  l_gm2sm r2, r3, 0(r[7:8])
0016b0  5bc30000  j 1560
0016b4  e3002f00  loadli.w r1,  16(r30)
0016b8  2b0100f0  lui r2, 983040
0016bc  9bb01000  slli r1, r1, 1
0016c0  97902000  or r1, r1, r2
0016c4  2b210000  lui r2, 2
0016c8  1f010100  addli r2, r2, 0
0016cc  ff002400  l_gm2sm r1, r2, 0(r[9:10])
0016d0  abf00000  lui r1, 15
0016d4  63411f00  loadli.w r2,  12(r30)
0016d8  00200300  mfence { sm, gm }
0016dc  9b90f0ff  ori r1, r1, 4095
0016e0  80a10004  csr_set csr3, r1
0016e4  00d00100  sync_group
0016e8  4b25b10a  ble.s r2, r11, 5448
0016ec  e3002f00  loadli.w r1,  16(r30)
0016f0  63412f00  loadli.w r2,  20(r30)
0016f4  9f082000  addli r17, zero, 16
0016f8  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0016fc  1f140000  addli r8, zero, 1
001700  9f048fd7  addli r9, r30, -5184
001704  1f080002  addli r16, zero, 256
001708  ab09ffff  lui r19, 1048560
00170c  ab0a807f  lui r21, 522240
001710  2b0bc07f  lui r22, 523264
001714  9f0b0001  addli r23, zero, 128
001718  1f0c8000  addli r24, zero, 64
00171c  9f0c4000  addli r25, zero, 32
001720  9bb21000  slli r5, r1, 1
001724  8b912010  add.s r3, r1, r2
001728  b3800008  fix2float.rn r1, r1
00172c  1b331100  slli r6, r2, 1
001730  e70b1fd4  storeli.w r1, -5448(r30)
001734  9ff0f1ff  addli r1, r3, -1
001738  e74b5fd4  storeli.w r5, -5444(r30)
00173c  8b932030  div.s r7, r1, r2
001740  abf0ffff  lui r1, 1048575
001744  1b96f0ff  ori r12, r1, 4095
001748  9f000fd7  addli r1, r30, -5248
00174c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001750  6aa00822  vor.u.mz vr0{mr1}, r17, vr0
001754  9f008fd6  addli r1, r30, -5312
001758  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00175c  ab700000  lui r1, 7
001760  1b9af0ff  ori r20, r1, 4095
001764  db080000  j 68
001768  9f048fd5  addli r9, r30, -5440
00176c  00a00000  mfence { lm }
001770  6b510f00  load.d r[3:4], 0(r30)
001774  ab0000f0  lui r1, 983040
001778  6bd20400  load.d r[5:6], 0(r9)
00177c  9f048fd7  addli r9, r30, -5184
001780  0b214110  add.ul r[3:4], r[3:4], r[5:6]
001784  e3427fd5  loadli.w r5,  -5444(r30)
001788  00520102  load_param_i r4, 2
00178c  8b15b210  add.s r11, r4, r11
001790  97901200  or r1, r5, r1
001794  ff309100  s_lm2gm r1, r9, 0(r[3:4])
001798  00a00200  mfence { lm, gm }
00179c  e3401f00  loadli.w r1,  12(r30)
0017a0  3fa01500  blt.s r11, r1, 8
0017a4  db910200  j 5260
0017a8  e3001f00  loadli.w r1,  8(r30)
0017ac  1f027fd6  addli r4, r30, -5320
0017b0  8b901510  add.s r1, r11, r1
0017b4  8b90f020  mul.s r1, r1, r15
0017b8  b3900028  sext_int2long r[2:3], r1
0017bc  17bd8002  sll.d r[27:28], r[2:3], r8
0017c0  6b510200  load.d r[3:4], 0(r4)
0017c4  ab0000f0  lui r1, 983040
0017c8  1f028fd5  addli r4, r30, -5440
0017cc  97901200  or r1, r5, r1
0017d0  7330a201  store.d r[27:28], 0(r4)
0017d4  0b21a111  add.ul r[3:4], r[3:4], r[27:28]
0017d8  ff209100  l_gm2lm r1, r9, 0(r[3:4])
0017dc  00a00200  mfence { lm, gm }
0017e0  bfdc8300  blt.s r7, r8, 820
0017e4  9f060000  addli r13, zero, 0
0017e8  9f000000  addli r1, zero, 0
0017ec  1f0e0000  addli r28, zero, 0
0017f0  db0c0000  j 100
0017f4  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
0017f8  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
0017fc  1f1e0e00  addli r28, r28, 1
001800  6a7108c0  vsrl.p vr2, r16, vr0
001804  ea7118c0  vsrl.p vr3, r16, vr1
001808  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00180c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001810  6af10bc0  vsrl.p vr2, r23, vr0
001814  eaf11bc0  vsrl.p vr3, r23, vr1
001818  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00181c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001820  6a710cc0  vsrl.p vr2, r24, vr0
001824  ea711cc0  vsrl.p vr3, r24, vr1
001828  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00182c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001830  6af10cc0  vsrl.p vr2, r25, vr0
001834  eaf11cc0  vsrl.p vr3, r25, vr1
001838  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00183c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001840  7a110040  vextracti.f r2, 0(vr0)
001844  fa910040  vextracti.f r3, 0(vr1)
001848  8be62610  add.f.rn r13, r13, r2
00184c  8be03010  add.f.rn r1, r1, r3
001850  373b7e00  beq r28, r7, 716
001854  1f010e00  addli r2, r28, 0
001858  37300701  beq r14, r16, 12
00185c  1721ce00  xor r2, r28, r12
001860  0b912310  add.s r2, r7, r2
001864  8b11e120  mul.s r3, r2, r14
001868  8b913718  sub.s r3, r15, r3
00186c  0b95e140  min.s r10, r3, r14
001870  9f010fd7  addli r3, r30, -5248
001874  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
001878  92322002  vadd.s.mz vr5{mr1}, zero, vr2
00187c  12322002  vadd.s.mz vr4{mr1}, zero, vr2
001880  92312002  vadd.s.mz vr3{mr1}, zero, vr2
001884  bf4d85fe  blt.s r10, r8, -144
001888  1f020fd7  addli r4, r30, -5248
00188c  2b090000  lui r18, 0
001890  8b112320  mul.s r3, r6, r2
001894  9f040000  addli r9, zero, 0
001898  1f018fd7  addli r2, r30, -5184
00189c  c2120202  vload_mask16.mz vr5{mr1}, 0(r4)
0018a0  1f090900  addli r18, r18, 0
0018a4  12315002  vadd.s.mz vr2{mr1}, zero, vr5
0018a8  92315002  vadd.s.mz vr3{mr1}, zero, vr5
0018ac  12325002  vadd.s.mz vr4{mr1}, zero, vr5
0018b0  0b1d3910  add.s r26, r18, r3
0018b4  0b123110  add.s r4, r2, r3
0018b8  9f028fd6  addli r5, r30, -5312
0018bc  4a030d02  vloads.mz vr6{mr1}, 0(r26)
0018c0  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
0018c4  c2030202  vload.mz vr7{mr1}, 0(r4)
0018c8  9f020fd7  addli r5, r30, -5248
0018cc  9f0d8d00  addli r27, r26, 64
0018d0  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
0018d4  9f828400  addli r5, r9, 64
0018d8  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
0018dc  6ab57902  vand.s.mz vr10{mr1}, r19, vr7
0018e0  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
0018e4  6ab36902  vand.s.mz vr6{mr1}, r19, vr6
0018e8  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
0018ec  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0018f0  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
0018f4  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
0018f8  669503c0  vabs.f vr10, vr7
0018fc  6a348402  vand.s.mz vr8{mr1}, r8, vr8
001900  ea349402  vand.s.mz vr9{mr1}, r8, vr9
001904  72a1aa42  vlt.u.mz mr2{mr1}, r21, vr10
001908  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
00190c  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
001910  12348a02  vadd.s.mz vr8{mr1}, r20, vr8
001914  92349a02  vadd.s.mz vr9{mr1}, r20, vr9
001918  eab38902  vand.s.mz vr7{mr1}, r19, vr8
00191c  661403c0  vabs.f vr8, vr6
001920  6ab39902  vand.s.mz vr6{mr1}, r19, vr9
001924  ea230b34  vor.u.mh vr7{mr2}, r22, vr0
001928  72a18a42  vlt.u.mz mr2{mr1}, r21, vr8
00192c  6a230b34  vor.u.mh vr6{mr2}, r22, vr0
001930  4a840d02  vloads.mz vr8{mr1}, 0(r27)
001934  9f0d8200  addli r27, r4, 64
001938  c2840d02  vload.mz vr9{mr1}, 0(r27)
00193c  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
001940  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
001944  6ab36902  vand.s.mz vr6{mr1}, r19, vr6
001948  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
00194c  eab49902  vand.s.mz vr9{mr1}, r19, vr9
001950  46007202  vstore.mz vr7{mr1}, 0(r4)
001954  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
001958  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
00195c  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
001960  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
001964  6ab48902  vand.s.mz vr8{mr1}, r19, vr8
001968  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
00196c  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
001970  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
001974  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
001978  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
00197c  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
001980  ea349402  vand.s.mz vr9{mr1}, r8, vr9
001984  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
001988  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
00198c  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
001990  661505c0  vabs.f vr10, vr10
001994  661404c0  vabs.f vr8, vr8
001998  92349a02  vadd.s.mz vr9{mr1}, r20, vr9
00199c  9235ba02  vadd.s.mz vr11{mr1}, r20, vr11
0019a0  72a1aa42  vlt.u.mz mr2{mr1}, r21, vr10
0019a4  eab49902  vand.s.mz vr9{mr1}, r19, vr9
0019a8  6ab5b902  vand.s.mz vr10{mr1}, r19, vr11
0019ac  ea240b34  vor.u.mh vr9{mr2}, r22, vr0
0019b0  72a18a42  vlt.u.mz mr2{mr1}, r21, vr8
0019b4  6a250b34  vor.u.mh vr10{mr2}, r22, vr0
0019b8  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
0019bc  eab4a902  vand.s.mz vr9{mr1}, r19, vr10
0019c0  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
0019c4  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
0019c8  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
0019cc  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
0019d0  46808d02  vstore.mz vr8{mr1}, 0(r27)
0019d4  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0019d8  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0019dc  4b6855fe  ble.s r10, r5, -488
0019e0  9f020d01  addli r5, r26, 128
0019e4  9f0d0201  addli r27, r4, 128
0019e8  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
0019ec  1f028201  addli r4, r4, 192
0019f0  9f840401  addli r9, r9, 128
0019f4  1f090902  addli r18, r18, 256
0019f8  1f010102  addli r2, r2, 256
0019fc  6aa37822  vor.u.mz vr6{mr1}, r17, vr7
001a00  4a840202  vloads.mz vr8{mr1}, 0(r5)
001a04  c2840d02  vload.mz vr9{mr1}, 0(r27)
001a08  9f028d01  addli r5, r26, 192
001a0c  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
001a10  6ab09902  vand.s.mz vr0{mr1}, r19, vr9
001a14  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
001a18  6ab48902  vand.s.mz vr8{mr1}, r19, vr8
001a1c  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
001a20  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
001a24  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
001a28  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
001a2c  e69504c0  vabs.f vr11, vr9
001a30  6a300402  vand.s.mz vr0{mr1}, r8, vr0
001a34  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
001a38  72a1ba42  vlt.u.mz mr2{mr1}, r21, vr11
001a3c  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
001a40  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
001a44  12300a02  vadd.s.mz vr0{mr1}, r20, vr0
001a48  1235aa02  vadd.s.mz vr10{mr1}, r20, vr10
001a4c  eab40902  vand.s.mz vr9{mr1}, r19, vr0
001a50  661004c0  vabs.f vr0, vr8
001a54  6ab4a902  vand.s.mz vr8{mr1}, r19, vr10
001a58  ea247b34  vor.u.mh vr9{mr2}, r22, vr7
001a5c  72a10a42  vlt.u.mz mr2{mr1}, r21, vr0
001a60  6a247b34  vor.u.mh vr8{mr2}, r22, vr7
001a64  4a800202  vloads.mz vr0{mr1}, 0(r5)
001a68  42050202  vload.mz vr10{mr1}, 0(r4)
001a6c  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
001a70  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
001a74  6ab5a902  vand.s.mz vr10{mr1}, r19, vr10
001a78  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
001a7c  6ab48902  vand.s.mz vr8{mr1}, r19, vr8
001a80  46809d02  vstore.mz vr9{mr1}, 0(r27)
001a84  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
001a88  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
001a8c  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
001a90  6ab00902  vand.s.mz vr0{mr1}, r19, vr0
001a94  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
001a98  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
001a9c  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
001aa0  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
001aa4  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
001aa8  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
001aac  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
001ab0  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
001ab4  e69000c0  vabs.f vr1, vr1
001ab8  661000c0  vabs.f vr0, vr0
001abc  1235aa02  vadd.s.mz vr10{mr1}, r20, vr10
001ac0  9235ba02  vadd.s.mz vr11{mr1}, r20, vr11
001ac4  72a11a42  vlt.u.mz mr2{mr1}, r21, vr1
001ac8  6ab5a902  vand.s.mz vr10{mr1}, r19, vr10
001acc  eab0b902  vand.s.mz vr1{mr1}, r19, vr11
001ad0  6a257b34  vor.u.mh vr10{mr2}, r22, vr7
001ad4  72a10a42  vlt.u.mz mr2{mr1}, r21, vr0
001ad8  ea207b34  vor.u.mh vr1{mr2}, r22, vr7
001adc  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
001ae0  eab31902  vand.s.mz vr7{mr1}, r19, vr1
001ae4  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
001ae8  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
001aec  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
001af0  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
001af4  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
001af8  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
001afc  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
001b00  46000202  vstore.mz vr0{mr1}, 0(r4)
001b04  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001b08  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001b0c  bf96a4fe  blt.s r9, r10, -604
001b10  db9cffff  j -796
001b14  9f000000  addli r1, zero, 0
001b18  9f060000  addli r13, zero, 0
001b1c  00a00000  mfence { lm }
001b20  3fa187fe  blt.s r15, r8, -952
001b24  63027fd5  loadli.w r4,  -5448(r30)
001b28  ab140000  lui r9, 1
001b2c  2b250000  lui r10, 2
001b30  1f010000  addli r2, zero, 0
001b34  9f840400  addli r9, r9, 0
001b38  1f050500  addli r10, r10, 0
001b3c  8f814618  div.f.rn r3, r13, r4
001b40  8f804018  div.f.rn r1, r1, r4
001b44  0be23120  mul.f.rn r4, r3, r3
001b48  8be10158  neg.f r3, r3
001b4c  8be04018  sub.f.rn r1, r1, r4
001b50  63023f00  loadli.w r4,  24(r30)
001b54  8be04010  add.f.rn r1, r1, r4
001b58  2b02803f  lui r4, 260096
001b5c  8f800008  sqrt.f.rn r1, r1
001b60  8f001218  div.f.rn r1, r4, r1
001b64  1f028fd7  addli r4, r30, -5184
001b68  42020202  vload.mz vr4{mr1}, 0(r4)
001b6c  ca820402  vloads.mz vr5{mr1}, 0(r9)
001b70  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
001b74  4a030502  vloads.mz vr6{mr1}, 0(r10)
001b78  9f064100  addli r13, r2, 32
001b7c  eaa12822  vor.u.mz vr3{mr1}, r17, vr2
001b80  eeb341a2  vsll.s.mz vr7{mr1}, vr3, vr4
001b84  6ab44902  vand.s.mz vr8{mr1}, r19, vr4
001b88  92937102  vadd.f.mz.rn vr7{mr1}, r3, vr7
001b8c  12948102  vadd.f.mz.rn vr8{mr1}, r3, vr8
001b90  eeb451a2  vsll.s.mz vr9{mr1}, vr3, vr5
001b94  6eb261a2  vsll.s.mz vr4{mr1}, vr3, vr6
001b98  6ab55902  vand.s.mz vr10{mr1}, r19, vr5
001b9c  eab26902  vand.s.mz vr5{mr1}, r19, vr6
001ba0  8a937002  vmul.f.mz.rn vr7{mr1}, r1, vr7
001ba4  0a938002  vmul.f.mz.rn vr6{mr1}, r1, vr8
001ba8  26929302  vmac.f.mz.rn vr4{mr1}, vr7, vr9
001bac  a612a302  vmac.f.mz.rn vr5{mr1}, vr6, vr10
001bb0  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
001bb4  6a337402  vand.s.mz vr6{mr1}, r8, vr7
001bb8  eeb351c2  vsrl.s.mz vr7{mr1}, vr3, vr5
001bbc  16336202  vadd.s.mz vr6{mr1}, vr4, vr6
001bc0  ea337402  vand.s.mz vr7{mr1}, r8, vr7
001bc4  661202c0  vabs.f vr4, vr4
001bc8  96b37202  vadd.s.mz vr7{mr1}, vr5, vr7
001bcc  12336a02  vadd.s.mz vr6{mr1}, r20, vr6
001bd0  e69202c0  vabs.f vr5, vr5
001bd4  72a14a42  vlt.u.mz mr2{mr1}, r21, vr4
001bd8  6ab36902  vand.s.mz vr6{mr1}, r19, vr6
001bdc  92337a02  vadd.s.mz vr7{mr1}, r20, vr7
001be0  6a232b34  vor.u.mh vr6{mr2}, r22, vr2
001be4  6ab27902  vand.s.mz vr4{mr1}, r19, vr7
001be8  72a15a42  vlt.u.mz mr2{mr1}, r21, vr5
001bec  eeb261c2  vsrl.s.mz vr5{mr1}, vr3, vr6
001bf0  6a222b34  vor.u.mh vr4{mr2}, r22, vr2
001bf4  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
001bf8  46004202  vstore.mz vr4{mr1}, 0(r4)
001bfc  cbbdd7fc  ble.s r15, r13, -1172
001c00  9f868400  addli r13, r9, 64
001c04  1f098200  addli r18, r4, 64
001c08  1f018100  addli r2, r2, 64
001c0c  9f840401  addli r9, r9, 128
001c10  1f020201  addli r4, r4, 128
001c14  4a820602  vloads.mz vr4{mr1}, 0(r13)
001c18  9f068500  addli r13, r10, 64
001c1c  c2020902  vload.mz vr5{mr1}, 0(r18)
001c20  1f050501  addli r10, r10, 128
001c24  4a830602  vloads.mz vr6{mr1}, 0(r13)
001c28  eeb351a2  vsll.s.mz vr7{mr1}, vr3, vr5
001c2c  eab25902  vand.s.mz vr5{mr1}, r19, vr5
001c30  92937102  vadd.f.mz.rn vr7{mr1}, r3, vr7
001c34  12945102  vadd.f.mz.rn vr8{mr1}, r3, vr5
001c38  eeb441a2  vsll.s.mz vr9{mr1}, vr3, vr4
001c3c  6ab54902  vand.s.mz vr10{mr1}, r19, vr4
001c40  8a937002  vmul.f.mz.rn vr7{mr1}, r1, vr7
001c44  eeb261a2  vsll.s.mz vr5{mr1}, vr3, vr6
001c48  6ab26902  vand.s.mz vr4{mr1}, r19, vr6
001c4c  0a938002  vmul.f.mz.rn vr6{mr1}, r1, vr8
001c50  a6929302  vmac.f.mz.rn vr5{mr1}, vr7, vr9
001c54  2612a302  vmac.f.mz.rn vr4{mr1}, vr6, vr10
001c58  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
001c5c  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
001c60  6a336402  vand.s.mz vr6{mr1}, r8, vr6
001c64  ea337402  vand.s.mz vr7{mr1}, r8, vr7
001c68  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
001c6c  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
001c70  e69202c0  vabs.f vr5, vr5
001c74  661202c0  vabs.f vr4, vr4
001c78  12336a02  vadd.s.mz vr6{mr1}, r20, vr6
001c7c  92337a02  vadd.s.mz vr7{mr1}, r20, vr7
001c80  72a15a42  vlt.u.mz mr2{mr1}, r21, vr5
001c84  6ab36902  vand.s.mz vr6{mr1}, r19, vr6
001c88  eab27902  vand.s.mz vr5{mr1}, r19, vr7
001c8c  6a232b34  vor.u.mh vr6{mr2}, r22, vr2
001c90  72a14a42  vlt.u.mz mr2{mr1}, r21, vr4
001c94  ea222b34  vor.u.mh vr5{mr2}, r22, vr2
001c98  6eb161c2  vsrl.s.mz vr2{mr1}, vr3, vr6
001c9c  6eb12222  vor.s.mz vr2{mr1}, vr5, vr2
001ca0  46002902  vstore.mz vr2{mr1}, 0(r18)
001ca4  3f1bf1fe  blt.s r2, r15, -316
001ca8  5b58ffff  j -1344
001cac  63012f00  loadli.w r2,  16(r30)
001cb0  ab0100f0  lui r3, 983040
001cb4  1b311100  slli r2, r2, 1
001cb8  17113100  or r2, r2, r3
001cbc  ab610000  lui r3, 6
001cc0  9f810100  addli r3, r3, 0
001cc4  7f013400  l_gm2sm r2, r3, 0(r[9:10])
001cc8  2bf10000  lui r2, 15
001ccc  e3411f00  loadli.w r3,  12(r30)
001cd0  00200300  mfence { sm, gm }
001cd4  1b11f1ff  ori r2, r2, 4095
001cd8  80210104  csr_set csr3, r2
001cdc  00d00100  sync_group
001ce0  4bcd1106  ble.s r3, r1, 3920
001ce4  63012f00  loadli.w r2,  16(r30)
001ce8  e3412f00  loadli.w r3,  20(r30)
001cec  ab460000  lui r13, 4
001cf0  1f140000  addli r8, zero, 1
001cf4  9f0a8fd7  addli r21, r30, -5184
001cf8  1f060002  addli r12, zero, 256
001cfc  1f080001  addli r16, zero, 128
001d00  9f088000  addli r17, zero, 64
001d04  1f094000  addli r18, zero, 32
001d08  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001d0c  9f860600  addli r13, r13, 0
001d10  0b133110  add.s r6, r2, r3
001d14  1b321100  slli r4, r2, 1
001d18  b3020108  fix2float.rn r5, r2
001d1c  1f71f3ff  addli r2, r6, -1
001d20  1bb31100  slli r6, r3, 1
001d24  8b133130  div.s r7, r2, r3
001d28  2bf1ffff  lui r2, 1048575
001d2c  9b15f1ff  ori r11, r2, 4095
001d30  5b070000  j 56
001d34  00a00000  mfence { lm }
001d38  eb540f00  load.d r[10:11], 0(r30)
001d3c  2b0100f0  lui r2, 983040
001d40  9f0a8fd7  addli r21, r30, -5184
001d44  80510102  load_param_i r3, 2
001d48  17112200  or r2, r4, r2
001d4c  8b901110  add.s r1, r3, r1
001d50  8ba96411  add.ul r[20:21], r[10:11], r[23:24]
001d54  7fb15901  s_lm2gm r2, r21, 0(r[20:21])
001d58  00a00200  mfence { lm, gm }
001d5c  63411f00  loadli.w r2,  12(r30)
001d60  3fa02000  blt.s r1, r2, 8
001d64  dbd90100  j 3788
001d68  63011f00  loadli.w r2,  8(r30)
001d6c  0b912010  add.s r2, r1, r2
001d70  0b11f120  mul.s r2, r2, r15
001d74  33110128  sext_int2long r[3:4], r2
001d78  173b8102  sll.d r[23:24], r[3:4], r8
001d7c  9f017fd6  addli r3, r30, -5320
001d80  2b0100f0  lui r2, 983040
001d84  ebd40100  load.d r[10:11], 0(r3)
001d88  17112200  or r2, r4, r2
001d8c  8ba96411  add.ul r[20:21], r[10:11], r[23:24]
001d90  7fa15901  l_gm2lm r2, r21, 0(r[20:21])
001d94  00a00200  mfence { lm, gm }
001d98  3fc78300  blt.s r7, r8, 464
001d9c  9f010000  addli r3, zero, 0
001da0  1f010000  addli r2, zero, 0
001da4  1f050000  addli r10, zero, 0
001da8  db0c0000  j 100
001dac  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
001db0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001db4  1f150500  addli r10, r10, 1
001db8  6a7136c0  vsrl.p vr2, r12, vr3
001dbc  6a7216c0  vsrl.p vr4, r12, vr1
001dc0  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
001dc4  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
001dc8  ea7128c0  vsrl.p vr3, r16, vr2
001dcc  6a7218c0  vsrl.p vr4, r16, vr1
001dd0  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
001dd4  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
001dd8  eaf128c0  vsrl.p vr3, r17, vr2
001ddc  6af218c0  vsrl.p vr4, r17, vr1
001de0  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
001de4  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
001de8  ea7129c0  vsrl.p vr3, r18, vr2
001dec  6a7219c0  vsrl.p vr4, r18, vr1
001df0  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
001df4  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
001df8  fa140140  vextracti.f r9, 0(vr2)
001dfc  fa990040  vextracti.f r19, 0(vr1)
001e00  8be19110  add.f.rn r3, r3, r9
001e04  0b613111  add.f.rn r2, r2, r19
001e08  b7257500  beq r10, r7, 360
001e0c  9f090500  addli r19, r10, 0
001e10  3730c700  beq r14, r12, 12
001e14  9729b500  xor r19, r10, r11
001e18  8b993311  add.s r19, r7, r19
001e1c  0b9ae920  mul.s r20, r19, r14
001e20  12320002  vadd.s.mz vr4{mr1}, zero, vr0
001e24  92310002  vadd.s.mz vr3{mr1}, zero, vr0
001e28  12310002  vadd.s.mz vr2{mr1}, zero, vr0
001e2c  92300002  vadd.s.mz vr1{mr1}, zero, vr0
001e30  0b9a4719  sub.s r20, r15, r20
001e34  0b1cea40  min.s r24, r20, r14
001e38  bf5d8cfe  blt.s r24, r8, -140
001e3c  92300002  vadd.s.mz vr1{mr1}, zero, vr0
001e40  12310002  vadd.s.mz vr2{mr1}, zero, vr0
001e44  92310002  vadd.s.mz vr3{mr1}, zero, vr0
001e48  12320002  vadd.s.mz vr4{mr1}, zero, vr0
001e4c  9f0c0000  addli r25, zero, 0
001e50  0b1d3321  mul.s r26, r6, r19
001e54  9f0d8fd7  addli r27, r30, -5184
001e58  1f8e0600  addli r28, r13, 0
001e5c  8b19ae11  add.s r19, r28, r26
001e60  9f848c00  addli r9, r25, 64
001e64  ca820902  vloads.mz vr5{mr1}, 0(r19)
001e68  1f8a8900  addli r20, r19, 64
001e6c  4a030a02  vloads.mz vr6{mr1}, 0(r20)
001e70  0b9aad11  add.s r20, r27, r26
001e74  c2030a02  vload.mz vr7{mr1}, 0(r20)
001e78  9f0a8a00  addli r21, r20, 64
001e7c  42840a02  vload.mz vr8{mr1}, 0(r21)
001e80  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
001e84  92320002  vadd.s.mz vr5{mr1}, zero, vr0
001e88  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
001e8c  06b40300  vfp162float_l.rn vr8, vr7
001e90  86f30300  vfp162float_h.rn vr7, vr7
001e94  86340300  vfp162float_l.rn vr9, vr6
001e98  06730300  vfp162float_h.rn vr6, vr6
001e9c  86120400  vfloat2fp16_l.rn vr5, vr8
001ea0  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
001ea4  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
001ea8  12340002  vadd.s.mz vr8{mr1}, zero, vr0
001eac  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
001eb0  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
001eb4  06940400  vfloat2fp16_l.rn vr8, vr9
001eb8  86d20300  vfloat2fp16_h.rn vr5, vr7
001ebc  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
001ec0  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
001ec4  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
001ec8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001ecc  06540300  vfloat2fp16_h.rn vr8, vr6
001ed0  46005a02  vstore.mz vr5{mr1}, 0(r20)
001ed4  46808a02  vstore.mz vr8{mr1}, 0(r21)
001ed8  4b5b9cfe  ble.s r24, r9, -300
001edc  9f840901  addli r9, r19, 128
001ee0  9f8c0c01  addli r25, r25, 128
001ee4  1f0e0e02  addli r28, r28, 256
001ee8  9f8d0d02  addli r27, r27, 256
001eec  ca820402  vloads.mz vr5{mr1}, 0(r9)
001ef0  9f848901  addli r9, r19, 192
001ef4  9f090a01  addli r19, r20, 128
001ef8  4a830402  vloads.mz vr6{mr1}, 0(r9)
001efc  c2830902  vload.mz vr7{mr1}, 0(r19)
001f00  9f048a01  addli r9, r20, 192
001f04  42840402  vload.mz vr8{mr1}, 0(r9)
001f08  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
001f0c  92320002  vadd.s.mz vr5{mr1}, zero, vr0
001f10  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
001f14  12330002  vadd.s.mz vr6{mr1}, zero, vr0
001f18  86b40300  vfp162float_l.rn vr9, vr7
001f1c  86f30300  vfp162float_h.rn vr7, vr7
001f20  86920400  vfloat2fp16_l.rn vr5, vr9
001f24  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
001f28  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
001f2c  86340400  vfp162float_l.rn vr9, vr8
001f30  06740400  vfp162float_h.rn vr8, vr8
001f34  06930400  vfloat2fp16_l.rn vr6, vr9
001f38  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
001f3c  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
001f40  86d20300  vfloat2fp16_h.rn vr5, vr7
001f44  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
001f48  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
001f4c  06530400  vfloat2fp16_h.rn vr6, vr8
001f50  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
001f54  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
001f58  46805902  vstore.mz vr5{mr1}, 0(r19)
001f5c  46806402  vstore.mz vr6{mr1}, 0(r9)
001f60  bffb8cff  blt.s r25, r24, -260
001f64  5bc9ffff  j -440
001f68  1f010000  addli r2, zero, 0
001f6c  9f010000  addli r3, zero, 0
001f70  00a00000  mfence { lm }
001f74  3f8787fe  blt.s r15, r8, -576
001f78  8f815118  div.f.rn r3, r3, r5
001f7c  0f015118  div.f.rn r2, r2, r5
001f80  e3043f00  loadli.w r9,  24(r30)
001f84  ab5c0000  lui r25, 5
001f88  2b6d0000  lui r26, 6
001f8c  1f050000  addli r10, zero, 0
001f90  1f0c8fd7  addli r24, r30, -5184
001f94  9f8c0c00  addli r25, r25, 0
001f98  1f0d0d00  addli r26, r26, 0
001f9c  8be93120  mul.f.rn r19, r3, r3
001fa0  8be10158  neg.f r3, r3
001fa4  0b613119  sub.f.rn r2, r2, r19
001fa8  0b619110  add.f.rn r2, r2, r9
001fac  ab04803f  lui r9, 260096
001fb0  0f010108  sqrt.f.rn r2, r2
001fb4  0f812418  div.f.rn r2, r9, r2
001fb8  c2000c02  vload.mz vr1{mr1}, 0(r24)
001fbc  4a810c02  vloads.mz vr2{mr1}, 0(r25)
001fc0  ca010d02  vloads.mz vr3{mr1}, 0(r26)
001fc4  9f094500  addli r19, r10, 32
001fc8  06b20000  vfp162float_l.rn vr4, vr1
001fcc  86f00000  vfp162float_h.rn vr1, vr1
001fd0  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
001fd4  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
001fd8  86320100  vfp162float_l.rn vr5, vr2
001fdc  06b30100  vfp162float_l.rn vr6, vr3
001fe0  06710100  vfp162float_h.rn vr2, vr2
001fe4  86f10100  vfp162float_h.rn vr3, vr3
001fe8  8a131102  vmul.f.mz.rn vr7{mr1}, r2, vr1
001fec  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
001ff0  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001ff4  a6912302  vmac.f.mz.rn vr3{mr1}, vr7, vr2
001ff8  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
001ffc  12311002  vadd.s.mz vr2{mr1}, zero, vr1
002000  06110300  vfloat2fp16_l.rn vr2, vr6
002004  06d10100  vfloat2fp16_h.rn vr2, vr3
002008  46002c02  vstore.mz vr2{mr1}, 0(r24)
00200c  cba437ff  ble.s r15, r19, -728
002010  9f898c00  addli r19, r25, 64
002014  1f0a8c00  addli r20, r24, 64
002018  1f058500  addli r10, r10, 64
00201c  9f8c0c01  addli r25, r25, 128
002020  1f0c0c01  addli r24, r24, 128
002024  4a810902  vloads.mz vr2{mr1}, 0(r19)
002028  9f098d00  addli r19, r26, 64
00202c  c2010a02  vload.mz vr3{mr1}, 0(r20)
002030  1f0d0d01  addli r26, r26, 128
002034  4a820902  vloads.mz vr4{mr1}, 0(r19)
002038  86b20100  vfp162float_l.rn vr5, vr3
00203c  86f10100  vfp162float_h.rn vr3, vr3
002040  92925102  vadd.f.mz.rn vr5{mr1}, r3, vr5
002044  92913102  vadd.f.mz.rn vr3{mr1}, r3, vr3
002048  06330100  vfp162float_l.rn vr6, vr2
00204c  06710100  vfp162float_h.rn vr2, vr2
002050  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002054  8a113102  vmul.f.mz.rn vr3{mr1}, r2, vr3
002058  86330200  vfp162float_l.rn vr7, vr4
00205c  06720200  vfp162float_h.rn vr4, vr4
002060  a6936202  vmac.f.mz.rn vr7{mr1}, vr5, vr6
002064  26922102  vmac.f.mz.rn vr4{mr1}, vr3, vr2
002068  86900300  vfloat2fp16_l.rn vr1, vr7
00206c  86500200  vfloat2fp16_h.rn vr1, vr4
002070  46001a02  vstore.mz vr1{mr1}, 0(r20)
002074  3f1df5fe  blt.s r10, r15, -188
002078  db97ffff  j -836
00207c  9f000040  addli r1, zero, 8192
002080  2b0100f0  lui r2, 983040
002084  97902000  or r1, r1, r2
002088  2ba10000  lui r2, 10
00208c  1f010100  addli r2, r2, 0
002090  ff002300  l_gm2sm r1, r2, 0(r[7:8])
002094  db070000  j 60
002098  63012f00  loadli.w r2,  16(r30)
00209c  ab0100f0  lui r3, 983040
0020a0  1b312100  slli r2, r2, 2
0020a4  17113100  or r2, r2, r3
0020a8  abf10000  lui r3, 15
0020ac  9f810108  addli r3, r3, 1024
0020b0  7f013300  l_gm2sm r2, r3, 0(r[7:8])
0020b4  5bf20000  j 1936
0020b8  9f000040  addli r1, zero, 8192
0020bc  2b0100f0  lui r2, 983040
0020c0  97902000  or r1, r1, r2
0020c4  2bc10000  lui r2, 12
0020c8  1f010100  addli r2, r2, 0
0020cc  ff002400  l_gm2sm r1, r2, 0(r[9:10])
0020d0  abf00000  lui r1, 15
0020d4  00200300  mfence { sm, gm }
0020d8  1b011500  andi r2, r10, 1
0020dc  9f020006  addli r5, zero, 768
0020e0  9b90f0ff  ori r1, r1, 4095
0020e4  80a10004  csr_set csr3, r1
0020e8  9f000006  addli r1, zero, 768
0020ec  00d00100  sync_group
0020f0  67082fd6  storeli.w r2, -5248(r30)
0020f4  37200100  beq r2, zero, 8
0020f8  9f02000a  addli r5, zero, 1280
0020fc  63411f00  loadli.w r2,  12(r30)
002100  9f110000  addli r3, zero, 1
002104  bf3c3104  blt.s r2, r3, 2860
002108  e3010fd7  loadli.w r3,  -5248(r30)
00210c  00510102  load_param_i r2, 2
002110  2b8b0000  lui r22, 8
002114  2bee0000  lui r28, 14
002118  2be70000  lui r14, 14
00211c  1f030000  addli r6, zero, 0
002120  9b441500  srli r9, r10, 1
002124  9bb72200  slli r15, r5, 2
002128  9f098fd7  addli r19, r30, -5184
00212c  9f0b0005  addli r23, zero, 640
002130  9f0c0001  addli r25, zero, 128
002134  1f0d8000  addli r26, zero, 64
002138  9f0d4000  addli r27, zero, 32
00213c  9f0a0003  addli r21, zero, 384
002140  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002144  1b441100  srli r8, r2, 1
002148  2ba10000  lui r2, 10
00214c  1f0b0b00  addli r22, r22, 0
002150  1f0e0e00  addli r28, r28, 0
002154  1f070704  addli r14, r14, 512
002158  8b901120  mul.s r1, r3, r1
00215c  1f010100  addli r2, r2, 0
002160  67041fd6  storeli.w r1, -5312(r30)
002164  9bb02000  slli r1, r1, 2
002168  0b982010  add.s r16, r1, r2
00216c  2bc10000  lui r2, 12
002170  1f010100  addli r2, r2, 0
002174  8b982010  add.s r17, r1, r2
002178  abf0ffff  lui r1, 1048575
00217c  1f018fd5  addli r2, r30, -5440
002180  9b9000f8  ori r1, r1, 3968
002184  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002188  e74b1fd4  storeli.w r1, -5444(r30)
00218c  abf00000  lui r1, 15
002190  1b99f0ff  ori r18, r1, 4095
002194  db030000  j 28
002198  00a00300  mfence { lm, sm, gm }
00219c  80210904  csr_set csr3, r18
0021a0  00d00100  sync_group
0021a4  0b138310  add.s r6, r6, r8
0021a8  3f20d300  blt.s r6, r13, 8
0021ac  5bcd0000  j 1640
0021b0  8b109310  add.s r1, r6, r9
0021b4  cb9f16fe  ble.s r13, r1, -28
0021b8  63011f00  loadli.w r2,  8(r30)
0021bc  9f210000  addli r3, zero, 2
0021c0  1f027fd6  addli r4, r30, -5320
0021c4  8b902010  add.s r1, r1, r2
0021c8  63018fd6  loadli.w r2,  -5312(r30)
0021cc  9bb0b000  slli r1, r1, 11
0021d0  97902000  or r1, r1, r2
0021d4  b3900028  sext_int2long r[2:3], r1
0021d8  97b53002  sll.d r[12:13], r[2:3], r3
0021dc  6b510200  load.d r[3:4], 0(r4)
0021e0  ab0000f0  lui r1, 983040
0021e4  97901700  or r1, r15, r1
0021e8  0b21b110  add.ul r[3:4], r[3:4], r[12:13]
0021ec  ff203101  l_gm2lm r1, r19, 0(r[3:4])
0021f0  00a00200  mfence { lm, gm }
0021f4  e3000fd7  loadli.w r1,  -5248(r30)
0021f8  3ba60000  bneq r1, zero, 392
0021fc  9f018fd5  addli r3, r30, -5440
002200  63417fd5  loadli.w r2,  -5444(r30)
002204  9f000000  addli r1, zero, 0
002208  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
00220c  92303002  vadd.s.mz vr1{mr1}, zero, vr3
002210  12313002  vadd.s.mz vr2{mr1}, zero, vr3
002214  12323002  vadd.s.mz vr4{mr1}, zero, vr3
002218  0b956011  add.s r10, r1, r22
00221c  8b911910  add.s r3, r19, r1
002220  1f010101  addli r2, r2, 128
002224  9f800004  addli r1, r1, 512
002228  1f020501  addli r4, r10, 128
00222c  4a100502  vloads_mask16.mz vr0{mr1}, 0(r10)
002230  9f038500  addli r7, r10, 64
002234  42940102  vload_mask16.mz vr8{mr1}, 0(r3)
002238  9f868101  addli r13, r3, 192
00223c  ca120202  vloads_mask16.mz vr5{mr1}, 0(r4)
002240  1f028501  addli r4, r10, 192
002244  4a930302  vloads_mask16.mz vr6{mr1}, 0(r7)
002248  9f838100  addli r7, r3, 64
00224c  c2950602  vload_mask16.mz vr11{mr1}, 0(r13)
002250  ca130202  vloads_mask16.mz vr7{mr1}, 0(r4)
002254  1f820101  addli r4, r3, 128
002258  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
00225c  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
002260  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
002264  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
002268  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
00226c  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
002270  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002274  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
002278  46108202  vstore_mask16.mz vr8{mr1}, 0(r4)
00227c  1f020502  addli r4, r10, 256
002280  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
002284  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
002288  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
00228c  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
002290  9f830103  addli r7, r3, 384
002294  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
002298  1f028502  addli r4, r10, 320
00229c  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
0022a0  9f860102  addli r13, r3, 256
0022a4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0022a8  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0022ac  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0022b0  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
0022b4  1f020503  addli r4, r10, 384
0022b8  c2930602  vload_mask16.mz vr7{mr1}, 0(r13)
0022bc  1f058503  addli r10, r10, 448
0022c0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0022c4  4a140202  vloads_mask16.mz vr8{mr1}, 0(r4)
0022c8  1f828102  addli r4, r3, 320
0022cc  4a150502  vloads_mask16.mz vr10{mr1}, 0(r10)
0022d0  9f818103  addli r3, r3, 448
0022d4  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
0022d8  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0022dc  c2930302  vload_mask16.mz vr7{mr1}, 0(r7)
0022e0  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0022e4  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
0022e8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0022ec  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0022f0  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
0022f4  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0022f8  46106202  vstore_mask16.mz vr6{mr1}, 0(r4)
0022fc  13027105  setlt.u r4, r2, r23
002300  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
002304  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002308  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00230c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
002310  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
002314  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
002318  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
00231c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
002320  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002324  bb5b02fe  bneq r4, zero, -268
002328  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
00232c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002330  9f000002  addli r1, zero, 256
002334  6af100c0  vsrl.p vr2, r1, vr0
002338  eaf110c0  vsrl.p vr3, r1, vr1
00233c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002340  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002344  6af10cc0  vsrl.p vr2, r25, vr0
002348  eaf11cc0  vsrl.p vr3, r25, vr1
00234c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002350  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002354  6a710dc0  vsrl.p vr2, r26, vr0
002358  ea711dc0  vsrl.p vr3, r26, vr1
00235c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002360  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002364  6af10dc0  vsrl.p vr2, r27, vr0
002368  eaf11dc0  vsrl.p vr3, r27, vr1
00236c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002370  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002374  fa110040  vextracti.f r3, 0(vr0)
002378  7a910040  vextracti.f r2, 0(vr1)
00237c  5b630000  j 792
002380  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
002384  2bf1ffff  lui r2, 1048575
002388  9f000000  addli r1, zero, 0
00238c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
002390  12321002  vadd.s.mz vr4{mr1}, zero, vr1
002394  92311002  vadd.s.mz vr3{mr1}, zero, vr1
002398  1b1101f8  ori r2, r2, 3968
00239c  0b151b10  add.s r10, r22, r1
0023a0  8b911910  add.s r3, r19, r1
0023a4  1f010101  addli r2, r2, 128
0023a8  9f800004  addli r1, r1, 512
0023ac  1f0a0531  addli r20, r10, 6272
0023b0  9f030530  addli r7, r10, 6144
0023b4  1f028531  addli r4, r10, 6336
0023b8  9f860118  addli r13, r3, 3072
0023bc  ca130a02  vloads_mask16.mz vr7{mr1}, 0(r20)
0023c0  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
0023c4  9f038530  addli r7, r10, 6208
0023c8  ca140202  vloads_mask16.mz vr9{mr1}, 0(r4)
0023cc  1f828118  addli r4, r3, 3136
0023d0  1f8a8119  addli r20, r3, 3264
0023d4  42930602  vload_mask16.mz vr6{mr1}, 0(r13)
0023d8  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
0023dc  9f830119  addli r7, r3, 3200
0023e0  42100a02  vload_mask16.mz vr0{mr1}, 0(r20)
0023e4  c2150202  vload_mask16.mz vr11{mr1}, 0(r4)
0023e8  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
0023ec  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0023f0  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
0023f4  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
0023f8  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
0023fc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002400  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
002404  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
002408  9f030532  addli r7, r10, 6400
00240c  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
002410  46100a02  vstore_mask16.mz vr0{mr1}, 0(r20)
002414  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002418  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
00241c  9f86011a  addli r13, r3, 3328
002420  c2930602  vload_mask16.mz vr7{mr1}, 0(r13)
002424  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
002428  1f82011b  addli r4, r3, 3456
00242c  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
002430  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
002434  4a900302  vloads_mask16.mz vr0{mr1}, 0(r7)
002438  9f038532  addli r7, r10, 6464
00243c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002440  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002444  4a930302  vloads_mask16.mz vr6{mr1}, 0(r7)
002448  9f030533  addli r7, r10, 6528
00244c  1f058533  addli r10, r10, 6592
002450  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
002454  9f83811a  addli r7, r3, 3392
002458  4a150502  vloads_mask16.mz vr10{mr1}, 0(r10)
00245c  9f81811b  addli r3, r3, 3520
002460  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
002464  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
002468  c2130202  vload_mask16.mz vr7{mr1}, 0(r4)
00246c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
002470  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
002474  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002478  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00247c  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
002480  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
002484  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
002488  93035105  setlt.u r7, r2, r21
00248c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
002490  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002494  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
002498  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00249c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0024a0  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
0024a4  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
0024a8  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0024ac  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0024b0  bbbb03fe  bneq r7, zero, -276
0024b4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0024b8  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0024bc  9f000002  addli r1, zero, 256
0024c0  2bf2ffff  lui r4, 1048575
0024c4  9f010000  addli r3, zero, 0
0024c8  1b1502f8  ori r10, r4, 3968
0024cc  eaf110c0  vsrl.p vr3, r1, vr1
0024d0  6af100c0  vsrl.p vr2, r1, vr0
0024d4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0024d8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024dc  eaf11cc0  vsrl.p vr3, r25, vr1
0024e0  6af10cc0  vsrl.p vr2, r25, vr0
0024e4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0024e8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024ec  ea711dc0  vsrl.p vr3, r26, vr1
0024f0  6a710dc0  vsrl.p vr2, r26, vr0
0024f4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0024f8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024fc  eaf11dc0  vsrl.p vr3, r27, vr1
002500  6af10dc0  vsrl.p vr2, r27, vr0
002504  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002508  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00250c  7a910040  vextracti.f r2, 0(vr1)
002510  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
002514  fa100040  vextracti.f r1, 0(vr0)
002518  12311002  vadd.s.mz vr2{mr1}, zero, vr1
00251c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
002520  92311002  vadd.s.mz vr3{mr1}, zero, vr1
002524  0b1a3b10  add.s r20, r22, r3
002528  8b963910  add.s r13, r19, r3
00252c  1f050501  addli r10, r10, 128
002530  9f810104  addli r3, r3, 512
002534  1f020a18  addli r4, r20, 3072
002538  9f030a19  addli r7, r20, 3200
00253c  42940602  vload_mask16.mz vr8{mr1}, 0(r13)
002540  1f8c8601  addli r24, r13, 192
002544  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
002548  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
00254c  1f028a18  addli r4, r20, 3136
002550  9f038a19  addli r7, r20, 3264
002554  c2150c02  vload_mask16.mz vr11{mr1}, 0(r24)
002558  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
00255c  1f820601  addli r4, r13, 128
002560  ca930302  vloads_mask16.mz vr7{mr1}, 0(r7)
002564  9f838600  addli r7, r13, 64
002568  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
00256c  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
002570  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
002574  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
002578  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
00257c  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
002580  46108202  vstore_mask16.mz vr8{mr1}, 0(r4)
002584  1f020a1a  addli r4, r20, 3328
002588  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
00258c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002590  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
002594  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
002598  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
00259c  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
0025a0  1f028a1a  addli r4, r20, 3392
0025a4  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
0025a8  1f8c0602  addli r24, r13, 256
0025ac  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
0025b0  9f830603  addli r7, r13, 384
0025b4  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0025b8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0025bc  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
0025c0  1f020a1b  addli r4, r20, 3456
0025c4  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
0025c8  1f0a8a1b  addli r20, r20, 3520
0025cc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0025d0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0025d4  4a140202  vloads_mask16.mz vr8{mr1}, 0(r4)
0025d8  1f828602  addli r4, r13, 320
0025dc  4a150a02  vloads_mask16.mz vr10{mr1}, 0(r20)
0025e0  9f868603  addli r13, r13, 448
0025e4  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
0025e8  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0025ec  c2930302  vload_mask16.mz vr7{mr1}, 0(r7)
0025f0  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0025f4  c2940602  vload_mask16.mz vr9{mr1}, 0(r13)
0025f8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0025fc  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
002600  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
002604  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
002608  46106202  vstore_mask16.mz vr6{mr1}, 0(r4)
00260c  13027505  setlt.u r4, r10, r23
002610  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
002614  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002618  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00261c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
002620  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
002624  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
002628  46907602  vstore_mask16.mz vr7{mr1}, 0(r13)
00262c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
002630  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002634  bb4b02fe  bneq r4, zero, -272
002638  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
00263c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002640  9f010002  addli r3, zero, 256
002644  6af101c0  vsrl.p vr2, r3, vr0
002648  eaf111c0  vsrl.p vr3, r3, vr1
00264c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002650  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002654  6af10cc0  vsrl.p vr2, r25, vr0
002658  eaf11cc0  vsrl.p vr3, r25, vr1
00265c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002660  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002664  6a710dc0  vsrl.p vr2, r26, vr0
002668  ea711dc0  vsrl.p vr3, r26, vr1
00266c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002670  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002674  6af10dc0  vsrl.p vr2, r27, vr0
002678  eaf11dc0  vsrl.p vr3, r27, vr1
00267c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002680  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002684  fa110040  vextracti.f r3, 0(vr0)
002688  7a920040  vextracti.f r4, 0(vr1)
00268c  8be13010  add.f.rn r3, r1, r3
002690  0b614110  add.f.rn r2, r2, r4
002694  0b028330  div.u r4, r6, r8
002698  80330002  core_id r7
00269c  9f000000  addli r1, zero, 0
0026a0  1b326200  slli r4, r4, 6
0026a4  1b020204  andi r4, r4, 64
0026a8  17127200  or r4, r4, r7
0026ac  9b332200  slli r7, r4, 2
0026b0  0b95c311  add.s r10, r7, r28
0026b4  73603500  stores.w r3, 0(r10)
0026b8  9b01e207  andi r3, r4, 126
0026bc  0b92e310  add.s r4, r7, r14
0026c0  9b934300  ori r7, r7, 4
0026c4  1f050000  addli r10, zero, 0
0026c8  9bb12100  slli r3, r3, 2
0026cc  73602200  stores.w r2, 0(r4)
0026d0  0b91c311  add.s r2, r7, r28
0026d4  8b93e310  add.s r7, r7, r14
0026d8  00a00300  mfence { lm, sm, gm }
0026dc  80210904  csr_set csr3, r18
0026e0  00d00100  sync_group
0026e4  0b92c111  add.s r4, r3, r28
0026e8  6f410100  loads.w r2, 0(r2)
0026ec  8b91e110  add.s r3, r3, r14
0026f0  efc30300  loads.w r7, 0(r7)
0026f4  6f420200  loads.w r4, 0(r4)
0026f8  efc10100  loads.w r3, 0(r3)
0026fc  0b614110  add.f.rn r2, r2, r4
002700  8be13310  add.f.rn r3, r7, r3
002704  ab03003a  lui r7, 237568
002708  0b627120  mul.f.rn r4, r2, r7
00270c  0be17120  mul.f.rn r2, r3, r7
002710  8b614220  mul.f.rn r3, r4, r4
002714  0b613118  sub.f.rn r2, r2, r3
002718  e3013f00  loadli.w r3,  24(r30)
00271c  0b613110  add.f.rn r2, r2, r3
002720  ab01803f  lui r3, 260096
002724  0f010108  sqrt.f.rn r2, r2
002728  0f812118  div.f.rn r2, r3, r2
00272c  8b610258  neg.f r3, r4
002730  8b161810  add.s r13, r16, r1
002734  0b9a1910  add.s r20, r19, r1
002738  8b931810  add.s r7, r17, r1
00273c  1f8c8600  addli r24, r13, 64
002740  1f028a00  addli r4, r20, 64
002744  42100a02  vload_mask16.mz vr0{mr1}, 0(r20)
002748  4a910602  vloads_mask16.mz vr2{mr1}, 0(r13)
00274c  4a920302  vloads_mask16.mz vr4{mr1}, 0(r7)
002750  ca110c02  vloads_mask16.mz vr3{mr1}, 0(r24)
002754  1f8c8300  addli r24, r7, 64
002758  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
00275c  ca120c02  vloads_mask16.mz vr5{mr1}, 0(r24)
002760  1f0c4500  addli r24, r10, 32
002764  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
002768  138c8207  setle.u r24, r5, r24
00276c  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
002770  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
002774  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
002778  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
00277c  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
002780  46104a02  vstore_mask16.mz vr4{mr1}, 0(r20)
002784  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
002788  bb110c00  bneq r24, zero, 100
00278c  1f8c0601  addli r24, r13, 128
002790  1f020a01  addli r4, r20, 128
002794  1f0a8a01  addli r20, r20, 192
002798  9f868601  addli r13, r13, 192
00279c  1f058500  addli r10, r10, 64
0027a0  9f800002  addli r1, r1, 256
0027a4  4a110c02  vloads_mask16.mz vr2{mr1}, 0(r24)
0027a8  1f8c0301  addli r24, r7, 128
0027ac  9f838301  addli r7, r7, 192
0027b0  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
0027b4  c2100a02  vload_mask16.mz vr1{mr1}, 0(r20)
0027b8  4a920602  vloads_mask16.mz vr4{mr1}, 0(r13)
0027bc  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
0027c0  ca110c02  vloads_mask16.mz vr3{mr1}, 0(r24)
0027c4  93035504  setlt.u r7, r10, r5
0027c8  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
0027cc  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
0027d0  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
0027d4  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
0027d8  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
0027dc  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
0027e0  46103202  vstore_mask16.mz vr3{mr1}, 0(r4)
0027e4  46105a02  vstore_mask16.mz vr5{mr1}, 0(r20)
0027e8  3bad03fe  bneq r7, zero, -184
0027ec  6b510f00  load.d r[3:4], 0(r30)
0027f0  ab0000f0  lui r1, 983040
0027f4  00a00000  mfence { lm }
0027f8  97901700  or r1, r15, r1
0027fc  0b21b110  add.ul r[3:4], r[3:4], r[12:13]
002800  ff303101  s_lm2gm r1, r19, 0(r[3:4])
002804  00a00200  mfence { lm, gm }
002808  e3461f00  loadli.w r13,  12(r30)
00280c  0b138310  add.s r6, r6, r8
002810  bf06d3fc  blt.s r6, r13, -1632
002814  abf00000  lui r1, 15
002818  9b90f0ff  ori r1, r1, 4095
00281c  80a10004  csr_set csr3, r1
002820  00d00100  sync_group
002824  db810000  j 1036
002828  63012f00  loadli.w r2,  16(r30)
00282c  ab0100f0  lui r3, 983040
002830  1b312100  slli r2, r2, 2
002834  17113100  or r2, r2, r3
002838  ab010100  lui r3, 16
00283c  9f810108  addli r3, r3, 1024
002840  7f013400  l_gm2sm r2, r3, 0(r[9:10])
002844  2bf10000  lui r2, 15
002848  e3411f00  loadli.w r3,  12(r30)
00284c  00200300  mfence { sm, gm }
002850  1b11f1ff  ori r2, r2, 4095
002854  80210104  csr_set csr3, r2
002858  00d00100  sync_group
00285c  4bdf1100  ble.s r3, r1, 980
002860  63012f00  loadli.w r2,  16(r30)
002864  e3412f00  loadli.w r3,  20(r30)
002868  2bea0000  lui r20, 14
00286c  abfa0000  lui r21, 15
002870  2b0b0100  lui r22, 16
002874  9f048fd7  addli r9, r30, -5184
002878  9f150000  addli r11, zero, 1
00287c  9f060002  addli r13, zero, 256
002880  9f080001  addli r17, zero, 128
002884  1f098000  addli r18, zero, 64
002888  9f094000  addli r19, zero, 32
00288c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002890  1f0a0a08  addli r20, r20, 1024
002894  9f8a0a08  addli r21, r21, 1024
002898  1f0b0b08  addli r22, r22, 1024
00289c  1b342100  slli r8, r2, 2
0028a0  8b123110  add.s r5, r2, r3
0028a4  33010108  fix2float.rn r2, r2
0028a8  1bb32100  slli r6, r3, 2
0028ac  e74b2fd4  storeli.w r2, -5444(r30)
0028b0  1ff1f2ff  addli r2, r5, -1
0028b4  670c8fd4  storeli.w r8, -5440(r30)
0028b8  8b133130  div.s r7, r2, r3
0028bc  2bf1ffff  lui r2, 1048575
0028c0  1b16f1ff  ori r12, r2, 4095
0028c4  1f010fd7  addli r2, r30, -5248
0028c8  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0028cc  5b080000  j 64
0028d0  9f028fd6  addli r5, r30, -5312
0028d4  00a00000  mfence { lm }
0028d8  eb510f00  load.d r[4:5], 0(r30)
0028dc  2b0100f0  lui r2, 983040
0028e0  63048fd5  loadli.w r8,  -5440(r30)
0028e4  ebdb0200  load.d r[24:25], 0(r5)
0028e8  17112400  or r2, r8, r2
0028ec  8bab7111  add.ul r[24:25], r[4:5], r[24:25]
0028f0  80510102  load_param_i r3, 2
0028f4  7fb19b00  s_lm2gm r2, r9, 0(r[24:25])
0028f8  8b901110  add.s r1, r3, r1
0028fc  00a00200  mfence { lm, gm }
002900  63411f00  loadli.w r2,  12(r30)
002904  3fa02000  blt.s r1, r2, 8
002908  5b650000  j 808
00290c  63011f00  loadli.w r2,  8(r30)
002910  1f220000  addli r4, zero, 2
002914  9f027fd6  addli r5, r30, -5320
002918  0b912010  add.s r2, r1, r2
00291c  0b11f120  mul.s r2, r2, r15
002920  33110128  sext_int2long r[3:4], r2
002924  973b4102  sll.d r[24:25], r[3:4], r4
002928  ebd10200  load.d r[4:5], 0(r5)
00292c  2b0100f0  lui r2, 983040
002930  9f028fd6  addli r5, r30, -5312
002934  17112400  or r2, r8, r2
002938  73b07201  store.d r[24:25], 0(r5)
00293c  8bac7111  add.ul r[26:27], r[4:5], r[24:25]
002940  7fa19c00  l_gm2lm r2, r9, 0(r[26:27])
002944  00a00200  mfence { lm, gm }
002948  bf97b300  blt.s r7, r11, 484
00294c  9f010000  addli r3, zero, 0
002950  1f010000  addli r2, zero, 0
002954  1f050000  addli r10, zero, 0
002958  db0c0000  j 100
00295c  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
002960  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002964  1f150500  addli r10, r10, 1
002968  6af106c0  vsrl.p vr2, r13, vr0
00296c  eaf116c0  vsrl.p vr3, r13, vr1
002970  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002974  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002978  6af108c0  vsrl.p vr2, r17, vr0
00297c  eaf118c0  vsrl.p vr3, r17, vr1
002980  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002984  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002988  6a7109c0  vsrl.p vr2, r18, vr0
00298c  ea7119c0  vsrl.p vr3, r18, vr1
002990  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002994  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002998  6af109c0  vsrl.p vr2, r19, vr0
00299c  eaf119c0  vsrl.p vr3, r19, vr1
0029a0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0029a4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0029a8  7a120040  vextracti.f r4, 0(vr0)
0029ac  fa920040  vextracti.f r5, 0(vr1)
0029b0  8be14110  add.f.rn r3, r3, r4
0029b4  0b615110  add.f.rn r2, r2, r5
0029b8  b7757500  beq r10, r7, 380
0029bc  9f020500  addli r5, r10, 0
0029c0  3730d700  beq r14, r13, 12
0029c4  9722c500  xor r5, r10, r12
0029c8  8b925310  add.s r5, r7, r5
0029cc  1f020fd7  addli r4, r30, -5248
0029d0  0b94e220  mul.s r8, r5, r14
0029d4  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
0029d8  0b948718  sub.s r8, r15, r8
0029dc  8b1ce440  min.s r25, r8, r14
0029e0  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0029e4  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0029e8  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0029ec  bfcdbcfe  blt.s r25, r11, -144
0029f0  42120202  vload_mask16.mz vr4{mr1}, 0(r4)
0029f4  1f0d0000  addli r26, zero, 0
0029f8  8b1d5320  mul.s r27, r6, r5
0029fc  1f0e8fd7  addli r28, r30, -5184
002a00  1f080a00  addli r16, r20, 0
002a04  92304002  vadd.s.mz vr1{mr1}, zero, vr4
002a08  12314002  vadd.s.mz vr2{mr1}, zero, vr4
002a0c  92314002  vadd.s.mz vr3{mr1}, zero, vr4
002a10  8b12b811  add.s r5, r16, r27
002a14  0b14be11  add.s r8, r28, r27
002a18  1f828200  addli r4, r5, 64
002a1c  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
002a20  9f8b8201  addli r23, r5, 192
002a24  c2140402  vload_mask16.mz vr9{mr1}, 0(r8)
002a28  1f0c8401  addli r24, r8, 192
002a2c  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
002a30  1f820201  addli r4, r5, 128
002a34  4a940b02  vloads_mask16.mz vr8{mr1}, 0(r23)
002a38  9f0b0401  addli r23, r8, 128
002a3c  42100c02  vload_mask16.mz vr0{mr1}, 0(r24)
002a40  ca130202  vloads_mask16.mz vr7{mr1}, 0(r4)
002a44  c2950b02  vload_mask16.mz vr11{mr1}, 0(r23)
002a48  1f028400  addli r4, r8, 64
002a4c  42150202  vload_mask16.mz vr10{mr1}, 0(r4)
002a50  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
002a54  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
002a58  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
002a5c  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
002a60  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002a64  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002a68  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
002a6c  46106202  vstore_mask16.mz vr6{mr1}, 0(r4)
002a70  1f028d00  addli r4, r26, 64
002a74  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
002a78  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
002a7c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002a80  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
002a84  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002a88  46907b02  vstore_mask16.mz vr7{mr1}, 0(r23)
002a8c  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
002a90  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
002a94  4bab4cfe  ble.s r25, r4, -312
002a98  9f8b0202  addli r23, r5, 256
002a9c  1f8c8202  addli r24, r5, 320
002aa0  1f020402  addli r4, r8, 256
002aa4  1f0d0d01  addli r26, r26, 128
002aa8  1f080804  addli r16, r16, 512
002aac  1f0e0e04  addli r28, r28, 512
002ab0  4a900b02  vloads_mask16.mz vr0{mr1}, 0(r23)
002ab4  9f8b0203  addli r23, r5, 384
002ab8  9f828203  addli r5, r5, 448
002abc  ca120c02  vloads_mask16.mz vr5{mr1}, 0(r24)
002ac0  42130202  vload_mask16.mz vr6{mr1}, 0(r4)
002ac4  ca930b02  vloads_mask16.mz vr7{mr1}, 0(r23)
002ac8  4a940202  vloads_mask16.mz vr8{mr1}, 0(r5)
002acc  9f020403  addli r5, r8, 384
002ad0  9f0b8402  addli r23, r8, 320
002ad4  1f048403  addli r8, r8, 448
002ad8  42950202  vload_mask16.mz vr10{mr1}, 0(r5)
002adc  c2940b02  vload_mask16.mz vr9{mr1}, 0(r23)
002ae0  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
002ae4  42130402  vload_mask16.mz vr6{mr1}, 0(r8)
002ae8  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
002aec  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
002af0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
002af4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002af8  46100202  vstore_mask16.mz vr0{mr1}, 0(r4)
002afc  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
002b00  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
002b04  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
002b08  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002b0c  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
002b10  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002b14  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002b18  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
002b1c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
002b20  46106402  vstore_mask16.mz vr6{mr1}, 0(r8)
002b24  bf3b9dff  blt.s r26, r25, -276
002b28  dbc6ffff  j -460
002b2c  1f010000  addli r2, zero, 0
002b30  9f010000  addli r3, zero, 0
002b34  00a00000  mfence { lm }
002b38  3fe6b7fe  blt.s r15, r11, -616
002b3c  63427fd5  loadli.w r4,  -5444(r30)
002b40  1f050000  addli r10, zero, 0
002b44  1f080000  addli r16, zero, 0
002b48  8f814118  div.f.rn r3, r3, r4
002b4c  0f014118  div.f.rn r2, r2, r4
002b50  63023f00  loadli.w r4,  24(r30)
002b54  8be23120  mul.f.rn r5, r3, r3
002b58  8be10158  neg.f r3, r3
002b5c  0b615118  sub.f.rn r2, r2, r5
002b60  0b614110  add.f.rn r2, r2, r4
002b64  2b02803f  lui r4, 260096
002b68  0f010108  sqrt.f.rn r2, r2
002b6c  0f012218  div.f.rn r2, r4, r2
002b70  0b145511  add.s r8, r10, r21
002b74  8b92a410  add.s r5, r9, r10
002b78  9f0c8400  addli r25, r8, 64
002b7c  4a110402  vloads_mask16.mz vr2{mr1}, 0(r8)
002b80  0b146511  add.s r8, r10, r22
002b84  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
002b88  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
002b8c  9f8c8200  addli r25, r5, 64
002b90  4a120402  vloads_mask16.mz vr4{mr1}, 0(r8)
002b94  1f048400  addli r8, r8, 64
002b98  c2920c02  vload_mask16.mz vr5{mr1}, 0(r25)
002b9c  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
002ba0  1f044800  addli r8, r16, 32
002ba4  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
002ba8  92925102  vadd.f.mz.rn vr5{mr1}, r3, vr5
002bac  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
002bb0  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002bb4  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
002bb8  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
002bbc  46904202  vstore_mask16.mz vr4{mr1}, 0(r5)
002bc0  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
002bc4  4bb487fe  ble.s r15, r8, -756
002bc8  0b94aa10  add.s r8, r21, r10
002bcc  8b1cab10  add.s r25, r22, r10
002bd0  1f088800  addli r16, r16, 64
002bd4  1f050502  addli r10, r10, 256
002bd8  1f0d0401  addli r26, r8, 128
002bdc  9f8d0c01  addli r27, r25, 128
002be0  1f048401  addli r8, r8, 192
002be4  9f8c8c01  addli r25, r25, 192
002be8  ca100d02  vloads_mask16.mz vr1{mr1}, 0(r26)
002bec  1f8d0201  addli r26, r5, 128
002bf0  9f828201  addli r5, r5, 192
002bf4  4a910d02  vloads_mask16.mz vr2{mr1}, 0(r27)
002bf8  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
002bfc  4a930c02  vloads_mask16.mz vr6{mr1}, 0(r25)
002c00  c2110d02  vload_mask16.mz vr3{mr1}, 0(r26)
002c04  42920202  vload_mask16.mz vr4{mr1}, 0(r5)
002c08  92913102  vadd.f.mz.rn vr3{mr1}, r3, vr3
002c0c  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
002c10  8a113102  vmul.f.mz.rn vr3{mr1}, r2, vr3
002c14  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
002c18  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
002c1c  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
002c20  46102d02  vstore_mask16.mz vr2{mr1}, 0(r26)
002c24  46906202  vstore_mask16.mz vr6{mr1}, 0(r5)
002c28  3f2df8fe  blt.s r16, r15, -184
002c2c  db94ffff  j -860
002c30  9f0e0fd5  addli sp, r30, -5504
002c34  e38fae2a  loadli.w r31,  5456(sp)
002c38  63cfae2a  loadli.w r30,  5460(sp)
002c3c  638ebe2a  loadli.w r28,  5464(sp)
002c40  e3cdbe2a  loadli.w r27,  5468(sp)
002c44  638dce2a  loadli.w r26,  5472(sp)
002c48  e3ccce2a  loadli.w r25,  5476(sp)
002c4c  638cde2a  loadli.w r24,  5480(sp)
002c50  e3cbde2a  loadli.w r23,  5484(sp)
002c54  638bee2a  loadli.w r22,  5488(sp)
002c58  e3caee2a  loadli.w r21,  5492(sp)
002c5c  638afe2a  loadli.w r20,  5496(sp)
002c60  e3c9fe2a  loadli.w r19,  5500(sp)
002c64  9f8e0e2b  addli sp, sp, 5504
002c68  5f800f00  jr r31, 0
002c6c  00100000  exit
002c70  00100000  exit
002c74  00100000  exit
002c78  00100000  exit
002c7c  00100000  exit
002c80  00100000  exit
002c84  00100000  exit
002c88  00100000  exit
002c8c  00100000  exit
002c90  00100000  exit
002c94  00100000  exit
002c98  00100000  exit
002c9c  00100000  exit
002ca0  00100000  exit
002ca4  00100000  exit
002ca8  00100000  exit
002cac  00100000  exit
002cb0  00100000  exit
002cb4  00100000  exit
002cb8  00100000  exit
002cbc  00100000  exit
002cc0  00100000  exit
002cc4  00100000  exit
002cc8  00100000  exit
002ccc  00100000  exit
002cd0  00100000  exit
002cd4  00100000  exit
002cd8  00100000  exit
002cdc  00100000  exit
002ce0  00100000  exit
002ce4  00100000  exit
002ce8  00100000  exit
002cec  00100000  exit
002cf0  00100000  exit
002cf4  00100000  exit
002cf8  00100000  exit
002cfc  00100000  exit
002d00  00100000  exit
002d04  00100000  exit
002d08  00100000  exit
002d0c  00100000  exit
002d10  00100000  exit
002d14  00100000  exit
002d18  00100000  exit
002d1c  00100000  exit
002d20  00100000  exit
002d24  00100000  exit
002d28  00100000  exit
002d2c  00100000  exit
002d30  00100000  exit
002d34  00100000  exit
002d38  00100000  exit
002d3c  00100000  exit
002d40  00100000  exit
002d44  00100000  exit
002d48  00100000  exit
002d4c  00100000  exit
002d50  00100000  exit
002d54  00100000  exit
002d58  00100000  exit
002d5c  00100000  exit
002d60  00100000  exit
002d64  00100000  exit
002d68  00100000  exit
002d6c  00100000  exit
002d70  00100000  exit
002d74  00100000  exit
002d78  00100000  exit
002d7c  00100000  exit
002d80  00100000  exit
002d84  00100000  exit
002d88  00100000  exit
002d8c  00100000  exit
002d90  00100000  exit
002d94  00100000  exit
002d98  00100000  exit
002d9c  00100000  exit
002da0  00100000  exit
002da4  00100000  exit
002da8  00100000  exit
002dac  00100000  exit
002db0  00100000  exit
002db4  00100000  exit
002db8  00100000  exit
002dbc  00100000  exit
002dc0  00100000  exit
002dc4  00100000  exit
002dc8  00100000  exit
002dcc  00100000  exit
002dd0  00100000  exit
002dd4  00100000  exit
002dd8  00100000  exit
002ddc  00100000  exit
002de0  00100000  exit
002de4  00100000  exit
002de8  00100000  exit
002dec  00100000  exit
002df0  00100000  exit
002df4  00100000  exit
002df8  00100000  exit
002dfc  00100000  exit
002e00  00100000  exit
002e04  00100000  exit
002e08  00100000  exit
002e0c  00100000  exit
002e10  00100000  exit
002e14  00100000  exit
002e18  00100000  exit
002e1c  00100000  exit
002e20  00100000  exit
002e24  00100000  exit
002e28  00100000  exit
002e2c  00100000  exit
002e30  00100000  exit
002e34  00100000  exit
002e38  00100000  exit
002e3c  00100000  exit
002e40  00100000  exit
002e44  00100000  exit
002e48  00100000  exit
002e4c  00100000  exit
002e50  00100000  exit
002e54  00100000  exit
002e58  00100000  exit
002e5c  00100000  exit
002e60  00100000  exit
002e64  00100000  exit
002e68  00100000  exit
002e6c  00100000  exit
002e70  00100000  exit
002e74  00100000  exit
002e78  00100000  exit
002e7c  00100000  exit
002e80  00100000  exit
002e84  00100000  exit
002e88  00100000  exit
002e8c  00100000  exit
002e90  00100000  exit
002e94  00100000  exit
002e98  00100000  exit
002e9c  00100000  exit
002ea0  00100000  exit
002ea4  00100000  exit
002ea8  00100000  exit
