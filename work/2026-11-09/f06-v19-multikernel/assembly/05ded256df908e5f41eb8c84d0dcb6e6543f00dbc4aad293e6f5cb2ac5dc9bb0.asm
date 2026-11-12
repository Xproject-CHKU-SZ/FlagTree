; SHA-256 05ded256df908e5f41eb8c84d0dcb6e6543f00dbc4aad293e6f5cb2ac5dc9bb0
; P800 Cluster · XTDK LLVM 19 · 499 / 499 words decoded
; bound names: triton_poi_fused_add_gelu_0
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
0000dc  9f8e0ef7  addli sp, sp, -1152
0000e0  1f8f8e08  addli r30, sp, 1088
0000e4  80510002  load_param_i r3, 0
0000e8  63014f00  loadli.w r2,  32(r30)
0000ec  e3403f00  loadli.w r1,  28(r30)
0000f0  63424f00  loadli.w r4,  36(r30)
0000f4  8b101120  mul.s r1, r2, r1
0000f8  8b904020  mul.s r1, r1, r4
0000fc  e74e1ff6  storeli.w r1, -1044(r30)
000100  cbf13002  ble.s r1, r3, 1148
000104  80300002  core_id r1
000108  00d10002  load_param_i r2, 1
00010c  1f0a8ffc  addli r20, r30, -448
000110  ab0a803f  lui r21, 260096
000114  9f0b0ffc  addli r23, r30, -512
000118  9f0c8000  addli r25, zero, 64
00011c  9f038ffd  addli r7, r30, -320
000120  1f040ffd  addli r8, r30, -384
000124  9f048ffe  addli r9, r30, -192
000128  1f050ffe  addli r10, r30, -256
00012c  9f068fff  addli r13, r30, -64
000130  9f070fff  addli r15, r30, -128
000134  9bb06000  slli r1, r1, 6
000138  e70e2ff6  storeli.w r2, -1048(r30)
00013c  2bf1b53f  lui r2, 260959
000140  674e1ff6  storeli.w r1, -1052(r30)
000144  ab00353f  lui r1, 258896
000148  1b1e310e  ori r28, r2, 227
00014c  2b71823e  lui r2, 256039
000150  9b90304f  ori r1, r1, 1267
000154  1b136190  ori r6, r2, 2310
000158  670e1ff6  storeli.w r1, -1056(r30)
00015c  abb0a73e  lui r1, 256635
000160  1b9c50a0  ori r24, r1, 2565
000164  abd0873f  lui r1, 260221
000168  9b9920c2  ori r19, r1, 3106
00016c  ab00babf  lui r1, 785312
000170  1b9b300e  ori r22, r1, 227
000174  aba091be  lui r1, 780570
000178  9b92e098  ori r5, r1, 2446
00017c  e3404f00  loadli.w r1,  36(r30)
000180  63014f00  loadli.w r2,  32(r30)
000184  1f020002  addli r4, zero, 256
000188  1f090ffa  addli r18, r30, -768
00018c  8b901130  div.s r1, r3, r1
000190  8b902030  div.s r1, r1, r2
000194  6341cff7  loadli.w r2,  -1052(r30)
000198  9bb0c000  slli r1, r1, 12
00019c  8b902010  add.s r1, r1, r2
0001a0  1f010010  addli r2, zero, 2048
0001a4  0b912038  mod.s r2, r1, r2
0001a8  b3950028  sext_int2long r[12:13], r1
0001ac  ab0000f0  lui r1, 983040
0001b0  17171200  or r14, r4, r1
0001b4  9f200000  addli r1, zero, 2
0001b8  17bd1502  sll.d r[27:28], r[12:13], r1
0001bc  33180128  sext_int2long r[17:18], r2
0001c0  2b0100f0  lui r2, 983040
0001c4  733cafbf  store.d r[27:28], -1032(r30)
0001c8  17122200  or r4, r4, r2
0001cc  97351802  sll.d r[12:13], r[17:18], r1
0001d0  eb500f00  load.d r[2:3], 0(r30)
0001d4  0ba8a011  add.ul r[17:18], r[2:3], r[27:28]
0001d8  eb508f00  load.d r[2:3], 8(r30)
0001dc  8ba5b010  add.ul r[12:13], r[2:3], r[12:13]
0001e0  9f000ff8  addli r1, r30, -1024
0001e4  7f271800  l_gm2lm r14, r1, 0(r[17:18])
0001e8  7fa22501  l_gm2lm r4, r18, 0(r[12:13])
0001ec  2b0980bf  lui r18, 784384
0001f0  ab00003f  lui r1, 258048
0001f4  00a00000  mfence { lm }
0001f8  c2100f82  vload_mask16.mz vr1{mr1}, 1024(r30)
0001fc  42110fa2  vload_mask16.mz vr2{mr1}, 1280(r30)
000200  42128f82  vload_mask16.mz vr4{mr1}, 1088(r30)
000204  c2120f83  vload_mask16.mz vr5{mr1}, 1152(r30)
000208  42108f83  vload_mask16.mz vr0{mr1}, 1216(r30)
00020c  42138fa2  vload_mask16.mz vr6{mr1}, 1344(r30)
000210  c2130fa3  vload_mask16.mz vr7{mr1}, 1408(r30)
000214  96912002  vadd.f.mz.rn vr3{mr1}, vr1, vr2
000218  c2108fa3  vload_mask16.mz vr1{mr1}, 1472(r30)
00021c  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
000220  16937202  vadd.f.mz.rn vr6{mr1}, vr5, vr7
000224  6301cff7  loadli.w r2,  -1056(r30)
000228  8a123102  vmul.f.mz.rn vr5{mr1}, r2, vr3
00022c  72105042  vlt.f.mz mr0{mr1}, zero, vr5
000230  8e945202  vmul.f.mz.rn vr9{mr1}, vr5, vr5
000234  7e010040  vmnot mr2, mr0
000238  0a915a00  vmul.f.mz.rn vr2{mr0}, r21, vr5
00023c  8a913002  vmul.f.mz.rn vr3{mr1}, r1, vr3
000240  8a135904  vmul.f.mz.rn vr7{mr2}, r18, vr5
000244  7e0001a0  vmmov zero, mr2
000248  8a124102  vmul.f.mz.rn vr5{mr1}, r2, vr4
00024c  674f0ff6  storeli.w zero, -1036(r30)
000250  17200000  xor zero, zero, zero
000254  46109a02  vstore_mask16.mz vr9{mr1}, 0(r20)
000258  1f070000  addli r14, zero, 0
00025c  96137102  vadd.f.mz.rn vr7{mr1}, vr2, vr7
000260  16141002  vadd.f.mz.rn vr8{mr1}, vr0, vr1
000264  0a904002  vmul.f.mz.rn vr0{mr1}, r1, vr4
000268  8a906002  vmul.f.mz.rn vr1{mr1}, r1, vr6
00026c  0a918002  vmul.f.mz.rn vr2{mr1}, r1, vr8
000270  0a136102  vmul.f.mz.rn vr6{mr1}, r2, vr6
000274  0a128102  vmul.f.mz.rn vr4{mr1}, r2, vr8
000278  46907b02  vstore_mask16.mz vr7{mr1}, 0(r23)
00027c  00a00000  mfence { lm }
000280  0b92eb10  add.s r4, r23, r14
000284  2b08803f  lui r16, 260096
000288  8b15ea10  add.s r11, r20, r14
00028c  1f470700  addli r14, r14, 4
000290  63060200  loadli.w r12,  0(r4)
000294  e3880500  loadli.w r17,  0(r11)
000298  0b688651  fmac.f.rn r16, r12, r24
00029c  0be60858  neg.f r12, r17
0002a0  0f060600  exp.f.rn r12, r12
0002a4  0f880a19  div.f.rn r16, r21, r16
0002a8  6780c500  storeli.w r12, 0(r11)
0002ac  67000201  storeli.w r16, 0(r4)
0002b0  3b4f97ff  bneq r14, r25, -48
0002b4  00a00000  mfence { lm }
0002b8  f2115042  vlt.f.mz mr3{mr1}, zero, vr5
0002bc  8e955202  vmul.f.mz.rn vr11{mr1}, vr5, vr5
0002c0  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
0002c4  c2140a02  vload_mask16.mz vr9{mr1}, 0(r20)
0002c8  7e810140  vmnot mr2, mr3
0002cc  7e0001a0  vmmov zero, mr2
0002d0  670f0ff6  storeli.w zero, -1040(r30)
0002d4  17200000  xor zero, zero, zero
0002d8  6340eff7  loadli.w zero,  -1036(r30)
0002dc  4690b302  vstore_mask16.mz vr11{mr1}, 0(r7)
0002e0  0a947902  vmul.f.mz.rn vr8{mr1}, r19, vr7
0002e4  12148b02  vadd.f.mz.rn vr8{mr1}, r22, vr8
0002e8  0e147402  vmul.f.mz.rn vr8{mr1}, vr8, vr7
0002ec  12148e02  vadd.f.mz.rn vr8{mr1}, r28, vr8
0002f0  0e147402  vmul.f.mz.rn vr8{mr1}, vr8, vr7
0002f4  12948202  vadd.f.mz.rn vr8{mr1}, r5, vr8
0002f8  0e147402  vmul.f.mz.rn vr8{mr1}, vr8, vr7
0002fc  12148302  vadd.f.mz.rn vr8{mr1}, r6, vr8
000300  8e137402  vmul.f.mz.rn vr7{mr1}, vr8, vr7
000304  0a945a06  vmul.f.mz.rn vr8{mr3}, r21, vr5
000308  8e937402  vmul.f.mz.rn vr7{mr1}, vr9, vr7
00030c  8a145904  vmul.f.mz.rn vr9{mr2}, r18, vr5
000310  9a937a02  vsub.f.mz.rn vr7{mr1}, r21, vr7
000314  16149402  vadd.f.mz.rn vr8{mr1}, vr8, vr9
000318  0a957a00  vmul.f.mz.rn vr10{mr0}, r21, vr7
00031c  7e0000e0  vmmov mr0, zero
000320  17200000  xor zero, zero, zero
000324  46108402  vstore_mask16.mz vr8{mr1}, 0(r8)
000328  8a137900  vmul.f.mz.rn vr7{mr0}, r18, vr7
00032c  00a00000  mfence { lm }
000330  1f070000  addli r14, zero, 0
000334  96127502  vadd.f.mz.rn vr5{mr1}, vr10, vr7
000338  0b12e410  add.s r4, r8, r14
00033c  2b08803f  lui r16, 260096
000340  8b95e310  add.s r11, r7, r14
000344  1f470700  addli r14, r14, 4
000348  63060200  loadli.w r12,  0(r4)
00034c  e3880500  loadli.w r17,  0(r11)
000350  0b688651  fmac.f.rn r16, r12, r24
000354  0be60858  neg.f r12, r17
000358  0f060600  exp.f.rn r12, r12
00035c  0f880a19  div.f.rn r16, r21, r16
000360  6780c500  storeli.w r12, 0(r11)
000364  67000201  storeli.w r16, 0(r4)
000368  3b4f97ff  bneq r14, r25, -48
00036c  00a00000  mfence { lm }
000370  72106042  vlt.f.mz mr0{mr1}, zero, vr6
000374  8e156302  vmul.f.mz.rn vr11{mr1}, vr6, vr6
000378  c2130402  vload_mask16.mz vr7{mr1}, 0(r8)
00037c  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
000380  7e010040  vmnot mr2, mr0
000384  7e0001a0  vmmov zero, mr2
000388  674f0ff6  storeli.w zero, -1036(r30)
00038c  17200000  xor zero, zero, zero
000390  6300eff7  loadli.w zero,  -1040(r30)
000394  4690b402  vstore_mask16.mz vr11{mr1}, 0(r9)
000398  0a947902  vmul.f.mz.rn vr8{mr1}, r19, vr7
00039c  12148b02  vadd.f.mz.rn vr8{mr1}, r22, vr8
0003a0  0e147402  vmul.f.mz.rn vr8{mr1}, vr8, vr7
0003a4  12148e02  vadd.f.mz.rn vr8{mr1}, r28, vr8
0003a8  0e147402  vmul.f.mz.rn vr8{mr1}, vr8, vr7
0003ac  12948202  vadd.f.mz.rn vr8{mr1}, r5, vr8
0003b0  0e147402  vmul.f.mz.rn vr8{mr1}, vr8, vr7
0003b4  12148302  vadd.f.mz.rn vr8{mr1}, r6, vr8
0003b8  8e137402  vmul.f.mz.rn vr7{mr1}, vr8, vr7
0003bc  0a946a00  vmul.f.mz.rn vr8{mr0}, r21, vr6
0003c0  8e937402  vmul.f.mz.rn vr7{mr1}, vr9, vr7
0003c4  8a146904  vmul.f.mz.rn vr9{mr2}, r18, vr6
0003c8  7e0100e0  vmmov mr2, zero
0003cc  17200000  xor zero, zero, zero
0003d0  1f070000  addli r14, zero, 0
0003d4  9a937a02  vsub.f.mz.rn vr7{mr1}, r21, vr7
0003d8  16149402  vadd.f.mz.rn vr8{mr1}, vr8, vr9
0003dc  0a957a06  vmul.f.mz.rn vr10{mr3}, r21, vr7
0003e0  8a137904  vmul.f.mz.rn vr7{mr2}, r18, vr7
0003e4  46108502  vstore_mask16.mz vr8{mr1}, 0(r10)
0003e8  00a00000  mfence { lm }
0003ec  16137502  vadd.f.mz.rn vr6{mr1}, vr10, vr7
0003f0  0b12e510  add.s r4, r10, r14
0003f4  2b08803f  lui r16, 260096
0003f8  8b95e410  add.s r11, r9, r14
0003fc  1f470700  addli r14, r14, 4
000400  63060200  loadli.w r12,  0(r4)
000404  e3880500  loadli.w r17,  0(r11)
000408  0b688651  fmac.f.rn r16, r12, r24
00040c  0be60858  neg.f r12, r17
000410  0f060600  exp.f.rn r12, r12
000414  0f880a19  div.f.rn r16, r21, r16
000418  6780c500  storeli.w r12, 0(r11)
00041c  67000201  storeli.w r16, 0(r4)
000420  3b4f97ff  bneq r14, r25, -48
000424  00a00000  mfence { lm }
000428  72114042  vlt.f.mz mr2{mr1}, zero, vr4
00042c  8e154202  vmul.f.mz.rn vr11{mr1}, vr4, vr4
000430  c2130502  vload_mask16.mz vr7{mr1}, 0(r10)
000434  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
000438  6340eff7  loadli.w zero,  -1036(r30)
00043c  fe010140  vmnot mr3, mr2
000440  4690b602  vstore_mask16.mz vr11{mr1}, 0(r13)
000444  0a947902  vmul.f.mz.rn vr8{mr1}, r19, vr7
000448  12148b02  vadd.f.mz.rn vr8{mr1}, r22, vr8
00044c  0e147402  vmul.f.mz.rn vr8{mr1}, vr8, vr7
000450  12148e02  vadd.f.mz.rn vr8{mr1}, r28, vr8
000454  0e147402  vmul.f.mz.rn vr8{mr1}, vr8, vr7
000458  12948202  vadd.f.mz.rn vr8{mr1}, r5, vr8
00045c  0e147402  vmul.f.mz.rn vr8{mr1}, vr8, vr7
000460  12148302  vadd.f.mz.rn vr8{mr1}, r6, vr8
000464  8e137402  vmul.f.mz.rn vr7{mr1}, vr8, vr7
000468  0a944a04  vmul.f.mz.rn vr8{mr2}, r21, vr4
00046c  8e937402  vmul.f.mz.rn vr7{mr1}, vr9, vr7
000470  8a144906  vmul.f.mz.rn vr9{mr3}, r18, vr4
000474  9a937a02  vsub.f.mz.rn vr7{mr1}, r21, vr7
000478  16149402  vadd.f.mz.rn vr8{mr1}, vr8, vr9
00047c  0a957a00  vmul.f.mz.rn vr10{mr0}, r21, vr7
000480  7e0000e0  vmmov mr0, zero
000484  17200000  xor zero, zero, zero
000488  46908702  vstore_mask16.mz vr8{mr1}, 0(r15)
00048c  8a137900  vmul.f.mz.rn vr7{mr0}, r18, vr7
000490  00a00000  mfence { lm }
000494  1f070000  addli r14, zero, 0
000498  16127502  vadd.f.mz.rn vr4{mr1}, vr10, vr7
00049c  0b92e710  add.s r4, r15, r14
0004a0  2b08803f  lui r16, 260096
0004a4  8b95e610  add.s r11, r13, r14
0004a8  1f470700  addli r14, r14, 4
0004ac  63060200  loadli.w r12,  0(r4)
0004b0  e3880500  loadli.w r17,  0(r11)
0004b4  0b688651  fmac.f.rn r16, r12, r24
0004b8  0be60858  neg.f r12, r17
0004bc  0f060600  exp.f.rn r12, r12
0004c0  0f880a19  div.f.rn r16, r21, r16
0004c4  6780c500  storeli.w r12, 0(r11)
0004c8  67000201  storeli.w r16, 0(r4)
0004cc  3b4f97ff  bneq r14, r25, -48
0004d0  00a00000  mfence { lm }
0004d4  12924a02  vadd.f.mz.rn vr4{mr1}, r21, vr4
0004d8  eb550f01  load.d r[12:13], 16(r30)
0004dc  92925a02  vadd.f.mz.rn vr5{mr1}, r21, vr5
0004e0  12936a02  vadd.f.mz.rn vr6{mr1}, r21, vr6
0004e4  8e915102  vmul.f.mz.rn vr3{mr1}, vr3, vr5
0004e8  0e106002  vmul.f.mz.rn vr0{mr1}, vr0, vr6
0004ec  8e904002  vmul.f.mz.rn vr1{mr1}, vr1, vr4
0004f0  2b0200f0  lui r4, 983040
0004f4  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
0004f8  c2940602  vload_mask16.mz vr9{mr1}, 0(r13)
0004fc  eb508fbf  load.d r[2:3], -1032(r30)
000500  8ba01510  add.ul r[2:3], r[12:13], r[2:3]
000504  9f050002  addli r11, zero, 256
000508  46103fa2  vstore_mask16.mz vr3{mr1}, 1280(r30)
00050c  46140fa2  vstore_mask16.mz vr0{mr1}, 1344(r30)
000510  46181fa2  vstore_mask16.mz vr1{mr1}, 1408(r30)
000514  17924500  or r4, r11, r4
000518  9f050ffa  addli r11, r30, -768
00051c  0a947902  vmul.f.mz.rn vr8{mr1}, r19, vr7
000520  12148b02  vadd.f.mz.rn vr8{mr1}, r22, vr8
000524  0e147402  vmul.f.mz.rn vr8{mr1}, vr8, vr7
000528  12148e02  vadd.f.mz.rn vr8{mr1}, r28, vr8
00052c  0e147402  vmul.f.mz.rn vr8{mr1}, vr8, vr7
000530  12948202  vadd.f.mz.rn vr8{mr1}, r5, vr8
000534  0e147402  vmul.f.mz.rn vr8{mr1}, vr8, vr7
000538  12148302  vadd.f.mz.rn vr8{mr1}, r6, vr8
00053c  8e137402  vmul.f.mz.rn vr7{mr1}, vr8, vr7
000540  8e937402  vmul.f.mz.rn vr7{mr1}, vr9, vr7
000544  9a937a02  vsub.f.mz.rn vr7{mr1}, r21, vr7
000548  0a947a04  vmul.f.mz.rn vr8{mr2}, r21, vr7
00054c  8a137906  vmul.f.mz.rn vr7{mr3}, r18, vr7
000550  96137402  vadd.f.mz.rn vr7{mr1}, vr8, vr7
000554  12927a02  vadd.f.mz.rn vr4{mr1}, r21, vr7
000558  0e114102  vmul.f.mz.rn vr2{mr1}, vr2, vr4
00055c  461c2fa2  vstore_mask16.mz vr2{mr1}, 1472(r30)
000560  00a00000  mfence { lm }
000564  7fb2b000  s_lm2gm r4, r11, 0(r[2:3])
000568  e300dff7  loadli.w r1,  -1048(r30)
00056c  00a00000  mfence { lm }
000570  8b911110  add.s r3, r3, r1
000574  e340dff7  loadli.w r1,  -1044(r30)
000578  3f9011fe  blt.s r3, r1, -1020
00057c  9f0e8ff7  addli sp, r30, -1088
000580  9f8e8e08  addli sp, sp, 1088
000584  00a00300  mfence { lm, sm, gm }
000588  00100000  exit
00058c  00100000  exit
000590  00100000  exit
000594  00100000  exit
000598  00100000  exit
00059c  00100000  exit
0005a0  00100000  exit
0005a4  00100000  exit
0005a8  00100000  exit
0005ac  00100000  exit
0005b0  00100000  exit
0005b4  00100000  exit
0005b8  00100000  exit
0005bc  00100000  exit
0005c0  00100000  exit
0005c4  00100000  exit
0005c8  00100000  exit
0005cc  00100000  exit
0005d0  00100000  exit
0005d4  00100000  exit
0005d8  00100000  exit
0005dc  00100000  exit
0005e0  00100000  exit
0005e4  00100000  exit
0005e8  00100000  exit
0005ec  00100000  exit
0005f0  00100000  exit
0005f4  00100000  exit
0005f8  00100000  exit
0005fc  00100000  exit
000600  00100000  exit
000604  00100000  exit
000608  00100000  exit
00060c  00100000  exit
000610  00100000  exit
000614  00100000  exit
000618  00100000  exit
00061c  00100000  exit
000620  00100000  exit
000624  00100000  exit
000628  00100000  exit
00062c  00100000  exit
000630  00100000  exit
000634  00100000  exit
000638  00100000  exit
00063c  00100000  exit
000640  00100000  exit
000644  00100000  exit
000648  00100000  exit
00064c  00100000  exit
000650  00100000  exit
000654  00100000  exit
000658  00100000  exit
00065c  00100000  exit
000660  00100000  exit
000664  00100000  exit
000668  00100000  exit
00066c  00100000  exit
000670  00100000  exit
000674  00100000  exit
000678  00100000  exit
00067c  00100000  exit
000680  00100000  exit
000684  00100000  exit
000688  00100000  exit
00068c  00100000  exit
000690  00100000  exit
000694  00100000  exit
000698  00100000  exit
00069c  00100000  exit
0006a0  00100000  exit
0006a4  00100000  exit
0006a8  00100000  exit
0006ac  00100000  exit
0006b0  00100000  exit
0006b4  00100000  exit
0006b8  00100000  exit
0006bc  00100000  exit
0006c0  00100000  exit
0006c4  00100000  exit
0006c8  00100000  exit
0006cc  00100000  exit
0006d0  00100000  exit
0006d4  00100000  exit
0006d8  00100000  exit
0006dc  00100000  exit
0006e0  00100000  exit
0006e4  00100000  exit
0006e8  00100000  exit
0006ec  00100000  exit
0006f0  00100000  exit
0006f4  00100000  exit
0006f8  00100000  exit
0006fc  00100000  exit
000700  00100000  exit
000704  00100000  exit
000708  00100000  exit
00070c  00100000  exit
000710  00100000  exit
000714  00100000  exit
000718  00100000  exit
00071c  00100000  exit
000720  00100000  exit
000724  00100000  exit
000728  00100000  exit
00072c  00100000  exit
000730  00100000  exit
000734  00100000  exit
000738  00100000  exit
00073c  00100000  exit
000740  00100000  exit
000744  00100000  exit
000748  00100000  exit
00074c  00100000  exit
000750  00100000  exit
000754  00100000  exit
000758  00100000  exit
00075c  00100000  exit
000760  00100000  exit
000764  00100000  exit
000768  00100000  exit
00076c  00100000  exit
000770  00100000  exit
000774  00100000  exit
000778  00100000  exit
00077c  00100000  exit
000780  00100000  exit
000784  00100000  exit
000788  00100000  exit
00078c  00100000  exit
000790  00100000  exit
000794  00100000  exit
000798  00100000  exit
00079c  00100000  exit
0007a0  00100000  exit
0007a4  00100000  exit
0007a8  00100000  exit
0007ac  00100000  exit
0007b0  00100000  exit
0007b4  00100000  exit
0007b8  00100000  exit
0007bc  00100000  exit
0007c0  00100000  exit
0007c4  00100000  exit
0007c8  00100000  exit
