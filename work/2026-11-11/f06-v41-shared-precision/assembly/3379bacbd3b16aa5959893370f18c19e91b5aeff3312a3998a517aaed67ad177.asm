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
0000dc  9f8e0eff  addli sp, sp, -128
0000e0  1f8f8e00  addli r30, sp, 64
0000e4  805a0002  load_param_i r21, 0
0000e8  e3493f00  loadli.w r19,  28(r30)
0000ec  e3003f00  loadli.w r1,  24(r30)
0000f0  630a4f00  loadli.w r20,  32(r30)
0000f4  8b901920  mul.s r1, r19, r1
0000f8  0b9b4021  mul.s r22, r1, r20
0000fc  4b115b01  ble.s r22, r21, 68
000100  80db0002  load_param_i r23, 1
000104  1f3c0000  addli r24, zero, 3
000108  9f0c0001  addli r25, zero, 128
00010c  1f0d0008  addli r26, zero, 1024
000110  8b904a31  div.s r1, r21, r20
000114  6b510f00  load.d r[3:4], 0(r30)
000118  6b528f00  load.d r[5:6], 8(r30)
00011c  6b530f01  load.d r[7:8], 16(r30)
000120  ab040800  lui r9, 128
000124  e7808e01  storeli.w r24, 8(sp)
000128  67c09e01  storeli.w r25, 4(sp)
00012c  6780ae01  storeli.w r26, 0(sp)
000130  0b943031  div.s r8, r1, r19
000134  d74a0000  jal 596
000138  8b9a7a11  add.s r21, r21, r23
00013c  3fdf6aff  blt.s r21, r22, -44
000140  9f8e8e00  addli sp, sp, 64
000144  00a00300  mfence { lm, sm, gm }
000148  00100000  exit
00014c  9f8efeff  addli sp, sp, -8
000150  9f100000  addli r1, zero, 1
000154  67c0ee01  storeli.w r30, 4(sp)
000158  6780fe01  storeli.w r31, 0(sp)
00015c  1f8f1e00  addli r30, sp, 8
000160  bf831100  blt.s r3, r1, 224
000164  9f002100  addli r1, r2, 16
000168  2b010080  lui r2, 524288
00016c  2b02803f  lui r4, 260096
000170  9f020000  addli r5, zero, 0
000174  e383e0ff  loadli.w r7,  -16(r1)
000178  63c4e0ff  loadli.w r8,  -12(r1)
00017c  6383f0ff  loadli.w r6,  -8(r1)
000180  63c5f0ff  loadli.w r10,  -4(r1)
000184  63c71000  loadli.w r14,  12(r1)
000188  e3850000  loadli.w r11,  0(r1)
00018c  e3c60000  loadli.w r13,  4(r1)
000190  9f821200  addli r5, r5, 8
000194  97a42300  xor r9, r7, r2
000198  17262400  xor r12, r8, r2
00019c  97272300  xor r15, r6, r2
0001a0  17282500  xor r16, r10, r2
0001a4  17292700  xor r18, r14, r2
0001a8  8f840400  exp.f.rn r9, r9
0001ac  0f060600  exp.f.rn r12, r12
0001b0  8f870700  exp.f.rn r15, r15
0001b4  0f090900  exp.f.rn r18, r18
0001b8  8be44410  add.f.rn r9, r9, r4
0001bc  0b664610  add.f.rn r12, r12, r4
0001c0  0b694910  add.f.rn r18, r18, r4
0001c4  8f839318  div.f.rn r7, r7, r9
0001c8  e3841000  loadli.w r9,  8(r1)
0001cc  0f04c418  div.f.rn r8, r8, r12
0001d0  0f060800  exp.f.rn r12, r16
0001d4  17a82600  xor r16, r13, r2
0001d8  0f080800  exp.f.rn r16, r16
0001dc  0b664610  add.f.rn r12, r12, r4
0001e0  0b684810  add.f.rn r16, r16, r4
0001e4  97a82400  xor r17, r9, r2
0001e8  8f880800  exp.f.rn r17, r17
0001ec  8be84810  add.f.rn r17, r17, r4
0001f0  678f70fe  storeli.w r7, -16(r1)
0001f4  8be34710  add.f.rn r7, r15, r4
0001f8  97a72500  xor r15, r11, r2
0001fc  67cf80fe  storeli.w r8, -12(r1)
000200  8f870700  exp.f.rn r15, r15
000204  8be74710  add.f.rn r15, r15, r4
000208  8f841419  div.f.rn r9, r9, r17
00020c  0f037318  div.f.rn r6, r6, r7
000210  8f03c518  div.f.rn r7, r10, r12
000214  0f062719  div.f.rn r12, r14, r18
000218  0f85f518  div.f.rn r10, r11, r15
00021c  8f850619  div.f.rn r11, r13, r16
000220  e7809000  storeli.w r9, 8(r1)
000224  e78f60fe  storeli.w r6, -8(r1)
000228  e7cf70fe  storeli.w r7, -4(r1)
00022c  e7c0c000  storeli.w r12, 12(r1)
000230  6780a000  storeli.w r10, 0(r1)
000234  67c0b000  storeli.w r11, 4(r1)
000238  9f804000  addli r1, r1, 32
00023c  bfec32fe  blt.s r5, r3, -200
000240  00a00000  mfence { lm }
000244  e38f0e00  loadli.w r31,  0(sp)
000248  63cf0e00  loadli.w r30,  4(sp)
00024c  9f8e1e00  addli sp, sp, 8
000250  5f800f00  jr r31, 0
000254  9f8e8ed2  addli sp, sp, -5824
000258  67c9ee2d  storeli.w r30, 5780(sp)
00025c  1f8f8e2d  addli r30, sp, 5824
000260  00350002  core_id r10
000264  e78b4e2d  storeli.w r20, 5816(sp)
000268  e7cb3e2d  storeli.w r19, 5820(sp)
00026c  67cb5e2d  storeli.w r21, 5812(sp)
000270  678b6e2d  storeli.w r22, 5808(sp)
000274  e7ca7e2d  storeli.w r23, 5804(sp)
000278  e78a8e2d  storeli.w r24, 5800(sp)
00027c  67ca9e2d  storeli.w r25, 5796(sp)
000280  678aae2d  storeli.w r26, 5792(sp)
000284  e7c9be2d  storeli.w r27, 5788(sp)
000288  e789ce2d  storeli.w r28, 5784(sp)
00028c  6789fe2d  storeli.w r31, 5776(sp)
000290  9f003fd4  addli r1, r30, -5608
000294  634a0f00  loadli.w r20,  4(r30)
000298  73b06000  store.d r[7:8], 0(r1)
00029c  80500102  load_param_i r1, 2
0002a0  0b958050  fmac.s r10, r1, r8
0002a4  8b174521  mul.s r15, r10, r20
0002a8  4baff402  ble.s r9, r15, 1992
0002ac  63040f00  loadli.w r8,  0(r30)
0002b0  63470f00  loadli.w r14,  4(r30)
0002b4  9f1b0000  addli r23, zero, 1
0002b8  2b0500f0  lui r10, 983040
0002bc  9f068fe7  addli r13, r30, -3136
0002c0  630b1f00  loadli.w r22,  8(r30)
0002c4  eea49462  vxor.u.mz vr9{mr1}, vr9, vr9
0002c8  ab0dffff  lui r27, 1048560
0002cc  2b0d0080  lui r26, 524288
0002d0  2b09fc42  lui r18, 274368
0002d4  2b0c803f  lui r24, 260096
0002d8  2b0800c0  lui r16, 786432
0002dc  ab03003f  lui r7, 258048
0002e0  8b958738  mod.s r11, r15, r8
0002e4  8b101720  mul.s r1, r14, r1
0002e8  1f441000  addli r8, zero, 12
0002ec  1b371700  slli r14, r14, 1
0002f0  0b938020  mul.s r6, r1, r8
0002f4  9710a700  or r1, r14, r10
0002f8  2b04404b  lui r8, 308224
0002fc  67416fd4  storeli.w r6, -5612(r30)
000300  b3950528  sext_int2long r[12:13], r11
000304  97b57503  sll.d r[12:13], r[12:13], r23
000308  0b22b210  add.ul r[5:6], r[5:6], r[12:13]
00030c  b3950728  sext_int2long r[12:13], r15
000310  ff20d200  l_gm2lm r1, r13, 0(r[5:6])
000314  17b57503  sll.d r[11:12], r[12:13], r23
000318  ab0000f0  lui r1, 983040
00031c  1f068fef  addli r12, r30, -2112
000320  9f360000  addli r13, zero, 3
000324  0b22a110  add.ul r[5:6], r[3:4], r[11:12]
000328  97101700  or r1, r14, r1
00032c  33150328  sext_int2long r[11:12], r6
000330  1f230000  addli r6, zero, 2
000334  ff20c200  l_gm2lm r1, r12, 0(r[5:6])
000338  17327503  sll.d r[5:6], r[11:12], r23
00033c  00a00200  mfence { lm, gm }
000340  e7409fd4  storeli.w r9, -5620(r30)
000344  e700efd4  storeli.w r14, -5624(r30)
000348  8b204110  add.ul r[2:3], r[3:4], r[5:6]
00034c  9f010fd4  addli r3, r30, -5632
000350  73b01100  store.d r[2:3], 0(r3)
000354  9f002000  addli r1, zero, 16
000358  2b41cc3f  lui r2, 261316
00035c  9f010000  addli r3, zero, 0
000360  6aa59022  vor.u.mz vr10{mr1}, r1, vr9
000364  ab700000  lui r1, 7
000368  9b15a122  ori r11, r2, 554
00036c  2bc1ae3a  lui r2, 240364
000370  1b9ef0ff  ori r28, r1, 4095
000374  ab20373d  lui r1, 250738
000378  e707bfd2  storeli.w r11, -5768(r30)
00037c  1b953071  ori r10, r1, 1811
000380  aba0b8bf  lui r1, 785290
000384  9b98b0a3  ori r17, r1, 2619
000388  ab00fcc2  lui r1, 798656
00038c  e747afd2  storeli.w r10, -5764(r30)
000390  6aa09022  vor.u.mz vr0{mr1}, r1, vr9
000394  9f000fd7  addli r1, r30, -5248
000398  67471fd3  storeli.w r17, -5772(r30)
00039c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0003a0  9f702000  addli r1, zero, 23
0003a4  6aa09022  vor.u.mz vr0{mr1}, r1, vr9
0003a8  9f008fd6  addli r1, r30, -5312
0003ac  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0003b0  9b10f13f  ori r1, r2, 1023
0003b4  2b812139  lui r2, 234008
0003b8  6a909022  vor.f.mz vr0{mr1}, r1, vr9
0003bc  9f000fd6  addli r1, r30, -5376
0003c0  9b1c9148  ori r25, r2, 1161
0003c4  2bf1753e  lui r2, 255839
0003c8  1b1101df  ori r2, r2, 3568
0003cc  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0003d0  ab901d3c  lui r1, 246233
0003d4  9b90b055  ori r1, r1, 1371
0003d8  6a909022  vor.f.mz vr0{mr1}, r1, vr9
0003dc  9f008fd5  addli r1, r30, -5440
0003e0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0003e4  ab50633d  lui r1, 251445
0003e8  9b907084  ori r1, r1, 2119
0003ec  6a909022  vor.f.mz vr0{mr1}, r1, vr9
0003f0  9f000fd5  addli r1, r30, -5504
0003f4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0003f8  6a109122  vor.f.mz vr0{mr1}, r2, vr9
0003fc  9f008fd4  addli r1, r30, -5568
000400  2b11f37e  lui r2, 519985
000404  9b1a311c  ori r21, r2, 451
000408  2bf1ffff  lui r2, 1048575
00040c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000410  ab70313f  lui r1, 258839
000414  9b998021  ori r19, r1, 536
000418  ab70b142  lui r1, 273175
00041c  9b908021  ori r1, r1, 536
000420  e7431fd4  storeli.w r1, -5572(r30)
000424  9b10f1ff  ori r1, r2, 4095
000428  2ba1b83f  lui r2, 261002
00042c  e7031fd4  storeli.w r1, -5576(r30)
000430  ab703142  lui r1, 271127
000434  9b908021  ori r1, r1, 536
000438  67431fd4  storeli.w r1, -5580(r30)
00043c  9b10b1a3  ori r1, r2, 2619
000440  67031fd4  storeli.w r1, -5584(r30)
000444  9f008fd3  addli r1, r30, -5696
000448  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
00044c  9f000fd3  addli r1, r30, -5760
000450  4690a002  vstore_mask16.mz vr10{mr1}, 0(r1)
000454  db100000  j 132
000458  9f008fd3  addli r1, r30, -5696
00045c  00a00000  mfence { lm }
000460  1f068fef  addli r12, r30, -2112
000464  9f360000  addli r13, zero, 3
000468  2b09fc42  lui r18, 274368
00046c  2b04404b  lui r8, 308224
000470  2b0800c0  lui r16, 786432
000474  ab03003f  lui r7, 258048
000478  1f230000  addli r6, zero, 2
00047c  e3441fd4  loadli.w r9,  -5620(r30)
000480  e3072fd4  loadli.w r15,  -5616(r30)
000484  63071fd4  loadli.w r14,  -5624(r30)
000488  6345ffd2  loadli.w r10,  -5764(r30)
00048c  e305ffd2  loadli.w r11,  -5768(r30)
000490  e348efd2  loadli.w r17,  -5772(r30)
000494  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000498  9f014fd4  addli r3, r30, -5600
00049c  1f003fd4  addli zero, r30, -5608
0004a0  ebd00100  load.d r[2:3], 0(r3)
0004a4  6b520000  load.d r[5:6], 0(zero)
0004a8  ab0100f0  lui r3, 983040
0004ac  17200000  xor zero, zero, zero
0004b0  97113700  or r3, r14, r3
0004b4  97b07003  sll.d r[2:3], r[2:3], r23
0004b8  8b201210  add.ul r[2:3], r[5:6], r[2:3]
0004bc  63025fd4  loadli.w r4,  -5592(r30)
0004c0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0004c4  00a00200  mfence { lm, gm }
0004c8  e3415fd4  loadli.w r3,  -5588(r30)
0004cc  9ba11100  xori r3, r3, 1
0004d0  3fa09700  blt.s r15, r9, 8
0004d4  dbb30000  j 1436
0004d8  63412fd4  loadli.w r2,  -5612(r30)
0004dc  9f800700  addli r1, r15, 0
0004e0  1f024fd4  addli r4, r30, -5600
0004e4  e7423fd4  storeli.w r3, -5588(r30)
0004e8  8b972010  add.s r15, r1, r2
0004ec  b3900028  sext_int2long r[2:3], r1
0004f0  73301200  store.d r[2:3], 0(r4)
0004f4  4b81f400  ble.s r9, r15, 64
0004f8  9f014fd4  addli r3, r30, -5600
0004fc  1f000fd4  addli zero, r30, -5632
000500  ebd00100  load.d r[2:3], 0(r3)
000504  e3415fd4  loadli.w r3,  -5588(r30)
000508  6b520000  load.d r[5:6], 0(zero)
00050c  17200000  xor zero, zero, zero
000510  97b07003  sll.d r[2:3], r[2:3], r23
000514  9ba11100  xori r3, r3, 1
000518  9bb1a100  slli r3, r3, 10
00051c  8b201210  add.ul r[2:3], r[5:6], r[2:3]
000520  2b0200f0  lui r4, 983040
000524  8b113610  add.s r3, r12, r3
000528  17124700  or r4, r14, r4
00052c  7fa23000  l_gm2lm r4, r3, 0(r[2:3])
000530  e3415fd4  loadli.w r3,  -5588(r30)
000534  9bb0a100  slli r1, r3, 10
000538  8b101610  add.s r1, r12, r1
00053c  e7021fd4  storeli.w r1, -5592(r30)
000540  bf427a03  blt.s r20, r23, 1200
000544  63025fd4  loadli.w r4,  -5592(r30)
000548  9f000000  addli r1, zero, 0
00054c  1f018fd7  addli r2, r30, -5184
000550  9f018fe7  addli r3, r30, -3136
000554  5b0b0000  j 88
000558  1a110d02  vsub.f.mz.rn vr2{mr1}, r26, vr0
00055c  72112042  vlt.f.mz mr2{mr1}, zero, vr2
000560  6a209034  vor.u.mh vr0{mr2}, zero, vr9
000564  6e3115c2  vsrl.s.mz vr2{mr1}, vr10, vr1
000568  ee3105c2  vsrl.s.mz vr3{mr1}, vr10, vr0
00056c  6ab12b02  vand.s.mz vr2{mr1}, r23, vr2
000570  eab13b02  vand.s.mz vr3{mr1}, r23, vr3
000574  96b02002  vadd.s.mz vr1{mr1}, vr1, vr2
000578  16303002  vadd.s.mz vr0{mr1}, vr0, vr3
00057c  92301e02  vadd.s.mz vr1{mr1}, r28, vr1
000580  12300e02  vadd.s.mz vr0{mr1}, r28, vr0
000584  ee3015c2  vsrl.s.mz vr1{mr1}, vr10, vr1
000588  6ab00d02  vand.s.mz vr0{mr1}, r27, vr0
00058c  6e301022  vor.s.mz vr0{mr1}, vr0, vr1
000590  46000202  vstore.mz vr0{mr1}, 0(r4)
000594  9f804000  addli r1, r1, 32
000598  1f010101  addli r2, r2, 128
00059c  9f818100  addli r3, r3, 64
0005a0  1f028200  addli r4, r4, 64
0005a4  3fa04001  blt.s r1, r20, 8
0005a8  5b890000  j 1096
0005ac  c2800102  vload.mz vr1{mr1}, 0(r3)
0005b0  42000202  vload.mz vr0{mr1}, 0(r4)
0005b4  6e3105a2  vsll.s.mz vr2{mr1}, vr10, vr0
0005b8  6ab00d02  vand.s.mz vr0{mr1}, r27, vr0
0005bc  6ab21d02  vand.s.mz vr4{mr1}, r27, vr1
0005c0  ee3115a2  vsll.s.mz vr3{mr1}, vr10, vr1
0005c4  96103102  vadd.f.mz.rn vr1{mr1}, vr2, vr3
0005c8  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
0005cc  b7340b00  beq r22, zero, 300
0005d0  37607b01  beq r22, r23, 24
0005d4  bb206b00  bneq r22, r6, 40
0005d8  9f028100  addli r5, r2, 64
0005dc  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
0005e0  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
0005e4  5bf6ffff  j -80
0005e8  1a111d02  vsub.f.mz.rn vr2{mr1}, r26, vr1
0005ec  72112042  vlt.f.mz mr2{mr1}, zero, vr2
0005f0  ea209034  vor.u.mh vr1{mr2}, zero, vr9
0005f4  3b240b00  bneq r22, zero, 264
0005f8  dbedffff  j -148
0005fc  3730db00  beq r22, r13, 12
000600  12321002  vadd.s.mz vr4{mr1}, zero, vr1
000604  5b030000  j 24
000608  0a111502  vmul.f.mz.rn vr2{mr1}, r10, vr1
00060c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
000610  0e912002  vmul.f.mz.rn vr2{mr1}, vr1, vr2
000614  a6912102  vmac.f.mz.rn vr3{mr1}, vr3, vr2
000618  0a923502  vmul.f.mz.rn vr4{mr1}, r11, vr3
00061c  661102c0  vabs.f vr2, vr4
000620  9f020fd7  addli r5, r30, -5248
000624  0a912802  vmul.f.mz.rn vr2{mr1}, r17, vr2
000628  9a112d02  vsub.f.mz.rn vr3{mr1}, r26, vr2
00062c  72113942  vlt.f.mz mr2{mr1}, r18, vr3
000630  c2910202  vload_mask16.mz vr3{mr1}, 0(r5)
000634  ab0240cb  lui r5, 832512
000638  6a213034  vor.u.mh vr2{mr2}, zero, vr3
00063c  92122402  vadd.f.mz.rn vr5{mr1}, r8, vr2
000640  92915202  vadd.f.mz.rn vr3{mr1}, r5, vr5
000644  9f020fd6  addli r5, r30, -5376
000648  1e133102  vsub.f.mz.rn vr6{mr1}, vr2, vr3
00064c  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
000650  9f028fd5  addli r5, r30, -5440
000654  c2910202  vload_mask16.mz vr3{mr1}, 0(r5)
000658  9f020fd5  addli r5, r30, -5504
00065c  22916c02  vmac.f.mz.rn vr2{mr1}, r25, vr6
000660  a6116102  vmac.f.mz.rn vr3{mr1}, vr2, vr6
000664  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
000668  9f028fd4  addli r5, r30, -5568
00066c  c2930202  vload_mask16.mz vr7{mr1}, 0(r5)
000670  9f028fd6  addli r5, r30, -5312
000674  c2950202  vload_mask16.mz vr11{mr1}, 0(r5)
000678  26916102  vmac.f.mz.rn vr2{mr1}, vr3, vr6
00067c  ea919922  vor.f.mz vr3{mr1}, r19, vr9
000680  a6136102  vmac.f.mz.rn vr7{mr1}, vr2, vr6
000684  12343002  vadd.s.mz vr8{mr1}, zero, vr3
000688  6a119c22  vor.f.mz vr2{mr1}, r24, vr9
00068c  eeb255a2  vsll.s.mz vr5{mr1}, vr11, vr5
000690  26946302  vmac.f.mz.rn vr8{mr1}, vr7, vr6
000694  92332002  vadd.s.mz vr7{mr1}, zero, vr2
000698  92325c02  vadd.s.mz vr5{mr1}, r24, vr5
00069c  a6136402  vmac.f.mz.rn vr7{mr1}, vr8, vr6
0006a0  12342002  vadd.s.mz vr8{mr1}, zero, vr2
0006a4  0e935302  vmul.f.mz.rn vr6{mr1}, vr7, vr5
0006a8  6a239034  vor.u.mh vr6{mr2}, zero, vr9
0006ac  92136c02  vadd.f.mz.rn vr7{mr1}, r24, vr6
0006b0  9ab27a02  vsub.s.mz vr5{mr1}, r21, vr7
0006b4  9a137d02  vsub.f.mz.rn vr7{mr1}, r26, vr7
0006b8  26945302  vmac.f.mz.rn vr8{mr1}, vr7, vr5
0006bc  a6928202  vmac.f.mz.rn vr5{mr1}, vr5, vr8
0006c0  12342002  vadd.s.mz vr8{mr1}, zero, vr2
0006c4  26945302  vmac.f.mz.rn vr8{mr1}, vr7, vr5
0006c8  a6928202  vmac.f.mz.rn vr5{mr1}, vr5, vr8
0006cc  12342002  vadd.s.mz vr8{mr1}, zero, vr2
0006d0  26945302  vmac.f.mz.rn vr8{mr1}, vr7, vr5
0006d4  a6928202  vmac.f.mz.rn vr5{mr1}, vr5, vr8
0006d8  0e936202  vmul.f.mz.rn vr6{mr1}, vr5, vr6
0006dc  bb40db00  bneq r22, r13, 48
0006e0  22116802  vmac.f.mz.rn vr2{mr1}, r16, vr6
0006e4  ea314d02  vand.s.mz vr3{mr1}, r26, vr4
0006e8  6eb12122  vor.s.mz vr2{mr1}, vr3, vr2
0006ec  12112c02  vadd.f.mz.rn vr2{mr1}, r24, vr2
0006f0  0a912302  vmul.f.mz.rn vr2{mr1}, r7, vr2
0006f4  8e902002  vmul.f.mz.rn vr1{mr1}, vr1, vr2
0006f8  b7390bfe  beq r22, zero, -404
0006fc  37797bff  beq r22, r23, -420
000700  b743db00  beq r22, r13, 240
000704  12320002  vadd.s.mz vr4{mr1}, zero, vr0
000708  db1f0000  j 252
00070c  1a124d02  vsub.f.mz.rn vr4{mr1}, r26, vr4
000710  9a131d02  vsub.f.mz.rn vr7{mr1}, r26, vr1
000714  ab02ae42  lui r5, 273120
000718  f2114042  vlt.f.mz mr3{mr1}, zero, vr4
00071c  72917242  vlt.f.mz mr2{mr1}, r5, vr7
000720  ea226036  vor.u.mh vr5{mr3}, zero, vr6
000724  e3427fd4  loadli.w r5,  -5572(r30)
000728  63047fd4  loadli.w r8,  -5576(r30)
00072c  f2917242  vlt.f.mz mr3{mr1}, r5, vr7
000730  fe8201a0  vmmov r5, mr3
000734  0e925002  vmul.f.mz.rn vr4{mr1}, vr1, vr5
000738  97a28200  xor r5, r5, r8
00073c  7e0401a0  vmmov r8, mr2
000740  97828200  and r5, r5, r8
000744  37aa0200  beq r5, zero, 648
000748  63436fd4  loadli.w r6,  -5580(r30)
00074c  2b04404b  lui r8, 308224
000750  ab0340cb  lui r7, 832512
000754  92121302  vadd.f.mz.rn vr5{mr1}, r6, vr1
000758  63036fd4  loadli.w r6,  -5584(r30)
00075c  8a125302  vmul.f.mz.rn vr5{mr1}, r6, vr5
000760  1f030fd7  addli r6, r30, -5248
000764  1a135d02  vsub.f.mz.rn vr6{mr1}, r26, vr5
000768  72116942  vlt.f.mz mr2{mr1}, r18, vr6
00076c  42130302  vload_mask16.mz vr6{mr1}, 0(r6)
000770  1f030fd6  addli r6, r30, -5376
000774  ea226034  vor.u.mh vr5{mr2}, zero, vr6
000778  12135402  vadd.f.mz.rn vr6{mr1}, r8, vr5
00077c  92936302  vadd.f.mz.rn vr7{mr1}, r7, vr6
000780  ab03003f  lui r7, 258048
000784  9e927202  vsub.f.mz.rn vr5{mr1}, vr5, vr7
000788  c2130302  vload_mask16.mz vr7{mr1}, 0(r6)
00078c  1f038fd5  addli r6, r30, -5440
000790  42140302  vload_mask16.mz vr8{mr1}, 0(r6)
000794  1f030fd5  addli r6, r30, -5504
000798  a2935c02  vmac.f.mz.rn vr7{mr1}, r25, vr5
00079c  26945302  vmac.f.mz.rn vr8{mr1}, vr7, vr5
0007a0  c2130302  vload_mask16.mz vr7{mr1}, 0(r6)
0007a4  1f038fd4  addli r6, r30, -5568
0007a8  a6135402  vmac.f.mz.rn vr7{mr1}, vr8, vr5
0007ac  42140302  vload_mask16.mz vr8{mr1}, 0(r6)
0007b0  1f038fd6  addli r6, r30, -5312
0007b4  26945302  vmac.f.mz.rn vr8{mr1}, vr7, vr5
0007b8  c2130302  vload_mask16.mz vr7{mr1}, 0(r6)
0007bc  2b03801f  lui r6, 129024
0007c0  a6115402  vmac.f.mz.rn vr3{mr1}, vr8, vr5
0007c4  6eb363a2  vsll.s.mz vr6{mr1}, vr7, vr6
0007c8  26915102  vmac.f.mz.rn vr2{mr1}, vr3, vr5
0007cc  92316c02  vadd.s.mz vr3{mr1}, r24, vr6
0007d0  0e113102  vmul.f.mz.rn vr2{mr1}, vr2, vr3
0007d4  8a111302  vmul.f.mz.rn vr3{mr1}, r6, vr1
0007d8  1f230000  addli r6, zero, 2
0007dc  6a219034  vor.u.mh vr2{mr2}, zero, vr9
0007e0  7e8102e0  vmmov mr2, r5
0007e4  0e912102  vmul.f.mz.rn vr2{mr1}, vr3, vr2
0007e8  6a222034  vor.u.mh vr4{mr2}, zero, vr2
0007ec  db3c0000  j 484
0007f0  0a110502  vmul.f.mz.rn vr2{mr1}, r10, vr0
0007f4  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0007f8  0e112002  vmul.f.mz.rn vr2{mr1}, vr0, vr2
0007fc  a6912102  vmac.f.mz.rn vr3{mr1}, vr3, vr2
000800  0a923502  vmul.f.mz.rn vr4{mr1}, r11, vr3
000804  661102c0  vabs.f vr2, vr4
000808  9f020fd7  addli r5, r30, -5248
00080c  0a912802  vmul.f.mz.rn vr2{mr1}, r17, vr2
000810  9a112d02  vsub.f.mz.rn vr3{mr1}, r26, vr2
000814  72113942  vlt.f.mz mr2{mr1}, r18, vr3
000818  c2910202  vload_mask16.mz vr3{mr1}, 0(r5)
00081c  ab0240cb  lui r5, 832512
000820  6a213034  vor.u.mh vr2{mr2}, zero, vr3
000824  92122402  vadd.f.mz.rn vr5{mr1}, r8, vr2
000828  92915202  vadd.f.mz.rn vr3{mr1}, r5, vr5
00082c  9f020fd6  addli r5, r30, -5376
000830  1e133102  vsub.f.mz.rn vr6{mr1}, vr2, vr3
000834  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
000838  9f028fd5  addli r5, r30, -5440
00083c  c2910202  vload_mask16.mz vr3{mr1}, 0(r5)
000840  9f020fd5  addli r5, r30, -5504
000844  22916c02  vmac.f.mz.rn vr2{mr1}, r25, vr6
000848  a6116102  vmac.f.mz.rn vr3{mr1}, vr2, vr6
00084c  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
000850  9f028fd4  addli r5, r30, -5568
000854  c2930202  vload_mask16.mz vr7{mr1}, 0(r5)
000858  9f028fd6  addli r5, r30, -5312
00085c  c2950202  vload_mask16.mz vr11{mr1}, 0(r5)
000860  26916102  vmac.f.mz.rn vr2{mr1}, vr3, vr6
000864  ea919922  vor.f.mz vr3{mr1}, r19, vr9
000868  a6136102  vmac.f.mz.rn vr7{mr1}, vr2, vr6
00086c  12343002  vadd.s.mz vr8{mr1}, zero, vr3
000870  6a119c22  vor.f.mz vr2{mr1}, r24, vr9
000874  eeb255a2  vsll.s.mz vr5{mr1}, vr11, vr5
000878  26946302  vmac.f.mz.rn vr8{mr1}, vr7, vr6
00087c  92332002  vadd.s.mz vr7{mr1}, zero, vr2
000880  92325c02  vadd.s.mz vr5{mr1}, r24, vr5
000884  a6136402  vmac.f.mz.rn vr7{mr1}, vr8, vr6
000888  12342002  vadd.s.mz vr8{mr1}, zero, vr2
00088c  0e935302  vmul.f.mz.rn vr6{mr1}, vr7, vr5
000890  6a239034  vor.u.mh vr6{mr2}, zero, vr9
000894  92136c02  vadd.f.mz.rn vr7{mr1}, r24, vr6
000898  9ab27a02  vsub.s.mz vr5{mr1}, r21, vr7
00089c  9a137d02  vsub.f.mz.rn vr7{mr1}, r26, vr7
0008a0  26945302  vmac.f.mz.rn vr8{mr1}, vr7, vr5
0008a4  a6928202  vmac.f.mz.rn vr5{mr1}, vr5, vr8
0008a8  12342002  vadd.s.mz vr8{mr1}, zero, vr2
0008ac  26945302  vmac.f.mz.rn vr8{mr1}, vr7, vr5
0008b0  a6928202  vmac.f.mz.rn vr5{mr1}, vr5, vr8
0008b4  12342002  vadd.s.mz vr8{mr1}, zero, vr2
0008b8  26945302  vmac.f.mz.rn vr8{mr1}, vr7, vr5
0008bc  a6928202  vmac.f.mz.rn vr5{mr1}, vr5, vr8
0008c0  bb10db00  bneq r22, r13, 36
0008c4  8e916202  vmul.f.mz.rn vr3{mr1}, vr5, vr6
0008c8  22113802  vmac.f.mz.rn vr2{mr1}, r16, vr3
0008cc  ea314d02  vand.s.mz vr3{mr1}, r26, vr4
0008d0  6eb12122  vor.s.mz vr2{mr1}, vr3, vr2
0008d4  12112c02  vadd.f.mz.rn vr2{mr1}, r24, vr2
0008d8  0a912302  vmul.f.mz.rn vr2{mr1}, r7, vr2
0008dc  0e102002  vmul.f.mz.rn vr0{mr1}, vr0, vr2
0008e0  db90ffff  j -892
0008e4  1a124d02  vsub.f.mz.rn vr4{mr1}, r26, vr4
0008e8  9a130d02  vsub.f.mz.rn vr7{mr1}, r26, vr0
0008ec  0e936202  vmul.f.mz.rn vr6{mr1}, vr5, vr6
0008f0  ab02ae42  lui r5, 273120
0008f4  f2114042  vlt.f.mz mr3{mr1}, zero, vr4
0008f8  72917242  vlt.f.mz mr2{mr1}, r5, vr7
0008fc  ea226036  vor.u.mh vr5{mr3}, zero, vr6
000900  e3427fd4  loadli.w r5,  -5572(r30)
000904  63047fd4  loadli.w r8,  -5576(r30)
000908  f2917242  vlt.f.mz mr3{mr1}, r5, vr7
00090c  fe8201a0  vmmov r5, mr3
000910  0e125002  vmul.f.mz.rn vr4{mr1}, vr0, vr5
000914  97a28200  xor r5, r5, r8
000918  7e0401a0  vmmov r8, mr2
00091c  97828200  and r5, r5, r8
000920  37830200  beq r5, zero, 192
000924  63436fd4  loadli.w r6,  -5580(r30)
000928  2b04404b  lui r8, 308224
00092c  2b0840cb  lui r16, 832512
000930  92120302  vadd.f.mz.rn vr5{mr1}, r6, vr0
000934  63036fd4  loadli.w r6,  -5584(r30)
000938  8a125302  vmul.f.mz.rn vr5{mr1}, r6, vr5
00093c  1f030fd7  addli r6, r30, -5248
000940  1a135d02  vsub.f.mz.rn vr6{mr1}, r26, vr5
000944  72116942  vlt.f.mz mr2{mr1}, r18, vr6
000948  42130302  vload_mask16.mz vr6{mr1}, 0(r6)
00094c  1f030fd6  addli r6, r30, -5376
000950  ea226034  vor.u.mh vr5{mr2}, zero, vr6
000954  12135402  vadd.f.mz.rn vr6{mr1}, r8, vr5
000958  92136802  vadd.f.mz.rn vr7{mr1}, r16, vr6
00095c  2b0800c0  lui r16, 786432
000960  9e927202  vsub.f.mz.rn vr5{mr1}, vr5, vr7
000964  c2130302  vload_mask16.mz vr7{mr1}, 0(r6)
000968  1f038fd5  addli r6, r30, -5440
00096c  42140302  vload_mask16.mz vr8{mr1}, 0(r6)
000970  1f030fd5  addli r6, r30, -5504
000974  a2935c02  vmac.f.mz.rn vr7{mr1}, r25, vr5
000978  26945302  vmac.f.mz.rn vr8{mr1}, vr7, vr5
00097c  c2130302  vload_mask16.mz vr7{mr1}, 0(r6)
000980  1f038fd4  addli r6, r30, -5568
000984  a6135402  vmac.f.mz.rn vr7{mr1}, vr8, vr5
000988  42140302  vload_mask16.mz vr8{mr1}, 0(r6)
00098c  1f038fd6  addli r6, r30, -5312
000990  26945302  vmac.f.mz.rn vr8{mr1}, vr7, vr5
000994  c2130302  vload_mask16.mz vr7{mr1}, 0(r6)
000998  2b03801f  lui r6, 129024
00099c  a6115402  vmac.f.mz.rn vr3{mr1}, vr8, vr5
0009a0  6eb363a2  vsll.s.mz vr6{mr1}, vr7, vr6
0009a4  26915102  vmac.f.mz.rn vr2{mr1}, vr3, vr5
0009a8  92316c02  vadd.s.mz vr3{mr1}, r24, vr6
0009ac  0e113102  vmul.f.mz.rn vr2{mr1}, vr2, vr3
0009b0  8a110302  vmul.f.mz.rn vr3{mr1}, r6, vr0
0009b4  1f230000  addli r6, zero, 2
0009b8  6a219034  vor.u.mh vr2{mr2}, zero, vr9
0009bc  7e8102e0  vmmov mr2, r5
0009c0  0e912102  vmul.f.mz.rn vr2{mr1}, vr3, vr2
0009c4  6a222034  vor.u.mh vr4{mr2}, zero, vr2
0009c8  db030000  j 28
0009cc  2b04404b  lui r8, 308224
0009d0  ea301d02  vand.s.mz vr1{mr1}, r26, vr1
0009d4  eeb04022  vor.s.mz vr1{mr1}, vr1, vr4
0009d8  bb140bfe  bneq r22, zero, -732
0009dc  5b71ffff  j -1144
0009e0  2b04404b  lui r8, 308224
0009e4  6a300d02  vand.s.mz vr0{mr1}, r26, vr0
0009e8  6e304022  vor.s.mz vr0{mr1}, vr0, vr4
0009ec  5b6fffff  j -1160
0009f0  00a00000  mfence { lm }
0009f4  bb1a6bfc  bneq r22, r6, -1372
0009f8  1f018fd7  addli r2, r30, -5184
0009fc  9f010a00  addli r3, r20, 0
000a00  6701ffd4  storeli.w r15, -5616(r30)
000a04  d7290000  jal 332
000a08  9f000fd3  addli r1, r30, -5760
000a0c  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000a10  3f297afd  blt.s r20, r23, -1464
000a14  e3015fd4  loadli.w r3,  -5592(r30)
000a18  9f000000  addli r1, zero, 0
000a1c  1f018fd7  addli r2, r30, -5184
000a20  1f028100  addli r4, r2, 64
000a24  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
000a28  9f804000  addli r1, r1, 32
000a2c  1f010101  addli r2, r2, 128
000a30  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
000a34  6e3105c2  vsrl.s.mz vr2{mr1}, vr10, vr0
000a38  ee3115c2  vsrl.s.mz vr3{mr1}, vr10, vr1
000a3c  6ab12b02  vand.s.mz vr2{mr1}, r23, vr2
000a40  eab13b02  vand.s.mz vr3{mr1}, r23, vr3
000a44  16302002  vadd.s.mz vr0{mr1}, vr0, vr2
000a48  96b03002  vadd.s.mz vr1{mr1}, vr1, vr3
000a4c  12300e02  vadd.s.mz vr0{mr1}, r28, vr0
000a50  92301e02  vadd.s.mz vr1{mr1}, r28, vr1
000a54  6e3005c2  vsrl.s.mz vr0{mr1}, vr10, vr0
000a58  eab01d02  vand.s.mz vr1{mr1}, r27, vr1
000a5c  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
000a60  46800102  vstore.mz vr0{mr1}, 0(r3)
000a64  9f818100  addli r3, r3, 64
000a68  bfee40ff  blt.s r1, r20, -72
000a6c  db3dffff  j -1556
000a70  9f0e8fd2  addli sp, r30, -5824
000a74  e38f2e2d  loadli.w r31,  5776(sp)
000a78  63cf2e2d  loadli.w r30,  5780(sp)
000a7c  638e3e2d  loadli.w r28,  5784(sp)
000a80  e3cd3e2d  loadli.w r27,  5788(sp)
000a84  638d4e2d  loadli.w r26,  5792(sp)
000a88  e3cc4e2d  loadli.w r25,  5796(sp)
000a8c  638c5e2d  loadli.w r24,  5800(sp)
000a90  e3cb5e2d  loadli.w r23,  5804(sp)
000a94  638b6e2d  loadli.w r22,  5808(sp)
000a98  e3ca6e2d  loadli.w r21,  5812(sp)
000a9c  638a7e2d  loadli.w r20,  5816(sp)
000aa0  e3c97e2d  loadli.w r19,  5820(sp)
000aa4  9f8e8e2d  addli sp, sp, 5824
000aa8  5f800f00  jr r31, 0
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
