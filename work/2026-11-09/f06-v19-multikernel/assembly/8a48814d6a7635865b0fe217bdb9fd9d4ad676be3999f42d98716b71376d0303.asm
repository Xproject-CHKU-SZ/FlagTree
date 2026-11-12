; SHA-256 8a48814d6a7635865b0fe217bdb9fd9d4ad676be3999f42d98716b71376d0303
; P800 Cluster · XTDK LLVM 19 · 803 / 803 words decoded
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
0000fc  670a1fee  storeli.w r1, -2144(r30)
000100  cbf4e004  ble.s r1, r14, 2364
000104  80d00002  load_param_i r1, 1
000108  2bf1b53f  lui r2, 260959
00010c  1f0b0ff4  addli r22, r30, -1536
000110  9f0b0004  addli r23, zero, 512
000114  1f0c8ff8  addli r24, r30, -960
000118  ab08803f  lui r17, 260096
00011c  1f080ff8  addli r16, r30, -1024
000120  9f0a8000  addli r21, zero, 64
000124  9f0d8ff9  addli r27, r30, -832
000128  1f0e0ff9  addli r28, r30, -896
00012c  9f048ffb  addli r9, r30, -576
000130  1f020ffb  addli r4, r30, -640
000134  9f018ffc  addli r3, r30, -448
000138  9f020ffc  addli r5, r30, -512
00013c  1f038ffd  addli r6, r30, -320
000140  9f030ffd  addli r7, r30, -384
000144  1f048ffe  addli r8, r30, -192
000148  9f050ffe  addli r11, r30, -256
00014c  1f058fff  addli r10, r30, -64
000150  1f060fff  addli r12, r30, -128
000154  e7491fee  storeli.w r1, -2148(r30)
000158  80500102  load_param_i r1, 2
00015c  1b1d310e  ori r26, r2, 227
000160  2b71823e  lui r2, 256039
000164  670b1fee  storeli.w r1, -2128(r30)
000168  ab00353f  lui r1, 258896
00016c  e70aafef  storeli.w r26, -2136(r30)
000170  9b90304f  ori r1, r1, 1267
000174  e74a1fee  storeli.w r1, -2132(r30)
000178  abb0a73e  lui r1, 256635
00017c  1b9a50a0  ori r20, r1, 2565
000180  abd0873f  lui r1, 260221
000184  9b9920c2  ori r19, r1, 3106
000188  ab00babf  lui r1, 785312
00018c  9b9c300e  ori r25, r1, 227
000190  aba091be  lui r1, 780570
000194  9b90e098  ori r1, r1, 2446
000198  e74f1ff2  storeli.w r1, -1540(r30)
00019c  9b106190  ori r1, r2, 2310
0001a0  1f010ffa  addli r2, r30, -768
0001a4  e70f1ff2  storeli.w r1, -1544(r30)
0001a8  9f008ffa  addli r1, r30, -704
0001ac  e3463f00  loadli.w r13,  28(r30)
0001b0  674aefee  storeli.w r14, -2140(r30)
0001b4  9f170000  addli r15, zero, 1
0001b8  8b16d730  div.s r13, r14, r13
0001bc  63073f00  loadli.w r14,  24(r30)
0001c0  8b96e630  div.s r13, r13, r14
0001c4  1f070000  addli r14, zero, 0
0001c8  9bb6e600  slli r13, r13, 14
0001cc  674bdfee  storeli.w r13, -2124(r30)
0001d0  674ffff2  storeli.w r15, -1548(r30)
0001d4  e3076fef  loadli.w r15,  -2128(r30)
0001d8  80360002  core_id r13
0001dc  1f290000  addli r18, zero, 2
0001e0  1f8d0900  addli r26, r19, 0
0001e4  8b96e750  fmac.s r13, r15, r14
0001e8  63476fef  loadli.w r14,  -2124(r30)
0001ec  ab0700f0  lui r15, 983040
0001f0  9bb67600  slli r13, r13, 7
0001f4  8b96e610  add.s r13, r13, r14
0001f8  b3960628  sext_int2long r[14:15], r13
0001fc  17b92603  sll.d r[19:20], r[14:15], r18
000200  9796fb00  or r13, r23, r15
000204  6b570f00  load.d r[15:16], 0(r30)
000208  73342f9f  store.d r[19:20], -1560(r30)
00020c  0b272711  add.ul r[15:16], r[15:16], r[19:20]
000210  ff266701  l_gm2lm r13, r22, 0(r[15:16])
000214  9f060ff4  addli r13, r30, -1536
000218  9f070ff1  addli r15, r30, -1920
00021c  00a00000  mfence { lm }
000220  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
000224  9f068ff4  addli r13, r30, -1472
000228  c2900602  vload_mask16.mz vr1{mr1}, 0(r13)
00022c  9f060ff5  addli r13, r30, -1408
000230  42910602  vload_mask16.mz vr2{mr1}, 0(r13)
000234  9f068ff5  addli r13, r30, -1344
000238  42930602  vload_mask16.mz vr6{mr1}, 0(r13)
00023c  9f060ff6  addli r13, r30, -1280
000240  42940602  vload_mask16.mz vr8{mr1}, 0(r13)
000244  9f068ff6  addli r13, r30, -1216
000248  c2910602  vload_mask16.mz vr3{mr1}, 0(r13)
00024c  9f060ff7  addli r13, r30, -1152
000250  c2950602  vload_mask16.mz vr11{mr1}, 0(r13)
000254  63475fef  loadli.w r14,  -2132(r30)
000258  8a120702  vmul.f.mz.rn vr5{mr1}, r14, vr0
00025c  72105042  vlt.f.mz mr0{mr1}, zero, vr5
000260  9f467fef  addli r13, r30, -2116
000264  0e955202  vmul.f.mz.rn vr10{mr1}, vr5, vr5
000268  7e010040  vmnot mr2, mr0
00026c  8a935800  vmul.f.mz.rn vr7{mr0}, r17, vr5
000270  7e0001a0  vmmov zero, mr2
000274  67800600  storeli.w zero, 0(r13)
000278  ab0680bf  lui r13, 784384
00027c  17200000  xor zero, zero, zero
000280  4610ac02  vstore_mask16.mz vr10{mr1}, 0(r24)
000284  0a152702  vmul.f.mz.rn vr10{mr1}, r14, vr2
000288  8a945604  vmul.f.mz.rn vr9{mr2}, r13, vr5
00028c  ab06003f  lui r13, 258048
000290  0a921602  vmul.f.mz.rn vr4{mr1}, r13, vr1
000294  46904702  vstore_mask16.mz vr4{mr1}, 0(r15)
000298  9f078ff0  addli r15, r30, -1984
00029c  0a900602  vmul.f.mz.rn vr0{mr1}, r13, vr0
0002a0  0a922602  vmul.f.mz.rn vr4{mr1}, r13, vr2
0002a4  0a118702  vmul.f.mz.rn vr2{mr1}, r14, vr8
0002a8  46904702  vstore_mask16.mz vr4{mr1}, 0(r15)
0002ac  9f078ff1  addli r15, r30, -1856
0002b0  0a926602  vmul.f.mz.rn vr4{mr1}, r13, vr6
0002b4  46904702  vstore_mask16.mz vr4{mr1}, 0(r15)
0002b8  9f078ff2  addli r15, r30, -1728
0002bc  0a928602  vmul.f.mz.rn vr4{mr1}, r13, vr8
0002c0  96939302  vadd.f.mz.rn vr7{mr1}, vr7, vr9
0002c4  8a141702  vmul.f.mz.rn vr9{mr1}, r14, vr1
0002c8  8a106702  vmul.f.mz.rn vr1{mr1}, r14, vr6
0002cc  46904702  vstore_mask16.mz vr4{mr1}, 0(r15)
0002d0  9f070ff2  addli r15, r30, -1792
0002d4  0a923602  vmul.f.mz.rn vr4{mr1}, r13, vr3
0002d8  46904702  vstore_mask16.mz vr4{mr1}, 0(r15)
0002dc  9f078fef  addli r15, r30, -2112
0002e0  46107802  vstore_mask16.mz vr7{mr1}, 0(r16)
0002e4  0a92b602  vmul.f.mz.rn vr4{mr1}, r13, vr11
0002e8  8a15b702  vmul.f.mz.rn vr11{mr1}, r14, vr11
0002ec  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
0002f0  9f078ff7  addli r15, r30, -1088
0002f4  0a103702  vmul.f.mz.rn vr0{mr1}, r14, vr3
0002f8  c2910702  vload_mask16.mz vr3{mr1}, 0(r15)
0002fc  9f070ff0  addli r15, r30, -2048
000300  0a143702  vmul.f.mz.rn vr8{mr1}, r14, vr3
000304  1f070000  addli r14, zero, 0
000308  46904702  vstore_mask16.mz vr4{mr1}, 0(r15)
00030c  0a923602  vmul.f.mz.rn vr4{mr1}, r13, vr3
000310  9f060ff3  addli r13, r30, -1664
000314  46904602  vstore_mask16.mz vr4{mr1}, 0(r13)
000318  00a00000  mfence { lm }
00031c  8b16e810  add.s r13, r16, r14
000320  2b0b803f  lui r22, 260096
000324  8b17ec10  add.s r15, r24, r14
000328  1f470700  addli r14, r14, 4
00032c  63890600  loadli.w r18,  0(r13)
000330  e38b0700  loadli.w r23,  0(r15)
000334  0b6b4951  fmac.f.rn r22, r18, r20
000338  0be90b58  neg.f r18, r23
00033c  0f090900  exp.f.rn r18, r18
000340  0f8b6819  div.f.rn r22, r17, r22
000344  67802701  storeli.w r18, 0(r15)
000348  67806601  storeli.w r22, 0(r13)
00034c  3b4f57ff  bneq r14, r21, -48
000350  00a00000  mfence { lm }
000354  9f090d00  addli r19, r26, 0
000358  f2119042  vlt.f.mz mr3{mr1}, zero, vr9
00035c  1f077fef  addli r14, r30, -2120
000360  8e939402  vmul.f.mz.rn vr7{mr1}, vr9, vr9
000364  c2110802  vload_mask16.mz vr3{mr1}, 0(r16)
000368  630d5fef  loadli.w r26,  -2136(r30)
00036c  e346fff3  loadli.w r13,  -1540(r30)
000370  c2120c02  vload_mask16.mz vr5{mr1}, 0(r24)
000374  7e810140  vmnot mr2, mr3
000378  7e0001a0  vmmov zero, mr2
00037c  67000700  storeli.w zero, 0(r14)
000380  1f477fef  addli r14, r30, -2116
000384  17200000  xor zero, zero, zero
000388  46907d02  vstore_mask16.mz vr7{mr1}, 0(r27)
00038c  63000700  loadli.w zero,  0(r14)
000390  0a923902  vmul.f.mz.rn vr4{mr1}, r19, vr3
000394  12924c02  vadd.f.mz.rn vr4{mr1}, r25, vr4
000398  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
00039c  12124d02  vadd.f.mz.rn vr4{mr1}, r26, vr4
0003a0  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0003a4  12924602  vadd.f.mz.rn vr4{mr1}, r13, vr4
0003a8  e306fff3  loadli.w r13,  -1544(r30)
0003ac  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0003b0  12924602  vadd.f.mz.rn vr4{mr1}, r13, vr4
0003b4  ab0680bf  lui r13, 784384
0003b8  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
0003bc  0a929806  vmul.f.mz.rn vr4{mr3}, r17, vr9
0003c0  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
0003c4  8a929604  vmul.f.mz.rn vr5{mr2}, r13, vr9
0003c8  9a913802  vsub.f.mz.rn vr3{mr1}, r17, vr3
0003cc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0003d0  0a933800  vmul.f.mz.rn vr6{mr0}, r17, vr3
0003d4  7e0000e0  vmmov mr0, zero
0003d8  17200000  xor zero, zero, zero
0003dc  46104e02  vstore_mask16.mz vr4{mr1}, 0(r28)
0003e0  8a913600  vmul.f.mz.rn vr3{mr0}, r13, vr3
0003e4  00a00000  mfence { lm }
0003e8  1f070000  addli r14, zero, 0
0003ec  96143302  vadd.f.mz.rn vr9{mr1}, vr6, vr3
0003f0  8b16ee10  add.s r13, r28, r14
0003f4  2b0b803f  lui r22, 260096
0003f8  8b97ed10  add.s r15, r27, r14
0003fc  1f470700  addli r14, r14, 4
000400  63890600  loadli.w r18,  0(r13)
000404  e38b0700  loadli.w r23,  0(r15)
000408  0b6b4951  fmac.f.rn r22, r18, r20
00040c  0be90b58  neg.f r18, r23
000410  0f090900  exp.f.rn r18, r18
000414  0f8b6819  div.f.rn r22, r17, r22
000418  67802701  storeli.w r18, 0(r15)
00041c  67806601  storeli.w r22, 0(r13)
000420  3b4f57ff  bneq r14, r21, -48
000424  00a00000  mfence { lm }
000428  7210a042  vlt.f.mz mr0{mr1}, zero, vr10
00042c  1f477fef  addli r14, r30, -2116
000430  8e13a502  vmul.f.mz.rn vr7{mr1}, vr10, vr10
000434  c2110e02  vload_mask16.mz vr3{mr1}, 0(r28)
000438  e346fff3  loadli.w r13,  -1540(r30)
00043c  c2920d02  vload_mask16.mz vr5{mr1}, 0(r27)
000440  7e010040  vmnot mr2, mr0
000444  7e0001a0  vmmov zero, mr2
000448  67000700  storeli.w zero, 0(r14)
00044c  1f077fef  addli r14, r30, -2120
000450  17200000  xor zero, zero, zero
000454  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
000458  63000700  loadli.w zero,  0(r14)
00045c  0a923902  vmul.f.mz.rn vr4{mr1}, r19, vr3
000460  12924c02  vadd.f.mz.rn vr4{mr1}, r25, vr4
000464  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000468  12124d02  vadd.f.mz.rn vr4{mr1}, r26, vr4
00046c  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000470  12924602  vadd.f.mz.rn vr4{mr1}, r13, vr4
000474  e306fff3  loadli.w r13,  -1544(r30)
000478  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
00047c  12924602  vadd.f.mz.rn vr4{mr1}, r13, vr4
000480  ab0680bf  lui r13, 784384
000484  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
000488  0a92a800  vmul.f.mz.rn vr4{mr0}, r17, vr10
00048c  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
000490  8a92a604  vmul.f.mz.rn vr5{mr2}, r13, vr10
000494  7e0100e0  vmmov mr2, zero
000498  17200000  xor zero, zero, zero
00049c  1f070000  addli r14, zero, 0
0004a0  9a913802  vsub.f.mz.rn vr3{mr1}, r17, vr3
0004a4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0004a8  0a933806  vmul.f.mz.rn vr6{mr3}, r17, vr3
0004ac  8a913604  vmul.f.mz.rn vr3{mr2}, r13, vr3
0004b0  46104102  vstore_mask16.mz vr4{mr1}, 0(r2)
0004b4  00a00000  mfence { lm }
0004b8  16153302  vadd.f.mz.rn vr10{mr1}, vr6, vr3
0004bc  8b16e110  add.s r13, r2, r14
0004c0  2b0b803f  lui r22, 260096
0004c4  8b97e010  add.s r15, r1, r14
0004c8  1f470700  addli r14, r14, 4
0004cc  63890600  loadli.w r18,  0(r13)
0004d0  e38b0700  loadli.w r23,  0(r15)
0004d4  0b6b4951  fmac.f.rn r22, r18, r20
0004d8  0be90b58  neg.f r18, r23
0004dc  0f090900  exp.f.rn r18, r18
0004e0  0f8b6819  div.f.rn r22, r17, r22
0004e4  67802701  storeli.w r18, 0(r15)
0004e8  67806601  storeli.w r22, 0(r13)
0004ec  3b4f57ff  bneq r14, r21, -48
0004f0  00a00000  mfence { lm }
0004f4  72111042  vlt.f.mz mr2{mr1}, zero, vr1
0004f8  1f077fef  addli r14, r30, -2120
0004fc  8e931002  vmul.f.mz.rn vr7{mr1}, vr1, vr1
000500  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
000504  e346fff3  loadli.w r13,  -1540(r30)
000508  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
00050c  fe010140  vmnot mr3, mr2
000510  7e8001a0  vmmov zero, mr3
000514  67000700  storeli.w zero, 0(r14)
000518  1f477fef  addli r14, r30, -2116
00051c  17200000  xor zero, zero, zero
000520  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
000524  63000700  loadli.w zero,  0(r14)
000528  0a923902  vmul.f.mz.rn vr4{mr1}, r19, vr3
00052c  12924c02  vadd.f.mz.rn vr4{mr1}, r25, vr4
000530  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000534  12124d02  vadd.f.mz.rn vr4{mr1}, r26, vr4
000538  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
00053c  12924602  vadd.f.mz.rn vr4{mr1}, r13, vr4
000540  e306fff3  loadli.w r13,  -1544(r30)
000544  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000548  12924602  vadd.f.mz.rn vr4{mr1}, r13, vr4
00054c  ab0680bf  lui r13, 784384
000550  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
000554  0a921804  vmul.f.mz.rn vr4{mr2}, r17, vr1
000558  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
00055c  8a921606  vmul.f.mz.rn vr5{mr3}, r13, vr1
000560  9a913802  vsub.f.mz.rn vr3{mr1}, r17, vr3
000564  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000568  0a933800  vmul.f.mz.rn vr6{mr0}, r17, vr3
00056c  7e0000e0  vmmov mr0, zero
000570  17200000  xor zero, zero, zero
000574  46104202  vstore_mask16.mz vr4{mr1}, 0(r4)
000578  8a913600  vmul.f.mz.rn vr3{mr0}, r13, vr3
00057c  00a00000  mfence { lm }
000580  1f070000  addli r14, zero, 0
000584  96103302  vadd.f.mz.rn vr1{mr1}, vr6, vr3
000588  8b16e210  add.s r13, r4, r14
00058c  2b0b803f  lui r22, 260096
000590  8b97e410  add.s r15, r9, r14
000594  1f470700  addli r14, r14, 4
000598  63890600  loadli.w r18,  0(r13)
00059c  e38b0700  loadli.w r23,  0(r15)
0005a0  0b6b4951  fmac.f.rn r22, r18, r20
0005a4  0be90b58  neg.f r18, r23
0005a8  0f090900  exp.f.rn r18, r18
0005ac  0f8b6819  div.f.rn r22, r17, r22
0005b0  67802701  storeli.w r18, 0(r15)
0005b4  67806601  storeli.w r22, 0(r13)
0005b8  3b4f57ff  bneq r14, r21, -48
0005bc  00a00000  mfence { lm }
0005c0  72102042  vlt.f.mz mr0{mr1}, zero, vr2
0005c4  1f477fef  addli r14, r30, -2116
0005c8  8e132102  vmul.f.mz.rn vr7{mr1}, vr2, vr2
0005cc  c2110202  vload_mask16.mz vr3{mr1}, 0(r4)
0005d0  e346fff3  loadli.w r13,  -1540(r30)
0005d4  c2920402  vload_mask16.mz vr5{mr1}, 0(r9)
0005d8  fe010040  vmnot mr3, mr0
0005dc  7e8001a0  vmmov zero, mr3
0005e0  67000700  storeli.w zero, 0(r14)
0005e4  1f077fef  addli r14, r30, -2120
0005e8  17200000  xor zero, zero, zero
0005ec  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
0005f0  63000700  loadli.w zero,  0(r14)
0005f4  0a923902  vmul.f.mz.rn vr4{mr1}, r19, vr3
0005f8  12924c02  vadd.f.mz.rn vr4{mr1}, r25, vr4
0005fc  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000600  12124d02  vadd.f.mz.rn vr4{mr1}, r26, vr4
000604  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000608  12924602  vadd.f.mz.rn vr4{mr1}, r13, vr4
00060c  e306fff3  loadli.w r13,  -1544(r30)
000610  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000614  12924602  vadd.f.mz.rn vr4{mr1}, r13, vr4
000618  ab0680bf  lui r13, 784384
00061c  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
000620  0a922800  vmul.f.mz.rn vr4{mr0}, r17, vr2
000624  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
000628  8a922606  vmul.f.mz.rn vr5{mr3}, r13, vr2
00062c  9a913802  vsub.f.mz.rn vr3{mr1}, r17, vr3
000630  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000634  0a933804  vmul.f.mz.rn vr6{mr2}, r17, vr3
000638  7e0100e0  vmmov mr2, zero
00063c  17200000  xor zero, zero, zero
000640  46904202  vstore_mask16.mz vr4{mr1}, 0(r5)
000644  8a913604  vmul.f.mz.rn vr3{mr2}, r13, vr3
000648  00a00000  mfence { lm }
00064c  1f070000  addli r14, zero, 0
000650  16113302  vadd.f.mz.rn vr2{mr1}, vr6, vr3
000654  8b96e210  add.s r13, r5, r14
000658  2b0b803f  lui r22, 260096
00065c  8b97e110  add.s r15, r3, r14
000660  1f470700  addli r14, r14, 4
000664  63890600  loadli.w r18,  0(r13)
000668  e38b0700  loadli.w r23,  0(r15)
00066c  0b6b4951  fmac.f.rn r22, r18, r20
000670  0be90b58  neg.f r18, r23
000674  0f090900  exp.f.rn r18, r18
000678  0f8b6819  div.f.rn r22, r17, r22
00067c  67802701  storeli.w r18, 0(r15)
000680  67806601  storeli.w r22, 0(r13)
000684  3b4f57ff  bneq r14, r21, -48
000688  00a00000  mfence { lm }
00068c  72110042  vlt.f.mz mr2{mr1}, zero, vr0
000690  1f077fef  addli r14, r30, -2120
000694  8e130002  vmul.f.mz.rn vr7{mr1}, vr0, vr0
000698  c2910202  vload_mask16.mz vr3{mr1}, 0(r5)
00069c  e346fff3  loadli.w r13,  -1540(r30)
0006a0  c2920102  vload_mask16.mz vr5{mr1}, 0(r3)
0006a4  fe010140  vmnot mr3, mr2
0006a8  7e8001a0  vmmov zero, mr3
0006ac  67000700  storeli.w zero, 0(r14)
0006b0  1f477fef  addli r14, r30, -2116
0006b4  17200000  xor zero, zero, zero
0006b8  46107302  vstore_mask16.mz vr7{mr1}, 0(r6)
0006bc  63000700  loadli.w zero,  0(r14)
0006c0  0a923902  vmul.f.mz.rn vr4{mr1}, r19, vr3
0006c4  12924c02  vadd.f.mz.rn vr4{mr1}, r25, vr4
0006c8  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0006cc  12124d02  vadd.f.mz.rn vr4{mr1}, r26, vr4
0006d0  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0006d4  12924602  vadd.f.mz.rn vr4{mr1}, r13, vr4
0006d8  e306fff3  loadli.w r13,  -1544(r30)
0006dc  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0006e0  12924602  vadd.f.mz.rn vr4{mr1}, r13, vr4
0006e4  ab0680bf  lui r13, 784384
0006e8  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
0006ec  0a920804  vmul.f.mz.rn vr4{mr2}, r17, vr0
0006f0  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
0006f4  8a920606  vmul.f.mz.rn vr5{mr3}, r13, vr0
0006f8  9a913802  vsub.f.mz.rn vr3{mr1}, r17, vr3
0006fc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000700  0a933800  vmul.f.mz.rn vr6{mr0}, r17, vr3
000704  7e0000e0  vmmov mr0, zero
000708  17200000  xor zero, zero, zero
00070c  46904302  vstore_mask16.mz vr4{mr1}, 0(r7)
000710  8a913600  vmul.f.mz.rn vr3{mr0}, r13, vr3
000714  00a00000  mfence { lm }
000718  1f070000  addli r14, zero, 0
00071c  16103302  vadd.f.mz.rn vr0{mr1}, vr6, vr3
000720  8b96e310  add.s r13, r7, r14
000724  2b0b803f  lui r22, 260096
000728  8b17e310  add.s r15, r6, r14
00072c  1f470700  addli r14, r14, 4
000730  63890600  loadli.w r18,  0(r13)
000734  e38b0700  loadli.w r23,  0(r15)
000738  0b6b4951  fmac.f.rn r22, r18, r20
00073c  0be90b58  neg.f r18, r23
000740  0f090900  exp.f.rn r18, r18
000744  0f8b6819  div.f.rn r22, r17, r22
000748  67802701  storeli.w r18, 0(r15)
00074c  67806601  storeli.w r22, 0(r13)
000750  3b4f57ff  bneq r14, r21, -48
000754  00a00000  mfence { lm }
000758  f211b042  vlt.f.mz mr3{mr1}, zero, vr11
00075c  1f477fef  addli r14, r30, -2116
000760  8e93b502  vmul.f.mz.rn vr7{mr1}, vr11, vr11
000764  c2910302  vload_mask16.mz vr3{mr1}, 0(r7)
000768  e346fff3  loadli.w r13,  -1540(r30)
00076c  c2120302  vload_mask16.mz vr5{mr1}, 0(r6)
000770  7e800140  vmnot mr0, mr3
000774  7e0000a0  vmmov zero, mr0
000778  67000700  storeli.w zero, 0(r14)
00077c  1f077fef  addli r14, r30, -2120
000780  17200000  xor zero, zero, zero
000784  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
000788  63000700  loadli.w zero,  0(r14)
00078c  0a923902  vmul.f.mz.rn vr4{mr1}, r19, vr3
000790  12924c02  vadd.f.mz.rn vr4{mr1}, r25, vr4
000794  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000798  12124d02  vadd.f.mz.rn vr4{mr1}, r26, vr4
00079c  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0007a0  12924602  vadd.f.mz.rn vr4{mr1}, r13, vr4
0007a4  e306fff3  loadli.w r13,  -1544(r30)
0007a8  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0007ac  12924602  vadd.f.mz.rn vr4{mr1}, r13, vr4
0007b0  ab0680bf  lui r13, 784384
0007b4  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
0007b8  0a92b806  vmul.f.mz.rn vr4{mr3}, r17, vr11
0007bc  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
0007c0  8a92b600  vmul.f.mz.rn vr5{mr0}, r13, vr11
0007c4  7e0000e0  vmmov mr0, zero
0007c8  17200000  xor zero, zero, zero
0007cc  1f070000  addli r14, zero, 0
0007d0  9a913802  vsub.f.mz.rn vr3{mr1}, r17, vr3
0007d4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0007d8  0a933804  vmul.f.mz.rn vr6{mr2}, r17, vr3
0007dc  8a913600  vmul.f.mz.rn vr3{mr0}, r13, vr3
0007e0  46904502  vstore_mask16.mz vr4{mr1}, 0(r11)
0007e4  00a00000  mfence { lm }
0007e8  96153302  vadd.f.mz.rn vr11{mr1}, vr6, vr3
0007ec  8b96e510  add.s r13, r11, r14
0007f0  2b0b803f  lui r22, 260096
0007f4  8b17e410  add.s r15, r8, r14
0007f8  1f470700  addli r14, r14, 4
0007fc  63890600  loadli.w r18,  0(r13)
000800  e38b0700  loadli.w r23,  0(r15)
000804  0b6b4951  fmac.f.rn r22, r18, r20
000808  0be90b58  neg.f r18, r23
00080c  0f090900  exp.f.rn r18, r18
000810  0f8b6819  div.f.rn r22, r17, r22
000814  67802701  storeli.w r18, 0(r15)
000818  67806601  storeli.w r22, 0(r13)
00081c  3b4f57ff  bneq r14, r21, -48
000820  00a00000  mfence { lm }
000824  1f477fef  addli r14, r30, -2116
000828  72108042  vlt.f.mz mr0{mr1}, zero, vr8
00082c  8e138402  vmul.f.mz.rn vr7{mr1}, vr8, vr8
000830  c2910502  vload_mask16.mz vr3{mr1}, 0(r11)
000834  e346fff3  loadli.w r13,  -1540(r30)
000838  c2120402  vload_mask16.mz vr5{mr1}, 0(r8)
00083c  7e010040  vmnot mr2, mr0
000840  63000700  loadli.w zero,  0(r14)
000844  46107502  vstore_mask16.mz vr7{mr1}, 0(r10)
000848  0a923902  vmul.f.mz.rn vr4{mr1}, r19, vr3
00084c  12924c02  vadd.f.mz.rn vr4{mr1}, r25, vr4
000850  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000854  12124d02  vadd.f.mz.rn vr4{mr1}, r26, vr4
000858  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
00085c  12924602  vadd.f.mz.rn vr4{mr1}, r13, vr4
000860  e306fff3  loadli.w r13,  -1544(r30)
000864  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000868  12924602  vadd.f.mz.rn vr4{mr1}, r13, vr4
00086c  ab0680bf  lui r13, 784384
000870  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
000874  0a928800  vmul.f.mz.rn vr4{mr0}, r17, vr8
000878  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
00087c  8a928604  vmul.f.mz.rn vr5{mr2}, r13, vr8
000880  9a913802  vsub.f.mz.rn vr3{mr1}, r17, vr3
000884  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000888  0a933806  vmul.f.mz.rn vr6{mr3}, r17, vr3
00088c  fe0100e0  vmmov mr3, zero
000890  17200000  xor zero, zero, zero
000894  46104602  vstore_mask16.mz vr4{mr1}, 0(r12)
000898  8a913606  vmul.f.mz.rn vr3{mr3}, r13, vr3
00089c  00a00000  mfence { lm }
0008a0  1f070000  addli r14, zero, 0
0008a4  16143302  vadd.f.mz.rn vr8{mr1}, vr6, vr3
0008a8  8b16e610  add.s r13, r12, r14
0008ac  2b0b803f  lui r22, 260096
0008b0  8b17e510  add.s r15, r10, r14
0008b4  1f470700  addli r14, r14, 4
0008b8  63890600  loadli.w r18,  0(r13)
0008bc  e38b0700  loadli.w r23,  0(r15)
0008c0  0b6b4951  fmac.f.rn r22, r18, r20
0008c4  0be90b58  neg.f r18, r23
0008c8  0f090900  exp.f.rn r18, r18
0008cc  0f8b6819  div.f.rn r22, r17, r22
0008d0  67802701  storeli.w r18, 0(r15)
0008d4  67806601  storeli.w r22, 0(r13)
0008d8  3b4f57ff  bneq r14, r21, -48
0008dc  00a00000  mfence { lm }
0008e0  92929802  vadd.f.mz.rn vr5{mr1}, r17, vr9
0008e4  12912802  vadd.f.mz.rn vr2{mr1}, r17, vr2
0008e8  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
0008ec  12900802  vadd.f.mz.rn vr0{mr1}, r17, vr0
0008f0  12948802  vadd.f.mz.rn vr8{mr1}, r17, vr8
0008f4  6b578f00  load.d r[15:16], 8(r30)
0008f8  c2110602  vload_mask16.mz vr3{mr1}, 0(r12)
0008fc  e346fff3  loadli.w r13,  -1540(r30)
000900  0a923902  vmul.f.mz.rn vr4{mr1}, r19, vr3
000904  12924c02  vadd.f.mz.rn vr4{mr1}, r25, vr4
000908  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
00090c  12124d02  vadd.f.mz.rn vr4{mr1}, r26, vr4
000910  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000914  12924602  vadd.f.mz.rn vr4{mr1}, r13, vr4
000918  e306fff3  loadli.w r13,  -1544(r30)
00091c  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000920  12924602  vadd.f.mz.rn vr4{mr1}, r13, vr4
000924  9f068fef  addli r13, r30, -2112
000928  42930602  vload_mask16.mz vr6{mr1}, 0(r13)
00092c  9f060ff1  addli r13, r30, -1920
000930  c2930602  vload_mask16.mz vr7{mr1}, 0(r13)
000934  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
000938  9f068ff0  addli r13, r30, -1984
00093c  1292a802  vadd.f.mz.rn vr4{mr1}, r17, vr10
000940  8e125302  vmul.f.mz.rn vr5{mr1}, vr6, vr5
000944  42130502  vload_mask16.mz vr6{mr1}, 0(r10)
000948  0e924302  vmul.f.mz.rn vr4{mr1}, vr7, vr4
00094c  c2930602  vload_mask16.mz vr7{mr1}, 0(r13)
000950  9f068ff1  addli r13, r30, -1856
000954  8e113302  vmul.f.mz.rn vr3{mr1}, vr6, vr3
000958  42930602  vload_mask16.mz vr6{mr1}, 0(r13)
00095c  9f068ff2  addli r13, r30, -1728
000960  8e901302  vmul.f.mz.rn vr1{mr1}, vr7, vr1
000964  9a913802  vsub.f.mz.rn vr3{mr1}, r17, vr3
000968  0e112302  vmul.f.mz.rn vr2{mr1}, vr6, vr2
00096c  42930602  vload_mask16.mz vr6{mr1}, 0(r13)
000970  9f060ff2  addli r13, r30, -1792
000974  c2930602  vload_mask16.mz vr7{mr1}, 0(r13)
000978  ab0680bf  lui r13, 784384
00097c  0e100302  vmul.f.mz.rn vr0{mr1}, vr6, vr0
000980  1293b802  vadd.f.mz.rn vr6{mr1}, r17, vr11
000984  0e936302  vmul.f.mz.rn vr6{mr1}, vr7, vr6
000988  8a933800  vmul.f.mz.rn vr7{mr0}, r17, vr3
00098c  8a913604  vmul.f.mz.rn vr3{mr2}, r13, vr3
000990  9f060ff0  addli r13, r30, -2048
000994  c2940602  vload_mask16.mz vr9{mr1}, 0(r13)
000998  9f060ff4  addli r13, r30, -1536
00099c  46905602  vstore_mask16.mz vr5{mr1}, 0(r13)
0009a0  9f068ff4  addli r13, r30, -1472
0009a4  96913302  vadd.f.mz.rn vr3{mr1}, vr7, vr3
0009a8  46904602  vstore_mask16.mz vr4{mr1}, 0(r13)
0009ac  9f060ff5  addli r13, r30, -1408
0009b0  46901602  vstore_mask16.mz vr1{mr1}, 0(r13)
0009b4  9f068ff5  addli r13, r30, -1344
0009b8  0e948402  vmul.f.mz.rn vr8{mr1}, vr9, vr8
0009bc  92903802  vadd.f.mz.rn vr1{mr1}, r17, vr3
0009c0  46902602  vstore_mask16.mz vr2{mr1}, 0(r13)
0009c4  9f060ff3  addli r13, r30, -1664
0009c8  42910602  vload_mask16.mz vr2{mr1}, 0(r13)
0009cc  9f060ff6  addli r13, r30, -1280
0009d0  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
0009d4  9f068ff6  addli r13, r30, -1216
0009d8  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
0009dc  9f060ff7  addli r13, r30, -1152
0009e0  8e101102  vmul.f.mz.rn vr1{mr1}, vr2, vr1
0009e4  46908602  vstore_mask16.mz vr8{mr1}, 0(r13)
0009e8  9f068ff7  addli r13, r30, -1088
0009ec  46901602  vstore_mask16.mz vr1{mr1}, 0(r13)
0009f0  ab0600f0  lui r13, 983040
0009f4  6b5b8f9e  load.d r[23:24], -1560(r30)
0009f8  00a00000  mfence { lm }
0009fc  0b276711  add.ul r[15:16], r[15:16], r[23:24]
000a00  9f0b0004  addli r23, zero, 512
000a04  1f0b0ff4  addli r22, r30, -1536
000a08  9796db00  or r13, r23, r13
000a0c  ff366701  s_lm2gm r13, r22, 0(r[15:16])
000a10  1f170000  addli r14, zero, 1
000a14  9f070000  addli r15, zero, 0
000a18  00a00000  mfence { lm }
000a1c  e346eff3  loadli.w r13,  -1548(r30)
000a20  9b861600  andi r13, r13, 1
000a24  bbbe06fa  bneq r13, zero, -2132
000a28  63474fef  loadli.w r14,  -2140(r30)
000a2c  e3463fef  loadli.w r13,  -2148(r30)
000a30  0b17d710  add.s r14, r14, r13
000a34  e3064fef  loadli.w r13,  -2144(r30)
000a38  bf5dd7fa  blt.s r14, r13, -2188
000a3c  9f0e0fef  addli sp, r30, -2176
000a40  9f8e0e11  addli sp, sp, 2176
000a44  00a00300  mfence { lm, sm, gm }
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
