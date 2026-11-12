; SHA-256 e56f087add9f45f1a3dc39e3463eb37d2c4f118317e903966d7665293ed2fff4
; P800 Cluster · XTDK LLVM 19 · 768 / 768 words decoded
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
0000dc  9f8e0ef3  addli sp, sp, -1664
0000e0  1f8f8e0c  addli r30, sp, 1600
0000e4  63054f00  loadli.w r10,  32(r30)
0000e8  e3413f00  loadli.w r3,  28(r30)
0000ec  e3404f00  loadli.w r1,  36(r30)
0000f0  0b123520  mul.s r4, r10, r3
0000f4  80510002  load_param_i r3, 0
0000f8  0b171220  mul.s r14, r4, r1
0000fc  cb523704  ble.s r14, r3, 2228
000100  00d10002  load_param_i r2, 1
000104  80320002  core_id r5
000108  2b434c3f  lui r6, 259268
00010c  ab090040  lui r19, 262144
000110  2b0b803f  lui r22, 260096
000114  2b0c00c0  lui r24, 786432
000118  1f080002  addli r16, zero, 256
00011c  e74f2ff2  storeli.w r2, -1540(r30)
000120  1bb16200  slli r2, r5, 6
000124  ab22373d  lui r5, 250738
000128  1b19a322  ori r18, r6, 554
00012c  9b983271  ori r17, r5, 1811
000130  e70f2ff2  storeli.w r2, -1544(r30)
000134  8b9d1130  div.s r27, r3, r1
000138  6301fff3  loadli.w r2,  -1544(r30)
00013c  eb550f00  load.d r[12:13], 0(r30)
000140  ab0200f0  lui r5, 983040
000144  2b0300f0  lui r6, 983040
000148  1f820000  addli r4, r1, 0
00014c  97125800  or r5, r16, r5
000150  17136800  or r6, r16, r6
000154  8b9dad30  div.s r27, r27, r10
000158  9bbdcd00  slli r27, r27, 12
00015c  8b9d2d10  add.s r27, r27, r2
000160  1f010010  addli r2, zero, 2048
000164  0b9e2d38  mod.s r28, r27, r2
000168  b3930d28  sext_int2long r[8:9], r27
00016c  1f210000  addli r2, zero, 2
000170  331a0e28  sext_int2long r[21:22], r28
000174  97bd2302  sll.d r[28:29], r[8:9], r2
000178  97332a02  sll.d r[8:9], r[21:22], r2
00017c  0baab511  add.ul r[21:22], r[12:13], r[28:29]
000180  eb558f00  load.d r[12:13], 8(r30)
000184  1f010ff4  addli r2, r30, -1536
000188  ff222a00  l_gm2lm r5, r2, 0(r[21:22])
00018c  1f010ff6  addli r2, r30, -1280
000190  8ba37510  add.ul r[8:9], r[12:13], r[8:9]
000194  7fa32300  l_gm2lm r6, r2, 0(r[8:9])
000198  1f010ff4  addli r2, r30, -1536
00019c  00a00000  mfence { lm }
0001a0  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
0001a4  1f018ff4  addli r2, r30, -1472
0001a8  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0001ac  1f010ff5  addli r2, r30, -1408
0001b0  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
0001b4  1f018ff5  addli r2, r30, -1344
0001b8  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
0001bc  1f010ff6  addli r2, r30, -1280
0001c0  c2130102  vload_mask16.mz vr7{mr1}, 0(r2)
0001c4  1f018ff6  addli r2, r30, -1216
0001c8  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
0001cc  1f010ff7  addli r2, r30, -1152
0001d0  c2120102  vload_mask16.mz vr5{mr1}, 0(r2)
0001d4  1f018ff7  addli r2, r30, -1088
0001d8  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
0001dc  96137002  vadd.f.mz.rn vr7{mr1}, vr0, vr7
0001e0  2b01003f  lui r2, 258048
0001e4  16924002  vadd.f.mz.rn vr4{mr1}, vr1, vr4
0001e8  0a104102  vmul.f.mz.rn vr0{mr1}, r2, vr4
0001ec  8e957302  vmul.f.mz.rn vr11{mr1}, vr7, vr7
0001f0  96125102  vadd.f.mz.rn vr5{mr1}, vr2, vr5
0001f4  8a105102  vmul.f.mz.rn vr1{mr1}, r2, vr5
0001f8  16936102  vadd.f.mz.rn vr6{mr1}, vr3, vr6
0001fc  0e144202  vmul.f.mz.rn vr8{mr1}, vr4, vr4
000200  8a117102  vmul.f.mz.rn vr3{mr1}, r2, vr7
000204  0a116102  vmul.f.mz.rn vr2{mr1}, r2, vr6
000208  1f018ff9  addli r2, r30, -832
00020c  8e95b302  vmul.f.mz.rn vr11{mr1}, vr7, vr11
000210  8e945202  vmul.f.mz.rn vr9{mr1}, vr5, vr5
000214  8a95b802  vmul.f.mz.rn vr11{mr1}, r17, vr11
000218  9693b302  vadd.f.mz.rn vr7{mr1}, vr7, vr11
00021c  0e156302  vmul.f.mz.rn vr10{mr1}, vr6, vr6
000220  0e148202  vmul.f.mz.rn vr8{mr1}, vr4, vr8
000224  0a948802  vmul.f.mz.rn vr8{mr1}, r17, vr8
000228  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
00022c  8e949202  vmul.f.mz.rn vr9{mr1}, vr5, vr9
000230  0a124902  vmul.f.mz.rn vr4{mr1}, r18, vr4
000234  8a949802  vmul.f.mz.rn vr9{mr1}, r17, vr9
000238  96929202  vadd.f.mz.rn vr5{mr1}, vr5, vr9
00023c  0e15a302  vmul.f.mz.rn vr10{mr1}, vr6, vr10
000240  0a95a802  vmul.f.mz.rn vr10{mr1}, r17, vr10
000244  1614a302  vadd.f.mz.rn vr8{mr1}, vr6, vr10
000248  0a137902  vmul.f.mz.rn vr6{mr1}, r18, vr7
00024c  8a936902  vmul.f.mz.rn vr7{mr1}, r19, vr6
000250  0a135902  vmul.f.mz.rn vr6{mr1}, r18, vr5
000254  8a128902  vmul.f.mz.rn vr5{mr1}, r18, vr8
000258  46107102  vstore_mask16.mz vr7{mr1}, 0(r2)
00025c  00a00000  mfence { lm }
000260  e3028ff9  loadli.w r5,  -832(r30)
000264  63438ff9  loadli.w r6,  -828(r30)
000268  630aaff9  loadli.w r20,  -816(r30)
00026c  e3039ff9  loadli.w r7,  -824(r30)
000270  63449ff9  loadli.w r8,  -820(r30)
000274  e34aaff9  loadli.w r21,  -812(r30)
000278  e30ccff9  loadli.w r25,  -800(r30)
00027c  e305bff9  loadli.w r11,  -808(r30)
000280  e346bff9  loadli.w r13,  -804(r30)
000284  e340dff9  loadli.w r1,  -788(r30)
000288  6301eff9  loadli.w r2,  -784(r30)
00028c  e344fff9  loadli.w r9,  -772(r30)
000290  634dcff9  loadli.w r26,  -796(r30)
000294  e30bdff9  loadli.w r23,  -792(r30)
000298  6346eff9  loadli.w r12,  -780(r30)
00029c  e307fff9  loadli.w r15,  -776(r30)
0002a0  8f820200  exp.f.rn r5, r5
0002a4  0f030300  exp.f.rn r6, r6
0002a8  8f830300  exp.f.rn r7, r7
0002ac  0f040400  exp.f.rn r8, r8
0002b0  8f850500  exp.f.rn r11, r11
0002b4  8f860600  exp.f.rn r13, r13
0002b8  8f800000  exp.f.rn r1, r1
0002bc  0f010100  exp.f.rn r2, r2
0002c0  8f840400  exp.f.rn r9, r9
0002c4  67085ff8  storeli.w r5, -896(r30)
0002c8  8f020a00  exp.f.rn r5, r20
0002cc  67486ff8  storeli.w r6, -892(r30)
0002d0  0f830a00  exp.f.rn r6, r21
0002d4  e7087ff8  storeli.w r7, -888(r30)
0002d8  e7488ff8  storeli.w r8, -884(r30)
0002dc  8f830b00  exp.f.rn r7, r23
0002e0  0f840700  exp.f.rn r8, r15
0002e4  e74a1ff8  storeli.w r1, -852(r30)
0002e8  e709bff8  storeli.w r11, -872(r30)
0002ec  e749dff8  storeli.w r13, -868(r30)
0002f0  670b2ff8  storeli.w r2, -848(r30)
0002f4  e74b9ff8  storeli.w r9, -836(r30)
0002f8  9f000ff9  addli r1, r30, -896
0002fc  67095ff8  storeli.w r5, -880(r30)
000300  8f820c00  exp.f.rn r5, r25
000304  67496ff8  storeli.w r6, -876(r30)
000308  0f030d00  exp.f.rn r6, r26
00030c  e70a7ff8  storeli.w r7, -856(r30)
000310  e70b8ff8  storeli.w r8, -840(r30)
000314  670a5ff8  storeli.w r5, -864(r30)
000318  8f020600  exp.f.rn r5, r12
00031c  674a6ff8  storeli.w r6, -860(r30)
000320  674b5ff8  storeli.w r5, -844(r30)
000324  00a00000  mfence { lm }
000328  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
00032c  9f008ff8  addli r1, r30, -960
000330  92137b02  vadd.f.mz.rn vr7{mr1}, r22, vr7
000334  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
000338  8a934902  vmul.f.mz.rn vr7{mr1}, r19, vr4
00033c  00a00000  mfence { lm }
000340  e3008ff8  loadli.w r1,  -960(r30)
000344  63418ff8  loadli.w r2,  -956(r30)
000348  e303aff8  loadli.w r7,  -944(r30)
00034c  6344aff8  loadli.w r8,  -940(r30)
000350  e3029ff8  loadli.w r5,  -952(r30)
000354  63439ff8  loadli.w r6,  -948(r30)
000358  e304bff8  loadli.w r9,  -936(r30)
00035c  e345bff8  loadli.w r11,  -932(r30)
000360  6306cff8  loadli.w r12,  -928(r30)
000364  e346cff8  loadli.w r13,  -924(r30)
000368  e307dff8  loadli.w r15,  -920(r30)
00036c  634adff8  loadli.w r20,  -916(r30)
000370  e30aeff8  loadli.w r21,  -912(r30)
000374  e34beff8  loadli.w r23,  -908(r30)
000378  e30cfff8  loadli.w r25,  -904(r30)
00037c  634dfff8  loadli.w r26,  -900(r30)
000380  8f001c18  div.f.rn r1, r24, r1
000384  0f012c18  div.f.rn r2, r24, r2
000388  8f025c18  div.f.rn r5, r24, r5
00038c  0f036c18  div.f.rn r6, r24, r6
000390  67001ff8  storeli.w r1, -1024(r30)
000394  8f007c18  div.f.rn r1, r24, r7
000398  67402ff8  storeli.w r2, -1020(r30)
00039c  0f018c18  div.f.rn r2, r24, r8
0003a0  8f039c18  div.f.rn r7, r24, r9
0003a4  0f04bc18  div.f.rn r8, r24, r11
0003a8  e7005ff8  storeli.w r5, -1016(r30)
0003ac  e7406ff8  storeli.w r6, -1012(r30)
0003b0  8f02fc18  div.f.rn r5, r24, r15
0003b4  0f034c19  div.f.rn r6, r24, r20
0003b8  67011ff8  storeli.w r1, -1008(r30)
0003bc  8f00cc18  div.f.rn r1, r24, r12
0003c0  67412ff8  storeli.w r2, -1004(r30)
0003c4  0f01dc18  div.f.rn r2, r24, r13
0003c8  e7017ff8  storeli.w r7, -1000(r30)
0003cc  e7418ff8  storeli.w r8, -996(r30)
0003d0  8f037c19  div.f.rn r7, r24, r23
0003d4  0f049c19  div.f.rn r8, r24, r25
0003d8  e7025ff8  storeli.w r5, -984(r30)
0003dc  e7426ff8  storeli.w r6, -980(r30)
0003e0  67021ff8  storeli.w r1, -992(r30)
0003e4  8f005c19  div.f.rn r1, r24, r21
0003e8  67422ff8  storeli.w r2, -988(r30)
0003ec  0f01ac19  div.f.rn r2, r24, r26
0003f0  67437ff8  storeli.w r7, -972(r30)
0003f4  e7038ff8  storeli.w r8, -968(r30)
0003f8  67031ff8  storeli.w r1, -976(r30)
0003fc  e7432ff8  storeli.w r2, -964(r30)
000400  9f000ff8  addli r1, r30, -1024
000404  00a00000  mfence { lm }
000408  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
00040c  9f008ffb  addli r1, r30, -576
000410  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
000414  00a00000  mfence { lm }
000418  e3008ffb  loadli.w r1,  -576(r30)
00041c  63418ffb  loadli.w r2,  -572(r30)
000420  e303affb  loadli.w r7,  -560(r30)
000424  e3029ffb  loadli.w r5,  -568(r30)
000428  63439ffb  loadli.w r6,  -564(r30)
00042c  6344affb  loadli.w r8,  -556(r30)
000430  e304bffb  loadli.w r9,  -552(r30)
000434  e345bffb  loadli.w r11,  -548(r30)
000438  6306cffb  loadli.w r12,  -544(r30)
00043c  e346cffb  loadli.w r13,  -540(r30)
000440  e307dffb  loadli.w r15,  -536(r30)
000444  634adffb  loadli.w r20,  -532(r30)
000448  e30aeffb  loadli.w r21,  -528(r30)
00044c  e34beffb  loadli.w r23,  -524(r30)
000450  e30cfffb  loadli.w r25,  -520(r30)
000454  634dfffb  loadli.w r26,  -516(r30)
000458  12124b02  vadd.f.mz.rn vr4{mr1}, r22, vr4
00045c  8f800000  exp.f.rn r1, r1
000460  0f010100  exp.f.rn r2, r2
000464  8f820200  exp.f.rn r5, r5
000468  0f030300  exp.f.rn r6, r6
00046c  67081ffa  storeli.w r1, -640(r30)
000470  8f800300  exp.f.rn r1, r7
000474  8f830400  exp.f.rn r7, r9
000478  67482ffa  storeli.w r2, -636(r30)
00047c  0f010400  exp.f.rn r2, r8
000480  0f840500  exp.f.rn r8, r11
000484  e7085ffa  storeli.w r5, -632(r30)
000488  e7486ffa  storeli.w r6, -628(r30)
00048c  8f820700  exp.f.rn r5, r15
000490  0f030a00  exp.f.rn r6, r20
000494  8f040d00  exp.f.rn r9, r26
000498  67091ffa  storeli.w r1, -624(r30)
00049c  8f000600  exp.f.rn r1, r12
0004a0  67492ffa  storeli.w r2, -620(r30)
0004a4  e7097ffa  storeli.w r7, -616(r30)
0004a8  e7498ffa  storeli.w r8, -612(r30)
0004ac  0f810600  exp.f.rn r2, r13
0004b0  8f830b00  exp.f.rn r7, r23
0004b4  0f840c00  exp.f.rn r8, r25
0004b8  e70a5ffa  storeli.w r5, -600(r30)
0004bc  e74a6ffa  storeli.w r6, -596(r30)
0004c0  e74b9ffa  storeli.w r9, -580(r30)
0004c4  670a1ffa  storeli.w r1, -608(r30)
0004c8  8f800a00  exp.f.rn r1, r21
0004cc  674a2ffa  storeli.w r2, -604(r30)
0004d0  674b7ffa  storeli.w r7, -588(r30)
0004d4  e70b8ffa  storeli.w r8, -584(r30)
0004d8  670b1ffa  storeli.w r1, -592(r30)
0004dc  9f000ffb  addli r1, r30, -640
0004e0  00a00000  mfence { lm }
0004e4  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0004e8  9f008ffa  addli r1, r30, -704
0004ec  92137b02  vadd.f.mz.rn vr7{mr1}, r22, vr7
0004f0  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
0004f4  8a936902  vmul.f.mz.rn vr7{mr1}, r19, vr6
0004f8  00a00000  mfence { lm }
0004fc  e3008ffa  loadli.w r1,  -704(r30)
000500  63418ffa  loadli.w r2,  -700(r30)
000504  e303affa  loadli.w r7,  -688(r30)
000508  6344affa  loadli.w r8,  -684(r30)
00050c  e3029ffa  loadli.w r5,  -696(r30)
000510  63439ffa  loadli.w r6,  -692(r30)
000514  e304bffa  loadli.w r9,  -680(r30)
000518  e345bffa  loadli.w r11,  -676(r30)
00051c  6306cffa  loadli.w r12,  -672(r30)
000520  e346cffa  loadli.w r13,  -668(r30)
000524  e307dffa  loadli.w r15,  -664(r30)
000528  634adffa  loadli.w r20,  -660(r30)
00052c  e30aeffa  loadli.w r21,  -656(r30)
000530  e34beffa  loadli.w r23,  -652(r30)
000534  e30cfffa  loadli.w r25,  -648(r30)
000538  634dfffa  loadli.w r26,  -644(r30)
00053c  8f001c18  div.f.rn r1, r24, r1
000540  0f012c18  div.f.rn r2, r24, r2
000544  8f025c18  div.f.rn r5, r24, r5
000548  0f036c18  div.f.rn r6, r24, r6
00054c  67001ffa  storeli.w r1, -768(r30)
000550  8f007c18  div.f.rn r1, r24, r7
000554  67402ffa  storeli.w r2, -764(r30)
000558  0f018c18  div.f.rn r2, r24, r8
00055c  8f039c18  div.f.rn r7, r24, r9
000560  0f04bc18  div.f.rn r8, r24, r11
000564  e7005ffa  storeli.w r5, -760(r30)
000568  e7406ffa  storeli.w r6, -756(r30)
00056c  8f02fc18  div.f.rn r5, r24, r15
000570  0f034c19  div.f.rn r6, r24, r20
000574  67011ffa  storeli.w r1, -752(r30)
000578  8f00cc18  div.f.rn r1, r24, r12
00057c  67412ffa  storeli.w r2, -748(r30)
000580  0f01dc18  div.f.rn r2, r24, r13
000584  e7017ffa  storeli.w r7, -744(r30)
000588  e7418ffa  storeli.w r8, -740(r30)
00058c  8f037c19  div.f.rn r7, r24, r23
000590  0f049c19  div.f.rn r8, r24, r25
000594  e7025ffa  storeli.w r5, -728(r30)
000598  e7426ffa  storeli.w r6, -724(r30)
00059c  67021ffa  storeli.w r1, -736(r30)
0005a0  8f005c19  div.f.rn r1, r24, r21
0005a4  67422ffa  storeli.w r2, -732(r30)
0005a8  0f01ac19  div.f.rn r2, r24, r26
0005ac  67437ffa  storeli.w r7, -716(r30)
0005b0  e7038ffa  storeli.w r8, -712(r30)
0005b4  67031ffa  storeli.w r1, -720(r30)
0005b8  e7432ffa  storeli.w r2, -708(r30)
0005bc  9f000ffa  addli r1, r30, -768
0005c0  00a00000  mfence { lm }
0005c4  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
0005c8  9f008ffd  addli r1, r30, -320
0005cc  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
0005d0  00a00000  mfence { lm }
0005d4  e3008ffd  loadli.w r1,  -320(r30)
0005d8  63418ffd  loadli.w r2,  -316(r30)
0005dc  e303affd  loadli.w r7,  -304(r30)
0005e0  e3029ffd  loadli.w r5,  -312(r30)
0005e4  63439ffd  loadli.w r6,  -308(r30)
0005e8  6344affd  loadli.w r8,  -300(r30)
0005ec  e304bffd  loadli.w r9,  -296(r30)
0005f0  e345bffd  loadli.w r11,  -292(r30)
0005f4  6306cffd  loadli.w r12,  -288(r30)
0005f8  e346cffd  loadli.w r13,  -284(r30)
0005fc  e307dffd  loadli.w r15,  -280(r30)
000600  634adffd  loadli.w r20,  -276(r30)
000604  e30aeffd  loadli.w r21,  -272(r30)
000608  e34beffd  loadli.w r23,  -268(r30)
00060c  e30cfffd  loadli.w r25,  -264(r30)
000610  634dfffd  loadli.w r26,  -260(r30)
000614  12136b02  vadd.f.mz.rn vr6{mr1}, r22, vr6
000618  8f800000  exp.f.rn r1, r1
00061c  0f010100  exp.f.rn r2, r2
000620  8f820200  exp.f.rn r5, r5
000624  0f030300  exp.f.rn r6, r6
000628  67081ffc  storeli.w r1, -384(r30)
00062c  8f800300  exp.f.rn r1, r7
000630  8f830400  exp.f.rn r7, r9
000634  67482ffc  storeli.w r2, -380(r30)
000638  0f010400  exp.f.rn r2, r8
00063c  0f840500  exp.f.rn r8, r11
000640  e7085ffc  storeli.w r5, -376(r30)
000644  e7486ffc  storeli.w r6, -372(r30)
000648  8f820700  exp.f.rn r5, r15
00064c  0f030a00  exp.f.rn r6, r20
000650  8f040d00  exp.f.rn r9, r26
000654  67091ffc  storeli.w r1, -368(r30)
000658  8f000600  exp.f.rn r1, r12
00065c  67492ffc  storeli.w r2, -364(r30)
000660  e7097ffc  storeli.w r7, -360(r30)
000664  e7498ffc  storeli.w r8, -356(r30)
000668  0f810600  exp.f.rn r2, r13
00066c  8f830b00  exp.f.rn r7, r23
000670  0f840c00  exp.f.rn r8, r25
000674  e70a5ffc  storeli.w r5, -344(r30)
000678  e74a6ffc  storeli.w r6, -340(r30)
00067c  e74b9ffc  storeli.w r9, -324(r30)
000680  670a1ffc  storeli.w r1, -352(r30)
000684  8f800a00  exp.f.rn r1, r21
000688  674a2ffc  storeli.w r2, -348(r30)
00068c  674b7ffc  storeli.w r7, -332(r30)
000690  e70b8ffc  storeli.w r8, -328(r30)
000694  670b1ffc  storeli.w r1, -336(r30)
000698  9f000ffd  addli r1, r30, -384
00069c  00a00000  mfence { lm }
0006a0  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0006a4  9f008ffc  addli r1, r30, -448
0006a8  92137b02  vadd.f.mz.rn vr7{mr1}, r22, vr7
0006ac  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
0006b0  8a935902  vmul.f.mz.rn vr7{mr1}, r19, vr5
0006b4  00a00000  mfence { lm }
0006b8  e3008ffc  loadli.w r1,  -448(r30)
0006bc  63418ffc  loadli.w r2,  -444(r30)
0006c0  e303affc  loadli.w r7,  -432(r30)
0006c4  6344affc  loadli.w r8,  -428(r30)
0006c8  e3029ffc  loadli.w r5,  -440(r30)
0006cc  63439ffc  loadli.w r6,  -436(r30)
0006d0  e304bffc  loadli.w r9,  -424(r30)
0006d4  e345bffc  loadli.w r11,  -420(r30)
0006d8  6306cffc  loadli.w r12,  -416(r30)
0006dc  e346cffc  loadli.w r13,  -412(r30)
0006e0  e307dffc  loadli.w r15,  -408(r30)
0006e4  634adffc  loadli.w r20,  -404(r30)
0006e8  e30aeffc  loadli.w r21,  -400(r30)
0006ec  e34beffc  loadli.w r23,  -396(r30)
0006f0  e30cfffc  loadli.w r25,  -392(r30)
0006f4  634dfffc  loadli.w r26,  -388(r30)
0006f8  8f001c18  div.f.rn r1, r24, r1
0006fc  0f012c18  div.f.rn r2, r24, r2
000700  8f025c18  div.f.rn r5, r24, r5
000704  0f036c18  div.f.rn r6, r24, r6
000708  67001ffc  storeli.w r1, -512(r30)
00070c  8f007c18  div.f.rn r1, r24, r7
000710  67402ffc  storeli.w r2, -508(r30)
000714  0f018c18  div.f.rn r2, r24, r8
000718  8f039c18  div.f.rn r7, r24, r9
00071c  0f04bc18  div.f.rn r8, r24, r11
000720  e7005ffc  storeli.w r5, -504(r30)
000724  e7406ffc  storeli.w r6, -500(r30)
000728  8f02fc18  div.f.rn r5, r24, r15
00072c  0f034c19  div.f.rn r6, r24, r20
000730  67011ffc  storeli.w r1, -496(r30)
000734  8f00cc18  div.f.rn r1, r24, r12
000738  67412ffc  storeli.w r2, -492(r30)
00073c  0f01dc18  div.f.rn r2, r24, r13
000740  e7017ffc  storeli.w r7, -488(r30)
000744  e7418ffc  storeli.w r8, -484(r30)
000748  8f037c19  div.f.rn r7, r24, r23
00074c  0f049c19  div.f.rn r8, r24, r25
000750  e7025ffc  storeli.w r5, -472(r30)
000754  e7426ffc  storeli.w r6, -468(r30)
000758  67021ffc  storeli.w r1, -480(r30)
00075c  8f005c19  div.f.rn r1, r24, r21
000760  67422ffc  storeli.w r2, -476(r30)
000764  0f01ac19  div.f.rn r2, r24, r26
000768  67437ffc  storeli.w r7, -460(r30)
00076c  e7038ffc  storeli.w r8, -456(r30)
000770  67031ffc  storeli.w r1, -464(r30)
000774  e7432ffc  storeli.w r2, -452(r30)
000778  9f000ffc  addli r1, r30, -512
00077c  00a00000  mfence { lm }
000780  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
000784  9f008fff  addli r1, r30, -64
000788  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
00078c  00a00000  mfence { lm }
000790  e3008fff  loadli.w r1,  -64(r30)
000794  63418fff  loadli.w r2,  -60(r30)
000798  e303afff  loadli.w r7,  -48(r30)
00079c  e3029fff  loadli.w r5,  -56(r30)
0007a0  63439fff  loadli.w r6,  -52(r30)
0007a4  6344afff  loadli.w r8,  -44(r30)
0007a8  e304bfff  loadli.w r9,  -40(r30)
0007ac  e345bfff  loadli.w r11,  -36(r30)
0007b0  6306cfff  loadli.w r12,  -32(r30)
0007b4  e346cfff  loadli.w r13,  -28(r30)
0007b8  e307dfff  loadli.w r15,  -24(r30)
0007bc  634adfff  loadli.w r20,  -20(r30)
0007c0  e30aefff  loadli.w r21,  -16(r30)
0007c4  e34befff  loadli.w r23,  -12(r30)
0007c8  e30cffff  loadli.w r25,  -8(r30)
0007cc  634dffff  loadli.w r26,  -4(r30)
0007d0  92125b02  vadd.f.mz.rn vr5{mr1}, r22, vr5
0007d4  8f800000  exp.f.rn r1, r1
0007d8  0f010100  exp.f.rn r2, r2
0007dc  8f820200  exp.f.rn r5, r5
0007e0  0f030300  exp.f.rn r6, r6
0007e4  67081ffe  storeli.w r1, -128(r30)
0007e8  8f800300  exp.f.rn r1, r7
0007ec  8f830400  exp.f.rn r7, r9
0007f0  67482ffe  storeli.w r2, -124(r30)
0007f4  0f010400  exp.f.rn r2, r8
0007f8  0f840500  exp.f.rn r8, r11
0007fc  e7085ffe  storeli.w r5, -120(r30)
000800  e7486ffe  storeli.w r6, -116(r30)
000804  8f820700  exp.f.rn r5, r15
000808  0f030a00  exp.f.rn r6, r20
00080c  8f040d00  exp.f.rn r9, r26
000810  67091ffe  storeli.w r1, -112(r30)
000814  8f000600  exp.f.rn r1, r12
000818  67492ffe  storeli.w r2, -108(r30)
00081c  e7097ffe  storeli.w r7, -104(r30)
000820  e7498ffe  storeli.w r8, -100(r30)
000824  0f810600  exp.f.rn r2, r13
000828  8f830b00  exp.f.rn r7, r23
00082c  0f840c00  exp.f.rn r8, r25
000830  e70a5ffe  storeli.w r5, -88(r30)
000834  e74a6ffe  storeli.w r6, -84(r30)
000838  e74b9ffe  storeli.w r9, -68(r30)
00083c  670a1ffe  storeli.w r1, -96(r30)
000840  8f800a00  exp.f.rn r1, r21
000844  674a2ffe  storeli.w r2, -92(r30)
000848  674b7ffe  storeli.w r7, -76(r30)
00084c  e70b8ffe  storeli.w r8, -72(r30)
000850  670b1ffe  storeli.w r1, -80(r30)
000854  9f000fff  addli r1, r30, -128
000858  00a00000  mfence { lm }
00085c  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
000860  9f008ffe  addli r1, r30, -192
000864  92137b02  vadd.f.mz.rn vr7{mr1}, r22, vr7
000868  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
00086c  00a00000  mfence { lm }
000870  e3008ffe  loadli.w r1,  -192(r30)
000874  63418ffe  loadli.w r2,  -188(r30)
000878  e3029ffe  loadli.w r5,  -184(r30)
00087c  63439ffe  loadli.w r6,  -180(r30)
000880  e303affe  loadli.w r7,  -176(r30)
000884  6344affe  loadli.w r8,  -172(r30)
000888  e304bffe  loadli.w r9,  -168(r30)
00088c  e345bffe  loadli.w r11,  -164(r30)
000890  6306cffe  loadli.w r12,  -160(r30)
000894  e346cffe  loadli.w r13,  -156(r30)
000898  e307dffe  loadli.w r15,  -152(r30)
00089c  634adffe  loadli.w r20,  -148(r30)
0008a0  e30aeffe  loadli.w r21,  -144(r30)
0008a4  e34beffe  loadli.w r23,  -140(r30)
0008a8  e30cfffe  loadli.w r25,  -136(r30)
0008ac  634dfffe  loadli.w r26,  -132(r30)
0008b0  8f001c18  div.f.rn r1, r24, r1
0008b4  0f012c18  div.f.rn r2, r24, r2
0008b8  67001ffe  storeli.w r1, -256(r30)
0008bc  8f005c18  div.f.rn r1, r24, r5
0008c0  8f027c18  div.f.rn r5, r24, r7
0008c4  8f039c18  div.f.rn r7, r24, r9
0008c8  67402ffe  storeli.w r2, -252(r30)
0008cc  0f016c18  div.f.rn r2, r24, r6
0008d0  0f038c18  div.f.rn r6, r24, r8
0008d4  0f04bc18  div.f.rn r8, r24, r11
0008d8  8f04cc18  div.f.rn r9, r24, r12
0008dc  e7001ffe  storeli.w r1, -248(r30)
0008e0  e7402ffe  storeli.w r2, -244(r30)
0008e4  67015ffe  storeli.w r5, -240(r30)
0008e8  67416ffe  storeli.w r6, -236(r30)
0008ec  e7017ffe  storeli.w r7, -232(r30)
0008f0  e7418ffe  storeli.w r8, -228(r30)
0008f4  67029ffe  storeli.w r9, -224(r30)
0008f8  8f00dc18  div.f.rn r1, r24, r13
0008fc  0f01fc18  div.f.rn r2, r24, r15
000900  8f024c19  div.f.rn r5, r24, r20
000904  0f035c19  div.f.rn r6, r24, r21
000908  8f037c19  div.f.rn r7, r24, r23
00090c  0f049c19  div.f.rn r8, r24, r25
000910  8f04ac19  div.f.rn r9, r24, r26
000914  67421ffe  storeli.w r1, -220(r30)
000918  e7425ffe  storeli.w r5, -212(r30)
00091c  67036ffe  storeli.w r6, -208(r30)
000920  e7022ffe  storeli.w r2, -216(r30)
000924  67437ffe  storeli.w r7, -204(r30)
000928  e7038ffe  storeli.w r8, -200(r30)
00092c  e7439ffe  storeli.w r9, -196(r30)
000930  9f000ffe  addli r1, r30, -256
000934  9f020ff6  addli r5, r30, -1280
000938  1f038ff7  addli r6, r30, -1088
00093c  00a00000  mfence { lm }
000940  12124b02  vadd.f.mz.rn vr4{mr1}, r22, vr4
000944  8e914102  vmul.f.mz.rn vr3{mr1}, vr3, vr4
000948  12136b02  vadd.f.mz.rn vr6{mr1}, r22, vr6
00094c  0e106002  vmul.f.mz.rn vr0{mr1}, vr0, vr6
000950  92125b02  vadd.f.mz.rn vr5{mr1}, r22, vr5
000954  8e905002  vmul.f.mz.rn vr1{mr1}, vr1, vr5
000958  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
00095c  eb500f01  load.d r[2:3], 16(r30)
000960  46903202  vstore_mask16.mz vr3{mr1}, 0(r5)
000964  9f028ff6  addli r5, r30, -1216
000968  8ba0b011  add.ul r[2:3], r[2:3], r[28:29]
00096c  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
000970  9f020ff7  addli r5, r30, -1152
000974  92137b02  vadd.f.mz.rn vr7{mr1}, r22, vr7
000978  92137b02  vadd.f.mz.rn vr7{mr1}, r22, vr7
00097c  0e117102  vmul.f.mz.rn vr2{mr1}, vr2, vr7
000980  46901202  vstore_mask16.mz vr1{mr1}, 0(r5)
000984  ab0200f0  lui r5, 983040
000988  97125800  or r5, r16, r5
00098c  46102302  vstore_mask16.mz vr2{mr1}, 0(r6)
000990  1f030ff6  addli r6, r30, -1280
000994  00a00000  mfence { lm }
000998  ffb26000  s_lm2gm r5, r6, 0(r[2:3])
00099c  6341fff3  loadli.w r2,  -1540(r30)
0009a0  9f000200  addli r1, r4, 0
0009a4  00a00000  mfence { lm }
0009a8  8b912110  add.s r3, r3, r2
0009ac  3faee1fa  blt.s r3, r14, -2168
0009b0  9f0e8ff3  addli sp, r30, -1600
0009b4  9f8e8e0c  addli sp, sp, 1600
0009b8  00a00300  mfence { lm, sm, gm }
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
