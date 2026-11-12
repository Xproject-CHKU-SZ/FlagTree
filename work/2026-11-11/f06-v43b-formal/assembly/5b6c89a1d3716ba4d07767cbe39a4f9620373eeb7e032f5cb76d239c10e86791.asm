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
0000fc  4b115b01  ble.s r22, r21, 68
000100  80db0002  load_param_i r23, 1
000104  1f0c0001  addli r24, zero, 128
000108  9f0c0008  addli r25, zero, 1024
00010c  2b0d0100  lui r26, 16
000110  8b904a31  div.s r1, r21, r20
000114  6b510f00  load.d r[3:4], 0(r30)
000118  6b528f00  load.d r[5:6], 8(r30)
00011c  6b530f01  load.d r[7:8], 16(r30)
000120  9f441000  addli r9, zero, 12
000124  e7808e01  storeli.w r24, 8(sp)
000128  67c09e01  storeli.w r25, 4(sp)
00012c  6780ae01  storeli.w r26, 0(sp)
000130  0b943031  div.s r8, r1, r19
000134  d7290000  jal 332
000138  8b9a7a11  add.s r21, r21, r23
00013c  3fdf6aff  blt.s r21, r22, -44
000140  9f8e8e00  addli sp, sp, 64
000144  00a00300  mfence { lm, sm, gm }
000148  00100000  exit
00014c  9f8e8eeb  addli sp, sp, -2624
000150  67c1ee15  storeli.w r30, 2580(sp)
000154  1f8f8e14  addli r30, sp, 2624
000158  e7c33e15  storeli.w r19, 2620(sp)
00015c  e7834e15  storeli.w r20, 2616(sp)
000160  67c35e15  storeli.w r21, 2612(sp)
000164  67836e15  storeli.w r22, 2608(sp)
000168  e7c27e15  storeli.w r23, 2604(sp)
00016c  e7828e15  storeli.w r24, 2600(sp)
000170  67c29e15  storeli.w r25, 2596(sp)
000174  6782ae15  storeli.w r26, 2592(sp)
000178  e7c1be15  storeli.w r27, 2588(sp)
00017c  e781ce15  storeli.w r28, 2584(sp)
000180  6781fe15  storeli.w r31, 2576(sp)
000184  9f00dfeb  addli r1, r30, -2584
000188  73b06000  store.d r[7:8], 0(r1)
00018c  00330002  core_id r6
000190  9f00cfeb  addli r1, r30, -2592
000194  73b02000  store.d r[3:4], 0(r1)
000198  bb000300  bneq r6, zero, 32
00019c  63410f00  loadli.w r2,  4(r30)
0001a0  ab0100f0  lui r3, 983040
0001a4  1b311100  slli r2, r2, 1
0001a8  17113100  or r2, r2, r3
0001ac  ab010000  lui r3, 0
0001b0  9f810100  addli r3, r3, 0
0001b4  7f013200  l_gm2sm r2, r3, 0(r[5:6])
0001b8  00510102  load_param_i r2, 2
0001bc  63021f00  loadli.w r4,  8(r30)
0001c0  abf20000  lui r5, 15
0001c4  e3010f00  loadli.w r3,  0(r30)
0001c8  00200300  mfence { sm, gm }
0001cc  0b138150  fmac.s r6, r2, r8
0001d0  9b92f2ff  ori r5, r5, 4095
0001d4  0b124320  mul.s r4, r6, r4
0001d8  80a10204  csr_set csr3, r5
0001dc  00d00100  sync_group
0001e0  cbe74102  ble.s r3, r4, 1528
0001e4  e3011f00  loadli.w r3,  8(r30)
0001e8  eea25262  vxor.u.mz vr5{mr1}, vr5, vr5
0001ec  9f008ff4  addli r1, r30, -1472
0001f0  ab73033e  lui r7, 254007
0001f4  2bc4ae3a  lui r8, 240364
0001f8  9f120000  addli r5, zero, 1
0001fc  1f068ff7  addli r12, r30, -1088
000200  ab06ffff  lui r13, 1048560
000204  2b080041  lui r16, 266240
000208  2b090080  lui r18, 524288
00020c  ab0900c2  lui r19, 794624
000210  2b0a404b  lui r20, 308224
000214  ab0a40cb  lui r21, 832512
000218  1f7b2000  addli r22, zero, 23
00021c  ab0b803f  lui r23, 260096
000220  9b98335d  ori r17, r7, 1491
000224  ab832139  lui r7, 234008
000228  1b1df43f  ori r26, r8, 1023
00022c  2b54633d  lui r8, 251445
000230  0b939120  mul.s r6, r3, r9
000234  9bb41100  slli r9, r3, 1
000238  ab61803f  lui r3, 260102
00023c  1b9c9348  ori r24, r7, 1161
000240  abe37f37  lui r7, 227326
000244  1b1e7484  ori r28, r8, 2119
000248  2b74313f  lui r8, 258839
00024c  0b112320  mul.s r2, r6, r2
000250  9b97e10f  ori r15, r3, 254
000254  abe1b138  lui r3, 232222
000258  2bd3203f  lui r6, 258573
00025c  e74d9fea  storeli.w r9, -2596(r30)
000260  9b9ce35f  ori r25, r7, 1534
000264  ab931d3c  lui r7, 246233
000268  9b158421  ori r11, r8, 536
00026c  2b04003f  lui r8, 258048
000270  e70d2fea  storeli.w r2, -2600(r30)
000274  1f012000  addli r2, zero, 16
000278  9b91a196  ori r3, r3, 2410
00027c  1b132384  ori r6, r6, 2114
000280  9b9db355  ori r27, r7, 1371
000284  abf3753e  lui r7, 255839
000288  6a215122  vor.u.mz vr2{mr1}, r2, vr5
00028c  2b01353f  lui r2, 258896
000290  6aa45122  vor.u.mz vr8{mr1}, r3, vr5
000294  ab4157ba  lui r3, 763252
000298  1b9503df  ori r10, r7, 3568
00029c  ab730000  lui r7, 7
0002a0  1b17314f  ori r14, r2, 1267
0002a4  2bc18937  lui r2, 227484
0002a8  9b9101d2  ori r3, r3, 3360
0002ac  9b93f3ff  ori r7, r7, 4095
0002b0  1b11c1a3  ori r2, r2, 2620
0002b4  6aa05122  vor.u.mz vr0{mr1}, r3, vr5
0002b8  abd1aa3b  lui r3, 244397
0002bc  ea215122  vor.u.mz vr3{mr1}, r2, vr5
0002c0  2b61f5b9  lui r2, 761686
0002c4  9b91a15e  ori r3, r3, 1514
0002c8  1b11910b  ori r2, r2, 185
0002cc  6aa35122  vor.u.mz vr6{mr1}, r3, vr5
0002d0  ab11dcbc  lui r3, 773569
0002d4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0002d8  9f008ff2  addli r1, r30, -1728
0002dc  6a225122  vor.u.mz vr4{mr1}, r2, vr5
0002e0  2b81ac3b  lui r2, 244424
0002e4  9b9171be  ori r3, r3, 3047
0002e8  1b11b140  ori r2, r2, 1035
0002ec  6aa05122  vor.u.mz vr0{mr1}, r3, vr5
0002f0  ab11e73d  lui r3, 253553
0002f4  ea245122  vor.u.mz vr9{mr1}, r2, vr5
0002f8  2b810cbd  lui r2, 774344
0002fc  9b91f18a  ori r3, r3, 2223
000300  1b112116  ori r2, r2, 354
000304  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000308  9f000ff2  addli r1, r30, -1792
00030c  6a255122  vor.u.mz vr10{mr1}, r2, vr5
000310  2bf11c3e  lui r2, 254415
000314  1b116190  ori r2, r2, 2310
000318  6a205122  vor.u.mz vr0{mr1}, r2, vr5
00031c  2b916a3f  lui r2, 259753
000320  1b11e137  ori r2, r2, 894
000324  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000328  6aa05122  vor.u.mz vr0{mr1}, r3, vr5
00032c  9f008ff1  addli r1, r30, -1856
000330  ab91c0be  lui r3, 781321
000334  9b91c13a  ori r3, r3, 940
000338  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00033c  6a205122  vor.u.mz vr0{mr1}, r2, vr5
000340  9f000ff1  addli r1, r30, -1920
000344  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000348  6aa05122  vor.u.mz vr0{mr1}, r3, vr5
00034c  9f000fec  addli r1, r30, -2560
000350  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000354  6a205322  vor.u.mz vr0{mr1}, r6, vr5
000358  9f008ff0  addli r1, r30, -1984
00035c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000360  9f000ff7  addli r1, r30, -1152
000364  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
000368  9f008ff6  addli r1, r30, -1216
00036c  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
000370  9f000ff6  addli r1, r30, -1280
000374  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
000378  9f008ff5  addli r1, r30, -1344
00037c  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
000380  9f000ff5  addli r1, r30, -1408
000384  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
000388  9f000ff4  addli r1, r30, -1536
00038c  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
000390  9f008ff3  addli r1, r30, -1600
000394  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
000398  9f000ff3  addli r1, r30, -1664
00039c  4690a002  vstore_mask16.mz vr10{mr1}, 0(r1)
0003a0  db090000  j 76
0003a4  9f00dfeb  addli r1, r30, -2584
0003a8  9f04efeb  addli r9, r30, -2576
0003ac  2b0300f0  lui r6, 983040
0003b0  1f068ff7  addli r12, r30, -1088
0003b4  ebd10000  load.d r[4:5], 0(r1)
0003b8  ebd00400  load.d r[2:3], 0(r9)
0003bc  e344bfeb  loadli.w r9,  -2596(r30)
0003c0  00a00000  mfence { lm }
0003c4  8ba11110  add.ul r[4:5], r[4:5], r[2:3]
0003c8  17916400  or r2, r9, r6
0003cc  7fb1c100  s_lm2gm r2, r12, 0(r[4:5])
0003d0  6342ffeb  loadli.w r4,  -2564(r30)
0003d4  6301bfeb  loadli.w r2,  -2600(r30)
0003d8  00a00200  mfence { lm, gm }
0003dc  0b122210  add.s r4, r4, r2
0003e0  63010f00  loadli.w r2,  0(r30)
0003e4  3f202200  blt.s r4, r2, 8
0003e8  5b7e0000  j 1008
0003ec  33110228  sext_int2long r[3:4], r4
0003f0  1f00cfeb  addli zero, r30, -2592
0003f4  e74f4fea  storeli.w r4, -2564(r30)
0003f8  2b0300f0  lui r6, 983040
0003fc  97305102  sll.d r[2:3], r[3:4], r5
000400  eb510000  load.d r[4:5], 0(zero)
000404  17200000  xor zero, zero, zero
000408  1f00efeb  addli zero, r30, -2576
00040c  73301000  store.d r[2:3], 0(zero)
000410  8ba11110  add.ul r[4:5], r[4:5], r[2:3]
000414  17916400  or r2, r9, r6
000418  17200000  xor zero, zero, zero
00041c  7fa1c100  l_gm2lm r2, r12, 0(r[4:5])
000420  00a00200  mfence { lm, gm }
000424  e3001f00  loadli.w r1,  8(r30)
000428  bffd50fe  blt.s r1, r5, -132
00042c  63410f00  loadli.w r2,  4(r30)
000430  e341ffeb  loadli.w r3,  -2564(r30)
000434  1f030000  addli r6, zero, 0
000438  1f068ff7  addli r12, r30, -1088
00043c  0b912138  mod.s r2, r3, r2
000440  9b341100  slli r9, r2, 1
000444  2b010000  lui r2, 0
000448  1f010100  addli r2, r2, 0
00044c  9f018ff4  addli r3, r30, -1472
000450  42000602  vload.mz vr0{mr1}, 0(r12)
000454  1f034300  addli r6, r6, 32
000458  c2930102  vload_mask16.mz vr7{mr1}, 0(r3)
00045c  8b119110  add.s r3, r2, r9
000460  1f018100  addli r2, r2, 64
000464  ca810102  vloads.mz vr3{mr1}, 0(r3)
000468  9f010fef  addli r3, r30, -2176
00046c  46903102  vstore_mask16.mz vr3{mr1}, 0(r3)
000470  9f018fee  addli r3, r30, -2240
000474  ee3031a2  vsll.s.mz vr1{mr1}, vr2, vr3
000478  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
00047c  6e3001a2  vsll.s.mz vr0{mr1}, vr2, vr0
000480  9f010ff0  addli r3, r30, -2048
000484  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
000488  8a150702  vmul.f.mz.rn vr11{mr1}, r14, vr0
00048c  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
000490  9f010ff6  addli r3, r30, -1280
000494  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
000498  9f010ff5  addli r3, r30, -1408
00049c  e69005c0  vabs.f vr1, vr11
0004a0  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
0004a4  0e91b502  vmul.f.mz.rn vr2{mr1}, vr11, vr11
0004a8  9f018ff2  addli r3, r30, -1728
0004ac  2a101802  vmin.f.mz vr0{mr1}, r16, vr1
0004b0  72911742  vlt.f.mz mr2{mr1}, r15, vr1
0004b4  92309002  vadd.s.mz vr1{mr1}, zero, vr9
0004b8  ea145e22  vor.f.mz vr9{mr1}, r28, vr5
0004bc  7e010140  vmnot mr2, mr2
0004c0  6a202034  vor.u.mh vr0{mr2}, zero, vr2
0004c4  ea218034  vor.u.mh vr3{mr2}, zero, vr8
0004c8  6a227034  vor.u.mh vr4{mr2}, zero, vr7
0004cc  ea206034  vor.u.mh vr1{mr2}, zero, vr6
0004d0  1231a002  vadd.s.mz vr2{mr1}, zero, vr10
0004d4  6a145522  vor.f.mz vr8{mr1}, r10, vr5
0004d8  26920102  vmac.f.mz.rn vr4{mr1}, vr3, vr0
0004dc  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
0004e0  9f010ff2  addli r3, r30, -1792
0004e4  9a130902  vsub.f.mz.rn vr7{mr1}, r18, vr0
0004e8  a6100202  vmac.f.mz.rn vr1{mr1}, vr4, vr0
0004ec  6a213034  vor.u.mh vr2{mr2}, zero, vr3
0004f0  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
0004f4  9f018ff1  addli r3, r30, -1856
0004f8  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
0004fc  9f010ff1  addli r3, r30, -1920
000500  26910002  vmac.f.mz.rn vr2{mr1}, vr1, vr0
000504  ea214034  vor.u.mh vr3{mr2}, zero, vr4
000508  6aa25822  vor.u.mz vr4{mr1}, r17, vr5
00050c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
000510  9f018fef  addli r3, r30, -2112
000514  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
000518  9f010fec  addli r3, r30, -2560
00051c  a6110102  vmac.f.mz.rn vr3{mr1}, vr2, vr0
000520  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
000524  9f018ff0  addli r3, r30, -1984
000528  ea20a034  vor.u.mh vr1{mr2}, zero, vr10
00052c  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
000530  9f010fee  addli r3, r30, -2304
000534  a6900102  vmac.f.mz.rn vr1{mr1}, vr3, vr0
000538  ea115c22  vor.f.mz vr3{mr1}, r24, vr5
00053c  6a214034  vor.u.mh vr2{mr2}, zero, vr4
000540  ea23b034  vor.u.mh vr7{mr2}, zero, vr11
000544  6a125d22  vor.f.mz vr4{mr1}, r26, vr5
000548  46903102  vstore_mask16.mz vr3{mr1}, 0(r3)
00054c  9f018fed  addli r3, r30, -2368
000550  26910002  vmac.f.mz.rn vr2{mr1}, vr1, vr0
000554  ea905d22  vor.f.mz vr1{mr1}, r27, vr5
000558  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
00055c  9f010fed  addli r3, r30, -2432
000560  a6137102  vmac.f.mz.rn vr7{mr1}, vr2, vr7
000564  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
000568  9f010ff7  addli r3, r30, -1152
00056c  32907902  vmax.f.mz vr0{mr1}, r19, vr7
000570  12130a02  vadd.f.mz.rn vr6{mr1}, r20, vr0
000574  12916a02  vadd.f.mz.rn vr2{mr1}, r21, vr6
000578  1e102002  vsub.f.mz.rn vr0{mr1}, vr0, vr2
00057c  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000580  92314002  vadd.s.mz vr3{mr1}, zero, vr4
000584  12329002  vadd.s.mz vr4{mr1}, zero, vr9
000588  22910c02  vmac.f.mz.rn vr2{mr1}, r25, vr0
00058c  a6110102  vmac.f.mz.rn vr3{mr1}, vr2, vr0
000590  12311002  vadd.s.mz vr2{mr1}, zero, vr1
000594  26910102  vmac.f.mz.rn vr2{mr1}, vr3, vr0
000598  ea915522  vor.f.mz vr3{mr1}, r11, vr5
00059c  92328002  vadd.s.mz vr5{mr1}, zero, vr8
0005a0  26120102  vmac.f.mz.rn vr4{mr1}, vr2, vr0
0005a4  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
0005a8  9f018fec  addli r3, r30, -2496
0005ac  a6120202  vmac.f.mz.rn vr5{mr1}, vr4, vr0
0005b0  12323002  vadd.s.mz vr4{mr1}, zero, vr3
0005b4  ea202b22  vor.u.mz vr1{mr1}, r22, vr2
0005b8  26920202  vmac.f.mz.rn vr4{mr1}, vr5, vr0
0005bc  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0005c0  9f010ff7  addli r3, r30, -1152
0005c4  6eb360a2  vsll.s.mz vr6{mr1}, vr1, vr6
0005c8  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
0005cc  9f018fee  addli r3, r30, -2240
0005d0  92b06b02  vadd.s.mz vr1{mr1}, r23, vr6
0005d4  6a912b22  vor.f.mz vr2{mr1}, r23, vr2
0005d8  92322002  vadd.s.mz vr5{mr1}, zero, vr2
0005dc  a6120202  vmac.f.mz.rn vr5{mr1}, vr4, vr0
0005e0  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
0005e4  9f010fef  addli r3, r30, -2176
0005e8  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
0005ec  8e901202  vmul.f.mz.rn vr1{mr1}, vr5, vr1
0005f0  6ab00602  vand.s.mz vr0{mr1}, r13, vr0
0005f4  6ab24602  vand.s.mz vr4{mr1}, r13, vr4
0005f8  9a901b02  vsub.f.mz.rn vr1{mr1}, r23, vr1
0005fc  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
000600  6a32b902  vand.s.mz vr4{mr1}, r18, vr11
000604  8a150702  vmul.f.mz.rn vr11{mr1}, r14, vr0
000608  6e321222  vor.s.mz vr4{mr1}, vr4, vr1
00060c  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
000610  9f010ff6  addli r3, r30, -1280
000614  e69205c0  vabs.f vr5, vr11
000618  0e90b502  vmul.f.mz.rn vr0{mr1}, vr11, vr11
00061c  6a227034  vor.u.mh vr4{mr2}, zero, vr7
000620  aa105802  vmin.f.mz vr1{mr1}, r16, vr5
000624  72915742  vlt.f.mz mr2{mr1}, r15, vr5
000628  7e010140  vmnot mr2, mr2
00062c  ea200034  vor.u.mh vr1{mr2}, zero, vr0
000630  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000634  9f018ff5  addli r3, r30, -1344
000638  c2920102  vload_mask16.mz vr5{mr1}, 0(r3)
00063c  9f010ff5  addli r3, r30, -1408
000640  6a205034  vor.u.mh vr0{mr2}, zero, vr5
000644  c2920102  vload_mask16.mz vr5{mr1}, 0(r3)
000648  9f018ff4  addli r3, r30, -1472
00064c  c2930102  vload_mask16.mz vr7{mr1}, 0(r3)
000650  9f010ff4  addli r3, r30, -1536
000654  ea227034  vor.u.mh vr5{mr2}, zero, vr7
000658  a6121002  vmac.f.mz.rn vr5{mr1}, vr0, vr1
00065c  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000660  9f018ff3  addli r3, r30, -1600
000664  c2930102  vload_mask16.mz vr7{mr1}, 0(r3)
000668  9f010ff3  addli r3, r30, -1664
00066c  6a207034  vor.u.mh vr0{mr2}, zero, vr7
000670  26901202  vmac.f.mz.rn vr0{mr1}, vr5, vr1
000674  c2920102  vload_mask16.mz vr5{mr1}, 0(r3)
000678  9f018ff2  addli r3, r30, -1728
00067c  c2930102  vload_mask16.mz vr7{mr1}, 0(r3)
000680  9f010ff2  addli r3, r30, -1792
000684  ea227034  vor.u.mh vr5{mr2}, zero, vr7
000688  a6121002  vmac.f.mz.rn vr5{mr1}, vr0, vr1
00068c  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000690  9f018ff1  addli r3, r30, -1856
000694  c2930102  vload_mask16.mz vr7{mr1}, 0(r3)
000698  9f010ff1  addli r3, r30, -1920
00069c  6a207034  vor.u.mh vr0{mr2}, zero, vr7
0006a0  26901202  vmac.f.mz.rn vr0{mr1}, vr5, vr1
0006a4  c2920102  vload_mask16.mz vr5{mr1}, 0(r3)
0006a8  9f018ff0  addli r3, r30, -1984
0006ac  ea22a034  vor.u.mh vr5{mr2}, zero, vr10
0006b0  c2930102  vload_mask16.mz vr7{mr1}, 0(r3)
0006b4  9f018fef  addli r3, r30, -2112
0006b8  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
0006bc  9f010fee  addli r3, r30, -2304
0006c0  a6121002  vmac.f.mz.rn vr5{mr1}, vr0, vr1
0006c4  1a101902  vsub.f.mz.rn vr0{mr1}, r18, vr1
0006c8  ea23a034  vor.u.mh vr7{mr2}, zero, vr10
0006cc  6a20b034  vor.u.mh vr0{mr2}, zero, vr11
0006d0  a6931202  vmac.f.mz.rn vr7{mr1}, vr5, vr1
0006d4  26900302  vmac.f.mz.rn vr0{mr1}, vr7, vr0
0006d8  b2900902  vmax.f.mz vr1{mr1}, r19, vr0
0006dc  92121a02  vadd.f.mz.rn vr5{mr1}, r20, vr1
0006e0  92935a02  vadd.f.mz.rn vr7{mr1}, r21, vr5
0006e4  9e907002  vsub.f.mz.rn vr1{mr1}, vr1, vr7
0006e8  c2930102  vload_mask16.mz vr7{mr1}, 0(r3)
0006ec  9f018fed  addli r3, r30, -2368
0006f0  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
0006f4  9f010fed  addli r3, r30, -2432
0006f8  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
0006fc  9f010ff3  addli r3, r30, -1664
000700  a2931c02  vmac.f.mz.rn vr7{mr1}, r25, vr1
000704  26951302  vmac.f.mz.rn vr10{mr1}, vr7, vr1
000708  26131502  vmac.f.mz.rn vr6{mr1}, vr10, vr1
00070c  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
000710  9f018ff3  addli r3, r30, -1600
000714  a6141302  vmac.f.mz.rn vr9{mr1}, vr6, vr1
000718  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
00071c  9f010ff4  addli r3, r30, -1536
000720  26941402  vmac.f.mz.rn vr8{mr1}, vr9, vr1
000724  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
000728  9f018ff5  addli r3, r30, -1344
00072c  a6111402  vmac.f.mz.rn vr3{mr1}, vr8, vr1
000730  42940102  vload_mask16.mz vr8{mr1}, 0(r3)
000734  9f018fec  addli r3, r30, -2496
000738  c2930102  vload_mask16.mz vr7{mr1}, 0(r3)
00073c  9f010ff7  addli r3, r30, -1152
000740  26911102  vmac.f.mz.rn vr2{mr1}, vr3, vr1
000744  92914b02  vadd.f.mz.rn vr3{mr1}, r23, vr4
000748  eeb253a2  vsll.s.mz vr5{mr1}, vr7, vr5
00074c  92b05b02  vadd.s.mz vr1{mr1}, r23, vr5
000750  c2920102  vload_mask16.mz vr5{mr1}, 0(r3)
000754  9f010ff0  addli r3, r30, -2048
000758  8e101102  vmul.f.mz.rn vr1{mr1}, vr2, vr1
00075c  6a31b902  vand.s.mz vr2{mr1}, r18, vr11
000760  9a901b02  vsub.f.mz.rn vr1{mr1}, r23, vr1
000764  ee301122  vor.s.mz vr1{mr1}, vr2, vr1
000768  ea200034  vor.u.mh vr1{mr2}, zero, vr0
00076c  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000770  9f010fef  addli r3, r30, -2176
000774  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
000778  9f018ff6  addli r3, r30, -1216
00077c  92901b02  vadd.f.mz.rn vr1{mr1}, r23, vr1
000780  0a100402  vmul.f.mz.rn vr0{mr1}, r8, vr0
000784  0a112402  vmul.f.mz.rn vr2{mr1}, r8, vr2
000788  0e103002  vmul.f.mz.rn vr0{mr1}, vr0, vr3
00078c  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
000790  8e101102  vmul.f.mz.rn vr1{mr1}, vr2, vr1
000794  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
000798  eeb111c2  vsrl.s.mz vr3{mr1}, vr3, vr1
00079c  6e3101c2  vsrl.s.mz vr2{mr1}, vr2, vr0
0007a0  eab13202  vand.s.mz vr3{mr1}, r5, vr3
0007a4  6ab12202  vand.s.mz vr2{mr1}, r5, vr2
0007a8  96b03002  vadd.s.mz vr1{mr1}, vr1, vr3
0007ac  16302002  vadd.s.mz vr0{mr1}, vr0, vr2
0007b0  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
0007b4  92b01302  vadd.s.mz vr1{mr1}, r7, vr1
0007b8  12b00302  vadd.s.mz vr0{mr1}, r7, vr0
0007bc  eab01602  vand.s.mz vr1{mr1}, r13, vr1
0007c0  6e3001c2  vsrl.s.mz vr0{mr1}, vr2, vr0
0007c4  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
0007c8  46000602  vstore.mz vr0{mr1}, 0(r12)
0007cc  1f068600  addli r12, r12, 64
0007d0  bf7113fe  blt.s r6, r1, -900
0007d4  5b7affff  j -1072
0007d8  9f0e8feb  addli sp, r30, -2624
0007dc  e38f2e14  loadli.w r31,  2576(sp)
0007e0  63cf2e14  loadli.w r30,  2580(sp)
0007e4  638e3e14  loadli.w r28,  2584(sp)
0007e8  e3cd3e14  loadli.w r27,  2588(sp)
0007ec  638d4e14  loadli.w r26,  2592(sp)
0007f0  e3cc4e14  loadli.w r25,  2596(sp)
0007f4  638c5e14  loadli.w r24,  2600(sp)
0007f8  e3cb5e14  loadli.w r23,  2604(sp)
0007fc  638b6e14  loadli.w r22,  2608(sp)
000800  e3ca6e14  loadli.w r21,  2612(sp)
000804  638a7e14  loadli.w r20,  2616(sp)
000808  e3c97e14  loadli.w r19,  2620(sp)
00080c  9f8e8e14  addli sp, sp, 2624
000810  5f800f00  jr r31, 0
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
000a08  00100000  exit
000a0c  00100000  exit
000a10  00100000  exit
000a14  00100000  exit
000a18  00100000  exit
000a1c  00100000  exit
000a20  00100000  exit
000a24  00100000  exit
000a28  00100000  exit
000a2c  00100000  exit
000a30  00100000  exit
000a34  00100000  exit
000a38  00100000  exit
000a3c  00100000  exit
000a40  00100000  exit
000a44  00100000  exit
000a48  00100000  exit
000a4c  00100000  exit
000a50  00100000  exit
