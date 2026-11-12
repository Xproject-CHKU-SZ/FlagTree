; SHA-256 254299873258ad50e053648507d92a73d6f78bcaf6fb66c687b76ae2f9e077a1
; P800 Cluster · XTDK LLVM 19 · 774 / 774 words decoded
; bound names: triton_poi_fused_add_gelu_1
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
0000dc  9f8e0ef5  addli sp, sp, -1408
0000e0  1f8f8e0a  addli r30, sp, 1344
0000e4  63053f00  loadli.w r10,  24(r30)
0000e8  e3412f00  loadli.w r3,  20(r30)
0000ec  e3403f00  loadli.w r1,  28(r30)
0000f0  0b123520  mul.s r4, r10, r3
0000f4  80510002  load_param_i r3, 0
0000f8  0b171220  mul.s r14, r4, r1
0000fc  4b333704  ble.s r14, r3, 2252
000100  00d10002  load_param_i r2, 1
000104  80320002  core_id r5
000108  2b434c3f  lui r6, 259268
00010c  ab090040  lui r19, 262144
000110  2b0b803f  lui r22, 260096
000114  2b0c00c0  lui r24, 786432
000118  1f080001  addli r16, zero, 128
00011c  e74f2ff4  storeli.w r2, -1284(r30)
000120  1bb16200  slli r2, r5, 6
000124  ab22373d  lui r5, 250738
000128  1b19a322  ori r18, r6, 554
00012c  9b983271  ori r17, r5, 1811
000130  e70f2ff4  storeli.w r2, -1288(r30)
000134  8b9c1130  div.s r25, r3, r1
000138  6301fff5  loadli.w r2,  -1288(r30)
00013c  eb550f00  load.d r[12:13], 0(r30)
000140  ab0d00f0  lui r27, 983040
000144  2b0e00f0  lui r28, 983040
000148  971db801  or r27, r16, r27
00014c  171ec801  or r28, r16, r28
000150  8b9cac30  div.s r25, r25, r10
000154  9bbccc00  slli r25, r25, 12
000158  8b9c2c10  add.s r25, r25, r2
00015c  1f010008  addli r2, zero, 1024
000160  0b9d2c38  mod.s r26, r25, r2
000164  b3920c28  sext_int2long r[6:7], r25
000168  1f110000  addli r2, zero, 1
00016c  97b22202  sll.d r[6:7], r[6:7], r2
000170  b31c0d28  sext_int2long r[26:27], r26
000174  97b32c02  sll.d r[8:9], r[26:27], r2
000178  8bac5510  add.ul r[26:27], r[12:13], r[6:7]
00017c  6b528f00  load.d r[5:6], 8(r30)
000180  1f010ff6  addli r2, r30, -1280
000184  ffad2c00  l_gm2lm r27, r2, 0(r[26:27])
000188  1f010ff7  addli r2, r30, -1152
00018c  8b227210  add.ul r[6:7], r[5:6], r[8:9]
000190  1f820000  addli r4, r1, 0
000194  7fae2200  l_gm2lm r28, r2, 0(r[6:7])
000198  1f010ff6  addli r2, r30, -1280
00019c  00a00000  mfence { lm }
0001a0  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
0001a4  1f018ff6  addli r2, r30, -1216
0001a8  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0001ac  1f010ff7  addli r2, r30, -1152
0001b0  06b20000  vfp162float_l.rn vr4, vr1
0001b4  86f20000  vfp162float_h.rn vr5, vr1
0001b8  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
0001bc  1f018ff7  addli r2, r30, -1088
0001c0  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
0001c4  06f30100  vfp162float_h.rn vr6, vr3
0001c8  86b00100  vfp162float_l.rn vr1, vr3
0001cc  2b01003f  lui r2, 258048
0001d0  96916202  vadd.f.mz.rn vr3{mr1}, vr5, vr6
0001d4  06730100  vfp162float_h.rn vr6, vr2
0001d8  96101202  vadd.f.mz.rn vr1{mr1}, vr4, vr1
0001dc  86720000  vfp162float_h.rn vr5, vr0
0001e0  06320000  vfp162float_l.rn vr4, vr0
0001e4  06300100  vfp162float_l.rn vr0, vr2
0001e8  16110202  vadd.f.mz.rn vr2{mr1}, vr4, vr0
0001ec  16936202  vadd.f.mz.rn vr6{mr1}, vr5, vr6
0001f0  06900000  vfloat2fp16_l.rn vr0, vr1
0001f4  06d00100  vfloat2fp16_h.rn vr0, vr3
0001f8  86110100  vfloat2fp16_l.rn vr3, vr2
0001fc  86510300  vfloat2fp16_h.rn vr3, vr6
000200  86f30100  vfp162float_h.rn vr7, vr3
000204  8e947302  vmul.f.mz.rn vr9{mr1}, vr7, vr7
000208  06320000  vfp162float_l.rn vr4, vr0
00020c  0e154202  vmul.f.mz.rn vr10{mr1}, vr4, vr4
000210  86720000  vfp162float_h.rn vr5, vr0
000214  8e955202  vmul.f.mz.rn vr11{mr1}, vr5, vr5
000218  8a105102  vmul.f.mz.rn vr1{mr1}, r2, vr5
00021c  06b30100  vfp162float_l.rn vr6, vr3
000220  0e146302  vmul.f.mz.rn vr8{mr1}, vr6, vr6
000224  0a104102  vmul.f.mz.rn vr0{mr1}, r2, vr4
000228  0a116102  vmul.f.mz.rn vr2{mr1}, r2, vr6
00022c  8a117102  vmul.f.mz.rn vr3{mr1}, r2, vr7
000230  1f018ff9  addli r2, r30, -832
000234  8e949302  vmul.f.mz.rn vr9{mr1}, vr7, vr9
000238  0e15a202  vmul.f.mz.rn vr10{mr1}, vr4, vr10
00023c  8e95b202  vmul.f.mz.rn vr11{mr1}, vr5, vr11
000240  0e148302  vmul.f.mz.rn vr8{mr1}, vr6, vr8
000244  8a949802  vmul.f.mz.rn vr9{mr1}, r17, vr9
000248  0a95a802  vmul.f.mz.rn vr10{mr1}, r17, vr10
00024c  96939302  vadd.f.mz.rn vr7{mr1}, vr7, vr9
000250  8a95b802  vmul.f.mz.rn vr11{mr1}, r17, vr11
000254  9692b202  vadd.f.mz.rn vr5{mr1}, vr5, vr11
000258  0a948802  vmul.f.mz.rn vr8{mr1}, r17, vr8
00025c  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
000260  8a125902  vmul.f.mz.rn vr5{mr1}, r18, vr5
000264  1614a202  vadd.f.mz.rn vr8{mr1}, vr4, vr10
000268  0a126902  vmul.f.mz.rn vr4{mr1}, r18, vr6
00026c  8a944902  vmul.f.mz.rn vr9{mr1}, r19, vr4
000270  0a138902  vmul.f.mz.rn vr6{mr1}, r18, vr8
000274  0a127902  vmul.f.mz.rn vr4{mr1}, r18, vr7
000278  46109102  vstore_mask16.mz vr9{mr1}, 0(r2)
00027c  00a00000  mfence { lm }
000280  e3028ff9  loadli.w r5,  -832(r30)
000284  63438ff9  loadli.w r6,  -828(r30)
000288  e30daff9  loadli.w r27,  -816(r30)
00028c  e3039ff9  loadli.w r7,  -824(r30)
000290  63449ff9  loadli.w r8,  -820(r30)
000294  634eaff9  loadli.w r28,  -812(r30)
000298  630acff9  loadli.w r20,  -800(r30)
00029c  e305bff9  loadli.w r11,  -808(r30)
0002a0  e346bff9  loadli.w r13,  -804(r30)
0002a4  e340dff9  loadli.w r1,  -788(r30)
0002a8  6301eff9  loadli.w r2,  -784(r30)
0002ac  e344fff9  loadli.w r9,  -772(r30)
0002b0  e34acff9  loadli.w r21,  -796(r30)
0002b4  e30bdff9  loadli.w r23,  -792(r30)
0002b8  6346eff9  loadli.w r12,  -780(r30)
0002bc  e307fff9  loadli.w r15,  -776(r30)
0002c0  8f820200  exp.f.rn r5, r5
0002c4  0f030300  exp.f.rn r6, r6
0002c8  8f830300  exp.f.rn r7, r7
0002cc  0f040400  exp.f.rn r8, r8
0002d0  8f850500  exp.f.rn r11, r11
0002d4  8f860600  exp.f.rn r13, r13
0002d8  8f800000  exp.f.rn r1, r1
0002dc  0f010100  exp.f.rn r2, r2
0002e0  8f840400  exp.f.rn r9, r9
0002e4  67085ff8  storeli.w r5, -896(r30)
0002e8  8f820d00  exp.f.rn r5, r27
0002ec  67486ff8  storeli.w r6, -892(r30)
0002f0  0f030e00  exp.f.rn r6, r28
0002f4  e7087ff8  storeli.w r7, -888(r30)
0002f8  e7488ff8  storeli.w r8, -884(r30)
0002fc  8f830b00  exp.f.rn r7, r23
000300  0f840700  exp.f.rn r8, r15
000304  e74a1ff8  storeli.w r1, -852(r30)
000308  e709bff8  storeli.w r11, -872(r30)
00030c  e749dff8  storeli.w r13, -868(r30)
000310  670b2ff8  storeli.w r2, -848(r30)
000314  e74b9ff8  storeli.w r9, -836(r30)
000318  9f000ff9  addli r1, r30, -896
00031c  67095ff8  storeli.w r5, -880(r30)
000320  8f020a00  exp.f.rn r5, r20
000324  67496ff8  storeli.w r6, -876(r30)
000328  0f830a00  exp.f.rn r6, r21
00032c  e70a7ff8  storeli.w r7, -856(r30)
000330  e70b8ff8  storeli.w r8, -840(r30)
000334  670a5ff8  storeli.w r5, -864(r30)
000338  8f020600  exp.f.rn r5, r12
00033c  674a6ff8  storeli.w r6, -860(r30)
000340  674b5ff8  storeli.w r5, -844(r30)
000344  00a00000  mfence { lm }
000348  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
00034c  9f008ff8  addli r1, r30, -960
000350  92137b02  vadd.f.mz.rn vr7{mr1}, r22, vr7
000354  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
000358  8a934902  vmul.f.mz.rn vr7{mr1}, r19, vr4
00035c  00a00000  mfence { lm }
000360  e3008ff8  loadli.w r1,  -960(r30)
000364  63418ff8  loadli.w r2,  -956(r30)
000368  e303aff8  loadli.w r7,  -944(r30)
00036c  6344aff8  loadli.w r8,  -940(r30)
000370  e3029ff8  loadli.w r5,  -952(r30)
000374  63439ff8  loadli.w r6,  -948(r30)
000378  e304bff8  loadli.w r9,  -936(r30)
00037c  e345bff8  loadli.w r11,  -932(r30)
000380  6306cff8  loadli.w r12,  -928(r30)
000384  e346cff8  loadli.w r13,  -924(r30)
000388  e307dff8  loadli.w r15,  -920(r30)
00038c  634adff8  loadli.w r20,  -916(r30)
000390  e30aeff8  loadli.w r21,  -912(r30)
000394  e34beff8  loadli.w r23,  -908(r30)
000398  e30dfff8  loadli.w r27,  -904(r30)
00039c  634efff8  loadli.w r28,  -900(r30)
0003a0  8f001c18  div.f.rn r1, r24, r1
0003a4  0f012c18  div.f.rn r2, r24, r2
0003a8  8f025c18  div.f.rn r5, r24, r5
0003ac  0f036c18  div.f.rn r6, r24, r6
0003b0  67001ff8  storeli.w r1, -1024(r30)
0003b4  8f007c18  div.f.rn r1, r24, r7
0003b8  67402ff8  storeli.w r2, -1020(r30)
0003bc  0f018c18  div.f.rn r2, r24, r8
0003c0  8f039c18  div.f.rn r7, r24, r9
0003c4  0f04bc18  div.f.rn r8, r24, r11
0003c8  e7005ff8  storeli.w r5, -1016(r30)
0003cc  e7406ff8  storeli.w r6, -1012(r30)
0003d0  8f02fc18  div.f.rn r5, r24, r15
0003d4  0f034c19  div.f.rn r6, r24, r20
0003d8  67011ff8  storeli.w r1, -1008(r30)
0003dc  8f00cc18  div.f.rn r1, r24, r12
0003e0  67412ff8  storeli.w r2, -1004(r30)
0003e4  0f01dc18  div.f.rn r2, r24, r13
0003e8  e7017ff8  storeli.w r7, -1000(r30)
0003ec  e7418ff8  storeli.w r8, -996(r30)
0003f0  8f037c19  div.f.rn r7, r24, r23
0003f4  0f04bc19  div.f.rn r8, r24, r27
0003f8  e7025ff8  storeli.w r5, -984(r30)
0003fc  e7426ff8  storeli.w r6, -980(r30)
000400  67021ff8  storeli.w r1, -992(r30)
000404  8f005c19  div.f.rn r1, r24, r21
000408  67422ff8  storeli.w r2, -988(r30)
00040c  0f01cc19  div.f.rn r2, r24, r28
000410  67437ff8  storeli.w r7, -972(r30)
000414  e7038ff8  storeli.w r8, -968(r30)
000418  67031ff8  storeli.w r1, -976(r30)
00041c  e7432ff8  storeli.w r2, -964(r30)
000420  9f000ff8  addli r1, r30, -1024
000424  00a00000  mfence { lm }
000428  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
00042c  9f008ffb  addli r1, r30, -576
000430  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
000434  00a00000  mfence { lm }
000438  e3008ffb  loadli.w r1,  -576(r30)
00043c  63418ffb  loadli.w r2,  -572(r30)
000440  e303affb  loadli.w r7,  -560(r30)
000444  e3029ffb  loadli.w r5,  -568(r30)
000448  63439ffb  loadli.w r6,  -564(r30)
00044c  6344affb  loadli.w r8,  -556(r30)
000450  e304bffb  loadli.w r9,  -552(r30)
000454  e345bffb  loadli.w r11,  -548(r30)
000458  6306cffb  loadli.w r12,  -544(r30)
00045c  e346cffb  loadli.w r13,  -540(r30)
000460  e307dffb  loadli.w r15,  -536(r30)
000464  634adffb  loadli.w r20,  -532(r30)
000468  e30aeffb  loadli.w r21,  -528(r30)
00046c  e34beffb  loadli.w r23,  -524(r30)
000470  e30dfffb  loadli.w r27,  -520(r30)
000474  634efffb  loadli.w r28,  -516(r30)
000478  12124b02  vadd.f.mz.rn vr4{mr1}, r22, vr4
00047c  8f800000  exp.f.rn r1, r1
000480  0f010100  exp.f.rn r2, r2
000484  8f820200  exp.f.rn r5, r5
000488  0f030300  exp.f.rn r6, r6
00048c  67081ffa  storeli.w r1, -640(r30)
000490  8f800300  exp.f.rn r1, r7
000494  8f830400  exp.f.rn r7, r9
000498  67482ffa  storeli.w r2, -636(r30)
00049c  0f010400  exp.f.rn r2, r8
0004a0  0f840500  exp.f.rn r8, r11
0004a4  e7085ffa  storeli.w r5, -632(r30)
0004a8  e7486ffa  storeli.w r6, -628(r30)
0004ac  8f820700  exp.f.rn r5, r15
0004b0  0f030a00  exp.f.rn r6, r20
0004b4  8f040e00  exp.f.rn r9, r28
0004b8  67091ffa  storeli.w r1, -624(r30)
0004bc  8f000600  exp.f.rn r1, r12
0004c0  67492ffa  storeli.w r2, -620(r30)
0004c4  e7097ffa  storeli.w r7, -616(r30)
0004c8  e7498ffa  storeli.w r8, -612(r30)
0004cc  0f810600  exp.f.rn r2, r13
0004d0  8f830b00  exp.f.rn r7, r23
0004d4  0f840d00  exp.f.rn r8, r27
0004d8  e70a5ffa  storeli.w r5, -600(r30)
0004dc  e74a6ffa  storeli.w r6, -596(r30)
0004e0  e74b9ffa  storeli.w r9, -580(r30)
0004e4  670a1ffa  storeli.w r1, -608(r30)
0004e8  8f800a00  exp.f.rn r1, r21
0004ec  674a2ffa  storeli.w r2, -604(r30)
0004f0  674b7ffa  storeli.w r7, -588(r30)
0004f4  e70b8ffa  storeli.w r8, -584(r30)
0004f8  670b1ffa  storeli.w r1, -592(r30)
0004fc  9f000ffb  addli r1, r30, -640
000500  00a00000  mfence { lm }
000504  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
000508  9f008ffa  addli r1, r30, -704
00050c  92137b02  vadd.f.mz.rn vr7{mr1}, r22, vr7
000510  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
000514  8a936902  vmul.f.mz.rn vr7{mr1}, r19, vr6
000518  00a00000  mfence { lm }
00051c  e3008ffa  loadli.w r1,  -704(r30)
000520  63418ffa  loadli.w r2,  -700(r30)
000524  e303affa  loadli.w r7,  -688(r30)
000528  6344affa  loadli.w r8,  -684(r30)
00052c  e3029ffa  loadli.w r5,  -696(r30)
000530  63439ffa  loadli.w r6,  -692(r30)
000534  e304bffa  loadli.w r9,  -680(r30)
000538  e345bffa  loadli.w r11,  -676(r30)
00053c  6306cffa  loadli.w r12,  -672(r30)
000540  e346cffa  loadli.w r13,  -668(r30)
000544  e307dffa  loadli.w r15,  -664(r30)
000548  634adffa  loadli.w r20,  -660(r30)
00054c  e30aeffa  loadli.w r21,  -656(r30)
000550  e34beffa  loadli.w r23,  -652(r30)
000554  e30dfffa  loadli.w r27,  -648(r30)
000558  634efffa  loadli.w r28,  -644(r30)
00055c  8f001c18  div.f.rn r1, r24, r1
000560  0f012c18  div.f.rn r2, r24, r2
000564  8f025c18  div.f.rn r5, r24, r5
000568  0f036c18  div.f.rn r6, r24, r6
00056c  67001ffa  storeli.w r1, -768(r30)
000570  8f007c18  div.f.rn r1, r24, r7
000574  67402ffa  storeli.w r2, -764(r30)
000578  0f018c18  div.f.rn r2, r24, r8
00057c  8f039c18  div.f.rn r7, r24, r9
000580  0f04bc18  div.f.rn r8, r24, r11
000584  e7005ffa  storeli.w r5, -760(r30)
000588  e7406ffa  storeli.w r6, -756(r30)
00058c  8f02fc18  div.f.rn r5, r24, r15
000590  0f034c19  div.f.rn r6, r24, r20
000594  67011ffa  storeli.w r1, -752(r30)
000598  8f00cc18  div.f.rn r1, r24, r12
00059c  67412ffa  storeli.w r2, -748(r30)
0005a0  0f01dc18  div.f.rn r2, r24, r13
0005a4  e7017ffa  storeli.w r7, -744(r30)
0005a8  e7418ffa  storeli.w r8, -740(r30)
0005ac  8f037c19  div.f.rn r7, r24, r23
0005b0  0f04bc19  div.f.rn r8, r24, r27
0005b4  e7025ffa  storeli.w r5, -728(r30)
0005b8  e7426ffa  storeli.w r6, -724(r30)
0005bc  67021ffa  storeli.w r1, -736(r30)
0005c0  8f005c19  div.f.rn r1, r24, r21
0005c4  67422ffa  storeli.w r2, -732(r30)
0005c8  0f01cc19  div.f.rn r2, r24, r28
0005cc  67437ffa  storeli.w r7, -716(r30)
0005d0  e7038ffa  storeli.w r8, -712(r30)
0005d4  67031ffa  storeli.w r1, -720(r30)
0005d8  e7432ffa  storeli.w r2, -708(r30)
0005dc  9f000ffa  addli r1, r30, -768
0005e0  00a00000  mfence { lm }
0005e4  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
0005e8  9f008ffd  addli r1, r30, -320
0005ec  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
0005f0  00a00000  mfence { lm }
0005f4  e3008ffd  loadli.w r1,  -320(r30)
0005f8  63418ffd  loadli.w r2,  -316(r30)
0005fc  e303affd  loadli.w r7,  -304(r30)
000600  e3029ffd  loadli.w r5,  -312(r30)
000604  63439ffd  loadli.w r6,  -308(r30)
000608  6344affd  loadli.w r8,  -300(r30)
00060c  e304bffd  loadli.w r9,  -296(r30)
000610  e345bffd  loadli.w r11,  -292(r30)
000614  6306cffd  loadli.w r12,  -288(r30)
000618  e346cffd  loadli.w r13,  -284(r30)
00061c  e307dffd  loadli.w r15,  -280(r30)
000620  634adffd  loadli.w r20,  -276(r30)
000624  e30aeffd  loadli.w r21,  -272(r30)
000628  e34beffd  loadli.w r23,  -268(r30)
00062c  e30dfffd  loadli.w r27,  -264(r30)
000630  634efffd  loadli.w r28,  -260(r30)
000634  12136b02  vadd.f.mz.rn vr6{mr1}, r22, vr6
000638  8f800000  exp.f.rn r1, r1
00063c  0f010100  exp.f.rn r2, r2
000640  8f820200  exp.f.rn r5, r5
000644  0f030300  exp.f.rn r6, r6
000648  67081ffc  storeli.w r1, -384(r30)
00064c  8f800300  exp.f.rn r1, r7
000650  8f830400  exp.f.rn r7, r9
000654  67482ffc  storeli.w r2, -380(r30)
000658  0f010400  exp.f.rn r2, r8
00065c  0f840500  exp.f.rn r8, r11
000660  e7085ffc  storeli.w r5, -376(r30)
000664  e7486ffc  storeli.w r6, -372(r30)
000668  8f820700  exp.f.rn r5, r15
00066c  0f030a00  exp.f.rn r6, r20
000670  8f040e00  exp.f.rn r9, r28
000674  67091ffc  storeli.w r1, -368(r30)
000678  8f000600  exp.f.rn r1, r12
00067c  67492ffc  storeli.w r2, -364(r30)
000680  e7097ffc  storeli.w r7, -360(r30)
000684  e7498ffc  storeli.w r8, -356(r30)
000688  0f810600  exp.f.rn r2, r13
00068c  8f830b00  exp.f.rn r7, r23
000690  0f840d00  exp.f.rn r8, r27
000694  e70a5ffc  storeli.w r5, -344(r30)
000698  e74a6ffc  storeli.w r6, -340(r30)
00069c  e74b9ffc  storeli.w r9, -324(r30)
0006a0  670a1ffc  storeli.w r1, -352(r30)
0006a4  8f800a00  exp.f.rn r1, r21
0006a8  674a2ffc  storeli.w r2, -348(r30)
0006ac  674b7ffc  storeli.w r7, -332(r30)
0006b0  e70b8ffc  storeli.w r8, -328(r30)
0006b4  670b1ffc  storeli.w r1, -336(r30)
0006b8  9f000ffd  addli r1, r30, -384
0006bc  00a00000  mfence { lm }
0006c0  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0006c4  9f008ffc  addli r1, r30, -448
0006c8  92137b02  vadd.f.mz.rn vr7{mr1}, r22, vr7
0006cc  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
0006d0  8a935902  vmul.f.mz.rn vr7{mr1}, r19, vr5
0006d4  00a00000  mfence { lm }
0006d8  e3008ffc  loadli.w r1,  -448(r30)
0006dc  63418ffc  loadli.w r2,  -444(r30)
0006e0  e303affc  loadli.w r7,  -432(r30)
0006e4  6344affc  loadli.w r8,  -428(r30)
0006e8  e3029ffc  loadli.w r5,  -440(r30)
0006ec  63439ffc  loadli.w r6,  -436(r30)
0006f0  e304bffc  loadli.w r9,  -424(r30)
0006f4  e345bffc  loadli.w r11,  -420(r30)
0006f8  6306cffc  loadli.w r12,  -416(r30)
0006fc  e346cffc  loadli.w r13,  -412(r30)
000700  e307dffc  loadli.w r15,  -408(r30)
000704  634adffc  loadli.w r20,  -404(r30)
000708  e30aeffc  loadli.w r21,  -400(r30)
00070c  e34beffc  loadli.w r23,  -396(r30)
000710  e30dfffc  loadli.w r27,  -392(r30)
000714  634efffc  loadli.w r28,  -388(r30)
000718  8f001c18  div.f.rn r1, r24, r1
00071c  0f012c18  div.f.rn r2, r24, r2
000720  8f025c18  div.f.rn r5, r24, r5
000724  0f036c18  div.f.rn r6, r24, r6
000728  67001ffc  storeli.w r1, -512(r30)
00072c  8f007c18  div.f.rn r1, r24, r7
000730  67402ffc  storeli.w r2, -508(r30)
000734  0f018c18  div.f.rn r2, r24, r8
000738  8f039c18  div.f.rn r7, r24, r9
00073c  0f04bc18  div.f.rn r8, r24, r11
000740  e7005ffc  storeli.w r5, -504(r30)
000744  e7406ffc  storeli.w r6, -500(r30)
000748  8f02fc18  div.f.rn r5, r24, r15
00074c  0f034c19  div.f.rn r6, r24, r20
000750  67011ffc  storeli.w r1, -496(r30)
000754  8f00cc18  div.f.rn r1, r24, r12
000758  67412ffc  storeli.w r2, -492(r30)
00075c  0f01dc18  div.f.rn r2, r24, r13
000760  e7017ffc  storeli.w r7, -488(r30)
000764  e7418ffc  storeli.w r8, -484(r30)
000768  8f037c19  div.f.rn r7, r24, r23
00076c  0f04bc19  div.f.rn r8, r24, r27
000770  e7025ffc  storeli.w r5, -472(r30)
000774  e7426ffc  storeli.w r6, -468(r30)
000778  67021ffc  storeli.w r1, -480(r30)
00077c  8f005c19  div.f.rn r1, r24, r21
000780  67422ffc  storeli.w r2, -476(r30)
000784  0f01cc19  div.f.rn r2, r24, r28
000788  67437ffc  storeli.w r7, -460(r30)
00078c  e7038ffc  storeli.w r8, -456(r30)
000790  67031ffc  storeli.w r1, -464(r30)
000794  e7432ffc  storeli.w r2, -452(r30)
000798  9f000ffc  addli r1, r30, -512
00079c  00a00000  mfence { lm }
0007a0  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
0007a4  9f008fff  addli r1, r30, -64
0007a8  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
0007ac  00a00000  mfence { lm }
0007b0  e3008fff  loadli.w r1,  -64(r30)
0007b4  63418fff  loadli.w r2,  -60(r30)
0007b8  e303afff  loadli.w r7,  -48(r30)
0007bc  e3029fff  loadli.w r5,  -56(r30)
0007c0  63439fff  loadli.w r6,  -52(r30)
0007c4  6344afff  loadli.w r8,  -44(r30)
0007c8  e304bfff  loadli.w r9,  -40(r30)
0007cc  e345bfff  loadli.w r11,  -36(r30)
0007d0  6306cfff  loadli.w r12,  -32(r30)
0007d4  e346cfff  loadli.w r13,  -28(r30)
0007d8  e307dfff  loadli.w r15,  -24(r30)
0007dc  634adfff  loadli.w r20,  -20(r30)
0007e0  e30aefff  loadli.w r21,  -16(r30)
0007e4  e34befff  loadli.w r23,  -12(r30)
0007e8  e30dffff  loadli.w r27,  -8(r30)
0007ec  634effff  loadli.w r28,  -4(r30)
0007f0  92125b02  vadd.f.mz.rn vr5{mr1}, r22, vr5
0007f4  8f800000  exp.f.rn r1, r1
0007f8  0f010100  exp.f.rn r2, r2
0007fc  8f820200  exp.f.rn r5, r5
000800  0f030300  exp.f.rn r6, r6
000804  67081ffe  storeli.w r1, -128(r30)
000808  8f800300  exp.f.rn r1, r7
00080c  8f830400  exp.f.rn r7, r9
000810  67482ffe  storeli.w r2, -124(r30)
000814  0f010400  exp.f.rn r2, r8
000818  0f840500  exp.f.rn r8, r11
00081c  e7085ffe  storeli.w r5, -120(r30)
000820  e7486ffe  storeli.w r6, -116(r30)
000824  8f820700  exp.f.rn r5, r15
000828  0f030a00  exp.f.rn r6, r20
00082c  8f040e00  exp.f.rn r9, r28
000830  67091ffe  storeli.w r1, -112(r30)
000834  8f000600  exp.f.rn r1, r12
000838  67492ffe  storeli.w r2, -108(r30)
00083c  e7097ffe  storeli.w r7, -104(r30)
000840  e7498ffe  storeli.w r8, -100(r30)
000844  0f810600  exp.f.rn r2, r13
000848  8f830b00  exp.f.rn r7, r23
00084c  0f840d00  exp.f.rn r8, r27
000850  e70a5ffe  storeli.w r5, -88(r30)
000854  e74a6ffe  storeli.w r6, -84(r30)
000858  e74b9ffe  storeli.w r9, -68(r30)
00085c  670a1ffe  storeli.w r1, -96(r30)
000860  8f800a00  exp.f.rn r1, r21
000864  674a2ffe  storeli.w r2, -92(r30)
000868  674b7ffe  storeli.w r7, -76(r30)
00086c  e70b8ffe  storeli.w r8, -72(r30)
000870  670b1ffe  storeli.w r1, -80(r30)
000874  9f000fff  addli r1, r30, -128
000878  00a00000  mfence { lm }
00087c  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
000880  9f008ffe  addli r1, r30, -192
000884  92137b02  vadd.f.mz.rn vr7{mr1}, r22, vr7
000888  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
00088c  00a00000  mfence { lm }
000890  e3008ffe  loadli.w r1,  -192(r30)
000894  63418ffe  loadli.w r2,  -188(r30)
000898  e3029ffe  loadli.w r5,  -184(r30)
00089c  63439ffe  loadli.w r6,  -180(r30)
0008a0  e303affe  loadli.w r7,  -176(r30)
0008a4  6344affe  loadli.w r8,  -172(r30)
0008a8  e304bffe  loadli.w r9,  -168(r30)
0008ac  e345bffe  loadli.w r11,  -164(r30)
0008b0  6306cffe  loadli.w r12,  -160(r30)
0008b4  e346cffe  loadli.w r13,  -156(r30)
0008b8  e307dffe  loadli.w r15,  -152(r30)
0008bc  634adffe  loadli.w r20,  -148(r30)
0008c0  e30aeffe  loadli.w r21,  -144(r30)
0008c4  e34beffe  loadli.w r23,  -140(r30)
0008c8  e30dfffe  loadli.w r27,  -136(r30)
0008cc  634efffe  loadli.w r28,  -132(r30)
0008d0  8f001c18  div.f.rn r1, r24, r1
0008d4  0f012c18  div.f.rn r2, r24, r2
0008d8  67001ffe  storeli.w r1, -256(r30)
0008dc  8f005c18  div.f.rn r1, r24, r5
0008e0  8f027c18  div.f.rn r5, r24, r7
0008e4  8f039c18  div.f.rn r7, r24, r9
0008e8  67402ffe  storeli.w r2, -252(r30)
0008ec  0f016c18  div.f.rn r2, r24, r6
0008f0  0f038c18  div.f.rn r6, r24, r8
0008f4  0f04bc18  div.f.rn r8, r24, r11
0008f8  8f04cc18  div.f.rn r9, r24, r12
0008fc  e7001ffe  storeli.w r1, -248(r30)
000900  e7402ffe  storeli.w r2, -244(r30)
000904  67015ffe  storeli.w r5, -240(r30)
000908  67416ffe  storeli.w r6, -236(r30)
00090c  e7017ffe  storeli.w r7, -232(r30)
000910  e7418ffe  storeli.w r8, -228(r30)
000914  67029ffe  storeli.w r9, -224(r30)
000918  8f00dc18  div.f.rn r1, r24, r13
00091c  0f01fc18  div.f.rn r2, r24, r15
000920  8f024c19  div.f.rn r5, r24, r20
000924  0f035c19  div.f.rn r6, r24, r21
000928  8f037c19  div.f.rn r7, r24, r23
00092c  0f04bc19  div.f.rn r8, r24, r27
000930  8f04cc19  div.f.rn r9, r24, r28
000934  67421ffe  storeli.w r1, -220(r30)
000938  e7022ffe  storeli.w r2, -216(r30)
00093c  e7425ffe  storeli.w r5, -212(r30)
000940  67036ffe  storeli.w r6, -208(r30)
000944  67437ffe  storeli.w r7, -204(r30)
000948  e7038ffe  storeli.w r8, -200(r30)
00094c  e7439ffe  storeli.w r9, -196(r30)
000950  9f000ffe  addli r1, r30, -256
000954  1f018ff7  addli r2, r30, -1088
000958  00a00000  mfence { lm }
00095c  12124b02  vadd.f.mz.rn vr4{mr1}, r22, vr4
000960  12136b02  vadd.f.mz.rn vr6{mr1}, r22, vr6
000964  0e114102  vmul.f.mz.rn vr2{mr1}, vr2, vr4
000968  8e916102  vmul.f.mz.rn vr3{mr1}, vr3, vr6
00096c  92125b02  vadd.f.mz.rn vr5{mr1}, r22, vr5
000970  0e105002  vmul.f.mz.rn vr0{mr1}, vr0, vr5
000974  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
000978  9f000ff7  addli r1, r30, -1152
00097c  06120100  vfloat2fp16_l.rn vr4, vr2
000980  06d20100  vfloat2fp16_h.rn vr4, vr3
000984  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
000988  ab0000f0  lui r1, 983040
00098c  97101800  or r1, r16, r1
000990  92137b02  vadd.f.mz.rn vr7{mr1}, r22, vr7
000994  92137b02  vadd.f.mz.rn vr7{mr1}, r22, vr7
000998  8e907002  vmul.f.mz.rn vr1{mr1}, vr1, vr7
00099c  06110000  vfloat2fp16_l.rn vr2, vr0
0009a0  06d10000  vfloat2fp16_h.rn vr2, vr1
0009a4  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
0009a8  1f010ff7  addli r2, r30, -1152
0009ac  00a00000  mfence { lm }
0009b0  ffb02c00  s_lm2gm r1, r2, 0(r[26:27])
0009b4  6341fff5  loadli.w r2,  -1284(r30)
0009b8  9f000200  addli r1, r4, 0
0009bc  00a00000  mfence { lm }
0009c0  8b912110  add.s r3, r3, r2
0009c4  bfcde1fa  blt.s r3, r14, -2192
0009c8  9f0e8ff5  addli sp, r30, -1344
0009cc  9f8e8e0a  addli sp, sp, 1344
0009d0  00a00300  mfence { lm, sm, gm }
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
