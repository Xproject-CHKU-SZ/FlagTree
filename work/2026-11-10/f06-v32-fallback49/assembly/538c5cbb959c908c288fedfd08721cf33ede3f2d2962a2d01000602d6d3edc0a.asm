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
0000dc  9f8e0eec  addli sp, sp, -2560
0000e0  1f8f8e13  addli r30, sp, 2496
0000e4  80510002  load_param_i r3, 0
0000e8  63413f00  loadli.w r2,  28(r30)
0000ec  e3003f00  loadli.w r1,  24(r30)
0000f0  63024f00  loadli.w r4,  32(r30)
0000f4  8b101120  mul.s r1, r2, r1
0000f8  8b904020  mul.s r1, r1, r4
0000fc  e7471fec  storeli.w r1, -2436(r30)
000100  cbe8301a  ble.s r1, r3, 13880
000104  80300002  core_id r1
000108  00d30002  load_param_i r6, 1
00010c  6b528f00  load.d r[5:6], 8(r30)
000110  1f04dfec  addli r8, r30, -2456
000114  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000118  9f0a2000  addli r21, zero, 16
00011c  1f060ff6  addli r12, r30, -1280
000120  1f180000  addli r16, zero, 1
000124  2b094000  lui r18, 1024
000128  ab0b803f  lui r23, 260096
00012c  1bc13000  srli r2, r1, 3
000130  9bb08000  slli r1, r1, 8
000134  67476fec  storeli.w r6, -2444(r30)
000138  6aa30a22  vor.u.mz vr6{mr1}, r21, vr0
00013c  1b017100  andi r2, r2, 7
000140  9b800070  andi r1, r1, 1792
000144  e7072fec  storeli.w r2, -2440(r30)
000148  1b31b100  slli r2, r2, 11
00014c  33830028  zext_int2long r[7:8], r1
000150  17111100  or r2, r2, r1
000154  b3000128  zext_int2long r[2:3], r2
000158  73301400  store.d r[2:3], 0(r8)
00015c  8b206210  add.ul r[2:3], r[5:6], r[7:8]
000160  1f02cfec  addli r4, r30, -2464
000164  1f040ff4  addli r8, r30, -1536
000168  73301200  store.d r[2:3], 0(r4)
00016c  aba0aaaa  lui r1, 699050
000170  2b01807f  lui r2, 522240
000174  9fa05015  addli r1, r1, 2730
000178  ea230122  vor.u.mz vr7{mr1}, r2, vr0
00017c  2b414c3f  lui r2, 259268
000180  7e8000e0  vmmov mr0, r1
000184  ab505555  lui r1, 349525
000188  1b1aa122  ori r20, r2, 554
00018c  9fd0a00a  addli r1, r1, 1365
000190  7e8100e0  vmmov mr2, r1
000194  ab700000  lui r1, 7
000198  9b98f0ff  ori r17, r1, 4095
00019c  ab20373d  lui r1, 250738
0001a0  9b993071  ori r19, r1, 1811
0001a4  9f000ff3  addli r1, r30, -1664
0001a8  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
0001ac  9f008ff3  addli r1, r30, -1600
0001b0  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0001b4  9f008ff2  addli r1, r30, -1728
0001b8  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0001bc  db220000  j 276
0001c0  7abb0140  vextracti.s r22, 0(vr3)
0001c4  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0001c8  9f1a0000  addli r21, zero, 1
0001cc  fe810ae0  vmmov mr3, r21
0001d0  9f2a0000  addli r21, zero, 2
0001d4  ea213b36  vor.u.mh vr3{mr3}, r22, vr3
0001d8  fe810ae0  vmmov mr3, r21
0001dc  9f0a2000  addli r21, zero, 16
0001e0  eaa13736  vor.u.mh vr3{mr3}, r15, vr3
0001e4  9f470000  addli r15, zero, 4
0001e8  fe8107e0  vmmov mr3, r15
0001ec  9f071000  addli r15, zero, 8
0001f0  eaa13c36  vor.u.mh vr3{mr3}, r25, vr3
0001f4  fe8107e0  vmmov mr3, r15
0001f8  9f072000  addli r15, zero, 16
0001fc  ea213c36  vor.u.mh vr3{mr3}, r24, vr3
000200  fe8107e0  vmmov mr3, r15
000204  eaa13536  vor.u.mh vr3{mr3}, r11, vr3
000208  9f054000  addli r11, zero, 32
00020c  fe8105e0  vmmov mr3, r11
000210  9f058000  addli r11, zero, 64
000214  eaa13636  vor.u.mh vr3{mr3}, r13, vr3
000218  fe8105e0  vmmov mr3, r11
00021c  ea213236  vor.u.mh vr3{mr3}, r4, vr3
000220  1f020001  addli r4, zero, 128
000224  fe0102e0  vmmov mr3, r4
000228  1f020002  addli r4, zero, 256
00022c  eaa13236  vor.u.mh vr3{mr3}, r5, vr3
000230  fe0102e0  vmmov mr3, r4
000234  1f020004  addli r4, zero, 512
000238  ea213536  vor.u.mh vr3{mr3}, r10, vr3
00023c  fe0102e0  vmmov mr3, r4
000240  1f020008  addli r4, zero, 1024
000244  eaa13436  vor.u.mh vr3{mr3}, r9, vr3
000248  fe0102e0  vmmov mr3, r4
00024c  1f020010  addli r4, zero, 2048
000250  ea213436  vor.u.mh vr3{mr3}, r8, vr3
000254  fe0102e0  vmmov mr3, r4
000258  1f020020  addli r4, zero, 4096
00025c  1f040ff4  addli r8, r30, -1536
000260  eaa13336  vor.u.mh vr3{mr3}, r7, vr3
000264  fe0102e0  vmmov mr3, r4
000268  1f020040  addli r4, zero, 8192
00026c  ea213736  vor.u.mh vr3{mr3}, r14, vr3
000270  fe0102e0  vmmov mr3, r4
000274  2b420000  lui r4, 4
000278  ea213336  vor.u.mh vr3{mr3}, r6, vr3
00027c  fe0102e0  vmmov mr3, r4
000280  ea213136  vor.u.mh vr3{mr3}, r2, vr3
000284  2b810000  lui r2, 8
000288  fe0101e0  vmmov mr3, r2
00028c  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
000290  eb500f01  load.d r[2:3], 16(r30)
000294  6b520f93  load.d r[5:6], -1744(r30)
000298  8ba04010  add.ul r[2:3], r[2:3], r[5:6]
00029c  e3427ff2  loadli.w r5,  -1732(r30)
0002a0  2b0200f0  lui r4, 983040
0002a4  eaf03ac0  vsrl.p vr1, r21, vr3
0002a8  17924200  or r4, r5, r4
0002ac  46001e14  vstore.mh vr1{mr2}, 0(r28)
0002b0  00a00000  mfence { lm }
0002b4  7fb2c000  s_lm2gm r4, r12, 0(r[2:3])
0002b8  e340efec  loadli.w r1,  -2444(r30)
0002bc  00a00000  mfence { lm }
0002c0  8b911110  add.s r3, r3, r1
0002c4  e340ffec  loadli.w r1,  -2436(r30)
0002c8  3fa01100  blt.s r3, r1, 8
0002cc  db8d0600  j 13420
0002d0  e3004f00  loadli.w r1,  32(r30)
0002d4  63413f00  loadli.w r2,  28(r30)
0002d8  6303ffec  loadli.w r6,  -2440(r30)
0002dc  9f04dfec  addli r9, r30, -2456
0002e0  8b901130  div.s r1, r3, r1
0002e4  8b902030  div.s r1, r1, r2
0002e8  2b0100f0  lui r2, 983040
0002ec  9bb03000  slli r1, r1, 3
0002f0  33920028  sext_int2long r[5:6], r1
0002f4  97101300  or r1, r6, r1
0002f8  1f331000  addli r6, zero, 11
0002fc  17326202  sll.d r[5:6], r[5:6], r6
000300  6bd30400  load.d r[7:8], 0(r9)
000304  9bf00020  setlti r1, r1, 512
000308  9bb08000  slli r1, r1, 8
00030c  17136202  or.d r[7:8], r[5:6], r[7:8]
000310  6b520f00  load.d r[5:6], 0(r30)
000314  e7431ff2  storeli.w r1, -1732(r30)
000318  97902000  or r1, r1, r2
00031c  73386f92  store.d r[7:8], -1744(r30)
000320  0b226210  add.ul r[5:6], r[5:6], r[7:8]
000324  ff20c200  l_gm2lm r1, r12, 0(r[5:6])
000328  9f000002  addli r1, zero, 256
00032c  00a00000  mfence { lm }
000330  97902000  or r1, r1, r2
000334  1f01cfec  addli r2, r30, -2464
000338  6b520100  load.d r[5:6], 0(r2)
00033c  ff208200  l_gm2lm r1, r8, 0(r[5:6])
000340  00a00000  mfence { lm }
000344  c2010600  vload.mz vr3{mr0}, 0(r12)
000348  42020400  vload.mz vr4{mr0}, 0(r8)
00034c  96914102  vadd.f.mz.rn vr3{mr1}, vr3, vr4
000350  6e3233c2  vsrl.s.mz vr4{mr1}, vr6, vr3
000354  e69201c0  vabs.f vr5, vr3
000358  ea343922  vor.s.mz vr9{mr1}, r18, vr3
00035c  6a324802  vand.s.mz vr4{mr1}, r16, vr4
000360  f6a15342  vlt.u.mz mr3{mr1}, vr7, vr5
000364  fe8001a0  vmmov r1, mr3
000368  1bc1f000  srli r2, r1, 15
00036c  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
000370  1b011100  andi r2, r2, 1
000374  12b44802  vadd.s.mz vr8{mr1}, r17, vr4
000378  3b300100  bneq r2, zero, 12
00037c  7a37f440  vextracti.s r14, 15(vr8)
000380  5b010000  j 8
000384  7ab7f440  vextracti.s r14, 15(vr9)
000388  1f0d0601  addli r26, r12, 128
00038c  1f0e8601  addli r28, r12, 192
000390  1f018fef  addli r2, r30, -2112
000394  1f020401  addli r4, r8, 128
000398  9f028401  addli r5, r8, 192
00039c  1f030fef  addli r6, r30, -2176
0003a0  9f0d8600  addli r27, r12, 64
0003a4  42030604  vload.mz vr6{mr2}, 0(r12)
0003a8  c2030404  vload.mz vr7{mr2}, 0(r8)
0003ac  c2000d04  vload.mz vr1{mr2}, 0(r26)
0003b0  c2850d04  vload.mz vr11{mr2}, 0(r27)
0003b4  42820d00  vload.mz vr4{mr0}, 0(r27)
0003b8  42050200  vload.mz vr10{mr0}, 0(r4)
0003bc  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
0003c0  c2000e04  vload.mz vr1{mr2}, 0(r28)
0003c4  1f018ff1  addli r2, r30, -1856
0003c8  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
0003cc  c2000204  vload.mz vr1{mr2}, 0(r4)
0003d0  1f018400  addli r2, r8, 64
0003d4  c2010104  vload.mz vr3{mr2}, 0(r2)
0003d8  c2020100  vload.mz vr5{mr0}, 0(r2)
0003dc  1f010ff0  addli r2, r30, -2048
0003e0  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
0003e4  c2800204  vload.mz vr1{mr2}, 0(r5)
0003e8  1f030ff1  addli r6, r30, -1920
0003ec  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
0003f0  c2000d00  vload.mz vr1{mr0}, 0(r26)
0003f4  1f038fee  addli r6, r30, -2240
0003f8  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
0003fc  c2000e00  vload.mz vr1{mr0}, 0(r28)
000400  1f038ff0  addli r6, r30, -1984
000404  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
000408  c2800200  vload.mz vr1{mr0}, 0(r5)
00040c  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
000410  1bc1e000  srli r2, r1, 14
000414  1b011100  andi r2, r2, 1
000418  3b300100  bneq r2, zero, 12
00041c  7a3be440  vextracti.s r22, 14(vr8)
000420  5b010000  j 8
000424  7abbe440  vextracti.s r22, 14(vr9)
000428  1bc1d000  srli r2, r1, 13
00042c  1b011100  andi r2, r2, 1
000430  3b300100  bneq r2, zero, 12
000434  7a31d440  vextracti.s r2, 13(vr8)
000438  5b010000  j 8
00043c  7ab1d440  vextracti.s r2, 13(vr9)
000440  1bc2c000  srli r4, r1, 12
000444  1b021200  andi r4, r4, 1
000448  3b300200  bneq r4, zero, 12
00044c  7a33c440  vextracti.s r6, 12(vr8)
000450  5b010000  j 8
000454  7ab3c440  vextracti.s r6, 12(vr9)
000458  1bc2b000  srli r4, r1, 11
00045c  1b021200  andi r4, r4, 1
000460  3b300200  bneq r4, zero, 12
000464  fa33b440  vextracti.s r7, 11(vr8)
000468  5b010000  j 8
00046c  fab3b440  vextracti.s r7, 11(vr9)
000470  1bc2a000  srli r4, r1, 10
000474  1b021200  andi r4, r4, 1
000478  3b300200  bneq r4, zero, 12
00047c  7a34a440  vextracti.s r8, 10(vr8)
000480  5b010000  j 8
000484  7ab4a440  vextracti.s r8, 10(vr9)
000488  1bc29000  srli r4, r1, 9
00048c  1b021200  andi r4, r4, 1
000490  3b300200  bneq r4, zero, 12
000494  fa349440  vextracti.s r9, 9(vr8)
000498  5b010000  j 8
00049c  fab49440  vextracti.s r9, 9(vr9)
0004a0  1bc28000  srli r4, r1, 8
0004a4  1b021200  andi r4, r4, 1
0004a8  3b300200  bneq r4, zero, 12
0004ac  7a358440  vextracti.s r10, 8(vr8)
0004b0  5b010000  j 8
0004b4  7ab58440  vextracti.s r10, 8(vr9)
0004b8  1bc27000  srli r4, r1, 7
0004bc  1b021200  andi r4, r4, 1
0004c0  3b300200  bneq r4, zero, 12
0004c4  fa327440  vextracti.s r5, 7(vr8)
0004c8  5b010000  j 8
0004cc  fab27440  vextracti.s r5, 7(vr9)
0004d0  1bc26000  srli r4, r1, 6
0004d4  1b021200  andi r4, r4, 1
0004d8  3b300200  bneq r4, zero, 12
0004dc  7a326440  vextracti.s r4, 6(vr8)
0004e0  5b010000  j 8
0004e4  7ab26440  vextracti.s r4, 6(vr9)
0004e8  9bc55000  srli r11, r1, 5
0004ec  9b851500  andi r11, r11, 1
0004f0  3bb00500  bneq r11, zero, 12
0004f4  fa365440  vextracti.s r13, 5(vr8)
0004f8  5b010000  j 8
0004fc  fab65440  vextracti.s r13, 5(vr9)
000500  9bc54000  srli r11, r1, 4
000504  9b851500  andi r11, r11, 1
000508  3bb00500  bneq r11, zero, 12
00050c  fa354440  vextracti.s r11, 4(vr8)
000510  5b010000  j 8
000514  fab54440  vextracti.s r11, 4(vr9)
000518  9bc73000  srli r15, r1, 3
00051c  9b871700  andi r15, r15, 1
000520  3bb00700  bneq r15, zero, 12
000524  7a3c3440  vextracti.s r24, 3(vr8)
000528  5b010000  j 8
00052c  7abc3440  vextracti.s r24, 3(vr9)
000530  9bc72000  srli r15, r1, 2
000534  9b871700  andi r15, r15, 1
000538  3bb00700  bneq r15, zero, 12
00053c  fa3c2440  vextracti.s r25, 2(vr8)
000540  5b010000  j 8
000544  fabc2440  vextracti.s r25, 2(vr9)
000548  9bc71000  srli r15, r1, 1
00054c  9b871700  andi r15, r15, 1
000550  3be00700  bneq r15, zero, 24
000554  fa371440  vextracti.s r15, 1(vr8)
000558  9b801000  andi r1, r1, 1
00055c  37e00000  beq r1, zero, 24
000560  fab00440  vextracti.s r1, 0(vr9)
000564  db020000  j 20
000568  fab71440  vextracti.s r15, 1(vr9)
00056c  9b801000  andi r1, r1, 1
000570  bbcf00fe  bneq r1, zero, -16
000574  fa300440  vextracti.s r1, 0(vr8)
000578  12340002  vadd.s.mz vr8{mr1}, zero, vr0
00057c  1f100000  addli zero, zero, 1
000580  66430300  vshuffle2.hf vr6, vr6
000584  e6c30300  vshuffle2.hf vr7, vr7
000588  fe0100e0  vmmov mr3, zero
00058c  17200000  xor zero, zero, zero
000590  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
000594  9f200000  addli r1, zero, 2
000598  96137302  vadd.f.mz.rn vr7{mr1}, vr6, vr7
00059c  fe8100e0  vmmov mr3, r1
0005a0  9f400000  addli r1, zero, 4
0005a4  6aa48736  vor.u.mh vr8{mr3}, r15, vr8
0005a8  fe8100e0  vmmov mr3, r1
0005ac  9f001000  addli r1, zero, 8
0005b0  e69403c0  vabs.f vr9, vr7
0005b4  6aa48c36  vor.u.mh vr8{mr3}, r25, vr8
0005b8  fe8100e0  vmmov mr3, r1
0005bc  9f002000  addli r1, zero, 16
0005c0  6a248c36  vor.u.mh vr8{mr3}, r24, vr8
0005c4  fe8100e0  vmmov mr3, r1
0005c8  9f004000  addli r1, zero, 32
0005cc  6aa48536  vor.u.mh vr8{mr3}, r11, vr8
0005d0  fe8100e0  vmmov mr3, r1
0005d4  9f008000  addli r1, zero, 64
0005d8  6aa48636  vor.u.mh vr8{mr3}, r13, vr8
0005dc  fe8100e0  vmmov mr3, r1
0005e0  9f000001  addli r1, zero, 128
0005e4  6a248236  vor.u.mh vr8{mr3}, r4, vr8
0005e8  fe8100e0  vmmov mr3, r1
0005ec  9f000002  addli r1, zero, 256
0005f0  6aa48236  vor.u.mh vr8{mr3}, r5, vr8
0005f4  fe8100e0  vmmov mr3, r1
0005f8  9f000004  addli r1, zero, 512
0005fc  6a248536  vor.u.mh vr8{mr3}, r10, vr8
000600  fe8100e0  vmmov mr3, r1
000604  9f000008  addli r1, zero, 1024
000608  6aa48436  vor.u.mh vr8{mr3}, r9, vr8
00060c  fe8100e0  vmmov mr3, r1
000610  9f000010  addli r1, zero, 2048
000614  6a248436  vor.u.mh vr8{mr3}, r8, vr8
000618  fe8100e0  vmmov mr3, r1
00061c  9f008ff3  addli r1, r30, -1600
000620  6aa48336  vor.u.mh vr8{mr3}, r7, vr8
000624  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000628  9f000020  addli r1, zero, 4096
00062c  fe8100e0  vmmov mr3, r1
000630  9f000040  addli r1, zero, 8192
000634  6a248336  vor.u.mh vr8{mr3}, r6, vr8
000638  fe8100e0  vmmov mr3, r1
00063c  ab400000  lui r1, 4
000640  6eb370c2  vsrl.s.mz vr6{mr1}, vr1, vr7
000644  6a248136  vor.u.mh vr8{mr3}, r2, vr8
000648  fe8100e0  vmmov mr3, r1
00064c  9f000ff3  addli r1, r30, -1664
000650  6a336802  vand.s.mz vr6{mr1}, r16, vr6
000654  6a248b36  vor.u.mh vr8{mr3}, r22, vr8
000658  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
00065c  ab800000  lui r1, 8
000660  16b36302  vadd.s.mz vr6{mr1}, vr7, vr6
000664  ea337922  vor.s.mz vr7{mr1}, r18, vr7
000668  f6a19042  vlt.u.mz mr3{mr1}, vr1, vr9
00066c  12b36802  vadd.s.mz vr6{mr1}, r17, vr6
000670  7e8301a0  vmmov r6, mr3
000674  fe8100e0  vmmov mr3, r1
000678  6a248736  vor.u.mh vr8{mr3}, r14, vr8
00067c  9b40f300  srli r1, r6, 15
000680  9b801000  andi r1, r1, 1
000684  46008610  vstore.mh vr8{mr0}, 0(r12)
000688  3bb00000  bneq r1, zero, 12
00068c  7a37f340  vextracti.s r14, 15(vr6)
000690  5b010000  j 8
000694  7ab7f340  vextracti.s r14, 15(vr7)
000698  1f018ff3  addli r2, r30, -1600
00069c  9b40e300  srli r1, r6, 14
0006a0  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0006a4  9b801000  andi r1, r1, 1
0006a8  3bb00000  bneq r1, zero, 12
0006ac  fa30e340  vextracti.s r1, 14(vr6)
0006b0  5b010000  j 8
0006b4  fab0e340  vextracti.s r1, 14(vr7)
0006b8  1b41d300  srli r2, r6, 13
0006bc  1b011100  andi r2, r2, 1
0006c0  3b300100  bneq r2, zero, 12
0006c4  7a31d340  vextracti.s r2, 13(vr6)
0006c8  5b010000  j 8
0006cc  7ab1d340  vextracti.s r2, 13(vr7)
0006d0  1b42c300  srli r4, r6, 12
0006d4  1b021200  andi r4, r4, 1
0006d8  3b300200  bneq r4, zero, 12
0006dc  7a3bc340  vextracti.s r22, 12(vr6)
0006e0  5b010000  j 8
0006e4  7abbc340  vextracti.s r22, 12(vr7)
0006e8  1b42b300  srli r4, r6, 11
0006ec  1b021200  andi r4, r4, 1
0006f0  3b300200  bneq r4, zero, 12
0006f4  fa33b340  vextracti.s r7, 11(vr6)
0006f8  5b010000  j 8
0006fc  fab3b340  vextracti.s r7, 11(vr7)
000700  1b42a300  srli r4, r6, 10
000704  1b021200  andi r4, r4, 1
000708  3b300200  bneq r4, zero, 12
00070c  7a34a340  vextracti.s r8, 10(vr6)
000710  5b010000  j 8
000714  7ab4a340  vextracti.s r8, 10(vr7)
000718  1b429300  srli r4, r6, 9
00071c  1b021200  andi r4, r4, 1
000720  3b300200  bneq r4, zero, 12
000724  fa349340  vextracti.s r9, 9(vr6)
000728  5b010000  j 8
00072c  fab49340  vextracti.s r9, 9(vr7)
000730  1b428300  srli r4, r6, 8
000734  1b021200  andi r4, r4, 1
000738  3b300200  bneq r4, zero, 12
00073c  7a358340  vextracti.s r10, 8(vr6)
000740  5b010000  j 8
000744  7ab58340  vextracti.s r10, 8(vr7)
000748  1b427300  srli r4, r6, 7
00074c  1b021200  andi r4, r4, 1
000750  3b300200  bneq r4, zero, 12
000754  fa327340  vextracti.s r5, 7(vr6)
000758  5b010000  j 8
00075c  fab27340  vextracti.s r5, 7(vr7)
000760  1b426300  srli r4, r6, 6
000764  1b021200  andi r4, r4, 1
000768  3b300200  bneq r4, zero, 12
00076c  7a326340  vextracti.s r4, 6(vr6)
000770  5b010000  j 8
000774  7ab26340  vextracti.s r4, 6(vr7)
000778  9b455300  srli r11, r6, 5
00077c  9b851500  andi r11, r11, 1
000780  3bb00500  bneq r11, zero, 12
000784  fa365340  vextracti.s r13, 5(vr6)
000788  5b010000  j 8
00078c  fab65340  vextracti.s r13, 5(vr7)
000790  9b454300  srli r11, r6, 4
000794  9b851500  andi r11, r11, 1
000798  3bb00500  bneq r11, zero, 12
00079c  fa354340  vextracti.s r11, 4(vr6)
0007a0  5b010000  j 8
0007a4  fab54340  vextracti.s r11, 4(vr7)
0007a8  9b473300  srli r15, r6, 3
0007ac  9b871700  andi r15, r15, 1
0007b0  3bb00700  bneq r15, zero, 12
0007b4  7a3c3340  vextracti.s r24, 3(vr6)
0007b8  5b010000  j 8
0007bc  7abc3340  vextracti.s r24, 3(vr7)
0007c0  9b472300  srli r15, r6, 2
0007c4  9b871700  andi r15, r15, 1
0007c8  3bb00700  bneq r15, zero, 12
0007cc  fa3c2340  vextracti.s r25, 2(vr6)
0007d0  5b010000  j 8
0007d4  fabc2340  vextracti.s r25, 2(vr7)
0007d8  9b471300  srli r15, r6, 1
0007dc  9b871700  andi r15, r15, 1
0007e0  3be00700  bneq r15, zero, 24
0007e4  fa371340  vextracti.s r15, 1(vr6)
0007e8  1b031300  andi r6, r6, 1
0007ec  37600300  beq r6, zero, 24
0007f0  7ab30340  vextracti.s r6, 0(vr7)
0007f4  db020000  j 20
0007f8  fab71340  vextracti.s r15, 1(vr7)
0007fc  1b031300  andi r6, r6, 1
000800  bb4f03fe  bneq r6, zero, -16
000804  7a330340  vextracti.s r6, 0(vr6)
000808  12330002  vadd.s.mz vr6{mr1}, zero, vr0
00080c  1f100000  addli zero, zero, 1
000810  96125202  vadd.f.mz.rn vr5{mr1}, vr4, vr5
000814  fe0100e0  vmmov mr3, zero
000818  17200000  xor zero, zero, zero
00081c  6a236336  vor.u.mh vr6{mr3}, r6, vr6
000820  1f230000  addli r6, zero, 2
000824  6eb250c2  vsrl.s.mz vr4{mr1}, vr1, vr5
000828  e69302c0  vabs.f vr7, vr5
00082c  fe0103e0  vmmov mr3, r6
000830  1f430000  addli r6, zero, 4
000834  6aa36736  vor.u.mh vr6{mr3}, r15, vr6
000838  fe0103e0  vmmov mr3, r6
00083c  1f031000  addli r6, zero, 8
000840  6a324802  vand.s.mz vr4{mr1}, r16, vr4
000844  6aa36c36  vor.u.mh vr6{mr3}, r25, vr6
000848  fe0103e0  vmmov mr3, r6
00084c  1f032000  addli r6, zero, 16
000850  16b24202  vadd.s.mz vr4{mr1}, vr5, vr4
000854  ea325922  vor.s.mz vr5{mr1}, r18, vr5
000858  6a236c36  vor.u.mh vr6{mr3}, r24, vr6
00085c  fe0103e0  vmmov mr3, r6
000860  1f034000  addli r6, zero, 32
000864  12b24802  vadd.s.mz vr4{mr1}, r17, vr4
000868  6aa36536  vor.u.mh vr6{mr3}, r11, vr6
00086c  fe0103e0  vmmov mr3, r6
000870  1f038000  addli r6, zero, 64
000874  6aa36636  vor.u.mh vr6{mr3}, r13, vr6
000878  fe0103e0  vmmov mr3, r6
00087c  6a236236  vor.u.mh vr6{mr3}, r4, vr6
000880  1f020001  addli r4, zero, 128
000884  fe0102e0  vmmov mr3, r4
000888  1f020002  addli r4, zero, 256
00088c  6aa36236  vor.u.mh vr6{mr3}, r5, vr6
000890  fe0102e0  vmmov mr3, r4
000894  1f020004  addli r4, zero, 512
000898  6a236536  vor.u.mh vr6{mr3}, r10, vr6
00089c  fe0102e0  vmmov mr3, r4
0008a0  1f020008  addli r4, zero, 1024
0008a4  6aa36436  vor.u.mh vr6{mr3}, r9, vr6
0008a8  fe0102e0  vmmov mr3, r4
0008ac  1f020010  addli r4, zero, 2048
0008b0  6a236436  vor.u.mh vr6{mr3}, r8, vr6
0008b4  fe0102e0  vmmov mr3, r4
0008b8  1f020020  addli r4, zero, 4096
0008bc  6aa36336  vor.u.mh vr6{mr3}, r7, vr6
0008c0  fe0102e0  vmmov mr3, r4
0008c4  1f020040  addli r4, zero, 8192
0008c8  6a236b36  vor.u.mh vr6{mr3}, r22, vr6
0008cc  fe0102e0  vmmov mr3, r4
0008d0  6a236136  vor.u.mh vr6{mr3}, r2, vr6
0008d4  2b410000  lui r2, 4
0008d8  fe0101e0  vmmov mr3, r2
0008dc  6aa36036  vor.u.mh vr6{mr3}, r1, vr6
0008e0  ab800000  lui r1, 8
0008e4  fe8100e0  vmmov mr3, r1
0008e8  9f000ff3  addli r1, r30, -1664
0008ec  6a236736  vor.u.mh vr6{mr3}, r14, vr6
0008f0  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0008f4  6af36ac0  vsrl.p vr6, r21, vr6
0008f8  f6217142  vlt.u.mz mr3{mr1}, vr2, vr7
0008fc  7e8301a0  vmmov r6, mr3
000900  9b40f300  srli r1, r6, 15
000904  46006614  vstore.mh vr6{mr2}, 0(r12)
000908  9b801000  andi r1, r1, 1
00090c  3bb00000  bneq r1, zero, 12
000910  7a37f240  vextracti.s r14, 15(vr4)
000914  5b010000  j 8
000918  7ab7f240  vextracti.s r14, 15(vr5)
00091c  9b40e300  srli r1, r6, 14
000920  9b801000  andi r1, r1, 1
000924  3bb00000  bneq r1, zero, 12
000928  7a3be240  vextracti.s r22, 14(vr4)
00092c  5b010000  j 8
000930  7abbe240  vextracti.s r22, 14(vr5)
000934  9b40d300  srli r1, r6, 13
000938  9b801000  andi r1, r1, 1
00093c  3bb00000  bneq r1, zero, 12
000940  fa30d240  vextracti.s r1, 13(vr4)
000944  5b010000  j 8
000948  fab0d240  vextracti.s r1, 13(vr5)
00094c  1b41c300  srli r2, r6, 12
000950  1b011100  andi r2, r2, 1
000954  3b300100  bneq r2, zero, 12
000958  7a31c240  vextracti.s r2, 12(vr4)
00095c  5b010000  j 8
000960  7ab1c240  vextracti.s r2, 12(vr5)
000964  1b42b300  srli r4, r6, 11
000968  1b021200  andi r4, r4, 1
00096c  3b300200  bneq r4, zero, 12
000970  fa33b240  vextracti.s r7, 11(vr4)
000974  5b010000  j 8
000978  fab3b240  vextracti.s r7, 11(vr5)
00097c  1b42a300  srli r4, r6, 10
000980  1b021200  andi r4, r4, 1
000984  3b300200  bneq r4, zero, 12
000988  7a34a240  vextracti.s r8, 10(vr4)
00098c  5b010000  j 8
000990  7ab4a240  vextracti.s r8, 10(vr5)
000994  1b429300  srli r4, r6, 9
000998  1b021200  andi r4, r4, 1
00099c  3b300200  bneq r4, zero, 12
0009a0  fa349240  vextracti.s r9, 9(vr4)
0009a4  5b010000  j 8
0009a8  fab49240  vextracti.s r9, 9(vr5)
0009ac  1b428300  srli r4, r6, 8
0009b0  1b021200  andi r4, r4, 1
0009b4  3b300200  bneq r4, zero, 12
0009b8  7a358240  vextracti.s r10, 8(vr4)
0009bc  5b010000  j 8
0009c0  7ab58240  vextracti.s r10, 8(vr5)
0009c4  1b427300  srli r4, r6, 7
0009c8  1b021200  andi r4, r4, 1
0009cc  3b300200  bneq r4, zero, 12
0009d0  fa327240  vextracti.s r5, 7(vr4)
0009d4  5b010000  j 8
0009d8  fab27240  vextracti.s r5, 7(vr5)
0009dc  1b426300  srli r4, r6, 6
0009e0  1b021200  andi r4, r4, 1
0009e4  3b300200  bneq r4, zero, 12
0009e8  7a326240  vextracti.s r4, 6(vr4)
0009ec  5b010000  j 8
0009f0  7ab26240  vextracti.s r4, 6(vr5)
0009f4  9b455300  srli r11, r6, 5
0009f8  9b851500  andi r11, r11, 1
0009fc  3bb00500  bneq r11, zero, 12
000a00  fa365240  vextracti.s r13, 5(vr4)
000a04  5b010000  j 8
000a08  fab65240  vextracti.s r13, 5(vr5)
000a0c  9b454300  srli r11, r6, 4
000a10  9b851500  andi r11, r11, 1
000a14  3bb00500  bneq r11, zero, 12
000a18  fa354240  vextracti.s r11, 4(vr4)
000a1c  5b010000  j 8
000a20  fab54240  vextracti.s r11, 4(vr5)
000a24  9b473300  srli r15, r6, 3
000a28  9b871700  andi r15, r15, 1
000a2c  3bb00700  bneq r15, zero, 12
000a30  7a3c3240  vextracti.s r24, 3(vr4)
000a34  5b010000  j 8
000a38  7abc3240  vextracti.s r24, 3(vr5)
000a3c  9b472300  srli r15, r6, 2
000a40  9b871700  andi r15, r15, 1
000a44  3bb00700  bneq r15, zero, 12
000a48  fa3c2240  vextracti.s r25, 2(vr4)
000a4c  5b010000  j 8
000a50  fabc2240  vextracti.s r25, 2(vr5)
000a54  9b471300  srli r15, r6, 1
000a58  9b871700  andi r15, r15, 1
000a5c  3be00700  bneq r15, zero, 24
000a60  fa371240  vextracti.s r15, 1(vr4)
000a64  1b031300  andi r6, r6, 1
000a68  37600300  beq r6, zero, 24
000a6c  7ab30240  vextracti.s r6, 0(vr5)
000a70  db020000  j 20
000a74  fab71240  vextracti.s r15, 1(vr5)
000a78  1b031300  andi r6, r6, 1
000a7c  bb4f03fe  bneq r6, zero, -16
000a80  7a330240  vextracti.s r6, 0(vr4)
000a84  92320002  vadd.s.mz vr5{mr1}, zero, vr0
000a88  1f100000  addli zero, zero, 1
000a8c  66c20500  vshuffle2.hf vr4, vr11
000a90  e6c10100  vshuffle2.hf vr3, vr3
000a94  fe0100e0  vmmov mr3, zero
000a98  17200000  xor zero, zero, zero
000a9c  ea225336  vor.u.mh vr5{mr3}, r6, vr5
000aa0  1f230000  addli r6, zero, 2
000aa4  16123202  vadd.f.mz.rn vr4{mr1}, vr4, vr3
000aa8  fe0103e0  vmmov mr3, r6
000aac  1f430000  addli r6, zero, 4
000ab0  eaa25736  vor.u.mh vr5{mr3}, r15, vr5
000ab4  fe0103e0  vmmov mr3, r6
000ab8  1f031000  addli r6, zero, 8
000abc  eeb140c2  vsrl.s.mz vr3{mr1}, vr1, vr4
000ac0  661302c0  vabs.f vr6, vr4
000ac4  eaa25c36  vor.u.mh vr5{mr3}, r25, vr5
000ac8  fe0103e0  vmmov mr3, r6
000acc  1f032000  addli r6, zero, 16
000ad0  ea313802  vand.s.mz vr3{mr1}, r16, vr3
000ad4  ea225c36  vor.u.mh vr5{mr3}, r24, vr5
000ad8  fe0103e0  vmmov mr3, r6
000adc  1f034000  addli r6, zero, 32
000ae0  96313202  vadd.s.mz vr3{mr1}, vr4, vr3
000ae4  6a324922  vor.s.mz vr4{mr1}, r18, vr4
000ae8  eaa25536  vor.u.mh vr5{mr3}, r11, vr5
000aec  fe0103e0  vmmov mr3, r6
000af0  1f038000  addli r6, zero, 64
000af4  92b13802  vadd.s.mz vr3{mr1}, r17, vr3
000af8  eaa25636  vor.u.mh vr5{mr3}, r13, vr5
000afc  fe0103e0  vmmov mr3, r6
000b00  ea225236  vor.u.mh vr5{mr3}, r4, vr5
000b04  1f020001  addli r4, zero, 128
000b08  fe0102e0  vmmov mr3, r4
000b0c  1f020002  addli r4, zero, 256
000b10  eaa25236  vor.u.mh vr5{mr3}, r5, vr5
000b14  fe0102e0  vmmov mr3, r4
000b18  1f020004  addli r4, zero, 512
000b1c  ea225536  vor.u.mh vr5{mr3}, r10, vr5
000b20  fe0102e0  vmmov mr3, r4
000b24  1f020008  addli r4, zero, 1024
000b28  eaa25436  vor.u.mh vr5{mr3}, r9, vr5
000b2c  fe0102e0  vmmov mr3, r4
000b30  1f020010  addli r4, zero, 2048
000b34  ea225436  vor.u.mh vr5{mr3}, r8, vr5
000b38  fe0102e0  vmmov mr3, r4
000b3c  1f020020  addli r4, zero, 4096
000b40  eaa25336  vor.u.mh vr5{mr3}, r7, vr5
000b44  fe0102e0  vmmov mr3, r4
000b48  ea225136  vor.u.mh vr5{mr3}, r2, vr5
000b4c  1f010040  addli r2, zero, 8192
000b50  fe0101e0  vmmov mr3, r2
000b54  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
000b58  ab400000  lui r1, 4
000b5c  fe8100e0  vmmov mr3, r1
000b60  ab800000  lui r1, 8
000b64  ea225b36  vor.u.mh vr5{mr3}, r22, vr5
000b68  f6216142  vlt.u.mz mr3{mr1}, vr2, vr6
000b6c  7e8301a0  vmmov r6, mr3
000b70  fe8100e0  vmmov mr3, r1
000b74  9b40f300  srli r1, r6, 15
000b78  ea225736  vor.u.mh vr5{mr3}, r14, vr5
000b7c  9b801000  andi r1, r1, 1
000b80  46805d10  vstore.mh vr5{mr0}, 0(r27)
000b84  3bb00000  bneq r1, zero, 12
000b88  7ab7f140  vextracti.s r14, 15(vr3)
000b8c  5b010000  j 8
000b90  7a37f240  vextracti.s r14, 15(vr4)
000b94  9b40e300  srli r1, r6, 14
000b98  9b801000  andi r1, r1, 1
000b9c  3bb00000  bneq r1, zero, 12
000ba0  fab0e140  vextracti.s r1, 14(vr3)
000ba4  5b010000  j 8
000ba8  fa30e240  vextracti.s r1, 14(vr4)
000bac  1b41d300  srli r2, r6, 13
000bb0  1b011100  andi r2, r2, 1
000bb4  3b300100  bneq r2, zero, 12
000bb8  7ab1d140  vextracti.s r2, 13(vr3)
000bbc  5b010000  j 8
000bc0  7a31d240  vextracti.s r2, 13(vr4)
000bc4  1b42c300  srli r4, r6, 12
000bc8  1b021200  andi r4, r4, 1
000bcc  3b300200  bneq r4, zero, 12
000bd0  7abbc140  vextracti.s r22, 12(vr3)
000bd4  5b010000  j 8
000bd8  7a3bc240  vextracti.s r22, 12(vr4)
000bdc  1b42b300  srli r4, r6, 11
000be0  1b021200  andi r4, r4, 1
000be4  3b300200  bneq r4, zero, 12
000be8  fab3b140  vextracti.s r7, 11(vr3)
000bec  5b010000  j 8
000bf0  fa33b240  vextracti.s r7, 11(vr4)
000bf4  1b42a300  srli r4, r6, 10
000bf8  1b021200  andi r4, r4, 1
000bfc  3b300200  bneq r4, zero, 12
000c00  7ab4a140  vextracti.s r8, 10(vr3)
000c04  5b010000  j 8
000c08  7a34a240  vextracti.s r8, 10(vr4)
000c0c  1b429300  srli r4, r6, 9
000c10  1b021200  andi r4, r4, 1
000c14  3b300200  bneq r4, zero, 12
000c18  fab49140  vextracti.s r9, 9(vr3)
000c1c  5b010000  j 8
000c20  fa349240  vextracti.s r9, 9(vr4)
000c24  1b428300  srli r4, r6, 8
000c28  1b021200  andi r4, r4, 1
000c2c  3b300200  bneq r4, zero, 12
000c30  7ab58140  vextracti.s r10, 8(vr3)
000c34  5b010000  j 8
000c38  7a358240  vextracti.s r10, 8(vr4)
000c3c  1b427300  srli r4, r6, 7
000c40  1b021200  andi r4, r4, 1
000c44  3b300200  bneq r4, zero, 12
000c48  fab27140  vextracti.s r5, 7(vr3)
000c4c  5b010000  j 8
000c50  fa327240  vextracti.s r5, 7(vr4)
000c54  1b426300  srli r4, r6, 6
000c58  1b021200  andi r4, r4, 1
000c5c  3b300200  bneq r4, zero, 12
000c60  7ab26140  vextracti.s r4, 6(vr3)
000c64  5b010000  j 8
000c68  7a326240  vextracti.s r4, 6(vr4)
000c6c  9b455300  srli r11, r6, 5
000c70  9b851500  andi r11, r11, 1
000c74  3bb00500  bneq r11, zero, 12
000c78  fab65140  vextracti.s r13, 5(vr3)
000c7c  5b010000  j 8
000c80  fa365240  vextracti.s r13, 5(vr4)
000c84  9b454300  srli r11, r6, 4
000c88  9b851500  andi r11, r11, 1
000c8c  3bb00500  bneq r11, zero, 12
000c90  fab54140  vextracti.s r11, 4(vr3)
000c94  5b010000  j 8
000c98  fa354240  vextracti.s r11, 4(vr4)
000c9c  9b473300  srli r15, r6, 3
000ca0  9b871700  andi r15, r15, 1
000ca4  3bb00700  bneq r15, zero, 12
000ca8  7abc3140  vextracti.s r24, 3(vr3)
000cac  5b010000  j 8
000cb0  7a3c3240  vextracti.s r24, 3(vr4)
000cb4  9b472300  srli r15, r6, 2
000cb8  9b871700  andi r15, r15, 1
000cbc  3bb00700  bneq r15, zero, 12
000cc0  fabc2140  vextracti.s r25, 2(vr3)
000cc4  5b010000  j 8
000cc8  fa3c2240  vextracti.s r25, 2(vr4)
000ccc  9b471300  srli r15, r6, 1
000cd0  9b871700  andi r15, r15, 1
000cd4  3be00700  bneq r15, zero, 24
000cd8  fab71140  vextracti.s r15, 1(vr3)
000cdc  1b031300  andi r6, r6, 1
000ce0  37600300  beq r6, zero, 24
000ce4  7a330240  vextracti.s r6, 0(vr4)
000ce8  db020000  j 20
000cec  fa371240  vextracti.s r15, 1(vr4)
000cf0  1b031300  andi r6, r6, 1
000cf4  bb4f03fe  bneq r6, zero, -16
000cf8  7ab30140  vextracti.s r6, 0(vr3)
000cfc  12320002  vadd.s.mz vr4{mr1}, zero, vr0
000d00  1f100000  addli zero, zero, 1
000d04  fe0100e0  vmmov mr3, zero
000d08  17200000  xor zero, zero, zero
000d0c  6a224336  vor.u.mh vr4{mr3}, r6, vr4
000d10  1f230000  addli r6, zero, 2
000d14  fe0103e0  vmmov mr3, r6
000d18  1f430000  addli r6, zero, 4
000d1c  6aa24736  vor.u.mh vr4{mr3}, r15, vr4
000d20  fe0103e0  vmmov mr3, r6
000d24  1f031000  addli r6, zero, 8
000d28  6aa24c36  vor.u.mh vr4{mr3}, r25, vr4
000d2c  fe0103e0  vmmov mr3, r6
000d30  1f032000  addli r6, zero, 16
000d34  6a224c36  vor.u.mh vr4{mr3}, r24, vr4
000d38  fe0103e0  vmmov mr3, r6
000d3c  1f034000  addli r6, zero, 32
000d40  6aa24536  vor.u.mh vr4{mr3}, r11, vr4
000d44  fe0103e0  vmmov mr3, r6
000d48  1f038000  addli r6, zero, 64
000d4c  6aa24636  vor.u.mh vr4{mr3}, r13, vr4
000d50  fe0103e0  vmmov mr3, r6
000d54  6a224236  vor.u.mh vr4{mr3}, r4, vr4
000d58  1f020001  addli r4, zero, 128
000d5c  fe0102e0  vmmov mr3, r4
000d60  1f020002  addli r4, zero, 256
000d64  6aa24236  vor.u.mh vr4{mr3}, r5, vr4
000d68  fe0102e0  vmmov mr3, r4
000d6c  1f020004  addli r4, zero, 512
000d70  6a224536  vor.u.mh vr4{mr3}, r10, vr4
000d74  fe0102e0  vmmov mr3, r4
000d78  1f020008  addli r4, zero, 1024
000d7c  6aa24436  vor.u.mh vr4{mr3}, r9, vr4
000d80  fe0102e0  vmmov mr3, r4
000d84  1f020010  addli r4, zero, 2048
000d88  6a224436  vor.u.mh vr4{mr3}, r8, vr4
000d8c  fe0102e0  vmmov mr3, r4
000d90  1f028fee  addli r4, r30, -2240
000d94  6aa24336  vor.u.mh vr4{mr3}, r7, vr4
000d98  c2110202  vload_mask16.mz vr3{mr1}, 0(r4)
000d9c  1f020020  addli r4, zero, 4096
000da0  fe0102e0  vmmov mr3, r4
000da4  1f020040  addli r4, zero, 8192
000da8  6a224b36  vor.u.mh vr4{mr3}, r22, vr4
000dac  fe0102e0  vmmov mr3, r4
000db0  9692a102  vadd.f.mz.rn vr5{mr1}, vr3, vr10
000db4  6a224136  vor.u.mh vr4{mr3}, r2, vr4
000db8  2b410000  lui r2, 4
000dbc  eeb150c2  vsrl.s.mz vr3{mr1}, vr1, vr5
000dc0  fe0101e0  vmmov mr3, r2
000dc4  669302c0  vabs.f vr6, vr5
000dc8  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
000dcc  ab800000  lui r1, 8
000dd0  ea313802  vand.s.mz vr3{mr1}, r16, vr3
000dd4  fe8100e0  vmmov mr3, r1
000dd8  6a224736  vor.u.mh vr4{mr3}, r14, vr4
000ddc  f6216142  vlt.u.mz mr3{mr1}, vr2, vr6
000de0  7e8301a0  vmmov r6, mr3
000de4  96b13202  vadd.s.mz vr3{mr1}, vr5, vr3
000de8  9b40f300  srli r1, r6, 15
000dec  6af34ac0  vsrl.p vr6, r21, vr4
000df0  6a325922  vor.s.mz vr4{mr1}, r18, vr5
000df4  9b801000  andi r1, r1, 1
000df8  92b13802  vadd.s.mz vr3{mr1}, r17, vr3
000dfc  46806d14  vstore.mh vr6{mr2}, 0(r27)
000e00  3bb00000  bneq r1, zero, 12
000e04  7ab7f140  vextracti.s r14, 15(vr3)
000e08  5b010000  j 8
000e0c  7a37f240  vextracti.s r14, 15(vr4)
000e10  9b40e300  srli r1, r6, 14
000e14  9b801000  andi r1, r1, 1
000e18  3bb00000  bneq r1, zero, 12
000e1c  7abbe140  vextracti.s r22, 14(vr3)
000e20  5b010000  j 8
000e24  7a3be240  vextracti.s r22, 14(vr4)
000e28  9b40d300  srli r1, r6, 13
000e2c  9b801000  andi r1, r1, 1
000e30  3bb00000  bneq r1, zero, 12
000e34  fab0d140  vextracti.s r1, 13(vr3)
000e38  5b010000  j 8
000e3c  fa30d240  vextracti.s r1, 13(vr4)
000e40  1b41c300  srli r2, r6, 12
000e44  1b011100  andi r2, r2, 1
000e48  3b300100  bneq r2, zero, 12
000e4c  7ab1c140  vextracti.s r2, 12(vr3)
000e50  5b010000  j 8
000e54  7a31c240  vextracti.s r2, 12(vr4)
000e58  1b42b300  srli r4, r6, 11
000e5c  1b021200  andi r4, r4, 1
000e60  3b300200  bneq r4, zero, 12
000e64  fab3b140  vextracti.s r7, 11(vr3)
000e68  5b010000  j 8
000e6c  fa33b240  vextracti.s r7, 11(vr4)
000e70  1b42a300  srli r4, r6, 10
000e74  1b021200  andi r4, r4, 1
000e78  3b300200  bneq r4, zero, 12
000e7c  7ab4a140  vextracti.s r8, 10(vr3)
000e80  5b010000  j 8
000e84  7a34a240  vextracti.s r8, 10(vr4)
000e88  1b429300  srli r4, r6, 9
000e8c  1b021200  andi r4, r4, 1
000e90  3b300200  bneq r4, zero, 12
000e94  fab49140  vextracti.s r9, 9(vr3)
000e98  5b010000  j 8
000e9c  fa349240  vextracti.s r9, 9(vr4)
000ea0  1b428300  srli r4, r6, 8
000ea4  1b021200  andi r4, r4, 1
000ea8  3b300200  bneq r4, zero, 12
000eac  7ab58140  vextracti.s r10, 8(vr3)
000eb0  5b010000  j 8
000eb4  7a358240  vextracti.s r10, 8(vr4)
000eb8  1b427300  srli r4, r6, 7
000ebc  1b021200  andi r4, r4, 1
000ec0  3b300200  bneq r4, zero, 12
000ec4  fab27140  vextracti.s r5, 7(vr3)
000ec8  5b010000  j 8
000ecc  fa327240  vextracti.s r5, 7(vr4)
000ed0  1b426300  srli r4, r6, 6
000ed4  1b021200  andi r4, r4, 1
000ed8  3b300200  bneq r4, zero, 12
000edc  7ab26140  vextracti.s r4, 6(vr3)
000ee0  5b010000  j 8
000ee4  7a326240  vextracti.s r4, 6(vr4)
000ee8  9b455300  srli r11, r6, 5
000eec  9b851500  andi r11, r11, 1
000ef0  3bb00500  bneq r11, zero, 12
000ef4  fab65140  vextracti.s r13, 5(vr3)
000ef8  5b010000  j 8
000efc  fa365240  vextracti.s r13, 5(vr4)
000f00  9b454300  srli r11, r6, 4
000f04  9b851500  andi r11, r11, 1
000f08  3bb00500  bneq r11, zero, 12
000f0c  fab54140  vextracti.s r11, 4(vr3)
000f10  5b010000  j 8
000f14  fa354240  vextracti.s r11, 4(vr4)
000f18  9b473300  srli r15, r6, 3
000f1c  9b871700  andi r15, r15, 1
000f20  3bb00700  bneq r15, zero, 12
000f24  7abc3140  vextracti.s r24, 3(vr3)
000f28  5b010000  j 8
000f2c  7a3c3240  vextracti.s r24, 3(vr4)
000f30  9b472300  srli r15, r6, 2
000f34  9b871700  andi r15, r15, 1
000f38  3bb00700  bneq r15, zero, 12
000f3c  fabc2140  vextracti.s r25, 2(vr3)
000f40  5b010000  j 8
000f44  fa3c2240  vextracti.s r25, 2(vr4)
000f48  9b471300  srli r15, r6, 1
000f4c  9b871700  andi r15, r15, 1
000f50  3be00700  bneq r15, zero, 24
000f54  fab71140  vextracti.s r15, 1(vr3)
000f58  1b031300  andi r6, r6, 1
000f5c  37600300  beq r6, zero, 24
000f60  7a330240  vextracti.s r6, 0(vr4)
000f64  db020000  j 20
000f68  fa371240  vextracti.s r15, 1(vr4)
000f6c  1b031300  andi r6, r6, 1
000f70  bb4f03fe  bneq r6, zero, -16
000f74  7ab30140  vextracti.s r6, 0(vr3)
000f78  92320002  vadd.s.mz vr5{mr1}, zero, vr0
000f7c  1f100000  addli zero, zero, 1
000f80  fe0100e0  vmmov mr3, zero
000f84  17200000  xor zero, zero, zero
000f88  ea225336  vor.u.mh vr5{mr3}, r6, vr5
000f8c  1f230000  addli r6, zero, 2
000f90  fe0103e0  vmmov mr3, r6
000f94  1f430000  addli r6, zero, 4
000f98  eaa25736  vor.u.mh vr5{mr3}, r15, vr5
000f9c  fe0103e0  vmmov mr3, r6
000fa0  1f031000  addli r6, zero, 8
000fa4  eaa25c36  vor.u.mh vr5{mr3}, r25, vr5
000fa8  fe0103e0  vmmov mr3, r6
000fac  1f032000  addli r6, zero, 16
000fb0  ea225c36  vor.u.mh vr5{mr3}, r24, vr5
000fb4  fe0103e0  vmmov mr3, r6
000fb8  1f034000  addli r6, zero, 32
000fbc  eaa25536  vor.u.mh vr5{mr3}, r11, vr5
000fc0  fe0103e0  vmmov mr3, r6
000fc4  1f038000  addli r6, zero, 64
000fc8  eaa25636  vor.u.mh vr5{mr3}, r13, vr5
000fcc  fe0103e0  vmmov mr3, r6
000fd0  ea225236  vor.u.mh vr5{mr3}, r4, vr5
000fd4  1f020001  addli r4, zero, 128
000fd8  fe0102e0  vmmov mr3, r4
000fdc  1f020002  addli r4, zero, 256
000fe0  eaa25236  vor.u.mh vr5{mr3}, r5, vr5
000fe4  fe0102e0  vmmov mr3, r4
000fe8  1f020004  addli r4, zero, 512
000fec  ea225536  vor.u.mh vr5{mr3}, r10, vr5
000ff0  fe0102e0  vmmov mr3, r4
000ff4  1f028fef  addli r4, r30, -2112
000ff8  eaa25436  vor.u.mh vr5{mr3}, r9, vr5
000ffc  c2110202  vload_mask16.mz vr3{mr1}, 0(r4)
001000  1f020fef  addli r4, r30, -2176
001004  42120202  vload_mask16.mz vr4{mr1}, 0(r4)
001008  1f020008  addli r4, zero, 1024
00100c  fe0102e0  vmmov mr3, r4
001010  1f020010  addli r4, zero, 2048
001014  ea225436  vor.u.mh vr5{mr3}, r8, vr5
001018  e6c10100  vshuffle2.hf vr3, vr3
00101c  fe0102e0  vmmov mr3, r4
001020  1f020020  addli r4, zero, 4096
001024  66420200  vshuffle2.hf vr4, vr4
001028  eaa25336  vor.u.mh vr5{mr3}, r7, vr5
00102c  fe0102e0  vmmov mr3, r4
001030  16924102  vadd.f.mz.rn vr4{mr1}, vr3, vr4
001034  ea225136  vor.u.mh vr5{mr3}, r2, vr5
001038  1f010040  addli r2, zero, 8192
00103c  fe0101e0  vmmov mr3, r2
001040  eeb140c2  vsrl.s.mz vr3{mr1}, vr1, vr4
001044  661302c0  vabs.f vr6, vr4
001048  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
00104c  ab400000  lui r1, 4
001050  fe8100e0  vmmov mr3, r1
001054  ab800000  lui r1, 8
001058  ea313802  vand.s.mz vr3{mr1}, r16, vr3
00105c  ea225b36  vor.u.mh vr5{mr3}, r22, vr5
001060  f6216142  vlt.u.mz mr3{mr1}, vr2, vr6
001064  7e8301a0  vmmov r6, mr3
001068  fe8100e0  vmmov mr3, r1
00106c  9b40f300  srli r1, r6, 15
001070  96313202  vadd.s.mz vr3{mr1}, vr4, vr3
001074  6a324922  vor.s.mz vr4{mr1}, r18, vr4
001078  ea225736  vor.u.mh vr5{mr3}, r14, vr5
00107c  9b801000  andi r1, r1, 1
001080  92b13802  vadd.s.mz vr3{mr1}, r17, vr3
001084  46005d10  vstore.mh vr5{mr0}, 0(r26)
001088  3bb00000  bneq r1, zero, 12
00108c  7ab7f140  vextracti.s r14, 15(vr3)
001090  5b010000  j 8
001094  7a37f240  vextracti.s r14, 15(vr4)
001098  9b40e300  srli r1, r6, 14
00109c  9b801000  andi r1, r1, 1
0010a0  3bb00000  bneq r1, zero, 12
0010a4  fab0e140  vextracti.s r1, 14(vr3)
0010a8  5b010000  j 8
0010ac  fa30e240  vextracti.s r1, 14(vr4)
0010b0  1b41d300  srli r2, r6, 13
0010b4  1b011100  andi r2, r2, 1
0010b8  3b300100  bneq r2, zero, 12
0010bc  7ab1d140  vextracti.s r2, 13(vr3)
0010c0  5b010000  j 8
0010c4  7a31d240  vextracti.s r2, 13(vr4)
0010c8  1b42c300  srli r4, r6, 12
0010cc  1b021200  andi r4, r4, 1
0010d0  3b300200  bneq r4, zero, 12
0010d4  7abbc140  vextracti.s r22, 12(vr3)
0010d8  5b010000  j 8
0010dc  7a3bc240  vextracti.s r22, 12(vr4)
0010e0  1b42b300  srli r4, r6, 11
0010e4  1b021200  andi r4, r4, 1
0010e8  3b300200  bneq r4, zero, 12
0010ec  fab3b140  vextracti.s r7, 11(vr3)
0010f0  5b010000  j 8
0010f4  fa33b240  vextracti.s r7, 11(vr4)
0010f8  1b42a300  srli r4, r6, 10
0010fc  1b021200  andi r4, r4, 1
001100  3b300200  bneq r4, zero, 12
001104  7ab4a140  vextracti.s r8, 10(vr3)
001108  5b010000  j 8
00110c  7a34a240  vextracti.s r8, 10(vr4)
001110  1b429300  srli r4, r6, 9
001114  1b021200  andi r4, r4, 1
001118  3b300200  bneq r4, zero, 12
00111c  fab49140  vextracti.s r9, 9(vr3)
001120  5b010000  j 8
001124  fa349240  vextracti.s r9, 9(vr4)
001128  1b428300  srli r4, r6, 8
00112c  1b021200  andi r4, r4, 1
001130  3b300200  bneq r4, zero, 12
001134  7ab58140  vextracti.s r10, 8(vr3)
001138  5b010000  j 8
00113c  7a358240  vextracti.s r10, 8(vr4)
001140  1b427300  srli r4, r6, 7
001144  1b021200  andi r4, r4, 1
001148  3b300200  bneq r4, zero, 12
00114c  fab27140  vextracti.s r5, 7(vr3)
001150  5b010000  j 8
001154  fa327240  vextracti.s r5, 7(vr4)
001158  1b426300  srli r4, r6, 6
00115c  1b021200  andi r4, r4, 1
001160  3b300200  bneq r4, zero, 12
001164  7ab26140  vextracti.s r4, 6(vr3)
001168  5b010000  j 8
00116c  7a326240  vextracti.s r4, 6(vr4)
001170  9b455300  srli r11, r6, 5
001174  9b851500  andi r11, r11, 1
001178  3bb00500  bneq r11, zero, 12
00117c  fab65140  vextracti.s r13, 5(vr3)
001180  5b010000  j 8
001184  fa365240  vextracti.s r13, 5(vr4)
001188  9b454300  srli r11, r6, 4
00118c  9b851500  andi r11, r11, 1
001190  3bb00500  bneq r11, zero, 12
001194  fab54140  vextracti.s r11, 4(vr3)
001198  5b010000  j 8
00119c  fa354240  vextracti.s r11, 4(vr4)
0011a0  9b473300  srli r15, r6, 3
0011a4  9b871700  andi r15, r15, 1
0011a8  3bb00700  bneq r15, zero, 12
0011ac  7abc3140  vextracti.s r24, 3(vr3)
0011b0  5b010000  j 8
0011b4  7a3c3240  vextracti.s r24, 3(vr4)
0011b8  9b472300  srli r15, r6, 2
0011bc  9b871700  andi r15, r15, 1
0011c0  3bb00700  bneq r15, zero, 12
0011c4  fabc2140  vextracti.s r25, 2(vr3)
0011c8  5b010000  j 8
0011cc  fa3c2240  vextracti.s r25, 2(vr4)
0011d0  9b471300  srli r15, r6, 1
0011d4  9b871700  andi r15, r15, 1
0011d8  3be00700  bneq r15, zero, 24
0011dc  fab71140  vextracti.s r15, 1(vr3)
0011e0  1b031300  andi r6, r6, 1
0011e4  37600300  beq r6, zero, 24
0011e8  7a330240  vextracti.s r6, 0(vr4)
0011ec  db020000  j 20
0011f0  fa371240  vextracti.s r15, 1(vr4)
0011f4  1b031300  andi r6, r6, 1
0011f8  bb4f03fe  bneq r6, zero, -16
0011fc  7ab30140  vextracti.s r6, 0(vr3)
001200  12320002  vadd.s.mz vr4{mr1}, zero, vr0
001204  1f100000  addli zero, zero, 1
001208  fe0100e0  vmmov mr3, zero
00120c  17200000  xor zero, zero, zero
001210  6a224336  vor.u.mh vr4{mr3}, r6, vr4
001214  1f230000  addli r6, zero, 2
001218  fe0103e0  vmmov mr3, r6
00121c  1f430000  addli r6, zero, 4
001220  6aa24736  vor.u.mh vr4{mr3}, r15, vr4
001224  fe0103e0  vmmov mr3, r6
001228  1f031000  addli r6, zero, 8
00122c  6aa24c36  vor.u.mh vr4{mr3}, r25, vr4
001230  fe0103e0  vmmov mr3, r6
001234  1f032000  addli r6, zero, 16
001238  6a224c36  vor.u.mh vr4{mr3}, r24, vr4
00123c  fe0103e0  vmmov mr3, r6
001240  1f034000  addli r6, zero, 32
001244  6aa24536  vor.u.mh vr4{mr3}, r11, vr4
001248  fe0103e0  vmmov mr3, r6
00124c  1f038000  addli r6, zero, 64
001250  6aa24636  vor.u.mh vr4{mr3}, r13, vr4
001254  fe0103e0  vmmov mr3, r6
001258  6a224236  vor.u.mh vr4{mr3}, r4, vr4
00125c  1f020001  addli r4, zero, 128
001260  fe0102e0  vmmov mr3, r4
001264  1f020002  addli r4, zero, 256
001268  6aa24236  vor.u.mh vr4{mr3}, r5, vr4
00126c  fe0102e0  vmmov mr3, r4
001270  1f020004  addli r4, zero, 512
001274  6a224536  vor.u.mh vr4{mr3}, r10, vr4
001278  fe0102e0  vmmov mr3, r4
00127c  1f020008  addli r4, zero, 1024
001280  6aa24436  vor.u.mh vr4{mr3}, r9, vr4
001284  fe0102e0  vmmov mr3, r4
001288  1f020010  addli r4, zero, 2048
00128c  6a224436  vor.u.mh vr4{mr3}, r8, vr4
001290  fe0102e0  vmmov mr3, r4
001294  1f028ff0  addli r4, r30, -1984
001298  6aa24336  vor.u.mh vr4{mr3}, r7, vr4
00129c  c2110202  vload_mask16.mz vr3{mr1}, 0(r4)
0012a0  1f020ff0  addli r4, r30, -2048
0012a4  c2120202  vload_mask16.mz vr5{mr1}, 0(r4)
0012a8  1f020020  addli r4, zero, 4096
0012ac  fe0102e0  vmmov mr3, r4
0012b0  1f020040  addli r4, zero, 8192
0012b4  6a224b36  vor.u.mh vr4{mr3}, r22, vr4
0012b8  fe0102e0  vmmov mr3, r4
0012bc  96925102  vadd.f.mz.rn vr5{mr1}, vr3, vr5
0012c0  6a224136  vor.u.mh vr4{mr3}, r2, vr4
0012c4  2b410000  lui r2, 4
0012c8  fe0101e0  vmmov mr3, r2
0012cc  eeb150c2  vsrl.s.mz vr3{mr1}, vr1, vr5
0012d0  669302c0  vabs.f vr6, vr5
0012d4  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
0012d8  ab800000  lui r1, 8
0012dc  fe8100e0  vmmov mr3, r1
0012e0  ea313802  vand.s.mz vr3{mr1}, r16, vr3
0012e4  6a224736  vor.u.mh vr4{mr3}, r14, vr4
0012e8  f6216142  vlt.u.mz mr3{mr1}, vr2, vr6
0012ec  7e8301a0  vmmov r6, mr3
0012f0  9b40f300  srli r1, r6, 15
0012f4  96b13202  vadd.s.mz vr3{mr1}, vr5, vr3
0012f8  6af34ac0  vsrl.p vr6, r21, vr4
0012fc  6a325922  vor.s.mz vr4{mr1}, r18, vr5
001300  9b801000  andi r1, r1, 1
001304  92b13802  vadd.s.mz vr3{mr1}, r17, vr3
001308  46006d14  vstore.mh vr6{mr2}, 0(r26)
00130c  3bb00000  bneq r1, zero, 12
001310  7ab7f140  vextracti.s r14, 15(vr3)
001314  5b010000  j 8
001318  7a37f240  vextracti.s r14, 15(vr4)
00131c  9b40e300  srli r1, r6, 14
001320  9b801000  andi r1, r1, 1
001324  3bb00000  bneq r1, zero, 12
001328  7abbe140  vextracti.s r22, 14(vr3)
00132c  5b010000  j 8
001330  7a3be240  vextracti.s r22, 14(vr4)
001334  9b40d300  srli r1, r6, 13
001338  9b801000  andi r1, r1, 1
00133c  3bb00000  bneq r1, zero, 12
001340  fab0d140  vextracti.s r1, 13(vr3)
001344  5b010000  j 8
001348  fa30d240  vextracti.s r1, 13(vr4)
00134c  1b41c300  srli r2, r6, 12
001350  1b011100  andi r2, r2, 1
001354  3b300100  bneq r2, zero, 12
001358  7ab1c140  vextracti.s r2, 12(vr3)
00135c  5b010000  j 8
001360  7a31c240  vextracti.s r2, 12(vr4)
001364  1b42b300  srli r4, r6, 11
001368  1b021200  andi r4, r4, 1
00136c  3b300200  bneq r4, zero, 12
001370  fab3b140  vextracti.s r7, 11(vr3)
001374  5b010000  j 8
001378  fa33b240  vextracti.s r7, 11(vr4)
00137c  1b42a300  srli r4, r6, 10
001380  1b021200  andi r4, r4, 1
001384  3b300200  bneq r4, zero, 12
001388  7ab4a140  vextracti.s r8, 10(vr3)
00138c  5b010000  j 8
001390  7a34a240  vextracti.s r8, 10(vr4)
001394  1b429300  srli r4, r6, 9
001398  1b021200  andi r4, r4, 1
00139c  3b300200  bneq r4, zero, 12
0013a0  fab49140  vextracti.s r9, 9(vr3)
0013a4  5b010000  j 8
0013a8  fa349240  vextracti.s r9, 9(vr4)
0013ac  1b428300  srli r4, r6, 8
0013b0  1b021200  andi r4, r4, 1
0013b4  3b300200  bneq r4, zero, 12
0013b8  7ab58140  vextracti.s r10, 8(vr3)
0013bc  5b010000  j 8
0013c0  7a358240  vextracti.s r10, 8(vr4)
0013c4  1b427300  srli r4, r6, 7
0013c8  1b021200  andi r4, r4, 1
0013cc  3b300200  bneq r4, zero, 12
0013d0  fab27140  vextracti.s r5, 7(vr3)
0013d4  5b010000  j 8
0013d8  fa327240  vextracti.s r5, 7(vr4)
0013dc  1b426300  srli r4, r6, 6
0013e0  1b021200  andi r4, r4, 1
0013e4  3b300200  bneq r4, zero, 12
0013e8  7ab26140  vextracti.s r4, 6(vr3)
0013ec  5b010000  j 8
0013f0  7a326240  vextracti.s r4, 6(vr4)
0013f4  9b455300  srli r11, r6, 5
0013f8  9b851500  andi r11, r11, 1
0013fc  3bb00500  bneq r11, zero, 12
001400  fab65140  vextracti.s r13, 5(vr3)
001404  5b010000  j 8
001408  fa365240  vextracti.s r13, 5(vr4)
00140c  9b454300  srli r11, r6, 4
001410  9b851500  andi r11, r11, 1
001414  3bb00500  bneq r11, zero, 12
001418  fab54140  vextracti.s r11, 4(vr3)
00141c  5b010000  j 8
001420  fa354240  vextracti.s r11, 4(vr4)
001424  9b473300  srli r15, r6, 3
001428  9b871700  andi r15, r15, 1
00142c  3bb00700  bneq r15, zero, 12
001430  7abc3140  vextracti.s r24, 3(vr3)
001434  5b010000  j 8
001438  7a3c3240  vextracti.s r24, 3(vr4)
00143c  9b472300  srli r15, r6, 2
001440  9b871700  andi r15, r15, 1
001444  3bb00700  bneq r15, zero, 12
001448  fabc2140  vextracti.s r25, 2(vr3)
00144c  5b010000  j 8
001450  fa3c2240  vextracti.s r25, 2(vr4)
001454  9b471300  srli r15, r6, 1
001458  9b871700  andi r15, r15, 1
00145c  3be00700  bneq r15, zero, 24
001460  fab71140  vextracti.s r15, 1(vr3)
001464  1b031300  andi r6, r6, 1
001468  37600300  beq r6, zero, 24
00146c  7a330240  vextracti.s r6, 0(vr4)
001470  db020000  j 20
001474  fa371240  vextracti.s r15, 1(vr4)
001478  1b031300  andi r6, r6, 1
00147c  bb4f03fe  bneq r6, zero, -16
001480  7ab30140  vextracti.s r6, 0(vr3)
001484  92320002  vadd.s.mz vr5{mr1}, zero, vr0
001488  1f100000  addli zero, zero, 1
00148c  fe0100e0  vmmov mr3, zero
001490  17200000  xor zero, zero, zero
001494  ea225336  vor.u.mh vr5{mr3}, r6, vr5
001498  1f230000  addli r6, zero, 2
00149c  fe0103e0  vmmov mr3, r6
0014a0  1f430000  addli r6, zero, 4
0014a4  eaa25736  vor.u.mh vr5{mr3}, r15, vr5
0014a8  fe0103e0  vmmov mr3, r6
0014ac  1f031000  addli r6, zero, 8
0014b0  eaa25c36  vor.u.mh vr5{mr3}, r25, vr5
0014b4  fe0103e0  vmmov mr3, r6
0014b8  1f032000  addli r6, zero, 16
0014bc  ea225c36  vor.u.mh vr5{mr3}, r24, vr5
0014c0  fe0103e0  vmmov mr3, r6
0014c4  1f034000  addli r6, zero, 32
0014c8  eaa25536  vor.u.mh vr5{mr3}, r11, vr5
0014cc  fe0103e0  vmmov mr3, r6
0014d0  1f038000  addli r6, zero, 64
0014d4  eaa25636  vor.u.mh vr5{mr3}, r13, vr5
0014d8  fe0103e0  vmmov mr3, r6
0014dc  ea225236  vor.u.mh vr5{mr3}, r4, vr5
0014e0  1f020001  addli r4, zero, 128
0014e4  fe0102e0  vmmov mr3, r4
0014e8  1f020002  addli r4, zero, 256
0014ec  eaa25236  vor.u.mh vr5{mr3}, r5, vr5
0014f0  fe0102e0  vmmov mr3, r4
0014f4  1f020004  addli r4, zero, 512
0014f8  ea225536  vor.u.mh vr5{mr3}, r10, vr5
0014fc  fe0102e0  vmmov mr3, r4
001500  1f028ff1  addli r4, r30, -1856
001504  eaa25436  vor.u.mh vr5{mr3}, r9, vr5
001508  c2110202  vload_mask16.mz vr3{mr1}, 0(r4)
00150c  1f020ff1  addli r4, r30, -1920
001510  42120202  vload_mask16.mz vr4{mr1}, 0(r4)
001514  1f020008  addli r4, zero, 1024
001518  fe0102e0  vmmov mr3, r4
00151c  1f020010  addli r4, zero, 2048
001520  ea225436  vor.u.mh vr5{mr3}, r8, vr5
001524  e6c10100  vshuffle2.hf vr3, vr3
001528  fe0102e0  vmmov mr3, r4
00152c  1f020020  addli r4, zero, 4096
001530  66420200  vshuffle2.hf vr4, vr4
001534  eaa25336  vor.u.mh vr5{mr3}, r7, vr5
001538  fe0102e0  vmmov mr3, r4
00153c  16924102  vadd.f.mz.rn vr4{mr1}, vr3, vr4
001540  ea225136  vor.u.mh vr5{mr3}, r2, vr5
001544  1f010040  addli r2, zero, 8192
001548  fe0101e0  vmmov mr3, r2
00154c  eeb140c2  vsrl.s.mz vr3{mr1}, vr1, vr4
001550  661302c0  vabs.f vr6, vr4
001554  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
001558  ab400000  lui r1, 4
00155c  fe8100e0  vmmov mr3, r1
001560  ab800000  lui r1, 8
001564  ea313802  vand.s.mz vr3{mr1}, r16, vr3
001568  ea225b36  vor.u.mh vr5{mr3}, r22, vr5
00156c  f6216142  vlt.u.mz mr3{mr1}, vr2, vr6
001570  7e8301a0  vmmov r6, mr3
001574  fe8100e0  vmmov mr3, r1
001578  9b40f300  srli r1, r6, 15
00157c  96313202  vadd.s.mz vr3{mr1}, vr4, vr3
001580  6a324922  vor.s.mz vr4{mr1}, r18, vr4
001584  ea225736  vor.u.mh vr5{mr3}, r14, vr5
001588  9b801000  andi r1, r1, 1
00158c  92b13802  vadd.s.mz vr3{mr1}, r17, vr3
001590  46005e10  vstore.mh vr5{mr0}, 0(r28)
001594  3bb00000  bneq r1, zero, 12
001598  7ab7f140  vextracti.s r14, 15(vr3)
00159c  5b010000  j 8
0015a0  7a37f240  vextracti.s r14, 15(vr4)
0015a4  9b40e300  srli r1, r6, 14
0015a8  9b801000  andi r1, r1, 1
0015ac  3bb00000  bneq r1, zero, 12
0015b0  fab0e140  vextracti.s r1, 14(vr3)
0015b4  5b010000  j 8
0015b8  fa30e240  vextracti.s r1, 14(vr4)
0015bc  1b41d300  srli r2, r6, 13
0015c0  1b011100  andi r2, r2, 1
0015c4  3b300100  bneq r2, zero, 12
0015c8  7ab1d140  vextracti.s r2, 13(vr3)
0015cc  5b010000  j 8
0015d0  7a31d240  vextracti.s r2, 13(vr4)
0015d4  1b42c300  srli r4, r6, 12
0015d8  1b021200  andi r4, r4, 1
0015dc  3b300200  bneq r4, zero, 12
0015e0  7abbc140  vextracti.s r22, 12(vr3)
0015e4  5b010000  j 8
0015e8  7a3bc240  vextracti.s r22, 12(vr4)
0015ec  1b42b300  srli r4, r6, 11
0015f0  1b021200  andi r4, r4, 1
0015f4  3b300200  bneq r4, zero, 12
0015f8  fab3b140  vextracti.s r7, 11(vr3)
0015fc  5b010000  j 8
001600  fa33b240  vextracti.s r7, 11(vr4)
001604  1b42a300  srli r4, r6, 10
001608  1b021200  andi r4, r4, 1
00160c  3b300200  bneq r4, zero, 12
001610  7ab4a140  vextracti.s r8, 10(vr3)
001614  5b010000  j 8
001618  7a34a240  vextracti.s r8, 10(vr4)
00161c  1b429300  srli r4, r6, 9
001620  1b021200  andi r4, r4, 1
001624  3b300200  bneq r4, zero, 12
001628  fab49140  vextracti.s r9, 9(vr3)
00162c  5b010000  j 8
001630  fa349240  vextracti.s r9, 9(vr4)
001634  1b428300  srli r4, r6, 8
001638  1b021200  andi r4, r4, 1
00163c  3b300200  bneq r4, zero, 12
001640  7ab58140  vextracti.s r10, 8(vr3)
001644  5b010000  j 8
001648  7a358240  vextracti.s r10, 8(vr4)
00164c  1b427300  srli r4, r6, 7
001650  1b021200  andi r4, r4, 1
001654  3b300200  bneq r4, zero, 12
001658  fab27140  vextracti.s r5, 7(vr3)
00165c  5b010000  j 8
001660  fa327240  vextracti.s r5, 7(vr4)
001664  1b426300  srli r4, r6, 6
001668  1b021200  andi r4, r4, 1
00166c  3b300200  bneq r4, zero, 12
001670  7ab26140  vextracti.s r4, 6(vr3)
001674  5b010000  j 8
001678  7a326240  vextracti.s r4, 6(vr4)
00167c  9b455300  srli r11, r6, 5
001680  9b851500  andi r11, r11, 1
001684  3bb00500  bneq r11, zero, 12
001688  fab65140  vextracti.s r13, 5(vr3)
00168c  5b010000  j 8
001690  fa365240  vextracti.s r13, 5(vr4)
001694  9b454300  srli r11, r6, 4
001698  9b851500  andi r11, r11, 1
00169c  3bb00500  bneq r11, zero, 12
0016a0  fab54140  vextracti.s r11, 4(vr3)
0016a4  5b010000  j 8
0016a8  fa354240  vextracti.s r11, 4(vr4)
0016ac  9b473300  srli r15, r6, 3
0016b0  9b871700  andi r15, r15, 1
0016b4  3bb00700  bneq r15, zero, 12
0016b8  7abc3140  vextracti.s r24, 3(vr3)
0016bc  5b010000  j 8
0016c0  7a3c3240  vextracti.s r24, 3(vr4)
0016c4  9b472300  srli r15, r6, 2
0016c8  9b871700  andi r15, r15, 1
0016cc  3bb00700  bneq r15, zero, 12
0016d0  fabc2140  vextracti.s r25, 2(vr3)
0016d4  5b010000  j 8
0016d8  fa3c2240  vextracti.s r25, 2(vr4)
0016dc  9b471300  srli r15, r6, 1
0016e0  9b871700  andi r15, r15, 1
0016e4  3be00700  bneq r15, zero, 24
0016e8  fab71140  vextracti.s r15, 1(vr3)
0016ec  1b031300  andi r6, r6, 1
0016f0  37600300  beq r6, zero, 24
0016f4  7a330240  vextracti.s r6, 0(vr4)
0016f8  db020000  j 20
0016fc  fa371240  vextracti.s r15, 1(vr4)
001700  1b031300  andi r6, r6, 1
001704  bb4f03fe  bneq r6, zero, -16
001708  7ab30140  vextracti.s r6, 0(vr3)
00170c  92310002  vadd.s.mz vr3{mr1}, zero, vr0
001710  1f100000  addli zero, zero, 1
001714  fe0100e0  vmmov mr3, zero
001718  17200000  xor zero, zero, zero
00171c  ea213336  vor.u.mh vr3{mr3}, r6, vr3
001720  1f230000  addli r6, zero, 2
001724  fe0103e0  vmmov mr3, r6
001728  1f430000  addli r6, zero, 4
00172c  eaa13736  vor.u.mh vr3{mr3}, r15, vr3
001730  fe0103e0  vmmov mr3, r6
001734  1f031000  addli r6, zero, 8
001738  eaa13c36  vor.u.mh vr3{mr3}, r25, vr3
00173c  fe0103e0  vmmov mr3, r6
001740  1f032000  addli r6, zero, 16
001744  ea213c36  vor.u.mh vr3{mr3}, r24, vr3
001748  fe0103e0  vmmov mr3, r6
00174c  1f034000  addli r6, zero, 32
001750  eaa13536  vor.u.mh vr3{mr3}, r11, vr3
001754  fe0103e0  vmmov mr3, r6
001758  1f038000  addli r6, zero, 64
00175c  eaa13636  vor.u.mh vr3{mr3}, r13, vr3
001760  fe0103e0  vmmov mr3, r6
001764  ea213236  vor.u.mh vr3{mr3}, r4, vr3
001768  1f020001  addli r4, zero, 128
00176c  fe0102e0  vmmov mr3, r4
001770  1f020002  addli r4, zero, 256
001774  eaa13236  vor.u.mh vr3{mr3}, r5, vr3
001778  fe0102e0  vmmov mr3, r4
00177c  1f020004  addli r4, zero, 512
001780  ea213536  vor.u.mh vr3{mr3}, r10, vr3
001784  fe0102e0  vmmov mr3, r4
001788  1f020008  addli r4, zero, 1024
00178c  eaa13436  vor.u.mh vr3{mr3}, r9, vr3
001790  fe0102e0  vmmov mr3, r4
001794  1f020010  addli r4, zero, 2048
001798  ea213436  vor.u.mh vr3{mr3}, r8, vr3
00179c  fe0102e0  vmmov mr3, r4
0017a0  1f020020  addli r4, zero, 4096
0017a4  eaa13336  vor.u.mh vr3{mr3}, r7, vr3
0017a8  fe0102e0  vmmov mr3, r4
0017ac  1f020040  addli r4, zero, 8192
0017b0  ea213b36  vor.u.mh vr3{mr3}, r22, vr3
0017b4  fe0102e0  vmmov mr3, r4
0017b8  ea213136  vor.u.mh vr3{mr3}, r2, vr3
0017bc  2b410000  lui r2, 4
0017c0  fe0101e0  vmmov mr3, r2
0017c4  1f018ff8  addli r2, r30, -960
0017c8  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
0017cc  ab800000  lui r1, 8
0017d0  fe8100e0  vmmov mr3, r1
0017d4  9f000fed  addli r1, r30, -2432
0017d8  ea213736  vor.u.mh vr3{mr3}, r14, vr3
0017dc  42050600  vload.mz vr10{mr0}, 0(r12)
0017e0  42820d00  vload.mz vr4{mr0}, 0(r27)
0017e4  c2020604  vload.mz vr5{mr2}, 0(r12)
0017e8  42000d00  vload.mz vr0{mr0}, 0(r26)
0017ec  42830d04  vload.mz vr6{mr2}, 0(r27)
0017f0  c2030d04  vload.mz vr7{mr2}, 0(r26)
0017f4  0a94a902  vmul.f.mz.rn vr8{mr1}, r19, vr10
0017f8  eaf53ac0  vsrl.p vr11, r21, vr3
0017fc  4690a002  vstore_mask16.mz vr10{mr1}, 0(r1)
001800  9f000fef  addli r1, r30, -2176
001804  e6c00200  vshuffle2.hf vr1, vr5
001808  e6410300  vshuffle2.hf vr3, vr6
00180c  0a934902  vmul.f.mz.rn vr6{mr1}, r19, vr4
001810  12314002  vadd.s.mz vr2{mr1}, zero, vr4
001814  e6c40300  vshuffle2.hf vr9, vr7
001818  8a930902  vmul.f.mz.rn vr7{mr1}, r19, vr0
00181c  9232a002  vadd.s.mz vr5{mr1}, zero, vr10
001820  0e14a402  vmul.f.mz.rn vr8{mr1}, vr8, vr10
001824  0e134302  vmul.f.mz.rn vr6{mr1}, vr6, vr4
001828  26112302  vmac.f.mz.rn vr2{mr1}, vr6, vr2
00182c  8e930302  vmul.f.mz.rn vr7{mr1}, vr7, vr0
001830  a6125402  vmac.f.mz.rn vr5{mr1}, vr8, vr5
001834  0a941902  vmul.f.mz.rn vr8{mr1}, r19, vr1
001838  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
00183c  9f000ff0  addli r1, r30, -2048
001840  4600be14  vstore.mh vr11{mr2}, 0(r28)
001844  92350002  vadd.s.mz vr11{mr1}, zero, vr0
001848  0a933902  vmul.f.mz.rn vr6{mr1}, r19, vr3
00184c  42020e04  vload.mz vr4{mr2}, 0(r28)
001850  a695b302  vmac.f.mz.rn vr11{mr1}, vr7, vr11
001854  8a939902  vmul.f.mz.rn vr7{mr1}, r19, vr9
001858  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00185c  9f000fee  addli r1, r30, -2304
001860  42000e00  vload.mz vr0{mr0}, 0(r28)
001864  0e153302  vmul.f.mz.rn vr10{mr1}, vr6, vr3
001868  0e141402  vmul.f.mz.rn vr8{mr1}, vr8, vr1
00186c  12331002  vadd.s.mz vr6{mr1}, zero, vr1
001870  26136402  vmac.f.mz.rn vr6{mr1}, vr8, vr6
001874  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
001878  9f008fee  addli r1, r30, -2240
00187c  0e919302  vmul.f.mz.rn vr2{mr1}, vr7, vr9
001880  92333002  vadd.s.mz vr7{mr1}, zero, vr3
001884  a6137502  vmac.f.mz.rn vr7{mr1}, vr10, vr7
001888  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
00188c  9f008fef  addli r1, r30, -2112
001890  8a105a02  vmul.f.mz.rn vr1{mr1}, r20, vr5
001894  66450200  vshuffle2.hf vr10, vr4
001898  8a92a902  vmul.f.mz.rn vr5{mr1}, r19, vr10
00189c  0a12ba02  vmul.f.mz.rn vr4{mr1}, r20, vr11
0018a0  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
0018a4  9f008ff0  addli r1, r30, -1984
0018a8  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
0018ac  ab000040  lui r1, 262144
0018b0  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0018b4  a6149102  vmac.f.mz.rn vr9{mr1}, vr2, vr9
0018b8  0a910902  vmul.f.mz.rn vr2{mr1}, r19, vr0
0018bc  0a924002  vmul.f.mz.rn vr4{mr1}, r1, vr4
0018c0  9a101002  vsub.f.mz.rn vr1{mr1}, zero, vr1
0018c4  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
0018c8  1f010ff1  addli r2, r30, -1920
0018cc  0e110102  vmul.f.mz.rn vr2{mr1}, vr2, vr0
0018d0  8e92a202  vmul.f.mz.rn vr5{mr1}, vr5, vr10
0018d4  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0018d8  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0018dc  1f018ff1  addli r2, r30, -1856
0018e0  a6101102  vmac.f.mz.rn vr1{mr1}, vr2, vr1
0018e4  1231a002  vadd.s.mz vr2{mr1}, zero, vr10
0018e8  8a101a02  vmul.f.mz.rn vr1{mr1}, r20, vr1
0018ec  26912202  vmac.f.mz.rn vr2{mr1}, vr5, vr2
0018f0  9a124002  vsub.f.mz.rn vr5{mr1}, zero, vr4
0018f4  0a127a02  vmul.f.mz.rn vr4{mr1}, r20, vr7
0018f8  4610a102  vstore_mask16.mz vr10{mr1}, 0(r2)
0018fc  1f010fee  addli r2, r30, -2304
001900  0a924002  vmul.f.mz.rn vr4{mr1}, r1, vr4
001904  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
001908  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
00190c  8a110a02  vmul.f.mz.rn vr3{mr1}, r20, vr0
001910  8a913002  vmul.f.mz.rn vr3{mr1}, r1, vr3
001914  1a153002  vsub.f.mz.rn vr10{mr1}, zero, vr3
001918  8a116a02  vmul.f.mz.rn vr3{mr1}, r20, vr6
00191c  0a139a02  vmul.f.mz.rn vr6{mr1}, r20, vr9
001920  0a946002  vmul.f.mz.rn vr8{mr1}, r1, vr6
001924  1a134002  vsub.f.mz.rn vr6{mr1}, zero, vr4
001928  1a121002  vsub.f.mz.rn vr4{mr1}, zero, vr1
00192c  8a102a02  vmul.f.mz.rn vr1{mr1}, r20, vr2
001930  8a913002  vmul.f.mz.rn vr3{mr1}, r1, vr3
001934  9a133002  vsub.f.mz.rn vr7{mr1}, zero, vr3
001938  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
00193c  9a118002  vsub.f.mz.rn vr3{mr1}, zero, vr8
001940  9a101002  vsub.f.mz.rn vr1{mr1}, zero, vr1
001944  00a00000  mfence { lm }
001948  e3028ff8  loadli.w r5,  -960(r30)
00194c  63438ff8  loadli.w r6,  -956(r30)
001950  63019ff8  loadli.w r2,  -952(r30)
001954  e303aff8  loadli.w r7,  -944(r30)
001958  6344aff8  loadli.w r8,  -940(r30)
00195c  e3409ff8  loadli.w r1,  -948(r30)
001960  e304bff8  loadli.w r9,  -936(r30)
001964  6345bff8  loadli.w r10,  -932(r30)
001968  e305cff8  loadli.w r11,  -928(r30)
00196c  e346cff8  loadli.w r13,  -924(r30)
001970  6302dff8  loadli.w r4,  -920(r30)
001974  6347dff8  loadli.w r14,  -916(r30)
001978  e307eff8  loadli.w r15,  -912(r30)
00197c  634beff8  loadli.w r22,  -908(r30)
001980  630cfff8  loadli.w r24,  -904(r30)
001984  e34cfff8  loadli.w r25,  -900(r30)
001988  8f820200  exp.f.rn r5, r5
00198c  0f030300  exp.f.rn r6, r6
001990  0f010100  exp.f.rn r2, r2
001994  8f830300  exp.f.rn r7, r7
001998  0f040400  exp.f.rn r8, r8
00199c  8f800000  exp.f.rn r1, r1
0019a0  8f840400  exp.f.rn r9, r9
0019a4  0f050500  exp.f.rn r10, r10
0019a8  8be27211  add.f.rn r5, r5, r23
0019ac  0b637311  add.f.rn r6, r6, r23
0019b0  0b617111  add.f.rn r2, r2, r23
0019b4  8be07011  add.f.rn r1, r1, r23
0019b8  8f825b18  div.f.rn r5, r23, r5
0019bc  0f836b18  div.f.rn r6, r23, r6
0019c0  0f812b18  div.f.rn r2, r23, r2
0019c4  8f801b18  div.f.rn r1, r23, r1
0019c8  67005ff8  storeli.w r5, -1024(r30)
0019cc  8be27311  add.f.rn r5, r7, r23
0019d0  8f830500  exp.f.rn r7, r11
0019d4  67406ff8  storeli.w r6, -1020(r30)
0019d8  0b637411  add.f.rn r6, r8, r23
0019dc  0be47411  add.f.rn r8, r9, r23
0019e0  e7002ff8  storeli.w r2, -1016(r30)
0019e4  8b647511  add.f.rn r9, r10, r23
0019e8  e7401ff8  storeli.w r1, -1012(r30)
0019ec  8f800600  exp.f.rn r1, r13
0019f0  8f825b18  div.f.rn r5, r23, r5
0019f4  0f816b18  div.f.rn r2, r23, r6
0019f8  0be37311  add.f.rn r6, r7, r23
0019fc  8f838b18  div.f.rn r7, r23, r8
001a00  0f849b18  div.f.rn r8, r23, r9
001a04  8be07011  add.f.rn r1, r1, r23
001a08  67015ff8  storeli.w r5, -1008(r30)
001a0c  8f826b18  div.f.rn r5, r23, r6
001a10  0f030b00  exp.f.rn r6, r22
001a14  67412ff8  storeli.w r2, -1004(r30)
001a18  0f010200  exp.f.rn r2, r4
001a1c  0f020700  exp.f.rn r4, r14
001a20  8f801b18  div.f.rn r1, r23, r1
001a24  e7017ff8  storeli.w r7, -1000(r30)
001a28  8f030c00  exp.f.rn r7, r24
001a2c  e7418ff8  storeli.w r8, -996(r30)
001a30  0f840c00  exp.f.rn r8, r25
001a34  67025ff8  storeli.w r5, -992(r30)
001a38  8f820700  exp.f.rn r5, r15
001a3c  0b617111  add.f.rn r2, r2, r23
001a40  0b627211  add.f.rn r4, r4, r23
001a44  0b637311  add.f.rn r6, r6, r23
001a48  67421ff8  storeli.w r1, -988(r30)
001a4c  9f008ff9  addli r1, r30, -832
001a50  8be37311  add.f.rn r7, r7, r23
001a54  0b647411  add.f.rn r8, r8, r23
001a58  0f812b18  div.f.rn r2, r23, r2
001a5c  0f824b18  div.f.rn r4, r23, r4
001a60  0f836b18  div.f.rn r6, r23, r6
001a64  8be27211  add.f.rn r5, r5, r23
001a68  8f837b18  div.f.rn r7, r23, r7
001a6c  0f848b18  div.f.rn r8, r23, r8
001a70  8f825b18  div.f.rn r5, r23, r5
001a74  e7022ff8  storeli.w r2, -984(r30)
001a78  e7424ff8  storeli.w r4, -980(r30)
001a7c  67436ff8  storeli.w r6, -972(r30)
001a80  e7037ff8  storeli.w r7, -968(r30)
001a84  e7438ff8  storeli.w r8, -964(r30)
001a88  67035ff8  storeli.w r5, -976(r30)
001a8c  00a00000  mfence { lm }
001a90  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
001a94  9f000ff8  addli r1, r30, -1024
001a98  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
001a9c  00a00000  mfence { lm }
001aa0  e3008ff9  loadli.w r1,  -832(r30)
001aa4  63418ff9  loadli.w r2,  -828(r30)
001aa8  63029ff9  loadli.w r4,  -824(r30)
001aac  6303aff9  loadli.w r6,  -816(r30)
001ab0  e343aff9  loadli.w r7,  -812(r30)
001ab4  6304bff9  loadli.w r8,  -808(r30)
001ab8  e344bff9  loadli.w r9,  -804(r30)
001abc  6305cff9  loadli.w r10,  -800(r30)
001ac0  e345cff9  loadli.w r11,  -796(r30)
001ac4  e306dff9  loadli.w r13,  -792(r30)
001ac8  6347dff9  loadli.w r14,  -788(r30)
001acc  e307eff9  loadli.w r15,  -784(r30)
001ad0  634beff9  loadli.w r22,  -780(r30)
001ad4  630cfff9  loadli.w r24,  -776(r30)
001ad8  e34cfff9  loadli.w r25,  -772(r30)
001adc  8f800000  exp.f.rn r1, r1
001ae0  0f010100  exp.f.rn r2, r2
001ae4  0f020200  exp.f.rn r4, r4
001ae8  8be27011  add.f.rn r5, r1, r23
001aec  0b617111  add.f.rn r2, r2, r23
001af0  0b627211  add.f.rn r4, r4, r23
001af4  e3409ff9  loadli.w r1,  -820(r30)
001af8  8f800000  exp.f.rn r1, r1
001afc  8f825b18  div.f.rn r5, r23, r5
001b00  0f812b18  div.f.rn r2, r23, r2
001b04  0f824b18  div.f.rn r4, r23, r4
001b08  8be07011  add.f.rn r1, r1, r23
001b0c  67085ff8  storeli.w r5, -896(r30)
001b10  8f020300  exp.f.rn r5, r6
001b14  0f830300  exp.f.rn r6, r7
001b18  8f830400  exp.f.rn r7, r9
001b1c  67482ff8  storeli.w r2, -892(r30)
001b20  0f010400  exp.f.rn r2, r8
001b24  0f040500  exp.f.rn r8, r10
001b28  e7084ff8  storeli.w r4, -888(r30)
001b2c  8f801b18  div.f.rn r1, r23, r1
001b30  8be27211  add.f.rn r5, r5, r23
001b34  0b637311  add.f.rn r6, r6, r23
001b38  0b617111  add.f.rn r2, r2, r23
001b3c  8be37311  add.f.rn r7, r7, r23
001b40  e7481ff8  storeli.w r1, -884(r30)
001b44  8f800500  exp.f.rn r1, r11
001b48  8f825b18  div.f.rn r5, r23, r5
001b4c  0f826b18  div.f.rn r4, r23, r6
001b50  0b637411  add.f.rn r6, r8, r23
001b54  0f812b18  div.f.rn r2, r23, r2
001b58  8f837b18  div.f.rn r7, r23, r7
001b5c  0f840c00  exp.f.rn r8, r25
001b60  8be07011  add.f.rn r1, r1, r23
001b64  67095ff8  storeli.w r5, -880(r30)
001b68  8f826b18  div.f.rn r5, r23, r6
001b6c  0f030b00  exp.f.rn r6, r22
001b70  67494ff8  storeli.w r4, -876(r30)
001b74  0f020700  exp.f.rn r4, r14
001b78  e7092ff8  storeli.w r2, -872(r30)
001b7c  0f810600  exp.f.rn r2, r13
001b80  e7497ff8  storeli.w r7, -868(r30)
001b84  8f030c00  exp.f.rn r7, r24
001b88  0b647411  add.f.rn r8, r8, r23
001b8c  8f801b18  div.f.rn r1, r23, r1
001b90  0f848b18  div.f.rn r8, r23, r8
001b94  670a5ff8  storeli.w r5, -864(r30)
001b98  8f820700  exp.f.rn r5, r15
001b9c  0b617111  add.f.rn r2, r2, r23
001ba0  0b627211  add.f.rn r4, r4, r23
001ba4  0b637311  add.f.rn r6, r6, r23
001ba8  8be37311  add.f.rn r7, r7, r23
001bac  674a1ff8  storeli.w r1, -860(r30)
001bb0  9f008ffa  addli r1, r30, -704
001bb4  0f812b18  div.f.rn r2, r23, r2
001bb8  0f824b18  div.f.rn r4, r23, r4
001bbc  0f836b18  div.f.rn r6, r23, r6
001bc0  8f837b18  div.f.rn r7, r23, r7
001bc4  e74b8ff8  storeli.w r8, -836(r30)
001bc8  8be27211  add.f.rn r5, r5, r23
001bcc  8f825b18  div.f.rn r5, r23, r5
001bd0  e70a2ff8  storeli.w r2, -856(r30)
001bd4  e74a4ff8  storeli.w r4, -852(r30)
001bd8  674b6ff8  storeli.w r6, -844(r30)
001bdc  e70b7ff8  storeli.w r7, -840(r30)
001be0  670b5ff8  storeli.w r5, -848(r30)
001be4  00a00000  mfence { lm }
001be8  4690a002  vstore_mask16.mz vr10{mr1}, 0(r1)
001bec  9f000ff9  addli r1, r30, -896
001bf0  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
001bf4  00a00000  mfence { lm }
001bf8  e3008ffa  loadli.w r1,  -704(r30)
001bfc  63418ffa  loadli.w r2,  -700(r30)
001c00  63029ffa  loadli.w r4,  -696(r30)
001c04  6303affa  loadli.w r6,  -688(r30)
001c08  e343affa  loadli.w r7,  -684(r30)
001c0c  6304bffa  loadli.w r8,  -680(r30)
001c10  e344bffa  loadli.w r9,  -676(r30)
001c14  6305cffa  loadli.w r10,  -672(r30)
001c18  e345cffa  loadli.w r11,  -668(r30)
001c1c  e306dffa  loadli.w r13,  -664(r30)
001c20  6347dffa  loadli.w r14,  -660(r30)
001c24  e307effa  loadli.w r15,  -656(r30)
001c28  634beffa  loadli.w r22,  -652(r30)
001c2c  630cfffa  loadli.w r24,  -648(r30)
001c30  e34cfffa  loadli.w r25,  -644(r30)
001c34  8f800000  exp.f.rn r1, r1
001c38  0f010100  exp.f.rn r2, r2
001c3c  0f020200  exp.f.rn r4, r4
001c40  8be27011  add.f.rn r5, r1, r23
001c44  0b617111  add.f.rn r2, r2, r23
001c48  0b627211  add.f.rn r4, r4, r23
001c4c  e3409ffa  loadli.w r1,  -692(r30)
001c50  8f800000  exp.f.rn r1, r1
001c54  8f825b18  div.f.rn r5, r23, r5
001c58  0f812b18  div.f.rn r2, r23, r2
001c5c  0f824b18  div.f.rn r4, r23, r4
001c60  8be07011  add.f.rn r1, r1, r23
001c64  67005ffa  storeli.w r5, -768(r30)
001c68  8f020300  exp.f.rn r5, r6
001c6c  0f830300  exp.f.rn r6, r7
001c70  8f830400  exp.f.rn r7, r9
001c74  67402ffa  storeli.w r2, -764(r30)
001c78  0f010400  exp.f.rn r2, r8
001c7c  0f040500  exp.f.rn r8, r10
001c80  e7004ffa  storeli.w r4, -760(r30)
001c84  8f801b18  div.f.rn r1, r23, r1
001c88  8be27211  add.f.rn r5, r5, r23
001c8c  0b637311  add.f.rn r6, r6, r23
001c90  0b617111  add.f.rn r2, r2, r23
001c94  8be37311  add.f.rn r7, r7, r23
001c98  e7401ffa  storeli.w r1, -756(r30)
001c9c  8f800500  exp.f.rn r1, r11
001ca0  8f825b18  div.f.rn r5, r23, r5
001ca4  0f826b18  div.f.rn r4, r23, r6
001ca8  0b637411  add.f.rn r6, r8, r23
001cac  0f812b18  div.f.rn r2, r23, r2
001cb0  8f837b18  div.f.rn r7, r23, r7
001cb4  0f840c00  exp.f.rn r8, r25
001cb8  8be07011  add.f.rn r1, r1, r23
001cbc  67015ffa  storeli.w r5, -752(r30)
001cc0  8f826b18  div.f.rn r5, r23, r6
001cc4  0f030b00  exp.f.rn r6, r22
001cc8  67414ffa  storeli.w r4, -748(r30)
001ccc  0f020700  exp.f.rn r4, r14
001cd0  e7012ffa  storeli.w r2, -744(r30)
001cd4  0f810600  exp.f.rn r2, r13
001cd8  e7417ffa  storeli.w r7, -740(r30)
001cdc  8f030c00  exp.f.rn r7, r24
001ce0  0b647411  add.f.rn r8, r8, r23
001ce4  8f801b18  div.f.rn r1, r23, r1
001ce8  0f848b18  div.f.rn r8, r23, r8
001cec  67025ffa  storeli.w r5, -736(r30)
001cf0  8f820700  exp.f.rn r5, r15
001cf4  0b617111  add.f.rn r2, r2, r23
001cf8  0b627211  add.f.rn r4, r4, r23
001cfc  0b637311  add.f.rn r6, r6, r23
001d00  8be37311  add.f.rn r7, r7, r23
001d04  67421ffa  storeli.w r1, -732(r30)
001d08  9f008ffb  addli r1, r30, -576
001d0c  0f812b18  div.f.rn r2, r23, r2
001d10  0f824b18  div.f.rn r4, r23, r4
001d14  0f836b18  div.f.rn r6, r23, r6
001d18  8f837b18  div.f.rn r7, r23, r7
001d1c  e7438ffa  storeli.w r8, -708(r30)
001d20  8be27211  add.f.rn r5, r5, r23
001d24  8f825b18  div.f.rn r5, r23, r5
001d28  e7022ffa  storeli.w r2, -728(r30)
001d2c  e7424ffa  storeli.w r4, -724(r30)
001d30  67436ffa  storeli.w r6, -716(r30)
001d34  e7037ffa  storeli.w r7, -712(r30)
001d38  67035ffa  storeli.w r5, -720(r30)
001d3c  00a00000  mfence { lm }
001d40  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
001d44  9f000ffa  addli r1, r30, -768
001d48  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001d4c  9f008fed  addli r1, r30, -2368
001d50  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001d54  00a00000  mfence { lm }
001d58  e3008ffb  loadli.w r1,  -576(r30)
001d5c  63418ffb  loadli.w r2,  -572(r30)
001d60  63029ffb  loadli.w r4,  -568(r30)
001d64  6303affb  loadli.w r6,  -560(r30)
001d68  e343affb  loadli.w r7,  -556(r30)
001d6c  6304bffb  loadli.w r8,  -552(r30)
001d70  e344bffb  loadli.w r9,  -548(r30)
001d74  6305cffb  loadli.w r10,  -544(r30)
001d78  e345cffb  loadli.w r11,  -540(r30)
001d7c  e306dffb  loadli.w r13,  -536(r30)
001d80  6347dffb  loadli.w r14,  -532(r30)
001d84  e307effb  loadli.w r15,  -528(r30)
001d88  634beffb  loadli.w r22,  -524(r30)
001d8c  630cfffb  loadli.w r24,  -520(r30)
001d90  e34cfffb  loadli.w r25,  -516(r30)
001d94  8f800000  exp.f.rn r1, r1
001d98  0f010100  exp.f.rn r2, r2
001d9c  0f020200  exp.f.rn r4, r4
001da0  8be27011  add.f.rn r5, r1, r23
001da4  0b617111  add.f.rn r2, r2, r23
001da8  0b627211  add.f.rn r4, r4, r23
001dac  e3409ffb  loadli.w r1,  -564(r30)
001db0  8f800000  exp.f.rn r1, r1
001db4  8f825b18  div.f.rn r5, r23, r5
001db8  0f812b18  div.f.rn r2, r23, r2
001dbc  0f824b18  div.f.rn r4, r23, r4
001dc0  8be07011  add.f.rn r1, r1, r23
001dc4  67085ffa  storeli.w r5, -640(r30)
001dc8  8f020300  exp.f.rn r5, r6
001dcc  0f830300  exp.f.rn r6, r7
001dd0  8f830400  exp.f.rn r7, r9
001dd4  67482ffa  storeli.w r2, -636(r30)
001dd8  0f010400  exp.f.rn r2, r8
001ddc  0f040500  exp.f.rn r8, r10
001de0  e7084ffa  storeli.w r4, -632(r30)
001de4  8f801b18  div.f.rn r1, r23, r1
001de8  8be27211  add.f.rn r5, r5, r23
001dec  0b637311  add.f.rn r6, r6, r23
001df0  0b617111  add.f.rn r2, r2, r23
001df4  8be37311  add.f.rn r7, r7, r23
001df8  e7481ffa  storeli.w r1, -628(r30)
001dfc  8f800500  exp.f.rn r1, r11
001e00  8f825b18  div.f.rn r5, r23, r5
001e04  0f826b18  div.f.rn r4, r23, r6
001e08  0b637411  add.f.rn r6, r8, r23
001e0c  0f812b18  div.f.rn r2, r23, r2
001e10  8f837b18  div.f.rn r7, r23, r7
001e14  0f840c00  exp.f.rn r8, r25
001e18  8be07011  add.f.rn r1, r1, r23
001e1c  67095ffa  storeli.w r5, -624(r30)
001e20  8f826b18  div.f.rn r5, r23, r6
001e24  0f030b00  exp.f.rn r6, r22
001e28  67494ffa  storeli.w r4, -620(r30)
001e2c  0f020700  exp.f.rn r4, r14
001e30  e7092ffa  storeli.w r2, -616(r30)
001e34  0f810600  exp.f.rn r2, r13
001e38  e7497ffa  storeli.w r7, -612(r30)
001e3c  8f030c00  exp.f.rn r7, r24
001e40  0b647411  add.f.rn r8, r8, r23
001e44  8f801b18  div.f.rn r1, r23, r1
001e48  0f848b18  div.f.rn r8, r23, r8
001e4c  670a5ffa  storeli.w r5, -608(r30)
001e50  8f820700  exp.f.rn r5, r15
001e54  0b617111  add.f.rn r2, r2, r23
001e58  0b627211  add.f.rn r4, r4, r23
001e5c  0b637311  add.f.rn r6, r6, r23
001e60  8be37311  add.f.rn r7, r7, r23
001e64  674a1ffa  storeli.w r1, -604(r30)
001e68  9f008ffc  addli r1, r30, -448
001e6c  0f812b18  div.f.rn r2, r23, r2
001e70  0f824b18  div.f.rn r4, r23, r4
001e74  0f836b18  div.f.rn r6, r23, r6
001e78  8f837b18  div.f.rn r7, r23, r7
001e7c  e74b8ffa  storeli.w r8, -580(r30)
001e80  8be27211  add.f.rn r5, r5, r23
001e84  8f825b18  div.f.rn r5, r23, r5
001e88  e70a2ffa  storeli.w r2, -600(r30)
001e8c  e74a4ffa  storeli.w r4, -596(r30)
001e90  674b6ffa  storeli.w r6, -588(r30)
001e94  e70b7ffa  storeli.w r7, -584(r30)
001e98  670b5ffa  storeli.w r5, -592(r30)
001e9c  00a00000  mfence { lm }
001ea0  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001ea4  9f000ffb  addli r1, r30, -640
001ea8  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001eac  9f000fee  addli r1, r30, -2304
001eb0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001eb4  00a00000  mfence { lm }
001eb8  e3008ffc  loadli.w r1,  -448(r30)
001ebc  63418ffc  loadli.w r2,  -444(r30)
001ec0  63029ffc  loadli.w r4,  -440(r30)
001ec4  6303affc  loadli.w r6,  -432(r30)
001ec8  e343affc  loadli.w r7,  -428(r30)
001ecc  6304bffc  loadli.w r8,  -424(r30)
001ed0  e344bffc  loadli.w r9,  -420(r30)
001ed4  6305cffc  loadli.w r10,  -416(r30)
001ed8  e345cffc  loadli.w r11,  -412(r30)
001edc  e306dffc  loadli.w r13,  -408(r30)
001ee0  6347dffc  loadli.w r14,  -404(r30)
001ee4  e307effc  loadli.w r15,  -400(r30)
001ee8  634beffc  loadli.w r22,  -396(r30)
001eec  630cfffc  loadli.w r24,  -392(r30)
001ef0  e34cfffc  loadli.w r25,  -388(r30)
001ef4  8f800000  exp.f.rn r1, r1
001ef8  0f010100  exp.f.rn r2, r2
001efc  0f020200  exp.f.rn r4, r4
001f00  8be27011  add.f.rn r5, r1, r23
001f04  0b617111  add.f.rn r2, r2, r23
001f08  0b627211  add.f.rn r4, r4, r23
001f0c  e3409ffc  loadli.w r1,  -436(r30)
001f10  8f800000  exp.f.rn r1, r1
001f14  8f825b18  div.f.rn r5, r23, r5
001f18  0f812b18  div.f.rn r2, r23, r2
001f1c  0f824b18  div.f.rn r4, r23, r4
001f20  8be07011  add.f.rn r1, r1, r23
001f24  67005ffc  storeli.w r5, -512(r30)
001f28  8f020300  exp.f.rn r5, r6
001f2c  0f830300  exp.f.rn r6, r7
001f30  8f830400  exp.f.rn r7, r9
001f34  67402ffc  storeli.w r2, -508(r30)
001f38  0f010400  exp.f.rn r2, r8
001f3c  0f040500  exp.f.rn r8, r10
001f40  e7004ffc  storeli.w r4, -504(r30)
001f44  8f801b18  div.f.rn r1, r23, r1
001f48  8be27211  add.f.rn r5, r5, r23
001f4c  0b637311  add.f.rn r6, r6, r23
001f50  0b617111  add.f.rn r2, r2, r23
001f54  8be37311  add.f.rn r7, r7, r23
001f58  e7401ffc  storeli.w r1, -500(r30)
001f5c  8f800500  exp.f.rn r1, r11
001f60  8f825b18  div.f.rn r5, r23, r5
001f64  0f826b18  div.f.rn r4, r23, r6
001f68  0b637411  add.f.rn r6, r8, r23
001f6c  0f812b18  div.f.rn r2, r23, r2
001f70  8f837b18  div.f.rn r7, r23, r7
001f74  0f840c00  exp.f.rn r8, r25
001f78  8be07011  add.f.rn r1, r1, r23
001f7c  67015ffc  storeli.w r5, -496(r30)
001f80  8f826b18  div.f.rn r5, r23, r6
001f84  0f030b00  exp.f.rn r6, r22
001f88  67414ffc  storeli.w r4, -492(r30)
001f8c  0f020700  exp.f.rn r4, r14
001f90  e7012ffc  storeli.w r2, -488(r30)
001f94  0f810600  exp.f.rn r2, r13
001f98  e7417ffc  storeli.w r7, -484(r30)
001f9c  8f030c00  exp.f.rn r7, r24
001fa0  0b647411  add.f.rn r8, r8, r23
001fa4  8f801b18  div.f.rn r1, r23, r1
001fa8  0f848b18  div.f.rn r8, r23, r8
001fac  67025ffc  storeli.w r5, -480(r30)
001fb0  8f820700  exp.f.rn r5, r15
001fb4  0b617111  add.f.rn r2, r2, r23
001fb8  0b627211  add.f.rn r4, r4, r23
001fbc  0b637311  add.f.rn r6, r6, r23
001fc0  8be37311  add.f.rn r7, r7, r23
001fc4  67421ffc  storeli.w r1, -476(r30)
001fc8  9f008ffd  addli r1, r30, -320
001fcc  0f812b18  div.f.rn r2, r23, r2
001fd0  0f824b18  div.f.rn r4, r23, r4
001fd4  0f836b18  div.f.rn r6, r23, r6
001fd8  8f837b18  div.f.rn r7, r23, r7
001fdc  e7438ffc  storeli.w r8, -452(r30)
001fe0  8be27211  add.f.rn r5, r5, r23
001fe4  8f825b18  div.f.rn r5, r23, r5
001fe8  e7022ffc  storeli.w r2, -472(r30)
001fec  e7424ffc  storeli.w r4, -468(r30)
001ff0  67436ffc  storeli.w r6, -460(r30)
001ff4  e7037ffc  storeli.w r7, -456(r30)
001ff8  67035ffc  storeli.w r5, -464(r30)
001ffc  00a00000  mfence { lm }
002000  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
002004  9f000ffc  addli r1, r30, -512
002008  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
00200c  00a00000  mfence { lm }
002010  e3008ffd  loadli.w r1,  -320(r30)
002014  63418ffd  loadli.w r2,  -316(r30)
002018  63029ffd  loadli.w r4,  -312(r30)
00201c  6303affd  loadli.w r6,  -304(r30)
002020  e343affd  loadli.w r7,  -300(r30)
002024  6304bffd  loadli.w r8,  -296(r30)
002028  e344bffd  loadli.w r9,  -292(r30)
00202c  6305cffd  loadli.w r10,  -288(r30)
002030  e345cffd  loadli.w r11,  -284(r30)
002034  e306dffd  loadli.w r13,  -280(r30)
002038  6347dffd  loadli.w r14,  -276(r30)
00203c  e307effd  loadli.w r15,  -272(r30)
002040  634beffd  loadli.w r22,  -268(r30)
002044  630cfffd  loadli.w r24,  -264(r30)
002048  e34cfffd  loadli.w r25,  -260(r30)
00204c  8f800000  exp.f.rn r1, r1
002050  0f010100  exp.f.rn r2, r2
002054  0f020200  exp.f.rn r4, r4
002058  8be27011  add.f.rn r5, r1, r23
00205c  0b617111  add.f.rn r2, r2, r23
002060  0b627211  add.f.rn r4, r4, r23
002064  e3409ffd  loadli.w r1,  -308(r30)
002068  8f800000  exp.f.rn r1, r1
00206c  8f825b18  div.f.rn r5, r23, r5
002070  0f812b18  div.f.rn r2, r23, r2
002074  0f824b18  div.f.rn r4, r23, r4
002078  8be07011  add.f.rn r1, r1, r23
00207c  67085ffc  storeli.w r5, -384(r30)
002080  8f020300  exp.f.rn r5, r6
002084  0f830300  exp.f.rn r6, r7
002088  8f830400  exp.f.rn r7, r9
00208c  67482ffc  storeli.w r2, -380(r30)
002090  0f010400  exp.f.rn r2, r8
002094  0f040500  exp.f.rn r8, r10
002098  e7084ffc  storeli.w r4, -376(r30)
00209c  8f801b18  div.f.rn r1, r23, r1
0020a0  8be27211  add.f.rn r5, r5, r23
0020a4  0b637311  add.f.rn r6, r6, r23
0020a8  0b617111  add.f.rn r2, r2, r23
0020ac  8be37311  add.f.rn r7, r7, r23
0020b0  e7481ffc  storeli.w r1, -372(r30)
0020b4  8f800500  exp.f.rn r1, r11
0020b8  8f825b18  div.f.rn r5, r23, r5
0020bc  0f826b18  div.f.rn r4, r23, r6
0020c0  0b637411  add.f.rn r6, r8, r23
0020c4  0f812b18  div.f.rn r2, r23, r2
0020c8  8f837b18  div.f.rn r7, r23, r7
0020cc  0f840c00  exp.f.rn r8, r25
0020d0  8be07011  add.f.rn r1, r1, r23
0020d4  67095ffc  storeli.w r5, -368(r30)
0020d8  8f826b18  div.f.rn r5, r23, r6
0020dc  0f030b00  exp.f.rn r6, r22
0020e0  67494ffc  storeli.w r4, -364(r30)
0020e4  0f020700  exp.f.rn r4, r14
0020e8  e7092ffc  storeli.w r2, -360(r30)
0020ec  0f810600  exp.f.rn r2, r13
0020f0  e7497ffc  storeli.w r7, -356(r30)
0020f4  8f030c00  exp.f.rn r7, r24
0020f8  0b647411  add.f.rn r8, r8, r23
0020fc  8f801b18  div.f.rn r1, r23, r1
002100  0f848b18  div.f.rn r8, r23, r8
002104  670a5ffc  storeli.w r5, -352(r30)
002108  8f820700  exp.f.rn r5, r15
00210c  0b617111  add.f.rn r2, r2, r23
002110  0b627211  add.f.rn r4, r4, r23
002114  0b637311  add.f.rn r6, r6, r23
002118  8be37311  add.f.rn r7, r7, r23
00211c  674a1ffc  storeli.w r1, -348(r30)
002120  9f008ffe  addli r1, r30, -192
002124  0f812b18  div.f.rn r2, r23, r2
002128  0f824b18  div.f.rn r4, r23, r4
00212c  0f836b18  div.f.rn r6, r23, r6
002130  8f837b18  div.f.rn r7, r23, r7
002134  e74b8ffc  storeli.w r8, -324(r30)
002138  8be27211  add.f.rn r5, r5, r23
00213c  8f825b18  div.f.rn r5, r23, r5
002140  e70a2ffc  storeli.w r2, -344(r30)
002144  e74a4ffc  storeli.w r4, -340(r30)
002148  674b6ffc  storeli.w r6, -332(r30)
00214c  e70b7ffc  storeli.w r7, -328(r30)
002150  670b5ffc  storeli.w r5, -336(r30)
002154  00a00000  mfence { lm }
002158  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
00215c  9f000ffd  addli r1, r30, -384
002160  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
002164  00a00000  mfence { lm }
002168  e3008ffe  loadli.w r1,  -192(r30)
00216c  63418ffe  loadli.w r2,  -188(r30)
002170  63029ffe  loadli.w r4,  -184(r30)
002174  6303affe  loadli.w r6,  -176(r30)
002178  e343affe  loadli.w r7,  -172(r30)
00217c  6304bffe  loadli.w r8,  -168(r30)
002180  e344bffe  loadli.w r9,  -164(r30)
002184  6305cffe  loadli.w r10,  -160(r30)
002188  e345cffe  loadli.w r11,  -156(r30)
00218c  e306dffe  loadli.w r13,  -152(r30)
002190  6347dffe  loadli.w r14,  -148(r30)
002194  e307effe  loadli.w r15,  -144(r30)
002198  634beffe  loadli.w r22,  -140(r30)
00219c  630cfffe  loadli.w r24,  -136(r30)
0021a0  e34cfffe  loadli.w r25,  -132(r30)
0021a4  8f800000  exp.f.rn r1, r1
0021a8  0f010100  exp.f.rn r2, r2
0021ac  0f020200  exp.f.rn r4, r4
0021b0  8be27011  add.f.rn r5, r1, r23
0021b4  0b617111  add.f.rn r2, r2, r23
0021b8  0b627211  add.f.rn r4, r4, r23
0021bc  e3409ffe  loadli.w r1,  -180(r30)
0021c0  8f800000  exp.f.rn r1, r1
0021c4  8f825b18  div.f.rn r5, r23, r5
0021c8  0f812b18  div.f.rn r2, r23, r2
0021cc  0f824b18  div.f.rn r4, r23, r4
0021d0  8be07011  add.f.rn r1, r1, r23
0021d4  67005ffe  storeli.w r5, -256(r30)
0021d8  8f020300  exp.f.rn r5, r6
0021dc  0f830300  exp.f.rn r6, r7
0021e0  8f830400  exp.f.rn r7, r9
0021e4  67402ffe  storeli.w r2, -252(r30)
0021e8  0f010400  exp.f.rn r2, r8
0021ec  0f040500  exp.f.rn r8, r10
0021f0  e7004ffe  storeli.w r4, -248(r30)
0021f4  8f801b18  div.f.rn r1, r23, r1
0021f8  8be27211  add.f.rn r5, r5, r23
0021fc  0b637311  add.f.rn r6, r6, r23
002200  0b617111  add.f.rn r2, r2, r23
002204  8be37311  add.f.rn r7, r7, r23
002208  e7401ffe  storeli.w r1, -244(r30)
00220c  8f800500  exp.f.rn r1, r11
002210  8f825b18  div.f.rn r5, r23, r5
002214  0f826b18  div.f.rn r4, r23, r6
002218  0b637411  add.f.rn r6, r8, r23
00221c  0f812b18  div.f.rn r2, r23, r2
002220  8f837b18  div.f.rn r7, r23, r7
002224  0f840c00  exp.f.rn r8, r25
002228  8be07011  add.f.rn r1, r1, r23
00222c  67015ffe  storeli.w r5, -240(r30)
002230  8f826b18  div.f.rn r5, r23, r6
002234  0f030b00  exp.f.rn r6, r22
002238  67414ffe  storeli.w r4, -236(r30)
00223c  0f020700  exp.f.rn r4, r14
002240  e7012ffe  storeli.w r2, -232(r30)
002244  0f810600  exp.f.rn r2, r13
002248  e7417ffe  storeli.w r7, -228(r30)
00224c  8f030c00  exp.f.rn r7, r24
002250  0b647411  add.f.rn r8, r8, r23
002254  8f801b18  div.f.rn r1, r23, r1
002258  0f848b18  div.f.rn r8, r23, r8
00225c  67025ffe  storeli.w r5, -224(r30)
002260  8f820700  exp.f.rn r5, r15
002264  0b617111  add.f.rn r2, r2, r23
002268  0b627211  add.f.rn r4, r4, r23
00226c  0b637311  add.f.rn r6, r6, r23
002270  8be37311  add.f.rn r7, r7, r23
002274  67421ffe  storeli.w r1, -220(r30)
002278  9f008fff  addli r1, r30, -64
00227c  0f812b18  div.f.rn r2, r23, r2
002280  0f824b18  div.f.rn r4, r23, r4
002284  0f836b18  div.f.rn r6, r23, r6
002288  8f837b18  div.f.rn r7, r23, r7
00228c  e7438ffe  storeli.w r8, -196(r30)
002290  8be27211  add.f.rn r5, r5, r23
002294  8f825b18  div.f.rn r5, r23, r5
002298  e7424ffe  storeli.w r4, -212(r30)
00229c  67436ffe  storeli.w r6, -204(r30)
0022a0  e7022ffe  storeli.w r2, -216(r30)
0022a4  e7037ffe  storeli.w r7, -200(r30)
0022a8  1f020fed  addli r4, r30, -2432
0022ac  1f030ff3  addli r6, r30, -1664
0022b0  67035ffe  storeli.w r5, -208(r30)
0022b4  00a00000  mfence { lm }
0022b8  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0022bc  9f000ffe  addli r1, r30, -256
0022c0  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0022c4  00a00000  mfence { lm }
0022c8  e3008fff  loadli.w r1,  -64(r30)
0022cc  63418fff  loadli.w r2,  -60(r30)
0022d0  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
0022d4  63029fff  loadli.w r4,  -56(r30)
0022d8  e3429fff  loadli.w r5,  -52(r30)
0022dc  e343afff  loadli.w r7,  -44(r30)
0022e0  6304bfff  loadli.w r8,  -40(r30)
0022e4  e344bfff  loadli.w r9,  -36(r30)
0022e8  6305cfff  loadli.w r10,  -32(r30)
0022ec  e345cfff  loadli.w r11,  -28(r30)
0022f0  e347dfff  loadli.w r15,  -20(r30)
0022f4  e306dfff  loadli.w r13,  -24(r30)
0022f8  630befff  loadli.w r22,  -16(r30)
0022fc  634cefff  loadli.w r24,  -12(r30)
002300  e30cffff  loadli.w r25,  -8(r30)
002304  e34affff  loadli.w r21,  -4(r30)
002308  8f800000  exp.f.rn r1, r1
00230c  0f010100  exp.f.rn r2, r2
002310  0f020200  exp.f.rn r4, r4
002314  8f820200  exp.f.rn r5, r5
002318  0e127002  vmul.f.mz.rn vr4{mr1}, vr0, vr7
00231c  c2130302  vload_mask16.mz vr7{mr1}, 0(r6)
002320  6303afff  loadli.w r6,  -48(r30)
002324  8be07011  add.f.rn r1, r1, r23
002328  0b617111  add.f.rn r2, r2, r23
00232c  0b627211  add.f.rn r4, r4, r23
002330  e61002c0  vabs.f vr1, vr4
002334  f6a11342  vlt.u.mz mr3{mr1}, vr7, vr1
002338  7e8701a0  vmmov r14, mr3
00233c  8f801b18  div.f.rn r1, r23, r1
002340  0f812b18  div.f.rn r2, r23, r2
002344  67081ffe  storeli.w r1, -128(r30)
002348  8f000300  exp.f.rn r1, r6
00234c  0f830300  exp.f.rn r6, r7
002350  67482ffe  storeli.w r2, -124(r30)
002354  0f814b18  div.f.rn r2, r23, r4
002358  0be27211  add.f.rn r4, r5, r23
00235c  8f020400  exp.f.rn r5, r8
002360  8f830400  exp.f.rn r7, r9
002364  0f040500  exp.f.rn r8, r10
002368  8be07011  add.f.rn r1, r1, r23
00236c  0b637311  add.f.rn r6, r6, r23
002370  e7082ffe  storeli.w r2, -120(r30)
002374  0f814b18  div.f.rn r2, r23, r4
002378  0be27211  add.f.rn r4, r5, r23
00237c  8f801b18  div.f.rn r1, r23, r1
002380  8f826b18  div.f.rn r5, r23, r6
002384  0be37311  add.f.rn r6, r7, r23
002388  8b637411  add.f.rn r7, r8, r23
00238c  0f840500  exp.f.rn r8, r11
002390  0f824b18  div.f.rn r4, r23, r4
002394  e7482ffe  storeli.w r2, -116(r30)
002398  0f817b18  div.f.rn r2, r23, r7
00239c  8f830c00  exp.f.rn r7, r25
0023a0  67091ffe  storeli.w r1, -112(r30)
0023a4  8f806b18  div.f.rn r1, r23, r6
0023a8  0f830700  exp.f.rn r6, r15
0023ac  67495ffe  storeli.w r5, -108(r30)
0023b0  8b627411  add.f.rn r5, r8, r23
0023b4  e7094ffe  storeli.w r4, -104(r30)
0023b8  0f820600  exp.f.rn r4, r13
0023bc  0f840a00  exp.f.rn r8, r21
0023c0  670a2ffe  storeli.w r2, -96(r30)
0023c4  0f010b00  exp.f.rn r2, r22
0023c8  e7491ffe  storeli.w r1, -100(r30)
0023cc  8f805b18  div.f.rn r1, r23, r5
0023d0  8f020c00  exp.f.rn r5, r24
0023d4  0b637311  add.f.rn r6, r6, r23
0023d8  0b627211  add.f.rn r4, r4, r23
0023dc  0f824b18  div.f.rn r4, r23, r4
0023e0  674a1ffe  storeli.w r1, -92(r30)
0023e4  8b607111  add.f.rn r1, r2, r23
0023e8  0be17211  add.f.rn r2, r5, r23
0023ec  8f826b18  div.f.rn r5, r23, r6
0023f0  0be37311  add.f.rn r6, r7, r23
0023f4  8b637411  add.f.rn r7, r8, r23
0023f8  1f048ff3  addli r8, r30, -1600
0023fc  42130402  vload_mask16.mz vr6{mr1}, 0(r8)
002400  8f801b18  div.f.rn r1, r23, r1
002404  0f812b18  div.f.rn r2, r23, r2
002408  e70a4ffe  storeli.w r4, -88(r30)
00240c  0f826b18  div.f.rn r4, r23, r6
002410  0f837b18  div.f.rn r6, r23, r7
002414  e74a5ffe  storeli.w r5, -84(r30)
002418  ee3043c2  vsrl.s.mz vr1{mr1}, vr6, vr4
00241c  ea301802  vand.s.mz vr1{mr1}, r16, vr1
002420  670b1ffe  storeli.w r1, -80(r30)
002424  674b2ffe  storeli.w r2, -76(r30)
002428  e70b4ffe  storeli.w r4, -72(r30)
00242c  e74b6ffe  storeli.w r6, -68(r30)
002430  9f000fff  addli r1, r30, -128
002434  00a00000  mfence { lm }
002438  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
00243c  9b40f700  srli r1, r14, 15
002440  96301202  vadd.s.mz vr1{mr1}, vr4, vr1
002444  6a324922  vor.s.mz vr4{mr1}, r18, vr4
002448  9b801000  andi r1, r1, 1
00244c  92b11802  vadd.s.mz vr3{mr1}, r17, vr1
002450  3bb00000  bneq r1, zero, 12
002454  7abbf140  vextracti.s r22, 15(vr3)
002458  5b010000  j 8
00245c  7a3bf240  vextracti.s r22, 15(vr4)
002460  1f018ff2  addli r2, r30, -1728
002464  9b40e700  srli r1, r14, 14
002468  9f0a2000  addli r21, zero, 16
00246c  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
002470  9b801000  andi r1, r1, 1
002474  3bb00000  bneq r1, zero, 12
002478  fab0e140  vextracti.s r1, 14(vr3)
00247c  5b010000  j 8
002480  fa30e240  vextracti.s r1, 14(vr4)
002484  1b41d700  srli r2, r14, 13
002488  1b011100  andi r2, r2, 1
00248c  3b300100  bneq r2, zero, 12
002490  7ab1d140  vextracti.s r2, 13(vr3)
002494  5b010000  j 8
002498  7a31d240  vextracti.s r2, 13(vr4)
00249c  1b42c700  srli r4, r14, 12
0024a0  1b021200  andi r4, r4, 1
0024a4  3b300200  bneq r4, zero, 12
0024a8  7ab3c140  vextracti.s r6, 12(vr3)
0024ac  5b010000  j 8
0024b0  7a33c240  vextracti.s r6, 12(vr4)
0024b4  1b42b700  srli r4, r14, 11
0024b8  1b021200  andi r4, r4, 1
0024bc  3b300200  bneq r4, zero, 12
0024c0  fab3b140  vextracti.s r7, 11(vr3)
0024c4  5b010000  j 8
0024c8  fa33b240  vextracti.s r7, 11(vr4)
0024cc  1b42a700  srli r4, r14, 10
0024d0  1b021200  andi r4, r4, 1
0024d4  3b300200  bneq r4, zero, 12
0024d8  7ab4a140  vextracti.s r8, 10(vr3)
0024dc  5b010000  j 8
0024e0  7a34a240  vextracti.s r8, 10(vr4)
0024e4  1b429700  srli r4, r14, 9
0024e8  1b021200  andi r4, r4, 1
0024ec  3b300200  bneq r4, zero, 12
0024f0  fab49140  vextracti.s r9, 9(vr3)
0024f4  5b010000  j 8
0024f8  fa349240  vextracti.s r9, 9(vr4)
0024fc  1b428700  srli r4, r14, 8
002500  1b021200  andi r4, r4, 1
002504  3b300200  bneq r4, zero, 12
002508  7ab58140  vextracti.s r10, 8(vr3)
00250c  5b010000  j 8
002510  7a358240  vextracti.s r10, 8(vr4)
002514  1b427700  srli r4, r14, 7
002518  1b021200  andi r4, r4, 1
00251c  3b300200  bneq r4, zero, 12
002520  fab27140  vextracti.s r5, 7(vr3)
002524  5b010000  j 8
002528  fa327240  vextracti.s r5, 7(vr4)
00252c  1b426700  srli r4, r14, 6
002530  1b021200  andi r4, r4, 1
002534  3b300200  bneq r4, zero, 12
002538  7ab26140  vextracti.s r4, 6(vr3)
00253c  5b010000  j 8
002540  7a326240  vextracti.s r4, 6(vr4)
002544  9b455700  srli r11, r14, 5
002548  9b851500  andi r11, r11, 1
00254c  3bb00500  bneq r11, zero, 12
002550  fab65140  vextracti.s r13, 5(vr3)
002554  5b010000  j 8
002558  fa365240  vextracti.s r13, 5(vr4)
00255c  9b454700  srli r11, r14, 4
002560  9b851500  andi r11, r11, 1
002564  3bb00500  bneq r11, zero, 12
002568  fab54140  vextracti.s r11, 4(vr3)
00256c  5b010000  j 8
002570  fa354240  vextracti.s r11, 4(vr4)
002574  9b473700  srli r15, r14, 3
002578  9b871700  andi r15, r15, 1
00257c  3bb00700  bneq r15, zero, 12
002580  7abc3140  vextracti.s r24, 3(vr3)
002584  5b010000  j 8
002588  7a3c3240  vextracti.s r24, 3(vr4)
00258c  9b472700  srli r15, r14, 2
002590  9b871700  andi r15, r15, 1
002594  3bb00700  bneq r15, zero, 12
002598  fabc2140  vextracti.s r25, 2(vr3)
00259c  5b010000  j 8
0025a0  fa3c2240  vextracti.s r25, 2(vr4)
0025a4  9b471700  srli r15, r14, 1
0025a8  9b871700  andi r15, r15, 1
0025ac  3be00700  bneq r15, zero, 24
0025b0  fab71140  vextracti.s r15, 1(vr3)
0025b4  1b071700  andi r14, r14, 1
0025b8  37600700  beq r14, zero, 24
0025bc  7a370240  vextracti.s r14, 0(vr4)
0025c0  db020000  j 20
0025c4  fa371240  vextracti.s r15, 1(vr4)
0025c8  1b071700  andi r14, r14, 1
0025cc  bb4f07fe  bneq r14, zero, -16
0025d0  7ab70140  vextracti.s r14, 0(vr3)
0025d4  92320002  vadd.s.mz vr5{mr1}, zero, vr0
0025d8  1f100000  addli zero, zero, 1
0025dc  fe0100e0  vmmov mr3, zero
0025e0  17200000  xor zero, zero, zero
0025e4  ea225736  vor.u.mh vr5{mr3}, r14, vr5
0025e8  1f270000  addli r14, zero, 2
0025ec  fe0107e0  vmmov mr3, r14
0025f0  1f470000  addli r14, zero, 4
0025f4  eaa25736  vor.u.mh vr5{mr3}, r15, vr5
0025f8  fe0107e0  vmmov mr3, r14
0025fc  1f071000  addli r14, zero, 8
002600  eaa25c36  vor.u.mh vr5{mr3}, r25, vr5
002604  fe0107e0  vmmov mr3, r14
002608  1f072000  addli r14, zero, 16
00260c  ea225c36  vor.u.mh vr5{mr3}, r24, vr5
002610  fe0107e0  vmmov mr3, r14
002614  eaa25536  vor.u.mh vr5{mr3}, r11, vr5
002618  9f054000  addli r11, zero, 32
00261c  fe8105e0  vmmov mr3, r11
002620  9f058000  addli r11, zero, 64
002624  eaa25636  vor.u.mh vr5{mr3}, r13, vr5
002628  fe8105e0  vmmov mr3, r11
00262c  ea225236  vor.u.mh vr5{mr3}, r4, vr5
002630  1f020001  addli r4, zero, 128
002634  fe0102e0  vmmov mr3, r4
002638  1f020002  addli r4, zero, 256
00263c  eaa25236  vor.u.mh vr5{mr3}, r5, vr5
002640  fe0102e0  vmmov mr3, r4
002644  1f020004  addli r4, zero, 512
002648  ea225536  vor.u.mh vr5{mr3}, r10, vr5
00264c  fe0102e0  vmmov mr3, r4
002650  1f020008  addli r4, zero, 1024
002654  eaa25436  vor.u.mh vr5{mr3}, r9, vr5
002658  fe0102e0  vmmov mr3, r4
00265c  1f028fee  addli r4, r30, -2240
002660  ea225436  vor.u.mh vr5{mr3}, r8, vr5
002664  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
002668  1f020010  addli r4, zero, 2048
00266c  fe0102e0  vmmov mr3, r4
002670  1f020020  addli r4, zero, 4096
002674  eaa25336  vor.u.mh vr5{mr3}, r7, vr5
002678  fe0102e0  vmmov mr3, r4
00267c  1f020040  addli r4, zero, 8192
002680  0e922002  vmul.f.mz.rn vr4{mr1}, vr1, vr2
002684  ea225336  vor.u.mh vr5{mr3}, r6, vr5
002688  fe0102e0  vmmov mr3, r4
00268c  ee3043c2  vsrl.s.mz vr1{mr1}, vr6, vr4
002690  661102c0  vabs.f vr2, vr4
002694  ea225136  vor.u.mh vr5{mr3}, r2, vr5
002698  2b410000  lui r2, 4
00269c  ea301802  vand.s.mz vr1{mr1}, r16, vr1
0026a0  fe0101e0  vmmov mr3, r2
0026a4  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
0026a8  ab800000  lui r1, 8
0026ac  f6a12342  vlt.u.mz mr3{mr1}, vr7, vr2
0026b0  7e8301a0  vmmov r6, mr3
0026b4  96301202  vadd.s.mz vr1{mr1}, vr4, vr1
0026b8  fe8100e0  vmmov mr3, r1
0026bc  9b40f300  srli r1, r6, 15
0026c0  6a324922  vor.s.mz vr4{mr1}, r18, vr4
0026c4  ea225b36  vor.u.mh vr5{mr3}, r22, vr5
0026c8  9b801000  andi r1, r1, 1
0026cc  92b11802  vadd.s.mz vr3{mr1}, r17, vr1
0026d0  46005610  vstore.mh vr5{mr0}, 0(r12)
0026d4  3bb00000  bneq r1, zero, 12
0026d8  7ab7f140  vextracti.s r14, 15(vr3)
0026dc  5b010000  j 8
0026e0  7a37f240  vextracti.s r14, 15(vr4)
0026e4  9b40e300  srli r1, r6, 14
0026e8  9b801000  andi r1, r1, 1
0026ec  3bb00000  bneq r1, zero, 12
0026f0  fab0e140  vextracti.s r1, 14(vr3)
0026f4  5b010000  j 8
0026f8  fa30e240  vextracti.s r1, 14(vr4)
0026fc  1b41d300  srli r2, r6, 13
002700  1b011100  andi r2, r2, 1
002704  3b300100  bneq r2, zero, 12
002708  7ab1d140  vextracti.s r2, 13(vr3)
00270c  5b010000  j 8
002710  7a31d240  vextracti.s r2, 13(vr4)
002714  1b42c300  srli r4, r6, 12
002718  1b021200  andi r4, r4, 1
00271c  3b300200  bneq r4, zero, 12
002720  7abbc140  vextracti.s r22, 12(vr3)
002724  5b010000  j 8
002728  7a3bc240  vextracti.s r22, 12(vr4)
00272c  1b42b300  srli r4, r6, 11
002730  1b021200  andi r4, r4, 1
002734  3b300200  bneq r4, zero, 12
002738  fab3b140  vextracti.s r7, 11(vr3)
00273c  5b010000  j 8
002740  fa33b240  vextracti.s r7, 11(vr4)
002744  1b42a300  srli r4, r6, 10
002748  1b021200  andi r4, r4, 1
00274c  3b300200  bneq r4, zero, 12
002750  7ab4a140  vextracti.s r8, 10(vr3)
002754  5b010000  j 8
002758  7a34a240  vextracti.s r8, 10(vr4)
00275c  1b429300  srli r4, r6, 9
002760  1b021200  andi r4, r4, 1
002764  3b300200  bneq r4, zero, 12
002768  fab49140  vextracti.s r9, 9(vr3)
00276c  5b010000  j 8
002770  fa349240  vextracti.s r9, 9(vr4)
002774  1b428300  srli r4, r6, 8
002778  1b021200  andi r4, r4, 1
00277c  3b300200  bneq r4, zero, 12
002780  7ab58140  vextracti.s r10, 8(vr3)
002784  5b010000  j 8
002788  7a358240  vextracti.s r10, 8(vr4)
00278c  1b427300  srli r4, r6, 7
002790  1b021200  andi r4, r4, 1
002794  3b300200  bneq r4, zero, 12
002798  fab27140  vextracti.s r5, 7(vr3)
00279c  5b010000  j 8
0027a0  fa327240  vextracti.s r5, 7(vr4)
0027a4  1b426300  srli r4, r6, 6
0027a8  1b021200  andi r4, r4, 1
0027ac  3b300200  bneq r4, zero, 12
0027b0  7ab26140  vextracti.s r4, 6(vr3)
0027b4  5b010000  j 8
0027b8  7a326240  vextracti.s r4, 6(vr4)
0027bc  9b455300  srli r11, r6, 5
0027c0  9b851500  andi r11, r11, 1
0027c4  3bb00500  bneq r11, zero, 12
0027c8  fab65140  vextracti.s r13, 5(vr3)
0027cc  5b010000  j 8
0027d0  fa365240  vextracti.s r13, 5(vr4)
0027d4  9b454300  srli r11, r6, 4
0027d8  9b851500  andi r11, r11, 1
0027dc  3bb00500  bneq r11, zero, 12
0027e0  fab54140  vextracti.s r11, 4(vr3)
0027e4  5b010000  j 8
0027e8  fa354240  vextracti.s r11, 4(vr4)
0027ec  9b473300  srli r15, r6, 3
0027f0  9b871700  andi r15, r15, 1
0027f4  3bb00700  bneq r15, zero, 12
0027f8  7abc3140  vextracti.s r24, 3(vr3)
0027fc  5b010000  j 8
002800  7a3c3240  vextracti.s r24, 3(vr4)
002804  9b472300  srli r15, r6, 2
002808  9b871700  andi r15, r15, 1
00280c  3bb00700  bneq r15, zero, 12
002810  fabc2140  vextracti.s r25, 2(vr3)
002814  5b010000  j 8
002818  fa3c2240  vextracti.s r25, 2(vr4)
00281c  9b471300  srli r15, r6, 1
002820  9b871700  andi r15, r15, 1
002824  3be00700  bneq r15, zero, 24
002828  fab71140  vextracti.s r15, 1(vr3)
00282c  1b031300  andi r6, r6, 1
002830  37600300  beq r6, zero, 24
002834  7a330240  vextracti.s r6, 0(vr4)
002838  db020000  j 20
00283c  fa371240  vextracti.s r15, 1(vr4)
002840  1b031300  andi r6, r6, 1
002844  bb4f03fe  bneq r6, zero, -16
002848  7ab30140  vextracti.s r6, 0(vr3)
00284c  12320002  vadd.s.mz vr4{mr1}, zero, vr0
002850  1f100000  addli zero, zero, 1
002854  fe0100e0  vmmov mr3, zero
002858  17200000  xor zero, zero, zero
00285c  6a224336  vor.u.mh vr4{mr3}, r6, vr4
002860  1f230000  addli r6, zero, 2
002864  fe0103e0  vmmov mr3, r6
002868  1f430000  addli r6, zero, 4
00286c  6aa24736  vor.u.mh vr4{mr3}, r15, vr4
002870  fe0103e0  vmmov mr3, r6
002874  1f031000  addli r6, zero, 8
002878  6aa24c36  vor.u.mh vr4{mr3}, r25, vr4
00287c  fe0103e0  vmmov mr3, r6
002880  1f032000  addli r6, zero, 16
002884  6a224c36  vor.u.mh vr4{mr3}, r24, vr4
002888  fe0103e0  vmmov mr3, r6
00288c  1f034000  addli r6, zero, 32
002890  6aa24536  vor.u.mh vr4{mr3}, r11, vr4
002894  fe0103e0  vmmov mr3, r6
002898  1f038000  addli r6, zero, 64
00289c  6aa24636  vor.u.mh vr4{mr3}, r13, vr4
0028a0  fe0103e0  vmmov mr3, r6
0028a4  6a224236  vor.u.mh vr4{mr3}, r4, vr4
0028a8  1f020001  addli r4, zero, 128
0028ac  fe0102e0  vmmov mr3, r4
0028b0  1f020002  addli r4, zero, 256
0028b4  6aa24236  vor.u.mh vr4{mr3}, r5, vr4
0028b8  fe0102e0  vmmov mr3, r4
0028bc  1f020004  addli r4, zero, 512
0028c0  6a224536  vor.u.mh vr4{mr3}, r10, vr4
0028c4  fe0102e0  vmmov mr3, r4
0028c8  1f020008  addli r4, zero, 1024
0028cc  6aa24436  vor.u.mh vr4{mr3}, r9, vr4
0028d0  fe0102e0  vmmov mr3, r4
0028d4  1f020010  addli r4, zero, 2048
0028d8  6a224436  vor.u.mh vr4{mr3}, r8, vr4
0028dc  fe0102e0  vmmov mr3, r4
0028e0  1f020fef  addli r4, r30, -2176
0028e4  6aa24336  vor.u.mh vr4{mr3}, r7, vr4
0028e8  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
0028ec  1f028fed  addli r4, r30, -2368
0028f0  42110202  vload_mask16.mz vr2{mr1}, 0(r4)
0028f4  1f020020  addli r4, zero, 4096
0028f8  fe0102e0  vmmov mr3, r4
0028fc  1f020040  addli r4, zero, 8192
002900  6a224b36  vor.u.mh vr4{mr3}, r22, vr4
002904  fe0102e0  vmmov mr3, r4
002908  8e922002  vmul.f.mz.rn vr5{mr1}, vr1, vr2
00290c  6a224136  vor.u.mh vr4{mr3}, r2, vr4
002910  2b410000  lui r2, 4
002914  fe0101e0  vmmov mr3, r2
002918  ee3053c2  vsrl.s.mz vr1{mr1}, vr6, vr5
00291c  669102c0  vabs.f vr2, vr5
002920  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
002924  ab800000  lui r1, 8
002928  fe8100e0  vmmov mr3, r1
00292c  ea301802  vand.s.mz vr1{mr1}, r16, vr1
002930  6a224736  vor.u.mh vr4{mr3}, r14, vr4
002934  f6a12342  vlt.u.mz mr3{mr1}, vr7, vr2
002938  7e8b01a0  vmmov r22, mr3
00293c  9b40fb00  srli r1, r22, 15
002940  96b01202  vadd.s.mz vr1{mr1}, vr5, vr1
002944  9b801000  andi r1, r1, 1
002948  92b11802  vadd.s.mz vr3{mr1}, r17, vr1
00294c  eaf04ac0  vsrl.p vr1, r21, vr4
002950  6a325922  vor.s.mz vr4{mr1}, r18, vr5
002954  46001614  vstore.mh vr1{mr2}, 0(r12)
002958  3bb00000  bneq r1, zero, 12
00295c  7ab7f140  vextracti.s r14, 15(vr3)
002960  5b010000  j 8
002964  7a37f240  vextracti.s r14, 15(vr4)
002968  9b40eb00  srli r1, r22, 14
00296c  9b801000  andi r1, r1, 1
002970  3bb00000  bneq r1, zero, 12
002974  fab0e140  vextracti.s r1, 14(vr3)
002978  5b010000  j 8
00297c  fa30e240  vextracti.s r1, 14(vr4)
002980  1b41db00  srli r2, r22, 13
002984  1b011100  andi r2, r2, 1
002988  3b300100  bneq r2, zero, 12
00298c  7ab1d140  vextracti.s r2, 13(vr3)
002990  5b010000  j 8
002994  7a31d240  vextracti.s r2, 13(vr4)
002998  1b42cb00  srli r4, r22, 12
00299c  1b021200  andi r4, r4, 1
0029a0  3b300200  bneq r4, zero, 12
0029a4  7ab3c140  vextracti.s r6, 12(vr3)
0029a8  5b010000  j 8
0029ac  7a33c240  vextracti.s r6, 12(vr4)
0029b0  1b42bb00  srli r4, r22, 11
0029b4  1b021200  andi r4, r4, 1
0029b8  3b300200  bneq r4, zero, 12
0029bc  fab3b140  vextracti.s r7, 11(vr3)
0029c0  5b010000  j 8
0029c4  fa33b240  vextracti.s r7, 11(vr4)
0029c8  1b42ab00  srli r4, r22, 10
0029cc  1b021200  andi r4, r4, 1
0029d0  3b300200  bneq r4, zero, 12
0029d4  7ab4a140  vextracti.s r8, 10(vr3)
0029d8  5b010000  j 8
0029dc  7a34a240  vextracti.s r8, 10(vr4)
0029e0  1b429b00  srli r4, r22, 9
0029e4  1b021200  andi r4, r4, 1
0029e8  3b300200  bneq r4, zero, 12
0029ec  fab49140  vextracti.s r9, 9(vr3)
0029f0  5b010000  j 8
0029f4  fa349240  vextracti.s r9, 9(vr4)
0029f8  1b428b00  srli r4, r22, 8
0029fc  1b021200  andi r4, r4, 1
002a00  3b300200  bneq r4, zero, 12
002a04  7ab58140  vextracti.s r10, 8(vr3)
002a08  5b010000  j 8
002a0c  7a358240  vextracti.s r10, 8(vr4)
002a10  1b427b00  srli r4, r22, 7
002a14  1b021200  andi r4, r4, 1
002a18  3b300200  bneq r4, zero, 12
002a1c  fab27140  vextracti.s r5, 7(vr3)
002a20  5b010000  j 8
002a24  fa327240  vextracti.s r5, 7(vr4)
002a28  1b426b00  srli r4, r22, 6
002a2c  1b021200  andi r4, r4, 1
002a30  3b300200  bneq r4, zero, 12
002a34  7ab26140  vextracti.s r4, 6(vr3)
002a38  5b010000  j 8
002a3c  7a326240  vextracti.s r4, 6(vr4)
002a40  9b455b00  srli r11, r22, 5
002a44  9b851500  andi r11, r11, 1
002a48  3bb00500  bneq r11, zero, 12
002a4c  fab65140  vextracti.s r13, 5(vr3)
002a50  5b010000  j 8
002a54  fa365240  vextracti.s r13, 5(vr4)
002a58  9b454b00  srli r11, r22, 4
002a5c  9b851500  andi r11, r11, 1
002a60  3bb00500  bneq r11, zero, 12
002a64  fab54140  vextracti.s r11, 4(vr3)
002a68  5b010000  j 8
002a6c  fa354240  vextracti.s r11, 4(vr4)
002a70  9b473b00  srli r15, r22, 3
002a74  9b871700  andi r15, r15, 1
002a78  3bb00700  bneq r15, zero, 12
002a7c  7abc3140  vextracti.s r24, 3(vr3)
002a80  5b010000  j 8
002a84  7a3c3240  vextracti.s r24, 3(vr4)
002a88  9b472b00  srli r15, r22, 2
002a8c  9b871700  andi r15, r15, 1
002a90  3bb00700  bneq r15, zero, 12
002a94  fabc2140  vextracti.s r25, 2(vr3)
002a98  5b010000  j 8
002a9c  fa3c2240  vextracti.s r25, 2(vr4)
002aa0  9b471b00  srli r15, r22, 1
002aa4  9b871700  andi r15, r15, 1
002aa8  3be00700  bneq r15, zero, 24
002aac  fab71140  vextracti.s r15, 1(vr3)
002ab0  9b0a1b00  andi r21, r22, 1
002ab4  37e00a00  beq r21, zero, 24
002ab8  7a3b0240  vextracti.s r22, 0(vr4)
002abc  db020000  j 20
002ac0  fa371240  vextracti.s r15, 1(vr4)
002ac4  9b0a1b00  andi r21, r22, 1
002ac8  bbcf0afe  bneq r21, zero, -16
002acc  7abb0140  vextracti.s r22, 0(vr3)
002ad0  92320002  vadd.s.mz vr5{mr1}, zero, vr0
002ad4  9f1a0000  addli r21, zero, 1
002ad8  fe810ae0  vmmov mr3, r21
002adc  9f2a0000  addli r21, zero, 2
002ae0  ea225b36  vor.u.mh vr5{mr3}, r22, vr5
002ae4  fe810ae0  vmmov mr3, r21
002ae8  9f0a2000  addli r21, zero, 16
002aec  eaa25736  vor.u.mh vr5{mr3}, r15, vr5
002af0  9f470000  addli r15, zero, 4
002af4  fe8107e0  vmmov mr3, r15
002af8  9f071000  addli r15, zero, 8
002afc  eaa25c36  vor.u.mh vr5{mr3}, r25, vr5
002b00  fe8107e0  vmmov mr3, r15
002b04  9f072000  addli r15, zero, 16
002b08  ea225c36  vor.u.mh vr5{mr3}, r24, vr5
002b0c  fe8107e0  vmmov mr3, r15
002b10  eaa25536  vor.u.mh vr5{mr3}, r11, vr5
002b14  9f054000  addli r11, zero, 32
002b18  fe8105e0  vmmov mr3, r11
002b1c  9f058000  addli r11, zero, 64
002b20  eaa25636  vor.u.mh vr5{mr3}, r13, vr5
002b24  fe8105e0  vmmov mr3, r11
002b28  ea225236  vor.u.mh vr5{mr3}, r4, vr5
002b2c  1f020001  addli r4, zero, 128
002b30  fe0102e0  vmmov mr3, r4
002b34  1f020002  addli r4, zero, 256
002b38  eaa25236  vor.u.mh vr5{mr3}, r5, vr5
002b3c  fe0102e0  vmmov mr3, r4
002b40  1f020004  addli r4, zero, 512
002b44  ea225536  vor.u.mh vr5{mr3}, r10, vr5
002b48  fe0102e0  vmmov mr3, r4
002b4c  1f020008  addli r4, zero, 1024
002b50  eaa25436  vor.u.mh vr5{mr3}, r9, vr5
002b54  fe0102e0  vmmov mr3, r4
002b58  1f028fef  addli r4, r30, -2112
002b5c  ea225436  vor.u.mh vr5{mr3}, r8, vr5
002b60  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
002b64  1f020fee  addli r4, r30, -2304
002b68  42110202  vload_mask16.mz vr2{mr1}, 0(r4)
002b6c  1f020010  addli r4, zero, 2048
002b70  fe0102e0  vmmov mr3, r4
002b74  1f020020  addli r4, zero, 4096
002b78  eaa25336  vor.u.mh vr5{mr3}, r7, vr5
002b7c  fe0102e0  vmmov mr3, r4
002b80  1f020040  addli r4, zero, 8192
002b84  0e922002  vmul.f.mz.rn vr4{mr1}, vr1, vr2
002b88  ea225336  vor.u.mh vr5{mr3}, r6, vr5
002b8c  fe0102e0  vmmov mr3, r4
002b90  ee3043c2  vsrl.s.mz vr1{mr1}, vr6, vr4
002b94  661102c0  vabs.f vr2, vr4
002b98  ea225136  vor.u.mh vr5{mr3}, r2, vr5
002b9c  2b410000  lui r2, 4
002ba0  fe0101e0  vmmov mr3, r2
002ba4  ea301802  vand.s.mz vr1{mr1}, r16, vr1
002ba8  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
002bac  ab800000  lui r1, 8
002bb0  f6a12342  vlt.u.mz mr3{mr1}, vr7, vr2
002bb4  7e8301a0  vmmov r6, mr3
002bb8  fe8100e0  vmmov mr3, r1
002bbc  9b40f300  srli r1, r6, 15
002bc0  96301202  vadd.s.mz vr1{mr1}, vr4, vr1
002bc4  6a324922  vor.s.mz vr4{mr1}, r18, vr4
002bc8  ea225736  vor.u.mh vr5{mr3}, r14, vr5
002bcc  9b801000  andi r1, r1, 1
002bd0  92b11802  vadd.s.mz vr3{mr1}, r17, vr1
002bd4  46805d10  vstore.mh vr5{mr0}, 0(r27)
002bd8  3bb00000  bneq r1, zero, 12
002bdc  7ab7f140  vextracti.s r14, 15(vr3)
002be0  5b010000  j 8
002be4  7a37f240  vextracti.s r14, 15(vr4)
002be8  9b40e300  srli r1, r6, 14
002bec  9b801000  andi r1, r1, 1
002bf0  3bb00000  bneq r1, zero, 12
002bf4  fab0e140  vextracti.s r1, 14(vr3)
002bf8  5b010000  j 8
002bfc  fa30e240  vextracti.s r1, 14(vr4)
002c00  1b41d300  srli r2, r6, 13
002c04  1b011100  andi r2, r2, 1
002c08  3b300100  bneq r2, zero, 12
002c0c  7ab1d140  vextracti.s r2, 13(vr3)
002c10  5b010000  j 8
002c14  7a31d240  vextracti.s r2, 13(vr4)
002c18  1b42c300  srli r4, r6, 12
002c1c  1b021200  andi r4, r4, 1
002c20  3b300200  bneq r4, zero, 12
002c24  7abbc140  vextracti.s r22, 12(vr3)
002c28  5b010000  j 8
002c2c  7a3bc240  vextracti.s r22, 12(vr4)
002c30  1b42b300  srli r4, r6, 11
002c34  1b021200  andi r4, r4, 1
002c38  3b300200  bneq r4, zero, 12
002c3c  fab3b140  vextracti.s r7, 11(vr3)
002c40  5b010000  j 8
002c44  fa33b240  vextracti.s r7, 11(vr4)
002c48  1b42a300  srli r4, r6, 10
002c4c  1b021200  andi r4, r4, 1
002c50  3b300200  bneq r4, zero, 12
002c54  7ab4a140  vextracti.s r8, 10(vr3)
002c58  5b010000  j 8
002c5c  7a34a240  vextracti.s r8, 10(vr4)
002c60  1b429300  srli r4, r6, 9
002c64  1b021200  andi r4, r4, 1
002c68  3b300200  bneq r4, zero, 12
002c6c  fab49140  vextracti.s r9, 9(vr3)
002c70  5b010000  j 8
002c74  fa349240  vextracti.s r9, 9(vr4)
002c78  1b428300  srli r4, r6, 8
002c7c  1b021200  andi r4, r4, 1
002c80  3b300200  bneq r4, zero, 12
002c84  7ab58140  vextracti.s r10, 8(vr3)
002c88  5b010000  j 8
002c8c  7a358240  vextracti.s r10, 8(vr4)
002c90  1b427300  srli r4, r6, 7
002c94  1b021200  andi r4, r4, 1
002c98  3b300200  bneq r4, zero, 12
002c9c  fab27140  vextracti.s r5, 7(vr3)
002ca0  5b010000  j 8
002ca4  fa327240  vextracti.s r5, 7(vr4)
002ca8  1b426300  srli r4, r6, 6
002cac  1b021200  andi r4, r4, 1
002cb0  3b300200  bneq r4, zero, 12
002cb4  7ab26140  vextracti.s r4, 6(vr3)
002cb8  5b010000  j 8
002cbc  7a326240  vextracti.s r4, 6(vr4)
002cc0  9b455300  srli r11, r6, 5
002cc4  9b851500  andi r11, r11, 1
002cc8  3bb00500  bneq r11, zero, 12
002ccc  fab65140  vextracti.s r13, 5(vr3)
002cd0  5b010000  j 8
002cd4  fa365240  vextracti.s r13, 5(vr4)
002cd8  9b454300  srli r11, r6, 4
002cdc  9b851500  andi r11, r11, 1
002ce0  3bb00500  bneq r11, zero, 12
002ce4  fab54140  vextracti.s r11, 4(vr3)
002ce8  5b010000  j 8
002cec  fa354240  vextracti.s r11, 4(vr4)
002cf0  9b473300  srli r15, r6, 3
002cf4  9b871700  andi r15, r15, 1
002cf8  3bb00700  bneq r15, zero, 12
002cfc  7abc3140  vextracti.s r24, 3(vr3)
002d00  5b010000  j 8
002d04  7a3c3240  vextracti.s r24, 3(vr4)
002d08  9b472300  srli r15, r6, 2
002d0c  9b871700  andi r15, r15, 1
002d10  3bb00700  bneq r15, zero, 12
002d14  fabc2140  vextracti.s r25, 2(vr3)
002d18  5b010000  j 8
002d1c  fa3c2240  vextracti.s r25, 2(vr4)
002d20  9b471300  srli r15, r6, 1
002d24  9b871700  andi r15, r15, 1
002d28  3be00700  bneq r15, zero, 24
002d2c  fab71140  vextracti.s r15, 1(vr3)
002d30  1b031300  andi r6, r6, 1
002d34  37600300  beq r6, zero, 24
002d38  7a330240  vextracti.s r6, 0(vr4)
002d3c  db020000  j 20
002d40  fa371240  vextracti.s r15, 1(vr4)
002d44  1b031300  andi r6, r6, 1
002d48  bb4f03fe  bneq r6, zero, -16
002d4c  7ab30140  vextracti.s r6, 0(vr3)
002d50  12320002  vadd.s.mz vr4{mr1}, zero, vr0
002d54  1f100000  addli zero, zero, 1
002d58  fe0100e0  vmmov mr3, zero
002d5c  17200000  xor zero, zero, zero
002d60  6a224336  vor.u.mh vr4{mr3}, r6, vr4
002d64  1f230000  addli r6, zero, 2
002d68  fe0103e0  vmmov mr3, r6
002d6c  1f430000  addli r6, zero, 4
002d70  6aa24736  vor.u.mh vr4{mr3}, r15, vr4
002d74  fe0103e0  vmmov mr3, r6
002d78  1f031000  addli r6, zero, 8
002d7c  6aa24c36  vor.u.mh vr4{mr3}, r25, vr4
002d80  fe0103e0  vmmov mr3, r6
002d84  1f032000  addli r6, zero, 16
002d88  6a224c36  vor.u.mh vr4{mr3}, r24, vr4
002d8c  fe0103e0  vmmov mr3, r6
002d90  1f034000  addli r6, zero, 32
002d94  6aa24536  vor.u.mh vr4{mr3}, r11, vr4
002d98  fe0103e0  vmmov mr3, r6
002d9c  1f038000  addli r6, zero, 64
002da0  6aa24636  vor.u.mh vr4{mr3}, r13, vr4
002da4  fe0103e0  vmmov mr3, r6
002da8  6a224236  vor.u.mh vr4{mr3}, r4, vr4
002dac  1f020001  addli r4, zero, 128
002db0  fe0102e0  vmmov mr3, r4
002db4  1f020002  addli r4, zero, 256
002db8  6aa24236  vor.u.mh vr4{mr3}, r5, vr4
002dbc  fe0102e0  vmmov mr3, r4
002dc0  1f020004  addli r4, zero, 512
002dc4  6a224536  vor.u.mh vr4{mr3}, r10, vr4
002dc8  fe0102e0  vmmov mr3, r4
002dcc  1f020008  addli r4, zero, 1024
002dd0  6aa24436  vor.u.mh vr4{mr3}, r9, vr4
002dd4  fe0102e0  vmmov mr3, r4
002dd8  1f020010  addli r4, zero, 2048
002ddc  6a224436  vor.u.mh vr4{mr3}, r8, vr4
002de0  fe0102e0  vmmov mr3, r4
002de4  1f020ff0  addli r4, r30, -2048
002de8  6aa24336  vor.u.mh vr4{mr3}, r7, vr4
002dec  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
002df0  1f020020  addli r4, zero, 4096
002df4  fe0102e0  vmmov mr3, r4
002df8  1f020040  addli r4, zero, 8192
002dfc  6a224b36  vor.u.mh vr4{mr3}, r22, vr4
002e00  fe0102e0  vmmov mr3, r4
002e04  8e92b002  vmul.f.mz.rn vr5{mr1}, vr1, vr11
002e08  6a224136  vor.u.mh vr4{mr3}, r2, vr4
002e0c  2b410000  lui r2, 4
002e10  ee3053c2  vsrl.s.mz vr1{mr1}, vr6, vr5
002e14  fe0101e0  vmmov mr3, r2
002e18  669102c0  vabs.f vr2, vr5
002e1c  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
002e20  ab800000  lui r1, 8
002e24  ea301802  vand.s.mz vr1{mr1}, r16, vr1
002e28  fe8100e0  vmmov mr3, r1
002e2c  6a224736  vor.u.mh vr4{mr3}, r14, vr4
002e30  f6a12342  vlt.u.mz mr3{mr1}, vr7, vr2
002e34  7e8b01a0  vmmov r22, mr3
002e38  96b01202  vadd.s.mz vr1{mr1}, vr5, vr1
002e3c  9b40fb00  srli r1, r22, 15
002e40  9b801000  andi r1, r1, 1
002e44  92b11802  vadd.s.mz vr3{mr1}, r17, vr1
002e48  eaf04ac0  vsrl.p vr1, r21, vr4
002e4c  6a325922  vor.s.mz vr4{mr1}, r18, vr5
002e50  46801d14  vstore.mh vr1{mr2}, 0(r27)
002e54  3bb00000  bneq r1, zero, 12
002e58  7ab7f140  vextracti.s r14, 15(vr3)
002e5c  5b010000  j 8
002e60  7a37f240  vextracti.s r14, 15(vr4)
002e64  9b40eb00  srli r1, r22, 14
002e68  9b801000  andi r1, r1, 1
002e6c  3bb00000  bneq r1, zero, 12
002e70  fab0e140  vextracti.s r1, 14(vr3)
002e74  5b010000  j 8
002e78  fa30e240  vextracti.s r1, 14(vr4)
002e7c  1b41db00  srli r2, r22, 13
002e80  1b011100  andi r2, r2, 1
002e84  3b300100  bneq r2, zero, 12
002e88  7ab1d140  vextracti.s r2, 13(vr3)
002e8c  5b010000  j 8
002e90  7a31d240  vextracti.s r2, 13(vr4)
002e94  1b42cb00  srli r4, r22, 12
002e98  1b021200  andi r4, r4, 1
002e9c  3b300200  bneq r4, zero, 12
002ea0  7ab3c140  vextracti.s r6, 12(vr3)
002ea4  5b010000  j 8
002ea8  7a33c240  vextracti.s r6, 12(vr4)
002eac  1b42bb00  srli r4, r22, 11
002eb0  1b021200  andi r4, r4, 1
002eb4  3b300200  bneq r4, zero, 12
002eb8  fab3b140  vextracti.s r7, 11(vr3)
002ebc  5b010000  j 8
002ec0  fa33b240  vextracti.s r7, 11(vr4)
002ec4  1b42ab00  srli r4, r22, 10
002ec8  1b021200  andi r4, r4, 1
002ecc  3b300200  bneq r4, zero, 12
002ed0  7ab4a140  vextracti.s r8, 10(vr3)
002ed4  5b010000  j 8
002ed8  7a34a240  vextracti.s r8, 10(vr4)
002edc  1b429b00  srli r4, r22, 9
002ee0  1b021200  andi r4, r4, 1
002ee4  3b300200  bneq r4, zero, 12
002ee8  fab49140  vextracti.s r9, 9(vr3)
002eec  5b010000  j 8
002ef0  fa349240  vextracti.s r9, 9(vr4)
002ef4  1b428b00  srli r4, r22, 8
002ef8  1b021200  andi r4, r4, 1
002efc  3b300200  bneq r4, zero, 12
002f00  7ab58140  vextracti.s r10, 8(vr3)
002f04  5b010000  j 8
002f08  7a358240  vextracti.s r10, 8(vr4)
002f0c  1b427b00  srli r4, r22, 7
002f10  1b021200  andi r4, r4, 1
002f14  3b300200  bneq r4, zero, 12
002f18  fab27140  vextracti.s r5, 7(vr3)
002f1c  5b010000  j 8
002f20  fa327240  vextracti.s r5, 7(vr4)
002f24  1b426b00  srli r4, r22, 6
002f28  1b021200  andi r4, r4, 1
002f2c  3b300200  bneq r4, zero, 12
002f30  7ab26140  vextracti.s r4, 6(vr3)
002f34  5b010000  j 8
002f38  7a326240  vextracti.s r4, 6(vr4)
002f3c  9b455b00  srli r11, r22, 5
002f40  9b851500  andi r11, r11, 1
002f44  3bb00500  bneq r11, zero, 12
002f48  fab65140  vextracti.s r13, 5(vr3)
002f4c  5b010000  j 8
002f50  fa365240  vextracti.s r13, 5(vr4)
002f54  9b454b00  srli r11, r22, 4
002f58  9b851500  andi r11, r11, 1
002f5c  3bb00500  bneq r11, zero, 12
002f60  fab54140  vextracti.s r11, 4(vr3)
002f64  5b010000  j 8
002f68  fa354240  vextracti.s r11, 4(vr4)
002f6c  9b473b00  srli r15, r22, 3
002f70  9b871700  andi r15, r15, 1
002f74  3bb00700  bneq r15, zero, 12
002f78  7abc3140  vextracti.s r24, 3(vr3)
002f7c  5b010000  j 8
002f80  7a3c3240  vextracti.s r24, 3(vr4)
002f84  9b472b00  srli r15, r22, 2
002f88  9b871700  andi r15, r15, 1
002f8c  3bb00700  bneq r15, zero, 12
002f90  fabc2140  vextracti.s r25, 2(vr3)
002f94  5b010000  j 8
002f98  fa3c2240  vextracti.s r25, 2(vr4)
002f9c  9b471b00  srli r15, r22, 1
002fa0  9b871700  andi r15, r15, 1
002fa4  3be00700  bneq r15, zero, 24
002fa8  fab71140  vextracti.s r15, 1(vr3)
002fac  9b0a1b00  andi r21, r22, 1
002fb0  37e00a00  beq r21, zero, 24
002fb4  7a3b0240  vextracti.s r22, 0(vr4)
002fb8  db020000  j 20
002fbc  fa371240  vextracti.s r15, 1(vr4)
002fc0  9b0a1b00  andi r21, r22, 1
002fc4  bbcf0afe  bneq r21, zero, -16
002fc8  7abb0140  vextracti.s r22, 0(vr3)
002fcc  92320002  vadd.s.mz vr5{mr1}, zero, vr0
002fd0  9f1a0000  addli r21, zero, 1
002fd4  fe810ae0  vmmov mr3, r21
002fd8  9f2a0000  addli r21, zero, 2
002fdc  ea225b36  vor.u.mh vr5{mr3}, r22, vr5
002fe0  fe810ae0  vmmov mr3, r21
002fe4  9f0a2000  addli r21, zero, 16
002fe8  eaa25736  vor.u.mh vr5{mr3}, r15, vr5
002fec  9f470000  addli r15, zero, 4
002ff0  fe8107e0  vmmov mr3, r15
002ff4  9f071000  addli r15, zero, 8
002ff8  eaa25c36  vor.u.mh vr5{mr3}, r25, vr5
002ffc  fe8107e0  vmmov mr3, r15
003000  9f072000  addli r15, zero, 16
003004  ea225c36  vor.u.mh vr5{mr3}, r24, vr5
003008  fe8107e0  vmmov mr3, r15
00300c  eaa25536  vor.u.mh vr5{mr3}, r11, vr5
003010  9f054000  addli r11, zero, 32
003014  fe8105e0  vmmov mr3, r11
003018  9f058000  addli r11, zero, 64
00301c  eaa25636  vor.u.mh vr5{mr3}, r13, vr5
003020  fe8105e0  vmmov mr3, r11
003024  ea225236  vor.u.mh vr5{mr3}, r4, vr5
003028  1f020001  addli r4, zero, 128
00302c  fe0102e0  vmmov mr3, r4
003030  1f020002  addli r4, zero, 256
003034  eaa25236  vor.u.mh vr5{mr3}, r5, vr5
003038  fe0102e0  vmmov mr3, r4
00303c  1f020004  addli r4, zero, 512
003040  ea225536  vor.u.mh vr5{mr3}, r10, vr5
003044  fe0102e0  vmmov mr3, r4
003048  1f020008  addli r4, zero, 1024
00304c  eaa25436  vor.u.mh vr5{mr3}, r9, vr5
003050  fe0102e0  vmmov mr3, r4
003054  1f028ff0  addli r4, r30, -1984
003058  ea225436  vor.u.mh vr5{mr3}, r8, vr5
00305c  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
003060  1f020010  addli r4, zero, 2048
003064  fe0102e0  vmmov mr3, r4
003068  1f020020  addli r4, zero, 4096
00306c  eaa25336  vor.u.mh vr5{mr3}, r7, vr5
003070  fe0102e0  vmmov mr3, r4
003074  1f020040  addli r4, zero, 8192
003078  0e92a002  vmul.f.mz.rn vr4{mr1}, vr1, vr10
00307c  ea225336  vor.u.mh vr5{mr3}, r6, vr5
003080  fe0102e0  vmmov mr3, r4
003084  ee3043c2  vsrl.s.mz vr1{mr1}, vr6, vr4
003088  661102c0  vabs.f vr2, vr4
00308c  ea225136  vor.u.mh vr5{mr3}, r2, vr5
003090  2b410000  lui r2, 4
003094  ea301802  vand.s.mz vr1{mr1}, r16, vr1
003098  fe0101e0  vmmov mr3, r2
00309c  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
0030a0  ab800000  lui r1, 8
0030a4  f6a12342  vlt.u.mz mr3{mr1}, vr7, vr2
0030a8  7e8301a0  vmmov r6, mr3
0030ac  96301202  vadd.s.mz vr1{mr1}, vr4, vr1
0030b0  fe8100e0  vmmov mr3, r1
0030b4  9b40f300  srli r1, r6, 15
0030b8  6a324922  vor.s.mz vr4{mr1}, r18, vr4
0030bc  ea225736  vor.u.mh vr5{mr3}, r14, vr5
0030c0  9b801000  andi r1, r1, 1
0030c4  92b11802  vadd.s.mz vr3{mr1}, r17, vr1
0030c8  46005d10  vstore.mh vr5{mr0}, 0(r26)
0030cc  3bb00000  bneq r1, zero, 12
0030d0  7ab7f140  vextracti.s r14, 15(vr3)
0030d4  5b010000  j 8
0030d8  7a37f240  vextracti.s r14, 15(vr4)
0030dc  9b40e300  srli r1, r6, 14
0030e0  9b801000  andi r1, r1, 1
0030e4  3bb00000  bneq r1, zero, 12
0030e8  fab0e140  vextracti.s r1, 14(vr3)
0030ec  5b010000  j 8
0030f0  fa30e240  vextracti.s r1, 14(vr4)
0030f4  1b41d300  srli r2, r6, 13
0030f8  1b011100  andi r2, r2, 1
0030fc  3b300100  bneq r2, zero, 12
003100  7ab1d140  vextracti.s r2, 13(vr3)
003104  5b010000  j 8
003108  7a31d240  vextracti.s r2, 13(vr4)
00310c  1b42c300  srli r4, r6, 12
003110  1b021200  andi r4, r4, 1
003114  3b300200  bneq r4, zero, 12
003118  7abbc140  vextracti.s r22, 12(vr3)
00311c  5b010000  j 8
003120  7a3bc240  vextracti.s r22, 12(vr4)
003124  1b42b300  srli r4, r6, 11
003128  1b021200  andi r4, r4, 1
00312c  3b300200  bneq r4, zero, 12
003130  fab3b140  vextracti.s r7, 11(vr3)
003134  5b010000  j 8
003138  fa33b240  vextracti.s r7, 11(vr4)
00313c  1b42a300  srli r4, r6, 10
003140  1b021200  andi r4, r4, 1
003144  3b300200  bneq r4, zero, 12
003148  7ab4a140  vextracti.s r8, 10(vr3)
00314c  5b010000  j 8
003150  7a34a240  vextracti.s r8, 10(vr4)
003154  1b429300  srli r4, r6, 9
003158  1b021200  andi r4, r4, 1
00315c  3b300200  bneq r4, zero, 12
003160  fab49140  vextracti.s r9, 9(vr3)
003164  5b010000  j 8
003168  fa349240  vextracti.s r9, 9(vr4)
00316c  1b428300  srli r4, r6, 8
003170  1b021200  andi r4, r4, 1
003174  3b300200  bneq r4, zero, 12
003178  7ab58140  vextracti.s r10, 8(vr3)
00317c  5b010000  j 8
003180  7a358240  vextracti.s r10, 8(vr4)
003184  1b427300  srli r4, r6, 7
003188  1b021200  andi r4, r4, 1
00318c  3b300200  bneq r4, zero, 12
003190  fab27140  vextracti.s r5, 7(vr3)
003194  5b010000  j 8
003198  fa327240  vextracti.s r5, 7(vr4)
00319c  1b426300  srli r4, r6, 6
0031a0  1b021200  andi r4, r4, 1
0031a4  3b300200  bneq r4, zero, 12
0031a8  7ab26140  vextracti.s r4, 6(vr3)
0031ac  5b010000  j 8
0031b0  7a326240  vextracti.s r4, 6(vr4)
0031b4  9b455300  srli r11, r6, 5
0031b8  9b851500  andi r11, r11, 1
0031bc  3bb00500  bneq r11, zero, 12
0031c0  fab65140  vextracti.s r13, 5(vr3)
0031c4  5b010000  j 8
0031c8  fa365240  vextracti.s r13, 5(vr4)
0031cc  9b454300  srli r11, r6, 4
0031d0  9b851500  andi r11, r11, 1
0031d4  3bb00500  bneq r11, zero, 12
0031d8  fab54140  vextracti.s r11, 4(vr3)
0031dc  5b010000  j 8
0031e0  fa354240  vextracti.s r11, 4(vr4)
0031e4  9b473300  srli r15, r6, 3
0031e8  9b871700  andi r15, r15, 1
0031ec  3bb00700  bneq r15, zero, 12
0031f0  7abc3140  vextracti.s r24, 3(vr3)
0031f4  5b010000  j 8
0031f8  7a3c3240  vextracti.s r24, 3(vr4)
0031fc  9b472300  srli r15, r6, 2
003200  9b871700  andi r15, r15, 1
003204  3bb00700  bneq r15, zero, 12
003208  fabc2140  vextracti.s r25, 2(vr3)
00320c  5b010000  j 8
003210  fa3c2240  vextracti.s r25, 2(vr4)
003214  9b471300  srli r15, r6, 1
003218  9b871700  andi r15, r15, 1
00321c  3be00700  bneq r15, zero, 24
003220  fab71140  vextracti.s r15, 1(vr3)
003224  1b031300  andi r6, r6, 1
003228  37600300  beq r6, zero, 24
00322c  7a330240  vextracti.s r6, 0(vr4)
003230  db020000  j 20
003234  fa371240  vextracti.s r15, 1(vr4)
003238  1b031300  andi r6, r6, 1
00323c  bb4f03fe  bneq r6, zero, -16
003240  7ab30140  vextracti.s r6, 0(vr3)
003244  12320002  vadd.s.mz vr4{mr1}, zero, vr0
003248  9f1d0000  addli r27, zero, 1
00324c  fe810de0  vmmov mr3, r27
003250  6a224336  vor.u.mh vr4{mr3}, r6, vr4
003254  1f230000  addli r6, zero, 2
003258  fe0103e0  vmmov mr3, r6
00325c  1f430000  addli r6, zero, 4
003260  6aa24736  vor.u.mh vr4{mr3}, r15, vr4
003264  fe0103e0  vmmov mr3, r6
003268  1f031000  addli r6, zero, 8
00326c  6aa24c36  vor.u.mh vr4{mr3}, r25, vr4
003270  fe0103e0  vmmov mr3, r6
003274  1f032000  addli r6, zero, 16
003278  6a224c36  vor.u.mh vr4{mr3}, r24, vr4
00327c  fe0103e0  vmmov mr3, r6
003280  1f034000  addli r6, zero, 32
003284  6aa24536  vor.u.mh vr4{mr3}, r11, vr4
003288  fe0103e0  vmmov mr3, r6
00328c  1f038000  addli r6, zero, 64
003290  6aa24636  vor.u.mh vr4{mr3}, r13, vr4
003294  fe0103e0  vmmov mr3, r6
003298  6a224236  vor.u.mh vr4{mr3}, r4, vr4
00329c  1f020001  addli r4, zero, 128
0032a0  fe0102e0  vmmov mr3, r4
0032a4  1f020002  addli r4, zero, 256
0032a8  6aa24236  vor.u.mh vr4{mr3}, r5, vr4
0032ac  fe0102e0  vmmov mr3, r4
0032b0  1f020004  addli r4, zero, 512
0032b4  6a224536  vor.u.mh vr4{mr3}, r10, vr4
0032b8  fe0102e0  vmmov mr3, r4
0032bc  1f020008  addli r4, zero, 1024
0032c0  6aa24436  vor.u.mh vr4{mr3}, r9, vr4
0032c4  fe0102e0  vmmov mr3, r4
0032c8  1f020010  addli r4, zero, 2048
0032cc  6a224436  vor.u.mh vr4{mr3}, r8, vr4
0032d0  fe0102e0  vmmov mr3, r4
0032d4  1f020ff1  addli r4, r30, -1920
0032d8  6aa24336  vor.u.mh vr4{mr3}, r7, vr4
0032dc  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
0032e0  1f020020  addli r4, zero, 4096
0032e4  fe0102e0  vmmov mr3, r4
0032e8  1f020040  addli r4, zero, 8192
0032ec  6a224b36  vor.u.mh vr4{mr3}, r22, vr4
0032f0  fe0102e0  vmmov mr3, r4
0032f4  8e129002  vmul.f.mz.rn vr5{mr1}, vr0, vr9
0032f8  6a224136  vor.u.mh vr4{mr3}, r2, vr4
0032fc  2b410000  lui r2, 4
003300  ee3053c2  vsrl.s.mz vr1{mr1}, vr6, vr5
003304  fe0101e0  vmmov mr3, r2
003308  669102c0  vabs.f vr2, vr5
00330c  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
003310  ab800000  lui r1, 8
003314  ea301802  vand.s.mz vr1{mr1}, r16, vr1
003318  fe8100e0  vmmov mr3, r1
00331c  6a224736  vor.u.mh vr4{mr3}, r14, vr4
003320  f6a12342  vlt.u.mz mr3{mr1}, vr7, vr2
003324  7e8b01a0  vmmov r22, mr3
003328  96b01202  vadd.s.mz vr1{mr1}, vr5, vr1
00332c  9b40fb00  srli r1, r22, 15
003330  9b801000  andi r1, r1, 1
003334  92b11802  vadd.s.mz vr3{mr1}, r17, vr1
003338  eaf04ac0  vsrl.p vr1, r21, vr4
00333c  6a325922  vor.s.mz vr4{mr1}, r18, vr5
003340  46001d14  vstore.mh vr1{mr2}, 0(r26)
003344  3bb00000  bneq r1, zero, 12
003348  7ab7f140  vextracti.s r14, 15(vr3)
00334c  5b010000  j 8
003350  7a37f240  vextracti.s r14, 15(vr4)
003354  1f018ff2  addli r2, r30, -1728
003358  9b40eb00  srli r1, r22, 14
00335c  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
003360  9b801000  andi r1, r1, 1
003364  3bb00000  bneq r1, zero, 12
003368  fab0e140  vextracti.s r1, 14(vr3)
00336c  5b010000  j 8
003370  fa30e240  vextracti.s r1, 14(vr4)
003374  1b41db00  srli r2, r22, 13
003378  1b011100  andi r2, r2, 1
00337c  3b300100  bneq r2, zero, 12
003380  7ab1d140  vextracti.s r2, 13(vr3)
003384  5b010000  j 8
003388  7a31d240  vextracti.s r2, 13(vr4)
00338c  1b42cb00  srli r4, r22, 12
003390  1b021200  andi r4, r4, 1
003394  3b300200  bneq r4, zero, 12
003398  7ab3c140  vextracti.s r6, 12(vr3)
00339c  5b010000  j 8
0033a0  7a33c240  vextracti.s r6, 12(vr4)
0033a4  1b42bb00  srli r4, r22, 11
0033a8  1b021200  andi r4, r4, 1
0033ac  3b300200  bneq r4, zero, 12
0033b0  fab3b140  vextracti.s r7, 11(vr3)
0033b4  5b010000  j 8
0033b8  fa33b240  vextracti.s r7, 11(vr4)
0033bc  1b42ab00  srli r4, r22, 10
0033c0  1b021200  andi r4, r4, 1
0033c4  3b300200  bneq r4, zero, 12
0033c8  7ab4a140  vextracti.s r8, 10(vr3)
0033cc  5b010000  j 8
0033d0  7a34a240  vextracti.s r8, 10(vr4)
0033d4  1b429b00  srli r4, r22, 9
0033d8  1b021200  andi r4, r4, 1
0033dc  3b300200  bneq r4, zero, 12
0033e0  fab49140  vextracti.s r9, 9(vr3)
0033e4  5b010000  j 8
0033e8  fa349240  vextracti.s r9, 9(vr4)
0033ec  1b428b00  srli r4, r22, 8
0033f0  1b021200  andi r4, r4, 1
0033f4  3b300200  bneq r4, zero, 12
0033f8  7ab58140  vextracti.s r10, 8(vr3)
0033fc  5b010000  j 8
003400  7a358240  vextracti.s r10, 8(vr4)
003404  1b427b00  srli r4, r22, 7
003408  1b021200  andi r4, r4, 1
00340c  3b300200  bneq r4, zero, 12
003410  fab27140  vextracti.s r5, 7(vr3)
003414  5b010000  j 8
003418  fa327240  vextracti.s r5, 7(vr4)
00341c  1b426b00  srli r4, r22, 6
003420  1b021200  andi r4, r4, 1
003424  3b300200  bneq r4, zero, 12
003428  7ab26140  vextracti.s r4, 6(vr3)
00342c  5b010000  j 8
003430  7a326240  vextracti.s r4, 6(vr4)
003434  9b455b00  srli r11, r22, 5
003438  9b851500  andi r11, r11, 1
00343c  3bb00500  bneq r11, zero, 12
003440  fab65140  vextracti.s r13, 5(vr3)
003444  5b010000  j 8
003448  fa365240  vextracti.s r13, 5(vr4)
00344c  9b454b00  srli r11, r22, 4
003450  9b851500  andi r11, r11, 1
003454  3bb00500  bneq r11, zero, 12
003458  fab54140  vextracti.s r11, 4(vr3)
00345c  5b010000  j 8
003460  fa354240  vextracti.s r11, 4(vr4)
003464  9b473b00  srli r15, r22, 3
003468  9b871700  andi r15, r15, 1
00346c  3bb00700  bneq r15, zero, 12
003470  7abc3140  vextracti.s r24, 3(vr3)
003474  5b010000  j 8
003478  7a3c3240  vextracti.s r24, 3(vr4)
00347c  9b472b00  srli r15, r22, 2
003480  9b871700  andi r15, r15, 1
003484  3bb00700  bneq r15, zero, 12
003488  fabc2140  vextracti.s r25, 2(vr3)
00348c  5b010000  j 8
003490  fa3c2240  vextracti.s r25, 2(vr4)
003494  9b471b00  srli r15, r22, 1
003498  9b871700  andi r15, r15, 1
00349c  3be00700  bneq r15, zero, 24
0034a0  fab71140  vextracti.s r15, 1(vr3)
0034a4  9b0a1b00  andi r21, r22, 1
0034a8  37e00a00  beq r21, zero, 24
0034ac  7a3b0240  vextracti.s r22, 0(vr4)
0034b0  db020000  j 20
0034b4  fa371240  vextracti.s r15, 1(vr4)
0034b8  9b0a1b00  andi r21, r22, 1
0034bc  bbcf0afe  bneq r21, zero, -16
0034c0  7abb0140  vextracti.s r22, 0(vr3)
0034c4  92320002  vadd.s.mz vr5{mr1}, zero, vr0
0034c8  9f1a0000  addli r21, zero, 1
0034cc  fe810ae0  vmmov mr3, r21
0034d0  9f2a0000  addli r21, zero, 2
0034d4  ea225b36  vor.u.mh vr5{mr3}, r22, vr5
0034d8  fe810ae0  vmmov mr3, r21
0034dc  eaa25736  vor.u.mh vr5{mr3}, r15, vr5
0034e0  9f470000  addli r15, zero, 4
0034e4  fe8107e0  vmmov mr3, r15
0034e8  9f071000  addli r15, zero, 8
0034ec  eaa25c36  vor.u.mh vr5{mr3}, r25, vr5
0034f0  fe8107e0  vmmov mr3, r15
0034f4  9f072000  addli r15, zero, 16
0034f8  ea225c36  vor.u.mh vr5{mr3}, r24, vr5
0034fc  fe8107e0  vmmov mr3, r15
003500  eaa25536  vor.u.mh vr5{mr3}, r11, vr5
003504  9f054000  addli r11, zero, 32
003508  fe8105e0  vmmov mr3, r11
00350c  9f058000  addli r11, zero, 64
003510  eaa25636  vor.u.mh vr5{mr3}, r13, vr5
003514  fe8105e0  vmmov mr3, r11
003518  ea225236  vor.u.mh vr5{mr3}, r4, vr5
00351c  1f020001  addli r4, zero, 128
003520  fe0102e0  vmmov mr3, r4
003524  1f020002  addli r4, zero, 256
003528  eaa25236  vor.u.mh vr5{mr3}, r5, vr5
00352c  fe0102e0  vmmov mr3, r4
003530  1f020004  addli r4, zero, 512
003534  ea225536  vor.u.mh vr5{mr3}, r10, vr5
003538  fe0102e0  vmmov mr3, r4
00353c  1f020008  addli r4, zero, 1024
003540  eaa25436  vor.u.mh vr5{mr3}, r9, vr5
003544  fe0102e0  vmmov mr3, r4
003548  1f028ff1  addli r4, r30, -1856
00354c  ea225436  vor.u.mh vr5{mr3}, r8, vr5
003550  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
003554  1f020010  addli r4, zero, 2048
003558  fe0102e0  vmmov mr3, r4
00355c  1f020020  addli r4, zero, 4096
003560  eaa25336  vor.u.mh vr5{mr3}, r7, vr5
003564  fe0102e0  vmmov mr3, r4
003568  1f020040  addli r4, zero, 8192
00356c  0e928002  vmul.f.mz.rn vr4{mr1}, vr1, vr8
003570  ea225336  vor.u.mh vr5{mr3}, r6, vr5
003574  fe0102e0  vmmov mr3, r4
003578  ee3043c2  vsrl.s.mz vr1{mr1}, vr6, vr4
00357c  661102c0  vabs.f vr2, vr4
003580  ea225136  vor.u.mh vr5{mr3}, r2, vr5
003584  2b410000  lui r2, 4
003588  ea301802  vand.s.mz vr1{mr1}, r16, vr1
00358c  fe0101e0  vmmov mr3, r2
003590  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
003594  ab800000  lui r1, 8
003598  f6a12342  vlt.u.mz mr3{mr1}, vr7, vr2
00359c  7e8b01a0  vmmov r22, mr3
0035a0  96301202  vadd.s.mz vr1{mr1}, vr4, vr1
0035a4  fe8100e0  vmmov mr3, r1
0035a8  9b40fb00  srli r1, r22, 15
0035ac  6a324922  vor.s.mz vr4{mr1}, r18, vr4
0035b0  ea225736  vor.u.mh vr5{mr3}, r14, vr5
0035b4  9b801000  andi r1, r1, 1
0035b8  92b11802  vadd.s.mz vr3{mr1}, r17, vr1
0035bc  46005e10  vstore.mh vr5{mr0}, 0(r28)
0035c0  3bb00000  bneq r1, zero, 12
0035c4  fab0f140  vextracti.s r1, 15(vr3)
0035c8  5b010000  j 8
0035cc  fa30f240  vextracti.s r1, 15(vr4)
0035d0  1b41eb00  srli r2, r22, 14
0035d4  1b011100  andi r2, r2, 1
0035d8  3b300100  bneq r2, zero, 12
0035dc  7ab1e140  vextracti.s r2, 14(vr3)
0035e0  5b010000  j 8
0035e4  7a31e240  vextracti.s r2, 14(vr4)
0035e8  1b42db00  srli r4, r22, 13
0035ec  1b021200  andi r4, r4, 1
0035f0  3b300200  bneq r4, zero, 12
0035f4  7ab3d140  vextracti.s r6, 13(vr3)
0035f8  5b010000  j 8
0035fc  7a33d240  vextracti.s r6, 13(vr4)
003600  1b42cb00  srli r4, r22, 12
003604  1b021200  andi r4, r4, 1
003608  3b300200  bneq r4, zero, 12
00360c  7ab7c140  vextracti.s r14, 12(vr3)
003610  5b010000  j 8
003614  7a37c240  vextracti.s r14, 12(vr4)
003618  1b42bb00  srli r4, r22, 11
00361c  1b021200  andi r4, r4, 1
003620  3b300200  bneq r4, zero, 12
003624  fab3b140  vextracti.s r7, 11(vr3)
003628  5b010000  j 8
00362c  fa33b240  vextracti.s r7, 11(vr4)
003630  1b42ab00  srli r4, r22, 10
003634  1b021200  andi r4, r4, 1
003638  3b300200  bneq r4, zero, 12
00363c  7ab4a140  vextracti.s r8, 10(vr3)
003640  5b010000  j 8
003644  7a34a240  vextracti.s r8, 10(vr4)
003648  1b429b00  srli r4, r22, 9
00364c  1b021200  andi r4, r4, 1
003650  3b300200  bneq r4, zero, 12
003654  fab49140  vextracti.s r9, 9(vr3)
003658  5b010000  j 8
00365c  fa349240  vextracti.s r9, 9(vr4)
003660  1b428b00  srli r4, r22, 8
003664  1b021200  andi r4, r4, 1
003668  3b300200  bneq r4, zero, 12
00366c  7ab58140  vextracti.s r10, 8(vr3)
003670  5b010000  j 8
003674  7a358240  vextracti.s r10, 8(vr4)
003678  1b427b00  srli r4, r22, 7
00367c  1b021200  andi r4, r4, 1
003680  3b300200  bneq r4, zero, 12
003684  fab27140  vextracti.s r5, 7(vr3)
003688  5b010000  j 8
00368c  fa327240  vextracti.s r5, 7(vr4)
003690  1b426b00  srli r4, r22, 6
003694  1b021200  andi r4, r4, 1
003698  3b300200  bneq r4, zero, 12
00369c  7ab26140  vextracti.s r4, 6(vr3)
0036a0  5b010000  j 8
0036a4  7a326240  vextracti.s r4, 6(vr4)
0036a8  9b455b00  srli r11, r22, 5
0036ac  9b851500  andi r11, r11, 1
0036b0  3bb00500  bneq r11, zero, 12
0036b4  fab65140  vextracti.s r13, 5(vr3)
0036b8  5b010000  j 8
0036bc  fa365240  vextracti.s r13, 5(vr4)
0036c0  9b454b00  srli r11, r22, 4
0036c4  9b851500  andi r11, r11, 1
0036c8  3bb00500  bneq r11, zero, 12
0036cc  fab54140  vextracti.s r11, 4(vr3)
0036d0  5b010000  j 8
0036d4  fa354240  vextracti.s r11, 4(vr4)
0036d8  9b473b00  srli r15, r22, 3
0036dc  9b871700  andi r15, r15, 1
0036e0  3bb00700  bneq r15, zero, 12
0036e4  7abc3140  vextracti.s r24, 3(vr3)
0036e8  5b010000  j 8
0036ec  7a3c3240  vextracti.s r24, 3(vr4)
0036f0  9b472b00  srli r15, r22, 2
0036f4  9b871700  andi r15, r15, 1
0036f8  3bb00700  bneq r15, zero, 12
0036fc  fabc2140  vextracti.s r25, 2(vr3)
003700  5b010000  j 8
003704  fa3c2240  vextracti.s r25, 2(vr4)
003708  9b471b00  srli r15, r22, 1
00370c  9b871700  andi r15, r15, 1
003710  3bd00700  bneq r15, zero, 20
003714  fab71140  vextracti.s r15, 1(vr3)
003718  9b0a1b00  andi r21, r22, 1
00371c  b79a0ae4  beq r21, zero, -13660
003720  5b020000  j 16
003724  fa371240  vextracti.s r15, 1(vr4)
003728  9b0a1b00  andi r21, r22, 1
00372c  37da0ae4  beq r21, zero, -13676
003730  7a3b0240  vextracti.s r22, 0(vr4)
003734  5b52f9ff  j -13680
003738  9f0e8fec  addli sp, r30, -2496
00373c  9f8e8e13  addli sp, sp, 2496
003740  00a00300  mfence { lm, sm, gm }
003744  00100000  exit
003748  00100000  exit
00374c  00100000  exit
003750  00100000  exit
003754  00100000  exit
003758  00100000  exit
00375c  00100000  exit
003760  00100000  exit
003764  00100000  exit
003768  00100000  exit
00376c  00100000  exit
003770  00100000  exit
003774  00100000  exit
003778  00100000  exit
00377c  00100000  exit
003780  00100000  exit
003784  00100000  exit
003788  00100000  exit
00378c  00100000  exit
003790  00100000  exit
003794  00100000  exit
003798  00100000  exit
00379c  00100000  exit
0037a0  00100000  exit
0037a4  00100000  exit
0037a8  00100000  exit
0037ac  00100000  exit
0037b0  00100000  exit
0037b4  00100000  exit
0037b8  00100000  exit
0037bc  00100000  exit
0037c0  00100000  exit
0037c4  00100000  exit
0037c8  00100000  exit
0037cc  00100000  exit
0037d0  00100000  exit
0037d4  00100000  exit
0037d8  00100000  exit
0037dc  00100000  exit
0037e0  00100000  exit
0037e4  00100000  exit
0037e8  00100000  exit
0037ec  00100000  exit
0037f0  00100000  exit
0037f4  00100000  exit
0037f8  00100000  exit
0037fc  00100000  exit
003800  00100000  exit
003804  00100000  exit
003808  00100000  exit
00380c  00100000  exit
003810  00100000  exit
003814  00100000  exit
003818  00100000  exit
00381c  00100000  exit
003820  00100000  exit
003824  00100000  exit
003828  00100000  exit
00382c  00100000  exit
003830  00100000  exit
003834  00100000  exit
003838  00100000  exit
00383c  00100000  exit
003840  00100000  exit
003844  00100000  exit
003848  00100000  exit
00384c  00100000  exit
003850  00100000  exit
003854  00100000  exit
003858  00100000  exit
00385c  00100000  exit
003860  00100000  exit
003864  00100000  exit
003868  00100000  exit
00386c  00100000  exit
003870  00100000  exit
003874  00100000  exit
003878  00100000  exit
00387c  00100000  exit
003880  00100000  exit
003884  00100000  exit
003888  00100000  exit
00388c  00100000  exit
003890  00100000  exit
003894  00100000  exit
003898  00100000  exit
00389c  00100000  exit
0038a0  00100000  exit
0038a4  00100000  exit
0038a8  00100000  exit
0038ac  00100000  exit
0038b0  00100000  exit
0038b4  00100000  exit
0038b8  00100000  exit
0038bc  00100000  exit
0038c0  00100000  exit
0038c4  00100000  exit
0038c8  00100000  exit
0038cc  00100000  exit
0038d0  00100000  exit
0038d4  00100000  exit
0038d8  00100000  exit
0038dc  00100000  exit
0038e0  00100000  exit
0038e4  00100000  exit
0038e8  00100000  exit
0038ec  00100000  exit
0038f0  00100000  exit
0038f4  00100000  exit
0038f8  00100000  exit
0038fc  00100000  exit
003900  00100000  exit
003904  00100000  exit
003908  00100000  exit
00390c  00100000  exit
003910  00100000  exit
003914  00100000  exit
003918  00100000  exit
00391c  00100000  exit
003920  00100000  exit
003924  00100000  exit
003928  00100000  exit
00392c  00100000  exit
003930  00100000  exit
003934  00100000  exit
003938  00100000  exit
00393c  00100000  exit
003940  00100000  exit
003944  00100000  exit
003948  00100000  exit
00394c  00100000  exit
003950  00100000  exit
003954  00100000  exit
003958  00100000  exit
00395c  00100000  exit
003960  00100000  exit
003964  00100000  exit
003968  00100000  exit
00396c  00100000  exit
003970  00100000  exit
003974  00100000  exit
003978  00100000  exit
00397c  00100000  exit
003980  00100000  exit
003984  00100000  exit
