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
0001b0  63472f00  loadli.w r14,  20(r30)
0001b4  e3072f00  loadli.w r15,  16(r30)
0001b8  e3461f00  loadli.w r13,  12(r30)
0001bc  e3004f00  loadli.w r1,  32(r30)
0001c0  1f05ffd6  addli r10, r30, -5256
0001c4  73302500  store.d r[3:4], 0(r10)
0001c8  37910000  beq r1, zero, 68
0001cc  e3403f00  loadli.w r1,  28(r30)
0001d0  37920000  beq r1, zero, 132
0001d4  80300002  core_id r1
0001d8  1f210000  addli r2, zero, 2
0001dc  37fd2004  beq r1, r2, 2908
0001e0  1f110000  addli r2, zero, 1
0001e4  b7dc2004  beq r1, r2, 2868
0001e8  bbbd0004  bneq r1, zero, 2924
0001ec  63012f00  loadli.w r2,  16(r30)
0001f0  ab0100f0  lui r3, 983040
0001f4  1b311100  slli r2, r2, 1
0001f8  17113100  or r2, r2, r3
0001fc  ab010000  lui r3, 0
000200  9f810100  addli r3, r3, 0
000204  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000208  db690100  j 2892
00020c  e3403f00  loadli.w r1,  28(r30)
000210  b7fe0000  beq r1, zero, 956
000214  e3002f00  loadli.w r1,  16(r30)
000218  1f010010  addli r2, zero, 2048
00021c  3b9b2004  bneq r1, r2, 2756
000220  00350002  core_id r10
000224  9f200000  addli r1, zero, 2
000228  b74a1508  beq r10, r1, 4784
00022c  9f100000  addli r1, zero, 1
000230  b7391508  beq r10, r1, 4716
000234  bb7a0508  bneq r10, zero, 4796
000238  9f000040  addli r1, zero, 8192
00023c  2b0100f0  lui r2, 983040
000240  97902000  or r1, r1, r2
000244  2b410000  lui r2, 4
000248  1f010100  addli r2, r2, 0
00024c  ff002200  l_gm2sm r1, r2, 0(r[5:6])
000250  5b540200  j 4768
000254  80300002  core_id r1
000258  bb800000  bneq r1, zero, 32
00025c  63012f00  loadli.w r2,  16(r30)
000260  ab0100f0  lui r3, 983040
000264  1b311100  slli r2, r2, 1
000268  17113100  or r2, r2, r3
00026c  ab310000  lui r3, 3
000270  9f810100  addli r3, r3, 0
000274  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000278  2bf10000  lui r2, 15
00027c  e3411f00  loadli.w r3,  12(r30)
000280  00200300  mfence { sm, gm }
000284  1b11f1ff  ori r2, r2, 4095
000288  80210104  csr_set csr3, r2
00028c  00d00100  sync_group
000290  cbd7110e  ble.s r3, r1, 7668
000294  63012f00  loadli.w r2,  16(r30)
000298  e3412f00  loadli.w r3,  20(r30)
00029c  2b3b0000  lui r22, 3
0002a0  1f140000  addli r8, zero, 1
0002a4  1f068fd7  addli r12, r30, -5184
0002a8  9f080002  addli r17, zero, 256
0002ac  1f090001  addli r18, zero, 128
0002b0  9f098000  addli r19, zero, 64
0002b4  1f0a4000  addli r20, zero, 32
0002b8  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0002bc  1f0b0b00  addli r22, r22, 0
0002c0  0b133110  add.s r6, r2, r3
0002c4  1b321100  slli r4, r2, 1
0002c8  b3020108  fix2float.rn r5, r2
0002cc  1f71f3ff  addli r2, r6, -1
0002d0  1bb31100  slli r6, r3, 1
0002d4  8b133130  div.s r7, r2, r3
0002d8  2bf1ffff  lui r2, 1048575
0002dc  1b18f1ff  ori r16, r2, 4095
0002e0  5b070000  j 56
0002e4  00a00000  mfence { lm }
0002e8  eb540f00  load.d r[10:11], 0(r30)
0002ec  2b0100f0  lui r2, 983040
0002f0  1f068fd7  addli r12, r30, -5184
0002f4  80510102  load_param_i r3, 2
0002f8  17112200  or r2, r4, r2
0002fc  8b901110  add.s r1, r3, r1
000300  0ba57411  add.ul r[11:12], r[10:11], r[24:25]
000304  7f31c500  s_lm2gm r2, r12, 0(r[11:12])
000308  00a00200  mfence { lm, gm }
00030c  63411f00  loadli.w r2,  12(r30)
000310  3fa02000  blt.s r1, r2, 8
000314  5bae0300  j 7536
000318  63011f00  loadli.w r2,  8(r30)
00031c  0b912010  add.s r2, r1, r2
000320  0b11f120  mul.s r2, r2, r15
000324  33110128  sext_int2long r[3:4], r2
000328  973b8102  sll.d r[24:25], r[3:4], r8
00032c  9f01ffd6  addli r3, r30, -5256
000330  2b0100f0  lui r2, 983040
000334  ebd40100  load.d r[10:11], 0(r3)
000338  17112200  or r2, r4, r2
00033c  0ba57411  add.ul r[11:12], r[10:11], r[24:25]
000340  7f21c500  l_gm2lm r2, r12, 0(r[11:12])
000344  00a00200  mfence { lm, gm }
000348  3fc78300  blt.s r7, r8, 464
00034c  1f0d0000  addli r26, zero, 0
000350  9f0c0000  addli r25, zero, 0
000354  9f050000  addli r11, zero, 0
000358  db0c0000  j 100
00035c  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
000360  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000364  9f950500  addli r11, r11, 1
000368  6af138c0  vsrl.p vr2, r17, vr3
00036c  6af218c0  vsrl.p vr4, r17, vr1
000370  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
000374  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000378  ea7129c0  vsrl.p vr3, r18, vr2
00037c  6a7219c0  vsrl.p vr4, r18, vr1
000380  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000384  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000388  eaf129c0  vsrl.p vr3, r19, vr2
00038c  6af219c0  vsrl.p vr4, r19, vr1
000390  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000394  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000398  ea712ac0  vsrl.p vr3, r20, vr2
00039c  6a721ac0  vsrl.p vr4, r20, vr1
0003a0  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0003a4  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0003a8  7a110140  vextracti.f r2, 0(vr2)
0003ac  fa910040  vextracti.f r3, 0(vr1)
0003b0  0b6d2d10  add.f.rn r26, r26, r2
0003b4  8bec3c10  add.f.rn r25, r25, r3
0003b8  b7a57500  beq r11, r7, 360
0003bc  1f810500  addli r2, r11, 0
0003c0  37301701  beq r14, r17, 12
0003c4  17a10501  xor r2, r11, r16
0003c8  0b912310  add.s r2, r7, r2
0003cc  8b11e120  mul.s r3, r2, r14
0003d0  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0003d4  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0003d8  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0003dc  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0003e0  8b913718  sub.s r3, r15, r3
0003e4  0b96e140  min.s r12, r3, r14
0003e8  bf5d86fe  blt.s r12, r8, -140
0003ec  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0003f0  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0003f4  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0003f8  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0003fc  0b152320  mul.s r10, r6, r2
000400  9f060000  addli r13, zero, 0
000404  9f0d8fd7  addli r27, r30, -5184
000408  1f010b00  addli r2, r22, 0
00040c  8b11a110  add.s r3, r2, r10
000410  9f848600  addli r9, r13, 64
000414  ca820102  vloads.mz vr5{mr1}, 0(r3)
000418  1f8e8100  addli r28, r3, 64
00041c  4a030e02  vloads.mz vr6{mr1}, 0(r28)
000420  0b9ead10  add.s r28, r27, r10
000424  c2030e02  vload.mz vr7{mr1}, 0(r28)
000428  9f0a8e00  addli r21, r28, 64
00042c  42840a02  vload.mz vr8{mr1}, 0(r21)
000430  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
000434  92320002  vadd.s.mz vr5{mr1}, zero, vr0
000438  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
00043c  06b40300  vfp162float_l.rn vr8, vr7
000440  86f30300  vfp162float_h.rn vr7, vr7
000444  86340300  vfp162float_l.rn vr9, vr6
000448  06730300  vfp162float_h.rn vr6, vr6
00044c  86120400  vfloat2fp16_l.rn vr5, vr8
000450  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
000454  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
000458  12340002  vadd.s.mz vr8{mr1}, zero, vr0
00045c  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
000460  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
000464  06940400  vfloat2fp16_l.rn vr8, vr9
000468  86d20300  vfloat2fp16_h.rn vr5, vr7
00046c  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
000470  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
000474  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
000478  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00047c  06540300  vfloat2fp16_h.rn vr8, vr6
000480  46005e02  vstore.mz vr5{mr1}, 0(r28)
000484  46808a02  vstore.mz vr8{mr1}, 0(r21)
000488  4b5b96fe  ble.s r12, r9, -300
00048c  9f840101  addli r9, r3, 128
000490  9f818101  addli r3, r3, 192
000494  9f860601  addli r13, r13, 128
000498  1f010102  addli r2, r2, 256
00049c  9f8d0d02  addli r27, r27, 256
0004a0  ca820402  vloads.mz vr5{mr1}, 0(r9)
0004a4  4a830102  vloads.mz vr6{mr1}, 0(r3)
0004a8  9f040e01  addli r9, r28, 128
0004ac  9f018e01  addli r3, r28, 192
0004b0  c2830402  vload.mz vr7{mr1}, 0(r9)
0004b4  c2840102  vload.mz vr9{mr1}, 0(r3)
0004b8  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
0004bc  96c46402  vadd.hf.mz.rn vr9{mr1}, vr9, vr6
0004c0  92320002  vadd.s.mz vr5{mr1}, zero, vr0
0004c4  12330002  vadd.s.mz vr6{mr1}, zero, vr0
0004c8  06b40300  vfp162float_l.rn vr8, vr7
0004cc  86f30300  vfp162float_h.rn vr7, vr7
0004d0  86120400  vfloat2fp16_l.rn vr5, vr8
0004d4  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
0004d8  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
0004dc  06b40400  vfp162float_l.rn vr8, vr9
0004e0  86f40400  vfp162float_h.rn vr9, vr9
0004e4  06130400  vfloat2fp16_l.rn vr6, vr8
0004e8  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
0004ec  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0004f0  86d20300  vfloat2fp16_h.rn vr5, vr7
0004f4  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0004f8  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0004fc  06d30400  vfloat2fp16_h.rn vr6, vr9
000500  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
000504  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
000508  46805402  vstore.mz vr5{mr1}, 0(r9)
00050c  46806102  vstore.mz vr6{mr1}, 0(r3)
000510  bffbc6fe  blt.s r13, r12, -260
000514  5bc9ffff  j -440
000518  9f0c0000  addli r25, zero, 0
00051c  1f0d0000  addli r26, zero, 0
000520  00a00000  mfence { lm }
000524  3f8787fe  blt.s r15, r8, -576
000528  8f015d18  div.f.rn r3, r26, r5
00052c  0f815c18  div.f.rn r2, r25, r5
000530  e3043f00  loadli.w r9,  24(r30)
000534  9f050000  addli r11, zero, 0
000538  0be53120  mul.f.rn r10, r3, r3
00053c  8be10158  neg.f r3, r3
000540  0b61a118  sub.f.rn r2, r2, r10
000544  1f058fd7  addli r10, r30, -5184
000548  0b619110  add.f.rn r2, r2, r9
00054c  ab04803f  lui r9, 260096
000550  0f010108  sqrt.f.rn r2, r2
000554  0f812418  div.f.rn r2, r9, r2
000558  c2000502  vload.mz vr1{mr1}, 0(r10)
00055c  1f864500  addli r12, r11, 32
000560  06b10000  vfp162float_l.rn vr2, vr1
000564  86f00000  vfp162float_h.rn vr1, vr1
000568  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
00056c  92911102  vadd.f.mz.rn vr3{mr1}, r3, vr1
000570  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000574  12321002  vadd.s.mz vr4{mr1}, zero, vr1
000578  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
00057c  8a113102  vmul.f.mz.rn vr3{mr1}, r2, vr3
000580  06120100  vfloat2fp16_l.rn vr4, vr2
000584  06d20100  vfloat2fp16_h.rn vr4, vr3
000588  46004502  vstore.mz vr4{mr1}, 0(r10)
00058c  4be5c7fe  ble.s r15, r12, -680
000590  1f068500  addli r12, r10, 64
000594  9f858500  addli r11, r11, 64
000598  1f050501  addli r10, r10, 128
00059c  42010602  vload.mz vr2{mr1}, 0(r12)
0005a0  86310100  vfp162float_l.rn vr3, vr2
0005a4  06710100  vfp162float_h.rn vr2, vr2
0005a8  92913102  vadd.f.mz.rn vr3{mr1}, r3, vr3
0005ac  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
0005b0  8a113102  vmul.f.mz.rn vr3{mr1}, r2, vr3
0005b4  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
0005b8  86900100  vfloat2fp16_l.rn vr1, vr3
0005bc  86500100  vfloat2fp16_h.rn vr1, vr2
0005c0  46001602  vstore.mz vr1{mr1}, 0(r12)
0005c4  3fdef5fe  blt.s r11, r15, -108
0005c8  dba3ffff  j -740
0005cc  e3002f00  loadli.w r1,  16(r30)
0005d0  1f010010  addli r2, zero, 2048
0005d4  bbdc2004  bneq r1, r2, 2868
0005d8  803d0002  core_id r27
0005dc  3bf00d00  bneq r27, zero, 28
0005e0  9f000040  addli r1, zero, 8192
0005e4  2b0100f0  lui r2, 983040
0005e8  97902000  or r1, r1, r2
0005ec  2bd10000  lui r2, 13
0005f0  1f010108  addli r2, r2, 1024
0005f4  ff002200  l_gm2sm r1, r2, 0(r[5:6])
0005f8  abf00000  lui r1, 15
0005fc  00200300  mfence { sm, gm }
000600  1b821d00  andi r4, r27, 1
000604  9f020006  addli r5, zero, 768
000608  9b90f0ff  ori r1, r1, 4095
00060c  80a10004  csr_set csr3, r1
000610  9f000006  addli r1, zero, 768
000614  00d00100  sync_group
000618  37200200  beq r4, zero, 8
00061c  9f02000a  addli r5, zero, 1280
000620  63411f00  loadli.w r2,  12(r30)
000624  9f110000  addli r3, zero, 1
000628  3f79310c  blt.s r2, r3, 6748
00062c  00510102  load_param_i r2, 2
000630  8b101220  mul.s r1, r4, r1
000634  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000638  2bda0000  lui r20, 13
00063c  abfc0000  lui r25, 15
000640  2bfe0000  lui r28, 15
000644  9f030000  addli r7, zero, 0
000648  1bc71d00  srli r14, r27, 1
00064c  9bb72200  slli r15, r5, 2
000650  9f088fd7  addli r17, r30, -5184
000654  9f0a0005  addli r21, zero, 640
000658  1f0b0002  addli r22, zero, 256
00065c  9f0b0001  addli r23, zero, 128
000660  1f0c4000  addli r24, zero, 32
000664  1f080003  addli r16, zero, 384
000668  67071fd6  storeli.w r1, -5264(r30)
00066c  abf0ffff  lui r1, 1048575
000670  9b441100  srli r9, r2, 1
000674  1f010fd6  addli r2, r30, -5376
000678  1f0a0a08  addli r20, r20, 1024
00067c  9f8c0c08  addli r25, r25, 1024
000680  1f0e0e0c  addli r28, r28, 1536
000684  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000688  9b9000f8  ori r1, r1, 3968
00068c  2bf10000  lui r2, 15
000690  670c1fd4  storeli.w r1, -5440(r30)
000694  9f008000  addli r1, zero, 64
000698  1b1df1ff  ori r26, r2, 4095
00069c  db030000  j 28
0006a0  00a00300  mfence { lm, sm, gm }
0006a4  80210d04  csr_set csr3, r26
0006a8  00d00100  sync_group
0006ac  8b939310  add.s r7, r7, r9
0006b0  3fa0d300  blt.s r7, r13, 8
0006b4  5bb60200  j 5552
0006b8  0b91e310  add.s r2, r7, r14
0006bc  cb9f26fe  ble.s r13, r2, -28
0006c0  e3011f00  loadli.w r3,  8(r30)
0006c4  1f230000  addli r6, zero, 2
0006c8  0b113110  add.s r2, r2, r3
0006cc  e301efd6  loadli.w r3,  -5264(r30)
0006d0  1b31b100  slli r2, r2, 11
0006d4  17113100  or r2, r2, r3
0006d8  33110128  sext_int2long r[3:4], r2
0006dc  17396102  sll.d r[19:20], r[3:4], r6
0006e0  9f01ffd6  addli r3, r30, -5256
0006e4  2b0100f0  lui r2, 983040
0006e8  6bd50100  load.d r[11:12], 0(r3)
0006ec  17912700  or r2, r15, r2
0006f0  0b252511  add.ul r[11:12], r[11:12], r[19:20]
0006f4  7f211501  l_gm2lm r2, r17, 0(r[11:12])
0006f8  1f010000  addli r2, zero, 0
0006fc  00a00200  mfence { lm, gm }
000700  3b460200  bneq r4, zero, 400
000704  1f030fd6  addli r6, r30, -5376
000708  e3018fd5  loadli.w r3,  -5440(r30)
00070c  c2110302  vload_mask16.mz vr3{mr1}, 0(r6)
000710  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000714  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000718  12323002  vadd.s.mz vr4{mr1}, zero, vr3
00071c  0b144111  add.s r8, r2, r20
000720  0b932810  add.s r6, r17, r2
000724  9f810101  addli r3, r3, 128
000728  1f010104  addli r2, r2, 512
00072c  1f058400  addli r10, r8, 64
000730  9f058401  addli r11, r8, 192
000734  4a100402  vloads_mask16.mz vr0{mr1}, 0(r8)
000738  1f068301  addli r12, r6, 192
00073c  42140302  vload_mask16.mz vr8{mr1}, 0(r6)
000740  ca120502  vloads_mask16.mz vr5{mr1}, 0(r10)
000744  1f050401  addli r10, r8, 128
000748  ca930502  vloads_mask16.mz vr7{mr1}, 0(r11)
00074c  9f050301  addli r11, r6, 128
000750  c2150602  vload_mask16.mz vr11{mr1}, 0(r12)
000754  4a130502  vloads_mask16.mz vr6{mr1}, 0(r10)
000758  42950502  vload_mask16.mz vr10{mr1}, 0(r11)
00075c  1f058300  addli r10, r6, 64
000760  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
000764  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
000768  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
00076c  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
000770  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
000774  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
000778  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00077c  46105502  vstore_mask16.mz vr5{mr1}, 0(r10)
000780  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
000784  1f050fd7  addli r10, r30, -5248
000788  1f068402  addli r12, r8, 320
00078c  16146202  vadd.f.mz.rn vr8{mr1}, vr4, vr6
000790  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
000794  46906502  vstore_mask16.mz vr6{mr1}, 0(r11)
000798  9f050402  addli r11, r8, 256
00079c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0007a0  4a130602  vloads_mask16.mz vr6{mr1}, 0(r12)
0007a4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0007a8  96117402  vadd.f.mz.rn vr3{mr1}, vr8, vr7
0007ac  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0007b0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0007b4  46103502  vstore_mask16.mz vr3{mr1}, 0(r10)
0007b8  ca910502  vloads_mask16.mz vr3{mr1}, 0(r11)
0007bc  9f050403  addli r11, r8, 384
0007c0  1f048403  addli r8, r8, 448
0007c4  1f050302  addli r10, r6, 256
0007c8  ca140402  vloads_mask16.mz vr9{mr1}, 0(r8)
0007cc  1f048302  addli r8, r6, 320
0007d0  c2130502  vload_mask16.mz vr7{mr1}, 0(r10)
0007d4  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
0007d8  9f050303  addli r11, r6, 384
0007dc  1f038303  addli r6, r6, 448
0007e0  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
0007e4  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
0007e8  c2950502  vload_mask16.mz vr11{mr1}, 0(r11)
0007ec  96913302  vadd.f.mz.rn vr3{mr1}, vr7, vr3
0007f0  96136502  vadd.f.mz.rn vr7{mr1}, vr10, vr6
0007f4  96129002  vadd.f.mz.rn vr5{mr1}, vr0, vr9
0007f8  16938502  vadd.f.mz.rn vr6{mr1}, vr11, vr8
0007fc  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
000800  1f040fd7  addli r8, r30, -5248
000804  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
000808  26913102  vmac.f.mz.rn vr2{mr1}, vr3, vr3
00080c  46103502  vstore_mask16.mz vr3{mr1}, 0(r10)
000810  42120402  vload_mask16.mz vr4{mr1}, 0(r8)
000814  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000818  13845105  setlt.u r8, r3, r21
00081c  46906502  vstore_mask16.mz vr6{mr1}, 0(r11)
000820  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
000824  96117002  vadd.f.mz.rn vr3{mr1}, vr0, vr7
000828  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
00082c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000830  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
000834  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000838  bb1b04fe  bneq r8, zero, -284
00083c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
000840  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000844  6a710bc0  vsrl.p vr2, r22, vr0
000848  ea711bc0  vsrl.p vr3, r22, vr1
00084c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000850  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000854  6af10bc0  vsrl.p vr2, r23, vr0
000858  eaf11bc0  vsrl.p vr3, r23, vr1
00085c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000860  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000864  6af100c0  vsrl.p vr2, r1, vr0
000868  eaf110c0  vsrl.p vr3, r1, vr1
00086c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000870  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000874  6a710cc0  vsrl.p vr2, r24, vr0
000878  ea711cc0  vsrl.p vr3, r24, vr1
00087c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000880  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000884  fa110040  vextracti.f r3, 0(vr0)
000888  7a910040  vextracti.f r2, 0(vr1)
00088c  db660000  j 820
000890  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000894  abf1ffff  lui r3, 1048575
000898  12311002  vadd.s.mz vr2{mr1}, zero, vr1
00089c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0008a0  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0008a4  9b9101f8  ori r3, r3, 3968
0008a8  0b142a10  add.s r8, r20, r2
0008ac  0b932810  add.s r6, r17, r2
0008b0  9f810101  addli r3, r3, 128
0008b4  1f010104  addli r2, r2, 512
0008b8  9f050430  addli r11, r8, 6144
0008bc  1f068430  addli r12, r8, 6208
0008c0  1f050318  addli r10, r6, 3072
0008c4  9f068319  addli r13, r6, 3264
0008c8  ca920502  vloads_mask16.mz vr5{mr1}, 0(r11)
0008cc  9f050431  addli r11, r8, 6272
0008d0  4a130602  vloads_mask16.mz vr6{mr1}, 0(r12)
0008d4  1f068431  addli r12, r8, 6336
0008d8  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
0008dc  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
0008e0  ca930502  vloads_mask16.mz vr7{mr1}, 0(r11)
0008e4  4a140602  vloads_mask16.mz vr8{mr1}, 0(r12)
0008e8  9f058318  addli r11, r6, 3136
0008ec  1f060319  addli r12, r6, 3200
0008f0  42950502  vload_mask16.mz vr10{mr1}, 0(r11)
0008f4  c2150602  vload_mask16.mz vr11{mr1}, 0(r12)
0008f8  96945402  vadd.f.mz.rn vr9{mr1}, vr9, vr5
0008fc  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
000900  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
000904  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
000908  46109502  vstore_mask16.mz vr9{mr1}, 0(r10)
00090c  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
000910  1f050fd7  addli r10, r30, -5248
000914  9f050432  addli r11, r8, 6400
000918  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
00091c  96136202  vadd.f.mz.rn vr7{mr1}, vr4, vr6
000920  16929102  vadd.f.mz.rn vr4{mr1}, vr3, vr9
000924  46106602  vstore_mask16.mz vr6{mr1}, 0(r12)
000928  1f068432  addli r12, r8, 6464
00092c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000930  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
000934  4a130602  vloads_mask16.mz vr6{mr1}, 0(r12)
000938  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00093c  96910302  vadd.f.mz.rn vr3{mr1}, vr7, vr0
000940  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
000944  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000948  46103502  vstore_mask16.mz vr3{mr1}, 0(r10)
00094c  ca910502  vloads_mask16.mz vr3{mr1}, 0(r11)
000950  9f050433  addli r11, r8, 6528
000954  1f048433  addli r8, r8, 6592
000958  1f05031a  addli r10, r6, 3328
00095c  ca140402  vloads_mask16.mz vr9{mr1}, 0(r8)
000960  1f04831a  addli r8, r6, 3392
000964  c2130502  vload_mask16.mz vr7{mr1}, 0(r10)
000968  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
00096c  9f05031b  addli r11, r6, 3456
000970  1f03831b  addli r6, r6, 3520
000974  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
000978  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
00097c  c2950502  vload_mask16.mz vr11{mr1}, 0(r11)
000980  96913302  vadd.f.mz.rn vr3{mr1}, vr7, vr3
000984  96136502  vadd.f.mz.rn vr7{mr1}, vr10, vr6
000988  96129002  vadd.f.mz.rn vr5{mr1}, vr0, vr9
00098c  16938502  vadd.f.mz.rn vr6{mr1}, vr11, vr8
000990  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
000994  1f040fd7  addli r8, r30, -5248
000998  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
00099c  26913102  vmac.f.mz.rn vr2{mr1}, vr3, vr3
0009a0  46103502  vstore_mask16.mz vr3{mr1}, 0(r10)
0009a4  42120402  vload_mask16.mz vr4{mr1}, 0(r8)
0009a8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0009ac  13840105  setlt.u r8, r3, r16
0009b0  46906502  vstore_mask16.mz vr6{mr1}, 0(r11)
0009b4  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
0009b8  96117002  vadd.f.mz.rn vr3{mr1}, vr0, vr7
0009bc  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0009c0  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0009c4  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
0009c8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0009cc  3b7b04fe  bneq r8, zero, -292
0009d0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0009d4  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0009d8  2bf1ffff  lui r2, 1048575
0009dc  1f040000  addli r8, zero, 0
0009e0  1b1101f8  ori r2, r2, 3968
0009e4  ea711bc0  vsrl.p vr3, r22, vr1
0009e8  6a710bc0  vsrl.p vr2, r22, vr0
0009ec  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009f0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009f4  eaf11bc0  vsrl.p vr3, r23, vr1
0009f8  6af10bc0  vsrl.p vr2, r23, vr0
0009fc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000a00  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000a04  eaf110c0  vsrl.p vr3, r1, vr1
000a08  6af100c0  vsrl.p vr2, r1, vr0
000a0c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000a10  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000a14  ea711cc0  vsrl.p vr3, r24, vr1
000a18  6a710cc0  vsrl.p vr2, r24, vr0
000a1c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000a20  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000a24  7a930040  vextracti.f r6, 0(vr1)
000a28  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000a2c  fa150040  vextracti.f r11, 0(vr0)
000a30  12311002  vadd.s.mz vr2{mr1}, zero, vr1
000a34  12321002  vadd.s.mz vr4{mr1}, zero, vr1
000a38  92311002  vadd.s.mz vr3{mr1}, zero, vr1
000a3c  0b158a10  add.s r10, r20, r8
000a40  8b918810  add.s r3, r17, r8
000a44  1f010101  addli r2, r2, 128
000a48  1f040404  addli r8, r8, 512
000a4c  1f060518  addli r12, r10, 3072
000a50  9f068518  addli r13, r10, 3136
000a54  9f8d8101  addli r27, r3, 192
000a58  42940102  vload_mask16.mz vr8{mr1}, 0(r3)
000a5c  4a100602  vloads_mask16.mz vr0{mr1}, 0(r12)
000a60  1f060519  addli r12, r10, 3200
000a64  ca920602  vloads_mask16.mz vr5{mr1}, 0(r13)
000a68  9f068519  addli r13, r10, 3264
000a6c  c2950d02  vload_mask16.mz vr11{mr1}, 0(r27)
000a70  4a130602  vloads_mask16.mz vr6{mr1}, 0(r12)
000a74  ca930602  vloads_mask16.mz vr7{mr1}, 0(r13)
000a78  9f860101  addli r13, r3, 128
000a7c  1f868100  addli r12, r3, 64
000a80  42950602  vload_mask16.mz vr10{mr1}, 0(r13)
000a84  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
000a88  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
000a8c  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
000a90  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
000a94  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
000a98  46105602  vstore_mask16.mz vr5{mr1}, 0(r12)
000a9c  1f060fd7  addli r12, r30, -5248
000aa0  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
000aa4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000aa8  16146202  vadd.f.mz.rn vr8{mr1}, vr4, vr6
000aac  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
000ab0  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
000ab4  46907d02  vstore_mask16.mz vr7{mr1}, 0(r27)
000ab8  9f06051a  addli r13, r10, 3328
000abc  9f0d851a  addli r27, r10, 3392
000ac0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000ac4  4a930d02  vloads_mask16.mz vr6{mr1}, 0(r27)
000ac8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000acc  96117402  vadd.f.mz.rn vr3{mr1}, vr8, vr7
000ad0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000ad4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000ad8  46103602  vstore_mask16.mz vr3{mr1}, 0(r12)
000adc  ca910602  vloads_mask16.mz vr3{mr1}, 0(r13)
000ae0  9f06051b  addli r13, r10, 3456
000ae4  1f05851b  addli r10, r10, 3520
000ae8  1f860102  addli r12, r3, 256
000aec  ca140502  vloads_mask16.mz vr9{mr1}, 0(r10)
000af0  1f858102  addli r10, r3, 320
000af4  c2130602  vload_mask16.mz vr7{mr1}, 0(r12)
000af8  4a940602  vloads_mask16.mz vr8{mr1}, 0(r13)
000afc  9f860103  addli r13, r3, 384
000b00  9f818103  addli r3, r3, 448
000b04  42150502  vload_mask16.mz vr10{mr1}, 0(r10)
000b08  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000b0c  c2950602  vload_mask16.mz vr11{mr1}, 0(r13)
000b10  96913302  vadd.f.mz.rn vr3{mr1}, vr7, vr3
000b14  96136502  vadd.f.mz.rn vr7{mr1}, vr10, vr6
000b18  96129002  vadd.f.mz.rn vr5{mr1}, vr0, vr9
000b1c  16938502  vadd.f.mz.rn vr6{mr1}, vr11, vr8
000b20  46107502  vstore_mask16.mz vr7{mr1}, 0(r10)
000b24  1f050fd7  addli r10, r30, -5248
000b28  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
000b2c  26913102  vmac.f.mz.rn vr2{mr1}, vr3, vr3
000b30  46103602  vstore_mask16.mz vr3{mr1}, 0(r12)
000b34  42120502  vload_mask16.mz vr4{mr1}, 0(r10)
000b38  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000b3c  13055105  setlt.u r10, r2, r21
000b40  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
000b44  46905102  vstore_mask16.mz vr5{mr1}, 0(r3)
000b48  96117002  vadd.f.mz.rn vr3{mr1}, vr0, vr7
000b4c  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
000b50  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000b54  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
000b58  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000b5c  bb0b05fe  bneq r10, zero, -288
000b60  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
000b64  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000b68  e3461f00  loadli.w r13,  12(r30)
000b6c  803d0002  core_id r27
000b70  6a710bc0  vsrl.p vr2, r22, vr0
000b74  ea711bc0  vsrl.p vr3, r22, vr1
000b78  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000b7c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000b80  6af10bc0  vsrl.p vr2, r23, vr0
000b84  eaf11bc0  vsrl.p vr3, r23, vr1
000b88  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000b8c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000b90  6af100c0  vsrl.p vr2, r1, vr0
000b94  eaf110c0  vsrl.p vr3, r1, vr1
000b98  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000b9c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000ba0  6a710cc0  vsrl.p vr2, r24, vr0
000ba4  ea711cc0  vsrl.p vr3, r24, vr1
000ba8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000bac  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000bb0  7a110040  vextracti.f r2, 0(vr0)
000bb4  7a940040  vextracti.f r8, 0(vr1)
000bb8  8be12510  add.f.rn r3, r11, r2
000bbc  0b618310  add.f.rn r2, r6, r8
000bc0  0b839330  div.u r6, r7, r9
000bc4  1b336300  slli r6, r6, 6
000bc8  1b030304  andi r6, r6, 64
000bcc  1713b301  or r6, r6, r27
000bd0  1b342300  slli r8, r6, 2
000bd4  1b03e307  andi r6, r6, 126
000bd8  0b159411  add.s r10, r8, r25
000bdc  1b332300  slli r6, r6, 2
000be0  73603500  stores.w r3, 0(r10)
000be4  8b11c411  add.s r3, r8, r28
000be8  1b144400  ori r8, r8, 4
000bec  73e02100  stores.w r2, 0(r3)
000bf0  0b119411  add.s r2, r8, r25
000bf4  8b119311  add.s r3, r6, r25
000bf8  0b14c411  add.s r8, r8, r28
000bfc  0b13c311  add.s r6, r6, r28
000c00  00a00300  mfence { lm, sm, gm }
000c04  80210d04  csr_set csr3, r26
000c08  00d00100  sync_group
000c0c  6f410100  loads.w r2, 0(r2)
000c10  efc10100  loads.w r3, 0(r3)
000c14  6f440400  loads.w r8, 0(r8)
000c18  6f430300  loads.w r6, 0(r6)
000c1c  0b613110  add.f.rn r2, r2, r3
000c20  8b616410  add.f.rn r3, r8, r6
000c24  2b04003a  lui r8, 237568
000c28  0b638120  mul.f.rn r6, r2, r8
000c2c  0be18120  mul.f.rn r2, r3, r8
000c30  1f040000  addli r8, zero, 0
000c34  8b616320  mul.f.rn r3, r6, r6
000c38  0b613118  sub.f.rn r2, r2, r3
000c3c  e3013f00  loadli.w r3,  24(r30)
000c40  0b613110  add.f.rn r2, r2, r3
000c44  ab01803f  lui r3, 260096
000c48  0f010108  sqrt.f.rn r2, r2
000c4c  0f812118  div.f.rn r2, r3, r2
000c50  8b610358  neg.f r3, r6
000c54  1f038fd7  addli r6, r30, -5184
000c58  1f058300  addli r10, r6, 64
000c5c  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
000c60  9f054400  addli r11, r8, 32
000c64  c2100502  vload_mask16.mz vr1{mr1}, 0(r10)
000c68  9385b206  setle.u r11, r5, r11
000c6c  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
000c70  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
000c74  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
000c78  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
000c7c  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
000c80  46101502  vstore_mask16.mz vr1{mr1}, 0(r10)
000c84  bbf00500  bneq r11, zero, 60
000c88  1f050301  addli r10, r6, 128
000c8c  9f058301  addli r11, r6, 192
000c90  1f048400  addli r8, r8, 64
000c94  1f030302  addli r6, r6, 256
000c98  42100502  vload_mask16.mz vr0{mr1}, 0(r10)
000c9c  c2900502  vload_mask16.mz vr1{mr1}, 0(r11)
000ca0  13065404  setlt.u r12, r8, r5
000ca4  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
000ca8  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
000cac  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
000cb0  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
000cb4  46100502  vstore_mask16.mz vr0{mr1}, 0(r10)
000cb8  46901502  vstore_mask16.mz vr1{mr1}, 0(r11)
000cbc  3b7e06fe  bneq r12, zero, -100
000cc0  6b550f00  load.d r[11:12], 0(r30)
000cc4  2b0100f0  lui r2, 983040
000cc8  00a00000  mfence { lm }
000ccc  17912700  or r2, r15, r2
000cd0  0b252511  add.ul r[11:12], r[11:12], r[19:20]
000cd4  7f311501  s_lm2gm r2, r17, 0(r[11:12])
000cd8  00a00200  mfence { lm, gm }
000cdc  5b3affff  j -1584
000ce0  80300002  core_id r1
000ce4  1f210000  addli r2, zero, 2
000ce8  37ce2006  beq r1, r2, 3984
000cec  1f110000  addli r2, zero, 1
000cf0  37af2002  beq r1, r2, 1992
000cf4  bb8e0006  bneq r1, zero, 4000
000cf8  63012f00  loadli.w r2,  16(r30)
000cfc  ab0100f0  lui r3, 983040
000d00  1b312100  slli r2, r2, 2
000d04  17113100  or r2, r2, r3
000d08  aba10000  lui r3, 10
000d0c  9f810108  addli r3, r3, 1024
000d10  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000d14  5bf00100  j 3968
000d18  63012f00  loadli.w r2,  16(r30)
000d1c  ab0100f0  lui r3, 983040
000d20  1b311100  slli r2, r2, 1
000d24  17113100  or r2, r2, r3
000d28  ab110000  lui r3, 1
000d2c  9f810100  addli r3, r3, 0
000d30  7f013300  l_gm2sm r2, r3, 0(r[7:8])
000d34  5b040000  j 32
000d38  63012f00  loadli.w r2,  16(r30)
000d3c  ab0100f0  lui r3, 983040
000d40  1b311100  slli r2, r2, 1
000d44  17113100  or r2, r2, r3
000d48  ab210000  lui r3, 2
000d4c  9f810100  addli r3, r3, 0
000d50  7f013400  l_gm2sm r2, r3, 0(r[9:10])
000d54  2bf10000  lui r2, 15
000d58  e3411f00  loadli.w r3,  12(r30)
000d5c  00200300  mfence { sm, gm }
000d60  1b11f1ff  ori r2, r2, 4095
000d64  80210104  csr_set csr3, r2
000d68  00d00100  sync_group
000d6c  4bec1108  ble.s r3, r1, 4888
000d70  63012f00  loadli.w r2,  16(r30)
000d74  e3412f00  loadli.w r3,  20(r30)
000d78  ab0b0000  lui r23, 0
000d7c  1f140000  addli r8, zero, 1
000d80  1f068fd7  addli r12, r30, -5184
000d84  9f080002  addli r17, zero, 256
000d88  9f090001  addli r19, zero, 128
000d8c  1f0a8000  addli r20, zero, 64
000d90  9f0a4000  addli r21, zero, 32
000d94  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000d98  9f8b0b00  addli r23, r23, 0
000d9c  0b133110  add.s r6, r2, r3
000da0  1b321100  slli r4, r2, 1
000da4  b3020108  fix2float.rn r5, r2
000da8  1f71f3ff  addli r2, r6, -1
000dac  1bb31100  slli r6, r3, 1
000db0  8b133130  div.s r7, r2, r3
000db4  2bf1ffff  lui r2, 1048575
000db8  1b18f1ff  ori r16, r2, 4095
000dbc  5b070000  j 56
000dc0  00a00000  mfence { lm }
000dc4  eb540f00  load.d r[10:11], 0(r30)
000dc8  2b0100f0  lui r2, 983040
000dcc  1f068fd7  addli r12, r30, -5184
000dd0  80510102  load_param_i r3, 2
000dd4  17112200  or r2, r4, r2
000dd8  8b901110  add.s r1, r3, r1
000ddc  0ba59411  add.ul r[11:12], r[10:11], r[26:27]
000de0  7f31c500  s_lm2gm r2, r12, 0(r[11:12])
000de4  00a00200  mfence { lm, gm }
000de8  63411f00  loadli.w r2,  12(r30)
000dec  3fa02000  blt.s r1, r2, 8
000df0  db520200  j 4756
000df4  63011f00  loadli.w r2,  8(r30)
000df8  0b912010  add.s r2, r1, r2
000dfc  0b11f120  mul.s r2, r2, r15
000e00  33110128  sext_int2long r[3:4], r2
000e04  973c8102  sll.d r[26:27], r[3:4], r8
000e08  9f01ffd6  addli r3, r30, -5256
000e0c  2b0100f0  lui r2, 983040
000e10  ebd40100  load.d r[10:11], 0(r3)
000e14  17112200  or r2, r4, r2
000e18  0ba59411  add.ul r[11:12], r[10:11], r[26:27]
000e1c  7f21c500  l_gm2lm r2, r12, 0(r[11:12])
000e20  00a00200  mfence { lm, gm }
000e24  3fc78300  blt.s r7, r8, 464
000e28  1f0e0000  addli r28, zero, 0
000e2c  9f0d0000  addli r27, zero, 0
000e30  9f050000  addli r11, zero, 0
000e34  db0c0000  j 100
000e38  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
000e3c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000e40  9f950500  addli r11, r11, 1
000e44  6af138c0  vsrl.p vr2, r17, vr3
000e48  6af218c0  vsrl.p vr4, r17, vr1
000e4c  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
000e50  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000e54  eaf129c0  vsrl.p vr3, r19, vr2
000e58  6af219c0  vsrl.p vr4, r19, vr1
000e5c  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000e60  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000e64  ea712ac0  vsrl.p vr3, r20, vr2
000e68  6a721ac0  vsrl.p vr4, r20, vr1
000e6c  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000e70  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000e74  eaf12ac0  vsrl.p vr3, r21, vr2
000e78  6af21ac0  vsrl.p vr4, r21, vr1
000e7c  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000e80  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000e84  7a110140  vextracti.f r2, 0(vr2)
000e88  fa910040  vextracti.f r3, 0(vr1)
000e8c  0b6e2e10  add.f.rn r28, r28, r2
000e90  8bed3d10  add.f.rn r27, r27, r3
000e94  b7a57500  beq r11, r7, 360
000e98  1f810500  addli r2, r11, 0
000e9c  37301701  beq r14, r17, 12
000ea0  17a10501  xor r2, r11, r16
000ea4  0b912310  add.s r2, r7, r2
000ea8  8b11e120  mul.s r3, r2, r14
000eac  12320002  vadd.s.mz vr4{mr1}, zero, vr0
000eb0  92310002  vadd.s.mz vr3{mr1}, zero, vr0
000eb4  12310002  vadd.s.mz vr2{mr1}, zero, vr0
000eb8  92300002  vadd.s.mz vr1{mr1}, zero, vr0
000ebc  8b913718  sub.s r3, r15, r3
000ec0  0b96e140  min.s r12, r3, r14
000ec4  bf5d86fe  blt.s r12, r8, -140
000ec8  92300002  vadd.s.mz vr1{mr1}, zero, vr0
000ecc  12310002  vadd.s.mz vr2{mr1}, zero, vr0
000ed0  92310002  vadd.s.mz vr3{mr1}, zero, vr0
000ed4  12320002  vadd.s.mz vr4{mr1}, zero, vr0
000ed8  9f060000  addli r13, zero, 0
000edc  0b152320  mul.s r10, r6, r2
000ee0  1f0b8fd7  addli r22, r30, -5184
000ee4  1f890b00  addli r18, r23, 0
000ee8  8b11a910  add.s r3, r18, r10
000eec  9f848600  addli r9, r13, 64
000ef0  ca820102  vloads.mz vr5{mr1}, 0(r3)
000ef4  1f818100  addli r2, r3, 64
000ef8  4a030102  vloads.mz vr6{mr1}, 0(r2)
000efc  0b11ab10  add.s r2, r22, r10
000f00  c2030102  vload.mz vr7{mr1}, 0(r2)
000f04  1f0c8100  addli r24, r2, 64
000f08  42040c02  vload.mz vr8{mr1}, 0(r24)
000f0c  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
000f10  92320002  vadd.s.mz vr5{mr1}, zero, vr0
000f14  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
000f18  06b40300  vfp162float_l.rn vr8, vr7
000f1c  86f30300  vfp162float_h.rn vr7, vr7
000f20  86340300  vfp162float_l.rn vr9, vr6
000f24  06730300  vfp162float_h.rn vr6, vr6
000f28  86120400  vfloat2fp16_l.rn vr5, vr8
000f2c  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
000f30  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
000f34  12340002  vadd.s.mz vr8{mr1}, zero, vr0
000f38  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
000f3c  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
000f40  06940400  vfloat2fp16_l.rn vr8, vr9
000f44  86d20300  vfloat2fp16_h.rn vr5, vr7
000f48  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
000f4c  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
000f50  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
000f54  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000f58  06540300  vfloat2fp16_h.rn vr8, vr6
000f5c  46005102  vstore.mz vr5{mr1}, 0(r2)
000f60  46008c02  vstore.mz vr8{mr1}, 0(r24)
000f64  4b5b96fe  ble.s r12, r9, -300
000f68  9f840101  addli r9, r3, 128
000f6c  9f818101  addli r3, r3, 192
000f70  9f860601  addli r13, r13, 128
000f74  1f090902  addli r18, r18, 256
000f78  1f0b0b02  addli r22, r22, 256
000f7c  ca820402  vloads.mz vr5{mr1}, 0(r9)
000f80  4a830102  vloads.mz vr6{mr1}, 0(r3)
000f84  9f040101  addli r9, r2, 128
000f88  1f018101  addli r2, r2, 192
000f8c  c2830402  vload.mz vr7{mr1}, 0(r9)
000f90  c2040102  vload.mz vr9{mr1}, 0(r2)
000f94  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
000f98  96c46402  vadd.hf.mz.rn vr9{mr1}, vr9, vr6
000f9c  92320002  vadd.s.mz vr5{mr1}, zero, vr0
000fa0  12330002  vadd.s.mz vr6{mr1}, zero, vr0
000fa4  06b40300  vfp162float_l.rn vr8, vr7
000fa8  86f30300  vfp162float_h.rn vr7, vr7
000fac  86120400  vfloat2fp16_l.rn vr5, vr8
000fb0  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
000fb4  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
000fb8  06b40400  vfp162float_l.rn vr8, vr9
000fbc  86f40400  vfp162float_h.rn vr9, vr9
000fc0  06130400  vfloat2fp16_l.rn vr6, vr8
000fc4  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
000fc8  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
000fcc  86d20300  vfloat2fp16_h.rn vr5, vr7
000fd0  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
000fd4  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
000fd8  06d30400  vfloat2fp16_h.rn vr6, vr9
000fdc  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
000fe0  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
000fe4  46805402  vstore.mz vr5{mr1}, 0(r9)
000fe8  46006102  vstore.mz vr6{mr1}, 0(r2)
000fec  bffbc6fe  blt.s r13, r12, -260
000ff0  5bc9ffff  j -440
000ff4  9f0d0000  addli r27, zero, 0
000ff8  1f0e0000  addli r28, zero, 0
000ffc  00a00000  mfence { lm }
001000  3f8787fe  blt.s r15, r8, -576
001004  0f015e18  div.f.rn r2, r28, r5
001008  0f855d18  div.f.rn r10, r27, r5
00100c  e3043f00  loadli.w r9,  24(r30)
001010  ab160000  lui r13, 1
001014  2b290000  lui r18, 2
001018  9f010000  addli r3, zero, 0
00101c  1f068fd7  addli r12, r30, -5184
001020  9f860600  addli r13, r13, 0
001024  1f090900  addli r18, r18, 0
001028  8b652120  mul.f.rn r11, r2, r2
00102c  0b65b518  sub.f.rn r10, r10, r11
001030  8b650158  neg.f r11, r2
001034  0b659510  add.f.rn r10, r10, r9
001038  ab04803f  lui r9, 260096
00103c  0f050508  sqrt.f.rn r10, r10
001040  0f85a418  div.f.rn r10, r9, r10
001044  c2000602  vload.mz vr1{mr1}, 0(r12)
001048  4a810602  vloads.mz vr2{mr1}, 0(r13)
00104c  ca010902  vloads.mz vr3{mr1}, 0(r18)
001050  1f814100  addli r2, r3, 32
001054  06b20000  vfp162float_l.rn vr4, vr1
001058  86f00000  vfp162float_h.rn vr1, vr1
00105c  12924502  vadd.f.mz.rn vr4{mr1}, r11, vr4
001060  92901502  vadd.f.mz.rn vr1{mr1}, r11, vr1
001064  86320100  vfp162float_l.rn vr5, vr2
001068  06b30100  vfp162float_l.rn vr6, vr3
00106c  06710100  vfp162float_h.rn vr2, vr2
001070  86f10100  vfp162float_h.rn vr3, vr3
001074  8a131502  vmul.f.mz.rn vr7{mr1}, r10, vr1
001078  0a124502  vmul.f.mz.rn vr4{mr1}, r10, vr4
00107c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001080  a6912302  vmac.f.mz.rn vr3{mr1}, vr7, vr2
001084  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
001088  12311002  vadd.s.mz vr2{mr1}, zero, vr1
00108c  06110300  vfloat2fp16_l.rn vr2, vr6
001090  06d10100  vfloat2fp16_h.rn vr2, vr3
001094  46002602  vstore.mz vr2{mr1}, 0(r12)
001098  cba427fe  ble.s r15, r2, -728
00109c  1f818600  addli r2, r13, 64
0010a0  1f0b8600  addli r22, r12, 64
0010a4  9f818100  addli r3, r3, 64
0010a8  9f860601  addli r13, r13, 128
0010ac  1f060601  addli r12, r12, 128
0010b0  4a010102  vloads.mz vr2{mr1}, 0(r2)
0010b4  1f018900  addli r2, r18, 64
0010b8  c2010b02  vload.mz vr3{mr1}, 0(r22)
0010bc  1f090901  addli r18, r18, 128
0010c0  4a020102  vloads.mz vr4{mr1}, 0(r2)
0010c4  86b20100  vfp162float_l.rn vr5, vr3
0010c8  86f10100  vfp162float_h.rn vr3, vr3
0010cc  92925502  vadd.f.mz.rn vr5{mr1}, r11, vr5
0010d0  92913502  vadd.f.mz.rn vr3{mr1}, r11, vr3
0010d4  06330100  vfp162float_l.rn vr6, vr2
0010d8  06710100  vfp162float_h.rn vr2, vr2
0010dc  8a125502  vmul.f.mz.rn vr5{mr1}, r10, vr5
0010e0  8a113502  vmul.f.mz.rn vr3{mr1}, r10, vr3
0010e4  86330200  vfp162float_l.rn vr7, vr4
0010e8  06720200  vfp162float_h.rn vr4, vr4
0010ec  a6936202  vmac.f.mz.rn vr7{mr1}, vr5, vr6
0010f0  26922102  vmac.f.mz.rn vr4{mr1}, vr3, vr2
0010f4  86900300  vfloat2fp16_l.rn vr1, vr7
0010f8  86500200  vfloat2fp16_h.rn vr1, vr4
0010fc  46001b02  vstore.mz vr1{mr1}, 0(r22)
001100  3f9df1fe  blt.s r3, r15, -188
001104  db97ffff  j -836
001108  80300002  core_id r1
00110c  bb800000  bneq r1, zero, 32
001110  63012f00  loadli.w r2,  16(r30)
001114  ab0100f0  lui r3, 983040
001118  1b312100  slli r2, r2, 2
00111c  17113100  or r2, r2, r3
001120  ab010100  lui r3, 16
001124  9f8101f0  addli r3, r3, -2048
001128  7f013200  l_gm2sm r2, r3, 0(r[5:6])
00112c  2bf10000  lui r2, 15
001130  e3411f00  loadli.w r3,  12(r30)
001134  00200300  mfence { sm, gm }
001138  1b11f1ff  ori r2, r2, 4095
00113c  80210104  csr_set csr3, r2
001140  00d00100  sync_group
001144  4b8d1106  ble.s r3, r1, 3904
001148  63012f00  loadli.w r2,  16(r30)
00114c  e3412f00  loadli.w r3,  20(r30)
001150  ab0b0100  lui r23, 16
001154  1f068fd7  addli r12, r30, -5184
001158  1f180000  addli r16, zero, 1
00115c  1f090002  addli r18, zero, 256
001160  9f090001  addli r19, zero, 128
001164  1f0a8000  addli r20, zero, 64
001168  9f0a4000  addli r21, zero, 32
00116c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001170  9f8b0bf0  addli r23, r23, -2048
001174  0b133110  add.s r6, r2, r3
001178  1b322100  slli r4, r2, 2
00117c  33010108  fix2float.rn r2, r2
001180  67072fd6  storeli.w r2, -5264(r30)
001184  1f71f3ff  addli r2, r6, -1
001188  1bb32100  slli r6, r3, 2
00118c  8b133130  div.s r7, r2, r3
001190  2bf1ffff  lui r2, 1048575
001194  9b18f1ff  ori r17, r2, 4095
001198  1f010fd7  addli r2, r30, -5248
00119c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0011a0  5b070000  j 56
0011a4  00a00000  mfence { lm }
0011a8  6b540f00  load.d r[9:10], 0(r30)
0011ac  2b0100f0  lui r2, 983040
0011b0  1f068fd7  addli r12, r30, -5184
0011b4  80510102  load_param_i r3, 2
0011b8  17112200  or r2, r4, r2
0011bc  8b901110  add.s r1, r3, r1
0011c0  0b258411  add.ul r[11:12], r[9:10], r[25:26]
0011c4  7f31c500  s_lm2gm r2, r12, 0(r[11:12])
0011c8  00a00200  mfence { lm, gm }
0011cc  63411f00  loadli.w r2,  12(r30)
0011d0  3fa02000  blt.s r1, r2, 8
0011d4  5bd60100  j 3760
0011d8  63011f00  loadli.w r2,  8(r30)
0011dc  9f220000  addli r5, zero, 2
0011e0  0b912010  add.s r2, r1, r2
0011e4  0b11f120  mul.s r2, r2, r15
0011e8  33110128  sext_int2long r[3:4], r2
0011ec  173c5102  sll.d r[25:26], r[3:4], r5
0011f0  9f01ffd6  addli r3, r30, -5256
0011f4  2b0100f0  lui r2, 983040
0011f8  6bd40100  load.d r[9:10], 0(r3)
0011fc  17112200  or r2, r4, r2
001200  0b258411  add.ul r[11:12], r[9:10], r[25:26]
001204  7f21c500  l_gm2lm r2, r12, 0(r[11:12])
001208  00a00200  mfence { lm, gm }
00120c  bfa70301  blt.s r7, r16, 488
001210  9f050000  addli r11, zero, 0
001214  1f0d0000  addli r26, zero, 0
001218  9f0d0000  addli r27, zero, 0
00121c  db0c0000  j 100
001220  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001224  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001228  9f9d0d00  addli r27, r27, 1
00122c  6a7109c0  vsrl.p vr2, r18, vr0
001230  ea7119c0  vsrl.p vr3, r18, vr1
001234  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001238  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00123c  6af109c0  vsrl.p vr2, r19, vr0
001240  eaf119c0  vsrl.p vr3, r19, vr1
001244  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001248  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00124c  6a710ac0  vsrl.p vr2, r20, vr0
001250  ea711ac0  vsrl.p vr3, r20, vr1
001254  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001258  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00125c  6af10ac0  vsrl.p vr2, r21, vr0
001260  eaf11ac0  vsrl.p vr3, r21, vr1
001264  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001268  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00126c  7a110040  vextracti.f r2, 0(vr0)
001270  fa910040  vextracti.f r3, 0(vr1)
001274  8be52510  add.f.rn r11, r11, r2
001278  0b6d3d10  add.f.rn r26, r26, r3
00127c  37867d00  beq r27, r7, 384
001280  9f810d00  addli r3, r27, 0
001284  37302701  beq r14, r18, 12
001288  17a11d01  xor r2, r27, r17
00128c  8b912310  add.s r3, r7, r2
001290  0b91e120  mul.s r2, r3, r14
001294  0b912718  sub.s r2, r15, r2
001298  0b15e140  min.s r10, r2, r14
00129c  1f010fd7  addli r2, r30, -5248
0012a0  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0012a4  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0012a8  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0012ac  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0012b0  bf4d05ff  blt.s r10, r16, -144
0012b4  9f020fd7  addli r5, r30, -5248
0012b8  1f010000  addli r2, zero, 0
0012bc  8b113320  mul.s r3, r6, r3
0012c0  1f068fd7  addli r12, r30, -5184
0012c4  9f860b00  addli r13, r23, 0
0012c8  42920202  vload_mask16.mz vr4{mr1}, 0(r5)
0012cc  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0012d0  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0012d4  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0012d8  0b9b3610  add.s r22, r13, r3
0012dc  0b1e3610  add.s r28, r12, r3
0012e0  1f048b00  addli r8, r22, 64
0012e4  ca120b02  vloads_mask16.mz vr5{mr1}, 0(r22)
0012e8  9f048b01  addli r9, r22, 192
0012ec  c2140e02  vload_mask16.mz vr9{mr1}, 0(r28)
0012f0  9f028e01  addli r5, r28, 192
0012f4  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
0012f8  1f040b01  addli r8, r22, 128
0012fc  4a940402  vloads_mask16.mz vr8{mr1}, 0(r9)
001300  9f040e01  addli r9, r28, 128
001304  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
001308  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
00130c  c2950402  vload_mask16.mz vr11{mr1}, 0(r9)
001310  1f048e00  addli r8, r28, 64
001314  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
001318  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
00131c  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
001320  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
001324  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
001328  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00132c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001330  46105e02  vstore_mask16.mz vr5{mr1}, 0(r28)
001334  46106402  vstore_mask16.mz vr6{mr1}, 0(r8)
001338  1f048100  addli r8, r2, 64
00133c  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
001340  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001344  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001348  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
00134c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001350  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
001354  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
001358  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
00135c  4b1b85fe  ble.s r10, r8, -316
001360  1f040b02  addli r8, r22, 256
001364  9f048b02  addli r9, r22, 320
001368  9f020e02  addli r5, r28, 256
00136c  1f010101  addli r2, r2, 128
001370  9f860604  addli r13, r13, 512
001374  1f060604  addli r12, r12, 512
001378  4a100402  vloads_mask16.mz vr0{mr1}, 0(r8)
00137c  1f040b03  addli r8, r22, 384
001380  ca920402  vloads_mask16.mz vr5{mr1}, 0(r9)
001384  9f048b03  addli r9, r22, 448
001388  42940202  vload_mask16.mz vr8{mr1}, 0(r5)
00138c  1f0b8e03  addli r22, r28, 448
001390  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
001394  ca930402  vloads_mask16.mz vr7{mr1}, 0(r9)
001398  9f040e03  addli r9, r28, 384
00139c  1f048e02  addli r8, r28, 320
0013a0  c2150b02  vload_mask16.mz vr11{mr1}, 0(r22)
0013a4  42950402  vload_mask16.mz vr10{mr1}, 0(r9)
0013a8  c2140402  vload_mask16.mz vr9{mr1}, 0(r8)
0013ac  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0013b0  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0013b4  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0013b8  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
0013bc  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0013c0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0013c4  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
0013c8  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
0013cc  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0013d0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0013d4  46906402  vstore_mask16.mz vr6{mr1}, 0(r9)
0013d8  46107b02  vstore_mask16.mz vr7{mr1}, 0(r22)
0013dc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0013e0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0013e4  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0013e8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0013ec  bf3ba1fe  blt.s r2, r10, -276
0013f0  5bc6ffff  j -464
0013f4  1f0d0000  addli r26, zero, 0
0013f8  9f050000  addli r11, zero, 0
0013fc  00a00000  mfence { lm }
001400  bf9607ff  blt.s r15, r16, -604
001404  6301efd6  loadli.w r2,  -5264(r30)
001408  e3023f00  loadli.w r5,  24(r30)
00140c  8f812518  div.f.rn r3, r11, r2
001410  0f012d18  div.f.rn r2, r26, r2
001414  9f050000  addli r11, zero, 0
001418  0be53120  mul.f.rn r10, r3, r3
00141c  8be10158  neg.f r3, r3
001420  0b61a118  sub.f.rn r2, r2, r10
001424  1f058fd7  addli r10, r30, -5184
001428  0b615110  add.f.rn r2, r2, r5
00142c  ab02803f  lui r5, 260096
001430  0f010108  sqrt.f.rn r2, r2
001434  0f812218  div.f.rn r2, r5, r2
001438  1f068500  addli r12, r10, 64
00143c  c2100502  vload_mask16.mz vr1{mr1}, 0(r10)
001440  9f864500  addli r13, r11, 32
001444  42110602  vload_mask16.mz vr2{mr1}, 0(r12)
001448  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
00144c  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
001450  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
001454  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
001458  46101502  vstore_mask16.mz vr1{mr1}, 0(r10)
00145c  46102602  vstore_mask16.mz vr2{mr1}, 0(r12)
001460  4b95d7fe  ble.s r15, r13, -700
001464  1f060501  addli r12, r10, 128
001468  9f068501  addli r13, r10, 192
00146c  9f858500  addli r11, r11, 64
001470  1f050502  addli r10, r10, 256
001474  c2100602  vload_mask16.mz vr1{mr1}, 0(r12)
001478  42910602  vload_mask16.mz vr2{mr1}, 0(r13)
00147c  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
001480  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
001484  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
001488  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
00148c  46101602  vstore_mask16.mz vr1{mr1}, 0(r12)
001490  46902602  vstore_mask16.mz vr2{mr1}, 0(r13)
001494  bf9ef5fe  blt.s r11, r15, -92
001498  dba1ffff  j -756
00149c  9f000040  addli r1, zero, 8192
0014a0  2b0100f0  lui r2, 983040
0014a4  97902000  or r1, r1, r2
0014a8  2b610000  lui r2, 6
0014ac  1f010100  addli r2, r2, 0
0014b0  ff002300  l_gm2sm r1, r2, 0(r[7:8])
0014b4  db070000  j 60
0014b8  63012f00  loadli.w r2,  16(r30)
0014bc  ab0100f0  lui r3, 983040
0014c0  1b312100  slli r2, r2, 2
0014c4  17113100  or r2, r2, r3
0014c8  abb10000  lui r3, 11
0014cc  9f810108  addli r3, r3, 1024
0014d0  7f013300  l_gm2sm r2, r3, 0(r[7:8])
0014d4  5bf80000  j 1984
0014d8  9f000040  addli r1, zero, 8192
0014dc  2b0100f0  lui r2, 983040
0014e0  97902000  or r1, r1, r2
0014e4  2b810000  lui r2, 8
0014e8  1f010100  addli r2, r2, 0
0014ec  ff002400  l_gm2sm r1, r2, 0(r[9:10])
0014f0  abf00000  lui r1, 15
0014f4  00200300  mfence { sm, gm }
0014f8  1b011500  andi r2, r10, 1
0014fc  9f020006  addli r5, zero, 768
001500  9b90f0ff  ori r1, r1, 4095
001504  80a10004  csr_set csr3, r1
001508  9f000006  addli r1, zero, 768
00150c  00d00100  sync_group
001510  67072fd6  storeli.w r2, -5264(r30)
001514  37200100  beq r2, zero, 8
001518  9f02000a  addli r5, zero, 1280
00151c  63411f00  loadli.w r2,  12(r30)
001520  9f110000  addli r3, zero, 1
001524  bf0d3104  blt.s r2, r3, 2912
001528  e301efd6  loadli.w r3,  -5264(r30)
00152c  00510102  load_param_i r2, 2
001530  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001534  2b4b0000  lui r22, 4
001538  2bae0000  lui r28, 10
00153c  2ba70000  lui r14, 10
001540  1f030000  addli r6, zero, 0
001544  9b441500  srli r9, r10, 1
001548  9bb72200  slli r15, r5, 2
00154c  9f098fd7  addli r19, r30, -5184
001550  9f0b0005  addli r23, zero, 640
001554  1f0d8000  addli r26, zero, 64
001558  9f0d4000  addli r27, zero, 32
00155c  9f0a0003  addli r21, zero, 384
001560  1b441100  srli r8, r2, 1
001564  2b610000  lui r2, 6
001568  1f0b0b00  addli r22, r22, 0
00156c  1f0e0e00  addli r28, r28, 0
001570  1f070704  addli r14, r14, 512
001574  8b901120  mul.s r1, r3, r1
001578  1f010100  addli r2, r2, 0
00157c  67001fd6  storeli.w r1, -5376(r30)
001580  9bb02000  slli r1, r1, 2
001584  0b982010  add.s r16, r1, r2
001588  2b810000  lui r2, 8
00158c  1f010100  addli r2, r2, 0
001590  8b982010  add.s r17, r1, r2
001594  abf0ffff  lui r1, 1048575
001598  1f018fd5  addli r2, r30, -5440
00159c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0015a0  9b9000f8  ori r1, r1, 3968
0015a4  2bf10000  lui r2, 15
0015a8  e74b1fd4  storeli.w r1, -5444(r30)
0015ac  9f000001  addli r1, zero, 128
0015b0  1b19f1ff  ori r18, r2, 4095
0015b4  db030000  j 28
0015b8  00a00300  mfence { lm, sm, gm }
0015bc  80210904  csr_set csr3, r18
0015c0  00d00100  sync_group
0015c4  0b138310  add.s r6, r6, r8
0015c8  3f20d300  blt.s r6, r13, 8
0015cc  5bd30000  j 1688
0015d0  0b119310  add.s r2, r6, r9
0015d4  cb9f26fe  ble.s r13, r2, -28
0015d8  e3011f00  loadli.w r3,  8(r30)
0015dc  1f220000  addli r4, zero, 2
0015e0  9f03ffd6  addli r7, r30, -5256
0015e4  0b113110  add.s r2, r2, r3
0015e8  e3010fd6  loadli.w r3,  -5376(r30)
0015ec  1b31b100  slli r2, r2, 11
0015f0  17113100  or r2, r2, r3
0015f4  33110128  sext_int2long r[3:4], r2
0015f8  173c4102  sll.d r[25:26], r[3:4], r4
0015fc  ebd10300  load.d r[4:5], 0(r7)
001600  2b0100f0  lui r2, 983040
001604  17912700  or r2, r15, r2
001608  8ba18111  add.ul r[4:5], r[4:5], r[25:26]
00160c  7fa13101  l_gm2lm r2, r19, 0(r[4:5])
001610  00a00200  mfence { lm, gm }
001614  6301efd6  loadli.w r2,  -5264(r30)
001618  3b660100  bneq r2, zero, 408
00161c  1f028fd5  addli r4, r30, -5440
001620  e3417fd5  loadli.w r3,  -5444(r30)
001624  1f010000  addli r2, zero, 0
001628  c2110202  vload_mask16.mz vr3{mr1}, 0(r4)
00162c  92303002  vadd.s.mz vr1{mr1}, zero, vr3
001630  12313002  vadd.s.mz vr2{mr1}, zero, vr3
001634  12323002  vadd.s.mz vr4{mr1}, zero, vr3
001638  8b136111  add.s r7, r2, r22
00163c  0b922910  add.s r4, r19, r2
001640  9f810101  addli r3, r3, 128
001644  1f010104  addli r2, r2, 512
001648  1f858300  addli r10, r7, 64
00164c  9f858301  addli r11, r7, 192
001650  4a900302  vloads_mask16.mz vr0{mr1}, 0(r7)
001654  1f068201  addli r12, r4, 192
001658  42140202  vload_mask16.mz vr8{mr1}, 0(r4)
00165c  ca120502  vloads_mask16.mz vr5{mr1}, 0(r10)
001660  1f850301  addli r10, r7, 128
001664  ca930502  vloads_mask16.mz vr7{mr1}, 0(r11)
001668  9f050201  addli r11, r4, 128
00166c  c2150602  vload_mask16.mz vr11{mr1}, 0(r12)
001670  4a130502  vloads_mask16.mz vr6{mr1}, 0(r10)
001674  42950502  vload_mask16.mz vr10{mr1}, 0(r11)
001678  1f058200  addli r10, r4, 64
00167c  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
001680  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
001684  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
001688  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
00168c  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
001690  46100202  vstore_mask16.mz vr0{mr1}, 0(r4)
001694  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001698  46105502  vstore_mask16.mz vr5{mr1}, 0(r10)
00169c  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
0016a0  1f050fd7  addli r10, r30, -5248
0016a4  1f868302  addli r12, r7, 320
0016a8  16146202  vadd.f.mz.rn vr8{mr1}, vr4, vr6
0016ac  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0016b0  46906502  vstore_mask16.mz vr6{mr1}, 0(r11)
0016b4  9f850302  addli r11, r7, 256
0016b8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0016bc  4a130602  vloads_mask16.mz vr6{mr1}, 0(r12)
0016c0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0016c4  96117402  vadd.f.mz.rn vr3{mr1}, vr8, vr7
0016c8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0016cc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0016d0  46103502  vstore_mask16.mz vr3{mr1}, 0(r10)
0016d4  ca910502  vloads_mask16.mz vr3{mr1}, 0(r11)
0016d8  9f850303  addli r11, r7, 384
0016dc  9f838303  addli r7, r7, 448
0016e0  1f050202  addli r10, r4, 256
0016e4  ca940302  vloads_mask16.mz vr9{mr1}, 0(r7)
0016e8  9f038202  addli r7, r4, 320
0016ec  c2130502  vload_mask16.mz vr7{mr1}, 0(r10)
0016f0  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
0016f4  9f050203  addli r11, r4, 384
0016f8  1f028203  addli r4, r4, 448
0016fc  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
001700  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
001704  c2950502  vload_mask16.mz vr11{mr1}, 0(r11)
001708  96913302  vadd.f.mz.rn vr3{mr1}, vr7, vr3
00170c  96136502  vadd.f.mz.rn vr7{mr1}, vr10, vr6
001710  96129002  vadd.f.mz.rn vr5{mr1}, vr0, vr9
001714  16938502  vadd.f.mz.rn vr6{mr1}, vr11, vr8
001718  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
00171c  9f030fd7  addli r7, r30, -5248
001720  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001724  26913102  vmac.f.mz.rn vr2{mr1}, vr3, vr3
001728  46103502  vstore_mask16.mz vr3{mr1}, 0(r10)
00172c  42920302  vload_mask16.mz vr4{mr1}, 0(r7)
001730  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001734  93837105  setlt.u r7, r3, r23
001738  46906502  vstore_mask16.mz vr6{mr1}, 0(r11)
00173c  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
001740  96117002  vadd.f.mz.rn vr3{mr1}, vr0, vr7
001744  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
001748  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00174c  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001750  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001754  bb9b03fe  bneq r7, zero, -284
001758  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
00175c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001760  1f010002  addli r2, zero, 256
001764  6a7101c0  vsrl.p vr2, r2, vr0
001768  ea7111c0  vsrl.p vr3, r2, vr1
00176c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001770  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001774  6af100c0  vsrl.p vr2, r1, vr0
001778  eaf110c0  vsrl.p vr3, r1, vr1
00177c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001780  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001784  6a710dc0  vsrl.p vr2, r26, vr0
001788  ea711dc0  vsrl.p vr3, r26, vr1
00178c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001790  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001794  6af10dc0  vsrl.p vr2, r27, vr0
001798  eaf11dc0  vsrl.p vr3, r27, vr1
00179c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0017a0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0017a4  7a120040  vextracti.f r4, 0(vr0)
0017a8  fa910040  vextracti.f r3, 0(vr1)
0017ac  5b670000  j 824
0017b0  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0017b4  abf1ffff  lui r3, 1048575
0017b8  1f010000  addli r2, zero, 0
0017bc  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0017c0  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0017c4  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0017c8  9b9101f8  ori r3, r3, 3968
0017cc  8b132b10  add.s r7, r22, r2
0017d0  0b922910  add.s r4, r19, r2
0017d4  9f810101  addli r3, r3, 128
0017d8  1f010104  addli r2, r2, 512
0017dc  9f850330  addli r11, r7, 6144
0017e0  1f868330  addli r12, r7, 6208
0017e4  1f050218  addli r10, r4, 3072
0017e8  9f068219  addli r13, r4, 3264
0017ec  ca920502  vloads_mask16.mz vr5{mr1}, 0(r11)
0017f0  9f850331  addli r11, r7, 6272
0017f4  4a130602  vloads_mask16.mz vr6{mr1}, 0(r12)
0017f8  1f868331  addli r12, r7, 6336
0017fc  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
001800  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
001804  ca930502  vloads_mask16.mz vr7{mr1}, 0(r11)
001808  4a140602  vloads_mask16.mz vr8{mr1}, 0(r12)
00180c  9f058218  addli r11, r4, 3136
001810  1f060219  addli r12, r4, 3200
001814  42950502  vload_mask16.mz vr10{mr1}, 0(r11)
001818  c2150602  vload_mask16.mz vr11{mr1}, 0(r12)
00181c  96945402  vadd.f.mz.rn vr9{mr1}, vr9, vr5
001820  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
001824  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
001828  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
00182c  46109502  vstore_mask16.mz vr9{mr1}, 0(r10)
001830  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
001834  1f050fd7  addli r10, r30, -5248
001838  9f850332  addli r11, r7, 6400
00183c  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
001840  96136202  vadd.f.mz.rn vr7{mr1}, vr4, vr6
001844  16929102  vadd.f.mz.rn vr4{mr1}, vr3, vr9
001848  46106602  vstore_mask16.mz vr6{mr1}, 0(r12)
00184c  1f868332  addli r12, r7, 6464
001850  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001854  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
001858  4a130602  vloads_mask16.mz vr6{mr1}, 0(r12)
00185c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001860  96910302  vadd.f.mz.rn vr3{mr1}, vr7, vr0
001864  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001868  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00186c  46103502  vstore_mask16.mz vr3{mr1}, 0(r10)
001870  ca910502  vloads_mask16.mz vr3{mr1}, 0(r11)
001874  9f850333  addli r11, r7, 6528
001878  9f838333  addli r7, r7, 6592
00187c  1f05021a  addli r10, r4, 3328
001880  ca940302  vloads_mask16.mz vr9{mr1}, 0(r7)
001884  9f03821a  addli r7, r4, 3392
001888  c2130502  vload_mask16.mz vr7{mr1}, 0(r10)
00188c  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
001890  9f05021b  addli r11, r4, 3456
001894  1f02821b  addli r4, r4, 3520
001898  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
00189c  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
0018a0  c2950502  vload_mask16.mz vr11{mr1}, 0(r11)
0018a4  96913302  vadd.f.mz.rn vr3{mr1}, vr7, vr3
0018a8  96136502  vadd.f.mz.rn vr7{mr1}, vr10, vr6
0018ac  96129002  vadd.f.mz.rn vr5{mr1}, vr0, vr9
0018b0  16938502  vadd.f.mz.rn vr6{mr1}, vr11, vr8
0018b4  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
0018b8  9f030fd7  addli r7, r30, -5248
0018bc  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
0018c0  26913102  vmac.f.mz.rn vr2{mr1}, vr3, vr3
0018c4  46103502  vstore_mask16.mz vr3{mr1}, 0(r10)
0018c8  42920302  vload_mask16.mz vr4{mr1}, 0(r7)
0018cc  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0018d0  93835105  setlt.u r7, r3, r21
0018d4  46906502  vstore_mask16.mz vr6{mr1}, 0(r11)
0018d8  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
0018dc  96117002  vadd.f.mz.rn vr3{mr1}, vr0, vr7
0018e0  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0018e4  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0018e8  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
0018ec  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0018f0  3bfb03fe  bneq r7, zero, -292
0018f4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0018f8  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0018fc  1f010002  addli r2, zero, 256
001900  1f020000  addli r4, zero, 0
001904  ea7111c0  vsrl.p vr3, r2, vr1
001908  6a7101c0  vsrl.p vr2, r2, vr0
00190c  2bf1ffff  lui r2, 1048575
001910  1b1101f8  ori r2, r2, 3968
001914  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001918  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00191c  eaf110c0  vsrl.p vr3, r1, vr1
001920  6af100c0  vsrl.p vr2, r1, vr0
001924  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001928  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00192c  ea711dc0  vsrl.p vr3, r26, vr1
001930  6a710dc0  vsrl.p vr2, r26, vr0
001934  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001938  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00193c  eaf11dc0  vsrl.p vr3, r27, vr1
001940  6af10dc0  vsrl.p vr2, r27, vr0
001944  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001948  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00194c  fa930040  vextracti.f r7, 0(vr1)
001950  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001954  fa150040  vextracti.f r11, 0(vr0)
001958  12311002  vadd.s.mz vr2{mr1}, zero, vr1
00195c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001960  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001964  0b154b10  add.s r10, r22, r4
001968  8b914910  add.s r3, r19, r4
00196c  1f010101  addli r2, r2, 128
001970  1f020204  addli r4, r4, 512
001974  1f060518  addli r12, r10, 3072
001978  9f068518  addli r13, r10, 3136
00197c  1f8a8101  addli r20, r3, 192
001980  42940102  vload_mask16.mz vr8{mr1}, 0(r3)
001984  4a100602  vloads_mask16.mz vr0{mr1}, 0(r12)
001988  1f060519  addli r12, r10, 3200
00198c  ca920602  vloads_mask16.mz vr5{mr1}, 0(r13)
001990  9f068519  addli r13, r10, 3264
001994  c2150a02  vload_mask16.mz vr11{mr1}, 0(r20)
001998  4a130602  vloads_mask16.mz vr6{mr1}, 0(r12)
00199c  ca930602  vloads_mask16.mz vr7{mr1}, 0(r13)
0019a0  9f860101  addli r13, r3, 128
0019a4  1f868100  addli r12, r3, 64
0019a8  42950602  vload_mask16.mz vr10{mr1}, 0(r13)
0019ac  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
0019b0  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0019b4  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0019b8  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0019bc  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
0019c0  46105602  vstore_mask16.mz vr5{mr1}, 0(r12)
0019c4  1f060fd7  addli r12, r30, -5248
0019c8  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
0019cc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0019d0  16146202  vadd.f.mz.rn vr8{mr1}, vr4, vr6
0019d4  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0019d8  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
0019dc  46107a02  vstore_mask16.mz vr7{mr1}, 0(r20)
0019e0  9f06051a  addli r13, r10, 3328
0019e4  1f0a851a  addli r20, r10, 3392
0019e8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0019ec  4a130a02  vloads_mask16.mz vr6{mr1}, 0(r20)
0019f0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0019f4  96117402  vadd.f.mz.rn vr3{mr1}, vr8, vr7
0019f8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0019fc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001a00  46103602  vstore_mask16.mz vr3{mr1}, 0(r12)
001a04  ca910602  vloads_mask16.mz vr3{mr1}, 0(r13)
001a08  9f06051b  addli r13, r10, 3456
001a0c  1f05851b  addli r10, r10, 3520
001a10  1f860102  addli r12, r3, 256
001a14  ca140502  vloads_mask16.mz vr9{mr1}, 0(r10)
001a18  1f858102  addli r10, r3, 320
001a1c  c2130602  vload_mask16.mz vr7{mr1}, 0(r12)
001a20  4a940602  vloads_mask16.mz vr8{mr1}, 0(r13)
001a24  9f860103  addli r13, r3, 384
001a28  9f818103  addli r3, r3, 448
001a2c  42150502  vload_mask16.mz vr10{mr1}, 0(r10)
001a30  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
001a34  c2950602  vload_mask16.mz vr11{mr1}, 0(r13)
001a38  96913302  vadd.f.mz.rn vr3{mr1}, vr7, vr3
001a3c  96136502  vadd.f.mz.rn vr7{mr1}, vr10, vr6
001a40  96129002  vadd.f.mz.rn vr5{mr1}, vr0, vr9
001a44  16938502  vadd.f.mz.rn vr6{mr1}, vr11, vr8
001a48  46107502  vstore_mask16.mz vr7{mr1}, 0(r10)
001a4c  1f050fd7  addli r10, r30, -5248
001a50  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001a54  26913102  vmac.f.mz.rn vr2{mr1}, vr3, vr3
001a58  46103602  vstore_mask16.mz vr3{mr1}, 0(r12)
001a5c  42120502  vload_mask16.mz vr4{mr1}, 0(r10)
001a60  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001a64  13057105  setlt.u r10, r2, r23
001a68  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
001a6c  46905102  vstore_mask16.mz vr5{mr1}, 0(r3)
001a70  96117002  vadd.f.mz.rn vr3{mr1}, vr0, vr7
001a74  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
001a78  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
001a7c  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001a80  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001a84  bb0b05fe  bneq r10, zero, -288
001a88  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
001a8c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001a90  1f010002  addli r2, zero, 256
001a94  6a7101c0  vsrl.p vr2, r2, vr0
001a98  ea7111c0  vsrl.p vr3, r2, vr1
001a9c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001aa0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001aa4  6af100c0  vsrl.p vr2, r1, vr0
001aa8  eaf110c0  vsrl.p vr3, r1, vr1
001aac  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001ab0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001ab4  6a710dc0  vsrl.p vr2, r26, vr0
001ab8  ea711dc0  vsrl.p vr3, r26, vr1
001abc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001ac0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001ac4  6af10dc0  vsrl.p vr2, r27, vr0
001ac8  eaf11dc0  vsrl.p vr3, r27, vr1
001acc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001ad0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001ad4  fa910040  vextracti.f r3, 0(vr1)
001ad8  7a110040  vextracti.f r2, 0(vr0)
001adc  0be22510  add.f.rn r4, r11, r2
001ae0  8be13310  add.f.rn r3, r7, r3
001ae4  8b038330  div.u r7, r6, r8
001ae8  00350002  core_id r10
001aec  1f010000  addli r2, zero, 0
001af0  9bb36300  slli r7, r7, 6
001af4  9b830304  andi r7, r7, 64
001af8  9793a300  or r7, r7, r10
001afc  1bb52300  slli r10, r7, 2
001b00  8b15c511  add.s r11, r10, r28
001b04  73e04500  stores.w r4, 0(r11)
001b08  1b82e307  andi r4, r7, 126
001b0c  8b13e510  add.s r7, r10, r14
001b10  1b154500  ori r10, r10, 4
001b14  1b322200  slli r4, r4, 2
001b18  73e03300  stores.w r3, 0(r7)
001b1c  8b11c511  add.s r3, r10, r28
001b20  0b15e510  add.s r10, r10, r14
001b24  00a00300  mfence { lm, sm, gm }
001b28  80210904  csr_set csr3, r18
001b2c  00d00100  sync_group
001b30  8b13c211  add.s r7, r4, r28
001b34  efc10100  loads.w r3, 0(r3)
001b38  0b12e210  add.s r4, r4, r14
001b3c  6f450500  loads.w r10, 0(r10)
001b40  efc30300  loads.w r7, 0(r7)
001b44  6f420200  loads.w r4, 0(r4)
001b48  8be17110  add.f.rn r3, r3, r7
001b4c  0b624510  add.f.rn r4, r10, r4
001b50  2b05003a  lui r10, 237568
001b54  8be3a120  mul.f.rn r7, r3, r10
001b58  8b61a220  mul.f.rn r3, r4, r10
001b5c  0be27320  mul.f.rn r4, r7, r7
001b60  8be14118  sub.f.rn r3, r3, r4
001b64  63023f00  loadli.w r4,  24(r30)
001b68  8be14110  add.f.rn r3, r3, r4
001b6c  2b02803f  lui r4, 260096
001b70  8f810108  sqrt.f.rn r3, r3
001b74  8f013218  div.f.rn r3, r4, r3
001b78  0be20358  neg.f r4, r7
001b7c  9f030000  addli r7, zero, 0
001b80  0b152810  add.s r10, r16, r2
001b84  8b952910  add.s r11, r19, r2
001b88  0b962810  add.s r12, r17, r2
001b8c  1f0a8500  addli r20, r10, 64
001b90  9f868500  addli r13, r11, 64
001b94  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
001b98  4a110502  vloads_mask16.mz vr2{mr1}, 0(r10)
001b9c  4a120602  vloads_mask16.mz vr4{mr1}, 0(r12)
001ba0  ca110a02  vloads_mask16.mz vr3{mr1}, 0(r20)
001ba4  1f0a8600  addli r20, r12, 64
001ba8  c2900602  vload_mask16.mz vr1{mr1}, 0(r13)
001bac  ca120a02  vloads_mask16.mz vr5{mr1}, 0(r20)
001bb0  1f8a4300  addli r20, r7, 32
001bb4  12100202  vadd.f.mz.rn vr0{mr1}, r4, vr0
001bb8  138a4207  setle.u r20, r5, r20
001bbc  92101202  vadd.f.mz.rn vr1{mr1}, r4, vr1
001bc0  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
001bc4  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
001bc8  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
001bcc  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
001bd0  46904502  vstore_mask16.mz vr4{mr1}, 0(r11)
001bd4  46905602  vstore_mask16.mz vr5{mr1}, 0(r13)
001bd8  bb110a00  bneq r20, zero, 100
001bdc  1f0a0501  addli r20, r10, 128
001be0  9f860501  addli r13, r11, 128
001be4  9f858501  addli r11, r11, 192
001be8  1f058501  addli r10, r10, 192
001bec  9f838300  addli r7, r7, 64
001bf0  1f010102  addli r2, r2, 256
001bf4  4a110a02  vloads_mask16.mz vr2{mr1}, 0(r20)
001bf8  1f0a0601  addli r20, r12, 128
001bfc  1f068601  addli r12, r12, 192
001c00  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
001c04  c2900502  vload_mask16.mz vr1{mr1}, 0(r11)
001c08  4a120502  vloads_mask16.mz vr4{mr1}, 0(r10)
001c0c  13855304  setlt.u r10, r7, r5
001c10  ca110a02  vloads_mask16.mz vr3{mr1}, 0(r20)
001c14  ca120602  vloads_mask16.mz vr5{mr1}, 0(r12)
001c18  12100202  vadd.f.mz.rn vr0{mr1}, r4, vr0
001c1c  92101202  vadd.f.mz.rn vr1{mr1}, r4, vr1
001c20  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
001c24  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
001c28  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
001c2c  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
001c30  46903602  vstore_mask16.mz vr3{mr1}, 0(r13)
001c34  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
001c38  3b2d05fe  bneq r10, zero, -184
001c3c  eb510f00  load.d r[4:5], 0(r30)
001c40  2b0100f0  lui r2, 983040
001c44  00a00000  mfence { lm }
001c48  17912700  or r2, r15, r2
001c4c  8ba18111  add.ul r[4:5], r[4:5], r[25:26]
001c50  7fb13101  s_lm2gm r2, r19, 0(r[4:5])
001c54  00a00200  mfence { lm, gm }
001c58  e3461f00  loadli.w r13,  12(r30)
001c5c  0b138310  add.s r6, r6, r8
001c60  bf45d3fc  blt.s r6, r13, -1680
001c64  abf00000  lui r1, 15
001c68  9b90f0ff  ori r1, r1, 4095
001c6c  80a10004  csr_set csr3, r1
001c70  00d00100  sync_group
001c74  5b820000  j 1040
001c78  63012f00  loadli.w r2,  16(r30)
001c7c  ab0100f0  lui r3, 983040
001c80  1b312100  slli r2, r2, 2
001c84  17113100  or r2, r2, r3
001c88  abc10000  lui r3, 12
001c8c  9f810108  addli r3, r3, 1024
001c90  7f013400  l_gm2sm r2, r3, 0(r[9:10])
001c94  2bf10000  lui r2, 15
001c98  e3411f00  loadli.w r3,  12(r30)
001c9c  00200300  mfence { sm, gm }
001ca0  1b11f1ff  ori r2, r2, 4095
001ca4  80210104  csr_set csr3, r2
001ca8  00d00100  sync_group
001cac  4bef1100  ble.s r3, r1, 984
001cb0  63012f00  loadli.w r2,  16(r30)
001cb4  e3412f00  loadli.w r3,  20(r30)
001cb8  aba90000  lui r19, 10
001cbc  2bbc0000  lui r24, 11
001cc0  abcc0000  lui r25, 12
001cc4  9f048fd7  addli r9, r30, -5184
001cc8  1f180000  addli r16, zero, 1
001ccc  1f090002  addli r18, zero, 256
001cd0  1f0a0001  addli r20, zero, 128
001cd4  9f0a8000  addli r21, zero, 64
001cd8  1f0b4000  addli r22, zero, 32
001cdc  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001ce0  9f890908  addli r19, r19, 1024
001ce4  1f0c0c08  addli r24, r24, 1024
001ce8  9f8c0c08  addli r25, r25, 1024
001cec  1b342100  slli r8, r2, 2
001cf0  8b123110  add.s r5, r2, r3
001cf4  33010108  fix2float.rn r2, r2
001cf8  1bb32100  slli r6, r3, 2
001cfc  670c2fd4  storeli.w r2, -5440(r30)
001d00  1ff1f2ff  addli r2, r5, -1
001d04  67008fd6  storeli.w r8, -5376(r30)
001d08  8b133130  div.s r7, r2, r3
001d0c  2bf1ffff  lui r2, 1048575
001d10  9b18f1ff  ori r17, r2, 4095
001d14  1f010fd7  addli r2, r30, -5248
001d18  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001d1c  5b080000  j 64
001d20  9f02efd6  addli r5, r30, -5264
001d24  00a00000  mfence { lm }
001d28  eb510f00  load.d r[4:5], 0(r30)
001d2c  2b0100f0  lui r2, 983040
001d30  63040fd6  loadli.w r8,  -5376(r30)
001d34  6bd50200  load.d r[11:12], 0(r5)
001d38  17112400  or r2, r8, r2
001d3c  0ba5a110  add.ul r[11:12], r[4:5], r[11:12]
001d40  80510102  load_param_i r3, 2
001d44  7f319500  s_lm2gm r2, r9, 0(r[11:12])
001d48  8b901110  add.s r1, r3, r1
001d4c  00a00200  mfence { lm, gm }
001d50  63411f00  loadli.w r2,  12(r30)
001d54  3fa02000  blt.s r1, r2, 8
001d58  db650000  j 812
001d5c  63011f00  loadli.w r2,  8(r30)
001d60  1f220000  addli r4, zero, 2
001d64  9f02ffd6  addli r5, r30, -5256
001d68  0b912010  add.s r2, r1, r2
001d6c  0b11f120  mul.s r2, r2, r15
001d70  33110128  sext_int2long r[3:4], r2
001d74  17354102  sll.d r[11:12], r[3:4], r4
001d78  ebd10200  load.d r[4:5], 0(r5)
001d7c  2b0100f0  lui r2, 983040
001d80  9f02efd6  addli r5, r30, -5264
001d84  73b0a200  store.d r[11:12], 0(r5)
001d88  17112400  or r2, r8, r2
001d8c  0ba5a110  add.ul r[11:12], r[4:5], r[11:12]
001d90  7f219500  l_gm2lm r2, r9, 0(r[11:12])
001d94  00a00200  mfence { lm, gm }
001d98  bfa70301  blt.s r7, r16, 488
001d9c  9f0b0000  addli r23, zero, 0
001da0  1f0e0000  addli r28, zero, 0
001da4  9f050000  addli r11, zero, 0
001da8  db0c0000  j 100
001dac  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001db0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001db4  9f950500  addli r11, r11, 1
001db8  6a7109c0  vsrl.p vr2, r18, vr0
001dbc  ea7119c0  vsrl.p vr3, r18, vr1
001dc0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001dc4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001dc8  6a710ac0  vsrl.p vr2, r20, vr0
001dcc  ea711ac0  vsrl.p vr3, r20, vr1
001dd0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001dd4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001dd8  6af10ac0  vsrl.p vr2, r21, vr0
001ddc  eaf11ac0  vsrl.p vr3, r21, vr1
001de0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001de4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001de8  6a710bc0  vsrl.p vr2, r22, vr0
001dec  ea711bc0  vsrl.p vr3, r22, vr1
001df0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001df4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001df8  7a110040  vextracti.f r2, 0(vr0)
001dfc  fa910040  vextracti.f r3, 0(vr1)
001e00  8beb2b10  add.f.rn r23, r23, r2
001e04  0b6e3e10  add.f.rn r28, r28, r3
001e08  37867500  beq r11, r7, 384
001e0c  9f810500  addli r3, r11, 0
001e10  37302701  beq r14, r18, 12
001e14  17a11501  xor r2, r11, r17
001e18  8b912310  add.s r3, r7, r2
001e1c  0b91e120  mul.s r2, r3, r14
001e20  0b912718  sub.s r2, r15, r2
001e24  0b15e140  min.s r10, r2, r14
001e28  1f010fd7  addli r2, r30, -5248
001e2c  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
001e30  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001e34  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001e38  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001e3c  bf4d05ff  blt.s r10, r16, -144
001e40  1f020fd7  addli r4, r30, -5248
001e44  1f010000  addli r2, zero, 0
001e48  8b113320  mul.s r3, r6, r3
001e4c  1f068fd7  addli r12, r30, -5184
001e50  9f860900  addli r13, r19, 0
001e54  42120202  vload_mask16.mz vr4{mr1}, 0(r4)
001e58  92304002  vadd.s.mz vr1{mr1}, zero, vr4
001e5c  12314002  vadd.s.mz vr2{mr1}, zero, vr4
001e60  92314002  vadd.s.mz vr3{mr1}, zero, vr4
001e64  8b923610  add.s r5, r13, r3
001e68  0b143610  add.s r8, r12, r3
001e6c  1f828200  addli r4, r5, 64
001e70  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
001e74  1f8d8201  addli r26, r5, 192
001e78  c2140402  vload_mask16.mz vr9{mr1}, 0(r8)
001e7c  9f0d8401  addli r27, r8, 192
001e80  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
001e84  1f820201  addli r4, r5, 128
001e88  4a140d02  vloads_mask16.mz vr8{mr1}, 0(r26)
001e8c  1f0d0401  addli r26, r8, 128
001e90  42900d02  vload_mask16.mz vr0{mr1}, 0(r27)
001e94  ca130202  vloads_mask16.mz vr7{mr1}, 0(r4)
001e98  c2150d02  vload_mask16.mz vr11{mr1}, 0(r26)
001e9c  1f028400  addli r4, r8, 64
001ea0  42150202  vload_mask16.mz vr10{mr1}, 0(r4)
001ea4  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001ea8  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
001eac  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
001eb0  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
001eb4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001eb8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001ebc  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
001ec0  46106202  vstore_mask16.mz vr6{mr1}, 0(r4)
001ec4  1f028100  addli r4, r2, 64
001ec8  46900d02  vstore_mask16.mz vr0{mr1}, 0(r27)
001ecc  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001ed0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001ed4  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001ed8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001edc  46107d02  vstore_mask16.mz vr7{mr1}, 0(r26)
001ee0  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
001ee4  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001ee8  4b1b45fe  ble.s r10, r4, -316
001eec  1f8d0202  addli r26, r5, 256
001ef0  9f8d8202  addli r27, r5, 320
001ef4  1f020402  addli r4, r8, 256
001ef8  1f010101  addli r2, r2, 128
001efc  9f860604  addli r13, r13, 512
001f00  1f060604  addli r12, r12, 512
001f04  4a100d02  vloads_mask16.mz vr0{mr1}, 0(r26)
001f08  1f8d0203  addli r26, r5, 384
001f0c  9f828203  addli r5, r5, 448
001f10  ca920d02  vloads_mask16.mz vr5{mr1}, 0(r27)
001f14  42140202  vload_mask16.mz vr8{mr1}, 0(r4)
001f18  4a130d02  vloads_mask16.mz vr6{mr1}, 0(r26)
001f1c  ca930202  vloads_mask16.mz vr7{mr1}, 0(r5)
001f20  1f0d0403  addli r26, r8, 384
001f24  9f028402  addli r5, r8, 320
001f28  1f048403  addli r8, r8, 448
001f2c  42150d02  vload_mask16.mz vr10{mr1}, 0(r26)
001f30  c2940202  vload_mask16.mz vr9{mr1}, 0(r5)
001f34  c2150402  vload_mask16.mz vr11{mr1}, 0(r8)
001f38  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
001f3c  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001f40  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
001f44  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
001f48  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001f4c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001f50  46100202  vstore_mask16.mz vr0{mr1}, 0(r4)
001f54  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
001f58  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
001f5c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001f60  46106d02  vstore_mask16.mz vr6{mr1}, 0(r26)
001f64  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
001f68  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001f6c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001f70  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001f74  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001f78  bf3ba1fe  blt.s r2, r10, -276
001f7c  5bc6ffff  j -464
001f80  1f0e0000  addli r28, zero, 0
001f84  9f0b0000  addli r23, zero, 0
001f88  00a00000  mfence { lm }
001f8c  3fd607ff  blt.s r15, r16, -620
001f90  e3018fd5  loadli.w r3,  -5440(r30)
001f94  63023f00  loadli.w r4,  24(r30)
001f98  1f010000  addli r2, zero, 0
001f9c  9f050000  addli r11, zero, 0
001fa0  8f823b18  div.f.rn r5, r23, r3
001fa4  8f013e18  div.f.rn r3, r28, r3
001fa8  0be45220  mul.f.rn r8, r5, r5
001fac  0be50258  neg.f r10, r5
001fb0  8be18118  sub.f.rn r3, r3, r8
001fb4  8be14110  add.f.rn r3, r3, r4
001fb8  2b02803f  lui r4, 260096
001fbc  8f810108  sqrt.f.rn r3, r3
001fc0  8f013218  div.f.rn r3, r4, r3
001fc4  0b148111  add.s r8, r2, r24
001fc8  8b922410  add.s r5, r9, r2
001fcc  1f068400  addli r12, r8, 64
001fd0  4a110402  vloads_mask16.mz vr2{mr1}, 0(r8)
001fd4  0b149111  add.s r8, r2, r25
001fd8  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
001fdc  ca110602  vloads_mask16.mz vr3{mr1}, 0(r12)
001fe0  1f868200  addli r12, r5, 64
001fe4  4a120402  vloads_mask16.mz vr4{mr1}, 0(r8)
001fe8  1f048400  addli r8, r8, 64
001fec  c2120602  vload_mask16.mz vr5{mr1}, 0(r12)
001ff0  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
001ff4  1f844500  addli r8, r11, 32
001ff8  92101502  vadd.f.mz.rn vr1{mr1}, r10, vr1
001ffc  92125502  vadd.f.mz.rn vr5{mr1}, r10, vr5
002000  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
002004  8a925102  vmul.f.mz.rn vr5{mr1}, r3, vr5
002008  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
00200c  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
002010  46904202  vstore_mask16.mz vr4{mr1}, 0(r5)
002014  46106602  vstore_mask16.mz vr6{mr1}, 0(r12)
002018  4ba487fe  ble.s r15, r8, -760
00201c  0b142c10  add.s r8, r24, r2
002020  0b962c10  add.s r12, r25, r2
002024  9f858500  addli r11, r11, 64
002028  1f010102  addli r2, r2, 256
00202c  9f060401  addli r13, r8, 128
002030  9f0b0601  addli r23, r12, 128
002034  1f048401  addli r8, r8, 192
002038  1f068601  addli r12, r12, 192
00203c  ca900602  vloads_mask16.mz vr1{mr1}, 0(r13)
002040  9f860201  addli r13, r5, 128
002044  9f828201  addli r5, r5, 192
002048  4a910b02  vloads_mask16.mz vr2{mr1}, 0(r23)
00204c  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
002050  4a130602  vloads_mask16.mz vr6{mr1}, 0(r12)
002054  c2910602  vload_mask16.mz vr3{mr1}, 0(r13)
002058  42920202  vload_mask16.mz vr4{mr1}, 0(r5)
00205c  92113502  vadd.f.mz.rn vr3{mr1}, r10, vr3
002060  12124502  vadd.f.mz.rn vr4{mr1}, r10, vr4
002064  8a913102  vmul.f.mz.rn vr3{mr1}, r3, vr3
002068  0a924102  vmul.f.mz.rn vr4{mr1}, r3, vr4
00206c  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
002070  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
002074  46902602  vstore_mask16.mz vr2{mr1}, 0(r13)
002078  46906202  vstore_mask16.mz vr6{mr1}, 0(r5)
00207c  3fadf5fe  blt.s r11, r15, -184
002080  5b94ffff  j -864
002084  9f0e0fd5  addli sp, r30, -5504
002088  e38fae2a  loadli.w r31,  5456(sp)
00208c  63cfae2a  loadli.w r30,  5460(sp)
002090  638ebe2a  loadli.w r28,  5464(sp)
002094  e3cdbe2a  loadli.w r27,  5468(sp)
002098  638dce2a  loadli.w r26,  5472(sp)
00209c  e3ccce2a  loadli.w r25,  5476(sp)
0020a0  638cde2a  loadli.w r24,  5480(sp)
0020a4  e3cbde2a  loadli.w r23,  5484(sp)
0020a8  638bee2a  loadli.w r22,  5488(sp)
0020ac  e3caee2a  loadli.w r21,  5492(sp)
0020b0  638afe2a  loadli.w r20,  5496(sp)
0020b4  e3c9fe2a  loadli.w r19,  5500(sp)
0020b8  9f8e0e2b  addli sp, sp, 5504
0020bc  5f800f00  jr r31, 0
0020c0  00100000  exit
0020c4  00100000  exit
0020c8  00100000  exit
0020cc  00100000  exit
0020d0  00100000  exit
0020d4  00100000  exit
0020d8  00100000  exit
0020dc  00100000  exit
0020e0  00100000  exit
0020e4  00100000  exit
0020e8  00100000  exit
0020ec  00100000  exit
0020f0  00100000  exit
0020f4  00100000  exit
0020f8  00100000  exit
0020fc  00100000  exit
002100  00100000  exit
002104  00100000  exit
002108  00100000  exit
00210c  00100000  exit
002110  00100000  exit
002114  00100000  exit
002118  00100000  exit
00211c  00100000  exit
002120  00100000  exit
002124  00100000  exit
002128  00100000  exit
00212c  00100000  exit
002130  00100000  exit
002134  00100000  exit
002138  00100000  exit
00213c  00100000  exit
002140  00100000  exit
002144  00100000  exit
002148  00100000  exit
00214c  00100000  exit
002150  00100000  exit
002154  00100000  exit
002158  00100000  exit
00215c  00100000  exit
002160  00100000  exit
002164  00100000  exit
002168  00100000  exit
00216c  00100000  exit
002170  00100000  exit
002174  00100000  exit
002178  00100000  exit
00217c  00100000  exit
002180  00100000  exit
002184  00100000  exit
002188  00100000  exit
00218c  00100000  exit
002190  00100000  exit
002194  00100000  exit
002198  00100000  exit
00219c  00100000  exit
0021a0  00100000  exit
0021a4  00100000  exit
0021a8  00100000  exit
0021ac  00100000  exit
0021b0  00100000  exit
0021b4  00100000  exit
0021b8  00100000  exit
0021bc  00100000  exit
0021c0  00100000  exit
0021c4  00100000  exit
0021c8  00100000  exit
0021cc  00100000  exit
0021d0  00100000  exit
0021d4  00100000  exit
0021d8  00100000  exit
0021dc  00100000  exit
0021e0  00100000  exit
0021e4  00100000  exit
0021e8  00100000  exit
0021ec  00100000  exit
0021f0  00100000  exit
0021f4  00100000  exit
0021f8  00100000  exit
0021fc  00100000  exit
002200  00100000  exit
002204  00100000  exit
002208  00100000  exit
00220c  00100000  exit
002210  00100000  exit
002214  00100000  exit
002218  00100000  exit
00221c  00100000  exit
002220  00100000  exit
002224  00100000  exit
002228  00100000  exit
00222c  00100000  exit
002230  00100000  exit
002234  00100000  exit
002238  00100000  exit
00223c  00100000  exit
002240  00100000  exit
002244  00100000  exit
002248  00100000  exit
00224c  00100000  exit
002250  00100000  exit
002254  00100000  exit
002258  00100000  exit
00225c  00100000  exit
002260  00100000  exit
002264  00100000  exit
002268  00100000  exit
00226c  00100000  exit
002270  00100000  exit
002274  00100000  exit
002278  00100000  exit
00227c  00100000  exit
002280  00100000  exit
002284  00100000  exit
002288  00100000  exit
00228c  00100000  exit
002290  00100000  exit
002294  00100000  exit
002298  00100000  exit
00229c  00100000  exit
0022a0  00100000  exit
0022a4  00100000  exit
0022a8  00100000  exit
0022ac  00100000  exit
0022b0  00100000  exit
0022b4  00100000  exit
0022b8  00100000  exit
0022bc  00100000  exit
0022c0  00100000  exit
0022c4  00100000  exit
0022c8  00100000  exit
0022cc  00100000  exit
0022d0  00100000  exit
0022d4  00100000  exit
0022d8  00100000  exit
0022dc  00100000  exit
0022e0  00100000  exit
0022e4  00100000  exit
0022e8  00100000  exit
0022ec  00100000  exit
0022f0  00100000  exit
0022f4  00100000  exit
0022f8  00100000  exit
0022fc  00100000  exit
