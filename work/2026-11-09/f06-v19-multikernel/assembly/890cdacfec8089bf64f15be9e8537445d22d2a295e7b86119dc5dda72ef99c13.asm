; SHA-256 890cdacfec8089bf64f15be9e8537445d22d2a295e7b86119dc5dda72ef99c13
; P800 Cluster · XTDK LLVM 19 · 513 / 513 words decoded
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
0000dc  9f8e0ef9  addli sp, sp, -896
0000e0  1f8f8e06  addli r30, sp, 832
0000e4  80510002  load_param_i r3, 0
0000e8  63014f00  loadli.w r2,  32(r30)
0000ec  e3403f00  loadli.w r1,  28(r30)
0000f0  63424f00  loadli.w r4,  36(r30)
0000f4  8b101120  mul.s r1, r2, r1
0000f8  8b904020  mul.s r1, r1, r4
0000fc  e74e1ff8  storeli.w r1, -788(r30)
000100  cbd23002  ble.s r1, r3, 1204
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
000138  e70e2ff8  storeli.w r2, -792(r30)
00013c  2bf1b53f  lui r2, 260959
000140  674e1ff8  storeli.w r1, -796(r30)
000144  ab00353f  lui r1, 258896
000148  1b1e310e  ori r28, r2, 227
00014c  2b71823e  lui r2, 256039
000150  9b90304f  ori r1, r1, 1267
000154  1b136190  ori r6, r2, 2310
000158  670e1ff8  storeli.w r1, -800(r30)
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
000184  1f020001  addli r4, zero, 128
000188  1f090ffb  addli r18, r30, -640
00018c  8b901130  div.s r1, r3, r1
000190  8b902030  div.s r1, r1, r2
000194  6341cff9  loadli.w r2,  -796(r30)
000198  9bb0c000  slli r1, r1, 12
00019c  8b902010  add.s r1, r1, r2
0001a0  1f010010  addli r2, zero, 2048
0001a4  0b912038  mod.s r2, r1, r2
0001a8  b3950028  sext_int2long r[12:13], r1
0001ac  ab0000f0  lui r1, 983040
0001b0  17171200  or r14, r4, r1
0001b4  9f100000  addli r1, zero, 1
0001b8  17bd1502  sll.d r[27:28], r[12:13], r1
0001bc  33180128  sext_int2long r[17:18], r2
0001c0  2b0100f0  lui r2, 983040
0001c4  733cafcf  store.d r[27:28], -776(r30)
0001c8  17122200  or r4, r4, r2
0001cc  97351802  sll.d r[12:13], r[17:18], r1
0001d0  eb500f00  load.d r[2:3], 0(r30)
0001d4  0ba8a011  add.ul r[17:18], r[2:3], r[27:28]
0001d8  eb508f00  load.d r[2:3], 8(r30)
0001dc  8ba5b010  add.ul r[12:13], r[2:3], r[12:13]
0001e0  9f000ffa  addli r1, r30, -768
0001e4  7f271800  l_gm2lm r14, r1, 0(r[17:18])
0001e8  7fa22501  l_gm2lm r4, r18, 0(r[12:13])
0001ec  2b0980bf  lui r18, 784384
0001f0  ab00003f  lui r1, 258048
0001f4  00a00000  mfence { lm }
0001f8  42100fa2  vload_mask16.mz vr0{mr1}, 1280(r30)
0001fc  c2108fa2  vload_mask16.mz vr1{mr1}, 1344(r30)
000200  42110fa3  vload_mask16.mz vr2{mr1}, 1408(r30)
000204  c2118fa3  vload_mask16.mz vr3{mr1}, 1472(r30)
000208  86f20000  vfp162float_h.rn vr5, vr1
00020c  06b20000  vfp162float_l.rn vr4, vr1
000210  06f30100  vfp162float_h.rn vr6, vr3
000214  6301cff9  loadli.w r2,  -800(r30)
000218  86b00100  vfp162float_l.rn vr1, vr3
00021c  96916202  vadd.f.mz.rn vr3{mr1}, vr5, vr6
000220  86720000  vfp162float_h.rn vr5, vr0
000224  06730100  vfp162float_h.rn vr6, vr2
000228  96101202  vadd.f.mz.rn vr1{mr1}, vr4, vr1
00022c  06320000  vfp162float_l.rn vr4, vr0
000230  06300100  vfp162float_l.rn vr0, vr2
000234  16110202  vadd.f.mz.rn vr2{mr1}, vr4, vr0
000238  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
00023c  06900000  vfloat2fp16_l.rn vr0, vr1
000240  06d00100  vfloat2fp16_h.rn vr0, vr3
000244  86110100  vfloat2fp16_l.rn vr3, vr2
000248  86d10200  vfloat2fp16_h.rn vr3, vr5
00024c  06b10100  vfp162float_l.rn vr2, vr3
000250  8a122102  vmul.f.mz.rn vr5{mr1}, r2, vr2
000254  72105042  vlt.f.mz mr0{mr1}, zero, vr5
000258  0e955202  vmul.f.mz.rn vr10{mr1}, vr5, vr5
00025c  06320000  vfp162float_l.rn vr4, vr0
000260  86730000  vfp162float_h.rn vr7, vr0
000264  86f40100  vfp162float_h.rn vr9, vr3
000268  8a907002  vmul.f.mz.rn vr1{mr1}, r1, vr7
00026c  7e010040  vmnot mr2, mr0
000270  0a935a00  vmul.f.mz.rn vr6{mr0}, r21, vr5
000274  0a904002  vmul.f.mz.rn vr0{mr1}, r1, vr4
000278  0a912002  vmul.f.mz.rn vr2{mr1}, r1, vr2
00027c  8a919002  vmul.f.mz.rn vr3{mr1}, r1, vr9
000280  0a145904  vmul.f.mz.rn vr8{mr2}, r18, vr5
000284  7e0001a0  vmmov zero, mr2
000288  8a129102  vmul.f.mz.rn vr5{mr1}, r2, vr9
00028c  674f0ff8  storeli.w zero, -780(r30)
000290  17200000  xor zero, zero, zero
000294  4610aa02  vstore_mask16.mz vr10{mr1}, 0(r20)
000298  1f070000  addli r14, zero, 0
00029c  16148302  vadd.f.mz.rn vr8{mr1}, vr6, vr8
0002a0  0a134102  vmul.f.mz.rn vr6{mr1}, r2, vr4
0002a4  0a127102  vmul.f.mz.rn vr4{mr1}, r2, vr7
0002a8  46908b02  vstore_mask16.mz vr8{mr1}, 0(r23)
0002ac  00a00000  mfence { lm }
0002b0  0b92eb10  add.s r4, r23, r14
0002b4  2b08803f  lui r16, 260096
0002b8  8b15ea10  add.s r11, r20, r14
0002bc  1f470700  addli r14, r14, 4
0002c0  63060200  loadli.w r12,  0(r4)
0002c4  e3880500  loadli.w r17,  0(r11)
0002c8  0b688651  fmac.f.rn r16, r12, r24
0002cc  0be60858  neg.f r12, r17
0002d0  0f060600  exp.f.rn r12, r12
0002d4  0f880a19  div.f.rn r16, r21, r16
0002d8  6780c500  storeli.w r12, 0(r11)
0002dc  67000201  storeli.w r16, 0(r4)
0002e0  3b4f97ff  bneq r14, r25, -48
0002e4  00a00000  mfence { lm }
0002e8  f2115042  vlt.f.mz mr3{mr1}, zero, vr5
0002ec  8e955202  vmul.f.mz.rn vr11{mr1}, vr5, vr5
0002f0  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
0002f4  c2140a02  vload_mask16.mz vr9{mr1}, 0(r20)
0002f8  7e810140  vmnot mr2, mr3
0002fc  7e0001a0  vmmov zero, mr2
000300  670f0ff8  storeli.w zero, -784(r30)
000304  17200000  xor zero, zero, zero
000308  6340eff9  loadli.w zero,  -780(r30)
00030c  4690b302  vstore_mask16.mz vr11{mr1}, 0(r7)
000310  0a947902  vmul.f.mz.rn vr8{mr1}, r19, vr7
000314  12148b02  vadd.f.mz.rn vr8{mr1}, r22, vr8
000318  0e147402  vmul.f.mz.rn vr8{mr1}, vr8, vr7
00031c  12148e02  vadd.f.mz.rn vr8{mr1}, r28, vr8
000320  0e147402  vmul.f.mz.rn vr8{mr1}, vr8, vr7
000324  12948202  vadd.f.mz.rn vr8{mr1}, r5, vr8
000328  0e147402  vmul.f.mz.rn vr8{mr1}, vr8, vr7
00032c  12148302  vadd.f.mz.rn vr8{mr1}, r6, vr8
000330  8e137402  vmul.f.mz.rn vr7{mr1}, vr8, vr7
000334  0a945a06  vmul.f.mz.rn vr8{mr3}, r21, vr5
000338  8e937402  vmul.f.mz.rn vr7{mr1}, vr9, vr7
00033c  8a145904  vmul.f.mz.rn vr9{mr2}, r18, vr5
000340  9a937a02  vsub.f.mz.rn vr7{mr1}, r21, vr7
000344  16149402  vadd.f.mz.rn vr8{mr1}, vr8, vr9
000348  0a957a00  vmul.f.mz.rn vr10{mr0}, r21, vr7
00034c  7e0000e0  vmmov mr0, zero
000350  17200000  xor zero, zero, zero
000354  46108402  vstore_mask16.mz vr8{mr1}, 0(r8)
000358  8a137900  vmul.f.mz.rn vr7{mr0}, r18, vr7
00035c  00a00000  mfence { lm }
000360  1f070000  addli r14, zero, 0
000364  96127502  vadd.f.mz.rn vr5{mr1}, vr10, vr7
000368  0b12e410  add.s r4, r8, r14
00036c  2b08803f  lui r16, 260096
000370  8b95e310  add.s r11, r7, r14
000374  1f470700  addli r14, r14, 4
000378  63060200  loadli.w r12,  0(r4)
00037c  e3880500  loadli.w r17,  0(r11)
000380  0b688651  fmac.f.rn r16, r12, r24
000384  0be60858  neg.f r12, r17
000388  0f060600  exp.f.rn r12, r12
00038c  0f880a19  div.f.rn r16, r21, r16
000390  6780c500  storeli.w r12, 0(r11)
000394  67000201  storeli.w r16, 0(r4)
000398  3b4f97ff  bneq r14, r25, -48
00039c  00a00000  mfence { lm }
0003a0  72106042  vlt.f.mz mr0{mr1}, zero, vr6
0003a4  8e156302  vmul.f.mz.rn vr11{mr1}, vr6, vr6
0003a8  c2130402  vload_mask16.mz vr7{mr1}, 0(r8)
0003ac  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
0003b0  7e010040  vmnot mr2, mr0
0003b4  7e0001a0  vmmov zero, mr2
0003b8  674f0ff8  storeli.w zero, -780(r30)
0003bc  17200000  xor zero, zero, zero
0003c0  6300eff9  loadli.w zero,  -784(r30)
0003c4  4690b402  vstore_mask16.mz vr11{mr1}, 0(r9)
0003c8  0a947902  vmul.f.mz.rn vr8{mr1}, r19, vr7
0003cc  12148b02  vadd.f.mz.rn vr8{mr1}, r22, vr8
0003d0  0e147402  vmul.f.mz.rn vr8{mr1}, vr8, vr7
0003d4  12148e02  vadd.f.mz.rn vr8{mr1}, r28, vr8
0003d8  0e147402  vmul.f.mz.rn vr8{mr1}, vr8, vr7
0003dc  12948202  vadd.f.mz.rn vr8{mr1}, r5, vr8
0003e0  0e147402  vmul.f.mz.rn vr8{mr1}, vr8, vr7
0003e4  12148302  vadd.f.mz.rn vr8{mr1}, r6, vr8
0003e8  8e137402  vmul.f.mz.rn vr7{mr1}, vr8, vr7
0003ec  0a946a00  vmul.f.mz.rn vr8{mr0}, r21, vr6
0003f0  8e937402  vmul.f.mz.rn vr7{mr1}, vr9, vr7
0003f4  8a146904  vmul.f.mz.rn vr9{mr2}, r18, vr6
0003f8  7e0100e0  vmmov mr2, zero
0003fc  17200000  xor zero, zero, zero
000400  1f070000  addli r14, zero, 0
000404  9a937a02  vsub.f.mz.rn vr7{mr1}, r21, vr7
000408  16149402  vadd.f.mz.rn vr8{mr1}, vr8, vr9
00040c  0a957a06  vmul.f.mz.rn vr10{mr3}, r21, vr7
000410  8a137904  vmul.f.mz.rn vr7{mr2}, r18, vr7
000414  46108502  vstore_mask16.mz vr8{mr1}, 0(r10)
000418  00a00000  mfence { lm }
00041c  16137502  vadd.f.mz.rn vr6{mr1}, vr10, vr7
000420  0b12e510  add.s r4, r10, r14
000424  2b08803f  lui r16, 260096
000428  8b95e410  add.s r11, r9, r14
00042c  1f470700  addli r14, r14, 4
000430  63060200  loadli.w r12,  0(r4)
000434  e3880500  loadli.w r17,  0(r11)
000438  0b688651  fmac.f.rn r16, r12, r24
00043c  0be60858  neg.f r12, r17
000440  0f060600  exp.f.rn r12, r12
000444  0f880a19  div.f.rn r16, r21, r16
000448  6780c500  storeli.w r12, 0(r11)
00044c  67000201  storeli.w r16, 0(r4)
000450  3b4f97ff  bneq r14, r25, -48
000454  00a00000  mfence { lm }
000458  72114042  vlt.f.mz mr2{mr1}, zero, vr4
00045c  8e154202  vmul.f.mz.rn vr11{mr1}, vr4, vr4
000460  c2130502  vload_mask16.mz vr7{mr1}, 0(r10)
000464  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
000468  6340eff9  loadli.w zero,  -780(r30)
00046c  fe010140  vmnot mr3, mr2
000470  4690b602  vstore_mask16.mz vr11{mr1}, 0(r13)
000474  0a947902  vmul.f.mz.rn vr8{mr1}, r19, vr7
000478  12148b02  vadd.f.mz.rn vr8{mr1}, r22, vr8
00047c  0e147402  vmul.f.mz.rn vr8{mr1}, vr8, vr7
000480  12148e02  vadd.f.mz.rn vr8{mr1}, r28, vr8
000484  0e147402  vmul.f.mz.rn vr8{mr1}, vr8, vr7
000488  12948202  vadd.f.mz.rn vr8{mr1}, r5, vr8
00048c  0e147402  vmul.f.mz.rn vr8{mr1}, vr8, vr7
000490  12148302  vadd.f.mz.rn vr8{mr1}, r6, vr8
000494  8e137402  vmul.f.mz.rn vr7{mr1}, vr8, vr7
000498  0a944a04  vmul.f.mz.rn vr8{mr2}, r21, vr4
00049c  8e937402  vmul.f.mz.rn vr7{mr1}, vr9, vr7
0004a0  8a144906  vmul.f.mz.rn vr9{mr3}, r18, vr4
0004a4  9a937a02  vsub.f.mz.rn vr7{mr1}, r21, vr7
0004a8  16149402  vadd.f.mz.rn vr8{mr1}, vr8, vr9
0004ac  0a957a00  vmul.f.mz.rn vr10{mr0}, r21, vr7
0004b0  7e0000e0  vmmov mr0, zero
0004b4  17200000  xor zero, zero, zero
0004b8  46908702  vstore_mask16.mz vr8{mr1}, 0(r15)
0004bc  8a137900  vmul.f.mz.rn vr7{mr0}, r18, vr7
0004c0  00a00000  mfence { lm }
0004c4  1f070000  addli r14, zero, 0
0004c8  16127502  vadd.f.mz.rn vr4{mr1}, vr10, vr7
0004cc  0b92e710  add.s r4, r15, r14
0004d0  2b08803f  lui r16, 260096
0004d4  8b95e610  add.s r11, r13, r14
0004d8  1f470700  addli r14, r14, 4
0004dc  63060200  loadli.w r12,  0(r4)
0004e0  e3880500  loadli.w r17,  0(r11)
0004e4  0b688651  fmac.f.rn r16, r12, r24
0004e8  0be60858  neg.f r12, r17
0004ec  0f060600  exp.f.rn r12, r12
0004f0  0f880a19  div.f.rn r16, r21, r16
0004f4  6780c500  storeli.w r12, 0(r11)
0004f8  67000201  storeli.w r16, 0(r4)
0004fc  3b4f97ff  bneq r14, r25, -48
000500  00a00000  mfence { lm }
000504  eb550f01  load.d r[12:13], 16(r30)
000508  12924a02  vadd.f.mz.rn vr4{mr1}, r21, vr4
00050c  2b0200f0  lui r4, 983040
000510  92925a02  vadd.f.mz.rn vr5{mr1}, r21, vr5
000514  0e115102  vmul.f.mz.rn vr2{mr1}, vr2, vr5
000518  0e104002  vmul.f.mz.rn vr0{mr1}, vr0, vr4
00051c  12936a02  vadd.f.mz.rn vr6{mr1}, r21, vr6
000520  8e916102  vmul.f.mz.rn vr3{mr1}, vr3, vr6
000524  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
000528  c2940602  vload_mask16.mz vr9{mr1}, 0(r13)
00052c  eb508fcf  load.d r[2:3], -776(r30)
000530  8ba01510  add.ul r[2:3], r[12:13], r[2:3]
000534  9f050001  addli r11, zero, 128
000538  17924500  or r4, r11, r4
00053c  9f050ffb  addli r11, r30, -640
000540  0a947902  vmul.f.mz.rn vr8{mr1}, r19, vr7
000544  12148b02  vadd.f.mz.rn vr8{mr1}, r22, vr8
000548  0e147402  vmul.f.mz.rn vr8{mr1}, vr8, vr7
00054c  12148e02  vadd.f.mz.rn vr8{mr1}, r28, vr8
000550  0e147402  vmul.f.mz.rn vr8{mr1}, vr8, vr7
000554  12948202  vadd.f.mz.rn vr8{mr1}, r5, vr8
000558  0e147402  vmul.f.mz.rn vr8{mr1}, vr8, vr7
00055c  12148302  vadd.f.mz.rn vr8{mr1}, r6, vr8
000560  8e137402  vmul.f.mz.rn vr7{mr1}, vr8, vr7
000564  8e937402  vmul.f.mz.rn vr7{mr1}, vr9, vr7
000568  9a937a02  vsub.f.mz.rn vr7{mr1}, r21, vr7
00056c  0a947a04  vmul.f.mz.rn vr8{mr2}, r21, vr7
000570  8a137906  vmul.f.mz.rn vr7{mr3}, r18, vr7
000574  96137402  vadd.f.mz.rn vr7{mr1}, vr8, vr7
000578  12927a02  vadd.f.mz.rn vr4{mr1}, r21, vr7
00057c  8e904002  vmul.f.mz.rn vr1{mr1}, vr1, vr4
000580  06120100  vfloat2fp16_l.rn vr4, vr2
000584  06d20100  vfloat2fp16_h.rn vr4, vr3
000588  46184fa2  vstore_mask16.mz vr4{mr1}, 1408(r30)
00058c  06110000  vfloat2fp16_l.rn vr2, vr0
000590  06d10000  vfloat2fp16_h.rn vr2, vr1
000594  461c2fa2  vstore_mask16.mz vr2{mr1}, 1472(r30)
000598  00a00000  mfence { lm }
00059c  7fb2b000  s_lm2gm r4, r11, 0(r[2:3])
0005a0  e300dff9  loadli.w r1,  -792(r30)
0005a4  00a00000  mfence { lm }
0005a8  8b911110  add.s r3, r3, r1
0005ac  e340dff9  loadli.w r1,  -788(r30)
0005b0  3fbf11fc  blt.s r3, r1, -1076
0005b4  9f0e8ff9  addli sp, r30, -832
0005b8  9f8e8e06  addli sp, sp, 832
0005bc  00a00300  mfence { lm, sm, gm }
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
