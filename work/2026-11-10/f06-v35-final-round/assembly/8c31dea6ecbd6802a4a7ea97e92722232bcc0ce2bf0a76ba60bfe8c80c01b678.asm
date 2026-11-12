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
0000fc  cb315b01  ble.s r22, r21, 108
000100  ab10833a  lui r1, 239665
000104  80db0002  load_param_i r23, 1
000108  1f1c0000  addli r24, zero, 1
00010c  9f0c0006  addli r25, zero, 768
000110  1f0d0008  addli r26, zero, 1024
000114  9f0d0001  addli r27, zero, 128
000118  1b9ef026  ori r28, r1, 623
00011c  8b904a31  div.s r1, r21, r20
000120  6b510f02  load.d r[3:4], 32(r30)
000124  6b528f00  load.d r[5:6], 8(r30)
000128  6b530f01  load.d r[7:8], 16(r30)
00012c  6b548f01  load.d r[9:10], 24(r30)
000130  67820e00  storeli.w zero, 32(sp)
000134  e7c18e01  storeli.w r24, 28(sp)
000138  67c19e01  storeli.w r25, 20(sp)
00013c  6781ae01  storeli.w r26, 16(sp)
000140  e7c0be01  storeli.w r27, 12(sp)
000144  e781ce01  storeli.w r28, 24(sp)
000148  73b02e00  store.d r[3:4], 0(sp)
00014c  6b510f00  load.d r[3:4], 0(r30)
000150  8b903031  div.s r1, r1, r19
000154  9bb07000  slli r1, r1, 7
000158  e7801e00  storeli.w r1, 8(sp)
00015c  d72e0000  jal 372
000160  8b9a7a11  add.s r21, r21, r23
000164  bfee6aff  blt.s r21, r22, -72
000168  9f8e8e00  addli sp, sp, 64
00016c  00a00300  mfence { lm, sm, gm }
000170  00100000  exit
000174  9f8e0ed5  addli sp, sp, -5504
000178  67c5ee2b  storeli.w r30, 5460(sp)
00017c  1f8f0e2b  addli r30, sp, 5504
000180  1f150000  addli r10, zero, 1
000184  e7c73e2b  storeli.w r19, 5500(sp)
000188  e7874e2b  storeli.w r20, 5496(sp)
00018c  67c75e2b  storeli.w r21, 5492(sp)
000190  67876e2b  storeli.w r22, 5488(sp)
000194  e7c67e2b  storeli.w r23, 5484(sp)
000198  e7868e2b  storeli.w r24, 5480(sp)
00019c  67c69e2b  storeli.w r25, 5476(sp)
0001a0  6786ae2b  storeli.w r26, 5472(sp)
0001a4  e7c5be2b  storeli.w r27, 5468(sp)
0001a8  e785ce2b  storeli.w r28, 5464(sp)
0001ac  6785fe2b  storeli.w r31, 5456(sp)
0001b0  e3004f00  loadli.w r1,  32(r30)
0001b4  63472f00  loadli.w r14,  20(r30)
0001b8  e3072f00  loadli.w r15,  16(r30)
0001bc  e3461f00  loadli.w r13,  12(r30)
0001c0  9f057fd6  addli r11, r30, -5320
0001c4  73b02500  store.d r[3:4], 0(r11)
0001c8  37b1a000  beq r1, r10, 76
0001cc  1f210000  addli r2, zero, 2
0001d0  3b922000  bneq r1, r2, 132
0001d4  e3403f00  loadli.w r1,  28(r30)
0001d8  37930000  beq r1, zero, 196
0001dc  80350002  core_id r11
0001e0  9f200000  addli r1, zero, 2
0001e4  37b3150a  beq r11, r1, 5324
0001e8  9f100000  addli r1, zero, 1
0001ec  3792150a  beq r11, r1, 5252
0001f0  3bf3050a  bneq r11, zero, 5340
0001f4  e3002f00  loadli.w r1,  16(r30)
0001f8  2b0100f0  lui r2, 983040
0001fc  9bb01000  slli r1, r1, 1
000200  97902000  or r1, r1, r2
000204  2b010000  lui r2, 0
000208  1f010100  addli r2, r2, 0
00020c  ff002200  l_gm2sm r1, r2, 0(r[5:6])
000210  db970200  j 5308
000214  e3403f00  loadli.w r1,  28(r30)
000218  b7980002  beq r1, zero, 1572
00021c  80300002  core_id r1
000220  1f210000  addli r2, zero, 2
000224  379a200c  beq r1, r2, 6788
000228  1f110000  addli r2, zero, 1
00022c  b791200a  beq r1, r2, 5220
000230  3bda000c  bneq r1, zero, 6804
000234  63012f00  loadli.w r2,  16(r30)
000238  ab0100f0  lui r3, 983040
00023c  1b311100  slli r2, r2, 1
000240  17113100  or r2, r2, r3
000244  ab410000  lui r3, 4
000248  9f810100  addli r3, r3, 0
00024c  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000250  db4e0300  j 6772
000254  e3403f00  loadli.w r1,  28(r30)
000258  37f50004  beq r1, zero, 2396
00025c  e3002f00  loadli.w r1,  16(r30)
000260  1f010010  addli r2, zero, 2048
000264  3b912008  bneq r1, r2, 4164
000268  00350002  core_id r10
00026c  9f200000  addli r1, zero, 2
000270  3719150e  beq r10, r1, 7748
000274  9f100000  addli r1, zero, 1
000278  3708150e  beq r10, r1, 7680
00027c  3b49050e  bneq r10, zero, 7760
000280  9f000040  addli r1, zero, 8192
000284  2b0100f0  lui r2, 983040
000288  97902000  or r1, r1, r2
00028c  2b810000  lui r2, 8
000290  1f010100  addli r2, r2, 0
000294  ff002200  l_gm2sm r1, r2, 0(r[5:6])
000298  dbc60300  j 7732
00029c  00330002  core_id r6
0002a0  bb000300  bneq r6, zero, 32
0002a4  e3002f00  loadli.w r1,  16(r30)
0002a8  2b0100f0  lui r2, 983040
0002ac  9bb01000  slli r1, r1, 1
0002b0  97902000  or r1, r1, r2
0002b4  2b310000  lui r2, 3
0002b8  1f010100  addli r2, r2, 0
0002bc  ff002200  l_gm2sm r1, r2, 0(r[5:6])
0002c0  abf00000  lui r1, 15
0002c4  63411f00  loadli.w r2,  12(r30)
0002c8  00200300  mfence { sm, gm }
0002cc  9b90f0ff  ori r1, r1, 4095
0002d0  80a10004  csr_set csr3, r1
0002d4  00d00100  sync_group
0002d8  4b556114  ble.s r2, r6, 10580
0002dc  e3002f00  loadli.w r1,  16(r30)
0002e0  63412f00  loadli.w r2,  20(r30)
0002e4  9f062000  addli r13, zero, 16
0002e8  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0002ec  1f140000  addli r8, zero, 1
0002f0  1f058fd7  addli r10, r30, -5184
0002f4  1f060002  addli r12, zero, 256
0002f8  2b08ffff  lui r16, 1048560
0002fc  2b09807f  lui r18, 522240
000300  ab09c07f  lui r19, 523264
000304  1f0a0001  addli r20, zero, 128
000308  9f0a8000  addli r21, zero, 64
00030c  1f0b4000  addli r22, zero, 32
000310  1bb21000  slli r4, r1, 1
000314  8b912010  add.s r3, r1, r2
000318  b3800008  fix2float.rn r1, r1
00031c  9b321100  slli r5, r2, 1
000320  e70b1fd4  storeli.w r1, -5448(r30)
000324  9ff0f1ff  addli r1, r3, -1
000328  e74b4fd4  storeli.w r4, -5444(r30)
00032c  8b932030  div.s r7, r1, r2
000330  abf0ffff  lui r1, 1048575
000334  9b95f0ff  ori r11, r1, 4095
000338  9f000fd7  addli r1, r30, -5248
00033c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000340  6aa00622  vor.u.mz vr0{mr1}, r13, vr0
000344  9f008fd6  addli r1, r30, -5312
000348  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00034c  ab700000  lui r1, 7
000350  9b98f0ff  ori r17, r1, 4095
000354  db080000  j 68
000358  1f028fd5  addli r4, r30, -5440
00035c  00a00000  mfence { lm }
000360  6b510f00  load.d r[3:4], 0(r30)
000364  ab0000f0  lui r1, 983040
000368  eb540200  load.d r[10:11], 0(r4)
00036c  63427fd5  loadli.w r4,  -5444(r30)
000370  0b219110  add.ul r[3:4], r[3:4], r[10:11]
000374  97101200  or r1, r4, r1
000378  1f058fd7  addli r10, r30, -5184
00037c  80540102  load_param_i r9, 2
000380  ff30a100  s_lm2gm r1, r10, 0(r[3:4])
000384  0b936410  add.s r6, r9, r6
000388  00a00200  mfence { lm, gm }
00038c  e3401f00  loadli.w r1,  12(r30)
000390  3f201300  blt.s r6, r1, 8
000394  5b130500  j 10392
000398  e3001f00  loadli.w r1,  8(r30)
00039c  9f047fd6  addli r9, r30, -5320
0003a0  8b101310  add.s r1, r6, r1
0003a4  8b90f020  mul.s r1, r1, r15
0003a8  b3900028  sext_int2long r[2:3], r1
0003ac  97bb8002  sll.d r[24:25], r[2:3], r8
0003b0  6bd10400  load.d r[3:4], 0(r9)
0003b4  ab0000f0  lui r1, 983040
0003b8  9f048fd5  addli r9, r30, -5440
0003bc  97101200  or r1, r4, r1
0003c0  73b07401  store.d r[24:25], 0(r9)
0003c4  0b217111  add.ul r[3:4], r[3:4], r[24:25]
0003c8  ff20a100  l_gm2lm r1, r10, 0(r[3:4])
0003cc  00a00200  mfence { lm, gm }
0003d0  bfdc8300  blt.s r7, r8, 820
0003d4  1f0e0000  addli r28, zero, 0
0003d8  9f0d0000  addli r27, zero, 0
0003dc  9f0b0000  addli r23, zero, 0
0003e0  db0c0000  j 100
0003e4  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
0003e8  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
0003ec  9f9b0b00  addli r23, r23, 1
0003f0  6a7106c0  vsrl.p vr2, r12, vr0
0003f4  ea7116c0  vsrl.p vr3, r12, vr1
0003f8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0003fc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000400  6a710ac0  vsrl.p vr2, r20, vr0
000404  ea711ac0  vsrl.p vr3, r20, vr1
000408  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00040c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000410  6af10ac0  vsrl.p vr2, r21, vr0
000414  eaf11ac0  vsrl.p vr3, r21, vr1
000418  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00041c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000420  6a710bc0  vsrl.p vr2, r22, vr0
000424  ea711bc0  vsrl.p vr3, r22, vr1
000428  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00042c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000430  fa100040  vextracti.f r1, 0(vr0)
000434  7a910040  vextracti.f r2, 0(vr1)
000438  0b6e1e10  add.f.rn r28, r28, r1
00043c  8bed2d10  add.f.rn r27, r27, r2
000440  37bb7b00  beq r23, r7, 716
000444  9f800b00  addli r1, r23, 0
000448  3730c700  beq r14, r12, 12
00044c  97a0bb00  xor r1, r23, r11
000450  8b901310  add.s r1, r7, r1
000454  0b91e020  mul.s r2, r1, r14
000458  0b912718  sub.s r2, r15, r2
00045c  0b15e140  min.s r10, r2, r14
000460  1f010fd7  addli r2, r30, -5248
000464  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
000468  92322002  vadd.s.mz vr5{mr1}, zero, vr2
00046c  12322002  vadd.s.mz vr4{mr1}, zero, vr2
000470  92312002  vadd.s.mz vr3{mr1}, zero, vr2
000474  bf4d85fe  blt.s r10, r8, -144
000478  8b911220  mul.s r3, r5, r1
00047c  9f000fd7  addli r1, r30, -5248
000480  2b3c0000  lui r24, 3
000484  1f010000  addli r2, zero, 0
000488  9f048fd7  addli r9, r30, -5184
00048c  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
000490  1f0c0c00  addli r24, r24, 0
000494  12315002  vadd.s.mz vr2{mr1}, zero, vr5
000498  92315002  vadd.s.mz vr3{mr1}, zero, vr5
00049c  12325002  vadd.s.mz vr4{mr1}, zero, vr5
0004a0  8b1c3c10  add.s r25, r24, r3
0004a4  8b903410  add.s r1, r9, r3
0004a8  1f028fd6  addli r4, r30, -5312
0004ac  4a830c02  vloads.mz vr6{mr1}, 0(r25)
0004b0  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
0004b4  c2830002  vload.mz vr7{mr1}, 0(r1)
0004b8  1f020fd7  addli r4, r30, -5248
0004bc  1f8d8c00  addli r26, r25, 64
0004c0  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
0004c4  1f028100  addli r4, r2, 64
0004c8  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
0004cc  6a357802  vand.s.mz vr10{mr1}, r16, vr7
0004d0  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
0004d4  6a336802  vand.s.mz vr6{mr1}, r16, vr6
0004d8  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
0004dc  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0004e0  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
0004e4  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
0004e8  669503c0  vabs.f vr10, vr7
0004ec  6a348402  vand.s.mz vr8{mr1}, r8, vr8
0004f0  ea349402  vand.s.mz vr9{mr1}, r8, vr9
0004f4  7221a942  vlt.u.mz mr2{mr1}, r18, vr10
0004f8  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
0004fc  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
000500  12b48802  vadd.s.mz vr8{mr1}, r17, vr8
000504  92b49802  vadd.s.mz vr9{mr1}, r17, vr9
000508  ea338802  vand.s.mz vr7{mr1}, r16, vr8
00050c  661403c0  vabs.f vr8, vr6
000510  6a339802  vand.s.mz vr6{mr1}, r16, vr9
000514  eaa30934  vor.u.mh vr7{mr2}, r19, vr0
000518  72218942  vlt.u.mz mr2{mr1}, r18, vr8
00051c  6aa30934  vor.u.mh vr6{mr2}, r19, vr0
000520  4a040d02  vloads.mz vr8{mr1}, 0(r26)
000524  1f8d8000  addli r26, r1, 64
000528  c2040d02  vload.mz vr9{mr1}, 0(r26)
00052c  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
000530  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
000534  6a336802  vand.s.mz vr6{mr1}, r16, vr6
000538  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
00053c  ea349802  vand.s.mz vr9{mr1}, r16, vr9
000540  46807002  vstore.mz vr7{mr1}, 0(r1)
000544  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
000548  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
00054c  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
000550  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
000554  6a348802  vand.s.mz vr8{mr1}, r16, vr8
000558  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
00055c  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
000560  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
000564  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
000568  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
00056c  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
000570  ea349402  vand.s.mz vr9{mr1}, r8, vr9
000574  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
000578  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
00057c  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
000580  661505c0  vabs.f vr10, vr10
000584  661404c0  vabs.f vr8, vr8
000588  92b49802  vadd.s.mz vr9{mr1}, r17, vr9
00058c  92b5b802  vadd.s.mz vr11{mr1}, r17, vr11
000590  7221a942  vlt.u.mz mr2{mr1}, r18, vr10
000594  ea349802  vand.s.mz vr9{mr1}, r16, vr9
000598  6a35b802  vand.s.mz vr10{mr1}, r16, vr11
00059c  eaa40934  vor.u.mh vr9{mr2}, r19, vr0
0005a0  72218942  vlt.u.mz mr2{mr1}, r18, vr8
0005a4  6aa50934  vor.u.mh vr10{mr2}, r19, vr0
0005a8  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
0005ac  ea34a802  vand.s.mz vr9{mr1}, r16, vr10
0005b0  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
0005b4  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
0005b8  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
0005bc  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
0005c0  46008d02  vstore.mz vr8{mr1}, 0(r26)
0005c4  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0005c8  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0005cc  4b6845fe  ble.s r10, r4, -488
0005d0  1f820c01  addli r4, r25, 128
0005d4  1f8d0001  addli r26, r1, 128
0005d8  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
0005dc  9f808001  addli r1, r1, 192
0005e0  1f010101  addli r2, r2, 128
0005e4  1f0c0c02  addli r24, r24, 256
0005e8  9f840402  addli r9, r9, 256
0005ec  6aa37622  vor.u.mz vr6{mr1}, r13, vr7
0005f0  4a040202  vloads.mz vr8{mr1}, 0(r4)
0005f4  c2040d02  vload.mz vr9{mr1}, 0(r26)
0005f8  1f828c01  addli r4, r25, 192
0005fc  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
000600  6a309802  vand.s.mz vr0{mr1}, r16, vr9
000604  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
000608  6a348802  vand.s.mz vr8{mr1}, r16, vr8
00060c  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
000610  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
000614  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
000618  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
00061c  e69504c0  vabs.f vr11, vr9
000620  6a300402  vand.s.mz vr0{mr1}, r8, vr0
000624  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
000628  7221b942  vlt.u.mz mr2{mr1}, r18, vr11
00062c  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
000630  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
000634  12b00802  vadd.s.mz vr0{mr1}, r17, vr0
000638  12b5a802  vadd.s.mz vr10{mr1}, r17, vr10
00063c  ea340802  vand.s.mz vr9{mr1}, r16, vr0
000640  661004c0  vabs.f vr0, vr8
000644  6a34a802  vand.s.mz vr8{mr1}, r16, vr10
000648  eaa47934  vor.u.mh vr9{mr2}, r19, vr7
00064c  72210942  vlt.u.mz mr2{mr1}, r18, vr0
000650  6aa47934  vor.u.mh vr8{mr2}, r19, vr7
000654  4a000202  vloads.mz vr0{mr1}, 0(r4)
000658  42850002  vload.mz vr10{mr1}, 0(r1)
00065c  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
000660  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
000664  6a35a802  vand.s.mz vr10{mr1}, r16, vr10
000668  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
00066c  6a348802  vand.s.mz vr8{mr1}, r16, vr8
000670  46009d02  vstore.mz vr9{mr1}, 0(r26)
000674  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
000678  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
00067c  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
000680  6a300802  vand.s.mz vr0{mr1}, r16, vr0
000684  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
000688  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
00068c  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
000690  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
000694  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
000698  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
00069c  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
0006a0  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
0006a4  e69000c0  vabs.f vr1, vr1
0006a8  661000c0  vabs.f vr0, vr0
0006ac  12b5a802  vadd.s.mz vr10{mr1}, r17, vr10
0006b0  92b5b802  vadd.s.mz vr11{mr1}, r17, vr11
0006b4  72211942  vlt.u.mz mr2{mr1}, r18, vr1
0006b8  6a35a802  vand.s.mz vr10{mr1}, r16, vr10
0006bc  ea30b802  vand.s.mz vr1{mr1}, r16, vr11
0006c0  6aa57934  vor.u.mh vr10{mr2}, r19, vr7
0006c4  72210942  vlt.u.mz mr2{mr1}, r18, vr0
0006c8  eaa07934  vor.u.mh vr1{mr2}, r19, vr7
0006cc  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
0006d0  ea331802  vand.s.mz vr7{mr1}, r16, vr1
0006d4  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
0006d8  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
0006dc  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0006e0  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0006e4  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
0006e8  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
0006ec  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
0006f0  46800002  vstore.mz vr0{mr1}, 0(r1)
0006f4  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
0006f8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0006fc  bf16a1fe  blt.s r2, r10, -604
000700  db9cffff  j -796
000704  9f0d0000  addli r27, zero, 0
000708  1f0e0000  addli r28, zero, 0
00070c  00a00000  mfence { lm }
000710  3fa187fe  blt.s r15, r8, -952
000714  e3007fd5  loadli.w r1,  -5448(r30)
000718  9f040000  addli r9, zero, 0
00071c  0f011e18  div.f.rn r2, r28, r1
000720  8f801d18  div.f.rn r1, r27, r1
000724  8b612120  mul.f.rn r3, r2, r2
000728  0b610158  neg.f r2, r2
00072c  8be03018  sub.f.rn r1, r1, r3
000730  e3013f00  loadli.w r3,  24(r30)
000734  8be03010  add.f.rn r1, r1, r3
000738  ab01803f  lui r3, 260096
00073c  8f800008  sqrt.f.rn r1, r1
000740  8f801118  div.f.rn r1, r3, r1
000744  9f018fd7  addli r3, r30, -5184
000748  42820102  vload.mz vr4{mr1}, 0(r3)
00074c  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
000750  1f854400  addli r10, r9, 32
000754  eaa12622  vor.u.mz vr3{mr1}, r13, vr2
000758  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
00075c  6a324802  vand.s.mz vr4{mr1}, r16, vr4
000760  92125102  vadd.f.mz.rn vr5{mr1}, r2, vr5
000764  12124102  vadd.f.mz.rn vr4{mr1}, r2, vr4
000768  8a925002  vmul.f.mz.rn vr5{mr1}, r1, vr5
00076c  0a924002  vmul.f.mz.rn vr4{mr1}, r1, vr4
000770  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
000774  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
000778  6a336402  vand.s.mz vr6{mr1}, r8, vr6
00077c  ea337402  vand.s.mz vr7{mr1}, r8, vr7
000780  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
000784  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
000788  e69202c0  vabs.f vr5, vr5
00078c  661202c0  vabs.f vr4, vr4
000790  12b36802  vadd.s.mz vr6{mr1}, r17, vr6
000794  92b37802  vadd.s.mz vr7{mr1}, r17, vr7
000798  72215942  vlt.u.mz mr2{mr1}, r18, vr5
00079c  6a336802  vand.s.mz vr6{mr1}, r16, vr6
0007a0  ea327802  vand.s.mz vr5{mr1}, r16, vr7
0007a4  6aa32934  vor.u.mh vr6{mr2}, r19, vr2
0007a8  72214942  vlt.u.mz mr2{mr1}, r18, vr4
0007ac  eaa22934  vor.u.mh vr5{mr2}, r19, vr2
0007b0  6eb261c2  vsrl.s.mz vr4{mr1}, vr3, vr6
0007b4  6eb24222  vor.s.mz vr4{mr1}, vr5, vr4
0007b8  46804102  vstore.mz vr4{mr1}, 0(r3)
0007bc  4bfea7fc  ble.s r15, r10, -1124
0007c0  1f858100  addli r10, r3, 64
0007c4  9f848400  addli r9, r9, 64
0007c8  9f810101  addli r3, r3, 128
0007cc  42020502  vload.mz vr4{mr1}, 0(r10)
0007d0  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
0007d4  6a324802  vand.s.mz vr4{mr1}, r16, vr4
0007d8  92125102  vadd.f.mz.rn vr5{mr1}, r2, vr5
0007dc  12124102  vadd.f.mz.rn vr4{mr1}, r2, vr4
0007e0  8a925002  vmul.f.mz.rn vr5{mr1}, r1, vr5
0007e4  0a924002  vmul.f.mz.rn vr4{mr1}, r1, vr4
0007e8  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
0007ec  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
0007f0  6a336402  vand.s.mz vr6{mr1}, r8, vr6
0007f4  ea337402  vand.s.mz vr7{mr1}, r8, vr7
0007f8  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
0007fc  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
000800  e69202c0  vabs.f vr5, vr5
000804  661202c0  vabs.f vr4, vr4
000808  12b36802  vadd.s.mz vr6{mr1}, r17, vr6
00080c  92b37802  vadd.s.mz vr7{mr1}, r17, vr7
000810  72215942  vlt.u.mz mr2{mr1}, r18, vr5
000814  6a336802  vand.s.mz vr6{mr1}, r16, vr6
000818  ea327802  vand.s.mz vr5{mr1}, r16, vr7
00081c  6aa32934  vor.u.mh vr6{mr2}, r19, vr2
000820  72214942  vlt.u.mz mr2{mr1}, r18, vr4
000824  eaa22934  vor.u.mh vr5{mr2}, r19, vr2
000828  eeb161c2  vsrl.s.mz vr3{mr1}, vr3, vr6
00082c  6eb13222  vor.s.mz vr2{mr1}, vr5, vr3
000830  46002502  vstore.mz vr2{mr1}, 0(r10)
000834  3fdcf4fe  blt.s r9, r15, -236
000838  5b64ffff  j -1248
00083c  80300002  core_id r1
000840  bb800000  bneq r1, zero, 32
000844  63012f00  loadli.w r2,  16(r30)
000848  ab0100f0  lui r3, 983040
00084c  1b311100  slli r2, r2, 1
000850  17113100  or r2, r2, r3
000854  ab710000  lui r3, 7
000858  9f810100  addli r3, r3, 0
00085c  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000860  2bf10000  lui r2, 15
000864  e3411f00  loadli.w r3,  12(r30)
000868  00200300  mfence { sm, gm }
00086c  1b11f1ff  ori r2, r2, 4095
000870  80210104  csr_set csr3, r2
000874  00d00100  sync_group
000878  cbde1110  ble.s r3, r1, 9140
00087c  63012f00  loadli.w r2,  16(r30)
000880  e3412f00  loadli.w r3,  20(r30)
000884  ab790000  lui r19, 7
000888  1f140000  addli r8, zero, 1
00088c  1f098fd7  addli r18, r30, -5184
000890  1f060002  addli r12, zero, 256
000894  9f060001  addli r13, zero, 128
000898  1f088000  addli r16, zero, 64
00089c  9f084000  addli r17, zero, 32
0008a0  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0008a4  9f890900  addli r19, r19, 0
0008a8  0b133110  add.s r6, r2, r3
0008ac  1b321100  slli r4, r2, 1
0008b0  b3020108  fix2float.rn r5, r2
0008b4  1f71f3ff  addli r2, r6, -1
0008b8  1bb31100  slli r6, r3, 1
0008bc  8b133130  div.s r7, r2, r3
0008c0  2bf1ffff  lui r2, 1048575
0008c4  9b15f1ff  ori r11, r2, 4095
0008c8  5b070000  j 56
0008cc  00a00000  mfence { lm }
0008d0  eb540f00  load.d r[10:11], 0(r30)
0008d4  2b0100f0  lui r2, 983040
0008d8  1f098fd7  addli r18, r30, -5184
0008dc  80510102  load_param_i r3, 2
0008e0  17112200  or r2, r4, r2
0008e4  8b901110  add.s r1, r3, r1
0008e8  0baa4411  add.ul r[21:22], r[10:11], r[21:22]
0008ec  7f312a01  s_lm2gm r2, r18, 0(r[21:22])
0008f0  00a00200  mfence { lm, gm }
0008f4  63411f00  loadli.w r2,  12(r30)
0008f8  3fa02000  blt.s r1, r2, 8
0008fc  5b660400  j 9008
000900  63011f00  loadli.w r2,  8(r30)
000904  0b912010  add.s r2, r1, r2
000908  0b11f120  mul.s r2, r2, r15
00090c  33110128  sext_int2long r[3:4], r2
000910  173a8102  sll.d r[21:22], r[3:4], r8
000914  9f017fd6  addli r3, r30, -5320
000918  2b0100f0  lui r2, 983040
00091c  ebd40100  load.d r[10:11], 0(r3)
000920  17112200  or r2, r4, r2
000924  0bab4411  add.ul r[23:24], r[10:11], r[21:22]
000928  7f212b01  l_gm2lm r2, r18, 0(r[23:24])
00092c  00a00200  mfence { lm, gm }
000930  3fc78300  blt.s r7, r8, 464
000934  9f010000  addli r3, zero, 0
000938  1f010000  addli r2, zero, 0
00093c  1f050000  addli r10, zero, 0
000940  db0c0000  j 100
000944  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
000948  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00094c  1f150500  addli r10, r10, 1
000950  6a7136c0  vsrl.p vr2, r12, vr3
000954  6a7216c0  vsrl.p vr4, r12, vr1
000958  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
00095c  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000960  eaf126c0  vsrl.p vr3, r13, vr2
000964  6af216c0  vsrl.p vr4, r13, vr1
000968  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
00096c  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000970  ea7128c0  vsrl.p vr3, r16, vr2
000974  6a7218c0  vsrl.p vr4, r16, vr1
000978  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
00097c  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000980  eaf128c0  vsrl.p vr3, r17, vr2
000984  6af218c0  vsrl.p vr4, r17, vr1
000988  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
00098c  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000990  fa140140  vextracti.f r9, 0(vr2)
000994  7a990040  vextracti.f r18, 0(vr1)
000998  8be19110  add.f.rn r3, r3, r9
00099c  0b612111  add.f.rn r2, r2, r18
0009a0  b7257500  beq r10, r7, 360
0009a4  1f0c0500  addli r24, r10, 0
0009a8  3730c700  beq r14, r12, 12
0009ac  172bb500  xor r22, r10, r11
0009b0  0b9c6311  add.s r24, r7, r22
0009b4  0b1bec20  mul.s r22, r24, r14
0009b8  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0009bc  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0009c0  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0009c4  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0009c8  0b9b6719  sub.s r22, r15, r22
0009cc  0b1beb40  min.s r22, r22, r14
0009d0  bf5d8bfe  blt.s r22, r8, -140
0009d4  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0009d8  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0009dc  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0009e0  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0009e4  9f0b0000  addli r23, zero, 0
0009e8  0b1c8321  mul.s r24, r6, r24
0009ec  9f0c8fd7  addli r25, r30, -5184
0009f0  1f8d0900  addli r26, r19, 0
0009f4  8b1d8d11  add.s r27, r26, r24
0009f8  9f848b00  addli r9, r23, 64
0009fc  ca820d02  vloads.mz vr5{mr1}, 0(r27)
000a00  1f8e8d00  addli r28, r27, 64
000a04  4a030e02  vloads.mz vr6{mr1}, 0(r28)
000a08  0b9e8c11  add.s r28, r25, r24
000a0c  c2030e02  vload.mz vr7{mr1}, 0(r28)
000a10  1f098e00  addli r18, r28, 64
000a14  42040902  vload.mz vr8{mr1}, 0(r18)
000a18  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
000a1c  92320002  vadd.s.mz vr5{mr1}, zero, vr0
000a20  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
000a24  06b40300  vfp162float_l.rn vr8, vr7
000a28  86f30300  vfp162float_h.rn vr7, vr7
000a2c  86340300  vfp162float_l.rn vr9, vr6
000a30  06730300  vfp162float_h.rn vr6, vr6
000a34  86120400  vfloat2fp16_l.rn vr5, vr8
000a38  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
000a3c  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
000a40  12340002  vadd.s.mz vr8{mr1}, zero, vr0
000a44  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
000a48  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
000a4c  06940400  vfloat2fp16_l.rn vr8, vr9
000a50  86d20300  vfloat2fp16_h.rn vr5, vr7
000a54  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
000a58  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
000a5c  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
000a60  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000a64  06540300  vfloat2fp16_h.rn vr8, vr6
000a68  46005e02  vstore.mz vr5{mr1}, 0(r28)
000a6c  46008902  vstore.mz vr8{mr1}, 0(r18)
000a70  4b5b9bfe  ble.s r22, r9, -300
000a74  9f840d01  addli r9, r27, 128
000a78  1f090e01  addli r18, r28, 128
000a7c  9f8b0b01  addli r23, r23, 128
000a80  1f0d0d02  addli r26, r26, 256
000a84  9f8c0c02  addli r25, r25, 256
000a88  ca820402  vloads.mz vr5{mr1}, 0(r9)
000a8c  9f848d01  addli r9, r27, 192
000a90  c2030902  vload.mz vr7{mr1}, 0(r18)
000a94  4a830402  vloads.mz vr6{mr1}, 0(r9)
000a98  9f048e01  addli r9, r28, 192
000a9c  42840402  vload.mz vr8{mr1}, 0(r9)
000aa0  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
000aa4  92320002  vadd.s.mz vr5{mr1}, zero, vr0
000aa8  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
000aac  12330002  vadd.s.mz vr6{mr1}, zero, vr0
000ab0  86b40300  vfp162float_l.rn vr9, vr7
000ab4  86f30300  vfp162float_h.rn vr7, vr7
000ab8  86920400  vfloat2fp16_l.rn vr5, vr9
000abc  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
000ac0  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
000ac4  86340400  vfp162float_l.rn vr9, vr8
000ac8  06740400  vfp162float_h.rn vr8, vr8
000acc  06930400  vfloat2fp16_l.rn vr6, vr9
000ad0  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
000ad4  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
000ad8  86d20300  vfloat2fp16_h.rn vr5, vr7
000adc  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
000ae0  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
000ae4  06530400  vfloat2fp16_h.rn vr6, vr8
000ae8  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
000aec  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
000af0  46005902  vstore.mz vr5{mr1}, 0(r18)
000af4  46806402  vstore.mz vr6{mr1}, 0(r9)
000af8  bffb6bff  blt.s r23, r22, -260
000afc  5bc9ffff  j -440
000b00  1f010000  addli r2, zero, 0
000b04  9f010000  addli r3, zero, 0
000b08  00a00000  mfence { lm }
000b0c  3f8787fe  blt.s r15, r8, -576
000b10  8f815118  div.f.rn r3, r3, r5
000b14  0f015118  div.f.rn r2, r2, r5
000b18  e3043f00  loadli.w r9,  24(r30)
000b1c  1f0b0000  addli r22, zero, 0
000b20  0be53120  mul.f.rn r10, r3, r3
000b24  8be10158  neg.f r3, r3
000b28  0b61a118  sub.f.rn r2, r2, r10
000b2c  1f058fd7  addli r10, r30, -5184
000b30  0b619110  add.f.rn r2, r2, r9
000b34  ab04803f  lui r9, 260096
000b38  0f010108  sqrt.f.rn r2, r2
000b3c  0f812418  div.f.rn r2, r9, r2
000b40  c2000502  vload.mz vr1{mr1}, 0(r10)
000b44  9f0b4b00  addli r23, r22, 32
000b48  06b10000  vfp162float_l.rn vr2, vr1
000b4c  86f00000  vfp162float_h.rn vr1, vr1
000b50  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
000b54  92911102  vadd.f.mz.rn vr3{mr1}, r3, vr1
000b58  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000b5c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
000b60  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
000b64  8a113102  vmul.f.mz.rn vr3{mr1}, r2, vr3
000b68  06120100  vfloat2fp16_l.rn vr4, vr2
000b6c  06d20100  vfloat2fp16_h.rn vr4, vr3
000b70  46004502  vstore.mz vr4{mr1}, 0(r10)
000b74  4be577ff  ble.s r15, r23, -680
000b78  9f0b8500  addli r23, r10, 64
000b7c  1f0b8b00  addli r22, r22, 64
000b80  1f050501  addli r10, r10, 128
000b84  42810b02  vload.mz vr2{mr1}, 0(r23)
000b88  86310100  vfp162float_l.rn vr3, vr2
000b8c  06710100  vfp162float_h.rn vr2, vr2
000b90  92913102  vadd.f.mz.rn vr3{mr1}, r3, vr3
000b94  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
000b98  8a113102  vmul.f.mz.rn vr3{mr1}, r2, vr3
000b9c  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
000ba0  86900100  vfloat2fp16_l.rn vr1, vr3
000ba4  86500100  vfloat2fp16_h.rn vr1, vr2
000ba8  46801b02  vstore.mz vr1{mr1}, 0(r23)
000bac  3f5efbfe  blt.s r22, r15, -108
000bb0  dba3ffff  j -740
000bb4  e3002f00  loadli.w r1,  16(r30)
000bb8  1f010010  addli r2, zero, 2048
000bbc  bb9c2002  bneq r1, r2, 1828
000bc0  003d0002  core_id r26
000bc4  3b700d00  bneq r26, zero, 28
000bc8  9f000040  addli r1, zero, 8192
000bcc  2b0100f0  lui r2, 983040
000bd0  97902000  or r1, r1, r2
000bd4  2b110100  lui r2, 17
000bd8  1f010108  addli r2, r2, 1024
000bdc  ff002200  l_gm2sm r1, r2, 0(r[5:6])
000be0  abf00000  lui r1, 15
000be4  00200300  mfence { sm, gm }
000be8  9b0d1d00  andi r27, r26, 1
000bec  9f020006  addli r5, zero, 768
000bf0  9b90f0ff  ori r1, r1, 4095
000bf4  80a10004  csr_set csr3, r1
000bf8  9f000006  addli r1, zero, 768
000bfc  00d00100  sync_group
000c00  37a00d00  beq r27, zero, 8
000c04  9f02000a  addli r5, zero, 1280
000c08  63411f00  loadli.w r2,  12(r30)
000c0c  9f110000  addli r3, zero, 1
000c10  3f703110  blt.s r2, r3, 8220
000c14  0b921d20  mul.s r4, r27, r1
000c18  abf0ffff  lui r1, 1048575
000c1c  2b1a0100  lui r20, 17
000c20  2b3c0100  lui r24, 19
000c24  2b380100  lui r16, 19
000c28  00510102  load_param_i r2, 2
000c2c  9f030000  addli r7, zero, 0
000c30  1b471d00  srli r14, r26, 1
000c34  9bb72200  slli r15, r5, 2
000c38  1f2b0000  addli r22, zero, 2
000c3c  9f088fd7  addli r17, r30, -5184
000c40  9f0a0005  addli r21, zero, 640
000c44  9f0b0001  addli r23, zero, 128
000c48  9f058000  addli r11, zero, 64
000c4c  1f064000  addli r12, zero, 32
000c50  1f0e0003  addli r28, zero, 384
000c54  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000c58  9b9000f8  ori r1, r1, 3968
000c5c  9b441100  srli r9, r2, 1
000c60  1f010fd7  addli r2, r30, -5248
000c64  1f0a0a08  addli r20, r20, 1024
000c68  1f0c0c08  addli r24, r24, 1024
000c6c  1f08080c  addli r16, r16, 1536
000c70  67041fd6  storeli.w r1, -5312(r30)
000c74  abf00000  lui r1, 15
000c78  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000c7c  9b9cf0ff  ori r25, r1, 4095
000c80  db030000  j 28
000c84  00a00300  mfence { lm, sm, gm }
000c88  80a10c04  csr_set csr3, r25
000c8c  00d00100  sync_group
000c90  8b939310  add.s r7, r7, r9
000c94  3fa0d300  blt.s r7, r13, 8
000c98  5b6f0300  j 7032
000c9c  8b90e310  add.s r1, r7, r14
000ca0  cb9f16fe  ble.s r13, r1, -28
000ca4  63011f00  loadli.w r2,  8(r30)
000ca8  1f037fd6  addli r6, r30, -5320
000cac  8b902010  add.s r1, r1, r2
000cb0  9bb0b000  slli r1, r1, 11
000cb4  97904000  or r1, r1, r4
000cb8  b3900028  sext_int2long r[2:3], r1
000cbc  17b96003  sll.d r[19:20], r[2:3], r22
000cc0  6b510300  load.d r[3:4], 0(r6)
000cc4  ab0000f0  lui r1, 983040
000cc8  97901700  or r1, r15, r1
000ccc  0b212111  add.ul r[3:4], r[3:4], r[19:20]
000cd0  ff201101  l_gm2lm r1, r17, 0(r[3:4])
000cd4  00a00200  mfence { lm, gm }
000cd8  3ba60d00  bneq r27, zero, 392
000cdc  9f010fd7  addli r3, r30, -5248
000ce0  63018fd6  loadli.w r2,  -5312(r30)
000ce4  9f000000  addli r1, zero, 0
000ce8  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
000cec  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000cf0  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000cf4  12323002  vadd.s.mz vr4{mr1}, zero, vr3
000cf8  0b954011  add.s r10, r1, r20
000cfc  8b911810  add.s r3, r17, r1
000d00  1f010101  addli r2, r2, 128
000d04  9f800004  addli r1, r1, 512
000d08  1f030501  addli r6, r10, 128
000d0c  4a100502  vloads_mask16.mz vr0{mr1}, 0(r10)
000d10  1f048500  addli r8, r10, 64
000d14  42940102  vload_mask16.mz vr8{mr1}, 0(r3)
000d18  9f868101  addli r13, r3, 192
000d1c  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
000d20  1f038501  addli r6, r10, 192
000d24  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
000d28  1f848100  addli r8, r3, 64
000d2c  c2950602  vload_mask16.mz vr11{mr1}, 0(r13)
000d30  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
000d34  1f830101  addli r6, r3, 128
000d38  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
000d3c  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
000d40  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
000d44  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
000d48  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
000d4c  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
000d50  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000d54  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
000d58  46108302  vstore_mask16.mz vr8{mr1}, 0(r6)
000d5c  1f030502  addli r6, r10, 256
000d60  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
000d64  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
000d68  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
000d6c  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
000d70  1f840103  addli r8, r3, 384
000d74  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
000d78  1f038502  addli r6, r10, 320
000d7c  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
000d80  9f860102  addli r13, r3, 256
000d84  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000d88  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
000d8c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000d90  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
000d94  1f030503  addli r6, r10, 384
000d98  c2930602  vload_mask16.mz vr7{mr1}, 0(r13)
000d9c  1f058503  addli r10, r10, 448
000da0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000da4  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
000da8  1f838102  addli r6, r3, 320
000dac  4a150502  vloads_mask16.mz vr10{mr1}, 0(r10)
000db0  9f818103  addli r3, r3, 448
000db4  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
000db8  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
000dbc  c2130402  vload_mask16.mz vr7{mr1}, 0(r8)
000dc0  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
000dc4  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
000dc8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000dcc  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
000dd0  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
000dd4  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
000dd8  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
000ddc  13035105  setlt.u r6, r2, r21
000de0  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
000de4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000de8  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000dec  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
000df0  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
000df4  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
000df8  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
000dfc  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
000e00  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000e04  bb5b03fe  bneq r6, zero, -268
000e08  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
000e0c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000e10  9f000002  addli r1, zero, 256
000e14  6af100c0  vsrl.p vr2, r1, vr0
000e18  eaf110c0  vsrl.p vr3, r1, vr1
000e1c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000e20  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000e24  6af10bc0  vsrl.p vr2, r23, vr0
000e28  eaf11bc0  vsrl.p vr3, r23, vr1
000e2c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000e30  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000e34  6af105c0  vsrl.p vr2, r11, vr0
000e38  eaf115c0  vsrl.p vr3, r11, vr1
000e3c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000e40  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000e44  6a7106c0  vsrl.p vr2, r12, vr0
000e48  ea7116c0  vsrl.p vr3, r12, vr1
000e4c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000e50  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000e54  fa110040  vextracti.f r3, 0(vr0)
000e58  fa900040  vextracti.f r1, 0(vr1)
000e5c  5b650000  j 808
000e60  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000e64  2bf1ffff  lui r2, 1048575
000e68  1f8b0d00  addli r22, r27, 0
000e6c  9f000000  addli r1, zero, 0
000e70  12311002  vadd.s.mz vr2{mr1}, zero, vr1
000e74  12321002  vadd.s.mz vr4{mr1}, zero, vr1
000e78  92311002  vadd.s.mz vr3{mr1}, zero, vr1
000e7c  1b1101f8  ori r2, r2, 3968
000e80  0b151a10  add.s r10, r20, r1
000e84  8b911810  add.s r3, r17, r1
000e88  1f010101  addli r2, r2, 128
000e8c  9f800004  addli r1, r1, 512
000e90  1f030531  addli r6, r10, 6272
000e94  9f060530  addli r13, r10, 6144
000e98  1f048531  addli r8, r10, 6336
000e9c  9f8d0118  addli r27, r3, 3072
000ea0  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
000ea4  ca920602  vloads_mask16.mz vr5{mr1}, 0(r13)
000ea8  9f068530  addli r13, r10, 6208
000eac  ca140402  vloads_mask16.mz vr9{mr1}, 0(r8)
000eb0  1f840119  addli r8, r3, 3200
000eb4  1f838118  addli r6, r3, 3136
000eb8  42930d02  vload_mask16.mz vr6{mr1}, 0(r27)
000ebc  4a940602  vloads_mask16.mz vr8{mr1}, 0(r13)
000ec0  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
000ec4  9f868119  addli r13, r3, 3264
000ec8  c2150302  vload_mask16.mz vr11{mr1}, 0(r6)
000ecc  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
000ed0  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
000ed4  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
000ed8  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
000edc  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
000ee0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000ee4  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
000ee8  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
000eec  1f040532  addli r8, r10, 6400
000ef0  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
000ef4  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
000ef8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000efc  46906d02  vstore_mask16.mz vr6{mr1}, 0(r27)
000f00  9f86011a  addli r13, r3, 3328
000f04  c2930602  vload_mask16.mz vr7{mr1}, 0(r13)
000f08  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
000f0c  1f83011b  addli r6, r3, 3456
000f10  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
000f14  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
000f18  4a100402  vloads_mask16.mz vr0{mr1}, 0(r8)
000f1c  1f048532  addli r8, r10, 6464
000f20  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000f24  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000f28  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
000f2c  1f040533  addli r8, r10, 6528
000f30  1f058533  addli r10, r10, 6592
000f34  4a140402  vloads_mask16.mz vr8{mr1}, 0(r8)
000f38  1f84811a  addli r8, r3, 3392
000f3c  4a150502  vloads_mask16.mz vr10{mr1}, 0(r10)
000f40  9f81811b  addli r3, r3, 3520
000f44  c2140402  vload_mask16.mz vr9{mr1}, 0(r8)
000f48  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
000f4c  c2130302  vload_mask16.mz vr7{mr1}, 0(r6)
000f50  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
000f54  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
000f58  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000f5c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
000f60  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
000f64  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
000f68  46106402  vstore_mask16.mz vr6{mr1}, 0(r8)
000f6c  1304c105  setlt.u r8, r2, r28
000f70  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
000f74  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000f78  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000f7c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
000f80  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
000f84  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
000f88  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
000f8c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
000f90  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000f94  bb3b04fe  bneq r8, zero, -276
000f98  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000f9c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
000fa0  9f000002  addli r1, zero, 256
000fa4  2bf3ffff  lui r6, 1048575
000fa8  9f010000  addli r3, zero, 0
000fac  1b1503f8  ori r10, r6, 3968
000fb0  eaf110c0  vsrl.p vr3, r1, vr1
000fb4  6af100c0  vsrl.p vr2, r1, vr0
000fb8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000fbc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000fc0  eaf11bc0  vsrl.p vr3, r23, vr1
000fc4  6af10bc0  vsrl.p vr2, r23, vr0
000fc8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000fcc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000fd0  eaf115c0  vsrl.p vr3, r11, vr1
000fd4  6af105c0  vsrl.p vr2, r11, vr0
000fd8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000fdc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000fe0  ea7116c0  vsrl.p vr3, r12, vr1
000fe4  6a7106c0  vsrl.p vr2, r12, vr0
000fe8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000fec  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000ff0  7a910040  vextracti.f r2, 0(vr1)
000ff4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000ff8  fa100040  vextracti.f r1, 0(vr0)
000ffc  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001000  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001004  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001008  8b1d3a10  add.s r27, r20, r3
00100c  8b963810  add.s r13, r17, r3
001010  1f050501  addli r10, r10, 128
001014  9f810104  addli r3, r3, 512
001018  1f830d18  addli r6, r27, 3072
00101c  1f840d19  addli r8, r27, 3200
001020  42940602  vload_mask16.mz vr8{mr1}, 0(r13)
001024  1f8d8601  addli r26, r13, 192
001028  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
00102c  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
001030  1f838d18  addli r6, r27, 3136
001034  1f848d19  addli r8, r27, 3264
001038  c2150d02  vload_mask16.mz vr11{mr1}, 0(r26)
00103c  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
001040  1f830601  addli r6, r13, 128
001044  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
001048  1f848600  addli r8, r13, 64
00104c  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
001050  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
001054  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
001058  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
00105c  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
001060  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
001064  46108302  vstore_mask16.mz vr8{mr1}, 0(r6)
001068  1f830d1a  addli r6, r27, 3328
00106c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
001070  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001074  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
001078  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
00107c  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
001080  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
001084  1f838d1a  addli r6, r27, 3392
001088  46106d02  vstore_mask16.mz vr6{mr1}, 0(r26)
00108c  1f8d0602  addli r26, r13, 256
001090  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
001094  1f840603  addli r8, r13, 384
001098  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
00109c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0010a0  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
0010a4  1f830d1b  addli r6, r27, 3456
0010a8  c2130d02  vload_mask16.mz vr7{mr1}, 0(r26)
0010ac  9f8d8d1b  addli r27, r27, 3520
0010b0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0010b4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0010b8  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
0010bc  1f838602  addli r6, r13, 320
0010c0  4a950d02  vloads_mask16.mz vr10{mr1}, 0(r27)
0010c4  9f868603  addli r13, r13, 448
0010c8  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
0010cc  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0010d0  c2130402  vload_mask16.mz vr7{mr1}, 0(r8)
0010d4  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0010d8  c2940602  vload_mask16.mz vr9{mr1}, 0(r13)
0010dc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0010e0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0010e4  46100d02  vstore_mask16.mz vr0{mr1}, 0(r26)
0010e8  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0010ec  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
0010f0  13035505  setlt.u r6, r10, r21
0010f4  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0010f8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0010fc  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
001100  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
001104  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
001108  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
00110c  46907602  vstore_mask16.mz vr7{mr1}, 0(r13)
001110  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
001114  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001118  bb4b03fe  bneq r6, zero, -272
00111c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
001120  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001124  9f010002  addli r3, zero, 256
001128  9f0d0b00  addli r27, r22, 0
00112c  003d0002  core_id r26
001130  1f2b0000  addli r22, zero, 2
001134  6af101c0  vsrl.p vr2, r3, vr0
001138  eaf111c0  vsrl.p vr3, r3, vr1
00113c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001140  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001144  6af10bc0  vsrl.p vr2, r23, vr0
001148  eaf11bc0  vsrl.p vr3, r23, vr1
00114c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001150  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001154  6af105c0  vsrl.p vr2, r11, vr0
001158  eaf115c0  vsrl.p vr3, r11, vr1
00115c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001160  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001164  6a7106c0  vsrl.p vr2, r12, vr0
001168  ea7116c0  vsrl.p vr3, r12, vr1
00116c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001170  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001174  fa110040  vextracti.f r3, 0(vr0)
001178  7a930040  vextracti.f r6, 0(vr1)
00117c  8be13010  add.f.rn r3, r1, r3
001180  8b606110  add.f.rn r1, r2, r6
001184  0b819330  div.u r2, r7, r9
001188  1f050000  addli r10, zero, 0
00118c  1b316100  slli r2, r2, 6
001190  1b010104  andi r2, r2, 64
001194  1711a101  or r2, r2, r26
001198  1b332100  slli r6, r2, 2
00119c  1b01e107  andi r2, r2, 126
0011a0  0b148311  add.s r8, r6, r24
0011a4  1b312100  slli r2, r2, 2
0011a8  73603400  stores.w r3, 0(r8)
0011ac  8b110311  add.s r3, r6, r16
0011b0  1b134300  ori r6, r6, 4
0011b4  73e01100  stores.w r1, 0(r3)
0011b8  8b108311  add.s r1, r6, r24
0011bc  8b118111  add.s r3, r2, r24
0011c0  0b130311  add.s r6, r6, r16
0011c4  0b110111  add.s r2, r2, r16
0011c8  00a00300  mfence { lm, sm, gm }
0011cc  80a10c04  csr_set csr3, r25
0011d0  00d00100  sync_group
0011d4  efc00000  loads.w r1, 0(r1)
0011d8  efc10100  loads.w r3, 0(r3)
0011dc  6f430300  loads.w r6, 0(r6)
0011e0  6f410100  loads.w r2, 0(r2)
0011e4  8be03010  add.f.rn r1, r1, r3
0011e8  0b612310  add.f.rn r2, r6, r2
0011ec  2b03003a  lui r6, 237568
0011f0  8be16020  mul.f.rn r3, r1, r6
0011f4  8b606120  mul.f.rn r1, r2, r6
0011f8  0be13120  mul.f.rn r2, r3, r3
0011fc  8be02018  sub.f.rn r1, r1, r2
001200  63013f00  loadli.w r2,  24(r30)
001204  8be02010  add.f.rn r1, r1, r2
001208  2b01803f  lui r2, 260096
00120c  8f800008  sqrt.f.rn r1, r1
001210  8f001118  div.f.rn r1, r2, r1
001214  0be10158  neg.f r2, r3
001218  9f018fd7  addli r3, r30, -5184
00121c  1f838100  addli r6, r3, 64
001220  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
001224  1f044500  addli r8, r10, 32
001228  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
00122c  13848206  setle.u r8, r5, r8
001230  12100102  vadd.f.mz.rn vr0{mr1}, r2, vr0
001234  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
001238  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
00123c  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
001240  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
001244  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
001248  bb700400  bneq r8, zero, 60
00124c  1f830101  addli r6, r3, 128
001250  1f848101  addli r8, r3, 192
001254  1f058500  addli r10, r10, 64
001258  9f810102  addli r3, r3, 256
00125c  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
001260  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
001264  93065504  setlt.u r13, r10, r5
001268  12100102  vadd.f.mz.rn vr0{mr1}, r2, vr0
00126c  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
001270  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
001274  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
001278  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
00127c  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
001280  3bfe06fe  bneq r13, zero, -100
001284  6b510f00  load.d r[3:4], 0(r30)
001288  ab0000f0  lui r1, 983040
00128c  00a00000  mfence { lm }
001290  97901700  or r1, r15, r1
001294  0b212111  add.ul r[3:4], r[3:4], r[19:20]
001298  ff301101  s_lm2gm r1, r17, 0(r[3:4])
00129c  00a00200  mfence { lm, gm }
0012a0  e3461f00  loadli.w r13,  12(r30)
0012a4  db3dffff  j -1556
0012a8  80300002  core_id r1
0012ac  1f210000  addli r2, zero, 2
0012b0  b7d5200a  beq r1, r2, 5492
0012b4  1f110000  addli r2, zero, 1
0012b8  37f72006  beq r1, r2, 3548
0012bc  3b96000a  bneq r1, zero, 5508
0012c0  63012f00  loadli.w r2,  16(r30)
0012c4  ab0100f0  lui r3, 983040
0012c8  1b312100  slli r2, r2, 2
0012cc  17113100  or r2, r2, r3
0012d0  abe10000  lui r3, 14
0012d4  9f810108  addli r3, r3, 1024
0012d8  7f013200  l_gm2sm r2, r3, 0(r[5:6])
0012dc  dbac0200  j 5476
0012e0  80300002  core_id r1
0012e4  bb800000  bneq r1, zero, 32
0012e8  63012f00  loadli.w r2,  16(r30)
0012ec  ab0100f0  lui r3, 983040
0012f0  1b312100  slli r2, r2, 2
0012f4  17113100  or r2, r2, r3
0012f8  ab410100  lui r3, 20
0012fc  9f8101f0  addli r3, r3, -2048
001300  7f013200  l_gm2sm r2, r3, 0(r[5:6])
001304  2bf10000  lui r2, 15
001308  e3411f00  loadli.w r3,  12(r30)
00130c  00200300  mfence { sm, gm }
001310  1b11f1ff  ori r2, r2, 4095
001314  80210104  csr_set csr3, r2
001318  00d00100  sync_group
00131c  4bc4110c  ble.s r3, r1, 6416
001320  63012f00  loadli.w r2,  16(r30)
001324  e3412f00  loadli.w r3,  20(r30)
001328  2b4a0100  lui r20, 20
00132c  1f058fd7  addli r10, r30, -5184
001330  9f150000  addli r11, zero, 1
001334  9f060002  addli r13, zero, 256
001338  1f080001  addli r16, zero, 128
00133c  9f088000  addli r17, zero, 64
001340  1f094000  addli r18, zero, 32
001344  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001348  1f0a0af0  addli r20, r20, -2048
00134c  0b133110  add.s r6, r2, r3
001350  1b322100  slli r4, r2, 2
001354  33010108  fix2float.rn r2, r2
001358  67042fd6  storeli.w r2, -5312(r30)
00135c  1f71f3ff  addli r2, r6, -1
001360  1bb32100  slli r6, r3, 2
001364  8b133130  div.s r7, r2, r3
001368  2bf1ffff  lui r2, 1048575
00136c  1b16f1ff  ori r12, r2, 4095
001370  1f010fd7  addli r2, r30, -5248
001374  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001378  5b070000  j 56
00137c  00a00000  mfence { lm }
001380  6b540f00  load.d r[9:10], 0(r30)
001384  2b0100f0  lui r2, 983040
001388  1f058fd7  addli r10, r30, -5184
00138c  80510102  load_param_i r3, 2
001390  17112200  or r2, r4, r2
001394  8b901110  add.s r1, r3, r1
001398  8b2a5411  add.ul r[22:23], r[9:10], r[22:23]
00139c  7fb1aa00  s_lm2gm r2, r10, 0(r[22:23])
0013a0  00a00200  mfence { lm, gm }
0013a4  63411f00  loadli.w r2,  12(r30)
0013a8  3fa02000  blt.s r1, r2, 8
0013ac  5b100300  j 6272
0013b0  63011f00  loadli.w r2,  8(r30)
0013b4  9f220000  addli r5, zero, 2
0013b8  0b912010  add.s r2, r1, r2
0013bc  0b11f120  mul.s r2, r2, r15
0013c0  33110128  sext_int2long r[3:4], r2
0013c4  973a5102  sll.d r[22:23], r[3:4], r5
0013c8  9f017fd6  addli r3, r30, -5320
0013cc  2b0100f0  lui r2, 983040
0013d0  6bd40100  load.d r[9:10], 0(r3)
0013d4  17112200  or r2, r4, r2
0013d8  8b2b5411  add.ul r[24:25], r[9:10], r[22:23]
0013dc  7fa1ab00  l_gm2lm r2, r10, 0(r[24:25])
0013e0  00a00200  mfence { lm, gm }
0013e4  bf97b300  blt.s r7, r11, 484
0013e8  9f010000  addli r3, zero, 0
0013ec  1f010000  addli r2, zero, 0
0013f0  1f050000  addli r10, zero, 0
0013f4  db0c0000  j 100
0013f8  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
0013fc  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001400  1f150500  addli r10, r10, 1
001404  6af106c0  vsrl.p vr2, r13, vr0
001408  eaf116c0  vsrl.p vr3, r13, vr1
00140c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001410  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001414  6a7108c0  vsrl.p vr2, r16, vr0
001418  ea7118c0  vsrl.p vr3, r16, vr1
00141c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001420  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001424  6af108c0  vsrl.p vr2, r17, vr0
001428  eaf118c0  vsrl.p vr3, r17, vr1
00142c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001430  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001434  6a7109c0  vsrl.p vr2, r18, vr0
001438  ea7119c0  vsrl.p vr3, r18, vr1
00143c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001440  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001444  fa120040  vextracti.f r5, 0(vr0)
001448  7a940040  vextracti.f r8, 0(vr1)
00144c  8be15110  add.f.rn r3, r3, r5
001450  0b618110  add.f.rn r2, r2, r8
001454  b7757500  beq r10, r7, 380
001458  9f090500  addli r19, r10, 0
00145c  3730d700  beq r14, r13, 12
001460  9729c500  xor r19, r10, r12
001464  8b993311  add.s r19, r7, r19
001468  9f020fd7  addli r5, r30, -5248
00146c  8b9be920  mul.s r23, r19, r14
001470  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
001474  8b9b7719  sub.s r23, r15, r23
001478  8b9beb40  min.s r23, r23, r14
00147c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001480  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001484  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001488  bfcdbbfe  blt.s r23, r11, -144
00148c  42920202  vload_mask16.mz vr4{mr1}, 0(r5)
001490  1f0c0000  addli r24, zero, 0
001494  8b1c3321  mul.s r25, r6, r19
001498  1f0d8fd7  addli r26, r30, -5184
00149c  9f0d0a00  addli r27, r20, 0
0014a0  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0014a4  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0014a8  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0014ac  8b999d11  add.s r19, r27, r25
0014b0  0b1e9d11  add.s r28, r26, r25
0014b4  1f848900  addli r8, r19, 64
0014b8  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
0014bc  9f848901  addli r9, r19, 192
0014c0  c2140e02  vload_mask16.mz vr9{mr1}, 0(r28)
0014c4  9f028e01  addli r5, r28, 192
0014c8  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
0014cc  1f840901  addli r8, r19, 128
0014d0  4a940402  vloads_mask16.mz vr8{mr1}, 0(r9)
0014d4  9f040e01  addli r9, r28, 128
0014d8  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
0014dc  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
0014e0  c2950402  vload_mask16.mz vr11{mr1}, 0(r9)
0014e4  1f048e00  addli r8, r28, 64
0014e8  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
0014ec  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0014f0  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0014f4  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
0014f8  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
0014fc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001500  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001504  46105e02  vstore_mask16.mz vr5{mr1}, 0(r28)
001508  46106402  vstore_mask16.mz vr6{mr1}, 0(r8)
00150c  1f048c00  addli r8, r24, 64
001510  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
001514  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001518  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00151c  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001520  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001524  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
001528  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
00152c  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001530  4bab8bfe  ble.s r23, r8, -312
001534  1f840902  addli r8, r19, 256
001538  9f848902  addli r9, r19, 320
00153c  9f020e02  addli r5, r28, 256
001540  1f0c0c01  addli r24, r24, 128
001544  9f8d0d04  addli r27, r27, 512
001548  1f0d0d04  addli r26, r26, 512
00154c  4a100402  vloads_mask16.mz vr0{mr1}, 0(r8)
001550  1f840903  addli r8, r19, 384
001554  ca920402  vloads_mask16.mz vr5{mr1}, 0(r9)
001558  42930202  vload_mask16.mz vr6{mr1}, 0(r5)
00155c  9f048e02  addli r9, r28, 320
001560  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
001564  1f848903  addli r8, r19, 448
001568  9f098e03  addli r19, r28, 448
00156c  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
001570  4a140402  vloads_mask16.mz vr8{mr1}, 0(r8)
001574  1f040e03  addli r8, r28, 384
001578  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
00157c  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
001580  42930902  vload_mask16.mz vr6{mr1}, 0(r19)
001584  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001588  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
00158c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001590  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001594  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
001598  46905402  vstore_mask16.mz vr5{mr1}, 0(r9)
00159c  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0015a0  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0015a4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0015a8  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
0015ac  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0015b0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0015b4  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0015b8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0015bc  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
0015c0  bf3b7cff  blt.s r24, r23, -276
0015c4  dbc6ffff  j -460
0015c8  1f010000  addli r2, zero, 0
0015cc  9f010000  addli r3, zero, 0
0015d0  00a00000  mfence { lm }
0015d4  bfa6b7fe  blt.s r15, r11, -600
0015d8  e3028fd6  loadli.w r5,  -5312(r30)
0015dc  9f090000  addli r19, zero, 0
0015e0  8f815118  div.f.rn r3, r3, r5
0015e4  0f015118  div.f.rn r2, r2, r5
0015e8  e3023f00  loadli.w r5,  24(r30)
0015ec  0be53120  mul.f.rn r10, r3, r3
0015f0  8be10158  neg.f r3, r3
0015f4  0b61a118  sub.f.rn r2, r2, r10
0015f8  1f058fd7  addli r10, r30, -5184
0015fc  0b615110  add.f.rn r2, r2, r5
001600  ab02803f  lui r5, 260096
001604  0f010108  sqrt.f.rn r2, r2
001608  0f812218  div.f.rn r2, r5, r2
00160c  9f0b8500  addli r23, r10, 64
001610  c2100502  vload_mask16.mz vr1{mr1}, 0(r10)
001614  1f8c4900  addli r24, r19, 32
001618  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
00161c  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
001620  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
001624  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
001628  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
00162c  46101502  vstore_mask16.mz vr1{mr1}, 0(r10)
001630  46902b02  vstore_mask16.mz vr2{mr1}, 0(r23)
001634  4ba587ff  ble.s r15, r24, -696
001638  9f0b0501  addli r23, r10, 128
00163c  1f0c8501  addli r24, r10, 192
001640  9f898900  addli r19, r19, 64
001644  1f050502  addli r10, r10, 256
001648  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
00164c  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
001650  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
001654  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
001658  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
00165c  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
001660  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
001664  46102c02  vstore_mask16.mz vr2{mr1}, 0(r24)
001668  bf9ef9fe  blt.s r19, r15, -92
00166c  5ba2ffff  j -752
001670  e3002f00  loadli.w r1,  16(r30)
001674  2b0100f0  lui r2, 983040
001678  9bb01000  slli r1, r1, 1
00167c  97902000  or r1, r1, r2
001680  2b110000  lui r2, 1
001684  1f010100  addli r2, r2, 0
001688  ff002300  l_gm2sm r1, r2, 0(r[7:8])
00168c  5b080000  j 64
001690  63012f00  loadli.w r2,  16(r30)
001694  ab0100f0  lui r3, 983040
001698  1b311100  slli r2, r2, 1
00169c  17113100  or r2, r2, r3
0016a0  ab510000  lui r3, 5
0016a4  9f810100  addli r3, r3, 0
0016a8  7f013300  l_gm2sm r2, r3, 0(r[7:8])
0016ac  5bc30000  j 1560
0016b0  e3002f00  loadli.w r1,  16(r30)
0016b4  2b0100f0  lui r2, 983040
0016b8  9bb01000  slli r1, r1, 1
0016bc  97902000  or r1, r1, r2
0016c0  2b210000  lui r2, 2
0016c4  1f010100  addli r2, r2, 0
0016c8  ff002400  l_gm2sm r1, r2, 0(r[9:10])
0016cc  abf00000  lui r1, 15
0016d0  63411f00  loadli.w r2,  12(r30)
0016d4  00200300  mfence { sm, gm }
0016d8  9b90f0ff  ori r1, r1, 4095
0016dc  80a10004  csr_set csr3, r1
0016e0  00d00100  sync_group
0016e4  4b25b10a  ble.s r2, r11, 5448
0016e8  e3002f00  loadli.w r1,  16(r30)
0016ec  63412f00  loadli.w r2,  20(r30)
0016f0  9f082000  addli r17, zero, 16
0016f4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0016f8  1f140000  addli r8, zero, 1
0016fc  9f048fd7  addli r9, r30, -5184
001700  1f080002  addli r16, zero, 256
001704  ab09ffff  lui r19, 1048560
001708  ab0a807f  lui r21, 522240
00170c  2b0bc07f  lui r22, 523264
001710  9f0b0001  addli r23, zero, 128
001714  1f0c8000  addli r24, zero, 64
001718  9f0c4000  addli r25, zero, 32
00171c  9bb21000  slli r5, r1, 1
001720  8b912010  add.s r3, r1, r2
001724  b3800008  fix2float.rn r1, r1
001728  1b331100  slli r6, r2, 1
00172c  e70b1fd4  storeli.w r1, -5448(r30)
001730  9ff0f1ff  addli r1, r3, -1
001734  e74b5fd4  storeli.w r5, -5444(r30)
001738  8b932030  div.s r7, r1, r2
00173c  abf0ffff  lui r1, 1048575
001740  1b96f0ff  ori r12, r1, 4095
001744  9f000fd7  addli r1, r30, -5248
001748  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00174c  6aa00822  vor.u.mz vr0{mr1}, r17, vr0
001750  9f008fd6  addli r1, r30, -5312
001754  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001758  ab700000  lui r1, 7
00175c  1b9af0ff  ori r20, r1, 4095
001760  db080000  j 68
001764  9f048fd5  addli r9, r30, -5440
001768  00a00000  mfence { lm }
00176c  6b510f00  load.d r[3:4], 0(r30)
001770  ab0000f0  lui r1, 983040
001774  6bd20400  load.d r[5:6], 0(r9)
001778  9f048fd7  addli r9, r30, -5184
00177c  0b214110  add.ul r[3:4], r[3:4], r[5:6]
001780  e3427fd5  loadli.w r5,  -5444(r30)
001784  00520102  load_param_i r4, 2
001788  8b15b210  add.s r11, r4, r11
00178c  97901200  or r1, r5, r1
001790  ff309100  s_lm2gm r1, r9, 0(r[3:4])
001794  00a00200  mfence { lm, gm }
001798  e3401f00  loadli.w r1,  12(r30)
00179c  3fa01500  blt.s r11, r1, 8
0017a0  db910200  j 5260
0017a4  e3001f00  loadli.w r1,  8(r30)
0017a8  1f027fd6  addli r4, r30, -5320
0017ac  8b901510  add.s r1, r11, r1
0017b0  8b90f020  mul.s r1, r1, r15
0017b4  b3900028  sext_int2long r[2:3], r1
0017b8  17bd8002  sll.d r[27:28], r[2:3], r8
0017bc  6b510200  load.d r[3:4], 0(r4)
0017c0  ab0000f0  lui r1, 983040
0017c4  1f028fd5  addli r4, r30, -5440
0017c8  97901200  or r1, r5, r1
0017cc  7330a201  store.d r[27:28], 0(r4)
0017d0  0b21a111  add.ul r[3:4], r[3:4], r[27:28]
0017d4  ff209100  l_gm2lm r1, r9, 0(r[3:4])
0017d8  00a00200  mfence { lm, gm }
0017dc  bfdc8300  blt.s r7, r8, 820
0017e0  9f060000  addli r13, zero, 0
0017e4  9f000000  addli r1, zero, 0
0017e8  1f0e0000  addli r28, zero, 0
0017ec  db0c0000  j 100
0017f0  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
0017f4  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
0017f8  1f1e0e00  addli r28, r28, 1
0017fc  6a7108c0  vsrl.p vr2, r16, vr0
001800  ea7118c0  vsrl.p vr3, r16, vr1
001804  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001808  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00180c  6af10bc0  vsrl.p vr2, r23, vr0
001810  eaf11bc0  vsrl.p vr3, r23, vr1
001814  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001818  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00181c  6a710cc0  vsrl.p vr2, r24, vr0
001820  ea711cc0  vsrl.p vr3, r24, vr1
001824  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001828  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00182c  6af10cc0  vsrl.p vr2, r25, vr0
001830  eaf11cc0  vsrl.p vr3, r25, vr1
001834  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001838  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00183c  7a110040  vextracti.f r2, 0(vr0)
001840  fa910040  vextracti.f r3, 0(vr1)
001844  8be62610  add.f.rn r13, r13, r2
001848  8be03010  add.f.rn r1, r1, r3
00184c  373b7e00  beq r28, r7, 716
001850  1f010e00  addli r2, r28, 0
001854  37300701  beq r14, r16, 12
001858  1721ce00  xor r2, r28, r12
00185c  0b912310  add.s r2, r7, r2
001860  8b11e120  mul.s r3, r2, r14
001864  8b913718  sub.s r3, r15, r3
001868  0b95e140  min.s r10, r3, r14
00186c  9f010fd7  addli r3, r30, -5248
001870  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
001874  92322002  vadd.s.mz vr5{mr1}, zero, vr2
001878  12322002  vadd.s.mz vr4{mr1}, zero, vr2
00187c  92312002  vadd.s.mz vr3{mr1}, zero, vr2
001880  bf4d85fe  blt.s r10, r8, -144
001884  1f020fd7  addli r4, r30, -5248
001888  2b090000  lui r18, 0
00188c  8b112320  mul.s r3, r6, r2
001890  9f040000  addli r9, zero, 0
001894  1f018fd7  addli r2, r30, -5184
001898  c2120202  vload_mask16.mz vr5{mr1}, 0(r4)
00189c  1f090900  addli r18, r18, 0
0018a0  12315002  vadd.s.mz vr2{mr1}, zero, vr5
0018a4  92315002  vadd.s.mz vr3{mr1}, zero, vr5
0018a8  12325002  vadd.s.mz vr4{mr1}, zero, vr5
0018ac  0b1d3910  add.s r26, r18, r3
0018b0  0b123110  add.s r4, r2, r3
0018b4  9f028fd6  addli r5, r30, -5312
0018b8  4a030d02  vloads.mz vr6{mr1}, 0(r26)
0018bc  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
0018c0  c2030202  vload.mz vr7{mr1}, 0(r4)
0018c4  9f020fd7  addli r5, r30, -5248
0018c8  9f0d8d00  addli r27, r26, 64
0018cc  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
0018d0  9f828400  addli r5, r9, 64
0018d4  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
0018d8  6ab57902  vand.s.mz vr10{mr1}, r19, vr7
0018dc  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
0018e0  6ab36902  vand.s.mz vr6{mr1}, r19, vr6
0018e4  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
0018e8  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0018ec  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
0018f0  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
0018f4  669503c0  vabs.f vr10, vr7
0018f8  6a348402  vand.s.mz vr8{mr1}, r8, vr8
0018fc  ea349402  vand.s.mz vr9{mr1}, r8, vr9
001900  72a1aa42  vlt.u.mz mr2{mr1}, r21, vr10
001904  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
001908  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
00190c  12348a02  vadd.s.mz vr8{mr1}, r20, vr8
001910  92349a02  vadd.s.mz vr9{mr1}, r20, vr9
001914  eab38902  vand.s.mz vr7{mr1}, r19, vr8
001918  661403c0  vabs.f vr8, vr6
00191c  6ab39902  vand.s.mz vr6{mr1}, r19, vr9
001920  ea230b34  vor.u.mh vr7{mr2}, r22, vr0
001924  72a18a42  vlt.u.mz mr2{mr1}, r21, vr8
001928  6a230b34  vor.u.mh vr6{mr2}, r22, vr0
00192c  4a840d02  vloads.mz vr8{mr1}, 0(r27)
001930  9f0d8200  addli r27, r4, 64
001934  c2840d02  vload.mz vr9{mr1}, 0(r27)
001938  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
00193c  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
001940  6ab36902  vand.s.mz vr6{mr1}, r19, vr6
001944  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
001948  eab49902  vand.s.mz vr9{mr1}, r19, vr9
00194c  46007202  vstore.mz vr7{mr1}, 0(r4)
001950  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
001954  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
001958  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
00195c  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
001960  6ab48902  vand.s.mz vr8{mr1}, r19, vr8
001964  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
001968  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
00196c  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
001970  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
001974  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
001978  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
00197c  ea349402  vand.s.mz vr9{mr1}, r8, vr9
001980  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
001984  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
001988  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
00198c  661505c0  vabs.f vr10, vr10
001990  661404c0  vabs.f vr8, vr8
001994  92349a02  vadd.s.mz vr9{mr1}, r20, vr9
001998  9235ba02  vadd.s.mz vr11{mr1}, r20, vr11
00199c  72a1aa42  vlt.u.mz mr2{mr1}, r21, vr10
0019a0  eab49902  vand.s.mz vr9{mr1}, r19, vr9
0019a4  6ab5b902  vand.s.mz vr10{mr1}, r19, vr11
0019a8  ea240b34  vor.u.mh vr9{mr2}, r22, vr0
0019ac  72a18a42  vlt.u.mz mr2{mr1}, r21, vr8
0019b0  6a250b34  vor.u.mh vr10{mr2}, r22, vr0
0019b4  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
0019b8  eab4a902  vand.s.mz vr9{mr1}, r19, vr10
0019bc  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
0019c0  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
0019c4  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
0019c8  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
0019cc  46808d02  vstore.mz vr8{mr1}, 0(r27)
0019d0  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0019d4  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0019d8  4b6855fe  ble.s r10, r5, -488
0019dc  9f020d01  addli r5, r26, 128
0019e0  9f0d0201  addli r27, r4, 128
0019e4  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
0019e8  1f028201  addli r4, r4, 192
0019ec  9f840401  addli r9, r9, 128
0019f0  1f090902  addli r18, r18, 256
0019f4  1f010102  addli r2, r2, 256
0019f8  6aa37822  vor.u.mz vr6{mr1}, r17, vr7
0019fc  4a840202  vloads.mz vr8{mr1}, 0(r5)
001a00  c2840d02  vload.mz vr9{mr1}, 0(r27)
001a04  9f028d01  addli r5, r26, 192
001a08  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
001a0c  6ab09902  vand.s.mz vr0{mr1}, r19, vr9
001a10  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
001a14  6ab48902  vand.s.mz vr8{mr1}, r19, vr8
001a18  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
001a1c  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
001a20  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
001a24  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
001a28  e69504c0  vabs.f vr11, vr9
001a2c  6a300402  vand.s.mz vr0{mr1}, r8, vr0
001a30  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
001a34  72a1ba42  vlt.u.mz mr2{mr1}, r21, vr11
001a38  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
001a3c  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
001a40  12300a02  vadd.s.mz vr0{mr1}, r20, vr0
001a44  1235aa02  vadd.s.mz vr10{mr1}, r20, vr10
001a48  eab40902  vand.s.mz vr9{mr1}, r19, vr0
001a4c  661004c0  vabs.f vr0, vr8
001a50  6ab4a902  vand.s.mz vr8{mr1}, r19, vr10
001a54  ea247b34  vor.u.mh vr9{mr2}, r22, vr7
001a58  72a10a42  vlt.u.mz mr2{mr1}, r21, vr0
001a5c  6a247b34  vor.u.mh vr8{mr2}, r22, vr7
001a60  4a800202  vloads.mz vr0{mr1}, 0(r5)
001a64  42050202  vload.mz vr10{mr1}, 0(r4)
001a68  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
001a6c  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
001a70  6ab5a902  vand.s.mz vr10{mr1}, r19, vr10
001a74  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
001a78  6ab48902  vand.s.mz vr8{mr1}, r19, vr8
001a7c  46809d02  vstore.mz vr9{mr1}, 0(r27)
001a80  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
001a84  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
001a88  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
001a8c  6ab00902  vand.s.mz vr0{mr1}, r19, vr0
001a90  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
001a94  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
001a98  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
001a9c  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
001aa0  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
001aa4  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
001aa8  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
001aac  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
001ab0  e69000c0  vabs.f vr1, vr1
001ab4  661000c0  vabs.f vr0, vr0
001ab8  1235aa02  vadd.s.mz vr10{mr1}, r20, vr10
001abc  9235ba02  vadd.s.mz vr11{mr1}, r20, vr11
001ac0  72a11a42  vlt.u.mz mr2{mr1}, r21, vr1
001ac4  6ab5a902  vand.s.mz vr10{mr1}, r19, vr10
001ac8  eab0b902  vand.s.mz vr1{mr1}, r19, vr11
001acc  6a257b34  vor.u.mh vr10{mr2}, r22, vr7
001ad0  72a10a42  vlt.u.mz mr2{mr1}, r21, vr0
001ad4  ea207b34  vor.u.mh vr1{mr2}, r22, vr7
001ad8  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
001adc  eab31902  vand.s.mz vr7{mr1}, r19, vr1
001ae0  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
001ae4  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
001ae8  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
001aec  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
001af0  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
001af4  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
001af8  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
001afc  46000202  vstore.mz vr0{mr1}, 0(r4)
001b00  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001b04  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001b08  bf96a4fe  blt.s r9, r10, -604
001b0c  db9cffff  j -796
001b10  9f000000  addli r1, zero, 0
001b14  9f060000  addli r13, zero, 0
001b18  00a00000  mfence { lm }
001b1c  3fa187fe  blt.s r15, r8, -952
001b20  63027fd5  loadli.w r4,  -5448(r30)
001b24  ab140000  lui r9, 1
001b28  2b250000  lui r10, 2
001b2c  1f010000  addli r2, zero, 0
001b30  9f840400  addli r9, r9, 0
001b34  1f050500  addli r10, r10, 0
001b38  8f814618  div.f.rn r3, r13, r4
001b3c  8f804018  div.f.rn r1, r1, r4
001b40  0be23120  mul.f.rn r4, r3, r3
001b44  8be10158  neg.f r3, r3
001b48  8be04018  sub.f.rn r1, r1, r4
001b4c  63023f00  loadli.w r4,  24(r30)
001b50  8be04010  add.f.rn r1, r1, r4
001b54  2b02803f  lui r4, 260096
001b58  8f800008  sqrt.f.rn r1, r1
001b5c  8f001218  div.f.rn r1, r4, r1
001b60  1f028fd7  addli r4, r30, -5184
001b64  42020202  vload.mz vr4{mr1}, 0(r4)
001b68  ca820402  vloads.mz vr5{mr1}, 0(r9)
001b6c  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
001b70  4a030502  vloads.mz vr6{mr1}, 0(r10)
001b74  9f064100  addli r13, r2, 32
001b78  eaa12822  vor.u.mz vr3{mr1}, r17, vr2
001b7c  eeb341a2  vsll.s.mz vr7{mr1}, vr3, vr4
001b80  6ab44902  vand.s.mz vr8{mr1}, r19, vr4
001b84  92937102  vadd.f.mz.rn vr7{mr1}, r3, vr7
001b88  12948102  vadd.f.mz.rn vr8{mr1}, r3, vr8
001b8c  eeb451a2  vsll.s.mz vr9{mr1}, vr3, vr5
001b90  6eb261a2  vsll.s.mz vr4{mr1}, vr3, vr6
001b94  6ab55902  vand.s.mz vr10{mr1}, r19, vr5
001b98  eab26902  vand.s.mz vr5{mr1}, r19, vr6
001b9c  8a937002  vmul.f.mz.rn vr7{mr1}, r1, vr7
001ba0  0a938002  vmul.f.mz.rn vr6{mr1}, r1, vr8
001ba4  26929302  vmac.f.mz.rn vr4{mr1}, vr7, vr9
001ba8  a612a302  vmac.f.mz.rn vr5{mr1}, vr6, vr10
001bac  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
001bb0  6a337402  vand.s.mz vr6{mr1}, r8, vr7
001bb4  eeb351c2  vsrl.s.mz vr7{mr1}, vr3, vr5
001bb8  16336202  vadd.s.mz vr6{mr1}, vr4, vr6
001bbc  ea337402  vand.s.mz vr7{mr1}, r8, vr7
001bc0  661202c0  vabs.f vr4, vr4
001bc4  96b37202  vadd.s.mz vr7{mr1}, vr5, vr7
001bc8  12336a02  vadd.s.mz vr6{mr1}, r20, vr6
001bcc  e69202c0  vabs.f vr5, vr5
001bd0  72a14a42  vlt.u.mz mr2{mr1}, r21, vr4
001bd4  6ab36902  vand.s.mz vr6{mr1}, r19, vr6
001bd8  92337a02  vadd.s.mz vr7{mr1}, r20, vr7
001bdc  6a232b34  vor.u.mh vr6{mr2}, r22, vr2
001be0  6ab27902  vand.s.mz vr4{mr1}, r19, vr7
001be4  72a15a42  vlt.u.mz mr2{mr1}, r21, vr5
001be8  eeb261c2  vsrl.s.mz vr5{mr1}, vr3, vr6
001bec  6a222b34  vor.u.mh vr4{mr2}, r22, vr2
001bf0  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
001bf4  46004202  vstore.mz vr4{mr1}, 0(r4)
001bf8  cbbdd7fc  ble.s r15, r13, -1172
001bfc  9f868400  addli r13, r9, 64
001c00  1f098200  addli r18, r4, 64
001c04  1f018100  addli r2, r2, 64
001c08  9f840401  addli r9, r9, 128
001c0c  1f020201  addli r4, r4, 128
001c10  4a820602  vloads.mz vr4{mr1}, 0(r13)
001c14  9f068500  addli r13, r10, 64
001c18  c2020902  vload.mz vr5{mr1}, 0(r18)
001c1c  1f050501  addli r10, r10, 128
001c20  4a830602  vloads.mz vr6{mr1}, 0(r13)
001c24  eeb351a2  vsll.s.mz vr7{mr1}, vr3, vr5
001c28  eab25902  vand.s.mz vr5{mr1}, r19, vr5
001c2c  92937102  vadd.f.mz.rn vr7{mr1}, r3, vr7
001c30  12945102  vadd.f.mz.rn vr8{mr1}, r3, vr5
001c34  eeb441a2  vsll.s.mz vr9{mr1}, vr3, vr4
001c38  6ab54902  vand.s.mz vr10{mr1}, r19, vr4
001c3c  8a937002  vmul.f.mz.rn vr7{mr1}, r1, vr7
001c40  eeb261a2  vsll.s.mz vr5{mr1}, vr3, vr6
001c44  6ab26902  vand.s.mz vr4{mr1}, r19, vr6
001c48  0a938002  vmul.f.mz.rn vr6{mr1}, r1, vr8
001c4c  a6929302  vmac.f.mz.rn vr5{mr1}, vr7, vr9
001c50  2612a302  vmac.f.mz.rn vr4{mr1}, vr6, vr10
001c54  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
001c58  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
001c5c  6a336402  vand.s.mz vr6{mr1}, r8, vr6
001c60  ea337402  vand.s.mz vr7{mr1}, r8, vr7
001c64  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
001c68  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
001c6c  e69202c0  vabs.f vr5, vr5
001c70  661202c0  vabs.f vr4, vr4
001c74  12336a02  vadd.s.mz vr6{mr1}, r20, vr6
001c78  92337a02  vadd.s.mz vr7{mr1}, r20, vr7
001c7c  72a15a42  vlt.u.mz mr2{mr1}, r21, vr5
001c80  6ab36902  vand.s.mz vr6{mr1}, r19, vr6
001c84  eab27902  vand.s.mz vr5{mr1}, r19, vr7
001c88  6a232b34  vor.u.mh vr6{mr2}, r22, vr2
001c8c  72a14a42  vlt.u.mz mr2{mr1}, r21, vr4
001c90  ea222b34  vor.u.mh vr5{mr2}, r22, vr2
001c94  6eb161c2  vsrl.s.mz vr2{mr1}, vr3, vr6
001c98  6eb12222  vor.s.mz vr2{mr1}, vr5, vr2
001c9c  46002902  vstore.mz vr2{mr1}, 0(r18)
001ca0  3f1bf1fe  blt.s r2, r15, -316
001ca4  5b58ffff  j -1344
001ca8  63012f00  loadli.w r2,  16(r30)
001cac  ab0100f0  lui r3, 983040
001cb0  1b311100  slli r2, r2, 1
001cb4  17113100  or r2, r2, r3
001cb8  ab610000  lui r3, 6
001cbc  9f810100  addli r3, r3, 0
001cc0  7f013400  l_gm2sm r2, r3, 0(r[9:10])
001cc4  2bf10000  lui r2, 15
001cc8  e3411f00  loadli.w r3,  12(r30)
001ccc  00200300  mfence { sm, gm }
001cd0  1b11f1ff  ori r2, r2, 4095
001cd4  80210104  csr_set csr3, r2
001cd8  00d00100  sync_group
001cdc  4bcd1106  ble.s r3, r1, 3920
001ce0  63012f00  loadli.w r2,  16(r30)
001ce4  e3412f00  loadli.w r3,  20(r30)
001ce8  ab460000  lui r13, 4
001cec  1f140000  addli r8, zero, 1
001cf0  9f0a8fd7  addli r21, r30, -5184
001cf4  1f060002  addli r12, zero, 256
001cf8  1f080001  addli r16, zero, 128
001cfc  9f088000  addli r17, zero, 64
001d00  1f094000  addli r18, zero, 32
001d04  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001d08  9f860600  addli r13, r13, 0
001d0c  0b133110  add.s r6, r2, r3
001d10  1b321100  slli r4, r2, 1
001d14  b3020108  fix2float.rn r5, r2
001d18  1f71f3ff  addli r2, r6, -1
001d1c  1bb31100  slli r6, r3, 1
001d20  8b133130  div.s r7, r2, r3
001d24  2bf1ffff  lui r2, 1048575
001d28  9b15f1ff  ori r11, r2, 4095
001d2c  5b070000  j 56
001d30  00a00000  mfence { lm }
001d34  eb540f00  load.d r[10:11], 0(r30)
001d38  2b0100f0  lui r2, 983040
001d3c  9f0a8fd7  addli r21, r30, -5184
001d40  80510102  load_param_i r3, 2
001d44  17112200  or r2, r4, r2
001d48  8b901110  add.s r1, r3, r1
001d4c  8ba96411  add.ul r[20:21], r[10:11], r[23:24]
001d50  7fb15901  s_lm2gm r2, r21, 0(r[20:21])
001d54  00a00200  mfence { lm, gm }
001d58  63411f00  loadli.w r2,  12(r30)
001d5c  3fa02000  blt.s r1, r2, 8
001d60  dbd90100  j 3788
001d64  63011f00  loadli.w r2,  8(r30)
001d68  0b912010  add.s r2, r1, r2
001d6c  0b11f120  mul.s r2, r2, r15
001d70  33110128  sext_int2long r[3:4], r2
001d74  173b8102  sll.d r[23:24], r[3:4], r8
001d78  9f017fd6  addli r3, r30, -5320
001d7c  2b0100f0  lui r2, 983040
001d80  ebd40100  load.d r[10:11], 0(r3)
001d84  17112200  or r2, r4, r2
001d88  8ba96411  add.ul r[20:21], r[10:11], r[23:24]
001d8c  7fa15901  l_gm2lm r2, r21, 0(r[20:21])
001d90  00a00200  mfence { lm, gm }
001d94  3fc78300  blt.s r7, r8, 464
001d98  9f010000  addli r3, zero, 0
001d9c  1f010000  addli r2, zero, 0
001da0  1f050000  addli r10, zero, 0
001da4  db0c0000  j 100
001da8  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
001dac  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001db0  1f150500  addli r10, r10, 1
001db4  6a7136c0  vsrl.p vr2, r12, vr3
001db8  6a7216c0  vsrl.p vr4, r12, vr1
001dbc  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
001dc0  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
001dc4  ea7128c0  vsrl.p vr3, r16, vr2
001dc8  6a7218c0  vsrl.p vr4, r16, vr1
001dcc  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
001dd0  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
001dd4  eaf128c0  vsrl.p vr3, r17, vr2
001dd8  6af218c0  vsrl.p vr4, r17, vr1
001ddc  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
001de0  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
001de4  ea7129c0  vsrl.p vr3, r18, vr2
001de8  6a7219c0  vsrl.p vr4, r18, vr1
001dec  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
001df0  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
001df4  fa140140  vextracti.f r9, 0(vr2)
001df8  fa990040  vextracti.f r19, 0(vr1)
001dfc  8be19110  add.f.rn r3, r3, r9
001e00  0b613111  add.f.rn r2, r2, r19
001e04  b7257500  beq r10, r7, 360
001e08  9f090500  addli r19, r10, 0
001e0c  3730c700  beq r14, r12, 12
001e10  9729b500  xor r19, r10, r11
001e14  8b993311  add.s r19, r7, r19
001e18  0b9ae920  mul.s r20, r19, r14
001e1c  12320002  vadd.s.mz vr4{mr1}, zero, vr0
001e20  92310002  vadd.s.mz vr3{mr1}, zero, vr0
001e24  12310002  vadd.s.mz vr2{mr1}, zero, vr0
001e28  92300002  vadd.s.mz vr1{mr1}, zero, vr0
001e2c  0b9a4719  sub.s r20, r15, r20
001e30  0b1cea40  min.s r24, r20, r14
001e34  bf5d8cfe  blt.s r24, r8, -140
001e38  92300002  vadd.s.mz vr1{mr1}, zero, vr0
001e3c  12310002  vadd.s.mz vr2{mr1}, zero, vr0
001e40  92310002  vadd.s.mz vr3{mr1}, zero, vr0
001e44  12320002  vadd.s.mz vr4{mr1}, zero, vr0
001e48  9f0c0000  addli r25, zero, 0
001e4c  0b1d3321  mul.s r26, r6, r19
001e50  9f0d8fd7  addli r27, r30, -5184
001e54  1f8e0600  addli r28, r13, 0
001e58  8b19ae11  add.s r19, r28, r26
001e5c  9f848c00  addli r9, r25, 64
001e60  ca820902  vloads.mz vr5{mr1}, 0(r19)
001e64  1f8a8900  addli r20, r19, 64
001e68  4a030a02  vloads.mz vr6{mr1}, 0(r20)
001e6c  0b9aad11  add.s r20, r27, r26
001e70  c2030a02  vload.mz vr7{mr1}, 0(r20)
001e74  9f0a8a00  addli r21, r20, 64
001e78  42840a02  vload.mz vr8{mr1}, 0(r21)
001e7c  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
001e80  92320002  vadd.s.mz vr5{mr1}, zero, vr0
001e84  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
001e88  06b40300  vfp162float_l.rn vr8, vr7
001e8c  86f30300  vfp162float_h.rn vr7, vr7
001e90  86340300  vfp162float_l.rn vr9, vr6
001e94  06730300  vfp162float_h.rn vr6, vr6
001e98  86120400  vfloat2fp16_l.rn vr5, vr8
001e9c  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
001ea0  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
001ea4  12340002  vadd.s.mz vr8{mr1}, zero, vr0
001ea8  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
001eac  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
001eb0  06940400  vfloat2fp16_l.rn vr8, vr9
001eb4  86d20300  vfloat2fp16_h.rn vr5, vr7
001eb8  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
001ebc  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
001ec0  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
001ec4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001ec8  06540300  vfloat2fp16_h.rn vr8, vr6
001ecc  46005a02  vstore.mz vr5{mr1}, 0(r20)
001ed0  46808a02  vstore.mz vr8{mr1}, 0(r21)
001ed4  4b5b9cfe  ble.s r24, r9, -300
001ed8  9f840901  addli r9, r19, 128
001edc  9f8c0c01  addli r25, r25, 128
001ee0  1f0e0e02  addli r28, r28, 256
001ee4  9f8d0d02  addli r27, r27, 256
001ee8  ca820402  vloads.mz vr5{mr1}, 0(r9)
001eec  9f848901  addli r9, r19, 192
001ef0  9f090a01  addli r19, r20, 128
001ef4  4a830402  vloads.mz vr6{mr1}, 0(r9)
001ef8  c2830902  vload.mz vr7{mr1}, 0(r19)
001efc  9f048a01  addli r9, r20, 192
001f00  42840402  vload.mz vr8{mr1}, 0(r9)
001f04  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
001f08  92320002  vadd.s.mz vr5{mr1}, zero, vr0
001f0c  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
001f10  12330002  vadd.s.mz vr6{mr1}, zero, vr0
001f14  86b40300  vfp162float_l.rn vr9, vr7
001f18  86f30300  vfp162float_h.rn vr7, vr7
001f1c  86920400  vfloat2fp16_l.rn vr5, vr9
001f20  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
001f24  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
001f28  86340400  vfp162float_l.rn vr9, vr8
001f2c  06740400  vfp162float_h.rn vr8, vr8
001f30  06930400  vfloat2fp16_l.rn vr6, vr9
001f34  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
001f38  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
001f3c  86d20300  vfloat2fp16_h.rn vr5, vr7
001f40  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
001f44  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
001f48  06530400  vfloat2fp16_h.rn vr6, vr8
001f4c  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
001f50  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
001f54  46805902  vstore.mz vr5{mr1}, 0(r19)
001f58  46806402  vstore.mz vr6{mr1}, 0(r9)
001f5c  bffb8cff  blt.s r25, r24, -260
001f60  5bc9ffff  j -440
001f64  1f010000  addli r2, zero, 0
001f68  9f010000  addli r3, zero, 0
001f6c  00a00000  mfence { lm }
001f70  3f8787fe  blt.s r15, r8, -576
001f74  8f815118  div.f.rn r3, r3, r5
001f78  0f015118  div.f.rn r2, r2, r5
001f7c  e3043f00  loadli.w r9,  24(r30)
001f80  ab5c0000  lui r25, 5
001f84  2b6d0000  lui r26, 6
001f88  1f050000  addli r10, zero, 0
001f8c  1f0c8fd7  addli r24, r30, -5184
001f90  9f8c0c00  addli r25, r25, 0
001f94  1f0d0d00  addli r26, r26, 0
001f98  8be93120  mul.f.rn r19, r3, r3
001f9c  8be10158  neg.f r3, r3
001fa0  0b613119  sub.f.rn r2, r2, r19
001fa4  0b619110  add.f.rn r2, r2, r9
001fa8  ab04803f  lui r9, 260096
001fac  0f010108  sqrt.f.rn r2, r2
001fb0  0f812418  div.f.rn r2, r9, r2
001fb4  c2000c02  vload.mz vr1{mr1}, 0(r24)
001fb8  4a810c02  vloads.mz vr2{mr1}, 0(r25)
001fbc  ca010d02  vloads.mz vr3{mr1}, 0(r26)
001fc0  9f094500  addli r19, r10, 32
001fc4  06b20000  vfp162float_l.rn vr4, vr1
001fc8  86f00000  vfp162float_h.rn vr1, vr1
001fcc  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
001fd0  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
001fd4  86320100  vfp162float_l.rn vr5, vr2
001fd8  06b30100  vfp162float_l.rn vr6, vr3
001fdc  06710100  vfp162float_h.rn vr2, vr2
001fe0  86f10100  vfp162float_h.rn vr3, vr3
001fe4  8a131102  vmul.f.mz.rn vr7{mr1}, r2, vr1
001fe8  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
001fec  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001ff0  a6912302  vmac.f.mz.rn vr3{mr1}, vr7, vr2
001ff4  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
001ff8  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001ffc  06110300  vfloat2fp16_l.rn vr2, vr6
002000  06d10100  vfloat2fp16_h.rn vr2, vr3
002004  46002c02  vstore.mz vr2{mr1}, 0(r24)
002008  cba437ff  ble.s r15, r19, -728
00200c  9f898c00  addli r19, r25, 64
002010  1f0a8c00  addli r20, r24, 64
002014  1f058500  addli r10, r10, 64
002018  9f8c0c01  addli r25, r25, 128
00201c  1f0c0c01  addli r24, r24, 128
002020  4a810902  vloads.mz vr2{mr1}, 0(r19)
002024  9f098d00  addli r19, r26, 64
002028  c2010a02  vload.mz vr3{mr1}, 0(r20)
00202c  1f0d0d01  addli r26, r26, 128
002030  4a820902  vloads.mz vr4{mr1}, 0(r19)
002034  86b20100  vfp162float_l.rn vr5, vr3
002038  86f10100  vfp162float_h.rn vr3, vr3
00203c  92925102  vadd.f.mz.rn vr5{mr1}, r3, vr5
002040  92913102  vadd.f.mz.rn vr3{mr1}, r3, vr3
002044  06330100  vfp162float_l.rn vr6, vr2
002048  06710100  vfp162float_h.rn vr2, vr2
00204c  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002050  8a113102  vmul.f.mz.rn vr3{mr1}, r2, vr3
002054  86330200  vfp162float_l.rn vr7, vr4
002058  06720200  vfp162float_h.rn vr4, vr4
00205c  a6936202  vmac.f.mz.rn vr7{mr1}, vr5, vr6
002060  26922102  vmac.f.mz.rn vr4{mr1}, vr3, vr2
002064  86900300  vfloat2fp16_l.rn vr1, vr7
002068  86500200  vfloat2fp16_h.rn vr1, vr4
00206c  46001a02  vstore.mz vr1{mr1}, 0(r20)
002070  3f1df5fe  blt.s r10, r15, -188
002074  db97ffff  j -836
002078  9f000040  addli r1, zero, 8192
00207c  2b0100f0  lui r2, 983040
002080  97902000  or r1, r1, r2
002084  2ba10000  lui r2, 10
002088  1f010100  addli r2, r2, 0
00208c  ff002300  l_gm2sm r1, r2, 0(r[7:8])
002090  db070000  j 60
002094  63012f00  loadli.w r2,  16(r30)
002098  ab0100f0  lui r3, 983040
00209c  1b312100  slli r2, r2, 2
0020a0  17113100  or r2, r2, r3
0020a4  abf10000  lui r3, 15
0020a8  9f810108  addli r3, r3, 1024
0020ac  7f013300  l_gm2sm r2, r3, 0(r[7:8])
0020b0  5bf20000  j 1936
0020b4  9f000040  addli r1, zero, 8192
0020b8  2b0100f0  lui r2, 983040
0020bc  97902000  or r1, r1, r2
0020c0  2bc10000  lui r2, 12
0020c4  1f010100  addli r2, r2, 0
0020c8  ff002400  l_gm2sm r1, r2, 0(r[9:10])
0020cc  abf00000  lui r1, 15
0020d0  00200300  mfence { sm, gm }
0020d4  1b011500  andi r2, r10, 1
0020d8  9f020006  addli r5, zero, 768
0020dc  9b90f0ff  ori r1, r1, 4095
0020e0  80a10004  csr_set csr3, r1
0020e4  9f000006  addli r1, zero, 768
0020e8  00d00100  sync_group
0020ec  67082fd6  storeli.w r2, -5248(r30)
0020f0  37200100  beq r2, zero, 8
0020f4  9f02000a  addli r5, zero, 1280
0020f8  63411f00  loadli.w r2,  12(r30)
0020fc  9f110000  addli r3, zero, 1
002100  bf3c3104  blt.s r2, r3, 2860
002104  e3010fd7  loadli.w r3,  -5248(r30)
002108  00510102  load_param_i r2, 2
00210c  2b8b0000  lui r22, 8
002110  2bee0000  lui r28, 14
002114  2be70000  lui r14, 14
002118  1f030000  addli r6, zero, 0
00211c  9b441500  srli r9, r10, 1
002120  9bb72200  slli r15, r5, 2
002124  9f098fd7  addli r19, r30, -5184
002128  9f0b0005  addli r23, zero, 640
00212c  9f0c0001  addli r25, zero, 128
002130  1f0d8000  addli r26, zero, 64
002134  9f0d4000  addli r27, zero, 32
002138  9f0a0003  addli r21, zero, 384
00213c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002140  1b441100  srli r8, r2, 1
002144  2ba10000  lui r2, 10
002148  1f0b0b00  addli r22, r22, 0
00214c  1f0e0e00  addli r28, r28, 0
002150  1f070704  addli r14, r14, 512
002154  8b901120  mul.s r1, r3, r1
002158  1f010100  addli r2, r2, 0
00215c  67041fd6  storeli.w r1, -5312(r30)
002160  9bb02000  slli r1, r1, 2
002164  0b982010  add.s r16, r1, r2
002168  2bc10000  lui r2, 12
00216c  1f010100  addli r2, r2, 0
002170  8b982010  add.s r17, r1, r2
002174  abf0ffff  lui r1, 1048575
002178  1f018fd5  addli r2, r30, -5440
00217c  9b9000f8  ori r1, r1, 3968
002180  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002184  e74b1fd4  storeli.w r1, -5444(r30)
002188  abf00000  lui r1, 15
00218c  1b99f0ff  ori r18, r1, 4095
002190  db030000  j 28
002194  00a00300  mfence { lm, sm, gm }
002198  80210904  csr_set csr3, r18
00219c  00d00100  sync_group
0021a0  0b138310  add.s r6, r6, r8
0021a4  3f20d300  blt.s r6, r13, 8
0021a8  5bcd0000  j 1640
0021ac  8b109310  add.s r1, r6, r9
0021b0  cb9f16fe  ble.s r13, r1, -28
0021b4  63011f00  loadli.w r2,  8(r30)
0021b8  9f210000  addli r3, zero, 2
0021bc  1f027fd6  addli r4, r30, -5320
0021c0  8b902010  add.s r1, r1, r2
0021c4  63018fd6  loadli.w r2,  -5312(r30)
0021c8  9bb0b000  slli r1, r1, 11
0021cc  97902000  or r1, r1, r2
0021d0  b3900028  sext_int2long r[2:3], r1
0021d4  97b53002  sll.d r[12:13], r[2:3], r3
0021d8  6b510200  load.d r[3:4], 0(r4)
0021dc  ab0000f0  lui r1, 983040
0021e0  97901700  or r1, r15, r1
0021e4  0b21b110  add.ul r[3:4], r[3:4], r[12:13]
0021e8  ff203101  l_gm2lm r1, r19, 0(r[3:4])
0021ec  00a00200  mfence { lm, gm }
0021f0  e3000fd7  loadli.w r1,  -5248(r30)
0021f4  3ba60000  bneq r1, zero, 392
0021f8  9f018fd5  addli r3, r30, -5440
0021fc  63417fd5  loadli.w r2,  -5444(r30)
002200  9f000000  addli r1, zero, 0
002204  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
002208  92303002  vadd.s.mz vr1{mr1}, zero, vr3
00220c  12313002  vadd.s.mz vr2{mr1}, zero, vr3
002210  12323002  vadd.s.mz vr4{mr1}, zero, vr3
002214  0b956011  add.s r10, r1, r22
002218  8b911910  add.s r3, r19, r1
00221c  1f010101  addli r2, r2, 128
002220  9f800004  addli r1, r1, 512
002224  1f020501  addli r4, r10, 128
002228  4a100502  vloads_mask16.mz vr0{mr1}, 0(r10)
00222c  9f038500  addli r7, r10, 64
002230  42940102  vload_mask16.mz vr8{mr1}, 0(r3)
002234  9f868101  addli r13, r3, 192
002238  ca120202  vloads_mask16.mz vr5{mr1}, 0(r4)
00223c  1f028501  addli r4, r10, 192
002240  4a930302  vloads_mask16.mz vr6{mr1}, 0(r7)
002244  9f838100  addli r7, r3, 64
002248  c2950602  vload_mask16.mz vr11{mr1}, 0(r13)
00224c  ca130202  vloads_mask16.mz vr7{mr1}, 0(r4)
002250  1f820101  addli r4, r3, 128
002254  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
002258  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
00225c  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
002260  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
002264  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
002268  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
00226c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002270  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
002274  46108202  vstore_mask16.mz vr8{mr1}, 0(r4)
002278  1f020502  addli r4, r10, 256
00227c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
002280  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
002284  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
002288  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
00228c  9f830103  addli r7, r3, 384
002290  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
002294  1f028502  addli r4, r10, 320
002298  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
00229c  9f860102  addli r13, r3, 256
0022a0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0022a4  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0022a8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0022ac  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
0022b0  1f020503  addli r4, r10, 384
0022b4  c2930602  vload_mask16.mz vr7{mr1}, 0(r13)
0022b8  1f058503  addli r10, r10, 448
0022bc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0022c0  4a140202  vloads_mask16.mz vr8{mr1}, 0(r4)
0022c4  1f828102  addli r4, r3, 320
0022c8  4a150502  vloads_mask16.mz vr10{mr1}, 0(r10)
0022cc  9f818103  addli r3, r3, 448
0022d0  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
0022d4  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0022d8  c2930302  vload_mask16.mz vr7{mr1}, 0(r7)
0022dc  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0022e0  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
0022e4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0022e8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0022ec  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
0022f0  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0022f4  46106202  vstore_mask16.mz vr6{mr1}, 0(r4)
0022f8  13027105  setlt.u r4, r2, r23
0022fc  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
002300  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002304  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
002308  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00230c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
002310  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
002314  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
002318  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
00231c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002320  bb5b02fe  bneq r4, zero, -268
002324  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
002328  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00232c  9f000002  addli r1, zero, 256
002330  6af100c0  vsrl.p vr2, r1, vr0
002334  eaf110c0  vsrl.p vr3, r1, vr1
002338  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00233c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002340  6af10cc0  vsrl.p vr2, r25, vr0
002344  eaf11cc0  vsrl.p vr3, r25, vr1
002348  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00234c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002350  6a710dc0  vsrl.p vr2, r26, vr0
002354  ea711dc0  vsrl.p vr3, r26, vr1
002358  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00235c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002360  6af10dc0  vsrl.p vr2, r27, vr0
002364  eaf11dc0  vsrl.p vr3, r27, vr1
002368  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00236c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002370  fa110040  vextracti.f r3, 0(vr0)
002374  7a910040  vextracti.f r2, 0(vr1)
002378  5b630000  j 792
00237c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
002380  2bf1ffff  lui r2, 1048575
002384  9f000000  addli r1, zero, 0
002388  12311002  vadd.s.mz vr2{mr1}, zero, vr1
00238c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
002390  92311002  vadd.s.mz vr3{mr1}, zero, vr1
002394  1b1101f8  ori r2, r2, 3968
002398  0b151b10  add.s r10, r22, r1
00239c  8b911910  add.s r3, r19, r1
0023a0  1f010101  addli r2, r2, 128
0023a4  9f800004  addli r1, r1, 512
0023a8  1f0a0531  addli r20, r10, 6272
0023ac  9f030530  addli r7, r10, 6144
0023b0  1f028531  addli r4, r10, 6336
0023b4  9f860118  addli r13, r3, 3072
0023b8  ca130a02  vloads_mask16.mz vr7{mr1}, 0(r20)
0023bc  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
0023c0  9f038530  addli r7, r10, 6208
0023c4  ca140202  vloads_mask16.mz vr9{mr1}, 0(r4)
0023c8  1f828118  addli r4, r3, 3136
0023cc  1f8a8119  addli r20, r3, 3264
0023d0  42930602  vload_mask16.mz vr6{mr1}, 0(r13)
0023d4  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
0023d8  9f830119  addli r7, r3, 3200
0023dc  42100a02  vload_mask16.mz vr0{mr1}, 0(r20)
0023e0  c2150202  vload_mask16.mz vr11{mr1}, 0(r4)
0023e4  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
0023e8  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0023ec  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
0023f0  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
0023f4  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
0023f8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0023fc  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
002400  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
002404  9f030532  addli r7, r10, 6400
002408  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
00240c  46100a02  vstore_mask16.mz vr0{mr1}, 0(r20)
002410  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002414  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
002418  9f86011a  addli r13, r3, 3328
00241c  c2930602  vload_mask16.mz vr7{mr1}, 0(r13)
002420  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
002424  1f82011b  addli r4, r3, 3456
002428  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
00242c  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
002430  4a900302  vloads_mask16.mz vr0{mr1}, 0(r7)
002434  9f038532  addli r7, r10, 6464
002438  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00243c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002440  4a930302  vloads_mask16.mz vr6{mr1}, 0(r7)
002444  9f030533  addli r7, r10, 6528
002448  1f058533  addli r10, r10, 6592
00244c  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
002450  9f83811a  addli r7, r3, 3392
002454  4a150502  vloads_mask16.mz vr10{mr1}, 0(r10)
002458  9f81811b  addli r3, r3, 3520
00245c  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
002460  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
002464  c2130202  vload_mask16.mz vr7{mr1}, 0(r4)
002468  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
00246c  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
002470  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002474  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
002478  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
00247c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
002480  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
002484  93035105  setlt.u r7, r2, r21
002488  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
00248c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002490  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
002494  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
002498  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
00249c  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
0024a0  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
0024a4  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0024a8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0024ac  bbbb03fe  bneq r7, zero, -276
0024b0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0024b4  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0024b8  9f000002  addli r1, zero, 256
0024bc  2bf2ffff  lui r4, 1048575
0024c0  9f010000  addli r3, zero, 0
0024c4  1b1502f8  ori r10, r4, 3968
0024c8  eaf110c0  vsrl.p vr3, r1, vr1
0024cc  6af100c0  vsrl.p vr2, r1, vr0
0024d0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0024d4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024d8  eaf11cc0  vsrl.p vr3, r25, vr1
0024dc  6af10cc0  vsrl.p vr2, r25, vr0
0024e0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0024e4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024e8  ea711dc0  vsrl.p vr3, r26, vr1
0024ec  6a710dc0  vsrl.p vr2, r26, vr0
0024f0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0024f4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024f8  eaf11dc0  vsrl.p vr3, r27, vr1
0024fc  6af10dc0  vsrl.p vr2, r27, vr0
002500  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002504  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002508  7a910040  vextracti.f r2, 0(vr1)
00250c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
002510  fa100040  vextracti.f r1, 0(vr0)
002514  12311002  vadd.s.mz vr2{mr1}, zero, vr1
002518  12321002  vadd.s.mz vr4{mr1}, zero, vr1
00251c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
002520  0b1a3b10  add.s r20, r22, r3
002524  8b963910  add.s r13, r19, r3
002528  1f050501  addli r10, r10, 128
00252c  9f810104  addli r3, r3, 512
002530  1f020a18  addli r4, r20, 3072
002534  9f030a19  addli r7, r20, 3200
002538  42940602  vload_mask16.mz vr8{mr1}, 0(r13)
00253c  1f8c8601  addli r24, r13, 192
002540  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
002544  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
002548  1f028a18  addli r4, r20, 3136
00254c  9f038a19  addli r7, r20, 3264
002550  c2150c02  vload_mask16.mz vr11{mr1}, 0(r24)
002554  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
002558  1f820601  addli r4, r13, 128
00255c  ca930302  vloads_mask16.mz vr7{mr1}, 0(r7)
002560  9f838600  addli r7, r13, 64
002564  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
002568  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
00256c  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
002570  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
002574  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
002578  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
00257c  46108202  vstore_mask16.mz vr8{mr1}, 0(r4)
002580  1f020a1a  addli r4, r20, 3328
002584  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
002588  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00258c  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
002590  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
002594  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
002598  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
00259c  1f028a1a  addli r4, r20, 3392
0025a0  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
0025a4  1f8c0602  addli r24, r13, 256
0025a8  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
0025ac  9f830603  addli r7, r13, 384
0025b0  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0025b4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0025b8  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
0025bc  1f020a1b  addli r4, r20, 3456
0025c0  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
0025c4  1f0a8a1b  addli r20, r20, 3520
0025c8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0025cc  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0025d0  4a140202  vloads_mask16.mz vr8{mr1}, 0(r4)
0025d4  1f828602  addli r4, r13, 320
0025d8  4a150a02  vloads_mask16.mz vr10{mr1}, 0(r20)
0025dc  9f868603  addli r13, r13, 448
0025e0  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
0025e4  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0025e8  c2930302  vload_mask16.mz vr7{mr1}, 0(r7)
0025ec  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0025f0  c2940602  vload_mask16.mz vr9{mr1}, 0(r13)
0025f4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0025f8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0025fc  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
002600  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
002604  46106202  vstore_mask16.mz vr6{mr1}, 0(r4)
002608  13027505  setlt.u r4, r10, r23
00260c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
002610  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002614  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
002618  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00261c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
002620  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
002624  46907602  vstore_mask16.mz vr7{mr1}, 0(r13)
002628  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
00262c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002630  bb4b02fe  bneq r4, zero, -272
002634  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
002638  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00263c  9f010002  addli r3, zero, 256
002640  6af101c0  vsrl.p vr2, r3, vr0
002644  eaf111c0  vsrl.p vr3, r3, vr1
002648  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00264c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002650  6af10cc0  vsrl.p vr2, r25, vr0
002654  eaf11cc0  vsrl.p vr3, r25, vr1
002658  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00265c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002660  6a710dc0  vsrl.p vr2, r26, vr0
002664  ea711dc0  vsrl.p vr3, r26, vr1
002668  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00266c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002670  6af10dc0  vsrl.p vr2, r27, vr0
002674  eaf11dc0  vsrl.p vr3, r27, vr1
002678  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00267c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002680  fa110040  vextracti.f r3, 0(vr0)
002684  7a920040  vextracti.f r4, 0(vr1)
002688  8be13010  add.f.rn r3, r1, r3
00268c  0b614110  add.f.rn r2, r2, r4
002690  0b028330  div.u r4, r6, r8
002694  80330002  core_id r7
002698  9f000000  addli r1, zero, 0
00269c  1b326200  slli r4, r4, 6
0026a0  1b020204  andi r4, r4, 64
0026a4  17127200  or r4, r4, r7
0026a8  9b332200  slli r7, r4, 2
0026ac  0b95c311  add.s r10, r7, r28
0026b0  73603500  stores.w r3, 0(r10)
0026b4  9b01e207  andi r3, r4, 126
0026b8  0b92e310  add.s r4, r7, r14
0026bc  9b934300  ori r7, r7, 4
0026c0  1f050000  addli r10, zero, 0
0026c4  9bb12100  slli r3, r3, 2
0026c8  73602200  stores.w r2, 0(r4)
0026cc  0b91c311  add.s r2, r7, r28
0026d0  8b93e310  add.s r7, r7, r14
0026d4  00a00300  mfence { lm, sm, gm }
0026d8  80210904  csr_set csr3, r18
0026dc  00d00100  sync_group
0026e0  0b92c111  add.s r4, r3, r28
0026e4  6f410100  loads.w r2, 0(r2)
0026e8  8b91e110  add.s r3, r3, r14
0026ec  efc30300  loads.w r7, 0(r7)
0026f0  6f420200  loads.w r4, 0(r4)
0026f4  efc10100  loads.w r3, 0(r3)
0026f8  0b614110  add.f.rn r2, r2, r4
0026fc  8be13310  add.f.rn r3, r7, r3
002700  ab03003a  lui r7, 237568
002704  0b627120  mul.f.rn r4, r2, r7
002708  0be17120  mul.f.rn r2, r3, r7
00270c  8b614220  mul.f.rn r3, r4, r4
002710  0b613118  sub.f.rn r2, r2, r3
002714  e3013f00  loadli.w r3,  24(r30)
002718  0b613110  add.f.rn r2, r2, r3
00271c  ab01803f  lui r3, 260096
002720  0f010108  sqrt.f.rn r2, r2
002724  0f812118  div.f.rn r2, r3, r2
002728  8b610258  neg.f r3, r4
00272c  8b161810  add.s r13, r16, r1
002730  0b9a1910  add.s r20, r19, r1
002734  8b931810  add.s r7, r17, r1
002738  1f8c8600  addli r24, r13, 64
00273c  1f028a00  addli r4, r20, 64
002740  42100a02  vload_mask16.mz vr0{mr1}, 0(r20)
002744  4a910602  vloads_mask16.mz vr2{mr1}, 0(r13)
002748  4a920302  vloads_mask16.mz vr4{mr1}, 0(r7)
00274c  ca110c02  vloads_mask16.mz vr3{mr1}, 0(r24)
002750  1f8c8300  addli r24, r7, 64
002754  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
002758  ca120c02  vloads_mask16.mz vr5{mr1}, 0(r24)
00275c  1f0c4500  addli r24, r10, 32
002760  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
002764  138c8207  setle.u r24, r5, r24
002768  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
00276c  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
002770  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
002774  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
002778  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
00277c  46104a02  vstore_mask16.mz vr4{mr1}, 0(r20)
002780  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
002784  bb110c00  bneq r24, zero, 100
002788  1f8c0601  addli r24, r13, 128
00278c  1f020a01  addli r4, r20, 128
002790  1f0a8a01  addli r20, r20, 192
002794  9f868601  addli r13, r13, 192
002798  1f058500  addli r10, r10, 64
00279c  9f800002  addli r1, r1, 256
0027a0  4a110c02  vloads_mask16.mz vr2{mr1}, 0(r24)
0027a4  1f8c0301  addli r24, r7, 128
0027a8  9f838301  addli r7, r7, 192
0027ac  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
0027b0  c2100a02  vload_mask16.mz vr1{mr1}, 0(r20)
0027b4  4a920602  vloads_mask16.mz vr4{mr1}, 0(r13)
0027b8  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
0027bc  ca110c02  vloads_mask16.mz vr3{mr1}, 0(r24)
0027c0  93035504  setlt.u r7, r10, r5
0027c4  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
0027c8  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
0027cc  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
0027d0  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
0027d4  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
0027d8  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
0027dc  46103202  vstore_mask16.mz vr3{mr1}, 0(r4)
0027e0  46105a02  vstore_mask16.mz vr5{mr1}, 0(r20)
0027e4  3bad03fe  bneq r7, zero, -184
0027e8  6b510f00  load.d r[3:4], 0(r30)
0027ec  ab0000f0  lui r1, 983040
0027f0  00a00000  mfence { lm }
0027f4  97901700  or r1, r15, r1
0027f8  0b21b110  add.ul r[3:4], r[3:4], r[12:13]
0027fc  ff303101  s_lm2gm r1, r19, 0(r[3:4])
002800  00a00200  mfence { lm, gm }
002804  e3461f00  loadli.w r13,  12(r30)
002808  0b138310  add.s r6, r6, r8
00280c  bf06d3fc  blt.s r6, r13, -1632
002810  abf00000  lui r1, 15
002814  9b90f0ff  ori r1, r1, 4095
002818  80a10004  csr_set csr3, r1
00281c  00d00100  sync_group
002820  db810000  j 1036
002824  63012f00  loadli.w r2,  16(r30)
002828  ab0100f0  lui r3, 983040
00282c  1b312100  slli r2, r2, 2
002830  17113100  or r2, r2, r3
002834  ab010100  lui r3, 16
002838  9f810108  addli r3, r3, 1024
00283c  7f013400  l_gm2sm r2, r3, 0(r[9:10])
002840  2bf10000  lui r2, 15
002844  e3411f00  loadli.w r3,  12(r30)
002848  00200300  mfence { sm, gm }
00284c  1b11f1ff  ori r2, r2, 4095
002850  80210104  csr_set csr3, r2
002854  00d00100  sync_group
002858  4bdf1100  ble.s r3, r1, 980
00285c  63012f00  loadli.w r2,  16(r30)
002860  e3412f00  loadli.w r3,  20(r30)
002864  2bea0000  lui r20, 14
002868  abfa0000  lui r21, 15
00286c  2b0b0100  lui r22, 16
002870  9f048fd7  addli r9, r30, -5184
002874  9f150000  addli r11, zero, 1
002878  9f060002  addli r13, zero, 256
00287c  9f080001  addli r17, zero, 128
002880  1f098000  addli r18, zero, 64
002884  9f094000  addli r19, zero, 32
002888  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00288c  1f0a0a08  addli r20, r20, 1024
002890  9f8a0a08  addli r21, r21, 1024
002894  1f0b0b08  addli r22, r22, 1024
002898  1b342100  slli r8, r2, 2
00289c  8b123110  add.s r5, r2, r3
0028a0  33010108  fix2float.rn r2, r2
0028a4  1bb32100  slli r6, r3, 2
0028a8  e74b2fd4  storeli.w r2, -5444(r30)
0028ac  1ff1f2ff  addli r2, r5, -1
0028b0  670c8fd4  storeli.w r8, -5440(r30)
0028b4  8b133130  div.s r7, r2, r3
0028b8  2bf1ffff  lui r2, 1048575
0028bc  1b16f1ff  ori r12, r2, 4095
0028c0  1f010fd7  addli r2, r30, -5248
0028c4  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0028c8  5b080000  j 64
0028cc  9f028fd6  addli r5, r30, -5312
0028d0  00a00000  mfence { lm }
0028d4  eb510f00  load.d r[4:5], 0(r30)
0028d8  2b0100f0  lui r2, 983040
0028dc  63048fd5  loadli.w r8,  -5440(r30)
0028e0  ebdb0200  load.d r[24:25], 0(r5)
0028e4  17112400  or r2, r8, r2
0028e8  8bab7111  add.ul r[24:25], r[4:5], r[24:25]
0028ec  80510102  load_param_i r3, 2
0028f0  7fb19b00  s_lm2gm r2, r9, 0(r[24:25])
0028f4  8b901110  add.s r1, r3, r1
0028f8  00a00200  mfence { lm, gm }
0028fc  63411f00  loadli.w r2,  12(r30)
002900  3fa02000  blt.s r1, r2, 8
002904  5b650000  j 808
002908  63011f00  loadli.w r2,  8(r30)
00290c  1f220000  addli r4, zero, 2
002910  9f027fd6  addli r5, r30, -5320
002914  0b912010  add.s r2, r1, r2
002918  0b11f120  mul.s r2, r2, r15
00291c  33110128  sext_int2long r[3:4], r2
002920  973b4102  sll.d r[24:25], r[3:4], r4
002924  ebd10200  load.d r[4:5], 0(r5)
002928  2b0100f0  lui r2, 983040
00292c  9f028fd6  addli r5, r30, -5312
002930  17112400  or r2, r8, r2
002934  73b07201  store.d r[24:25], 0(r5)
002938  8bac7111  add.ul r[26:27], r[4:5], r[24:25]
00293c  7fa19c00  l_gm2lm r2, r9, 0(r[26:27])
002940  00a00200  mfence { lm, gm }
002944  bf97b300  blt.s r7, r11, 484
002948  9f010000  addli r3, zero, 0
00294c  1f010000  addli r2, zero, 0
002950  1f050000  addli r10, zero, 0
002954  db0c0000  j 100
002958  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
00295c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002960  1f150500  addli r10, r10, 1
002964  6af106c0  vsrl.p vr2, r13, vr0
002968  eaf116c0  vsrl.p vr3, r13, vr1
00296c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002970  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002974  6af108c0  vsrl.p vr2, r17, vr0
002978  eaf118c0  vsrl.p vr3, r17, vr1
00297c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002980  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002984  6a7109c0  vsrl.p vr2, r18, vr0
002988  ea7119c0  vsrl.p vr3, r18, vr1
00298c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002990  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002994  6af109c0  vsrl.p vr2, r19, vr0
002998  eaf119c0  vsrl.p vr3, r19, vr1
00299c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0029a0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0029a4  7a120040  vextracti.f r4, 0(vr0)
0029a8  fa920040  vextracti.f r5, 0(vr1)
0029ac  8be14110  add.f.rn r3, r3, r4
0029b0  0b615110  add.f.rn r2, r2, r5
0029b4  b7757500  beq r10, r7, 380
0029b8  9f020500  addli r5, r10, 0
0029bc  3730d700  beq r14, r13, 12
0029c0  9722c500  xor r5, r10, r12
0029c4  8b925310  add.s r5, r7, r5
0029c8  1f020fd7  addli r4, r30, -5248
0029cc  0b94e220  mul.s r8, r5, r14
0029d0  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
0029d4  0b948718  sub.s r8, r15, r8
0029d8  8b1ce440  min.s r25, r8, r14
0029dc  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0029e0  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0029e4  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0029e8  bfcdbcfe  blt.s r25, r11, -144
0029ec  42120202  vload_mask16.mz vr4{mr1}, 0(r4)
0029f0  1f0d0000  addli r26, zero, 0
0029f4  8b1d5320  mul.s r27, r6, r5
0029f8  1f0e8fd7  addli r28, r30, -5184
0029fc  1f080a00  addli r16, r20, 0
002a00  92304002  vadd.s.mz vr1{mr1}, zero, vr4
002a04  12314002  vadd.s.mz vr2{mr1}, zero, vr4
002a08  92314002  vadd.s.mz vr3{mr1}, zero, vr4
002a0c  8b12b811  add.s r5, r16, r27
002a10  0b14be11  add.s r8, r28, r27
002a14  1f828200  addli r4, r5, 64
002a18  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
002a1c  9f8b8201  addli r23, r5, 192
002a20  c2140402  vload_mask16.mz vr9{mr1}, 0(r8)
002a24  1f0c8401  addli r24, r8, 192
002a28  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
002a2c  1f820201  addli r4, r5, 128
002a30  4a940b02  vloads_mask16.mz vr8{mr1}, 0(r23)
002a34  9f0b0401  addli r23, r8, 128
002a38  42100c02  vload_mask16.mz vr0{mr1}, 0(r24)
002a3c  ca130202  vloads_mask16.mz vr7{mr1}, 0(r4)
002a40  c2950b02  vload_mask16.mz vr11{mr1}, 0(r23)
002a44  1f028400  addli r4, r8, 64
002a48  42150202  vload_mask16.mz vr10{mr1}, 0(r4)
002a4c  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
002a50  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
002a54  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
002a58  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
002a5c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002a60  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002a64  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
002a68  46106202  vstore_mask16.mz vr6{mr1}, 0(r4)
002a6c  1f028d00  addli r4, r26, 64
002a70  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
002a74  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
002a78  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002a7c  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
002a80  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002a84  46907b02  vstore_mask16.mz vr7{mr1}, 0(r23)
002a88  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
002a8c  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
002a90  4bab4cfe  ble.s r25, r4, -312
002a94  9f8b0202  addli r23, r5, 256
002a98  1f8c8202  addli r24, r5, 320
002a9c  1f020402  addli r4, r8, 256
002aa0  1f0d0d01  addli r26, r26, 128
002aa4  1f080804  addli r16, r16, 512
002aa8  1f0e0e04  addli r28, r28, 512
002aac  4a900b02  vloads_mask16.mz vr0{mr1}, 0(r23)
002ab0  9f8b0203  addli r23, r5, 384
002ab4  9f828203  addli r5, r5, 448
002ab8  ca120c02  vloads_mask16.mz vr5{mr1}, 0(r24)
002abc  42130202  vload_mask16.mz vr6{mr1}, 0(r4)
002ac0  ca930b02  vloads_mask16.mz vr7{mr1}, 0(r23)
002ac4  4a940202  vloads_mask16.mz vr8{mr1}, 0(r5)
002ac8  9f020403  addli r5, r8, 384
002acc  9f0b8402  addli r23, r8, 320
002ad0  1f048403  addli r8, r8, 448
002ad4  42950202  vload_mask16.mz vr10{mr1}, 0(r5)
002ad8  c2940b02  vload_mask16.mz vr9{mr1}, 0(r23)
002adc  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
002ae0  42130402  vload_mask16.mz vr6{mr1}, 0(r8)
002ae4  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
002ae8  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
002aec  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
002af0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002af4  46100202  vstore_mask16.mz vr0{mr1}, 0(r4)
002af8  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
002afc  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
002b00  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
002b04  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002b08  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
002b0c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002b10  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002b14  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
002b18  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
002b1c  46106402  vstore_mask16.mz vr6{mr1}, 0(r8)
002b20  bf3b9dff  blt.s r26, r25, -276
002b24  dbc6ffff  j -460
002b28  1f010000  addli r2, zero, 0
002b2c  9f010000  addli r3, zero, 0
002b30  00a00000  mfence { lm }
002b34  3fe6b7fe  blt.s r15, r11, -616
002b38  63427fd5  loadli.w r4,  -5444(r30)
002b3c  1f050000  addli r10, zero, 0
002b40  1f080000  addli r16, zero, 0
002b44  8f814118  div.f.rn r3, r3, r4
002b48  0f014118  div.f.rn r2, r2, r4
002b4c  63023f00  loadli.w r4,  24(r30)
002b50  8be23120  mul.f.rn r5, r3, r3
002b54  8be10158  neg.f r3, r3
002b58  0b615118  sub.f.rn r2, r2, r5
002b5c  0b614110  add.f.rn r2, r2, r4
002b60  2b02803f  lui r4, 260096
002b64  0f010108  sqrt.f.rn r2, r2
002b68  0f012218  div.f.rn r2, r4, r2
002b6c  0b145511  add.s r8, r10, r21
002b70  8b92a410  add.s r5, r9, r10
002b74  9f0c8400  addli r25, r8, 64
002b78  4a110402  vloads_mask16.mz vr2{mr1}, 0(r8)
002b7c  0b146511  add.s r8, r10, r22
002b80  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
002b84  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
002b88  9f8c8200  addli r25, r5, 64
002b8c  4a120402  vloads_mask16.mz vr4{mr1}, 0(r8)
002b90  1f048400  addli r8, r8, 64
002b94  c2920c02  vload_mask16.mz vr5{mr1}, 0(r25)
002b98  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
002b9c  1f044800  addli r8, r16, 32
002ba0  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
002ba4  92925102  vadd.f.mz.rn vr5{mr1}, r3, vr5
002ba8  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
002bac  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002bb0  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
002bb4  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
002bb8  46904202  vstore_mask16.mz vr4{mr1}, 0(r5)
002bbc  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
002bc0  4bb487fe  ble.s r15, r8, -756
002bc4  0b94aa10  add.s r8, r21, r10
002bc8  8b1cab10  add.s r25, r22, r10
002bcc  1f088800  addli r16, r16, 64
002bd0  1f050502  addli r10, r10, 256
002bd4  1f0d0401  addli r26, r8, 128
002bd8  9f8d0c01  addli r27, r25, 128
002bdc  1f048401  addli r8, r8, 192
002be0  9f8c8c01  addli r25, r25, 192
002be4  ca100d02  vloads_mask16.mz vr1{mr1}, 0(r26)
002be8  1f8d0201  addli r26, r5, 128
002bec  9f828201  addli r5, r5, 192
002bf0  4a910d02  vloads_mask16.mz vr2{mr1}, 0(r27)
002bf4  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
002bf8  4a930c02  vloads_mask16.mz vr6{mr1}, 0(r25)
002bfc  c2110d02  vload_mask16.mz vr3{mr1}, 0(r26)
002c00  42920202  vload_mask16.mz vr4{mr1}, 0(r5)
002c04  92913102  vadd.f.mz.rn vr3{mr1}, r3, vr3
002c08  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
002c0c  8a113102  vmul.f.mz.rn vr3{mr1}, r2, vr3
002c10  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
002c14  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
002c18  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
002c1c  46102d02  vstore_mask16.mz vr2{mr1}, 0(r26)
002c20  46906202  vstore_mask16.mz vr6{mr1}, 0(r5)
002c24  3f2df8fe  blt.s r16, r15, -184
002c28  db94ffff  j -860
002c2c  9f0e0fd5  addli sp, r30, -5504
002c30  e38fae2a  loadli.w r31,  5456(sp)
002c34  63cfae2a  loadli.w r30,  5460(sp)
002c38  638ebe2a  loadli.w r28,  5464(sp)
002c3c  e3cdbe2a  loadli.w r27,  5468(sp)
002c40  638dce2a  loadli.w r26,  5472(sp)
002c44  e3ccce2a  loadli.w r25,  5476(sp)
002c48  638cde2a  loadli.w r24,  5480(sp)
002c4c  e3cbde2a  loadli.w r23,  5484(sp)
002c50  638bee2a  loadli.w r22,  5488(sp)
002c54  e3caee2a  loadli.w r21,  5492(sp)
002c58  638afe2a  loadli.w r20,  5496(sp)
002c5c  e3c9fe2a  loadli.w r19,  5500(sp)
002c60  9f8e0e2b  addli sp, sp, 5504
002c64  5f800f00  jr r31, 0
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
002ea4  00100000  exit
