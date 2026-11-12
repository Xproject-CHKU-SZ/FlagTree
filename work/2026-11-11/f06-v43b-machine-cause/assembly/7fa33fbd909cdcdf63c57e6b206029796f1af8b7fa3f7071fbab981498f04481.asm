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
0000dc  9f8e0eee  addli sp, sp, -2304
0000e0  1f8f8e11  addli r30, sp, 2240
0000e4  00520002  load_param_i r4, 0
0000e8  e3002f00  loadli.w r1,  16(r30)
0000ec  63412f00  loadli.w r2,  20(r30)
0000f0  e3013f00  loadli.w r3,  24(r30)
0000f4  8b101120  mul.s r1, r2, r1
0000f8  8b903020  mul.s r1, r1, r3
0000fc  67071fee  storeli.w r1, -2192(r30)
000100  4bf6400a  ble.s r1, r4, 5532
000104  80500102  load_param_i r1, 2
000108  80d10002  load_param_i r3, 1
00010c  00310002  core_id r2
000110  ab084000  lui r17, 1024
000114  b3140228  sext_int2long r[10:11], r4
000118  1f0d2000  addli r26, zero, 16
00011c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000120  9f261000  addli r13, zero, 10
000124  1f1b0000  addli r22, zero, 1
000128  9f0c0ff0  addli r25, r30, -2048
00012c  1f0e0010  addli r28, zero, 2048
000130  1f081000  addli r16, zero, 8
000134  b3930028  sext_int2long r[8:9], r1
000138  abf03f00  lui r1, 1023
00013c  e7463fee  storeli.w r3, -2196(r30)
000140  b3920128  sext_int2long r[6:7], r3
000144  b3150128  sext_int2long r[12:13], r2
000148  9f010fef  addli r3, r30, -2176
00014c  ea200d22  vor.u.mz vr1{mr1}, r26, vr0
000150  9b90f0ff  ori r1, r1, 4095
000154  33870028  zext_int2long r[15:16], r1
000158  b3800828  zext_int2long r[2:3], r17
00015c  73b01100  store.d r[2:3], 0(r3)
000160  9f000008  addli r1, zero, 1024
000164  9f01ffee  addli r3, r30, -2184
000168  b3800028  zext_int2long r[2:3], r1
00016c  73b01100  store.d r[2:3], 0(r3)
000170  ab505555  lui r1, 349525
000174  2b01807f  lui r2, 522240
000178  9fd0a00a  addli r1, r1, 1365
00017c  6a210122  vor.u.mz vr2{mr1}, r2, vr0
000180  7e8100e0  vmmov mr2, r1
000184  ab700000  lui r1, 7
000188  9b9df0ff  ori r27, r1, 4095
00018c  9f005fef  addli r1, r30, -2136
000190  73b05000  store.d r[6:7], 0(r1)
000194  9f004fef  addli r1, r30, -2144
000198  73b07000  store.d r[8:9], 0(r1)
00019c  9f003fef  addli r1, r30, -2152
0001a0  73b09000  store.d r[10:11], 0(r1)
0001a4  9f002fef  addli r1, r30, -2160
0001a8  73b0b000  store.d r[12:13], 0(r1)
0001ac  9f001fef  addli r1, r30, -2168
0001b0  73b0e000  store.d r[15:16], 0(r1)
0001b4  db030000  j 28
0001b8  6342efee  loadli.w r4,  -2188(r30)
0001bc  e340dfee  loadli.w r1,  -2196(r30)
0001c0  0b121210  add.s r4, r4, r1
0001c4  e300efee  loadli.w r1,  -2192(r30)
0001c8  3f201200  blt.s r4, r1, 8
0001cc  5b9a0200  j 5328
0001d0  1f010000  addli r2, zero, 0
0001d4  67474fee  storeli.w r4, -2188(r30)
0001d8  5b0c0000  j 96
0001dc  9f037fef  addli r7, r30, -2120
0001e0  eb518f00  load.d r[4:5], 8(r30)
0001e4  ab0000f0  lui r1, 983040
0001e8  9f261000  addli r13, zero, 10
0001ec  1f081000  addli r16, zero, 8
0001f0  ebd20300  load.d r[6:7], 0(r7)
0001f4  8ba15110  add.ul r[4:5], r[4:5], r[6:7]
0001f8  e3426fef  loadli.w r5,  -2124(r30)
0001fc  97901200  or r1, r5, r1
000200  ffb09101  s_lm2gm r1, r25, 0(r[4:5])
000204  9f005fef  addli r1, r30, -2136
000208  00a00000  mfence { lm }
00020c  ebd20000  load.d r[6:7], 0(r1)
000210  9f004fef  addli r1, r30, -2144
000214  ebd30000  load.d r[8:9], 0(r1)
000218  9f003fef  addli r1, r30, -2152
00021c  ebd40000  load.d r[10:11], 0(r1)
000220  9f002fef  addli r1, r30, -2160
000224  ebd50000  load.d r[12:13], 0(r1)
000228  9f001fef  addli r1, r30, -2168
00022c  6bd70000  load.d r[15:16], 0(r1)
000230  1f110100  addli r2, r2, 1
000234  371e01ff  beq r2, r16, -124
000238  b3010128  zext_int2long r[4:5], r2
00023c  8bb13320  mul.sl r[4:5], r[8:9], r[4:5]
000240  8ba1b110  add.ul r[4:5], r[4:5], r[12:13]
000244  8bb15120  mul.sl r[4:5], r[4:5], r[6:7]
000248  8ba19110  add.ul r[4:5], r[4:5], r[10:11]
00024c  97b1d102  sll.d r[4:5], r[4:5], r13
000250  93303704  setlt.sl r1, r[15:16], r[4:5]
000254  3bff00fe  bneq r1, zero, -36
000258  9f000fef  addli r1, r30, -2176
00025c  b3030028  zext_int2long r[8:9], zero
000260  ebd20000  load.d r[6:7], 0(r1)
000264  9f00ffee  addli r1, r30, -2184
000268  8bb23218  sub.sl r[6:7], r[6:7], r[4:5]
00026c  8bb27248  max.sl r[6:7], r[6:7], r[8:9]
000270  ebd30000  load.d r[8:9], 0(r1)
000274  ab0000f0  lui r1, 983040
000278  8bb27240  min.sl r[6:7], r[6:7], r[8:9]
00027c  97b36103  sll.d r[8:9], r[4:5], r22
000280  eb510f00  load.d r[4:5], 0(r30)
000284  9bb21200  slli r5, r5, 1
000288  1f037fef  addli r6, r30, -2120
00028c  8ba17110  add.ul r[4:5], r[4:5], r[8:9]
000290  97901200  or r1, r5, r1
000294  674b5fee  storeli.w r5, -2124(r30)
000298  73307300  store.d r[8:9], 0(r6)
00029c  9f020000  addli r5, zero, 0
0002a0  ffa09101  l_gm2lm r1, r25, 0(r[4:5])
0002a4  00a00000  mfence { lm }
0002a8  5b1c0000  j 224
0002ac  7ab40140  vextracti.s r8, 0(vr3)
0002b0  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0002b4  9f1a0000  addli r21, zero, 1
0002b8  9f820202  addli r5, r5, 256
0002bc  7e800ae0  vmmov mr0, r21
0002c0  ea213430  vor.u.mh vr3{mr0}, r8, vr3
0002c4  1f240000  addli r8, zero, 2
0002c8  7e0004e0  vmmov mr0, r8
0002cc  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0002d0  9f400000  addli r1, zero, 4
0002d4  7e8000e0  vmmov mr0, r1
0002d8  9f001000  addli r1, zero, 8
0002dc  ea213230  vor.u.mh vr3{mr0}, r4, vr3
0002e0  7e8000e0  vmmov mr0, r1
0002e4  9f002000  addli r1, zero, 16
0002e8  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
0002ec  7e8000e0  vmmov mr0, r1
0002f0  9f004000  addli r1, zero, 32
0002f4  eaa13930  vor.u.mh vr3{mr0}, r19, vr3
0002f8  7e8000e0  vmmov mr0, r1
0002fc  9f008000  addli r1, zero, 64
000300  ea213930  vor.u.mh vr3{mr0}, r18, vr3
000304  7e8000e0  vmmov mr0, r1
000308  9f000001  addli r1, zero, 128
00030c  eaa13730  vor.u.mh vr3{mr0}, r15, vr3
000310  7e8000e0  vmmov mr0, r1
000314  9f000002  addli r1, zero, 256
000318  ea213730  vor.u.mh vr3{mr0}, r14, vr3
00031c  7e8000e0  vmmov mr0, r1
000320  9f000004  addli r1, zero, 512
000324  eaa13630  vor.u.mh vr3{mr0}, r13, vr3
000328  7e8000e0  vmmov mr0, r1
00032c  9f000008  addli r1, zero, 1024
000330  ea213630  vor.u.mh vr3{mr0}, r12, vr3
000334  7e8000e0  vmmov mr0, r1
000338  9f000010  addli r1, zero, 2048
00033c  eaa13530  vor.u.mh vr3{mr0}, r11, vr3
000340  7e8000e0  vmmov mr0, r1
000344  9f000020  addli r1, zero, 4096
000348  ea213530  vor.u.mh vr3{mr0}, r10, vr3
00034c  7e8000e0  vmmov mr0, r1
000350  9f000040  addli r1, zero, 8192
000354  eaa13430  vor.u.mh vr3{mr0}, r9, vr3
000358  7e8000e0  vmmov mr0, r1
00035c  ab400000  lui r1, 4
000360  eaa13330  vor.u.mh vr3{mr0}, r7, vr3
000364  7e8000e0  vmmov mr0, r1
000368  ab800000  lui r1, 8
00036c  ea213a30  vor.u.mh vr3{mr0}, r20, vr3
000370  7e8000e0  vmmov mr0, r1
000374  ea213830  vor.u.mh vr3{mr0}, r16, vr3
000378  ea713dc0  vsrl.p vr3, r26, vr3
00037c  46003314  vstore.mh vr3{mr2}, 0(r6)
000380  00a00000  mfence { lm }
000384  37e9c2ff  beq r5, r28, -424
000388  aba0aaaa  lui r1, 699050
00038c  8b9a5c10  add.s r21, r25, r5
000390  9fa05015  addli r1, r1, 2730
000394  1f8a8a00  addli r20, r21, 64
000398  1f880a01  addli r16, r21, 128
00039c  1f838a01  addli r6, r21, 192
0003a0  c2840a04  vload.mz vr9{mr2}, 0(r21)
0003a4  7e8000e0  vmmov mr0, r1
0003a8  c2030a04  vload.mz vr7{mr2}, 0(r20)
0003ac  c2020804  vload.mz vr5{mr2}, 0(r16)
0003b0  9f008fef  addli r1, r30, -2112
0003b4  c2810a00  vload.mz vr3{mr0}, 0(r21)
0003b8  42040a00  vload.mz vr8{mr0}, 0(r20)
0003bc  42030800  vload.mz vr6{mr0}, 0(r16)
0003c0  42020300  vload.mz vr4{mr0}, 0(r6)
0003c4  fe0101c0  vmmov mr3, mr2
0003c8  b6950102  vmax.f.mz vr11{mr1}, vr3, vr0
0003cc  eeb1b0c2  vsrl.s.mz vr3{mr1}, vr1, vr11
0003d0  669505c0  vabs.f vr10, vr11
0003d4  ea313b02  vand.s.mz vr3{mr1}, r22, vr3
0003d8  7620a142  vlt.u.mz mr0{mr1}, vr2, vr10
0003dc  fe0400a0  vmmov r9, mr0
0003e0  16b53502  vadd.s.mz vr10{mr1}, vr11, vr3
0003e4  c2010304  vload.mz vr3{mr2}, 0(r6)
0003e8  eab5b822  vor.s.mz vr11{mr1}, r17, vr11
0003ec  12b5ad02  vadd.s.mz vr10{mr1}, r27, vr10
0003f0  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
0003f4  9bc0f400  srli r1, r9, 15
0003f8  9b801000  andi r1, r1, 1
0003fc  3bb00000  bneq r1, zero, 12
000400  fa3bf540  vextracti.s r23, 15(vr10)
000404  5b010000  j 8
000408  fabbf540  vextracti.s r23, 15(vr11)
00040c  9f100000  addli r1, zero, 1
000410  7e8100e0  vmmov mr2, r1
000414  9bc0e400  srli r1, r9, 14
000418  9b801000  andi r1, r1, 1
00041c  3bb00000  bneq r1, zero, 12
000420  7a3ce540  vextracti.s r24, 14(vr10)
000424  5b010000  j 8
000428  7abce540  vextracti.s r24, 14(vr11)
00042c  9bc0d400  srli r1, r9, 13
000430  9b801000  andi r1, r1, 1
000434  3bb00000  bneq r1, zero, 12
000438  fa33d540  vextracti.s r7, 13(vr10)
00043c  5b010000  j 8
000440  fab3d540  vextracti.s r7, 13(vr11)
000444  9bc0c400  srli r1, r9, 12
000448  9b801000  andi r1, r1, 1
00044c  3bb00000  bneq r1, zero, 12
000450  7a34c540  vextracti.s r8, 12(vr10)
000454  5b010000  j 8
000458  7ab4c540  vextracti.s r8, 12(vr11)
00045c  9bc0b400  srli r1, r9, 11
000460  9b801000  andi r1, r1, 1
000464  3bb00000  bneq r1, zero, 12
000468  7a35b540  vextracti.s r10, 11(vr10)
00046c  5b010000  j 8
000470  7ab5b540  vextracti.s r10, 11(vr11)
000474  9bc0a400  srli r1, r9, 10
000478  9b801000  andi r1, r1, 1
00047c  3bb00000  bneq r1, zero, 12
000480  fa35a540  vextracti.s r11, 10(vr10)
000484  5b010000  j 8
000488  fab5a540  vextracti.s r11, 10(vr11)
00048c  9bc09400  srli r1, r9, 9
000490  9b801000  andi r1, r1, 1
000494  3bb00000  bneq r1, zero, 12
000498  7a369540  vextracti.s r12, 9(vr10)
00049c  5b010000  j 8
0004a0  7ab69540  vextracti.s r12, 9(vr11)
0004a4  9bc08400  srli r1, r9, 8
0004a8  9b801000  andi r1, r1, 1
0004ac  3bb00000  bneq r1, zero, 12
0004b0  fa368540  vextracti.s r13, 8(vr10)
0004b4  5b010000  j 8
0004b8  fab68540  vextracti.s r13, 8(vr11)
0004bc  9bc07400  srli r1, r9, 7
0004c0  9b801000  andi r1, r1, 1
0004c4  3bb00000  bneq r1, zero, 12
0004c8  7a377540  vextracti.s r14, 7(vr10)
0004cc  5b010000  j 8
0004d0  7ab77540  vextracti.s r14, 7(vr11)
0004d4  9bc06400  srli r1, r9, 6
0004d8  9b801000  andi r1, r1, 1
0004dc  3bb00000  bneq r1, zero, 12
0004e0  fa376540  vextracti.s r15, 6(vr10)
0004e4  5b010000  j 8
0004e8  fab76540  vextracti.s r15, 6(vr11)
0004ec  9bc05400  srli r1, r9, 5
0004f0  9b801000  andi r1, r1, 1
0004f4  3bb00000  bneq r1, zero, 12
0004f8  7a395540  vextracti.s r18, 5(vr10)
0004fc  5b010000  j 8
000500  7ab95540  vextracti.s r18, 5(vr11)
000504  9bc04400  srli r1, r9, 4
000508  9b801000  andi r1, r1, 1
00050c  3bb00000  bneq r1, zero, 12
000510  fa394540  vextracti.s r19, 4(vr10)
000514  5b010000  j 8
000518  fab94540  vextracti.s r19, 4(vr11)
00051c  9bc03400  srli r1, r9, 3
000520  9b801000  andi r1, r1, 1
000524  3bb00000  bneq r1, zero, 12
000528  fa313540  vextracti.s r3, 3(vr10)
00052c  5b010000  j 8
000530  fab13540  vextracti.s r3, 3(vr11)
000534  9bc02400  srli r1, r9, 2
000538  9b801000  andi r1, r1, 1
00053c  3bb00000  bneq r1, zero, 12
000540  7a322540  vextracti.s r4, 2(vr10)
000544  5b010000  j 8
000548  7ab22540  vextracti.s r4, 2(vr11)
00054c  9bc01400  srli r1, r9, 1
000550  9b801000  andi r1, r1, 1
000554  3be00000  bneq r1, zero, 24
000558  fa301540  vextracti.s r1, 1(vr10)
00055c  9b841400  andi r9, r9, 1
000560  37e00400  beq r9, zero, 24
000564  fab40540  vextracti.s r9, 0(vr11)
000568  db020000  j 20
00056c  fab01540  vextracti.s r1, 1(vr11)
000570  9b841400  andi r9, r9, 1
000574  bbcf04fe  bneq r9, zero, -16
000578  fa340540  vextracti.s r9, 0(vr10)
00057c  92350002  vadd.s.mz vr11{mr1}, zero, vr0
000580  e6c40400  vshuffle2.hf vr9, vr9
000584  eaa5b434  vor.u.mh vr11{mr2}, r9, vr11
000588  9f240000  addli r9, zero, 2
00058c  36950402  vmax.f.mz vr10{mr1}, vr9, vr0
000590  7e8004e0  vmmov mr0, r9
000594  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000598  9f400000  addli r1, zero, 4
00059c  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
0005a0  e61105c0  vabs.f vr3, vr10
0005a4  7e8000e0  vmmov mr0, r1
0005a8  9f001000  addli r1, zero, 8
0005ac  ea25b230  vor.u.mh vr11{mr0}, r4, vr11
0005b0  7e8000e0  vmmov mr0, r1
0005b4  9f002000  addli r1, zero, 16
0005b8  ea349b02  vand.s.mz vr9{mr1}, r22, vr9
0005bc  eaa5b130  vor.u.mh vr11{mr0}, r3, vr11
0005c0  7e8000e0  vmmov mr0, r1
0005c4  9f004000  addli r1, zero, 32
0005c8  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
0005cc  aba1aaaa  lui r3, 699050
0005d0  6ab5a822  vor.s.mz vr10{mr1}, r17, vr10
0005d4  9fa15115  addli r3, r3, 2730
0005d8  eaa5b930  vor.u.mh vr11{mr0}, r19, vr11
0005dc  7e8000e0  vmmov mr0, r1
0005e0  9f008000  addli r1, zero, 64
0005e4  92b49d02  vadd.s.mz vr9{mr1}, r27, vr9
0005e8  ea25b930  vor.u.mh vr11{mr0}, r18, vr11
0005ec  7e8000e0  vmmov mr0, r1
0005f0  9f000001  addli r1, zero, 128
0005f4  eaa5b730  vor.u.mh vr11{mr0}, r15, vr11
0005f8  7e8000e0  vmmov mr0, r1
0005fc  9f000002  addli r1, zero, 256
000600  ea25b730  vor.u.mh vr11{mr0}, r14, vr11
000604  7e8000e0  vmmov mr0, r1
000608  9f000004  addli r1, zero, 512
00060c  eaa5b630  vor.u.mh vr11{mr0}, r13, vr11
000610  7e8000e0  vmmov mr0, r1
000614  9f000008  addli r1, zero, 1024
000618  ea25b630  vor.u.mh vr11{mr0}, r12, vr11
00061c  7e8000e0  vmmov mr0, r1
000620  9f000010  addli r1, zero, 2048
000624  eaa5b530  vor.u.mh vr11{mr0}, r11, vr11
000628  7e8000e0  vmmov mr0, r1
00062c  9f000020  addli r1, zero, 4096
000630  ea25b530  vor.u.mh vr11{mr0}, r10, vr11
000634  7e8000e0  vmmov mr0, r1
000638  9f000040  addli r1, zero, 8192
00063c  ea25b430  vor.u.mh vr11{mr0}, r8, vr11
000640  7e8000e0  vmmov mr0, r1
000644  ab400000  lui r1, 4
000648  eaa5b330  vor.u.mh vr11{mr0}, r7, vr11
00064c  7e8000e0  vmmov mr0, r1
000650  ab800000  lui r1, 8
000654  ea25bc30  vor.u.mh vr11{mr0}, r24, vr11
000658  76203142  vlt.u.mz mr0{mr1}, vr2, vr3
00065c  7e0400a0  vmmov r8, mr0
000660  7e8000e0  vmmov mr0, r1
000664  9b40f400  srli r1, r8, 15
000668  eaa5bb30  vor.u.mh vr11{mr0}, r23, vr11
00066c  9b801000  andi r1, r1, 1
000670  7e8001e0  vmmov mr0, r3
000674  4680ba10  vstore.mh vr11{mr0}, 0(r21)
000678  3bb00000  bneq r1, zero, 12
00067c  fabbf440  vextracti.s r23, 15(vr9)
000680  5b010000  j 8
000684  fa3bf540  vextracti.s r23, 15(vr10)
000688  9b40e400  srli r1, r8, 14
00068c  9b801000  andi r1, r1, 1
000690  3bb00000  bneq r1, zero, 12
000694  7abce440  vextracti.s r24, 14(vr9)
000698  5b010000  j 8
00069c  7a3ce540  vextracti.s r24, 14(vr10)
0006a0  9b40d400  srli r1, r8, 13
0006a4  9b801000  andi r1, r1, 1
0006a8  3bb00000  bneq r1, zero, 12
0006ac  fab3d440  vextracti.s r7, 13(vr9)
0006b0  5b010000  j 8
0006b4  fa33d540  vextracti.s r7, 13(vr10)
0006b8  9b40c400  srli r1, r8, 12
0006bc  9b801000  andi r1, r1, 1
0006c0  3bb00000  bneq r1, zero, 12
0006c4  fab4c440  vextracti.s r9, 12(vr9)
0006c8  5b010000  j 8
0006cc  fa34c540  vextracti.s r9, 12(vr10)
0006d0  9b40b400  srli r1, r8, 11
0006d4  9b801000  andi r1, r1, 1
0006d8  3bb00000  bneq r1, zero, 12
0006dc  7ab5b440  vextracti.s r10, 11(vr9)
0006e0  5b010000  j 8
0006e4  7a35b540  vextracti.s r10, 11(vr10)
0006e8  9b40a400  srli r1, r8, 10
0006ec  9b801000  andi r1, r1, 1
0006f0  3bb00000  bneq r1, zero, 12
0006f4  fab5a440  vextracti.s r11, 10(vr9)
0006f8  5b010000  j 8
0006fc  fa35a540  vextracti.s r11, 10(vr10)
000700  9b409400  srli r1, r8, 9
000704  9b801000  andi r1, r1, 1
000708  3bb00000  bneq r1, zero, 12
00070c  7ab69440  vextracti.s r12, 9(vr9)
000710  5b010000  j 8
000714  7a369540  vextracti.s r12, 9(vr10)
000718  9b408400  srli r1, r8, 8
00071c  9b801000  andi r1, r1, 1
000720  3bb00000  bneq r1, zero, 12
000724  fab68440  vextracti.s r13, 8(vr9)
000728  5b010000  j 8
00072c  fa368540  vextracti.s r13, 8(vr10)
000730  9b407400  srli r1, r8, 7
000734  9b801000  andi r1, r1, 1
000738  3bb00000  bneq r1, zero, 12
00073c  7ab77440  vextracti.s r14, 7(vr9)
000740  5b010000  j 8
000744  7a377540  vextracti.s r14, 7(vr10)
000748  9b406400  srli r1, r8, 6
00074c  9b801000  andi r1, r1, 1
000750  3bb00000  bneq r1, zero, 12
000754  fab76440  vextracti.s r15, 6(vr9)
000758  5b010000  j 8
00075c  fa376540  vextracti.s r15, 6(vr10)
000760  9b405400  srli r1, r8, 5
000764  9b801000  andi r1, r1, 1
000768  3bb00000  bneq r1, zero, 12
00076c  7ab95440  vextracti.s r18, 5(vr9)
000770  5b010000  j 8
000774  7a395540  vextracti.s r18, 5(vr10)
000778  9b404400  srli r1, r8, 4
00077c  9b801000  andi r1, r1, 1
000780  3bb00000  bneq r1, zero, 12
000784  fab94440  vextracti.s r19, 4(vr9)
000788  5b010000  j 8
00078c  fa394540  vextracti.s r19, 4(vr10)
000790  9b403400  srli r1, r8, 3
000794  9b801000  andi r1, r1, 1
000798  3bb00000  bneq r1, zero, 12
00079c  fab13440  vextracti.s r3, 3(vr9)
0007a0  5b010000  j 8
0007a4  fa313540  vextracti.s r3, 3(vr10)
0007a8  9b402400  srli r1, r8, 2
0007ac  9b801000  andi r1, r1, 1
0007b0  3bb00000  bneq r1, zero, 12
0007b4  7ab22440  vextracti.s r4, 2(vr9)
0007b8  5b010000  j 8
0007bc  7a322540  vextracti.s r4, 2(vr10)
0007c0  9b401400  srli r1, r8, 1
0007c4  9b801000  andi r1, r1, 1
0007c8  3be00000  bneq r1, zero, 24
0007cc  fab01440  vextracti.s r1, 1(vr9)
0007d0  1b041400  andi r8, r8, 1
0007d4  37600400  beq r8, zero, 24
0007d8  7a340540  vextracti.s r8, 0(vr10)
0007dc  db020000  j 20
0007e0  fa301540  vextracti.s r1, 1(vr10)
0007e4  1b041400  andi r8, r8, 1
0007e8  bb4f04fe  bneq r8, zero, -16
0007ec  7ab40440  vextracti.s r8, 0(vr9)
0007f0  92340002  vadd.s.mz vr9{mr1}, zero, vr0
0007f4  36150402  vmax.f.mz vr10{mr1}, vr8, vr0
0007f8  ea249434  vor.u.mh vr9{mr2}, r8, vr9
0007fc  1f240000  addli r8, zero, 2
000800  eeb1a0c2  vsrl.s.mz vr3{mr1}, vr1, vr10
000804  661405c0  vabs.f vr8, vr10
000808  7e0004e0  vmmov mr0, r8
00080c  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000810  9f400000  addli r1, zero, 4
000814  ea313b02  vand.s.mz vr3{mr1}, r22, vr3
000818  7e8000e0  vmmov mr0, r1
00081c  9f001000  addli r1, zero, 8
000820  ea249230  vor.u.mh vr9{mr0}, r4, vr9
000824  7e8000e0  vmmov mr0, r1
000828  9f002000  addli r1, zero, 16
00082c  96313502  vadd.s.mz vr3{mr1}, vr10, vr3
000830  eaa49130  vor.u.mh vr9{mr0}, r3, vr9
000834  7e8000e0  vmmov mr0, r1
000838  9f004000  addli r1, zero, 32
00083c  eaa49930  vor.u.mh vr9{mr0}, r19, vr9
000840  7e8000e0  vmmov mr0, r1
000844  9f008000  addli r1, zero, 64
000848  ea249930  vor.u.mh vr9{mr0}, r18, vr9
00084c  7e8000e0  vmmov mr0, r1
000850  9f000001  addli r1, zero, 128
000854  eaa49730  vor.u.mh vr9{mr0}, r15, vr9
000858  7e8000e0  vmmov mr0, r1
00085c  9f000002  addli r1, zero, 256
000860  ea249730  vor.u.mh vr9{mr0}, r14, vr9
000864  7e8000e0  vmmov mr0, r1
000868  9f000004  addli r1, zero, 512
00086c  eaa49630  vor.u.mh vr9{mr0}, r13, vr9
000870  7e8000e0  vmmov mr0, r1
000874  9f000008  addli r1, zero, 1024
000878  ea249630  vor.u.mh vr9{mr0}, r12, vr9
00087c  7e8000e0  vmmov mr0, r1
000880  9f000010  addli r1, zero, 2048
000884  eaa49530  vor.u.mh vr9{mr0}, r11, vr9
000888  7e8000e0  vmmov mr0, r1
00088c  9f000020  addli r1, zero, 4096
000890  ea249530  vor.u.mh vr9{mr0}, r10, vr9
000894  7e8000e0  vmmov mr0, r1
000898  9f000040  addli r1, zero, 8192
00089c  eaa49430  vor.u.mh vr9{mr0}, r9, vr9
0008a0  7e8000e0  vmmov mr0, r1
0008a4  ab400000  lui r1, 4
0008a8  eaa49330  vor.u.mh vr9{mr0}, r7, vr9
0008ac  7e8000e0  vmmov mr0, r1
0008b0  ab800000  lui r1, 8
0008b4  ea249c30  vor.u.mh vr9{mr0}, r24, vr9
0008b8  7e8000e0  vmmov mr0, r1
0008bc  eaa49b30  vor.u.mh vr9{mr0}, r23, vr9
0008c0  76208142  vlt.u.mz mr0{mr1}, vr2, vr8
0008c4  12b43d02  vadd.s.mz vr8{mr1}, r27, vr3
0008c8  fe0400a0  vmmov r9, mr0
0008cc  7e8001c0  vmmov mr0, mr3
0008d0  9bc0f400  srli r1, r9, 15
0008d4  ea719dc0  vsrl.p vr3, r26, vr9
0008d8  eab4a822  vor.s.mz vr9{mr1}, r17, vr10
0008dc  9b801000  andi r1, r1, 1
0008e0  46803a10  vstore.mh vr3{mr0}, 0(r21)
0008e4  3bb00000  bneq r1, zero, 12
0008e8  fa3af440  vextracti.s r21, 15(vr8)
0008ec  5b010000  j 8
0008f0  fabaf440  vextracti.s r21, 15(vr9)
0008f4  9bc0e400  srli r1, r9, 14
0008f8  9b801000  andi r1, r1, 1
0008fc  3bb00000  bneq r1, zero, 12
000900  fa3be440  vextracti.s r23, 14(vr8)
000904  5b010000  j 8
000908  fabbe440  vextracti.s r23, 14(vr9)
00090c  9bc0d400  srli r1, r9, 13
000910  9b801000  andi r1, r1, 1
000914  3bb00000  bneq r1, zero, 12
000918  fa33d440  vextracti.s r7, 13(vr8)
00091c  5b010000  j 8
000920  fab3d440  vextracti.s r7, 13(vr9)
000924  9bc0c400  srli r1, r9, 12
000928  9b801000  andi r1, r1, 1
00092c  3bb00000  bneq r1, zero, 12
000930  7a34c440  vextracti.s r8, 12(vr8)
000934  5b010000  j 8
000938  7ab4c440  vextracti.s r8, 12(vr9)
00093c  9bc0b400  srli r1, r9, 11
000940  9b801000  andi r1, r1, 1
000944  3bb00000  bneq r1, zero, 12
000948  7a35b440  vextracti.s r10, 11(vr8)
00094c  5b010000  j 8
000950  7ab5b440  vextracti.s r10, 11(vr9)
000954  9bc0a400  srli r1, r9, 10
000958  9b801000  andi r1, r1, 1
00095c  3bb00000  bneq r1, zero, 12
000960  fa35a440  vextracti.s r11, 10(vr8)
000964  5b010000  j 8
000968  fab5a440  vextracti.s r11, 10(vr9)
00096c  9bc09400  srli r1, r9, 9
000970  9b801000  andi r1, r1, 1
000974  3bb00000  bneq r1, zero, 12
000978  7a369440  vextracti.s r12, 9(vr8)
00097c  5b010000  j 8
000980  7ab69440  vextracti.s r12, 9(vr9)
000984  9bc08400  srli r1, r9, 8
000988  9b801000  andi r1, r1, 1
00098c  3bb00000  bneq r1, zero, 12
000990  fa368440  vextracti.s r13, 8(vr8)
000994  5b010000  j 8
000998  fab68440  vextracti.s r13, 8(vr9)
00099c  9bc07400  srli r1, r9, 7
0009a0  9b801000  andi r1, r1, 1
0009a4  3bb00000  bneq r1, zero, 12
0009a8  7a377440  vextracti.s r14, 7(vr8)
0009ac  5b010000  j 8
0009b0  7ab77440  vextracti.s r14, 7(vr9)
0009b4  9bc06400  srli r1, r9, 6
0009b8  9b801000  andi r1, r1, 1
0009bc  3bb00000  bneq r1, zero, 12
0009c0  fa376440  vextracti.s r15, 6(vr8)
0009c4  5b010000  j 8
0009c8  fab76440  vextracti.s r15, 6(vr9)
0009cc  9bc05400  srli r1, r9, 5
0009d0  9b801000  andi r1, r1, 1
0009d4  3bb00000  bneq r1, zero, 12
0009d8  7a395440  vextracti.s r18, 5(vr8)
0009dc  5b010000  j 8
0009e0  7ab95440  vextracti.s r18, 5(vr9)
0009e4  9bc04400  srli r1, r9, 4
0009e8  9b801000  andi r1, r1, 1
0009ec  3bb00000  bneq r1, zero, 12
0009f0  fa394440  vextracti.s r19, 4(vr8)
0009f4  5b010000  j 8
0009f8  fab94440  vextracti.s r19, 4(vr9)
0009fc  9bc03400  srli r1, r9, 3
000a00  9b801000  andi r1, r1, 1
000a04  3bb00000  bneq r1, zero, 12
000a08  fa313440  vextracti.s r3, 3(vr8)
000a0c  5b010000  j 8
000a10  fab13440  vextracti.s r3, 3(vr9)
000a14  9bc02400  srli r1, r9, 2
000a18  9b801000  andi r1, r1, 1
000a1c  3bb00000  bneq r1, zero, 12
000a20  7a322440  vextracti.s r4, 2(vr8)
000a24  5b010000  j 8
000a28  7ab22440  vextracti.s r4, 2(vr9)
000a2c  9bc01400  srli r1, r9, 1
000a30  9b801000  andi r1, r1, 1
000a34  3be00000  bneq r1, zero, 24
000a38  fa301440  vextracti.s r1, 1(vr8)
000a3c  9b841400  andi r9, r9, 1
000a40  37e00400  beq r9, zero, 24
000a44  fab40440  vextracti.s r9, 0(vr9)
000a48  db020000  j 20
000a4c  fab01440  vextracti.s r1, 1(vr9)
000a50  9b841400  andi r9, r9, 1
000a54  bbcf04fe  bneq r9, zero, -16
000a58  fa340440  vextracti.s r9, 0(vr8)
000a5c  92340002  vadd.s.mz vr9{mr1}, zero, vr0
000a60  e6c10300  vshuffle2.hf vr3, vr7
000a64  eaa49434  vor.u.mh vr9{mr2}, r9, vr9
000a68  9f240000  addli r9, zero, 2
000a6c  36940102  vmax.f.mz vr8{mr1}, vr3, vr0
000a70  7e8004e0  vmmov mr0, r9
000a74  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000a78  9f400000  addli r1, zero, 4
000a7c  eeb180c2  vsrl.s.mz vr3{mr1}, vr1, vr8
000a80  e61304c0  vabs.f vr7, vr8
000a84  7e8000e0  vmmov mr0, r1
000a88  9f001000  addli r1, zero, 8
000a8c  ea249230  vor.u.mh vr9{mr0}, r4, vr9
000a90  7e8000e0  vmmov mr0, r1
000a94  9f002000  addli r1, zero, 16
000a98  ea313b02  vand.s.mz vr3{mr1}, r22, vr3
000a9c  eaa49130  vor.u.mh vr9{mr0}, r3, vr9
000aa0  7e8000e0  vmmov mr0, r1
000aa4  9f004000  addli r1, zero, 32
000aa8  96313402  vadd.s.mz vr3{mr1}, vr8, vr3
000aac  aba1aaaa  lui r3, 699050
000ab0  6ab48822  vor.s.mz vr8{mr1}, r17, vr8
000ab4  9fa15115  addli r3, r3, 2730
000ab8  eaa49930  vor.u.mh vr9{mr0}, r19, vr9
000abc  7e8000e0  vmmov mr0, r1
000ac0  9f008000  addli r1, zero, 64
000ac4  ea249930  vor.u.mh vr9{mr0}, r18, vr9
000ac8  7e8000e0  vmmov mr0, r1
000acc  9f000001  addli r1, zero, 128
000ad0  eaa49730  vor.u.mh vr9{mr0}, r15, vr9
000ad4  7e8000e0  vmmov mr0, r1
000ad8  9f000002  addli r1, zero, 256
000adc  ea249730  vor.u.mh vr9{mr0}, r14, vr9
000ae0  7e8000e0  vmmov mr0, r1
000ae4  9f000004  addli r1, zero, 512
000ae8  eaa49630  vor.u.mh vr9{mr0}, r13, vr9
000aec  7e8000e0  vmmov mr0, r1
000af0  9f000008  addli r1, zero, 1024
000af4  ea249630  vor.u.mh vr9{mr0}, r12, vr9
000af8  7e8000e0  vmmov mr0, r1
000afc  9f000010  addli r1, zero, 2048
000b00  eaa49530  vor.u.mh vr9{mr0}, r11, vr9
000b04  7e8000e0  vmmov mr0, r1
000b08  9f000020  addli r1, zero, 4096
000b0c  ea249530  vor.u.mh vr9{mr0}, r10, vr9
000b10  7e8000e0  vmmov mr0, r1
000b14  9f000040  addli r1, zero, 8192
000b18  ea249430  vor.u.mh vr9{mr0}, r8, vr9
000b1c  7e8000e0  vmmov mr0, r1
000b20  ab400000  lui r1, 4
000b24  eaa49330  vor.u.mh vr9{mr0}, r7, vr9
000b28  7e8000e0  vmmov mr0, r1
000b2c  ab800000  lui r1, 8
000b30  eaa49b30  vor.u.mh vr9{mr0}, r23, vr9
000b34  76207142  vlt.u.mz mr0{mr1}, vr2, vr7
000b38  92b33d02  vadd.s.mz vr7{mr1}, r27, vr3
000b3c  7e0400a0  vmmov r8, mr0
000b40  7e8000e0  vmmov mr0, r1
000b44  9b40f400  srli r1, r8, 15
000b48  eaa49a30  vor.u.mh vr9{mr0}, r21, vr9
000b4c  9b801000  andi r1, r1, 1
000b50  7e8001e0  vmmov mr0, r3
000b54  46009a10  vstore.mh vr9{mr0}, 0(r20)
000b58  3bb00000  bneq r1, zero, 12
000b5c  fabaf340  vextracti.s r21, 15(vr7)
000b60  5b010000  j 8
000b64  fa3af440  vextracti.s r21, 15(vr8)
000b68  9b40e400  srli r1, r8, 14
000b6c  9b801000  andi r1, r1, 1
000b70  3bb00000  bneq r1, zero, 12
000b74  fabbe340  vextracti.s r23, 14(vr7)
000b78  5b010000  j 8
000b7c  fa3be440  vextracti.s r23, 14(vr8)
000b80  9b40d400  srli r1, r8, 13
000b84  9b801000  andi r1, r1, 1
000b88  3bb00000  bneq r1, zero, 12
000b8c  fab3d340  vextracti.s r7, 13(vr7)
000b90  5b010000  j 8
000b94  fa33d440  vextracti.s r7, 13(vr8)
000b98  9b40c400  srli r1, r8, 12
000b9c  9b801000  andi r1, r1, 1
000ba0  3bb00000  bneq r1, zero, 12
000ba4  fab4c340  vextracti.s r9, 12(vr7)
000ba8  5b010000  j 8
000bac  fa34c440  vextracti.s r9, 12(vr8)
000bb0  9b40b400  srli r1, r8, 11
000bb4  9b801000  andi r1, r1, 1
000bb8  3bb00000  bneq r1, zero, 12
000bbc  7ab5b340  vextracti.s r10, 11(vr7)
000bc0  5b010000  j 8
000bc4  7a35b440  vextracti.s r10, 11(vr8)
000bc8  9b40a400  srli r1, r8, 10
000bcc  9b801000  andi r1, r1, 1
000bd0  3bb00000  bneq r1, zero, 12
000bd4  fab5a340  vextracti.s r11, 10(vr7)
000bd8  5b010000  j 8
000bdc  fa35a440  vextracti.s r11, 10(vr8)
000be0  9b409400  srli r1, r8, 9
000be4  9b801000  andi r1, r1, 1
000be8  3bb00000  bneq r1, zero, 12
000bec  7ab69340  vextracti.s r12, 9(vr7)
000bf0  5b010000  j 8
000bf4  7a369440  vextracti.s r12, 9(vr8)
000bf8  9b408400  srli r1, r8, 8
000bfc  9b801000  andi r1, r1, 1
000c00  3bb00000  bneq r1, zero, 12
000c04  fab68340  vextracti.s r13, 8(vr7)
000c08  5b010000  j 8
000c0c  fa368440  vextracti.s r13, 8(vr8)
000c10  9b407400  srli r1, r8, 7
000c14  9b801000  andi r1, r1, 1
000c18  3bb00000  bneq r1, zero, 12
000c1c  7ab77340  vextracti.s r14, 7(vr7)
000c20  5b010000  j 8
000c24  7a377440  vextracti.s r14, 7(vr8)
000c28  9b406400  srli r1, r8, 6
000c2c  9b801000  andi r1, r1, 1
000c30  3bb00000  bneq r1, zero, 12
000c34  fab76340  vextracti.s r15, 6(vr7)
000c38  5b010000  j 8
000c3c  fa376440  vextracti.s r15, 6(vr8)
000c40  9b405400  srli r1, r8, 5
000c44  9b801000  andi r1, r1, 1
000c48  3bb00000  bneq r1, zero, 12
000c4c  7ab95340  vextracti.s r18, 5(vr7)
000c50  5b010000  j 8
000c54  7a395440  vextracti.s r18, 5(vr8)
000c58  9b404400  srli r1, r8, 4
000c5c  9b801000  andi r1, r1, 1
000c60  3bb00000  bneq r1, zero, 12
000c64  fab94340  vextracti.s r19, 4(vr7)
000c68  5b010000  j 8
000c6c  fa394440  vextracti.s r19, 4(vr8)
000c70  9b403400  srli r1, r8, 3
000c74  9b801000  andi r1, r1, 1
000c78  3bb00000  bneq r1, zero, 12
000c7c  fab13340  vextracti.s r3, 3(vr7)
000c80  5b010000  j 8
000c84  fa313440  vextracti.s r3, 3(vr8)
000c88  9b402400  srli r1, r8, 2
000c8c  9b801000  andi r1, r1, 1
000c90  3bb00000  bneq r1, zero, 12
000c94  7ab22340  vextracti.s r4, 2(vr7)
000c98  5b010000  j 8
000c9c  7a322440  vextracti.s r4, 2(vr8)
000ca0  9b401400  srli r1, r8, 1
000ca4  9b801000  andi r1, r1, 1
000ca8  3be00000  bneq r1, zero, 24
000cac  fab01340  vextracti.s r1, 1(vr7)
000cb0  1b041400  andi r8, r8, 1
000cb4  37600400  beq r8, zero, 24
000cb8  7a340440  vextracti.s r8, 0(vr8)
000cbc  db020000  j 20
000cc0  fa301440  vextracti.s r1, 1(vr8)
000cc4  1b041400  andi r8, r8, 1
000cc8  bb4f04fe  bneq r8, zero, -16
000ccc  7ab40340  vextracti.s r8, 0(vr7)
000cd0  92330002  vadd.s.mz vr7{mr1}, zero, vr0
000cd4  36140302  vmax.f.mz vr8{mr1}, vr6, vr0
000cd8  ea237434  vor.u.mh vr7{mr2}, r8, vr7
000cdc  1f240000  addli r8, zero, 2
000ce0  eeb180c2  vsrl.s.mz vr3{mr1}, vr1, vr8
000ce4  661304c0  vabs.f vr6, vr8
000ce8  7e0004e0  vmmov mr0, r8
000cec  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000cf0  9f400000  addli r1, zero, 4
000cf4  ea313b02  vand.s.mz vr3{mr1}, r22, vr3
000cf8  7e8000e0  vmmov mr0, r1
000cfc  9f001000  addli r1, zero, 8
000d00  ea237230  vor.u.mh vr7{mr0}, r4, vr7
000d04  7e8000e0  vmmov mr0, r1
000d08  9f002000  addli r1, zero, 16
000d0c  96313402  vadd.s.mz vr3{mr1}, vr8, vr3
000d10  eaa37130  vor.u.mh vr7{mr0}, r3, vr7
000d14  7e8000e0  vmmov mr0, r1
000d18  9f004000  addli r1, zero, 32
000d1c  eaa37930  vor.u.mh vr7{mr0}, r19, vr7
000d20  7e8000e0  vmmov mr0, r1
000d24  9f008000  addli r1, zero, 64
000d28  ea237930  vor.u.mh vr7{mr0}, r18, vr7
000d2c  7e8000e0  vmmov mr0, r1
000d30  9f000001  addli r1, zero, 128
000d34  eaa37730  vor.u.mh vr7{mr0}, r15, vr7
000d38  7e8000e0  vmmov mr0, r1
000d3c  9f000002  addli r1, zero, 256
000d40  ea237730  vor.u.mh vr7{mr0}, r14, vr7
000d44  7e8000e0  vmmov mr0, r1
000d48  9f000004  addli r1, zero, 512
000d4c  eaa37630  vor.u.mh vr7{mr0}, r13, vr7
000d50  7e8000e0  vmmov mr0, r1
000d54  9f000008  addli r1, zero, 1024
000d58  ea237630  vor.u.mh vr7{mr0}, r12, vr7
000d5c  7e8000e0  vmmov mr0, r1
000d60  9f000010  addli r1, zero, 2048
000d64  eaa37530  vor.u.mh vr7{mr0}, r11, vr7
000d68  7e8000e0  vmmov mr0, r1
000d6c  9f000020  addli r1, zero, 4096
000d70  ea237530  vor.u.mh vr7{mr0}, r10, vr7
000d74  7e8000e0  vmmov mr0, r1
000d78  9f000040  addli r1, zero, 8192
000d7c  eaa37430  vor.u.mh vr7{mr0}, r9, vr7
000d80  7e8000e0  vmmov mr0, r1
000d84  ab400000  lui r1, 4
000d88  eaa37330  vor.u.mh vr7{mr0}, r7, vr7
000d8c  7e8000e0  vmmov mr0, r1
000d90  ab800000  lui r1, 8
000d94  eaa37b30  vor.u.mh vr7{mr0}, r23, vr7
000d98  7e8000e0  vmmov mr0, r1
000d9c  eaa37a30  vor.u.mh vr7{mr0}, r21, vr7
000da0  76206142  vlt.u.mz mr0{mr1}, vr2, vr6
000da4  12b33d02  vadd.s.mz vr6{mr1}, r27, vr3
000da8  fe0400a0  vmmov r9, mr0
000dac  7e8001c0  vmmov mr0, mr3
000db0  9bc0f400  srli r1, r9, 15
000db4  ea717dc0  vsrl.p vr3, r26, vr7
000db8  eab38822  vor.s.mz vr7{mr1}, r17, vr8
000dbc  9b801000  andi r1, r1, 1
000dc0  46003a10  vstore.mh vr3{mr0}, 0(r20)
000dc4  3bb00000  bneq r1, zero, 12
000dc8  7a3af340  vextracti.s r20, 15(vr6)
000dcc  5b010000  j 8
000dd0  7abaf340  vextracti.s r20, 15(vr7)
000dd4  9bc0e400  srli r1, r9, 14
000dd8  9b801000  andi r1, r1, 1
000ddc  3bb00000  bneq r1, zero, 12
000de0  fa3ae340  vextracti.s r21, 14(vr6)
000de4  5b010000  j 8
000de8  fabae340  vextracti.s r21, 14(vr7)
000dec  9bc0d400  srli r1, r9, 13
000df0  9b801000  andi r1, r1, 1
000df4  3bb00000  bneq r1, zero, 12
000df8  fa33d340  vextracti.s r7, 13(vr6)
000dfc  5b010000  j 8
000e00  fab3d340  vextracti.s r7, 13(vr7)
000e04  9bc0c400  srli r1, r9, 12
000e08  9b801000  andi r1, r1, 1
000e0c  3bb00000  bneq r1, zero, 12
000e10  7a34c340  vextracti.s r8, 12(vr6)
000e14  5b010000  j 8
000e18  7ab4c340  vextracti.s r8, 12(vr7)
000e1c  9bc0b400  srli r1, r9, 11
000e20  9b801000  andi r1, r1, 1
000e24  3bb00000  bneq r1, zero, 12
000e28  7a35b340  vextracti.s r10, 11(vr6)
000e2c  5b010000  j 8
000e30  7ab5b340  vextracti.s r10, 11(vr7)
000e34  9bc0a400  srli r1, r9, 10
000e38  9b801000  andi r1, r1, 1
000e3c  3bb00000  bneq r1, zero, 12
000e40  fa35a340  vextracti.s r11, 10(vr6)
000e44  5b010000  j 8
000e48  fab5a340  vextracti.s r11, 10(vr7)
000e4c  9bc09400  srli r1, r9, 9
000e50  9b801000  andi r1, r1, 1
000e54  3bb00000  bneq r1, zero, 12
000e58  7a369340  vextracti.s r12, 9(vr6)
000e5c  5b010000  j 8
000e60  7ab69340  vextracti.s r12, 9(vr7)
000e64  9bc08400  srli r1, r9, 8
000e68  9b801000  andi r1, r1, 1
000e6c  3bb00000  bneq r1, zero, 12
000e70  fa368340  vextracti.s r13, 8(vr6)
000e74  5b010000  j 8
000e78  fab68340  vextracti.s r13, 8(vr7)
000e7c  9bc07400  srli r1, r9, 7
000e80  9b801000  andi r1, r1, 1
000e84  3bb00000  bneq r1, zero, 12
000e88  7a377340  vextracti.s r14, 7(vr6)
000e8c  5b010000  j 8
000e90  7ab77340  vextracti.s r14, 7(vr7)
000e94  9bc06400  srli r1, r9, 6
000e98  9b801000  andi r1, r1, 1
000e9c  3bb00000  bneq r1, zero, 12
000ea0  fa376340  vextracti.s r15, 6(vr6)
000ea4  5b010000  j 8
000ea8  fab76340  vextracti.s r15, 6(vr7)
000eac  9bc05400  srli r1, r9, 5
000eb0  9b801000  andi r1, r1, 1
000eb4  3bb00000  bneq r1, zero, 12
000eb8  7a395340  vextracti.s r18, 5(vr6)
000ebc  5b010000  j 8
000ec0  7ab95340  vextracti.s r18, 5(vr7)
000ec4  9bc04400  srli r1, r9, 4
000ec8  9b801000  andi r1, r1, 1
000ecc  3bb00000  bneq r1, zero, 12
000ed0  fa394340  vextracti.s r19, 4(vr6)
000ed4  5b010000  j 8
000ed8  fab94340  vextracti.s r19, 4(vr7)
000edc  9bc03400  srli r1, r9, 3
000ee0  9b801000  andi r1, r1, 1
000ee4  3bb00000  bneq r1, zero, 12
000ee8  fa313340  vextracti.s r3, 3(vr6)
000eec  5b010000  j 8
000ef0  fab13340  vextracti.s r3, 3(vr7)
000ef4  9bc02400  srli r1, r9, 2
000ef8  9b801000  andi r1, r1, 1
000efc  3bb00000  bneq r1, zero, 12
000f00  7a322340  vextracti.s r4, 2(vr6)
000f04  5b010000  j 8
000f08  7ab22340  vextracti.s r4, 2(vr7)
000f0c  9bc01400  srli r1, r9, 1
000f10  9b801000  andi r1, r1, 1
000f14  3be00000  bneq r1, zero, 24
000f18  fa301340  vextracti.s r1, 1(vr6)
000f1c  9b841400  andi r9, r9, 1
000f20  37e00400  beq r9, zero, 24
000f24  fab40340  vextracti.s r9, 0(vr7)
000f28  db020000  j 20
000f2c  fab01340  vextracti.s r1, 1(vr7)
000f30  9b841400  andi r9, r9, 1
000f34  bbcf04fe  bneq r9, zero, -16
000f38  fa340340  vextracti.s r9, 0(vr6)
000f3c  92330002  vadd.s.mz vr7{mr1}, zero, vr0
000f40  e6c10200  vshuffle2.hf vr3, vr5
000f44  eaa37434  vor.u.mh vr7{mr2}, r9, vr7
000f48  9f240000  addli r9, zero, 2
000f4c  36930102  vmax.f.mz vr6{mr1}, vr3, vr0
000f50  7e8004e0  vmmov mr0, r9
000f54  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000f58  9f400000  addli r1, zero, 4
000f5c  eeb160c2  vsrl.s.mz vr3{mr1}, vr1, vr6
000f60  e61203c0  vabs.f vr5, vr6
000f64  7e8000e0  vmmov mr0, r1
000f68  9f001000  addli r1, zero, 8
000f6c  ea237230  vor.u.mh vr7{mr0}, r4, vr7
000f70  7e8000e0  vmmov mr0, r1
000f74  9f002000  addli r1, zero, 16
000f78  ea313b02  vand.s.mz vr3{mr1}, r22, vr3
000f7c  eaa37130  vor.u.mh vr7{mr0}, r3, vr7
000f80  7e8000e0  vmmov mr0, r1
000f84  9f004000  addli r1, zero, 32
000f88  96313302  vadd.s.mz vr3{mr1}, vr6, vr3
000f8c  aba1aaaa  lui r3, 699050
000f90  6ab36822  vor.s.mz vr6{mr1}, r17, vr6
000f94  9fa15115  addli r3, r3, 2730
000f98  eaa37930  vor.u.mh vr7{mr0}, r19, vr7
000f9c  7e8000e0  vmmov mr0, r1
000fa0  9f008000  addli r1, zero, 64
000fa4  ea237930  vor.u.mh vr7{mr0}, r18, vr7
000fa8  7e8000e0  vmmov mr0, r1
000fac  9f000001  addli r1, zero, 128
000fb0  eaa37730  vor.u.mh vr7{mr0}, r15, vr7
000fb4  7e8000e0  vmmov mr0, r1
000fb8  9f000002  addli r1, zero, 256
000fbc  ea237730  vor.u.mh vr7{mr0}, r14, vr7
000fc0  7e8000e0  vmmov mr0, r1
000fc4  9f000004  addli r1, zero, 512
000fc8  eaa37630  vor.u.mh vr7{mr0}, r13, vr7
000fcc  7e8000e0  vmmov mr0, r1
000fd0  9f000008  addli r1, zero, 1024
000fd4  ea237630  vor.u.mh vr7{mr0}, r12, vr7
000fd8  7e8000e0  vmmov mr0, r1
000fdc  9f000010  addli r1, zero, 2048
000fe0  eaa37530  vor.u.mh vr7{mr0}, r11, vr7
000fe4  7e8000e0  vmmov mr0, r1
000fe8  9f000020  addli r1, zero, 4096
000fec  ea237530  vor.u.mh vr7{mr0}, r10, vr7
000ff0  7e8000e0  vmmov mr0, r1
000ff4  9f000040  addli r1, zero, 8192
000ff8  ea237430  vor.u.mh vr7{mr0}, r8, vr7
000ffc  7e8000e0  vmmov mr0, r1
001000  ab400000  lui r1, 4
001004  eaa37330  vor.u.mh vr7{mr0}, r7, vr7
001008  7e8000e0  vmmov mr0, r1
00100c  ab800000  lui r1, 8
001010  eaa37a30  vor.u.mh vr7{mr0}, r21, vr7
001014  76205142  vlt.u.mz mr0{mr1}, vr2, vr5
001018  92b23d02  vadd.s.mz vr5{mr1}, r27, vr3
00101c  7e0400a0  vmmov r8, mr0
001020  7e8000e0  vmmov mr0, r1
001024  9b40f400  srli r1, r8, 15
001028  ea237a30  vor.u.mh vr7{mr0}, r20, vr7
00102c  9b801000  andi r1, r1, 1
001030  7e8001e0  vmmov mr0, r3
001034  46007810  vstore.mh vr7{mr0}, 0(r16)
001038  3bb00000  bneq r1, zero, 12
00103c  7abaf240  vextracti.s r20, 15(vr5)
001040  5b010000  j 8
001044  7a3af340  vextracti.s r20, 15(vr6)
001048  9b40e400  srli r1, r8, 14
00104c  9b801000  andi r1, r1, 1
001050  3bb00000  bneq r1, zero, 12
001054  fabae240  vextracti.s r21, 14(vr5)
001058  5b010000  j 8
00105c  fa3ae340  vextracti.s r21, 14(vr6)
001060  9b40d400  srli r1, r8, 13
001064  9b801000  andi r1, r1, 1
001068  3bb00000  bneq r1, zero, 12
00106c  fab3d240  vextracti.s r7, 13(vr5)
001070  5b010000  j 8
001074  fa33d340  vextracti.s r7, 13(vr6)
001078  9b40c400  srli r1, r8, 12
00107c  9b801000  andi r1, r1, 1
001080  3bb00000  bneq r1, zero, 12
001084  fab4c240  vextracti.s r9, 12(vr5)
001088  5b010000  j 8
00108c  fa34c340  vextracti.s r9, 12(vr6)
001090  9b40b400  srli r1, r8, 11
001094  9b801000  andi r1, r1, 1
001098  3bb00000  bneq r1, zero, 12
00109c  7ab5b240  vextracti.s r10, 11(vr5)
0010a0  5b010000  j 8
0010a4  7a35b340  vextracti.s r10, 11(vr6)
0010a8  9b40a400  srli r1, r8, 10
0010ac  9b801000  andi r1, r1, 1
0010b0  3bb00000  bneq r1, zero, 12
0010b4  fab5a240  vextracti.s r11, 10(vr5)
0010b8  5b010000  j 8
0010bc  fa35a340  vextracti.s r11, 10(vr6)
0010c0  9b409400  srli r1, r8, 9
0010c4  9b801000  andi r1, r1, 1
0010c8  3bb00000  bneq r1, zero, 12
0010cc  7ab69240  vextracti.s r12, 9(vr5)
0010d0  5b010000  j 8
0010d4  7a369340  vextracti.s r12, 9(vr6)
0010d8  9b408400  srli r1, r8, 8
0010dc  9b801000  andi r1, r1, 1
0010e0  3bb00000  bneq r1, zero, 12
0010e4  fab68240  vextracti.s r13, 8(vr5)
0010e8  5b010000  j 8
0010ec  fa368340  vextracti.s r13, 8(vr6)
0010f0  9b407400  srli r1, r8, 7
0010f4  9b801000  andi r1, r1, 1
0010f8  3bb00000  bneq r1, zero, 12
0010fc  7ab77240  vextracti.s r14, 7(vr5)
001100  5b010000  j 8
001104  7a377340  vextracti.s r14, 7(vr6)
001108  9b406400  srli r1, r8, 6
00110c  9b801000  andi r1, r1, 1
001110  3bb00000  bneq r1, zero, 12
001114  fab76240  vextracti.s r15, 6(vr5)
001118  5b010000  j 8
00111c  fa376340  vextracti.s r15, 6(vr6)
001120  9b405400  srli r1, r8, 5
001124  9b801000  andi r1, r1, 1
001128  3bb00000  bneq r1, zero, 12
00112c  7ab95240  vextracti.s r18, 5(vr5)
001130  5b010000  j 8
001134  7a395340  vextracti.s r18, 5(vr6)
001138  9b404400  srli r1, r8, 4
00113c  9b801000  andi r1, r1, 1
001140  3bb00000  bneq r1, zero, 12
001144  fab94240  vextracti.s r19, 4(vr5)
001148  5b010000  j 8
00114c  fa394340  vextracti.s r19, 4(vr6)
001150  9b403400  srli r1, r8, 3
001154  9b801000  andi r1, r1, 1
001158  3bb00000  bneq r1, zero, 12
00115c  fab13240  vextracti.s r3, 3(vr5)
001160  5b010000  j 8
001164  fa313340  vextracti.s r3, 3(vr6)
001168  9b402400  srli r1, r8, 2
00116c  9b801000  andi r1, r1, 1
001170  3bb00000  bneq r1, zero, 12
001174  7ab22240  vextracti.s r4, 2(vr5)
001178  5b010000  j 8
00117c  7a322340  vextracti.s r4, 2(vr6)
001180  9b401400  srli r1, r8, 1
001184  9b801000  andi r1, r1, 1
001188  3be00000  bneq r1, zero, 24
00118c  fab01240  vextracti.s r1, 1(vr5)
001190  1b041400  andi r8, r8, 1
001194  37600400  beq r8, zero, 24
001198  7a340340  vextracti.s r8, 0(vr6)
00119c  db020000  j 20
0011a0  fa301340  vextracti.s r1, 1(vr6)
0011a4  1b041400  andi r8, r8, 1
0011a8  bb4f04fe  bneq r8, zero, -16
0011ac  7ab40240  vextracti.s r8, 0(vr5)
0011b0  92320002  vadd.s.mz vr5{mr1}, zero, vr0
0011b4  36130202  vmax.f.mz vr6{mr1}, vr4, vr0
0011b8  ea225434  vor.u.mh vr5{mr2}, r8, vr5
0011bc  1f240000  addli r8, zero, 2
0011c0  eeb160c2  vsrl.s.mz vr3{mr1}, vr1, vr6
0011c4  661203c0  vabs.f vr4, vr6
0011c8  7e0004e0  vmmov mr0, r8
0011cc  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0011d0  9f400000  addli r1, zero, 4
0011d4  ea313b02  vand.s.mz vr3{mr1}, r22, vr3
0011d8  7e8000e0  vmmov mr0, r1
0011dc  9f001000  addli r1, zero, 8
0011e0  ea225230  vor.u.mh vr5{mr0}, r4, vr5
0011e4  7e8000e0  vmmov mr0, r1
0011e8  9f002000  addli r1, zero, 16
0011ec  96313302  vadd.s.mz vr3{mr1}, vr6, vr3
0011f0  eaa25130  vor.u.mh vr5{mr0}, r3, vr5
0011f4  7e8000e0  vmmov mr0, r1
0011f8  9f004000  addli r1, zero, 32
0011fc  eaa25930  vor.u.mh vr5{mr0}, r19, vr5
001200  7e8000e0  vmmov mr0, r1
001204  9f008000  addli r1, zero, 64
001208  ea225930  vor.u.mh vr5{mr0}, r18, vr5
00120c  7e8000e0  vmmov mr0, r1
001210  9f000001  addli r1, zero, 128
001214  eaa25730  vor.u.mh vr5{mr0}, r15, vr5
001218  7e8000e0  vmmov mr0, r1
00121c  9f000002  addli r1, zero, 256
001220  ea225730  vor.u.mh vr5{mr0}, r14, vr5
001224  7e8000e0  vmmov mr0, r1
001228  9f000004  addli r1, zero, 512
00122c  eaa25630  vor.u.mh vr5{mr0}, r13, vr5
001230  7e8000e0  vmmov mr0, r1
001234  9f000008  addli r1, zero, 1024
001238  ea225630  vor.u.mh vr5{mr0}, r12, vr5
00123c  7e8000e0  vmmov mr0, r1
001240  9f000010  addli r1, zero, 2048
001244  eaa25530  vor.u.mh vr5{mr0}, r11, vr5
001248  7e8000e0  vmmov mr0, r1
00124c  9f000020  addli r1, zero, 4096
001250  ea225530  vor.u.mh vr5{mr0}, r10, vr5
001254  7e8000e0  vmmov mr0, r1
001258  9f000040  addli r1, zero, 8192
00125c  eaa25430  vor.u.mh vr5{mr0}, r9, vr5
001260  7e8000e0  vmmov mr0, r1
001264  ab400000  lui r1, 4
001268  eaa25330  vor.u.mh vr5{mr0}, r7, vr5
00126c  7e8000e0  vmmov mr0, r1
001270  ab800000  lui r1, 8
001274  eaa25a30  vor.u.mh vr5{mr0}, r21, vr5
001278  7e8000e0  vmmov mr0, r1
00127c  ea225a30  vor.u.mh vr5{mr0}, r20, vr5
001280  76204142  vlt.u.mz mr0{mr1}, vr2, vr4
001284  12b23d02  vadd.s.mz vr4{mr1}, r27, vr3
001288  fe0400a0  vmmov r9, mr0
00128c  7e8001c0  vmmov mr0, mr3
001290  9bc0f400  srli r1, r9, 15
001294  ea715dc0  vsrl.p vr3, r26, vr5
001298  eab26822  vor.s.mz vr5{mr1}, r17, vr6
00129c  9b801000  andi r1, r1, 1
0012a0  46003810  vstore.mh vr3{mr0}, 0(r16)
0012a4  3bb00000  bneq r1, zero, 12
0012a8  7a38f240  vextracti.s r16, 15(vr4)
0012ac  5b010000  j 8
0012b0  7ab8f240  vextracti.s r16, 15(vr5)
0012b4  9bc0e400  srli r1, r9, 14
0012b8  9b801000  andi r1, r1, 1
0012bc  3bb00000  bneq r1, zero, 12
0012c0  7a3ae240  vextracti.s r20, 14(vr4)
0012c4  5b010000  j 8
0012c8  7abae240  vextracti.s r20, 14(vr5)
0012cc  9bc0d400  srli r1, r9, 13
0012d0  9b801000  andi r1, r1, 1
0012d4  3bb00000  bneq r1, zero, 12
0012d8  fa33d240  vextracti.s r7, 13(vr4)
0012dc  5b010000  j 8
0012e0  fab3d240  vextracti.s r7, 13(vr5)
0012e4  9bc0c400  srli r1, r9, 12
0012e8  9b801000  andi r1, r1, 1
0012ec  3bb00000  bneq r1, zero, 12
0012f0  7a34c240  vextracti.s r8, 12(vr4)
0012f4  5b010000  j 8
0012f8  7ab4c240  vextracti.s r8, 12(vr5)
0012fc  9bc0b400  srli r1, r9, 11
001300  9b801000  andi r1, r1, 1
001304  3bb00000  bneq r1, zero, 12
001308  7a35b240  vextracti.s r10, 11(vr4)
00130c  5b010000  j 8
001310  7ab5b240  vextracti.s r10, 11(vr5)
001314  9bc0a400  srli r1, r9, 10
001318  9b801000  andi r1, r1, 1
00131c  3bb00000  bneq r1, zero, 12
001320  fa35a240  vextracti.s r11, 10(vr4)
001324  5b010000  j 8
001328  fab5a240  vextracti.s r11, 10(vr5)
00132c  9bc09400  srli r1, r9, 9
001330  9b801000  andi r1, r1, 1
001334  3bb00000  bneq r1, zero, 12
001338  7a369240  vextracti.s r12, 9(vr4)
00133c  5b010000  j 8
001340  7ab69240  vextracti.s r12, 9(vr5)
001344  9bc08400  srli r1, r9, 8
001348  9b801000  andi r1, r1, 1
00134c  3bb00000  bneq r1, zero, 12
001350  fa368240  vextracti.s r13, 8(vr4)
001354  5b010000  j 8
001358  fab68240  vextracti.s r13, 8(vr5)
00135c  9bc07400  srli r1, r9, 7
001360  9b801000  andi r1, r1, 1
001364  3bb00000  bneq r1, zero, 12
001368  7a377240  vextracti.s r14, 7(vr4)
00136c  5b010000  j 8
001370  7ab77240  vextracti.s r14, 7(vr5)
001374  9bc06400  srli r1, r9, 6
001378  9b801000  andi r1, r1, 1
00137c  3bb00000  bneq r1, zero, 12
001380  fa376240  vextracti.s r15, 6(vr4)
001384  5b010000  j 8
001388  fab76240  vextracti.s r15, 6(vr5)
00138c  9bc05400  srli r1, r9, 5
001390  9b801000  andi r1, r1, 1
001394  3bb00000  bneq r1, zero, 12
001398  7a395240  vextracti.s r18, 5(vr4)
00139c  5b010000  j 8
0013a0  7ab95240  vextracti.s r18, 5(vr5)
0013a4  9bc04400  srli r1, r9, 4
0013a8  9b801000  andi r1, r1, 1
0013ac  3bb00000  bneq r1, zero, 12
0013b0  fa394240  vextracti.s r19, 4(vr4)
0013b4  5b010000  j 8
0013b8  fab94240  vextracti.s r19, 4(vr5)
0013bc  9bc03400  srli r1, r9, 3
0013c0  9b801000  andi r1, r1, 1
0013c4  3bb00000  bneq r1, zero, 12
0013c8  fa313240  vextracti.s r3, 3(vr4)
0013cc  5b010000  j 8
0013d0  fab13240  vextracti.s r3, 3(vr5)
0013d4  9bc02400  srli r1, r9, 2
0013d8  9b801000  andi r1, r1, 1
0013dc  3bb00000  bneq r1, zero, 12
0013e0  7a322240  vextracti.s r4, 2(vr4)
0013e4  5b010000  j 8
0013e8  7ab22240  vextracti.s r4, 2(vr5)
0013ec  9bc01400  srli r1, r9, 1
0013f0  9b801000  andi r1, r1, 1
0013f4  3be00000  bneq r1, zero, 24
0013f8  fa301240  vextracti.s r1, 1(vr4)
0013fc  9b841400  andi r9, r9, 1
001400  37e00400  beq r9, zero, 24
001404  fab40240  vextracti.s r9, 0(vr5)
001408  db020000  j 20
00140c  fab01240  vextracti.s r1, 1(vr5)
001410  9b841400  andi r9, r9, 1
001414  bbcf04fe  bneq r9, zero, -16
001418  fa340240  vextracti.s r9, 0(vr4)
00141c  92320002  vadd.s.mz vr5{mr1}, zero, vr0
001420  eaa25434  vor.u.mh vr5{mr2}, r9, vr5
001424  9f240000  addli r9, zero, 2
001428  7e8004e0  vmmov mr0, r9
00142c  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001430  9f400000  addli r1, zero, 4
001434  7e8000e0  vmmov mr0, r1
001438  9f001000  addli r1, zero, 8
00143c  ea225230  vor.u.mh vr5{mr0}, r4, vr5
001440  7e8000e0  vmmov mr0, r1
001444  9f002000  addli r1, zero, 16
001448  eaa25130  vor.u.mh vr5{mr0}, r3, vr5
00144c  7e8000e0  vmmov mr0, r1
001450  9f004000  addli r1, zero, 32
001454  aba1aaaa  lui r3, 699050
001458  9fa15115  addli r3, r3, 2730
00145c  eaa25930  vor.u.mh vr5{mr0}, r19, vr5
001460  7e8000e0  vmmov mr0, r1
001464  9f008000  addli r1, zero, 64
001468  ea225930  vor.u.mh vr5{mr0}, r18, vr5
00146c  7e8000e0  vmmov mr0, r1
001470  9f000001  addli r1, zero, 128
001474  eaa25730  vor.u.mh vr5{mr0}, r15, vr5
001478  7e8000e0  vmmov mr0, r1
00147c  9f000002  addli r1, zero, 256
001480  ea225730  vor.u.mh vr5{mr0}, r14, vr5
001484  7e8000e0  vmmov mr0, r1
001488  9f000004  addli r1, zero, 512
00148c  eaa25630  vor.u.mh vr5{mr0}, r13, vr5
001490  7e8000e0  vmmov mr0, r1
001494  9f008fef  addli r1, r30, -2112
001498  ea225630  vor.u.mh vr5{mr0}, r12, vr5
00149c  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0014a0  9f000008  addli r1, zero, 1024
0014a4  7e8000e0  vmmov mr0, r1
0014a8  9f000010  addli r1, zero, 2048
0014ac  eaa25530  vor.u.mh vr5{mr0}, r11, vr5
0014b0  7e8000e0  vmmov mr0, r1
0014b4  9f000020  addli r1, zero, 4096
0014b8  e6c10100  vshuffle2.hf vr3, vr3
0014bc  ea225530  vor.u.mh vr5{mr0}, r10, vr5
0014c0  7e8000e0  vmmov mr0, r1
0014c4  9f000040  addli r1, zero, 8192
0014c8  36920102  vmax.f.mz vr4{mr1}, vr3, vr0
0014cc  ea225430  vor.u.mh vr5{mr0}, r8, vr5
0014d0  7e8000e0  vmmov mr0, r1
0014d4  ab400000  lui r1, 4
0014d8  eeb140c2  vsrl.s.mz vr3{mr1}, vr1, vr4
0014dc  661302c0  vabs.f vr6, vr4
0014e0  eaa25330  vor.u.mh vr5{mr0}, r7, vr5
0014e4  7e8000e0  vmmov mr0, r1
0014e8  ab800000  lui r1, 8
0014ec  ea313b02  vand.s.mz vr3{mr1}, r22, vr3
0014f0  ea225a30  vor.u.mh vr5{mr0}, r20, vr5
0014f4  76206142  vlt.u.mz mr0{mr1}, vr2, vr6
0014f8  7e0400a0  vmmov r8, mr0
0014fc  7e8000e0  vmmov mr0, r1
001500  96313202  vadd.s.mz vr3{mr1}, vr4, vr3
001504  9b40f400  srli r1, r8, 15
001508  6ab24822  vor.s.mz vr4{mr1}, r17, vr4
00150c  ea225830  vor.u.mh vr5{mr0}, r16, vr5
001510  9b801000  andi r1, r1, 1
001514  7e8001e0  vmmov mr0, r3
001518  92b13d02  vadd.s.mz vr3{mr1}, r27, vr3
00151c  46005310  vstore.mh vr5{mr0}, 0(r6)
001520  3bb00000  bneq r1, zero, 12
001524  7ab8f140  vextracti.s r16, 15(vr3)
001528  5b010000  j 8
00152c  7a38f240  vextracti.s r16, 15(vr4)
001530  9b40e400  srli r1, r8, 14
001534  7e8101c0  vmmov mr2, mr3
001538  9b801000  andi r1, r1, 1
00153c  3bb00000  bneq r1, zero, 12
001540  7abae140  vextracti.s r20, 14(vr3)
001544  5b010000  j 8
001548  7a3ae240  vextracti.s r20, 14(vr4)
00154c  9b40d400  srli r1, r8, 13
001550  9b801000  andi r1, r1, 1
001554  3bb00000  bneq r1, zero, 12
001558  fab3d140  vextracti.s r7, 13(vr3)
00155c  5b010000  j 8
001560  fa33d240  vextracti.s r7, 13(vr4)
001564  9b40c400  srli r1, r8, 12
001568  9b801000  andi r1, r1, 1
00156c  3bb00000  bneq r1, zero, 12
001570  fab4c140  vextracti.s r9, 12(vr3)
001574  5b010000  j 8
001578  fa34c240  vextracti.s r9, 12(vr4)
00157c  9b40b400  srli r1, r8, 11
001580  9b801000  andi r1, r1, 1
001584  3bb00000  bneq r1, zero, 12
001588  7ab5b140  vextracti.s r10, 11(vr3)
00158c  5b010000  j 8
001590  7a35b240  vextracti.s r10, 11(vr4)
001594  9b40a400  srli r1, r8, 10
001598  9b801000  andi r1, r1, 1
00159c  3bb00000  bneq r1, zero, 12
0015a0  fab5a140  vextracti.s r11, 10(vr3)
0015a4  5b010000  j 8
0015a8  fa35a240  vextracti.s r11, 10(vr4)
0015ac  9b409400  srli r1, r8, 9
0015b0  9b801000  andi r1, r1, 1
0015b4  3bb00000  bneq r1, zero, 12
0015b8  7ab69140  vextracti.s r12, 9(vr3)
0015bc  5b010000  j 8
0015c0  7a369240  vextracti.s r12, 9(vr4)
0015c4  9b408400  srli r1, r8, 8
0015c8  9b801000  andi r1, r1, 1
0015cc  3bb00000  bneq r1, zero, 12
0015d0  fab68140  vextracti.s r13, 8(vr3)
0015d4  5b010000  j 8
0015d8  fa368240  vextracti.s r13, 8(vr4)
0015dc  9b407400  srli r1, r8, 7
0015e0  9b801000  andi r1, r1, 1
0015e4  3bb00000  bneq r1, zero, 12
0015e8  7ab77140  vextracti.s r14, 7(vr3)
0015ec  5b010000  j 8
0015f0  7a377240  vextracti.s r14, 7(vr4)
0015f4  9b406400  srli r1, r8, 6
0015f8  9b801000  andi r1, r1, 1
0015fc  3bb00000  bneq r1, zero, 12
001600  fab76140  vextracti.s r15, 6(vr3)
001604  5b010000  j 8
001608  fa376240  vextracti.s r15, 6(vr4)
00160c  9b405400  srli r1, r8, 5
001610  9b801000  andi r1, r1, 1
001614  3bb00000  bneq r1, zero, 12
001618  7ab95140  vextracti.s r18, 5(vr3)
00161c  5b010000  j 8
001620  7a395240  vextracti.s r18, 5(vr4)
001624  9b404400  srli r1, r8, 4
001628  9b801000  andi r1, r1, 1
00162c  3bb00000  bneq r1, zero, 12
001630  fab94140  vextracti.s r19, 4(vr3)
001634  5b010000  j 8
001638  fa394240  vextracti.s r19, 4(vr4)
00163c  9b403400  srli r1, r8, 3
001640  9b801000  andi r1, r1, 1
001644  3bb00000  bneq r1, zero, 12
001648  fab13140  vextracti.s r3, 3(vr3)
00164c  5b010000  j 8
001650  fa313240  vextracti.s r3, 3(vr4)
001654  9b402400  srli r1, r8, 2
001658  9b801000  andi r1, r1, 1
00165c  3bb00000  bneq r1, zero, 12
001660  7ab22140  vextracti.s r4, 2(vr3)
001664  5b010000  j 8
001668  7a322240  vextracti.s r4, 2(vr4)
00166c  9b401400  srli r1, r8, 1
001670  9b801000  andi r1, r1, 1
001674  3bd00000  bneq r1, zero, 20
001678  fab01140  vextracti.s r1, 1(vr3)
00167c  1b041400  andi r8, r8, 1
001680  b73004f6  beq r8, zero, -5076
001684  5b020000  j 16
001688  fa301240  vextracti.s r1, 1(vr4)
00168c  1b041400  andi r8, r8, 1
001690  377004f6  beq r8, zero, -5092
001694  7a340240  vextracti.s r8, 0(vr4)
001698  5b83fdff  j -5096
00169c  9f0e8fee  addli sp, r30, -2240
0016a0  9f8e8e11  addli sp, sp, 2240
0016a4  00a00300  mfence { lm, sm, gm }
0016a8  00100000  exit
0016ac  00100000  exit
0016b0  00100000  exit
0016b4  00100000  exit
0016b8  00100000  exit
0016bc  00100000  exit
0016c0  00100000  exit
0016c4  00100000  exit
0016c8  00100000  exit
0016cc  00100000  exit
0016d0  00100000  exit
0016d4  00100000  exit
0016d8  00100000  exit
0016dc  00100000  exit
0016e0  00100000  exit
0016e4  00100000  exit
0016e8  00100000  exit
0016ec  00100000  exit
0016f0  00100000  exit
0016f4  00100000  exit
0016f8  00100000  exit
0016fc  00100000  exit
001700  00100000  exit
001704  00100000  exit
001708  00100000  exit
00170c  00100000  exit
001710  00100000  exit
001714  00100000  exit
001718  00100000  exit
00171c  00100000  exit
001720  00100000  exit
001724  00100000  exit
001728  00100000  exit
00172c  00100000  exit
001730  00100000  exit
001734  00100000  exit
001738  00100000  exit
00173c  00100000  exit
001740  00100000  exit
001744  00100000  exit
001748  00100000  exit
00174c  00100000  exit
001750  00100000  exit
001754  00100000  exit
001758  00100000  exit
00175c  00100000  exit
001760  00100000  exit
001764  00100000  exit
001768  00100000  exit
00176c  00100000  exit
001770  00100000  exit
001774  00100000  exit
001778  00100000  exit
00177c  00100000  exit
001780  00100000  exit
001784  00100000  exit
001788  00100000  exit
00178c  00100000  exit
001790  00100000  exit
001794  00100000  exit
001798  00100000  exit
00179c  00100000  exit
0017a0  00100000  exit
0017a4  00100000  exit
0017a8  00100000  exit
0017ac  00100000  exit
0017b0  00100000  exit
0017b4  00100000  exit
0017b8  00100000  exit
0017bc  00100000  exit
0017c0  00100000  exit
0017c4  00100000  exit
0017c8  00100000  exit
0017cc  00100000  exit
0017d0  00100000  exit
0017d4  00100000  exit
0017d8  00100000  exit
0017dc  00100000  exit
0017e0  00100000  exit
0017e4  00100000  exit
0017e8  00100000  exit
0017ec  00100000  exit
0017f0  00100000  exit
0017f4  00100000  exit
0017f8  00100000  exit
0017fc  00100000  exit
001800  00100000  exit
001804  00100000  exit
001808  00100000  exit
00180c  00100000  exit
001810  00100000  exit
001814  00100000  exit
001818  00100000  exit
00181c  00100000  exit
001820  00100000  exit
001824  00100000  exit
001828  00100000  exit
00182c  00100000  exit
001830  00100000  exit
001834  00100000  exit
001838  00100000  exit
00183c  00100000  exit
001840  00100000  exit
001844  00100000  exit
001848  00100000  exit
00184c  00100000  exit
001850  00100000  exit
001854  00100000  exit
001858  00100000  exit
00185c  00100000  exit
001860  00100000  exit
001864  00100000  exit
001868  00100000  exit
00186c  00100000  exit
001870  00100000  exit
001874  00100000  exit
001878  00100000  exit
00187c  00100000  exit
001880  00100000  exit
001884  00100000  exit
001888  00100000  exit
00188c  00100000  exit
001890  00100000  exit
001894  00100000  exit
001898  00100000  exit
00189c  00100000  exit
0018a0  00100000  exit
0018a4  00100000  exit
0018a8  00100000  exit
0018ac  00100000  exit
0018b0  00100000  exit
0018b4  00100000  exit
0018b8  00100000  exit
0018bc  00100000  exit
0018c0  00100000  exit
0018c4  00100000  exit
0018c8  00100000  exit
0018cc  00100000  exit
0018d0  00100000  exit
0018d4  00100000  exit
0018d8  00100000  exit
0018dc  00100000  exit
0018e0  00100000  exit
0018e4  00100000  exit
0018e8  00100000  exit
