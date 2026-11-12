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
0000dc  9f8e0ee9  addli sp, sp, -2944
0000e0  1f8f8e16  addli r30, sp, 2880
0000e4  80530002  load_param_i r7, 0
0000e8  63413f00  loadli.w r2,  28(r30)
0000ec  e3003f00  loadli.w r1,  24(r30)
0000f0  e3014f00  loadli.w r3,  32(r30)
0000f4  8b101120  mul.s r1, r2, r1
0000f8  8b903020  mul.s r1, r1, r3
0000fc  e7471fea  storeli.w r1, -2692(r30)
000100  4bca7018  ble.s r1, r7, 12944
000104  80300002  core_id r1
000108  80d20002  load_param_i r5, 1
00010c  6b518f00  load.d r[3:4], 8(r30)
000110  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
000114  1f050ff6  addli r10, r30, -1280
000118  1f070ff4  addli r14, r30, -1536
00011c  2b0b803f  lui r22, 260096
000120  1f0d8000  addli r26, zero, 64
000124  9f068ffd  addli r13, r30, -320
000128  9f070ffd  addli r15, r30, -384
00012c  9f098ffe  addli r19, r30, -192
000130  1f060ffe  addli r12, r30, -256
000134  1f088fff  addli r16, r30, -64
000138  1f090fff  addli r18, r30, -128
00013c  1bc23000  srli r4, r1, 3
000140  9bb08000  slli r1, r1, 8
000144  67475fea  storeli.w r5, -2700(r30)
000148  1b027200  andi r4, r4, 7
00014c  9b800070  andi r1, r1, 1792
000150  e7074fea  storeli.w r4, -2696(r30)
000154  1b32b200  slli r4, r4, 11
000158  b3820028  zext_int2long r[6:7], r1
00015c  17121200  or r4, r4, r1
000160  9f00dfea  addli r1, r30, -2712
000164  33040228  zext_int2long r[9:10], r4
000168  1f020ffc  addli r4, r30, -512
00016c  73b08000  store.d r[9:10], 0(r1)
000170  8b205110  add.ul r[2:3], r[3:4], r[6:7]
000174  9f01cfea  addli r3, r30, -2720
000178  9f120000  addli r5, zero, 1
00017c  73b01100  store.d r[2:3], 0(r3)
000180  aba0aaaa  lui r1, 699050
000184  2b01807f  lui r2, 522240
000188  9fa05015  addli r1, r1, 2730
00018c  ea242122  vor.u.mz vr9{mr1}, r2, vr2
000190  2bf1b53f  lui r2, 260959
000194  fe8100e0  vmmov mr3, r1
000198  9f002000  addli r1, zero, 16
00019c  6aa42022  vor.u.mz vr8{mr1}, r1, vr2
0001a0  ab700000  lui r1, 7
0001a4  9b90f0ff  ori r1, r1, 4095
0001a8  e7471ff2  storeli.w r1, -1668(r30)
0001ac  9f100000  addli r1, zero, 1
0001b0  7e8100e0  vmmov mr2, r1
0001b4  ab00353f  lui r1, 258896
0001b8  9b90304f  ori r1, r1, 1267
0001bc  e74f1fe8  storeli.w r1, -2820(r30)
0001c0  abb0a73e  lui r1, 256635
0001c4  9b9c50a0  ori r25, r1, 2565
0001c8  abd0873f  lui r1, 260221
0001cc  9b9020c2  ori r1, r1, 3106
0001d0  e74f1ff0  storeli.w r1, -1796(r30)
0001d4  ab00babf  lui r1, 785312
0001d8  9b90300e  ori r1, r1, 227
0001dc  e70f1ff0  storeli.w r1, -1800(r30)
0001e0  9b10310e  ori r1, r2, 227
0001e4  2b71823e  lui r2, 256039
0001e8  674f1ff0  storeli.w r1, -1804(r30)
0001ec  aba091be  lui r1, 780570
0001f0  9b90e098  ori r1, r1, 2446
0001f4  670f1ff0  storeli.w r1, -1808(r30)
0001f8  9b106190  ori r1, r2, 2310
0001fc  e74e1ff0  storeli.w r1, -1812(r30)
000200  9f000fea  addli r1, r30, -2816
000204  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
000208  9f000ff3  addli r1, r30, -1664
00020c  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
000210  9f000ff2  addli r1, r30, -1792
000214  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
000218  db240000  j 292
00021c  7ab70140  vextracti.s r14, 0(vr3)
000220  92312002  vadd.s.mz vr3{mr1}, zero, vr2
000224  1f250000  addli r10, zero, 2
000228  7e0005e0  vmmov mr0, r10
00022c  1f450000  addli r10, zero, 4
000230  ea213734  vor.u.mh vr3{mr2}, r14, vr3
000234  1f070ff4  addli r14, r30, -1536
000238  ea213e30  vor.u.mh vr3{mr0}, r28, vr3
00023c  7e0005e0  vmmov mr0, r10
000240  1f050ff6  addli r10, r30, -1280
000244  eaa13430  vor.u.mh vr3{mr0}, r9, vr3
000248  9f041000  addli r9, zero, 8
00024c  7e8004e0  vmmov mr0, r9
000250  ea213430  vor.u.mh vr3{mr0}, r8, vr3
000254  1f042000  addli r8, zero, 16
000258  7e0004e0  vmmov mr0, r8
00025c  eaa13330  vor.u.mh vr3{mr0}, r7, vr3
000260  9f034000  addli r7, zero, 32
000264  7e8003e0  vmmov mr0, r7
000268  ea213330  vor.u.mh vr3{mr0}, r6, vr3
00026c  1f038000  addli r6, zero, 64
000270  7e0003e0  vmmov mr0, r6
000274  ea213130  vor.u.mh vr3{mr0}, r2, vr3
000278  1f010001  addli r2, zero, 128
00027c  7e0001e0  vmmov mr0, r2
000280  1f010002  addli r2, zero, 256
000284  ea213c30  vor.u.mh vr3{mr0}, r24, vr3
000288  7e0001e0  vmmov mr0, r2
00028c  1f010004  addli r2, zero, 512
000290  eaa13a30  vor.u.mh vr3{mr0}, r21, vr3
000294  7e0001e0  vmmov mr0, r2
000298  1f010008  addli r2, zero, 1024
00029c  eaa13830  vor.u.mh vr3{mr0}, r17, vr3
0002a0  7e0001e0  vmmov mr0, r2
0002a4  1f010010  addli r2, zero, 2048
0002a8  eaa13d30  vor.u.mh vr3{mr0}, r27, vr3
0002ac  7e0001e0  vmmov mr0, r2
0002b0  1f010020  addli r2, zero, 4096
0002b4  eaa13b30  vor.u.mh vr3{mr0}, r23, vr3
0002b8  7e0001e0  vmmov mr0, r2
0002bc  1f010040  addli r2, zero, 8192
0002c0  ea213a30  vor.u.mh vr3{mr0}, r20, vr3
0002c4  7e0001e0  vmmov mr0, r2
0002c8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0002cc  ab400000  lui r1, 4
0002d0  7e8000e0  vmmov mr0, r1
0002d4  ab800000  lui r1, 8
0002d8  eaa13530  vor.u.mh vr3{mr0}, r11, vr3
0002dc  7e8000e0  vmmov mr0, r1
0002e0  9f002000  addli r1, zero, 16
0002e4  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
0002e8  6b538f8d  load.d r[7:8], -1832(r30)
0002ec  ab0100f0  lui r3, 983040
0002f0  6af030c0  vsrl.p vr0, r1, vr3
0002f4  eb500f01  load.d r[2:3], 16(r30)
0002f8  8ba06010  add.ul r[2:3], r[2:3], r[7:8]
0002fc  2b535555  lui r6, 349525
000300  1f53a30a  addli r6, r6, 1365
000304  7e0003e0  vmmov mr0, r6
000308  6343eff3  loadli.w r6,  -1548(r30)
00030c  46000310  vstore.mh vr0{mr0}, 0(r6)
000310  6343cff1  loadli.w r6,  -1820(r30)
000314  00a00000  mfence { lm }
000318  e303dff1  loadli.w r7,  -1816(r30)
00031c  97113300  or r3, r6, r3
000320  ffb1a000  s_lm2gm r3, r10, 0(r[2:3])
000324  e340efea  loadli.w r1,  -2700(r30)
000328  00a00000  mfence { lm }
00032c  8b931310  add.s r7, r7, r1
000330  e340ffea  loadli.w r1,  -2692(r30)
000334  3fa01300  blt.s r7, r1, 8
000338  5b0b0600  j 12376
00033c  e3004f00  loadli.w r1,  32(r30)
000340  63413f00  loadli.w r2,  28(r30)
000344  e301ffea  loadli.w r3,  -2696(r30)
000348  e70e7ff0  storeli.w r7, -1816(r30)
00034c  8b901330  div.s r1, r7, r1
000350  8b902030  div.s r1, r1, r2
000354  2b0100f0  lui r2, 983040
000358  9bb03000  slli r1, r1, 3
00035c  33930028  sext_int2long r[7:8], r1
000360  97901100  or r1, r3, r1
000364  9f311000  addli r3, zero, 11
000368  17333302  sll.d r[7:8], r[7:8], r3
00036c  9f01dfea  addli r3, r30, -2712
000370  9bf00020  setlti r1, r1, 512
000374  6bd40100  load.d r[9:10], 0(r3)
000378  9bb08000  slli r1, r1, 8
00037c  674e1ff0  storeli.w r1, -1820(r30)
000380  97902000  or r1, r1, r2
000384  17148302  or.d r[9:10], r[7:8], r[9:10]
000388  6b530f00  load.d r[7:8], 0(r30)
00038c  733c8f8c  store.d r[9:10], -1832(r30)
000390  0b238310  add.ul r[7:8], r[7:8], r[9:10]
000394  ff20a300  l_gm2lm r1, r10, 0(r[7:8])
000398  9f000002  addli r1, zero, 256
00039c  1f03cfea  addli r6, r30, -2720
0003a0  00a00000  mfence { lm }
0003a4  97902000  or r1, r1, r2
0003a8  6b510300  load.d r[3:4], 0(r6)
0003ac  ff20e100  l_gm2lm r1, r14, 0(r[3:4])
0003b0  2b014000  lui r2, 1024
0003b4  00a00000  mfence { lm }
0003b8  c2010506  vload.mz vr3{mr3}, 0(r10)
0003bc  42020706  vload.mz vr4{mr3}, 0(r14)
0003c0  96914102  vadd.f.mz.rn vr3{mr1}, vr3, vr4
0003c4  6e3234c2  vsrl.s.mz vr4{mr1}, vr8, vr3
0003c8  e69201c0  vabs.f vr5, vr3
0003cc  6ab24202  vand.s.mz vr4{mr1}, r5, vr4
0003d0  e342fff2  loadli.w r5,  -1668(r30)
0003d4  76a05442  vlt.u.mz mr0{mr1}, vr9, vr5
0003d8  ea343122  vor.s.mz vr9{mr1}, r2, vr3
0003dc  fe0500a0  vmmov r11, mr0
0003e0  9bc0f500  srli r1, r11, 15
0003e4  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
0003e8  9b801000  andi r1, r1, 1
0003ec  12b44202  vadd.s.mz vr8{mr1}, r5, vr4
0003f0  3bb00000  bneq r1, zero, 12
0003f4  fa3df440  vextracti.s r27, 15(vr8)
0003f8  5b010000  j 8
0003fc  fabdf440  vextracti.s r27, 15(vr9)
000400  ab505555  lui r1, 349525
000404  9f030501  addli r7, r10, 128
000408  1f038501  addli r6, r10, 192
00040c  1f010701  addli r2, r14, 128
000410  9f018701  addli r3, r14, 192
000414  9f048fee  addli r9, r30, -2240
000418  1f048500  addli r8, r10, 64
00041c  9fd0a00a  addli r1, r1, 1365
000420  e74f7ff2  storeli.w r7, -1540(r30)
000424  e70f8ff2  storeli.w r8, -1544(r30)
000428  674f6ff2  storeli.w r6, -1548(r30)
00042c  42020406  vload.mz vr4{mr3}, 0(r8)
000430  7e8000e0  vmmov mr0, r1
000434  9f000fef  addli r1, r30, -2176
000438  42800300  vload.mz vr0{mr0}, 0(r7)
00043c  42030500  vload.mz vr6{mr0}, 0(r10)
000440  c2050400  vload.mz vr11{mr0}, 0(r8)
000444  c2030700  vload.mz vr7{mr0}, 0(r14)
000448  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00044c  42000300  vload.mz vr0{mr0}, 0(r6)
000450  9f000ff1  addli r1, r30, -1920
000454  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000458  42000100  vload.mz vr0{mr0}, 0(r2)
00045c  9f008700  addli r1, r14, 64
000460  c2810000  vload.mz vr3{mr0}, 0(r1)
000464  46900402  vstore_mask16.mz vr0{mr1}, 0(r9)
000468  42800100  vload.mz vr0{mr0}, 0(r3)
00046c  9f048ff0  addli r9, r30, -1984
000470  46900402  vstore_mask16.mz vr0{mr1}, 0(r9)
000474  42800306  vload.mz vr0{mr3}, 0(r7)
000478  9f030fee  addli r7, r30, -2304
00047c  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
000480  42000306  vload.mz vr0{mr3}, 0(r6)
000484  1f030ff0  addli r6, r30, -2048
000488  00a00000  mfence { lm }
00048c  c2820006  vload.mz vr5{mr3}, 0(r1)
000490  42050106  vload.mz vr10{mr3}, 0(r2)
000494  9f008fef  addli r1, r30, -2112
000498  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
00049c  42800106  vload.mz vr0{mr3}, 0(r3)
0004a0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0004a4  9bc0e500  srli r1, r11, 14
0004a8  9b801000  andi r1, r1, 1
0004ac  3bb00000  bneq r1, zero, 12
0004b0  7a3ee440  vextracti.s r28, 14(vr8)
0004b4  5b010000  j 8
0004b8  7abee440  vextracti.s r28, 14(vr9)
0004bc  9bc0d500  srli r1, r11, 13
0004c0  1f150000  addli r10, zero, 1
0004c4  9b801000  andi r1, r1, 1
0004c8  3bb00000  bneq r1, zero, 12
0004cc  7a37d440  vextracti.s r14, 13(vr8)
0004d0  5b010000  j 8
0004d4  7ab7d440  vextracti.s r14, 13(vr9)
0004d8  9bc0c500  srli r1, r11, 12
0004dc  9b801000  andi r1, r1, 1
0004e0  3bb00000  bneq r1, zero, 12
0004e4  fa30c440  vextracti.s r1, 12(vr8)
0004e8  5b010000  j 8
0004ec  fab0c440  vextracti.s r1, 12(vr9)
0004f0  1bc1b500  srli r2, r11, 11
0004f4  1b011100  andi r2, r2, 1
0004f8  3b300100  bneq r2, zero, 12
0004fc  fa3bb440  vextracti.s r23, 11(vr8)
000500  5b010000  j 8
000504  fabbb440  vextracti.s r23, 11(vr9)
000508  1bc1a500  srli r2, r11, 10
00050c  1b011100  andi r2, r2, 1
000510  3b300100  bneq r2, zero, 12
000514  fa31a440  vextracti.s r3, 10(vr8)
000518  5b010000  j 8
00051c  fab1a440  vextracti.s r3, 10(vr9)
000520  1bc19500  srli r2, r11, 9
000524  1b011100  andi r2, r2, 1
000528  3b300100  bneq r2, zero, 12
00052c  7a3a9440  vextracti.s r20, 9(vr8)
000530  5b010000  j 8
000534  7aba9440  vextracti.s r20, 9(vr9)
000538  1bc18500  srli r2, r11, 8
00053c  1b011100  andi r2, r2, 1
000540  3b300100  bneq r2, zero, 12
000544  fa388440  vextracti.s r17, 8(vr8)
000548  5b010000  j 8
00054c  fab88440  vextracti.s r17, 8(vr9)
000550  1bc17500  srli r2, r11, 7
000554  1b011100  andi r2, r2, 1
000558  3b300100  bneq r2, zero, 12
00055c  fa3a7440  vextracti.s r21, 7(vr8)
000560  5b010000  j 8
000564  faba7440  vextracti.s r21, 7(vr9)
000568  1bc16500  srli r2, r11, 6
00056c  1b011100  andi r2, r2, 1
000570  3b300100  bneq r2, zero, 12
000574  7a3c6440  vextracti.s r24, 6(vr8)
000578  5b010000  j 8
00057c  7abc6440  vextracti.s r24, 6(vr9)
000580  1bc15500  srli r2, r11, 5
000584  1b011100  andi r2, r2, 1
000588  3b300100  bneq r2, zero, 12
00058c  7a315440  vextracti.s r2, 5(vr8)
000590  5b010000  j 8
000594  7ab15440  vextracti.s r2, 5(vr9)
000598  1bc34500  srli r6, r11, 4
00059c  1b031300  andi r6, r6, 1
0005a0  3b300300  bneq r6, zero, 12
0005a4  7a334440  vextracti.s r6, 4(vr8)
0005a8  5b010000  j 8
0005ac  7ab34440  vextracti.s r6, 4(vr9)
0005b0  9bc33500  srli r7, r11, 3
0005b4  9b831300  andi r7, r7, 1
0005b8  3bb00300  bneq r7, zero, 12
0005bc  fa333440  vextracti.s r7, 3(vr8)
0005c0  5b010000  j 8
0005c4  fab33440  vextracti.s r7, 3(vr9)
0005c8  1bc42500  srli r8, r11, 2
0005cc  1b041400  andi r8, r8, 1
0005d0  3b300400  bneq r8, zero, 12
0005d4  7a342440  vextracti.s r8, 2(vr8)
0005d8  5b010000  j 8
0005dc  7ab42440  vextracti.s r8, 2(vr9)
0005e0  9bc41500  srli r9, r11, 1
0005e4  9b841400  andi r9, r9, 1
0005e8  3be00400  bneq r9, zero, 24
0005ec  fa341440  vextracti.s r9, 1(vr8)
0005f0  9b851500  andi r11, r11, 1
0005f4  37e00500  beq r11, zero, 24
0005f8  fab50440  vextracti.s r11, 0(vr9)
0005fc  db020000  j 20
000600  fab41440  vextracti.s r9, 1(vr9)
000604  9b851500  andi r11, r11, 1
000608  bbcf05fe  bneq r11, zero, -16
00060c  fa350440  vextracti.s r11, 0(vr8)
000610  12342002  vadd.s.mz vr8{mr1}, zero, vr2
000614  66430300  vshuffle2.hf vr6, vr6
000618  e6c30300  vshuffle2.hf vr7, vr7
00061c  6aa48534  vor.u.mh vr8{mr2}, r11, vr8
000620  9f250000  addli r11, zero, 2
000624  96137302  vadd.f.mz.rn vr7{mr1}, vr6, vr7
000628  7e8005e0  vmmov mr0, r11
00062c  6aa48430  vor.u.mh vr8{mr0}, r9, vr8
000630  9f440000  addli r9, zero, 4
000634  e69403c0  vabs.f vr9, vr7
000638  7e8004e0  vmmov mr0, r9
00063c  6a248430  vor.u.mh vr8{mr0}, r8, vr8
000640  1f041000  addli r8, zero, 8
000644  7e0004e0  vmmov mr0, r8
000648  6aa48330  vor.u.mh vr8{mr0}, r7, vr8
00064c  9f032000  addli r7, zero, 16
000650  7e8003e0  vmmov mr0, r7
000654  6a248330  vor.u.mh vr8{mr0}, r6, vr8
000658  1f034000  addli r6, zero, 32
00065c  7e0003e0  vmmov mr0, r6
000660  6a248130  vor.u.mh vr8{mr0}, r2, vr8
000664  1f018000  addli r2, zero, 64
000668  7e0001e0  vmmov mr0, r2
00066c  1f010001  addli r2, zero, 128
000670  6a248c30  vor.u.mh vr8{mr0}, r24, vr8
000674  7e0001e0  vmmov mr0, r2
000678  1f010002  addli r2, zero, 256
00067c  6aa48a30  vor.u.mh vr8{mr0}, r21, vr8
000680  7e0001e0  vmmov mr0, r2
000684  1f010004  addli r2, zero, 512
000688  6aa48830  vor.u.mh vr8{mr0}, r17, vr8
00068c  7e0001e0  vmmov mr0, r2
000690  1f010008  addli r2, zero, 1024
000694  6a248a30  vor.u.mh vr8{mr0}, r20, vr8
000698  7e0001e0  vmmov mr0, r2
00069c  1f010010  addli r2, zero, 2048
0006a0  6aa48130  vor.u.mh vr8{mr0}, r3, vr8
0006a4  7e0001e0  vmmov mr0, r2
0006a8  1f010ff3  addli r2, r30, -1664
0006ac  ab014000  lui r3, 1024
0006b0  6aa48b30  vor.u.mh vr8{mr0}, r23, vr8
0006b4  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
0006b8  1f010020  addli r2, zero, 4096
0006bc  7e0001e0  vmmov mr0, r2
0006c0  2b810000  lui r2, 8
0006c4  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0006c8  9f000040  addli r1, zero, 8192
0006cc  7e8000e0  vmmov mr0, r1
0006d0  6e3370c2  vsrl.s.mz vr6{mr1}, vr0, vr7
0006d4  ab400000  lui r1, 4
0006d8  6a248730  vor.u.mh vr8{mr0}, r14, vr8
0006dc  7e8000e0  vmmov mr0, r1
0006e0  9f000ff2  addli r1, r30, -1792
0006e4  6a336502  vand.s.mz vr6{mr1}, r10, vr6
0006e8  6a248e30  vor.u.mh vr8{mr0}, r28, vr8
0006ec  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0006f0  16b36302  vadd.s.mz vr6{mr1}, vr7, vr6
0006f4  eab37122  vor.s.mz vr7{mr1}, r3, vr7
0006f8  9f010ff6  addli r3, r30, -1280
0006fc  76a09042  vlt.u.mz mr0{mr1}, vr1, vr9
000700  12b36202  vadd.s.mz vr6{mr1}, r5, vr6
000704  fe0000a0  vmmov r1, mr0
000708  7e0001e0  vmmov mr0, r2
00070c  6aa48d30  vor.u.mh vr8{mr0}, r27, vr8
000710  1bc1f000  srli r2, r1, 15
000714  1b011100  andi r2, r2, 1
000718  46808116  vstore.mh vr8{mr3}, 0(r3)
00071c  3b300100  bneq r2, zero, 12
000720  fa3df340  vextracti.s r27, 15(vr6)
000724  5b010000  j 8
000728  fabdf340  vextracti.s r27, 15(vr7)
00072c  9f010ff3  addli r3, r30, -1664
000730  1bc1e000  srli r2, r1, 14
000734  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000738  1b011100  andi r2, r2, 1
00073c  3b300100  bneq r2, zero, 12
000740  7a3ee340  vextracti.s r28, 14(vr6)
000744  5b010000  j 8
000748  7abee340  vextracti.s r28, 14(vr7)
00074c  1bc1d000  srli r2, r1, 13
000750  9f120000  addli r5, zero, 1
000754  1b011100  andi r2, r2, 1
000758  3b300100  bneq r2, zero, 12
00075c  fa35d340  vextracti.s r11, 13(vr6)
000760  5b010000  j 8
000764  fab5d340  vextracti.s r11, 13(vr7)
000768  1bc1c000  srli r2, r1, 12
00076c  1f050ff6  addli r10, r30, -1280
000770  1b011100  andi r2, r2, 1
000774  3b300100  bneq r2, zero, 12
000778  7a37c340  vextracti.s r14, 12(vr6)
00077c  5b010000  j 8
000780  7ab7c340  vextracti.s r14, 12(vr7)
000784  1bc1b000  srli r2, r1, 11
000788  1b011100  andi r2, r2, 1
00078c  3b300100  bneq r2, zero, 12
000790  fa3bb340  vextracti.s r23, 11(vr6)
000794  5b010000  j 8
000798  fabbb340  vextracti.s r23, 11(vr7)
00079c  1bc1a000  srli r2, r1, 10
0007a0  1b011100  andi r2, r2, 1
0007a4  3b300100  bneq r2, zero, 12
0007a8  fa31a340  vextracti.s r3, 10(vr6)
0007ac  5b010000  j 8
0007b0  fab1a340  vextracti.s r3, 10(vr7)
0007b4  1bc19000  srli r2, r1, 9
0007b8  1b011100  andi r2, r2, 1
0007bc  3b300100  bneq r2, zero, 12
0007c0  fa389340  vextracti.s r17, 9(vr6)
0007c4  5b010000  j 8
0007c8  fab89340  vextracti.s r17, 9(vr7)
0007cc  1bc18000  srli r2, r1, 8
0007d0  1b011100  andi r2, r2, 1
0007d4  3b300100  bneq r2, zero, 12
0007d8  7a3a8340  vextracti.s r20, 8(vr6)
0007dc  5b010000  j 8
0007e0  7aba8340  vextracti.s r20, 8(vr7)
0007e4  1bc17000  srli r2, r1, 7
0007e8  1b011100  andi r2, r2, 1
0007ec  3b300100  bneq r2, zero, 12
0007f0  fa3a7340  vextracti.s r21, 7(vr6)
0007f4  5b010000  j 8
0007f8  faba7340  vextracti.s r21, 7(vr7)
0007fc  1bc16000  srli r2, r1, 6
000800  1b011100  andi r2, r2, 1
000804  3b300100  bneq r2, zero, 12
000808  7a316340  vextracti.s r2, 6(vr6)
00080c  5b010000  j 8
000810  7ab16340  vextracti.s r2, 6(vr7)
000814  1bc35000  srli r6, r1, 5
000818  1b031300  andi r6, r6, 1
00081c  3b300300  bneq r6, zero, 12
000820  7a335340  vextracti.s r6, 5(vr6)
000824  5b010000  j 8
000828  7ab35340  vextracti.s r6, 5(vr7)
00082c  9bc34000  srli r7, r1, 4
000830  9b831300  andi r7, r7, 1
000834  3bb00300  bneq r7, zero, 12
000838  fa334340  vextracti.s r7, 4(vr6)
00083c  5b010000  j 8
000840  fab34340  vextracti.s r7, 4(vr7)
000844  1bc43000  srli r8, r1, 3
000848  1b041400  andi r8, r8, 1
00084c  3b300400  bneq r8, zero, 12
000850  7a343340  vextracti.s r8, 3(vr6)
000854  5b010000  j 8
000858  7ab43340  vextracti.s r8, 3(vr7)
00085c  9bc42000  srli r9, r1, 2
000860  9b841400  andi r9, r9, 1
000864  3bb00400  bneq r9, zero, 12
000868  fa342340  vextracti.s r9, 2(vr6)
00086c  5b010000  j 8
000870  fab42340  vextracti.s r9, 2(vr7)
000874  1bcc1000  srli r24, r1, 1
000878  1b0c1c00  andi r24, r24, 1
00087c  3b600c00  bneq r24, zero, 24
000880  7a3c1340  vextracti.s r24, 1(vr6)
000884  9b801000  andi r1, r1, 1
000888  37e00000  beq r1, zero, 24
00088c  fab00340  vextracti.s r1, 0(vr7)
000890  db020000  j 20
000894  7abc1340  vextracti.s r24, 1(vr7)
000898  9b801000  andi r1, r1, 1
00089c  bbcf00fe  bneq r1, zero, -16
0008a0  fa300340  vextracti.s r1, 0(vr6)
0008a4  12332002  vadd.s.mz vr6{mr1}, zero, vr2
0008a8  96125202  vadd.f.mz.rn vr5{mr1}, vr4, vr5
0008ac  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
0008b0  9f200000  addli r1, zero, 2
0008b4  6e3250c2  vsrl.s.mz vr4{mr1}, vr0, vr5
0008b8  e69302c0  vabs.f vr7, vr5
0008bc  7e8000e0  vmmov mr0, r1
0008c0  9f400000  addli r1, zero, 4
0008c4  6a236c30  vor.u.mh vr6{mr0}, r24, vr6
0008c8  7e8000e0  vmmov mr0, r1
0008cc  9f001000  addli r1, zero, 8
0008d0  6ab24202  vand.s.mz vr4{mr1}, r5, vr4
0008d4  6aa36430  vor.u.mh vr6{mr0}, r9, vr6
0008d8  7e8000e0  vmmov mr0, r1
0008dc  9f002000  addli r1, zero, 16
0008e0  16b24202  vadd.s.mz vr4{mr1}, vr5, vr4
0008e4  6a236430  vor.u.mh vr6{mr0}, r8, vr6
0008e8  7e8000e0  vmmov mr0, r1
0008ec  9f004000  addli r1, zero, 32
0008f0  6aa36330  vor.u.mh vr6{mr0}, r7, vr6
0008f4  7e8000e0  vmmov mr0, r1
0008f8  9f008000  addli r1, zero, 64
0008fc  6a236330  vor.u.mh vr6{mr0}, r6, vr6
000900  7e8000e0  vmmov mr0, r1
000904  9f000001  addli r1, zero, 128
000908  6a236130  vor.u.mh vr6{mr0}, r2, vr6
00090c  7e8000e0  vmmov mr0, r1
000910  9f000002  addli r1, zero, 256
000914  2b014000  lui r2, 1024
000918  ea325122  vor.s.mz vr5{mr1}, r2, vr5
00091c  2b515555  lui r2, 349525
000920  6aa36a30  vor.u.mh vr6{mr0}, r21, vr6
000924  7e8000e0  vmmov mr0, r1
000928  9f000004  addli r1, zero, 512
00092c  1f51a10a  addli r2, r2, 1365
000930  6a236a30  vor.u.mh vr6{mr0}, r20, vr6
000934  7e8000e0  vmmov mr0, r1
000938  9f000008  addli r1, zero, 1024
00093c  6aa36830  vor.u.mh vr6{mr0}, r17, vr6
000940  7e8000e0  vmmov mr0, r1
000944  9f000010  addli r1, zero, 2048
000948  6aa36130  vor.u.mh vr6{mr0}, r3, vr6
00094c  7e8000e0  vmmov mr0, r1
000950  9f000020  addli r1, zero, 4096
000954  6aa36b30  vor.u.mh vr6{mr0}, r23, vr6
000958  7e8000e0  vmmov mr0, r1
00095c  9f000040  addli r1, zero, 8192
000960  6a236730  vor.u.mh vr6{mr0}, r14, vr6
000964  7e8000e0  vmmov mr0, r1
000968  ab400000  lui r1, 4
00096c  6aa36530  vor.u.mh vr6{mr0}, r11, vr6
000970  7e8000e0  vmmov mr0, r1
000974  ab800000  lui r1, 8
000978  6a236e30  vor.u.mh vr6{mr0}, r28, vr6
00097c  7e8000e0  vmmov mr0, r1
000980  9f002000  addli r1, zero, 16
000984  6aa36d30  vor.u.mh vr6{mr0}, r27, vr6
000988  e342fff2  loadli.w r5,  -1668(r30)
00098c  76a07042  vlt.u.mz mr0{mr1}, vr1, vr7
000990  7e0700a0  vmmov r14, mr0
000994  7e0001e0  vmmov mr0, r2
000998  12b24202  vadd.s.mz vr4{mr1}, r5, vr4
00099c  6af360c0  vsrl.p vr6, r1, vr6
0009a0  9b40f700  srli r1, r14, 15
0009a4  9b801000  andi r1, r1, 1
0009a8  46006510  vstore.mh vr6{mr0}, 0(r10)
0009ac  3bb00000  bneq r1, zero, 12
0009b0  fa3df240  vextracti.s r27, 15(vr4)
0009b4  5b010000  j 8
0009b8  fabdf240  vextracti.s r27, 15(vr5)
0009bc  9b40e700  srli r1, r14, 14
0009c0  1f150000  addli r10, zero, 1
0009c4  9b801000  andi r1, r1, 1
0009c8  3bb00000  bneq r1, zero, 12
0009cc  7a3ee240  vextracti.s r28, 14(vr4)
0009d0  5b010000  j 8
0009d4  7abee240  vextracti.s r28, 14(vr5)
0009d8  9b40d700  srli r1, r14, 13
0009dc  9b801000  andi r1, r1, 1
0009e0  3bb00000  bneq r1, zero, 12
0009e4  fa35d240  vextracti.s r11, 13(vr4)
0009e8  5b010000  j 8
0009ec  fab5d240  vextracti.s r11, 13(vr5)
0009f0  9b40c700  srli r1, r14, 12
0009f4  9b801000  andi r1, r1, 1
0009f8  3bb00000  bneq r1, zero, 12
0009fc  fa30c240  vextracti.s r1, 12(vr4)
000a00  5b010000  j 8
000a04  fab0c240  vextracti.s r1, 12(vr5)
000a08  1b41b700  srli r2, r14, 11
000a0c  1b011100  andi r2, r2, 1
000a10  3b300100  bneq r2, zero, 12
000a14  fa3bb240  vextracti.s r23, 11(vr4)
000a18  5b010000  j 8
000a1c  fabbb240  vextracti.s r23, 11(vr5)
000a20  1b41a700  srli r2, r14, 10
000a24  1b011100  andi r2, r2, 1
000a28  3b300100  bneq r2, zero, 12
000a2c  fa31a240  vextracti.s r3, 10(vr4)
000a30  5b010000  j 8
000a34  fab1a240  vextracti.s r3, 10(vr5)
000a38  1b419700  srli r2, r14, 9
000a3c  1b011100  andi r2, r2, 1
000a40  3b300100  bneq r2, zero, 12
000a44  7a3a9240  vextracti.s r20, 9(vr4)
000a48  5b010000  j 8
000a4c  7aba9240  vextracti.s r20, 9(vr5)
000a50  1b418700  srli r2, r14, 8
000a54  1b011100  andi r2, r2, 1
000a58  3b300100  bneq r2, zero, 12
000a5c  fa388240  vextracti.s r17, 8(vr4)
000a60  5b010000  j 8
000a64  fab88240  vextracti.s r17, 8(vr5)
000a68  1b417700  srli r2, r14, 7
000a6c  1b011100  andi r2, r2, 1
000a70  3b300100  bneq r2, zero, 12
000a74  fa3a7240  vextracti.s r21, 7(vr4)
000a78  5b010000  j 8
000a7c  faba7240  vextracti.s r21, 7(vr5)
000a80  1b416700  srli r2, r14, 6
000a84  1b011100  andi r2, r2, 1
000a88  3b300100  bneq r2, zero, 12
000a8c  7a3c6240  vextracti.s r24, 6(vr4)
000a90  5b010000  j 8
000a94  7abc6240  vextracti.s r24, 6(vr5)
000a98  1b415700  srli r2, r14, 5
000a9c  1b011100  andi r2, r2, 1
000aa0  3b300100  bneq r2, zero, 12
000aa4  7a315240  vextracti.s r2, 5(vr4)
000aa8  5b010000  j 8
000aac  7ab15240  vextracti.s r2, 5(vr5)
000ab0  1b434700  srli r6, r14, 4
000ab4  1b031300  andi r6, r6, 1
000ab8  3b300300  bneq r6, zero, 12
000abc  7a334240  vextracti.s r6, 4(vr4)
000ac0  5b010000  j 8
000ac4  7ab34240  vextracti.s r6, 4(vr5)
000ac8  9b433700  srli r7, r14, 3
000acc  9b831300  andi r7, r7, 1
000ad0  3bb00300  bneq r7, zero, 12
000ad4  fa333240  vextracti.s r7, 3(vr4)
000ad8  5b010000  j 8
000adc  fab33240  vextracti.s r7, 3(vr5)
000ae0  1b442700  srli r8, r14, 2
000ae4  1b041400  andi r8, r8, 1
000ae8  3b300400  bneq r8, zero, 12
000aec  7a342240  vextracti.s r8, 2(vr4)
000af0  5b010000  j 8
000af4  7ab42240  vextracti.s r8, 2(vr5)
000af8  9b441700  srli r9, r14, 1
000afc  9b841400  andi r9, r9, 1
000b00  3be00400  bneq r9, zero, 24
000b04  fa341240  vextracti.s r9, 1(vr4)
000b08  1b071700  andi r14, r14, 1
000b0c  37600700  beq r14, zero, 24
000b10  7ab70240  vextracti.s r14, 0(vr5)
000b14  db020000  j 20
000b18  fab41240  vextracti.s r9, 1(vr5)
000b1c  1b071700  andi r14, r14, 1
000b20  bb4f07fe  bneq r14, zero, -16
000b24  7a370240  vextracti.s r14, 0(vr4)
000b28  92322002  vadd.s.mz vr5{mr1}, zero, vr2
000b2c  66c20500  vshuffle2.hf vr4, vr11
000b30  e6c10100  vshuffle2.hf vr3, vr3
000b34  ea225734  vor.u.mh vr5{mr2}, r14, vr5
000b38  1f270000  addli r14, zero, 2
000b3c  16123202  vadd.f.mz.rn vr4{mr1}, vr4, vr3
000b40  7e0007e0  vmmov mr0, r14
000b44  eaa25430  vor.u.mh vr5{mr0}, r9, vr5
000b48  9f440000  addli r9, zero, 4
000b4c  ee3140c2  vsrl.s.mz vr3{mr1}, vr0, vr4
000b50  661302c0  vabs.f vr6, vr4
000b54  7e8004e0  vmmov mr0, r9
000b58  ea225430  vor.u.mh vr5{mr0}, r8, vr5
000b5c  1f041000  addli r8, zero, 8
000b60  ea313502  vand.s.mz vr3{mr1}, r10, vr3
000b64  7e0004e0  vmmov mr0, r8
000b68  eaa25330  vor.u.mh vr5{mr0}, r7, vr5
000b6c  9f032000  addli r7, zero, 16
000b70  96313202  vadd.s.mz vr3{mr1}, vr4, vr3
000b74  7e8003e0  vmmov mr0, r7
000b78  ea225330  vor.u.mh vr5{mr0}, r6, vr5
000b7c  1f034000  addli r6, zero, 32
000b80  92b13202  vadd.s.mz vr3{mr1}, r5, vr3
000b84  7e0003e0  vmmov mr0, r6
000b88  ea225130  vor.u.mh vr5{mr0}, r2, vr5
000b8c  1f018000  addli r2, zero, 64
000b90  7e0001e0  vmmov mr0, r2
000b94  1f010001  addli r2, zero, 128
000b98  ea225c30  vor.u.mh vr5{mr0}, r24, vr5
000b9c  7e0001e0  vmmov mr0, r2
000ba0  1f010002  addli r2, zero, 256
000ba4  eaa25a30  vor.u.mh vr5{mr0}, r21, vr5
000ba8  7e0001e0  vmmov mr0, r2
000bac  1f010004  addli r2, zero, 512
000bb0  eaa25830  vor.u.mh vr5{mr0}, r17, vr5
000bb4  7e0001e0  vmmov mr0, r2
000bb8  1f010008  addli r2, zero, 1024
000bbc  ea225a30  vor.u.mh vr5{mr0}, r20, vr5
000bc0  7e0001e0  vmmov mr0, r2
000bc4  1f010010  addli r2, zero, 2048
000bc8  eaa25130  vor.u.mh vr5{mr0}, r3, vr5
000bcc  7e0001e0  vmmov mr0, r2
000bd0  1f010020  addli r2, zero, 4096
000bd4  ab014000  lui r3, 1024
000bd8  6ab24122  vor.s.mz vr4{mr1}, r3, vr4
000bdc  eaa25b30  vor.u.mh vr5{mr0}, r23, vr5
000be0  7e0001e0  vmmov mr0, r2
000be4  2b810000  lui r2, 8
000be8  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000bec  9f000040  addli r1, zero, 8192
000bf0  7e8000e0  vmmov mr0, r1
000bf4  ab400000  lui r1, 4
000bf8  eaa25530  vor.u.mh vr5{mr0}, r11, vr5
000bfc  7e8000e0  vmmov mr0, r1
000c00  ea225e30  vor.u.mh vr5{mr0}, r28, vr5
000c04  76a06042  vlt.u.mz mr0{mr1}, vr1, vr6
000c08  fe0000a0  vmmov r1, mr0
000c0c  7e0001e0  vmmov mr0, r2
000c10  1bc1f000  srli r2, r1, 15
000c14  eaa25d30  vor.u.mh vr5{mr0}, r27, vr5
000c18  e301fff3  loadli.w r3,  -1544(r30)
000c1c  1b011100  andi r2, r2, 1
000c20  46805116  vstore.mh vr5{mr3}, 0(r3)
000c24  3b300100  bneq r2, zero, 12
000c28  fabdf140  vextracti.s r27, 15(vr3)
000c2c  5b010000  j 8
000c30  fa3df240  vextracti.s r27, 15(vr4)
000c34  1bc1e000  srli r2, r1, 14
000c38  1b011100  andi r2, r2, 1
000c3c  3b300100  bneq r2, zero, 12
000c40  7abee140  vextracti.s r28, 14(vr3)
000c44  5b010000  j 8
000c48  7a3ee240  vextracti.s r28, 14(vr4)
000c4c  1bc1d000  srli r2, r1, 13
000c50  1b011100  andi r2, r2, 1
000c54  3b300100  bneq r2, zero, 12
000c58  fab5d140  vextracti.s r11, 13(vr3)
000c5c  5b010000  j 8
000c60  fa35d240  vextracti.s r11, 13(vr4)
000c64  1bc1c000  srli r2, r1, 12
000c68  1b011100  andi r2, r2, 1
000c6c  3b300100  bneq r2, zero, 12
000c70  7ab7c140  vextracti.s r14, 12(vr3)
000c74  5b010000  j 8
000c78  7a37c240  vextracti.s r14, 12(vr4)
000c7c  1bc1b000  srli r2, r1, 11
000c80  1b011100  andi r2, r2, 1
000c84  3b300100  bneq r2, zero, 12
000c88  fabbb140  vextracti.s r23, 11(vr3)
000c8c  5b010000  j 8
000c90  fa3bb240  vextracti.s r23, 11(vr4)
000c94  1bc1a000  srli r2, r1, 10
000c98  1b011100  andi r2, r2, 1
000c9c  3b300100  bneq r2, zero, 12
000ca0  fab1a140  vextracti.s r3, 10(vr3)
000ca4  5b010000  j 8
000ca8  fa31a240  vextracti.s r3, 10(vr4)
000cac  1bc19000  srli r2, r1, 9
000cb0  1b011100  andi r2, r2, 1
000cb4  3b300100  bneq r2, zero, 12
000cb8  fab89140  vextracti.s r17, 9(vr3)
000cbc  5b010000  j 8
000cc0  fa389240  vextracti.s r17, 9(vr4)
000cc4  1bc18000  srli r2, r1, 8
000cc8  1b011100  andi r2, r2, 1
000ccc  3b300100  bneq r2, zero, 12
000cd0  7aba8140  vextracti.s r20, 8(vr3)
000cd4  5b010000  j 8
000cd8  7a3a8240  vextracti.s r20, 8(vr4)
000cdc  1bc17000  srli r2, r1, 7
000ce0  1b011100  andi r2, r2, 1
000ce4  3b300100  bneq r2, zero, 12
000ce8  faba7140  vextracti.s r21, 7(vr3)
000cec  5b010000  j 8
000cf0  fa3a7240  vextracti.s r21, 7(vr4)
000cf4  1bc16000  srli r2, r1, 6
000cf8  1b011100  andi r2, r2, 1
000cfc  3b300100  bneq r2, zero, 12
000d00  7ab16140  vextracti.s r2, 6(vr3)
000d04  5b010000  j 8
000d08  7a316240  vextracti.s r2, 6(vr4)
000d0c  1bc35000  srli r6, r1, 5
000d10  1b031300  andi r6, r6, 1
000d14  3b300300  bneq r6, zero, 12
000d18  7ab35140  vextracti.s r6, 5(vr3)
000d1c  5b010000  j 8
000d20  7a335240  vextracti.s r6, 5(vr4)
000d24  9bc34000  srli r7, r1, 4
000d28  9b831300  andi r7, r7, 1
000d2c  3bb00300  bneq r7, zero, 12
000d30  fab34140  vextracti.s r7, 4(vr3)
000d34  5b010000  j 8
000d38  fa334240  vextracti.s r7, 4(vr4)
000d3c  1bc43000  srli r8, r1, 3
000d40  1b041400  andi r8, r8, 1
000d44  3b300400  bneq r8, zero, 12
000d48  7ab43140  vextracti.s r8, 3(vr3)
000d4c  5b010000  j 8
000d50  7a343240  vextracti.s r8, 3(vr4)
000d54  9bc42000  srli r9, r1, 2
000d58  9b841400  andi r9, r9, 1
000d5c  3bb00400  bneq r9, zero, 12
000d60  fab42140  vextracti.s r9, 2(vr3)
000d64  5b010000  j 8
000d68  fa342240  vextracti.s r9, 2(vr4)
000d6c  1bcc1000  srli r24, r1, 1
000d70  1b0c1c00  andi r24, r24, 1
000d74  3b600c00  bneq r24, zero, 24
000d78  7abc1140  vextracti.s r24, 1(vr3)
000d7c  9b801000  andi r1, r1, 1
000d80  37e00000  beq r1, zero, 24
000d84  fa300240  vextracti.s r1, 0(vr4)
000d88  db020000  j 20
000d8c  7a3c1240  vextracti.s r24, 1(vr4)
000d90  9b801000  andi r1, r1, 1
000d94  bbcf00fe  bneq r1, zero, -16
000d98  fab00140  vextracti.s r1, 0(vr3)
000d9c  12322002  vadd.s.mz vr4{mr1}, zero, vr2
000da0  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
000da4  9f200000  addli r1, zero, 2
000da8  7e8000e0  vmmov mr0, r1
000dac  9f400000  addli r1, zero, 4
000db0  6a224c30  vor.u.mh vr4{mr0}, r24, vr4
000db4  7e8000e0  vmmov mr0, r1
000db8  9f001000  addli r1, zero, 8
000dbc  6aa24430  vor.u.mh vr4{mr0}, r9, vr4
000dc0  7e8000e0  vmmov mr0, r1
000dc4  9f002000  addli r1, zero, 16
000dc8  6a224430  vor.u.mh vr4{mr0}, r8, vr4
000dcc  7e8000e0  vmmov mr0, r1
000dd0  9f004000  addli r1, zero, 32
000dd4  6aa24330  vor.u.mh vr4{mr0}, r7, vr4
000dd8  7e8000e0  vmmov mr0, r1
000ddc  9f008000  addli r1, zero, 64
000de0  6a224330  vor.u.mh vr4{mr0}, r6, vr4
000de4  7e8000e0  vmmov mr0, r1
000de8  9f000001  addli r1, zero, 128
000dec  6a224130  vor.u.mh vr4{mr0}, r2, vr4
000df0  7e8000e0  vmmov mr0, r1
000df4  9f000002  addli r1, zero, 256
000df8  2b014000  lui r2, 1024
000dfc  6aa24a30  vor.u.mh vr4{mr0}, r21, vr4
000e00  7e8000e0  vmmov mr0, r1
000e04  9f000004  addli r1, zero, 512
000e08  6a224a30  vor.u.mh vr4{mr0}, r20, vr4
000e0c  7e8000e0  vmmov mr0, r1
000e10  9f000008  addli r1, zero, 1024
000e14  6aa24830  vor.u.mh vr4{mr0}, r17, vr4
000e18  7e8000e0  vmmov mr0, r1
000e1c  9f000010  addli r1, zero, 2048
000e20  6aa24130  vor.u.mh vr4{mr0}, r3, vr4
000e24  7e8000e0  vmmov mr0, r1
000e28  9f000fee  addli r1, r30, -2304
000e2c  6aa24b30  vor.u.mh vr4{mr0}, r23, vr4
000e30  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000e34  9f000020  addli r1, zero, 4096
000e38  7e8000e0  vmmov mr0, r1
000e3c  9f000040  addli r1, zero, 8192
000e40  6a224730  vor.u.mh vr4{mr0}, r14, vr4
000e44  7e8000e0  vmmov mr0, r1
000e48  ab400000  lui r1, 4
000e4c  9692a102  vadd.f.mz.rn vr5{mr1}, vr3, vr10
000e50  6aa24530  vor.u.mh vr4{mr0}, r11, vr4
000e54  7e8000e0  vmmov mr0, r1
000e58  ab800000  lui r1, 8
000e5c  ee3150c2  vsrl.s.mz vr3{mr1}, vr0, vr5
000e60  669302c0  vabs.f vr6, vr5
000e64  6a224e30  vor.u.mh vr4{mr0}, r28, vr4
000e68  7e8000e0  vmmov mr0, r1
000e6c  9f002000  addli r1, zero, 16
000e70  ea313502  vand.s.mz vr3{mr1}, r10, vr3
000e74  6aa24d30  vor.u.mh vr4{mr0}, r27, vr4
000e78  76a06042  vlt.u.mz mr0{mr1}, vr1, vr6
000e7c  7e0700a0  vmmov r14, mr0
000e80  96b13202  vadd.s.mz vr3{mr1}, vr5, vr3
000e84  6af340c0  vsrl.p vr6, r1, vr4
000e88  6a325122  vor.s.mz vr4{mr1}, r2, vr5
000e8c  2b515555  lui r2, 349525
000e90  9b40f700  srli r1, r14, 15
000e94  1f51a10a  addli r2, r2, 1365
000e98  92b13202  vadd.s.mz vr3{mr1}, r5, vr3
000e9c  9b801000  andi r1, r1, 1
000ea0  7e0001e0  vmmov mr0, r2
000ea4  6301fff3  loadli.w r2,  -1544(r30)
000ea8  46006110  vstore.mh vr6{mr0}, 0(r2)
000eac  3bb00000  bneq r1, zero, 12
000eb0  fabdf140  vextracti.s r27, 15(vr3)
000eb4  5b010000  j 8
000eb8  fa3df240  vextracti.s r27, 15(vr4)
000ebc  9b40e700  srli r1, r14, 14
000ec0  9b801000  andi r1, r1, 1
000ec4  3bb00000  bneq r1, zero, 12
000ec8  7abee140  vextracti.s r28, 14(vr3)
000ecc  5b010000  j 8
000ed0  7a3ee240  vextracti.s r28, 14(vr4)
000ed4  9b40d700  srli r1, r14, 13
000ed8  9b801000  andi r1, r1, 1
000edc  3bb00000  bneq r1, zero, 12
000ee0  fab5d140  vextracti.s r11, 13(vr3)
000ee4  5b010000  j 8
000ee8  fa35d240  vextracti.s r11, 13(vr4)
000eec  9b40c700  srli r1, r14, 12
000ef0  9b801000  andi r1, r1, 1
000ef4  3bb00000  bneq r1, zero, 12
000ef8  fab0c140  vextracti.s r1, 12(vr3)
000efc  5b010000  j 8
000f00  fa30c240  vextracti.s r1, 12(vr4)
000f04  1b41b700  srli r2, r14, 11
000f08  1b011100  andi r2, r2, 1
000f0c  3b300100  bneq r2, zero, 12
000f10  fabbb140  vextracti.s r23, 11(vr3)
000f14  5b010000  j 8
000f18  fa3bb240  vextracti.s r23, 11(vr4)
000f1c  1b41a700  srli r2, r14, 10
000f20  1b011100  andi r2, r2, 1
000f24  3b300100  bneq r2, zero, 12
000f28  fab1a140  vextracti.s r3, 10(vr3)
000f2c  5b010000  j 8
000f30  fa31a240  vextracti.s r3, 10(vr4)
000f34  1b419700  srli r2, r14, 9
000f38  1b011100  andi r2, r2, 1
000f3c  3b300100  bneq r2, zero, 12
000f40  7aba9140  vextracti.s r20, 9(vr3)
000f44  5b010000  j 8
000f48  7a3a9240  vextracti.s r20, 9(vr4)
000f4c  1b418700  srli r2, r14, 8
000f50  1b011100  andi r2, r2, 1
000f54  3b300100  bneq r2, zero, 12
000f58  fab88140  vextracti.s r17, 8(vr3)
000f5c  5b010000  j 8
000f60  fa388240  vextracti.s r17, 8(vr4)
000f64  1b417700  srli r2, r14, 7
000f68  1b011100  andi r2, r2, 1
000f6c  3b300100  bneq r2, zero, 12
000f70  faba7140  vextracti.s r21, 7(vr3)
000f74  5b010000  j 8
000f78  fa3a7240  vextracti.s r21, 7(vr4)
000f7c  1b416700  srli r2, r14, 6
000f80  1b011100  andi r2, r2, 1
000f84  3b300100  bneq r2, zero, 12
000f88  7abc6140  vextracti.s r24, 6(vr3)
000f8c  5b010000  j 8
000f90  7a3c6240  vextracti.s r24, 6(vr4)
000f94  1b415700  srli r2, r14, 5
000f98  1b011100  andi r2, r2, 1
000f9c  3b300100  bneq r2, zero, 12
000fa0  7ab15140  vextracti.s r2, 5(vr3)
000fa4  5b010000  j 8
000fa8  7a315240  vextracti.s r2, 5(vr4)
000fac  1b434700  srli r6, r14, 4
000fb0  1b031300  andi r6, r6, 1
000fb4  3b300300  bneq r6, zero, 12
000fb8  7ab34140  vextracti.s r6, 4(vr3)
000fbc  5b010000  j 8
000fc0  7a334240  vextracti.s r6, 4(vr4)
000fc4  9b433700  srli r7, r14, 3
000fc8  9b831300  andi r7, r7, 1
000fcc  3bb00300  bneq r7, zero, 12
000fd0  fab33140  vextracti.s r7, 3(vr3)
000fd4  5b010000  j 8
000fd8  fa333240  vextracti.s r7, 3(vr4)
000fdc  1b442700  srli r8, r14, 2
000fe0  1b041400  andi r8, r8, 1
000fe4  3b300400  bneq r8, zero, 12
000fe8  7ab42140  vextracti.s r8, 2(vr3)
000fec  5b010000  j 8
000ff0  7a342240  vextracti.s r8, 2(vr4)
000ff4  9b441700  srli r9, r14, 1
000ff8  9b841400  andi r9, r9, 1
000ffc  3be00400  bneq r9, zero, 24
001000  fab41140  vextracti.s r9, 1(vr3)
001004  1b071700  andi r14, r14, 1
001008  37600700  beq r14, zero, 24
00100c  7a370240  vextracti.s r14, 0(vr4)
001010  db020000  j 20
001014  fa341240  vextracti.s r9, 1(vr4)
001018  1b071700  andi r14, r14, 1
00101c  bb4f07fe  bneq r14, zero, -16
001020  7ab70140  vextracti.s r14, 0(vr3)
001024  92322002  vadd.s.mz vr5{mr1}, zero, vr2
001028  ea225734  vor.u.mh vr5{mr2}, r14, vr5
00102c  1f270000  addli r14, zero, 2
001030  7e0007e0  vmmov mr0, r14
001034  eaa25430  vor.u.mh vr5{mr0}, r9, vr5
001038  9f440000  addli r9, zero, 4
00103c  7e8004e0  vmmov mr0, r9
001040  ea225430  vor.u.mh vr5{mr0}, r8, vr5
001044  1f041000  addli r8, zero, 8
001048  7e0004e0  vmmov mr0, r8
00104c  eaa25330  vor.u.mh vr5{mr0}, r7, vr5
001050  9f032000  addli r7, zero, 16
001054  7e8003e0  vmmov mr0, r7
001058  ea225330  vor.u.mh vr5{mr0}, r6, vr5
00105c  1f034000  addli r6, zero, 32
001060  7e0003e0  vmmov mr0, r6
001064  ea225130  vor.u.mh vr5{mr0}, r2, vr5
001068  1f018000  addli r2, zero, 64
00106c  7e0001e0  vmmov mr0, r2
001070  1f010001  addli r2, zero, 128
001074  ea225c30  vor.u.mh vr5{mr0}, r24, vr5
001078  7e0001e0  vmmov mr0, r2
00107c  1f010002  addli r2, zero, 256
001080  eaa25a30  vor.u.mh vr5{mr0}, r21, vr5
001084  7e0001e0  vmmov mr0, r2
001088  1f010004  addli r2, zero, 512
00108c  eaa25830  vor.u.mh vr5{mr0}, r17, vr5
001090  7e0001e0  vmmov mr0, r2
001094  1f010fef  addli r2, r30, -2176
001098  ea225a30  vor.u.mh vr5{mr0}, r20, vr5
00109c  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
0010a0  1f018fee  addli r2, r30, -2240
0010a4  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
0010a8  1f010008  addli r2, zero, 1024
0010ac  7e0001e0  vmmov mr0, r2
0010b0  1f010010  addli r2, zero, 2048
0010b4  eaa25130  vor.u.mh vr5{mr0}, r3, vr5
0010b8  ab014000  lui r3, 1024
0010bc  e6c10100  vshuffle2.hf vr3, vr3
0010c0  7e0001e0  vmmov mr0, r2
0010c4  1f010020  addli r2, zero, 4096
0010c8  66420200  vshuffle2.hf vr4, vr4
0010cc  eaa25b30  vor.u.mh vr5{mr0}, r23, vr5
0010d0  7e0001e0  vmmov mr0, r2
0010d4  2b810000  lui r2, 8
0010d8  16924102  vadd.f.mz.rn vr4{mr1}, vr3, vr4
0010dc  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0010e0  9f000040  addli r1, zero, 8192
0010e4  7e8000e0  vmmov mr0, r1
0010e8  ab400000  lui r1, 4
0010ec  ee3140c2  vsrl.s.mz vr3{mr1}, vr0, vr4
0010f0  661302c0  vabs.f vr6, vr4
0010f4  eaa25530  vor.u.mh vr5{mr0}, r11, vr5
0010f8  7e8000e0  vmmov mr0, r1
0010fc  ea313502  vand.s.mz vr3{mr1}, r10, vr3
001100  ea225e30  vor.u.mh vr5{mr0}, r28, vr5
001104  76a06042  vlt.u.mz mr0{mr1}, vr1, vr6
001108  fe0000a0  vmmov r1, mr0
00110c  7e0001e0  vmmov mr0, r2
001110  1bc1f000  srli r2, r1, 15
001114  96313202  vadd.s.mz vr3{mr1}, vr4, vr3
001118  6ab24122  vor.s.mz vr4{mr1}, r3, vr4
00111c  eaa25d30  vor.u.mh vr5{mr0}, r27, vr5
001120  e341fff3  loadli.w r3,  -1540(r30)
001124  1b011100  andi r2, r2, 1
001128  92b13202  vadd.s.mz vr3{mr1}, r5, vr3
00112c  46805116  vstore.mh vr5{mr3}, 0(r3)
001130  3b300100  bneq r2, zero, 12
001134  fabdf140  vextracti.s r27, 15(vr3)
001138  5b010000  j 8
00113c  fa3df240  vextracti.s r27, 15(vr4)
001140  1bc1e000  srli r2, r1, 14
001144  1b011100  andi r2, r2, 1
001148  3b300100  bneq r2, zero, 12
00114c  7abee140  vextracti.s r28, 14(vr3)
001150  5b010000  j 8
001154  7a3ee240  vextracti.s r28, 14(vr4)
001158  1bc1d000  srli r2, r1, 13
00115c  1b011100  andi r2, r2, 1
001160  3b300100  bneq r2, zero, 12
001164  fab5d140  vextracti.s r11, 13(vr3)
001168  5b010000  j 8
00116c  fa35d240  vextracti.s r11, 13(vr4)
001170  1bc1c000  srli r2, r1, 12
001174  1b011100  andi r2, r2, 1
001178  3b300100  bneq r2, zero, 12
00117c  7ab7c140  vextracti.s r14, 12(vr3)
001180  5b010000  j 8
001184  7a37c240  vextracti.s r14, 12(vr4)
001188  1bc1b000  srli r2, r1, 11
00118c  1b011100  andi r2, r2, 1
001190  3b300100  bneq r2, zero, 12
001194  fabbb140  vextracti.s r23, 11(vr3)
001198  5b010000  j 8
00119c  fa3bb240  vextracti.s r23, 11(vr4)
0011a0  1bc1a000  srli r2, r1, 10
0011a4  1b011100  andi r2, r2, 1
0011a8  3b300100  bneq r2, zero, 12
0011ac  fab1a140  vextracti.s r3, 10(vr3)
0011b0  5b010000  j 8
0011b4  fa31a240  vextracti.s r3, 10(vr4)
0011b8  1bc19000  srli r2, r1, 9
0011bc  1b011100  andi r2, r2, 1
0011c0  3b300100  bneq r2, zero, 12
0011c4  fab89140  vextracti.s r17, 9(vr3)
0011c8  5b010000  j 8
0011cc  fa389240  vextracti.s r17, 9(vr4)
0011d0  1bc18000  srli r2, r1, 8
0011d4  1b011100  andi r2, r2, 1
0011d8  3b300100  bneq r2, zero, 12
0011dc  7aba8140  vextracti.s r20, 8(vr3)
0011e0  5b010000  j 8
0011e4  7a3a8240  vextracti.s r20, 8(vr4)
0011e8  1bc17000  srli r2, r1, 7
0011ec  1b011100  andi r2, r2, 1
0011f0  3b300100  bneq r2, zero, 12
0011f4  faba7140  vextracti.s r21, 7(vr3)
0011f8  5b010000  j 8
0011fc  fa3a7240  vextracti.s r21, 7(vr4)
001200  1bc16000  srli r2, r1, 6
001204  1b011100  andi r2, r2, 1
001208  3b300100  bneq r2, zero, 12
00120c  7ab16140  vextracti.s r2, 6(vr3)
001210  5b010000  j 8
001214  7a316240  vextracti.s r2, 6(vr4)
001218  1bc35000  srli r6, r1, 5
00121c  1b031300  andi r6, r6, 1
001220  3b300300  bneq r6, zero, 12
001224  7ab35140  vextracti.s r6, 5(vr3)
001228  5b010000  j 8
00122c  7a335240  vextracti.s r6, 5(vr4)
001230  9bc34000  srli r7, r1, 4
001234  9b831300  andi r7, r7, 1
001238  3bb00300  bneq r7, zero, 12
00123c  fab34140  vextracti.s r7, 4(vr3)
001240  5b010000  j 8
001244  fa334240  vextracti.s r7, 4(vr4)
001248  1bc43000  srli r8, r1, 3
00124c  1b041400  andi r8, r8, 1
001250  3b300400  bneq r8, zero, 12
001254  7ab43140  vextracti.s r8, 3(vr3)
001258  5b010000  j 8
00125c  7a343240  vextracti.s r8, 3(vr4)
001260  9bc42000  srli r9, r1, 2
001264  9b841400  andi r9, r9, 1
001268  3bb00400  bneq r9, zero, 12
00126c  fab42140  vextracti.s r9, 2(vr3)
001270  5b010000  j 8
001274  fa342240  vextracti.s r9, 2(vr4)
001278  1bcc1000  srli r24, r1, 1
00127c  1b0c1c00  andi r24, r24, 1
001280  3b600c00  bneq r24, zero, 24
001284  7abc1140  vextracti.s r24, 1(vr3)
001288  9b801000  andi r1, r1, 1
00128c  37e00000  beq r1, zero, 24
001290  fa300240  vextracti.s r1, 0(vr4)
001294  db020000  j 20
001298  7a3c1240  vextracti.s r24, 1(vr4)
00129c  9b801000  andi r1, r1, 1
0012a0  bbcf00fe  bneq r1, zero, -16
0012a4  fab00140  vextracti.s r1, 0(vr3)
0012a8  12322002  vadd.s.mz vr4{mr1}, zero, vr2
0012ac  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
0012b0  9f200000  addli r1, zero, 2
0012b4  7e8000e0  vmmov mr0, r1
0012b8  9f400000  addli r1, zero, 4
0012bc  6a224c30  vor.u.mh vr4{mr0}, r24, vr4
0012c0  7e8000e0  vmmov mr0, r1
0012c4  9f001000  addli r1, zero, 8
0012c8  6aa24430  vor.u.mh vr4{mr0}, r9, vr4
0012cc  7e8000e0  vmmov mr0, r1
0012d0  9f002000  addli r1, zero, 16
0012d4  6a224430  vor.u.mh vr4{mr0}, r8, vr4
0012d8  7e8000e0  vmmov mr0, r1
0012dc  9f004000  addli r1, zero, 32
0012e0  6aa24330  vor.u.mh vr4{mr0}, r7, vr4
0012e4  7e8000e0  vmmov mr0, r1
0012e8  9f008000  addli r1, zero, 64
0012ec  6a224330  vor.u.mh vr4{mr0}, r6, vr4
0012f0  7e8000e0  vmmov mr0, r1
0012f4  9f000001  addli r1, zero, 128
0012f8  6a224130  vor.u.mh vr4{mr0}, r2, vr4
0012fc  7e8000e0  vmmov mr0, r1
001300  9f000002  addli r1, zero, 256
001304  2b014000  lui r2, 1024
001308  6aa24a30  vor.u.mh vr4{mr0}, r21, vr4
00130c  7e8000e0  vmmov mr0, r1
001310  9f000004  addli r1, zero, 512
001314  6a224a30  vor.u.mh vr4{mr0}, r20, vr4
001318  7e8000e0  vmmov mr0, r1
00131c  9f000008  addli r1, zero, 1024
001320  6aa24830  vor.u.mh vr4{mr0}, r17, vr4
001324  7e8000e0  vmmov mr0, r1
001328  9f000010  addli r1, zero, 2048
00132c  6aa24130  vor.u.mh vr4{mr0}, r3, vr4
001330  7e8000e0  vmmov mr0, r1
001334  9f000ff0  addli r1, r30, -2048
001338  6aa24b30  vor.u.mh vr4{mr0}, r23, vr4
00133c  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
001340  9f008fef  addli r1, r30, -2112
001344  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
001348  9f000020  addli r1, zero, 4096
00134c  7e8000e0  vmmov mr0, r1
001350  9f000040  addli r1, zero, 8192
001354  6a224730  vor.u.mh vr4{mr0}, r14, vr4
001358  7e8000e0  vmmov mr0, r1
00135c  ab400000  lui r1, 4
001360  96925102  vadd.f.mz.rn vr5{mr1}, vr3, vr5
001364  6aa24530  vor.u.mh vr4{mr0}, r11, vr4
001368  7e8000e0  vmmov mr0, r1
00136c  ab800000  lui r1, 8
001370  ee3150c2  vsrl.s.mz vr3{mr1}, vr0, vr5
001374  669302c0  vabs.f vr6, vr5
001378  6a224e30  vor.u.mh vr4{mr0}, r28, vr4
00137c  7e8000e0  vmmov mr0, r1
001380  9f002000  addli r1, zero, 16
001384  ea313502  vand.s.mz vr3{mr1}, r10, vr3
001388  6aa24d30  vor.u.mh vr4{mr0}, r27, vr4
00138c  76a06042  vlt.u.mz mr0{mr1}, vr1, vr6
001390  7e0700a0  vmmov r14, mr0
001394  96b13202  vadd.s.mz vr3{mr1}, vr5, vr3
001398  6af340c0  vsrl.p vr6, r1, vr4
00139c  6a325122  vor.s.mz vr4{mr1}, r2, vr5
0013a0  2b515555  lui r2, 349525
0013a4  9b40f700  srli r1, r14, 15
0013a8  1f51a10a  addli r2, r2, 1365
0013ac  9b801000  andi r1, r1, 1
0013b0  92b13202  vadd.s.mz vr3{mr1}, r5, vr3
0013b4  7e0001e0  vmmov mr0, r2
0013b8  6341fff3  loadli.w r2,  -1540(r30)
0013bc  46006110  vstore.mh vr6{mr0}, 0(r2)
0013c0  3bb00000  bneq r1, zero, 12
0013c4  fabdf140  vextracti.s r27, 15(vr3)
0013c8  5b010000  j 8
0013cc  fa3df240  vextracti.s r27, 15(vr4)
0013d0  9b40e700  srli r1, r14, 14
0013d4  9b801000  andi r1, r1, 1
0013d8  3bb00000  bneq r1, zero, 12
0013dc  7abee140  vextracti.s r28, 14(vr3)
0013e0  5b010000  j 8
0013e4  7a3ee240  vextracti.s r28, 14(vr4)
0013e8  9b40d700  srli r1, r14, 13
0013ec  9b801000  andi r1, r1, 1
0013f0  3bb00000  bneq r1, zero, 12
0013f4  fab5d140  vextracti.s r11, 13(vr3)
0013f8  5b010000  j 8
0013fc  fa35d240  vextracti.s r11, 13(vr4)
001400  9b40c700  srli r1, r14, 12
001404  9b801000  andi r1, r1, 1
001408  3bb00000  bneq r1, zero, 12
00140c  fab0c140  vextracti.s r1, 12(vr3)
001410  5b010000  j 8
001414  fa30c240  vextracti.s r1, 12(vr4)
001418  1b41b700  srli r2, r14, 11
00141c  1b011100  andi r2, r2, 1
001420  3b300100  bneq r2, zero, 12
001424  fabbb140  vextracti.s r23, 11(vr3)
001428  5b010000  j 8
00142c  fa3bb240  vextracti.s r23, 11(vr4)
001430  1b41a700  srli r2, r14, 10
001434  1b011100  andi r2, r2, 1
001438  3b300100  bneq r2, zero, 12
00143c  fab1a140  vextracti.s r3, 10(vr3)
001440  5b010000  j 8
001444  fa31a240  vextracti.s r3, 10(vr4)
001448  1b419700  srli r2, r14, 9
00144c  1b011100  andi r2, r2, 1
001450  3b300100  bneq r2, zero, 12
001454  7aba9140  vextracti.s r20, 9(vr3)
001458  5b010000  j 8
00145c  7a3a9240  vextracti.s r20, 9(vr4)
001460  1b418700  srli r2, r14, 8
001464  1b011100  andi r2, r2, 1
001468  3b300100  bneq r2, zero, 12
00146c  fab88140  vextracti.s r17, 8(vr3)
001470  5b010000  j 8
001474  fa388240  vextracti.s r17, 8(vr4)
001478  1b417700  srli r2, r14, 7
00147c  1b011100  andi r2, r2, 1
001480  3b300100  bneq r2, zero, 12
001484  faba7140  vextracti.s r21, 7(vr3)
001488  5b010000  j 8
00148c  fa3a7240  vextracti.s r21, 7(vr4)
001490  1b416700  srli r2, r14, 6
001494  1b011100  andi r2, r2, 1
001498  3b300100  bneq r2, zero, 12
00149c  7abc6140  vextracti.s r24, 6(vr3)
0014a0  5b010000  j 8
0014a4  7a3c6240  vextracti.s r24, 6(vr4)
0014a8  1b415700  srli r2, r14, 5
0014ac  1b011100  andi r2, r2, 1
0014b0  3b300100  bneq r2, zero, 12
0014b4  7ab15140  vextracti.s r2, 5(vr3)
0014b8  5b010000  j 8
0014bc  7a315240  vextracti.s r2, 5(vr4)
0014c0  1b434700  srli r6, r14, 4
0014c4  1b031300  andi r6, r6, 1
0014c8  3b300300  bneq r6, zero, 12
0014cc  7ab34140  vextracti.s r6, 4(vr3)
0014d0  5b010000  j 8
0014d4  7a334240  vextracti.s r6, 4(vr4)
0014d8  9b433700  srli r7, r14, 3
0014dc  9b831300  andi r7, r7, 1
0014e0  3bb00300  bneq r7, zero, 12
0014e4  fab33140  vextracti.s r7, 3(vr3)
0014e8  5b010000  j 8
0014ec  fa333240  vextracti.s r7, 3(vr4)
0014f0  1b442700  srli r8, r14, 2
0014f4  1b041400  andi r8, r8, 1
0014f8  3b300400  bneq r8, zero, 12
0014fc  7ab42140  vextracti.s r8, 2(vr3)
001500  5b010000  j 8
001504  7a342240  vextracti.s r8, 2(vr4)
001508  9b441700  srli r9, r14, 1
00150c  9b841400  andi r9, r9, 1
001510  3be00400  bneq r9, zero, 24
001514  fab41140  vextracti.s r9, 1(vr3)
001518  1b071700  andi r14, r14, 1
00151c  37600700  beq r14, zero, 24
001520  7a370240  vextracti.s r14, 0(vr4)
001524  db020000  j 20
001528  fa341240  vextracti.s r9, 1(vr4)
00152c  1b071700  andi r14, r14, 1
001530  bb4f07fe  bneq r14, zero, -16
001534  7ab70140  vextracti.s r14, 0(vr3)
001538  92322002  vadd.s.mz vr5{mr1}, zero, vr2
00153c  ea225734  vor.u.mh vr5{mr2}, r14, vr5
001540  1f270000  addli r14, zero, 2
001544  7e0007e0  vmmov mr0, r14
001548  eaa25430  vor.u.mh vr5{mr0}, r9, vr5
00154c  9f440000  addli r9, zero, 4
001550  7e8004e0  vmmov mr0, r9
001554  ea225430  vor.u.mh vr5{mr0}, r8, vr5
001558  1f041000  addli r8, zero, 8
00155c  7e0004e0  vmmov mr0, r8
001560  eaa25330  vor.u.mh vr5{mr0}, r7, vr5
001564  9f032000  addli r7, zero, 16
001568  7e8003e0  vmmov mr0, r7
00156c  ea225330  vor.u.mh vr5{mr0}, r6, vr5
001570  1f034000  addli r6, zero, 32
001574  7e0003e0  vmmov mr0, r6
001578  ea225130  vor.u.mh vr5{mr0}, r2, vr5
00157c  1f018000  addli r2, zero, 64
001580  7e0001e0  vmmov mr0, r2
001584  1f010001  addli r2, zero, 128
001588  ea225c30  vor.u.mh vr5{mr0}, r24, vr5
00158c  7e0001e0  vmmov mr0, r2
001590  1f010002  addli r2, zero, 256
001594  eaa25a30  vor.u.mh vr5{mr0}, r21, vr5
001598  7e0001e0  vmmov mr0, r2
00159c  1f010004  addli r2, zero, 512
0015a0  eaa25830  vor.u.mh vr5{mr0}, r17, vr5
0015a4  7e0001e0  vmmov mr0, r2
0015a8  1f010ff1  addli r2, r30, -1920
0015ac  ea225a30  vor.u.mh vr5{mr0}, r20, vr5
0015b0  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
0015b4  1f018ff0  addli r2, r30, -1984
0015b8  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
0015bc  1f010008  addli r2, zero, 1024
0015c0  7e0001e0  vmmov mr0, r2
0015c4  1f010010  addli r2, zero, 2048
0015c8  eaa25130  vor.u.mh vr5{mr0}, r3, vr5
0015cc  e6c10100  vshuffle2.hf vr3, vr3
0015d0  7e0001e0  vmmov mr0, r2
0015d4  1f010020  addli r2, zero, 4096
0015d8  66420200  vshuffle2.hf vr4, vr4
0015dc  eaa25b30  vor.u.mh vr5{mr0}, r23, vr5
0015e0  7e0001e0  vmmov mr0, r2
0015e4  2b014000  lui r2, 1024
0015e8  16924102  vadd.f.mz.rn vr4{mr1}, vr3, vr4
0015ec  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0015f0  9f000040  addli r1, zero, 8192
0015f4  7e8000e0  vmmov mr0, r1
0015f8  ab400000  lui r1, 4
0015fc  ee3140c2  vsrl.s.mz vr3{mr1}, vr0, vr4
001600  661302c0  vabs.f vr6, vr4
001604  eaa25530  vor.u.mh vr5{mr0}, r11, vr5
001608  7e8000e0  vmmov mr0, r1
00160c  ab800000  lui r1, 8
001610  ea313502  vand.s.mz vr3{mr1}, r10, vr3
001614  ea225e30  vor.u.mh vr5{mr0}, r28, vr5
001618  76a06042  vlt.u.mz mr0{mr1}, vr1, vr6
00161c  7e0700a0  vmmov r14, mr0
001620  7e8000e0  vmmov mr0, r1
001624  9b40f700  srli r1, r14, 15
001628  96313202  vadd.s.mz vr3{mr1}, vr4, vr3
00162c  6a324122  vor.s.mz vr4{mr1}, r2, vr4
001630  eaa25d30  vor.u.mh vr5{mr0}, r27, vr5
001634  6341eff3  loadli.w r2,  -1548(r30)
001638  9b801000  andi r1, r1, 1
00163c  92b13202  vadd.s.mz vr3{mr1}, r5, vr3
001640  46005116  vstore.mh vr5{mr3}, 0(r2)
001644  3bb00000  bneq r1, zero, 12
001648  fabdf140  vextracti.s r27, 15(vr3)
00164c  5b010000  j 8
001650  fa3df240  vextracti.s r27, 15(vr4)
001654  9b40e700  srli r1, r14, 14
001658  9b801000  andi r1, r1, 1
00165c  3bb00000  bneq r1, zero, 12
001660  fab5e140  vextracti.s r11, 14(vr3)
001664  5b010000  j 8
001668  fa35e240  vextracti.s r11, 14(vr4)
00166c  9b40d700  srli r1, r14, 13
001670  9b801000  andi r1, r1, 1
001674  3bb00000  bneq r1, zero, 12
001678  fab0d140  vextracti.s r1, 13(vr3)
00167c  5b010000  j 8
001680  fa30d240  vextracti.s r1, 13(vr4)
001684  1b41c700  srli r2, r14, 12
001688  1b011100  andi r2, r2, 1
00168c  3b300100  bneq r2, zero, 12
001690  7abec140  vextracti.s r28, 12(vr3)
001694  5b010000  j 8
001698  7a3ec240  vextracti.s r28, 12(vr4)
00169c  1b41b700  srli r2, r14, 11
0016a0  1b011100  andi r2, r2, 1
0016a4  3b300100  bneq r2, zero, 12
0016a8  fabbb140  vextracti.s r23, 11(vr3)
0016ac  5b010000  j 8
0016b0  fa3bb240  vextracti.s r23, 11(vr4)
0016b4  1b41a700  srli r2, r14, 10
0016b8  1b011100  andi r2, r2, 1
0016bc  3b300100  bneq r2, zero, 12
0016c0  fab1a140  vextracti.s r3, 10(vr3)
0016c4  5b010000  j 8
0016c8  fa31a240  vextracti.s r3, 10(vr4)
0016cc  1b419700  srli r2, r14, 9
0016d0  1b011100  andi r2, r2, 1
0016d4  3b300100  bneq r2, zero, 12
0016d8  fab89140  vextracti.s r17, 9(vr3)
0016dc  5b010000  j 8
0016e0  fa389240  vextracti.s r17, 9(vr4)
0016e4  1b418700  srli r2, r14, 8
0016e8  1b011100  andi r2, r2, 1
0016ec  3b300100  bneq r2, zero, 12
0016f0  7aba8140  vextracti.s r20, 8(vr3)
0016f4  5b010000  j 8
0016f8  7a3a8240  vextracti.s r20, 8(vr4)
0016fc  1b417700  srli r2, r14, 7
001700  1b011100  andi r2, r2, 1
001704  3b300100  bneq r2, zero, 12
001708  faba7140  vextracti.s r21, 7(vr3)
00170c  5b010000  j 8
001710  fa3a7240  vextracti.s r21, 7(vr4)
001714  1b416700  srli r2, r14, 6
001718  1b011100  andi r2, r2, 1
00171c  3b300100  bneq r2, zero, 12
001720  7ab16140  vextracti.s r2, 6(vr3)
001724  5b010000  j 8
001728  7a316240  vextracti.s r2, 6(vr4)
00172c  1b435700  srli r6, r14, 5
001730  1b031300  andi r6, r6, 1
001734  3b300300  bneq r6, zero, 12
001738  7ab35140  vextracti.s r6, 5(vr3)
00173c  5b010000  j 8
001740  7a335240  vextracti.s r6, 5(vr4)
001744  9b434700  srli r7, r14, 4
001748  9b831300  andi r7, r7, 1
00174c  3bb00300  bneq r7, zero, 12
001750  fab34140  vextracti.s r7, 4(vr3)
001754  5b010000  j 8
001758  fa334240  vextracti.s r7, 4(vr4)
00175c  1b443700  srli r8, r14, 3
001760  1b041400  andi r8, r8, 1
001764  3b300400  bneq r8, zero, 12
001768  7ab43140  vextracti.s r8, 3(vr3)
00176c  5b010000  j 8
001770  7a343240  vextracti.s r8, 3(vr4)
001774  9b442700  srli r9, r14, 2
001778  9b841400  andi r9, r9, 1
00177c  3bb00400  bneq r9, zero, 12
001780  fab42140  vextracti.s r9, 2(vr3)
001784  5b010000  j 8
001788  fa342240  vextracti.s r9, 2(vr4)
00178c  1b4c1700  srli r24, r14, 1
001790  1b0c1c00  andi r24, r24, 1
001794  3b600c00  bneq r24, zero, 24
001798  7abc1140  vextracti.s r24, 1(vr3)
00179c  1b071700  andi r14, r14, 1
0017a0  37600700  beq r14, zero, 24
0017a4  7a370240  vextracti.s r14, 0(vr4)
0017a8  db020000  j 20
0017ac  7a3c1240  vextracti.s r24, 1(vr4)
0017b0  1b071700  andi r14, r14, 1
0017b4  bb4f07fe  bneq r14, zero, -16
0017b8  7ab70140  vextracti.s r14, 0(vr3)
0017bc  92312002  vadd.s.mz vr3{mr1}, zero, vr2
0017c0  ea213734  vor.u.mh vr3{mr2}, r14, vr3
0017c4  1f270000  addli r14, zero, 2
0017c8  7e0007e0  vmmov mr0, r14
0017cc  1f470000  addli r14, zero, 4
0017d0  ea213c30  vor.u.mh vr3{mr0}, r24, vr3
0017d4  7e0007e0  vmmov mr0, r14
0017d8  1f070ff8  addli r14, r30, -1024
0017dc  eaa13430  vor.u.mh vr3{mr0}, r9, vr3
0017e0  9f041000  addli r9, zero, 8
0017e4  7e8004e0  vmmov mr0, r9
0017e8  9f048ff8  addli r9, r30, -960
0017ec  ea213430  vor.u.mh vr3{mr0}, r8, vr3
0017f0  1f042000  addli r8, zero, 16
0017f4  7e0004e0  vmmov mr0, r8
0017f8  eaa13330  vor.u.mh vr3{mr0}, r7, vr3
0017fc  9f034000  addli r7, zero, 32
001800  7e8003e0  vmmov mr0, r7
001804  ea213330  vor.u.mh vr3{mr0}, r6, vr3
001808  1f038000  addli r6, zero, 64
00180c  7e0003e0  vmmov mr0, r6
001810  2b535555  lui r6, 349525
001814  ea213130  vor.u.mh vr3{mr0}, r2, vr3
001818  1f010001  addli r2, zero, 128
00181c  1f53a30a  addli r6, r6, 1365
001820  7e0001e0  vmmov mr0, r2
001824  1f010002  addli r2, zero, 256
001828  eaa13a30  vor.u.mh vr3{mr0}, r21, vr3
00182c  7e0001e0  vmmov mr0, r2
001830  1f010004  addli r2, zero, 512
001834  ea213a30  vor.u.mh vr3{mr0}, r20, vr3
001838  7e0001e0  vmmov mr0, r2
00183c  1f010008  addli r2, zero, 1024
001840  eaa13830  vor.u.mh vr3{mr0}, r17, vr3
001844  7e0001e0  vmmov mr0, r2
001848  1f010010  addli r2, zero, 2048
00184c  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
001850  7e0001e0  vmmov mr0, r2
001854  1f010020  addli r2, zero, 4096
001858  eaa13b30  vor.u.mh vr3{mr0}, r23, vr3
00185c  7e0001e0  vmmov mr0, r2
001860  1f010040  addli r2, zero, 8192
001864  ea213e30  vor.u.mh vr3{mr0}, r28, vr3
001868  7e0001e0  vmmov mr0, r2
00186c  2b515555  lui r2, 349525
001870  1f51a10a  addli r2, r2, 1365
001874  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
001878  ab400000  lui r1, 4
00187c  7e8000e0  vmmov mr0, r1
001880  ab800000  lui r1, 8
001884  eaa13530  vor.u.mh vr3{mr0}, r11, vr3
001888  7e8000e0  vmmov mr0, r1
00188c  9f000ff6  addli r1, r30, -1280
001890  ab0580bf  lui r11, 784384
001894  eaa13d30  vor.u.mh vr3{mr0}, r27, vr3
001898  7e0001e0  vmmov mr0, r2
00189c  6301fff3  loadli.w r2,  -1544(r30)
0018a0  c2820006  vload.mz vr5{mr3}, 0(r1)
0018a4  42820000  vload.mz vr4{mr0}, 0(r1)
0018a8  e340fff3  loadli.w r1,  -1540(r30)
0018ac  42030100  vload.mz vr6{mr0}, 0(r2)
0018b0  c2050106  vload.mz vr11{mr3}, 0(r2)
0018b4  1f010feb  addli r2, r30, -2688
0018b8  c2840000  vload.mz vr9{mr0}, 0(r1)
0018bc  42850006  vload.mz vr10{mr3}, 0(r1)
0018c0  9f002000  addli r1, zero, 16
0018c4  6af430c0  vsrl.p vr8, r1, vr3
0018c8  ab00003f  lui r1, 258048
0018cc  0a905002  vmul.f.mz.rn vr0{mr1}, r1, vr5
0018d0  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0018d4  1f010fec  addli r2, r30, -2560
0018d8  0a90b002  vmul.f.mz.rn vr0{mr1}, r1, vr11
0018dc  66420200  vshuffle2.hf vr4, vr4
0018e0  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0018e4  1f010fee  addli r2, r30, -2304
0018e8  0a90a002  vmul.f.mz.rn vr0{mr1}, r1, vr10
0018ec  e6430300  vshuffle2.hf vr7, vr6
0018f0  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0018f4  6341ffe9  loadli.w r2,  -2820(r30)
0018f8  e6c10400  vshuffle2.hf vr3, vr9
0018fc  8a105102  vmul.f.mz.rn vr1{mr1}, r2, vr5
001900  7e8101c0  vmmov mr2, mr3
001904  8a14b102  vmul.f.mz.rn vr9{mr1}, r2, vr11
001908  8a12a102  vmul.f.mz.rn vr5{mr1}, r2, vr10
00190c  00a00000  mfence { lm }
001910  f2111042  vlt.f.mz mr3{mr1}, zero, vr1
001914  0a904002  vmul.f.mz.rn vr0{mr1}, r1, vr4
001918  e341eff3  loadli.w r3,  -1548(r30)
00191c  7e800140  vmnot mr0, mr3
001920  0a151b06  vmul.f.mz.rn vr10{mr3}, r22, vr1
001924  8a951500  vmul.f.mz.rn vr11{mr0}, r11, vr1
001928  7e0000a0  vmmov zero, mr0
00192c  7e0003e0  vmmov mr0, r6
001930  8e901002  vmul.f.mz.rn vr1{mr1}, vr1, vr1
001934  67000ff0  storeli.w zero, -2048(r30)
001938  17200000  xor zero, zero, zero
00193c  46808110  vstore.mh vr8{mr0}, 0(r3)
001940  42810100  vload.mz vr2{mr0}, 0(r3)
001944  42840104  vload.mz vr8{mr2}, 0(r3)
001948  9f018feb  addli r3, r30, -2624
00194c  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
001950  46901402  vstore_mask16.mz vr1{mr1}, 0(r9)
001954  8a154102  vmul.f.mz.rn vr11{mr1}, r2, vr4
001958  0a123102  vmul.f.mz.rn vr4{mr1}, r2, vr3
00195c  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
001960  9f010fed  addli r3, r30, -2432
001964  0a907002  vmul.f.mz.rn vr0{mr1}, r1, vr7
001968  8a137102  vmul.f.mz.rn vr7{mr1}, r2, vr7
00196c  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
001970  9f010fef  addli r3, r30, -2176
001974  0a903002  vmul.f.mz.rn vr0{mr1}, r1, vr3
001978  8a118102  vmul.f.mz.rn vr3{mr1}, r2, vr8
00197c  4610a702  vstore_mask16.mz vr10{mr1}, 0(r14)
001980  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
001984  9f018ff0  addli r3, r30, -1984
001988  0a908002  vmul.f.mz.rn vr0{mr1}, r1, vr8
00198c  66410100  vshuffle2.hf vr2, vr2
001990  0a152102  vmul.f.mz.rn vr10{mr1}, r2, vr2
001994  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
001998  0a902002  vmul.f.mz.rn vr0{mr1}, r1, vr2
00199c  9f000ff1  addli r1, r30, -1920
0019a0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0019a4  9f000000  addli r1, zero, 0
0019a8  00a00000  mfence { lm }
0019ac  0b111710  add.s r2, r14, r1
0019b0  ab03803f  lui r7, 260096
0019b4  8b911410  add.s r3, r9, r1
0019b8  9fc00000  addli r1, r1, 4
0019bc  63030100  loadli.w r6,  0(r2)
0019c0  63840100  loadli.w r8,  0(r3)
0019c4  8b639351  fmac.f.rn r7, r6, r25
0019c8  0b630458  neg.f r6, r8
0019cc  0f030300  exp.f.rn r6, r6
0019d0  8f037b18  div.f.rn r7, r22, r7
0019d4  67806100  storeli.w r6, 0(r3)
0019d8  67007100  storeli.w r7, 0(r2)
0019dc  3bcfa0ff  bneq r1, r26, -48
0019e0  00a00000  mfence { lm }
0019e4  7211b042  vlt.f.mz mr2{mr1}, zero, vr11
0019e8  9f008fef  addli r1, r30, -2112
0019ec  0e93b502  vmul.f.mz.rn vr6{mr1}, vr11, vr11
0019f0  1f0c0ff9  addli r24, r30, -896
0019f4  9f0d0ffa  addli r27, r30, -768
0019f8  42110702  vload_mask16.mz vr2{mr1}, 0(r14)
0019fc  6347fff1  loadli.w r14,  -1796(r30)
001a00  e308fff1  loadli.w r17,  -1800(r30)
001a04  634aeff1  loadli.w r20,  -1804(r30)
001a08  e30aeff1  loadli.w r21,  -1808(r30)
001a0c  e34bdff1  loadli.w r23,  -1812(r30)
001a10  c2900402  vload_mask16.mz vr1{mr1}, 0(r9)
001a14  7e000140  vmnot mr0, mr2
001a18  9f048ff9  addli r9, r30, -832
001a1c  7e0000a0  vmmov zero, mr0
001a20  67800000  storeli.w zero, 0(r1)
001a24  17200000  xor zero, zero, zero
001a28  63000ff0  loadli.w zero,  -2048(r30)
001a2c  46906402  vstore_mask16.mz vr6{mr1}, 0(r9)
001a30  0a142702  vmul.f.mz.rn vr8{mr1}, r14, vr2
001a34  12948802  vadd.f.mz.rn vr8{mr1}, r17, vr8
001a38  0e142402  vmul.f.mz.rn vr8{mr1}, vr8, vr2
001a3c  12148a02  vadd.f.mz.rn vr8{mr1}, r20, vr8
001a40  0e142402  vmul.f.mz.rn vr8{mr1}, vr8, vr2
001a44  12948a02  vadd.f.mz.rn vr8{mr1}, r21, vr8
001a48  0e142402  vmul.f.mz.rn vr8{mr1}, vr8, vr2
001a4c  12948b02  vadd.f.mz.rn vr8{mr1}, r23, vr8
001a50  0e112402  vmul.f.mz.rn vr2{mr1}, vr8, vr2
001a54  0a94b500  vmul.f.mz.rn vr8{mr0}, r11, vr11
001a58  7e0000e0  vmmov mr0, zero
001a5c  17200000  xor zero, zero, zero
001a60  9f000000  addli r1, zero, 0
001a64  8e902002  vmul.f.mz.rn vr1{mr1}, vr1, vr2
001a68  0a11bb04  vmul.f.mz.rn vr2{mr2}, r22, vr11
001a6c  9a101b02  vsub.f.mz.rn vr1{mr1}, r22, vr1
001a70  16118102  vadd.f.mz.rn vr2{mr1}, vr2, vr8
001a74  0a101b06  vmul.f.mz.rn vr0{mr3}, r22, vr1
001a78  8a901500  vmul.f.mz.rn vr1{mr0}, r11, vr1
001a7c  46102c02  vstore_mask16.mz vr2{mr1}, 0(r24)
001a80  00a00000  mfence { lm }
001a84  96151002  vadd.f.mz.rn vr11{mr1}, vr0, vr1
001a88  0b111c10  add.s r2, r24, r1
001a8c  ab03803f  lui r7, 260096
001a90  8b911410  add.s r3, r9, r1
001a94  9fc00000  addli r1, r1, 4
001a98  63030100  loadli.w r6,  0(r2)
001a9c  63840100  loadli.w r8,  0(r3)
001aa0  8b639351  fmac.f.rn r7, r6, r25
001aa4  0b630458  neg.f r6, r8
001aa8  0f030300  exp.f.rn r6, r6
001aac  8f037b18  div.f.rn r7, r22, r7
001ab0  67806100  storeli.w r6, 0(r3)
001ab4  67007100  storeli.w r7, 0(r2)
001ab8  3bcfa0ff  bneq r1, r26, -48
001abc  00a00000  mfence { lm }
001ac0  72109042  vlt.f.mz mr0{mr1}, zero, vr9
001ac4  9f008fee  addli r1, r30, -2240
001ac8  0e949402  vmul.f.mz.rn vr8{mr1}, vr9, vr9
001acc  42100c02  vload_mask16.mz vr0{mr1}, 0(r24)
001ad0  42910402  vload_mask16.mz vr2{mr1}, 0(r9)
001ad4  fe010040  vmnot mr3, mr0
001ad8  9f048ffa  addli r9, r30, -704
001adc  7e8001a0  vmmov zero, mr3
001ae0  67800000  storeli.w zero, 0(r1)
001ae4  9f008fef  addli r1, r30, -2112
001ae8  17200000  xor zero, zero, zero
001aec  46908402  vstore_mask16.mz vr8{mr1}, 0(r9)
001af0  63800000  loadli.w zero,  0(r1)
001af4  8a100702  vmul.f.mz.rn vr1{mr1}, r14, vr0
001af8  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
001afc  8e900002  vmul.f.mz.rn vr1{mr1}, vr1, vr0
001b00  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
001b04  8e900002  vmul.f.mz.rn vr1{mr1}, vr1, vr0
001b08  92901a02  vadd.f.mz.rn vr1{mr1}, r21, vr1
001b0c  8e900002  vmul.f.mz.rn vr1{mr1}, vr1, vr0
001b10  92901b02  vadd.f.mz.rn vr1{mr1}, r23, vr1
001b14  0e900002  vmul.f.mz.rn vr0{mr1}, vr1, vr0
001b18  8a109b00  vmul.f.mz.rn vr1{mr0}, r22, vr9
001b1c  0e100102  vmul.f.mz.rn vr0{mr1}, vr2, vr0
001b20  0a919506  vmul.f.mz.rn vr2{mr3}, r11, vr9
001b24  1a100b02  vsub.f.mz.rn vr0{mr1}, r22, vr0
001b28  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
001b2c  0a130b04  vmul.f.mz.rn vr6{mr2}, r22, vr0
001b30  7e0100e0  vmmov mr2, zero
001b34  17200000  xor zero, zero, zero
001b38  46901d02  vstore_mask16.mz vr1{mr1}, 0(r27)
001b3c  0a900504  vmul.f.mz.rn vr0{mr2}, r11, vr0
001b40  00a00000  mfence { lm }
001b44  9f000000  addli r1, zero, 0
001b48  96140302  vadd.f.mz.rn vr9{mr1}, vr6, vr0
001b4c  0b911d10  add.s r2, r27, r1
001b50  ab03803f  lui r7, 260096
001b54  8b911410  add.s r3, r9, r1
001b58  9fc00000  addli r1, r1, 4
001b5c  63030100  loadli.w r6,  0(r2)
001b60  63840100  loadli.w r8,  0(r3)
001b64  8b639351  fmac.f.rn r7, r6, r25
001b68  0b630458  neg.f r6, r8
001b6c  0f030300  exp.f.rn r6, r6
001b70  8f037b18  div.f.rn r7, r22, r7
001b74  67806100  storeli.w r6, 0(r3)
001b78  67007100  storeli.w r7, 0(r2)
001b7c  3bcfa0ff  bneq r1, r26, -48
001b80  00a00000  mfence { lm }
001b84  72117042  vlt.f.mz mr2{mr1}, zero, vr7
001b88  9f008fee  addli r1, r30, -2240
001b8c  0e947302  vmul.f.mz.rn vr8{mr1}, vr7, vr7
001b90  1f0c0ffb  addli r24, r30, -640
001b94  42900d02  vload_mask16.mz vr0{mr1}, 0(r27)
001b98  42910402  vload_mask16.mz vr2{mr1}, 0(r9)
001b9c  fe010140  vmnot mr3, mr2
001ba0  9f048ffb  addli r9, r30, -576
001ba4  7e8001a0  vmmov zero, mr3
001ba8  67000ff0  storeli.w zero, -2048(r30)
001bac  17200000  xor zero, zero, zero
001bb0  63800000  loadli.w zero,  0(r1)
001bb4  46908402  vstore_mask16.mz vr8{mr1}, 0(r9)
001bb8  8a100702  vmul.f.mz.rn vr1{mr1}, r14, vr0
001bbc  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
001bc0  8e900002  vmul.f.mz.rn vr1{mr1}, vr1, vr0
001bc4  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
001bc8  8e900002  vmul.f.mz.rn vr1{mr1}, vr1, vr0
001bcc  92901a02  vadd.f.mz.rn vr1{mr1}, r21, vr1
001bd0  8e900002  vmul.f.mz.rn vr1{mr1}, vr1, vr0
001bd4  92901b02  vadd.f.mz.rn vr1{mr1}, r23, vr1
001bd8  0e900002  vmul.f.mz.rn vr0{mr1}, vr1, vr0
001bdc  8a107b04  vmul.f.mz.rn vr1{mr2}, r22, vr7
001be0  0e100102  vmul.f.mz.rn vr0{mr1}, vr2, vr0
001be4  0a917506  vmul.f.mz.rn vr2{mr3}, r11, vr7
001be8  1a100b02  vsub.f.mz.rn vr0{mr1}, r22, vr0
001bec  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
001bf0  0a130b00  vmul.f.mz.rn vr6{mr0}, r22, vr0
001bf4  7e0000e0  vmmov mr0, zero
001bf8  17200000  xor zero, zero, zero
001bfc  46101c02  vstore_mask16.mz vr1{mr1}, 0(r24)
001c00  0a900500  vmul.f.mz.rn vr0{mr0}, r11, vr0
001c04  00a00000  mfence { lm }
001c08  9f000000  addli r1, zero, 0
001c0c  96130302  vadd.f.mz.rn vr7{mr1}, vr6, vr0
001c10  0b111c10  add.s r2, r24, r1
001c14  ab03803f  lui r7, 260096
001c18  8b911410  add.s r3, r9, r1
001c1c  9fc00000  addli r1, r1, 4
001c20  63030100  loadli.w r6,  0(r2)
001c24  63840100  loadli.w r8,  0(r3)
001c28  8b639351  fmac.f.rn r7, r6, r25
001c2c  0b630458  neg.f r6, r8
001c30  0f030300  exp.f.rn r6, r6
001c34  8f037b18  div.f.rn r7, r22, r7
001c38  67806100  storeli.w r6, 0(r3)
001c3c  67007100  storeli.w r7, 0(r2)
001c40  3bcfa0ff  bneq r1, r26, -48
001c44  00a00000  mfence { lm }
001c48  72105042  vlt.f.mz mr0{mr1}, zero, vr5
001c4c  9f008fef  addli r1, r30, -2112
001c50  0e945202  vmul.f.mz.rn vr8{mr1}, vr5, vr5
001c54  42100c02  vload_mask16.mz vr0{mr1}, 0(r24)
001c58  42910402  vload_mask16.mz vr2{mr1}, 0(r9)
001c5c  fe010040  vmnot mr3, mr0
001c60  9f048ffc  addli r9, r30, -448
001c64  7e8001a0  vmmov zero, mr3
001c68  67800000  storeli.w zero, 0(r1)
001c6c  17200000  xor zero, zero, zero
001c70  63000ff0  loadli.w zero,  -2048(r30)
001c74  46908402  vstore_mask16.mz vr8{mr1}, 0(r9)
001c78  8a100702  vmul.f.mz.rn vr1{mr1}, r14, vr0
001c7c  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
001c80  8e900002  vmul.f.mz.rn vr1{mr1}, vr1, vr0
001c84  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
001c88  8e900002  vmul.f.mz.rn vr1{mr1}, vr1, vr0
001c8c  92901a02  vadd.f.mz.rn vr1{mr1}, r21, vr1
001c90  8e900002  vmul.f.mz.rn vr1{mr1}, vr1, vr0
001c94  92901b02  vadd.f.mz.rn vr1{mr1}, r23, vr1
001c98  0e900002  vmul.f.mz.rn vr0{mr1}, vr1, vr0
001c9c  8a105b00  vmul.f.mz.rn vr1{mr0}, r22, vr5
001ca0  0e100102  vmul.f.mz.rn vr0{mr1}, vr2, vr0
001ca4  0a915506  vmul.f.mz.rn vr2{mr3}, r11, vr5
001ca8  1a100b02  vsub.f.mz.rn vr0{mr1}, r22, vr0
001cac  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
001cb0  0a130b04  vmul.f.mz.rn vr6{mr2}, r22, vr0
001cb4  7e0100e0  vmmov mr2, zero
001cb8  17200000  xor zero, zero, zero
001cbc  46101202  vstore_mask16.mz vr1{mr1}, 0(r4)
001cc0  0a900504  vmul.f.mz.rn vr0{mr2}, r11, vr0
001cc4  00a00000  mfence { lm }
001cc8  9f000000  addli r1, zero, 0
001ccc  96120302  vadd.f.mz.rn vr5{mr1}, vr6, vr0
001cd0  0b111210  add.s r2, r4, r1
001cd4  ab03803f  lui r7, 260096
001cd8  8b911410  add.s r3, r9, r1
001cdc  9fc00000  addli r1, r1, 4
001ce0  63030100  loadli.w r6,  0(r2)
001ce4  63840100  loadli.w r8,  0(r3)
001ce8  8b639351  fmac.f.rn r7, r6, r25
001cec  0b630458  neg.f r6, r8
001cf0  0f030300  exp.f.rn r6, r6
001cf4  8f037b18  div.f.rn r7, r22, r7
001cf8  67806100  storeli.w r6, 0(r3)
001cfc  67007100  storeli.w r7, 0(r2)
001d00  3bcfa0ff  bneq r1, r26, -48
001d04  00a00000  mfence { lm }
001d08  72114042  vlt.f.mz mr2{mr1}, zero, vr4
001d0c  9f008fef  addli r1, r30, -2112
001d10  1f010ff3  addli r2, r30, -1664
001d14  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
001d18  42910402  vload_mask16.mz vr2{mr1}, 0(r9)
001d1c  fe010140  vmnot mr3, mr2
001d20  7e8001a0  vmmov zero, mr3
001d24  67000ff0  storeli.w zero, -2048(r30)
001d28  17200000  xor zero, zero, zero
001d2c  63800000  loadli.w zero,  0(r1)
001d30  9f008fec  addli r1, r30, -2496
001d34  8a100702  vmul.f.mz.rn vr1{mr1}, r14, vr0
001d38  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
001d3c  8e900002  vmul.f.mz.rn vr1{mr1}, vr1, vr0
001d40  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
001d44  8e900002  vmul.f.mz.rn vr1{mr1}, vr1, vr0
001d48  92901a02  vadd.f.mz.rn vr1{mr1}, r21, vr1
001d4c  8e900002  vmul.f.mz.rn vr1{mr1}, vr1, vr0
001d50  92901b02  vadd.f.mz.rn vr1{mr1}, r23, vr1
001d54  0e900002  vmul.f.mz.rn vr0{mr1}, vr1, vr0
001d58  8a104b04  vmul.f.mz.rn vr1{mr2}, r22, vr4
001d5c  0e100102  vmul.f.mz.rn vr0{mr1}, vr2, vr0
001d60  0a914506  vmul.f.mz.rn vr2{mr3}, r11, vr4
001d64  0e124202  vmul.f.mz.rn vr4{mr1}, vr4, vr4
001d68  1a100b02  vsub.f.mz.rn vr0{mr1}, r22, vr0
001d6c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
001d70  46904602  vstore_mask16.mz vr4{mr1}, 0(r13)
001d74  0a130b00  vmul.f.mz.rn vr6{mr0}, r22, vr0
001d78  7e0000e0  vmmov mr0, zero
001d7c  46901702  vstore_mask16.mz vr1{mr1}, 0(r15)
001d80  17200000  xor zero, zero, zero
001d84  0a900500  vmul.f.mz.rn vr0{mr0}, r11, vr0
001d88  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
001d8c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001d90  9f000000  addli r1, zero, 0
001d94  00a00000  mfence { lm }
001d98  42140102  vload_mask16.mz vr8{mr1}, 0(r2)
001d9c  0b911710  add.s r2, r15, r1
001da0  ab03803f  lui r7, 260096
001da4  8b911610  add.s r3, r13, r1
001da8  9fc00000  addli r1, r1, 4
001dac  63030100  loadli.w r6,  0(r2)
001db0  63840100  loadli.w r8,  0(r3)
001db4  8b639351  fmac.f.rn r7, r6, r25
001db8  0b630458  neg.f r6, r8
001dbc  0f030300  exp.f.rn r6, r6
001dc0  8f037b18  div.f.rn r7, r22, r7
001dc4  67806100  storeli.w r6, 0(r3)
001dc8  67007100  storeli.w r7, 0(r2)
001dcc  3bcfa0ff  bneq r1, r26, -48
001dd0  00a00000  mfence { lm }
001dd4  72103042  vlt.f.mz mr0{mr1}, zero, vr3
001dd8  9f008fed  addli r1, r30, -2368
001ddc  42900702  vload_mask16.mz vr0{mr1}, 0(r15)
001de0  42910602  vload_mask16.mz vr2{mr1}, 0(r13)
001de4  63000ff0  loadli.w zero,  -2048(r30)
001de8  fe010040  vmnot mr3, mr0
001dec  8a100702  vmul.f.mz.rn vr1{mr1}, r14, vr0
001df0  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
001df4  8e900002  vmul.f.mz.rn vr1{mr1}, vr1, vr0
001df8  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
001dfc  8e900002  vmul.f.mz.rn vr1{mr1}, vr1, vr0
001e00  92901a02  vadd.f.mz.rn vr1{mr1}, r21, vr1
001e04  8e900002  vmul.f.mz.rn vr1{mr1}, vr1, vr0
001e08  92901b02  vadd.f.mz.rn vr1{mr1}, r23, vr1
001e0c  0e900002  vmul.f.mz.rn vr0{mr1}, vr1, vr0
001e10  8a103b00  vmul.f.mz.rn vr1{mr0}, r22, vr3
001e14  0e100102  vmul.f.mz.rn vr0{mr1}, vr2, vr0
001e18  0a913506  vmul.f.mz.rn vr2{mr3}, r11, vr3
001e1c  8e913102  vmul.f.mz.rn vr3{mr1}, vr3, vr3
001e20  1a100b02  vsub.f.mz.rn vr0{mr1}, r22, vr0
001e24  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
001e28  46903902  vstore_mask16.mz vr3{mr1}, 0(r19)
001e2c  0a120b04  vmul.f.mz.rn vr4{mr2}, r22, vr0
001e30  7e0100e0  vmmov mr2, zero
001e34  17200000  xor zero, zero, zero
001e38  46101602  vstore_mask16.mz vr1{mr1}, 0(r12)
001e3c  0a900504  vmul.f.mz.rn vr0{mr2}, r11, vr0
001e40  16100202  vadd.f.mz.rn vr0{mr1}, vr4, vr0
001e44  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001e48  9f000000  addli r1, zero, 0
001e4c  00a00000  mfence { lm }
001e50  0b111610  add.s r2, r12, r1
001e54  ab03803f  lui r7, 260096
001e58  8b911910  add.s r3, r19, r1
001e5c  9fc00000  addli r1, r1, 4
001e60  63030100  loadli.w r6,  0(r2)
001e64  63840100  loadli.w r8,  0(r3)
001e68  8b639351  fmac.f.rn r7, r6, r25
001e6c  0b630458  neg.f r6, r8
001e70  0f030300  exp.f.rn r6, r6
001e74  8f037b18  div.f.rn r7, r22, r7
001e78  67806100  storeli.w r6, 0(r3)
001e7c  67007100  storeli.w r7, 0(r2)
001e80  3bcfa0ff  bneq r1, r26, -48
001e84  00a00000  mfence { lm }
001e88  7211a042  vlt.f.mz mr2{mr1}, zero, vr10
001e8c  9f008fef  addli r1, r30, -2112
001e90  0e12a502  vmul.f.mz.rn vr4{mr1}, vr10, vr10
001e94  42100602  vload_mask16.mz vr0{mr1}, 0(r12)
001e98  42910902  vload_mask16.mz vr2{mr1}, 0(r19)
001e9c  7e0001a0  vmmov zero, mr2
001ea0  67800000  storeli.w zero, 0(r1)
001ea4  17200000  xor zero, zero, zero
001ea8  9f008fee  addli r1, r30, -2240
001eac  8a100702  vmul.f.mz.rn vr1{mr1}, r14, vr0
001eb0  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
001eb4  8e900002  vmul.f.mz.rn vr1{mr1}, vr1, vr0
001eb8  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
001ebc  8e900002  vmul.f.mz.rn vr1{mr1}, vr1, vr0
001ec0  92901a02  vadd.f.mz.rn vr1{mr1}, r21, vr1
001ec4  8e900002  vmul.f.mz.rn vr1{mr1}, vr1, vr0
001ec8  92901b02  vadd.f.mz.rn vr1{mr1}, r23, vr1
001ecc  0e900002  vmul.f.mz.rn vr0{mr1}, vr1, vr0
001ed0  8a10ab04  vmul.f.mz.rn vr1{mr2}, r22, vr10
001ed4  7e010140  vmnot mr2, mr2
001ed8  7e0001a0  vmmov zero, mr2
001edc  67000ff0  storeli.w zero, -2048(r30)
001ee0  17200000  xor zero, zero, zero
001ee4  00a00000  mfence { lm }
001ee8  46104802  vstore_mask16.mz vr4{mr1}, 0(r16)
001eec  0e100102  vmul.f.mz.rn vr0{mr1}, vr2, vr0
001ef0  0a91a504  vmul.f.mz.rn vr2{mr2}, r11, vr10
001ef4  1a100b02  vsub.f.mz.rn vr0{mr1}, r22, vr0
001ef8  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
001efc  8a110b00  vmul.f.mz.rn vr3{mr0}, r22, vr0
001f00  0a900506  vmul.f.mz.rn vr0{mr3}, r11, vr0
001f04  46101902  vstore_mask16.mz vr1{mr1}, 0(r18)
001f08  16900102  vadd.f.mz.rn vr0{mr1}, vr3, vr0
001f0c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001f10  9f000000  addli r1, zero, 0
001f14  00a00000  mfence { lm }
001f18  0b111910  add.s r2, r18, r1
001f1c  ab03803f  lui r7, 260096
001f20  8b111810  add.s r3, r16, r1
001f24  9fc00000  addli r1, r1, 4
001f28  63030100  loadli.w r6,  0(r2)
001f2c  63840100  loadli.w r8,  0(r3)
001f30  8b639351  fmac.f.rn r7, r6, r25
001f34  0b630458  neg.f r6, r8
001f38  0f030300  exp.f.rn r6, r6
001f3c  8f037b18  div.f.rn r7, r22, r7
001f40  67806100  storeli.w r6, 0(r3)
001f44  67007100  storeli.w r7, 0(r2)
001f48  3bcfa0ff  bneq r1, r26, -48
001f4c  9f000feb  addli r1, r30, -2688
001f50  00a00000  mfence { lm }
001f54  1210bb02  vadd.f.mz.rn vr0{mr1}, r22, vr11
001f58  2b014000  lui r2, 1024
001f5c  42130902  vload_mask16.mz vr6{mr1}, 0(r18)
001f60  c2150802  vload_mask16.mz vr11{mr1}, 0(r16)
001f64  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
001f68  9f000ff2  addli r1, r30, -1792
001f6c  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
001f70  0e900002  vmul.f.mz.rn vr0{mr1}, vr1, vr0
001f74  ee3004c2  vsrl.s.mz vr1{mr1}, vr8, vr0
001f78  661100c0  vabs.f vr2, vr0
001f7c  6a320122  vor.s.mz vr4{mr1}, r2, vr0
001f80  2ba1aaaa  lui r2, 699050
001f84  1f215115  addli r2, r2, 2730
001f88  ea301502  vand.s.mz vr1{mr1}, r10, vr1
001f8c  76a02142  vlt.u.mz mr0{mr1}, vr3, vr2
001f90  fe0101e0  vmmov mr3, r2
001f94  7e0700a0  vmmov r14, mr0
001f98  9b40f700  srli r1, r14, 15
001f9c  96301002  vadd.s.mz vr1{mr1}, vr0, vr1
001fa0  9b801000  andi r1, r1, 1
001fa4  92b11202  vadd.s.mz vr3{mr1}, r5, vr1
001fa8  3bb00000  bneq r1, zero, 12
001fac  fabdf140  vextracti.s r27, 15(vr3)
001fb0  5b010000  j 8
001fb4  fa3df240  vextracti.s r27, 15(vr4)
001fb8  9f000fea  addli r1, r30, -2816
001fbc  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
001fc0  9b40e700  srli r1, r14, 14
001fc4  9b801000  andi r1, r1, 1
001fc8  3bb00000  bneq r1, zero, 12
001fcc  7abee140  vextracti.s r28, 14(vr3)
001fd0  5b010000  j 8
001fd4  7a3ee240  vextracti.s r28, 14(vr4)
001fd8  9b40d700  srli r1, r14, 13
001fdc  9b801000  andi r1, r1, 1
001fe0  3bb00000  bneq r1, zero, 12
001fe4  fab5d140  vextracti.s r11, 13(vr3)
001fe8  5b010000  j 8
001fec  fa35d240  vextracti.s r11, 13(vr4)
001ff0  9b40c700  srli r1, r14, 12
001ff4  9b801000  andi r1, r1, 1
001ff8  3bb00000  bneq r1, zero, 12
001ffc  fab0c140  vextracti.s r1, 12(vr3)
002000  5b010000  j 8
002004  fa30c240  vextracti.s r1, 12(vr4)
002008  1b41b700  srli r2, r14, 11
00200c  1b011100  andi r2, r2, 1
002010  3b300100  bneq r2, zero, 12
002014  fabbb140  vextracti.s r23, 11(vr3)
002018  5b010000  j 8
00201c  fa3bb240  vextracti.s r23, 11(vr4)
002020  1b41a700  srli r2, r14, 10
002024  1b011100  andi r2, r2, 1
002028  3b300100  bneq r2, zero, 12
00202c  fab1a140  vextracti.s r3, 10(vr3)
002030  5b010000  j 8
002034  fa31a240  vextracti.s r3, 10(vr4)
002038  1b419700  srli r2, r14, 9
00203c  1b011100  andi r2, r2, 1
002040  3b300100  bneq r2, zero, 12
002044  7aba9140  vextracti.s r20, 9(vr3)
002048  5b010000  j 8
00204c  7a3a9240  vextracti.s r20, 9(vr4)
002050  1b418700  srli r2, r14, 8
002054  1b011100  andi r2, r2, 1
002058  3b300100  bneq r2, zero, 12
00205c  fab88140  vextracti.s r17, 8(vr3)
002060  5b010000  j 8
002064  fa388240  vextracti.s r17, 8(vr4)
002068  1b417700  srli r2, r14, 7
00206c  1b011100  andi r2, r2, 1
002070  3b300100  bneq r2, zero, 12
002074  faba7140  vextracti.s r21, 7(vr3)
002078  5b010000  j 8
00207c  fa3a7240  vextracti.s r21, 7(vr4)
002080  1b416700  srli r2, r14, 6
002084  1b011100  andi r2, r2, 1
002088  3b300100  bneq r2, zero, 12
00208c  7abc6140  vextracti.s r24, 6(vr3)
002090  5b010000  j 8
002094  7a3c6240  vextracti.s r24, 6(vr4)
002098  1b415700  srli r2, r14, 5
00209c  1b011100  andi r2, r2, 1
0020a0  3b300100  bneq r2, zero, 12
0020a4  7ab15140  vextracti.s r2, 5(vr3)
0020a8  5b010000  j 8
0020ac  7a315240  vextracti.s r2, 5(vr4)
0020b0  1b434700  srli r6, r14, 4
0020b4  1b031300  andi r6, r6, 1
0020b8  3b300300  bneq r6, zero, 12
0020bc  7ab34140  vextracti.s r6, 4(vr3)
0020c0  5b010000  j 8
0020c4  7a334240  vextracti.s r6, 4(vr4)
0020c8  9b433700  srli r7, r14, 3
0020cc  9b831300  andi r7, r7, 1
0020d0  3bb00300  bneq r7, zero, 12
0020d4  fab33140  vextracti.s r7, 3(vr3)
0020d8  5b010000  j 8
0020dc  fa333240  vextracti.s r7, 3(vr4)
0020e0  1b442700  srli r8, r14, 2
0020e4  1b041400  andi r8, r8, 1
0020e8  3b300400  bneq r8, zero, 12
0020ec  7ab42140  vextracti.s r8, 2(vr3)
0020f0  5b010000  j 8
0020f4  7a342240  vextracti.s r8, 2(vr4)
0020f8  9b441700  srli r9, r14, 1
0020fc  9b841400  andi r9, r9, 1
002100  3be00400  bneq r9, zero, 24
002104  fab41140  vextracti.s r9, 1(vr3)
002108  1b071700  andi r14, r14, 1
00210c  37600700  beq r14, zero, 24
002110  7a370240  vextracti.s r14, 0(vr4)
002114  db020000  j 20
002118  fa341240  vextracti.s r9, 1(vr4)
00211c  1b071700  andi r14, r14, 1
002120  bb4f07fe  bneq r14, zero, -16
002124  7ab70140  vextracti.s r14, 0(vr3)
002128  12352002  vadd.s.mz vr10{mr1}, zero, vr2
00212c  1f100000  addli zero, zero, 1
002130  12109b02  vadd.f.mz.rn vr0{mr1}, r22, vr9
002134  7e0000e0  vmmov mr0, zero
002138  17200000  xor zero, zero, zero
00213c  6a25a730  vor.u.mh vr10{mr0}, r14, vr10
002140  1f270000  addli r14, zero, 2
002144  7e0007e0  vmmov mr0, r14
002148  6aa5a430  vor.u.mh vr10{mr0}, r9, vr10
00214c  9f440000  addli r9, zero, 4
002150  7e8004e0  vmmov mr0, r9
002154  6a25a430  vor.u.mh vr10{mr0}, r8, vr10
002158  1f041000  addli r8, zero, 8
00215c  7e0004e0  vmmov mr0, r8
002160  6aa5a330  vor.u.mh vr10{mr0}, r7, vr10
002164  9f032000  addli r7, zero, 16
002168  7e8003e0  vmmov mr0, r7
00216c  6a25a330  vor.u.mh vr10{mr0}, r6, vr10
002170  1f034000  addli r6, zero, 32
002174  7e0003e0  vmmov mr0, r6
002178  6a25a130  vor.u.mh vr10{mr0}, r2, vr10
00217c  1f018000  addli r2, zero, 64
002180  7e0001e0  vmmov mr0, r2
002184  1f010001  addli r2, zero, 128
002188  6a25ac30  vor.u.mh vr10{mr0}, r24, vr10
00218c  7e0001e0  vmmov mr0, r2
002190  1f010002  addli r2, zero, 256
002194  6aa5aa30  vor.u.mh vr10{mr0}, r21, vr10
002198  7e0001e0  vmmov mr0, r2
00219c  1f010004  addli r2, zero, 512
0021a0  6aa5a830  vor.u.mh vr10{mr0}, r17, vr10
0021a4  7e0001e0  vmmov mr0, r2
0021a8  1f010008  addli r2, zero, 1024
0021ac  6a25aa30  vor.u.mh vr10{mr0}, r20, vr10
0021b0  7e0001e0  vmmov mr0, r2
0021b4  1f018feb  addli r2, r30, -2624
0021b8  6aa5a130  vor.u.mh vr10{mr0}, r3, vr10
0021bc  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0021c0  1f010010  addli r2, zero, 2048
0021c4  ab014000  lui r3, 1024
0021c8  7e0001e0  vmmov mr0, r2
0021cc  1f010020  addli r2, zero, 4096
0021d0  6aa5ab30  vor.u.mh vr10{mr0}, r23, vr10
0021d4  7e0001e0  vmmov mr0, r2
0021d8  2b810000  lui r2, 8
0021dc  0e920002  vmul.f.mz.rn vr4{mr1}, vr1, vr0
0021e0  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
0021e4  9f000040  addli r1, zero, 8192
0021e8  7e8000e0  vmmov mr0, r1
0021ec  6e3044c2  vsrl.s.mz vr0{mr1}, vr8, vr4
0021f0  ab400000  lui r1, 4
0021f4  e61002c0  vabs.f vr1, vr4
0021f8  6aa5a530  vor.u.mh vr10{mr0}, r11, vr10
0021fc  7e8000e0  vmmov mr0, r1
002200  9f000ff2  addli r1, r30, -1792
002204  6a300502  vand.s.mz vr0{mr1}, r10, vr0
002208  6a25ae30  vor.u.mh vr10{mr0}, r28, vr10
00220c  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
002210  16300202  vadd.s.mz vr0{mr1}, vr4, vr0
002214  6ab24122  vor.s.mz vr4{mr1}, r3, vr4
002218  9f010ff6  addli r3, r30, -1280
00221c  76a01442  vlt.u.mz mr0{mr1}, vr9, vr1
002220  92b10202  vadd.s.mz vr3{mr1}, r5, vr0
002224  fe0000a0  vmmov r1, mr0
002228  7e0001e0  vmmov mr0, r2
00222c  6aa5ad30  vor.u.mh vr10{mr0}, r27, vr10
002230  1bc1f000  srli r2, r1, 15
002234  1b011100  andi r2, r2, 1
002238  4680a116  vstore.mh vr10{mr3}, 0(r3)
00223c  3b300100  bneq r2, zero, 12
002240  fabdf140  vextracti.s r27, 15(vr3)
002244  5b010000  j 8
002248  fa3df240  vextracti.s r27, 15(vr4)
00224c  1bc1e000  srli r2, r1, 14
002250  1b011100  andi r2, r2, 1
002254  3b300100  bneq r2, zero, 12
002258  7abee140  vextracti.s r28, 14(vr3)
00225c  5b010000  j 8
002260  7a3ee240  vextracti.s r28, 14(vr4)
002264  1bc1d000  srli r2, r1, 13
002268  9f120000  addli r5, zero, 1
00226c  1b011100  andi r2, r2, 1
002270  3b300100  bneq r2, zero, 12
002274  fab5d140  vextracti.s r11, 13(vr3)
002278  5b010000  j 8
00227c  fa35d240  vextracti.s r11, 13(vr4)
002280  1bc1c000  srli r2, r1, 12
002284  1f050ff6  addli r10, r30, -1280
002288  1b011100  andi r2, r2, 1
00228c  3b300100  bneq r2, zero, 12
002290  7ab7c140  vextracti.s r14, 12(vr3)
002294  5b010000  j 8
002298  7a37c240  vextracti.s r14, 12(vr4)
00229c  1bc1b000  srli r2, r1, 11
0022a0  1b011100  andi r2, r2, 1
0022a4  3b300100  bneq r2, zero, 12
0022a8  fabbb140  vextracti.s r23, 11(vr3)
0022ac  5b010000  j 8
0022b0  fa3bb240  vextracti.s r23, 11(vr4)
0022b4  1bc1a000  srli r2, r1, 10
0022b8  1b011100  andi r2, r2, 1
0022bc  3b300100  bneq r2, zero, 12
0022c0  fab1a140  vextracti.s r3, 10(vr3)
0022c4  5b010000  j 8
0022c8  fa31a240  vextracti.s r3, 10(vr4)
0022cc  1bc19000  srli r2, r1, 9
0022d0  1b011100  andi r2, r2, 1
0022d4  3b300100  bneq r2, zero, 12
0022d8  7aba9140  vextracti.s r20, 9(vr3)
0022dc  5b010000  j 8
0022e0  7a3a9240  vextracti.s r20, 9(vr4)
0022e4  1bc18000  srli r2, r1, 8
0022e8  1b011100  andi r2, r2, 1
0022ec  3b300100  bneq r2, zero, 12
0022f0  fab88140  vextracti.s r17, 8(vr3)
0022f4  5b010000  j 8
0022f8  fa388240  vextracti.s r17, 8(vr4)
0022fc  1bc17000  srli r2, r1, 7
002300  1b011100  andi r2, r2, 1
002304  3b300100  bneq r2, zero, 12
002308  faba7140  vextracti.s r21, 7(vr3)
00230c  5b010000  j 8
002310  fa3a7240  vextracti.s r21, 7(vr4)
002314  1bc16000  srli r2, r1, 6
002318  1b011100  andi r2, r2, 1
00231c  3b300100  bneq r2, zero, 12
002320  7abc6140  vextracti.s r24, 6(vr3)
002324  5b010000  j 8
002328  7a3c6240  vextracti.s r24, 6(vr4)
00232c  1bc15000  srli r2, r1, 5
002330  1b011100  andi r2, r2, 1
002334  3b300100  bneq r2, zero, 12
002338  7ab15140  vextracti.s r2, 5(vr3)
00233c  5b010000  j 8
002340  7a315240  vextracti.s r2, 5(vr4)
002344  1bc34000  srli r6, r1, 4
002348  1b031300  andi r6, r6, 1
00234c  3b300300  bneq r6, zero, 12
002350  7ab34140  vextracti.s r6, 4(vr3)
002354  5b010000  j 8
002358  7a334240  vextracti.s r6, 4(vr4)
00235c  9bc33000  srli r7, r1, 3
002360  9b831300  andi r7, r7, 1
002364  3bb00300  bneq r7, zero, 12
002368  fab33140  vextracti.s r7, 3(vr3)
00236c  5b010000  j 8
002370  fa333240  vextracti.s r7, 3(vr4)
002374  1bc42000  srli r8, r1, 2
002378  1b041400  andi r8, r8, 1
00237c  3b300400  bneq r8, zero, 12
002380  7ab42140  vextracti.s r8, 2(vr3)
002384  5b010000  j 8
002388  7a342240  vextracti.s r8, 2(vr4)
00238c  9bc41000  srli r9, r1, 1
002390  9b841400  andi r9, r9, 1
002394  3be00400  bneq r9, zero, 24
002398  fab41140  vextracti.s r9, 1(vr3)
00239c  9b801000  andi r1, r1, 1
0023a0  37e00000  beq r1, zero, 24
0023a4  fa300240  vextracti.s r1, 0(vr4)
0023a8  db020000  j 20
0023ac  fa341240  vextracti.s r9, 1(vr4)
0023b0  9b801000  andi r1, r1, 1
0023b4  bbcf00fe  bneq r1, zero, -16
0023b8  fab00140  vextracti.s r1, 0(vr3)
0023bc  12322002  vadd.s.mz vr4{mr1}, zero, vr2
0023c0  1f100000  addli zero, zero, 1
0023c4  12107b02  vadd.f.mz.rn vr0{mr1}, r22, vr7
0023c8  7e0000e0  vmmov mr0, zero
0023cc  17200000  xor zero, zero, zero
0023d0  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
0023d4  9f200000  addli r1, zero, 2
0023d8  7e8000e0  vmmov mr0, r1
0023dc  9f400000  addli r1, zero, 4
0023e0  6aa24430  vor.u.mh vr4{mr0}, r9, vr4
0023e4  7e8000e0  vmmov mr0, r1
0023e8  9f001000  addli r1, zero, 8
0023ec  6a224430  vor.u.mh vr4{mr0}, r8, vr4
0023f0  7e8000e0  vmmov mr0, r1
0023f4  9f002000  addli r1, zero, 16
0023f8  6aa24330  vor.u.mh vr4{mr0}, r7, vr4
0023fc  7e8000e0  vmmov mr0, r1
002400  9f004000  addli r1, zero, 32
002404  6a224330  vor.u.mh vr4{mr0}, r6, vr4
002408  7e8000e0  vmmov mr0, r1
00240c  9f008000  addli r1, zero, 64
002410  6a224130  vor.u.mh vr4{mr0}, r2, vr4
002414  7e8000e0  vmmov mr0, r1
002418  9f000001  addli r1, zero, 128
00241c  2b014000  lui r2, 1024
002420  6a224c30  vor.u.mh vr4{mr0}, r24, vr4
002424  7e8000e0  vmmov mr0, r1
002428  9f000002  addli r1, zero, 256
00242c  6aa24a30  vor.u.mh vr4{mr0}, r21, vr4
002430  7e8000e0  vmmov mr0, r1
002434  9f000004  addli r1, zero, 512
002438  6aa24830  vor.u.mh vr4{mr0}, r17, vr4
00243c  7e8000e0  vmmov mr0, r1
002440  9f000008  addli r1, zero, 1024
002444  6a224a30  vor.u.mh vr4{mr0}, r20, vr4
002448  7e8000e0  vmmov mr0, r1
00244c  9f000010  addli r1, zero, 2048
002450  6aa24130  vor.u.mh vr4{mr0}, r3, vr4
002454  7e8000e0  vmmov mr0, r1
002458  9f000fec  addli r1, r30, -2560
00245c  6aa24b30  vor.u.mh vr4{mr0}, r23, vr4
002460  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
002464  9f000020  addli r1, zero, 4096
002468  7e8000e0  vmmov mr0, r1
00246c  9f000040  addli r1, zero, 8192
002470  6a224730  vor.u.mh vr4{mr0}, r14, vr4
002474  7e8000e0  vmmov mr0, r1
002478  ab400000  lui r1, 4
00247c  8e930002  vmul.f.mz.rn vr7{mr1}, vr1, vr0
002480  6aa24530  vor.u.mh vr4{mr0}, r11, vr4
002484  7e8000e0  vmmov mr0, r1
002488  ab800000  lui r1, 8
00248c  6e3074c2  vsrl.s.mz vr0{mr1}, vr8, vr7
002490  e69003c0  vabs.f vr1, vr7
002494  6a224e30  vor.u.mh vr4{mr0}, r28, vr4
002498  7e8000e0  vmmov mr0, r1
00249c  9f002000  addli r1, zero, 16
0024a0  6ab00202  vand.s.mz vr0{mr1}, r5, vr0
0024a4  6aa24d30  vor.u.mh vr4{mr0}, r27, vr4
0024a8  e342fff2  loadli.w r5,  -1668(r30)
0024ac  76a01442  vlt.u.mz mr0{mr1}, vr9, vr1
0024b0  7e0700a0  vmmov r14, mr0
0024b4  16b00302  vadd.s.mz vr0{mr1}, vr7, vr0
0024b8  92b10202  vadd.s.mz vr3{mr1}, r5, vr0
0024bc  6af040c0  vsrl.p vr0, r1, vr4
0024c0  6a327122  vor.s.mz vr4{mr1}, r2, vr7
0024c4  2b515555  lui r2, 349525
0024c8  9b40f700  srli r1, r14, 15
0024cc  1f51a10a  addli r2, r2, 1365
0024d0  9b801000  andi r1, r1, 1
0024d4  7e0001e0  vmmov mr0, r2
0024d8  46000510  vstore.mh vr0{mr0}, 0(r10)
0024dc  3bb00000  bneq r1, zero, 12
0024e0  fabdf140  vextracti.s r27, 15(vr3)
0024e4  5b010000  j 8
0024e8  fa3df240  vextracti.s r27, 15(vr4)
0024ec  9b40e700  srli r1, r14, 14
0024f0  1f150000  addli r10, zero, 1
0024f4  9b801000  andi r1, r1, 1
0024f8  3bb00000  bneq r1, zero, 12
0024fc  7abee140  vextracti.s r28, 14(vr3)
002500  5b010000  j 8
002504  7a3ee240  vextracti.s r28, 14(vr4)
002508  9b40d700  srli r1, r14, 13
00250c  9b801000  andi r1, r1, 1
002510  3bb00000  bneq r1, zero, 12
002514  fab5d140  vextracti.s r11, 13(vr3)
002518  5b010000  j 8
00251c  fa35d240  vextracti.s r11, 13(vr4)
002520  9b40c700  srli r1, r14, 12
002524  9b801000  andi r1, r1, 1
002528  3bb00000  bneq r1, zero, 12
00252c  fab0c140  vextracti.s r1, 12(vr3)
002530  5b010000  j 8
002534  fa30c240  vextracti.s r1, 12(vr4)
002538  1b41b700  srli r2, r14, 11
00253c  1b011100  andi r2, r2, 1
002540  3b300100  bneq r2, zero, 12
002544  fabbb140  vextracti.s r23, 11(vr3)
002548  5b010000  j 8
00254c  fa3bb240  vextracti.s r23, 11(vr4)
002550  1b41a700  srli r2, r14, 10
002554  1b011100  andi r2, r2, 1
002558  3b300100  bneq r2, zero, 12
00255c  fab1a140  vextracti.s r3, 10(vr3)
002560  5b010000  j 8
002564  fa31a240  vextracti.s r3, 10(vr4)
002568  1b419700  srli r2, r14, 9
00256c  1b011100  andi r2, r2, 1
002570  3b300100  bneq r2, zero, 12
002574  7aba9140  vextracti.s r20, 9(vr3)
002578  5b010000  j 8
00257c  7a3a9240  vextracti.s r20, 9(vr4)
002580  1b418700  srli r2, r14, 8
002584  1b011100  andi r2, r2, 1
002588  3b300100  bneq r2, zero, 12
00258c  fab88140  vextracti.s r17, 8(vr3)
002590  5b010000  j 8
002594  fa388240  vextracti.s r17, 8(vr4)
002598  1b417700  srli r2, r14, 7
00259c  1b011100  andi r2, r2, 1
0025a0  3b300100  bneq r2, zero, 12
0025a4  faba7140  vextracti.s r21, 7(vr3)
0025a8  5b010000  j 8
0025ac  fa3a7240  vextracti.s r21, 7(vr4)
0025b0  1b416700  srli r2, r14, 6
0025b4  1b011100  andi r2, r2, 1
0025b8  3b300100  bneq r2, zero, 12
0025bc  7abc6140  vextracti.s r24, 6(vr3)
0025c0  5b010000  j 8
0025c4  7a3c6240  vextracti.s r24, 6(vr4)
0025c8  1b415700  srli r2, r14, 5
0025cc  1b011100  andi r2, r2, 1
0025d0  3b300100  bneq r2, zero, 12
0025d4  7ab15140  vextracti.s r2, 5(vr3)
0025d8  5b010000  j 8
0025dc  7a315240  vextracti.s r2, 5(vr4)
0025e0  1b434700  srli r6, r14, 4
0025e4  1b031300  andi r6, r6, 1
0025e8  3b300300  bneq r6, zero, 12
0025ec  7ab34140  vextracti.s r6, 4(vr3)
0025f0  5b010000  j 8
0025f4  7a334240  vextracti.s r6, 4(vr4)
0025f8  9b433700  srli r7, r14, 3
0025fc  9b831300  andi r7, r7, 1
002600  3bb00300  bneq r7, zero, 12
002604  fab33140  vextracti.s r7, 3(vr3)
002608  5b010000  j 8
00260c  fa333240  vextracti.s r7, 3(vr4)
002610  1b442700  srli r8, r14, 2
002614  1b041400  andi r8, r8, 1
002618  3b300400  bneq r8, zero, 12
00261c  7ab42140  vextracti.s r8, 2(vr3)
002620  5b010000  j 8
002624  7a342240  vextracti.s r8, 2(vr4)
002628  9b441700  srli r9, r14, 1
00262c  9b841400  andi r9, r9, 1
002630  3be00400  bneq r9, zero, 24
002634  fab41140  vextracti.s r9, 1(vr3)
002638  1b071700  andi r14, r14, 1
00263c  37600700  beq r14, zero, 24
002640  7a370240  vextracti.s r14, 0(vr4)
002644  db020000  j 20
002648  fa341240  vextracti.s r9, 1(vr4)
00264c  1b071700  andi r14, r14, 1
002650  bb4f07fe  bneq r14, zero, -16
002654  7ab70140  vextracti.s r14, 0(vr3)
002658  92332002  vadd.s.mz vr7{mr1}, zero, vr2
00265c  1f100000  addli zero, zero, 1
002660  12105b02  vadd.f.mz.rn vr0{mr1}, r22, vr5
002664  7e0000e0  vmmov mr0, zero
002668  17200000  xor zero, zero, zero
00266c  ea237730  vor.u.mh vr7{mr0}, r14, vr7
002670  1f270000  addli r14, zero, 2
002674  7e0007e0  vmmov mr0, r14
002678  eaa37430  vor.u.mh vr7{mr0}, r9, vr7
00267c  9f440000  addli r9, zero, 4
002680  7e8004e0  vmmov mr0, r9
002684  ea237430  vor.u.mh vr7{mr0}, r8, vr7
002688  1f041000  addli r8, zero, 8
00268c  7e0004e0  vmmov mr0, r8
002690  eaa37330  vor.u.mh vr7{mr0}, r7, vr7
002694  9f032000  addli r7, zero, 16
002698  7e8003e0  vmmov mr0, r7
00269c  ea237330  vor.u.mh vr7{mr0}, r6, vr7
0026a0  1f034000  addli r6, zero, 32
0026a4  7e0003e0  vmmov mr0, r6
0026a8  ea237130  vor.u.mh vr7{mr0}, r2, vr7
0026ac  1f018000  addli r2, zero, 64
0026b0  7e0001e0  vmmov mr0, r2
0026b4  1f010001  addli r2, zero, 128
0026b8  ea237c30  vor.u.mh vr7{mr0}, r24, vr7
0026bc  7e0001e0  vmmov mr0, r2
0026c0  1f010002  addli r2, zero, 256
0026c4  eaa37a30  vor.u.mh vr7{mr0}, r21, vr7
0026c8  7e0001e0  vmmov mr0, r2
0026cc  1f010004  addli r2, zero, 512
0026d0  eaa37830  vor.u.mh vr7{mr0}, r17, vr7
0026d4  7e0001e0  vmmov mr0, r2
0026d8  1f010008  addli r2, zero, 1024
0026dc  ea237a30  vor.u.mh vr7{mr0}, r20, vr7
0026e0  7e0001e0  vmmov mr0, r2
0026e4  1f010fed  addli r2, r30, -2432
0026e8  eaa37130  vor.u.mh vr7{mr0}, r3, vr7
0026ec  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0026f0  1f010010  addli r2, zero, 2048
0026f4  ab014000  lui r3, 1024
0026f8  7e0001e0  vmmov mr0, r2
0026fc  1f010020  addli r2, zero, 4096
002700  eaa37b30  vor.u.mh vr7{mr0}, r23, vr7
002704  7e0001e0  vmmov mr0, r2
002708  2b810000  lui r2, 8
00270c  0e920002  vmul.f.mz.rn vr4{mr1}, vr1, vr0
002710  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
002714  9f000040  addli r1, zero, 8192
002718  6e3044c2  vsrl.s.mz vr0{mr1}, vr8, vr4
00271c  7e8000e0  vmmov mr0, r1
002720  ab400000  lui r1, 4
002724  e61002c0  vabs.f vr1, vr4
002728  eaa37530  vor.u.mh vr7{mr0}, r11, vr7
00272c  7e8000e0  vmmov mr0, r1
002730  6a300502  vand.s.mz vr0{mr1}, r10, vr0
002734  ea237e30  vor.u.mh vr7{mr0}, r28, vr7
002738  76a01442  vlt.u.mz mr0{mr1}, vr9, vr1
00273c  fe0000a0  vmmov r1, mr0
002740  7e0001e0  vmmov mr0, r2
002744  16300202  vadd.s.mz vr0{mr1}, vr4, vr0
002748  1bc1f000  srli r2, r1, 15
00274c  6ab24122  vor.s.mz vr4{mr1}, r3, vr4
002750  eaa37d30  vor.u.mh vr7{mr0}, r27, vr7
002754  e301fff3  loadli.w r3,  -1544(r30)
002758  1b011100  andi r2, r2, 1
00275c  92b10202  vadd.s.mz vr3{mr1}, r5, vr0
002760  46807116  vstore.mh vr7{mr3}, 0(r3)
002764  3b300100  bneq r2, zero, 12
002768  fabdf140  vextracti.s r27, 15(vr3)
00276c  5b010000  j 8
002770  fa3df240  vextracti.s r27, 15(vr4)
002774  1bc1e000  srli r2, r1, 14
002778  1b011100  andi r2, r2, 1
00277c  3b300100  bneq r2, zero, 12
002780  7abee140  vextracti.s r28, 14(vr3)
002784  5b010000  j 8
002788  7a3ee240  vextracti.s r28, 14(vr4)
00278c  1bc1d000  srli r2, r1, 13
002790  1b011100  andi r2, r2, 1
002794  3b300100  bneq r2, zero, 12
002798  fab5d140  vextracti.s r11, 13(vr3)
00279c  5b010000  j 8
0027a0  fa35d240  vextracti.s r11, 13(vr4)
0027a4  1bc1c000  srli r2, r1, 12
0027a8  1b011100  andi r2, r2, 1
0027ac  3b300100  bneq r2, zero, 12
0027b0  7ab7c140  vextracti.s r14, 12(vr3)
0027b4  5b010000  j 8
0027b8  7a37c240  vextracti.s r14, 12(vr4)
0027bc  1bc1b000  srli r2, r1, 11
0027c0  1b011100  andi r2, r2, 1
0027c4  3b300100  bneq r2, zero, 12
0027c8  fabbb140  vextracti.s r23, 11(vr3)
0027cc  5b010000  j 8
0027d0  fa3bb240  vextracti.s r23, 11(vr4)
0027d4  1bc1a000  srli r2, r1, 10
0027d8  1b011100  andi r2, r2, 1
0027dc  3b300100  bneq r2, zero, 12
0027e0  fab1a140  vextracti.s r3, 10(vr3)
0027e4  5b010000  j 8
0027e8  fa31a240  vextracti.s r3, 10(vr4)
0027ec  1bc19000  srli r2, r1, 9
0027f0  1b011100  andi r2, r2, 1
0027f4  3b300100  bneq r2, zero, 12
0027f8  7aba9140  vextracti.s r20, 9(vr3)
0027fc  5b010000  j 8
002800  7a3a9240  vextracti.s r20, 9(vr4)
002804  1bc18000  srli r2, r1, 8
002808  1b011100  andi r2, r2, 1
00280c  3b300100  bneq r2, zero, 12
002810  fab88140  vextracti.s r17, 8(vr3)
002814  5b010000  j 8
002818  fa388240  vextracti.s r17, 8(vr4)
00281c  1bc17000  srli r2, r1, 7
002820  1b011100  andi r2, r2, 1
002824  3b300100  bneq r2, zero, 12
002828  faba7140  vextracti.s r21, 7(vr3)
00282c  5b010000  j 8
002830  fa3a7240  vextracti.s r21, 7(vr4)
002834  1bc16000  srli r2, r1, 6
002838  1b011100  andi r2, r2, 1
00283c  3b300100  bneq r2, zero, 12
002840  7abc6140  vextracti.s r24, 6(vr3)
002844  5b010000  j 8
002848  7a3c6240  vextracti.s r24, 6(vr4)
00284c  1bc15000  srli r2, r1, 5
002850  1b011100  andi r2, r2, 1
002854  3b300100  bneq r2, zero, 12
002858  7ab15140  vextracti.s r2, 5(vr3)
00285c  5b010000  j 8
002860  7a315240  vextracti.s r2, 5(vr4)
002864  1bc34000  srli r6, r1, 4
002868  1b031300  andi r6, r6, 1
00286c  3b300300  bneq r6, zero, 12
002870  7ab34140  vextracti.s r6, 4(vr3)
002874  5b010000  j 8
002878  7a334240  vextracti.s r6, 4(vr4)
00287c  9bc33000  srli r7, r1, 3
002880  9b831300  andi r7, r7, 1
002884  3bb00300  bneq r7, zero, 12
002888  fab33140  vextracti.s r7, 3(vr3)
00288c  5b010000  j 8
002890  fa333240  vextracti.s r7, 3(vr4)
002894  1bc42000  srli r8, r1, 2
002898  1b041400  andi r8, r8, 1
00289c  3b300400  bneq r8, zero, 12
0028a0  7ab42140  vextracti.s r8, 2(vr3)
0028a4  5b010000  j 8
0028a8  7a342240  vextracti.s r8, 2(vr4)
0028ac  9bc41000  srli r9, r1, 1
0028b0  9b841400  andi r9, r9, 1
0028b4  3be00400  bneq r9, zero, 24
0028b8  fab41140  vextracti.s r9, 1(vr3)
0028bc  9b801000  andi r1, r1, 1
0028c0  37e00000  beq r1, zero, 24
0028c4  fa300240  vextracti.s r1, 0(vr4)
0028c8  db020000  j 20
0028cc  fa341240  vextracti.s r9, 1(vr4)
0028d0  9b801000  andi r1, r1, 1
0028d4  bbcf00fe  bneq r1, zero, -16
0028d8  fab00140  vextracti.s r1, 0(vr3)
0028dc  12322002  vadd.s.mz vr4{mr1}, zero, vr2
0028e0  1f100000  addli zero, zero, 1
0028e4  7e0000e0  vmmov mr0, zero
0028e8  17200000  xor zero, zero, zero
0028ec  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
0028f0  9f200000  addli r1, zero, 2
0028f4  7e8000e0  vmmov mr0, r1
0028f8  9f400000  addli r1, zero, 4
0028fc  6aa24430  vor.u.mh vr4{mr0}, r9, vr4
002900  7e8000e0  vmmov mr0, r1
002904  9f001000  addli r1, zero, 8
002908  6a224430  vor.u.mh vr4{mr0}, r8, vr4
00290c  7e8000e0  vmmov mr0, r1
002910  9f002000  addli r1, zero, 16
002914  6aa24330  vor.u.mh vr4{mr0}, r7, vr4
002918  7e8000e0  vmmov mr0, r1
00291c  9f004000  addli r1, zero, 32
002920  6a224330  vor.u.mh vr4{mr0}, r6, vr4
002924  7e8000e0  vmmov mr0, r1
002928  9f008000  addli r1, zero, 64
00292c  6a224130  vor.u.mh vr4{mr0}, r2, vr4
002930  7e8000e0  vmmov mr0, r1
002934  9f000001  addli r1, zero, 128
002938  2b014000  lui r2, 1024
00293c  6a224c30  vor.u.mh vr4{mr0}, r24, vr4
002940  7e8000e0  vmmov mr0, r1
002944  9f000002  addli r1, zero, 256
002948  6aa24a30  vor.u.mh vr4{mr0}, r21, vr4
00294c  7e8000e0  vmmov mr0, r1
002950  9f000004  addli r1, zero, 512
002954  6aa24830  vor.u.mh vr4{mr0}, r17, vr4
002958  7e8000e0  vmmov mr0, r1
00295c  9f000008  addli r1, zero, 1024
002960  6a224a30  vor.u.mh vr4{mr0}, r20, vr4
002964  7e8000e0  vmmov mr0, r1
002968  9f000010  addli r1, zero, 2048
00296c  6aa24130  vor.u.mh vr4{mr0}, r3, vr4
002970  7e8000e0  vmmov mr0, r1
002974  9f008fec  addli r1, r30, -2496
002978  6aa24b30  vor.u.mh vr4{mr0}, r23, vr4
00297c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
002980  9f000fee  addli r1, r30, -2304
002984  12100b02  vadd.f.mz.rn vr0{mr1}, r22, vr0
002988  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
00298c  9f000020  addli r1, zero, 4096
002990  7e8000e0  vmmov mr0, r1
002994  9f000040  addli r1, zero, 8192
002998  6a224730  vor.u.mh vr4{mr0}, r14, vr4
00299c  7e8000e0  vmmov mr0, r1
0029a0  ab400000  lui r1, 4
0029a4  8e920002  vmul.f.mz.rn vr5{mr1}, vr1, vr0
0029a8  6aa24530  vor.u.mh vr4{mr0}, r11, vr4
0029ac  7e8000e0  vmmov mr0, r1
0029b0  ab800000  lui r1, 8
0029b4  6e3054c2  vsrl.s.mz vr0{mr1}, vr8, vr5
0029b8  e69002c0  vabs.f vr1, vr5
0029bc  6a224e30  vor.u.mh vr4{mr0}, r28, vr4
0029c0  7e8000e0  vmmov mr0, r1
0029c4  9f002000  addli r1, zero, 16
0029c8  6a300502  vand.s.mz vr0{mr1}, r10, vr0
0029cc  6aa24d30  vor.u.mh vr4{mr0}, r27, vr4
0029d0  76a01442  vlt.u.mz mr0{mr1}, vr9, vr1
0029d4  7e0700a0  vmmov r14, mr0
0029d8  16b00202  vadd.s.mz vr0{mr1}, vr5, vr0
0029dc  92b10202  vadd.s.mz vr3{mr1}, r5, vr0
0029e0  6af040c0  vsrl.p vr0, r1, vr4
0029e4  6a325122  vor.s.mz vr4{mr1}, r2, vr5
0029e8  2b515555  lui r2, 349525
0029ec  9b40f700  srli r1, r14, 15
0029f0  1f51a10a  addli r2, r2, 1365
0029f4  9b801000  andi r1, r1, 1
0029f8  7e0001e0  vmmov mr0, r2
0029fc  6301fff3  loadli.w r2,  -1544(r30)
002a00  46000110  vstore.mh vr0{mr0}, 0(r2)
002a04  3bb00000  bneq r1, zero, 12
002a08  7abaf140  vextracti.s r20, 15(vr3)
002a0c  5b010000  j 8
002a10  7a3af240  vextracti.s r20, 15(vr4)
002a14  9b40e700  srli r1, r14, 14
002a18  9b801000  andi r1, r1, 1
002a1c  3bb00000  bneq r1, zero, 12
002a20  fabde140  vextracti.s r27, 14(vr3)
002a24  5b010000  j 8
002a28  fa3de240  vextracti.s r27, 14(vr4)
002a2c  9b40d700  srli r1, r14, 13
002a30  9b801000  andi r1, r1, 1
002a34  3bb00000  bneq r1, zero, 12
002a38  fab5d140  vextracti.s r11, 13(vr3)
002a3c  5b010000  j 8
002a40  fa35d240  vextracti.s r11, 13(vr4)
002a44  9b40c700  srli r1, r14, 12
002a48  9b801000  andi r1, r1, 1
002a4c  3bb00000  bneq r1, zero, 12
002a50  fab0c140  vextracti.s r1, 12(vr3)
002a54  5b010000  j 8
002a58  fa30c240  vextracti.s r1, 12(vr4)
002a5c  1b41b700  srli r2, r14, 11
002a60  1b011100  andi r2, r2, 1
002a64  3b300100  bneq r2, zero, 12
002a68  fabbb140  vextracti.s r23, 11(vr3)
002a6c  5b010000  j 8
002a70  fa3bb240  vextracti.s r23, 11(vr4)
002a74  1b41a700  srli r2, r14, 10
002a78  1b011100  andi r2, r2, 1
002a7c  3b300100  bneq r2, zero, 12
002a80  fab1a140  vextracti.s r3, 10(vr3)
002a84  5b010000  j 8
002a88  fa31a240  vextracti.s r3, 10(vr4)
002a8c  1b419700  srli r2, r14, 9
002a90  1b011100  andi r2, r2, 1
002a94  3b300100  bneq r2, zero, 12
002a98  7abe9140  vextracti.s r28, 9(vr3)
002a9c  5b010000  j 8
002aa0  7a3e9240  vextracti.s r28, 9(vr4)
002aa4  1b418700  srli r2, r14, 8
002aa8  1b011100  andi r2, r2, 1
002aac  3b300100  bneq r2, zero, 12
002ab0  fab88140  vextracti.s r17, 8(vr3)
002ab4  5b010000  j 8
002ab8  fa388240  vextracti.s r17, 8(vr4)
002abc  1b417700  srli r2, r14, 7
002ac0  1b011100  andi r2, r2, 1
002ac4  3b300100  bneq r2, zero, 12
002ac8  faba7140  vextracti.s r21, 7(vr3)
002acc  5b010000  j 8
002ad0  fa3a7240  vextracti.s r21, 7(vr4)
002ad4  1b416700  srli r2, r14, 6
002ad8  1b011100  andi r2, r2, 1
002adc  3b300100  bneq r2, zero, 12
002ae0  7abc6140  vextracti.s r24, 6(vr3)
002ae4  5b010000  j 8
002ae8  7a3c6240  vextracti.s r24, 6(vr4)
002aec  1b415700  srli r2, r14, 5
002af0  1b011100  andi r2, r2, 1
002af4  3b300100  bneq r2, zero, 12
002af8  7ab15140  vextracti.s r2, 5(vr3)
002afc  5b010000  j 8
002b00  7a315240  vextracti.s r2, 5(vr4)
002b04  1b434700  srli r6, r14, 4
002b08  1b031300  andi r6, r6, 1
002b0c  3b300300  bneq r6, zero, 12
002b10  7ab34140  vextracti.s r6, 4(vr3)
002b14  5b010000  j 8
002b18  7a334240  vextracti.s r6, 4(vr4)
002b1c  9b433700  srli r7, r14, 3
002b20  9b831300  andi r7, r7, 1
002b24  3bb00300  bneq r7, zero, 12
002b28  fab33140  vextracti.s r7, 3(vr3)
002b2c  5b010000  j 8
002b30  fa333240  vextracti.s r7, 3(vr4)
002b34  1b442700  srli r8, r14, 2
002b38  1b041400  andi r8, r8, 1
002b3c  3b300400  bneq r8, zero, 12
002b40  7ab42140  vextracti.s r8, 2(vr3)
002b44  5b010000  j 8
002b48  7a342240  vextracti.s r8, 2(vr4)
002b4c  9b441700  srli r9, r14, 1
002b50  9b841400  andi r9, r9, 1
002b54  3be00400  bneq r9, zero, 24
002b58  fab41140  vextracti.s r9, 1(vr3)
002b5c  1b071700  andi r14, r14, 1
002b60  37600700  beq r14, zero, 24
002b64  7a370240  vextracti.s r14, 0(vr4)
002b68  db020000  j 20
002b6c  fa341240  vextracti.s r9, 1(vr4)
002b70  1b071700  andi r14, r14, 1
002b74  bb4f07fe  bneq r14, zero, -16
002b78  7ab70140  vextracti.s r14, 0(vr3)
002b7c  92322002  vadd.s.mz vr5{mr1}, zero, vr2
002b80  1f100000  addli zero, zero, 1
002b84  7e0000e0  vmmov mr0, zero
002b88  17200000  xor zero, zero, zero
002b8c  ea225730  vor.u.mh vr5{mr0}, r14, vr5
002b90  1f270000  addli r14, zero, 2
002b94  7e0007e0  vmmov mr0, r14
002b98  eaa25430  vor.u.mh vr5{mr0}, r9, vr5
002b9c  9f440000  addli r9, zero, 4
002ba0  7e8004e0  vmmov mr0, r9
002ba4  ea225430  vor.u.mh vr5{mr0}, r8, vr5
002ba8  1f041000  addli r8, zero, 8
002bac  7e0004e0  vmmov mr0, r8
002bb0  eaa25330  vor.u.mh vr5{mr0}, r7, vr5
002bb4  9f032000  addli r7, zero, 16
002bb8  7e8003e0  vmmov mr0, r7
002bbc  ea225330  vor.u.mh vr5{mr0}, r6, vr5
002bc0  1f034000  addli r6, zero, 32
002bc4  7e0003e0  vmmov mr0, r6
002bc8  ea225130  vor.u.mh vr5{mr0}, r2, vr5
002bcc  1f018000  addli r2, zero, 64
002bd0  7e0001e0  vmmov mr0, r2
002bd4  1f010001  addli r2, zero, 128
002bd8  ea225c30  vor.u.mh vr5{mr0}, r24, vr5
002bdc  7e0001e0  vmmov mr0, r2
002be0  1f010002  addli r2, zero, 256
002be4  eaa25a30  vor.u.mh vr5{mr0}, r21, vr5
002be8  7e0001e0  vmmov mr0, r2
002bec  1f010004  addli r2, zero, 512
002bf0  eaa25830  vor.u.mh vr5{mr0}, r17, vr5
002bf4  7e0001e0  vmmov mr0, r2
002bf8  1f010008  addli r2, zero, 1024
002bfc  ea225e30  vor.u.mh vr5{mr0}, r28, vr5
002c00  7e0001e0  vmmov mr0, r2
002c04  1f018fed  addli r2, r30, -2368
002c08  eaa25130  vor.u.mh vr5{mr0}, r3, vr5
002c0c  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
002c10  1f010fef  addli r2, r30, -2176
002c14  ab014000  lui r3, 1024
002c18  12100b02  vadd.f.mz.rn vr0{mr1}, r22, vr0
002c1c  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
002c20  1f010010  addli r2, zero, 2048
002c24  7e0001e0  vmmov mr0, r2
002c28  1f010020  addli r2, zero, 4096
002c2c  eaa25b30  vor.u.mh vr5{mr0}, r23, vr5
002c30  7e0001e0  vmmov mr0, r2
002c34  2b810000  lui r2, 8
002c38  0e920002  vmul.f.mz.rn vr4{mr1}, vr1, vr0
002c3c  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
002c40  9f000040  addli r1, zero, 8192
002c44  7e8000e0  vmmov mr0, r1
002c48  ab400000  lui r1, 4
002c4c  6e3044c2  vsrl.s.mz vr0{mr1}, vr8, vr4
002c50  e61002c0  vabs.f vr1, vr4
002c54  eaa25530  vor.u.mh vr5{mr0}, r11, vr5
002c58  7e8000e0  vmmov mr0, r1
002c5c  6a300502  vand.s.mz vr0{mr1}, r10, vr0
002c60  eaa25d30  vor.u.mh vr5{mr0}, r27, vr5
002c64  76a01442  vlt.u.mz mr0{mr1}, vr9, vr1
002c68  fe0000a0  vmmov r1, mr0
002c6c  7e0001e0  vmmov mr0, r2
002c70  1bc1f000  srli r2, r1, 15
002c74  16300202  vadd.s.mz vr0{mr1}, vr4, vr0
002c78  6ab24122  vor.s.mz vr4{mr1}, r3, vr4
002c7c  ea225a30  vor.u.mh vr5{mr0}, r20, vr5
002c80  e341fff3  loadli.w r3,  -1540(r30)
002c84  1b011100  andi r2, r2, 1
002c88  92b10202  vadd.s.mz vr3{mr1}, r5, vr0
002c8c  46805116  vstore.mh vr5{mr3}, 0(r3)
002c90  3b300100  bneq r2, zero, 12
002c94  7abaf140  vextracti.s r20, 15(vr3)
002c98  5b010000  j 8
002c9c  7a3af240  vextracti.s r20, 15(vr4)
002ca0  1bc1e000  srli r2, r1, 14
002ca4  1b011100  andi r2, r2, 1
002ca8  3b300100  bneq r2, zero, 12
002cac  fabde140  vextracti.s r27, 14(vr3)
002cb0  5b010000  j 8
002cb4  fa3de240  vextracti.s r27, 14(vr4)
002cb8  1bc1d000  srli r2, r1, 13
002cbc  1b011100  andi r2, r2, 1
002cc0  3b300100  bneq r2, zero, 12
002cc4  fab5d140  vextracti.s r11, 13(vr3)
002cc8  5b010000  j 8
002ccc  fa35d240  vextracti.s r11, 13(vr4)
002cd0  1bc1c000  srli r2, r1, 12
002cd4  1b011100  andi r2, r2, 1
002cd8  3b300100  bneq r2, zero, 12
002cdc  7ab7c140  vextracti.s r14, 12(vr3)
002ce0  5b010000  j 8
002ce4  7a37c240  vextracti.s r14, 12(vr4)
002ce8  1bc1b000  srli r2, r1, 11
002cec  1b011100  andi r2, r2, 1
002cf0  3b300100  bneq r2, zero, 12
002cf4  fabbb140  vextracti.s r23, 11(vr3)
002cf8  5b010000  j 8
002cfc  fa3bb240  vextracti.s r23, 11(vr4)
002d00  1bc1a000  srli r2, r1, 10
002d04  1b011100  andi r2, r2, 1
002d08  3b300100  bneq r2, zero, 12
002d0c  fab1a140  vextracti.s r3, 10(vr3)
002d10  5b010000  j 8
002d14  fa31a240  vextracti.s r3, 10(vr4)
002d18  1bc19000  srli r2, r1, 9
002d1c  1b011100  andi r2, r2, 1
002d20  3b300100  bneq r2, zero, 12
002d24  7abe9140  vextracti.s r28, 9(vr3)
002d28  5b010000  j 8
002d2c  7a3e9240  vextracti.s r28, 9(vr4)
002d30  1bc18000  srli r2, r1, 8
002d34  1b011100  andi r2, r2, 1
002d38  3b300100  bneq r2, zero, 12
002d3c  fab88140  vextracti.s r17, 8(vr3)
002d40  5b010000  j 8
002d44  fa388240  vextracti.s r17, 8(vr4)
002d48  1bc17000  srli r2, r1, 7
002d4c  1b011100  andi r2, r2, 1
002d50  3b300100  bneq r2, zero, 12
002d54  faba7140  vextracti.s r21, 7(vr3)
002d58  5b010000  j 8
002d5c  fa3a7240  vextracti.s r21, 7(vr4)
002d60  1bc16000  srli r2, r1, 6
002d64  1b011100  andi r2, r2, 1
002d68  3b300100  bneq r2, zero, 12
002d6c  7abc6140  vextracti.s r24, 6(vr3)
002d70  5b010000  j 8
002d74  7a3c6240  vextracti.s r24, 6(vr4)
002d78  1bc15000  srli r2, r1, 5
002d7c  1b011100  andi r2, r2, 1
002d80  3b300100  bneq r2, zero, 12
002d84  7ab15140  vextracti.s r2, 5(vr3)
002d88  5b010000  j 8
002d8c  7a315240  vextracti.s r2, 5(vr4)
002d90  1bc34000  srli r6, r1, 4
002d94  1b031300  andi r6, r6, 1
002d98  3b300300  bneq r6, zero, 12
002d9c  7ab34140  vextracti.s r6, 4(vr3)
002da0  5b010000  j 8
002da4  7a334240  vextracti.s r6, 4(vr4)
002da8  9bc33000  srli r7, r1, 3
002dac  9b831300  andi r7, r7, 1
002db0  3bb00300  bneq r7, zero, 12
002db4  fab33140  vextracti.s r7, 3(vr3)
002db8  5b010000  j 8
002dbc  fa333240  vextracti.s r7, 3(vr4)
002dc0  1bc42000  srli r8, r1, 2
002dc4  1b041400  andi r8, r8, 1
002dc8  3b300400  bneq r8, zero, 12
002dcc  7ab42140  vextracti.s r8, 2(vr3)
002dd0  5b010000  j 8
002dd4  7a342240  vextracti.s r8, 2(vr4)
002dd8  9bc41000  srli r9, r1, 1
002ddc  9b841400  andi r9, r9, 1
002de0  3be00400  bneq r9, zero, 24
002de4  fab41140  vextracti.s r9, 1(vr3)
002de8  9b801000  andi r1, r1, 1
002dec  37e00000  beq r1, zero, 24
002df0  fa300240  vextracti.s r1, 0(vr4)
002df4  db020000  j 20
002df8  fa341240  vextracti.s r9, 1(vr4)
002dfc  9b801000  andi r1, r1, 1
002e00  bbcf00fe  bneq r1, zero, -16
002e04  fab00140  vextracti.s r1, 0(vr3)
002e08  12322002  vadd.s.mz vr4{mr1}, zero, vr2
002e0c  1f100000  addli zero, zero, 1
002e10  7e0000e0  vmmov mr0, zero
002e14  17200000  xor zero, zero, zero
002e18  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
002e1c  9f200000  addli r1, zero, 2
002e20  7e8000e0  vmmov mr0, r1
002e24  9f400000  addli r1, zero, 4
002e28  6aa24430  vor.u.mh vr4{mr0}, r9, vr4
002e2c  7e8000e0  vmmov mr0, r1
002e30  9f001000  addli r1, zero, 8
002e34  6a224430  vor.u.mh vr4{mr0}, r8, vr4
002e38  7e8000e0  vmmov mr0, r1
002e3c  9f002000  addli r1, zero, 16
002e40  6aa24330  vor.u.mh vr4{mr0}, r7, vr4
002e44  7e8000e0  vmmov mr0, r1
002e48  9f004000  addli r1, zero, 32
002e4c  6a224330  vor.u.mh vr4{mr0}, r6, vr4
002e50  7e8000e0  vmmov mr0, r1
002e54  9f008000  addli r1, zero, 64
002e58  6a224130  vor.u.mh vr4{mr0}, r2, vr4
002e5c  7e8000e0  vmmov mr0, r1
002e60  9f000001  addli r1, zero, 128
002e64  2b014000  lui r2, 1024
002e68  6a224c30  vor.u.mh vr4{mr0}, r24, vr4
002e6c  7e8000e0  vmmov mr0, r1
002e70  9f000002  addli r1, zero, 256
002e74  6aa24a30  vor.u.mh vr4{mr0}, r21, vr4
002e78  7e8000e0  vmmov mr0, r1
002e7c  9f000004  addli r1, zero, 512
002e80  6aa24830  vor.u.mh vr4{mr0}, r17, vr4
002e84  7e8000e0  vmmov mr0, r1
002e88  9f000008  addli r1, zero, 1024
002e8c  6a224e30  vor.u.mh vr4{mr0}, r28, vr4
002e90  7e8000e0  vmmov mr0, r1
002e94  9f000010  addli r1, zero, 2048
002e98  6aa24130  vor.u.mh vr4{mr0}, r3, vr4
002e9c  7e8000e0  vmmov mr0, r1
002ea0  9f008fee  addli r1, r30, -2240
002ea4  6aa24b30  vor.u.mh vr4{mr0}, r23, vr4
002ea8  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
002eac  9f008ff0  addli r1, r30, -1984
002eb0  12100b02  vadd.f.mz.rn vr0{mr1}, r22, vr0
002eb4  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
002eb8  9f000020  addli r1, zero, 4096
002ebc  7e8000e0  vmmov mr0, r1
002ec0  9f000040  addli r1, zero, 8192
002ec4  6a224730  vor.u.mh vr4{mr0}, r14, vr4
002ec8  7e8000e0  vmmov mr0, r1
002ecc  ab400000  lui r1, 4
002ed0  8e920002  vmul.f.mz.rn vr5{mr1}, vr1, vr0
002ed4  6aa24530  vor.u.mh vr4{mr0}, r11, vr4
002ed8  7e8000e0  vmmov mr0, r1
002edc  ab800000  lui r1, 8
002ee0  6e3054c2  vsrl.s.mz vr0{mr1}, vr8, vr5
002ee4  e69002c0  vabs.f vr1, vr5
002ee8  6aa24d30  vor.u.mh vr4{mr0}, r27, vr4
002eec  7e8000e0  vmmov mr0, r1
002ef0  9f002000  addli r1, zero, 16
002ef4  6a300502  vand.s.mz vr0{mr1}, r10, vr0
002ef8  6a224a30  vor.u.mh vr4{mr0}, r20, vr4
002efc  76a01442  vlt.u.mz mr0{mr1}, vr9, vr1
002f00  7e0700a0  vmmov r14, mr0
002f04  16b00202  vadd.s.mz vr0{mr1}, vr5, vr0
002f08  92b10202  vadd.s.mz vr3{mr1}, r5, vr0
002f0c  6af040c0  vsrl.p vr0, r1, vr4
002f10  6a325122  vor.s.mz vr4{mr1}, r2, vr5
002f14  2b515555  lui r2, 349525
002f18  9b40f700  srli r1, r14, 15
002f1c  1f51a10a  addli r2, r2, 1365
002f20  9b801000  andi r1, r1, 1
002f24  7e0001e0  vmmov mr0, r2
002f28  6341fff3  loadli.w r2,  -1540(r30)
002f2c  46000110  vstore.mh vr0{mr0}, 0(r2)
002f30  3bb00000  bneq r1, zero, 12
002f34  fab1f140  vextracti.s r3, 15(vr3)
002f38  5b010000  j 8
002f3c  fa31f240  vextracti.s r3, 15(vr4)
002f40  9b40e700  srli r1, r14, 14
002f44  9b801000  andi r1, r1, 1
002f48  3bb00000  bneq r1, zero, 12
002f4c  7abae140  vextracti.s r20, 14(vr3)
002f50  5b010000  j 8
002f54  7a3ae240  vextracti.s r20, 14(vr4)
002f58  9b40d700  srli r1, r14, 13
002f5c  9b801000  andi r1, r1, 1
002f60  3bb00000  bneq r1, zero, 12
002f64  fabdd140  vextracti.s r27, 13(vr3)
002f68  5b010000  j 8
002f6c  fa3dd240  vextracti.s r27, 13(vr4)
002f70  9b40c700  srli r1, r14, 12
002f74  9b801000  andi r1, r1, 1
002f78  3bb00000  bneq r1, zero, 12
002f7c  fab5c140  vextracti.s r11, 12(vr3)
002f80  5b010000  j 8
002f84  fa35c240  vextracti.s r11, 12(vr4)
002f88  9b40b700  srli r1, r14, 11
002f8c  9b801000  andi r1, r1, 1
002f90  3bb00000  bneq r1, zero, 12
002f94  fab0b140  vextracti.s r1, 11(vr3)
002f98  5b010000  j 8
002f9c  fa30b240  vextracti.s r1, 11(vr4)
002fa0  1b41a700  srli r2, r14, 10
002fa4  1b011100  andi r2, r2, 1
002fa8  3b300100  bneq r2, zero, 12
002fac  fabba140  vextracti.s r23, 10(vr3)
002fb0  5b010000  j 8
002fb4  fa3ba240  vextracti.s r23, 10(vr4)
002fb8  1b419700  srli r2, r14, 9
002fbc  1b011100  andi r2, r2, 1
002fc0  3b300100  bneq r2, zero, 12
002fc4  7abe9140  vextracti.s r28, 9(vr3)
002fc8  5b010000  j 8
002fcc  7a3e9240  vextracti.s r28, 9(vr4)
002fd0  1b418700  srli r2, r14, 8
002fd4  1b011100  andi r2, r2, 1
002fd8  3b300100  bneq r2, zero, 12
002fdc  fab88140  vextracti.s r17, 8(vr3)
002fe0  5b010000  j 8
002fe4  fa388240  vextracti.s r17, 8(vr4)
002fe8  1b417700  srli r2, r14, 7
002fec  1b011100  andi r2, r2, 1
002ff0  3b300100  bneq r2, zero, 12
002ff4  faba7140  vextracti.s r21, 7(vr3)
002ff8  5b010000  j 8
002ffc  fa3a7240  vextracti.s r21, 7(vr4)
003000  1b416700  srli r2, r14, 6
003004  1b011100  andi r2, r2, 1
003008  3b300100  bneq r2, zero, 12
00300c  7abc6140  vextracti.s r24, 6(vr3)
003010  5b010000  j 8
003014  7a3c6240  vextracti.s r24, 6(vr4)
003018  1b415700  srli r2, r14, 5
00301c  1b011100  andi r2, r2, 1
003020  3b300100  bneq r2, zero, 12
003024  7ab15140  vextracti.s r2, 5(vr3)
003028  5b010000  j 8
00302c  7a315240  vextracti.s r2, 5(vr4)
003030  1b434700  srli r6, r14, 4
003034  1b031300  andi r6, r6, 1
003038  3b300300  bneq r6, zero, 12
00303c  7ab34140  vextracti.s r6, 4(vr3)
003040  5b010000  j 8
003044  7a334240  vextracti.s r6, 4(vr4)
003048  9b433700  srli r7, r14, 3
00304c  9b831300  andi r7, r7, 1
003050  3bb00300  bneq r7, zero, 12
003054  fab33140  vextracti.s r7, 3(vr3)
003058  5b010000  j 8
00305c  fa333240  vextracti.s r7, 3(vr4)
003060  1b442700  srli r8, r14, 2
003064  1b041400  andi r8, r8, 1
003068  3b300400  bneq r8, zero, 12
00306c  7ab42140  vextracti.s r8, 2(vr3)
003070  5b010000  j 8
003074  7a342240  vextracti.s r8, 2(vr4)
003078  9b441700  srli r9, r14, 1
00307c  9b841400  andi r9, r9, 1
003080  3bb00400  bneq r9, zero, 12
003084  fab41140  vextracti.s r9, 1(vr3)
003088  5b010000  j 8
00308c  fa341240  vextracti.s r9, 1(vr4)
003090  6345fff1  loadli.w r10,  -1796(r30)
003094  1b071700  andi r14, r14, 1
003098  0a106502  vmul.f.mz.rn vr0{mr1}, r10, vr6
00309c  6305fff1  loadli.w r10,  -1800(r30)
0030a0  12100502  vadd.f.mz.rn vr0{mr1}, r10, vr0
0030a4  6345eff1  loadli.w r10,  -1804(r30)
0030a8  0e106002  vmul.f.mz.rn vr0{mr1}, vr0, vr6
0030ac  12100502  vadd.f.mz.rn vr0{mr1}, r10, vr0
0030b0  6305eff1  loadli.w r10,  -1808(r30)
0030b4  0e106002  vmul.f.mz.rn vr0{mr1}, vr0, vr6
0030b8  12100502  vadd.f.mz.rn vr0{mr1}, r10, vr0
0030bc  6345dff1  loadli.w r10,  -1812(r30)
0030c0  0e106002  vmul.f.mz.rn vr0{mr1}, vr0, vr6
0030c4  12100502  vadd.f.mz.rn vr0{mr1}, r10, vr0
0030c8  1f058fef  addli r10, r30, -2112
0030cc  63000500  loadli.w zero,  0(r10)
0030d0  2b0580bf  lui r10, 784384
0030d4  0e106002  vmul.f.mz.rn vr0{mr1}, vr0, vr6
0030d8  7e0000e0  vmmov mr0, zero
0030dc  17200000  xor zero, zero, zero
0030e0  63000ff0  loadli.w zero,  -2048(r30)
0030e4  0e900502  vmul.f.mz.rn vr0{mr1}, vr11, vr0
0030e8  1a100b02  vsub.f.mz.rn vr0{mr1}, r22, vr0
0030ec  0a130b00  vmul.f.mz.rn vr6{mr0}, r22, vr0
0030f0  7e0000e0  vmmov mr0, zero
0030f4  17200000  xor zero, zero, zero
0030f8  8a130500  vmul.f.mz.rn vr7{mr0}, r10, vr0
0030fc  3b300700  bneq r14, zero, 12
003100  7ab70140  vextracti.s r14, 0(vr3)
003104  5b010000  j 8
003108  7a370240  vextracti.s r14, 0(vr4)
00310c  92322002  vadd.s.mz vr5{mr1}, zero, vr2
003110  1f150000  addli r10, zero, 1
003114  16107302  vadd.f.mz.rn vr0{mr1}, vr6, vr7
003118  12100b02  vadd.f.mz.rn vr0{mr1}, r22, vr0
00311c  7e0105e0  vmmov mr2, r10
003120  1f150000  addli r10, zero, 1
003124  ea225734  vor.u.mh vr5{mr2}, r14, vr5
003128  1f270000  addli r14, zero, 2
00312c  7e0007e0  vmmov mr0, r14
003130  eaa25430  vor.u.mh vr5{mr0}, r9, vr5
003134  9f440000  addli r9, zero, 4
003138  7e8004e0  vmmov mr0, r9
00313c  ea225430  vor.u.mh vr5{mr0}, r8, vr5
003140  1f041000  addli r8, zero, 8
003144  7e0004e0  vmmov mr0, r8
003148  eaa25330  vor.u.mh vr5{mr0}, r7, vr5
00314c  9f032000  addli r7, zero, 16
003150  7e8003e0  vmmov mr0, r7
003154  ea225330  vor.u.mh vr5{mr0}, r6, vr5
003158  1f034000  addli r6, zero, 32
00315c  7e0003e0  vmmov mr0, r6
003160  ea225130  vor.u.mh vr5{mr0}, r2, vr5
003164  1f018000  addli r2, zero, 64
003168  7e0001e0  vmmov mr0, r2
00316c  1f010001  addli r2, zero, 128
003170  ea225c30  vor.u.mh vr5{mr0}, r24, vr5
003174  7e0001e0  vmmov mr0, r2
003178  1f010002  addli r2, zero, 256
00317c  eaa25a30  vor.u.mh vr5{mr0}, r21, vr5
003180  7e0001e0  vmmov mr0, r2
003184  1f010004  addli r2, zero, 512
003188  eaa25830  vor.u.mh vr5{mr0}, r17, vr5
00318c  7e0001e0  vmmov mr0, r2
003190  1f010008  addli r2, zero, 1024
003194  ea225e30  vor.u.mh vr5{mr0}, r28, vr5
003198  7e0001e0  vmmov mr0, r2
00319c  1f010ff1  addli r2, r30, -1920
0031a0  eaa25b30  vor.u.mh vr5{mr0}, r23, vr5
0031a4  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0031a8  1f010010  addli r2, zero, 2048
0031ac  7e0001e0  vmmov mr0, r2
0031b0  2b014000  lui r2, 1024
0031b4  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0031b8  9f000020  addli r1, zero, 4096
0031bc  0e920002  vmul.f.mz.rn vr4{mr1}, vr1, vr0
0031c0  7e8000e0  vmmov mr0, r1
0031c4  9f000040  addli r1, zero, 8192
0031c8  eaa25530  vor.u.mh vr5{mr0}, r11, vr5
0031cc  7e8000e0  vmmov mr0, r1
0031d0  ab400000  lui r1, 4
0031d4  6e3044c2  vsrl.s.mz vr0{mr1}, vr8, vr4
0031d8  e61002c0  vabs.f vr1, vr4
0031dc  eaa25d30  vor.u.mh vr5{mr0}, r27, vr5
0031e0  7e8000e0  vmmov mr0, r1
0031e4  ab800000  lui r1, 8
0031e8  6a300502  vand.s.mz vr0{mr1}, r10, vr0
0031ec  ea225a30  vor.u.mh vr5{mr0}, r20, vr5
0031f0  76a01442  vlt.u.mz mr0{mr1}, vr9, vr1
0031f4  7e0700a0  vmmov r14, mr0
0031f8  7e8000e0  vmmov mr0, r1
0031fc  16300202  vadd.s.mz vr0{mr1}, vr4, vr0
003200  9b40f700  srli r1, r14, 15
003204  6a324122  vor.s.mz vr4{mr1}, r2, vr4
003208  eaa25130  vor.u.mh vr5{mr0}, r3, vr5
00320c  6341eff3  loadli.w r2,  -1548(r30)
003210  9b801000  andi r1, r1, 1
003214  92b10202  vadd.s.mz vr3{mr1}, r5, vr0
003218  46005116  vstore.mh vr5{mr3}, 0(r2)
00321c  3bb00000  bneq r1, zero, 12
003220  fab1f140  vextracti.s r3, 15(vr3)
003224  5b010000  j 8
003228  fa31f240  vextracti.s r3, 15(vr4)
00322c  9b40e700  srli r1, r14, 14
003230  9b801000  andi r1, r1, 1
003234  3bb00000  bneq r1, zero, 12
003238  fab5e140  vextracti.s r11, 14(vr3)
00323c  5b010000  j 8
003240  fa35e240  vextracti.s r11, 14(vr4)
003244  9b40d700  srli r1, r14, 13
003248  9b801000  andi r1, r1, 1
00324c  3bb00000  bneq r1, zero, 12
003250  fab0d140  vextracti.s r1, 13(vr3)
003254  5b010000  j 8
003258  fa30d240  vextracti.s r1, 13(vr4)
00325c  1b41c700  srli r2, r14, 12
003260  1b011100  andi r2, r2, 1
003264  3b300100  bneq r2, zero, 12
003268  7abac140  vextracti.s r20, 12(vr3)
00326c  5b010000  j 8
003270  7a3ac240  vextracti.s r20, 12(vr4)
003274  1b41b700  srli r2, r14, 11
003278  1b011100  andi r2, r2, 1
00327c  3b300100  bneq r2, zero, 12
003280  fabbb140  vextracti.s r23, 11(vr3)
003284  5b010000  j 8
003288  fa3bb240  vextracti.s r23, 11(vr4)
00328c  1b41a700  srli r2, r14, 10
003290  1b011100  andi r2, r2, 1
003294  3b300100  bneq r2, zero, 12
003298  fabda140  vextracti.s r27, 10(vr3)
00329c  5b010000  j 8
0032a0  fa3da240  vextracti.s r27, 10(vr4)
0032a4  1b419700  srli r2, r14, 9
0032a8  1b011100  andi r2, r2, 1
0032ac  3b300100  bneq r2, zero, 12
0032b0  fab89140  vextracti.s r17, 9(vr3)
0032b4  5b010000  j 8
0032b8  fa389240  vextracti.s r17, 9(vr4)
0032bc  1b418700  srli r2, r14, 8
0032c0  1b011100  andi r2, r2, 1
0032c4  3b300100  bneq r2, zero, 12
0032c8  faba8140  vextracti.s r21, 8(vr3)
0032cc  5b010000  j 8
0032d0  fa3a8240  vextracti.s r21, 8(vr4)
0032d4  1b417700  srli r2, r14, 7
0032d8  1b011100  andi r2, r2, 1
0032dc  3b300100  bneq r2, zero, 12
0032e0  7abc7140  vextracti.s r24, 7(vr3)
0032e4  5b010000  j 8
0032e8  7a3c7240  vextracti.s r24, 7(vr4)
0032ec  1b416700  srli r2, r14, 6
0032f0  1b011100  andi r2, r2, 1
0032f4  3b300100  bneq r2, zero, 12
0032f8  7ab16140  vextracti.s r2, 6(vr3)
0032fc  5b010000  j 8
003300  7a316240  vextracti.s r2, 6(vr4)
003304  1b435700  srli r6, r14, 5
003308  1b031300  andi r6, r6, 1
00330c  3b300300  bneq r6, zero, 12
003310  7ab35140  vextracti.s r6, 5(vr3)
003314  5b010000  j 8
003318  7a335240  vextracti.s r6, 5(vr4)
00331c  9b434700  srli r7, r14, 4
003320  9b831300  andi r7, r7, 1
003324  3bb00300  bneq r7, zero, 12
003328  fab34140  vextracti.s r7, 4(vr3)
00332c  5b010000  j 8
003330  fa334240  vextracti.s r7, 4(vr4)
003334  1b443700  srli r8, r14, 3
003338  1b041400  andi r8, r8, 1
00333c  3b300400  bneq r8, zero, 12
003340  7ab43140  vextracti.s r8, 3(vr3)
003344  5b010000  j 8
003348  7a343240  vextracti.s r8, 3(vr4)
00334c  9b442700  srli r9, r14, 2
003350  9b841400  andi r9, r9, 1
003354  3bb00400  bneq r9, zero, 12
003358  fab42140  vextracti.s r9, 2(vr3)
00335c  5b010000  j 8
003360  fa342240  vextracti.s r9, 2(vr4)
003364  1b4e1700  srli r28, r14, 1
003368  1b0e1e00  andi r28, r28, 1
00336c  3b300e00  bneq r28, zero, 12
003370  7abe1140  vextracti.s r28, 1(vr3)
003374  5b010000  j 8
003378  7a3e1240  vextracti.s r28, 1(vr4)
00337c  9f120000  addli r5, zero, 1
003380  1b071700  andi r14, r14, 1
003384  376a07e6  beq r14, zero, -12648
003388  7a370240  vextracti.s r14, 0(vr4)
00338c  dbd2f9ff  j -12652
003390  9f0e8fe9  addli sp, r30, -2880
003394  9f8e8e16  addli sp, sp, 2880
003398  00a00300  mfence { lm, sm, gm }
00339c  00100000  exit
0033a0  00100000  exit
0033a4  00100000  exit
0033a8  00100000  exit
0033ac  00100000  exit
0033b0  00100000  exit
0033b4  00100000  exit
0033b8  00100000  exit
0033bc  00100000  exit
0033c0  00100000  exit
0033c4  00100000  exit
0033c8  00100000  exit
0033cc  00100000  exit
0033d0  00100000  exit
0033d4  00100000  exit
0033d8  00100000  exit
0033dc  00100000  exit
0033e0  00100000  exit
0033e4  00100000  exit
0033e8  00100000  exit
0033ec  00100000  exit
0033f0  00100000  exit
0033f4  00100000  exit
0033f8  00100000  exit
0033fc  00100000  exit
003400  00100000  exit
003404  00100000  exit
003408  00100000  exit
00340c  00100000  exit
003410  00100000  exit
003414  00100000  exit
003418  00100000  exit
00341c  00100000  exit
003420  00100000  exit
003424  00100000  exit
003428  00100000  exit
00342c  00100000  exit
003430  00100000  exit
003434  00100000  exit
003438  00100000  exit
00343c  00100000  exit
003440  00100000  exit
003444  00100000  exit
003448  00100000  exit
00344c  00100000  exit
003450  00100000  exit
003454  00100000  exit
003458  00100000  exit
00345c  00100000  exit
003460  00100000  exit
003464  00100000  exit
003468  00100000  exit
00346c  00100000  exit
003470  00100000  exit
003474  00100000  exit
003478  00100000  exit
00347c  00100000  exit
003480  00100000  exit
003484  00100000  exit
003488  00100000  exit
00348c  00100000  exit
003490  00100000  exit
003494  00100000  exit
003498  00100000  exit
00349c  00100000  exit
0034a0  00100000  exit
0034a4  00100000  exit
0034a8  00100000  exit
0034ac  00100000  exit
0034b0  00100000  exit
0034b4  00100000  exit
0034b8  00100000  exit
0034bc  00100000  exit
0034c0  00100000  exit
0034c4  00100000  exit
0034c8  00100000  exit
0034cc  00100000  exit
0034d0  00100000  exit
0034d4  00100000  exit
0034d8  00100000  exit
0034dc  00100000  exit
0034e0  00100000  exit
0034e4  00100000  exit
0034e8  00100000  exit
0034ec  00100000  exit
0034f0  00100000  exit
0034f4  00100000  exit
0034f8  00100000  exit
0034fc  00100000  exit
003500  00100000  exit
003504  00100000  exit
003508  00100000  exit
00350c  00100000  exit
003510  00100000  exit
003514  00100000  exit
003518  00100000  exit
00351c  00100000  exit
003520  00100000  exit
003524  00100000  exit
003528  00100000  exit
00352c  00100000  exit
003530  00100000  exit
003534  00100000  exit
003538  00100000  exit
00353c  00100000  exit
003540  00100000  exit
003544  00100000  exit
003548  00100000  exit
00354c  00100000  exit
003550  00100000  exit
003554  00100000  exit
003558  00100000  exit
00355c  00100000  exit
003560  00100000  exit
003564  00100000  exit
003568  00100000  exit
00356c  00100000  exit
003570  00100000  exit
003574  00100000  exit
003578  00100000  exit
00357c  00100000  exit
003580  00100000  exit
003584  00100000  exit
003588  00100000  exit
00358c  00100000  exit
003590  00100000  exit
003594  00100000  exit
003598  00100000  exit
00359c  00100000  exit
0035a0  00100000  exit
0035a4  00100000  exit
0035a8  00100000  exit
0035ac  00100000  exit
0035b0  00100000  exit
0035b4  00100000  exit
0035b8  00100000  exit
0035bc  00100000  exit
0035c0  00100000  exit
0035c4  00100000  exit
0035c8  00100000  exit
0035cc  00100000  exit
0035d0  00100000  exit
0035d4  00100000  exit
0035d8  00100000  exit
0035dc  00100000  exit
