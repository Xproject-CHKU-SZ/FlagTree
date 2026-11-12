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
0000dc  9f8e8efc  addli sp, sp, -448
0000e0  1f8f0e03  addli r30, sp, 384
0000e4  80510002  load_param_i r3, 0
0000e8  63412f00  loadli.w r2,  20(r30)
0000ec  e3002f00  loadli.w r1,  16(r30)
0000f0  63023f00  loadli.w r4,  24(r30)
0000f4  8b101120  mul.s r1, r2, r1
0000f8  8b904020  mul.s r1, r1, r4
0000fc  674a1ffc  storeli.w r1, -348(r30)
000100  4bf63004  ble.s r1, r3, 2460
000104  80300002  core_id r1
000108  00d10002  load_param_i r2, 1
00010c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000110  9f058ffd  addli r11, r30, -320
000114  9f068000  addli r13, zero, 64
000118  1f088ffe  addli r16, r30, -192
00011c  ab08803f  lui r17, 260096
000120  9f090ffe  addli r19, r30, -256
000124  1f0d8fff  addli r26, r30, -64
000128  1f0e0fff  addli r28, r30, -128
00012c  9bb05000  slli r1, r1, 5
000130  670a2ffc  storeli.w r2, -352(r30)
000134  2bd1873f  lui r2, 260221
000138  e7491ffc  storeli.w r1, -356(r30)
00013c  ab00353f  lui r1, 258896
000140  9b90304f  ori r1, r1, 1267
000144  e7091ffc  storeli.w r1, -360(r30)
000148  abb0a73e  lui r1, 256635
00014c  1b9a50a0  ori r20, r1, 2565
000150  9b1021c2  ori r1, r2, 3106
000154  2bf1b53f  lui r2, 260959
000158  e74b1ffc  storeli.w r1, -324(r30)
00015c  ab00babf  lui r1, 785312
000160  9b92300e  ori r5, r1, 227
000164  9b10310e  ori r1, r2, 227
000168  2b71823e  lui r2, 256039
00016c  e70b1ffc  storeli.w r1, -328(r30)
000170  aba091be  lui r1, 780570
000174  67495ffc  storeli.w r5, -364(r30)
000178  9b90e098  ori r1, r1, 2446
00017c  674b1ffc  storeli.w r1, -332(r30)
000180  9b106190  ori r1, r2, 2310
000184  2b01807f  lui r2, 522240
000188  670b1ffc  storeli.w r1, -336(r30)
00018c  9f002000  addli r1, zero, 16
000190  6a210122  vor.u.mz vr2{mr1}, r2, vr0
000194  eaa00022  vor.u.mz vr1{mr1}, r1, vr0
000198  ab700000  lui r1, 7
00019c  9b9cf0ff  ori r25, r1, 4095
0001a0  67099ffd  storeli.w r25, -368(r30)
0001a4  db210000  j 268
0001a8  7ab70140  vextracti.s r14, 0(vr3)
0001ac  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0001b0  1f100000  addli zero, zero, 1
0001b4  7e0000e0  vmmov mr0, zero
0001b8  17200000  xor zero, zero, zero
0001bc  ea213730  vor.u.mh vr3{mr0}, r14, vr3
0001c0  1f270000  addli r14, zero, 2
0001c4  7e0007e0  vmmov mr0, r14
0001c8  1f470000  addli r14, zero, 4
0001cc  eaa13d30  vor.u.mh vr3{mr0}, r27, vr3
0001d0  7e0007e0  vmmov mr0, r14
0001d4  1f071000  addli r14, zero, 8
0001d8  ea213c30  vor.u.mh vr3{mr0}, r24, vr3
0001dc  7e0007e0  vmmov mr0, r14
0001e0  1f072000  addli r14, zero, 16
0001e4  eaa13b30  vor.u.mh vr3{mr0}, r23, vr3
0001e8  7e0007e0  vmmov mr0, r14
0001ec  1f074000  addli r14, zero, 32
0001f0  ea213b30  vor.u.mh vr3{mr0}, r22, vr3
0001f4  7e0007e0  vmmov mr0, r14
0001f8  1f078000  addli r14, zero, 64
0001fc  eaa13a30  vor.u.mh vr3{mr0}, r21, vr3
000200  7e0007e0  vmmov mr0, r14
000204  1f070001  addli r14, zero, 128
000208  eaa13730  vor.u.mh vr3{mr0}, r15, vr3
00020c  7e0007e0  vmmov mr0, r14
000210  1f070002  addli r14, zero, 256
000214  ea213930  vor.u.mh vr3{mr0}, r18, vr3
000218  7e0007e0  vmmov mr0, r14
00021c  ea213630  vor.u.mh vr3{mr0}, r12, vr3
000220  1f060004  addli r12, zero, 512
000224  7e0006e0  vmmov mr0, r12
000228  eaa13530  vor.u.mh vr3{mr0}, r11, vr3
00022c  9f050008  addli r11, zero, 1024
000230  7e8005e0  vmmov mr0, r11
000234  9f058ffd  addli r11, r30, -320
000238  ea213230  vor.u.mh vr3{mr0}, r4, vr3
00023c  1f020010  addli r4, zero, 2048
000240  7e0002e0  vmmov mr0, r4
000244  1f020020  addli r4, zero, 4096
000248  ea213330  vor.u.mh vr3{mr0}, r6, vr3
00024c  7e0002e0  vmmov mr0, r4
000250  1f020040  addli r4, zero, 8192
000254  2b0300f0  lui r6, 983040
000258  ea213530  vor.u.mh vr3{mr0}, r10, vr3
00025c  7e0002e0  vmmov mr0, r4
000260  2b420000  lui r4, 4
000264  eaa13430  vor.u.mh vr3{mr0}, r9, vr3
000268  7e0002e0  vmmov mr0, r4
00026c  1f824500  addli r4, r11, 32
000270  ea213130  vor.u.mh vr3{mr0}, r2, vr3
000274  2b810000  lui r2, 8
000278  7e0001e0  vmmov mr0, r2
00027c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
000280  eb508f00  load.d r[2:3], 8(r30)
000284  8ba07010  add.ul r[2:3], r[2:3], r[8:9]
000288  62423214  vscatter.mh vr3{mr2}, vr4{r4}
00028c  17926600  or r4, r13, r6
000290  00a00000  mfence { lm }
000294  7fb2b000  s_lm2gm r4, r11, 0(r[2:3])
000298  e3004ffd  loadli.w r1,  -352(r30)
00029c  00a00000  mfence { lm }
0002a0  8b911110  add.s r3, r3, r1
0002a4  e3404ffd  loadli.w r1,  -348(r30)
0002a8  3fa01100  blt.s r3, r1, 8
0002ac  5bfe0000  j 2032
0002b0  e3003f00  loadli.w r1,  24(r30)
0002b4  63412f00  loadli.w r2,  20(r30)
0002b8  1f130000  addli r6, zero, 1
0002bc  eb540f00  load.d r[10:11], 0(r30)
0002c0  2b0200f0  lui r4, 983040
0002c4  8b901130  div.s r1, r3, r1
0002c8  8b902030  div.s r1, r1, r2
0002cc  63413ffd  loadli.w r2,  -356(r30)
0002d0  9bb0b000  slli r1, r1, 11
0002d4  8b902010  add.s r1, r1, r2
0002d8  b3900028  sext_int2long r[2:3], r1
0002dc  97b36002  sll.d r[8:9], r[2:3], r6
0002e0  97904600  or r1, r13, r4
0002e4  8ba47410  add.ul r[10:11], r[10:11], r[8:9]
0002e8  ffa0b400  l_gm2lm r1, r11, 0(r[10:11])
0002ec  ab0080bf  lui r1, 784384
0002f0  00a00000  mfence { lm }
0002f4  c2118fc3  vload_mask16.mz vr3{mr1}, 1728(r30)
0002f8  63013ffd  loadli.w r2,  -360(r30)
0002fc  66423080  vmerge_l.hf vr4, vr0, vr3
000300  8a124102  vmul.f.mz.rn vr5{mr1}, r2, vr4
000304  72105042  vlt.f.mz mr0{mr1}, zero, vr5
000308  8e945202  vmul.f.mz.rn vr9{mr1}, vr5, vr5
00030c  664430a0  vmerge_h.hf vr8, vr0, vr3
000310  fe010040  vmnot mr3, mr0
000314  0a935800  vmul.f.mz.rn vr6{mr0}, r17, vr5
000318  8a935006  vmul.f.mz.rn vr7{mr3}, r1, vr5
00031c  ab00003f  lui r1, 258048
000320  0a924002  vmul.f.mz.rn vr4{mr1}, r1, vr4
000324  8a918002  vmul.f.mz.rn vr3{mr1}, r1, vr8
000328  8a128102  vmul.f.mz.rn vr5{mr1}, r2, vr8
00032c  9f000000  addli r1, zero, 0
000330  46109802  vstore_mask16.mz vr9{mr1}, 0(r16)
000334  16137302  vadd.f.mz.rn vr6{mr1}, vr6, vr7
000338  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
00033c  00a00000  mfence { lm }
000340  0b911910  add.s r2, r19, r1
000344  ab04803f  lui r9, 260096
000348  0b121810  add.s r4, r16, r1
00034c  9fc00000  addli r1, r1, 4
000350  63030100  loadli.w r6,  0(r2)
000354  63050200  loadli.w r10,  0(r4)
000358  8b644351  fmac.f.rn r9, r6, r20
00035c  0b630558  neg.f r6, r10
000360  0f030300  exp.f.rn r6, r6
000364  8f849818  div.f.rn r9, r17, r9
000368  67006200  storeli.w r6, 0(r4)
00036c  67009100  storeli.w r9, 0(r2)
000370  3bcfd0fe  bneq r1, r13, -48
000374  00a00000  mfence { lm }
000378  72115042  vlt.f.mz mr2{mr1}, zero, vr5
00037c  0e955202  vmul.f.mz.rn vr10{mr1}, vr5, vr5
000380  42930902  vload_mask16.mz vr6{mr1}, 0(r19)
000384  e3407ffd  loadli.w r1,  -324(r30)
000388  42140802  vload_mask16.mz vr8{mr1}, 0(r16)
00038c  7e0001a0  vmmov zero, mr2
000390  e70a0ffc  storeli.w zero, -344(r30)
000394  17200000  xor zero, zero, zero
000398  4610ad02  vstore_mask16.mz vr10{mr1}, 0(r26)
00039c  8a936002  vmul.f.mz.rn vr7{mr1}, r1, vr6
0003a0  e3007ffd  loadli.w r1,  -328(r30)
0003a4  92937202  vadd.f.mz.rn vr7{mr1}, r5, vr7
0003a8  8e936302  vmul.f.mz.rn vr7{mr1}, vr7, vr6
0003ac  92937002  vadd.f.mz.rn vr7{mr1}, r1, vr7
0003b0  e3406ffd  loadli.w r1,  -332(r30)
0003b4  8e936302  vmul.f.mz.rn vr7{mr1}, vr7, vr6
0003b8  92937002  vadd.f.mz.rn vr7{mr1}, r1, vr7
0003bc  e3006ffd  loadli.w r1,  -336(r30)
0003c0  8e936302  vmul.f.mz.rn vr7{mr1}, vr7, vr6
0003c4  92937002  vadd.f.mz.rn vr7{mr1}, r1, vr7
0003c8  ab0080bf  lui r1, 784384
0003cc  0e936302  vmul.f.mz.rn vr6{mr1}, vr7, vr6
0003d0  8a935804  vmul.f.mz.rn vr7{mr2}, r17, vr5
0003d4  7e010140  vmnot mr2, mr2
0003d8  7e0001a0  vmmov zero, mr2
0003dc  e74a0ffc  storeli.w zero, -340(r30)
0003e0  17200000  xor zero, zero, zero
0003e4  0e136402  vmul.f.mz.rn vr6{mr1}, vr8, vr6
0003e8  0a945004  vmul.f.mz.rn vr8{mr2}, r1, vr5
0003ec  1a936802  vsub.f.mz.rn vr6{mr1}, r17, vr6
0003f0  96938302  vadd.f.mz.rn vr7{mr1}, vr7, vr8
0003f4  8a946800  vmul.f.mz.rn vr9{mr0}, r17, vr6
0003f8  0a936006  vmul.f.mz.rn vr6{mr3}, r1, vr6
0003fc  46107e02  vstore_mask16.mz vr7{mr1}, 0(r28)
000400  9f000000  addli r1, zero, 0
000404  00a00000  mfence { lm }
000408  96926402  vadd.f.mz.rn vr5{mr1}, vr9, vr6
00040c  0b111e10  add.s r2, r28, r1
000410  ab04803f  lui r9, 260096
000414  0b121d10  add.s r4, r26, r1
000418  9fc00000  addli r1, r1, 4
00041c  63030100  loadli.w r6,  0(r2)
000420  63050200  loadli.w r10,  0(r4)
000424  8b644351  fmac.f.rn r9, r6, r20
000428  0b630558  neg.f r6, r10
00042c  0f030300  exp.f.rn r6, r6
000430  8f849818  div.f.rn r9, r17, r9
000434  67006200  storeli.w r6, 0(r4)
000438  67009100  storeli.w r9, 0(r2)
00043c  3bcfd0fe  bneq r1, r13, -48
000440  00a00000  mfence { lm }
000444  92925802  vadd.f.mz.rn vr5{mr1}, r17, vr5
000448  8e135202  vmul.f.mz.rn vr7{mr1}, vr4, vr5
00044c  9f100000  addli r1, zero, 1
000450  2b014000  lui r2, 1024
000454  c2120e02  vload_mask16.mz vr5{mr1}, 0(r28)
000458  42130d02  vload_mask16.mz vr6{mr1}, 0(r26)
00045c  6eb270c2  vsrl.s.mz vr4{mr1}, vr1, vr7
000460  669403c0  vabs.f vr8, vr7
000464  6ab24002  vand.s.mz vr4{mr1}, r1, vr4
000468  76208142  vlt.u.mz mr0{mr1}, vr2, vr8
00046c  7e0700a0  vmmov r14, mr0
000470  9b40f700  srli r1, r14, 15
000474  16b24302  vadd.s.mz vr4{mr1}, vr7, vr4
000478  ea337122  vor.s.mz vr7{mr1}, r2, vr7
00047c  9b801000  andi r1, r1, 1
000480  12b24c02  vadd.s.mz vr4{mr1}, r25, vr4
000484  3bb00000  bneq r1, zero, 12
000488  7a31f240  vextracti.s r2, 15(vr4)
00048c  5b010000  j 8
000490  7ab1f340  vextracti.s r2, 15(vr7)
000494  9b40e700  srli r1, r14, 14
000498  9b801000  andi r1, r1, 1
00049c  3bb00000  bneq r1, zero, 12
0004a0  fa30e240  vextracti.s r1, 14(vr4)
0004a4  5b010000  j 8
0004a8  fab0e340  vextracti.s r1, 14(vr7)
0004ac  1b42d700  srli r4, r14, 13
0004b0  1b021200  andi r4, r4, 1
0004b4  3b300200  bneq r4, zero, 12
0004b8  fa3dd240  vextracti.s r27, 13(vr4)
0004bc  5b010000  j 8
0004c0  fabdd340  vextracti.s r27, 13(vr7)
0004c4  1b42c700  srli r4, r14, 12
0004c8  1b021200  andi r4, r4, 1
0004cc  3b300200  bneq r4, zero, 12
0004d0  fa34c240  vextracti.s r9, 12(vr4)
0004d4  5b010000  j 8
0004d8  fab4c340  vextracti.s r9, 12(vr7)
0004dc  1b42b700  srli r4, r14, 11
0004e0  1b021200  andi r4, r4, 1
0004e4  3b300200  bneq r4, zero, 12
0004e8  7a35b240  vextracti.s r10, 11(vr4)
0004ec  5b010000  j 8
0004f0  7ab5b340  vextracti.s r10, 11(vr7)
0004f4  1b42a700  srli r4, r14, 10
0004f8  1b021200  andi r4, r4, 1
0004fc  3b300200  bneq r4, zero, 12
000500  7a33a240  vextracti.s r6, 10(vr4)
000504  5b010000  j 8
000508  7ab3a340  vextracti.s r6, 10(vr7)
00050c  1b429700  srli r4, r14, 9
000510  1b021200  andi r4, r4, 1
000514  3b300200  bneq r4, zero, 12
000518  7a329240  vextracti.s r4, 9(vr4)
00051c  5b010000  j 8
000520  7ab29340  vextracti.s r4, 9(vr7)
000524  9b458700  srli r11, r14, 8
000528  9b851500  andi r11, r11, 1
00052c  3bb00500  bneq r11, zero, 12
000530  fa358240  vextracti.s r11, 8(vr4)
000534  5b010000  j 8
000538  fab58340  vextracti.s r11, 8(vr7)
00053c  1b467700  srli r12, r14, 7
000540  1b061600  andi r12, r12, 1
000544  3b300600  bneq r12, zero, 12
000548  7a367240  vextracti.s r12, 7(vr4)
00054c  5b010000  j 8
000550  7ab67340  vextracti.s r12, 7(vr7)
000554  9b476700  srli r15, r14, 6
000558  9b871700  andi r15, r15, 1
00055c  3bb00700  bneq r15, zero, 12
000560  7a396240  vextracti.s r18, 6(vr4)
000564  5b010000  j 8
000568  7ab96340  vextracti.s r18, 6(vr7)
00056c  9b475700  srli r15, r14, 5
000570  9b871700  andi r15, r15, 1
000574  3bb00700  bneq r15, zero, 12
000578  fa375240  vextracti.s r15, 5(vr4)
00057c  5b010000  j 8
000580  fab75340  vextracti.s r15, 5(vr7)
000584  9b4a4700  srli r21, r14, 4
000588  9b8a1a00  andi r21, r21, 1
00058c  3bb00a00  bneq r21, zero, 12
000590  fa3a4240  vextracti.s r21, 4(vr4)
000594  5b010000  j 8
000598  faba4340  vextracti.s r21, 4(vr7)
00059c  1b4b3700  srli r22, r14, 3
0005a0  1b0b1b00  andi r22, r22, 1
0005a4  3b300b00  bneq r22, zero, 12
0005a8  7a3b3240  vextracti.s r22, 3(vr4)
0005ac  5b010000  j 8
0005b0  7abb3340  vextracti.s r22, 3(vr7)
0005b4  9b4b2700  srli r23, r14, 2
0005b8  9b8b1b00  andi r23, r23, 1
0005bc  3bb00b00  bneq r23, zero, 12
0005c0  fa3b2240  vextracti.s r23, 2(vr4)
0005c4  5b010000  j 8
0005c8  fabb2340  vextracti.s r23, 2(vr7)
0005cc  1b4c1700  srli r24, r14, 1
0005d0  1b0c1c00  andi r24, r24, 1
0005d4  3b300c00  bneq r24, zero, 12
0005d8  7a3c1240  vextracti.s r24, 1(vr4)
0005dc  5b010000  j 8
0005e0  7abc1340  vextracti.s r24, 1(vr7)
0005e4  e3427ffd  loadli.w r5,  -324(r30)
0005e8  e30c7ffd  loadli.w r25,  -328(r30)
0005ec  63005ffd  loadli.w zero,  -344(r30)
0005f0  1b071700  andi r14, r14, 1
0005f4  0a945202  vmul.f.mz.rn vr8{mr1}, r5, vr5
0005f8  e3422ffd  loadli.w r5,  -364(r30)
0005fc  7e0000e0  vmmov mr0, zero
000600  17200000  xor zero, zero, zero
000604  63405ffd  loadli.w zero,  -340(r30)
000608  12948202  vadd.f.mz.rn vr8{mr1}, r5, vr8
00060c  0e145402  vmul.f.mz.rn vr8{mr1}, vr8, vr5
000610  12948c02  vadd.f.mz.rn vr8{mr1}, r25, vr8
000614  e34c6ffd  loadli.w r25,  -332(r30)
000618  0e145402  vmul.f.mz.rn vr8{mr1}, vr8, vr5
00061c  12948c02  vadd.f.mz.rn vr8{mr1}, r25, vr8
000620  e30c6ffd  loadli.w r25,  -336(r30)
000624  0e145402  vmul.f.mz.rn vr8{mr1}, vr8, vr5
000628  12948c02  vadd.f.mz.rn vr8{mr1}, r25, vr8
00062c  ab0c80bf  lui r25, 784384
000630  8e125402  vmul.f.mz.rn vr5{mr1}, vr8, vr5
000634  8e125302  vmul.f.mz.rn vr5{mr1}, vr6, vr5
000638  1a935802  vsub.f.mz.rn vr6{mr1}, r17, vr5
00063c  8a926800  vmul.f.mz.rn vr5{mr0}, r17, vr6
000640  7e0000e0  vmmov mr0, zero
000644  17200000  xor zero, zero, zero
000648  0a946c00  vmul.f.mz.rn vr8{mr0}, r25, vr6
00064c  3b300700  bneq r14, zero, 12
000650  7a370240  vextracti.s r14, 0(vr4)
000654  5b010000  j 8
000658  7ab70340  vextracti.s r14, 0(vr7)
00065c  1f100000  addli zero, zero, 1
000660  e30c2ffd  loadli.w r25,  -368(r30)
000664  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
000668  92925802  vadd.f.mz.rn vr5{mr1}, r17, vr5
00066c  7e0100e0  vmmov mr2, zero
000670  17200000  xor zero, zero, zero
000674  8e925102  vmul.f.mz.rn vr5{mr1}, vr3, vr5
000678  12330002  vadd.s.mz vr6{mr1}, zero, vr0
00067c  12320002  vadd.s.mz vr4{mr1}, zero, vr0
000680  eeb150c2  vsrl.s.mz vr3{mr1}, vr1, vr5
000684  e69302c0  vabs.f vr7, vr5
000688  6a236734  vor.u.mh vr6{mr2}, r14, vr6
00068c  1f270000  addli r14, zero, 2
000690  7e0007e0  vmmov mr0, r14
000694  1f470000  addli r14, zero, 4
000698  6a236c30  vor.u.mh vr6{mr0}, r24, vr6
00069c  7e0007e0  vmmov mr0, r14
0006a0  1f071000  addli r14, zero, 8
0006a4  fe0107e0  vmmov mr3, r14
0006a8  1f072000  addli r14, zero, 16
0006ac  6aa36b30  vor.u.mh vr6{mr0}, r23, vr6
0006b0  6a236b36  vor.u.mh vr6{mr3}, r22, vr6
0006b4  fe0101c0  vmmov mr3, mr2
0006b8  7e0107e0  vmmov mr2, r14
0006bc  1f074000  addli r14, zero, 32
0006c0  7e0007e0  vmmov mr0, r14
0006c4  1f078000  addli r14, zero, 64
0006c8  6aa36a34  vor.u.mh vr6{mr2}, r21, vr6
0006cc  6aa36730  vor.u.mh vr6{mr0}, r15, vr6
0006d0  7e0007e0  vmmov mr0, r14
0006d4  1f070001  addli r14, zero, 128
0006d8  6a236930  vor.u.mh vr6{mr0}, r18, vr6
0006dc  7e0007e0  vmmov mr0, r14
0006e0  6a236630  vor.u.mh vr6{mr0}, r12, vr6
0006e4  1f060002  addli r12, zero, 256
0006e8  7e0006e0  vmmov mr0, r12
0006ec  6aa36530  vor.u.mh vr6{mr0}, r11, vr6
0006f0  9f050004  addli r11, zero, 512
0006f4  7e8005e0  vmmov mr0, r11
0006f8  6a236230  vor.u.mh vr6{mr0}, r4, vr6
0006fc  1f020008  addli r4, zero, 1024
000700  7e0002e0  vmmov mr0, r4
000704  1f020010  addli r4, zero, 2048
000708  6a236330  vor.u.mh vr6{mr0}, r6, vr6
00070c  7e0002e0  vmmov mr0, r4
000710  1f020020  addli r4, zero, 4096
000714  6a236530  vor.u.mh vr6{mr0}, r10, vr6
000718  7e0002e0  vmmov mr0, r4
00071c  1f020040  addli r4, zero, 8192
000720  6aa36430  vor.u.mh vr6{mr0}, r9, vr6
000724  7e0002e0  vmmov mr0, r4
000728  2b420000  lui r4, 4
00072c  6aa36d30  vor.u.mh vr6{mr0}, r27, vr6
000730  7e0002e0  vmmov mr0, r4
000734  2ba2aaaa  lui r4, 699050
000738  1f225215  addli r4, r4, 2730
00073c  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
000740  ab800000  lui r1, 8
000744  7e8000e0  vmmov mr0, r1
000748  9f200000  addli r1, zero, 2
00074c  6a236130  vor.u.mh vr6{mr0}, r2, vr6
000750  6a424036  vor.hf.mh vr4{mr3}, zero, vr4
000754  fe8100e0  vmmov mr3, r1
000758  9f400000  addli r1, zero, 4
00075c  1f011000  addli r2, zero, 8
000760  6a424036  vor.hf.mh vr4{mr3}, zero, vr4
000764  fe8100e0  vmmov mr3, r1
000768  9f200000  addli r1, zero, 2
00076c  6a424036  vor.hf.mh vr4{mr3}, zero, vr4
000770  fe0101e0  vmmov mr3, r2
000774  1f014000  addli r2, zero, 32
000778  6ac24036  vor.hf.mh vr4{mr3}, r1, vr4
00077c  9f400000  addli r1, zero, 4
000780  6a424034  vor.hf.mh vr4{mr2}, zero, vr4
000784  7e0101e0  vmmov mr2, r2
000788  1f010001  addli r2, zero, 128
00078c  6ac24034  vor.hf.mh vr4{mr2}, r1, vr4
000790  9f008000  addli r1, zero, 64
000794  7e8100e0  vmmov mr2, r1
000798  9f600000  addli r1, zero, 6
00079c  6a424034  vor.hf.mh vr4{mr2}, zero, vr4
0007a0  7e0101e0  vmmov mr2, r2
0007a4  1f010004  addli r2, zero, 512
0007a8  6ac24034  vor.hf.mh vr4{mr2}, r1, vr4
0007ac  9f000002  addli r1, zero, 256
0007b0  7e8100e0  vmmov mr2, r1
0007b4  9f001000  addli r1, zero, 8
0007b8  6a424034  vor.hf.mh vr4{mr2}, zero, vr4
0007bc  7e0101e0  vmmov mr2, r2
0007c0  1f010010  addli r2, zero, 2048
0007c4  6ac24034  vor.hf.mh vr4{mr2}, r1, vr4
0007c8  9f000008  addli r1, zero, 1024
0007cc  7e8100e0  vmmov mr2, r1
0007d0  9f201000  addli r1, zero, 10
0007d4  6a424034  vor.hf.mh vr4{mr2}, zero, vr4
0007d8  7e0101e0  vmmov mr2, r2
0007dc  1f010040  addli r2, zero, 8192
0007e0  6ac24034  vor.hf.mh vr4{mr2}, r1, vr4
0007e4  9f000020  addli r1, zero, 4096
0007e8  7e8100e0  vmmov mr2, r1
0007ec  9f401000  addli r1, zero, 12
0007f0  6a424034  vor.hf.mh vr4{mr2}, zero, vr4
0007f4  7e0101e0  vmmov mr2, r2
0007f8  2b010200  lui r2, 32
0007fc  6ac24034  vor.hf.mh vr4{mr2}, r1, vr4
000800  ab400000  lui r1, 4
000804  7e8100e0  vmmov mr2, r1
000808  9f601000  addli r1, zero, 14
00080c  6a424034  vor.hf.mh vr4{mr2}, zero, vr4
000810  7e0102e0  vmmov mr2, r4
000814  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
000818  ab000100  lui r1, 16
00081c  7e8000e0  vmmov mr0, r1
000820  9f002000  addli r1, zero, 16
000824  6a424030  vor.hf.mh vr4{mr0}, zero, vr4
000828  7e0001e0  vmmov mr0, r2
00082c  2b010800  lui r2, 128
000830  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
000834  ab000400  lui r1, 64
000838  7e8000e0  vmmov mr0, r1
00083c  9f202000  addli r1, zero, 18
000840  6a424030  vor.hf.mh vr4{mr0}, zero, vr4
000844  7e0001e0  vmmov mr0, r2
000848  2b012000  lui r2, 512
00084c  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
000850  ab001000  lui r1, 256
000854  7e8000e0  vmmov mr0, r1
000858  9f402000  addli r1, zero, 20
00085c  6a424030  vor.hf.mh vr4{mr0}, zero, vr4
000860  7e0001e0  vmmov mr0, r2
000864  2b018000  lui r2, 2048
000868  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
00086c  ab004000  lui r1, 1024
000870  7e8000e0  vmmov mr0, r1
000874  9f602000  addli r1, zero, 22
000878  6a424030  vor.hf.mh vr4{mr0}, zero, vr4
00087c  7e0001e0  vmmov mr0, r2
000880  2b010002  lui r2, 8192
000884  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
000888  ab000001  lui r1, 4096
00088c  7e8000e0  vmmov mr0, r1
000890  9f003000  addli r1, zero, 24
000894  6a424030  vor.hf.mh vr4{mr0}, zero, vr4
000898  7e0001e0  vmmov mr0, r2
00089c  2b010008  lui r2, 32768
0008a0  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
0008a4  ab000004  lui r1, 16384
0008a8  7e8000e0  vmmov mr0, r1
0008ac  9f203000  addli r1, zero, 26
0008b0  6a424030  vor.hf.mh vr4{mr0}, zero, vr4
0008b4  7e0001e0  vmmov mr0, r2
0008b8  2b010020  lui r2, 131072
0008bc  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
0008c0  ab000010  lui r1, 65536
0008c4  7e8000e0  vmmov mr0, r1
0008c8  9f100000  addli r1, zero, 1
0008cc  6a424030  vor.hf.mh vr4{mr0}, zero, vr4
0008d0  eab13002  vand.s.mz vr3{mr1}, r1, vr3
0008d4  9f403000  addli r1, zero, 28
0008d8  7e0001e0  vmmov mr0, r2
0008dc  2b010080  lui r2, 524288
0008e0  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
0008e4  ab000040  lui r1, 262144
0008e8  96b13202  vadd.s.mz vr3{mr1}, vr5, vr3
0008ec  7e8000e0  vmmov mr0, r1
0008f0  9f603000  addli r1, zero, 30
0008f4  6a424030  vor.hf.mh vr4{mr0}, zero, vr4
0008f8  76207142  vlt.u.mz mr0{mr1}, vr2, vr7
0008fc  92b13c02  vadd.s.mz vr3{mr1}, r25, vr3
000900  7e0700a0  vmmov r14, mr0
000904  7e0001e0  vmmov mr0, r2
000908  2b014000  lui r2, 1024
00090c  ea325122  vor.s.mz vr5{mr1}, r2, vr5
000910  1f018ffd  addli r2, r30, -320
000914  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
000918  9b40f700  srli r1, r14, 15
00091c  9b801000  andi r1, r1, 1
000920  62426114  vscatter.mh vr6{mr2}, vr4{r2}
000924  3bb00000  bneq r1, zero, 12
000928  fab0f140  vextracti.s r1, 15(vr3)
00092c  5b010000  j 8
000930  fab0f240  vextracti.s r1, 15(vr5)
000934  1b41e700  srli r2, r14, 14
000938  1b011100  andi r2, r2, 1
00093c  3b300100  bneq r2, zero, 12
000940  7ab1e140  vextracti.s r2, 14(vr3)
000944  5b010000  j 8
000948  7ab1e240  vextracti.s r2, 14(vr5)
00094c  1b42d700  srli r4, r14, 13
000950  1b021200  andi r4, r4, 1
000954  3b300200  bneq r4, zero, 12
000958  fab4d140  vextracti.s r9, 13(vr3)
00095c  5b010000  j 8
000960  fab4d240  vextracti.s r9, 13(vr5)
000964  1b42c700  srli r4, r14, 12
000968  1b021200  andi r4, r4, 1
00096c  3b300200  bneq r4, zero, 12
000970  7ab5c140  vextracti.s r10, 12(vr3)
000974  5b010000  j 8
000978  7ab5c240  vextracti.s r10, 12(vr5)
00097c  1b42b700  srli r4, r14, 11
000980  1b021200  andi r4, r4, 1
000984  3b300200  bneq r4, zero, 12
000988  7ab3b140  vextracti.s r6, 11(vr3)
00098c  5b010000  j 8
000990  7ab3b240  vextracti.s r6, 11(vr5)
000994  1b42a700  srli r4, r14, 10
000998  1b021200  andi r4, r4, 1
00099c  3b300200  bneq r4, zero, 12
0009a0  7ab2a140  vextracti.s r4, 10(vr3)
0009a4  5b010000  j 8
0009a8  7ab2a240  vextracti.s r4, 10(vr5)
0009ac  9b459700  srli r11, r14, 9
0009b0  9b851500  andi r11, r11, 1
0009b4  3bb00500  bneq r11, zero, 12
0009b8  fab59140  vextracti.s r11, 9(vr3)
0009bc  5b010000  j 8
0009c0  fab59240  vextracti.s r11, 9(vr5)
0009c4  1b468700  srli r12, r14, 8
0009c8  1b061600  andi r12, r12, 1
0009cc  3b300600  bneq r12, zero, 12
0009d0  7ab68140  vextracti.s r12, 8(vr3)
0009d4  5b010000  j 8
0009d8  7ab68240  vextracti.s r12, 8(vr5)
0009dc  9b477700  srli r15, r14, 7
0009e0  9b871700  andi r15, r15, 1
0009e4  3bb00700  bneq r15, zero, 12
0009e8  7ab97140  vextracti.s r18, 7(vr3)
0009ec  5b010000  j 8
0009f0  7ab97240  vextracti.s r18, 7(vr5)
0009f4  9b476700  srli r15, r14, 6
0009f8  9b871700  andi r15, r15, 1
0009fc  3bb00700  bneq r15, zero, 12
000a00  fab76140  vextracti.s r15, 6(vr3)
000a04  5b010000  j 8
000a08  fab76240  vextracti.s r15, 6(vr5)
000a0c  9b4a5700  srli r21, r14, 5
000a10  9b8a1a00  andi r21, r21, 1
000a14  3bb00a00  bneq r21, zero, 12
000a18  faba5140  vextracti.s r21, 5(vr3)
000a1c  5b010000  j 8
000a20  faba5240  vextracti.s r21, 5(vr5)
000a24  1b4b4700  srli r22, r14, 4
000a28  1b0b1b00  andi r22, r22, 1
000a2c  3b300b00  bneq r22, zero, 12
000a30  7abb4140  vextracti.s r22, 4(vr3)
000a34  5b010000  j 8
000a38  7abb4240  vextracti.s r22, 4(vr5)
000a3c  9b4b3700  srli r23, r14, 3
000a40  9b8b1b00  andi r23, r23, 1
000a44  3bb00b00  bneq r23, zero, 12
000a48  fabb3140  vextracti.s r23, 3(vr3)
000a4c  5b010000  j 8
000a50  fabb3240  vextracti.s r23, 3(vr5)
000a54  1b4c2700  srli r24, r14, 2
000a58  1b0c1c00  andi r24, r24, 1
000a5c  3b300c00  bneq r24, zero, 12
000a60  7abc2140  vextracti.s r24, 2(vr3)
000a64  5b010000  j 8
000a68  7abc2240  vextracti.s r24, 2(vr5)
000a6c  9b4d1700  srli r27, r14, 1
000a70  9b8d1d00  andi r27, r27, 1
000a74  3bd00d00  bneq r27, zero, 20
000a78  fabd1140  vextracti.s r27, 1(vr3)
000a7c  1b071700  andi r14, r14, 1
000a80  b72c07fa  beq r14, zero, -2264
000a84  5b020000  j 16
000a88  fabd1240  vextracti.s r27, 1(vr5)
000a8c  1b071700  andi r14, r14, 1
000a90  376c07fa  beq r14, zero, -2280
000a94  7ab70240  vextracti.s r14, 0(vr5)
000a98  dbe2feff  j -2284
000a9c  9f0e0ffd  addli sp, r30, -384
000aa0  9f8e0e03  addli sp, sp, 384
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
