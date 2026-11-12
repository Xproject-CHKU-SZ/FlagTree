; SHA-256 e02cd392ec8391808298d8a93043fb32dc3468fdbe74b5cf305f344279d00268
; P800 Cluster · XTDK LLVM 19 · 858 / 858 words decoded
; bound names: triton_unk_fused_0
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
0000dc  9f8e8eee  addli sp, sp, -2240
0000e0  1f8f0e11  addli r30, sp, 2176
0000e4  00580002  load_param_i r16, 0
0000e8  63014f00  loadli.w r2,  32(r30)
0000ec  e3403f00  loadli.w r1,  28(r30)
0000f0  e3414f00  loadli.w r3,  36(r30)
0000f4  8b101120  mul.s r1, r2, r1
0000f8  8b903020  mul.s r1, r1, r3
0000fc  674b1fee  storeli.w r1, -2124(r30)
000100  4be80005  ble.s r1, r16, 2584
000104  80300002  core_id r1
000108  00d10002  load_param_i r2, 1
00010c  1f0d0002  addli r26, zero, 256
000110  1f098ff8  addli r18, r30, -960
000114  ab09803f  lui r19, 260096
000118  9f0a0ff8  addli r21, r30, -1024
00011c  9f0b8000  addli r23, zero, 64
000120  9f028ff9  addli r5, r30, -832
000124  1f030ff9  addli r6, r30, -896
000128  9f038ffa  addli r7, r30, -704
00012c  1f040ffa  addli r8, r30, -768
000130  9f058ffb  addli r11, r30, -576
000134  9f060ffb  addli r13, r30, -640
000138  1f068ffd  addli r12, r30, -320
00013c  9f070ffd  addli r15, r30, -384
000140  9f048ffe  addli r9, r30, -192
000144  1f050ffe  addli r10, r30, -256
000148  1f028fff  addli r4, r30, -64
00014c  1f070fff  addli r14, r30, -128
000150  9bb07000  slli r1, r1, 7
000154  670b2fee  storeli.w r2, -2128(r30)
000158  2bf1b53f  lui r2, 260959
00015c  e74a1fee  storeli.w r1, -2132(r30)
000160  ab00353f  lui r1, 258896
000164  9b90304f  ori r1, r1, 1267
000168  e70a1fee  storeli.w r1, -2136(r30)
00016c  abb0a73e  lui r1, 256635
000170  1b9b50a0  ori r22, r1, 2565
000174  abd0873f  lui r1, 260221
000178  9b9020c2  ori r1, r1, 3106
00017c  674a1fee  storeli.w r1, -2140(r30)
000180  ab00babf  lui r1, 785312
000184  9b90300e  ori r1, r1, 227
000188  e74f1ff2  storeli.w r1, -1540(r30)
00018c  9b10310e  ori r1, r2, 227
000190  2b71823e  lui r2, 256039
000194  e70f1ff2  storeli.w r1, -1544(r30)
000198  aba091be  lui r1, 780570
00019c  9b90e098  ori r1, r1, 2446
0001a0  674f1ff2  storeli.w r1, -1548(r30)
0001a4  9b106190  ori r1, r2, 2310
0001a8  1f010ffc  addli r2, r30, -512
0001ac  670f1ff2  storeli.w r1, -1552(r30)
0001b0  9f008ffc  addli r1, r30, -448
0001b4  e3414f00  loadli.w r3,  36(r30)
0001b8  e74e0ff3  storeli.w r16, -1556(r30)
0001bc  2b0a00f0  lui r20, 983040
0001c0  171a4d01  or r20, r26, r20
0001c4  0b183830  div.s r16, r16, r3
0001c8  e3014f00  loadli.w r3,  32(r30)
0001cc  0b183830  div.s r16, r16, r3
0001d0  e3415fef  loadli.w r3,  -2132(r30)
0001d4  1b38d800  slli r16, r16, 13
0001d8  0b183810  add.s r16, r16, r3
0001dc  9f010008  addli r3, zero, 1024
0001e0  8b113838  mod.s r3, r16, r3
0001e4  33180828  sext_int2long r[17:18], r16
0001e8  339c0128  sext_int2long r[25:26], r3
0001ec  ab0100f0  lui r3, 983040
0001f0  97113d00  or r3, r26, r3
0001f4  1f1d0000  addli r26, zero, 1
0001f8  973da803  sll.d r[28:29], r[17:18], r26
0001fc  1738ac03  sll.d r[17:18], r[25:26], r26
000200  6b5c0f00  load.d r[25:26], 0(r30)
000204  7330bf9f  store.d r[28:29], -1568(r30)
000208  0b2cbc11  add.ul r[25:26], r[25:26], r[28:29]
00020c  6b5d8f00  load.d r[27:28], 8(r30)
000210  0b280d11  add.ul r[17:18], r[27:28], r[17:18]
000214  1f0d0ff4  addli r26, r30, -1536
000218  9f0d0ff6  addli r27, r30, -1280
00021c  7f2aac01  l_gm2lm r20, r26, 0(r[25:26])
000220  ff21b801  l_gm2lm r3, r27, 0(r[17:18])
000224  9f010ff4  addli r3, r30, -1536
000228  1f088ff7  addli r16, r30, -1088
00022c  9f487fef  addli r17, r30, -2116
000230  2b0d80bf  lui r26, 784384
000234  00a00000  mfence { lm }
000238  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
00023c  9f018ff4  addli r3, r30, -1472
000240  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
000244  9f010ff5  addli r3, r30, -1408
000248  86340100  vfp162float_l.rn vr9, vr2
00024c  06750100  vfp162float_h.rn vr10, vr2
000250  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
000254  9f018ff5  addli r3, r30, -1344
000258  06310200  vfp162float_l.rn vr2, vr4
00025c  06700200  vfp162float_h.rn vr0, vr4
000260  c2930102  vload_mask16.mz vr7{mr1}, 0(r3)
000264  9f010ff6  addli r3, r30, -1280
000268  06b20300  vfp162float_l.rn vr4, vr7
00026c  86f20300  vfp162float_h.rn vr5, vr7
000270  86b30100  vfp162float_l.rn vr7, vr3
000274  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
000278  9f018ff6  addli r3, r30, -1216
00027c  86b50000  vfp162float_l.rn vr11, vr1
000280  9693b302  vadd.f.mz.rn vr7{mr1}, vr7, vr11
000284  42940102  vload_mask16.mz vr8{mr1}, 0(r3)
000288  9f010ff7  addli r3, r30, -1152
00028c  86350400  vfp162float_l.rn vr11, vr8
000290  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
000294  9f010ff3  addli r3, r30, -1664
000298  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
00029c  06700400  vfp162float_h.rn vr0, vr8
0002a0  06f40100  vfp162float_h.rn vr8, vr3
0002a4  86f10000  vfp162float_h.rn vr3, vr1
0002a8  96103402  vadd.f.mz.rn vr1{mr1}, vr8, vr3
0002ac  86310300  vfp162float_l.rn vr3, vr6
0002b0  1694b402  vadd.f.mz.rn vr8{mr1}, vr9, vr11
0002b4  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
0002b8  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0002bc  86750300  vfp162float_h.rn vr11, vr6
0002c0  06b30400  vfp162float_l.rn vr6, vr9
0002c4  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
0002c8  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
0002cc  63085fef  loadli.w r16,  -2136(r30)
0002d0  06f50400  vfp162float_h.rn vr10, vr9
0002d4  9692a202  vadd.f.mz.rn vr5{mr1}, vr5, vr10
0002d8  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
0002dc  06930300  vfloat2fp16_l.rn vr6, vr7
0002e0  06d30000  vfloat2fp16_h.rn vr6, vr1
0002e4  86130400  vfloat2fp16_l.rn vr7, vr8
0002e8  86530000  vfloat2fp16_h.rn vr7, vr0
0002ec  86b00300  vfp162float_l.rn vr1, vr7
0002f0  ab0180bf  lui r3, 784384
0002f4  06700300  vfp162float_h.rn vr0, vr6
0002f8  86140200  vfloat2fp16_l.rn vr9, vr4
0002fc  86d40200  vfloat2fp16_h.rn vr9, vr5
000300  06b50400  vfp162float_l.rn vr10, vr9
000304  9691b102  vadd.f.mz.rn vr3{mr1}, vr3, vr11
000308  06140100  vfloat2fp16_l.rn vr8, vr2
00030c  06d40100  vfloat2fp16_h.rn vr8, vr3
000310  06f10300  vfp162float_h.rn vr2, vr7
000314  06320400  vfp162float_l.rn vr4, vr8
000318  86720400  vfp162float_h.rn vr5, vr8
00031c  86310300  vfp162float_l.rn vr3, vr6
000320  8a133802  vmul.f.mz.rn vr7{mr1}, r16, vr3
000324  72107042  vlt.f.mz mr0{mr1}, zero, vr7
000328  06f40400  vfp162float_h.rn vr8, vr9
00032c  7e010040  vmnot mr2, mr0
000330  8a947900  vmul.f.mz.rn vr9{mr0}, r19, vr7
000334  7e0001a0  vmmov zero, mr2
000338  8a957104  vmul.f.mz.rn vr11{mr2}, r3, vr7
00033c  ab01003f  lui r3, 258048
000340  8a913102  vmul.f.mz.rn vr3{mr1}, r3, vr3
000344  0a930102  vmul.f.mz.rn vr6{mr1}, r3, vr0
000348  67800800  storeli.w zero, 0(r17)
00034c  9f080ff0  addli r17, r30, -2048
000350  17200000  xor zero, zero, zero
000354  46903802  vstore_mask16.mz vr3{mr1}, 0(r17)
000358  9f088fef  addli r17, r30, -2112
00035c  8e917302  vmul.f.mz.rn vr3{mr1}, vr7, vr7
000360  9694b402  vadd.f.mz.rn vr9{mr1}, vr9, vr11
000364  8a151802  vmul.f.mz.rn vr11{mr1}, r16, vr1
000368  46906802  vstore_mask16.mz vr6{mr1}, 0(r17)
00036c  9f080ff2  addli r17, r30, -1792
000370  0a931102  vmul.f.mz.rn vr6{mr1}, r3, vr1
000374  8a905102  vmul.f.mz.rn vr1{mr1}, r3, vr5
000378  46906802  vstore_mask16.mz vr6{mr1}, 0(r17)
00037c  9f088ff1  addli r17, r30, -1856
000380  46103902  vstore_mask16.mz vr3{mr1}, 0(r18)
000384  8a912102  vmul.f.mz.rn vr3{mr1}, r3, vr2
000388  46909a02  vstore_mask16.mz vr9{mr1}, 0(r21)
00038c  8a140802  vmul.f.mz.rn vr9{mr1}, r16, vr0
000390  0a102802  vmul.f.mz.rn vr0{mr1}, r16, vr2
000394  0a114802  vmul.f.mz.rn vr2{mr1}, r16, vr4
000398  46903802  vstore_mask16.mz vr3{mr1}, 0(r17)
00039c  9f088ff2  addli r17, r30, -1728
0003a0  8a914102  vmul.f.mz.rn vr3{mr1}, r3, vr4
0003a4  46903802  vstore_mask16.mz vr3{mr1}, 0(r17)
0003a8  9f080ff1  addli r17, r30, -1920
0003ac  8a91a102  vmul.f.mz.rn vr3{mr1}, r3, vr10
0003b0  0a15a802  vmul.f.mz.rn vr10{mr1}, r16, vr10
0003b4  46901802  vstore_mask16.mz vr1{mr1}, 0(r17)
0003b8  9f088ff0  addli r17, r30, -1984
0003bc  8a105802  vmul.f.mz.rn vr1{mr1}, r16, vr5
0003c0  46903802  vstore_mask16.mz vr3{mr1}, 0(r17)
0003c4  8a918102  vmul.f.mz.rn vr3{mr1}, r3, vr8
0003c8  9f010ff3  addli r3, r30, -1664
0003cc  0a148802  vmul.f.mz.rn vr8{mr1}, r16, vr8
0003d0  1f080000  addli r16, zero, 0
0003d4  46903102  vstore_mask16.mz vr3{mr1}, 0(r3)
0003d8  00a00000  mfence { lm }
0003dc  8b910a11  add.s r3, r21, r16
0003e0  2b0c803f  lui r24, 260096
0003e4  8b180911  add.s r17, r18, r16
0003e8  1f480800  addli r16, r16, 4
0003ec  638a0100  loadli.w r20,  0(r3)
0003f0  e38c0800  loadli.w r25,  0(r17)
0003f4  0b6c6a51  fmac.f.rn r24, r20, r22
0003f8  0bea0c58  neg.f r20, r25
0003fc  0f0a0a00  exp.f.rn r20, r20
000400  0f8c8919  div.f.rn r24, r19, r24
000404  67804801  storeli.w r20, 0(r17)
000408  67808101  storeli.w r24, 0(r3)
00040c  3b4f78ff  bneq r16, r23, -48
000410  00a00000  mfence { lm }
000414  f2119042  vlt.f.mz mr3{mr1}, zero, vr9
000418  8e939402  vmul.f.mz.rn vr7{mr1}, vr9, vr9
00041c  c2910a02  vload_mask16.mz vr3{mr1}, 0(r21)
000420  634e4fef  loadli.w r28,  -2140(r30)
000424  e341fff3  loadli.w r3,  -1540(r30)
000428  c2120902  vload_mask16.mz vr5{mr1}, 0(r18)
00042c  7e810140  vmnot mr2, mr3
000430  7e0001a0  vmmov zero, mr2
000434  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
000438  0a123e02  vmul.f.mz.rn vr4{mr1}, r28, vr3
00043c  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000440  e301fff3  loadli.w r3,  -1544(r30)
000444  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000448  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
00044c  e341eff3  loadli.w r3,  -1548(r30)
000450  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000454  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000458  e301eff3  loadli.w r3,  -1552(r30)
00045c  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000460  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000464  9f017fef  addli r3, r30, -2120
000468  67800100  storeli.w zero, 0(r3)
00046c  9f417fef  addli r3, r30, -2116
000470  17200000  xor zero, zero, zero
000474  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
000478  63800100  loadli.w zero,  0(r3)
00047c  0a929906  vmul.f.mz.rn vr4{mr3}, r19, vr9
000480  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
000484  8a129d04  vmul.f.mz.rn vr5{mr2}, r26, vr9
000488  9a913902  vsub.f.mz.rn vr3{mr1}, r19, vr3
00048c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000490  0a933900  vmul.f.mz.rn vr6{mr0}, r19, vr3
000494  7e0000e0  vmmov mr0, zero
000498  17200000  xor zero, zero, zero
00049c  46104302  vstore_mask16.mz vr4{mr1}, 0(r6)
0004a0  8a113d00  vmul.f.mz.rn vr3{mr0}, r26, vr3
0004a4  00a00000  mfence { lm }
0004a8  1f080000  addli r16, zero, 0
0004ac  96143302  vadd.f.mz.rn vr9{mr1}, vr6, vr3
0004b0  8b110311  add.s r3, r6, r16
0004b4  2b0c803f  lui r24, 260096
0004b8  8b980211  add.s r17, r5, r16
0004bc  1f480800  addli r16, r16, 4
0004c0  638a0100  loadli.w r20,  0(r3)
0004c4  e38c0800  loadli.w r25,  0(r17)
0004c8  0b6c6a51  fmac.f.rn r24, r20, r22
0004cc  0bea0c58  neg.f r20, r25
0004d0  0f0a0a00  exp.f.rn r20, r20
0004d4  0f8c8919  div.f.rn r24, r19, r24
0004d8  67804801  storeli.w r20, 0(r17)
0004dc  67808101  storeli.w r24, 0(r3)
0004e0  3b4f78ff  bneq r16, r23, -48
0004e4  00a00000  mfence { lm }
0004e8  7210b042  vlt.f.mz mr0{mr1}, zero, vr11
0004ec  8e93b502  vmul.f.mz.rn vr7{mr1}, vr11, vr11
0004f0  c2110302  vload_mask16.mz vr3{mr1}, 0(r6)
0004f4  e341fff3  loadli.w r3,  -1540(r30)
0004f8  c2920202  vload_mask16.mz vr5{mr1}, 0(r5)
0004fc  7e010040  vmnot mr2, mr0
000500  7e0001a0  vmmov zero, mr2
000504  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
000508  0a123e02  vmul.f.mz.rn vr4{mr1}, r28, vr3
00050c  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000510  e301fff3  loadli.w r3,  -1544(r30)
000514  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000518  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
00051c  e341eff3  loadli.w r3,  -1548(r30)
000520  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000524  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000528  e301eff3  loadli.w r3,  -1552(r30)
00052c  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000530  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000534  9f417fef  addli r3, r30, -2116
000538  67800100  storeli.w zero, 0(r3)
00053c  9f017fef  addli r3, r30, -2120
000540  17200000  xor zero, zero, zero
000544  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
000548  63800100  loadli.w zero,  0(r3)
00054c  0a92b900  vmul.f.mz.rn vr4{mr0}, r19, vr11
000550  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
000554  8a12bd04  vmul.f.mz.rn vr5{mr2}, r26, vr11
000558  7e0100e0  vmmov mr2, zero
00055c  17200000  xor zero, zero, zero
000560  1f080000  addli r16, zero, 0
000564  9a913902  vsub.f.mz.rn vr3{mr1}, r19, vr3
000568  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00056c  0a933906  vmul.f.mz.rn vr6{mr3}, r19, vr3
000570  8a113d04  vmul.f.mz.rn vr3{mr2}, r26, vr3
000574  46104402  vstore_mask16.mz vr4{mr1}, 0(r8)
000578  1f0d0002  addli r26, zero, 256
00057c  00a00000  mfence { lm }
000580  96153302  vadd.f.mz.rn vr11{mr1}, vr6, vr3
000584  8b110411  add.s r3, r8, r16
000588  2b0c803f  lui r24, 260096
00058c  8b980311  add.s r17, r7, r16
000590  1f480800  addli r16, r16, 4
000594  638a0100  loadli.w r20,  0(r3)
000598  e38c0800  loadli.w r25,  0(r17)
00059c  0b6c6a51  fmac.f.rn r24, r20, r22
0005a0  0bea0c58  neg.f r20, r25
0005a4  0f0a0a00  exp.f.rn r20, r20
0005a8  0f8c8919  div.f.rn r24, r19, r24
0005ac  67804801  storeli.w r20, 0(r17)
0005b0  67808101  storeli.w r24, 0(r3)
0005b4  3b4f78ff  bneq r16, r23, -48
0005b8  00a00000  mfence { lm }
0005bc  72110042  vlt.f.mz mr2{mr1}, zero, vr0
0005c0  1f087fef  addli r16, r30, -2120
0005c4  8e130002  vmul.f.mz.rn vr7{mr1}, vr0, vr0
0005c8  c2110402  vload_mask16.mz vr3{mr1}, 0(r8)
0005cc  e341fff3  loadli.w r3,  -1540(r30)
0005d0  c2920302  vload_mask16.mz vr5{mr1}, 0(r7)
0005d4  fe010140  vmnot mr3, mr2
0005d8  7e8001a0  vmmov zero, mr3
0005dc  67000800  storeli.w zero, 0(r16)
0005e0  1f487fef  addli r16, r30, -2116
0005e4  17200000  xor zero, zero, zero
0005e8  46907502  vstore_mask16.mz vr7{mr1}, 0(r11)
0005ec  63000800  loadli.w zero,  0(r16)
0005f0  0a123e02  vmul.f.mz.rn vr4{mr1}, r28, vr3
0005f4  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
0005f8  e301fff3  loadli.w r3,  -1544(r30)
0005fc  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000600  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000604  e341eff3  loadli.w r3,  -1548(r30)
000608  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
00060c  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000610  e301eff3  loadli.w r3,  -1552(r30)
000614  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000618  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
00061c  ab0180bf  lui r3, 784384
000620  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
000624  0a920904  vmul.f.mz.rn vr4{mr2}, r19, vr0
000628  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
00062c  8a920106  vmul.f.mz.rn vr5{mr3}, r3, vr0
000630  9a913902  vsub.f.mz.rn vr3{mr1}, r19, vr3
000634  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000638  0a933900  vmul.f.mz.rn vr6{mr0}, r19, vr3
00063c  7e0000e0  vmmov mr0, zero
000640  17200000  xor zero, zero, zero
000644  46904602  vstore_mask16.mz vr4{mr1}, 0(r13)
000648  8a913100  vmul.f.mz.rn vr3{mr0}, r3, vr3
00064c  00a00000  mfence { lm }
000650  1f080000  addli r16, zero, 0
000654  16103302  vadd.f.mz.rn vr0{mr1}, vr6, vr3
000658  8b910611  add.s r3, r13, r16
00065c  2b0c803f  lui r24, 260096
000660  8b980511  add.s r17, r11, r16
000664  1f480800  addli r16, r16, 4
000668  638a0100  loadli.w r20,  0(r3)
00066c  e38c0800  loadli.w r25,  0(r17)
000670  0b6c6a51  fmac.f.rn r24, r20, r22
000674  0bea0c58  neg.f r20, r25
000678  0f0a0a00  exp.f.rn r20, r20
00067c  0f8c8919  div.f.rn r24, r19, r24
000680  67804801  storeli.w r20, 0(r17)
000684  67808101  storeli.w r24, 0(r3)
000688  3b4f78ff  bneq r16, r23, -48
00068c  00a00000  mfence { lm }
000690  72102042  vlt.f.mz mr0{mr1}, zero, vr2
000694  1f487fef  addli r16, r30, -2116
000698  8e132102  vmul.f.mz.rn vr7{mr1}, vr2, vr2
00069c  c2910602  vload_mask16.mz vr3{mr1}, 0(r13)
0006a0  e341fff3  loadli.w r3,  -1540(r30)
0006a4  c2920502  vload_mask16.mz vr5{mr1}, 0(r11)
0006a8  fe010040  vmnot mr3, mr0
0006ac  7e8001a0  vmmov zero, mr3
0006b0  67000800  storeli.w zero, 0(r16)
0006b4  1f087fef  addli r16, r30, -2120
0006b8  17200000  xor zero, zero, zero
0006bc  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
0006c0  63000800  loadli.w zero,  0(r16)
0006c4  0a123e02  vmul.f.mz.rn vr4{mr1}, r28, vr3
0006c8  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
0006cc  e301fff3  loadli.w r3,  -1544(r30)
0006d0  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0006d4  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
0006d8  e341eff3  loadli.w r3,  -1548(r30)
0006dc  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0006e0  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
0006e4  e301eff3  loadli.w r3,  -1552(r30)
0006e8  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0006ec  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
0006f0  ab0180bf  lui r3, 784384
0006f4  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
0006f8  0a922900  vmul.f.mz.rn vr4{mr0}, r19, vr2
0006fc  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
000700  8a922106  vmul.f.mz.rn vr5{mr3}, r3, vr2
000704  9a913902  vsub.f.mz.rn vr3{mr1}, r19, vr3
000708  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00070c  0a933904  vmul.f.mz.rn vr6{mr2}, r19, vr3
000710  7e0100e0  vmmov mr2, zero
000714  17200000  xor zero, zero, zero
000718  46104102  vstore_mask16.mz vr4{mr1}, 0(r2)
00071c  8a913104  vmul.f.mz.rn vr3{mr2}, r3, vr3
000720  00a00000  mfence { lm }
000724  1f080000  addli r16, zero, 0
000728  16113302  vadd.f.mz.rn vr2{mr1}, vr6, vr3
00072c  8b110111  add.s r3, r2, r16
000730  2b0c803f  lui r24, 260096
000734  8b980011  add.s r17, r1, r16
000738  1f480800  addli r16, r16, 4
00073c  638a0100  loadli.w r20,  0(r3)
000740  e38c0800  loadli.w r25,  0(r17)
000744  0b6c6a51  fmac.f.rn r24, r20, r22
000748  0bea0c58  neg.f r20, r25
00074c  0f0a0a00  exp.f.rn r20, r20
000750  0f8c8919  div.f.rn r24, r19, r24
000754  67804801  storeli.w r20, 0(r17)
000758  67808101  storeli.w r24, 0(r3)
00075c  3b4f78ff  bneq r16, r23, -48
000760  00a00000  mfence { lm }
000764  72111042  vlt.f.mz mr2{mr1}, zero, vr1
000768  1f087fef  addli r16, r30, -2120
00076c  8e931002  vmul.f.mz.rn vr7{mr1}, vr1, vr1
000770  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
000774  e341fff3  loadli.w r3,  -1540(r30)
000778  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
00077c  fe010140  vmnot mr3, mr2
000780  7e8001a0  vmmov zero, mr3
000784  67000800  storeli.w zero, 0(r16)
000788  1f487fef  addli r16, r30, -2116
00078c  17200000  xor zero, zero, zero
000790  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
000794  63000800  loadli.w zero,  0(r16)
000798  0a123e02  vmul.f.mz.rn vr4{mr1}, r28, vr3
00079c  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
0007a0  e301fff3  loadli.w r3,  -1544(r30)
0007a4  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0007a8  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
0007ac  e341eff3  loadli.w r3,  -1548(r30)
0007b0  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0007b4  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
0007b8  e301eff3  loadli.w r3,  -1552(r30)
0007bc  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0007c0  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
0007c4  ab0180bf  lui r3, 784384
0007c8  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
0007cc  0a921904  vmul.f.mz.rn vr4{mr2}, r19, vr1
0007d0  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
0007d4  8a921106  vmul.f.mz.rn vr5{mr3}, r3, vr1
0007d8  9a913902  vsub.f.mz.rn vr3{mr1}, r19, vr3
0007dc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0007e0  0a933900  vmul.f.mz.rn vr6{mr0}, r19, vr3
0007e4  7e0000e0  vmmov mr0, zero
0007e8  17200000  xor zero, zero, zero
0007ec  46904702  vstore_mask16.mz vr4{mr1}, 0(r15)
0007f0  8a913100  vmul.f.mz.rn vr3{mr0}, r3, vr3
0007f4  00a00000  mfence { lm }
0007f8  1f080000  addli r16, zero, 0
0007fc  96103302  vadd.f.mz.rn vr1{mr1}, vr6, vr3
000800  8b910711  add.s r3, r15, r16
000804  2b0c803f  lui r24, 260096
000808  8b180611  add.s r17, r12, r16
00080c  1f480800  addli r16, r16, 4
000810  638a0100  loadli.w r20,  0(r3)
000814  e38c0800  loadli.w r25,  0(r17)
000818  0b6c6a51  fmac.f.rn r24, r20, r22
00081c  0bea0c58  neg.f r20, r25
000820  0f0a0a00  exp.f.rn r20, r20
000824  0f8c8919  div.f.rn r24, r19, r24
000828  67804801  storeli.w r20, 0(r17)
00082c  67808101  storeli.w r24, 0(r3)
000830  3b4f78ff  bneq r16, r23, -48
000834  00a00000  mfence { lm }
000838  f211a042  vlt.f.mz mr3{mr1}, zero, vr10
00083c  1f487fef  addli r16, r30, -2116
000840  8e13a502  vmul.f.mz.rn vr7{mr1}, vr10, vr10
000844  c2910702  vload_mask16.mz vr3{mr1}, 0(r15)
000848  e341fff3  loadli.w r3,  -1540(r30)
00084c  c2120602  vload_mask16.mz vr5{mr1}, 0(r12)
000850  7e800140  vmnot mr0, mr3
000854  7e0000a0  vmmov zero, mr0
000858  67000800  storeli.w zero, 0(r16)
00085c  1f087fef  addli r16, r30, -2120
000860  17200000  xor zero, zero, zero
000864  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
000868  63000800  loadli.w zero,  0(r16)
00086c  0a123e02  vmul.f.mz.rn vr4{mr1}, r28, vr3
000870  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000874  e301fff3  loadli.w r3,  -1544(r30)
000878  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
00087c  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000880  e341eff3  loadli.w r3,  -1548(r30)
000884  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000888  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
00088c  e301eff3  loadli.w r3,  -1552(r30)
000890  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000894  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000898  ab0180bf  lui r3, 784384
00089c  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
0008a0  0a92a906  vmul.f.mz.rn vr4{mr3}, r19, vr10
0008a4  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
0008a8  8a92a100  vmul.f.mz.rn vr5{mr0}, r3, vr10
0008ac  7e0000e0  vmmov mr0, zero
0008b0  17200000  xor zero, zero, zero
0008b4  1f080000  addli r16, zero, 0
0008b8  9a913902  vsub.f.mz.rn vr3{mr1}, r19, vr3
0008bc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0008c0  0a933904  vmul.f.mz.rn vr6{mr2}, r19, vr3
0008c4  8a913100  vmul.f.mz.rn vr3{mr0}, r3, vr3
0008c8  46104502  vstore_mask16.mz vr4{mr1}, 0(r10)
0008cc  00a00000  mfence { lm }
0008d0  16153302  vadd.f.mz.rn vr10{mr1}, vr6, vr3
0008d4  8b110511  add.s r3, r10, r16
0008d8  2b0c803f  lui r24, 260096
0008dc  8b980411  add.s r17, r9, r16
0008e0  1f480800  addli r16, r16, 4
0008e4  638a0100  loadli.w r20,  0(r3)
0008e8  e38c0800  loadli.w r25,  0(r17)
0008ec  0b6c6a51  fmac.f.rn r24, r20, r22
0008f0  0bea0c58  neg.f r20, r25
0008f4  0f0a0a00  exp.f.rn r20, r20
0008f8  0f8c8919  div.f.rn r24, r19, r24
0008fc  67804801  storeli.w r20, 0(r17)
000900  67808101  storeli.w r24, 0(r3)
000904  3b4f78ff  bneq r16, r23, -48
000908  00a00000  mfence { lm }
00090c  1f487fef  addli r16, r30, -2116
000910  72108042  vlt.f.mz mr0{mr1}, zero, vr8
000914  8e138402  vmul.f.mz.rn vr7{mr1}, vr8, vr8
000918  c2110502  vload_mask16.mz vr3{mr1}, 0(r10)
00091c  e341fff3  loadli.w r3,  -1540(r30)
000920  c2920402  vload_mask16.mz vr5{mr1}, 0(r9)
000924  7e010040  vmnot mr2, mr0
000928  63000800  loadli.w zero,  0(r16)
00092c  46107202  vstore_mask16.mz vr7{mr1}, 0(r4)
000930  0a123e02  vmul.f.mz.rn vr4{mr1}, r28, vr3
000934  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000938  e301fff3  loadli.w r3,  -1544(r30)
00093c  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000940  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000944  e341eff3  loadli.w r3,  -1548(r30)
000948  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
00094c  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000950  e301eff3  loadli.w r3,  -1552(r30)
000954  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000958  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
00095c  ab0180bf  lui r3, 784384
000960  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
000964  0a928900  vmul.f.mz.rn vr4{mr0}, r19, vr8
000968  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
00096c  8a928104  vmul.f.mz.rn vr5{mr2}, r3, vr8
000970  9a913902  vsub.f.mz.rn vr3{mr1}, r19, vr3
000974  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000978  0a933906  vmul.f.mz.rn vr6{mr3}, r19, vr3
00097c  fe0100e0  vmmov mr3, zero
000980  17200000  xor zero, zero, zero
000984  46104702  vstore_mask16.mz vr4{mr1}, 0(r14)
000988  8a913106  vmul.f.mz.rn vr3{mr3}, r3, vr3
00098c  00a00000  mfence { lm }
000990  1f080000  addli r16, zero, 0
000994  16143302  vadd.f.mz.rn vr8{mr1}, vr6, vr3
000998  8b110711  add.s r3, r14, r16
00099c  2b0c803f  lui r24, 260096
0009a0  8b180211  add.s r17, r4, r16
0009a4  1f480800  addli r16, r16, 4
0009a8  638a0100  loadli.w r20,  0(r3)
0009ac  e38c0800  loadli.w r25,  0(r17)
0009b0  0b6c6a51  fmac.f.rn r24, r20, r22
0009b4  0bea0c58  neg.f r20, r25
0009b8  0f0a0a00  exp.f.rn r20, r20
0009bc  0f8c8919  div.f.rn r24, r19, r24
0009c0  67804801  storeli.w r20, 0(r17)
0009c4  67808101  storeli.w r24, 0(r3)
0009c8  3b4f78ff  bneq r16, r23, -48
0009cc  00a00000  mfence { lm }
0009d0  12900902  vadd.f.mz.rn vr0{mr1}, r19, vr0
0009d4  92901902  vadd.f.mz.rn vr1{mr1}, r19, vr1
0009d8  12912902  vadd.f.mz.rn vr2{mr1}, r19, vr2
0009dc  12948902  vadd.f.mz.rn vr8{mr1}, r19, vr8
0009e0  6b580f01  load.d r[17:18], 16(r30)
0009e4  c2110702  vload_mask16.mz vr3{mr1}, 0(r14)
0009e8  e341fff3  loadli.w r3,  -1540(r30)
0009ec  c2120202  vload_mask16.mz vr5{mr1}, 0(r4)
0009f0  0a123e02  vmul.f.mz.rn vr4{mr1}, r28, vr3
0009f4  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
0009f8  e301fff3  loadli.w r3,  -1544(r30)
0009fc  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000a00  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000a04  e341eff3  loadli.w r3,  -1548(r30)
000a08  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000a0c  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000a10  e301eff3  loadli.w r3,  -1552(r30)
000a14  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000a18  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000a1c  9f010ff0  addli r3, r30, -2048
000a20  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
000a24  9f018fef  addli r3, r30, -2112
000a28  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
000a2c  c2930102  vload_mask16.mz vr7{mr1}, 0(r3)
000a30  9f010ff2  addli r3, r30, -1792
000a34  12929902  vadd.f.mz.rn vr4{mr1}, r19, vr9
000a38  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
000a3c  c2920102  vload_mask16.mz vr5{mr1}, 0(r3)
000a40  9f018ff1  addli r3, r30, -1856
000a44  0e124302  vmul.f.mz.rn vr4{mr1}, vr6, vr4
000a48  1293b902  vadd.f.mz.rn vr6{mr1}, r19, vr11
000a4c  0e936302  vmul.f.mz.rn vr6{mr1}, vr7, vr6
000a50  9a913902  vsub.f.mz.rn vr3{mr1}, r19, vr3
000a54  0e900202  vmul.f.mz.rn vr0{mr1}, vr5, vr0
000a58  c2920102  vload_mask16.mz vr5{mr1}, 0(r3)
000a5c  9f018ff2  addli r3, r30, -1728
000a60  c2930102  vload_mask16.mz vr7{mr1}, 0(r3)
000a64  ab0180bf  lui r3, 784384
000a68  0e912202  vmul.f.mz.rn vr2{mr1}, vr5, vr2
000a6c  9292a902  vadd.f.mz.rn vr5{mr1}, r19, vr10
000a70  8e901302  vmul.f.mz.rn vr1{mr1}, vr7, vr1
000a74  8a933900  vmul.f.mz.rn vr7{mr0}, r19, vr3
000a78  8a913104  vmul.f.mz.rn vr3{mr2}, r3, vr3
000a7c  9f010ff1  addli r3, r30, -1920
000a80  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
000a84  9f018ff0  addli r3, r30, -1984
000a88  96913302  vadd.f.mz.rn vr3{mr1}, vr7, vr3
000a8c  86130200  vfloat2fp16_l.rn vr7, vr4
000a90  86530300  vfloat2fp16_h.rn vr7, vr6
000a94  06120000  vfloat2fp16_l.rn vr4, vr0
000a98  06520100  vfloat2fp16_h.rn vr4, vr2
000a9c  8e925402  vmul.f.mz.rn vr5{mr1}, vr9, vr5
000aa0  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
000aa4  9f010ff3  addli r3, r30, -1664
000aa8  06900000  vfloat2fp16_l.rn vr0, vr1
000aac  06d00200  vfloat2fp16_h.rn vr0, vr5
000ab0  92903902  vadd.f.mz.rn vr1{mr1}, r19, vr3
000ab4  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
000ab8  9f010ff6  addli r3, r30, -1280
000abc  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
000ac0  9f018ff6  addli r3, r30, -1216
000ac4  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
000ac8  9f010ff7  addli r3, r30, -1152
000acc  0e948402  vmul.f.mz.rn vr8{mr1}, vr9, vr8
000ad0  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
000ad4  9f018ff7  addli r3, r30, -1088
000ad8  8e101102  vmul.f.mz.rn vr1{mr1}, vr2, vr1
000adc  06100400  vfloat2fp16_l.rn vr0, vr8
000ae0  06d00000  vfloat2fp16_h.rn vr0, vr1
000ae4  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
000ae8  ab0100f0  lui r3, 983040
000aec  6b5c0f9e  load.d r[25:26], -1568(r30)
000af0  00a00000  mfence { lm }
000af4  97113d00  or r3, r26, r3
000af8  0b288811  add.ul r[17:18], r[17:18], r[25:26]
000afc  ff31b801  s_lm2gm r3, r27, 0(r[17:18])
000b00  6348dff3  loadli.w r16,  -1556(r30)
000b04  e3016fef  loadli.w r3,  -2128(r30)
000b08  00a00000  mfence { lm }
000b0c  0b183810  add.s r16, r16, r3
000b10  e3416fef  loadli.w r3,  -2124(r30)
000b14  bf0a38fa  blt.s r16, r3, -2400
000b18  9f0e0fef  addli sp, r30, -2176
000b1c  9f8e0e11  addli sp, sp, 2176
000b20  00a00300  mfence { lm, sm, gm }
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
