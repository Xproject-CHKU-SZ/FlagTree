; SHA-256 b9cd9cea4ad3eb7f607d61f48dfab513325e471e61f5bf15937ab944593fa0b0
; P800 Cluster · XTDK LLVM 19 · 791 / 791 words decoded
; bound names: ew_gelu_exact, triton_unk_fused_0
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
000078  9f094000  addli r19, zero, 32
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
0000e4  00570002  load_param_i r14, 0
0000e8  63013f00  loadli.w r2,  24(r30)
0000ec  e3402f00  loadli.w r1,  20(r30)
0000f0  e3413f00  loadli.w r3,  28(r30)
0000f4  8b101120  mul.s r1, r2, r1
0000f8  8b903020  mul.s r1, r1, r3
0000fc  674b1fee  storeli.w r1, -2124(r30)
000100  4bb4e004  ble.s r1, r14, 2316
000104  80300002  core_id r1
000108  00d10002  load_param_i r2, 1
00010c  1f0b0ff4  addli r22, r30, -1536
000110  9f0b0004  addli r23, zero, 512
000114  1f0c8ff8  addli r24, r30, -960
000118  ab08803f  lui r17, 260096
00011c  1f080ff8  addli r16, r30, -1024
000120  9f0a8000  addli r21, zero, 64
000124  9f0d8ff9  addli r27, r30, -832
000128  1f0e0ff9  addli r28, r30, -896
00012c  9f028ffa  addli r5, r30, -704
000130  1f030ffa  addli r6, r30, -768
000134  9f038ffb  addli r7, r30, -576
000138  1f040ffb  addli r8, r30, -640
00013c  9f058ffc  addli r11, r30, -448
000140  1f060ffd  addli r12, r30, -384
000144  9f068ffe  addli r13, r30, -192
000148  9f040ffe  addli r9, r30, -256
00014c  1f058fff  addli r10, r30, -64
000150  1f020fff  addli r4, r30, -128
000154  9bb07000  slli r1, r1, 7
000158  670b2fee  storeli.w r2, -2128(r30)
00015c  2bf1b53f  lui r2, 260959
000160  e74a1fee  storeli.w r1, -2132(r30)
000164  ab00353f  lui r1, 258896
000168  1b1d310e  ori r26, r2, 227
00016c  2b71823e  lui r2, 256039
000170  9b90304f  ori r1, r1, 1267
000174  674aafef  storeli.w r26, -2140(r30)
000178  e70a1fee  storeli.w r1, -2136(r30)
00017c  abb0a73e  lui r1, 256635
000180  1b9a50a0  ori r20, r1, 2565
000184  abd0873f  lui r1, 260221
000188  9b9920c2  ori r19, r1, 3106
00018c  ab00babf  lui r1, 785312
000190  9b9c300e  ori r25, r1, 227
000194  aba091be  lui r1, 780570
000198  9b90e098  ori r1, r1, 2446
00019c  e74f1ff2  storeli.w r1, -1540(r30)
0001a0  9b106190  ori r1, r2, 2310
0001a4  1f018ffd  addli r2, r30, -320
0001a8  e70f1ff2  storeli.w r1, -1544(r30)
0001ac  9f000ffc  addli r1, r30, -512
0001b0  e3413f00  loadli.w r3,  28(r30)
0001b4  674feff2  storeli.w r14, -1548(r30)
0001b8  1f290000  addli r18, zero, 2
0001bc  1f8d0900  addli r26, r19, 0
0001c0  0b173730  div.s r14, r14, r3
0001c4  e3013f00  loadli.w r3,  24(r30)
0001c8  0b173730  div.s r14, r14, r3
0001cc  e3415fef  loadli.w r3,  -2132(r30)
0001d0  1b37d700  slli r14, r14, 13
0001d4  0b173710  add.s r14, r14, r3
0001d8  ab0100f0  lui r3, 983040
0001dc  33170728  sext_int2long r[15:16], r14
0001e0  97913b00  or r3, r23, r3
0001e4  17392703  sll.d r[19:20], r[15:16], r18
0001e8  6b570f00  load.d r[15:16], 0(r30)
0001ec  73342f9f  store.d r[19:20], -1560(r30)
0001f0  0b272711  add.ul r[15:16], r[15:16], r[19:20]
0001f4  ff216701  l_gm2lm r3, r22, 0(r[15:16])
0001f8  9f010ff4  addli r3, r30, -1536
0001fc  9f070ff1  addli r15, r30, -1920
000200  00a00000  mfence { lm }
000204  c2930102  vload_mask16.mz vr7{mr1}, 0(r3)
000208  9f018ff4  addli r3, r30, -1472
00020c  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000210  9f010ff5  addli r3, r30, -1408
000214  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
000218  9f018ff5  addli r3, r30, -1344
00021c  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
000220  9f010ff6  addli r3, r30, -1280
000224  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
000228  9f018ff6  addli r3, r30, -1216
00022c  c2950102  vload_mask16.mz vr11{mr1}, 0(r3)
000230  9f010ff7  addli r3, r30, -1152
000234  42940102  vload_mask16.mz vr8{mr1}, 0(r3)
000238  63075fef  loadli.w r14,  -2136(r30)
00023c  8a117702  vmul.f.mz.rn vr3{mr1}, r14, vr7
000240  72103042  vlt.f.mz mr0{mr1}, zero, vr3
000244  9f417fef  addli r3, r30, -2116
000248  7e010040  vmnot mr2, mr0
00024c  8a943800  vmul.f.mz.rn vr9{mr0}, r17, vr3
000250  7e0001a0  vmmov zero, mr2
000254  67800100  storeli.w zero, 0(r3)
000258  ab0180bf  lui r3, 784384
00025c  17200000  xor zero, zero, zero
000260  0a953104  vmul.f.mz.rn vr10{mr2}, r3, vr3
000264  ab01003f  lui r3, 258048
000268  0a920102  vmul.f.mz.rn vr4{mr1}, r3, vr0
00026c  46904702  vstore_mask16.mz vr4{mr1}, 0(r15)
000270  9f078ff0  addli r15, r30, -1984
000274  8e913102  vmul.f.mz.rn vr3{mr1}, vr3, vr3
000278  0a921102  vmul.f.mz.rn vr4{mr1}, r3, vr1
00027c  46904702  vstore_mask16.mz vr4{mr1}, 0(r15)
000280  9f078ff1  addli r15, r30, -1856
000284  0a922102  vmul.f.mz.rn vr4{mr1}, r3, vr2
000288  46904702  vstore_mask16.mz vr4{mr1}, 0(r15)
00028c  9f078ff2  addli r15, r30, -1728
000290  9694a402  vadd.f.mz.rn vr9{mr1}, vr9, vr10
000294  46103c02  vstore_mask16.mz vr3{mr1}, 0(r24)
000298  8a916102  vmul.f.mz.rn vr3{mr1}, r3, vr6
00029c  0a928102  vmul.f.mz.rn vr4{mr1}, r3, vr8
0002a0  0a151702  vmul.f.mz.rn vr10{mr1}, r14, vr1
0002a4  8a102702  vmul.f.mz.rn vr1{mr1}, r14, vr2
0002a8  0a116702  vmul.f.mz.rn vr2{mr1}, r14, vr6
0002ac  46903702  vstore_mask16.mz vr3{mr1}, 0(r15)
0002b0  9f070ff2  addli r15, r30, -1792
0002b4  8a91b102  vmul.f.mz.rn vr3{mr1}, r3, vr11
0002b8  46903702  vstore_mask16.mz vr3{mr1}, 0(r15)
0002bc  9f078ff7  addli r15, r30, -1088
0002c0  46109802  vstore_mask16.mz vr9{mr1}, 0(r16)
0002c4  8a140702  vmul.f.mz.rn vr9{mr1}, r14, vr0
0002c8  0a10b702  vmul.f.mz.rn vr0{mr1}, r14, vr11
0002cc  8a158702  vmul.f.mz.rn vr11{mr1}, r14, vr8
0002d0  c2910702  vload_mask16.mz vr3{mr1}, 0(r15)
0002d4  9f070ff0  addli r15, r30, -2048
0002d8  0a143702  vmul.f.mz.rn vr8{mr1}, r14, vr3
0002dc  1f070000  addli r14, zero, 0
0002e0  46904702  vstore_mask16.mz vr4{mr1}, 0(r15)
0002e4  9f078fef  addli r15, r30, -2112
0002e8  0a927102  vmul.f.mz.rn vr4{mr1}, r3, vr7
0002ec  46904702  vstore_mask16.mz vr4{mr1}, 0(r15)
0002f0  0a923102  vmul.f.mz.rn vr4{mr1}, r3, vr3
0002f4  9f010ff3  addli r3, r30, -1664
0002f8  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
0002fc  00a00000  mfence { lm }
000300  8b11e810  add.s r3, r16, r14
000304  2b0b803f  lui r22, 260096
000308  8b17ec10  add.s r15, r24, r14
00030c  1f470700  addli r14, r14, 4
000310  63890100  loadli.w r18,  0(r3)
000314  e38b0700  loadli.w r23,  0(r15)
000318  0b6b4951  fmac.f.rn r22, r18, r20
00031c  0be90b58  neg.f r18, r23
000320  0f090900  exp.f.rn r18, r18
000324  0f8b6819  div.f.rn r22, r17, r22
000328  67802701  storeli.w r18, 0(r15)
00032c  67806101  storeli.w r22, 0(r3)
000330  3b4f57ff  bneq r14, r21, -48
000334  00a00000  mfence { lm }
000338  9f090d00  addli r19, r26, 0
00033c  f2119042  vlt.f.mz mr3{mr1}, zero, vr9
000340  1f077fef  addli r14, r30, -2120
000344  8e939402  vmul.f.mz.rn vr7{mr1}, vr9, vr9
000348  c2110802  vload_mask16.mz vr3{mr1}, 0(r16)
00034c  634d4fef  loadli.w r26,  -2140(r30)
000350  e341fff3  loadli.w r3,  -1540(r30)
000354  c2120c02  vload_mask16.mz vr5{mr1}, 0(r24)
000358  7e810140  vmnot mr2, mr3
00035c  7e0001a0  vmmov zero, mr2
000360  67000700  storeli.w zero, 0(r14)
000364  1f477fef  addli r14, r30, -2116
000368  17200000  xor zero, zero, zero
00036c  46907d02  vstore_mask16.mz vr7{mr1}, 0(r27)
000370  63000700  loadli.w zero,  0(r14)
000374  0a923902  vmul.f.mz.rn vr4{mr1}, r19, vr3
000378  12924c02  vadd.f.mz.rn vr4{mr1}, r25, vr4
00037c  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000380  12124d02  vadd.f.mz.rn vr4{mr1}, r26, vr4
000384  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000388  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
00038c  e301fff3  loadli.w r3,  -1544(r30)
000390  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000394  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000398  ab0180bf  lui r3, 784384
00039c  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
0003a0  0a929806  vmul.f.mz.rn vr4{mr3}, r17, vr9
0003a4  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
0003a8  8a929104  vmul.f.mz.rn vr5{mr2}, r3, vr9
0003ac  9a913802  vsub.f.mz.rn vr3{mr1}, r17, vr3
0003b0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0003b4  0a933800  vmul.f.mz.rn vr6{mr0}, r17, vr3
0003b8  7e0000e0  vmmov mr0, zero
0003bc  17200000  xor zero, zero, zero
0003c0  46104e02  vstore_mask16.mz vr4{mr1}, 0(r28)
0003c4  8a913100  vmul.f.mz.rn vr3{mr0}, r3, vr3
0003c8  00a00000  mfence { lm }
0003cc  1f070000  addli r14, zero, 0
0003d0  96143302  vadd.f.mz.rn vr9{mr1}, vr6, vr3
0003d4  8b11ee10  add.s r3, r28, r14
0003d8  2b0b803f  lui r22, 260096
0003dc  8b97ed10  add.s r15, r27, r14
0003e0  1f470700  addli r14, r14, 4
0003e4  63890100  loadli.w r18,  0(r3)
0003e8  e38b0700  loadli.w r23,  0(r15)
0003ec  0b6b4951  fmac.f.rn r22, r18, r20
0003f0  0be90b58  neg.f r18, r23
0003f4  0f090900  exp.f.rn r18, r18
0003f8  0f8b6819  div.f.rn r22, r17, r22
0003fc  67802701  storeli.w r18, 0(r15)
000400  67806101  storeli.w r22, 0(r3)
000404  3b4f57ff  bneq r14, r21, -48
000408  00a00000  mfence { lm }
00040c  7210a042  vlt.f.mz mr0{mr1}, zero, vr10
000410  1f477fef  addli r14, r30, -2116
000414  8e13a502  vmul.f.mz.rn vr7{mr1}, vr10, vr10
000418  c2110e02  vload_mask16.mz vr3{mr1}, 0(r28)
00041c  e341fff3  loadli.w r3,  -1540(r30)
000420  c2920d02  vload_mask16.mz vr5{mr1}, 0(r27)
000424  7e010040  vmnot mr2, mr0
000428  7e0001a0  vmmov zero, mr2
00042c  67000700  storeli.w zero, 0(r14)
000430  1f077fef  addli r14, r30, -2120
000434  17200000  xor zero, zero, zero
000438  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
00043c  63000700  loadli.w zero,  0(r14)
000440  0a923902  vmul.f.mz.rn vr4{mr1}, r19, vr3
000444  12924c02  vadd.f.mz.rn vr4{mr1}, r25, vr4
000448  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
00044c  12124d02  vadd.f.mz.rn vr4{mr1}, r26, vr4
000450  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000454  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000458  e301fff3  loadli.w r3,  -1544(r30)
00045c  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000460  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000464  ab0180bf  lui r3, 784384
000468  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
00046c  0a92a800  vmul.f.mz.rn vr4{mr0}, r17, vr10
000470  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
000474  8a92a104  vmul.f.mz.rn vr5{mr2}, r3, vr10
000478  7e0100e0  vmmov mr2, zero
00047c  17200000  xor zero, zero, zero
000480  1f070000  addli r14, zero, 0
000484  9a913802  vsub.f.mz.rn vr3{mr1}, r17, vr3
000488  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00048c  0a933806  vmul.f.mz.rn vr6{mr3}, r17, vr3
000490  8a913104  vmul.f.mz.rn vr3{mr2}, r3, vr3
000494  46104302  vstore_mask16.mz vr4{mr1}, 0(r6)
000498  00a00000  mfence { lm }
00049c  16153302  vadd.f.mz.rn vr10{mr1}, vr6, vr3
0004a0  8b11e310  add.s r3, r6, r14
0004a4  2b0b803f  lui r22, 260096
0004a8  8b97e210  add.s r15, r5, r14
0004ac  1f470700  addli r14, r14, 4
0004b0  63890100  loadli.w r18,  0(r3)
0004b4  e38b0700  loadli.w r23,  0(r15)
0004b8  0b6b4951  fmac.f.rn r22, r18, r20
0004bc  0be90b58  neg.f r18, r23
0004c0  0f090900  exp.f.rn r18, r18
0004c4  0f8b6819  div.f.rn r22, r17, r22
0004c8  67802701  storeli.w r18, 0(r15)
0004cc  67806101  storeli.w r22, 0(r3)
0004d0  3b4f57ff  bneq r14, r21, -48
0004d4  00a00000  mfence { lm }
0004d8  72111042  vlt.f.mz mr2{mr1}, zero, vr1
0004dc  1f077fef  addli r14, r30, -2120
0004e0  8e931002  vmul.f.mz.rn vr7{mr1}, vr1, vr1
0004e4  c2110302  vload_mask16.mz vr3{mr1}, 0(r6)
0004e8  e341fff3  loadli.w r3,  -1540(r30)
0004ec  c2920202  vload_mask16.mz vr5{mr1}, 0(r5)
0004f0  fe010140  vmnot mr3, mr2
0004f4  7e8001a0  vmmov zero, mr3
0004f8  67000700  storeli.w zero, 0(r14)
0004fc  1f477fef  addli r14, r30, -2116
000500  17200000  xor zero, zero, zero
000504  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
000508  63000700  loadli.w zero,  0(r14)
00050c  0a923902  vmul.f.mz.rn vr4{mr1}, r19, vr3
000510  12924c02  vadd.f.mz.rn vr4{mr1}, r25, vr4
000514  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000518  12124d02  vadd.f.mz.rn vr4{mr1}, r26, vr4
00051c  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000520  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000524  e301fff3  loadli.w r3,  -1544(r30)
000528  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
00052c  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000530  ab0180bf  lui r3, 784384
000534  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
000538  0a921804  vmul.f.mz.rn vr4{mr2}, r17, vr1
00053c  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
000540  8a921106  vmul.f.mz.rn vr5{mr3}, r3, vr1
000544  9a913802  vsub.f.mz.rn vr3{mr1}, r17, vr3
000548  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00054c  0a933800  vmul.f.mz.rn vr6{mr0}, r17, vr3
000550  7e0000e0  vmmov mr0, zero
000554  17200000  xor zero, zero, zero
000558  46104402  vstore_mask16.mz vr4{mr1}, 0(r8)
00055c  8a913100  vmul.f.mz.rn vr3{mr0}, r3, vr3
000560  00a00000  mfence { lm }
000564  1f070000  addli r14, zero, 0
000568  96103302  vadd.f.mz.rn vr1{mr1}, vr6, vr3
00056c  8b11e410  add.s r3, r8, r14
000570  2b0b803f  lui r22, 260096
000574  8b97e310  add.s r15, r7, r14
000578  1f470700  addli r14, r14, 4
00057c  63890100  loadli.w r18,  0(r3)
000580  e38b0700  loadli.w r23,  0(r15)
000584  0b6b4951  fmac.f.rn r22, r18, r20
000588  0be90b58  neg.f r18, r23
00058c  0f090900  exp.f.rn r18, r18
000590  0f8b6819  div.f.rn r22, r17, r22
000594  67802701  storeli.w r18, 0(r15)
000598  67806101  storeli.w r22, 0(r3)
00059c  3b4f57ff  bneq r14, r21, -48
0005a0  00a00000  mfence { lm }
0005a4  72102042  vlt.f.mz mr0{mr1}, zero, vr2
0005a8  1f477fef  addli r14, r30, -2116
0005ac  8e132102  vmul.f.mz.rn vr7{mr1}, vr2, vr2
0005b0  c2110402  vload_mask16.mz vr3{mr1}, 0(r8)
0005b4  e341fff3  loadli.w r3,  -1540(r30)
0005b8  c2920302  vload_mask16.mz vr5{mr1}, 0(r7)
0005bc  fe010040  vmnot mr3, mr0
0005c0  7e8001a0  vmmov zero, mr3
0005c4  67000700  storeli.w zero, 0(r14)
0005c8  1f077fef  addli r14, r30, -2120
0005cc  17200000  xor zero, zero, zero
0005d0  46907502  vstore_mask16.mz vr7{mr1}, 0(r11)
0005d4  63000700  loadli.w zero,  0(r14)
0005d8  0a923902  vmul.f.mz.rn vr4{mr1}, r19, vr3
0005dc  12924c02  vadd.f.mz.rn vr4{mr1}, r25, vr4
0005e0  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0005e4  12124d02  vadd.f.mz.rn vr4{mr1}, r26, vr4
0005e8  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0005ec  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
0005f0  e301fff3  loadli.w r3,  -1544(r30)
0005f4  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0005f8  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
0005fc  ab0180bf  lui r3, 784384
000600  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
000604  0a922800  vmul.f.mz.rn vr4{mr0}, r17, vr2
000608  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
00060c  8a922106  vmul.f.mz.rn vr5{mr3}, r3, vr2
000610  9a913802  vsub.f.mz.rn vr3{mr1}, r17, vr3
000614  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000618  0a933804  vmul.f.mz.rn vr6{mr2}, r17, vr3
00061c  7e0100e0  vmmov mr2, zero
000620  17200000  xor zero, zero, zero
000624  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
000628  8a913104  vmul.f.mz.rn vr3{mr2}, r3, vr3
00062c  00a00000  mfence { lm }
000630  1f070000  addli r14, zero, 0
000634  16113302  vadd.f.mz.rn vr2{mr1}, vr6, vr3
000638  8b91e010  add.s r3, r1, r14
00063c  2b0b803f  lui r22, 260096
000640  8b97e510  add.s r15, r11, r14
000644  1f470700  addli r14, r14, 4
000648  63890100  loadli.w r18,  0(r3)
00064c  e38b0700  loadli.w r23,  0(r15)
000650  0b6b4951  fmac.f.rn r22, r18, r20
000654  0be90b58  neg.f r18, r23
000658  0f090900  exp.f.rn r18, r18
00065c  0f8b6819  div.f.rn r22, r17, r22
000660  67802701  storeli.w r18, 0(r15)
000664  67806101  storeli.w r22, 0(r3)
000668  3b4f57ff  bneq r14, r21, -48
00066c  00a00000  mfence { lm }
000670  72110042  vlt.f.mz mr2{mr1}, zero, vr0
000674  1f077fef  addli r14, r30, -2120
000678  8e130002  vmul.f.mz.rn vr7{mr1}, vr0, vr0
00067c  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000680  e341fff3  loadli.w r3,  -1540(r30)
000684  c2920502  vload_mask16.mz vr5{mr1}, 0(r11)
000688  fe010140  vmnot mr3, mr2
00068c  7e8001a0  vmmov zero, mr3
000690  67000700  storeli.w zero, 0(r14)
000694  1f477fef  addli r14, r30, -2116
000698  17200000  xor zero, zero, zero
00069c  46107102  vstore_mask16.mz vr7{mr1}, 0(r2)
0006a0  63000700  loadli.w zero,  0(r14)
0006a4  0a923902  vmul.f.mz.rn vr4{mr1}, r19, vr3
0006a8  12924c02  vadd.f.mz.rn vr4{mr1}, r25, vr4
0006ac  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0006b0  12124d02  vadd.f.mz.rn vr4{mr1}, r26, vr4
0006b4  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0006b8  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
0006bc  e301fff3  loadli.w r3,  -1544(r30)
0006c0  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0006c4  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
0006c8  ab0180bf  lui r3, 784384
0006cc  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
0006d0  0a920804  vmul.f.mz.rn vr4{mr2}, r17, vr0
0006d4  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
0006d8  8a920106  vmul.f.mz.rn vr5{mr3}, r3, vr0
0006dc  9a913802  vsub.f.mz.rn vr3{mr1}, r17, vr3
0006e0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0006e4  0a933800  vmul.f.mz.rn vr6{mr0}, r17, vr3
0006e8  7e0000e0  vmmov mr0, zero
0006ec  17200000  xor zero, zero, zero
0006f0  46104602  vstore_mask16.mz vr4{mr1}, 0(r12)
0006f4  8a913100  vmul.f.mz.rn vr3{mr0}, r3, vr3
0006f8  00a00000  mfence { lm }
0006fc  1f070000  addli r14, zero, 0
000700  16103302  vadd.f.mz.rn vr0{mr1}, vr6, vr3
000704  8b11e610  add.s r3, r12, r14
000708  2b0b803f  lui r22, 260096
00070c  8b17e110  add.s r15, r2, r14
000710  1f470700  addli r14, r14, 4
000714  63890100  loadli.w r18,  0(r3)
000718  e38b0700  loadli.w r23,  0(r15)
00071c  0b6b4951  fmac.f.rn r22, r18, r20
000720  0be90b58  neg.f r18, r23
000724  0f090900  exp.f.rn r18, r18
000728  0f8b6819  div.f.rn r22, r17, r22
00072c  67802701  storeli.w r18, 0(r15)
000730  67806101  storeli.w r22, 0(r3)
000734  3b4f57ff  bneq r14, r21, -48
000738  00a00000  mfence { lm }
00073c  f211b042  vlt.f.mz mr3{mr1}, zero, vr11
000740  1f477fef  addli r14, r30, -2116
000744  8e93b502  vmul.f.mz.rn vr7{mr1}, vr11, vr11
000748  c2110602  vload_mask16.mz vr3{mr1}, 0(r12)
00074c  e341fff3  loadli.w r3,  -1540(r30)
000750  c2120102  vload_mask16.mz vr5{mr1}, 0(r2)
000754  7e800140  vmnot mr0, mr3
000758  7e0000a0  vmmov zero, mr0
00075c  67000700  storeli.w zero, 0(r14)
000760  1f077fef  addli r14, r30, -2120
000764  17200000  xor zero, zero, zero
000768  46907602  vstore_mask16.mz vr7{mr1}, 0(r13)
00076c  63000700  loadli.w zero,  0(r14)
000770  0a923902  vmul.f.mz.rn vr4{mr1}, r19, vr3
000774  12924c02  vadd.f.mz.rn vr4{mr1}, r25, vr4
000778  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
00077c  12124d02  vadd.f.mz.rn vr4{mr1}, r26, vr4
000780  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000784  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000788  e301fff3  loadli.w r3,  -1544(r30)
00078c  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000790  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000794  ab0180bf  lui r3, 784384
000798  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
00079c  0a92b806  vmul.f.mz.rn vr4{mr3}, r17, vr11
0007a0  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
0007a4  8a92b100  vmul.f.mz.rn vr5{mr0}, r3, vr11
0007a8  7e0000e0  vmmov mr0, zero
0007ac  17200000  xor zero, zero, zero
0007b0  1f070000  addli r14, zero, 0
0007b4  9a913802  vsub.f.mz.rn vr3{mr1}, r17, vr3
0007b8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0007bc  0a933804  vmul.f.mz.rn vr6{mr2}, r17, vr3
0007c0  8a913100  vmul.f.mz.rn vr3{mr0}, r3, vr3
0007c4  46904402  vstore_mask16.mz vr4{mr1}, 0(r9)
0007c8  00a00000  mfence { lm }
0007cc  96153302  vadd.f.mz.rn vr11{mr1}, vr6, vr3
0007d0  8b91e410  add.s r3, r9, r14
0007d4  2b0b803f  lui r22, 260096
0007d8  8b97e610  add.s r15, r13, r14
0007dc  1f470700  addli r14, r14, 4
0007e0  63890100  loadli.w r18,  0(r3)
0007e4  e38b0700  loadli.w r23,  0(r15)
0007e8  0b6b4951  fmac.f.rn r22, r18, r20
0007ec  0be90b58  neg.f r18, r23
0007f0  0f090900  exp.f.rn r18, r18
0007f4  0f8b6819  div.f.rn r22, r17, r22
0007f8  67802701  storeli.w r18, 0(r15)
0007fc  67806101  storeli.w r22, 0(r3)
000800  3b4f57ff  bneq r14, r21, -48
000804  00a00000  mfence { lm }
000808  1f477fef  addli r14, r30, -2116
00080c  72108042  vlt.f.mz mr0{mr1}, zero, vr8
000810  8e138402  vmul.f.mz.rn vr7{mr1}, vr8, vr8
000814  c2910402  vload_mask16.mz vr3{mr1}, 0(r9)
000818  e341fff3  loadli.w r3,  -1540(r30)
00081c  c2920602  vload_mask16.mz vr5{mr1}, 0(r13)
000820  7e010040  vmnot mr2, mr0
000824  63000700  loadli.w zero,  0(r14)
000828  46107502  vstore_mask16.mz vr7{mr1}, 0(r10)
00082c  0a923902  vmul.f.mz.rn vr4{mr1}, r19, vr3
000830  12924c02  vadd.f.mz.rn vr4{mr1}, r25, vr4
000834  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000838  12124d02  vadd.f.mz.rn vr4{mr1}, r26, vr4
00083c  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000840  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000844  e301fff3  loadli.w r3,  -1544(r30)
000848  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
00084c  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000850  ab0180bf  lui r3, 784384
000854  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
000858  0a928800  vmul.f.mz.rn vr4{mr0}, r17, vr8
00085c  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
000860  8a928104  vmul.f.mz.rn vr5{mr2}, r3, vr8
000864  9a913802  vsub.f.mz.rn vr3{mr1}, r17, vr3
000868  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00086c  0a933806  vmul.f.mz.rn vr6{mr3}, r17, vr3
000870  fe0100e0  vmmov mr3, zero
000874  17200000  xor zero, zero, zero
000878  46104202  vstore_mask16.mz vr4{mr1}, 0(r4)
00087c  8a913106  vmul.f.mz.rn vr3{mr3}, r3, vr3
000880  00a00000  mfence { lm }
000884  1f070000  addli r14, zero, 0
000888  16143302  vadd.f.mz.rn vr8{mr1}, vr6, vr3
00088c  8b11e210  add.s r3, r4, r14
000890  2b0b803f  lui r22, 260096
000894  8b17e510  add.s r15, r10, r14
000898  1f470700  addli r14, r14, 4
00089c  63890100  loadli.w r18,  0(r3)
0008a0  e38b0700  loadli.w r23,  0(r15)
0008a4  0b6b4951  fmac.f.rn r22, r18, r20
0008a8  0be90b58  neg.f r18, r23
0008ac  0f090900  exp.f.rn r18, r18
0008b0  0f8b6819  div.f.rn r22, r17, r22
0008b4  67802701  storeli.w r18, 0(r15)
0008b8  67806101  storeli.w r22, 0(r3)
0008bc  3b4f57ff  bneq r14, r21, -48
0008c0  00a00000  mfence { lm }
0008c4  92929802  vadd.f.mz.rn vr5{mr1}, r17, vr9
0008c8  12912802  vadd.f.mz.rn vr2{mr1}, r17, vr2
0008cc  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
0008d0  12900802  vadd.f.mz.rn vr0{mr1}, r17, vr0
0008d4  12948802  vadd.f.mz.rn vr8{mr1}, r17, vr8
0008d8  6b578f00  load.d r[15:16], 8(r30)
0008dc  c2110202  vload_mask16.mz vr3{mr1}, 0(r4)
0008e0  e341fff3  loadli.w r3,  -1540(r30)
0008e4  0a923902  vmul.f.mz.rn vr4{mr1}, r19, vr3
0008e8  12924c02  vadd.f.mz.rn vr4{mr1}, r25, vr4
0008ec  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0008f0  12124d02  vadd.f.mz.rn vr4{mr1}, r26, vr4
0008f4  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0008f8  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
0008fc  e301fff3  loadli.w r3,  -1544(r30)
000900  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000904  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000908  9f018fef  addli r3, r30, -2112
00090c  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
000910  9f010ff1  addli r3, r30, -1920
000914  c2930102  vload_mask16.mz vr7{mr1}, 0(r3)
000918  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
00091c  9f018ff0  addli r3, r30, -1984
000920  1292a802  vadd.f.mz.rn vr4{mr1}, r17, vr10
000924  8e125302  vmul.f.mz.rn vr5{mr1}, vr6, vr5
000928  42130502  vload_mask16.mz vr6{mr1}, 0(r10)
00092c  0e924302  vmul.f.mz.rn vr4{mr1}, vr7, vr4
000930  c2930102  vload_mask16.mz vr7{mr1}, 0(r3)
000934  9f018ff1  addli r3, r30, -1856
000938  8e113302  vmul.f.mz.rn vr3{mr1}, vr6, vr3
00093c  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
000940  9f018ff2  addli r3, r30, -1728
000944  8e901302  vmul.f.mz.rn vr1{mr1}, vr7, vr1
000948  9a913802  vsub.f.mz.rn vr3{mr1}, r17, vr3
00094c  0e112302  vmul.f.mz.rn vr2{mr1}, vr6, vr2
000950  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
000954  9f010ff2  addli r3, r30, -1792
000958  c2930102  vload_mask16.mz vr7{mr1}, 0(r3)
00095c  ab0180bf  lui r3, 784384
000960  0e100302  vmul.f.mz.rn vr0{mr1}, vr6, vr0
000964  1293b802  vadd.f.mz.rn vr6{mr1}, r17, vr11
000968  0e936302  vmul.f.mz.rn vr6{mr1}, vr7, vr6
00096c  8a933800  vmul.f.mz.rn vr7{mr0}, r17, vr3
000970  8a913104  vmul.f.mz.rn vr3{mr2}, r3, vr3
000974  9f010ff0  addli r3, r30, -2048
000978  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
00097c  9f010ff4  addli r3, r30, -1536
000980  46905102  vstore_mask16.mz vr5{mr1}, 0(r3)
000984  9f018ff4  addli r3, r30, -1472
000988  96913302  vadd.f.mz.rn vr3{mr1}, vr7, vr3
00098c  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
000990  9f010ff5  addli r3, r30, -1408
000994  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
000998  9f018ff5  addli r3, r30, -1344
00099c  0e948402  vmul.f.mz.rn vr8{mr1}, vr9, vr8
0009a0  92903802  vadd.f.mz.rn vr1{mr1}, r17, vr3
0009a4  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
0009a8  9f010ff3  addli r3, r30, -1664
0009ac  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
0009b0  9f010ff6  addli r3, r30, -1280
0009b4  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
0009b8  9f018ff6  addli r3, r30, -1216
0009bc  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
0009c0  9f010ff7  addli r3, r30, -1152
0009c4  8e101102  vmul.f.mz.rn vr1{mr1}, vr2, vr1
0009c8  46908102  vstore_mask16.mz vr8{mr1}, 0(r3)
0009cc  9f018ff7  addli r3, r30, -1088
0009d0  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0009d4  ab0100f0  lui r3, 983040
0009d8  6b5b8f9e  load.d r[23:24], -1560(r30)
0009dc  00a00000  mfence { lm }
0009e0  0b276711  add.ul r[15:16], r[15:16], r[23:24]
0009e4  9f0b0004  addli r23, zero, 512
0009e8  1f0b0ff4  addli r22, r30, -1536
0009ec  97913b00  or r3, r23, r3
0009f0  ff316701  s_lm2gm r3, r22, 0(r[15:16])
0009f4  6347eff3  loadli.w r14,  -1548(r30)
0009f8  e3016fef  loadli.w r3,  -2128(r30)
0009fc  00a00000  mfence { lm }
000a00  0b173710  add.s r14, r14, r3
000a04  e3416fef  loadli.w r3,  -2124(r30)
000a08  bf2e37fa  blt.s r14, r3, -2136
000a0c  9f0e0fef  addli sp, r30, -2176
000a10  9f8e0e11  addli sp, sp, 2176
000a14  00a00300  mfence { lm, sm, gm }
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
000a54  00100000  exit
000a58  00100000  exit
000a5c  00100000  exit
000a60  00100000  exit
000a64  00100000  exit
000a68  00100000  exit
000a6c  00100000  exit
000a70  00100000  exit
000a74  00100000  exit
000a78  00100000  exit
000a7c  00100000  exit
000a80  00100000  exit
000a84  00100000  exit
000a88  00100000  exit
000a8c  00100000  exit
000a90  00100000  exit
000a94  00100000  exit
000a98  00100000  exit
000a9c  00100000  exit
000aa0  00100000  exit
000aa4  00100000  exit
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
