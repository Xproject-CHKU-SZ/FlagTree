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
000078  9f095000  addli r19, zero, 40
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
0000dc  9f8e0efb  addli sp, sp, -640
0000e0  1f8f8e04  addli r30, sp, 576
0000e4  00520002  load_param_i r4, 0
0000e8  63014f00  loadli.w r2,  32(r30)
0000ec  e3403f00  loadli.w r1,  28(r30)
0000f0  e3414f00  loadli.w r3,  36(r30)
0000f4  8b101120  mul.s r1, r2, r1
0000f8  8b903020  mul.s r1, r1, r3
0000fc  e74e1ffa  storeli.w r1, -532(r30)
000100  4b994004  ble.s r1, r4, 2628
000104  80300002  core_id r1
000108  00d10002  load_param_i r2, 1
00010c  9f070ffc  addli r15, r30, -512
000110  1f080001  addli r16, zero, 128
000114  9f080ffd  addli r17, r30, -384
000118  2b0a807f  lui r20, 522240
00011c  ab0a4000  lui r21, 1024
000120  2b0bffff  lui r22, 1048560
000124  ab0b803f  lui r23, 260096
000128  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00012c  9bb06000  slli r1, r1, 6
000130  e70e2ffa  storeli.w r2, -536(r30)
000134  2bf1ff7f  lui r2, 524287
000138  674e1ffa  storeli.w r1, -540(r30)
00013c  ab700000  lui r1, 7
000140  9b19f1ff  ori r19, r2, 4095
000144  1b99f0ff  ori r18, r1, 4095
000148  9f200000  addli r1, zero, 2
00014c  fe8100e0  vmmov mr3, r1
000150  5b070000  j 56
000154  6b510f01  load.d r[3:4], 16(r30)
000158  6b520fdf  load.d r[5:6], -528(r30)
00015c  ab0000f0  lui r1, 983040
000160  97101800  or r1, r16, r1
000164  0b214110  add.ul r[3:4], r[3:4], r[5:6]
000168  6342fffb  loadli.w r4,  -516(r30)
00016c  ff301101  s_lm2gm r1, r17, 0(r[3:4])
000170  e300dffb  loadli.w r1,  -536(r30)
000174  00a00000  mfence { lm }
000178  0b121210  add.s r4, r4, r1
00017c  e340dffb  loadli.w r1,  -532(r30)
000180  3f201200  blt.s r4, r1, 8
000184  5b380100  j 2496
000188  e3404f00  loadli.w r1,  36(r30)
00018c  63014f00  loadli.w r2,  32(r30)
000190  e74f4ffa  storeli.w r4, -516(r30)
000194  9f110000  addli r3, zero, 1
000198  1f0d0000  addli r26, zero, 0
00019c  8b101230  div.s r1, r4, r1
0001a0  8b902030  div.s r1, r1, r2
0001a4  6341cffb  loadli.w r2,  -540(r30)
0001a8  9bb0c000  slli r1, r1, 12
0001ac  8b902010  add.s r1, r1, r2
0001b0  1f010010  addli r2, zero, 2048
0001b4  0b912038  mod.s r2, r1, r2
0001b8  33920028  sext_int2long r[5:6], r1
0001bc  ab0000f0  lui r1, 983040
0001c0  17343202  sll.d r[9:10], r[5:6], r3
0001c4  97101800  or r1, r16, r1
0001c8  73388fde  store.d r[9:10], -528(r30)
0001cc  33130128  sext_int2long r[7:8], r2
0001d0  2b0100f0  lui r2, 983040
0001d4  17323302  sll.d r[5:6], r[7:8], r3
0001d8  6b530f00  load.d r[7:8], 0(r30)
0001dc  17112800  or r2, r16, r2
0001e0  0b238310  add.ul r[7:8], r[7:8], r[9:10]
0001e4  6b548f00  load.d r[9:10], 8(r30)
0001e8  ff20f300  l_gm2lm r1, r15, 0(r[7:8])
0001ec  0b224410  add.ul r[5:6], r[9:10], r[5:6]
0001f0  7f211201  l_gm2lm r2, r17, 0(r[5:6])
0001f4  00a00000  mfence { lm }
0001f8  5b050000  j 40
0001fc  9b400101  srli r1, r2, 16
000200  9b801000  andi r1, r1, 1
000204  8b101110  add.s r1, r2, r1
000208  8b902011  add.s r1, r1, r18
00020c  9bc00001  srli r1, r1, 16
000210  1f0d4d00  addli r26, r26, 32
000214  739f1d00  store.h r1, 30(r27)
000218  00a00000  mfence { lm }
00021c  b76c0dff  beq r26, r16, -200
000220  0b92a711  add.s r4, r15, r26
000224  92300002  vadd.s.mz vr1{mr1}, zero, vr0
000228  9f110000  addli r3, zero, 1
00022c  12310002  vadd.s.mz vr2{mr1}, zero, vr0
000230  eb320200  load.hu r5, 0(r4)
000234  7e8101e0  vmmov mr2, r3
000238  6b332200  load.hu r6, 2(r4)
00023c  6b31a201  load.hu r2, 26(r4)
000240  eb30c201  load.hu r1, 28(r4)
000244  eb334200  load.hu r7, 4(r4)
000248  6b346200  load.hu r8, 6(r4)
00024c  eb348200  load.hu r9, 8(r4)
000250  6b35a200  load.hu r10, 10(r4)
000254  eb35c200  load.hu r11, 12(r4)
000258  6b36e200  load.hu r12, 14(r4)
00025c  eb360201  load.hu r13, 16(r4)
000260  6b372201  load.hu r14, 18(r4)
000264  6b3c4201  load.hu r24, 20(r4)
000268  eb3c6201  load.hu r25, 22(r4)
00026c  eb3d8201  load.hu r27, 24(r4)
000270  6b32e201  load.hu r4, 30(r4)
000274  9f410000  addli r3, zero, 4
000278  7e8001e0  vmmov mr0, r3
00027c  9f011000  addli r3, zero, 8
000280  b3920218  bfloat2float.rn r5, r5
000284  33110118  bfloat2float.rn r2, r2
000288  b3900018  bfloat2float.rn r1, r1
00028c  eaa01234  vor.u.mh vr1{mr2}, r5, vr1
000290  b3120318  bfloat2float.rn r5, r6
000294  eaa01236  vor.u.mh vr1{mr3}, r5, vr1
000298  b3920318  bfloat2float.rn r5, r7
00029c  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
0002a0  b3120418  bfloat2float.rn r5, r8
0002a4  7e8001e0  vmmov mr0, r3
0002a8  9f012000  addli r3, zero, 16
0002ac  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
0002b0  b3920418  bfloat2float.rn r5, r9
0002b4  7e8001e0  vmmov mr0, r3
0002b8  9f014000  addli r3, zero, 32
0002bc  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
0002c0  b3120518  bfloat2float.rn r5, r10
0002c4  7e8001e0  vmmov mr0, r3
0002c8  9f018000  addli r3, zero, 64
0002cc  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
0002d0  b3920518  bfloat2float.rn r5, r11
0002d4  7e8001e0  vmmov mr0, r3
0002d8  9f010001  addli r3, zero, 128
0002dc  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
0002e0  b3120618  bfloat2float.rn r5, r12
0002e4  7e8001e0  vmmov mr0, r3
0002e8  9f010002  addli r3, zero, 256
0002ec  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
0002f0  b3920618  bfloat2float.rn r5, r13
0002f4  7e8001e0  vmmov mr0, r3
0002f8  9f010004  addli r3, zero, 512
0002fc  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
000300  b3120718  bfloat2float.rn r5, r14
000304  7e8001e0  vmmov mr0, r3
000308  9f010008  addli r3, zero, 1024
00030c  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
000310  b3120c18  bfloat2float.rn r5, r24
000314  7e8001e0  vmmov mr0, r3
000318  9f010010  addli r3, zero, 2048
00031c  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
000320  b3920c18  bfloat2float.rn r5, r25
000324  7e8001e0  vmmov mr0, r3
000328  9f010020  addli r3, zero, 4096
00032c  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
000330  b3920d18  bfloat2float.rn r5, r27
000334  7e8001e0  vmmov mr0, r3
000338  9f010040  addli r3, zero, 8192
00033c  8b9da811  add.s r27, r17, r26
000340  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
000344  7e8001e0  vmmov mr0, r3
000348  ea201130  vor.u.mh vr1{mr0}, r2, vr1
00034c  2b410000  lui r2, 4
000350  7e0001e0  vmmov mr0, r2
000354  2b810000  lui r2, 8
000358  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00035c  b3100218  bfloat2float.rn r1, r4
000360  7e0001e0  vmmov mr0, r2
000364  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000368  ebb00d00  load.hu r1, 0(r27)
00036c  6bb12d00  load.hu r2, 2(r27)
000370  6bb24d00  load.hu r4, 4(r27)
000374  ebb26d00  load.hu r5, 6(r27)
000378  6bb38d00  load.hu r6, 8(r27)
00037c  ebb3ad00  load.hu r7, 10(r27)
000380  6bb4cd00  load.hu r8, 12(r27)
000384  ebb4ed00  load.hu r9, 14(r27)
000388  6bb50d01  load.hu r10, 16(r27)
00038c  ebb52d01  load.hu r11, 18(r27)
000390  6bb64d01  load.hu r12, 20(r27)
000394  ebb66d01  load.hu r13, 22(r27)
000398  6bb78d01  load.hu r14, 24(r27)
00039c  6bbcad01  load.hu r24, 26(r27)
0003a0  ebbccd01  load.hu r25, 28(r27)
0003a4  6bbeed01  load.hu r28, 30(r27)
0003a8  b3900018  bfloat2float.rn r1, r1
0003ac  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0003b0  b3100118  bfloat2float.rn r1, r2
0003b4  1f410000  addli r2, zero, 4
0003b8  7e0101e0  vmmov mr2, r2
0003bc  1f011000  addli r2, zero, 8
0003c0  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
0003c4  b3100218  bfloat2float.rn r1, r4
0003c8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0003cc  b3900218  bfloat2float.rn r1, r5
0003d0  7e0101e0  vmmov mr2, r2
0003d4  1f012000  addli r2, zero, 16
0003d8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0003dc  b3100318  bfloat2float.rn r1, r6
0003e0  7e0101e0  vmmov mr2, r2
0003e4  1f014000  addli r2, zero, 32
0003e8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0003ec  b3900318  bfloat2float.rn r1, r7
0003f0  7e0101e0  vmmov mr2, r2
0003f4  1f018000  addli r2, zero, 64
0003f8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0003fc  b3100418  bfloat2float.rn r1, r8
000400  7e0101e0  vmmov mr2, r2
000404  1f010001  addli r2, zero, 128
000408  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00040c  b3900418  bfloat2float.rn r1, r9
000410  7e0101e0  vmmov mr2, r2
000414  1f010002  addli r2, zero, 256
000418  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00041c  b3100518  bfloat2float.rn r1, r10
000420  7e0101e0  vmmov mr2, r2
000424  1f010004  addli r2, zero, 512
000428  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00042c  b3900518  bfloat2float.rn r1, r11
000430  7e0101e0  vmmov mr2, r2
000434  1f010008  addli r2, zero, 1024
000438  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00043c  b3100618  bfloat2float.rn r1, r12
000440  7e0101e0  vmmov mr2, r2
000444  1f010010  addli r2, zero, 2048
000448  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00044c  b3900618  bfloat2float.rn r1, r13
000450  7e0101e0  vmmov mr2, r2
000454  1f010020  addli r2, zero, 4096
000458  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00045c  b3100718  bfloat2float.rn r1, r14
000460  7e0101e0  vmmov mr2, r2
000464  1f010040  addli r2, zero, 8192
000468  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00046c  b3100c18  bfloat2float.rn r1, r24
000470  7e0101e0  vmmov mr2, r2
000474  2b410000  lui r2, 4
000478  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00047c  b3900c18  bfloat2float.rn r1, r25
000480  7e0101e0  vmmov mr2, r2
000484  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000488  b3100e18  bfloat2float.rn r1, r28
00048c  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000490  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000494  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
000498  00a00000  mfence { lm }
00049c  e30c0ffe  loadli.w r25,  -256(r30)
0004a0  634c0ffe  loadli.w r24,  -252(r30)
0004a4  63021ffe  loadli.w r4,  -248(r30)
0004a8  63461ffe  loadli.w r12,  -244(r30)
0004ac  e3052ffe  loadli.w r11,  -240(r30)
0004b0  63472ffe  loadli.w r14,  -236(r30)
0004b4  63013ffe  loadli.w r2,  -232(r30)
0004b8  e3403ffe  loadli.w r1,  -228(r30)
0004bc  e3064ffe  loadli.w r13,  -224(r30)
0004c0  63454ffe  loadli.w r10,  -220(r30)
0004c4  e3045ffe  loadli.w r9,  -216(r30)
0004c8  63445ffe  loadli.w r8,  -212(r30)
0004cc  e3036ffe  loadli.w r7,  -208(r30)
0004d0  63436ffe  loadli.w r6,  -204(r30)
0004d4  97823c01  and r5, r25, r19
0004d8  93015a04  setlt.u r3, r20, r5
0004dc  e3027ffe  loadli.w r5,  -200(r30)
0004e0  634e7ffe  loadli.w r28,  -196(r30)
0004e4  3be00100  bneq r3, zero, 24
0004e8  9bc10c01  srli r3, r25, 16
0004ec  9b811100  andi r3, r3, 1
0004f0  8b913c10  add.s r3, r25, r3
0004f4  8b9c2111  add.s r25, r3, r18
0004f8  5b010000  j 8
0004fc  979c5c01  or r25, r25, r21
000500  97013c01  and r3, r24, r19
000504  93013a04  setlt.u r3, r20, r3
000508  3be00100  bneq r3, zero, 24
00050c  9b410c01  srli r3, r24, 16
000510  9b811100  andi r3, r3, 1
000514  8b113c10  add.s r3, r24, r3
000518  0b9c2111  add.s r24, r3, r18
00051c  5b010000  j 8
000520  171c5c01  or r24, r24, r21
000524  97013201  and r3, r4, r19
000528  93013a04  setlt.u r3, r20, r3
00052c  3be00100  bneq r3, zero, 24
000530  9b410201  srli r3, r4, 16
000534  9b811100  andi r3, r3, 1
000538  8b113210  add.s r3, r4, r3
00053c  0b922111  add.s r4, r3, r18
000540  5b010000  j 8
000544  17125201  or r4, r4, r21
000548  97013601  and r3, r12, r19
00054c  93013a04  setlt.u r3, r20, r3
000550  3be00100  bneq r3, zero, 24
000554  9b410601  srli r3, r12, 16
000558  9b811100  andi r3, r3, 1
00055c  8b113610  add.s r3, r12, r3
000560  0b962111  add.s r12, r3, r18
000564  5b010000  j 8
000568  17165601  or r12, r12, r21
00056c  97813501  and r3, r11, r19
000570  93013a04  setlt.u r3, r20, r3
000574  3be00100  bneq r3, zero, 24
000578  9bc10501  srli r3, r11, 16
00057c  9b811100  andi r3, r3, 1
000580  8b913510  add.s r3, r11, r3
000584  8b952111  add.s r11, r3, r18
000588  5b010000  j 8
00058c  97955501  or r11, r11, r21
000590  97013701  and r3, r14, r19
000594  93013a04  setlt.u r3, r20, r3
000598  3be00100  bneq r3, zero, 24
00059c  9b410701  srli r3, r14, 16
0005a0  9b811100  andi r3, r3, 1
0005a4  8b113710  add.s r3, r14, r3
0005a8  0b972111  add.s r14, r3, r18
0005ac  5b010000  j 8
0005b0  17175701  or r14, r14, r21
0005b4  97013101  and r3, r2, r19
0005b8  93013a04  setlt.u r3, r20, r3
0005bc  3be00100  bneq r3, zero, 24
0005c0  9b410101  srli r3, r2, 16
0005c4  9b811100  andi r3, r3, 1
0005c8  0b113110  add.s r2, r2, r3
0005cc  0b112111  add.s r2, r2, r18
0005d0  5b010000  j 8
0005d4  17115101  or r2, r2, r21
0005d8  97813001  and r3, r1, r19
0005dc  93013a04  setlt.u r3, r20, r3
0005e0  3be00100  bneq r3, zero, 24
0005e4  9bc10001  srli r3, r1, 16
0005e8  9b811100  andi r3, r3, 1
0005ec  8b903010  add.s r1, r1, r3
0005f0  8b902011  add.s r1, r1, r18
0005f4  5b010000  j 8
0005f8  97905001  or r1, r1, r21
0005fc  97813601  and r3, r13, r19
000600  93013a04  setlt.u r3, r20, r3
000604  3be00100  bneq r3, zero, 24
000608  9bc10601  srli r3, r13, 16
00060c  9b811100  andi r3, r3, 1
000610  8b913610  add.s r3, r13, r3
000614  8b962111  add.s r13, r3, r18
000618  5b010000  j 8
00061c  97965601  or r13, r13, r21
000620  97013501  and r3, r10, r19
000624  93013a04  setlt.u r3, r20, r3
000628  3be00100  bneq r3, zero, 24
00062c  9b410501  srli r3, r10, 16
000630  9b811100  andi r3, r3, 1
000634  8b113510  add.s r3, r10, r3
000638  0b952111  add.s r10, r3, r18
00063c  5b010000  j 8
000640  17155501  or r10, r10, r21
000644  97813401  and r3, r9, r19
000648  93013a04  setlt.u r3, r20, r3
00064c  3be00100  bneq r3, zero, 24
000650  9bc10401  srli r3, r9, 16
000654  9b811100  andi r3, r3, 1
000658  8b913410  add.s r3, r9, r3
00065c  8b942111  add.s r9, r3, r18
000660  5b010000  j 8
000664  97945401  or r9, r9, r21
000668  97013401  and r3, r8, r19
00066c  93013a04  setlt.u r3, r20, r3
000670  3be00100  bneq r3, zero, 24
000674  9b410401  srli r3, r8, 16
000678  9b811100  andi r3, r3, 1
00067c  8b113410  add.s r3, r8, r3
000680  0b942111  add.s r8, r3, r18
000684  5b010000  j 8
000688  17145401  or r8, r8, r21
00068c  97813301  and r3, r7, r19
000690  93013a04  setlt.u r3, r20, r3
000694  3be00100  bneq r3, zero, 24
000698  9bc10301  srli r3, r7, 16
00069c  9b811100  andi r3, r3, 1
0006a0  8b913310  add.s r3, r7, r3
0006a4  8b932111  add.s r7, r3, r18
0006a8  5b010000  j 8
0006ac  97935301  or r7, r7, r21
0006b0  97013301  and r3, r6, r19
0006b4  93013a04  setlt.u r3, r20, r3
0006b8  3be00100  bneq r3, zero, 24
0006bc  9b410301  srli r3, r6, 16
0006c0  9b811100  andi r3, r3, 1
0006c4  8b113310  add.s r3, r6, r3
0006c8  0b932111  add.s r6, r3, r18
0006cc  5b010000  j 8
0006d0  17135301  or r6, r6, r21
0006d4  97813201  and r3, r5, r19
0006d8  93013a04  setlt.u r3, r20, r3
0006dc  3be00100  bneq r3, zero, 24
0006e0  9bc10201  srli r3, r5, 16
0006e4  9b811100  andi r3, r3, 1
0006e8  8b913210  add.s r3, r5, r3
0006ec  8b922111  add.s r5, r3, r18
0006f0  5b010000  j 8
0006f4  97925201  or r5, r5, r21
0006f8  97013e01  and r3, r28, r19
0006fc  93013a04  setlt.u r3, r20, r3
000700  3be00100  bneq r3, zero, 24
000704  9b410e01  srli r3, r28, 16
000708  9b811100  andi r3, r3, 1
00070c  8b113e10  add.s r3, r28, r3
000710  0b9e2111  add.s r28, r3, r18
000714  5b010000  j 8
000718  171e5e01  or r28, r28, r21
00071c  97816c01  and r3, r25, r22
000720  8bec0158  neg.f r25, r3
000724  8f8c0c00  exp.f.rn r25, r25
000728  8bec7c11  add.f.rn r25, r25, r23
00072c  8f8c9b19  div.f.rn r25, r23, r25
000730  8bec3c20  mul.f.rn r25, r25, r3
000734  97813c01  and r3, r25, r19
000738  93013a04  setlt.u r3, r20, r3
00073c  3be00100  bneq r3, zero, 24
000740  9bc10c01  srli r3, r25, 16
000744  9b811100  andi r3, r3, 1
000748  8b913c10  add.s r3, r25, r3
00074c  8b9c2111  add.s r25, r3, r18
000750  5b010000  j 8
000754  979c5c01  or r25, r25, r21
000758  97016c01  and r3, r24, r22
00075c  9bcc0c01  srli r25, r25, 16
000760  0bec0158  neg.f r24, r3
000764  73909d01  store.h r25, 0(r27)
000768  0f0c0c00  exp.f.rn r24, r24
00076c  0b6c7c11  add.f.rn r24, r24, r23
000770  0f8c8b19  div.f.rn r24, r23, r24
000774  0b6c3c20  mul.f.rn r24, r24, r3
000778  97013c01  and r3, r24, r19
00077c  93013a04  setlt.u r3, r20, r3
000780  3be00100  bneq r3, zero, 24
000784  9b410c01  srli r3, r24, 16
000788  9b811100  andi r3, r3, 1
00078c  8b113c10  add.s r3, r24, r3
000790  0b9c2111  add.s r24, r3, r18
000794  5b010000  j 8
000798  171c5c01  or r24, r24, r21
00079c  97016201  and r3, r4, r22
0007a0  1b4c0c01  srli r24, r24, 16
0007a4  0be20158  neg.f r4, r3
0007a8  73918d01  store.h r24, 2(r27)
0007ac  0f020200  exp.f.rn r4, r4
0007b0  0b627211  add.f.rn r4, r4, r23
0007b4  0f824b18  div.f.rn r4, r23, r4
0007b8  0b623220  mul.f.rn r4, r4, r3
0007bc  97013201  and r3, r4, r19
0007c0  93013a04  setlt.u r3, r20, r3
0007c4  3be00100  bneq r3, zero, 24
0007c8  9b410201  srli r3, r4, 16
0007cc  9b811100  andi r3, r3, 1
0007d0  8b113210  add.s r3, r4, r3
0007d4  0b922111  add.s r4, r3, r18
0007d8  5b010000  j 8
0007dc  17125201  or r4, r4, r21
0007e0  97016601  and r3, r12, r22
0007e4  1b420201  srli r4, r4, 16
0007e8  0be60158  neg.f r12, r3
0007ec  73924d00  store.h r4, 4(r27)
0007f0  0f060600  exp.f.rn r12, r12
0007f4  0b667611  add.f.rn r12, r12, r23
0007f8  0f86cb18  div.f.rn r12, r23, r12
0007fc  0b663620  mul.f.rn r12, r12, r3
000800  97013601  and r3, r12, r19
000804  93013a04  setlt.u r3, r20, r3
000808  3be00100  bneq r3, zero, 24
00080c  9b410601  srli r3, r12, 16
000810  9b811100  andi r3, r3, 1
000814  8b113610  add.s r3, r12, r3
000818  0b922111  add.s r4, r3, r18
00081c  5b010000  j 8
000820  17125601  or r4, r12, r21
000824  97816501  and r3, r11, r22
000828  1b420201  srli r4, r4, 16
00082c  8be50158  neg.f r11, r3
000830  73934d00  store.h r4, 6(r27)
000834  8f850500  exp.f.rn r11, r11
000838  8be57511  add.f.rn r11, r11, r23
00083c  8f85bb18  div.f.rn r11, r23, r11
000840  8be53520  mul.f.rn r11, r11, r3
000844  97813501  and r3, r11, r19
000848  93013a04  setlt.u r3, r20, r3
00084c  3be00100  bneq r3, zero, 24
000850  9bc10501  srli r3, r11, 16
000854  9b811100  andi r3, r3, 1
000858  8b913510  add.s r3, r11, r3
00085c  0b922111  add.s r4, r3, r18
000860  5b010000  j 8
000864  17925501  or r4, r11, r21
000868  97016701  and r3, r14, r22
00086c  1b420201  srli r4, r4, 16
000870  8be50158  neg.f r11, r3
000874  73944d00  store.h r4, 8(r27)
000878  8f850500  exp.f.rn r11, r11
00087c  8be57511  add.f.rn r11, r11, r23
000880  8f85bb18  div.f.rn r11, r23, r11
000884  8be53520  mul.f.rn r11, r11, r3
000888  97813501  and r3, r11, r19
00088c  93013a04  setlt.u r3, r20, r3
000890  3be00100  bneq r3, zero, 24
000894  9bc10501  srli r3, r11, 16
000898  9b811100  andi r3, r3, 1
00089c  8b913510  add.s r3, r11, r3
0008a0  0b922111  add.s r4, r3, r18
0008a4  5b010000  j 8
0008a8  17925501  or r4, r11, r21
0008ac  17016101  and r2, r2, r22
0008b0  1b420201  srli r4, r4, 16
0008b4  8b610158  neg.f r3, r2
0008b8  73954d00  store.h r4, 10(r27)
0008bc  8f810100  exp.f.rn r3, r3
0008c0  8be17111  add.f.rn r3, r3, r23
0008c4  8f813b18  div.f.rn r3, r23, r3
0008c8  0be12120  mul.f.rn r2, r3, r2
0008cc  97013101  and r3, r2, r19
0008d0  93013a04  setlt.u r3, r20, r3
0008d4  3be00100  bneq r3, zero, 24
0008d8  9b410101  srli r3, r2, 16
0008dc  9b811100  andi r3, r3, 1
0008e0  0b113110  add.s r2, r2, r3
0008e4  0b112111  add.s r2, r2, r18
0008e8  5b010000  j 8
0008ec  17115101  or r2, r2, r21
0008f0  97806001  and r1, r1, r22
0008f4  1b410101  srli r2, r2, 16
0008f8  8be10058  neg.f r3, r1
0008fc  73962d00  store.h r2, 12(r27)
000900  8f810100  exp.f.rn r3, r3
000904  8be17111  add.f.rn r3, r3, r23
000908  8f813b18  div.f.rn r3, r23, r3
00090c  8be01120  mul.f.rn r1, r3, r1
000910  97813001  and r3, r1, r19
000914  93013a04  setlt.u r3, r20, r3
000918  3be00100  bneq r3, zero, 24
00091c  1bc10001  srli r2, r1, 16
000920  1b011100  andi r2, r2, 1
000924  8b902010  add.s r1, r1, r2
000928  8b902011  add.s r1, r1, r18
00092c  5b010000  j 8
000930  97905001  or r1, r1, r21
000934  17816601  and r2, r13, r22
000938  9bc00001  srli r1, r1, 16
00093c  8b610158  neg.f r3, r2
000940  73971d00  store.h r1, 14(r27)
000944  8f810100  exp.f.rn r3, r3
000948  8be17111  add.f.rn r3, r3, r23
00094c  8f813b18  div.f.rn r3, r23, r3
000950  0be12120  mul.f.rn r2, r3, r2
000954  97013101  and r3, r2, r19
000958  93013a04  setlt.u r3, r20, r3
00095c  3be00100  bneq r3, zero, 24
000960  9b400101  srli r1, r2, 16
000964  9b801000  andi r1, r1, 1
000968  8b101110  add.s r1, r2, r1
00096c  8b902011  add.s r1, r1, r18
000970  5b010000  j 8
000974  97105101  or r1, r2, r21
000978  17016501  and r2, r10, r22
00097c  9bc00001  srli r1, r1, 16
000980  8b610158  neg.f r3, r2
000984  73981d00  store.h r1, 16(r27)
000988  8f810100  exp.f.rn r3, r3
00098c  8be17111  add.f.rn r3, r3, r23
000990  8f813b18  div.f.rn r3, r23, r3
000994  0be12120  mul.f.rn r2, r3, r2
000998  97013101  and r3, r2, r19
00099c  93013a04  setlt.u r3, r20, r3
0009a0  3be00100  bneq r3, zero, 24
0009a4  9b400101  srli r1, r2, 16
0009a8  9b801000  andi r1, r1, 1
0009ac  8b101110  add.s r1, r2, r1
0009b0  8b902011  add.s r1, r1, r18
0009b4  5b010000  j 8
0009b8  97105101  or r1, r2, r21
0009bc  17816401  and r2, r9, r22
0009c0  9bc00001  srli r1, r1, 16
0009c4  8b610158  neg.f r3, r2
0009c8  73991d00  store.h r1, 18(r27)
0009cc  8f810100  exp.f.rn r3, r3
0009d0  8be17111  add.f.rn r3, r3, r23
0009d4  8f813b18  div.f.rn r3, r23, r3
0009d8  0be12120  mul.f.rn r2, r3, r2
0009dc  97013101  and r3, r2, r19
0009e0  93013a04  setlt.u r3, r20, r3
0009e4  3be00100  bneq r3, zero, 24
0009e8  9b400101  srli r1, r2, 16
0009ec  9b801000  andi r1, r1, 1
0009f0  8b101110  add.s r1, r2, r1
0009f4  8b902011  add.s r1, r1, r18
0009f8  5b010000  j 8
0009fc  97105101  or r1, r2, r21
000a00  17016401  and r2, r8, r22
000a04  9bc00001  srli r1, r1, 16
000a08  8b610158  neg.f r3, r2
000a0c  739a1d00  store.h r1, 20(r27)
000a10  8f810100  exp.f.rn r3, r3
000a14  8be17111  add.f.rn r3, r3, r23
000a18  8f813b18  div.f.rn r3, r23, r3
000a1c  0be12120  mul.f.rn r2, r3, r2
000a20  97013101  and r3, r2, r19
000a24  93013a04  setlt.u r3, r20, r3
000a28  3be00100  bneq r3, zero, 24
000a2c  9b400101  srli r1, r2, 16
000a30  9b801000  andi r1, r1, 1
000a34  8b101110  add.s r1, r2, r1
000a38  8b902011  add.s r1, r1, r18
000a3c  5b010000  j 8
000a40  97105101  or r1, r2, r21
000a44  17816301  and r2, r7, r22
000a48  9bc00001  srli r1, r1, 16
000a4c  8b610158  neg.f r3, r2
000a50  739b1d00  store.h r1, 22(r27)
000a54  8f810100  exp.f.rn r3, r3
000a58  8be17111  add.f.rn r3, r3, r23
000a5c  8f813b18  div.f.rn r3, r23, r3
000a60  0be12120  mul.f.rn r2, r3, r2
000a64  97013101  and r3, r2, r19
000a68  93013a04  setlt.u r3, r20, r3
000a6c  3be00100  bneq r3, zero, 24
000a70  9b400101  srli r1, r2, 16
000a74  9b801000  andi r1, r1, 1
000a78  8b101110  add.s r1, r2, r1
000a7c  8b902011  add.s r1, r1, r18
000a80  5b010000  j 8
000a84  97105101  or r1, r2, r21
000a88  17016301  and r2, r6, r22
000a8c  9bc00001  srli r1, r1, 16
000a90  8b610158  neg.f r3, r2
000a94  739c1d00  store.h r1, 24(r27)
000a98  8f810100  exp.f.rn r3, r3
000a9c  8be17111  add.f.rn r3, r3, r23
000aa0  8f813b18  div.f.rn r3, r23, r3
000aa4  0be12120  mul.f.rn r2, r3, r2
000aa8  97013101  and r3, r2, r19
000aac  93013a04  setlt.u r3, r20, r3
000ab0  3be00100  bneq r3, zero, 24
000ab4  9b400101  srli r1, r2, 16
000ab8  9b801000  andi r1, r1, 1
000abc  8b101110  add.s r1, r2, r1
000ac0  8b902011  add.s r1, r1, r18
000ac4  5b010000  j 8
000ac8  97105101  or r1, r2, r21
000acc  17816201  and r2, r5, r22
000ad0  9bc00001  srli r1, r1, 16
000ad4  8b610158  neg.f r3, r2
000ad8  739d1d00  store.h r1, 26(r27)
000adc  8f810100  exp.f.rn r3, r3
000ae0  8be17111  add.f.rn r3, r3, r23
000ae4  8f813b18  div.f.rn r3, r23, r3
000ae8  0be12120  mul.f.rn r2, r3, r2
000aec  97013101  and r3, r2, r19
000af0  93013a04  setlt.u r3, r20, r3
000af4  3be00100  bneq r3, zero, 24
000af8  9b400101  srli r1, r2, 16
000afc  9b801000  andi r1, r1, 1
000b00  8b101110  add.s r1, r2, r1
000b04  8b902011  add.s r1, r1, r18
000b08  5b010000  j 8
000b0c  97105101  or r1, r2, r21
000b10  17016e01  and r2, r28, r22
000b14  9bc00001  srli r1, r1, 16
000b18  8b610158  neg.f r3, r2
000b1c  739e1d00  store.h r1, 28(r27)
000b20  8f810100  exp.f.rn r3, r3
000b24  8be17111  add.f.rn r3, r3, r23
000b28  8f813b18  div.f.rn r3, r23, r3
000b2c  0be12120  mul.f.rn r2, r3, r2
000b30  97013101  and r3, r2, r19
000b34  93013a04  setlt.u r3, r20, r3
000b38  379b01fa  beq r3, zero, -2364
000b3c  97105101  or r1, r2, r21
000b40  dbd9feff  j -2356
000b44  9f0e8ffb  addli sp, r30, -576
000b48  9f8e8e04  addli sp, sp, 576
000b4c  00a00300  mfence { lm, sm, gm }
000b50  00100000  exit
000b54  00100000  exit
000b58  00100000  exit
000b5c  00100000  exit
000b60  00100000  exit
000b64  00100000  exit
000b68  00100000  exit
000b6c  00100000  exit
000b70  00100000  exit
000b74  00100000  exit
000b78  00100000  exit
000b7c  00100000  exit
000b80  00100000  exit
000b84  00100000  exit
000b88  00100000  exit
000b8c  00100000  exit
000b90  00100000  exit
000b94  00100000  exit
000b98  00100000  exit
000b9c  00100000  exit
000ba0  00100000  exit
000ba4  00100000  exit
000ba8  00100000  exit
000bac  00100000  exit
000bb0  00100000  exit
000bb4  00100000  exit
000bb8  00100000  exit
000bbc  00100000  exit
000bc0  00100000  exit
000bc4  00100000  exit
000bc8  00100000  exit
000bcc  00100000  exit
000bd0  00100000  exit
000bd4  00100000  exit
000bd8  00100000  exit
000bdc  00100000  exit
000be0  00100000  exit
000be4  00100000  exit
000be8  00100000  exit
000bec  00100000  exit
000bf0  00100000  exit
000bf4  00100000  exit
000bf8  00100000  exit
000bfc  00100000  exit
000c00  00100000  exit
000c04  00100000  exit
000c08  00100000  exit
000c0c  00100000  exit
000c10  00100000  exit
000c14  00100000  exit
000c18  00100000  exit
000c1c  00100000  exit
000c20  00100000  exit
000c24  00100000  exit
000c28  00100000  exit
000c2c  00100000  exit
000c30  00100000  exit
000c34  00100000  exit
000c38  00100000  exit
000c3c  00100000  exit
000c40  00100000  exit
000c44  00100000  exit
000c48  00100000  exit
000c4c  00100000  exit
000c50  00100000  exit
000c54  00100000  exit
000c58  00100000  exit
000c5c  00100000  exit
000c60  00100000  exit
000c64  00100000  exit
000c68  00100000  exit
000c6c  00100000  exit
000c70  00100000  exit
000c74  00100000  exit
000c78  00100000  exit
000c7c  00100000  exit
000c80  00100000  exit
000c84  00100000  exit
000c88  00100000  exit
000c8c  00100000  exit
000c90  00100000  exit
000c94  00100000  exit
000c98  00100000  exit
000c9c  00100000  exit
000ca0  00100000  exit
000ca4  00100000  exit
000ca8  00100000  exit
000cac  00100000  exit
000cb0  00100000  exit
000cb4  00100000  exit
000cb8  00100000  exit
000cbc  00100000  exit
000cc0  00100000  exit
000cc4  00100000  exit
000cc8  00100000  exit
000ccc  00100000  exit
000cd0  00100000  exit
000cd4  00100000  exit
000cd8  00100000  exit
000cdc  00100000  exit
000ce0  00100000  exit
000ce4  00100000  exit
000ce8  00100000  exit
000cec  00100000  exit
000cf0  00100000  exit
000cf4  00100000  exit
000cf8  00100000  exit
000cfc  00100000  exit
000d00  00100000  exit
000d04  00100000  exit
000d08  00100000  exit
000d0c  00100000  exit
000d10  00100000  exit
000d14  00100000  exit
000d18  00100000  exit
000d1c  00100000  exit
000d20  00100000  exit
000d24  00100000  exit
000d28  00100000  exit
000d2c  00100000  exit
000d30  00100000  exit
000d34  00100000  exit
000d38  00100000  exit
000d3c  00100000  exit
000d40  00100000  exit
000d44  00100000  exit
000d48  00100000  exit
000d4c  00100000  exit
000d50  00100000  exit
000d54  00100000  exit
000d58  00100000  exit
000d5c  00100000  exit
000d60  00100000  exit
000d64  00100000  exit
000d68  00100000  exit
000d6c  00100000  exit
000d70  00100000  exit
000d74  00100000  exit
000d78  00100000  exit
000d7c  00100000  exit
000d80  00100000  exit
000d84  00100000  exit
000d88  00100000  exit
000d8c  00100000  exit
000d90  00100000  exit
