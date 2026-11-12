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
0000dc  9f8e8eee  addli sp, sp, -2240
0000e0  1f8f0e11  addli r30, sp, 2176
0000e4  63412f00  loadli.w r2,  20(r30)
0000e8  e3002f00  loadli.w r1,  16(r30)
0000ec  e3013f00  loadli.w r3,  24(r30)
0000f0  8b101120  mul.s r1, r2, r1
0000f4  00510002  load_param_i r2, 0
0000f8  8b903020  mul.s r1, r1, r3
0000fc  e74a1fee  storeli.w r1, -2132(r30)
000100  cbbf200c  ble.s r1, r2, 7148
000104  80300002  core_id r1
000108  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00010c  2b08807f  lui r16, 522240
000110  80d10002  load_param_i r3, 1
000114  ab0880ff  lui r17, 1046528
000118  eeb01062  vxor.s.mz vr1{mr1}, vr1, vr1
00011c  9bb07000  slli r1, r1, 7
000120  ea110822  vor.f.mz vr3{mr1}, r16, vr0
000124  e70a3fee  storeli.w r3, -2136(r30)
000128  674a1fee  storeli.w r1, -2140(r30)
00012c  abf0ff7f  lui r1, 524287
000130  1b99f0ff  ori r18, r1, 4095
000134  ab00c07f  lui r1, 523264
000138  6a910022  vor.f.mz vr2{mr1}, r1, vr0
00013c  9f008fef  addli r1, r30, -2112
000140  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
000144  9f000ff0  addli r1, r30, -2048
000148  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00014c  db090000  j 76
000150  1f026fef  addli r4, r30, -2128
000154  9f100000  addli r1, zero, 1
000158  6b510200  load.d r[3:4], 0(r4)
00015c  6b528f00  load.d r[5:6], 8(r30)
000160  97301102  sll.d r[2:3], r[3:4], r1
000164  ab0100f0  lui r3, 983040
000168  8b201210  add.ul r[2:3], r[5:6], r[2:3]
00016c  1f020002  addli r4, zero, 256
000170  97113200  or r3, r4, r3
000174  1f020ffc  addli r4, r30, -512
000178  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00017c  63417fef  loadli.w r2,  -2116(r30)
000180  e3005fef  loadli.w r1,  -2136(r30)
000184  00a00000  mfence { lm }
000188  0b111110  add.s r2, r2, r1
00018c  e3405fef  loadli.w r1,  -2132(r30)
000190  3f201100  blt.s r2, r1, 8
000194  5b6b0300  j 7000
000198  e3003f00  loadli.w r1,  24(r30)
00019c  e74b2fee  storeli.w r2, -2116(r30)
0001a0  1f026fef  addli r4, r30, -2128
0001a4  8b101130  div.s r1, r2, r1
0001a8  63412f00  loadli.w r2,  20(r30)
0001ac  8b902030  div.s r1, r1, r2
0001b0  63414fef  loadli.w r2,  -2140(r30)
0001b4  9bb0d000  slli r1, r1, 13
0001b8  8b902010  add.s r1, r1, r2
0001bc  33910028  sext_int2long r[3:4], r1
0001c0  9f200000  addli r1, zero, 2
0001c4  73302200  store.d r[3:4], 0(r4)
0001c8  6b520f00  load.d r[5:6], 0(r30)
0001cc  97301102  sll.d r[2:3], r[3:4], r1
0001d0  ab0100f0  lui r3, 983040
0001d4  8b201210  add.ul r[2:3], r[5:6], r[2:3]
0001d8  1f020004  addli r4, zero, 512
0001dc  97113200  or r3, r4, r3
0001e0  1f020ff4  addli r4, r30, -1536
0001e4  ffa14000  l_gm2lm r3, r4, 0(r[2:3])
0001e8  1f110000  addli r2, zero, 1
0001ec  9f010000  addli r3, zero, 0
0001f0  00a00000  mfence { lm }
0001f4  5b620000  j 784
0001f8  9bb71700  slli r15, r15, 1
0001fc  1b372700  slli r14, r14, 2
000200  9bb63600  slli r13, r13, 3
000204  9bb54500  slli r11, r11, 4
000208  1b355500  slli r10, r10, 5
00020c  9bb31300  slli r7, r7, 1
000210  9bb46400  slli r9, r9, 6
000214  1b332300  slli r6, r6, 2
000218  1b347400  slli r8, r8, 7
00021c  1b323200  slli r4, r4, 3
000220  1b318100  slli r2, r2, 8
000224  9bb14100  slli r3, r3, 4
000228  9bb05000  slli r1, r1, 5
00022c  97995901  or r19, r19, r21
000230  1796c700  or r12, r15, r12
000234  97925300  or r5, r7, r5
000238  1716e600  or r12, r12, r14
00023c  97926200  or r5, r5, r6
000240  1bb39d00  slli r6, r27, 9
000244  1716d600  or r12, r12, r13
000248  17924200  or r4, r5, r4
00024c  9bb2ac00  slli r5, r25, 10
000250  9715b600  or r11, r12, r11
000254  97113200  or r3, r4, r3
000258  6342eff1  loadli.w r4,  -1804(r30)
00025c  1795a500  or r10, r11, r10
000260  97901100  or r1, r3, r1
000264  e341fff1  loadli.w r3,  -1796(r30)
000268  9f058fef  addli r11, r30, -2112
00026c  1b32b200  slli r4, r4, 11
000270  97149500  or r9, r10, r9
000274  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
000278  9bb1c100  slli r3, r3, 12
00027c  17948400  or r8, r9, r8
000280  17112400  or r2, r8, r2
000284  17116100  or r2, r2, r6
000288  ee920034  vor.f.mh vr5{mr2}, vr1, vr0
00028c  6e930030  vor.f.mh vr6{mr0}, vr1, vr0
000290  6e920036  vor.f.mh vr4{mr3}, vr1, vr0
000294  fe8109e0  vmmov mr3, r19
000298  6e910036  vor.f.mh vr2{mr3}, vr1, vr0
00029c  17115100  or r2, r2, r5
0002a0  17114100  or r2, r2, r4
0002a4  1b326e00  slli r4, r28, 6
0002a8  17113100  or r2, r2, r3
0002ac  e3410ff2  loadli.w r3,  -1788(r30)
0002b0  97904000  or r1, r1, r4
0002b4  1b327d00  slli r4, r26, 7
0002b8  97904000  or r1, r1, r4
0002bc  6342dff1  loadli.w r4,  -1812(r30)
0002c0  9bb1d100  slli r3, r3, 13
0002c4  17113100  or r2, r2, r3
0002c8  e3411ff2  loadli.w r3,  -1780(r30)
0002cc  1b328200  slli r4, r4, 8
0002d0  97904000  or r1, r1, r4
0002d4  6302fff1  loadli.w r4,  -1800(r30)
0002d8  9bb1e100  slli r3, r3, 14
0002dc  17113100  or r2, r2, r3
0002e0  e3012ff2  loadli.w r3,  -1776(r30)
0002e4  1b329200  slli r4, r4, 9
0002e8  97904000  or r1, r1, r4
0002ec  63023ff2  loadli.w r4,  -1768(r30)
0002f0  9bb1f100  slli r3, r3, 15
0002f4  17113100  or r2, r2, r3
0002f8  e3010ff2  loadli.w r3,  -1792(r30)
0002fc  1b322200  slli r4, r4, 2
000300  7e0101e0  vmmov mr2, r2
000304  63011ff2  loadli.w r2,  -1784(r30)
000308  9bb1a100  slli r3, r3, 10
00030c  6e923034  vor.f.mh vr4{mr2}, vr1, vr3
000310  97903000  or r1, r1, r3
000314  e3412ff2  loadli.w r3,  -1772(r30)
000318  1b31b100  slli r2, r2, 11
00031c  97902000  or r1, r1, r2
000320  63413ff2  loadli.w r2,  -1764(r30)
000324  9bb11100  slli r3, r3, 1
000328  17912100  or r2, r3, r2
00032c  e3414ff2  loadli.w r3,  -1756(r30)
000330  17114100  or r2, r2, r4
000334  63024ff2  loadli.w r4,  -1760(r30)
000338  9bb1c100  slli r3, r3, 12
00033c  97903000  or r1, r1, r3
000340  e3015ff2  loadli.w r3,  -1752(r30)
000344  1b323200  slli r4, r4, 3
000348  17114100  or r2, r2, r4
00034c  63023ff3  loadli.w r4,  -1640(r30)
000350  9bb1d100  slli r3, r3, 13
000354  97903000  or r1, r1, r3
000358  e3415ff2  loadli.w r3,  -1748(r30)
00035c  1b324200  slli r4, r4, 4
000360  17114100  or r2, r2, r4
000364  63423ff3  loadli.w r4,  -1636(r30)
000368  9bb1e100  slli r3, r3, 14
00036c  97903000  or r1, r1, r3
000370  e3016ff2  loadli.w r3,  -1744(r30)
000374  1b325200  slli r4, r4, 5
000378  17114100  or r2, r2, r4
00037c  63426ff3  loadli.w r4,  -1612(r30)
000380  9bb1f100  slli r3, r3, 15
000384  97903000  or r1, r1, r3
000388  e3014ff3  loadli.w r3,  -1632(r30)
00038c  7e8000e0  vmmov mr0, r1
000390  9bb16100  slli r3, r3, 6
000394  ee923030  vor.f.mh vr5{mr0}, vr1, vr3
000398  06100200  vfloat2fp16_l.rn vr0, vr4
00039c  06d00200  vfloat2fp16_h.rn vr0, vr5
0003a0  97103100  or r1, r2, r3
0003a4  63414ff3  loadli.w r2,  -1628(r30)
0003a8  e3418ff3  loadli.w r3,  -1596(r30)
0003ac  1b317100  slli r2, r2, 7
0003b0  9bb19100  slli r3, r3, 9
0003b4  97902000  or r1, r1, r2
0003b8  63015ff3  loadli.w r2,  -1624(r30)
0003bc  1b318100  slli r2, r2, 8
0003c0  97902000  or r1, r1, r2
0003c4  63415ff3  loadli.w r2,  -1620(r30)
0003c8  97903000  or r1, r1, r3
0003cc  e3017ff3  loadli.w r3,  -1608(r30)
0003d0  1b311100  slli r2, r2, 1
0003d4  17114100  or r2, r2, r4
0003d8  63026ff3  loadli.w r4,  -1616(r30)
0003dc  9bb13100  slli r3, r3, 3
0003e0  1b322200  slli r4, r4, 2
0003e4  17114100  or r2, r2, r4
0003e8  6342aff3  loadli.w r4,  -1580(r30)
0003ec  17113100  or r2, r2, r3
0003f0  e3417ff3  loadli.w r3,  -1604(r30)
0003f4  1b32a200  slli r4, r4, 10
0003f8  9bb14100  slli r3, r3, 4
0003fc  97904000  or r1, r1, r4
000400  6302cff3  loadli.w r4,  -1568(r30)
000404  17113100  or r2, r2, r3
000408  e3018ff3  loadli.w r3,  -1600(r30)
00040c  1b32b200  slli r4, r4, 11
000410  9bb15100  slli r3, r3, 5
000414  97904000  or r1, r1, r4
000418  6302eff3  loadli.w r4,  -1552(r30)
00041c  17113100  or r2, r2, r3
000420  e3019ff3  loadli.w r3,  -1592(r30)
000424  1b32c200  slli r4, r4, 12
000428  9bb16100  slli r3, r3, 6
00042c  97904000  or r1, r1, r4
000430  6302fff3  loadli.w r4,  -1544(r30)
000434  17113100  or r2, r2, r3
000438  e3419ff3  loadli.w r3,  -1588(r30)
00043c  1b32d200  slli r4, r4, 13
000440  9bb17100  slli r3, r3, 7
000444  97904000  or r1, r1, r4
000448  6342fff3  loadli.w r4,  -1540(r30)
00044c  17113100  or r2, r2, r3
000450  e301aff3  loadli.w r3,  -1584(r30)
000454  1b32e200  slli r4, r4, 14
000458  9bb18100  slli r3, r3, 8
00045c  97904000  or r1, r1, r4
000460  1bb2fb00  slli r4, r23, 15
000464  17113100  or r2, r2, r3
000468  e301bff3  loadli.w r3,  -1576(r30)
00046c  97904000  or r1, r1, r4
000470  7e8000e0  vmmov mr0, r1
000474  9bb19100  slli r3, r3, 9
000478  6e933030  vor.f.mh vr6{mr0}, vr1, vr3
00047c  17113100  or r2, r2, r3
000480  e341bff3  loadli.w r3,  -1572(r30)
000484  9bb1a100  slli r3, r3, 10
000488  17113100  or r2, r2, r3
00048c  e341cff3  loadli.w r3,  -1564(r30)
000490  9bb1b100  slli r3, r3, 11
000494  17113100  or r2, r2, r3
000498  e301dff3  loadli.w r3,  -1560(r30)
00049c  9bb1c100  slli r3, r3, 12
0004a0  17113100  or r2, r2, r3
0004a4  e341dff3  loadli.w r3,  -1556(r30)
0004a8  9bb1d100  slli r3, r3, 13
0004ac  17113100  or r2, r2, r3
0004b0  e341eff3  loadli.w r3,  -1548(r30)
0004b4  9bb1e100  slli r3, r3, 14
0004b8  17113100  or r2, r2, r3
0004bc  9b31fc00  slli r3, r24, 15
0004c0  97103100  or r1, r2, r3
0004c4  1f010ffc  addli r2, r30, -512
0004c8  9f110000  addli r3, zero, 1
0004cc  7e8000e0  vmmov mr0, r1
0004d0  e3409ff1  loadli.w r1,  -1844(r30)
0004d4  6e913030  vor.f.mh vr2{mr0}, vr1, vr3
0004d8  06120300  vfloat2fp16_l.rn vr4, vr6
0004dc  06520100  vfloat2fp16_h.rn vr4, vr2
0004e0  9bb07000  slli r1, r1, 7
0004e4  8b101110  add.s r1, r2, r1
0004e8  1f010000  addli r2, zero, 0
0004ec  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0004f0  46944002  vstore_mask16.mz vr4{mr1}, 64(r1)
0004f4  00a00000  mfence { lm }
0004f8  e300aff1  loadli.w r1,  -1840(r30)
0004fc  9b801000  andi r1, r1, 1
000500  37c100fe  beq r1, zero, -944
000504  670d2ff0  storeli.w r2, -1840(r30)
000508  9bb08100  slli r1, r3, 8
00050c  1f010ff4  addli r2, r30, -1536
000510  e74c3ff0  storeli.w r3, -1844(r30)
000514  1f0a0ffe  addli r20, r30, -256
000518  8b101110  add.s r1, r2, r1
00051c  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
000520  42938002  vload_mask16.mz vr6{mr1}, 64(r1)
000524  c2930003  vload_mask16.mz vr7{mr1}, 128(r1)
000528  42948003  vload_mask16.mz vr8{mr1}, 192(r1)
00052c  46105f82  vstore_mask16.mz vr5{mr1}, 1024(r30)
000530  46146f82  vstore_mask16.mz vr6{mr1}, 1088(r30)
000534  46187f82  vstore_mask16.mz vr7{mr1}, 1152(r30)
000538  461c8f82  vstore_mask16.mz vr8{mr1}, 1216(r30)
00053c  00a00000  mfence { lm }
000540  1a105002  vsub.f.mz.rn vr0{mr1}, zero, vr5
000544  1a126002  vsub.f.mz.rn vr4{mr1}, zero, vr6
000548  9a147002  vsub.f.mz.rn vr9{mr1}, zero, vr7
00054c  1a158002  vsub.f.mz.rn vr10{mr1}, zero, vr8
000550  e3000ff8  loadli.w r1,  -1024(r30)
000554  e74a1ff0  storeli.w r1, -1876(r30)
000558  e34a0ff8  loadli.w r21,  -1020(r30)
00055c  630b1ff8  loadli.w r22,  -1016(r30)
000560  e34b1ff8  loadli.w r23,  -1012(r30)
000564  630c2ff8  loadli.w r24,  -1008(r30)
000568  e34c2ff8  loadli.w r25,  -1004(r30)
00056c  630d3ff8  loadli.w r26,  -1000(r30)
000570  e34d3ff8  loadli.w r27,  -996(r30)
000574  e3004ff8  loadli.w r1,  -992(r30)
000578  e74f1ff2  storeli.w r1, -1540(r30)
00057c  e3404ff8  loadli.w r1,  -988(r30)
000580  e70f1ff2  storeli.w r1, -1544(r30)
000584  e3005ff8  loadli.w r1,  -984(r30)
000588  674f1ff2  storeli.w r1, -1548(r30)
00058c  e3405ff8  loadli.w r1,  -980(r30)
000590  670f1ff2  storeli.w r1, -1552(r30)
000594  e3006ff8  loadli.w r1,  -976(r30)
000598  e74e1ff2  storeli.w r1, -1556(r30)
00059c  e3406ff8  loadli.w r1,  -972(r30)
0005a0  e70e1ff2  storeli.w r1, -1560(r30)
0005a4  e3007ff8  loadli.w r1,  -968(r30)
0005a8  674e1ff2  storeli.w r1, -1564(r30)
0005ac  e3407ff8  loadli.w r1,  -964(r30)
0005b0  670e1ff2  storeli.w r1, -1568(r30)
0005b4  e3008ff8  loadli.w r1,  -960(r30)
0005b8  e74b1ff0  storeli.w r1, -1860(r30)
0005bc  e3408ff8  loadli.w r1,  -956(r30)
0005c0  e74d1ff2  storeli.w r1, -1572(r30)
0005c4  e3009ff8  loadli.w r1,  -952(r30)
0005c8  e70d1ff2  storeli.w r1, -1576(r30)
0005cc  e3409ff8  loadli.w r1,  -948(r30)
0005d0  674d1ff2  storeli.w r1, -1580(r30)
0005d4  e300aff8  loadli.w r1,  -944(r30)
0005d8  670d1ff2  storeli.w r1, -1584(r30)
0005dc  e340aff8  loadli.w r1,  -940(r30)
0005e0  e74c1ff2  storeli.w r1, -1588(r30)
0005e4  e300bff8  loadli.w r1,  -936(r30)
0005e8  e70c1ff2  storeli.w r1, -1592(r30)
0005ec  e340bff8  loadli.w r1,  -932(r30)
0005f0  674c1ff2  storeli.w r1, -1596(r30)
0005f4  e300cff8  loadli.w r1,  -928(r30)
0005f8  670c1ff2  storeli.w r1, -1600(r30)
0005fc  e340cff8  loadli.w r1,  -924(r30)
000600  e74b1ff2  storeli.w r1, -1604(r30)
000604  e300dff8  loadli.w r1,  -920(r30)
000608  e70b1ff2  storeli.w r1, -1608(r30)
00060c  e340dff8  loadli.w r1,  -916(r30)
000610  674b1ff2  storeli.w r1, -1612(r30)
000614  e300eff8  loadli.w r1,  -912(r30)
000618  670b1ff2  storeli.w r1, -1616(r30)
00061c  e340eff8  loadli.w r1,  -908(r30)
000620  e74a1ff2  storeli.w r1, -1620(r30)
000624  e300fff8  loadli.w r1,  -904(r30)
000628  e70a1ff2  storeli.w r1, -1624(r30)
00062c  e340fff8  loadli.w r1,  -900(r30)
000630  674a1ff2  storeli.w r1, -1628(r30)
000634  e3000ff9  loadli.w r1,  -896(r30)
000638  674b1ff0  storeli.w r1, -1868(r30)
00063c  e3400ff9  loadli.w r1,  -892(r30)
000640  670a1ff2  storeli.w r1, -1632(r30)
000644  e3001ff9  loadli.w r1,  -888(r30)
000648  e7491ff2  storeli.w r1, -1636(r30)
00064c  e3401ff9  loadli.w r1,  -884(r30)
000650  e7091ff2  storeli.w r1, -1640(r30)
000654  e3002ff9  loadli.w r1,  -880(r30)
000658  67491ff2  storeli.w r1, -1644(r30)
00065c  e3402ff9  loadli.w r1,  -876(r30)
000660  67091ff2  storeli.w r1, -1648(r30)
000664  e3003ff9  loadli.w r1,  -872(r30)
000668  e7481ff2  storeli.w r1, -1652(r30)
00066c  e3403ff9  loadli.w r1,  -868(r30)
000670  e7081ff2  storeli.w r1, -1656(r30)
000674  e3004ff9  loadli.w r1,  -864(r30)
000678  67481ff2  storeli.w r1, -1660(r30)
00067c  e3404ff9  loadli.w r1,  -860(r30)
000680  67081ff2  storeli.w r1, -1664(r30)
000684  e3005ff9  loadli.w r1,  -856(r30)
000688  e7471ff2  storeli.w r1, -1668(r30)
00068c  e3405ff9  loadli.w r1,  -852(r30)
000690  e7071ff2  storeli.w r1, -1672(r30)
000694  e3006ff9  loadli.w r1,  -848(r30)
000698  67471ff2  storeli.w r1, -1676(r30)
00069c  e3406ff9  loadli.w r1,  -844(r30)
0006a0  67071ff2  storeli.w r1, -1680(r30)
0006a4  e3007ff9  loadli.w r1,  -840(r30)
0006a8  e7461ff2  storeli.w r1, -1684(r30)
0006ac  e3407ff9  loadli.w r1,  -836(r30)
0006b0  e7061ff2  storeli.w r1, -1688(r30)
0006b4  e3008ff9  loadli.w r1,  -832(r30)
0006b8  670b1ff0  storeli.w r1, -1872(r30)
0006bc  e3408ff9  loadli.w r1,  -828(r30)
0006c0  67461ff2  storeli.w r1, -1692(r30)
0006c4  e3009ff9  loadli.w r1,  -824(r30)
0006c8  67061ff2  storeli.w r1, -1696(r30)
0006cc  e3409ff9  loadli.w r1,  -820(r30)
0006d0  e7451ff2  storeli.w r1, -1700(r30)
0006d4  e300aff9  loadli.w r1,  -816(r30)
0006d8  e7051ff2  storeli.w r1, -1704(r30)
0006dc  e340aff9  loadli.w r1,  -812(r30)
0006e0  67451ff2  storeli.w r1, -1708(r30)
0006e4  e300bff9  loadli.w r1,  -808(r30)
0006e8  67051ff2  storeli.w r1, -1712(r30)
0006ec  e340bff9  loadli.w r1,  -804(r30)
0006f0  e7441ff2  storeli.w r1, -1716(r30)
0006f4  e300cff9  loadli.w r1,  -800(r30)
0006f8  e7041ff2  storeli.w r1, -1720(r30)
0006fc  e340cff9  loadli.w r1,  -796(r30)
000700  67441ff2  storeli.w r1, -1724(r30)
000704  e300dff9  loadli.w r1,  -792(r30)
000708  67041ff2  storeli.w r1, -1728(r30)
00070c  e340dff9  loadli.w r1,  -788(r30)
000710  e7431ff2  storeli.w r1, -1732(r30)
000714  e300eff9  loadli.w r1,  -784(r30)
000718  e7031ff2  storeli.w r1, -1736(r30)
00071c  e340eff9  loadli.w r1,  -780(r30)
000720  67431ff2  storeli.w r1, -1740(r30)
000724  630efff9  loadli.w r28,  -776(r30)
000728  e340fff9  loadli.w r1,  -772(r30)
00072c  e70b1ff0  storeli.w r1, -1864(r30)
000730  46100fe2  vstore_mask16.mz vr0{mr1}, 1792(r30)
000734  46144fe2  vstore_mask16.mz vr4{mr1}, 1856(r30)
000738  46189fe2  vstore_mask16.mz vr9{mr1}, 1920(r30)
00073c  461cafe2  vstore_mask16.mz vr10{mr1}, 1984(r30)
000740  00a00000  mfence { lm }
000744  e3000a00  loadli.w r1,  0(r20)
000748  63410a00  loadli.w r2,  4(r20)
00074c  e3011a00  loadli.w r3,  8(r20)
000750  63421a00  loadli.w r4,  12(r20)
000754  e3022a00  loadli.w r5,  16(r20)
000758  63432a00  loadli.w r6,  20(r20)
00075c  e3033a00  loadli.w r7,  24(r20)
000760  63443a00  loadli.w r8,  28(r20)
000764  e3044a00  loadli.w r9,  32(r20)
000768  63454a00  loadli.w r10,  36(r20)
00076c  e3055a00  loadli.w r11,  40(r20)
000770  63465a00  loadli.w r12,  44(r20)
000774  e3066a00  loadli.w r13,  48(r20)
000778  63476a00  loadli.w r14,  52(r20)
00077c  e3077a00  loadli.w r15,  56(r20)
000780  e3497a00  loadli.w r19,  60(r20)
000784  8f800000  exp.f.rn r1, r1
000788  0f010100  exp.f.rn r2, r2
00078c  8f810100  exp.f.rn r3, r3
000790  0f020200  exp.f.rn r4, r4
000794  8f820200  exp.f.rn r5, r5
000798  0f030300  exp.f.rn r6, r6
00079c  8f830300  exp.f.rn r7, r7
0007a0  0f040400  exp.f.rn r8, r8
0007a4  8f840400  exp.f.rn r9, r9
0007a8  0f050500  exp.f.rn r10, r10
0007ac  8f850500  exp.f.rn r11, r11
0007b0  0f060600  exp.f.rn r12, r12
0007b4  8f860600  exp.f.rn r13, r13
0007b8  0f070700  exp.f.rn r14, r14
0007bc  8f870700  exp.f.rn r15, r15
0007c0  8f890900  exp.f.rn r19, r19
0007c4  67001a00  storeli.w r1, 0(r20)
0007c8  67402a00  storeli.w r2, 4(r20)
0007cc  e7003a00  storeli.w r3, 8(r20)
0007d0  e7404a00  storeli.w r4, 12(r20)
0007d4  67015a00  storeli.w r5, 16(r20)
0007d8  67416a00  storeli.w r6, 20(r20)
0007dc  e7017a00  storeli.w r7, 24(r20)
0007e0  e7418a00  storeli.w r8, 28(r20)
0007e4  67029a00  storeli.w r9, 32(r20)
0007e8  6742aa00  storeli.w r10, 36(r20)
0007ec  e702ba00  storeli.w r11, 40(r20)
0007f0  e742ca00  storeli.w r12, 44(r20)
0007f4  6703da00  storeli.w r13, 48(r20)
0007f8  6743ea00  storeli.w r14, 52(r20)
0007fc  e703fa00  storeli.w r15, 56(r20)
000800  e7433a01  storeli.w r19, 60(r20)
000804  e3008a00  loadli.w r1,  64(r20)
000808  63418a00  loadli.w r2,  68(r20)
00080c  e3019a00  loadli.w r3,  72(r20)
000810  63429a00  loadli.w r4,  76(r20)
000814  e302aa00  loadli.w r5,  80(r20)
000818  6343aa00  loadli.w r6,  84(r20)
00081c  e303ba00  loadli.w r7,  88(r20)
000820  6344ba00  loadli.w r8,  92(r20)
000824  e304ca00  loadli.w r9,  96(r20)
000828  6345ca00  loadli.w r10,  100(r20)
00082c  e305da00  loadli.w r11,  104(r20)
000830  6346da00  loadli.w r12,  108(r20)
000834  e306ea00  loadli.w r13,  112(r20)
000838  6347ea00  loadli.w r14,  116(r20)
00083c  e307fa00  loadli.w r15,  120(r20)
000840  e349fa00  loadli.w r19,  124(r20)
000844  8f800000  exp.f.rn r1, r1
000848  0f010100  exp.f.rn r2, r2
00084c  8f810100  exp.f.rn r3, r3
000850  0f020200  exp.f.rn r4, r4
000854  8f820200  exp.f.rn r5, r5
000858  0f030300  exp.f.rn r6, r6
00085c  8f830300  exp.f.rn r7, r7
000860  0f040400  exp.f.rn r8, r8
000864  8f840400  exp.f.rn r9, r9
000868  0f050500  exp.f.rn r10, r10
00086c  8f850500  exp.f.rn r11, r11
000870  0f060600  exp.f.rn r12, r12
000874  8f860600  exp.f.rn r13, r13
000878  0f070700  exp.f.rn r14, r14
00087c  8f870700  exp.f.rn r15, r15
000880  8f890900  exp.f.rn r19, r19
000884  67041a00  storeli.w r1, 64(r20)
000888  67442a00  storeli.w r2, 68(r20)
00088c  e7043a00  storeli.w r3, 72(r20)
000890  e7444a00  storeli.w r4, 76(r20)
000894  67055a00  storeli.w r5, 80(r20)
000898  67456a00  storeli.w r6, 84(r20)
00089c  e7057a00  storeli.w r7, 88(r20)
0008a0  e7458a00  storeli.w r8, 92(r20)
0008a4  67069a00  storeli.w r9, 96(r20)
0008a8  6746aa00  storeli.w r10, 100(r20)
0008ac  e706ba00  storeli.w r11, 104(r20)
0008b0  e746ca00  storeli.w r12, 108(r20)
0008b4  6707da00  storeli.w r13, 112(r20)
0008b8  6747ea00  storeli.w r14, 116(r20)
0008bc  e707fa00  storeli.w r15, 120(r20)
0008c0  e7473a01  storeli.w r19, 124(r20)
0008c4  e3000a01  loadli.w r1,  128(r20)
0008c8  63410a01  loadli.w r2,  132(r20)
0008cc  e3011a01  loadli.w r3,  136(r20)
0008d0  63421a01  loadli.w r4,  140(r20)
0008d4  e3022a01  loadli.w r5,  144(r20)
0008d8  63432a01  loadli.w r6,  148(r20)
0008dc  e3033a01  loadli.w r7,  152(r20)
0008e0  63443a01  loadli.w r8,  156(r20)
0008e4  e3044a01  loadli.w r9,  160(r20)
0008e8  63454a01  loadli.w r10,  164(r20)
0008ec  e3055a01  loadli.w r11,  168(r20)
0008f0  63465a01  loadli.w r12,  172(r20)
0008f4  e3066a01  loadli.w r13,  176(r20)
0008f8  63476a01  loadli.w r14,  180(r20)
0008fc  e3077a01  loadli.w r15,  184(r20)
000900  e3497a01  loadli.w r19,  188(r20)
000904  8f800000  exp.f.rn r1, r1
000908  0f010100  exp.f.rn r2, r2
00090c  8f810100  exp.f.rn r3, r3
000910  0f020200  exp.f.rn r4, r4
000914  8f820200  exp.f.rn r5, r5
000918  0f030300  exp.f.rn r6, r6
00091c  8f830300  exp.f.rn r7, r7
000920  0f040400  exp.f.rn r8, r8
000924  8f840400  exp.f.rn r9, r9
000928  0f050500  exp.f.rn r10, r10
00092c  8f850500  exp.f.rn r11, r11
000930  0f060600  exp.f.rn r12, r12
000934  8f860600  exp.f.rn r13, r13
000938  0f070700  exp.f.rn r14, r14
00093c  8f870700  exp.f.rn r15, r15
000940  8f890900  exp.f.rn r19, r19
000944  67081a00  storeli.w r1, 128(r20)
000948  67482a00  storeli.w r2, 132(r20)
00094c  e7083a00  storeli.w r3, 136(r20)
000950  e7484a00  storeli.w r4, 140(r20)
000954  67095a00  storeli.w r5, 144(r20)
000958  67496a00  storeli.w r6, 148(r20)
00095c  e7097a00  storeli.w r7, 152(r20)
000960  e7498a00  storeli.w r8, 156(r20)
000964  670a9a00  storeli.w r9, 160(r20)
000968  674aaa00  storeli.w r10, 164(r20)
00096c  e70aba00  storeli.w r11, 168(r20)
000970  e74aca00  storeli.w r12, 172(r20)
000974  670bda00  storeli.w r13, 176(r20)
000978  674bea00  storeli.w r14, 180(r20)
00097c  e70bfa00  storeli.w r15, 184(r20)
000980  e74b3a01  storeli.w r19, 188(r20)
000984  e3008a01  loadli.w r1,  192(r20)
000988  63418a01  loadli.w r2,  196(r20)
00098c  e3019a01  loadli.w r3,  200(r20)
000990  63429a01  loadli.w r4,  204(r20)
000994  e302aa01  loadli.w r5,  208(r20)
000998  6343aa01  loadli.w r6,  212(r20)
00099c  e303ba01  loadli.w r7,  216(r20)
0009a0  6344ba01  loadli.w r8,  220(r20)
0009a4  e304ca01  loadli.w r9,  224(r20)
0009a8  6345ca01  loadli.w r10,  228(r20)
0009ac  e305da01  loadli.w r11,  232(r20)
0009b0  6346da01  loadli.w r12,  236(r20)
0009b4  e306ea01  loadli.w r13,  240(r20)
0009b8  6347ea01  loadli.w r14,  244(r20)
0009bc  e307fa01  loadli.w r15,  248(r20)
0009c0  e349fa01  loadli.w r19,  252(r20)
0009c4  8f800000  exp.f.rn r1, r1
0009c8  0f010100  exp.f.rn r2, r2
0009cc  8f810100  exp.f.rn r3, r3
0009d0  0f020200  exp.f.rn r4, r4
0009d4  8f820200  exp.f.rn r5, r5
0009d8  0f030300  exp.f.rn r6, r6
0009dc  8f830300  exp.f.rn r7, r7
0009e0  0f040400  exp.f.rn r8, r8
0009e4  8f840400  exp.f.rn r9, r9
0009e8  0f050500  exp.f.rn r10, r10
0009ec  8f850500  exp.f.rn r11, r11
0009f0  0f060600  exp.f.rn r12, r12
0009f4  8f860600  exp.f.rn r13, r13
0009f8  0f070700  exp.f.rn r14, r14
0009fc  8f870700  exp.f.rn r15, r15
000a00  8f890900  exp.f.rn r19, r19
000a04  670c1a00  storeli.w r1, 192(r20)
000a08  674c2a00  storeli.w r2, 196(r20)
000a0c  e70c3a00  storeli.w r3, 200(r20)
000a10  e74c4a00  storeli.w r4, 204(r20)
000a14  670d5a00  storeli.w r5, 208(r20)
000a18  674d6a00  storeli.w r6, 212(r20)
000a1c  e70d7a00  storeli.w r7, 216(r20)
000a20  e74d8a00  storeli.w r8, 220(r20)
000a24  670e9a00  storeli.w r9, 224(r20)
000a28  674eaa00  storeli.w r10, 228(r20)
000a2c  e70eba00  storeli.w r11, 232(r20)
000a30  e74eca00  storeli.w r12, 236(r20)
000a34  670fda00  storeli.w r13, 240(r20)
000a38  674fea00  storeli.w r14, 244(r20)
000a3c  e70ffa00  storeli.w r15, 248(r20)
000a40  e74f3a01  storeli.w r19, 252(r20)
000a44  00a00000  mfence { lm }
000a48  42100fe2  vload_mask16.mz vr0{mr1}, 1792(r30)
000a4c  2b03803f  lui r6, 260096
000a50  fa900240  vextracti.f r1, 0(vr5)
000a54  c2158fe2  vload_mask16.mz vr11{mr1}, 1856(r30)
000a58  42150fe3  vload_mask16.mz vr10{mr1}, 1920(r30)
000a5c  c2148fe3  vload_mask16.mz vr9{mr1}, 1984(r30)
000a60  7a120340  vextracti.f r4, 0(vr6)
000a64  12100302  vadd.f.mz.rn vr0{mr1}, r6, vr0
000a68  7a110040  vextracti.f r2, 0(vr0)
000a6c  fa111040  vextracti.f r3, 1(vr0)
000a70  9215b302  vadd.f.mz.rn vr11{mr1}, r6, vr11
000a74  fa920540  vextracti.f r5, 0(vr11)
000a78  1215a302  vadd.f.mz.rn vr10{mr1}, r6, vr10
000a7c  8f802018  div.f.rn r1, r1, r2
000a80  7a911240  vextracti.f r2, 1(vr5)
000a84  0f013118  div.f.rn r2, r2, r3
000a88  9f010ff0  addli r3, r30, -2048
000a8c  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
000a90  9f110000  addli r3, zero, 1
000a94  7e8001e0  vmmov mr0, r3
000a98  fa112040  vextracti.f r3, 2(vr0)
000a9c  12322002  vadd.s.mz vr4{mr1}, zero, vr2
000aa0  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000aa4  fa902240  vextracti.f r1, 2(vr5)
000aa8  8f803018  div.f.rn r1, r1, r3
000aac  9f210000  addli r3, zero, 2
000ab0  7e8101e0  vmmov mr2, r3
000ab4  fa113040  vextracti.f r3, 3(vr0)
000ab8  6a224134  vor.u.mh vr4{mr2}, r2, vr4
000abc  7a913240  vextracti.f r2, 3(vr5)
000ac0  0f013118  div.f.rn r2, r2, r3
000ac4  9f410000  addli r3, zero, 4
000ac8  fe8101e0  vmmov mr3, r3
000acc  fa114040  vextracti.f r3, 4(vr0)
000ad0  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
000ad4  fa904240  vextracti.f r1, 4(vr5)
000ad8  8f803018  div.f.rn r1, r1, r3
000adc  9f011000  addli r3, zero, 8
000ae0  fe8101e0  vmmov mr3, r3
000ae4  fa115040  vextracti.f r3, 5(vr0)
000ae8  6a224136  vor.u.mh vr4{mr3}, r2, vr4
000aec  7a915240  vextracti.f r2, 5(vr5)
000af0  0f013118  div.f.rn r2, r2, r3
000af4  9f012000  addli r3, zero, 16
000af8  7e8001e0  vmmov mr0, r3
000afc  fa116040  vextracti.f r3, 6(vr0)
000b00  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000b04  fa906240  vextracti.f r1, 6(vr5)
000b08  8f803018  div.f.rn r1, r1, r3
000b0c  9f014000  addli r3, zero, 32
000b10  7e8001e0  vmmov mr0, r3
000b14  fa117040  vextracti.f r3, 7(vr0)
000b18  6a224130  vor.u.mh vr4{mr0}, r2, vr4
000b1c  7a917240  vextracti.f r2, 7(vr5)
000b20  0f013118  div.f.rn r2, r2, r3
000b24  9f018000  addli r3, zero, 64
000b28  7e8001e0  vmmov mr0, r3
000b2c  fa118040  vextracti.f r3, 8(vr0)
000b30  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000b34  fa908240  vextracti.f r1, 8(vr5)
000b38  8f803018  div.f.rn r1, r1, r3
000b3c  9f010001  addli r3, zero, 128
000b40  7e8001e0  vmmov mr0, r3
000b44  fa119040  vextracti.f r3, 9(vr0)
000b48  6a224130  vor.u.mh vr4{mr0}, r2, vr4
000b4c  7a919240  vextracti.f r2, 9(vr5)
000b50  0f013118  div.f.rn r2, r2, r3
000b54  9f010002  addli r3, zero, 256
000b58  7e8001e0  vmmov mr0, r3
000b5c  fa11a040  vextracti.f r3, 10(vr0)
000b60  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000b64  fa90a240  vextracti.f r1, 10(vr5)
000b68  8f803018  div.f.rn r1, r1, r3
000b6c  9f010004  addli r3, zero, 512
000b70  7e8001e0  vmmov mr0, r3
000b74  fa11b040  vextracti.f r3, 11(vr0)
000b78  6a224130  vor.u.mh vr4{mr0}, r2, vr4
000b7c  7a91b240  vextracti.f r2, 11(vr5)
000b80  0f013118  div.f.rn r2, r2, r3
000b84  9f010008  addli r3, zero, 1024
000b88  7e8001e0  vmmov mr0, r3
000b8c  fa11c040  vextracti.f r3, 12(vr0)
000b90  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000b94  fa90c240  vextracti.f r1, 12(vr5)
000b98  8f803018  div.f.rn r1, r1, r3
000b9c  9f010010  addli r3, zero, 2048
000ba0  7e8001e0  vmmov mr0, r3
000ba4  fa11d040  vextracti.f r3, 13(vr0)
000ba8  6a224130  vor.u.mh vr4{mr0}, r2, vr4
000bac  7a91d240  vextracti.f r2, 13(vr5)
000bb0  0f013118  div.f.rn r2, r2, r3
000bb4  9f010020  addli r3, zero, 4096
000bb8  7e8001e0  vmmov mr0, r3
000bbc  fa11e040  vextracti.f r3, 14(vr0)
000bc0  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000bc4  fa90e240  vextracti.f r1, 14(vr5)
000bc8  8f803018  div.f.rn r1, r1, r3
000bcc  9f010040  addli r3, zero, 8192
000bd0  7e8001e0  vmmov mr0, r3
000bd4  fa11f040  vextracti.f r3, 15(vr0)
000bd8  12109302  vadd.f.mz.rn vr0{mr1}, r6, vr9
000bdc  6a224130  vor.u.mh vr4{mr0}, r2, vr4
000be0  7a91f240  vextracti.f r2, 15(vr5)
000be4  92322002  vadd.s.mz vr5{mr1}, zero, vr2
000be8  0f013118  div.f.rn r2, r2, r3
000bec  8f015218  div.f.rn r3, r4, r5
000bf0  2b420000  lui r4, 4
000bf4  ab820000  lui r5, 8
000bf8  7e0002e0  vmmov mr0, r4
000bfc  7a921540  vextracti.f r4, 1(vr11)
000c00  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000c04  fa101340  vextracti.f r1, 1(vr6)
000c08  7e8002e0  vmmov mr0, r5
000c0c  fa120540  vextracti.f r5, 0(vr10)
000c10  8f804018  div.f.rn r1, r1, r4
000c14  7a920340  vextracti.f r4, 0(vr7)
000c18  6a224130  vor.u.mh vr4{mr0}, r2, vr4
000c1c  1f110000  addli r2, zero, 1
000c20  7e0101e0  vmmov mr2, r2
000c24  7a112340  vextracti.f r2, 2(vr6)
000c28  eaa25134  vor.u.mh vr5{mr2}, r3, vr5
000c2c  fa912540  vextracti.f r3, 2(vr11)
000c30  0f013118  div.f.rn r2, r2, r3
000c34  9f210000  addli r3, zero, 2
000c38  7e8001e0  vmmov mr0, r3
000c3c  fa913540  vextracti.f r3, 3(vr11)
000c40  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000c44  fa103340  vextracti.f r1, 3(vr6)
000c48  8f803018  div.f.rn r1, r1, r3
000c4c  9f410000  addli r3, zero, 4
000c50  7e8001e0  vmmov mr0, r3
000c54  fa914540  vextracti.f r3, 4(vr11)
000c58  ea225130  vor.u.mh vr5{mr0}, r2, vr5
000c5c  7a114340  vextracti.f r2, 4(vr6)
000c60  0f013118  div.f.rn r2, r2, r3
000c64  fa915540  vextracti.f r3, 5(vr11)
000c68  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
000c6c  fa105340  vextracti.f r1, 5(vr6)
000c70  8f803018  div.f.rn r1, r1, r3
000c74  9f012000  addli r3, zero, 16
000c78  7e8001e0  vmmov mr0, r3
000c7c  fa916540  vextracti.f r3, 6(vr11)
000c80  ea225130  vor.u.mh vr5{mr0}, r2, vr5
000c84  7a116340  vextracti.f r2, 6(vr6)
000c88  0f013118  div.f.rn r2, r2, r3
000c8c  9f014000  addli r3, zero, 32
000c90  7e8001e0  vmmov mr0, r3
000c94  fa917540  vextracti.f r3, 7(vr11)
000c98  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000c9c  fa107340  vextracti.f r1, 7(vr6)
000ca0  8f803018  div.f.rn r1, r1, r3
000ca4  9f018000  addli r3, zero, 64
000ca8  7e8001e0  vmmov mr0, r3
000cac  fa918540  vextracti.f r3, 8(vr11)
000cb0  ea225130  vor.u.mh vr5{mr0}, r2, vr5
000cb4  7a118340  vextracti.f r2, 8(vr6)
000cb8  0f013118  div.f.rn r2, r2, r3
000cbc  9f010001  addli r3, zero, 128
000cc0  7e8001e0  vmmov mr0, r3
000cc4  fa919540  vextracti.f r3, 9(vr11)
000cc8  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000ccc  fa109340  vextracti.f r1, 9(vr6)
000cd0  8f803018  div.f.rn r1, r1, r3
000cd4  9f010002  addli r3, zero, 256
000cd8  7e8001e0  vmmov mr0, r3
000cdc  fa91a540  vextracti.f r3, 10(vr11)
000ce0  ea225130  vor.u.mh vr5{mr0}, r2, vr5
000ce4  7a11a340  vextracti.f r2, 10(vr6)
000ce8  0f013118  div.f.rn r2, r2, r3
000cec  9f010004  addli r3, zero, 512
000cf0  7e8001e0  vmmov mr0, r3
000cf4  fa91b540  vextracti.f r3, 11(vr11)
000cf8  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000cfc  fa10b340  vextracti.f r1, 11(vr6)
000d00  8f803018  div.f.rn r1, r1, r3
000d04  9f010008  addli r3, zero, 1024
000d08  7e8001e0  vmmov mr0, r3
000d0c  fa91c540  vextracti.f r3, 12(vr11)
000d10  ea225130  vor.u.mh vr5{mr0}, r2, vr5
000d14  7a11c340  vextracti.f r2, 12(vr6)
000d18  0f013118  div.f.rn r2, r2, r3
000d1c  9f010010  addli r3, zero, 2048
000d20  7e8001e0  vmmov mr0, r3
000d24  fa91d540  vextracti.f r3, 13(vr11)
000d28  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000d2c  fa10d340  vextracti.f r1, 13(vr6)
000d30  8f813018  div.f.rn r3, r1, r3
000d34  9f000020  addli r1, zero, 4096
000d38  7e8000e0  vmmov mr0, r1
000d3c  fa10e340  vextracti.f r1, 14(vr6)
000d40  ea225130  vor.u.mh vr5{mr0}, r2, vr5
000d44  7a91e540  vextracti.f r2, 14(vr11)
000d48  8f802018  div.f.rn r1, r1, r2
000d4c  1f010040  addli r2, zero, 8192
000d50  fe0101e0  vmmov mr3, r2
000d54  7a11f340  vextracti.f r2, 15(vr6)
000d58  12332002  vadd.s.mz vr6{mr1}, zero, vr2
000d5c  eaa25136  vor.u.mh vr5{mr3}, r3, vr5
000d60  fa91f540  vextracti.f r3, 15(vr11)
000d64  0f013118  div.f.rn r2, r2, r3
000d68  8f015218  div.f.rn r3, r4, r5
000d6c  2b420000  lui r4, 4
000d70  ab820000  lui r5, 8
000d74  7e0002e0  vmmov mr0, r4
000d78  7a121540  vextracti.f r4, 1(vr10)
000d7c  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000d80  fa901340  vextracti.f r1, 1(vr7)
000d84  7e8002e0  vmmov mr0, r5
000d88  fa120040  vextracti.f r5, 0(vr0)
000d8c  8f804018  div.f.rn r1, r1, r4
000d90  7a120440  vextracti.f r4, 0(vr8)
000d94  ea225130  vor.u.mh vr5{mr0}, r2, vr5
000d98  6aa36134  vor.u.mh vr6{mr2}, r3, vr6
000d9c  7a912340  vextracti.f r2, 2(vr7)
000da0  fa112540  vextracti.f r3, 2(vr10)
000da4  0f013118  div.f.rn r2, r2, r3
000da8  9f210000  addli r3, zero, 2
000dac  7e8001e0  vmmov mr0, r3
000db0  fa113540  vextracti.f r3, 3(vr10)
000db4  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
000db8  fa903340  vextracti.f r1, 3(vr7)
000dbc  8f803018  div.f.rn r1, r1, r3
000dc0  9f410000  addli r3, zero, 4
000dc4  7e8001e0  vmmov mr0, r3
000dc8  fa114540  vextracti.f r3, 4(vr10)
000dcc  6a236130  vor.u.mh vr6{mr0}, r2, vr6
000dd0  7a914340  vextracti.f r2, 4(vr7)
000dd4  0f013118  div.f.rn r2, r2, r3
000dd8  9f011000  addli r3, zero, 8
000ddc  7e8101e0  vmmov mr2, r3
000de0  fa115540  vextracti.f r3, 5(vr10)
000de4  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
000de8  fa905340  vextracti.f r1, 5(vr7)
000dec  8f803018  div.f.rn r1, r1, r3
000df0  9f012000  addli r3, zero, 16
000df4  7e8001e0  vmmov mr0, r3
000df8  fa116540  vextracti.f r3, 6(vr10)
000dfc  6a236130  vor.u.mh vr6{mr0}, r2, vr6
000e00  7a916340  vextracti.f r2, 6(vr7)
000e04  0f013118  div.f.rn r2, r2, r3
000e08  9f014000  addli r3, zero, 32
000e0c  7e8001e0  vmmov mr0, r3
000e10  fa117540  vextracti.f r3, 7(vr10)
000e14  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
000e18  fa907340  vextracti.f r1, 7(vr7)
000e1c  8f803018  div.f.rn r1, r1, r3
000e20  9f018000  addli r3, zero, 64
000e24  7e8001e0  vmmov mr0, r3
000e28  fa118540  vextracti.f r3, 8(vr10)
000e2c  6a236130  vor.u.mh vr6{mr0}, r2, vr6
000e30  7a918340  vextracti.f r2, 8(vr7)
000e34  0f013118  div.f.rn r2, r2, r3
000e38  9f010001  addli r3, zero, 128
000e3c  7e8001e0  vmmov mr0, r3
000e40  fa119540  vextracti.f r3, 9(vr10)
000e44  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
000e48  fa909340  vextracti.f r1, 9(vr7)
000e4c  8f803018  div.f.rn r1, r1, r3
000e50  9f010002  addli r3, zero, 256
000e54  7e8001e0  vmmov mr0, r3
000e58  fa11a540  vextracti.f r3, 10(vr10)
000e5c  6a236130  vor.u.mh vr6{mr0}, r2, vr6
000e60  7a91a340  vextracti.f r2, 10(vr7)
000e64  0f013118  div.f.rn r2, r2, r3
000e68  9f010004  addli r3, zero, 512
000e6c  7e8001e0  vmmov mr0, r3
000e70  fa11b540  vextracti.f r3, 11(vr10)
000e74  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
000e78  fa90b340  vextracti.f r1, 11(vr7)
000e7c  8f803018  div.f.rn r1, r1, r3
000e80  9f010008  addli r3, zero, 1024
000e84  7e8001e0  vmmov mr0, r3
000e88  fa11c540  vextracti.f r3, 12(vr10)
000e8c  6a236130  vor.u.mh vr6{mr0}, r2, vr6
000e90  7a91c340  vextracti.f r2, 12(vr7)
000e94  0f013118  div.f.rn r2, r2, r3
000e98  9f010010  addli r3, zero, 2048
000e9c  7e8001e0  vmmov mr0, r3
000ea0  fa11d540  vextracti.f r3, 13(vr10)
000ea4  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
000ea8  fa90d340  vextracti.f r1, 13(vr7)
000eac  8f813018  div.f.rn r3, r1, r3
000eb0  9f000020  addli r1, zero, 4096
000eb4  7e8000e0  vmmov mr0, r1
000eb8  fa90e340  vextracti.f r1, 14(vr7)
000ebc  6a236130  vor.u.mh vr6{mr0}, r2, vr6
000ec0  7a11e540  vextracti.f r2, 14(vr10)
000ec4  8f802018  div.f.rn r1, r1, r2
000ec8  7a91f340  vextracti.f r2, 15(vr7)
000ecc  6aa36136  vor.u.mh vr6{mr3}, r3, vr6
000ed0  fa11f540  vextracti.f r3, 15(vr10)
000ed4  0f013118  div.f.rn r2, r2, r3
000ed8  8f015218  div.f.rn r3, r4, r5
000edc  2b420000  lui r4, 4
000ee0  ab820000  lui r5, 8
000ee4  fe0102e0  vmmov mr3, r4
000ee8  7e8002e0  vmmov mr0, r5
000eec  7a121040  vextracti.f r4, 1(vr0)
000ef0  fa12e040  vextracti.f r5, 14(vr0)
000ef4  6aa36036  vor.u.mh vr6{mr3}, r1, vr6
000ef8  fa101440  vextracti.f r1, 1(vr8)
000efc  8f804018  div.f.rn r1, r1, r4
000f00  7a12e440  vextracti.f r4, 14(vr8)
000f04  6a236130  vor.u.mh vr6{mr0}, r2, vr6
000f08  1f110000  addli r2, zero, 1
000f0c  7e0101e0  vmmov mr2, r2
000f10  7a112440  vextracti.f r2, 2(vr8)
000f14  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
000f18  fa112040  vextracti.f r3, 2(vr0)
000f1c  0f013118  div.f.rn r2, r2, r3
000f20  9f210000  addli r3, zero, 2
000f24  7e8101e0  vmmov mr2, r3
000f28  fa113040  vextracti.f r3, 3(vr0)
000f2c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000f30  fa103440  vextracti.f r1, 3(vr8)
000f34  8f803018  div.f.rn r1, r1, r3
000f38  9f410000  addli r3, zero, 4
000f3c  7e8101e0  vmmov mr2, r3
000f40  fa114040  vextracti.f r3, 4(vr0)
000f44  6a212134  vor.u.mh vr2{mr2}, r2, vr2
000f48  7a114440  vextracti.f r2, 4(vr8)
000f4c  0f013118  div.f.rn r2, r2, r3
000f50  9f011000  addli r3, zero, 8
000f54  7e8101e0  vmmov mr2, r3
000f58  fa115040  vextracti.f r3, 5(vr0)
000f5c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000f60  fa105440  vextracti.f r1, 5(vr8)
000f64  8f803018  div.f.rn r1, r1, r3
000f68  9f012000  addli r3, zero, 16
000f6c  7e8101e0  vmmov mr2, r3
000f70  fa116040  vextracti.f r3, 6(vr0)
000f74  6a212134  vor.u.mh vr2{mr2}, r2, vr2
000f78  7a116440  vextracti.f r2, 6(vr8)
000f7c  0f013118  div.f.rn r2, r2, r3
000f80  9f014000  addli r3, zero, 32
000f84  7e8101e0  vmmov mr2, r3
000f88  fa117040  vextracti.f r3, 7(vr0)
000f8c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000f90  fa107440  vextracti.f r1, 7(vr8)
000f94  8f803018  div.f.rn r1, r1, r3
000f98  9f018000  addli r3, zero, 64
000f9c  7e8101e0  vmmov mr2, r3
000fa0  fa118040  vextracti.f r3, 8(vr0)
000fa4  6a212134  vor.u.mh vr2{mr2}, r2, vr2
000fa8  7a118440  vextracti.f r2, 8(vr8)
000fac  0f013118  div.f.rn r2, r2, r3
000fb0  9f010001  addli r3, zero, 128
000fb4  7e8101e0  vmmov mr2, r3
000fb8  fa119040  vextracti.f r3, 9(vr0)
000fbc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000fc0  fa109440  vextracti.f r1, 9(vr8)
000fc4  8f803018  div.f.rn r1, r1, r3
000fc8  9f010002  addli r3, zero, 256
000fcc  7e8101e0  vmmov mr2, r3
000fd0  fa11a040  vextracti.f r3, 10(vr0)
000fd4  6a212134  vor.u.mh vr2{mr2}, r2, vr2
000fd8  7a11a440  vextracti.f r2, 10(vr8)
000fdc  0f013118  div.f.rn r2, r2, r3
000fe0  9f010004  addli r3, zero, 512
000fe4  7e8101e0  vmmov mr2, r3
000fe8  fa11b040  vextracti.f r3, 11(vr0)
000fec  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000ff0  fa10b440  vextracti.f r1, 11(vr8)
000ff4  8f803018  div.f.rn r1, r1, r3
000ff8  9f010008  addli r3, zero, 1024
000ffc  7e8101e0  vmmov mr2, r3
001000  fa11c040  vextracti.f r3, 12(vr0)
001004  6a212134  vor.u.mh vr2{mr2}, r2, vr2
001008  7a11c440  vextracti.f r2, 12(vr8)
00100c  0f013118  div.f.rn r2, r2, r3
001010  9f010010  addli r3, zero, 2048
001014  7e8101e0  vmmov mr2, r3
001018  fa11d040  vextracti.f r3, 13(vr0)
00101c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
001020  fa10d440  vextracti.f r1, 13(vr8)
001024  8f803018  div.f.rn r1, r1, r3
001028  8f015218  div.f.rn r3, r4, r5
00102c  1f020020  addli r4, zero, 4096
001030  9f020040  addli r5, zero, 8192
001034  7e0102e0  vmmov mr2, r4
001038  7a12f040  vextracti.f r4, 15(vr0)
00103c  6a212134  vor.u.mh vr2{mr2}, r2, vr2
001040  7a11f440  vextracti.f r2, 15(vr8)
001044  7e8102e0  vmmov mr2, r5
001048  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00104c  8f004118  div.f.rn r1, r2, r4
001050  6aa12136  vor.u.mh vr2{mr3}, r3, vr2
001054  9f210000  addli r3, zero, 2
001058  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
00105c  9f200000  addli r1, zero, 2
001060  37c01a01  beq r21, r17, 16
001064  97802a01  and r1, r21, r18
001068  93001804  setlt.u r1, r16, r1
00106c  9bb01000  slli r1, r1, 1
001070  e7091ff0  storeli.w r1, -1896(r30)
001074  1f420000  addli r4, zero, 4
001078  9f400000  addli r1, zero, 4
00107c  37401b01  beq r22, r17, 16
001080  97002b01  and r1, r22, r18
001084  93001804  setlt.u r1, r16, r1
001088  9bb02000  slli r1, r1, 2
00108c  67091ff0  storeli.w r1, -1904(r30)
001090  9f021000  addli r5, zero, 8
001094  9f001000  addli r1, zero, 8
001098  1f060e00  addli r12, r28, 0
00109c  37c01b01  beq r23, r17, 16
0010a0  97802b01  and r1, r23, r18
0010a4  93001804  setlt.u r1, r16, r1
0010a8  9bb03000  slli r1, r1, 3
0010ac  67481ff0  storeli.w r1, -1916(r30)
0010b0  9f032000  addli r7, zero, 16
0010b4  9f002000  addli r1, zero, 16
0010b8  37401c01  beq r24, r17, 16
0010bc  97002c01  and r1, r24, r18
0010c0  93001804  setlt.u r1, r16, r1
0010c4  9bb04000  slli r1, r1, 4
0010c8  e7481ff0  storeli.w r1, -1908(r30)
0010cc  9f044000  addli r9, zero, 32
0010d0  9f004000  addli r1, zero, 32
0010d4  37c01c01  beq r25, r17, 16
0010d8  97802c01  and r1, r25, r18
0010dc  93001804  setlt.u r1, r16, r1
0010e0  9bb05000  slli r1, r1, 5
0010e4  67081ff0  storeli.w r1, -1920(r30)
0010e8  1f058000  addli r10, zero, 64
0010ec  9f008000  addli r1, zero, 64
0010f0  37401d01  beq r26, r17, 16
0010f4  97002d01  and r1, r26, r18
0010f8  93001804  setlt.u r1, r16, r1
0010fc  9bb06000  slli r1, r1, 6
001100  e7471ff0  storeli.w r1, -1924(r30)
001104  9f050001  addli r11, zero, 128
001108  9f000001  addli r1, zero, 128
00110c  37c01d01  beq r27, r17, 16
001110  97802d01  and r1, r27, r18
001114  93001804  setlt.u r1, r16, r1
001118  9bb07000  slli r1, r1, 7
00111c  e7071ff0  storeli.w r1, -1928(r30)
001120  e340fff3  loadli.w r1,  -1540(r30)
001124  9f070002  addli r15, zero, 256
001128  1f010002  addli r2, zero, 256
00112c  37d01001  beq r1, r17, 20
001130  e340fff3  loadli.w r1,  -1540(r30)
001134  97802001  and r1, r1, r18
001138  93001804  setlt.u r1, r16, r1
00113c  1bb18000  slli r2, r1, 8
001140  e300fff3  loadli.w r1,  -1544(r30)
001144  9f090004  addli r19, zero, 512
001148  1f030004  addli r6, zero, 512
00114c  37d01001  beq r1, r17, 20
001150  e300fff3  loadli.w r1,  -1544(r30)
001154  97802001  and r1, r1, r18
001158  93001804  setlt.u r1, r16, r1
00115c  1bb39000  slli r6, r1, 9
001160  e340eff3  loadli.w r1,  -1548(r30)
001164  1f0a0008  addli r20, zero, 1024
001168  1f040008  addli r8, zero, 1024
00116c  37d01001  beq r1, r17, 20
001170  e340eff3  loadli.w r1,  -1548(r30)
001174  97802001  and r1, r1, r18
001178  93001804  setlt.u r1, r16, r1
00117c  1bb4a000  slli r8, r1, 10
001180  e300eff3  loadli.w r1,  -1552(r30)
001184  e7468ff0  storeli.w r8, -1940(r30)
001188  1f0e0010  addli r28, zero, 2048
00118c  1f040010  addli r8, zero, 2048
001190  37d01001  beq r1, r17, 20
001194  e300eff3  loadli.w r1,  -1552(r30)
001198  97802001  and r1, r1, r18
00119c  93001804  setlt.u r1, r16, r1
0011a0  1bb4b000  slli r8, r1, 11
0011a4  e340dff3  loadli.w r1,  -1556(r30)
0011a8  e7068ff0  storeli.w r8, -1944(r30)
0011ac  1f040020  addli r8, zero, 4096
0011b0  9f060020  addli r13, zero, 4096
0011b4  37d01001  beq r1, r17, 20
0011b8  e340dff3  loadli.w r1,  -1556(r30)
0011bc  97802001  and r1, r1, r18
0011c0  93001804  setlt.u r1, r16, r1
0011c4  9bb6c000  slli r13, r1, 12
0011c8  e300dff3  loadli.w r1,  -1560(r30)
0011cc  6746dff0  storeli.w r13, -1948(r30)
0011d0  9f060040  addli r13, zero, 8192
0011d4  1f070040  addli r14, zero, 8192
0011d8  37d01001  beq r1, r17, 20
0011dc  e300dff3  loadli.w r1,  -1560(r30)
0011e0  97802001  and r1, r1, r18
0011e4  93001804  setlt.u r1, r16, r1
0011e8  1bb7d000  slli r14, r1, 13
0011ec  ab400000  lui r1, 4
0011f0  6706eff0  storeli.w r14, -1952(r30)
0011f4  2b470000  lui r14, 4
0011f8  67031ff2  storeli.w r1, -1744(r30)
0011fc  e340cff3  loadli.w r1,  -1564(r30)
001200  37e01001  beq r1, r17, 24
001204  e340cff3  loadli.w r1,  -1564(r30)
001208  97802001  and r1, r1, r18
00120c  93001804  setlt.u r1, r16, r1
001210  9bb0e000  slli r1, r1, 14
001214  67031ff2  storeli.w r1, -1744(r30)
001218  ab800000  lui r1, 8
00121c  e7421ff2  storeli.w r1, -1748(r30)
001220  e300cff3  loadli.w r1,  -1568(r30)
001224  37e01001  beq r1, r17, 24
001228  e300cff3  loadli.w r1,  -1568(r30)
00122c  97802001  and r1, r1, r18
001230  93001804  setlt.u r1, r16, r1
001234  9bb0f000  slli r1, r1, 15
001238  e7421ff2  storeli.w r1, -1748(r30)
00123c  9f200000  addli r1, zero, 2
001240  e7021ff2  storeli.w r1, -1752(r30)
001244  e340bff3  loadli.w r1,  -1572(r30)
001248  37e01001  beq r1, r17, 24
00124c  e340bff3  loadli.w r1,  -1572(r30)
001250  97802001  and r1, r1, r18
001254  93001804  setlt.u r1, r16, r1
001258  9bb01000  slli r1, r1, 1
00125c  e7021ff2  storeli.w r1, -1752(r30)
001260  9f400000  addli r1, zero, 4
001264  67421ff2  storeli.w r1, -1756(r30)
001268  e300bff3  loadli.w r1,  -1576(r30)
00126c  37e01001  beq r1, r17, 24
001270  e300bff3  loadli.w r1,  -1576(r30)
001274  97802001  and r1, r1, r18
001278  93001804  setlt.u r1, r16, r1
00127c  9bb02000  slli r1, r1, 2
001280  67421ff2  storeli.w r1, -1756(r30)
001284  9f001000  addli r1, zero, 8
001288  67021ff2  storeli.w r1, -1760(r30)
00128c  e340aff3  loadli.w r1,  -1580(r30)
001290  37e01001  beq r1, r17, 24
001294  e340aff3  loadli.w r1,  -1580(r30)
001298  97802001  and r1, r1, r18
00129c  93001804  setlt.u r1, r16, r1
0012a0  9bb03000  slli r1, r1, 3
0012a4  67021ff2  storeli.w r1, -1760(r30)
0012a8  9f002000  addli r1, zero, 16
0012ac  e7411ff2  storeli.w r1, -1764(r30)
0012b0  e300aff3  loadli.w r1,  -1584(r30)
0012b4  37e01001  beq r1, r17, 24
0012b8  e300aff3  loadli.w r1,  -1584(r30)
0012bc  97802001  and r1, r1, r18
0012c0  93001804  setlt.u r1, r16, r1
0012c4  9bb04000  slli r1, r1, 4
0012c8  e7411ff2  storeli.w r1, -1764(r30)
0012cc  9f004000  addli r1, zero, 32
0012d0  e7011ff2  storeli.w r1, -1768(r30)
0012d4  e3409ff3  loadli.w r1,  -1588(r30)
0012d8  37e01001  beq r1, r17, 24
0012dc  e3409ff3  loadli.w r1,  -1588(r30)
0012e0  97802001  and r1, r1, r18
0012e4  93001804  setlt.u r1, r16, r1
0012e8  9bb05000  slli r1, r1, 5
0012ec  e7011ff2  storeli.w r1, -1768(r30)
0012f0  9f008000  addli r1, zero, 64
0012f4  67411ff2  storeli.w r1, -1772(r30)
0012f8  e3009ff3  loadli.w r1,  -1592(r30)
0012fc  37e01001  beq r1, r17, 24
001300  e3009ff3  loadli.w r1,  -1592(r30)
001304  97802001  and r1, r1, r18
001308  93001804  setlt.u r1, r16, r1
00130c  9bb06000  slli r1, r1, 6
001310  67411ff2  storeli.w r1, -1772(r30)
001314  9f000001  addli r1, zero, 128
001318  67011ff2  storeli.w r1, -1776(r30)
00131c  e3408ff3  loadli.w r1,  -1596(r30)
001320  37e01001  beq r1, r17, 24
001324  e3408ff3  loadli.w r1,  -1596(r30)
001328  97802001  and r1, r1, r18
00132c  93001804  setlt.u r1, r16, r1
001330  9bb07000  slli r1, r1, 7
001334  67011ff2  storeli.w r1, -1776(r30)
001338  9f000002  addli r1, zero, 256
00133c  e7401ff2  storeli.w r1, -1780(r30)
001340  e3008ff3  loadli.w r1,  -1600(r30)
001344  37e01001  beq r1, r17, 24
001348  e3008ff3  loadli.w r1,  -1600(r30)
00134c  97802001  and r1, r1, r18
001350  93001804  setlt.u r1, r16, r1
001354  9bb08000  slli r1, r1, 8
001358  e7401ff2  storeli.w r1, -1780(r30)
00135c  9f000004  addli r1, zero, 512
001360  e7001ff2  storeli.w r1, -1784(r30)
001364  e3407ff3  loadli.w r1,  -1604(r30)
001368  37e01001  beq r1, r17, 24
00136c  e3407ff3  loadli.w r1,  -1604(r30)
001370  97802001  and r1, r1, r18
001374  93001804  setlt.u r1, r16, r1
001378  9bb09000  slli r1, r1, 9
00137c  e7001ff2  storeli.w r1, -1784(r30)
001380  9f000008  addli r1, zero, 1024
001384  67401ff2  storeli.w r1, -1788(r30)
001388  e3007ff3  loadli.w r1,  -1608(r30)
00138c  37e01001  beq r1, r17, 24
001390  e3007ff3  loadli.w r1,  -1608(r30)
001394  97802001  and r1, r1, r18
001398  93001804  setlt.u r1, r16, r1
00139c  9bb0a000  slli r1, r1, 10
0013a0  67401ff2  storeli.w r1, -1788(r30)
0013a4  9f000010  addli r1, zero, 2048
0013a8  67001ff2  storeli.w r1, -1792(r30)
0013ac  e3406ff3  loadli.w r1,  -1612(r30)
0013b0  37e01001  beq r1, r17, 24
0013b4  e3406ff3  loadli.w r1,  -1612(r30)
0013b8  97802001  and r1, r1, r18
0013bc  93001804  setlt.u r1, r16, r1
0013c0  9bb0b000  slli r1, r1, 11
0013c4  67001ff2  storeli.w r1, -1792(r30)
0013c8  9f000020  addli r1, zero, 4096
0013cc  e74f1ff0  storeli.w r1, -1796(r30)
0013d0  e3006ff3  loadli.w r1,  -1616(r30)
0013d4  37e01001  beq r1, r17, 24
0013d8  e3006ff3  loadli.w r1,  -1616(r30)
0013dc  97802001  and r1, r1, r18
0013e0  93001804  setlt.u r1, r16, r1
0013e4  9bb0c000  slli r1, r1, 12
0013e8  e74f1ff0  storeli.w r1, -1796(r30)
0013ec  9f000040  addli r1, zero, 8192
0013f0  e70f1ff0  storeli.w r1, -1800(r30)
0013f4  e3405ff3  loadli.w r1,  -1620(r30)
0013f8  37e01001  beq r1, r17, 24
0013fc  e3405ff3  loadli.w r1,  -1620(r30)
001400  97802001  and r1, r1, r18
001404  93001804  setlt.u r1, r16, r1
001408  9bb0d000  slli r1, r1, 13
00140c  e70f1ff0  storeli.w r1, -1800(r30)
001410  ab400000  lui r1, 4
001414  674f1ff0  storeli.w r1, -1804(r30)
001418  e3005ff3  loadli.w r1,  -1624(r30)
00141c  37e01001  beq r1, r17, 24
001420  e3005ff3  loadli.w r1,  -1624(r30)
001424  97802001  and r1, r1, r18
001428  93001804  setlt.u r1, r16, r1
00142c  9bb0e000  slli r1, r1, 14
001430  674f1ff0  storeli.w r1, -1804(r30)
001434  e3404ff3  loadli.w r1,  -1628(r30)
001438  e70c6ff1  storeli.w r22, -1848(r30)
00143c  2b8b0000  lui r22, 8
001440  37d01001  beq r1, r17, 20
001444  e3404ff3  loadli.w r1,  -1628(r30)
001448  97802001  and r1, r1, r18
00144c  93001804  setlt.u r1, r16, r1
001450  1bbbf000  slli r22, r1, 15
001454  e3004ff3  loadli.w r1,  -1632(r30)
001458  670caff1  storeli.w r26, -1856(r30)
00145c  1f2d0000  addli r26, zero, 2
001460  37d01001  beq r1, r17, 20
001464  e3004ff3  loadli.w r1,  -1632(r30)
001468  97802001  and r1, r1, r18
00146c  93001804  setlt.u r1, r16, r1
001470  1bbd1000  slli r26, r1, 1
001474  e3403ff3  loadli.w r1,  -1636(r30)
001478  67076ff0  storeli.w r6, -1936(r30)
00147c  1f430000  addli r6, zero, 4
001480  674c9ff1  storeli.w r25, -1852(r30)
001484  37d01001  beq r1, r17, 20
001488  e3403ff3  loadli.w r1,  -1636(r30)
00148c  97802001  and r1, r1, r18
001490  93001804  setlt.u r1, r16, r1
001494  1bb32000  slli r6, r1, 2
001498  e3003ff3  loadli.w r1,  -1640(r30)
00149c  9f0c1000  addli r25, zero, 8
0014a0  37d01001  beq r1, r17, 20
0014a4  e3003ff3  loadli.w r1,  -1640(r30)
0014a8  97802001  and r1, r1, r18
0014ac  93001804  setlt.u r1, r16, r1
0014b0  9bbc3000  slli r25, r1, 3
0014b4  e3402ff3  loadli.w r1,  -1644(r30)
0014b8  67472ff0  storeli.w r2, -1932(r30)
0014bc  1f012000  addli r2, zero, 16
0014c0  37d01001  beq r1, r17, 20
0014c4  e3402ff3  loadli.w r1,  -1644(r30)
0014c8  97802001  and r1, r1, r18
0014cc  93001804  setlt.u r1, r16, r1
0014d0  1bb14000  slli r2, r1, 4
0014d4  e7052ff0  storeli.w r2, -1960(r30)
0014d8  63012ff3  loadli.w r2,  -1648(r30)
0014dc  9f004000  addli r1, zero, 32
0014e0  37501101  beq r2, r17, 20
0014e4  e3002ff3  loadli.w r1,  -1648(r30)
0014e8  97802001  and r1, r1, r18
0014ec  93001804  setlt.u r1, r16, r1
0014f0  9bb05000  slli r1, r1, 5
0014f4  1f018000  addli r2, zero, 64
0014f8  e74e2ff0  storeli.w r2, -1812(r30)
0014fc  63411ff3  loadli.w r2,  -1652(r30)
001500  37601101  beq r2, r17, 24
001504  63411ff3  loadli.w r2,  -1652(r30)
001508  17012101  and r2, r2, r18
00150c  13012804  setlt.u r2, r16, r2
001510  1b316100  slli r2, r2, 6
001514  e74e2ff0  storeli.w r2, -1812(r30)
001518  1f010001  addli r2, zero, 128
00151c  e70e2ff0  storeli.w r2, -1816(r30)
001520  63011ff3  loadli.w r2,  -1656(r30)
001524  37601101  beq r2, r17, 24
001528  63011ff3  loadli.w r2,  -1656(r30)
00152c  17012101  and r2, r2, r18
001530  13012804  setlt.u r2, r16, r2
001534  1b317100  slli r2, r2, 7
001538  e70e2ff0  storeli.w r2, -1816(r30)
00153c  1f010002  addli r2, zero, 256
001540  674e2ff0  storeli.w r2, -1820(r30)
001544  63410ff3  loadli.w r2,  -1660(r30)
001548  37601101  beq r2, r17, 24
00154c  63410ff3  loadli.w r2,  -1660(r30)
001550  17012101  and r2, r2, r18
001554  13012804  setlt.u r2, r16, r2
001558  1b318100  slli r2, r2, 8
00155c  674e2ff0  storeli.w r2, -1820(r30)
001560  1f010004  addli r2, zero, 512
001564  670e2ff0  storeli.w r2, -1824(r30)
001568  63010ff3  loadli.w r2,  -1664(r30)
00156c  37601101  beq r2, r17, 24
001570  63010ff3  loadli.w r2,  -1664(r30)
001574  17012101  and r2, r2, r18
001578  13012804  setlt.u r2, r16, r2
00157c  1b319100  slli r2, r2, 9
001580  670e2ff0  storeli.w r2, -1824(r30)
001584  1f010008  addli r2, zero, 1024
001588  e74d2ff0  storeli.w r2, -1828(r30)
00158c  6341fff2  loadli.w r2,  -1668(r30)
001590  37601101  beq r2, r17, 24
001594  6341fff2  loadli.w r2,  -1668(r30)
001598  17012101  and r2, r2, r18
00159c  13012804  setlt.u r2, r16, r2
0015a0  1b31a100  slli r2, r2, 10
0015a4  e74d2ff0  storeli.w r2, -1828(r30)
0015a8  1f010010  addli r2, zero, 2048
0015ac  e70d2ff0  storeli.w r2, -1832(r30)
0015b0  6301fff2  loadli.w r2,  -1672(r30)
0015b4  37601101  beq r2, r17, 24
0015b8  6301fff2  loadli.w r2,  -1672(r30)
0015bc  17012101  and r2, r2, r18
0015c0  13012804  setlt.u r2, r16, r2
0015c4  1b31b100  slli r2, r2, 11
0015c8  e70d2ff0  storeli.w r2, -1832(r30)
0015cc  1f010020  addli r2, zero, 4096
0015d0  674d2ff0  storeli.w r2, -1836(r30)
0015d4  6341eff2  loadli.w r2,  -1676(r30)
0015d8  37601101  beq r2, r17, 24
0015dc  6341eff2  loadli.w r2,  -1676(r30)
0015e0  17012101  and r2, r2, r18
0015e4  13012804  setlt.u r2, r16, r2
0015e8  1b31c100  slli r2, r2, 12
0015ec  674d2ff0  storeli.w r2, -1836(r30)
0015f0  6301eff2  loadli.w r2,  -1680(r30)
0015f4  e7441ff0  storeli.w r1, -1972(r30)
0015f8  9f000040  addli r1, zero, 8192
0015fc  37501101  beq r2, r17, 20
001600  6301eff2  loadli.w r2,  -1680(r30)
001604  17012101  and r2, r2, r18
001608  13012804  setlt.u r2, r16, r2
00160c  9b30d100  slli r1, r2, 13
001610  6341dff2  loadli.w r2,  -1684(r30)
001614  e7041ff0  storeli.w r1, -1976(r30)
001618  ab400000  lui r1, 4
00161c  37501101  beq r2, r17, 20
001620  6341dff2  loadli.w r2,  -1684(r30)
001624  17012101  and r2, r2, r18
001628  13012804  setlt.u r2, r16, r2
00162c  9b30e100  slli r1, r2, 14
001630  2b810000  lui r2, 8
001634  670f2ff0  storeli.w r2, -1808(r30)
001638  6301dff2  loadli.w r2,  -1688(r30)
00163c  bb661103  bneq r2, r17, 1464
001640  6341cff2  loadli.w r2,  -1692(r30)
001644  3b371103  bneq r2, r17, 1484
001648  6301cff2  loadli.w r2,  -1696(r30)
00164c  3b771103  bneq r2, r17, 1500
001650  6341bff2  loadli.w r2,  -1700(r30)
001654  bb371103  bneq r2, r17, 1516
001658  6301bff2  loadli.w r2,  -1704(r30)
00165c  bb771103  bneq r2, r17, 1532
001660  6341aff2  loadli.w r2,  -1708(r30)
001664  3b381103  bneq r2, r17, 1548
001668  6301aff2  loadli.w r2,  -1712(r30)
00166c  3b781103  bneq r2, r17, 1564
001670  63419ff2  loadli.w r2,  -1716(r30)
001674  bb381103  bneq r2, r17, 1580
001678  63019ff2  loadli.w r2,  -1720(r30)
00167c  bb781103  bneq r2, r17, 1596
001680  63418ff2  loadli.w r2,  -1724(r30)
001684  3b391103  bneq r2, r17, 1612
001688  63018ff2  loadli.w r2,  -1728(r30)
00168c  37501101  beq r2, r17, 20
001690  63018ff2  loadli.w r2,  -1728(r30)
001694  17012101  and r2, r2, r18
001698  13012804  setlt.u r2, r16, r2
00169c  1b3aa100  slli r20, r2, 10
0016a0  63417ff2  loadli.w r2,  -1732(r30)
0016a4  670abff1  storeli.w r27, -1888(r30)
0016a8  37501101  beq r2, r17, 20
0016ac  63417ff2  loadli.w r2,  -1732(r30)
0016b0  17012101  and r2, r2, r18
0016b4  13012804  setlt.u r2, r16, r2
0016b8  1b3eb100  slli r28, r2, 11
0016bc  63017ff2  loadli.w r2,  -1736(r30)
0016c0  67451ff0  storeli.w r1, -1964(r30)
0016c4  e708bff0  storeli.w r11, -1912(r30)
0016c8  e745aff0  storeli.w r10, -1956(r30)
0016cc  67059ff0  storeli.w r9, -1968(r30)
0016d0  e7498ff1  storeli.w r24, -1892(r30)
0016d4  37501101  beq r2, r17, 20
0016d8  63017ff2  loadli.w r2,  -1736(r30)
0016dc  17012101  and r2, r2, r18
0016e0  13012804  setlt.u r2, r16, r2
0016e4  1b34c100  slli r8, r2, 12
0016e8  63416ff2  loadli.w r2,  -1740(r30)
0016ec  9f000300  addli r1, r6, 0
0016f0  e70a8ff0  storeli.w r8, -1880(r30)
0016f4  67497ff1  storeli.w r23, -1900(r30)
0016f8  37501101  beq r2, r17, 20
0016fc  63416ff2  loadli.w r2,  -1740(r30)
001700  17012101  and r2, r2, r18
001704  13012804  setlt.u r2, r16, r2
001708  9b36d100  slli r13, r2, 13
00170c  1f030d00  addli r6, r26, 0
001710  1f040e00  addli r8, r28, 0
001714  1f050a00  addli r10, r20, 0
001718  9f8d0900  addli r27, r19, 0
00171c  9f850700  addli r11, r15, 0
001720  9f840a00  addli r9, r21, 0
001724  674adff0  storeli.w r13, -1884(r30)
001728  37401601  beq r12, r17, 16
00172c  17012601  and r2, r12, r18
001730  13012804  setlt.u r2, r16, r2
001734  1b37e100  slli r14, r2, 14
001738  e34a5ff1  loadli.w r21,  -1876(r30)
00173c  634d7ff1  loadli.w r26,  -1860(r30)
001740  6744eff0  storeli.w r14, -1980(r30)
001744  630c6ff1  loadli.w r24,  -1872(r30)
001748  e34b6ff1  loadli.w r23,  -1868(r30)
00174c  6704cff0  storeli.w r12, -1984(r30)
001750  17812a01  and r2, r21, r18
001754  170e2d01  and r28, r26, r18
001758  93861a01  seteq r13, r21, r17
00175c  13071d01  seteq r14, r26, r17
001760  97072c01  and r15, r24, r18
001764  130a1c01  seteq r20, r24, r17
001768  17862b01  and r12, r23, r18
00176c  93891b01  seteq r19, r23, r17
001770  13012804  setlt.u r2, r16, r2
001774  130ec805  setlt.u r28, r16, r28
001778  9307f804  setlt.u r15, r16, r15
00177c  1306c804  setlt.u r12, r16, r12
001780  17912600  or r2, r13, r2
001784  9716c701  or r13, r14, r28
001788  63073ff1  loadli.w r14,  -1896(r30)
00178c  1796c900  or r12, r19, r12
001790  1716c300  or r12, r6, r12
001794  17112700  or r2, r14, r2
001798  63072ff1  loadli.w r14,  -1904(r30)
00179c  17161600  or r12, r12, r1
0017a0  e300bff0  loadli.w r1,  -1960(r30)
0017a4  1717e100  or r14, r2, r14
0017a8  1711fa00  or r2, r20, r15
0017ac  e3470ff1  loadli.w r15,  -1916(r30)
0017b0  17169601  or r12, r12, r25
0017b4  17131600  or r6, r12, r1
0017b8  13860a01  seteq r12, r21, r16
0017bc  e30a9ff3  loadli.w r21,  -1592(r30)
0017c0  17912100  or r2, r3, r2
0017c4  e341dff1  loadli.w r3,  -1812(r30)
0017c8  e3409ff0  loadli.w r1,  -1972(r30)
0017cc  1717f700  or r14, r14, r15
0017d0  e3075ff2  loadli.w r15,  -1752(r30)
0017d4  17114100  or r2, r2, r4
0017d8  138e0a01  seteq r28, r21, r16
0017dc  e34a8ff3  loadli.w r21,  -1596(r30)
0017e0  97101300  or r1, r6, r1
0017e4  9796d700  or r13, r15, r13
0017e8  e3471ff1  loadli.w r15,  -1908(r30)
0017ec  17115100  or r2, r2, r5
0017f0  93020d01  seteq r5, r26, r16
0017f4  97903000  or r1, r1, r3
0017f8  e301dff1  loadli.w r3,  -1816(r30)
0017fc  138d0a01  seteq r26, r21, r16
001800  e30a8ff3  loadli.w r21,  -1600(r30)
001804  17117100  or r2, r2, r7
001808  1717f700  or r14, r14, r15
00180c  e3474ff2  loadli.w r15,  -1756(r30)
001810  97903000  or r1, r1, r3
001814  e301aff0  loadli.w r3,  -1968(r30)
001818  138a0a01  seteq r20, r21, r16
00181c  e34a7ff3  loadli.w r21,  -1604(r30)
001820  9796f600  or r13, r13, r15
001824  e3070ff1  loadli.w r15,  -1920(r30)
001828  17113100  or r2, r2, r3
00182c  e341cff1  loadli.w r3,  -1820(r30)
001830  1717f700  or r14, r14, r15
001834  e3074ff2  loadli.w r15,  -1760(r30)
001838  97903000  or r1, r1, r3
00183c  e341bff0  loadli.w r3,  -1956(r30)
001840  9796f600  or r13, r13, r15
001844  e347fff0  loadli.w r15,  -1924(r30)
001848  e74e4ff1  storeli.w r20, -1812(r30)
00184c  138a0a01  seteq r20, r21, r16
001850  e30a7ff3  loadli.w r21,  -1608(r30)
001854  17113100  or r2, r2, r3
001858  e301cff1  loadli.w r3,  -1824(r30)
00185c  1717f700  or r14, r14, r15
001860  e3473ff2  loadli.w r15,  -1764(r30)
001864  97903000  or r1, r1, r3
001868  e3011ff1  loadli.w r3,  -1912(r30)
00186c  9796f600  or r13, r13, r15
001870  e307fff0  loadli.w r15,  -1928(r30)
001874  17113100  or r2, r2, r3
001878  e341bff1  loadli.w r3,  -1828(r30)
00187c  1717f700  or r14, r14, r15
001880  e3073ff2  loadli.w r15,  -1768(r30)
001884  1711b100  or r2, r2, r11
001888  97903000  or r1, r1, r3
00188c  e301bff1  loadli.w r3,  -1832(r30)
001890  1711b101  or r2, r2, r27
001894  9796f600  or r13, r13, r15
001898  e347eff0  loadli.w r15,  -1932(r30)
00189c  97903000  or r1, r1, r3
0018a0  e341aff1  loadli.w r3,  -1836(r30)
0018a4  1711a100  or r2, r2, r10
0018a8  1717f700  or r14, r14, r15
0018ac  e3472ff2  loadli.w r15,  -1772(r30)
0018b0  97903000  or r1, r1, r3
0018b4  e3019ff0  loadli.w r3,  -1976(r30)
0018b8  9796f600  or r13, r13, r15
0018bc  e307eff0  loadli.w r15,  -1936(r30)
0018c0  97993000  or r19, r1, r3
0018c4  e3009ff1  loadli.w r1,  -1848(r30)
0018c8  1717f700  or r14, r14, r15
0018cc  e3072ff2  loadli.w r15,  -1776(r30)
0018d0  9796f600  or r13, r13, r15
0018d4  e347dff0  loadli.w r15,  -1940(r30)
0018d8  1717f700  or r14, r14, r15
0018dc  e3471ff2  loadli.w r15,  -1780(r30)
0018e0  9796f600  or r13, r13, r15
0018e4  e307dff0  loadli.w r15,  -1944(r30)
0018e8  1717f700  or r14, r14, r15
0018ec  e3071ff2  loadli.w r15,  -1784(r30)
0018f0  9796f600  or r13, r13, r15
0018f4  e347cff0  loadli.w r15,  -1948(r30)
0018f8  1717f700  or r14, r14, r15
0018fc  e3470ff2  loadli.w r15,  -1788(r30)
001900  9796f600  or r13, r13, r15
001904  e307cff0  loadli.w r15,  -1952(r30)
001908  1717f700  or r14, r14, r15
00190c  e3070ff2  loadli.w r15,  -1792(r30)
001910  9796f600  or r13, r13, r15
001914  e3076ff2  loadli.w r15,  -1744(r30)
001918  1717f700  or r14, r14, r15
00191c  e347fff1  loadli.w r15,  -1796(r30)
001920  9796f600  or r13, r13, r15
001924  e3475ff2  loadli.w r15,  -1748(r30)
001928  1717f700  or r14, r14, r15
00192c  e307fff1  loadli.w r15,  -1800(r30)
001930  e70f4ff1  storeli.w r20, -1800(r30)
001934  138a0a01  seteq r20, r21, r16
001938  e34a6ff3  loadli.w r21,  -1612(r30)
00193c  fe0107e0  vmmov mr3, r14
001940  6347eff1  loadli.w r14,  -1804(r30)
001944  9796f600  or r13, r13, r15
001948  93870401  seteq r15, r9, r16
00194c  9796e600  or r13, r13, r14
001950  13870001  seteq r14, r1, r16
001954  e3402ff1  loadli.w r1,  -1900(r30)
001958  67004ff3  storeli.w r20, -1792(r30)
00195c  138a0a01  seteq r20, r21, r16
001960  97966601  or r13, r13, r22
001964  171b8100  or r22, r2, r8
001968  e30a5ff1  loadli.w r21,  -1880(r30)
00196c  7e8106e0  vmmov mr2, r13
001970  93860001  seteq r13, r1, r16
001974  e3403ff1  loadli.w r1,  -1892(r30)
001978  971a5b01  or r21, r22, r21
00197c  634baff0  loadli.w r22,  -1964(r30)
001980  93850001  seteq r11, r1, r16
001984  e3408ff1  loadli.w r1,  -1852(r30)
001988  97996901  or r19, r19, r22
00198c  634b4ff1  loadli.w r22,  -1884(r30)
001990  e7004ff3  storeli.w r20, -1784(r30)
001994  630a6ff3  loadli.w r20,  -1616(r30)
001998  13850001  seteq r10, r1, r16
00199c  e3008ff1  loadli.w r1,  -1856(r30)
0019a0  179b6a01  or r22, r21, r22
0019a4  e30aeff1  loadli.w r21,  -1808(r30)
0019a8  130a0a01  seteq r20, r20, r16
0019ac  93840001  seteq r9, r1, r16
0019b0  e3004ff1  loadli.w r1,  -1888(r30)
0019b4  979a5901  or r21, r19, r21
0019b8  e3498ff0  loadli.w r19,  -1980(r30)
0019bc  13840001  seteq r8, r1, r16
0019c0  e340fff3  loadli.w r1,  -1540(r30)
0019c4  7e800ae0  vmmov mr0, r21
0019c8  ab8a0000  lui r21, 8
0019cc  97193b01  or r19, r22, r19
0019d0  67424ff3  storeli.w r20, -1756(r30)
0019d4  634a5ff3  loadli.w r20,  -1620(r30)
0019d8  13810001  seteq r2, r1, r16
0019dc  e300fff3  loadli.w r1,  -1544(r30)
0019e0  130a0a01  seteq r20, r20, r16
0019e4  938d0001  seteq r27, r1, r16
0019e8  e340eff3  loadli.w r1,  -1548(r30)
0019ec  938c0001  seteq r25, r1, r16
0019f0  e300eff3  loadli.w r1,  -1552(r30)
0019f4  93800001  seteq r1, r1, r16
0019f8  e7024ff3  storeli.w r20, -1752(r30)
0019fc  630a5ff3  loadli.w r20,  -1624(r30)
001a00  130a0a01  seteq r20, r20, r16
001a04  674f1ff0  storeli.w r1, -1804(r30)
001a08  e340dff3  loadli.w r1,  -1556(r30)
001a0c  93800001  seteq r1, r1, r16
001a10  e7424ff3  storeli.w r20, -1748(r30)
001a14  634a4ff3  loadli.w r20,  -1628(r30)
001a18  130a0a01  seteq r20, r20, r16
001a1c  e74f1ff0  storeli.w r1, -1796(r30)
001a20  e300dff3  loadli.w r1,  -1560(r30)
001a24  93800001  seteq r1, r1, r16
001a28  67034ff3  storeli.w r20, -1744(r30)
001a2c  138a0b01  seteq r20, r23, r16
001a30  67401ff2  storeli.w r1, -1788(r30)
001a34  e340cff3  loadli.w r1,  -1564(r30)
001a38  e7414ff3  storeli.w r20, -1764(r30)
001a3c  630a4ff3  loadli.w r20,  -1632(r30)
001a40  93800001  seteq r1, r1, r16
001a44  130a0a01  seteq r20, r20, r16
001a48  e7401ff2  storeli.w r1, -1780(r30)
001a4c  e300cff3  loadli.w r1,  -1568(r30)
001a50  67414ff3  storeli.w r20, -1772(r30)
001a54  634a3ff3  loadli.w r20,  -1636(r30)
001a58  93800001  seteq r1, r1, r16
001a5c  130a0a01  seteq r20, r20, r16
001a60  67011ff2  storeli.w r1, -1776(r30)
001a64  e340bff3  loadli.w r1,  -1572(r30)
001a68  e7014ff3  storeli.w r20, -1768(r30)
001a6c  630a3ff3  loadli.w r20,  -1640(r30)
001a70  93830001  seteq r7, r1, r16
001a74  e300bff3  loadli.w r1,  -1576(r30)
001a78  130a0a01  seteq r20, r20, r16
001a7c  13830001  seteq r6, r1, r16
001a80  e340aff3  loadli.w r1,  -1580(r30)
001a84  13820001  seteq r4, r1, r16
001a88  e300aff3  loadli.w r1,  -1584(r30)
001a8c  67024ff3  storeli.w r20, -1760(r30)
001a90  634a2ff3  loadli.w r20,  -1644(r30)
001a94  93810001  seteq r3, r1, r16
001a98  e3409ff3  loadli.w r1,  -1588(r30)
001a9c  130a0a01  seteq r20, r20, r16
001aa0  93800001  seteq r1, r1, r16
001aa4  e7094ff3  storeli.w r20, -1640(r30)
001aa8  630a2ff3  loadli.w r20,  -1648(r30)
001aac  130a0a01  seteq r20, r20, r16
001ab0  e7494ff3  storeli.w r20, -1636(r30)
001ab4  634a1ff3  loadli.w r20,  -1652(r30)
001ab8  130a0a01  seteq r20, r20, r16
001abc  670a4ff3  storeli.w r20, -1632(r30)
001ac0  630a1ff3  loadli.w r20,  -1656(r30)
001ac4  130a0a01  seteq r20, r20, r16
001ac8  674a4ff3  storeli.w r20, -1628(r30)
001acc  634a0ff3  loadli.w r20,  -1660(r30)
001ad0  130a0a01  seteq r20, r20, r16
001ad4  e70a4ff3  storeli.w r20, -1624(r30)
001ad8  630a0ff3  loadli.w r20,  -1664(r30)
001adc  130a0a01  seteq r20, r20, r16
001ae0  674c4ff3  storeli.w r20, -1596(r30)
001ae4  634afff2  loadli.w r20,  -1668(r30)
001ae8  130a0a01  seteq r20, r20, r16
001aec  674d4ff3  storeli.w r20, -1580(r30)
001af0  630afff2  loadli.w r20,  -1672(r30)
001af4  130a0a01  seteq r20, r20, r16
001af8  670e4ff3  storeli.w r20, -1568(r30)
001afc  634aeff2  loadli.w r20,  -1676(r30)
001b00  130a0a01  seteq r20, r20, r16
001b04  670f4ff3  storeli.w r20, -1552(r30)
001b08  630aeff2  loadli.w r20,  -1680(r30)
001b0c  130a0a01  seteq r20, r20, r16
001b10  e70f4ff3  storeli.w r20, -1544(r30)
001b14  634adff2  loadli.w r20,  -1684(r30)
001b18  130a0a01  seteq r20, r20, r16
001b1c  e74f4ff3  storeli.w r20, -1540(r30)
001b20  630adff2  loadli.w r20,  -1688(r30)
001b24  930b0a01  seteq r23, r20, r16
001b28  130a0c01  seteq r20, r24, r16
001b2c  674b4ff3  storeli.w r20, -1612(r30)
001b30  634acff2  loadli.w r20,  -1692(r30)
001b34  130a0a01  seteq r20, r20, r16
001b38  e74a4ff3  storeli.w r20, -1620(r30)
001b3c  630acff2  loadli.w r20,  -1696(r30)
001b40  130a0a01  seteq r20, r20, r16
001b44  670b4ff3  storeli.w r20, -1616(r30)
001b48  634abff2  loadli.w r20,  -1700(r30)
001b4c  130a0a01  seteq r20, r20, r16
001b50  e70b4ff3  storeli.w r20, -1608(r30)
001b54  630abff2  loadli.w r20,  -1704(r30)
001b58  130a0a01  seteq r20, r20, r16
001b5c  e74b4ff3  storeli.w r20, -1604(r30)
001b60  634aaff2  loadli.w r20,  -1708(r30)
001b64  130a0a01  seteq r20, r20, r16
001b68  670c4ff3  storeli.w r20, -1600(r30)
001b6c  630aaff2  loadli.w r20,  -1712(r30)
001b70  130a0a01  seteq r20, r20, r16
001b74  e70c4ff3  storeli.w r20, -1592(r30)
001b78  634a9ff2  loadli.w r20,  -1716(r30)
001b7c  130a0a01  seteq r20, r20, r16
001b80  e74c4ff3  storeli.w r20, -1588(r30)
001b84  630a9ff2  loadli.w r20,  -1720(r30)
001b88  130a0a01  seteq r20, r20, r16
001b8c  670d4ff3  storeli.w r20, -1584(r30)
001b90  634a8ff2  loadli.w r20,  -1724(r30)
001b94  130a0a01  seteq r20, r20, r16
001b98  e70d4ff3  storeli.w r20, -1576(r30)
001b9c  630a8ff2  loadli.w r20,  -1728(r30)
001ba0  130a0a01  seteq r20, r20, r16
001ba4  e74d4ff3  storeli.w r20, -1572(r30)
001ba8  634a7ff2  loadli.w r20,  -1732(r30)
001bac  130a0a01  seteq r20, r20, r16
001bb0  674e4ff3  storeli.w r20, -1564(r30)
001bb4  630a7ff2  loadli.w r20,  -1736(r30)
001bb8  130a0a01  seteq r20, r20, r16
001bbc  e70e4ff3  storeli.w r20, -1560(r30)
001bc0  634a6ff2  loadli.w r20,  -1740(r30)
001bc4  130a0a01  seteq r20, r20, r16
001bc8  e74e4ff3  storeli.w r20, -1556(r30)
001bcc  630a8ff0  loadli.w r20,  -1984(r30)
001bd0  130a0a01  seteq r20, r20, r16
001bd4  674f4ff3  storeli.w r20, -1548(r30)
001bd8  630a7ff1  loadli.w r20,  -1864(r30)
001bdc  130c0a01  seteq r24, r20, r16
001be0  37681af3  beq r20, r17, -6632
001be4  170a2a01  and r20, r20, r18
001be8  130a4805  setlt.u r20, r16, r20
001bec  9b3afa00  slli r21, r20, 15
001bf0  5bc1fcff  j -6648
001bf4  6301dff2  loadli.w r2,  -1688(r30)
001bf8  17012101  and r2, r2, r18
001bfc  13012804  setlt.u r2, r16, r2
001c00  1b31f100  slli r2, r2, 15
001c04  670f2ff0  storeli.w r2, -1808(r30)
001c08  6341cff2  loadli.w r2,  -1692(r30)
001c0c  b77811fd  beq r2, r17, -1476
001c10  6341cff2  loadli.w r2,  -1692(r30)
001c14  17012101  and r2, r2, r18
001c18  13012804  setlt.u r2, r16, r2
001c1c  9b311100  slli r3, r2, 1
001c20  6301cff2  loadli.w r2,  -1696(r30)
001c24  b73811fd  beq r2, r17, -1492
001c28  6301cff2  loadli.w r2,  -1696(r30)
001c2c  17012101  and r2, r2, r18
001c30  13012804  setlt.u r2, r16, r2
001c34  1b322100  slli r4, r2, 2
001c38  6341bff2  loadli.w r2,  -1700(r30)
001c3c  377811fd  beq r2, r17, -1508
001c40  6341bff2  loadli.w r2,  -1700(r30)
001c44  17012101  and r2, r2, r18
001c48  13012804  setlt.u r2, r16, r2
001c4c  9b323100  slli r5, r2, 3
001c50  6301bff2  loadli.w r2,  -1704(r30)
001c54  373811fd  beq r2, r17, -1524
001c58  6301bff2  loadli.w r2,  -1704(r30)
001c5c  17012101  and r2, r2, r18
001c60  13012804  setlt.u r2, r16, r2
001c64  9b334100  slli r7, r2, 4
001c68  6341aff2  loadli.w r2,  -1708(r30)
001c6c  b77711fd  beq r2, r17, -1540
001c70  6341aff2  loadli.w r2,  -1708(r30)
001c74  17012101  and r2, r2, r18
001c78  13012804  setlt.u r2, r16, r2
001c7c  9b345100  slli r9, r2, 5
001c80  6301aff2  loadli.w r2,  -1712(r30)
001c84  b73711fd  beq r2, r17, -1556
001c88  6301aff2  loadli.w r2,  -1712(r30)
001c8c  17012101  and r2, r2, r18
001c90  13012804  setlt.u r2, r16, r2
001c94  1b356100  slli r10, r2, 6
001c98  63419ff2  loadli.w r2,  -1716(r30)
001c9c  377711fd  beq r2, r17, -1572
001ca0  63419ff2  loadli.w r2,  -1716(r30)
001ca4  17012101  and r2, r2, r18
001ca8  13012804  setlt.u r2, r16, r2
001cac  9b357100  slli r11, r2, 7
001cb0  63019ff2  loadli.w r2,  -1720(r30)
001cb4  373711fd  beq r2, r17, -1588
001cb8  63019ff2  loadli.w r2,  -1720(r30)
001cbc  17012101  and r2, r2, r18
001cc0  13012804  setlt.u r2, r16, r2
001cc4  9b378100  slli r15, r2, 8
001cc8  63418ff2  loadli.w r2,  -1724(r30)
001ccc  b77611fd  beq r2, r17, -1604
001cd0  63418ff2  loadli.w r2,  -1724(r30)
001cd4  17012101  and r2, r2, r18
001cd8  13012804  setlt.u r2, r16, r2
001cdc  9b399100  slli r19, r2, 9
001ce0  63018ff2  loadli.w r2,  -1728(r30)
001ce4  bb3611fd  bneq r2, r17, -1620
001ce8  5b37ffff  j -1608
001cec  9f0e0fef  addli sp, r30, -2176
001cf0  9f8e0e11  addli sp, sp, 2176
001cf4  00a00300  mfence { lm, sm, gm }
001cf8  00100000  exit
001cfc  00100000  exit
001d00  00100000  exit
001d04  00100000  exit
001d08  00100000  exit
001d0c  00100000  exit
001d10  00100000  exit
001d14  00100000  exit
001d18  00100000  exit
001d1c  00100000  exit
001d20  00100000  exit
001d24  00100000  exit
001d28  00100000  exit
001d2c  00100000  exit
001d30  00100000  exit
001d34  00100000  exit
001d38  00100000  exit
001d3c  00100000  exit
001d40  00100000  exit
001d44  00100000  exit
001d48  00100000  exit
001d4c  00100000  exit
001d50  00100000  exit
001d54  00100000  exit
001d58  00100000  exit
001d5c  00100000  exit
001d60  00100000  exit
001d64  00100000  exit
001d68  00100000  exit
001d6c  00100000  exit
001d70  00100000  exit
001d74  00100000  exit
001d78  00100000  exit
001d7c  00100000  exit
001d80  00100000  exit
001d84  00100000  exit
001d88  00100000  exit
001d8c  00100000  exit
001d90  00100000  exit
001d94  00100000  exit
001d98  00100000  exit
001d9c  00100000  exit
001da0  00100000  exit
001da4  00100000  exit
001da8  00100000  exit
001dac  00100000  exit
001db0  00100000  exit
001db4  00100000  exit
001db8  00100000  exit
001dbc  00100000  exit
001dc0  00100000  exit
001dc4  00100000  exit
001dc8  00100000  exit
001dcc  00100000  exit
001dd0  00100000  exit
001dd4  00100000  exit
001dd8  00100000  exit
001ddc  00100000  exit
001de0  00100000  exit
001de4  00100000  exit
001de8  00100000  exit
001dec  00100000  exit
001df0  00100000  exit
001df4  00100000  exit
001df8  00100000  exit
001dfc  00100000  exit
001e00  00100000  exit
001e04  00100000  exit
001e08  00100000  exit
001e0c  00100000  exit
001e10  00100000  exit
001e14  00100000  exit
001e18  00100000  exit
001e1c  00100000  exit
001e20  00100000  exit
001e24  00100000  exit
001e28  00100000  exit
001e2c  00100000  exit
001e30  00100000  exit
001e34  00100000  exit
001e38  00100000  exit
001e3c  00100000  exit
001e40  00100000  exit
001e44  00100000  exit
001e48  00100000  exit
001e4c  00100000  exit
001e50  00100000  exit
001e54  00100000  exit
001e58  00100000  exit
001e5c  00100000  exit
001e60  00100000  exit
001e64  00100000  exit
001e68  00100000  exit
001e6c  00100000  exit
001e70  00100000  exit
001e74  00100000  exit
001e78  00100000  exit
001e7c  00100000  exit
001e80  00100000  exit
001e84  00100000  exit
001e88  00100000  exit
001e8c  00100000  exit
001e90  00100000  exit
001e94  00100000  exit
001e98  00100000  exit
001e9c  00100000  exit
001ea0  00100000  exit
001ea4  00100000  exit
001ea8  00100000  exit
001eac  00100000  exit
001eb0  00100000  exit
001eb4  00100000  exit
001eb8  00100000  exit
001ebc  00100000  exit
001ec0  00100000  exit
001ec4  00100000  exit
001ec8  00100000  exit
001ecc  00100000  exit
001ed0  00100000  exit
001ed4  00100000  exit
001ed8  00100000  exit
001edc  00100000  exit
001ee0  00100000  exit
001ee4  00100000  exit
001ee8  00100000  exit
001eec  00100000  exit
001ef0  00100000  exit
001ef4  00100000  exit
001ef8  00100000  exit
001efc  00100000  exit
001f00  00100000  exit
001f04  00100000  exit
001f08  00100000  exit
001f0c  00100000  exit
001f10  00100000  exit
001f14  00100000  exit
001f18  00100000  exit
001f1c  00100000  exit
001f20  00100000  exit
001f24  00100000  exit
001f28  00100000  exit
001f2c  00100000  exit
001f30  00100000  exit
001f34  00100000  exit
001f38  00100000  exit
