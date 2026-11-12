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
0000e8  634a5f00  loadli.w r20,  44(r30)
0000ec  e3005f00  loadli.w r1,  40(r30)
0000f0  630d6f00  loadli.w r26,  48(r30)
0000f4  8b101a20  mul.s r1, r20, r1
0000f8  0b9ba021  mul.s r22, r1, r26
0000fc  cb615b01  ble.s r22, r21, 120
000100  ab10833a  lui r1, 239665
000104  80db0002  load_param_i r23, 1
000108  1f0c6001  addli r24, zero, 176
00010c  9f0c0010  addli r25, zero, 2048
000110  9f1d0000  addli r27, zero, 1
000114  1f0e000c  addli r28, zero, 1536
000118  9b99f026  ori r19, r1, 623
00011c  8b90aa31  div.s r1, r21, r26
000120  1f220000  addli r4, zero, 2
000124  6b530f01  load.d r[7:8], 16(r30)
000128  6b548f01  load.d r[9:10], 24(r30)
00012c  e7c1be01  storeli.w r27, 28(sp)
000130  67c1ce01  storeli.w r28, 20(sp)
000134  67819e01  storeli.w r25, 16(sp)
000138  e7813e01  storeli.w r19, 24(sp)
00013c  67824e00  storeli.w r4, 32(sp)
000140  6b520f02  load.d r[5:6], 32(r30)
000144  73b04e00  store.d r[5:6], 0(sp)
000148  6b528f00  load.d r[5:6], 8(r30)
00014c  8b904031  div.s r1, r1, r20
000150  8b908021  mul.s r1, r1, r24
000154  0b911c18  sub.s r2, r25, r1
000158  e7801e00  storeli.w r1, 8(sp)
00015c  0b118141  min.s r2, r2, r24
000160  e7c02e00  storeli.w r2, 12(sp)
000164  6b510f00  load.d r[3:4], 0(r30)
000168  57300000  jal 384
00016c  8b9a7a11  add.s r21, r21, r23
000170  bfbe6aff  blt.s r21, r22, -84
000174  9f8e8e00  addli sp, sp, 64
000178  00a00300  mfence { lm, sm, gm }
00017c  00100000  exit
000180  9f8e0ed5  addli sp, sp, -5504
000184  67c5ee2b  storeli.w r30, 5460(sp)
000188  1f8f0e2b  addli r30, sp, 5504
00018c  1f150000  addli r10, zero, 1
000190  e7c73e2b  storeli.w r19, 5500(sp)
000194  e7874e2b  storeli.w r20, 5496(sp)
000198  67c75e2b  storeli.w r21, 5492(sp)
00019c  67876e2b  storeli.w r22, 5488(sp)
0001a0  e7c67e2b  storeli.w r23, 5484(sp)
0001a4  e7868e2b  storeli.w r24, 5480(sp)
0001a8  67c69e2b  storeli.w r25, 5476(sp)
0001ac  6786ae2b  storeli.w r26, 5472(sp)
0001b0  e7c5be2b  storeli.w r27, 5468(sp)
0001b4  e785ce2b  storeli.w r28, 5464(sp)
0001b8  6785fe2b  storeli.w r31, 5456(sp)
0001bc  e3004f00  loadli.w r1,  32(r30)
0001c0  63472f00  loadli.w r14,  20(r30)
0001c4  e3072f00  loadli.w r15,  16(r30)
0001c8  e3461f00  loadli.w r13,  12(r30)
0001cc  9f057fd6  addli r11, r30, -5320
0001d0  73b02500  store.d r[3:4], 0(r11)
0001d4  37b1a000  beq r1, r10, 76
0001d8  1f210000  addli r2, zero, 2
0001dc  3b922000  bneq r1, r2, 132
0001e0  e3403f00  loadli.w r1,  28(r30)
0001e4  37930000  beq r1, zero, 196
0001e8  80350002  core_id r11
0001ec  9f200000  addli r1, zero, 2
0001f0  37b3150a  beq r11, r1, 5324
0001f4  9f100000  addli r1, zero, 1
0001f8  3792150a  beq r11, r1, 5252
0001fc  3bf3050a  bneq r11, zero, 5340
000200  e3002f00  loadli.w r1,  16(r30)
000204  2b0100f0  lui r2, 983040
000208  9bb01000  slli r1, r1, 1
00020c  97902000  or r1, r1, r2
000210  2b010000  lui r2, 0
000214  1f010100  addli r2, r2, 0
000218  ff002200  l_gm2sm r1, r2, 0(r[5:6])
00021c  db970200  j 5308
000220  e3403f00  loadli.w r1,  28(r30)
000224  b7980002  beq r1, zero, 1572
000228  80300002  core_id r1
00022c  1f210000  addli r2, zero, 2
000230  379a200c  beq r1, r2, 6788
000234  1f110000  addli r2, zero, 1
000238  b791200a  beq r1, r2, 5220
00023c  3bda000c  bneq r1, zero, 6804
000240  63012f00  loadli.w r2,  16(r30)
000244  ab0100f0  lui r3, 983040
000248  1b311100  slli r2, r2, 1
00024c  17113100  or r2, r2, r3
000250  ab410000  lui r3, 4
000254  9f810100  addli r3, r3, 0
000258  7f013200  l_gm2sm r2, r3, 0(r[5:6])
00025c  db4e0300  j 6772
000260  e3403f00  loadli.w r1,  28(r30)
000264  37f50004  beq r1, zero, 2396
000268  e3002f00  loadli.w r1,  16(r30)
00026c  1f010010  addli r2, zero, 2048
000270  3b912008  bneq r1, r2, 4164
000274  00350002  core_id r10
000278  9f200000  addli r1, zero, 2
00027c  3719150e  beq r10, r1, 7748
000280  9f100000  addli r1, zero, 1
000284  3708150e  beq r10, r1, 7680
000288  3b49050e  bneq r10, zero, 7760
00028c  9f000040  addli r1, zero, 8192
000290  2b0100f0  lui r2, 983040
000294  97902000  or r1, r1, r2
000298  2b810000  lui r2, 8
00029c  1f010100  addli r2, r2, 0
0002a0  ff002200  l_gm2sm r1, r2, 0(r[5:6])
0002a4  dbc60300  j 7732
0002a8  00330002  core_id r6
0002ac  bb000300  bneq r6, zero, 32
0002b0  e3002f00  loadli.w r1,  16(r30)
0002b4  2b0100f0  lui r2, 983040
0002b8  9bb01000  slli r1, r1, 1
0002bc  97902000  or r1, r1, r2
0002c0  2b310000  lui r2, 3
0002c4  1f010100  addli r2, r2, 0
0002c8  ff002200  l_gm2sm r1, r2, 0(r[5:6])
0002cc  abf00000  lui r1, 15
0002d0  63411f00  loadli.w r2,  12(r30)
0002d4  00200300  mfence { sm, gm }
0002d8  9b90f0ff  ori r1, r1, 4095
0002dc  80a10004  csr_set csr3, r1
0002e0  00d00100  sync_group
0002e4  4b556114  ble.s r2, r6, 10580
0002e8  e3002f00  loadli.w r1,  16(r30)
0002ec  63412f00  loadli.w r2,  20(r30)
0002f0  9f062000  addli r13, zero, 16
0002f4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0002f8  1f140000  addli r8, zero, 1
0002fc  1f058fd7  addli r10, r30, -5184
000300  1f060002  addli r12, zero, 256
000304  2b08ffff  lui r16, 1048560
000308  2b09807f  lui r18, 522240
00030c  ab09c07f  lui r19, 523264
000310  1f0a0001  addli r20, zero, 128
000314  9f0a8000  addli r21, zero, 64
000318  1f0b4000  addli r22, zero, 32
00031c  1bb21000  slli r4, r1, 1
000320  8b912010  add.s r3, r1, r2
000324  b3800008  fix2float.rn r1, r1
000328  9b321100  slli r5, r2, 1
00032c  e70b1fd4  storeli.w r1, -5448(r30)
000330  9ff0f1ff  addli r1, r3, -1
000334  e74b4fd4  storeli.w r4, -5444(r30)
000338  8b932030  div.s r7, r1, r2
00033c  abf0ffff  lui r1, 1048575
000340  9b95f0ff  ori r11, r1, 4095
000344  9f000fd7  addli r1, r30, -5248
000348  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00034c  6aa00622  vor.u.mz vr0{mr1}, r13, vr0
000350  9f008fd6  addli r1, r30, -5312
000354  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000358  ab700000  lui r1, 7
00035c  9b98f0ff  ori r17, r1, 4095
000360  db080000  j 68
000364  1f028fd5  addli r4, r30, -5440
000368  00a00000  mfence { lm }
00036c  6b510f00  load.d r[3:4], 0(r30)
000370  ab0000f0  lui r1, 983040
000374  eb540200  load.d r[10:11], 0(r4)
000378  63427fd5  loadli.w r4,  -5444(r30)
00037c  0b219110  add.ul r[3:4], r[3:4], r[10:11]
000380  97101200  or r1, r4, r1
000384  1f058fd7  addli r10, r30, -5184
000388  80540102  load_param_i r9, 2
00038c  ff30a100  s_lm2gm r1, r10, 0(r[3:4])
000390  0b936410  add.s r6, r9, r6
000394  00a00200  mfence { lm, gm }
000398  e3401f00  loadli.w r1,  12(r30)
00039c  3f201300  blt.s r6, r1, 8
0003a0  5b130500  j 10392
0003a4  e3001f00  loadli.w r1,  8(r30)
0003a8  9f047fd6  addli r9, r30, -5320
0003ac  8b101310  add.s r1, r6, r1
0003b0  8b90f020  mul.s r1, r1, r15
0003b4  b3900028  sext_int2long r[2:3], r1
0003b8  97bb8002  sll.d r[24:25], r[2:3], r8
0003bc  6bd10400  load.d r[3:4], 0(r9)
0003c0  ab0000f0  lui r1, 983040
0003c4  9f048fd5  addli r9, r30, -5440
0003c8  97101200  or r1, r4, r1
0003cc  73b07401  store.d r[24:25], 0(r9)
0003d0  0b217111  add.ul r[3:4], r[3:4], r[24:25]
0003d4  ff20a100  l_gm2lm r1, r10, 0(r[3:4])
0003d8  00a00200  mfence { lm, gm }
0003dc  bfdc8300  blt.s r7, r8, 820
0003e0  1f0e0000  addli r28, zero, 0
0003e4  9f0d0000  addli r27, zero, 0
0003e8  9f0b0000  addli r23, zero, 0
0003ec  db0c0000  j 100
0003f0  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
0003f4  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
0003f8  9f9b0b00  addli r23, r23, 1
0003fc  6a7106c0  vsrl.p vr2, r12, vr0
000400  ea7116c0  vsrl.p vr3, r12, vr1
000404  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000408  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00040c  6a710ac0  vsrl.p vr2, r20, vr0
000410  ea711ac0  vsrl.p vr3, r20, vr1
000414  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000418  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00041c  6af10ac0  vsrl.p vr2, r21, vr0
000420  eaf11ac0  vsrl.p vr3, r21, vr1
000424  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000428  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00042c  6a710bc0  vsrl.p vr2, r22, vr0
000430  ea711bc0  vsrl.p vr3, r22, vr1
000434  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000438  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00043c  fa100040  vextracti.f r1, 0(vr0)
000440  7a910040  vextracti.f r2, 0(vr1)
000444  0b6e1e10  add.f.rn r28, r28, r1
000448  8bed2d10  add.f.rn r27, r27, r2
00044c  37bb7b00  beq r23, r7, 716
000450  9f800b00  addli r1, r23, 0
000454  3730c700  beq r14, r12, 12
000458  97a0bb00  xor r1, r23, r11
00045c  8b901310  add.s r1, r7, r1
000460  0b91e020  mul.s r2, r1, r14
000464  0b912718  sub.s r2, r15, r2
000468  0b15e140  min.s r10, r2, r14
00046c  1f010fd7  addli r2, r30, -5248
000470  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
000474  92322002  vadd.s.mz vr5{mr1}, zero, vr2
000478  12322002  vadd.s.mz vr4{mr1}, zero, vr2
00047c  92312002  vadd.s.mz vr3{mr1}, zero, vr2
000480  bf4d85fe  blt.s r10, r8, -144
000484  8b911220  mul.s r3, r5, r1
000488  9f000fd7  addli r1, r30, -5248
00048c  2b3c0000  lui r24, 3
000490  1f010000  addli r2, zero, 0
000494  9f048fd7  addli r9, r30, -5184
000498  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
00049c  1f0c0c00  addli r24, r24, 0
0004a0  12315002  vadd.s.mz vr2{mr1}, zero, vr5
0004a4  92315002  vadd.s.mz vr3{mr1}, zero, vr5
0004a8  12325002  vadd.s.mz vr4{mr1}, zero, vr5
0004ac  8b1c3c10  add.s r25, r24, r3
0004b0  8b903410  add.s r1, r9, r3
0004b4  1f028fd6  addli r4, r30, -5312
0004b8  4a830c02  vloads.mz vr6{mr1}, 0(r25)
0004bc  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
0004c0  c2830002  vload.mz vr7{mr1}, 0(r1)
0004c4  1f020fd7  addli r4, r30, -5248
0004c8  1f8d8c00  addli r26, r25, 64
0004cc  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
0004d0  1f028100  addli r4, r2, 64
0004d4  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
0004d8  6a357802  vand.s.mz vr10{mr1}, r16, vr7
0004dc  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
0004e0  6a336802  vand.s.mz vr6{mr1}, r16, vr6
0004e4  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
0004e8  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0004ec  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
0004f0  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
0004f4  669503c0  vabs.f vr10, vr7
0004f8  6a348402  vand.s.mz vr8{mr1}, r8, vr8
0004fc  ea349402  vand.s.mz vr9{mr1}, r8, vr9
000500  7221a942  vlt.u.mz mr2{mr1}, r18, vr10
000504  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
000508  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
00050c  12b48802  vadd.s.mz vr8{mr1}, r17, vr8
000510  92b49802  vadd.s.mz vr9{mr1}, r17, vr9
000514  ea338802  vand.s.mz vr7{mr1}, r16, vr8
000518  661403c0  vabs.f vr8, vr6
00051c  6a339802  vand.s.mz vr6{mr1}, r16, vr9
000520  eaa30934  vor.u.mh vr7{mr2}, r19, vr0
000524  72218942  vlt.u.mz mr2{mr1}, r18, vr8
000528  6aa30934  vor.u.mh vr6{mr2}, r19, vr0
00052c  4a040d02  vloads.mz vr8{mr1}, 0(r26)
000530  1f8d8000  addli r26, r1, 64
000534  c2040d02  vload.mz vr9{mr1}, 0(r26)
000538  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
00053c  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
000540  6a336802  vand.s.mz vr6{mr1}, r16, vr6
000544  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
000548  ea349802  vand.s.mz vr9{mr1}, r16, vr9
00054c  46807002  vstore.mz vr7{mr1}, 0(r1)
000550  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
000554  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
000558  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
00055c  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
000560  6a348802  vand.s.mz vr8{mr1}, r16, vr8
000564  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
000568  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
00056c  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
000570  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
000574  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
000578  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
00057c  ea349402  vand.s.mz vr9{mr1}, r8, vr9
000580  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
000584  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
000588  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
00058c  661505c0  vabs.f vr10, vr10
000590  661404c0  vabs.f vr8, vr8
000594  92b49802  vadd.s.mz vr9{mr1}, r17, vr9
000598  92b5b802  vadd.s.mz vr11{mr1}, r17, vr11
00059c  7221a942  vlt.u.mz mr2{mr1}, r18, vr10
0005a0  ea349802  vand.s.mz vr9{mr1}, r16, vr9
0005a4  6a35b802  vand.s.mz vr10{mr1}, r16, vr11
0005a8  eaa40934  vor.u.mh vr9{mr2}, r19, vr0
0005ac  72218942  vlt.u.mz mr2{mr1}, r18, vr8
0005b0  6aa50934  vor.u.mh vr10{mr2}, r19, vr0
0005b4  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
0005b8  ea34a802  vand.s.mz vr9{mr1}, r16, vr10
0005bc  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
0005c0  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
0005c4  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
0005c8  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
0005cc  46008d02  vstore.mz vr8{mr1}, 0(r26)
0005d0  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0005d4  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0005d8  4b6845fe  ble.s r10, r4, -488
0005dc  1f820c01  addli r4, r25, 128
0005e0  1f8d0001  addli r26, r1, 128
0005e4  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
0005e8  9f808001  addli r1, r1, 192
0005ec  1f010101  addli r2, r2, 128
0005f0  1f0c0c02  addli r24, r24, 256
0005f4  9f840402  addli r9, r9, 256
0005f8  6aa37622  vor.u.mz vr6{mr1}, r13, vr7
0005fc  4a040202  vloads.mz vr8{mr1}, 0(r4)
000600  c2040d02  vload.mz vr9{mr1}, 0(r26)
000604  1f828c01  addli r4, r25, 192
000608  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
00060c  6a309802  vand.s.mz vr0{mr1}, r16, vr9
000610  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
000614  6a348802  vand.s.mz vr8{mr1}, r16, vr8
000618  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
00061c  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
000620  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
000624  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
000628  e69504c0  vabs.f vr11, vr9
00062c  6a300402  vand.s.mz vr0{mr1}, r8, vr0
000630  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
000634  7221b942  vlt.u.mz mr2{mr1}, r18, vr11
000638  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
00063c  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
000640  12b00802  vadd.s.mz vr0{mr1}, r17, vr0
000644  12b5a802  vadd.s.mz vr10{mr1}, r17, vr10
000648  ea340802  vand.s.mz vr9{mr1}, r16, vr0
00064c  661004c0  vabs.f vr0, vr8
000650  6a34a802  vand.s.mz vr8{mr1}, r16, vr10
000654  eaa47934  vor.u.mh vr9{mr2}, r19, vr7
000658  72210942  vlt.u.mz mr2{mr1}, r18, vr0
00065c  6aa47934  vor.u.mh vr8{mr2}, r19, vr7
000660  4a000202  vloads.mz vr0{mr1}, 0(r4)
000664  42850002  vload.mz vr10{mr1}, 0(r1)
000668  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
00066c  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
000670  6a35a802  vand.s.mz vr10{mr1}, r16, vr10
000674  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
000678  6a348802  vand.s.mz vr8{mr1}, r16, vr8
00067c  46009d02  vstore.mz vr9{mr1}, 0(r26)
000680  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
000684  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
000688  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
00068c  6a300802  vand.s.mz vr0{mr1}, r16, vr0
000690  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
000694  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
000698  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
00069c  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
0006a0  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
0006a4  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
0006a8  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
0006ac  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
0006b0  e69000c0  vabs.f vr1, vr1
0006b4  661000c0  vabs.f vr0, vr0
0006b8  12b5a802  vadd.s.mz vr10{mr1}, r17, vr10
0006bc  92b5b802  vadd.s.mz vr11{mr1}, r17, vr11
0006c0  72211942  vlt.u.mz mr2{mr1}, r18, vr1
0006c4  6a35a802  vand.s.mz vr10{mr1}, r16, vr10
0006c8  ea30b802  vand.s.mz vr1{mr1}, r16, vr11
0006cc  6aa57934  vor.u.mh vr10{mr2}, r19, vr7
0006d0  72210942  vlt.u.mz mr2{mr1}, r18, vr0
0006d4  eaa07934  vor.u.mh vr1{mr2}, r19, vr7
0006d8  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
0006dc  ea331802  vand.s.mz vr7{mr1}, r16, vr1
0006e0  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
0006e4  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
0006e8  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0006ec  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0006f0  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
0006f4  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
0006f8  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
0006fc  46800002  vstore.mz vr0{mr1}, 0(r1)
000700  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
000704  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000708  bf16a1fe  blt.s r2, r10, -604
00070c  db9cffff  j -796
000710  9f0d0000  addli r27, zero, 0
000714  1f0e0000  addli r28, zero, 0
000718  00a00000  mfence { lm }
00071c  3fa187fe  blt.s r15, r8, -952
000720  e3007fd5  loadli.w r1,  -5448(r30)
000724  9f040000  addli r9, zero, 0
000728  0f011e18  div.f.rn r2, r28, r1
00072c  8f801d18  div.f.rn r1, r27, r1
000730  8b612120  mul.f.rn r3, r2, r2
000734  0b610158  neg.f r2, r2
000738  8be03018  sub.f.rn r1, r1, r3
00073c  e3013f00  loadli.w r3,  24(r30)
000740  8be03010  add.f.rn r1, r1, r3
000744  ab01803f  lui r3, 260096
000748  8f800008  sqrt.f.rn r1, r1
00074c  8f801118  div.f.rn r1, r3, r1
000750  9f018fd7  addli r3, r30, -5184
000754  42820102  vload.mz vr4{mr1}, 0(r3)
000758  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
00075c  1f854400  addli r10, r9, 32
000760  eaa12622  vor.u.mz vr3{mr1}, r13, vr2
000764  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
000768  6a324802  vand.s.mz vr4{mr1}, r16, vr4
00076c  92125102  vadd.f.mz.rn vr5{mr1}, r2, vr5
000770  12124102  vadd.f.mz.rn vr4{mr1}, r2, vr4
000774  8a925002  vmul.f.mz.rn vr5{mr1}, r1, vr5
000778  0a924002  vmul.f.mz.rn vr4{mr1}, r1, vr4
00077c  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
000780  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
000784  6a336402  vand.s.mz vr6{mr1}, r8, vr6
000788  ea337402  vand.s.mz vr7{mr1}, r8, vr7
00078c  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
000790  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
000794  e69202c0  vabs.f vr5, vr5
000798  661202c0  vabs.f vr4, vr4
00079c  12b36802  vadd.s.mz vr6{mr1}, r17, vr6
0007a0  92b37802  vadd.s.mz vr7{mr1}, r17, vr7
0007a4  72215942  vlt.u.mz mr2{mr1}, r18, vr5
0007a8  6a336802  vand.s.mz vr6{mr1}, r16, vr6
0007ac  ea327802  vand.s.mz vr5{mr1}, r16, vr7
0007b0  6aa32934  vor.u.mh vr6{mr2}, r19, vr2
0007b4  72214942  vlt.u.mz mr2{mr1}, r18, vr4
0007b8  eaa22934  vor.u.mh vr5{mr2}, r19, vr2
0007bc  6eb261c2  vsrl.s.mz vr4{mr1}, vr3, vr6
0007c0  6eb24222  vor.s.mz vr4{mr1}, vr5, vr4
0007c4  46804102  vstore.mz vr4{mr1}, 0(r3)
0007c8  4bfea7fc  ble.s r15, r10, -1124
0007cc  1f858100  addli r10, r3, 64
0007d0  9f848400  addli r9, r9, 64
0007d4  9f810101  addli r3, r3, 128
0007d8  42020502  vload.mz vr4{mr1}, 0(r10)
0007dc  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
0007e0  6a324802  vand.s.mz vr4{mr1}, r16, vr4
0007e4  92125102  vadd.f.mz.rn vr5{mr1}, r2, vr5
0007e8  12124102  vadd.f.mz.rn vr4{mr1}, r2, vr4
0007ec  8a925002  vmul.f.mz.rn vr5{mr1}, r1, vr5
0007f0  0a924002  vmul.f.mz.rn vr4{mr1}, r1, vr4
0007f4  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
0007f8  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
0007fc  6a336402  vand.s.mz vr6{mr1}, r8, vr6
000800  ea337402  vand.s.mz vr7{mr1}, r8, vr7
000804  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
000808  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
00080c  e69202c0  vabs.f vr5, vr5
000810  661202c0  vabs.f vr4, vr4
000814  12b36802  vadd.s.mz vr6{mr1}, r17, vr6
000818  92b37802  vadd.s.mz vr7{mr1}, r17, vr7
00081c  72215942  vlt.u.mz mr2{mr1}, r18, vr5
000820  6a336802  vand.s.mz vr6{mr1}, r16, vr6
000824  ea327802  vand.s.mz vr5{mr1}, r16, vr7
000828  6aa32934  vor.u.mh vr6{mr2}, r19, vr2
00082c  72214942  vlt.u.mz mr2{mr1}, r18, vr4
000830  eaa22934  vor.u.mh vr5{mr2}, r19, vr2
000834  eeb161c2  vsrl.s.mz vr3{mr1}, vr3, vr6
000838  6eb13222  vor.s.mz vr2{mr1}, vr5, vr3
00083c  46002502  vstore.mz vr2{mr1}, 0(r10)
000840  3fdcf4fe  blt.s r9, r15, -236
000844  5b64ffff  j -1248
000848  80300002  core_id r1
00084c  bb800000  bneq r1, zero, 32
000850  63012f00  loadli.w r2,  16(r30)
000854  ab0100f0  lui r3, 983040
000858  1b311100  slli r2, r2, 1
00085c  17113100  or r2, r2, r3
000860  ab710000  lui r3, 7
000864  9f810100  addli r3, r3, 0
000868  7f013200  l_gm2sm r2, r3, 0(r[5:6])
00086c  2bf10000  lui r2, 15
000870  e3411f00  loadli.w r3,  12(r30)
000874  00200300  mfence { sm, gm }
000878  1b11f1ff  ori r2, r2, 4095
00087c  80210104  csr_set csr3, r2
000880  00d00100  sync_group
000884  cbde1110  ble.s r3, r1, 9140
000888  63012f00  loadli.w r2,  16(r30)
00088c  e3412f00  loadli.w r3,  20(r30)
000890  ab790000  lui r19, 7
000894  1f140000  addli r8, zero, 1
000898  1f098fd7  addli r18, r30, -5184
00089c  1f060002  addli r12, zero, 256
0008a0  9f060001  addli r13, zero, 128
0008a4  1f088000  addli r16, zero, 64
0008a8  9f084000  addli r17, zero, 32
0008ac  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0008b0  9f890900  addli r19, r19, 0
0008b4  0b133110  add.s r6, r2, r3
0008b8  1b321100  slli r4, r2, 1
0008bc  b3020108  fix2float.rn r5, r2
0008c0  1f71f3ff  addli r2, r6, -1
0008c4  1bb31100  slli r6, r3, 1
0008c8  8b133130  div.s r7, r2, r3
0008cc  2bf1ffff  lui r2, 1048575
0008d0  9b15f1ff  ori r11, r2, 4095
0008d4  5b070000  j 56
0008d8  00a00000  mfence { lm }
0008dc  eb540f00  load.d r[10:11], 0(r30)
0008e0  2b0100f0  lui r2, 983040
0008e4  1f098fd7  addli r18, r30, -5184
0008e8  80510102  load_param_i r3, 2
0008ec  17112200  or r2, r4, r2
0008f0  8b901110  add.s r1, r3, r1
0008f4  0baa4411  add.ul r[21:22], r[10:11], r[21:22]
0008f8  7f312a01  s_lm2gm r2, r18, 0(r[21:22])
0008fc  00a00200  mfence { lm, gm }
000900  63411f00  loadli.w r2,  12(r30)
000904  3fa02000  blt.s r1, r2, 8
000908  5b660400  j 9008
00090c  63011f00  loadli.w r2,  8(r30)
000910  0b912010  add.s r2, r1, r2
000914  0b11f120  mul.s r2, r2, r15
000918  33110128  sext_int2long r[3:4], r2
00091c  173a8102  sll.d r[21:22], r[3:4], r8
000920  9f017fd6  addli r3, r30, -5320
000924  2b0100f0  lui r2, 983040
000928  ebd40100  load.d r[10:11], 0(r3)
00092c  17112200  or r2, r4, r2
000930  0bab4411  add.ul r[23:24], r[10:11], r[21:22]
000934  7f212b01  l_gm2lm r2, r18, 0(r[23:24])
000938  00a00200  mfence { lm, gm }
00093c  3fc78300  blt.s r7, r8, 464
000940  9f010000  addli r3, zero, 0
000944  1f010000  addli r2, zero, 0
000948  1f050000  addli r10, zero, 0
00094c  db0c0000  j 100
000950  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
000954  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000958  1f150500  addli r10, r10, 1
00095c  6a7136c0  vsrl.p vr2, r12, vr3
000960  6a7216c0  vsrl.p vr4, r12, vr1
000964  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
000968  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
00096c  eaf126c0  vsrl.p vr3, r13, vr2
000970  6af216c0  vsrl.p vr4, r13, vr1
000974  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000978  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
00097c  ea7128c0  vsrl.p vr3, r16, vr2
000980  6a7218c0  vsrl.p vr4, r16, vr1
000984  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000988  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
00098c  eaf128c0  vsrl.p vr3, r17, vr2
000990  6af218c0  vsrl.p vr4, r17, vr1
000994  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000998  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
00099c  fa140140  vextracti.f r9, 0(vr2)
0009a0  7a990040  vextracti.f r18, 0(vr1)
0009a4  8be19110  add.f.rn r3, r3, r9
0009a8  0b612111  add.f.rn r2, r2, r18
0009ac  b7257500  beq r10, r7, 360
0009b0  1f0c0500  addli r24, r10, 0
0009b4  3730c700  beq r14, r12, 12
0009b8  172bb500  xor r22, r10, r11
0009bc  0b9c6311  add.s r24, r7, r22
0009c0  0b1bec20  mul.s r22, r24, r14
0009c4  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0009c8  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0009cc  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0009d0  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0009d4  0b9b6719  sub.s r22, r15, r22
0009d8  0b1beb40  min.s r22, r22, r14
0009dc  bf5d8bfe  blt.s r22, r8, -140
0009e0  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0009e4  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0009e8  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0009ec  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0009f0  9f0b0000  addli r23, zero, 0
0009f4  0b1c8321  mul.s r24, r6, r24
0009f8  9f0c8fd7  addli r25, r30, -5184
0009fc  1f8d0900  addli r26, r19, 0
000a00  8b1d8d11  add.s r27, r26, r24
000a04  9f848b00  addli r9, r23, 64
000a08  ca820d02  vloads.mz vr5{mr1}, 0(r27)
000a0c  1f8e8d00  addli r28, r27, 64
000a10  4a030e02  vloads.mz vr6{mr1}, 0(r28)
000a14  0b9e8c11  add.s r28, r25, r24
000a18  c2030e02  vload.mz vr7{mr1}, 0(r28)
000a1c  1f098e00  addli r18, r28, 64
000a20  42040902  vload.mz vr8{mr1}, 0(r18)
000a24  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
000a28  92320002  vadd.s.mz vr5{mr1}, zero, vr0
000a2c  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
000a30  06b40300  vfp162float_l.rn vr8, vr7
000a34  86f30300  vfp162float_h.rn vr7, vr7
000a38  86340300  vfp162float_l.rn vr9, vr6
000a3c  06730300  vfp162float_h.rn vr6, vr6
000a40  86120400  vfloat2fp16_l.rn vr5, vr8
000a44  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
000a48  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
000a4c  12340002  vadd.s.mz vr8{mr1}, zero, vr0
000a50  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
000a54  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
000a58  06940400  vfloat2fp16_l.rn vr8, vr9
000a5c  86d20300  vfloat2fp16_h.rn vr5, vr7
000a60  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
000a64  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
000a68  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
000a6c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000a70  06540300  vfloat2fp16_h.rn vr8, vr6
000a74  46005e02  vstore.mz vr5{mr1}, 0(r28)
000a78  46008902  vstore.mz vr8{mr1}, 0(r18)
000a7c  4b5b9bfe  ble.s r22, r9, -300
000a80  9f840d01  addli r9, r27, 128
000a84  1f090e01  addli r18, r28, 128
000a88  9f8b0b01  addli r23, r23, 128
000a8c  1f0d0d02  addli r26, r26, 256
000a90  9f8c0c02  addli r25, r25, 256
000a94  ca820402  vloads.mz vr5{mr1}, 0(r9)
000a98  9f848d01  addli r9, r27, 192
000a9c  c2030902  vload.mz vr7{mr1}, 0(r18)
000aa0  4a830402  vloads.mz vr6{mr1}, 0(r9)
000aa4  9f048e01  addli r9, r28, 192
000aa8  42840402  vload.mz vr8{mr1}, 0(r9)
000aac  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
000ab0  92320002  vadd.s.mz vr5{mr1}, zero, vr0
000ab4  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
000ab8  12330002  vadd.s.mz vr6{mr1}, zero, vr0
000abc  86b40300  vfp162float_l.rn vr9, vr7
000ac0  86f30300  vfp162float_h.rn vr7, vr7
000ac4  86920400  vfloat2fp16_l.rn vr5, vr9
000ac8  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
000acc  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
000ad0  86340400  vfp162float_l.rn vr9, vr8
000ad4  06740400  vfp162float_h.rn vr8, vr8
000ad8  06930400  vfloat2fp16_l.rn vr6, vr9
000adc  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
000ae0  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
000ae4  86d20300  vfloat2fp16_h.rn vr5, vr7
000ae8  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
000aec  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
000af0  06530400  vfloat2fp16_h.rn vr6, vr8
000af4  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
000af8  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
000afc  46005902  vstore.mz vr5{mr1}, 0(r18)
000b00  46806402  vstore.mz vr6{mr1}, 0(r9)
000b04  bffb6bff  blt.s r23, r22, -260
000b08  5bc9ffff  j -440
000b0c  1f010000  addli r2, zero, 0
000b10  9f010000  addli r3, zero, 0
000b14  00a00000  mfence { lm }
000b18  3f8787fe  blt.s r15, r8, -576
000b1c  8f815118  div.f.rn r3, r3, r5
000b20  0f015118  div.f.rn r2, r2, r5
000b24  e3043f00  loadli.w r9,  24(r30)
000b28  1f0b0000  addli r22, zero, 0
000b2c  0be53120  mul.f.rn r10, r3, r3
000b30  8be10158  neg.f r3, r3
000b34  0b61a118  sub.f.rn r2, r2, r10
000b38  1f058fd7  addli r10, r30, -5184
000b3c  0b619110  add.f.rn r2, r2, r9
000b40  ab04803f  lui r9, 260096
000b44  0f010108  sqrt.f.rn r2, r2
000b48  0f812418  div.f.rn r2, r9, r2
000b4c  c2000502  vload.mz vr1{mr1}, 0(r10)
000b50  9f0b4b00  addli r23, r22, 32
000b54  06b10000  vfp162float_l.rn vr2, vr1
000b58  86f00000  vfp162float_h.rn vr1, vr1
000b5c  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
000b60  92911102  vadd.f.mz.rn vr3{mr1}, r3, vr1
000b64  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000b68  12321002  vadd.s.mz vr4{mr1}, zero, vr1
000b6c  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
000b70  8a113102  vmul.f.mz.rn vr3{mr1}, r2, vr3
000b74  06120100  vfloat2fp16_l.rn vr4, vr2
000b78  06d20100  vfloat2fp16_h.rn vr4, vr3
000b7c  46004502  vstore.mz vr4{mr1}, 0(r10)
000b80  4be577ff  ble.s r15, r23, -680
000b84  9f0b8500  addli r23, r10, 64
000b88  1f0b8b00  addli r22, r22, 64
000b8c  1f050501  addli r10, r10, 128
000b90  42810b02  vload.mz vr2{mr1}, 0(r23)
000b94  86310100  vfp162float_l.rn vr3, vr2
000b98  06710100  vfp162float_h.rn vr2, vr2
000b9c  92913102  vadd.f.mz.rn vr3{mr1}, r3, vr3
000ba0  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
000ba4  8a113102  vmul.f.mz.rn vr3{mr1}, r2, vr3
000ba8  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
000bac  86900100  vfloat2fp16_l.rn vr1, vr3
000bb0  86500100  vfloat2fp16_h.rn vr1, vr2
000bb4  46801b02  vstore.mz vr1{mr1}, 0(r23)
000bb8  3f5efbfe  blt.s r22, r15, -108
000bbc  dba3ffff  j -740
000bc0  e3002f00  loadli.w r1,  16(r30)
000bc4  1f010010  addli r2, zero, 2048
000bc8  bb9c2002  bneq r1, r2, 1828
000bcc  003d0002  core_id r26
000bd0  3b700d00  bneq r26, zero, 28
000bd4  9f000040  addli r1, zero, 8192
000bd8  2b0100f0  lui r2, 983040
000bdc  97902000  or r1, r1, r2
000be0  2b110100  lui r2, 17
000be4  1f010108  addli r2, r2, 1024
000be8  ff002200  l_gm2sm r1, r2, 0(r[5:6])
000bec  abf00000  lui r1, 15
000bf0  00200300  mfence { sm, gm }
000bf4  9b0d1d00  andi r27, r26, 1
000bf8  9f020006  addli r5, zero, 768
000bfc  9b90f0ff  ori r1, r1, 4095
000c00  80a10004  csr_set csr3, r1
000c04  9f000006  addli r1, zero, 768
000c08  00d00100  sync_group
000c0c  37a00d00  beq r27, zero, 8
000c10  9f02000a  addli r5, zero, 1280
000c14  63411f00  loadli.w r2,  12(r30)
000c18  9f110000  addli r3, zero, 1
000c1c  3f703110  blt.s r2, r3, 8220
000c20  0b921d20  mul.s r4, r27, r1
000c24  abf0ffff  lui r1, 1048575
000c28  2b1a0100  lui r20, 17
000c2c  2b3c0100  lui r24, 19
000c30  2b380100  lui r16, 19
000c34  00510102  load_param_i r2, 2
000c38  9f030000  addli r7, zero, 0
000c3c  1b471d00  srli r14, r26, 1
000c40  9bb72200  slli r15, r5, 2
000c44  1f2b0000  addli r22, zero, 2
000c48  9f088fd7  addli r17, r30, -5184
000c4c  9f0a0005  addli r21, zero, 640
000c50  9f0b0001  addli r23, zero, 128
000c54  9f058000  addli r11, zero, 64
000c58  1f064000  addli r12, zero, 32
000c5c  1f0e0003  addli r28, zero, 384
000c60  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000c64  9b9000f8  ori r1, r1, 3968
000c68  9b441100  srli r9, r2, 1
000c6c  1f010fd7  addli r2, r30, -5248
000c70  1f0a0a08  addli r20, r20, 1024
000c74  1f0c0c08  addli r24, r24, 1024
000c78  1f08080c  addli r16, r16, 1536
000c7c  67041fd6  storeli.w r1, -5312(r30)
000c80  abf00000  lui r1, 15
000c84  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000c88  9b9cf0ff  ori r25, r1, 4095
000c8c  db030000  j 28
000c90  00a00300  mfence { lm, sm, gm }
000c94  80a10c04  csr_set csr3, r25
000c98  00d00100  sync_group
000c9c  8b939310  add.s r7, r7, r9
000ca0  3fa0d300  blt.s r7, r13, 8
000ca4  5b6f0300  j 7032
000ca8  8b90e310  add.s r1, r7, r14
000cac  cb9f16fe  ble.s r13, r1, -28
000cb0  63011f00  loadli.w r2,  8(r30)
000cb4  1f037fd6  addli r6, r30, -5320
000cb8  8b902010  add.s r1, r1, r2
000cbc  9bb0b000  slli r1, r1, 11
000cc0  97904000  or r1, r1, r4
000cc4  b3900028  sext_int2long r[2:3], r1
000cc8  17b96003  sll.d r[19:20], r[2:3], r22
000ccc  6b510300  load.d r[3:4], 0(r6)
000cd0  ab0000f0  lui r1, 983040
000cd4  97901700  or r1, r15, r1
000cd8  0b212111  add.ul r[3:4], r[3:4], r[19:20]
000cdc  ff201101  l_gm2lm r1, r17, 0(r[3:4])
000ce0  00a00200  mfence { lm, gm }
000ce4  3ba60d00  bneq r27, zero, 392
000ce8  9f010fd7  addli r3, r30, -5248
000cec  63018fd6  loadli.w r2,  -5312(r30)
000cf0  9f000000  addli r1, zero, 0
000cf4  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
000cf8  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000cfc  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000d00  12323002  vadd.s.mz vr4{mr1}, zero, vr3
000d04  0b954011  add.s r10, r1, r20
000d08  8b911810  add.s r3, r17, r1
000d0c  1f010101  addli r2, r2, 128
000d10  9f800004  addli r1, r1, 512
000d14  1f030501  addli r6, r10, 128
000d18  4a100502  vloads_mask16.mz vr0{mr1}, 0(r10)
000d1c  1f048500  addli r8, r10, 64
000d20  42940102  vload_mask16.mz vr8{mr1}, 0(r3)
000d24  9f868101  addli r13, r3, 192
000d28  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
000d2c  1f038501  addli r6, r10, 192
000d30  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
000d34  1f848100  addli r8, r3, 64
000d38  c2950602  vload_mask16.mz vr11{mr1}, 0(r13)
000d3c  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
000d40  1f830101  addli r6, r3, 128
000d44  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
000d48  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
000d4c  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
000d50  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
000d54  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
000d58  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
000d5c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000d60  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
000d64  46108302  vstore_mask16.mz vr8{mr1}, 0(r6)
000d68  1f030502  addli r6, r10, 256
000d6c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
000d70  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
000d74  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
000d78  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
000d7c  1f840103  addli r8, r3, 384
000d80  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
000d84  1f038502  addli r6, r10, 320
000d88  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
000d8c  9f860102  addli r13, r3, 256
000d90  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000d94  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
000d98  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000d9c  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
000da0  1f030503  addli r6, r10, 384
000da4  c2930602  vload_mask16.mz vr7{mr1}, 0(r13)
000da8  1f058503  addli r10, r10, 448
000dac  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000db0  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
000db4  1f838102  addli r6, r3, 320
000db8  4a150502  vloads_mask16.mz vr10{mr1}, 0(r10)
000dbc  9f818103  addli r3, r3, 448
000dc0  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
000dc4  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
000dc8  c2130402  vload_mask16.mz vr7{mr1}, 0(r8)
000dcc  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
000dd0  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
000dd4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000dd8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
000ddc  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
000de0  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
000de4  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
000de8  13035105  setlt.u r6, r2, r21
000dec  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
000df0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000df4  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000df8  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
000dfc  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
000e00  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
000e04  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
000e08  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
000e0c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000e10  bb5b03fe  bneq r6, zero, -268
000e14  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
000e18  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000e1c  9f000002  addli r1, zero, 256
000e20  6af100c0  vsrl.p vr2, r1, vr0
000e24  eaf110c0  vsrl.p vr3, r1, vr1
000e28  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000e2c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000e30  6af10bc0  vsrl.p vr2, r23, vr0
000e34  eaf11bc0  vsrl.p vr3, r23, vr1
000e38  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000e3c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000e40  6af105c0  vsrl.p vr2, r11, vr0
000e44  eaf115c0  vsrl.p vr3, r11, vr1
000e48  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000e4c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000e50  6a7106c0  vsrl.p vr2, r12, vr0
000e54  ea7116c0  vsrl.p vr3, r12, vr1
000e58  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000e5c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000e60  fa110040  vextracti.f r3, 0(vr0)
000e64  fa900040  vextracti.f r1, 0(vr1)
000e68  5b650000  j 808
000e6c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000e70  2bf1ffff  lui r2, 1048575
000e74  1f8b0d00  addli r22, r27, 0
000e78  9f000000  addli r1, zero, 0
000e7c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
000e80  12321002  vadd.s.mz vr4{mr1}, zero, vr1
000e84  92311002  vadd.s.mz vr3{mr1}, zero, vr1
000e88  1b1101f8  ori r2, r2, 3968
000e8c  0b151a10  add.s r10, r20, r1
000e90  8b911810  add.s r3, r17, r1
000e94  1f010101  addli r2, r2, 128
000e98  9f800004  addli r1, r1, 512
000e9c  1f030531  addli r6, r10, 6272
000ea0  9f060530  addli r13, r10, 6144
000ea4  1f048531  addli r8, r10, 6336
000ea8  9f8d0118  addli r27, r3, 3072
000eac  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
000eb0  ca920602  vloads_mask16.mz vr5{mr1}, 0(r13)
000eb4  9f068530  addli r13, r10, 6208
000eb8  ca140402  vloads_mask16.mz vr9{mr1}, 0(r8)
000ebc  1f840119  addli r8, r3, 3200
000ec0  1f838118  addli r6, r3, 3136
000ec4  42930d02  vload_mask16.mz vr6{mr1}, 0(r27)
000ec8  4a940602  vloads_mask16.mz vr8{mr1}, 0(r13)
000ecc  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
000ed0  9f868119  addli r13, r3, 3264
000ed4  c2150302  vload_mask16.mz vr11{mr1}, 0(r6)
000ed8  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
000edc  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
000ee0  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
000ee4  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
000ee8  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
000eec  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000ef0  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
000ef4  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
000ef8  1f040532  addli r8, r10, 6400
000efc  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
000f00  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
000f04  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000f08  46906d02  vstore_mask16.mz vr6{mr1}, 0(r27)
000f0c  9f86011a  addli r13, r3, 3328
000f10  c2930602  vload_mask16.mz vr7{mr1}, 0(r13)
000f14  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
000f18  1f83011b  addli r6, r3, 3456
000f1c  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
000f20  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
000f24  4a100402  vloads_mask16.mz vr0{mr1}, 0(r8)
000f28  1f048532  addli r8, r10, 6464
000f2c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000f30  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000f34  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
000f38  1f040533  addli r8, r10, 6528
000f3c  1f058533  addli r10, r10, 6592
000f40  4a140402  vloads_mask16.mz vr8{mr1}, 0(r8)
000f44  1f84811a  addli r8, r3, 3392
000f48  4a150502  vloads_mask16.mz vr10{mr1}, 0(r10)
000f4c  9f81811b  addli r3, r3, 3520
000f50  c2140402  vload_mask16.mz vr9{mr1}, 0(r8)
000f54  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
000f58  c2130302  vload_mask16.mz vr7{mr1}, 0(r6)
000f5c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
000f60  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
000f64  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000f68  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
000f6c  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
000f70  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
000f74  46106402  vstore_mask16.mz vr6{mr1}, 0(r8)
000f78  1304c105  setlt.u r8, r2, r28
000f7c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
000f80  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000f84  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000f88  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
000f8c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
000f90  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
000f94  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
000f98  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
000f9c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000fa0  bb3b04fe  bneq r8, zero, -276
000fa4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000fa8  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
000fac  9f000002  addli r1, zero, 256
000fb0  2bf3ffff  lui r6, 1048575
000fb4  9f010000  addli r3, zero, 0
000fb8  1b1503f8  ori r10, r6, 3968
000fbc  eaf110c0  vsrl.p vr3, r1, vr1
000fc0  6af100c0  vsrl.p vr2, r1, vr0
000fc4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000fc8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000fcc  eaf11bc0  vsrl.p vr3, r23, vr1
000fd0  6af10bc0  vsrl.p vr2, r23, vr0
000fd4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000fd8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000fdc  eaf115c0  vsrl.p vr3, r11, vr1
000fe0  6af105c0  vsrl.p vr2, r11, vr0
000fe4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000fe8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000fec  ea7116c0  vsrl.p vr3, r12, vr1
000ff0  6a7106c0  vsrl.p vr2, r12, vr0
000ff4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000ff8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000ffc  7a910040  vextracti.f r2, 0(vr1)
001000  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001004  fa100040  vextracti.f r1, 0(vr0)
001008  12311002  vadd.s.mz vr2{mr1}, zero, vr1
00100c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001010  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001014  8b1d3a10  add.s r27, r20, r3
001018  8b963810  add.s r13, r17, r3
00101c  1f050501  addli r10, r10, 128
001020  9f810104  addli r3, r3, 512
001024  1f830d18  addli r6, r27, 3072
001028  1f840d19  addli r8, r27, 3200
00102c  42940602  vload_mask16.mz vr8{mr1}, 0(r13)
001030  1f8d8601  addli r26, r13, 192
001034  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
001038  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
00103c  1f838d18  addli r6, r27, 3136
001040  1f848d19  addli r8, r27, 3264
001044  c2150d02  vload_mask16.mz vr11{mr1}, 0(r26)
001048  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
00104c  1f830601  addli r6, r13, 128
001050  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
001054  1f848600  addli r8, r13, 64
001058  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
00105c  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
001060  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
001064  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
001068  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
00106c  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
001070  46108302  vstore_mask16.mz vr8{mr1}, 0(r6)
001074  1f830d1a  addli r6, r27, 3328
001078  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
00107c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001080  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
001084  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
001088  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
00108c  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
001090  1f838d1a  addli r6, r27, 3392
001094  46106d02  vstore_mask16.mz vr6{mr1}, 0(r26)
001098  1f8d0602  addli r26, r13, 256
00109c  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
0010a0  1f840603  addli r8, r13, 384
0010a4  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0010a8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0010ac  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
0010b0  1f830d1b  addli r6, r27, 3456
0010b4  c2130d02  vload_mask16.mz vr7{mr1}, 0(r26)
0010b8  9f8d8d1b  addli r27, r27, 3520
0010bc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0010c0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0010c4  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
0010c8  1f838602  addli r6, r13, 320
0010cc  4a950d02  vloads_mask16.mz vr10{mr1}, 0(r27)
0010d0  9f868603  addli r13, r13, 448
0010d4  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
0010d8  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0010dc  c2130402  vload_mask16.mz vr7{mr1}, 0(r8)
0010e0  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0010e4  c2940602  vload_mask16.mz vr9{mr1}, 0(r13)
0010e8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0010ec  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0010f0  46100d02  vstore_mask16.mz vr0{mr1}, 0(r26)
0010f4  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0010f8  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
0010fc  13035505  setlt.u r6, r10, r21
001100  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
001104  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001108  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00110c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
001110  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
001114  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
001118  46907602  vstore_mask16.mz vr7{mr1}, 0(r13)
00111c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
001120  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001124  bb4b03fe  bneq r6, zero, -272
001128  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
00112c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001130  9f010002  addli r3, zero, 256
001134  9f0d0b00  addli r27, r22, 0
001138  003d0002  core_id r26
00113c  1f2b0000  addli r22, zero, 2
001140  6af101c0  vsrl.p vr2, r3, vr0
001144  eaf111c0  vsrl.p vr3, r3, vr1
001148  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00114c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001150  6af10bc0  vsrl.p vr2, r23, vr0
001154  eaf11bc0  vsrl.p vr3, r23, vr1
001158  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00115c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001160  6af105c0  vsrl.p vr2, r11, vr0
001164  eaf115c0  vsrl.p vr3, r11, vr1
001168  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00116c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001170  6a7106c0  vsrl.p vr2, r12, vr0
001174  ea7116c0  vsrl.p vr3, r12, vr1
001178  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00117c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001180  fa110040  vextracti.f r3, 0(vr0)
001184  7a930040  vextracti.f r6, 0(vr1)
001188  8be13010  add.f.rn r3, r1, r3
00118c  8b606110  add.f.rn r1, r2, r6
001190  0b819330  div.u r2, r7, r9
001194  1f050000  addli r10, zero, 0
001198  1b316100  slli r2, r2, 6
00119c  1b010104  andi r2, r2, 64
0011a0  1711a101  or r2, r2, r26
0011a4  1b332100  slli r6, r2, 2
0011a8  1b01e107  andi r2, r2, 126
0011ac  0b148311  add.s r8, r6, r24
0011b0  1b312100  slli r2, r2, 2
0011b4  73603400  stores.w r3, 0(r8)
0011b8  8b110311  add.s r3, r6, r16
0011bc  1b134300  ori r6, r6, 4
0011c0  73e01100  stores.w r1, 0(r3)
0011c4  8b108311  add.s r1, r6, r24
0011c8  8b118111  add.s r3, r2, r24
0011cc  0b130311  add.s r6, r6, r16
0011d0  0b110111  add.s r2, r2, r16
0011d4  00a00300  mfence { lm, sm, gm }
0011d8  80a10c04  csr_set csr3, r25
0011dc  00d00100  sync_group
0011e0  efc00000  loads.w r1, 0(r1)
0011e4  efc10100  loads.w r3, 0(r3)
0011e8  6f430300  loads.w r6, 0(r6)
0011ec  6f410100  loads.w r2, 0(r2)
0011f0  8be03010  add.f.rn r1, r1, r3
0011f4  0b612310  add.f.rn r2, r6, r2
0011f8  2b03003a  lui r6, 237568
0011fc  8be16020  mul.f.rn r3, r1, r6
001200  8b606120  mul.f.rn r1, r2, r6
001204  0be13120  mul.f.rn r2, r3, r3
001208  8be02018  sub.f.rn r1, r1, r2
00120c  63013f00  loadli.w r2,  24(r30)
001210  8be02010  add.f.rn r1, r1, r2
001214  2b01803f  lui r2, 260096
001218  8f800008  sqrt.f.rn r1, r1
00121c  8f001118  div.f.rn r1, r2, r1
001220  0be10158  neg.f r2, r3
001224  9f018fd7  addli r3, r30, -5184
001228  1f838100  addli r6, r3, 64
00122c  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
001230  1f044500  addli r8, r10, 32
001234  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
001238  13848206  setle.u r8, r5, r8
00123c  12100102  vadd.f.mz.rn vr0{mr1}, r2, vr0
001240  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
001244  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
001248  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
00124c  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
001250  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
001254  bb700400  bneq r8, zero, 60
001258  1f830101  addli r6, r3, 128
00125c  1f848101  addli r8, r3, 192
001260  1f058500  addli r10, r10, 64
001264  9f810102  addli r3, r3, 256
001268  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
00126c  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
001270  93065504  setlt.u r13, r10, r5
001274  12100102  vadd.f.mz.rn vr0{mr1}, r2, vr0
001278  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
00127c  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
001280  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
001284  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
001288  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
00128c  3bfe06fe  bneq r13, zero, -100
001290  6b510f00  load.d r[3:4], 0(r30)
001294  ab0000f0  lui r1, 983040
001298  00a00000  mfence { lm }
00129c  97901700  or r1, r15, r1
0012a0  0b212111  add.ul r[3:4], r[3:4], r[19:20]
0012a4  ff301101  s_lm2gm r1, r17, 0(r[3:4])
0012a8  00a00200  mfence { lm, gm }
0012ac  e3461f00  loadli.w r13,  12(r30)
0012b0  db3dffff  j -1556
0012b4  80300002  core_id r1
0012b8  1f210000  addli r2, zero, 2
0012bc  b7d5200a  beq r1, r2, 5492
0012c0  1f110000  addli r2, zero, 1
0012c4  37f72006  beq r1, r2, 3548
0012c8  3b96000a  bneq r1, zero, 5508
0012cc  63012f00  loadli.w r2,  16(r30)
0012d0  ab0100f0  lui r3, 983040
0012d4  1b312100  slli r2, r2, 2
0012d8  17113100  or r2, r2, r3
0012dc  abe10000  lui r3, 14
0012e0  9f810108  addli r3, r3, 1024
0012e4  7f013200  l_gm2sm r2, r3, 0(r[5:6])
0012e8  dbac0200  j 5476
0012ec  80300002  core_id r1
0012f0  bb800000  bneq r1, zero, 32
0012f4  63012f00  loadli.w r2,  16(r30)
0012f8  ab0100f0  lui r3, 983040
0012fc  1b312100  slli r2, r2, 2
001300  17113100  or r2, r2, r3
001304  ab410100  lui r3, 20
001308  9f8101f0  addli r3, r3, -2048
00130c  7f013200  l_gm2sm r2, r3, 0(r[5:6])
001310  2bf10000  lui r2, 15
001314  e3411f00  loadli.w r3,  12(r30)
001318  00200300  mfence { sm, gm }
00131c  1b11f1ff  ori r2, r2, 4095
001320  80210104  csr_set csr3, r2
001324  00d00100  sync_group
001328  4bc4110c  ble.s r3, r1, 6416
00132c  63012f00  loadli.w r2,  16(r30)
001330  e3412f00  loadli.w r3,  20(r30)
001334  2b4a0100  lui r20, 20
001338  1f058fd7  addli r10, r30, -5184
00133c  9f150000  addli r11, zero, 1
001340  9f060002  addli r13, zero, 256
001344  1f080001  addli r16, zero, 128
001348  9f088000  addli r17, zero, 64
00134c  1f094000  addli r18, zero, 32
001350  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001354  1f0a0af0  addli r20, r20, -2048
001358  0b133110  add.s r6, r2, r3
00135c  1b322100  slli r4, r2, 2
001360  33010108  fix2float.rn r2, r2
001364  67042fd6  storeli.w r2, -5312(r30)
001368  1f71f3ff  addli r2, r6, -1
00136c  1bb32100  slli r6, r3, 2
001370  8b133130  div.s r7, r2, r3
001374  2bf1ffff  lui r2, 1048575
001378  1b16f1ff  ori r12, r2, 4095
00137c  1f010fd7  addli r2, r30, -5248
001380  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001384  5b070000  j 56
001388  00a00000  mfence { lm }
00138c  6b540f00  load.d r[9:10], 0(r30)
001390  2b0100f0  lui r2, 983040
001394  1f058fd7  addli r10, r30, -5184
001398  80510102  load_param_i r3, 2
00139c  17112200  or r2, r4, r2
0013a0  8b901110  add.s r1, r3, r1
0013a4  8b2a5411  add.ul r[22:23], r[9:10], r[22:23]
0013a8  7fb1aa00  s_lm2gm r2, r10, 0(r[22:23])
0013ac  00a00200  mfence { lm, gm }
0013b0  63411f00  loadli.w r2,  12(r30)
0013b4  3fa02000  blt.s r1, r2, 8
0013b8  5b100300  j 6272
0013bc  63011f00  loadli.w r2,  8(r30)
0013c0  9f220000  addli r5, zero, 2
0013c4  0b912010  add.s r2, r1, r2
0013c8  0b11f120  mul.s r2, r2, r15
0013cc  33110128  sext_int2long r[3:4], r2
0013d0  973a5102  sll.d r[22:23], r[3:4], r5
0013d4  9f017fd6  addli r3, r30, -5320
0013d8  2b0100f0  lui r2, 983040
0013dc  6bd40100  load.d r[9:10], 0(r3)
0013e0  17112200  or r2, r4, r2
0013e4  8b2b5411  add.ul r[24:25], r[9:10], r[22:23]
0013e8  7fa1ab00  l_gm2lm r2, r10, 0(r[24:25])
0013ec  00a00200  mfence { lm, gm }
0013f0  bf97b300  blt.s r7, r11, 484
0013f4  9f010000  addli r3, zero, 0
0013f8  1f010000  addli r2, zero, 0
0013fc  1f050000  addli r10, zero, 0
001400  db0c0000  j 100
001404  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001408  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00140c  1f150500  addli r10, r10, 1
001410  6af106c0  vsrl.p vr2, r13, vr0
001414  eaf116c0  vsrl.p vr3, r13, vr1
001418  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00141c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001420  6a7108c0  vsrl.p vr2, r16, vr0
001424  ea7118c0  vsrl.p vr3, r16, vr1
001428  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00142c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001430  6af108c0  vsrl.p vr2, r17, vr0
001434  eaf118c0  vsrl.p vr3, r17, vr1
001438  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00143c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001440  6a7109c0  vsrl.p vr2, r18, vr0
001444  ea7119c0  vsrl.p vr3, r18, vr1
001448  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00144c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001450  fa120040  vextracti.f r5, 0(vr0)
001454  7a940040  vextracti.f r8, 0(vr1)
001458  8be15110  add.f.rn r3, r3, r5
00145c  0b618110  add.f.rn r2, r2, r8
001460  b7757500  beq r10, r7, 380
001464  9f090500  addli r19, r10, 0
001468  3730d700  beq r14, r13, 12
00146c  9729c500  xor r19, r10, r12
001470  8b993311  add.s r19, r7, r19
001474  9f020fd7  addli r5, r30, -5248
001478  8b9be920  mul.s r23, r19, r14
00147c  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
001480  8b9b7719  sub.s r23, r15, r23
001484  8b9beb40  min.s r23, r23, r14
001488  12321002  vadd.s.mz vr4{mr1}, zero, vr1
00148c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001490  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001494  bfcdbbfe  blt.s r23, r11, -144
001498  42920202  vload_mask16.mz vr4{mr1}, 0(r5)
00149c  1f0c0000  addli r24, zero, 0
0014a0  8b1c3321  mul.s r25, r6, r19
0014a4  1f0d8fd7  addli r26, r30, -5184
0014a8  9f0d0a00  addli r27, r20, 0
0014ac  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0014b0  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0014b4  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0014b8  8b999d11  add.s r19, r27, r25
0014bc  0b1e9d11  add.s r28, r26, r25
0014c0  1f848900  addli r8, r19, 64
0014c4  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
0014c8  9f848901  addli r9, r19, 192
0014cc  c2140e02  vload_mask16.mz vr9{mr1}, 0(r28)
0014d0  9f028e01  addli r5, r28, 192
0014d4  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
0014d8  1f840901  addli r8, r19, 128
0014dc  4a940402  vloads_mask16.mz vr8{mr1}, 0(r9)
0014e0  9f040e01  addli r9, r28, 128
0014e4  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
0014e8  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
0014ec  c2950402  vload_mask16.mz vr11{mr1}, 0(r9)
0014f0  1f048e00  addli r8, r28, 64
0014f4  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
0014f8  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0014fc  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
001500  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
001504  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
001508  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00150c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001510  46105e02  vstore_mask16.mz vr5{mr1}, 0(r28)
001514  46106402  vstore_mask16.mz vr6{mr1}, 0(r8)
001518  1f048c00  addli r8, r24, 64
00151c  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
001520  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001524  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001528  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
00152c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001530  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
001534  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
001538  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
00153c  4bab8bfe  ble.s r23, r8, -312
001540  1f840902  addli r8, r19, 256
001544  9f848902  addli r9, r19, 320
001548  9f020e02  addli r5, r28, 256
00154c  1f0c0c01  addli r24, r24, 128
001550  9f8d0d04  addli r27, r27, 512
001554  1f0d0d04  addli r26, r26, 512
001558  4a100402  vloads_mask16.mz vr0{mr1}, 0(r8)
00155c  1f840903  addli r8, r19, 384
001560  ca920402  vloads_mask16.mz vr5{mr1}, 0(r9)
001564  42930202  vload_mask16.mz vr6{mr1}, 0(r5)
001568  9f048e02  addli r9, r28, 320
00156c  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
001570  1f848903  addli r8, r19, 448
001574  9f098e03  addli r19, r28, 448
001578  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
00157c  4a140402  vloads_mask16.mz vr8{mr1}, 0(r8)
001580  1f040e03  addli r8, r28, 384
001584  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
001588  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
00158c  42930902  vload_mask16.mz vr6{mr1}, 0(r19)
001590  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001594  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
001598  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00159c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0015a0  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
0015a4  46905402  vstore_mask16.mz vr5{mr1}, 0(r9)
0015a8  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0015ac  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0015b0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0015b4  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
0015b8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0015bc  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0015c0  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0015c4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0015c8  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
0015cc  bf3b7cff  blt.s r24, r23, -276
0015d0  dbc6ffff  j -460
0015d4  1f010000  addli r2, zero, 0
0015d8  9f010000  addli r3, zero, 0
0015dc  00a00000  mfence { lm }
0015e0  bfa6b7fe  blt.s r15, r11, -600
0015e4  e3028fd6  loadli.w r5,  -5312(r30)
0015e8  9f090000  addli r19, zero, 0
0015ec  8f815118  div.f.rn r3, r3, r5
0015f0  0f015118  div.f.rn r2, r2, r5
0015f4  e3023f00  loadli.w r5,  24(r30)
0015f8  0be53120  mul.f.rn r10, r3, r3
0015fc  8be10158  neg.f r3, r3
001600  0b61a118  sub.f.rn r2, r2, r10
001604  1f058fd7  addli r10, r30, -5184
001608  0b615110  add.f.rn r2, r2, r5
00160c  ab02803f  lui r5, 260096
001610  0f010108  sqrt.f.rn r2, r2
001614  0f812218  div.f.rn r2, r5, r2
001618  9f0b8500  addli r23, r10, 64
00161c  c2100502  vload_mask16.mz vr1{mr1}, 0(r10)
001620  1f8c4900  addli r24, r19, 32
001624  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
001628  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
00162c  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
001630  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
001634  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
001638  46101502  vstore_mask16.mz vr1{mr1}, 0(r10)
00163c  46902b02  vstore_mask16.mz vr2{mr1}, 0(r23)
001640  4ba587ff  ble.s r15, r24, -696
001644  9f0b0501  addli r23, r10, 128
001648  1f0c8501  addli r24, r10, 192
00164c  9f898900  addli r19, r19, 64
001650  1f050502  addli r10, r10, 256
001654  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
001658  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
00165c  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
001660  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
001664  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
001668  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
00166c  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
001670  46102c02  vstore_mask16.mz vr2{mr1}, 0(r24)
001674  bf9ef9fe  blt.s r19, r15, -92
001678  5ba2ffff  j -752
00167c  e3002f00  loadli.w r1,  16(r30)
001680  2b0100f0  lui r2, 983040
001684  9bb01000  slli r1, r1, 1
001688  97902000  or r1, r1, r2
00168c  2b110000  lui r2, 1
001690  1f010100  addli r2, r2, 0
001694  ff002300  l_gm2sm r1, r2, 0(r[7:8])
001698  5b080000  j 64
00169c  63012f00  loadli.w r2,  16(r30)
0016a0  ab0100f0  lui r3, 983040
0016a4  1b311100  slli r2, r2, 1
0016a8  17113100  or r2, r2, r3
0016ac  ab510000  lui r3, 5
0016b0  9f810100  addli r3, r3, 0
0016b4  7f013300  l_gm2sm r2, r3, 0(r[7:8])
0016b8  5bc30000  j 1560
0016bc  e3002f00  loadli.w r1,  16(r30)
0016c0  2b0100f0  lui r2, 983040
0016c4  9bb01000  slli r1, r1, 1
0016c8  97902000  or r1, r1, r2
0016cc  2b210000  lui r2, 2
0016d0  1f010100  addli r2, r2, 0
0016d4  ff002400  l_gm2sm r1, r2, 0(r[9:10])
0016d8  abf00000  lui r1, 15
0016dc  63411f00  loadli.w r2,  12(r30)
0016e0  00200300  mfence { sm, gm }
0016e4  9b90f0ff  ori r1, r1, 4095
0016e8  80a10004  csr_set csr3, r1
0016ec  00d00100  sync_group
0016f0  4b25b10a  ble.s r2, r11, 5448
0016f4  e3002f00  loadli.w r1,  16(r30)
0016f8  63412f00  loadli.w r2,  20(r30)
0016fc  9f082000  addli r17, zero, 16
001700  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001704  1f140000  addli r8, zero, 1
001708  9f048fd7  addli r9, r30, -5184
00170c  1f080002  addli r16, zero, 256
001710  ab09ffff  lui r19, 1048560
001714  ab0a807f  lui r21, 522240
001718  2b0bc07f  lui r22, 523264
00171c  9f0b0001  addli r23, zero, 128
001720  1f0c8000  addli r24, zero, 64
001724  9f0c4000  addli r25, zero, 32
001728  9bb21000  slli r5, r1, 1
00172c  8b912010  add.s r3, r1, r2
001730  b3800008  fix2float.rn r1, r1
001734  1b331100  slli r6, r2, 1
001738  e70b1fd4  storeli.w r1, -5448(r30)
00173c  9ff0f1ff  addli r1, r3, -1
001740  e74b5fd4  storeli.w r5, -5444(r30)
001744  8b932030  div.s r7, r1, r2
001748  abf0ffff  lui r1, 1048575
00174c  1b96f0ff  ori r12, r1, 4095
001750  9f000fd7  addli r1, r30, -5248
001754  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001758  6aa00822  vor.u.mz vr0{mr1}, r17, vr0
00175c  9f008fd6  addli r1, r30, -5312
001760  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001764  ab700000  lui r1, 7
001768  1b9af0ff  ori r20, r1, 4095
00176c  db080000  j 68
001770  9f048fd5  addli r9, r30, -5440
001774  00a00000  mfence { lm }
001778  6b510f00  load.d r[3:4], 0(r30)
00177c  ab0000f0  lui r1, 983040
001780  6bd20400  load.d r[5:6], 0(r9)
001784  9f048fd7  addli r9, r30, -5184
001788  0b214110  add.ul r[3:4], r[3:4], r[5:6]
00178c  e3427fd5  loadli.w r5,  -5444(r30)
001790  00520102  load_param_i r4, 2
001794  8b15b210  add.s r11, r4, r11
001798  97901200  or r1, r5, r1
00179c  ff309100  s_lm2gm r1, r9, 0(r[3:4])
0017a0  00a00200  mfence { lm, gm }
0017a4  e3401f00  loadli.w r1,  12(r30)
0017a8  3fa01500  blt.s r11, r1, 8
0017ac  db910200  j 5260
0017b0  e3001f00  loadli.w r1,  8(r30)
0017b4  1f027fd6  addli r4, r30, -5320
0017b8  8b901510  add.s r1, r11, r1
0017bc  8b90f020  mul.s r1, r1, r15
0017c0  b3900028  sext_int2long r[2:3], r1
0017c4  17bd8002  sll.d r[27:28], r[2:3], r8
0017c8  6b510200  load.d r[3:4], 0(r4)
0017cc  ab0000f0  lui r1, 983040
0017d0  1f028fd5  addli r4, r30, -5440
0017d4  97901200  or r1, r5, r1
0017d8  7330a201  store.d r[27:28], 0(r4)
0017dc  0b21a111  add.ul r[3:4], r[3:4], r[27:28]
0017e0  ff209100  l_gm2lm r1, r9, 0(r[3:4])
0017e4  00a00200  mfence { lm, gm }
0017e8  bfdc8300  blt.s r7, r8, 820
0017ec  9f060000  addli r13, zero, 0
0017f0  9f000000  addli r1, zero, 0
0017f4  1f0e0000  addli r28, zero, 0
0017f8  db0c0000  j 100
0017fc  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
001800  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
001804  1f1e0e00  addli r28, r28, 1
001808  6a7108c0  vsrl.p vr2, r16, vr0
00180c  ea7118c0  vsrl.p vr3, r16, vr1
001810  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001814  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001818  6af10bc0  vsrl.p vr2, r23, vr0
00181c  eaf11bc0  vsrl.p vr3, r23, vr1
001820  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001824  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001828  6a710cc0  vsrl.p vr2, r24, vr0
00182c  ea711cc0  vsrl.p vr3, r24, vr1
001830  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001834  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001838  6af10cc0  vsrl.p vr2, r25, vr0
00183c  eaf11cc0  vsrl.p vr3, r25, vr1
001840  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001844  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001848  7a110040  vextracti.f r2, 0(vr0)
00184c  fa910040  vextracti.f r3, 0(vr1)
001850  8be62610  add.f.rn r13, r13, r2
001854  8be03010  add.f.rn r1, r1, r3
001858  373b7e00  beq r28, r7, 716
00185c  1f010e00  addli r2, r28, 0
001860  37300701  beq r14, r16, 12
001864  1721ce00  xor r2, r28, r12
001868  0b912310  add.s r2, r7, r2
00186c  8b11e120  mul.s r3, r2, r14
001870  8b913718  sub.s r3, r15, r3
001874  0b95e140  min.s r10, r3, r14
001878  9f010fd7  addli r3, r30, -5248
00187c  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
001880  92322002  vadd.s.mz vr5{mr1}, zero, vr2
001884  12322002  vadd.s.mz vr4{mr1}, zero, vr2
001888  92312002  vadd.s.mz vr3{mr1}, zero, vr2
00188c  bf4d85fe  blt.s r10, r8, -144
001890  1f020fd7  addli r4, r30, -5248
001894  2b090000  lui r18, 0
001898  8b112320  mul.s r3, r6, r2
00189c  9f040000  addli r9, zero, 0
0018a0  1f018fd7  addli r2, r30, -5184
0018a4  c2120202  vload_mask16.mz vr5{mr1}, 0(r4)
0018a8  1f090900  addli r18, r18, 0
0018ac  12315002  vadd.s.mz vr2{mr1}, zero, vr5
0018b0  92315002  vadd.s.mz vr3{mr1}, zero, vr5
0018b4  12325002  vadd.s.mz vr4{mr1}, zero, vr5
0018b8  0b1d3910  add.s r26, r18, r3
0018bc  0b123110  add.s r4, r2, r3
0018c0  9f028fd6  addli r5, r30, -5312
0018c4  4a030d02  vloads.mz vr6{mr1}, 0(r26)
0018c8  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
0018cc  c2030202  vload.mz vr7{mr1}, 0(r4)
0018d0  9f020fd7  addli r5, r30, -5248
0018d4  9f0d8d00  addli r27, r26, 64
0018d8  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
0018dc  9f828400  addli r5, r9, 64
0018e0  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
0018e4  6ab57902  vand.s.mz vr10{mr1}, r19, vr7
0018e8  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
0018ec  6ab36902  vand.s.mz vr6{mr1}, r19, vr6
0018f0  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
0018f4  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0018f8  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
0018fc  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
001900  669503c0  vabs.f vr10, vr7
001904  6a348402  vand.s.mz vr8{mr1}, r8, vr8
001908  ea349402  vand.s.mz vr9{mr1}, r8, vr9
00190c  72a1aa42  vlt.u.mz mr2{mr1}, r21, vr10
001910  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
001914  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
001918  12348a02  vadd.s.mz vr8{mr1}, r20, vr8
00191c  92349a02  vadd.s.mz vr9{mr1}, r20, vr9
001920  eab38902  vand.s.mz vr7{mr1}, r19, vr8
001924  661403c0  vabs.f vr8, vr6
001928  6ab39902  vand.s.mz vr6{mr1}, r19, vr9
00192c  ea230b34  vor.u.mh vr7{mr2}, r22, vr0
001930  72a18a42  vlt.u.mz mr2{mr1}, r21, vr8
001934  6a230b34  vor.u.mh vr6{mr2}, r22, vr0
001938  4a840d02  vloads.mz vr8{mr1}, 0(r27)
00193c  9f0d8200  addli r27, r4, 64
001940  c2840d02  vload.mz vr9{mr1}, 0(r27)
001944  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
001948  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
00194c  6ab36902  vand.s.mz vr6{mr1}, r19, vr6
001950  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
001954  eab49902  vand.s.mz vr9{mr1}, r19, vr9
001958  46007202  vstore.mz vr7{mr1}, 0(r4)
00195c  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
001960  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
001964  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
001968  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
00196c  6ab48902  vand.s.mz vr8{mr1}, r19, vr8
001970  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
001974  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
001978  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
00197c  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
001980  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
001984  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
001988  ea349402  vand.s.mz vr9{mr1}, r8, vr9
00198c  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
001990  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
001994  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
001998  661505c0  vabs.f vr10, vr10
00199c  661404c0  vabs.f vr8, vr8
0019a0  92349a02  vadd.s.mz vr9{mr1}, r20, vr9
0019a4  9235ba02  vadd.s.mz vr11{mr1}, r20, vr11
0019a8  72a1aa42  vlt.u.mz mr2{mr1}, r21, vr10
0019ac  eab49902  vand.s.mz vr9{mr1}, r19, vr9
0019b0  6ab5b902  vand.s.mz vr10{mr1}, r19, vr11
0019b4  ea240b34  vor.u.mh vr9{mr2}, r22, vr0
0019b8  72a18a42  vlt.u.mz mr2{mr1}, r21, vr8
0019bc  6a250b34  vor.u.mh vr10{mr2}, r22, vr0
0019c0  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
0019c4  eab4a902  vand.s.mz vr9{mr1}, r19, vr10
0019c8  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
0019cc  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
0019d0  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
0019d4  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
0019d8  46808d02  vstore.mz vr8{mr1}, 0(r27)
0019dc  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0019e0  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0019e4  4b6855fe  ble.s r10, r5, -488
0019e8  9f020d01  addli r5, r26, 128
0019ec  9f0d0201  addli r27, r4, 128
0019f0  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
0019f4  1f028201  addli r4, r4, 192
0019f8  9f840401  addli r9, r9, 128
0019fc  1f090902  addli r18, r18, 256
001a00  1f010102  addli r2, r2, 256
001a04  6aa37822  vor.u.mz vr6{mr1}, r17, vr7
001a08  4a840202  vloads.mz vr8{mr1}, 0(r5)
001a0c  c2840d02  vload.mz vr9{mr1}, 0(r27)
001a10  9f028d01  addli r5, r26, 192
001a14  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
001a18  6ab09902  vand.s.mz vr0{mr1}, r19, vr9
001a1c  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
001a20  6ab48902  vand.s.mz vr8{mr1}, r19, vr8
001a24  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
001a28  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
001a2c  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
001a30  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
001a34  e69504c0  vabs.f vr11, vr9
001a38  6a300402  vand.s.mz vr0{mr1}, r8, vr0
001a3c  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
001a40  72a1ba42  vlt.u.mz mr2{mr1}, r21, vr11
001a44  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
001a48  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
001a4c  12300a02  vadd.s.mz vr0{mr1}, r20, vr0
001a50  1235aa02  vadd.s.mz vr10{mr1}, r20, vr10
001a54  eab40902  vand.s.mz vr9{mr1}, r19, vr0
001a58  661004c0  vabs.f vr0, vr8
001a5c  6ab4a902  vand.s.mz vr8{mr1}, r19, vr10
001a60  ea247b34  vor.u.mh vr9{mr2}, r22, vr7
001a64  72a10a42  vlt.u.mz mr2{mr1}, r21, vr0
001a68  6a247b34  vor.u.mh vr8{mr2}, r22, vr7
001a6c  4a800202  vloads.mz vr0{mr1}, 0(r5)
001a70  42050202  vload.mz vr10{mr1}, 0(r4)
001a74  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
001a78  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
001a7c  6ab5a902  vand.s.mz vr10{mr1}, r19, vr10
001a80  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
001a84  6ab48902  vand.s.mz vr8{mr1}, r19, vr8
001a88  46809d02  vstore.mz vr9{mr1}, 0(r27)
001a8c  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
001a90  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
001a94  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
001a98  6ab00902  vand.s.mz vr0{mr1}, r19, vr0
001a9c  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
001aa0  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
001aa4  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
001aa8  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
001aac  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
001ab0  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
001ab4  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
001ab8  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
001abc  e69000c0  vabs.f vr1, vr1
001ac0  661000c0  vabs.f vr0, vr0
001ac4  1235aa02  vadd.s.mz vr10{mr1}, r20, vr10
001ac8  9235ba02  vadd.s.mz vr11{mr1}, r20, vr11
001acc  72a11a42  vlt.u.mz mr2{mr1}, r21, vr1
001ad0  6ab5a902  vand.s.mz vr10{mr1}, r19, vr10
001ad4  eab0b902  vand.s.mz vr1{mr1}, r19, vr11
001ad8  6a257b34  vor.u.mh vr10{mr2}, r22, vr7
001adc  72a10a42  vlt.u.mz mr2{mr1}, r21, vr0
001ae0  ea207b34  vor.u.mh vr1{mr2}, r22, vr7
001ae4  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
001ae8  eab31902  vand.s.mz vr7{mr1}, r19, vr1
001aec  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
001af0  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
001af4  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
001af8  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
001afc  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
001b00  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
001b04  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
001b08  46000202  vstore.mz vr0{mr1}, 0(r4)
001b0c  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001b10  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001b14  bf96a4fe  blt.s r9, r10, -604
001b18  db9cffff  j -796
001b1c  9f000000  addli r1, zero, 0
001b20  9f060000  addli r13, zero, 0
001b24  00a00000  mfence { lm }
001b28  3fa187fe  blt.s r15, r8, -952
001b2c  63027fd5  loadli.w r4,  -5448(r30)
001b30  ab140000  lui r9, 1
001b34  2b250000  lui r10, 2
001b38  1f010000  addli r2, zero, 0
001b3c  9f840400  addli r9, r9, 0
001b40  1f050500  addli r10, r10, 0
001b44  8f814618  div.f.rn r3, r13, r4
001b48  8f804018  div.f.rn r1, r1, r4
001b4c  0be23120  mul.f.rn r4, r3, r3
001b50  8be10158  neg.f r3, r3
001b54  8be04018  sub.f.rn r1, r1, r4
001b58  63023f00  loadli.w r4,  24(r30)
001b5c  8be04010  add.f.rn r1, r1, r4
001b60  2b02803f  lui r4, 260096
001b64  8f800008  sqrt.f.rn r1, r1
001b68  8f001218  div.f.rn r1, r4, r1
001b6c  1f028fd7  addli r4, r30, -5184
001b70  42020202  vload.mz vr4{mr1}, 0(r4)
001b74  ca820402  vloads.mz vr5{mr1}, 0(r9)
001b78  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
001b7c  4a030502  vloads.mz vr6{mr1}, 0(r10)
001b80  9f064100  addli r13, r2, 32
001b84  eaa12822  vor.u.mz vr3{mr1}, r17, vr2
001b88  eeb341a2  vsll.s.mz vr7{mr1}, vr3, vr4
001b8c  6ab44902  vand.s.mz vr8{mr1}, r19, vr4
001b90  92937102  vadd.f.mz.rn vr7{mr1}, r3, vr7
001b94  12948102  vadd.f.mz.rn vr8{mr1}, r3, vr8
001b98  eeb451a2  vsll.s.mz vr9{mr1}, vr3, vr5
001b9c  6eb261a2  vsll.s.mz vr4{mr1}, vr3, vr6
001ba0  6ab55902  vand.s.mz vr10{mr1}, r19, vr5
001ba4  eab26902  vand.s.mz vr5{mr1}, r19, vr6
001ba8  8a937002  vmul.f.mz.rn vr7{mr1}, r1, vr7
001bac  0a938002  vmul.f.mz.rn vr6{mr1}, r1, vr8
001bb0  26929302  vmac.f.mz.rn vr4{mr1}, vr7, vr9
001bb4  a612a302  vmac.f.mz.rn vr5{mr1}, vr6, vr10
001bb8  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
001bbc  6a337402  vand.s.mz vr6{mr1}, r8, vr7
001bc0  eeb351c2  vsrl.s.mz vr7{mr1}, vr3, vr5
001bc4  16336202  vadd.s.mz vr6{mr1}, vr4, vr6
001bc8  ea337402  vand.s.mz vr7{mr1}, r8, vr7
001bcc  661202c0  vabs.f vr4, vr4
001bd0  96b37202  vadd.s.mz vr7{mr1}, vr5, vr7
001bd4  12336a02  vadd.s.mz vr6{mr1}, r20, vr6
001bd8  e69202c0  vabs.f vr5, vr5
001bdc  72a14a42  vlt.u.mz mr2{mr1}, r21, vr4
001be0  6ab36902  vand.s.mz vr6{mr1}, r19, vr6
001be4  92337a02  vadd.s.mz vr7{mr1}, r20, vr7
001be8  6a232b34  vor.u.mh vr6{mr2}, r22, vr2
001bec  6ab27902  vand.s.mz vr4{mr1}, r19, vr7
001bf0  72a15a42  vlt.u.mz mr2{mr1}, r21, vr5
001bf4  eeb261c2  vsrl.s.mz vr5{mr1}, vr3, vr6
001bf8  6a222b34  vor.u.mh vr4{mr2}, r22, vr2
001bfc  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
001c00  46004202  vstore.mz vr4{mr1}, 0(r4)
001c04  cbbdd7fc  ble.s r15, r13, -1172
001c08  9f868400  addli r13, r9, 64
001c0c  1f098200  addli r18, r4, 64
001c10  1f018100  addli r2, r2, 64
001c14  9f840401  addli r9, r9, 128
001c18  1f020201  addli r4, r4, 128
001c1c  4a820602  vloads.mz vr4{mr1}, 0(r13)
001c20  9f068500  addli r13, r10, 64
001c24  c2020902  vload.mz vr5{mr1}, 0(r18)
001c28  1f050501  addli r10, r10, 128
001c2c  4a830602  vloads.mz vr6{mr1}, 0(r13)
001c30  eeb351a2  vsll.s.mz vr7{mr1}, vr3, vr5
001c34  eab25902  vand.s.mz vr5{mr1}, r19, vr5
001c38  92937102  vadd.f.mz.rn vr7{mr1}, r3, vr7
001c3c  12945102  vadd.f.mz.rn vr8{mr1}, r3, vr5
001c40  eeb441a2  vsll.s.mz vr9{mr1}, vr3, vr4
001c44  6ab54902  vand.s.mz vr10{mr1}, r19, vr4
001c48  8a937002  vmul.f.mz.rn vr7{mr1}, r1, vr7
001c4c  eeb261a2  vsll.s.mz vr5{mr1}, vr3, vr6
001c50  6ab26902  vand.s.mz vr4{mr1}, r19, vr6
001c54  0a938002  vmul.f.mz.rn vr6{mr1}, r1, vr8
001c58  a6929302  vmac.f.mz.rn vr5{mr1}, vr7, vr9
001c5c  2612a302  vmac.f.mz.rn vr4{mr1}, vr6, vr10
001c60  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
001c64  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
001c68  6a336402  vand.s.mz vr6{mr1}, r8, vr6
001c6c  ea337402  vand.s.mz vr7{mr1}, r8, vr7
001c70  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
001c74  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
001c78  e69202c0  vabs.f vr5, vr5
001c7c  661202c0  vabs.f vr4, vr4
001c80  12336a02  vadd.s.mz vr6{mr1}, r20, vr6
001c84  92337a02  vadd.s.mz vr7{mr1}, r20, vr7
001c88  72a15a42  vlt.u.mz mr2{mr1}, r21, vr5
001c8c  6ab36902  vand.s.mz vr6{mr1}, r19, vr6
001c90  eab27902  vand.s.mz vr5{mr1}, r19, vr7
001c94  6a232b34  vor.u.mh vr6{mr2}, r22, vr2
001c98  72a14a42  vlt.u.mz mr2{mr1}, r21, vr4
001c9c  ea222b34  vor.u.mh vr5{mr2}, r22, vr2
001ca0  6eb161c2  vsrl.s.mz vr2{mr1}, vr3, vr6
001ca4  6eb12222  vor.s.mz vr2{mr1}, vr5, vr2
001ca8  46002902  vstore.mz vr2{mr1}, 0(r18)
001cac  3f1bf1fe  blt.s r2, r15, -316
001cb0  5b58ffff  j -1344
001cb4  63012f00  loadli.w r2,  16(r30)
001cb8  ab0100f0  lui r3, 983040
001cbc  1b311100  slli r2, r2, 1
001cc0  17113100  or r2, r2, r3
001cc4  ab610000  lui r3, 6
001cc8  9f810100  addli r3, r3, 0
001ccc  7f013400  l_gm2sm r2, r3, 0(r[9:10])
001cd0  2bf10000  lui r2, 15
001cd4  e3411f00  loadli.w r3,  12(r30)
001cd8  00200300  mfence { sm, gm }
001cdc  1b11f1ff  ori r2, r2, 4095
001ce0  80210104  csr_set csr3, r2
001ce4  00d00100  sync_group
001ce8  4bcd1106  ble.s r3, r1, 3920
001cec  63012f00  loadli.w r2,  16(r30)
001cf0  e3412f00  loadli.w r3,  20(r30)
001cf4  ab460000  lui r13, 4
001cf8  1f140000  addli r8, zero, 1
001cfc  9f0a8fd7  addli r21, r30, -5184
001d00  1f060002  addli r12, zero, 256
001d04  1f080001  addli r16, zero, 128
001d08  9f088000  addli r17, zero, 64
001d0c  1f094000  addli r18, zero, 32
001d10  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001d14  9f860600  addli r13, r13, 0
001d18  0b133110  add.s r6, r2, r3
001d1c  1b321100  slli r4, r2, 1
001d20  b3020108  fix2float.rn r5, r2
001d24  1f71f3ff  addli r2, r6, -1
001d28  1bb31100  slli r6, r3, 1
001d2c  8b133130  div.s r7, r2, r3
001d30  2bf1ffff  lui r2, 1048575
001d34  9b15f1ff  ori r11, r2, 4095
001d38  5b070000  j 56
001d3c  00a00000  mfence { lm }
001d40  eb540f00  load.d r[10:11], 0(r30)
001d44  2b0100f0  lui r2, 983040
001d48  9f0a8fd7  addli r21, r30, -5184
001d4c  80510102  load_param_i r3, 2
001d50  17112200  or r2, r4, r2
001d54  8b901110  add.s r1, r3, r1
001d58  8ba96411  add.ul r[20:21], r[10:11], r[23:24]
001d5c  7fb15901  s_lm2gm r2, r21, 0(r[20:21])
001d60  00a00200  mfence { lm, gm }
001d64  63411f00  loadli.w r2,  12(r30)
001d68  3fa02000  blt.s r1, r2, 8
001d6c  dbd90100  j 3788
001d70  63011f00  loadli.w r2,  8(r30)
001d74  0b912010  add.s r2, r1, r2
001d78  0b11f120  mul.s r2, r2, r15
001d7c  33110128  sext_int2long r[3:4], r2
001d80  173b8102  sll.d r[23:24], r[3:4], r8
001d84  9f017fd6  addli r3, r30, -5320
001d88  2b0100f0  lui r2, 983040
001d8c  ebd40100  load.d r[10:11], 0(r3)
001d90  17112200  or r2, r4, r2
001d94  8ba96411  add.ul r[20:21], r[10:11], r[23:24]
001d98  7fa15901  l_gm2lm r2, r21, 0(r[20:21])
001d9c  00a00200  mfence { lm, gm }
001da0  3fc78300  blt.s r7, r8, 464
001da4  9f010000  addli r3, zero, 0
001da8  1f010000  addli r2, zero, 0
001dac  1f050000  addli r10, zero, 0
001db0  db0c0000  j 100
001db4  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
001db8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001dbc  1f150500  addli r10, r10, 1
001dc0  6a7136c0  vsrl.p vr2, r12, vr3
001dc4  6a7216c0  vsrl.p vr4, r12, vr1
001dc8  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
001dcc  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
001dd0  ea7128c0  vsrl.p vr3, r16, vr2
001dd4  6a7218c0  vsrl.p vr4, r16, vr1
001dd8  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
001ddc  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
001de0  eaf128c0  vsrl.p vr3, r17, vr2
001de4  6af218c0  vsrl.p vr4, r17, vr1
001de8  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
001dec  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
001df0  ea7129c0  vsrl.p vr3, r18, vr2
001df4  6a7219c0  vsrl.p vr4, r18, vr1
001df8  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
001dfc  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
001e00  fa140140  vextracti.f r9, 0(vr2)
001e04  fa990040  vextracti.f r19, 0(vr1)
001e08  8be19110  add.f.rn r3, r3, r9
001e0c  0b613111  add.f.rn r2, r2, r19
001e10  b7257500  beq r10, r7, 360
001e14  9f090500  addli r19, r10, 0
001e18  3730c700  beq r14, r12, 12
001e1c  9729b500  xor r19, r10, r11
001e20  8b993311  add.s r19, r7, r19
001e24  0b9ae920  mul.s r20, r19, r14
001e28  12320002  vadd.s.mz vr4{mr1}, zero, vr0
001e2c  92310002  vadd.s.mz vr3{mr1}, zero, vr0
001e30  12310002  vadd.s.mz vr2{mr1}, zero, vr0
001e34  92300002  vadd.s.mz vr1{mr1}, zero, vr0
001e38  0b9a4719  sub.s r20, r15, r20
001e3c  0b1cea40  min.s r24, r20, r14
001e40  bf5d8cfe  blt.s r24, r8, -140
001e44  92300002  vadd.s.mz vr1{mr1}, zero, vr0
001e48  12310002  vadd.s.mz vr2{mr1}, zero, vr0
001e4c  92310002  vadd.s.mz vr3{mr1}, zero, vr0
001e50  12320002  vadd.s.mz vr4{mr1}, zero, vr0
001e54  9f0c0000  addli r25, zero, 0
001e58  0b1d3321  mul.s r26, r6, r19
001e5c  9f0d8fd7  addli r27, r30, -5184
001e60  1f8e0600  addli r28, r13, 0
001e64  8b19ae11  add.s r19, r28, r26
001e68  9f848c00  addli r9, r25, 64
001e6c  ca820902  vloads.mz vr5{mr1}, 0(r19)
001e70  1f8a8900  addli r20, r19, 64
001e74  4a030a02  vloads.mz vr6{mr1}, 0(r20)
001e78  0b9aad11  add.s r20, r27, r26
001e7c  c2030a02  vload.mz vr7{mr1}, 0(r20)
001e80  9f0a8a00  addli r21, r20, 64
001e84  42840a02  vload.mz vr8{mr1}, 0(r21)
001e88  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
001e8c  92320002  vadd.s.mz vr5{mr1}, zero, vr0
001e90  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
001e94  06b40300  vfp162float_l.rn vr8, vr7
001e98  86f30300  vfp162float_h.rn vr7, vr7
001e9c  86340300  vfp162float_l.rn vr9, vr6
001ea0  06730300  vfp162float_h.rn vr6, vr6
001ea4  86120400  vfloat2fp16_l.rn vr5, vr8
001ea8  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
001eac  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
001eb0  12340002  vadd.s.mz vr8{mr1}, zero, vr0
001eb4  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
001eb8  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
001ebc  06940400  vfloat2fp16_l.rn vr8, vr9
001ec0  86d20300  vfloat2fp16_h.rn vr5, vr7
001ec4  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
001ec8  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
001ecc  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
001ed0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001ed4  06540300  vfloat2fp16_h.rn vr8, vr6
001ed8  46005a02  vstore.mz vr5{mr1}, 0(r20)
001edc  46808a02  vstore.mz vr8{mr1}, 0(r21)
001ee0  4b5b9cfe  ble.s r24, r9, -300
001ee4  9f840901  addli r9, r19, 128
001ee8  9f8c0c01  addli r25, r25, 128
001eec  1f0e0e02  addli r28, r28, 256
001ef0  9f8d0d02  addli r27, r27, 256
001ef4  ca820402  vloads.mz vr5{mr1}, 0(r9)
001ef8  9f848901  addli r9, r19, 192
001efc  9f090a01  addli r19, r20, 128
001f00  4a830402  vloads.mz vr6{mr1}, 0(r9)
001f04  c2830902  vload.mz vr7{mr1}, 0(r19)
001f08  9f048a01  addli r9, r20, 192
001f0c  42840402  vload.mz vr8{mr1}, 0(r9)
001f10  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
001f14  92320002  vadd.s.mz vr5{mr1}, zero, vr0
001f18  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
001f1c  12330002  vadd.s.mz vr6{mr1}, zero, vr0
001f20  86b40300  vfp162float_l.rn vr9, vr7
001f24  86f30300  vfp162float_h.rn vr7, vr7
001f28  86920400  vfloat2fp16_l.rn vr5, vr9
001f2c  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
001f30  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
001f34  86340400  vfp162float_l.rn vr9, vr8
001f38  06740400  vfp162float_h.rn vr8, vr8
001f3c  06930400  vfloat2fp16_l.rn vr6, vr9
001f40  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
001f44  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
001f48  86d20300  vfloat2fp16_h.rn vr5, vr7
001f4c  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
001f50  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
001f54  06530400  vfloat2fp16_h.rn vr6, vr8
001f58  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
001f5c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
001f60  46805902  vstore.mz vr5{mr1}, 0(r19)
001f64  46806402  vstore.mz vr6{mr1}, 0(r9)
001f68  bffb8cff  blt.s r25, r24, -260
001f6c  5bc9ffff  j -440
001f70  1f010000  addli r2, zero, 0
001f74  9f010000  addli r3, zero, 0
001f78  00a00000  mfence { lm }
001f7c  3f8787fe  blt.s r15, r8, -576
001f80  8f815118  div.f.rn r3, r3, r5
001f84  0f015118  div.f.rn r2, r2, r5
001f88  e3043f00  loadli.w r9,  24(r30)
001f8c  ab5c0000  lui r25, 5
001f90  2b6d0000  lui r26, 6
001f94  1f050000  addli r10, zero, 0
001f98  1f0c8fd7  addli r24, r30, -5184
001f9c  9f8c0c00  addli r25, r25, 0
001fa0  1f0d0d00  addli r26, r26, 0
001fa4  8be93120  mul.f.rn r19, r3, r3
001fa8  8be10158  neg.f r3, r3
001fac  0b613119  sub.f.rn r2, r2, r19
001fb0  0b619110  add.f.rn r2, r2, r9
001fb4  ab04803f  lui r9, 260096
001fb8  0f010108  sqrt.f.rn r2, r2
001fbc  0f812418  div.f.rn r2, r9, r2
001fc0  c2000c02  vload.mz vr1{mr1}, 0(r24)
001fc4  4a810c02  vloads.mz vr2{mr1}, 0(r25)
001fc8  ca010d02  vloads.mz vr3{mr1}, 0(r26)
001fcc  9f094500  addli r19, r10, 32
001fd0  06b20000  vfp162float_l.rn vr4, vr1
001fd4  86f00000  vfp162float_h.rn vr1, vr1
001fd8  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
001fdc  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
001fe0  86320100  vfp162float_l.rn vr5, vr2
001fe4  06b30100  vfp162float_l.rn vr6, vr3
001fe8  06710100  vfp162float_h.rn vr2, vr2
001fec  86f10100  vfp162float_h.rn vr3, vr3
001ff0  8a131102  vmul.f.mz.rn vr7{mr1}, r2, vr1
001ff4  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
001ff8  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001ffc  a6912302  vmac.f.mz.rn vr3{mr1}, vr7, vr2
002000  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
002004  12311002  vadd.s.mz vr2{mr1}, zero, vr1
002008  06110300  vfloat2fp16_l.rn vr2, vr6
00200c  06d10100  vfloat2fp16_h.rn vr2, vr3
002010  46002c02  vstore.mz vr2{mr1}, 0(r24)
002014  cba437ff  ble.s r15, r19, -728
002018  9f898c00  addli r19, r25, 64
00201c  1f0a8c00  addli r20, r24, 64
002020  1f058500  addli r10, r10, 64
002024  9f8c0c01  addli r25, r25, 128
002028  1f0c0c01  addli r24, r24, 128
00202c  4a810902  vloads.mz vr2{mr1}, 0(r19)
002030  9f098d00  addli r19, r26, 64
002034  c2010a02  vload.mz vr3{mr1}, 0(r20)
002038  1f0d0d01  addli r26, r26, 128
00203c  4a820902  vloads.mz vr4{mr1}, 0(r19)
002040  86b20100  vfp162float_l.rn vr5, vr3
002044  86f10100  vfp162float_h.rn vr3, vr3
002048  92925102  vadd.f.mz.rn vr5{mr1}, r3, vr5
00204c  92913102  vadd.f.mz.rn vr3{mr1}, r3, vr3
002050  06330100  vfp162float_l.rn vr6, vr2
002054  06710100  vfp162float_h.rn vr2, vr2
002058  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
00205c  8a113102  vmul.f.mz.rn vr3{mr1}, r2, vr3
002060  86330200  vfp162float_l.rn vr7, vr4
002064  06720200  vfp162float_h.rn vr4, vr4
002068  a6936202  vmac.f.mz.rn vr7{mr1}, vr5, vr6
00206c  26922102  vmac.f.mz.rn vr4{mr1}, vr3, vr2
002070  86900300  vfloat2fp16_l.rn vr1, vr7
002074  86500200  vfloat2fp16_h.rn vr1, vr4
002078  46001a02  vstore.mz vr1{mr1}, 0(r20)
00207c  3f1df5fe  blt.s r10, r15, -188
002080  db97ffff  j -836
002084  9f000040  addli r1, zero, 8192
002088  2b0100f0  lui r2, 983040
00208c  97902000  or r1, r1, r2
002090  2ba10000  lui r2, 10
002094  1f010100  addli r2, r2, 0
002098  ff002300  l_gm2sm r1, r2, 0(r[7:8])
00209c  db070000  j 60
0020a0  63012f00  loadli.w r2,  16(r30)
0020a4  ab0100f0  lui r3, 983040
0020a8  1b312100  slli r2, r2, 2
0020ac  17113100  or r2, r2, r3
0020b0  abf10000  lui r3, 15
0020b4  9f810108  addli r3, r3, 1024
0020b8  7f013300  l_gm2sm r2, r3, 0(r[7:8])
0020bc  5bf20000  j 1936
0020c0  9f000040  addli r1, zero, 8192
0020c4  2b0100f0  lui r2, 983040
0020c8  97902000  or r1, r1, r2
0020cc  2bc10000  lui r2, 12
0020d0  1f010100  addli r2, r2, 0
0020d4  ff002400  l_gm2sm r1, r2, 0(r[9:10])
0020d8  abf00000  lui r1, 15
0020dc  00200300  mfence { sm, gm }
0020e0  1b011500  andi r2, r10, 1
0020e4  9f020006  addli r5, zero, 768
0020e8  9b90f0ff  ori r1, r1, 4095
0020ec  80a10004  csr_set csr3, r1
0020f0  9f000006  addli r1, zero, 768
0020f4  00d00100  sync_group
0020f8  67082fd6  storeli.w r2, -5248(r30)
0020fc  37200100  beq r2, zero, 8
002100  9f02000a  addli r5, zero, 1280
002104  63411f00  loadli.w r2,  12(r30)
002108  9f110000  addli r3, zero, 1
00210c  bf3c3104  blt.s r2, r3, 2860
002110  e3010fd7  loadli.w r3,  -5248(r30)
002114  00510102  load_param_i r2, 2
002118  2b8b0000  lui r22, 8
00211c  2bee0000  lui r28, 14
002120  2be70000  lui r14, 14
002124  1f030000  addli r6, zero, 0
002128  9b441500  srli r9, r10, 1
00212c  9bb72200  slli r15, r5, 2
002130  9f098fd7  addli r19, r30, -5184
002134  9f0b0005  addli r23, zero, 640
002138  9f0c0001  addli r25, zero, 128
00213c  1f0d8000  addli r26, zero, 64
002140  9f0d4000  addli r27, zero, 32
002144  9f0a0003  addli r21, zero, 384
002148  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00214c  1b441100  srli r8, r2, 1
002150  2ba10000  lui r2, 10
002154  1f0b0b00  addli r22, r22, 0
002158  1f0e0e00  addli r28, r28, 0
00215c  1f070704  addli r14, r14, 512
002160  8b901120  mul.s r1, r3, r1
002164  1f010100  addli r2, r2, 0
002168  67041fd6  storeli.w r1, -5312(r30)
00216c  9bb02000  slli r1, r1, 2
002170  0b982010  add.s r16, r1, r2
002174  2bc10000  lui r2, 12
002178  1f010100  addli r2, r2, 0
00217c  8b982010  add.s r17, r1, r2
002180  abf0ffff  lui r1, 1048575
002184  1f018fd5  addli r2, r30, -5440
002188  9b9000f8  ori r1, r1, 3968
00218c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002190  e74b1fd4  storeli.w r1, -5444(r30)
002194  abf00000  lui r1, 15
002198  1b99f0ff  ori r18, r1, 4095
00219c  db030000  j 28
0021a0  00a00300  mfence { lm, sm, gm }
0021a4  80210904  csr_set csr3, r18
0021a8  00d00100  sync_group
0021ac  0b138310  add.s r6, r6, r8
0021b0  3f20d300  blt.s r6, r13, 8
0021b4  5bcd0000  j 1640
0021b8  8b109310  add.s r1, r6, r9
0021bc  cb9f16fe  ble.s r13, r1, -28
0021c0  63011f00  loadli.w r2,  8(r30)
0021c4  9f210000  addli r3, zero, 2
0021c8  1f027fd6  addli r4, r30, -5320
0021cc  8b902010  add.s r1, r1, r2
0021d0  63018fd6  loadli.w r2,  -5312(r30)
0021d4  9bb0b000  slli r1, r1, 11
0021d8  97902000  or r1, r1, r2
0021dc  b3900028  sext_int2long r[2:3], r1
0021e0  97b53002  sll.d r[12:13], r[2:3], r3
0021e4  6b510200  load.d r[3:4], 0(r4)
0021e8  ab0000f0  lui r1, 983040
0021ec  97901700  or r1, r15, r1
0021f0  0b21b110  add.ul r[3:4], r[3:4], r[12:13]
0021f4  ff203101  l_gm2lm r1, r19, 0(r[3:4])
0021f8  00a00200  mfence { lm, gm }
0021fc  e3000fd7  loadli.w r1,  -5248(r30)
002200  3ba60000  bneq r1, zero, 392
002204  9f018fd5  addli r3, r30, -5440
002208  63417fd5  loadli.w r2,  -5444(r30)
00220c  9f000000  addli r1, zero, 0
002210  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
002214  92303002  vadd.s.mz vr1{mr1}, zero, vr3
002218  12313002  vadd.s.mz vr2{mr1}, zero, vr3
00221c  12323002  vadd.s.mz vr4{mr1}, zero, vr3
002220  0b956011  add.s r10, r1, r22
002224  8b911910  add.s r3, r19, r1
002228  1f010101  addli r2, r2, 128
00222c  9f800004  addli r1, r1, 512
002230  1f020501  addli r4, r10, 128
002234  4a100502  vloads_mask16.mz vr0{mr1}, 0(r10)
002238  9f038500  addli r7, r10, 64
00223c  42940102  vload_mask16.mz vr8{mr1}, 0(r3)
002240  9f868101  addli r13, r3, 192
002244  ca120202  vloads_mask16.mz vr5{mr1}, 0(r4)
002248  1f028501  addli r4, r10, 192
00224c  4a930302  vloads_mask16.mz vr6{mr1}, 0(r7)
002250  9f838100  addli r7, r3, 64
002254  c2950602  vload_mask16.mz vr11{mr1}, 0(r13)
002258  ca130202  vloads_mask16.mz vr7{mr1}, 0(r4)
00225c  1f820101  addli r4, r3, 128
002260  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
002264  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
002268  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
00226c  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
002270  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
002274  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
002278  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00227c  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
002280  46108202  vstore_mask16.mz vr8{mr1}, 0(r4)
002284  1f020502  addli r4, r10, 256
002288  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
00228c  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
002290  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
002294  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
002298  9f830103  addli r7, r3, 384
00229c  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
0022a0  1f028502  addli r4, r10, 320
0022a4  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
0022a8  9f860102  addli r13, r3, 256
0022ac  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0022b0  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0022b4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0022b8  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
0022bc  1f020503  addli r4, r10, 384
0022c0  c2930602  vload_mask16.mz vr7{mr1}, 0(r13)
0022c4  1f058503  addli r10, r10, 448
0022c8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0022cc  4a140202  vloads_mask16.mz vr8{mr1}, 0(r4)
0022d0  1f828102  addli r4, r3, 320
0022d4  4a150502  vloads_mask16.mz vr10{mr1}, 0(r10)
0022d8  9f818103  addli r3, r3, 448
0022dc  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
0022e0  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0022e4  c2930302  vload_mask16.mz vr7{mr1}, 0(r7)
0022e8  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0022ec  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
0022f0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0022f4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0022f8  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
0022fc  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
002300  46106202  vstore_mask16.mz vr6{mr1}, 0(r4)
002304  13027105  setlt.u r4, r2, r23
002308  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
00230c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002310  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
002314  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
002318  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
00231c  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
002320  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
002324  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
002328  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00232c  bb5b02fe  bneq r4, zero, -268
002330  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
002334  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002338  9f000002  addli r1, zero, 256
00233c  6af100c0  vsrl.p vr2, r1, vr0
002340  eaf110c0  vsrl.p vr3, r1, vr1
002344  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002348  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00234c  6af10cc0  vsrl.p vr2, r25, vr0
002350  eaf11cc0  vsrl.p vr3, r25, vr1
002354  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002358  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00235c  6a710dc0  vsrl.p vr2, r26, vr0
002360  ea711dc0  vsrl.p vr3, r26, vr1
002364  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002368  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00236c  6af10dc0  vsrl.p vr2, r27, vr0
002370  eaf11dc0  vsrl.p vr3, r27, vr1
002374  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002378  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00237c  fa110040  vextracti.f r3, 0(vr0)
002380  7a910040  vextracti.f r2, 0(vr1)
002384  5b630000  j 792
002388  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
00238c  2bf1ffff  lui r2, 1048575
002390  9f000000  addli r1, zero, 0
002394  12311002  vadd.s.mz vr2{mr1}, zero, vr1
002398  12321002  vadd.s.mz vr4{mr1}, zero, vr1
00239c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0023a0  1b1101f8  ori r2, r2, 3968
0023a4  0b151b10  add.s r10, r22, r1
0023a8  8b911910  add.s r3, r19, r1
0023ac  1f010101  addli r2, r2, 128
0023b0  9f800004  addli r1, r1, 512
0023b4  1f0a0531  addli r20, r10, 6272
0023b8  9f030530  addli r7, r10, 6144
0023bc  1f028531  addli r4, r10, 6336
0023c0  9f860118  addli r13, r3, 3072
0023c4  ca130a02  vloads_mask16.mz vr7{mr1}, 0(r20)
0023c8  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
0023cc  9f038530  addli r7, r10, 6208
0023d0  ca140202  vloads_mask16.mz vr9{mr1}, 0(r4)
0023d4  1f828118  addli r4, r3, 3136
0023d8  1f8a8119  addli r20, r3, 3264
0023dc  42930602  vload_mask16.mz vr6{mr1}, 0(r13)
0023e0  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
0023e4  9f830119  addli r7, r3, 3200
0023e8  42100a02  vload_mask16.mz vr0{mr1}, 0(r20)
0023ec  c2150202  vload_mask16.mz vr11{mr1}, 0(r4)
0023f0  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
0023f4  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0023f8  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
0023fc  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
002400  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
002404  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002408  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
00240c  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
002410  9f030532  addli r7, r10, 6400
002414  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
002418  46100a02  vstore_mask16.mz vr0{mr1}, 0(r20)
00241c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002420  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
002424  9f86011a  addli r13, r3, 3328
002428  c2930602  vload_mask16.mz vr7{mr1}, 0(r13)
00242c  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
002430  1f82011b  addli r4, r3, 3456
002434  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
002438  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
00243c  4a900302  vloads_mask16.mz vr0{mr1}, 0(r7)
002440  9f038532  addli r7, r10, 6464
002444  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002448  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00244c  4a930302  vloads_mask16.mz vr6{mr1}, 0(r7)
002450  9f030533  addli r7, r10, 6528
002454  1f058533  addli r10, r10, 6592
002458  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
00245c  9f83811a  addli r7, r3, 3392
002460  4a150502  vloads_mask16.mz vr10{mr1}, 0(r10)
002464  9f81811b  addli r3, r3, 3520
002468  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
00246c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
002470  c2130202  vload_mask16.mz vr7{mr1}, 0(r4)
002474  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
002478  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
00247c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002480  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
002484  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
002488  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
00248c  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
002490  93035105  setlt.u r7, r2, r21
002494  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
002498  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00249c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0024a0  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0024a4  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0024a8  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
0024ac  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
0024b0  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0024b4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0024b8  bbbb03fe  bneq r7, zero, -276
0024bc  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0024c0  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0024c4  9f000002  addli r1, zero, 256
0024c8  2bf2ffff  lui r4, 1048575
0024cc  9f010000  addli r3, zero, 0
0024d0  1b1502f8  ori r10, r4, 3968
0024d4  eaf110c0  vsrl.p vr3, r1, vr1
0024d8  6af100c0  vsrl.p vr2, r1, vr0
0024dc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0024e0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024e4  eaf11cc0  vsrl.p vr3, r25, vr1
0024e8  6af10cc0  vsrl.p vr2, r25, vr0
0024ec  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0024f0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024f4  ea711dc0  vsrl.p vr3, r26, vr1
0024f8  6a710dc0  vsrl.p vr2, r26, vr0
0024fc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002500  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002504  eaf11dc0  vsrl.p vr3, r27, vr1
002508  6af10dc0  vsrl.p vr2, r27, vr0
00250c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002510  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002514  7a910040  vextracti.f r2, 0(vr1)
002518  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
00251c  fa100040  vextracti.f r1, 0(vr0)
002520  12311002  vadd.s.mz vr2{mr1}, zero, vr1
002524  12321002  vadd.s.mz vr4{mr1}, zero, vr1
002528  92311002  vadd.s.mz vr3{mr1}, zero, vr1
00252c  0b1a3b10  add.s r20, r22, r3
002530  8b963910  add.s r13, r19, r3
002534  1f050501  addli r10, r10, 128
002538  9f810104  addli r3, r3, 512
00253c  1f020a18  addli r4, r20, 3072
002540  9f030a19  addli r7, r20, 3200
002544  42940602  vload_mask16.mz vr8{mr1}, 0(r13)
002548  1f8c8601  addli r24, r13, 192
00254c  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
002550  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
002554  1f028a18  addli r4, r20, 3136
002558  9f038a19  addli r7, r20, 3264
00255c  c2150c02  vload_mask16.mz vr11{mr1}, 0(r24)
002560  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
002564  1f820601  addli r4, r13, 128
002568  ca930302  vloads_mask16.mz vr7{mr1}, 0(r7)
00256c  9f838600  addli r7, r13, 64
002570  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
002574  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
002578  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
00257c  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
002580  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
002584  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
002588  46108202  vstore_mask16.mz vr8{mr1}, 0(r4)
00258c  1f020a1a  addli r4, r20, 3328
002590  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
002594  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002598  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
00259c  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0025a0  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
0025a4  4a100202  vloads_mask16.mz vr0{mr1}, 0(r4)
0025a8  1f028a1a  addli r4, r20, 3392
0025ac  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
0025b0  1f8c0602  addli r24, r13, 256
0025b4  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
0025b8  9f830603  addli r7, r13, 384
0025bc  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0025c0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0025c4  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
0025c8  1f020a1b  addli r4, r20, 3456
0025cc  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
0025d0  1f0a8a1b  addli r20, r20, 3520
0025d4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0025d8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0025dc  4a140202  vloads_mask16.mz vr8{mr1}, 0(r4)
0025e0  1f828602  addli r4, r13, 320
0025e4  4a150a02  vloads_mask16.mz vr10{mr1}, 0(r20)
0025e8  9f868603  addli r13, r13, 448
0025ec  c2140202  vload_mask16.mz vr9{mr1}, 0(r4)
0025f0  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0025f4  c2930302  vload_mask16.mz vr7{mr1}, 0(r7)
0025f8  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0025fc  c2940602  vload_mask16.mz vr9{mr1}, 0(r13)
002600  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002604  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
002608  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
00260c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
002610  46106202  vstore_mask16.mz vr6{mr1}, 0(r4)
002614  13027505  setlt.u r4, r10, r23
002618  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
00261c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002620  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
002624  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
002628  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
00262c  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
002630  46907602  vstore_mask16.mz vr7{mr1}, 0(r13)
002634  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
002638  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00263c  bb4b02fe  bneq r4, zero, -272
002640  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
002644  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002648  9f010002  addli r3, zero, 256
00264c  6af101c0  vsrl.p vr2, r3, vr0
002650  eaf111c0  vsrl.p vr3, r3, vr1
002654  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002658  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00265c  6af10cc0  vsrl.p vr2, r25, vr0
002660  eaf11cc0  vsrl.p vr3, r25, vr1
002664  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002668  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00266c  6a710dc0  vsrl.p vr2, r26, vr0
002670  ea711dc0  vsrl.p vr3, r26, vr1
002674  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002678  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00267c  6af10dc0  vsrl.p vr2, r27, vr0
002680  eaf11dc0  vsrl.p vr3, r27, vr1
002684  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002688  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00268c  fa110040  vextracti.f r3, 0(vr0)
002690  7a920040  vextracti.f r4, 0(vr1)
002694  8be13010  add.f.rn r3, r1, r3
002698  0b614110  add.f.rn r2, r2, r4
00269c  0b028330  div.u r4, r6, r8
0026a0  80330002  core_id r7
0026a4  9f000000  addli r1, zero, 0
0026a8  1b326200  slli r4, r4, 6
0026ac  1b020204  andi r4, r4, 64
0026b0  17127200  or r4, r4, r7
0026b4  9b332200  slli r7, r4, 2
0026b8  0b95c311  add.s r10, r7, r28
0026bc  73603500  stores.w r3, 0(r10)
0026c0  9b01e207  andi r3, r4, 126
0026c4  0b92e310  add.s r4, r7, r14
0026c8  9b934300  ori r7, r7, 4
0026cc  1f050000  addli r10, zero, 0
0026d0  9bb12100  slli r3, r3, 2
0026d4  73602200  stores.w r2, 0(r4)
0026d8  0b91c311  add.s r2, r7, r28
0026dc  8b93e310  add.s r7, r7, r14
0026e0  00a00300  mfence { lm, sm, gm }
0026e4  80210904  csr_set csr3, r18
0026e8  00d00100  sync_group
0026ec  0b92c111  add.s r4, r3, r28
0026f0  6f410100  loads.w r2, 0(r2)
0026f4  8b91e110  add.s r3, r3, r14
0026f8  efc30300  loads.w r7, 0(r7)
0026fc  6f420200  loads.w r4, 0(r4)
002700  efc10100  loads.w r3, 0(r3)
002704  0b614110  add.f.rn r2, r2, r4
002708  8be13310  add.f.rn r3, r7, r3
00270c  ab03003a  lui r7, 237568
002710  0b627120  mul.f.rn r4, r2, r7
002714  0be17120  mul.f.rn r2, r3, r7
002718  8b614220  mul.f.rn r3, r4, r4
00271c  0b613118  sub.f.rn r2, r2, r3
002720  e3013f00  loadli.w r3,  24(r30)
002724  0b613110  add.f.rn r2, r2, r3
002728  ab01803f  lui r3, 260096
00272c  0f010108  sqrt.f.rn r2, r2
002730  0f812118  div.f.rn r2, r3, r2
002734  8b610258  neg.f r3, r4
002738  8b161810  add.s r13, r16, r1
00273c  0b9a1910  add.s r20, r19, r1
002740  8b931810  add.s r7, r17, r1
002744  1f8c8600  addli r24, r13, 64
002748  1f028a00  addli r4, r20, 64
00274c  42100a02  vload_mask16.mz vr0{mr1}, 0(r20)
002750  4a910602  vloads_mask16.mz vr2{mr1}, 0(r13)
002754  4a920302  vloads_mask16.mz vr4{mr1}, 0(r7)
002758  ca110c02  vloads_mask16.mz vr3{mr1}, 0(r24)
00275c  1f8c8300  addli r24, r7, 64
002760  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
002764  ca120c02  vloads_mask16.mz vr5{mr1}, 0(r24)
002768  1f0c4500  addli r24, r10, 32
00276c  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
002770  138c8207  setle.u r24, r5, r24
002774  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
002778  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
00277c  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
002780  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
002784  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
002788  46104a02  vstore_mask16.mz vr4{mr1}, 0(r20)
00278c  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
002790  bb110c00  bneq r24, zero, 100
002794  1f8c0601  addli r24, r13, 128
002798  1f020a01  addli r4, r20, 128
00279c  1f0a8a01  addli r20, r20, 192
0027a0  9f868601  addli r13, r13, 192
0027a4  1f058500  addli r10, r10, 64
0027a8  9f800002  addli r1, r1, 256
0027ac  4a110c02  vloads_mask16.mz vr2{mr1}, 0(r24)
0027b0  1f8c0301  addli r24, r7, 128
0027b4  9f838301  addli r7, r7, 192
0027b8  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
0027bc  c2100a02  vload_mask16.mz vr1{mr1}, 0(r20)
0027c0  4a920602  vloads_mask16.mz vr4{mr1}, 0(r13)
0027c4  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
0027c8  ca110c02  vloads_mask16.mz vr3{mr1}, 0(r24)
0027cc  93035504  setlt.u r7, r10, r5
0027d0  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
0027d4  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
0027d8  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
0027dc  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
0027e0  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
0027e4  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
0027e8  46103202  vstore_mask16.mz vr3{mr1}, 0(r4)
0027ec  46105a02  vstore_mask16.mz vr5{mr1}, 0(r20)
0027f0  3bad03fe  bneq r7, zero, -184
0027f4  6b510f00  load.d r[3:4], 0(r30)
0027f8  ab0000f0  lui r1, 983040
0027fc  00a00000  mfence { lm }
002800  97901700  or r1, r15, r1
002804  0b21b110  add.ul r[3:4], r[3:4], r[12:13]
002808  ff303101  s_lm2gm r1, r19, 0(r[3:4])
00280c  00a00200  mfence { lm, gm }
002810  e3461f00  loadli.w r13,  12(r30)
002814  0b138310  add.s r6, r6, r8
002818  bf06d3fc  blt.s r6, r13, -1632
00281c  abf00000  lui r1, 15
002820  9b90f0ff  ori r1, r1, 4095
002824  80a10004  csr_set csr3, r1
002828  00d00100  sync_group
00282c  db810000  j 1036
002830  63012f00  loadli.w r2,  16(r30)
002834  ab0100f0  lui r3, 983040
002838  1b312100  slli r2, r2, 2
00283c  17113100  or r2, r2, r3
002840  ab010100  lui r3, 16
002844  9f810108  addli r3, r3, 1024
002848  7f013400  l_gm2sm r2, r3, 0(r[9:10])
00284c  2bf10000  lui r2, 15
002850  e3411f00  loadli.w r3,  12(r30)
002854  00200300  mfence { sm, gm }
002858  1b11f1ff  ori r2, r2, 4095
00285c  80210104  csr_set csr3, r2
002860  00d00100  sync_group
002864  4bdf1100  ble.s r3, r1, 980
002868  63012f00  loadli.w r2,  16(r30)
00286c  e3412f00  loadli.w r3,  20(r30)
002870  2bea0000  lui r20, 14
002874  abfa0000  lui r21, 15
002878  2b0b0100  lui r22, 16
00287c  9f048fd7  addli r9, r30, -5184
002880  9f150000  addli r11, zero, 1
002884  9f060002  addli r13, zero, 256
002888  9f080001  addli r17, zero, 128
00288c  1f098000  addli r18, zero, 64
002890  9f094000  addli r19, zero, 32
002894  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002898  1f0a0a08  addli r20, r20, 1024
00289c  9f8a0a08  addli r21, r21, 1024
0028a0  1f0b0b08  addli r22, r22, 1024
0028a4  1b342100  slli r8, r2, 2
0028a8  8b123110  add.s r5, r2, r3
0028ac  33010108  fix2float.rn r2, r2
0028b0  1bb32100  slli r6, r3, 2
0028b4  e74b2fd4  storeli.w r2, -5444(r30)
0028b8  1ff1f2ff  addli r2, r5, -1
0028bc  670c8fd4  storeli.w r8, -5440(r30)
0028c0  8b133130  div.s r7, r2, r3
0028c4  2bf1ffff  lui r2, 1048575
0028c8  1b16f1ff  ori r12, r2, 4095
0028cc  1f010fd7  addli r2, r30, -5248
0028d0  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0028d4  5b080000  j 64
0028d8  9f028fd6  addli r5, r30, -5312
0028dc  00a00000  mfence { lm }
0028e0  eb510f00  load.d r[4:5], 0(r30)
0028e4  2b0100f0  lui r2, 983040
0028e8  63048fd5  loadli.w r8,  -5440(r30)
0028ec  ebdb0200  load.d r[24:25], 0(r5)
0028f0  17112400  or r2, r8, r2
0028f4  8bab7111  add.ul r[24:25], r[4:5], r[24:25]
0028f8  80510102  load_param_i r3, 2
0028fc  7fb19b00  s_lm2gm r2, r9, 0(r[24:25])
002900  8b901110  add.s r1, r3, r1
002904  00a00200  mfence { lm, gm }
002908  63411f00  loadli.w r2,  12(r30)
00290c  3fa02000  blt.s r1, r2, 8
002910  5b650000  j 808
002914  63011f00  loadli.w r2,  8(r30)
002918  1f220000  addli r4, zero, 2
00291c  9f027fd6  addli r5, r30, -5320
002920  0b912010  add.s r2, r1, r2
002924  0b11f120  mul.s r2, r2, r15
002928  33110128  sext_int2long r[3:4], r2
00292c  973b4102  sll.d r[24:25], r[3:4], r4
002930  ebd10200  load.d r[4:5], 0(r5)
002934  2b0100f0  lui r2, 983040
002938  9f028fd6  addli r5, r30, -5312
00293c  17112400  or r2, r8, r2
002940  73b07201  store.d r[24:25], 0(r5)
002944  8bac7111  add.ul r[26:27], r[4:5], r[24:25]
002948  7fa19c00  l_gm2lm r2, r9, 0(r[26:27])
00294c  00a00200  mfence { lm, gm }
002950  bf97b300  blt.s r7, r11, 484
002954  9f010000  addli r3, zero, 0
002958  1f010000  addli r2, zero, 0
00295c  1f050000  addli r10, zero, 0
002960  db0c0000  j 100
002964  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
002968  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00296c  1f150500  addli r10, r10, 1
002970  6af106c0  vsrl.p vr2, r13, vr0
002974  eaf116c0  vsrl.p vr3, r13, vr1
002978  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00297c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002980  6af108c0  vsrl.p vr2, r17, vr0
002984  eaf118c0  vsrl.p vr3, r17, vr1
002988  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00298c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002990  6a7109c0  vsrl.p vr2, r18, vr0
002994  ea7119c0  vsrl.p vr3, r18, vr1
002998  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00299c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0029a0  6af109c0  vsrl.p vr2, r19, vr0
0029a4  eaf119c0  vsrl.p vr3, r19, vr1
0029a8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0029ac  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0029b0  7a120040  vextracti.f r4, 0(vr0)
0029b4  fa920040  vextracti.f r5, 0(vr1)
0029b8  8be14110  add.f.rn r3, r3, r4
0029bc  0b615110  add.f.rn r2, r2, r5
0029c0  b7757500  beq r10, r7, 380
0029c4  9f020500  addli r5, r10, 0
0029c8  3730d700  beq r14, r13, 12
0029cc  9722c500  xor r5, r10, r12
0029d0  8b925310  add.s r5, r7, r5
0029d4  1f020fd7  addli r4, r30, -5248
0029d8  0b94e220  mul.s r8, r5, r14
0029dc  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
0029e0  0b948718  sub.s r8, r15, r8
0029e4  8b1ce440  min.s r25, r8, r14
0029e8  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0029ec  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0029f0  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0029f4  bfcdbcfe  blt.s r25, r11, -144
0029f8  42120202  vload_mask16.mz vr4{mr1}, 0(r4)
0029fc  1f0d0000  addli r26, zero, 0
002a00  8b1d5320  mul.s r27, r6, r5
002a04  1f0e8fd7  addli r28, r30, -5184
002a08  1f080a00  addli r16, r20, 0
002a0c  92304002  vadd.s.mz vr1{mr1}, zero, vr4
002a10  12314002  vadd.s.mz vr2{mr1}, zero, vr4
002a14  92314002  vadd.s.mz vr3{mr1}, zero, vr4
002a18  8b12b811  add.s r5, r16, r27
002a1c  0b14be11  add.s r8, r28, r27
002a20  1f828200  addli r4, r5, 64
002a24  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
002a28  9f8b8201  addli r23, r5, 192
002a2c  c2140402  vload_mask16.mz vr9{mr1}, 0(r8)
002a30  1f0c8401  addli r24, r8, 192
002a34  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
002a38  1f820201  addli r4, r5, 128
002a3c  4a940b02  vloads_mask16.mz vr8{mr1}, 0(r23)
002a40  9f0b0401  addli r23, r8, 128
002a44  42100c02  vload_mask16.mz vr0{mr1}, 0(r24)
002a48  ca130202  vloads_mask16.mz vr7{mr1}, 0(r4)
002a4c  c2950b02  vload_mask16.mz vr11{mr1}, 0(r23)
002a50  1f028400  addli r4, r8, 64
002a54  42150202  vload_mask16.mz vr10{mr1}, 0(r4)
002a58  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
002a5c  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
002a60  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
002a64  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
002a68  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002a6c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002a70  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
002a74  46106202  vstore_mask16.mz vr6{mr1}, 0(r4)
002a78  1f028d00  addli r4, r26, 64
002a7c  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
002a80  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
002a84  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002a88  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
002a8c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002a90  46907b02  vstore_mask16.mz vr7{mr1}, 0(r23)
002a94  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
002a98  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
002a9c  4bab4cfe  ble.s r25, r4, -312
002aa0  9f8b0202  addli r23, r5, 256
002aa4  1f8c8202  addli r24, r5, 320
002aa8  1f020402  addli r4, r8, 256
002aac  1f0d0d01  addli r26, r26, 128
002ab0  1f080804  addli r16, r16, 512
002ab4  1f0e0e04  addli r28, r28, 512
002ab8  4a900b02  vloads_mask16.mz vr0{mr1}, 0(r23)
002abc  9f8b0203  addli r23, r5, 384
002ac0  9f828203  addli r5, r5, 448
002ac4  ca120c02  vloads_mask16.mz vr5{mr1}, 0(r24)
002ac8  42130202  vload_mask16.mz vr6{mr1}, 0(r4)
002acc  ca930b02  vloads_mask16.mz vr7{mr1}, 0(r23)
002ad0  4a940202  vloads_mask16.mz vr8{mr1}, 0(r5)
002ad4  9f020403  addli r5, r8, 384
002ad8  9f0b8402  addli r23, r8, 320
002adc  1f048403  addli r8, r8, 448
002ae0  42950202  vload_mask16.mz vr10{mr1}, 0(r5)
002ae4  c2940b02  vload_mask16.mz vr9{mr1}, 0(r23)
002ae8  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
002aec  42130402  vload_mask16.mz vr6{mr1}, 0(r8)
002af0  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
002af4  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
002af8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
002afc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002b00  46100202  vstore_mask16.mz vr0{mr1}, 0(r4)
002b04  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
002b08  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
002b0c  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
002b10  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002b14  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
002b18  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002b1c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002b20  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
002b24  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
002b28  46106402  vstore_mask16.mz vr6{mr1}, 0(r8)
002b2c  bf3b9dff  blt.s r26, r25, -276
002b30  dbc6ffff  j -460
002b34  1f010000  addli r2, zero, 0
002b38  9f010000  addli r3, zero, 0
002b3c  00a00000  mfence { lm }
002b40  3fe6b7fe  blt.s r15, r11, -616
002b44  63427fd5  loadli.w r4,  -5444(r30)
002b48  1f050000  addli r10, zero, 0
002b4c  1f080000  addli r16, zero, 0
002b50  8f814118  div.f.rn r3, r3, r4
002b54  0f014118  div.f.rn r2, r2, r4
002b58  63023f00  loadli.w r4,  24(r30)
002b5c  8be23120  mul.f.rn r5, r3, r3
002b60  8be10158  neg.f r3, r3
002b64  0b615118  sub.f.rn r2, r2, r5
002b68  0b614110  add.f.rn r2, r2, r4
002b6c  2b02803f  lui r4, 260096
002b70  0f010108  sqrt.f.rn r2, r2
002b74  0f012218  div.f.rn r2, r4, r2
002b78  0b145511  add.s r8, r10, r21
002b7c  8b92a410  add.s r5, r9, r10
002b80  9f0c8400  addli r25, r8, 64
002b84  4a110402  vloads_mask16.mz vr2{mr1}, 0(r8)
002b88  0b146511  add.s r8, r10, r22
002b8c  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
002b90  ca910c02  vloads_mask16.mz vr3{mr1}, 0(r25)
002b94  9f8c8200  addli r25, r5, 64
002b98  4a120402  vloads_mask16.mz vr4{mr1}, 0(r8)
002b9c  1f048400  addli r8, r8, 64
002ba0  c2920c02  vload_mask16.mz vr5{mr1}, 0(r25)
002ba4  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
002ba8  1f044800  addli r8, r16, 32
002bac  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
002bb0  92925102  vadd.f.mz.rn vr5{mr1}, r3, vr5
002bb4  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
002bb8  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002bbc  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
002bc0  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
002bc4  46904202  vstore_mask16.mz vr4{mr1}, 0(r5)
002bc8  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
002bcc  4bb487fe  ble.s r15, r8, -756
002bd0  0b94aa10  add.s r8, r21, r10
002bd4  8b1cab10  add.s r25, r22, r10
002bd8  1f088800  addli r16, r16, 64
002bdc  1f050502  addli r10, r10, 256
002be0  1f0d0401  addli r26, r8, 128
002be4  9f8d0c01  addli r27, r25, 128
002be8  1f048401  addli r8, r8, 192
002bec  9f8c8c01  addli r25, r25, 192
002bf0  ca100d02  vloads_mask16.mz vr1{mr1}, 0(r26)
002bf4  1f8d0201  addli r26, r5, 128
002bf8  9f828201  addli r5, r5, 192
002bfc  4a910d02  vloads_mask16.mz vr2{mr1}, 0(r27)
002c00  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
002c04  4a930c02  vloads_mask16.mz vr6{mr1}, 0(r25)
002c08  c2110d02  vload_mask16.mz vr3{mr1}, 0(r26)
002c0c  42920202  vload_mask16.mz vr4{mr1}, 0(r5)
002c10  92913102  vadd.f.mz.rn vr3{mr1}, r3, vr3
002c14  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
002c18  8a113102  vmul.f.mz.rn vr3{mr1}, r2, vr3
002c1c  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
002c20  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
002c24  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
002c28  46102d02  vstore_mask16.mz vr2{mr1}, 0(r26)
002c2c  46906202  vstore_mask16.mz vr6{mr1}, 0(r5)
002c30  3f2df8fe  blt.s r16, r15, -184
002c34  db94ffff  j -860
002c38  9f0e0fd5  addli sp, r30, -5504
002c3c  e38fae2a  loadli.w r31,  5456(sp)
002c40  63cfae2a  loadli.w r30,  5460(sp)
002c44  638ebe2a  loadli.w r28,  5464(sp)
002c48  e3cdbe2a  loadli.w r27,  5468(sp)
002c4c  638dce2a  loadli.w r26,  5472(sp)
002c50  e3ccce2a  loadli.w r25,  5476(sp)
002c54  638cde2a  loadli.w r24,  5480(sp)
002c58  e3cbde2a  loadli.w r23,  5484(sp)
002c5c  638bee2a  loadli.w r22,  5488(sp)
002c60  e3caee2a  loadli.w r21,  5492(sp)
002c64  638afe2a  loadli.w r20,  5496(sp)
002c68  e3c9fe2a  loadli.w r19,  5500(sp)
002c6c  9f8e0e2b  addli sp, sp, 5504
002c70  5f800f00  jr r31, 0
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
002eb0  00100000  exit
