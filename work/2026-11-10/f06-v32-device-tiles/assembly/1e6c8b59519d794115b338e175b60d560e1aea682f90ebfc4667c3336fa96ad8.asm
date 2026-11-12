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
0000fc  cb215b01  ble.s r22, r21, 104
000100  ab10833a  lui r1, 239665
000104  80db0002  load_param_i r23, 1
000108  1f1c0000  addli r24, zero, 1
00010c  9f0c0008  addli r25, zero, 1024
000110  1f0d2000  addli r26, zero, 16
000114  9b9df026  ori r27, r1, 623
000118  8b904a31  div.s r1, r21, r20
00011c  6b510f02  load.d r[3:4], 32(r30)
000120  6b528f00  load.d r[5:6], 8(r30)
000124  6b530f01  load.d r[7:8], 16(r30)
000128  6b548f01  load.d r[9:10], 24(r30)
00012c  67828e01  storeli.w r24, 32(sp)
000130  e7c18e01  storeli.w r24, 28(sp)
000134  67c19e01  storeli.w r25, 20(sp)
000138  67819e01  storeli.w r25, 16(sp)
00013c  e7c0ae01  storeli.w r26, 12(sp)
000140  e781be01  storeli.w r27, 24(sp)
000144  73b02e00  store.d r[3:4], 0(sp)
000148  6b510f00  load.d r[3:4], 0(r30)
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
00017c  e7c73e2b  storeli.w r19, 5500(sp)
000180  e7874e2b  storeli.w r20, 5496(sp)
000184  67c75e2b  storeli.w r21, 5492(sp)
000188  67876e2b  storeli.w r22, 5488(sp)
00018c  e7c67e2b  storeli.w r23, 5484(sp)
000190  e7868e2b  storeli.w r24, 5480(sp)
000194  67c69e2b  storeli.w r25, 5476(sp)
000198  6786ae2b  storeli.w r26, 5472(sp)
00019c  e7c5be2b  storeli.w r27, 5468(sp)
0001a0  e785ce2b  storeli.w r28, 5464(sp)
0001a4  6785fe2b  storeli.w r31, 5456(sp)
0001a8  63472f00  loadli.w r14,  20(r30)
0001ac  e3072f00  loadli.w r15,  16(r30)
0001b0  e3461f00  loadli.w r13,  12(r30)
0001b4  e3004f00  loadli.w r1,  32(r30)
0001b8  1f05ffd6  addli r10, r30, -5256
0001bc  73302500  store.d r[3:4], 0(r10)
0001c0  37910000  beq r1, zero, 68
0001c4  e3403f00  loadli.w r1,  28(r30)
0001c8  37920000  beq r1, zero, 132
0001cc  80300002  core_id r1
0001d0  1f210000  addli r2, zero, 2
0001d4  37fd2004  beq r1, r2, 2908
0001d8  1f110000  addli r2, zero, 1
0001dc  b7dc2004  beq r1, r2, 2868
0001e0  bbbd0004  bneq r1, zero, 2924
0001e4  63012f00  loadli.w r2,  16(r30)
0001e8  ab0100f0  lui r3, 983040
0001ec  1b311100  slli r2, r2, 1
0001f0  17113100  or r2, r2, r3
0001f4  ab010000  lui r3, 0
0001f8  9f810100  addli r3, r3, 0
0001fc  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000200  db690100  j 2892
000204  e3403f00  loadli.w r1,  28(r30)
000208  b7fe0000  beq r1, zero, 956
00020c  e3002f00  loadli.w r1,  16(r30)
000210  1f010010  addli r2, zero, 2048
000214  3b9b2004  bneq r1, r2, 2756
000218  00350002  core_id r10
00021c  9f200000  addli r1, zero, 2
000220  b74a1508  beq r10, r1, 4784
000224  9f100000  addli r1, zero, 1
000228  b7391508  beq r10, r1, 4716
00022c  bb7a0508  bneq r10, zero, 4796
000230  9f000040  addli r1, zero, 8192
000234  2b0100f0  lui r2, 983040
000238  97902000  or r1, r1, r2
00023c  2b410000  lui r2, 4
000240  1f010100  addli r2, r2, 0
000244  ff002200  l_gm2sm r1, r2, 0(r[5:6])
000248  5b540200  j 4768
00024c  80300002  core_id r1
000250  bb800000  bneq r1, zero, 32
000254  63012f00  loadli.w r2,  16(r30)
000258  ab0100f0  lui r3, 983040
00025c  1b311100  slli r2, r2, 1
000260  17113100  or r2, r2, r3
000264  ab310000  lui r3, 3
000268  9f810100  addli r3, r3, 0
00026c  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000270  2bf10000  lui r2, 15
000274  e3411f00  loadli.w r3,  12(r30)
000278  00200300  mfence { sm, gm }
00027c  1b11f1ff  ori r2, r2, 4095
000280  80210104  csr_set csr3, r2
000284  00d00100  sync_group
000288  cbd7110e  ble.s r3, r1, 7668
00028c  63012f00  loadli.w r2,  16(r30)
000290  e3412f00  loadli.w r3,  20(r30)
000294  2b3b0000  lui r22, 3
000298  1f140000  addli r8, zero, 1
00029c  1f068fd7  addli r12, r30, -5184
0002a0  9f080002  addli r17, zero, 256
0002a4  1f090001  addli r18, zero, 128
0002a8  9f098000  addli r19, zero, 64
0002ac  1f0a4000  addli r20, zero, 32
0002b0  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0002b4  1f0b0b00  addli r22, r22, 0
0002b8  0b133110  add.s r6, r2, r3
0002bc  1b321100  slli r4, r2, 1
0002c0  b3020108  fix2float.rn r5, r2
0002c4  1f71f3ff  addli r2, r6, -1
0002c8  1bb31100  slli r6, r3, 1
0002cc  8b133130  div.s r7, r2, r3
0002d0  2bf1ffff  lui r2, 1048575
0002d4  1b18f1ff  ori r16, r2, 4095
0002d8  5b070000  j 56
0002dc  00a00000  mfence { lm }
0002e0  eb540f00  load.d r[10:11], 0(r30)
0002e4  2b0100f0  lui r2, 983040
0002e8  1f068fd7  addli r12, r30, -5184
0002ec  80510102  load_param_i r3, 2
0002f0  17112200  or r2, r4, r2
0002f4  8b901110  add.s r1, r3, r1
0002f8  0ba57411  add.ul r[11:12], r[10:11], r[24:25]
0002fc  7f31c500  s_lm2gm r2, r12, 0(r[11:12])
000300  00a00200  mfence { lm, gm }
000304  63411f00  loadli.w r2,  12(r30)
000308  3fa02000  blt.s r1, r2, 8
00030c  5bae0300  j 7536
000310  63011f00  loadli.w r2,  8(r30)
000314  0b912010  add.s r2, r1, r2
000318  0b11f120  mul.s r2, r2, r15
00031c  33110128  sext_int2long r[3:4], r2
000320  973b8102  sll.d r[24:25], r[3:4], r8
000324  9f01ffd6  addli r3, r30, -5256
000328  2b0100f0  lui r2, 983040
00032c  ebd40100  load.d r[10:11], 0(r3)
000330  17112200  or r2, r4, r2
000334  0ba57411  add.ul r[11:12], r[10:11], r[24:25]
000338  7f21c500  l_gm2lm r2, r12, 0(r[11:12])
00033c  00a00200  mfence { lm, gm }
000340  3fc78300  blt.s r7, r8, 464
000344  1f0d0000  addli r26, zero, 0
000348  9f0c0000  addli r25, zero, 0
00034c  9f050000  addli r11, zero, 0
000350  db0c0000  j 100
000354  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
000358  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00035c  9f950500  addli r11, r11, 1
000360  6af138c0  vsrl.p vr2, r17, vr3
000364  6af218c0  vsrl.p vr4, r17, vr1
000368  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
00036c  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000370  ea7129c0  vsrl.p vr3, r18, vr2
000374  6a7219c0  vsrl.p vr4, r18, vr1
000378  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
00037c  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000380  eaf129c0  vsrl.p vr3, r19, vr2
000384  6af219c0  vsrl.p vr4, r19, vr1
000388  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
00038c  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000390  ea712ac0  vsrl.p vr3, r20, vr2
000394  6a721ac0  vsrl.p vr4, r20, vr1
000398  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
00039c  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0003a0  7a110140  vextracti.f r2, 0(vr2)
0003a4  fa910040  vextracti.f r3, 0(vr1)
0003a8  0b6d2d10  add.f.rn r26, r26, r2
0003ac  8bec3c10  add.f.rn r25, r25, r3
0003b0  b7a57500  beq r11, r7, 360
0003b4  1f810500  addli r2, r11, 0
0003b8  37301701  beq r14, r17, 12
0003bc  17a10501  xor r2, r11, r16
0003c0  0b912310  add.s r2, r7, r2
0003c4  8b11e120  mul.s r3, r2, r14
0003c8  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0003cc  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0003d0  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0003d4  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0003d8  8b913718  sub.s r3, r15, r3
0003dc  0b96e140  min.s r12, r3, r14
0003e0  bf5d86fe  blt.s r12, r8, -140
0003e4  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0003e8  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0003ec  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0003f0  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0003f4  0b152320  mul.s r10, r6, r2
0003f8  9f060000  addli r13, zero, 0
0003fc  9f0d8fd7  addli r27, r30, -5184
000400  1f010b00  addli r2, r22, 0
000404  8b11a110  add.s r3, r2, r10
000408  9f848600  addli r9, r13, 64
00040c  ca820102  vloads.mz vr5{mr1}, 0(r3)
000410  1f8e8100  addli r28, r3, 64
000414  4a030e02  vloads.mz vr6{mr1}, 0(r28)
000418  0b9ead10  add.s r28, r27, r10
00041c  c2030e02  vload.mz vr7{mr1}, 0(r28)
000420  9f0a8e00  addli r21, r28, 64
000424  42840a02  vload.mz vr8{mr1}, 0(r21)
000428  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
00042c  92320002  vadd.s.mz vr5{mr1}, zero, vr0
000430  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
000434  06b40300  vfp162float_l.rn vr8, vr7
000438  86f30300  vfp162float_h.rn vr7, vr7
00043c  86340300  vfp162float_l.rn vr9, vr6
000440  06730300  vfp162float_h.rn vr6, vr6
000444  86120400  vfloat2fp16_l.rn vr5, vr8
000448  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
00044c  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
000450  12340002  vadd.s.mz vr8{mr1}, zero, vr0
000454  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
000458  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
00045c  06940400  vfloat2fp16_l.rn vr8, vr9
000460  86d20300  vfloat2fp16_h.rn vr5, vr7
000464  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
000468  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
00046c  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
000470  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000474  06540300  vfloat2fp16_h.rn vr8, vr6
000478  46005e02  vstore.mz vr5{mr1}, 0(r28)
00047c  46808a02  vstore.mz vr8{mr1}, 0(r21)
000480  4b5b96fe  ble.s r12, r9, -300
000484  9f840101  addli r9, r3, 128
000488  9f818101  addli r3, r3, 192
00048c  9f860601  addli r13, r13, 128
000490  1f010102  addli r2, r2, 256
000494  9f8d0d02  addli r27, r27, 256
000498  ca820402  vloads.mz vr5{mr1}, 0(r9)
00049c  4a830102  vloads.mz vr6{mr1}, 0(r3)
0004a0  9f040e01  addli r9, r28, 128
0004a4  9f018e01  addli r3, r28, 192
0004a8  c2830402  vload.mz vr7{mr1}, 0(r9)
0004ac  c2840102  vload.mz vr9{mr1}, 0(r3)
0004b0  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
0004b4  96c46402  vadd.hf.mz.rn vr9{mr1}, vr9, vr6
0004b8  92320002  vadd.s.mz vr5{mr1}, zero, vr0
0004bc  12330002  vadd.s.mz vr6{mr1}, zero, vr0
0004c0  06b40300  vfp162float_l.rn vr8, vr7
0004c4  86f30300  vfp162float_h.rn vr7, vr7
0004c8  86120400  vfloat2fp16_l.rn vr5, vr8
0004cc  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
0004d0  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
0004d4  06b40400  vfp162float_l.rn vr8, vr9
0004d8  86f40400  vfp162float_h.rn vr9, vr9
0004dc  06130400  vfloat2fp16_l.rn vr6, vr8
0004e0  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
0004e4  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0004e8  86d20300  vfloat2fp16_h.rn vr5, vr7
0004ec  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0004f0  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0004f4  06d30400  vfloat2fp16_h.rn vr6, vr9
0004f8  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
0004fc  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
000500  46805402  vstore.mz vr5{mr1}, 0(r9)
000504  46806102  vstore.mz vr6{mr1}, 0(r3)
000508  bffbc6fe  blt.s r13, r12, -260
00050c  5bc9ffff  j -440
000510  9f0c0000  addli r25, zero, 0
000514  1f0d0000  addli r26, zero, 0
000518  00a00000  mfence { lm }
00051c  3f8787fe  blt.s r15, r8, -576
000520  8f015d18  div.f.rn r3, r26, r5
000524  0f815c18  div.f.rn r2, r25, r5
000528  e3043f00  loadli.w r9,  24(r30)
00052c  9f050000  addli r11, zero, 0
000530  0be53120  mul.f.rn r10, r3, r3
000534  8be10158  neg.f r3, r3
000538  0b61a118  sub.f.rn r2, r2, r10
00053c  1f058fd7  addli r10, r30, -5184
000540  0b619110  add.f.rn r2, r2, r9
000544  ab04803f  lui r9, 260096
000548  0f010108  sqrt.f.rn r2, r2
00054c  0f812418  div.f.rn r2, r9, r2
000550  c2000502  vload.mz vr1{mr1}, 0(r10)
000554  1f864500  addli r12, r11, 32
000558  06b10000  vfp162float_l.rn vr2, vr1
00055c  86f00000  vfp162float_h.rn vr1, vr1
000560  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
000564  92911102  vadd.f.mz.rn vr3{mr1}, r3, vr1
000568  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
00056c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
000570  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
000574  8a113102  vmul.f.mz.rn vr3{mr1}, r2, vr3
000578  06120100  vfloat2fp16_l.rn vr4, vr2
00057c  06d20100  vfloat2fp16_h.rn vr4, vr3
000580  46004502  vstore.mz vr4{mr1}, 0(r10)
000584  4be5c7fe  ble.s r15, r12, -680
000588  1f068500  addli r12, r10, 64
00058c  9f858500  addli r11, r11, 64
000590  1f050501  addli r10, r10, 128
000594  42010602  vload.mz vr2{mr1}, 0(r12)
000598  86310100  vfp162float_l.rn vr3, vr2
00059c  06710100  vfp162float_h.rn vr2, vr2
0005a0  92913102  vadd.f.mz.rn vr3{mr1}, r3, vr3
0005a4  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
0005a8  8a113102  vmul.f.mz.rn vr3{mr1}, r2, vr3
0005ac  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
0005b0  86900100  vfloat2fp16_l.rn vr1, vr3
0005b4  86500100  vfloat2fp16_h.rn vr1, vr2
0005b8  46001602  vstore.mz vr1{mr1}, 0(r12)
0005bc  3fdef5fe  blt.s r11, r15, -108
0005c0  dba3ffff  j -740
0005c4  e3002f00  loadli.w r1,  16(r30)
0005c8  1f010010  addli r2, zero, 2048
0005cc  bbdc2004  bneq r1, r2, 2868
0005d0  803d0002  core_id r27
0005d4  3bf00d00  bneq r27, zero, 28
0005d8  9f000040  addli r1, zero, 8192
0005dc  2b0100f0  lui r2, 983040
0005e0  97902000  or r1, r1, r2
0005e4  2bd10000  lui r2, 13
0005e8  1f010108  addli r2, r2, 1024
0005ec  ff002200  l_gm2sm r1, r2, 0(r[5:6])
0005f0  abf00000  lui r1, 15
0005f4  00200300  mfence { sm, gm }
0005f8  1b821d00  andi r4, r27, 1
0005fc  9f020006  addli r5, zero, 768
000600  9b90f0ff  ori r1, r1, 4095
000604  80a10004  csr_set csr3, r1
000608  9f000006  addli r1, zero, 768
00060c  00d00100  sync_group
000610  37200200  beq r4, zero, 8
000614  9f02000a  addli r5, zero, 1280
000618  63411f00  loadli.w r2,  12(r30)
00061c  9f110000  addli r3, zero, 1
000620  3f79310c  blt.s r2, r3, 6748
000624  00510102  load_param_i r2, 2
000628  8b101220  mul.s r1, r4, r1
00062c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000630  2bda0000  lui r20, 13
000634  abfc0000  lui r25, 15
000638  2bfe0000  lui r28, 15
00063c  9f030000  addli r7, zero, 0
000640  1bc71d00  srli r14, r27, 1
000644  9bb72200  slli r15, r5, 2
000648  9f088fd7  addli r17, r30, -5184
00064c  9f0a0005  addli r21, zero, 640
000650  1f0b0002  addli r22, zero, 256
000654  9f0b0001  addli r23, zero, 128
000658  1f0c4000  addli r24, zero, 32
00065c  1f080003  addli r16, zero, 384
000660  67071fd6  storeli.w r1, -5264(r30)
000664  abf0ffff  lui r1, 1048575
000668  9b441100  srli r9, r2, 1
00066c  1f010fd6  addli r2, r30, -5376
000670  1f0a0a08  addli r20, r20, 1024
000674  9f8c0c08  addli r25, r25, 1024
000678  1f0e0e0c  addli r28, r28, 1536
00067c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000680  9b9000f8  ori r1, r1, 3968
000684  2bf10000  lui r2, 15
000688  670c1fd4  storeli.w r1, -5440(r30)
00068c  9f008000  addli r1, zero, 64
000690  1b1df1ff  ori r26, r2, 4095
000694  db030000  j 28
000698  00a00300  mfence { lm, sm, gm }
00069c  80210d04  csr_set csr3, r26
0006a0  00d00100  sync_group
0006a4  8b939310  add.s r7, r7, r9
0006a8  3fa0d300  blt.s r7, r13, 8
0006ac  5bb60200  j 5552
0006b0  0b91e310  add.s r2, r7, r14
0006b4  cb9f26fe  ble.s r13, r2, -28
0006b8  e3011f00  loadli.w r3,  8(r30)
0006bc  1f230000  addli r6, zero, 2
0006c0  0b113110  add.s r2, r2, r3
0006c4  e301efd6  loadli.w r3,  -5264(r30)
0006c8  1b31b100  slli r2, r2, 11
0006cc  17113100  or r2, r2, r3
0006d0  33110128  sext_int2long r[3:4], r2
0006d4  17396102  sll.d r[19:20], r[3:4], r6
0006d8  9f01ffd6  addli r3, r30, -5256
0006dc  2b0100f0  lui r2, 983040
0006e0  6bd50100  load.d r[11:12], 0(r3)
0006e4  17912700  or r2, r15, r2
0006e8  0b252511  add.ul r[11:12], r[11:12], r[19:20]
0006ec  7f211501  l_gm2lm r2, r17, 0(r[11:12])
0006f0  1f010000  addli r2, zero, 0
0006f4  00a00200  mfence { lm, gm }
0006f8  3b460200  bneq r4, zero, 400
0006fc  1f030fd6  addli r6, r30, -5376
000700  e3018fd5  loadli.w r3,  -5440(r30)
000704  c2110302  vload_mask16.mz vr3{mr1}, 0(r6)
000708  92303002  vadd.s.mz vr1{mr1}, zero, vr3
00070c  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000710  12323002  vadd.s.mz vr4{mr1}, zero, vr3
000714  0b144111  add.s r8, r2, r20
000718  0b932810  add.s r6, r17, r2
00071c  9f810101  addli r3, r3, 128
000720  1f010104  addli r2, r2, 512
000724  1f058400  addli r10, r8, 64
000728  9f058401  addli r11, r8, 192
00072c  4a100402  vloads_mask16.mz vr0{mr1}, 0(r8)
000730  1f068301  addli r12, r6, 192
000734  42140302  vload_mask16.mz vr8{mr1}, 0(r6)
000738  ca120502  vloads_mask16.mz vr5{mr1}, 0(r10)
00073c  1f050401  addli r10, r8, 128
000740  ca930502  vloads_mask16.mz vr7{mr1}, 0(r11)
000744  9f050301  addli r11, r6, 128
000748  c2150602  vload_mask16.mz vr11{mr1}, 0(r12)
00074c  4a130502  vloads_mask16.mz vr6{mr1}, 0(r10)
000750  42950502  vload_mask16.mz vr10{mr1}, 0(r11)
000754  1f058300  addli r10, r6, 64
000758  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
00075c  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
000760  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
000764  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
000768  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
00076c  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
000770  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000774  46105502  vstore_mask16.mz vr5{mr1}, 0(r10)
000778  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
00077c  1f050fd7  addli r10, r30, -5248
000780  1f068402  addli r12, r8, 320
000784  16146202  vadd.f.mz.rn vr8{mr1}, vr4, vr6
000788  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
00078c  46906502  vstore_mask16.mz vr6{mr1}, 0(r11)
000790  9f050402  addli r11, r8, 256
000794  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000798  4a130602  vloads_mask16.mz vr6{mr1}, 0(r12)
00079c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0007a0  96117402  vadd.f.mz.rn vr3{mr1}, vr8, vr7
0007a4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0007a8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0007ac  46103502  vstore_mask16.mz vr3{mr1}, 0(r10)
0007b0  ca910502  vloads_mask16.mz vr3{mr1}, 0(r11)
0007b4  9f050403  addli r11, r8, 384
0007b8  1f048403  addli r8, r8, 448
0007bc  1f050302  addli r10, r6, 256
0007c0  ca140402  vloads_mask16.mz vr9{mr1}, 0(r8)
0007c4  1f048302  addli r8, r6, 320
0007c8  c2130502  vload_mask16.mz vr7{mr1}, 0(r10)
0007cc  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
0007d0  9f050303  addli r11, r6, 384
0007d4  1f038303  addli r6, r6, 448
0007d8  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
0007dc  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
0007e0  c2950502  vload_mask16.mz vr11{mr1}, 0(r11)
0007e4  96913302  vadd.f.mz.rn vr3{mr1}, vr7, vr3
0007e8  96136502  vadd.f.mz.rn vr7{mr1}, vr10, vr6
0007ec  96129002  vadd.f.mz.rn vr5{mr1}, vr0, vr9
0007f0  16938502  vadd.f.mz.rn vr6{mr1}, vr11, vr8
0007f4  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
0007f8  1f040fd7  addli r8, r30, -5248
0007fc  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
000800  26913102  vmac.f.mz.rn vr2{mr1}, vr3, vr3
000804  46103502  vstore_mask16.mz vr3{mr1}, 0(r10)
000808  42120402  vload_mask16.mz vr4{mr1}, 0(r8)
00080c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000810  13845105  setlt.u r8, r3, r21
000814  46906502  vstore_mask16.mz vr6{mr1}, 0(r11)
000818  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
00081c  96117002  vadd.f.mz.rn vr3{mr1}, vr0, vr7
000820  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
000824  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000828  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
00082c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000830  bb1b04fe  bneq r8, zero, -284
000834  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
000838  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00083c  6a710bc0  vsrl.p vr2, r22, vr0
000840  ea711bc0  vsrl.p vr3, r22, vr1
000844  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000848  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00084c  6af10bc0  vsrl.p vr2, r23, vr0
000850  eaf11bc0  vsrl.p vr3, r23, vr1
000854  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000858  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00085c  6af100c0  vsrl.p vr2, r1, vr0
000860  eaf110c0  vsrl.p vr3, r1, vr1
000864  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000868  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00086c  6a710cc0  vsrl.p vr2, r24, vr0
000870  ea711cc0  vsrl.p vr3, r24, vr1
000874  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000878  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00087c  fa110040  vextracti.f r3, 0(vr0)
000880  7a910040  vextracti.f r2, 0(vr1)
000884  db660000  j 820
000888  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
00088c  abf1ffff  lui r3, 1048575
000890  12311002  vadd.s.mz vr2{mr1}, zero, vr1
000894  12321002  vadd.s.mz vr4{mr1}, zero, vr1
000898  92311002  vadd.s.mz vr3{mr1}, zero, vr1
00089c  9b9101f8  ori r3, r3, 3968
0008a0  0b142a10  add.s r8, r20, r2
0008a4  0b932810  add.s r6, r17, r2
0008a8  9f810101  addli r3, r3, 128
0008ac  1f010104  addli r2, r2, 512
0008b0  9f050430  addli r11, r8, 6144
0008b4  1f068430  addli r12, r8, 6208
0008b8  1f050318  addli r10, r6, 3072
0008bc  9f068319  addli r13, r6, 3264
0008c0  ca920502  vloads_mask16.mz vr5{mr1}, 0(r11)
0008c4  9f050431  addli r11, r8, 6272
0008c8  4a130602  vloads_mask16.mz vr6{mr1}, 0(r12)
0008cc  1f068431  addli r12, r8, 6336
0008d0  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
0008d4  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
0008d8  ca930502  vloads_mask16.mz vr7{mr1}, 0(r11)
0008dc  4a140602  vloads_mask16.mz vr8{mr1}, 0(r12)
0008e0  9f058318  addli r11, r6, 3136
0008e4  1f060319  addli r12, r6, 3200
0008e8  42950502  vload_mask16.mz vr10{mr1}, 0(r11)
0008ec  c2150602  vload_mask16.mz vr11{mr1}, 0(r12)
0008f0  96945402  vadd.f.mz.rn vr9{mr1}, vr9, vr5
0008f4  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0008f8  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0008fc  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
000900  46109502  vstore_mask16.mz vr9{mr1}, 0(r10)
000904  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
000908  1f050fd7  addli r10, r30, -5248
00090c  9f050432  addli r11, r8, 6400
000910  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
000914  96136202  vadd.f.mz.rn vr7{mr1}, vr4, vr6
000918  16929102  vadd.f.mz.rn vr4{mr1}, vr3, vr9
00091c  46106602  vstore_mask16.mz vr6{mr1}, 0(r12)
000920  1f068432  addli r12, r8, 6464
000924  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000928  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
00092c  4a130602  vloads_mask16.mz vr6{mr1}, 0(r12)
000930  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000934  96910302  vadd.f.mz.rn vr3{mr1}, vr7, vr0
000938  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
00093c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000940  46103502  vstore_mask16.mz vr3{mr1}, 0(r10)
000944  ca910502  vloads_mask16.mz vr3{mr1}, 0(r11)
000948  9f050433  addli r11, r8, 6528
00094c  1f048433  addli r8, r8, 6592
000950  1f05031a  addli r10, r6, 3328
000954  ca140402  vloads_mask16.mz vr9{mr1}, 0(r8)
000958  1f04831a  addli r8, r6, 3392
00095c  c2130502  vload_mask16.mz vr7{mr1}, 0(r10)
000960  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
000964  9f05031b  addli r11, r6, 3456
000968  1f03831b  addli r6, r6, 3520
00096c  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
000970  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
000974  c2950502  vload_mask16.mz vr11{mr1}, 0(r11)
000978  96913302  vadd.f.mz.rn vr3{mr1}, vr7, vr3
00097c  96136502  vadd.f.mz.rn vr7{mr1}, vr10, vr6
000980  96129002  vadd.f.mz.rn vr5{mr1}, vr0, vr9
000984  16938502  vadd.f.mz.rn vr6{mr1}, vr11, vr8
000988  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
00098c  1f040fd7  addli r8, r30, -5248
000990  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
000994  26913102  vmac.f.mz.rn vr2{mr1}, vr3, vr3
000998  46103502  vstore_mask16.mz vr3{mr1}, 0(r10)
00099c  42120402  vload_mask16.mz vr4{mr1}, 0(r8)
0009a0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0009a4  13840105  setlt.u r8, r3, r16
0009a8  46906502  vstore_mask16.mz vr6{mr1}, 0(r11)
0009ac  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
0009b0  96117002  vadd.f.mz.rn vr3{mr1}, vr0, vr7
0009b4  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0009b8  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0009bc  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
0009c0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0009c4  3b7b04fe  bneq r8, zero, -292
0009c8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0009cc  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0009d0  2bf1ffff  lui r2, 1048575
0009d4  1f040000  addli r8, zero, 0
0009d8  1b1101f8  ori r2, r2, 3968
0009dc  ea711bc0  vsrl.p vr3, r22, vr1
0009e0  6a710bc0  vsrl.p vr2, r22, vr0
0009e4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009e8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009ec  eaf11bc0  vsrl.p vr3, r23, vr1
0009f0  6af10bc0  vsrl.p vr2, r23, vr0
0009f4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009f8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009fc  eaf110c0  vsrl.p vr3, r1, vr1
000a00  6af100c0  vsrl.p vr2, r1, vr0
000a04  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000a08  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000a0c  ea711cc0  vsrl.p vr3, r24, vr1
000a10  6a710cc0  vsrl.p vr2, r24, vr0
000a14  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000a18  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000a1c  7a930040  vextracti.f r6, 0(vr1)
000a20  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000a24  fa150040  vextracti.f r11, 0(vr0)
000a28  12311002  vadd.s.mz vr2{mr1}, zero, vr1
000a2c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
000a30  92311002  vadd.s.mz vr3{mr1}, zero, vr1
000a34  0b158a10  add.s r10, r20, r8
000a38  8b918810  add.s r3, r17, r8
000a3c  1f010101  addli r2, r2, 128
000a40  1f040404  addli r8, r8, 512
000a44  1f060518  addli r12, r10, 3072
000a48  9f068518  addli r13, r10, 3136
000a4c  9f8d8101  addli r27, r3, 192
000a50  42940102  vload_mask16.mz vr8{mr1}, 0(r3)
000a54  4a100602  vloads_mask16.mz vr0{mr1}, 0(r12)
000a58  1f060519  addli r12, r10, 3200
000a5c  ca920602  vloads_mask16.mz vr5{mr1}, 0(r13)
000a60  9f068519  addli r13, r10, 3264
000a64  c2950d02  vload_mask16.mz vr11{mr1}, 0(r27)
000a68  4a130602  vloads_mask16.mz vr6{mr1}, 0(r12)
000a6c  ca930602  vloads_mask16.mz vr7{mr1}, 0(r13)
000a70  9f860101  addli r13, r3, 128
000a74  1f868100  addli r12, r3, 64
000a78  42950602  vload_mask16.mz vr10{mr1}, 0(r13)
000a7c  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
000a80  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
000a84  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
000a88  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
000a8c  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
000a90  46105602  vstore_mask16.mz vr5{mr1}, 0(r12)
000a94  1f060fd7  addli r12, r30, -5248
000a98  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
000a9c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000aa0  16146202  vadd.f.mz.rn vr8{mr1}, vr4, vr6
000aa4  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
000aa8  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
000aac  46907d02  vstore_mask16.mz vr7{mr1}, 0(r27)
000ab0  9f06051a  addli r13, r10, 3328
000ab4  9f0d851a  addli r27, r10, 3392
000ab8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000abc  4a930d02  vloads_mask16.mz vr6{mr1}, 0(r27)
000ac0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000ac4  96117402  vadd.f.mz.rn vr3{mr1}, vr8, vr7
000ac8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000acc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000ad0  46103602  vstore_mask16.mz vr3{mr1}, 0(r12)
000ad4  ca910602  vloads_mask16.mz vr3{mr1}, 0(r13)
000ad8  9f06051b  addli r13, r10, 3456
000adc  1f05851b  addli r10, r10, 3520
000ae0  1f860102  addli r12, r3, 256
000ae4  ca140502  vloads_mask16.mz vr9{mr1}, 0(r10)
000ae8  1f858102  addli r10, r3, 320
000aec  c2130602  vload_mask16.mz vr7{mr1}, 0(r12)
000af0  4a940602  vloads_mask16.mz vr8{mr1}, 0(r13)
000af4  9f860103  addli r13, r3, 384
000af8  9f818103  addli r3, r3, 448
000afc  42150502  vload_mask16.mz vr10{mr1}, 0(r10)
000b00  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000b04  c2950602  vload_mask16.mz vr11{mr1}, 0(r13)
000b08  96913302  vadd.f.mz.rn vr3{mr1}, vr7, vr3
000b0c  96136502  vadd.f.mz.rn vr7{mr1}, vr10, vr6
000b10  96129002  vadd.f.mz.rn vr5{mr1}, vr0, vr9
000b14  16938502  vadd.f.mz.rn vr6{mr1}, vr11, vr8
000b18  46107502  vstore_mask16.mz vr7{mr1}, 0(r10)
000b1c  1f050fd7  addli r10, r30, -5248
000b20  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
000b24  26913102  vmac.f.mz.rn vr2{mr1}, vr3, vr3
000b28  46103602  vstore_mask16.mz vr3{mr1}, 0(r12)
000b2c  42120502  vload_mask16.mz vr4{mr1}, 0(r10)
000b30  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000b34  13055105  setlt.u r10, r2, r21
000b38  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
000b3c  46905102  vstore_mask16.mz vr5{mr1}, 0(r3)
000b40  96117002  vadd.f.mz.rn vr3{mr1}, vr0, vr7
000b44  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
000b48  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000b4c  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
000b50  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000b54  bb0b05fe  bneq r10, zero, -288
000b58  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
000b5c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000b60  e3461f00  loadli.w r13,  12(r30)
000b64  803d0002  core_id r27
000b68  6a710bc0  vsrl.p vr2, r22, vr0
000b6c  ea711bc0  vsrl.p vr3, r22, vr1
000b70  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000b74  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000b78  6af10bc0  vsrl.p vr2, r23, vr0
000b7c  eaf11bc0  vsrl.p vr3, r23, vr1
000b80  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000b84  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000b88  6af100c0  vsrl.p vr2, r1, vr0
000b8c  eaf110c0  vsrl.p vr3, r1, vr1
000b90  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000b94  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000b98  6a710cc0  vsrl.p vr2, r24, vr0
000b9c  ea711cc0  vsrl.p vr3, r24, vr1
000ba0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000ba4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000ba8  7a110040  vextracti.f r2, 0(vr0)
000bac  7a940040  vextracti.f r8, 0(vr1)
000bb0  8be12510  add.f.rn r3, r11, r2
000bb4  0b618310  add.f.rn r2, r6, r8
000bb8  0b839330  div.u r6, r7, r9
000bbc  1b336300  slli r6, r6, 6
000bc0  1b030304  andi r6, r6, 64
000bc4  1713b301  or r6, r6, r27
000bc8  1b342300  slli r8, r6, 2
000bcc  1b03e307  andi r6, r6, 126
000bd0  0b159411  add.s r10, r8, r25
000bd4  1b332300  slli r6, r6, 2
000bd8  73603500  stores.w r3, 0(r10)
000bdc  8b11c411  add.s r3, r8, r28
000be0  1b144400  ori r8, r8, 4
000be4  73e02100  stores.w r2, 0(r3)
000be8  0b119411  add.s r2, r8, r25
000bec  8b119311  add.s r3, r6, r25
000bf0  0b14c411  add.s r8, r8, r28
000bf4  0b13c311  add.s r6, r6, r28
000bf8  00a00300  mfence { lm, sm, gm }
000bfc  80210d04  csr_set csr3, r26
000c00  00d00100  sync_group
000c04  6f410100  loads.w r2, 0(r2)
000c08  efc10100  loads.w r3, 0(r3)
000c0c  6f440400  loads.w r8, 0(r8)
000c10  6f430300  loads.w r6, 0(r6)
000c14  0b613110  add.f.rn r2, r2, r3
000c18  8b616410  add.f.rn r3, r8, r6
000c1c  2b04003a  lui r8, 237568
000c20  0b638120  mul.f.rn r6, r2, r8
000c24  0be18120  mul.f.rn r2, r3, r8
000c28  1f040000  addli r8, zero, 0
000c2c  8b616320  mul.f.rn r3, r6, r6
000c30  0b613118  sub.f.rn r2, r2, r3
000c34  e3013f00  loadli.w r3,  24(r30)
000c38  0b613110  add.f.rn r2, r2, r3
000c3c  ab01803f  lui r3, 260096
000c40  0f010108  sqrt.f.rn r2, r2
000c44  0f812118  div.f.rn r2, r3, r2
000c48  8b610358  neg.f r3, r6
000c4c  1f038fd7  addli r6, r30, -5184
000c50  1f058300  addli r10, r6, 64
000c54  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
000c58  9f054400  addli r11, r8, 32
000c5c  c2100502  vload_mask16.mz vr1{mr1}, 0(r10)
000c60  9385b206  setle.u r11, r5, r11
000c64  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
000c68  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
000c6c  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
000c70  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
000c74  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
000c78  46101502  vstore_mask16.mz vr1{mr1}, 0(r10)
000c7c  bbf00500  bneq r11, zero, 60
000c80  1f050301  addli r10, r6, 128
000c84  9f058301  addli r11, r6, 192
000c88  1f048400  addli r8, r8, 64
000c8c  1f030302  addli r6, r6, 256
000c90  42100502  vload_mask16.mz vr0{mr1}, 0(r10)
000c94  c2900502  vload_mask16.mz vr1{mr1}, 0(r11)
000c98  13065404  setlt.u r12, r8, r5
000c9c  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
000ca0  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
000ca4  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
000ca8  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
000cac  46100502  vstore_mask16.mz vr0{mr1}, 0(r10)
000cb0  46901502  vstore_mask16.mz vr1{mr1}, 0(r11)
000cb4  3b7e06fe  bneq r12, zero, -100
000cb8  6b550f00  load.d r[11:12], 0(r30)
000cbc  2b0100f0  lui r2, 983040
000cc0  00a00000  mfence { lm }
000cc4  17912700  or r2, r15, r2
000cc8  0b252511  add.ul r[11:12], r[11:12], r[19:20]
000ccc  7f311501  s_lm2gm r2, r17, 0(r[11:12])
000cd0  00a00200  mfence { lm, gm }
000cd4  5b3affff  j -1584
000cd8  80300002  core_id r1
000cdc  1f210000  addli r2, zero, 2
000ce0  37ce2006  beq r1, r2, 3984
000ce4  1f110000  addli r2, zero, 1
000ce8  37af2002  beq r1, r2, 1992
000cec  bb8e0006  bneq r1, zero, 4000
000cf0  63012f00  loadli.w r2,  16(r30)
000cf4  ab0100f0  lui r3, 983040
000cf8  1b312100  slli r2, r2, 2
000cfc  17113100  or r2, r2, r3
000d00  aba10000  lui r3, 10
000d04  9f810108  addli r3, r3, 1024
000d08  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000d0c  5bf00100  j 3968
000d10  63012f00  loadli.w r2,  16(r30)
000d14  ab0100f0  lui r3, 983040
000d18  1b311100  slli r2, r2, 1
000d1c  17113100  or r2, r2, r3
000d20  ab110000  lui r3, 1
000d24  9f810100  addli r3, r3, 0
000d28  7f013300  l_gm2sm r2, r3, 0(r[7:8])
000d2c  5b040000  j 32
000d30  63012f00  loadli.w r2,  16(r30)
000d34  ab0100f0  lui r3, 983040
000d38  1b311100  slli r2, r2, 1
000d3c  17113100  or r2, r2, r3
000d40  ab210000  lui r3, 2
000d44  9f810100  addli r3, r3, 0
000d48  7f013400  l_gm2sm r2, r3, 0(r[9:10])
000d4c  2bf10000  lui r2, 15
000d50  e3411f00  loadli.w r3,  12(r30)
000d54  00200300  mfence { sm, gm }
000d58  1b11f1ff  ori r2, r2, 4095
000d5c  80210104  csr_set csr3, r2
000d60  00d00100  sync_group
000d64  4bec1108  ble.s r3, r1, 4888
000d68  63012f00  loadli.w r2,  16(r30)
000d6c  e3412f00  loadli.w r3,  20(r30)
000d70  ab0b0000  lui r23, 0
000d74  1f140000  addli r8, zero, 1
000d78  1f068fd7  addli r12, r30, -5184
000d7c  9f080002  addli r17, zero, 256
000d80  9f090001  addli r19, zero, 128
000d84  1f0a8000  addli r20, zero, 64
000d88  9f0a4000  addli r21, zero, 32
000d8c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000d90  9f8b0b00  addli r23, r23, 0
000d94  0b133110  add.s r6, r2, r3
000d98  1b321100  slli r4, r2, 1
000d9c  b3020108  fix2float.rn r5, r2
000da0  1f71f3ff  addli r2, r6, -1
000da4  1bb31100  slli r6, r3, 1
000da8  8b133130  div.s r7, r2, r3
000dac  2bf1ffff  lui r2, 1048575
000db0  1b18f1ff  ori r16, r2, 4095
000db4  5b070000  j 56
000db8  00a00000  mfence { lm }
000dbc  eb540f00  load.d r[10:11], 0(r30)
000dc0  2b0100f0  lui r2, 983040
000dc4  1f068fd7  addli r12, r30, -5184
000dc8  80510102  load_param_i r3, 2
000dcc  17112200  or r2, r4, r2
000dd0  8b901110  add.s r1, r3, r1
000dd4  0ba59411  add.ul r[11:12], r[10:11], r[26:27]
000dd8  7f31c500  s_lm2gm r2, r12, 0(r[11:12])
000ddc  00a00200  mfence { lm, gm }
000de0  63411f00  loadli.w r2,  12(r30)
000de4  3fa02000  blt.s r1, r2, 8
000de8  db520200  j 4756
000dec  63011f00  loadli.w r2,  8(r30)
000df0  0b912010  add.s r2, r1, r2
000df4  0b11f120  mul.s r2, r2, r15
000df8  33110128  sext_int2long r[3:4], r2
000dfc  973c8102  sll.d r[26:27], r[3:4], r8
000e00  9f01ffd6  addli r3, r30, -5256
000e04  2b0100f0  lui r2, 983040
000e08  ebd40100  load.d r[10:11], 0(r3)
000e0c  17112200  or r2, r4, r2
000e10  0ba59411  add.ul r[11:12], r[10:11], r[26:27]
000e14  7f21c500  l_gm2lm r2, r12, 0(r[11:12])
000e18  00a00200  mfence { lm, gm }
000e1c  3fc78300  blt.s r7, r8, 464
000e20  1f0e0000  addli r28, zero, 0
000e24  9f0d0000  addli r27, zero, 0
000e28  9f050000  addli r11, zero, 0
000e2c  db0c0000  j 100
000e30  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
000e34  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000e38  9f950500  addli r11, r11, 1
000e3c  6af138c0  vsrl.p vr2, r17, vr3
000e40  6af218c0  vsrl.p vr4, r17, vr1
000e44  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
000e48  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000e4c  eaf129c0  vsrl.p vr3, r19, vr2
000e50  6af219c0  vsrl.p vr4, r19, vr1
000e54  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000e58  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000e5c  ea712ac0  vsrl.p vr3, r20, vr2
000e60  6a721ac0  vsrl.p vr4, r20, vr1
000e64  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000e68  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000e6c  eaf12ac0  vsrl.p vr3, r21, vr2
000e70  6af21ac0  vsrl.p vr4, r21, vr1
000e74  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000e78  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000e7c  7a110140  vextracti.f r2, 0(vr2)
000e80  fa910040  vextracti.f r3, 0(vr1)
000e84  0b6e2e10  add.f.rn r28, r28, r2
000e88  8bed3d10  add.f.rn r27, r27, r3
000e8c  b7a57500  beq r11, r7, 360
000e90  1f810500  addli r2, r11, 0
000e94  37301701  beq r14, r17, 12
000e98  17a10501  xor r2, r11, r16
000e9c  0b912310  add.s r2, r7, r2
000ea0  8b11e120  mul.s r3, r2, r14
000ea4  12320002  vadd.s.mz vr4{mr1}, zero, vr0
000ea8  92310002  vadd.s.mz vr3{mr1}, zero, vr0
000eac  12310002  vadd.s.mz vr2{mr1}, zero, vr0
000eb0  92300002  vadd.s.mz vr1{mr1}, zero, vr0
000eb4  8b913718  sub.s r3, r15, r3
000eb8  0b96e140  min.s r12, r3, r14
000ebc  bf5d86fe  blt.s r12, r8, -140
000ec0  92300002  vadd.s.mz vr1{mr1}, zero, vr0
000ec4  12310002  vadd.s.mz vr2{mr1}, zero, vr0
000ec8  92310002  vadd.s.mz vr3{mr1}, zero, vr0
000ecc  12320002  vadd.s.mz vr4{mr1}, zero, vr0
000ed0  9f060000  addli r13, zero, 0
000ed4  0b152320  mul.s r10, r6, r2
000ed8  1f0b8fd7  addli r22, r30, -5184
000edc  1f890b00  addli r18, r23, 0
000ee0  8b11a910  add.s r3, r18, r10
000ee4  9f848600  addli r9, r13, 64
000ee8  ca820102  vloads.mz vr5{mr1}, 0(r3)
000eec  1f818100  addli r2, r3, 64
000ef0  4a030102  vloads.mz vr6{mr1}, 0(r2)
000ef4  0b11ab10  add.s r2, r22, r10
000ef8  c2030102  vload.mz vr7{mr1}, 0(r2)
000efc  1f0c8100  addli r24, r2, 64
000f00  42040c02  vload.mz vr8{mr1}, 0(r24)
000f04  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
000f08  92320002  vadd.s.mz vr5{mr1}, zero, vr0
000f0c  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
000f10  06b40300  vfp162float_l.rn vr8, vr7
000f14  86f30300  vfp162float_h.rn vr7, vr7
000f18  86340300  vfp162float_l.rn vr9, vr6
000f1c  06730300  vfp162float_h.rn vr6, vr6
000f20  86120400  vfloat2fp16_l.rn vr5, vr8
000f24  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
000f28  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
000f2c  12340002  vadd.s.mz vr8{mr1}, zero, vr0
000f30  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
000f34  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
000f38  06940400  vfloat2fp16_l.rn vr8, vr9
000f3c  86d20300  vfloat2fp16_h.rn vr5, vr7
000f40  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
000f44  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
000f48  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
000f4c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000f50  06540300  vfloat2fp16_h.rn vr8, vr6
000f54  46005102  vstore.mz vr5{mr1}, 0(r2)
000f58  46008c02  vstore.mz vr8{mr1}, 0(r24)
000f5c  4b5b96fe  ble.s r12, r9, -300
000f60  9f840101  addli r9, r3, 128
000f64  9f818101  addli r3, r3, 192
000f68  9f860601  addli r13, r13, 128
000f6c  1f090902  addli r18, r18, 256
000f70  1f0b0b02  addli r22, r22, 256
000f74  ca820402  vloads.mz vr5{mr1}, 0(r9)
000f78  4a830102  vloads.mz vr6{mr1}, 0(r3)
000f7c  9f040101  addli r9, r2, 128
000f80  1f018101  addli r2, r2, 192
000f84  c2830402  vload.mz vr7{mr1}, 0(r9)
000f88  c2040102  vload.mz vr9{mr1}, 0(r2)
000f8c  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
000f90  96c46402  vadd.hf.mz.rn vr9{mr1}, vr9, vr6
000f94  92320002  vadd.s.mz vr5{mr1}, zero, vr0
000f98  12330002  vadd.s.mz vr6{mr1}, zero, vr0
000f9c  06b40300  vfp162float_l.rn vr8, vr7
000fa0  86f30300  vfp162float_h.rn vr7, vr7
000fa4  86120400  vfloat2fp16_l.rn vr5, vr8
000fa8  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
000fac  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
000fb0  06b40400  vfp162float_l.rn vr8, vr9
000fb4  86f40400  vfp162float_h.rn vr9, vr9
000fb8  06130400  vfloat2fp16_l.rn vr6, vr8
000fbc  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
000fc0  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
000fc4  86d20300  vfloat2fp16_h.rn vr5, vr7
000fc8  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
000fcc  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
000fd0  06d30400  vfloat2fp16_h.rn vr6, vr9
000fd4  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
000fd8  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
000fdc  46805402  vstore.mz vr5{mr1}, 0(r9)
000fe0  46006102  vstore.mz vr6{mr1}, 0(r2)
000fe4  bffbc6fe  blt.s r13, r12, -260
000fe8  5bc9ffff  j -440
000fec  9f0d0000  addli r27, zero, 0
000ff0  1f0e0000  addli r28, zero, 0
000ff4  00a00000  mfence { lm }
000ff8  3f8787fe  blt.s r15, r8, -576
000ffc  0f015e18  div.f.rn r2, r28, r5
001000  0f855d18  div.f.rn r10, r27, r5
001004  e3043f00  loadli.w r9,  24(r30)
001008  ab160000  lui r13, 1
00100c  2b290000  lui r18, 2
001010  9f010000  addli r3, zero, 0
001014  1f068fd7  addli r12, r30, -5184
001018  9f860600  addli r13, r13, 0
00101c  1f090900  addli r18, r18, 0
001020  8b652120  mul.f.rn r11, r2, r2
001024  0b65b518  sub.f.rn r10, r10, r11
001028  8b650158  neg.f r11, r2
00102c  0b659510  add.f.rn r10, r10, r9
001030  ab04803f  lui r9, 260096
001034  0f050508  sqrt.f.rn r10, r10
001038  0f85a418  div.f.rn r10, r9, r10
00103c  c2000602  vload.mz vr1{mr1}, 0(r12)
001040  4a810602  vloads.mz vr2{mr1}, 0(r13)
001044  ca010902  vloads.mz vr3{mr1}, 0(r18)
001048  1f814100  addli r2, r3, 32
00104c  06b20000  vfp162float_l.rn vr4, vr1
001050  86f00000  vfp162float_h.rn vr1, vr1
001054  12924502  vadd.f.mz.rn vr4{mr1}, r11, vr4
001058  92901502  vadd.f.mz.rn vr1{mr1}, r11, vr1
00105c  86320100  vfp162float_l.rn vr5, vr2
001060  06b30100  vfp162float_l.rn vr6, vr3
001064  06710100  vfp162float_h.rn vr2, vr2
001068  86f10100  vfp162float_h.rn vr3, vr3
00106c  8a131502  vmul.f.mz.rn vr7{mr1}, r10, vr1
001070  0a124502  vmul.f.mz.rn vr4{mr1}, r10, vr4
001074  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001078  a6912302  vmac.f.mz.rn vr3{mr1}, vr7, vr2
00107c  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
001080  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001084  06110300  vfloat2fp16_l.rn vr2, vr6
001088  06d10100  vfloat2fp16_h.rn vr2, vr3
00108c  46002602  vstore.mz vr2{mr1}, 0(r12)
001090  cba427fe  ble.s r15, r2, -728
001094  1f818600  addli r2, r13, 64
001098  1f0b8600  addli r22, r12, 64
00109c  9f818100  addli r3, r3, 64
0010a0  9f860601  addli r13, r13, 128
0010a4  1f060601  addli r12, r12, 128
0010a8  4a010102  vloads.mz vr2{mr1}, 0(r2)
0010ac  1f018900  addli r2, r18, 64
0010b0  c2010b02  vload.mz vr3{mr1}, 0(r22)
0010b4  1f090901  addli r18, r18, 128
0010b8  4a020102  vloads.mz vr4{mr1}, 0(r2)
0010bc  86b20100  vfp162float_l.rn vr5, vr3
0010c0  86f10100  vfp162float_h.rn vr3, vr3
0010c4  92925502  vadd.f.mz.rn vr5{mr1}, r11, vr5
0010c8  92913502  vadd.f.mz.rn vr3{mr1}, r11, vr3
0010cc  06330100  vfp162float_l.rn vr6, vr2
0010d0  06710100  vfp162float_h.rn vr2, vr2
0010d4  8a125502  vmul.f.mz.rn vr5{mr1}, r10, vr5
0010d8  8a113502  vmul.f.mz.rn vr3{mr1}, r10, vr3
0010dc  86330200  vfp162float_l.rn vr7, vr4
0010e0  06720200  vfp162float_h.rn vr4, vr4
0010e4  a6936202  vmac.f.mz.rn vr7{mr1}, vr5, vr6
0010e8  26922102  vmac.f.mz.rn vr4{mr1}, vr3, vr2
0010ec  86900300  vfloat2fp16_l.rn vr1, vr7
0010f0  86500200  vfloat2fp16_h.rn vr1, vr4
0010f4  46001b02  vstore.mz vr1{mr1}, 0(r22)
0010f8  3f9df1fe  blt.s r3, r15, -188
0010fc  db97ffff  j -836
001100  80300002  core_id r1
001104  bb800000  bneq r1, zero, 32
001108  63012f00  loadli.w r2,  16(r30)
00110c  ab0100f0  lui r3, 983040
001110  1b312100  slli r2, r2, 2
001114  17113100  or r2, r2, r3
001118  ab010100  lui r3, 16
00111c  9f8101f0  addli r3, r3, -2048
001120  7f013200  l_gm2sm r2, r3, 0(r[5:6])
001124  2bf10000  lui r2, 15
001128  e3411f00  loadli.w r3,  12(r30)
00112c  00200300  mfence { sm, gm }
001130  1b11f1ff  ori r2, r2, 4095
001134  80210104  csr_set csr3, r2
001138  00d00100  sync_group
00113c  4b8d1106  ble.s r3, r1, 3904
001140  63012f00  loadli.w r2,  16(r30)
001144  e3412f00  loadli.w r3,  20(r30)
001148  ab0b0100  lui r23, 16
00114c  1f068fd7  addli r12, r30, -5184
001150  1f180000  addli r16, zero, 1
001154  1f090002  addli r18, zero, 256
001158  9f090001  addli r19, zero, 128
00115c  1f0a8000  addli r20, zero, 64
001160  9f0a4000  addli r21, zero, 32
001164  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001168  9f8b0bf0  addli r23, r23, -2048
00116c  0b133110  add.s r6, r2, r3
001170  1b322100  slli r4, r2, 2
001174  33010108  fix2float.rn r2, r2
001178  67072fd6  storeli.w r2, -5264(r30)
00117c  1f71f3ff  addli r2, r6, -1
001180  1bb32100  slli r6, r3, 2
001184  8b133130  div.s r7, r2, r3
001188  2bf1ffff  lui r2, 1048575
00118c  9b18f1ff  ori r17, r2, 4095
001190  1f010fd7  addli r2, r30, -5248
001194  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001198  5b070000  j 56
00119c  00a00000  mfence { lm }
0011a0  6b540f00  load.d r[9:10], 0(r30)
0011a4  2b0100f0  lui r2, 983040
0011a8  1f068fd7  addli r12, r30, -5184
0011ac  80510102  load_param_i r3, 2
0011b0  17112200  or r2, r4, r2
0011b4  8b901110  add.s r1, r3, r1
0011b8  0b258411  add.ul r[11:12], r[9:10], r[25:26]
0011bc  7f31c500  s_lm2gm r2, r12, 0(r[11:12])
0011c0  00a00200  mfence { lm, gm }
0011c4  63411f00  loadli.w r2,  12(r30)
0011c8  3fa02000  blt.s r1, r2, 8
0011cc  5bd60100  j 3760
0011d0  63011f00  loadli.w r2,  8(r30)
0011d4  9f220000  addli r5, zero, 2
0011d8  0b912010  add.s r2, r1, r2
0011dc  0b11f120  mul.s r2, r2, r15
0011e0  33110128  sext_int2long r[3:4], r2
0011e4  173c5102  sll.d r[25:26], r[3:4], r5
0011e8  9f01ffd6  addli r3, r30, -5256
0011ec  2b0100f0  lui r2, 983040
0011f0  6bd40100  load.d r[9:10], 0(r3)
0011f4  17112200  or r2, r4, r2
0011f8  0b258411  add.ul r[11:12], r[9:10], r[25:26]
0011fc  7f21c500  l_gm2lm r2, r12, 0(r[11:12])
001200  00a00200  mfence { lm, gm }
001204  bfa70301  blt.s r7, r16, 488
001208  9f050000  addli r11, zero, 0
00120c  1f0d0000  addli r26, zero, 0
001210  9f0d0000  addli r27, zero, 0
001214  db0c0000  j 100
001218  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
00121c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001220  9f9d0d00  addli r27, r27, 1
001224  6a7109c0  vsrl.p vr2, r18, vr0
001228  ea7119c0  vsrl.p vr3, r18, vr1
00122c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001230  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001234  6af109c0  vsrl.p vr2, r19, vr0
001238  eaf119c0  vsrl.p vr3, r19, vr1
00123c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001240  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001244  6a710ac0  vsrl.p vr2, r20, vr0
001248  ea711ac0  vsrl.p vr3, r20, vr1
00124c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001250  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001254  6af10ac0  vsrl.p vr2, r21, vr0
001258  eaf11ac0  vsrl.p vr3, r21, vr1
00125c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001260  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001264  7a110040  vextracti.f r2, 0(vr0)
001268  fa910040  vextracti.f r3, 0(vr1)
00126c  8be52510  add.f.rn r11, r11, r2
001270  0b6d3d10  add.f.rn r26, r26, r3
001274  37867d00  beq r27, r7, 384
001278  9f810d00  addli r3, r27, 0
00127c  37302701  beq r14, r18, 12
001280  17a11d01  xor r2, r27, r17
001284  8b912310  add.s r3, r7, r2
001288  0b91e120  mul.s r2, r3, r14
00128c  0b912718  sub.s r2, r15, r2
001290  0b15e140  min.s r10, r2, r14
001294  1f010fd7  addli r2, r30, -5248
001298  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
00129c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0012a0  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0012a4  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0012a8  bf4d05ff  blt.s r10, r16, -144
0012ac  9f020fd7  addli r5, r30, -5248
0012b0  1f010000  addli r2, zero, 0
0012b4  8b113320  mul.s r3, r6, r3
0012b8  1f068fd7  addli r12, r30, -5184
0012bc  9f860b00  addli r13, r23, 0
0012c0  42920202  vload_mask16.mz vr4{mr1}, 0(r5)
0012c4  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0012c8  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0012cc  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0012d0  0b9b3610  add.s r22, r13, r3
0012d4  0b1e3610  add.s r28, r12, r3
0012d8  1f048b00  addli r8, r22, 64
0012dc  ca120b02  vloads_mask16.mz vr5{mr1}, 0(r22)
0012e0  9f048b01  addli r9, r22, 192
0012e4  c2140e02  vload_mask16.mz vr9{mr1}, 0(r28)
0012e8  9f028e01  addli r5, r28, 192
0012ec  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
0012f0  1f040b01  addli r8, r22, 128
0012f4  4a940402  vloads_mask16.mz vr8{mr1}, 0(r9)
0012f8  9f040e01  addli r9, r28, 128
0012fc  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
001300  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
001304  c2950402  vload_mask16.mz vr11{mr1}, 0(r9)
001308  1f048e00  addli r8, r28, 64
00130c  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
001310  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001314  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
001318  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
00131c  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
001320  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001324  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001328  46105e02  vstore_mask16.mz vr5{mr1}, 0(r28)
00132c  46106402  vstore_mask16.mz vr6{mr1}, 0(r8)
001330  1f048100  addli r8, r2, 64
001334  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
001338  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
00133c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001340  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001344  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001348  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
00134c  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
001350  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001354  4b1b85fe  ble.s r10, r8, -316
001358  1f040b02  addli r8, r22, 256
00135c  9f048b02  addli r9, r22, 320
001360  9f020e02  addli r5, r28, 256
001364  1f010101  addli r2, r2, 128
001368  9f860604  addli r13, r13, 512
00136c  1f060604  addli r12, r12, 512
001370  4a100402  vloads_mask16.mz vr0{mr1}, 0(r8)
001374  1f040b03  addli r8, r22, 384
001378  ca920402  vloads_mask16.mz vr5{mr1}, 0(r9)
00137c  9f048b03  addli r9, r22, 448
001380  42940202  vload_mask16.mz vr8{mr1}, 0(r5)
001384  1f0b8e03  addli r22, r28, 448
001388  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
00138c  ca930402  vloads_mask16.mz vr7{mr1}, 0(r9)
001390  9f040e03  addli r9, r28, 384
001394  1f048e02  addli r8, r28, 320
001398  c2150b02  vload_mask16.mz vr11{mr1}, 0(r22)
00139c  42950402  vload_mask16.mz vr10{mr1}, 0(r9)
0013a0  c2140402  vload_mask16.mz vr9{mr1}, 0(r8)
0013a4  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0013a8  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0013ac  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0013b0  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
0013b4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0013b8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0013bc  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
0013c0  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
0013c4  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0013c8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0013cc  46906402  vstore_mask16.mz vr6{mr1}, 0(r9)
0013d0  46107b02  vstore_mask16.mz vr7{mr1}, 0(r22)
0013d4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0013d8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0013dc  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0013e0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0013e4  bf3ba1fe  blt.s r2, r10, -276
0013e8  5bc6ffff  j -464
0013ec  1f0d0000  addli r26, zero, 0
0013f0  9f050000  addli r11, zero, 0
0013f4  00a00000  mfence { lm }
0013f8  bf9607ff  blt.s r15, r16, -604
0013fc  6301efd6  loadli.w r2,  -5264(r30)
001400  e3023f00  loadli.w r5,  24(r30)
001404  8f812518  div.f.rn r3, r11, r2
001408  0f012d18  div.f.rn r2, r26, r2
00140c  9f050000  addli r11, zero, 0
001410  0be53120  mul.f.rn r10, r3, r3
001414  8be10158  neg.f r3, r3
001418  0b61a118  sub.f.rn r2, r2, r10
00141c  1f058fd7  addli r10, r30, -5184
001420  0b615110  add.f.rn r2, r2, r5
001424  ab02803f  lui r5, 260096
001428  0f010108  sqrt.f.rn r2, r2
00142c  0f812218  div.f.rn r2, r5, r2
001430  1f068500  addli r12, r10, 64
001434  c2100502  vload_mask16.mz vr1{mr1}, 0(r10)
001438  9f864500  addli r13, r11, 32
00143c  42110602  vload_mask16.mz vr2{mr1}, 0(r12)
001440  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
001444  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
001448  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
00144c  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
001450  46101502  vstore_mask16.mz vr1{mr1}, 0(r10)
001454  46102602  vstore_mask16.mz vr2{mr1}, 0(r12)
001458  4b95d7fe  ble.s r15, r13, -700
00145c  1f060501  addli r12, r10, 128
001460  9f068501  addli r13, r10, 192
001464  9f858500  addli r11, r11, 64
001468  1f050502  addli r10, r10, 256
00146c  c2100602  vload_mask16.mz vr1{mr1}, 0(r12)
001470  42910602  vload_mask16.mz vr2{mr1}, 0(r13)
001474  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
001478  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
00147c  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
001480  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
001484  46101602  vstore_mask16.mz vr1{mr1}, 0(r12)
001488  46902602  vstore_mask16.mz vr2{mr1}, 0(r13)
00148c  bf9ef5fe  blt.s r11, r15, -92
001490  dba1ffff  j -756
001494  9f000040  addli r1, zero, 8192
001498  2b0100f0  lui r2, 983040
00149c  97902000  or r1, r1, r2
0014a0  2b610000  lui r2, 6
0014a4  1f010100  addli r2, r2, 0
0014a8  ff002300  l_gm2sm r1, r2, 0(r[7:8])
0014ac  db070000  j 60
0014b0  63012f00  loadli.w r2,  16(r30)
0014b4  ab0100f0  lui r3, 983040
0014b8  1b312100  slli r2, r2, 2
0014bc  17113100  or r2, r2, r3
0014c0  abb10000  lui r3, 11
0014c4  9f810108  addli r3, r3, 1024
0014c8  7f013300  l_gm2sm r2, r3, 0(r[7:8])
0014cc  5bf80000  j 1984
0014d0  9f000040  addli r1, zero, 8192
0014d4  2b0100f0  lui r2, 983040
0014d8  97902000  or r1, r1, r2
0014dc  2b810000  lui r2, 8
0014e0  1f010100  addli r2, r2, 0
0014e4  ff002400  l_gm2sm r1, r2, 0(r[9:10])
0014e8  abf00000  lui r1, 15
0014ec  00200300  mfence { sm, gm }
0014f0  1b011500  andi r2, r10, 1
0014f4  9f020006  addli r5, zero, 768
0014f8  9b90f0ff  ori r1, r1, 4095
0014fc  80a10004  csr_set csr3, r1
001500  9f000006  addli r1, zero, 768
001504  00d00100  sync_group
001508  67072fd6  storeli.w r2, -5264(r30)
00150c  37200100  beq r2, zero, 8
001510  9f02000a  addli r5, zero, 1280
001514  63411f00  loadli.w r2,  12(r30)
001518  9f110000  addli r3, zero, 1
00151c  bf0d3104  blt.s r2, r3, 2912
001520  e301efd6  loadli.w r3,  -5264(r30)
001524  00510102  load_param_i r2, 2
001528  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00152c  2b4b0000  lui r22, 4
001530  2bae0000  lui r28, 10
001534  2ba70000  lui r14, 10
001538  1f030000  addli r6, zero, 0
00153c  9b441500  srli r9, r10, 1
001540  9bb72200  slli r15, r5, 2
001544  9f098fd7  addli r19, r30, -5184
001548  9f0b0005  addli r23, zero, 640
00154c  1f0d8000  addli r26, zero, 64
001550  9f0d4000  addli r27, zero, 32
001554  9f0a0003  addli r21, zero, 384
001558  1b441100  srli r8, r2, 1
00155c  2b610000  lui r2, 6
001560  1f0b0b00  addli r22, r22, 0
001564  1f0e0e00  addli r28, r28, 0
001568  1f070704  addli r14, r14, 512
00156c  8b901120  mul.s r1, r3, r1
001570  1f010100  addli r2, r2, 0
001574  67001fd6  storeli.w r1, -5376(r30)
001578  9bb02000  slli r1, r1, 2
00157c  0b982010  add.s r16, r1, r2
001580  2b810000  lui r2, 8
001584  1f010100  addli r2, r2, 0
001588  8b982010  add.s r17, r1, r2
00158c  abf0ffff  lui r1, 1048575
001590  1f018fd5  addli r2, r30, -5440
001594  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001598  9b9000f8  ori r1, r1, 3968
00159c  2bf10000  lui r2, 15
0015a0  e74b1fd4  storeli.w r1, -5444(r30)
0015a4  9f000001  addli r1, zero, 128
0015a8  1b19f1ff  ori r18, r2, 4095
0015ac  db030000  j 28
0015b0  00a00300  mfence { lm, sm, gm }
0015b4  80210904  csr_set csr3, r18
0015b8  00d00100  sync_group
0015bc  0b138310  add.s r6, r6, r8
0015c0  3f20d300  blt.s r6, r13, 8
0015c4  5bd30000  j 1688
0015c8  0b119310  add.s r2, r6, r9
0015cc  cb9f26fe  ble.s r13, r2, -28
0015d0  e3011f00  loadli.w r3,  8(r30)
0015d4  1f220000  addli r4, zero, 2
0015d8  9f03ffd6  addli r7, r30, -5256
0015dc  0b113110  add.s r2, r2, r3
0015e0  e3010fd6  loadli.w r3,  -5376(r30)
0015e4  1b31b100  slli r2, r2, 11
0015e8  17113100  or r2, r2, r3
0015ec  33110128  sext_int2long r[3:4], r2
0015f0  173c4102  sll.d r[25:26], r[3:4], r4
0015f4  ebd10300  load.d r[4:5], 0(r7)
0015f8  2b0100f0  lui r2, 983040
0015fc  17912700  or r2, r15, r2
001600  8ba18111  add.ul r[4:5], r[4:5], r[25:26]
001604  7fa13101  l_gm2lm r2, r19, 0(r[4:5])
001608  00a00200  mfence { lm, gm }
00160c  6301efd6  loadli.w r2,  -5264(r30)
001610  3b660100  bneq r2, zero, 408
001614  1f028fd5  addli r4, r30, -5440
001618  e3417fd5  loadli.w r3,  -5444(r30)
00161c  1f010000  addli r2, zero, 0
001620  c2110202  vload_mask16.mz vr3{mr1}, 0(r4)
001624  92303002  vadd.s.mz vr1{mr1}, zero, vr3
001628  12313002  vadd.s.mz vr2{mr1}, zero, vr3
00162c  12323002  vadd.s.mz vr4{mr1}, zero, vr3
001630  8b136111  add.s r7, r2, r22
001634  0b922910  add.s r4, r19, r2
001638  9f810101  addli r3, r3, 128
00163c  1f010104  addli r2, r2, 512
001640  1f858300  addli r10, r7, 64
001644  9f858301  addli r11, r7, 192
001648  4a900302  vloads_mask16.mz vr0{mr1}, 0(r7)
00164c  1f068201  addli r12, r4, 192
001650  42140202  vload_mask16.mz vr8{mr1}, 0(r4)
001654  ca120502  vloads_mask16.mz vr5{mr1}, 0(r10)
001658  1f850301  addli r10, r7, 128
00165c  ca930502  vloads_mask16.mz vr7{mr1}, 0(r11)
001660  9f050201  addli r11, r4, 128
001664  c2150602  vload_mask16.mz vr11{mr1}, 0(r12)
001668  4a130502  vloads_mask16.mz vr6{mr1}, 0(r10)
00166c  42950502  vload_mask16.mz vr10{mr1}, 0(r11)
001670  1f058200  addli r10, r4, 64
001674  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
001678  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
00167c  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
001680  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001684  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
001688  46100202  vstore_mask16.mz vr0{mr1}, 0(r4)
00168c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001690  46105502  vstore_mask16.mz vr5{mr1}, 0(r10)
001694  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
001698  1f050fd7  addli r10, r30, -5248
00169c  1f868302  addli r12, r7, 320
0016a0  16146202  vadd.f.mz.rn vr8{mr1}, vr4, vr6
0016a4  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0016a8  46906502  vstore_mask16.mz vr6{mr1}, 0(r11)
0016ac  9f850302  addli r11, r7, 256
0016b0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0016b4  4a130602  vloads_mask16.mz vr6{mr1}, 0(r12)
0016b8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0016bc  96117402  vadd.f.mz.rn vr3{mr1}, vr8, vr7
0016c0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0016c4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0016c8  46103502  vstore_mask16.mz vr3{mr1}, 0(r10)
0016cc  ca910502  vloads_mask16.mz vr3{mr1}, 0(r11)
0016d0  9f850303  addli r11, r7, 384
0016d4  9f838303  addli r7, r7, 448
0016d8  1f050202  addli r10, r4, 256
0016dc  ca940302  vloads_mask16.mz vr9{mr1}, 0(r7)
0016e0  9f038202  addli r7, r4, 320
0016e4  c2130502  vload_mask16.mz vr7{mr1}, 0(r10)
0016e8  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
0016ec  9f050203  addli r11, r4, 384
0016f0  1f028203  addli r4, r4, 448
0016f4  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
0016f8  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
0016fc  c2950502  vload_mask16.mz vr11{mr1}, 0(r11)
001700  96913302  vadd.f.mz.rn vr3{mr1}, vr7, vr3
001704  96136502  vadd.f.mz.rn vr7{mr1}, vr10, vr6
001708  96129002  vadd.f.mz.rn vr5{mr1}, vr0, vr9
00170c  16938502  vadd.f.mz.rn vr6{mr1}, vr11, vr8
001710  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
001714  9f030fd7  addli r7, r30, -5248
001718  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
00171c  26913102  vmac.f.mz.rn vr2{mr1}, vr3, vr3
001720  46103502  vstore_mask16.mz vr3{mr1}, 0(r10)
001724  42920302  vload_mask16.mz vr4{mr1}, 0(r7)
001728  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00172c  93837105  setlt.u r7, r3, r23
001730  46906502  vstore_mask16.mz vr6{mr1}, 0(r11)
001734  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
001738  96117002  vadd.f.mz.rn vr3{mr1}, vr0, vr7
00173c  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
001740  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
001744  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001748  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00174c  bb9b03fe  bneq r7, zero, -284
001750  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
001754  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001758  1f010002  addli r2, zero, 256
00175c  6a7101c0  vsrl.p vr2, r2, vr0
001760  ea7111c0  vsrl.p vr3, r2, vr1
001764  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001768  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00176c  6af100c0  vsrl.p vr2, r1, vr0
001770  eaf110c0  vsrl.p vr3, r1, vr1
001774  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001778  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00177c  6a710dc0  vsrl.p vr2, r26, vr0
001780  ea711dc0  vsrl.p vr3, r26, vr1
001784  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001788  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00178c  6af10dc0  vsrl.p vr2, r27, vr0
001790  eaf11dc0  vsrl.p vr3, r27, vr1
001794  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001798  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00179c  7a120040  vextracti.f r4, 0(vr0)
0017a0  fa910040  vextracti.f r3, 0(vr1)
0017a4  5b670000  j 824
0017a8  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0017ac  abf1ffff  lui r3, 1048575
0017b0  1f010000  addli r2, zero, 0
0017b4  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0017b8  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0017bc  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0017c0  9b9101f8  ori r3, r3, 3968
0017c4  8b132b10  add.s r7, r22, r2
0017c8  0b922910  add.s r4, r19, r2
0017cc  9f810101  addli r3, r3, 128
0017d0  1f010104  addli r2, r2, 512
0017d4  9f850330  addli r11, r7, 6144
0017d8  1f868330  addli r12, r7, 6208
0017dc  1f050218  addli r10, r4, 3072
0017e0  9f068219  addli r13, r4, 3264
0017e4  ca920502  vloads_mask16.mz vr5{mr1}, 0(r11)
0017e8  9f850331  addli r11, r7, 6272
0017ec  4a130602  vloads_mask16.mz vr6{mr1}, 0(r12)
0017f0  1f868331  addli r12, r7, 6336
0017f4  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
0017f8  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
0017fc  ca930502  vloads_mask16.mz vr7{mr1}, 0(r11)
001800  4a140602  vloads_mask16.mz vr8{mr1}, 0(r12)
001804  9f058218  addli r11, r4, 3136
001808  1f060219  addli r12, r4, 3200
00180c  42950502  vload_mask16.mz vr10{mr1}, 0(r11)
001810  c2150602  vload_mask16.mz vr11{mr1}, 0(r12)
001814  96945402  vadd.f.mz.rn vr9{mr1}, vr9, vr5
001818  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
00181c  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
001820  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
001824  46109502  vstore_mask16.mz vr9{mr1}, 0(r10)
001828  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
00182c  1f050fd7  addli r10, r30, -5248
001830  9f850332  addli r11, r7, 6400
001834  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
001838  96136202  vadd.f.mz.rn vr7{mr1}, vr4, vr6
00183c  16929102  vadd.f.mz.rn vr4{mr1}, vr3, vr9
001840  46106602  vstore_mask16.mz vr6{mr1}, 0(r12)
001844  1f868332  addli r12, r7, 6464
001848  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00184c  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
001850  4a130602  vloads_mask16.mz vr6{mr1}, 0(r12)
001854  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001858  96910302  vadd.f.mz.rn vr3{mr1}, vr7, vr0
00185c  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001860  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001864  46103502  vstore_mask16.mz vr3{mr1}, 0(r10)
001868  ca910502  vloads_mask16.mz vr3{mr1}, 0(r11)
00186c  9f850333  addli r11, r7, 6528
001870  9f838333  addli r7, r7, 6592
001874  1f05021a  addli r10, r4, 3328
001878  ca940302  vloads_mask16.mz vr9{mr1}, 0(r7)
00187c  9f03821a  addli r7, r4, 3392
001880  c2130502  vload_mask16.mz vr7{mr1}, 0(r10)
001884  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
001888  9f05021b  addli r11, r4, 3456
00188c  1f02821b  addli r4, r4, 3520
001890  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
001894  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
001898  c2950502  vload_mask16.mz vr11{mr1}, 0(r11)
00189c  96913302  vadd.f.mz.rn vr3{mr1}, vr7, vr3
0018a0  96136502  vadd.f.mz.rn vr7{mr1}, vr10, vr6
0018a4  96129002  vadd.f.mz.rn vr5{mr1}, vr0, vr9
0018a8  16938502  vadd.f.mz.rn vr6{mr1}, vr11, vr8
0018ac  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
0018b0  9f030fd7  addli r7, r30, -5248
0018b4  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
0018b8  26913102  vmac.f.mz.rn vr2{mr1}, vr3, vr3
0018bc  46103502  vstore_mask16.mz vr3{mr1}, 0(r10)
0018c0  42920302  vload_mask16.mz vr4{mr1}, 0(r7)
0018c4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0018c8  93835105  setlt.u r7, r3, r21
0018cc  46906502  vstore_mask16.mz vr6{mr1}, 0(r11)
0018d0  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
0018d4  96117002  vadd.f.mz.rn vr3{mr1}, vr0, vr7
0018d8  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0018dc  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0018e0  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
0018e4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0018e8  3bfb03fe  bneq r7, zero, -292
0018ec  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0018f0  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0018f4  1f010002  addli r2, zero, 256
0018f8  1f020000  addli r4, zero, 0
0018fc  ea7111c0  vsrl.p vr3, r2, vr1
001900  6a7101c0  vsrl.p vr2, r2, vr0
001904  2bf1ffff  lui r2, 1048575
001908  1b1101f8  ori r2, r2, 3968
00190c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001910  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001914  eaf110c0  vsrl.p vr3, r1, vr1
001918  6af100c0  vsrl.p vr2, r1, vr0
00191c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001920  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001924  ea711dc0  vsrl.p vr3, r26, vr1
001928  6a710dc0  vsrl.p vr2, r26, vr0
00192c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001930  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001934  eaf11dc0  vsrl.p vr3, r27, vr1
001938  6af10dc0  vsrl.p vr2, r27, vr0
00193c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001940  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001944  fa930040  vextracti.f r7, 0(vr1)
001948  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
00194c  fa150040  vextracti.f r11, 0(vr0)
001950  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001954  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001958  92311002  vadd.s.mz vr3{mr1}, zero, vr1
00195c  0b154b10  add.s r10, r22, r4
001960  8b914910  add.s r3, r19, r4
001964  1f010101  addli r2, r2, 128
001968  1f020204  addli r4, r4, 512
00196c  1f060518  addli r12, r10, 3072
001970  9f068518  addli r13, r10, 3136
001974  1f8a8101  addli r20, r3, 192
001978  42940102  vload_mask16.mz vr8{mr1}, 0(r3)
00197c  4a100602  vloads_mask16.mz vr0{mr1}, 0(r12)
001980  1f060519  addli r12, r10, 3200
001984  ca920602  vloads_mask16.mz vr5{mr1}, 0(r13)
001988  9f068519  addli r13, r10, 3264
00198c  c2150a02  vload_mask16.mz vr11{mr1}, 0(r20)
001990  4a130602  vloads_mask16.mz vr6{mr1}, 0(r12)
001994  ca930602  vloads_mask16.mz vr7{mr1}, 0(r13)
001998  9f860101  addli r13, r3, 128
00199c  1f868100  addli r12, r3, 64
0019a0  42950602  vload_mask16.mz vr10{mr1}, 0(r13)
0019a4  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
0019a8  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0019ac  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0019b0  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0019b4  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
0019b8  46105602  vstore_mask16.mz vr5{mr1}, 0(r12)
0019bc  1f060fd7  addli r12, r30, -5248
0019c0  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
0019c4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0019c8  16146202  vadd.f.mz.rn vr8{mr1}, vr4, vr6
0019cc  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0019d0  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
0019d4  46107a02  vstore_mask16.mz vr7{mr1}, 0(r20)
0019d8  9f06051a  addli r13, r10, 3328
0019dc  1f0a851a  addli r20, r10, 3392
0019e0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0019e4  4a130a02  vloads_mask16.mz vr6{mr1}, 0(r20)
0019e8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0019ec  96117402  vadd.f.mz.rn vr3{mr1}, vr8, vr7
0019f0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0019f4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0019f8  46103602  vstore_mask16.mz vr3{mr1}, 0(r12)
0019fc  ca910602  vloads_mask16.mz vr3{mr1}, 0(r13)
001a00  9f06051b  addli r13, r10, 3456
001a04  1f05851b  addli r10, r10, 3520
001a08  1f860102  addli r12, r3, 256
001a0c  ca140502  vloads_mask16.mz vr9{mr1}, 0(r10)
001a10  1f858102  addli r10, r3, 320
001a14  c2130602  vload_mask16.mz vr7{mr1}, 0(r12)
001a18  4a940602  vloads_mask16.mz vr8{mr1}, 0(r13)
001a1c  9f860103  addli r13, r3, 384
001a20  9f818103  addli r3, r3, 448
001a24  42150502  vload_mask16.mz vr10{mr1}, 0(r10)
001a28  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
001a2c  c2950602  vload_mask16.mz vr11{mr1}, 0(r13)
001a30  96913302  vadd.f.mz.rn vr3{mr1}, vr7, vr3
001a34  96136502  vadd.f.mz.rn vr7{mr1}, vr10, vr6
001a38  96129002  vadd.f.mz.rn vr5{mr1}, vr0, vr9
001a3c  16938502  vadd.f.mz.rn vr6{mr1}, vr11, vr8
001a40  46107502  vstore_mask16.mz vr7{mr1}, 0(r10)
001a44  1f050fd7  addli r10, r30, -5248
001a48  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001a4c  26913102  vmac.f.mz.rn vr2{mr1}, vr3, vr3
001a50  46103602  vstore_mask16.mz vr3{mr1}, 0(r12)
001a54  42120502  vload_mask16.mz vr4{mr1}, 0(r10)
001a58  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001a5c  13057105  setlt.u r10, r2, r23
001a60  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
001a64  46905102  vstore_mask16.mz vr5{mr1}, 0(r3)
001a68  96117002  vadd.f.mz.rn vr3{mr1}, vr0, vr7
001a6c  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
001a70  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
001a74  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001a78  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001a7c  bb0b05fe  bneq r10, zero, -288
001a80  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
001a84  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001a88  1f010002  addli r2, zero, 256
001a8c  6a7101c0  vsrl.p vr2, r2, vr0
001a90  ea7111c0  vsrl.p vr3, r2, vr1
001a94  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001a98  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001a9c  6af100c0  vsrl.p vr2, r1, vr0
001aa0  eaf110c0  vsrl.p vr3, r1, vr1
001aa4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001aa8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001aac  6a710dc0  vsrl.p vr2, r26, vr0
001ab0  ea711dc0  vsrl.p vr3, r26, vr1
001ab4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001ab8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001abc  6af10dc0  vsrl.p vr2, r27, vr0
001ac0  eaf11dc0  vsrl.p vr3, r27, vr1
001ac4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001ac8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001acc  fa910040  vextracti.f r3, 0(vr1)
001ad0  7a110040  vextracti.f r2, 0(vr0)
001ad4  0be22510  add.f.rn r4, r11, r2
001ad8  8be13310  add.f.rn r3, r7, r3
001adc  8b038330  div.u r7, r6, r8
001ae0  00350002  core_id r10
001ae4  1f010000  addli r2, zero, 0
001ae8  9bb36300  slli r7, r7, 6
001aec  9b830304  andi r7, r7, 64
001af0  9793a300  or r7, r7, r10
001af4  1bb52300  slli r10, r7, 2
001af8  8b15c511  add.s r11, r10, r28
001afc  73e04500  stores.w r4, 0(r11)
001b00  1b82e307  andi r4, r7, 126
001b04  8b13e510  add.s r7, r10, r14
001b08  1b154500  ori r10, r10, 4
001b0c  1b322200  slli r4, r4, 2
001b10  73e03300  stores.w r3, 0(r7)
001b14  8b11c511  add.s r3, r10, r28
001b18  0b15e510  add.s r10, r10, r14
001b1c  00a00300  mfence { lm, sm, gm }
001b20  80210904  csr_set csr3, r18
001b24  00d00100  sync_group
001b28  8b13c211  add.s r7, r4, r28
001b2c  efc10100  loads.w r3, 0(r3)
001b30  0b12e210  add.s r4, r4, r14
001b34  6f450500  loads.w r10, 0(r10)
001b38  efc30300  loads.w r7, 0(r7)
001b3c  6f420200  loads.w r4, 0(r4)
001b40  8be17110  add.f.rn r3, r3, r7
001b44  0b624510  add.f.rn r4, r10, r4
001b48  2b05003a  lui r10, 237568
001b4c  8be3a120  mul.f.rn r7, r3, r10
001b50  8b61a220  mul.f.rn r3, r4, r10
001b54  0be27320  mul.f.rn r4, r7, r7
001b58  8be14118  sub.f.rn r3, r3, r4
001b5c  63023f00  loadli.w r4,  24(r30)
001b60  8be14110  add.f.rn r3, r3, r4
001b64  2b02803f  lui r4, 260096
001b68  8f810108  sqrt.f.rn r3, r3
001b6c  8f013218  div.f.rn r3, r4, r3
001b70  0be20358  neg.f r4, r7
001b74  9f030000  addli r7, zero, 0
001b78  0b152810  add.s r10, r16, r2
001b7c  8b952910  add.s r11, r19, r2
001b80  0b962810  add.s r12, r17, r2
001b84  1f0a8500  addli r20, r10, 64
001b88  9f868500  addli r13, r11, 64
001b8c  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
001b90  4a110502  vloads_mask16.mz vr2{mr1}, 0(r10)
001b94  4a120602  vloads_mask16.mz vr4{mr1}, 0(r12)
001b98  ca110a02  vloads_mask16.mz vr3{mr1}, 0(r20)
001b9c  1f0a8600  addli r20, r12, 64
001ba0  c2900602  vload_mask16.mz vr1{mr1}, 0(r13)
001ba4  ca120a02  vloads_mask16.mz vr5{mr1}, 0(r20)
001ba8  1f8a4300  addli r20, r7, 32
001bac  12100202  vadd.f.mz.rn vr0{mr1}, r4, vr0
001bb0  138a4207  setle.u r20, r5, r20
001bb4  92101202  vadd.f.mz.rn vr1{mr1}, r4, vr1
001bb8  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
001bbc  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
001bc0  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
001bc4  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
001bc8  46904502  vstore_mask16.mz vr4{mr1}, 0(r11)
001bcc  46905602  vstore_mask16.mz vr5{mr1}, 0(r13)
001bd0  bb110a00  bneq r20, zero, 100
001bd4  1f0a0501  addli r20, r10, 128
001bd8  9f860501  addli r13, r11, 128
001bdc  9f858501  addli r11, r11, 192
001be0  1f058501  addli r10, r10, 192
001be4  9f838300  addli r7, r7, 64
001be8  1f010102  addli r2, r2, 256
001bec  4a110a02  vloads_mask16.mz vr2{mr1}, 0(r20)
001bf0  1f0a0601  addli r20, r12, 128
001bf4  1f068601  addli r12, r12, 192
001bf8  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
001bfc  c2900502  vload_mask16.mz vr1{mr1}, 0(r11)
001c00  4a120502  vloads_mask16.mz vr4{mr1}, 0(r10)
001c04  13855304  setlt.u r10, r7, r5
001c08  ca110a02  vloads_mask16.mz vr3{mr1}, 0(r20)
001c0c  ca120602  vloads_mask16.mz vr5{mr1}, 0(r12)
001c10  12100202  vadd.f.mz.rn vr0{mr1}, r4, vr0
001c14  92101202  vadd.f.mz.rn vr1{mr1}, r4, vr1
001c18  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
001c1c  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
001c20  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
001c24  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
001c28  46903602  vstore_mask16.mz vr3{mr1}, 0(r13)
001c2c  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
001c30  3b2d05fe  bneq r10, zero, -184
001c34  eb510f00  load.d r[4:5], 0(r30)
001c38  2b0100f0  lui r2, 983040
001c3c  00a00000  mfence { lm }
001c40  17912700  or r2, r15, r2
001c44  8ba18111  add.ul r[4:5], r[4:5], r[25:26]
001c48  7fb13101  s_lm2gm r2, r19, 0(r[4:5])
001c4c  00a00200  mfence { lm, gm }
001c50  e3461f00  loadli.w r13,  12(r30)
001c54  0b138310  add.s r6, r6, r8
001c58  bf45d3fc  blt.s r6, r13, -1680
001c5c  abf00000  lui r1, 15
001c60  9b90f0ff  ori r1, r1, 4095
001c64  80a10004  csr_set csr3, r1
001c68  00d00100  sync_group
001c6c  5b820000  j 1040
001c70  63012f00  loadli.w r2,  16(r30)
001c74  ab0100f0  lui r3, 983040
001c78  1b312100  slli r2, r2, 2
001c7c  17113100  or r2, r2, r3
001c80  abc10000  lui r3, 12
001c84  9f810108  addli r3, r3, 1024
001c88  7f013400  l_gm2sm r2, r3, 0(r[9:10])
001c8c  2bf10000  lui r2, 15
001c90  e3411f00  loadli.w r3,  12(r30)
001c94  00200300  mfence { sm, gm }
001c98  1b11f1ff  ori r2, r2, 4095
001c9c  80210104  csr_set csr3, r2
001ca0  00d00100  sync_group
001ca4  4bef1100  ble.s r3, r1, 984
001ca8  63012f00  loadli.w r2,  16(r30)
001cac  e3412f00  loadli.w r3,  20(r30)
001cb0  aba90000  lui r19, 10
001cb4  2bbc0000  lui r24, 11
001cb8  abcc0000  lui r25, 12
001cbc  9f048fd7  addli r9, r30, -5184
001cc0  1f180000  addli r16, zero, 1
001cc4  1f090002  addli r18, zero, 256
001cc8  1f0a0001  addli r20, zero, 128
001ccc  9f0a8000  addli r21, zero, 64
001cd0  1f0b4000  addli r22, zero, 32
001cd4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001cd8  9f890908  addli r19, r19, 1024
001cdc  1f0c0c08  addli r24, r24, 1024
001ce0  9f8c0c08  addli r25, r25, 1024
001ce4  1b342100  slli r8, r2, 2
001ce8  8b123110  add.s r5, r2, r3
001cec  33010108  fix2float.rn r2, r2
001cf0  1bb32100  slli r6, r3, 2
001cf4  670c2fd4  storeli.w r2, -5440(r30)
001cf8  1ff1f2ff  addli r2, r5, -1
001cfc  67008fd6  storeli.w r8, -5376(r30)
001d00  8b133130  div.s r7, r2, r3
001d04  2bf1ffff  lui r2, 1048575
001d08  9b18f1ff  ori r17, r2, 4095
001d0c  1f010fd7  addli r2, r30, -5248
001d10  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001d14  5b080000  j 64
001d18  9f02efd6  addli r5, r30, -5264
001d1c  00a00000  mfence { lm }
001d20  eb510f00  load.d r[4:5], 0(r30)
001d24  2b0100f0  lui r2, 983040
001d28  63040fd6  loadli.w r8,  -5376(r30)
001d2c  6bd50200  load.d r[11:12], 0(r5)
001d30  17112400  or r2, r8, r2
001d34  0ba5a110  add.ul r[11:12], r[4:5], r[11:12]
001d38  80510102  load_param_i r3, 2
001d3c  7f319500  s_lm2gm r2, r9, 0(r[11:12])
001d40  8b901110  add.s r1, r3, r1
001d44  00a00200  mfence { lm, gm }
001d48  63411f00  loadli.w r2,  12(r30)
001d4c  3fa02000  blt.s r1, r2, 8
001d50  db650000  j 812
001d54  63011f00  loadli.w r2,  8(r30)
001d58  1f220000  addli r4, zero, 2
001d5c  9f02ffd6  addli r5, r30, -5256
001d60  0b912010  add.s r2, r1, r2
001d64  0b11f120  mul.s r2, r2, r15
001d68  33110128  sext_int2long r[3:4], r2
001d6c  17354102  sll.d r[11:12], r[3:4], r4
001d70  ebd10200  load.d r[4:5], 0(r5)
001d74  2b0100f0  lui r2, 983040
001d78  9f02efd6  addli r5, r30, -5264
001d7c  73b0a200  store.d r[11:12], 0(r5)
001d80  17112400  or r2, r8, r2
001d84  0ba5a110  add.ul r[11:12], r[4:5], r[11:12]
001d88  7f219500  l_gm2lm r2, r9, 0(r[11:12])
001d8c  00a00200  mfence { lm, gm }
001d90  bfa70301  blt.s r7, r16, 488
001d94  9f0b0000  addli r23, zero, 0
001d98  1f0e0000  addli r28, zero, 0
001d9c  9f050000  addli r11, zero, 0
001da0  db0c0000  j 100
001da4  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001da8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001dac  9f950500  addli r11, r11, 1
001db0  6a7109c0  vsrl.p vr2, r18, vr0
001db4  ea7119c0  vsrl.p vr3, r18, vr1
001db8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001dbc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001dc0  6a710ac0  vsrl.p vr2, r20, vr0
001dc4  ea711ac0  vsrl.p vr3, r20, vr1
001dc8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001dcc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001dd0  6af10ac0  vsrl.p vr2, r21, vr0
001dd4  eaf11ac0  vsrl.p vr3, r21, vr1
001dd8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001ddc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001de0  6a710bc0  vsrl.p vr2, r22, vr0
001de4  ea711bc0  vsrl.p vr3, r22, vr1
001de8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001dec  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001df0  7a110040  vextracti.f r2, 0(vr0)
001df4  fa910040  vextracti.f r3, 0(vr1)
001df8  8beb2b10  add.f.rn r23, r23, r2
001dfc  0b6e3e10  add.f.rn r28, r28, r3
001e00  37867500  beq r11, r7, 384
001e04  9f810500  addli r3, r11, 0
001e08  37302701  beq r14, r18, 12
001e0c  17a11501  xor r2, r11, r17
001e10  8b912310  add.s r3, r7, r2
001e14  0b91e120  mul.s r2, r3, r14
001e18  0b912718  sub.s r2, r15, r2
001e1c  0b15e140  min.s r10, r2, r14
001e20  1f010fd7  addli r2, r30, -5248
001e24  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
001e28  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001e2c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001e30  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001e34  bf4d05ff  blt.s r10, r16, -144
001e38  1f020fd7  addli r4, r30, -5248
001e3c  1f010000  addli r2, zero, 0
001e40  8b113320  mul.s r3, r6, r3
001e44  1f068fd7  addli r12, r30, -5184
001e48  9f860900  addli r13, r19, 0
001e4c  42120202  vload_mask16.mz vr4{mr1}, 0(r4)
001e50  92304002  vadd.s.mz vr1{mr1}, zero, vr4
001e54  12314002  vadd.s.mz vr2{mr1}, zero, vr4
001e58  92314002  vadd.s.mz vr3{mr1}, zero, vr4
001e5c  8b923610  add.s r5, r13, r3
001e60  0b143610  add.s r8, r12, r3
001e64  1f828200  addli r4, r5, 64
001e68  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
001e6c  1f8d8201  addli r26, r5, 192
001e70  c2140402  vload_mask16.mz vr9{mr1}, 0(r8)
001e74  9f0d8401  addli r27, r8, 192
001e78  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
001e7c  1f820201  addli r4, r5, 128
001e80  4a140d02  vloads_mask16.mz vr8{mr1}, 0(r26)
001e84  1f0d0401  addli r26, r8, 128
001e88  42900d02  vload_mask16.mz vr0{mr1}, 0(r27)
001e8c  ca130202  vloads_mask16.mz vr7{mr1}, 0(r4)
001e90  c2150d02  vload_mask16.mz vr11{mr1}, 0(r26)
001e94  1f028400  addli r4, r8, 64
001e98  42150202  vload_mask16.mz vr10{mr1}, 0(r4)
001e9c  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001ea0  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
001ea4  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
001ea8  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
001eac  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001eb0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001eb4  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
001eb8  46106202  vstore_mask16.mz vr6{mr1}, 0(r4)
001ebc  1f028100  addli r4, r2, 64
001ec0  46900d02  vstore_mask16.mz vr0{mr1}, 0(r27)
001ec4  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001ec8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001ecc  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001ed0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001ed4  46107d02  vstore_mask16.mz vr7{mr1}, 0(r26)
001ed8  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
001edc  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001ee0  4b1b45fe  ble.s r10, r4, -316
001ee4  1f8d0202  addli r26, r5, 256
001ee8  9f8d8202  addli r27, r5, 320
001eec  1f020402  addli r4, r8, 256
001ef0  1f010101  addli r2, r2, 128
001ef4  9f860604  addli r13, r13, 512
001ef8  1f060604  addli r12, r12, 512
001efc  4a100d02  vloads_mask16.mz vr0{mr1}, 0(r26)
001f00  1f8d0203  addli r26, r5, 384
001f04  9f828203  addli r5, r5, 448
001f08  ca920d02  vloads_mask16.mz vr5{mr1}, 0(r27)
001f0c  42140202  vload_mask16.mz vr8{mr1}, 0(r4)
001f10  4a130d02  vloads_mask16.mz vr6{mr1}, 0(r26)
001f14  ca930202  vloads_mask16.mz vr7{mr1}, 0(r5)
001f18  1f0d0403  addli r26, r8, 384
001f1c  9f028402  addli r5, r8, 320
001f20  1f048403  addli r8, r8, 448
001f24  42150d02  vload_mask16.mz vr10{mr1}, 0(r26)
001f28  c2940202  vload_mask16.mz vr9{mr1}, 0(r5)
001f2c  c2150402  vload_mask16.mz vr11{mr1}, 0(r8)
001f30  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
001f34  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001f38  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
001f3c  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
001f40  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001f44  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001f48  46100202  vstore_mask16.mz vr0{mr1}, 0(r4)
001f4c  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
001f50  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
001f54  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001f58  46106d02  vstore_mask16.mz vr6{mr1}, 0(r26)
001f5c  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
001f60  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001f64  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001f68  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001f6c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001f70  bf3ba1fe  blt.s r2, r10, -276
001f74  5bc6ffff  j -464
001f78  1f0e0000  addli r28, zero, 0
001f7c  9f0b0000  addli r23, zero, 0
001f80  00a00000  mfence { lm }
001f84  3fd607ff  blt.s r15, r16, -620
001f88  e3018fd5  loadli.w r3,  -5440(r30)
001f8c  63023f00  loadli.w r4,  24(r30)
001f90  1f010000  addli r2, zero, 0
001f94  9f050000  addli r11, zero, 0
001f98  8f823b18  div.f.rn r5, r23, r3
001f9c  8f013e18  div.f.rn r3, r28, r3
001fa0  0be45220  mul.f.rn r8, r5, r5
001fa4  0be50258  neg.f r10, r5
001fa8  8be18118  sub.f.rn r3, r3, r8
001fac  8be14110  add.f.rn r3, r3, r4
001fb0  2b02803f  lui r4, 260096
001fb4  8f810108  sqrt.f.rn r3, r3
001fb8  8f013218  div.f.rn r3, r4, r3
001fbc  0b148111  add.s r8, r2, r24
001fc0  8b922410  add.s r5, r9, r2
001fc4  1f068400  addli r12, r8, 64
001fc8  4a110402  vloads_mask16.mz vr2{mr1}, 0(r8)
001fcc  0b149111  add.s r8, r2, r25
001fd0  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
001fd4  ca110602  vloads_mask16.mz vr3{mr1}, 0(r12)
001fd8  1f868200  addli r12, r5, 64
001fdc  4a120402  vloads_mask16.mz vr4{mr1}, 0(r8)
001fe0  1f048400  addli r8, r8, 64
001fe4  c2120602  vload_mask16.mz vr5{mr1}, 0(r12)
001fe8  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
001fec  1f844500  addli r8, r11, 32
001ff0  92101502  vadd.f.mz.rn vr1{mr1}, r10, vr1
001ff4  92125502  vadd.f.mz.rn vr5{mr1}, r10, vr5
001ff8  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
001ffc  8a925102  vmul.f.mz.rn vr5{mr1}, r3, vr5
002000  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
002004  26933202  vmac.f.mz.rn vr6{mr1}, vr5, vr3
002008  46904202  vstore_mask16.mz vr4{mr1}, 0(r5)
00200c  46106602  vstore_mask16.mz vr6{mr1}, 0(r12)
002010  4ba487fe  ble.s r15, r8, -760
002014  0b142c10  add.s r8, r24, r2
002018  0b962c10  add.s r12, r25, r2
00201c  9f858500  addli r11, r11, 64
002020  1f010102  addli r2, r2, 256
002024  9f060401  addli r13, r8, 128
002028  9f0b0601  addli r23, r12, 128
00202c  1f048401  addli r8, r8, 192
002030  1f068601  addli r12, r12, 192
002034  ca900602  vloads_mask16.mz vr1{mr1}, 0(r13)
002038  9f860201  addli r13, r5, 128
00203c  9f828201  addli r5, r5, 192
002040  4a910b02  vloads_mask16.mz vr2{mr1}, 0(r23)
002044  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
002048  4a130602  vloads_mask16.mz vr6{mr1}, 0(r12)
00204c  c2910602  vload_mask16.mz vr3{mr1}, 0(r13)
002050  42920202  vload_mask16.mz vr4{mr1}, 0(r5)
002054  92113502  vadd.f.mz.rn vr3{mr1}, r10, vr3
002058  12124502  vadd.f.mz.rn vr4{mr1}, r10, vr4
00205c  8a913102  vmul.f.mz.rn vr3{mr1}, r3, vr3
002060  0a924102  vmul.f.mz.rn vr4{mr1}, r3, vr4
002064  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
002068  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
00206c  46902602  vstore_mask16.mz vr2{mr1}, 0(r13)
002070  46906202  vstore_mask16.mz vr6{mr1}, 0(r5)
002074  3fadf5fe  blt.s r11, r15, -184
002078  5b94ffff  j -864
00207c  9f0e0fd5  addli sp, r30, -5504
002080  e38fae2a  loadli.w r31,  5456(sp)
002084  63cfae2a  loadli.w r30,  5460(sp)
002088  638ebe2a  loadli.w r28,  5464(sp)
00208c  e3cdbe2a  loadli.w r27,  5468(sp)
002090  638dce2a  loadli.w r26,  5472(sp)
002094  e3ccce2a  loadli.w r25,  5476(sp)
002098  638cde2a  loadli.w r24,  5480(sp)
00209c  e3cbde2a  loadli.w r23,  5484(sp)
0020a0  638bee2a  loadli.w r22,  5488(sp)
0020a4  e3caee2a  loadli.w r21,  5492(sp)
0020a8  638afe2a  loadli.w r20,  5496(sp)
0020ac  e3c9fe2a  loadli.w r19,  5500(sp)
0020b0  9f8e0e2b  addli sp, sp, 5504
0020b4  5f800f00  jr r31, 0
0020b8  00100000  exit
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
