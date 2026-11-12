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
0000fc  cb215b01  ble.s r22, r21, 104
000100  ab10833a  lui r1, 239665
000104  80db0002  load_param_i r23, 1
000108  1f2c0000  addli r24, zero, 2
00010c  9f0c0008  addli r25, zero, 1024
000110  1f0d2000  addli r26, zero, 16
000114  9b9df026  ori r27, r1, 623
000118  8b904a31  div.s r1, r21, r20
00011c  6b510f01  load.d r[3:4], 16(r30)
000120  6b528f00  load.d r[5:6], 8(r30)
000124  67828e01  storeli.w r24, 32(sp)
000128  e7c10e00  storeli.w zero, 28(sp)
00012c  67c19e01  storeli.w r25, 20(sp)
000130  67819e01  storeli.w r25, 16(sp)
000134  e7c0ae01  storeli.w r26, 12(sp)
000138  e781be01  storeli.w r27, 24(sp)
00013c  73b02e00  store.d r[3:4], 0(sp)
000140  6b510f00  load.d r[3:4], 0(r30)
000144  27030200  addli.d r[7:8], r[5:6], 0
000148  27040200  addli.d r[9:10], r[5:6], 0
00014c  8b903031  div.s r1, r1, r19
000150  9bb04000  slli r1, r1, 4
000154  e7801e00  storeli.w r1, 8(sp)
000158  572e0000  jal 368
00015c  8b9a7a11  add.s r21, r21, r23
000160  bfee6aff  blt.s r21, r22, -72
000164  9f8e8e00  addli sp, sp, 64
000168  00a00300  mfence { lm, sm, gm }
00016c  00100000  exit
000170  9f8e0ed5  addli sp, sp, -5504
000174  67c5ee2b  storeli.w r30, 5460(sp)
000178  1f8f0e2b  addli r30, sp, 5504
00017c  1f150000  addli r10, zero, 1
000180  e7c73e2b  storeli.w r19, 5500(sp)
000184  e7874e2b  storeli.w r20, 5496(sp)
000188  67c75e2b  storeli.w r21, 5492(sp)
00018c  67876e2b  storeli.w r22, 5488(sp)
000190  e7c67e2b  storeli.w r23, 5484(sp)
000194  e7868e2b  storeli.w r24, 5480(sp)
000198  67c69e2b  storeli.w r25, 5476(sp)
00019c  6786ae2b  storeli.w r26, 5472(sp)
0001a0  e7c5be2b  storeli.w r27, 5468(sp)
0001a4  e785ce2b  storeli.w r28, 5464(sp)
0001a8  6785fe2b  storeli.w r31, 5456(sp)
0001ac  e3004f00  loadli.w r1,  32(r30)
0001b0  63472f00  loadli.w r14,  20(r30)
0001b4  e3072f00  loadli.w r15,  16(r30)
0001b8  e3461f00  loadli.w r13,  12(r30)
0001bc  9f057fd6  addli r11, r30, -5320
0001c0  73b02500  store.d r[3:4], 0(r11)
0001c4  37b1a000  beq r1, r10, 76
0001c8  1f210000  addli r2, zero, 2
0001cc  3b922000  bneq r1, r2, 132
0001d0  e3403f00  loadli.w r1,  28(r30)
0001d4  37930000  beq r1, zero, 196
0001d8  80350002  core_id r11
0001dc  9f200000  addli r1, zero, 2
0001e0  37b3150a  beq r11, r1, 5324
0001e4  9f100000  addli r1, zero, 1
0001e8  3792150a  beq r11, r1, 5252
0001ec  3bf3050a  bneq r11, zero, 5340
0001f0  e3002f00  loadli.w r1,  16(r30)
0001f4  2b0100f0  lui r2, 983040
0001f8  9bb01000  slli r1, r1, 1
0001fc  97902000  or r1, r1, r2
000200  2b010000  lui r2, 0
000204  1f010100  addli r2, r2, 0
000208  ff002200  l_gm2sm r1, r2, 0(r[5:6])
00020c  db970200  j 5308
000210  e3403f00  loadli.w r1,  28(r30)
000214  b7980002  beq r1, zero, 1572
000218  80300002  core_id r1
00021c  1f210000  addli r2, zero, 2
000220  379a200c  beq r1, r2, 6788
000224  1f110000  addli r2, zero, 1
000228  b791200a  beq r1, r2, 5220
00022c  3bda000c  bneq r1, zero, 6804
000230  63012f00  loadli.w r2,  16(r30)
000234  ab0100f0  lui r3, 983040
000238  1b311100  slli r2, r2, 1
00023c  17113100  or r2, r2, r3
000240  ab410000  lui r3, 4
000244  9f810100  addli r3, r3, 0
000248  7f013200  l_gm2sm r2, r3, 0(r[5:6])
00024c  db4e0300  j 6772
000250  e3403f00  loadli.w r1,  28(r30)
000254  37f50004  beq r1, zero, 2396
000258  e3002f00  loadli.w r1,  16(r30)
00025c  1f010010  addli r2, zero, 2048
000260  3b912008  bneq r1, r2, 4164
000264  00350002  core_id r10
000268  9f200000  addli r1, zero, 2
00026c  3719150e  beq r10, r1, 7748
000270  9f100000  addli r1, zero, 1
000274  3708150e  beq r10, r1, 7680
000278  3b49050e  bneq r10, zero, 7760
00027c  9f000040  addli r1, zero, 8192
000280  2b0100f0  lui r2, 983040
000284  97902000  or r1, r1, r2
000288  2b810000  lui r2, 8
00028c  1f010100  addli r2, r2, 0
000290  ff002200  l_gm2sm r1, r2, 0(r[5:6])
000294  dbc60300  j 7732
000298  00330002  core_id r6
00029c  bb000300  bneq r6, zero, 32
0002a0  e3002f00  loadli.w r1,  16(r30)
0002a4  2b0100f0  lui r2, 983040
0002a8  9bb01000  slli r1, r1, 1
0002ac  97902000  or r1, r1, r2
0002b0  2b310000  lui r2, 3
0002b4  1f010100  addli r2, r2, 0
0002b8  ff002200  l_gm2sm r1, r2, 0(r[5:6])
0002bc  abf00000  lui r1, 15
0002c0  63411f00  loadli.w r2,  12(r30)
0002c4  00200300  mfence { sm, gm }
0002c8  9b90f0ff  ori r1, r1, 4095
0002cc  80a10004  csr_set csr3, r1
0002d0  00d00100  sync_group
0002d4  4b556114  ble.s r2, r6, 10580
0002d8  e3002f00  loadli.w r1,  16(r30)
0002dc  63412f00  loadli.w r2,  20(r30)
0002e0  9f062000  addli r13, zero, 16
0002e4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0002e8  1f140000  addli r8, zero, 1
0002ec  1f058fd7  addli r10, r30, -5184
0002f0  1f060002  addli r12, zero, 256
0002f4  2b08ffff  lui r16, 1048560
0002f8  2b09807f  lui r18, 522240
0002fc  ab09c07f  lui r19, 523264
000300  1f0a0001  addli r20, zero, 128
000304  9f0a8000  addli r21, zero, 64
000308  1f0b4000  addli r22, zero, 32
00030c  1bb21000  slli r4, r1, 1
000310  8b912010  add.s r3, r1, r2
000314  b3800008  fix2float.rn r1, r1
000318  9b321100  slli r5, r2, 1
00031c  e70b1fd4  storeli.w r1, -5448(r30)
000320  9ff0f1ff  addli r1, r3, -1
000324  e74b4fd4  storeli.w r4, -5444(r30)
000328  8b932030  div.s r7, r1, r2
00032c  abf0ffff  lui r1, 1048575
000330  9b95f0ff  ori r11, r1, 4095
000334  9f000fd7  addli r1, r30, -5248
000338  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00033c  6aa00622  vor.u.mz vr0{mr1}, r13, vr0
000340  9f008fd6  addli r1, r30, -5312
000344  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000348  ab700000  lui r1, 7
00034c  9b98f0ff  ori r17, r1, 4095
000350  db080000  j 68
000354  1f028fd5  addli r4, r30, -5440
000358  00a00000  mfence { lm }
00035c  6b510f00  load.d r[3:4], 0(r30)
000360  ab0000f0  lui r1, 983040
000364  eb540200  load.d r[10:11], 0(r4)
000368  63427fd5  loadli.w r4,  -5444(r30)
00036c  0b219110  add.ul r[3:4], r[3:4], r[10:11]
000370  97101200  or r1, r4, r1
000374  1f058fd7  addli r10, r30, -5184
000378  80540102  load_param_i r9, 2
00037c  ff30a100  s_lm2gm r1, r10, 0(r[3:4])
000380  0b936410  add.s r6, r9, r6
000384  00a00200  mfence { lm, gm }
000388  e3401f00  loadli.w r1,  12(r30)
00038c  3f201300  blt.s r6, r1, 8
000390  5b130500  j 10392
000394  e3001f00  loadli.w r1,  8(r30)
000398  9f047fd6  addli r9, r30, -5320
00039c  8b101310  add.s r1, r6, r1
0003a0  8b90f020  mul.s r1, r1, r15
0003a4  b3900028  sext_int2long r[2:3], r1
0003a8  97bb8002  sll.d r[24:25], r[2:3], r8
0003ac  6bd10400  load.d r[3:4], 0(r9)
0003b0  ab0000f0  lui r1, 983040
0003b4  9f048fd5  addli r9, r30, -5440
0003b8  97101200  or r1, r4, r1
0003bc  73b07401  store.d r[24:25], 0(r9)
0003c0  0b217111  add.ul r[3:4], r[3:4], r[24:25]
0003c4  ff20a100  l_gm2lm r1, r10, 0(r[3:4])
0003c8  00a00200  mfence { lm, gm }
0003cc  bfdc8300  blt.s r7, r8, 820
0003d0  1f0e0000  addli r28, zero, 0
0003d4  9f0d0000  addli r27, zero, 0
0003d8  9f0b0000  addli r23, zero, 0
0003dc  db0c0000  j 100
0003e0  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
0003e4  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
0003e8  9f9b0b00  addli r23, r23, 1
0003ec  6a7106c0  vsrl.p vr2, r12, vr0
0003f0  ea7116c0  vsrl.p vr3, r12, vr1
0003f4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0003f8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0003fc  6a710ac0  vsrl.p vr2, r20, vr0
000400  ea711ac0  vsrl.p vr3, r20, vr1
000404  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000408  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00040c  6af10ac0  vsrl.p vr2, r21, vr0
000410  eaf11ac0  vsrl.p vr3, r21, vr1
000414  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000418  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00041c  6a710bc0  vsrl.p vr2, r22, vr0
000420  ea711bc0  vsrl.p vr3, r22, vr1
000424  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000428  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00042c  fa100040  vextracti.f r1, 0(vr0)
000430  7a910040  vextracti.f r2, 0(vr1)
000434  0b6e1e10  add.f.rn r28, r28, r1
000438  8bed2d10  add.f.rn r27, r27, r2
00043c  37bb7b00  beq r23, r7, 716
000440  9f800b00  addli r1, r23, 0
000444  3730c700  beq r14, r12, 12
000448  97a0bb00  xor r1, r23, r11
00044c  8b901310  add.s r1, r7, r1
000450  0b91e020  mul.s r2, r1, r14
000454  0b912718  sub.s r2, r15, r2
000458  0b15e140  min.s r10, r2, r14
00045c  1f010fd7  addli r2, r30, -5248
000460  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
000464  92322002  vadd.s.mz vr5{mr1}, zero, vr2
000468  12322002  vadd.s.mz vr4{mr1}, zero, vr2
00046c  92312002  vadd.s.mz vr3{mr1}, zero, vr2
000470  bf4d85fe  blt.s r10, r8, -144
000474  8b911220  mul.s r3, r5, r1
000478  9f000fd7  addli r1, r30, -5248
00047c  2b3c0000  lui r24, 3
000480  1f010000  addli r2, zero, 0
000484  9f048fd7  addli r9, r30, -5184
000488  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
00048c  1f0c0c00  addli r24, r24, 0
000490  12315002  vadd.s.mz vr2{mr1}, zero, vr5
000494  92315002  vadd.s.mz vr3{mr1}, zero, vr5
000498  12325002  vadd.s.mz vr4{mr1}, zero, vr5
00049c  8b1c3c10  add.s r25, r24, r3
0004a0  8b903410  add.s r1, r9, r3
0004a4  1f028fd6  addli r4, r30, -5312
0004a8  4a830c02  vloads.mz vr6{mr1}, 0(r25)
0004ac  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
0004b0  c2830002  vload.mz vr7{mr1}, 0(r1)
0004b4  1f020fd7  addli r4, r30, -5248
0004b8  1f8d8c00  addli r26, r25, 64
0004bc  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
0004c0  1f028100  addli r4, r2, 64
0004c4  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
0004c8  6a357802  vand.s.mz vr10{mr1}, r16, vr7
0004cc  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
0004d0  6a336802  vand.s.mz vr6{mr1}, r16, vr6
0004d4  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
0004d8  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0004dc  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
0004e0  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
0004e4  669503c0  vabs.f vr10, vr7
0004e8  6a348402  vand.s.mz vr8{mr1}, r8, vr8
0004ec  ea349402  vand.s.mz vr9{mr1}, r8, vr9
0004f0  7221a942  vlt.u.mz mr2{mr1}, r18, vr10
0004f4  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
0004f8  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
0004fc  12b48802  vadd.s.mz vr8{mr1}, r17, vr8
000500  92b49802  vadd.s.mz vr9{mr1}, r17, vr9
000504  ea338802  vand.s.mz vr7{mr1}, r16, vr8
000508  661403c0  vabs.f vr8, vr6
00050c  6a339802  vand.s.mz vr6{mr1}, r16, vr9
000510  eaa30934  vor.u.mh vr7{mr2}, r19, vr0
000514  72218942  vlt.u.mz mr2{mr1}, r18, vr8
000518  6aa30934  vor.u.mh vr6{mr2}, r19, vr0
00051c  4a040d02  vloads.mz vr8{mr1}, 0(r26)
000520  1f8d8000  addli r26, r1, 64
000524  c2040d02  vload.mz vr9{mr1}, 0(r26)
000528  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
00052c  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
000530  6a336802  vand.s.mz vr6{mr1}, r16, vr6
000534  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
000538  ea349802  vand.s.mz vr9{mr1}, r16, vr9
00053c  46807002  vstore.mz vr7{mr1}, 0(r1)
000540  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
000544  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
000548  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
00054c  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
000550  6a348802  vand.s.mz vr8{mr1}, r16, vr8
000554  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
000558  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
00055c  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
000560  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
000564  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
000568  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
00056c  ea349402  vand.s.mz vr9{mr1}, r8, vr9
000570  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
000574  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
000578  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
00057c  661505c0  vabs.f vr10, vr10
000580  661404c0  vabs.f vr8, vr8
000584  92b49802  vadd.s.mz vr9{mr1}, r17, vr9
000588  92b5b802  vadd.s.mz vr11{mr1}, r17, vr11
00058c  7221a942  vlt.u.mz mr2{mr1}, r18, vr10
000590  ea349802  vand.s.mz vr9{mr1}, r16, vr9
000594  6a35b802  vand.s.mz vr10{mr1}, r16, vr11
000598  eaa40934  vor.u.mh vr9{mr2}, r19, vr0
00059c  72218942  vlt.u.mz mr2{mr1}, r18, vr8
0005a0  6aa50934  vor.u.mh vr10{mr2}, r19, vr0
0005a4  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
0005a8  ea34a802  vand.s.mz vr9{mr1}, r16, vr10
0005ac  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
0005b0  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
0005b4  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
0005b8  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
0005bc  46008d02  vstore.mz vr8{mr1}, 0(r26)
0005c0  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0005c4  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0005c8  4b6845fe  ble.s r10, r4, -488
0005cc  1f820c01  addli r4, r25, 128
0005d0  1f8d0001  addli r26, r1, 128
0005d4  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
0005d8  9f808001  addli r1, r1, 192
0005dc  1f010101  addli r2, r2, 128
0005e0  1f0c0c02  addli r24, r24, 256
0005e4  9f840402  addli r9, r9, 256
0005e8  6aa37622  vor.u.mz vr6{mr1}, r13, vr7
0005ec  4a040202  vloads.mz vr8{mr1}, 0(r4)
0005f0  c2040d02  vload.mz vr9{mr1}, 0(r26)
0005f4  1f828c01  addli r4, r25, 192
0005f8  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
0005fc  6a309802  vand.s.mz vr0{mr1}, r16, vr9
000600  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
000604  6a348802  vand.s.mz vr8{mr1}, r16, vr8
000608  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
00060c  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
000610  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
000614  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
000618  e69504c0  vabs.f vr11, vr9
00061c  6a300402  vand.s.mz vr0{mr1}, r8, vr0
000620  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
000624  7221b942  vlt.u.mz mr2{mr1}, r18, vr11
000628  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
00062c  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
000630  12b00802  vadd.s.mz vr0{mr1}, r17, vr0
000634  12b5a802  vadd.s.mz vr10{mr1}, r17, vr10
000638  ea340802  vand.s.mz vr9{mr1}, r16, vr0
00063c  661004c0  vabs.f vr0, vr8
000640  6a34a802  vand.s.mz vr8{mr1}, r16, vr10
000644  eaa47934  vor.u.mh vr9{mr2}, r19, vr7
000648  72210942  vlt.u.mz mr2{mr1}, r18, vr0
00064c  6aa47934  vor.u.mh vr8{mr2}, r19, vr7
000650  4a000202  vloads.mz vr0{mr1}, 0(r4)
000654  42850002  vload.mz vr10{mr1}, 0(r1)
000658  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
00065c  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
000660  6a35a802  vand.s.mz vr10{mr1}, r16, vr10
000664  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
000668  6a348802  vand.s.mz vr8{mr1}, r16, vr8
00066c  46009d02  vstore.mz vr9{mr1}, 0(r26)
000670  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
000674  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
000678  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
00067c  6a300802  vand.s.mz vr0{mr1}, r16, vr0
000680  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
000684  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
000688  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
00068c  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
000690  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
000694  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
000698  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
00069c  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
0006a0  e69000c0  vabs.f vr1, vr1
0006a4  661000c0  vabs.f vr0, vr0
0006a8  12b5a802  vadd.s.mz vr10{mr1}, r17, vr10
0006ac  92b5b802  vadd.s.mz vr11{mr1}, r17, vr11
0006b0  72211942  vlt.u.mz mr2{mr1}, r18, vr1
0006b4  6a35a802  vand.s.mz vr10{mr1}, r16, vr10
0006b8  ea30b802  vand.s.mz vr1{mr1}, r16, vr11
0006bc  6aa57934  vor.u.mh vr10{mr2}, r19, vr7
0006c0  72210942  vlt.u.mz mr2{mr1}, r18, vr0
0006c4  eaa07934  vor.u.mh vr1{mr2}, r19, vr7
0006c8  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
0006cc  ea331802  vand.s.mz vr7{mr1}, r16, vr1
0006d0  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
0006d4  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
0006d8  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0006dc  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0006e0  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
0006e4  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
0006e8  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
0006ec  46800002  vstore.mz vr0{mr1}, 0(r1)
0006f0  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
0006f4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0006f8  bf16a1fe  blt.s r2, r10, -604
0006fc  db9cffff  j -796
000700  9f0d0000  addli r27, zero, 0
000704  1f0e0000  addli r28, zero, 0
000708  00a00000  mfence { lm }
00070c  3fa187fe  blt.s r15, r8, -952
000710  e3007fd5  loadli.w r1,  -5448(r30)
000714  9f040000  addli r9, zero, 0
000718  0f011e18  div.f.rn r2, r28, r1
00071c  8f801d18  div.f.rn r1, r27, r1
000720  8b612120  mul.f.rn r3, r2, r2
000724  0b610158  neg.f r2, r2
000728  8be03018  sub.f.rn r1, r1, r3
00072c  e3013f00  loadli.w r3,  24(r30)
000730  8be03010  add.f.rn r1, r1, r3
000734  ab01803f  lui r3, 260096
000738  8f800008  sqrt.f.rn r1, r1
00073c  8f801118  div.f.rn r1, r3, r1
000740  9f018fd7  addli r3, r30, -5184
000744  42820102  vload.mz vr4{mr1}, 0(r3)
000748  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
00074c  1f854400  addli r10, r9, 32
000750  eaa12622  vor.u.mz vr3{mr1}, r13, vr2
000754  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
000758  6a324802  vand.s.mz vr4{mr1}, r16, vr4
00075c  92125102  vadd.f.mz.rn vr5{mr1}, r2, vr5
000760  12124102  vadd.f.mz.rn vr4{mr1}, r2, vr4
000764  8a925002  vmul.f.mz.rn vr5{mr1}, r1, vr5
000768  0a924002  vmul.f.mz.rn vr4{mr1}, r1, vr4
00076c  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
000770  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
000774  6a336402  vand.s.mz vr6{mr1}, r8, vr6
000778  ea337402  vand.s.mz vr7{mr1}, r8, vr7
00077c  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
000780  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
000784  e69202c0  vabs.f vr5, vr5
000788  661202c0  vabs.f vr4, vr4
00078c  12b36802  vadd.s.mz vr6{mr1}, r17, vr6
000790  92b37802  vadd.s.mz vr7{mr1}, r17, vr7
000794  72215942  vlt.u.mz mr2{mr1}, r18, vr5
000798  6a336802  vand.s.mz vr6{mr1}, r16, vr6
00079c  ea327802  vand.s.mz vr5{mr1}, r16, vr7
0007a0  6aa32934  vor.u.mh vr6{mr2}, r19, vr2
0007a4  72214942  vlt.u.mz mr2{mr1}, r18, vr4
0007a8  eaa22934  vor.u.mh vr5{mr2}, r19, vr2
0007ac  6eb261c2  vsrl.s.mz vr4{mr1}, vr3, vr6
0007b0  6eb24222  vor.s.mz vr4{mr1}, vr5, vr4
0007b4  46804102  vstore.mz vr4{mr1}, 0(r3)
0007b8  4bfea7fc  ble.s r15, r10, -1124
0007bc  1f858100  addli r10, r3, 64
0007c0  9f848400  addli r9, r9, 64
0007c4  9f810101  addli r3, r3, 128
0007c8  42020502  vload.mz vr4{mr1}, 0(r10)
0007cc  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
0007d0  6a324802  vand.s.mz vr4{mr1}, r16, vr4
0007d4  92125102  vadd.f.mz.rn vr5{mr1}, r2, vr5
0007d8  12124102  vadd.f.mz.rn vr4{mr1}, r2, vr4
0007dc  8a925002  vmul.f.mz.rn vr5{mr1}, r1, vr5
0007e0  0a924002  vmul.f.mz.rn vr4{mr1}, r1, vr4
0007e4  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
0007e8  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
0007ec  6a336402  vand.s.mz vr6{mr1}, r8, vr6
0007f0  ea337402  vand.s.mz vr7{mr1}, r8, vr7
0007f4  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
0007f8  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
0007fc  e69202c0  vabs.f vr5, vr5
000800  661202c0  vabs.f vr4, vr4
000804  12b36802  vadd.s.mz vr6{mr1}, r17, vr6
000808  92b37802  vadd.s.mz vr7{mr1}, r17, vr7
00080c  72215942  vlt.u.mz mr2{mr1}, r18, vr5
000810  6a336802  vand.s.mz vr6{mr1}, r16, vr6
000814  ea327802  vand.s.mz vr5{mr1}, r16, vr7
000818  6aa32934  vor.u.mh vr6{mr2}, r19, vr2
00081c  72214942  vlt.u.mz mr2{mr1}, r18, vr4
000820  eaa22934  vor.u.mh vr5{mr2}, r19, vr2
000824  eeb161c2  vsrl.s.mz vr3{mr1}, vr3, vr6
000828  6eb13222  vor.s.mz vr2{mr1}, vr5, vr3
00082c  46002502  vstore.mz vr2{mr1}, 0(r10)
000830  3fdcf4fe  blt.s r9, r15, -236
000834  5b64ffff  j -1248
000838  80300002  core_id r1
00083c  bb800000  bneq r1, zero, 32
000840  63012f00  loadli.w r2,  16(r30)
000844  ab0100f0  lui r3, 983040
000848  1b311100  slli r2, r2, 1
00084c  17113100  or r2, r2, r3
000850  ab710000  lui r3, 7
000854  9f810100  addli r3, r3, 0
000858  7f013200  l_gm2sm r2, r3, 0(r[5:6])
00085c  2bf10000  lui r2, 15
000860  e3411f00  loadli.w r3,  12(r30)
000864  00200300  mfence { sm, gm }
000868  1b11f1ff  ori r2, r2, 4095
00086c  80210104  csr_set csr3, r2
000870  00d00100  sync_group
000874  cbde1110  ble.s r3, r1, 9140
000878  63012f00  loadli.w r2,  16(r30)
00087c  e3412f00  loadli.w r3,  20(r30)
000880  ab790000  lui r19, 7
000884  1f140000  addli r8, zero, 1
000888  1f098fd7  addli r18, r30, -5184
00088c  1f060002  addli r12, zero, 256
000890  9f060001  addli r13, zero, 128
000894  1f088000  addli r16, zero, 64
000898  9f084000  addli r17, zero, 32
00089c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0008a0  9f890900  addli r19, r19, 0
0008a4  0b133110  add.s r6, r2, r3
0008a8  1b321100  slli r4, r2, 1
0008ac  b3020108  fix2float.rn r5, r2
0008b0  1f71f3ff  addli r2, r6, -1
0008b4  1bb31100  slli r6, r3, 1
0008b8  8b133130  div.s r7, r2, r3
0008bc  2bf1ffff  lui r2, 1048575
0008c0  9b15f1ff  ori r11, r2, 4095
0008c4  5b070000  j 56
0008c8  00a00000  mfence { lm }
0008cc  eb540f00  load.d r[10:11], 0(r30)
0008d0  2b0100f0  lui r2, 983040
0008d4  1f098fd7  addli r18, r30, -5184
0008d8  80510102  load_param_i r3, 2
0008dc  17112200  or r2, r4, r2
0008e0  8b901110  add.s r1, r3, r1
0008e4  0baa4411  add.ul r[21:22], r[10:11], r[21:22]
0008e8  7f312a01  s_lm2gm r2, r18, 0(r[21:22])
0008ec  00a00200  mfence { lm, gm }
0008f0  63411f00  loadli.w r2,  12(r30)
0008f4  3fa02000  blt.s r1, r2, 8
0008f8  5b660400  j 9008
0008fc  63011f00  loadli.w r2,  8(r30)
000900  0b912010  add.s r2, r1, r2
000904  0b11f120  mul.s r2, r2, r15
000908  33110128  sext_int2long r[3:4], r2
00090c  173a8102  sll.d r[21:22], r[3:4], r8
000910  9f017fd6  addli r3, r30, -5320
000914  2b0100f0  lui r2, 983040
000918  ebd40100  load.d r[10:11], 0(r3)
00091c  17112200  or r2, r4, r2
000920  0bab4411  add.ul r[23:24], r[10:11], r[21:22]
000924  7f212b01  l_gm2lm r2, r18, 0(r[23:24])
000928  00a00200  mfence { lm, gm }
00092c  3fc78300  blt.s r7, r8, 464
000930  9f010000  addli r3, zero, 0
000934  1f010000  addli r2, zero, 0
000938  1f050000  addli r10, zero, 0
00093c  db0c0000  j 100
000940  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
000944  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000948  1f150500  addli r10, r10, 1
00094c  6a7136c0  vsrl.p vr2, r12, vr3
000950  6a7216c0  vsrl.p vr4, r12, vr1
000954  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
000958  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
00095c  eaf126c0  vsrl.p vr3, r13, vr2
000960  6af216c0  vsrl.p vr4, r13, vr1
000964  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000968  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
00096c  ea7128c0  vsrl.p vr3, r16, vr2
000970  6a7218c0  vsrl.p vr4, r16, vr1
000974  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000978  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
00097c  eaf128c0  vsrl.p vr3, r17, vr2
000980  6af218c0  vsrl.p vr4, r17, vr1
000984  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000988  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
00098c  fa140140  vextracti.f r9, 0(vr2)
000990  7a990040  vextracti.f r18, 0(vr1)
000994  8be19110  add.f.rn r3, r3, r9
000998  0b612111  add.f.rn r2, r2, r18
00099c  b7257500  beq r10, r7, 360
0009a0  1f0c0500  addli r24, r10, 0
0009a4  3730c700  beq r14, r12, 12
0009a8  172bb500  xor r22, r10, r11
0009ac  0b9c6311  add.s r24, r7, r22
0009b0  0b1bec20  mul.s r22, r24, r14
0009b4  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0009b8  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0009bc  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0009c0  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0009c4  0b9b6719  sub.s r22, r15, r22
0009c8  0b1beb40  min.s r22, r22, r14
0009cc  bf5d8bfe  blt.s r22, r8, -140
0009d0  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0009d4  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0009d8  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0009dc  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0009e0  9f0b0000  addli r23, zero, 0
0009e4  0b1c8321  mul.s r24, r6, r24
0009e8  9f0c8fd7  addli r25, r30, -5184
0009ec  1f8d0900  addli r26, r19, 0
0009f0  8b1d8d11  add.s r27, r26, r24
0009f4  9f848b00  addli r9, r23, 64
0009f8  ca820d02  vloads.mz vr5{mr1}, 0(r27)
0009fc  1f8e8d00  addli r28, r27, 64
000a00  4a030e02  vloads.mz vr6{mr1}, 0(r28)
000a04  0b9e8c11  add.s r28, r25, r24
000a08  c2030e02  vload.mz vr7{mr1}, 0(r28)
000a0c  1f098e00  addli r18, r28, 64
000a10  42040902  vload.mz vr8{mr1}, 0(r18)
000a14  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
000a18  92320002  vadd.s.mz vr5{mr1}, zero, vr0
000a1c  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
000a20  06b40300  vfp162float_l.rn vr8, vr7
000a24  86f30300  vfp162float_h.rn vr7, vr7
000a28  86340300  vfp162float_l.rn vr9, vr6
000a2c  06730300  vfp162float_h.rn vr6, vr6
000a30  86120400  vfloat2fp16_l.rn vr5, vr8
000a34  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
000a38  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
000a3c  12340002  vadd.s.mz vr8{mr1}, zero, vr0
000a40  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
000a44  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
000a48  06940400  vfloat2fp16_l.rn vr8, vr9
000a4c  86d20300  vfloat2fp16_h.rn vr5, vr7
000a50  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
000a54  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
000a58  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
000a5c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000a60  06540300  vfloat2fp16_h.rn vr8, vr6
000a64  46005e02  vstore.mz vr5{mr1}, 0(r28)
000a68  46008902  vstore.mz vr8{mr1}, 0(r18)
000a6c  4b5b9bfe  ble.s r22, r9, -300
000a70  9f840d01  addli r9, r27, 128
000a74  1f090e01  addli r18, r28, 128
000a78  9f8b0b01  addli r23, r23, 128
000a7c  1f0d0d02  addli r26, r26, 256
000a80  9f8c0c02  addli r25, r25, 256
000a84  ca820402  vloads.mz vr5{mr1}, 0(r9)
000a88  9f848d01  addli r9, r27, 192
000a8c  c2030902  vload.mz vr7{mr1}, 0(r18)
000a90  4a830402  vloads.mz vr6{mr1}, 0(r9)
000a94  9f048e01  addli r9, r28, 192
000a98  42840402  vload.mz vr8{mr1}, 0(r9)
000a9c  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
000aa0  92320002  vadd.s.mz vr5{mr1}, zero, vr0
000aa4  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
000aa8  12330002  vadd.s.mz vr6{mr1}, zero, vr0
000aac  86b40300  vfp162float_l.rn vr9, vr7
000ab0  86f30300  vfp162float_h.rn vr7, vr7
000ab4  86920400  vfloat2fp16_l.rn vr5, vr9
000ab8  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
000abc  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
000ac0  86340400  vfp162float_l.rn vr9, vr8
000ac4  06740400  vfp162float_h.rn vr8, vr8
000ac8  06930400  vfloat2fp16_l.rn vr6, vr9
000acc  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
000ad0  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
000ad4  86d20300  vfloat2fp16_h.rn vr5, vr7
000ad8  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
000adc  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
000ae0  06530400  vfloat2fp16_h.rn vr6, vr8
000ae4  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
000ae8  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
000aec  46005902  vstore.mz vr5{mr1}, 0(r18)
000af0  46806402  vstore.mz vr6{mr1}, 0(r9)
000af4  bffb6bff  blt.s r23, r22, -260
000af8  5bc9ffff  j -440
000afc  1f010000  addli r2, zero, 0
000b00  9f010000  addli r3, zero, 0
000b04  00a00000  mfence { lm }
000b08  3f8787fe  blt.s r15, r8, -576
000b0c  8f815118  div.f.rn r3, r3, r5
000b10  0f015118  div.f.rn r2, r2, r5
000b14  e3043f00  loadli.w r9,  24(r30)
000b18  1f0b0000  addli r22, zero, 0
000b1c  0be53120  mul.f.rn r10, r3, r3
000b20  8be10158  neg.f r3, r3
000b24  0b61a118  sub.f.rn r2, r2, r10
000b28  1f058fd7  addli r10, r30, -5184
000b2c  0b619110  add.f.rn r2, r2, r9
000b30  ab04803f  lui r9, 260096
000b34  0f010108  sqrt.f.rn r2, r2
000b38  0f812418  div.f.rn r2, r9, r2
000b3c  c2000502  vload.mz vr1{mr1}, 0(r10)
000b40  9f0b4b00  addli r23, r22, 32
000b44  06b10000  vfp162float_l.rn vr2, vr1
000b48  86f00000  vfp162float_h.rn vr1, vr1
000b4c  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
000b50  92911102  vadd.f.mz.rn vr3{mr1}, r3, vr1
000b54  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000b58  12321002  vadd.s.mz vr4{mr1}, zero, vr1
000b5c  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
000b60  8a113102  vmul.f.mz.rn vr3{mr1}, r2, vr3
000b64  06120100  vfloat2fp16_l.rn vr4, vr2
000b68  06d20100  vfloat2fp16_h.rn vr4, vr3
000b6c  46004502  vstore.mz vr4{mr1}, 0(r10)
000b70  4be577ff  ble.s r15, r23, -680
000b74  9f0b8500  addli r23, r10, 64
000b78  1f0b8b00  addli r22, r22, 64
000b7c  1f050501  addli r10, r10, 128
000b80  42810b02  vload.mz vr2{mr1}, 0(r23)
000b84  86310100  vfp162float_l.rn vr3, vr2
000b88  06710100  vfp162float_h.rn vr2, vr2
000b8c  92913102  vadd.f.mz.rn vr3{mr1}, r3, vr3
000b90  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
000b94  8a113102  vmul.f.mz.rn vr3{mr1}, r2, vr3
000b98  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
000b9c  86900100  vfloat2fp16_l.rn vr1, vr3
000ba0  86500100  vfloat2fp16_h.rn vr1, vr2
000ba4  46801b02  vstore.mz vr1{mr1}, 0(r23)
000ba8  3f5efbfe  blt.s r22, r15, -108
000bac  dba3ffff  j -740
000bb0  e3002f00  loadli.w r1,  16(r30)
000bb4  1f010010  addli r2, zero, 2048
000bb8  bb9c2002  bneq r1, r2, 1828
000bbc  003d0002  core_id r26
000bc0  3b700d00  bneq r26, zero, 28
000bc4  9f000040  addli r1, zero, 8192
000bc8  2b0100f0  lui r2, 983040
000bcc  97902000  or r1, r1, r2
000bd0  2b110100  lui r2, 17
000bd4  1f010108  addli r2, r2, 1024
000bd8  ff002200  l_gm2sm r1, r2, 0(r[5:6])
000bdc  abf00000  lui r1, 15
000be0  00200300  mfence { sm, gm }
000be4  9b0d1d00  andi r27, r26, 1
000be8  9f020006  addli r5, zero, 768
000bec  9b90f0ff  ori r1, r1, 4095
000bf0  80a10004  csr_set csr3, r1
000bf4  9f000006  addli r1, zero, 768
000bf8  00d00100  sync_group
000bfc  37a00d00  beq r27, zero, 8
000c00  9f02000a  addli r5, zero, 1280
000c04  63411f00  loadli.w r2,  12(r30)
000c08  9f110000  addli r3, zero, 1
000c0c  3f703110  blt.s r2, r3, 8220
000c10  0b921d20  mul.s r4, r27, r1
000c14  abf0ffff  lui r1, 1048575
000c18  2b1a0100  lui r20, 17
000c1c  2b3c0100  lui r24, 19
000c20  2b380100  lui r16, 19
000c24  00510102  load_param_i r2, 2
000c28  9f030000  addli r7, zero, 0
000c2c  1b471d00  srli r14, r26, 1
000c30  9bb72200  slli r15, r5, 2
000c34  1f2b0000  addli r22, zero, 2
000c38  9f088fd7  addli r17, r30, -5184
000c3c  9f0a0005  addli r21, zero, 640
000c40  9f0b0001  addli r23, zero, 128
000c44  9f058000  addli r11, zero, 64
000c48  1f064000  addli r12, zero, 32
000c4c  1f0e0003  addli r28, zero, 384
000c50  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000c54  9b9000f8  ori r1, r1, 3968
000c58  9b441100  srli r9, r2, 1
000c5c  1f010fd7  addli r2, r30, -5248
000c60  1f0a0a08  addli r20, r20, 1024
000c64  1f0c0c08  addli r24, r24, 1024
000c68  1f08080c  addli r16, r16, 1536
000c6c  67041fd6  storeli.w r1, -5312(r30)
000c70  abf00000  lui r1, 15
000c74  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000c78  9b9cf0ff  ori r25, r1, 4095
000c7c  db030000  j 28
000c80  00a00300  mfence { lm, sm, gm }
000c84  80a10c04  csr_set csr3, r25
000c88  00d00100  sync_group
000c8c  8b939310  add.s r7, r7, r9
000c90  3fa0d300  blt.s r7, r13, 8
000c94  5b6f0300  j 7032
000c98  8b90e310  add.s r1, r7, r14
000c9c  cb9f16fe  ble.s r13, r1, -28
000ca0  63011f00  loadli.w r2,  8(r30)
000ca4  1f037fd6  addli r6, r30, -5320
000ca8  8b902010  add.s r1, r1, r2
000cac  9bb0b000  slli r1, r1, 11
000cb0  97904000  or r1, r1, r4
000cb4  b3900028  sext_int2long r[2:3], r1
000cb8  17b96003  sll.d r[19:20], r[2:3], r22
000cbc  6b510300  load.d r[3:4], 0(r6)
000cc0  ab0000f0  lui r1, 983040
000cc4  97901700  or r1, r15, r1
000cc8  0b212111  add.ul r[3:4], r[3:4], r[19:20]
000ccc  ff201101  l_gm2lm r1, r17, 0(r[3:4])
000cd0  00a00200  mfence { lm, gm }
000cd4  3ba60d00  bneq r27, zero, 392
000cd8  9f010fd7  addli r3, r30, -5248
000cdc  63018fd6  loadli.w r2,  -5312(r30)
000ce0  9f000000  addli r1, zero, 0
000ce4  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
000ce8  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000cec  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000cf0  12323002  vadd.s.mz vr4{mr1}, zero, vr3
000cf4  0b954011  add.s r10, r1, r20
000cf8  8b911810  add.s r3, r17, r1
000cfc  1f010101  addli r2, r2, 128
000d00  9f800004  addli r1, r1, 512
000d04  1f030501  addli r6, r10, 128
000d08  4a100502  vloads_mask16.mz vr0{mr1}, 0(r10)
000d0c  1f048500  addli r8, r10, 64
000d10  42940102  vload_mask16.mz vr8{mr1}, 0(r3)
000d14  9f868101  addli r13, r3, 192
000d18  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
000d1c  1f038501  addli r6, r10, 192
000d20  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
000d24  1f848100  addli r8, r3, 64
000d28  c2950602  vload_mask16.mz vr11{mr1}, 0(r13)
000d2c  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
000d30  1f830101  addli r6, r3, 128
000d34  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
000d38  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
000d3c  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
000d40  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
000d44  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
000d48  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
000d4c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000d50  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
000d54  46108302  vstore_mask16.mz vr8{mr1}, 0(r6)
000d58  1f030502  addli r6, r10, 256
000d5c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
000d60  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
000d64  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
000d68  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
000d6c  1f840103  addli r8, r3, 384
000d70  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
000d74  1f038502  addli r6, r10, 320
000d78  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
000d7c  9f860102  addli r13, r3, 256
000d80  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000d84  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
000d88  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000d8c  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
000d90  1f030503  addli r6, r10, 384
000d94  c2930602  vload_mask16.mz vr7{mr1}, 0(r13)
000d98  1f058503  addli r10, r10, 448
000d9c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000da0  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
000da4  1f838102  addli r6, r3, 320
000da8  4a150502  vloads_mask16.mz vr10{mr1}, 0(r10)
000dac  9f818103  addli r3, r3, 448
000db0  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
000db4  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
000db8  c2130402  vload_mask16.mz vr7{mr1}, 0(r8)
000dbc  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
000dc0  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
000dc4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000dc8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
000dcc  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
000dd0  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
000dd4  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
000dd8  13035105  setlt.u r6, r2, r21
000ddc  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
000de0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000de4  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000de8  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
000dec  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
000df0  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
000df4  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
000df8  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
000dfc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000e00  bb5b03fe  bneq r6, zero, -268
000e04  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
000e08  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000e0c  9f000002  addli r1, zero, 256
000e10  6af100c0  vsrl.p vr2, r1, vr0
000e14  eaf110c0  vsrl.p vr3, r1, vr1
000e18  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000e1c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000e20  6af10bc0  vsrl.p vr2, r23, vr0
000e24  eaf11bc0  vsrl.p vr3, r23, vr1
000e28  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000e2c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000e30  6af105c0  vsrl.p vr2, r11, vr0
000e34  eaf115c0  vsrl.p vr3, r11, vr1
000e38  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000e3c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000e40  6a7106c0  vsrl.p vr2, r12, vr0
000e44  ea7116c0  vsrl.p vr3, r12, vr1
000e48  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000e4c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000e50  fa110040  vextracti.f r3, 0(vr0)
000e54  fa900040  vextracti.f r1, 0(vr1)
000e58  5b650000  j 808
000e5c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000e60  2bf1ffff  lui r2, 1048575
000e64  1f8b0d00  addli r22, r27, 0
000e68  9f000000  addli r1, zero, 0
000e6c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
000e70  12321002  vadd.s.mz vr4{mr1}, zero, vr1
000e74  92311002  vadd.s.mz vr3{mr1}, zero, vr1
000e78  1b1101f8  ori r2, r2, 3968
000e7c  0b151a10  add.s r10, r20, r1
000e80  8b911810  add.s r3, r17, r1
000e84  1f010101  addli r2, r2, 128
000e88  9f800004  addli r1, r1, 512
000e8c  1f030531  addli r6, r10, 6272
000e90  9f060530  addli r13, r10, 6144
000e94  1f048531  addli r8, r10, 6336
000e98  9f8d0118  addli r27, r3, 3072
000e9c  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
000ea0  ca920602  vloads_mask16.mz vr5{mr1}, 0(r13)
000ea4  9f068530  addli r13, r10, 6208
000ea8  ca140402  vloads_mask16.mz vr9{mr1}, 0(r8)
000eac  1f840119  addli r8, r3, 3200
000eb0  1f838118  addli r6, r3, 3136
000eb4  42930d02  vload_mask16.mz vr6{mr1}, 0(r27)
000eb8  4a940602  vloads_mask16.mz vr8{mr1}, 0(r13)
000ebc  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
000ec0  9f868119  addli r13, r3, 3264
000ec4  c2150302  vload_mask16.mz vr11{mr1}, 0(r6)
000ec8  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
000ecc  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
000ed0  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
000ed4  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
000ed8  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
000edc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000ee0  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
000ee4  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
000ee8  1f040532  addli r8, r10, 6400
000eec  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
000ef0  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
000ef4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000ef8  46906d02  vstore_mask16.mz vr6{mr1}, 0(r27)
000efc  9f86011a  addli r13, r3, 3328
000f00  c2930602  vload_mask16.mz vr7{mr1}, 0(r13)
000f04  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
000f08  1f83011b  addli r6, r3, 3456
000f0c  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
000f10  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
000f14  4a100402  vloads_mask16.mz vr0{mr1}, 0(r8)
000f18  1f048532  addli r8, r10, 6464
000f1c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000f20  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000f24  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
000f28  1f040533  addli r8, r10, 6528
000f2c  1f058533  addli r10, r10, 6592
000f30  4a140402  vloads_mask16.mz vr8{mr1}, 0(r8)
000f34  1f84811a  addli r8, r3, 3392
000f38  4a150502  vloads_mask16.mz vr10{mr1}, 0(r10)
000f3c  9f81811b  addli r3, r3, 3520
000f40  c2140402  vload_mask16.mz vr9{mr1}, 0(r8)
000f44  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
000f48  c2130302  vload_mask16.mz vr7{mr1}, 0(r6)
000f4c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
000f50  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
000f54  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000f58  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
000f5c  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
000f60  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
000f64  46106402  vstore_mask16.mz vr6{mr1}, 0(r8)
000f68  1304c105  setlt.u r8, r2, r28
000f6c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
000f70  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000f74  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000f78  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
000f7c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
000f80  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
000f84  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
000f88  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
000f8c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000f90  bb3b04fe  bneq r8, zero, -276
000f94  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000f98  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
000f9c  9f000002  addli r1, zero, 256
000fa0  2bf3ffff  lui r6, 1048575
000fa4  9f010000  addli r3, zero, 0
000fa8  1b1503f8  ori r10, r6, 3968
000fac  eaf110c0  vsrl.p vr3, r1, vr1
000fb0  6af100c0  vsrl.p vr2, r1, vr0
000fb4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000fb8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000fbc  eaf11bc0  vsrl.p vr3, r23, vr1
000fc0  6af10bc0  vsrl.p vr2, r23, vr0
000fc4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000fc8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000fcc  eaf115c0  vsrl.p vr3, r11, vr1
000fd0  6af105c0  vsrl.p vr2, r11, vr0
000fd4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000fd8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000fdc  ea7116c0  vsrl.p vr3, r12, vr1
000fe0  6a7106c0  vsrl.p vr2, r12, vr0
000fe4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000fe8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000fec  7a910040  vextracti.f r2, 0(vr1)
000ff0  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000ff4  fa100040  vextracti.f r1, 0(vr0)
000ff8  12311002  vadd.s.mz vr2{mr1}, zero, vr1
000ffc  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001000  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001004  8b1d3a10  add.s r27, r20, r3
001008  8b963810  add.s r13, r17, r3
00100c  1f050501  addli r10, r10, 128
001010  9f810104  addli r3, r3, 512
001014  1f830d18  addli r6, r27, 3072
001018  1f840d19  addli r8, r27, 3200
00101c  42940602  vload_mask16.mz vr8{mr1}, 0(r13)
001020  1f8d8601  addli r26, r13, 192
001024  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
001028  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
00102c  1f838d18  addli r6, r27, 3136
001030  1f848d19  addli r8, r27, 3264
001034  c2150d02  vload_mask16.mz vr11{mr1}, 0(r26)
001038  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
00103c  1f830601  addli r6, r13, 128
001040  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
001044  1f848600  addli r8, r13, 64
001048  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
00104c  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
001050  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
001054  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
001058  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
00105c  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
001060  46108302  vstore_mask16.mz vr8{mr1}, 0(r6)
001064  1f830d1a  addli r6, r27, 3328
001068  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
00106c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001070  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
001074  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
001078  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
00107c  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
001080  1f838d1a  addli r6, r27, 3392
001084  46106d02  vstore_mask16.mz vr6{mr1}, 0(r26)
001088  1f8d0602  addli r26, r13, 256
00108c  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
001090  1f840603  addli r8, r13, 384
001094  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
001098  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00109c  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
0010a0  1f830d1b  addli r6, r27, 3456
0010a4  c2130d02  vload_mask16.mz vr7{mr1}, 0(r26)
0010a8  9f8d8d1b  addli r27, r27, 3520
0010ac  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0010b0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0010b4  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
0010b8  1f838602  addli r6, r13, 320
0010bc  4a950d02  vloads_mask16.mz vr10{mr1}, 0(r27)
0010c0  9f868603  addli r13, r13, 448
0010c4  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
0010c8  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0010cc  c2130402  vload_mask16.mz vr7{mr1}, 0(r8)
0010d0  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0010d4  c2940602  vload_mask16.mz vr9{mr1}, 0(r13)
0010d8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0010dc  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0010e0  46100d02  vstore_mask16.mz vr0{mr1}, 0(r26)
0010e4  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0010e8  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
0010ec  13035505  setlt.u r6, r10, r21
0010f0  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0010f4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0010f8  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0010fc  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
001100  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
001104  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
001108  46907602  vstore_mask16.mz vr7{mr1}, 0(r13)
00110c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
001110  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001114  bb4b03fe  bneq r6, zero, -272
001118  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
00111c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001120  9f010002  addli r3, zero, 256
001124  9f0d0b00  addli r27, r22, 0
001128  003d0002  core_id r26
00112c  1f2b0000  addli r22, zero, 2
001130  6af101c0  vsrl.p vr2, r3, vr0
001134  eaf111c0  vsrl.p vr3, r3, vr1
001138  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00113c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001140  6af10bc0  vsrl.p vr2, r23, vr0
001144  eaf11bc0  vsrl.p vr3, r23, vr1
001148  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00114c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001150  6af105c0  vsrl.p vr2, r11, vr0
001154  eaf115c0  vsrl.p vr3, r11, vr1
001158  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00115c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001160  6a7106c0  vsrl.p vr2, r12, vr0
001164  ea7116c0  vsrl.p vr3, r12, vr1
001168  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00116c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001170  fa110040  vextracti.f r3, 0(vr0)
001174  7a930040  vextracti.f r6, 0(vr1)
001178  8be13010  add.f.rn r3, r1, r3
00117c  8b606110  add.f.rn r1, r2, r6
001180  0b819330  div.u r2, r7, r9
001184  1f050000  addli r10, zero, 0
001188  1b316100  slli r2, r2, 6
00118c  1b010104  andi r2, r2, 64
001190  1711a101  or r2, r2, r26
001194  1b332100  slli r6, r2, 2
001198  1b01e107  andi r2, r2, 126
00119c  0b148311  add.s r8, r6, r24
0011a0  1b312100  slli r2, r2, 2
0011a4  73603400  stores.w r3, 0(r8)
0011a8  8b110311  add.s r3, r6, r16
0011ac  1b134300  ori r6, r6, 4
0011b0  73e01100  stores.w r1, 0(r3)
0011b4  8b108311  add.s r1, r6, r24
0011b8  8b118111  add.s r3, r2, r24
0011bc  0b130311  add.s r6, r6, r16
0011c0  0b110111  add.s r2, r2, r16
0011c4  00a00300  mfence { lm, sm, gm }
0011c8  80a10c04  csr_set csr3, r25
0011cc  00d00100  sync_group
0011d0  efc00000  loads.w r1, 0(r1)
0011d4  efc10100  loads.w r3, 0(r3)
0011d8  6f430300  loads.w r6, 0(r6)
0011dc  6f410100  loads.w r2, 0(r2)
0011e0  8be03010  add.f.rn r1, r1, r3
0011e4  0b612310  add.f.rn r2, r6, r2
0011e8  2b03003a  lui r6, 237568
0011ec  8be16020  mul.f.rn r3, r1, r6
0011f0  8b606120  mul.f.rn r1, r2, r6
0011f4  0be13120  mul.f.rn r2, r3, r3
0011f8  8be02018  sub.f.rn r1, r1, r2
0011fc  63013f00  loadli.w r2,  24(r30)
001200  8be02010  add.f.rn r1, r1, r2
001204  2b01803f  lui r2, 260096
001208  8f800008  sqrt.f.rn r1, r1
00120c  8f001118  div.f.rn r1, r2, r1
001210  0be10158  neg.f r2, r3
001214  9f018fd7  addli r3, r30, -5184
001218  1f838100  addli r6, r3, 64
00121c  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
001220  1f044500  addli r8, r10, 32
001224  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
001228  13848206  setle.u r8, r5, r8
00122c  12100102  vadd.f.mz.rn vr0{mr1}, r2, vr0
001230  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
001234  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
001238  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
00123c  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
001240  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
001244  bb700400  bneq r8, zero, 60
001248  1f830101  addli r6, r3, 128
00124c  1f848101  addli r8, r3, 192
001250  1f058500  addli r10, r10, 64
001254  9f810102  addli r3, r3, 256
001258  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
00125c  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
001260  93065504  setlt.u r13, r10, r5
001264  12100102  vadd.f.mz.rn vr0{mr1}, r2, vr0
001268  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
00126c  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
001270  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
001274  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
001278  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
00127c  3bfe06fe  bneq r13, zero, -100
001280  6b510f00  load.d r[3:4], 0(r30)
001284  ab0000f0  lui r1, 983040
001288  00a00000  mfence { lm }
00128c  97901700  or r1, r15, r1
001290  0b212111  add.ul r[3:4], r[3:4], r[19:20]
001294  ff301101  s_lm2gm r1, r17, 0(r[3:4])
001298  00a00200  mfence { lm, gm }
00129c  e3461f00  loadli.w r13,  12(r30)
0012a0  db3dffff  j -1556
0012a4  80300002  core_id r1
0012a8  1f210000  addli r2, zero, 2
0012ac  b7d5200a  beq r1, r2, 5492
0012b0  1f110000  addli r2, zero, 1
0012b4  37f72006  beq r1, r2, 3548
0012b8  3b96000a  bneq r1, zero, 5508
0012bc  63012f00  loadli.w r2,  16(r30)
0012c0  ab0100f0  lui r3, 983040
0012c4  1b312100  slli r2, r2, 2
0012c8  17113100  or r2, r2, r3
0012cc  abe10000  lui r3, 14
0012d0  9f810108  addli r3, r3, 1024
0012d4  7f013200  l_gm2sm r2, r3, 0(r[5:6])
0012d8  dbac0200  j 5476
0012dc  80300002  core_id r1
0012e0  bb800000  bneq r1, zero, 32
0012e4  63012f00  loadli.w r2,  16(r30)
0012e8  ab0100f0  lui r3, 983040
0012ec  1b312100  slli r2, r2, 2
0012f0  17113100  or r2, r2, r3
0012f4  ab410100  lui r3, 20
0012f8  9f8101f0  addli r3, r3, -2048
0012fc  7f013200  l_gm2sm r2, r3, 0(r[5:6])
001300  2bf10000  lui r2, 15
001304  e3411f00  loadli.w r3,  12(r30)
001308  00200300  mfence { sm, gm }
00130c  1b11f1ff  ori r2, r2, 4095
001310  80210104  csr_set csr3, r2
001314  00d00100  sync_group
001318  4bc4110c  ble.s r3, r1, 6416
00131c  63012f00  loadli.w r2,  16(r30)
001320  e3412f00  loadli.w r3,  20(r30)
001324  2b4a0100  lui r20, 20
001328  1f058fd7  addli r10, r30, -5184
00132c  9f150000  addli r11, zero, 1
001330  9f060002  addli r13, zero, 256
001334  1f080001  addli r16, zero, 128
001338  9f088000  addli r17, zero, 64
00133c  1f094000  addli r18, zero, 32
001340  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001344  1f0a0af0  addli r20, r20, -2048
001348  0b133110  add.s r6, r2, r3
00134c  1b322100  slli r4, r2, 2
001350  33010108  fix2float.rn r2, r2
001354  67042fd6  storeli.w r2, -5312(r30)
001358  1f71f3ff  addli r2, r6, -1
00135c  1bb32100  slli r6, r3, 2
001360  8b133130  div.s r7, r2, r3
001364  2bf1ffff  lui r2, 1048575
001368  1b16f1ff  ori r12, r2, 4095
00136c  1f010fd7  addli r2, r30, -5248
001370  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001374  5b070000  j 56
001378  00a00000  mfence { lm }
00137c  6b540f00  load.d r[9:10], 0(r30)
001380  2b0100f0  lui r2, 983040
001384  1f058fd7  addli r10, r30, -5184
001388  80510102  load_param_i r3, 2
00138c  17112200  or r2, r4, r2
001390  8b901110  add.s r1, r3, r1
001394  8b2a5411  add.ul r[22:23], r[9:10], r[22:23]
001398  7fb1aa00  s_lm2gm r2, r10, 0(r[22:23])
00139c  00a00200  mfence { lm, gm }
0013a0  63411f00  loadli.w r2,  12(r30)
0013a4  3fa02000  blt.s r1, r2, 8
0013a8  5b100300  j 6272
0013ac  63011f00  loadli.w r2,  8(r30)
0013b0  9f220000  addli r5, zero, 2
0013b4  0b912010  add.s r2, r1, r2
0013b8  0b11f120  mul.s r2, r2, r15
0013bc  33110128  sext_int2long r[3:4], r2
0013c0  973a5102  sll.d r[22:23], r[3:4], r5
0013c4  9f017fd6  addli r3, r30, -5320
0013c8  2b0100f0  lui r2, 983040
0013cc  6bd40100  load.d r[9:10], 0(r3)
0013d0  17112200  or r2, r4, r2
0013d4  8b2b5411  add.ul r[24:25], r[9:10], r[22:23]
0013d8  7fa1ab00  l_gm2lm r2, r10, 0(r[24:25])
0013dc  00a00200  mfence { lm, gm }
0013e0  bf97b300  blt.s r7, r11, 484
0013e4  9f010000  addli r3, zero, 0
0013e8  1f010000  addli r2, zero, 0
0013ec  1f050000  addli r10, zero, 0
0013f0  db0c0000  j 100
0013f4  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
0013f8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0013fc  1f150500  addli r10, r10, 1
001400  6af106c0  vsrl.p vr2, r13, vr0
001404  eaf116c0  vsrl.p vr3, r13, vr1
001408  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00140c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001410  6a7108c0  vsrl.p vr2, r16, vr0
001414  ea7118c0  vsrl.p vr3, r16, vr1
001418  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00141c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001420  6af108c0  vsrl.p vr2, r17, vr0
001424  eaf118c0  vsrl.p vr3, r17, vr1
001428  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00142c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001430  6a7109c0  vsrl.p vr2, r18, vr0
001434  ea7119c0  vsrl.p vr3, r18, vr1
001438  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00143c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001440  fa120040  vextracti.f r5, 0(vr0)
001444  7a940040  vextracti.f r8, 0(vr1)
001448  8be15110  add.f.rn r3, r3, r5
00144c  0b618110  add.f.rn r2, r2, r8
001450  b7757500  beq r10, r7, 380
001454  9f090500  addli r19, r10, 0
001458  3730d700  beq r14, r13, 12
00145c  9729c500  xor r19, r10, r12
001460  8b993311  add.s r19, r7, r19
001464  9f020fd7  addli r5, r30, -5248
001468  8b9be920  mul.s r23, r19, r14
00146c  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
001470  8b9b7719  sub.s r23, r15, r23
001474  8b9beb40  min.s r23, r23, r14
001478  12321002  vadd.s.mz vr4{mr1}, zero, vr1
00147c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001480  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001484  bfcdbbfe  blt.s r23, r11, -144
001488  42920202  vload_mask16.mz vr4{mr1}, 0(r5)
00148c  1f0c0000  addli r24, zero, 0
001490  8b1c3321  mul.s r25, r6, r19
001494  1f0d8fd7  addli r26, r30, -5184
001498  9f0d0a00  addli r27, r20, 0
00149c  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0014a0  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0014a4  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0014a8  8b999d11  add.s r19, r27, r25
0014ac  0b1e9d11  add.s r28, r26, r25
0014b0  1f848900  addli r8, r19, 64
0014b4  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
0014b8  9f848901  addli r9, r19, 192
0014bc  c2140e02  vload_mask16.mz vr9{mr1}, 0(r28)
0014c0  9f028e01  addli r5, r28, 192
0014c4  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
0014c8  1f840901  addli r8, r19, 128
0014cc  4a940402  vloads_mask16.mz vr8{mr1}, 0(r9)
0014d0  9f040e01  addli r9, r28, 128
0014d4  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
0014d8  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
0014dc  c2950402  vload_mask16.mz vr11{mr1}, 0(r9)
0014e0  1f048e00  addli r8, r28, 64
0014e4  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
0014e8  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0014ec  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0014f0  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
0014f4  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
0014f8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0014fc  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001500  46105e02  vstore_mask16.mz vr5{mr1}, 0(r28)
001504  46106402  vstore_mask16.mz vr6{mr1}, 0(r8)
001508  1f048c00  addli r8, r24, 64
00150c  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
001510  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001514  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001518  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
00151c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001520  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
001524  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
001528  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
00152c  4bab8bfe  ble.s r23, r8, -312
001530  1f840902  addli r8, r19, 256
001534  9f848902  addli r9, r19, 320
001538  9f020e02  addli r5, r28, 256
00153c  1f0c0c01  addli r24, r24, 128
001540  9f8d0d04  addli r27, r27, 512
001544  1f0d0d04  addli r26, r26, 512
001548  4a100402  vloads_mask16.mz vr0{mr1}, 0(r8)
00154c  1f840903  addli r8, r19, 384
001550  ca920402  vloads_mask16.mz vr5{mr1}, 0(r9)
001554  42930202  vload_mask16.mz vr6{mr1}, 0(r5)
001558  9f048e02  addli r9, r28, 320
00155c  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
001560  1f848903  addli r8, r19, 448
001564  9f098e03  addli r19, r28, 448
001568  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
00156c  4a140402  vloads_mask16.mz vr8{mr1}, 0(r8)
001570  1f040e03  addli r8, r28, 384
001574  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
001578  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
00157c  42930902  vload_mask16.mz vr6{mr1}, 0(r19)
001580  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001584  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
001588  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00158c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001590  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
001594  46905402  vstore_mask16.mz vr5{mr1}, 0(r9)
001598  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
00159c  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0015a0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0015a4  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
0015a8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0015ac  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0015b0  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0015b4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0015b8  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
0015bc  bf3b7cff  blt.s r24, r23, -276
0015c0  dbc6ffff  j -460
0015c4  1f010000  addli r2, zero, 0
0015c8  9f010000  addli r3, zero, 0
0015cc  00a00000  mfence { lm }
0015d0  bfa6b7fe  blt.s r15, r11, -600
0015d4  e3028fd6  loadli.w r5,  -5312(r30)
0015d8  9f090000  addli r19, zero, 0
0015dc  8f815118  div.f.rn r3, r3, r5
0015e0  0f015118  div.f.rn r2, r2, r5
0015e4  e3023f00  loadli.w r5,  24(r30)
0015e8  0be53120  mul.f.rn r10, r3, r3
0015ec  8be10158  neg.f r3, r3
0015f0  0b61a118  sub.f.rn r2, r2, r10
0015f4  1f058fd7  addli r10, r30, -5184
0015f8  0b615110  add.f.rn r2, r2, r5
0015fc  ab02803f  lui r5, 260096
001600  0f010108  sqrt.f.rn r2, r2
001604  0f812218  div.f.rn r2, r5, r2
001608  9f0b8500  addli r23, r10, 64
00160c  c2100502  vload_mask16.mz vr1{mr1}, 0(r10)
001610  1f8c4900  addli r24, r19, 32
001614  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
001618  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
00161c  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
001620  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
001624  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
001628  46101502  vstore_mask16.mz vr1{mr1}, 0(r10)
00162c  46902b02  vstore_mask16.mz vr2{mr1}, 0(r23)
001630  4ba587ff  ble.s r15, r24, -696
001634  9f0b0501  addli r23, r10, 128
001638  1f0c8501  addli r24, r10, 192
00163c  9f898900  addli r19, r19, 64
001640  1f050502  addli r10, r10, 256
001644  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
001648  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
00164c  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
001650  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
001654  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
001658  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
00165c  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
001660  46102c02  vstore_mask16.mz vr2{mr1}, 0(r24)
001664  bf9ef9fe  blt.s r19, r15, -92
001668  5ba2ffff  j -752
00166c  e3002f00  loadli.w r1,  16(r30)
001670  2b0100f0  lui r2, 983040
001674  9bb01000  slli r1, r1, 1
001678  97902000  or r1, r1, r2
00167c  2b110000  lui r2, 1
001680  1f010100  addli r2, r2, 0
001684  ff002300  l_gm2sm r1, r2, 0(r[7:8])
001688  5b080000  j 64
00168c  63012f00  loadli.w r2,  16(r30)
001690  ab0100f0  lui r3, 983040
001694  1b311100  slli r2, r2, 1
001698  17113100  or r2, r2, r3
00169c  ab510000  lui r3, 5
0016a0  9f810100  addli r3, r3, 0
0016a4  7f013300  l_gm2sm r2, r3, 0(r[7:8])
0016a8  5bc30000  j 1560
0016ac  e3002f00  loadli.w r1,  16(r30)
0016b0  2b0100f0  lui r2, 983040
0016b4  9bb01000  slli r1, r1, 1
0016b8  97902000  or r1, r1, r2
0016bc  2b210000  lui r2, 2
0016c0  1f010100  addli r2, r2, 0
0016c4  ff002400  l_gm2sm r1, r2, 0(r[9:10])
0016c8  abf00000  lui r1, 15
0016cc  63411f00  loadli.w r2,  12(r30)
0016d0  00200300  mfence { sm, gm }
0016d4  9b90f0ff  ori r1, r1, 4095
0016d8  80a10004  csr_set csr3, r1
0016dc  00d00100  sync_group
0016e0  4b25b10a  ble.s r2, r11, 5448
0016e4  e3002f00  loadli.w r1,  16(r30)
0016e8  63412f00  loadli.w r2,  20(r30)
0016ec  9f082000  addli r17, zero, 16
0016f0  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0016f4  1f140000  addli r8, zero, 1
0016f8  9f048fd7  addli r9, r30, -5184
0016fc  1f080002  addli r16, zero, 256
001700  ab09ffff  lui r19, 1048560
001704  ab0a807f  lui r21, 522240
001708  2b0bc07f  lui r22, 523264
00170c  9f0b0001  addli r23, zero, 128
001710  1f0c8000  addli r24, zero, 64
001714  9f0c4000  addli r25, zero, 32
001718  9bb21000  slli r5, r1, 1
00171c  8b912010  add.s r3, r1, r2
001720  b3800008  fix2float.rn r1, r1
001724  1b331100  slli r6, r2, 1
001728  e70b1fd4  storeli.w r1, -5448(r30)
00172c  9ff0f1ff  addli r1, r3, -1
001730  e74b5fd4  storeli.w r5, -5444(r30)
001734  8b932030  div.s r7, r1, r2
001738  abf0ffff  lui r1, 1048575
00173c  1b96f0ff  ori r12, r1, 4095
001740  9f000fd7  addli r1, r30, -5248
001744  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001748  6aa00822  vor.u.mz vr0{mr1}, r17, vr0
00174c  9f008fd6  addli r1, r30, -5312
001750  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001754  ab700000  lui r1, 7
001758  1b9af0ff  ori r20, r1, 4095
00175c  db080000  j 68
001760  9f048fd5  addli r9, r30, -5440
001764  00a00000  mfence { lm }
001768  6b510f00  load.d r[3:4], 0(r30)
00176c  ab0000f0  lui r1, 983040
001770  6bd20400  load.d r[5:6], 0(r9)
001774  9f048fd7  addli r9, r30, -5184
001778  0b214110  add.ul r[3:4], r[3:4], r[5:6]
00177c  e3427fd5  loadli.w r5,  -5444(r30)
001780  00520102  load_param_i r4, 2
001784  8b15b210  add.s r11, r4, r11
001788  97901200  or r1, r5, r1
00178c  ff309100  s_lm2gm r1, r9, 0(r[3:4])
001790  00a00200  mfence { lm, gm }
001794  e3401f00  loadli.w r1,  12(r30)
001798  3fa01500  blt.s r11, r1, 8
00179c  db910200  j 5260
0017a0  e3001f00  loadli.w r1,  8(r30)
0017a4  1f027fd6  addli r4, r30, -5320
0017a8  8b901510  add.s r1, r11, r1
0017ac  8b90f020  mul.s r1, r1, r15
0017b0  b3900028  sext_int2long r[2:3], r1
0017b4  17bd8002  sll.d r[27:28], r[2:3], r8
0017b8  6b510200  load.d r[3:4], 0(r4)
0017bc  ab0000f0  lui r1, 983040
0017c0  1f028fd5  addli r4, r30, -5440
0017c4  97901200  or r1, r5, r1
0017c8  7330a201  store.d r[27:28], 0(r4)
0017cc  0b21a111  add.ul r[3:4], r[3:4], r[27:28]
0017d0  ff209100  l_gm2lm r1, r9, 0(r[3:4])
0017d4  00a00200  mfence { lm, gm }
0017d8  bfdc8300  blt.s r7, r8, 820
0017dc  9f060000  addli r13, zero, 0
0017e0  9f000000  addli r1, zero, 0
0017e4  1f0e0000  addli r28, zero, 0
0017e8  db0c0000  j 100
0017ec  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
0017f0  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
0017f4  1f1e0e00  addli r28, r28, 1
0017f8  6a7108c0  vsrl.p vr2, r16, vr0
0017fc  ea7118c0  vsrl.p vr3, r16, vr1
001800  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001804  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001808  6af10bc0  vsrl.p vr2, r23, vr0
00180c  eaf11bc0  vsrl.p vr3, r23, vr1
001810  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001814  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001818  6a710cc0  vsrl.p vr2, r24, vr0
00181c  ea711cc0  vsrl.p vr3, r24, vr1
001820  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001824  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001828  6af10cc0  vsrl.p vr2, r25, vr0
00182c  eaf11cc0  vsrl.p vr3, r25, vr1
001830  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001834  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001838  7a110040  vextracti.f r2, 0(vr0)
00183c  fa910040  vextracti.f r3, 0(vr1)
001840  8be62610  add.f.rn r13, r13, r2
001844  8be03010  add.f.rn r1, r1, r3
001848  373b7e00  beq r28, r7, 716
00184c  1f010e00  addli r2, r28, 0
001850  37300701  beq r14, r16, 12
001854  1721ce00  xor r2, r28, r12
001858  0b912310  add.s r2, r7, r2
00185c  8b11e120  mul.s r3, r2, r14
001860  8b913718  sub.s r3, r15, r3
001864  0b95e140  min.s r10, r3, r14
001868  9f010fd7  addli r3, r30, -5248
00186c  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
001870  92322002  vadd.s.mz vr5{mr1}, zero, vr2
001874  12322002  vadd.s.mz vr4{mr1}, zero, vr2
001878  92312002  vadd.s.mz vr3{mr1}, zero, vr2
00187c  bf4d85fe  blt.s r10, r8, -144
001880  1f020fd7  addli r4, r30, -5248
001884  2b090000  lui r18, 0
001888  8b112320  mul.s r3, r6, r2
00188c  9f040000  addli r9, zero, 0
001890  1f018fd7  addli r2, r30, -5184
001894  c2120202  vload_mask16.mz vr5{mr1}, 0(r4)
001898  1f090900  addli r18, r18, 0
00189c  12315002  vadd.s.mz vr2{mr1}, zero, vr5
0018a0  92315002  vadd.s.mz vr3{mr1}, zero, vr5
0018a4  12325002  vadd.s.mz vr4{mr1}, zero, vr5
0018a8  0b1d3910  add.s r26, r18, r3
0018ac  0b123110  add.s r4, r2, r3
0018b0  9f028fd6  addli r5, r30, -5312
0018b4  4a030d02  vloads.mz vr6{mr1}, 0(r26)
0018b8  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
0018bc  c2030202  vload.mz vr7{mr1}, 0(r4)
0018c0  9f020fd7  addli r5, r30, -5248
0018c4  9f0d8d00  addli r27, r26, 64
0018c8  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
0018cc  9f828400  addli r5, r9, 64
0018d0  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
0018d4  6ab57902  vand.s.mz vr10{mr1}, r19, vr7
0018d8  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
0018dc  6ab36902  vand.s.mz vr6{mr1}, r19, vr6
0018e0  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
0018e4  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0018e8  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
0018ec  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
0018f0  669503c0  vabs.f vr10, vr7
0018f4  6a348402  vand.s.mz vr8{mr1}, r8, vr8
0018f8  ea349402  vand.s.mz vr9{mr1}, r8, vr9
0018fc  72a1aa42  vlt.u.mz mr2{mr1}, r21, vr10
001900  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
001904  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
001908  12348a02  vadd.s.mz vr8{mr1}, r20, vr8
00190c  92349a02  vadd.s.mz vr9{mr1}, r20, vr9
001910  eab38902  vand.s.mz vr7{mr1}, r19, vr8
001914  661403c0  vabs.f vr8, vr6
001918  6ab39902  vand.s.mz vr6{mr1}, r19, vr9
00191c  ea230b34  vor.u.mh vr7{mr2}, r22, vr0
001920  72a18a42  vlt.u.mz mr2{mr1}, r21, vr8
001924  6a230b34  vor.u.mh vr6{mr2}, r22, vr0
001928  4a840d02  vloads.mz vr8{mr1}, 0(r27)
00192c  9f0d8200  addli r27, r4, 64
001930  c2840d02  vload.mz vr9{mr1}, 0(r27)
001934  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
001938  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
00193c  6ab36902  vand.s.mz vr6{mr1}, r19, vr6
001940  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
001944  eab49902  vand.s.mz vr9{mr1}, r19, vr9
001948  46007202  vstore.mz vr7{mr1}, 0(r4)
00194c  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
001950  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
001954  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
001958  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
00195c  6ab48902  vand.s.mz vr8{mr1}, r19, vr8
001960  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
001964  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
001968  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
00196c  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
001970  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
001974  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
001978  ea349402  vand.s.mz vr9{mr1}, r8, vr9
00197c  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
001980  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
001984  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
001988  661505c0  vabs.f vr10, vr10
00198c  661404c0  vabs.f vr8, vr8
001990  92349a02  vadd.s.mz vr9{mr1}, r20, vr9
001994  9235ba02  vadd.s.mz vr11{mr1}, r20, vr11
001998  72a1aa42  vlt.u.mz mr2{mr1}, r21, vr10
00199c  eab49902  vand.s.mz vr9{mr1}, r19, vr9
0019a0  6ab5b902  vand.s.mz vr10{mr1}, r19, vr11
0019a4  ea240b34  vor.u.mh vr9{mr2}, r22, vr0
0019a8  72a18a42  vlt.u.mz mr2{mr1}, r21, vr8
0019ac  6a250b34  vor.u.mh vr10{mr2}, r22, vr0
0019b0  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
0019b4  eab4a902  vand.s.mz vr9{mr1}, r19, vr10
0019b8  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
0019bc  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
0019c0  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
0019c4  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
0019c8  46808d02  vstore.mz vr8{mr1}, 0(r27)
0019cc  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0019d0  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0019d4  4b6855fe  ble.s r10, r5, -488
0019d8  9f020d01  addli r5, r26, 128
0019dc  9f0d0201  addli r27, r4, 128
0019e0  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
0019e4  1f028201  addli r4, r4, 192
0019e8  9f840401  addli r9, r9, 128
0019ec  1f090902  addli r18, r18, 256
0019f0  1f010102  addli r2, r2, 256
0019f4  6aa37822  vor.u.mz vr6{mr1}, r17, vr7
0019f8  4a840202  vloads.mz vr8{mr1}, 0(r5)
0019fc  c2840d02  vload.mz vr9{mr1}, 0(r27)
001a00  9f028d01  addli r5, r26, 192
001a04  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
001a08  6ab09902  vand.s.mz vr0{mr1}, r19, vr9
001a0c  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
001a10  6ab48902  vand.s.mz vr8{mr1}, r19, vr8
001a14  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
001a18  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
001a1c  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
001a20  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
001a24  e69504c0  vabs.f vr11, vr9
001a28  6a300402  vand.s.mz vr0{mr1}, r8, vr0
001a2c  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
001a30  72a1ba42  vlt.u.mz mr2{mr1}, r21, vr11
001a34  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
001a38  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
001a3c  12300a02  vadd.s.mz vr0{mr1}, r20, vr0
001a40  1235aa02  vadd.s.mz vr10{mr1}, r20, vr10
001a44  eab40902  vand.s.mz vr9{mr1}, r19, vr0
001a48  661004c0  vabs.f vr0, vr8
001a4c  6ab4a902  vand.s.mz vr8{mr1}, r19, vr10
001a50  ea247b34  vor.u.mh vr9{mr2}, r22, vr7
001a54  72a10a42  vlt.u.mz mr2{mr1}, r21, vr0
001a58  6a247b34  vor.u.mh vr8{mr2}, r22, vr7
001a5c  4a800202  vloads.mz vr0{mr1}, 0(r5)
001a60  42050202  vload.mz vr10{mr1}, 0(r4)
001a64  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
001a68  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
001a6c  6ab5a902  vand.s.mz vr10{mr1}, r19, vr10
001a70  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
001a74  6ab48902  vand.s.mz vr8{mr1}, r19, vr8
001a78  46809d02  vstore.mz vr9{mr1}, 0(r27)
001a7c  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
001a80  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
001a84  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
001a88  6ab00902  vand.s.mz vr0{mr1}, r19, vr0
001a8c  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
001a90  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
001a94  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
001a98  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
001a9c  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
001aa0  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
001aa4  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
001aa8  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
001aac  e69000c0  vabs.f vr1, vr1
001ab0  661000c0  vabs.f vr0, vr0
001ab4  1235aa02  vadd.s.mz vr10{mr1}, r20, vr10
001ab8  9235ba02  vadd.s.mz vr11{mr1}, r20, vr11
001abc  72a11a42  vlt.u.mz mr2{mr1}, r21, vr1
001ac0  6ab5a902  vand.s.mz vr10{mr1}, r19, vr10
001ac4  eab0b902  vand.s.mz vr1{mr1}, r19, vr11
001ac8  6a257b34  vor.u.mh vr10{mr2}, r22, vr7
001acc  72a10a42  vlt.u.mz mr2{mr1}, r21, vr0
001ad0  ea207b34  vor.u.mh vr1{mr2}, r22, vr7
001ad4  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
001ad8  eab31902  vand.s.mz vr7{mr1}, r19, vr1
001adc  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
001ae0  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
001ae4  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
001ae8  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
001aec  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
001af0  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
001af4  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
001af8  46000202  vstore.mz vr0{mr1}, 0(r4)
001afc  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001b00  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001b04  bf96a4fe  blt.s r9, r10, -604
001b08  db9cffff  j -796
001b0c  9f000000  addli r1, zero, 0
001b10  9f060000  addli r13, zero, 0
001b14  00a00000  mfence { lm }
001b18  3fa187fe  blt.s r15, r8, -952
001b1c  63027fd5  loadli.w r4,  -5448(r30)
001b20  ab140000  lui r9, 1
001b24  2b250000  lui r10, 2
001b28  1f010000  addli r2, zero, 0
001b2c  9f840400  addli r9, r9, 0
001b30  1f050500  addli r10, r10, 0
001b34  8f814618  div.f.rn r3, r13, r4
001b38  8f804018  div.f.rn r1, r1, r4
001b3c  0be23120  mul.f.rn r4, r3, r3
001b40  8be10158  neg.f r3, r3
001b44  8be04018  sub.f.rn r1, r1, r4
001b48  63023f00  loadli.w r4,  24(r30)
001b4c  8be04010  add.f.rn r1, r1, r4
001b50  2b02803f  lui r4, 260096
001b54  8f800008  sqrt.f.rn r1, r1
001b58  8f001218  div.f.rn r1, r4, r1
001b5c  1f028fd7  addli r4, r30, -5184
001b60  42020202  vload.mz vr4{mr1}, 0(r4)
001b64  ca820402  vloads.mz vr5{mr1}, 0(r9)
001b68  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
001b6c  4a030502  vloads.mz vr6{mr1}, 0(r10)
001b70  9f064100  addli r13, r2, 32
001b74  eaa12822  vor.u.mz vr3{mr1}, r17, vr2
001b78  eeb341a2  vsll.s.mz vr7{mr1}, vr3, vr4
001b7c  6ab44902  vand.s.mz vr8{mr1}, r19, vr4
001b80  92937102  vadd.f.mz.rn vr7{mr1}, r3, vr7
001b84  12948102  vadd.f.mz.rn vr8{mr1}, r3, vr8
001b88  eeb451a2  vsll.s.mz vr9{mr1}, vr3, vr5
001b8c  6eb261a2  vsll.s.mz vr4{mr1}, vr3, vr6
001b90  6ab55902  vand.s.mz vr10{mr1}, r19, vr5
001b94  eab26902  vand.s.mz vr5{mr1}, r19, vr6
001b98  8a937002  vmul.f.mz.rn vr7{mr1}, r1, vr7
001b9c  0a938002  vmul.f.mz.rn vr6{mr1}, r1, vr8
001ba0  26929302  vmac.f.mz.rn vr4{mr1}, vr7, vr9
001ba4  a612a302  vmac.f.mz.rn vr5{mr1}, vr6, vr10
001ba8  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
001bac  6a337402  vand.s.mz vr6{mr1}, r8, vr7
001bb0  eeb351c2  vsrl.s.mz vr7{mr1}, vr3, vr5
001bb4  16336202  vadd.s.mz vr6{mr1}, vr4, vr6
001bb8  ea337402  vand.s.mz vr7{mr1}, r8, vr7
001bbc  661202c0  vabs.f vr4, vr4
001bc0  96b37202  vadd.s.mz vr7{mr1}, vr5, vr7
001bc4  12336a02  vadd.s.mz vr6{mr1}, r20, vr6
001bc8  e69202c0  vabs.f vr5, vr5
001bcc  72a14a42  vlt.u.mz mr2{mr1}, r21, vr4
001bd0  6ab36902  vand.s.mz vr6{mr1}, r19, vr6
001bd4  92337a02  vadd.s.mz vr7{mr1}, r20, vr7
001bd8  6a232b34  vor.u.mh vr6{mr2}, r22, vr2
001bdc  6ab27902  vand.s.mz vr4{mr1}, r19, vr7
001be0  72a15a42  vlt.u.mz mr2{mr1}, r21, vr5
001be4  eeb261c2  vsrl.s.mz vr5{mr1}, vr3, vr6
001be8  6a222b34  vor.u.mh vr4{mr2}, r22, vr2
001bec  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
001bf0  46004202  vstore.mz vr4{mr1}, 0(r4)
001bf4  cbbdd7fc  ble.s r15, r13, -1172
001bf8  9f868400  addli r13, r9, 64
001bfc  1f098200  addli r18, r4, 64
001c00  1f018100  addli r2, r2, 64
001c04  9f840401  addli r9, r9, 128
001c08  1f020201  addli r4, r4, 128
001c0c  4a820602  vloads.mz vr4{mr1}, 0(r13)
001c10  9f068500  addli r13, r10, 64
001c14  c2020902  vload.mz vr5{mr1}, 0(r18)
001c18  1f050501  addli r10, r10, 128
001c1c  4a830602  vloads.mz vr6{mr1}, 0(r13)
001c20  eeb351a2  vsll.s.mz vr7{mr1}, vr3, vr5
001c24  eab25902  vand.s.mz vr5{mr1}, r19, vr5
001c28  92937102  vadd.f.mz.rn vr7{mr1}, r3, vr7
001c2c  12945102  vadd.f.mz.rn vr8{mr1}, r3, vr5
001c30  eeb441a2  vsll.s.mz vr9{mr1}, vr3, vr4
001c34  6ab54902  vand.s.mz vr10{mr1}, r19, vr4
001c38  8a937002  vmul.f.mz.rn vr7{mr1}, r1, vr7
001c3c  eeb261a2  vsll.s.mz vr5{mr1}, vr3, vr6
001c40  6ab26902  vand.s.mz vr4{mr1}, r19, vr6
001c44  0a938002  vmul.f.mz.rn vr6{mr1}, r1, vr8
001c48  a6929302  vmac.f.mz.rn vr5{mr1}, vr7, vr9
001c4c  2612a302  vmac.f.mz.rn vr4{mr1}, vr6, vr10
001c50  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
001c54  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
001c58  6a336402  vand.s.mz vr6{mr1}, r8, vr6
001c5c  ea337402  vand.s.mz vr7{mr1}, r8, vr7
001c60  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
001c64  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
001c68  e69202c0  vabs.f vr5, vr5
001c6c  661202c0  vabs.f vr4, vr4
001c70  12336a02  vadd.s.mz vr6{mr1}, r20, vr6
001c74  92337a02  vadd.s.mz vr7{mr1}, r20, vr7
001c78  72a15a42  vlt.u.mz mr2{mr1}, r21, vr5
001c7c  6ab36902  vand.s.mz vr6{mr1}, r19, vr6
001c80  eab27902  vand.s.mz vr5{mr1}, r19, vr7
001c84  6a232b34  vor.u.mh vr6{mr2}, r22, vr2
001c88  72a14a42  vlt.u.mz mr2{mr1}, r21, vr4
001c8c  ea222b34  vor.u.mh vr5{mr2}, r22, vr2
001c90  6eb161c2  vsrl.s.mz vr2{mr1}, vr3, vr6
001c94  6eb12222  vor.s.mz vr2{mr1}, vr5, vr2
001c98  46002902  vstore.mz vr2{mr1}, 0(r18)
001c9c  3f1bf1fe  blt.s r2, r15, -316
001ca0  5b58ffff  j -1344
001ca4  63012f00  loadli.w r2,  16(r30)
001ca8  ab0100f0  lui r3, 983040
001cac  1b311100  slli r2, r2, 1
001cb0  17113100  or r2, r2, r3
001cb4  ab610000  lui r3, 6
001cb8  9f810100  addli r3, r3, 0
001cbc  7f013400  l_gm2sm r2, r3, 0(r[9:10])
001cc0  2bf10000  lui r2, 15
001cc4  e3411f00  loadli.w r3,  12(r30)
001cc8  00200300  mfence { sm, gm }
001ccc  1b11f1ff  ori r2, r2, 4095
001cd0  80210104  csr_set csr3, r2
001cd4  00d00100  sync_group
001cd8  4bcd1106  ble.s r3, r1, 3920
001cdc  63012f00  loadli.w r2,  16(r30)
001ce0  e3412f00  loadli.w r3,  20(r30)
001ce4  ab460000  lui r13, 4
001ce8  1f140000  addli r8, zero, 1
001cec  9f0a8fd7  addli r21, r30, -5184
001cf0  1f060002  addli r12, zero, 256
001cf4  1f080001  addli r16, zero, 128
001cf8  9f088000  addli r17, zero, 64
001cfc  1f094000  addli r18, zero, 32
001d00  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001d04  9f860600  addli r13, r13, 0
001d08  0b133110  add.s r6, r2, r3
001d0c  1b321100  slli r4, r2, 1
001d10  b3020108  fix2float.rn r5, r2
001d14  1f71f3ff  addli r2, r6, -1
001d18  1bb31100  slli r6, r3, 1
001d1c  8b133130  div.s r7, r2, r3
001d20  2bf1ffff  lui r2, 1048575
001d24  9b15f1ff  ori r11, r2, 4095
001d28  5b070000  j 56
001d2c  00a00000  mfence { lm }
001d30  eb540f00  load.d r[10:11], 0(r30)
001d34  2b0100f0  lui r2, 983040
001d38  9f0a8fd7  addli r21, r30, -5184
001d3c  80510102  load_param_i r3, 2
001d40  17112200  or r2, r4, r2
001d44  8b901110  add.s r1, r3, r1
001d48  8ba96411  add.ul r[20:21], r[10:11], r[23:24]
001d4c  7fb15901  s_lm2gm r2, r21, 0(r[20:21])
001d50  00a00200  mfence { lm, gm }
001d54  63411f00  loadli.w r2,  12(r30)
001d58  3fa02000  blt.s r1, r2, 8
001d5c  dbd90100  j 3788
001d60  63011f00  loadli.w r2,  8(r30)
001d64  0b912010  add.s r2, r1, r2
001d68  0b11f120  mul.s r2, r2, r15
001d6c  33110128  sext_int2long r[3:4], r2
001d70  173b8102  sll.d r[23:24], r[3:4], r8
001d74  9f017fd6  addli r3, r30, -5320
001d78  2b0100f0  lui r2, 983040
001d7c  ebd40100  load.d r[10:11], 0(r3)
001d80  17112200  or r2, r4, r2
001d84  8ba96411  add.ul r[20:21], r[10:11], r[23:24]
001d88  7fa15901  l_gm2lm r2, r21, 0(r[20:21])
001d8c  00a00200  mfence { lm, gm }
001d90  3fc78300  blt.s r7, r8, 464
001d94  9f010000  addli r3, zero, 0
001d98  1f010000  addli r2, zero, 0
001d9c  1f050000  addli r10, zero, 0
001da0  db0c0000  j 100
001da4  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
001da8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001dac  1f150500  addli r10, r10, 1
001db0  6a7136c0  vsrl.p vr2, r12, vr3
001db4  6a7216c0  vsrl.p vr4, r12, vr1
001db8  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
001dbc  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
001dc0  ea7128c0  vsrl.p vr3, r16, vr2
001dc4  6a7218c0  vsrl.p vr4, r16, vr1
001dc8  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
001dcc  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
001dd0  eaf128c0  vsrl.p vr3, r17, vr2
001dd4  6af218c0  vsrl.p vr4, r17, vr1
001dd8  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
001ddc  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
001de0  ea7129c0  vsrl.p vr3, r18, vr2
001de4  6a7219c0  vsrl.p vr4, r18, vr1
001de8  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
001dec  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
001df0  fa140140  vextracti.f r9, 0(vr2)
001df4  fa990040  vextracti.f r19, 0(vr1)
001df8  8be19110  add.f.rn r3, r3, r9
001dfc  0b613111  add.f.rn r2, r2, r19
001e00  b7257500  beq r10, r7, 360
001e04  9f090500  addli r19, r10, 0
001e08  3730c700  beq r14, r12, 12
001e0c  9729b500  xor r19, r10, r11
001e10  8b993311  add.s r19, r7, r19
001e14  0b9ae920  mul.s r20, r19, r14
001e18  12320002  vadd.s.mz vr4{mr1}, zero, vr0
001e1c  92310002  vadd.s.mz vr3{mr1}, zero, vr0
001e20  12310002  vadd.s.mz vr2{mr1}, zero, vr0
001e24  92300002  vadd.s.mz vr1{mr1}, zero, vr0
001e28  0b9a4719  sub.s r20, r15, r20
001e2c  0b1cea40  min.s r24, r20, r14
001e30  bf5d8cfe  blt.s r24, r8, -140
001e34  92300002  vadd.s.mz vr1{mr1}, zero, vr0
001e38  12310002  vadd.s.mz vr2{mr1}, zero, vr0
001e3c  92310002  vadd.s.mz vr3{mr1}, zero, vr0
001e40  12320002  vadd.s.mz vr4{mr1}, zero, vr0
001e44  9f0c0000  addli r25, zero, 0
001e48  0b1d3321  mul.s r26, r6, r19
001e4c  9f0d8fd7  addli r27, r30, -5184
001e50  1f8e0600  addli r28, r13, 0
001e54  8b19ae11  add.s r19, r28, r26
001e58  9f848c00  addli r9, r25, 64
001e5c  ca820902  vloads.mz vr5{mr1}, 0(r19)
001e60  1f8a8900  addli r20, r19, 64
001e64  4a030a02  vloads.mz vr6{mr1}, 0(r20)
001e68  0b9aad11  add.s r20, r27, r26
001e6c  c2030a02  vload.mz vr7{mr1}, 0(r20)
001e70  9f0a8a00  addli r21, r20, 64
001e74  42840a02  vload.mz vr8{mr1}, 0(r21)
001e78  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
001e7c  92320002  vadd.s.mz vr5{mr1}, zero, vr0
001e80  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
001e84  06b40300  vfp162float_l.rn vr8, vr7
001e88  86f30300  vfp162float_h.rn vr7, vr7
001e8c  86340300  vfp162float_l.rn vr9, vr6
001e90  06730300  vfp162float_h.rn vr6, vr6
001e94  86120400  vfloat2fp16_l.rn vr5, vr8
001e98  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
001e9c  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
001ea0  12340002  vadd.s.mz vr8{mr1}, zero, vr0
001ea4  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
001ea8  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
001eac  06940400  vfloat2fp16_l.rn vr8, vr9
001eb0  86d20300  vfloat2fp16_h.rn vr5, vr7
001eb4  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
001eb8  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
001ebc  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
001ec0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001ec4  06540300  vfloat2fp16_h.rn vr8, vr6
001ec8  46005a02  vstore.mz vr5{mr1}, 0(r20)
001ecc  46808a02  vstore.mz vr8{mr1}, 0(r21)
001ed0  4b5b9cfe  ble.s r24, r9, -300
001ed4  9f840901  addli r9, r19, 128
001ed8  9f8c0c01  addli r25, r25, 128
001edc  1f0e0e02  addli r28, r28, 256
001ee0  9f8d0d02  addli r27, r27, 256
001ee4  ca820402  vloads.mz vr5{mr1}, 0(r9)
001ee8  9f848901  addli r9, r19, 192
001eec  9f090a01  addli r19, r20, 128
001ef0  4a830402  vloads.mz vr6{mr1}, 0(r9)
001ef4  c2830902  vload.mz vr7{mr1}, 0(r19)
001ef8  9f048a01  addli r9, r20, 192
001efc  42840402  vload.mz vr8{mr1}, 0(r9)
001f00  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
001f04  92320002  vadd.s.mz vr5{mr1}, zero, vr0
001f08  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
001f0c  12330002  vadd.s.mz vr6{mr1}, zero, vr0
001f10  86b40300  vfp162float_l.rn vr9, vr7
001f14  86f30300  vfp162float_h.rn vr7, vr7
001f18  86920400  vfloat2fp16_l.rn vr5, vr9
001f1c  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
001f20  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
001f24  86340400  vfp162float_l.rn vr9, vr8
001f28  06740400  vfp162float_h.rn vr8, vr8
001f2c  06930400  vfloat2fp16_l.rn vr6, vr9
001f30  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
001f34  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
001f38  86d20300  vfloat2fp16_h.rn vr5, vr7
001f3c  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
001f40  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
001f44  06530400  vfloat2fp16_h.rn vr6, vr8
001f48  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
001f4c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
001f50  46805902  vstore.mz vr5{mr1}, 0(r19)
001f54  46806402  vstore.mz vr6{mr1}, 0(r9)
001f58  bffb8cff  blt.s r25, r24, -260
001f5c  5bc9ffff  j -440
001f60  1f010000  addli r2, zero, 0
001f64  9f010000  addli r3, zero, 0
001f68  00a00000  mfence { lm }
001f6c  3f8787fe  blt.s r15, r8, -576
001f70  8f815118  div.f.rn r3, r3, r5
001f74  0f015118  div.f.rn r2, r2, r5
001f78  e3043f00  loadli.w r9,  24(r30)
001f7c  ab5c0000  lui r25, 5
001f80  2b6d0000  lui r26, 6
001f84  1f050000  addli r10, zero, 0
001f88  1f0c8fd7  addli r24, r30, -5184
001f8c  9f8c0c00  addli r25, r25, 0
001f90  1f0d0d00  addli r26, r26, 0
001f94  8be93120  mul.f.rn r19, r3, r3
001f98  8be10158  neg.f r3, r3
001f9c  0b613119  sub.f.rn r2, r2, r19
001fa0  0b619110  add.f.rn r2, r2, r9
001fa4  ab04803f  lui r9, 260096
001fa8  0f010108  sqrt.f.rn r2, r2
001fac  0f812418  div.f.rn r2, r9, r2
001fb0  c2000c02  vload.mz vr1{mr1}, 0(r24)
001fb4  4a810c02  vloads.mz vr2{mr1}, 0(r25)
001fb8  ca010d02  vloads.mz vr3{mr1}, 0(r26)
001fbc  9f094500  addli r19, r10, 32
001fc0  06b20000  vfp162float_l.rn vr4, vr1
001fc4  86f00000  vfp162float_h.rn vr1, vr1
001fc8  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
001fcc  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
001fd0  86320100  vfp162float_l.rn vr5, vr2
001fd4  06b30100  vfp162float_l.rn vr6, vr3
001fd8  06710100  vfp162float_h.rn vr2, vr2
001fdc  86f10100  vfp162float_h.rn vr3, vr3
001fe0  8a131102  vmul.f.mz.rn vr7{mr1}, r2, vr1
001fe4  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
001fe8  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001fec  a6912302  vmac.f.mz.rn vr3{mr1}, vr7, vr2
001ff0  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
001ff4  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001ff8  06110300  vfloat2fp16_l.rn vr2, vr6
001ffc  06d10100  vfloat2fp16_h.rn vr2, vr3
002000  46002c02  vstore.mz vr2{mr1}, 0(r24)
002004  cba437ff  ble.s r15, r19, -728
002008  9f898c00  addli r19, r25, 64
00200c  1f0a8c00  addli r20, r24, 64
002010  1f058500  addli r10, r10, 64
002014  9f8c0c01  addli r25, r25, 128
002018  1f0c0c01  addli r24, r24, 128
00201c  4a810902  vloads.mz vr2{mr1}, 0(r19)
002020  9f098d00  addli r19, r26, 64
002024  c2010a02  vload.mz vr3{mr1}, 0(r20)
002028  1f0d0d01  addli r26, r26, 128
00202c  4a820902  vloads.mz vr4{mr1}, 0(r19)
002030  86b20100  vfp162float_l.rn vr5, vr3
002034  86f10100  vfp162float_h.rn vr3, vr3
002038  92925102  vadd.f.mz.rn vr5{mr1}, r3, vr5
00203c  92913102  vadd.f.mz.rn vr3{mr1}, r3, vr3
002040  06330100  vfp162float_l.rn vr6, vr2
002044  06710100  vfp162float_h.rn vr2, vr2
002048  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
00204c  8a113102  vmul.f.mz.rn vr3{mr1}, r2, vr3
002050  86330200  vfp162float_l.rn vr7, vr4
002054  06720200  vfp162float_h.rn vr4, vr4
002058  a6936202  vmac.f.mz.rn vr7{mr1}, vr5, vr6
00205c  26922102  vmac.f.mz.rn vr4{mr1}, vr3, vr2
002060  86900300  vfloat2fp16_l.rn vr1, vr7
002064  86500200  vfloat2fp16_h.rn vr1, vr4
002068  46001a02  vstore.mz vr1{mr1}, 0(r20)
00206c  3f1df5fe  blt.s r10, r15, -188
002070  db97ffff  j -836
002074  9f000040  addli r1, zero, 8192
002078  2b0100f0  lui r2, 983040
00207c  97902000  or r1, r1, r2
002080  2ba10000  lui r2, 10
002084  1f010100  addli r2, r2, 0
002088  ff002300  l_gm2sm r1, r2, 0(r[7:8])
00208c  db070000  j 60
002090  63012f00  loadli.w r2,  16(r30)
002094  ab0100f0  lui r3, 983040
002098  1b312100  slli r2, r2, 2
00209c  17113100  or r2, r2, r3
0020a0  abf10000  lui r3, 15
0020a4  9f810108  addli r3, r3, 1024
0020a8  7f013300  l_gm2sm r2, r3, 0(r[7:8])
0020ac  5bf20000  j 1936
0020b0  9f000040  addli r1, zero, 8192
0020b4  2b0100f0  lui r2, 983040
0020b8  97902000  or r1, r1, r2
0020bc  2bc10000  lui r2, 12
0020c0  1f010100  addli r2, r2, 0
0020c4  ff002400  l_gm2sm r1, r2, 0(r[9:10])
0020c8  abf00000  lui r1, 15
0020cc  00200300  mfence { sm, gm }
0020d0  1b011500  andi r2, r10, 1
0020d4  9f020006  addli r5, zero, 768
0020d8  9b90f0ff  ori r1, r1, 4095
0020dc  80a10004  csr_set csr3, r1
0020e0  9f000006  addli r1, zero, 768
0020e4  00d00100  sync_group
0020e8  67082fd6  storeli.w r2, -5248(r30)
0020ec  37200100  beq r2, zero, 8
0020f0  9f02000a  addli r5, zero, 1280
0020f4  63411f00  loadli.w r2,  12(r30)
0020f8  9f110000  addli r3, zero, 1
0020fc  bf3c3104  blt.s r2, r3, 2860
002100  e3010fd7  loadli.w r3,  -5248(r30)
002104  00510102  load_param_i r2, 2
002108  2b8b0000  lui r22, 8
00210c  2bee0000  lui r28, 14
002110  2be70000  lui r14, 14
002114  1f030000  addli r6, zero, 0
002118  9b441500  srli r9, r10, 1
00211c  9bb72200  slli r15, r5, 2
002120  9f098fd7  addli r19, r30, -5184
002124  9f0b0005  addli r23, zero, 640
002128  9f0c0001  addli r25, zero, 128
00212c  1f0d8000  addli r26, zero, 64
002130  9f0d4000  addli r27, zero, 32
002134  9f0a0003  addli r21, zero, 384
002138  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00213c  1b441100  srli r8, r2, 1
002140  2ba10000  lui r2, 10
002144  1f0b0b00  addli r22, r22, 0
002148  1f0e0e00  addli r28, r28, 0
00214c  1f070704  addli r14, r14, 512
002150  8b901120  mul.s r1, r3, r1
002154  1f010100  addli r2, r2, 0
002158  67041fd6  storeli.w r1, -5312(r30)
00215c  9bb02000  slli r1, r1, 2
002160  0b982010  add.s r16, r1, r2
002164  2bc10000  lui r2, 12
002168  1f010100  addli r2, r2, 0
00216c  8b982010  add.s r17, r1, r2
002170  abf0ffff  lui r1, 1048575
002174  1f018fd5  addli r2, r30, -5440
002178  9b9000f8  ori r1, r1, 3968
00217c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002180  e74b1fd4  storeli.w r1, -5444(r30)
002184  abf00000  lui r1, 15
002188  1b99f0ff  ori r18, r1, 4095
00218c  db030000  j 28
002190  00a00300  mfence { lm, sm, gm }
002194  80210904  csr_set csr3, r18
002198  00d00100  sync_group
00219c  0b138310  add.s r6, r6, r8
0021a0  3f20d300  blt.s r6, r13, 8
0021a4  5bcd0000  j 1640
0021a8  8b109310  add.s r1, r6, r9
0021ac  cb9f16fe  ble.s r13, r1, -28
0021b0  63011f00  loadli.w r2,  8(r30)
0021b4  9f210000  addli r3, zero, 2
0021b8  1f027fd6  addli r4, r30, -5320
0021bc  8b902010  add.s r1, r1, r2
0021c0  63018fd6  loadli.w r2,  -5312(r30)
0021c4  9bb0b000  slli r1, r1, 11
0021c8  97902000  or r1, r1, r2
0021cc  b3900028  sext_int2long r[2:3], r1
0021d0  97b53002  sll.d r[12:13], r[2:3], r3
0021d4  6b510200  load.d r[3:4], 0(r4)
0021d8  ab0000f0  lui r1, 983040
0021dc  97901700  or r1, r15, r1
0021e0  0b21b110  add.ul r[3:4], r[3:4], r[12:13]
0021e4  ff203101  l_gm2lm r1, r19, 0(r[3:4])
0021e8  00a00200  mfence { lm, gm }
0021ec  e3000fd7  loadli.w r1,  -5248(r30)
0021f0  3ba60000  bneq r1, zero, 392
0021f4  9f018fd5  addli r3, r30, -5440
0021f8  63417fd5  loadli.w r2,  -5444(r30)
0021fc  9f000000  addli r1, zero, 0
002200  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
002204  92303002  vadd.s.mz vr1{mr1}, zero, vr3
002208  12313002  vadd.s.mz vr2{mr1}, zero, vr3
00220c  12323002  vadd.s.mz vr4{mr1}, zero, vr3
002210  0b956011  add.s r10, r1, r22
002214  8b911910  add.s r3, r19, r1
002218  1f010101  addli r2, r2, 128
00221c  9f800004  addli r1, r1, 512
002220  1f020501  addli r4, r10, 128
002224  4a100502  vloads_mask16.mz vr0{mr1}, 0(r10)
002228  9f038500  addli r7, r10, 64
00222c  42940102  vload_mask16.mz vr8{mr1}, 0(r3)
002230  9f868101  addli r13, r3, 192
002234  ca120202  vloads_mask16.mz vr5{mr1}, 0(r4)
002238  1f028501  addli r4, r10, 192
00223c  4a930302  vloads_mask16.mz vr6{mr1}, 0(r7)
002240  9f838100  addli r7, r3, 64
002244  c2950602  vload_mask16.mz vr11{mr1}, 0(r13)
002248  ca130202  vloads_mask16.mz vr7{mr1}, 0(r4)
00224c  1f820101  addli r4, r3, 128
002250  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
002254  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
002258  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
00225c  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
002260  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
002264  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
002268  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00226c  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
002270  46108202  vstore_mask16.mz vr8{mr1}, 0(r4)
002274  1f020502  addli r4, r10, 256
002278  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
00227c  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
002280  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
002284  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
002288  9f830103  addli r7, r3, 384
00228c  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
002290  1f028502  addli r4, r10, 320
002294  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
002298  9f860102  addli r13, r3, 256
00229c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0022a0  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0022a4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0022a8  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
0022ac  1f020503  addli r4, r10, 384
0022b0  c2930602  vload_mask16.mz vr7{mr1}, 0(r13)
0022b4  1f058503  addli r10, r10, 448
0022b8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0022bc  4a140202  vloads_mask16.mz vr8{mr1}, 0(r4)
0022c0  1f828102  addli r4, r3, 320
0022c4  4a150502  vloads_mask16.mz vr10{mr1}, 0(r10)
0022c8  9f818103  addli r3, r3, 448
0022cc  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
0022d0  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0022d4  c2930302  vload_mask16.mz vr7{mr1}, 0(r7)
0022d8  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0022dc  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
0022e0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0022e4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0022e8  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
0022ec  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0022f0  46106202  vstore_mask16.mz vr6{mr1}, 0(r4)
0022f4  13027105  setlt.u r4, r2, r23
0022f8  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0022fc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002300  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
002304  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
002308  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
00230c  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
002310  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
002314  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
002318  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00231c  bb5b02fe  bneq r4, zero, -268
002320  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
002324  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002328  9f000002  addli r1, zero, 256
00232c  6af100c0  vsrl.p vr2, r1, vr0
002330  eaf110c0  vsrl.p vr3, r1, vr1
002334  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002338  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00233c  6af10cc0  vsrl.p vr2, r25, vr0
002340  eaf11cc0  vsrl.p vr3, r25, vr1
002344  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002348  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00234c  6a710dc0  vsrl.p vr2, r26, vr0
002350  ea711dc0  vsrl.p vr3, r26, vr1
002354  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002358  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00235c  6af10dc0  vsrl.p vr2, r27, vr0
002360  eaf11dc0  vsrl.p vr3, r27, vr1
002364  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002368  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00236c  fa110040  vextracti.f r3, 0(vr0)
002370  7a910040  vextracti.f r2, 0(vr1)
002374  5b630000  j 792
002378  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
00237c  2bf1ffff  lui r2, 1048575
002380  9f000000  addli r1, zero, 0
002384  12311002  vadd.s.mz vr2{mr1}, zero, vr1
002388  12321002  vadd.s.mz vr4{mr1}, zero, vr1
00238c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
002390  1b1101f8  ori r2, r2, 3968
002394  0b151b10  add.s r10, r22, r1
002398  8b911910  add.s r3, r19, r1
00239c  1f010101  addli r2, r2, 128
0023a0  9f800004  addli r1, r1, 512
0023a4  1f0a0531  addli r20, r10, 6272
0023a8  9f030530  addli r7, r10, 6144
0023ac  1f028531  addli r4, r10, 6336
0023b0  9f860118  addli r13, r3, 3072
0023b4  ca130a02  vloads_mask16.mz vr7{mr1}, 0(r20)
0023b8  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
0023bc  9f038530  addli r7, r10, 6208
0023c0  ca140202  vloads_mask16.mz vr9{mr1}, 0(r4)
0023c4  1f828118  addli r4, r3, 3136
0023c8  1f8a8119  addli r20, r3, 3264
0023cc  42930602  vload_mask16.mz vr6{mr1}, 0(r13)
0023d0  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
0023d4  9f830119  addli r7, r3, 3200
0023d8  42100a02  vload_mask16.mz vr0{mr1}, 0(r20)
0023dc  c2150202  vload_mask16.mz vr11{mr1}, 0(r4)
0023e0  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
0023e4  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0023e8  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
0023ec  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
0023f0  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
0023f4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0023f8  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
0023fc  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
002400  9f030532  addli r7, r10, 6400
002404  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
002408  46100a02  vstore_mask16.mz vr0{mr1}, 0(r20)
00240c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002410  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
002414  9f86011a  addli r13, r3, 3328
002418  c2930602  vload_mask16.mz vr7{mr1}, 0(r13)
00241c  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
002420  1f82011b  addli r4, r3, 3456
002424  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
002428  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
00242c  4a900302  vloads_mask16.mz vr0{mr1}, 0(r7)
002430  9f038532  addli r7, r10, 6464
002434  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002438  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00243c  4a930302  vloads_mask16.mz vr6{mr1}, 0(r7)
002440  9f030533  addli r7, r10, 6528
002444  1f058533  addli r10, r10, 6592
002448  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
00244c  9f83811a  addli r7, r3, 3392
002450  4a150502  vloads_mask16.mz vr10{mr1}, 0(r10)
002454  9f81811b  addli r3, r3, 3520
002458  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
00245c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
002460  c2130202  vload_mask16.mz vr7{mr1}, 0(r4)
002464  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
002468  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
00246c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002470  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
002474  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
002478  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
00247c  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
002480  93035105  setlt.u r7, r2, r21
002484  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
002488  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00248c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
002490  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
002494  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
002498  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
00249c  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
0024a0  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0024a4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0024a8  bbbb03fe  bneq r7, zero, -276
0024ac  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0024b0  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0024b4  9f000002  addli r1, zero, 256
0024b8  2bf2ffff  lui r4, 1048575
0024bc  9f010000  addli r3, zero, 0
0024c0  1b1502f8  ori r10, r4, 3968
0024c4  eaf110c0  vsrl.p vr3, r1, vr1
0024c8  6af100c0  vsrl.p vr2, r1, vr0
0024cc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0024d0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024d4  eaf11cc0  vsrl.p vr3, r25, vr1
0024d8  6af10cc0  vsrl.p vr2, r25, vr0
0024dc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0024e0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024e4  ea711dc0  vsrl.p vr3, r26, vr1
0024e8  6a710dc0  vsrl.p vr2, r26, vr0
0024ec  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0024f0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024f4  eaf11dc0  vsrl.p vr3, r27, vr1
0024f8  6af10dc0  vsrl.p vr2, r27, vr0
0024fc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002500  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002504  7a910040  vextracti.f r2, 0(vr1)
002508  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
00250c  fa100040  vextracti.f r1, 0(vr0)
002510  12311002  vadd.s.mz vr2{mr1}, zero, vr1
002514  12321002  vadd.s.mz vr4{mr1}, zero, vr1
002518  92311002  vadd.s.mz vr3{mr1}, zero, vr1
00251c  0b1a3b10  add.s r20, r22, r3
002520  8b963910  add.s r13, r19, r3
002524  1f050501  addli r10, r10, 128
002528  9f810104  addli r3, r3, 512
00252c  1f020a18  addli r4, r20, 3072
002530  9f030a19  addli r7, r20, 3200
002534  42940602  vload_mask16.mz vr8{mr1}, 0(r13)
002538  1f8c8601  addli r24, r13, 192
00253c  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
002540  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
002544  1f028a18  addli r4, r20, 3136
002548  9f038a19  addli r7, r20, 3264
00254c  c2150c02  vload_mask16.mz vr11{mr1}, 0(r24)
002550  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
002554  1f820601  addli r4, r13, 128
002558  ca930302  vloads_mask16.mz vr7{mr1}, 0(r7)
00255c  9f838600  addli r7, r13, 64
002560  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
002564  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
002568  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
00256c  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
002570  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
002574  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
002578  46108202  vstore_mask16.mz vr8{mr1}, 0(r4)
00257c  1f020a1a  addli r4, r20, 3328
002580  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
002584  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002588  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
00258c  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
002590  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
002594  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
002598  1f028a1a  addli r4, r20, 3392
00259c  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
0025a0  1f8c0602  addli r24, r13, 256
0025a4  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
0025a8  9f830603  addli r7, r13, 384
0025ac  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0025b0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0025b4  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
0025b8  1f020a1b  addli r4, r20, 3456
0025bc  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
0025c0  1f0a8a1b  addli r20, r20, 3520
0025c4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0025c8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0025cc  4a140202  vloads_mask16.mz vr8{mr1}, 0(r4)
0025d0  1f828602  addli r4, r13, 320
0025d4  4a150a02  vloads_mask16.mz vr10{mr1}, 0(r20)
0025d8  9f868603  addli r13, r13, 448
0025dc  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
0025e0  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0025e4  c2930302  vload_mask16.mz vr7{mr1}, 0(r7)
0025e8  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0025ec  c2940602  vload_mask16.mz vr9{mr1}, 0(r13)
0025f0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0025f4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0025f8  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
0025fc  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
002600  46106202  vstore_mask16.mz vr6{mr1}, 0(r4)
002604  13027505  setlt.u r4, r10, r23
002608  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
00260c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002610  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
002614  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
002618  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
00261c  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
002620  46907602  vstore_mask16.mz vr7{mr1}, 0(r13)
002624  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
002628  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00262c  bb4b02fe  bneq r4, zero, -272
002630  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
002634  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002638  9f010002  addli r3, zero, 256
00263c  6af101c0  vsrl.p vr2, r3, vr0
002640  eaf111c0  vsrl.p vr3, r3, vr1
002644  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002648  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00264c  6af10cc0  vsrl.p vr2, r25, vr0
002650  eaf11cc0  vsrl.p vr3, r25, vr1
002654  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002658  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00265c  6a710dc0  vsrl.p vr2, r26, vr0
002660  ea711dc0  vsrl.p vr3, r26, vr1
002664  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002668  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00266c  6af10dc0  vsrl.p vr2, r27, vr0
002670  eaf11dc0  vsrl.p vr3, r27, vr1
002674  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002678  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00267c  fa110040  vextracti.f r3, 0(vr0)
002680  7a920040  vextracti.f r4, 0(vr1)
002684  8be13010  add.f.rn r3, r1, r3
002688  0b614110  add.f.rn r2, r2, r4
00268c  0b028330  div.u r4, r6, r8
002690  80330002  core_id r7
002694  9f000000  addli r1, zero, 0
002698  1b326200  slli r4, r4, 6
00269c  1b020204  andi r4, r4, 64
0026a0  17127200  or r4, r4, r7
0026a4  9b332200  slli r7, r4, 2
0026a8  0b95c311  add.s r10, r7, r28
0026ac  73603500  stores.w r3, 0(r10)
0026b0  9b01e207  andi r3, r4, 126
0026b4  0b92e310  add.s r4, r7, r14
0026b8  9b934300  ori r7, r7, 4
0026bc  1f050000  addli r10, zero, 0
0026c0  9bb12100  slli r3, r3, 2
0026c4  73602200  stores.w r2, 0(r4)
0026c8  0b91c311  add.s r2, r7, r28
0026cc  8b93e310  add.s r7, r7, r14
0026d0  00a00300  mfence { lm, sm, gm }
0026d4  80210904  csr_set csr3, r18
0026d8  00d00100  sync_group
0026dc  0b92c111  add.s r4, r3, r28
0026e0  6f410100  loads.w r2, 0(r2)
0026e4  8b91e110  add.s r3, r3, r14
0026e8  efc30300  loads.w r7, 0(r7)
0026ec  6f420200  loads.w r4, 0(r4)
0026f0  efc10100  loads.w r3, 0(r3)
0026f4  0b614110  add.f.rn r2, r2, r4
0026f8  8be13310  add.f.rn r3, r7, r3
0026fc  ab03003a  lui r7, 237568
002700  0b627120  mul.f.rn r4, r2, r7
002704  0be17120  mul.f.rn r2, r3, r7
002708  8b614220  mul.f.rn r3, r4, r4
00270c  0b613118  sub.f.rn r2, r2, r3
002710  e3013f00  loadli.w r3,  24(r30)
002714  0b613110  add.f.rn r2, r2, r3
002718  ab01803f  lui r3, 260096
00271c  0f010108  sqrt.f.rn r2, r2
002720  0f812118  div.f.rn r2, r3, r2
002724  8b610258  neg.f r3, r4
002728  8b161810  add.s r13, r16, r1
00272c  0b9a1910  add.s r20, r19, r1
002730  8b931810  add.s r7, r17, r1
002734  1f8c8600  addli r24, r13, 64
002738  1f028a00  addli r4, r20, 64
00273c  42100a02  vload_mask16.mz vr0{mr1}, 0(r20)
002740  4a910602  vloads_mask16.mz vr2{mr1}, 0(r13)
002744  4a920302  vloads_mask16.mz vr4{mr1}, 0(r7)
002748  ca110c02  vloads_mask16.mz vr3{mr1}, 0(r24)
00274c  1f8c8300  addli r24, r7, 64
002750  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
002754  ca120c02  vloads_mask16.mz vr5{mr1}, 0(r24)
002758  1f0c4500  addli r24, r10, 32
00275c  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
002760  138c8207  setle.u r24, r5, r24
002764  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
002768  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
00276c  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
002770  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
002774  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
002778  46104a02  vstore_mask16.mz vr4{mr1}, 0(r20)
00277c  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
002780  bb110c00  bneq r24, zero, 100
002784  1f8c0601  addli r24, r13, 128
002788  1f020a01  addli r4, r20, 128
00278c  1f0a8a01  addli r20, r20, 192
002790  9f868601  addli r13, r13, 192
002794  1f058500  addli r10, r10, 64
002798  9f800002  addli r1, r1, 256
00279c  4a110c02  vloads_mask16.mz vr2{mr1}, 0(r24)
0027a0  1f8c0301  addli r24, r7, 128
0027a4  9f838301  addli r7, r7, 192
0027a8  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
0027ac  c2100a02  vload_mask16.mz vr1{mr1}, 0(r20)
0027b0  4a920602  vloads_mask16.mz vr4{mr1}, 0(r13)
0027b4  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
0027b8  ca110c02  vloads_mask16.mz vr3{mr1}, 0(r24)
0027bc  93035504  setlt.u r7, r10, r5
0027c0  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
0027c4  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
0027c8  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
0027cc  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
0027d0  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
0027d4  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
0027d8  46103202  vstore_mask16.mz vr3{mr1}, 0(r4)
0027dc  46105a02  vstore_mask16.mz vr5{mr1}, 0(r20)
0027e0  3bad03fe  bneq r7, zero, -184
0027e4  6b510f00  load.d r[3:4], 0(r30)
0027e8  ab0000f0  lui r1, 983040
0027ec  00a00000  mfence { lm }
0027f0  97901700  or r1, r15, r1
0027f4  0b21b110  add.ul r[3:4], r[3:4], r[12:13]
0027f8  ff303101  s_lm2gm r1, r19, 0(r[3:4])
0027fc  00a00200  mfence { lm, gm }
002800  e3461f00  loadli.w r13,  12(r30)
002804  0b138310  add.s r6, r6, r8
002808  bf06d3fc  blt.s r6, r13, -1632
00280c  abf00000  lui r1, 15
002810  9b90f0ff  ori r1, r1, 4095
002814  80a10004  csr_set csr3, r1
002818  00d00100  sync_group
00281c  db810000  j 1036
002820  63012f00  loadli.w r2,  16(r30)
002824  ab0100f0  lui r3, 983040
002828  1b312100  slli r2, r2, 2
00282c  17113100  or r2, r2, r3
002830  ab010100  lui r3, 16
002834  9f810108  addli r3, r3, 1024
002838  7f013400  l_gm2sm r2, r3, 0(r[9:10])
00283c  2bf10000  lui r2, 15
002840  e3411f00  loadli.w r3,  12(r30)
002844  00200300  mfence { sm, gm }
002848  1b11f1ff  ori r2, r2, 4095
00284c  80210104  csr_set csr3, r2
002850  00d00100  sync_group
002854  4bdf1100  ble.s r3, r1, 980
002858  63012f00  loadli.w r2,  16(r30)
00285c  e3412f00  loadli.w r3,  20(r30)
002860  2bea0000  lui r20, 14
002864  abfa0000  lui r21, 15
002868  2b0b0100  lui r22, 16
00286c  9f048fd7  addli r9, r30, -5184
002870  9f150000  addli r11, zero, 1
002874  9f060002  addli r13, zero, 256
002878  9f080001  addli r17, zero, 128
00287c  1f098000  addli r18, zero, 64
002880  9f094000  addli r19, zero, 32
002884  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002888  1f0a0a08  addli r20, r20, 1024
00288c  9f8a0a08  addli r21, r21, 1024
002890  1f0b0b08  addli r22, r22, 1024
002894  1b342100  slli r8, r2, 2
002898  8b123110  add.s r5, r2, r3
00289c  33010108  fix2float.rn r2, r2
0028a0  1bb32100  slli r6, r3, 2
0028a4  e74b2fd4  storeli.w r2, -5444(r30)
0028a8  1ff1f2ff  addli r2, r5, -1
0028ac  670c8fd4  storeli.w r8, -5440(r30)
0028b0  8b133130  div.s r7, r2, r3
0028b4  2bf1ffff  lui r2, 1048575
0028b8  1b16f1ff  ori r12, r2, 4095
0028bc  1f010fd7  addli r2, r30, -5248
0028c0  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0028c4  5b080000  j 64
0028c8  9f028fd6  addli r5, r30, -5312
0028cc  00a00000  mfence { lm }
0028d0  eb510f00  load.d r[4:5], 0(r30)
0028d4  2b0100f0  lui r2, 983040
0028d8  63048fd5  loadli.w r8,  -5440(r30)
0028dc  ebdb0200  load.d r[24:25], 0(r5)
0028e0  17112400  or r2, r8, r2
0028e4  8bab7111  add.ul r[24:25], r[4:5], r[24:25]
0028e8  80510102  load_param_i r3, 2
0028ec  7fb19b00  s_lm2gm r2, r9, 0(r[24:25])
0028f0  8b901110  add.s r1, r3, r1
0028f4  00a00200  mfence { lm, gm }
0028f8  63411f00  loadli.w r2,  12(r30)
0028fc  3fa02000  blt.s r1, r2, 8
002900  5b650000  j 808
002904  63011f00  loadli.w r2,  8(r30)
002908  1f220000  addli r4, zero, 2
00290c  9f027fd6  addli r5, r30, -5320
002910  0b912010  add.s r2, r1, r2
002914  0b11f120  mul.s r2, r2, r15
002918  33110128  sext_int2long r[3:4], r2
00291c  973b4102  sll.d r[24:25], r[3:4], r4
002920  ebd10200  load.d r[4:5], 0(r5)
002924  2b0100f0  lui r2, 983040
002928  9f028fd6  addli r5, r30, -5312
00292c  17112400  or r2, r8, r2
002930  73b07201  store.d r[24:25], 0(r5)
002934  8bac7111  add.ul r[26:27], r[4:5], r[24:25]
002938  7fa19c00  l_gm2lm r2, r9, 0(r[26:27])
00293c  00a00200  mfence { lm, gm }
002940  bf97b300  blt.s r7, r11, 484
002944  9f010000  addli r3, zero, 0
002948  1f010000  addli r2, zero, 0
00294c  1f050000  addli r10, zero, 0
002950  db0c0000  j 100
002954  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
002958  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00295c  1f150500  addli r10, r10, 1
002960  6af106c0  vsrl.p vr2, r13, vr0
002964  eaf116c0  vsrl.p vr3, r13, vr1
002968  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00296c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002970  6af108c0  vsrl.p vr2, r17, vr0
002974  eaf118c0  vsrl.p vr3, r17, vr1
002978  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00297c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002980  6a7109c0  vsrl.p vr2, r18, vr0
002984  ea7119c0  vsrl.p vr3, r18, vr1
002988  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00298c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002990  6af109c0  vsrl.p vr2, r19, vr0
002994  eaf119c0  vsrl.p vr3, r19, vr1
002998  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00299c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0029a0  7a120040  vextracti.f r4, 0(vr0)
0029a4  fa920040  vextracti.f r5, 0(vr1)
0029a8  8be14110  add.f.rn r3, r3, r4
0029ac  0b615110  add.f.rn r2, r2, r5
0029b0  b7757500  beq r10, r7, 380
0029b4  9f020500  addli r5, r10, 0
0029b8  3730d700  beq r14, r13, 12
0029bc  9722c500  xor r5, r10, r12
0029c0  8b925310  add.s r5, r7, r5
0029c4  1f020fd7  addli r4, r30, -5248
0029c8  0b94e220  mul.s r8, r5, r14
0029cc  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
0029d0  0b948718  sub.s r8, r15, r8
0029d4  8b1ce440  min.s r25, r8, r14
0029d8  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0029dc  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0029e0  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0029e4  bfcdbcfe  blt.s r25, r11, -144
0029e8  42120202  vload_mask16.mz vr4{mr1}, 0(r4)
0029ec  1f0d0000  addli r26, zero, 0
0029f0  8b1d5320  mul.s r27, r6, r5
0029f4  1f0e8fd7  addli r28, r30, -5184
0029f8  1f080a00  addli r16, r20, 0
0029fc  92304002  vadd.s.mz vr1{mr1}, zero, vr4
002a00  12314002  vadd.s.mz vr2{mr1}, zero, vr4
002a04  92314002  vadd.s.mz vr3{mr1}, zero, vr4
002a08  8b12b811  add.s r5, r16, r27
002a0c  0b14be11  add.s r8, r28, r27
002a10  1f828200  addli r4, r5, 64
002a14  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
002a18  9f8b8201  addli r23, r5, 192
002a1c  c2140402  vload_mask16.mz vr9{mr1}, 0(r8)
002a20  1f0c8401  addli r24, r8, 192
002a24  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
002a28  1f820201  addli r4, r5, 128
002a2c  4a940b02  vloads_mask16.mz vr8{mr1}, 0(r23)
002a30  9f0b0401  addli r23, r8, 128
002a34  42100c02  vload_mask16.mz vr0{mr1}, 0(r24)
002a38  ca130202  vloads_mask16.mz vr7{mr1}, 0(r4)
002a3c  c2950b02  vload_mask16.mz vr11{mr1}, 0(r23)
002a40  1f028400  addli r4, r8, 64
002a44  42150202  vload_mask16.mz vr10{mr1}, 0(r4)
002a48  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
002a4c  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
002a50  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
002a54  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
002a58  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002a5c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002a60  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
002a64  46106202  vstore_mask16.mz vr6{mr1}, 0(r4)
002a68  1f028d00  addli r4, r26, 64
002a6c  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
002a70  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
002a74  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002a78  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
002a7c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002a80  46907b02  vstore_mask16.mz vr7{mr1}, 0(r23)
002a84  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
002a88  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
002a8c  4bab4cfe  ble.s r25, r4, -312
002a90  9f8b0202  addli r23, r5, 256
002a94  1f8c8202  addli r24, r5, 320
002a98  1f020402  addli r4, r8, 256
002a9c  1f0d0d01  addli r26, r26, 128
002aa0  1f080804  addli r16, r16, 512
002aa4  1f0e0e04  addli r28, r28, 512
002aa8  4a900b02  vloads_mask16.mz vr0{mr1}, 0(r23)
002aac  9f8b0203  addli r23, r5, 384
002ab0  9f828203  addli r5, r5, 448
002ab4  ca120c02  vloads_mask16.mz vr5{mr1}, 0(r24)
002ab8  42130202  vload_mask16.mz vr6{mr1}, 0(r4)
002abc  ca930b02  vloads_mask16.mz vr7{mr1}, 0(r23)
002ac0  4a940202  vloads_mask16.mz vr8{mr1}, 0(r5)
002ac4  9f020403  addli r5, r8, 384
002ac8  9f0b8402  addli r23, r8, 320
002acc  1f048403  addli r8, r8, 448
002ad0  42950202  vload_mask16.mz vr10{mr1}, 0(r5)
002ad4  c2940b02  vload_mask16.mz vr9{mr1}, 0(r23)
002ad8  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
002adc  42130402  vload_mask16.mz vr6{mr1}, 0(r8)
002ae0  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
002ae4  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
002ae8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
002aec  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002af0  46100202  vstore_mask16.mz vr0{mr1}, 0(r4)
002af4  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
002af8  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
002afc  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
002b00  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002b04  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
002b08  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002b0c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002b10  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
002b14  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
002b18  46106402  vstore_mask16.mz vr6{mr1}, 0(r8)
002b1c  bf3b9dff  blt.s r26, r25, -276
002b20  dbc6ffff  j -460
002b24  1f010000  addli r2, zero, 0
002b28  9f010000  addli r3, zero, 0
002b2c  00a00000  mfence { lm }
002b30  3fe6b7fe  blt.s r15, r11, -616
002b34  63427fd5  loadli.w r4,  -5444(r30)
002b38  1f050000  addli r10, zero, 0
002b3c  1f080000  addli r16, zero, 0
002b40  8f814118  div.f.rn r3, r3, r4
002b44  0f014118  div.f.rn r2, r2, r4
002b48  63023f00  loadli.w r4,  24(r30)
002b4c  8be23120  mul.f.rn r5, r3, r3
002b50  8be10158  neg.f r3, r3
002b54  0b615118  sub.f.rn r2, r2, r5
002b58  0b614110  add.f.rn r2, r2, r4
002b5c  2b02803f  lui r4, 260096
002b60  0f010108  sqrt.f.rn r2, r2
002b64  0f012218  div.f.rn r2, r4, r2
002b68  0b145511  add.s r8, r10, r21
002b6c  8b92a410  add.s r5, r9, r10
002b70  9f0c8400  addli r25, r8, 64
002b74  4a110402  vloads_mask16.mz vr2{mr1}, 0(r8)
002b78  0b146511  add.s r8, r10, r22
002b7c  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
002b80  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
002b84  9f8c8200  addli r25, r5, 64
002b88  4a120402  vloads_mask16.mz vr4{mr1}, 0(r8)
002b8c  1f048400  addli r8, r8, 64
002b90  c2920c02  vload_mask16.mz vr5{mr1}, 0(r25)
002b94  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
002b98  1f044800  addli r8, r16, 32
002b9c  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
002ba0  92925102  vadd.f.mz.rn vr5{mr1}, r3, vr5
002ba4  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
002ba8  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002bac  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
002bb0  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
002bb4  46904202  vstore_mask16.mz vr4{mr1}, 0(r5)
002bb8  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
002bbc  4bb487fe  ble.s r15, r8, -756
002bc0  0b94aa10  add.s r8, r21, r10
002bc4  8b1cab10  add.s r25, r22, r10
002bc8  1f088800  addli r16, r16, 64
002bcc  1f050502  addli r10, r10, 256
002bd0  1f0d0401  addli r26, r8, 128
002bd4  9f8d0c01  addli r27, r25, 128
002bd8  1f048401  addli r8, r8, 192
002bdc  9f8c8c01  addli r25, r25, 192
002be0  ca100d02  vloads_mask16.mz vr1{mr1}, 0(r26)
002be4  1f8d0201  addli r26, r5, 128
002be8  9f828201  addli r5, r5, 192
002bec  4a910d02  vloads_mask16.mz vr2{mr1}, 0(r27)
002bf0  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
002bf4  4a930c02  vloads_mask16.mz vr6{mr1}, 0(r25)
002bf8  c2110d02  vload_mask16.mz vr3{mr1}, 0(r26)
002bfc  42920202  vload_mask16.mz vr4{mr1}, 0(r5)
002c00  92913102  vadd.f.mz.rn vr3{mr1}, r3, vr3
002c04  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
002c08  8a113102  vmul.f.mz.rn vr3{mr1}, r2, vr3
002c0c  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
002c10  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
002c14  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
002c18  46102d02  vstore_mask16.mz vr2{mr1}, 0(r26)
002c1c  46906202  vstore_mask16.mz vr6{mr1}, 0(r5)
002c20  3f2df8fe  blt.s r16, r15, -184
002c24  db94ffff  j -860
002c28  9f0e0fd5  addli sp, r30, -5504
002c2c  e38fae2a  loadli.w r31,  5456(sp)
002c30  63cfae2a  loadli.w r30,  5460(sp)
002c34  638ebe2a  loadli.w r28,  5464(sp)
002c38  e3cdbe2a  loadli.w r27,  5468(sp)
002c3c  638dce2a  loadli.w r26,  5472(sp)
002c40  e3ccce2a  loadli.w r25,  5476(sp)
002c44  638cde2a  loadli.w r24,  5480(sp)
002c48  e3cbde2a  loadli.w r23,  5484(sp)
002c4c  638bee2a  loadli.w r22,  5488(sp)
002c50  e3caee2a  loadli.w r21,  5492(sp)
002c54  638afe2a  loadli.w r20,  5496(sp)
002c58  e3c9fe2a  loadli.w r19,  5500(sp)
002c5c  9f8e0e2b  addli sp, sp, 5504
002c60  5f800f00  jr r31, 0
002c64  00100000  exit
002c68  00100000  exit
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
