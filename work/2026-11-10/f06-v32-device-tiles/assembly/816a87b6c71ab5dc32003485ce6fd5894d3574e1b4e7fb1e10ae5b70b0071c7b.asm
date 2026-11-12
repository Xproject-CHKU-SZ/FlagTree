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
00010c  9f0c0002  addli r25, zero, 256
000110  1f0d0008  addli r26, zero, 1024
000114  9f0d2000  addli r27, zero, 16
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
000154  9bb04000  slli r1, r1, 4
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
0001ac  63472f00  loadli.w r14,  20(r30)
0001b0  e3072f00  loadli.w r15,  16(r30)
0001b4  e3461f00  loadli.w r13,  12(r30)
0001b8  e3004f00  loadli.w r1,  32(r30)
0001bc  1f05ffd6  addli r10, r30, -5256
0001c0  73302500  store.d r[3:4], 0(r10)
0001c4  37910000  beq r1, zero, 68
0001c8  e3403f00  loadli.w r1,  28(r30)
0001cc  37920000  beq r1, zero, 132
0001d0  80300002  core_id r1
0001d4  1f210000  addli r2, zero, 2
0001d8  37fd2004  beq r1, r2, 2908
0001dc  1f110000  addli r2, zero, 1
0001e0  b7dc2004  beq r1, r2, 2868
0001e4  bbbd0004  bneq r1, zero, 2924
0001e8  63012f00  loadli.w r2,  16(r30)
0001ec  ab0100f0  lui r3, 983040
0001f0  1b311100  slli r2, r2, 1
0001f4  17113100  or r2, r2, r3
0001f8  ab010000  lui r3, 0
0001fc  9f810100  addli r3, r3, 0
000200  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000204  db690100  j 2892
000208  e3403f00  loadli.w r1,  28(r30)
00020c  b7fe0000  beq r1, zero, 956
000210  e3002f00  loadli.w r1,  16(r30)
000214  1f010010  addli r2, zero, 2048
000218  3b9b2004  bneq r1, r2, 2756
00021c  00350002  core_id r10
000220  9f200000  addli r1, zero, 2
000224  b74a1508  beq r10, r1, 4784
000228  9f100000  addli r1, zero, 1
00022c  b7391508  beq r10, r1, 4716
000230  bb7a0508  bneq r10, zero, 4796
000234  9f000040  addli r1, zero, 8192
000238  2b0100f0  lui r2, 983040
00023c  97902000  or r1, r1, r2
000240  2b410000  lui r2, 4
000244  1f010100  addli r2, r2, 0
000248  ff002200  l_gm2sm r1, r2, 0(r[5:6])
00024c  5b540200  j 4768
000250  80300002  core_id r1
000254  bb800000  bneq r1, zero, 32
000258  63012f00  loadli.w r2,  16(r30)
00025c  ab0100f0  lui r3, 983040
000260  1b311100  slli r2, r2, 1
000264  17113100  or r2, r2, r3
000268  ab310000  lui r3, 3
00026c  9f810100  addli r3, r3, 0
000270  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000274  2bf10000  lui r2, 15
000278  e3411f00  loadli.w r3,  12(r30)
00027c  00200300  mfence { sm, gm }
000280  1b11f1ff  ori r2, r2, 4095
000284  80210104  csr_set csr3, r2
000288  00d00100  sync_group
00028c  cbd7110e  ble.s r3, r1, 7668
000290  63012f00  loadli.w r2,  16(r30)
000294  e3412f00  loadli.w r3,  20(r30)
000298  2b3b0000  lui r22, 3
00029c  1f140000  addli r8, zero, 1
0002a0  1f068fd7  addli r12, r30, -5184
0002a4  9f080002  addli r17, zero, 256
0002a8  1f090001  addli r18, zero, 128
0002ac  9f098000  addli r19, zero, 64
0002b0  1f0a4000  addli r20, zero, 32
0002b4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0002b8  1f0b0b00  addli r22, r22, 0
0002bc  0b133110  add.s r6, r2, r3
0002c0  1b321100  slli r4, r2, 1
0002c4  b3020108  fix2float.rn r5, r2
0002c8  1f71f3ff  addli r2, r6, -1
0002cc  1bb31100  slli r6, r3, 1
0002d0  8b133130  div.s r7, r2, r3
0002d4  2bf1ffff  lui r2, 1048575
0002d8  1b18f1ff  ori r16, r2, 4095
0002dc  5b070000  j 56
0002e0  00a00000  mfence { lm }
0002e4  eb540f00  load.d r[10:11], 0(r30)
0002e8  2b0100f0  lui r2, 983040
0002ec  1f068fd7  addli r12, r30, -5184
0002f0  80510102  load_param_i r3, 2
0002f4  17112200  or r2, r4, r2
0002f8  8b901110  add.s r1, r3, r1
0002fc  0ba57411  add.ul r[11:12], r[10:11], r[24:25]
000300  7f31c500  s_lm2gm r2, r12, 0(r[11:12])
000304  00a00200  mfence { lm, gm }
000308  63411f00  loadli.w r2,  12(r30)
00030c  3fa02000  blt.s r1, r2, 8
000310  5bae0300  j 7536
000314  63011f00  loadli.w r2,  8(r30)
000318  0b912010  add.s r2, r1, r2
00031c  0b11f120  mul.s r2, r2, r15
000320  33110128  sext_int2long r[3:4], r2
000324  973b8102  sll.d r[24:25], r[3:4], r8
000328  9f01ffd6  addli r3, r30, -5256
00032c  2b0100f0  lui r2, 983040
000330  ebd40100  load.d r[10:11], 0(r3)
000334  17112200  or r2, r4, r2
000338  0ba57411  add.ul r[11:12], r[10:11], r[24:25]
00033c  7f21c500  l_gm2lm r2, r12, 0(r[11:12])
000340  00a00200  mfence { lm, gm }
000344  3fc78300  blt.s r7, r8, 464
000348  1f0d0000  addli r26, zero, 0
00034c  9f0c0000  addli r25, zero, 0
000350  9f050000  addli r11, zero, 0
000354  db0c0000  j 100
000358  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
00035c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000360  9f950500  addli r11, r11, 1
000364  6af138c0  vsrl.p vr2, r17, vr3
000368  6af218c0  vsrl.p vr4, r17, vr1
00036c  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
000370  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000374  ea7129c0  vsrl.p vr3, r18, vr2
000378  6a7219c0  vsrl.p vr4, r18, vr1
00037c  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000380  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000384  eaf129c0  vsrl.p vr3, r19, vr2
000388  6af219c0  vsrl.p vr4, r19, vr1
00038c  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000390  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000394  ea712ac0  vsrl.p vr3, r20, vr2
000398  6a721ac0  vsrl.p vr4, r20, vr1
00039c  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0003a0  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0003a4  7a110140  vextracti.f r2, 0(vr2)
0003a8  fa910040  vextracti.f r3, 0(vr1)
0003ac  0b6d2d10  add.f.rn r26, r26, r2
0003b0  8bec3c10  add.f.rn r25, r25, r3
0003b4  b7a57500  beq r11, r7, 360
0003b8  1f810500  addli r2, r11, 0
0003bc  37301701  beq r14, r17, 12
0003c0  17a10501  xor r2, r11, r16
0003c4  0b912310  add.s r2, r7, r2
0003c8  8b11e120  mul.s r3, r2, r14
0003cc  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0003d0  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0003d4  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0003d8  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0003dc  8b913718  sub.s r3, r15, r3
0003e0  0b96e140  min.s r12, r3, r14
0003e4  bf5d86fe  blt.s r12, r8, -140
0003e8  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0003ec  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0003f0  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0003f4  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0003f8  0b152320  mul.s r10, r6, r2
0003fc  9f060000  addli r13, zero, 0
000400  9f0d8fd7  addli r27, r30, -5184
000404  1f010b00  addli r2, r22, 0
000408  8b11a110  add.s r3, r2, r10
00040c  9f848600  addli r9, r13, 64
000410  ca820102  vloads.mz vr5{mr1}, 0(r3)
000414  1f8e8100  addli r28, r3, 64
000418  4a030e02  vloads.mz vr6{mr1}, 0(r28)
00041c  0b9ead10  add.s r28, r27, r10
000420  c2030e02  vload.mz vr7{mr1}, 0(r28)
000424  9f0a8e00  addli r21, r28, 64
000428  42840a02  vload.mz vr8{mr1}, 0(r21)
00042c  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
000430  92320002  vadd.s.mz vr5{mr1}, zero, vr0
000434  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
000438  06b40300  vfp162float_l.rn vr8, vr7
00043c  86f30300  vfp162float_h.rn vr7, vr7
000440  86340300  vfp162float_l.rn vr9, vr6
000444  06730300  vfp162float_h.rn vr6, vr6
000448  86120400  vfloat2fp16_l.rn vr5, vr8
00044c  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
000450  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
000454  12340002  vadd.s.mz vr8{mr1}, zero, vr0
000458  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
00045c  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
000460  06940400  vfloat2fp16_l.rn vr8, vr9
000464  86d20300  vfloat2fp16_h.rn vr5, vr7
000468  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
00046c  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
000470  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
000474  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000478  06540300  vfloat2fp16_h.rn vr8, vr6
00047c  46005e02  vstore.mz vr5{mr1}, 0(r28)
000480  46808a02  vstore.mz vr8{mr1}, 0(r21)
000484  4b5b96fe  ble.s r12, r9, -300
000488  9f840101  addli r9, r3, 128
00048c  9f818101  addli r3, r3, 192
000490  9f860601  addli r13, r13, 128
000494  1f010102  addli r2, r2, 256
000498  9f8d0d02  addli r27, r27, 256
00049c  ca820402  vloads.mz vr5{mr1}, 0(r9)
0004a0  4a830102  vloads.mz vr6{mr1}, 0(r3)
0004a4  9f040e01  addli r9, r28, 128
0004a8  9f018e01  addli r3, r28, 192
0004ac  c2830402  vload.mz vr7{mr1}, 0(r9)
0004b0  c2840102  vload.mz vr9{mr1}, 0(r3)
0004b4  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
0004b8  96c46402  vadd.hf.mz.rn vr9{mr1}, vr9, vr6
0004bc  92320002  vadd.s.mz vr5{mr1}, zero, vr0
0004c0  12330002  vadd.s.mz vr6{mr1}, zero, vr0
0004c4  06b40300  vfp162float_l.rn vr8, vr7
0004c8  86f30300  vfp162float_h.rn vr7, vr7
0004cc  86120400  vfloat2fp16_l.rn vr5, vr8
0004d0  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
0004d4  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
0004d8  06b40400  vfp162float_l.rn vr8, vr9
0004dc  86f40400  vfp162float_h.rn vr9, vr9
0004e0  06130400  vfloat2fp16_l.rn vr6, vr8
0004e4  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
0004e8  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0004ec  86d20300  vfloat2fp16_h.rn vr5, vr7
0004f0  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0004f4  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0004f8  06d30400  vfloat2fp16_h.rn vr6, vr9
0004fc  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
000500  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
000504  46805402  vstore.mz vr5{mr1}, 0(r9)
000508  46806102  vstore.mz vr6{mr1}, 0(r3)
00050c  bffbc6fe  blt.s r13, r12, -260
000510  5bc9ffff  j -440
000514  9f0c0000  addli r25, zero, 0
000518  1f0d0000  addli r26, zero, 0
00051c  00a00000  mfence { lm }
000520  3f8787fe  blt.s r15, r8, -576
000524  8f015d18  div.f.rn r3, r26, r5
000528  0f815c18  div.f.rn r2, r25, r5
00052c  e3043f00  loadli.w r9,  24(r30)
000530  9f050000  addli r11, zero, 0
000534  0be53120  mul.f.rn r10, r3, r3
000538  8be10158  neg.f r3, r3
00053c  0b61a118  sub.f.rn r2, r2, r10
000540  1f058fd7  addli r10, r30, -5184
000544  0b619110  add.f.rn r2, r2, r9
000548  ab04803f  lui r9, 260096
00054c  0f010108  sqrt.f.rn r2, r2
000550  0f812418  div.f.rn r2, r9, r2
000554  c2000502  vload.mz vr1{mr1}, 0(r10)
000558  1f864500  addli r12, r11, 32
00055c  06b10000  vfp162float_l.rn vr2, vr1
000560  86f00000  vfp162float_h.rn vr1, vr1
000564  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
000568  92911102  vadd.f.mz.rn vr3{mr1}, r3, vr1
00056c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000570  12321002  vadd.s.mz vr4{mr1}, zero, vr1
000574  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
000578  8a113102  vmul.f.mz.rn vr3{mr1}, r2, vr3
00057c  06120100  vfloat2fp16_l.rn vr4, vr2
000580  06d20100  vfloat2fp16_h.rn vr4, vr3
000584  46004502  vstore.mz vr4{mr1}, 0(r10)
000588  4be5c7fe  ble.s r15, r12, -680
00058c  1f068500  addli r12, r10, 64
000590  9f858500  addli r11, r11, 64
000594  1f050501  addli r10, r10, 128
000598  42010602  vload.mz vr2{mr1}, 0(r12)
00059c  86310100  vfp162float_l.rn vr3, vr2
0005a0  06710100  vfp162float_h.rn vr2, vr2
0005a4  92913102  vadd.f.mz.rn vr3{mr1}, r3, vr3
0005a8  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
0005ac  8a113102  vmul.f.mz.rn vr3{mr1}, r2, vr3
0005b0  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
0005b4  86900100  vfloat2fp16_l.rn vr1, vr3
0005b8  86500100  vfloat2fp16_h.rn vr1, vr2
0005bc  46001602  vstore.mz vr1{mr1}, 0(r12)
0005c0  3fdef5fe  blt.s r11, r15, -108
0005c4  dba3ffff  j -740
0005c8  e3002f00  loadli.w r1,  16(r30)
0005cc  1f010010  addli r2, zero, 2048
0005d0  bbdc2004  bneq r1, r2, 2868
0005d4  803d0002  core_id r27
0005d8  3bf00d00  bneq r27, zero, 28
0005dc  9f000040  addli r1, zero, 8192
0005e0  2b0100f0  lui r2, 983040
0005e4  97902000  or r1, r1, r2
0005e8  2bd10000  lui r2, 13
0005ec  1f010108  addli r2, r2, 1024
0005f0  ff002200  l_gm2sm r1, r2, 0(r[5:6])
0005f4  abf00000  lui r1, 15
0005f8  00200300  mfence { sm, gm }
0005fc  1b821d00  andi r4, r27, 1
000600  9f020006  addli r5, zero, 768
000604  9b90f0ff  ori r1, r1, 4095
000608  80a10004  csr_set csr3, r1
00060c  9f000006  addli r1, zero, 768
000610  00d00100  sync_group
000614  37200200  beq r4, zero, 8
000618  9f02000a  addli r5, zero, 1280
00061c  63411f00  loadli.w r2,  12(r30)
000620  9f110000  addli r3, zero, 1
000624  3f79310c  blt.s r2, r3, 6748
000628  00510102  load_param_i r2, 2
00062c  8b101220  mul.s r1, r4, r1
000630  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000634  2bda0000  lui r20, 13
000638  abfc0000  lui r25, 15
00063c  2bfe0000  lui r28, 15
000640  9f030000  addli r7, zero, 0
000644  1bc71d00  srli r14, r27, 1
000648  9bb72200  slli r15, r5, 2
00064c  9f088fd7  addli r17, r30, -5184
000650  9f0a0005  addli r21, zero, 640
000654  1f0b0002  addli r22, zero, 256
000658  9f0b0001  addli r23, zero, 128
00065c  1f0c4000  addli r24, zero, 32
000660  1f080003  addli r16, zero, 384
000664  67071fd6  storeli.w r1, -5264(r30)
000668  abf0ffff  lui r1, 1048575
00066c  9b441100  srli r9, r2, 1
000670  1f010fd6  addli r2, r30, -5376
000674  1f0a0a08  addli r20, r20, 1024
000678  9f8c0c08  addli r25, r25, 1024
00067c  1f0e0e0c  addli r28, r28, 1536
000680  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000684  9b9000f8  ori r1, r1, 3968
000688  2bf10000  lui r2, 15
00068c  670c1fd4  storeli.w r1, -5440(r30)
000690  9f008000  addli r1, zero, 64
000694  1b1df1ff  ori r26, r2, 4095
000698  db030000  j 28
00069c  00a00300  mfence { lm, sm, gm }
0006a0  80210d04  csr_set csr3, r26
0006a4  00d00100  sync_group
0006a8  8b939310  add.s r7, r7, r9
0006ac  3fa0d300  blt.s r7, r13, 8
0006b0  5bb60200  j 5552
0006b4  0b91e310  add.s r2, r7, r14
0006b8  cb9f26fe  ble.s r13, r2, -28
0006bc  e3011f00  loadli.w r3,  8(r30)
0006c0  1f230000  addli r6, zero, 2
0006c4  0b113110  add.s r2, r2, r3
0006c8  e301efd6  loadli.w r3,  -5264(r30)
0006cc  1b31b100  slli r2, r2, 11
0006d0  17113100  or r2, r2, r3
0006d4  33110128  sext_int2long r[3:4], r2
0006d8  17396102  sll.d r[19:20], r[3:4], r6
0006dc  9f01ffd6  addli r3, r30, -5256
0006e0  2b0100f0  lui r2, 983040
0006e4  6bd50100  load.d r[11:12], 0(r3)
0006e8  17912700  or r2, r15, r2
0006ec  0b252511  add.ul r[11:12], r[11:12], r[19:20]
0006f0  7f211501  l_gm2lm r2, r17, 0(r[11:12])
0006f4  1f010000  addli r2, zero, 0
0006f8  00a00200  mfence { lm, gm }
0006fc  3b460200  bneq r4, zero, 400
000700  1f030fd6  addli r6, r30, -5376
000704  e3018fd5  loadli.w r3,  -5440(r30)
000708  c2110302  vload_mask16.mz vr3{mr1}, 0(r6)
00070c  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000710  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000714  12323002  vadd.s.mz vr4{mr1}, zero, vr3
000718  0b144111  add.s r8, r2, r20
00071c  0b932810  add.s r6, r17, r2
000720  9f810101  addli r3, r3, 128
000724  1f010104  addli r2, r2, 512
000728  1f058400  addli r10, r8, 64
00072c  9f058401  addli r11, r8, 192
000730  4a100402  vloads_mask16.mz vr0{mr1}, 0(r8)
000734  1f068301  addli r12, r6, 192
000738  42140302  vload_mask16.mz vr8{mr1}, 0(r6)
00073c  ca120502  vloads_mask16.mz vr5{mr1}, 0(r10)
000740  1f050401  addli r10, r8, 128
000744  ca930502  vloads_mask16.mz vr7{mr1}, 0(r11)
000748  9f050301  addli r11, r6, 128
00074c  c2150602  vload_mask16.mz vr11{mr1}, 0(r12)
000750  4a130502  vloads_mask16.mz vr6{mr1}, 0(r10)
000754  42950502  vload_mask16.mz vr10{mr1}, 0(r11)
000758  1f058300  addli r10, r6, 64
00075c  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
000760  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
000764  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
000768  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
00076c  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
000770  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
000774  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000778  46105502  vstore_mask16.mz vr5{mr1}, 0(r10)
00077c  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
000780  1f050fd7  addli r10, r30, -5248
000784  1f068402  addli r12, r8, 320
000788  16146202  vadd.f.mz.rn vr8{mr1}, vr4, vr6
00078c  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
000790  46906502  vstore_mask16.mz vr6{mr1}, 0(r11)
000794  9f050402  addli r11, r8, 256
000798  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00079c  4a130602  vloads_mask16.mz vr6{mr1}, 0(r12)
0007a0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0007a4  96117402  vadd.f.mz.rn vr3{mr1}, vr8, vr7
0007a8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0007ac  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0007b0  46103502  vstore_mask16.mz vr3{mr1}, 0(r10)
0007b4  ca910502  vloads_mask16.mz vr3{mr1}, 0(r11)
0007b8  9f050403  addli r11, r8, 384
0007bc  1f048403  addli r8, r8, 448
0007c0  1f050302  addli r10, r6, 256
0007c4  ca140402  vloads_mask16.mz vr9{mr1}, 0(r8)
0007c8  1f048302  addli r8, r6, 320
0007cc  c2130502  vload_mask16.mz vr7{mr1}, 0(r10)
0007d0  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
0007d4  9f050303  addli r11, r6, 384
0007d8  1f038303  addli r6, r6, 448
0007dc  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
0007e0  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
0007e4  c2950502  vload_mask16.mz vr11{mr1}, 0(r11)
0007e8  96913302  vadd.f.mz.rn vr3{mr1}, vr7, vr3
0007ec  96136502  vadd.f.mz.rn vr7{mr1}, vr10, vr6
0007f0  96129002  vadd.f.mz.rn vr5{mr1}, vr0, vr9
0007f4  16938502  vadd.f.mz.rn vr6{mr1}, vr11, vr8
0007f8  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
0007fc  1f040fd7  addli r8, r30, -5248
000800  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
000804  26913102  vmac.f.mz.rn vr2{mr1}, vr3, vr3
000808  46103502  vstore_mask16.mz vr3{mr1}, 0(r10)
00080c  42120402  vload_mask16.mz vr4{mr1}, 0(r8)
000810  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000814  13845105  setlt.u r8, r3, r21
000818  46906502  vstore_mask16.mz vr6{mr1}, 0(r11)
00081c  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
000820  96117002  vadd.f.mz.rn vr3{mr1}, vr0, vr7
000824  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
000828  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00082c  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
000830  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000834  bb1b04fe  bneq r8, zero, -284
000838  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
00083c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000840  6a710bc0  vsrl.p vr2, r22, vr0
000844  ea711bc0  vsrl.p vr3, r22, vr1
000848  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00084c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000850  6af10bc0  vsrl.p vr2, r23, vr0
000854  eaf11bc0  vsrl.p vr3, r23, vr1
000858  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00085c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000860  6af100c0  vsrl.p vr2, r1, vr0
000864  eaf110c0  vsrl.p vr3, r1, vr1
000868  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00086c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000870  6a710cc0  vsrl.p vr2, r24, vr0
000874  ea711cc0  vsrl.p vr3, r24, vr1
000878  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00087c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000880  fa110040  vextracti.f r3, 0(vr0)
000884  7a910040  vextracti.f r2, 0(vr1)
000888  db660000  j 820
00088c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000890  abf1ffff  lui r3, 1048575
000894  12311002  vadd.s.mz vr2{mr1}, zero, vr1
000898  12321002  vadd.s.mz vr4{mr1}, zero, vr1
00089c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0008a0  9b9101f8  ori r3, r3, 3968
0008a4  0b142a10  add.s r8, r20, r2
0008a8  0b932810  add.s r6, r17, r2
0008ac  9f810101  addli r3, r3, 128
0008b0  1f010104  addli r2, r2, 512
0008b4  9f050430  addli r11, r8, 6144
0008b8  1f068430  addli r12, r8, 6208
0008bc  1f050318  addli r10, r6, 3072
0008c0  9f068319  addli r13, r6, 3264
0008c4  ca920502  vloads_mask16.mz vr5{mr1}, 0(r11)
0008c8  9f050431  addli r11, r8, 6272
0008cc  4a130602  vloads_mask16.mz vr6{mr1}, 0(r12)
0008d0  1f068431  addli r12, r8, 6336
0008d4  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
0008d8  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
0008dc  ca930502  vloads_mask16.mz vr7{mr1}, 0(r11)
0008e0  4a140602  vloads_mask16.mz vr8{mr1}, 0(r12)
0008e4  9f058318  addli r11, r6, 3136
0008e8  1f060319  addli r12, r6, 3200
0008ec  42950502  vload_mask16.mz vr10{mr1}, 0(r11)
0008f0  c2150602  vload_mask16.mz vr11{mr1}, 0(r12)
0008f4  96945402  vadd.f.mz.rn vr9{mr1}, vr9, vr5
0008f8  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0008fc  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
000900  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
000904  46109502  vstore_mask16.mz vr9{mr1}, 0(r10)
000908  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
00090c  1f050fd7  addli r10, r30, -5248
000910  9f050432  addli r11, r8, 6400
000914  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
000918  96136202  vadd.f.mz.rn vr7{mr1}, vr4, vr6
00091c  16929102  vadd.f.mz.rn vr4{mr1}, vr3, vr9
000920  46106602  vstore_mask16.mz vr6{mr1}, 0(r12)
000924  1f068432  addli r12, r8, 6464
000928  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00092c  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
000930  4a130602  vloads_mask16.mz vr6{mr1}, 0(r12)
000934  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000938  96910302  vadd.f.mz.rn vr3{mr1}, vr7, vr0
00093c  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
000940  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000944  46103502  vstore_mask16.mz vr3{mr1}, 0(r10)
000948  ca910502  vloads_mask16.mz vr3{mr1}, 0(r11)
00094c  9f050433  addli r11, r8, 6528
000950  1f048433  addli r8, r8, 6592
000954  1f05031a  addli r10, r6, 3328
000958  ca140402  vloads_mask16.mz vr9{mr1}, 0(r8)
00095c  1f04831a  addli r8, r6, 3392
000960  c2130502  vload_mask16.mz vr7{mr1}, 0(r10)
000964  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
000968  9f05031b  addli r11, r6, 3456
00096c  1f03831b  addli r6, r6, 3520
000970  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
000974  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
000978  c2950502  vload_mask16.mz vr11{mr1}, 0(r11)
00097c  96913302  vadd.f.mz.rn vr3{mr1}, vr7, vr3
000980  96136502  vadd.f.mz.rn vr7{mr1}, vr10, vr6
000984  96129002  vadd.f.mz.rn vr5{mr1}, vr0, vr9
000988  16938502  vadd.f.mz.rn vr6{mr1}, vr11, vr8
00098c  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
000990  1f040fd7  addli r8, r30, -5248
000994  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
000998  26913102  vmac.f.mz.rn vr2{mr1}, vr3, vr3
00099c  46103502  vstore_mask16.mz vr3{mr1}, 0(r10)
0009a0  42120402  vload_mask16.mz vr4{mr1}, 0(r8)
0009a4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0009a8  13840105  setlt.u r8, r3, r16
0009ac  46906502  vstore_mask16.mz vr6{mr1}, 0(r11)
0009b0  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
0009b4  96117002  vadd.f.mz.rn vr3{mr1}, vr0, vr7
0009b8  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0009bc  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0009c0  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
0009c4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0009c8  3b7b04fe  bneq r8, zero, -292
0009cc  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0009d0  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0009d4  2bf1ffff  lui r2, 1048575
0009d8  1f040000  addli r8, zero, 0
0009dc  1b1101f8  ori r2, r2, 3968
0009e0  ea711bc0  vsrl.p vr3, r22, vr1
0009e4  6a710bc0  vsrl.p vr2, r22, vr0
0009e8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009ec  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009f0  eaf11bc0  vsrl.p vr3, r23, vr1
0009f4  6af10bc0  vsrl.p vr2, r23, vr0
0009f8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009fc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000a00  eaf110c0  vsrl.p vr3, r1, vr1
000a04  6af100c0  vsrl.p vr2, r1, vr0
000a08  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000a0c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000a10  ea711cc0  vsrl.p vr3, r24, vr1
000a14  6a710cc0  vsrl.p vr2, r24, vr0
000a18  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000a1c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000a20  7a930040  vextracti.f r6, 0(vr1)
000a24  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000a28  fa150040  vextracti.f r11, 0(vr0)
000a2c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
000a30  12321002  vadd.s.mz vr4{mr1}, zero, vr1
000a34  92311002  vadd.s.mz vr3{mr1}, zero, vr1
000a38  0b158a10  add.s r10, r20, r8
000a3c  8b918810  add.s r3, r17, r8
000a40  1f010101  addli r2, r2, 128
000a44  1f040404  addli r8, r8, 512
000a48  1f060518  addli r12, r10, 3072
000a4c  9f068518  addli r13, r10, 3136
000a50  9f8d8101  addli r27, r3, 192
000a54  42940102  vload_mask16.mz vr8{mr1}, 0(r3)
000a58  4a100602  vloads_mask16.mz vr0{mr1}, 0(r12)
000a5c  1f060519  addli r12, r10, 3200
000a60  ca920602  vloads_mask16.mz vr5{mr1}, 0(r13)
000a64  9f068519  addli r13, r10, 3264
000a68  c2950d02  vload_mask16.mz vr11{mr1}, 0(r27)
000a6c  4a130602  vloads_mask16.mz vr6{mr1}, 0(r12)
000a70  ca930602  vloads_mask16.mz vr7{mr1}, 0(r13)
000a74  9f860101  addli r13, r3, 128
000a78  1f868100  addli r12, r3, 64
000a7c  42950602  vload_mask16.mz vr10{mr1}, 0(r13)
000a80  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
000a84  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
000a88  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
000a8c  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
000a90  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
000a94  46105602  vstore_mask16.mz vr5{mr1}, 0(r12)
000a98  1f060fd7  addli r12, r30, -5248
000a9c  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
000aa0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000aa4  16146202  vadd.f.mz.rn vr8{mr1}, vr4, vr6
000aa8  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
000aac  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
000ab0  46907d02  vstore_mask16.mz vr7{mr1}, 0(r27)
000ab4  9f06051a  addli r13, r10, 3328
000ab8  9f0d851a  addli r27, r10, 3392
000abc  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000ac0  4a930d02  vloads_mask16.mz vr6{mr1}, 0(r27)
000ac4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000ac8  96117402  vadd.f.mz.rn vr3{mr1}, vr8, vr7
000acc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000ad0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000ad4  46103602  vstore_mask16.mz vr3{mr1}, 0(r12)
000ad8  ca910602  vloads_mask16.mz vr3{mr1}, 0(r13)
000adc  9f06051b  addli r13, r10, 3456
000ae0  1f05851b  addli r10, r10, 3520
000ae4  1f860102  addli r12, r3, 256
000ae8  ca140502  vloads_mask16.mz vr9{mr1}, 0(r10)
000aec  1f858102  addli r10, r3, 320
000af0  c2130602  vload_mask16.mz vr7{mr1}, 0(r12)
000af4  4a940602  vloads_mask16.mz vr8{mr1}, 0(r13)
000af8  9f860103  addli r13, r3, 384
000afc  9f818103  addli r3, r3, 448
000b00  42150502  vload_mask16.mz vr10{mr1}, 0(r10)
000b04  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000b08  c2950602  vload_mask16.mz vr11{mr1}, 0(r13)
000b0c  96913302  vadd.f.mz.rn vr3{mr1}, vr7, vr3
000b10  96136502  vadd.f.mz.rn vr7{mr1}, vr10, vr6
000b14  96129002  vadd.f.mz.rn vr5{mr1}, vr0, vr9
000b18  16938502  vadd.f.mz.rn vr6{mr1}, vr11, vr8
000b1c  46107502  vstore_mask16.mz vr7{mr1}, 0(r10)
000b20  1f050fd7  addli r10, r30, -5248
000b24  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
000b28  26913102  vmac.f.mz.rn vr2{mr1}, vr3, vr3
000b2c  46103602  vstore_mask16.mz vr3{mr1}, 0(r12)
000b30  42120502  vload_mask16.mz vr4{mr1}, 0(r10)
000b34  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000b38  13055105  setlt.u r10, r2, r21
000b3c  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
000b40  46905102  vstore_mask16.mz vr5{mr1}, 0(r3)
000b44  96117002  vadd.f.mz.rn vr3{mr1}, vr0, vr7
000b48  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
000b4c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000b50  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
000b54  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000b58  bb0b05fe  bneq r10, zero, -288
000b5c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
000b60  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000b64  e3461f00  loadli.w r13,  12(r30)
000b68  803d0002  core_id r27
000b6c  6a710bc0  vsrl.p vr2, r22, vr0
000b70  ea711bc0  vsrl.p vr3, r22, vr1
000b74  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000b78  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000b7c  6af10bc0  vsrl.p vr2, r23, vr0
000b80  eaf11bc0  vsrl.p vr3, r23, vr1
000b84  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000b88  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000b8c  6af100c0  vsrl.p vr2, r1, vr0
000b90  eaf110c0  vsrl.p vr3, r1, vr1
000b94  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000b98  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000b9c  6a710cc0  vsrl.p vr2, r24, vr0
000ba0  ea711cc0  vsrl.p vr3, r24, vr1
000ba4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000ba8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000bac  7a110040  vextracti.f r2, 0(vr0)
000bb0  7a940040  vextracti.f r8, 0(vr1)
000bb4  8be12510  add.f.rn r3, r11, r2
000bb8  0b618310  add.f.rn r2, r6, r8
000bbc  0b839330  div.u r6, r7, r9
000bc0  1b336300  slli r6, r6, 6
000bc4  1b030304  andi r6, r6, 64
000bc8  1713b301  or r6, r6, r27
000bcc  1b342300  slli r8, r6, 2
000bd0  1b03e307  andi r6, r6, 126
000bd4  0b159411  add.s r10, r8, r25
000bd8  1b332300  slli r6, r6, 2
000bdc  73603500  stores.w r3, 0(r10)
000be0  8b11c411  add.s r3, r8, r28
000be4  1b144400  ori r8, r8, 4
000be8  73e02100  stores.w r2, 0(r3)
000bec  0b119411  add.s r2, r8, r25
000bf0  8b119311  add.s r3, r6, r25
000bf4  0b14c411  add.s r8, r8, r28
000bf8  0b13c311  add.s r6, r6, r28
000bfc  00a00300  mfence { lm, sm, gm }
000c00  80210d04  csr_set csr3, r26
000c04  00d00100  sync_group
000c08  6f410100  loads.w r2, 0(r2)
000c0c  efc10100  loads.w r3, 0(r3)
000c10  6f440400  loads.w r8, 0(r8)
000c14  6f430300  loads.w r6, 0(r6)
000c18  0b613110  add.f.rn r2, r2, r3
000c1c  8b616410  add.f.rn r3, r8, r6
000c20  2b04003a  lui r8, 237568
000c24  0b638120  mul.f.rn r6, r2, r8
000c28  0be18120  mul.f.rn r2, r3, r8
000c2c  1f040000  addli r8, zero, 0
000c30  8b616320  mul.f.rn r3, r6, r6
000c34  0b613118  sub.f.rn r2, r2, r3
000c38  e3013f00  loadli.w r3,  24(r30)
000c3c  0b613110  add.f.rn r2, r2, r3
000c40  ab01803f  lui r3, 260096
000c44  0f010108  sqrt.f.rn r2, r2
000c48  0f812118  div.f.rn r2, r3, r2
000c4c  8b610358  neg.f r3, r6
000c50  1f038fd7  addli r6, r30, -5184
000c54  1f058300  addli r10, r6, 64
000c58  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
000c5c  9f054400  addli r11, r8, 32
000c60  c2100502  vload_mask16.mz vr1{mr1}, 0(r10)
000c64  9385b206  setle.u r11, r5, r11
000c68  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
000c6c  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
000c70  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
000c74  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
000c78  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
000c7c  46101502  vstore_mask16.mz vr1{mr1}, 0(r10)
000c80  bbf00500  bneq r11, zero, 60
000c84  1f050301  addli r10, r6, 128
000c88  9f058301  addli r11, r6, 192
000c8c  1f048400  addli r8, r8, 64
000c90  1f030302  addli r6, r6, 256
000c94  42100502  vload_mask16.mz vr0{mr1}, 0(r10)
000c98  c2900502  vload_mask16.mz vr1{mr1}, 0(r11)
000c9c  13065404  setlt.u r12, r8, r5
000ca0  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
000ca4  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
000ca8  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
000cac  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
000cb0  46100502  vstore_mask16.mz vr0{mr1}, 0(r10)
000cb4  46901502  vstore_mask16.mz vr1{mr1}, 0(r11)
000cb8  3b7e06fe  bneq r12, zero, -100
000cbc  6b550f00  load.d r[11:12], 0(r30)
000cc0  2b0100f0  lui r2, 983040
000cc4  00a00000  mfence { lm }
000cc8  17912700  or r2, r15, r2
000ccc  0b252511  add.ul r[11:12], r[11:12], r[19:20]
000cd0  7f311501  s_lm2gm r2, r17, 0(r[11:12])
000cd4  00a00200  mfence { lm, gm }
000cd8  5b3affff  j -1584
000cdc  80300002  core_id r1
000ce0  1f210000  addli r2, zero, 2
000ce4  37ce2006  beq r1, r2, 3984
000ce8  1f110000  addli r2, zero, 1
000cec  37af2002  beq r1, r2, 1992
000cf0  bb8e0006  bneq r1, zero, 4000
000cf4  63012f00  loadli.w r2,  16(r30)
000cf8  ab0100f0  lui r3, 983040
000cfc  1b312100  slli r2, r2, 2
000d00  17113100  or r2, r2, r3
000d04  aba10000  lui r3, 10
000d08  9f810108  addli r3, r3, 1024
000d0c  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000d10  5bf00100  j 3968
000d14  63012f00  loadli.w r2,  16(r30)
000d18  ab0100f0  lui r3, 983040
000d1c  1b311100  slli r2, r2, 1
000d20  17113100  or r2, r2, r3
000d24  ab110000  lui r3, 1
000d28  9f810100  addli r3, r3, 0
000d2c  7f013300  l_gm2sm r2, r3, 0(r[7:8])
000d30  5b040000  j 32
000d34  63012f00  loadli.w r2,  16(r30)
000d38  ab0100f0  lui r3, 983040
000d3c  1b311100  slli r2, r2, 1
000d40  17113100  or r2, r2, r3
000d44  ab210000  lui r3, 2
000d48  9f810100  addli r3, r3, 0
000d4c  7f013400  l_gm2sm r2, r3, 0(r[9:10])
000d50  2bf10000  lui r2, 15
000d54  e3411f00  loadli.w r3,  12(r30)
000d58  00200300  mfence { sm, gm }
000d5c  1b11f1ff  ori r2, r2, 4095
000d60  80210104  csr_set csr3, r2
000d64  00d00100  sync_group
000d68  4bec1108  ble.s r3, r1, 4888
000d6c  63012f00  loadli.w r2,  16(r30)
000d70  e3412f00  loadli.w r3,  20(r30)
000d74  ab0b0000  lui r23, 0
000d78  1f140000  addli r8, zero, 1
000d7c  1f068fd7  addli r12, r30, -5184
000d80  9f080002  addli r17, zero, 256
000d84  9f090001  addli r19, zero, 128
000d88  1f0a8000  addli r20, zero, 64
000d8c  9f0a4000  addli r21, zero, 32
000d90  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000d94  9f8b0b00  addli r23, r23, 0
000d98  0b133110  add.s r6, r2, r3
000d9c  1b321100  slli r4, r2, 1
000da0  b3020108  fix2float.rn r5, r2
000da4  1f71f3ff  addli r2, r6, -1
000da8  1bb31100  slli r6, r3, 1
000dac  8b133130  div.s r7, r2, r3
000db0  2bf1ffff  lui r2, 1048575
000db4  1b18f1ff  ori r16, r2, 4095
000db8  5b070000  j 56
000dbc  00a00000  mfence { lm }
000dc0  eb540f00  load.d r[10:11], 0(r30)
000dc4  2b0100f0  lui r2, 983040
000dc8  1f068fd7  addli r12, r30, -5184
000dcc  80510102  load_param_i r3, 2
000dd0  17112200  or r2, r4, r2
000dd4  8b901110  add.s r1, r3, r1
000dd8  0ba59411  add.ul r[11:12], r[10:11], r[26:27]
000ddc  7f31c500  s_lm2gm r2, r12, 0(r[11:12])
000de0  00a00200  mfence { lm, gm }
000de4  63411f00  loadli.w r2,  12(r30)
000de8  3fa02000  blt.s r1, r2, 8
000dec  db520200  j 4756
000df0  63011f00  loadli.w r2,  8(r30)
000df4  0b912010  add.s r2, r1, r2
000df8  0b11f120  mul.s r2, r2, r15
000dfc  33110128  sext_int2long r[3:4], r2
000e00  973c8102  sll.d r[26:27], r[3:4], r8
000e04  9f01ffd6  addli r3, r30, -5256
000e08  2b0100f0  lui r2, 983040
000e0c  ebd40100  load.d r[10:11], 0(r3)
000e10  17112200  or r2, r4, r2
000e14  0ba59411  add.ul r[11:12], r[10:11], r[26:27]
000e18  7f21c500  l_gm2lm r2, r12, 0(r[11:12])
000e1c  00a00200  mfence { lm, gm }
000e20  3fc78300  blt.s r7, r8, 464
000e24  1f0e0000  addli r28, zero, 0
000e28  9f0d0000  addli r27, zero, 0
000e2c  9f050000  addli r11, zero, 0
000e30  db0c0000  j 100
000e34  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
000e38  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000e3c  9f950500  addli r11, r11, 1
000e40  6af138c0  vsrl.p vr2, r17, vr3
000e44  6af218c0  vsrl.p vr4, r17, vr1
000e48  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
000e4c  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000e50  eaf129c0  vsrl.p vr3, r19, vr2
000e54  6af219c0  vsrl.p vr4, r19, vr1
000e58  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000e5c  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000e60  ea712ac0  vsrl.p vr3, r20, vr2
000e64  6a721ac0  vsrl.p vr4, r20, vr1
000e68  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000e6c  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000e70  eaf12ac0  vsrl.p vr3, r21, vr2
000e74  6af21ac0  vsrl.p vr4, r21, vr1
000e78  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000e7c  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000e80  7a110140  vextracti.f r2, 0(vr2)
000e84  fa910040  vextracti.f r3, 0(vr1)
000e88  0b6e2e10  add.f.rn r28, r28, r2
000e8c  8bed3d10  add.f.rn r27, r27, r3
000e90  b7a57500  beq r11, r7, 360
000e94  1f810500  addli r2, r11, 0
000e98  37301701  beq r14, r17, 12
000e9c  17a10501  xor r2, r11, r16
000ea0  0b912310  add.s r2, r7, r2
000ea4  8b11e120  mul.s r3, r2, r14
000ea8  12320002  vadd.s.mz vr4{mr1}, zero, vr0
000eac  92310002  vadd.s.mz vr3{mr1}, zero, vr0
000eb0  12310002  vadd.s.mz vr2{mr1}, zero, vr0
000eb4  92300002  vadd.s.mz vr1{mr1}, zero, vr0
000eb8  8b913718  sub.s r3, r15, r3
000ebc  0b96e140  min.s r12, r3, r14
000ec0  bf5d86fe  blt.s r12, r8, -140
000ec4  92300002  vadd.s.mz vr1{mr1}, zero, vr0
000ec8  12310002  vadd.s.mz vr2{mr1}, zero, vr0
000ecc  92310002  vadd.s.mz vr3{mr1}, zero, vr0
000ed0  12320002  vadd.s.mz vr4{mr1}, zero, vr0
000ed4  9f060000  addli r13, zero, 0
000ed8  0b152320  mul.s r10, r6, r2
000edc  1f0b8fd7  addli r22, r30, -5184
000ee0  1f890b00  addli r18, r23, 0
000ee4  8b11a910  add.s r3, r18, r10
000ee8  9f848600  addli r9, r13, 64
000eec  ca820102  vloads.mz vr5{mr1}, 0(r3)
000ef0  1f818100  addli r2, r3, 64
000ef4  4a030102  vloads.mz vr6{mr1}, 0(r2)
000ef8  0b11ab10  add.s r2, r22, r10
000efc  c2030102  vload.mz vr7{mr1}, 0(r2)
000f00  1f0c8100  addli r24, r2, 64
000f04  42040c02  vload.mz vr8{mr1}, 0(r24)
000f08  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
000f0c  92320002  vadd.s.mz vr5{mr1}, zero, vr0
000f10  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
000f14  06b40300  vfp162float_l.rn vr8, vr7
000f18  86f30300  vfp162float_h.rn vr7, vr7
000f1c  86340300  vfp162float_l.rn vr9, vr6
000f20  06730300  vfp162float_h.rn vr6, vr6
000f24  86120400  vfloat2fp16_l.rn vr5, vr8
000f28  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
000f2c  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
000f30  12340002  vadd.s.mz vr8{mr1}, zero, vr0
000f34  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
000f38  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
000f3c  06940400  vfloat2fp16_l.rn vr8, vr9
000f40  86d20300  vfloat2fp16_h.rn vr5, vr7
000f44  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
000f48  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
000f4c  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
000f50  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000f54  06540300  vfloat2fp16_h.rn vr8, vr6
000f58  46005102  vstore.mz vr5{mr1}, 0(r2)
000f5c  46008c02  vstore.mz vr8{mr1}, 0(r24)
000f60  4b5b96fe  ble.s r12, r9, -300
000f64  9f840101  addli r9, r3, 128
000f68  9f818101  addli r3, r3, 192
000f6c  9f860601  addli r13, r13, 128
000f70  1f090902  addli r18, r18, 256
000f74  1f0b0b02  addli r22, r22, 256
000f78  ca820402  vloads.mz vr5{mr1}, 0(r9)
000f7c  4a830102  vloads.mz vr6{mr1}, 0(r3)
000f80  9f040101  addli r9, r2, 128
000f84  1f018101  addli r2, r2, 192
000f88  c2830402  vload.mz vr7{mr1}, 0(r9)
000f8c  c2040102  vload.mz vr9{mr1}, 0(r2)
000f90  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
000f94  96c46402  vadd.hf.mz.rn vr9{mr1}, vr9, vr6
000f98  92320002  vadd.s.mz vr5{mr1}, zero, vr0
000f9c  12330002  vadd.s.mz vr6{mr1}, zero, vr0
000fa0  06b40300  vfp162float_l.rn vr8, vr7
000fa4  86f30300  vfp162float_h.rn vr7, vr7
000fa8  86120400  vfloat2fp16_l.rn vr5, vr8
000fac  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
000fb0  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
000fb4  06b40400  vfp162float_l.rn vr8, vr9
000fb8  86f40400  vfp162float_h.rn vr9, vr9
000fbc  06130400  vfloat2fp16_l.rn vr6, vr8
000fc0  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
000fc4  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
000fc8  86d20300  vfloat2fp16_h.rn vr5, vr7
000fcc  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
000fd0  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
000fd4  06d30400  vfloat2fp16_h.rn vr6, vr9
000fd8  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
000fdc  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
000fe0  46805402  vstore.mz vr5{mr1}, 0(r9)
000fe4  46006102  vstore.mz vr6{mr1}, 0(r2)
000fe8  bffbc6fe  blt.s r13, r12, -260
000fec  5bc9ffff  j -440
000ff0  9f0d0000  addli r27, zero, 0
000ff4  1f0e0000  addli r28, zero, 0
000ff8  00a00000  mfence { lm }
000ffc  3f8787fe  blt.s r15, r8, -576
001000  0f015e18  div.f.rn r2, r28, r5
001004  0f855d18  div.f.rn r10, r27, r5
001008  e3043f00  loadli.w r9,  24(r30)
00100c  ab160000  lui r13, 1
001010  2b290000  lui r18, 2
001014  9f010000  addli r3, zero, 0
001018  1f068fd7  addli r12, r30, -5184
00101c  9f860600  addli r13, r13, 0
001020  1f090900  addli r18, r18, 0
001024  8b652120  mul.f.rn r11, r2, r2
001028  0b65b518  sub.f.rn r10, r10, r11
00102c  8b650158  neg.f r11, r2
001030  0b659510  add.f.rn r10, r10, r9
001034  ab04803f  lui r9, 260096
001038  0f050508  sqrt.f.rn r10, r10
00103c  0f85a418  div.f.rn r10, r9, r10
001040  c2000602  vload.mz vr1{mr1}, 0(r12)
001044  4a810602  vloads.mz vr2{mr1}, 0(r13)
001048  ca010902  vloads.mz vr3{mr1}, 0(r18)
00104c  1f814100  addli r2, r3, 32
001050  06b20000  vfp162float_l.rn vr4, vr1
001054  86f00000  vfp162float_h.rn vr1, vr1
001058  12924502  vadd.f.mz.rn vr4{mr1}, r11, vr4
00105c  92901502  vadd.f.mz.rn vr1{mr1}, r11, vr1
001060  86320100  vfp162float_l.rn vr5, vr2
001064  06b30100  vfp162float_l.rn vr6, vr3
001068  06710100  vfp162float_h.rn vr2, vr2
00106c  86f10100  vfp162float_h.rn vr3, vr3
001070  8a131502  vmul.f.mz.rn vr7{mr1}, r10, vr1
001074  0a124502  vmul.f.mz.rn vr4{mr1}, r10, vr4
001078  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
00107c  a6912302  vmac.f.mz.rn vr3{mr1}, vr7, vr2
001080  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
001084  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001088  06110300  vfloat2fp16_l.rn vr2, vr6
00108c  06d10100  vfloat2fp16_h.rn vr2, vr3
001090  46002602  vstore.mz vr2{mr1}, 0(r12)
001094  cba427fe  ble.s r15, r2, -728
001098  1f818600  addli r2, r13, 64
00109c  1f0b8600  addli r22, r12, 64
0010a0  9f818100  addli r3, r3, 64
0010a4  9f860601  addli r13, r13, 128
0010a8  1f060601  addli r12, r12, 128
0010ac  4a010102  vloads.mz vr2{mr1}, 0(r2)
0010b0  1f018900  addli r2, r18, 64
0010b4  c2010b02  vload.mz vr3{mr1}, 0(r22)
0010b8  1f090901  addli r18, r18, 128
0010bc  4a020102  vloads.mz vr4{mr1}, 0(r2)
0010c0  86b20100  vfp162float_l.rn vr5, vr3
0010c4  86f10100  vfp162float_h.rn vr3, vr3
0010c8  92925502  vadd.f.mz.rn vr5{mr1}, r11, vr5
0010cc  92913502  vadd.f.mz.rn vr3{mr1}, r11, vr3
0010d0  06330100  vfp162float_l.rn vr6, vr2
0010d4  06710100  vfp162float_h.rn vr2, vr2
0010d8  8a125502  vmul.f.mz.rn vr5{mr1}, r10, vr5
0010dc  8a113502  vmul.f.mz.rn vr3{mr1}, r10, vr3
0010e0  86330200  vfp162float_l.rn vr7, vr4
0010e4  06720200  vfp162float_h.rn vr4, vr4
0010e8  a6936202  vmac.f.mz.rn vr7{mr1}, vr5, vr6
0010ec  26922102  vmac.f.mz.rn vr4{mr1}, vr3, vr2
0010f0  86900300  vfloat2fp16_l.rn vr1, vr7
0010f4  86500200  vfloat2fp16_h.rn vr1, vr4
0010f8  46001b02  vstore.mz vr1{mr1}, 0(r22)
0010fc  3f9df1fe  blt.s r3, r15, -188
001100  db97ffff  j -836
001104  80300002  core_id r1
001108  bb800000  bneq r1, zero, 32
00110c  63012f00  loadli.w r2,  16(r30)
001110  ab0100f0  lui r3, 983040
001114  1b312100  slli r2, r2, 2
001118  17113100  or r2, r2, r3
00111c  ab010100  lui r3, 16
001120  9f8101f0  addli r3, r3, -2048
001124  7f013200  l_gm2sm r2, r3, 0(r[5:6])
001128  2bf10000  lui r2, 15
00112c  e3411f00  loadli.w r3,  12(r30)
001130  00200300  mfence { sm, gm }
001134  1b11f1ff  ori r2, r2, 4095
001138  80210104  csr_set csr3, r2
00113c  00d00100  sync_group
001140  4b8d1106  ble.s r3, r1, 3904
001144  63012f00  loadli.w r2,  16(r30)
001148  e3412f00  loadli.w r3,  20(r30)
00114c  ab0b0100  lui r23, 16
001150  1f068fd7  addli r12, r30, -5184
001154  1f180000  addli r16, zero, 1
001158  1f090002  addli r18, zero, 256
00115c  9f090001  addli r19, zero, 128
001160  1f0a8000  addli r20, zero, 64
001164  9f0a4000  addli r21, zero, 32
001168  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00116c  9f8b0bf0  addli r23, r23, -2048
001170  0b133110  add.s r6, r2, r3
001174  1b322100  slli r4, r2, 2
001178  33010108  fix2float.rn r2, r2
00117c  67072fd6  storeli.w r2, -5264(r30)
001180  1f71f3ff  addli r2, r6, -1
001184  1bb32100  slli r6, r3, 2
001188  8b133130  div.s r7, r2, r3
00118c  2bf1ffff  lui r2, 1048575
001190  9b18f1ff  ori r17, r2, 4095
001194  1f010fd7  addli r2, r30, -5248
001198  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
00119c  5b070000  j 56
0011a0  00a00000  mfence { lm }
0011a4  6b540f00  load.d r[9:10], 0(r30)
0011a8  2b0100f0  lui r2, 983040
0011ac  1f068fd7  addli r12, r30, -5184
0011b0  80510102  load_param_i r3, 2
0011b4  17112200  or r2, r4, r2
0011b8  8b901110  add.s r1, r3, r1
0011bc  0b258411  add.ul r[11:12], r[9:10], r[25:26]
0011c0  7f31c500  s_lm2gm r2, r12, 0(r[11:12])
0011c4  00a00200  mfence { lm, gm }
0011c8  63411f00  loadli.w r2,  12(r30)
0011cc  3fa02000  blt.s r1, r2, 8
0011d0  5bd60100  j 3760
0011d4  63011f00  loadli.w r2,  8(r30)
0011d8  9f220000  addli r5, zero, 2
0011dc  0b912010  add.s r2, r1, r2
0011e0  0b11f120  mul.s r2, r2, r15
0011e4  33110128  sext_int2long r[3:4], r2
0011e8  173c5102  sll.d r[25:26], r[3:4], r5
0011ec  9f01ffd6  addli r3, r30, -5256
0011f0  2b0100f0  lui r2, 983040
0011f4  6bd40100  load.d r[9:10], 0(r3)
0011f8  17112200  or r2, r4, r2
0011fc  0b258411  add.ul r[11:12], r[9:10], r[25:26]
001200  7f21c500  l_gm2lm r2, r12, 0(r[11:12])
001204  00a00200  mfence { lm, gm }
001208  bfa70301  blt.s r7, r16, 488
00120c  9f050000  addli r11, zero, 0
001210  1f0d0000  addli r26, zero, 0
001214  9f0d0000  addli r27, zero, 0
001218  db0c0000  j 100
00121c  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001220  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001224  9f9d0d00  addli r27, r27, 1
001228  6a7109c0  vsrl.p vr2, r18, vr0
00122c  ea7119c0  vsrl.p vr3, r18, vr1
001230  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001234  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001238  6af109c0  vsrl.p vr2, r19, vr0
00123c  eaf119c0  vsrl.p vr3, r19, vr1
001240  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001244  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001248  6a710ac0  vsrl.p vr2, r20, vr0
00124c  ea711ac0  vsrl.p vr3, r20, vr1
001250  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001254  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001258  6af10ac0  vsrl.p vr2, r21, vr0
00125c  eaf11ac0  vsrl.p vr3, r21, vr1
001260  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001264  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001268  7a110040  vextracti.f r2, 0(vr0)
00126c  fa910040  vextracti.f r3, 0(vr1)
001270  8be52510  add.f.rn r11, r11, r2
001274  0b6d3d10  add.f.rn r26, r26, r3
001278  37867d00  beq r27, r7, 384
00127c  9f810d00  addli r3, r27, 0
001280  37302701  beq r14, r18, 12
001284  17a11d01  xor r2, r27, r17
001288  8b912310  add.s r3, r7, r2
00128c  0b91e120  mul.s r2, r3, r14
001290  0b912718  sub.s r2, r15, r2
001294  0b15e140  min.s r10, r2, r14
001298  1f010fd7  addli r2, r30, -5248
00129c  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0012a0  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0012a4  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0012a8  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0012ac  bf4d05ff  blt.s r10, r16, -144
0012b0  9f020fd7  addli r5, r30, -5248
0012b4  1f010000  addli r2, zero, 0
0012b8  8b113320  mul.s r3, r6, r3
0012bc  1f068fd7  addli r12, r30, -5184
0012c0  9f860b00  addli r13, r23, 0
0012c4  42920202  vload_mask16.mz vr4{mr1}, 0(r5)
0012c8  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0012cc  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0012d0  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0012d4  0b9b3610  add.s r22, r13, r3
0012d8  0b1e3610  add.s r28, r12, r3
0012dc  1f048b00  addli r8, r22, 64
0012e0  ca120b02  vloads_mask16.mz vr5{mr1}, 0(r22)
0012e4  9f048b01  addli r9, r22, 192
0012e8  c2140e02  vload_mask16.mz vr9{mr1}, 0(r28)
0012ec  9f028e01  addli r5, r28, 192
0012f0  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
0012f4  1f040b01  addli r8, r22, 128
0012f8  4a940402  vloads_mask16.mz vr8{mr1}, 0(r9)
0012fc  9f040e01  addli r9, r28, 128
001300  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
001304  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
001308  c2950402  vload_mask16.mz vr11{mr1}, 0(r9)
00130c  1f048e00  addli r8, r28, 64
001310  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
001314  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001318  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
00131c  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
001320  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
001324  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001328  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00132c  46105e02  vstore_mask16.mz vr5{mr1}, 0(r28)
001330  46106402  vstore_mask16.mz vr6{mr1}, 0(r8)
001334  1f048100  addli r8, r2, 64
001338  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
00133c  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001340  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001344  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001348  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00134c  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
001350  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
001354  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001358  4b1b85fe  ble.s r10, r8, -316
00135c  1f040b02  addli r8, r22, 256
001360  9f048b02  addli r9, r22, 320
001364  9f020e02  addli r5, r28, 256
001368  1f010101  addli r2, r2, 128
00136c  9f860604  addli r13, r13, 512
001370  1f060604  addli r12, r12, 512
001374  4a100402  vloads_mask16.mz vr0{mr1}, 0(r8)
001378  1f040b03  addli r8, r22, 384
00137c  ca920402  vloads_mask16.mz vr5{mr1}, 0(r9)
001380  9f048b03  addli r9, r22, 448
001384  42940202  vload_mask16.mz vr8{mr1}, 0(r5)
001388  1f0b8e03  addli r22, r28, 448
00138c  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
001390  ca930402  vloads_mask16.mz vr7{mr1}, 0(r9)
001394  9f040e03  addli r9, r28, 384
001398  1f048e02  addli r8, r28, 320
00139c  c2150b02  vload_mask16.mz vr11{mr1}, 0(r22)
0013a0  42950402  vload_mask16.mz vr10{mr1}, 0(r9)
0013a4  c2140402  vload_mask16.mz vr9{mr1}, 0(r8)
0013a8  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0013ac  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0013b0  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0013b4  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
0013b8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0013bc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0013c0  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
0013c4  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
0013c8  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0013cc  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0013d0  46906402  vstore_mask16.mz vr6{mr1}, 0(r9)
0013d4  46107b02  vstore_mask16.mz vr7{mr1}, 0(r22)
0013d8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0013dc  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0013e0  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0013e4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0013e8  bf3ba1fe  blt.s r2, r10, -276
0013ec  5bc6ffff  j -464
0013f0  1f0d0000  addli r26, zero, 0
0013f4  9f050000  addli r11, zero, 0
0013f8  00a00000  mfence { lm }
0013fc  bf9607ff  blt.s r15, r16, -604
001400  6301efd6  loadli.w r2,  -5264(r30)
001404  e3023f00  loadli.w r5,  24(r30)
001408  8f812518  div.f.rn r3, r11, r2
00140c  0f012d18  div.f.rn r2, r26, r2
001410  9f050000  addli r11, zero, 0
001414  0be53120  mul.f.rn r10, r3, r3
001418  8be10158  neg.f r3, r3
00141c  0b61a118  sub.f.rn r2, r2, r10
001420  1f058fd7  addli r10, r30, -5184
001424  0b615110  add.f.rn r2, r2, r5
001428  ab02803f  lui r5, 260096
00142c  0f010108  sqrt.f.rn r2, r2
001430  0f812218  div.f.rn r2, r5, r2
001434  1f068500  addli r12, r10, 64
001438  c2100502  vload_mask16.mz vr1{mr1}, 0(r10)
00143c  9f864500  addli r13, r11, 32
001440  42110602  vload_mask16.mz vr2{mr1}, 0(r12)
001444  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
001448  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
00144c  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
001450  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
001454  46101502  vstore_mask16.mz vr1{mr1}, 0(r10)
001458  46102602  vstore_mask16.mz vr2{mr1}, 0(r12)
00145c  4b95d7fe  ble.s r15, r13, -700
001460  1f060501  addli r12, r10, 128
001464  9f068501  addli r13, r10, 192
001468  9f858500  addli r11, r11, 64
00146c  1f050502  addli r10, r10, 256
001470  c2100602  vload_mask16.mz vr1{mr1}, 0(r12)
001474  42910602  vload_mask16.mz vr2{mr1}, 0(r13)
001478  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
00147c  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
001480  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
001484  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
001488  46101602  vstore_mask16.mz vr1{mr1}, 0(r12)
00148c  46902602  vstore_mask16.mz vr2{mr1}, 0(r13)
001490  bf9ef5fe  blt.s r11, r15, -92
001494  dba1ffff  j -756
001498  9f000040  addli r1, zero, 8192
00149c  2b0100f0  lui r2, 983040
0014a0  97902000  or r1, r1, r2
0014a4  2b610000  lui r2, 6
0014a8  1f010100  addli r2, r2, 0
0014ac  ff002300  l_gm2sm r1, r2, 0(r[7:8])
0014b0  db070000  j 60
0014b4  63012f00  loadli.w r2,  16(r30)
0014b8  ab0100f0  lui r3, 983040
0014bc  1b312100  slli r2, r2, 2
0014c0  17113100  or r2, r2, r3
0014c4  abb10000  lui r3, 11
0014c8  9f810108  addli r3, r3, 1024
0014cc  7f013300  l_gm2sm r2, r3, 0(r[7:8])
0014d0  5bf80000  j 1984
0014d4  9f000040  addli r1, zero, 8192
0014d8  2b0100f0  lui r2, 983040
0014dc  97902000  or r1, r1, r2
0014e0  2b810000  lui r2, 8
0014e4  1f010100  addli r2, r2, 0
0014e8  ff002400  l_gm2sm r1, r2, 0(r[9:10])
0014ec  abf00000  lui r1, 15
0014f0  00200300  mfence { sm, gm }
0014f4  1b011500  andi r2, r10, 1
0014f8  9f020006  addli r5, zero, 768
0014fc  9b90f0ff  ori r1, r1, 4095
001500  80a10004  csr_set csr3, r1
001504  9f000006  addli r1, zero, 768
001508  00d00100  sync_group
00150c  67072fd6  storeli.w r2, -5264(r30)
001510  37200100  beq r2, zero, 8
001514  9f02000a  addli r5, zero, 1280
001518  63411f00  loadli.w r2,  12(r30)
00151c  9f110000  addli r3, zero, 1
001520  bf0d3104  blt.s r2, r3, 2912
001524  e301efd6  loadli.w r3,  -5264(r30)
001528  00510102  load_param_i r2, 2
00152c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001530  2b4b0000  lui r22, 4
001534  2bae0000  lui r28, 10
001538  2ba70000  lui r14, 10
00153c  1f030000  addli r6, zero, 0
001540  9b441500  srli r9, r10, 1
001544  9bb72200  slli r15, r5, 2
001548  9f098fd7  addli r19, r30, -5184
00154c  9f0b0005  addli r23, zero, 640
001550  1f0d8000  addli r26, zero, 64
001554  9f0d4000  addli r27, zero, 32
001558  9f0a0003  addli r21, zero, 384
00155c  1b441100  srli r8, r2, 1
001560  2b610000  lui r2, 6
001564  1f0b0b00  addli r22, r22, 0
001568  1f0e0e00  addli r28, r28, 0
00156c  1f070704  addli r14, r14, 512
001570  8b901120  mul.s r1, r3, r1
001574  1f010100  addli r2, r2, 0
001578  67001fd6  storeli.w r1, -5376(r30)
00157c  9bb02000  slli r1, r1, 2
001580  0b982010  add.s r16, r1, r2
001584  2b810000  lui r2, 8
001588  1f010100  addli r2, r2, 0
00158c  8b982010  add.s r17, r1, r2
001590  abf0ffff  lui r1, 1048575
001594  1f018fd5  addli r2, r30, -5440
001598  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
00159c  9b9000f8  ori r1, r1, 3968
0015a0  2bf10000  lui r2, 15
0015a4  e74b1fd4  storeli.w r1, -5444(r30)
0015a8  9f000001  addli r1, zero, 128
0015ac  1b19f1ff  ori r18, r2, 4095
0015b0  db030000  j 28
0015b4  00a00300  mfence { lm, sm, gm }
0015b8  80210904  csr_set csr3, r18
0015bc  00d00100  sync_group
0015c0  0b138310  add.s r6, r6, r8
0015c4  3f20d300  blt.s r6, r13, 8
0015c8  5bd30000  j 1688
0015cc  0b119310  add.s r2, r6, r9
0015d0  cb9f26fe  ble.s r13, r2, -28
0015d4  e3011f00  loadli.w r3,  8(r30)
0015d8  1f220000  addli r4, zero, 2
0015dc  9f03ffd6  addli r7, r30, -5256
0015e0  0b113110  add.s r2, r2, r3
0015e4  e3010fd6  loadli.w r3,  -5376(r30)
0015e8  1b31b100  slli r2, r2, 11
0015ec  17113100  or r2, r2, r3
0015f0  33110128  sext_int2long r[3:4], r2
0015f4  173c4102  sll.d r[25:26], r[3:4], r4
0015f8  ebd10300  load.d r[4:5], 0(r7)
0015fc  2b0100f0  lui r2, 983040
001600  17912700  or r2, r15, r2
001604  8ba18111  add.ul r[4:5], r[4:5], r[25:26]
001608  7fa13101  l_gm2lm r2, r19, 0(r[4:5])
00160c  00a00200  mfence { lm, gm }
001610  6301efd6  loadli.w r2,  -5264(r30)
001614  3b660100  bneq r2, zero, 408
001618  1f028fd5  addli r4, r30, -5440
00161c  e3417fd5  loadli.w r3,  -5444(r30)
001620  1f010000  addli r2, zero, 0
001624  c2110202  vload_mask16.mz vr3{mr1}, 0(r4)
001628  92303002  vadd.s.mz vr1{mr1}, zero, vr3
00162c  12313002  vadd.s.mz vr2{mr1}, zero, vr3
001630  12323002  vadd.s.mz vr4{mr1}, zero, vr3
001634  8b136111  add.s r7, r2, r22
001638  0b922910  add.s r4, r19, r2
00163c  9f810101  addli r3, r3, 128
001640  1f010104  addli r2, r2, 512
001644  1f858300  addli r10, r7, 64
001648  9f858301  addli r11, r7, 192
00164c  4a900302  vloads_mask16.mz vr0{mr1}, 0(r7)
001650  1f068201  addli r12, r4, 192
001654  42140202  vload_mask16.mz vr8{mr1}, 0(r4)
001658  ca120502  vloads_mask16.mz vr5{mr1}, 0(r10)
00165c  1f850301  addli r10, r7, 128
001660  ca930502  vloads_mask16.mz vr7{mr1}, 0(r11)
001664  9f050201  addli r11, r4, 128
001668  c2150602  vload_mask16.mz vr11{mr1}, 0(r12)
00166c  4a130502  vloads_mask16.mz vr6{mr1}, 0(r10)
001670  42950502  vload_mask16.mz vr10{mr1}, 0(r11)
001674  1f058200  addli r10, r4, 64
001678  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
00167c  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
001680  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
001684  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001688  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
00168c  46100202  vstore_mask16.mz vr0{mr1}, 0(r4)
001690  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001694  46105502  vstore_mask16.mz vr5{mr1}, 0(r10)
001698  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
00169c  1f050fd7  addli r10, r30, -5248
0016a0  1f868302  addli r12, r7, 320
0016a4  16146202  vadd.f.mz.rn vr8{mr1}, vr4, vr6
0016a8  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0016ac  46906502  vstore_mask16.mz vr6{mr1}, 0(r11)
0016b0  9f850302  addli r11, r7, 256
0016b4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0016b8  4a130602  vloads_mask16.mz vr6{mr1}, 0(r12)
0016bc  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0016c0  96117402  vadd.f.mz.rn vr3{mr1}, vr8, vr7
0016c4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0016c8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0016cc  46103502  vstore_mask16.mz vr3{mr1}, 0(r10)
0016d0  ca910502  vloads_mask16.mz vr3{mr1}, 0(r11)
0016d4  9f850303  addli r11, r7, 384
0016d8  9f838303  addli r7, r7, 448
0016dc  1f050202  addli r10, r4, 256
0016e0  ca940302  vloads_mask16.mz vr9{mr1}, 0(r7)
0016e4  9f038202  addli r7, r4, 320
0016e8  c2130502  vload_mask16.mz vr7{mr1}, 0(r10)
0016ec  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
0016f0  9f050203  addli r11, r4, 384
0016f4  1f028203  addli r4, r4, 448
0016f8  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
0016fc  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
001700  c2950502  vload_mask16.mz vr11{mr1}, 0(r11)
001704  96913302  vadd.f.mz.rn vr3{mr1}, vr7, vr3
001708  96136502  vadd.f.mz.rn vr7{mr1}, vr10, vr6
00170c  96129002  vadd.f.mz.rn vr5{mr1}, vr0, vr9
001710  16938502  vadd.f.mz.rn vr6{mr1}, vr11, vr8
001714  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
001718  9f030fd7  addli r7, r30, -5248
00171c  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001720  26913102  vmac.f.mz.rn vr2{mr1}, vr3, vr3
001724  46103502  vstore_mask16.mz vr3{mr1}, 0(r10)
001728  42920302  vload_mask16.mz vr4{mr1}, 0(r7)
00172c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001730  93837105  setlt.u r7, r3, r23
001734  46906502  vstore_mask16.mz vr6{mr1}, 0(r11)
001738  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
00173c  96117002  vadd.f.mz.rn vr3{mr1}, vr0, vr7
001740  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
001744  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
001748  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
00174c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001750  bb9b03fe  bneq r7, zero, -284
001754  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
001758  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00175c  1f010002  addli r2, zero, 256
001760  6a7101c0  vsrl.p vr2, r2, vr0
001764  ea7111c0  vsrl.p vr3, r2, vr1
001768  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00176c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001770  6af100c0  vsrl.p vr2, r1, vr0
001774  eaf110c0  vsrl.p vr3, r1, vr1
001778  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00177c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001780  6a710dc0  vsrl.p vr2, r26, vr0
001784  ea711dc0  vsrl.p vr3, r26, vr1
001788  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00178c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001790  6af10dc0  vsrl.p vr2, r27, vr0
001794  eaf11dc0  vsrl.p vr3, r27, vr1
001798  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00179c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0017a0  7a120040  vextracti.f r4, 0(vr0)
0017a4  fa910040  vextracti.f r3, 0(vr1)
0017a8  5b670000  j 824
0017ac  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0017b0  abf1ffff  lui r3, 1048575
0017b4  1f010000  addli r2, zero, 0
0017b8  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0017bc  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0017c0  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0017c4  9b9101f8  ori r3, r3, 3968
0017c8  8b132b10  add.s r7, r22, r2
0017cc  0b922910  add.s r4, r19, r2
0017d0  9f810101  addli r3, r3, 128
0017d4  1f010104  addli r2, r2, 512
0017d8  9f850330  addli r11, r7, 6144
0017dc  1f868330  addli r12, r7, 6208
0017e0  1f050218  addli r10, r4, 3072
0017e4  9f068219  addli r13, r4, 3264
0017e8  ca920502  vloads_mask16.mz vr5{mr1}, 0(r11)
0017ec  9f850331  addli r11, r7, 6272
0017f0  4a130602  vloads_mask16.mz vr6{mr1}, 0(r12)
0017f4  1f868331  addli r12, r7, 6336
0017f8  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
0017fc  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
001800  ca930502  vloads_mask16.mz vr7{mr1}, 0(r11)
001804  4a140602  vloads_mask16.mz vr8{mr1}, 0(r12)
001808  9f058218  addli r11, r4, 3136
00180c  1f060219  addli r12, r4, 3200
001810  42950502  vload_mask16.mz vr10{mr1}, 0(r11)
001814  c2150602  vload_mask16.mz vr11{mr1}, 0(r12)
001818  96945402  vadd.f.mz.rn vr9{mr1}, vr9, vr5
00181c  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
001820  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
001824  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
001828  46109502  vstore_mask16.mz vr9{mr1}, 0(r10)
00182c  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
001830  1f050fd7  addli r10, r30, -5248
001834  9f850332  addli r11, r7, 6400
001838  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
00183c  96136202  vadd.f.mz.rn vr7{mr1}, vr4, vr6
001840  16929102  vadd.f.mz.rn vr4{mr1}, vr3, vr9
001844  46106602  vstore_mask16.mz vr6{mr1}, 0(r12)
001848  1f868332  addli r12, r7, 6464
00184c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001850  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
001854  4a130602  vloads_mask16.mz vr6{mr1}, 0(r12)
001858  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00185c  96910302  vadd.f.mz.rn vr3{mr1}, vr7, vr0
001860  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001864  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001868  46103502  vstore_mask16.mz vr3{mr1}, 0(r10)
00186c  ca910502  vloads_mask16.mz vr3{mr1}, 0(r11)
001870  9f850333  addli r11, r7, 6528
001874  9f838333  addli r7, r7, 6592
001878  1f05021a  addli r10, r4, 3328
00187c  ca940302  vloads_mask16.mz vr9{mr1}, 0(r7)
001880  9f03821a  addli r7, r4, 3392
001884  c2130502  vload_mask16.mz vr7{mr1}, 0(r10)
001888  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
00188c  9f05021b  addli r11, r4, 3456
001890  1f02821b  addli r4, r4, 3520
001894  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
001898  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
00189c  c2950502  vload_mask16.mz vr11{mr1}, 0(r11)
0018a0  96913302  vadd.f.mz.rn vr3{mr1}, vr7, vr3
0018a4  96136502  vadd.f.mz.rn vr7{mr1}, vr10, vr6
0018a8  96129002  vadd.f.mz.rn vr5{mr1}, vr0, vr9
0018ac  16938502  vadd.f.mz.rn vr6{mr1}, vr11, vr8
0018b0  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
0018b4  9f030fd7  addli r7, r30, -5248
0018b8  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
0018bc  26913102  vmac.f.mz.rn vr2{mr1}, vr3, vr3
0018c0  46103502  vstore_mask16.mz vr3{mr1}, 0(r10)
0018c4  42920302  vload_mask16.mz vr4{mr1}, 0(r7)
0018c8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0018cc  93835105  setlt.u r7, r3, r21
0018d0  46906502  vstore_mask16.mz vr6{mr1}, 0(r11)
0018d4  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
0018d8  96117002  vadd.f.mz.rn vr3{mr1}, vr0, vr7
0018dc  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0018e0  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0018e4  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
0018e8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0018ec  3bfb03fe  bneq r7, zero, -292
0018f0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0018f4  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0018f8  1f010002  addli r2, zero, 256
0018fc  1f020000  addli r4, zero, 0
001900  ea7111c0  vsrl.p vr3, r2, vr1
001904  6a7101c0  vsrl.p vr2, r2, vr0
001908  2bf1ffff  lui r2, 1048575
00190c  1b1101f8  ori r2, r2, 3968
001910  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001914  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001918  eaf110c0  vsrl.p vr3, r1, vr1
00191c  6af100c0  vsrl.p vr2, r1, vr0
001920  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001924  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001928  ea711dc0  vsrl.p vr3, r26, vr1
00192c  6a710dc0  vsrl.p vr2, r26, vr0
001930  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001934  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001938  eaf11dc0  vsrl.p vr3, r27, vr1
00193c  6af10dc0  vsrl.p vr2, r27, vr0
001940  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001944  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001948  fa930040  vextracti.f r7, 0(vr1)
00194c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001950  fa150040  vextracti.f r11, 0(vr0)
001954  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001958  12321002  vadd.s.mz vr4{mr1}, zero, vr1
00195c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001960  0b154b10  add.s r10, r22, r4
001964  8b914910  add.s r3, r19, r4
001968  1f010101  addli r2, r2, 128
00196c  1f020204  addli r4, r4, 512
001970  1f060518  addli r12, r10, 3072
001974  9f068518  addli r13, r10, 3136
001978  1f8a8101  addli r20, r3, 192
00197c  42940102  vload_mask16.mz vr8{mr1}, 0(r3)
001980  4a100602  vloads_mask16.mz vr0{mr1}, 0(r12)
001984  1f060519  addli r12, r10, 3200
001988  ca920602  vloads_mask16.mz vr5{mr1}, 0(r13)
00198c  9f068519  addli r13, r10, 3264
001990  c2150a02  vload_mask16.mz vr11{mr1}, 0(r20)
001994  4a130602  vloads_mask16.mz vr6{mr1}, 0(r12)
001998  ca930602  vloads_mask16.mz vr7{mr1}, 0(r13)
00199c  9f860101  addli r13, r3, 128
0019a0  1f868100  addli r12, r3, 64
0019a4  42950602  vload_mask16.mz vr10{mr1}, 0(r13)
0019a8  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
0019ac  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0019b0  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0019b4  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0019b8  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
0019bc  46105602  vstore_mask16.mz vr5{mr1}, 0(r12)
0019c0  1f060fd7  addli r12, r30, -5248
0019c4  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
0019c8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0019cc  16146202  vadd.f.mz.rn vr8{mr1}, vr4, vr6
0019d0  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0019d4  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
0019d8  46107a02  vstore_mask16.mz vr7{mr1}, 0(r20)
0019dc  9f06051a  addli r13, r10, 3328
0019e0  1f0a851a  addli r20, r10, 3392
0019e4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0019e8  4a130a02  vloads_mask16.mz vr6{mr1}, 0(r20)
0019ec  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0019f0  96117402  vadd.f.mz.rn vr3{mr1}, vr8, vr7
0019f4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0019f8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0019fc  46103602  vstore_mask16.mz vr3{mr1}, 0(r12)
001a00  ca910602  vloads_mask16.mz vr3{mr1}, 0(r13)
001a04  9f06051b  addli r13, r10, 3456
001a08  1f05851b  addli r10, r10, 3520
001a0c  1f860102  addli r12, r3, 256
001a10  ca140502  vloads_mask16.mz vr9{mr1}, 0(r10)
001a14  1f858102  addli r10, r3, 320
001a18  c2130602  vload_mask16.mz vr7{mr1}, 0(r12)
001a1c  4a940602  vloads_mask16.mz vr8{mr1}, 0(r13)
001a20  9f860103  addli r13, r3, 384
001a24  9f818103  addli r3, r3, 448
001a28  42150502  vload_mask16.mz vr10{mr1}, 0(r10)
001a2c  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
001a30  c2950602  vload_mask16.mz vr11{mr1}, 0(r13)
001a34  96913302  vadd.f.mz.rn vr3{mr1}, vr7, vr3
001a38  96136502  vadd.f.mz.rn vr7{mr1}, vr10, vr6
001a3c  96129002  vadd.f.mz.rn vr5{mr1}, vr0, vr9
001a40  16938502  vadd.f.mz.rn vr6{mr1}, vr11, vr8
001a44  46107502  vstore_mask16.mz vr7{mr1}, 0(r10)
001a48  1f050fd7  addli r10, r30, -5248
001a4c  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001a50  26913102  vmac.f.mz.rn vr2{mr1}, vr3, vr3
001a54  46103602  vstore_mask16.mz vr3{mr1}, 0(r12)
001a58  42120502  vload_mask16.mz vr4{mr1}, 0(r10)
001a5c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001a60  13057105  setlt.u r10, r2, r23
001a64  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
001a68  46905102  vstore_mask16.mz vr5{mr1}, 0(r3)
001a6c  96117002  vadd.f.mz.rn vr3{mr1}, vr0, vr7
001a70  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
001a74  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
001a78  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001a7c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001a80  bb0b05fe  bneq r10, zero, -288
001a84  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
001a88  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001a8c  1f010002  addli r2, zero, 256
001a90  6a7101c0  vsrl.p vr2, r2, vr0
001a94  ea7111c0  vsrl.p vr3, r2, vr1
001a98  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001a9c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001aa0  6af100c0  vsrl.p vr2, r1, vr0
001aa4  eaf110c0  vsrl.p vr3, r1, vr1
001aa8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001aac  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001ab0  6a710dc0  vsrl.p vr2, r26, vr0
001ab4  ea711dc0  vsrl.p vr3, r26, vr1
001ab8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001abc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001ac0  6af10dc0  vsrl.p vr2, r27, vr0
001ac4  eaf11dc0  vsrl.p vr3, r27, vr1
001ac8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001acc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001ad0  fa910040  vextracti.f r3, 0(vr1)
001ad4  7a110040  vextracti.f r2, 0(vr0)
001ad8  0be22510  add.f.rn r4, r11, r2
001adc  8be13310  add.f.rn r3, r7, r3
001ae0  8b038330  div.u r7, r6, r8
001ae4  00350002  core_id r10
001ae8  1f010000  addli r2, zero, 0
001aec  9bb36300  slli r7, r7, 6
001af0  9b830304  andi r7, r7, 64
001af4  9793a300  or r7, r7, r10
001af8  1bb52300  slli r10, r7, 2
001afc  8b15c511  add.s r11, r10, r28
001b00  73e04500  stores.w r4, 0(r11)
001b04  1b82e307  andi r4, r7, 126
001b08  8b13e510  add.s r7, r10, r14
001b0c  1b154500  ori r10, r10, 4
001b10  1b322200  slli r4, r4, 2
001b14  73e03300  stores.w r3, 0(r7)
001b18  8b11c511  add.s r3, r10, r28
001b1c  0b15e510  add.s r10, r10, r14
001b20  00a00300  mfence { lm, sm, gm }
001b24  80210904  csr_set csr3, r18
001b28  00d00100  sync_group
001b2c  8b13c211  add.s r7, r4, r28
001b30  efc10100  loads.w r3, 0(r3)
001b34  0b12e210  add.s r4, r4, r14
001b38  6f450500  loads.w r10, 0(r10)
001b3c  efc30300  loads.w r7, 0(r7)
001b40  6f420200  loads.w r4, 0(r4)
001b44  8be17110  add.f.rn r3, r3, r7
001b48  0b624510  add.f.rn r4, r10, r4
001b4c  2b05003a  lui r10, 237568
001b50  8be3a120  mul.f.rn r7, r3, r10
001b54  8b61a220  mul.f.rn r3, r4, r10
001b58  0be27320  mul.f.rn r4, r7, r7
001b5c  8be14118  sub.f.rn r3, r3, r4
001b60  63023f00  loadli.w r4,  24(r30)
001b64  8be14110  add.f.rn r3, r3, r4
001b68  2b02803f  lui r4, 260096
001b6c  8f810108  sqrt.f.rn r3, r3
001b70  8f013218  div.f.rn r3, r4, r3
001b74  0be20358  neg.f r4, r7
001b78  9f030000  addli r7, zero, 0
001b7c  0b152810  add.s r10, r16, r2
001b80  8b952910  add.s r11, r19, r2
001b84  0b962810  add.s r12, r17, r2
001b88  1f0a8500  addli r20, r10, 64
001b8c  9f868500  addli r13, r11, 64
001b90  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
001b94  4a110502  vloads_mask16.mz vr2{mr1}, 0(r10)
001b98  4a120602  vloads_mask16.mz vr4{mr1}, 0(r12)
001b9c  ca110a02  vloads_mask16.mz vr3{mr1}, 0(r20)
001ba0  1f0a8600  addli r20, r12, 64
001ba4  c2900602  vload_mask16.mz vr1{mr1}, 0(r13)
001ba8  ca120a02  vloads_mask16.mz vr5{mr1}, 0(r20)
001bac  1f8a4300  addli r20, r7, 32
001bb0  12100202  vadd.f.mz.rn vr0{mr1}, r4, vr0
001bb4  138a4207  setle.u r20, r5, r20
001bb8  92101202  vadd.f.mz.rn vr1{mr1}, r4, vr1
001bbc  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
001bc0  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
001bc4  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
001bc8  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
001bcc  46904502  vstore_mask16.mz vr4{mr1}, 0(r11)
001bd0  46905602  vstore_mask16.mz vr5{mr1}, 0(r13)
001bd4  bb110a00  bneq r20, zero, 100
001bd8  1f0a0501  addli r20, r10, 128
001bdc  9f860501  addli r13, r11, 128
001be0  9f858501  addli r11, r11, 192
001be4  1f058501  addli r10, r10, 192
001be8  9f838300  addli r7, r7, 64
001bec  1f010102  addli r2, r2, 256
001bf0  4a110a02  vloads_mask16.mz vr2{mr1}, 0(r20)
001bf4  1f0a0601  addli r20, r12, 128
001bf8  1f068601  addli r12, r12, 192
001bfc  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
001c00  c2900502  vload_mask16.mz vr1{mr1}, 0(r11)
001c04  4a120502  vloads_mask16.mz vr4{mr1}, 0(r10)
001c08  13855304  setlt.u r10, r7, r5
001c0c  ca110a02  vloads_mask16.mz vr3{mr1}, 0(r20)
001c10  ca120602  vloads_mask16.mz vr5{mr1}, 0(r12)
001c14  12100202  vadd.f.mz.rn vr0{mr1}, r4, vr0
001c18  92101202  vadd.f.mz.rn vr1{mr1}, r4, vr1
001c1c  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
001c20  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
001c24  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
001c28  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
001c2c  46903602  vstore_mask16.mz vr3{mr1}, 0(r13)
001c30  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
001c34  3b2d05fe  bneq r10, zero, -184
001c38  eb510f00  load.d r[4:5], 0(r30)
001c3c  2b0100f0  lui r2, 983040
001c40  00a00000  mfence { lm }
001c44  17912700  or r2, r15, r2
001c48  8ba18111  add.ul r[4:5], r[4:5], r[25:26]
001c4c  7fb13101  s_lm2gm r2, r19, 0(r[4:5])
001c50  00a00200  mfence { lm, gm }
001c54  e3461f00  loadli.w r13,  12(r30)
001c58  0b138310  add.s r6, r6, r8
001c5c  bf45d3fc  blt.s r6, r13, -1680
001c60  abf00000  lui r1, 15
001c64  9b90f0ff  ori r1, r1, 4095
001c68  80a10004  csr_set csr3, r1
001c6c  00d00100  sync_group
001c70  5b820000  j 1040
001c74  63012f00  loadli.w r2,  16(r30)
001c78  ab0100f0  lui r3, 983040
001c7c  1b312100  slli r2, r2, 2
001c80  17113100  or r2, r2, r3
001c84  abc10000  lui r3, 12
001c88  9f810108  addli r3, r3, 1024
001c8c  7f013400  l_gm2sm r2, r3, 0(r[9:10])
001c90  2bf10000  lui r2, 15
001c94  e3411f00  loadli.w r3,  12(r30)
001c98  00200300  mfence { sm, gm }
001c9c  1b11f1ff  ori r2, r2, 4095
001ca0  80210104  csr_set csr3, r2
001ca4  00d00100  sync_group
001ca8  4bef1100  ble.s r3, r1, 984
001cac  63012f00  loadli.w r2,  16(r30)
001cb0  e3412f00  loadli.w r3,  20(r30)
001cb4  aba90000  lui r19, 10
001cb8  2bbc0000  lui r24, 11
001cbc  abcc0000  lui r25, 12
001cc0  9f048fd7  addli r9, r30, -5184
001cc4  1f180000  addli r16, zero, 1
001cc8  1f090002  addli r18, zero, 256
001ccc  1f0a0001  addli r20, zero, 128
001cd0  9f0a8000  addli r21, zero, 64
001cd4  1f0b4000  addli r22, zero, 32
001cd8  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001cdc  9f890908  addli r19, r19, 1024
001ce0  1f0c0c08  addli r24, r24, 1024
001ce4  9f8c0c08  addli r25, r25, 1024
001ce8  1b342100  slli r8, r2, 2
001cec  8b123110  add.s r5, r2, r3
001cf0  33010108  fix2float.rn r2, r2
001cf4  1bb32100  slli r6, r3, 2
001cf8  670c2fd4  storeli.w r2, -5440(r30)
001cfc  1ff1f2ff  addli r2, r5, -1
001d00  67008fd6  storeli.w r8, -5376(r30)
001d04  8b133130  div.s r7, r2, r3
001d08  2bf1ffff  lui r2, 1048575
001d0c  9b18f1ff  ori r17, r2, 4095
001d10  1f010fd7  addli r2, r30, -5248
001d14  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001d18  5b080000  j 64
001d1c  9f02efd6  addli r5, r30, -5264
001d20  00a00000  mfence { lm }
001d24  eb510f00  load.d r[4:5], 0(r30)
001d28  2b0100f0  lui r2, 983040
001d2c  63040fd6  loadli.w r8,  -5376(r30)
001d30  6bd50200  load.d r[11:12], 0(r5)
001d34  17112400  or r2, r8, r2
001d38  0ba5a110  add.ul r[11:12], r[4:5], r[11:12]
001d3c  80510102  load_param_i r3, 2
001d40  7f319500  s_lm2gm r2, r9, 0(r[11:12])
001d44  8b901110  add.s r1, r3, r1
001d48  00a00200  mfence { lm, gm }
001d4c  63411f00  loadli.w r2,  12(r30)
001d50  3fa02000  blt.s r1, r2, 8
001d54  db650000  j 812
001d58  63011f00  loadli.w r2,  8(r30)
001d5c  1f220000  addli r4, zero, 2
001d60  9f02ffd6  addli r5, r30, -5256
001d64  0b912010  add.s r2, r1, r2
001d68  0b11f120  mul.s r2, r2, r15
001d6c  33110128  sext_int2long r[3:4], r2
001d70  17354102  sll.d r[11:12], r[3:4], r4
001d74  ebd10200  load.d r[4:5], 0(r5)
001d78  2b0100f0  lui r2, 983040
001d7c  9f02efd6  addli r5, r30, -5264
001d80  73b0a200  store.d r[11:12], 0(r5)
001d84  17112400  or r2, r8, r2
001d88  0ba5a110  add.ul r[11:12], r[4:5], r[11:12]
001d8c  7f219500  l_gm2lm r2, r9, 0(r[11:12])
001d90  00a00200  mfence { lm, gm }
001d94  bfa70301  blt.s r7, r16, 488
001d98  9f0b0000  addli r23, zero, 0
001d9c  1f0e0000  addli r28, zero, 0
001da0  9f050000  addli r11, zero, 0
001da4  db0c0000  j 100
001da8  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001dac  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001db0  9f950500  addli r11, r11, 1
001db4  6a7109c0  vsrl.p vr2, r18, vr0
001db8  ea7119c0  vsrl.p vr3, r18, vr1
001dbc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001dc0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001dc4  6a710ac0  vsrl.p vr2, r20, vr0
001dc8  ea711ac0  vsrl.p vr3, r20, vr1
001dcc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001dd0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001dd4  6af10ac0  vsrl.p vr2, r21, vr0
001dd8  eaf11ac0  vsrl.p vr3, r21, vr1
001ddc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001de0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001de4  6a710bc0  vsrl.p vr2, r22, vr0
001de8  ea711bc0  vsrl.p vr3, r22, vr1
001dec  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001df0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001df4  7a110040  vextracti.f r2, 0(vr0)
001df8  fa910040  vextracti.f r3, 0(vr1)
001dfc  8beb2b10  add.f.rn r23, r23, r2
001e00  0b6e3e10  add.f.rn r28, r28, r3
001e04  37867500  beq r11, r7, 384
001e08  9f810500  addli r3, r11, 0
001e0c  37302701  beq r14, r18, 12
001e10  17a11501  xor r2, r11, r17
001e14  8b912310  add.s r3, r7, r2
001e18  0b91e120  mul.s r2, r3, r14
001e1c  0b912718  sub.s r2, r15, r2
001e20  0b15e140  min.s r10, r2, r14
001e24  1f010fd7  addli r2, r30, -5248
001e28  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
001e2c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001e30  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001e34  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001e38  bf4d05ff  blt.s r10, r16, -144
001e3c  1f020fd7  addli r4, r30, -5248
001e40  1f010000  addli r2, zero, 0
001e44  8b113320  mul.s r3, r6, r3
001e48  1f068fd7  addli r12, r30, -5184
001e4c  9f860900  addli r13, r19, 0
001e50  42120202  vload_mask16.mz vr4{mr1}, 0(r4)
001e54  92304002  vadd.s.mz vr1{mr1}, zero, vr4
001e58  12314002  vadd.s.mz vr2{mr1}, zero, vr4
001e5c  92314002  vadd.s.mz vr3{mr1}, zero, vr4
001e60  8b923610  add.s r5, r13, r3
001e64  0b143610  add.s r8, r12, r3
001e68  1f828200  addli r4, r5, 64
001e6c  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
001e70  1f8d8201  addli r26, r5, 192
001e74  c2140402  vload_mask16.mz vr9{mr1}, 0(r8)
001e78  9f0d8401  addli r27, r8, 192
001e7c  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
001e80  1f820201  addli r4, r5, 128
001e84  4a140d02  vloads_mask16.mz vr8{mr1}, 0(r26)
001e88  1f0d0401  addli r26, r8, 128
001e8c  42900d02  vload_mask16.mz vr0{mr1}, 0(r27)
001e90  ca130202  vloads_mask16.mz vr7{mr1}, 0(r4)
001e94  c2150d02  vload_mask16.mz vr11{mr1}, 0(r26)
001e98  1f028400  addli r4, r8, 64
001e9c  42150202  vload_mask16.mz vr10{mr1}, 0(r4)
001ea0  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001ea4  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
001ea8  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
001eac  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
001eb0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001eb4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001eb8  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
001ebc  46106202  vstore_mask16.mz vr6{mr1}, 0(r4)
001ec0  1f028100  addli r4, r2, 64
001ec4  46900d02  vstore_mask16.mz vr0{mr1}, 0(r27)
001ec8  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001ecc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001ed0  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001ed4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001ed8  46107d02  vstore_mask16.mz vr7{mr1}, 0(r26)
001edc  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
001ee0  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001ee4  4b1b45fe  ble.s r10, r4, -316
001ee8  1f8d0202  addli r26, r5, 256
001eec  9f8d8202  addli r27, r5, 320
001ef0  1f020402  addli r4, r8, 256
001ef4  1f010101  addli r2, r2, 128
001ef8  9f860604  addli r13, r13, 512
001efc  1f060604  addli r12, r12, 512
001f00  4a100d02  vloads_mask16.mz vr0{mr1}, 0(r26)
001f04  1f8d0203  addli r26, r5, 384
001f08  9f828203  addli r5, r5, 448
001f0c  ca920d02  vloads_mask16.mz vr5{mr1}, 0(r27)
001f10  42140202  vload_mask16.mz vr8{mr1}, 0(r4)
001f14  4a130d02  vloads_mask16.mz vr6{mr1}, 0(r26)
001f18  ca930202  vloads_mask16.mz vr7{mr1}, 0(r5)
001f1c  1f0d0403  addli r26, r8, 384
001f20  9f028402  addli r5, r8, 320
001f24  1f048403  addli r8, r8, 448
001f28  42150d02  vload_mask16.mz vr10{mr1}, 0(r26)
001f2c  c2940202  vload_mask16.mz vr9{mr1}, 0(r5)
001f30  c2150402  vload_mask16.mz vr11{mr1}, 0(r8)
001f34  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
001f38  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001f3c  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
001f40  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
001f44  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001f48  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001f4c  46100202  vstore_mask16.mz vr0{mr1}, 0(r4)
001f50  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
001f54  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
001f58  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001f5c  46106d02  vstore_mask16.mz vr6{mr1}, 0(r26)
001f60  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
001f64  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001f68  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001f6c  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001f70  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001f74  bf3ba1fe  blt.s r2, r10, -276
001f78  5bc6ffff  j -464
001f7c  1f0e0000  addli r28, zero, 0
001f80  9f0b0000  addli r23, zero, 0
001f84  00a00000  mfence { lm }
001f88  3fd607ff  blt.s r15, r16, -620
001f8c  e3018fd5  loadli.w r3,  -5440(r30)
001f90  63023f00  loadli.w r4,  24(r30)
001f94  1f010000  addli r2, zero, 0
001f98  9f050000  addli r11, zero, 0
001f9c  8f823b18  div.f.rn r5, r23, r3
001fa0  8f013e18  div.f.rn r3, r28, r3
001fa4  0be45220  mul.f.rn r8, r5, r5
001fa8  0be50258  neg.f r10, r5
001fac  8be18118  sub.f.rn r3, r3, r8
001fb0  8be14110  add.f.rn r3, r3, r4
001fb4  2b02803f  lui r4, 260096
001fb8  8f810108  sqrt.f.rn r3, r3
001fbc  8f013218  div.f.rn r3, r4, r3
001fc0  0b148111  add.s r8, r2, r24
001fc4  8b922410  add.s r5, r9, r2
001fc8  1f068400  addli r12, r8, 64
001fcc  4a110402  vloads_mask16.mz vr2{mr1}, 0(r8)
001fd0  0b149111  add.s r8, r2, r25
001fd4  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
001fd8  ca110602  vloads_mask16.mz vr3{mr1}, 0(r12)
001fdc  1f868200  addli r12, r5, 64
001fe0  4a120402  vloads_mask16.mz vr4{mr1}, 0(r8)
001fe4  1f048400  addli r8, r8, 64
001fe8  c2120602  vload_mask16.mz vr5{mr1}, 0(r12)
001fec  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
001ff0  1f844500  addli r8, r11, 32
001ff4  92101502  vadd.f.mz.rn vr1{mr1}, r10, vr1
001ff8  92125502  vadd.f.mz.rn vr5{mr1}, r10, vr5
001ffc  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
002000  8a925102  vmul.f.mz.rn vr5{mr1}, r3, vr5
002004  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
002008  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
00200c  46904202  vstore_mask16.mz vr4{mr1}, 0(r5)
002010  46106602  vstore_mask16.mz vr6{mr1}, 0(r12)
002014  4ba487fe  ble.s r15, r8, -760
002018  0b142c10  add.s r8, r24, r2
00201c  0b962c10  add.s r12, r25, r2
002020  9f858500  addli r11, r11, 64
002024  1f010102  addli r2, r2, 256
002028  9f060401  addli r13, r8, 128
00202c  9f0b0601  addli r23, r12, 128
002030  1f048401  addli r8, r8, 192
002034  1f068601  addli r12, r12, 192
002038  ca900602  vloads_mask16.mz vr1{mr1}, 0(r13)
00203c  9f860201  addli r13, r5, 128
002040  9f828201  addli r5, r5, 192
002044  4a910b02  vloads_mask16.mz vr2{mr1}, 0(r23)
002048  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
00204c  4a130602  vloads_mask16.mz vr6{mr1}, 0(r12)
002050  c2910602  vload_mask16.mz vr3{mr1}, 0(r13)
002054  42920202  vload_mask16.mz vr4{mr1}, 0(r5)
002058  92113502  vadd.f.mz.rn vr3{mr1}, r10, vr3
00205c  12124502  vadd.f.mz.rn vr4{mr1}, r10, vr4
002060  8a913102  vmul.f.mz.rn vr3{mr1}, r3, vr3
002064  0a924102  vmul.f.mz.rn vr4{mr1}, r3, vr4
002068  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
00206c  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
002070  46902602  vstore_mask16.mz vr2{mr1}, 0(r13)
002074  46906202  vstore_mask16.mz vr6{mr1}, 0(r5)
002078  3fadf5fe  blt.s r11, r15, -184
00207c  5b94ffff  j -864
002080  9f0e0fd5  addli sp, r30, -5504
002084  e38fae2a  loadli.w r31,  5456(sp)
002088  63cfae2a  loadli.w r30,  5460(sp)
00208c  638ebe2a  loadli.w r28,  5464(sp)
002090  e3cdbe2a  loadli.w r27,  5468(sp)
002094  638dce2a  loadli.w r26,  5472(sp)
002098  e3ccce2a  loadli.w r25,  5476(sp)
00209c  638cde2a  loadli.w r24,  5480(sp)
0020a0  e3cbde2a  loadli.w r23,  5484(sp)
0020a4  638bee2a  loadli.w r22,  5488(sp)
0020a8  e3caee2a  loadli.w r21,  5492(sp)
0020ac  638afe2a  loadli.w r20,  5496(sp)
0020b0  e3c9fe2a  loadli.w r19,  5500(sp)
0020b4  9f8e0e2b  addli sp, sp, 5504
0020b8  5f800f00  jr r31, 0
0020bc  00100000  exit
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
