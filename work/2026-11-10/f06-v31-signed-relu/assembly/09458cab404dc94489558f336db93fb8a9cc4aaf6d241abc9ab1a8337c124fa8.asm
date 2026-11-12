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
000108  1f0c6001  addli r24, zero, 176
00010c  9f0c0010  addli r25, zero, 2048
000110  1f1d0000  addli r26, zero, 1
000114  9f0d000c  addli r27, zero, 1536
000118  1b9ef026  ori r28, r1, 623
00011c  8b904a31  div.s r1, r21, r20
000120  eb510f02  load.d r[4:5], 32(r30)
000124  6b530f01  load.d r[7:8], 16(r30)
000128  6b548f01  load.d r[9:10], 24(r30)
00012c  6782ae01  storeli.w r26, 32(sp)
000130  e7c10e00  storeli.w zero, 28(sp)
000134  67c1be01  storeli.w r27, 20(sp)
000138  67819e01  storeli.w r25, 16(sp)
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
0001b4  63472f00  loadli.w r14,  20(r30)
0001b8  e3072f00  loadli.w r15,  16(r30)
0001bc  e3461f00  loadli.w r13,  12(r30)
0001c0  e3004f00  loadli.w r1,  32(r30)
0001c4  1f05ffd6  addli r10, r30, -5256
0001c8  73302500  store.d r[3:4], 0(r10)
0001cc  37910000  beq r1, zero, 68
0001d0  e3403f00  loadli.w r1,  28(r30)
0001d4  37920000  beq r1, zero, 132
0001d8  80300002  core_id r1
0001dc  1f210000  addli r2, zero, 2
0001e0  37fd2004  beq r1, r2, 2908
0001e4  1f110000  addli r2, zero, 1
0001e8  b7dc2004  beq r1, r2, 2868
0001ec  bbbd0004  bneq r1, zero, 2924
0001f0  63012f00  loadli.w r2,  16(r30)
0001f4  ab0100f0  lui r3, 983040
0001f8  1b311100  slli r2, r2, 1
0001fc  17113100  or r2, r2, r3
000200  ab010000  lui r3, 0
000204  9f810100  addli r3, r3, 0
000208  7f013200  l_gm2sm r2, r3, 0(r[5:6])
00020c  db690100  j 2892
000210  e3403f00  loadli.w r1,  28(r30)
000214  b7fe0000  beq r1, zero, 956
000218  e3002f00  loadli.w r1,  16(r30)
00021c  1f010010  addli r2, zero, 2048
000220  3b9b2004  bneq r1, r2, 2756
000224  00350002  core_id r10
000228  9f200000  addli r1, zero, 2
00022c  b74a1508  beq r10, r1, 4784
000230  9f100000  addli r1, zero, 1
000234  b7391508  beq r10, r1, 4716
000238  bb7a0508  bneq r10, zero, 4796
00023c  9f000040  addli r1, zero, 8192
000240  2b0100f0  lui r2, 983040
000244  97902000  or r1, r1, r2
000248  2b410000  lui r2, 4
00024c  1f010100  addli r2, r2, 0
000250  ff002200  l_gm2sm r1, r2, 0(r[5:6])
000254  5b540200  j 4768
000258  80300002  core_id r1
00025c  bb800000  bneq r1, zero, 32
000260  63012f00  loadli.w r2,  16(r30)
000264  ab0100f0  lui r3, 983040
000268  1b311100  slli r2, r2, 1
00026c  17113100  or r2, r2, r3
000270  ab310000  lui r3, 3
000274  9f810100  addli r3, r3, 0
000278  7f013200  l_gm2sm r2, r3, 0(r[5:6])
00027c  2bf10000  lui r2, 15
000280  e3411f00  loadli.w r3,  12(r30)
000284  00200300  mfence { sm, gm }
000288  1b11f1ff  ori r2, r2, 4095
00028c  80210104  csr_set csr3, r2
000290  00d00100  sync_group
000294  cbd7110e  ble.s r3, r1, 7668
000298  63012f00  loadli.w r2,  16(r30)
00029c  e3412f00  loadli.w r3,  20(r30)
0002a0  2b3b0000  lui r22, 3
0002a4  1f140000  addli r8, zero, 1
0002a8  1f068fd7  addli r12, r30, -5184
0002ac  9f080002  addli r17, zero, 256
0002b0  1f090001  addli r18, zero, 128
0002b4  9f098000  addli r19, zero, 64
0002b8  1f0a4000  addli r20, zero, 32
0002bc  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0002c0  1f0b0b00  addli r22, r22, 0
0002c4  0b133110  add.s r6, r2, r3
0002c8  1b321100  slli r4, r2, 1
0002cc  b3020108  fix2float.rn r5, r2
0002d0  1f71f3ff  addli r2, r6, -1
0002d4  1bb31100  slli r6, r3, 1
0002d8  8b133130  div.s r7, r2, r3
0002dc  2bf1ffff  lui r2, 1048575
0002e0  1b18f1ff  ori r16, r2, 4095
0002e4  5b070000  j 56
0002e8  00a00000  mfence { lm }
0002ec  eb540f00  load.d r[10:11], 0(r30)
0002f0  2b0100f0  lui r2, 983040
0002f4  1f068fd7  addli r12, r30, -5184
0002f8  80510102  load_param_i r3, 2
0002fc  17112200  or r2, r4, r2
000300  8b901110  add.s r1, r3, r1
000304  0ba57411  add.ul r[11:12], r[10:11], r[24:25]
000308  7f31c500  s_lm2gm r2, r12, 0(r[11:12])
00030c  00a00200  mfence { lm, gm }
000310  63411f00  loadli.w r2,  12(r30)
000314  3fa02000  blt.s r1, r2, 8
000318  5bae0300  j 7536
00031c  63011f00  loadli.w r2,  8(r30)
000320  0b912010  add.s r2, r1, r2
000324  0b11f120  mul.s r2, r2, r15
000328  33110128  sext_int2long r[3:4], r2
00032c  973b8102  sll.d r[24:25], r[3:4], r8
000330  9f01ffd6  addli r3, r30, -5256
000334  2b0100f0  lui r2, 983040
000338  ebd40100  load.d r[10:11], 0(r3)
00033c  17112200  or r2, r4, r2
000340  0ba57411  add.ul r[11:12], r[10:11], r[24:25]
000344  7f21c500  l_gm2lm r2, r12, 0(r[11:12])
000348  00a00200  mfence { lm, gm }
00034c  3fc78300  blt.s r7, r8, 464
000350  1f0d0000  addli r26, zero, 0
000354  9f0c0000  addli r25, zero, 0
000358  9f050000  addli r11, zero, 0
00035c  db0c0000  j 100
000360  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
000364  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000368  9f950500  addli r11, r11, 1
00036c  6af138c0  vsrl.p vr2, r17, vr3
000370  6af218c0  vsrl.p vr4, r17, vr1
000374  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
000378  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
00037c  ea7129c0  vsrl.p vr3, r18, vr2
000380  6a7219c0  vsrl.p vr4, r18, vr1
000384  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000388  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
00038c  eaf129c0  vsrl.p vr3, r19, vr2
000390  6af219c0  vsrl.p vr4, r19, vr1
000394  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000398  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
00039c  ea712ac0  vsrl.p vr3, r20, vr2
0003a0  6a721ac0  vsrl.p vr4, r20, vr1
0003a4  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0003a8  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0003ac  7a110140  vextracti.f r2, 0(vr2)
0003b0  fa910040  vextracti.f r3, 0(vr1)
0003b4  0b6d2d10  add.f.rn r26, r26, r2
0003b8  8bec3c10  add.f.rn r25, r25, r3
0003bc  b7a57500  beq r11, r7, 360
0003c0  1f810500  addli r2, r11, 0
0003c4  37301701  beq r14, r17, 12
0003c8  17a10501  xor r2, r11, r16
0003cc  0b912310  add.s r2, r7, r2
0003d0  8b11e120  mul.s r3, r2, r14
0003d4  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0003d8  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0003dc  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0003e0  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0003e4  8b913718  sub.s r3, r15, r3
0003e8  0b96e140  min.s r12, r3, r14
0003ec  bf5d86fe  blt.s r12, r8, -140
0003f0  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0003f4  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0003f8  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0003fc  12320002  vadd.s.mz vr4{mr1}, zero, vr0
000400  0b152320  mul.s r10, r6, r2
000404  9f060000  addli r13, zero, 0
000408  9f0d8fd7  addli r27, r30, -5184
00040c  1f010b00  addli r2, r22, 0
000410  8b11a110  add.s r3, r2, r10
000414  9f848600  addli r9, r13, 64
000418  ca820102  vloads.mz vr5{mr1}, 0(r3)
00041c  1f8e8100  addli r28, r3, 64
000420  4a030e02  vloads.mz vr6{mr1}, 0(r28)
000424  0b9ead10  add.s r28, r27, r10
000428  c2030e02  vload.mz vr7{mr1}, 0(r28)
00042c  9f0a8e00  addli r21, r28, 64
000430  42840a02  vload.mz vr8{mr1}, 0(r21)
000434  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
000438  92320002  vadd.s.mz vr5{mr1}, zero, vr0
00043c  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
000440  06b40300  vfp162float_l.rn vr8, vr7
000444  86f30300  vfp162float_h.rn vr7, vr7
000448  86340300  vfp162float_l.rn vr9, vr6
00044c  06730300  vfp162float_h.rn vr6, vr6
000450  86120400  vfloat2fp16_l.rn vr5, vr8
000454  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
000458  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
00045c  12340002  vadd.s.mz vr8{mr1}, zero, vr0
000460  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
000464  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
000468  06940400  vfloat2fp16_l.rn vr8, vr9
00046c  86d20300  vfloat2fp16_h.rn vr5, vr7
000470  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
000474  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
000478  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
00047c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000480  06540300  vfloat2fp16_h.rn vr8, vr6
000484  46005e02  vstore.mz vr5{mr1}, 0(r28)
000488  46808a02  vstore.mz vr8{mr1}, 0(r21)
00048c  4b5b96fe  ble.s r12, r9, -300
000490  9f840101  addli r9, r3, 128
000494  9f818101  addli r3, r3, 192
000498  9f860601  addli r13, r13, 128
00049c  1f010102  addli r2, r2, 256
0004a0  9f8d0d02  addli r27, r27, 256
0004a4  ca820402  vloads.mz vr5{mr1}, 0(r9)
0004a8  4a830102  vloads.mz vr6{mr1}, 0(r3)
0004ac  9f040e01  addli r9, r28, 128
0004b0  9f018e01  addli r3, r28, 192
0004b4  c2830402  vload.mz vr7{mr1}, 0(r9)
0004b8  c2840102  vload.mz vr9{mr1}, 0(r3)
0004bc  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
0004c0  96c46402  vadd.hf.mz.rn vr9{mr1}, vr9, vr6
0004c4  92320002  vadd.s.mz vr5{mr1}, zero, vr0
0004c8  12330002  vadd.s.mz vr6{mr1}, zero, vr0
0004cc  06b40300  vfp162float_l.rn vr8, vr7
0004d0  86f30300  vfp162float_h.rn vr7, vr7
0004d4  86120400  vfloat2fp16_l.rn vr5, vr8
0004d8  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
0004dc  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
0004e0  06b40400  vfp162float_l.rn vr8, vr9
0004e4  86f40400  vfp162float_h.rn vr9, vr9
0004e8  06130400  vfloat2fp16_l.rn vr6, vr8
0004ec  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
0004f0  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0004f4  86d20300  vfloat2fp16_h.rn vr5, vr7
0004f8  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0004fc  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
000500  06d30400  vfloat2fp16_h.rn vr6, vr9
000504  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
000508  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
00050c  46805402  vstore.mz vr5{mr1}, 0(r9)
000510  46806102  vstore.mz vr6{mr1}, 0(r3)
000514  bffbc6fe  blt.s r13, r12, -260
000518  5bc9ffff  j -440
00051c  9f0c0000  addli r25, zero, 0
000520  1f0d0000  addli r26, zero, 0
000524  00a00000  mfence { lm }
000528  3f8787fe  blt.s r15, r8, -576
00052c  8f015d18  div.f.rn r3, r26, r5
000530  0f815c18  div.f.rn r2, r25, r5
000534  e3043f00  loadli.w r9,  24(r30)
000538  9f050000  addli r11, zero, 0
00053c  0be53120  mul.f.rn r10, r3, r3
000540  8be10158  neg.f r3, r3
000544  0b61a118  sub.f.rn r2, r2, r10
000548  1f058fd7  addli r10, r30, -5184
00054c  0b619110  add.f.rn r2, r2, r9
000550  ab04803f  lui r9, 260096
000554  0f010108  sqrt.f.rn r2, r2
000558  0f812418  div.f.rn r2, r9, r2
00055c  c2000502  vload.mz vr1{mr1}, 0(r10)
000560  1f864500  addli r12, r11, 32
000564  06b10000  vfp162float_l.rn vr2, vr1
000568  86f00000  vfp162float_h.rn vr1, vr1
00056c  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
000570  92911102  vadd.f.mz.rn vr3{mr1}, r3, vr1
000574  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000578  12321002  vadd.s.mz vr4{mr1}, zero, vr1
00057c  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
000580  8a113102  vmul.f.mz.rn vr3{mr1}, r2, vr3
000584  06120100  vfloat2fp16_l.rn vr4, vr2
000588  06d20100  vfloat2fp16_h.rn vr4, vr3
00058c  46004502  vstore.mz vr4{mr1}, 0(r10)
000590  4be5c7fe  ble.s r15, r12, -680
000594  1f068500  addli r12, r10, 64
000598  9f858500  addli r11, r11, 64
00059c  1f050501  addli r10, r10, 128
0005a0  42010602  vload.mz vr2{mr1}, 0(r12)
0005a4  86310100  vfp162float_l.rn vr3, vr2
0005a8  06710100  vfp162float_h.rn vr2, vr2
0005ac  92913102  vadd.f.mz.rn vr3{mr1}, r3, vr3
0005b0  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
0005b4  8a113102  vmul.f.mz.rn vr3{mr1}, r2, vr3
0005b8  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
0005bc  86900100  vfloat2fp16_l.rn vr1, vr3
0005c0  86500100  vfloat2fp16_h.rn vr1, vr2
0005c4  46001602  vstore.mz vr1{mr1}, 0(r12)
0005c8  3fdef5fe  blt.s r11, r15, -108
0005cc  dba3ffff  j -740
0005d0  e3002f00  loadli.w r1,  16(r30)
0005d4  1f010010  addli r2, zero, 2048
0005d8  bbdc2004  bneq r1, r2, 2868
0005dc  803d0002  core_id r27
0005e0  3bf00d00  bneq r27, zero, 28
0005e4  9f000040  addli r1, zero, 8192
0005e8  2b0100f0  lui r2, 983040
0005ec  97902000  or r1, r1, r2
0005f0  2bd10000  lui r2, 13
0005f4  1f010108  addli r2, r2, 1024
0005f8  ff002200  l_gm2sm r1, r2, 0(r[5:6])
0005fc  abf00000  lui r1, 15
000600  00200300  mfence { sm, gm }
000604  1b821d00  andi r4, r27, 1
000608  9f020006  addli r5, zero, 768
00060c  9b90f0ff  ori r1, r1, 4095
000610  80a10004  csr_set csr3, r1
000614  9f000006  addli r1, zero, 768
000618  00d00100  sync_group
00061c  37200200  beq r4, zero, 8
000620  9f02000a  addli r5, zero, 1280
000624  63411f00  loadli.w r2,  12(r30)
000628  9f110000  addli r3, zero, 1
00062c  3f79310c  blt.s r2, r3, 6748
000630  00510102  load_param_i r2, 2
000634  8b101220  mul.s r1, r4, r1
000638  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00063c  2bda0000  lui r20, 13
000640  abfc0000  lui r25, 15
000644  2bfe0000  lui r28, 15
000648  9f030000  addli r7, zero, 0
00064c  1bc71d00  srli r14, r27, 1
000650  9bb72200  slli r15, r5, 2
000654  9f088fd7  addli r17, r30, -5184
000658  9f0a0005  addli r21, zero, 640
00065c  1f0b0002  addli r22, zero, 256
000660  9f0b0001  addli r23, zero, 128
000664  1f0c4000  addli r24, zero, 32
000668  1f080003  addli r16, zero, 384
00066c  67071fd6  storeli.w r1, -5264(r30)
000670  abf0ffff  lui r1, 1048575
000674  9b441100  srli r9, r2, 1
000678  1f010fd6  addli r2, r30, -5376
00067c  1f0a0a08  addli r20, r20, 1024
000680  9f8c0c08  addli r25, r25, 1024
000684  1f0e0e0c  addli r28, r28, 1536
000688  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
00068c  9b9000f8  ori r1, r1, 3968
000690  2bf10000  lui r2, 15
000694  670c1fd4  storeli.w r1, -5440(r30)
000698  9f008000  addli r1, zero, 64
00069c  1b1df1ff  ori r26, r2, 4095
0006a0  db030000  j 28
0006a4  00a00300  mfence { lm, sm, gm }
0006a8  80210d04  csr_set csr3, r26
0006ac  00d00100  sync_group
0006b0  8b939310  add.s r7, r7, r9
0006b4  3fa0d300  blt.s r7, r13, 8
0006b8  5bb60200  j 5552
0006bc  0b91e310  add.s r2, r7, r14
0006c0  cb9f26fe  ble.s r13, r2, -28
0006c4  e3011f00  loadli.w r3,  8(r30)
0006c8  1f230000  addli r6, zero, 2
0006cc  0b113110  add.s r2, r2, r3
0006d0  e301efd6  loadli.w r3,  -5264(r30)
0006d4  1b31b100  slli r2, r2, 11
0006d8  17113100  or r2, r2, r3
0006dc  33110128  sext_int2long r[3:4], r2
0006e0  17396102  sll.d r[19:20], r[3:4], r6
0006e4  9f01ffd6  addli r3, r30, -5256
0006e8  2b0100f0  lui r2, 983040
0006ec  6bd50100  load.d r[11:12], 0(r3)
0006f0  17912700  or r2, r15, r2
0006f4  0b252511  add.ul r[11:12], r[11:12], r[19:20]
0006f8  7f211501  l_gm2lm r2, r17, 0(r[11:12])
0006fc  1f010000  addli r2, zero, 0
000700  00a00200  mfence { lm, gm }
000704  3b460200  bneq r4, zero, 400
000708  1f030fd6  addli r6, r30, -5376
00070c  e3018fd5  loadli.w r3,  -5440(r30)
000710  c2110302  vload_mask16.mz vr3{mr1}, 0(r6)
000714  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000718  12313002  vadd.s.mz vr2{mr1}, zero, vr3
00071c  12323002  vadd.s.mz vr4{mr1}, zero, vr3
000720  0b144111  add.s r8, r2, r20
000724  0b932810  add.s r6, r17, r2
000728  9f810101  addli r3, r3, 128
00072c  1f010104  addli r2, r2, 512
000730  1f058400  addli r10, r8, 64
000734  9f058401  addli r11, r8, 192
000738  4a100402  vloads_mask16.mz vr0{mr1}, 0(r8)
00073c  1f068301  addli r12, r6, 192
000740  42140302  vload_mask16.mz vr8{mr1}, 0(r6)
000744  ca120502  vloads_mask16.mz vr5{mr1}, 0(r10)
000748  1f050401  addli r10, r8, 128
00074c  ca930502  vloads_mask16.mz vr7{mr1}, 0(r11)
000750  9f050301  addli r11, r6, 128
000754  c2150602  vload_mask16.mz vr11{mr1}, 0(r12)
000758  4a130502  vloads_mask16.mz vr6{mr1}, 0(r10)
00075c  42950502  vload_mask16.mz vr10{mr1}, 0(r11)
000760  1f058300  addli r10, r6, 64
000764  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
000768  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
00076c  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
000770  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
000774  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
000778  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
00077c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000780  46105502  vstore_mask16.mz vr5{mr1}, 0(r10)
000784  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
000788  1f050fd7  addli r10, r30, -5248
00078c  1f068402  addli r12, r8, 320
000790  16146202  vadd.f.mz.rn vr8{mr1}, vr4, vr6
000794  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
000798  46906502  vstore_mask16.mz vr6{mr1}, 0(r11)
00079c  9f050402  addli r11, r8, 256
0007a0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0007a4  4a130602  vloads_mask16.mz vr6{mr1}, 0(r12)
0007a8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0007ac  96117402  vadd.f.mz.rn vr3{mr1}, vr8, vr7
0007b0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0007b4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0007b8  46103502  vstore_mask16.mz vr3{mr1}, 0(r10)
0007bc  ca910502  vloads_mask16.mz vr3{mr1}, 0(r11)
0007c0  9f050403  addli r11, r8, 384
0007c4  1f048403  addli r8, r8, 448
0007c8  1f050302  addli r10, r6, 256
0007cc  ca140402  vloads_mask16.mz vr9{mr1}, 0(r8)
0007d0  1f048302  addli r8, r6, 320
0007d4  c2130502  vload_mask16.mz vr7{mr1}, 0(r10)
0007d8  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
0007dc  9f050303  addli r11, r6, 384
0007e0  1f038303  addli r6, r6, 448
0007e4  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
0007e8  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
0007ec  c2950502  vload_mask16.mz vr11{mr1}, 0(r11)
0007f0  96913302  vadd.f.mz.rn vr3{mr1}, vr7, vr3
0007f4  96136502  vadd.f.mz.rn vr7{mr1}, vr10, vr6
0007f8  96129002  vadd.f.mz.rn vr5{mr1}, vr0, vr9
0007fc  16938502  vadd.f.mz.rn vr6{mr1}, vr11, vr8
000800  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
000804  1f040fd7  addli r8, r30, -5248
000808  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
00080c  26913102  vmac.f.mz.rn vr2{mr1}, vr3, vr3
000810  46103502  vstore_mask16.mz vr3{mr1}, 0(r10)
000814  42120402  vload_mask16.mz vr4{mr1}, 0(r8)
000818  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00081c  13845105  setlt.u r8, r3, r21
000820  46906502  vstore_mask16.mz vr6{mr1}, 0(r11)
000824  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
000828  96117002  vadd.f.mz.rn vr3{mr1}, vr0, vr7
00082c  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
000830  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000834  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
000838  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00083c  bb1b04fe  bneq r8, zero, -284
000840  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
000844  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000848  6a710bc0  vsrl.p vr2, r22, vr0
00084c  ea711bc0  vsrl.p vr3, r22, vr1
000850  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000854  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000858  6af10bc0  vsrl.p vr2, r23, vr0
00085c  eaf11bc0  vsrl.p vr3, r23, vr1
000860  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000864  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000868  6af100c0  vsrl.p vr2, r1, vr0
00086c  eaf110c0  vsrl.p vr3, r1, vr1
000870  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000874  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000878  6a710cc0  vsrl.p vr2, r24, vr0
00087c  ea711cc0  vsrl.p vr3, r24, vr1
000880  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000884  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000888  fa110040  vextracti.f r3, 0(vr0)
00088c  7a910040  vextracti.f r2, 0(vr1)
000890  db660000  j 820
000894  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000898  abf1ffff  lui r3, 1048575
00089c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0008a0  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0008a4  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0008a8  9b9101f8  ori r3, r3, 3968
0008ac  0b142a10  add.s r8, r20, r2
0008b0  0b932810  add.s r6, r17, r2
0008b4  9f810101  addli r3, r3, 128
0008b8  1f010104  addli r2, r2, 512
0008bc  9f050430  addli r11, r8, 6144
0008c0  1f068430  addli r12, r8, 6208
0008c4  1f050318  addli r10, r6, 3072
0008c8  9f068319  addli r13, r6, 3264
0008cc  ca920502  vloads_mask16.mz vr5{mr1}, 0(r11)
0008d0  9f050431  addli r11, r8, 6272
0008d4  4a130602  vloads_mask16.mz vr6{mr1}, 0(r12)
0008d8  1f068431  addli r12, r8, 6336
0008dc  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
0008e0  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
0008e4  ca930502  vloads_mask16.mz vr7{mr1}, 0(r11)
0008e8  4a140602  vloads_mask16.mz vr8{mr1}, 0(r12)
0008ec  9f058318  addli r11, r6, 3136
0008f0  1f060319  addli r12, r6, 3200
0008f4  42950502  vload_mask16.mz vr10{mr1}, 0(r11)
0008f8  c2150602  vload_mask16.mz vr11{mr1}, 0(r12)
0008fc  96945402  vadd.f.mz.rn vr9{mr1}, vr9, vr5
000900  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
000904  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
000908  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
00090c  46109502  vstore_mask16.mz vr9{mr1}, 0(r10)
000910  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
000914  1f050fd7  addli r10, r30, -5248
000918  9f050432  addli r11, r8, 6400
00091c  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
000920  96136202  vadd.f.mz.rn vr7{mr1}, vr4, vr6
000924  16929102  vadd.f.mz.rn vr4{mr1}, vr3, vr9
000928  46106602  vstore_mask16.mz vr6{mr1}, 0(r12)
00092c  1f068432  addli r12, r8, 6464
000930  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000934  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
000938  4a130602  vloads_mask16.mz vr6{mr1}, 0(r12)
00093c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000940  96910302  vadd.f.mz.rn vr3{mr1}, vr7, vr0
000944  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
000948  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00094c  46103502  vstore_mask16.mz vr3{mr1}, 0(r10)
000950  ca910502  vloads_mask16.mz vr3{mr1}, 0(r11)
000954  9f050433  addli r11, r8, 6528
000958  1f048433  addli r8, r8, 6592
00095c  1f05031a  addli r10, r6, 3328
000960  ca140402  vloads_mask16.mz vr9{mr1}, 0(r8)
000964  1f04831a  addli r8, r6, 3392
000968  c2130502  vload_mask16.mz vr7{mr1}, 0(r10)
00096c  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
000970  9f05031b  addli r11, r6, 3456
000974  1f03831b  addli r6, r6, 3520
000978  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
00097c  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
000980  c2950502  vload_mask16.mz vr11{mr1}, 0(r11)
000984  96913302  vadd.f.mz.rn vr3{mr1}, vr7, vr3
000988  96136502  vadd.f.mz.rn vr7{mr1}, vr10, vr6
00098c  96129002  vadd.f.mz.rn vr5{mr1}, vr0, vr9
000990  16938502  vadd.f.mz.rn vr6{mr1}, vr11, vr8
000994  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
000998  1f040fd7  addli r8, r30, -5248
00099c  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
0009a0  26913102  vmac.f.mz.rn vr2{mr1}, vr3, vr3
0009a4  46103502  vstore_mask16.mz vr3{mr1}, 0(r10)
0009a8  42120402  vload_mask16.mz vr4{mr1}, 0(r8)
0009ac  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0009b0  13840105  setlt.u r8, r3, r16
0009b4  46906502  vstore_mask16.mz vr6{mr1}, 0(r11)
0009b8  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
0009bc  96117002  vadd.f.mz.rn vr3{mr1}, vr0, vr7
0009c0  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0009c4  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0009c8  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
0009cc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0009d0  3b7b04fe  bneq r8, zero, -292
0009d4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0009d8  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0009dc  2bf1ffff  lui r2, 1048575
0009e0  1f040000  addli r8, zero, 0
0009e4  1b1101f8  ori r2, r2, 3968
0009e8  ea711bc0  vsrl.p vr3, r22, vr1
0009ec  6a710bc0  vsrl.p vr2, r22, vr0
0009f0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009f4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009f8  eaf11bc0  vsrl.p vr3, r23, vr1
0009fc  6af10bc0  vsrl.p vr2, r23, vr0
000a00  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000a04  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000a08  eaf110c0  vsrl.p vr3, r1, vr1
000a0c  6af100c0  vsrl.p vr2, r1, vr0
000a10  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000a14  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000a18  ea711cc0  vsrl.p vr3, r24, vr1
000a1c  6a710cc0  vsrl.p vr2, r24, vr0
000a20  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000a24  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000a28  7a930040  vextracti.f r6, 0(vr1)
000a2c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000a30  fa150040  vextracti.f r11, 0(vr0)
000a34  12311002  vadd.s.mz vr2{mr1}, zero, vr1
000a38  12321002  vadd.s.mz vr4{mr1}, zero, vr1
000a3c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
000a40  0b158a10  add.s r10, r20, r8
000a44  8b918810  add.s r3, r17, r8
000a48  1f010101  addli r2, r2, 128
000a4c  1f040404  addli r8, r8, 512
000a50  1f060518  addli r12, r10, 3072
000a54  9f068518  addli r13, r10, 3136
000a58  9f8d8101  addli r27, r3, 192
000a5c  42940102  vload_mask16.mz vr8{mr1}, 0(r3)
000a60  4a100602  vloads_mask16.mz vr0{mr1}, 0(r12)
000a64  1f060519  addli r12, r10, 3200
000a68  ca920602  vloads_mask16.mz vr5{mr1}, 0(r13)
000a6c  9f068519  addli r13, r10, 3264
000a70  c2950d02  vload_mask16.mz vr11{mr1}, 0(r27)
000a74  4a130602  vloads_mask16.mz vr6{mr1}, 0(r12)
000a78  ca930602  vloads_mask16.mz vr7{mr1}, 0(r13)
000a7c  9f860101  addli r13, r3, 128
000a80  1f868100  addli r12, r3, 64
000a84  42950602  vload_mask16.mz vr10{mr1}, 0(r13)
000a88  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
000a8c  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
000a90  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
000a94  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
000a98  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
000a9c  46105602  vstore_mask16.mz vr5{mr1}, 0(r12)
000aa0  1f060fd7  addli r12, r30, -5248
000aa4  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
000aa8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000aac  16146202  vadd.f.mz.rn vr8{mr1}, vr4, vr6
000ab0  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
000ab4  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
000ab8  46907d02  vstore_mask16.mz vr7{mr1}, 0(r27)
000abc  9f06051a  addli r13, r10, 3328
000ac0  9f0d851a  addli r27, r10, 3392
000ac4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000ac8  4a930d02  vloads_mask16.mz vr6{mr1}, 0(r27)
000acc  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000ad0  96117402  vadd.f.mz.rn vr3{mr1}, vr8, vr7
000ad4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000ad8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000adc  46103602  vstore_mask16.mz vr3{mr1}, 0(r12)
000ae0  ca910602  vloads_mask16.mz vr3{mr1}, 0(r13)
000ae4  9f06051b  addli r13, r10, 3456
000ae8  1f05851b  addli r10, r10, 3520
000aec  1f860102  addli r12, r3, 256
000af0  ca140502  vloads_mask16.mz vr9{mr1}, 0(r10)
000af4  1f858102  addli r10, r3, 320
000af8  c2130602  vload_mask16.mz vr7{mr1}, 0(r12)
000afc  4a940602  vloads_mask16.mz vr8{mr1}, 0(r13)
000b00  9f860103  addli r13, r3, 384
000b04  9f818103  addli r3, r3, 448
000b08  42150502  vload_mask16.mz vr10{mr1}, 0(r10)
000b0c  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000b10  c2950602  vload_mask16.mz vr11{mr1}, 0(r13)
000b14  96913302  vadd.f.mz.rn vr3{mr1}, vr7, vr3
000b18  96136502  vadd.f.mz.rn vr7{mr1}, vr10, vr6
000b1c  96129002  vadd.f.mz.rn vr5{mr1}, vr0, vr9
000b20  16938502  vadd.f.mz.rn vr6{mr1}, vr11, vr8
000b24  46107502  vstore_mask16.mz vr7{mr1}, 0(r10)
000b28  1f050fd7  addli r10, r30, -5248
000b2c  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
000b30  26913102  vmac.f.mz.rn vr2{mr1}, vr3, vr3
000b34  46103602  vstore_mask16.mz vr3{mr1}, 0(r12)
000b38  42120502  vload_mask16.mz vr4{mr1}, 0(r10)
000b3c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000b40  13055105  setlt.u r10, r2, r21
000b44  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
000b48  46905102  vstore_mask16.mz vr5{mr1}, 0(r3)
000b4c  96117002  vadd.f.mz.rn vr3{mr1}, vr0, vr7
000b50  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
000b54  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000b58  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
000b5c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000b60  bb0b05fe  bneq r10, zero, -288
000b64  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
000b68  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000b6c  e3461f00  loadli.w r13,  12(r30)
000b70  803d0002  core_id r27
000b74  6a710bc0  vsrl.p vr2, r22, vr0
000b78  ea711bc0  vsrl.p vr3, r22, vr1
000b7c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000b80  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000b84  6af10bc0  vsrl.p vr2, r23, vr0
000b88  eaf11bc0  vsrl.p vr3, r23, vr1
000b8c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000b90  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000b94  6af100c0  vsrl.p vr2, r1, vr0
000b98  eaf110c0  vsrl.p vr3, r1, vr1
000b9c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000ba0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000ba4  6a710cc0  vsrl.p vr2, r24, vr0
000ba8  ea711cc0  vsrl.p vr3, r24, vr1
000bac  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000bb0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000bb4  7a110040  vextracti.f r2, 0(vr0)
000bb8  7a940040  vextracti.f r8, 0(vr1)
000bbc  8be12510  add.f.rn r3, r11, r2
000bc0  0b618310  add.f.rn r2, r6, r8
000bc4  0b839330  div.u r6, r7, r9
000bc8  1b336300  slli r6, r6, 6
000bcc  1b030304  andi r6, r6, 64
000bd0  1713b301  or r6, r6, r27
000bd4  1b342300  slli r8, r6, 2
000bd8  1b03e307  andi r6, r6, 126
000bdc  0b159411  add.s r10, r8, r25
000be0  1b332300  slli r6, r6, 2
000be4  73603500  stores.w r3, 0(r10)
000be8  8b11c411  add.s r3, r8, r28
000bec  1b144400  ori r8, r8, 4
000bf0  73e02100  stores.w r2, 0(r3)
000bf4  0b119411  add.s r2, r8, r25
000bf8  8b119311  add.s r3, r6, r25
000bfc  0b14c411  add.s r8, r8, r28
000c00  0b13c311  add.s r6, r6, r28
000c04  00a00300  mfence { lm, sm, gm }
000c08  80210d04  csr_set csr3, r26
000c0c  00d00100  sync_group
000c10  6f410100  loads.w r2, 0(r2)
000c14  efc10100  loads.w r3, 0(r3)
000c18  6f440400  loads.w r8, 0(r8)
000c1c  6f430300  loads.w r6, 0(r6)
000c20  0b613110  add.f.rn r2, r2, r3
000c24  8b616410  add.f.rn r3, r8, r6
000c28  2b04003a  lui r8, 237568
000c2c  0b638120  mul.f.rn r6, r2, r8
000c30  0be18120  mul.f.rn r2, r3, r8
000c34  1f040000  addli r8, zero, 0
000c38  8b616320  mul.f.rn r3, r6, r6
000c3c  0b613118  sub.f.rn r2, r2, r3
000c40  e3013f00  loadli.w r3,  24(r30)
000c44  0b613110  add.f.rn r2, r2, r3
000c48  ab01803f  lui r3, 260096
000c4c  0f010108  sqrt.f.rn r2, r2
000c50  0f812118  div.f.rn r2, r3, r2
000c54  8b610358  neg.f r3, r6
000c58  1f038fd7  addli r6, r30, -5184
000c5c  1f058300  addli r10, r6, 64
000c60  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
000c64  9f054400  addli r11, r8, 32
000c68  c2100502  vload_mask16.mz vr1{mr1}, 0(r10)
000c6c  9385b206  setle.u r11, r5, r11
000c70  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
000c74  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
000c78  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
000c7c  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
000c80  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
000c84  46101502  vstore_mask16.mz vr1{mr1}, 0(r10)
000c88  bbf00500  bneq r11, zero, 60
000c8c  1f050301  addli r10, r6, 128
000c90  9f058301  addli r11, r6, 192
000c94  1f048400  addli r8, r8, 64
000c98  1f030302  addli r6, r6, 256
000c9c  42100502  vload_mask16.mz vr0{mr1}, 0(r10)
000ca0  c2900502  vload_mask16.mz vr1{mr1}, 0(r11)
000ca4  13065404  setlt.u r12, r8, r5
000ca8  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
000cac  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
000cb0  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
000cb4  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
000cb8  46100502  vstore_mask16.mz vr0{mr1}, 0(r10)
000cbc  46901502  vstore_mask16.mz vr1{mr1}, 0(r11)
000cc0  3b7e06fe  bneq r12, zero, -100
000cc4  6b550f00  load.d r[11:12], 0(r30)
000cc8  2b0100f0  lui r2, 983040
000ccc  00a00000  mfence { lm }
000cd0  17912700  or r2, r15, r2
000cd4  0b252511  add.ul r[11:12], r[11:12], r[19:20]
000cd8  7f311501  s_lm2gm r2, r17, 0(r[11:12])
000cdc  00a00200  mfence { lm, gm }
000ce0  5b3affff  j -1584
000ce4  80300002  core_id r1
000ce8  1f210000  addli r2, zero, 2
000cec  37ce2006  beq r1, r2, 3984
000cf0  1f110000  addli r2, zero, 1
000cf4  37af2002  beq r1, r2, 1992
000cf8  bb8e0006  bneq r1, zero, 4000
000cfc  63012f00  loadli.w r2,  16(r30)
000d00  ab0100f0  lui r3, 983040
000d04  1b312100  slli r2, r2, 2
000d08  17113100  or r2, r2, r3
000d0c  aba10000  lui r3, 10
000d10  9f810108  addli r3, r3, 1024
000d14  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000d18  5bf00100  j 3968
000d1c  63012f00  loadli.w r2,  16(r30)
000d20  ab0100f0  lui r3, 983040
000d24  1b311100  slli r2, r2, 1
000d28  17113100  or r2, r2, r3
000d2c  ab110000  lui r3, 1
000d30  9f810100  addli r3, r3, 0
000d34  7f013300  l_gm2sm r2, r3, 0(r[7:8])
000d38  5b040000  j 32
000d3c  63012f00  loadli.w r2,  16(r30)
000d40  ab0100f0  lui r3, 983040
000d44  1b311100  slli r2, r2, 1
000d48  17113100  or r2, r2, r3
000d4c  ab210000  lui r3, 2
000d50  9f810100  addli r3, r3, 0
000d54  7f013400  l_gm2sm r2, r3, 0(r[9:10])
000d58  2bf10000  lui r2, 15
000d5c  e3411f00  loadli.w r3,  12(r30)
000d60  00200300  mfence { sm, gm }
000d64  1b11f1ff  ori r2, r2, 4095
000d68  80210104  csr_set csr3, r2
000d6c  00d00100  sync_group
000d70  4bec1108  ble.s r3, r1, 4888
000d74  63012f00  loadli.w r2,  16(r30)
000d78  e3412f00  loadli.w r3,  20(r30)
000d7c  ab0b0000  lui r23, 0
000d80  1f140000  addli r8, zero, 1
000d84  1f068fd7  addli r12, r30, -5184
000d88  9f080002  addli r17, zero, 256
000d8c  9f090001  addli r19, zero, 128
000d90  1f0a8000  addli r20, zero, 64
000d94  9f0a4000  addli r21, zero, 32
000d98  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000d9c  9f8b0b00  addli r23, r23, 0
000da0  0b133110  add.s r6, r2, r3
000da4  1b321100  slli r4, r2, 1
000da8  b3020108  fix2float.rn r5, r2
000dac  1f71f3ff  addli r2, r6, -1
000db0  1bb31100  slli r6, r3, 1
000db4  8b133130  div.s r7, r2, r3
000db8  2bf1ffff  lui r2, 1048575
000dbc  1b18f1ff  ori r16, r2, 4095
000dc0  5b070000  j 56
000dc4  00a00000  mfence { lm }
000dc8  eb540f00  load.d r[10:11], 0(r30)
000dcc  2b0100f0  lui r2, 983040
000dd0  1f068fd7  addli r12, r30, -5184
000dd4  80510102  load_param_i r3, 2
000dd8  17112200  or r2, r4, r2
000ddc  8b901110  add.s r1, r3, r1
000de0  0ba59411  add.ul r[11:12], r[10:11], r[26:27]
000de4  7f31c500  s_lm2gm r2, r12, 0(r[11:12])
000de8  00a00200  mfence { lm, gm }
000dec  63411f00  loadli.w r2,  12(r30)
000df0  3fa02000  blt.s r1, r2, 8
000df4  db520200  j 4756
000df8  63011f00  loadli.w r2,  8(r30)
000dfc  0b912010  add.s r2, r1, r2
000e00  0b11f120  mul.s r2, r2, r15
000e04  33110128  sext_int2long r[3:4], r2
000e08  973c8102  sll.d r[26:27], r[3:4], r8
000e0c  9f01ffd6  addli r3, r30, -5256
000e10  2b0100f0  lui r2, 983040
000e14  ebd40100  load.d r[10:11], 0(r3)
000e18  17112200  or r2, r4, r2
000e1c  0ba59411  add.ul r[11:12], r[10:11], r[26:27]
000e20  7f21c500  l_gm2lm r2, r12, 0(r[11:12])
000e24  00a00200  mfence { lm, gm }
000e28  3fc78300  blt.s r7, r8, 464
000e2c  1f0e0000  addli r28, zero, 0
000e30  9f0d0000  addli r27, zero, 0
000e34  9f050000  addli r11, zero, 0
000e38  db0c0000  j 100
000e3c  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
000e40  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000e44  9f950500  addli r11, r11, 1
000e48  6af138c0  vsrl.p vr2, r17, vr3
000e4c  6af218c0  vsrl.p vr4, r17, vr1
000e50  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
000e54  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000e58  eaf129c0  vsrl.p vr3, r19, vr2
000e5c  6af219c0  vsrl.p vr4, r19, vr1
000e60  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000e64  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000e68  ea712ac0  vsrl.p vr3, r20, vr2
000e6c  6a721ac0  vsrl.p vr4, r20, vr1
000e70  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000e74  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000e78  eaf12ac0  vsrl.p vr3, r21, vr2
000e7c  6af21ac0  vsrl.p vr4, r21, vr1
000e80  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000e84  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000e88  7a110140  vextracti.f r2, 0(vr2)
000e8c  fa910040  vextracti.f r3, 0(vr1)
000e90  0b6e2e10  add.f.rn r28, r28, r2
000e94  8bed3d10  add.f.rn r27, r27, r3
000e98  b7a57500  beq r11, r7, 360
000e9c  1f810500  addli r2, r11, 0
000ea0  37301701  beq r14, r17, 12
000ea4  17a10501  xor r2, r11, r16
000ea8  0b912310  add.s r2, r7, r2
000eac  8b11e120  mul.s r3, r2, r14
000eb0  12320002  vadd.s.mz vr4{mr1}, zero, vr0
000eb4  92310002  vadd.s.mz vr3{mr1}, zero, vr0
000eb8  12310002  vadd.s.mz vr2{mr1}, zero, vr0
000ebc  92300002  vadd.s.mz vr1{mr1}, zero, vr0
000ec0  8b913718  sub.s r3, r15, r3
000ec4  0b96e140  min.s r12, r3, r14
000ec8  bf5d86fe  blt.s r12, r8, -140
000ecc  92300002  vadd.s.mz vr1{mr1}, zero, vr0
000ed0  12310002  vadd.s.mz vr2{mr1}, zero, vr0
000ed4  92310002  vadd.s.mz vr3{mr1}, zero, vr0
000ed8  12320002  vadd.s.mz vr4{mr1}, zero, vr0
000edc  9f060000  addli r13, zero, 0
000ee0  0b152320  mul.s r10, r6, r2
000ee4  1f0b8fd7  addli r22, r30, -5184
000ee8  1f890b00  addli r18, r23, 0
000eec  8b11a910  add.s r3, r18, r10
000ef0  9f848600  addli r9, r13, 64
000ef4  ca820102  vloads.mz vr5{mr1}, 0(r3)
000ef8  1f818100  addli r2, r3, 64
000efc  4a030102  vloads.mz vr6{mr1}, 0(r2)
000f00  0b11ab10  add.s r2, r22, r10
000f04  c2030102  vload.mz vr7{mr1}, 0(r2)
000f08  1f0c8100  addli r24, r2, 64
000f0c  42040c02  vload.mz vr8{mr1}, 0(r24)
000f10  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
000f14  92320002  vadd.s.mz vr5{mr1}, zero, vr0
000f18  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
000f1c  06b40300  vfp162float_l.rn vr8, vr7
000f20  86f30300  vfp162float_h.rn vr7, vr7
000f24  86340300  vfp162float_l.rn vr9, vr6
000f28  06730300  vfp162float_h.rn vr6, vr6
000f2c  86120400  vfloat2fp16_l.rn vr5, vr8
000f30  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
000f34  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
000f38  12340002  vadd.s.mz vr8{mr1}, zero, vr0
000f3c  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
000f40  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
000f44  06940400  vfloat2fp16_l.rn vr8, vr9
000f48  86d20300  vfloat2fp16_h.rn vr5, vr7
000f4c  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
000f50  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
000f54  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
000f58  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000f5c  06540300  vfloat2fp16_h.rn vr8, vr6
000f60  46005102  vstore.mz vr5{mr1}, 0(r2)
000f64  46008c02  vstore.mz vr8{mr1}, 0(r24)
000f68  4b5b96fe  ble.s r12, r9, -300
000f6c  9f840101  addli r9, r3, 128
000f70  9f818101  addli r3, r3, 192
000f74  9f860601  addli r13, r13, 128
000f78  1f090902  addli r18, r18, 256
000f7c  1f0b0b02  addli r22, r22, 256
000f80  ca820402  vloads.mz vr5{mr1}, 0(r9)
000f84  4a830102  vloads.mz vr6{mr1}, 0(r3)
000f88  9f040101  addli r9, r2, 128
000f8c  1f018101  addli r2, r2, 192
000f90  c2830402  vload.mz vr7{mr1}, 0(r9)
000f94  c2040102  vload.mz vr9{mr1}, 0(r2)
000f98  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
000f9c  96c46402  vadd.hf.mz.rn vr9{mr1}, vr9, vr6
000fa0  92320002  vadd.s.mz vr5{mr1}, zero, vr0
000fa4  12330002  vadd.s.mz vr6{mr1}, zero, vr0
000fa8  06b40300  vfp162float_l.rn vr8, vr7
000fac  86f30300  vfp162float_h.rn vr7, vr7
000fb0  86120400  vfloat2fp16_l.rn vr5, vr8
000fb4  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
000fb8  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
000fbc  06b40400  vfp162float_l.rn vr8, vr9
000fc0  86f40400  vfp162float_h.rn vr9, vr9
000fc4  06130400  vfloat2fp16_l.rn vr6, vr8
000fc8  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
000fcc  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
000fd0  86d20300  vfloat2fp16_h.rn vr5, vr7
000fd4  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
000fd8  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
000fdc  06d30400  vfloat2fp16_h.rn vr6, vr9
000fe0  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
000fe4  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
000fe8  46805402  vstore.mz vr5{mr1}, 0(r9)
000fec  46006102  vstore.mz vr6{mr1}, 0(r2)
000ff0  bffbc6fe  blt.s r13, r12, -260
000ff4  5bc9ffff  j -440
000ff8  9f0d0000  addli r27, zero, 0
000ffc  1f0e0000  addli r28, zero, 0
001000  00a00000  mfence { lm }
001004  3f8787fe  blt.s r15, r8, -576
001008  0f015e18  div.f.rn r2, r28, r5
00100c  0f855d18  div.f.rn r10, r27, r5
001010  e3043f00  loadli.w r9,  24(r30)
001014  ab160000  lui r13, 1
001018  2b290000  lui r18, 2
00101c  9f010000  addli r3, zero, 0
001020  1f068fd7  addli r12, r30, -5184
001024  9f860600  addli r13, r13, 0
001028  1f090900  addli r18, r18, 0
00102c  8b652120  mul.f.rn r11, r2, r2
001030  0b65b518  sub.f.rn r10, r10, r11
001034  8b650158  neg.f r11, r2
001038  0b659510  add.f.rn r10, r10, r9
00103c  ab04803f  lui r9, 260096
001040  0f050508  sqrt.f.rn r10, r10
001044  0f85a418  div.f.rn r10, r9, r10
001048  c2000602  vload.mz vr1{mr1}, 0(r12)
00104c  4a810602  vloads.mz vr2{mr1}, 0(r13)
001050  ca010902  vloads.mz vr3{mr1}, 0(r18)
001054  1f814100  addli r2, r3, 32
001058  06b20000  vfp162float_l.rn vr4, vr1
00105c  86f00000  vfp162float_h.rn vr1, vr1
001060  12924502  vadd.f.mz.rn vr4{mr1}, r11, vr4
001064  92901502  vadd.f.mz.rn vr1{mr1}, r11, vr1
001068  86320100  vfp162float_l.rn vr5, vr2
00106c  06b30100  vfp162float_l.rn vr6, vr3
001070  06710100  vfp162float_h.rn vr2, vr2
001074  86f10100  vfp162float_h.rn vr3, vr3
001078  8a131502  vmul.f.mz.rn vr7{mr1}, r10, vr1
00107c  0a124502  vmul.f.mz.rn vr4{mr1}, r10, vr4
001080  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001084  a6912302  vmac.f.mz.rn vr3{mr1}, vr7, vr2
001088  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
00108c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001090  06110300  vfloat2fp16_l.rn vr2, vr6
001094  06d10100  vfloat2fp16_h.rn vr2, vr3
001098  46002602  vstore.mz vr2{mr1}, 0(r12)
00109c  cba427fe  ble.s r15, r2, -728
0010a0  1f818600  addli r2, r13, 64
0010a4  1f0b8600  addli r22, r12, 64
0010a8  9f818100  addli r3, r3, 64
0010ac  9f860601  addli r13, r13, 128
0010b0  1f060601  addli r12, r12, 128
0010b4  4a010102  vloads.mz vr2{mr1}, 0(r2)
0010b8  1f018900  addli r2, r18, 64
0010bc  c2010b02  vload.mz vr3{mr1}, 0(r22)
0010c0  1f090901  addli r18, r18, 128
0010c4  4a020102  vloads.mz vr4{mr1}, 0(r2)
0010c8  86b20100  vfp162float_l.rn vr5, vr3
0010cc  86f10100  vfp162float_h.rn vr3, vr3
0010d0  92925502  vadd.f.mz.rn vr5{mr1}, r11, vr5
0010d4  92913502  vadd.f.mz.rn vr3{mr1}, r11, vr3
0010d8  06330100  vfp162float_l.rn vr6, vr2
0010dc  06710100  vfp162float_h.rn vr2, vr2
0010e0  8a125502  vmul.f.mz.rn vr5{mr1}, r10, vr5
0010e4  8a113502  vmul.f.mz.rn vr3{mr1}, r10, vr3
0010e8  86330200  vfp162float_l.rn vr7, vr4
0010ec  06720200  vfp162float_h.rn vr4, vr4
0010f0  a6936202  vmac.f.mz.rn vr7{mr1}, vr5, vr6
0010f4  26922102  vmac.f.mz.rn vr4{mr1}, vr3, vr2
0010f8  86900300  vfloat2fp16_l.rn vr1, vr7
0010fc  86500200  vfloat2fp16_h.rn vr1, vr4
001100  46001b02  vstore.mz vr1{mr1}, 0(r22)
001104  3f9df1fe  blt.s r3, r15, -188
001108  db97ffff  j -836
00110c  80300002  core_id r1
001110  bb800000  bneq r1, zero, 32
001114  63012f00  loadli.w r2,  16(r30)
001118  ab0100f0  lui r3, 983040
00111c  1b312100  slli r2, r2, 2
001120  17113100  or r2, r2, r3
001124  ab010100  lui r3, 16
001128  9f8101f0  addli r3, r3, -2048
00112c  7f013200  l_gm2sm r2, r3, 0(r[5:6])
001130  2bf10000  lui r2, 15
001134  e3411f00  loadli.w r3,  12(r30)
001138  00200300  mfence { sm, gm }
00113c  1b11f1ff  ori r2, r2, 4095
001140  80210104  csr_set csr3, r2
001144  00d00100  sync_group
001148  4b8d1106  ble.s r3, r1, 3904
00114c  63012f00  loadli.w r2,  16(r30)
001150  e3412f00  loadli.w r3,  20(r30)
001154  ab0b0100  lui r23, 16
001158  1f068fd7  addli r12, r30, -5184
00115c  1f180000  addli r16, zero, 1
001160  1f090002  addli r18, zero, 256
001164  9f090001  addli r19, zero, 128
001168  1f0a8000  addli r20, zero, 64
00116c  9f0a4000  addli r21, zero, 32
001170  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001174  9f8b0bf0  addli r23, r23, -2048
001178  0b133110  add.s r6, r2, r3
00117c  1b322100  slli r4, r2, 2
001180  33010108  fix2float.rn r2, r2
001184  67072fd6  storeli.w r2, -5264(r30)
001188  1f71f3ff  addli r2, r6, -1
00118c  1bb32100  slli r6, r3, 2
001190  8b133130  div.s r7, r2, r3
001194  2bf1ffff  lui r2, 1048575
001198  9b18f1ff  ori r17, r2, 4095
00119c  1f010fd7  addli r2, r30, -5248
0011a0  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0011a4  5b070000  j 56
0011a8  00a00000  mfence { lm }
0011ac  6b540f00  load.d r[9:10], 0(r30)
0011b0  2b0100f0  lui r2, 983040
0011b4  1f068fd7  addli r12, r30, -5184
0011b8  80510102  load_param_i r3, 2
0011bc  17112200  or r2, r4, r2
0011c0  8b901110  add.s r1, r3, r1
0011c4  0b258411  add.ul r[11:12], r[9:10], r[25:26]
0011c8  7f31c500  s_lm2gm r2, r12, 0(r[11:12])
0011cc  00a00200  mfence { lm, gm }
0011d0  63411f00  loadli.w r2,  12(r30)
0011d4  3fa02000  blt.s r1, r2, 8
0011d8  5bd60100  j 3760
0011dc  63011f00  loadli.w r2,  8(r30)
0011e0  9f220000  addli r5, zero, 2
0011e4  0b912010  add.s r2, r1, r2
0011e8  0b11f120  mul.s r2, r2, r15
0011ec  33110128  sext_int2long r[3:4], r2
0011f0  173c5102  sll.d r[25:26], r[3:4], r5
0011f4  9f01ffd6  addli r3, r30, -5256
0011f8  2b0100f0  lui r2, 983040
0011fc  6bd40100  load.d r[9:10], 0(r3)
001200  17112200  or r2, r4, r2
001204  0b258411  add.ul r[11:12], r[9:10], r[25:26]
001208  7f21c500  l_gm2lm r2, r12, 0(r[11:12])
00120c  00a00200  mfence { lm, gm }
001210  bfa70301  blt.s r7, r16, 488
001214  9f050000  addli r11, zero, 0
001218  1f0d0000  addli r26, zero, 0
00121c  9f0d0000  addli r27, zero, 0
001220  db0c0000  j 100
001224  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001228  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00122c  9f9d0d00  addli r27, r27, 1
001230  6a7109c0  vsrl.p vr2, r18, vr0
001234  ea7119c0  vsrl.p vr3, r18, vr1
001238  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00123c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001240  6af109c0  vsrl.p vr2, r19, vr0
001244  eaf119c0  vsrl.p vr3, r19, vr1
001248  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00124c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001250  6a710ac0  vsrl.p vr2, r20, vr0
001254  ea711ac0  vsrl.p vr3, r20, vr1
001258  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00125c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001260  6af10ac0  vsrl.p vr2, r21, vr0
001264  eaf11ac0  vsrl.p vr3, r21, vr1
001268  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00126c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001270  7a110040  vextracti.f r2, 0(vr0)
001274  fa910040  vextracti.f r3, 0(vr1)
001278  8be52510  add.f.rn r11, r11, r2
00127c  0b6d3d10  add.f.rn r26, r26, r3
001280  37867d00  beq r27, r7, 384
001284  9f810d00  addli r3, r27, 0
001288  37302701  beq r14, r18, 12
00128c  17a11d01  xor r2, r27, r17
001290  8b912310  add.s r3, r7, r2
001294  0b91e120  mul.s r2, r3, r14
001298  0b912718  sub.s r2, r15, r2
00129c  0b15e140  min.s r10, r2, r14
0012a0  1f010fd7  addli r2, r30, -5248
0012a4  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0012a8  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0012ac  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0012b0  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0012b4  bf4d05ff  blt.s r10, r16, -144
0012b8  9f020fd7  addli r5, r30, -5248
0012bc  1f010000  addli r2, zero, 0
0012c0  8b113320  mul.s r3, r6, r3
0012c4  1f068fd7  addli r12, r30, -5184
0012c8  9f860b00  addli r13, r23, 0
0012cc  42920202  vload_mask16.mz vr4{mr1}, 0(r5)
0012d0  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0012d4  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0012d8  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0012dc  0b9b3610  add.s r22, r13, r3
0012e0  0b1e3610  add.s r28, r12, r3
0012e4  1f048b00  addli r8, r22, 64
0012e8  ca120b02  vloads_mask16.mz vr5{mr1}, 0(r22)
0012ec  9f048b01  addli r9, r22, 192
0012f0  c2140e02  vload_mask16.mz vr9{mr1}, 0(r28)
0012f4  9f028e01  addli r5, r28, 192
0012f8  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
0012fc  1f040b01  addli r8, r22, 128
001300  4a940402  vloads_mask16.mz vr8{mr1}, 0(r9)
001304  9f040e01  addli r9, r28, 128
001308  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
00130c  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
001310  c2950402  vload_mask16.mz vr11{mr1}, 0(r9)
001314  1f048e00  addli r8, r28, 64
001318  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
00131c  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001320  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
001324  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
001328  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
00132c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001330  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001334  46105e02  vstore_mask16.mz vr5{mr1}, 0(r28)
001338  46106402  vstore_mask16.mz vr6{mr1}, 0(r8)
00133c  1f048100  addli r8, r2, 64
001340  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
001344  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001348  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00134c  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001350  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001354  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
001358  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
00135c  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001360  4b1b85fe  ble.s r10, r8, -316
001364  1f040b02  addli r8, r22, 256
001368  9f048b02  addli r9, r22, 320
00136c  9f020e02  addli r5, r28, 256
001370  1f010101  addli r2, r2, 128
001374  9f860604  addli r13, r13, 512
001378  1f060604  addli r12, r12, 512
00137c  4a100402  vloads_mask16.mz vr0{mr1}, 0(r8)
001380  1f040b03  addli r8, r22, 384
001384  ca920402  vloads_mask16.mz vr5{mr1}, 0(r9)
001388  9f048b03  addli r9, r22, 448
00138c  42940202  vload_mask16.mz vr8{mr1}, 0(r5)
001390  1f0b8e03  addli r22, r28, 448
001394  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
001398  ca930402  vloads_mask16.mz vr7{mr1}, 0(r9)
00139c  9f040e03  addli r9, r28, 384
0013a0  1f048e02  addli r8, r28, 320
0013a4  c2150b02  vload_mask16.mz vr11{mr1}, 0(r22)
0013a8  42950402  vload_mask16.mz vr10{mr1}, 0(r9)
0013ac  c2140402  vload_mask16.mz vr9{mr1}, 0(r8)
0013b0  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0013b4  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0013b8  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0013bc  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
0013c0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0013c4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0013c8  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
0013cc  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
0013d0  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0013d4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0013d8  46906402  vstore_mask16.mz vr6{mr1}, 0(r9)
0013dc  46107b02  vstore_mask16.mz vr7{mr1}, 0(r22)
0013e0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0013e4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0013e8  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0013ec  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0013f0  bf3ba1fe  blt.s r2, r10, -276
0013f4  5bc6ffff  j -464
0013f8  1f0d0000  addli r26, zero, 0
0013fc  9f050000  addli r11, zero, 0
001400  00a00000  mfence { lm }
001404  bf9607ff  blt.s r15, r16, -604
001408  6301efd6  loadli.w r2,  -5264(r30)
00140c  e3023f00  loadli.w r5,  24(r30)
001410  8f812518  div.f.rn r3, r11, r2
001414  0f012d18  div.f.rn r2, r26, r2
001418  9f050000  addli r11, zero, 0
00141c  0be53120  mul.f.rn r10, r3, r3
001420  8be10158  neg.f r3, r3
001424  0b61a118  sub.f.rn r2, r2, r10
001428  1f058fd7  addli r10, r30, -5184
00142c  0b615110  add.f.rn r2, r2, r5
001430  ab02803f  lui r5, 260096
001434  0f010108  sqrt.f.rn r2, r2
001438  0f812218  div.f.rn r2, r5, r2
00143c  1f068500  addli r12, r10, 64
001440  c2100502  vload_mask16.mz vr1{mr1}, 0(r10)
001444  9f864500  addli r13, r11, 32
001448  42110602  vload_mask16.mz vr2{mr1}, 0(r12)
00144c  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
001450  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
001454  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
001458  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
00145c  46101502  vstore_mask16.mz vr1{mr1}, 0(r10)
001460  46102602  vstore_mask16.mz vr2{mr1}, 0(r12)
001464  4b95d7fe  ble.s r15, r13, -700
001468  1f060501  addli r12, r10, 128
00146c  9f068501  addli r13, r10, 192
001470  9f858500  addli r11, r11, 64
001474  1f050502  addli r10, r10, 256
001478  c2100602  vload_mask16.mz vr1{mr1}, 0(r12)
00147c  42910602  vload_mask16.mz vr2{mr1}, 0(r13)
001480  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
001484  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
001488  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
00148c  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
001490  46101602  vstore_mask16.mz vr1{mr1}, 0(r12)
001494  46902602  vstore_mask16.mz vr2{mr1}, 0(r13)
001498  bf9ef5fe  blt.s r11, r15, -92
00149c  dba1ffff  j -756
0014a0  9f000040  addli r1, zero, 8192
0014a4  2b0100f0  lui r2, 983040
0014a8  97902000  or r1, r1, r2
0014ac  2b610000  lui r2, 6
0014b0  1f010100  addli r2, r2, 0
0014b4  ff002300  l_gm2sm r1, r2, 0(r[7:8])
0014b8  db070000  j 60
0014bc  63012f00  loadli.w r2,  16(r30)
0014c0  ab0100f0  lui r3, 983040
0014c4  1b312100  slli r2, r2, 2
0014c8  17113100  or r2, r2, r3
0014cc  abb10000  lui r3, 11
0014d0  9f810108  addli r3, r3, 1024
0014d4  7f013300  l_gm2sm r2, r3, 0(r[7:8])
0014d8  5bf80000  j 1984
0014dc  9f000040  addli r1, zero, 8192
0014e0  2b0100f0  lui r2, 983040
0014e4  97902000  or r1, r1, r2
0014e8  2b810000  lui r2, 8
0014ec  1f010100  addli r2, r2, 0
0014f0  ff002400  l_gm2sm r1, r2, 0(r[9:10])
0014f4  abf00000  lui r1, 15
0014f8  00200300  mfence { sm, gm }
0014fc  1b011500  andi r2, r10, 1
001500  9f020006  addli r5, zero, 768
001504  9b90f0ff  ori r1, r1, 4095
001508  80a10004  csr_set csr3, r1
00150c  9f000006  addli r1, zero, 768
001510  00d00100  sync_group
001514  67072fd6  storeli.w r2, -5264(r30)
001518  37200100  beq r2, zero, 8
00151c  9f02000a  addli r5, zero, 1280
001520  63411f00  loadli.w r2,  12(r30)
001524  9f110000  addli r3, zero, 1
001528  bf0d3104  blt.s r2, r3, 2912
00152c  e301efd6  loadli.w r3,  -5264(r30)
001530  00510102  load_param_i r2, 2
001534  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001538  2b4b0000  lui r22, 4
00153c  2bae0000  lui r28, 10
001540  2ba70000  lui r14, 10
001544  1f030000  addli r6, zero, 0
001548  9b441500  srli r9, r10, 1
00154c  9bb72200  slli r15, r5, 2
001550  9f098fd7  addli r19, r30, -5184
001554  9f0b0005  addli r23, zero, 640
001558  1f0d8000  addli r26, zero, 64
00155c  9f0d4000  addli r27, zero, 32
001560  9f0a0003  addli r21, zero, 384
001564  1b441100  srli r8, r2, 1
001568  2b610000  lui r2, 6
00156c  1f0b0b00  addli r22, r22, 0
001570  1f0e0e00  addli r28, r28, 0
001574  1f070704  addli r14, r14, 512
001578  8b901120  mul.s r1, r3, r1
00157c  1f010100  addli r2, r2, 0
001580  67001fd6  storeli.w r1, -5376(r30)
001584  9bb02000  slli r1, r1, 2
001588  0b982010  add.s r16, r1, r2
00158c  2b810000  lui r2, 8
001590  1f010100  addli r2, r2, 0
001594  8b982010  add.s r17, r1, r2
001598  abf0ffff  lui r1, 1048575
00159c  1f018fd5  addli r2, r30, -5440
0015a0  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0015a4  9b9000f8  ori r1, r1, 3968
0015a8  2bf10000  lui r2, 15
0015ac  e74b1fd4  storeli.w r1, -5444(r30)
0015b0  9f000001  addli r1, zero, 128
0015b4  1b19f1ff  ori r18, r2, 4095
0015b8  db030000  j 28
0015bc  00a00300  mfence { lm, sm, gm }
0015c0  80210904  csr_set csr3, r18
0015c4  00d00100  sync_group
0015c8  0b138310  add.s r6, r6, r8
0015cc  3f20d300  blt.s r6, r13, 8
0015d0  5bd30000  j 1688
0015d4  0b119310  add.s r2, r6, r9
0015d8  cb9f26fe  ble.s r13, r2, -28
0015dc  e3011f00  loadli.w r3,  8(r30)
0015e0  1f220000  addli r4, zero, 2
0015e4  9f03ffd6  addli r7, r30, -5256
0015e8  0b113110  add.s r2, r2, r3
0015ec  e3010fd6  loadli.w r3,  -5376(r30)
0015f0  1b31b100  slli r2, r2, 11
0015f4  17113100  or r2, r2, r3
0015f8  33110128  sext_int2long r[3:4], r2
0015fc  173c4102  sll.d r[25:26], r[3:4], r4
001600  ebd10300  load.d r[4:5], 0(r7)
001604  2b0100f0  lui r2, 983040
001608  17912700  or r2, r15, r2
00160c  8ba18111  add.ul r[4:5], r[4:5], r[25:26]
001610  7fa13101  l_gm2lm r2, r19, 0(r[4:5])
001614  00a00200  mfence { lm, gm }
001618  6301efd6  loadli.w r2,  -5264(r30)
00161c  3b660100  bneq r2, zero, 408
001620  1f028fd5  addli r4, r30, -5440
001624  e3417fd5  loadli.w r3,  -5444(r30)
001628  1f010000  addli r2, zero, 0
00162c  c2110202  vload_mask16.mz vr3{mr1}, 0(r4)
001630  92303002  vadd.s.mz vr1{mr1}, zero, vr3
001634  12313002  vadd.s.mz vr2{mr1}, zero, vr3
001638  12323002  vadd.s.mz vr4{mr1}, zero, vr3
00163c  8b136111  add.s r7, r2, r22
001640  0b922910  add.s r4, r19, r2
001644  9f810101  addli r3, r3, 128
001648  1f010104  addli r2, r2, 512
00164c  1f858300  addli r10, r7, 64
001650  9f858301  addli r11, r7, 192
001654  4a900302  vloads_mask16.mz vr0{mr1}, 0(r7)
001658  1f068201  addli r12, r4, 192
00165c  42140202  vload_mask16.mz vr8{mr1}, 0(r4)
001660  ca120502  vloads_mask16.mz vr5{mr1}, 0(r10)
001664  1f850301  addli r10, r7, 128
001668  ca930502  vloads_mask16.mz vr7{mr1}, 0(r11)
00166c  9f050201  addli r11, r4, 128
001670  c2150602  vload_mask16.mz vr11{mr1}, 0(r12)
001674  4a130502  vloads_mask16.mz vr6{mr1}, 0(r10)
001678  42950502  vload_mask16.mz vr10{mr1}, 0(r11)
00167c  1f058200  addli r10, r4, 64
001680  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
001684  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
001688  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
00168c  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001690  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
001694  46100202  vstore_mask16.mz vr0{mr1}, 0(r4)
001698  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00169c  46105502  vstore_mask16.mz vr5{mr1}, 0(r10)
0016a0  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
0016a4  1f050fd7  addli r10, r30, -5248
0016a8  1f868302  addli r12, r7, 320
0016ac  16146202  vadd.f.mz.rn vr8{mr1}, vr4, vr6
0016b0  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0016b4  46906502  vstore_mask16.mz vr6{mr1}, 0(r11)
0016b8  9f850302  addli r11, r7, 256
0016bc  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0016c0  4a130602  vloads_mask16.mz vr6{mr1}, 0(r12)
0016c4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0016c8  96117402  vadd.f.mz.rn vr3{mr1}, vr8, vr7
0016cc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0016d0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0016d4  46103502  vstore_mask16.mz vr3{mr1}, 0(r10)
0016d8  ca910502  vloads_mask16.mz vr3{mr1}, 0(r11)
0016dc  9f850303  addli r11, r7, 384
0016e0  9f838303  addli r7, r7, 448
0016e4  1f050202  addli r10, r4, 256
0016e8  ca940302  vloads_mask16.mz vr9{mr1}, 0(r7)
0016ec  9f038202  addli r7, r4, 320
0016f0  c2130502  vload_mask16.mz vr7{mr1}, 0(r10)
0016f4  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
0016f8  9f050203  addli r11, r4, 384
0016fc  1f028203  addli r4, r4, 448
001700  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
001704  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
001708  c2950502  vload_mask16.mz vr11{mr1}, 0(r11)
00170c  96913302  vadd.f.mz.rn vr3{mr1}, vr7, vr3
001710  96136502  vadd.f.mz.rn vr7{mr1}, vr10, vr6
001714  96129002  vadd.f.mz.rn vr5{mr1}, vr0, vr9
001718  16938502  vadd.f.mz.rn vr6{mr1}, vr11, vr8
00171c  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
001720  9f030fd7  addli r7, r30, -5248
001724  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001728  26913102  vmac.f.mz.rn vr2{mr1}, vr3, vr3
00172c  46103502  vstore_mask16.mz vr3{mr1}, 0(r10)
001730  42920302  vload_mask16.mz vr4{mr1}, 0(r7)
001734  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001738  93837105  setlt.u r7, r3, r23
00173c  46906502  vstore_mask16.mz vr6{mr1}, 0(r11)
001740  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
001744  96117002  vadd.f.mz.rn vr3{mr1}, vr0, vr7
001748  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
00174c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
001750  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001754  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001758  bb9b03fe  bneq r7, zero, -284
00175c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
001760  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001764  1f010002  addli r2, zero, 256
001768  6a7101c0  vsrl.p vr2, r2, vr0
00176c  ea7111c0  vsrl.p vr3, r2, vr1
001770  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001774  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001778  6af100c0  vsrl.p vr2, r1, vr0
00177c  eaf110c0  vsrl.p vr3, r1, vr1
001780  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001784  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001788  6a710dc0  vsrl.p vr2, r26, vr0
00178c  ea711dc0  vsrl.p vr3, r26, vr1
001790  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001794  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001798  6af10dc0  vsrl.p vr2, r27, vr0
00179c  eaf11dc0  vsrl.p vr3, r27, vr1
0017a0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0017a4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0017a8  7a120040  vextracti.f r4, 0(vr0)
0017ac  fa910040  vextracti.f r3, 0(vr1)
0017b0  5b670000  j 824
0017b4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0017b8  abf1ffff  lui r3, 1048575
0017bc  1f010000  addli r2, zero, 0
0017c0  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0017c4  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0017c8  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0017cc  9b9101f8  ori r3, r3, 3968
0017d0  8b132b10  add.s r7, r22, r2
0017d4  0b922910  add.s r4, r19, r2
0017d8  9f810101  addli r3, r3, 128
0017dc  1f010104  addli r2, r2, 512
0017e0  9f850330  addli r11, r7, 6144
0017e4  1f868330  addli r12, r7, 6208
0017e8  1f050218  addli r10, r4, 3072
0017ec  9f068219  addli r13, r4, 3264
0017f0  ca920502  vloads_mask16.mz vr5{mr1}, 0(r11)
0017f4  9f850331  addli r11, r7, 6272
0017f8  4a130602  vloads_mask16.mz vr6{mr1}, 0(r12)
0017fc  1f868331  addli r12, r7, 6336
001800  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
001804  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
001808  ca930502  vloads_mask16.mz vr7{mr1}, 0(r11)
00180c  4a140602  vloads_mask16.mz vr8{mr1}, 0(r12)
001810  9f058218  addli r11, r4, 3136
001814  1f060219  addli r12, r4, 3200
001818  42950502  vload_mask16.mz vr10{mr1}, 0(r11)
00181c  c2150602  vload_mask16.mz vr11{mr1}, 0(r12)
001820  96945402  vadd.f.mz.rn vr9{mr1}, vr9, vr5
001824  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
001828  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
00182c  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
001830  46109502  vstore_mask16.mz vr9{mr1}, 0(r10)
001834  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
001838  1f050fd7  addli r10, r30, -5248
00183c  9f850332  addli r11, r7, 6400
001840  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
001844  96136202  vadd.f.mz.rn vr7{mr1}, vr4, vr6
001848  16929102  vadd.f.mz.rn vr4{mr1}, vr3, vr9
00184c  46106602  vstore_mask16.mz vr6{mr1}, 0(r12)
001850  1f868332  addli r12, r7, 6464
001854  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001858  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
00185c  4a130602  vloads_mask16.mz vr6{mr1}, 0(r12)
001860  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001864  96910302  vadd.f.mz.rn vr3{mr1}, vr7, vr0
001868  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
00186c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001870  46103502  vstore_mask16.mz vr3{mr1}, 0(r10)
001874  ca910502  vloads_mask16.mz vr3{mr1}, 0(r11)
001878  9f850333  addli r11, r7, 6528
00187c  9f838333  addli r7, r7, 6592
001880  1f05021a  addli r10, r4, 3328
001884  ca940302  vloads_mask16.mz vr9{mr1}, 0(r7)
001888  9f03821a  addli r7, r4, 3392
00188c  c2130502  vload_mask16.mz vr7{mr1}, 0(r10)
001890  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
001894  9f05021b  addli r11, r4, 3456
001898  1f02821b  addli r4, r4, 3520
00189c  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
0018a0  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
0018a4  c2950502  vload_mask16.mz vr11{mr1}, 0(r11)
0018a8  96913302  vadd.f.mz.rn vr3{mr1}, vr7, vr3
0018ac  96136502  vadd.f.mz.rn vr7{mr1}, vr10, vr6
0018b0  96129002  vadd.f.mz.rn vr5{mr1}, vr0, vr9
0018b4  16938502  vadd.f.mz.rn vr6{mr1}, vr11, vr8
0018b8  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
0018bc  9f030fd7  addli r7, r30, -5248
0018c0  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
0018c4  26913102  vmac.f.mz.rn vr2{mr1}, vr3, vr3
0018c8  46103502  vstore_mask16.mz vr3{mr1}, 0(r10)
0018cc  42920302  vload_mask16.mz vr4{mr1}, 0(r7)
0018d0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0018d4  93835105  setlt.u r7, r3, r21
0018d8  46906502  vstore_mask16.mz vr6{mr1}, 0(r11)
0018dc  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
0018e0  96117002  vadd.f.mz.rn vr3{mr1}, vr0, vr7
0018e4  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0018e8  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0018ec  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
0018f0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0018f4  3bfb03fe  bneq r7, zero, -292
0018f8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0018fc  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
001900  1f010002  addli r2, zero, 256
001904  1f020000  addli r4, zero, 0
001908  ea7111c0  vsrl.p vr3, r2, vr1
00190c  6a7101c0  vsrl.p vr2, r2, vr0
001910  2bf1ffff  lui r2, 1048575
001914  1b1101f8  ori r2, r2, 3968
001918  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00191c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001920  eaf110c0  vsrl.p vr3, r1, vr1
001924  6af100c0  vsrl.p vr2, r1, vr0
001928  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00192c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001930  ea711dc0  vsrl.p vr3, r26, vr1
001934  6a710dc0  vsrl.p vr2, r26, vr0
001938  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00193c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001940  eaf11dc0  vsrl.p vr3, r27, vr1
001944  6af10dc0  vsrl.p vr2, r27, vr0
001948  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00194c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001950  fa930040  vextracti.f r7, 0(vr1)
001954  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001958  fa150040  vextracti.f r11, 0(vr0)
00195c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001960  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001964  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001968  0b154b10  add.s r10, r22, r4
00196c  8b914910  add.s r3, r19, r4
001970  1f010101  addli r2, r2, 128
001974  1f020204  addli r4, r4, 512
001978  1f060518  addli r12, r10, 3072
00197c  9f068518  addli r13, r10, 3136
001980  1f8a8101  addli r20, r3, 192
001984  42940102  vload_mask16.mz vr8{mr1}, 0(r3)
001988  4a100602  vloads_mask16.mz vr0{mr1}, 0(r12)
00198c  1f060519  addli r12, r10, 3200
001990  ca920602  vloads_mask16.mz vr5{mr1}, 0(r13)
001994  9f068519  addli r13, r10, 3264
001998  c2150a02  vload_mask16.mz vr11{mr1}, 0(r20)
00199c  4a130602  vloads_mask16.mz vr6{mr1}, 0(r12)
0019a0  ca930602  vloads_mask16.mz vr7{mr1}, 0(r13)
0019a4  9f860101  addli r13, r3, 128
0019a8  1f868100  addli r12, r3, 64
0019ac  42950602  vload_mask16.mz vr10{mr1}, 0(r13)
0019b0  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
0019b4  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0019b8  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0019bc  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0019c0  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
0019c4  46105602  vstore_mask16.mz vr5{mr1}, 0(r12)
0019c8  1f060fd7  addli r12, r30, -5248
0019cc  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
0019d0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0019d4  16146202  vadd.f.mz.rn vr8{mr1}, vr4, vr6
0019d8  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0019dc  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
0019e0  46107a02  vstore_mask16.mz vr7{mr1}, 0(r20)
0019e4  9f06051a  addli r13, r10, 3328
0019e8  1f0a851a  addli r20, r10, 3392
0019ec  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0019f0  4a130a02  vloads_mask16.mz vr6{mr1}, 0(r20)
0019f4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0019f8  96117402  vadd.f.mz.rn vr3{mr1}, vr8, vr7
0019fc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001a00  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001a04  46103602  vstore_mask16.mz vr3{mr1}, 0(r12)
001a08  ca910602  vloads_mask16.mz vr3{mr1}, 0(r13)
001a0c  9f06051b  addli r13, r10, 3456
001a10  1f05851b  addli r10, r10, 3520
001a14  1f860102  addli r12, r3, 256
001a18  ca140502  vloads_mask16.mz vr9{mr1}, 0(r10)
001a1c  1f858102  addli r10, r3, 320
001a20  c2130602  vload_mask16.mz vr7{mr1}, 0(r12)
001a24  4a940602  vloads_mask16.mz vr8{mr1}, 0(r13)
001a28  9f860103  addli r13, r3, 384
001a2c  9f818103  addli r3, r3, 448
001a30  42150502  vload_mask16.mz vr10{mr1}, 0(r10)
001a34  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
001a38  c2950602  vload_mask16.mz vr11{mr1}, 0(r13)
001a3c  96913302  vadd.f.mz.rn vr3{mr1}, vr7, vr3
001a40  96136502  vadd.f.mz.rn vr7{mr1}, vr10, vr6
001a44  96129002  vadd.f.mz.rn vr5{mr1}, vr0, vr9
001a48  16938502  vadd.f.mz.rn vr6{mr1}, vr11, vr8
001a4c  46107502  vstore_mask16.mz vr7{mr1}, 0(r10)
001a50  1f050fd7  addli r10, r30, -5248
001a54  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001a58  26913102  vmac.f.mz.rn vr2{mr1}, vr3, vr3
001a5c  46103602  vstore_mask16.mz vr3{mr1}, 0(r12)
001a60  42120502  vload_mask16.mz vr4{mr1}, 0(r10)
001a64  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001a68  13057105  setlt.u r10, r2, r23
001a6c  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
001a70  46905102  vstore_mask16.mz vr5{mr1}, 0(r3)
001a74  96117002  vadd.f.mz.rn vr3{mr1}, vr0, vr7
001a78  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
001a7c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
001a80  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001a84  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001a88  bb0b05fe  bneq r10, zero, -288
001a8c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
001a90  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001a94  1f010002  addli r2, zero, 256
001a98  6a7101c0  vsrl.p vr2, r2, vr0
001a9c  ea7111c0  vsrl.p vr3, r2, vr1
001aa0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001aa4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001aa8  6af100c0  vsrl.p vr2, r1, vr0
001aac  eaf110c0  vsrl.p vr3, r1, vr1
001ab0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001ab4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001ab8  6a710dc0  vsrl.p vr2, r26, vr0
001abc  ea711dc0  vsrl.p vr3, r26, vr1
001ac0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001ac4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001ac8  6af10dc0  vsrl.p vr2, r27, vr0
001acc  eaf11dc0  vsrl.p vr3, r27, vr1
001ad0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001ad4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001ad8  fa910040  vextracti.f r3, 0(vr1)
001adc  7a110040  vextracti.f r2, 0(vr0)
001ae0  0be22510  add.f.rn r4, r11, r2
001ae4  8be13310  add.f.rn r3, r7, r3
001ae8  8b038330  div.u r7, r6, r8
001aec  00350002  core_id r10
001af0  1f010000  addli r2, zero, 0
001af4  9bb36300  slli r7, r7, 6
001af8  9b830304  andi r7, r7, 64
001afc  9793a300  or r7, r7, r10
001b00  1bb52300  slli r10, r7, 2
001b04  8b15c511  add.s r11, r10, r28
001b08  73e04500  stores.w r4, 0(r11)
001b0c  1b82e307  andi r4, r7, 126
001b10  8b13e510  add.s r7, r10, r14
001b14  1b154500  ori r10, r10, 4
001b18  1b322200  slli r4, r4, 2
001b1c  73e03300  stores.w r3, 0(r7)
001b20  8b11c511  add.s r3, r10, r28
001b24  0b15e510  add.s r10, r10, r14
001b28  00a00300  mfence { lm, sm, gm }
001b2c  80210904  csr_set csr3, r18
001b30  00d00100  sync_group
001b34  8b13c211  add.s r7, r4, r28
001b38  efc10100  loads.w r3, 0(r3)
001b3c  0b12e210  add.s r4, r4, r14
001b40  6f450500  loads.w r10, 0(r10)
001b44  efc30300  loads.w r7, 0(r7)
001b48  6f420200  loads.w r4, 0(r4)
001b4c  8be17110  add.f.rn r3, r3, r7
001b50  0b624510  add.f.rn r4, r10, r4
001b54  2b05003a  lui r10, 237568
001b58  8be3a120  mul.f.rn r7, r3, r10
001b5c  8b61a220  mul.f.rn r3, r4, r10
001b60  0be27320  mul.f.rn r4, r7, r7
001b64  8be14118  sub.f.rn r3, r3, r4
001b68  63023f00  loadli.w r4,  24(r30)
001b6c  8be14110  add.f.rn r3, r3, r4
001b70  2b02803f  lui r4, 260096
001b74  8f810108  sqrt.f.rn r3, r3
001b78  8f013218  div.f.rn r3, r4, r3
001b7c  0be20358  neg.f r4, r7
001b80  9f030000  addli r7, zero, 0
001b84  0b152810  add.s r10, r16, r2
001b88  8b952910  add.s r11, r19, r2
001b8c  0b962810  add.s r12, r17, r2
001b90  1f0a8500  addli r20, r10, 64
001b94  9f868500  addli r13, r11, 64
001b98  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
001b9c  4a110502  vloads_mask16.mz vr2{mr1}, 0(r10)
001ba0  4a120602  vloads_mask16.mz vr4{mr1}, 0(r12)
001ba4  ca110a02  vloads_mask16.mz vr3{mr1}, 0(r20)
001ba8  1f0a8600  addli r20, r12, 64
001bac  c2900602  vload_mask16.mz vr1{mr1}, 0(r13)
001bb0  ca120a02  vloads_mask16.mz vr5{mr1}, 0(r20)
001bb4  1f8a4300  addli r20, r7, 32
001bb8  12100202  vadd.f.mz.rn vr0{mr1}, r4, vr0
001bbc  138a4207  setle.u r20, r5, r20
001bc0  92101202  vadd.f.mz.rn vr1{mr1}, r4, vr1
001bc4  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
001bc8  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
001bcc  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
001bd0  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
001bd4  46904502  vstore_mask16.mz vr4{mr1}, 0(r11)
001bd8  46905602  vstore_mask16.mz vr5{mr1}, 0(r13)
001bdc  bb110a00  bneq r20, zero, 100
001be0  1f0a0501  addli r20, r10, 128
001be4  9f860501  addli r13, r11, 128
001be8  9f858501  addli r11, r11, 192
001bec  1f058501  addli r10, r10, 192
001bf0  9f838300  addli r7, r7, 64
001bf4  1f010102  addli r2, r2, 256
001bf8  4a110a02  vloads_mask16.mz vr2{mr1}, 0(r20)
001bfc  1f0a0601  addli r20, r12, 128
001c00  1f068601  addli r12, r12, 192
001c04  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
001c08  c2900502  vload_mask16.mz vr1{mr1}, 0(r11)
001c0c  4a120502  vloads_mask16.mz vr4{mr1}, 0(r10)
001c10  13855304  setlt.u r10, r7, r5
001c14  ca110a02  vloads_mask16.mz vr3{mr1}, 0(r20)
001c18  ca120602  vloads_mask16.mz vr5{mr1}, 0(r12)
001c1c  12100202  vadd.f.mz.rn vr0{mr1}, r4, vr0
001c20  92101202  vadd.f.mz.rn vr1{mr1}, r4, vr1
001c24  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
001c28  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
001c2c  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
001c30  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
001c34  46903602  vstore_mask16.mz vr3{mr1}, 0(r13)
001c38  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
001c3c  3b2d05fe  bneq r10, zero, -184
001c40  eb510f00  load.d r[4:5], 0(r30)
001c44  2b0100f0  lui r2, 983040
001c48  00a00000  mfence { lm }
001c4c  17912700  or r2, r15, r2
001c50  8ba18111  add.ul r[4:5], r[4:5], r[25:26]
001c54  7fb13101  s_lm2gm r2, r19, 0(r[4:5])
001c58  00a00200  mfence { lm, gm }
001c5c  e3461f00  loadli.w r13,  12(r30)
001c60  0b138310  add.s r6, r6, r8
001c64  bf45d3fc  blt.s r6, r13, -1680
001c68  abf00000  lui r1, 15
001c6c  9b90f0ff  ori r1, r1, 4095
001c70  80a10004  csr_set csr3, r1
001c74  00d00100  sync_group
001c78  5b820000  j 1040
001c7c  63012f00  loadli.w r2,  16(r30)
001c80  ab0100f0  lui r3, 983040
001c84  1b312100  slli r2, r2, 2
001c88  17113100  or r2, r2, r3
001c8c  abc10000  lui r3, 12
001c90  9f810108  addli r3, r3, 1024
001c94  7f013400  l_gm2sm r2, r3, 0(r[9:10])
001c98  2bf10000  lui r2, 15
001c9c  e3411f00  loadli.w r3,  12(r30)
001ca0  00200300  mfence { sm, gm }
001ca4  1b11f1ff  ori r2, r2, 4095
001ca8  80210104  csr_set csr3, r2
001cac  00d00100  sync_group
001cb0  4bef1100  ble.s r3, r1, 984
001cb4  63012f00  loadli.w r2,  16(r30)
001cb8  e3412f00  loadli.w r3,  20(r30)
001cbc  aba90000  lui r19, 10
001cc0  2bbc0000  lui r24, 11
001cc4  abcc0000  lui r25, 12
001cc8  9f048fd7  addli r9, r30, -5184
001ccc  1f180000  addli r16, zero, 1
001cd0  1f090002  addli r18, zero, 256
001cd4  1f0a0001  addli r20, zero, 128
001cd8  9f0a8000  addli r21, zero, 64
001cdc  1f0b4000  addli r22, zero, 32
001ce0  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001ce4  9f890908  addli r19, r19, 1024
001ce8  1f0c0c08  addli r24, r24, 1024
001cec  9f8c0c08  addli r25, r25, 1024
001cf0  1b342100  slli r8, r2, 2
001cf4  8b123110  add.s r5, r2, r3
001cf8  33010108  fix2float.rn r2, r2
001cfc  1bb32100  slli r6, r3, 2
001d00  670c2fd4  storeli.w r2, -5440(r30)
001d04  1ff1f2ff  addli r2, r5, -1
001d08  67008fd6  storeli.w r8, -5376(r30)
001d0c  8b133130  div.s r7, r2, r3
001d10  2bf1ffff  lui r2, 1048575
001d14  9b18f1ff  ori r17, r2, 4095
001d18  1f010fd7  addli r2, r30, -5248
001d1c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001d20  5b080000  j 64
001d24  9f02efd6  addli r5, r30, -5264
001d28  00a00000  mfence { lm }
001d2c  eb510f00  load.d r[4:5], 0(r30)
001d30  2b0100f0  lui r2, 983040
001d34  63040fd6  loadli.w r8,  -5376(r30)
001d38  6bd50200  load.d r[11:12], 0(r5)
001d3c  17112400  or r2, r8, r2
001d40  0ba5a110  add.ul r[11:12], r[4:5], r[11:12]
001d44  80510102  load_param_i r3, 2
001d48  7f319500  s_lm2gm r2, r9, 0(r[11:12])
001d4c  8b901110  add.s r1, r3, r1
001d50  00a00200  mfence { lm, gm }
001d54  63411f00  loadli.w r2,  12(r30)
001d58  3fa02000  blt.s r1, r2, 8
001d5c  db650000  j 812
001d60  63011f00  loadli.w r2,  8(r30)
001d64  1f220000  addli r4, zero, 2
001d68  9f02ffd6  addli r5, r30, -5256
001d6c  0b912010  add.s r2, r1, r2
001d70  0b11f120  mul.s r2, r2, r15
001d74  33110128  sext_int2long r[3:4], r2
001d78  17354102  sll.d r[11:12], r[3:4], r4
001d7c  ebd10200  load.d r[4:5], 0(r5)
001d80  2b0100f0  lui r2, 983040
001d84  9f02efd6  addli r5, r30, -5264
001d88  73b0a200  store.d r[11:12], 0(r5)
001d8c  17112400  or r2, r8, r2
001d90  0ba5a110  add.ul r[11:12], r[4:5], r[11:12]
001d94  7f219500  l_gm2lm r2, r9, 0(r[11:12])
001d98  00a00200  mfence { lm, gm }
001d9c  bfa70301  blt.s r7, r16, 488
001da0  9f0b0000  addli r23, zero, 0
001da4  1f0e0000  addli r28, zero, 0
001da8  9f050000  addli r11, zero, 0
001dac  db0c0000  j 100
001db0  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001db4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001db8  9f950500  addli r11, r11, 1
001dbc  6a7109c0  vsrl.p vr2, r18, vr0
001dc0  ea7119c0  vsrl.p vr3, r18, vr1
001dc4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001dc8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001dcc  6a710ac0  vsrl.p vr2, r20, vr0
001dd0  ea711ac0  vsrl.p vr3, r20, vr1
001dd4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001dd8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001ddc  6af10ac0  vsrl.p vr2, r21, vr0
001de0  eaf11ac0  vsrl.p vr3, r21, vr1
001de4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001de8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001dec  6a710bc0  vsrl.p vr2, r22, vr0
001df0  ea711bc0  vsrl.p vr3, r22, vr1
001df4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001df8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001dfc  7a110040  vextracti.f r2, 0(vr0)
001e00  fa910040  vextracti.f r3, 0(vr1)
001e04  8beb2b10  add.f.rn r23, r23, r2
001e08  0b6e3e10  add.f.rn r28, r28, r3
001e0c  37867500  beq r11, r7, 384
001e10  9f810500  addli r3, r11, 0
001e14  37302701  beq r14, r18, 12
001e18  17a11501  xor r2, r11, r17
001e1c  8b912310  add.s r3, r7, r2
001e20  0b91e120  mul.s r2, r3, r14
001e24  0b912718  sub.s r2, r15, r2
001e28  0b15e140  min.s r10, r2, r14
001e2c  1f010fd7  addli r2, r30, -5248
001e30  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
001e34  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001e38  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001e3c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001e40  bf4d05ff  blt.s r10, r16, -144
001e44  1f020fd7  addli r4, r30, -5248
001e48  1f010000  addli r2, zero, 0
001e4c  8b113320  mul.s r3, r6, r3
001e50  1f068fd7  addli r12, r30, -5184
001e54  9f860900  addli r13, r19, 0
001e58  42120202  vload_mask16.mz vr4{mr1}, 0(r4)
001e5c  92304002  vadd.s.mz vr1{mr1}, zero, vr4
001e60  12314002  vadd.s.mz vr2{mr1}, zero, vr4
001e64  92314002  vadd.s.mz vr3{mr1}, zero, vr4
001e68  8b923610  add.s r5, r13, r3
001e6c  0b143610  add.s r8, r12, r3
001e70  1f828200  addli r4, r5, 64
001e74  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
001e78  1f8d8201  addli r26, r5, 192
001e7c  c2140402  vload_mask16.mz vr9{mr1}, 0(r8)
001e80  9f0d8401  addli r27, r8, 192
001e84  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
001e88  1f820201  addli r4, r5, 128
001e8c  4a140d02  vloads_mask16.mz vr8{mr1}, 0(r26)
001e90  1f0d0401  addli r26, r8, 128
001e94  42900d02  vload_mask16.mz vr0{mr1}, 0(r27)
001e98  ca130202  vloads_mask16.mz vr7{mr1}, 0(r4)
001e9c  c2150d02  vload_mask16.mz vr11{mr1}, 0(r26)
001ea0  1f028400  addli r4, r8, 64
001ea4  42150202  vload_mask16.mz vr10{mr1}, 0(r4)
001ea8  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001eac  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
001eb0  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
001eb4  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
001eb8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001ebc  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001ec0  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
001ec4  46106202  vstore_mask16.mz vr6{mr1}, 0(r4)
001ec8  1f028100  addli r4, r2, 64
001ecc  46900d02  vstore_mask16.mz vr0{mr1}, 0(r27)
001ed0  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001ed4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001ed8  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001edc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001ee0  46107d02  vstore_mask16.mz vr7{mr1}, 0(r26)
001ee4  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
001ee8  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001eec  4b1b45fe  ble.s r10, r4, -316
001ef0  1f8d0202  addli r26, r5, 256
001ef4  9f8d8202  addli r27, r5, 320
001ef8  1f020402  addli r4, r8, 256
001efc  1f010101  addli r2, r2, 128
001f00  9f860604  addli r13, r13, 512
001f04  1f060604  addli r12, r12, 512
001f08  4a100d02  vloads_mask16.mz vr0{mr1}, 0(r26)
001f0c  1f8d0203  addli r26, r5, 384
001f10  9f828203  addli r5, r5, 448
001f14  ca920d02  vloads_mask16.mz vr5{mr1}, 0(r27)
001f18  42140202  vload_mask16.mz vr8{mr1}, 0(r4)
001f1c  4a130d02  vloads_mask16.mz vr6{mr1}, 0(r26)
001f20  ca930202  vloads_mask16.mz vr7{mr1}, 0(r5)
001f24  1f0d0403  addli r26, r8, 384
001f28  9f028402  addli r5, r8, 320
001f2c  1f048403  addli r8, r8, 448
001f30  42150d02  vload_mask16.mz vr10{mr1}, 0(r26)
001f34  c2940202  vload_mask16.mz vr9{mr1}, 0(r5)
001f38  c2150402  vload_mask16.mz vr11{mr1}, 0(r8)
001f3c  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
001f40  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001f44  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
001f48  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
001f4c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001f50  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001f54  46100202  vstore_mask16.mz vr0{mr1}, 0(r4)
001f58  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
001f5c  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
001f60  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001f64  46106d02  vstore_mask16.mz vr6{mr1}, 0(r26)
001f68  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
001f6c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001f70  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001f74  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001f78  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001f7c  bf3ba1fe  blt.s r2, r10, -276
001f80  5bc6ffff  j -464
001f84  1f0e0000  addli r28, zero, 0
001f88  9f0b0000  addli r23, zero, 0
001f8c  00a00000  mfence { lm }
001f90  3fd607ff  blt.s r15, r16, -620
001f94  e3018fd5  loadli.w r3,  -5440(r30)
001f98  63023f00  loadli.w r4,  24(r30)
001f9c  1f010000  addli r2, zero, 0
001fa0  9f050000  addli r11, zero, 0
001fa4  8f823b18  div.f.rn r5, r23, r3
001fa8  8f013e18  div.f.rn r3, r28, r3
001fac  0be45220  mul.f.rn r8, r5, r5
001fb0  0be50258  neg.f r10, r5
001fb4  8be18118  sub.f.rn r3, r3, r8
001fb8  8be14110  add.f.rn r3, r3, r4
001fbc  2b02803f  lui r4, 260096
001fc0  8f810108  sqrt.f.rn r3, r3
001fc4  8f013218  div.f.rn r3, r4, r3
001fc8  0b148111  add.s r8, r2, r24
001fcc  8b922410  add.s r5, r9, r2
001fd0  1f068400  addli r12, r8, 64
001fd4  4a110402  vloads_mask16.mz vr2{mr1}, 0(r8)
001fd8  0b149111  add.s r8, r2, r25
001fdc  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
001fe0  ca110602  vloads_mask16.mz vr3{mr1}, 0(r12)
001fe4  1f868200  addli r12, r5, 64
001fe8  4a120402  vloads_mask16.mz vr4{mr1}, 0(r8)
001fec  1f048400  addli r8, r8, 64
001ff0  c2120602  vload_mask16.mz vr5{mr1}, 0(r12)
001ff4  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
001ff8  1f844500  addli r8, r11, 32
001ffc  92101502  vadd.f.mz.rn vr1{mr1}, r10, vr1
002000  92125502  vadd.f.mz.rn vr5{mr1}, r10, vr5
002004  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
002008  8a925102  vmul.f.mz.rn vr5{mr1}, r3, vr5
00200c  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
002010  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
002014  46904202  vstore_mask16.mz vr4{mr1}, 0(r5)
002018  46106602  vstore_mask16.mz vr6{mr1}, 0(r12)
00201c  4ba487fe  ble.s r15, r8, -760
002020  0b142c10  add.s r8, r24, r2
002024  0b962c10  add.s r12, r25, r2
002028  9f858500  addli r11, r11, 64
00202c  1f010102  addli r2, r2, 256
002030  9f060401  addli r13, r8, 128
002034  9f0b0601  addli r23, r12, 128
002038  1f048401  addli r8, r8, 192
00203c  1f068601  addli r12, r12, 192
002040  ca900602  vloads_mask16.mz vr1{mr1}, 0(r13)
002044  9f860201  addli r13, r5, 128
002048  9f828201  addli r5, r5, 192
00204c  4a910b02  vloads_mask16.mz vr2{mr1}, 0(r23)
002050  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
002054  4a130602  vloads_mask16.mz vr6{mr1}, 0(r12)
002058  c2910602  vload_mask16.mz vr3{mr1}, 0(r13)
00205c  42920202  vload_mask16.mz vr4{mr1}, 0(r5)
002060  92113502  vadd.f.mz.rn vr3{mr1}, r10, vr3
002064  12124502  vadd.f.mz.rn vr4{mr1}, r10, vr4
002068  8a913102  vmul.f.mz.rn vr3{mr1}, r3, vr3
00206c  0a924102  vmul.f.mz.rn vr4{mr1}, r3, vr4
002070  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
002074  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
002078  46902602  vstore_mask16.mz vr2{mr1}, 0(r13)
00207c  46906202  vstore_mask16.mz vr6{mr1}, 0(r5)
002080  3fadf5fe  blt.s r11, r15, -184
002084  5b94ffff  j -864
002088  9f0e0fd5  addli sp, r30, -5504
00208c  e38fae2a  loadli.w r31,  5456(sp)
002090  63cfae2a  loadli.w r30,  5460(sp)
002094  638ebe2a  loadli.w r28,  5464(sp)
002098  e3cdbe2a  loadli.w r27,  5468(sp)
00209c  638dce2a  loadli.w r26,  5472(sp)
0020a0  e3ccce2a  loadli.w r25,  5476(sp)
0020a4  638cde2a  loadli.w r24,  5480(sp)
0020a8  e3cbde2a  loadli.w r23,  5484(sp)
0020ac  638bee2a  loadli.w r22,  5488(sp)
0020b0  e3caee2a  loadli.w r21,  5492(sp)
0020b4  638afe2a  loadli.w r20,  5496(sp)
0020b8  e3c9fe2a  loadli.w r19,  5500(sp)
0020bc  9f8e0e2b  addli sp, sp, 5504
0020c0  5f800f00  jr r31, 0
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
002300  00100000  exit
