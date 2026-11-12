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
000078  9f493000  addli r19, zero, 28
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
0000e8  63412f00  loadli.w r2,  20(r30)
0000ec  e3002f00  loadli.w r1,  16(r30)
0000f0  63023f00  loadli.w r4,  24(r30)
0000f4  8b101120  mul.s r1, r2, r1
0000f8  8b904020  mul.s r1, r1, r4
0000fc  670f1ff8  storeli.w r1, -784(r30)
000100  cbb13008  ble.s r1, r3, 4204
000104  80300002  core_id r1
000108  00d10002  load_param_i r2, 1
00010c  9f050ffb  addli r11, r30, -640
000110  1f050001  addli r10, zero, 128
000114  1f088ffc  addli r16, r30, -448
000118  ab08803f  lui r17, 260096
00011c  2b0680bf  lui r12, 784384
000120  9f090ffc  addli r19, r30, -512
000124  9f0a8000  addli r21, zero, 64
000128  9f0d8ffd  addli r27, r30, -320
00012c  1f0e0ffd  addli r28, r30, -384
000130  9f028ffe  addli r5, r30, -192
000134  1f030ffe  addli r6, r30, -256
000138  9f038fff  addli r7, r30, -64
00013c  1f040fff  addli r8, r30, -128
000140  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000144  9bb06000  slli r1, r1, 6
000148  e74e2ff8  storeli.w r2, -788(r30)
00014c  2bf1b53f  lui r2, 260959
000150  e70e1ff8  storeli.w r1, -792(r30)
000154  ab00353f  lui r1, 258896
000158  9b17310e  ori r15, r2, 227
00015c  2b71823e  lui r2, 256039
000160  9b90304f  ori r1, r1, 1267
000164  1b1b6190  ori r22, r2, 2310
000168  6707fffa  storeli.w r15, -656(r30)
00016c  674e1ff8  storeli.w r1, -796(r30)
000170  abb0a73e  lui r1, 256635
000174  e7066ffb  storeli.w r22, -664(r30)
000178  1b9a50a0  ori r20, r1, 2565
00017c  abd0873f  lui r1, 260221
000180  9b9620c2  ori r13, r1, 3106
000184  ab00babf  lui r1, 785312
000188  1b97300e  ori r14, r1, 227
00018c  aba091be  lui r1, 780570
000190  e707dffa  storeli.w r13, -648(r30)
000194  1b99e098  ori r18, r1, 2446
000198  ab700000  lui r1, 7
00019c  6747effa  storeli.w r14, -652(r30)
0001a0  9b90f0ff  ori r1, r1, 4095
0001a4  e7462ffb  storeli.w r18, -660(r30)
0001a8  e7471ffa  storeli.w r1, -644(r30)
0001ac  5b250000  j 296
0001b0  fab60040  vextracti.s r13, 0(vr1)
0001b4  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0001b8  1f100000  addli zero, zero, 1
0001bc  7e0000e0  vmmov mr0, zero
0001c0  17200000  xor zero, zero, zero
0001c4  eaa01630  vor.u.mh vr1{mr0}, r13, vr1
0001c8  9f260000  addli r13, zero, 2
0001cc  7e8006e0  vmmov mr0, r13
0001d0  9f460000  addli r13, zero, 4
0001d4  ea201d30  vor.u.mh vr1{mr0}, r26, vr1
0001d8  7e8006e0  vmmov mr0, r13
0001dc  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0001e0  1f011000  addli r2, zero, 8
0001e4  7e0001e0  vmmov mr0, r2
0001e8  1f012000  addli r2, zero, 16
0001ec  eaa01c30  vor.u.mh vr1{mr0}, r25, vr1
0001f0  7e0001e0  vmmov mr0, r2
0001f4  1f014000  addli r2, zero, 32
0001f8  ea201c30  vor.u.mh vr1{mr0}, r24, vr1
0001fc  7e0001e0  vmmov mr0, r2
000200  1f018000  addli r2, zero, 64
000204  eaa01b30  vor.u.mh vr1{mr0}, r23, vr1
000208  7e0001e0  vmmov mr0, r2
00020c  1f010001  addli r2, zero, 128
000210  ea201b30  vor.u.mh vr1{mr0}, r22, vr1
000214  7e0001e0  vmmov mr0, r2
000218  1f010004  addli r2, zero, 512
00021c  ea201930  vor.u.mh vr1{mr0}, r18, vr1
000220  7e0001e0  vmmov mr0, r2
000224  1f010008  addli r2, zero, 1024
000228  eaa01734  vor.u.mh vr1{mr2}, r15, vr1
00022c  ea201730  vor.u.mh vr1{mr0}, r14, vr1
000230  7e0001e0  vmmov mr0, r2
000234  1f010010  addli r2, zero, 2048
000238  ea201530  vor.u.mh vr1{mr0}, r10, vr1
00023c  7e0001e0  vmmov mr0, r2
000240  1f010020  addli r2, zero, 4096
000244  eaa01430  vor.u.mh vr1{mr0}, r9, vr1
000248  7e0001e0  vmmov mr0, r2
00024c  1f010040  addli r2, zero, 8192
000250  ea201630  vor.u.mh vr1{mr0}, r12, vr1
000254  7e0001e0  vmmov mr0, r2
000258  2b810000  lui r2, 8
00025c  2b0680bf  lui r12, 784384
000260  eaa01530  vor.u.mh vr1{mr0}, r11, vr1
000264  7e0001e0  vmmov mr0, r2
000268  9f050ffb  addli r11, r30, -640
00026c  ea201236  vor.u.mh vr1{mr3}, r4, vr1
000270  1f82c500  addli r4, r11, 96
000274  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000278  eb508f00  load.d r[2:3], 8(r30)
00027c  eb540fd6  load.d r[10:11], -672(r30)
000280  8ba09010  add.ul r[2:3], r[2:3], r[10:11]
000284  2ba5aaaa  lui r10, 699050
000288  ab0400f0  lui r9, 983040
00028c  1f255515  addli r10, r10, 2730
000290  7e0005e0  vmmov mr0, r10
000294  1f050001  addli r10, zero, 128
000298  62421210  vscatter.mh vr1{mr0}, vr4{r4}
00029c  17129500  or r4, r10, r9
0002a0  00a00000  mfence { lm }
0002a4  7fb2b000  s_lm2gm r4, r11, 0(r[2:3])
0002a8  e340dff9  loadli.w r1,  -788(r30)
0002ac  00a00000  mfence { lm }
0002b0  e306fffa  loadli.w r13,  -648(r30)
0002b4  6347effa  loadli.w r14,  -652(r30)
0002b8  e307effa  loadli.w r15,  -656(r30)
0002bc  6349dffa  loadli.w r18,  -660(r30)
0002c0  630bdffa  loadli.w r22,  -664(r30)
0002c4  8b911110  add.s r3, r3, r1
0002c8  e300eff9  loadli.w r1,  -784(r30)
0002cc  3fa01100  blt.s r3, r1, 8
0002d0  dbd30100  j 3740
0002d4  e3003f00  loadli.w r1,  24(r30)
0002d8  63412f00  loadli.w r2,  20(r30)
0002dc  2b0200f0  lui r4, 983040
0002e0  9f140000  addli r9, zero, 1
0002e4  8b901130  div.s r1, r3, r1
0002e8  8b902030  div.s r1, r1, r2
0002ec  6301dff9  loadli.w r2,  -792(r30)
0002f0  9bb0c000  slli r1, r1, 12
0002f4  8b902010  add.s r1, r1, r2
0002f8  b3900028  sext_int2long r[2:3], r1
0002fc  97bb9002  sll.d r[24:25], r[2:3], r9
000300  97104500  or r1, r10, r4
000304  eb540f00  load.d r[10:11], 0(r30)
000308  73307fd7  store.d r[24:25], -672(r30)
00030c  8ba47411  add.ul r[10:11], r[10:11], r[24:25]
000310  ffa0b400  l_gm2lm r1, r11, 0(r[10:11])
000314  9f808500  addli r1, r11, 64
000318  00a00000  mfence { lm }
00031c  42110fa3  vload_mask16.mz vr2{mr1}, 1408(r30)
000320  42128fa3  vload_mask16.mz vr4{mr1}, 1472(r30)
000324  6341cff9  loadli.w r2,  -796(r30)
000328  e7451ffa  storeli.w r1, -676(r30)
00032c  ab00003f  lui r1, 258048
000330  e6402080  vmerge_l.hf vr1, vr0, vr2
000334  8a131102  vmul.f.mz.rn vr7{mr1}, r2, vr1
000338  72117042  vlt.f.mz mr2{mr1}, zero, vr7
00033c  e6414080  vmerge_l.hf vr3, vr0, vr4
000340  664340a0  vmerge_h.hf vr6, vr0, vr4
000344  664220a0  vmerge_h.hf vr4, vr0, vr2
000348  0a916002  vmul.f.mz.rn vr2{mr1}, r1, vr6
00034c  46102fa2  vstore_mask16.mz vr2{mr1}, 1280(r30)
000350  8a923002  vmul.f.mz.rn vr5{mr1}, r1, vr3
000354  7e000140  vmnot mr0, mr2
000358  0a947804  vmul.f.mz.rn vr8{mr2}, r17, vr7
00035c  0a911002  vmul.f.mz.rn vr2{mr1}, r1, vr1
000360  8a104102  vmul.f.mz.rn vr1{mr1}, r2, vr4
000364  8a147600  vmul.f.mz.rn vr9{mr0}, r12, vr7
000368  8e937302  vmul.f.mz.rn vr7{mr1}, vr7, vr7
00036c  7e0000a0  vmmov zero, mr0
000370  e70f0ff8  storeli.w zero, -776(r30)
000374  17200000  xor zero, zero, zero
000378  16149402  vadd.f.mz.rn vr8{mr1}, vr8, vr9
00037c  8a944002  vmul.f.mz.rn vr9{mr1}, r1, vr4
000380  46107802  vstore_mask16.mz vr7{mr1}, 0(r16)
000384  9f000000  addli r1, zero, 0
000388  0a123102  vmul.f.mz.rn vr4{mr1}, r2, vr3
00038c  8a116102  vmul.f.mz.rn vr3{mr1}, r2, vr6
000390  46908902  vstore_mask16.mz vr8{mr1}, 0(r19)
000394  00a00000  mfence { lm }
000398  0b911910  add.s r2, r19, r1
00039c  2b05803f  lui r10, 260096
0003a0  0b121810  add.s r4, r16, r1
0003a4  9fc00000  addli r1, r1, 4
0003a8  e3040100  loadli.w r9,  0(r2)
0003ac  e3050200  loadli.w r11,  0(r4)
0003b0  0be54451  fmac.f.rn r10, r9, r20
0003b4  8be40558  neg.f r9, r11
0003b8  8f840400  exp.f.rn r9, r9
0003bc  0f85a818  div.f.rn r10, r17, r10
0003c0  67009200  storeli.w r9, 0(r4)
0003c4  6700a100  storeli.w r10, 0(r2)
0003c8  3bcf50ff  bneq r1, r21, -48
0003cc  00a00000  mfence { lm }
0003d0  f2111042  vlt.f.mz mr3{mr1}, zero, vr1
0003d4  42930902  vload_mask16.mz vr6{mr1}, 0(r19)
0003d8  42140802  vload_mask16.mz vr8{mr1}, 0(r16)
0003dc  7e800140  vmnot mr0, mr3
0003e0  7e0000a0  vmmov zero, mr0
0003e4  e74f0ff8  storeli.w zero, -772(r30)
0003e8  17200000  xor zero, zero, zero
0003ec  6300fff9  loadli.w zero,  -776(r30)
0003f0  8a936602  vmul.f.mz.rn vr7{mr1}, r13, vr6
0003f4  92137702  vadd.f.mz.rn vr7{mr1}, r14, vr7
0003f8  8e936302  vmul.f.mz.rn vr7{mr1}, vr7, vr6
0003fc  92937702  vadd.f.mz.rn vr7{mr1}, r15, vr7
000400  8e936302  vmul.f.mz.rn vr7{mr1}, vr7, vr6
000404  92137902  vadd.f.mz.rn vr7{mr1}, r18, vr7
000408  8e936302  vmul.f.mz.rn vr7{mr1}, vr7, vr6
00040c  92137b02  vadd.f.mz.rn vr7{mr1}, r22, vr7
000410  0e936302  vmul.f.mz.rn vr6{mr1}, vr7, vr6
000414  8a931806  vmul.f.mz.rn vr7{mr3}, r17, vr1
000418  0e136402  vmul.f.mz.rn vr6{mr1}, vr8, vr6
00041c  0a141600  vmul.f.mz.rn vr8{mr0}, r12, vr1
000420  7e0000e0  vmmov mr0, zero
000424  8e901002  vmul.f.mz.rn vr1{mr1}, vr1, vr1
000428  17200000  xor zero, zero, zero
00042c  9f000000  addli r1, zero, 0
000430  1a936802  vsub.f.mz.rn vr6{mr1}, r17, vr6
000434  96938302  vadd.f.mz.rn vr7{mr1}, vr7, vr8
000438  46901d02  vstore_mask16.mz vr1{mr1}, 0(r27)
00043c  0a956804  vmul.f.mz.rn vr10{mr2}, r17, vr6
000440  0a136600  vmul.f.mz.rn vr6{mr0}, r12, vr6
000444  46107e02  vstore_mask16.mz vr7{mr1}, 0(r28)
000448  00a00000  mfence { lm }
00044c  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
000450  0b111e10  add.s r2, r28, r1
000454  2b05803f  lui r10, 260096
000458  0b921d10  add.s r4, r27, r1
00045c  9fc00000  addli r1, r1, 4
000460  e3040100  loadli.w r9,  0(r2)
000464  e3050200  loadli.w r11,  0(r4)
000468  0be54451  fmac.f.rn r10, r9, r20
00046c  8be40558  neg.f r9, r11
000470  8f840400  exp.f.rn r9, r9
000474  0f85a818  div.f.rn r10, r17, r10
000478  67009200  storeli.w r9, 0(r4)
00047c  6700a100  storeli.w r10, 0(r2)
000480  3bcf50ff  bneq r1, r21, -48
000484  00a00000  mfence { lm }
000488  72104042  vlt.f.mz mr0{mr1}, zero, vr4
00048c  8e154202  vmul.f.mz.rn vr11{mr1}, vr4, vr4
000490  c2100e02  vload_mask16.mz vr1{mr1}, 0(r28)
000494  42940d02  vload_mask16.mz vr8{mr1}, 0(r27)
000498  6340fff9  loadli.w zero,  -772(r30)
00049c  7e010040  vmnot mr2, mr0
0004a0  4690b202  vstore_mask16.mz vr11{mr1}, 0(r5)
0004a4  8a931602  vmul.f.mz.rn vr7{mr1}, r13, vr1
0004a8  92137702  vadd.f.mz.rn vr7{mr1}, r14, vr7
0004ac  8e931302  vmul.f.mz.rn vr7{mr1}, vr7, vr1
0004b0  92937702  vadd.f.mz.rn vr7{mr1}, r15, vr7
0004b4  8e931302  vmul.f.mz.rn vr7{mr1}, vr7, vr1
0004b8  92137902  vadd.f.mz.rn vr7{mr1}, r18, vr7
0004bc  8e931302  vmul.f.mz.rn vr7{mr1}, vr7, vr1
0004c0  92137b02  vadd.f.mz.rn vr7{mr1}, r22, vr7
0004c4  8e901302  vmul.f.mz.rn vr1{mr1}, vr7, vr1
0004c8  8a934800  vmul.f.mz.rn vr7{mr0}, r17, vr4
0004cc  8e101402  vmul.f.mz.rn vr1{mr1}, vr8, vr1
0004d0  0a144604  vmul.f.mz.rn vr8{mr2}, r12, vr4
0004d4  9a901802  vsub.f.mz.rn vr1{mr1}, r17, vr1
0004d8  96938302  vadd.f.mz.rn vr7{mr1}, vr7, vr8
0004dc  0a951806  vmul.f.mz.rn vr10{mr3}, r17, vr1
0004e0  fe0100e0  vmmov mr3, zero
0004e4  17200000  xor zero, zero, zero
0004e8  46107302  vstore_mask16.mz vr7{mr1}, 0(r6)
0004ec  8a101606  vmul.f.mz.rn vr1{mr3}, r12, vr1
0004f0  00a00000  mfence { lm }
0004f4  9f000000  addli r1, zero, 0
0004f8  16121502  vadd.f.mz.rn vr4{mr1}, vr10, vr1
0004fc  0b111310  add.s r2, r6, r1
000500  2b05803f  lui r10, 260096
000504  0b921210  add.s r4, r5, r1
000508  9fc00000  addli r1, r1, 4
00050c  e3040100  loadli.w r9,  0(r2)
000510  e3050200  loadli.w r11,  0(r4)
000514  0be54451  fmac.f.rn r10, r9, r20
000518  8be40558  neg.f r9, r11
00051c  8f840400  exp.f.rn r9, r9
000520  0f85a818  div.f.rn r10, r17, r10
000524  67009200  storeli.w r9, 0(r4)
000528  6700a100  storeli.w r10, 0(r2)
00052c  3bcf50ff  bneq r1, r21, -48
000530  00a00000  mfence { lm }
000534  f2113042  vlt.f.mz mr3{mr1}, zero, vr3
000538  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
00053c  42940202  vload_mask16.mz vr8{mr1}, 0(r5)
000540  7e8001a0  vmmov zero, mr3
000544  e74f0ff8  storeli.w zero, -772(r30)
000548  17200000  xor zero, zero, zero
00054c  8a931602  vmul.f.mz.rn vr7{mr1}, r13, vr1
000550  92137702  vadd.f.mz.rn vr7{mr1}, r14, vr7
000554  8e931302  vmul.f.mz.rn vr7{mr1}, vr7, vr1
000558  92937702  vadd.f.mz.rn vr7{mr1}, r15, vr7
00055c  8e931302  vmul.f.mz.rn vr7{mr1}, vr7, vr1
000560  92137902  vadd.f.mz.rn vr7{mr1}, r18, vr7
000564  8e931302  vmul.f.mz.rn vr7{mr1}, vr7, vr1
000568  92137b02  vadd.f.mz.rn vr7{mr1}, r22, vr7
00056c  8e901302  vmul.f.mz.rn vr1{mr1}, vr7, vr1
000570  8a933806  vmul.f.mz.rn vr7{mr3}, r17, vr3
000574  fe810140  vmnot mr3, mr3
000578  7e8001a0  vmmov zero, mr3
00057c  e70f0ff8  storeli.w zero, -776(r30)
000580  17200000  xor zero, zero, zero
000584  8e101402  vmul.f.mz.rn vr1{mr1}, vr8, vr1
000588  0a143606  vmul.f.mz.rn vr8{mr3}, r12, vr3
00058c  8e913102  vmul.f.mz.rn vr3{mr1}, vr3, vr3
000590  9f000000  addli r1, zero, 0
000594  9a901802  vsub.f.mz.rn vr1{mr1}, r17, vr1
000598  96938302  vadd.f.mz.rn vr7{mr1}, vr7, vr8
00059c  46903302  vstore_mask16.mz vr3{mr1}, 0(r7)
0005a0  0a951800  vmul.f.mz.rn vr10{mr0}, r17, vr1
0005a4  8a101604  vmul.f.mz.rn vr1{mr2}, r12, vr1
0005a8  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
0005ac  00a00000  mfence { lm }
0005b0  16141502  vadd.f.mz.rn vr8{mr1}, vr10, vr1
0005b4  0b111410  add.s r2, r8, r1
0005b8  2b05803f  lui r10, 260096
0005bc  0b921310  add.s r4, r7, r1
0005c0  9fc00000  addli r1, r1, 4
0005c4  e3040100  loadli.w r9,  0(r2)
0005c8  e3050200  loadli.w r11,  0(r4)
0005cc  0be54451  fmac.f.rn r10, r9, r20
0005d0  8be40558  neg.f r9, r11
0005d4  8f840400  exp.f.rn r9, r9
0005d8  0f85a818  div.f.rn r10, r17, r10
0005dc  67009200  storeli.w r9, 0(r4)
0005e0  6700a100  storeli.w r10, 0(r2)
0005e4  3bcf50ff  bneq r1, r21, -48
0005e8  9f002000  addli r1, zero, 16
0005ec  00a00000  mfence { lm }
0005f0  92906802  vadd.f.mz.rn vr1{mr1}, r17, vr6
0005f4  8e101102  vmul.f.mz.rn vr1{mr1}, vr2, vr1
0005f8  6341fffa  loadli.w r2,  -644(r30)
0005fc  c2930302  vload_mask16.mz vr7{mr1}, 0(r7)
000600  eaa10022  vor.u.mz vr3{mr1}, r1, vr0
000604  ab00807f  lui r1, 522240
000608  6aa10022  vor.u.mz vr2{mr1}, r1, vr0
00060c  9f100000  addli r1, zero, 1
000610  e69500c0  vabs.f vr11, vr1
000614  6eb311c2  vsrl.s.mz vr6{mr1}, vr3, vr1
000618  7620b142  vlt.u.mz mr0{mr1}, vr2, vr11
00061c  6ab56002  vand.s.mz vr10{mr1}, r1, vr6
000620  42130402  vload_mask16.mz vr6{mr1}, 0(r8)
000624  fe0500a0  vmmov r11, mr0
000628  9bc0f500  srli r1, r11, 15
00062c  9b801000  andi r1, r1, 1
000630  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
000634  1235a102  vadd.s.mz vr10{mr1}, r2, vr10
000638  2b014000  lui r2, 1024
00063c  ea351122  vor.s.mz vr11{mr1}, r2, vr1
000640  3bb00000  bneq r1, zero, 12
000644  7a32f540  vextracti.s r4, 15(vr10)
000648  5b010000  j 8
00064c  7ab2f540  vextracti.s r4, 15(vr11)
000650  9bc0e500  srli r1, r11, 14
000654  9b801000  andi r1, r1, 1
000658  3bb00000  bneq r1, zero, 12
00065c  fa36e540  vextracti.s r13, 14(vr10)
000660  5b010000  j 8
000664  fab6e540  vextracti.s r13, 14(vr11)
000668  9bc0d500  srli r1, r11, 13
00066c  9b801000  andi r1, r1, 1
000670  3bb00000  bneq r1, zero, 12
000674  fa30d540  vextracti.s r1, 13(vr10)
000678  5b010000  j 8
00067c  fab0d540  vextracti.s r1, 13(vr11)
000680  1bc1c500  srli r2, r11, 12
000684  1b011100  andi r2, r2, 1
000688  3b300100  bneq r2, zero, 12
00068c  7a36c540  vextracti.s r12, 12(vr10)
000690  5b010000  j 8
000694  7ab6c540  vextracti.s r12, 12(vr11)
000698  1bc1b500  srli r2, r11, 11
00069c  1b011100  andi r2, r2, 1
0006a0  3b300100  bneq r2, zero, 12
0006a4  7a37b540  vextracti.s r14, 11(vr10)
0006a8  5b010000  j 8
0006ac  7ab7b540  vextracti.s r14, 11(vr11)
0006b0  1bc1a500  srli r2, r11, 10
0006b4  1b011100  andi r2, r2, 1
0006b8  3b300100  bneq r2, zero, 12
0006bc  fa34a540  vextracti.s r9, 10(vr10)
0006c0  5b010000  j 8
0006c4  fab4a540  vextracti.s r9, 10(vr11)
0006c8  1bc19500  srli r2, r11, 9
0006cc  1b011100  andi r2, r2, 1
0006d0  3b300100  bneq r2, zero, 12
0006d4  7a359540  vextracti.s r10, 9(vr10)
0006d8  5b010000  j 8
0006dc  7ab59540  vextracti.s r10, 9(vr11)
0006e0  1bc18500  srli r2, r11, 8
0006e4  1b011100  andi r2, r2, 1
0006e8  3b300100  bneq r2, zero, 12
0006ec  7a398540  vextracti.s r18, 8(vr10)
0006f0  5b010000  j 8
0006f4  7ab98540  vextracti.s r18, 8(vr11)
0006f8  1bc17500  srli r2, r11, 7
0006fc  1b011100  andi r2, r2, 1
000700  3b300100  bneq r2, zero, 12
000704  fa377540  vextracti.s r15, 7(vr10)
000708  5b010000  j 8
00070c  fab77540  vextracti.s r15, 7(vr11)
000710  1bc16500  srli r2, r11, 6
000714  1b011100  andi r2, r2, 1
000718  3b300100  bneq r2, zero, 12
00071c  7a3b6540  vextracti.s r22, 6(vr10)
000720  5b010000  j 8
000724  7abb6540  vextracti.s r22, 6(vr11)
000728  1bc15500  srli r2, r11, 5
00072c  1b011100  andi r2, r2, 1
000730  3b300100  bneq r2, zero, 12
000734  fa3b5540  vextracti.s r23, 5(vr10)
000738  5b010000  j 8
00073c  fabb5540  vextracti.s r23, 5(vr11)
000740  1bc14500  srli r2, r11, 4
000744  1b011100  andi r2, r2, 1
000748  3b300100  bneq r2, zero, 12
00074c  7a3c4540  vextracti.s r24, 4(vr10)
000750  5b010000  j 8
000754  7abc4540  vextracti.s r24, 4(vr11)
000758  1bc13500  srli r2, r11, 3
00075c  1b011100  andi r2, r2, 1
000760  3b300100  bneq r2, zero, 12
000764  fa3c3540  vextracti.s r25, 3(vr10)
000768  5b010000  j 8
00076c  fabc3540  vextracti.s r25, 3(vr11)
000770  1bc12500  srli r2, r11, 2
000774  1b011100  andi r2, r2, 1
000778  3b300100  bneq r2, zero, 12
00077c  7a3d2540  vextracti.s r26, 2(vr10)
000780  5b010000  j 8
000784  7abd2540  vextracti.s r26, 2(vr11)
000788  1bc11500  srli r2, r11, 1
00078c  1b011100  andi r2, r2, 1
000790  3b300100  bneq r2, zero, 12
000794  7a311540  vextracti.s r2, 1(vr10)
000798  5b010000  j 8
00079c  7ab11540  vextracti.s r2, 1(vr11)
0007a0  9b851500  andi r11, r11, 1
0007a4  92904802  vadd.f.mz.rn vr1{mr1}, r17, vr4
0007a8  3bb00500  bneq r11, zero, 12
0007ac  fa350540  vextracti.s r11, 0(vr10)
0007b0  5b010000  j 8
0007b4  fab50540  vextracti.s r11, 0(vr11)
0007b8  92350002  vadd.s.mz vr11{mr1}, zero, vr0
0007bc  1f100000  addli zero, zero, 1
0007c0  8e901402  vmul.f.mz.rn vr1{mr1}, vr9, vr1
0007c4  7e0000e0  vmmov mr0, zero
0007c8  17200000  xor zero, zero, zero
0007cc  eaa5b530  vor.u.mh vr11{mr0}, r11, vr11
0007d0  9f250000  addli r11, zero, 2
0007d4  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0007d8  eeb411c2  vsrl.s.mz vr9{mr1}, vr3, vr1
0007dc  669500c0  vabs.f vr10, vr1
0007e0  7e8005e0  vmmov mr0, r11
0007e4  ea25b130  vor.u.mh vr11{mr0}, r2, vr11
0007e8  1f410000  addli r2, zero, 4
0007ec  fe0101e0  vmmov mr3, r2
0007f0  1f011000  addli r2, zero, 8
0007f4  ea25bd36  vor.u.mh vr11{mr3}, r26, vr11
0007f8  7e0001e0  vmmov mr0, r2
0007fc  1f012000  addli r2, zero, 16
000800  7e0101e0  vmmov mr2, r2
000804  1f014000  addli r2, zero, 32
000808  eaa5bc30  vor.u.mh vr11{mr0}, r25, vr11
00080c  7e0001e0  vmmov mr0, r2
000810  1f018000  addli r2, zero, 64
000814  fe0101e0  vmmov mr3, r2
000818  1f010001  addli r2, zero, 128
00081c  ea25bc34  vor.u.mh vr11{mr2}, r24, vr11
000820  eaa5bb30  vor.u.mh vr11{mr0}, r23, vr11
000824  ea25bb36  vor.u.mh vr11{mr3}, r22, vr11
000828  fe0101e0  vmmov mr3, r2
00082c  1f010002  addli r2, zero, 256
000830  eaa5b736  vor.u.mh vr11{mr3}, r15, vr11
000834  fe0101e0  vmmov mr3, r2
000838  1f010004  addli r2, zero, 512
00083c  ea25b936  vor.u.mh vr11{mr3}, r18, vr11
000840  fe0101e0  vmmov mr3, r2
000844  1f010008  addli r2, zero, 1024
000848  ea25b536  vor.u.mh vr11{mr3}, r10, vr11
00084c  fe0101e0  vmmov mr3, r2
000850  1f010010  addli r2, zero, 2048
000854  eaa5b436  vor.u.mh vr11{mr3}, r9, vr11
000858  fe0101e0  vmmov mr3, r2
00085c  1f010020  addli r2, zero, 4096
000860  ea25b736  vor.u.mh vr11{mr3}, r14, vr11
000864  fe0101e0  vmmov mr3, r2
000868  1f010040  addli r2, zero, 8192
00086c  ea25b636  vor.u.mh vr11{mr3}, r12, vr11
000870  fe0101e0  vmmov mr3, r2
000874  1f011000  addli r2, zero, 8
000878  eaa5b036  vor.u.mh vr11{mr3}, r1, vr11
00087c  ab400000  lui r1, 4
000880  fe8100e0  vmmov mr3, r1
000884  ab800000  lui r1, 8
000888  eaa5b636  vor.u.mh vr11{mr3}, r13, vr11
00088c  fe8100e0  vmmov mr3, r1
000890  9f100000  addli r1, zero, 1
000894  ea25b236  vor.u.mh vr11{mr3}, r4, vr11
000898  fe8100e0  vmmov mr3, r1
00089c  9f200000  addli r1, zero, 2
0008a0  2ba2aaaa  lui r4, 699050
0008a4  6a424036  vor.hf.mh vr4{mr3}, zero, vr4
0008a8  fe8100e0  vmmov mr3, r1
0008ac  9f400000  addli r1, zero, 4
0008b0  1f225215  addli r4, r4, 2730
0008b4  6a424036  vor.hf.mh vr4{mr3}, zero, vr4
0008b8  fe8100e0  vmmov mr3, r1
0008bc  9f200000  addli r1, zero, 2
0008c0  6a424036  vor.hf.mh vr4{mr3}, zero, vr4
0008c4  fe0101e0  vmmov mr3, r2
0008c8  1f010001  addli r2, zero, 128
0008cc  6ac24036  vor.hf.mh vr4{mr3}, r1, vr4
0008d0  9f400000  addli r1, zero, 4
0008d4  6a424034  vor.hf.mh vr4{mr2}, zero, vr4
0008d8  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
0008dc  9f008000  addli r1, zero, 64
0008e0  7e8000e0  vmmov mr0, r1
0008e4  9f600000  addli r1, zero, 6
0008e8  6a424030  vor.hf.mh vr4{mr0}, zero, vr4
0008ec  7e0001e0  vmmov mr0, r2
0008f0  1f010004  addli r2, zero, 512
0008f4  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
0008f8  9f000002  addli r1, zero, 256
0008fc  7e0001e0  vmmov mr0, r2
000900  1f010010  addli r2, zero, 2048
000904  7e8100e0  vmmov mr2, r1
000908  9f001000  addli r1, zero, 8
00090c  6a424034  vor.hf.mh vr4{mr2}, zero, vr4
000910  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
000914  9f000008  addli r1, zero, 1024
000918  7e8000e0  vmmov mr0, r1
00091c  9f201000  addli r1, zero, 10
000920  6a424030  vor.hf.mh vr4{mr0}, zero, vr4
000924  7e0001e0  vmmov mr0, r2
000928  1f010040  addli r2, zero, 8192
00092c  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
000930  9f000020  addli r1, zero, 4096
000934  7e8000e0  vmmov mr0, r1
000938  9f401000  addli r1, zero, 12
00093c  6a424030  vor.hf.mh vr4{mr0}, zero, vr4
000940  7e0001e0  vmmov mr0, r2
000944  2b810000  lui r2, 8
000948  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
00094c  ab400000  lui r1, 4
000950  7e0001e0  vmmov mr0, r2
000954  2b010200  lui r2, 32
000958  fe8100e0  vmmov mr3, r1
00095c  9f601000  addli r1, zero, 14
000960  6a424036  vor.hf.mh vr4{mr3}, zero, vr4
000964  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
000968  ab000100  lui r1, 16
00096c  7e8000e0  vmmov mr0, r1
000970  9f002000  addli r1, zero, 16
000974  6a424030  vor.hf.mh vr4{mr0}, zero, vr4
000978  7e0001e0  vmmov mr0, r2
00097c  2b010800  lui r2, 128
000980  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
000984  ab000400  lui r1, 64
000988  7e8000e0  vmmov mr0, r1
00098c  9f202000  addli r1, zero, 18
000990  6a424030  vor.hf.mh vr4{mr0}, zero, vr4
000994  7e0001e0  vmmov mr0, r2
000998  2b012000  lui r2, 512
00099c  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
0009a0  ab001000  lui r1, 256
0009a4  7e8000e0  vmmov mr0, r1
0009a8  9f402000  addli r1, zero, 20
0009ac  6a424030  vor.hf.mh vr4{mr0}, zero, vr4
0009b0  7e0001e0  vmmov mr0, r2
0009b4  2b018000  lui r2, 2048
0009b8  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
0009bc  ab004000  lui r1, 1024
0009c0  7e8000e0  vmmov mr0, r1
0009c4  9f602000  addli r1, zero, 22
0009c8  6a424030  vor.hf.mh vr4{mr0}, zero, vr4
0009cc  7e0001e0  vmmov mr0, r2
0009d0  2b010002  lui r2, 8192
0009d4  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
0009d8  ab000001  lui r1, 4096
0009dc  7e8000e0  vmmov mr0, r1
0009e0  9f003000  addli r1, zero, 24
0009e4  6a424030  vor.hf.mh vr4{mr0}, zero, vr4
0009e8  7e0001e0  vmmov mr0, r2
0009ec  2b010008  lui r2, 32768
0009f0  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
0009f4  ab000004  lui r1, 16384
0009f8  7e8000e0  vmmov mr0, r1
0009fc  9f203000  addli r1, zero, 26
000a00  6a424030  vor.hf.mh vr4{mr0}, zero, vr4
000a04  7e0001e0  vmmov mr0, r2
000a08  2b010020  lui r2, 131072
000a0c  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
000a10  ab000010  lui r1, 65536
000a14  7e8000e0  vmmov mr0, r1
000a18  9f100000  addli r1, zero, 1
000a1c  6a424030  vor.hf.mh vr4{mr0}, zero, vr4
000a20  eab49002  vand.s.mz vr9{mr1}, r1, vr9
000a24  9f403000  addli r1, zero, 28
000a28  7e0001e0  vmmov mr0, r2
000a2c  2b010080  lui r2, 524288
000a30  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
000a34  ab000040  lui r1, 262144
000a38  96b49002  vadd.s.mz vr9{mr1}, vr1, vr9
000a3c  7e8000e0  vmmov mr0, r1
000a40  6a424030  vor.hf.mh vr4{mr0}, zero, vr4
000a44  e340fffa  loadli.w r1,  -644(r30)
000a48  7620a142  vlt.u.mz mr0{mr1}, vr2, vr10
000a4c  fe0500a0  vmmov r11, mr0
000a50  7e0001e0  vmmov mr0, r2
000a54  2b014000  lui r2, 1024
000a58  92b49002  vadd.s.mz vr9{mr1}, r1, vr9
000a5c  9f603000  addli r1, zero, 30
000a60  6a351122  vor.s.mz vr10{mr1}, r2, vr1
000a64  1f010ffb  addli r2, r30, -640
000a68  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
000a6c  9bc0f500  srli r1, r11, 15
000a70  7e0002e0  vmmov mr0, r4
000a74  9b801000  andi r1, r1, 1
000a78  6242b110  vscatter.mh vr11{mr0}, vr4{r2}
000a7c  3bb00000  bneq r1, zero, 12
000a80  7ab2f440  vextracti.s r4, 15(vr9)
000a84  5b010000  j 8
000a88  7a32f540  vextracti.s r4, 15(vr10)
000a8c  9bc0e500  srli r1, r11, 14
000a90  9b801000  andi r1, r1, 1
000a94  3bb00000  bneq r1, zero, 12
000a98  7ab7e440  vextracti.s r14, 14(vr9)
000a9c  5b010000  j 8
000aa0  7a37e540  vextracti.s r14, 14(vr10)
000aa4  9bc0d500  srli r1, r11, 13
000aa8  9b801000  andi r1, r1, 1
000aac  3bb00000  bneq r1, zero, 12
000ab0  fab6d440  vextracti.s r13, 13(vr9)
000ab4  5b010000  j 8
000ab8  fa36d540  vextracti.s r13, 13(vr10)
000abc  9bc0c500  srli r1, r11, 12
000ac0  9b801000  andi r1, r1, 1
000ac4  3bb00000  bneq r1, zero, 12
000ac8  fab0c440  vextracti.s r1, 12(vr9)
000acc  5b010000  j 8
000ad0  fa30c540  vextracti.s r1, 12(vr10)
000ad4  1bc1b500  srli r2, r11, 11
000ad8  1b011100  andi r2, r2, 1
000adc  3b300100  bneq r2, zero, 12
000ae0  7ab6b440  vextracti.s r12, 11(vr9)
000ae4  5b010000  j 8
000ae8  7a36b540  vextracti.s r12, 11(vr10)
000aec  1bc1a500  srli r2, r11, 10
000af0  1b011100  andi r2, r2, 1
000af4  3b300100  bneq r2, zero, 12
000af8  fab4a440  vextracti.s r9, 10(vr9)
000afc  5b010000  j 8
000b00  fa34a540  vextracti.s r9, 10(vr10)
000b04  1bc19500  srli r2, r11, 9
000b08  1b011100  andi r2, r2, 1
000b0c  3b300100  bneq r2, zero, 12
000b10  7ab59440  vextracti.s r10, 9(vr9)
000b14  5b010000  j 8
000b18  7a359540  vextracti.s r10, 9(vr10)
000b1c  1bc18500  srli r2, r11, 8
000b20  1b011100  andi r2, r2, 1
000b24  3b300100  bneq r2, zero, 12
000b28  7ab98440  vextracti.s r18, 8(vr9)
000b2c  5b010000  j 8
000b30  7a398540  vextracti.s r18, 8(vr10)
000b34  1bc17500  srli r2, r11, 7
000b38  1b011100  andi r2, r2, 1
000b3c  3b300100  bneq r2, zero, 12
000b40  fab77440  vextracti.s r15, 7(vr9)
000b44  5b010000  j 8
000b48  fa377540  vextracti.s r15, 7(vr10)
000b4c  1bc16500  srli r2, r11, 6
000b50  1b011100  andi r2, r2, 1
000b54  3b300100  bneq r2, zero, 12
000b58  7abb6440  vextracti.s r22, 6(vr9)
000b5c  5b010000  j 8
000b60  7a3b6540  vextracti.s r22, 6(vr10)
000b64  1bc15500  srli r2, r11, 5
000b68  1b011100  andi r2, r2, 1
000b6c  3b300100  bneq r2, zero, 12
000b70  fabb5440  vextracti.s r23, 5(vr9)
000b74  5b010000  j 8
000b78  fa3b5540  vextracti.s r23, 5(vr10)
000b7c  1bc14500  srli r2, r11, 4
000b80  1b011100  andi r2, r2, 1
000b84  3b300100  bneq r2, zero, 12
000b88  7abc4440  vextracti.s r24, 4(vr9)
000b8c  5b010000  j 8
000b90  7a3c4540  vextracti.s r24, 4(vr10)
000b94  1bc13500  srli r2, r11, 3
000b98  1b011100  andi r2, r2, 1
000b9c  3b300100  bneq r2, zero, 12
000ba0  fabc3440  vextracti.s r25, 3(vr9)
000ba4  5b010000  j 8
000ba8  fa3c3540  vextracti.s r25, 3(vr10)
000bac  1bc12500  srli r2, r11, 2
000bb0  1b011100  andi r2, r2, 1
000bb4  3b300100  bneq r2, zero, 12
000bb8  7abd2440  vextracti.s r26, 2(vr9)
000bbc  5b010000  j 8
000bc0  7a3d2540  vextracti.s r26, 2(vr10)
000bc4  1bc11500  srli r2, r11, 1
000bc8  1b011100  andi r2, r2, 1
000bcc  3b600100  bneq r2, zero, 24
000bd0  7ab11440  vextracti.s r2, 1(vr9)
000bd4  9b851500  andi r11, r11, 1
000bd8  37e00500  beq r11, zero, 24
000bdc  fa350540  vextracti.s r11, 0(vr10)
000be0  db020000  j 20
000be4  7a311540  vextracti.s r2, 1(vr10)
000be8  9b851500  andi r11, r11, 1
000bec  bbcf05fe  bneq r11, zero, -16
000bf0  fab50440  vextracti.s r11, 0(vr9)
000bf4  92300002  vadd.s.mz vr1{mr1}, zero, vr0
000bf8  1f100000  addli zero, zero, 1
000bfc  12948802  vadd.f.mz.rn vr8{mr1}, r17, vr8
000c00  0e948202  vmul.f.mz.rn vr8{mr1}, vr5, vr8
000c04  7e0000e0  vmmov mr0, zero
000c08  17200000  xor zero, zero, zero
000c0c  eaa01530  vor.u.mh vr1{mr0}, r11, vr1
000c10  9f250000  addli r11, zero, 2
000c14  eeb281c2  vsrl.s.mz vr5{mr1}, vr3, vr8
000c18  e61404c0  vabs.f vr9, vr8
000c1c  7e8005e0  vmmov mr0, r11
000c20  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000c24  1f410000  addli r2, zero, 4
000c28  7e0001e0  vmmov mr0, r2
000c2c  1f011000  addli r2, zero, 8
000c30  ea201d30  vor.u.mh vr1{mr0}, r26, vr1
000c34  7e0001e0  vmmov mr0, r2
000c38  1f012000  addli r2, zero, 16
000c3c  eaa01c30  vor.u.mh vr1{mr0}, r25, vr1
000c40  7e0001e0  vmmov mr0, r2
000c44  1f014000  addli r2, zero, 32
000c48  ea201c30  vor.u.mh vr1{mr0}, r24, vr1
000c4c  7e0001e0  vmmov mr0, r2
000c50  1f018000  addli r2, zero, 64
000c54  eaa01b30  vor.u.mh vr1{mr0}, r23, vr1
000c58  7e0001e0  vmmov mr0, r2
000c5c  1f010001  addli r2, zero, 128
000c60  ea201b30  vor.u.mh vr1{mr0}, r22, vr1
000c64  7e0001e0  vmmov mr0, r2
000c68  1f010004  addli r2, zero, 512
000c6c  eaa01730  vor.u.mh vr1{mr0}, r15, vr1
000c70  7e0001e0  vmmov mr0, r2
000c74  1f010008  addli r2, zero, 1024
000c78  ea201934  vor.u.mh vr1{mr2}, r18, vr1
000c7c  ea201530  vor.u.mh vr1{mr0}, r10, vr1
000c80  7e0001e0  vmmov mr0, r2
000c84  1f010010  addli r2, zero, 2048
000c88  eaa01430  vor.u.mh vr1{mr0}, r9, vr1
000c8c  7e0001e0  vmmov mr0, r2
000c90  1f010020  addli r2, zero, 4096
000c94  ea201630  vor.u.mh vr1{mr0}, r12, vr1
000c98  7e0001e0  vmmov mr0, r2
000c9c  1f010ffb  addli r2, r30, -640
000ca0  1f014100  addli r2, r2, 32
000ca4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000ca8  9f100000  addli r1, zero, 1
000cac  eab25002  vand.s.mz vr5{mr1}, r1, vr5
000cb0  9f000040  addli r1, zero, 8192
000cb4  7e8000e0  vmmov mr0, r1
000cb8  eaa01630  vor.u.mh vr1{mr0}, r13, vr1
000cbc  76209142  vlt.u.mz mr0{mr1}, vr2, vr9
000cc0  96325402  vadd.s.mz vr5{mr1}, vr8, vr5
000cc4  fe0000a0  vmmov r1, mr0
000cc8  ea201736  vor.u.mh vr1{mr3}, r14, vr1
000ccc  e344fffa  loadli.w r9,  -644(r30)
000cd0  92b25402  vadd.s.mz vr5{mr1}, r9, vr5
000cd4  ab840000  lui r9, 8
000cd8  7e8004e0  vmmov mr0, r9
000cdc  ab044000  lui r9, 1024
000ce0  ea201230  vor.u.mh vr1{mr0}, r4, vr1
000ce4  1bc2f000  srli r4, r1, 15
000ce8  6ab48422  vor.s.mz vr8{mr1}, r9, vr8
000cec  aba4aaaa  lui r9, 699050
000cf0  1b021200  andi r4, r4, 1
000cf4  9fa45415  addli r9, r9, 2730
000cf8  7e8004e0  vmmov mr0, r9
000cfc  62421110  vscatter.mh vr1{mr0}, vr4{r2}
000d00  3b300200  bneq r4, zero, 12
000d04  7ab1f240  vextracti.s r2, 15(vr5)
000d08  5b010000  j 8
000d0c  7a31f440  vextracti.s r2, 15(vr8)
000d10  674f2ff8  storeli.w r2, -780(r30)
000d14  1bc1e000  srli r2, r1, 14
000d18  1b011100  andi r2, r2, 1
000d1c  3b300100  bneq r2, zero, 12
000d20  7ab7e240  vextracti.s r14, 14(vr5)
000d24  5b010000  j 8
000d28  7a37e440  vextracti.s r14, 14(vr8)
000d2c  1bc1d000  srli r2, r1, 13
000d30  1b011100  andi r2, r2, 1
000d34  3b300100  bneq r2, zero, 12
000d38  fab6d240  vextracti.s r13, 13(vr5)
000d3c  5b010000  j 8
000d40  fa36d440  vextracti.s r13, 13(vr8)
000d44  1bc1c000  srli r2, r1, 12
000d48  1b011100  andi r2, r2, 1
000d4c  3b300100  bneq r2, zero, 12
000d50  fab5c240  vextracti.s r11, 12(vr5)
000d54  5b010000  j 8
000d58  fa35c440  vextracti.s r11, 12(vr8)
000d5c  1bc1b000  srli r2, r1, 11
000d60  1b011100  andi r2, r2, 1
000d64  3b300100  bneq r2, zero, 12
000d68  7ab6b240  vextracti.s r12, 11(vr5)
000d6c  5b010000  j 8
000d70  7a36b440  vextracti.s r12, 11(vr8)
000d74  1bc1a000  srli r2, r1, 10
000d78  1b011100  andi r2, r2, 1
000d7c  3b300100  bneq r2, zero, 12
000d80  fab4a240  vextracti.s r9, 10(vr5)
000d84  5b010000  j 8
000d88  fa34a440  vextracti.s r9, 10(vr8)
000d8c  1bc19000  srli r2, r1, 9
000d90  1b011100  andi r2, r2, 1
000d94  3b300100  bneq r2, zero, 12
000d98  7ab59240  vextracti.s r10, 9(vr5)
000d9c  5b010000  j 8
000da0  7a359440  vextracti.s r10, 9(vr8)
000da4  1bc18000  srli r2, r1, 8
000da8  1b011100  andi r2, r2, 1
000dac  3b300100  bneq r2, zero, 12
000db0  7ab98240  vextracti.s r18, 8(vr5)
000db4  5b010000  j 8
000db8  7a398440  vextracti.s r18, 8(vr8)
000dbc  1bc17000  srli r2, r1, 7
000dc0  1b011100  andi r2, r2, 1
000dc4  3b300100  bneq r2, zero, 12
000dc8  fab77240  vextracti.s r15, 7(vr5)
000dcc  5b010000  j 8
000dd0  fa377440  vextracti.s r15, 7(vr8)
000dd4  1bc16000  srli r2, r1, 6
000dd8  1b011100  andi r2, r2, 1
000ddc  3b300100  bneq r2, zero, 12
000de0  7abb6240  vextracti.s r22, 6(vr5)
000de4  5b010000  j 8
000de8  7a3b6440  vextracti.s r22, 6(vr8)
000dec  1bc15000  srli r2, r1, 5
000df0  1b011100  andi r2, r2, 1
000df4  3b300100  bneq r2, zero, 12
000df8  fabb5240  vextracti.s r23, 5(vr5)
000dfc  5b010000  j 8
000e00  fa3b5440  vextracti.s r23, 5(vr8)
000e04  1bc14000  srli r2, r1, 4
000e08  1b011100  andi r2, r2, 1
000e0c  3b300100  bneq r2, zero, 12
000e10  7abc4240  vextracti.s r24, 4(vr5)
000e14  5b010000  j 8
000e18  7a3c4440  vextracti.s r24, 4(vr8)
000e1c  1bc13000  srli r2, r1, 3
000e20  1b011100  andi r2, r2, 1
000e24  3b300100  bneq r2, zero, 12
000e28  fabc3240  vextracti.s r25, 3(vr5)
000e2c  5b010000  j 8
000e30  fa3c3440  vextracti.s r25, 3(vr8)
000e34  1bc12000  srli r2, r1, 2
000e38  1b011100  andi r2, r2, 1
000e3c  3b300100  bneq r2, zero, 12
000e40  7abd2240  vextracti.s r26, 2(vr5)
000e44  5b010000  j 8
000e48  7a3d2440  vextracti.s r26, 2(vr8)
000e4c  1bc11000  srli r2, r1, 1
000e50  1f820100  addli r4, r3, 0
000e54  1b011100  andi r2, r2, 1
000e58  3b300100  bneq r2, zero, 12
000e5c  7ab11240  vextracti.s r2, 1(vr5)
000e60  5b010000  j 8
000e64  7a311440  vextracti.s r2, 1(vr8)
000e68  e301fffa  loadli.w r3,  -648(r30)
000e6c  6340fff9  loadli.w zero,  -772(r30)
000e70  9b801000  andi r1, r1, 1
000e74  8a906102  vmul.f.mz.rn vr1{mr1}, r3, vr6
000e78  e341effa  loadli.w r3,  -652(r30)
000e7c  7e0000e0  vmmov mr0, zero
000e80  17200000  xor zero, zero, zero
000e84  6300fff9  loadli.w zero,  -776(r30)
000e88  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
000e8c  e301effa  loadli.w r3,  -656(r30)
000e90  8e906002  vmul.f.mz.rn vr1{mr1}, vr1, vr6
000e94  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
000e98  e341dffa  loadli.w r3,  -660(r30)
000e9c  8e906002  vmul.f.mz.rn vr1{mr1}, vr1, vr6
000ea0  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
000ea4  e301dffa  loadli.w r3,  -664(r30)
000ea8  8e906002  vmul.f.mz.rn vr1{mr1}, vr1, vr6
000eac  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
000eb0  ab0180bf  lui r3, 784384
000eb4  8e906002  vmul.f.mz.rn vr1{mr1}, vr1, vr6
000eb8  8e901302  vmul.f.mz.rn vr1{mr1}, vr7, vr1
000ebc  1a931802  vsub.f.mz.rn vr6{mr1}, r17, vr1
000ec0  8a906800  vmul.f.mz.rn vr1{mr0}, r17, vr6
000ec4  7e0000e0  vmmov mr0, zero
000ec8  17200000  xor zero, zero, zero
000ecc  0a936100  vmul.f.mz.rn vr6{mr0}, r3, vr6
000ed0  3bb00000  bneq r1, zero, 12
000ed4  fab00240  vextracti.s r1, 0(vr5)
000ed8  5b010000  j 8
000edc  fa300440  vextracti.s r1, 0(vr8)
000ee0  92320002  vadd.s.mz vr5{mr1}, zero, vr0
000ee4  9f010200  addli r3, r4, 0
000ee8  1f120000  addli r4, zero, 1
000eec  96906002  vadd.f.mz.rn vr1{mr1}, vr1, vr6
000ef0  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
000ef4  7e0002e0  vmmov mr0, r4
000ef8  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000efc  9f200000  addli r1, zero, 2
000f00  7e8000e0  vmmov mr0, r1
000f04  9f400000  addli r1, zero, 4
000f08  ea225130  vor.u.mh vr5{mr0}, r2, vr5
000f0c  7e8000e0  vmmov mr0, r1
000f10  9f001000  addli r1, zero, 8
000f14  2b014000  lui r2, 1024
000f18  ea225d30  vor.u.mh vr5{mr0}, r26, vr5
000f1c  7e8000e0  vmmov mr0, r1
000f20  9f002000  addli r1, zero, 16
000f24  eaa25c30  vor.u.mh vr5{mr0}, r25, vr5
000f28  7e8000e0  vmmov mr0, r1
000f2c  9f004000  addli r1, zero, 32
000f30  ea225c30  vor.u.mh vr5{mr0}, r24, vr5
000f34  7e8000e0  vmmov mr0, r1
000f38  9f008000  addli r1, zero, 64
000f3c  eaa25b30  vor.u.mh vr5{mr0}, r23, vr5
000f40  7e8000e0  vmmov mr0, r1
000f44  9f000001  addli r1, zero, 128
000f48  ea225b30  vor.u.mh vr5{mr0}, r22, vr5
000f4c  7e8000e0  vmmov mr0, r1
000f50  9f000004  addli r1, zero, 512
000f54  eaa25730  vor.u.mh vr5{mr0}, r15, vr5
000f58  7e8000e0  vmmov mr0, r1
000f5c  9f000008  addli r1, zero, 1024
000f60  ea225934  vor.u.mh vr5{mr2}, r18, vr5
000f64  ea225530  vor.u.mh vr5{mr0}, r10, vr5
000f68  7e8000e0  vmmov mr0, r1
000f6c  9f000010  addli r1, zero, 2048
000f70  eaa25430  vor.u.mh vr5{mr0}, r9, vr5
000f74  42130fa2  vload_mask16.mz vr6{mr1}, 1280(r30)
000f78  7e8000e0  vmmov mr0, r1
000f7c  9f000020  addli r1, zero, 4096
000f80  ea225630  vor.u.mh vr5{mr0}, r12, vr5
000f84  7e8000e0  vmmov mr0, r1
000f88  9f100000  addli r1, zero, 1
000f8c  0e131302  vmul.f.mz.rn vr6{mr1}, vr6, vr1
000f90  eaa25530  vor.u.mh vr5{mr0}, r11, vr5
000f94  eeb061c2  vsrl.s.mz vr1{mr1}, vr3, vr6
000f98  e61103c0  vabs.f vr3, vr6
000f9c  eab01002  vand.s.mz vr1{mr1}, r1, vr1
000fa0  9f000040  addli r1, zero, 8192
000fa4  7e8000e0  vmmov mr0, r1
000fa8  eaa25630  vor.u.mh vr5{mr0}, r13, vr5
000fac  76203142  vlt.u.mz mr0{mr1}, vr2, vr3
000fb0  6a316122  vor.s.mz vr2{mr1}, r2, vr6
000fb4  2ba1aaaa  lui r2, 699050
000fb8  96301302  vadd.s.mz vr1{mr1}, vr6, vr1
000fbc  fe0600a0  vmmov r13, mr0
000fc0  1f215115  addli r2, r2, 2730
000fc4  ea225736  vor.u.mh vr5{mr3}, r14, vr5
000fc8  e340fffa  loadli.w r1,  -644(r30)
000fcc  92b01002  vadd.s.mz vr1{mr1}, r1, vr1
000fd0  ab800000  lui r1, 8
000fd4  7e8000e0  vmmov mr0, r1
000fd8  e340eff9  loadli.w r1,  -780(r30)
000fdc  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000fe0  9bc0f600  srli r1, r13, 15
000fe4  7e0001e0  vmmov mr0, r2
000fe8  6341bffa  loadli.w r2,  -676(r30)
000fec  9b801000  andi r1, r1, 1
000ff0  62425110  vscatter.mh vr5{mr0}, vr4{r2}
000ff4  3bb00000  bneq r1, zero, 12
000ff8  fab0f040  vextracti.s r1, 15(vr1)
000ffc  5b010000  j 8
001000  fa30f140  vextracti.s r1, 15(vr2)
001004  1bc1e600  srli r2, r13, 14
001008  1b011100  andi r2, r2, 1
00100c  3b300100  bneq r2, zero, 12
001010  7ab2e040  vextracti.s r4, 14(vr1)
001014  5b010000  j 8
001018  7a32e140  vextracti.s r4, 14(vr2)
00101c  1bc1d600  srli r2, r13, 13
001020  1b011100  andi r2, r2, 1
001024  3b300100  bneq r2, zero, 12
001028  fab5d040  vextracti.s r11, 13(vr1)
00102c  5b010000  j 8
001030  fa35d140  vextracti.s r11, 13(vr2)
001034  1bc1c600  srli r2, r13, 12
001038  1b011100  andi r2, r2, 1
00103c  3b300100  bneq r2, zero, 12
001040  7ab6c040  vextracti.s r12, 12(vr1)
001044  5b010000  j 8
001048  7a36c140  vextracti.s r12, 12(vr2)
00104c  1bc1b600  srli r2, r13, 11
001050  1b011100  andi r2, r2, 1
001054  3b300100  bneq r2, zero, 12
001058  fab4b040  vextracti.s r9, 11(vr1)
00105c  5b010000  j 8
001060  fa34b140  vextracti.s r9, 11(vr2)
001064  1bc1a600  srli r2, r13, 10
001068  1b011100  andi r2, r2, 1
00106c  3b300100  bneq r2, zero, 12
001070  7ab5a040  vextracti.s r10, 10(vr1)
001074  5b010000  j 8
001078  7a35a140  vextracti.s r10, 10(vr2)
00107c  1bc19600  srli r2, r13, 9
001080  1b011100  andi r2, r2, 1
001084  3b300100  bneq r2, zero, 12
001088  7ab79040  vextracti.s r14, 9(vr1)
00108c  5b010000  j 8
001090  7a379140  vextracti.s r14, 9(vr2)
001094  1bc18600  srli r2, r13, 8
001098  1b011100  andi r2, r2, 1
00109c  3b300100  bneq r2, zero, 12
0010a0  fab78040  vextracti.s r15, 8(vr1)
0010a4  5b010000  j 8
0010a8  fa378140  vextracti.s r15, 8(vr2)
0010ac  1bc17600  srli r2, r13, 7
0010b0  1b011100  andi r2, r2, 1
0010b4  3b300100  bneq r2, zero, 12
0010b8  7ab97040  vextracti.s r18, 7(vr1)
0010bc  5b010000  j 8
0010c0  7a397140  vextracti.s r18, 7(vr2)
0010c4  1bc16600  srli r2, r13, 6
0010c8  1b011100  andi r2, r2, 1
0010cc  3b300100  bneq r2, zero, 12
0010d0  7abb6040  vextracti.s r22, 6(vr1)
0010d4  5b010000  j 8
0010d8  7a3b6140  vextracti.s r22, 6(vr2)
0010dc  1bc15600  srli r2, r13, 5
0010e0  1b011100  andi r2, r2, 1
0010e4  3b300100  bneq r2, zero, 12
0010e8  fabb5040  vextracti.s r23, 5(vr1)
0010ec  5b010000  j 8
0010f0  fa3b5140  vextracti.s r23, 5(vr2)
0010f4  1bc14600  srli r2, r13, 4
0010f8  1b011100  andi r2, r2, 1
0010fc  3b300100  bneq r2, zero, 12
001100  7abc4040  vextracti.s r24, 4(vr1)
001104  5b010000  j 8
001108  7a3c4140  vextracti.s r24, 4(vr2)
00110c  1bc13600  srli r2, r13, 3
001110  1b011100  andi r2, r2, 1
001114  3b300100  bneq r2, zero, 12
001118  fabc3040  vextracti.s r25, 3(vr1)
00111c  5b010000  j 8
001120  fa3c3140  vextracti.s r25, 3(vr2)
001124  1bc12600  srli r2, r13, 2
001128  1b011100  andi r2, r2, 1
00112c  3b300100  bneq r2, zero, 12
001130  7ab12040  vextracti.s r2, 2(vr1)
001134  5b010000  j 8
001138  7a312140  vextracti.s r2, 2(vr2)
00113c  1bcd1600  srli r26, r13, 1
001140  1b0d1d00  andi r26, r26, 1
001144  3b500d00  bneq r26, zero, 20
001148  7abd1040  vextracti.s r26, 1(vr1)
00114c  9b861600  andi r13, r13, 1
001150  b78106f8  beq r13, zero, -4000
001154  5b020000  j 16
001158  7a3d1140  vextracti.s r26, 1(vr2)
00115c  9b861600  andi r13, r13, 1
001160  37c106f8  beq r13, zero, -4016
001164  fa360140  vextracti.s r13, 0(vr2)
001168  db09feff  j -4020
00116c  9f0e8ff9  addli sp, r30, -832
001170  9f8e8e06  addli sp, sp, 832
001174  00a00300  mfence { lm, sm, gm }
001178  00100000  exit
00117c  00100000  exit
001180  00100000  exit
001184  00100000  exit
001188  00100000  exit
00118c  00100000  exit
001190  00100000  exit
001194  00100000  exit
001198  00100000  exit
00119c  00100000  exit
0011a0  00100000  exit
0011a4  00100000  exit
0011a8  00100000  exit
0011ac  00100000  exit
0011b0  00100000  exit
0011b4  00100000  exit
0011b8  00100000  exit
0011bc  00100000  exit
0011c0  00100000  exit
0011c4  00100000  exit
0011c8  00100000  exit
0011cc  00100000  exit
0011d0  00100000  exit
0011d4  00100000  exit
0011d8  00100000  exit
0011dc  00100000  exit
0011e0  00100000  exit
0011e4  00100000  exit
0011e8  00100000  exit
0011ec  00100000  exit
0011f0  00100000  exit
0011f4  00100000  exit
0011f8  00100000  exit
0011fc  00100000  exit
001200  00100000  exit
001204  00100000  exit
001208  00100000  exit
00120c  00100000  exit
001210  00100000  exit
001214  00100000  exit
001218  00100000  exit
00121c  00100000  exit
001220  00100000  exit
001224  00100000  exit
001228  00100000  exit
00122c  00100000  exit
001230  00100000  exit
001234  00100000  exit
001238  00100000  exit
00123c  00100000  exit
001240  00100000  exit
001244  00100000  exit
001248  00100000  exit
00124c  00100000  exit
001250  00100000  exit
001254  00100000  exit
001258  00100000  exit
00125c  00100000  exit
001260  00100000  exit
001264  00100000  exit
001268  00100000  exit
00126c  00100000  exit
001270  00100000  exit
001274  00100000  exit
001278  00100000  exit
00127c  00100000  exit
001280  00100000  exit
001284  00100000  exit
001288  00100000  exit
00128c  00100000  exit
001290  00100000  exit
001294  00100000  exit
001298  00100000  exit
00129c  00100000  exit
0012a0  00100000  exit
0012a4  00100000  exit
0012a8  00100000  exit
0012ac  00100000  exit
0012b0  00100000  exit
0012b4  00100000  exit
0012b8  00100000  exit
0012bc  00100000  exit
0012c0  00100000  exit
0012c4  00100000  exit
0012c8  00100000  exit
0012cc  00100000  exit
0012d0  00100000  exit
0012d4  00100000  exit
0012d8  00100000  exit
0012dc  00100000  exit
0012e0  00100000  exit
0012e4  00100000  exit
0012e8  00100000  exit
0012ec  00100000  exit
0012f0  00100000  exit
0012f4  00100000  exit
0012f8  00100000  exit
0012fc  00100000  exit
001300  00100000  exit
001304  00100000  exit
001308  00100000  exit
00130c  00100000  exit
001310  00100000  exit
001314  00100000  exit
001318  00100000  exit
00131c  00100000  exit
001320  00100000  exit
001324  00100000  exit
001328  00100000  exit
00132c  00100000  exit
001330  00100000  exit
001334  00100000  exit
001338  00100000  exit
00133c  00100000  exit
001340  00100000  exit
001344  00100000  exit
001348  00100000  exit
00134c  00100000  exit
001350  00100000  exit
001354  00100000  exit
001358  00100000  exit
00135c  00100000  exit
001360  00100000  exit
001364  00100000  exit
001368  00100000  exit
00136c  00100000  exit
001370  00100000  exit
001374  00100000  exit
001378  00100000  exit
00137c  00100000  exit
001380  00100000  exit
001384  00100000  exit
001388  00100000  exit
00138c  00100000  exit
001390  00100000  exit
001394  00100000  exit
001398  00100000  exit
00139c  00100000  exit
0013a0  00100000  exit
0013a4  00100000  exit
0013a8  00100000  exit
0013ac  00100000  exit
0013b0  00100000  exit
0013b4  00100000  exit
0013b8  00100000  exit
