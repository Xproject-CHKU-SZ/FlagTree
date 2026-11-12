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
0000fc  cb515b01  ble.s r22, r21, 116
000100  ab10833a  lui r1, 239665
000104  80db0002  load_param_i r23, 1
000108  1f0c6000  addli r24, zero, 48
00010c  9f0c0004  addli r25, zero, 512
000110  1f2d0000  addli r26, zero, 2
000114  9f0d0008  addli r27, zero, 1024
000118  1b9ef026  ori r28, r1, 623
00011c  8b904a31  div.s r1, r21, r20
000120  eb510f02  load.d r[4:5], 32(r30)
000124  6b530f01  load.d r[7:8], 16(r30)
000128  6b548f01  load.d r[9:10], 24(r30)
00012c  6782ae01  storeli.w r26, 32(sp)
000130  e7c10e00  storeli.w zero, 28(sp)
000134  67c1be01  storeli.w r27, 20(sp)
000138  6781be01  storeli.w r27, 16(sp)
00013c  e781ce01  storeli.w r28, 24(sp)
000140  73b03e00  store.d r[4:5], 0(sp)
000144  6b528f00  load.d r[5:6], 8(r30)
000148  8b903031  div.s r1, r1, r19
00014c  8b908021  mul.s r1, r1, r24
000150  0b911c18  sub.s r2, r25, r1
000154  e7801e00  storeli.w r1, 8(sp)
000158  0b118141  min.s r2, r2, r24
00015c  e7c02e00  storeli.w r2, 12(sp)
000160  6b510f00  load.d r[3:4], 0(r30)
000164  d72f0000  jal 380
000168  8b9a7a11  add.s r21, r21, r23
00016c  bfce6aff  blt.s r21, r22, -80
000170  9f8e8e00  addli sp, sp, 64
000174  00a00300  mfence { lm, sm, gm }
000178  00100000  exit
00017c  9f8e0ed5  addli sp, sp, -5504
000180  67c5ee2b  storeli.w r30, 5460(sp)
000184  1f8f0e2b  addli r30, sp, 5504
000188  1f150000  addli r10, zero, 1
00018c  e7c73e2b  storeli.w r19, 5500(sp)
000190  e7874e2b  storeli.w r20, 5496(sp)
000194  67c75e2b  storeli.w r21, 5492(sp)
000198  67876e2b  storeli.w r22, 5488(sp)
00019c  e7c67e2b  storeli.w r23, 5484(sp)
0001a0  e7868e2b  storeli.w r24, 5480(sp)
0001a4  67c69e2b  storeli.w r25, 5476(sp)
0001a8  6786ae2b  storeli.w r26, 5472(sp)
0001ac  e7c5be2b  storeli.w r27, 5468(sp)
0001b0  e785ce2b  storeli.w r28, 5464(sp)
0001b4  6785fe2b  storeli.w r31, 5456(sp)
0001b8  e3004f00  loadli.w r1,  32(r30)
0001bc  63472f00  loadli.w r14,  20(r30)
0001c0  e3072f00  loadli.w r15,  16(r30)
0001c4  e3461f00  loadli.w r13,  12(r30)
0001c8  9f057fd6  addli r11, r30, -5320
0001cc  73b02500  store.d r[3:4], 0(r11)
0001d0  37b1a000  beq r1, r10, 76
0001d4  1f210000  addli r2, zero, 2
0001d8  3b922000  bneq r1, r2, 132
0001dc  e3403f00  loadli.w r1,  28(r30)
0001e0  37930000  beq r1, zero, 196
0001e4  80350002  core_id r11
0001e8  9f200000  addli r1, zero, 2
0001ec  37b3150a  beq r11, r1, 5324
0001f0  9f100000  addli r1, zero, 1
0001f4  3792150a  beq r11, r1, 5252
0001f8  3bf3050a  bneq r11, zero, 5340
0001fc  e3002f00  loadli.w r1,  16(r30)
000200  2b0100f0  lui r2, 983040
000204  9bb01000  slli r1, r1, 1
000208  97902000  or r1, r1, r2
00020c  2b010000  lui r2, 0
000210  1f010100  addli r2, r2, 0
000214  ff002200  l_gm2sm r1, r2, 0(r[5:6])
000218  db970200  j 5308
00021c  e3403f00  loadli.w r1,  28(r30)
000220  b7980002  beq r1, zero, 1572
000224  80300002  core_id r1
000228  1f210000  addli r2, zero, 2
00022c  379a200c  beq r1, r2, 6788
000230  1f110000  addli r2, zero, 1
000234  b791200a  beq r1, r2, 5220
000238  3bda000c  bneq r1, zero, 6804
00023c  63012f00  loadli.w r2,  16(r30)
000240  ab0100f0  lui r3, 983040
000244  1b311100  slli r2, r2, 1
000248  17113100  or r2, r2, r3
00024c  ab410000  lui r3, 4
000250  9f810100  addli r3, r3, 0
000254  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000258  db4e0300  j 6772
00025c  e3403f00  loadli.w r1,  28(r30)
000260  37f50004  beq r1, zero, 2396
000264  e3002f00  loadli.w r1,  16(r30)
000268  1f010010  addli r2, zero, 2048
00026c  3b912008  bneq r1, r2, 4164
000270  00350002  core_id r10
000274  9f200000  addli r1, zero, 2
000278  3719150e  beq r10, r1, 7748
00027c  9f100000  addli r1, zero, 1
000280  3708150e  beq r10, r1, 7680
000284  3b49050e  bneq r10, zero, 7760
000288  9f000040  addli r1, zero, 8192
00028c  2b0100f0  lui r2, 983040
000290  97902000  or r1, r1, r2
000294  2b810000  lui r2, 8
000298  1f010100  addli r2, r2, 0
00029c  ff002200  l_gm2sm r1, r2, 0(r[5:6])
0002a0  dbc60300  j 7732
0002a4  00330002  core_id r6
0002a8  bb000300  bneq r6, zero, 32
0002ac  e3002f00  loadli.w r1,  16(r30)
0002b0  2b0100f0  lui r2, 983040
0002b4  9bb01000  slli r1, r1, 1
0002b8  97902000  or r1, r1, r2
0002bc  2b310000  lui r2, 3
0002c0  1f010100  addli r2, r2, 0
0002c4  ff002200  l_gm2sm r1, r2, 0(r[5:6])
0002c8  abf00000  lui r1, 15
0002cc  63411f00  loadli.w r2,  12(r30)
0002d0  00200300  mfence { sm, gm }
0002d4  9b90f0ff  ori r1, r1, 4095
0002d8  80a10004  csr_set csr3, r1
0002dc  00d00100  sync_group
0002e0  4b556114  ble.s r2, r6, 10580
0002e4  e3002f00  loadli.w r1,  16(r30)
0002e8  63412f00  loadli.w r2,  20(r30)
0002ec  9f062000  addli r13, zero, 16
0002f0  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0002f4  1f140000  addli r8, zero, 1
0002f8  1f058fd7  addli r10, r30, -5184
0002fc  1f060002  addli r12, zero, 256
000300  2b08ffff  lui r16, 1048560
000304  2b09807f  lui r18, 522240
000308  ab09c07f  lui r19, 523264
00030c  1f0a0001  addli r20, zero, 128
000310  9f0a8000  addli r21, zero, 64
000314  1f0b4000  addli r22, zero, 32
000318  1bb21000  slli r4, r1, 1
00031c  8b912010  add.s r3, r1, r2
000320  b3800008  fix2float.rn r1, r1
000324  9b321100  slli r5, r2, 1
000328  e70b1fd4  storeli.w r1, -5448(r30)
00032c  9ff0f1ff  addli r1, r3, -1
000330  e74b4fd4  storeli.w r4, -5444(r30)
000334  8b932030  div.s r7, r1, r2
000338  abf0ffff  lui r1, 1048575
00033c  9b95f0ff  ori r11, r1, 4095
000340  9f000fd7  addli r1, r30, -5248
000344  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000348  6aa00622  vor.u.mz vr0{mr1}, r13, vr0
00034c  9f008fd6  addli r1, r30, -5312
000350  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000354  ab700000  lui r1, 7
000358  9b98f0ff  ori r17, r1, 4095
00035c  db080000  j 68
000360  1f028fd5  addli r4, r30, -5440
000364  00a00000  mfence { lm }
000368  6b510f00  load.d r[3:4], 0(r30)
00036c  ab0000f0  lui r1, 983040
000370  eb540200  load.d r[10:11], 0(r4)
000374  63427fd5  loadli.w r4,  -5444(r30)
000378  0b219110  add.ul r[3:4], r[3:4], r[10:11]
00037c  97101200  or r1, r4, r1
000380  1f058fd7  addli r10, r30, -5184
000384  80540102  load_param_i r9, 2
000388  ff30a100  s_lm2gm r1, r10, 0(r[3:4])
00038c  0b936410  add.s r6, r9, r6
000390  00a00200  mfence { lm, gm }
000394  e3401f00  loadli.w r1,  12(r30)
000398  3f201300  blt.s r6, r1, 8
00039c  5b130500  j 10392
0003a0  e3001f00  loadli.w r1,  8(r30)
0003a4  9f047fd6  addli r9, r30, -5320
0003a8  8b101310  add.s r1, r6, r1
0003ac  8b90f020  mul.s r1, r1, r15
0003b0  b3900028  sext_int2long r[2:3], r1
0003b4  97bb8002  sll.d r[24:25], r[2:3], r8
0003b8  6bd10400  load.d r[3:4], 0(r9)
0003bc  ab0000f0  lui r1, 983040
0003c0  9f048fd5  addli r9, r30, -5440
0003c4  97101200  or r1, r4, r1
0003c8  73b07401  store.d r[24:25], 0(r9)
0003cc  0b217111  add.ul r[3:4], r[3:4], r[24:25]
0003d0  ff20a100  l_gm2lm r1, r10, 0(r[3:4])
0003d4  00a00200  mfence { lm, gm }
0003d8  bfdc8300  blt.s r7, r8, 820
0003dc  1f0e0000  addli r28, zero, 0
0003e0  9f0d0000  addli r27, zero, 0
0003e4  9f0b0000  addli r23, zero, 0
0003e8  db0c0000  j 100
0003ec  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
0003f0  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
0003f4  9f9b0b00  addli r23, r23, 1
0003f8  6a7106c0  vsrl.p vr2, r12, vr0
0003fc  ea7116c0  vsrl.p vr3, r12, vr1
000400  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000404  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000408  6a710ac0  vsrl.p vr2, r20, vr0
00040c  ea711ac0  vsrl.p vr3, r20, vr1
000410  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000414  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000418  6af10ac0  vsrl.p vr2, r21, vr0
00041c  eaf11ac0  vsrl.p vr3, r21, vr1
000420  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000424  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000428  6a710bc0  vsrl.p vr2, r22, vr0
00042c  ea711bc0  vsrl.p vr3, r22, vr1
000430  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000434  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000438  fa100040  vextracti.f r1, 0(vr0)
00043c  7a910040  vextracti.f r2, 0(vr1)
000440  0b6e1e10  add.f.rn r28, r28, r1
000444  8bed2d10  add.f.rn r27, r27, r2
000448  37bb7b00  beq r23, r7, 716
00044c  9f800b00  addli r1, r23, 0
000450  3730c700  beq r14, r12, 12
000454  97a0bb00  xor r1, r23, r11
000458  8b901310  add.s r1, r7, r1
00045c  0b91e020  mul.s r2, r1, r14
000460  0b912718  sub.s r2, r15, r2
000464  0b15e140  min.s r10, r2, r14
000468  1f010fd7  addli r2, r30, -5248
00046c  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
000470  92322002  vadd.s.mz vr5{mr1}, zero, vr2
000474  12322002  vadd.s.mz vr4{mr1}, zero, vr2
000478  92312002  vadd.s.mz vr3{mr1}, zero, vr2
00047c  bf4d85fe  blt.s r10, r8, -144
000480  8b911220  mul.s r3, r5, r1
000484  9f000fd7  addli r1, r30, -5248
000488  2b3c0000  lui r24, 3
00048c  1f010000  addli r2, zero, 0
000490  9f048fd7  addli r9, r30, -5184
000494  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
000498  1f0c0c00  addli r24, r24, 0
00049c  12315002  vadd.s.mz vr2{mr1}, zero, vr5
0004a0  92315002  vadd.s.mz vr3{mr1}, zero, vr5
0004a4  12325002  vadd.s.mz vr4{mr1}, zero, vr5
0004a8  8b1c3c10  add.s r25, r24, r3
0004ac  8b903410  add.s r1, r9, r3
0004b0  1f028fd6  addli r4, r30, -5312
0004b4  4a830c02  vloads.mz vr6{mr1}, 0(r25)
0004b8  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
0004bc  c2830002  vload.mz vr7{mr1}, 0(r1)
0004c0  1f020fd7  addli r4, r30, -5248
0004c4  1f8d8c00  addli r26, r25, 64
0004c8  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
0004cc  1f028100  addli r4, r2, 64
0004d0  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
0004d4  6a357802  vand.s.mz vr10{mr1}, r16, vr7
0004d8  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
0004dc  6a336802  vand.s.mz vr6{mr1}, r16, vr6
0004e0  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
0004e4  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0004e8  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
0004ec  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
0004f0  669503c0  vabs.f vr10, vr7
0004f4  6a348402  vand.s.mz vr8{mr1}, r8, vr8
0004f8  ea349402  vand.s.mz vr9{mr1}, r8, vr9
0004fc  7221a942  vlt.u.mz mr2{mr1}, r18, vr10
000500  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
000504  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
000508  12b48802  vadd.s.mz vr8{mr1}, r17, vr8
00050c  92b49802  vadd.s.mz vr9{mr1}, r17, vr9
000510  ea338802  vand.s.mz vr7{mr1}, r16, vr8
000514  661403c0  vabs.f vr8, vr6
000518  6a339802  vand.s.mz vr6{mr1}, r16, vr9
00051c  eaa30934  vor.u.mh vr7{mr2}, r19, vr0
000520  72218942  vlt.u.mz mr2{mr1}, r18, vr8
000524  6aa30934  vor.u.mh vr6{mr2}, r19, vr0
000528  4a040d02  vloads.mz vr8{mr1}, 0(r26)
00052c  1f8d8000  addli r26, r1, 64
000530  c2040d02  vload.mz vr9{mr1}, 0(r26)
000534  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
000538  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
00053c  6a336802  vand.s.mz vr6{mr1}, r16, vr6
000540  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
000544  ea349802  vand.s.mz vr9{mr1}, r16, vr9
000548  46807002  vstore.mz vr7{mr1}, 0(r1)
00054c  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
000550  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
000554  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
000558  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
00055c  6a348802  vand.s.mz vr8{mr1}, r16, vr8
000560  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
000564  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
000568  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
00056c  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
000570  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
000574  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
000578  ea349402  vand.s.mz vr9{mr1}, r8, vr9
00057c  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
000580  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
000584  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
000588  661505c0  vabs.f vr10, vr10
00058c  661404c0  vabs.f vr8, vr8
000590  92b49802  vadd.s.mz vr9{mr1}, r17, vr9
000594  92b5b802  vadd.s.mz vr11{mr1}, r17, vr11
000598  7221a942  vlt.u.mz mr2{mr1}, r18, vr10
00059c  ea349802  vand.s.mz vr9{mr1}, r16, vr9
0005a0  6a35b802  vand.s.mz vr10{mr1}, r16, vr11
0005a4  eaa40934  vor.u.mh vr9{mr2}, r19, vr0
0005a8  72218942  vlt.u.mz mr2{mr1}, r18, vr8
0005ac  6aa50934  vor.u.mh vr10{mr2}, r19, vr0
0005b0  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
0005b4  ea34a802  vand.s.mz vr9{mr1}, r16, vr10
0005b8  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
0005bc  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
0005c0  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
0005c4  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
0005c8  46008d02  vstore.mz vr8{mr1}, 0(r26)
0005cc  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0005d0  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0005d4  4b6845fe  ble.s r10, r4, -488
0005d8  1f820c01  addli r4, r25, 128
0005dc  1f8d0001  addli r26, r1, 128
0005e0  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
0005e4  9f808001  addli r1, r1, 192
0005e8  1f010101  addli r2, r2, 128
0005ec  1f0c0c02  addli r24, r24, 256
0005f0  9f840402  addli r9, r9, 256
0005f4  6aa37622  vor.u.mz vr6{mr1}, r13, vr7
0005f8  4a040202  vloads.mz vr8{mr1}, 0(r4)
0005fc  c2040d02  vload.mz vr9{mr1}, 0(r26)
000600  1f828c01  addli r4, r25, 192
000604  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
000608  6a309802  vand.s.mz vr0{mr1}, r16, vr9
00060c  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
000610  6a348802  vand.s.mz vr8{mr1}, r16, vr8
000614  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
000618  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
00061c  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
000620  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
000624  e69504c0  vabs.f vr11, vr9
000628  6a300402  vand.s.mz vr0{mr1}, r8, vr0
00062c  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
000630  7221b942  vlt.u.mz mr2{mr1}, r18, vr11
000634  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
000638  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
00063c  12b00802  vadd.s.mz vr0{mr1}, r17, vr0
000640  12b5a802  vadd.s.mz vr10{mr1}, r17, vr10
000644  ea340802  vand.s.mz vr9{mr1}, r16, vr0
000648  661004c0  vabs.f vr0, vr8
00064c  6a34a802  vand.s.mz vr8{mr1}, r16, vr10
000650  eaa47934  vor.u.mh vr9{mr2}, r19, vr7
000654  72210942  vlt.u.mz mr2{mr1}, r18, vr0
000658  6aa47934  vor.u.mh vr8{mr2}, r19, vr7
00065c  4a000202  vloads.mz vr0{mr1}, 0(r4)
000660  42850002  vload.mz vr10{mr1}, 0(r1)
000664  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
000668  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
00066c  6a35a802  vand.s.mz vr10{mr1}, r16, vr10
000670  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
000674  6a348802  vand.s.mz vr8{mr1}, r16, vr8
000678  46009d02  vstore.mz vr9{mr1}, 0(r26)
00067c  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
000680  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
000684  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
000688  6a300802  vand.s.mz vr0{mr1}, r16, vr0
00068c  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
000690  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
000694  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
000698  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
00069c  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
0006a0  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
0006a4  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
0006a8  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
0006ac  e69000c0  vabs.f vr1, vr1
0006b0  661000c0  vabs.f vr0, vr0
0006b4  12b5a802  vadd.s.mz vr10{mr1}, r17, vr10
0006b8  92b5b802  vadd.s.mz vr11{mr1}, r17, vr11
0006bc  72211942  vlt.u.mz mr2{mr1}, r18, vr1
0006c0  6a35a802  vand.s.mz vr10{mr1}, r16, vr10
0006c4  ea30b802  vand.s.mz vr1{mr1}, r16, vr11
0006c8  6aa57934  vor.u.mh vr10{mr2}, r19, vr7
0006cc  72210942  vlt.u.mz mr2{mr1}, r18, vr0
0006d0  eaa07934  vor.u.mh vr1{mr2}, r19, vr7
0006d4  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
0006d8  ea331802  vand.s.mz vr7{mr1}, r16, vr1
0006dc  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
0006e0  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
0006e4  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0006e8  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0006ec  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
0006f0  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
0006f4  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
0006f8  46800002  vstore.mz vr0{mr1}, 0(r1)
0006fc  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
000700  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000704  bf16a1fe  blt.s r2, r10, -604
000708  db9cffff  j -796
00070c  9f0d0000  addli r27, zero, 0
000710  1f0e0000  addli r28, zero, 0
000714  00a00000  mfence { lm }
000718  3fa187fe  blt.s r15, r8, -952
00071c  e3007fd5  loadli.w r1,  -5448(r30)
000720  9f040000  addli r9, zero, 0
000724  0f011e18  div.f.rn r2, r28, r1
000728  8f801d18  div.f.rn r1, r27, r1
00072c  8b612120  mul.f.rn r3, r2, r2
000730  0b610158  neg.f r2, r2
000734  8be03018  sub.f.rn r1, r1, r3
000738  e3013f00  loadli.w r3,  24(r30)
00073c  8be03010  add.f.rn r1, r1, r3
000740  ab01803f  lui r3, 260096
000744  8f800008  sqrt.f.rn r1, r1
000748  8f801118  div.f.rn r1, r3, r1
00074c  9f018fd7  addli r3, r30, -5184
000750  42820102  vload.mz vr4{mr1}, 0(r3)
000754  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
000758  1f854400  addli r10, r9, 32
00075c  eaa12622  vor.u.mz vr3{mr1}, r13, vr2
000760  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
000764  6a324802  vand.s.mz vr4{mr1}, r16, vr4
000768  92125102  vadd.f.mz.rn vr5{mr1}, r2, vr5
00076c  12124102  vadd.f.mz.rn vr4{mr1}, r2, vr4
000770  8a925002  vmul.f.mz.rn vr5{mr1}, r1, vr5
000774  0a924002  vmul.f.mz.rn vr4{mr1}, r1, vr4
000778  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
00077c  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
000780  6a336402  vand.s.mz vr6{mr1}, r8, vr6
000784  ea337402  vand.s.mz vr7{mr1}, r8, vr7
000788  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
00078c  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
000790  e69202c0  vabs.f vr5, vr5
000794  661202c0  vabs.f vr4, vr4
000798  12b36802  vadd.s.mz vr6{mr1}, r17, vr6
00079c  92b37802  vadd.s.mz vr7{mr1}, r17, vr7
0007a0  72215942  vlt.u.mz mr2{mr1}, r18, vr5
0007a4  6a336802  vand.s.mz vr6{mr1}, r16, vr6
0007a8  ea327802  vand.s.mz vr5{mr1}, r16, vr7
0007ac  6aa32934  vor.u.mh vr6{mr2}, r19, vr2
0007b0  72214942  vlt.u.mz mr2{mr1}, r18, vr4
0007b4  eaa22934  vor.u.mh vr5{mr2}, r19, vr2
0007b8  6eb261c2  vsrl.s.mz vr4{mr1}, vr3, vr6
0007bc  6eb24222  vor.s.mz vr4{mr1}, vr5, vr4
0007c0  46804102  vstore.mz vr4{mr1}, 0(r3)
0007c4  4bfea7fc  ble.s r15, r10, -1124
0007c8  1f858100  addli r10, r3, 64
0007cc  9f848400  addli r9, r9, 64
0007d0  9f810101  addli r3, r3, 128
0007d4  42020502  vload.mz vr4{mr1}, 0(r10)
0007d8  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
0007dc  6a324802  vand.s.mz vr4{mr1}, r16, vr4
0007e0  92125102  vadd.f.mz.rn vr5{mr1}, r2, vr5
0007e4  12124102  vadd.f.mz.rn vr4{mr1}, r2, vr4
0007e8  8a925002  vmul.f.mz.rn vr5{mr1}, r1, vr5
0007ec  0a924002  vmul.f.mz.rn vr4{mr1}, r1, vr4
0007f0  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
0007f4  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
0007f8  6a336402  vand.s.mz vr6{mr1}, r8, vr6
0007fc  ea337402  vand.s.mz vr7{mr1}, r8, vr7
000800  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
000804  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
000808  e69202c0  vabs.f vr5, vr5
00080c  661202c0  vabs.f vr4, vr4
000810  12b36802  vadd.s.mz vr6{mr1}, r17, vr6
000814  92b37802  vadd.s.mz vr7{mr1}, r17, vr7
000818  72215942  vlt.u.mz mr2{mr1}, r18, vr5
00081c  6a336802  vand.s.mz vr6{mr1}, r16, vr6
000820  ea327802  vand.s.mz vr5{mr1}, r16, vr7
000824  6aa32934  vor.u.mh vr6{mr2}, r19, vr2
000828  72214942  vlt.u.mz mr2{mr1}, r18, vr4
00082c  eaa22934  vor.u.mh vr5{mr2}, r19, vr2
000830  eeb161c2  vsrl.s.mz vr3{mr1}, vr3, vr6
000834  6eb13222  vor.s.mz vr2{mr1}, vr5, vr3
000838  46002502  vstore.mz vr2{mr1}, 0(r10)
00083c  3fdcf4fe  blt.s r9, r15, -236
000840  5b64ffff  j -1248
000844  80300002  core_id r1
000848  bb800000  bneq r1, zero, 32
00084c  63012f00  loadli.w r2,  16(r30)
000850  ab0100f0  lui r3, 983040
000854  1b311100  slli r2, r2, 1
000858  17113100  or r2, r2, r3
00085c  ab710000  lui r3, 7
000860  9f810100  addli r3, r3, 0
000864  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000868  2bf10000  lui r2, 15
00086c  e3411f00  loadli.w r3,  12(r30)
000870  00200300  mfence { sm, gm }
000874  1b11f1ff  ori r2, r2, 4095
000878  80210104  csr_set csr3, r2
00087c  00d00100  sync_group
000880  cbde1110  ble.s r3, r1, 9140
000884  63012f00  loadli.w r2,  16(r30)
000888  e3412f00  loadli.w r3,  20(r30)
00088c  ab790000  lui r19, 7
000890  1f140000  addli r8, zero, 1
000894  1f098fd7  addli r18, r30, -5184
000898  1f060002  addli r12, zero, 256
00089c  9f060001  addli r13, zero, 128
0008a0  1f088000  addli r16, zero, 64
0008a4  9f084000  addli r17, zero, 32
0008a8  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0008ac  9f890900  addli r19, r19, 0
0008b0  0b133110  add.s r6, r2, r3
0008b4  1b321100  slli r4, r2, 1
0008b8  b3020108  fix2float.rn r5, r2
0008bc  1f71f3ff  addli r2, r6, -1
0008c0  1bb31100  slli r6, r3, 1
0008c4  8b133130  div.s r7, r2, r3
0008c8  2bf1ffff  lui r2, 1048575
0008cc  9b15f1ff  ori r11, r2, 4095
0008d0  5b070000  j 56
0008d4  00a00000  mfence { lm }
0008d8  eb540f00  load.d r[10:11], 0(r30)
0008dc  2b0100f0  lui r2, 983040
0008e0  1f098fd7  addli r18, r30, -5184
0008e4  80510102  load_param_i r3, 2
0008e8  17112200  or r2, r4, r2
0008ec  8b901110  add.s r1, r3, r1
0008f0  0baa4411  add.ul r[21:22], r[10:11], r[21:22]
0008f4  7f312a01  s_lm2gm r2, r18, 0(r[21:22])
0008f8  00a00200  mfence { lm, gm }
0008fc  63411f00  loadli.w r2,  12(r30)
000900  3fa02000  blt.s r1, r2, 8
000904  5b660400  j 9008
000908  63011f00  loadli.w r2,  8(r30)
00090c  0b912010  add.s r2, r1, r2
000910  0b11f120  mul.s r2, r2, r15
000914  33110128  sext_int2long r[3:4], r2
000918  173a8102  sll.d r[21:22], r[3:4], r8
00091c  9f017fd6  addli r3, r30, -5320
000920  2b0100f0  lui r2, 983040
000924  ebd40100  load.d r[10:11], 0(r3)
000928  17112200  or r2, r4, r2
00092c  0bab4411  add.ul r[23:24], r[10:11], r[21:22]
000930  7f212b01  l_gm2lm r2, r18, 0(r[23:24])
000934  00a00200  mfence { lm, gm }
000938  3fc78300  blt.s r7, r8, 464
00093c  9f010000  addli r3, zero, 0
000940  1f010000  addli r2, zero, 0
000944  1f050000  addli r10, zero, 0
000948  db0c0000  j 100
00094c  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
000950  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000954  1f150500  addli r10, r10, 1
000958  6a7136c0  vsrl.p vr2, r12, vr3
00095c  6a7216c0  vsrl.p vr4, r12, vr1
000960  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
000964  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000968  eaf126c0  vsrl.p vr3, r13, vr2
00096c  6af216c0  vsrl.p vr4, r13, vr1
000970  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000974  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000978  ea7128c0  vsrl.p vr3, r16, vr2
00097c  6a7218c0  vsrl.p vr4, r16, vr1
000980  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000984  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000988  eaf128c0  vsrl.p vr3, r17, vr2
00098c  6af218c0  vsrl.p vr4, r17, vr1
000990  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000994  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000998  fa140140  vextracti.f r9, 0(vr2)
00099c  7a990040  vextracti.f r18, 0(vr1)
0009a0  8be19110  add.f.rn r3, r3, r9
0009a4  0b612111  add.f.rn r2, r2, r18
0009a8  b7257500  beq r10, r7, 360
0009ac  1f0c0500  addli r24, r10, 0
0009b0  3730c700  beq r14, r12, 12
0009b4  172bb500  xor r22, r10, r11
0009b8  0b9c6311  add.s r24, r7, r22
0009bc  0b1bec20  mul.s r22, r24, r14
0009c0  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0009c4  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0009c8  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0009cc  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0009d0  0b9b6719  sub.s r22, r15, r22
0009d4  0b1beb40  min.s r22, r22, r14
0009d8  bf5d8bfe  blt.s r22, r8, -140
0009dc  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0009e0  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0009e4  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0009e8  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0009ec  9f0b0000  addli r23, zero, 0
0009f0  0b1c8321  mul.s r24, r6, r24
0009f4  9f0c8fd7  addli r25, r30, -5184
0009f8  1f8d0900  addli r26, r19, 0
0009fc  8b1d8d11  add.s r27, r26, r24
000a00  9f848b00  addli r9, r23, 64
000a04  ca820d02  vloads.mz vr5{mr1}, 0(r27)
000a08  1f8e8d00  addli r28, r27, 64
000a0c  4a030e02  vloads.mz vr6{mr1}, 0(r28)
000a10  0b9e8c11  add.s r28, r25, r24
000a14  c2030e02  vload.mz vr7{mr1}, 0(r28)
000a18  1f098e00  addli r18, r28, 64
000a1c  42040902  vload.mz vr8{mr1}, 0(r18)
000a20  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
000a24  92320002  vadd.s.mz vr5{mr1}, zero, vr0
000a28  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
000a2c  06b40300  vfp162float_l.rn vr8, vr7
000a30  86f30300  vfp162float_h.rn vr7, vr7
000a34  86340300  vfp162float_l.rn vr9, vr6
000a38  06730300  vfp162float_h.rn vr6, vr6
000a3c  86120400  vfloat2fp16_l.rn vr5, vr8
000a40  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
000a44  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
000a48  12340002  vadd.s.mz vr8{mr1}, zero, vr0
000a4c  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
000a50  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
000a54  06940400  vfloat2fp16_l.rn vr8, vr9
000a58  86d20300  vfloat2fp16_h.rn vr5, vr7
000a5c  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
000a60  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
000a64  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
000a68  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000a6c  06540300  vfloat2fp16_h.rn vr8, vr6
000a70  46005e02  vstore.mz vr5{mr1}, 0(r28)
000a74  46008902  vstore.mz vr8{mr1}, 0(r18)
000a78  4b5b9bfe  ble.s r22, r9, -300
000a7c  9f840d01  addli r9, r27, 128
000a80  1f090e01  addli r18, r28, 128
000a84  9f8b0b01  addli r23, r23, 128
000a88  1f0d0d02  addli r26, r26, 256
000a8c  9f8c0c02  addli r25, r25, 256
000a90  ca820402  vloads.mz vr5{mr1}, 0(r9)
000a94  9f848d01  addli r9, r27, 192
000a98  c2030902  vload.mz vr7{mr1}, 0(r18)
000a9c  4a830402  vloads.mz vr6{mr1}, 0(r9)
000aa0  9f048e01  addli r9, r28, 192
000aa4  42840402  vload.mz vr8{mr1}, 0(r9)
000aa8  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
000aac  92320002  vadd.s.mz vr5{mr1}, zero, vr0
000ab0  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
000ab4  12330002  vadd.s.mz vr6{mr1}, zero, vr0
000ab8  86b40300  vfp162float_l.rn vr9, vr7
000abc  86f30300  vfp162float_h.rn vr7, vr7
000ac0  86920400  vfloat2fp16_l.rn vr5, vr9
000ac4  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
000ac8  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
000acc  86340400  vfp162float_l.rn vr9, vr8
000ad0  06740400  vfp162float_h.rn vr8, vr8
000ad4  06930400  vfloat2fp16_l.rn vr6, vr9
000ad8  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
000adc  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
000ae0  86d20300  vfloat2fp16_h.rn vr5, vr7
000ae4  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
000ae8  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
000aec  06530400  vfloat2fp16_h.rn vr6, vr8
000af0  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
000af4  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
000af8  46005902  vstore.mz vr5{mr1}, 0(r18)
000afc  46806402  vstore.mz vr6{mr1}, 0(r9)
000b00  bffb6bff  blt.s r23, r22, -260
000b04  5bc9ffff  j -440
000b08  1f010000  addli r2, zero, 0
000b0c  9f010000  addli r3, zero, 0
000b10  00a00000  mfence { lm }
000b14  3f8787fe  blt.s r15, r8, -576
000b18  8f815118  div.f.rn r3, r3, r5
000b1c  0f015118  div.f.rn r2, r2, r5
000b20  e3043f00  loadli.w r9,  24(r30)
000b24  1f0b0000  addli r22, zero, 0
000b28  0be53120  mul.f.rn r10, r3, r3
000b2c  8be10158  neg.f r3, r3
000b30  0b61a118  sub.f.rn r2, r2, r10
000b34  1f058fd7  addli r10, r30, -5184
000b38  0b619110  add.f.rn r2, r2, r9
000b3c  ab04803f  lui r9, 260096
000b40  0f010108  sqrt.f.rn r2, r2
000b44  0f812418  div.f.rn r2, r9, r2
000b48  c2000502  vload.mz vr1{mr1}, 0(r10)
000b4c  9f0b4b00  addli r23, r22, 32
000b50  06b10000  vfp162float_l.rn vr2, vr1
000b54  86f00000  vfp162float_h.rn vr1, vr1
000b58  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
000b5c  92911102  vadd.f.mz.rn vr3{mr1}, r3, vr1
000b60  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000b64  12321002  vadd.s.mz vr4{mr1}, zero, vr1
000b68  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
000b6c  8a113102  vmul.f.mz.rn vr3{mr1}, r2, vr3
000b70  06120100  vfloat2fp16_l.rn vr4, vr2
000b74  06d20100  vfloat2fp16_h.rn vr4, vr3
000b78  46004502  vstore.mz vr4{mr1}, 0(r10)
000b7c  4be577ff  ble.s r15, r23, -680
000b80  9f0b8500  addli r23, r10, 64
000b84  1f0b8b00  addli r22, r22, 64
000b88  1f050501  addli r10, r10, 128
000b8c  42810b02  vload.mz vr2{mr1}, 0(r23)
000b90  86310100  vfp162float_l.rn vr3, vr2
000b94  06710100  vfp162float_h.rn vr2, vr2
000b98  92913102  vadd.f.mz.rn vr3{mr1}, r3, vr3
000b9c  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
000ba0  8a113102  vmul.f.mz.rn vr3{mr1}, r2, vr3
000ba4  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
000ba8  86900100  vfloat2fp16_l.rn vr1, vr3
000bac  86500100  vfloat2fp16_h.rn vr1, vr2
000bb0  46801b02  vstore.mz vr1{mr1}, 0(r23)
000bb4  3f5efbfe  blt.s r22, r15, -108
000bb8  dba3ffff  j -740
000bbc  e3002f00  loadli.w r1,  16(r30)
000bc0  1f010010  addli r2, zero, 2048
000bc4  bb9c2002  bneq r1, r2, 1828
000bc8  003d0002  core_id r26
000bcc  3b700d00  bneq r26, zero, 28
000bd0  9f000040  addli r1, zero, 8192
000bd4  2b0100f0  lui r2, 983040
000bd8  97902000  or r1, r1, r2
000bdc  2b110100  lui r2, 17
000be0  1f010108  addli r2, r2, 1024
000be4  ff002200  l_gm2sm r1, r2, 0(r[5:6])
000be8  abf00000  lui r1, 15
000bec  00200300  mfence { sm, gm }
000bf0  9b0d1d00  andi r27, r26, 1
000bf4  9f020006  addli r5, zero, 768
000bf8  9b90f0ff  ori r1, r1, 4095
000bfc  80a10004  csr_set csr3, r1
000c00  9f000006  addli r1, zero, 768
000c04  00d00100  sync_group
000c08  37a00d00  beq r27, zero, 8
000c0c  9f02000a  addli r5, zero, 1280
000c10  63411f00  loadli.w r2,  12(r30)
000c14  9f110000  addli r3, zero, 1
000c18  3f703110  blt.s r2, r3, 8220
000c1c  0b921d20  mul.s r4, r27, r1
000c20  abf0ffff  lui r1, 1048575
000c24  2b1a0100  lui r20, 17
000c28  2b3c0100  lui r24, 19
000c2c  2b380100  lui r16, 19
000c30  00510102  load_param_i r2, 2
000c34  9f030000  addli r7, zero, 0
000c38  1b471d00  srli r14, r26, 1
000c3c  9bb72200  slli r15, r5, 2
000c40  1f2b0000  addli r22, zero, 2
000c44  9f088fd7  addli r17, r30, -5184
000c48  9f0a0005  addli r21, zero, 640
000c4c  9f0b0001  addli r23, zero, 128
000c50  9f058000  addli r11, zero, 64
000c54  1f064000  addli r12, zero, 32
000c58  1f0e0003  addli r28, zero, 384
000c5c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000c60  9b9000f8  ori r1, r1, 3968
000c64  9b441100  srli r9, r2, 1
000c68  1f010fd7  addli r2, r30, -5248
000c6c  1f0a0a08  addli r20, r20, 1024
000c70  1f0c0c08  addli r24, r24, 1024
000c74  1f08080c  addli r16, r16, 1536
000c78  67041fd6  storeli.w r1, -5312(r30)
000c7c  abf00000  lui r1, 15
000c80  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000c84  9b9cf0ff  ori r25, r1, 4095
000c88  db030000  j 28
000c8c  00a00300  mfence { lm, sm, gm }
000c90  80a10c04  csr_set csr3, r25
000c94  00d00100  sync_group
000c98  8b939310  add.s r7, r7, r9
000c9c  3fa0d300  blt.s r7, r13, 8
000ca0  5b6f0300  j 7032
000ca4  8b90e310  add.s r1, r7, r14
000ca8  cb9f16fe  ble.s r13, r1, -28
000cac  63011f00  loadli.w r2,  8(r30)
000cb0  1f037fd6  addli r6, r30, -5320
000cb4  8b902010  add.s r1, r1, r2
000cb8  9bb0b000  slli r1, r1, 11
000cbc  97904000  or r1, r1, r4
000cc0  b3900028  sext_int2long r[2:3], r1
000cc4  17b96003  sll.d r[19:20], r[2:3], r22
000cc8  6b510300  load.d r[3:4], 0(r6)
000ccc  ab0000f0  lui r1, 983040
000cd0  97901700  or r1, r15, r1
000cd4  0b212111  add.ul r[3:4], r[3:4], r[19:20]
000cd8  ff201101  l_gm2lm r1, r17, 0(r[3:4])
000cdc  00a00200  mfence { lm, gm }
000ce0  3ba60d00  bneq r27, zero, 392
000ce4  9f010fd7  addli r3, r30, -5248
000ce8  63018fd6  loadli.w r2,  -5312(r30)
000cec  9f000000  addli r1, zero, 0
000cf0  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
000cf4  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000cf8  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000cfc  12323002  vadd.s.mz vr4{mr1}, zero, vr3
000d00  0b954011  add.s r10, r1, r20
000d04  8b911810  add.s r3, r17, r1
000d08  1f010101  addli r2, r2, 128
000d0c  9f800004  addli r1, r1, 512
000d10  1f030501  addli r6, r10, 128
000d14  4a100502  vloads_mask16.mz vr0{mr1}, 0(r10)
000d18  1f048500  addli r8, r10, 64
000d1c  42940102  vload_mask16.mz vr8{mr1}, 0(r3)
000d20  9f868101  addli r13, r3, 192
000d24  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
000d28  1f038501  addli r6, r10, 192
000d2c  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
000d30  1f848100  addli r8, r3, 64
000d34  c2950602  vload_mask16.mz vr11{mr1}, 0(r13)
000d38  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
000d3c  1f830101  addli r6, r3, 128
000d40  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
000d44  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
000d48  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
000d4c  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
000d50  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
000d54  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
000d58  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000d5c  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
000d60  46108302  vstore_mask16.mz vr8{mr1}, 0(r6)
000d64  1f030502  addli r6, r10, 256
000d68  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
000d6c  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
000d70  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
000d74  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
000d78  1f840103  addli r8, r3, 384
000d7c  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
000d80  1f038502  addli r6, r10, 320
000d84  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
000d88  9f860102  addli r13, r3, 256
000d8c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000d90  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
000d94  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000d98  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
000d9c  1f030503  addli r6, r10, 384
000da0  c2930602  vload_mask16.mz vr7{mr1}, 0(r13)
000da4  1f058503  addli r10, r10, 448
000da8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000dac  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
000db0  1f838102  addli r6, r3, 320
000db4  4a150502  vloads_mask16.mz vr10{mr1}, 0(r10)
000db8  9f818103  addli r3, r3, 448
000dbc  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
000dc0  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
000dc4  c2130402  vload_mask16.mz vr7{mr1}, 0(r8)
000dc8  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
000dcc  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
000dd0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000dd4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
000dd8  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
000ddc  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
000de0  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
000de4  13035105  setlt.u r6, r2, r21
000de8  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
000dec  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000df0  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000df4  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
000df8  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
000dfc  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
000e00  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
000e04  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
000e08  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000e0c  bb5b03fe  bneq r6, zero, -268
000e10  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
000e14  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000e18  9f000002  addli r1, zero, 256
000e1c  6af100c0  vsrl.p vr2, r1, vr0
000e20  eaf110c0  vsrl.p vr3, r1, vr1
000e24  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000e28  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000e2c  6af10bc0  vsrl.p vr2, r23, vr0
000e30  eaf11bc0  vsrl.p vr3, r23, vr1
000e34  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000e38  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000e3c  6af105c0  vsrl.p vr2, r11, vr0
000e40  eaf115c0  vsrl.p vr3, r11, vr1
000e44  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000e48  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000e4c  6a7106c0  vsrl.p vr2, r12, vr0
000e50  ea7116c0  vsrl.p vr3, r12, vr1
000e54  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000e58  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000e5c  fa110040  vextracti.f r3, 0(vr0)
000e60  fa900040  vextracti.f r1, 0(vr1)
000e64  5b650000  j 808
000e68  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000e6c  2bf1ffff  lui r2, 1048575
000e70  1f8b0d00  addli r22, r27, 0
000e74  9f000000  addli r1, zero, 0
000e78  12311002  vadd.s.mz vr2{mr1}, zero, vr1
000e7c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
000e80  92311002  vadd.s.mz vr3{mr1}, zero, vr1
000e84  1b1101f8  ori r2, r2, 3968
000e88  0b151a10  add.s r10, r20, r1
000e8c  8b911810  add.s r3, r17, r1
000e90  1f010101  addli r2, r2, 128
000e94  9f800004  addli r1, r1, 512
000e98  1f030531  addli r6, r10, 6272
000e9c  9f060530  addli r13, r10, 6144
000ea0  1f048531  addli r8, r10, 6336
000ea4  9f8d0118  addli r27, r3, 3072
000ea8  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
000eac  ca920602  vloads_mask16.mz vr5{mr1}, 0(r13)
000eb0  9f068530  addli r13, r10, 6208
000eb4  ca140402  vloads_mask16.mz vr9{mr1}, 0(r8)
000eb8  1f840119  addli r8, r3, 3200
000ebc  1f838118  addli r6, r3, 3136
000ec0  42930d02  vload_mask16.mz vr6{mr1}, 0(r27)
000ec4  4a940602  vloads_mask16.mz vr8{mr1}, 0(r13)
000ec8  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
000ecc  9f868119  addli r13, r3, 3264
000ed0  c2150302  vload_mask16.mz vr11{mr1}, 0(r6)
000ed4  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
000ed8  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
000edc  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
000ee0  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
000ee4  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
000ee8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000eec  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
000ef0  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
000ef4  1f040532  addli r8, r10, 6400
000ef8  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
000efc  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
000f00  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000f04  46906d02  vstore_mask16.mz vr6{mr1}, 0(r27)
000f08  9f86011a  addli r13, r3, 3328
000f0c  c2930602  vload_mask16.mz vr7{mr1}, 0(r13)
000f10  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
000f14  1f83011b  addli r6, r3, 3456
000f18  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
000f1c  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
000f20  4a100402  vloads_mask16.mz vr0{mr1}, 0(r8)
000f24  1f048532  addli r8, r10, 6464
000f28  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000f2c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000f30  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
000f34  1f040533  addli r8, r10, 6528
000f38  1f058533  addli r10, r10, 6592
000f3c  4a140402  vloads_mask16.mz vr8{mr1}, 0(r8)
000f40  1f84811a  addli r8, r3, 3392
000f44  4a150502  vloads_mask16.mz vr10{mr1}, 0(r10)
000f48  9f81811b  addli r3, r3, 3520
000f4c  c2140402  vload_mask16.mz vr9{mr1}, 0(r8)
000f50  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
000f54  c2130302  vload_mask16.mz vr7{mr1}, 0(r6)
000f58  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
000f5c  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
000f60  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000f64  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
000f68  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
000f6c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
000f70  46106402  vstore_mask16.mz vr6{mr1}, 0(r8)
000f74  1304c105  setlt.u r8, r2, r28
000f78  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
000f7c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000f80  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000f84  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
000f88  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
000f8c  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
000f90  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
000f94  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
000f98  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000f9c  bb3b04fe  bneq r8, zero, -276
000fa0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000fa4  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
000fa8  9f000002  addli r1, zero, 256
000fac  2bf3ffff  lui r6, 1048575
000fb0  9f010000  addli r3, zero, 0
000fb4  1b1503f8  ori r10, r6, 3968
000fb8  eaf110c0  vsrl.p vr3, r1, vr1
000fbc  6af100c0  vsrl.p vr2, r1, vr0
000fc0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000fc4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000fc8  eaf11bc0  vsrl.p vr3, r23, vr1
000fcc  6af10bc0  vsrl.p vr2, r23, vr0
000fd0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000fd4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000fd8  eaf115c0  vsrl.p vr3, r11, vr1
000fdc  6af105c0  vsrl.p vr2, r11, vr0
000fe0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000fe4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000fe8  ea7116c0  vsrl.p vr3, r12, vr1
000fec  6a7106c0  vsrl.p vr2, r12, vr0
000ff0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000ff4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000ff8  7a910040  vextracti.f r2, 0(vr1)
000ffc  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001000  fa100040  vextracti.f r1, 0(vr0)
001004  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001008  12321002  vadd.s.mz vr4{mr1}, zero, vr1
00100c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001010  8b1d3a10  add.s r27, r20, r3
001014  8b963810  add.s r13, r17, r3
001018  1f050501  addli r10, r10, 128
00101c  9f810104  addli r3, r3, 512
001020  1f830d18  addli r6, r27, 3072
001024  1f840d19  addli r8, r27, 3200
001028  42940602  vload_mask16.mz vr8{mr1}, 0(r13)
00102c  1f8d8601  addli r26, r13, 192
001030  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
001034  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
001038  1f838d18  addli r6, r27, 3136
00103c  1f848d19  addli r8, r27, 3264
001040  c2150d02  vload_mask16.mz vr11{mr1}, 0(r26)
001044  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
001048  1f830601  addli r6, r13, 128
00104c  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
001050  1f848600  addli r8, r13, 64
001054  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
001058  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
00105c  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
001060  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
001064  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
001068  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
00106c  46108302  vstore_mask16.mz vr8{mr1}, 0(r6)
001070  1f830d1a  addli r6, r27, 3328
001074  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
001078  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00107c  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
001080  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
001084  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
001088  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
00108c  1f838d1a  addli r6, r27, 3392
001090  46106d02  vstore_mask16.mz vr6{mr1}, 0(r26)
001094  1f8d0602  addli r26, r13, 256
001098  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
00109c  1f840603  addli r8, r13, 384
0010a0  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0010a4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0010a8  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
0010ac  1f830d1b  addli r6, r27, 3456
0010b0  c2130d02  vload_mask16.mz vr7{mr1}, 0(r26)
0010b4  9f8d8d1b  addli r27, r27, 3520
0010b8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0010bc  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0010c0  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
0010c4  1f838602  addli r6, r13, 320
0010c8  4a950d02  vloads_mask16.mz vr10{mr1}, 0(r27)
0010cc  9f868603  addli r13, r13, 448
0010d0  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
0010d4  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0010d8  c2130402  vload_mask16.mz vr7{mr1}, 0(r8)
0010dc  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0010e0  c2940602  vload_mask16.mz vr9{mr1}, 0(r13)
0010e4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0010e8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0010ec  46100d02  vstore_mask16.mz vr0{mr1}, 0(r26)
0010f0  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0010f4  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
0010f8  13035505  setlt.u r6, r10, r21
0010fc  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
001100  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001104  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
001108  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00110c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
001110  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
001114  46907602  vstore_mask16.mz vr7{mr1}, 0(r13)
001118  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
00111c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001120  bb4b03fe  bneq r6, zero, -272
001124  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
001128  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00112c  9f010002  addli r3, zero, 256
001130  9f0d0b00  addli r27, r22, 0
001134  003d0002  core_id r26
001138  1f2b0000  addli r22, zero, 2
00113c  6af101c0  vsrl.p vr2, r3, vr0
001140  eaf111c0  vsrl.p vr3, r3, vr1
001144  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001148  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00114c  6af10bc0  vsrl.p vr2, r23, vr0
001150  eaf11bc0  vsrl.p vr3, r23, vr1
001154  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001158  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00115c  6af105c0  vsrl.p vr2, r11, vr0
001160  eaf115c0  vsrl.p vr3, r11, vr1
001164  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001168  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00116c  6a7106c0  vsrl.p vr2, r12, vr0
001170  ea7116c0  vsrl.p vr3, r12, vr1
001174  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001178  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00117c  fa110040  vextracti.f r3, 0(vr0)
001180  7a930040  vextracti.f r6, 0(vr1)
001184  8be13010  add.f.rn r3, r1, r3
001188  8b606110  add.f.rn r1, r2, r6
00118c  0b819330  div.u r2, r7, r9
001190  1f050000  addli r10, zero, 0
001194  1b316100  slli r2, r2, 6
001198  1b010104  andi r2, r2, 64
00119c  1711a101  or r2, r2, r26
0011a0  1b332100  slli r6, r2, 2
0011a4  1b01e107  andi r2, r2, 126
0011a8  0b148311  add.s r8, r6, r24
0011ac  1b312100  slli r2, r2, 2
0011b0  73603400  stores.w r3, 0(r8)
0011b4  8b110311  add.s r3, r6, r16
0011b8  1b134300  ori r6, r6, 4
0011bc  73e01100  stores.w r1, 0(r3)
0011c0  8b108311  add.s r1, r6, r24
0011c4  8b118111  add.s r3, r2, r24
0011c8  0b130311  add.s r6, r6, r16
0011cc  0b110111  add.s r2, r2, r16
0011d0  00a00300  mfence { lm, sm, gm }
0011d4  80a10c04  csr_set csr3, r25
0011d8  00d00100  sync_group
0011dc  efc00000  loads.w r1, 0(r1)
0011e0  efc10100  loads.w r3, 0(r3)
0011e4  6f430300  loads.w r6, 0(r6)
0011e8  6f410100  loads.w r2, 0(r2)
0011ec  8be03010  add.f.rn r1, r1, r3
0011f0  0b612310  add.f.rn r2, r6, r2
0011f4  2b03003a  lui r6, 237568
0011f8  8be16020  mul.f.rn r3, r1, r6
0011fc  8b606120  mul.f.rn r1, r2, r6
001200  0be13120  mul.f.rn r2, r3, r3
001204  8be02018  sub.f.rn r1, r1, r2
001208  63013f00  loadli.w r2,  24(r30)
00120c  8be02010  add.f.rn r1, r1, r2
001210  2b01803f  lui r2, 260096
001214  8f800008  sqrt.f.rn r1, r1
001218  8f001118  div.f.rn r1, r2, r1
00121c  0be10158  neg.f r2, r3
001220  9f018fd7  addli r3, r30, -5184
001224  1f838100  addli r6, r3, 64
001228  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
00122c  1f044500  addli r8, r10, 32
001230  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
001234  13848206  setle.u r8, r5, r8
001238  12100102  vadd.f.mz.rn vr0{mr1}, r2, vr0
00123c  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
001240  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
001244  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
001248  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
00124c  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
001250  bb700400  bneq r8, zero, 60
001254  1f830101  addli r6, r3, 128
001258  1f848101  addli r8, r3, 192
00125c  1f058500  addli r10, r10, 64
001260  9f810102  addli r3, r3, 256
001264  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
001268  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
00126c  93065504  setlt.u r13, r10, r5
001270  12100102  vadd.f.mz.rn vr0{mr1}, r2, vr0
001274  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
001278  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
00127c  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
001280  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
001284  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
001288  3bfe06fe  bneq r13, zero, -100
00128c  6b510f00  load.d r[3:4], 0(r30)
001290  ab0000f0  lui r1, 983040
001294  00a00000  mfence { lm }
001298  97901700  or r1, r15, r1
00129c  0b212111  add.ul r[3:4], r[3:4], r[19:20]
0012a0  ff301101  s_lm2gm r1, r17, 0(r[3:4])
0012a4  00a00200  mfence { lm, gm }
0012a8  e3461f00  loadli.w r13,  12(r30)
0012ac  db3dffff  j -1556
0012b0  80300002  core_id r1
0012b4  1f210000  addli r2, zero, 2
0012b8  b7d5200a  beq r1, r2, 5492
0012bc  1f110000  addli r2, zero, 1
0012c0  37f72006  beq r1, r2, 3548
0012c4  3b96000a  bneq r1, zero, 5508
0012c8  63012f00  loadli.w r2,  16(r30)
0012cc  ab0100f0  lui r3, 983040
0012d0  1b312100  slli r2, r2, 2
0012d4  17113100  or r2, r2, r3
0012d8  abe10000  lui r3, 14
0012dc  9f810108  addli r3, r3, 1024
0012e0  7f013200  l_gm2sm r2, r3, 0(r[5:6])
0012e4  dbac0200  j 5476
0012e8  80300002  core_id r1
0012ec  bb800000  bneq r1, zero, 32
0012f0  63012f00  loadli.w r2,  16(r30)
0012f4  ab0100f0  lui r3, 983040
0012f8  1b312100  slli r2, r2, 2
0012fc  17113100  or r2, r2, r3
001300  ab410100  lui r3, 20
001304  9f8101f0  addli r3, r3, -2048
001308  7f013200  l_gm2sm r2, r3, 0(r[5:6])
00130c  2bf10000  lui r2, 15
001310  e3411f00  loadli.w r3,  12(r30)
001314  00200300  mfence { sm, gm }
001318  1b11f1ff  ori r2, r2, 4095
00131c  80210104  csr_set csr3, r2
001320  00d00100  sync_group
001324  4bc4110c  ble.s r3, r1, 6416
001328  63012f00  loadli.w r2,  16(r30)
00132c  e3412f00  loadli.w r3,  20(r30)
001330  2b4a0100  lui r20, 20
001334  1f058fd7  addli r10, r30, -5184
001338  9f150000  addli r11, zero, 1
00133c  9f060002  addli r13, zero, 256
001340  1f080001  addli r16, zero, 128
001344  9f088000  addli r17, zero, 64
001348  1f094000  addli r18, zero, 32
00134c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001350  1f0a0af0  addli r20, r20, -2048
001354  0b133110  add.s r6, r2, r3
001358  1b322100  slli r4, r2, 2
00135c  33010108  fix2float.rn r2, r2
001360  67042fd6  storeli.w r2, -5312(r30)
001364  1f71f3ff  addli r2, r6, -1
001368  1bb32100  slli r6, r3, 2
00136c  8b133130  div.s r7, r2, r3
001370  2bf1ffff  lui r2, 1048575
001374  1b16f1ff  ori r12, r2, 4095
001378  1f010fd7  addli r2, r30, -5248
00137c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001380  5b070000  j 56
001384  00a00000  mfence { lm }
001388  6b540f00  load.d r[9:10], 0(r30)
00138c  2b0100f0  lui r2, 983040
001390  1f058fd7  addli r10, r30, -5184
001394  80510102  load_param_i r3, 2
001398  17112200  or r2, r4, r2
00139c  8b901110  add.s r1, r3, r1
0013a0  8b2a5411  add.ul r[22:23], r[9:10], r[22:23]
0013a4  7fb1aa00  s_lm2gm r2, r10, 0(r[22:23])
0013a8  00a00200  mfence { lm, gm }
0013ac  63411f00  loadli.w r2,  12(r30)
0013b0  3fa02000  blt.s r1, r2, 8
0013b4  5b100300  j 6272
0013b8  63011f00  loadli.w r2,  8(r30)
0013bc  9f220000  addli r5, zero, 2
0013c0  0b912010  add.s r2, r1, r2
0013c4  0b11f120  mul.s r2, r2, r15
0013c8  33110128  sext_int2long r[3:4], r2
0013cc  973a5102  sll.d r[22:23], r[3:4], r5
0013d0  9f017fd6  addli r3, r30, -5320
0013d4  2b0100f0  lui r2, 983040
0013d8  6bd40100  load.d r[9:10], 0(r3)
0013dc  17112200  or r2, r4, r2
0013e0  8b2b5411  add.ul r[24:25], r[9:10], r[22:23]
0013e4  7fa1ab00  l_gm2lm r2, r10, 0(r[24:25])
0013e8  00a00200  mfence { lm, gm }
0013ec  bf97b300  blt.s r7, r11, 484
0013f0  9f010000  addli r3, zero, 0
0013f4  1f010000  addli r2, zero, 0
0013f8  1f050000  addli r10, zero, 0
0013fc  db0c0000  j 100
001400  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001404  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001408  1f150500  addli r10, r10, 1
00140c  6af106c0  vsrl.p vr2, r13, vr0
001410  eaf116c0  vsrl.p vr3, r13, vr1
001414  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001418  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00141c  6a7108c0  vsrl.p vr2, r16, vr0
001420  ea7118c0  vsrl.p vr3, r16, vr1
001424  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001428  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00142c  6af108c0  vsrl.p vr2, r17, vr0
001430  eaf118c0  vsrl.p vr3, r17, vr1
001434  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001438  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00143c  6a7109c0  vsrl.p vr2, r18, vr0
001440  ea7119c0  vsrl.p vr3, r18, vr1
001444  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001448  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00144c  fa120040  vextracti.f r5, 0(vr0)
001450  7a940040  vextracti.f r8, 0(vr1)
001454  8be15110  add.f.rn r3, r3, r5
001458  0b618110  add.f.rn r2, r2, r8
00145c  b7757500  beq r10, r7, 380
001460  9f090500  addli r19, r10, 0
001464  3730d700  beq r14, r13, 12
001468  9729c500  xor r19, r10, r12
00146c  8b993311  add.s r19, r7, r19
001470  9f020fd7  addli r5, r30, -5248
001474  8b9be920  mul.s r23, r19, r14
001478  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
00147c  8b9b7719  sub.s r23, r15, r23
001480  8b9beb40  min.s r23, r23, r14
001484  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001488  92311002  vadd.s.mz vr3{mr1}, zero, vr1
00148c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001490  bfcdbbfe  blt.s r23, r11, -144
001494  42920202  vload_mask16.mz vr4{mr1}, 0(r5)
001498  1f0c0000  addli r24, zero, 0
00149c  8b1c3321  mul.s r25, r6, r19
0014a0  1f0d8fd7  addli r26, r30, -5184
0014a4  9f0d0a00  addli r27, r20, 0
0014a8  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0014ac  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0014b0  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0014b4  8b999d11  add.s r19, r27, r25
0014b8  0b1e9d11  add.s r28, r26, r25
0014bc  1f848900  addli r8, r19, 64
0014c0  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
0014c4  9f848901  addli r9, r19, 192
0014c8  c2140e02  vload_mask16.mz vr9{mr1}, 0(r28)
0014cc  9f028e01  addli r5, r28, 192
0014d0  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
0014d4  1f840901  addli r8, r19, 128
0014d8  4a940402  vloads_mask16.mz vr8{mr1}, 0(r9)
0014dc  9f040e01  addli r9, r28, 128
0014e0  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
0014e4  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
0014e8  c2950402  vload_mask16.mz vr11{mr1}, 0(r9)
0014ec  1f048e00  addli r8, r28, 64
0014f0  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
0014f4  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0014f8  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0014fc  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
001500  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
001504  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001508  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00150c  46105e02  vstore_mask16.mz vr5{mr1}, 0(r28)
001510  46106402  vstore_mask16.mz vr6{mr1}, 0(r8)
001514  1f048c00  addli r8, r24, 64
001518  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
00151c  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001520  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001524  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001528  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00152c  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
001530  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
001534  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001538  4bab8bfe  ble.s r23, r8, -312
00153c  1f840902  addli r8, r19, 256
001540  9f848902  addli r9, r19, 320
001544  9f020e02  addli r5, r28, 256
001548  1f0c0c01  addli r24, r24, 128
00154c  9f8d0d04  addli r27, r27, 512
001550  1f0d0d04  addli r26, r26, 512
001554  4a100402  vloads_mask16.mz vr0{mr1}, 0(r8)
001558  1f840903  addli r8, r19, 384
00155c  ca920402  vloads_mask16.mz vr5{mr1}, 0(r9)
001560  42930202  vload_mask16.mz vr6{mr1}, 0(r5)
001564  9f048e02  addli r9, r28, 320
001568  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
00156c  1f848903  addli r8, r19, 448
001570  9f098e03  addli r19, r28, 448
001574  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
001578  4a140402  vloads_mask16.mz vr8{mr1}, 0(r8)
00157c  1f040e03  addli r8, r28, 384
001580  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
001584  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
001588  42930902  vload_mask16.mz vr6{mr1}, 0(r19)
00158c  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001590  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
001594  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001598  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00159c  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
0015a0  46905402  vstore_mask16.mz vr5{mr1}, 0(r9)
0015a4  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0015a8  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0015ac  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0015b0  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
0015b4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0015b8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0015bc  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0015c0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0015c4  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
0015c8  bf3b7cff  blt.s r24, r23, -276
0015cc  dbc6ffff  j -460
0015d0  1f010000  addli r2, zero, 0
0015d4  9f010000  addli r3, zero, 0
0015d8  00a00000  mfence { lm }
0015dc  bfa6b7fe  blt.s r15, r11, -600
0015e0  e3028fd6  loadli.w r5,  -5312(r30)
0015e4  9f090000  addli r19, zero, 0
0015e8  8f815118  div.f.rn r3, r3, r5
0015ec  0f015118  div.f.rn r2, r2, r5
0015f0  e3023f00  loadli.w r5,  24(r30)
0015f4  0be53120  mul.f.rn r10, r3, r3
0015f8  8be10158  neg.f r3, r3
0015fc  0b61a118  sub.f.rn r2, r2, r10
001600  1f058fd7  addli r10, r30, -5184
001604  0b615110  add.f.rn r2, r2, r5
001608  ab02803f  lui r5, 260096
00160c  0f010108  sqrt.f.rn r2, r2
001610  0f812218  div.f.rn r2, r5, r2
001614  9f0b8500  addli r23, r10, 64
001618  c2100502  vload_mask16.mz vr1{mr1}, 0(r10)
00161c  1f8c4900  addli r24, r19, 32
001620  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
001624  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
001628  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
00162c  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
001630  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
001634  46101502  vstore_mask16.mz vr1{mr1}, 0(r10)
001638  46902b02  vstore_mask16.mz vr2{mr1}, 0(r23)
00163c  4ba587ff  ble.s r15, r24, -696
001640  9f0b0501  addli r23, r10, 128
001644  1f0c8501  addli r24, r10, 192
001648  9f898900  addli r19, r19, 64
00164c  1f050502  addli r10, r10, 256
001650  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
001654  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
001658  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
00165c  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
001660  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
001664  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
001668  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
00166c  46102c02  vstore_mask16.mz vr2{mr1}, 0(r24)
001670  bf9ef9fe  blt.s r19, r15, -92
001674  5ba2ffff  j -752
001678  e3002f00  loadli.w r1,  16(r30)
00167c  2b0100f0  lui r2, 983040
001680  9bb01000  slli r1, r1, 1
001684  97902000  or r1, r1, r2
001688  2b110000  lui r2, 1
00168c  1f010100  addli r2, r2, 0
001690  ff002300  l_gm2sm r1, r2, 0(r[7:8])
001694  5b080000  j 64
001698  63012f00  loadli.w r2,  16(r30)
00169c  ab0100f0  lui r3, 983040
0016a0  1b311100  slli r2, r2, 1
0016a4  17113100  or r2, r2, r3
0016a8  ab510000  lui r3, 5
0016ac  9f810100  addli r3, r3, 0
0016b0  7f013300  l_gm2sm r2, r3, 0(r[7:8])
0016b4  5bc30000  j 1560
0016b8  e3002f00  loadli.w r1,  16(r30)
0016bc  2b0100f0  lui r2, 983040
0016c0  9bb01000  slli r1, r1, 1
0016c4  97902000  or r1, r1, r2
0016c8  2b210000  lui r2, 2
0016cc  1f010100  addli r2, r2, 0
0016d0  ff002400  l_gm2sm r1, r2, 0(r[9:10])
0016d4  abf00000  lui r1, 15
0016d8  63411f00  loadli.w r2,  12(r30)
0016dc  00200300  mfence { sm, gm }
0016e0  9b90f0ff  ori r1, r1, 4095
0016e4  80a10004  csr_set csr3, r1
0016e8  00d00100  sync_group
0016ec  4b25b10a  ble.s r2, r11, 5448
0016f0  e3002f00  loadli.w r1,  16(r30)
0016f4  63412f00  loadli.w r2,  20(r30)
0016f8  9f082000  addli r17, zero, 16
0016fc  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001700  1f140000  addli r8, zero, 1
001704  9f048fd7  addli r9, r30, -5184
001708  1f080002  addli r16, zero, 256
00170c  ab09ffff  lui r19, 1048560
001710  ab0a807f  lui r21, 522240
001714  2b0bc07f  lui r22, 523264
001718  9f0b0001  addli r23, zero, 128
00171c  1f0c8000  addli r24, zero, 64
001720  9f0c4000  addli r25, zero, 32
001724  9bb21000  slli r5, r1, 1
001728  8b912010  add.s r3, r1, r2
00172c  b3800008  fix2float.rn r1, r1
001730  1b331100  slli r6, r2, 1
001734  e70b1fd4  storeli.w r1, -5448(r30)
001738  9ff0f1ff  addli r1, r3, -1
00173c  e74b5fd4  storeli.w r5, -5444(r30)
001740  8b932030  div.s r7, r1, r2
001744  abf0ffff  lui r1, 1048575
001748  1b96f0ff  ori r12, r1, 4095
00174c  9f000fd7  addli r1, r30, -5248
001750  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001754  6aa00822  vor.u.mz vr0{mr1}, r17, vr0
001758  9f008fd6  addli r1, r30, -5312
00175c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001760  ab700000  lui r1, 7
001764  1b9af0ff  ori r20, r1, 4095
001768  db080000  j 68
00176c  9f048fd5  addli r9, r30, -5440
001770  00a00000  mfence { lm }
001774  6b510f00  load.d r[3:4], 0(r30)
001778  ab0000f0  lui r1, 983040
00177c  6bd20400  load.d r[5:6], 0(r9)
001780  9f048fd7  addli r9, r30, -5184
001784  0b214110  add.ul r[3:4], r[3:4], r[5:6]
001788  e3427fd5  loadli.w r5,  -5444(r30)
00178c  00520102  load_param_i r4, 2
001790  8b15b210  add.s r11, r4, r11
001794  97901200  or r1, r5, r1
001798  ff309100  s_lm2gm r1, r9, 0(r[3:4])
00179c  00a00200  mfence { lm, gm }
0017a0  e3401f00  loadli.w r1,  12(r30)
0017a4  3fa01500  blt.s r11, r1, 8
0017a8  db910200  j 5260
0017ac  e3001f00  loadli.w r1,  8(r30)
0017b0  1f027fd6  addli r4, r30, -5320
0017b4  8b901510  add.s r1, r11, r1
0017b8  8b90f020  mul.s r1, r1, r15
0017bc  b3900028  sext_int2long r[2:3], r1
0017c0  17bd8002  sll.d r[27:28], r[2:3], r8
0017c4  6b510200  load.d r[3:4], 0(r4)
0017c8  ab0000f0  lui r1, 983040
0017cc  1f028fd5  addli r4, r30, -5440
0017d0  97901200  or r1, r5, r1
0017d4  7330a201  store.d r[27:28], 0(r4)
0017d8  0b21a111  add.ul r[3:4], r[3:4], r[27:28]
0017dc  ff209100  l_gm2lm r1, r9, 0(r[3:4])
0017e0  00a00200  mfence { lm, gm }
0017e4  bfdc8300  blt.s r7, r8, 820
0017e8  9f060000  addli r13, zero, 0
0017ec  9f000000  addli r1, zero, 0
0017f0  1f0e0000  addli r28, zero, 0
0017f4  db0c0000  j 100
0017f8  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
0017fc  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
001800  1f1e0e00  addli r28, r28, 1
001804  6a7108c0  vsrl.p vr2, r16, vr0
001808  ea7118c0  vsrl.p vr3, r16, vr1
00180c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001810  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001814  6af10bc0  vsrl.p vr2, r23, vr0
001818  eaf11bc0  vsrl.p vr3, r23, vr1
00181c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001820  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001824  6a710cc0  vsrl.p vr2, r24, vr0
001828  ea711cc0  vsrl.p vr3, r24, vr1
00182c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001830  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001834  6af10cc0  vsrl.p vr2, r25, vr0
001838  eaf11cc0  vsrl.p vr3, r25, vr1
00183c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001840  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001844  7a110040  vextracti.f r2, 0(vr0)
001848  fa910040  vextracti.f r3, 0(vr1)
00184c  8be62610  add.f.rn r13, r13, r2
001850  8be03010  add.f.rn r1, r1, r3
001854  373b7e00  beq r28, r7, 716
001858  1f010e00  addli r2, r28, 0
00185c  37300701  beq r14, r16, 12
001860  1721ce00  xor r2, r28, r12
001864  0b912310  add.s r2, r7, r2
001868  8b11e120  mul.s r3, r2, r14
00186c  8b913718  sub.s r3, r15, r3
001870  0b95e140  min.s r10, r3, r14
001874  9f010fd7  addli r3, r30, -5248
001878  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
00187c  92322002  vadd.s.mz vr5{mr1}, zero, vr2
001880  12322002  vadd.s.mz vr4{mr1}, zero, vr2
001884  92312002  vadd.s.mz vr3{mr1}, zero, vr2
001888  bf4d85fe  blt.s r10, r8, -144
00188c  1f020fd7  addli r4, r30, -5248
001890  2b090000  lui r18, 0
001894  8b112320  mul.s r3, r6, r2
001898  9f040000  addli r9, zero, 0
00189c  1f018fd7  addli r2, r30, -5184
0018a0  c2120202  vload_mask16.mz vr5{mr1}, 0(r4)
0018a4  1f090900  addli r18, r18, 0
0018a8  12315002  vadd.s.mz vr2{mr1}, zero, vr5
0018ac  92315002  vadd.s.mz vr3{mr1}, zero, vr5
0018b0  12325002  vadd.s.mz vr4{mr1}, zero, vr5
0018b4  0b1d3910  add.s r26, r18, r3
0018b8  0b123110  add.s r4, r2, r3
0018bc  9f028fd6  addli r5, r30, -5312
0018c0  4a030d02  vloads.mz vr6{mr1}, 0(r26)
0018c4  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
0018c8  c2030202  vload.mz vr7{mr1}, 0(r4)
0018cc  9f020fd7  addli r5, r30, -5248
0018d0  9f0d8d00  addli r27, r26, 64
0018d4  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
0018d8  9f828400  addli r5, r9, 64
0018dc  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
0018e0  6ab57902  vand.s.mz vr10{mr1}, r19, vr7
0018e4  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
0018e8  6ab36902  vand.s.mz vr6{mr1}, r19, vr6
0018ec  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
0018f0  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0018f4  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
0018f8  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
0018fc  669503c0  vabs.f vr10, vr7
001900  6a348402  vand.s.mz vr8{mr1}, r8, vr8
001904  ea349402  vand.s.mz vr9{mr1}, r8, vr9
001908  72a1aa42  vlt.u.mz mr2{mr1}, r21, vr10
00190c  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
001910  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
001914  12348a02  vadd.s.mz vr8{mr1}, r20, vr8
001918  92349a02  vadd.s.mz vr9{mr1}, r20, vr9
00191c  eab38902  vand.s.mz vr7{mr1}, r19, vr8
001920  661403c0  vabs.f vr8, vr6
001924  6ab39902  vand.s.mz vr6{mr1}, r19, vr9
001928  ea230b34  vor.u.mh vr7{mr2}, r22, vr0
00192c  72a18a42  vlt.u.mz mr2{mr1}, r21, vr8
001930  6a230b34  vor.u.mh vr6{mr2}, r22, vr0
001934  4a840d02  vloads.mz vr8{mr1}, 0(r27)
001938  9f0d8200  addli r27, r4, 64
00193c  c2840d02  vload.mz vr9{mr1}, 0(r27)
001940  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
001944  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
001948  6ab36902  vand.s.mz vr6{mr1}, r19, vr6
00194c  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
001950  eab49902  vand.s.mz vr9{mr1}, r19, vr9
001954  46007202  vstore.mz vr7{mr1}, 0(r4)
001958  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
00195c  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
001960  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
001964  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
001968  6ab48902  vand.s.mz vr8{mr1}, r19, vr8
00196c  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
001970  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
001974  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
001978  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
00197c  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
001980  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
001984  ea349402  vand.s.mz vr9{mr1}, r8, vr9
001988  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
00198c  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
001990  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
001994  661505c0  vabs.f vr10, vr10
001998  661404c0  vabs.f vr8, vr8
00199c  92349a02  vadd.s.mz vr9{mr1}, r20, vr9
0019a0  9235ba02  vadd.s.mz vr11{mr1}, r20, vr11
0019a4  72a1aa42  vlt.u.mz mr2{mr1}, r21, vr10
0019a8  eab49902  vand.s.mz vr9{mr1}, r19, vr9
0019ac  6ab5b902  vand.s.mz vr10{mr1}, r19, vr11
0019b0  ea240b34  vor.u.mh vr9{mr2}, r22, vr0
0019b4  72a18a42  vlt.u.mz mr2{mr1}, r21, vr8
0019b8  6a250b34  vor.u.mh vr10{mr2}, r22, vr0
0019bc  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
0019c0  eab4a902  vand.s.mz vr9{mr1}, r19, vr10
0019c4  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
0019c8  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
0019cc  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
0019d0  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
0019d4  46808d02  vstore.mz vr8{mr1}, 0(r27)
0019d8  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0019dc  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0019e0  4b6855fe  ble.s r10, r5, -488
0019e4  9f020d01  addli r5, r26, 128
0019e8  9f0d0201  addli r27, r4, 128
0019ec  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
0019f0  1f028201  addli r4, r4, 192
0019f4  9f840401  addli r9, r9, 128
0019f8  1f090902  addli r18, r18, 256
0019fc  1f010102  addli r2, r2, 256
001a00  6aa37822  vor.u.mz vr6{mr1}, r17, vr7
001a04  4a840202  vloads.mz vr8{mr1}, 0(r5)
001a08  c2840d02  vload.mz vr9{mr1}, 0(r27)
001a0c  9f028d01  addli r5, r26, 192
001a10  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
001a14  6ab09902  vand.s.mz vr0{mr1}, r19, vr9
001a18  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
001a1c  6ab48902  vand.s.mz vr8{mr1}, r19, vr8
001a20  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
001a24  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
001a28  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
001a2c  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
001a30  e69504c0  vabs.f vr11, vr9
001a34  6a300402  vand.s.mz vr0{mr1}, r8, vr0
001a38  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
001a3c  72a1ba42  vlt.u.mz mr2{mr1}, r21, vr11
001a40  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
001a44  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
001a48  12300a02  vadd.s.mz vr0{mr1}, r20, vr0
001a4c  1235aa02  vadd.s.mz vr10{mr1}, r20, vr10
001a50  eab40902  vand.s.mz vr9{mr1}, r19, vr0
001a54  661004c0  vabs.f vr0, vr8
001a58  6ab4a902  vand.s.mz vr8{mr1}, r19, vr10
001a5c  ea247b34  vor.u.mh vr9{mr2}, r22, vr7
001a60  72a10a42  vlt.u.mz mr2{mr1}, r21, vr0
001a64  6a247b34  vor.u.mh vr8{mr2}, r22, vr7
001a68  4a800202  vloads.mz vr0{mr1}, 0(r5)
001a6c  42050202  vload.mz vr10{mr1}, 0(r4)
001a70  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
001a74  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
001a78  6ab5a902  vand.s.mz vr10{mr1}, r19, vr10
001a7c  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
001a80  6ab48902  vand.s.mz vr8{mr1}, r19, vr8
001a84  46809d02  vstore.mz vr9{mr1}, 0(r27)
001a88  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
001a8c  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
001a90  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
001a94  6ab00902  vand.s.mz vr0{mr1}, r19, vr0
001a98  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
001a9c  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
001aa0  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
001aa4  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
001aa8  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
001aac  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
001ab0  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
001ab4  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
001ab8  e69000c0  vabs.f vr1, vr1
001abc  661000c0  vabs.f vr0, vr0
001ac0  1235aa02  vadd.s.mz vr10{mr1}, r20, vr10
001ac4  9235ba02  vadd.s.mz vr11{mr1}, r20, vr11
001ac8  72a11a42  vlt.u.mz mr2{mr1}, r21, vr1
001acc  6ab5a902  vand.s.mz vr10{mr1}, r19, vr10
001ad0  eab0b902  vand.s.mz vr1{mr1}, r19, vr11
001ad4  6a257b34  vor.u.mh vr10{mr2}, r22, vr7
001ad8  72a10a42  vlt.u.mz mr2{mr1}, r21, vr0
001adc  ea207b34  vor.u.mh vr1{mr2}, r22, vr7
001ae0  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
001ae4  eab31902  vand.s.mz vr7{mr1}, r19, vr1
001ae8  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
001aec  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
001af0  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
001af4  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
001af8  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
001afc  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
001b00  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
001b04  46000202  vstore.mz vr0{mr1}, 0(r4)
001b08  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001b0c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001b10  bf96a4fe  blt.s r9, r10, -604
001b14  db9cffff  j -796
001b18  9f000000  addli r1, zero, 0
001b1c  9f060000  addli r13, zero, 0
001b20  00a00000  mfence { lm }
001b24  3fa187fe  blt.s r15, r8, -952
001b28  63027fd5  loadli.w r4,  -5448(r30)
001b2c  ab140000  lui r9, 1
001b30  2b250000  lui r10, 2
001b34  1f010000  addli r2, zero, 0
001b38  9f840400  addli r9, r9, 0
001b3c  1f050500  addli r10, r10, 0
001b40  8f814618  div.f.rn r3, r13, r4
001b44  8f804018  div.f.rn r1, r1, r4
001b48  0be23120  mul.f.rn r4, r3, r3
001b4c  8be10158  neg.f r3, r3
001b50  8be04018  sub.f.rn r1, r1, r4
001b54  63023f00  loadli.w r4,  24(r30)
001b58  8be04010  add.f.rn r1, r1, r4
001b5c  2b02803f  lui r4, 260096
001b60  8f800008  sqrt.f.rn r1, r1
001b64  8f001218  div.f.rn r1, r4, r1
001b68  1f028fd7  addli r4, r30, -5184
001b6c  42020202  vload.mz vr4{mr1}, 0(r4)
001b70  ca820402  vloads.mz vr5{mr1}, 0(r9)
001b74  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
001b78  4a030502  vloads.mz vr6{mr1}, 0(r10)
001b7c  9f064100  addli r13, r2, 32
001b80  eaa12822  vor.u.mz vr3{mr1}, r17, vr2
001b84  eeb341a2  vsll.s.mz vr7{mr1}, vr3, vr4
001b88  6ab44902  vand.s.mz vr8{mr1}, r19, vr4
001b8c  92937102  vadd.f.mz.rn vr7{mr1}, r3, vr7
001b90  12948102  vadd.f.mz.rn vr8{mr1}, r3, vr8
001b94  eeb451a2  vsll.s.mz vr9{mr1}, vr3, vr5
001b98  6eb261a2  vsll.s.mz vr4{mr1}, vr3, vr6
001b9c  6ab55902  vand.s.mz vr10{mr1}, r19, vr5
001ba0  eab26902  vand.s.mz vr5{mr1}, r19, vr6
001ba4  8a937002  vmul.f.mz.rn vr7{mr1}, r1, vr7
001ba8  0a938002  vmul.f.mz.rn vr6{mr1}, r1, vr8
001bac  26929302  vmac.f.mz.rn vr4{mr1}, vr7, vr9
001bb0  a612a302  vmac.f.mz.rn vr5{mr1}, vr6, vr10
001bb4  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
001bb8  6a337402  vand.s.mz vr6{mr1}, r8, vr7
001bbc  eeb351c2  vsrl.s.mz vr7{mr1}, vr3, vr5
001bc0  16336202  vadd.s.mz vr6{mr1}, vr4, vr6
001bc4  ea337402  vand.s.mz vr7{mr1}, r8, vr7
001bc8  661202c0  vabs.f vr4, vr4
001bcc  96b37202  vadd.s.mz vr7{mr1}, vr5, vr7
001bd0  12336a02  vadd.s.mz vr6{mr1}, r20, vr6
001bd4  e69202c0  vabs.f vr5, vr5
001bd8  72a14a42  vlt.u.mz mr2{mr1}, r21, vr4
001bdc  6ab36902  vand.s.mz vr6{mr1}, r19, vr6
001be0  92337a02  vadd.s.mz vr7{mr1}, r20, vr7
001be4  6a232b34  vor.u.mh vr6{mr2}, r22, vr2
001be8  6ab27902  vand.s.mz vr4{mr1}, r19, vr7
001bec  72a15a42  vlt.u.mz mr2{mr1}, r21, vr5
001bf0  eeb261c2  vsrl.s.mz vr5{mr1}, vr3, vr6
001bf4  6a222b34  vor.u.mh vr4{mr2}, r22, vr2
001bf8  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
001bfc  46004202  vstore.mz vr4{mr1}, 0(r4)
001c00  cbbdd7fc  ble.s r15, r13, -1172
001c04  9f868400  addli r13, r9, 64
001c08  1f098200  addli r18, r4, 64
001c0c  1f018100  addli r2, r2, 64
001c10  9f840401  addli r9, r9, 128
001c14  1f020201  addli r4, r4, 128
001c18  4a820602  vloads.mz vr4{mr1}, 0(r13)
001c1c  9f068500  addli r13, r10, 64
001c20  c2020902  vload.mz vr5{mr1}, 0(r18)
001c24  1f050501  addli r10, r10, 128
001c28  4a830602  vloads.mz vr6{mr1}, 0(r13)
001c2c  eeb351a2  vsll.s.mz vr7{mr1}, vr3, vr5
001c30  eab25902  vand.s.mz vr5{mr1}, r19, vr5
001c34  92937102  vadd.f.mz.rn vr7{mr1}, r3, vr7
001c38  12945102  vadd.f.mz.rn vr8{mr1}, r3, vr5
001c3c  eeb441a2  vsll.s.mz vr9{mr1}, vr3, vr4
001c40  6ab54902  vand.s.mz vr10{mr1}, r19, vr4
001c44  8a937002  vmul.f.mz.rn vr7{mr1}, r1, vr7
001c48  eeb261a2  vsll.s.mz vr5{mr1}, vr3, vr6
001c4c  6ab26902  vand.s.mz vr4{mr1}, r19, vr6
001c50  0a938002  vmul.f.mz.rn vr6{mr1}, r1, vr8
001c54  a6929302  vmac.f.mz.rn vr5{mr1}, vr7, vr9
001c58  2612a302  vmac.f.mz.rn vr4{mr1}, vr6, vr10
001c5c  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
001c60  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
001c64  6a336402  vand.s.mz vr6{mr1}, r8, vr6
001c68  ea337402  vand.s.mz vr7{mr1}, r8, vr7
001c6c  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
001c70  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
001c74  e69202c0  vabs.f vr5, vr5
001c78  661202c0  vabs.f vr4, vr4
001c7c  12336a02  vadd.s.mz vr6{mr1}, r20, vr6
001c80  92337a02  vadd.s.mz vr7{mr1}, r20, vr7
001c84  72a15a42  vlt.u.mz mr2{mr1}, r21, vr5
001c88  6ab36902  vand.s.mz vr6{mr1}, r19, vr6
001c8c  eab27902  vand.s.mz vr5{mr1}, r19, vr7
001c90  6a232b34  vor.u.mh vr6{mr2}, r22, vr2
001c94  72a14a42  vlt.u.mz mr2{mr1}, r21, vr4
001c98  ea222b34  vor.u.mh vr5{mr2}, r22, vr2
001c9c  6eb161c2  vsrl.s.mz vr2{mr1}, vr3, vr6
001ca0  6eb12222  vor.s.mz vr2{mr1}, vr5, vr2
001ca4  46002902  vstore.mz vr2{mr1}, 0(r18)
001ca8  3f1bf1fe  blt.s r2, r15, -316
001cac  5b58ffff  j -1344
001cb0  63012f00  loadli.w r2,  16(r30)
001cb4  ab0100f0  lui r3, 983040
001cb8  1b311100  slli r2, r2, 1
001cbc  17113100  or r2, r2, r3
001cc0  ab610000  lui r3, 6
001cc4  9f810100  addli r3, r3, 0
001cc8  7f013400  l_gm2sm r2, r3, 0(r[9:10])
001ccc  2bf10000  lui r2, 15
001cd0  e3411f00  loadli.w r3,  12(r30)
001cd4  00200300  mfence { sm, gm }
001cd8  1b11f1ff  ori r2, r2, 4095
001cdc  80210104  csr_set csr3, r2
001ce0  00d00100  sync_group
001ce4  4bcd1106  ble.s r3, r1, 3920
001ce8  63012f00  loadli.w r2,  16(r30)
001cec  e3412f00  loadli.w r3,  20(r30)
001cf0  ab460000  lui r13, 4
001cf4  1f140000  addli r8, zero, 1
001cf8  9f0a8fd7  addli r21, r30, -5184
001cfc  1f060002  addli r12, zero, 256
001d00  1f080001  addli r16, zero, 128
001d04  9f088000  addli r17, zero, 64
001d08  1f094000  addli r18, zero, 32
001d0c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001d10  9f860600  addli r13, r13, 0
001d14  0b133110  add.s r6, r2, r3
001d18  1b321100  slli r4, r2, 1
001d1c  b3020108  fix2float.rn r5, r2
001d20  1f71f3ff  addli r2, r6, -1
001d24  1bb31100  slli r6, r3, 1
001d28  8b133130  div.s r7, r2, r3
001d2c  2bf1ffff  lui r2, 1048575
001d30  9b15f1ff  ori r11, r2, 4095
001d34  5b070000  j 56
001d38  00a00000  mfence { lm }
001d3c  eb540f00  load.d r[10:11], 0(r30)
001d40  2b0100f0  lui r2, 983040
001d44  9f0a8fd7  addli r21, r30, -5184
001d48  80510102  load_param_i r3, 2
001d4c  17112200  or r2, r4, r2
001d50  8b901110  add.s r1, r3, r1
001d54  8ba96411  add.ul r[20:21], r[10:11], r[23:24]
001d58  7fb15901  s_lm2gm r2, r21, 0(r[20:21])
001d5c  00a00200  mfence { lm, gm }
001d60  63411f00  loadli.w r2,  12(r30)
001d64  3fa02000  blt.s r1, r2, 8
001d68  dbd90100  j 3788
001d6c  63011f00  loadli.w r2,  8(r30)
001d70  0b912010  add.s r2, r1, r2
001d74  0b11f120  mul.s r2, r2, r15
001d78  33110128  sext_int2long r[3:4], r2
001d7c  173b8102  sll.d r[23:24], r[3:4], r8
001d80  9f017fd6  addli r3, r30, -5320
001d84  2b0100f0  lui r2, 983040
001d88  ebd40100  load.d r[10:11], 0(r3)
001d8c  17112200  or r2, r4, r2
001d90  8ba96411  add.ul r[20:21], r[10:11], r[23:24]
001d94  7fa15901  l_gm2lm r2, r21, 0(r[20:21])
001d98  00a00200  mfence { lm, gm }
001d9c  3fc78300  blt.s r7, r8, 464
001da0  9f010000  addli r3, zero, 0
001da4  1f010000  addli r2, zero, 0
001da8  1f050000  addli r10, zero, 0
001dac  db0c0000  j 100
001db0  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
001db4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001db8  1f150500  addli r10, r10, 1
001dbc  6a7136c0  vsrl.p vr2, r12, vr3
001dc0  6a7216c0  vsrl.p vr4, r12, vr1
001dc4  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
001dc8  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
001dcc  ea7128c0  vsrl.p vr3, r16, vr2
001dd0  6a7218c0  vsrl.p vr4, r16, vr1
001dd4  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
001dd8  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
001ddc  eaf128c0  vsrl.p vr3, r17, vr2
001de0  6af218c0  vsrl.p vr4, r17, vr1
001de4  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
001de8  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
001dec  ea7129c0  vsrl.p vr3, r18, vr2
001df0  6a7219c0  vsrl.p vr4, r18, vr1
001df4  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
001df8  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
001dfc  fa140140  vextracti.f r9, 0(vr2)
001e00  fa990040  vextracti.f r19, 0(vr1)
001e04  8be19110  add.f.rn r3, r3, r9
001e08  0b613111  add.f.rn r2, r2, r19
001e0c  b7257500  beq r10, r7, 360
001e10  9f090500  addli r19, r10, 0
001e14  3730c700  beq r14, r12, 12
001e18  9729b500  xor r19, r10, r11
001e1c  8b993311  add.s r19, r7, r19
001e20  0b9ae920  mul.s r20, r19, r14
001e24  12320002  vadd.s.mz vr4{mr1}, zero, vr0
001e28  92310002  vadd.s.mz vr3{mr1}, zero, vr0
001e2c  12310002  vadd.s.mz vr2{mr1}, zero, vr0
001e30  92300002  vadd.s.mz vr1{mr1}, zero, vr0
001e34  0b9a4719  sub.s r20, r15, r20
001e38  0b1cea40  min.s r24, r20, r14
001e3c  bf5d8cfe  blt.s r24, r8, -140
001e40  92300002  vadd.s.mz vr1{mr1}, zero, vr0
001e44  12310002  vadd.s.mz vr2{mr1}, zero, vr0
001e48  92310002  vadd.s.mz vr3{mr1}, zero, vr0
001e4c  12320002  vadd.s.mz vr4{mr1}, zero, vr0
001e50  9f0c0000  addli r25, zero, 0
001e54  0b1d3321  mul.s r26, r6, r19
001e58  9f0d8fd7  addli r27, r30, -5184
001e5c  1f8e0600  addli r28, r13, 0
001e60  8b19ae11  add.s r19, r28, r26
001e64  9f848c00  addli r9, r25, 64
001e68  ca820902  vloads.mz vr5{mr1}, 0(r19)
001e6c  1f8a8900  addli r20, r19, 64
001e70  4a030a02  vloads.mz vr6{mr1}, 0(r20)
001e74  0b9aad11  add.s r20, r27, r26
001e78  c2030a02  vload.mz vr7{mr1}, 0(r20)
001e7c  9f0a8a00  addli r21, r20, 64
001e80  42840a02  vload.mz vr8{mr1}, 0(r21)
001e84  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
001e88  92320002  vadd.s.mz vr5{mr1}, zero, vr0
001e8c  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
001e90  06b40300  vfp162float_l.rn vr8, vr7
001e94  86f30300  vfp162float_h.rn vr7, vr7
001e98  86340300  vfp162float_l.rn vr9, vr6
001e9c  06730300  vfp162float_h.rn vr6, vr6
001ea0  86120400  vfloat2fp16_l.rn vr5, vr8
001ea4  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
001ea8  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
001eac  12340002  vadd.s.mz vr8{mr1}, zero, vr0
001eb0  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
001eb4  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
001eb8  06940400  vfloat2fp16_l.rn vr8, vr9
001ebc  86d20300  vfloat2fp16_h.rn vr5, vr7
001ec0  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
001ec4  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
001ec8  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
001ecc  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001ed0  06540300  vfloat2fp16_h.rn vr8, vr6
001ed4  46005a02  vstore.mz vr5{mr1}, 0(r20)
001ed8  46808a02  vstore.mz vr8{mr1}, 0(r21)
001edc  4b5b9cfe  ble.s r24, r9, -300
001ee0  9f840901  addli r9, r19, 128
001ee4  9f8c0c01  addli r25, r25, 128
001ee8  1f0e0e02  addli r28, r28, 256
001eec  9f8d0d02  addli r27, r27, 256
001ef0  ca820402  vloads.mz vr5{mr1}, 0(r9)
001ef4  9f848901  addli r9, r19, 192
001ef8  9f090a01  addli r19, r20, 128
001efc  4a830402  vloads.mz vr6{mr1}, 0(r9)
001f00  c2830902  vload.mz vr7{mr1}, 0(r19)
001f04  9f048a01  addli r9, r20, 192
001f08  42840402  vload.mz vr8{mr1}, 0(r9)
001f0c  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
001f10  92320002  vadd.s.mz vr5{mr1}, zero, vr0
001f14  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
001f18  12330002  vadd.s.mz vr6{mr1}, zero, vr0
001f1c  86b40300  vfp162float_l.rn vr9, vr7
001f20  86f30300  vfp162float_h.rn vr7, vr7
001f24  86920400  vfloat2fp16_l.rn vr5, vr9
001f28  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
001f2c  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
001f30  86340400  vfp162float_l.rn vr9, vr8
001f34  06740400  vfp162float_h.rn vr8, vr8
001f38  06930400  vfloat2fp16_l.rn vr6, vr9
001f3c  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
001f40  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
001f44  86d20300  vfloat2fp16_h.rn vr5, vr7
001f48  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
001f4c  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
001f50  06530400  vfloat2fp16_h.rn vr6, vr8
001f54  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
001f58  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
001f5c  46805902  vstore.mz vr5{mr1}, 0(r19)
001f60  46806402  vstore.mz vr6{mr1}, 0(r9)
001f64  bffb8cff  blt.s r25, r24, -260
001f68  5bc9ffff  j -440
001f6c  1f010000  addli r2, zero, 0
001f70  9f010000  addli r3, zero, 0
001f74  00a00000  mfence { lm }
001f78  3f8787fe  blt.s r15, r8, -576
001f7c  8f815118  div.f.rn r3, r3, r5
001f80  0f015118  div.f.rn r2, r2, r5
001f84  e3043f00  loadli.w r9,  24(r30)
001f88  ab5c0000  lui r25, 5
001f8c  2b6d0000  lui r26, 6
001f90  1f050000  addli r10, zero, 0
001f94  1f0c8fd7  addli r24, r30, -5184
001f98  9f8c0c00  addli r25, r25, 0
001f9c  1f0d0d00  addli r26, r26, 0
001fa0  8be93120  mul.f.rn r19, r3, r3
001fa4  8be10158  neg.f r3, r3
001fa8  0b613119  sub.f.rn r2, r2, r19
001fac  0b619110  add.f.rn r2, r2, r9
001fb0  ab04803f  lui r9, 260096
001fb4  0f010108  sqrt.f.rn r2, r2
001fb8  0f812418  div.f.rn r2, r9, r2
001fbc  c2000c02  vload.mz vr1{mr1}, 0(r24)
001fc0  4a810c02  vloads.mz vr2{mr1}, 0(r25)
001fc4  ca010d02  vloads.mz vr3{mr1}, 0(r26)
001fc8  9f094500  addli r19, r10, 32
001fcc  06b20000  vfp162float_l.rn vr4, vr1
001fd0  86f00000  vfp162float_h.rn vr1, vr1
001fd4  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
001fd8  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
001fdc  86320100  vfp162float_l.rn vr5, vr2
001fe0  06b30100  vfp162float_l.rn vr6, vr3
001fe4  06710100  vfp162float_h.rn vr2, vr2
001fe8  86f10100  vfp162float_h.rn vr3, vr3
001fec  8a131102  vmul.f.mz.rn vr7{mr1}, r2, vr1
001ff0  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
001ff4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001ff8  a6912302  vmac.f.mz.rn vr3{mr1}, vr7, vr2
001ffc  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
002000  12311002  vadd.s.mz vr2{mr1}, zero, vr1
002004  06110300  vfloat2fp16_l.rn vr2, vr6
002008  06d10100  vfloat2fp16_h.rn vr2, vr3
00200c  46002c02  vstore.mz vr2{mr1}, 0(r24)
002010  cba437ff  ble.s r15, r19, -728
002014  9f898c00  addli r19, r25, 64
002018  1f0a8c00  addli r20, r24, 64
00201c  1f058500  addli r10, r10, 64
002020  9f8c0c01  addli r25, r25, 128
002024  1f0c0c01  addli r24, r24, 128
002028  4a810902  vloads.mz vr2{mr1}, 0(r19)
00202c  9f098d00  addli r19, r26, 64
002030  c2010a02  vload.mz vr3{mr1}, 0(r20)
002034  1f0d0d01  addli r26, r26, 128
002038  4a820902  vloads.mz vr4{mr1}, 0(r19)
00203c  86b20100  vfp162float_l.rn vr5, vr3
002040  86f10100  vfp162float_h.rn vr3, vr3
002044  92925102  vadd.f.mz.rn vr5{mr1}, r3, vr5
002048  92913102  vadd.f.mz.rn vr3{mr1}, r3, vr3
00204c  06330100  vfp162float_l.rn vr6, vr2
002050  06710100  vfp162float_h.rn vr2, vr2
002054  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002058  8a113102  vmul.f.mz.rn vr3{mr1}, r2, vr3
00205c  86330200  vfp162float_l.rn vr7, vr4
002060  06720200  vfp162float_h.rn vr4, vr4
002064  a6936202  vmac.f.mz.rn vr7{mr1}, vr5, vr6
002068  26922102  vmac.f.mz.rn vr4{mr1}, vr3, vr2
00206c  86900300  vfloat2fp16_l.rn vr1, vr7
002070  86500200  vfloat2fp16_h.rn vr1, vr4
002074  46001a02  vstore.mz vr1{mr1}, 0(r20)
002078  3f1df5fe  blt.s r10, r15, -188
00207c  db97ffff  j -836
002080  9f000040  addli r1, zero, 8192
002084  2b0100f0  lui r2, 983040
002088  97902000  or r1, r1, r2
00208c  2ba10000  lui r2, 10
002090  1f010100  addli r2, r2, 0
002094  ff002300  l_gm2sm r1, r2, 0(r[7:8])
002098  db070000  j 60
00209c  63012f00  loadli.w r2,  16(r30)
0020a0  ab0100f0  lui r3, 983040
0020a4  1b312100  slli r2, r2, 2
0020a8  17113100  or r2, r2, r3
0020ac  abf10000  lui r3, 15
0020b0  9f810108  addli r3, r3, 1024
0020b4  7f013300  l_gm2sm r2, r3, 0(r[7:8])
0020b8  5bf20000  j 1936
0020bc  9f000040  addli r1, zero, 8192
0020c0  2b0100f0  lui r2, 983040
0020c4  97902000  or r1, r1, r2
0020c8  2bc10000  lui r2, 12
0020cc  1f010100  addli r2, r2, 0
0020d0  ff002400  l_gm2sm r1, r2, 0(r[9:10])
0020d4  abf00000  lui r1, 15
0020d8  00200300  mfence { sm, gm }
0020dc  1b011500  andi r2, r10, 1
0020e0  9f020006  addli r5, zero, 768
0020e4  9b90f0ff  ori r1, r1, 4095
0020e8  80a10004  csr_set csr3, r1
0020ec  9f000006  addli r1, zero, 768
0020f0  00d00100  sync_group
0020f4  67082fd6  storeli.w r2, -5248(r30)
0020f8  37200100  beq r2, zero, 8
0020fc  9f02000a  addli r5, zero, 1280
002100  63411f00  loadli.w r2,  12(r30)
002104  9f110000  addli r3, zero, 1
002108  bf3c3104  blt.s r2, r3, 2860
00210c  e3010fd7  loadli.w r3,  -5248(r30)
002110  00510102  load_param_i r2, 2
002114  2b8b0000  lui r22, 8
002118  2bee0000  lui r28, 14
00211c  2be70000  lui r14, 14
002120  1f030000  addli r6, zero, 0
002124  9b441500  srli r9, r10, 1
002128  9bb72200  slli r15, r5, 2
00212c  9f098fd7  addli r19, r30, -5184
002130  9f0b0005  addli r23, zero, 640
002134  9f0c0001  addli r25, zero, 128
002138  1f0d8000  addli r26, zero, 64
00213c  9f0d4000  addli r27, zero, 32
002140  9f0a0003  addli r21, zero, 384
002144  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002148  1b441100  srli r8, r2, 1
00214c  2ba10000  lui r2, 10
002150  1f0b0b00  addli r22, r22, 0
002154  1f0e0e00  addli r28, r28, 0
002158  1f070704  addli r14, r14, 512
00215c  8b901120  mul.s r1, r3, r1
002160  1f010100  addli r2, r2, 0
002164  67041fd6  storeli.w r1, -5312(r30)
002168  9bb02000  slli r1, r1, 2
00216c  0b982010  add.s r16, r1, r2
002170  2bc10000  lui r2, 12
002174  1f010100  addli r2, r2, 0
002178  8b982010  add.s r17, r1, r2
00217c  abf0ffff  lui r1, 1048575
002180  1f018fd5  addli r2, r30, -5440
002184  9b9000f8  ori r1, r1, 3968
002188  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
00218c  e74b1fd4  storeli.w r1, -5444(r30)
002190  abf00000  lui r1, 15
002194  1b99f0ff  ori r18, r1, 4095
002198  db030000  j 28
00219c  00a00300  mfence { lm, sm, gm }
0021a0  80210904  csr_set csr3, r18
0021a4  00d00100  sync_group
0021a8  0b138310  add.s r6, r6, r8
0021ac  3f20d300  blt.s r6, r13, 8
0021b0  5bcd0000  j 1640
0021b4  8b109310  add.s r1, r6, r9
0021b8  cb9f16fe  ble.s r13, r1, -28
0021bc  63011f00  loadli.w r2,  8(r30)
0021c0  9f210000  addli r3, zero, 2
0021c4  1f027fd6  addli r4, r30, -5320
0021c8  8b902010  add.s r1, r1, r2
0021cc  63018fd6  loadli.w r2,  -5312(r30)
0021d0  9bb0b000  slli r1, r1, 11
0021d4  97902000  or r1, r1, r2
0021d8  b3900028  sext_int2long r[2:3], r1
0021dc  97b53002  sll.d r[12:13], r[2:3], r3
0021e0  6b510200  load.d r[3:4], 0(r4)
0021e4  ab0000f0  lui r1, 983040
0021e8  97901700  or r1, r15, r1
0021ec  0b21b110  add.ul r[3:4], r[3:4], r[12:13]
0021f0  ff203101  l_gm2lm r1, r19, 0(r[3:4])
0021f4  00a00200  mfence { lm, gm }
0021f8  e3000fd7  loadli.w r1,  -5248(r30)
0021fc  3ba60000  bneq r1, zero, 392
002200  9f018fd5  addli r3, r30, -5440
002204  63417fd5  loadli.w r2,  -5444(r30)
002208  9f000000  addli r1, zero, 0
00220c  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
002210  92303002  vadd.s.mz vr1{mr1}, zero, vr3
002214  12313002  vadd.s.mz vr2{mr1}, zero, vr3
002218  12323002  vadd.s.mz vr4{mr1}, zero, vr3
00221c  0b956011  add.s r10, r1, r22
002220  8b911910  add.s r3, r19, r1
002224  1f010101  addli r2, r2, 128
002228  9f800004  addli r1, r1, 512
00222c  1f020501  addli r4, r10, 128
002230  4a100502  vloads_mask16.mz vr0{mr1}, 0(r10)
002234  9f038500  addli r7, r10, 64
002238  42940102  vload_mask16.mz vr8{mr1}, 0(r3)
00223c  9f868101  addli r13, r3, 192
002240  ca120202  vloads_mask16.mz vr5{mr1}, 0(r4)
002244  1f028501  addli r4, r10, 192
002248  4a930302  vloads_mask16.mz vr6{mr1}, 0(r7)
00224c  9f838100  addli r7, r3, 64
002250  c2950602  vload_mask16.mz vr11{mr1}, 0(r13)
002254  ca130202  vloads_mask16.mz vr7{mr1}, 0(r4)
002258  1f820101  addli r4, r3, 128
00225c  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
002260  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
002264  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
002268  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
00226c  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
002270  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
002274  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002278  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
00227c  46108202  vstore_mask16.mz vr8{mr1}, 0(r4)
002280  1f020502  addli r4, r10, 256
002284  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
002288  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
00228c  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
002290  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
002294  9f830103  addli r7, r3, 384
002298  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
00229c  1f028502  addli r4, r10, 320
0022a0  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
0022a4  9f860102  addli r13, r3, 256
0022a8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0022ac  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0022b0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0022b4  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
0022b8  1f020503  addli r4, r10, 384
0022bc  c2930602  vload_mask16.mz vr7{mr1}, 0(r13)
0022c0  1f058503  addli r10, r10, 448
0022c4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0022c8  4a140202  vloads_mask16.mz vr8{mr1}, 0(r4)
0022cc  1f828102  addli r4, r3, 320
0022d0  4a150502  vloads_mask16.mz vr10{mr1}, 0(r10)
0022d4  9f818103  addli r3, r3, 448
0022d8  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
0022dc  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0022e0  c2930302  vload_mask16.mz vr7{mr1}, 0(r7)
0022e4  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0022e8  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
0022ec  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0022f0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0022f4  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
0022f8  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0022fc  46106202  vstore_mask16.mz vr6{mr1}, 0(r4)
002300  13027105  setlt.u r4, r2, r23
002304  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
002308  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00230c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
002310  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
002314  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
002318  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
00231c  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
002320  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
002324  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002328  bb5b02fe  bneq r4, zero, -268
00232c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
002330  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002334  9f000002  addli r1, zero, 256
002338  6af100c0  vsrl.p vr2, r1, vr0
00233c  eaf110c0  vsrl.p vr3, r1, vr1
002340  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002344  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002348  6af10cc0  vsrl.p vr2, r25, vr0
00234c  eaf11cc0  vsrl.p vr3, r25, vr1
002350  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002354  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002358  6a710dc0  vsrl.p vr2, r26, vr0
00235c  ea711dc0  vsrl.p vr3, r26, vr1
002360  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002364  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002368  6af10dc0  vsrl.p vr2, r27, vr0
00236c  eaf11dc0  vsrl.p vr3, r27, vr1
002370  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002374  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002378  fa110040  vextracti.f r3, 0(vr0)
00237c  7a910040  vextracti.f r2, 0(vr1)
002380  5b630000  j 792
002384  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
002388  2bf1ffff  lui r2, 1048575
00238c  9f000000  addli r1, zero, 0
002390  12311002  vadd.s.mz vr2{mr1}, zero, vr1
002394  12321002  vadd.s.mz vr4{mr1}, zero, vr1
002398  92311002  vadd.s.mz vr3{mr1}, zero, vr1
00239c  1b1101f8  ori r2, r2, 3968
0023a0  0b151b10  add.s r10, r22, r1
0023a4  8b911910  add.s r3, r19, r1
0023a8  1f010101  addli r2, r2, 128
0023ac  9f800004  addli r1, r1, 512
0023b0  1f0a0531  addli r20, r10, 6272
0023b4  9f030530  addli r7, r10, 6144
0023b8  1f028531  addli r4, r10, 6336
0023bc  9f860118  addli r13, r3, 3072
0023c0  ca130a02  vloads_mask16.mz vr7{mr1}, 0(r20)
0023c4  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
0023c8  9f038530  addli r7, r10, 6208
0023cc  ca140202  vloads_mask16.mz vr9{mr1}, 0(r4)
0023d0  1f828118  addli r4, r3, 3136
0023d4  1f8a8119  addli r20, r3, 3264
0023d8  42930602  vload_mask16.mz vr6{mr1}, 0(r13)
0023dc  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
0023e0  9f830119  addli r7, r3, 3200
0023e4  42100a02  vload_mask16.mz vr0{mr1}, 0(r20)
0023e8  c2150202  vload_mask16.mz vr11{mr1}, 0(r4)
0023ec  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
0023f0  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0023f4  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
0023f8  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
0023fc  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
002400  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002404  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
002408  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
00240c  9f030532  addli r7, r10, 6400
002410  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
002414  46100a02  vstore_mask16.mz vr0{mr1}, 0(r20)
002418  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00241c  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
002420  9f86011a  addli r13, r3, 3328
002424  c2930602  vload_mask16.mz vr7{mr1}, 0(r13)
002428  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
00242c  1f82011b  addli r4, r3, 3456
002430  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
002434  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
002438  4a900302  vloads_mask16.mz vr0{mr1}, 0(r7)
00243c  9f038532  addli r7, r10, 6464
002440  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002444  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002448  4a930302  vloads_mask16.mz vr6{mr1}, 0(r7)
00244c  9f030533  addli r7, r10, 6528
002450  1f058533  addli r10, r10, 6592
002454  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
002458  9f83811a  addli r7, r3, 3392
00245c  4a150502  vloads_mask16.mz vr10{mr1}, 0(r10)
002460  9f81811b  addli r3, r3, 3520
002464  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
002468  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
00246c  c2130202  vload_mask16.mz vr7{mr1}, 0(r4)
002470  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
002474  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
002478  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00247c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
002480  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
002484  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
002488  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
00248c  93035105  setlt.u r7, r2, r21
002490  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
002494  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002498  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00249c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0024a0  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0024a4  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
0024a8  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
0024ac  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0024b0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0024b4  bbbb03fe  bneq r7, zero, -276
0024b8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0024bc  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0024c0  9f000002  addli r1, zero, 256
0024c4  2bf2ffff  lui r4, 1048575
0024c8  9f010000  addli r3, zero, 0
0024cc  1b1502f8  ori r10, r4, 3968
0024d0  eaf110c0  vsrl.p vr3, r1, vr1
0024d4  6af100c0  vsrl.p vr2, r1, vr0
0024d8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0024dc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024e0  eaf11cc0  vsrl.p vr3, r25, vr1
0024e4  6af10cc0  vsrl.p vr2, r25, vr0
0024e8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0024ec  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024f0  ea711dc0  vsrl.p vr3, r26, vr1
0024f4  6a710dc0  vsrl.p vr2, r26, vr0
0024f8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0024fc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002500  eaf11dc0  vsrl.p vr3, r27, vr1
002504  6af10dc0  vsrl.p vr2, r27, vr0
002508  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00250c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002510  7a910040  vextracti.f r2, 0(vr1)
002514  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
002518  fa100040  vextracti.f r1, 0(vr0)
00251c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
002520  12321002  vadd.s.mz vr4{mr1}, zero, vr1
002524  92311002  vadd.s.mz vr3{mr1}, zero, vr1
002528  0b1a3b10  add.s r20, r22, r3
00252c  8b963910  add.s r13, r19, r3
002530  1f050501  addli r10, r10, 128
002534  9f810104  addli r3, r3, 512
002538  1f020a18  addli r4, r20, 3072
00253c  9f030a19  addli r7, r20, 3200
002540  42940602  vload_mask16.mz vr8{mr1}, 0(r13)
002544  1f8c8601  addli r24, r13, 192
002548  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
00254c  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
002550  1f028a18  addli r4, r20, 3136
002554  9f038a19  addli r7, r20, 3264
002558  c2150c02  vload_mask16.mz vr11{mr1}, 0(r24)
00255c  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
002560  1f820601  addli r4, r13, 128
002564  ca930302  vloads_mask16.mz vr7{mr1}, 0(r7)
002568  9f838600  addli r7, r13, 64
00256c  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
002570  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
002574  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
002578  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
00257c  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
002580  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
002584  46108202  vstore_mask16.mz vr8{mr1}, 0(r4)
002588  1f020a1a  addli r4, r20, 3328
00258c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
002590  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002594  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
002598  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
00259c  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
0025a0  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
0025a4  1f028a1a  addli r4, r20, 3392
0025a8  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
0025ac  1f8c0602  addli r24, r13, 256
0025b0  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
0025b4  9f830603  addli r7, r13, 384
0025b8  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0025bc  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0025c0  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
0025c4  1f020a1b  addli r4, r20, 3456
0025c8  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
0025cc  1f0a8a1b  addli r20, r20, 3520
0025d0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0025d4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0025d8  4a140202  vloads_mask16.mz vr8{mr1}, 0(r4)
0025dc  1f828602  addli r4, r13, 320
0025e0  4a150a02  vloads_mask16.mz vr10{mr1}, 0(r20)
0025e4  9f868603  addli r13, r13, 448
0025e8  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
0025ec  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0025f0  c2930302  vload_mask16.mz vr7{mr1}, 0(r7)
0025f4  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0025f8  c2940602  vload_mask16.mz vr9{mr1}, 0(r13)
0025fc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002600  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
002604  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
002608  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
00260c  46106202  vstore_mask16.mz vr6{mr1}, 0(r4)
002610  13027505  setlt.u r4, r10, r23
002614  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
002618  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00261c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
002620  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
002624  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
002628  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
00262c  46907602  vstore_mask16.mz vr7{mr1}, 0(r13)
002630  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
002634  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002638  bb4b02fe  bneq r4, zero, -272
00263c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
002640  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002644  9f010002  addli r3, zero, 256
002648  6af101c0  vsrl.p vr2, r3, vr0
00264c  eaf111c0  vsrl.p vr3, r3, vr1
002650  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002654  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002658  6af10cc0  vsrl.p vr2, r25, vr0
00265c  eaf11cc0  vsrl.p vr3, r25, vr1
002660  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002664  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002668  6a710dc0  vsrl.p vr2, r26, vr0
00266c  ea711dc0  vsrl.p vr3, r26, vr1
002670  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002674  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002678  6af10dc0  vsrl.p vr2, r27, vr0
00267c  eaf11dc0  vsrl.p vr3, r27, vr1
002680  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002684  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002688  fa110040  vextracti.f r3, 0(vr0)
00268c  7a920040  vextracti.f r4, 0(vr1)
002690  8be13010  add.f.rn r3, r1, r3
002694  0b614110  add.f.rn r2, r2, r4
002698  0b028330  div.u r4, r6, r8
00269c  80330002  core_id r7
0026a0  9f000000  addli r1, zero, 0
0026a4  1b326200  slli r4, r4, 6
0026a8  1b020204  andi r4, r4, 64
0026ac  17127200  or r4, r4, r7
0026b0  9b332200  slli r7, r4, 2
0026b4  0b95c311  add.s r10, r7, r28
0026b8  73603500  stores.w r3, 0(r10)
0026bc  9b01e207  andi r3, r4, 126
0026c0  0b92e310  add.s r4, r7, r14
0026c4  9b934300  ori r7, r7, 4
0026c8  1f050000  addli r10, zero, 0
0026cc  9bb12100  slli r3, r3, 2
0026d0  73602200  stores.w r2, 0(r4)
0026d4  0b91c311  add.s r2, r7, r28
0026d8  8b93e310  add.s r7, r7, r14
0026dc  00a00300  mfence { lm, sm, gm }
0026e0  80210904  csr_set csr3, r18
0026e4  00d00100  sync_group
0026e8  0b92c111  add.s r4, r3, r28
0026ec  6f410100  loads.w r2, 0(r2)
0026f0  8b91e110  add.s r3, r3, r14
0026f4  efc30300  loads.w r7, 0(r7)
0026f8  6f420200  loads.w r4, 0(r4)
0026fc  efc10100  loads.w r3, 0(r3)
002700  0b614110  add.f.rn r2, r2, r4
002704  8be13310  add.f.rn r3, r7, r3
002708  ab03003a  lui r7, 237568
00270c  0b627120  mul.f.rn r4, r2, r7
002710  0be17120  mul.f.rn r2, r3, r7
002714  8b614220  mul.f.rn r3, r4, r4
002718  0b613118  sub.f.rn r2, r2, r3
00271c  e3013f00  loadli.w r3,  24(r30)
002720  0b613110  add.f.rn r2, r2, r3
002724  ab01803f  lui r3, 260096
002728  0f010108  sqrt.f.rn r2, r2
00272c  0f812118  div.f.rn r2, r3, r2
002730  8b610258  neg.f r3, r4
002734  8b161810  add.s r13, r16, r1
002738  0b9a1910  add.s r20, r19, r1
00273c  8b931810  add.s r7, r17, r1
002740  1f8c8600  addli r24, r13, 64
002744  1f028a00  addli r4, r20, 64
002748  42100a02  vload_mask16.mz vr0{mr1}, 0(r20)
00274c  4a910602  vloads_mask16.mz vr2{mr1}, 0(r13)
002750  4a920302  vloads_mask16.mz vr4{mr1}, 0(r7)
002754  ca110c02  vloads_mask16.mz vr3{mr1}, 0(r24)
002758  1f8c8300  addli r24, r7, 64
00275c  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
002760  ca120c02  vloads_mask16.mz vr5{mr1}, 0(r24)
002764  1f0c4500  addli r24, r10, 32
002768  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
00276c  138c8207  setle.u r24, r5, r24
002770  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
002774  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
002778  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
00277c  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
002780  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
002784  46104a02  vstore_mask16.mz vr4{mr1}, 0(r20)
002788  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
00278c  bb110c00  bneq r24, zero, 100
002790  1f8c0601  addli r24, r13, 128
002794  1f020a01  addli r4, r20, 128
002798  1f0a8a01  addli r20, r20, 192
00279c  9f868601  addli r13, r13, 192
0027a0  1f058500  addli r10, r10, 64
0027a4  9f800002  addli r1, r1, 256
0027a8  4a110c02  vloads_mask16.mz vr2{mr1}, 0(r24)
0027ac  1f8c0301  addli r24, r7, 128
0027b0  9f838301  addli r7, r7, 192
0027b4  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
0027b8  c2100a02  vload_mask16.mz vr1{mr1}, 0(r20)
0027bc  4a920602  vloads_mask16.mz vr4{mr1}, 0(r13)
0027c0  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
0027c4  ca110c02  vloads_mask16.mz vr3{mr1}, 0(r24)
0027c8  93035504  setlt.u r7, r10, r5
0027cc  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
0027d0  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
0027d4  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
0027d8  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
0027dc  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
0027e0  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
0027e4  46103202  vstore_mask16.mz vr3{mr1}, 0(r4)
0027e8  46105a02  vstore_mask16.mz vr5{mr1}, 0(r20)
0027ec  3bad03fe  bneq r7, zero, -184
0027f0  6b510f00  load.d r[3:4], 0(r30)
0027f4  ab0000f0  lui r1, 983040
0027f8  00a00000  mfence { lm }
0027fc  97901700  or r1, r15, r1
002800  0b21b110  add.ul r[3:4], r[3:4], r[12:13]
002804  ff303101  s_lm2gm r1, r19, 0(r[3:4])
002808  00a00200  mfence { lm, gm }
00280c  e3461f00  loadli.w r13,  12(r30)
002810  0b138310  add.s r6, r6, r8
002814  bf06d3fc  blt.s r6, r13, -1632
002818  abf00000  lui r1, 15
00281c  9b90f0ff  ori r1, r1, 4095
002820  80a10004  csr_set csr3, r1
002824  00d00100  sync_group
002828  db810000  j 1036
00282c  63012f00  loadli.w r2,  16(r30)
002830  ab0100f0  lui r3, 983040
002834  1b312100  slli r2, r2, 2
002838  17113100  or r2, r2, r3
00283c  ab010100  lui r3, 16
002840  9f810108  addli r3, r3, 1024
002844  7f013400  l_gm2sm r2, r3, 0(r[9:10])
002848  2bf10000  lui r2, 15
00284c  e3411f00  loadli.w r3,  12(r30)
002850  00200300  mfence { sm, gm }
002854  1b11f1ff  ori r2, r2, 4095
002858  80210104  csr_set csr3, r2
00285c  00d00100  sync_group
002860  4bdf1100  ble.s r3, r1, 980
002864  63012f00  loadli.w r2,  16(r30)
002868  e3412f00  loadli.w r3,  20(r30)
00286c  2bea0000  lui r20, 14
002870  abfa0000  lui r21, 15
002874  2b0b0100  lui r22, 16
002878  9f048fd7  addli r9, r30, -5184
00287c  9f150000  addli r11, zero, 1
002880  9f060002  addli r13, zero, 256
002884  9f080001  addli r17, zero, 128
002888  1f098000  addli r18, zero, 64
00288c  9f094000  addli r19, zero, 32
002890  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002894  1f0a0a08  addli r20, r20, 1024
002898  9f8a0a08  addli r21, r21, 1024
00289c  1f0b0b08  addli r22, r22, 1024
0028a0  1b342100  slli r8, r2, 2
0028a4  8b123110  add.s r5, r2, r3
0028a8  33010108  fix2float.rn r2, r2
0028ac  1bb32100  slli r6, r3, 2
0028b0  e74b2fd4  storeli.w r2, -5444(r30)
0028b4  1ff1f2ff  addli r2, r5, -1
0028b8  670c8fd4  storeli.w r8, -5440(r30)
0028bc  8b133130  div.s r7, r2, r3
0028c0  2bf1ffff  lui r2, 1048575
0028c4  1b16f1ff  ori r12, r2, 4095
0028c8  1f010fd7  addli r2, r30, -5248
0028cc  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0028d0  5b080000  j 64
0028d4  9f028fd6  addli r5, r30, -5312
0028d8  00a00000  mfence { lm }
0028dc  eb510f00  load.d r[4:5], 0(r30)
0028e0  2b0100f0  lui r2, 983040
0028e4  63048fd5  loadli.w r8,  -5440(r30)
0028e8  ebdb0200  load.d r[24:25], 0(r5)
0028ec  17112400  or r2, r8, r2
0028f0  8bab7111  add.ul r[24:25], r[4:5], r[24:25]
0028f4  80510102  load_param_i r3, 2
0028f8  7fb19b00  s_lm2gm r2, r9, 0(r[24:25])
0028fc  8b901110  add.s r1, r3, r1
002900  00a00200  mfence { lm, gm }
002904  63411f00  loadli.w r2,  12(r30)
002908  3fa02000  blt.s r1, r2, 8
00290c  5b650000  j 808
002910  63011f00  loadli.w r2,  8(r30)
002914  1f220000  addli r4, zero, 2
002918  9f027fd6  addli r5, r30, -5320
00291c  0b912010  add.s r2, r1, r2
002920  0b11f120  mul.s r2, r2, r15
002924  33110128  sext_int2long r[3:4], r2
002928  973b4102  sll.d r[24:25], r[3:4], r4
00292c  ebd10200  load.d r[4:5], 0(r5)
002930  2b0100f0  lui r2, 983040
002934  9f028fd6  addli r5, r30, -5312
002938  17112400  or r2, r8, r2
00293c  73b07201  store.d r[24:25], 0(r5)
002940  8bac7111  add.ul r[26:27], r[4:5], r[24:25]
002944  7fa19c00  l_gm2lm r2, r9, 0(r[26:27])
002948  00a00200  mfence { lm, gm }
00294c  bf97b300  blt.s r7, r11, 484
002950  9f010000  addli r3, zero, 0
002954  1f010000  addli r2, zero, 0
002958  1f050000  addli r10, zero, 0
00295c  db0c0000  j 100
002960  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
002964  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002968  1f150500  addli r10, r10, 1
00296c  6af106c0  vsrl.p vr2, r13, vr0
002970  eaf116c0  vsrl.p vr3, r13, vr1
002974  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002978  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00297c  6af108c0  vsrl.p vr2, r17, vr0
002980  eaf118c0  vsrl.p vr3, r17, vr1
002984  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002988  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00298c  6a7109c0  vsrl.p vr2, r18, vr0
002990  ea7119c0  vsrl.p vr3, r18, vr1
002994  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002998  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00299c  6af109c0  vsrl.p vr2, r19, vr0
0029a0  eaf119c0  vsrl.p vr3, r19, vr1
0029a4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0029a8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0029ac  7a120040  vextracti.f r4, 0(vr0)
0029b0  fa920040  vextracti.f r5, 0(vr1)
0029b4  8be14110  add.f.rn r3, r3, r4
0029b8  0b615110  add.f.rn r2, r2, r5
0029bc  b7757500  beq r10, r7, 380
0029c0  9f020500  addli r5, r10, 0
0029c4  3730d700  beq r14, r13, 12
0029c8  9722c500  xor r5, r10, r12
0029cc  8b925310  add.s r5, r7, r5
0029d0  1f020fd7  addli r4, r30, -5248
0029d4  0b94e220  mul.s r8, r5, r14
0029d8  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
0029dc  0b948718  sub.s r8, r15, r8
0029e0  8b1ce440  min.s r25, r8, r14
0029e4  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0029e8  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0029ec  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0029f0  bfcdbcfe  blt.s r25, r11, -144
0029f4  42120202  vload_mask16.mz vr4{mr1}, 0(r4)
0029f8  1f0d0000  addli r26, zero, 0
0029fc  8b1d5320  mul.s r27, r6, r5
002a00  1f0e8fd7  addli r28, r30, -5184
002a04  1f080a00  addli r16, r20, 0
002a08  92304002  vadd.s.mz vr1{mr1}, zero, vr4
002a0c  12314002  vadd.s.mz vr2{mr1}, zero, vr4
002a10  92314002  vadd.s.mz vr3{mr1}, zero, vr4
002a14  8b12b811  add.s r5, r16, r27
002a18  0b14be11  add.s r8, r28, r27
002a1c  1f828200  addli r4, r5, 64
002a20  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
002a24  9f8b8201  addli r23, r5, 192
002a28  c2140402  vload_mask16.mz vr9{mr1}, 0(r8)
002a2c  1f0c8401  addli r24, r8, 192
002a30  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
002a34  1f820201  addli r4, r5, 128
002a38  4a940b02  vloads_mask16.mz vr8{mr1}, 0(r23)
002a3c  9f0b0401  addli r23, r8, 128
002a40  42100c02  vload_mask16.mz vr0{mr1}, 0(r24)
002a44  ca130202  vloads_mask16.mz vr7{mr1}, 0(r4)
002a48  c2950b02  vload_mask16.mz vr11{mr1}, 0(r23)
002a4c  1f028400  addli r4, r8, 64
002a50  42150202  vload_mask16.mz vr10{mr1}, 0(r4)
002a54  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
002a58  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
002a5c  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
002a60  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
002a64  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002a68  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002a6c  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
002a70  46106202  vstore_mask16.mz vr6{mr1}, 0(r4)
002a74  1f028d00  addli r4, r26, 64
002a78  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
002a7c  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
002a80  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002a84  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
002a88  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002a8c  46907b02  vstore_mask16.mz vr7{mr1}, 0(r23)
002a90  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
002a94  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
002a98  4bab4cfe  ble.s r25, r4, -312
002a9c  9f8b0202  addli r23, r5, 256
002aa0  1f8c8202  addli r24, r5, 320
002aa4  1f020402  addli r4, r8, 256
002aa8  1f0d0d01  addli r26, r26, 128
002aac  1f080804  addli r16, r16, 512
002ab0  1f0e0e04  addli r28, r28, 512
002ab4  4a900b02  vloads_mask16.mz vr0{mr1}, 0(r23)
002ab8  9f8b0203  addli r23, r5, 384
002abc  9f828203  addli r5, r5, 448
002ac0  ca120c02  vloads_mask16.mz vr5{mr1}, 0(r24)
002ac4  42130202  vload_mask16.mz vr6{mr1}, 0(r4)
002ac8  ca930b02  vloads_mask16.mz vr7{mr1}, 0(r23)
002acc  4a940202  vloads_mask16.mz vr8{mr1}, 0(r5)
002ad0  9f020403  addli r5, r8, 384
002ad4  9f0b8402  addli r23, r8, 320
002ad8  1f048403  addli r8, r8, 448
002adc  42950202  vload_mask16.mz vr10{mr1}, 0(r5)
002ae0  c2940b02  vload_mask16.mz vr9{mr1}, 0(r23)
002ae4  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
002ae8  42130402  vload_mask16.mz vr6{mr1}, 0(r8)
002aec  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
002af0  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
002af4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
002af8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002afc  46100202  vstore_mask16.mz vr0{mr1}, 0(r4)
002b00  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
002b04  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
002b08  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
002b0c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002b10  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
002b14  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002b18  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002b1c  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
002b20  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
002b24  46106402  vstore_mask16.mz vr6{mr1}, 0(r8)
002b28  bf3b9dff  blt.s r26, r25, -276
002b2c  dbc6ffff  j -460
002b30  1f010000  addli r2, zero, 0
002b34  9f010000  addli r3, zero, 0
002b38  00a00000  mfence { lm }
002b3c  3fe6b7fe  blt.s r15, r11, -616
002b40  63427fd5  loadli.w r4,  -5444(r30)
002b44  1f050000  addli r10, zero, 0
002b48  1f080000  addli r16, zero, 0
002b4c  8f814118  div.f.rn r3, r3, r4
002b50  0f014118  div.f.rn r2, r2, r4
002b54  63023f00  loadli.w r4,  24(r30)
002b58  8be23120  mul.f.rn r5, r3, r3
002b5c  8be10158  neg.f r3, r3
002b60  0b615118  sub.f.rn r2, r2, r5
002b64  0b614110  add.f.rn r2, r2, r4
002b68  2b02803f  lui r4, 260096
002b6c  0f010108  sqrt.f.rn r2, r2
002b70  0f012218  div.f.rn r2, r4, r2
002b74  0b145511  add.s r8, r10, r21
002b78  8b92a410  add.s r5, r9, r10
002b7c  9f0c8400  addli r25, r8, 64
002b80  4a110402  vloads_mask16.mz vr2{mr1}, 0(r8)
002b84  0b146511  add.s r8, r10, r22
002b88  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
002b8c  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
002b90  9f8c8200  addli r25, r5, 64
002b94  4a120402  vloads_mask16.mz vr4{mr1}, 0(r8)
002b98  1f048400  addli r8, r8, 64
002b9c  c2920c02  vload_mask16.mz vr5{mr1}, 0(r25)
002ba0  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
002ba4  1f044800  addli r8, r16, 32
002ba8  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
002bac  92925102  vadd.f.mz.rn vr5{mr1}, r3, vr5
002bb0  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
002bb4  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002bb8  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
002bbc  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
002bc0  46904202  vstore_mask16.mz vr4{mr1}, 0(r5)
002bc4  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
002bc8  4bb487fe  ble.s r15, r8, -756
002bcc  0b94aa10  add.s r8, r21, r10
002bd0  8b1cab10  add.s r25, r22, r10
002bd4  1f088800  addli r16, r16, 64
002bd8  1f050502  addli r10, r10, 256
002bdc  1f0d0401  addli r26, r8, 128
002be0  9f8d0c01  addli r27, r25, 128
002be4  1f048401  addli r8, r8, 192
002be8  9f8c8c01  addli r25, r25, 192
002bec  ca100d02  vloads_mask16.mz vr1{mr1}, 0(r26)
002bf0  1f8d0201  addli r26, r5, 128
002bf4  9f828201  addli r5, r5, 192
002bf8  4a910d02  vloads_mask16.mz vr2{mr1}, 0(r27)
002bfc  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
002c00  4a930c02  vloads_mask16.mz vr6{mr1}, 0(r25)
002c04  c2110d02  vload_mask16.mz vr3{mr1}, 0(r26)
002c08  42920202  vload_mask16.mz vr4{mr1}, 0(r5)
002c0c  92913102  vadd.f.mz.rn vr3{mr1}, r3, vr3
002c10  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
002c14  8a113102  vmul.f.mz.rn vr3{mr1}, r2, vr3
002c18  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
002c1c  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
002c20  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
002c24  46102d02  vstore_mask16.mz vr2{mr1}, 0(r26)
002c28  46906202  vstore_mask16.mz vr6{mr1}, 0(r5)
002c2c  3f2df8fe  blt.s r16, r15, -184
002c30  db94ffff  j -860
002c34  9f0e0fd5  addli sp, r30, -5504
002c38  e38fae2a  loadli.w r31,  5456(sp)
002c3c  63cfae2a  loadli.w r30,  5460(sp)
002c40  638ebe2a  loadli.w r28,  5464(sp)
002c44  e3cdbe2a  loadli.w r27,  5468(sp)
002c48  638dce2a  loadli.w r26,  5472(sp)
002c4c  e3ccce2a  loadli.w r25,  5476(sp)
002c50  638cde2a  loadli.w r24,  5480(sp)
002c54  e3cbde2a  loadli.w r23,  5484(sp)
002c58  638bee2a  loadli.w r22,  5488(sp)
002c5c  e3caee2a  loadli.w r21,  5492(sp)
002c60  638afe2a  loadli.w r20,  5496(sp)
002c64  e3c9fe2a  loadli.w r19,  5500(sp)
002c68  9f8e0e2b  addli sp, sp, 5504
002c6c  5f800f00  jr r31, 0
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
002eac  00100000  exit
