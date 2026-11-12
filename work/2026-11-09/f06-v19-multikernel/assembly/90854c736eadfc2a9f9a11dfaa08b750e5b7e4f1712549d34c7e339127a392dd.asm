; SHA-256 90854c736eadfc2a9f9a11dfaa08b750e5b7e4f1712549d34c7e339127a392dd
; P800 Cluster · XTDK LLVM 19 · 827 / 827 words decoded
; bound names: _flat_add_act
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
0000dc  9f8e8eee  addli sp, sp, -2240
0000e0  1f8f0e11  addli r30, sp, 2176
0000e4  00580002  load_param_i r16, 0
0000e8  63413f00  loadli.w r2,  28(r30)
0000ec  e3003f00  loadli.w r1,  24(r30)
0000f0  e3014f00  loadli.w r3,  32(r30)
0000f4  8b101120  mul.s r1, r2, r1
0000f8  8b903020  mul.s r1, r1, r3
0000fc  674b1fee  storeli.w r1, -2124(r30)
000100  4bf60005  ble.s r1, r16, 2460
000104  80300002  core_id r1
000108  00d10002  load_param_i r2, 1
00010c  1f0d0002  addli r26, zero, 256
000110  ab09803f  lui r19, 260096
000114  2b0e80bf  lui r28, 784384
000118  9f0b8000  addli r23, zero, 64
00011c  1f098ff9  addli r18, r30, -832
000120  9f0a0ff9  addli r21, r30, -896
000124  9f038ffa  addli r7, r30, -704
000128  1f040ffa  addli r8, r30, -768
00012c  1f068ffb  addli r12, r30, -576
000130  1f070ffb  addli r14, r30, -640
000134  9f058ffd  addli r11, r30, -320
000138  9f070ffd  addli r15, r30, -384
00013c  9f048ffe  addli r9, r30, -192
000140  1f050ffe  addli r10, r30, -256
000144  1f028fff  addli r4, r30, -64
000148  9f060fff  addli r13, r30, -128
00014c  9bb07000  slli r1, r1, 7
000150  670b2fee  storeli.w r2, -2128(r30)
000154  2bf1b53f  lui r2, 260959
000158  e74a1fee  storeli.w r1, -2132(r30)
00015c  ab00353f  lui r1, 258896
000160  9b90304f  ori r1, r1, 1267
000164  e70a1fee  storeli.w r1, -2136(r30)
000168  abb0a73e  lui r1, 256635
00016c  1b9b50a0  ori r22, r1, 2565
000170  abd0873f  lui r1, 260221
000174  9b9020c2  ori r1, r1, 3106
000178  674a1fee  storeli.w r1, -2140(r30)
00017c  ab00babf  lui r1, 785312
000180  9b90300e  ori r1, r1, 227
000184  e74f1ff2  storeli.w r1, -1540(r30)
000188  9b10310e  ori r1, r2, 227
00018c  2b71823e  lui r2, 256039
000190  e70f1ff2  storeli.w r1, -1544(r30)
000194  aba091be  lui r1, 780570
000198  9b90e098  ori r1, r1, 2446
00019c  674f1ff2  storeli.w r1, -1548(r30)
0001a0  9b106190  ori r1, r2, 2310
0001a4  1f010ffc  addli r2, r30, -512
0001a8  670f1ff2  storeli.w r1, -1552(r30)
0001ac  9f008ffc  addli r1, r30, -448
0001b0  e3014f00  loadli.w r3,  32(r30)
0001b4  e74e0ff3  storeli.w r16, -1556(r30)
0001b8  2b0a00f0  lui r20, 983040
0001bc  171a4d01  or r20, r26, r20
0001c0  0b183830  div.s r16, r16, r3
0001c4  e3413f00  loadli.w r3,  28(r30)
0001c8  0b183830  div.s r16, r16, r3
0001cc  e3415fef  loadli.w r3,  -2132(r30)
0001d0  1b38d800  slli r16, r16, 13
0001d4  0b183810  add.s r16, r16, r3
0001d8  9f010010  addli r3, zero, 2048
0001dc  8b113838  mod.s r3, r16, r3
0001e0  33180828  sext_int2long r[17:18], r16
0001e4  339c0128  sext_int2long r[25:26], r3
0001e8  ab0100f0  lui r3, 983040
0001ec  97113d00  or r3, r26, r3
0001f0  1f1d0000  addli r26, zero, 1
0001f4  9732a803  sll.d r[6:7], r[17:18], r26
0001f8  1738ac03  sll.d r[17:18], r[25:26], r26
0001fc  6b5c0f00  load.d r[25:26], 0(r30)
000200  6b5d8f00  load.d r[27:28], 8(r30)
000204  73305f9e  store.d r[6:7], -1568(r30)
000208  0b2c5c10  add.ul r[25:26], r[25:26], r[6:7]
00020c  0b280d11  add.ul r[17:18], r[27:28], r[17:18]
000210  1f0d0ff4  addli r26, r30, -1536
000214  9f0d0ff6  addli r27, r30, -1280
000218  9f028ff8  addli r5, r30, -960
00021c  1f030ff8  addli r6, r30, -1024
000220  7f2aac01  l_gm2lm r20, r26, 0(r[25:26])
000224  ff21b801  l_gm2lm r3, r27, 0(r[17:18])
000228  9f010ff4  addli r3, r30, -1536
00022c  9f080ff2  addli r17, r30, -1792
000230  2b0d80bf  lui r26, 784384
000234  00a00000  mfence { lm }
000238  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
00023c  9f018ff4  addli r3, r30, -1472
000240  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
000244  9f010ff5  addli r3, r30, -1408
000248  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
00024c  9f018ff5  addli r3, r30, -1344
000250  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
000254  9f010ff6  addli r3, r30, -1280
000258  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
00025c  9f018ff6  addli r3, r30, -1216
000260  c2920102  vload_mask16.mz vr5{mr1}, 0(r3)
000264  9f010ff7  addli r3, r30, -1152
000268  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
00026c  9f018ff7  addli r3, r30, -1088
000270  c2930102  vload_mask16.mz vr7{mr1}, 0(r3)
000274  16424002  vadd.hf.mz.rn vr4{mr1}, vr0, vr4
000278  63085fef  loadli.w r16,  -2136(r30)
00027c  9f417fef  addli r3, r30, -2116
000280  96c25002  vadd.hf.mz.rn vr5{mr1}, vr1, vr5
000284  06b00200  vfp162float_l.rn vr0, vr5
000288  86f00200  vfp162float_h.rn vr1, vr5
00028c  16436102  vadd.hf.mz.rn vr6{mr1}, vr2, vr6
000290  06310300  vfp162float_l.rn vr2, vr6
000294  86720300  vfp162float_h.rn vr5, vr6
000298  06330200  vfp162float_l.rn vr6, vr4
00029c  96c37102  vadd.hf.mz.rn vr7{mr1}, vr3, vr7
0002a0  06b40300  vfp162float_l.rn vr8, vr7
0002a4  86f10300  vfp162float_h.rn vr3, vr7
0002a8  8a136802  vmul.f.mz.rn vr7{mr1}, r16, vr6
0002ac  72107042  vlt.f.mz mr0{mr1}, zero, vr7
0002b0  8e947302  vmul.f.mz.rn vr9{mr1}, vr7, vr7
0002b4  7e010040  vmnot mr2, mr0
0002b8  0a957900  vmul.f.mz.rn vr10{mr0}, r19, vr7
0002bc  7e0001a0  vmmov zero, mr2
0002c0  8a137e04  vmul.f.mz.rn vr7{mr2}, r28, vr7
0002c4  67800100  storeli.w zero, 0(r3)
0002c8  ab01003f  lui r3, 258048
0002cc  8a950102  vmul.f.mz.rn vr11{mr1}, r3, vr0
0002d0  4690b802  vstore_mask16.mz vr11{mr1}, 0(r17)
0002d4  9f088ff1  addli r17, r30, -1856
0002d8  17200000  xor zero, zero, zero
0002dc  46909202  vstore_mask16.mz vr9{mr1}, 0(r5)
0002e0  8a941102  vmul.f.mz.rn vr9{mr1}, r3, vr1
0002e4  8a150802  vmul.f.mz.rn vr11{mr1}, r16, vr0
0002e8  0a101802  vmul.f.mz.rn vr0{mr1}, r16, vr1
0002ec  8a905102  vmul.f.mz.rn vr1{mr1}, r3, vr5
0002f0  46909802  vstore_mask16.mz vr9{mr1}, 0(r17)
0002f4  9f080ff3  addli r17, r30, -1664
0002f8  8a942102  vmul.f.mz.rn vr9{mr1}, r3, vr2
0002fc  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
000300  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
000304  0a158802  vmul.f.mz.rn vr10{mr1}, r16, vr8
000308  46909802  vstore_mask16.mz vr9{mr1}, 0(r17)
00030c  9f080ff0  addli r17, r30, -2048
000310  86740200  vfp162float_h.rn vr9, vr4
000314  0a926102  vmul.f.mz.rn vr4{mr1}, r3, vr6
000318  46904802  vstore_mask16.mz vr4{mr1}, 0(r17)
00031c  9f088fef  addli r17, r30, -2112
000320  0a929102  vmul.f.mz.rn vr4{mr1}, r3, vr9
000324  8a149802  vmul.f.mz.rn vr9{mr1}, r16, vr9
000328  46107302  vstore_mask16.mz vr7{mr1}, 0(r6)
00032c  46904802  vstore_mask16.mz vr4{mr1}, 0(r17)
000330  9f080ff1  addli r17, r30, -1920
000334  0a928102  vmul.f.mz.rn vr4{mr1}, r3, vr8
000338  0a143802  vmul.f.mz.rn vr8{mr1}, r16, vr3
00033c  46901802  vstore_mask16.mz vr1{mr1}, 0(r17)
000340  9f088ff0  addli r17, r30, -1984
000344  8a105802  vmul.f.mz.rn vr1{mr1}, r16, vr5
000348  1f080000  addli r16, zero, 0
00034c  46904802  vstore_mask16.mz vr4{mr1}, 0(r17)
000350  0a923102  vmul.f.mz.rn vr4{mr1}, r3, vr3
000354  9f018ff2  addli r3, r30, -1728
000358  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
00035c  00a00000  mfence { lm }
000360  8b110311  add.s r3, r6, r16
000364  2b0c803f  lui r24, 260096
000368  8b980211  add.s r17, r5, r16
00036c  1f480800  addli r16, r16, 4
000370  638a0100  loadli.w r20,  0(r3)
000374  e38c0800  loadli.w r25,  0(r17)
000378  0b6c6a51  fmac.f.rn r24, r20, r22
00037c  0bea0c58  neg.f r20, r25
000380  0f0a0a00  exp.f.rn r20, r20
000384  0f8c8919  div.f.rn r24, r19, r24
000388  67804801  storeli.w r20, 0(r17)
00038c  67808101  storeli.w r24, 0(r3)
000390  3b4f78ff  bneq r16, r23, -48
000394  00a00000  mfence { lm }
000398  f2119042  vlt.f.mz mr3{mr1}, zero, vr9
00039c  8e939402  vmul.f.mz.rn vr7{mr1}, vr9, vr9
0003a0  c2110302  vload_mask16.mz vr3{mr1}, 0(r6)
0003a4  634e4fef  loadli.w r28,  -2140(r30)
0003a8  e341fff3  loadli.w r3,  -1540(r30)
0003ac  c2920202  vload_mask16.mz vr5{mr1}, 0(r5)
0003b0  7e810140  vmnot mr2, mr3
0003b4  7e0001a0  vmmov zero, mr2
0003b8  46107902  vstore_mask16.mz vr7{mr1}, 0(r18)
0003bc  0a123e02  vmul.f.mz.rn vr4{mr1}, r28, vr3
0003c0  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
0003c4  e301fff3  loadli.w r3,  -1544(r30)
0003c8  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0003cc  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
0003d0  e341eff3  loadli.w r3,  -1548(r30)
0003d4  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0003d8  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
0003dc  e301eff3  loadli.w r3,  -1552(r30)
0003e0  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0003e4  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
0003e8  9f017fef  addli r3, r30, -2120
0003ec  67800100  storeli.w zero, 0(r3)
0003f0  9f417fef  addli r3, r30, -2116
0003f4  17200000  xor zero, zero, zero
0003f8  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
0003fc  63800100  loadli.w zero,  0(r3)
000400  0a929906  vmul.f.mz.rn vr4{mr3}, r19, vr9
000404  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
000408  8a129d04  vmul.f.mz.rn vr5{mr2}, r26, vr9
00040c  9a913902  vsub.f.mz.rn vr3{mr1}, r19, vr3
000410  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000414  0a933900  vmul.f.mz.rn vr6{mr0}, r19, vr3
000418  7e0000e0  vmmov mr0, zero
00041c  17200000  xor zero, zero, zero
000420  46904a02  vstore_mask16.mz vr4{mr1}, 0(r21)
000424  8a113d00  vmul.f.mz.rn vr3{mr0}, r26, vr3
000428  00a00000  mfence { lm }
00042c  1f080000  addli r16, zero, 0
000430  96143302  vadd.f.mz.rn vr9{mr1}, vr6, vr3
000434  8b910a11  add.s r3, r21, r16
000438  2b0c803f  lui r24, 260096
00043c  8b180911  add.s r17, r18, r16
000440  1f480800  addli r16, r16, 4
000444  638a0100  loadli.w r20,  0(r3)
000448  e38c0800  loadli.w r25,  0(r17)
00044c  0b6c6a51  fmac.f.rn r24, r20, r22
000450  0bea0c58  neg.f r20, r25
000454  0f0a0a00  exp.f.rn r20, r20
000458  0f8c8919  div.f.rn r24, r19, r24
00045c  67804801  storeli.w r20, 0(r17)
000460  67808101  storeli.w r24, 0(r3)
000464  3b4f78ff  bneq r16, r23, -48
000468  00a00000  mfence { lm }
00046c  7210b042  vlt.f.mz mr0{mr1}, zero, vr11
000470  8e93b502  vmul.f.mz.rn vr7{mr1}, vr11, vr11
000474  c2910a02  vload_mask16.mz vr3{mr1}, 0(r21)
000478  e341fff3  loadli.w r3,  -1540(r30)
00047c  c2120902  vload_mask16.mz vr5{mr1}, 0(r18)
000480  7e010040  vmnot mr2, mr0
000484  7e0001a0  vmmov zero, mr2
000488  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
00048c  0a123e02  vmul.f.mz.rn vr4{mr1}, r28, vr3
000490  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000494  e301fff3  loadli.w r3,  -1544(r30)
000498  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
00049c  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
0004a0  e341eff3  loadli.w r3,  -1548(r30)
0004a4  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0004a8  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
0004ac  e301eff3  loadli.w r3,  -1552(r30)
0004b0  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0004b4  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
0004b8  9f417fef  addli r3, r30, -2116
0004bc  67800100  storeli.w zero, 0(r3)
0004c0  9f017fef  addli r3, r30, -2120
0004c4  17200000  xor zero, zero, zero
0004c8  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
0004cc  63800100  loadli.w zero,  0(r3)
0004d0  0a92b900  vmul.f.mz.rn vr4{mr0}, r19, vr11
0004d4  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
0004d8  8a12bd04  vmul.f.mz.rn vr5{mr2}, r26, vr11
0004dc  7e0100e0  vmmov mr2, zero
0004e0  17200000  xor zero, zero, zero
0004e4  1f080000  addli r16, zero, 0
0004e8  9a913902  vsub.f.mz.rn vr3{mr1}, r19, vr3
0004ec  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0004f0  0a933906  vmul.f.mz.rn vr6{mr3}, r19, vr3
0004f4  8a113d04  vmul.f.mz.rn vr3{mr2}, r26, vr3
0004f8  46104402  vstore_mask16.mz vr4{mr1}, 0(r8)
0004fc  1f0d0002  addli r26, zero, 256
000500  00a00000  mfence { lm }
000504  96153302  vadd.f.mz.rn vr11{mr1}, vr6, vr3
000508  8b110411  add.s r3, r8, r16
00050c  2b0c803f  lui r24, 260096
000510  8b980311  add.s r17, r7, r16
000514  1f480800  addli r16, r16, 4
000518  638a0100  loadli.w r20,  0(r3)
00051c  e38c0800  loadli.w r25,  0(r17)
000520  0b6c6a51  fmac.f.rn r24, r20, r22
000524  0bea0c58  neg.f r20, r25
000528  0f0a0a00  exp.f.rn r20, r20
00052c  0f8c8919  div.f.rn r24, r19, r24
000530  67804801  storeli.w r20, 0(r17)
000534  67808101  storeli.w r24, 0(r3)
000538  3b4f78ff  bneq r16, r23, -48
00053c  00a00000  mfence { lm }
000540  72110042  vlt.f.mz mr2{mr1}, zero, vr0
000544  9f027fef  addli r5, r30, -2120
000548  8e130002  vmul.f.mz.rn vr7{mr1}, vr0, vr0
00054c  c2110402  vload_mask16.mz vr3{mr1}, 0(r8)
000550  e341fff3  loadli.w r3,  -1540(r30)
000554  c2920302  vload_mask16.mz vr5{mr1}, 0(r7)
000558  fe010140  vmnot mr3, mr2
00055c  7e8001a0  vmmov zero, mr3
000560  67800200  storeli.w zero, 0(r5)
000564  9f427fef  addli r5, r30, -2116
000568  17200000  xor zero, zero, zero
00056c  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
000570  63800200  loadli.w zero,  0(r5)
000574  0a123e02  vmul.f.mz.rn vr4{mr1}, r28, vr3
000578  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
00057c  e301fff3  loadli.w r3,  -1544(r30)
000580  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000584  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000588  e341eff3  loadli.w r3,  -1548(r30)
00058c  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000590  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000594  e301eff3  loadli.w r3,  -1552(r30)
000598  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
00059c  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
0005a0  ab0180bf  lui r3, 784384
0005a4  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
0005a8  0a920904  vmul.f.mz.rn vr4{mr2}, r19, vr0
0005ac  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
0005b0  8a920106  vmul.f.mz.rn vr5{mr3}, r3, vr0
0005b4  9a913902  vsub.f.mz.rn vr3{mr1}, r19, vr3
0005b8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0005bc  0a933900  vmul.f.mz.rn vr6{mr0}, r19, vr3
0005c0  7e0000e0  vmmov mr0, zero
0005c4  17200000  xor zero, zero, zero
0005c8  46104702  vstore_mask16.mz vr4{mr1}, 0(r14)
0005cc  8a913100  vmul.f.mz.rn vr3{mr0}, r3, vr3
0005d0  00a00000  mfence { lm }
0005d4  1f080000  addli r16, zero, 0
0005d8  16103302  vadd.f.mz.rn vr0{mr1}, vr6, vr3
0005dc  8b110711  add.s r3, r14, r16
0005e0  2b0c803f  lui r24, 260096
0005e4  8b180611  add.s r17, r12, r16
0005e8  1f480800  addli r16, r16, 4
0005ec  638a0100  loadli.w r20,  0(r3)
0005f0  e38c0800  loadli.w r25,  0(r17)
0005f4  0b6c6a51  fmac.f.rn r24, r20, r22
0005f8  0bea0c58  neg.f r20, r25
0005fc  0f0a0a00  exp.f.rn r20, r20
000600  0f8c8919  div.f.rn r24, r19, r24
000604  67804801  storeli.w r20, 0(r17)
000608  67808101  storeli.w r24, 0(r3)
00060c  3b4f78ff  bneq r16, r23, -48
000610  00a00000  mfence { lm }
000614  72102042  vlt.f.mz mr0{mr1}, zero, vr2
000618  9f427fef  addli r5, r30, -2116
00061c  8e132102  vmul.f.mz.rn vr7{mr1}, vr2, vr2
000620  c2110702  vload_mask16.mz vr3{mr1}, 0(r14)
000624  e341fff3  loadli.w r3,  -1540(r30)
000628  c2120602  vload_mask16.mz vr5{mr1}, 0(r12)
00062c  fe010040  vmnot mr3, mr0
000630  7e8001a0  vmmov zero, mr3
000634  67800200  storeli.w zero, 0(r5)
000638  9f027fef  addli r5, r30, -2120
00063c  17200000  xor zero, zero, zero
000640  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
000644  63800200  loadli.w zero,  0(r5)
000648  0a123e02  vmul.f.mz.rn vr4{mr1}, r28, vr3
00064c  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000650  e301fff3  loadli.w r3,  -1544(r30)
000654  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000658  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
00065c  e341eff3  loadli.w r3,  -1548(r30)
000660  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000664  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000668  e301eff3  loadli.w r3,  -1552(r30)
00066c  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000670  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000674  ab0180bf  lui r3, 784384
000678  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
00067c  0a922900  vmul.f.mz.rn vr4{mr0}, r19, vr2
000680  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
000684  8a922106  vmul.f.mz.rn vr5{mr3}, r3, vr2
000688  9a913902  vsub.f.mz.rn vr3{mr1}, r19, vr3
00068c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000690  0a933904  vmul.f.mz.rn vr6{mr2}, r19, vr3
000694  7e0100e0  vmmov mr2, zero
000698  17200000  xor zero, zero, zero
00069c  46104102  vstore_mask16.mz vr4{mr1}, 0(r2)
0006a0  8a913104  vmul.f.mz.rn vr3{mr2}, r3, vr3
0006a4  00a00000  mfence { lm }
0006a8  1f080000  addli r16, zero, 0
0006ac  16113302  vadd.f.mz.rn vr2{mr1}, vr6, vr3
0006b0  8b110111  add.s r3, r2, r16
0006b4  2b0c803f  lui r24, 260096
0006b8  8b980011  add.s r17, r1, r16
0006bc  1f480800  addli r16, r16, 4
0006c0  638a0100  loadli.w r20,  0(r3)
0006c4  e38c0800  loadli.w r25,  0(r17)
0006c8  0b6c6a51  fmac.f.rn r24, r20, r22
0006cc  0bea0c58  neg.f r20, r25
0006d0  0f0a0a00  exp.f.rn r20, r20
0006d4  0f8c8919  div.f.rn r24, r19, r24
0006d8  67804801  storeli.w r20, 0(r17)
0006dc  67808101  storeli.w r24, 0(r3)
0006e0  3b4f78ff  bneq r16, r23, -48
0006e4  00a00000  mfence { lm }
0006e8  72111042  vlt.f.mz mr2{mr1}, zero, vr1
0006ec  9f027fef  addli r5, r30, -2120
0006f0  8e931002  vmul.f.mz.rn vr7{mr1}, vr1, vr1
0006f4  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
0006f8  e341fff3  loadli.w r3,  -1540(r30)
0006fc  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
000700  fe010140  vmnot mr3, mr2
000704  7e8001a0  vmmov zero, mr3
000708  67800200  storeli.w zero, 0(r5)
00070c  9f427fef  addli r5, r30, -2116
000710  17200000  xor zero, zero, zero
000714  46907502  vstore_mask16.mz vr7{mr1}, 0(r11)
000718  63800200  loadli.w zero,  0(r5)
00071c  0a123e02  vmul.f.mz.rn vr4{mr1}, r28, vr3
000720  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000724  e301fff3  loadli.w r3,  -1544(r30)
000728  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
00072c  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000730  e341eff3  loadli.w r3,  -1548(r30)
000734  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000738  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
00073c  e301eff3  loadli.w r3,  -1552(r30)
000740  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000744  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000748  ab0180bf  lui r3, 784384
00074c  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
000750  0a921904  vmul.f.mz.rn vr4{mr2}, r19, vr1
000754  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
000758  8a921106  vmul.f.mz.rn vr5{mr3}, r3, vr1
00075c  9a913902  vsub.f.mz.rn vr3{mr1}, r19, vr3
000760  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000764  0a933900  vmul.f.mz.rn vr6{mr0}, r19, vr3
000768  7e0000e0  vmmov mr0, zero
00076c  17200000  xor zero, zero, zero
000770  46904702  vstore_mask16.mz vr4{mr1}, 0(r15)
000774  8a913100  vmul.f.mz.rn vr3{mr0}, r3, vr3
000778  00a00000  mfence { lm }
00077c  1f080000  addli r16, zero, 0
000780  96103302  vadd.f.mz.rn vr1{mr1}, vr6, vr3
000784  8b910711  add.s r3, r15, r16
000788  2b0c803f  lui r24, 260096
00078c  8b980511  add.s r17, r11, r16
000790  1f480800  addli r16, r16, 4
000794  638a0100  loadli.w r20,  0(r3)
000798  e38c0800  loadli.w r25,  0(r17)
00079c  0b6c6a51  fmac.f.rn r24, r20, r22
0007a0  0bea0c58  neg.f r20, r25
0007a4  0f0a0a00  exp.f.rn r20, r20
0007a8  0f8c8919  div.f.rn r24, r19, r24
0007ac  67804801  storeli.w r20, 0(r17)
0007b0  67808101  storeli.w r24, 0(r3)
0007b4  3b4f78ff  bneq r16, r23, -48
0007b8  00a00000  mfence { lm }
0007bc  f211a042  vlt.f.mz mr3{mr1}, zero, vr10
0007c0  9f427fef  addli r5, r30, -2116
0007c4  8e13a502  vmul.f.mz.rn vr7{mr1}, vr10, vr10
0007c8  c2910702  vload_mask16.mz vr3{mr1}, 0(r15)
0007cc  e341fff3  loadli.w r3,  -1540(r30)
0007d0  c2920502  vload_mask16.mz vr5{mr1}, 0(r11)
0007d4  7e800140  vmnot mr0, mr3
0007d8  7e0000a0  vmmov zero, mr0
0007dc  67800200  storeli.w zero, 0(r5)
0007e0  9f027fef  addli r5, r30, -2120
0007e4  17200000  xor zero, zero, zero
0007e8  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
0007ec  63800200  loadli.w zero,  0(r5)
0007f0  0a123e02  vmul.f.mz.rn vr4{mr1}, r28, vr3
0007f4  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
0007f8  e301fff3  loadli.w r3,  -1544(r30)
0007fc  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000800  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000804  e341eff3  loadli.w r3,  -1548(r30)
000808  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
00080c  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000810  e301eff3  loadli.w r3,  -1552(r30)
000814  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000818  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
00081c  ab0180bf  lui r3, 784384
000820  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
000824  0a92a906  vmul.f.mz.rn vr4{mr3}, r19, vr10
000828  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
00082c  8a92a100  vmul.f.mz.rn vr5{mr0}, r3, vr10
000830  7e0000e0  vmmov mr0, zero
000834  17200000  xor zero, zero, zero
000838  1f080000  addli r16, zero, 0
00083c  9a913902  vsub.f.mz.rn vr3{mr1}, r19, vr3
000840  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000844  0a933904  vmul.f.mz.rn vr6{mr2}, r19, vr3
000848  8a913100  vmul.f.mz.rn vr3{mr0}, r3, vr3
00084c  46104502  vstore_mask16.mz vr4{mr1}, 0(r10)
000850  00a00000  mfence { lm }
000854  16153302  vadd.f.mz.rn vr10{mr1}, vr6, vr3
000858  8b110511  add.s r3, r10, r16
00085c  2b0c803f  lui r24, 260096
000860  8b980411  add.s r17, r9, r16
000864  1f480800  addli r16, r16, 4
000868  638a0100  loadli.w r20,  0(r3)
00086c  e38c0800  loadli.w r25,  0(r17)
000870  0b6c6a51  fmac.f.rn r24, r20, r22
000874  0bea0c58  neg.f r20, r25
000878  0f0a0a00  exp.f.rn r20, r20
00087c  0f8c8919  div.f.rn r24, r19, r24
000880  67804801  storeli.w r20, 0(r17)
000884  67808101  storeli.w r24, 0(r3)
000888  3b4f78ff  bneq r16, r23, -48
00088c  00a00000  mfence { lm }
000890  9f427fef  addli r5, r30, -2116
000894  72108042  vlt.f.mz mr0{mr1}, zero, vr8
000898  8e138402  vmul.f.mz.rn vr7{mr1}, vr8, vr8
00089c  c2110502  vload_mask16.mz vr3{mr1}, 0(r10)
0008a0  e341fff3  loadli.w r3,  -1540(r30)
0008a4  c2920402  vload_mask16.mz vr5{mr1}, 0(r9)
0008a8  7e010040  vmnot mr2, mr0
0008ac  63800200  loadli.w zero,  0(r5)
0008b0  46107202  vstore_mask16.mz vr7{mr1}, 0(r4)
0008b4  0a123e02  vmul.f.mz.rn vr4{mr1}, r28, vr3
0008b8  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
0008bc  e301fff3  loadli.w r3,  -1544(r30)
0008c0  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0008c4  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
0008c8  e341eff3  loadli.w r3,  -1548(r30)
0008cc  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0008d0  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
0008d4  e301eff3  loadli.w r3,  -1552(r30)
0008d8  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0008dc  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
0008e0  ab0180bf  lui r3, 784384
0008e4  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
0008e8  0a928900  vmul.f.mz.rn vr4{mr0}, r19, vr8
0008ec  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
0008f0  8a928104  vmul.f.mz.rn vr5{mr2}, r3, vr8
0008f4  9a913902  vsub.f.mz.rn vr3{mr1}, r19, vr3
0008f8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0008fc  0a933906  vmul.f.mz.rn vr6{mr3}, r19, vr3
000900  fe0100e0  vmmov mr3, zero
000904  17200000  xor zero, zero, zero
000908  46904602  vstore_mask16.mz vr4{mr1}, 0(r13)
00090c  8a913106  vmul.f.mz.rn vr3{mr3}, r3, vr3
000910  00a00000  mfence { lm }
000914  1f080000  addli r16, zero, 0
000918  16143302  vadd.f.mz.rn vr8{mr1}, vr6, vr3
00091c  8b910611  add.s r3, r13, r16
000920  2b0c803f  lui r24, 260096
000924  8b180211  add.s r17, r4, r16
000928  1f480800  addli r16, r16, 4
00092c  638a0100  loadli.w r20,  0(r3)
000930  e38c0800  loadli.w r25,  0(r17)
000934  0b6c6a51  fmac.f.rn r24, r20, r22
000938  0bea0c58  neg.f r20, r25
00093c  0f0a0a00  exp.f.rn r20, r20
000940  0f8c8919  div.f.rn r24, r19, r24
000944  67804801  storeli.w r20, 0(r17)
000948  67808101  storeli.w r24, 0(r3)
00094c  3b4f78ff  bneq r16, r23, -48
000950  00a00000  mfence { lm }
000954  12900902  vadd.f.mz.rn vr0{mr1}, r19, vr0
000958  92901902  vadd.f.mz.rn vr1{mr1}, r19, vr1
00095c  12912902  vadd.f.mz.rn vr2{mr1}, r19, vr2
000960  12948902  vadd.f.mz.rn vr8{mr1}, r19, vr8
000964  6b580f01  load.d r[17:18], 16(r30)
000968  c2910602  vload_mask16.mz vr3{mr1}, 0(r13)
00096c  e341fff3  loadli.w r3,  -1540(r30)
000970  c2120202  vload_mask16.mz vr5{mr1}, 0(r4)
000974  0a123e02  vmul.f.mz.rn vr4{mr1}, r28, vr3
000978  2b0e80bf  lui r28, 784384
00097c  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000980  e301fff3  loadli.w r3,  -1544(r30)
000984  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000988  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
00098c  e341eff3  loadli.w r3,  -1548(r30)
000990  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000994  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000998  e301eff3  loadli.w r3,  -1552(r30)
00099c  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0009a0  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
0009a4  9f010ff0  addli r3, r30, -2048
0009a8  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
0009ac  9f018fef  addli r3, r30, -2112
0009b0  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
0009b4  c2930102  vload_mask16.mz vr7{mr1}, 0(r3)
0009b8  9f010ff2  addli r3, r30, -1792
0009bc  12929902  vadd.f.mz.rn vr4{mr1}, r19, vr9
0009c0  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
0009c4  c2920102  vload_mask16.mz vr5{mr1}, 0(r3)
0009c8  9f018ff1  addli r3, r30, -1856
0009cc  0e124302  vmul.f.mz.rn vr4{mr1}, vr6, vr4
0009d0  1293b902  vadd.f.mz.rn vr6{mr1}, r19, vr11
0009d4  0e936302  vmul.f.mz.rn vr6{mr1}, vr7, vr6
0009d8  9a913902  vsub.f.mz.rn vr3{mr1}, r19, vr3
0009dc  0e900202  vmul.f.mz.rn vr0{mr1}, vr5, vr0
0009e0  c2920102  vload_mask16.mz vr5{mr1}, 0(r3)
0009e4  9f010ff3  addli r3, r30, -1664
0009e8  c2930102  vload_mask16.mz vr7{mr1}, 0(r3)
0009ec  9f010ff1  addli r3, r30, -1920
0009f0  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
0009f4  9f018ff0  addli r3, r30, -1984
0009f8  0e912202  vmul.f.mz.rn vr2{mr1}, vr5, vr2
0009fc  9292a902  vadd.f.mz.rn vr5{mr1}, r19, vr10
000a00  8e901302  vmul.f.mz.rn vr1{mr1}, vr7, vr1
000a04  8a933900  vmul.f.mz.rn vr7{mr0}, r19, vr3
000a08  8a113e04  vmul.f.mz.rn vr3{mr2}, r28, vr3
000a0c  8e925402  vmul.f.mz.rn vr5{mr1}, vr9, vr5
000a10  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
000a14  9f018ff2  addli r3, r30, -1728
000a18  96913302  vadd.f.mz.rn vr3{mr1}, vr7, vr3
000a1c  86130200  vfloat2fp16_l.rn vr7, vr4
000a20  86530300  vfloat2fp16_h.rn vr7, vr6
000a24  06120000  vfloat2fp16_l.rn vr4, vr0
000a28  06520100  vfloat2fp16_h.rn vr4, vr2
000a2c  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
000a30  9f010ff6  addli r3, r30, -1280
000a34  06900000  vfloat2fp16_l.rn vr0, vr1
000a38  06d00200  vfloat2fp16_h.rn vr0, vr5
000a3c  92903902  vadd.f.mz.rn vr1{mr1}, r19, vr3
000a40  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
000a44  9f018ff6  addli r3, r30, -1216
000a48  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
000a4c  9f010ff7  addli r3, r30, -1152
000a50  0e948402  vmul.f.mz.rn vr8{mr1}, vr9, vr8
000a54  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
000a58  9f018ff7  addli r3, r30, -1088
000a5c  8e101102  vmul.f.mz.rn vr1{mr1}, vr2, vr1
000a60  06100400  vfloat2fp16_l.rn vr0, vr8
000a64  06d00000  vfloat2fp16_h.rn vr0, vr1
000a68  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
000a6c  ab0100f0  lui r3, 983040
000a70  6b5c0f9e  load.d r[25:26], -1568(r30)
000a74  00a00000  mfence { lm }
000a78  97113d00  or r3, r26, r3
000a7c  0b288811  add.ul r[17:18], r[17:18], r[25:26]
000a80  ff31b801  s_lm2gm r3, r27, 0(r[17:18])
000a84  6348dff3  loadli.w r16,  -1556(r30)
000a88  e3016fef  loadli.w r3,  -2128(r30)
000a8c  00a00000  mfence { lm }
000a90  0b183810  add.s r16, r16, r3
000a94  e3416fef  loadli.w r3,  -2124(r30)
000a98  3f6c38fa  blt.s r16, r3, -2280
000a9c  9f0e0fef  addli sp, r30, -2176
000aa0  9f8e0e11  addli sp, sp, 2176
000aa4  00a00300  mfence { lm, sm, gm }
000aa8  00100000  exit
000aac  00100000  exit
000ab0  00100000  exit
000ab4  00100000  exit
000ab8  00100000  exit
000abc  00100000  exit
000ac0  00100000  exit
000ac4  00100000  exit
000ac8  00100000  exit
000acc  00100000  exit
000ad0  00100000  exit
000ad4  00100000  exit
000ad8  00100000  exit
000adc  00100000  exit
000ae0  00100000  exit
000ae4  00100000  exit
000ae8  00100000  exit
000aec  00100000  exit
000af0  00100000  exit
000af4  00100000  exit
000af8  00100000  exit
000afc  00100000  exit
000b00  00100000  exit
000b04  00100000  exit
000b08  00100000  exit
000b0c  00100000  exit
000b10  00100000  exit
000b14  00100000  exit
000b18  00100000  exit
000b1c  00100000  exit
000b20  00100000  exit
000b24  00100000  exit
000b28  00100000  exit
000b2c  00100000  exit
000b30  00100000  exit
000b34  00100000  exit
000b38  00100000  exit
000b3c  00100000  exit
000b40  00100000  exit
000b44  00100000  exit
000b48  00100000  exit
000b4c  00100000  exit
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
