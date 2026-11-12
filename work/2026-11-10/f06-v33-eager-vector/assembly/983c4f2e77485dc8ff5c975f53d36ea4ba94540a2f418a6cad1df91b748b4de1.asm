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
0000dc  9f8e0efc  addli sp, sp, -512
0000e0  1f8f8e03  addli r30, sp, 448
0000e4  80510002  load_param_i r3, 0
0000e8  63413f00  loadli.w r2,  28(r30)
0000ec  e3003f00  loadli.w r1,  24(r30)
0000f0  63024f00  loadli.w r4,  32(r30)
0000f4  8b101120  mul.s r1, r2, r1
0000f8  8b904020  mul.s r1, r1, r4
0000fc  e7471ffc  storeli.w r1, -388(r30)
000100  4bd83006  ble.s r1, r3, 3604
000104  00320002  core_id r4
000108  00d30002  load_param_i r6, 1
00010c  eb508f00  load.d r[2:3], 8(r30)
000110  9f082000  addli r17, zero, 16
000114  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000118  1f088ffd  addli r16, r30, -320
00011c  1f050ffd  addli r10, r30, -384
000120  1f1a0000  addli r20, zero, 1
000124  2b0b4000  lui r22, 1024
000128  ab0d803f  lui r27, 260096
00012c  9b425200  srli r5, r4, 5
000130  1b326200  slli r4, r4, 6
000134  67476ffc  storeli.w r6, -396(r30)
000138  eaa00822  vor.u.mz vr1{mr1}, r17, vr0
00013c  1b02027c  andi r4, r4, 1984
000140  9b821200  andi r5, r5, 1
000144  33030228  zext_int2long r[7:8], r4
000148  e7075ffc  storeli.w r5, -392(r30)
00014c  9bb2b200  slli r5, r5, 11
000150  8ba06010  add.ul r[2:3], r[2:3], r[7:8]
000154  97924200  or r5, r5, r4
000158  73301fe6  store.d r[2:3], -416(r30)
00015c  aba0aaaa  lui r1, 699050
000160  2b01807f  lui r2, 522240
000164  33820228  zext_int2long r[5:6], r5
000168  9fa05015  addli r1, r1, 2730
00016c  6a210122  vor.u.mz vr2{mr1}, r2, vr0
000170  2b414c3f  lui r2, 259268
000174  73344fe6  store.d r[5:6], -408(r30)
000178  7e8000e0  vmmov mr0, r1
00017c  ab505555  lui r1, 349525
000180  1b1ca122  ori r24, r2, 554
000184  9fd0a00a  addli r1, r1, 1365
000188  7e8100e0  vmmov mr2, r1
00018c  ab700000  lui r1, 7
000190  9b9af0ff  ori r21, r1, 4095
000194  ab20373d  lui r1, 250738
000198  9b9b3071  ori r23, r1, 1811
00019c  db210000  j 268
0001a0  fab70140  vextracti.s r15, 0(vr3)
0001a4  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0001a8  1f100000  addli zero, zero, 1
0001ac  fe0100e0  vmmov mr3, zero
0001b0  17200000  xor zero, zero, zero
0001b4  eaa13736  vor.u.mh vr3{mr3}, r15, vr3
0001b8  9f270000  addli r15, zero, 2
0001bc  fe8107e0  vmmov mr3, r15
0001c0  ea213236  vor.u.mh vr3{mr3}, r4, vr3
0001c4  1f420000  addli r4, zero, 4
0001c8  fe0102e0  vmmov mr3, r4
0001cc  1f021000  addli r4, zero, 8
0001d0  eaa13436  vor.u.mh vr3{mr3}, r9, vr3
0001d4  fe0102e0  vmmov mr3, r4
0001d8  1f022000  addli r4, zero, 16
0001dc  eaa13c36  vor.u.mh vr3{mr3}, r25, vr3
0001e0  fe0102e0  vmmov mr3, r4
0001e4  1f024000  addli r4, zero, 32
0001e8  eaa13936  vor.u.mh vr3{mr3}, r19, vr3
0001ec  fe0102e0  vmmov mr3, r4
0001f0  1f028000  addli r4, zero, 64
0001f4  ea213736  vor.u.mh vr3{mr3}, r14, vr3
0001f8  fe0102e0  vmmov mr3, r4
0001fc  1f020001  addli r4, zero, 128
000200  eaa13636  vor.u.mh vr3{mr3}, r13, vr3
000204  fe0102e0  vmmov mr3, r4
000208  1f020002  addli r4, zero, 256
00020c  ea213636  vor.u.mh vr3{mr3}, r12, vr3
000210  fe0102e0  vmmov mr3, r4
000214  1f020004  addli r4, zero, 512
000218  eaa13536  vor.u.mh vr3{mr3}, r11, vr3
00021c  fe0102e0  vmmov mr3, r4
000220  1f020008  addli r4, zero, 1024
000224  ea213536  vor.u.mh vr3{mr3}, r10, vr3
000228  fe0102e0  vmmov mr3, r4
00022c  2b0200f0  lui r4, 983040
000230  1f050ffd  addli r10, r30, -384
000234  17924300  or r4, r7, r4
000238  ea213136  vor.u.mh vr3{mr3}, r2, vr3
00023c  1f010010  addli r2, zero, 2048
000240  fe0101e0  vmmov mr3, r2
000244  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
000248  9f000020  addli r1, zero, 4096
00024c  fe8100e0  vmmov mr3, r1
000250  9f000040  addli r1, zero, 8192
000254  ea213e36  vor.u.mh vr3{mr3}, r28, vr3
000258  fe8100e0  vmmov mr3, r1
00025c  ab400000  lui r1, 4
000260  ea213436  vor.u.mh vr3{mr3}, r8, vr3
000264  fe8100e0  vmmov mr3, r1
000268  ab800000  lui r1, 8
00026c  ea213d36  vor.u.mh vr3{mr3}, r26, vr3
000270  fe8100e0  vmmov mr3, r1
000274  eb500f01  load.d r[2:3], 16(r30)
000278  8ba05010  add.ul r[2:3], r[2:3], r[6:7]
00027c  ea213936  vor.u.mh vr3{mr3}, r18, vr3
000280  eaf138c0  vsrl.p vr3, r17, vr3
000284  46003814  vstore.mh vr3{mr2}, 0(r16)
000288  00a00000  mfence { lm }
00028c  7fb20001  s_lm2gm r4, r16, 0(r[2:3])
000290  e340effc  loadli.w r1,  -396(r30)
000294  00a00000  mfence { lm }
000298  8b911110  add.s r3, r3, r1
00029c  e340fffc  loadli.w r1,  -388(r30)
0002a0  3fa01100  blt.s r3, r1, 8
0002a4  5b8e0100  j 3184
0002a8  e3004f00  loadli.w r1,  32(r30)
0002ac  63413f00  loadli.w r2,  28(r30)
0002b0  6303fffc  loadli.w r6,  -392(r30)
0002b4  6b540f00  load.d r[9:10], 0(r30)
0002b8  8b901130  div.s r1, r3, r1
0002bc  8b902030  div.s r1, r1, r2
0002c0  2b0100f0  lui r2, 983040
0002c4  9bb01000  slli r1, r1, 1
0002c8  33920028  sext_int2long r[5:6], r1
0002cc  97101300  or r1, r6, r1
0002d0  1f331000  addli r6, zero, 11
0002d4  17326202  sll.d r[5:6], r[5:6], r6
0002d8  6b538fe6  load.d r[7:8], -408(r30)
0002dc  9bf00004  setlti r1, r1, 64
0002e0  97126202  or.d r[6:7], r[5:6], r[7:8]
0002e4  9bb36000  slli r7, r1, 6
0002e8  0b245410  add.ul r[9:10], r[9:10], r[6:7]
0002ec  97902300  or r1, r7, r2
0002f0  ff200401  l_gm2lm r1, r16, 0(r[9:10])
0002f4  9f008000  addli r1, zero, 64
0002f8  00a00000  mfence { lm }
0002fc  6b540fe6  load.d r[9:10], -416(r30)
000300  97902000  or r1, r1, r2
000304  ff20a400  l_gm2lm r1, r10, 0(r[9:10])
000308  00a00000  mfence { lm }
00030c  c2010800  vload.mz vr3{mr0}, 0(r16)
000310  42020500  vload.mz vr4{mr0}, 0(r10)
000314  96914102  vadd.f.mz.rn vr3{mr1}, vr3, vr4
000318  6eb230c2  vsrl.s.mz vr4{mr1}, vr1, vr3
00031c  e69201c0  vabs.f vr5, vr3
000320  6a333b22  vor.s.mz vr6{mr1}, r22, vr3
000324  6a324a02  vand.s.mz vr4{mr1}, r20, vr4
000328  f6215142  vlt.u.mz mr3{mr1}, vr2, vr5
00032c  fe8701a0  vmmov r15, mr3
000330  9bc0f700  srli r1, r15, 15
000334  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
000338  9b801000  andi r1, r1, 1
00033c  92b24a02  vadd.s.mz vr5{mr1}, r21, vr4
000340  3bb00000  bneq r1, zero, 12
000344  7ab9f240  vextracti.s r18, 15(vr5)
000348  5b010000  j 8
00034c  7a39f340  vextracti.s r18, 15(vr6)
000350  c2010804  vload.mz vr3{mr2}, 0(r16)
000354  42020504  vload.mz vr4{mr2}, 0(r10)
000358  9bc0e700  srli r1, r15, 14
00035c  9b801000  andi r1, r1, 1
000360  3bb00000  bneq r1, zero, 12
000364  7abde240  vextracti.s r26, 14(vr5)
000368  5b010000  j 8
00036c  7a3de340  vextracti.s r26, 14(vr6)
000370  9bc0d700  srli r1, r15, 13
000374  9b801000  andi r1, r1, 1
000378  3bb00000  bneq r1, zero, 12
00037c  7abed240  vextracti.s r28, 13(vr5)
000380  5b010000  j 8
000384  7a3ed340  vextracti.s r28, 13(vr6)
000388  9bc0c700  srli r1, r15, 12
00038c  9b801000  andi r1, r1, 1
000390  3bb00000  bneq r1, zero, 12
000394  7ab4c240  vextracti.s r8, 12(vr5)
000398  5b010000  j 8
00039c  7a34c340  vextracti.s r8, 12(vr6)
0003a0  9bc0b700  srli r1, r15, 11
0003a4  9b801000  andi r1, r1, 1
0003a8  3bb00000  bneq r1, zero, 12
0003ac  fab0b240  vextracti.s r1, 11(vr5)
0003b0  5b010000  j 8
0003b4  fa30b340  vextracti.s r1, 11(vr6)
0003b8  1bc1a700  srli r2, r15, 10
0003bc  1b011100  andi r2, r2, 1
0003c0  3b300100  bneq r2, zero, 12
0003c4  7ab1a240  vextracti.s r2, 10(vr5)
0003c8  5b010000  j 8
0003cc  7a31a340  vextracti.s r2, 10(vr6)
0003d0  1bc29700  srli r4, r15, 9
0003d4  1b021200  andi r4, r4, 1
0003d8  3b300200  bneq r4, zero, 12
0003dc  7ab59240  vextracti.s r10, 9(vr5)
0003e0  5b010000  j 8
0003e4  7a359340  vextracti.s r10, 9(vr6)
0003e8  1bc28700  srli r4, r15, 8
0003ec  1b021200  andi r4, r4, 1
0003f0  3b300200  bneq r4, zero, 12
0003f4  fab58240  vextracti.s r11, 8(vr5)
0003f8  5b010000  j 8
0003fc  fa358340  vextracti.s r11, 8(vr6)
000400  1bc27700  srli r4, r15, 7
000404  1b021200  andi r4, r4, 1
000408  3b300200  bneq r4, zero, 12
00040c  7ab67240  vextracti.s r12, 7(vr5)
000410  5b010000  j 8
000414  7a367340  vextracti.s r12, 7(vr6)
000418  1bc26700  srli r4, r15, 6
00041c  1b021200  andi r4, r4, 1
000420  3b300200  bneq r4, zero, 12
000424  fab66240  vextracti.s r13, 6(vr5)
000428  5b010000  j 8
00042c  fa366340  vextracti.s r13, 6(vr6)
000430  1bc25700  srli r4, r15, 5
000434  1b021200  andi r4, r4, 1
000438  3b300200  bneq r4, zero, 12
00043c  7ab75240  vextracti.s r14, 5(vr5)
000440  5b010000  j 8
000444  7a375340  vextracti.s r14, 5(vr6)
000448  1bc24700  srli r4, r15, 4
00044c  1b021200  andi r4, r4, 1
000450  3b300200  bneq r4, zero, 12
000454  fab94240  vextracti.s r19, 4(vr5)
000458  5b010000  j 8
00045c  fa394340  vextracti.s r19, 4(vr6)
000460  1bc23700  srli r4, r15, 3
000464  1b021200  andi r4, r4, 1
000468  3b300200  bneq r4, zero, 12
00046c  fabc3240  vextracti.s r25, 3(vr5)
000470  5b010000  j 8
000474  fa3c3340  vextracti.s r25, 3(vr6)
000478  1bc22700  srli r4, r15, 2
00047c  1b021200  andi r4, r4, 1
000480  3b300200  bneq r4, zero, 12
000484  fab42240  vextracti.s r9, 2(vr5)
000488  5b010000  j 8
00048c  fa342340  vextracti.s r9, 2(vr6)
000490  1bc21700  srli r4, r15, 1
000494  1b021200  andi r4, r4, 1
000498  3b600200  bneq r4, zero, 24
00049c  7ab21240  vextracti.s r4, 1(vr5)
0004a0  9b871700  andi r15, r15, 1
0004a4  37e00700  beq r15, zero, 24
0004a8  fa370340  vextracti.s r15, 0(vr6)
0004ac  db020000  j 20
0004b0  7a321340  vextracti.s r4, 1(vr6)
0004b4  9b871700  andi r15, r15, 1
0004b8  bbcf07fe  bneq r15, zero, -16
0004bc  fab70240  vextracti.s r15, 0(vr5)
0004c0  92320002  vadd.s.mz vr5{mr1}, zero, vr0
0004c4  1f100000  addli zero, zero, 1
0004c8  e6c10100  vshuffle2.hf vr3, vr3
0004cc  66420200  vshuffle2.hf vr4, vr4
0004d0  fe0100e0  vmmov mr3, zero
0004d4  17200000  xor zero, zero, zero
0004d8  eaa25736  vor.u.mh vr5{mr3}, r15, vr5
0004dc  9f270000  addli r15, zero, 2
0004e0  16924102  vadd.f.mz.rn vr4{mr1}, vr3, vr4
0004e4  fe8107e0  vmmov mr3, r15
0004e8  ea225236  vor.u.mh vr5{mr3}, r4, vr5
0004ec  1f420000  addli r4, zero, 4
0004f0  eeb140c2  vsrl.s.mz vr3{mr1}, vr1, vr4
0004f4  661302c0  vabs.f vr6, vr4
0004f8  fe0102e0  vmmov mr3, r4
0004fc  1f021000  addli r4, zero, 8
000500  eaa25436  vor.u.mh vr5{mr3}, r9, vr5
000504  fe0102e0  vmmov mr3, r4
000508  1f022000  addli r4, zero, 16
00050c  ea313a02  vand.s.mz vr3{mr1}, r20, vr3
000510  eaa25c36  vor.u.mh vr5{mr3}, r25, vr5
000514  fe0102e0  vmmov mr3, r4
000518  1f024000  addli r4, zero, 32
00051c  96313202  vadd.s.mz vr3{mr1}, vr4, vr3
000520  6a324b22  vor.s.mz vr4{mr1}, r22, vr4
000524  eaa25936  vor.u.mh vr5{mr3}, r19, vr5
000528  fe0102e0  vmmov mr3, r4
00052c  1f028000  addli r4, zero, 64
000530  92b13a02  vadd.s.mz vr3{mr1}, r21, vr3
000534  ea225736  vor.u.mh vr5{mr3}, r14, vr5
000538  fe0102e0  vmmov mr3, r4
00053c  1f020001  addli r4, zero, 128
000540  eaa25636  vor.u.mh vr5{mr3}, r13, vr5
000544  fe0102e0  vmmov mr3, r4
000548  1f020002  addli r4, zero, 256
00054c  ea225636  vor.u.mh vr5{mr3}, r12, vr5
000550  fe0102e0  vmmov mr3, r4
000554  1f020004  addli r4, zero, 512
000558  eaa25536  vor.u.mh vr5{mr3}, r11, vr5
00055c  fe0102e0  vmmov mr3, r4
000560  1f020008  addli r4, zero, 1024
000564  ea225536  vor.u.mh vr5{mr3}, r10, vr5
000568  fe0102e0  vmmov mr3, r4
00056c  ea225136  vor.u.mh vr5{mr3}, r2, vr5
000570  1f010010  addli r2, zero, 2048
000574  fe0101e0  vmmov mr3, r2
000578  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
00057c  9f000020  addli r1, zero, 4096
000580  fe8100e0  vmmov mr3, r1
000584  9f000040  addli r1, zero, 8192
000588  ea225436  vor.u.mh vr5{mr3}, r8, vr5
00058c  fe8100e0  vmmov mr3, r1
000590  ab400000  lui r1, 4
000594  ea225e36  vor.u.mh vr5{mr3}, r28, vr5
000598  fe8100e0  vmmov mr3, r1
00059c  ab800000  lui r1, 8
0005a0  ea225d36  vor.u.mh vr5{mr3}, r26, vr5
0005a4  f6216142  vlt.u.mz mr3{mr1}, vr2, vr6
0005a8  fe8701a0  vmmov r15, mr3
0005ac  fe8100e0  vmmov mr3, r1
0005b0  9bc0f700  srli r1, r15, 15
0005b4  ea225936  vor.u.mh vr5{mr3}, r18, vr5
0005b8  9b801000  andi r1, r1, 1
0005bc  46005810  vstore.mh vr5{mr0}, 0(r16)
0005c0  3bb00000  bneq r1, zero, 12
0005c4  7ab9f140  vextracti.s r18, 15(vr3)
0005c8  5b010000  j 8
0005cc  7a39f240  vextracti.s r18, 15(vr4)
0005d0  9bc0e700  srli r1, r15, 14
0005d4  9b801000  andi r1, r1, 1
0005d8  3bb00000  bneq r1, zero, 12
0005dc  7abde140  vextracti.s r26, 14(vr3)
0005e0  5b010000  j 8
0005e4  7a3de240  vextracti.s r26, 14(vr4)
0005e8  9bc0d700  srli r1, r15, 13
0005ec  9b801000  andi r1, r1, 1
0005f0  3bb00000  bneq r1, zero, 12
0005f4  7ab4d140  vextracti.s r8, 13(vr3)
0005f8  5b010000  j 8
0005fc  7a34d240  vextracti.s r8, 13(vr4)
000600  9bc0c700  srli r1, r15, 12
000604  9b801000  andi r1, r1, 1
000608  3bb00000  bneq r1, zero, 12
00060c  7abec140  vextracti.s r28, 12(vr3)
000610  5b010000  j 8
000614  7a3ec240  vextracti.s r28, 12(vr4)
000618  9bc0b700  srli r1, r15, 11
00061c  9b801000  andi r1, r1, 1
000620  3bb00000  bneq r1, zero, 12
000624  fab0b140  vextracti.s r1, 11(vr3)
000628  5b010000  j 8
00062c  fa30b240  vextracti.s r1, 11(vr4)
000630  1bc1a700  srli r2, r15, 10
000634  1b011100  andi r2, r2, 1
000638  3b300100  bneq r2, zero, 12
00063c  7ab1a140  vextracti.s r2, 10(vr3)
000640  5b010000  j 8
000644  7a31a240  vextracti.s r2, 10(vr4)
000648  1bc29700  srli r4, r15, 9
00064c  1b021200  andi r4, r4, 1
000650  3b300200  bneq r4, zero, 12
000654  7ab59140  vextracti.s r10, 9(vr3)
000658  5b010000  j 8
00065c  7a359240  vextracti.s r10, 9(vr4)
000660  1bc28700  srli r4, r15, 8
000664  1b021200  andi r4, r4, 1
000668  3b300200  bneq r4, zero, 12
00066c  fab58140  vextracti.s r11, 8(vr3)
000670  5b010000  j 8
000674  fa358240  vextracti.s r11, 8(vr4)
000678  1bc27700  srli r4, r15, 7
00067c  1b021200  andi r4, r4, 1
000680  3b300200  bneq r4, zero, 12
000684  7ab67140  vextracti.s r12, 7(vr3)
000688  5b010000  j 8
00068c  7a367240  vextracti.s r12, 7(vr4)
000690  1bc26700  srli r4, r15, 6
000694  1b021200  andi r4, r4, 1
000698  3b300200  bneq r4, zero, 12
00069c  fab66140  vextracti.s r13, 6(vr3)
0006a0  5b010000  j 8
0006a4  fa366240  vextracti.s r13, 6(vr4)
0006a8  1bc25700  srli r4, r15, 5
0006ac  1b021200  andi r4, r4, 1
0006b0  3b300200  bneq r4, zero, 12
0006b4  7ab75140  vextracti.s r14, 5(vr3)
0006b8  5b010000  j 8
0006bc  7a375240  vextracti.s r14, 5(vr4)
0006c0  1bc24700  srli r4, r15, 4
0006c4  1b021200  andi r4, r4, 1
0006c8  3b300200  bneq r4, zero, 12
0006cc  fab94140  vextracti.s r19, 4(vr3)
0006d0  5b010000  j 8
0006d4  fa394240  vextracti.s r19, 4(vr4)
0006d8  1bc23700  srli r4, r15, 3
0006dc  1b021200  andi r4, r4, 1
0006e0  3b300200  bneq r4, zero, 12
0006e4  fabc3140  vextracti.s r25, 3(vr3)
0006e8  5b010000  j 8
0006ec  fa3c3240  vextracti.s r25, 3(vr4)
0006f0  1bc22700  srli r4, r15, 2
0006f4  1b021200  andi r4, r4, 1
0006f8  3b300200  bneq r4, zero, 12
0006fc  fab42140  vextracti.s r9, 2(vr3)
000700  5b010000  j 8
000704  fa342240  vextracti.s r9, 2(vr4)
000708  1bc21700  srli r4, r15, 1
00070c  1b021200  andi r4, r4, 1
000710  3b600200  bneq r4, zero, 24
000714  7ab21140  vextracti.s r4, 1(vr3)
000718  9b871700  andi r15, r15, 1
00071c  37e00700  beq r15, zero, 24
000720  fa370240  vextracti.s r15, 0(vr4)
000724  db020000  j 20
000728  7a321240  vextracti.s r4, 1(vr4)
00072c  9b871700  andi r15, r15, 1
000730  bbcf07fe  bneq r15, zero, -16
000734  fab70140  vextracti.s r15, 0(vr3)
000738  92310002  vadd.s.mz vr3{mr1}, zero, vr0
00073c  1f100000  addli zero, zero, 1
000740  fe0100e0  vmmov mr3, zero
000744  17200000  xor zero, zero, zero
000748  eaa13736  vor.u.mh vr3{mr3}, r15, vr3
00074c  9f270000  addli r15, zero, 2
000750  fe8107e0  vmmov mr3, r15
000754  ea213236  vor.u.mh vr3{mr3}, r4, vr3
000758  1f420000  addli r4, zero, 4
00075c  fe0102e0  vmmov mr3, r4
000760  1f021000  addli r4, zero, 8
000764  eaa13436  vor.u.mh vr3{mr3}, r9, vr3
000768  fe0102e0  vmmov mr3, r4
00076c  1f022000  addli r4, zero, 16
000770  eaa13c36  vor.u.mh vr3{mr3}, r25, vr3
000774  fe0102e0  vmmov mr3, r4
000778  1f024000  addli r4, zero, 32
00077c  eaa13936  vor.u.mh vr3{mr3}, r19, vr3
000780  fe0102e0  vmmov mr3, r4
000784  1f028000  addli r4, zero, 64
000788  ea213736  vor.u.mh vr3{mr3}, r14, vr3
00078c  fe0102e0  vmmov mr3, r4
000790  1f020001  addli r4, zero, 128
000794  eaa13636  vor.u.mh vr3{mr3}, r13, vr3
000798  fe0102e0  vmmov mr3, r4
00079c  1f020002  addli r4, zero, 256
0007a0  ea213636  vor.u.mh vr3{mr3}, r12, vr3
0007a4  fe0102e0  vmmov mr3, r4
0007a8  1f020004  addli r4, zero, 512
0007ac  eaa13536  vor.u.mh vr3{mr3}, r11, vr3
0007b0  fe0102e0  vmmov mr3, r4
0007b4  1f020008  addli r4, zero, 1024
0007b8  ea213536  vor.u.mh vr3{mr3}, r10, vr3
0007bc  fe0102e0  vmmov mr3, r4
0007c0  ea213136  vor.u.mh vr3{mr3}, r2, vr3
0007c4  1f010010  addli r2, zero, 2048
0007c8  fe0101e0  vmmov mr3, r2
0007cc  1f018ffe  addli r2, r30, -192
0007d0  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
0007d4  9f000020  addli r1, zero, 4096
0007d8  fe8100e0  vmmov mr3, r1
0007dc  9f000040  addli r1, zero, 8192
0007e0  ea213e36  vor.u.mh vr3{mr3}, r28, vr3
0007e4  fe8100e0  vmmov mr3, r1
0007e8  ab400000  lui r1, 4
0007ec  ea213436  vor.u.mh vr3{mr3}, r8, vr3
0007f0  fe8100e0  vmmov mr3, r1
0007f4  ab800000  lui r1, 8
0007f8  ea213d36  vor.u.mh vr3{mr3}, r26, vr3
0007fc  fe8100e0  vmmov mr3, r1
000800  ab000040  lui r1, 262144
000804  ea213936  vor.u.mh vr3{mr3}, r18, vr3
000808  eaf138c0  vsrl.p vr3, r17, vr3
00080c  46003814  vstore.mh vr3{mr2}, 0(r16)
000810  c2010804  vload.mz vr3{mr2}, 0(r16)
000814  42020800  vload.mz vr4{mr0}, 0(r16)
000818  8a924b02  vmul.f.mz.rn vr5{mr1}, r23, vr4
00081c  e6c10100  vshuffle2.hf vr3, vr3
000820  8e924202  vmul.f.mz.rn vr5{mr1}, vr5, vr4
000824  12334002  vadd.s.mz vr6{mr1}, zero, vr4
000828  8a933b02  vmul.f.mz.rn vr7{mr1}, r23, vr3
00082c  26936202  vmac.f.mz.rn vr6{mr1}, vr5, vr6
000830  0a136c02  vmul.f.mz.rn vr6{mr1}, r24, vr6
000834  0a936002  vmul.f.mz.rn vr6{mr1}, r1, vr6
000838  92323002  vadd.s.mz vr5{mr1}, zero, vr3
00083c  8e933302  vmul.f.mz.rn vr7{mr1}, vr7, vr3
000840  1a136002  vsub.f.mz.rn vr6{mr1}, zero, vr6
000844  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
000848  a6925302  vmac.f.mz.rn vr5{mr1}, vr7, vr5
00084c  8a125c02  vmul.f.mz.rn vr5{mr1}, r24, vr5
000850  8a925002  vmul.f.mz.rn vr5{mr1}, r1, vr5
000854  9a125002  vsub.f.mz.rn vr5{mr1}, zero, vr5
000858  00a00000  mfence { lm }
00085c  e3008ffe  loadli.w r1,  -192(r30)
000860  63418ffe  loadli.w r2,  -188(r30)
000864  63049ffe  loadli.w r8,  -184(r30)
000868  63459ffe  loadli.w r10,  -180(r30)
00086c  6302affe  loadli.w r4,  -176(r30)
000870  e344affe  loadli.w r9,  -172(r30)
000874  e305bffe  loadli.w r11,  -168(r30)
000878  6346bffe  loadli.w r12,  -164(r30)
00087c  e306cffe  loadli.w r13,  -160(r30)
000880  6347cffe  loadli.w r14,  -156(r30)
000884  e307dffe  loadli.w r15,  -152(r30)
000888  6349dffe  loadli.w r18,  -148(r30)
00088c  e309effe  loadli.w r19,  -144(r30)
000890  e34ceffe  loadli.w r25,  -140(r30)
000894  630dfffe  loadli.w r26,  -136(r30)
000898  634efffe  loadli.w r28,  -132(r30)
00089c  8f800000  exp.f.rn r1, r1
0008a0  0f010100  exp.f.rn r2, r2
0008a4  0f040400  exp.f.rn r8, r8
0008a8  0f050500  exp.f.rn r10, r10
0008ac  0f020200  exp.f.rn r4, r4
0008b0  8f840400  exp.f.rn r9, r9
0008b4  8f850500  exp.f.rn r11, r11
0008b8  0f060600  exp.f.rn r12, r12
0008bc  8f860600  exp.f.rn r13, r13
0008c0  0f070700  exp.f.rn r14, r14
0008c4  8f870700  exp.f.rn r15, r15
0008c8  0f090900  exp.f.rn r18, r18
0008cc  8f890900  exp.f.rn r19, r19
0008d0  8f8c0c00  exp.f.rn r25, r25
0008d4  0f0d0d00  exp.f.rn r26, r26
0008d8  0f0e0e00  exp.f.rn r28, r28
0008dc  8be0b011  add.f.rn r1, r1, r27
0008e0  0b61b111  add.f.rn r2, r2, r27
0008e4  0b64b411  add.f.rn r8, r8, r27
0008e8  0b65b511  add.f.rn r10, r10, r27
0008ec  0b62b211  add.f.rn r4, r4, r27
0008f0  8be4b411  add.f.rn r9, r9, r27
0008f4  8be5b511  add.f.rn r11, r11, r27
0008f8  0b66b611  add.f.rn r12, r12, r27
0008fc  8be6b611  add.f.rn r13, r13, r27
000900  0b67b711  add.f.rn r14, r14, r27
000904  8be7b711  add.f.rn r15, r15, r27
000908  0b69b911  add.f.rn r18, r18, r27
00090c  8be9b911  add.f.rn r19, r19, r27
000910  8becbc11  add.f.rn r25, r25, r27
000914  0b6dbd11  add.f.rn r26, r26, r27
000918  0b6ebe11  add.f.rn r28, r28, r27
00091c  8f801d18  div.f.rn r1, r27, r1
000920  0f812d18  div.f.rn r2, r27, r2
000924  0f848d18  div.f.rn r8, r27, r8
000928  0f85ad18  div.f.rn r10, r27, r10
00092c  0f824d18  div.f.rn r4, r27, r4
000930  8f849d18  div.f.rn r9, r27, r9
000934  8f85bd18  div.f.rn r11, r27, r11
000938  0f86cd18  div.f.rn r12, r27, r12
00093c  8f86dd18  div.f.rn r13, r27, r13
000940  0f87ed18  div.f.rn r14, r27, r14
000944  8f87fd18  div.f.rn r15, r27, r15
000948  0f892d19  div.f.rn r18, r27, r18
00094c  8f893d19  div.f.rn r19, r27, r19
000950  8f8c9d19  div.f.rn r25, r27, r25
000954  0f8dad19  div.f.rn r26, r27, r26
000958  0f8ecd19  div.f.rn r28, r27, r28
00095c  67001ffe  storeli.w r1, -256(r30)
000960  67402ffe  storeli.w r2, -252(r30)
000964  e7008ffe  storeli.w r8, -248(r30)
000968  e740affe  storeli.w r10, -244(r30)
00096c  67014ffe  storeli.w r4, -240(r30)
000970  67419ffe  storeli.w r9, -236(r30)
000974  e701bffe  storeli.w r11, -232(r30)
000978  e741cffe  storeli.w r12, -228(r30)
00097c  6702dffe  storeli.w r13, -224(r30)
000980  6742effe  storeli.w r14, -220(r30)
000984  e702fffe  storeli.w r15, -216(r30)
000988  e7422fff  storeli.w r18, -212(r30)
00098c  67033fff  storeli.w r19, -208(r30)
000990  67439fff  storeli.w r25, -204(r30)
000994  e703afff  storeli.w r26, -200(r30)
000998  e743cfff  storeli.w r28, -196(r30)
00099c  9f000ffe  addli r1, r30, -256
0009a0  00a00000  mfence { lm }
0009a4  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
0009a8  9f008fff  addli r1, r30, -64
0009ac  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
0009b0  00a00000  mfence { lm }
0009b4  e3008fff  loadli.w r1,  -64(r30)
0009b8  63418fff  loadli.w r2,  -60(r30)
0009bc  63049fff  loadli.w r8,  -56(r30)
0009c0  e304afff  loadli.w r9,  -48(r30)
0009c4  e305bfff  loadli.w r11,  -40(r30)
0009c8  6345afff  loadli.w r10,  -44(r30)
0009cc  6346bfff  loadli.w r12,  -36(r30)
0009d0  e306cfff  loadli.w r13,  -32(r30)
0009d4  6347cfff  loadli.w r14,  -28(r30)
0009d8  e307dfff  loadli.w r15,  -24(r30)
0009dc  e349dfff  loadli.w r19,  -20(r30)
0009e0  e30cefff  loadli.w r25,  -16(r30)
0009e4  634defff  loadli.w r26,  -12(r30)
0009e8  630effff  loadli.w r28,  -8(r30)
0009ec  e348ffff  loadli.w r17,  -4(r30)
0009f0  0e136202  vmul.f.mz.rn vr6{mr1}, vr4, vr6
0009f4  8f800000  exp.f.rn r1, r1
0009f8  0f010100  exp.f.rn r2, r2
0009fc  0f020400  exp.f.rn r4, r8
000a00  63449fff  loadli.w r8,  -52(r30)
000a04  0f040400  exp.f.rn r8, r8
000a08  661203c0  vabs.f vr4, vr6
000a0c  8be0b011  add.f.rn r1, r1, r27
000a10  0b61b111  add.f.rn r2, r2, r27
000a14  0b62b211  add.f.rn r4, r4, r27
000a18  f6214142  vlt.u.mz mr3{mr1}, vr2, vr4
000a1c  6eb260c2  vsrl.s.mz vr4{mr1}, vr1, vr6
000a20  7e8901a0  vmmov r18, mr3
000a24  6a324a02  vand.s.mz vr4{mr1}, r20, vr4
000a28  8f801d18  div.f.rn r1, r27, r1
000a2c  0f812d18  div.f.rn r2, r27, r2
000a30  96324302  vadd.s.mz vr5{mr1}, vr6, vr4
000a34  6a336b22  vor.s.mz vr6{mr1}, r22, vr6
000a38  92b25a02  vadd.s.mz vr5{mr1}, r21, vr5
000a3c  67081ffe  storeli.w r1, -128(r30)
000a40  8f800400  exp.f.rn r1, r9
000a44  67482ffe  storeli.w r2, -124(r30)
000a48  0f814d18  div.f.rn r2, r27, r4
000a4c  0b62b411  add.f.rn r4, r8, r27
000a50  0f840500  exp.f.rn r8, r11
000a54  8f040500  exp.f.rn r9, r10
000a58  0f050600  exp.f.rn r10, r12
000a5c  8f850600  exp.f.rn r11, r13
000a60  8be0b011  add.f.rn r1, r1, r27
000a64  e7082ffe  storeli.w r2, -120(r30)
000a68  0f814d18  div.f.rn r2, r27, r4
000a6c  0b62b411  add.f.rn r4, r8, r27
000a70  0b64b511  add.f.rn r8, r10, r27
000a74  8be4b411  add.f.rn r9, r9, r27
000a78  0be5b511  add.f.rn r10, r11, r27
000a7c  8f050700  exp.f.rn r11, r14
000a80  8f801d18  div.f.rn r1, r27, r1
000a84  0f824d18  div.f.rn r4, r27, r4
000a88  8f849d18  div.f.rn r9, r27, r9
000a8c  0f848d18  div.f.rn r8, r27, r8
000a90  e7482ffe  storeli.w r2, -116(r30)
000a94  0be1b511  add.f.rn r2, r11, r27
000a98  8f850800  exp.f.rn r11, r17
000a9c  67091ffe  storeli.w r1, -112(r30)
000aa0  8f80ad18  div.f.rn r1, r27, r10
000aa4  e7094ffe  storeli.w r4, -104(r30)
000aa8  0f820700  exp.f.rn r4, r15
000aac  67499ffe  storeli.w r9, -108(r30)
000ab0  e7498ffe  storeli.w r8, -100(r30)
000ab4  0f840900  exp.f.rn r8, r19
000ab8  8f040d00  exp.f.rn r9, r26
000abc  0f050e00  exp.f.rn r10, r28
000ac0  0b62b211  add.f.rn r4, r4, r27
000ac4  670a1ffe  storeli.w r1, -96(r30)
000ac8  8f802d18  div.f.rn r1, r27, r2
000acc  0f810c00  exp.f.rn r2, r25
000ad0  0b64b411  add.f.rn r8, r8, r27
000ad4  0f824d18  div.f.rn r4, r27, r4
000ad8  0f848d18  div.f.rn r8, r27, r8
000adc  674a1ffe  storeli.w r1, -92(r30)
000ae0  8b60b111  add.f.rn r1, r2, r27
000ae4  0be1b411  add.f.rn r2, r9, r27
000ae8  8b64b511  add.f.rn r9, r10, r27
000aec  0be5b511  add.f.rn r10, r11, r27
000af0  8f801d18  div.f.rn r1, r27, r1
000af4  0f812d18  div.f.rn r2, r27, r2
000af8  8f849d18  div.f.rn r9, r27, r9
000afc  e70a4ffe  storeli.w r4, -88(r30)
000b00  0f82ad18  div.f.rn r4, r27, r10
000b04  e74a8ffe  storeli.w r8, -84(r30)
000b08  670b1ffe  storeli.w r1, -80(r30)
000b0c  674b2ffe  storeli.w r2, -76(r30)
000b10  e70b9ffe  storeli.w r9, -72(r30)
000b14  e74b4ffe  storeli.w r4, -68(r30)
000b18  9f000fff  addli r1, r30, -128
000b1c  00a00000  mfence { lm }
000b20  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
000b24  9b40f900  srli r1, r18, 15
000b28  9b801000  andi r1, r1, 1
000b2c  3bb00000  bneq r1, zero, 12
000b30  7abdf240  vextracti.s r26, 15(vr5)
000b34  5b010000  j 8
000b38  7a3df340  vextracti.s r26, 15(vr6)
000b3c  9b40e900  srli r1, r18, 14
000b40  9b801000  andi r1, r1, 1
000b44  3bb00000  bneq r1, zero, 12
000b48  7abee240  vextracti.s r28, 14(vr5)
000b4c  5b010000  j 8
000b50  7a3ee340  vextracti.s r28, 14(vr6)
000b54  9b40d900  srli r1, r18, 13
000b58  9b801000  andi r1, r1, 1
000b5c  3bb00000  bneq r1, zero, 12
000b60  7ab4d240  vextracti.s r8, 13(vr5)
000b64  5b010000  j 8
000b68  7a34d340  vextracti.s r8, 13(vr6)
000b6c  9b40c900  srli r1, r18, 12
000b70  9b801000  andi r1, r1, 1
000b74  3bb00000  bneq r1, zero, 12
000b78  fab7c240  vextracti.s r15, 12(vr5)
000b7c  5b010000  j 8
000b80  fa37c340  vextracti.s r15, 12(vr6)
000b84  9b40b900  srli r1, r18, 11
000b88  9b801000  andi r1, r1, 1
000b8c  3bb00000  bneq r1, zero, 12
000b90  fab0b240  vextracti.s r1, 11(vr5)
000b94  5b010000  j 8
000b98  fa30b340  vextracti.s r1, 11(vr6)
000b9c  1b41a900  srli r2, r18, 10
000ba0  1b011100  andi r2, r2, 1
000ba4  3b300100  bneq r2, zero, 12
000ba8  7ab1a240  vextracti.s r2, 10(vr5)
000bac  5b010000  j 8
000bb0  7a31a340  vextracti.s r2, 10(vr6)
000bb4  1b429900  srli r4, r18, 9
000bb8  1b021200  andi r4, r4, 1
000bbc  3b300200  bneq r4, zero, 12
000bc0  7ab59240  vextracti.s r10, 9(vr5)
000bc4  5b010000  j 8
000bc8  7a359340  vextracti.s r10, 9(vr6)
000bcc  1b428900  srli r4, r18, 8
000bd0  1b021200  andi r4, r4, 1
000bd4  3b300200  bneq r4, zero, 12
000bd8  fab58240  vextracti.s r11, 8(vr5)
000bdc  5b010000  j 8
000be0  fa358340  vextracti.s r11, 8(vr6)
000be4  1b427900  srli r4, r18, 7
000be8  1b021200  andi r4, r4, 1
000bec  3b300200  bneq r4, zero, 12
000bf0  7ab67240  vextracti.s r12, 7(vr5)
000bf4  5b010000  j 8
000bf8  7a367340  vextracti.s r12, 7(vr6)
000bfc  1b426900  srli r4, r18, 6
000c00  1b021200  andi r4, r4, 1
000c04  3b300200  bneq r4, zero, 12
000c08  fab66240  vextracti.s r13, 6(vr5)
000c0c  5b010000  j 8
000c10  fa366340  vextracti.s r13, 6(vr6)
000c14  1b425900  srli r4, r18, 5
000c18  1b021200  andi r4, r4, 1
000c1c  3b300200  bneq r4, zero, 12
000c20  7ab75240  vextracti.s r14, 5(vr5)
000c24  5b010000  j 8
000c28  7a375340  vextracti.s r14, 5(vr6)
000c2c  1b424900  srli r4, r18, 4
000c30  1b021200  andi r4, r4, 1
000c34  3b300200  bneq r4, zero, 12
000c38  fab94240  vextracti.s r19, 4(vr5)
000c3c  5b010000  j 8
000c40  fa394340  vextracti.s r19, 4(vr6)
000c44  1b423900  srli r4, r18, 3
000c48  1b021200  andi r4, r4, 1
000c4c  3b300200  bneq r4, zero, 12
000c50  fabc3240  vextracti.s r25, 3(vr5)
000c54  5b010000  j 8
000c58  fa3c3340  vextracti.s r25, 3(vr6)
000c5c  1b422900  srli r4, r18, 2
000c60  1b021200  andi r4, r4, 1
000c64  3b300200  bneq r4, zero, 12
000c68  fab42240  vextracti.s r9, 2(vr5)
000c6c  5b010000  j 8
000c70  fa342340  vextracti.s r9, 2(vr6)
000c74  1b421900  srli r4, r18, 1
000c78  1b021200  andi r4, r4, 1
000c7c  3b600200  bneq r4, zero, 24
000c80  7ab21240  vextracti.s r4, 1(vr5)
000c84  9b081900  andi r17, r18, 1
000c88  37e00800  beq r17, zero, 24
000c8c  7a390340  vextracti.s r18, 0(vr6)
000c90  db020000  j 20
000c94  7a321340  vextracti.s r4, 1(vr6)
000c98  9b081900  andi r17, r18, 1
000c9c  bbcf08fe  bneq r17, zero, -16
000ca0  7ab90240  vextracti.s r18, 0(vr5)
000ca4  92320002  vadd.s.mz vr5{mr1}, zero, vr0
000ca8  9f180000  addli r17, zero, 1
000cac  0e924102  vmul.f.mz.rn vr4{mr1}, vr3, vr4
000cb0  fe8108e0  vmmov mr3, r17
000cb4  9f280000  addli r17, zero, 2
000cb8  ea225936  vor.u.mh vr5{mr3}, r18, vr5
000cbc  fe8108e0  vmmov mr3, r17
000cc0  eeb140c2  vsrl.s.mz vr3{mr1}, vr1, vr4
000cc4  661302c0  vabs.f vr6, vr4
000cc8  9f082000  addli r17, zero, 16
000ccc  ea225236  vor.u.mh vr5{mr3}, r4, vr5
000cd0  1f420000  addli r4, zero, 4
000cd4  ea313a02  vand.s.mz vr3{mr1}, r20, vr3
000cd8  fe0102e0  vmmov mr3, r4
000cdc  1f021000  addli r4, zero, 8
000ce0  eaa25436  vor.u.mh vr5{mr3}, r9, vr5
000ce4  fe0102e0  vmmov mr3, r4
000ce8  1f022000  addli r4, zero, 16
000cec  96313202  vadd.s.mz vr3{mr1}, vr4, vr3
000cf0  6a324b22  vor.s.mz vr4{mr1}, r22, vr4
000cf4  eaa25c36  vor.u.mh vr5{mr3}, r25, vr5
000cf8  fe0102e0  vmmov mr3, r4
000cfc  1f024000  addli r4, zero, 32
000d00  92b13a02  vadd.s.mz vr3{mr1}, r21, vr3
000d04  eaa25936  vor.u.mh vr5{mr3}, r19, vr5
000d08  fe0102e0  vmmov mr3, r4
000d0c  1f028000  addli r4, zero, 64
000d10  ea225736  vor.u.mh vr5{mr3}, r14, vr5
000d14  fe0102e0  vmmov mr3, r4
000d18  1f020001  addli r4, zero, 128
000d1c  eaa25636  vor.u.mh vr5{mr3}, r13, vr5
000d20  fe0102e0  vmmov mr3, r4
000d24  1f020002  addli r4, zero, 256
000d28  ea225636  vor.u.mh vr5{mr3}, r12, vr5
000d2c  fe0102e0  vmmov mr3, r4
000d30  1f020004  addli r4, zero, 512
000d34  eaa25536  vor.u.mh vr5{mr3}, r11, vr5
000d38  fe0102e0  vmmov mr3, r4
000d3c  1f020008  addli r4, zero, 1024
000d40  ea225536  vor.u.mh vr5{mr3}, r10, vr5
000d44  fe0102e0  vmmov mr3, r4
000d48  ea225136  vor.u.mh vr5{mr3}, r2, vr5
000d4c  1f010010  addli r2, zero, 2048
000d50  fe0101e0  vmmov mr3, r2
000d54  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
000d58  9f000020  addli r1, zero, 4096
000d5c  fe8100e0  vmmov mr3, r1
000d60  9f000040  addli r1, zero, 8192
000d64  eaa25736  vor.u.mh vr5{mr3}, r15, vr5
000d68  fe8100e0  vmmov mr3, r1
000d6c  ab400000  lui r1, 4
000d70  ea225436  vor.u.mh vr5{mr3}, r8, vr5
000d74  fe8100e0  vmmov mr3, r1
000d78  ab800000  lui r1, 8
000d7c  ea225e36  vor.u.mh vr5{mr3}, r28, vr5
000d80  f6216142  vlt.u.mz mr3{mr1}, vr2, vr6
000d84  fe8701a0  vmmov r15, mr3
000d88  fe8100e0  vmmov mr3, r1
000d8c  9bc0f700  srli r1, r15, 15
000d90  ea225d36  vor.u.mh vr5{mr3}, r26, vr5
000d94  9b801000  andi r1, r1, 1
000d98  46005810  vstore.mh vr5{mr0}, 0(r16)
000d9c  3bb00000  bneq r1, zero, 12
000da0  7ab9f140  vextracti.s r18, 15(vr3)
000da4  5b010000  j 8
000da8  7a39f240  vextracti.s r18, 15(vr4)
000dac  9bc0e700  srli r1, r15, 14
000db0  9b801000  andi r1, r1, 1
000db4  3bb00000  bneq r1, zero, 12
000db8  7abde140  vextracti.s r26, 14(vr3)
000dbc  5b010000  j 8
000dc0  7a3de240  vextracti.s r26, 14(vr4)
000dc4  9bc0d700  srli r1, r15, 13
000dc8  9b801000  andi r1, r1, 1
000dcc  3bb00000  bneq r1, zero, 12
000dd0  7ab4d140  vextracti.s r8, 13(vr3)
000dd4  5b010000  j 8
000dd8  7a34d240  vextracti.s r8, 13(vr4)
000ddc  9bc0c700  srli r1, r15, 12
000de0  9b801000  andi r1, r1, 1
000de4  3bb00000  bneq r1, zero, 12
000de8  7abec140  vextracti.s r28, 12(vr3)
000dec  5b010000  j 8
000df0  7a3ec240  vextracti.s r28, 12(vr4)
000df4  9bc0b700  srli r1, r15, 11
000df8  9b801000  andi r1, r1, 1
000dfc  3bb00000  bneq r1, zero, 12
000e00  fab0b140  vextracti.s r1, 11(vr3)
000e04  5b010000  j 8
000e08  fa30b240  vextracti.s r1, 11(vr4)
000e0c  1bc1a700  srli r2, r15, 10
000e10  1b011100  andi r2, r2, 1
000e14  3b300100  bneq r2, zero, 12
000e18  7ab1a140  vextracti.s r2, 10(vr3)
000e1c  5b010000  j 8
000e20  7a31a240  vextracti.s r2, 10(vr4)
000e24  1bc29700  srli r4, r15, 9
000e28  1b021200  andi r4, r4, 1
000e2c  3b300200  bneq r4, zero, 12
000e30  7ab59140  vextracti.s r10, 9(vr3)
000e34  5b010000  j 8
000e38  7a359240  vextracti.s r10, 9(vr4)
000e3c  1bc28700  srli r4, r15, 8
000e40  1b021200  andi r4, r4, 1
000e44  3b300200  bneq r4, zero, 12
000e48  fab58140  vextracti.s r11, 8(vr3)
000e4c  5b010000  j 8
000e50  fa358240  vextracti.s r11, 8(vr4)
000e54  1bc27700  srli r4, r15, 7
000e58  1b021200  andi r4, r4, 1
000e5c  3b300200  bneq r4, zero, 12
000e60  7ab67140  vextracti.s r12, 7(vr3)
000e64  5b010000  j 8
000e68  7a367240  vextracti.s r12, 7(vr4)
000e6c  1bc26700  srli r4, r15, 6
000e70  1b021200  andi r4, r4, 1
000e74  3b300200  bneq r4, zero, 12
000e78  fab66140  vextracti.s r13, 6(vr3)
000e7c  5b010000  j 8
000e80  fa366240  vextracti.s r13, 6(vr4)
000e84  1bc25700  srli r4, r15, 5
000e88  1b021200  andi r4, r4, 1
000e8c  3b300200  bneq r4, zero, 12
000e90  7ab75140  vextracti.s r14, 5(vr3)
000e94  5b010000  j 8
000e98  7a375240  vextracti.s r14, 5(vr4)
000e9c  1bc24700  srli r4, r15, 4
000ea0  1b021200  andi r4, r4, 1
000ea4  3b300200  bneq r4, zero, 12
000ea8  fab94140  vextracti.s r19, 4(vr3)
000eac  5b010000  j 8
000eb0  fa394240  vextracti.s r19, 4(vr4)
000eb4  1bc23700  srli r4, r15, 3
000eb8  1b021200  andi r4, r4, 1
000ebc  3b300200  bneq r4, zero, 12
000ec0  fabc3140  vextracti.s r25, 3(vr3)
000ec4  5b010000  j 8
000ec8  fa3c3240  vextracti.s r25, 3(vr4)
000ecc  1bc22700  srli r4, r15, 2
000ed0  1b021200  andi r4, r4, 1
000ed4  3b300200  bneq r4, zero, 12
000ed8  fab42140  vextracti.s r9, 2(vr3)
000edc  5b010000  j 8
000ee0  fa342240  vextracti.s r9, 2(vr4)
000ee4  1bc21700  srli r4, r15, 1
000ee8  1b021200  andi r4, r4, 1
000eec  3b500200  bneq r4, zero, 20
000ef0  7ab21140  vextracti.s r4, 1(vr3)
000ef4  9b871700  andi r15, r15, 1
000ef8  b7aa07f8  beq r15, zero, -3416
000efc  5b020000  j 16
000f00  7a321240  vextracti.s r4, 1(vr4)
000f04  9b871700  andi r15, r15, 1
000f08  37ea07f8  beq r15, zero, -3432
000f0c  fa370240  vextracti.s r15, 0(vr4)
000f10  db52feff  j -3436
000f14  9f0e8ffc  addli sp, r30, -448
000f18  9f8e8e03  addli sp, sp, 448
000f1c  00a00300  mfence { lm, sm, gm }
000f20  00100000  exit
000f24  00100000  exit
000f28  00100000  exit
000f2c  00100000  exit
000f30  00100000  exit
000f34  00100000  exit
000f38  00100000  exit
000f3c  00100000  exit
000f40  00100000  exit
000f44  00100000  exit
000f48  00100000  exit
000f4c  00100000  exit
000f50  00100000  exit
000f54  00100000  exit
000f58  00100000  exit
000f5c  00100000  exit
000f60  00100000  exit
000f64  00100000  exit
000f68  00100000  exit
000f6c  00100000  exit
000f70  00100000  exit
000f74  00100000  exit
000f78  00100000  exit
000f7c  00100000  exit
000f80  00100000  exit
000f84  00100000  exit
000f88  00100000  exit
000f8c  00100000  exit
000f90  00100000  exit
000f94  00100000  exit
000f98  00100000  exit
000f9c  00100000  exit
000fa0  00100000  exit
000fa4  00100000  exit
000fa8  00100000  exit
000fac  00100000  exit
000fb0  00100000  exit
000fb4  00100000  exit
000fb8  00100000  exit
000fbc  00100000  exit
000fc0  00100000  exit
000fc4  00100000  exit
000fc8  00100000  exit
000fcc  00100000  exit
000fd0  00100000  exit
000fd4  00100000  exit
000fd8  00100000  exit
000fdc  00100000  exit
000fe0  00100000  exit
000fe4  00100000  exit
000fe8  00100000  exit
000fec  00100000  exit
000ff0  00100000  exit
000ff4  00100000  exit
000ff8  00100000  exit
000ffc  00100000  exit
001000  00100000  exit
001004  00100000  exit
001008  00100000  exit
00100c  00100000  exit
001010  00100000  exit
001014  00100000  exit
001018  00100000  exit
00101c  00100000  exit
001020  00100000  exit
001024  00100000  exit
001028  00100000  exit
00102c  00100000  exit
001030  00100000  exit
001034  00100000  exit
001038  00100000  exit
00103c  00100000  exit
001040  00100000  exit
001044  00100000  exit
001048  00100000  exit
00104c  00100000  exit
001050  00100000  exit
001054  00100000  exit
001058  00100000  exit
00105c  00100000  exit
001060  00100000  exit
001064  00100000  exit
001068  00100000  exit
00106c  00100000  exit
001070  00100000  exit
001074  00100000  exit
001078  00100000  exit
00107c  00100000  exit
001080  00100000  exit
001084  00100000  exit
001088  00100000  exit
00108c  00100000  exit
001090  00100000  exit
001094  00100000  exit
001098  00100000  exit
00109c  00100000  exit
0010a0  00100000  exit
0010a4  00100000  exit
0010a8  00100000  exit
0010ac  00100000  exit
0010b0  00100000  exit
0010b4  00100000  exit
0010b8  00100000  exit
0010bc  00100000  exit
0010c0  00100000  exit
0010c4  00100000  exit
0010c8  00100000  exit
0010cc  00100000  exit
0010d0  00100000  exit
0010d4  00100000  exit
0010d8  00100000  exit
0010dc  00100000  exit
0010e0  00100000  exit
0010e4  00100000  exit
0010e8  00100000  exit
0010ec  00100000  exit
0010f0  00100000  exit
0010f4  00100000  exit
0010f8  00100000  exit
0010fc  00100000  exit
001100  00100000  exit
001104  00100000  exit
001108  00100000  exit
00110c  00100000  exit
001110  00100000  exit
001114  00100000  exit
001118  00100000  exit
00111c  00100000  exit
001120  00100000  exit
001124  00100000  exit
001128  00100000  exit
00112c  00100000  exit
001130  00100000  exit
001134  00100000  exit
001138  00100000  exit
00113c  00100000  exit
001140  00100000  exit
001144  00100000  exit
001148  00100000  exit
00114c  00100000  exit
001150  00100000  exit
001154  00100000  exit
001158  00100000  exit
00115c  00100000  exit
001160  00100000  exit
