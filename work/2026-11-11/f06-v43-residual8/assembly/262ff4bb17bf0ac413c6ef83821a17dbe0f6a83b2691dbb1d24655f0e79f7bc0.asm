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
0000dc  9f8e8eff  addli sp, sp, -64
0000e0  1f8f0e00  addli r30, sp, 0
0000e4  805a0002  load_param_i r21, 0
0000e8  e3493f00  loadli.w r19,  28(r30)
0000ec  e3003f00  loadli.w r1,  24(r30)
0000f0  630a4f00  loadli.w r20,  32(r30)
0000f4  8b901920  mul.s r1, r19, r1
0000f8  0b9b4021  mul.s r22, r1, r20
0000fc  cb205b01  ble.s r22, r21, 40
000100  80db0002  load_param_i r23, 1
000104  8b904a31  div.s r1, r21, r20
000108  6b510f00  load.d r[3:4], 0(r30)
00010c  6b528f00  load.d r[5:6], 8(r30)
000110  6b530f01  load.d r[7:8], 16(r30)
000114  0b943031  div.s r8, r1, r19
000118  d7250000  jal 300
00011c  8b9a7a11  add.s r21, r21, r23
000120  bf9f6aff  blt.s r21, r22, -28
000124  00a00300  mfence { lm, sm, gm }
000128  00100000  exit
00012c  9f8e0eea  addli sp, sp, -2816
000130  80500102  load_param_i r1, 2
000134  00360002  core_id r12
000138  9f150000  addli r11, zero, 1
00013c  67cdee15  storeli.w r30, 2772(sp)
000140  1f8f0e16  addli r30, sp, 2816
000144  1f080004  addli r16, zero, 512
000148  e7cf3e15  storeli.w r19, 2812(sp)
00014c  e78f4e15  storeli.w r20, 2808(sp)
000150  67cf5e15  storeli.w r21, 2804(sp)
000154  678f6e15  storeli.w r22, 2800(sp)
000158  e7ce7e15  storeli.w r23, 2796(sp)
00015c  e78e8e15  storeli.w r24, 2792(sp)
000160  67ce9e15  storeli.w r25, 2788(sp)
000164  678eae15  storeli.w r26, 2784(sp)
000168  e7cdbe15  storeli.w r27, 2780(sp)
00016c  e78dce15  storeli.w r28, 2776(sp)
000170  678dfe15  storeli.w r31, 2768(sp)
000174  0b968050  fmac.s r12, r1, r8
000178  1f040010  addli r8, zero, 2048
00017c  9f078ffb  addli r15, r30, -576
000180  1b358600  slli r10, r12, 8
000184  0b148538  mod.s r8, r10, r8
000188  33140428  sext_int2long r[9:10], r8
00018c  1734b402  sll.d r[9:10], r[9:10], r11
000190  8b268210  add.ul r[14:15], r[5:6], r[9:10]
000194  33140528  sext_int2long r[9:10], r10
000198  ab0200f0  lui r5, 983040
00019c  1f026fea  addli r4, r30, -2768
0001a0  1734b402  sll.d r[9:10], r[9:10], r11
0001a4  ab0500f0  lui r11, 983040
0001a8  97125800  or r5, r16, r5
0001ac  73302200  store.d r[3:4], 0(r4)
0001b0  0b248110  add.ul r[9:10], r[3:4], r[9:10]
0001b4  1f018ff3  addli r2, r30, -1600
0001b8  9715b800  or r11, r16, r11
0001bc  ffa2f600  l_gm2lm r5, r15, 0(r[14:15])
0001c0  9f71f07f  addli r3, zero, 16383
0001c4  ff252400  l_gm2lm r11, r2, 0(r[9:10])
0001c8  1f014feb  addli r2, r30, -2656
0001cc  00a00200  mfence { lm, gm }
0001d0  73306100  store.d r[7:8], 0(r2)
0001d4  bfe6c102  blt.s r3, r12, 1464
0001d8  1f010018  addli r2, zero, 3072
0001dc  9f038feb  addli r7, r30, -2624
0001e0  2b080080  lui r16, 524288
0001e4  ab09803f  lui r19, 260096
0001e8  1f0be001  addli r22, zero, 240
0001ec  9f0c0000  addli r25, zero, 0
0001f0  8b902020  mul.s r1, r1, r2
0001f4  1f848300  addli r8, r7, 64
0001f8  9f840301  addli r9, r7, 128
0001fc  9f858301  addli r11, r7, 192
000200  9f860302  addli r13, r7, 256
000204  1f878302  addli r14, r7, 320
000208  9f870303  addli r15, r7, 384
00020c  9f888303  addli r17, r7, 448
000210  1f890304  addli r18, r7, 512
000214  1f8a8304  addli r20, r7, 576
000218  9f8a0305  addli r21, r7, 640
00021c  9f8b8305  addli r23, r7, 704
000220  1f8c0306  addli r24, r7, 768
000224  1f8d8306  addli r26, r7, 832
000228  9f8d0307  addli r27, r7, 896
00022c  1f8e8307  addli r28, r7, 960
000230  e7491fea  storeli.w r1, -2660(r30)
000234  9f008ffb  addli r1, r30, -576
000238  e7098fea  storeli.w r8, -2664(r30)
00023c  67099fea  storeli.w r9, -2672(r30)
000240  e748bfea  storeli.w r11, -2676(r30)
000244  6748dfea  storeli.w r13, -2684(r30)
000248  6708efea  storeli.w r14, -2688(r30)
00024c  e707ffea  storeli.w r15, -2696(r30)
000250  67471feb  storeli.w r17, -2700(r30)
000254  e7462feb  storeli.w r18, -2708(r30)
000258  e7064feb  storeli.w r20, -2712(r30)
00025c  67065feb  storeli.w r21, -2720(r30)
000260  e7457feb  storeli.w r23, -2724(r30)
000264  67458feb  storeli.w r24, -2732(r30)
000268  6705afeb  storeli.w r26, -2736(r30)
00026c  e704bfeb  storeli.w r27, -2744(r30)
000270  6744cfeb  storeli.w r28, -2748(r30)
000274  1f818000  addli r2, r1, 64
000278  67492fea  storeli.w r2, -2668(r30)
00027c  1f810001  addli r2, r1, 128
000280  e7082fea  storeli.w r2, -2680(r30)
000284  1f818001  addli r2, r1, 192
000288  e7472fea  storeli.w r2, -2692(r30)
00028c  1f810002  addli r2, r1, 256
000290  67072fea  storeli.w r2, -2704(r30)
000294  1f818002  addli r2, r1, 320
000298  67462fea  storeli.w r2, -2716(r30)
00029c  1f810003  addli r2, r1, 384
0002a0  9f808003  addli r1, r1, 448
0002a4  e7441fea  storeli.w r1, -2740(r30)
0002a8  9b900302  ori r1, r7, 32
0002ac  e7052fea  storeli.w r2, -2728(r30)
0002b0  2bf1ffff  lui r2, 1048575
0002b4  67041fea  storeli.w r1, -2752(r30)
0002b8  abf03f00  lui r1, 1023
0002bc  9b90f0ff  ori r1, r1, 4095
0002c0  e7431fea  storeli.w r1, -2756(r30)
0002c4  9b1001ff  ori r1, r2, 4080
0002c8  e7031fea  storeli.w r1, -2760(r30)
0002cc  e3403feb  loadli.w r1,  -2660(r30)
0002d0  0b131510  add.s r6, r10, r1
0002d4  e3407fea  loadli.w r1,  -2756(r30)
0002d8  bff06000  blt.s r1, r6, 60
0002dc  b3100328  sext_int2long r[2:3], r6
0002e0  1f120000  addli r4, zero, 1
0002e4  1f066fea  addli r12, r30, -2768
0002e8  9ba11c00  xori r3, r25, 1
0002ec  97b04002  sll.d r[2:3], r[2:3], r4
0002f0  6b520600  load.d r[5:6], 0(r12)
0002f4  9bb19100  slli r3, r3, 9
0002f8  8b201210  add.ul r[2:3], r[5:6], r[2:3]
0002fc  9f028ff3  addli r5, r30, -1600
000300  2b0200f0  lui r4, 983040
000304  8b913210  add.s r3, r5, r3
000308  9f020004  addli r5, zero, 512
00030c  17924200  or r4, r5, r4
000310  7fa23000  l_gm2lm r4, r3, 0(r[2:3])
000314  1f018ffb  addli r2, r30, -576
000318  9bb09c00  slli r1, r25, 9
00031c  e74b6fea  storeli.w r6, -2628(r30)
000320  42000102  vload.mz vr0{mr1}, 0(r2)
000324  1f018ff3  addli r2, r30, -1600
000328  0b131110  add.s r6, r2, r1
00032c  e3402feb  loadli.w r1,  -2668(r30)
000330  42010302  vload.mz vr2{mr1}, 0(r6)
000334  1f018300  addli r2, r6, 64
000338  9f020303  addli r5, r6, 384
00033c  1f068303  addli r12, r6, 448
000340  c2800002  vload.mz vr1{mr1}, 0(r1)
000344  9f000301  addli r1, r6, 128
000348  86310000  vfp162float_l.rn vr3, vr0
00034c  06700000  vfp162float_h.rn vr0, vr0
000350  42020102  vload.mz vr4{mr1}, 0(r2)
000354  674b2fea  storeli.w r2, -2636(r30)
000358  e70b1fea  storeli.w r1, -2632(r30)
00035c  86320100  vfp162float_l.rn vr5, vr2
000360  06710100  vfp162float_h.rn vr2, vr2
000364  06b30000  vfp162float_l.rn vr6, vr1
000368  86f00000  vfp162float_h.rn vr1, vr1
00036c  16100102  vadd.f.mz.rn vr0{mr1}, vr2, vr0
000370  42810002  vload.mz vr2{mr1}, 0(r1)
000374  e3001feb  loadli.w r1,  -2680(r30)
000378  96913202  vadd.f.mz.rn vr3{mr1}, vr5, vr3
00037c  86320200  vfp162float_l.rn vr5, vr4
000380  06720200  vfp162float_h.rn vr4, vr4
000384  46100402  vstore_mask16.mz vr0{mr1}, 0(r8)
000388  42800002  vload.mz vr0{mr1}, 0(r1)
00038c  9f008301  addli r1, r6, 192
000390  46903302  vstore_mask16.mz vr3{mr1}, 0(r7)
000394  96916202  vadd.f.mz.rn vr3{mr1}, vr5, vr6
000398  96101202  vadd.f.mz.rn vr1{mr1}, vr4, vr1
00039c  670b1fea  storeli.w r1, -2640(r30)
0003a0  c2820002  vload.mz vr5{mr1}, 0(r1)
0003a4  e340ffea  loadli.w r1,  -2692(r30)
0003a8  46903402  vstore_mask16.mz vr3{mr1}, 0(r9)
0003ac  86310100  vfp162float_l.rn vr3, vr2
0003b0  06710100  vfp162float_h.rn vr2, vr2
0003b4  46901502  vstore_mask16.mz vr1{mr1}, 0(r11)
0003b8  42830002  vload.mz vr6{mr1}, 0(r1)
0003bc  9f000302  addli r1, r6, 256
0003c0  06320000  vfp162float_l.rn vr4, vr0
0003c4  06700000  vfp162float_h.rn vr0, vr0
0003c8  e74a1fea  storeli.w r1, -2644(r30)
0003cc  96904102  vadd.f.mz.rn vr1{mr1}, vr3, vr4
0003d0  16100102  vadd.f.mz.rn vr0{mr1}, vr2, vr0
0003d4  06b10200  vfp162float_l.rn vr2, vr5
0003d8  86f10200  vfp162float_h.rn vr3, vr5
0003dc  06320300  vfp162float_l.rn vr4, vr6
0003e0  86720300  vfp162float_h.rn vr5, vr6
0003e4  42830002  vload.mz vr6{mr1}, 0(r1)
0003e8  e300efea  loadli.w r1,  -2704(r30)
0003ec  c2830002  vload.mz vr7{mr1}, 0(r1)
0003f0  46901602  vstore_mask16.mz vr1{mr1}, 0(r13)
0003f4  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
0003f8  9f008302  addli r1, r6, 320
0003fc  16104102  vadd.f.mz.rn vr0{mr1}, vr2, vr4
000400  96905102  vadd.f.mz.rn vr1{mr1}, vr3, vr5
000404  e70a1fea  storeli.w r1, -2648(r30)
000408  06310300  vfp162float_l.rn vr2, vr6
00040c  06720300  vfp162float_h.rn vr4, vr6
000410  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
000414  46901802  vstore_mask16.mz vr1{mr1}, 0(r17)
000418  86b10300  vfp162float_l.rn vr3, vr7
00041c  86f20300  vfp162float_h.rn vr5, vr7
000420  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000424  c2810002  vload.mz vr3{mr1}, 0(r1)
000428  e340cfea  loadli.w r1,  -2716(r30)
00042c  16105202  vadd.f.mz.rn vr0{mr1}, vr4, vr5
000430  42830002  vload.mz vr6{mr1}, 0(r1)
000434  e300bfea  loadli.w r1,  -2728(r30)
000438  46102902  vstore_mask16.mz vr2{mr1}, 0(r18)
00043c  46100a02  vstore_mask16.mz vr0{mr1}, 0(r20)
000440  86b00100  vfp162float_l.rn vr1, vr3
000444  86f10100  vfp162float_h.rn vr3, vr3
000448  06310300  vfp162float_l.rn vr2, vr6
00044c  06720300  vfp162float_h.rn vr4, vr6
000450  16902002  vadd.f.mz.rn vr0{mr1}, vr1, vr2
000454  96904102  vadd.f.mz.rn vr1{mr1}, vr3, vr4
000458  42810202  vload.mz vr2{mr1}, 0(r5)
00045c  46900a02  vstore_mask16.mz vr0{mr1}, 0(r21)
000460  42800002  vload.mz vr0{mr1}, 0(r1)
000464  e3409fea  loadli.w r1,  -2740(r30)
000468  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
00046c  c2000602  vload.mz vr1{mr1}, 0(r12)
000470  86310100  vfp162float_l.rn vr3, vr2
000474  06710100  vfp162float_h.rn vr2, vr2
000478  42820002  vload.mz vr4{mr1}, 0(r1)
00047c  86320000  vfp162float_l.rn vr5, vr0
000480  06700000  vfp162float_h.rn vr0, vr0
000484  06b30000  vfp162float_l.rn vr6, vr1
000488  86f00000  vfp162float_h.rn vr1, vr1
00048c  86330200  vfp162float_l.rn vr7, vr4
000490  06720200  vfp162float_h.rn vr4, vr4
000494  16100102  vadd.f.mz.rn vr0{mr1}, vr2, vr0
000498  96915102  vadd.f.mz.rn vr3{mr1}, vr3, vr5
00049c  16117302  vadd.f.mz.rn vr2{mr1}, vr6, vr7
0004a0  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0004a4  46103c02  vstore_mask16.mz vr3{mr1}, 0(r24)
0004a8  46100d02  vstore_mask16.mz vr0{mr1}, 0(r26)
0004ac  46902d02  vstore_mask16.mz vr2{mr1}, 0(r27)
0004b0  46101e02  vstore_mask16.mz vr1{mr1}, 0(r28)
0004b4  00a00000  mfence { lm }
0004b8  63078fea  loadli.w r14,  -2752(r30)
0004bc  e3077fea  loadli.w r15,  -2760(r30)
0004c0  e300c7ff  loadli.w r1,  -32(r14)
0004c4  6341c7ff  loadli.w r2,  -28(r14)
0004c8  e301d7ff  loadli.w r3,  -24(r14)
0004cc  e348d7ff  loadli.w r17,  -20(r14)
0004d0  e30de7ff  loadli.w r27,  -16(r14)
0004d4  e3450700  loadli.w r11,  4(r14)
0004d8  6349e7ff  loadli.w r18,  -12(r14)
0004dc  630a1700  loadli.w r20,  8(r14)
0004e0  630cf7ff  loadli.w r24,  -8(r14)
0004e4  634d1700  loadli.w r26,  12(r14)
0004e8  e3063700  loadli.w r13,  24(r14)
0004ec  e3433700  loadli.w r7,  28(r14)
0004f0  9f872700  addli r15, r15, 16
0004f4  17a20001  xor r4, r1, r16
0004f8  17240101  xor r8, r2, r16
0004fc  97a40101  xor r9, r3, r16
000500  0f020200  exp.f.rn r4, r4
000504  0f040400  exp.f.rn r8, r8
000508  8f840400  exp.f.rn r9, r9
00050c  0b623211  add.f.rn r4, r4, r19
000510  0b643411  add.f.rn r8, r8, r19
000514  8be43411  add.f.rn r9, r9, r19
000518  8f8a4018  div.f.rn r21, r1, r4
00051c  97a00801  xor r1, r17, r16
000520  8f0b8118  div.f.rn r23, r2, r8
000524  17a10d01  xor r2, r27, r16
000528  0f849118  div.f.rn r8, r3, r9
00052c  e341f7ff  loadli.w r3,  -4(r14)
000530  63022700  loadli.w r4,  16(r14)
000534  e3442700  loadli.w r9,  20(r14)
000538  8f800000  exp.f.rn r1, r1
00053c  0f010100  exp.f.rn r2, r2
000540  0b6e3111  add.f.rn r28, r2, r19
000544  8be03011  add.f.rn r1, r1, r19
000548  63010700  loadli.w r2,  0(r14)
00054c  674e77ff  storeli.w r23, -28(r14)
000550  97ab0101  xor r23, r3, r16
000554  e70e87fe  storeli.w r8, -24(r14)
000558  17240901  xor r8, r18, r16
00055c  670e57ff  storeli.w r21, -32(r14)
000560  972a0c01  xor r21, r24, r16
000564  8f801818  div.f.rn r1, r17, r1
000568  8f88cd19  div.f.rn r17, r27, r28
00056c  972d0101  xor r27, r2, r16
000570  17ae0501  xor r28, r11, r16
000574  0f040400  exp.f.rn r8, r8
000578  8f8b0b00  exp.f.rn r23, r23
00057c  8f8a0a00  exp.f.rn r21, r21
000580  8f8d0d00  exp.f.rn r27, r27
000584  0f0e0e00  exp.f.rn r28, r28
000588  0b643411  add.f.rn r8, r8, r19
00058c  8beb3b11  add.f.rn r23, r23, r19
000590  8bea3a11  add.f.rn r21, r21, r19
000594  8bed3d11  add.f.rn r27, r27, r19
000598  0b6e3e11  add.f.rn r28, r28, r19
00059c  e74e17fe  storeli.w r1, -20(r14)
0005a0  0f048918  div.f.rn r8, r18, r8
0005a4  8f817119  div.f.rn r3, r3, r23
0005a8  670f17ff  storeli.w r17, -16(r14)
0005ac  97a80301  xor r17, r7, r16
0005b0  0f095c19  div.f.rn r18, r24, r21
0005b4  8f80c519  div.f.rn r1, r11, r28
0005b8  0f01b119  div.f.rn r2, r2, r27
0005bc  97a50601  xor r11, r13, r16
0005c0  8f880800  exp.f.rn r17, r17
0005c4  8f850500  exp.f.rn r11, r11
0005c8  8be83811  add.f.rn r17, r17, r19
0005cc  8be53511  add.f.rn r11, r11, r19
0005d0  674f87fe  storeli.w r8, -12(r14)
0005d4  17a40401  xor r8, r9, r16
0005d8  e74f37fe  storeli.w r3, -4(r14)
0005dc  97210201  xor r3, r4, r16
0005e0  e70f27ff  storeli.w r18, -8(r14)
0005e4  67002700  storeli.w r2, 0(r14)
0005e8  17210a01  xor r2, r20, r16
0005ec  67401700  storeli.w r1, 4(r14)
0005f0  8f000100  exp.f.rn r1, r2
0005f4  8f810100  exp.f.rn r3, r3
0005f8  0f040400  exp.f.rn r8, r8
0005fc  8f831319  div.f.rn r7, r7, r17
000600  8be03011  add.f.rn r1, r1, r19
000604  17210d01  xor r2, r26, r16
000608  8be13111  add.f.rn r3, r3, r19
00060c  0b643411  add.f.rn r8, r8, r19
000610  0f010100  exp.f.rn r2, r2
000614  0b613111  add.f.rn r2, r2, r19
000618  8f001a18  div.f.rn r1, r20, r1
00061c  8f013218  div.f.rn r3, r4, r3
000620  0f828418  div.f.rn r4, r9, r8
000624  0f84b618  div.f.rn r8, r13, r11
000628  e7417700  storeli.w r7, 28(r14)
00062c  0f012d18  div.f.rn r2, r26, r2
000630  e7001700  storeli.w r1, 8(r14)
000634  93806705  setlt.u r1, r15, r22
000638  67013700  storeli.w r3, 16(r14)
00063c  67414700  storeli.w r4, 20(r14)
000640  e7018700  storeli.w r8, 24(r14)
000644  e7402700  storeli.w r2, 12(r14)
000648  1f078700  addli r14, r14, 64
00064c  bbd900fe  bneq r1, zero, -396
000650  00a00000  mfence { lm }
000654  9f038feb  addli r7, r30, -2624
000658  9f110000  addli r3, zero, 1
00065c  9bac1c00  xori r25, r25, 1
000660  e3042feb  loadli.w r9,  -2672(r30)
000664  e3451feb  loadli.w r11,  -2676(r30)
000668  e3460feb  loadli.w r13,  -2684(r30)
00066c  e3406feb  loadli.w r1,  -2636(r30)
000670  e307ffea  loadli.w r15,  -2696(r30)
000674  63070feb  loadli.w r14,  -2688(r30)
000678  e348efea  loadli.w r17,  -2700(r30)
00067c  6349dfea  loadli.w r18,  -2708(r30)
000680  630adfea  loadli.w r20,  -2712(r30)
000684  e30acfea  loadli.w r21,  -2720(r30)
000688  e34bbfea  loadli.w r23,  -2724(r30)
00068c  634cafea  loadli.w r24,  -2732(r30)
000690  63043feb  loadli.w r8,  -2664(r30)
000694  630dafea  loadli.w r26,  -2736(r30)
000698  e30d9fea  loadli.w r27,  -2744(r30)
00069c  634e8fea  loadli.w r28,  -2748(r30)
0006a0  42900402  vload_mask16.mz vr0{mr1}, 0(r9)
0006a4  c2900502  vload_mask16.mz vr1{mr1}, 0(r11)
0006a8  42910602  vload_mask16.mz vr2{mr1}, 0(r13)
0006ac  c2110702  vload_mask16.mz vr3{mr1}, 0(r14)
0006b0  42120a02  vload_mask16.mz vr4{mr1}, 0(r20)
0006b4  c2920a02  vload_mask16.mz vr5{mr1}, 0(r21)
0006b8  42930b02  vload_mask16.mz vr6{mr1}, 0(r23)
0006bc  06100000  vfloat2fp16_l.rn vr0, vr0
0006c0  06d00000  vfloat2fp16_h.rn vr0, vr1
0006c4  86100100  vfloat2fp16_l.rn vr1, vr2
0006c8  42910802  vload_mask16.mz vr2{mr1}, 0(r17)
0006cc  46800002  vstore.mz vr0{mr1}, 0(r1)
0006d0  42900702  vload_mask16.mz vr0{mr1}, 0(r15)
0006d4  86d00100  vfloat2fp16_h.rn vr1, vr3
0006d8  e3007feb  loadli.w r1,  -2632(r30)
0006dc  c2110902  vload_mask16.mz vr3{mr1}, 0(r18)
0006e0  46801002  vstore.mz vr1{mr1}, 0(r1)
0006e4  e3006feb  loadli.w r1,  -2640(r30)
0006e8  c2100c02  vload_mask16.mz vr1{mr1}, 0(r24)
0006ec  06100000  vfloat2fp16_l.rn vr0, vr0
0006f0  06500100  vfloat2fp16_h.rn vr0, vr2
0006f4  42110d02  vload_mask16.mz vr2{mr1}, 0(r26)
0006f8  86900000  vfloat2fp16_l.rn vr1, vr1
0006fc  46800002  vstore.mz vr0{mr1}, 0(r1)
000700  06900100  vfloat2fp16_l.rn vr0, vr3
000704  e3405feb  loadli.w r1,  -2644(r30)
000708  c2110402  vload_mask16.mz vr3{mr1}, 0(r8)
00070c  86500100  vfloat2fp16_h.rn vr1, vr2
000710  06500200  vfloat2fp16_h.rn vr0, vr4
000714  42920d02  vload_mask16.mz vr4{mr1}, 0(r27)
000718  46801202  vstore.mz vr1{mr1}, 0(r5)
00071c  46800002  vstore.mz vr0{mr1}, 0(r1)
000720  06900200  vfloat2fp16_l.rn vr0, vr5
000724  e3005feb  loadli.w r1,  -2648(r30)
000728  c2120e02  vload_mask16.mz vr5{mr1}, 0(r28)
00072c  06500300  vfloat2fp16_h.rn vr0, vr6
000730  46800002  vstore.mz vr0{mr1}, 0(r1)
000734  42900302  vload_mask16.mz vr0{mr1}, 0(r7)
000738  b3100528  sext_int2long r[2:3], r10
00073c  1f054feb  addli r10, r30, -2656
000740  6b520500  load.d r[5:6], 0(r10)
000744  97b03002  sll.d r[2:3], r[2:3], r3
000748  ab0100f0  lui r3, 983040
00074c  8b201210  add.ul r[2:3], r[5:6], r[2:3]
000750  1f020004  addli r4, zero, 512
000754  06100000  vfloat2fp16_l.rn vr0, vr0
000758  97113200  or r3, r4, r3
00075c  06d00100  vfloat2fp16_h.rn vr0, vr3
000760  46000302  vstore.mz vr0{mr1}, 0(r6)
000764  06100200  vfloat2fp16_l.rn vr0, vr4
000768  06d00200  vfloat2fp16_h.rn vr0, vr5
00076c  46000602  vstore.mz vr0{mr1}, 0(r12)
000770  00a00000  mfence { lm }
000774  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
000778  ab004000  lui r1, 1024
00077c  00a00200  mfence { lm, gm }
000780  63417feb  loadli.w r2,  -2628(r30)
000784  1f050100  addli r10, r2, 0
000788  3f1d11fc  blt.s r2, r1, -1212
00078c  9f0e0fea  addli sp, r30, -2816
000790  e38fae15  loadli.w r31,  2768(sp)
000794  63cfae15  loadli.w r30,  2772(sp)
000798  638ebe15  loadli.w r28,  2776(sp)
00079c  e3cdbe15  loadli.w r27,  2780(sp)
0007a0  638dce15  loadli.w r26,  2784(sp)
0007a4  e3ccce15  loadli.w r25,  2788(sp)
0007a8  638cde15  loadli.w r24,  2792(sp)
0007ac  e3cbde15  loadli.w r23,  2796(sp)
0007b0  638bee15  loadli.w r22,  2800(sp)
0007b4  e3caee15  loadli.w r21,  2804(sp)
0007b8  638afe15  loadli.w r20,  2808(sp)
0007bc  e3c9fe15  loadli.w r19,  2812(sp)
0007c0  9f8e0e16  addli sp, sp, 2816
0007c4  5f800f00  jr r31, 0
0007c8  00100000  exit
0007cc  00100000  exit
0007d0  00100000  exit
0007d4  00100000  exit
0007d8  00100000  exit
0007dc  00100000  exit
0007e0  00100000  exit
0007e4  00100000  exit
0007e8  00100000  exit
0007ec  00100000  exit
0007f0  00100000  exit
0007f4  00100000  exit
0007f8  00100000  exit
0007fc  00100000  exit
000800  00100000  exit
000804  00100000  exit
000808  00100000  exit
00080c  00100000  exit
000810  00100000  exit
000814  00100000  exit
000818  00100000  exit
00081c  00100000  exit
000820  00100000  exit
000824  00100000  exit
000828  00100000  exit
00082c  00100000  exit
000830  00100000  exit
000834  00100000  exit
000838  00100000  exit
00083c  00100000  exit
000840  00100000  exit
000844  00100000  exit
000848  00100000  exit
00084c  00100000  exit
000850  00100000  exit
000854  00100000  exit
000858  00100000  exit
00085c  00100000  exit
000860  00100000  exit
000864  00100000  exit
000868  00100000  exit
00086c  00100000  exit
000870  00100000  exit
000874  00100000  exit
000878  00100000  exit
00087c  00100000  exit
000880  00100000  exit
000884  00100000  exit
000888  00100000  exit
00088c  00100000  exit
000890  00100000  exit
000894  00100000  exit
000898  00100000  exit
00089c  00100000  exit
0008a0  00100000  exit
0008a4  00100000  exit
0008a8  00100000  exit
0008ac  00100000  exit
0008b0  00100000  exit
0008b4  00100000  exit
0008b8  00100000  exit
0008bc  00100000  exit
0008c0  00100000  exit
0008c4  00100000  exit
0008c8  00100000  exit
0008cc  00100000  exit
0008d0  00100000  exit
0008d4  00100000  exit
0008d8  00100000  exit
0008dc  00100000  exit
0008e0  00100000  exit
0008e4  00100000  exit
0008e8  00100000  exit
0008ec  00100000  exit
0008f0  00100000  exit
0008f4  00100000  exit
0008f8  00100000  exit
0008fc  00100000  exit
000900  00100000  exit
000904  00100000  exit
000908  00100000  exit
00090c  00100000  exit
000910  00100000  exit
000914  00100000  exit
000918  00100000  exit
00091c  00100000  exit
000920  00100000  exit
000924  00100000  exit
000928  00100000  exit
00092c  00100000  exit
000930  00100000  exit
000934  00100000  exit
000938  00100000  exit
00093c  00100000  exit
000940  00100000  exit
000944  00100000  exit
000948  00100000  exit
00094c  00100000  exit
000950  00100000  exit
000954  00100000  exit
000958  00100000  exit
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
